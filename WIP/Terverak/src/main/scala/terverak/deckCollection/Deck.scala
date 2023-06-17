// =======================================
// Terverak -> Deck.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.deckCollection

import terverak.card.*
import stainless.collection.*
import stainless.lang.*
import stainless.annotation.*
import stainless.proof.*

/**
  * A deck of cards.
  */
final case class Deck(cardsWithQuantity: ListMap[Card, BigInt]) {
  require(cardsWithQuantity.forall(Deck.qtyInv))

  def nbCards = cardsWithQuantity.values.sum

  /**
    * Returns true if the deck is valid, false otherwise.
    * @return true if the deck is valid, false otherwise.
    */
  def isValid = nbCards >= Deck.MinCards

  /**
    * Adds a card to the deck.
    * @param card the card to add.
    * @return the new deck, or the same deck if the card is already in the deck twice, or if the deck is full.
    */
  def addCard(card: Card): Deck = {
    if (cardsWithQuantity.contains(card)) {
      if (cardsWithQuantity(card) >= 2 || nbCards >= Deck.MaxCards) {
        this
      } else {
        ListMapLemmas.applyForall(cardsWithQuantity, Deck.qtyInv, card)
        ListMapLemmas.addValidProp(cardsWithQuantity, Deck.qtyInv, card, cardsWithQuantity(card) + 1)
        Deck.sumUpdatedLemma(cardsWithQuantity, card, cardsWithQuantity(card) + 1)
        copy(cardsWithQuantity = cardsWithQuantity.updated(card, cardsWithQuantity(card) + 1))
      }
    } else {
      if (nbCards >= Deck.MaxCards || cardsWithQuantity.keys.size >= 18) {
        this
      } else {
        ListMapLemmas.addValidProp(cardsWithQuantity, Deck.qtyInv, card, 1)
        Deck.sumAddedLemma(cardsWithQuantity, card, 1)
        copy(cardsWithQuantity = cardsWithQuantity.updated(card, 1))
      }
    }
  }.ensuring(res => res == this || res.nbCards == this.nbCards + 1)

  /**
    * Remove a card to the deck.
    * @param card the card to remove.
    * @return the new deck, or the same deck if the card is not in the deck.
    */
  def removeCard(card: Card): Deck = {
    if (cardsWithQuantity.contains(card)) {
      if (cardsWithQuantity(card) == 1) {
        ListMapLemmas.removeValidProp(cardsWithQuantity, Deck.qtyInv, card)
        Deck.sumRemovedLemma(cardsWithQuantity, card)
        copy(cardsWithQuantity = cardsWithQuantity - card)
      } else {
        ListMapLemmas.applyForall(cardsWithQuantity, Deck.qtyInv, card)
        ListMapLemmas.addValidProp(cardsWithQuantity, Deck.qtyInv, card, cardsWithQuantity(card) - 1)
        Deck.sumUpdatedLemma(cardsWithQuantity, card, cardsWithQuantity(card) - 1)
        copy(cardsWithQuantity = cardsWithQuantity.updated(card, cardsWithQuantity(card) - 1))
      }
    } else {
      this
    }
  }.ensuring(res => res == this || res.nbCards == this.nbCards - 1)
}

object Deck {
  /**
    * The maximum number of cards for a deck.
    */
  val MaxCards: BigInt = BigInt(30)

  val qtyInv: ((Card, BigInt)) => Boolean = (_, qty) => qty == 1 || qty == 2

  /**
    * The minimum number of cards for a deck to be valid.
    */
  val MinCards: BigInt = BigInt(20)

  val initial: Deck = Deck(ListMap.empty)

