// =======================================
// Terverak -> CardsCatalog.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
    
package terverak.deckCollection

import terverak.card.*
import stainless.collection.*
import stainless.lang.*

/**
  * The catalog of all the cards inside the DeckCollectionScene.
  */
final case class CardsCatalog(cards: List[Card])

object CardsCatalog {

  val initial: CardsCatalog = CardsCatalog(CardsData.cards.toList)

}
