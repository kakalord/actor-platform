package im.actor.server.webhooks

import com.amazonaws.auth.EnvironmentVariableCredentialsProvider
import com.amazonaws.services.s3.transfer.TransferManager

import im.actor.api.rpc.ClientData
import im.actor.api.rpc.messaging.TextMessage
import im.actor.server.api.rpc.service.groups.{ GroupInviteConfig, GroupsServiceImpl }
import im.actor.server.api.rpc.service.messaging.{ GroupPeerManager, PrivatePeerManager }
import im.actor.server.api.rpc.service.{ BaseServiceSuite, GroupsServiceHelpers, messaging }
import im.actor.server.models.Peer
import im.actor.server.{ MessageParsing, persist }
import im.actor.server.presences.{ GroupPresenceManager, PresenceManager }
import im.actor.server.social.SocialManager

class WebhooksHandlerSpec extends BaseServiceSuite with GroupsServiceHelpers with MessageParsing {

  behavior of "Webhooks handler"

  it should "create group bot on group creation" in t.createGroupAndBot()

  it should "allow bot to send message to it's group" in t.sendInGroup()

  implicit val sessionRegion = buildSessionRegionProxy()
  implicit val seqUpdManagerRegion = buildSeqUpdManagerRegion()
  implicit val socialManagerRegion = SocialManager.startRegion()
  implicit val presenceManagerRegion = PresenceManager.startRegion()
  implicit val groupPresenceManagerRegion = GroupPresenceManager.startRegion()
  implicit val privatePeerManagerRegion = PrivatePeerManager.startRegion()
  implicit val groupPeerManagerRegion = GroupPeerManager.startRegion()

  val bucketName = "actor-uploads-test"
  val awsCredentials = new EnvironmentVariableCredentialsProvider()
  implicit val transferManager = new TransferManager(awsCredentials)
  val groupInviteConfig = GroupInviteConfig("http://actor.im")

  implicit val service = messaging.MessagingServiceImpl(mediator)
  implicit val groupsService = new GroupsServiceImpl("", groupInviteConfig)
  implicit val authService = buildAuthService()
  implicit val ec = system.dispatcher

  object t {
    val (user1, authId1, _) = createUser()
    val (user2, authId2, _) = createUser()
    val sessionId = createSessionId()
    implicit val clientData = ClientData(authId1, sessionId, Some(user1.id))

    def createGroupAndBot() = {
      val groupOutPeer = createGroup("Bot test group", Set(user2.id)).groupPeer

      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { optBot ⇒
        optBot shouldBe defined
        val bot = optBot.get
        bot.groupId shouldEqual groupOutPeer.groupId
      }
    }

    def sendInGroup() = {
      val groupOutPeer = createGroup("Bot test group", Set(user2.id)).groupPeer

      whenReady(db.run(persist.GroupBot.findByGroup(groupOutPeer.groupId))) { optBot ⇒
        optBot shouldBe defined
        val bot = optBot.get
        val firstMessage = Text("Alert! All tests are failed!")
        whenReady(new WebhookHandler(service).send(firstMessage, bot.token)) { _ ⇒
          Thread.sleep(100) // Let peer managers write to db

          whenReady(db.run(persist.HistoryMessage.find(user1.id, Peer.group(groupOutPeer.groupId)))) { messages ⇒
            messages should have length 2
            val botMessage = messages.head
            botMessage.senderUserId shouldEqual bot.userId
            parseMessage(botMessage.messageContentData) shouldEqual Right(TextMessage(firstMessage.text, Vector.empty, None))
          }
        }

        val secondMessage = Text("It's ok now!")
        whenReady(new WebhookHandler(service).send(secondMessage, bot.token)) { _ ⇒
          Thread.sleep(100) // Let peer managers write to db

          whenReady(db.run(persist.HistoryMessage.find(user1.id, Peer.group(groupOutPeer.groupId)))) { messages ⇒
            messages should have length 3
            val botMessage = messages.head
            botMessage.senderUserId shouldEqual bot.userId
            parseMessage(botMessage.messageContentData) shouldEqual Right(TextMessage(secondMessage.text, Vector.empty, None))
          }
        }
      }
    }
  }

}
