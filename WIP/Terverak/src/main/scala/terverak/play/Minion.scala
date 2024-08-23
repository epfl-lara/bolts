// =======================================
// Terverak -> Minion.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.play

import terverak.card.Card
import stainless.lang.*

/**
  * Represents a minion.
  *
  * @param maxHP the maximum health points of the minion.
  * @param healthPoints the current health points of the minion.
  * @param attackPoints the attack points of the minion.
  */
final case class Minion(card: Card.MinionCard, maxHP: BigInt, healthPoints: BigInt, attackPoints: BigInt, canAttack: Boolean) {
  require(maxHP > 0)
  require(attackPoints >= 0)
  require(healthPoints <= maxHP)

  /**
    * Heals the minion.
    * @param amount the amount of health to heal.
    * @return the new minion.
    */
  def heal(amount: BigInt): Minion = {
    require(amount >= 0)

    val newHealthPoints = 
      if (maxHP <= (healthPoints + amount)) maxHP
      else (healthPoints + amount)
    copy(healthPoints = newHealthPoints)
  }.ensuring(res => res.healthPoints <= maxHP && res.healthPoints >= healthPoints)

  /**
    * Takes damage for the minion.
    * @param amount the amount of damage to take.
    * @return the new minion.
    */
  def takeDamage(amount: BigInt): Minion = {
    require(amount >= 0)

    copy(healthPoints = healthPoints - amount)
  }.ensuring(res => res.healthPoints <= maxHP && res.healthPoints <= healthPoints)

  /**
    * Boosts the attack points of the minion.
    * @param amount the amount of attack points to boost.
    * @return the new minion.
    */
  def boostAttack(amount: BigInt): Minion = {
    require(amount >= 0)

    copy(attackPoints = attackPoints + amount)
  }.ensuring(res => res.attackPoints >= attackPoints)

  /**
    * Boosts the health points of the minion.
    * @param amount the amount of health points to boost.
    * @return the new minion.
    */
  def boostHealth(amount: BigInt): Minion = {
    require(amount >= 0)

    copy(maxHP = maxHP + amount, healthPoints = healthPoints + amount)
  }.ensuring(res => res.maxHP >= maxHP && res.healthPoints >= healthPoints)

  /**
    * Destroys the minion.
    * @return the new minion.
    */
  def destroy(): Minion = {
    copy(healthPoints = 0)
  }.ensuring(res => res.healthPoints == 0)

  /**
    * Attacks a minion.
    * @param minion the minion to attack.
    * @return the updated target minion and attacking minion.
    */
  def attackMinion(minion: Minion): (Minion, Minion) = {
    require(attackPoints > 0)

    (minion.takeDamage(attackPoints), this.takeDamage(minion.attackPoints).copy(canAttack = false))
  }.ensuring(res => res._1.healthPoints <= minion.healthPoints && res._2.healthPoints <= healthPoints && res._2.canAttack == false)
}
