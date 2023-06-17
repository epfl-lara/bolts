// =======================================
// Terverak -> CardEffectsBoost.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
    
package terverak.card

import terverak.utils.StringUtils.*
import stainless.lang.*
import stainless.annotation.*

/**
  * The card effects that boost minions.
  */
object CardEffectsBoost {

  final case class BoostMinionAttack(
    amount: BigInt,
    target: TargetTypeForCardEffect,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    require(amount >= 0)   

    @extern
    override def toString: String =
      super.toString() + "Add " + amount.toString() + " " + getWordWithGoodPlural("attack point", amount) + " to the target"
  }

  final case class BoostMinionLife(
    amount: BigInt,
    target: TargetTypeForCardEffect,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    require(amount >= 0)

    @extern
    override def toString: String =
      super.toString() + "Add " + amount.toString() + " " + getWordWithGoodPlural("health point", amount) + " to the target"
  }
}