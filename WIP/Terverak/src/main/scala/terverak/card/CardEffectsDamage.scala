// =======================================
// Terverak -> CardEffects.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
    
package terverak.card

import terverak.utils.StringUtils.*
import stainless.lang.*
import stainless.annotation.*

/**
  * The card effects that deal damage.
  */
object CardEffectsDamage {
  /**
    * A card effect that damages a hero.
    * @param amount the amount of damage
    */
  final case class DamageHero(amount: BigInt, isEnemyHero: Boolean = true) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      if (isEnemyHero)
        "Deal " + amount.toString + " " + getWordWithGoodPlural("damage", amount) + " to the opponent hero."
      else
        "Deal " + amount.toString + " " + getWordWithGoodPlural("damage", amount) + " to your hero."
  }

  /**
    * A card effect that damages all minions.
    * @param amount the amount of damage
    */
  final case class DamageAllMinions(amount: BigInt) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      "Deal " + amount.toString + " " + getWordWithGoodPlural("damage", amount) + " to all minions."
  }

  /**
    * A card effect that damages all minions and players.
    * @param amount the amount of damage
    */
  final case class DamageEveryone(amount: BigInt) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      "Deal " + amount.toString + " " + getWordWithGoodPlural("damage", amount) + " to everyone."
  }

  final case class DamageEnnemyMinions(amount: BigInt) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      "Deal " + amount.toString + " " + getWordWithGoodPlural("damage", amount) + " to all enemy minions."
  }

  /**
    * A card effect that damages a specific minion.
    * @param amount the amount of damage
    * @param targetType the target of the damage
    * @param targetFilter the filter to apply to the target
    */
  final case class DamageTarget(
    amount: BigInt,
    target: TargetTypeForCardEffect = TargetTypeForCardEffect.Everything,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    require(amount >= 0)

    @extern
    override def toString: String = 
      super.toString + "Deal " + amount.toString() + " " + getWordWithGoodPlural("damage", amount) + " to the target."
  }

    /**
    * A card effect that damages a specific minion.
    * @param amount the amount of damage
    * @param targetType the target of the damage
    * @param targetFilter the filter to apply to the target
    */
  final case class DestroyMinion(
    target: TargetTypeForCardEffect = TargetTypeForCardEffect.AllMinions,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    require(
      target == TargetTypeForCardEffect.AllyPlayerMinion
      || target == TargetTypeForCardEffect.EnemyPlayerMinion
      || target == TargetTypeForCardEffect.AllMinions)

    override def toString: String = 
      super.toString() + "Destroy the target."
  }
}
