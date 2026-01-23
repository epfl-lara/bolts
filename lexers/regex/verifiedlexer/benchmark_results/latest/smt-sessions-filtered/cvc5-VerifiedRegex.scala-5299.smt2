; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271454 () Bool)

(assert start!271454)

(declare-fun b!2806613 () Bool)

(declare-fun b_free!79917 () Bool)

(declare-fun b_next!80621 () Bool)

(assert (=> b!2806613 (= b_free!79917 (not b_next!80621))))

(declare-fun tp!895625 () Bool)

(declare-fun b_and!204775 () Bool)

(assert (=> b!2806613 (= tp!895625 b_and!204775)))

(declare-fun b_free!79919 () Bool)

(declare-fun b_next!80623 () Bool)

(assert (=> b!2806613 (= b_free!79919 (not b_next!80623))))

(declare-fun tp!895631 () Bool)

(declare-fun b_and!204777 () Bool)

(assert (=> b!2806613 (= tp!895631 b_and!204777)))

(declare-fun b!2806622 () Bool)

(declare-fun b_free!79921 () Bool)

(declare-fun b_next!80625 () Bool)

(assert (=> b!2806622 (= b_free!79921 (not b_next!80625))))

(declare-fun tp!895626 () Bool)

(declare-fun b_and!204779 () Bool)

(assert (=> b!2806622 (= tp!895626 b_and!204779)))

(declare-fun b_free!79923 () Bool)

(declare-fun b_next!80627 () Bool)

(assert (=> b!2806622 (= b_free!79923 (not b_next!80627))))

(declare-fun tp!895624 () Bool)

(declare-fun b_and!204781 () Bool)

(assert (=> b!2806622 (= tp!895624 b_and!204781)))

(declare-fun b!2806616 () Bool)

(declare-fun b_free!79925 () Bool)

(declare-fun b_next!80629 () Bool)

(assert (=> b!2806616 (= b_free!79925 (not b_next!80629))))

(declare-fun tp!895628 () Bool)

(declare-fun b_and!204783 () Bool)

(assert (=> b!2806616 (= tp!895628 b_and!204783)))

(declare-fun b_free!79927 () Bool)

(declare-fun b_next!80631 () Bool)

(assert (=> b!2806616 (= b_free!79927 (not b_next!80631))))

(declare-fun tp!895630 () Bool)

(declare-fun b_and!204785 () Bool)

(assert (=> b!2806616 (= tp!895630 b_and!204785)))

(declare-fun b!2806633 () Bool)

(declare-fun e!1774458 () Bool)

(assert (=> b!2806633 (= e!1774458 true)))

(declare-fun b!2806632 () Bool)

(declare-fun e!1774457 () Bool)

(assert (=> b!2806632 (= e!1774457 e!1774458)))

(declare-fun b!2806631 () Bool)

(declare-fun e!1774456 () Bool)

(assert (=> b!2806631 (= e!1774456 e!1774457)))

(declare-fun b!2806614 () Bool)

(assert (=> b!2806614 e!1774456))

(assert (= b!2806632 b!2806633))

(assert (= b!2806631 b!2806632))

(declare-datatypes ((List!32824 0))(
  ( (Nil!32724) (Cons!32724 (h!38144 (_ BitVec 16)) (t!229250 List!32824)) )
))
(declare-datatypes ((TokenValue!5114 0))(
  ( (FloatLiteralValue!10228 (text!36243 List!32824)) (TokenValueExt!5113 (__x!21885 Int)) (Broken!25570 (value!157307 List!32824)) (Object!5213) (End!5114) (Def!5114) (Underscore!5114) (Match!5114) (Else!5114) (Error!5114) (Case!5114) (If!5114) (Extends!5114) (Abstract!5114) (Class!5114) (Val!5114) (DelimiterValue!10228 (del!5174 List!32824)) (KeywordValue!5120 (value!157308 List!32824)) (CommentValue!10228 (value!157309 List!32824)) (WhitespaceValue!10228 (value!157310 List!32824)) (IndentationValue!5114 (value!157311 List!32824)) (String!35907) (Int32!5114) (Broken!25571 (value!157312 List!32824)) (Boolean!5115) (Unit!46780) (OperatorValue!5117 (op!5174 List!32824)) (IdentifierValue!10228 (value!157313 List!32824)) (IdentifierValue!10229 (value!157314 List!32824)) (WhitespaceValue!10229 (value!157315 List!32824)) (True!10228) (False!10228) (Broken!25572 (value!157316 List!32824)) (Broken!25573 (value!157317 List!32824)) (True!10229) (RightBrace!5114) (RightBracket!5114) (Colon!5114) (Null!5114) (Comma!5114) (LeftBracket!5114) (False!10229) (LeftBrace!5114) (ImaginaryLiteralValue!5114 (text!36244 List!32824)) (StringLiteralValue!15342 (value!157318 List!32824)) (EOFValue!5114 (value!157319 List!32824)) (IdentValue!5114 (value!157320 List!32824)) (DelimiterValue!10229 (value!157321 List!32824)) (DedentValue!5114 (value!157322 List!32824)) (NewLineValue!5114 (value!157323 List!32824)) (IntegerValue!15342 (value!157324 (_ BitVec 32)) (text!36245 List!32824)) (IntegerValue!15343 (value!157325 Int) (text!36246 List!32824)) (Times!5114) (Or!5114) (Equal!5114) (Minus!5114) (Broken!25574 (value!157326 List!32824)) (And!5114) (Div!5114) (LessEqual!5114) (Mod!5114) (Concat!13376) (Not!5114) (Plus!5114) (SpaceValue!5114 (value!157327 List!32824)) (IntegerValue!15344 (value!157328 Int) (text!36247 List!32824)) (StringLiteralValue!15343 (text!36248 List!32824)) (FloatLiteralValue!10229 (text!36249 List!32824)) (BytesLiteralValue!5114 (value!157329 List!32824)) (CommentValue!10229 (value!157330 List!32824)) (StringLiteralValue!15344 (value!157331 List!32824)) (ErrorTokenValue!5114 (msg!5175 List!32824)) )
))
(declare-datatypes ((C!16682 0))(
  ( (C!16683 (val!10275 Int)) )
))
(declare-datatypes ((List!32825 0))(
  ( (Nil!32725) (Cons!32725 (h!38145 C!16682) (t!229251 List!32825)) )
))
(declare-datatypes ((IArray!20259 0))(
  ( (IArray!20260 (innerList!10187 List!32825)) )
))
(declare-datatypes ((Conc!10127 0))(
  ( (Node!10127 (left!24702 Conc!10127) (right!25032 Conc!10127) (csize!20484 Int) (cheight!10338 Int)) (Leaf!15427 (xs!13239 IArray!20259) (csize!20485 Int)) (Empty!10127) )
))
(declare-datatypes ((BalanceConc!19868 0))(
  ( (BalanceConc!19869 (c!454684 Conc!10127)) )
))
(declare-datatypes ((TokenValueInjection!9668 0))(
  ( (TokenValueInjection!9669 (toValue!6890 Int) (toChars!6749 Int)) )
))
(declare-datatypes ((Regex!8262 0))(
  ( (ElementMatch!8262 (c!454685 C!16682)) (Concat!13377 (regOne!17036 Regex!8262) (regTwo!17036 Regex!8262)) (EmptyExpr!8262) (Star!8262 (reg!8591 Regex!8262)) (EmptyLang!8262) (Union!8262 (regOne!17037 Regex!8262) (regTwo!17037 Regex!8262)) )
))
(declare-datatypes ((String!35908 0))(
  ( (String!35909 (value!157332 String)) )
))
(declare-datatypes ((Rule!9584 0))(
  ( (Rule!9585 (regex!4892 Regex!8262) (tag!5396 String!35908) (isSeparator!4892 Bool) (transformation!4892 TokenValueInjection!9668)) )
))
(declare-datatypes ((List!32826 0))(
  ( (Nil!32726) (Cons!32726 (h!38146 Rule!9584) (t!229252 List!32826)) )
))
(declare-fun rules!2540 () List!32826)

(assert (= (and b!2806614 (is-Cons!32726 rules!2540)) b!2806631))

(declare-fun order!17373 () Int)

(declare-fun lambda!103094 () Int)

(declare-fun order!17375 () Int)

(declare-fun dynLambda!13698 (Int Int) Int)

(declare-fun dynLambda!13699 (Int Int) Int)

(assert (=> b!2806633 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103094))))

(declare-fun order!17377 () Int)

(declare-fun dynLambda!13700 (Int Int) Int)

(assert (=> b!2806633 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103094))))

(assert (=> b!2806614 true))

(declare-fun b!2806605 () Bool)

(declare-fun res!1169169 () Bool)

(declare-fun e!1774446 () Bool)

(assert (=> b!2806605 (=> (not res!1169169) (not e!1774446))))

(declare-fun isEmpty!18187 (List!32826) Bool)

(assert (=> b!2806605 (= res!1169169 (not (isEmpty!18187 rules!2540)))))

(declare-fun b!2806606 () Bool)

(declare-fun res!1169173 () Bool)

(assert (=> b!2806606 (=> (not res!1169173) (not e!1774446))))

(declare-datatypes ((Token!9186 0))(
  ( (Token!9187 (value!157333 TokenValue!5114) (rule!7320 Rule!9584) (size!25521 Int) (originalCharacters!5624 List!32825)) )
))
(declare-fun separatorToken!283 () Token!9186)

(declare-datatypes ((LexerInterface!4483 0))(
  ( (LexerInterfaceExt!4480 (__x!21886 Int)) (Lexer!4481) )
))
(declare-fun thiss!19710 () LexerInterface!4483)

(declare-fun rulesProduceIndividualToken!2047 (LexerInterface!4483 List!32826 Token!9186) Bool)

(assert (=> b!2806606 (= res!1169173 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun b!2806607 () Bool)

(declare-fun res!1169174 () Bool)

(assert (=> b!2806607 (=> (not res!1169174) (not e!1774446))))

(declare-datatypes ((List!32827 0))(
  ( (Nil!32727) (Cons!32727 (h!38147 Token!9186) (t!229253 List!32827)) )
))
(declare-fun l!5055 () List!32827)

(declare-fun rulesProduceEachTokenIndividuallyList!1557 (LexerInterface!4483 List!32826 List!32827) Bool)

(assert (=> b!2806607 (= res!1169174 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 l!5055))))

(declare-fun b!2806608 () Bool)

(declare-fun tp!895629 () Bool)

(declare-fun e!1774445 () Bool)

(declare-fun e!1774442 () Bool)

(declare-fun inv!44400 (String!35908) Bool)

(declare-fun inv!44403 (TokenValueInjection!9668) Bool)

(assert (=> b!2806608 (= e!1774442 (and tp!895629 (inv!44400 (tag!5396 (rule!7320 separatorToken!283))) (inv!44403 (transformation!4892 (rule!7320 separatorToken!283))) e!1774445))))

(declare-fun e!1774433 () Bool)

(declare-fun e!1774436 () Bool)

(declare-fun b!2806609 () Bool)

(declare-fun tp!895627 () Bool)

(assert (=> b!2806609 (= e!1774433 (and tp!895627 (inv!44400 (tag!5396 (rule!7320 (h!38147 l!5055)))) (inv!44403 (transformation!4892 (rule!7320 (h!38147 l!5055)))) e!1774436))))

(declare-fun b!2806610 () Bool)

(declare-fun e!1774444 () Bool)

(declare-fun tp!895621 () Bool)

(declare-fun inv!21 (TokenValue!5114) Bool)

(assert (=> b!2806610 (= e!1774444 (and (inv!21 (value!157333 (h!38147 l!5055))) e!1774433 tp!895621))))

(declare-fun b!2806611 () Bool)

(declare-fun res!1169176 () Bool)

(assert (=> b!2806611 (=> (not res!1169176) (not e!1774446))))

(declare-fun contains!6042 (List!32827 Token!9186) Bool)

(assert (=> b!2806611 (= res!1169176 (contains!6042 l!5055 (h!38147 l!5055)))))

(declare-fun b!2806612 () Bool)

(declare-fun e!1774437 () Bool)

(declare-fun e!1774435 () Bool)

(declare-fun tp!895619 () Bool)

(assert (=> b!2806612 (= e!1774437 (and e!1774435 tp!895619))))

(assert (=> b!2806613 (= e!1774436 (and tp!895625 tp!895631))))

(declare-fun e!1774434 () Bool)

(assert (=> b!2806614 (= e!1774446 e!1774434)))

(declare-fun res!1169175 () Bool)

(assert (=> b!2806614 (=> (not res!1169175) (not e!1774434))))

(assert (=> b!2806614 (= res!1169175 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 l!5055)))))

(declare-fun lt!1003101 () Bool)

(assert (=> b!2806614 (= lt!1003101 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 l!5055)))))

(declare-datatypes ((Unit!46781 0))(
  ( (Unit!46782) )
))
(declare-fun lt!1003099 () Unit!46781)

(declare-fun forallContained!1066 (List!32827 Int Token!9186) Unit!46781)

(assert (=> b!2806614 (= lt!1003099 (forallContained!1066 l!5055 lambda!103094 (h!38147 l!5055)))))

(declare-fun b!2806615 () Bool)

(declare-fun tp!895622 () Bool)

(declare-fun e!1774443 () Bool)

(assert (=> b!2806615 (= e!1774443 (and (inv!21 (value!157333 separatorToken!283)) e!1774442 tp!895622))))

(assert (=> b!2806616 (= e!1774445 (and tp!895628 tp!895630))))

(declare-fun b!2806617 () Bool)

(declare-fun res!1169170 () Bool)

(assert (=> b!2806617 (=> (not res!1169170) (not e!1774446))))

(declare-fun rulesInvariant!3923 (LexerInterface!4483 List!32826) Bool)

(assert (=> b!2806617 (= res!1169170 (rulesInvariant!3923 thiss!19710 rules!2540))))

(declare-fun b!2806618 () Bool)

(declare-fun tp!895620 () Bool)

(declare-fun e!1774448 () Bool)

(declare-fun inv!44404 (Token!9186) Bool)

(assert (=> b!2806618 (= e!1774448 (and (inv!44404 (h!38147 l!5055)) e!1774444 tp!895620))))

(declare-fun b!2806619 () Bool)

(declare-fun tp!895623 () Bool)

(declare-fun e!1774440 () Bool)

(assert (=> b!2806619 (= e!1774435 (and tp!895623 (inv!44400 (tag!5396 (h!38146 rules!2540))) (inv!44403 (transformation!4892 (h!38146 rules!2540))) e!1774440))))

(declare-fun b!2806620 () Bool)

(declare-fun res!1169172 () Bool)

(assert (=> b!2806620 (=> (not res!1169172) (not e!1774446))))

(assert (=> b!2806620 (= res!1169172 (and (isSeparator!4892 (rule!7320 separatorToken!283)) (is-Cons!32727 l!5055)))))

(declare-fun b!2806621 () Bool)

(declare-fun withSeparatorTokenList!131 (LexerInterface!4483 List!32827 Token!9186) List!32827)

(assert (=> b!2806621 (= e!1774434 (not (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(assert (=> b!2806621 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))

(declare-fun lt!1003100 () Unit!46781)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!101 (LexerInterface!4483 List!32826 List!32827 Token!9186) Unit!46781)

(assert (=> b!2806621 (= lt!1003100 (withSeparatorTokenListPreservesRulesProduceTokens!101 thiss!19710 rules!2540 (t!229253 l!5055) separatorToken!283))))

(declare-fun res!1169171 () Bool)

(assert (=> start!271454 (=> (not res!1169171) (not e!1774446))))

(assert (=> start!271454 (= res!1169171 (is-Lexer!4481 thiss!19710))))

(assert (=> start!271454 e!1774446))

(assert (=> start!271454 true))

(assert (=> start!271454 e!1774437))

(assert (=> start!271454 e!1774448))

(assert (=> start!271454 (and (inv!44404 separatorToken!283) e!1774443)))

(assert (=> b!2806622 (= e!1774440 (and tp!895626 tp!895624))))

(assert (= (and start!271454 res!1169171) b!2806605))

(assert (= (and b!2806605 res!1169169) b!2806617))

(assert (= (and b!2806617 res!1169170) b!2806607))

(assert (= (and b!2806607 res!1169174) b!2806606))

(assert (= (and b!2806606 res!1169173) b!2806620))

(assert (= (and b!2806620 res!1169172) b!2806611))

(assert (= (and b!2806611 res!1169176) b!2806614))

(assert (= (and b!2806614 res!1169175) b!2806621))

(assert (= b!2806619 b!2806622))

(assert (= b!2806612 b!2806619))

(assert (= (and start!271454 (is-Cons!32726 rules!2540)) b!2806612))

(assert (= b!2806609 b!2806613))

(assert (= b!2806610 b!2806609))

(assert (= b!2806618 b!2806610))

(assert (= (and start!271454 (is-Cons!32727 l!5055)) b!2806618))

(assert (= b!2806608 b!2806616))

(assert (= b!2806615 b!2806608))

(assert (= start!271454 b!2806615))

(declare-fun m!3235449 () Bool)

(assert (=> b!2806609 m!3235449))

(declare-fun m!3235451 () Bool)

(assert (=> b!2806609 m!3235451))

(declare-fun m!3235453 () Bool)

(assert (=> b!2806621 m!3235453))

(declare-fun m!3235455 () Bool)

(assert (=> b!2806621 m!3235455))

(declare-fun m!3235457 () Bool)

(assert (=> b!2806621 m!3235457))

(assert (=> b!2806621 m!3235453))

(assert (=> b!2806621 m!3235457))

(declare-fun m!3235459 () Bool)

(assert (=> b!2806621 m!3235459))

(declare-fun m!3235461 () Bool)

(assert (=> b!2806621 m!3235461))

(declare-fun m!3235463 () Bool)

(assert (=> start!271454 m!3235463))

(declare-fun m!3235465 () Bool)

(assert (=> b!2806611 m!3235465))

(declare-fun m!3235467 () Bool)

(assert (=> b!2806618 m!3235467))

(declare-fun m!3235469 () Bool)

(assert (=> b!2806619 m!3235469))

(declare-fun m!3235471 () Bool)

(assert (=> b!2806619 m!3235471))

(declare-fun m!3235473 () Bool)

(assert (=> b!2806615 m!3235473))

(declare-fun m!3235475 () Bool)

(assert (=> b!2806607 m!3235475))

(declare-fun m!3235477 () Bool)

(assert (=> b!2806610 m!3235477))

(declare-fun m!3235479 () Bool)

(assert (=> b!2806617 m!3235479))

(declare-fun m!3235481 () Bool)

(assert (=> b!2806606 m!3235481))

(declare-fun m!3235483 () Bool)

(assert (=> b!2806608 m!3235483))

(declare-fun m!3235485 () Bool)

(assert (=> b!2806608 m!3235485))

(declare-fun m!3235487 () Bool)

(assert (=> b!2806605 m!3235487))

(declare-fun m!3235489 () Bool)

(assert (=> b!2806614 m!3235489))

(declare-fun m!3235491 () Bool)

(assert (=> b!2806614 m!3235491))

(declare-fun m!3235493 () Bool)

(assert (=> b!2806614 m!3235493))

(push 1)

(assert (not b_next!80629))

(assert (not start!271454))

(assert (not b!2806621))

(assert (not b!2806615))

(assert (not b!2806608))

(assert b_and!204785)

(assert (not b_next!80625))

(assert b_and!204777)

(assert (not b!2806619))

(assert (not b!2806618))

(assert (not b!2806617))

(assert (not b!2806611))

(assert b_and!204783)

(assert (not b_next!80621))

(assert (not b_next!80627))

(assert (not b_next!80631))

(assert b_and!204781)

(assert (not b!2806605))

(assert (not b!2806631))

(assert b_and!204775)

(assert (not b!2806609))

(assert (not b!2806606))

(assert (not b!2806607))

(assert (not b!2806614))

(assert (not b!2806612))

(assert (not b_next!80623))

(assert b_and!204779)

(assert (not b!2806610))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80629))

(assert b_and!204781)

(assert b_and!204775)

(assert b_and!204785)

(assert (not b_next!80625))

(assert b_and!204777)

(assert b_and!204783)

(assert (not b_next!80621))

(assert (not b_next!80627))

(assert (not b_next!80631))

(assert (not b_next!80623))

(assert b_and!204779)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!516131 () Bool)

(declare-fun d!814632 () Bool)

(assert (= bs!516131 (and d!814632 b!2806614)))

(declare-fun lambda!103100 () Int)

(assert (=> bs!516131 (= lambda!103100 lambda!103094)))

(declare-fun b!2806741 () Bool)

(declare-fun e!1774546 () Bool)

(assert (=> b!2806741 (= e!1774546 true)))

(declare-fun b!2806740 () Bool)

(declare-fun e!1774545 () Bool)

(assert (=> b!2806740 (= e!1774545 e!1774546)))

(declare-fun b!2806739 () Bool)

(declare-fun e!1774544 () Bool)

(assert (=> b!2806739 (= e!1774544 e!1774545)))

(assert (=> d!814632 e!1774544))

(assert (= b!2806740 b!2806741))

(assert (= b!2806739 b!2806740))

(assert (= (and d!814632 (is-Cons!32726 rules!2540)) b!2806739))

(assert (=> b!2806741 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103100))))

(assert (=> b!2806741 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103100))))

(assert (=> d!814632 true))

(declare-fun lt!1003113 () Bool)

(declare-fun forall!6729 (List!32827 Int) Bool)

(assert (=> d!814632 (= lt!1003113 (forall!6729 (t!229253 l!5055) lambda!103100))))

(declare-fun e!1774542 () Bool)

(assert (=> d!814632 (= lt!1003113 e!1774542)))

(declare-fun res!1169226 () Bool)

(assert (=> d!814632 (=> res!1169226 e!1774542)))

(assert (=> d!814632 (= res!1169226 (not (is-Cons!32727 (t!229253 l!5055))))))

(assert (=> d!814632 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814632 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 l!5055)) lt!1003113)))

(declare-fun b!2806737 () Bool)

(declare-fun e!1774543 () Bool)

(assert (=> b!2806737 (= e!1774542 e!1774543)))

(declare-fun res!1169227 () Bool)

(assert (=> b!2806737 (=> (not res!1169227) (not e!1774543))))

(assert (=> b!2806737 (= res!1169227 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 l!5055))))))

(declare-fun b!2806738 () Bool)

(assert (=> b!2806738 (= e!1774543 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (t!229253 l!5055))))))

(assert (= (and d!814632 (not res!1169226)) b!2806737))

(assert (= (and b!2806737 res!1169227) b!2806738))

(declare-fun m!3235567 () Bool)

(assert (=> d!814632 m!3235567))

(assert (=> d!814632 m!3235487))

(declare-fun m!3235569 () Bool)

(assert (=> b!2806737 m!3235569))

(declare-fun m!3235571 () Bool)

(assert (=> b!2806738 m!3235571))

(assert (=> b!2806614 d!814632))

(declare-fun d!814648 () Bool)

(declare-fun lt!1003118 () Bool)

(declare-fun e!1774552 () Bool)

(assert (=> d!814648 (= lt!1003118 e!1774552)))

(declare-fun res!1169234 () Bool)

(assert (=> d!814648 (=> (not res!1169234) (not e!1774552))))

(declare-datatypes ((IArray!20263 0))(
  ( (IArray!20264 (innerList!10189 List!32827)) )
))
(declare-datatypes ((Conc!10129 0))(
  ( (Node!10129 (left!24706 Conc!10129) (right!25036 Conc!10129) (csize!20488 Int) (cheight!10340 Int)) (Leaf!15429 (xs!13241 IArray!20263) (csize!20489 Int)) (Empty!10129) )
))
(declare-datatypes ((BalanceConc!19872 0))(
  ( (BalanceConc!19873 (c!454716 Conc!10129)) )
))
(declare-fun list!12250 (BalanceConc!19872) List!32827)

(declare-datatypes ((tuple2!33310 0))(
  ( (tuple2!33311 (_1!19748 BalanceConc!19872) (_2!19748 BalanceConc!19868)) )
))
(declare-fun lex!1975 (LexerInterface!4483 List!32826 BalanceConc!19868) tuple2!33310)

(declare-fun print!1694 (LexerInterface!4483 BalanceConc!19872) BalanceConc!19868)

(declare-fun singletonSeq!2115 (Token!9186) BalanceConc!19872)

(assert (=> d!814648 (= res!1169234 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))) (list!12250 (singletonSeq!2115 (h!38147 l!5055)))))))

(declare-fun e!1774551 () Bool)

(assert (=> d!814648 (= lt!1003118 e!1774551)))

(declare-fun res!1169235 () Bool)

(assert (=> d!814648 (=> (not res!1169235) (not e!1774551))))

(declare-fun lt!1003119 () tuple2!33310)

(declare-fun size!25523 (BalanceConc!19872) Int)

(assert (=> d!814648 (= res!1169235 (= (size!25523 (_1!19748 lt!1003119)) 1))))

(assert (=> d!814648 (= lt!1003119 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))))

(assert (=> d!814648 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814648 (= (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 l!5055)) lt!1003118)))

(declare-fun b!2806748 () Bool)

(declare-fun res!1169236 () Bool)

(assert (=> b!2806748 (=> (not res!1169236) (not e!1774551))))

(declare-fun apply!7642 (BalanceConc!19872 Int) Token!9186)

(assert (=> b!2806748 (= res!1169236 (= (apply!7642 (_1!19748 lt!1003119) 0) (h!38147 l!5055)))))

(declare-fun b!2806749 () Bool)

(declare-fun isEmpty!18189 (BalanceConc!19868) Bool)

(assert (=> b!2806749 (= e!1774551 (isEmpty!18189 (_2!19748 lt!1003119)))))

(declare-fun b!2806750 () Bool)

(assert (=> b!2806750 (= e!1774552 (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))))))

(assert (= (and d!814648 res!1169235) b!2806748))

(assert (= (and b!2806748 res!1169236) b!2806749))

(assert (= (and d!814648 res!1169234) b!2806750))

(declare-fun m!3235573 () Bool)

(assert (=> d!814648 m!3235573))

(declare-fun m!3235575 () Bool)

(assert (=> d!814648 m!3235575))

(declare-fun m!3235577 () Bool)

(assert (=> d!814648 m!3235577))

(assert (=> d!814648 m!3235573))

(declare-fun m!3235579 () Bool)

(assert (=> d!814648 m!3235579))

(assert (=> d!814648 m!3235487))

(declare-fun m!3235581 () Bool)

(assert (=> d!814648 m!3235581))

(declare-fun m!3235583 () Bool)

(assert (=> d!814648 m!3235583))

(assert (=> d!814648 m!3235573))

(assert (=> d!814648 m!3235581))

(declare-fun m!3235585 () Bool)

(assert (=> b!2806748 m!3235585))

(declare-fun m!3235587 () Bool)

(assert (=> b!2806749 m!3235587))

(assert (=> b!2806750 m!3235573))

(assert (=> b!2806750 m!3235573))

(assert (=> b!2806750 m!3235581))

(assert (=> b!2806750 m!3235581))

(assert (=> b!2806750 m!3235583))

(declare-fun m!3235589 () Bool)

(assert (=> b!2806750 m!3235589))

(assert (=> b!2806614 d!814648))

(declare-fun d!814650 () Bool)

(declare-fun dynLambda!13704 (Int Token!9186) Bool)

(assert (=> d!814650 (dynLambda!13704 lambda!103094 (h!38147 l!5055))))

(declare-fun lt!1003122 () Unit!46781)

(declare-fun choose!16548 (List!32827 Int Token!9186) Unit!46781)

(assert (=> d!814650 (= lt!1003122 (choose!16548 l!5055 lambda!103094 (h!38147 l!5055)))))

(declare-fun e!1774555 () Bool)

(assert (=> d!814650 e!1774555))

(declare-fun res!1169239 () Bool)

(assert (=> d!814650 (=> (not res!1169239) (not e!1774555))))

(assert (=> d!814650 (= res!1169239 (forall!6729 l!5055 lambda!103094))))

(assert (=> d!814650 (= (forallContained!1066 l!5055 lambda!103094 (h!38147 l!5055)) lt!1003122)))

(declare-fun b!2806753 () Bool)

(assert (=> b!2806753 (= e!1774555 (contains!6042 l!5055 (h!38147 l!5055)))))

(assert (= (and d!814650 res!1169239) b!2806753))

(declare-fun b_lambda!83861 () Bool)

(assert (=> (not b_lambda!83861) (not d!814650)))

(declare-fun m!3235591 () Bool)

(assert (=> d!814650 m!3235591))

(declare-fun m!3235593 () Bool)

(assert (=> d!814650 m!3235593))

(declare-fun m!3235595 () Bool)

(assert (=> d!814650 m!3235595))

(assert (=> b!2806753 m!3235465))

(assert (=> b!2806614 d!814650))

(declare-fun d!814652 () Bool)

(declare-fun lt!1003125 () Bool)

(declare-fun content!4556 (List!32827) (Set Token!9186))

(assert (=> d!814652 (= lt!1003125 (set.member (h!38147 l!5055) (content!4556 l!5055)))))

(declare-fun e!1774561 () Bool)

(assert (=> d!814652 (= lt!1003125 e!1774561)))

(declare-fun res!1169245 () Bool)

(assert (=> d!814652 (=> (not res!1169245) (not e!1774561))))

(assert (=> d!814652 (= res!1169245 (is-Cons!32727 l!5055))))

(assert (=> d!814652 (= (contains!6042 l!5055 (h!38147 l!5055)) lt!1003125)))

(declare-fun b!2806758 () Bool)

(declare-fun e!1774560 () Bool)

(assert (=> b!2806758 (= e!1774561 e!1774560)))

(declare-fun res!1169244 () Bool)

(assert (=> b!2806758 (=> res!1169244 e!1774560)))

(assert (=> b!2806758 (= res!1169244 (= (h!38147 l!5055) (h!38147 l!5055)))))

(declare-fun b!2806759 () Bool)

(assert (=> b!2806759 (= e!1774560 (contains!6042 (t!229253 l!5055) (h!38147 l!5055)))))

(assert (= (and d!814652 res!1169245) b!2806758))

(assert (= (and b!2806758 (not res!1169244)) b!2806759))

(declare-fun m!3235597 () Bool)

(assert (=> d!814652 m!3235597))

(declare-fun m!3235599 () Bool)

(assert (=> d!814652 m!3235599))

(declare-fun m!3235601 () Bool)

(assert (=> b!2806759 m!3235601))

(assert (=> b!2806611 d!814652))

(declare-fun b!2806771 () Bool)

(declare-fun res!1169248 () Bool)

(declare-fun e!1774568 () Bool)

(assert (=> b!2806771 (=> res!1169248 e!1774568)))

(assert (=> b!2806771 (= res!1169248 (not (is-IntegerValue!15344 (value!157333 (h!38147 l!5055)))))))

(declare-fun e!1774569 () Bool)

(assert (=> b!2806771 (= e!1774569 e!1774568)))

(declare-fun b!2806772 () Bool)

(declare-fun e!1774570 () Bool)

(declare-fun inv!16 (TokenValue!5114) Bool)

(assert (=> b!2806772 (= e!1774570 (inv!16 (value!157333 (h!38147 l!5055))))))

(declare-fun b!2806770 () Bool)

(declare-fun inv!15 (TokenValue!5114) Bool)

(assert (=> b!2806770 (= e!1774568 (inv!15 (value!157333 (h!38147 l!5055))))))

(declare-fun d!814654 () Bool)

(declare-fun c!454698 () Bool)

(assert (=> d!814654 (= c!454698 (is-IntegerValue!15342 (value!157333 (h!38147 l!5055))))))

(assert (=> d!814654 (= (inv!21 (value!157333 (h!38147 l!5055))) e!1774570)))

(declare-fun b!2806773 () Bool)

(declare-fun inv!17 (TokenValue!5114) Bool)

(assert (=> b!2806773 (= e!1774569 (inv!17 (value!157333 (h!38147 l!5055))))))

(declare-fun b!2806774 () Bool)

(assert (=> b!2806774 (= e!1774570 e!1774569)))

(declare-fun c!454699 () Bool)

(assert (=> b!2806774 (= c!454699 (is-IntegerValue!15343 (value!157333 (h!38147 l!5055))))))

(assert (= (and d!814654 c!454698) b!2806772))

(assert (= (and d!814654 (not c!454698)) b!2806774))

(assert (= (and b!2806774 c!454699) b!2806773))

(assert (= (and b!2806774 (not c!454699)) b!2806771))

(assert (= (and b!2806771 (not res!1169248)) b!2806770))

(declare-fun m!3235603 () Bool)

(assert (=> b!2806772 m!3235603))

(declare-fun m!3235605 () Bool)

(assert (=> b!2806770 m!3235605))

(declare-fun m!3235607 () Bool)

(assert (=> b!2806773 m!3235607))

(assert (=> b!2806610 d!814654))

(declare-fun d!814656 () Bool)

(declare-fun lt!1003147 () List!32827)

(declare-fun printList!1197 (LexerInterface!4483 List!32827) List!32825)

(declare-fun printWithSeparatorTokenList!73 (LexerInterface!4483 List!32827 Token!9186) List!32825)

(assert (=> d!814656 (= (printList!1197 thiss!19710 lt!1003147) (printWithSeparatorTokenList!73 thiss!19710 l!5055 separatorToken!283))))

(declare-fun e!1774586 () List!32827)

(assert (=> d!814656 (= lt!1003147 e!1774586)))

(declare-fun c!454708 () Bool)

(assert (=> d!814656 (= c!454708 (is-Cons!32727 l!5055))))

(declare-fun e!1774588 () Bool)

(assert (=> d!814656 e!1774588))

(declare-fun res!1169257 () Bool)

(assert (=> d!814656 (=> (not res!1169257) (not e!1774588))))

(assert (=> d!814656 (= res!1169257 (isSeparator!4892 (rule!7320 separatorToken!283)))))

(assert (=> d!814656 (= (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283) lt!1003147)))

(declare-fun b!2806795 () Bool)

(declare-fun res!1169259 () Bool)

(assert (=> b!2806795 (=> (not res!1169259) (not e!1774588))))

(declare-fun e!1774583 () Bool)

(assert (=> b!2806795 (= res!1169259 e!1774583)))

(declare-fun res!1169258 () Bool)

(assert (=> b!2806795 (=> res!1169258 e!1774583)))

(assert (=> b!2806795 (= res!1169258 (not (is-Cons!32727 l!5055)))))

(declare-fun b!2806796 () Bool)

(declare-fun $colon$colon!545 (List!32827 Token!9186) List!32827)

(assert (=> b!2806796 (= e!1774586 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055)))))

(declare-fun lt!1003148 () List!32825)

(declare-fun list!12251 (BalanceConc!19868) List!32825)

(declare-fun charsOf!3037 (Token!9186) BalanceConc!19868)

(assert (=> b!2806796 (= lt!1003148 (list!12251 (charsOf!3037 (h!38147 l!5055))))))

(declare-fun lt!1003144 () List!32825)

(assert (=> b!2806796 (= lt!1003144 (list!12251 (charsOf!3037 separatorToken!283)))))

(declare-fun lt!1003143 () List!32825)

(assert (=> b!2806796 (= lt!1003143 (printList!1197 thiss!19710 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))

(declare-fun lt!1003149 () Unit!46781)

(declare-fun lemmaConcatAssociativity!1653 (List!32825 List!32825 List!32825) Unit!46781)

(assert (=> b!2806796 (= lt!1003149 (lemmaConcatAssociativity!1653 lt!1003148 lt!1003144 lt!1003143))))

(declare-fun ++!8038 (List!32825 List!32825) List!32825)

(assert (=> b!2806796 (= (++!8038 (++!8038 lt!1003148 lt!1003144) lt!1003143) (++!8038 lt!1003148 (++!8038 lt!1003144 lt!1003143)))))

(declare-fun lt!1003142 () Unit!46781)

(assert (=> b!2806796 (= lt!1003142 lt!1003149)))

(declare-fun b!2806797 () Bool)

(declare-fun e!1774584 () List!32825)

(declare-fun lt!1003145 () List!32827)

(assert (=> b!2806797 (= e!1774584 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003145))) (printList!1197 thiss!19710 (t!229253 lt!1003145))))))

(declare-fun e!1774585 () List!32825)

(declare-fun b!2806798 () Bool)

(assert (=> b!2806798 (= e!1774583 (= (printList!1197 thiss!19710 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055))) e!1774585))))

(declare-fun c!454706 () Bool)

(declare-fun lt!1003146 () List!32827)

(assert (=> b!2806798 (= c!454706 (is-Cons!32727 lt!1003146))))

(assert (=> b!2806798 (= lt!1003146 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055)))))

(declare-fun b!2806799 () Bool)

(declare-fun e!1774587 () Bool)

(assert (=> b!2806799 (= e!1774588 e!1774587)))

(declare-fun res!1169260 () Bool)

(assert (=> b!2806799 (=> res!1169260 e!1774587)))

(assert (=> b!2806799 (= res!1169260 (not (is-Cons!32727 l!5055)))))

(declare-fun b!2806800 () Bool)

(assert (=> b!2806800 (= e!1774587 (= (printList!1197 thiss!19710 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)) e!1774584))))

(declare-fun c!454707 () Bool)

(assert (=> b!2806800 (= c!454707 (is-Cons!32727 lt!1003145))))

(assert (=> b!2806800 (= lt!1003145 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283))))

(declare-fun b!2806801 () Bool)

(assert (=> b!2806801 (= e!1774584 Nil!32725)))

(declare-fun b!2806802 () Bool)

(assert (=> b!2806802 (= e!1774585 Nil!32725)))

(declare-fun b!2806803 () Bool)

(assert (=> b!2806803 (= e!1774586 Nil!32727)))

(declare-fun b!2806804 () Bool)

(assert (=> b!2806804 (= e!1774585 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003146))) (printList!1197 thiss!19710 (t!229253 lt!1003146))))))

(assert (= (and d!814656 res!1169257) b!2806795))

(assert (= (and b!2806795 (not res!1169258)) b!2806798))

(assert (= (and b!2806798 c!454706) b!2806804))

(assert (= (and b!2806798 (not c!454706)) b!2806802))

(assert (= (and b!2806795 res!1169259) b!2806799))

(assert (= (and b!2806799 (not res!1169260)) b!2806800))

(assert (= (and b!2806800 c!454707) b!2806797))

(assert (= (and b!2806800 (not c!454707)) b!2806801))

(assert (= (and d!814656 c!454708) b!2806796))

(assert (= (and d!814656 (not c!454708)) b!2806803))

(declare-fun m!3235609 () Bool)

(assert (=> b!2806804 m!3235609))

(assert (=> b!2806804 m!3235609))

(declare-fun m!3235611 () Bool)

(assert (=> b!2806804 m!3235611))

(declare-fun m!3235613 () Bool)

(assert (=> b!2806804 m!3235613))

(assert (=> b!2806804 m!3235611))

(assert (=> b!2806804 m!3235613))

(declare-fun m!3235615 () Bool)

