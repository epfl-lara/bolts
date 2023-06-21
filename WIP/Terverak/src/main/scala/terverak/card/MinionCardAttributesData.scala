// =======================================
// Terverak -> MinionCardAttributesData.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*
import stainless.annotation.*

/** The data of the cards attributes for a minion.
  */
object MinionCardAttributesData {

  /**
    * The defender attribute. This minion can't attack.
    */
  final case class Defender() extends MinionCardAttribute {
    override def name: String = "Defender"
    override def description: String = "This minion can't attack."
  }

  /**
    * The mana regeneration attribute. Regenerate mana at the beginning of your turn.
    * @param amount the amount of mana to regenerate.
    */
  final case class ManaRegen(amountMana: BigInt) extends MinionCardAttribute {
    require(amountMana >= 0)
    
    @extern override def name: String = "Mana " + amountMana.toString
    @extern override def description: String = "Regenerate " + amountMana.toString + " mana at the beginning of your turn."
    override def amount: BigInt = amountMana
  }

  /**
    * The sprint attribute. This minion can attack during the turn it is summoned.
    */
  final case class Sprint() extends MinionCardAttribute {
    override def name: String = "Sprint"
    override def description: String = "This minion can attack during the turn it is summoned."
  }

  /**
    * The toxicity attribute. Deal damage to everyone where the damage is the attack of this minion.
    */
  final case class Toxicity() extends MinionCardAttribute {
    override def name: String = "Toxicity"
    override def description: String = "Deal X damage to everyone at the end of your turn, where X is the attack of this minion."
  }

}