  @ignore val DefaultDecks: List[Deck] = List(
    Deck(ListMap(List(
        AlienCardsData.alien_green -> BigInt(2),
        AlienCardsData.alien_blue -> BigInt(2),
        AlienCardsData.alien_red -> BigInt(2),
        AlienCardsData.alien_yellow -> BigInt(2),
        GemCardsData.gem_orange -> BigInt(2),
        GemCardsData.gem_red -> BigInt(2),
        GemCardsData.gem_blue -> BigInt(2),
        PlanetCardsData.planet_aethon -> BigInt(2),
        PlanetCardsData.planet_arion -> BigInt(2),
        PlanetCardsData.planet_dictys -> BigInt(2),
        PlanetCardsData.planet_nereid -> BigInt(2),
        PlanetCardsData.meteor -> BigInt(1),
        PlanetCardsData.generous_planets -> BigInt(2),
        OtherCardsData.brownCreature -> BigInt(2),
        OtherCardsData.bacteria -> BigInt(2),
        OtherCardsData.blackhole -> BigInt(1),
      ))),
    Deck(ListMap(List(
        PlanetCardsData.planet_aethon -> BigInt(2),
        PlanetCardsData.planet_arion -> BigInt(1),
        PlanetCardsData.planet_dictys -> BigInt(2),
        PlanetCardsData.planet_nereid -> BigInt(2),
        PlanetCardsData.planet_burning -> BigInt(2),
        PlanetCardsData.generous_planets -> BigInt(1),
        PlanetCardsData.meteor -> BigInt(1),
        OtherCardsData.smallAstronaut -> BigInt(2),
        OtherCardsData.brownCreature -> BigInt(2),
        OtherCardsData.bacteria -> BigInt(1),
        OtherCardsData.demoniacCreature -> BigInt(2),
        GemCardsData.gem_orange -> BigInt(2),
        GemCardsData.gem_blue -> BigInt(2),
        GemCardsData.gem_red -> BigInt(1),
        AlienCardsData.alien_green -> BigInt(2),
        AlienCardsData.alien_blue -> BigInt(2),
        AlienCardsData.alien_red -> BigInt(2),
        AlienCardsData.alien_yellow -> BigInt(2),
    )))
  )

  @opaque @inlineOnce
  def sumRemovedLemma[K](xs: ListMap[K, BigInt], k: K): Unit = {
    require(xs.contains(k))
  }.ensuring(xs.values.sum - xs(k) == (xs - k).values.sum)

  @opaque @inlineOnce
  def sumAddedLemma[K](xs: ListMap[K, BigInt], k: K, v: BigInt): Unit = {
    require(!xs.contains(k))
  }.ensuring(xs.values.sum + v == (xs + (k -> v)).values.sum)

  @opaque @inlineOnce
  def sumUpdatedLemma[K](xs: ListMap[K, BigInt], k: K, v: BigInt): Unit = {
    require(xs.contains(k))
    @opaque @inlineOnce
    def rec(xs: ListMap[K, BigInt]): Unit = {
      decreases(xs)
      xs.toList match {
        case Nil() => () // Base case
        case Cons((k2, v2), tl) =>
          val tlMap = ListMap(tl)
          rec(tlMap) // Rec case
          assert(tlMap.contains(k) ==> (tlMap.updated(k, v).values.sum == tlMap.values.sum + (v - tlMap(k)))) // IH
          if (k2 == k) {
            check(xs.contains(k))
            check(xs.updated(k, v).values.sum == xs.values.sum + (v - xs(k)))
          } else {
            if (tlMap.contains(k)) {
              assert(tlMap.updated(k, v).values.sum == tlMap.values.sum + (v - tlMap(k))) // IH
              assert(xs.contains(k)) // Because tlMap.contains(k)
              assert(xs.updated(k, v) == ListMap(Cons((k2, v2), tl)).updated(k, v)) // By definition
              assert(tlMap(k) == xs(k)) // Because k2 != k
              assert(xs.values.sum == v2 + tlMap.values.sum) // By definition of sum
              assert(xs.updated(k, v).values.sum == v2 + tlMap.updated(k, v).values.sum) // By definition of sum
              check(xs.contains(k) ==> (xs.updated(k, v).values.sum == xs.values.sum + (v - xs(k)))) // What we want to prove
            } else {
              check(!xs.contains(k))
            }
          }
      }
    }.ensuring(_ => xs.contains(k) ==> (xs.updated(k, v).values.sum == xs.values.sum + (v - xs(k))))
  }.ensuring(xs.updated(k, v).values.sum == xs.values.sum + (v - xs(k)))
}