(assert (=> b!2806804 m!3235615))

(declare-fun m!3235617 () Bool)

(assert (=> b!2806797 m!3235617))

(assert (=> b!2806797 m!3235617))

(declare-fun m!3235619 () Bool)

(assert (=> b!2806797 m!3235619))

(declare-fun m!3235621 () Bool)

(assert (=> b!2806797 m!3235621))

(assert (=> b!2806797 m!3235619))

(assert (=> b!2806797 m!3235621))

(declare-fun m!3235623 () Bool)

(assert (=> b!2806797 m!3235623))

(assert (=> b!2806798 m!3235457))

(assert (=> b!2806798 m!3235457))

(declare-fun m!3235625 () Bool)

(assert (=> b!2806798 m!3235625))

(assert (=> b!2806798 m!3235625))

(declare-fun m!3235627 () Bool)

(assert (=> b!2806798 m!3235627))

(assert (=> b!2806798 m!3235627))

(declare-fun m!3235629 () Bool)

(assert (=> b!2806798 m!3235629))

(assert (=> b!2806796 m!3235457))

(assert (=> b!2806796 m!3235625))

(declare-fun m!3235631 () Bool)

(assert (=> b!2806796 m!3235631))

(declare-fun m!3235633 () Bool)

(assert (=> b!2806796 m!3235633))

(declare-fun m!3235635 () Bool)

(assert (=> b!2806796 m!3235635))

(declare-fun m!3235637 () Bool)

(assert (=> b!2806796 m!3235637))

(declare-fun m!3235639 () Bool)

(assert (=> b!2806796 m!3235639))

(declare-fun m!3235641 () Bool)

(assert (=> b!2806796 m!3235641))

(assert (=> b!2806796 m!3235631))

(assert (=> b!2806796 m!3235457))

(assert (=> b!2806796 m!3235637))

(assert (=> b!2806796 m!3235635))

(declare-fun m!3235643 () Bool)

(assert (=> b!2806796 m!3235643))

(declare-fun m!3235645 () Bool)

(assert (=> b!2806796 m!3235645))

(declare-fun m!3235647 () Bool)

(assert (=> b!2806796 m!3235647))

(assert (=> b!2806796 m!3235457))

(declare-fun m!3235649 () Bool)

(assert (=> b!2806796 m!3235649))

(assert (=> b!2806796 m!3235625))

(assert (=> b!2806796 m!3235627))

(assert (=> b!2806796 m!3235645))

(assert (=> b!2806800 m!3235457))

(assert (=> b!2806800 m!3235457))

(assert (=> b!2806800 m!3235625))

(assert (=> b!2806800 m!3235625))

(declare-fun m!3235651 () Bool)

(assert (=> b!2806800 m!3235651))

(declare-fun m!3235653 () Bool)

(assert (=> d!814656 m!3235653))

(declare-fun m!3235655 () Bool)

(assert (=> d!814656 m!3235655))

(assert (=> b!2806621 d!814656))

(declare-fun bs!516132 () Bool)

(declare-fun d!814658 () Bool)

(assert (= bs!516132 (and d!814658 b!2806614)))

(declare-fun lambda!103101 () Int)

(assert (=> bs!516132 (= lambda!103101 lambda!103094)))

(declare-fun bs!516133 () Bool)

(assert (= bs!516133 (and d!814658 d!814632)))

(assert (=> bs!516133 (= lambda!103101 lambda!103100)))

(declare-fun b!2806809 () Bool)

(declare-fun e!1774593 () Bool)

(assert (=> b!2806809 (= e!1774593 true)))

(declare-fun b!2806808 () Bool)

(declare-fun e!1774592 () Bool)

(assert (=> b!2806808 (= e!1774592 e!1774593)))

(declare-fun b!2806807 () Bool)

(declare-fun e!1774591 () Bool)

(assert (=> b!2806807 (= e!1774591 e!1774592)))

(assert (=> d!814658 e!1774591))

(assert (= b!2806808 b!2806809))

(assert (= b!2806807 b!2806808))

(assert (= (and d!814658 (is-Cons!32726 rules!2540)) b!2806807))

(assert (=> b!2806809 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103101))))

(assert (=> b!2806809 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103101))))

(assert (=> d!814658 true))

(declare-fun lt!1003150 () Bool)

(assert (=> d!814658 (= lt!1003150 (forall!6729 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283) lambda!103101))))

(declare-fun e!1774589 () Bool)

(assert (=> d!814658 (= lt!1003150 e!1774589)))

(declare-fun res!1169261 () Bool)

(assert (=> d!814658 (=> res!1169261 e!1774589)))

(assert (=> d!814658 (= res!1169261 (not (is-Cons!32727 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(assert (=> d!814658 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814658 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)) lt!1003150)))

(declare-fun b!2806805 () Bool)

(declare-fun e!1774590 () Bool)

(assert (=> b!2806805 (= e!1774589 e!1774590)))

(declare-fun res!1169262 () Bool)

(assert (=> b!2806805 (=> (not res!1169262) (not e!1774590))))

(assert (=> b!2806805 (= res!1169262 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(declare-fun b!2806806 () Bool)

(assert (=> b!2806806 (= e!1774590 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(assert (= (and d!814658 (not res!1169261)) b!2806805))

(assert (= (and b!2806805 res!1169262) b!2806806))

(assert (=> d!814658 m!3235453))

(declare-fun m!3235657 () Bool)

(assert (=> d!814658 m!3235657))

(assert (=> d!814658 m!3235487))

(declare-fun m!3235659 () Bool)

(assert (=> b!2806805 m!3235659))

(declare-fun m!3235661 () Bool)

(assert (=> b!2806806 m!3235661))

(assert (=> b!2806621 d!814658))

(declare-fun lt!1003156 () List!32827)

(declare-fun d!814660 () Bool)

(assert (=> d!814660 (= (printList!1197 thiss!19710 lt!1003156) (printWithSeparatorTokenList!73 thiss!19710 (t!229253 l!5055) separatorToken!283))))

(declare-fun e!1774597 () List!32827)

(assert (=> d!814660 (= lt!1003156 e!1774597)))

(declare-fun c!454711 () Bool)

(assert (=> d!814660 (= c!454711 (is-Cons!32727 (t!229253 l!5055)))))

(declare-fun e!1774599 () Bool)

(assert (=> d!814660 e!1774599))

(declare-fun res!1169263 () Bool)

(assert (=> d!814660 (=> (not res!1169263) (not e!1774599))))

(assert (=> d!814660 (= res!1169263 (isSeparator!4892 (rule!7320 separatorToken!283)))))

(assert (=> d!814660 (= (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) lt!1003156)))

(declare-fun b!2806810 () Bool)

(declare-fun res!1169265 () Bool)

(assert (=> b!2806810 (=> (not res!1169265) (not e!1774599))))

(declare-fun e!1774594 () Bool)

(assert (=> b!2806810 (= res!1169265 e!1774594)))

(declare-fun res!1169264 () Bool)

(assert (=> b!2806810 (=> res!1169264 e!1774594)))

(assert (=> b!2806810 (= res!1169264 (not (is-Cons!32727 (t!229253 l!5055))))))

(declare-fun b!2806811 () Bool)

(assert (=> b!2806811 (= e!1774597 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055))))))

(declare-fun lt!1003157 () List!32825)

(assert (=> b!2806811 (= lt!1003157 (list!12251 (charsOf!3037 (h!38147 (t!229253 l!5055)))))))

(declare-fun lt!1003153 () List!32825)

(assert (=> b!2806811 (= lt!1003153 (list!12251 (charsOf!3037 separatorToken!283)))))

(declare-fun lt!1003152 () List!32825)

(assert (=> b!2806811 (= lt!1003152 (printList!1197 thiss!19710 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))))

(declare-fun lt!1003158 () Unit!46781)

(assert (=> b!2806811 (= lt!1003158 (lemmaConcatAssociativity!1653 lt!1003157 lt!1003153 lt!1003152))))

(assert (=> b!2806811 (= (++!8038 (++!8038 lt!1003157 lt!1003153) lt!1003152) (++!8038 lt!1003157 (++!8038 lt!1003153 lt!1003152)))))

(declare-fun lt!1003151 () Unit!46781)

(assert (=> b!2806811 (= lt!1003151 lt!1003158)))

(declare-fun b!2806812 () Bool)

(declare-fun e!1774595 () List!32825)

(declare-fun lt!1003154 () List!32827)

(assert (=> b!2806812 (= e!1774595 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003154))) (printList!1197 thiss!19710 (t!229253 lt!1003154))))))

(declare-fun e!1774596 () List!32825)

(declare-fun b!2806813 () Bool)

(assert (=> b!2806813 (= e!1774594 (= (printList!1197 thiss!19710 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055)))) e!1774596))))

(declare-fun c!454709 () Bool)

(declare-fun lt!1003155 () List!32827)

(assert (=> b!2806813 (= c!454709 (is-Cons!32727 lt!1003155))))

(assert (=> b!2806813 (= lt!1003155 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055))))))

(declare-fun b!2806814 () Bool)

(declare-fun e!1774598 () Bool)

(assert (=> b!2806814 (= e!1774599 e!1774598)))

(declare-fun res!1169266 () Bool)

(assert (=> b!2806814 (=> res!1169266 e!1774598)))

(assert (=> b!2806814 (= res!1169266 (not (is-Cons!32727 (t!229253 l!5055))))))

(declare-fun b!2806815 () Bool)

(assert (=> b!2806815 (= e!1774598 (= (printList!1197 thiss!19710 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)) e!1774595))))

(declare-fun c!454710 () Bool)

(assert (=> b!2806815 (= c!454710 (is-Cons!32727 lt!1003154))))

(assert (=> b!2806815 (= lt!1003154 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283))))

(declare-fun b!2806816 () Bool)

(assert (=> b!2806816 (= e!1774595 Nil!32725)))

(declare-fun b!2806817 () Bool)

(assert (=> b!2806817 (= e!1774596 Nil!32725)))

(declare-fun b!2806818 () Bool)

(assert (=> b!2806818 (= e!1774597 Nil!32727)))

(declare-fun b!2806819 () Bool)

(assert (=> b!2806819 (= e!1774596 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003155))) (printList!1197 thiss!19710 (t!229253 lt!1003155))))))

(assert (= (and d!814660 res!1169263) b!2806810))

(assert (= (and b!2806810 (not res!1169264)) b!2806813))

(assert (= (and b!2806813 c!454709) b!2806819))

(assert (= (and b!2806813 (not c!454709)) b!2806817))

(assert (= (and b!2806810 res!1169265) b!2806814))

(assert (= (and b!2806814 (not res!1169266)) b!2806815))

(assert (= (and b!2806815 c!454710) b!2806812))

(assert (= (and b!2806815 (not c!454710)) b!2806816))

(assert (= (and d!814660 c!454711) b!2806811))

(assert (= (and d!814660 (not c!454711)) b!2806818))

(declare-fun m!3235663 () Bool)

(assert (=> b!2806819 m!3235663))

(assert (=> b!2806819 m!3235663))

(declare-fun m!3235665 () Bool)

(assert (=> b!2806819 m!3235665))

(declare-fun m!3235667 () Bool)

(assert (=> b!2806819 m!3235667))

(assert (=> b!2806819 m!3235665))

(assert (=> b!2806819 m!3235667))

(declare-fun m!3235669 () Bool)

(assert (=> b!2806819 m!3235669))

(declare-fun m!3235671 () Bool)

(assert (=> b!2806812 m!3235671))

(assert (=> b!2806812 m!3235671))

(declare-fun m!3235673 () Bool)

(assert (=> b!2806812 m!3235673))

(declare-fun m!3235675 () Bool)

(assert (=> b!2806812 m!3235675))

(assert (=> b!2806812 m!3235673))

(assert (=> b!2806812 m!3235675))

(declare-fun m!3235677 () Bool)

(assert (=> b!2806812 m!3235677))

(declare-fun m!3235679 () Bool)

(assert (=> b!2806813 m!3235679))

(assert (=> b!2806813 m!3235679))

(declare-fun m!3235681 () Bool)

(assert (=> b!2806813 m!3235681))

(assert (=> b!2806813 m!3235681))

(declare-fun m!3235683 () Bool)

(assert (=> b!2806813 m!3235683))

(assert (=> b!2806813 m!3235683))

(declare-fun m!3235685 () Bool)

(assert (=> b!2806813 m!3235685))

(assert (=> b!2806811 m!3235679))

(assert (=> b!2806811 m!3235681))

(declare-fun m!3235687 () Bool)

(assert (=> b!2806811 m!3235687))

(declare-fun m!3235689 () Bool)

(assert (=> b!2806811 m!3235689))

(declare-fun m!3235691 () Bool)

(assert (=> b!2806811 m!3235691))

(declare-fun m!3235693 () Bool)

(assert (=> b!2806811 m!3235693))

(declare-fun m!3235695 () Bool)

(assert (=> b!2806811 m!3235695))

(declare-fun m!3235697 () Bool)

(assert (=> b!2806811 m!3235697))

(assert (=> b!2806811 m!3235687))

(assert (=> b!2806811 m!3235679))

(assert (=> b!2806811 m!3235693))

(assert (=> b!2806811 m!3235691))

(declare-fun m!3235699 () Bool)

(assert (=> b!2806811 m!3235699))

(assert (=> b!2806811 m!3235645))

(assert (=> b!2806811 m!3235647))

(assert (=> b!2806811 m!3235679))

(declare-fun m!3235701 () Bool)

(assert (=> b!2806811 m!3235701))

(assert (=> b!2806811 m!3235681))

(assert (=> b!2806811 m!3235683))

(assert (=> b!2806811 m!3235645))

(assert (=> b!2806815 m!3235679))

(assert (=> b!2806815 m!3235679))

(assert (=> b!2806815 m!3235681))

(assert (=> b!2806815 m!3235681))

(declare-fun m!3235703 () Bool)

(assert (=> b!2806815 m!3235703))

(declare-fun m!3235705 () Bool)

(assert (=> d!814660 m!3235705))

(declare-fun m!3235707 () Bool)

(assert (=> d!814660 m!3235707))

(assert (=> b!2806621 d!814660))

(declare-fun d!814662 () Bool)

(assert (=> d!814662 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))

(declare-fun lt!1003164 () Unit!46781)

(declare-fun choose!16549 (LexerInterface!4483 List!32826 List!32827 Token!9186) Unit!46781)

(assert (=> d!814662 (= lt!1003164 (choose!16549 thiss!19710 rules!2540 (t!229253 l!5055) separatorToken!283))))

(assert (=> d!814662 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814662 (= (withSeparatorTokenListPreservesRulesProduceTokens!101 thiss!19710 rules!2540 (t!229253 l!5055) separatorToken!283) lt!1003164)))

(declare-fun bs!516135 () Bool)

(assert (= bs!516135 d!814662))

(assert (=> bs!516135 m!3235457))

(assert (=> bs!516135 m!3235457))

(assert (=> bs!516135 m!3235459))

(declare-fun m!3235737 () Bool)

(assert (=> bs!516135 m!3235737))

(assert (=> bs!516135 m!3235487))

(assert (=> b!2806621 d!814662))

(declare-fun bs!516136 () Bool)

(declare-fun d!814678 () Bool)

(assert (= bs!516136 (and d!814678 b!2806614)))

(declare-fun lambda!103105 () Int)

(assert (=> bs!516136 (= lambda!103105 lambda!103094)))

(declare-fun bs!516137 () Bool)

(assert (= bs!516137 (and d!814678 d!814632)))

(assert (=> bs!516137 (= lambda!103105 lambda!103100)))

(declare-fun bs!516138 () Bool)

(assert (= bs!516138 (and d!814678 d!814658)))

(assert (=> bs!516138 (= lambda!103105 lambda!103101)))

(declare-fun b!2806845 () Bool)

(declare-fun e!1774622 () Bool)

(assert (=> b!2806845 (= e!1774622 true)))

(declare-fun b!2806844 () Bool)

(declare-fun e!1774621 () Bool)

(assert (=> b!2806844 (= e!1774621 e!1774622)))

(declare-fun b!2806843 () Bool)

(declare-fun e!1774620 () Bool)

(assert (=> b!2806843 (= e!1774620 e!1774621)))

(assert (=> d!814678 e!1774620))

(assert (= b!2806844 b!2806845))

(assert (= b!2806843 b!2806844))

(assert (= (and d!814678 (is-Cons!32726 rules!2540)) b!2806843))

(assert (=> b!2806845 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103105))))

(assert (=> b!2806845 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103105))))

(assert (=> d!814678 true))

(declare-fun lt!1003165 () Bool)

(assert (=> d!814678 (= lt!1003165 (forall!6729 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) lambda!103105))))

(declare-fun e!1774618 () Bool)

(assert (=> d!814678 (= lt!1003165 e!1774618)))

(declare-fun res!1169280 () Bool)

(assert (=> d!814678 (=> res!1169280 e!1774618)))

(assert (=> d!814678 (= res!1169280 (not (is-Cons!32727 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(assert (=> d!814678 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814678 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)) lt!1003165)))

(declare-fun b!2806841 () Bool)

(declare-fun e!1774619 () Bool)

(assert (=> b!2806841 (= e!1774618 e!1774619)))

(declare-fun res!1169281 () Bool)

(assert (=> b!2806841 (=> (not res!1169281) (not e!1774619))))

(assert (=> b!2806841 (= res!1169281 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(declare-fun b!2806842 () Bool)

(assert (=> b!2806842 (= e!1774619 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(assert (= (and d!814678 (not res!1169280)) b!2806841))

(assert (= (and b!2806841 res!1169281) b!2806842))

(assert (=> d!814678 m!3235457))

(declare-fun m!3235739 () Bool)

(assert (=> d!814678 m!3235739))

(assert (=> d!814678 m!3235487))

(declare-fun m!3235741 () Bool)

(assert (=> b!2806841 m!3235741))

(declare-fun m!3235743 () Bool)

(assert (=> b!2806842 m!3235743))

(assert (=> b!2806621 d!814678))

(declare-fun d!814680 () Bool)

(assert (=> d!814680 (= (inv!44400 (tag!5396 (rule!7320 (h!38147 l!5055)))) (= (mod (str.len (value!157332 (tag!5396 (rule!7320 (h!38147 l!5055))))) 2) 0))))

(assert (=> b!2806609 d!814680))

(declare-fun d!814682 () Bool)

(declare-fun res!1169284 () Bool)

(declare-fun e!1774625 () Bool)

(assert (=> d!814682 (=> (not res!1169284) (not e!1774625))))

(declare-fun semiInverseModEq!2019 (Int Int) Bool)

(assert (=> d!814682 (= res!1169284 (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))))))

(assert (=> d!814682 (= (inv!44403 (transformation!4892 (rule!7320 (h!38147 l!5055)))) e!1774625)))

(declare-fun b!2806848 () Bool)

(declare-fun equivClasses!1920 (Int Int) Bool)

(assert (=> b!2806848 (= e!1774625 (equivClasses!1920 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))))))

(assert (= (and d!814682 res!1169284) b!2806848))

(declare-fun m!3235745 () Bool)

(assert (=> d!814682 m!3235745))

(declare-fun m!3235747 () Bool)

(assert (=> b!2806848 m!3235747))

(assert (=> b!2806609 d!814682))

(declare-fun d!814684 () Bool)

(assert (=> d!814684 (= (inv!44400 (tag!5396 (rule!7320 separatorToken!283))) (= (mod (str.len (value!157332 (tag!5396 (rule!7320 separatorToken!283)))) 2) 0))))

(assert (=> b!2806608 d!814684))

(declare-fun d!814686 () Bool)

(declare-fun res!1169285 () Bool)

(declare-fun e!1774626 () Bool)

(assert (=> d!814686 (=> (not res!1169285) (not e!1774626))))

(assert (=> d!814686 (= res!1169285 (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))))))

(assert (=> d!814686 (= (inv!44403 (transformation!4892 (rule!7320 separatorToken!283))) e!1774626)))

(declare-fun b!2806849 () Bool)

(assert (=> b!2806849 (= e!1774626 (equivClasses!1920 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))))))

(assert (= (and d!814686 res!1169285) b!2806849))

(declare-fun m!3235749 () Bool)

(assert (=> d!814686 m!3235749))

(declare-fun m!3235751 () Bool)

(assert (=> b!2806849 m!3235751))

(assert (=> b!2806608 d!814686))

(declare-fun d!814688 () Bool)

(assert (=> d!814688 (= (inv!44400 (tag!5396 (h!38146 rules!2540))) (= (mod (str.len (value!157332 (tag!5396 (h!38146 rules!2540)))) 2) 0))))

(assert (=> b!2806619 d!814688))

(declare-fun d!814690 () Bool)

(declare-fun res!1169286 () Bool)

(declare-fun e!1774627 () Bool)

(assert (=> d!814690 (=> (not res!1169286) (not e!1774627))))

(assert (=> d!814690 (= res!1169286 (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toValue!6890 (transformation!4892 (h!38146 rules!2540)))))))

(assert (=> d!814690 (= (inv!44403 (transformation!4892 (h!38146 rules!2540))) e!1774627)))

(declare-fun b!2806850 () Bool)

(assert (=> b!2806850 (= e!1774627 (equivClasses!1920 (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toValue!6890 (transformation!4892 (h!38146 rules!2540)))))))

(assert (= (and d!814690 res!1169286) b!2806850))

(declare-fun m!3235753 () Bool)

(assert (=> d!814690 m!3235753))

(declare-fun m!3235755 () Bool)

(assert (=> b!2806850 m!3235755))

(assert (=> b!2806619 d!814690))

(declare-fun d!814692 () Bool)

(declare-fun res!1169291 () Bool)

(declare-fun e!1774630 () Bool)

(assert (=> d!814692 (=> (not res!1169291) (not e!1774630))))

(declare-fun isEmpty!18190 (List!32825) Bool)

(assert (=> d!814692 (= res!1169291 (not (isEmpty!18190 (originalCharacters!5624 (h!38147 l!5055)))))))

(assert (=> d!814692 (= (inv!44404 (h!38147 l!5055)) e!1774630)))

(declare-fun b!2806855 () Bool)

(declare-fun res!1169292 () Bool)

(assert (=> b!2806855 (=> (not res!1169292) (not e!1774630))))

(declare-fun dynLambda!13705 (Int TokenValue!5114) BalanceConc!19868)

(assert (=> b!2806855 (= res!1169292 (= (originalCharacters!5624 (h!38147 l!5055)) (list!12251 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(declare-fun b!2806856 () Bool)

(declare-fun size!25524 (List!32825) Int)

(assert (=> b!2806856 (= e!1774630 (= (size!25521 (h!38147 l!5055)) (size!25524 (originalCharacters!5624 (h!38147 l!5055)))))))

(assert (= (and d!814692 res!1169291) b!2806855))

(assert (= (and b!2806855 res!1169292) b!2806856))

(declare-fun b_lambda!83865 () Bool)

(assert (=> (not b_lambda!83865) (not b!2806855)))

(declare-fun t!229278 () Bool)

(declare-fun tb!153185 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229278) tb!153185))

(declare-fun b!2806861 () Bool)

(declare-fun e!1774633 () Bool)

(declare-fun tp!895677 () Bool)

(declare-fun inv!44407 (Conc!10127) Bool)

(assert (=> b!2806861 (= e!1774633 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))) tp!895677))))

(declare-fun result!190382 () Bool)

(declare-fun inv!44408 (BalanceConc!19868) Bool)

(assert (=> tb!153185 (= result!190382 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))) e!1774633))))

(assert (= tb!153185 b!2806861))

(declare-fun m!3235757 () Bool)

(assert (=> b!2806861 m!3235757))

(declare-fun m!3235759 () Bool)

(assert (=> tb!153185 m!3235759))

(assert (=> b!2806855 t!229278))

(declare-fun b_and!204811 () Bool)

(assert (= b_and!204777 (and (=> t!229278 result!190382) b_and!204811)))

(declare-fun tb!153187 () Bool)

(declare-fun t!229280 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229280) tb!153187))

(declare-fun result!190386 () Bool)

(assert (= result!190386 result!190382))

(assert (=> b!2806855 t!229280))

(declare-fun b_and!204813 () Bool)

(assert (= b_and!204781 (and (=> t!229280 result!190386) b_and!204813)))

(declare-fun t!229282 () Bool)

(declare-fun tb!153189 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229282) tb!153189))

(declare-fun result!190388 () Bool)

(assert (= result!190388 result!190382))

(assert (=> b!2806855 t!229282))

(declare-fun b_and!204815 () Bool)

(assert (= b_and!204785 (and (=> t!229282 result!190388) b_and!204815)))

(declare-fun m!3235761 () Bool)

(assert (=> d!814692 m!3235761))

(declare-fun m!3235763 () Bool)

(assert (=> b!2806855 m!3235763))

(assert (=> b!2806855 m!3235763))

(declare-fun m!3235765 () Bool)

(assert (=> b!2806855 m!3235765))

(declare-fun m!3235767 () Bool)

(assert (=> b!2806856 m!3235767))

(assert (=> b!2806618 d!814692))

(declare-fun bs!516139 () Bool)

(declare-fun d!814694 () Bool)

(assert (= bs!516139 (and d!814694 b!2806614)))

(declare-fun lambda!103106 () Int)

(assert (=> bs!516139 (= lambda!103106 lambda!103094)))

(declare-fun bs!516140 () Bool)

(assert (= bs!516140 (and d!814694 d!814632)))

(assert (=> bs!516140 (= lambda!103106 lambda!103100)))

(declare-fun bs!516141 () Bool)

(assert (= bs!516141 (and d!814694 d!814658)))

(assert (=> bs!516141 (= lambda!103106 lambda!103101)))

(declare-fun bs!516142 () Bool)

(assert (= bs!516142 (and d!814694 d!814678)))

(assert (=> bs!516142 (= lambda!103106 lambda!103105)))

(declare-fun b!2806866 () Bool)

(declare-fun e!1774638 () Bool)

(assert (=> b!2806866 (= e!1774638 true)))

(declare-fun b!2806865 () Bool)

(declare-fun e!1774637 () Bool)

(assert (=> b!2806865 (= e!1774637 e!1774638)))

(declare-fun b!2806864 () Bool)

(declare-fun e!1774636 () Bool)

(assert (=> b!2806864 (= e!1774636 e!1774637)))

(assert (=> d!814694 e!1774636))

(assert (= b!2806865 b!2806866))

(assert (= b!2806864 b!2806865))

(assert (= (and d!814694 (is-Cons!32726 rules!2540)) b!2806864))

(assert (=> b!2806866 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103106))))

(assert (=> b!2806866 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103106))))

(assert (=> d!814694 true))

(declare-fun lt!1003166 () Bool)

(assert (=> d!814694 (= lt!1003166 (forall!6729 l!5055 lambda!103106))))

(declare-fun e!1774634 () Bool)

(assert (=> d!814694 (= lt!1003166 e!1774634)))

(declare-fun res!1169293 () Bool)

(assert (=> d!814694 (=> res!1169293 e!1774634)))

(assert (=> d!814694 (= res!1169293 (not (is-Cons!32727 l!5055)))))

(assert (=> d!814694 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814694 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 l!5055) lt!1003166)))

(declare-fun b!2806862 () Bool)

(declare-fun e!1774635 () Bool)

(assert (=> b!2806862 (= e!1774634 e!1774635)))

(declare-fun res!1169294 () Bool)

(assert (=> b!2806862 (=> (not res!1169294) (not e!1774635))))

(assert (=> b!2806862 (= res!1169294 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 l!5055)))))

(declare-fun b!2806863 () Bool)

(assert (=> b!2806863 (= e!1774635 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 l!5055)))))

(assert (= (and d!814694 (not res!1169293)) b!2806862))

(assert (= (and b!2806862 res!1169294) b!2806863))

(declare-fun m!3235769 () Bool)

(assert (=> d!814694 m!3235769))

(assert (=> d!814694 m!3235487))

(assert (=> b!2806862 m!3235491))

(assert (=> b!2806863 m!3235489))

(assert (=> b!2806607 d!814694))

(declare-fun d!814696 () Bool)

(declare-fun lt!1003167 () Bool)

(declare-fun e!1774640 () Bool)

(assert (=> d!814696 (= lt!1003167 e!1774640)))

(declare-fun res!1169295 () Bool)

(assert (=> d!814696 (=> (not res!1169295) (not e!1774640))))

(assert (=> d!814696 (= res!1169295 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))) (list!12250 (singletonSeq!2115 separatorToken!283))))))

(declare-fun e!1774639 () Bool)

(assert (=> d!814696 (= lt!1003167 e!1774639)))

(declare-fun res!1169296 () Bool)

(assert (=> d!814696 (=> (not res!1169296) (not e!1774639))))

(declare-fun lt!1003168 () tuple2!33310)

(assert (=> d!814696 (= res!1169296 (= (size!25523 (_1!19748 lt!1003168)) 1))))

(assert (=> d!814696 (= lt!1003168 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))))

(assert (=> d!814696 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814696 (= (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 separatorToken!283) lt!1003167)))

(declare-fun b!2806867 () Bool)

(declare-fun res!1169297 () Bool)

(assert (=> b!2806867 (=> (not res!1169297) (not e!1774639))))

(assert (=> b!2806867 (= res!1169297 (= (apply!7642 (_1!19748 lt!1003168) 0) separatorToken!283))))

(declare-fun b!2806868 () Bool)

(assert (=> b!2806868 (= e!1774639 (isEmpty!18189 (_2!19748 lt!1003168)))))

(declare-fun b!2806869 () Bool)

(assert (=> b!2806869 (= e!1774640 (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))))))

(assert (= (and d!814696 res!1169296) b!2806867))

(assert (= (and b!2806867 res!1169297) b!2806868))

(assert (= (and d!814696 res!1169295) b!2806869))

(declare-fun m!3235771 () Bool)

(assert (=> d!814696 m!3235771))

(declare-fun m!3235773 () Bool)

(assert (=> d!814696 m!3235773))

(declare-fun m!3235775 () Bool)

(assert (=> d!814696 m!3235775))

(assert (=> d!814696 m!3235771))

(declare-fun m!3235777 () Bool)

(assert (=> d!814696 m!3235777))

(assert (=> d!814696 m!3235487))

(declare-fun m!3235779 () Bool)

(assert (=> d!814696 m!3235779))

(declare-fun m!3235781 () Bool)

(assert (=> d!814696 m!3235781))

(assert (=> d!814696 m!3235771))

(assert (=> d!814696 m!3235779))

(declare-fun m!3235783 () Bool)

(assert (=> b!2806867 m!3235783))

(declare-fun m!3235785 () Bool)

(assert (=> b!2806868 m!3235785))

(assert (=> b!2806869 m!3235771))

(assert (=> b!2806869 m!3235771))

(assert (=> b!2806869 m!3235779))

(assert (=> b!2806869 m!3235779))

(assert (=> b!2806869 m!3235781))

(declare-fun m!3235787 () Bool)

(assert (=> b!2806869 m!3235787))

(assert (=> b!2806606 d!814696))

(declare-fun d!814698 () Bool)

(declare-fun res!1169300 () Bool)

(declare-fun e!1774643 () Bool)

(assert (=> d!814698 (=> (not res!1169300) (not e!1774643))))

(declare-fun rulesValid!1807 (LexerInterface!4483 List!32826) Bool)

(assert (=> d!814698 (= res!1169300 (rulesValid!1807 thiss!19710 rules!2540))))

(assert (=> d!814698 (= (rulesInvariant!3923 thiss!19710 rules!2540) e!1774643)))

(declare-fun b!2806872 () Bool)

(declare-datatypes ((List!32832 0))(
  ( (Nil!32732) (Cons!32732 (h!38152 String!35908) (t!229298 List!32832)) )
))
(declare-fun noDuplicateTag!1803 (LexerInterface!4483 List!32826 List!32832) Bool)

(assert (=> b!2806872 (= e!1774643 (noDuplicateTag!1803 thiss!19710 rules!2540 Nil!32732))))

(assert (= (and d!814698 res!1169300) b!2806872))

(declare-fun m!3235789 () Bool)

(assert (=> d!814698 m!3235789))

(declare-fun m!3235791 () Bool)

(assert (=> b!2806872 m!3235791))

(assert (=> b!2806617 d!814698))

(declare-fun d!814700 () Bool)

(declare-fun res!1169301 () Bool)

(declare-fun e!1774644 () Bool)

(assert (=> d!814700 (=> (not res!1169301) (not e!1774644))))

(assert (=> d!814700 (= res!1169301 (not (isEmpty!18190 (originalCharacters!5624 separatorToken!283))))))

(assert (=> d!814700 (= (inv!44404 separatorToken!283) e!1774644)))

(declare-fun b!2806873 () Bool)

(declare-fun res!1169302 () Bool)

(assert (=> b!2806873 (=> (not res!1169302) (not e!1774644))))

(assert (=> b!2806873 (= res!1169302 (= (originalCharacters!5624 separatorToken!283) (list!12251 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(declare-fun b!2806874 () Bool)

(assert (=> b!2806874 (= e!1774644 (= (size!25521 separatorToken!283) (size!25524 (originalCharacters!5624 separatorToken!283))))))

(assert (= (and d!814700 res!1169301) b!2806873))

(assert (= (and b!2806873 res!1169302) b!2806874))

(declare-fun b_lambda!83867 () Bool)

(assert (=> (not b_lambda!83867) (not b!2806873)))

(declare-fun tb!153191 () Bool)

(declare-fun t!229284 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229284) tb!153191))

(declare-fun b!2806875 () Bool)

(declare-fun e!1774645 () Bool)

(declare-fun tp!895678 () Bool)

(assert (=> b!2806875 (= e!1774645 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))) tp!895678))))

(declare-fun result!190390 () Bool)

(assert (=> tb!153191 (= result!190390 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))) e!1774645))))

(assert (= tb!153191 b!2806875))

(declare-fun m!3235793 () Bool)

(assert (=> b!2806875 m!3235793))

(declare-fun m!3235795 () Bool)

(assert (=> tb!153191 m!3235795))

(assert (=> b!2806873 t!229284))

(declare-fun b_and!204817 () Bool)

(assert (= b_and!204811 (and (=> t!229284 result!190390) b_and!204817)))

(declare-fun t!229286 () Bool)

(declare-fun tb!153193 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229286) tb!153193))

(declare-fun result!190392 () Bool)

(assert (= result!190392 result!190390))

(assert (=> b!2806873 t!229286))

(declare-fun b_and!204819 () Bool)

(assert (= b_and!204813 (and (=> t!229286 result!190392) b_and!204819)))

(declare-fun t!229288 () Bool)

(declare-fun tb!153195 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229288) tb!153195))

(declare-fun result!190394 () Bool)

(assert (= result!190394 result!190390))

(assert (=> b!2806873 t!229288))

(declare-fun b_and!204821 () Bool)

(assert (= b_and!204815 (and (=> t!229288 result!190394) b_and!204821)))

(declare-fun m!3235797 () Bool)

(assert (=> d!814700 m!3235797))

(declare-fun m!3235799 () Bool)

(assert (=> b!2806873 m!3235799))

(assert (=> b!2806873 m!3235799))

(declare-fun m!3235801 () Bool)

(assert (=> b!2806873 m!3235801))

(declare-fun m!3235803 () Bool)

(assert (=> b!2806874 m!3235803))

(assert (=> start!271454 d!814700))

(declare-fun d!814702 () Bool)

(assert (=> d!814702 (= (isEmpty!18187 rules!2540) (is-Nil!32726 rules!2540))))

(assert (=> b!2806605 d!814702))

(declare-fun b!2806877 () Bool)

(declare-fun res!1169303 () Bool)

(declare-fun e!1774646 () Bool)

(assert (=> b!2806877 (=> res!1169303 e!1774646)))

(assert (=> b!2806877 (= res!1169303 (not (is-IntegerValue!15344 (value!157333 separatorToken!283))))))

(declare-fun e!1774647 () Bool)

(assert (=> b!2806877 (= e!1774647 e!1774646)))

(declare-fun b!2806878 () Bool)

(declare-fun e!1774648 () Bool)

(assert (=> b!2806878 (= e!1774648 (inv!16 (value!157333 separatorToken!283)))))

(declare-fun b!2806876 () Bool)

(assert (=> b!2806876 (= e!1774646 (inv!15 (value!157333 separatorToken!283)))))

(declare-fun d!814704 () Bool)

(declare-fun c!454714 () Bool)

(assert (=> d!814704 (= c!454714 (is-IntegerValue!15342 (value!157333 separatorToken!283)))))

(assert (=> d!814704 (= (inv!21 (value!157333 separatorToken!283)) e!1774648)))

(declare-fun b!2806879 () Bool)

(assert (=> b!2806879 (= e!1774647 (inv!17 (value!157333 separatorToken!283)))))

(declare-fun b!2806880 () Bool)

(assert (=> b!2806880 (= e!1774648 e!1774647)))

(declare-fun c!454715 () Bool)

(assert (=> b!2806880 (= c!454715 (is-IntegerValue!15343 (value!157333 separatorToken!283)))))

(assert (= (and d!814704 c!454714) b!2806878))

(assert (= (and d!814704 (not c!454714)) b!2806880))

(assert (= (and b!2806880 c!454715) b!2806879))

(assert (= (and b!2806880 (not c!454715)) b!2806877))

(assert (= (and b!2806877 (not res!1169303)) b!2806876))

(declare-fun m!3235805 () Bool)

(assert (=> b!2806878 m!3235805))

(declare-fun m!3235807 () Bool)

(assert (=> b!2806876 m!3235807))

(declare-fun m!3235809 () Bool)

(assert (=> b!2806879 m!3235809))

(assert (=> b!2806615 d!814704))

(declare-fun b!2806891 () Bool)

(declare-fun b_free!79941 () Bool)

(declare-fun b_next!80645 () Bool)

(assert (=> b!2806891 (= b_free!79941 (not b_next!80645))))

(declare-fun tp!895688 () Bool)

(declare-fun b_and!204823 () Bool)

(assert (=> b!2806891 (= tp!895688 b_and!204823)))

(declare-fun b_free!79943 () Bool)

(declare-fun b_next!80647 () Bool)

(assert (=> b!2806891 (= b_free!79943 (not b_next!80647))))

(declare-fun tb!153197 () Bool)

(declare-fun t!229290 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229290) tb!153197))

(declare-fun result!190398 () Bool)

(assert (= result!190398 result!190382))

(assert (=> b!2806855 t!229290))

(declare-fun tb!153199 () Bool)

(declare-fun t!229292 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229292) tb!153199))

(declare-fun result!190400 () Bool)

(assert (= result!190400 result!190390))

(assert (=> b!2806873 t!229292))

(declare-fun tp!895689 () Bool)

(declare-fun b_and!204825 () Bool)

(assert (=> b!2806891 (= tp!895689 (and (=> t!229290 result!190398) (=> t!229292 result!190400) b_and!204825))))

(declare-fun e!1774658 () Bool)

(assert (=> b!2806891 (= e!1774658 (and tp!895688 tp!895689))))

(declare-fun e!1774659 () Bool)

(declare-fun tp!895687 () Bool)

