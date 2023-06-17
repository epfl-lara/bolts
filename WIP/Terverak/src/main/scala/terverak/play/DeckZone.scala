// =======================================
// Terverak -> DeckZone.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.play

import terverak.card.Card
import stainless.collection.*

/**
  * A deck of cards.
 *
 * @param cards the cards in the deck.
  */
final case class DeckZone(cards: List[Card]) {

    /**
      * Adds a card to the deck.
      * @param card the card to add.
      * @return the new deck.
      */
    def addCard(card: Card): DeckZone = {
      copy(cards = card :: cards)
    } ensuring(res => res.cards.length == cards.length + 1)

    /**
      * Adds a list of cards to the deck.
      * @param cards the cards to add.
      * @return the new deck.
      */
    def addCards(cards: List[Card]): DeckZone = {
      copy(cards = cards ++ this.cards)
    } ensuring(res => res.cards.length == this.cards.length + cards.length)

    /**
     * Removes the top card from the deck.
     * @return the new deck and the removed card as a tuple.
     */
    def removeTopCard(): (DeckZone, Card) = {
      require(cards.nonEmpty)

      (copy(cards = cards.tail), cards.head)
    } ensuring(res => res._1.cards.length == cards.length - 1)

    /**
     * Removes a given card from the deck.
     * @param card the card to remove.
     * @return the new deck.
     */
    def removeOneCard(card: Card): DeckZone = {
      def rec(cardsList: List[Card]): List[Card] = cardsList match {
        case Nil() => Nil()
        case Cons(c, cs) if c == card => cardsList.tail
        case Cons(c, cs) => c :: rec(cs)
      }
      DeckZone(rec(cards))
    }

}
