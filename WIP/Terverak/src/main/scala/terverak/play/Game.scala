// =======================================
// Terverak -> Game.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.play

import terverak.card.*
import terverak.play.IdObject.*
import stainless.lang.*
import stainless.collection.*
import stainless.annotation.*

/**
  * A game of Terverak.
  * @param currentPlayer the current player
  * @param waitingPlayer the waiting player
  */
final case class Game(currentPlayer: Player, waitingPlayer: Player) {
  
  /**
  * New turn in Terverak.
  * @return the new game
  */
  def newTurn(): Game = {
    val wakeUpMinions = currentPlayer.minionBoard.wakeUpMinions()
    val newCurrentPlayer = currentPlayer.copy(minionBoard = wakeUpMinions).removeMana(currentPlayer.mana)

    val damageToDeal = 
      ListOps.sum(
        currentPlayer.minionBoard.minions.filter(
          _.minion.card.attributes.exists {
            case MinionCardAttributesData.Toxicity() => true
            case _ => false
          }
        ).map(_.minion.attackPoints))
    
    val manaToRegen = 
      ListOps.sum(
        waitingPlayer.minionBoard.minions.map(manaMinion =>
          manaMinion.minion.card.attributes.map {
              case MinionCardAttributesData.ManaRegen(amount) =>
                if (manaMinion.minion.healthPoints > damageToDeal) then amount else BigInt(0)
              case _ => BigInt(0)
          }.sum
        )
      )

    copy(currentPlayer = waitingPlayer.startTurn().addMana(manaToRegen).takeDamage(damageToDeal), waitingPlayer = newCurrentPlayer.takeDamage(damageToDeal))
    .damageAllMinions(damageToDeal).refresh()
  } ensuring(res => res.waitingPlayer.mana == 0 && res.waitingPlayer.id == currentPlayer.id)

  /**
    * Refresh the game.
    * It will for example remove minions with <= 0 health points from the board.
    * @return the new game
    */
  def refresh(): Game = {
    copy(currentPlayer.refresh(), waitingPlayer.refresh())
  }

  /**
   * Check if a card can be played.
   * @param handCard the card to check
   * @return true if the card can be played, false otherwise
   */
  def isCardPlayable(handCard: HandCard): Boolean = {
    handCard.card match
      case minion: Card.MinionCard =>
        (currentPlayer.mana >= minion.manaCost) && (currentPlayer.minionBoard.minions.length < MinionBoard.MaxMinionBoardSize)
      case spell: Card.SpellCard =>
        currentPlayer.mana >= spell.manaCost
  }

  /**
    * Damage a specific id object.
    * @param idObject the id object to damage
    * @param amount the amount of damage
    * @return the new game
    */
  def damageIdObject(idObject: IdObject, amount: BigInt): Game = {
    require(amount >= 0)

    copy(
      currentPlayer = currentPlayer.damageIdObject(idObject, amount),
      waitingPlayer = waitingPlayer.damageIdObject(idObject, amount)
    )
  }

  /**
    * Damage all minions of the game.
    * @param amount the amount of damage
    * @return the new game
    */
  def damageAllMinions(amount: BigInt): Game = {
    require(amount >= 0)

    copy(
      currentPlayer = currentPlayer.damageAllMinions(amount),
      waitingPlayer = waitingPlayer.damageAllMinions(amount)
    )
  }

  /**
    * Heal a specific id object.
    * @param idObject the id object to heal
    * @param amount the amount of heal
    * @return the new game
    */
  def healIdObject(idObject: IdObject, amount: BigInt): Game = {
    require(amount >= 0)

    copy(
      currentPlayer = currentPlayer.healIdObject(idObject, amount),
      waitingPlayer = waitingPlayer.healIdObject(idObject, amount)
    )
  }

  /**
    * Boost the attack of a specific id object.
    * @param idObject the id object to boost
    * @param amount the amount of boost
    * @return the new game
    */
  def boostAttackOfIdObject(idObject: IdObject, amount: BigInt): Game = {
    require(amount >= 0)

    copy(
      currentPlayer = currentPlayer.boostAttackOfIdObject(idObject, amount),
      waitingPlayer = waitingPlayer.boostAttackOfIdObject(idObject, amount)
    )
  }

  /**
    * Boost the life of a specific id object.
    * @param idObject the id object to boost
    * @param amount the amount of boost
    * @return the new game
    */
  def boostLifeOfIdObject(idObject: IdObject, amount: BigInt): Game = {
    require(amount >= 0)

    copy(
      currentPlayer = currentPlayer.boostHealthOfIdObject(idObject, amount),
      waitingPlayer = waitingPlayer.boostHealthOfIdObject(idObject, amount)
    )
  }

  /**
    * kill a specific minion
    * @param idObject
    * @return
    */
  def destroyMinion(idObject: IdObject): Game = {
    idObject match
      case minionId: IdObject.MinionWithId =>
        copy(
          currentPlayer = currentPlayer.destroyMinion(minionId),
          waitingPlayer = waitingPlayer.destroyMinion(minionId)
        )
      case _ => this
  }

  /**
   * Counts the number of minions with a specific subtype.
   * @param game the game
   * @param cardSubtype the subtype of the minion
   * @param target the target of the effect (current player, waiting player or both players)
   * @return the number of minions with the specific subtype
   */
  @extern
  def countMinionsWithSubtype(cardSubtype: CardSubtype, target: BoardSelectionForCardEffect): BigInt = {
    target match {
      case BoardSelectionForCardEffect.CurrentPlayerMinionsBoard => currentPlayer.minionBoard.minions.count(_.minion.card.subtypes.contains(cardSubtype))
      case BoardSelectionForCardEffect.WaitingPlayerMinionsBoard => waitingPlayer.minionBoard.minions.count(_.minion.card.subtypes.contains(cardSubtype))
      case _ => currentPlayer.minionBoard.minions.count(_.minion.card.subtypes.contains(cardSubtype))
        + waitingPlayer.minionBoard.minions.count(_.minion.card.subtypes.contains(cardSubtype))
    }
  }
}