(declare-fun b!2806890 () Bool)

(assert (=> b!2806890 (= e!1774659 (and tp!895687 (inv!44400 (tag!5396 (h!38146 (t!229252 rules!2540)))) (inv!44403 (transformation!4892 (h!38146 (t!229252 rules!2540)))) e!1774658))))

(declare-fun b!2806889 () Bool)

(declare-fun e!1774660 () Bool)

(declare-fun tp!895690 () Bool)

(assert (=> b!2806889 (= e!1774660 (and e!1774659 tp!895690))))

(assert (=> b!2806612 (= tp!895619 e!1774660)))

(assert (= b!2806890 b!2806891))

(assert (= b!2806889 b!2806890))

(assert (= (and b!2806612 (is-Cons!32726 (t!229252 rules!2540))) b!2806889))

(declare-fun m!3235811 () Bool)

(assert (=> b!2806890 m!3235811))

(declare-fun m!3235813 () Bool)

(assert (=> b!2806890 m!3235813))

(declare-fun b!2806894 () Bool)

(declare-fun e!1774663 () Bool)

(assert (=> b!2806894 (= e!1774663 true)))

(declare-fun b!2806893 () Bool)

(declare-fun e!1774662 () Bool)

(assert (=> b!2806893 (= e!1774662 e!1774663)))

(declare-fun b!2806892 () Bool)

(declare-fun e!1774661 () Bool)

(assert (=> b!2806892 (= e!1774661 e!1774662)))

(assert (=> b!2806631 e!1774661))

(assert (= b!2806893 b!2806894))

(assert (= b!2806892 b!2806893))

(assert (= (and b!2806631 (is-Cons!32726 (t!229252 rules!2540))) b!2806892))

(assert (=> b!2806894 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103094))))

(assert (=> b!2806894 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103094))))

(declare-fun b!2806899 () Bool)

(declare-fun e!1774666 () Bool)

(declare-fun tp_is_empty!14305 () Bool)

(declare-fun tp!895693 () Bool)

(assert (=> b!2806899 (= e!1774666 (and tp_is_empty!14305 tp!895693))))

(assert (=> b!2806610 (= tp!895621 e!1774666)))

(assert (= (and b!2806610 (is-Cons!32725 (originalCharacters!5624 (h!38147 l!5055)))) b!2806899))

(declare-fun b!2806911 () Bool)

(declare-fun e!1774669 () Bool)

(declare-fun tp!895705 () Bool)

(declare-fun tp!895707 () Bool)

(assert (=> b!2806911 (= e!1774669 (and tp!895705 tp!895707))))

(declare-fun b!2806912 () Bool)

(declare-fun tp!895708 () Bool)

(assert (=> b!2806912 (= e!1774669 tp!895708)))

(assert (=> b!2806609 (= tp!895627 e!1774669)))

(declare-fun b!2806910 () Bool)

(assert (=> b!2806910 (= e!1774669 tp_is_empty!14305)))

(declare-fun b!2806913 () Bool)

(declare-fun tp!895704 () Bool)

(declare-fun tp!895706 () Bool)

(assert (=> b!2806913 (= e!1774669 (and tp!895704 tp!895706))))

(assert (= (and b!2806609 (is-ElementMatch!8262 (regex!4892 (rule!7320 (h!38147 l!5055))))) b!2806910))

(assert (= (and b!2806609 (is-Concat!13377 (regex!4892 (rule!7320 (h!38147 l!5055))))) b!2806911))

(assert (= (and b!2806609 (is-Star!8262 (regex!4892 (rule!7320 (h!38147 l!5055))))) b!2806912))

(assert (= (and b!2806609 (is-Union!8262 (regex!4892 (rule!7320 (h!38147 l!5055))))) b!2806913))

(declare-fun b!2806915 () Bool)

(declare-fun e!1774670 () Bool)

(declare-fun tp!895710 () Bool)

(declare-fun tp!895712 () Bool)

(assert (=> b!2806915 (= e!1774670 (and tp!895710 tp!895712))))

(declare-fun b!2806916 () Bool)

(declare-fun tp!895713 () Bool)

(assert (=> b!2806916 (= e!1774670 tp!895713)))

(assert (=> b!2806608 (= tp!895629 e!1774670)))

(declare-fun b!2806914 () Bool)

(assert (=> b!2806914 (= e!1774670 tp_is_empty!14305)))

(declare-fun b!2806917 () Bool)

(declare-fun tp!895709 () Bool)

(declare-fun tp!895711 () Bool)

(assert (=> b!2806917 (= e!1774670 (and tp!895709 tp!895711))))

(assert (= (and b!2806608 (is-ElementMatch!8262 (regex!4892 (rule!7320 separatorToken!283)))) b!2806914))

(assert (= (and b!2806608 (is-Concat!13377 (regex!4892 (rule!7320 separatorToken!283)))) b!2806915))

(assert (= (and b!2806608 (is-Star!8262 (regex!4892 (rule!7320 separatorToken!283)))) b!2806916))

(assert (= (and b!2806608 (is-Union!8262 (regex!4892 (rule!7320 separatorToken!283)))) b!2806917))

(declare-fun b!2806919 () Bool)

(declare-fun e!1774671 () Bool)

(declare-fun tp!895715 () Bool)

(declare-fun tp!895717 () Bool)

(assert (=> b!2806919 (= e!1774671 (and tp!895715 tp!895717))))

(declare-fun b!2806920 () Bool)

(declare-fun tp!895718 () Bool)

(assert (=> b!2806920 (= e!1774671 tp!895718)))

(assert (=> b!2806619 (= tp!895623 e!1774671)))

(declare-fun b!2806918 () Bool)

(assert (=> b!2806918 (= e!1774671 tp_is_empty!14305)))

(declare-fun b!2806921 () Bool)

(declare-fun tp!895714 () Bool)

(declare-fun tp!895716 () Bool)

(assert (=> b!2806921 (= e!1774671 (and tp!895714 tp!895716))))

(assert (= (and b!2806619 (is-ElementMatch!8262 (regex!4892 (h!38146 rules!2540)))) b!2806918))

(assert (= (and b!2806619 (is-Concat!13377 (regex!4892 (h!38146 rules!2540)))) b!2806919))

(assert (= (and b!2806619 (is-Star!8262 (regex!4892 (h!38146 rules!2540)))) b!2806920))

(assert (= (and b!2806619 (is-Union!8262 (regex!4892 (h!38146 rules!2540)))) b!2806921))

(declare-fun b!2806935 () Bool)

(declare-fun b_free!79945 () Bool)

(declare-fun b_next!80649 () Bool)

(assert (=> b!2806935 (= b_free!79945 (not b_next!80649))))

(declare-fun tp!895733 () Bool)

(declare-fun b_and!204827 () Bool)

(assert (=> b!2806935 (= tp!895733 b_and!204827)))

(declare-fun b_free!79947 () Bool)

(declare-fun b_next!80651 () Bool)

(assert (=> b!2806935 (= b_free!79947 (not b_next!80651))))

(declare-fun t!229294 () Bool)

(declare-fun tb!153201 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229294) tb!153201))

(declare-fun result!190408 () Bool)

(assert (= result!190408 result!190382))

(assert (=> b!2806855 t!229294))

(declare-fun tb!153203 () Bool)

(declare-fun t!229296 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229296) tb!153203))

(declare-fun result!190410 () Bool)

(assert (= result!190410 result!190390))

(assert (=> b!2806873 t!229296))

(declare-fun b_and!204829 () Bool)

(declare-fun tp!895732 () Bool)

(assert (=> b!2806935 (= tp!895732 (and (=> t!229294 result!190408) (=> t!229296 result!190410) b_and!204829))))

(declare-fun tp!895729 () Bool)

(declare-fun b!2806932 () Bool)

(declare-fun e!1774684 () Bool)

(declare-fun e!1774688 () Bool)

(assert (=> b!2806932 (= e!1774684 (and (inv!44404 (h!38147 (t!229253 l!5055))) e!1774688 tp!895729))))

(declare-fun e!1774689 () Bool)

(assert (=> b!2806935 (= e!1774689 (and tp!895733 tp!895732))))

(declare-fun e!1774685 () Bool)

(declare-fun tp!895731 () Bool)

(declare-fun b!2806934 () Bool)

(assert (=> b!2806934 (= e!1774685 (and tp!895731 (inv!44400 (tag!5396 (rule!7320 (h!38147 (t!229253 l!5055))))) (inv!44403 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) e!1774689))))

(assert (=> b!2806618 (= tp!895620 e!1774684)))

(declare-fun b!2806933 () Bool)

(declare-fun tp!895730 () Bool)

(assert (=> b!2806933 (= e!1774688 (and (inv!21 (value!157333 (h!38147 (t!229253 l!5055)))) e!1774685 tp!895730))))

(assert (= b!2806934 b!2806935))

(assert (= b!2806933 b!2806934))

(assert (= b!2806932 b!2806933))

(assert (= (and b!2806618 (is-Cons!32727 (t!229253 l!5055))) b!2806932))

(declare-fun m!3235815 () Bool)

(assert (=> b!2806932 m!3235815))

(declare-fun m!3235817 () Bool)

(assert (=> b!2806934 m!3235817))

(declare-fun m!3235819 () Bool)

(assert (=> b!2806934 m!3235819))

(declare-fun m!3235821 () Bool)

(assert (=> b!2806933 m!3235821))

(declare-fun b!2806936 () Bool)

(declare-fun e!1774690 () Bool)

(declare-fun tp!895734 () Bool)

(assert (=> b!2806936 (= e!1774690 (and tp_is_empty!14305 tp!895734))))

(assert (=> b!2806615 (= tp!895622 e!1774690)))

(assert (= (and b!2806615 (is-Cons!32725 (originalCharacters!5624 separatorToken!283))) b!2806936))

(declare-fun b_lambda!83869 () Bool)

(assert (= b_lambda!83865 (or (and b!2806935 b_free!79947 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806613 b_free!79919) (and b!2806616 b_free!79927 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) b_lambda!83869)))

(declare-fun b_lambda!83871 () Bool)

(assert (= b_lambda!83861 (or b!2806614 b_lambda!83871)))

(declare-fun bs!516143 () Bool)

(declare-fun d!814706 () Bool)

(assert (= bs!516143 (and d!814706 b!2806614)))

(assert (=> bs!516143 (= (dynLambda!13704 lambda!103094 (h!38147 l!5055)) (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 l!5055)))))

(assert (=> bs!516143 m!3235491))

(assert (=> d!814650 d!814706))

(declare-fun b_lambda!83873 () Bool)

(assert (= b_lambda!83867 (or (and b!2806613 b_free!79919 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806935 b_free!79947 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806616 b_free!79927) b_lambda!83873)))

(push 1)

(assert (not bs!516143))

(assert (not b!2806849))

(assert (not b!2806873))

(assert (not b!2806806))

(assert (not b!2806750))

(assert (not b_next!80629))

(assert (not b!2806748))

(assert b_and!204829)

(assert b_and!204823)

(assert (not d!814652))

(assert (not b!2806872))

(assert (not b_next!80625))

(assert (not d!814700))

(assert (not b!2806911))

(assert (not b!2806843))

(assert (not tb!153185))

(assert (not b!2806749))

(assert (not b!2806842))

(assert b_and!204827)

(assert (not b!2806770))

(assert (not b!2806920))

(assert (not b_lambda!83871))

(assert (not d!814632))

(assert (not d!814682))

(assert (not d!814678))

(assert (not b!2806812))

(assert (not b!2806800))

(assert (not b!2806848))

(assert (not d!814650))

(assert (not b!2806867))

(assert (not d!814690))

(assert (not b!2806738))

(assert (not d!814696))

(assert (not b!2806819))

(assert (not b!2806878))

(assert (not b!2806797))

(assert (not b!2806936))

(assert (not b!2806913))

(assert (not b!2806861))

(assert b_and!204819)

(assert (not d!814660))

(assert (not b!2806841))

(assert (not d!814662))

(assert (not b!2806876))

(assert (not b!2806796))

(assert (not b_lambda!83869))

(assert (not b!2806850))

(assert (not d!814698))

(assert (not b!2806855))

(assert (not b!2806772))

(assert (not d!814656))

(assert (not b!2806804))

(assert b_and!204783)

(assert (not d!814648))

(assert b_and!204821)

(assert (not b_next!80621))

(assert (not b!2806868))

(assert (not b!2806739))

(assert (not d!814686))

(assert (not b_next!80649))

(assert (not b!2806815))

(assert (not b!2806933))

(assert (not b!2806919))

(assert (not d!814694))

(assert (not tb!153191))

(assert (not b!2806811))

(assert (not b!2806932))

(assert (not b!2806899))

(assert (not b!2806916))

(assert (not b!2806915))

(assert (not b_next!80627))

(assert (not b_next!80631))

(assert (not b!2806874))

(assert b_and!204817)

(assert (not b!2806773))

(assert (not b!2806856))

(assert (not b!2806798))

(assert (not b!2806805))

(assert (not b!2806862))

(assert (not b!2806892))

(assert (not b!2806917))

(assert (not b!2806875))

(assert (not b!2806753))

(assert (not b_next!80645))

(assert tp_is_empty!14305)

(assert (not b!2806912))

(assert (not b!2806921))

(assert b_and!204825)

(assert b_and!204775)

(assert (not b!2806889))

(assert (not b_next!80647))

(assert (not b!2806863))

(assert (not d!814692))

(assert (not b_next!80651))

(assert (not b!2806890))

(assert (not d!814658))

(assert (not b!2806807))

(assert (not b!2806759))

(assert (not b_lambda!83873))

(assert (not b!2806869))

(assert (not b!2806737))

(assert (not b!2806934))

(assert (not b!2806864))

(assert (not b!2806813))

(assert (not b_next!80623))

(assert b_and!204779)

(assert (not b!2806879))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80625))

(assert b_and!204827)

(assert b_and!204819)

(assert (not b_next!80649))

(assert b_and!204817)

(assert (not b_next!80645))

(assert (not b_next!80651))

(assert (not b_next!80629))

(assert b_and!204829)

(assert b_and!204823)

(assert b_and!204783)

(assert b_and!204821)

(assert (not b_next!80621))

(assert (not b_next!80627))

(assert (not b_next!80631))

(assert b_and!204825)

(assert b_and!204775)

(assert (not b_next!80647))

(assert (not b_next!80623))

(assert b_and!204779)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!814728 () Bool)

(declare-fun c!454732 () Bool)

(assert (=> d!814728 (= c!454732 (is-Cons!32727 lt!1003156))))

(declare-fun e!1774791 () List!32825)

(assert (=> d!814728 (= (printList!1197 thiss!19710 lt!1003156) e!1774791)))

(declare-fun b!2807073 () Bool)

(assert (=> b!2807073 (= e!1774791 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003156))) (printList!1197 thiss!19710 (t!229253 lt!1003156))))))

(declare-fun b!2807074 () Bool)

(assert (=> b!2807074 (= e!1774791 Nil!32725)))

(assert (= (and d!814728 c!454732) b!2807073))

(assert (= (and d!814728 (not c!454732)) b!2807074))

(declare-fun m!3235997 () Bool)

(assert (=> b!2807073 m!3235997))

(assert (=> b!2807073 m!3235997))

(declare-fun m!3235999 () Bool)

(assert (=> b!2807073 m!3235999))

(declare-fun m!3236001 () Bool)

(assert (=> b!2807073 m!3236001))

(assert (=> b!2807073 m!3235999))

(assert (=> b!2807073 m!3236001))

(declare-fun m!3236003 () Bool)

(assert (=> b!2807073 m!3236003))

(assert (=> d!814660 d!814728))

(declare-fun d!814730 () Bool)

(declare-fun c!454735 () Bool)

(assert (=> d!814730 (= c!454735 (is-Cons!32727 (t!229253 l!5055)))))

(declare-fun e!1774794 () List!32825)

(assert (=> d!814730 (= (printWithSeparatorTokenList!73 thiss!19710 (t!229253 l!5055) separatorToken!283) e!1774794)))

(declare-fun b!2807079 () Bool)

(assert (=> b!2807079 (= e!1774794 (++!8038 (++!8038 (list!12251 (charsOf!3037 (h!38147 (t!229253 l!5055)))) (list!12251 (charsOf!3037 separatorToken!283))) (printWithSeparatorTokenList!73 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))))

(declare-fun b!2807080 () Bool)

(assert (=> b!2807080 (= e!1774794 Nil!32725)))

(assert (= (and d!814730 c!454735) b!2807079))

(assert (= (and d!814730 (not c!454735)) b!2807080))

(assert (=> b!2807079 m!3235695))

(assert (=> b!2807079 m!3235647))

(declare-fun m!3236005 () Bool)

(assert (=> b!2807079 m!3236005))

(assert (=> b!2807079 m!3235645))

(assert (=> b!2807079 m!3235645))

(assert (=> b!2807079 m!3235647))

(assert (=> b!2807079 m!3235693))

(assert (=> b!2807079 m!3235693))

(assert (=> b!2807079 m!3235695))

(declare-fun m!3236007 () Bool)

(assert (=> b!2807079 m!3236007))

(assert (=> b!2807079 m!3236005))

(assert (=> b!2807079 m!3236007))

(declare-fun m!3236009 () Bool)

(assert (=> b!2807079 m!3236009))

(assert (=> d!814660 d!814730))

(declare-fun d!814732 () Bool)

(declare-fun charsToInt!0 (List!32824) (_ BitVec 32))

(assert (=> d!814732 (= (inv!16 (value!157333 (h!38147 l!5055))) (= (charsToInt!0 (text!36245 (value!157333 (h!38147 l!5055)))) (value!157324 (value!157333 (h!38147 l!5055)))))))

(declare-fun bs!516155 () Bool)

(assert (= bs!516155 d!814732))

(declare-fun m!3236011 () Bool)

(assert (=> bs!516155 m!3236011))

(assert (=> b!2806772 d!814732))

(declare-fun d!814734 () Bool)

(declare-fun charsToBigInt!0 (List!32824 Int) Int)

(assert (=> d!814734 (= (inv!15 (value!157333 (h!38147 l!5055))) (= (charsToBigInt!0 (text!36247 (value!157333 (h!38147 l!5055))) 0) (value!157328 (value!157333 (h!38147 l!5055)))))))

(declare-fun bs!516156 () Bool)

(assert (= bs!516156 d!814734))

(declare-fun m!3236013 () Bool)

(assert (=> bs!516156 m!3236013))

(assert (=> b!2806770 d!814734))

(declare-fun d!814736 () Bool)

(declare-fun res!1169352 () Bool)

(declare-fun e!1774799 () Bool)

(assert (=> d!814736 (=> res!1169352 e!1774799)))

(assert (=> d!814736 (= res!1169352 (is-Nil!32726 rules!2540))))

(assert (=> d!814736 (= (noDuplicateTag!1803 thiss!19710 rules!2540 Nil!32732) e!1774799)))

(declare-fun b!2807085 () Bool)

(declare-fun e!1774800 () Bool)

(assert (=> b!2807085 (= e!1774799 e!1774800)))

(declare-fun res!1169353 () Bool)

(assert (=> b!2807085 (=> (not res!1169353) (not e!1774800))))

(declare-fun contains!6044 (List!32832 String!35908) Bool)

(assert (=> b!2807085 (= res!1169353 (not (contains!6044 Nil!32732 (tag!5396 (h!38146 rules!2540)))))))

(declare-fun b!2807086 () Bool)

(assert (=> b!2807086 (= e!1774800 (noDuplicateTag!1803 thiss!19710 (t!229252 rules!2540) (Cons!32732 (tag!5396 (h!38146 rules!2540)) Nil!32732)))))

(assert (= (and d!814736 (not res!1169352)) b!2807085))

(assert (= (and b!2807085 res!1169353) b!2807086))

(declare-fun m!3236015 () Bool)

(assert (=> b!2807085 m!3236015))

(declare-fun m!3236017 () Bool)

(assert (=> b!2807086 m!3236017))

(assert (=> b!2806872 d!814736))

(declare-fun d!814738 () Bool)

(declare-fun res!1169358 () Bool)

(declare-fun e!1774805 () Bool)

(assert (=> d!814738 (=> res!1169358 e!1774805)))

(assert (=> d!814738 (= res!1169358 (is-Nil!32727 l!5055))))

(assert (=> d!814738 (= (forall!6729 l!5055 lambda!103106) e!1774805)))

(declare-fun b!2807091 () Bool)

(declare-fun e!1774806 () Bool)

(assert (=> b!2807091 (= e!1774805 e!1774806)))

(declare-fun res!1169359 () Bool)

(assert (=> b!2807091 (=> (not res!1169359) (not e!1774806))))

(assert (=> b!2807091 (= res!1169359 (dynLambda!13704 lambda!103106 (h!38147 l!5055)))))

(declare-fun b!2807092 () Bool)

(assert (=> b!2807092 (= e!1774806 (forall!6729 (t!229253 l!5055) lambda!103106))))

(assert (= (and d!814738 (not res!1169358)) b!2807091))

(assert (= (and b!2807091 res!1169359) b!2807092))

(declare-fun b_lambda!83883 () Bool)

(assert (=> (not b_lambda!83883) (not b!2807091)))

(declare-fun m!3236019 () Bool)

(assert (=> b!2807091 m!3236019))

(declare-fun m!3236021 () Bool)

(assert (=> b!2807092 m!3236021))

(assert (=> d!814694 d!814738))

(assert (=> d!814694 d!814702))

(declare-fun d!814740 () Bool)

(declare-fun c!454738 () Bool)

(assert (=> d!814740 (= c!454738 (is-Nil!32727 l!5055))))

(declare-fun e!1774809 () (Set Token!9186))

(assert (=> d!814740 (= (content!4556 l!5055) e!1774809)))

(declare-fun b!2807097 () Bool)

(assert (=> b!2807097 (= e!1774809 (as set.empty (Set Token!9186)))))

(declare-fun b!2807098 () Bool)

(assert (=> b!2807098 (= e!1774809 (set.union (set.insert (h!38147 l!5055) (as set.empty (Set Token!9186))) (content!4556 (t!229253 l!5055))))))

(assert (= (and d!814740 c!454738) b!2807097))

(assert (= (and d!814740 (not c!454738)) b!2807098))

(declare-fun m!3236023 () Bool)

(assert (=> b!2807098 m!3236023))

(declare-fun m!3236025 () Bool)

(assert (=> b!2807098 m!3236025))

(assert (=> d!814652 d!814740))

(assert (=> bs!516143 d!814648))

(declare-fun d!814742 () Bool)

(declare-fun lt!1003221 () Bool)

(declare-fun e!1774811 () Bool)

(assert (=> d!814742 (= lt!1003221 e!1774811)))

(declare-fun res!1169360 () Bool)

(assert (=> d!814742 (=> (not res!1169360) (not e!1774811))))

(assert (=> d!814742 (= res!1169360 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (t!229253 l!5055))))))) (list!12250 (singletonSeq!2115 (h!38147 (t!229253 l!5055))))))))

(declare-fun e!1774810 () Bool)

(assert (=> d!814742 (= lt!1003221 e!1774810)))

(declare-fun res!1169361 () Bool)

(assert (=> d!814742 (=> (not res!1169361) (not e!1774810))))

(declare-fun lt!1003222 () tuple2!33310)

(assert (=> d!814742 (= res!1169361 (= (size!25523 (_1!19748 lt!1003222)) 1))))

(assert (=> d!814742 (= lt!1003222 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (t!229253 l!5055))))))))

(assert (=> d!814742 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814742 (= (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 l!5055))) lt!1003221)))

(declare-fun b!2807099 () Bool)

(declare-fun res!1169362 () Bool)

(assert (=> b!2807099 (=> (not res!1169362) (not e!1774810))))

(assert (=> b!2807099 (= res!1169362 (= (apply!7642 (_1!19748 lt!1003222) 0) (h!38147 (t!229253 l!5055))))))

(declare-fun b!2807100 () Bool)

(assert (=> b!2807100 (= e!1774810 (isEmpty!18189 (_2!19748 lt!1003222)))))

(declare-fun b!2807101 () Bool)

(assert (=> b!2807101 (= e!1774811 (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (t!229253 l!5055))))))))))

(assert (= (and d!814742 res!1169361) b!2807099))

(assert (= (and b!2807099 res!1169362) b!2807100))

(assert (= (and d!814742 res!1169360) b!2807101))

(declare-fun m!3236027 () Bool)

(assert (=> d!814742 m!3236027))

(declare-fun m!3236029 () Bool)

(assert (=> d!814742 m!3236029))

(declare-fun m!3236031 () Bool)

(assert (=> d!814742 m!3236031))

(assert (=> d!814742 m!3236027))

(declare-fun m!3236033 () Bool)

(assert (=> d!814742 m!3236033))

(assert (=> d!814742 m!3235487))

(declare-fun m!3236035 () Bool)

(assert (=> d!814742 m!3236035))

(declare-fun m!3236037 () Bool)

(assert (=> d!814742 m!3236037))

(assert (=> d!814742 m!3236027))

(assert (=> d!814742 m!3236035))

(declare-fun m!3236039 () Bool)

(assert (=> b!2807099 m!3236039))

(declare-fun m!3236041 () Bool)

(assert (=> b!2807100 m!3236041))

(assert (=> b!2807101 m!3236027))

(assert (=> b!2807101 m!3236027))

(assert (=> b!2807101 m!3236035))

(assert (=> b!2807101 m!3236035))

(assert (=> b!2807101 m!3236037))

(declare-fun m!3236043 () Bool)

(assert (=> b!2807101 m!3236043))

(assert (=> b!2806737 d!814742))

(declare-fun c!454739 () Bool)

(declare-fun d!814744 () Bool)

(assert (=> d!814744 (= c!454739 (is-Cons!32727 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)))))

(declare-fun e!1774812 () List!32825)

(assert (=> d!814744 (= (printList!1197 thiss!19710 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)) e!1774812)))

(declare-fun b!2807102 () Bool)

(assert (=> b!2807102 (= e!1774812 (++!8038 (list!12251 (charsOf!3037 (h!38147 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)))) (printList!1197 thiss!19710 (t!229253 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)))))))

(declare-fun b!2807103 () Bool)

(assert (=> b!2807103 (= e!1774812 Nil!32725)))

(assert (= (and d!814744 c!454739) b!2807102))

(assert (= (and d!814744 (not c!454739)) b!2807103))

(declare-fun m!3236045 () Bool)

(assert (=> b!2807102 m!3236045))

(assert (=> b!2807102 m!3236045))

(declare-fun m!3236047 () Bool)

(assert (=> b!2807102 m!3236047))

(declare-fun m!3236049 () Bool)

(assert (=> b!2807102 m!3236049))

(assert (=> b!2807102 m!3236047))

(assert (=> b!2807102 m!3236049))

(declare-fun m!3236051 () Bool)

(assert (=> b!2807102 m!3236051))

(assert (=> b!2806815 d!814744))

(declare-fun d!814746 () Bool)

(assert (=> d!814746 (= ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (Cons!32727 separatorToken!283 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))))

(assert (=> b!2806815 d!814746))

(declare-fun lt!1003228 () List!32827)

(declare-fun d!814748 () Bool)

(assert (=> d!814748 (= (printList!1197 thiss!19710 lt!1003228) (printWithSeparatorTokenList!73 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283))))

(declare-fun e!1774816 () List!32827)

(assert (=> d!814748 (= lt!1003228 e!1774816)))

(declare-fun c!454742 () Bool)

(assert (=> d!814748 (= c!454742 (is-Cons!32727 (t!229253 (t!229253 l!5055))))))

(declare-fun e!1774818 () Bool)

(assert (=> d!814748 e!1774818))

(declare-fun res!1169363 () Bool)

(assert (=> d!814748 (=> (not res!1169363) (not e!1774818))))

(assert (=> d!814748 (= res!1169363 (isSeparator!4892 (rule!7320 separatorToken!283)))))

(assert (=> d!814748 (= (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) lt!1003228)))

(declare-fun b!2807104 () Bool)

(declare-fun res!1169365 () Bool)

(assert (=> b!2807104 (=> (not res!1169365) (not e!1774818))))

(declare-fun e!1774813 () Bool)

(assert (=> b!2807104 (= res!1169365 e!1774813)))

(declare-fun res!1169364 () Bool)

(assert (=> b!2807104 (=> res!1169364 e!1774813)))

(assert (=> b!2807104 (= res!1169364 (not (is-Cons!32727 (t!229253 (t!229253 l!5055)))))))

(declare-fun b!2807105 () Bool)

(assert (=> b!2807105 (= e!1774816 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283) separatorToken!283) (h!38147 (t!229253 (t!229253 l!5055)))))))

(declare-fun lt!1003229 () List!32825)

(assert (=> b!2807105 (= lt!1003229 (list!12251 (charsOf!3037 (h!38147 (t!229253 (t!229253 l!5055))))))))

(declare-fun lt!1003225 () List!32825)

(assert (=> b!2807105 (= lt!1003225 (list!12251 (charsOf!3037 separatorToken!283)))))

(declare-fun lt!1003224 () List!32825)

(assert (=> b!2807105 (= lt!1003224 (printList!1197 thiss!19710 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283)))))

(declare-fun lt!1003230 () Unit!46781)

(assert (=> b!2807105 (= lt!1003230 (lemmaConcatAssociativity!1653 lt!1003229 lt!1003225 lt!1003224))))

(assert (=> b!2807105 (= (++!8038 (++!8038 lt!1003229 lt!1003225) lt!1003224) (++!8038 lt!1003229 (++!8038 lt!1003225 lt!1003224)))))

(declare-fun lt!1003223 () Unit!46781)

(assert (=> b!2807105 (= lt!1003223 lt!1003230)))

(declare-fun b!2807106 () Bool)

(declare-fun e!1774814 () List!32825)

(declare-fun lt!1003226 () List!32827)

(assert (=> b!2807106 (= e!1774814 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003226))) (printList!1197 thiss!19710 (t!229253 lt!1003226))))))

(declare-fun e!1774815 () List!32825)

(declare-fun b!2807107 () Bool)

(assert (=> b!2807107 (= e!1774813 (= (printList!1197 thiss!19710 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283) separatorToken!283) (h!38147 (t!229253 (t!229253 l!5055))))) e!1774815))))

(declare-fun c!454740 () Bool)

(declare-fun lt!1003227 () List!32827)

(assert (=> b!2807107 (= c!454740 (is-Cons!32727 lt!1003227))))

(assert (=> b!2807107 (= lt!1003227 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283) separatorToken!283) (h!38147 (t!229253 (t!229253 l!5055)))))))

(declare-fun b!2807108 () Bool)

(declare-fun e!1774817 () Bool)

(assert (=> b!2807108 (= e!1774818 e!1774817)))

(declare-fun res!1169366 () Bool)

(assert (=> b!2807108 (=> res!1169366 e!1774817)))

(assert (=> b!2807108 (= res!1169366 (not (is-Cons!32727 (t!229253 (t!229253 l!5055)))))))

(declare-fun b!2807109 () Bool)

(assert (=> b!2807109 (= e!1774817 (= (printList!1197 thiss!19710 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283) separatorToken!283)) e!1774814))))

(declare-fun c!454741 () Bool)

(assert (=> b!2807109 (= c!454741 (is-Cons!32727 lt!1003226))))

(assert (=> b!2807109 (= lt!1003226 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 (t!229253 l!5055))) separatorToken!283) separatorToken!283))))

(declare-fun b!2807110 () Bool)

(assert (=> b!2807110 (= e!1774814 Nil!32725)))

(declare-fun b!2807111 () Bool)

(assert (=> b!2807111 (= e!1774815 Nil!32725)))

(declare-fun b!2807112 () Bool)

(assert (=> b!2807112 (= e!1774816 Nil!32727)))

(declare-fun b!2807113 () Bool)

(assert (=> b!2807113 (= e!1774815 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003227))) (printList!1197 thiss!19710 (t!229253 lt!1003227))))))

(assert (= (and d!814748 res!1169363) b!2807104))

(assert (= (and b!2807104 (not res!1169364)) b!2807107))

(assert (= (and b!2807107 c!454740) b!2807113))

(assert (= (and b!2807107 (not c!454740)) b!2807111))

(assert (= (and b!2807104 res!1169365) b!2807108))

(assert (= (and b!2807108 (not res!1169366)) b!2807109))

(assert (= (and b!2807109 c!454741) b!2807106))

(assert (= (and b!2807109 (not c!454741)) b!2807110))

(assert (= (and d!814748 c!454742) b!2807105))

(assert (= (and d!814748 (not c!454742)) b!2807112))

(declare-fun m!3236053 () Bool)

(assert (=> b!2807113 m!3236053))

(assert (=> b!2807113 m!3236053))

(declare-fun m!3236055 () Bool)

(assert (=> b!2807113 m!3236055))

(declare-fun m!3236057 () Bool)

(assert (=> b!2807113 m!3236057))

(assert (=> b!2807113 m!3236055))

(assert (=> b!2807113 m!3236057))

(declare-fun m!3236059 () Bool)

(assert (=> b!2807113 m!3236059))

(declare-fun m!3236061 () Bool)

(assert (=> b!2807106 m!3236061))

(assert (=> b!2807106 m!3236061))

(declare-fun m!3236063 () Bool)

(assert (=> b!2807106 m!3236063))

(declare-fun m!3236065 () Bool)

(assert (=> b!2807106 m!3236065))

(assert (=> b!2807106 m!3236063))

(assert (=> b!2807106 m!3236065))

(declare-fun m!3236067 () Bool)

(assert (=> b!2807106 m!3236067))

(declare-fun m!3236069 () Bool)

(assert (=> b!2807107 m!3236069))

(assert (=> b!2807107 m!3236069))

(declare-fun m!3236071 () Bool)

(assert (=> b!2807107 m!3236071))

(assert (=> b!2807107 m!3236071))

(declare-fun m!3236073 () Bool)

(assert (=> b!2807107 m!3236073))

(assert (=> b!2807107 m!3236073))

(declare-fun m!3236075 () Bool)

(assert (=> b!2807107 m!3236075))

(assert (=> b!2807105 m!3236069))

(assert (=> b!2807105 m!3236071))

(declare-fun m!3236077 () Bool)

(assert (=> b!2807105 m!3236077))

(declare-fun m!3236079 () Bool)

(assert (=> b!2807105 m!3236079))

(declare-fun m!3236081 () Bool)

(assert (=> b!2807105 m!3236081))

(declare-fun m!3236083 () Bool)

(assert (=> b!2807105 m!3236083))

(declare-fun m!3236085 () Bool)

(assert (=> b!2807105 m!3236085))

(declare-fun m!3236087 () Bool)

(assert (=> b!2807105 m!3236087))

(assert (=> b!2807105 m!3236077))

(assert (=> b!2807105 m!3236069))

(assert (=> b!2807105 m!3236083))

(assert (=> b!2807105 m!3236081))

(declare-fun m!3236089 () Bool)

(assert (=> b!2807105 m!3236089))

(assert (=> b!2807105 m!3235645))

(assert (=> b!2807105 m!3235647))

(assert (=> b!2807105 m!3236069))

(declare-fun m!3236091 () Bool)

(assert (=> b!2807105 m!3236091))

(assert (=> b!2807105 m!3236071))

(assert (=> b!2807105 m!3236073))

(assert (=> b!2807105 m!3235645))

(assert (=> b!2807109 m!3236069))

(assert (=> b!2807109 m!3236069))

(assert (=> b!2807109 m!3236071))

(assert (=> b!2807109 m!3236071))

(declare-fun m!3236093 () Bool)

(assert (=> b!2807109 m!3236093))

(declare-fun m!3236095 () Bool)

(assert (=> d!814748 m!3236095))

(assert (=> d!814748 m!3236007))

(assert (=> b!2806815 d!814748))

(declare-fun c!454743 () Bool)

(declare-fun d!814750 () Bool)

(assert (=> d!814750 (= c!454743 (is-Cons!32727 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055))))))

(declare-fun e!1774819 () List!32825)

(assert (=> d!814750 (= (printList!1197 thiss!19710 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055))) e!1774819)))

(declare-fun b!2807114 () Bool)

(assert (=> b!2807114 (= e!1774819 (++!8038 (list!12251 (charsOf!3037 (h!38147 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055))))) (printList!1197 thiss!19710 (t!229253 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055))))))))

(declare-fun b!2807115 () Bool)

(assert (=> b!2807115 (= e!1774819 Nil!32725)))

(assert (= (and d!814750 c!454743) b!2807114))

(assert (= (and d!814750 (not c!454743)) b!2807115))

(declare-fun m!3236097 () Bool)

(assert (=> b!2807114 m!3236097))

(assert (=> b!2807114 m!3236097))

(declare-fun m!3236099 () Bool)

(assert (=> b!2807114 m!3236099))

(declare-fun m!3236101 () Bool)

(assert (=> b!2807114 m!3236101))

(assert (=> b!2807114 m!3236099))

(assert (=> b!2807114 m!3236101))

(declare-fun m!3236103 () Bool)

(assert (=> b!2807114 m!3236103))

(assert (=> b!2806798 d!814750))

(declare-fun d!814752 () Bool)

(assert (=> d!814752 (= ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (h!38147 l!5055)) (Cons!32727 (h!38147 l!5055) ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)))))

(assert (=> b!2806798 d!814752))

(declare-fun d!814754 () Bool)

(assert (=> d!814754 (= ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283) (Cons!32727 separatorToken!283 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))

(assert (=> b!2806798 d!814754))

(assert (=> b!2806798 d!814660))

(declare-fun bs!516157 () Bool)

(declare-fun d!814756 () Bool)

(assert (= bs!516157 (and d!814756 d!814678)))

(declare-fun lambda!103110 () Int)

(assert (=> bs!516157 (= lambda!103110 lambda!103105)))

(declare-fun bs!516158 () Bool)

(assert (= bs!516158 (and d!814756 d!814658)))

(assert (=> bs!516158 (= lambda!103110 lambda!103101)))

(declare-fun bs!516159 () Bool)

(assert (= bs!516159 (and d!814756 b!2806614)))

(assert (=> bs!516159 (= lambda!103110 lambda!103094)))

(declare-fun bs!516160 () Bool)

(assert (= bs!516160 (and d!814756 d!814632)))

(assert (=> bs!516160 (= lambda!103110 lambda!103100)))

(declare-fun bs!516161 () Bool)

(assert (= bs!516161 (and d!814756 d!814694)))

(assert (=> bs!516161 (= lambda!103110 lambda!103106)))

(declare-fun b!2807120 () Bool)

(declare-fun e!1774824 () Bool)

(assert (=> b!2807120 (= e!1774824 true)))

(declare-fun b!2807119 () Bool)

(declare-fun e!1774823 () Bool)

(assert (=> b!2807119 (= e!1774823 e!1774824)))

(declare-fun b!2807118 () Bool)

(declare-fun e!1774822 () Bool)

(assert (=> b!2807118 (= e!1774822 e!1774823)))

(assert (=> d!814756 e!1774822))

(assert (= b!2807119 b!2807120))

(assert (= b!2807118 b!2807119))

(assert (= (and d!814756 (is-Cons!32726 rules!2540)) b!2807118))

(assert (=> b!2807120 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103110))))

