package im.actor.server.ilectro

import scala.concurrent._
import scala.concurrent.duration._

import akka.actor.ActorSystem
import akka.http.scaladsl.HttpExt
import akka.http.scaladsl.model.HttpMethods.GET
import akka.http.scaladsl.model._
import akka.stream.ActorFlowMaterializer
import play.api.libs.json._

import im.actor.server.ilectro.Common._
import im.actor.server.ilectro.results._
import im.actor.server.models.ilectro.Interest

private[ilectro] class Lists(implicit
  system: ActorSystem,
                             executionContext: ExecutionContext,
                             materializer:     ActorFlowMaterializer,
                             http:             HttpExt,
                             config:           ILectroConfig) {

  import JsonFormatters._

  private implicit val authToken = config.authToken
  private val baseUrl = config.baseUrl

  private val resourceName = "interests"

  def getInterests(): Future[Either[Errors, List[Interest]]] = processRequest(
    request = HttpRequest(
      method = GET,
      uri = s"$baseUrl/$resourceName"
    ),
    onSuccess = (entity) ⇒
      entity.toStrict(5.seconds).map { e ⇒
        Json.parse(e.data.decodeString("utf-8")).validate[List[Interest]] match {
          case JsSuccess(i, _) ⇒ Right(i)
          case JsError(e)      ⇒ throw new Exception(s"Failed to parse interest ${e}")
        }
      },
    onFailure = defaultFailure
  )
}