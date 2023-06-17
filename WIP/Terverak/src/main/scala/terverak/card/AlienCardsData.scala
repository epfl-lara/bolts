// =======================================
// Terverak -> AlienCardsData.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*
import stainless.collection.*

/**
  * The data of all the alien cards.
  */
object AlienCardsData {

  val alien_green: Card.MinionCard = Card.MinionCard(
    "Zeneid, the green warrior",
    "He is still trying to prove his worth to the world, but still needs to put in some more effort.",
    "alienGreen",
    BigInt(1),
    Nil(),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Alien),
    Nil(),
    BigInt(1),
    BigInt(2)
  )

  val alien_yellow: Card.MinionCard = Card.MinionCard(
    "Yeyereid, the yellow terror",
    "Terrifyingly powerful... but at what cost.",
    "alienYellow",
    BigInt(4),
    List(CardEffectsDamage.DamageHero(BigInt(3), false)),
    List(CardEffectsDamage.DamageHero(BigInt(1), false)),
    List(CardSubtype.Alien),
    Nil(),
    BigInt(4),
    BigInt(5)
  )

  val alien_blue: Card.MinionCard = Card.MinionCard(
    "Terneid, the blue thinker",
    "One day, his eyes fell on the famous mana crystals. Since then, he has never left them.",
    "alienBlue",
    BigInt(3),
    List(CardEffectsDraw.DrawCard(BigInt(1))),
    List(CardEffectsMana.AddMana(BigInt(2))),
    List(CardSubtype.Alien),
    Nil(),
    BigInt(2),
    BigInt(3)
  )

  val alien_red: Card.MinionCard = Card.MinionCard(
    "Serneid, the red sprinter",
    "He prepares so far in advance that he is never tired once on the battlefield.",
    "alienRed",
    BigInt(2),
    Nil(),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Alien),
    List(MinionCardAttributesData.Sprint()),
    BigInt(2),
    BigInt(2)
  )

  val cards: Set[Card] = Set(
    alien_blue,
    alien_red,
    alien_green,
    alien_yellow
  )

}