(assert (=> b!2807120 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103110))))

(assert (=> d!814756 true))

(declare-fun lt!1003231 () Bool)

(assert (=> d!814756 (= lt!1003231 (forall!6729 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)) lambda!103110))))

(declare-fun e!1774820 () Bool)

(assert (=> d!814756 (= lt!1003231 e!1774820)))

(declare-fun res!1169367 () Bool)

(assert (=> d!814756 (=> res!1169367 e!1774820)))

(assert (=> d!814756 (= res!1169367 (not (is-Cons!32727 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)))))))

(assert (=> d!814756 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814756 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))) lt!1003231)))

(declare-fun b!2807116 () Bool)

(declare-fun e!1774821 () Bool)

(assert (=> b!2807116 (= e!1774820 e!1774821)))

(declare-fun res!1169368 () Bool)

(assert (=> b!2807116 (=> (not res!1169368) (not e!1774821))))

(assert (=> b!2807116 (= res!1169368 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)))))))

(declare-fun b!2807117 () Bool)

(assert (=> b!2807117 (= e!1774821 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)))))))

(assert (= (and d!814756 (not res!1169367)) b!2807116))

(assert (= (and b!2807116 res!1169368) b!2807117))

(declare-fun m!3236105 () Bool)

(assert (=> d!814756 m!3236105))

(assert (=> d!814756 m!3235487))

(declare-fun m!3236107 () Bool)

(assert (=> b!2807116 m!3236107))

(declare-fun m!3236109 () Bool)

(assert (=> b!2807117 m!3236109))

(assert (=> b!2806806 d!814756))

(declare-fun d!814758 () Bool)

(declare-fun res!1169369 () Bool)

(declare-fun e!1774825 () Bool)

(assert (=> d!814758 (=> res!1169369 e!1774825)))

(assert (=> d!814758 (= res!1169369 (is-Nil!32727 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))

(assert (=> d!814758 (= (forall!6729 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) lambda!103105) e!1774825)))

(declare-fun b!2807121 () Bool)

(declare-fun e!1774826 () Bool)

(assert (=> b!2807121 (= e!1774825 e!1774826)))

(declare-fun res!1169370 () Bool)

(assert (=> b!2807121 (=> (not res!1169370) (not e!1774826))))

(assert (=> b!2807121 (= res!1169370 (dynLambda!13704 lambda!103105 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(declare-fun b!2807122 () Bool)

(assert (=> b!2807122 (= e!1774826 (forall!6729 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)) lambda!103105))))

(assert (= (and d!814758 (not res!1169369)) b!2807121))

(assert (= (and b!2807121 res!1169370) b!2807122))

(declare-fun b_lambda!83885 () Bool)

(assert (=> (not b_lambda!83885) (not b!2807121)))

(declare-fun m!3236111 () Bool)

(assert (=> b!2807121 m!3236111))

(declare-fun m!3236113 () Bool)

(assert (=> b!2807122 m!3236113))

(assert (=> d!814678 d!814758))

(assert (=> d!814678 d!814702))

(declare-fun d!814760 () Bool)

(declare-fun charsToBigInt!1 (List!32824) Int)

(assert (=> d!814760 (= (inv!17 (value!157333 separatorToken!283)) (= (charsToBigInt!1 (text!36246 (value!157333 separatorToken!283))) (value!157325 (value!157333 separatorToken!283))))))

(declare-fun bs!516162 () Bool)

(assert (= bs!516162 d!814760))

(declare-fun m!3236115 () Bool)

(assert (=> bs!516162 m!3236115))

(assert (=> b!2806879 d!814760))

(assert (=> b!2806862 d!814648))

(declare-fun d!814762 () Bool)

(assert (=> d!814762 (= (isEmpty!18190 (originalCharacters!5624 separatorToken!283)) (is-Nil!32725 (originalCharacters!5624 separatorToken!283)))))

(assert (=> d!814700 d!814762))

(declare-fun c!454744 () Bool)

(declare-fun d!814764 () Bool)

(assert (=> d!814764 (= c!454744 (is-Cons!32727 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055)))))))

(declare-fun e!1774827 () List!32825)

(assert (=> d!814764 (= (printList!1197 thiss!19710 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055)))) e!1774827)))

(declare-fun b!2807123 () Bool)

(assert (=> b!2807123 (= e!1774827 (++!8038 (list!12251 (charsOf!3037 (h!38147 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055)))))) (printList!1197 thiss!19710 (t!229253 ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055)))))))))

(declare-fun b!2807124 () Bool)

(assert (=> b!2807124 (= e!1774827 Nil!32725)))

(assert (= (and d!814764 c!454744) b!2807123))

(assert (= (and d!814764 (not c!454744)) b!2807124))

(declare-fun m!3236117 () Bool)

(assert (=> b!2807123 m!3236117))

(assert (=> b!2807123 m!3236117))

(declare-fun m!3236119 () Bool)

(assert (=> b!2807123 m!3236119))

(declare-fun m!3236121 () Bool)

(assert (=> b!2807123 m!3236121))

(assert (=> b!2807123 m!3236119))

(assert (=> b!2807123 m!3236121))

(declare-fun m!3236123 () Bool)

(assert (=> b!2807123 m!3236123))

(assert (=> b!2806813 d!814764))

(declare-fun d!814766 () Bool)

(assert (=> d!814766 (= ($colon$colon!545 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283) (h!38147 (t!229253 l!5055))) (Cons!32727 (h!38147 (t!229253 l!5055)) ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283) separatorToken!283)))))

(assert (=> b!2806813 d!814766))

(assert (=> b!2806813 d!814746))

(assert (=> b!2806813 d!814748))

(declare-fun c!454745 () Bool)

(declare-fun d!814768 () Bool)

(assert (=> d!814768 (= c!454745 (is-Cons!32727 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))

(declare-fun e!1774828 () List!32825)

(assert (=> d!814768 (= (printList!1197 thiss!19710 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)) e!1774828)))

(declare-fun b!2807125 () Bool)

(assert (=> b!2807125 (= e!1774828 (++!8038 (list!12251 (charsOf!3037 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))) (printList!1197 thiss!19710 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))))

(declare-fun b!2807126 () Bool)

(assert (=> b!2807126 (= e!1774828 Nil!32725)))

(assert (= (and d!814768 c!454745) b!2807125))

(assert (= (and d!814768 (not c!454745)) b!2807126))

(declare-fun m!3236125 () Bool)

(assert (=> b!2807125 m!3236125))

(assert (=> b!2807125 m!3236125))

(declare-fun m!3236127 () Bool)

(assert (=> b!2807125 m!3236127))

(declare-fun m!3236129 () Bool)

(assert (=> b!2807125 m!3236129))

(assert (=> b!2807125 m!3236127))

(assert (=> b!2807125 m!3236129))

(declare-fun m!3236131 () Bool)

(assert (=> b!2807125 m!3236131))

(assert (=> b!2806796 d!814768))

(declare-fun d!814770 () Bool)

(declare-fun e!1774833 () Bool)

(assert (=> d!814770 e!1774833))

(declare-fun res!1169375 () Bool)

(assert (=> d!814770 (=> (not res!1169375) (not e!1774833))))

(declare-fun lt!1003234 () List!32825)

(declare-fun content!4558 (List!32825) (Set C!16682))

(assert (=> d!814770 (= res!1169375 (= (content!4558 lt!1003234) (set.union (content!4558 lt!1003148) (content!4558 lt!1003144))))))

(declare-fun e!1774834 () List!32825)

(assert (=> d!814770 (= lt!1003234 e!1774834)))

(declare-fun c!454748 () Bool)

(assert (=> d!814770 (= c!454748 (is-Nil!32725 lt!1003148))))

(assert (=> d!814770 (= (++!8038 lt!1003148 lt!1003144) lt!1003234)))

(declare-fun b!2807138 () Bool)

(assert (=> b!2807138 (= e!1774833 (or (not (= lt!1003144 Nil!32725)) (= lt!1003234 lt!1003148)))))

(declare-fun b!2807136 () Bool)

(assert (=> b!2807136 (= e!1774834 (Cons!32725 (h!38145 lt!1003148) (++!8038 (t!229251 lt!1003148) lt!1003144)))))

(declare-fun b!2807135 () Bool)

(assert (=> b!2807135 (= e!1774834 lt!1003144)))

(declare-fun b!2807137 () Bool)

(declare-fun res!1169376 () Bool)

(assert (=> b!2807137 (=> (not res!1169376) (not e!1774833))))

(assert (=> b!2807137 (= res!1169376 (= (size!25524 lt!1003234) (+ (size!25524 lt!1003148) (size!25524 lt!1003144))))))

(assert (= (and d!814770 c!454748) b!2807135))

(assert (= (and d!814770 (not c!454748)) b!2807136))

(assert (= (and d!814770 res!1169375) b!2807137))

(assert (= (and b!2807137 res!1169376) b!2807138))

(declare-fun m!3236133 () Bool)

(assert (=> d!814770 m!3236133))

(declare-fun m!3236135 () Bool)

(assert (=> d!814770 m!3236135))

(declare-fun m!3236137 () Bool)

(assert (=> d!814770 m!3236137))

(declare-fun m!3236139 () Bool)

(assert (=> b!2807136 m!3236139))

(declare-fun m!3236141 () Bool)

(assert (=> b!2807137 m!3236141))

(declare-fun m!3236143 () Bool)

(assert (=> b!2807137 m!3236143))

(declare-fun m!3236145 () Bool)

(assert (=> b!2807137 m!3236145))

(assert (=> b!2806796 d!814770))

(declare-fun d!814772 () Bool)

(declare-fun e!1774835 () Bool)

(assert (=> d!814772 e!1774835))

(declare-fun res!1169377 () Bool)

(assert (=> d!814772 (=> (not res!1169377) (not e!1774835))))

(declare-fun lt!1003235 () List!32825)

(assert (=> d!814772 (= res!1169377 (= (content!4558 lt!1003235) (set.union (content!4558 lt!1003148) (content!4558 (++!8038 lt!1003144 lt!1003143)))))))

(declare-fun e!1774836 () List!32825)

(assert (=> d!814772 (= lt!1003235 e!1774836)))

(declare-fun c!454749 () Bool)

(assert (=> d!814772 (= c!454749 (is-Nil!32725 lt!1003148))))

(assert (=> d!814772 (= (++!8038 lt!1003148 (++!8038 lt!1003144 lt!1003143)) lt!1003235)))

(declare-fun b!2807142 () Bool)

(assert (=> b!2807142 (= e!1774835 (or (not (= (++!8038 lt!1003144 lt!1003143) Nil!32725)) (= lt!1003235 lt!1003148)))))

(declare-fun b!2807140 () Bool)

(assert (=> b!2807140 (= e!1774836 (Cons!32725 (h!38145 lt!1003148) (++!8038 (t!229251 lt!1003148) (++!8038 lt!1003144 lt!1003143))))))

(declare-fun b!2807139 () Bool)

(assert (=> b!2807139 (= e!1774836 (++!8038 lt!1003144 lt!1003143))))

(declare-fun b!2807141 () Bool)

(declare-fun res!1169378 () Bool)

(assert (=> b!2807141 (=> (not res!1169378) (not e!1774835))))

(assert (=> b!2807141 (= res!1169378 (= (size!25524 lt!1003235) (+ (size!25524 lt!1003148) (size!25524 (++!8038 lt!1003144 lt!1003143)))))))

(assert (= (and d!814772 c!454749) b!2807139))

(assert (= (and d!814772 (not c!454749)) b!2807140))

(assert (= (and d!814772 res!1169377) b!2807141))

(assert (= (and b!2807141 res!1169378) b!2807142))

(declare-fun m!3236147 () Bool)

(assert (=> d!814772 m!3236147))

(assert (=> d!814772 m!3236135))

(assert (=> d!814772 m!3235631))

(declare-fun m!3236149 () Bool)

(assert (=> d!814772 m!3236149))

(assert (=> b!2807140 m!3235631))

(declare-fun m!3236151 () Bool)

(assert (=> b!2807140 m!3236151))

(declare-fun m!3236153 () Bool)

(assert (=> b!2807141 m!3236153))

(assert (=> b!2807141 m!3236143))

(assert (=> b!2807141 m!3235631))

(declare-fun m!3236155 () Bool)

(assert (=> b!2807141 m!3236155))

(assert (=> b!2806796 d!814772))

(assert (=> b!2806796 d!814752))

(declare-fun d!814774 () Bool)

(declare-fun lt!1003238 () BalanceConc!19868)

(assert (=> d!814774 (= (list!12251 lt!1003238) (originalCharacters!5624 (h!38147 l!5055)))))

(assert (=> d!814774 (= lt!1003238 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))

(assert (=> d!814774 (= (charsOf!3037 (h!38147 l!5055)) lt!1003238)))

(declare-fun b_lambda!83887 () Bool)

(assert (=> (not b_lambda!83887) (not d!814774)))

(assert (=> d!814774 t!229280))

(declare-fun b_and!204839 () Bool)

(assert (= b_and!204819 (and (=> t!229280 result!190386) b_and!204839)))

(assert (=> d!814774 t!229278))

(declare-fun b_and!204841 () Bool)

(assert (= b_and!204817 (and (=> t!229278 result!190382) b_and!204841)))

(assert (=> d!814774 t!229290))

(declare-fun b_and!204843 () Bool)

(assert (= b_and!204825 (and (=> t!229290 result!190398) b_and!204843)))

(assert (=> d!814774 t!229294))

(declare-fun b_and!204845 () Bool)

(assert (= b_and!204829 (and (=> t!229294 result!190408) b_and!204845)))

(assert (=> d!814774 t!229282))

(declare-fun b_and!204847 () Bool)

(assert (= b_and!204821 (and (=> t!229282 result!190388) b_and!204847)))

(declare-fun m!3236157 () Bool)

(assert (=> d!814774 m!3236157))

(assert (=> d!814774 m!3235763))

(assert (=> b!2806796 d!814774))

(assert (=> b!2806796 d!814754))

(assert (=> b!2806796 d!814660))

(declare-fun d!814776 () Bool)

(declare-fun e!1774837 () Bool)

(assert (=> d!814776 e!1774837))

(declare-fun res!1169379 () Bool)

(assert (=> d!814776 (=> (not res!1169379) (not e!1774837))))

(declare-fun lt!1003239 () List!32825)

(assert (=> d!814776 (= res!1169379 (= (content!4558 lt!1003239) (set.union (content!4558 lt!1003144) (content!4558 lt!1003143))))))

(declare-fun e!1774838 () List!32825)

(assert (=> d!814776 (= lt!1003239 e!1774838)))

(declare-fun c!454750 () Bool)

(assert (=> d!814776 (= c!454750 (is-Nil!32725 lt!1003144))))

(assert (=> d!814776 (= (++!8038 lt!1003144 lt!1003143) lt!1003239)))

(declare-fun b!2807146 () Bool)

(assert (=> b!2807146 (= e!1774837 (or (not (= lt!1003143 Nil!32725)) (= lt!1003239 lt!1003144)))))

(declare-fun b!2807144 () Bool)

(assert (=> b!2807144 (= e!1774838 (Cons!32725 (h!38145 lt!1003144) (++!8038 (t!229251 lt!1003144) lt!1003143)))))

(declare-fun b!2807143 () Bool)

(assert (=> b!2807143 (= e!1774838 lt!1003143)))

(declare-fun b!2807145 () Bool)

(declare-fun res!1169380 () Bool)

(assert (=> b!2807145 (=> (not res!1169380) (not e!1774837))))

(assert (=> b!2807145 (= res!1169380 (= (size!25524 lt!1003239) (+ (size!25524 lt!1003144) (size!25524 lt!1003143))))))

(assert (= (and d!814776 c!454750) b!2807143))

(assert (= (and d!814776 (not c!454750)) b!2807144))

(assert (= (and d!814776 res!1169379) b!2807145))

(assert (= (and b!2807145 res!1169380) b!2807146))

(declare-fun m!3236159 () Bool)

(assert (=> d!814776 m!3236159))

(assert (=> d!814776 m!3236137))

(declare-fun m!3236161 () Bool)

(assert (=> d!814776 m!3236161))

(declare-fun m!3236163 () Bool)

(assert (=> b!2807144 m!3236163))

(declare-fun m!3236165 () Bool)

(assert (=> b!2807145 m!3236165))

(assert (=> b!2807145 m!3236145))

(declare-fun m!3236167 () Bool)

(assert (=> b!2807145 m!3236167))

(assert (=> b!2806796 d!814776))

(declare-fun d!814778 () Bool)

(declare-fun list!12254 (Conc!10127) List!32825)

(assert (=> d!814778 (= (list!12251 (charsOf!3037 (h!38147 l!5055))) (list!12254 (c!454684 (charsOf!3037 (h!38147 l!5055)))))))

(declare-fun bs!516163 () Bool)

(assert (= bs!516163 d!814778))

(declare-fun m!3236169 () Bool)

(assert (=> bs!516163 m!3236169))

(assert (=> b!2806796 d!814778))

(declare-fun d!814780 () Bool)

(assert (=> d!814780 (= (list!12251 (charsOf!3037 separatorToken!283)) (list!12254 (c!454684 (charsOf!3037 separatorToken!283))))))

(declare-fun bs!516164 () Bool)

(assert (= bs!516164 d!814780))

(declare-fun m!3236171 () Bool)

(assert (=> bs!516164 m!3236171))

(assert (=> b!2806796 d!814780))

(declare-fun d!814782 () Bool)

(declare-fun lt!1003240 () BalanceConc!19868)

(assert (=> d!814782 (= (list!12251 lt!1003240) (originalCharacters!5624 separatorToken!283))))

(assert (=> d!814782 (= lt!1003240 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))

(assert (=> d!814782 (= (charsOf!3037 separatorToken!283) lt!1003240)))

(declare-fun b_lambda!83889 () Bool)

(assert (=> (not b_lambda!83889) (not d!814782)))

(assert (=> d!814782 t!229288))

(declare-fun b_and!204849 () Bool)

(assert (= b_and!204847 (and (=> t!229288 result!190394) b_and!204849)))

(assert (=> d!814782 t!229292))

(declare-fun b_and!204851 () Bool)

(assert (= b_and!204843 (and (=> t!229292 result!190400) b_and!204851)))

(assert (=> d!814782 t!229296))

(declare-fun b_and!204853 () Bool)

(assert (= b_and!204845 (and (=> t!229296 result!190410) b_and!204853)))

(assert (=> d!814782 t!229286))

(declare-fun b_and!204855 () Bool)

(assert (= b_and!204839 (and (=> t!229286 result!190392) b_and!204855)))

(assert (=> d!814782 t!229284))

(declare-fun b_and!204857 () Bool)

(assert (= b_and!204841 (and (=> t!229284 result!190390) b_and!204857)))

(declare-fun m!3236173 () Bool)

(assert (=> d!814782 m!3236173))

(assert (=> d!814782 m!3235799))

(assert (=> b!2806796 d!814782))

(declare-fun d!814784 () Bool)

(assert (=> d!814784 (= (++!8038 (++!8038 lt!1003148 lt!1003144) lt!1003143) (++!8038 lt!1003148 (++!8038 lt!1003144 lt!1003143)))))

(declare-fun lt!1003243 () Unit!46781)

(declare-fun choose!16552 (List!32825 List!32825 List!32825) Unit!46781)

(assert (=> d!814784 (= lt!1003243 (choose!16552 lt!1003148 lt!1003144 lt!1003143))))

(assert (=> d!814784 (= (lemmaConcatAssociativity!1653 lt!1003148 lt!1003144 lt!1003143) lt!1003243)))

(declare-fun bs!516165 () Bool)

(assert (= bs!516165 d!814784))

(assert (=> bs!516165 m!3235631))

(assert (=> bs!516165 m!3235633))

(assert (=> bs!516165 m!3235635))

(declare-fun m!3236175 () Bool)

(assert (=> bs!516165 m!3236175))

(assert (=> bs!516165 m!3235635))

(assert (=> bs!516165 m!3235643))

(assert (=> bs!516165 m!3235631))

(assert (=> b!2806796 d!814784))

(declare-fun d!814786 () Bool)

(declare-fun e!1774839 () Bool)

(assert (=> d!814786 e!1774839))

(declare-fun res!1169381 () Bool)

(assert (=> d!814786 (=> (not res!1169381) (not e!1774839))))

(declare-fun lt!1003244 () List!32825)

(assert (=> d!814786 (= res!1169381 (= (content!4558 lt!1003244) (set.union (content!4558 (++!8038 lt!1003148 lt!1003144)) (content!4558 lt!1003143))))))

(declare-fun e!1774840 () List!32825)

(assert (=> d!814786 (= lt!1003244 e!1774840)))

(declare-fun c!454751 () Bool)

(assert (=> d!814786 (= c!454751 (is-Nil!32725 (++!8038 lt!1003148 lt!1003144)))))

(assert (=> d!814786 (= (++!8038 (++!8038 lt!1003148 lt!1003144) lt!1003143) lt!1003244)))

(declare-fun b!2807150 () Bool)

(assert (=> b!2807150 (= e!1774839 (or (not (= lt!1003143 Nil!32725)) (= lt!1003244 (++!8038 lt!1003148 lt!1003144))))))

(declare-fun b!2807148 () Bool)

(assert (=> b!2807148 (= e!1774840 (Cons!32725 (h!38145 (++!8038 lt!1003148 lt!1003144)) (++!8038 (t!229251 (++!8038 lt!1003148 lt!1003144)) lt!1003143)))))

(declare-fun b!2807147 () Bool)

(assert (=> b!2807147 (= e!1774840 lt!1003143)))

(declare-fun b!2807149 () Bool)

(declare-fun res!1169382 () Bool)

(assert (=> b!2807149 (=> (not res!1169382) (not e!1774839))))

(assert (=> b!2807149 (= res!1169382 (= (size!25524 lt!1003244) (+ (size!25524 (++!8038 lt!1003148 lt!1003144)) (size!25524 lt!1003143))))))

(assert (= (and d!814786 c!454751) b!2807147))

(assert (= (and d!814786 (not c!454751)) b!2807148))

(assert (= (and d!814786 res!1169381) b!2807149))

(assert (= (and b!2807149 res!1169382) b!2807150))

(declare-fun m!3236177 () Bool)

(assert (=> d!814786 m!3236177))

(assert (=> d!814786 m!3235635))

(declare-fun m!3236179 () Bool)

(assert (=> d!814786 m!3236179))

(assert (=> d!814786 m!3236161))

(declare-fun m!3236181 () Bool)

(assert (=> b!2807148 m!3236181))

(declare-fun m!3236183 () Bool)

(assert (=> b!2807149 m!3236183))

(assert (=> b!2807149 m!3235635))

(declare-fun m!3236185 () Bool)

(assert (=> b!2807149 m!3236185))

(assert (=> b!2807149 m!3236167))

(assert (=> b!2806796 d!814786))

(declare-fun d!814788 () Bool)

(assert (=> d!814788 true))

(declare-fun lambda!103113 () Int)

(declare-fun order!17385 () Int)

(declare-fun dynLambda!13708 (Int Int) Int)

(assert (=> d!814788 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (dynLambda!13708 order!17385 lambda!103113))))

(declare-fun Forall2!820 (Int) Bool)

(assert (=> d!814788 (= (equivClasses!1920 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (Forall2!820 lambda!103113))))

(declare-fun bs!516166 () Bool)

(assert (= bs!516166 d!814788))

(declare-fun m!3236187 () Bool)

(assert (=> bs!516166 m!3236187))

(assert (=> b!2806848 d!814788))

(declare-fun d!814790 () Bool)

(declare-fun lt!1003245 () Bool)

(assert (=> d!814790 (= lt!1003245 (set.member (h!38147 l!5055) (content!4556 (t!229253 l!5055))))))

(declare-fun e!1774844 () Bool)

(assert (=> d!814790 (= lt!1003245 e!1774844)))

(declare-fun res!1169386 () Bool)

(assert (=> d!814790 (=> (not res!1169386) (not e!1774844))))

(assert (=> d!814790 (= res!1169386 (is-Cons!32727 (t!229253 l!5055)))))

(assert (=> d!814790 (= (contains!6042 (t!229253 l!5055) (h!38147 l!5055)) lt!1003245)))

(declare-fun b!2807155 () Bool)

(declare-fun e!1774843 () Bool)

(assert (=> b!2807155 (= e!1774844 e!1774843)))

(declare-fun res!1169385 () Bool)

(assert (=> b!2807155 (=> res!1169385 e!1774843)))

(assert (=> b!2807155 (= res!1169385 (= (h!38147 (t!229253 l!5055)) (h!38147 l!5055)))))

(declare-fun b!2807156 () Bool)

(assert (=> b!2807156 (= e!1774843 (contains!6042 (t!229253 (t!229253 l!5055)) (h!38147 l!5055)))))

(assert (= (and d!814790 res!1169386) b!2807155))

(assert (= (and b!2807155 (not res!1169385)) b!2807156))

(assert (=> d!814790 m!3236025))

(declare-fun m!3236189 () Bool)

(assert (=> d!814790 m!3236189))

(declare-fun m!3236191 () Bool)

(assert (=> b!2807156 m!3236191))

(assert (=> b!2806759 d!814790))

(assert (=> b!2806811 d!814746))

(declare-fun d!814792 () Bool)

(declare-fun e!1774845 () Bool)

(assert (=> d!814792 e!1774845))

(declare-fun res!1169387 () Bool)

(assert (=> d!814792 (=> (not res!1169387) (not e!1774845))))

(declare-fun lt!1003246 () List!32825)

(assert (=> d!814792 (= res!1169387 (= (content!4558 lt!1003246) (set.union (content!4558 lt!1003153) (content!4558 lt!1003152))))))

(declare-fun e!1774846 () List!32825)

(assert (=> d!814792 (= lt!1003246 e!1774846)))

(declare-fun c!454752 () Bool)

(assert (=> d!814792 (= c!454752 (is-Nil!32725 lt!1003153))))

(assert (=> d!814792 (= (++!8038 lt!1003153 lt!1003152) lt!1003246)))

(declare-fun b!2807160 () Bool)

(assert (=> b!2807160 (= e!1774845 (or (not (= lt!1003152 Nil!32725)) (= lt!1003246 lt!1003153)))))

(declare-fun b!2807158 () Bool)

(assert (=> b!2807158 (= e!1774846 (Cons!32725 (h!38145 lt!1003153) (++!8038 (t!229251 lt!1003153) lt!1003152)))))

(declare-fun b!2807157 () Bool)

(assert (=> b!2807157 (= e!1774846 lt!1003152)))

(declare-fun b!2807159 () Bool)

(declare-fun res!1169388 () Bool)

(assert (=> b!2807159 (=> (not res!1169388) (not e!1774845))))

(assert (=> b!2807159 (= res!1169388 (= (size!25524 lt!1003246) (+ (size!25524 lt!1003153) (size!25524 lt!1003152))))))

(assert (= (and d!814792 c!454752) b!2807157))

(assert (= (and d!814792 (not c!454752)) b!2807158))

(assert (= (and d!814792 res!1169387) b!2807159))

(assert (= (and b!2807159 res!1169388) b!2807160))

(declare-fun m!3236193 () Bool)

(assert (=> d!814792 m!3236193))

(declare-fun m!3236195 () Bool)

(assert (=> d!814792 m!3236195))

(declare-fun m!3236197 () Bool)

(assert (=> d!814792 m!3236197))

(declare-fun m!3236199 () Bool)

(assert (=> b!2807158 m!3236199))

(declare-fun m!3236201 () Bool)

(assert (=> b!2807159 m!3236201))

(declare-fun m!3236203 () Bool)

(assert (=> b!2807159 m!3236203))

(declare-fun m!3236205 () Bool)

(assert (=> b!2807159 m!3236205))

(assert (=> b!2806811 d!814792))

(declare-fun d!814794 () Bool)

(assert (=> d!814794 (= (list!12251 (charsOf!3037 (h!38147 (t!229253 l!5055)))) (list!12254 (c!454684 (charsOf!3037 (h!38147 (t!229253 l!5055))))))))

(declare-fun bs!516167 () Bool)

(assert (= bs!516167 d!814794))

(declare-fun m!3236207 () Bool)

(assert (=> bs!516167 m!3236207))

(assert (=> b!2806811 d!814794))

(declare-fun d!814796 () Bool)

(declare-fun e!1774847 () Bool)

(assert (=> d!814796 e!1774847))

(declare-fun res!1169389 () Bool)

(assert (=> d!814796 (=> (not res!1169389) (not e!1774847))))

(declare-fun lt!1003247 () List!32825)

(assert (=> d!814796 (= res!1169389 (= (content!4558 lt!1003247) (set.union (content!4558 lt!1003157) (content!4558 (++!8038 lt!1003153 lt!1003152)))))))

(declare-fun e!1774848 () List!32825)

(assert (=> d!814796 (= lt!1003247 e!1774848)))

(declare-fun c!454753 () Bool)

(assert (=> d!814796 (= c!454753 (is-Nil!32725 lt!1003157))))

(assert (=> d!814796 (= (++!8038 lt!1003157 (++!8038 lt!1003153 lt!1003152)) lt!1003247)))

(declare-fun b!2807164 () Bool)

(assert (=> b!2807164 (= e!1774847 (or (not (= (++!8038 lt!1003153 lt!1003152) Nil!32725)) (= lt!1003247 lt!1003157)))))

(declare-fun b!2807162 () Bool)

(assert (=> b!2807162 (= e!1774848 (Cons!32725 (h!38145 lt!1003157) (++!8038 (t!229251 lt!1003157) (++!8038 lt!1003153 lt!1003152))))))

(declare-fun b!2807161 () Bool)

(assert (=> b!2807161 (= e!1774848 (++!8038 lt!1003153 lt!1003152))))

(declare-fun b!2807163 () Bool)

(declare-fun res!1169390 () Bool)

(assert (=> b!2807163 (=> (not res!1169390) (not e!1774847))))

(assert (=> b!2807163 (= res!1169390 (= (size!25524 lt!1003247) (+ (size!25524 lt!1003157) (size!25524 (++!8038 lt!1003153 lt!1003152)))))))

(assert (= (and d!814796 c!454753) b!2807161))

(assert (= (and d!814796 (not c!454753)) b!2807162))

(assert (= (and d!814796 res!1169389) b!2807163))

(assert (= (and b!2807163 res!1169390) b!2807164))

(declare-fun m!3236209 () Bool)

(assert (=> d!814796 m!3236209))

(declare-fun m!3236211 () Bool)

(assert (=> d!814796 m!3236211))

(assert (=> d!814796 m!3235687))

(declare-fun m!3236213 () Bool)

(assert (=> d!814796 m!3236213))

(assert (=> b!2807162 m!3235687))

(declare-fun m!3236215 () Bool)

(assert (=> b!2807162 m!3236215))

(declare-fun m!3236217 () Bool)

(assert (=> b!2807163 m!3236217))

(declare-fun m!3236219 () Bool)

(assert (=> b!2807163 m!3236219))

(assert (=> b!2807163 m!3235687))

(declare-fun m!3236221 () Bool)

(assert (=> b!2807163 m!3236221))

(assert (=> b!2806811 d!814796))

(assert (=> b!2806811 d!814748))

(declare-fun d!814798 () Bool)

(declare-fun e!1774849 () Bool)

(assert (=> d!814798 e!1774849))

(declare-fun res!1169391 () Bool)

(assert (=> d!814798 (=> (not res!1169391) (not e!1774849))))

(declare-fun lt!1003248 () List!32825)

(assert (=> d!814798 (= res!1169391 (= (content!4558 lt!1003248) (set.union (content!4558 lt!1003157) (content!4558 lt!1003153))))))

(declare-fun e!1774850 () List!32825)

(assert (=> d!814798 (= lt!1003248 e!1774850)))

(declare-fun c!454754 () Bool)

(assert (=> d!814798 (= c!454754 (is-Nil!32725 lt!1003157))))

(assert (=> d!814798 (= (++!8038 lt!1003157 lt!1003153) lt!1003248)))

(declare-fun b!2807168 () Bool)

(assert (=> b!2807168 (= e!1774849 (or (not (= lt!1003153 Nil!32725)) (= lt!1003248 lt!1003157)))))

(declare-fun b!2807166 () Bool)

(assert (=> b!2807166 (= e!1774850 (Cons!32725 (h!38145 lt!1003157) (++!8038 (t!229251 lt!1003157) lt!1003153)))))

(declare-fun b!2807165 () Bool)

(assert (=> b!2807165 (= e!1774850 lt!1003153)))

(declare-fun b!2807167 () Bool)

(declare-fun res!1169392 () Bool)

(assert (=> b!2807167 (=> (not res!1169392) (not e!1774849))))

(assert (=> b!2807167 (= res!1169392 (= (size!25524 lt!1003248) (+ (size!25524 lt!1003157) (size!25524 lt!1003153))))))

(assert (= (and d!814798 c!454754) b!2807165))

(assert (= (and d!814798 (not c!454754)) b!2807166))

(assert (= (and d!814798 res!1169391) b!2807167))

(assert (= (and b!2807167 res!1169392) b!2807168))

(declare-fun m!3236223 () Bool)

(assert (=> d!814798 m!3236223))

(assert (=> d!814798 m!3236211))

(assert (=> d!814798 m!3236195))

(declare-fun m!3236225 () Bool)

(assert (=> b!2807166 m!3236225))

(declare-fun m!3236227 () Bool)

(assert (=> b!2807167 m!3236227))

(assert (=> b!2807167 m!3236219))

(assert (=> b!2807167 m!3236203))

(assert (=> b!2806811 d!814798))

(declare-fun d!814800 () Bool)

(declare-fun e!1774851 () Bool)

(assert (=> d!814800 e!1774851))

(declare-fun res!1169393 () Bool)

(assert (=> d!814800 (=> (not res!1169393) (not e!1774851))))

(declare-fun lt!1003249 () List!32825)

(assert (=> d!814800 (= res!1169393 (= (content!4558 lt!1003249) (set.union (content!4558 (++!8038 lt!1003157 lt!1003153)) (content!4558 lt!1003152))))))

(declare-fun e!1774852 () List!32825)

(assert (=> d!814800 (= lt!1003249 e!1774852)))

(declare-fun c!454755 () Bool)

(assert (=> d!814800 (= c!454755 (is-Nil!32725 (++!8038 lt!1003157 lt!1003153)))))

(assert (=> d!814800 (= (++!8038 (++!8038 lt!1003157 lt!1003153) lt!1003152) lt!1003249)))

(declare-fun b!2807172 () Bool)

(assert (=> b!2807172 (= e!1774851 (or (not (= lt!1003152 Nil!32725)) (= lt!1003249 (++!8038 lt!1003157 lt!1003153))))))

(declare-fun b!2807170 () Bool)

(assert (=> b!2807170 (= e!1774852 (Cons!32725 (h!38145 (++!8038 lt!1003157 lt!1003153)) (++!8038 (t!229251 (++!8038 lt!1003157 lt!1003153)) lt!1003152)))))

(declare-fun b!2807169 () Bool)

(assert (=> b!2807169 (= e!1774852 lt!1003152)))

(declare-fun b!2807171 () Bool)

(declare-fun res!1169394 () Bool)

(assert (=> b!2807171 (=> (not res!1169394) (not e!1774851))))

(assert (=> b!2807171 (= res!1169394 (= (size!25524 lt!1003249) (+ (size!25524 (++!8038 lt!1003157 lt!1003153)) (size!25524 lt!1003152))))))

(assert (= (and d!814800 c!454755) b!2807169))

(assert (= (and d!814800 (not c!454755)) b!2807170))

(assert (= (and d!814800 res!1169393) b!2807171))

(assert (= (and b!2807171 res!1169394) b!2807172))

(declare-fun m!3236229 () Bool)

(assert (=> d!814800 m!3236229))

(assert (=> d!814800 m!3235691))

(declare-fun m!3236231 () Bool)

(assert (=> d!814800 m!3236231))

(assert (=> d!814800 m!3236197))

(declare-fun m!3236233 () Bool)

(assert (=> b!2807170 m!3236233))

(declare-fun m!3236235 () Bool)

(assert (=> b!2807171 m!3236235))

(assert (=> b!2807171 m!3235691))

(declare-fun m!3236237 () Bool)

(assert (=> b!2807171 m!3236237))

(assert (=> b!2807171 m!3236205))

(assert (=> b!2806811 d!814800))

(declare-fun d!814802 () Bool)

(declare-fun c!454756 () Bool)

(assert (=> d!814802 (= c!454756 (is-Cons!32727 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))))

(declare-fun e!1774853 () List!32825)

(assert (=> d!814802 (= (printList!1197 thiss!19710 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)) e!1774853)))

(declare-fun b!2807173 () Bool)

(assert (=> b!2807173 (= e!1774853 (++!8038 (list!12251 (charsOf!3037 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))) (printList!1197 thiss!19710 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 (t!229253 l!5055)) separatorToken!283)))))))

(declare-fun b!2807174 () Bool)

(assert (=> b!2807174 (= e!1774853 Nil!32725)))

(assert (= (and d!814802 c!454756) b!2807173))

(assert (= (and d!814802 (not c!454756)) b!2807174))

(declare-fun m!3236239 () Bool)

(assert (=> b!2807173 m!3236239))

(assert (=> b!2807173 m!3236239))

(declare-fun m!3236241 () Bool)

(assert (=> b!2807173 m!3236241))

(declare-fun m!3236243 () Bool)

(assert (=> b!2807173 m!3236243))

(assert (=> b!2807173 m!3236241))

(assert (=> b!2807173 m!3236243))

(declare-fun m!3236245 () Bool)

(assert (=> b!2807173 m!3236245))

(assert (=> b!2806811 d!814802))

(assert (=> b!2806811 d!814766))

(declare-fun d!814804 () Bool)

(declare-fun lt!1003250 () BalanceConc!19868)

(assert (=> d!814804 (= (list!12251 lt!1003250) (originalCharacters!5624 (h!38147 (t!229253 l!5055))))))

(assert (=> d!814804 (= lt!1003250 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (value!157333 (h!38147 (t!229253 l!5055)))))))

(assert (=> d!814804 (= (charsOf!3037 (h!38147 (t!229253 l!5055))) lt!1003250)))

(declare-fun b_lambda!83891 () Bool)

(assert (=> (not b_lambda!83891) (not d!814804)))

(declare-fun t!229310 () Bool)

(declare-fun tb!153213 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229310) tb!153213))

(declare-fun b!2807175 () Bool)

(declare-fun e!1774854 () Bool)

(declare-fun tp!895791 () Bool)

(assert (=> b!2807175 (= e!1774854 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (value!157333 (h!38147 (t!229253 l!5055)))))) tp!895791))))

(declare-fun result!190428 () Bool)

(assert (=> tb!153213 (= result!190428 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (value!157333 (h!38147 (t!229253 l!5055))))) e!1774854))))

(assert (= tb!153213 b!2807175))

(declare-fun m!3236247 () Bool)

