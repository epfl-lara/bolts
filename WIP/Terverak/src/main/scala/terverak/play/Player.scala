// =======================================
// Terverak -> Player.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.play

import terverak.play.IdObject.*
import stainless.lang.*
import stainless.annotation.*

import scala.annotation.tailrec

/**
  * A player.
  */
final case class Player(
  id: BigInt,
  heroPicture: String,
  maxHealthPoints: BigInt,
  healthPoints: BigInt,
  mana: BigInt,
  deck: DeckZone,
  hand: Hand,
  minionBoard: MinionBoard,
  discardZone: DiscardZone
) extends IdObject {
  require(mana >= 0)

  /**
    * The player takes an amount of damage.
    * @param amount the amount of damage to take.
    * @return the new player.
    */
  def takeDamage(amount: BigInt): Player = {
    require(amount >= 0)

    copy(healthPoints = healthPoints - amount)
  }.ensuring(_.healthPoints == healthPoints - amount)

  /**
    * Heals the player.
    * @param amount the amount of health to heal.
    * @return the new player.
    */
  def heal(amount: BigInt): Player = {
    require(amount >= 0)
    val newHealthPoints =
      if ((healthPoints + amount) <= maxHealthPoints) (healthPoints + amount)
      else maxHealthPoints
    copy(healthPoints = newHealthPoints)
  }

  /**
    * Adds mana to the player.
    * @param amount the amount of mana to add.
    * @return the new player.
    */
  def addMana(amount: BigInt): Player = {
    require(amount >= 0)

    copy(mana = mana + amount)
  }.ensuring(_.mana == mana + amount)

  /**
    * Removes mana from the player.
    * @param amount the amount of mana to remove.
    * @return the new player.
    */
  def removeMana(amount: BigInt): Player = {
    require(amount >= 0)
    require(mana - amount >= 0)

    copy(mana = mana - amount)
  }.ensuring(_.mana == mana - amount)

  /**
    * Draws a card from the deck.
    * @param amount the amount of cards to draw.
    * @return the new player.
   */
  @extern
  def drawCards(amount: BigInt): Player = {
    require(amount >= 0)
    if amount == 0 || hand.cards.length == Hand.MaxHandSize then
      this
    else if deck.cards.isEmpty then
      copy(discardZone = DiscardZone(), deck = DeckZone(discardZone.cards))
        .drawCards(amount)
    else
      val (newDeck, drawnCard) = deck.removeTopCard()
      val newHand = hand.addCard(drawnCard)
      copy(deck = newDeck, hand = newHand).drawCards(amount - 1)
  }.ensuring(res => res.hand.cards.length >= hand.cards.length)

  /**
    * Damage a specific id object.
    * @param idObject the id object to damage
    * @param amount the amount of damage
    * @return the new player
    */
  def damageIdObject(idObject: IdObject, amount: BigInt): Player = {
    require(amount >= 0)

    idObject match {
      case minion: IdObject.MinionWithId =>
        copy(
          minionBoard = minionBoard.damageMinion(minion, amount),
        )
      case player: Player =>
        if (player.id == id) {
          takeDamage(amount)
        } else {
          this
        }
      case _ => this
    }
  }

  /**
   * Damage all minions.
   * @param amount the amount of damage
   * @return the new player
   */
  def damageAllMinions(amount: BigInt): Player = {
    require(amount >= 0)

    copy(
      minionBoard = minionBoard.damageAllMinions(amount),
    )
  }

  /**
    * Heals a specific id object.
    * @param idObject the id object to heal
    * @param amount the amount of healing
    * @return the new player
    */
  def healIdObject(idObject: IdObject, amount: BigInt): Player = {
    require(amount >= 0)
    
    idObject match {
      case minion: IdObject.MinionWithId =>
        copy(
          minionBoard = minionBoard.healMinion(minion, amount),
        )
      case player: Player =>
        if (player.id == id) {
          heal(amount)
        } else {
          this
        }
      case _ => this
    }
  }

  /**
    * Boost the attack of a specific id object.
    * @param idObject the id object to boost
    * @param amount the amount of attack to boost
    * @return the new player
    */
  def boostAttackOfIdObject(idObject: IdObject, amount: BigInt): Player = {
    require(amount >= 0)

    idObject match {
      case minion: IdObject.MinionWithId =>
        copy(
          minionBoard = minionBoard.boostMinionAttack(minion, amount),
        )
      case _ => this
    }
  }

  /**
    * Boost the health of a specific id object.
    * @param idObject the id object to boost
    * @param amount the amount of health to boost
    * @return the new player
    */
  def boostHealthOfIdObject(idObject: IdObject, amount: BigInt): Player = {
    require(amount >= 0)

    idObject match {
      case minion: IdObject.MinionWithId =>

        copy(
          minionBoard = minionBoard.boostMinionHealth(minion, amount),
        )
      case _ => this
    }
  }

  /**
    * Destroy a minion.
    * @param minion
    * @return
    */
  def destroyMinion(minion: IdObject.MinionWithId): Player = {
    //require(minionBoard.minions.contains(minion))

    copy(
      minionBoard = minionBoard.destroyMinion(minion),
    )
  }

  /**
    * Move a card from the hand to the discard zone.
    * @param handCard the card to move.
    * @return the new player.
    */
  def moveHandCardToDiscardZone(handCard: HandCard): Player = {
    require(hand.cards.contains(handCard))

    copy(hand = hand.removeCard(handCard), discardZone = discardZone.addCard(handCard.card))
  }

  /**
    * Begins the player's turn.
    * @return the new player.
    */
  def startTurn(): Player = {
    drawCards(2)
  }

  /**
    * Refreshes the player's board.
    * @return the new player.
    */
  def refresh(): Player = {
    val (newMinionBoard, deadMinions) = minionBoard.refresh()
    val newDiscardZone = discardZone.addCards(deadMinions.map(_.card))
    copy(minionBoard = newMinionBoard, discardZone = newDiscardZone)
  }
}
