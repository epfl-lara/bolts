// =======================================
// Terverak -> MinionCardAttribute.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*

/** A card attribute for a minion. Example : "Defender" -> "This card can't
  * attack"
  */
trait MinionCardAttribute {

  def name: String
  def description: String
  def amount: BigInt = BigInt(0)

  override def toString: String = name + " : " + description

}
