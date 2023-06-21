// =======================================
// Terverak -> CardSubtype.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

// During the development of this project,
// Stainless did not allow enums.
// So we had to change the enums to this version using a trait, a case class, and an object.

sealed trait CardSubtype {
  def str: String
  override def toString(): String = str
}

final case class CardSubtypeEnum(str: String) extends CardSubtype

/**
  * Subtype of a card.
  * Changed for stainless compatibility
  */
object CardSubtype {
  val Planet = CardSubtypeEnum("Planet")
  val Alien = CardSubtypeEnum("Alien")
  val Gem = CardSubtypeEnum("Gem")
}