(assert (=> b!2807175 m!3236247))

(declare-fun m!3236249 () Bool)

(assert (=> tb!153213 m!3236249))

(assert (=> d!814804 t!229310))

(declare-fun b_and!204859 () Bool)

(assert (= b_and!204853 (and (=> t!229310 result!190428) b_and!204859)))

(declare-fun t!229312 () Bool)

(declare-fun tb!153215 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229312) tb!153215))

(declare-fun result!190430 () Bool)

(assert (= result!190430 result!190428))

(assert (=> d!814804 t!229312))

(declare-fun b_and!204861 () Bool)

(assert (= b_and!204851 (and (=> t!229312 result!190430) b_and!204861)))

(declare-fun tb!153217 () Bool)

(declare-fun t!229314 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229314) tb!153217))

(declare-fun result!190432 () Bool)

(assert (= result!190432 result!190428))

(assert (=> d!814804 t!229314))

(declare-fun b_and!204863 () Bool)

(assert (= b_and!204855 (and (=> t!229314 result!190432) b_and!204863)))

(declare-fun t!229316 () Bool)

(declare-fun tb!153219 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229316) tb!153219))

(declare-fun result!190434 () Bool)

(assert (= result!190434 result!190428))

(assert (=> d!814804 t!229316))

(declare-fun b_and!204865 () Bool)

(assert (= b_and!204849 (and (=> t!229316 result!190434) b_and!204865)))

(declare-fun t!229318 () Bool)

(declare-fun tb!153221 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229318) tb!153221))

(declare-fun result!190436 () Bool)

(assert (= result!190436 result!190428))

(assert (=> d!814804 t!229318))

(declare-fun b_and!204867 () Bool)

(assert (= b_and!204857 (and (=> t!229318 result!190436) b_and!204867)))

(declare-fun m!3236251 () Bool)

(assert (=> d!814804 m!3236251))

(declare-fun m!3236253 () Bool)

(assert (=> d!814804 m!3236253))

(assert (=> b!2806811 d!814804))

(declare-fun d!814806 () Bool)

(assert (=> d!814806 (= (++!8038 (++!8038 lt!1003157 lt!1003153) lt!1003152) (++!8038 lt!1003157 (++!8038 lt!1003153 lt!1003152)))))

(declare-fun lt!1003251 () Unit!46781)

(assert (=> d!814806 (= lt!1003251 (choose!16552 lt!1003157 lt!1003153 lt!1003152))))

(assert (=> d!814806 (= (lemmaConcatAssociativity!1653 lt!1003157 lt!1003153 lt!1003152) lt!1003251)))

(declare-fun bs!516168 () Bool)

(assert (= bs!516168 d!814806))

(assert (=> bs!516168 m!3235687))

(assert (=> bs!516168 m!3235689))

(assert (=> bs!516168 m!3235691))

(declare-fun m!3236255 () Bool)

(assert (=> bs!516168 m!3236255))

(assert (=> bs!516168 m!3235691))

(assert (=> bs!516168 m!3235699))

(assert (=> bs!516168 m!3235687))

(assert (=> b!2806811 d!814806))

(assert (=> b!2806811 d!814780))

(assert (=> b!2806811 d!814782))

(declare-fun d!814808 () Bool)

(assert (=> d!814808 true))

(declare-fun order!17387 () Int)

(declare-fun lambda!103116 () Int)

(declare-fun dynLambda!13709 (Int Int) Int)

(assert (=> d!814808 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13709 order!17387 lambda!103116))))

(assert (=> d!814808 true))

(assert (=> d!814808 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13709 order!17387 lambda!103116))))

(declare-fun Forall!1221 (Int) Bool)

(assert (=> d!814808 (= (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (Forall!1221 lambda!103116))))

(declare-fun bs!516169 () Bool)

(assert (= bs!516169 d!814808))

(declare-fun m!3236257 () Bool)

(assert (=> bs!516169 m!3236257))

(assert (=> d!814690 d!814808))

(declare-fun b!2807190 () Bool)

(declare-fun e!1774863 () Bool)

(declare-fun lt!1003254 () tuple2!33310)

(declare-fun isEmpty!18193 (BalanceConc!19872) Bool)

(assert (=> b!2807190 (= e!1774863 (not (isEmpty!18193 (_1!19748 lt!1003254))))))

(declare-fun b!2807192 () Bool)

(declare-fun e!1774862 () Bool)

(assert (=> b!2807192 (= e!1774862 (= (_2!19748 lt!1003254) (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))))

(declare-fun b!2807193 () Bool)

(assert (=> b!2807193 (= e!1774862 e!1774863)))

(declare-fun res!1169402 () Bool)

(declare-fun size!25527 (BalanceConc!19868) Int)

(assert (=> b!2807193 (= res!1169402 (< (size!25527 (_2!19748 lt!1003254)) (size!25527 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))

(assert (=> b!2807193 (=> (not res!1169402) (not e!1774863))))

(declare-fun b!2807194 () Bool)

(declare-fun res!1169401 () Bool)

(declare-fun e!1774861 () Bool)

(assert (=> b!2807194 (=> (not res!1169401) (not e!1774861))))

(declare-datatypes ((tuple2!33314 0))(
  ( (tuple2!33315 (_1!19750 List!32827) (_2!19750 List!32825)) )
))
(declare-fun lexList!1241 (LexerInterface!4483 List!32826 List!32825) tuple2!33314)

(assert (=> b!2807194 (= res!1169401 (= (list!12250 (_1!19748 lt!1003254)) (_1!19750 (lexList!1241 thiss!19710 rules!2540 (list!12251 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))))

(declare-fun d!814810 () Bool)

(assert (=> d!814810 e!1774861))

(declare-fun res!1169403 () Bool)

(assert (=> d!814810 (=> (not res!1169403) (not e!1774861))))

(assert (=> d!814810 (= res!1169403 e!1774862)))

(declare-fun c!454760 () Bool)

(assert (=> d!814810 (= c!454760 (> (size!25523 (_1!19748 lt!1003254)) 0))))

(declare-fun lexTailRecV2!879 (LexerInterface!4483 List!32826 BalanceConc!19868 BalanceConc!19868 BalanceConc!19868 BalanceConc!19872) tuple2!33310)

(assert (=> d!814810 (= lt!1003254 (lexTailRecV2!879 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))) (BalanceConc!19869 Empty!10127) (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))) (BalanceConc!19873 Empty!10129)))))

(assert (=> d!814810 (= (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))) lt!1003254)))

(declare-fun b!2807191 () Bool)

(assert (=> b!2807191 (= e!1774861 (= (list!12251 (_2!19748 lt!1003254)) (_2!19750 (lexList!1241 thiss!19710 rules!2540 (list!12251 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))))

(assert (= (and d!814810 c!454760) b!2807193))

(assert (= (and d!814810 (not c!454760)) b!2807192))

(assert (= (and b!2807193 res!1169402) b!2807190))

(assert (= (and d!814810 res!1169403) b!2807194))

(assert (= (and b!2807194 res!1169401) b!2807191))

(declare-fun m!3236259 () Bool)

(assert (=> b!2807191 m!3236259))

(assert (=> b!2807191 m!3235581))

(declare-fun m!3236261 () Bool)

(assert (=> b!2807191 m!3236261))

(assert (=> b!2807191 m!3236261))

(declare-fun m!3236263 () Bool)

(assert (=> b!2807191 m!3236263))

(declare-fun m!3236265 () Bool)

(assert (=> d!814810 m!3236265))

(assert (=> d!814810 m!3235581))

(assert (=> d!814810 m!3235581))

(declare-fun m!3236267 () Bool)

(assert (=> d!814810 m!3236267))

(declare-fun m!3236269 () Bool)

(assert (=> b!2807190 m!3236269))

(declare-fun m!3236271 () Bool)

(assert (=> b!2807193 m!3236271))

(assert (=> b!2807193 m!3235581))

(declare-fun m!3236273 () Bool)

(assert (=> b!2807193 m!3236273))

(declare-fun m!3236275 () Bool)

(assert (=> b!2807194 m!3236275))

(assert (=> b!2807194 m!3235581))

(assert (=> b!2807194 m!3236261))

(assert (=> b!2807194 m!3236261))

(assert (=> b!2807194 m!3236263))

(assert (=> d!814648 d!814810))

(declare-fun d!814812 () Bool)

(declare-fun list!12255 (Conc!10129) List!32827)

(assert (=> d!814812 (= (list!12250 (singletonSeq!2115 (h!38147 l!5055))) (list!12255 (c!454716 (singletonSeq!2115 (h!38147 l!5055)))))))

(declare-fun bs!516170 () Bool)

(assert (= bs!516170 d!814812))

(declare-fun m!3236277 () Bool)

(assert (=> bs!516170 m!3236277))

(assert (=> d!814648 d!814812))

(declare-fun d!814814 () Bool)

(assert (=> d!814814 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))) (list!12255 (c!454716 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))))

(declare-fun bs!516171 () Bool)

(assert (= bs!516171 d!814814))

(declare-fun m!3236279 () Bool)

(assert (=> bs!516171 m!3236279))

(assert (=> d!814648 d!814814))

(declare-fun d!814816 () Bool)

(declare-fun e!1774866 () Bool)

(assert (=> d!814816 e!1774866))

(declare-fun res!1169406 () Bool)

(assert (=> d!814816 (=> (not res!1169406) (not e!1774866))))

(declare-fun lt!1003257 () BalanceConc!19872)

(assert (=> d!814816 (= res!1169406 (= (list!12250 lt!1003257) (Cons!32727 (h!38147 l!5055) Nil!32727)))))

(declare-fun singleton!935 (Token!9186) BalanceConc!19872)

(assert (=> d!814816 (= lt!1003257 (singleton!935 (h!38147 l!5055)))))

(assert (=> d!814816 (= (singletonSeq!2115 (h!38147 l!5055)) lt!1003257)))

(declare-fun b!2807197 () Bool)

(declare-fun isBalanced!3080 (Conc!10129) Bool)

(assert (=> b!2807197 (= e!1774866 (isBalanced!3080 (c!454716 lt!1003257)))))

(assert (= (and d!814816 res!1169406) b!2807197))

(declare-fun m!3236281 () Bool)

(assert (=> d!814816 m!3236281))

(declare-fun m!3236283 () Bool)

(assert (=> d!814816 m!3236283))

(declare-fun m!3236285 () Bool)

(assert (=> b!2807197 m!3236285))

(assert (=> d!814648 d!814816))

(declare-fun d!814818 () Bool)

(declare-fun lt!1003260 () Int)

(declare-fun size!25528 (List!32827) Int)

(assert (=> d!814818 (= lt!1003260 (size!25528 (list!12250 (_1!19748 lt!1003119))))))

(declare-fun size!25529 (Conc!10129) Int)

(assert (=> d!814818 (= lt!1003260 (size!25529 (c!454716 (_1!19748 lt!1003119))))))

(assert (=> d!814818 (= (size!25523 (_1!19748 lt!1003119)) lt!1003260)))

(declare-fun bs!516172 () Bool)

(assert (= bs!516172 d!814818))

(declare-fun m!3236287 () Bool)

(assert (=> bs!516172 m!3236287))

(assert (=> bs!516172 m!3236287))

(declare-fun m!3236289 () Bool)

(assert (=> bs!516172 m!3236289))

(declare-fun m!3236291 () Bool)

(assert (=> bs!516172 m!3236291))

(assert (=> d!814648 d!814818))

(declare-fun d!814820 () Bool)

(declare-fun lt!1003263 () BalanceConc!19868)

(assert (=> d!814820 (= (list!12251 lt!1003263) (printList!1197 thiss!19710 (list!12250 (singletonSeq!2115 (h!38147 l!5055)))))))

(declare-fun printTailRec!1158 (LexerInterface!4483 BalanceConc!19872 Int BalanceConc!19868) BalanceConc!19868)

(assert (=> d!814820 (= lt!1003263 (printTailRec!1158 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)) 0 (BalanceConc!19869 Empty!10127)))))

(assert (=> d!814820 (= (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))) lt!1003263)))

(declare-fun bs!516173 () Bool)

(assert (= bs!516173 d!814820))

(declare-fun m!3236293 () Bool)

(assert (=> bs!516173 m!3236293))

(assert (=> bs!516173 m!3235573))

(assert (=> bs!516173 m!3235579))

(assert (=> bs!516173 m!3235579))

(declare-fun m!3236295 () Bool)

(assert (=> bs!516173 m!3236295))

(assert (=> bs!516173 m!3235573))

(declare-fun m!3236297 () Bool)

(assert (=> bs!516173 m!3236297))

(assert (=> d!814648 d!814820))

(assert (=> d!814648 d!814702))

(declare-fun d!814822 () Bool)

(declare-fun c!454761 () Bool)

(assert (=> d!814822 (= c!454761 (is-Cons!32727 lt!1003147))))

(declare-fun e!1774867 () List!32825)

(assert (=> d!814822 (= (printList!1197 thiss!19710 lt!1003147) e!1774867)))

(declare-fun b!2807198 () Bool)

(assert (=> b!2807198 (= e!1774867 (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003147))) (printList!1197 thiss!19710 (t!229253 lt!1003147))))))

(declare-fun b!2807199 () Bool)

(assert (=> b!2807199 (= e!1774867 Nil!32725)))

(assert (= (and d!814822 c!454761) b!2807198))

(assert (= (and d!814822 (not c!454761)) b!2807199))

(declare-fun m!3236299 () Bool)

(assert (=> b!2807198 m!3236299))

(assert (=> b!2807198 m!3236299))

(declare-fun m!3236301 () Bool)

(assert (=> b!2807198 m!3236301))

(declare-fun m!3236303 () Bool)

(assert (=> b!2807198 m!3236303))

(assert (=> b!2807198 m!3236301))

(assert (=> b!2807198 m!3236303))

(declare-fun m!3236305 () Bool)

(assert (=> b!2807198 m!3236305))

(assert (=> d!814656 d!814822))

(declare-fun d!814824 () Bool)

(declare-fun c!454762 () Bool)

(assert (=> d!814824 (= c!454762 (is-Cons!32727 l!5055))))

(declare-fun e!1774868 () List!32825)

(assert (=> d!814824 (= (printWithSeparatorTokenList!73 thiss!19710 l!5055 separatorToken!283) e!1774868)))

(declare-fun b!2807200 () Bool)

(assert (=> b!2807200 (= e!1774868 (++!8038 (++!8038 (list!12251 (charsOf!3037 (h!38147 l!5055))) (list!12251 (charsOf!3037 separatorToken!283))) (printWithSeparatorTokenList!73 thiss!19710 (t!229253 l!5055) separatorToken!283)))))

(declare-fun b!2807201 () Bool)

(assert (=> b!2807201 (= e!1774868 Nil!32725)))

(assert (= (and d!814824 c!454762) b!2807200))

(assert (= (and d!814824 (not c!454762)) b!2807201))

(assert (=> b!2807200 m!3235639))

(assert (=> b!2807200 m!3235647))

(declare-fun m!3236307 () Bool)

(assert (=> b!2807200 m!3236307))

(assert (=> b!2807200 m!3235645))

(assert (=> b!2807200 m!3235645))

(assert (=> b!2807200 m!3235647))

(assert (=> b!2807200 m!3235637))

(assert (=> b!2807200 m!3235637))

(assert (=> b!2807200 m!3235639))

(assert (=> b!2807200 m!3235707))

(assert (=> b!2807200 m!3236307))

(assert (=> b!2807200 m!3235707))

(declare-fun m!3236309 () Bool)

(assert (=> b!2807200 m!3236309))

(assert (=> d!814656 d!814824))

(declare-fun d!814826 () Bool)

(declare-fun e!1774869 () Bool)

(assert (=> d!814826 e!1774869))

(declare-fun res!1169407 () Bool)

(assert (=> d!814826 (=> (not res!1169407) (not e!1774869))))

(declare-fun lt!1003264 () List!32825)

(assert (=> d!814826 (= res!1169407 (= (content!4558 lt!1003264) (set.union (content!4558 (list!12251 (charsOf!3037 (h!38147 lt!1003146)))) (content!4558 (printList!1197 thiss!19710 (t!229253 lt!1003146))))))))

(declare-fun e!1774870 () List!32825)

(assert (=> d!814826 (= lt!1003264 e!1774870)))

(declare-fun c!454763 () Bool)

(assert (=> d!814826 (= c!454763 (is-Nil!32725 (list!12251 (charsOf!3037 (h!38147 lt!1003146)))))))

(assert (=> d!814826 (= (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003146))) (printList!1197 thiss!19710 (t!229253 lt!1003146))) lt!1003264)))

(declare-fun b!2807205 () Bool)

(assert (=> b!2807205 (= e!1774869 (or (not (= (printList!1197 thiss!19710 (t!229253 lt!1003146)) Nil!32725)) (= lt!1003264 (list!12251 (charsOf!3037 (h!38147 lt!1003146))))))))

(declare-fun b!2807203 () Bool)

(assert (=> b!2807203 (= e!1774870 (Cons!32725 (h!38145 (list!12251 (charsOf!3037 (h!38147 lt!1003146)))) (++!8038 (t!229251 (list!12251 (charsOf!3037 (h!38147 lt!1003146)))) (printList!1197 thiss!19710 (t!229253 lt!1003146)))))))

(declare-fun b!2807202 () Bool)

(assert (=> b!2807202 (= e!1774870 (printList!1197 thiss!19710 (t!229253 lt!1003146)))))

(declare-fun b!2807204 () Bool)

(declare-fun res!1169408 () Bool)

(assert (=> b!2807204 (=> (not res!1169408) (not e!1774869))))

(assert (=> b!2807204 (= res!1169408 (= (size!25524 lt!1003264) (+ (size!25524 (list!12251 (charsOf!3037 (h!38147 lt!1003146)))) (size!25524 (printList!1197 thiss!19710 (t!229253 lt!1003146))))))))

(assert (= (and d!814826 c!454763) b!2807202))

(assert (= (and d!814826 (not c!454763)) b!2807203))

(assert (= (and d!814826 res!1169407) b!2807204))

(assert (= (and b!2807204 res!1169408) b!2807205))

(declare-fun m!3236311 () Bool)

(assert (=> d!814826 m!3236311))

(assert (=> d!814826 m!3235611))

(declare-fun m!3236313 () Bool)

(assert (=> d!814826 m!3236313))

(assert (=> d!814826 m!3235613))

(declare-fun m!3236315 () Bool)

(assert (=> d!814826 m!3236315))

(assert (=> b!2807203 m!3235613))

(declare-fun m!3236317 () Bool)

(assert (=> b!2807203 m!3236317))

(declare-fun m!3236319 () Bool)

(assert (=> b!2807204 m!3236319))

(assert (=> b!2807204 m!3235611))

(declare-fun m!3236321 () Bool)

(assert (=> b!2807204 m!3236321))

(assert (=> b!2807204 m!3235613))

(declare-fun m!3236323 () Bool)

(assert (=> b!2807204 m!3236323))

(assert (=> b!2806804 d!814826))

(declare-fun d!814828 () Bool)

(assert (=> d!814828 (= (list!12251 (charsOf!3037 (h!38147 lt!1003146))) (list!12254 (c!454684 (charsOf!3037 (h!38147 lt!1003146)))))))

(declare-fun bs!516174 () Bool)

(assert (= bs!516174 d!814828))

(declare-fun m!3236325 () Bool)

(assert (=> bs!516174 m!3236325))

(assert (=> b!2806804 d!814828))

(declare-fun d!814830 () Bool)

(declare-fun lt!1003265 () BalanceConc!19868)

(assert (=> d!814830 (= (list!12251 lt!1003265) (originalCharacters!5624 (h!38147 lt!1003146)))))

(assert (=> d!814830 (= lt!1003265 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146)))) (value!157333 (h!38147 lt!1003146))))))

(assert (=> d!814830 (= (charsOf!3037 (h!38147 lt!1003146)) lt!1003265)))

(declare-fun b_lambda!83893 () Bool)

(assert (=> (not b_lambda!83893) (not d!814830)))

(declare-fun t!229321 () Bool)

(declare-fun tb!153223 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229321) tb!153223))

(declare-fun b!2807206 () Bool)

(declare-fun e!1774871 () Bool)

(declare-fun tp!895792 () Bool)

(assert (=> b!2807206 (= e!1774871 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146)))) (value!157333 (h!38147 lt!1003146))))) tp!895792))))

(declare-fun result!190438 () Bool)

(assert (=> tb!153223 (= result!190438 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146)))) (value!157333 (h!38147 lt!1003146)))) e!1774871))))

(assert (= tb!153223 b!2807206))

(declare-fun m!3236327 () Bool)

(assert (=> b!2807206 m!3236327))

(declare-fun m!3236329 () Bool)

(assert (=> tb!153223 m!3236329))

(assert (=> d!814830 t!229321))

(declare-fun b_and!204869 () Bool)

(assert (= b_and!204867 (and (=> t!229321 result!190438) b_and!204869)))

(declare-fun tb!153225 () Bool)

(declare-fun t!229323 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229323) tb!153225))

(declare-fun result!190440 () Bool)

(assert (= result!190440 result!190438))

(assert (=> d!814830 t!229323))

(declare-fun b_and!204871 () Bool)

(assert (= b_and!204863 (and (=> t!229323 result!190440) b_and!204871)))

(declare-fun t!229325 () Bool)

(declare-fun tb!153227 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229325) tb!153227))

(declare-fun result!190442 () Bool)

(assert (= result!190442 result!190438))

(assert (=> d!814830 t!229325))

(declare-fun b_and!204873 () Bool)

(assert (= b_and!204861 (and (=> t!229325 result!190442) b_and!204873)))

(declare-fun t!229327 () Bool)

(declare-fun tb!153229 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229327) tb!153229))

(declare-fun result!190444 () Bool)

(assert (= result!190444 result!190438))

(assert (=> d!814830 t!229327))

(declare-fun b_and!204875 () Bool)

(assert (= b_and!204865 (and (=> t!229327 result!190444) b_and!204875)))

(declare-fun t!229329 () Bool)

(declare-fun tb!153231 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229329) tb!153231))

(declare-fun result!190446 () Bool)

(assert (= result!190446 result!190438))

(assert (=> d!814830 t!229329))

(declare-fun b_and!204877 () Bool)

(assert (= b_and!204859 (and (=> t!229329 result!190446) b_and!204877)))

(declare-fun m!3236331 () Bool)

(assert (=> d!814830 m!3236331))

(declare-fun m!3236333 () Bool)

(assert (=> d!814830 m!3236333))

(assert (=> b!2806804 d!814830))

(declare-fun d!814832 () Bool)

(declare-fun c!454764 () Bool)

(assert (=> d!814832 (= c!454764 (is-Cons!32727 (t!229253 lt!1003146)))))

(declare-fun e!1774872 () List!32825)

(assert (=> d!814832 (= (printList!1197 thiss!19710 (t!229253 lt!1003146)) e!1774872)))

(declare-fun b!2807207 () Bool)

(assert (=> b!2807207 (= e!1774872 (++!8038 (list!12251 (charsOf!3037 (h!38147 (t!229253 lt!1003146)))) (printList!1197 thiss!19710 (t!229253 (t!229253 lt!1003146)))))))

(declare-fun b!2807208 () Bool)

(assert (=> b!2807208 (= e!1774872 Nil!32725)))

(assert (= (and d!814832 c!454764) b!2807207))

(assert (= (and d!814832 (not c!454764)) b!2807208))

(declare-fun m!3236335 () Bool)

(assert (=> b!2807207 m!3236335))

(assert (=> b!2807207 m!3236335))

(declare-fun m!3236337 () Bool)

(assert (=> b!2807207 m!3236337))

(declare-fun m!3236339 () Bool)

(assert (=> b!2807207 m!3236339))

(assert (=> b!2807207 m!3236337))

(assert (=> b!2807207 m!3236339))

(declare-fun m!3236341 () Bool)

(assert (=> b!2807207 m!3236341))

(assert (=> b!2806804 d!814832))

(declare-fun bs!516175 () Bool)

(declare-fun d!814834 () Bool)

(assert (= bs!516175 (and d!814834 d!814808)))

(declare-fun lambda!103117 () Int)

(assert (=> bs!516175 (= (and (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (= (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (h!38146 rules!2540))))) (= lambda!103117 lambda!103116))))

(assert (=> d!814834 true))

(assert (=> d!814834 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) (dynLambda!13709 order!17387 lambda!103117))))

(assert (=> d!814834 true))

(assert (=> d!814834 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))) (dynLambda!13709 order!17387 lambda!103117))))

(assert (=> d!814834 (= (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))) (Forall!1221 lambda!103117))))

(declare-fun bs!516176 () Bool)

(assert (= bs!516176 d!814834))

(declare-fun m!3236343 () Bool)

(assert (=> bs!516176 m!3236343))

(assert (=> d!814686 d!814834))

(declare-fun d!814836 () Bool)

(declare-fun e!1774873 () Bool)

(assert (=> d!814836 e!1774873))

(declare-fun res!1169409 () Bool)

(assert (=> d!814836 (=> (not res!1169409) (not e!1774873))))

(declare-fun lt!1003266 () List!32825)

(assert (=> d!814836 (= res!1169409 (= (content!4558 lt!1003266) (set.union (content!4558 (list!12251 (charsOf!3037 (h!38147 lt!1003155)))) (content!4558 (printList!1197 thiss!19710 (t!229253 lt!1003155))))))))

(declare-fun e!1774874 () List!32825)

(assert (=> d!814836 (= lt!1003266 e!1774874)))

(declare-fun c!454765 () Bool)

(assert (=> d!814836 (= c!454765 (is-Nil!32725 (list!12251 (charsOf!3037 (h!38147 lt!1003155)))))))

(assert (=> d!814836 (= (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003155))) (printList!1197 thiss!19710 (t!229253 lt!1003155))) lt!1003266)))

(declare-fun b!2807212 () Bool)

(assert (=> b!2807212 (= e!1774873 (or (not (= (printList!1197 thiss!19710 (t!229253 lt!1003155)) Nil!32725)) (= lt!1003266 (list!12251 (charsOf!3037 (h!38147 lt!1003155))))))))

(declare-fun b!2807210 () Bool)

(assert (=> b!2807210 (= e!1774874 (Cons!32725 (h!38145 (list!12251 (charsOf!3037 (h!38147 lt!1003155)))) (++!8038 (t!229251 (list!12251 (charsOf!3037 (h!38147 lt!1003155)))) (printList!1197 thiss!19710 (t!229253 lt!1003155)))))))

(declare-fun b!2807209 () Bool)

(assert (=> b!2807209 (= e!1774874 (printList!1197 thiss!19710 (t!229253 lt!1003155)))))

(declare-fun b!2807211 () Bool)

(declare-fun res!1169410 () Bool)

(assert (=> b!2807211 (=> (not res!1169410) (not e!1774873))))

(assert (=> b!2807211 (= res!1169410 (= (size!25524 lt!1003266) (+ (size!25524 (list!12251 (charsOf!3037 (h!38147 lt!1003155)))) (size!25524 (printList!1197 thiss!19710 (t!229253 lt!1003155))))))))

(assert (= (and d!814836 c!454765) b!2807209))

(assert (= (and d!814836 (not c!454765)) b!2807210))

(assert (= (and d!814836 res!1169409) b!2807211))

(assert (= (and b!2807211 res!1169410) b!2807212))

(declare-fun m!3236345 () Bool)

(assert (=> d!814836 m!3236345))

(assert (=> d!814836 m!3235665))

(declare-fun m!3236347 () Bool)

(assert (=> d!814836 m!3236347))

(assert (=> d!814836 m!3235667))

(declare-fun m!3236349 () Bool)

(assert (=> d!814836 m!3236349))

(assert (=> b!2807210 m!3235667))

(declare-fun m!3236351 () Bool)

(assert (=> b!2807210 m!3236351))

(declare-fun m!3236353 () Bool)

(assert (=> b!2807211 m!3236353))

(assert (=> b!2807211 m!3235665))

(declare-fun m!3236355 () Bool)

(assert (=> b!2807211 m!3236355))

(assert (=> b!2807211 m!3235667))

(declare-fun m!3236357 () Bool)

(assert (=> b!2807211 m!3236357))

(assert (=> b!2806819 d!814836))

(declare-fun d!814838 () Bool)

(assert (=> d!814838 (= (list!12251 (charsOf!3037 (h!38147 lt!1003155))) (list!12254 (c!454684 (charsOf!3037 (h!38147 lt!1003155)))))))

(declare-fun bs!516177 () Bool)

(assert (= bs!516177 d!814838))

(declare-fun m!3236359 () Bool)

(assert (=> bs!516177 m!3236359))

(assert (=> b!2806819 d!814838))

(declare-fun d!814840 () Bool)

(declare-fun lt!1003267 () BalanceConc!19868)

(assert (=> d!814840 (= (list!12251 lt!1003267) (originalCharacters!5624 (h!38147 lt!1003155)))))

(assert (=> d!814840 (= lt!1003267 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155)))) (value!157333 (h!38147 lt!1003155))))))

(assert (=> d!814840 (= (charsOf!3037 (h!38147 lt!1003155)) lt!1003267)))

(declare-fun b_lambda!83895 () Bool)

(assert (=> (not b_lambda!83895) (not d!814840)))

(declare-fun tb!153233 () Bool)

(declare-fun t!229331 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229331) tb!153233))

(declare-fun b!2807213 () Bool)

(declare-fun e!1774875 () Bool)

(declare-fun tp!895793 () Bool)

(assert (=> b!2807213 (= e!1774875 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155)))) (value!157333 (h!38147 lt!1003155))))) tp!895793))))

(declare-fun result!190448 () Bool)

(assert (=> tb!153233 (= result!190448 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155)))) (value!157333 (h!38147 lt!1003155)))) e!1774875))))

(assert (= tb!153233 b!2807213))

(declare-fun m!3236361 () Bool)

(assert (=> b!2807213 m!3236361))

(declare-fun m!3236363 () Bool)

(assert (=> tb!153233 m!3236363))

(assert (=> d!814840 t!229331))

(declare-fun b_and!204879 () Bool)

(assert (= b_and!204875 (and (=> t!229331 result!190448) b_and!204879)))

(declare-fun tb!153235 () Bool)

(declare-fun t!229333 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229333) tb!153235))

(declare-fun result!190450 () Bool)

(assert (= result!190450 result!190448))

(assert (=> d!814840 t!229333))

(declare-fun b_and!204881 () Bool)

(assert (= b_and!204869 (and (=> t!229333 result!190450) b_and!204881)))

(declare-fun t!229335 () Bool)

(declare-fun tb!153237 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229335) tb!153237))

(declare-fun result!190452 () Bool)

(assert (= result!190452 result!190448))

(assert (=> d!814840 t!229335))

(declare-fun b_and!204883 () Bool)

(assert (= b_and!204871 (and (=> t!229335 result!190452) b_and!204883)))

(declare-fun tb!153239 () Bool)

(declare-fun t!229337 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229337) tb!153239))

(declare-fun result!190454 () Bool)

(assert (= result!190454 result!190448))

(assert (=> d!814840 t!229337))

(declare-fun b_and!204885 () Bool)

(assert (= b_and!204873 (and (=> t!229337 result!190454) b_and!204885)))

(declare-fun t!229339 () Bool)

(declare-fun tb!153241 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229339) tb!153241))

(declare-fun result!190456 () Bool)

(assert (= result!190456 result!190448))

(assert (=> d!814840 t!229339))

(declare-fun b_and!204887 () Bool)

(assert (= b_and!204877 (and (=> t!229339 result!190456) b_and!204887)))

(declare-fun m!3236365 () Bool)

(assert (=> d!814840 m!3236365))

(declare-fun m!3236367 () Bool)

(assert (=> d!814840 m!3236367))

(assert (=> b!2806819 d!814840))

(declare-fun d!814842 () Bool)

(declare-fun c!454766 () Bool)

(assert (=> d!814842 (= c!454766 (is-Cons!32727 (t!229253 lt!1003155)))))

(declare-fun e!1774876 () List!32825)

(assert (=> d!814842 (= (printList!1197 thiss!19710 (t!229253 lt!1003155)) e!1774876)))

(declare-fun b!2807214 () Bool)

(assert (=> b!2807214 (= e!1774876 (++!8038 (list!12251 (charsOf!3037 (h!38147 (t!229253 lt!1003155)))) (printList!1197 thiss!19710 (t!229253 (t!229253 lt!1003155)))))))

(declare-fun b!2807215 () Bool)

(assert (=> b!2807215 (= e!1774876 Nil!32725)))

(assert (= (and d!814842 c!454766) b!2807214))

(assert (= (and d!814842 (not c!454766)) b!2807215))

(declare-fun m!3236369 () Bool)

(assert (=> b!2807214 m!3236369))

(assert (=> b!2807214 m!3236369))

(declare-fun m!3236371 () Bool)

(assert (=> b!2807214 m!3236371))

(declare-fun m!3236373 () Bool)

(assert (=> b!2807214 m!3236373))

(assert (=> b!2807214 m!3236371))

(assert (=> b!2807214 m!3236373))

(declare-fun m!3236375 () Bool)

(assert (=> b!2807214 m!3236375))

(assert (=> b!2806819 d!814842))

(declare-fun d!814844 () Bool)

(declare-fun lt!1003268 () Bool)

(declare-fun e!1774878 () Bool)

(assert (=> d!814844 (= lt!1003268 e!1774878)))

(declare-fun res!1169411 () Bool)

(assert (=> d!814844 (=> (not res!1169411) (not e!1774878))))

(assert (=> d!814844 (= res!1169411 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))) (list!12250 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))))

(declare-fun e!1774877 () Bool)

(assert (=> d!814844 (= lt!1003268 e!1774877)))

(declare-fun res!1169412 () Bool)

(assert (=> d!814844 (=> (not res!1169412) (not e!1774877))))

(declare-fun lt!1003269 () tuple2!33310)

(assert (=> d!814844 (= res!1169412 (= (size!25523 (_1!19748 lt!1003269)) 1))))

(assert (=> d!814844 (= lt!1003269 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))))

(assert (=> d!814844 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814844 (= (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))) lt!1003268)))

(declare-fun b!2807216 () Bool)

(declare-fun res!1169413 () Bool)

(assert (=> b!2807216 (=> (not res!1169413) (not e!1774877))))

