// =======================================
// Terverak -> OtherCardsData.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*
import stainless.collection.*

/**
  * The data of the cards.
  */
object OtherCardsData {

  val blackhole: Card.SpellCard = Card.SpellCard(
    "Machiavellian black hole",
    "Black holes are devastating in their path... but beware of their malice! They make no distinction between species.",
    "blackHole",
    BigInt(2),
    List(CardEffectsDamage.DamageHero(BigInt(5), true), CardEffectsDamage.DamageHero(BigInt(5), false)),
    List(CardEffectsMana.AddMana(BigInt(1))),
    Nil()
  )

  val brownCreature: Card.MinionCard = Card.MinionCard(
    "Bronzy",
    "These cute creatures are not very intelligent, but have pretty sharp teeth.",
    "brownCreature",
    BigInt(2),
    Nil(),
    List(CardEffectsMana.AddMana(BigInt(1))),
    Nil(),
    Nil(),
    BigInt(3),
    BigInt(2)
  )

  val bacteria: Card.MinionCard = Card.MinionCard(
    "Bacteria",
    "Bacteria are the most widespread forms of life in the universe, but also the most dangerous.",
    "bacteria",
    BigInt(2),
    Nil(),
    List(CardEffectsDamage.DamageEveryone(BigInt(1))),
    Nil(),
    List(MinionCardAttributesData.Toxicity()),
    BigInt(1),
    BigInt(4)
  )

  val smallAstronaut: Card.MinionCard = Card.MinionCard(
    "Astronaut",
    "This little astronaut got lost in this unforgiving world. He is looking for a way to find his family.",
    "smallAstronaut",
    BigInt(1),
    Nil(),
    List(CardEffectsMana.AddMana(BigInt(1))),
    Nil(),
    List(MinionCardAttributesData.Sprint()),
    BigInt(2),
    BigInt(1)
  )

  val ship1: Card.MinionCard = Card.MinionCard(
    "Ship1",
    "Blablabla",
    "ship1",
    BigInt(99),
    Nil(),
    Nil(),
    Nil(),
    Nil(),
    BigInt(1),
    BigInt(1)
  )

  val demoniacCreature: Card.MinionCard = Card.MinionCard(
    "Demoniac creature",
    "Hidden in the depths of the universe, this creature is the incarnation of evil.",
    "demoniacCreature",
    BigInt(5),
    Nil(),
    Nil(),
    Nil(),
    Nil(),
    BigInt(6),
    BigInt(5)
  )

  /**
    * The cards of the game.
    */
  val cards: Set[Card] = Set(
    blackhole,
    brownCreature,
    bacteria,
    smallAstronaut,
    ship1,
    demoniacCreature
  )
}
