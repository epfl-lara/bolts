// =======================================
// Terverak -> CardEffectsDraw.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
    
package terverak.card

import terverak.utils.StringUtils.getWordWithGoodPlural
import stainless.lang.*
import stainless.annotation.*

/**
  * The card effects that draw cards.
  */
object CardEffectsDraw {
  
  /**
    * A card effect that draw cards.
    * @param amount the amount of cards drawn
    */
  final case class DrawCard(amount: BigInt) extends CardEffect {
    require(amount >= 0)

    @extern
    override def toString: String =
      "Draw " + amount.toString() + " " + getWordWithGoodPlural("card", amount)
  }

  /**
   * A card effect that draw cards for each subtype on the board.
   */
  final case class DrawCardPerSubtype(amount: BigInt, subtype: CardSubtype, target: BoardSelectionForCardEffect) extends CardEffect {
    require(amount >= 0)

    override def toString: String =
      DrawCard(amount).toString() + " for each " + subtype.toString() + " " + target.toString()
  }

}
