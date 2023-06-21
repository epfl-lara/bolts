// =======================================
// Terverak -> CardsData.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*
import stainless.collection.*

/**
  * The data of all the planet cards.
  */
object PlanetCardsData {

  val planet_aethon: Card.MinionCard = Card.MinionCard(
      "Aethon",
      "Aethon was the cradle of an ancestral race before its destruction.",
      "planet1",
      BigInt(1),
      Nil(),
      List(CardEffectsMana.AddMana(BigInt(2))),
      List(CardSubtype.Planet),
      List(MinionCardAttributesData.Defender(), MinionCardAttributesData.ManaRegen(BigInt(1))),
      BigInt(0),
      3
    )

  val planet_nereid: Card.MinionCard = Card.MinionCard(
    "Nereid",
    "Mother planet of the aliens and refuge of the most valiant warriors of the galaxy.",
    "planet2",
    BigInt(2),
    List(CardEffectsDamage.DamageHero(BigInt(2))),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Planet),
    List(MinionCardAttributesData.Defender(), MinionCardAttributesData.ManaRegen(BigInt(1))),
    BigInt(1),
    BigInt(2)
  )

  val planet_dictys: Card.MinionCard = Card.MinionCard(
    "Dictys",
    "Dictys is a sanctuary dedicated to science. The greatest scientists are retraining themselves to design new technologies.",
    "planet3",
    BigInt(4),
    Nil(),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Planet),
    List(MinionCardAttributesData.Defender(), MinionCardAttributesData.ManaRegen(BigInt(2))),
    BigInt(2),
    BigInt(5)
  )

  val planet_arion: Card.MinionCard = Card.MinionCard(
    "Arion",
    "Planet deserted because of the arrid climate. Only madmen would dare to live there.",
    "planet4",
    BigInt(2),
    Nil(),
    Nil(),
    List(CardSubtype.Planet),
    List(MinionCardAttributesData.Defender(), MinionCardAttributesData.ManaRegen(BigInt(3))),
    BigInt(4),
    BigInt(1)
  )

  val planet_burning: Card.SpellCard = Card.SpellCard(
    "Burning planet",
    "It hurts!",
    "planetBurning",
    BigInt(4),
    List(CardEffectsDamage.DamageEnnemyMinions(BigInt(2))),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Planet)
  )

  val generous_planets: Card.SpellCard = Card.SpellCard(
    "The generous planets",
    "In addition to giving you a place to live, planets sometimes give gifts in the form of resources. This time, the cards are in your favor.",
    "spell1",
    BigInt(1),
    List(
      CardEffectsDraw.DrawCardPerSubtype(
        BigInt(1),
        CardSubtype.Planet,
        BoardSelectionForCardEffect.CurrentPlayerMinionsBoard
      )
    ),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Planet)
  )

  val meteor: Card.SpellCard = Card.SpellCard(
    "Meteor",
    "Do not believe that a planet protects you. Space disasters are never far away.",
    "meteor",
    BigInt(3),
    List(CardEffectsDamage.DestroyMinion(TargetTypeForCardEffect.AllMinions, FilterForMinions.FilterForSubtype(CardSubtype.Planet))),
    List(CardEffectsMana.AddMana(BigInt(1))),
    List(CardSubtype.Planet)
  )

  val cards: Set[Card] = Set(
    planet_aethon,
    planet_nereid,
    planet_dictys,
    planet_arion,
    planet_burning,
    generous_planets,
    meteor
  )

}
