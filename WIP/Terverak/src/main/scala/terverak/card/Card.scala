// =======================================
// Terverak -> Card.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================

package terverak.card

import stainless.collection.*
import stainless.lang.*

/**
  * A card model in Terverak.
  */
sealed trait Card {
  def name: String
  def description: String
  def imageName: String
  def manaCost: BigInt
  def effectsWhenPlayed: List[CardEffect]
  def effectsWhenDiscard: List[CardEffect]
  def subtypes: List[CardSubtype]
}

/**
  * Cards types
  */
object Card {

  /**
    * A minion card.
    */
  final case class MinionCard (
    name: String = "Unknown",
    description: String = "",
    imageName: String,
    manaCost: BigInt = BigInt(1),
    effectsWhenPlayed: List[CardEffect] = Nil(),
    effectsWhenDiscard: List[CardEffect] = Nil(),
    subtypes: List[CardSubtype] = Nil(),
    attributes: List[MinionCardAttribute] = Nil(),
    damage: BigInt = BigInt(0),
    life: BigInt = BigInt(1)
  ) extends Card {
    require(name != "")
    require(manaCost >= 0)
    require(subtypes.unique.size == subtypes.size)
    require(damage >= 0)
    require(life >= 1)
    require(attributes.unique.size == attributes.size)
  }

  /**
    * A spell card.
    */
  final case class SpellCard (
    name: String = "Unknown",
    description: String = "",
    imageName: String,
    manaCost: BigInt = BigInt(1),
    effectsWhenPlayed: List[CardEffect] = Nil(),
    effectsWhenDiscard: List[CardEffect] = Nil(),
    subtypes: List[CardSubtype] = Nil(),
  ) extends Card {
    require(name != "")
    require(manaCost >= 0)
    require(subtypes.unique.size == subtypes.size)
  }
}
