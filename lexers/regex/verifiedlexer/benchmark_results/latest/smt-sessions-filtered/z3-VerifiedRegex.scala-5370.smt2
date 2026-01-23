; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273726 () Bool)

(assert start!273726)

(declare-fun b!2821472 () Bool)

(declare-fun b_free!80725 () Bool)

(declare-fun b_next!81429 () Bool)

(assert (=> b!2821472 (= b_free!80725 (not b_next!81429))))

(declare-fun tp!901092 () Bool)

(declare-fun b_and!206119 () Bool)

(assert (=> b!2821472 (= tp!901092 b_and!206119)))

(declare-fun b_free!80727 () Bool)

(declare-fun b_next!81431 () Bool)

(assert (=> b!2821472 (= b_free!80727 (not b_next!81431))))

(declare-fun tp!901086 () Bool)

(declare-fun b_and!206121 () Bool)

(assert (=> b!2821472 (= tp!901086 b_and!206121)))

(declare-fun b!2821481 () Bool)

(declare-fun b_free!80729 () Bool)

(declare-fun b_next!81433 () Bool)

(assert (=> b!2821481 (= b_free!80729 (not b_next!81433))))

(declare-fun tp!901088 () Bool)

(declare-fun b_and!206123 () Bool)

(assert (=> b!2821481 (= tp!901088 b_and!206123)))

(declare-fun b_free!80731 () Bool)

(declare-fun b_next!81435 () Bool)

(assert (=> b!2821481 (= b_free!80731 (not b_next!81435))))

(declare-fun tp!901089 () Bool)

(declare-fun b_and!206125 () Bool)

(assert (=> b!2821481 (= tp!901089 b_and!206125)))

(declare-fun b!2821495 () Bool)

(declare-fun e!1784952 () Bool)

(assert (=> b!2821495 (= e!1784952 true)))

(declare-fun b!2821494 () Bool)

(declare-fun e!1784951 () Bool)

(assert (=> b!2821494 (= e!1784951 e!1784952)))

(declare-fun b!2821493 () Bool)

(declare-fun e!1784950 () Bool)

(assert (=> b!2821493 (= e!1784950 e!1784951)))

(declare-fun b!2821478 () Bool)

(assert (=> b!2821478 e!1784950))

(assert (= b!2821494 b!2821495))

(assert (= b!2821493 b!2821494))

(declare-datatypes ((String!36400 0))(
  ( (String!36401 (value!159625 String)) )
))
(declare-datatypes ((C!16880 0))(
  ( (C!16881 (val!10420 Int)) )
))
(declare-datatypes ((List!33232 0))(
  ( (Nil!33108) (Cons!33108 (h!38528 (_ BitVec 16)) (t!230547 List!33232)) )
))
(declare-datatypes ((TokenValue!5189 0))(
  ( (FloatLiteralValue!10378 (text!36768 List!33232)) (TokenValueExt!5188 (__x!22051 Int)) (Broken!25945 (value!159626 List!33232)) (Object!5312) (End!5189) (Def!5189) (Underscore!5189) (Match!5189) (Else!5189) (Error!5189) (Case!5189) (If!5189) (Extends!5189) (Abstract!5189) (Class!5189) (Val!5189) (DelimiterValue!10378 (del!5249 List!33232)) (KeywordValue!5195 (value!159627 List!33232)) (CommentValue!10378 (value!159628 List!33232)) (WhitespaceValue!10378 (value!159629 List!33232)) (IndentationValue!5189 (value!159630 List!33232)) (String!36402) (Int32!5189) (Broken!25946 (value!159631 List!33232)) (Boolean!5190) (Unit!47064) (OperatorValue!5192 (op!5249 List!33232)) (IdentifierValue!10378 (value!159632 List!33232)) (IdentifierValue!10379 (value!159633 List!33232)) (WhitespaceValue!10379 (value!159634 List!33232)) (True!10378) (False!10378) (Broken!25947 (value!159635 List!33232)) (Broken!25948 (value!159636 List!33232)) (True!10379) (RightBrace!5189) (RightBracket!5189) (Colon!5189) (Null!5189) (Comma!5189) (LeftBracket!5189) (False!10379) (LeftBrace!5189) (ImaginaryLiteralValue!5189 (text!36769 List!33232)) (StringLiteralValue!15567 (value!159637 List!33232)) (EOFValue!5189 (value!159638 List!33232)) (IdentValue!5189 (value!159639 List!33232)) (DelimiterValue!10379 (value!159640 List!33232)) (DedentValue!5189 (value!159641 List!33232)) (NewLineValue!5189 (value!159642 List!33232)) (IntegerValue!15567 (value!159643 (_ BitVec 32)) (text!36770 List!33232)) (IntegerValue!15568 (value!159644 Int) (text!36771 List!33232)) (Times!5189) (Or!5189) (Equal!5189) (Minus!5189) (Broken!25949 (value!159645 List!33232)) (And!5189) (Div!5189) (LessEqual!5189) (Mod!5189) (Concat!13538) (Not!5189) (Plus!5189) (SpaceValue!5189 (value!159646 List!33232)) (IntegerValue!15569 (value!159647 Int) (text!36772 List!33232)) (StringLiteralValue!15568 (text!36773 List!33232)) (FloatLiteralValue!10379 (text!36774 List!33232)) (BytesLiteralValue!5189 (value!159648 List!33232)) (CommentValue!10379 (value!159649 List!33232)) (StringLiteralValue!15569 (value!159650 List!33232)) (ErrorTokenValue!5189 (msg!5250 List!33232)) )
))
(declare-datatypes ((List!33233 0))(
  ( (Nil!33109) (Cons!33109 (h!38529 C!16880) (t!230548 List!33233)) )
))
(declare-datatypes ((IArray!20551 0))(
  ( (IArray!20552 (innerList!10333 List!33233)) )
))
(declare-datatypes ((Conc!10273 0))(
  ( (Node!10273 (left!25007 Conc!10273) (right!25337 Conc!10273) (csize!20776 Int) (cheight!10484 Int)) (Leaf!15644 (xs!13385 IArray!20551) (csize!20777 Int)) (Empty!10273) )
))
(declare-datatypes ((BalanceConc!20184 0))(
  ( (BalanceConc!20185 (c!457081 Conc!10273)) )
))
(declare-datatypes ((TokenValueInjection!9806 0))(
  ( (TokenValueInjection!9807 (toValue!6977 Int) (toChars!6836 Int)) )
))
(declare-datatypes ((Regex!8349 0))(
  ( (ElementMatch!8349 (c!457082 C!16880)) (Concat!13539 (regOne!17210 Regex!8349) (regTwo!17210 Regex!8349)) (EmptyExpr!8349) (Star!8349 (reg!8678 Regex!8349)) (EmptyLang!8349) (Union!8349 (regOne!17211 Regex!8349) (regTwo!17211 Regex!8349)) )
))
(declare-datatypes ((Rule!9718 0))(
  ( (Rule!9719 (regex!4959 Regex!8349) (tag!5463 String!36400) (isSeparator!4959 Bool) (transformation!4959 TokenValueInjection!9806)) )
))
(declare-datatypes ((List!33234 0))(
  ( (Nil!33110) (Cons!33110 (h!38530 Rule!9718) (t!230549 List!33234)) )
))
(declare-fun rules!4424 () List!33234)

(get-info :version)

(assert (= (and b!2821478 ((_ is Cons!33110) rules!4424)) b!2821493))

(declare-fun lambda!103593 () Int)

(declare-fun order!17601 () Int)

(declare-fun order!17599 () Int)

(declare-fun dynLambda!13854 (Int Int) Int)

(declare-fun dynLambda!13855 (Int Int) Int)

(assert (=> b!2821495 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103593))))

(declare-fun order!17603 () Int)

(declare-fun dynLambda!13856 (Int Int) Int)

(assert (=> b!2821495 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103593))))

(declare-fun b!2821464 () Bool)

(declare-fun e!1784932 () Bool)

(declare-fun e!1784929 () Bool)

(assert (=> b!2821464 (= e!1784932 e!1784929)))

(declare-fun res!1174203 () Bool)

(assert (=> b!2821464 (=> (not res!1174203) (not e!1784929))))

(declare-datatypes ((Token!9320 0))(
  ( (Token!9321 (value!159651 TokenValue!5189) (rule!7387 Rule!9718) (size!25765 Int) (originalCharacters!5691 List!33233)) )
))
(declare-datatypes ((List!33235 0))(
  ( (Nil!33111) (Cons!33111 (h!38531 Token!9320) (t!230550 List!33235)) )
))
(declare-fun lt!1007047 () List!33235)

(declare-datatypes ((LexerInterface!4550 0))(
  ( (LexerInterfaceExt!4547 (__x!22052 Int)) (Lexer!4548) )
))
(declare-fun thiss!27755 () LexerInterface!4550)

(declare-fun rulesProduceIndividualToken!2088 (LexerInterface!4550 List!33234 Token!9320) Bool)

(assert (=> b!2821464 (= res!1174203 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047)))))

(declare-fun b!2821465 () Bool)

(declare-fun res!1174196 () Bool)

(declare-fun e!1784937 () Bool)

(assert (=> b!2821465 (=> (not res!1174196) (not e!1784937))))

(declare-fun l!6581 () List!33235)

(declare-fun tokensListTwoByTwoPredicateSeparableList!687 (LexerInterface!4550 List!33235 List!33234) Bool)

(assert (=> b!2821465 (= res!1174196 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (t!230550 l!6581) rules!4424))))

(declare-fun e!1784928 () Bool)

(declare-fun e!1784934 () Bool)

(declare-fun b!2821466 () Bool)

(declare-fun tp!901093 () Bool)

(declare-fun inv!21 (TokenValue!5189) Bool)

(assert (=> b!2821466 (= e!1784934 (and (inv!21 (value!159651 (h!38531 l!6581))) e!1784928 tp!901093))))

(declare-fun e!1784936 () Bool)

(declare-fun lt!1007051 () List!33235)

(declare-fun b!2821467 () Bool)

(declare-datatypes ((IArray!20553 0))(
  ( (IArray!20554 (innerList!10334 List!33235)) )
))
(declare-datatypes ((Conc!10274 0))(
  ( (Node!10274 (left!25008 Conc!10274) (right!25338 Conc!10274) (csize!20778 Int) (cheight!10485 Int)) (Leaf!15645 (xs!13386 IArray!20553) (csize!20779 Int)) (Empty!10274) )
))
(declare-datatypes ((BalanceConc!20186 0))(
  ( (BalanceConc!20187 (c!457083 Conc!10274)) )
))
(declare-fun rulesProduceEachTokenIndividually!1088 (LexerInterface!4550 List!33234 BalanceConc!20186) Bool)

(declare-fun seqFromList!3238 (List!33235) BalanceConc!20186)

(assert (=> b!2821467 (= e!1784936 (rulesProduceEachTokenIndividually!1088 thiss!27755 rules!4424 (seqFromList!3238 lt!1007051)))))

(declare-fun tp!901091 () Bool)

(declare-fun e!1784940 () Bool)

(declare-fun b!2821468 () Bool)

(declare-fun inv!45030 (Token!9320) Bool)

(assert (=> b!2821468 (= e!1784940 (and (inv!45030 (h!38531 l!6581)) e!1784934 tp!901091))))

(declare-fun b!2821469 () Bool)

(declare-fun res!1174205 () Bool)

(assert (=> b!2821469 (=> (not res!1174205) (not e!1784937))))

(declare-fun rulesProduceEachTokenIndividuallyList!1602 (LexerInterface!4550 List!33234 List!33235) Bool)

(assert (=> b!2821469 (= res!1174205 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 l!6581)))))

(declare-fun res!1174200 () Bool)

(assert (=> start!273726 (=> (not res!1174200) (not e!1784937))))

(assert (=> start!273726 (= res!1174200 ((_ is Lexer!4548) thiss!27755))))

(assert (=> start!273726 e!1784937))

(assert (=> start!273726 true))

(declare-fun e!1784943 () Bool)

(assert (=> start!273726 e!1784943))

(assert (=> start!273726 e!1784940))

(declare-fun tp!901090 () Bool)

(declare-fun e!1784939 () Bool)

(declare-fun b!2821470 () Bool)

(declare-fun inv!45027 (String!36400) Bool)

(declare-fun inv!45031 (TokenValueInjection!9806) Bool)

(assert (=> b!2821470 (= e!1784928 (and tp!901090 (inv!45027 (tag!5463 (rule!7387 (h!38531 l!6581)))) (inv!45031 (transformation!4959 (rule!7387 (h!38531 l!6581)))) e!1784939))))

(declare-fun b!2821471 () Bool)

(declare-fun tp!901087 () Bool)

(declare-fun e!1784935 () Bool)

(declare-fun e!1784941 () Bool)

(assert (=> b!2821471 (= e!1784941 (and tp!901087 (inv!45027 (tag!5463 (h!38530 rules!4424))) (inv!45031 (transformation!4959 (h!38530 rules!4424))) e!1784935))))

(assert (=> b!2821472 (= e!1784935 (and tp!901092 tp!901086))))

(declare-fun b!2821473 () Bool)

(declare-fun res!1174207 () Bool)

(assert (=> b!2821473 (=> (not res!1174207) (not e!1784937))))

(declare-fun i!1730 () Int)

(assert (=> b!2821473 (= res!1174207 (and (not ((_ is Nil!33111) l!6581)) (> i!1730 0)))))

(declare-fun b!2821474 () Bool)

(declare-fun e!1784942 () Bool)

(declare-fun e!1784933 () Bool)

(assert (=> b!2821474 (= e!1784942 e!1784933)))

(declare-fun res!1174201 () Bool)

(assert (=> b!2821474 (=> (not res!1174201) (not e!1784933))))

(assert (=> b!2821474 (= res!1174201 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007051)))))

(declare-fun b!2821475 () Bool)

(declare-fun res!1174198 () Bool)

(assert (=> b!2821475 (=> (not res!1174198) (not e!1784937))))

(assert (=> b!2821475 (= res!1174198 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2821476 () Bool)

(declare-fun res!1174208 () Bool)

(assert (=> b!2821476 (=> (not res!1174208) (not e!1784937))))

(declare-fun rulesInvariant!3968 (LexerInterface!4550 List!33234) Bool)

(assert (=> b!2821476 (= res!1174208 (rulesInvariant!3968 thiss!27755 rules!4424))))

(declare-fun b!2821477 () Bool)

(declare-fun res!1174197 () Bool)

(assert (=> b!2821477 (=> (not res!1174197) (not e!1784937))))

(declare-fun isEmpty!18304 (List!33234) Bool)

(assert (=> b!2821477 (= res!1174197 (not (isEmpty!18304 rules!4424)))))

(assert (=> b!2821478 (= e!1784937 (not e!1784936))))

(declare-fun res!1174209 () Bool)

(assert (=> b!2821478 (=> res!1174209 e!1784936)))

(declare-fun lt!1007049 () Bool)

(assert (=> b!2821478 (= res!1174209 (not lt!1007049))))

(declare-fun forall!6783 (List!33235 Int) Bool)

(assert (=> b!2821478 (forall!6783 lt!1007051 lambda!103593)))

(declare-datatypes ((Unit!47065 0))(
  ( (Unit!47066) )
))
(declare-fun lt!1007048 () Unit!47065)

(declare-fun lemmaForallSubseq!227 (List!33235 List!33235 Int) Unit!47065)

(assert (=> b!2821478 (= lt!1007048 (lemmaForallSubseq!227 lt!1007051 l!6581 lambda!103593))))

(assert (=> b!2821478 (= lt!1007049 e!1784942)))

(declare-fun res!1174206 () Bool)

(assert (=> b!2821478 (=> res!1174206 e!1784942)))

(assert (=> b!2821478 (= res!1174206 (not ((_ is Cons!33111) lt!1007051)))))

(assert (=> b!2821478 (= lt!1007049 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 lt!1007051))))

(declare-fun take!553 (List!33235 Int) List!33235)

(assert (=> b!2821478 (= lt!1007051 (take!553 l!6581 i!1730))))

(declare-fun e!1784930 () Bool)

(assert (=> b!2821478 e!1784930))

(declare-fun res!1174199 () Bool)

(assert (=> b!2821478 (=> (not res!1174199) (not e!1784930))))

(assert (=> b!2821478 (= res!1174199 (forall!6783 lt!1007047 lambda!103593))))

(declare-fun lt!1007046 () Unit!47065)

(assert (=> b!2821478 (= lt!1007046 (lemmaForallSubseq!227 lt!1007047 (t!230550 l!6581) lambda!103593))))

(assert (=> b!2821478 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 lt!1007047) e!1784932)))

(declare-fun res!1174202 () Bool)

(assert (=> b!2821478 (=> res!1174202 e!1784932)))

(assert (=> b!2821478 (= res!1174202 (not ((_ is Cons!33111) lt!1007047)))))

(assert (=> b!2821478 (= lt!1007047 (take!553 (t!230550 l!6581) (- i!1730 1)))))

(declare-fun lt!1007050 () Unit!47065)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!54 (LexerInterface!4550 List!33235 Int List!33234) Unit!47065)

(assert (=> b!2821478 (= lt!1007050 (tokensListTwoByTwoPredicateSeparableTokensTakeList!54 thiss!27755 (t!230550 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2821479 () Bool)

(declare-fun tp!901094 () Bool)

(assert (=> b!2821479 (= e!1784943 (and e!1784941 tp!901094))))

(declare-fun b!2821480 () Bool)

(assert (=> b!2821480 (= e!1784930 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 lt!1007047 rules!4424))))

(assert (=> b!2821481 (= e!1784939 (and tp!901088 tp!901089))))

(declare-fun b!2821482 () Bool)

(assert (=> b!2821482 (= e!1784933 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007051)))))

(declare-fun b!2821483 () Bool)

(assert (=> b!2821483 (= e!1784929 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007047)))))

(declare-fun b!2821484 () Bool)

(declare-fun res!1174204 () Bool)

(assert (=> b!2821484 (=> (not res!1174204) (not e!1784937))))

(assert (=> b!2821484 (= res!1174204 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 l!6581))))

(assert (= (and start!273726 res!1174200) b!2821477))

(assert (= (and b!2821477 res!1174197) b!2821476))

(assert (= (and b!2821476 res!1174208) b!2821484))

(assert (= (and b!2821484 res!1174204) b!2821475))

(assert (= (and b!2821475 res!1174198) b!2821473))

(assert (= (and b!2821473 res!1174207) b!2821469))

(assert (= (and b!2821469 res!1174205) b!2821465))

(assert (= (and b!2821465 res!1174196) b!2821478))

(assert (= (and b!2821478 (not res!1174202)) b!2821464))

(assert (= (and b!2821464 res!1174203) b!2821483))

(assert (= (and b!2821478 res!1174199) b!2821480))

(assert (= (and b!2821478 (not res!1174206)) b!2821474))

(assert (= (and b!2821474 res!1174201) b!2821482))

(assert (= (and b!2821478 (not res!1174209)) b!2821467))

(assert (= b!2821471 b!2821472))

(assert (= b!2821479 b!2821471))

(assert (= (and start!273726 ((_ is Cons!33110) rules!4424)) b!2821479))

(assert (= b!2821470 b!2821481))

(assert (= b!2821466 b!2821470))

(assert (= b!2821468 b!2821466))

(assert (= (and start!273726 ((_ is Cons!33111) l!6581)) b!2821468))

(declare-fun m!3251851 () Bool)

(assert (=> b!2821466 m!3251851))

(declare-fun m!3251853 () Bool)

(assert (=> b!2821483 m!3251853))

(declare-fun m!3251855 () Bool)

(assert (=> b!2821477 m!3251855))

(declare-fun m!3251857 () Bool)

(assert (=> b!2821478 m!3251857))

(declare-fun m!3251859 () Bool)

(assert (=> b!2821478 m!3251859))

(declare-fun m!3251861 () Bool)

(assert (=> b!2821478 m!3251861))

(declare-fun m!3251863 () Bool)

(assert (=> b!2821478 m!3251863))

(declare-fun m!3251865 () Bool)

(assert (=> b!2821478 m!3251865))

(declare-fun m!3251867 () Bool)

(assert (=> b!2821478 m!3251867))

(declare-fun m!3251869 () Bool)

(assert (=> b!2821478 m!3251869))

(declare-fun m!3251871 () Bool)

(assert (=> b!2821478 m!3251871))

(declare-fun m!3251873 () Bool)

(assert (=> b!2821478 m!3251873))

(declare-fun m!3251875 () Bool)

(assert (=> b!2821476 m!3251875))

(declare-fun m!3251877 () Bool)

(assert (=> b!2821470 m!3251877))

(declare-fun m!3251879 () Bool)

(assert (=> b!2821470 m!3251879))

(declare-fun m!3251881 () Bool)

(assert (=> b!2821471 m!3251881))

(declare-fun m!3251883 () Bool)

(assert (=> b!2821471 m!3251883))

(declare-fun m!3251885 () Bool)

(assert (=> b!2821475 m!3251885))

(declare-fun m!3251887 () Bool)

(assert (=> b!2821467 m!3251887))

(assert (=> b!2821467 m!3251887))

(declare-fun m!3251889 () Bool)

(assert (=> b!2821467 m!3251889))

(declare-fun m!3251891 () Bool)

(assert (=> b!2821484 m!3251891))

(declare-fun m!3251893 () Bool)

(assert (=> b!2821469 m!3251893))

(declare-fun m!3251895 () Bool)

(assert (=> b!2821482 m!3251895))

(declare-fun m!3251897 () Bool)

(assert (=> b!2821480 m!3251897))

(declare-fun m!3251899 () Bool)

(assert (=> b!2821474 m!3251899))

(declare-fun m!3251901 () Bool)

(assert (=> b!2821465 m!3251901))

(declare-fun m!3251903 () Bool)

(assert (=> b!2821464 m!3251903))

(declare-fun m!3251905 () Bool)

(assert (=> b!2821468 m!3251905))

(check-sat b_and!206119 (not b!2821474) (not b!2821477) (not b!2821480) (not b!2821482) (not b!2821466) (not b!2821493) (not b!2821469) (not b!2821478) (not b_next!81433) (not b!2821467) (not b!2821468) (not b!2821470) (not b!2821471) (not b!2821483) (not b!2821465) (not b!2821476) b_and!206125 (not b!2821475) (not b_next!81429) (not b!2821464) (not b!2821484) (not b!2821479) (not b_next!81435) b_and!206123 (not b_next!81431) b_and!206121)
(check-sat b_and!206119 b_and!206125 (not b_next!81429) (not b_next!81433) (not b_next!81435) b_and!206123 (not b_next!81431) b_and!206121)
(get-model)

(declare-fun bs!517430 () Bool)

(declare-fun d!819087 () Bool)

(assert (= bs!517430 (and d!819087 b!2821478)))

(declare-fun lambda!103604 () Int)

(assert (=> bs!517430 (= (= thiss!27755 Lexer!4548) (= lambda!103604 lambda!103593))))

(declare-fun b!2821539 () Bool)

(declare-fun e!1784988 () Bool)

(assert (=> b!2821539 (= e!1784988 true)))

(declare-fun b!2821538 () Bool)

(declare-fun e!1784987 () Bool)

(assert (=> b!2821538 (= e!1784987 e!1784988)))

(declare-fun b!2821537 () Bool)

(declare-fun e!1784986 () Bool)

(assert (=> b!2821537 (= e!1784986 e!1784987)))

(assert (=> d!819087 e!1784986))

(assert (= b!2821538 b!2821539))

(assert (= b!2821537 b!2821538))

(assert (= (and d!819087 ((_ is Cons!33110) rules!4424)) b!2821537))

(assert (=> b!2821539 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103604))))

(assert (=> b!2821539 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103604))))

(assert (=> d!819087 true))

(declare-fun lt!1007060 () Bool)

(assert (=> d!819087 (= lt!1007060 (forall!6783 (t!230550 lt!1007047) lambda!103604))))

(declare-fun e!1784985 () Bool)

(assert (=> d!819087 (= lt!1007060 e!1784985)))

(declare-fun res!1174235 () Bool)

(assert (=> d!819087 (=> res!1174235 e!1784985)))

(assert (=> d!819087 (= res!1174235 (not ((_ is Cons!33111) (t!230550 lt!1007047))))))

(assert (=> d!819087 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819087 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007047)) lt!1007060)))

(declare-fun b!2821535 () Bool)

(declare-fun e!1784984 () Bool)

(assert (=> b!2821535 (= e!1784985 e!1784984)))

(declare-fun res!1174234 () Bool)

(assert (=> b!2821535 (=> (not res!1174234) (not e!1784984))))

(assert (=> b!2821535 (= res!1174234 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047))))))

(declare-fun b!2821536 () Bool)

(assert (=> b!2821536 (= e!1784984 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 lt!1007047))))))

(assert (= (and d!819087 (not res!1174235)) b!2821535))

(assert (= (and b!2821535 res!1174234) b!2821536))

(declare-fun m!3251933 () Bool)

(assert (=> d!819087 m!3251933))

(assert (=> d!819087 m!3251855))

(declare-fun m!3251935 () Bool)

(assert (=> b!2821535 m!3251935))

(declare-fun m!3251937 () Bool)

(assert (=> b!2821536 m!3251937))

(assert (=> b!2821483 d!819087))

(declare-fun d!819097 () Bool)

(assert (=> d!819097 (= (inv!45027 (tag!5463 (h!38530 rules!4424))) (= (mod (str.len (value!159625 (tag!5463 (h!38530 rules!4424)))) 2) 0))))

(assert (=> b!2821471 d!819097))

(declare-fun d!819099 () Bool)

(declare-fun res!1174238 () Bool)

(declare-fun e!1784991 () Bool)

(assert (=> d!819099 (=> (not res!1174238) (not e!1784991))))

(declare-fun semiInverseModEq!2052 (Int Int) Bool)

(assert (=> d!819099 (= res!1174238 (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toValue!6977 (transformation!4959 (h!38530 rules!4424)))))))

(assert (=> d!819099 (= (inv!45031 (transformation!4959 (h!38530 rules!4424))) e!1784991)))

(declare-fun b!2821544 () Bool)

(declare-fun equivClasses!1951 (Int Int) Bool)

(assert (=> b!2821544 (= e!1784991 (equivClasses!1951 (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toValue!6977 (transformation!4959 (h!38530 rules!4424)))))))

(assert (= (and d!819099 res!1174238) b!2821544))

(declare-fun m!3251939 () Bool)

(assert (=> d!819099 m!3251939))

(declare-fun m!3251941 () Bool)

(assert (=> b!2821544 m!3251941))

(assert (=> b!2821471 d!819099))

(declare-fun bs!517431 () Bool)

(declare-fun d!819101 () Bool)

(assert (= bs!517431 (and d!819101 b!2821478)))

(declare-fun lambda!103605 () Int)

(assert (=> bs!517431 (= (= thiss!27755 Lexer!4548) (= lambda!103605 lambda!103593))))

(declare-fun bs!517432 () Bool)

(assert (= bs!517432 (and d!819101 d!819087)))

(assert (=> bs!517432 (= lambda!103605 lambda!103604)))

(declare-fun b!2821549 () Bool)

(declare-fun e!1784996 () Bool)

(assert (=> b!2821549 (= e!1784996 true)))

(declare-fun b!2821548 () Bool)

(declare-fun e!1784995 () Bool)

(assert (=> b!2821548 (= e!1784995 e!1784996)))

(declare-fun b!2821547 () Bool)

(declare-fun e!1784994 () Bool)

(assert (=> b!2821547 (= e!1784994 e!1784995)))

(assert (=> d!819101 e!1784994))

(assert (= b!2821548 b!2821549))

(assert (= b!2821547 b!2821548))

(assert (= (and d!819101 ((_ is Cons!33110) rules!4424)) b!2821547))

(assert (=> b!2821549 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103605))))

(assert (=> b!2821549 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103605))))

(assert (=> d!819101 true))

(declare-fun lt!1007061 () Bool)

(assert (=> d!819101 (= lt!1007061 (forall!6783 (t!230550 lt!1007051) lambda!103605))))

(declare-fun e!1784993 () Bool)

(assert (=> d!819101 (= lt!1007061 e!1784993)))

(declare-fun res!1174240 () Bool)

(assert (=> d!819101 (=> res!1174240 e!1784993)))

(assert (=> d!819101 (= res!1174240 (not ((_ is Cons!33111) (t!230550 lt!1007051))))))

(assert (=> d!819101 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819101 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007051)) lt!1007061)))

(declare-fun b!2821545 () Bool)

(declare-fun e!1784992 () Bool)

(assert (=> b!2821545 (= e!1784993 e!1784992)))

(declare-fun res!1174239 () Bool)

(assert (=> b!2821545 (=> (not res!1174239) (not e!1784992))))

(assert (=> b!2821545 (= res!1174239 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007051))))))

(declare-fun b!2821546 () Bool)

(assert (=> b!2821546 (= e!1784992 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 lt!1007051))))))

(assert (= (and d!819101 (not res!1174240)) b!2821545))

(assert (= (and b!2821545 res!1174239) b!2821546))

(declare-fun m!3251943 () Bool)

(assert (=> d!819101 m!3251943))

(assert (=> d!819101 m!3251855))

(declare-fun m!3251945 () Bool)

(assert (=> b!2821545 m!3251945))

(declare-fun m!3251947 () Bool)

(assert (=> b!2821546 m!3251947))

(assert (=> b!2821482 d!819101))

(declare-fun bs!517433 () Bool)

(declare-fun d!819103 () Bool)

(assert (= bs!517433 (and d!819103 b!2821478)))

(declare-fun lambda!103606 () Int)

(assert (=> bs!517433 (= (= thiss!27755 Lexer!4548) (= lambda!103606 lambda!103593))))

(declare-fun bs!517434 () Bool)

(assert (= bs!517434 (and d!819103 d!819087)))

(assert (=> bs!517434 (= lambda!103606 lambda!103604)))

(declare-fun bs!517435 () Bool)

(assert (= bs!517435 (and d!819103 d!819101)))

(assert (=> bs!517435 (= lambda!103606 lambda!103605)))

(declare-fun b!2821554 () Bool)

(declare-fun e!1785001 () Bool)

(assert (=> b!2821554 (= e!1785001 true)))

(declare-fun b!2821553 () Bool)

(declare-fun e!1785000 () Bool)

(assert (=> b!2821553 (= e!1785000 e!1785001)))

(declare-fun b!2821552 () Bool)

(declare-fun e!1784999 () Bool)

(assert (=> b!2821552 (= e!1784999 e!1785000)))

(assert (=> d!819103 e!1784999))

(assert (= b!2821553 b!2821554))

(assert (= b!2821552 b!2821553))

(assert (= (and d!819103 ((_ is Cons!33110) rules!4424)) b!2821552))

(assert (=> b!2821554 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103606))))

(assert (=> b!2821554 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103606))))

(assert (=> d!819103 true))

(declare-fun lt!1007062 () Bool)

(assert (=> d!819103 (= lt!1007062 (forall!6783 (t!230550 l!6581) lambda!103606))))

(declare-fun e!1784998 () Bool)

(assert (=> d!819103 (= lt!1007062 e!1784998)))

(declare-fun res!1174242 () Bool)

(assert (=> d!819103 (=> res!1174242 e!1784998)))

(assert (=> d!819103 (= res!1174242 (not ((_ is Cons!33111) (t!230550 l!6581))))))

(assert (=> d!819103 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819103 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 l!6581)) lt!1007062)))

(declare-fun b!2821550 () Bool)

(declare-fun e!1784997 () Bool)

(assert (=> b!2821550 (= e!1784998 e!1784997)))

(declare-fun res!1174241 () Bool)

(assert (=> b!2821550 (=> (not res!1174241) (not e!1784997))))

(assert (=> b!2821550 (= res!1174241 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581))))))

(declare-fun b!2821551 () Bool)

(assert (=> b!2821551 (= e!1784997 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 l!6581))))))

(assert (= (and d!819103 (not res!1174242)) b!2821550))

(assert (= (and b!2821550 res!1174241) b!2821551))

(declare-fun m!3251949 () Bool)

(assert (=> d!819103 m!3251949))

(assert (=> d!819103 m!3251855))

(declare-fun m!3251951 () Bool)

(assert (=> b!2821550 m!3251951))

(declare-fun m!3251953 () Bool)

(assert (=> b!2821551 m!3251953))

(assert (=> b!2821469 d!819103))

(declare-fun d!819105 () Bool)

(declare-fun res!1174257 () Bool)

(declare-fun e!1785013 () Bool)

(assert (=> d!819105 (=> res!1174257 e!1785013)))

(assert (=> d!819105 (= res!1174257 (or (not ((_ is Cons!33111) lt!1007047)) (not ((_ is Cons!33111) (t!230550 lt!1007047)))))))

(assert (=> d!819105 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 lt!1007047 rules!4424) e!1785013)))

(declare-fun b!2821568 () Bool)

(declare-fun e!1785012 () Bool)

(assert (=> b!2821568 (= e!1785013 e!1785012)))

(declare-fun res!1174256 () Bool)

(assert (=> b!2821568 (=> (not res!1174256) (not e!1785012))))

(declare-fun separableTokensPredicate!893 (LexerInterface!4550 Token!9320 Token!9320 List!33234) Bool)

(assert (=> b!2821568 (= res!1174256 (separableTokensPredicate!893 thiss!27755 (h!38531 lt!1007047) (h!38531 (t!230550 lt!1007047)) rules!4424))))

(declare-fun lt!1007085 () Unit!47065)

(declare-fun Unit!47076 () Unit!47065)

(assert (=> b!2821568 (= lt!1007085 Unit!47076)))

(declare-fun size!25770 (BalanceConc!20184) Int)

(declare-fun charsOf!3068 (Token!9320) BalanceConc!20184)

(assert (=> b!2821568 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 lt!1007047)))) 0)))

(declare-fun lt!1007083 () Unit!47065)

(declare-fun Unit!47077 () Unit!47065)

(assert (=> b!2821568 (= lt!1007083 Unit!47077)))

(assert (=> b!2821568 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047)))))

(declare-fun lt!1007084 () Unit!47065)

(declare-fun Unit!47078 () Unit!47065)

(assert (=> b!2821568 (= lt!1007084 Unit!47078)))

(assert (=> b!2821568 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047))))

(declare-fun lt!1007087 () Unit!47065)

(declare-fun lt!1007089 () Unit!47065)

(assert (=> b!2821568 (= lt!1007087 lt!1007089)))

(assert (=> b!2821568 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 (LexerInterface!4550 List!33234 List!33235 Token!9320) Unit!47065)

(assert (=> b!2821568 (= lt!1007089 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 lt!1007047 (h!38531 (t!230550 lt!1007047))))))

(declare-fun lt!1007086 () Unit!47065)

(declare-fun lt!1007088 () Unit!47065)

(assert (=> b!2821568 (= lt!1007086 lt!1007088)))

(assert (=> b!2821568 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047))))

(assert (=> b!2821568 (= lt!1007088 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 lt!1007047 (h!38531 lt!1007047)))))

(declare-fun b!2821569 () Bool)

(assert (=> b!2821569 (= e!1785012 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))) rules!4424))))

(assert (= (and d!819105 (not res!1174257)) b!2821568))

(assert (= (and b!2821568 res!1174256) b!2821569))

(declare-fun m!3251973 () Bool)

(assert (=> b!2821568 m!3251973))

(assert (=> b!2821568 m!3251903))

(declare-fun m!3251975 () Bool)

(assert (=> b!2821568 m!3251975))

(declare-fun m!3251977 () Bool)

(assert (=> b!2821568 m!3251977))

(declare-fun m!3251979 () Bool)

(assert (=> b!2821568 m!3251979))

(declare-fun m!3251981 () Bool)

(assert (=> b!2821568 m!3251981))

(assert (=> b!2821568 m!3251935))

(assert (=> b!2821568 m!3251979))

(declare-fun m!3251983 () Bool)

(assert (=> b!2821569 m!3251983))

(assert (=> b!2821480 d!819105))

(declare-fun d!819109 () Bool)

(assert (=> d!819109 (= (inv!45027 (tag!5463 (rule!7387 (h!38531 l!6581)))) (= (mod (str.len (value!159625 (tag!5463 (rule!7387 (h!38531 l!6581))))) 2) 0))))

(assert (=> b!2821470 d!819109))

(declare-fun d!819111 () Bool)

(declare-fun res!1174258 () Bool)

(declare-fun e!1785014 () Bool)

(assert (=> d!819111 (=> (not res!1174258) (not e!1785014))))

(assert (=> d!819111 (= res!1174258 (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))))))

(assert (=> d!819111 (= (inv!45031 (transformation!4959 (rule!7387 (h!38531 l!6581)))) e!1785014)))

(declare-fun b!2821570 () Bool)

(assert (=> b!2821570 (= e!1785014 (equivClasses!1951 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))))))

(assert (= (and d!819111 res!1174258) b!2821570))

(declare-fun m!3251985 () Bool)

(assert (=> d!819111 m!3251985))

(declare-fun m!3251987 () Bool)

(assert (=> b!2821570 m!3251987))

(assert (=> b!2821470 d!819111))

(declare-fun d!819113 () Bool)

(declare-fun res!1174263 () Bool)

(declare-fun e!1785017 () Bool)

(assert (=> d!819113 (=> (not res!1174263) (not e!1785017))))

(declare-fun isEmpty!18307 (List!33233) Bool)

(assert (=> d!819113 (= res!1174263 (not (isEmpty!18307 (originalCharacters!5691 (h!38531 l!6581)))))))

(assert (=> d!819113 (= (inv!45030 (h!38531 l!6581)) e!1785017)))

(declare-fun b!2821575 () Bool)

(declare-fun res!1174264 () Bool)

(assert (=> b!2821575 (=> (not res!1174264) (not e!1785017))))

(declare-fun list!12403 (BalanceConc!20184) List!33233)

(declare-fun dynLambda!13859 (Int TokenValue!5189) BalanceConc!20184)

(assert (=> b!2821575 (= res!1174264 (= (originalCharacters!5691 (h!38531 l!6581)) (list!12403 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(declare-fun b!2821576 () Bool)

(declare-fun size!25771 (List!33233) Int)

(assert (=> b!2821576 (= e!1785017 (= (size!25765 (h!38531 l!6581)) (size!25771 (originalCharacters!5691 (h!38531 l!6581)))))))

(assert (= (and d!819113 res!1174263) b!2821575))

(assert (= (and b!2821575 res!1174264) b!2821576))

(declare-fun b_lambda!84431 () Bool)

(assert (=> (not b_lambda!84431) (not b!2821575)))

(declare-fun tb!153813 () Bool)

(declare-fun t!230561 () Bool)

(assert (=> (and b!2821472 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230561) tb!153813))

(declare-fun b!2821581 () Bool)

(declare-fun e!1785020 () Bool)

(declare-fun tp!901097 () Bool)

(declare-fun inv!45034 (Conc!10273) Bool)

(assert (=> b!2821581 (= e!1785020 (and (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))) tp!901097))))

(declare-fun result!191506 () Bool)

(declare-fun inv!45035 (BalanceConc!20184) Bool)

(assert (=> tb!153813 (= result!191506 (and (inv!45035 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))) e!1785020))))

(assert (= tb!153813 b!2821581))

(declare-fun m!3251989 () Bool)

(assert (=> b!2821581 m!3251989))

(declare-fun m!3251991 () Bool)

(assert (=> tb!153813 m!3251991))

(assert (=> b!2821575 t!230561))

(declare-fun b_and!206127 () Bool)

(assert (= b_and!206121 (and (=> t!230561 result!191506) b_and!206127)))

(declare-fun t!230563 () Bool)

(declare-fun tb!153815 () Bool)

(assert (=> (and b!2821481 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230563) tb!153815))

(declare-fun result!191510 () Bool)

(assert (= result!191510 result!191506))

(assert (=> b!2821575 t!230563))

(declare-fun b_and!206129 () Bool)

(assert (= b_and!206125 (and (=> t!230563 result!191510) b_and!206129)))

(declare-fun m!3251993 () Bool)

(assert (=> d!819113 m!3251993))

(declare-fun m!3251995 () Bool)

(assert (=> b!2821575 m!3251995))

(assert (=> b!2821575 m!3251995))

(declare-fun m!3251997 () Bool)

(assert (=> b!2821575 m!3251997))

(declare-fun m!3251999 () Bool)

(assert (=> b!2821576 m!3251999))

(assert (=> b!2821468 d!819113))

(declare-fun d!819115 () Bool)

(assert (=> d!819115 (= (isEmpty!18304 rules!4424) ((_ is Nil!33110) rules!4424))))

(assert (=> b!2821477 d!819115))

(declare-fun bs!517445 () Bool)

(declare-fun d!819117 () Bool)

(assert (= bs!517445 (and d!819117 b!2821478)))

(declare-fun lambda!103613 () Int)

(assert (=> bs!517445 (= (= thiss!27755 Lexer!4548) (= lambda!103613 lambda!103593))))

(declare-fun bs!517446 () Bool)

(assert (= bs!517446 (and d!819117 d!819087)))

(assert (=> bs!517446 (= lambda!103613 lambda!103604)))

(declare-fun bs!517447 () Bool)

(assert (= bs!517447 (and d!819117 d!819101)))

(assert (=> bs!517447 (= lambda!103613 lambda!103605)))

(declare-fun bs!517448 () Bool)

(assert (= bs!517448 (and d!819117 d!819103)))

(assert (=> bs!517448 (= lambda!103613 lambda!103606)))

(declare-fun b!2821637 () Bool)

(declare-fun e!1785064 () Bool)

(assert (=> b!2821637 (= e!1785064 true)))

(declare-fun b!2821636 () Bool)

(declare-fun e!1785063 () Bool)

(assert (=> b!2821636 (= e!1785063 e!1785064)))

(declare-fun b!2821635 () Bool)

(declare-fun e!1785062 () Bool)

(assert (=> b!2821635 (= e!1785062 e!1785063)))

(assert (=> d!819117 e!1785062))

(assert (= b!2821636 b!2821637))

(assert (= b!2821635 b!2821636))

(assert (= (and d!819117 ((_ is Cons!33110) rules!4424)) b!2821635))

(assert (=> b!2821637 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103613))))

(assert (=> b!2821637 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103613))))

(assert (=> d!819117 true))

(declare-fun e!1785061 () Bool)

(assert (=> d!819117 e!1785061))

(declare-fun res!1174287 () Bool)

(assert (=> d!819117 (=> (not res!1174287) (not e!1785061))))

(declare-fun lt!1007123 () Bool)

(declare-fun list!12404 (BalanceConc!20186) List!33235)

(assert (=> d!819117 (= res!1174287 (= lt!1007123 (forall!6783 (list!12404 (seqFromList!3238 lt!1007051)) lambda!103613)))))

(declare-fun forall!6785 (BalanceConc!20186 Int) Bool)

(assert (=> d!819117 (= lt!1007123 (forall!6785 (seqFromList!3238 lt!1007051) lambda!103613))))

(assert (=> d!819117 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819117 (= (rulesProduceEachTokenIndividually!1088 thiss!27755 rules!4424 (seqFromList!3238 lt!1007051)) lt!1007123)))

(declare-fun b!2821634 () Bool)

(assert (=> b!2821634 (= e!1785061 (= lt!1007123 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (list!12404 (seqFromList!3238 lt!1007051)))))))

(assert (= (and d!819117 res!1174287) b!2821634))

(assert (=> d!819117 m!3251887))

(declare-fun m!3252049 () Bool)

(assert (=> d!819117 m!3252049))

(assert (=> d!819117 m!3252049))

(declare-fun m!3252051 () Bool)

(assert (=> d!819117 m!3252051))

(assert (=> d!819117 m!3251887))

(declare-fun m!3252053 () Bool)

(assert (=> d!819117 m!3252053))

(assert (=> d!819117 m!3251855))

(assert (=> b!2821634 m!3251887))

(assert (=> b!2821634 m!3252049))

(assert (=> b!2821634 m!3252049))

(declare-fun m!3252055 () Bool)

(assert (=> b!2821634 m!3252055))

(assert (=> b!2821467 d!819117))

(declare-fun d!819135 () Bool)

(declare-fun fromListB!1467 (List!33235) BalanceConc!20186)

(assert (=> d!819135 (= (seqFromList!3238 lt!1007051) (fromListB!1467 lt!1007051))))

(declare-fun bs!517449 () Bool)

(assert (= bs!517449 d!819135))

(declare-fun m!3252057 () Bool)

(assert (=> bs!517449 m!3252057))

(assert (=> b!2821467 d!819135))

(declare-fun d!819137 () Bool)

(assert (=> d!819137 (forall!6783 lt!1007051 lambda!103593)))

(declare-fun lt!1007126 () Unit!47065)

(declare-fun choose!16682 (List!33235 List!33235 Int) Unit!47065)

(assert (=> d!819137 (= lt!1007126 (choose!16682 lt!1007051 l!6581 lambda!103593))))

(assert (=> d!819137 (forall!6783 l!6581 lambda!103593)))

(assert (=> d!819137 (= (lemmaForallSubseq!227 lt!1007051 l!6581 lambda!103593) lt!1007126)))

(declare-fun bs!517450 () Bool)

(assert (= bs!517450 d!819137))

(assert (=> bs!517450 m!3251869))

(declare-fun m!3252059 () Bool)

(assert (=> bs!517450 m!3252059))

(declare-fun m!3252061 () Bool)

(assert (=> bs!517450 m!3252061))

(assert (=> b!2821478 d!819137))

(declare-fun bs!517451 () Bool)

(declare-fun d!819139 () Bool)

(assert (= bs!517451 (and d!819139 b!2821478)))

(declare-fun lambda!103614 () Int)

(assert (=> bs!517451 (= (= thiss!27755 Lexer!4548) (= lambda!103614 lambda!103593))))

(declare-fun bs!517452 () Bool)

(assert (= bs!517452 (and d!819139 d!819101)))

(assert (=> bs!517452 (= lambda!103614 lambda!103605)))

(declare-fun bs!517453 () Bool)

(assert (= bs!517453 (and d!819139 d!819103)))

(assert (=> bs!517453 (= lambda!103614 lambda!103606)))

(declare-fun bs!517454 () Bool)

(assert (= bs!517454 (and d!819139 d!819087)))

(assert (=> bs!517454 (= lambda!103614 lambda!103604)))

(declare-fun bs!517455 () Bool)

(assert (= bs!517455 (and d!819139 d!819117)))

(assert (=> bs!517455 (= lambda!103614 lambda!103613)))

(declare-fun b!2821642 () Bool)

(declare-fun e!1785069 () Bool)

(assert (=> b!2821642 (= e!1785069 true)))

(declare-fun b!2821641 () Bool)

(declare-fun e!1785068 () Bool)

(assert (=> b!2821641 (= e!1785068 e!1785069)))

(declare-fun b!2821640 () Bool)

(declare-fun e!1785067 () Bool)

(assert (=> b!2821640 (= e!1785067 e!1785068)))

(assert (=> d!819139 e!1785067))

(assert (= b!2821641 b!2821642))

(assert (= b!2821640 b!2821641))

(assert (= (and d!819139 ((_ is Cons!33110) rules!4424)) b!2821640))

(assert (=> b!2821642 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103614))))

(assert (=> b!2821642 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103614))))

(assert (=> d!819139 true))

(declare-fun lt!1007127 () Bool)

(assert (=> d!819139 (= lt!1007127 (forall!6783 lt!1007047 lambda!103614))))

(declare-fun e!1785066 () Bool)

(assert (=> d!819139 (= lt!1007127 e!1785066)))

(declare-fun res!1174289 () Bool)

(assert (=> d!819139 (=> res!1174289 e!1785066)))

(assert (=> d!819139 (= res!1174289 (not ((_ is Cons!33111) lt!1007047)))))

(assert (=> d!819139 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819139 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 lt!1007047) lt!1007127)))

(declare-fun b!2821638 () Bool)

(declare-fun e!1785065 () Bool)

(assert (=> b!2821638 (= e!1785066 e!1785065)))

(declare-fun res!1174288 () Bool)

(assert (=> b!2821638 (=> (not res!1174288) (not e!1785065))))

(assert (=> b!2821638 (= res!1174288 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047)))))

(declare-fun b!2821639 () Bool)

(assert (=> b!2821639 (= e!1785065 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007047)))))

(assert (= (and d!819139 (not res!1174289)) b!2821638))

(assert (= (and b!2821638 res!1174288) b!2821639))

(declare-fun m!3252063 () Bool)

(assert (=> d!819139 m!3252063))

(assert (=> d!819139 m!3251855))

(assert (=> b!2821638 m!3251903))

(assert (=> b!2821639 m!3251853))

(assert (=> b!2821478 d!819139))

(declare-fun b!2821657 () Bool)

(declare-fun e!1785080 () List!33235)

(assert (=> b!2821657 (= e!1785080 Nil!33111)))

(declare-fun d!819141 () Bool)

(declare-fun e!1785078 () Bool)

(assert (=> d!819141 e!1785078))

(declare-fun res!1174292 () Bool)

(assert (=> d!819141 (=> (not res!1174292) (not e!1785078))))

(declare-fun lt!1007130 () List!33235)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4612 (List!33235) (InoxSet Token!9320))

(assert (=> d!819141 (= res!1174292 (= ((_ map implies) (content!4612 lt!1007130) (content!4612 l!6581)) ((as const (InoxSet Token!9320)) true)))))

(assert (=> d!819141 (= lt!1007130 e!1785080)))

(declare-fun c!457110 () Bool)

(assert (=> d!819141 (= c!457110 (or ((_ is Nil!33111) l!6581) (<= i!1730 0)))))

(assert (=> d!819141 (= (take!553 l!6581 i!1730) lt!1007130)))

(declare-fun b!2821658 () Bool)

(declare-fun e!1785079 () Int)

(assert (=> b!2821658 (= e!1785079 i!1730)))

(declare-fun b!2821659 () Bool)

(declare-fun e!1785081 () Int)

(assert (=> b!2821659 (= e!1785081 0)))

(declare-fun b!2821660 () Bool)

(assert (=> b!2821660 (= e!1785080 (Cons!33111 (h!38531 l!6581) (take!553 (t!230550 l!6581) (- i!1730 1))))))

(declare-fun b!2821661 () Bool)

(declare-fun size!25772 (List!33235) Int)

(assert (=> b!2821661 (= e!1785078 (= (size!25772 lt!1007130) e!1785081))))

(declare-fun c!457108 () Bool)

(assert (=> b!2821661 (= c!457108 (<= i!1730 0))))

(declare-fun b!2821662 () Bool)

(assert (=> b!2821662 (= e!1785081 e!1785079)))

(declare-fun c!457109 () Bool)

(assert (=> b!2821662 (= c!457109 (>= i!1730 (size!25772 l!6581)))))

(declare-fun b!2821663 () Bool)

(assert (=> b!2821663 (= e!1785079 (size!25772 l!6581))))

(assert (= (and d!819141 c!457110) b!2821657))

(assert (= (and d!819141 (not c!457110)) b!2821660))

(assert (= (and d!819141 res!1174292) b!2821661))

(assert (= (and b!2821661 c!457108) b!2821659))

(assert (= (and b!2821661 (not c!457108)) b!2821662))

(assert (= (and b!2821662 c!457109) b!2821663))

(assert (= (and b!2821662 (not c!457109)) b!2821658))

(declare-fun m!3252065 () Bool)

(assert (=> b!2821663 m!3252065))

(assert (=> b!2821660 m!3251865))

(assert (=> b!2821662 m!3252065))

(declare-fun m!3252067 () Bool)

(assert (=> d!819141 m!3252067))

(declare-fun m!3252069 () Bool)

(assert (=> d!819141 m!3252069))

(declare-fun m!3252071 () Bool)

(assert (=> b!2821661 m!3252071))

(assert (=> b!2821478 d!819141))

(declare-fun d!819143 () Bool)

(declare-fun res!1174297 () Bool)

(declare-fun e!1785086 () Bool)

(assert (=> d!819143 (=> res!1174297 e!1785086)))

(assert (=> d!819143 (= res!1174297 ((_ is Nil!33111) lt!1007047))))

(assert (=> d!819143 (= (forall!6783 lt!1007047 lambda!103593) e!1785086)))

(declare-fun b!2821668 () Bool)

(declare-fun e!1785087 () Bool)

(assert (=> b!2821668 (= e!1785086 e!1785087)))

(declare-fun res!1174298 () Bool)

(assert (=> b!2821668 (=> (not res!1174298) (not e!1785087))))

(declare-fun dynLambda!13860 (Int Token!9320) Bool)

(assert (=> b!2821668 (= res!1174298 (dynLambda!13860 lambda!103593 (h!38531 lt!1007047)))))

(declare-fun b!2821669 () Bool)

(assert (=> b!2821669 (= e!1785087 (forall!6783 (t!230550 lt!1007047) lambda!103593))))

(assert (= (and d!819143 (not res!1174297)) b!2821668))

(assert (= (and b!2821668 res!1174298) b!2821669))

(declare-fun b_lambda!84435 () Bool)

(assert (=> (not b_lambda!84435) (not b!2821668)))

(declare-fun m!3252073 () Bool)

(assert (=> b!2821668 m!3252073))

(declare-fun m!3252075 () Bool)

(assert (=> b!2821669 m!3252075))

(assert (=> b!2821478 d!819143))

(declare-fun bs!517456 () Bool)

(declare-fun d!819145 () Bool)

(assert (= bs!517456 (and d!819145 b!2821478)))

(declare-fun lambda!103615 () Int)

(assert (=> bs!517456 (= (= thiss!27755 Lexer!4548) (= lambda!103615 lambda!103593))))

(declare-fun bs!517457 () Bool)

(assert (= bs!517457 (and d!819145 d!819101)))

(assert (=> bs!517457 (= lambda!103615 lambda!103605)))

(declare-fun bs!517458 () Bool)

(assert (= bs!517458 (and d!819145 d!819103)))

(assert (=> bs!517458 (= lambda!103615 lambda!103606)))

(declare-fun bs!517459 () Bool)

(assert (= bs!517459 (and d!819145 d!819087)))

(assert (=> bs!517459 (= lambda!103615 lambda!103604)))

(declare-fun bs!517460 () Bool)

(assert (= bs!517460 (and d!819145 d!819139)))

(assert (=> bs!517460 (= lambda!103615 lambda!103614)))

(declare-fun bs!517461 () Bool)

(assert (= bs!517461 (and d!819145 d!819117)))

(assert (=> bs!517461 (= lambda!103615 lambda!103613)))

(declare-fun b!2821674 () Bool)

(declare-fun e!1785092 () Bool)

(assert (=> b!2821674 (= e!1785092 true)))

(declare-fun b!2821673 () Bool)

(declare-fun e!1785091 () Bool)

(assert (=> b!2821673 (= e!1785091 e!1785092)))

(declare-fun b!2821672 () Bool)

(declare-fun e!1785090 () Bool)

(assert (=> b!2821672 (= e!1785090 e!1785091)))

(assert (=> d!819145 e!1785090))

(assert (= b!2821673 b!2821674))

(assert (= b!2821672 b!2821673))

(assert (= (and d!819145 ((_ is Cons!33110) rules!4424)) b!2821672))

(assert (=> b!2821674 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103615))))

(assert (=> b!2821674 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103615))))

(assert (=> d!819145 true))

(declare-fun lt!1007131 () Bool)

(assert (=> d!819145 (= lt!1007131 (forall!6783 lt!1007051 lambda!103615))))

(declare-fun e!1785089 () Bool)

(assert (=> d!819145 (= lt!1007131 e!1785089)))

(declare-fun res!1174300 () Bool)

(assert (=> d!819145 (=> res!1174300 e!1785089)))

(assert (=> d!819145 (= res!1174300 (not ((_ is Cons!33111) lt!1007051)))))

(assert (=> d!819145 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819145 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 lt!1007051) lt!1007131)))

(declare-fun b!2821670 () Bool)

(declare-fun e!1785088 () Bool)

(assert (=> b!2821670 (= e!1785089 e!1785088)))

(declare-fun res!1174299 () Bool)

(assert (=> b!2821670 (=> (not res!1174299) (not e!1785088))))

(assert (=> b!2821670 (= res!1174299 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007051)))))

(declare-fun b!2821671 () Bool)

(assert (=> b!2821671 (= e!1785088 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007051)))))

(assert (= (and d!819145 (not res!1174300)) b!2821670))

(assert (= (and b!2821670 res!1174299) b!2821671))

(declare-fun m!3252077 () Bool)

(assert (=> d!819145 m!3252077))

(assert (=> d!819145 m!3251855))

(assert (=> b!2821670 m!3251899))

(assert (=> b!2821671 m!3251895))

(assert (=> b!2821478 d!819145))

(declare-fun b!2821675 () Bool)

(declare-fun e!1785095 () List!33235)

(assert (=> b!2821675 (= e!1785095 Nil!33111)))

(declare-fun d!819147 () Bool)

(declare-fun e!1785093 () Bool)

(assert (=> d!819147 e!1785093))

(declare-fun res!1174301 () Bool)

(assert (=> d!819147 (=> (not res!1174301) (not e!1785093))))

(declare-fun lt!1007132 () List!33235)

(assert (=> d!819147 (= res!1174301 (= ((_ map implies) (content!4612 lt!1007132) (content!4612 (t!230550 l!6581))) ((as const (InoxSet Token!9320)) true)))))

(assert (=> d!819147 (= lt!1007132 e!1785095)))

(declare-fun c!457113 () Bool)

(assert (=> d!819147 (= c!457113 (or ((_ is Nil!33111) (t!230550 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!819147 (= (take!553 (t!230550 l!6581) (- i!1730 1)) lt!1007132)))

(declare-fun b!2821676 () Bool)

(declare-fun e!1785094 () Int)

(assert (=> b!2821676 (= e!1785094 (- i!1730 1))))

(declare-fun b!2821677 () Bool)

(declare-fun e!1785096 () Int)

(assert (=> b!2821677 (= e!1785096 0)))

(declare-fun b!2821678 () Bool)

(assert (=> b!2821678 (= e!1785095 (Cons!33111 (h!38531 (t!230550 l!6581)) (take!553 (t!230550 (t!230550 l!6581)) (- (- i!1730 1) 1))))))

(declare-fun b!2821679 () Bool)

(assert (=> b!2821679 (= e!1785093 (= (size!25772 lt!1007132) e!1785096))))

(declare-fun c!457111 () Bool)

(assert (=> b!2821679 (= c!457111 (<= (- i!1730 1) 0))))

(declare-fun b!2821680 () Bool)

(assert (=> b!2821680 (= e!1785096 e!1785094)))

(declare-fun c!457112 () Bool)

(assert (=> b!2821680 (= c!457112 (>= (- i!1730 1) (size!25772 (t!230550 l!6581))))))

(declare-fun b!2821681 () Bool)

(assert (=> b!2821681 (= e!1785094 (size!25772 (t!230550 l!6581)))))

(assert (= (and d!819147 c!457113) b!2821675))

(assert (= (and d!819147 (not c!457113)) b!2821678))

(assert (= (and d!819147 res!1174301) b!2821679))

(assert (= (and b!2821679 c!457111) b!2821677))

(assert (= (and b!2821679 (not c!457111)) b!2821680))

(assert (= (and b!2821680 c!457112) b!2821681))

(assert (= (and b!2821680 (not c!457112)) b!2821676))

(declare-fun m!3252079 () Bool)

(assert (=> b!2821681 m!3252079))

(declare-fun m!3252081 () Bool)

(assert (=> b!2821678 m!3252081))

(assert (=> b!2821680 m!3252079))

(declare-fun m!3252083 () Bool)

(assert (=> d!819147 m!3252083))

(declare-fun m!3252085 () Bool)

(assert (=> d!819147 m!3252085))

(declare-fun m!3252087 () Bool)

(assert (=> b!2821679 m!3252087))

(assert (=> b!2821478 d!819147))

(declare-fun bs!517490 () Bool)

(declare-fun b!2821797 () Bool)

(assert (= bs!517490 (and b!2821797 b!2821478)))

(declare-fun lambda!103624 () Int)

(assert (=> bs!517490 (= lambda!103624 lambda!103593)))

(declare-fun bs!517491 () Bool)

(assert (= bs!517491 (and b!2821797 d!819101)))

(assert (=> bs!517491 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103605))))

(declare-fun bs!517492 () Bool)

(assert (= bs!517492 (and b!2821797 d!819103)))

(assert (=> bs!517492 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103606))))

(declare-fun bs!517493 () Bool)

(assert (= bs!517493 (and b!2821797 d!819139)))

(assert (=> bs!517493 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103614))))

(declare-fun bs!517494 () Bool)

(assert (= bs!517494 (and b!2821797 d!819117)))

(assert (=> bs!517494 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103613))))

(declare-fun bs!517495 () Bool)

(assert (= bs!517495 (and b!2821797 d!819145)))

(assert (=> bs!517495 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103615))))

(declare-fun bs!517496 () Bool)

(assert (= bs!517496 (and b!2821797 d!819087)))

(assert (=> bs!517496 (= (= Lexer!4548 thiss!27755) (= lambda!103624 lambda!103604))))

(declare-fun b!2821801 () Bool)

(declare-fun e!1785199 () Bool)

(assert (=> b!2821801 (= e!1785199 true)))

(declare-fun b!2821800 () Bool)

(declare-fun e!1785198 () Bool)

(assert (=> b!2821800 (= e!1785198 e!1785199)))

(declare-fun b!2821799 () Bool)

(declare-fun e!1785197 () Bool)

(assert (=> b!2821799 (= e!1785197 e!1785198)))

(assert (=> b!2821797 e!1785197))

(assert (= b!2821800 b!2821801))

(assert (= b!2821799 b!2821800))

(assert (= (and b!2821797 ((_ is Cons!33110) rules!4424)) b!2821799))

(assert (=> b!2821801 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103624))))

(assert (=> b!2821801 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103624))))

(declare-fun b!2821795 () Bool)

(declare-fun e!1785195 () Bool)

(declare-fun e!1785194 () Bool)

(assert (=> b!2821795 (= e!1785195 e!1785194)))

(declare-fun res!1174350 () Bool)

(assert (=> b!2821795 (=> (not res!1174350) (not e!1785194))))

(declare-fun lt!1007177 () List!33235)

(assert (=> b!2821795 (= res!1174350 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007177)))))

(declare-fun d!819149 () Bool)

(declare-fun e!1785193 () Bool)

(assert (=> d!819149 e!1785193))

(declare-fun res!1174347 () Bool)

(assert (=> d!819149 (=> (not res!1174347) (not e!1785193))))

(assert (=> d!819149 (= res!1174347 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (take!553 (t!230550 l!6581) (- i!1730 1))) e!1785195))))

(declare-fun res!1174349 () Bool)

(assert (=> d!819149 (=> res!1174349 e!1785195)))

(assert (=> d!819149 (= res!1174349 (not ((_ is Cons!33111) lt!1007177)))))

(assert (=> d!819149 (= lt!1007177 (take!553 (t!230550 l!6581) (- i!1730 1)))))

(declare-fun lt!1007180 () Unit!47065)

(declare-fun choose!16683 (LexerInterface!4550 List!33235 Int List!33234) Unit!47065)

(assert (=> d!819149 (= lt!1007180 (choose!16683 thiss!27755 (t!230550 l!6581) (- i!1730 1) rules!4424))))

(assert (=> d!819149 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819149 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!54 thiss!27755 (t!230550 l!6581) (- i!1730 1) rules!4424) lt!1007180)))

(declare-fun b!2821796 () Bool)

(assert (=> b!2821796 (= e!1785194 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007177)))))

(declare-fun b!2821798 () Bool)

(declare-fun e!1785196 () Bool)

(declare-fun lt!1007179 () List!33235)

(declare-fun subseq!451 (List!33235 List!33235) Bool)

(assert (=> b!2821798 (= e!1785196 (subseq!451 lt!1007179 (t!230550 l!6581)))))

(assert (=> b!2821797 (= e!1785193 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (take!553 (t!230550 l!6581) (- i!1730 1)) rules!4424))))

(declare-fun lt!1007178 () Unit!47065)

(declare-fun lt!1007181 () Unit!47065)

(assert (=> b!2821797 (= lt!1007178 lt!1007181)))

(assert (=> b!2821797 (forall!6783 lt!1007179 lambda!103624)))

(assert (=> b!2821797 (= lt!1007181 (lemmaForallSubseq!227 lt!1007179 (t!230550 l!6581) lambda!103624))))

(assert (=> b!2821797 e!1785196))

(declare-fun res!1174348 () Bool)

(assert (=> b!2821797 (=> (not res!1174348) (not e!1785196))))

(assert (=> b!2821797 (= res!1174348 (forall!6783 (t!230550 l!6581) lambda!103624))))

(assert (=> b!2821797 (= lt!1007179 (take!553 (t!230550 l!6581) (- i!1730 1)))))

(assert (= (and d!819149 (not res!1174349)) b!2821795))

(assert (= (and b!2821795 res!1174350) b!2821796))

(assert (= (and d!819149 res!1174347) b!2821797))

(assert (= (and b!2821797 res!1174348) b!2821798))

(declare-fun m!3252205 () Bool)

(assert (=> b!2821796 m!3252205))

(declare-fun m!3252207 () Bool)

(assert (=> b!2821795 m!3252207))

(assert (=> d!819149 m!3251865))

(assert (=> d!819149 m!3251865))

(declare-fun m!3252209 () Bool)

(assert (=> d!819149 m!3252209))

(declare-fun m!3252211 () Bool)

(assert (=> d!819149 m!3252211))

(assert (=> d!819149 m!3251855))

(declare-fun m!3252213 () Bool)

(assert (=> b!2821797 m!3252213))

(assert (=> b!2821797 m!3251865))

(declare-fun m!3252215 () Bool)

(assert (=> b!2821797 m!3252215))

(declare-fun m!3252217 () Bool)

(assert (=> b!2821797 m!3252217))

(declare-fun m!3252219 () Bool)

(assert (=> b!2821797 m!3252219))

(assert (=> b!2821797 m!3251865))

(declare-fun m!3252221 () Bool)

(assert (=> b!2821798 m!3252221))

(assert (=> b!2821478 d!819149))

(declare-fun d!819181 () Bool)

(declare-fun res!1174351 () Bool)

(declare-fun e!1785200 () Bool)

(assert (=> d!819181 (=> res!1174351 e!1785200)))

(assert (=> d!819181 (= res!1174351 ((_ is Nil!33111) lt!1007051))))

(assert (=> d!819181 (= (forall!6783 lt!1007051 lambda!103593) e!1785200)))

(declare-fun b!2821802 () Bool)

(declare-fun e!1785201 () Bool)

(assert (=> b!2821802 (= e!1785200 e!1785201)))

(declare-fun res!1174352 () Bool)

(assert (=> b!2821802 (=> (not res!1174352) (not e!1785201))))

(assert (=> b!2821802 (= res!1174352 (dynLambda!13860 lambda!103593 (h!38531 lt!1007051)))))

(declare-fun b!2821803 () Bool)

(assert (=> b!2821803 (= e!1785201 (forall!6783 (t!230550 lt!1007051) lambda!103593))))

(assert (= (and d!819181 (not res!1174351)) b!2821802))

(assert (= (and b!2821802 res!1174352) b!2821803))

(declare-fun b_lambda!84447 () Bool)

(assert (=> (not b_lambda!84447) (not b!2821802)))

(declare-fun m!3252223 () Bool)

(assert (=> b!2821802 m!3252223))

(declare-fun m!3252225 () Bool)

(assert (=> b!2821803 m!3252225))

(assert (=> b!2821478 d!819181))

(declare-fun d!819183 () Bool)

(assert (=> d!819183 (forall!6783 lt!1007047 lambda!103593)))

(declare-fun lt!1007182 () Unit!47065)

(assert (=> d!819183 (= lt!1007182 (choose!16682 lt!1007047 (t!230550 l!6581) lambda!103593))))

(assert (=> d!819183 (forall!6783 (t!230550 l!6581) lambda!103593)))

(assert (=> d!819183 (= (lemmaForallSubseq!227 lt!1007047 (t!230550 l!6581) lambda!103593) lt!1007182)))

(declare-fun bs!517497 () Bool)

(assert (= bs!517497 d!819183))

(assert (=> bs!517497 m!3251859))

(declare-fun m!3252227 () Bool)

(assert (=> bs!517497 m!3252227))

(declare-fun m!3252229 () Bool)

(assert (=> bs!517497 m!3252229))

(assert (=> b!2821478 d!819183))

(declare-fun d!819185 () Bool)

(declare-fun res!1174354 () Bool)

(declare-fun e!1785203 () Bool)

(assert (=> d!819185 (=> res!1174354 e!1785203)))

(assert (=> d!819185 (= res!1174354 (or (not ((_ is Cons!33111) (t!230550 l!6581))) (not ((_ is Cons!33111) (t!230550 (t!230550 l!6581))))))))

(assert (=> d!819185 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (t!230550 l!6581) rules!4424) e!1785203)))

(declare-fun b!2821804 () Bool)

(declare-fun e!1785202 () Bool)

(assert (=> b!2821804 (= e!1785203 e!1785202)))

(declare-fun res!1174353 () Bool)

(assert (=> b!2821804 (=> (not res!1174353) (not e!1785202))))

(assert (=> b!2821804 (= res!1174353 (separableTokensPredicate!893 thiss!27755 (h!38531 (t!230550 l!6581)) (h!38531 (t!230550 (t!230550 l!6581))) rules!4424))))

(declare-fun lt!1007185 () Unit!47065)

(declare-fun Unit!47079 () Unit!47065)

(assert (=> b!2821804 (= lt!1007185 Unit!47079)))

(assert (=> b!2821804 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581))))) 0)))

(declare-fun lt!1007183 () Unit!47065)

(declare-fun Unit!47080 () Unit!47065)

(assert (=> b!2821804 (= lt!1007183 Unit!47080)))

(assert (=> b!2821804 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 l!6581))))))

(declare-fun lt!1007184 () Unit!47065)

(declare-fun Unit!47081 () Unit!47065)

(assert (=> b!2821804 (= lt!1007184 Unit!47081)))

(assert (=> b!2821804 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(declare-fun lt!1007187 () Unit!47065)

(declare-fun lt!1007189 () Unit!47065)

(assert (=> b!2821804 (= lt!1007187 lt!1007189)))

(assert (=> b!2821804 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 l!6581))))))

(assert (=> b!2821804 (= lt!1007189 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 (t!230550 l!6581)))))))

(declare-fun lt!1007186 () Unit!47065)

(declare-fun lt!1007188 () Unit!47065)

(assert (=> b!2821804 (= lt!1007186 lt!1007188)))

(assert (=> b!2821804 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(assert (=> b!2821804 (= lt!1007188 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 l!6581))))))

(declare-fun b!2821805 () Bool)

(assert (=> b!2821805 (= e!1785202 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))) rules!4424))))

(assert (= (and d!819185 (not res!1174354)) b!2821804))

(assert (= (and b!2821804 res!1174353) b!2821805))

(declare-fun m!3252231 () Bool)

(assert (=> b!2821804 m!3252231))

(assert (=> b!2821804 m!3251951))

(declare-fun m!3252233 () Bool)

(assert (=> b!2821804 m!3252233))

(declare-fun m!3252235 () Bool)

(assert (=> b!2821804 m!3252235))

(declare-fun m!3252237 () Bool)

(assert (=> b!2821804 m!3252237))

(declare-fun m!3252239 () Bool)

(assert (=> b!2821804 m!3252239))

(declare-fun m!3252241 () Bool)

(assert (=> b!2821804 m!3252241))

(assert (=> b!2821804 m!3252237))

(declare-fun m!3252243 () Bool)

(assert (=> b!2821805 m!3252243))

(assert (=> b!2821465 d!819185))

(declare-fun d!819187 () Bool)

(declare-fun res!1174357 () Bool)

(declare-fun e!1785206 () Bool)

(assert (=> d!819187 (=> (not res!1174357) (not e!1785206))))

(declare-fun rulesValid!1822 (LexerInterface!4550 List!33234) Bool)

(assert (=> d!819187 (= res!1174357 (rulesValid!1822 thiss!27755 rules!4424))))

(assert (=> d!819187 (= (rulesInvariant!3968 thiss!27755 rules!4424) e!1785206)))

(declare-fun b!2821808 () Bool)

(declare-datatypes ((List!33237 0))(
  ( (Nil!33113) (Cons!33113 (h!38533 String!36400) (t!230586 List!33237)) )
))
(declare-fun noDuplicateTag!1818 (LexerInterface!4550 List!33234 List!33237) Bool)

(assert (=> b!2821808 (= e!1785206 (noDuplicateTag!1818 thiss!27755 rules!4424 Nil!33113))))

(assert (= (and d!819187 res!1174357) b!2821808))

(declare-fun m!3252245 () Bool)

(assert (=> d!819187 m!3252245))

(declare-fun m!3252247 () Bool)

(assert (=> b!2821808 m!3252247))

(assert (=> b!2821476 d!819187))

(declare-fun d!819189 () Bool)

(declare-fun c!457118 () Bool)

(assert (=> d!819189 (= c!457118 ((_ is IntegerValue!15567) (value!159651 (h!38531 l!6581))))))

(declare-fun e!1785214 () Bool)

(assert (=> d!819189 (= (inv!21 (value!159651 (h!38531 l!6581))) e!1785214)))

(declare-fun b!2821819 () Bool)

(declare-fun inv!16 (TokenValue!5189) Bool)

(assert (=> b!2821819 (= e!1785214 (inv!16 (value!159651 (h!38531 l!6581))))))

(declare-fun b!2821820 () Bool)

(declare-fun e!1785213 () Bool)

(declare-fun inv!15 (TokenValue!5189) Bool)

(assert (=> b!2821820 (= e!1785213 (inv!15 (value!159651 (h!38531 l!6581))))))

(declare-fun b!2821821 () Bool)

(declare-fun res!1174360 () Bool)

(assert (=> b!2821821 (=> res!1174360 e!1785213)))

(assert (=> b!2821821 (= res!1174360 (not ((_ is IntegerValue!15569) (value!159651 (h!38531 l!6581)))))))

(declare-fun e!1785215 () Bool)

(assert (=> b!2821821 (= e!1785215 e!1785213)))

(declare-fun b!2821822 () Bool)

(declare-fun inv!17 (TokenValue!5189) Bool)

(assert (=> b!2821822 (= e!1785215 (inv!17 (value!159651 (h!38531 l!6581))))))

(declare-fun b!2821823 () Bool)

(assert (=> b!2821823 (= e!1785214 e!1785215)))

(declare-fun c!457119 () Bool)

(assert (=> b!2821823 (= c!457119 ((_ is IntegerValue!15568) (value!159651 (h!38531 l!6581))))))

(assert (= (and d!819189 c!457118) b!2821819))

(assert (= (and d!819189 (not c!457118)) b!2821823))

(assert (= (and b!2821823 c!457119) b!2821822))

(assert (= (and b!2821823 (not c!457119)) b!2821821))

(assert (= (and b!2821821 (not res!1174360)) b!2821820))

(declare-fun m!3252249 () Bool)

(assert (=> b!2821819 m!3252249))

(declare-fun m!3252251 () Bool)

(assert (=> b!2821820 m!3252251))

(declare-fun m!3252253 () Bool)

(assert (=> b!2821822 m!3252253))

(assert (=> b!2821466 d!819189))

(declare-fun d!819191 () Bool)

(declare-fun lt!1007195 () Bool)

(declare-fun e!1785220 () Bool)

(assert (=> d!819191 (= lt!1007195 e!1785220)))

(declare-fun res!1174368 () Bool)

(assert (=> d!819191 (=> (not res!1174368) (not e!1785220))))

(declare-datatypes ((tuple2!33384 0))(
  ( (tuple2!33385 (_1!19785 BalanceConc!20186) (_2!19785 BalanceConc!20184)) )
))
(declare-fun lex!1990 (LexerInterface!4550 List!33234 BalanceConc!20184) tuple2!33384)

(declare-fun print!1709 (LexerInterface!4550 BalanceConc!20186) BalanceConc!20184)

(declare-fun singletonSeq!2133 (Token!9320) BalanceConc!20186)

(assert (=> d!819191 (= res!1174368 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))) (list!12404 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(declare-fun e!1785221 () Bool)

(assert (=> d!819191 (= lt!1007195 e!1785221)))

(declare-fun res!1174369 () Bool)

(assert (=> d!819191 (=> (not res!1174369) (not e!1785221))))

(declare-fun lt!1007194 () tuple2!33384)

(declare-fun size!25773 (BalanceConc!20186) Int)

(assert (=> d!819191 (= res!1174369 (= (size!25773 (_1!19785 lt!1007194)) 1))))

(assert (=> d!819191 (= lt!1007194 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(assert (=> d!819191 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819191 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047)) lt!1007195)))

(declare-fun b!2821830 () Bool)

(declare-fun res!1174367 () Bool)

(assert (=> b!2821830 (=> (not res!1174367) (not e!1785221))))

(declare-fun apply!7728 (BalanceConc!20186 Int) Token!9320)

(assert (=> b!2821830 (= res!1174367 (= (apply!7728 (_1!19785 lt!1007194) 0) (h!38531 lt!1007047)))))

(declare-fun b!2821831 () Bool)

(declare-fun isEmpty!18308 (BalanceConc!20184) Bool)

(assert (=> b!2821831 (= e!1785221 (isEmpty!18308 (_2!19785 lt!1007194)))))

(declare-fun b!2821832 () Bool)

(assert (=> b!2821832 (= e!1785220 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))))))

(assert (= (and d!819191 res!1174369) b!2821830))

(assert (= (and b!2821830 res!1174367) b!2821831))

(assert (= (and d!819191 res!1174368) b!2821832))

(declare-fun m!3252255 () Bool)

(assert (=> d!819191 m!3252255))

(assert (=> d!819191 m!3251855))

(assert (=> d!819191 m!3252255))

(declare-fun m!3252257 () Bool)

(assert (=> d!819191 m!3252257))

(declare-fun m!3252259 () Bool)

(assert (=> d!819191 m!3252259))

(declare-fun m!3252261 () Bool)

(assert (=> d!819191 m!3252261))

(assert (=> d!819191 m!3252255))

(declare-fun m!3252263 () Bool)

(assert (=> d!819191 m!3252263))

(assert (=> d!819191 m!3252263))

(declare-fun m!3252265 () Bool)

(assert (=> d!819191 m!3252265))

(declare-fun m!3252267 () Bool)

(assert (=> b!2821830 m!3252267))

(declare-fun m!3252269 () Bool)

(assert (=> b!2821831 m!3252269))

(assert (=> b!2821832 m!3252255))

(assert (=> b!2821832 m!3252255))

(assert (=> b!2821832 m!3252263))

(assert (=> b!2821832 m!3252263))

(assert (=> b!2821832 m!3252265))

(declare-fun m!3252271 () Bool)

(assert (=> b!2821832 m!3252271))

(assert (=> b!2821464 d!819191))

(declare-fun d!819193 () Bool)

(declare-fun res!1174371 () Bool)

(declare-fun e!1785223 () Bool)

(assert (=> d!819193 (=> res!1174371 e!1785223)))

(assert (=> d!819193 (= res!1174371 (or (not ((_ is Cons!33111) l!6581)) (not ((_ is Cons!33111) (t!230550 l!6581)))))))

(assert (=> d!819193 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 l!6581 rules!4424) e!1785223)))

(declare-fun b!2821833 () Bool)

(declare-fun e!1785222 () Bool)

(assert (=> b!2821833 (= e!1785223 e!1785222)))

(declare-fun res!1174370 () Bool)

(assert (=> b!2821833 (=> (not res!1174370) (not e!1785222))))

(assert (=> b!2821833 (= res!1174370 (separableTokensPredicate!893 thiss!27755 (h!38531 l!6581) (h!38531 (t!230550 l!6581)) rules!4424))))

(declare-fun lt!1007198 () Unit!47065)

(declare-fun Unit!47082 () Unit!47065)

(assert (=> b!2821833 (= lt!1007198 Unit!47082)))

(assert (=> b!2821833 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 l!6581)))) 0)))

(declare-fun lt!1007196 () Unit!47065)

(declare-fun Unit!47083 () Unit!47065)

(assert (=> b!2821833 (= lt!1007196 Unit!47083)))

(assert (=> b!2821833 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(declare-fun lt!1007197 () Unit!47065)

(declare-fun Unit!47084 () Unit!47065)

(assert (=> b!2821833 (= lt!1007197 Unit!47084)))

(assert (=> b!2821833 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581))))

(declare-fun lt!1007200 () Unit!47065)

(declare-fun lt!1007202 () Unit!47065)

(assert (=> b!2821833 (= lt!1007200 lt!1007202)))

(assert (=> b!2821833 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(assert (=> b!2821833 (= lt!1007202 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 l!6581 (h!38531 (t!230550 l!6581))))))

(declare-fun lt!1007199 () Unit!47065)

(declare-fun lt!1007201 () Unit!47065)

(assert (=> b!2821833 (= lt!1007199 lt!1007201)))

(assert (=> b!2821833 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581))))

(assert (=> b!2821833 (= lt!1007201 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 l!6581 (h!38531 l!6581)))))

(declare-fun b!2821834 () Bool)

(assert (=> b!2821834 (= e!1785222 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))) rules!4424))))

(assert (= (and d!819193 (not res!1174371)) b!2821833))

(assert (= (and b!2821833 res!1174370) b!2821834))

(declare-fun m!3252273 () Bool)

(assert (=> b!2821833 m!3252273))

(declare-fun m!3252275 () Bool)

(assert (=> b!2821833 m!3252275))

(declare-fun m!3252277 () Bool)

(assert (=> b!2821833 m!3252277))

(declare-fun m!3252279 () Bool)

(assert (=> b!2821833 m!3252279))

(declare-fun m!3252281 () Bool)

(assert (=> b!2821833 m!3252281))

(declare-fun m!3252283 () Bool)

(assert (=> b!2821833 m!3252283))

(assert (=> b!2821833 m!3251951))

(assert (=> b!2821833 m!3252281))

(declare-fun m!3252285 () Bool)

(assert (=> b!2821834 m!3252285))

(assert (=> b!2821475 d!819193))

(declare-fun bs!517498 () Bool)

(declare-fun d!819195 () Bool)

(assert (= bs!517498 (and d!819195 b!2821478)))

(declare-fun lambda!103625 () Int)

(assert (=> bs!517498 (= (= thiss!27755 Lexer!4548) (= lambda!103625 lambda!103593))))

(declare-fun bs!517499 () Bool)

(assert (= bs!517499 (and d!819195 d!819101)))

(assert (=> bs!517499 (= lambda!103625 lambda!103605)))

(declare-fun bs!517500 () Bool)

(assert (= bs!517500 (and d!819195 d!819103)))

(assert (=> bs!517500 (= lambda!103625 lambda!103606)))

(declare-fun bs!517501 () Bool)

(assert (= bs!517501 (and d!819195 d!819139)))

(assert (=> bs!517501 (= lambda!103625 lambda!103614)))

(declare-fun bs!517502 () Bool)

(assert (= bs!517502 (and d!819195 d!819145)))

(assert (=> bs!517502 (= lambda!103625 lambda!103615)))

(declare-fun bs!517503 () Bool)

(assert (= bs!517503 (and d!819195 d!819087)))

(assert (=> bs!517503 (= lambda!103625 lambda!103604)))

(declare-fun bs!517504 () Bool)

(assert (= bs!517504 (and d!819195 d!819117)))

(assert (=> bs!517504 (= lambda!103625 lambda!103613)))

(declare-fun bs!517505 () Bool)

(assert (= bs!517505 (and d!819195 b!2821797)))

(assert (=> bs!517505 (= (= thiss!27755 Lexer!4548) (= lambda!103625 lambda!103624))))

(declare-fun b!2821839 () Bool)

(declare-fun e!1785228 () Bool)

(assert (=> b!2821839 (= e!1785228 true)))

(declare-fun b!2821838 () Bool)

(declare-fun e!1785227 () Bool)

(assert (=> b!2821838 (= e!1785227 e!1785228)))

(declare-fun b!2821837 () Bool)

(declare-fun e!1785226 () Bool)

(assert (=> b!2821837 (= e!1785226 e!1785227)))

(assert (=> d!819195 e!1785226))

(assert (= b!2821838 b!2821839))

(assert (= b!2821837 b!2821838))

(assert (= (and d!819195 ((_ is Cons!33110) rules!4424)) b!2821837))

(assert (=> b!2821839 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103625))))

(assert (=> b!2821839 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103625))))

(assert (=> d!819195 true))

(declare-fun lt!1007203 () Bool)

(assert (=> d!819195 (= lt!1007203 (forall!6783 l!6581 lambda!103625))))

(declare-fun e!1785225 () Bool)

(assert (=> d!819195 (= lt!1007203 e!1785225)))

(declare-fun res!1174373 () Bool)

(assert (=> d!819195 (=> res!1174373 e!1785225)))

(assert (=> d!819195 (= res!1174373 (not ((_ is Cons!33111) l!6581)))))

(assert (=> d!819195 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819195 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 l!6581) lt!1007203)))

(declare-fun b!2821835 () Bool)

(declare-fun e!1785224 () Bool)

(assert (=> b!2821835 (= e!1785225 e!1785224)))

(declare-fun res!1174372 () Bool)

(assert (=> b!2821835 (=> (not res!1174372) (not e!1785224))))

(assert (=> b!2821835 (= res!1174372 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581)))))

(declare-fun b!2821836 () Bool)

(assert (=> b!2821836 (= e!1785224 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 l!6581)))))

(assert (= (and d!819195 (not res!1174373)) b!2821835))

(assert (= (and b!2821835 res!1174372) b!2821836))

(declare-fun m!3252287 () Bool)

(assert (=> d!819195 m!3252287))

(assert (=> d!819195 m!3251855))

(assert (=> b!2821835 m!3252275))

(assert (=> b!2821836 m!3251893))

(assert (=> b!2821484 d!819195))

(declare-fun d!819197 () Bool)

(declare-fun lt!1007205 () Bool)

(declare-fun e!1785229 () Bool)

(assert (=> d!819197 (= lt!1007205 e!1785229)))

(declare-fun res!1174375 () Bool)

(assert (=> d!819197 (=> (not res!1174375) (not e!1785229))))

(assert (=> d!819197 (= res!1174375 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))) (list!12404 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(declare-fun e!1785230 () Bool)

(assert (=> d!819197 (= lt!1007205 e!1785230)))

(declare-fun res!1174376 () Bool)

(assert (=> d!819197 (=> (not res!1174376) (not e!1785230))))

(declare-fun lt!1007204 () tuple2!33384)

(assert (=> d!819197 (= res!1174376 (= (size!25773 (_1!19785 lt!1007204)) 1))))

(assert (=> d!819197 (= lt!1007204 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(assert (=> d!819197 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819197 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007051)) lt!1007205)))

(declare-fun b!2821840 () Bool)

(declare-fun res!1174374 () Bool)

(assert (=> b!2821840 (=> (not res!1174374) (not e!1785230))))

(assert (=> b!2821840 (= res!1174374 (= (apply!7728 (_1!19785 lt!1007204) 0) (h!38531 lt!1007051)))))

(declare-fun b!2821841 () Bool)

(assert (=> b!2821841 (= e!1785230 (isEmpty!18308 (_2!19785 lt!1007204)))))

(declare-fun b!2821842 () Bool)

(assert (=> b!2821842 (= e!1785229 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))))))

(assert (= (and d!819197 res!1174376) b!2821840))

(assert (= (and b!2821840 res!1174374) b!2821841))

(assert (= (and d!819197 res!1174375) b!2821842))

(declare-fun m!3252289 () Bool)

(assert (=> d!819197 m!3252289))

(assert (=> d!819197 m!3251855))

(assert (=> d!819197 m!3252289))

(declare-fun m!3252291 () Bool)

(assert (=> d!819197 m!3252291))

(declare-fun m!3252293 () Bool)

(assert (=> d!819197 m!3252293))

(declare-fun m!3252295 () Bool)

(assert (=> d!819197 m!3252295))

(assert (=> d!819197 m!3252289))

(declare-fun m!3252297 () Bool)

(assert (=> d!819197 m!3252297))

(assert (=> d!819197 m!3252297))

(declare-fun m!3252299 () Bool)

(assert (=> d!819197 m!3252299))

(declare-fun m!3252301 () Bool)

(assert (=> b!2821840 m!3252301))

(declare-fun m!3252303 () Bool)

(assert (=> b!2821841 m!3252303))

(assert (=> b!2821842 m!3252289))

(assert (=> b!2821842 m!3252289))

(assert (=> b!2821842 m!3252297))

(assert (=> b!2821842 m!3252297))

(assert (=> b!2821842 m!3252299))

(declare-fun m!3252305 () Bool)

(assert (=> b!2821842 m!3252305))

(assert (=> b!2821474 d!819197))

(declare-fun b!2821845 () Bool)

(declare-fun e!1785233 () Bool)

(assert (=> b!2821845 (= e!1785233 true)))

(declare-fun b!2821844 () Bool)

(declare-fun e!1785232 () Bool)

(assert (=> b!2821844 (= e!1785232 e!1785233)))

(declare-fun b!2821843 () Bool)

(declare-fun e!1785231 () Bool)

(assert (=> b!2821843 (= e!1785231 e!1785232)))

(assert (=> b!2821493 e!1785231))

(assert (= b!2821844 b!2821845))

(assert (= b!2821843 b!2821844))

(assert (= (and b!2821493 ((_ is Cons!33110) (t!230549 rules!4424))) b!2821843))

(assert (=> b!2821845 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103593))))

(assert (=> b!2821845 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103593))))

(declare-fun e!1785236 () Bool)

(assert (=> b!2821471 (= tp!901087 e!1785236)))

(declare-fun b!2821857 () Bool)

(declare-fun tp!901162 () Bool)

(declare-fun tp!901161 () Bool)

(assert (=> b!2821857 (= e!1785236 (and tp!901162 tp!901161))))

(declare-fun b!2821859 () Bool)

(declare-fun tp!901164 () Bool)

(declare-fun tp!901163 () Bool)

(assert (=> b!2821859 (= e!1785236 (and tp!901164 tp!901163))))

(declare-fun b!2821856 () Bool)

(declare-fun tp_is_empty!14451 () Bool)

(assert (=> b!2821856 (= e!1785236 tp_is_empty!14451)))

(declare-fun b!2821858 () Bool)

(declare-fun tp!901165 () Bool)

(assert (=> b!2821858 (= e!1785236 tp!901165)))

(assert (= (and b!2821471 ((_ is ElementMatch!8349) (regex!4959 (h!38530 rules!4424)))) b!2821856))

(assert (= (and b!2821471 ((_ is Concat!13539) (regex!4959 (h!38530 rules!4424)))) b!2821857))

(assert (= (and b!2821471 ((_ is Star!8349) (regex!4959 (h!38530 rules!4424)))) b!2821858))

(assert (= (and b!2821471 ((_ is Union!8349) (regex!4959 (h!38530 rules!4424)))) b!2821859))

(declare-fun e!1785237 () Bool)

(assert (=> b!2821470 (= tp!901090 e!1785237)))

(declare-fun b!2821861 () Bool)

(declare-fun tp!901167 () Bool)

(declare-fun tp!901166 () Bool)

(assert (=> b!2821861 (= e!1785237 (and tp!901167 tp!901166))))

(declare-fun b!2821863 () Bool)

(declare-fun tp!901169 () Bool)

(declare-fun tp!901168 () Bool)

(assert (=> b!2821863 (= e!1785237 (and tp!901169 tp!901168))))

(declare-fun b!2821860 () Bool)

(assert (=> b!2821860 (= e!1785237 tp_is_empty!14451)))

(declare-fun b!2821862 () Bool)

(declare-fun tp!901170 () Bool)

(assert (=> b!2821862 (= e!1785237 tp!901170)))

(assert (= (and b!2821470 ((_ is ElementMatch!8349) (regex!4959 (rule!7387 (h!38531 l!6581))))) b!2821860))

(assert (= (and b!2821470 ((_ is Concat!13539) (regex!4959 (rule!7387 (h!38531 l!6581))))) b!2821861))

(assert (= (and b!2821470 ((_ is Star!8349) (regex!4959 (rule!7387 (h!38531 l!6581))))) b!2821862))

(assert (= (and b!2821470 ((_ is Union!8349) (regex!4959 (rule!7387 (h!38531 l!6581))))) b!2821863))

(declare-fun b!2821877 () Bool)

(declare-fun b_free!80741 () Bool)

(declare-fun b_next!81445 () Bool)

(assert (=> b!2821877 (= b_free!80741 (not b_next!81445))))

(declare-fun tp!901181 () Bool)

(declare-fun b_and!206143 () Bool)

(assert (=> b!2821877 (= tp!901181 b_and!206143)))

(declare-fun b_free!80743 () Bool)

(declare-fun b_next!81447 () Bool)

(assert (=> b!2821877 (= b_free!80743 (not b_next!81447))))

(declare-fun t!230583 () Bool)

(declare-fun tb!153825 () Bool)

(assert (=> (and b!2821877 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230583) tb!153825))

(declare-fun result!191534 () Bool)

(assert (= result!191534 result!191506))

(assert (=> b!2821575 t!230583))

(declare-fun tp!901184 () Bool)

(declare-fun b_and!206145 () Bool)

(assert (=> b!2821877 (= tp!901184 (and (=> t!230583 result!191534) b_and!206145))))

(declare-fun e!1785254 () Bool)

(declare-fun tp!901183 () Bool)

(declare-fun e!1785252 () Bool)

(declare-fun b!2821875 () Bool)

(assert (=> b!2821875 (= e!1785252 (and (inv!21 (value!159651 (h!38531 (t!230550 l!6581)))) e!1785254 tp!901183))))

(declare-fun e!1785253 () Bool)

(declare-fun b!2821876 () Bool)

(declare-fun tp!901185 () Bool)

(assert (=> b!2821876 (= e!1785254 (and tp!901185 (inv!45027 (tag!5463 (rule!7387 (h!38531 (t!230550 l!6581))))) (inv!45031 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) e!1785253))))

(declare-fun e!1785255 () Bool)

(declare-fun tp!901182 () Bool)

(declare-fun b!2821874 () Bool)

(assert (=> b!2821874 (= e!1785255 (and (inv!45030 (h!38531 (t!230550 l!6581))) e!1785252 tp!901182))))

(assert (=> b!2821877 (= e!1785253 (and tp!901181 tp!901184))))

(assert (=> b!2821468 (= tp!901091 e!1785255)))

(assert (= b!2821876 b!2821877))

(assert (= b!2821875 b!2821876))

(assert (= b!2821874 b!2821875))

(assert (= (and b!2821468 ((_ is Cons!33111) (t!230550 l!6581))) b!2821874))

(declare-fun m!3252307 () Bool)

(assert (=> b!2821875 m!3252307))

(declare-fun m!3252309 () Bool)

(assert (=> b!2821876 m!3252309))

(declare-fun m!3252311 () Bool)

(assert (=> b!2821876 m!3252311))

(declare-fun m!3252313 () Bool)

(assert (=> b!2821874 m!3252313))

(declare-fun b!2821888 () Bool)

(declare-fun b_free!80745 () Bool)

(declare-fun b_next!81449 () Bool)

(assert (=> b!2821888 (= b_free!80745 (not b_next!81449))))

(declare-fun tp!901197 () Bool)

(declare-fun b_and!206147 () Bool)

(assert (=> b!2821888 (= tp!901197 b_and!206147)))

(declare-fun b_free!80747 () Bool)

(declare-fun b_next!81451 () Bool)

(assert (=> b!2821888 (= b_free!80747 (not b_next!81451))))

(declare-fun t!230585 () Bool)

(declare-fun tb!153827 () Bool)

(assert (=> (and b!2821888 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230585) tb!153827))

(declare-fun result!191538 () Bool)

(assert (= result!191538 result!191506))

(assert (=> b!2821575 t!230585))

(declare-fun tp!901194 () Bool)

(declare-fun b_and!206149 () Bool)

(assert (=> b!2821888 (= tp!901194 (and (=> t!230585 result!191538) b_and!206149))))

(declare-fun e!1785265 () Bool)

(assert (=> b!2821888 (= e!1785265 (and tp!901197 tp!901194))))

(declare-fun b!2821887 () Bool)

(declare-fun e!1785266 () Bool)

(declare-fun tp!901195 () Bool)

(assert (=> b!2821887 (= e!1785266 (and tp!901195 (inv!45027 (tag!5463 (h!38530 (t!230549 rules!4424)))) (inv!45031 (transformation!4959 (h!38530 (t!230549 rules!4424)))) e!1785265))))

(declare-fun b!2821886 () Bool)

(declare-fun e!1785267 () Bool)

(declare-fun tp!901196 () Bool)

(assert (=> b!2821886 (= e!1785267 (and e!1785266 tp!901196))))

(assert (=> b!2821479 (= tp!901094 e!1785267)))

(assert (= b!2821887 b!2821888))

(assert (= b!2821886 b!2821887))

(assert (= (and b!2821479 ((_ is Cons!33110) (t!230549 rules!4424))) b!2821886))

(declare-fun m!3252315 () Bool)

(assert (=> b!2821887 m!3252315))

(declare-fun m!3252317 () Bool)

(assert (=> b!2821887 m!3252317))

(declare-fun b!2821893 () Bool)

(declare-fun e!1785270 () Bool)

(declare-fun tp!901200 () Bool)

(assert (=> b!2821893 (= e!1785270 (and tp_is_empty!14451 tp!901200))))

(assert (=> b!2821466 (= tp!901093 e!1785270)))

(assert (= (and b!2821466 ((_ is Cons!33109) (originalCharacters!5691 (h!38531 l!6581)))) b!2821893))

(declare-fun b_lambda!84449 () Bool)

(assert (= b_lambda!84431 (or (and b!2821472 b_free!80727 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))))) (and b!2821481 b_free!80731) (and b!2821877 b_free!80743 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))))) (and b!2821888 b_free!80747 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))))) b_lambda!84449)))

(declare-fun b_lambda!84451 () Bool)

(assert (= b_lambda!84435 (or b!2821478 b_lambda!84451)))

(declare-fun bs!517506 () Bool)

(declare-fun d!819199 () Bool)

(assert (= bs!517506 (and d!819199 b!2821478)))

(assert (=> bs!517506 (= (dynLambda!13860 lambda!103593 (h!38531 lt!1007047)) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 lt!1007047)))))

(declare-fun m!3252319 () Bool)

(assert (=> bs!517506 m!3252319))

(assert (=> b!2821668 d!819199))

(declare-fun b_lambda!84453 () Bool)

(assert (= b_lambda!84447 (or b!2821478 b_lambda!84453)))

(declare-fun bs!517507 () Bool)

(declare-fun d!819201 () Bool)

(assert (= bs!517507 (and d!819201 b!2821478)))

(assert (=> bs!517507 (= (dynLambda!13860 lambda!103593 (h!38531 lt!1007051)) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 lt!1007051)))))

(declare-fun m!3252321 () Bool)

(assert (=> bs!517507 m!3252321))

(assert (=> b!2821802 d!819201))

(check-sat tp_is_empty!14451 (not b!2821861) (not b!2821820) b_and!206147 (not d!819099) (not b!2821831) b_and!206119 (not b!2821635) (not b!2821803) (not b!2821661) (not b!2821832) (not b!2821830) (not d!819197) (not d!819145) (not b!2821670) (not b!2821886) (not b!2821681) (not b!2821545) (not d!819139) (not b!2821859) (not b!2821662) b_and!206127 (not b!2821640) (not b!2821672) (not b!2821836) (not b!2821680) (not b_next!81445) (not b!2821798) (not b!2821546) (not b!2821808) (not b_next!81449) (not b!2821843) (not b!2821797) (not b!2821669) (not b!2821833) (not b!2821799) (not b!2821842) (not b!2821660) (not b!2821841) (not b!2821639) (not d!819183) (not d!819147) (not d!819149) (not b!2821679) (not b!2821796) (not b!2821547) (not b!2821837) (not d!819111) (not b!2821638) (not b!2821822) (not b_next!81451) (not d!819117) (not b!2821862) (not d!819195) (not b!2821795) (not b!2821835) (not d!819137) (not b!2821568) (not b!2821819) b_and!206149 (not b!2821544) (not b!2821840) (not d!819191) (not b!2821805) (not b!2821671) (not d!819101) (not d!819087) (not b!2821535) (not b!2821634) (not b!2821857) (not b!2821678) (not bs!517507) (not b!2821581) (not b_next!81429) (not b_next!81447) (not b!2821536) (not b!2821551) (not tb!153813) (not b!2821663) (not b_lambda!84453) (not b!2821858) (not b!2821863) b_and!206145 b_and!206143 (not bs!517506) (not b!2821576) (not b!2821893) (not d!819135) (not b_lambda!84449) (not b!2821804) (not d!819141) (not b!2821570) b_and!206129 (not b!2821537) (not b!2821875) (not b!2821552) (not b_next!81435) (not b!2821887) (not d!819187) (not d!819103) (not b!2821550) b_and!206123 (not b_next!81433) (not b!2821575) (not b_lambda!84451) (not b_next!81431) (not b!2821834) (not b!2821874) (not b!2821569) (not d!819113) (not b!2821876))
(check-sat b_and!206127 (not b_next!81445) (not b_next!81449) (not b_next!81451) b_and!206149 b_and!206145 b_and!206143 b_and!206129 (not b_next!81433) (not b_next!81431) b_and!206147 b_and!206119 (not b_next!81429) (not b_next!81447) (not b_next!81435) b_and!206123)
(get-model)

(declare-fun d!819245 () Bool)

(declare-fun res!1174415 () Bool)

(declare-fun e!1785326 () Bool)

(assert (=> d!819245 (=> res!1174415 e!1785326)))

(assert (=> d!819245 (= res!1174415 ((_ is Nil!33111) (t!230550 lt!1007051)))))

(assert (=> d!819245 (= (forall!6783 (t!230550 lt!1007051) lambda!103593) e!1785326)))

(declare-fun b!2821969 () Bool)

(declare-fun e!1785327 () Bool)

(assert (=> b!2821969 (= e!1785326 e!1785327)))

(declare-fun res!1174416 () Bool)

(assert (=> b!2821969 (=> (not res!1174416) (not e!1785327))))

(assert (=> b!2821969 (= res!1174416 (dynLambda!13860 lambda!103593 (h!38531 (t!230550 lt!1007051))))))

(declare-fun b!2821970 () Bool)

(assert (=> b!2821970 (= e!1785327 (forall!6783 (t!230550 (t!230550 lt!1007051)) lambda!103593))))

(assert (= (and d!819245 (not res!1174415)) b!2821969))

(assert (= (and b!2821969 res!1174416) b!2821970))

(declare-fun b_lambda!84455 () Bool)

(assert (=> (not b_lambda!84455) (not b!2821969)))

(declare-fun m!3252431 () Bool)

(assert (=> b!2821969 m!3252431))

(declare-fun m!3252433 () Bool)

(assert (=> b!2821970 m!3252433))

(assert (=> b!2821803 d!819245))

(declare-fun d!819247 () Bool)

(declare-fun lt!1007272 () BalanceConc!20184)

(declare-fun printList!1222 (LexerInterface!4550 List!33235) List!33233)

(assert (=> d!819247 (= (list!12403 lt!1007272) (printList!1222 thiss!27755 (list!12404 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(declare-fun printTailRec!1165 (LexerInterface!4550 BalanceConc!20186 Int BalanceConc!20184) BalanceConc!20184)

(assert (=> d!819247 (= lt!1007272 (printTailRec!1165 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)) 0 (BalanceConc!20185 Empty!10273)))))

(assert (=> d!819247 (= (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))) lt!1007272)))

(declare-fun bs!517559 () Bool)

(assert (= bs!517559 d!819247))

(declare-fun m!3252513 () Bool)

(assert (=> bs!517559 m!3252513))

(assert (=> bs!517559 m!3252289))

(assert (=> bs!517559 m!3252291))

(assert (=> bs!517559 m!3252291))

(declare-fun m!3252515 () Bool)

(assert (=> bs!517559 m!3252515))

(assert (=> bs!517559 m!3252289))

(declare-fun m!3252517 () Bool)

(assert (=> bs!517559 m!3252517))

(assert (=> d!819197 d!819247))

(assert (=> d!819197 d!819115))

(declare-fun d!819271 () Bool)

(declare-fun lt!1007275 () Int)

(assert (=> d!819271 (= lt!1007275 (size!25772 (list!12404 (_1!19785 lt!1007204))))))

(declare-fun size!25776 (Conc!10274) Int)

(assert (=> d!819271 (= lt!1007275 (size!25776 (c!457083 (_1!19785 lt!1007204))))))

(assert (=> d!819271 (= (size!25773 (_1!19785 lt!1007204)) lt!1007275)))

(declare-fun bs!517561 () Bool)

(assert (= bs!517561 d!819271))

(declare-fun m!3252521 () Bool)

(assert (=> bs!517561 m!3252521))

(assert (=> bs!517561 m!3252521))

(declare-fun m!3252523 () Bool)

(assert (=> bs!517561 m!3252523))

(declare-fun m!3252525 () Bool)

(assert (=> bs!517561 m!3252525))

(assert (=> d!819197 d!819271))

(declare-fun d!819275 () Bool)

(declare-fun e!1785352 () Bool)

(assert (=> d!819275 e!1785352))

(declare-fun res!1174437 () Bool)

(assert (=> d!819275 (=> (not res!1174437) (not e!1785352))))

(declare-fun lt!1007281 () BalanceConc!20186)

(assert (=> d!819275 (= res!1174437 (= (list!12404 lt!1007281) (Cons!33111 (h!38531 lt!1007051) Nil!33111)))))

(declare-fun singleton!942 (Token!9320) BalanceConc!20186)

(assert (=> d!819275 (= lt!1007281 (singleton!942 (h!38531 lt!1007051)))))

(assert (=> d!819275 (= (singletonSeq!2133 (h!38531 lt!1007051)) lt!1007281)))

(declare-fun b!2822004 () Bool)

(declare-fun isBalanced!3115 (Conc!10274) Bool)

(assert (=> b!2822004 (= e!1785352 (isBalanced!3115 (c!457083 lt!1007281)))))

(assert (= (and d!819275 res!1174437) b!2822004))

(declare-fun m!3252535 () Bool)

(assert (=> d!819275 m!3252535))

(declare-fun m!3252537 () Bool)

(assert (=> d!819275 m!3252537))

(declare-fun m!3252539 () Bool)

(assert (=> b!2822004 m!3252539))

(assert (=> d!819197 d!819275))

(declare-fun d!819283 () Bool)

(declare-fun list!12406 (Conc!10274) List!33235)

(assert (=> d!819283 (= (list!12404 (singletonSeq!2133 (h!38531 lt!1007051))) (list!12406 (c!457083 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(declare-fun bs!517564 () Bool)

(assert (= bs!517564 d!819283))

(declare-fun m!3252541 () Bool)

(assert (=> bs!517564 m!3252541))

(assert (=> d!819197 d!819283))

(declare-fun b!2822032 () Bool)

(declare-fun res!1174461 () Bool)

(declare-fun e!1785375 () Bool)

(assert (=> b!2822032 (=> (not res!1174461) (not e!1785375))))

(declare-fun lt!1007292 () tuple2!33384)

(declare-datatypes ((tuple2!33388 0))(
  ( (tuple2!33389 (_1!19787 List!33235) (_2!19787 List!33233)) )
))
(declare-fun lexList!1248 (LexerInterface!4550 List!33234 List!33233) tuple2!33388)

(assert (=> b!2822032 (= res!1174461 (= (list!12404 (_1!19785 lt!1007292)) (_1!19787 (lexList!1248 thiss!27755 rules!4424 (list!12403 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))))

(declare-fun b!2822033 () Bool)

(assert (=> b!2822033 (= e!1785375 (= (list!12403 (_2!19785 lt!1007292)) (_2!19787 (lexList!1248 thiss!27755 rules!4424 (list!12403 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))))

(declare-fun b!2822034 () Bool)

(declare-fun e!1785374 () Bool)

(declare-fun isEmpty!18311 (BalanceConc!20186) Bool)

(assert (=> b!2822034 (= e!1785374 (not (isEmpty!18311 (_1!19785 lt!1007292))))))

(declare-fun d!819285 () Bool)

(assert (=> d!819285 e!1785375))

(declare-fun res!1174460 () Bool)

(assert (=> d!819285 (=> (not res!1174460) (not e!1785375))))

(declare-fun e!1785373 () Bool)

(assert (=> d!819285 (= res!1174460 e!1785373)))

(declare-fun c!457141 () Bool)

(assert (=> d!819285 (= c!457141 (> (size!25773 (_1!19785 lt!1007292)) 0))))

(declare-fun lexTailRecV2!886 (LexerInterface!4550 List!33234 BalanceConc!20184 BalanceConc!20184 BalanceConc!20184 BalanceConc!20186) tuple2!33384)

(assert (=> d!819285 (= lt!1007292 (lexTailRecV2!886 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))) (BalanceConc!20185 Empty!10273) (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))) (BalanceConc!20187 Empty!10274)))))

(assert (=> d!819285 (= (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))) lt!1007292)))

(declare-fun b!2822035 () Bool)

(assert (=> b!2822035 (= e!1785373 (= (_2!19785 lt!1007292) (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(declare-fun b!2822036 () Bool)

(assert (=> b!2822036 (= e!1785373 e!1785374)))

(declare-fun res!1174459 () Bool)

(assert (=> b!2822036 (= res!1174459 (< (size!25770 (_2!19785 lt!1007292)) (size!25770 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))

(assert (=> b!2822036 (=> (not res!1174459) (not e!1785374))))

(assert (= (and d!819285 c!457141) b!2822036))

(assert (= (and d!819285 (not c!457141)) b!2822035))

(assert (= (and b!2822036 res!1174459) b!2822034))

(assert (= (and d!819285 res!1174460) b!2822032))

(assert (= (and b!2822032 res!1174461) b!2822033))

(declare-fun m!3252571 () Bool)

(assert (=> b!2822032 m!3252571))

(assert (=> b!2822032 m!3252297))

(declare-fun m!3252573 () Bool)

(assert (=> b!2822032 m!3252573))

(assert (=> b!2822032 m!3252573))

(declare-fun m!3252575 () Bool)

(assert (=> b!2822032 m!3252575))

(declare-fun m!3252577 () Bool)

(assert (=> b!2822033 m!3252577))

(assert (=> b!2822033 m!3252297))

(assert (=> b!2822033 m!3252573))

(assert (=> b!2822033 m!3252573))

(assert (=> b!2822033 m!3252575))

(declare-fun m!3252579 () Bool)

(assert (=> b!2822036 m!3252579))

(assert (=> b!2822036 m!3252297))

(declare-fun m!3252581 () Bool)

(assert (=> b!2822036 m!3252581))

(declare-fun m!3252583 () Bool)

(assert (=> b!2822034 m!3252583))

(declare-fun m!3252585 () Bool)

(assert (=> d!819285 m!3252585))

(assert (=> d!819285 m!3252297))

(assert (=> d!819285 m!3252297))

(declare-fun m!3252587 () Bool)

(assert (=> d!819285 m!3252587))

(assert (=> d!819197 d!819285))

(declare-fun d!819295 () Bool)

(assert (=> d!819295 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))) (list!12406 (c!457083 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))))

(declare-fun bs!517567 () Bool)

(assert (= bs!517567 d!819295))

(declare-fun m!3252589 () Bool)

(assert (=> bs!517567 m!3252589))

(assert (=> d!819197 d!819295))

(declare-fun d!819297 () Bool)

(declare-fun lt!1007294 () Bool)

(declare-fun e!1785376 () Bool)

(assert (=> d!819297 (= lt!1007294 e!1785376)))

(declare-fun res!1174463 () Bool)

(assert (=> d!819297 (=> (not res!1174463) (not e!1785376))))

(assert (=> d!819297 (= res!1174463 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007047))))))) (list!12404 (singletonSeq!2133 (h!38531 (t!230550 lt!1007047))))))))

(declare-fun e!1785377 () Bool)

(assert (=> d!819297 (= lt!1007294 e!1785377)))

(declare-fun res!1174464 () Bool)

(assert (=> d!819297 (=> (not res!1174464) (not e!1785377))))

(declare-fun lt!1007293 () tuple2!33384)

(assert (=> d!819297 (= res!1174464 (= (size!25773 (_1!19785 lt!1007293)) 1))))

(assert (=> d!819297 (= lt!1007293 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007047))))))))

(assert (=> d!819297 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819297 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047))) lt!1007294)))

(declare-fun b!2822037 () Bool)

(declare-fun res!1174462 () Bool)

(assert (=> b!2822037 (=> (not res!1174462) (not e!1785377))))

(assert (=> b!2822037 (= res!1174462 (= (apply!7728 (_1!19785 lt!1007293) 0) (h!38531 (t!230550 lt!1007047))))))

(declare-fun b!2822038 () Bool)

(assert (=> b!2822038 (= e!1785377 (isEmpty!18308 (_2!19785 lt!1007293)))))

(declare-fun b!2822039 () Bool)

(assert (=> b!2822039 (= e!1785376 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007047))))))))))

(assert (= (and d!819297 res!1174464) b!2822037))

(assert (= (and b!2822037 res!1174462) b!2822038))

(assert (= (and d!819297 res!1174463) b!2822039))

(declare-fun m!3252591 () Bool)

(assert (=> d!819297 m!3252591))

(assert (=> d!819297 m!3251855))

(assert (=> d!819297 m!3252591))

(declare-fun m!3252593 () Bool)

(assert (=> d!819297 m!3252593))

(declare-fun m!3252595 () Bool)

(assert (=> d!819297 m!3252595))

(declare-fun m!3252597 () Bool)

(assert (=> d!819297 m!3252597))

(assert (=> d!819297 m!3252591))

(declare-fun m!3252599 () Bool)

(assert (=> d!819297 m!3252599))

(assert (=> d!819297 m!3252599))

(declare-fun m!3252601 () Bool)

(assert (=> d!819297 m!3252601))

(declare-fun m!3252603 () Bool)

(assert (=> b!2822037 m!3252603))

(declare-fun m!3252605 () Bool)

(assert (=> b!2822038 m!3252605))

(assert (=> b!2822039 m!3252591))

(assert (=> b!2822039 m!3252591))

(assert (=> b!2822039 m!3252599))

(assert (=> b!2822039 m!3252599))

(assert (=> b!2822039 m!3252601))

(declare-fun m!3252607 () Bool)

(assert (=> b!2822039 m!3252607))

(assert (=> b!2821535 d!819297))

(declare-fun d!819299 () Bool)

(declare-fun lt!1007297 () Int)

(assert (=> d!819299 (>= lt!1007297 0)))

(declare-fun e!1785380 () Int)

(assert (=> d!819299 (= lt!1007297 e!1785380)))

(declare-fun c!457144 () Bool)

(assert (=> d!819299 (= c!457144 ((_ is Nil!33111) (t!230550 l!6581)))))

(assert (=> d!819299 (= (size!25772 (t!230550 l!6581)) lt!1007297)))

(declare-fun b!2822044 () Bool)

(assert (=> b!2822044 (= e!1785380 0)))

(declare-fun b!2822045 () Bool)

(assert (=> b!2822045 (= e!1785380 (+ 1 (size!25772 (t!230550 (t!230550 l!6581)))))))

(assert (= (and d!819299 c!457144) b!2822044))

(assert (= (and d!819299 (not c!457144)) b!2822045))

(declare-fun m!3252609 () Bool)

(assert (=> b!2822045 m!3252609))

(assert (=> b!2821680 d!819299))

(assert (=> b!2821639 d!819087))

(declare-fun bs!517568 () Bool)

(declare-fun d!819301 () Bool)

(assert (= bs!517568 (and d!819301 b!2821478)))

(declare-fun lambda!103642 () Int)

(assert (=> bs!517568 (= (= thiss!27755 Lexer!4548) (= lambda!103642 lambda!103593))))

(declare-fun bs!517569 () Bool)

(assert (= bs!517569 (and d!819301 d!819101)))

(assert (=> bs!517569 (= lambda!103642 lambda!103605)))

(declare-fun bs!517570 () Bool)

(assert (= bs!517570 (and d!819301 d!819103)))

(assert (=> bs!517570 (= lambda!103642 lambda!103606)))

(declare-fun bs!517571 () Bool)

(assert (= bs!517571 (and d!819301 d!819139)))

(assert (=> bs!517571 (= lambda!103642 lambda!103614)))

(declare-fun bs!517572 () Bool)

(assert (= bs!517572 (and d!819301 d!819145)))

(assert (=> bs!517572 (= lambda!103642 lambda!103615)))

(declare-fun bs!517573 () Bool)

(assert (= bs!517573 (and d!819301 d!819087)))

(assert (=> bs!517573 (= lambda!103642 lambda!103604)))

(declare-fun bs!517574 () Bool)

(assert (= bs!517574 (and d!819301 d!819195)))

(assert (=> bs!517574 (= lambda!103642 lambda!103625)))

(declare-fun bs!517575 () Bool)

(assert (= bs!517575 (and d!819301 d!819117)))

(assert (=> bs!517575 (= lambda!103642 lambda!103613)))

(declare-fun bs!517576 () Bool)

(assert (= bs!517576 (and d!819301 b!2821797)))

(assert (=> bs!517576 (= (= thiss!27755 Lexer!4548) (= lambda!103642 lambda!103624))))

(declare-fun b!2822050 () Bool)

(declare-fun e!1785385 () Bool)

(assert (=> b!2822050 (= e!1785385 true)))

(declare-fun b!2822049 () Bool)

(declare-fun e!1785384 () Bool)

(assert (=> b!2822049 (= e!1785384 e!1785385)))

(declare-fun b!2822048 () Bool)

(declare-fun e!1785383 () Bool)

(assert (=> b!2822048 (= e!1785383 e!1785384)))

(assert (=> d!819301 e!1785383))

(assert (= b!2822049 b!2822050))

(assert (= b!2822048 b!2822049))

(assert (= (and d!819301 ((_ is Cons!33110) rules!4424)) b!2822048))

(assert (=> b!2822050 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103642))))

(assert (=> b!2822050 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103642))))

(assert (=> d!819301 true))

(declare-fun lt!1007298 () Bool)

(assert (=> d!819301 (= lt!1007298 (forall!6783 (t!230550 lt!1007177) lambda!103642))))

(declare-fun e!1785382 () Bool)

(assert (=> d!819301 (= lt!1007298 e!1785382)))

(declare-fun res!1174466 () Bool)

(assert (=> d!819301 (=> res!1174466 e!1785382)))

(assert (=> d!819301 (= res!1174466 (not ((_ is Cons!33111) (t!230550 lt!1007177))))))

(assert (=> d!819301 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819301 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007177)) lt!1007298)))

(declare-fun b!2822046 () Bool)

(declare-fun e!1785381 () Bool)

(assert (=> b!2822046 (= e!1785382 e!1785381)))

(declare-fun res!1174465 () Bool)

(assert (=> b!2822046 (=> (not res!1174465) (not e!1785381))))

(assert (=> b!2822046 (= res!1174465 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007177))))))

(declare-fun b!2822047 () Bool)

(assert (=> b!2822047 (= e!1785381 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 lt!1007177))))))

(assert (= (and d!819301 (not res!1174466)) b!2822046))

(assert (= (and b!2822046 res!1174465) b!2822047))

(declare-fun m!3252611 () Bool)

(assert (=> d!819301 m!3252611))

(assert (=> d!819301 m!3251855))

(declare-fun m!3252613 () Bool)

(assert (=> b!2822046 m!3252613))

(declare-fun m!3252615 () Bool)

(assert (=> b!2822047 m!3252615))

(assert (=> b!2821796 d!819301))

(declare-fun d!819303 () Bool)

(declare-fun res!1174468 () Bool)

(declare-fun e!1785387 () Bool)

(assert (=> d!819303 (=> res!1174468 e!1785387)))

(assert (=> d!819303 (= res!1174468 (or (not ((_ is Cons!33111) (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))) (not ((_ is Cons!33111) (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))))))))

(assert (=> d!819303 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))) rules!4424) e!1785387)))

(declare-fun b!2822051 () Bool)

(declare-fun e!1785386 () Bool)

(assert (=> b!2822051 (= e!1785387 e!1785386)))

(declare-fun res!1174467 () Bool)

(assert (=> b!2822051 (=> (not res!1174467) (not e!1785386))))

(assert (=> b!2822051 (= res!1174467 (separableTokensPredicate!893 thiss!27755 (h!38531 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581)))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))) rules!4424))))

(declare-fun lt!1007301 () Unit!47065)

(declare-fun Unit!47092 () Unit!47065)

(assert (=> b!2822051 (= lt!1007301 Unit!47092)))

(assert (=> b!2822051 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))))) 0)))

(declare-fun lt!1007299 () Unit!47065)

(declare-fun Unit!47093 () Unit!47065)

(assert (=> b!2822051 (= lt!1007299 Unit!47093)))

(assert (=> b!2822051 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))))))

(declare-fun lt!1007300 () Unit!47065)

(declare-fun Unit!47094 () Unit!47065)

(assert (=> b!2822051 (= lt!1007300 Unit!47094)))

(assert (=> b!2822051 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581)))))))

(declare-fun lt!1007303 () Unit!47065)

(declare-fun lt!1007305 () Unit!47065)

(assert (=> b!2822051 (= lt!1007303 lt!1007305)))

(assert (=> b!2822051 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))))))

(assert (=> b!2822051 (= lt!1007305 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581)))))))))

(declare-fun lt!1007302 () Unit!47065)

(declare-fun lt!1007304 () Unit!47065)

(assert (=> b!2822051 (= lt!1007302 lt!1007304)))

(assert (=> b!2822051 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581)))))))

(assert (=> b!2822051 (= lt!1007304 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))) (h!38531 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))))))

(declare-fun b!2822052 () Bool)

(assert (=> b!2822052 (= e!1785386 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581))))) (t!230550 (t!230550 (Cons!33111 (h!38531 (t!230550 l!6581)) (t!230550 (t!230550 l!6581)))))) rules!4424))))

(assert (= (and d!819303 (not res!1174468)) b!2822051))

(assert (= (and b!2822051 res!1174467) b!2822052))

(declare-fun m!3252617 () Bool)

(assert (=> b!2822051 m!3252617))

(declare-fun m!3252619 () Bool)

(assert (=> b!2822051 m!3252619))

(declare-fun m!3252621 () Bool)

(assert (=> b!2822051 m!3252621))

(declare-fun m!3252623 () Bool)

(assert (=> b!2822051 m!3252623))

(declare-fun m!3252625 () Bool)

(assert (=> b!2822051 m!3252625))

(declare-fun m!3252627 () Bool)

(assert (=> b!2822051 m!3252627))

(declare-fun m!3252629 () Bool)

(assert (=> b!2822051 m!3252629))

(assert (=> b!2822051 m!3252625))

(declare-fun m!3252631 () Bool)

(assert (=> b!2822052 m!3252631))

(assert (=> b!2821834 d!819303))

(declare-fun d!819305 () Bool)

(declare-fun res!1174473 () Bool)

(declare-fun e!1785392 () Bool)

(assert (=> d!819305 (=> res!1174473 e!1785392)))

(assert (=> d!819305 (= res!1174473 ((_ is Nil!33110) rules!4424))))

(assert (=> d!819305 (= (noDuplicateTag!1818 thiss!27755 rules!4424 Nil!33113) e!1785392)))

(declare-fun b!2822057 () Bool)

(declare-fun e!1785393 () Bool)

(assert (=> b!2822057 (= e!1785392 e!1785393)))

(declare-fun res!1174474 () Bool)

(assert (=> b!2822057 (=> (not res!1174474) (not e!1785393))))

(declare-fun contains!6059 (List!33237 String!36400) Bool)

(assert (=> b!2822057 (= res!1174474 (not (contains!6059 Nil!33113 (tag!5463 (h!38530 rules!4424)))))))

(declare-fun b!2822058 () Bool)

(assert (=> b!2822058 (= e!1785393 (noDuplicateTag!1818 thiss!27755 (t!230549 rules!4424) (Cons!33113 (tag!5463 (h!38530 rules!4424)) Nil!33113)))))

(assert (= (and d!819305 (not res!1174473)) b!2822057))

(assert (= (and b!2822057 res!1174474) b!2822058))

(declare-fun m!3252633 () Bool)

(assert (=> b!2822057 m!3252633))

(declare-fun m!3252635 () Bool)

(assert (=> b!2822058 m!3252635))

(assert (=> b!2821808 d!819305))

(declare-fun b!2822059 () Bool)

(declare-fun e!1785396 () List!33235)

(assert (=> b!2822059 (= e!1785396 Nil!33111)))

(declare-fun d!819307 () Bool)

(declare-fun e!1785394 () Bool)

(assert (=> d!819307 e!1785394))

(declare-fun res!1174475 () Bool)

(assert (=> d!819307 (=> (not res!1174475) (not e!1785394))))

(declare-fun lt!1007306 () List!33235)

(assert (=> d!819307 (= res!1174475 (= ((_ map implies) (content!4612 lt!1007306) (content!4612 (t!230550 (t!230550 l!6581)))) ((as const (InoxSet Token!9320)) true)))))

(assert (=> d!819307 (= lt!1007306 e!1785396)))

(declare-fun c!457147 () Bool)

(assert (=> d!819307 (= c!457147 (or ((_ is Nil!33111) (t!230550 (t!230550 l!6581))) (<= (- (- i!1730 1) 1) 0)))))

(assert (=> d!819307 (= (take!553 (t!230550 (t!230550 l!6581)) (- (- i!1730 1) 1)) lt!1007306)))

(declare-fun b!2822060 () Bool)

(declare-fun e!1785395 () Int)

(assert (=> b!2822060 (= e!1785395 (- (- i!1730 1) 1))))

(declare-fun b!2822061 () Bool)

(declare-fun e!1785397 () Int)

(assert (=> b!2822061 (= e!1785397 0)))

(declare-fun b!2822062 () Bool)

(assert (=> b!2822062 (= e!1785396 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (take!553 (t!230550 (t!230550 (t!230550 l!6581))) (- (- (- i!1730 1) 1) 1))))))

(declare-fun b!2822063 () Bool)

(assert (=> b!2822063 (= e!1785394 (= (size!25772 lt!1007306) e!1785397))))

(declare-fun c!457145 () Bool)

(assert (=> b!2822063 (= c!457145 (<= (- (- i!1730 1) 1) 0))))

(declare-fun b!2822064 () Bool)

(assert (=> b!2822064 (= e!1785397 e!1785395)))

(declare-fun c!457146 () Bool)

(assert (=> b!2822064 (= c!457146 (>= (- (- i!1730 1) 1) (size!25772 (t!230550 (t!230550 l!6581)))))))

(declare-fun b!2822065 () Bool)

(assert (=> b!2822065 (= e!1785395 (size!25772 (t!230550 (t!230550 l!6581))))))

(assert (= (and d!819307 c!457147) b!2822059))

(assert (= (and d!819307 (not c!457147)) b!2822062))

(assert (= (and d!819307 res!1174475) b!2822063))

(assert (= (and b!2822063 c!457145) b!2822061))

(assert (= (and b!2822063 (not c!457145)) b!2822064))

(assert (= (and b!2822064 c!457146) b!2822065))

(assert (= (and b!2822064 (not c!457146)) b!2822060))

(assert (=> b!2822065 m!3252609))

(declare-fun m!3252637 () Bool)

(assert (=> b!2822062 m!3252637))

(assert (=> b!2822064 m!3252609))

(declare-fun m!3252639 () Bool)

(assert (=> d!819307 m!3252639))

(declare-fun m!3252641 () Bool)

(assert (=> d!819307 m!3252641))

(declare-fun m!3252643 () Bool)

(assert (=> b!2822063 m!3252643))

(assert (=> b!2821678 d!819307))

(declare-fun d!819309 () Bool)

(assert (=> d!819309 true))

(declare-fun lambda!103645 () Int)

(declare-fun order!17609 () Int)

(declare-fun dynLambda!13863 (Int Int) Int)

(assert (=> d!819309 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13863 order!17609 lambda!103645))))

(declare-fun Forall2!831 (Int) Bool)

(assert (=> d!819309 (= (equivClasses!1951 (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (Forall2!831 lambda!103645))))

(declare-fun bs!517577 () Bool)

(assert (= bs!517577 d!819309))

(declare-fun m!3252645 () Bool)

(assert (=> bs!517577 m!3252645))

(assert (=> b!2821544 d!819309))

(declare-fun d!819311 () Bool)

(assert (=> d!819311 true))

(declare-fun order!17611 () Int)

(declare-fun lambda!103648 () Int)

(declare-fun dynLambda!13864 (Int Int) Int)

(assert (=> d!819311 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (dynLambda!13864 order!17611 lambda!103648))))

(assert (=> d!819311 true))

(assert (=> d!819311 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (dynLambda!13864 order!17611 lambda!103648))))

(declare-fun Forall!1234 (Int) Bool)

(assert (=> d!819311 (= (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (Forall!1234 lambda!103648))))

(declare-fun bs!517578 () Bool)

(assert (= bs!517578 d!819311))

(declare-fun m!3252647 () Bool)

(assert (=> bs!517578 m!3252647))

(assert (=> d!819111 d!819311))

(declare-fun d!819313 () Bool)

(declare-fun c!457150 () Bool)

(assert (=> d!819313 (= c!457150 ((_ is Nil!33111) lt!1007132))))

(declare-fun e!1785404 () (InoxSet Token!9320))

(assert (=> d!819313 (= (content!4612 lt!1007132) e!1785404)))

(declare-fun b!2822081 () Bool)

(assert (=> b!2822081 (= e!1785404 ((as const (Array Token!9320 Bool)) false))))

(declare-fun b!2822082 () Bool)

(assert (=> b!2822082 (= e!1785404 ((_ map or) (store ((as const (Array Token!9320 Bool)) false) (h!38531 lt!1007132) true) (content!4612 (t!230550 lt!1007132))))))

(assert (= (and d!819313 c!457150) b!2822081))

(assert (= (and d!819313 (not c!457150)) b!2822082))

(declare-fun m!3252677 () Bool)

(assert (=> b!2822082 m!3252677))

(declare-fun m!3252679 () Bool)

(assert (=> b!2822082 m!3252679))

(assert (=> d!819147 d!819313))

(declare-fun d!819319 () Bool)

(declare-fun c!457151 () Bool)

(assert (=> d!819319 (= c!457151 ((_ is Nil!33111) (t!230550 l!6581)))))

(declare-fun e!1785405 () (InoxSet Token!9320))

(assert (=> d!819319 (= (content!4612 (t!230550 l!6581)) e!1785405)))

(declare-fun b!2822083 () Bool)

(assert (=> b!2822083 (= e!1785405 ((as const (Array Token!9320 Bool)) false))))

(declare-fun b!2822084 () Bool)

(assert (=> b!2822084 (= e!1785405 ((_ map or) (store ((as const (Array Token!9320 Bool)) false) (h!38531 (t!230550 l!6581)) true) (content!4612 (t!230550 (t!230550 l!6581)))))))

(assert (= (and d!819319 c!457151) b!2822083))

(assert (= (and d!819319 (not c!457151)) b!2822084))

(declare-fun m!3252681 () Bool)

(assert (=> b!2822084 m!3252681))

(assert (=> b!2822084 m!3252641))

(assert (=> d!819147 d!819319))

(declare-fun d!819321 () Bool)

(declare-fun c!457154 () Bool)

(assert (=> d!819321 (= c!457154 ((_ is Node!10273) (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(declare-fun e!1785410 () Bool)

(assert (=> d!819321 (= (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))) e!1785410)))

(declare-fun b!2822091 () Bool)

(declare-fun inv!45038 (Conc!10273) Bool)

(assert (=> b!2822091 (= e!1785410 (inv!45038 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(declare-fun b!2822092 () Bool)

(declare-fun e!1785411 () Bool)

(assert (=> b!2822092 (= e!1785410 e!1785411)))

(declare-fun res!1174483 () Bool)

(assert (=> b!2822092 (= res!1174483 (not ((_ is Leaf!15644) (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))))))

(assert (=> b!2822092 (=> res!1174483 e!1785411)))

(declare-fun b!2822093 () Bool)

(declare-fun inv!45039 (Conc!10273) Bool)

(assert (=> b!2822093 (= e!1785411 (inv!45039 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(assert (= (and d!819321 c!457154) b!2822091))

(assert (= (and d!819321 (not c!457154)) b!2822092))

(assert (= (and b!2822092 (not res!1174483)) b!2822093))

(declare-fun m!3252689 () Bool)

(assert (=> b!2822091 m!3252689))

(declare-fun m!3252691 () Bool)

(assert (=> b!2822093 m!3252691))

(assert (=> b!2821581 d!819321))

(declare-fun d!819325 () Bool)

(declare-fun lt!1007315 () Int)

(assert (=> d!819325 (>= lt!1007315 0)))

(declare-fun e!1785412 () Int)

(assert (=> d!819325 (= lt!1007315 e!1785412)))

(declare-fun c!457155 () Bool)

(assert (=> d!819325 (= c!457155 ((_ is Nil!33111) l!6581))))

(assert (=> d!819325 (= (size!25772 l!6581) lt!1007315)))

(declare-fun b!2822094 () Bool)

(assert (=> b!2822094 (= e!1785412 0)))

(declare-fun b!2822095 () Bool)

(assert (=> b!2822095 (= e!1785412 (+ 1 (size!25772 (t!230550 l!6581))))))

(assert (= (and d!819325 c!457155) b!2822094))

(assert (= (and d!819325 (not c!457155)) b!2822095))

(assert (=> b!2822095 m!3252079))

(assert (=> b!2821662 d!819325))

(declare-fun d!819327 () Bool)

(assert (=> d!819327 (= (inv!45027 (tag!5463 (h!38530 (t!230549 rules!4424)))) (= (mod (str.len (value!159625 (tag!5463 (h!38530 (t!230549 rules!4424))))) 2) 0))))

(assert (=> b!2821887 d!819327))

(declare-fun d!819329 () Bool)

(declare-fun res!1174484 () Bool)

(declare-fun e!1785414 () Bool)

(assert (=> d!819329 (=> (not res!1174484) (not e!1785414))))

(assert (=> d!819329 (= res!1174484 (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))))))

(assert (=> d!819329 (= (inv!45031 (transformation!4959 (h!38530 (t!230549 rules!4424)))) e!1785414)))

(declare-fun b!2822097 () Bool)

(assert (=> b!2822097 (= e!1785414 (equivClasses!1951 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))))))

(assert (= (and d!819329 res!1174484) b!2822097))

(declare-fun m!3252697 () Bool)

(assert (=> d!819329 m!3252697))

(declare-fun m!3252699 () Bool)

(assert (=> b!2822097 m!3252699))

(assert (=> b!2821887 d!819329))

(declare-fun d!819331 () Bool)

(declare-fun res!1174485 () Bool)

(declare-fun e!1785415 () Bool)

(assert (=> d!819331 (=> res!1174485 e!1785415)))

(assert (=> d!819331 (= res!1174485 ((_ is Nil!33111) (t!230550 lt!1007051)))))

(assert (=> d!819331 (= (forall!6783 (t!230550 lt!1007051) lambda!103605) e!1785415)))

(declare-fun b!2822098 () Bool)

(declare-fun e!1785416 () Bool)

(assert (=> b!2822098 (= e!1785415 e!1785416)))

(declare-fun res!1174486 () Bool)

(assert (=> b!2822098 (=> (not res!1174486) (not e!1785416))))

(assert (=> b!2822098 (= res!1174486 (dynLambda!13860 lambda!103605 (h!38531 (t!230550 lt!1007051))))))

(declare-fun b!2822099 () Bool)

(assert (=> b!2822099 (= e!1785416 (forall!6783 (t!230550 (t!230550 lt!1007051)) lambda!103605))))

(assert (= (and d!819331 (not res!1174485)) b!2822098))

(assert (= (and b!2822098 res!1174486) b!2822099))

(declare-fun b_lambda!84465 () Bool)

(assert (=> (not b_lambda!84465) (not b!2822098)))

(declare-fun m!3252705 () Bool)

(assert (=> b!2822098 m!3252705))

(declare-fun m!3252707 () Bool)

(assert (=> b!2822099 m!3252707))

(assert (=> d!819101 d!819331))

(assert (=> d!819101 d!819115))

(declare-fun b!2822116 () Bool)

(declare-fun e!1785433 () Bool)

(declare-fun e!1785432 () Bool)

(assert (=> b!2822116 (= e!1785433 e!1785432)))

(declare-fun res!1174502 () Bool)

(assert (=> b!2822116 (=> (not res!1174502) (not e!1785432))))

(assert (=> b!2822116 (= res!1174502 ((_ is Cons!33111) (t!230550 l!6581)))))

(declare-fun d!819335 () Bool)

(declare-fun res!1174501 () Bool)

(assert (=> d!819335 (=> res!1174501 e!1785433)))

(assert (=> d!819335 (= res!1174501 ((_ is Nil!33111) lt!1007179))))

(assert (=> d!819335 (= (subseq!451 lt!1007179 (t!230550 l!6581)) e!1785433)))

(declare-fun b!2822118 () Bool)

(declare-fun e!1785434 () Bool)

(assert (=> b!2822118 (= e!1785434 (subseq!451 (t!230550 lt!1007179) (t!230550 (t!230550 l!6581))))))

(declare-fun b!2822117 () Bool)

(declare-fun e!1785435 () Bool)

(assert (=> b!2822117 (= e!1785432 e!1785435)))

(declare-fun res!1174500 () Bool)

(assert (=> b!2822117 (=> res!1174500 e!1785435)))

(assert (=> b!2822117 (= res!1174500 e!1785434)))

(declare-fun res!1174503 () Bool)

(assert (=> b!2822117 (=> (not res!1174503) (not e!1785434))))

(assert (=> b!2822117 (= res!1174503 (= (h!38531 lt!1007179) (h!38531 (t!230550 l!6581))))))

(declare-fun b!2822119 () Bool)

(assert (=> b!2822119 (= e!1785435 (subseq!451 lt!1007179 (t!230550 (t!230550 l!6581))))))

(assert (= (and d!819335 (not res!1174501)) b!2822116))

(assert (= (and b!2822116 res!1174502) b!2822117))

(assert (= (and b!2822117 res!1174503) b!2822118))

(assert (= (and b!2822117 (not res!1174500)) b!2822119))

(declare-fun m!3252743 () Bool)

(assert (=> b!2822118 m!3252743))

(declare-fun m!3252745 () Bool)

(assert (=> b!2822119 m!3252745))

(assert (=> b!2821798 d!819335))

(assert (=> b!2821660 d!819147))

(assert (=> b!2821568 d!819297))

(declare-fun d!819349 () Bool)

(assert (=> d!819349 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047)))))

(declare-fun lt!1007364 () Unit!47065)

(declare-fun choose!16685 (LexerInterface!4550 List!33234 List!33235 Token!9320) Unit!47065)

(assert (=> d!819349 (= lt!1007364 (choose!16685 thiss!27755 rules!4424 lt!1007047 (h!38531 (t!230550 lt!1007047))))))

(assert (=> d!819349 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819349 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 lt!1007047 (h!38531 (t!230550 lt!1007047))) lt!1007364)))

(declare-fun bs!517661 () Bool)

(assert (= bs!517661 d!819349))

(assert (=> bs!517661 m!3251935))

(declare-fun m!3253055 () Bool)

(assert (=> bs!517661 m!3253055))

(assert (=> bs!517661 m!3251855))

(assert (=> b!2821568 d!819349))

(declare-fun d!819479 () Bool)

(declare-fun lt!1007367 () Int)

(assert (=> d!819479 (= lt!1007367 (size!25771 (list!12403 (charsOf!3068 (h!38531 (t!230550 lt!1007047))))))))

(declare-fun size!25777 (Conc!10273) Int)

(assert (=> d!819479 (= lt!1007367 (size!25777 (c!457081 (charsOf!3068 (h!38531 (t!230550 lt!1007047))))))))

(assert (=> d!819479 (= (size!25770 (charsOf!3068 (h!38531 (t!230550 lt!1007047)))) lt!1007367)))

(declare-fun bs!517662 () Bool)

(assert (= bs!517662 d!819479))

(assert (=> bs!517662 m!3251979))

(declare-fun m!3253057 () Bool)

(assert (=> bs!517662 m!3253057))

(assert (=> bs!517662 m!3253057))

(declare-fun m!3253059 () Bool)

(assert (=> bs!517662 m!3253059))

(declare-fun m!3253061 () Bool)

(assert (=> bs!517662 m!3253061))

(assert (=> b!2821568 d!819479))

(declare-fun d!819481 () Bool)

(assert (=> d!819481 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047))))

(declare-fun lt!1007368 () Unit!47065)

(assert (=> d!819481 (= lt!1007368 (choose!16685 thiss!27755 rules!4424 lt!1007047 (h!38531 lt!1007047)))))

(assert (=> d!819481 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819481 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 lt!1007047 (h!38531 lt!1007047)) lt!1007368)))

(declare-fun bs!517663 () Bool)

(assert (= bs!517663 d!819481))

(assert (=> bs!517663 m!3251903))

(declare-fun m!3253063 () Bool)

(assert (=> bs!517663 m!3253063))

(assert (=> bs!517663 m!3251855))

(assert (=> b!2821568 d!819481))

(assert (=> b!2821568 d!819191))

(declare-fun d!819483 () Bool)

(declare-fun lt!1007371 () BalanceConc!20184)

(assert (=> d!819483 (= (list!12403 lt!1007371) (originalCharacters!5691 (h!38531 (t!230550 lt!1007047))))))

(assert (=> d!819483 (= lt!1007371 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047))))) (value!159651 (h!38531 (t!230550 lt!1007047)))))))

(assert (=> d!819483 (= (charsOf!3068 (h!38531 (t!230550 lt!1007047))) lt!1007371)))

(declare-fun b_lambda!84525 () Bool)

(assert (=> (not b_lambda!84525) (not d!819483)))

(declare-fun tb!153869 () Bool)

(declare-fun t!230634 () Bool)

(assert (=> (and b!2821472 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230634) tb!153869))

(declare-fun b!2822294 () Bool)

(declare-fun e!1785558 () Bool)

(declare-fun tp!901284 () Bool)

(assert (=> b!2822294 (= e!1785558 (and (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047))))) (value!159651 (h!38531 (t!230550 lt!1007047)))))) tp!901284))))

(declare-fun result!191584 () Bool)

(assert (=> tb!153869 (= result!191584 (and (inv!45035 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047))))) (value!159651 (h!38531 (t!230550 lt!1007047))))) e!1785558))))

(assert (= tb!153869 b!2822294))

(declare-fun m!3253065 () Bool)

(assert (=> b!2822294 m!3253065))

(declare-fun m!3253067 () Bool)

(assert (=> tb!153869 m!3253067))

(assert (=> d!819483 t!230634))

(declare-fun b_and!206191 () Bool)

(assert (= b_and!206127 (and (=> t!230634 result!191584) b_and!206191)))

(declare-fun t!230636 () Bool)

(declare-fun tb!153871 () Bool)

(assert (=> (and b!2821481 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230636) tb!153871))

(declare-fun result!191586 () Bool)

(assert (= result!191586 result!191584))

(assert (=> d!819483 t!230636))

(declare-fun b_and!206193 () Bool)

(assert (= b_and!206129 (and (=> t!230636 result!191586) b_and!206193)))

(declare-fun tb!153873 () Bool)

(declare-fun t!230638 () Bool)

(assert (=> (and b!2821877 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230638) tb!153873))

(declare-fun result!191588 () Bool)

(assert (= result!191588 result!191584))

(assert (=> d!819483 t!230638))

(declare-fun b_and!206195 () Bool)

(assert (= b_and!206145 (and (=> t!230638 result!191588) b_and!206195)))

(declare-fun tb!153875 () Bool)

(declare-fun t!230640 () Bool)

(assert (=> (and b!2821888 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230640) tb!153875))

(declare-fun result!191590 () Bool)

(assert (= result!191590 result!191584))

(assert (=> d!819483 t!230640))

(declare-fun b_and!206197 () Bool)

(assert (= b_and!206149 (and (=> t!230640 result!191590) b_and!206197)))

(declare-fun m!3253069 () Bool)

(assert (=> d!819483 m!3253069))

(declare-fun m!3253071 () Bool)

(assert (=> d!819483 m!3253071))

(assert (=> b!2821568 d!819483))

(declare-fun d!819485 () Bool)

(declare-fun prefixMatchZipperSequence!736 (Regex!8349 BalanceConc!20184) Bool)

(declare-fun rulesRegex!992 (LexerInterface!4550 List!33234) Regex!8349)

(declare-fun ++!8094 (BalanceConc!20184 BalanceConc!20184) BalanceConc!20184)

(declare-fun singletonSeq!2135 (C!16880) BalanceConc!20184)

(declare-fun apply!7732 (BalanceConc!20184 Int) C!16880)

(assert (=> d!819485 (= (separableTokensPredicate!893 thiss!27755 (h!38531 lt!1007047) (h!38531 (t!230550 lt!1007047)) rules!4424) (not (prefixMatchZipperSequence!736 (rulesRegex!992 thiss!27755 rules!4424) (++!8094 (charsOf!3068 (h!38531 lt!1007047)) (singletonSeq!2135 (apply!7732 (charsOf!3068 (h!38531 (t!230550 lt!1007047))) 0))))))))

(declare-fun bs!517664 () Bool)

(assert (= bs!517664 d!819485))

(assert (=> bs!517664 m!3251979))

(declare-fun m!3253073 () Bool)

(assert (=> bs!517664 m!3253073))

(declare-fun m!3253075 () Bool)

(assert (=> bs!517664 m!3253075))

(declare-fun m!3253077 () Bool)

(assert (=> bs!517664 m!3253077))

(declare-fun m!3253079 () Bool)

(assert (=> bs!517664 m!3253079))

(assert (=> bs!517664 m!3253077))

(declare-fun m!3253081 () Bool)

(assert (=> bs!517664 m!3253081))

(assert (=> bs!517664 m!3253079))

(assert (=> bs!517664 m!3251979))

(declare-fun m!3253083 () Bool)

(assert (=> bs!517664 m!3253083))

(assert (=> bs!517664 m!3253083))

(assert (=> bs!517664 m!3253075))

(assert (=> bs!517664 m!3253073))

(assert (=> b!2821568 d!819485))

(declare-fun d!819487 () Bool)

(declare-fun res!1174558 () Bool)

(declare-fun e!1785559 () Bool)

(assert (=> d!819487 (=> (not res!1174558) (not e!1785559))))

(assert (=> d!819487 (= res!1174558 (not (isEmpty!18307 (originalCharacters!5691 (h!38531 (t!230550 l!6581))))))))

(assert (=> d!819487 (= (inv!45030 (h!38531 (t!230550 l!6581))) e!1785559)))

(declare-fun b!2822295 () Bool)

(declare-fun res!1174559 () Bool)

(assert (=> b!2822295 (=> (not res!1174559) (not e!1785559))))

(assert (=> b!2822295 (= res!1174559 (= (originalCharacters!5691 (h!38531 (t!230550 l!6581))) (list!12403 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (value!159651 (h!38531 (t!230550 l!6581)))))))))

(declare-fun b!2822296 () Bool)

(assert (=> b!2822296 (= e!1785559 (= (size!25765 (h!38531 (t!230550 l!6581))) (size!25771 (originalCharacters!5691 (h!38531 (t!230550 l!6581))))))))

(assert (= (and d!819487 res!1174558) b!2822295))

(assert (= (and b!2822295 res!1174559) b!2822296))

(declare-fun b_lambda!84527 () Bool)

(assert (=> (not b_lambda!84527) (not b!2822295)))

(declare-fun t!230642 () Bool)

(declare-fun tb!153877 () Bool)

(assert (=> (and b!2821472 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230642) tb!153877))

(declare-fun b!2822297 () Bool)

(declare-fun e!1785560 () Bool)

(declare-fun tp!901285 () Bool)

(assert (=> b!2822297 (= e!1785560 (and (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (value!159651 (h!38531 (t!230550 l!6581)))))) tp!901285))))

(declare-fun result!191592 () Bool)

(assert (=> tb!153877 (= result!191592 (and (inv!45035 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (value!159651 (h!38531 (t!230550 l!6581))))) e!1785560))))

(assert (= tb!153877 b!2822297))

(declare-fun m!3253085 () Bool)

(assert (=> b!2822297 m!3253085))

(declare-fun m!3253087 () Bool)

(assert (=> tb!153877 m!3253087))

(assert (=> b!2822295 t!230642))

(declare-fun b_and!206199 () Bool)

(assert (= b_and!206191 (and (=> t!230642 result!191592) b_and!206199)))

(declare-fun t!230644 () Bool)

(declare-fun tb!153879 () Bool)

(assert (=> (and b!2821481 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230644) tb!153879))

(declare-fun result!191594 () Bool)

(assert (= result!191594 result!191592))

(assert (=> b!2822295 t!230644))

(declare-fun b_and!206201 () Bool)

(assert (= b_and!206193 (and (=> t!230644 result!191594) b_and!206201)))

(declare-fun t!230646 () Bool)

(declare-fun tb!153881 () Bool)

(assert (=> (and b!2821877 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230646) tb!153881))

(declare-fun result!191596 () Bool)

(assert (= result!191596 result!191592))

(assert (=> b!2822295 t!230646))

(declare-fun b_and!206203 () Bool)

(assert (= b_and!206195 (and (=> t!230646 result!191596) b_and!206203)))

(declare-fun tb!153883 () Bool)

(declare-fun t!230648 () Bool)

(assert (=> (and b!2821888 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230648) tb!153883))

(declare-fun result!191598 () Bool)

(assert (= result!191598 result!191592))

(assert (=> b!2822295 t!230648))

(declare-fun b_and!206205 () Bool)

(assert (= b_and!206197 (and (=> t!230648 result!191598) b_and!206205)))

(declare-fun m!3253089 () Bool)

(assert (=> d!819487 m!3253089))

(declare-fun m!3253091 () Bool)

(assert (=> b!2822295 m!3253091))

(assert (=> b!2822295 m!3253091))

(declare-fun m!3253093 () Bool)

(assert (=> b!2822295 m!3253093))

(declare-fun m!3253095 () Bool)

(assert (=> b!2822296 m!3253095))

(assert (=> b!2821874 d!819487))

(assert (=> b!2821836 d!819103))

(declare-fun d!819489 () Bool)

(assert (=> d!819489 (= (inv!45027 (tag!5463 (rule!7387 (h!38531 (t!230550 l!6581))))) (= (mod (str.len (value!159625 (tag!5463 (rule!7387 (h!38531 (t!230550 l!6581)))))) 2) 0))))

(assert (=> b!2821876 d!819489))

(declare-fun d!819491 () Bool)

(declare-fun res!1174560 () Bool)

(declare-fun e!1785561 () Bool)

(assert (=> d!819491 (=> (not res!1174560) (not e!1785561))))

(assert (=> d!819491 (= res!1174560 (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))))))

(assert (=> d!819491 (= (inv!45031 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) e!1785561)))

(declare-fun b!2822298 () Bool)

(assert (=> b!2822298 (= e!1785561 (equivClasses!1951 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))))))

(assert (= (and d!819491 res!1174560) b!2822298))

(declare-fun m!3253097 () Bool)

(assert (=> d!819491 m!3253097))

(declare-fun m!3253099 () Bool)

(assert (=> b!2822298 m!3253099))

(assert (=> b!2821876 d!819491))

(declare-fun d!819493 () Bool)

(declare-fun charsToInt!0 (List!33232) (_ BitVec 32))

(assert (=> d!819493 (= (inv!16 (value!159651 (h!38531 l!6581))) (= (charsToInt!0 (text!36770 (value!159651 (h!38531 l!6581)))) (value!159643 (value!159651 (h!38531 l!6581)))))))

(declare-fun bs!517665 () Bool)

(assert (= bs!517665 d!819493))

(declare-fun m!3253101 () Bool)

(assert (=> bs!517665 m!3253101))

(assert (=> b!2821819 d!819493))

(declare-fun d!819495 () Bool)

(declare-fun lt!1007374 () Int)

(assert (=> d!819495 (>= lt!1007374 0)))

(declare-fun e!1785564 () Int)

(assert (=> d!819495 (= lt!1007374 e!1785564)))

(declare-fun c!457167 () Bool)

(assert (=> d!819495 (= c!457167 ((_ is Nil!33109) (originalCharacters!5691 (h!38531 l!6581))))))

(assert (=> d!819495 (= (size!25771 (originalCharacters!5691 (h!38531 l!6581))) lt!1007374)))

(declare-fun b!2822303 () Bool)

(assert (=> b!2822303 (= e!1785564 0)))

(declare-fun b!2822304 () Bool)

(assert (=> b!2822304 (= e!1785564 (+ 1 (size!25771 (t!230548 (originalCharacters!5691 (h!38531 l!6581))))))))

(assert (= (and d!819495 c!457167) b!2822303))

(assert (= (and d!819495 (not c!457167)) b!2822304))

(declare-fun m!3253103 () Bool)

(assert (=> b!2822304 m!3253103))

(assert (=> b!2821576 d!819495))

(declare-fun d!819497 () Bool)

(assert (=> d!819497 true))

(declare-fun lt!1007377 () Bool)

(declare-fun rulesValidInductive!1720 (LexerInterface!4550 List!33234) Bool)

(assert (=> d!819497 (= lt!1007377 (rulesValidInductive!1720 thiss!27755 rules!4424))))

(declare-fun lambda!103655 () Int)

(declare-fun forall!6788 (List!33234 Int) Bool)

(assert (=> d!819497 (= lt!1007377 (forall!6788 rules!4424 lambda!103655))))

(assert (=> d!819497 (= (rulesValid!1822 thiss!27755 rules!4424) lt!1007377)))

(declare-fun bs!517666 () Bool)

(assert (= bs!517666 d!819497))

(declare-fun m!3253105 () Bool)

(assert (=> bs!517666 m!3253105))

(declare-fun m!3253107 () Bool)

(assert (=> bs!517666 m!3253107))

(assert (=> d!819187 d!819497))

(declare-fun bs!517667 () Bool)

(declare-fun d!819499 () Bool)

(assert (= bs!517667 (and d!819499 b!2821478)))

(declare-fun lambda!103656 () Int)

(assert (=> bs!517667 (= (= thiss!27755 Lexer!4548) (= lambda!103656 lambda!103593))))

(declare-fun bs!517668 () Bool)

(assert (= bs!517668 (and d!819499 d!819101)))

(assert (=> bs!517668 (= lambda!103656 lambda!103605)))

(declare-fun bs!517669 () Bool)

(assert (= bs!517669 (and d!819499 d!819139)))

(assert (=> bs!517669 (= lambda!103656 lambda!103614)))

(declare-fun bs!517670 () Bool)

(assert (= bs!517670 (and d!819499 d!819301)))

(assert (=> bs!517670 (= lambda!103656 lambda!103642)))

(declare-fun bs!517671 () Bool)

(assert (= bs!517671 (and d!819499 d!819103)))

(assert (=> bs!517671 (= lambda!103656 lambda!103606)))

(declare-fun bs!517672 () Bool)

(assert (= bs!517672 (and d!819499 d!819145)))

(assert (=> bs!517672 (= lambda!103656 lambda!103615)))

(declare-fun bs!517673 () Bool)

(assert (= bs!517673 (and d!819499 d!819087)))

(assert (=> bs!517673 (= lambda!103656 lambda!103604)))

(declare-fun bs!517674 () Bool)

(assert (= bs!517674 (and d!819499 d!819195)))

(assert (=> bs!517674 (= lambda!103656 lambda!103625)))

(declare-fun bs!517675 () Bool)

(assert (= bs!517675 (and d!819499 d!819117)))

(assert (=> bs!517675 (= lambda!103656 lambda!103613)))

(declare-fun bs!517676 () Bool)

(assert (= bs!517676 (and d!819499 b!2821797)))

(assert (=> bs!517676 (= (= thiss!27755 Lexer!4548) (= lambda!103656 lambda!103624))))

(declare-fun b!2822311 () Bool)

(declare-fun e!1785569 () Bool)

(assert (=> b!2822311 (= e!1785569 true)))

(declare-fun b!2822310 () Bool)

(declare-fun e!1785568 () Bool)

(assert (=> b!2822310 (= e!1785568 e!1785569)))

(declare-fun b!2822309 () Bool)

(declare-fun e!1785567 () Bool)

(assert (=> b!2822309 (= e!1785567 e!1785568)))

(assert (=> d!819499 e!1785567))

(assert (= b!2822310 b!2822311))

(assert (= b!2822309 b!2822310))

(assert (= (and d!819499 ((_ is Cons!33110) rules!4424)) b!2822309))

(assert (=> b!2822311 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103656))))

(assert (=> b!2822311 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103656))))

(assert (=> d!819499 true))

(declare-fun lt!1007378 () Bool)

(assert (=> d!819499 (= lt!1007378 (forall!6783 (t!230550 (t!230550 lt!1007051)) lambda!103656))))

(declare-fun e!1785566 () Bool)

(assert (=> d!819499 (= lt!1007378 e!1785566)))

(declare-fun res!1174562 () Bool)

(assert (=> d!819499 (=> res!1174562 e!1785566)))

(assert (=> d!819499 (= res!1174562 (not ((_ is Cons!33111) (t!230550 (t!230550 lt!1007051)))))))

(assert (=> d!819499 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819499 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 lt!1007051))) lt!1007378)))

(declare-fun b!2822307 () Bool)

(declare-fun e!1785565 () Bool)

(assert (=> b!2822307 (= e!1785566 e!1785565)))

(declare-fun res!1174561 () Bool)

(assert (=> b!2822307 (=> (not res!1174561) (not e!1785565))))

(assert (=> b!2822307 (= res!1174561 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 lt!1007051)))))))

(declare-fun b!2822308 () Bool)

(assert (=> b!2822308 (= e!1785565 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 (t!230550 lt!1007051)))))))

(assert (= (and d!819499 (not res!1174562)) b!2822307))

(assert (= (and b!2822307 res!1174561) b!2822308))

(declare-fun m!3253109 () Bool)

(assert (=> d!819499 m!3253109))

(assert (=> d!819499 m!3251855))

(declare-fun m!3253111 () Bool)

(assert (=> b!2822307 m!3253111))

(declare-fun m!3253113 () Bool)

(assert (=> b!2822308 m!3253113))

(assert (=> b!2821546 d!819499))

(declare-fun lt!1007381 () Bool)

(declare-fun d!819501 () Bool)

(assert (=> d!819501 (= lt!1007381 (isEmpty!18307 (list!12403 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))))

(declare-fun isEmpty!18312 (Conc!10273) Bool)

(assert (=> d!819501 (= lt!1007381 (isEmpty!18312 (c!457081 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))))

(assert (=> d!819501 (= (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))) lt!1007381)))

(declare-fun bs!517677 () Bool)

(assert (= bs!517677 d!819501))

(declare-fun m!3253115 () Bool)

(assert (=> bs!517677 m!3253115))

(assert (=> bs!517677 m!3253115))

(declare-fun m!3253117 () Bool)

(assert (=> bs!517677 m!3253117))

(declare-fun m!3253119 () Bool)

(assert (=> bs!517677 m!3253119))

(assert (=> b!2821832 d!819501))

(declare-fun b!2822312 () Bool)

(declare-fun res!1174565 () Bool)

(declare-fun e!1785572 () Bool)

(assert (=> b!2822312 (=> (not res!1174565) (not e!1785572))))

(declare-fun lt!1007382 () tuple2!33384)

(assert (=> b!2822312 (= res!1174565 (= (list!12404 (_1!19785 lt!1007382)) (_1!19787 (lexList!1248 thiss!27755 rules!4424 (list!12403 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))))

(declare-fun b!2822313 () Bool)

(assert (=> b!2822313 (= e!1785572 (= (list!12403 (_2!19785 lt!1007382)) (_2!19787 (lexList!1248 thiss!27755 rules!4424 (list!12403 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))))

(declare-fun b!2822314 () Bool)

(declare-fun e!1785571 () Bool)

(assert (=> b!2822314 (= e!1785571 (not (isEmpty!18311 (_1!19785 lt!1007382))))))

(declare-fun d!819503 () Bool)

(assert (=> d!819503 e!1785572))

(declare-fun res!1174564 () Bool)

(assert (=> d!819503 (=> (not res!1174564) (not e!1785572))))

(declare-fun e!1785570 () Bool)

(assert (=> d!819503 (= res!1174564 e!1785570)))

(declare-fun c!457168 () Bool)

(assert (=> d!819503 (= c!457168 (> (size!25773 (_1!19785 lt!1007382)) 0))))

(assert (=> d!819503 (= lt!1007382 (lexTailRecV2!886 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))) (BalanceConc!20185 Empty!10273) (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))) (BalanceConc!20187 Empty!10274)))))

(assert (=> d!819503 (= (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))) lt!1007382)))

(declare-fun b!2822315 () Bool)

(assert (=> b!2822315 (= e!1785570 (= (_2!19785 lt!1007382) (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(declare-fun b!2822316 () Bool)

(assert (=> b!2822316 (= e!1785570 e!1785571)))

(declare-fun res!1174563 () Bool)

(assert (=> b!2822316 (= res!1174563 (< (size!25770 (_2!19785 lt!1007382)) (size!25770 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))

(assert (=> b!2822316 (=> (not res!1174563) (not e!1785571))))

(assert (= (and d!819503 c!457168) b!2822316))

(assert (= (and d!819503 (not c!457168)) b!2822315))

(assert (= (and b!2822316 res!1174563) b!2822314))

(assert (= (and d!819503 res!1174564) b!2822312))

(assert (= (and b!2822312 res!1174565) b!2822313))

(declare-fun m!3253121 () Bool)

(assert (=> b!2822312 m!3253121))

(assert (=> b!2822312 m!3252263))

(declare-fun m!3253123 () Bool)

(assert (=> b!2822312 m!3253123))

(assert (=> b!2822312 m!3253123))

(declare-fun m!3253125 () Bool)

(assert (=> b!2822312 m!3253125))

(declare-fun m!3253127 () Bool)

(assert (=> b!2822313 m!3253127))

(assert (=> b!2822313 m!3252263))

(assert (=> b!2822313 m!3253123))

(assert (=> b!2822313 m!3253123))

(assert (=> b!2822313 m!3253125))

(declare-fun m!3253129 () Bool)

(assert (=> b!2822316 m!3253129))

(assert (=> b!2822316 m!3252263))

(declare-fun m!3253131 () Bool)

(assert (=> b!2822316 m!3253131))

(declare-fun m!3253133 () Bool)

(assert (=> b!2822314 m!3253133))

(declare-fun m!3253135 () Bool)

(assert (=> d!819503 m!3253135))

(assert (=> d!819503 m!3252263))

(assert (=> d!819503 m!3252263))

(declare-fun m!3253137 () Bool)

(assert (=> d!819503 m!3253137))

(assert (=> b!2821832 d!819503))

(declare-fun d!819505 () Bool)

(declare-fun lt!1007383 () BalanceConc!20184)

(assert (=> d!819505 (= (list!12403 lt!1007383) (printList!1222 thiss!27755 (list!12404 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(assert (=> d!819505 (= lt!1007383 (printTailRec!1165 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)) 0 (BalanceConc!20185 Empty!10273)))))

(assert (=> d!819505 (= (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))) lt!1007383)))

(declare-fun bs!517678 () Bool)

(assert (= bs!517678 d!819505))

(declare-fun m!3253139 () Bool)

(assert (=> bs!517678 m!3253139))

(assert (=> bs!517678 m!3252255))

(assert (=> bs!517678 m!3252257))

(assert (=> bs!517678 m!3252257))

(declare-fun m!3253141 () Bool)

(assert (=> bs!517678 m!3253141))

(assert (=> bs!517678 m!3252255))

(declare-fun m!3253143 () Bool)

(assert (=> bs!517678 m!3253143))

(assert (=> b!2821832 d!819505))

(declare-fun d!819507 () Bool)

(declare-fun e!1785573 () Bool)

(assert (=> d!819507 e!1785573))

(declare-fun res!1174566 () Bool)

(assert (=> d!819507 (=> (not res!1174566) (not e!1785573))))

(declare-fun lt!1007384 () BalanceConc!20186)

(assert (=> d!819507 (= res!1174566 (= (list!12404 lt!1007384) (Cons!33111 (h!38531 lt!1007047) Nil!33111)))))

(assert (=> d!819507 (= lt!1007384 (singleton!942 (h!38531 lt!1007047)))))

(assert (=> d!819507 (= (singletonSeq!2133 (h!38531 lt!1007047)) lt!1007384)))

(declare-fun b!2822317 () Bool)

(assert (=> b!2822317 (= e!1785573 (isBalanced!3115 (c!457083 lt!1007384)))))

(assert (= (and d!819507 res!1174566) b!2822317))

(declare-fun m!3253145 () Bool)

(assert (=> d!819507 m!3253145))

(declare-fun m!3253147 () Bool)

(assert (=> d!819507 m!3253147))

(declare-fun m!3253149 () Bool)

(assert (=> b!2822317 m!3253149))

(assert (=> b!2821832 d!819507))

(declare-fun bs!517679 () Bool)

(declare-fun d!819509 () Bool)

(assert (= bs!517679 (and d!819509 b!2821478)))

(declare-fun lambda!103657 () Int)

(assert (=> bs!517679 (= (= thiss!27755 Lexer!4548) (= lambda!103657 lambda!103593))))

(declare-fun bs!517680 () Bool)

(assert (= bs!517680 (and d!819509 d!819101)))

(assert (=> bs!517680 (= lambda!103657 lambda!103605)))

(declare-fun bs!517681 () Bool)

(assert (= bs!517681 (and d!819509 d!819499)))

(assert (=> bs!517681 (= lambda!103657 lambda!103656)))

(declare-fun bs!517682 () Bool)

(assert (= bs!517682 (and d!819509 d!819139)))

(assert (=> bs!517682 (= lambda!103657 lambda!103614)))

(declare-fun bs!517683 () Bool)

(assert (= bs!517683 (and d!819509 d!819301)))

(assert (=> bs!517683 (= lambda!103657 lambda!103642)))

(declare-fun bs!517684 () Bool)

(assert (= bs!517684 (and d!819509 d!819103)))

(assert (=> bs!517684 (= lambda!103657 lambda!103606)))

(declare-fun bs!517685 () Bool)

(assert (= bs!517685 (and d!819509 d!819145)))

(assert (=> bs!517685 (= lambda!103657 lambda!103615)))

(declare-fun bs!517686 () Bool)

(assert (= bs!517686 (and d!819509 d!819087)))

(assert (=> bs!517686 (= lambda!103657 lambda!103604)))

(declare-fun bs!517687 () Bool)

(assert (= bs!517687 (and d!819509 d!819195)))

(assert (=> bs!517687 (= lambda!103657 lambda!103625)))

(declare-fun bs!517688 () Bool)

(assert (= bs!517688 (and d!819509 d!819117)))

(assert (=> bs!517688 (= lambda!103657 lambda!103613)))

(declare-fun bs!517689 () Bool)

(assert (= bs!517689 (and d!819509 b!2821797)))

(assert (=> bs!517689 (= (= thiss!27755 Lexer!4548) (= lambda!103657 lambda!103624))))

(declare-fun b!2822322 () Bool)

(declare-fun e!1785578 () Bool)

(assert (=> b!2822322 (= e!1785578 true)))

(declare-fun b!2822321 () Bool)

(declare-fun e!1785577 () Bool)

(assert (=> b!2822321 (= e!1785577 e!1785578)))

(declare-fun b!2822320 () Bool)

(declare-fun e!1785576 () Bool)

(assert (=> b!2822320 (= e!1785576 e!1785577)))

(assert (=> d!819509 e!1785576))

(assert (= b!2822321 b!2822322))

(assert (= b!2822320 b!2822321))

(assert (= (and d!819509 ((_ is Cons!33110) rules!4424)) b!2822320))

(assert (=> b!2822322 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103657))))

(assert (=> b!2822322 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103657))))

(assert (=> d!819509 true))

(declare-fun lt!1007385 () Bool)

(assert (=> d!819509 (= lt!1007385 (forall!6783 (take!553 (t!230550 l!6581) (- i!1730 1)) lambda!103657))))

(declare-fun e!1785575 () Bool)

(assert (=> d!819509 (= lt!1007385 e!1785575)))

(declare-fun res!1174568 () Bool)

(assert (=> d!819509 (=> res!1174568 e!1785575)))

(assert (=> d!819509 (= res!1174568 (not ((_ is Cons!33111) (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(assert (=> d!819509 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819509 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (take!553 (t!230550 l!6581) (- i!1730 1))) lt!1007385)))

(declare-fun b!2822318 () Bool)

(declare-fun e!1785574 () Bool)

(assert (=> b!2822318 (= e!1785575 e!1785574)))

(declare-fun res!1174567 () Bool)

(assert (=> b!2822318 (=> (not res!1174567) (not e!1785574))))

(assert (=> b!2822318 (= res!1174567 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(declare-fun b!2822319 () Bool)

(assert (=> b!2822319 (= e!1785574 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(assert (= (and d!819509 (not res!1174568)) b!2822318))

(assert (= (and b!2822318 res!1174567) b!2822319))

(assert (=> d!819509 m!3251865))

(declare-fun m!3253151 () Bool)

(assert (=> d!819509 m!3253151))

(assert (=> d!819509 m!3251855))

(declare-fun m!3253153 () Bool)

(assert (=> b!2822318 m!3253153))

(declare-fun m!3253155 () Bool)

(assert (=> b!2822319 m!3253155))

(assert (=> d!819149 d!819509))

(assert (=> d!819149 d!819147))

(declare-fun bs!517690 () Bool)

(declare-fun d!819511 () Bool)

(assert (= bs!517690 (and d!819511 d!819509)))

(declare-fun lambda!103660 () Int)

(assert (=> bs!517690 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103657))))

(declare-fun bs!517691 () Bool)

(assert (= bs!517691 (and d!819511 b!2821478)))

(assert (=> bs!517691 (= lambda!103660 lambda!103593)))

(declare-fun bs!517692 () Bool)

(assert (= bs!517692 (and d!819511 d!819101)))

(assert (=> bs!517692 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103605))))

(declare-fun bs!517693 () Bool)

(assert (= bs!517693 (and d!819511 d!819499)))

(assert (=> bs!517693 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103656))))

(declare-fun bs!517694 () Bool)

(assert (= bs!517694 (and d!819511 d!819139)))

(assert (=> bs!517694 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103614))))

(declare-fun bs!517695 () Bool)

(assert (= bs!517695 (and d!819511 d!819301)))

(assert (=> bs!517695 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103642))))

(declare-fun bs!517696 () Bool)

(assert (= bs!517696 (and d!819511 d!819103)))

(assert (=> bs!517696 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103606))))

(declare-fun bs!517697 () Bool)

(assert (= bs!517697 (and d!819511 d!819145)))

(assert (=> bs!517697 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103615))))

(declare-fun bs!517698 () Bool)

(assert (= bs!517698 (and d!819511 d!819087)))

(assert (=> bs!517698 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103604))))

(declare-fun bs!517699 () Bool)

(assert (= bs!517699 (and d!819511 d!819195)))

(assert (=> bs!517699 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103625))))

(declare-fun bs!517700 () Bool)

(assert (= bs!517700 (and d!819511 d!819117)))

(assert (=> bs!517700 (= (= Lexer!4548 thiss!27755) (= lambda!103660 lambda!103613))))

(declare-fun bs!517701 () Bool)

(assert (= bs!517701 (and d!819511 b!2821797)))

(assert (=> bs!517701 (= lambda!103660 lambda!103624)))

(declare-fun b!2822331 () Bool)

(declare-fun e!1785587 () Bool)

(assert (=> b!2822331 (= e!1785587 true)))

(declare-fun b!2822330 () Bool)

(declare-fun e!1785586 () Bool)

(assert (=> b!2822330 (= e!1785586 e!1785587)))

(declare-fun b!2822329 () Bool)

(declare-fun e!1785585 () Bool)

(assert (=> b!2822329 (= e!1785585 e!1785586)))

(assert (=> d!819511 e!1785585))

(assert (= b!2822330 b!2822331))

(assert (= b!2822329 b!2822330))

(assert (= (and d!819511 ((_ is Cons!33110) rules!4424)) b!2822329))

(assert (=> b!2822331 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103660))))

(assert (=> b!2822331 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103660))))

(assert (=> d!819511 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (take!553 (t!230550 l!6581) (- i!1730 1)) rules!4424)))

(declare-fun lt!1007399 () Unit!47065)

(declare-fun lt!1007398 () Unit!47065)

(assert (=> d!819511 (= lt!1007399 lt!1007398)))

(declare-fun lt!1007396 () List!33235)

(assert (=> d!819511 (forall!6783 lt!1007396 lambda!103660)))

(assert (=> d!819511 (= lt!1007398 (lemmaForallSubseq!227 lt!1007396 (t!230550 l!6581) lambda!103660))))

(assert (=> d!819511 (= lt!1007396 (take!553 (t!230550 l!6581) (- i!1730 1)))))

(declare-fun lt!1007400 () Unit!47065)

(declare-fun Unit!47095 () Unit!47065)

(assert (=> d!819511 (= lt!1007400 Unit!47095)))

(declare-fun e!1785584 () Bool)

(assert (=> d!819511 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (take!553 (t!230550 l!6581) (- i!1730 1))) e!1785584)))

(declare-fun res!1174574 () Bool)

(assert (=> d!819511 (=> res!1174574 e!1785584)))

(declare-fun lt!1007397 () List!33235)

(assert (=> d!819511 (= res!1174574 (not ((_ is Cons!33111) lt!1007397)))))

(assert (=> d!819511 (= lt!1007397 (take!553 (t!230550 l!6581) (- i!1730 1)))))

(assert (=> d!819511 true))

(declare-fun _$83!230 () Unit!47065)

(assert (=> d!819511 (= (choose!16683 thiss!27755 (t!230550 l!6581) (- i!1730 1) rules!4424) _$83!230)))

(declare-fun b!2822327 () Bool)

(declare-fun e!1785583 () Bool)

(assert (=> b!2822327 (= e!1785584 e!1785583)))

(declare-fun res!1174573 () Bool)

(assert (=> b!2822327 (=> (not res!1174573) (not e!1785583))))

(assert (=> b!2822327 (= res!1174573 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007397)))))

(declare-fun b!2822328 () Bool)

(assert (=> b!2822328 (= e!1785583 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 lt!1007397)))))

(assert (= (and d!819511 (not res!1174574)) b!2822327))

(assert (= (and b!2822327 res!1174573) b!2822328))

(assert (=> d!819511 m!3251865))

(assert (=> d!819511 m!3252215))

(assert (=> d!819511 m!3251865))

(declare-fun m!3253157 () Bool)

(assert (=> d!819511 m!3253157))

(assert (=> d!819511 m!3251865))

(assert (=> d!819511 m!3252209))

(declare-fun m!3253159 () Bool)

(assert (=> d!819511 m!3253159))

(declare-fun m!3253161 () Bool)

(assert (=> b!2822327 m!3253161))

(declare-fun m!3253163 () Bool)

(assert (=> b!2822328 m!3253163))

(assert (=> d!819149 d!819511))

(assert (=> d!819149 d!819115))

(declare-fun d!819513 () Bool)

(declare-fun lt!1007403 () Token!9320)

(declare-fun apply!7733 (List!33235 Int) Token!9320)

(assert (=> d!819513 (= lt!1007403 (apply!7733 (list!12404 (_1!19785 lt!1007194)) 0))))

(declare-fun apply!7734 (Conc!10274 Int) Token!9320)

(assert (=> d!819513 (= lt!1007403 (apply!7734 (c!457083 (_1!19785 lt!1007194)) 0))))

(declare-fun e!1785590 () Bool)

(assert (=> d!819513 e!1785590))

(declare-fun res!1174577 () Bool)

(assert (=> d!819513 (=> (not res!1174577) (not e!1785590))))

(assert (=> d!819513 (= res!1174577 (<= 0 0))))

(assert (=> d!819513 (= (apply!7728 (_1!19785 lt!1007194) 0) lt!1007403)))

(declare-fun b!2822334 () Bool)

(assert (=> b!2822334 (= e!1785590 (< 0 (size!25773 (_1!19785 lt!1007194))))))

(assert (= (and d!819513 res!1174577) b!2822334))

(declare-fun m!3253165 () Bool)

(assert (=> d!819513 m!3253165))

(assert (=> d!819513 m!3253165))

(declare-fun m!3253167 () Bool)

(assert (=> d!819513 m!3253167))

(declare-fun m!3253169 () Bool)

(assert (=> d!819513 m!3253169))

(assert (=> b!2822334 m!3252261))

(assert (=> b!2821830 d!819513))

(declare-fun d!819515 () Bool)

(declare-fun charsToBigInt!1 (List!33232) Int)

(assert (=> d!819515 (= (inv!17 (value!159651 (h!38531 l!6581))) (= (charsToBigInt!1 (text!36771 (value!159651 (h!38531 l!6581)))) (value!159644 (value!159651 (h!38531 l!6581)))))))

(declare-fun bs!517702 () Bool)

(assert (= bs!517702 d!819515))

(declare-fun m!3253171 () Bool)

(assert (=> bs!517702 m!3253171))

(assert (=> b!2821822 d!819515))

(declare-fun d!819517 () Bool)

(declare-fun res!1174578 () Bool)

(declare-fun e!1785591 () Bool)

(assert (=> d!819517 (=> res!1174578 e!1785591)))

(assert (=> d!819517 (= res!1174578 ((_ is Nil!33111) (t!230550 l!6581)))))

(assert (=> d!819517 (= (forall!6783 (t!230550 l!6581) lambda!103606) e!1785591)))

(declare-fun b!2822335 () Bool)

(declare-fun e!1785592 () Bool)

(assert (=> b!2822335 (= e!1785591 e!1785592)))

(declare-fun res!1174579 () Bool)

(assert (=> b!2822335 (=> (not res!1174579) (not e!1785592))))

(assert (=> b!2822335 (= res!1174579 (dynLambda!13860 lambda!103606 (h!38531 (t!230550 l!6581))))))

(declare-fun b!2822336 () Bool)

(assert (=> b!2822336 (= e!1785592 (forall!6783 (t!230550 (t!230550 l!6581)) lambda!103606))))

(assert (= (and d!819517 (not res!1174578)) b!2822335))

(assert (= (and b!2822335 res!1174579) b!2822336))

(declare-fun b_lambda!84529 () Bool)

(assert (=> (not b_lambda!84529) (not b!2822335)))

(declare-fun m!3253173 () Bool)

(assert (=> b!2822335 m!3253173))

(declare-fun m!3253175 () Bool)

(assert (=> b!2822336 m!3253175))

(assert (=> d!819103 d!819517))

(assert (=> d!819103 d!819115))

(declare-fun d!819519 () Bool)

(declare-fun lt!1007405 () Bool)

(declare-fun e!1785593 () Bool)

(assert (=> d!819519 (= lt!1007405 e!1785593)))

(declare-fun res!1174581 () Bool)

(assert (=> d!819519 (=> (not res!1174581) (not e!1785593))))

(assert (=> d!819519 (= res!1174581 (= (list!12404 (_1!19785 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007047)))))) (list!12404 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(declare-fun e!1785594 () Bool)

(assert (=> d!819519 (= lt!1007405 e!1785594)))

(declare-fun res!1174582 () Bool)

(assert (=> d!819519 (=> (not res!1174582) (not e!1785594))))

(declare-fun lt!1007404 () tuple2!33384)

(assert (=> d!819519 (= res!1174582 (= (size!25773 (_1!19785 lt!1007404)) 1))))

(assert (=> d!819519 (= lt!1007404 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(assert (=> d!819519 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819519 (= (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 lt!1007047)) lt!1007405)))

(declare-fun b!2822337 () Bool)

(declare-fun res!1174580 () Bool)

(assert (=> b!2822337 (=> (not res!1174580) (not e!1785594))))

(assert (=> b!2822337 (= res!1174580 (= (apply!7728 (_1!19785 lt!1007404) 0) (h!38531 lt!1007047)))))

(declare-fun b!2822338 () Bool)

(assert (=> b!2822338 (= e!1785594 (isEmpty!18308 (_2!19785 lt!1007404)))))

(declare-fun b!2822339 () Bool)

(assert (=> b!2822339 (= e!1785593 (isEmpty!18308 (_2!19785 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007047)))))))))

(assert (= (and d!819519 res!1174582) b!2822337))

(assert (= (and b!2822337 res!1174580) b!2822338))

(assert (= (and d!819519 res!1174581) b!2822339))

(assert (=> d!819519 m!3252255))

(assert (=> d!819519 m!3251855))

(assert (=> d!819519 m!3252255))

(assert (=> d!819519 m!3252257))

(declare-fun m!3253177 () Bool)

(assert (=> d!819519 m!3253177))

(declare-fun m!3253179 () Bool)

(assert (=> d!819519 m!3253179))

(assert (=> d!819519 m!3252255))

(declare-fun m!3253181 () Bool)

(assert (=> d!819519 m!3253181))

(assert (=> d!819519 m!3253181))

(declare-fun m!3253183 () Bool)

(assert (=> d!819519 m!3253183))

(declare-fun m!3253185 () Bool)

(assert (=> b!2822337 m!3253185))

(declare-fun m!3253187 () Bool)

(assert (=> b!2822338 m!3253187))

(assert (=> b!2822339 m!3252255))

(assert (=> b!2822339 m!3252255))

(assert (=> b!2822339 m!3253181))

(assert (=> b!2822339 m!3253181))

(assert (=> b!2822339 m!3253183))

(declare-fun m!3253189 () Bool)

(assert (=> b!2822339 m!3253189))

(assert (=> bs!517506 d!819519))

(declare-fun bs!517703 () Bool)

(declare-fun d!819521 () Bool)

(assert (= bs!517703 (and d!819521 d!819311)))

(declare-fun lambda!103661 () Int)

(assert (=> bs!517703 (= (and (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (= (toValue!6977 (transformation!4959 (h!38530 rules!4424))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581)))))) (= lambda!103661 lambda!103648))))

(assert (=> d!819521 true))

(assert (=> d!819521 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13864 order!17611 lambda!103661))))

(assert (=> d!819521 true))

(assert (=> d!819521 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13864 order!17611 lambda!103661))))

(assert (=> d!819521 (= (semiInverseModEq!2052 (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (Forall!1234 lambda!103661))))

(declare-fun bs!517704 () Bool)

(assert (= bs!517704 d!819521))

(declare-fun m!3253191 () Bool)

(assert (=> bs!517704 m!3253191))

(assert (=> d!819099 d!819521))

(assert (=> b!2821670 d!819197))

(declare-fun d!819523 () Bool)

(declare-fun lt!1007406 () Bool)

(assert (=> d!819523 (= lt!1007406 (isEmpty!18307 (list!12403 (_2!19785 lt!1007204))))))

(assert (=> d!819523 (= lt!1007406 (isEmpty!18312 (c!457081 (_2!19785 lt!1007204))))))

(assert (=> d!819523 (= (isEmpty!18308 (_2!19785 lt!1007204)) lt!1007406)))

(declare-fun bs!517705 () Bool)

(assert (= bs!517705 d!819523))

(declare-fun m!3253193 () Bool)

(assert (=> bs!517705 m!3253193))

(assert (=> bs!517705 m!3253193))

(declare-fun m!3253195 () Bool)

(assert (=> bs!517705 m!3253195))

(declare-fun m!3253197 () Bool)

(assert (=> bs!517705 m!3253197))

(assert (=> b!2821841 d!819523))

(declare-fun d!819525 () Bool)

(declare-fun lt!1007408 () Bool)

(declare-fun e!1785595 () Bool)

(assert (=> d!819525 (= lt!1007408 e!1785595)))

(declare-fun res!1174584 () Bool)

(assert (=> d!819525 (=> (not res!1174584) (not e!1785595))))

(assert (=> d!819525 (= res!1174584 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 l!6581))))))) (list!12404 (singletonSeq!2133 (h!38531 (t!230550 l!6581))))))))

(declare-fun e!1785596 () Bool)

(assert (=> d!819525 (= lt!1007408 e!1785596)))

(declare-fun res!1174585 () Bool)

(assert (=> d!819525 (=> (not res!1174585) (not e!1785596))))

(declare-fun lt!1007407 () tuple2!33384)

(assert (=> d!819525 (= res!1174585 (= (size!25773 (_1!19785 lt!1007407)) 1))))

(assert (=> d!819525 (= lt!1007407 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 l!6581))))))))

(assert (=> d!819525 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819525 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581))) lt!1007408)))

(declare-fun b!2822340 () Bool)

(declare-fun res!1174583 () Bool)

(assert (=> b!2822340 (=> (not res!1174583) (not e!1785596))))

(assert (=> b!2822340 (= res!1174583 (= (apply!7728 (_1!19785 lt!1007407) 0) (h!38531 (t!230550 l!6581))))))

(declare-fun b!2822341 () Bool)

(assert (=> b!2822341 (= e!1785596 (isEmpty!18308 (_2!19785 lt!1007407)))))

(declare-fun b!2822342 () Bool)

(assert (=> b!2822342 (= e!1785595 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 l!6581))))))))))

(assert (= (and d!819525 res!1174585) b!2822340))

(assert (= (and b!2822340 res!1174583) b!2822341))

(assert (= (and d!819525 res!1174584) b!2822342))

(declare-fun m!3253199 () Bool)

(assert (=> d!819525 m!3253199))

(assert (=> d!819525 m!3251855))

(assert (=> d!819525 m!3253199))

(declare-fun m!3253201 () Bool)

(assert (=> d!819525 m!3253201))

(declare-fun m!3253203 () Bool)

(assert (=> d!819525 m!3253203))

(declare-fun m!3253205 () Bool)

(assert (=> d!819525 m!3253205))

(assert (=> d!819525 m!3253199))

(declare-fun m!3253207 () Bool)

(assert (=> d!819525 m!3253207))

(assert (=> d!819525 m!3253207))

(declare-fun m!3253209 () Bool)

(assert (=> d!819525 m!3253209))

(declare-fun m!3253211 () Bool)

(assert (=> b!2822340 m!3253211))

(declare-fun m!3253213 () Bool)

(assert (=> b!2822341 m!3253213))

(assert (=> b!2822342 m!3253199))

(assert (=> b!2822342 m!3253199))

(assert (=> b!2822342 m!3253207))

(assert (=> b!2822342 m!3253207))

(assert (=> b!2822342 m!3253209))

(declare-fun m!3253215 () Bool)

(assert (=> b!2822342 m!3253215))

(assert (=> b!2821550 d!819525))

(assert (=> b!2821681 d!819299))

(declare-fun d!819527 () Bool)

(declare-fun lt!1007410 () Bool)

(declare-fun e!1785597 () Bool)

(assert (=> d!819527 (= lt!1007410 e!1785597)))

(declare-fun res!1174587 () Bool)

(assert (=> d!819527 (=> (not res!1174587) (not e!1785597))))

(assert (=> d!819527 (= res!1174587 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007177)))))) (list!12404 (singletonSeq!2133 (h!38531 lt!1007177)))))))

(declare-fun e!1785598 () Bool)

(assert (=> d!819527 (= lt!1007410 e!1785598)))

(declare-fun res!1174588 () Bool)

(assert (=> d!819527 (=> (not res!1174588) (not e!1785598))))

(declare-fun lt!1007409 () tuple2!33384)

(assert (=> d!819527 (= res!1174588 (= (size!25773 (_1!19785 lt!1007409)) 1))))

(assert (=> d!819527 (= lt!1007409 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007177)))))))

(assert (=> d!819527 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819527 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007177)) lt!1007410)))

(declare-fun b!2822343 () Bool)

(declare-fun res!1174586 () Bool)

(assert (=> b!2822343 (=> (not res!1174586) (not e!1785598))))

(assert (=> b!2822343 (= res!1174586 (= (apply!7728 (_1!19785 lt!1007409) 0) (h!38531 lt!1007177)))))

(declare-fun b!2822344 () Bool)

(assert (=> b!2822344 (= e!1785598 (isEmpty!18308 (_2!19785 lt!1007409)))))

(declare-fun b!2822345 () Bool)

(assert (=> b!2822345 (= e!1785597 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007177)))))))))

(assert (= (and d!819527 res!1174588) b!2822343))

(assert (= (and b!2822343 res!1174586) b!2822344))

(assert (= (and d!819527 res!1174587) b!2822345))

(declare-fun m!3253217 () Bool)

(assert (=> d!819527 m!3253217))

(assert (=> d!819527 m!3251855))

(assert (=> d!819527 m!3253217))

(declare-fun m!3253219 () Bool)

(assert (=> d!819527 m!3253219))

(declare-fun m!3253221 () Bool)

(assert (=> d!819527 m!3253221))

(declare-fun m!3253223 () Bool)

(assert (=> d!819527 m!3253223))

(assert (=> d!819527 m!3253217))

(declare-fun m!3253225 () Bool)

(assert (=> d!819527 m!3253225))

(assert (=> d!819527 m!3253225))

(declare-fun m!3253227 () Bool)

(assert (=> d!819527 m!3253227))

(declare-fun m!3253229 () Bool)

(assert (=> b!2822343 m!3253229))

(declare-fun m!3253231 () Bool)

(assert (=> b!2822344 m!3253231))

(assert (=> b!2822345 m!3253217))

(assert (=> b!2822345 m!3253217))

(assert (=> b!2822345 m!3253225))

(assert (=> b!2822345 m!3253225))

(assert (=> b!2822345 m!3253227))

(declare-fun m!3253233 () Bool)

(assert (=> b!2822345 m!3253233))

(assert (=> b!2821795 d!819527))

(declare-fun d!819529 () Bool)

(declare-fun lt!1007411 () BalanceConc!20184)

(assert (=> d!819529 (= (list!12403 lt!1007411) (originalCharacters!5691 (h!38531 (t!230550 l!6581))))))

(assert (=> d!819529 (= lt!1007411 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (value!159651 (h!38531 (t!230550 l!6581)))))))

(assert (=> d!819529 (= (charsOf!3068 (h!38531 (t!230550 l!6581))) lt!1007411)))

(declare-fun b_lambda!84531 () Bool)

(assert (=> (not b_lambda!84531) (not d!819529)))

(assert (=> d!819529 t!230642))

(declare-fun b_and!206207 () Bool)

(assert (= b_and!206199 (and (=> t!230642 result!191592) b_and!206207)))

(assert (=> d!819529 t!230644))

(declare-fun b_and!206209 () Bool)

(assert (= b_and!206201 (and (=> t!230644 result!191594) b_and!206209)))

(assert (=> d!819529 t!230646))

(declare-fun b_and!206211 () Bool)

(assert (= b_and!206203 (and (=> t!230646 result!191596) b_and!206211)))

(assert (=> d!819529 t!230648))

(declare-fun b_and!206213 () Bool)

(assert (= b_and!206205 (and (=> t!230648 result!191598) b_and!206213)))

(declare-fun m!3253235 () Bool)

(assert (=> d!819529 m!3253235))

(assert (=> d!819529 m!3253091))

(assert (=> b!2821833 d!819529))

(declare-fun d!819531 () Bool)

(assert (=> d!819531 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581))))

(declare-fun lt!1007412 () Unit!47065)

(assert (=> d!819531 (= lt!1007412 (choose!16685 thiss!27755 rules!4424 l!6581 (h!38531 l!6581)))))

(assert (=> d!819531 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819531 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 l!6581 (h!38531 l!6581)) lt!1007412)))

(declare-fun bs!517706 () Bool)

(assert (= bs!517706 d!819531))

(assert (=> bs!517706 m!3252275))

(declare-fun m!3253237 () Bool)

(assert (=> bs!517706 m!3253237))

(assert (=> bs!517706 m!3251855))

(assert (=> b!2821833 d!819531))

(declare-fun d!819533 () Bool)

(assert (=> d!819533 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(declare-fun lt!1007413 () Unit!47065)

(assert (=> d!819533 (= lt!1007413 (choose!16685 thiss!27755 rules!4424 l!6581 (h!38531 (t!230550 l!6581))))))

(assert (=> d!819533 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819533 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 l!6581 (h!38531 (t!230550 l!6581))) lt!1007413)))

(declare-fun bs!517707 () Bool)

(assert (= bs!517707 d!819533))

(assert (=> bs!517707 m!3251951))

(declare-fun m!3253239 () Bool)

(assert (=> bs!517707 m!3253239))

(assert (=> bs!517707 m!3251855))

(assert (=> b!2821833 d!819533))

(declare-fun d!819535 () Bool)

(declare-fun lt!1007414 () Int)

(assert (=> d!819535 (= lt!1007414 (size!25771 (list!12403 (charsOf!3068 (h!38531 (t!230550 l!6581))))))))

(assert (=> d!819535 (= lt!1007414 (size!25777 (c!457081 (charsOf!3068 (h!38531 (t!230550 l!6581))))))))

(assert (=> d!819535 (= (size!25770 (charsOf!3068 (h!38531 (t!230550 l!6581)))) lt!1007414)))

(declare-fun bs!517708 () Bool)

(assert (= bs!517708 d!819535))

(assert (=> bs!517708 m!3252281))

(declare-fun m!3253241 () Bool)

(assert (=> bs!517708 m!3253241))

(assert (=> bs!517708 m!3253241))

(declare-fun m!3253243 () Bool)

(assert (=> bs!517708 m!3253243))

(declare-fun m!3253245 () Bool)

(assert (=> bs!517708 m!3253245))

(assert (=> b!2821833 d!819535))

(assert (=> b!2821833 d!819525))

(declare-fun d!819537 () Bool)

(declare-fun lt!1007416 () Bool)

(declare-fun e!1785599 () Bool)

(assert (=> d!819537 (= lt!1007416 e!1785599)))

(declare-fun res!1174590 () Bool)

(assert (=> d!819537 (=> (not res!1174590) (not e!1785599))))

(assert (=> d!819537 (= res!1174590 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 l!6581)))))) (list!12404 (singletonSeq!2133 (h!38531 l!6581)))))))

(declare-fun e!1785600 () Bool)

(assert (=> d!819537 (= lt!1007416 e!1785600)))

(declare-fun res!1174591 () Bool)

(assert (=> d!819537 (=> (not res!1174591) (not e!1785600))))

(declare-fun lt!1007415 () tuple2!33384)

(assert (=> d!819537 (= res!1174591 (= (size!25773 (_1!19785 lt!1007415)) 1))))

(assert (=> d!819537 (= lt!1007415 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 l!6581)))))))

(assert (=> d!819537 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819537 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581)) lt!1007416)))

(declare-fun b!2822346 () Bool)

(declare-fun res!1174589 () Bool)

(assert (=> b!2822346 (=> (not res!1174589) (not e!1785600))))

(assert (=> b!2822346 (= res!1174589 (= (apply!7728 (_1!19785 lt!1007415) 0) (h!38531 l!6581)))))

(declare-fun b!2822347 () Bool)

(assert (=> b!2822347 (= e!1785600 (isEmpty!18308 (_2!19785 lt!1007415)))))

(declare-fun b!2822348 () Bool)

(assert (=> b!2822348 (= e!1785599 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 l!6581)))))))))

(assert (= (and d!819537 res!1174591) b!2822346))

(assert (= (and b!2822346 res!1174589) b!2822347))

(assert (= (and d!819537 res!1174590) b!2822348))

(declare-fun m!3253247 () Bool)

(assert (=> d!819537 m!3253247))

(assert (=> d!819537 m!3251855))

(assert (=> d!819537 m!3253247))

(declare-fun m!3253249 () Bool)

(assert (=> d!819537 m!3253249))

(declare-fun m!3253251 () Bool)

(assert (=> d!819537 m!3253251))

(declare-fun m!3253253 () Bool)

(assert (=> d!819537 m!3253253))

(assert (=> d!819537 m!3253247))

(declare-fun m!3253255 () Bool)

(assert (=> d!819537 m!3253255))

(assert (=> d!819537 m!3253255))

(declare-fun m!3253257 () Bool)

(assert (=> d!819537 m!3253257))

(declare-fun m!3253259 () Bool)

(assert (=> b!2822346 m!3253259))

(declare-fun m!3253261 () Bool)

(assert (=> b!2822347 m!3253261))

(assert (=> b!2822348 m!3253247))

(assert (=> b!2822348 m!3253247))

(assert (=> b!2822348 m!3253255))

(assert (=> b!2822348 m!3253255))

(assert (=> b!2822348 m!3253257))

(declare-fun m!3253263 () Bool)

(assert (=> b!2822348 m!3253263))

(assert (=> b!2821833 d!819537))

(declare-fun d!819539 () Bool)

(assert (=> d!819539 (= (separableTokensPredicate!893 thiss!27755 (h!38531 l!6581) (h!38531 (t!230550 l!6581)) rules!4424) (not (prefixMatchZipperSequence!736 (rulesRegex!992 thiss!27755 rules!4424) (++!8094 (charsOf!3068 (h!38531 l!6581)) (singletonSeq!2135 (apply!7732 (charsOf!3068 (h!38531 (t!230550 l!6581))) 0))))))))

(declare-fun bs!517709 () Bool)

(assert (= bs!517709 d!819539))

(assert (=> bs!517709 m!3252281))

(declare-fun m!3253265 () Bool)

(assert (=> bs!517709 m!3253265))

(declare-fun m!3253267 () Bool)

(assert (=> bs!517709 m!3253267))

(declare-fun m!3253269 () Bool)

(assert (=> bs!517709 m!3253269))

(assert (=> bs!517709 m!3253079))

(assert (=> bs!517709 m!3253269))

(declare-fun m!3253271 () Bool)

(assert (=> bs!517709 m!3253271))

(assert (=> bs!517709 m!3253079))

(assert (=> bs!517709 m!3252281))

(declare-fun m!3253273 () Bool)

(assert (=> bs!517709 m!3253273))

(assert (=> bs!517709 m!3253273))

(assert (=> bs!517709 m!3253267))

(assert (=> bs!517709 m!3253265))

(assert (=> b!2821833 d!819539))

(assert (=> b!2821835 d!819537))

(declare-fun d!819541 () Bool)

(assert (=> d!819541 (forall!6783 lt!1007179 lambda!103624)))

(declare-fun lt!1007417 () Unit!47065)

(assert (=> d!819541 (= lt!1007417 (choose!16682 lt!1007179 (t!230550 l!6581) lambda!103624))))

(assert (=> d!819541 (forall!6783 (t!230550 l!6581) lambda!103624)))

(assert (=> d!819541 (= (lemmaForallSubseq!227 lt!1007179 (t!230550 l!6581) lambda!103624) lt!1007417)))

(declare-fun bs!517710 () Bool)

(assert (= bs!517710 d!819541))

(assert (=> bs!517710 m!3252219))

(declare-fun m!3253275 () Bool)

(assert (=> bs!517710 m!3253275))

(assert (=> bs!517710 m!3252217))

(assert (=> b!2821797 d!819541))

(declare-fun d!819543 () Bool)

(declare-fun res!1174593 () Bool)

(declare-fun e!1785602 () Bool)

(assert (=> d!819543 (=> res!1174593 e!1785602)))

(assert (=> d!819543 (= res!1174593 (or (not ((_ is Cons!33111) (take!553 (t!230550 l!6581) (- i!1730 1)))) (not ((_ is Cons!33111) (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))))))))

(assert (=> d!819543 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (take!553 (t!230550 l!6581) (- i!1730 1)) rules!4424) e!1785602)))

(declare-fun b!2822349 () Bool)

(declare-fun e!1785601 () Bool)

(assert (=> b!2822349 (= e!1785602 e!1785601)))

(declare-fun res!1174592 () Bool)

(assert (=> b!2822349 (=> (not res!1174592) (not e!1785601))))

(assert (=> b!2822349 (= res!1174592 (separableTokensPredicate!893 thiss!27755 (h!38531 (take!553 (t!230550 l!6581) (- i!1730 1))) (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))) rules!4424))))

(declare-fun lt!1007420 () Unit!47065)

(declare-fun Unit!47102 () Unit!47065)

(assert (=> b!2822349 (= lt!1007420 Unit!47102)))

(assert (=> b!2822349 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))))) 0)))

(declare-fun lt!1007418 () Unit!47065)

(declare-fun Unit!47103 () Unit!47065)

(assert (=> b!2822349 (= lt!1007418 Unit!47103)))

(assert (=> b!2822349 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(declare-fun lt!1007419 () Unit!47065)

(declare-fun Unit!47104 () Unit!47065)

(assert (=> b!2822349 (= lt!1007419 Unit!47104)))

(assert (=> b!2822349 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (take!553 (t!230550 l!6581) (- i!1730 1))))))

(declare-fun lt!1007422 () Unit!47065)

(declare-fun lt!1007424 () Unit!47065)

(assert (=> b!2822349 (= lt!1007422 lt!1007424)))

(assert (=> b!2822349 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(assert (=> b!2822349 (= lt!1007424 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (take!553 (t!230550 l!6581) (- i!1730 1)) (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1))))))))

(declare-fun lt!1007421 () Unit!47065)

(declare-fun lt!1007423 () Unit!47065)

(assert (=> b!2822349 (= lt!1007421 lt!1007423)))

(assert (=> b!2822349 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (take!553 (t!230550 l!6581) (- i!1730 1))))))

(assert (=> b!2822349 (= lt!1007423 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (take!553 (t!230550 l!6581) (- i!1730 1)) (h!38531 (take!553 (t!230550 l!6581) (- i!1730 1)))))))

(declare-fun b!2822350 () Bool)

(assert (=> b!2822350 (= e!1785601 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1)))) (t!230550 (t!230550 (take!553 (t!230550 l!6581) (- i!1730 1))))) rules!4424))))

(assert (= (and d!819543 (not res!1174593)) b!2822349))

(assert (= (and b!2822349 res!1174592) b!2822350))

(assert (=> b!2822349 m!3251865))

(declare-fun m!3253277 () Bool)

(assert (=> b!2822349 m!3253277))

(assert (=> b!2822349 m!3253153))

(declare-fun m!3253279 () Bool)

(assert (=> b!2822349 m!3253279))

(assert (=> b!2822349 m!3251865))

(declare-fun m!3253281 () Bool)

(assert (=> b!2822349 m!3253281))

(declare-fun m!3253283 () Bool)

(assert (=> b!2822349 m!3253283))

(declare-fun m!3253285 () Bool)

(assert (=> b!2822349 m!3253285))

(declare-fun m!3253287 () Bool)

(assert (=> b!2822349 m!3253287))

(assert (=> b!2822349 m!3253283))

(declare-fun m!3253289 () Bool)

(assert (=> b!2822350 m!3253289))

(assert (=> b!2821797 d!819543))

(assert (=> b!2821797 d!819147))

(declare-fun d!819545 () Bool)

(declare-fun res!1174594 () Bool)

(declare-fun e!1785603 () Bool)

(assert (=> d!819545 (=> res!1174594 e!1785603)))

(assert (=> d!819545 (= res!1174594 ((_ is Nil!33111) (t!230550 l!6581)))))

(assert (=> d!819545 (= (forall!6783 (t!230550 l!6581) lambda!103624) e!1785603)))

(declare-fun b!2822351 () Bool)

(declare-fun e!1785604 () Bool)

(assert (=> b!2822351 (= e!1785603 e!1785604)))

(declare-fun res!1174595 () Bool)

(assert (=> b!2822351 (=> (not res!1174595) (not e!1785604))))

(assert (=> b!2822351 (= res!1174595 (dynLambda!13860 lambda!103624 (h!38531 (t!230550 l!6581))))))

(declare-fun b!2822352 () Bool)

(assert (=> b!2822352 (= e!1785604 (forall!6783 (t!230550 (t!230550 l!6581)) lambda!103624))))

(assert (= (and d!819545 (not res!1174594)) b!2822351))

(assert (= (and b!2822351 res!1174595) b!2822352))

(declare-fun b_lambda!84533 () Bool)

(assert (=> (not b_lambda!84533) (not b!2822351)))

(declare-fun m!3253291 () Bool)

(assert (=> b!2822351 m!3253291))

(declare-fun m!3253293 () Bool)

(assert (=> b!2822352 m!3253293))

(assert (=> b!2821797 d!819545))

(declare-fun d!819547 () Bool)

(declare-fun res!1174596 () Bool)

(declare-fun e!1785605 () Bool)

(assert (=> d!819547 (=> res!1174596 e!1785605)))

(assert (=> d!819547 (= res!1174596 ((_ is Nil!33111) lt!1007179))))

(assert (=> d!819547 (= (forall!6783 lt!1007179 lambda!103624) e!1785605)))

(declare-fun b!2822353 () Bool)

(declare-fun e!1785606 () Bool)

(assert (=> b!2822353 (= e!1785605 e!1785606)))

(declare-fun res!1174597 () Bool)

(assert (=> b!2822353 (=> (not res!1174597) (not e!1785606))))

(assert (=> b!2822353 (= res!1174597 (dynLambda!13860 lambda!103624 (h!38531 lt!1007179)))))

(declare-fun b!2822354 () Bool)

(assert (=> b!2822354 (= e!1785606 (forall!6783 (t!230550 lt!1007179) lambda!103624))))

(assert (= (and d!819547 (not res!1174596)) b!2822353))

(assert (= (and b!2822353 res!1174597) b!2822354))

(declare-fun b_lambda!84535 () Bool)

(assert (=> (not b_lambda!84535) (not b!2822353)))

(declare-fun m!3253295 () Bool)

(assert (=> b!2822353 m!3253295))

(declare-fun m!3253297 () Bool)

(assert (=> b!2822354 m!3253297))

(assert (=> b!2821797 d!819547))

(declare-fun bs!517711 () Bool)

(declare-fun d!819549 () Bool)

(assert (= bs!517711 (and d!819549 d!819309)))

(declare-fun lambda!103662 () Int)

(assert (=> bs!517711 (= (= (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (= lambda!103662 lambda!103645))))

(assert (=> d!819549 true))

(assert (=> d!819549 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (dynLambda!13863 order!17609 lambda!103662))))

(assert (=> d!819549 (= (equivClasses!1951 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toValue!6977 (transformation!4959 (rule!7387 (h!38531 l!6581))))) (Forall2!831 lambda!103662))))

(declare-fun bs!517712 () Bool)

(assert (= bs!517712 d!819549))

(declare-fun m!3253299 () Bool)

(assert (=> bs!517712 m!3253299))

(assert (=> b!2821570 d!819549))

(assert (=> d!819137 d!819181))

(declare-fun d!819551 () Bool)

(assert (=> d!819551 (forall!6783 lt!1007051 lambda!103593)))

(assert (=> d!819551 true))

(declare-fun _$37!361 () Unit!47065)

(assert (=> d!819551 (= (choose!16682 lt!1007051 l!6581 lambda!103593) _$37!361)))

(declare-fun bs!517713 () Bool)

(assert (= bs!517713 d!819551))

(assert (=> bs!517713 m!3251869))

(assert (=> d!819137 d!819551))

(declare-fun d!819553 () Bool)

(declare-fun res!1174598 () Bool)

(declare-fun e!1785607 () Bool)

(assert (=> d!819553 (=> res!1174598 e!1785607)))

(assert (=> d!819553 (= res!1174598 ((_ is Nil!33111) l!6581))))

(assert (=> d!819553 (= (forall!6783 l!6581 lambda!103593) e!1785607)))

(declare-fun b!2822355 () Bool)

(declare-fun e!1785608 () Bool)

(assert (=> b!2822355 (= e!1785607 e!1785608)))

(declare-fun res!1174599 () Bool)

(assert (=> b!2822355 (=> (not res!1174599) (not e!1785608))))

(assert (=> b!2822355 (= res!1174599 (dynLambda!13860 lambda!103593 (h!38531 l!6581)))))

(declare-fun b!2822356 () Bool)

(assert (=> b!2822356 (= e!1785608 (forall!6783 (t!230550 l!6581) lambda!103593))))

(assert (= (and d!819553 (not res!1174598)) b!2822355))

(assert (= (and b!2822355 res!1174599) b!2822356))

(declare-fun b_lambda!84537 () Bool)

(assert (=> (not b_lambda!84537) (not b!2822355)))

(declare-fun m!3253301 () Bool)

(assert (=> b!2822355 m!3253301))

(assert (=> b!2822356 m!3252229))

(assert (=> d!819137 d!819553))

(assert (=> b!2821638 d!819191))

(declare-fun d!819555 () Bool)

(declare-fun lt!1007425 () Int)

(assert (=> d!819555 (>= lt!1007425 0)))

(declare-fun e!1785609 () Int)

(assert (=> d!819555 (= lt!1007425 e!1785609)))

(declare-fun c!457169 () Bool)

(assert (=> d!819555 (= c!457169 ((_ is Nil!33111) lt!1007132))))

(assert (=> d!819555 (= (size!25772 lt!1007132) lt!1007425)))

(declare-fun b!2822357 () Bool)

(assert (=> b!2822357 (= e!1785609 0)))

(declare-fun b!2822358 () Bool)

(assert (=> b!2822358 (= e!1785609 (+ 1 (size!25772 (t!230550 lt!1007132))))))

(assert (= (and d!819555 c!457169) b!2822357))

(assert (= (and d!819555 (not c!457169)) b!2822358))

(declare-fun m!3253303 () Bool)

(assert (=> b!2822358 m!3253303))

(assert (=> b!2821679 d!819555))

(assert (=> b!2821663 d!819325))

(declare-fun d!819557 () Bool)

(declare-fun charsToBigInt!0 (List!33232 Int) Int)

(assert (=> d!819557 (= (inv!15 (value!159651 (h!38531 l!6581))) (= (charsToBigInt!0 (text!36772 (value!159651 (h!38531 l!6581))) 0) (value!159647 (value!159651 (h!38531 l!6581)))))))

(declare-fun bs!517714 () Bool)

(assert (= bs!517714 d!819557))

(declare-fun m!3253305 () Bool)

(assert (=> bs!517714 m!3253305))

(assert (=> b!2821820 d!819557))

(declare-fun d!819559 () Bool)

(assert (=> d!819559 (= (isEmpty!18307 (originalCharacters!5691 (h!38531 l!6581))) ((_ is Nil!33109) (originalCharacters!5691 (h!38531 l!6581))))))

(assert (=> d!819113 d!819559))

(declare-fun d!819561 () Bool)

(assert (=> d!819561 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 l!6581))))))

(declare-fun lt!1007426 () Unit!47065)

(assert (=> d!819561 (= lt!1007426 (choose!16685 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 (t!230550 l!6581)))))))

(assert (=> d!819561 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819561 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 (t!230550 l!6581)))) lt!1007426)))

(declare-fun bs!517715 () Bool)

(assert (= bs!517715 d!819561))

(assert (=> bs!517715 m!3252241))

(declare-fun m!3253307 () Bool)

(assert (=> bs!517715 m!3253307))

(assert (=> bs!517715 m!3251855))

(assert (=> b!2821804 d!819561))

(declare-fun d!819563 () Bool)

(declare-fun lt!1007428 () Bool)

(declare-fun e!1785610 () Bool)

(assert (=> d!819563 (= lt!1007428 e!1785610)))

(declare-fun res!1174601 () Bool)

(assert (=> d!819563 (=> (not res!1174601) (not e!1785610))))

(assert (=> d!819563 (= res!1174601 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 (t!230550 l!6581)))))))) (list!12404 (singletonSeq!2133 (h!38531 (t!230550 (t!230550 l!6581)))))))))

(declare-fun e!1785611 () Bool)

(assert (=> d!819563 (= lt!1007428 e!1785611)))

(declare-fun res!1174602 () Bool)

(assert (=> d!819563 (=> (not res!1174602) (not e!1785611))))

(declare-fun lt!1007427 () tuple2!33384)

(assert (=> d!819563 (= res!1174602 (= (size!25773 (_1!19785 lt!1007427)) 1))))

(assert (=> d!819563 (= lt!1007427 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 (t!230550 l!6581)))))))))

(assert (=> d!819563 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819563 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 l!6581)))) lt!1007428)))

(declare-fun b!2822359 () Bool)

(declare-fun res!1174600 () Bool)

(assert (=> b!2822359 (=> (not res!1174600) (not e!1785611))))

(assert (=> b!2822359 (= res!1174600 (= (apply!7728 (_1!19785 lt!1007427) 0) (h!38531 (t!230550 (t!230550 l!6581)))))))

(declare-fun b!2822360 () Bool)

(assert (=> b!2822360 (= e!1785611 (isEmpty!18308 (_2!19785 lt!1007427)))))

(declare-fun b!2822361 () Bool)

(assert (=> b!2822361 (= e!1785610 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 (t!230550 l!6581)))))))))))

(assert (= (and d!819563 res!1174602) b!2822359))

(assert (= (and b!2822359 res!1174600) b!2822360))

(assert (= (and d!819563 res!1174601) b!2822361))

(declare-fun m!3253309 () Bool)

(assert (=> d!819563 m!3253309))

(assert (=> d!819563 m!3251855))

(assert (=> d!819563 m!3253309))

(declare-fun m!3253311 () Bool)

(assert (=> d!819563 m!3253311))

(declare-fun m!3253313 () Bool)

(assert (=> d!819563 m!3253313))

(declare-fun m!3253315 () Bool)

(assert (=> d!819563 m!3253315))

(assert (=> d!819563 m!3253309))

(declare-fun m!3253317 () Bool)

(assert (=> d!819563 m!3253317))

(assert (=> d!819563 m!3253317))

(declare-fun m!3253319 () Bool)

(assert (=> d!819563 m!3253319))

(declare-fun m!3253321 () Bool)

(assert (=> b!2822359 m!3253321))

(declare-fun m!3253323 () Bool)

(assert (=> b!2822360 m!3253323))

(assert (=> b!2822361 m!3253309))

(assert (=> b!2822361 m!3253309))

(assert (=> b!2822361 m!3253317))

(assert (=> b!2822361 m!3253317))

(assert (=> b!2822361 m!3253319))

(declare-fun m!3253325 () Bool)

(assert (=> b!2822361 m!3253325))

(assert (=> b!2821804 d!819563))

(declare-fun d!819565 () Bool)

(assert (=> d!819565 (= (separableTokensPredicate!893 thiss!27755 (h!38531 (t!230550 l!6581)) (h!38531 (t!230550 (t!230550 l!6581))) rules!4424) (not (prefixMatchZipperSequence!736 (rulesRegex!992 thiss!27755 rules!4424) (++!8094 (charsOf!3068 (h!38531 (t!230550 l!6581))) (singletonSeq!2135 (apply!7732 (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581)))) 0))))))))

(declare-fun bs!517716 () Bool)

(assert (= bs!517716 d!819565))

(assert (=> bs!517716 m!3252237))

(assert (=> bs!517716 m!3252281))

(declare-fun m!3253327 () Bool)

(assert (=> bs!517716 m!3253327))

(declare-fun m!3253329 () Bool)

(assert (=> bs!517716 m!3253329))

(assert (=> bs!517716 m!3253079))

(assert (=> bs!517716 m!3253329))

(declare-fun m!3253331 () Bool)

(assert (=> bs!517716 m!3253331))

(assert (=> bs!517716 m!3253079))

(assert (=> bs!517716 m!3252237))

(declare-fun m!3253333 () Bool)

(assert (=> bs!517716 m!3253333))

(assert (=> bs!517716 m!3253333))

(assert (=> bs!517716 m!3253327))

(assert (=> bs!517716 m!3252281))

(assert (=> b!2821804 d!819565))

(assert (=> b!2821804 d!819525))

(declare-fun d!819567 () Bool)

(declare-fun lt!1007429 () Int)

(assert (=> d!819567 (= lt!1007429 (size!25771 (list!12403 (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581)))))))))

(assert (=> d!819567 (= lt!1007429 (size!25777 (c!457081 (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581)))))))))

(assert (=> d!819567 (= (size!25770 (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581))))) lt!1007429)))

(declare-fun bs!517717 () Bool)

(assert (= bs!517717 d!819567))

(assert (=> bs!517717 m!3252237))

(declare-fun m!3253335 () Bool)

(assert (=> bs!517717 m!3253335))

(assert (=> bs!517717 m!3253335))

(declare-fun m!3253337 () Bool)

(assert (=> bs!517717 m!3253337))

(declare-fun m!3253339 () Bool)

(assert (=> bs!517717 m!3253339))

(assert (=> b!2821804 d!819567))

(declare-fun d!819569 () Bool)

(declare-fun lt!1007430 () BalanceConc!20184)

(assert (=> d!819569 (= (list!12403 lt!1007430) (originalCharacters!5691 (h!38531 (t!230550 (t!230550 l!6581)))))))

(assert (=> d!819569 (= lt!1007430 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (value!159651 (h!38531 (t!230550 (t!230550 l!6581))))))))

(assert (=> d!819569 (= (charsOf!3068 (h!38531 (t!230550 (t!230550 l!6581)))) lt!1007430)))

(declare-fun b_lambda!84539 () Bool)

(assert (=> (not b_lambda!84539) (not d!819569)))

(declare-fun t!230652 () Bool)

(declare-fun tb!153885 () Bool)

(assert (=> (and b!2821472 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230652) tb!153885))

(declare-fun b!2822362 () Bool)

(declare-fun e!1785612 () Bool)

(declare-fun tp!901286 () Bool)

(assert (=> b!2822362 (= e!1785612 (and (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (value!159651 (h!38531 (t!230550 (t!230550 l!6581))))))) tp!901286))))

(declare-fun result!191600 () Bool)

(assert (=> tb!153885 (= result!191600 (and (inv!45035 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (value!159651 (h!38531 (t!230550 (t!230550 l!6581)))))) e!1785612))))

(assert (= tb!153885 b!2822362))

(declare-fun m!3253341 () Bool)

(assert (=> b!2822362 m!3253341))

(declare-fun m!3253343 () Bool)

(assert (=> tb!153885 m!3253343))

(assert (=> d!819569 t!230652))

(declare-fun b_and!206215 () Bool)

(assert (= b_and!206207 (and (=> t!230652 result!191600) b_and!206215)))

(declare-fun t!230654 () Bool)

(declare-fun tb!153887 () Bool)

(assert (=> (and b!2821481 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230654) tb!153887))

(declare-fun result!191602 () Bool)

(assert (= result!191602 result!191600))

(assert (=> d!819569 t!230654))

(declare-fun b_and!206217 () Bool)

(assert (= b_and!206209 (and (=> t!230654 result!191602) b_and!206217)))

(declare-fun t!230656 () Bool)

(declare-fun tb!153889 () Bool)

(assert (=> (and b!2821877 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230656) tb!153889))

(declare-fun result!191604 () Bool)

(assert (= result!191604 result!191600))

(assert (=> d!819569 t!230656))

(declare-fun b_and!206219 () Bool)

(assert (= b_and!206211 (and (=> t!230656 result!191604) b_and!206219)))

(declare-fun tb!153891 () Bool)

(declare-fun t!230658 () Bool)

(assert (=> (and b!2821888 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230658) tb!153891))

(declare-fun result!191606 () Bool)

(assert (= result!191606 result!191600))

(assert (=> d!819569 t!230658))

(declare-fun b_and!206221 () Bool)

(assert (= b_and!206213 (and (=> t!230658 result!191606) b_and!206221)))

(declare-fun m!3253345 () Bool)

(assert (=> d!819569 m!3253345))

(declare-fun m!3253347 () Bool)

(assert (=> d!819569 m!3253347))

(assert (=> b!2821804 d!819569))

(declare-fun d!819571 () Bool)

(assert (=> d!819571 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581)))))

(declare-fun lt!1007431 () Unit!47065)

(assert (=> d!819571 (= lt!1007431 (choose!16685 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 l!6581))))))

(assert (=> d!819571 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819571 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (t!230550 l!6581) (h!38531 (t!230550 l!6581))) lt!1007431)))

(declare-fun bs!517718 () Bool)

(assert (= bs!517718 d!819571))

(assert (=> bs!517718 m!3251951))

(declare-fun m!3253349 () Bool)

(assert (=> bs!517718 m!3253349))

(assert (=> bs!517718 m!3251855))

(assert (=> b!2821804 d!819571))

(declare-fun d!819573 () Bool)

(declare-fun res!1174603 () Bool)

(declare-fun e!1785613 () Bool)

(assert (=> d!819573 (=> res!1174603 e!1785613)))

(assert (=> d!819573 (= res!1174603 ((_ is Nil!33111) lt!1007051))))

(assert (=> d!819573 (= (forall!6783 lt!1007051 lambda!103615) e!1785613)))

(declare-fun b!2822363 () Bool)

(declare-fun e!1785614 () Bool)

(assert (=> b!2822363 (= e!1785613 e!1785614)))

(declare-fun res!1174604 () Bool)

(assert (=> b!2822363 (=> (not res!1174604) (not e!1785614))))

(assert (=> b!2822363 (= res!1174604 (dynLambda!13860 lambda!103615 (h!38531 lt!1007051)))))

(declare-fun b!2822364 () Bool)

(assert (=> b!2822364 (= e!1785614 (forall!6783 (t!230550 lt!1007051) lambda!103615))))

(assert (= (and d!819573 (not res!1174603)) b!2822363))

(assert (= (and b!2822363 res!1174604) b!2822364))

(declare-fun b_lambda!84541 () Bool)

(assert (=> (not b_lambda!84541) (not b!2822363)))

(declare-fun m!3253351 () Bool)

(assert (=> b!2822363 m!3253351))

(declare-fun m!3253353 () Bool)

(assert (=> b!2822364 m!3253353))

(assert (=> d!819145 d!819573))

(assert (=> d!819145 d!819115))

(declare-fun d!819575 () Bool)

(declare-fun list!12408 (Conc!10273) List!33233)

(assert (=> d!819575 (= (list!12403 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))) (list!12408 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(declare-fun bs!517719 () Bool)

(assert (= bs!517719 d!819575))

(declare-fun m!3253355 () Bool)

(assert (=> bs!517719 m!3253355))

(assert (=> b!2821575 d!819575))

(declare-fun d!819577 () Bool)

(declare-fun c!457170 () Bool)

(assert (=> d!819577 (= c!457170 ((_ is IntegerValue!15567) (value!159651 (h!38531 (t!230550 l!6581)))))))

(declare-fun e!1785616 () Bool)

(assert (=> d!819577 (= (inv!21 (value!159651 (h!38531 (t!230550 l!6581)))) e!1785616)))

(declare-fun b!2822365 () Bool)

(assert (=> b!2822365 (= e!1785616 (inv!16 (value!159651 (h!38531 (t!230550 l!6581)))))))

(declare-fun b!2822366 () Bool)

(declare-fun e!1785615 () Bool)

(assert (=> b!2822366 (= e!1785615 (inv!15 (value!159651 (h!38531 (t!230550 l!6581)))))))

(declare-fun b!2822367 () Bool)

(declare-fun res!1174605 () Bool)

(assert (=> b!2822367 (=> res!1174605 e!1785615)))

(assert (=> b!2822367 (= res!1174605 (not ((_ is IntegerValue!15569) (value!159651 (h!38531 (t!230550 l!6581))))))))

(declare-fun e!1785617 () Bool)

(assert (=> b!2822367 (= e!1785617 e!1785615)))

(declare-fun b!2822368 () Bool)

(assert (=> b!2822368 (= e!1785617 (inv!17 (value!159651 (h!38531 (t!230550 l!6581)))))))

(declare-fun b!2822369 () Bool)

(assert (=> b!2822369 (= e!1785616 e!1785617)))

(declare-fun c!457171 () Bool)

(assert (=> b!2822369 (= c!457171 ((_ is IntegerValue!15568) (value!159651 (h!38531 (t!230550 l!6581)))))))

(assert (= (and d!819577 c!457170) b!2822365))

(assert (= (and d!819577 (not c!457170)) b!2822369))

(assert (= (and b!2822369 c!457171) b!2822368))

(assert (= (and b!2822369 (not c!457171)) b!2822367))

(assert (= (and b!2822367 (not res!1174605)) b!2822366))

(declare-fun m!3253357 () Bool)

(assert (=> b!2822365 m!3253357))

(declare-fun m!3253359 () Bool)

(assert (=> b!2822366 m!3253359))

(declare-fun m!3253361 () Bool)

(assert (=> b!2822368 m!3253361))

(assert (=> b!2821875 d!819577))

(declare-fun bs!517720 () Bool)

(declare-fun d!819579 () Bool)

(assert (= bs!517720 (and d!819579 d!819509)))

(declare-fun lambda!103663 () Int)

(assert (=> bs!517720 (= lambda!103663 lambda!103657)))

(declare-fun bs!517721 () Bool)

(assert (= bs!517721 (and d!819579 b!2821478)))

(assert (=> bs!517721 (= (= thiss!27755 Lexer!4548) (= lambda!103663 lambda!103593))))

(declare-fun bs!517722 () Bool)

(assert (= bs!517722 (and d!819579 d!819101)))

(assert (=> bs!517722 (= lambda!103663 lambda!103605)))

(declare-fun bs!517723 () Bool)

(assert (= bs!517723 (and d!819579 d!819499)))

(assert (=> bs!517723 (= lambda!103663 lambda!103656)))

(declare-fun bs!517724 () Bool)

(assert (= bs!517724 (and d!819579 d!819139)))

(assert (=> bs!517724 (= lambda!103663 lambda!103614)))

(declare-fun bs!517725 () Bool)

(assert (= bs!517725 (and d!819579 d!819301)))

(assert (=> bs!517725 (= lambda!103663 lambda!103642)))

(declare-fun bs!517726 () Bool)

(assert (= bs!517726 (and d!819579 d!819103)))

(assert (=> bs!517726 (= lambda!103663 lambda!103606)))

(declare-fun bs!517727 () Bool)

(assert (= bs!517727 (and d!819579 d!819511)))

(assert (=> bs!517727 (= (= thiss!27755 Lexer!4548) (= lambda!103663 lambda!103660))))

(declare-fun bs!517728 () Bool)

(assert (= bs!517728 (and d!819579 d!819145)))

(assert (=> bs!517728 (= lambda!103663 lambda!103615)))

(declare-fun bs!517729 () Bool)

(assert (= bs!517729 (and d!819579 d!819087)))

(assert (=> bs!517729 (= lambda!103663 lambda!103604)))

(declare-fun bs!517730 () Bool)

(assert (= bs!517730 (and d!819579 d!819195)))

(assert (=> bs!517730 (= lambda!103663 lambda!103625)))

(declare-fun bs!517731 () Bool)

(assert (= bs!517731 (and d!819579 d!819117)))

(assert (=> bs!517731 (= lambda!103663 lambda!103613)))

(declare-fun bs!517732 () Bool)

(assert (= bs!517732 (and d!819579 b!2821797)))

(assert (=> bs!517732 (= (= thiss!27755 Lexer!4548) (= lambda!103663 lambda!103624))))

(declare-fun b!2822374 () Bool)

(declare-fun e!1785622 () Bool)

(assert (=> b!2822374 (= e!1785622 true)))

(declare-fun b!2822373 () Bool)

(declare-fun e!1785621 () Bool)

(assert (=> b!2822373 (= e!1785621 e!1785622)))

(declare-fun b!2822372 () Bool)

(declare-fun e!1785620 () Bool)

(assert (=> b!2822372 (= e!1785620 e!1785621)))

(assert (=> d!819579 e!1785620))

(assert (= b!2822373 b!2822374))

(assert (= b!2822372 b!2822373))

(assert (= (and d!819579 ((_ is Cons!33110) rules!4424)) b!2822372))

(assert (=> b!2822374 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103663))))

(assert (=> b!2822374 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103663))))

(assert (=> d!819579 true))

(declare-fun lt!1007432 () Bool)

(assert (=> d!819579 (= lt!1007432 (forall!6783 (t!230550 (t!230550 lt!1007047)) lambda!103663))))

(declare-fun e!1785619 () Bool)

(assert (=> d!819579 (= lt!1007432 e!1785619)))

(declare-fun res!1174607 () Bool)

(assert (=> d!819579 (=> res!1174607 e!1785619)))

(assert (=> d!819579 (= res!1174607 (not ((_ is Cons!33111) (t!230550 (t!230550 lt!1007047)))))))

(assert (=> d!819579 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819579 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 lt!1007047))) lt!1007432)))

(declare-fun b!2822370 () Bool)

(declare-fun e!1785618 () Bool)

(assert (=> b!2822370 (= e!1785619 e!1785618)))

(declare-fun res!1174606 () Bool)

(assert (=> b!2822370 (=> (not res!1174606) (not e!1785618))))

(assert (=> b!2822370 (= res!1174606 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 lt!1007047)))))))

(declare-fun b!2822371 () Bool)

(assert (=> b!2822371 (= e!1785618 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 (t!230550 lt!1007047)))))))

(assert (= (and d!819579 (not res!1174607)) b!2822370))

(assert (= (and b!2822370 res!1174606) b!2822371))

(declare-fun m!3253363 () Bool)

(assert (=> d!819579 m!3253363))

(assert (=> d!819579 m!3251855))

(declare-fun m!3253365 () Bool)

(assert (=> b!2822370 m!3253365))

(declare-fun m!3253367 () Bool)

(assert (=> b!2822371 m!3253367))

(assert (=> b!2821536 d!819579))

(declare-fun d!819581 () Bool)

(declare-fun lt!1007433 () Int)

(assert (=> d!819581 (>= lt!1007433 0)))

(declare-fun e!1785623 () Int)

(assert (=> d!819581 (= lt!1007433 e!1785623)))

(declare-fun c!457172 () Bool)

(assert (=> d!819581 (= c!457172 ((_ is Nil!33111) lt!1007130))))

(assert (=> d!819581 (= (size!25772 lt!1007130) lt!1007433)))

(declare-fun b!2822375 () Bool)

(assert (=> b!2822375 (= e!1785623 0)))

(declare-fun b!2822376 () Bool)

(assert (=> b!2822376 (= e!1785623 (+ 1 (size!25772 (t!230550 lt!1007130))))))

(assert (= (and d!819581 c!457172) b!2822375))

(assert (= (and d!819581 (not c!457172)) b!2822376))

(declare-fun m!3253369 () Bool)

(assert (=> b!2822376 m!3253369))

(assert (=> b!2821661 d!819581))

(declare-fun d!819583 () Bool)

(declare-fun res!1174609 () Bool)

(declare-fun e!1785625 () Bool)

(assert (=> d!819583 (=> res!1174609 e!1785625)))

(assert (=> d!819583 (= res!1174609 (or (not ((_ is Cons!33111) (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))) (not ((_ is Cons!33111) (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))))))))

(assert (=> d!819583 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))) rules!4424) e!1785625)))

(declare-fun b!2822377 () Bool)

(declare-fun e!1785624 () Bool)

(assert (=> b!2822377 (= e!1785625 e!1785624)))

(declare-fun res!1174608 () Bool)

(assert (=> b!2822377 (=> (not res!1174608) (not e!1785624))))

(assert (=> b!2822377 (= res!1174608 (separableTokensPredicate!893 thiss!27755 (h!38531 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047)))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))) rules!4424))))

(declare-fun lt!1007436 () Unit!47065)

(declare-fun Unit!47105 () Unit!47065)

(assert (=> b!2822377 (= lt!1007436 Unit!47105)))

(assert (=> b!2822377 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))))) 0)))

(declare-fun lt!1007434 () Unit!47065)

(declare-fun Unit!47106 () Unit!47065)

(assert (=> b!2822377 (= lt!1007434 Unit!47106)))

(assert (=> b!2822377 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))))))

(declare-fun lt!1007435 () Unit!47065)

(declare-fun Unit!47107 () Unit!47065)

(assert (=> b!2822377 (= lt!1007435 Unit!47107)))

(assert (=> b!2822377 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047)))))))

(declare-fun lt!1007438 () Unit!47065)

(declare-fun lt!1007440 () Unit!47065)

(assert (=> b!2822377 (= lt!1007438 lt!1007440)))

(assert (=> b!2822377 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))))))

(assert (=> b!2822377 (= lt!1007440 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047)))))))))

(declare-fun lt!1007437 () Unit!47065)

(declare-fun lt!1007439 () Unit!47065)

(assert (=> b!2822377 (= lt!1007437 lt!1007439)))

(assert (=> b!2822377 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047)))))))

(assert (=> b!2822377 (= lt!1007439 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))) (h!38531 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))))))

(declare-fun b!2822378 () Bool)

(assert (=> b!2822378 (= e!1785624 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047))))) (t!230550 (t!230550 (Cons!33111 (h!38531 (t!230550 lt!1007047)) (t!230550 (t!230550 lt!1007047)))))) rules!4424))))

(assert (= (and d!819583 (not res!1174609)) b!2822377))

(assert (= (and b!2822377 res!1174608) b!2822378))

(declare-fun m!3253371 () Bool)

(assert (=> b!2822377 m!3253371))

(declare-fun m!3253373 () Bool)

(assert (=> b!2822377 m!3253373))

(declare-fun m!3253375 () Bool)

(assert (=> b!2822377 m!3253375))

(declare-fun m!3253377 () Bool)

(assert (=> b!2822377 m!3253377))

(declare-fun m!3253379 () Bool)

(assert (=> b!2822377 m!3253379))

(declare-fun m!3253381 () Bool)

(assert (=> b!2822377 m!3253381))

(declare-fun m!3253383 () Bool)

(assert (=> b!2822377 m!3253383))

(assert (=> b!2822377 m!3253379))

(declare-fun m!3253385 () Bool)

(assert (=> b!2822378 m!3253385))

(assert (=> b!2821569 d!819583))

(declare-fun d!819585 () Bool)

(declare-fun res!1174610 () Bool)

(declare-fun e!1785626 () Bool)

(assert (=> d!819585 (=> res!1174610 e!1785626)))

(assert (=> d!819585 (= res!1174610 ((_ is Nil!33111) (t!230550 lt!1007047)))))

(assert (=> d!819585 (= (forall!6783 (t!230550 lt!1007047) lambda!103604) e!1785626)))

(declare-fun b!2822379 () Bool)

(declare-fun e!1785627 () Bool)

(assert (=> b!2822379 (= e!1785626 e!1785627)))

(declare-fun res!1174611 () Bool)

(assert (=> b!2822379 (=> (not res!1174611) (not e!1785627))))

(assert (=> b!2822379 (= res!1174611 (dynLambda!13860 lambda!103604 (h!38531 (t!230550 lt!1007047))))))

(declare-fun b!2822380 () Bool)

(assert (=> b!2822380 (= e!1785627 (forall!6783 (t!230550 (t!230550 lt!1007047)) lambda!103604))))

(assert (= (and d!819585 (not res!1174610)) b!2822379))

(assert (= (and b!2822379 res!1174611) b!2822380))

(declare-fun b_lambda!84543 () Bool)

(assert (=> (not b_lambda!84543) (not b!2822379)))

(declare-fun m!3253387 () Bool)

(assert (=> b!2822379 m!3253387))

(declare-fun m!3253389 () Bool)

(assert (=> b!2822380 m!3253389))

(assert (=> d!819087 d!819585))

(assert (=> d!819087 d!819115))

(declare-fun lt!1007441 () Bool)

(declare-fun d!819587 () Bool)

(assert (=> d!819587 (= lt!1007441 (isEmpty!18307 (list!12403 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))))

(assert (=> d!819587 (= lt!1007441 (isEmpty!18312 (c!457081 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051))))))))))

(assert (=> d!819587 (= (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007051)))))) lt!1007441)))

(declare-fun bs!517733 () Bool)

(assert (= bs!517733 d!819587))

(declare-fun m!3253391 () Bool)

(assert (=> bs!517733 m!3253391))

(assert (=> bs!517733 m!3253391))

(declare-fun m!3253393 () Bool)

(assert (=> bs!517733 m!3253393))

(declare-fun m!3253395 () Bool)

(assert (=> bs!517733 m!3253395))

(assert (=> b!2821842 d!819587))

(assert (=> b!2821842 d!819285))

(assert (=> b!2821842 d!819247))

(assert (=> b!2821842 d!819275))

(assert (=> b!2821671 d!819101))

(declare-fun d!819589 () Bool)

(declare-fun lt!1007443 () Bool)

(declare-fun e!1785628 () Bool)

(assert (=> d!819589 (= lt!1007443 e!1785628)))

(declare-fun res!1174613 () Bool)

(assert (=> d!819589 (=> (not res!1174613) (not e!1785628))))

(assert (=> d!819589 (= res!1174613 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007051))))))) (list!12404 (singletonSeq!2133 (h!38531 (t!230550 lt!1007051))))))))

(declare-fun e!1785629 () Bool)

(assert (=> d!819589 (= lt!1007443 e!1785629)))

(declare-fun res!1174614 () Bool)

(assert (=> d!819589 (=> (not res!1174614) (not e!1785629))))

(declare-fun lt!1007442 () tuple2!33384)

(assert (=> d!819589 (= res!1174614 (= (size!25773 (_1!19785 lt!1007442)) 1))))

(assert (=> d!819589 (= lt!1007442 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007051))))))))

(assert (=> d!819589 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819589 (= (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007051))) lt!1007443)))

(declare-fun b!2822381 () Bool)

(declare-fun res!1174612 () Bool)

(assert (=> b!2822381 (=> (not res!1174612) (not e!1785629))))

(assert (=> b!2822381 (= res!1174612 (= (apply!7728 (_1!19785 lt!1007442) 0) (h!38531 (t!230550 lt!1007051))))))

(declare-fun b!2822382 () Bool)

(assert (=> b!2822382 (= e!1785629 (isEmpty!18308 (_2!19785 lt!1007442)))))

(declare-fun b!2822383 () Bool)

(assert (=> b!2822383 (= e!1785628 (isEmpty!18308 (_2!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 (t!230550 lt!1007051))))))))))

(assert (= (and d!819589 res!1174614) b!2822381))

(assert (= (and b!2822381 res!1174612) b!2822382))

(assert (= (and d!819589 res!1174613) b!2822383))

(declare-fun m!3253397 () Bool)

(assert (=> d!819589 m!3253397))

(assert (=> d!819589 m!3251855))

(assert (=> d!819589 m!3253397))

(declare-fun m!3253399 () Bool)

(assert (=> d!819589 m!3253399))

(declare-fun m!3253401 () Bool)

(assert (=> d!819589 m!3253401))

(declare-fun m!3253403 () Bool)

(assert (=> d!819589 m!3253403))

(assert (=> d!819589 m!3253397))

(declare-fun m!3253405 () Bool)

(assert (=> d!819589 m!3253405))

(assert (=> d!819589 m!3253405))

(declare-fun m!3253407 () Bool)

(assert (=> d!819589 m!3253407))

(declare-fun m!3253409 () Bool)

(assert (=> b!2822381 m!3253409))

(declare-fun m!3253411 () Bool)

(assert (=> b!2822382 m!3253411))

(assert (=> b!2822383 m!3253397))

(assert (=> b!2822383 m!3253397))

(assert (=> b!2822383 m!3253405))

(assert (=> b!2822383 m!3253405))

(assert (=> b!2822383 m!3253407))

(declare-fun m!3253413 () Bool)

(assert (=> b!2822383 m!3253413))

(assert (=> b!2821545 d!819589))

(assert (=> d!819183 d!819143))

(declare-fun d!819591 () Bool)

(assert (=> d!819591 (forall!6783 lt!1007047 lambda!103593)))

(assert (=> d!819591 true))

(declare-fun _$37!362 () Unit!47065)

(assert (=> d!819591 (= (choose!16682 lt!1007047 (t!230550 l!6581) lambda!103593) _$37!362)))

(declare-fun bs!517734 () Bool)

(assert (= bs!517734 d!819591))

(assert (=> bs!517734 m!3251859))

(assert (=> d!819183 d!819591))

(declare-fun d!819593 () Bool)

(declare-fun res!1174615 () Bool)

(declare-fun e!1785630 () Bool)

(assert (=> d!819593 (=> res!1174615 e!1785630)))

(assert (=> d!819593 (= res!1174615 ((_ is Nil!33111) (t!230550 l!6581)))))

(assert (=> d!819593 (= (forall!6783 (t!230550 l!6581) lambda!103593) e!1785630)))

(declare-fun b!2822384 () Bool)

(declare-fun e!1785631 () Bool)

(assert (=> b!2822384 (= e!1785630 e!1785631)))

(declare-fun res!1174616 () Bool)

(assert (=> b!2822384 (=> (not res!1174616) (not e!1785631))))

(assert (=> b!2822384 (= res!1174616 (dynLambda!13860 lambda!103593 (h!38531 (t!230550 l!6581))))))

(declare-fun b!2822385 () Bool)

(assert (=> b!2822385 (= e!1785631 (forall!6783 (t!230550 (t!230550 l!6581)) lambda!103593))))

(assert (= (and d!819593 (not res!1174615)) b!2822384))

(assert (= (and b!2822384 res!1174616) b!2822385))

(declare-fun b_lambda!84545 () Bool)

(assert (=> (not b_lambda!84545) (not b!2822384)))

(declare-fun m!3253415 () Bool)

(assert (=> b!2822384 m!3253415))

(declare-fun m!3253417 () Bool)

(assert (=> b!2822385 m!3253417))

(assert (=> d!819183 d!819593))

(declare-fun d!819595 () Bool)

(declare-fun lt!1007444 () Token!9320)

(assert (=> d!819595 (= lt!1007444 (apply!7733 (list!12404 (_1!19785 lt!1007204)) 0))))

(assert (=> d!819595 (= lt!1007444 (apply!7734 (c!457083 (_1!19785 lt!1007204)) 0))))

(declare-fun e!1785632 () Bool)

(assert (=> d!819595 e!1785632))

(declare-fun res!1174617 () Bool)

(assert (=> d!819595 (=> (not res!1174617) (not e!1785632))))

(assert (=> d!819595 (= res!1174617 (<= 0 0))))

(assert (=> d!819595 (= (apply!7728 (_1!19785 lt!1007204) 0) lt!1007444)))

(declare-fun b!2822386 () Bool)

(assert (=> b!2822386 (= e!1785632 (< 0 (size!25773 (_1!19785 lt!1007204))))))

(assert (= (and d!819595 res!1174617) b!2822386))

(assert (=> d!819595 m!3252521))

(assert (=> d!819595 m!3252521))

(declare-fun m!3253419 () Bool)

(assert (=> d!819595 m!3253419))

(declare-fun m!3253421 () Bool)

(assert (=> d!819595 m!3253421))

(assert (=> b!2822386 m!3252295))

(assert (=> b!2821840 d!819595))

(declare-fun d!819597 () Bool)

(declare-fun res!1174619 () Bool)

(declare-fun e!1785634 () Bool)

(assert (=> d!819597 (=> res!1174619 e!1785634)))

(assert (=> d!819597 (= res!1174619 (or (not ((_ is Cons!33111) (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))) (not ((_ is Cons!33111) (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))))))))

(assert (=> d!819597 (= (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))) rules!4424) e!1785634)))

(declare-fun b!2822387 () Bool)

(declare-fun e!1785633 () Bool)

(assert (=> b!2822387 (= e!1785634 e!1785633)))

(declare-fun res!1174618 () Bool)

(assert (=> b!2822387 (=> (not res!1174618) (not e!1785633))))

(assert (=> b!2822387 (= res!1174618 (separableTokensPredicate!893 thiss!27755 (h!38531 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581))))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))) rules!4424))))

(declare-fun lt!1007447 () Unit!47065)

(declare-fun Unit!47108 () Unit!47065)

(assert (=> b!2822387 (= lt!1007447 Unit!47108)))

(assert (=> b!2822387 (> (size!25770 (charsOf!3068 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))))) 0)))

(declare-fun lt!1007445 () Unit!47065)

(declare-fun Unit!47109 () Unit!47065)

(assert (=> b!2822387 (= lt!1007445 Unit!47109)))

(assert (=> b!2822387 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))))))

(declare-fun lt!1007446 () Unit!47065)

(declare-fun Unit!47110 () Unit!47065)

(assert (=> b!2822387 (= lt!1007446 Unit!47110)))

(assert (=> b!2822387 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581))))))))

(declare-fun lt!1007449 () Unit!47065)

(declare-fun lt!1007451 () Unit!47065)

(assert (=> b!2822387 (= lt!1007449 lt!1007451)))

(assert (=> b!2822387 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))))))

(assert (=> b!2822387 (= lt!1007451 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))) (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581))))))))))

(declare-fun lt!1007448 () Unit!47065)

(declare-fun lt!1007450 () Unit!47065)

(assert (=> b!2822387 (= lt!1007448 lt!1007450)))

(assert (=> b!2822387 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581))))))))

(assert (=> b!2822387 (= lt!1007450 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!707 thiss!27755 rules!4424 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))) (h!38531 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))))))

(declare-fun b!2822388 () Bool)

(assert (=> b!2822388 (= e!1785633 (tokensListTwoByTwoPredicateSeparableList!687 thiss!27755 (Cons!33111 (h!38531 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581)))))) (t!230550 (t!230550 (Cons!33111 (h!38531 (t!230550 (t!230550 l!6581))) (t!230550 (t!230550 (t!230550 l!6581))))))) rules!4424))))

(assert (= (and d!819597 (not res!1174619)) b!2822387))

(assert (= (and b!2822387 res!1174618) b!2822388))

(declare-fun m!3253423 () Bool)

(assert (=> b!2822387 m!3253423))

(declare-fun m!3253425 () Bool)

(assert (=> b!2822387 m!3253425))

(declare-fun m!3253427 () Bool)

(assert (=> b!2822387 m!3253427))

(declare-fun m!3253429 () Bool)

(assert (=> b!2822387 m!3253429))

(declare-fun m!3253431 () Bool)

(assert (=> b!2822387 m!3253431))

(declare-fun m!3253433 () Bool)

(assert (=> b!2822387 m!3253433))

(declare-fun m!3253435 () Bool)

(assert (=> b!2822387 m!3253435))

(assert (=> b!2822387 m!3253431))

(declare-fun m!3253437 () Bool)

(assert (=> b!2822388 m!3253437))

(assert (=> b!2821805 d!819597))

(declare-fun d!819599 () Bool)

(declare-fun isBalanced!3117 (Conc!10273) Bool)

(assert (=> d!819599 (= (inv!45035 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))) (isBalanced!3117 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))))))

(declare-fun bs!517735 () Bool)

(assert (= bs!517735 d!819599))

(declare-fun m!3253439 () Bool)

(assert (=> bs!517735 m!3253439))

(assert (=> tb!153813 d!819599))

(declare-fun d!819601 () Bool)

(declare-fun lt!1007452 () Bool)

(assert (=> d!819601 (= lt!1007452 (isEmpty!18307 (list!12403 (_2!19785 lt!1007194))))))

(assert (=> d!819601 (= lt!1007452 (isEmpty!18312 (c!457081 (_2!19785 lt!1007194))))))

(assert (=> d!819601 (= (isEmpty!18308 (_2!19785 lt!1007194)) lt!1007452)))

(declare-fun bs!517736 () Bool)

(assert (= bs!517736 d!819601))

(declare-fun m!3253441 () Bool)

(assert (=> bs!517736 m!3253441))

(assert (=> bs!517736 m!3253441))

(declare-fun m!3253443 () Bool)

(assert (=> bs!517736 m!3253443))

(declare-fun m!3253445 () Bool)

(assert (=> bs!517736 m!3253445))

(assert (=> b!2821831 d!819601))

(declare-fun d!819603 () Bool)

(declare-fun res!1174620 () Bool)

(declare-fun e!1785635 () Bool)

(assert (=> d!819603 (=> res!1174620 e!1785635)))

(assert (=> d!819603 (= res!1174620 ((_ is Nil!33111) (t!230550 lt!1007047)))))

(assert (=> d!819603 (= (forall!6783 (t!230550 lt!1007047) lambda!103593) e!1785635)))

(declare-fun b!2822389 () Bool)

(declare-fun e!1785636 () Bool)

(assert (=> b!2822389 (= e!1785635 e!1785636)))

(declare-fun res!1174621 () Bool)

(assert (=> b!2822389 (=> (not res!1174621) (not e!1785636))))

(assert (=> b!2822389 (= res!1174621 (dynLambda!13860 lambda!103593 (h!38531 (t!230550 lt!1007047))))))

(declare-fun b!2822390 () Bool)

(assert (=> b!2822390 (= e!1785636 (forall!6783 (t!230550 (t!230550 lt!1007047)) lambda!103593))))

(assert (= (and d!819603 (not res!1174620)) b!2822389))

(assert (= (and b!2822389 res!1174621) b!2822390))

(declare-fun b_lambda!84547 () Bool)

(assert (=> (not b_lambda!84547) (not b!2822389)))

(declare-fun m!3253447 () Bool)

(assert (=> b!2822389 m!3253447))

(declare-fun m!3253449 () Bool)

(assert (=> b!2822390 m!3253449))

(assert (=> b!2821669 d!819603))

(declare-fun d!819605 () Bool)

(declare-fun res!1174622 () Bool)

(declare-fun e!1785637 () Bool)

(assert (=> d!819605 (=> res!1174622 e!1785637)))

(assert (=> d!819605 (= res!1174622 ((_ is Nil!33111) lt!1007047))))

(assert (=> d!819605 (= (forall!6783 lt!1007047 lambda!103614) e!1785637)))

(declare-fun b!2822391 () Bool)

(declare-fun e!1785638 () Bool)

(assert (=> b!2822391 (= e!1785637 e!1785638)))

(declare-fun res!1174623 () Bool)

(assert (=> b!2822391 (=> (not res!1174623) (not e!1785638))))

(assert (=> b!2822391 (= res!1174623 (dynLambda!13860 lambda!103614 (h!38531 lt!1007047)))))

(declare-fun b!2822392 () Bool)

(assert (=> b!2822392 (= e!1785638 (forall!6783 (t!230550 lt!1007047) lambda!103614))))

(assert (= (and d!819605 (not res!1174622)) b!2822391))

(assert (= (and b!2822391 res!1174623) b!2822392))

(declare-fun b_lambda!84549 () Bool)

(assert (=> (not b_lambda!84549) (not b!2822391)))

(declare-fun m!3253451 () Bool)

(assert (=> b!2822391 m!3253451))

(declare-fun m!3253453 () Bool)

(assert (=> b!2822392 m!3253453))

(assert (=> d!819139 d!819605))

(assert (=> d!819139 d!819115))

(assert (=> d!819191 d!819507))

(assert (=> d!819191 d!819115))

(assert (=> d!819191 d!819505))

(declare-fun d!819607 () Bool)

(declare-fun lt!1007453 () Int)

(assert (=> d!819607 (= lt!1007453 (size!25772 (list!12404 (_1!19785 lt!1007194))))))

(assert (=> d!819607 (= lt!1007453 (size!25776 (c!457083 (_1!19785 lt!1007194))))))

(assert (=> d!819607 (= (size!25773 (_1!19785 lt!1007194)) lt!1007453)))

(declare-fun bs!517737 () Bool)

(assert (= bs!517737 d!819607))

(assert (=> bs!517737 m!3253165))

(assert (=> bs!517737 m!3253165))

(declare-fun m!3253455 () Bool)

(assert (=> bs!517737 m!3253455))

(declare-fun m!3253457 () Bool)

(assert (=> bs!517737 m!3253457))

(assert (=> d!819191 d!819607))

(declare-fun d!819609 () Bool)

(assert (=> d!819609 (= (list!12404 (singletonSeq!2133 (h!38531 lt!1007047))) (list!12406 (c!457083 (singletonSeq!2133 (h!38531 lt!1007047)))))))

(declare-fun bs!517738 () Bool)

(assert (= bs!517738 d!819609))

(declare-fun m!3253459 () Bool)

(assert (=> bs!517738 m!3253459))

(assert (=> d!819191 d!819609))

(assert (=> d!819191 d!819503))

(declare-fun d!819611 () Bool)

(assert (=> d!819611 (= (list!12404 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047)))))) (list!12406 (c!457083 (_1!19785 (lex!1990 thiss!27755 rules!4424 (print!1709 thiss!27755 (singletonSeq!2133 (h!38531 lt!1007047))))))))))

(declare-fun bs!517739 () Bool)

(assert (= bs!517739 d!819611))

(declare-fun m!3253461 () Bool)

(assert (=> bs!517739 m!3253461))

(assert (=> d!819191 d!819611))

(declare-fun d!819613 () Bool)

(declare-fun c!457173 () Bool)

(assert (=> d!819613 (= c!457173 ((_ is Nil!33111) lt!1007130))))

(declare-fun e!1785639 () (InoxSet Token!9320))

(assert (=> d!819613 (= (content!4612 lt!1007130) e!1785639)))

(declare-fun b!2822393 () Bool)

(assert (=> b!2822393 (= e!1785639 ((as const (Array Token!9320 Bool)) false))))

(declare-fun b!2822394 () Bool)

(assert (=> b!2822394 (= e!1785639 ((_ map or) (store ((as const (Array Token!9320 Bool)) false) (h!38531 lt!1007130) true) (content!4612 (t!230550 lt!1007130))))))

(assert (= (and d!819613 c!457173) b!2822393))

(assert (= (and d!819613 (not c!457173)) b!2822394))

(declare-fun m!3253463 () Bool)

(assert (=> b!2822394 m!3253463))

(declare-fun m!3253465 () Bool)

(assert (=> b!2822394 m!3253465))

(assert (=> d!819141 d!819613))

(declare-fun d!819615 () Bool)

(declare-fun c!457174 () Bool)

(assert (=> d!819615 (= c!457174 ((_ is Nil!33111) l!6581))))

(declare-fun e!1785640 () (InoxSet Token!9320))

(assert (=> d!819615 (= (content!4612 l!6581) e!1785640)))

(declare-fun b!2822395 () Bool)

(assert (=> b!2822395 (= e!1785640 ((as const (Array Token!9320 Bool)) false))))

(declare-fun b!2822396 () Bool)

(assert (=> b!2822396 (= e!1785640 ((_ map or) (store ((as const (Array Token!9320 Bool)) false) (h!38531 l!6581) true) (content!4612 (t!230550 l!6581))))))

(assert (= (and d!819615 c!457174) b!2822395))

(assert (= (and d!819615 (not c!457174)) b!2822396))

(declare-fun m!3253467 () Bool)

(assert (=> b!2822396 m!3253467))

(assert (=> b!2822396 m!3252085))

(assert (=> d!819141 d!819615))

(declare-fun d!819617 () Bool)

(declare-fun res!1174624 () Bool)

(declare-fun e!1785641 () Bool)

(assert (=> d!819617 (=> res!1174624 e!1785641)))

(assert (=> d!819617 (= res!1174624 ((_ is Nil!33111) l!6581))))

(assert (=> d!819617 (= (forall!6783 l!6581 lambda!103625) e!1785641)))

(declare-fun b!2822397 () Bool)

(declare-fun e!1785642 () Bool)

(assert (=> b!2822397 (= e!1785641 e!1785642)))

(declare-fun res!1174625 () Bool)

(assert (=> b!2822397 (=> (not res!1174625) (not e!1785642))))

(assert (=> b!2822397 (= res!1174625 (dynLambda!13860 lambda!103625 (h!38531 l!6581)))))

(declare-fun b!2822398 () Bool)

(assert (=> b!2822398 (= e!1785642 (forall!6783 (t!230550 l!6581) lambda!103625))))

(assert (= (and d!819617 (not res!1174624)) b!2822397))

(assert (= (and b!2822397 res!1174625) b!2822398))

(declare-fun b_lambda!84551 () Bool)

(assert (=> (not b_lambda!84551) (not b!2822397)))

(declare-fun m!3253469 () Bool)

(assert (=> b!2822397 m!3253469))

(declare-fun m!3253471 () Bool)

(assert (=> b!2822398 m!3253471))

(assert (=> d!819195 d!819617))

(assert (=> d!819195 d!819115))

(declare-fun bs!517740 () Bool)

(declare-fun d!819619 () Bool)

(assert (= bs!517740 (and d!819619 d!819509)))

(declare-fun lambda!103664 () Int)

(assert (=> bs!517740 (= lambda!103664 lambda!103657)))

(declare-fun bs!517741 () Bool)

(assert (= bs!517741 (and d!819619 b!2821478)))

(assert (=> bs!517741 (= (= thiss!27755 Lexer!4548) (= lambda!103664 lambda!103593))))

(declare-fun bs!517742 () Bool)

(assert (= bs!517742 (and d!819619 d!819579)))

(assert (=> bs!517742 (= lambda!103664 lambda!103663)))

(declare-fun bs!517743 () Bool)

(assert (= bs!517743 (and d!819619 d!819101)))

(assert (=> bs!517743 (= lambda!103664 lambda!103605)))

(declare-fun bs!517744 () Bool)

(assert (= bs!517744 (and d!819619 d!819499)))

(assert (=> bs!517744 (= lambda!103664 lambda!103656)))

(declare-fun bs!517745 () Bool)

(assert (= bs!517745 (and d!819619 d!819139)))

(assert (=> bs!517745 (= lambda!103664 lambda!103614)))

(declare-fun bs!517746 () Bool)

(assert (= bs!517746 (and d!819619 d!819301)))

(assert (=> bs!517746 (= lambda!103664 lambda!103642)))

(declare-fun bs!517747 () Bool)

(assert (= bs!517747 (and d!819619 d!819103)))

(assert (=> bs!517747 (= lambda!103664 lambda!103606)))

(declare-fun bs!517748 () Bool)

(assert (= bs!517748 (and d!819619 d!819511)))

(assert (=> bs!517748 (= (= thiss!27755 Lexer!4548) (= lambda!103664 lambda!103660))))

(declare-fun bs!517749 () Bool)

(assert (= bs!517749 (and d!819619 d!819145)))

(assert (=> bs!517749 (= lambda!103664 lambda!103615)))

(declare-fun bs!517750 () Bool)

(assert (= bs!517750 (and d!819619 d!819087)))

(assert (=> bs!517750 (= lambda!103664 lambda!103604)))

(declare-fun bs!517751 () Bool)

(assert (= bs!517751 (and d!819619 d!819195)))

(assert (=> bs!517751 (= lambda!103664 lambda!103625)))

(declare-fun bs!517752 () Bool)

(assert (= bs!517752 (and d!819619 d!819117)))

(assert (=> bs!517752 (= lambda!103664 lambda!103613)))

(declare-fun bs!517753 () Bool)

(assert (= bs!517753 (and d!819619 b!2821797)))

(assert (=> bs!517753 (= (= thiss!27755 Lexer!4548) (= lambda!103664 lambda!103624))))

(declare-fun b!2822403 () Bool)

(declare-fun e!1785647 () Bool)

(assert (=> b!2822403 (= e!1785647 true)))

(declare-fun b!2822402 () Bool)

(declare-fun e!1785646 () Bool)

(assert (=> b!2822402 (= e!1785646 e!1785647)))

(declare-fun b!2822401 () Bool)

(declare-fun e!1785645 () Bool)

(assert (=> b!2822401 (= e!1785645 e!1785646)))

(assert (=> d!819619 e!1785645))

(assert (= b!2822402 b!2822403))

(assert (= b!2822401 b!2822402))

(assert (= (and d!819619 ((_ is Cons!33110) rules!4424)) b!2822401))

(assert (=> b!2822403 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103664))))

(assert (=> b!2822403 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103664))))

(assert (=> d!819619 true))

(declare-fun lt!1007454 () Bool)

(assert (=> d!819619 (= lt!1007454 (forall!6783 (t!230550 (t!230550 l!6581)) lambda!103664))))

(declare-fun e!1785644 () Bool)

(assert (=> d!819619 (= lt!1007454 e!1785644)))

(declare-fun res!1174627 () Bool)

(assert (=> d!819619 (=> res!1174627 e!1785644)))

(assert (=> d!819619 (= res!1174627 (not ((_ is Cons!33111) (t!230550 (t!230550 l!6581)))))))

(assert (=> d!819619 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819619 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 l!6581))) lt!1007454)))

(declare-fun b!2822399 () Bool)

(declare-fun e!1785643 () Bool)

(assert (=> b!2822399 (= e!1785644 e!1785643)))

(declare-fun res!1174626 () Bool)

(assert (=> b!2822399 (=> (not res!1174626) (not e!1785643))))

(assert (=> b!2822399 (= res!1174626 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 (t!230550 l!6581)))))))

(declare-fun b!2822400 () Bool)

(assert (=> b!2822400 (= e!1785643 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (t!230550 (t!230550 l!6581)))))))

(assert (= (and d!819619 (not res!1174627)) b!2822399))

(assert (= (and b!2822399 res!1174626) b!2822400))

(declare-fun m!3253473 () Bool)

(assert (=> d!819619 m!3253473))

(assert (=> d!819619 m!3251855))

(assert (=> b!2822399 m!3252241))

(declare-fun m!3253475 () Bool)

(assert (=> b!2822400 m!3253475))

(assert (=> b!2821551 d!819619))

(declare-fun d!819621 () Bool)

(declare-fun res!1174628 () Bool)

(declare-fun e!1785648 () Bool)

(assert (=> d!819621 (=> res!1174628 e!1785648)))

(assert (=> d!819621 (= res!1174628 ((_ is Nil!33111) (list!12404 (seqFromList!3238 lt!1007051))))))

(assert (=> d!819621 (= (forall!6783 (list!12404 (seqFromList!3238 lt!1007051)) lambda!103613) e!1785648)))

(declare-fun b!2822404 () Bool)

(declare-fun e!1785649 () Bool)

(assert (=> b!2822404 (= e!1785648 e!1785649)))

(declare-fun res!1174629 () Bool)

(assert (=> b!2822404 (=> (not res!1174629) (not e!1785649))))

(assert (=> b!2822404 (= res!1174629 (dynLambda!13860 lambda!103613 (h!38531 (list!12404 (seqFromList!3238 lt!1007051)))))))

(declare-fun b!2822405 () Bool)

(assert (=> b!2822405 (= e!1785649 (forall!6783 (t!230550 (list!12404 (seqFromList!3238 lt!1007051))) lambda!103613))))

(assert (= (and d!819621 (not res!1174628)) b!2822404))

(assert (= (and b!2822404 res!1174629) b!2822405))

(declare-fun b_lambda!84553 () Bool)

(assert (=> (not b_lambda!84553) (not b!2822404)))

(declare-fun m!3253477 () Bool)

(assert (=> b!2822404 m!3253477))

(declare-fun m!3253479 () Bool)

(assert (=> b!2822405 m!3253479))

(assert (=> d!819117 d!819621))

(declare-fun d!819623 () Bool)

(assert (=> d!819623 (= (list!12404 (seqFromList!3238 lt!1007051)) (list!12406 (c!457083 (seqFromList!3238 lt!1007051))))))

(declare-fun bs!517754 () Bool)

(assert (= bs!517754 d!819623))

(declare-fun m!3253481 () Bool)

(assert (=> bs!517754 m!3253481))

(assert (=> d!819117 d!819623))

(declare-fun d!819625 () Bool)

(declare-fun lt!1007457 () Bool)

(assert (=> d!819625 (= lt!1007457 (forall!6783 (list!12404 (seqFromList!3238 lt!1007051)) lambda!103613))))

(declare-fun forall!6789 (Conc!10274 Int) Bool)

(assert (=> d!819625 (= lt!1007457 (forall!6789 (c!457083 (seqFromList!3238 lt!1007051)) lambda!103613))))

(assert (=> d!819625 (= (forall!6785 (seqFromList!3238 lt!1007051) lambda!103613) lt!1007457)))

(declare-fun bs!517755 () Bool)

(assert (= bs!517755 d!819625))

(assert (=> bs!517755 m!3251887))

(assert (=> bs!517755 m!3252049))

(assert (=> bs!517755 m!3252049))

(assert (=> bs!517755 m!3252051))

(declare-fun m!3253483 () Bool)

(assert (=> bs!517755 m!3253483))

(assert (=> d!819117 d!819625))

(assert (=> d!819117 d!819115))

(declare-fun bs!517756 () Bool)

(declare-fun d!819627 () Bool)

(assert (= bs!517756 (and d!819627 d!819509)))

(declare-fun lambda!103665 () Int)

(assert (=> bs!517756 (= lambda!103665 lambda!103657)))

(declare-fun bs!517757 () Bool)

(assert (= bs!517757 (and d!819627 b!2821478)))

(assert (=> bs!517757 (= (= thiss!27755 Lexer!4548) (= lambda!103665 lambda!103593))))

(declare-fun bs!517758 () Bool)

(assert (= bs!517758 (and d!819627 d!819579)))

(assert (=> bs!517758 (= lambda!103665 lambda!103663)))

(declare-fun bs!517759 () Bool)

(assert (= bs!517759 (and d!819627 d!819101)))

(assert (=> bs!517759 (= lambda!103665 lambda!103605)))

(declare-fun bs!517760 () Bool)

(assert (= bs!517760 (and d!819627 d!819499)))

(assert (=> bs!517760 (= lambda!103665 lambda!103656)))

(declare-fun bs!517761 () Bool)

(assert (= bs!517761 (and d!819627 d!819139)))

(assert (=> bs!517761 (= lambda!103665 lambda!103614)))

(declare-fun bs!517762 () Bool)

(assert (= bs!517762 (and d!819627 d!819619)))

(assert (=> bs!517762 (= lambda!103665 lambda!103664)))

(declare-fun bs!517763 () Bool)

(assert (= bs!517763 (and d!819627 d!819301)))

(assert (=> bs!517763 (= lambda!103665 lambda!103642)))

(declare-fun bs!517764 () Bool)

(assert (= bs!517764 (and d!819627 d!819103)))

(assert (=> bs!517764 (= lambda!103665 lambda!103606)))

(declare-fun bs!517765 () Bool)

(assert (= bs!517765 (and d!819627 d!819511)))

(assert (=> bs!517765 (= (= thiss!27755 Lexer!4548) (= lambda!103665 lambda!103660))))

(declare-fun bs!517766 () Bool)

(assert (= bs!517766 (and d!819627 d!819145)))

(assert (=> bs!517766 (= lambda!103665 lambda!103615)))

(declare-fun bs!517767 () Bool)

(assert (= bs!517767 (and d!819627 d!819087)))

(assert (=> bs!517767 (= lambda!103665 lambda!103604)))

(declare-fun bs!517768 () Bool)

(assert (= bs!517768 (and d!819627 d!819195)))

(assert (=> bs!517768 (= lambda!103665 lambda!103625)))

(declare-fun bs!517769 () Bool)

(assert (= bs!517769 (and d!819627 d!819117)))

(assert (=> bs!517769 (= lambda!103665 lambda!103613)))

(declare-fun bs!517770 () Bool)

(assert (= bs!517770 (and d!819627 b!2821797)))

(assert (=> bs!517770 (= (= thiss!27755 Lexer!4548) (= lambda!103665 lambda!103624))))

(declare-fun b!2822410 () Bool)

(declare-fun e!1785654 () Bool)

(assert (=> b!2822410 (= e!1785654 true)))

(declare-fun b!2822409 () Bool)

(declare-fun e!1785653 () Bool)

(assert (=> b!2822409 (= e!1785653 e!1785654)))

(declare-fun b!2822408 () Bool)

(declare-fun e!1785652 () Bool)

(assert (=> b!2822408 (= e!1785652 e!1785653)))

(assert (=> d!819627 e!1785652))

(assert (= b!2822409 b!2822410))

(assert (= b!2822408 b!2822409))

(assert (= (and d!819627 ((_ is Cons!33110) rules!4424)) b!2822408))

(assert (=> b!2822410 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103665))))

(assert (=> b!2822410 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 rules!4424)))) (dynLambda!13855 order!17601 lambda!103665))))

(assert (=> d!819627 true))

(declare-fun lt!1007458 () Bool)

(assert (=> d!819627 (= lt!1007458 (forall!6783 (list!12404 (seqFromList!3238 lt!1007051)) lambda!103665))))

(declare-fun e!1785651 () Bool)

(assert (=> d!819627 (= lt!1007458 e!1785651)))

(declare-fun res!1174631 () Bool)

(assert (=> d!819627 (=> res!1174631 e!1785651)))

(assert (=> d!819627 (= res!1174631 (not ((_ is Cons!33111) (list!12404 (seqFromList!3238 lt!1007051)))))))

(assert (=> d!819627 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819627 (= (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (list!12404 (seqFromList!3238 lt!1007051))) lt!1007458)))

(declare-fun b!2822406 () Bool)

(declare-fun e!1785650 () Bool)

(assert (=> b!2822406 (= e!1785651 e!1785650)))

(declare-fun res!1174630 () Bool)

(assert (=> b!2822406 (=> (not res!1174630) (not e!1785650))))

(assert (=> b!2822406 (= res!1174630 (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (list!12404 (seqFromList!3238 lt!1007051)))))))

(declare-fun b!2822407 () Bool)

(assert (=> b!2822407 (= e!1785650 (rulesProduceEachTokenIndividuallyList!1602 thiss!27755 rules!4424 (t!230550 (list!12404 (seqFromList!3238 lt!1007051)))))))

(assert (= (and d!819627 (not res!1174631)) b!2822406))

(assert (= (and b!2822406 res!1174630) b!2822407))

(assert (=> d!819627 m!3252049))

(declare-fun m!3253485 () Bool)

(assert (=> d!819627 m!3253485))

(assert (=> d!819627 m!3251855))

(declare-fun m!3253487 () Bool)

(assert (=> b!2822406 m!3253487))

(declare-fun m!3253489 () Bool)

(assert (=> b!2822407 m!3253489))

(assert (=> b!2821634 d!819627))

(assert (=> b!2821634 d!819623))

(declare-fun d!819629 () Bool)

(declare-fun e!1785657 () Bool)

(assert (=> d!819629 e!1785657))

(declare-fun res!1174634 () Bool)

(assert (=> d!819629 (=> (not res!1174634) (not e!1785657))))

(declare-fun lt!1007461 () BalanceConc!20186)

(assert (=> d!819629 (= res!1174634 (= (list!12404 lt!1007461) lt!1007051))))

(declare-fun fromList!579 (List!33235) Conc!10274)

(assert (=> d!819629 (= lt!1007461 (BalanceConc!20187 (fromList!579 lt!1007051)))))

(assert (=> d!819629 (= (fromListB!1467 lt!1007051) lt!1007461)))

(declare-fun b!2822413 () Bool)

(assert (=> b!2822413 (= e!1785657 (isBalanced!3115 (fromList!579 lt!1007051)))))

(assert (= (and d!819629 res!1174634) b!2822413))

(declare-fun m!3253491 () Bool)

(assert (=> d!819629 m!3253491))

(declare-fun m!3253493 () Bool)

(assert (=> d!819629 m!3253493))

(assert (=> b!2822413 m!3253493))

(assert (=> b!2822413 m!3253493))

(declare-fun m!3253495 () Bool)

(assert (=> b!2822413 m!3253495))

(assert (=> d!819135 d!819629))

(declare-fun d!819631 () Bool)

(declare-fun lt!1007463 () Bool)

(declare-fun e!1785658 () Bool)

(assert (=> d!819631 (= lt!1007463 e!1785658)))

(declare-fun res!1174636 () Bool)

(assert (=> d!819631 (=> (not res!1174636) (not e!1785658))))

(assert (=> d!819631 (= res!1174636 (= (list!12404 (_1!19785 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007051)))))) (list!12404 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(declare-fun e!1785659 () Bool)

(assert (=> d!819631 (= lt!1007463 e!1785659)))

(declare-fun res!1174637 () Bool)

(assert (=> d!819631 (=> (not res!1174637) (not e!1785659))))

(declare-fun lt!1007462 () tuple2!33384)

(assert (=> d!819631 (= res!1174637 (= (size!25773 (_1!19785 lt!1007462)) 1))))

(assert (=> d!819631 (= lt!1007462 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007051)))))))

(assert (=> d!819631 (not (isEmpty!18304 rules!4424))))

(assert (=> d!819631 (= (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 lt!1007051)) lt!1007463)))

(declare-fun b!2822414 () Bool)

(declare-fun res!1174635 () Bool)

(assert (=> b!2822414 (=> (not res!1174635) (not e!1785659))))

(assert (=> b!2822414 (= res!1174635 (= (apply!7728 (_1!19785 lt!1007462) 0) (h!38531 lt!1007051)))))

(declare-fun b!2822415 () Bool)

(assert (=> b!2822415 (= e!1785659 (isEmpty!18308 (_2!19785 lt!1007462)))))

(declare-fun b!2822416 () Bool)

(assert (=> b!2822416 (= e!1785658 (isEmpty!18308 (_2!19785 (lex!1990 Lexer!4548 rules!4424 (print!1709 Lexer!4548 (singletonSeq!2133 (h!38531 lt!1007051)))))))))

(assert (= (and d!819631 res!1174637) b!2822414))

(assert (= (and b!2822414 res!1174635) b!2822415))

(assert (= (and d!819631 res!1174636) b!2822416))

(assert (=> d!819631 m!3252289))

(assert (=> d!819631 m!3251855))

(assert (=> d!819631 m!3252289))

(assert (=> d!819631 m!3252291))

(declare-fun m!3253497 () Bool)

(assert (=> d!819631 m!3253497))

(declare-fun m!3253499 () Bool)

(assert (=> d!819631 m!3253499))

(assert (=> d!819631 m!3252289))

(declare-fun m!3253501 () Bool)

(assert (=> d!819631 m!3253501))

(assert (=> d!819631 m!3253501))

(declare-fun m!3253503 () Bool)

(assert (=> d!819631 m!3253503))

(declare-fun m!3253505 () Bool)

(assert (=> b!2822414 m!3253505))

(declare-fun m!3253507 () Bool)

(assert (=> b!2822415 m!3253507))

(assert (=> b!2822416 m!3252289))

(assert (=> b!2822416 m!3252289))

(assert (=> b!2822416 m!3253501))

(assert (=> b!2822416 m!3253501))

(assert (=> b!2822416 m!3253503))

(declare-fun m!3253509 () Bool)

(assert (=> b!2822416 m!3253509))

(assert (=> bs!517507 d!819631))

(declare-fun b!2822417 () Bool)

(declare-fun e!1785660 () Bool)

(declare-fun tp!901287 () Bool)

(assert (=> b!2822417 (= e!1785660 (and tp_is_empty!14451 tp!901287))))

(assert (=> b!2821893 (= tp!901200 e!1785660)))

(assert (= (and b!2821893 ((_ is Cons!33109) (t!230548 (originalCharacters!5691 (h!38531 l!6581))))) b!2822417))

(declare-fun b!2822420 () Bool)

(declare-fun e!1785663 () Bool)

(assert (=> b!2822420 (= e!1785663 true)))

(declare-fun b!2822419 () Bool)

(declare-fun e!1785662 () Bool)

(assert (=> b!2822419 (= e!1785662 e!1785663)))

(declare-fun b!2822418 () Bool)

(declare-fun e!1785661 () Bool)

(assert (=> b!2822418 (= e!1785661 e!1785662)))

(assert (=> b!2821552 e!1785661))

(assert (= b!2822419 b!2822420))

(assert (= b!2822418 b!2822419))

(assert (= (and b!2821552 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822418))

(assert (=> b!2822420 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103606))))

(assert (=> b!2822420 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103606))))

(declare-fun e!1785664 () Bool)

(assert (=> b!2821863 (= tp!901169 e!1785664)))

(declare-fun b!2822422 () Bool)

(declare-fun tp!901289 () Bool)

(declare-fun tp!901288 () Bool)

(assert (=> b!2822422 (= e!1785664 (and tp!901289 tp!901288))))

(declare-fun b!2822424 () Bool)

(declare-fun tp!901291 () Bool)

(declare-fun tp!901290 () Bool)

(assert (=> b!2822424 (= e!1785664 (and tp!901291 tp!901290))))

(declare-fun b!2822421 () Bool)

(assert (=> b!2822421 (= e!1785664 tp_is_empty!14451)))

(declare-fun b!2822423 () Bool)

(declare-fun tp!901292 () Bool)

(assert (=> b!2822423 (= e!1785664 tp!901292)))

(assert (= (and b!2821863 ((_ is ElementMatch!8349) (regOne!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822421))

(assert (= (and b!2821863 ((_ is Concat!13539) (regOne!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822422))

(assert (= (and b!2821863 ((_ is Star!8349) (regOne!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822423))

(assert (= (and b!2821863 ((_ is Union!8349) (regOne!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822424))

(declare-fun e!1785665 () Bool)

(assert (=> b!2821863 (= tp!901168 e!1785665)))

(declare-fun b!2822426 () Bool)

(declare-fun tp!901294 () Bool)

(declare-fun tp!901293 () Bool)

(assert (=> b!2822426 (= e!1785665 (and tp!901294 tp!901293))))

(declare-fun b!2822428 () Bool)

(declare-fun tp!901296 () Bool)

(declare-fun tp!901295 () Bool)

(assert (=> b!2822428 (= e!1785665 (and tp!901296 tp!901295))))

(declare-fun b!2822425 () Bool)

(assert (=> b!2822425 (= e!1785665 tp_is_empty!14451)))

(declare-fun b!2822427 () Bool)

(declare-fun tp!901297 () Bool)

(assert (=> b!2822427 (= e!1785665 tp!901297)))

(assert (= (and b!2821863 ((_ is ElementMatch!8349) (regTwo!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822425))

(assert (= (and b!2821863 ((_ is Concat!13539) (regTwo!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822426))

(assert (= (and b!2821863 ((_ is Star!8349) (regTwo!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822427))

(assert (= (and b!2821863 ((_ is Union!8349) (regTwo!17211 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822428))

(declare-fun b!2822431 () Bool)

(declare-fun e!1785668 () Bool)

(assert (=> b!2822431 (= e!1785668 true)))

(declare-fun b!2822430 () Bool)

(declare-fun e!1785667 () Bool)

(assert (=> b!2822430 (= e!1785667 e!1785668)))

(declare-fun b!2822429 () Bool)

(declare-fun e!1785666 () Bool)

(assert (=> b!2822429 (= e!1785666 e!1785667)))

(assert (=> b!2821635 e!1785666))

(assert (= b!2822430 b!2822431))

(assert (= b!2822429 b!2822430))

(assert (= (and b!2821635 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822429))

(assert (=> b!2822431 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103613))))

(assert (=> b!2822431 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103613))))

(declare-fun b!2822440 () Bool)

(declare-fun tp!901306 () Bool)

(declare-fun e!1785674 () Bool)

(declare-fun tp!901304 () Bool)

(assert (=> b!2822440 (= e!1785674 (and (inv!45034 (left!25007 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))) tp!901306 (inv!45034 (right!25337 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))) tp!901304))))

(declare-fun b!2822442 () Bool)

(declare-fun e!1785673 () Bool)

(declare-fun tp!901305 () Bool)

(assert (=> b!2822442 (= e!1785673 tp!901305)))

(declare-fun b!2822441 () Bool)

(declare-fun inv!45041 (IArray!20551) Bool)

(assert (=> b!2822441 (= e!1785674 (and (inv!45041 (xs!13385 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))) e!1785673))))

(assert (=> b!2821581 (= tp!901097 (and (inv!45034 (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581))))) e!1785674))))

(assert (= (and b!2821581 ((_ is Node!10273) (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))) b!2822440))

(assert (= b!2822441 b!2822442))

(assert (= (and b!2821581 ((_ is Leaf!15644) (c!457081 (dynLambda!13859 (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (value!159651 (h!38531 l!6581)))))) b!2822441))

(declare-fun m!3253511 () Bool)

(assert (=> b!2822440 m!3253511))

(declare-fun m!3253513 () Bool)

(assert (=> b!2822440 m!3253513))

(declare-fun m!3253515 () Bool)

(assert (=> b!2822441 m!3253515))

(assert (=> b!2821581 m!3251989))

(declare-fun e!1785675 () Bool)

(assert (=> b!2821887 (= tp!901195 e!1785675)))

(declare-fun b!2822444 () Bool)

(declare-fun tp!901308 () Bool)

(declare-fun tp!901307 () Bool)

(assert (=> b!2822444 (= e!1785675 (and tp!901308 tp!901307))))

(declare-fun b!2822446 () Bool)

(declare-fun tp!901310 () Bool)

(declare-fun tp!901309 () Bool)

(assert (=> b!2822446 (= e!1785675 (and tp!901310 tp!901309))))

(declare-fun b!2822443 () Bool)

(assert (=> b!2822443 (= e!1785675 tp_is_empty!14451)))

(declare-fun b!2822445 () Bool)

(declare-fun tp!901311 () Bool)

(assert (=> b!2822445 (= e!1785675 tp!901311)))

(assert (= (and b!2821887 ((_ is ElementMatch!8349) (regex!4959 (h!38530 (t!230549 rules!4424))))) b!2822443))

(assert (= (and b!2821887 ((_ is Concat!13539) (regex!4959 (h!38530 (t!230549 rules!4424))))) b!2822444))

(assert (= (and b!2821887 ((_ is Star!8349) (regex!4959 (h!38530 (t!230549 rules!4424))))) b!2822445))

(assert (= (and b!2821887 ((_ is Union!8349) (regex!4959 (h!38530 (t!230549 rules!4424))))) b!2822446))

(declare-fun b!2822449 () Bool)

(declare-fun e!1785678 () Bool)

(assert (=> b!2822449 (= e!1785678 true)))

(declare-fun b!2822448 () Bool)

(declare-fun e!1785677 () Bool)

(assert (=> b!2822448 (= e!1785677 e!1785678)))

(declare-fun b!2822447 () Bool)

(declare-fun e!1785676 () Bool)

(assert (=> b!2822447 (= e!1785676 e!1785677)))

(assert (=> b!2821640 e!1785676))

(assert (= b!2822448 b!2822449))

(assert (= b!2822447 b!2822448))

(assert (= (and b!2821640 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822447))

(assert (=> b!2822449 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103614))))

(assert (=> b!2822449 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103614))))

(declare-fun e!1785679 () Bool)

(assert (=> b!2821858 (= tp!901165 e!1785679)))

(declare-fun b!2822451 () Bool)

(declare-fun tp!901313 () Bool)

(declare-fun tp!901312 () Bool)

(assert (=> b!2822451 (= e!1785679 (and tp!901313 tp!901312))))

(declare-fun b!2822453 () Bool)

(declare-fun tp!901315 () Bool)

(declare-fun tp!901314 () Bool)

(assert (=> b!2822453 (= e!1785679 (and tp!901315 tp!901314))))

(declare-fun b!2822450 () Bool)

(assert (=> b!2822450 (= e!1785679 tp_is_empty!14451)))

(declare-fun b!2822452 () Bool)

(declare-fun tp!901316 () Bool)

(assert (=> b!2822452 (= e!1785679 tp!901316)))

(assert (= (and b!2821858 ((_ is ElementMatch!8349) (reg!8678 (regex!4959 (h!38530 rules!4424))))) b!2822450))

(assert (= (and b!2821858 ((_ is Concat!13539) (reg!8678 (regex!4959 (h!38530 rules!4424))))) b!2822451))

(assert (= (and b!2821858 ((_ is Star!8349) (reg!8678 (regex!4959 (h!38530 rules!4424))))) b!2822452))

(assert (= (and b!2821858 ((_ is Union!8349) (reg!8678 (regex!4959 (h!38530 rules!4424))))) b!2822453))

(declare-fun e!1785680 () Bool)

(assert (=> b!2821857 (= tp!901162 e!1785680)))

(declare-fun b!2822455 () Bool)

(declare-fun tp!901318 () Bool)

(declare-fun tp!901317 () Bool)

(assert (=> b!2822455 (= e!1785680 (and tp!901318 tp!901317))))

(declare-fun b!2822457 () Bool)

(declare-fun tp!901320 () Bool)

(declare-fun tp!901319 () Bool)

(assert (=> b!2822457 (= e!1785680 (and tp!901320 tp!901319))))

(declare-fun b!2822454 () Bool)

(assert (=> b!2822454 (= e!1785680 tp_is_empty!14451)))

(declare-fun b!2822456 () Bool)

(declare-fun tp!901321 () Bool)

(assert (=> b!2822456 (= e!1785680 tp!901321)))

(assert (= (and b!2821857 ((_ is ElementMatch!8349) (regOne!17210 (regex!4959 (h!38530 rules!4424))))) b!2822454))

(assert (= (and b!2821857 ((_ is Concat!13539) (regOne!17210 (regex!4959 (h!38530 rules!4424))))) b!2822455))

(assert (= (and b!2821857 ((_ is Star!8349) (regOne!17210 (regex!4959 (h!38530 rules!4424))))) b!2822456))

(assert (= (and b!2821857 ((_ is Union!8349) (regOne!17210 (regex!4959 (h!38530 rules!4424))))) b!2822457))

(declare-fun e!1785681 () Bool)

(assert (=> b!2821857 (= tp!901161 e!1785681)))

(declare-fun b!2822459 () Bool)

(declare-fun tp!901323 () Bool)

(declare-fun tp!901322 () Bool)

(assert (=> b!2822459 (= e!1785681 (and tp!901323 tp!901322))))

(declare-fun b!2822461 () Bool)

(declare-fun tp!901325 () Bool)

(declare-fun tp!901324 () Bool)

(assert (=> b!2822461 (= e!1785681 (and tp!901325 tp!901324))))

(declare-fun b!2822458 () Bool)

(assert (=> b!2822458 (= e!1785681 tp_is_empty!14451)))

(declare-fun b!2822460 () Bool)

(declare-fun tp!901326 () Bool)

(assert (=> b!2822460 (= e!1785681 tp!901326)))

(assert (= (and b!2821857 ((_ is ElementMatch!8349) (regTwo!17210 (regex!4959 (h!38530 rules!4424))))) b!2822458))

(assert (= (and b!2821857 ((_ is Concat!13539) (regTwo!17210 (regex!4959 (h!38530 rules!4424))))) b!2822459))

(assert (= (and b!2821857 ((_ is Star!8349) (regTwo!17210 (regex!4959 (h!38530 rules!4424))))) b!2822460))

(assert (= (and b!2821857 ((_ is Union!8349) (regTwo!17210 (regex!4959 (h!38530 rules!4424))))) b!2822461))

(declare-fun b!2822462 () Bool)

(declare-fun e!1785682 () Bool)

(declare-fun tp!901327 () Bool)

(assert (=> b!2822462 (= e!1785682 (and tp_is_empty!14451 tp!901327))))

(assert (=> b!2821875 (= tp!901183 e!1785682)))

(assert (= (and b!2821875 ((_ is Cons!33109) (originalCharacters!5691 (h!38531 (t!230550 l!6581))))) b!2822462))

(declare-fun b!2822466 () Bool)

(declare-fun b_free!80757 () Bool)

(declare-fun b_next!81461 () Bool)

(assert (=> b!2822466 (= b_free!80757 (not b_next!81461))))

(declare-fun tp!901328 () Bool)

(declare-fun b_and!206223 () Bool)

(assert (=> b!2822466 (= tp!901328 b_and!206223)))

(declare-fun b_free!80759 () Bool)

(declare-fun b_next!81463 () Bool)

(assert (=> b!2822466 (= b_free!80759 (not b_next!81463))))

(declare-fun t!230660 () Bool)

(declare-fun tb!153893 () Bool)

(assert (=> (and b!2822466 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230660) tb!153893))

(declare-fun result!191610 () Bool)

(assert (= result!191610 result!191600))

(assert (=> d!819569 t!230660))

(declare-fun t!230662 () Bool)

(declare-fun tb!153895 () Bool)

(assert (=> (and b!2822466 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230662) tb!153895))

(declare-fun result!191612 () Bool)

(assert (= result!191612 result!191584))

(assert (=> d!819483 t!230662))

(declare-fun t!230664 () Bool)

(declare-fun tb!153897 () Bool)

(assert (=> (and b!2822466 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230664) tb!153897))

(declare-fun result!191614 () Bool)

(assert (= result!191614 result!191506))

(assert (=> b!2821575 t!230664))

(declare-fun t!230666 () Bool)

(declare-fun tb!153899 () Bool)

(assert (=> (and b!2822466 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230666) tb!153899))

(declare-fun result!191616 () Bool)

(assert (= result!191616 result!191592))

(assert (=> b!2822295 t!230666))

(assert (=> d!819529 t!230666))

(declare-fun b_and!206225 () Bool)

(declare-fun tp!901331 () Bool)

(assert (=> b!2822466 (= tp!901331 (and (=> t!230664 result!191614) (=> t!230666 result!191616) (=> t!230662 result!191612) (=> t!230660 result!191610) b_and!206225))))

(declare-fun tp!901330 () Bool)

(declare-fun e!1785687 () Bool)

(declare-fun b!2822464 () Bool)

(declare-fun e!1785685 () Bool)

(assert (=> b!2822464 (= e!1785685 (and (inv!21 (value!159651 (h!38531 (t!230550 (t!230550 l!6581))))) e!1785687 tp!901330))))

(declare-fun b!2822465 () Bool)

(declare-fun tp!901332 () Bool)

(declare-fun e!1785686 () Bool)

(assert (=> b!2822465 (= e!1785687 (and tp!901332 (inv!45027 (tag!5463 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (inv!45031 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) e!1785686))))

(declare-fun tp!901329 () Bool)

(declare-fun b!2822463 () Bool)

(declare-fun e!1785688 () Bool)

(assert (=> b!2822463 (= e!1785688 (and (inv!45030 (h!38531 (t!230550 (t!230550 l!6581)))) e!1785685 tp!901329))))

(assert (=> b!2822466 (= e!1785686 (and tp!901328 tp!901331))))

(assert (=> b!2821874 (= tp!901182 e!1785688)))

(assert (= b!2822465 b!2822466))

(assert (= b!2822464 b!2822465))

(assert (= b!2822463 b!2822464))

(assert (= (and b!2821874 ((_ is Cons!33111) (t!230550 (t!230550 l!6581)))) b!2822463))

(declare-fun m!3253517 () Bool)

(assert (=> b!2822464 m!3253517))

(declare-fun m!3253519 () Bool)

(assert (=> b!2822465 m!3253519))

(declare-fun m!3253521 () Bool)

(assert (=> b!2822465 m!3253521))

(declare-fun m!3253523 () Bool)

(assert (=> b!2822463 m!3253523))

(declare-fun e!1785689 () Bool)

(assert (=> b!2821876 (= tp!901185 e!1785689)))

(declare-fun b!2822468 () Bool)

(declare-fun tp!901334 () Bool)

(declare-fun tp!901333 () Bool)

(assert (=> b!2822468 (= e!1785689 (and tp!901334 tp!901333))))

(declare-fun b!2822470 () Bool)

(declare-fun tp!901336 () Bool)

(declare-fun tp!901335 () Bool)

(assert (=> b!2822470 (= e!1785689 (and tp!901336 tp!901335))))

(declare-fun b!2822467 () Bool)

(assert (=> b!2822467 (= e!1785689 tp_is_empty!14451)))

(declare-fun b!2822469 () Bool)

(declare-fun tp!901337 () Bool)

(assert (=> b!2822469 (= e!1785689 tp!901337)))

(assert (= (and b!2821876 ((_ is ElementMatch!8349) (regex!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) b!2822467))

(assert (= (and b!2821876 ((_ is Concat!13539) (regex!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) b!2822468))

(assert (= (and b!2821876 ((_ is Star!8349) (regex!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) b!2822469))

(assert (= (and b!2821876 ((_ is Union!8349) (regex!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) b!2822470))

(declare-fun b!2822473 () Bool)

(declare-fun b_free!80761 () Bool)

(declare-fun b_next!81465 () Bool)

(assert (=> b!2822473 (= b_free!80761 (not b_next!81465))))

(declare-fun tp!901341 () Bool)

(declare-fun b_and!206227 () Bool)

(assert (=> b!2822473 (= tp!901341 b_and!206227)))

(declare-fun b_free!80763 () Bool)

(declare-fun b_next!81467 () Bool)

(assert (=> b!2822473 (= b_free!80763 (not b_next!81467))))

(declare-fun tb!153901 () Bool)

(declare-fun t!230668 () Bool)

(assert (=> (and b!2822473 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581))))))) t!230668) tb!153901))

(declare-fun result!191618 () Bool)

(assert (= result!191618 result!191600))

(assert (=> d!819569 t!230668))

(declare-fun tb!153903 () Bool)

(declare-fun t!230670 () Bool)

(assert (=> (and b!2822473 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 lt!1007047)))))) t!230670) tb!153903))

(declare-fun result!191620 () Bool)

(assert (= result!191620 result!191584))

(assert (=> d!819483 t!230670))

(declare-fun t!230672 () Bool)

(declare-fun tb!153905 () Bool)

(assert (=> (and b!2822473 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581))))) t!230672) tb!153905))

(declare-fun result!191622 () Bool)

(assert (= result!191622 result!191506))

(assert (=> b!2821575 t!230672))

(declare-fun t!230674 () Bool)

(declare-fun tb!153907 () Bool)

(assert (=> (and b!2822473 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581)))))) t!230674) tb!153907))

(declare-fun result!191624 () Bool)

(assert (= result!191624 result!191592))

(assert (=> b!2822295 t!230674))

(assert (=> d!819529 t!230674))

(declare-fun b_and!206229 () Bool)

(declare-fun tp!901338 () Bool)

(assert (=> b!2822473 (= tp!901338 (and (=> t!230668 result!191618) (=> t!230674 result!191624) (=> t!230672 result!191622) (=> t!230670 result!191620) b_and!206229))))

(declare-fun e!1785691 () Bool)

(assert (=> b!2822473 (= e!1785691 (and tp!901341 tp!901338))))

(declare-fun tp!901339 () Bool)

(declare-fun e!1785692 () Bool)

(declare-fun b!2822472 () Bool)

(assert (=> b!2822472 (= e!1785692 (and tp!901339 (inv!45027 (tag!5463 (h!38530 (t!230549 (t!230549 rules!4424))))) (inv!45031 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) e!1785691))))

(declare-fun b!2822471 () Bool)

(declare-fun e!1785693 () Bool)

(declare-fun tp!901340 () Bool)

(assert (=> b!2822471 (= e!1785693 (and e!1785692 tp!901340))))

(assert (=> b!2821886 (= tp!901196 e!1785693)))

(assert (= b!2822472 b!2822473))

(assert (= b!2822471 b!2822472))

(assert (= (and b!2821886 ((_ is Cons!33110) (t!230549 (t!230549 rules!4424)))) b!2822471))

(declare-fun m!3253525 () Bool)

(assert (=> b!2822472 m!3253525))

(declare-fun m!3253527 () Bool)

(assert (=> b!2822472 m!3253527))

(declare-fun b!2822476 () Bool)

(declare-fun e!1785696 () Bool)

(assert (=> b!2822476 (= e!1785696 true)))

(declare-fun b!2822475 () Bool)

(declare-fun e!1785695 () Bool)

(assert (=> b!2822475 (= e!1785695 e!1785696)))

(declare-fun b!2822474 () Bool)

(declare-fun e!1785694 () Bool)

(assert (=> b!2822474 (= e!1785694 e!1785695)))

(assert (=> b!2821843 e!1785694))

(assert (= b!2822475 b!2822476))

(assert (= b!2822474 b!2822475))

(assert (= (and b!2821843 ((_ is Cons!33110) (t!230549 (t!230549 rules!4424)))) b!2822474))

(assert (=> b!2822476 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424)))))) (dynLambda!13855 order!17601 lambda!103593))))

(assert (=> b!2822476 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424)))))) (dynLambda!13855 order!17601 lambda!103593))))

(declare-fun e!1785697 () Bool)

(assert (=> b!2821859 (= tp!901164 e!1785697)))

(declare-fun b!2822478 () Bool)

(declare-fun tp!901343 () Bool)

(declare-fun tp!901342 () Bool)

(assert (=> b!2822478 (= e!1785697 (and tp!901343 tp!901342))))

(declare-fun b!2822480 () Bool)

(declare-fun tp!901345 () Bool)

(declare-fun tp!901344 () Bool)

(assert (=> b!2822480 (= e!1785697 (and tp!901345 tp!901344))))

(declare-fun b!2822477 () Bool)

(assert (=> b!2822477 (= e!1785697 tp_is_empty!14451)))

(declare-fun b!2822479 () Bool)

(declare-fun tp!901346 () Bool)

(assert (=> b!2822479 (= e!1785697 tp!901346)))

(assert (= (and b!2821859 ((_ is ElementMatch!8349) (regOne!17211 (regex!4959 (h!38530 rules!4424))))) b!2822477))

(assert (= (and b!2821859 ((_ is Concat!13539) (regOne!17211 (regex!4959 (h!38530 rules!4424))))) b!2822478))

(assert (= (and b!2821859 ((_ is Star!8349) (regOne!17211 (regex!4959 (h!38530 rules!4424))))) b!2822479))

(assert (= (and b!2821859 ((_ is Union!8349) (regOne!17211 (regex!4959 (h!38530 rules!4424))))) b!2822480))

(declare-fun e!1785698 () Bool)

(assert (=> b!2821859 (= tp!901163 e!1785698)))

(declare-fun b!2822482 () Bool)

(declare-fun tp!901348 () Bool)

(declare-fun tp!901347 () Bool)

(assert (=> b!2822482 (= e!1785698 (and tp!901348 tp!901347))))

(declare-fun b!2822484 () Bool)

(declare-fun tp!901350 () Bool)

(declare-fun tp!901349 () Bool)

(assert (=> b!2822484 (= e!1785698 (and tp!901350 tp!901349))))

(declare-fun b!2822481 () Bool)

(assert (=> b!2822481 (= e!1785698 tp_is_empty!14451)))

(declare-fun b!2822483 () Bool)

(declare-fun tp!901351 () Bool)

(assert (=> b!2822483 (= e!1785698 tp!901351)))

(assert (= (and b!2821859 ((_ is ElementMatch!8349) (regTwo!17211 (regex!4959 (h!38530 rules!4424))))) b!2822481))

(assert (= (and b!2821859 ((_ is Concat!13539) (regTwo!17211 (regex!4959 (h!38530 rules!4424))))) b!2822482))

(assert (= (and b!2821859 ((_ is Star!8349) (regTwo!17211 (regex!4959 (h!38530 rules!4424))))) b!2822483))

(assert (= (and b!2821859 ((_ is Union!8349) (regTwo!17211 (regex!4959 (h!38530 rules!4424))))) b!2822484))

(declare-fun b!2822487 () Bool)

(declare-fun e!1785701 () Bool)

(assert (=> b!2822487 (= e!1785701 true)))

(declare-fun b!2822486 () Bool)

(declare-fun e!1785700 () Bool)

(assert (=> b!2822486 (= e!1785700 e!1785701)))

(declare-fun b!2822485 () Bool)

(declare-fun e!1785699 () Bool)

(assert (=> b!2822485 (= e!1785699 e!1785700)))

(assert (=> b!2821837 e!1785699))

(assert (= b!2822486 b!2822487))

(assert (= b!2822485 b!2822486))

(assert (= (and b!2821837 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822485))

(assert (=> b!2822487 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103625))))

(assert (=> b!2822487 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103625))))

(declare-fun b!2822490 () Bool)

(declare-fun e!1785704 () Bool)

(assert (=> b!2822490 (= e!1785704 true)))

(declare-fun b!2822489 () Bool)

(declare-fun e!1785703 () Bool)

(assert (=> b!2822489 (= e!1785703 e!1785704)))

(declare-fun b!2822488 () Bool)

(declare-fun e!1785702 () Bool)

(assert (=> b!2822488 (= e!1785702 e!1785703)))

(assert (=> b!2821799 e!1785702))

(assert (= b!2822489 b!2822490))

(assert (= b!2822488 b!2822489))

(assert (= (and b!2821799 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822488))

(assert (=> b!2822490 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103624))))

(assert (=> b!2822490 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103624))))

(declare-fun b!2822493 () Bool)

(declare-fun e!1785707 () Bool)

(assert (=> b!2822493 (= e!1785707 true)))

(declare-fun b!2822492 () Bool)

(declare-fun e!1785706 () Bool)

(assert (=> b!2822492 (= e!1785706 e!1785707)))

(declare-fun b!2822491 () Bool)

(declare-fun e!1785705 () Bool)

(assert (=> b!2822491 (= e!1785705 e!1785706)))

(assert (=> b!2821537 e!1785705))

(assert (= b!2822492 b!2822493))

(assert (= b!2822491 b!2822492))

(assert (= (and b!2821537 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822491))

(assert (=> b!2822493 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103604))))

(assert (=> b!2822493 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103604))))

(declare-fun b!2822496 () Bool)

(declare-fun e!1785710 () Bool)

(assert (=> b!2822496 (= e!1785710 true)))

(declare-fun b!2822495 () Bool)

(declare-fun e!1785709 () Bool)

(assert (=> b!2822495 (= e!1785709 e!1785710)))

(declare-fun b!2822494 () Bool)

(declare-fun e!1785708 () Bool)

(assert (=> b!2822494 (= e!1785708 e!1785709)))

(assert (=> b!2821547 e!1785708))

(assert (= b!2822495 b!2822496))

(assert (= b!2822494 b!2822495))

(assert (= (and b!2821547 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822494))

(assert (=> b!2822496 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103605))))

(assert (=> b!2822496 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103605))))

(declare-fun e!1785711 () Bool)

(assert (=> b!2821861 (= tp!901167 e!1785711)))

(declare-fun b!2822498 () Bool)

(declare-fun tp!901353 () Bool)

(declare-fun tp!901352 () Bool)

(assert (=> b!2822498 (= e!1785711 (and tp!901353 tp!901352))))

(declare-fun b!2822500 () Bool)

(declare-fun tp!901355 () Bool)

(declare-fun tp!901354 () Bool)

(assert (=> b!2822500 (= e!1785711 (and tp!901355 tp!901354))))

(declare-fun b!2822497 () Bool)

(assert (=> b!2822497 (= e!1785711 tp_is_empty!14451)))

(declare-fun b!2822499 () Bool)

(declare-fun tp!901356 () Bool)

(assert (=> b!2822499 (= e!1785711 tp!901356)))

(assert (= (and b!2821861 ((_ is ElementMatch!8349) (regOne!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822497))

(assert (= (and b!2821861 ((_ is Concat!13539) (regOne!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822498))

(assert (= (and b!2821861 ((_ is Star!8349) (regOne!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822499))

(assert (= (and b!2821861 ((_ is Union!8349) (regOne!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822500))

(declare-fun e!1785712 () Bool)

(assert (=> b!2821861 (= tp!901166 e!1785712)))

(declare-fun b!2822502 () Bool)

(declare-fun tp!901358 () Bool)

(declare-fun tp!901357 () Bool)

(assert (=> b!2822502 (= e!1785712 (and tp!901358 tp!901357))))

(declare-fun b!2822504 () Bool)

(declare-fun tp!901360 () Bool)

(declare-fun tp!901359 () Bool)

(assert (=> b!2822504 (= e!1785712 (and tp!901360 tp!901359))))

(declare-fun b!2822501 () Bool)

(assert (=> b!2822501 (= e!1785712 tp_is_empty!14451)))

(declare-fun b!2822503 () Bool)

(declare-fun tp!901361 () Bool)

(assert (=> b!2822503 (= e!1785712 tp!901361)))

(assert (= (and b!2821861 ((_ is ElementMatch!8349) (regTwo!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822501))

(assert (= (and b!2821861 ((_ is Concat!13539) (regTwo!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822502))

(assert (= (and b!2821861 ((_ is Star!8349) (regTwo!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822503))

(assert (= (and b!2821861 ((_ is Union!8349) (regTwo!17210 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822504))

(declare-fun e!1785713 () Bool)

(assert (=> b!2821862 (= tp!901170 e!1785713)))

(declare-fun b!2822506 () Bool)

(declare-fun tp!901363 () Bool)

(declare-fun tp!901362 () Bool)

(assert (=> b!2822506 (= e!1785713 (and tp!901363 tp!901362))))

(declare-fun b!2822508 () Bool)

(declare-fun tp!901365 () Bool)

(declare-fun tp!901364 () Bool)

(assert (=> b!2822508 (= e!1785713 (and tp!901365 tp!901364))))

(declare-fun b!2822505 () Bool)

(assert (=> b!2822505 (= e!1785713 tp_is_empty!14451)))

(declare-fun b!2822507 () Bool)

(declare-fun tp!901366 () Bool)

(assert (=> b!2822507 (= e!1785713 tp!901366)))

(assert (= (and b!2821862 ((_ is ElementMatch!8349) (reg!8678 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822505))

(assert (= (and b!2821862 ((_ is Concat!13539) (reg!8678 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822506))

(assert (= (and b!2821862 ((_ is Star!8349) (reg!8678 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822507))

(assert (= (and b!2821862 ((_ is Union!8349) (reg!8678 (regex!4959 (rule!7387 (h!38531 l!6581)))))) b!2822508))

(declare-fun b!2822511 () Bool)

(declare-fun e!1785716 () Bool)

(assert (=> b!2822511 (= e!1785716 true)))

(declare-fun b!2822510 () Bool)

(declare-fun e!1785715 () Bool)

(assert (=> b!2822510 (= e!1785715 e!1785716)))

(declare-fun b!2822509 () Bool)

(declare-fun e!1785714 () Bool)

(assert (=> b!2822509 (= e!1785714 e!1785715)))

(assert (=> b!2821672 e!1785714))

(assert (= b!2822510 b!2822511))

(assert (= b!2822509 b!2822510))

(assert (= (and b!2821672 ((_ is Cons!33110) (t!230549 rules!4424))) b!2822509))

(assert (=> b!2822511 (< (dynLambda!13854 order!17599 (toValue!6977 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103615))))

(assert (=> b!2822511 (< (dynLambda!13856 order!17603 (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424))))) (dynLambda!13855 order!17601 lambda!103615))))

(declare-fun b_lambda!84555 () Bool)

(assert (= b_lambda!84549 (or d!819139 b_lambda!84555)))

(declare-fun bs!517771 () Bool)

(declare-fun d!819633 () Bool)

(assert (= bs!517771 (and d!819633 d!819139)))

(assert (=> bs!517771 (= (dynLambda!13860 lambda!103614 (h!38531 lt!1007047)) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007047)))))

(assert (=> bs!517771 m!3251903))

(assert (=> b!2822391 d!819633))

(declare-fun b_lambda!84557 () Bool)

(assert (= b_lambda!84533 (or b!2821797 b_lambda!84557)))

(declare-fun bs!517772 () Bool)

(declare-fun d!819635 () Bool)

(assert (= bs!517772 (and d!819635 b!2821797)))

(assert (=> bs!517772 (= (dynLambda!13860 lambda!103624 (h!38531 (t!230550 l!6581))) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 (t!230550 l!6581))))))

(declare-fun m!3253529 () Bool)

(assert (=> bs!517772 m!3253529))

(assert (=> b!2822351 d!819635))

(declare-fun b_lambda!84559 () Bool)

(assert (= b_lambda!84553 (or d!819117 b_lambda!84559)))

(declare-fun bs!517773 () Bool)

(declare-fun d!819637 () Bool)

(assert (= bs!517773 (and d!819637 d!819117)))

(assert (=> bs!517773 (= (dynLambda!13860 lambda!103613 (h!38531 (list!12404 (seqFromList!3238 lt!1007051)))) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (list!12404 (seqFromList!3238 lt!1007051)))))))

(assert (=> bs!517773 m!3253487))

(assert (=> b!2822404 d!819637))

(declare-fun b_lambda!84561 () Bool)

(assert (= b_lambda!84541 (or d!819145 b_lambda!84561)))

(declare-fun bs!517774 () Bool)

(declare-fun d!819639 () Bool)

(assert (= bs!517774 (and d!819639 d!819145)))

(assert (=> bs!517774 (= (dynLambda!13860 lambda!103615 (h!38531 lt!1007051)) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 lt!1007051)))))

(assert (=> bs!517774 m!3251899))

(assert (=> b!2822363 d!819639))

(declare-fun b_lambda!84563 () Bool)

(assert (= b_lambda!84543 (or d!819087 b_lambda!84563)))

(declare-fun bs!517775 () Bool)

(declare-fun d!819641 () Bool)

(assert (= bs!517775 (and d!819641 d!819087)))

(assert (=> bs!517775 (= (dynLambda!13860 lambda!103604 (h!38531 (t!230550 lt!1007047))) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007047))))))

(assert (=> bs!517775 m!3251935))

(assert (=> b!2822379 d!819641))

(declare-fun b_lambda!84565 () Bool)

(assert (= b_lambda!84531 (or (and b!2821877 b_free!80743) (and b!2822473 b_free!80763 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821472 b_free!80727 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2822466 b_free!80759 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821888 b_free!80747 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821481 b_free!80731 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) b_lambda!84565)))

(declare-fun b_lambda!84567 () Bool)

(assert (= b_lambda!84539 (or (and b!2822466 b_free!80759) (and b!2822473 b_free!80763 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))))) (and b!2821481 b_free!80731 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))))) (and b!2821472 b_free!80727 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))))) (and b!2821877 b_free!80743 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))))) (and b!2821888 b_free!80747 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))))) b_lambda!84567)))

(declare-fun b_lambda!84569 () Bool)

(assert (= b_lambda!84465 (or d!819101 b_lambda!84569)))

(declare-fun bs!517776 () Bool)

(declare-fun d!819643 () Bool)

(assert (= bs!517776 (and d!819643 d!819101)))

(assert (=> bs!517776 (= (dynLambda!13860 lambda!103605 (h!38531 (t!230550 lt!1007051))) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 lt!1007051))))))

(assert (=> bs!517776 m!3251945))

(assert (=> b!2822098 d!819643))

(declare-fun b_lambda!84571 () Bool)

(assert (= b_lambda!84535 (or b!2821797 b_lambda!84571)))

(declare-fun bs!517777 () Bool)

(declare-fun d!819645 () Bool)

(assert (= bs!517777 (and d!819645 b!2821797)))

(assert (=> bs!517777 (= (dynLambda!13860 lambda!103624 (h!38531 lt!1007179)) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 lt!1007179)))))

(declare-fun m!3253531 () Bool)

(assert (=> bs!517777 m!3253531))

(assert (=> b!2822353 d!819645))

(declare-fun b_lambda!84573 () Bool)

(assert (= b_lambda!84551 (or d!819195 b_lambda!84573)))

(declare-fun bs!517778 () Bool)

(declare-fun d!819647 () Bool)

(assert (= bs!517778 (and d!819647 d!819195)))

(assert (=> bs!517778 (= (dynLambda!13860 lambda!103625 (h!38531 l!6581)) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 l!6581)))))

(assert (=> bs!517778 m!3252275))

(assert (=> b!2822397 d!819647))

(declare-fun b_lambda!84575 () Bool)

(assert (= b_lambda!84537 (or b!2821478 b_lambda!84575)))

(declare-fun bs!517779 () Bool)

(declare-fun d!819649 () Bool)

(assert (= bs!517779 (and d!819649 b!2821478)))

(assert (=> bs!517779 (= (dynLambda!13860 lambda!103593 (h!38531 l!6581)) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 l!6581)))))

(declare-fun m!3253533 () Bool)

(assert (=> bs!517779 m!3253533))

(assert (=> b!2822355 d!819649))

(declare-fun b_lambda!84577 () Bool)

(assert (= b_lambda!84545 (or b!2821478 b_lambda!84577)))

(declare-fun bs!517780 () Bool)

(declare-fun d!819651 () Bool)

(assert (= bs!517780 (and d!819651 b!2821478)))

(assert (=> bs!517780 (= (dynLambda!13860 lambda!103593 (h!38531 (t!230550 l!6581))) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 (t!230550 l!6581))))))

(assert (=> bs!517780 m!3253529))

(assert (=> b!2822384 d!819651))

(declare-fun b_lambda!84579 () Bool)

(assert (= b_lambda!84547 (or b!2821478 b_lambda!84579)))

(declare-fun bs!517781 () Bool)

(declare-fun d!819653 () Bool)

(assert (= bs!517781 (and d!819653 b!2821478)))

(assert (=> bs!517781 (= (dynLambda!13860 lambda!103593 (h!38531 (t!230550 lt!1007047))) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 (t!230550 lt!1007047))))))

(declare-fun m!3253535 () Bool)

(assert (=> bs!517781 m!3253535))

(assert (=> b!2822389 d!819653))

(declare-fun b_lambda!84581 () Bool)

(assert (= b_lambda!84527 (or (and b!2821877 b_free!80743) (and b!2822473 b_free!80763 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 (t!230549 rules!4424))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821472 b_free!80727 (= (toChars!6836 (transformation!4959 (h!38530 rules!4424))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2822466 b_free!80759 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 (t!230550 l!6581)))))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821888 b_free!80747 (= (toChars!6836 (transformation!4959 (h!38530 (t!230549 rules!4424)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) (and b!2821481 b_free!80731 (= (toChars!6836 (transformation!4959 (rule!7387 (h!38531 l!6581)))) (toChars!6836 (transformation!4959 (rule!7387 (h!38531 (t!230550 l!6581))))))) b_lambda!84581)))

(declare-fun b_lambda!84583 () Bool)

(assert (= b_lambda!84455 (or b!2821478 b_lambda!84583)))

(declare-fun bs!517782 () Bool)

(declare-fun d!819655 () Bool)

(assert (= bs!517782 (and d!819655 b!2821478)))

(assert (=> bs!517782 (= (dynLambda!13860 lambda!103593 (h!38531 (t!230550 lt!1007051))) (rulesProduceIndividualToken!2088 Lexer!4548 rules!4424 (h!38531 (t!230550 lt!1007051))))))

(declare-fun m!3253537 () Bool)

(assert (=> bs!517782 m!3253537))

(assert (=> b!2821969 d!819655))

(declare-fun b_lambda!84585 () Bool)

(assert (= b_lambda!84529 (or d!819103 b_lambda!84585)))

(declare-fun bs!517783 () Bool)

(declare-fun d!819657 () Bool)

(assert (= bs!517783 (and d!819657 d!819103)))

(assert (=> bs!517783 (= (dynLambda!13860 lambda!103606 (h!38531 (t!230550 l!6581))) (rulesProduceIndividualToken!2088 thiss!27755 rules!4424 (h!38531 (t!230550 l!6581))))))

(assert (=> bs!517783 m!3251951))

(assert (=> b!2822335 d!819657))

(check-sat (not d!819567) b_and!206147 (not d!819627) (not d!819309) (not b!2822470) (not b!2822396) (not b!2822506) (not b!2822426) b_and!206119 (not b!2822296) (not b!2822004) (not tb!153877) (not b!2822392) (not b!2822416) (not d!819557) (not b!2822038) (not b!2822387) (not d!819507) (not b_lambda!84585) (not b!2822459) (not b!2822509) (not d!819349) (not d!819589) (not d!819499) (not b!2822350) (not b!2822483) b_and!206217 (not d!819479) (not d!819515) (not b!2822345) (not b!2822440) (not d!819497) (not tb!153869) (not b!2822046) (not b!2822376) (not bs!517780) (not bs!517776) (not b!2822334) (not b!2822314) (not d!819513) (not d!819483) (not b!2822048) (not d!819575) (not b_lambda!84525) (not b!2822452) (not bs!517781) (not b!2822327) (not b!2822312) (not b!2822442) (not b!2822414) (not b!2822354) b_and!206225 (not b!2822381) (not b!2822344) (not b!2822347) (not b!2822097) (not b_next!81445) (not d!819541) b_and!206227 (not d!819493) (not d!819519) (not d!819591) (not d!819283) (not b!2822378) (not b_lambda!84561) (not d!819503) (not b!2822382) (not b!2822399) (not b!2822455) (not b!2822463) (not b!2822468) (not b_next!81449) (not d!819307) (not b!2822444) (not d!819579) (not b!2822408) (not d!819587) (not b!2822063) (not b!2822349) (not b!2822499) (not b!2822343) (not b!2822317) (not b!2822366) (not b!2822307) (not b!2822037) (not b!2822417) (not d!819525) (not b!2822336) (not b!2822390) (not b!2822371) (not b!2822065) (not b!2822457) (not b!2822045) (not b!2822428) (not d!819511) (not b!2822380) (not d!819329) b_and!206229 (not d!819539) (not b!2822308) (not b!2822358) (not d!819527) (not b!2821970) (not b!2822460) (not b_next!81467) (not d!819311) (not b!2822319) (not d!819549) (not b!2822365) (not b_lambda!84565) (not b!2822368) (not d!819623) (not b_lambda!84577) (not b!2822485) (not d!819561) (not b_next!81451) (not d!819297) (not b_lambda!84569) (not d!819505) (not tb!153885) (not d!819563) (not b!2822119) (not b!2822298) (not bs!517783) (not bs!517775) (not b!2822480) (not d!819271) (not b!2822342) (not b!2822064) (not b!2822422) (not b!2822057) (not d!819487) (not b!2822494) (not b!2822471) (not b!2822413) (not d!819537) (not b!2822118) (not bs!517771) (not b!2822503) (not d!819611) (not b!2822099) (not b_lambda!84579) (not b!2822488) (not b!2822474) (not b!2822508) (not b!2822032) (not b!2822360) (not d!819501) (not b!2822405) (not b!2822424) (not b!2822394) (not b!2822082) (not b!2822385) (not b_lambda!84573) (not b!2822095) (not b_lambda!84571) (not b!2822034) (not b!2822348) (not d!819551) (not b!2822320) (not b!2822372) (not b!2822352) (not d!819295) (not b!2821581) (not bs!517782) (not bs!517777) (not b!2822036) (not bs!517774) (not d!819533) (not b!2822304) (not b!2822359) (not d!819523) (not b!2822051) (not d!819301) (not b!2822401) (not d!819601) (not b_next!81429) (not b_next!81447) (not b!2822388) (not b!2822047) (not d!819481) (not b_lambda!84453) (not b!2822479) (not b!2822464) (not b!2822337) (not b!2822328) (not d!819529) (not d!819609) (not d!819509) (not b_next!81465) (not b!2822484) (not b!2822407) (not b_lambda!84567) (not b!2822346) b_and!206143 (not b!2822383) (not d!819485) (not d!819275) (not b!2822507) (not b_lambda!84449) (not b_lambda!84575) (not b!2822295) (not b!2822361) (not b_lambda!84581) (not b!2822427) (not b!2822033) (not b!2822377) (not b!2822370) (not d!819491) (not d!819285) b_and!206221 (not b!2822423) (not b_lambda!84557) (not b!2822446) (not b!2822339) (not b!2822482) (not d!819625) (not b!2822052) (not b!2822316) (not b!2822453) (not b!2822478) (not b_next!81461) (not bs!517778) (not b!2822498) (not b!2822462) b_and!206219 (not b!2822313) (not b!2822364) (not b!2822465) (not b!2822500) (not b!2822341) (not b!2822456) (not b!2822469) (not b!2822502) (not b!2822447) (not b!2822491) tp_is_empty!14451 (not b!2822091) (not b_lambda!84559) (not d!819629) (not b!2822386) (not b!2822039) (not b!2822472) b_and!206223 (not b!2822356) (not b!2822058) (not b_lambda!84563) (not d!819569) (not b!2822084) (not d!819247) (not b!2822294) (not d!819595) (not b!2822309) (not bs!517772) (not d!819521) (not b!2822062) (not b!2822340) (not b!2822338) (not d!819619) (not b_lambda!84583) (not b_next!81435) (not b!2822318) (not b!2822415) (not b!2822362) (not b!2822093) (not d!819565) b_and!206123 (not d!819535) (not d!819531) (not b!2822418) (not b_next!81433) (not b!2822400) (not d!819631) (not b_lambda!84451) (not bs!517773) (not bs!517779) (not b!2822297) b_and!206215 (not b!2822429) (not b_next!81431) (not b!2822329) (not b!2822445) (not b!2822398) (not b!2822461) (not d!819571) (not b!2822504) (not b!2822451) (not d!819599) (not b_lambda!84555) (not d!819607) (not b!2822406) (not b_next!81463) (not b!2822441))
(check-sat b_and!206217 (not b_next!81449) b_and!206229 (not b_next!81467) (not b_next!81451) (not b_next!81465) b_and!206143 b_and!206221 b_and!206223 (not b_next!81431) (not b_next!81463) b_and!206147 b_and!206119 b_and!206225 b_and!206227 (not b_next!81445) (not b_next!81429) (not b_next!81447) (not b_next!81461) b_and!206219 (not b_next!81435) b_and!206123 (not b_next!81433) b_and!206215)
