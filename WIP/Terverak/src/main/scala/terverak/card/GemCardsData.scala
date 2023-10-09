// =======================================
// Terverak -> GemCardsData.scala
// Kelvin Kappeler & Bastien Jolidon
// Bachelor Project EPFL, 2023
// =======================================
  
package terverak.card

import stainless.lang.*
import stainless.collection.*

/**
  * The data of all the gem cards.
  */
object GemCardsData {

  val gem_blue: Card.SpellCard = Card.SpellCard(
    "Sapphirine",
    "An old gem found on the planet of Dictys, it is said that it can be used to extract mana...",
    "gemBlue",
    BigInt(2),
    List(CardEffectsMana.DestroyTargetAndGiveManaForHealth(TargetTypeForCardEffect.AllyPlayerMinion)),
    List(CardEffectsMana.AddMana(BigInt(2))),
    List(CardSubtype.Gem)
  )

  val gem_red: Card.SpellCard = Card.SpellCard(
    "Rubyx",
    "A precious gem found in the ancient ruins of Aethon, it was used to heal warriors during war.",
    "gemRed",
    BigInt(1),
    List(CardEffectsBoost.BoostMinionLife(BigInt(2), TargetTypeForCardEffect.AllyPlayerMinion)),
    List(CardEffectsHeal.HealTarget(BigInt(2), TargetTypeForCardEffect.AllyPlayerAndMinions)),
    List(CardSubtype.Gem)
  )

  val gem_orange: Card.SpellCard = Card.SpellCard(
    "Aurorite",
    "A very rare gem extracted from the mines of Arion, his shininess gives its owner astonishing power.",
    "gemOrange",
    BigInt(1),
    List(CardEffectsBoost.BoostMinionAttack(BigInt(2), TargetTypeForCardEffect.AllyPlayerMinion)),
    List(CardEffectsDamage.DamageTarget(BigInt(2), TargetTypeForCardEffect.EnemyPlayerAndMinions)),
    List(CardSubtype.Gem)
  )

  val cards: Set[Card] = Set(
    gem_blue,
    gem_red,
    gem_orange
  )

}
