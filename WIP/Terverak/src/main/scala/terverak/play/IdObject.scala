// =======================================
// Terverak -> IdObject.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.play

import terverak.card.Card
import stainless.lang.*

/**
  * An object with an id.
  */
trait IdObject {

  def id: BigInt
}

object IdObject {
  
  /**
    * The base increment for the id of an object.
    */
  val BaseIncrement: BigInt = BigInt(4)
  
  /**
    * A minion on the board.
    */
  final case class MinionWithId(
    minion: Minion,
    id: BigInt,
  ) extends IdObject {
    require(id >= 0)
  }

  /**
    * A card in a hand.
    * @param card the card
    * @param id the id of the card in the hand
    */
  final case class HandCard(
    card: Card,
    id: BigInt
  ) extends IdObject {
    require(id >= 0)
  }
}