(assert (=> b!2807216 (= res!1169413 (= (apply!7642 (_1!19748 lt!1003269) 0) (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(declare-fun b!2807217 () Bool)

(assert (=> b!2807217 (= e!1774877 (isEmpty!18189 (_2!19748 lt!1003269)))))

(declare-fun b!2807218 () Bool)

(assert (=> b!2807218 (= e!1774878 (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))))))

(assert (= (and d!814844 res!1169412) b!2807216))

(assert (= (and b!2807216 res!1169413) b!2807217))

(assert (= (and d!814844 res!1169411) b!2807218))

(declare-fun m!3236377 () Bool)

(assert (=> d!814844 m!3236377))

(declare-fun m!3236379 () Bool)

(assert (=> d!814844 m!3236379))

(declare-fun m!3236381 () Bool)

(assert (=> d!814844 m!3236381))

(assert (=> d!814844 m!3236377))

(declare-fun m!3236383 () Bool)

(assert (=> d!814844 m!3236383))

(assert (=> d!814844 m!3235487))

(declare-fun m!3236385 () Bool)

(assert (=> d!814844 m!3236385))

(declare-fun m!3236387 () Bool)

(assert (=> d!814844 m!3236387))

(assert (=> d!814844 m!3236377))

(assert (=> d!814844 m!3236385))

(declare-fun m!3236389 () Bool)

(assert (=> b!2807216 m!3236389))

(declare-fun m!3236391 () Bool)

(assert (=> b!2807217 m!3236391))

(assert (=> b!2807218 m!3236377))

(assert (=> b!2807218 m!3236377))

(assert (=> b!2807218 m!3236385))

(assert (=> b!2807218 m!3236385))

(assert (=> b!2807218 m!3236387))

(declare-fun m!3236393 () Bool)

(assert (=> b!2807218 m!3236393))

(assert (=> b!2806841 d!814844))

(declare-fun d!814846 () Bool)

(declare-fun c!454769 () Bool)

(assert (=> d!814846 (= c!454769 (is-Node!10127 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(declare-fun e!1774883 () Bool)

(assert (=> d!814846 (= (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))) e!1774883)))

(declare-fun b!2807225 () Bool)

(declare-fun inv!44411 (Conc!10127) Bool)

(assert (=> b!2807225 (= e!1774883 (inv!44411 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(declare-fun b!2807226 () Bool)

(declare-fun e!1774884 () Bool)

(assert (=> b!2807226 (= e!1774883 e!1774884)))

(declare-fun res!1169416 () Bool)

(assert (=> b!2807226 (= res!1169416 (not (is-Leaf!15427 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))))))

(assert (=> b!2807226 (=> res!1169416 e!1774884)))

(declare-fun b!2807227 () Bool)

(declare-fun inv!44412 (Conc!10127) Bool)

(assert (=> b!2807227 (= e!1774884 (inv!44412 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(assert (= (and d!814846 c!454769) b!2807225))

(assert (= (and d!814846 (not c!454769)) b!2807226))

(assert (= (and b!2807226 (not res!1169416)) b!2807227))

(declare-fun m!3236395 () Bool)

(assert (=> b!2807225 m!3236395))

(declare-fun m!3236397 () Bool)

(assert (=> b!2807227 m!3236397))

(assert (=> b!2806861 d!814846))

(declare-fun d!814848 () Bool)

(assert (=> d!814848 (= (list!12251 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))) (list!12254 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(declare-fun bs!516178 () Bool)

(assert (= bs!516178 d!814848))

(declare-fun m!3236399 () Bool)

(assert (=> bs!516178 m!3236399))

(assert (=> b!2806873 d!814848))

(declare-fun d!814850 () Bool)

(declare-fun lt!1003272 () Int)

(assert (=> d!814850 (>= lt!1003272 0)))

(declare-fun e!1774887 () Int)

(assert (=> d!814850 (= lt!1003272 e!1774887)))

(declare-fun c!454772 () Bool)

(assert (=> d!814850 (= c!454772 (is-Nil!32725 (originalCharacters!5624 (h!38147 l!5055))))))

(assert (=> d!814850 (= (size!25524 (originalCharacters!5624 (h!38147 l!5055))) lt!1003272)))

(declare-fun b!2807232 () Bool)

(assert (=> b!2807232 (= e!1774887 0)))

(declare-fun b!2807233 () Bool)

(assert (=> b!2807233 (= e!1774887 (+ 1 (size!25524 (t!229251 (originalCharacters!5624 (h!38147 l!5055))))))))

(assert (= (and d!814850 c!454772) b!2807232))

(assert (= (and d!814850 (not c!454772)) b!2807233))

(declare-fun m!3236401 () Bool)

(assert (=> b!2807233 m!3236401))

(assert (=> b!2806856 d!814850))

(declare-fun d!814852 () Bool)

(assert (=> d!814852 true))

(declare-fun lt!1003275 () Bool)

(declare-fun rulesValidInductive!1714 (LexerInterface!4483 List!32826) Bool)

(assert (=> d!814852 (= lt!1003275 (rulesValidInductive!1714 thiss!19710 rules!2540))))

(declare-fun lambda!103120 () Int)

(declare-fun forall!6731 (List!32826 Int) Bool)

(assert (=> d!814852 (= lt!1003275 (forall!6731 rules!2540 lambda!103120))))

(assert (=> d!814852 (= (rulesValid!1807 thiss!19710 rules!2540) lt!1003275)))

(declare-fun bs!516179 () Bool)

(assert (= bs!516179 d!814852))

(declare-fun m!3236403 () Bool)

(assert (=> bs!516179 m!3236403))

(declare-fun m!3236405 () Bool)

(assert (=> bs!516179 m!3236405))

(assert (=> d!814698 d!814852))

(declare-fun d!814854 () Bool)

(declare-fun c!454773 () Bool)

(assert (=> d!814854 (= c!454773 (is-Cons!32727 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)))))

(declare-fun e!1774888 () List!32825)

(assert (=> d!814854 (= (printList!1197 thiss!19710 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)) e!1774888)))

(declare-fun b!2807236 () Bool)

(assert (=> b!2807236 (= e!1774888 (++!8038 (list!12251 (charsOf!3037 (h!38147 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)))) (printList!1197 thiss!19710 (t!229253 ($colon$colon!545 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283) separatorToken!283)))))))

(declare-fun b!2807237 () Bool)

(assert (=> b!2807237 (= e!1774888 Nil!32725)))

(assert (= (and d!814854 c!454773) b!2807236))

(assert (= (and d!814854 (not c!454773)) b!2807237))

(declare-fun m!3236407 () Bool)

(assert (=> b!2807236 m!3236407))

(assert (=> b!2807236 m!3236407))

(declare-fun m!3236409 () Bool)

(assert (=> b!2807236 m!3236409))

(declare-fun m!3236411 () Bool)

(assert (=> b!2807236 m!3236411))

(assert (=> b!2807236 m!3236409))

(assert (=> b!2807236 m!3236411))

(declare-fun m!3236413 () Bool)

(assert (=> b!2807236 m!3236413))

(assert (=> b!2806800 d!814854))

(assert (=> b!2806800 d!814754))

(assert (=> b!2806800 d!814660))

(declare-fun d!814856 () Bool)

(declare-fun lt!1003278 () Bool)

(assert (=> d!814856 (= lt!1003278 (isEmpty!18190 (list!12251 (_2!19748 lt!1003168))))))

(declare-fun isEmpty!18194 (Conc!10127) Bool)

(assert (=> d!814856 (= lt!1003278 (isEmpty!18194 (c!454684 (_2!19748 lt!1003168))))))

(assert (=> d!814856 (= (isEmpty!18189 (_2!19748 lt!1003168)) lt!1003278)))

(declare-fun bs!516180 () Bool)

(assert (= bs!516180 d!814856))

(declare-fun m!3236415 () Bool)

(assert (=> bs!516180 m!3236415))

(assert (=> bs!516180 m!3236415))

(declare-fun m!3236417 () Bool)

(assert (=> bs!516180 m!3236417))

(declare-fun m!3236419 () Bool)

(assert (=> bs!516180 m!3236419))

(assert (=> b!2806868 d!814856))

(declare-fun d!814858 () Bool)

(declare-fun lt!1003279 () Bool)

(assert (=> d!814858 (= lt!1003279 (isEmpty!18190 (list!12251 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))))

(assert (=> d!814858 (= lt!1003279 (isEmpty!18194 (c!454684 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055))))))))))

(assert (=> d!814858 (= (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 l!5055)))))) lt!1003279)))

(declare-fun bs!516181 () Bool)

(assert (= bs!516181 d!814858))

(declare-fun m!3236421 () Bool)

(assert (=> bs!516181 m!3236421))

(assert (=> bs!516181 m!3236421))

(declare-fun m!3236423 () Bool)

(assert (=> bs!516181 m!3236423))

(declare-fun m!3236425 () Bool)

(assert (=> bs!516181 m!3236425))

(assert (=> b!2806750 d!814858))

(assert (=> b!2806750 d!814810))

(assert (=> b!2806750 d!814820))

(assert (=> b!2806750 d!814816))

(assert (=> d!814662 d!814678))

(assert (=> d!814662 d!814660))

(declare-fun d!814860 () Bool)

(assert (=> d!814860 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))

(assert (=> d!814860 true))

(declare-fun _$32!430 () Unit!46781)

(assert (=> d!814860 (= (choose!16549 thiss!19710 rules!2540 (t!229253 l!5055) separatorToken!283) _$32!430)))

(declare-fun bs!516182 () Bool)

(assert (= bs!516182 d!814860))

(assert (=> bs!516182 m!3235457))

(assert (=> bs!516182 m!3235457))

(assert (=> bs!516182 m!3235459))

(assert (=> d!814662 d!814860))

(assert (=> d!814662 d!814702))

(declare-fun d!814862 () Bool)

(assert (=> d!814862 (= (inv!44400 (tag!5396 (rule!7320 (h!38147 (t!229253 l!5055))))) (= (mod (str.len (value!157332 (tag!5396 (rule!7320 (h!38147 (t!229253 l!5055)))))) 2) 0))))

(assert (=> b!2806934 d!814862))

(declare-fun d!814864 () Bool)

(declare-fun res!1169423 () Bool)

(declare-fun e!1774889 () Bool)

(assert (=> d!814864 (=> (not res!1169423) (not e!1774889))))

(assert (=> d!814864 (= res!1169423 (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))))))

(assert (=> d!814864 (= (inv!44403 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) e!1774889)))

(declare-fun b!2807238 () Bool)

(assert (=> b!2807238 (= e!1774889 (equivClasses!1920 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))))))

(assert (= (and d!814864 res!1169423) b!2807238))

(declare-fun m!3236427 () Bool)

(assert (=> d!814864 m!3236427))

(declare-fun m!3236429 () Bool)

(assert (=> b!2807238 m!3236429))

(assert (=> b!2806934 d!814864))

(declare-fun d!814866 () Bool)

(declare-fun lt!1003282 () Token!9186)

(declare-fun apply!7646 (List!32827 Int) Token!9186)

(assert (=> d!814866 (= lt!1003282 (apply!7646 (list!12250 (_1!19748 lt!1003119)) 0))))

(declare-fun apply!7647 (Conc!10129 Int) Token!9186)

(assert (=> d!814866 (= lt!1003282 (apply!7647 (c!454716 (_1!19748 lt!1003119)) 0))))

(declare-fun e!1774892 () Bool)

(assert (=> d!814866 e!1774892))

(declare-fun res!1169426 () Bool)

(assert (=> d!814866 (=> (not res!1169426) (not e!1774892))))

(assert (=> d!814866 (= res!1169426 (<= 0 0))))

(assert (=> d!814866 (= (apply!7642 (_1!19748 lt!1003119) 0) lt!1003282)))

(declare-fun b!2807241 () Bool)

(assert (=> b!2807241 (= e!1774892 (< 0 (size!25523 (_1!19748 lt!1003119))))))

(assert (= (and d!814866 res!1169426) b!2807241))

(assert (=> d!814866 m!3236287))

(assert (=> d!814866 m!3236287))

(declare-fun m!3236431 () Bool)

(assert (=> d!814866 m!3236431))

(declare-fun m!3236433 () Bool)

(assert (=> d!814866 m!3236433))

(assert (=> b!2807241 m!3235575))

(assert (=> b!2806748 d!814866))

(declare-fun d!814868 () Bool)

(declare-fun isBalanced!3081 (Conc!10127) Bool)

(assert (=> d!814868 (= (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))) (isBalanced!3081 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(declare-fun bs!516183 () Bool)

(assert (= bs!516183 d!814868))

(declare-fun m!3236435 () Bool)

(assert (=> bs!516183 m!3236435))

(assert (=> tb!153185 d!814868))

(declare-fun d!814870 () Bool)

(declare-fun res!1169427 () Bool)

(declare-fun e!1774893 () Bool)

(assert (=> d!814870 (=> (not res!1169427) (not e!1774893))))

(assert (=> d!814870 (= res!1169427 (not (isEmpty!18190 (originalCharacters!5624 (h!38147 (t!229253 l!5055))))))))

(assert (=> d!814870 (= (inv!44404 (h!38147 (t!229253 l!5055))) e!1774893)))

(declare-fun b!2807242 () Bool)

(declare-fun res!1169428 () Bool)

(assert (=> b!2807242 (=> (not res!1169428) (not e!1774893))))

(assert (=> b!2807242 (= res!1169428 (= (originalCharacters!5624 (h!38147 (t!229253 l!5055))) (list!12251 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (value!157333 (h!38147 (t!229253 l!5055)))))))))

(declare-fun b!2807243 () Bool)

(assert (=> b!2807243 (= e!1774893 (= (size!25521 (h!38147 (t!229253 l!5055))) (size!25524 (originalCharacters!5624 (h!38147 (t!229253 l!5055))))))))

(assert (= (and d!814870 res!1169427) b!2807242))

(assert (= (and b!2807242 res!1169428) b!2807243))

(declare-fun b_lambda!83897 () Bool)

(assert (=> (not b_lambda!83897) (not b!2807242)))

(assert (=> b!2807242 t!229314))

(declare-fun b_and!204889 () Bool)

(assert (= b_and!204883 (and (=> t!229314 result!190432) b_and!204889)))

(assert (=> b!2807242 t!229310))

(declare-fun b_and!204891 () Bool)

(assert (= b_and!204887 (and (=> t!229310 result!190428) b_and!204891)))

(assert (=> b!2807242 t!229312))

(declare-fun b_and!204893 () Bool)

(assert (= b_and!204885 (and (=> t!229312 result!190430) b_and!204893)))

(assert (=> b!2807242 t!229316))

(declare-fun b_and!204895 () Bool)

(assert (= b_and!204879 (and (=> t!229316 result!190434) b_and!204895)))

(assert (=> b!2807242 t!229318))

(declare-fun b_and!204897 () Bool)

(assert (= b_and!204881 (and (=> t!229318 result!190436) b_and!204897)))

(declare-fun m!3236437 () Bool)

(assert (=> d!814870 m!3236437))

(assert (=> b!2807242 m!3236253))

(assert (=> b!2807242 m!3236253))

(declare-fun m!3236439 () Bool)

(assert (=> b!2807242 m!3236439))

(declare-fun m!3236441 () Bool)

(assert (=> b!2807243 m!3236441))

(assert (=> b!2806932 d!814870))

(declare-fun d!814872 () Bool)

(assert (=> d!814872 (= (inv!15 (value!157333 separatorToken!283)) (= (charsToBigInt!0 (text!36247 (value!157333 separatorToken!283)) 0) (value!157328 (value!157333 separatorToken!283))))))

(declare-fun bs!516184 () Bool)

(assert (= bs!516184 d!814872))

(declare-fun m!3236443 () Bool)

(assert (=> bs!516184 m!3236443))

(assert (=> b!2806876 d!814872))

(declare-fun d!814874 () Bool)

(declare-fun lt!1003283 () BalanceConc!19868)

(assert (=> d!814874 (= (list!12251 lt!1003283) (printList!1197 thiss!19710 (list!12250 (singletonSeq!2115 separatorToken!283))))))

(assert (=> d!814874 (= lt!1003283 (printTailRec!1158 thiss!19710 (singletonSeq!2115 separatorToken!283) 0 (BalanceConc!19869 Empty!10127)))))

(assert (=> d!814874 (= (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)) lt!1003283)))

(declare-fun bs!516185 () Bool)

(assert (= bs!516185 d!814874))

(declare-fun m!3236445 () Bool)

(assert (=> bs!516185 m!3236445))

(assert (=> bs!516185 m!3235771))

(assert (=> bs!516185 m!3235777))

(assert (=> bs!516185 m!3235777))

(declare-fun m!3236447 () Bool)

(assert (=> bs!516185 m!3236447))

(assert (=> bs!516185 m!3235771))

(declare-fun m!3236449 () Bool)

(assert (=> bs!516185 m!3236449))

(assert (=> d!814696 d!814874))

(declare-fun d!814876 () Bool)

(assert (=> d!814876 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))) (list!12255 (c!454716 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))))

(declare-fun bs!516186 () Bool)

(assert (= bs!516186 d!814876))

(declare-fun m!3236451 () Bool)

(assert (=> bs!516186 m!3236451))

(assert (=> d!814696 d!814876))

(declare-fun b!2807244 () Bool)

(declare-fun e!1774896 () Bool)

(declare-fun lt!1003284 () tuple2!33310)

(assert (=> b!2807244 (= e!1774896 (not (isEmpty!18193 (_1!19748 lt!1003284))))))

(declare-fun b!2807246 () Bool)

(declare-fun e!1774895 () Bool)

(assert (=> b!2807246 (= e!1774895 (= (_2!19748 lt!1003284) (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))))

(declare-fun b!2807247 () Bool)

(assert (=> b!2807247 (= e!1774895 e!1774896)))

(declare-fun res!1169430 () Bool)

(assert (=> b!2807247 (= res!1169430 (< (size!25527 (_2!19748 lt!1003284)) (size!25527 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))

(assert (=> b!2807247 (=> (not res!1169430) (not e!1774896))))

(declare-fun b!2807248 () Bool)

(declare-fun res!1169429 () Bool)

(declare-fun e!1774894 () Bool)

(assert (=> b!2807248 (=> (not res!1169429) (not e!1774894))))

(assert (=> b!2807248 (= res!1169429 (= (list!12250 (_1!19748 lt!1003284)) (_1!19750 (lexList!1241 thiss!19710 rules!2540 (list!12251 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))))

(declare-fun d!814878 () Bool)

(assert (=> d!814878 e!1774894))

(declare-fun res!1169431 () Bool)

(assert (=> d!814878 (=> (not res!1169431) (not e!1774894))))

(assert (=> d!814878 (= res!1169431 e!1774895)))

(declare-fun c!454774 () Bool)

(assert (=> d!814878 (= c!454774 (> (size!25523 (_1!19748 lt!1003284)) 0))))

(assert (=> d!814878 (= lt!1003284 (lexTailRecV2!879 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)) (BalanceConc!19869 Empty!10127) (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)) (BalanceConc!19873 Empty!10129)))))

(assert (=> d!814878 (= (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))) lt!1003284)))

(declare-fun b!2807245 () Bool)

(assert (=> b!2807245 (= e!1774894 (= (list!12251 (_2!19748 lt!1003284)) (_2!19750 (lexList!1241 thiss!19710 rules!2540 (list!12251 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))))

(assert (= (and d!814878 c!454774) b!2807247))

(assert (= (and d!814878 (not c!454774)) b!2807246))

(assert (= (and b!2807247 res!1169430) b!2807244))

(assert (= (and d!814878 res!1169431) b!2807248))

(assert (= (and b!2807248 res!1169429) b!2807245))

(declare-fun m!3236453 () Bool)

(assert (=> b!2807245 m!3236453))

(assert (=> b!2807245 m!3235779))

(declare-fun m!3236455 () Bool)

(assert (=> b!2807245 m!3236455))

(assert (=> b!2807245 m!3236455))

(declare-fun m!3236457 () Bool)

(assert (=> b!2807245 m!3236457))

(declare-fun m!3236459 () Bool)

(assert (=> d!814878 m!3236459))

(assert (=> d!814878 m!3235779))

(assert (=> d!814878 m!3235779))

(declare-fun m!3236461 () Bool)

(assert (=> d!814878 m!3236461))

(declare-fun m!3236463 () Bool)

(assert (=> b!2807244 m!3236463))

(declare-fun m!3236465 () Bool)

(assert (=> b!2807247 m!3236465))

(assert (=> b!2807247 m!3235779))

(declare-fun m!3236467 () Bool)

(assert (=> b!2807247 m!3236467))

(declare-fun m!3236469 () Bool)

(assert (=> b!2807248 m!3236469))

(assert (=> b!2807248 m!3235779))

(assert (=> b!2807248 m!3236455))

(assert (=> b!2807248 m!3236455))

(assert (=> b!2807248 m!3236457))

(assert (=> d!814696 d!814878))

(declare-fun d!814880 () Bool)

(assert (=> d!814880 (= (list!12250 (singletonSeq!2115 separatorToken!283)) (list!12255 (c!454716 (singletonSeq!2115 separatorToken!283))))))

(declare-fun bs!516187 () Bool)

(assert (= bs!516187 d!814880))

(declare-fun m!3236471 () Bool)

(assert (=> bs!516187 m!3236471))

(assert (=> d!814696 d!814880))

(declare-fun d!814882 () Bool)

(declare-fun e!1774897 () Bool)

(assert (=> d!814882 e!1774897))

(declare-fun res!1169432 () Bool)

(assert (=> d!814882 (=> (not res!1169432) (not e!1774897))))

(declare-fun lt!1003285 () BalanceConc!19872)

(assert (=> d!814882 (= res!1169432 (= (list!12250 lt!1003285) (Cons!32727 separatorToken!283 Nil!32727)))))

(assert (=> d!814882 (= lt!1003285 (singleton!935 separatorToken!283))))

(assert (=> d!814882 (= (singletonSeq!2115 separatorToken!283) lt!1003285)))

(declare-fun b!2807249 () Bool)

(assert (=> b!2807249 (= e!1774897 (isBalanced!3080 (c!454716 lt!1003285)))))

(assert (= (and d!814882 res!1169432) b!2807249))

(declare-fun m!3236473 () Bool)

(assert (=> d!814882 m!3236473))

(declare-fun m!3236475 () Bool)

(assert (=> d!814882 m!3236475))

(declare-fun m!3236477 () Bool)

(assert (=> b!2807249 m!3236477))

(assert (=> d!814696 d!814882))

(declare-fun d!814884 () Bool)

(declare-fun lt!1003286 () Int)

(assert (=> d!814884 (= lt!1003286 (size!25528 (list!12250 (_1!19748 lt!1003168))))))

(assert (=> d!814884 (= lt!1003286 (size!25529 (c!454716 (_1!19748 lt!1003168))))))

(assert (=> d!814884 (= (size!25523 (_1!19748 lt!1003168)) lt!1003286)))

(declare-fun bs!516188 () Bool)

(assert (= bs!516188 d!814884))

(declare-fun m!3236479 () Bool)

(assert (=> bs!516188 m!3236479))

(assert (=> bs!516188 m!3236479))

(declare-fun m!3236481 () Bool)

(assert (=> bs!516188 m!3236481))

(declare-fun m!3236483 () Bool)

(assert (=> bs!516188 m!3236483))

(assert (=> d!814696 d!814884))

(assert (=> d!814696 d!814702))

(declare-fun d!814886 () Bool)

(declare-fun c!454775 () Bool)

(assert (=> d!814886 (= c!454775 (is-Node!10127 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(declare-fun e!1774898 () Bool)

(assert (=> d!814886 (= (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))) e!1774898)))

(declare-fun b!2807250 () Bool)

(assert (=> b!2807250 (= e!1774898 (inv!44411 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(declare-fun b!2807251 () Bool)

(declare-fun e!1774899 () Bool)

(assert (=> b!2807251 (= e!1774898 e!1774899)))

(declare-fun res!1169433 () Bool)

(assert (=> b!2807251 (= res!1169433 (not (is-Leaf!15427 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))))))

(assert (=> b!2807251 (=> res!1169433 e!1774899)))

(declare-fun b!2807252 () Bool)

(assert (=> b!2807252 (= e!1774899 (inv!44412 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(assert (= (and d!814886 c!454775) b!2807250))

(assert (= (and d!814886 (not c!454775)) b!2807251))

(assert (= (and b!2807251 (not res!1169433)) b!2807252))

(declare-fun m!3236485 () Bool)

(assert (=> b!2807250 m!3236485))

(declare-fun m!3236487 () Bool)

(assert (=> b!2807252 m!3236487))

(assert (=> b!2806875 d!814886))

(declare-fun d!814888 () Bool)

(declare-fun res!1169434 () Bool)

(declare-fun e!1774900 () Bool)

(assert (=> d!814888 (=> res!1169434 e!1774900)))

(assert (=> d!814888 (= res!1169434 (is-Nil!32727 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)))))

(assert (=> d!814888 (= (forall!6729 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283) lambda!103101) e!1774900)))

(declare-fun b!2807253 () Bool)

(declare-fun e!1774901 () Bool)

(assert (=> b!2807253 (= e!1774900 e!1774901)))

(declare-fun res!1169435 () Bool)

(assert (=> b!2807253 (=> (not res!1169435) (not e!1774901))))

(assert (=> b!2807253 (= res!1169435 (dynLambda!13704 lambda!103101 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(declare-fun b!2807254 () Bool)

(assert (=> b!2807254 (= e!1774901 (forall!6729 (t!229253 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283)) lambda!103101))))

(assert (= (and d!814888 (not res!1169434)) b!2807253))

(assert (= (and b!2807253 res!1169435) b!2807254))

(declare-fun b_lambda!83899 () Bool)

(assert (=> (not b_lambda!83899) (not b!2807253)))

(declare-fun m!3236489 () Bool)

(assert (=> b!2807253 m!3236489))

(declare-fun m!3236491 () Bool)

(assert (=> b!2807254 m!3236491))

(assert (=> d!814658 d!814888))

(assert (=> d!814658 d!814702))

(declare-fun d!814890 () Bool)

(assert (=> d!814890 (= (list!12251 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))) (list!12254 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))))))

(declare-fun bs!516189 () Bool)

(assert (= bs!516189 d!814890))

(declare-fun m!3236493 () Bool)

(assert (=> bs!516189 m!3236493))

(assert (=> b!2806855 d!814890))

(declare-fun d!814892 () Bool)

(assert (=> d!814892 (= (inv!44400 (tag!5396 (h!38146 (t!229252 rules!2540)))) (= (mod (str.len (value!157332 (tag!5396 (h!38146 (t!229252 rules!2540))))) 2) 0))))

(assert (=> b!2806890 d!814892))

(declare-fun d!814894 () Bool)

(declare-fun res!1169436 () Bool)

(declare-fun e!1774902 () Bool)

(assert (=> d!814894 (=> (not res!1169436) (not e!1774902))))

(assert (=> d!814894 (= res!1169436 (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))))))

(assert (=> d!814894 (= (inv!44403 (transformation!4892 (h!38146 (t!229252 rules!2540)))) e!1774902)))

(declare-fun b!2807255 () Bool)

(assert (=> b!2807255 (= e!1774902 (equivClasses!1920 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))))))

(assert (= (and d!814894 res!1169436) b!2807255))

(declare-fun m!3236495 () Bool)

(assert (=> d!814894 m!3236495))

(declare-fun m!3236497 () Bool)

(assert (=> b!2807255 m!3236497))

(assert (=> b!2806890 d!814894))

(declare-fun d!814896 () Bool)

(declare-fun e!1774903 () Bool)

(assert (=> d!814896 e!1774903))

(declare-fun res!1169437 () Bool)

(assert (=> d!814896 (=> (not res!1169437) (not e!1774903))))

(declare-fun lt!1003287 () List!32825)

(assert (=> d!814896 (= res!1169437 (= (content!4558 lt!1003287) (set.union (content!4558 (list!12251 (charsOf!3037 (h!38147 lt!1003145)))) (content!4558 (printList!1197 thiss!19710 (t!229253 lt!1003145))))))))

(declare-fun e!1774904 () List!32825)

(assert (=> d!814896 (= lt!1003287 e!1774904)))

(declare-fun c!454776 () Bool)

(assert (=> d!814896 (= c!454776 (is-Nil!32725 (list!12251 (charsOf!3037 (h!38147 lt!1003145)))))))

(assert (=> d!814896 (= (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003145))) (printList!1197 thiss!19710 (t!229253 lt!1003145))) lt!1003287)))

(declare-fun b!2807259 () Bool)

(assert (=> b!2807259 (= e!1774903 (or (not (= (printList!1197 thiss!19710 (t!229253 lt!1003145)) Nil!32725)) (= lt!1003287 (list!12251 (charsOf!3037 (h!38147 lt!1003145))))))))

(declare-fun b!2807257 () Bool)

(assert (=> b!2807257 (= e!1774904 (Cons!32725 (h!38145 (list!12251 (charsOf!3037 (h!38147 lt!1003145)))) (++!8038 (t!229251 (list!12251 (charsOf!3037 (h!38147 lt!1003145)))) (printList!1197 thiss!19710 (t!229253 lt!1003145)))))))

(declare-fun b!2807256 () Bool)

(assert (=> b!2807256 (= e!1774904 (printList!1197 thiss!19710 (t!229253 lt!1003145)))))

(declare-fun b!2807258 () Bool)

(declare-fun res!1169438 () Bool)

(assert (=> b!2807258 (=> (not res!1169438) (not e!1774903))))

(assert (=> b!2807258 (= res!1169438 (= (size!25524 lt!1003287) (+ (size!25524 (list!12251 (charsOf!3037 (h!38147 lt!1003145)))) (size!25524 (printList!1197 thiss!19710 (t!229253 lt!1003145))))))))

(assert (= (and d!814896 c!454776) b!2807256))

(assert (= (and d!814896 (not c!454776)) b!2807257))

(assert (= (and d!814896 res!1169437) b!2807258))

(assert (= (and b!2807258 res!1169438) b!2807259))

(declare-fun m!3236499 () Bool)

(assert (=> d!814896 m!3236499))

(assert (=> d!814896 m!3235619))

(declare-fun m!3236501 () Bool)

(assert (=> d!814896 m!3236501))

(assert (=> d!814896 m!3235621))

(declare-fun m!3236503 () Bool)

(assert (=> d!814896 m!3236503))

(assert (=> b!2807257 m!3235621))

(declare-fun m!3236505 () Bool)

(assert (=> b!2807257 m!3236505))

(declare-fun m!3236507 () Bool)

(assert (=> b!2807258 m!3236507))

(assert (=> b!2807258 m!3235619))

(declare-fun m!3236509 () Bool)

(assert (=> b!2807258 m!3236509))

(assert (=> b!2807258 m!3235621))

(declare-fun m!3236511 () Bool)

(assert (=> b!2807258 m!3236511))

(assert (=> b!2806797 d!814896))

(declare-fun d!814898 () Bool)

(assert (=> d!814898 (= (list!12251 (charsOf!3037 (h!38147 lt!1003145))) (list!12254 (c!454684 (charsOf!3037 (h!38147 lt!1003145)))))))

(declare-fun bs!516190 () Bool)

(assert (= bs!516190 d!814898))

(declare-fun m!3236513 () Bool)

(assert (=> bs!516190 m!3236513))

(assert (=> b!2806797 d!814898))

(declare-fun d!814900 () Bool)

(declare-fun lt!1003288 () BalanceConc!19868)

(assert (=> d!814900 (= (list!12251 lt!1003288) (originalCharacters!5624 (h!38147 lt!1003145)))))

(assert (=> d!814900 (= lt!1003288 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145)))) (value!157333 (h!38147 lt!1003145))))))

(assert (=> d!814900 (= (charsOf!3037 (h!38147 lt!1003145)) lt!1003288)))

(declare-fun b_lambda!83901 () Bool)

(assert (=> (not b_lambda!83901) (not d!814900)))

(declare-fun tb!153243 () Bool)

(declare-fun t!229341 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229341) tb!153243))

(declare-fun b!2807260 () Bool)

(declare-fun e!1774905 () Bool)

(declare-fun tp!895794 () Bool)

(assert (=> b!2807260 (= e!1774905 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145)))) (value!157333 (h!38147 lt!1003145))))) tp!895794))))

(declare-fun result!190458 () Bool)

(assert (=> tb!153243 (= result!190458 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145)))) (value!157333 (h!38147 lt!1003145)))) e!1774905))))

(assert (= tb!153243 b!2807260))

(declare-fun m!3236515 () Bool)

(assert (=> b!2807260 m!3236515))

(declare-fun m!3236517 () Bool)

(assert (=> tb!153243 m!3236517))

(assert (=> d!814900 t!229341))

(declare-fun b_and!204899 () Bool)

(assert (= b_and!204893 (and (=> t!229341 result!190458) b_and!204899)))

(declare-fun tb!153245 () Bool)

(declare-fun t!229343 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229343) tb!153245))

(declare-fun result!190460 () Bool)

(assert (= result!190460 result!190458))

(assert (=> d!814900 t!229343))

(declare-fun b_and!204901 () Bool)

(assert (= b_and!204897 (and (=> t!229343 result!190460) b_and!204901)))

(declare-fun t!229345 () Bool)

(declare-fun tb!153247 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229345) tb!153247))

(declare-fun result!190462 () Bool)

(assert (= result!190462 result!190458))

(assert (=> d!814900 t!229345))

(declare-fun b_and!204903 () Bool)

(assert (= b_and!204895 (and (=> t!229345 result!190462) b_and!204903)))

(declare-fun t!229347 () Bool)

(declare-fun tb!153249 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229347) tb!153249))

(declare-fun result!190464 () Bool)

(assert (= result!190464 result!190458))

(assert (=> d!814900 t!229347))

(declare-fun b_and!204905 () Bool)

(assert (= b_and!204889 (and (=> t!229347 result!190464) b_and!204905)))

(declare-fun t!229349 () Bool)

(declare-fun tb!153251 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229349) tb!153251))

(declare-fun result!190466 () Bool)

(assert (= result!190466 result!190458))

(assert (=> d!814900 t!229349))

(declare-fun b_and!204907 () Bool)

(assert (= b_and!204891 (and (=> t!229349 result!190466) b_and!204907)))

(declare-fun m!3236519 () Bool)

(assert (=> d!814900 m!3236519))

(declare-fun m!3236521 () Bool)

(assert (=> d!814900 m!3236521))

(assert (=> b!2806797 d!814900))

(declare-fun d!814902 () Bool)

(declare-fun c!454777 () Bool)

(assert (=> d!814902 (= c!454777 (is-Cons!32727 (t!229253 lt!1003145)))))

(declare-fun e!1774906 () List!32825)

(assert (=> d!814902 (= (printList!1197 thiss!19710 (t!229253 lt!1003145)) e!1774906)))

(declare-fun b!2807261 () Bool)

(assert (=> b!2807261 (= e!1774906 (++!8038 (list!12251 (charsOf!3037 (h!38147 (t!229253 lt!1003145)))) (printList!1197 thiss!19710 (t!229253 (t!229253 lt!1003145)))))))

(declare-fun b!2807262 () Bool)

(assert (=> b!2807262 (= e!1774906 Nil!32725)))

(assert (= (and d!814902 c!454777) b!2807261))

(assert (= (and d!814902 (not c!454777)) b!2807262))

(declare-fun m!3236523 () Bool)

(assert (=> b!2807261 m!3236523))

(assert (=> b!2807261 m!3236523))

(declare-fun m!3236525 () Bool)

(assert (=> b!2807261 m!3236525))

(declare-fun m!3236527 () Bool)

(assert (=> b!2807261 m!3236527))

(assert (=> b!2807261 m!3236525))

(assert (=> b!2807261 m!3236527))

(declare-fun m!3236529 () Bool)

(assert (=> b!2807261 m!3236529))

(assert (=> b!2806797 d!814902))

(declare-fun bs!516191 () Bool)

(declare-fun d!814904 () Bool)

(assert (= bs!516191 (and d!814904 d!814788)))

(declare-fun lambda!103121 () Int)

(assert (=> bs!516191 (= (= (toValue!6890 (transformation!4892 (h!38146 rules!2540))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (= lambda!103121 lambda!103113))))

(assert (=> d!814904 true))

(assert (=> d!814904 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13708 order!17385 lambda!103121))))

(assert (=> d!814904 (= (equivClasses!1920 (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (Forall2!820 lambda!103121))))

(declare-fun bs!516192 () Bool)

(assert (= bs!516192 d!814904))

(declare-fun m!3236531 () Bool)

(assert (=> bs!516192 m!3236531))

(assert (=> b!2806850 d!814904))

(assert (=> b!2806863 d!814632))

(declare-fun d!814906 () Bool)

(declare-fun e!1774907 () Bool)

(assert (=> d!814906 e!1774907))

(declare-fun res!1169439 () Bool)

(assert (=> d!814906 (=> (not res!1169439) (not e!1774907))))

(declare-fun lt!1003289 () List!32825)

(assert (=> d!814906 (= res!1169439 (= (content!4558 lt!1003289) (set.union (content!4558 (list!12251 (charsOf!3037 (h!38147 lt!1003154)))) (content!4558 (printList!1197 thiss!19710 (t!229253 lt!1003154))))))))

(declare-fun e!1774908 () List!32825)

(assert (=> d!814906 (= lt!1003289 e!1774908)))

(declare-fun c!454778 () Bool)

(assert (=> d!814906 (= c!454778 (is-Nil!32725 (list!12251 (charsOf!3037 (h!38147 lt!1003154)))))))

(assert (=> d!814906 (= (++!8038 (list!12251 (charsOf!3037 (h!38147 lt!1003154))) (printList!1197 thiss!19710 (t!229253 lt!1003154))) lt!1003289)))

(declare-fun b!2807266 () Bool)

(assert (=> b!2807266 (= e!1774907 (or (not (= (printList!1197 thiss!19710 (t!229253 lt!1003154)) Nil!32725)) (= lt!1003289 (list!12251 (charsOf!3037 (h!38147 lt!1003154))))))))

(declare-fun b!2807264 () Bool)

(assert (=> b!2807264 (= e!1774908 (Cons!32725 (h!38145 (list!12251 (charsOf!3037 (h!38147 lt!1003154)))) (++!8038 (t!229251 (list!12251 (charsOf!3037 (h!38147 lt!1003154)))) (printList!1197 thiss!19710 (t!229253 lt!1003154)))))))

(declare-fun b!2807263 () Bool)

(assert (=> b!2807263 (= e!1774908 (printList!1197 thiss!19710 (t!229253 lt!1003154)))))

(declare-fun b!2807265 () Bool)

(declare-fun res!1169440 () Bool)

(assert (=> b!2807265 (=> (not res!1169440) (not e!1774907))))

(assert (=> b!2807265 (= res!1169440 (= (size!25524 lt!1003289) (+ (size!25524 (list!12251 (charsOf!3037 (h!38147 lt!1003154)))) (size!25524 (printList!1197 thiss!19710 (t!229253 lt!1003154))))))))

(assert (= (and d!814906 c!454778) b!2807263))

(assert (= (and d!814906 (not c!454778)) b!2807264))

(assert (= (and d!814906 res!1169439) b!2807265))

(assert (= (and b!2807265 res!1169440) b!2807266))

(declare-fun m!3236533 () Bool)

(assert (=> d!814906 m!3236533))

(assert (=> d!814906 m!3235673))

(declare-fun m!3236535 () Bool)

(assert (=> d!814906 m!3236535))

(assert (=> d!814906 m!3235675))

(declare-fun m!3236537 () Bool)

(assert (=> d!814906 m!3236537))

(assert (=> b!2807264 m!3235675))

(declare-fun m!3236539 () Bool)

(assert (=> b!2807264 m!3236539))

(declare-fun m!3236541 () Bool)

(assert (=> b!2807265 m!3236541))

(assert (=> b!2807265 m!3235673))

(declare-fun m!3236543 () Bool)

(assert (=> b!2807265 m!3236543))

(assert (=> b!2807265 m!3235675))

(declare-fun m!3236545 () Bool)

(assert (=> b!2807265 m!3236545))

(assert (=> b!2806812 d!814906))

(declare-fun d!814908 () Bool)

(assert (=> d!814908 (= (list!12251 (charsOf!3037 (h!38147 lt!1003154))) (list!12254 (c!454684 (charsOf!3037 (h!38147 lt!1003154)))))))

(declare-fun bs!516193 () Bool)

(assert (= bs!516193 d!814908))

(declare-fun m!3236547 () Bool)

(assert (=> bs!516193 m!3236547))

(assert (=> b!2806812 d!814908))

(declare-fun d!814910 () Bool)

(declare-fun lt!1003290 () BalanceConc!19868)

(assert (=> d!814910 (= (list!12251 lt!1003290) (originalCharacters!5624 (h!38147 lt!1003154)))))

(assert (=> d!814910 (= lt!1003290 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154)))) (value!157333 (h!38147 lt!1003154))))))

(assert (=> d!814910 (= (charsOf!3037 (h!38147 lt!1003154)) lt!1003290)))

(declare-fun b_lambda!83903 () Bool)

(assert (=> (not b_lambda!83903) (not d!814910)))

(declare-fun t!229351 () Bool)

(declare-fun tb!153253 () Bool)

(assert (=> (and b!2806891 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229351) tb!153253))

(declare-fun b!2807267 () Bool)

(declare-fun e!1774909 () Bool)

(declare-fun tp!895795 () Bool)

(assert (=> b!2807267 (= e!1774909 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154)))) (value!157333 (h!38147 lt!1003154))))) tp!895795))))

(declare-fun result!190468 () Bool)

(assert (=> tb!153253 (= result!190468 (and (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154)))) (value!157333 (h!38147 lt!1003154)))) e!1774909))))

(assert (= tb!153253 b!2807267))

(declare-fun m!3236549 () Bool)

(assert (=> b!2807267 m!3236549))

(declare-fun m!3236551 () Bool)

(assert (=> tb!153253 m!3236551))

(assert (=> d!814910 t!229351))

(declare-fun b_and!204909 () Bool)

(assert (= b_and!204899 (and (=> t!229351 result!190468) b_and!204909)))

(declare-fun tb!153255 () Bool)

(declare-fun t!229353 () Bool)

(assert (=> (and b!2806935 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229353) tb!153255))

(declare-fun result!190470 () Bool)

(assert (= result!190470 result!190468))

(assert (=> d!814910 t!229353))

(declare-fun b_and!204911 () Bool)

(assert (= b_and!204907 (and (=> t!229353 result!190470) b_and!204911)))

(declare-fun t!229355 () Bool)

(declare-fun tb!153257 () Bool)

(assert (=> (and b!2806613 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229355) tb!153257))

(declare-fun result!190472 () Bool)

(assert (= result!190472 result!190468))

(assert (=> d!814910 t!229355))

(declare-fun b_and!204913 () Bool)

(assert (= b_and!204901 (and (=> t!229355 result!190472) b_and!204913)))

(declare-fun tb!153259 () Bool)

(declare-fun t!229357 () Bool)

(assert (=> (and b!2806616 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229357) tb!153259))

(declare-fun result!190474 () Bool)

(assert (= result!190474 result!190468))

(assert (=> d!814910 t!229357))

(declare-fun b_and!204915 () Bool)

(assert (= b_and!204903 (and (=> t!229357 result!190474) b_and!204915)))

(declare-fun tb!153261 () Bool)

(declare-fun t!229359 () Bool)

(assert (=> (and b!2806622 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229359) tb!153261))

(declare-fun result!190476 () Bool)

(assert (= result!190476 result!190468))

(assert (=> d!814910 t!229359))

(declare-fun b_and!204917 () Bool)

(assert (= b_and!204905 (and (=> t!229359 result!190476) b_and!204917)))

(declare-fun m!3236553 () Bool)

