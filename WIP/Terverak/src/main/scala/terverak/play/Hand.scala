// =======================================
// Terverak -> Hand.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
    
package terverak.play

import terverak.card.Card
import terverak.play.IdObject.*
import stainless.lang.*
import stainless.annotation.*
import stainless.collection.*

/**
  * A hand of cards.
  * @param cards The cards in the hand.
  */
final case class Hand(cards: List[IdObject.HandCard], baseCardId: BigInt) {
  require(baseCardId >= 0)
  require(cards.length < Hand.MaxHandSize)
  require(ListOps.noDuplicate(cards.map(_.id)))
  require(cards.map(-_.id).isSorted)

  /**
    * Adds a card to the hand.
    * @param Card the card to add.
    * @return the new hand.
    */
  def addCard(card: Card): Hand = {
    require(cards.length + 1 < Hand.MaxHandSize)
    
    copy(cards = IdObject.HandCard(card, nextId()) :: cards)
  }.ensuring(_.cards.length == cards.length + 1)

  /**
    * Removes a specific card from the hand.
    * @param card the card to remove.
    * @return the new hand.
    */
  def removeCard(card: HandCard): Hand = {
    require(cards.length > 0)
    require(cards.contains(card))

    ListSpecs.noDuplicateMapFilter(cards, _.id != card.id, _.id)
    filterMapSorted(cards, -_.id, _.id != card.id)

    copy(cards = cards.filter(_.id != card.id))
  }.ensuring(res => res.cards.length <= cards.length)

  /**
   * Compute the next id for a card in the hand. 
   */
  private def nextId(): BigInt = {
    val res = if (cards.isEmpty) baseCardId else cards.head.id + IdObject.BaseIncrement
    assert(cards.nonEmpty ==> (res < -cards.head.id)) // Cannot verify (all solvers crash)
    smallerThanHeadSortedList(cards.map(-_.id), res)
    smallerThanAllCannotContain(cards.map(-_.id), res)
    res
  }.ensuring(res => !cards.map(_.id).contains(res) && cards.map(-_.id).forall(_ > res))

  @opaque
  def filterMapSorted[A](@induct xs: List[A], f: A => BigInt, p: A => Boolean): Unit = {
    require(xs.map(f).isSorted)
  }.ensuring(xs.filter(p).map(f).isSorted)

  @opaque
  def smallerThanHeadSortedList(@induct xs: List[BigInt], elem: BigInt): Unit = {
    require(xs.isSorted)
    require(xs.nonEmpty ==> (elem < xs.head))
  }.ensuring(xs.forall(_ > elem))

  @opaque
  def smallerThanAllCannotContain(@induct xs: List[BigInt], elem: BigInt): Unit = {
    require(xs.forall(_ > elem))
  }.ensuring(!xs.contains(elem))
}

object Hand {
    /**
    * The maximum number of cards in a hand.
    */
  val MaxHandSize = BigInt(7)
}