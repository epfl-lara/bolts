// =======================================
// Terverak -> CardEffect.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.card

/**
  * A card effect
  */
trait CardEffect {
  override def toString: String = "Unknown effect"
}

/**
  * A card effect that has a target
  */
trait CardEffectWithTargetChoice extends CardEffect {
  /**
    * The target type of the card effect
    * @return the target
    */
  def target: TargetTypeForCardEffect

  /**
    * The filter for the minions, if the target can be a minion
    * @return the filter
    */
  def filterForMinions: FilterForMinions

  override def toString: String =
    val filterStr = filterForMinions.toString
    if (filterStr == "") "Choose " + target.toString() + ": "
    else "Choose " + target.toString() + " " + filterForMinions.toString + ": "
}
 