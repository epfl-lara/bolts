// =======================================
// Terverak -> CardEffectsHeal.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.card

import terverak.utils.StringUtils.getWordWithGoodPlural
import stainless.lang.*
import stainless.annotation.*

/**
  * The card effects that heal.
  */
object CardEffectsHeal {
  
  /**
  * A card effect that heals the hero.
  * @param amount the amount of damage healed
  */
  final case class HealHero(amount: BigInt = 0) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      "Heal your hero for " + amount.toString() + " health " + getWordWithGoodPlural("point", amount)
  }

  /**
   * A card effect that heal the hero for each alien on the board.
   */
  final case class HealHeroPerSubtype(amount: BigInt, subtype: CardSubtype, target: BoardSelectionForCardEffect) extends CardEffect {
    require(amount >= 0)

    override def toString: String =
      HealHero(amount).toString() + " for each " + subtype.toString() + " " + target.toString()
  }

  final case class HealTarget(
    amount: BigInt,
    target: TargetTypeForCardEffect,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    require(amount >= 0)

    @extern
    override def toString: String =
      super.toString() + "Heal the target for " + amount.toString() + " health " + getWordWithGoodPlural("point", amount)
  }
}
