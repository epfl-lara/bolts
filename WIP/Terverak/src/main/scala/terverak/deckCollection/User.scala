// =======================================
// Terverak -> Player.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.deckCollection

import stainless.collection.*

/**
  * Represents an user.
  * @param decks the decks of the user (at least one)
  */
final case class User(decks: List[Deck]) {
  require(decks.size >= 1)
}

object User {
  val initial: User = User(List(Deck.initial, Deck.initial, Deck.initial))
  val InitialKey: String = "user"
}