(assert (=> d!814910 m!3236553))

(declare-fun m!3236555 () Bool)

(assert (=> d!814910 m!3236555))

(assert (=> b!2806812 d!814910))

(declare-fun d!814912 () Bool)

(declare-fun c!454779 () Bool)

(assert (=> d!814912 (= c!454779 (is-Cons!32727 (t!229253 lt!1003154)))))

(declare-fun e!1774910 () List!32825)

(assert (=> d!814912 (= (printList!1197 thiss!19710 (t!229253 lt!1003154)) e!1774910)))

(declare-fun b!2807268 () Bool)

(assert (=> b!2807268 (= e!1774910 (++!8038 (list!12251 (charsOf!3037 (h!38147 (t!229253 lt!1003154)))) (printList!1197 thiss!19710 (t!229253 (t!229253 lt!1003154)))))))

(declare-fun b!2807269 () Bool)

(assert (=> b!2807269 (= e!1774910 Nil!32725)))

(assert (= (and d!814912 c!454779) b!2807268))

(assert (= (and d!814912 (not c!454779)) b!2807269))

(declare-fun m!3236557 () Bool)

(assert (=> b!2807268 m!3236557))

(assert (=> b!2807268 m!3236557))

(declare-fun m!3236559 () Bool)

(assert (=> b!2807268 m!3236559))

(declare-fun m!3236561 () Bool)

(assert (=> b!2807268 m!3236561))

(assert (=> b!2807268 m!3236559))

(assert (=> b!2807268 m!3236561))

(declare-fun m!3236563 () Bool)

(assert (=> b!2807268 m!3236563))

(assert (=> b!2806812 d!814912))

(declare-fun d!814914 () Bool)

(assert (=> d!814914 (= (inv!16 (value!157333 separatorToken!283)) (= (charsToInt!0 (text!36245 (value!157333 separatorToken!283))) (value!157324 (value!157333 separatorToken!283))))))

(declare-fun bs!516194 () Bool)

(assert (= bs!516194 d!814914))

(declare-fun m!3236565 () Bool)

(assert (=> bs!516194 m!3236565))

(assert (=> b!2806878 d!814914))

(declare-fun d!814916 () Bool)

(declare-fun lt!1003291 () Bool)

(declare-fun e!1774912 () Bool)

(assert (=> d!814916 (= lt!1003291 e!1774912)))

(declare-fun res!1169441 () Bool)

(assert (=> d!814916 (=> (not res!1169441) (not e!1774912))))

(assert (=> d!814916 (= res!1169441 (= (list!12250 (_1!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))) (list!12250 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))))

(declare-fun e!1774911 () Bool)

(assert (=> d!814916 (= lt!1003291 e!1774911)))

(declare-fun res!1169442 () Bool)

(assert (=> d!814916 (=> (not res!1169442) (not e!1774911))))

(declare-fun lt!1003292 () tuple2!33310)

(assert (=> d!814916 (= res!1169442 (= (size!25523 (_1!19748 lt!1003292)) 1))))

(assert (=> d!814916 (= lt!1003292 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))))

(assert (=> d!814916 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814916 (= (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))) lt!1003291)))

(declare-fun b!2807270 () Bool)

(declare-fun res!1169443 () Bool)

(assert (=> b!2807270 (=> (not res!1169443) (not e!1774911))))

(assert (=> b!2807270 (= res!1169443 (= (apply!7642 (_1!19748 lt!1003292) 0) (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(declare-fun b!2807271 () Bool)

(assert (=> b!2807271 (= e!1774911 (isEmpty!18189 (_2!19748 lt!1003292)))))

(declare-fun b!2807272 () Bool)

(assert (=> b!2807272 (= e!1774912 (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))))))

(assert (= (and d!814916 res!1169442) b!2807270))

(assert (= (and b!2807270 res!1169443) b!2807271))

(assert (= (and d!814916 res!1169441) b!2807272))

(declare-fun m!3236567 () Bool)

(assert (=> d!814916 m!3236567))

(declare-fun m!3236569 () Bool)

(assert (=> d!814916 m!3236569))

(declare-fun m!3236571 () Bool)

(assert (=> d!814916 m!3236571))

(assert (=> d!814916 m!3236567))

(declare-fun m!3236573 () Bool)

(assert (=> d!814916 m!3236573))

(assert (=> d!814916 m!3235487))

(declare-fun m!3236575 () Bool)

(assert (=> d!814916 m!3236575))

(declare-fun m!3236577 () Bool)

(assert (=> d!814916 m!3236577))

(assert (=> d!814916 m!3236567))

(assert (=> d!814916 m!3236575))

(declare-fun m!3236579 () Bool)

(assert (=> b!2807270 m!3236579))

(declare-fun m!3236581 () Bool)

(assert (=> b!2807271 m!3236581))

(assert (=> b!2807272 m!3236567))

(assert (=> b!2807272 m!3236567))

(assert (=> b!2807272 m!3236575))

(assert (=> b!2807272 m!3236575))

(assert (=> b!2807272 m!3236577))

(declare-fun m!3236583 () Bool)

(assert (=> b!2807272 m!3236583))

(assert (=> b!2806805 d!814916))

(declare-fun d!814918 () Bool)

(assert (=> d!814918 (= (inv!17 (value!157333 (h!38147 l!5055))) (= (charsToBigInt!1 (text!36246 (value!157333 (h!38147 l!5055)))) (value!157325 (value!157333 (h!38147 l!5055)))))))

(declare-fun bs!516195 () Bool)

(assert (= bs!516195 d!814918))

(declare-fun m!3236585 () Bool)

(assert (=> bs!516195 m!3236585))

(assert (=> b!2806773 d!814918))

(declare-fun bs!516196 () Bool)

(declare-fun d!814920 () Bool)

(assert (= bs!516196 (and d!814920 d!814678)))

(declare-fun lambda!103122 () Int)

(assert (=> bs!516196 (= lambda!103122 lambda!103105)))

(declare-fun bs!516197 () Bool)

(assert (= bs!516197 (and d!814920 d!814658)))

(assert (=> bs!516197 (= lambda!103122 lambda!103101)))

(declare-fun bs!516198 () Bool)

(assert (= bs!516198 (and d!814920 b!2806614)))

(assert (=> bs!516198 (= lambda!103122 lambda!103094)))

(declare-fun bs!516199 () Bool)

(assert (= bs!516199 (and d!814920 d!814756)))

(assert (=> bs!516199 (= lambda!103122 lambda!103110)))

(declare-fun bs!516200 () Bool)

(assert (= bs!516200 (and d!814920 d!814632)))

(assert (=> bs!516200 (= lambda!103122 lambda!103100)))

(declare-fun bs!516201 () Bool)

(assert (= bs!516201 (and d!814920 d!814694)))

(assert (=> bs!516201 (= lambda!103122 lambda!103106)))

(declare-fun b!2807277 () Bool)

(declare-fun e!1774917 () Bool)

(assert (=> b!2807277 (= e!1774917 true)))

(declare-fun b!2807276 () Bool)

(declare-fun e!1774916 () Bool)

(assert (=> b!2807276 (= e!1774916 e!1774917)))

(declare-fun b!2807275 () Bool)

(declare-fun e!1774915 () Bool)

(assert (=> b!2807275 (= e!1774915 e!1774916)))

(assert (=> d!814920 e!1774915))

(assert (= b!2807276 b!2807277))

(assert (= b!2807275 b!2807276))

(assert (= (and d!814920 (is-Cons!32726 rules!2540)) b!2807275))

(assert (=> b!2807277 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103122))))

(assert (=> b!2807277 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103122))))

(assert (=> d!814920 true))

(declare-fun lt!1003293 () Bool)

(assert (=> d!814920 (= lt!1003293 (forall!6729 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)) lambda!103122))))

(declare-fun e!1774913 () Bool)

(assert (=> d!814920 (= lt!1003293 e!1774913)))

(declare-fun res!1169444 () Bool)

(assert (=> d!814920 (=> res!1169444 e!1774913)))

(assert (=> d!814920 (= res!1169444 (not (is-Cons!32727 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))))

(assert (=> d!814920 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814920 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))) lt!1003293)))

(declare-fun b!2807273 () Bool)

(declare-fun e!1774914 () Bool)

(assert (=> b!2807273 (= e!1774913 e!1774914)))

(declare-fun res!1169445 () Bool)

(assert (=> b!2807273 (=> (not res!1169445) (not e!1774914))))

(assert (=> b!2807273 (= res!1169445 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))))

(declare-fun b!2807274 () Bool)

(assert (=> b!2807274 (= e!1774914 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (t!229253 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283)))))))

(assert (= (and d!814920 (not res!1169444)) b!2807273))

(assert (= (and b!2807273 res!1169445) b!2807274))

(declare-fun m!3236587 () Bool)

(assert (=> d!814920 m!3236587))

(assert (=> d!814920 m!3235487))

(declare-fun m!3236589 () Bool)

(assert (=> b!2807273 m!3236589))

(declare-fun m!3236591 () Bool)

(assert (=> b!2807274 m!3236591))

(assert (=> b!2806842 d!814920))

(assert (=> b!2806753 d!814652))

(declare-fun d!814922 () Bool)

(declare-fun lt!1003294 () Int)

(assert (=> d!814922 (>= lt!1003294 0)))

(declare-fun e!1774918 () Int)

(assert (=> d!814922 (= lt!1003294 e!1774918)))

(declare-fun c!454780 () Bool)

(assert (=> d!814922 (= c!454780 (is-Nil!32725 (originalCharacters!5624 separatorToken!283)))))

(assert (=> d!814922 (= (size!25524 (originalCharacters!5624 separatorToken!283)) lt!1003294)))

(declare-fun b!2807278 () Bool)

(assert (=> b!2807278 (= e!1774918 0)))

(declare-fun b!2807279 () Bool)

(assert (=> b!2807279 (= e!1774918 (+ 1 (size!25524 (t!229251 (originalCharacters!5624 separatorToken!283)))))))

(assert (= (and d!814922 c!454780) b!2807278))

(assert (= (and d!814922 (not c!454780)) b!2807279))

(declare-fun m!3236593 () Bool)

(assert (=> b!2807279 m!3236593))

(assert (=> b!2806874 d!814922))

(declare-fun d!814924 () Bool)

(assert (=> d!814924 (= (isEmpty!18190 (originalCharacters!5624 (h!38147 l!5055))) (is-Nil!32725 (originalCharacters!5624 (h!38147 l!5055))))))

(assert (=> d!814692 d!814924))

(declare-fun d!814926 () Bool)

(declare-fun lt!1003295 () Bool)

(assert (=> d!814926 (= lt!1003295 (isEmpty!18190 (list!12251 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))))

(assert (=> d!814926 (= lt!1003295 (isEmpty!18194 (c!454684 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283)))))))))

(assert (=> d!814926 (= (isEmpty!18189 (_2!19748 (lex!1975 thiss!19710 rules!2540 (print!1694 thiss!19710 (singletonSeq!2115 separatorToken!283))))) lt!1003295)))

(declare-fun bs!516202 () Bool)

(assert (= bs!516202 d!814926))

(declare-fun m!3236595 () Bool)

(assert (=> bs!516202 m!3236595))

(assert (=> bs!516202 m!3236595))

(declare-fun m!3236597 () Bool)

(assert (=> bs!516202 m!3236597))

(declare-fun m!3236599 () Bool)

(assert (=> bs!516202 m!3236599))

(assert (=> b!2806869 d!814926))

(assert (=> b!2806869 d!814878))

(assert (=> b!2806869 d!814874))

(assert (=> b!2806869 d!814882))

(declare-fun d!814928 () Bool)

(declare-fun lt!1003296 () Token!9186)

(assert (=> d!814928 (= lt!1003296 (apply!7646 (list!12250 (_1!19748 lt!1003168)) 0))))

(assert (=> d!814928 (= lt!1003296 (apply!7647 (c!454716 (_1!19748 lt!1003168)) 0))))

(declare-fun e!1774919 () Bool)

(assert (=> d!814928 e!1774919))

(declare-fun res!1169446 () Bool)

(assert (=> d!814928 (=> (not res!1169446) (not e!1774919))))

(assert (=> d!814928 (= res!1169446 (<= 0 0))))

(assert (=> d!814928 (= (apply!7642 (_1!19748 lt!1003168) 0) lt!1003296)))

(declare-fun b!2807280 () Bool)

(assert (=> b!2807280 (= e!1774919 (< 0 (size!25523 (_1!19748 lt!1003168))))))

(assert (= (and d!814928 res!1169446) b!2807280))

(assert (=> d!814928 m!3236479))

(assert (=> d!814928 m!3236479))

(declare-fun m!3236601 () Bool)

(assert (=> d!814928 m!3236601))

(declare-fun m!3236603 () Bool)

(assert (=> d!814928 m!3236603))

(assert (=> b!2807280 m!3235773))

(assert (=> b!2806867 d!814928))

(declare-fun d!814930 () Bool)

(declare-fun res!1169447 () Bool)

(declare-fun e!1774920 () Bool)

(assert (=> d!814930 (=> res!1169447 e!1774920)))

(assert (=> d!814930 (= res!1169447 (is-Nil!32727 (t!229253 l!5055)))))

(assert (=> d!814930 (= (forall!6729 (t!229253 l!5055) lambda!103100) e!1774920)))

(declare-fun b!2807281 () Bool)

(declare-fun e!1774921 () Bool)

(assert (=> b!2807281 (= e!1774920 e!1774921)))

(declare-fun res!1169448 () Bool)

(assert (=> b!2807281 (=> (not res!1169448) (not e!1774921))))

(assert (=> b!2807281 (= res!1169448 (dynLambda!13704 lambda!103100 (h!38147 (t!229253 l!5055))))))

(declare-fun b!2807282 () Bool)

(assert (=> b!2807282 (= e!1774921 (forall!6729 (t!229253 (t!229253 l!5055)) lambda!103100))))

(assert (= (and d!814930 (not res!1169447)) b!2807281))

(assert (= (and b!2807281 res!1169448) b!2807282))

(declare-fun b_lambda!83905 () Bool)

(assert (=> (not b_lambda!83905) (not b!2807281)))

(declare-fun m!3236605 () Bool)

(assert (=> b!2807281 m!3236605))

(declare-fun m!3236607 () Bool)

(assert (=> b!2807282 m!3236607))

(assert (=> d!814632 d!814930))

(assert (=> d!814632 d!814702))

(declare-fun bs!516203 () Bool)

(declare-fun d!814932 () Bool)

(assert (= bs!516203 (and d!814932 d!814678)))

(declare-fun lambda!103123 () Int)

(assert (=> bs!516203 (= lambda!103123 lambda!103105)))

(declare-fun bs!516204 () Bool)

(assert (= bs!516204 (and d!814932 d!814920)))

(assert (=> bs!516204 (= lambda!103123 lambda!103122)))

(declare-fun bs!516205 () Bool)

(assert (= bs!516205 (and d!814932 d!814658)))

(assert (=> bs!516205 (= lambda!103123 lambda!103101)))

(declare-fun bs!516206 () Bool)

(assert (= bs!516206 (and d!814932 b!2806614)))

(assert (=> bs!516206 (= lambda!103123 lambda!103094)))

(declare-fun bs!516207 () Bool)

(assert (= bs!516207 (and d!814932 d!814756)))

(assert (=> bs!516207 (= lambda!103123 lambda!103110)))

(declare-fun bs!516208 () Bool)

(assert (= bs!516208 (and d!814932 d!814632)))

(assert (=> bs!516208 (= lambda!103123 lambda!103100)))

(declare-fun bs!516209 () Bool)

(assert (= bs!516209 (and d!814932 d!814694)))

(assert (=> bs!516209 (= lambda!103123 lambda!103106)))

(declare-fun b!2807287 () Bool)

(declare-fun e!1774926 () Bool)

(assert (=> b!2807287 (= e!1774926 true)))

(declare-fun b!2807286 () Bool)

(declare-fun e!1774925 () Bool)

(assert (=> b!2807286 (= e!1774925 e!1774926)))

(declare-fun b!2807285 () Bool)

(declare-fun e!1774924 () Bool)

(assert (=> b!2807285 (= e!1774924 e!1774925)))

(assert (=> d!814932 e!1774924))

(assert (= b!2807286 b!2807287))

(assert (= b!2807285 b!2807286))

(assert (= (and d!814932 (is-Cons!32726 rules!2540)) b!2807285))

(assert (=> b!2807287 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103123))))

(assert (=> b!2807287 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (dynLambda!13699 order!17375 lambda!103123))))

(assert (=> d!814932 true))

(declare-fun lt!1003297 () Bool)

(assert (=> d!814932 (= lt!1003297 (forall!6729 (t!229253 (t!229253 l!5055)) lambda!103123))))

(declare-fun e!1774922 () Bool)

(assert (=> d!814932 (= lt!1003297 e!1774922)))

(declare-fun res!1169449 () Bool)

(assert (=> d!814932 (=> res!1169449 e!1774922)))

(assert (=> d!814932 (= res!1169449 (not (is-Cons!32727 (t!229253 (t!229253 l!5055)))))))

(assert (=> d!814932 (not (isEmpty!18187 rules!2540))))

(assert (=> d!814932 (= (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (t!229253 l!5055))) lt!1003297)))

(declare-fun b!2807283 () Bool)

(declare-fun e!1774923 () Bool)

(assert (=> b!2807283 (= e!1774922 e!1774923)))

(declare-fun res!1169450 () Bool)

(assert (=> b!2807283 (=> (not res!1169450) (not e!1774923))))

(assert (=> b!2807283 (= res!1169450 (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 (t!229253 l!5055)))))))

(declare-fun b!2807284 () Bool)

(assert (=> b!2807284 (= e!1774923 (rulesProduceEachTokenIndividuallyList!1557 thiss!19710 rules!2540 (t!229253 (t!229253 (t!229253 l!5055)))))))

(assert (= (and d!814932 (not res!1169449)) b!2807283))

(assert (= (and b!2807283 res!1169450) b!2807284))

(declare-fun m!3236609 () Bool)

(assert (=> d!814932 m!3236609))

(assert (=> d!814932 m!3235487))

(declare-fun m!3236611 () Bool)

(assert (=> b!2807283 m!3236611))

(declare-fun m!3236613 () Bool)

(assert (=> b!2807284 m!3236613))

(assert (=> b!2806738 d!814932))

(declare-fun d!814934 () Bool)

(assert (=> d!814934 (= (inv!44408 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))) (isBalanced!3081 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))))))

(declare-fun bs!516210 () Bool)

(assert (= bs!516210 d!814934))

(declare-fun m!3236615 () Bool)

(assert (=> bs!516210 m!3236615))

(assert (=> tb!153191 d!814934))

(declare-fun bs!516211 () Bool)

(declare-fun d!814936 () Bool)

(assert (= bs!516211 (and d!814936 d!814788)))

(declare-fun lambda!103124 () Int)

(assert (=> bs!516211 (= (= (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (= lambda!103124 lambda!103113))))

(declare-fun bs!516212 () Bool)

(assert (= bs!516212 (and d!814936 d!814904)))

(assert (=> bs!516212 (= (= (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (h!38146 rules!2540)))) (= lambda!103124 lambda!103121))))

(assert (=> d!814936 true))

(assert (=> d!814936 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))) (dynLambda!13708 order!17385 lambda!103124))))

(assert (=> d!814936 (= (equivClasses!1920 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283)))) (Forall2!820 lambda!103124))))

(declare-fun bs!516213 () Bool)

(assert (= bs!516213 d!814936))

(declare-fun m!3236617 () Bool)

(assert (=> bs!516213 m!3236617))

(assert (=> b!2806849 d!814936))

(declare-fun d!814938 () Bool)

(assert (=> d!814938 (dynLambda!13704 lambda!103094 (h!38147 l!5055))))

(assert (=> d!814938 true))

(declare-fun _$7!1030 () Unit!46781)

(assert (=> d!814938 (= (choose!16548 l!5055 lambda!103094 (h!38147 l!5055)) _$7!1030)))

(declare-fun b_lambda!83907 () Bool)

(assert (=> (not b_lambda!83907) (not d!814938)))

(declare-fun bs!516214 () Bool)

(assert (= bs!516214 d!814938))

(assert (=> bs!516214 m!3235591))

(assert (=> d!814650 d!814938))

(declare-fun d!814940 () Bool)

(declare-fun res!1169451 () Bool)

(declare-fun e!1774927 () Bool)

(assert (=> d!814940 (=> res!1169451 e!1774927)))

(assert (=> d!814940 (= res!1169451 (is-Nil!32727 l!5055))))

(assert (=> d!814940 (= (forall!6729 l!5055 lambda!103094) e!1774927)))

(declare-fun b!2807288 () Bool)

(declare-fun e!1774928 () Bool)

(assert (=> b!2807288 (= e!1774927 e!1774928)))

(declare-fun res!1169452 () Bool)

(assert (=> b!2807288 (=> (not res!1169452) (not e!1774928))))

(assert (=> b!2807288 (= res!1169452 (dynLambda!13704 lambda!103094 (h!38147 l!5055)))))

(declare-fun b!2807289 () Bool)

(assert (=> b!2807289 (= e!1774928 (forall!6729 (t!229253 l!5055) lambda!103094))))

(assert (= (and d!814940 (not res!1169451)) b!2807288))

(assert (= (and b!2807288 res!1169452) b!2807289))

(declare-fun b_lambda!83909 () Bool)

(assert (=> (not b_lambda!83909) (not b!2807288)))

(assert (=> b!2807288 m!3235591))

(declare-fun m!3236619 () Bool)

(assert (=> b!2807289 m!3236619))

(assert (=> d!814650 d!814940))

(declare-fun b!2807291 () Bool)

(declare-fun res!1169453 () Bool)

(declare-fun e!1774929 () Bool)

(assert (=> b!2807291 (=> res!1169453 e!1774929)))

(assert (=> b!2807291 (= res!1169453 (not (is-IntegerValue!15344 (value!157333 (h!38147 (t!229253 l!5055))))))))

(declare-fun e!1774930 () Bool)

(assert (=> b!2807291 (= e!1774930 e!1774929)))

(declare-fun b!2807292 () Bool)

(declare-fun e!1774931 () Bool)

(assert (=> b!2807292 (= e!1774931 (inv!16 (value!157333 (h!38147 (t!229253 l!5055)))))))

(declare-fun b!2807290 () Bool)

(assert (=> b!2807290 (= e!1774929 (inv!15 (value!157333 (h!38147 (t!229253 l!5055)))))))

(declare-fun d!814942 () Bool)

(declare-fun c!454781 () Bool)

(assert (=> d!814942 (= c!454781 (is-IntegerValue!15342 (value!157333 (h!38147 (t!229253 l!5055)))))))

(assert (=> d!814942 (= (inv!21 (value!157333 (h!38147 (t!229253 l!5055)))) e!1774931)))

(declare-fun b!2807293 () Bool)

(assert (=> b!2807293 (= e!1774930 (inv!17 (value!157333 (h!38147 (t!229253 l!5055)))))))

(declare-fun b!2807294 () Bool)

(assert (=> b!2807294 (= e!1774931 e!1774930)))

(declare-fun c!454782 () Bool)

(assert (=> b!2807294 (= c!454782 (is-IntegerValue!15343 (value!157333 (h!38147 (t!229253 l!5055)))))))

(assert (= (and d!814942 c!454781) b!2807292))

(assert (= (and d!814942 (not c!454781)) b!2807294))

(assert (= (and b!2807294 c!454782) b!2807293))

(assert (= (and b!2807294 (not c!454782)) b!2807291))

(assert (= (and b!2807291 (not res!1169453)) b!2807290))

(declare-fun m!3236621 () Bool)

(assert (=> b!2807292 m!3236621))

(declare-fun m!3236623 () Bool)

(assert (=> b!2807290 m!3236623))

(declare-fun m!3236625 () Bool)

(assert (=> b!2807293 m!3236625))

(assert (=> b!2806933 d!814942))

(declare-fun d!814944 () Bool)

(declare-fun lt!1003298 () Bool)

(assert (=> d!814944 (= lt!1003298 (isEmpty!18190 (list!12251 (_2!19748 lt!1003119))))))

(assert (=> d!814944 (= lt!1003298 (isEmpty!18194 (c!454684 (_2!19748 lt!1003119))))))

(assert (=> d!814944 (= (isEmpty!18189 (_2!19748 lt!1003119)) lt!1003298)))

(declare-fun bs!516215 () Bool)

(assert (= bs!516215 d!814944))

(declare-fun m!3236627 () Bool)

(assert (=> bs!516215 m!3236627))

(assert (=> bs!516215 m!3236627))

(declare-fun m!3236629 () Bool)

(assert (=> bs!516215 m!3236629))

(declare-fun m!3236631 () Bool)

(assert (=> bs!516215 m!3236631))

(assert (=> b!2806749 d!814944))

(declare-fun bs!516216 () Bool)

(declare-fun d!814948 () Bool)

(assert (= bs!516216 (and d!814948 d!814808)))

(declare-fun lambda!103125 () Int)

(assert (=> bs!516216 (= (and (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (h!38146 rules!2540)))) (= (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (h!38146 rules!2540))))) (= lambda!103125 lambda!103116))))

(declare-fun bs!516217 () Bool)

(assert (= bs!516217 (and d!814948 d!814834)))

(assert (=> bs!516217 (= (and (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) (= (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (rule!7320 separatorToken!283))))) (= lambda!103125 lambda!103117))))

(assert (=> d!814948 true))

(assert (=> d!814948 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (dynLambda!13709 order!17387 lambda!103125))))

(assert (=> d!814948 true))

(assert (=> d!814948 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (dynLambda!13709 order!17387 lambda!103125))))

(assert (=> d!814948 (= (semiInverseModEq!2019 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toValue!6890 (transformation!4892 (rule!7320 (h!38147 l!5055))))) (Forall!1221 lambda!103125))))

(declare-fun bs!516218 () Bool)

(assert (= bs!516218 d!814948))

(declare-fun m!3236633 () Bool)

(assert (=> bs!516218 m!3236633))

(assert (=> d!814682 d!814948))

(declare-fun tp!895803 () Bool)

(declare-fun e!1774939 () Bool)

(declare-fun tp!895804 () Bool)

(declare-fun b!2807306 () Bool)

(assert (=> b!2807306 (= e!1774939 (and (inv!44407 (left!24702 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))) tp!895803 (inv!44407 (right!25032 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))) tp!895804))))

(declare-fun b!2807308 () Bool)

(declare-fun e!1774938 () Bool)

(declare-fun tp!895802 () Bool)

(assert (=> b!2807308 (= e!1774938 tp!895802)))

(declare-fun b!2807307 () Bool)

(declare-fun inv!44415 (IArray!20259) Bool)

(assert (=> b!2807307 (= e!1774939 (and (inv!44415 (xs!13239 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))) e!1774938))))

(assert (=> b!2806875 (= tp!895678 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283)))) e!1774939))))

(assert (= (and b!2806875 (is-Node!10127 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))) b!2807306))

(assert (= b!2807307 b!2807308))

(assert (= (and b!2806875 (is-Leaf!15427 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (value!157333 separatorToken!283))))) b!2807307))

(declare-fun m!3236653 () Bool)

(assert (=> b!2807306 m!3236653))

(declare-fun m!3236655 () Bool)

(assert (=> b!2807306 m!3236655))

(declare-fun m!3236657 () Bool)

(assert (=> b!2807307 m!3236657))

(assert (=> b!2806875 m!3235793))

(declare-fun b!2807314 () Bool)

(declare-fun e!1774942 () Bool)

(declare-fun tp!895806 () Bool)

(declare-fun tp!895808 () Bool)

(assert (=> b!2807314 (= e!1774942 (and tp!895806 tp!895808))))

(declare-fun b!2807315 () Bool)

(declare-fun tp!895809 () Bool)

(assert (=> b!2807315 (= e!1774942 tp!895809)))

(assert (=> b!2806917 (= tp!895709 e!1774942)))

(declare-fun b!2807313 () Bool)

(assert (=> b!2807313 (= e!1774942 tp_is_empty!14305)))

(declare-fun b!2807316 () Bool)

(declare-fun tp!895805 () Bool)

(declare-fun tp!895807 () Bool)

(assert (=> b!2807316 (= e!1774942 (and tp!895805 tp!895807))))

(assert (= (and b!2806917 (is-ElementMatch!8262 (regOne!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807313))

(assert (= (and b!2806917 (is-Concat!13377 (regOne!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807314))

(assert (= (and b!2806917 (is-Star!8262 (regOne!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807315))

(assert (= (and b!2806917 (is-Union!8262 (regOne!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807316))

(declare-fun b!2807318 () Bool)

(declare-fun e!1774943 () Bool)

(declare-fun tp!895811 () Bool)

(declare-fun tp!895813 () Bool)

(assert (=> b!2807318 (= e!1774943 (and tp!895811 tp!895813))))

(declare-fun b!2807319 () Bool)

(declare-fun tp!895814 () Bool)

(assert (=> b!2807319 (= e!1774943 tp!895814)))

(assert (=> b!2806917 (= tp!895711 e!1774943)))

(declare-fun b!2807317 () Bool)

(assert (=> b!2807317 (= e!1774943 tp_is_empty!14305)))

(declare-fun b!2807320 () Bool)

(declare-fun tp!895810 () Bool)

(declare-fun tp!895812 () Bool)

(assert (=> b!2807320 (= e!1774943 (and tp!895810 tp!895812))))

(assert (= (and b!2806917 (is-ElementMatch!8262 (regTwo!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807317))

(assert (= (and b!2806917 (is-Concat!13377 (regTwo!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807318))

(assert (= (and b!2806917 (is-Star!8262 (regTwo!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807319))

(assert (= (and b!2806917 (is-Union!8262 (regTwo!17037 (regex!4892 (rule!7320 separatorToken!283))))) b!2807320))

(declare-fun b!2807323 () Bool)

(declare-fun e!1774946 () Bool)

(assert (=> b!2807323 (= e!1774946 true)))

(declare-fun b!2807322 () Bool)

(declare-fun e!1774945 () Bool)

(assert (=> b!2807322 (= e!1774945 e!1774946)))

(declare-fun b!2807321 () Bool)

(declare-fun e!1774944 () Bool)

(assert (=> b!2807321 (= e!1774944 e!1774945)))

(assert (=> b!2806892 e!1774944))

(assert (= b!2807322 b!2807323))

(assert (= b!2807321 b!2807322))

(assert (= (and b!2806892 (is-Cons!32726 (t!229252 (t!229252 rules!2540)))) b!2807321))

(assert (=> b!2807323 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540)))))) (dynLambda!13699 order!17375 lambda!103094))))

(assert (=> b!2807323 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540)))))) (dynLambda!13699 order!17375 lambda!103094))))

(declare-fun b!2807325 () Bool)

(declare-fun e!1774947 () Bool)

(declare-fun tp!895816 () Bool)

(declare-fun tp!895818 () Bool)

(assert (=> b!2807325 (= e!1774947 (and tp!895816 tp!895818))))

(declare-fun b!2807326 () Bool)

(declare-fun tp!895819 () Bool)

(assert (=> b!2807326 (= e!1774947 tp!895819)))

(assert (=> b!2806916 (= tp!895713 e!1774947)))

(declare-fun b!2807324 () Bool)

(assert (=> b!2807324 (= e!1774947 tp_is_empty!14305)))

(declare-fun b!2807327 () Bool)

(declare-fun tp!895815 () Bool)

(declare-fun tp!895817 () Bool)

(assert (=> b!2807327 (= e!1774947 (and tp!895815 tp!895817))))

(assert (= (and b!2806916 (is-ElementMatch!8262 (reg!8591 (regex!4892 (rule!7320 separatorToken!283))))) b!2807324))

(assert (= (and b!2806916 (is-Concat!13377 (reg!8591 (regex!4892 (rule!7320 separatorToken!283))))) b!2807325))

(assert (= (and b!2806916 (is-Star!8262 (reg!8591 (regex!4892 (rule!7320 separatorToken!283))))) b!2807326))

(assert (= (and b!2806916 (is-Union!8262 (reg!8591 (regex!4892 (rule!7320 separatorToken!283))))) b!2807327))

(declare-fun b!2807332 () Bool)

(declare-fun b_free!79957 () Bool)

(declare-fun b_next!80661 () Bool)

(assert (=> b!2807332 (= b_free!79957 (not b_next!80661))))

(declare-fun tp!895821 () Bool)

(declare-fun b_and!204919 () Bool)

(assert (=> b!2807332 (= tp!895821 b_and!204919)))

(declare-fun b_free!79959 () Bool)

(declare-fun b_next!80663 () Bool)

(assert (=> b!2807332 (= b_free!79959 (not b_next!80663))))

(declare-fun t!229361 () Bool)

(declare-fun tb!153263 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229361) tb!153263))

(declare-fun result!190480 () Bool)

(assert (= result!190480 result!190382))

(assert (=> b!2806855 t!229361))

(declare-fun tb!153265 () Bool)

(declare-fun t!229363 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229363) tb!153265))

(declare-fun result!190482 () Bool)

(assert (= result!190482 result!190390))

(assert (=> d!814782 t!229363))

(declare-fun tb!153267 () Bool)

(declare-fun t!229365 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229365) tb!153267))

(declare-fun result!190484 () Bool)

(assert (= result!190484 result!190468))

(assert (=> d!814910 t!229365))

(assert (=> b!2806873 t!229363))

(declare-fun tb!153269 () Bool)

(declare-fun t!229367 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229367) tb!153269))

(declare-fun result!190486 () Bool)

(assert (= result!190486 result!190428))

(assert (=> b!2807242 t!229367))

(declare-fun tb!153271 () Bool)

(declare-fun t!229369 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229369) tb!153271))

(declare-fun result!190488 () Bool)

(assert (= result!190488 result!190448))

(assert (=> d!814840 t!229369))

(declare-fun t!229371 () Bool)

(declare-fun tb!153273 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229371) tb!153273))

(declare-fun result!190490 () Bool)

(assert (= result!190490 result!190458))

(assert (=> d!814900 t!229371))

(assert (=> d!814804 t!229367))

(assert (=> d!814774 t!229361))

(declare-fun t!229373 () Bool)

(declare-fun tb!153275 () Bool)

(assert (=> (and b!2807332 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229373) tb!153275))

(declare-fun result!190492 () Bool)

(assert (= result!190492 result!190438))

(assert (=> d!814830 t!229373))

(declare-fun tp!895822 () Bool)

(declare-fun b_and!204921 () Bool)

(assert (=> b!2807332 (= tp!895822 (and (=> t!229367 result!190486) (=> t!229365 result!190484) (=> t!229361 result!190480) (=> t!229363 result!190482) (=> t!229371 result!190490) (=> t!229373 result!190492) (=> t!229369 result!190488) b_and!204921))))

(declare-fun e!1774949 () Bool)

(assert (=> b!2807332 (= e!1774949 (and tp!895821 tp!895822))))

(declare-fun b!2807330 () Bool)

(declare-fun tp!895820 () Bool)

(declare-fun e!1774950 () Bool)

(assert (=> b!2807330 (= e!1774950 (and tp!895820 (inv!44400 (tag!5396 (h!38146 (t!229252 (t!229252 rules!2540))))) (inv!44403 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) e!1774949))))

(declare-fun b!2807328 () Bool)

(declare-fun e!1774952 () Bool)

(declare-fun tp!895823 () Bool)

(assert (=> b!2807328 (= e!1774952 (and e!1774950 tp!895823))))

(assert (=> b!2806889 (= tp!895690 e!1774952)))

(assert (= b!2807330 b!2807332))

(assert (= b!2807328 b!2807330))

(assert (= (and b!2806889 (is-Cons!32726 (t!229252 (t!229252 rules!2540)))) b!2807328))

(declare-fun m!3236661 () Bool)

(assert (=> b!2807330 m!3236661))

(declare-fun m!3236663 () Bool)

(assert (=> b!2807330 m!3236663))

(declare-fun b!2807334 () Bool)

(declare-fun e!1774953 () Bool)

(declare-fun tp!895825 () Bool)

(declare-fun tp!895827 () Bool)

(assert (=> b!2807334 (= e!1774953 (and tp!895825 tp!895827))))

(declare-fun b!2807335 () Bool)

(declare-fun tp!895828 () Bool)

(assert (=> b!2807335 (= e!1774953 tp!895828)))

(assert (=> b!2806919 (= tp!895715 e!1774953)))

(declare-fun b!2807333 () Bool)

(assert (=> b!2807333 (= e!1774953 tp_is_empty!14305)))

(declare-fun b!2807336 () Bool)

(declare-fun tp!895824 () Bool)

(declare-fun tp!895826 () Bool)

(assert (=> b!2807336 (= e!1774953 (and tp!895824 tp!895826))))

(assert (= (and b!2806919 (is-ElementMatch!8262 (regOne!17036 (regex!4892 (h!38146 rules!2540))))) b!2807333))

(assert (= (and b!2806919 (is-Concat!13377 (regOne!17036 (regex!4892 (h!38146 rules!2540))))) b!2807334))

(assert (= (and b!2806919 (is-Star!8262 (regOne!17036 (regex!4892 (h!38146 rules!2540))))) b!2807335))

(assert (= (and b!2806919 (is-Union!8262 (regOne!17036 (regex!4892 (h!38146 rules!2540))))) b!2807336))

(declare-fun b!2807338 () Bool)

(declare-fun e!1774954 () Bool)

(declare-fun tp!895830 () Bool)

(declare-fun tp!895832 () Bool)

(assert (=> b!2807338 (= e!1774954 (and tp!895830 tp!895832))))

(declare-fun b!2807339 () Bool)

(declare-fun tp!895833 () Bool)

(assert (=> b!2807339 (= e!1774954 tp!895833)))

(assert (=> b!2806919 (= tp!895717 e!1774954)))

(declare-fun b!2807337 () Bool)

(assert (=> b!2807337 (= e!1774954 tp_is_empty!14305)))

(declare-fun b!2807340 () Bool)

(declare-fun tp!895829 () Bool)

(declare-fun tp!895831 () Bool)

(assert (=> b!2807340 (= e!1774954 (and tp!895829 tp!895831))))

(assert (= (and b!2806919 (is-ElementMatch!8262 (regTwo!17036 (regex!4892 (h!38146 rules!2540))))) b!2807337))

(assert (= (and b!2806919 (is-Concat!13377 (regTwo!17036 (regex!4892 (h!38146 rules!2540))))) b!2807338))

(assert (= (and b!2806919 (is-Star!8262 (regTwo!17036 (regex!4892 (h!38146 rules!2540))))) b!2807339))

(assert (= (and b!2806919 (is-Union!8262 (regTwo!17036 (regex!4892 (h!38146 rules!2540))))) b!2807340))

(declare-fun b!2807342 () Bool)

(declare-fun e!1774955 () Bool)

(declare-fun tp!895835 () Bool)

(declare-fun tp!895837 () Bool)

(assert (=> b!2807342 (= e!1774955 (and tp!895835 tp!895837))))

(declare-fun b!2807343 () Bool)

