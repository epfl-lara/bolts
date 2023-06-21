// =======================================
// Terverak -> BoardSelectionForCardEffect.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

// During the development of this project,
// Stainless did not allow enums.
// So we had to change the enums to this version using a trait, a case class, and an object.

trait BoardSelectionForCardEffect {
  def str: String
  override def toString(): String = str
}

case class BoardSelectionForCardEffectEnum(str: String) extends BoardSelectionForCardEffect

/**
  * The target of a card effect.
  * Changed for stainless compatibility
  */
object BoardSelectionForCardEffect {
  val CurrentPlayerMinionsBoard = BoardSelectionForCardEffectEnum("on your board")
  val WaitingPlayerMinionsBoard = BoardSelectionForCardEffectEnum("on your opponent's board")
  val BothPlayersMinionsBoard = BoardSelectionForCardEffectEnum("on both boards")
}
