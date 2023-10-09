// =======================================
// Terverak -> FilterForMinions.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

/**
  * A filter for a target with choice card effect
  */
trait FilterForMinions {

  def filter: Card => Boolean
  
  override def toString(): String

}

object FilterForMinions {
  final case class NoFilter() extends FilterForMinions() {

    override def filter = _ => true
    override def toString(): String = ""

  }

  /**
    * A filter for some specific subtypes
    * @param subtypes the subtypes to filter
    */
  final case class FilterForSubtype(subtype: CardSubtype) extends FilterForMinions() {

    override def filter = card => card.subtypes.contains(subtype)

    override def toString(): String = "of subtype " + subtype.toString
  }
}