(declare-fun tp!895838 () Bool)

(assert (=> b!2807343 (= e!1774955 tp!895838)))

(assert (=> b!2806890 (= tp!895687 e!1774955)))

(declare-fun b!2807341 () Bool)

(assert (=> b!2807341 (= e!1774955 tp_is_empty!14305)))

(declare-fun b!2807344 () Bool)

(declare-fun tp!895834 () Bool)

(declare-fun tp!895836 () Bool)

(assert (=> b!2807344 (= e!1774955 (and tp!895834 tp!895836))))

(assert (= (and b!2806890 (is-ElementMatch!8262 (regex!4892 (h!38146 (t!229252 rules!2540))))) b!2807341))

(assert (= (and b!2806890 (is-Concat!13377 (regex!4892 (h!38146 (t!229252 rules!2540))))) b!2807342))

(assert (= (and b!2806890 (is-Star!8262 (regex!4892 (h!38146 (t!229252 rules!2540))))) b!2807343))

(assert (= (and b!2806890 (is-Union!8262 (regex!4892 (h!38146 (t!229252 rules!2540))))) b!2807344))

(declare-fun b!2807347 () Bool)

(declare-fun e!1774958 () Bool)

(assert (=> b!2807347 (= e!1774958 true)))

(declare-fun b!2807346 () Bool)

(declare-fun e!1774957 () Bool)

(assert (=> b!2807346 (= e!1774957 e!1774958)))

(declare-fun b!2807345 () Bool)

(declare-fun e!1774956 () Bool)

(assert (=> b!2807345 (= e!1774956 e!1774957)))

(assert (=> b!2806739 e!1774956))

(assert (= b!2807346 b!2807347))

(assert (= b!2807345 b!2807346))

(assert (= (and b!2806739 (is-Cons!32726 (t!229252 rules!2540))) b!2807345))

(assert (=> b!2807347 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103100))))

(assert (=> b!2807347 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103100))))

(declare-fun b!2807350 () Bool)

(declare-fun e!1774961 () Bool)

(assert (=> b!2807350 (= e!1774961 true)))

(declare-fun b!2807349 () Bool)

(declare-fun e!1774960 () Bool)

(assert (=> b!2807349 (= e!1774960 e!1774961)))

(declare-fun b!2807348 () Bool)

(declare-fun e!1774959 () Bool)

(assert (=> b!2807348 (= e!1774959 e!1774960)))

(assert (=> b!2806807 e!1774959))

(assert (= b!2807349 b!2807350))

(assert (= b!2807348 b!2807349))

(assert (= (and b!2806807 (is-Cons!32726 (t!229252 rules!2540))) b!2807348))

(assert (=> b!2807350 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103101))))

(assert (=> b!2807350 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103101))))

(declare-fun b!2807353 () Bool)

(declare-fun e!1774964 () Bool)

(assert (=> b!2807353 (= e!1774964 true)))

(declare-fun b!2807352 () Bool)

(declare-fun e!1774963 () Bool)

(assert (=> b!2807352 (= e!1774963 e!1774964)))

(declare-fun b!2807351 () Bool)

(declare-fun e!1774962 () Bool)

(assert (=> b!2807351 (= e!1774962 e!1774963)))

(assert (=> b!2806864 e!1774962))

(assert (= b!2807352 b!2807353))

(assert (= b!2807351 b!2807352))

(assert (= (and b!2806864 (is-Cons!32726 (t!229252 rules!2540))) b!2807351))

(assert (=> b!2807353 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103106))))

(assert (=> b!2807353 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103106))))

(declare-fun b!2807355 () Bool)

(declare-fun e!1774965 () Bool)

(declare-fun tp!895840 () Bool)

(declare-fun tp!895842 () Bool)

(assert (=> b!2807355 (= e!1774965 (and tp!895840 tp!895842))))

(declare-fun b!2807356 () Bool)

(declare-fun tp!895843 () Bool)

(assert (=> b!2807356 (= e!1774965 tp!895843)))

(assert (=> b!2806912 (= tp!895708 e!1774965)))

(declare-fun b!2807354 () Bool)

(assert (=> b!2807354 (= e!1774965 tp_is_empty!14305)))

(declare-fun b!2807357 () Bool)

(declare-fun tp!895839 () Bool)

(declare-fun tp!895841 () Bool)

(assert (=> b!2807357 (= e!1774965 (and tp!895839 tp!895841))))

(assert (= (and b!2806912 (is-ElementMatch!8262 (reg!8591 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807354))

(assert (= (and b!2806912 (is-Concat!13377 (reg!8591 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807355))

(assert (= (and b!2806912 (is-Star!8262 (reg!8591 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807356))

(assert (= (and b!2806912 (is-Union!8262 (reg!8591 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807357))

(declare-fun b!2807358 () Bool)

(declare-fun e!1774966 () Bool)

(declare-fun tp!895844 () Bool)

(assert (=> b!2807358 (= e!1774966 (and tp_is_empty!14305 tp!895844))))

(assert (=> b!2806936 (= tp!895734 e!1774966)))

(assert (= (and b!2806936 (is-Cons!32725 (t!229251 (originalCharacters!5624 separatorToken!283)))) b!2807358))

(declare-fun e!1774968 () Bool)

(declare-fun tp!895847 () Bool)

(declare-fun tp!895846 () Bool)

(declare-fun b!2807359 () Bool)

(assert (=> b!2807359 (= e!1774968 (and (inv!44407 (left!24702 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))) tp!895846 (inv!44407 (right!25032 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))) tp!895847))))

(declare-fun b!2807361 () Bool)

(declare-fun e!1774967 () Bool)

(declare-fun tp!895845 () Bool)

(assert (=> b!2807361 (= e!1774967 tp!895845)))

(declare-fun b!2807360 () Bool)

(assert (=> b!2807360 (= e!1774968 (and (inv!44415 (xs!13239 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))) e!1774967))))

(assert (=> b!2806861 (= tp!895677 (and (inv!44407 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055))))) e!1774968))))

(assert (= (and b!2806861 (is-Node!10127 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))) b!2807359))

(assert (= b!2807360 b!2807361))

(assert (= (and b!2806861 (is-Leaf!15427 (c!454684 (dynLambda!13705 (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (value!157333 (h!38147 l!5055)))))) b!2807360))

(declare-fun m!3236665 () Bool)

(assert (=> b!2807359 m!3236665))

(declare-fun m!3236667 () Bool)

(assert (=> b!2807359 m!3236667))

(declare-fun m!3236669 () Bool)

(assert (=> b!2807360 m!3236669))

(assert (=> b!2806861 m!3235757))

(declare-fun b!2807363 () Bool)

(declare-fun e!1774969 () Bool)

(declare-fun tp!895849 () Bool)

(declare-fun tp!895851 () Bool)

(assert (=> b!2807363 (= e!1774969 (and tp!895849 tp!895851))))

(declare-fun b!2807364 () Bool)

(declare-fun tp!895852 () Bool)

(assert (=> b!2807364 (= e!1774969 tp!895852)))

(assert (=> b!2806913 (= tp!895704 e!1774969)))

(declare-fun b!2807362 () Bool)

(assert (=> b!2807362 (= e!1774969 tp_is_empty!14305)))

(declare-fun b!2807365 () Bool)

(declare-fun tp!895848 () Bool)

(declare-fun tp!895850 () Bool)

(assert (=> b!2807365 (= e!1774969 (and tp!895848 tp!895850))))

(assert (= (and b!2806913 (is-ElementMatch!8262 (regOne!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807362))

(assert (= (and b!2806913 (is-Concat!13377 (regOne!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807363))

(assert (= (and b!2806913 (is-Star!8262 (regOne!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807364))

(assert (= (and b!2806913 (is-Union!8262 (regOne!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807365))

(declare-fun b!2807367 () Bool)

(declare-fun e!1774970 () Bool)

(declare-fun tp!895854 () Bool)

(declare-fun tp!895856 () Bool)

(assert (=> b!2807367 (= e!1774970 (and tp!895854 tp!895856))))

(declare-fun b!2807368 () Bool)

(declare-fun tp!895857 () Bool)

(assert (=> b!2807368 (= e!1774970 tp!895857)))

(assert (=> b!2806913 (= tp!895706 e!1774970)))

(declare-fun b!2807366 () Bool)

(assert (=> b!2807366 (= e!1774970 tp_is_empty!14305)))

(declare-fun b!2807369 () Bool)

(declare-fun tp!895853 () Bool)

(declare-fun tp!895855 () Bool)

(assert (=> b!2807369 (= e!1774970 (and tp!895853 tp!895855))))

(assert (= (and b!2806913 (is-ElementMatch!8262 (regTwo!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807366))

(assert (= (and b!2806913 (is-Concat!13377 (regTwo!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807367))

(assert (= (and b!2806913 (is-Star!8262 (regTwo!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807368))

(assert (= (and b!2806913 (is-Union!8262 (regTwo!17037 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807369))

(declare-fun b!2807371 () Bool)

(declare-fun e!1774971 () Bool)

(declare-fun tp!895859 () Bool)

(declare-fun tp!895861 () Bool)

(assert (=> b!2807371 (= e!1774971 (and tp!895859 tp!895861))))

(declare-fun b!2807372 () Bool)

(declare-fun tp!895862 () Bool)

(assert (=> b!2807372 (= e!1774971 tp!895862)))

(assert (=> b!2806920 (= tp!895718 e!1774971)))

(declare-fun b!2807370 () Bool)

(assert (=> b!2807370 (= e!1774971 tp_is_empty!14305)))

(declare-fun b!2807373 () Bool)

(declare-fun tp!895858 () Bool)

(declare-fun tp!895860 () Bool)

(assert (=> b!2807373 (= e!1774971 (and tp!895858 tp!895860))))

(assert (= (and b!2806920 (is-ElementMatch!8262 (reg!8591 (regex!4892 (h!38146 rules!2540))))) b!2807370))

(assert (= (and b!2806920 (is-Concat!13377 (reg!8591 (regex!4892 (h!38146 rules!2540))))) b!2807371))

(assert (= (and b!2806920 (is-Star!8262 (reg!8591 (regex!4892 (h!38146 rules!2540))))) b!2807372))

(assert (= (and b!2806920 (is-Union!8262 (reg!8591 (regex!4892 (h!38146 rules!2540))))) b!2807373))

(declare-fun b!2807375 () Bool)

(declare-fun e!1774972 () Bool)

(declare-fun tp!895864 () Bool)

(declare-fun tp!895866 () Bool)

(assert (=> b!2807375 (= e!1774972 (and tp!895864 tp!895866))))

(declare-fun b!2807376 () Bool)

(declare-fun tp!895867 () Bool)

(assert (=> b!2807376 (= e!1774972 tp!895867)))

(assert (=> b!2806911 (= tp!895705 e!1774972)))

(declare-fun b!2807374 () Bool)

(assert (=> b!2807374 (= e!1774972 tp_is_empty!14305)))

(declare-fun b!2807377 () Bool)

(declare-fun tp!895863 () Bool)

(declare-fun tp!895865 () Bool)

(assert (=> b!2807377 (= e!1774972 (and tp!895863 tp!895865))))

(assert (= (and b!2806911 (is-ElementMatch!8262 (regOne!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807374))

(assert (= (and b!2806911 (is-Concat!13377 (regOne!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807375))

(assert (= (and b!2806911 (is-Star!8262 (regOne!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807376))

(assert (= (and b!2806911 (is-Union!8262 (regOne!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807377))

(declare-fun b!2807379 () Bool)

(declare-fun e!1774973 () Bool)

(declare-fun tp!895869 () Bool)

(declare-fun tp!895871 () Bool)

(assert (=> b!2807379 (= e!1774973 (and tp!895869 tp!895871))))

(declare-fun b!2807380 () Bool)

(declare-fun tp!895872 () Bool)

(assert (=> b!2807380 (= e!1774973 tp!895872)))

(assert (=> b!2806911 (= tp!895707 e!1774973)))

(declare-fun b!2807378 () Bool)

(assert (=> b!2807378 (= e!1774973 tp_is_empty!14305)))

(declare-fun b!2807381 () Bool)

(declare-fun tp!895868 () Bool)

(declare-fun tp!895870 () Bool)

(assert (=> b!2807381 (= e!1774973 (and tp!895868 tp!895870))))

(assert (= (and b!2806911 (is-ElementMatch!8262 (regTwo!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807378))

(assert (= (and b!2806911 (is-Concat!13377 (regTwo!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807379))

(assert (= (and b!2806911 (is-Star!8262 (regTwo!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807380))

(assert (= (and b!2806911 (is-Union!8262 (regTwo!17036 (regex!4892 (rule!7320 (h!38147 l!5055)))))) b!2807381))

(declare-fun b!2807383 () Bool)

(declare-fun e!1774974 () Bool)

(declare-fun tp!895874 () Bool)

(declare-fun tp!895876 () Bool)

(assert (=> b!2807383 (= e!1774974 (and tp!895874 tp!895876))))

(declare-fun b!2807384 () Bool)

(declare-fun tp!895877 () Bool)

(assert (=> b!2807384 (= e!1774974 tp!895877)))

(assert (=> b!2806921 (= tp!895714 e!1774974)))

(declare-fun b!2807382 () Bool)

(assert (=> b!2807382 (= e!1774974 tp_is_empty!14305)))

(declare-fun b!2807385 () Bool)

(declare-fun tp!895873 () Bool)

(declare-fun tp!895875 () Bool)

(assert (=> b!2807385 (= e!1774974 (and tp!895873 tp!895875))))

(assert (= (and b!2806921 (is-ElementMatch!8262 (regOne!17037 (regex!4892 (h!38146 rules!2540))))) b!2807382))

(assert (= (and b!2806921 (is-Concat!13377 (regOne!17037 (regex!4892 (h!38146 rules!2540))))) b!2807383))

(assert (= (and b!2806921 (is-Star!8262 (regOne!17037 (regex!4892 (h!38146 rules!2540))))) b!2807384))

(assert (= (and b!2806921 (is-Union!8262 (regOne!17037 (regex!4892 (h!38146 rules!2540))))) b!2807385))

(declare-fun b!2807387 () Bool)

(declare-fun e!1774975 () Bool)

(declare-fun tp!895879 () Bool)

(declare-fun tp!895881 () Bool)

(assert (=> b!2807387 (= e!1774975 (and tp!895879 tp!895881))))

(declare-fun b!2807388 () Bool)

(declare-fun tp!895882 () Bool)

(assert (=> b!2807388 (= e!1774975 tp!895882)))

(assert (=> b!2806921 (= tp!895716 e!1774975)))

(declare-fun b!2807386 () Bool)

(assert (=> b!2807386 (= e!1774975 tp_is_empty!14305)))

(declare-fun b!2807389 () Bool)

(declare-fun tp!895878 () Bool)

(declare-fun tp!895880 () Bool)

(assert (=> b!2807389 (= e!1774975 (and tp!895878 tp!895880))))

(assert (= (and b!2806921 (is-ElementMatch!8262 (regTwo!17037 (regex!4892 (h!38146 rules!2540))))) b!2807386))

(assert (= (and b!2806921 (is-Concat!13377 (regTwo!17037 (regex!4892 (h!38146 rules!2540))))) b!2807387))

(assert (= (and b!2806921 (is-Star!8262 (regTwo!17037 (regex!4892 (h!38146 rules!2540))))) b!2807388))

(assert (= (and b!2806921 (is-Union!8262 (regTwo!17037 (regex!4892 (h!38146 rules!2540))))) b!2807389))

(declare-fun b!2807392 () Bool)

(declare-fun e!1774978 () Bool)

(assert (=> b!2807392 (= e!1774978 true)))

(declare-fun b!2807391 () Bool)

(declare-fun e!1774977 () Bool)

(assert (=> b!2807391 (= e!1774977 e!1774978)))

(declare-fun b!2807390 () Bool)

(declare-fun e!1774976 () Bool)

(assert (=> b!2807390 (= e!1774976 e!1774977)))

(assert (=> b!2806843 e!1774976))

(assert (= b!2807391 b!2807392))

(assert (= b!2807390 b!2807391))

(assert (= (and b!2806843 (is-Cons!32726 (t!229252 rules!2540))) b!2807390))

(assert (=> b!2807392 (< (dynLambda!13698 order!17373 (toValue!6890 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103105))))

(assert (=> b!2807392 (< (dynLambda!13700 order!17377 (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540))))) (dynLambda!13699 order!17375 lambda!103105))))

(declare-fun b!2807394 () Bool)

(declare-fun e!1774979 () Bool)

(declare-fun tp!895884 () Bool)

(declare-fun tp!895886 () Bool)

(assert (=> b!2807394 (= e!1774979 (and tp!895884 tp!895886))))

(declare-fun b!2807395 () Bool)

(declare-fun tp!895887 () Bool)

(assert (=> b!2807395 (= e!1774979 tp!895887)))

(assert (=> b!2806915 (= tp!895710 e!1774979)))

(declare-fun b!2807393 () Bool)

(assert (=> b!2807393 (= e!1774979 tp_is_empty!14305)))

(declare-fun b!2807396 () Bool)

(declare-fun tp!895883 () Bool)

(declare-fun tp!895885 () Bool)

(assert (=> b!2807396 (= e!1774979 (and tp!895883 tp!895885))))

(assert (= (and b!2806915 (is-ElementMatch!8262 (regOne!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807393))

(assert (= (and b!2806915 (is-Concat!13377 (regOne!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807394))

(assert (= (and b!2806915 (is-Star!8262 (regOne!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807395))

(assert (= (and b!2806915 (is-Union!8262 (regOne!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807396))

(declare-fun b!2807398 () Bool)

(declare-fun e!1774980 () Bool)

(declare-fun tp!895889 () Bool)

(declare-fun tp!895891 () Bool)

(assert (=> b!2807398 (= e!1774980 (and tp!895889 tp!895891))))

(declare-fun b!2807399 () Bool)

(declare-fun tp!895892 () Bool)

(assert (=> b!2807399 (= e!1774980 tp!895892)))

(assert (=> b!2806915 (= tp!895712 e!1774980)))

(declare-fun b!2807397 () Bool)

(assert (=> b!2807397 (= e!1774980 tp_is_empty!14305)))

(declare-fun b!2807400 () Bool)

(declare-fun tp!895888 () Bool)

(declare-fun tp!895890 () Bool)

(assert (=> b!2807400 (= e!1774980 (and tp!895888 tp!895890))))

(assert (= (and b!2806915 (is-ElementMatch!8262 (regTwo!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807397))

(assert (= (and b!2806915 (is-Concat!13377 (regTwo!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807398))

(assert (= (and b!2806915 (is-Star!8262 (regTwo!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807399))

(assert (= (and b!2806915 (is-Union!8262 (regTwo!17036 (regex!4892 (rule!7320 separatorToken!283))))) b!2807400))

(declare-fun b!2807404 () Bool)

(declare-fun e!1774983 () Bool)

(declare-fun tp!895894 () Bool)

(declare-fun tp!895896 () Bool)

(assert (=> b!2807404 (= e!1774983 (and tp!895894 tp!895896))))

(declare-fun b!2807405 () Bool)

(declare-fun tp!895897 () Bool)

(assert (=> b!2807405 (= e!1774983 tp!895897)))

(assert (=> b!2806934 (= tp!895731 e!1774983)))

(declare-fun b!2807403 () Bool)

(assert (=> b!2807403 (= e!1774983 tp_is_empty!14305)))

(declare-fun b!2807406 () Bool)

(declare-fun tp!895893 () Bool)

(declare-fun tp!895895 () Bool)

(assert (=> b!2807406 (= e!1774983 (and tp!895893 tp!895895))))

(assert (= (and b!2806934 (is-ElementMatch!8262 (regex!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) b!2807403))

(assert (= (and b!2806934 (is-Concat!13377 (regex!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) b!2807404))

(assert (= (and b!2806934 (is-Star!8262 (regex!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) b!2807405))

(assert (= (and b!2806934 (is-Union!8262 (regex!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) b!2807406))

(declare-fun b!2807407 () Bool)

(declare-fun e!1774984 () Bool)

(declare-fun tp!895898 () Bool)

(assert (=> b!2807407 (= e!1774984 (and tp_is_empty!14305 tp!895898))))

(assert (=> b!2806899 (= tp!895693 e!1774984)))

(assert (= (and b!2806899 (is-Cons!32725 (t!229251 (originalCharacters!5624 (h!38147 l!5055))))) b!2807407))

(declare-fun b!2807408 () Bool)

(declare-fun e!1774985 () Bool)

(declare-fun tp!895899 () Bool)

(assert (=> b!2807408 (= e!1774985 (and tp_is_empty!14305 tp!895899))))

(assert (=> b!2806933 (= tp!895730 e!1774985)))

(assert (= (and b!2806933 (is-Cons!32725 (originalCharacters!5624 (h!38147 (t!229253 l!5055))))) b!2807408))

(declare-fun b!2807412 () Bool)

(declare-fun b_free!79961 () Bool)

(declare-fun b_next!80665 () Bool)

(assert (=> b!2807412 (= b_free!79961 (not b_next!80665))))

(declare-fun tp!895904 () Bool)

(declare-fun b_and!204923 () Bool)

(assert (=> b!2807412 (= tp!895904 b_and!204923)))

(declare-fun b_free!79963 () Bool)

(declare-fun b_next!80667 () Bool)

(assert (=> b!2807412 (= b_free!79963 (not b_next!80667))))

(declare-fun t!229375 () Bool)

(declare-fun tb!153277 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055))))) t!229375) tb!153277))

(declare-fun result!190494 () Bool)

(assert (= result!190494 result!190382))

(assert (=> b!2806855 t!229375))

(declare-fun tb!153279 () Bool)

(declare-fun t!229377 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283)))) t!229377) tb!153279))

(declare-fun result!190496 () Bool)

(assert (= result!190496 result!190390))

(assert (=> d!814782 t!229377))

(declare-fun tb!153281 () Bool)

(declare-fun t!229379 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003154))))) t!229379) tb!153281))

(declare-fun result!190498 () Bool)

(assert (= result!190498 result!190468))

(assert (=> d!814910 t!229379))

(assert (=> b!2806873 t!229377))

(declare-fun t!229381 () Bool)

(declare-fun tb!153283 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055)))))) t!229381) tb!153283))

(declare-fun result!190500 () Bool)

(assert (= result!190500 result!190428))

(assert (=> b!2807242 t!229381))

(declare-fun tb!153285 () Bool)

(declare-fun t!229383 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003155))))) t!229383) tb!153285))

(declare-fun result!190502 () Bool)

(assert (= result!190502 result!190448))

(assert (=> d!814840 t!229383))

(declare-fun tb!153287 () Bool)

(declare-fun t!229385 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003145))))) t!229385) tb!153287))

(declare-fun result!190504 () Bool)

(assert (= result!190504 result!190458))

(assert (=> d!814900 t!229385))

(assert (=> d!814804 t!229381))

(assert (=> d!814774 t!229375))

(declare-fun tb!153289 () Bool)

(declare-fun t!229387 () Bool)

(assert (=> (and b!2807412 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 lt!1003146))))) t!229387) tb!153289))

(declare-fun result!190506 () Bool)

(assert (= result!190506 result!190438))

(assert (=> d!814830 t!229387))

(declare-fun tp!895903 () Bool)

(declare-fun b_and!204925 () Bool)

(assert (=> b!2807412 (= tp!895903 (and (=> t!229381 result!190500) (=> t!229379 result!190498) (=> t!229385 result!190504) (=> t!229387 result!190506) (=> t!229377 result!190496) (=> t!229375 result!190494) (=> t!229383 result!190502) b_and!204925))))

(declare-fun e!1774990 () Bool)

(declare-fun tp!895900 () Bool)

(declare-fun b!2807409 () Bool)

(declare-fun e!1774986 () Bool)

(assert (=> b!2807409 (= e!1774986 (and (inv!44404 (h!38147 (t!229253 (t!229253 l!5055)))) e!1774990 tp!895900))))

(declare-fun e!1774991 () Bool)

(assert (=> b!2807412 (= e!1774991 (and tp!895904 tp!895903))))

(declare-fun e!1774987 () Bool)

(declare-fun tp!895902 () Bool)

(declare-fun b!2807411 () Bool)

(assert (=> b!2807411 (= e!1774987 (and tp!895902 (inv!44400 (tag!5396 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (inv!44403 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) e!1774991))))

(assert (=> b!2806932 (= tp!895729 e!1774986)))

(declare-fun b!2807410 () Bool)

(declare-fun tp!895901 () Bool)

(assert (=> b!2807410 (= e!1774990 (and (inv!21 (value!157333 (h!38147 (t!229253 (t!229253 l!5055))))) e!1774987 tp!895901))))

(assert (= b!2807411 b!2807412))

(assert (= b!2807410 b!2807411))

(assert (= b!2807409 b!2807410))

(assert (= (and b!2806932 (is-Cons!32727 (t!229253 (t!229253 l!5055)))) b!2807409))

(declare-fun m!3236677 () Bool)

(assert (=> b!2807409 m!3236677))

(declare-fun m!3236679 () Bool)

(assert (=> b!2807411 m!3236679))

(declare-fun m!3236681 () Bool)

(assert (=> b!2807411 m!3236681))

(declare-fun m!3236683 () Bool)

(assert (=> b!2807410 m!3236683))

(declare-fun b_lambda!83911 () Bool)

(assert (= b_lambda!83899 (or d!814658 b_lambda!83911)))

(declare-fun bs!516219 () Bool)

(declare-fun d!814956 () Bool)

(assert (= bs!516219 (and d!814956 d!814658)))

(assert (=> bs!516219 (= (dynLambda!13704 lambda!103101 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))) (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 l!5055 separatorToken!283))))))

(assert (=> bs!516219 m!3235659))

(assert (=> b!2807253 d!814956))

(declare-fun b_lambda!83913 () Bool)

(assert (= b_lambda!83885 (or d!814678 b_lambda!83913)))

(declare-fun bs!516220 () Bool)

(declare-fun d!814958 () Bool)

(assert (= bs!516220 (and d!814958 d!814678)))

(assert (=> bs!516220 (= (dynLambda!13704 lambda!103105 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))) (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (withSeparatorTokenList!131 thiss!19710 (t!229253 l!5055) separatorToken!283))))))

(assert (=> bs!516220 m!3235741))

(assert (=> b!2807121 d!814958))

(declare-fun b_lambda!83915 () Bool)

(assert (= b_lambda!83905 (or d!814632 b_lambda!83915)))

(declare-fun bs!516221 () Bool)

(declare-fun d!814960 () Bool)

(assert (= bs!516221 (and d!814960 d!814632)))

(assert (=> bs!516221 (= (dynLambda!13704 lambda!103100 (h!38147 (t!229253 l!5055))) (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 (t!229253 l!5055))))))

(assert (=> bs!516221 m!3235569))

(assert (=> b!2807281 d!814960))

(declare-fun b_lambda!83917 () Bool)

(assert (= b_lambda!83891 (or (and b!2807412 b_free!79963 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2807332 b_free!79959 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806935 b_free!79947) (and b!2806613 b_free!79919 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806616 b_free!79927 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) b_lambda!83917)))

(declare-fun b_lambda!83919 () Bool)

(assert (= b_lambda!83897 (or (and b!2807412 b_free!79963 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2807332 b_free!79959 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806935 b_free!79947) (and b!2806613 b_free!79919 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806616 b_free!79927 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))))) b_lambda!83919)))

(declare-fun b_lambda!83921 () Bool)

(assert (= b_lambda!83909 (or b!2806614 b_lambda!83921)))

(assert (=> b!2807288 d!814706))

(declare-fun b_lambda!83923 () Bool)

(assert (= b_lambda!83883 (or d!814694 b_lambda!83923)))

(declare-fun bs!516222 () Bool)

(declare-fun d!814962 () Bool)

(assert (= bs!516222 (and d!814962 d!814694)))

(assert (=> bs!516222 (= (dynLambda!13704 lambda!103106 (h!38147 l!5055)) (rulesProduceIndividualToken!2047 thiss!19710 rules!2540 (h!38147 l!5055)))))

(assert (=> bs!516222 m!3235491))

(assert (=> b!2807091 d!814962))

(declare-fun b_lambda!83925 () Bool)

(assert (= b_lambda!83889 (or (and b!2806613 b_free!79919 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806935 b_free!79947 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2807412 b_free!79963 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) (and b!2806616 b_free!79927) (and b!2807332 b_free!79959 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))))) b_lambda!83925)))

(declare-fun b_lambda!83927 () Bool)

(assert (= b_lambda!83887 (or (and b!2807412 b_free!79963 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 (t!229253 l!5055)))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806935 b_free!79947 (= (toChars!6749 (transformation!4892 (rule!7320 (h!38147 (t!229253 l!5055))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806613 b_free!79919) (and b!2806616 b_free!79927 (= (toChars!6749 (transformation!4892 (rule!7320 separatorToken!283))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806891 b_free!79943 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 rules!2540)))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2807332 b_free!79959 (= (toChars!6749 (transformation!4892 (h!38146 (t!229252 (t!229252 rules!2540))))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) (and b!2806622 b_free!79923 (= (toChars!6749 (transformation!4892 (h!38146 rules!2540))) (toChars!6749 (transformation!4892 (rule!7320 (h!38147 l!5055)))))) b_lambda!83927)))

(declare-fun b_lambda!83929 () Bool)

(assert (= b_lambda!83907 (or b!2806614 b_lambda!83929)))

(assert (=> d!814938 d!814706))

(push 1)

(assert (not b!2807338))

(assert (not b!2807175))

(assert (not b_next!80667))

(assert (not b!2807236))

(assert (not b!2807100))

(assert b_and!204823)

(assert (not d!814818))

(assert (not d!814920))

(assert (not b!2807265))

(assert (not b_next!80629))

(assert (not b_lambda!83917))

(assert (not b!2807357))

(assert (not b!2807344))

(assert (not b_lambda!83911))

(assert (not tb!153233))

(assert (not b!2807293))

(assert (not b!2807073))

(assert (not d!814870))

(assert (not b_lambda!83915))

(assert (not d!814880))

(assert (not b!2807254))

(assert (not b!2807372))

(assert (not b!2807289))

(assert (not b_next!80625))

(assert (not d!814852))

(assert (not b!2807099))

(assert (not b!2807116))

(assert (not d!814816))

(assert b_and!204913)

(assert (not d!814836))

(assert (not b!2807207))

(assert (not b_lambda!83925))

(assert (not b!2807200))

(assert (not d!814860))

(assert (not d!814810))

(assert (not d!814732))

(assert (not b!2807339))

(assert (not b!2807114))

(assert (not b_lambda!83929))

(assert b_and!204827)

(assert (not b!2807243))

(assert (not b!2807375))

(assert (not d!814826))

(assert (not b!2807163))

(assert (not d!814800))

(assert (not d!814796))

(assert (not b!2807244))

(assert (not b!2807327))

(assert (not d!814760))

(assert (not b_lambda!83871))

(assert (not b!2807225))

(assert (not b!2807328))

(assert (not d!814878))

(assert (not b!2807092))

(assert (not b!2807360))

(assert (not b!2807270))

(assert b_and!204921)

(assert (not d!814828))

(assert (not b!2807406))

(assert (not bs!516221))

(assert (not b!2807245))

(assert (not b!2807117))

(assert b_and!204911)

(assert (not b!2807193))

(assert (not b_next!80661))

(assert (not b!2807379))

(assert (not b!2807162))

(assert (not b!2807399))

(assert (not b!2807173))

(assert (not d!814864))

(assert (not b!2807118))

(assert (not d!814932))

(assert (not tb!153213))

(assert (not b_next!80665))

(assert (not b!2807398))

(assert (not d!814734))

(assert b_and!204909)

(assert (not b!2807355))

(assert (not b!2807258))

(assert (not b!2807343))

(assert (not b!2807079))

(assert (not b!2807383))

(assert (not bs!516219))

(assert (not b!2807217))

(assert (not b!2807356))

(assert (not b!2807267))

(assert (not b!2807368))

(assert (not b!2807101))

(assert (not b!2806861))

(assert (not b!2807145))

(assert (not b!2807148))

(assert (not b!2807283))

(assert (not b!2807280))

(assert (not b!2807107))

(assert (not b!2807191))

(assert (not b_lambda!83919))

(assert (not d!814748))

(assert (not d!814776))

(assert (not b!2807284))

(assert (not d!814900))

(assert (not b!2807271))

(assert (not b!2807141))

(assert (not b!2807325))

(assert (not d!814772))

(assert b_and!204915)

(assert (not b!2807330))

(assert (not b_lambda!83869))

(assert (not d!814812))

(assert (not b!2807342))

(assert (not b_lambda!83927))

(assert (not d!814906))

(assert (not tb!153253))

(assert (not d!814844))

(assert (not b_next!80663))

(assert (not b!2807144))

(assert (not b!2807255))

(assert (not d!814756))

(assert (not b!2807363))

(assert (not b!2807257))

(assert (not b!2807218))

(assert (not b!2807194))

(assert (not b!2807261))

(assert (not d!814804))

(assert (not d!814872))

(assert (not b!2807214))

(assert (not b!2807371))

(assert (not b_lambda!83903))

(assert (not d!814926))

(assert (not d!814934))

(assert (not b!2807365))

(assert (not b!2807336))

(assert (not d!814770))

(assert (not d!814774))

(assert (not b!2807387))

(assert (not b!2807211))

(assert (not b!2807190))

(assert (not d!814788))

(assert (not bs!516222))

(assert (not b!2807377))

(assert (not b_lambda!83921))

(assert (not b!2807275))

(assert (not b!2807409))

(assert (not b!2807381))

(assert (not b!2807358))

(assert (not b!2807319))

(assert (not b!2807158))

(assert b_and!204783)

(assert (not b!2807252))

(assert (not d!814782))

(assert (not b!2807109))

(assert (not b_next!80621))

(assert (not b!2807197))

(assert (not d!814820))

(assert (not b!2807321))

(assert (not b!2807404))

(assert (not b!2807326))

(assert (not b!2807233))

(assert (not b!2807367))

(assert (not b!2807242))

(assert (not d!814830))

(assert (not b!2807306))

(assert (not b!2807156))

(assert (not b_next!80649))

(assert (not b!2807396))

(assert (not b!2807260))

(assert (not b!2807408))

(assert (not b!2807405))

(assert (not b!2807411))

(assert (not b!2807136))

(assert (not b!2807159))

(assert (not b!2807361))

(assert (not b!2807316))

(assert (not b!2807376))

(assert (not b!2807247))

(assert (not b!2807167))

(assert (not b!2807264))

(assert (not b!2807348))

(assert (not b!2807282))

(assert (not d!814936))

(assert (not b_next!80627))

(assert (not d!814918))

(assert (not b_lambda!83923))

(assert (not b_next!80631))

(assert (not b!2807122))

(assert (not b!2807085))

(assert (not d!814876))

(assert (not b!2807364))

(assert (not b!2807279))

(assert (not d!814898))

(assert (not b!2807315))

(assert (not d!814928))

(assert (not b!2807389))

(assert (not b!2807373))

(assert (not b!2807268))

(assert (not d!814848))

(assert (not b!2807320))

(assert (not b!2807140))

(assert (not b!2807272))

(assert (not b!2807227))

(assert (not b!2807274))

(assert (not d!814916))

(assert (not d!814882))

(assert (not d!814914))

(assert (not d!814910))

(assert (not b!2807210))

(assert (not b!2807273))

(assert (not b!2807351))

(assert (not tb!153223))

(assert (not d!814904))

(assert (not b_lambda!83893))

(assert (not d!814790))

(assert (not b!2807198))

(assert (not b!2807290))

(assert (not b_next!80645))

(assert (not b!2806875))

(assert (not b!2807292))

(assert (not d!814948))

(assert (not b!2807380))

(assert (not d!814840))

(assert tp_is_empty!14305)

(assert (not b!2807106))

(assert b_and!204923)

(assert (not b!2807407))

(assert (not d!814808))

(assert (not b!2807123))

(assert (not b!2807171))

(assert (not d!814894))

(assert b_and!204917)

(assert (not d!814742))

(assert b_and!204775)

(assert (not d!814896))

(assert (not b!2807250))

(assert (not d!814858))

(assert (not b!2807334))

(assert (not b!2807216))

(assert (not b_next!80647))

(assert (not b!2807388))

(assert (not b!2807204))

(assert (not b!2807359))

(assert (not d!814868))

(assert (not b_lambda!83913))

(assert (not d!814792))

(assert (not d!814806))

(assert (not d!814814))

(assert (not b!2807213))

(assert (not b!2807105))

(assert (not b!2807340))

(assert (not b!2807113))

(assert (not b!2807410))

(assert (not d!814784))

(assert (not b!2807238))

(assert (not b!2807395))

(assert (not b_lambda!83895))

(assert (not b!2807241))

(assert (not bs!516220))

(assert (not b!2807285))

(assert (not b!2807345))

(assert (not d!814944))

(assert b_and!204919)

(assert (not d!814780))

(assert (not b_lambda!83901))

(assert (not d!814786))

(assert (not b_next!80651))

(assert (not d!814798))

(assert (not b!2807170))

(assert (not d!814890))

(assert (not b!2807149))

(assert (not b!2807385))

(assert (not tb!153243))

(assert (not b!2807307))

(assert (not d!814866))

(assert (not d!814794))

(assert (not b!2807249))

(assert (not b!2807206))

(assert (not d!814908))

(assert b_and!204925)

(assert (not b!2807394))

(assert (not b!2807098))

(assert (not b_lambda!83873))

(assert (not b!2807166))

(assert (not d!814834))

(assert (not b!2807318))

(assert (not b!2807390))

(assert (not b!2807314))

(assert (not b!2807248))

(assert (not d!814874))

(assert (not d!814838))

(assert (not b!2807137))

(assert (not b!2807102))

(assert (not b!2807086))

(assert (not b!2807400))

(assert (not b!2807203))

(assert (not d!814884))

(assert (not b!2807125))

(assert (not b!2807384))

(assert (not b!2807335))

(assert (not b!2807369))

(assert (not b_next!80623))

(assert (not b!2807308))

(assert (not d!814856))

(assert (not d!814778))

(assert b_and!204779)

(check-sat)

(pop 1)

(push 1)

(assert b_and!204827)

(assert b_and!204921)

(assert (not b_next!80665))

(assert b_and!204909)

(assert b_and!204915)

(assert (not b_next!80663))

(assert (not b_next!80649))

(assert (not b_next!80645))

(assert b_and!204923)

(assert b_and!204919)

(assert (not b_next!80667))

(assert b_and!204823)

(assert (not b_next!80629))

(assert (not b_next!80625))

(assert b_and!204913)

(assert b_and!204911)

(assert (not b_next!80661))

(assert b_and!204783)

(assert (not b_next!80621))

(assert (not b_next!80627))

(assert (not b_next!80631))

(assert b_and!204917)

(assert b_and!204775)

(assert (not b_next!80647))

(assert (not b_next!80651))

(assert b_and!204925)

(assert (not b_next!80623))

(assert b_and!204779)

(check-sat)

(pop 1)

