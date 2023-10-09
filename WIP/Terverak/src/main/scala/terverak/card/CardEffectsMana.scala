// =======================================
// Terverak -> CardEffectsMana.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.card

import stainless.lang.*
import stainless.annotation.*

/**
  * The data of the cards effects for mana.
  */
object CardEffectsMana {

  /**
   * A card effect that add mana to the current player.
   * @param amount the amount of mana added
   */
  final case class AddMana(amount: BigInt) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String = "Add " + amount.toString() + " mana to your mana pool"
  }

    /**
    * A card effect that give mana for each alien on the board.
    */
  final case class AddManaPerSubtype(amount: BigInt, subtype: CardSubtype, target: BoardSelectionForCardEffect) extends CardEffect {
    require(amount >= 0)

    override def toString: String =
      AddMana(amount).toString() + " for each " + subtype.toString() + " " + target.toString()
  }

  final case class DestroyTargetAndGiveManaForHealth(
    target: TargetTypeForCardEffect,
    filterForMinions: FilterForMinions = FilterForMinions.NoFilter()
  ) extends CardEffectWithTargetChoice {
    
    override def toString: String =
      super.toString() + "Destroy the target, and add mana equal to its health to your mana pool"
  }
}
