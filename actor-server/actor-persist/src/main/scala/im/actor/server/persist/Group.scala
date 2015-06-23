package im.actor.server.persist

import com.github.tototoshi.slick.PostgresJodaSupport._
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import im.actor.server.models

class FullGroupTable(tag: Tag) extends Table[models.FullGroup](tag, "groups") {
  def id = column[Int]("id", O.PrimaryKey)

  def creatorUserId = column[Int]("creator_user_id")

  def accessHash = column[Long]("access_hash")

  def title = column[String]("title")

  def createdAt = column[DateTime]("created_at")

  def titleChangerUserId = column[Int]("title_changer_user_id")

  def titleChangedAt = column[DateTime]("title_changed_at")

  def titleChangeRandomId = column[Long]("title_change_random_id")

  def avatarChangerUserId = column[Int]("avatar_changer_user_id")

  def avatarChangedAt = column[DateTime]("avatar_changed_at")

  def avatarChangeRandomId = column[Long]("avatar_change_random_id")

  def * =
    (
      id,
      creatorUserId,
      accessHash,
      title,
      createdAt,
      titleChangerUserId,
      titleChangedAt,
      titleChangeRandomId,
      avatarChangerUserId,
      avatarChangedAt,
      avatarChangeRandomId
    ) <> (models.FullGroup.tupled, models.FullGroup.unapply)

  def asGroup = (id, creatorUserId, accessHash, title, createdAt) <> (models.Group.tupled, models.Group.unapply)
}

object Group {
  val groups = TableQuery[FullGroupTable]

  def create(group: models.Group, randomId: Long) = {
    groups += models.FullGroup(
      id = group.id,
      creatorUserId = group.creatorUserId,
      accessHash = group.accessHash,
      title = group.title,
      createdAt = group.createdAt,
      titleChangerUserId = group.creatorUserId,
      titleChangedAt = group.createdAt,
      titleChangeRandomId = randomId,
      avatarChangerUserId = group.creatorUserId,
      avatarChangedAt = group.createdAt,
      avatarChangeRandomId = randomId
    )
  }

  def find(id: Int) =
    groups.filter(g ⇒ g.id === id).map(_.asGroup).result

  def findTitle(id: Int) =
    groups.filter(g ⇒ g.id === id).map(_.title).result.headOption

  def findFull(id: Int) =
    groups.filter(g ⇒ g.id === id).result

  def updateTitle(id: Int, title: String, changerUserId: Int, randomId: Long, date: DateTime) =
    groups
      .filter(_.id === id)
      .map(g ⇒ (g.title, g.titleChangerUserId, g.titleChangedAt, g.titleChangeRandomId))
      .update((title, changerUserId, date, randomId))
}