// =======================================
// Terverak -> DeckCreation.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.deckCollection

import terverak.card.*
import stainless.lang.*
import stainless.collection.*

/**
  * Represents the creation of a deck.
  * @param user the user.
  */
final case class DeckCreation(user: User, deckNumber: BigInt = BigInt(0)) {
  require(deckNumber >= 0 && deckNumber <= user.decks.length - 1)

  /**
    * Returns the deck of the user.
    */
  def deck: Deck = user.decks(deckNumber)

  /**
    * Add a card to the current deck.
    * @param card the card to add.
    * @return the deck creation with the card added.
    */
  def addCardToCurrentDeck(card: Card): DeckCreation = {
    copy(user = user.copy(decks = user.decks.updated(deckNumber, user.decks(deckNumber).addCard(card))))
  } ensuring(res => res.user.decks.size == user.decks.size &&
    (res.user.decks(deckNumber) == user.decks(deckNumber)
    || res.user.decks(deckNumber).nbCards == user.decks(deckNumber).nbCards + 1))

  /**
    * Remove a card to the current deck.
    * @param card the card to remove.
    * @return the deck creation with the card removed.
    */
  def removeCardToCurrentDeck(card: Card): DeckCreation = {
    copy(user = user.copy(decks = user.decks.updated(deckNumber, user.decks(deckNumber).removeCard(card))))
  } ensuring(res => res.user.decks.size == user.decks.size &&
    (res.user.decks(deckNumber) == user.decks(deckNumber)
    || res.user.decks(deckNumber).nbCards == user.decks(deckNumber).nbCards - 1))

  /**
    * Returns the next deck.
    * @return the next deck.
    */
  def nextDeck(): DeckCreation = {
    copy(deckNumber = (deckNumber + BigInt(1)) % user.decks.length)
  } ensuring(res => if res.user.decks.length > 1 then res.deckNumber != deckNumber else res.deckNumber == deckNumber)

  /**
    * Returns the previous deck.
    * @return the previous deck.
    */
  def previousDeck(): DeckCreation = {
    copy(deckNumber = (deckNumber - BigInt(1) + user.decks.length) % user.decks.length)
  } ensuring(res => if res.user.decks.length > 1 then res.deckNumber != deckNumber else res.deckNumber == deckNumber)
}

object DeckCreation {
  val initial: DeckCreation = DeckCreation(User.initial)
}
