; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182050 () Bool)

(assert start!182050)

(declare-fun b!1833388 () Bool)

(declare-fun b_free!51323 () Bool)

(declare-fun b_next!52027 () Bool)

(assert (=> b!1833388 (= b_free!51323 (not b_next!52027))))

(declare-fun tp!518732 () Bool)

(declare-fun b_and!142889 () Bool)

(assert (=> b!1833388 (= tp!518732 b_and!142889)))

(declare-fun b_free!51325 () Bool)

(declare-fun b_next!52029 () Bool)

(assert (=> b!1833388 (= b_free!51325 (not b_next!52029))))

(declare-fun tp!518739 () Bool)

(declare-fun b_and!142891 () Bool)

(assert (=> b!1833388 (= tp!518739 b_and!142891)))

(declare-fun b!1833398 () Bool)

(declare-fun b_free!51327 () Bool)

(declare-fun b_next!52031 () Bool)

(assert (=> b!1833398 (= b_free!51327 (not b_next!52031))))

(declare-fun tp!518742 () Bool)

(declare-fun b_and!142893 () Bool)

(assert (=> b!1833398 (= tp!518742 b_and!142893)))

(declare-fun b_free!51329 () Bool)

(declare-fun b_next!52033 () Bool)

(assert (=> b!1833398 (= b_free!51329 (not b_next!52033))))

(declare-fun tp!518741 () Bool)

(declare-fun b_and!142895 () Bool)

(assert (=> b!1833398 (= tp!518741 b_and!142895)))

(declare-fun b!1833403 () Bool)

(declare-fun b_free!51331 () Bool)

(declare-fun b_next!52035 () Bool)

(assert (=> b!1833403 (= b_free!51331 (not b_next!52035))))

(declare-fun tp!518738 () Bool)

(declare-fun b_and!142897 () Bool)

(assert (=> b!1833403 (= tp!518738 b_and!142897)))

(declare-fun b_free!51333 () Bool)

(declare-fun b_next!52037 () Bool)

(assert (=> b!1833403 (= b_free!51333 (not b_next!52037))))

(declare-fun tp!518736 () Bool)

(declare-fun b_and!142899 () Bool)

(assert (=> b!1833403 (= tp!518736 b_and!142899)))

(declare-fun b!1833386 () Bool)

(declare-fun b_free!51335 () Bool)

(declare-fun b_next!52039 () Bool)

(assert (=> b!1833386 (= b_free!51335 (not b_next!52039))))

(declare-fun tp!518745 () Bool)

(declare-fun b_and!142901 () Bool)

(assert (=> b!1833386 (= tp!518745 b_and!142901)))

(declare-fun b_free!51337 () Bool)

(declare-fun b_next!52041 () Bool)

(assert (=> b!1833386 (= b_free!51337 (not b_next!52041))))

(declare-fun tp!518740 () Bool)

(declare-fun b_and!142903 () Bool)

(assert (=> b!1833386 (= tp!518740 b_and!142903)))

(declare-fun b!1833384 () Bool)

(declare-fun e!1171786 () Bool)

(declare-datatypes ((C!10120 0))(
  ( (C!10121 (val!5656 Int)) )
))
(declare-datatypes ((Regex!4973 0))(
  ( (ElementMatch!4973 (c!298994 C!10120)) (Concat!8708 (regOne!10458 Regex!4973) (regTwo!10458 Regex!4973)) (EmptyExpr!4973) (Star!4973 (reg!5302 Regex!4973)) (EmptyLang!4973) (Union!4973 (regOne!10459 Regex!4973) (regTwo!10459 Regex!4973)) )
))
(declare-datatypes ((List!20233 0))(
  ( (Nil!20163) (Cons!20163 (h!25564 (_ BitVec 16)) (t!170986 List!20233)) )
))
(declare-datatypes ((TokenValue!3735 0))(
  ( (FloatLiteralValue!7470 (text!26590 List!20233)) (TokenValueExt!3734 (__x!12772 Int)) (Broken!18675 (value!113523 List!20233)) (Object!3804) (End!3735) (Def!3735) (Underscore!3735) (Match!3735) (Else!3735) (Error!3735) (Case!3735) (If!3735) (Extends!3735) (Abstract!3735) (Class!3735) (Val!3735) (DelimiterValue!7470 (del!3795 List!20233)) (KeywordValue!3741 (value!113524 List!20233)) (CommentValue!7470 (value!113525 List!20233)) (WhitespaceValue!7470 (value!113526 List!20233)) (IndentationValue!3735 (value!113527 List!20233)) (String!23006) (Int32!3735) (Broken!18676 (value!113528 List!20233)) (Boolean!3736) (Unit!34840) (OperatorValue!3738 (op!3795 List!20233)) (IdentifierValue!7470 (value!113529 List!20233)) (IdentifierValue!7471 (value!113530 List!20233)) (WhitespaceValue!7471 (value!113531 List!20233)) (True!7470) (False!7470) (Broken!18677 (value!113532 List!20233)) (Broken!18678 (value!113533 List!20233)) (True!7471) (RightBrace!3735) (RightBracket!3735) (Colon!3735) (Null!3735) (Comma!3735) (LeftBracket!3735) (False!7471) (LeftBrace!3735) (ImaginaryLiteralValue!3735 (text!26591 List!20233)) (StringLiteralValue!11205 (value!113534 List!20233)) (EOFValue!3735 (value!113535 List!20233)) (IdentValue!3735 (value!113536 List!20233)) (DelimiterValue!7471 (value!113537 List!20233)) (DedentValue!3735 (value!113538 List!20233)) (NewLineValue!3735 (value!113539 List!20233)) (IntegerValue!11205 (value!113540 (_ BitVec 32)) (text!26592 List!20233)) (IntegerValue!11206 (value!113541 Int) (text!26593 List!20233)) (Times!3735) (Or!3735) (Equal!3735) (Minus!3735) (Broken!18679 (value!113542 List!20233)) (And!3735) (Div!3735) (LessEqual!3735) (Mod!3735) (Concat!8709) (Not!3735) (Plus!3735) (SpaceValue!3735 (value!113543 List!20233)) (IntegerValue!11207 (value!113544 Int) (text!26594 List!20233)) (StringLiteralValue!11206 (text!26595 List!20233)) (FloatLiteralValue!7471 (text!26596 List!20233)) (BytesLiteralValue!3735 (value!113545 List!20233)) (CommentValue!7471 (value!113546 List!20233)) (StringLiteralValue!11207 (value!113547 List!20233)) (ErrorTokenValue!3735 (msg!3796 List!20233)) )
))
(declare-datatypes ((List!20234 0))(
  ( (Nil!20164) (Cons!20164 (h!25565 C!10120) (t!170987 List!20234)) )
))
(declare-datatypes ((IArray!13359 0))(
  ( (IArray!13360 (innerList!6737 List!20234)) )
))
(declare-datatypes ((Conc!6677 0))(
  ( (Node!6677 (left!16113 Conc!6677) (right!16443 Conc!6677) (csize!13584 Int) (cheight!6888 Int)) (Leaf!9720 (xs!9553 IArray!13359) (csize!13585 Int)) (Empty!6677) )
))
(declare-datatypes ((BalanceConc!13298 0))(
  ( (BalanceConc!13299 (c!298995 Conc!6677)) )
))
(declare-datatypes ((TokenValueInjection!7130 0))(
  ( (TokenValueInjection!7131 (toValue!5192 Int) (toChars!5051 Int)) )
))
(declare-datatypes ((String!23007 0))(
  ( (String!23008 (value!113548 String)) )
))
(declare-datatypes ((Rule!7090 0))(
  ( (Rule!7091 (regex!3645 Regex!4973) (tag!4059 String!23007) (isSeparator!3645 Bool) (transformation!3645 TokenValueInjection!7130)) )
))
(declare-datatypes ((List!20235 0))(
  ( (Nil!20165) (Cons!20165 (h!25566 Rule!7090) (t!170988 List!20235)) )
))
(declare-fun rs!808 () List!20235)

(declare-fun ListPrimitiveSize!112 (List!20235) Int)

(assert (=> b!1833384 (= e!1171786 (< (ListPrimitiveSize!112 (t!170988 rs!808)) (ListPrimitiveSize!112 rs!808)))))

(declare-fun b!1833385 () Bool)

(declare-fun res!824424 () Bool)

(declare-fun e!1171796 () Bool)

(assert (=> b!1833385 (=> (not res!824424) (not e!1171796))))

(declare-datatypes ((Token!6844 0))(
  ( (Token!6845 (value!113549 TokenValue!3735) (rule!5825 Rule!7090) (size!15991 Int) (originalCharacters!4453 List!20234)) )
))
(declare-fun token!567 () Token!6844)

(declare-fun rule!580 () Rule!7090)

(assert (=> b!1833385 (= res!824424 (= (rule!5825 token!567) rule!580))))

(declare-fun e!1171795 () Bool)

(assert (=> b!1833386 (= e!1171795 (and tp!518745 tp!518740))))

(declare-fun b!1833387 () Bool)

(declare-fun res!824421 () Bool)

(declare-fun e!1171781 () Bool)

(assert (=> b!1833387 (=> res!824421 e!1171781)))

(declare-fun lt!711743 () List!20234)

(declare-fun matchR!2436 (Regex!4973 List!20234) Bool)

(assert (=> b!1833387 (= res!824421 (not (matchR!2436 (regex!3645 rule!580) lt!711743)))))

(declare-fun e!1171793 () Bool)

(assert (=> b!1833388 (= e!1171793 (and tp!518732 tp!518739))))

(declare-fun b!1833389 () Bool)

(declare-fun res!824426 () Bool)

(assert (=> b!1833389 (=> (not res!824426) (not e!1171796))))

(declare-fun e!1171794 () Bool)

(assert (=> b!1833389 (= res!824426 e!1171794)))

(declare-fun res!824429 () Bool)

(assert (=> b!1833389 (=> (not res!824429) (not e!1171794))))

(declare-fun suffix!1698 () List!20234)

(declare-fun input!3681 () List!20234)

(declare-fun lt!711744 () List!20234)

(declare-fun ++!5469 (List!20234 List!20234) List!20234)

(assert (=> b!1833389 (= res!824429 (= input!3681 (++!5469 lt!711744 suffix!1698)))))

(declare-fun list!8193 (BalanceConc!13298) List!20234)

(declare-fun charsOf!2288 (Token!6844) BalanceConc!13298)

(assert (=> b!1833389 (= lt!711744 (list!8193 (charsOf!2288 token!567)))))

(declare-fun b!1833390 () Bool)

(declare-fun e!1171788 () Bool)

(declare-fun e!1171800 () Bool)

(declare-fun tp!518734 () Bool)

(assert (=> b!1833390 (= e!1171788 (and e!1171800 tp!518734))))

(declare-fun b!1833391 () Bool)

(declare-fun e!1171789 () Bool)

(declare-fun tp!518744 () Bool)

(declare-fun e!1171802 () Bool)

(declare-fun inv!21 (TokenValue!3735) Bool)

(assert (=> b!1833391 (= e!1171802 (and (inv!21 (value!113549 token!567)) e!1171789 tp!518744))))

(declare-fun b!1833392 () Bool)

(assert (=> b!1833392 (= e!1171781 e!1171786)))

(declare-fun res!824433 () Bool)

(assert (=> b!1833392 (=> res!824433 e!1171786)))

(declare-fun rules!4610 () List!20235)

(declare-datatypes ((LexerInterface!3274 0))(
  ( (LexerInterfaceExt!3271 (__x!12773 Int)) (Lexer!3272) )
))
(declare-fun thiss!28318 () LexerInterface!3274)

(declare-fun lambda!72058 () Int)

(declare-fun rulesRegex!965 (LexerInterface!3274 List!20235) Regex!4973)

(declare-datatypes ((List!20236 0))(
  ( (Nil!20166) (Cons!20166 (h!25567 Regex!4973) (t!170989 List!20236)) )
))
(declare-fun generalisedUnion!488 (List!20236) Regex!4973)

(declare-fun map!4186 (List!20235 Int) List!20236)

(assert (=> b!1833392 (= res!824433 (not (= (rulesRegex!965 thiss!28318 rules!4610) (generalisedUnion!488 (map!4186 rules!4610 lambda!72058)))))))

(declare-datatypes ((Unit!34841 0))(
  ( (Unit!34842) )
))
(declare-fun lt!711747 () Unit!34841)

(declare-fun lemma!542 (List!20234 Rule!7090 List!20235 List!20234 LexerInterface!3274 Token!6844 List!20235) Unit!34841)

(assert (=> b!1833392 (= lt!711747 (lemma!542 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610))))

(declare-fun b!1833393 () Bool)

(declare-fun e!1171784 () Bool)

(declare-fun e!1171801 () Bool)

(declare-fun tp!518730 () Bool)

(declare-fun inv!26228 (String!23007) Bool)

(declare-fun inv!26231 (TokenValueInjection!7130) Bool)

(assert (=> b!1833393 (= e!1171801 (and tp!518730 (inv!26228 (tag!4059 (h!25566 rules!4610))) (inv!26231 (transformation!3645 (h!25566 rules!4610))) e!1171784))))

(declare-fun b!1833394 () Bool)

(declare-fun res!824434 () Bool)

(assert (=> b!1833394 (=> (not res!824434) (not e!1171796))))

(declare-datatypes ((tuple2!19618 0))(
  ( (tuple2!19619 (_1!11211 Token!6844) (_2!11211 List!20234)) )
))
(declare-datatypes ((Option!4225 0))(
  ( (None!4224) (Some!4224 (v!25801 tuple2!19618)) )
))
(declare-fun maxPrefix!1822 (LexerInterface!3274 List!20235 List!20234) Option!4225)

(assert (=> b!1833394 (= res!824434 (= (maxPrefix!1822 thiss!28318 rules!4610 input!3681) (Some!4224 (tuple2!19619 token!567 suffix!1698))))))

(declare-fun b!1833395 () Bool)

(assert (=> b!1833395 (= e!1171794 (not (not (matchR!2436 (regex!3645 rule!580) lt!711744))))))

(declare-fun ruleValid!1135 (LexerInterface!3274 Rule!7090) Bool)

(assert (=> b!1833395 (ruleValid!1135 thiss!28318 rule!580)))

(declare-fun lt!711742 () Unit!34841)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!654 (LexerInterface!3274 Rule!7090 List!20235) Unit!34841)

(assert (=> b!1833395 (= lt!711742 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!654 thiss!28318 rule!580 rules!4610))))

(declare-fun b!1833396 () Bool)

(assert (=> b!1833396 (= e!1171796 (not e!1171781))))

(declare-fun res!824427 () Bool)

(assert (=> b!1833396 (=> res!824427 e!1171781)))

(declare-fun lt!711741 () Option!4225)

(assert (=> b!1833396 (= res!824427 (not (= lt!711741 (Some!4224 (tuple2!19619 token!567 suffix!1698)))))))

(declare-fun lt!711746 () Int)

(declare-fun lt!711745 () TokenValue!3735)

(assert (=> b!1833396 (= lt!711741 (Some!4224 (tuple2!19619 (Token!6845 lt!711745 rule!580 lt!711746 lt!711743) suffix!1698)))))

(declare-fun maxPrefixOneRule!1183 (LexerInterface!3274 Rule!7090 List!20234) Option!4225)

(assert (=> b!1833396 (= lt!711741 (maxPrefixOneRule!1183 thiss!28318 rule!580 input!3681))))

(declare-fun size!15992 (List!20234) Int)

(assert (=> b!1833396 (= lt!711746 (size!15992 lt!711743))))

(declare-fun apply!5433 (TokenValueInjection!7130 BalanceConc!13298) TokenValue!3735)

(declare-fun seqFromList!2602 (List!20234) BalanceConc!13298)

(assert (=> b!1833396 (= lt!711745 (apply!5433 (transformation!3645 rule!580) (seqFromList!2602 lt!711743)))))

(declare-fun lt!711748 () Unit!34841)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!553 (LexerInterface!3274 List!20235 List!20234 List!20234 List!20234 Rule!7090) Unit!34841)

(assert (=> b!1833396 (= lt!711748 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!553 thiss!28318 rules!4610 lt!711743 input!3681 suffix!1698 rule!580))))

(assert (=> b!1833396 (= lt!711743 (list!8193 (charsOf!2288 token!567)))))

(declare-fun e!1171787 () Bool)

(declare-fun tp!518743 () Bool)

(declare-fun b!1833397 () Bool)

(assert (=> b!1833397 (= e!1171800 (and tp!518743 (inv!26228 (tag!4059 (h!25566 rs!808))) (inv!26231 (transformation!3645 (h!25566 rs!808))) e!1171787))))

(declare-fun res!824422 () Bool)

(assert (=> start!182050 (=> (not res!824422) (not e!1171796))))

(get-info :version)

(assert (=> start!182050 (= res!824422 ((_ is Lexer!3272) thiss!28318))))

(assert (=> start!182050 e!1171796))

(declare-fun e!1171790 () Bool)

(assert (=> start!182050 e!1171790))

(declare-fun inv!26232 (Token!6844) Bool)

(assert (=> start!182050 (and (inv!26232 token!567) e!1171802)))

(assert (=> start!182050 true))

(declare-fun e!1171799 () Bool)

(assert (=> start!182050 e!1171799))

(declare-fun e!1171798 () Bool)

(assert (=> start!182050 e!1171798))

(declare-fun e!1171782 () Bool)

(assert (=> start!182050 e!1171782))

(assert (=> start!182050 e!1171788))

(assert (=> b!1833398 (= e!1171784 (and tp!518742 tp!518741))))

(declare-fun b!1833399 () Bool)

(declare-fun tp_is_empty!8181 () Bool)

(declare-fun tp!518746 () Bool)

(assert (=> b!1833399 (= e!1171798 (and tp_is_empty!8181 tp!518746))))

(declare-fun b!1833400 () Bool)

(declare-fun tp!518733 () Bool)

(assert (=> b!1833400 (= e!1171799 (and tp_is_empty!8181 tp!518733))))

(declare-fun b!1833401 () Bool)

(declare-fun res!824423 () Bool)

(assert (=> b!1833401 (=> (not res!824423) (not e!1171796))))

(declare-fun contains!3721 (List!20235 Rule!7090) Bool)

(assert (=> b!1833401 (= res!824423 (contains!3721 rules!4610 rule!580))))

(declare-fun b!1833402 () Bool)

(declare-fun tp!518731 () Bool)

(assert (=> b!1833402 (= e!1171782 (and e!1171801 tp!518731))))

(assert (=> b!1833403 (= e!1171787 (and tp!518738 tp!518736))))

(declare-fun tp!518737 () Bool)

(declare-fun b!1833404 () Bool)

(assert (=> b!1833404 (= e!1171790 (and tp!518737 (inv!26228 (tag!4059 rule!580)) (inv!26231 (transformation!3645 rule!580)) e!1171795))))

(declare-fun b!1833405 () Bool)

(declare-fun res!824432 () Bool)

(assert (=> b!1833405 (=> res!824432 e!1171786)))

(assert (=> b!1833405 (= res!824432 (or (not ((_ is Cons!20165) rs!808)) (= (h!25566 rs!808) rule!580)))))

(declare-fun b!1833406 () Bool)

(declare-fun res!824425 () Bool)

(assert (=> b!1833406 (=> res!824425 e!1171786)))

(declare-fun rulesValid!1392 (LexerInterface!3274 List!20235) Bool)

(assert (=> b!1833406 (= res!824425 (not (rulesValid!1392 thiss!28318 rs!808)))))

(declare-fun b!1833407 () Bool)

(declare-fun res!824431 () Bool)

(assert (=> b!1833407 (=> res!824431 e!1171786)))

(assert (=> b!1833407 (= res!824431 (not (contains!3721 rs!808 rule!580)))))

(declare-fun b!1833408 () Bool)

(declare-fun res!824428 () Bool)

(assert (=> b!1833408 (=> (not res!824428) (not e!1171796))))

(declare-fun rulesInvariant!2943 (LexerInterface!3274 List!20235) Bool)

(assert (=> b!1833408 (= res!824428 (rulesInvariant!2943 thiss!28318 rules!4610))))

(declare-fun b!1833409 () Bool)

(declare-fun res!824430 () Bool)

(assert (=> b!1833409 (=> (not res!824430) (not e!1171796))))

(declare-fun isEmpty!12729 (List!20235) Bool)

(assert (=> b!1833409 (= res!824430 (not (isEmpty!12729 rules!4610)))))

(declare-fun b!1833410 () Bool)

(declare-fun tp!518735 () Bool)

(assert (=> b!1833410 (= e!1171789 (and tp!518735 (inv!26228 (tag!4059 (rule!5825 token!567))) (inv!26231 (transformation!3645 (rule!5825 token!567))) e!1171793))))

(assert (= (and start!182050 res!824422) b!1833409))

(assert (= (and b!1833409 res!824430) b!1833408))

(assert (= (and b!1833408 res!824428) b!1833401))

(assert (= (and b!1833401 res!824423) b!1833394))

(assert (= (and b!1833394 res!824434) b!1833385))

(assert (= (and b!1833385 res!824424) b!1833389))

(assert (= (and b!1833389 res!824429) b!1833395))

(assert (= (and b!1833389 res!824426) b!1833396))

(assert (= (and b!1833396 (not res!824427)) b!1833387))

(assert (= (and b!1833387 (not res!824421)) b!1833392))

(assert (= (and b!1833392 (not res!824433)) b!1833406))

(assert (= (and b!1833406 (not res!824425)) b!1833407))

(assert (= (and b!1833407 (not res!824431)) b!1833405))

(assert (= (and b!1833405 (not res!824432)) b!1833384))

(assert (= b!1833404 b!1833386))

(assert (= start!182050 b!1833404))

(assert (= b!1833410 b!1833388))

(assert (= b!1833391 b!1833410))

(assert (= start!182050 b!1833391))

(assert (= (and start!182050 ((_ is Cons!20164) suffix!1698)) b!1833400))

(assert (= (and start!182050 ((_ is Cons!20164) input!3681)) b!1833399))

(assert (= b!1833393 b!1833398))

(assert (= b!1833402 b!1833393))

(assert (= (and start!182050 ((_ is Cons!20165) rules!4610)) b!1833402))

(assert (= b!1833397 b!1833403))

(assert (= b!1833390 b!1833397))

(assert (= (and start!182050 ((_ is Cons!20165) rs!808)) b!1833390))

(declare-fun m!2261069 () Bool)

(assert (=> b!1833401 m!2261069))

(declare-fun m!2261071 () Bool)

(assert (=> b!1833393 m!2261071))

(declare-fun m!2261073 () Bool)

(assert (=> b!1833393 m!2261073))

(declare-fun m!2261075 () Bool)

(assert (=> b!1833392 m!2261075))

(declare-fun m!2261077 () Bool)

(assert (=> b!1833392 m!2261077))

(assert (=> b!1833392 m!2261077))

(declare-fun m!2261079 () Bool)

(assert (=> b!1833392 m!2261079))

(declare-fun m!2261081 () Bool)

(assert (=> b!1833392 m!2261081))

(declare-fun m!2261083 () Bool)

(assert (=> b!1833406 m!2261083))

(declare-fun m!2261085 () Bool)

(assert (=> b!1833384 m!2261085))

(declare-fun m!2261087 () Bool)

(assert (=> b!1833384 m!2261087))

(declare-fun m!2261089 () Bool)

(assert (=> b!1833407 m!2261089))

(declare-fun m!2261091 () Bool)

(assert (=> b!1833408 m!2261091))

(declare-fun m!2261093 () Bool)

(assert (=> start!182050 m!2261093))

(declare-fun m!2261095 () Bool)

(assert (=> b!1833409 m!2261095))

(declare-fun m!2261097 () Bool)

(assert (=> b!1833394 m!2261097))

(declare-fun m!2261099 () Bool)

(assert (=> b!1833404 m!2261099))

(declare-fun m!2261101 () Bool)

(assert (=> b!1833404 m!2261101))

(declare-fun m!2261103 () Bool)

(assert (=> b!1833389 m!2261103))

(declare-fun m!2261105 () Bool)

(assert (=> b!1833389 m!2261105))

(assert (=> b!1833389 m!2261105))

(declare-fun m!2261107 () Bool)

(assert (=> b!1833389 m!2261107))

(declare-fun m!2261109 () Bool)

(assert (=> b!1833391 m!2261109))

(declare-fun m!2261111 () Bool)

(assert (=> b!1833395 m!2261111))

(declare-fun m!2261113 () Bool)

(assert (=> b!1833395 m!2261113))

(declare-fun m!2261115 () Bool)

(assert (=> b!1833395 m!2261115))

(declare-fun m!2261117 () Bool)

(assert (=> b!1833396 m!2261117))

(declare-fun m!2261119 () Bool)

(assert (=> b!1833396 m!2261119))

(declare-fun m!2261121 () Bool)

(assert (=> b!1833396 m!2261121))

(declare-fun m!2261123 () Bool)

(assert (=> b!1833396 m!2261123))

(assert (=> b!1833396 m!2261119))

(assert (=> b!1833396 m!2261105))

(assert (=> b!1833396 m!2261107))

(assert (=> b!1833396 m!2261105))

(declare-fun m!2261125 () Bool)

(assert (=> b!1833396 m!2261125))

(declare-fun m!2261127 () Bool)

(assert (=> b!1833410 m!2261127))

(declare-fun m!2261129 () Bool)

(assert (=> b!1833410 m!2261129))

(declare-fun m!2261131 () Bool)

(assert (=> b!1833397 m!2261131))

(declare-fun m!2261133 () Bool)

(assert (=> b!1833397 m!2261133))

(declare-fun m!2261135 () Bool)

(assert (=> b!1833387 m!2261135))

(check-sat b_and!142897 (not start!182050) (not b!1833407) (not b!1833391) (not b!1833384) b_and!142893 b_and!142903 (not b!1833402) (not b!1833395) (not b_next!52033) (not b!1833408) (not b!1833393) (not b!1833404) (not b!1833394) (not b_next!52031) (not b!1833390) (not b_next!52029) (not b!1833387) (not b!1833400) b_and!142891 b_and!142899 (not b!1833399) (not b!1833401) (not b!1833389) b_and!142895 (not b_next!52035) b_and!142901 (not b_next!52037) tp_is_empty!8181 (not b!1833397) (not b!1833392) (not b!1833406) (not b_next!52041) b_and!142889 (not b!1833409) (not b_next!52039) (not b_next!52027) (not b!1833396) (not b!1833410))
(check-sat b_and!142897 b_and!142893 b_and!142903 (not b_next!52033) (not b_next!52041) b_and!142889 (not b_next!52031) (not b_next!52029) b_and!142891 b_and!142899 b_and!142895 (not b_next!52035) b_and!142901 (not b_next!52037) (not b_next!52039) (not b_next!52027))
(get-model)

(declare-fun d!560479 () Bool)

(assert (=> d!560479 (= (isEmpty!12729 rules!4610) ((_ is Nil!20165) rules!4610))))

(assert (=> b!1833409 d!560479))

(declare-fun b!1833440 () Bool)

(declare-fun e!1171823 () List!20234)

(assert (=> b!1833440 (= e!1171823 (Cons!20164 (h!25565 lt!711744) (++!5469 (t!170987 lt!711744) suffix!1698)))))

(declare-fun lt!711756 () List!20234)

(declare-fun e!1171822 () Bool)

(declare-fun b!1833442 () Bool)

(assert (=> b!1833442 (= e!1171822 (or (not (= suffix!1698 Nil!20164)) (= lt!711756 lt!711744)))))

(declare-fun b!1833439 () Bool)

(assert (=> b!1833439 (= e!1171823 suffix!1698)))

(declare-fun b!1833441 () Bool)

(declare-fun res!824462 () Bool)

(assert (=> b!1833441 (=> (not res!824462) (not e!1171822))))

(assert (=> b!1833441 (= res!824462 (= (size!15992 lt!711756) (+ (size!15992 lt!711744) (size!15992 suffix!1698))))))

(declare-fun d!560481 () Bool)

(assert (=> d!560481 e!1171822))

(declare-fun res!824463 () Bool)

(assert (=> d!560481 (=> (not res!824463) (not e!1171822))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2991 (List!20234) (InoxSet C!10120))

(assert (=> d!560481 (= res!824463 (= (content!2991 lt!711756) ((_ map or) (content!2991 lt!711744) (content!2991 suffix!1698))))))

(assert (=> d!560481 (= lt!711756 e!1171823)))

(declare-fun c!298998 () Bool)

(assert (=> d!560481 (= c!298998 ((_ is Nil!20164) lt!711744))))

(assert (=> d!560481 (= (++!5469 lt!711744 suffix!1698) lt!711756)))

(assert (= (and d!560481 c!298998) b!1833439))

(assert (= (and d!560481 (not c!298998)) b!1833440))

(assert (= (and d!560481 res!824463) b!1833441))

(assert (= (and b!1833441 res!824462) b!1833442))

(declare-fun m!2261159 () Bool)

(assert (=> b!1833440 m!2261159))

(declare-fun m!2261161 () Bool)

(assert (=> b!1833441 m!2261161))

(declare-fun m!2261163 () Bool)

(assert (=> b!1833441 m!2261163))

(declare-fun m!2261165 () Bool)

(assert (=> b!1833441 m!2261165))

(declare-fun m!2261167 () Bool)

(assert (=> d!560481 m!2261167))

(declare-fun m!2261169 () Bool)

(assert (=> d!560481 m!2261169))

(declare-fun m!2261171 () Bool)

(assert (=> d!560481 m!2261171))

(assert (=> b!1833389 d!560481))

(declare-fun d!560483 () Bool)

(declare-fun list!8195 (Conc!6677) List!20234)

(assert (=> d!560483 (= (list!8193 (charsOf!2288 token!567)) (list!8195 (c!298995 (charsOf!2288 token!567))))))

(declare-fun bs!408048 () Bool)

(assert (= bs!408048 d!560483))

(declare-fun m!2261173 () Bool)

(assert (=> bs!408048 m!2261173))

(assert (=> b!1833389 d!560483))

(declare-fun d!560485 () Bool)

(declare-fun lt!711759 () BalanceConc!13298)

(assert (=> d!560485 (= (list!8193 lt!711759) (originalCharacters!4453 token!567))))

(declare-fun dynLambda!10033 (Int TokenValue!3735) BalanceConc!13298)

(assert (=> d!560485 (= lt!711759 (dynLambda!10033 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (value!113549 token!567)))))

(assert (=> d!560485 (= (charsOf!2288 token!567) lt!711759)))

(declare-fun b_lambda!60699 () Bool)

(assert (=> (not b_lambda!60699) (not d!560485)))

(declare-fun t!170999 () Bool)

(declare-fun tb!112145 () Bool)

(assert (=> (and b!1833388 (= (toChars!5051 (transformation!3645 (rule!5825 token!567))) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!170999) tb!112145))

(declare-fun b!1833447 () Bool)

(declare-fun e!1171826 () Bool)

(declare-fun tp!518752 () Bool)

(declare-fun inv!26235 (Conc!6677) Bool)

(assert (=> b!1833447 (= e!1171826 (and (inv!26235 (c!298995 (dynLambda!10033 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (value!113549 token!567)))) tp!518752))))

(declare-fun result!134866 () Bool)

(declare-fun inv!26236 (BalanceConc!13298) Bool)

(assert (=> tb!112145 (= result!134866 (and (inv!26236 (dynLambda!10033 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (value!113549 token!567))) e!1171826))))

(assert (= tb!112145 b!1833447))

(declare-fun m!2261175 () Bool)

(assert (=> b!1833447 m!2261175))

(declare-fun m!2261177 () Bool)

(assert (=> tb!112145 m!2261177))

(assert (=> d!560485 t!170999))

(declare-fun b_and!142913 () Bool)

(assert (= b_and!142891 (and (=> t!170999 result!134866) b_and!142913)))

(declare-fun tb!112147 () Bool)

(declare-fun t!171001 () Bool)

(assert (=> (and b!1833398 (= (toChars!5051 (transformation!3645 (h!25566 rules!4610))) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!171001) tb!112147))

(declare-fun result!134870 () Bool)

(assert (= result!134870 result!134866))

(assert (=> d!560485 t!171001))

(declare-fun b_and!142915 () Bool)

(assert (= b_and!142895 (and (=> t!171001 result!134870) b_and!142915)))

(declare-fun t!171003 () Bool)

(declare-fun tb!112149 () Bool)

(assert (=> (and b!1833403 (= (toChars!5051 (transformation!3645 (h!25566 rs!808))) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!171003) tb!112149))

(declare-fun result!134872 () Bool)

(assert (= result!134872 result!134866))

(assert (=> d!560485 t!171003))

(declare-fun b_and!142917 () Bool)

(assert (= b_and!142899 (and (=> t!171003 result!134872) b_and!142917)))

(declare-fun tb!112151 () Bool)

(declare-fun t!171005 () Bool)

(assert (=> (and b!1833386 (= (toChars!5051 (transformation!3645 rule!580)) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!171005) tb!112151))

(declare-fun result!134874 () Bool)

(assert (= result!134874 result!134866))

(assert (=> d!560485 t!171005))

(declare-fun b_and!142919 () Bool)

(assert (= b_and!142903 (and (=> t!171005 result!134874) b_and!142919)))

(declare-fun m!2261179 () Bool)

(assert (=> d!560485 m!2261179))

(declare-fun m!2261181 () Bool)

(assert (=> d!560485 m!2261181))

(assert (=> b!1833389 d!560485))

(declare-fun d!560487 () Bool)

(assert (=> d!560487 (= (inv!26228 (tag!4059 (rule!5825 token!567))) (= (mod (str.len (value!113548 (tag!4059 (rule!5825 token!567)))) 2) 0))))

(assert (=> b!1833410 d!560487))

(declare-fun d!560489 () Bool)

(declare-fun res!824466 () Bool)

(declare-fun e!1171829 () Bool)

(assert (=> d!560489 (=> (not res!824466) (not e!1171829))))

(declare-fun semiInverseModEq!1466 (Int Int) Bool)

(assert (=> d!560489 (= res!824466 (semiInverseModEq!1466 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (toValue!5192 (transformation!3645 (rule!5825 token!567)))))))

(assert (=> d!560489 (= (inv!26231 (transformation!3645 (rule!5825 token!567))) e!1171829)))

(declare-fun b!1833450 () Bool)

(declare-fun equivClasses!1407 (Int Int) Bool)

(assert (=> b!1833450 (= e!1171829 (equivClasses!1407 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (toValue!5192 (transformation!3645 (rule!5825 token!567)))))))

(assert (= (and d!560489 res!824466) b!1833450))

(declare-fun m!2261183 () Bool)

(assert (=> d!560489 m!2261183))

(declare-fun m!2261185 () Bool)

(assert (=> b!1833450 m!2261185))

(assert (=> b!1833410 d!560489))

(declare-fun d!560491 () Bool)

(assert (=> d!560491 true))

(declare-fun lt!711804 () Bool)

(declare-fun rulesValidInductive!1260 (LexerInterface!3274 List!20235) Bool)

(assert (=> d!560491 (= lt!711804 (rulesValidInductive!1260 thiss!28318 rs!808))))

(declare-fun lambda!72076 () Int)

(declare-fun forall!4344 (List!20235 Int) Bool)

(assert (=> d!560491 (= lt!711804 (forall!4344 rs!808 lambda!72076))))

(assert (=> d!560491 (= (rulesValid!1392 thiss!28318 rs!808) lt!711804)))

(declare-fun bs!408055 () Bool)

(assert (= bs!408055 d!560491))

(declare-fun m!2261277 () Bool)

(assert (=> bs!408055 m!2261277))

(declare-fun m!2261279 () Bool)

(assert (=> bs!408055 m!2261279))

(assert (=> b!1833406 d!560491))

(declare-fun d!560505 () Bool)

(declare-fun lt!711807 () Bool)

(declare-fun content!2993 (List!20235) (InoxSet Rule!7090))

(assert (=> d!560505 (= lt!711807 (select (content!2993 rs!808) rule!580))))

(declare-fun e!1171881 () Bool)

(assert (=> d!560505 (= lt!711807 e!1171881)))

(declare-fun res!824515 () Bool)

(assert (=> d!560505 (=> (not res!824515) (not e!1171881))))

(assert (=> d!560505 (= res!824515 ((_ is Cons!20165) rs!808))))

(assert (=> d!560505 (= (contains!3721 rs!808 rule!580) lt!711807)))

(declare-fun b!1833556 () Bool)

(declare-fun e!1171882 () Bool)

(assert (=> b!1833556 (= e!1171881 e!1171882)))

(declare-fun res!824514 () Bool)

(assert (=> b!1833556 (=> res!824514 e!1171882)))

(assert (=> b!1833556 (= res!824514 (= (h!25566 rs!808) rule!580))))

(declare-fun b!1833557 () Bool)

(assert (=> b!1833557 (= e!1171882 (contains!3721 (t!170988 rs!808) rule!580))))

(assert (= (and d!560505 res!824515) b!1833556))

(assert (= (and b!1833556 (not res!824514)) b!1833557))

(declare-fun m!2261281 () Bool)

(assert (=> d!560505 m!2261281))

(declare-fun m!2261283 () Bool)

(assert (=> d!560505 m!2261283))

(declare-fun m!2261285 () Bool)

(assert (=> b!1833557 m!2261285))

(assert (=> b!1833407 d!560505))

(assert (=> b!1833396 d!560483))

(declare-fun b!1833608 () Bool)

(declare-fun e!1171908 () Bool)

(declare-fun lt!711829 () Option!4225)

(declare-fun get!6225 (Option!4225) tuple2!19618)

(assert (=> b!1833608 (= e!1171908 (= (size!15991 (_1!11211 (get!6225 lt!711829))) (size!15992 (originalCharacters!4453 (_1!11211 (get!6225 lt!711829))))))))

(declare-fun b!1833609 () Bool)

(declare-fun e!1171907 () Option!4225)

(declare-datatypes ((tuple2!19622 0))(
  ( (tuple2!19623 (_1!11213 List!20234) (_2!11213 List!20234)) )
))
(declare-fun lt!711832 () tuple2!19622)

(declare-fun size!15996 (BalanceConc!13298) Int)

(assert (=> b!1833609 (= e!1171907 (Some!4224 (tuple2!19619 (Token!6845 (apply!5433 (transformation!3645 rule!580) (seqFromList!2602 (_1!11213 lt!711832))) rule!580 (size!15996 (seqFromList!2602 (_1!11213 lt!711832))) (_1!11213 lt!711832)) (_2!11213 lt!711832))))))

(declare-fun lt!711831 () Unit!34841)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!505 (Regex!4973 List!20234) Unit!34841)

(assert (=> b!1833609 (= lt!711831 (longestMatchIsAcceptedByMatchOrIsEmpty!505 (regex!3645 rule!580) input!3681))))

(declare-fun res!824557 () Bool)

(declare-fun isEmpty!12733 (List!20234) Bool)

(declare-fun findLongestMatchInner!521 (Regex!4973 List!20234 Int List!20234 List!20234 Int) tuple2!19622)

(assert (=> b!1833609 (= res!824557 (isEmpty!12733 (_1!11213 (findLongestMatchInner!521 (regex!3645 rule!580) Nil!20164 (size!15992 Nil!20164) input!3681 input!3681 (size!15992 input!3681)))))))

(declare-fun e!1171909 () Bool)

(assert (=> b!1833609 (=> res!824557 e!1171909)))

(assert (=> b!1833609 e!1171909))

(declare-fun lt!711833 () Unit!34841)

(assert (=> b!1833609 (= lt!711833 lt!711831)))

(declare-fun lt!711830 () Unit!34841)

(declare-fun lemmaSemiInverse!735 (TokenValueInjection!7130 BalanceConc!13298) Unit!34841)

(assert (=> b!1833609 (= lt!711830 (lemmaSemiInverse!735 (transformation!3645 rule!580) (seqFromList!2602 (_1!11213 lt!711832))))))

(declare-fun b!1833610 () Bool)

(declare-fun res!824556 () Bool)

(assert (=> b!1833610 (=> (not res!824556) (not e!1171908))))

(assert (=> b!1833610 (= res!824556 (= (value!113549 (_1!11211 (get!6225 lt!711829))) (apply!5433 (transformation!3645 (rule!5825 (_1!11211 (get!6225 lt!711829)))) (seqFromList!2602 (originalCharacters!4453 (_1!11211 (get!6225 lt!711829)))))))))

(declare-fun b!1833611 () Bool)

(assert (=> b!1833611 (= e!1171907 None!4224)))

(declare-fun b!1833612 () Bool)

(declare-fun e!1171906 () Bool)

(assert (=> b!1833612 (= e!1171906 e!1171908)))

(declare-fun res!824552 () Bool)

(assert (=> b!1833612 (=> (not res!824552) (not e!1171908))))

(assert (=> b!1833612 (= res!824552 (matchR!2436 (regex!3645 rule!580) (list!8193 (charsOf!2288 (_1!11211 (get!6225 lt!711829))))))))

(declare-fun b!1833614 () Bool)

(declare-fun res!824555 () Bool)

(assert (=> b!1833614 (=> (not res!824555) (not e!1171908))))

(assert (=> b!1833614 (= res!824555 (< (size!15992 (_2!11211 (get!6225 lt!711829))) (size!15992 input!3681)))))

(declare-fun b!1833615 () Bool)

(declare-fun res!824553 () Bool)

(assert (=> b!1833615 (=> (not res!824553) (not e!1171908))))

(assert (=> b!1833615 (= res!824553 (= (++!5469 (list!8193 (charsOf!2288 (_1!11211 (get!6225 lt!711829)))) (_2!11211 (get!6225 lt!711829))) input!3681))))

(declare-fun b!1833616 () Bool)

(assert (=> b!1833616 (= e!1171909 (matchR!2436 (regex!3645 rule!580) (_1!11213 (findLongestMatchInner!521 (regex!3645 rule!580) Nil!20164 (size!15992 Nil!20164) input!3681 input!3681 (size!15992 input!3681)))))))

(declare-fun b!1833613 () Bool)

(declare-fun res!824558 () Bool)

(assert (=> b!1833613 (=> (not res!824558) (not e!1171908))))

(assert (=> b!1833613 (= res!824558 (= (rule!5825 (_1!11211 (get!6225 lt!711829))) rule!580))))

(declare-fun d!560507 () Bool)

(assert (=> d!560507 e!1171906))

(declare-fun res!824554 () Bool)

(assert (=> d!560507 (=> res!824554 e!1171906)))

(declare-fun isEmpty!12734 (Option!4225) Bool)

(assert (=> d!560507 (= res!824554 (isEmpty!12734 lt!711829))))

(assert (=> d!560507 (= lt!711829 e!1171907)))

(declare-fun c!299033 () Bool)

(assert (=> d!560507 (= c!299033 (isEmpty!12733 (_1!11213 lt!711832)))))

(declare-fun findLongestMatch!448 (Regex!4973 List!20234) tuple2!19622)

(assert (=> d!560507 (= lt!711832 (findLongestMatch!448 (regex!3645 rule!580) input!3681))))

(assert (=> d!560507 (ruleValid!1135 thiss!28318 rule!580)))

(assert (=> d!560507 (= (maxPrefixOneRule!1183 thiss!28318 rule!580 input!3681) lt!711829)))

(assert (= (and d!560507 c!299033) b!1833611))

(assert (= (and d!560507 (not c!299033)) b!1833609))

(assert (= (and b!1833609 (not res!824557)) b!1833616))

(assert (= (and d!560507 (not res!824554)) b!1833612))

(assert (= (and b!1833612 res!824552) b!1833615))

(assert (= (and b!1833615 res!824553) b!1833614))

(assert (= (and b!1833614 res!824555) b!1833613))

(assert (= (and b!1833613 res!824558) b!1833610))

(assert (= (and b!1833610 res!824556) b!1833608))

(declare-fun m!2261305 () Bool)

(assert (=> b!1833609 m!2261305))

(declare-fun m!2261307 () Bool)

(assert (=> b!1833609 m!2261307))

(declare-fun m!2261309 () Bool)

(assert (=> b!1833609 m!2261309))

(declare-fun m!2261311 () Bool)

(assert (=> b!1833609 m!2261311))

(declare-fun m!2261313 () Bool)

(assert (=> b!1833609 m!2261313))

(declare-fun m!2261315 () Bool)

(assert (=> b!1833609 m!2261315))

(declare-fun m!2261317 () Bool)

(assert (=> b!1833609 m!2261317))

(assert (=> b!1833609 m!2261309))

(assert (=> b!1833609 m!2261315))

(declare-fun m!2261319 () Bool)

(assert (=> b!1833609 m!2261319))

(assert (=> b!1833609 m!2261315))

(declare-fun m!2261321 () Bool)

(assert (=> b!1833609 m!2261321))

(assert (=> b!1833609 m!2261315))

(assert (=> b!1833609 m!2261311))

(declare-fun m!2261323 () Bool)

(assert (=> b!1833610 m!2261323))

(declare-fun m!2261325 () Bool)

(assert (=> b!1833610 m!2261325))

(assert (=> b!1833610 m!2261325))

(declare-fun m!2261327 () Bool)

(assert (=> b!1833610 m!2261327))

(assert (=> b!1833614 m!2261323))

(declare-fun m!2261329 () Bool)

(assert (=> b!1833614 m!2261329))

(assert (=> b!1833614 m!2261311))

(declare-fun m!2261331 () Bool)

(assert (=> d!560507 m!2261331))

(declare-fun m!2261333 () Bool)

(assert (=> d!560507 m!2261333))

(declare-fun m!2261335 () Bool)

(assert (=> d!560507 m!2261335))

(assert (=> d!560507 m!2261113))

(assert (=> b!1833613 m!2261323))

(assert (=> b!1833608 m!2261323))

(declare-fun m!2261337 () Bool)

(assert (=> b!1833608 m!2261337))

(assert (=> b!1833616 m!2261309))

(assert (=> b!1833616 m!2261311))

(assert (=> b!1833616 m!2261309))

(assert (=> b!1833616 m!2261311))

(assert (=> b!1833616 m!2261313))

(declare-fun m!2261339 () Bool)

(assert (=> b!1833616 m!2261339))

(assert (=> b!1833612 m!2261323))

(declare-fun m!2261341 () Bool)

(assert (=> b!1833612 m!2261341))

(assert (=> b!1833612 m!2261341))

(declare-fun m!2261343 () Bool)

(assert (=> b!1833612 m!2261343))

(assert (=> b!1833612 m!2261343))

(declare-fun m!2261345 () Bool)

(assert (=> b!1833612 m!2261345))

(assert (=> b!1833615 m!2261323))

(assert (=> b!1833615 m!2261341))

(assert (=> b!1833615 m!2261341))

(assert (=> b!1833615 m!2261343))

(assert (=> b!1833615 m!2261343))

(declare-fun m!2261347 () Bool)

(assert (=> b!1833615 m!2261347))

(assert (=> b!1833396 d!560507))

(declare-fun d!560513 () Bool)

(assert (=> d!560513 (= (maxPrefixOneRule!1183 thiss!28318 rule!580 input!3681) (Some!4224 (tuple2!19619 (Token!6845 (apply!5433 (transformation!3645 rule!580) (seqFromList!2602 lt!711743)) rule!580 (size!15992 lt!711743) lt!711743) suffix!1698)))))

(declare-fun lt!711841 () Unit!34841)

(declare-fun choose!11542 (LexerInterface!3274 List!20235 List!20234 List!20234 List!20234 Rule!7090) Unit!34841)

(assert (=> d!560513 (= lt!711841 (choose!11542 thiss!28318 rules!4610 lt!711743 input!3681 suffix!1698 rule!580))))

(assert (=> d!560513 (not (isEmpty!12729 rules!4610))))

(assert (=> d!560513 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!553 thiss!28318 rules!4610 lt!711743 input!3681 suffix!1698 rule!580) lt!711841)))

(declare-fun bs!408057 () Bool)

(assert (= bs!408057 d!560513))

(assert (=> bs!408057 m!2261125))

(assert (=> bs!408057 m!2261117))

(assert (=> bs!408057 m!2261119))

(assert (=> bs!408057 m!2261095))

(assert (=> bs!408057 m!2261119))

(assert (=> bs!408057 m!2261121))

(declare-fun m!2261391 () Bool)

(assert (=> bs!408057 m!2261391))

(assert (=> b!1833396 d!560513))

(declare-fun d!560517 () Bool)

(declare-fun lt!711847 () Int)

(assert (=> d!560517 (>= lt!711847 0)))

(declare-fun e!1171916 () Int)

(assert (=> d!560517 (= lt!711847 e!1171916)))

(declare-fun c!299037 () Bool)

(assert (=> d!560517 (= c!299037 ((_ is Nil!20164) lt!711743))))

(assert (=> d!560517 (= (size!15992 lt!711743) lt!711847)))

(declare-fun b!1833630 () Bool)

(assert (=> b!1833630 (= e!1171916 0)))

(declare-fun b!1833631 () Bool)

(assert (=> b!1833631 (= e!1171916 (+ 1 (size!15992 (t!170987 lt!711743))))))

(assert (= (and d!560517 c!299037) b!1833630))

(assert (= (and d!560517 (not c!299037)) b!1833631))

(declare-fun m!2261393 () Bool)

(assert (=> b!1833631 m!2261393))

(assert (=> b!1833396 d!560517))

(declare-fun d!560519 () Bool)

(declare-fun dynLambda!10034 (Int BalanceConc!13298) TokenValue!3735)

(assert (=> d!560519 (= (apply!5433 (transformation!3645 rule!580) (seqFromList!2602 lt!711743)) (dynLambda!10034 (toValue!5192 (transformation!3645 rule!580)) (seqFromList!2602 lt!711743)))))

(declare-fun b_lambda!60703 () Bool)

(assert (=> (not b_lambda!60703) (not d!560519)))

(declare-fun t!171007 () Bool)

(declare-fun tb!112153 () Bool)

(assert (=> (and b!1833388 (= (toValue!5192 (transformation!3645 (rule!5825 token!567))) (toValue!5192 (transformation!3645 rule!580))) t!171007) tb!112153))

(declare-fun result!134876 () Bool)

(assert (=> tb!112153 (= result!134876 (inv!21 (dynLambda!10034 (toValue!5192 (transformation!3645 rule!580)) (seqFromList!2602 lt!711743))))))

(declare-fun m!2261397 () Bool)

(assert (=> tb!112153 m!2261397))

(assert (=> d!560519 t!171007))

(declare-fun b_and!142921 () Bool)

(assert (= b_and!142889 (and (=> t!171007 result!134876) b_and!142921)))

(declare-fun tb!112157 () Bool)

(declare-fun t!171011 () Bool)

(assert (=> (and b!1833398 (= (toValue!5192 (transformation!3645 (h!25566 rules!4610))) (toValue!5192 (transformation!3645 rule!580))) t!171011) tb!112157))

(declare-fun result!134884 () Bool)

(assert (= result!134884 result!134876))

(assert (=> d!560519 t!171011))

(declare-fun b_and!142923 () Bool)

(assert (= b_and!142893 (and (=> t!171011 result!134884) b_and!142923)))

(declare-fun tb!112159 () Bool)

(declare-fun t!171013 () Bool)

(assert (=> (and b!1833403 (= (toValue!5192 (transformation!3645 (h!25566 rs!808))) (toValue!5192 (transformation!3645 rule!580))) t!171013) tb!112159))

(declare-fun result!134886 () Bool)

(assert (= result!134886 result!134876))

(assert (=> d!560519 t!171013))

(declare-fun b_and!142927 () Bool)

(assert (= b_and!142897 (and (=> t!171013 result!134886) b_and!142927)))

(declare-fun t!171017 () Bool)

(declare-fun tb!112163 () Bool)

(assert (=> (and b!1833386 (= (toValue!5192 (transformation!3645 rule!580)) (toValue!5192 (transformation!3645 rule!580))) t!171017) tb!112163))

(declare-fun result!134890 () Bool)

(assert (= result!134890 result!134876))

(assert (=> d!560519 t!171017))

(declare-fun b_and!142931 () Bool)

(assert (= b_and!142901 (and (=> t!171017 result!134890) b_and!142931)))

(assert (=> d!560519 m!2261119))

(declare-fun m!2261401 () Bool)

(assert (=> d!560519 m!2261401))

(assert (=> b!1833396 d!560519))

(declare-fun d!560523 () Bool)

(declare-fun fromListB!1192 (List!20234) BalanceConc!13298)

(assert (=> d!560523 (= (seqFromList!2602 lt!711743) (fromListB!1192 lt!711743))))

(declare-fun bs!408059 () Bool)

(assert (= bs!408059 d!560523))

(declare-fun m!2261405 () Bool)

(assert (=> bs!408059 m!2261405))

(assert (=> b!1833396 d!560523))

(assert (=> b!1833396 d!560485))

(declare-fun d!560527 () Bool)

(assert (=> d!560527 (= (inv!26228 (tag!4059 (h!25566 rs!808))) (= (mod (str.len (value!113548 (tag!4059 (h!25566 rs!808)))) 2) 0))))

(assert (=> b!1833397 d!560527))

(declare-fun d!560529 () Bool)

(declare-fun res!824566 () Bool)

(declare-fun e!1171923 () Bool)

(assert (=> d!560529 (=> (not res!824566) (not e!1171923))))

(assert (=> d!560529 (= res!824566 (semiInverseModEq!1466 (toChars!5051 (transformation!3645 (h!25566 rs!808))) (toValue!5192 (transformation!3645 (h!25566 rs!808)))))))

(assert (=> d!560529 (= (inv!26231 (transformation!3645 (h!25566 rs!808))) e!1171923)))

(declare-fun b!1833636 () Bool)

(assert (=> b!1833636 (= e!1171923 (equivClasses!1407 (toChars!5051 (transformation!3645 (h!25566 rs!808))) (toValue!5192 (transformation!3645 (h!25566 rs!808)))))))

(assert (= (and d!560529 res!824566) b!1833636))

(declare-fun m!2261409 () Bool)

(assert (=> d!560529 m!2261409))

(declare-fun m!2261411 () Bool)

(assert (=> b!1833636 m!2261411))

(assert (=> b!1833397 d!560529))

(declare-fun b!1833693 () Bool)

(declare-fun e!1171956 () Bool)

(declare-fun e!1171959 () Bool)

(assert (=> b!1833693 (= e!1171956 e!1171959)))

(declare-fun c!299055 () Bool)

(assert (=> b!1833693 (= c!299055 ((_ is EmptyLang!4973) (regex!3645 rule!580)))))

(declare-fun b!1833694 () Bool)

(declare-fun e!1171954 () Bool)

(declare-fun e!1171955 () Bool)

(assert (=> b!1833694 (= e!1171954 e!1171955)))

(declare-fun res!824598 () Bool)

(assert (=> b!1833694 (=> (not res!824598) (not e!1171955))))

(declare-fun lt!711859 () Bool)

(assert (=> b!1833694 (= res!824598 (not lt!711859))))

(declare-fun b!1833695 () Bool)

(declare-fun e!1171958 () Bool)

(declare-fun derivativeStep!1313 (Regex!4973 C!10120) Regex!4973)

(declare-fun head!4287 (List!20234) C!10120)

(declare-fun tail!2746 (List!20234) List!20234)

(assert (=> b!1833695 (= e!1171958 (matchR!2436 (derivativeStep!1313 (regex!3645 rule!580) (head!4287 lt!711743)) (tail!2746 lt!711743)))))

(declare-fun b!1833696 () Bool)

(declare-fun res!824592 () Bool)

(declare-fun e!1171953 () Bool)

(assert (=> b!1833696 (=> (not res!824592) (not e!1171953))))

(assert (=> b!1833696 (= res!824592 (isEmpty!12733 (tail!2746 lt!711743)))))

(declare-fun b!1833697 () Bool)

(declare-fun call!114807 () Bool)

(assert (=> b!1833697 (= e!1171956 (= lt!711859 call!114807))))

(declare-fun b!1833698 () Bool)

(declare-fun e!1171957 () Bool)

(assert (=> b!1833698 (= e!1171957 (not (= (head!4287 lt!711743) (c!298994 (regex!3645 rule!580)))))))

(declare-fun b!1833699 () Bool)

(declare-fun res!824593 () Bool)

(assert (=> b!1833699 (=> res!824593 e!1171954)))

(assert (=> b!1833699 (= res!824593 e!1171953)))

(declare-fun res!824591 () Bool)

(assert (=> b!1833699 (=> (not res!824591) (not e!1171953))))

(assert (=> b!1833699 (= res!824591 lt!711859)))

(declare-fun bm!114802 () Bool)

(assert (=> bm!114802 (= call!114807 (isEmpty!12733 lt!711743))))

(declare-fun b!1833701 () Bool)

(assert (=> b!1833701 (= e!1171959 (not lt!711859))))

(declare-fun b!1833702 () Bool)

(declare-fun res!824594 () Bool)

(assert (=> b!1833702 (=> (not res!824594) (not e!1171953))))

(assert (=> b!1833702 (= res!824594 (not call!114807))))

(declare-fun b!1833703 () Bool)

(declare-fun res!824595 () Bool)

(assert (=> b!1833703 (=> res!824595 e!1171954)))

(assert (=> b!1833703 (= res!824595 (not ((_ is ElementMatch!4973) (regex!3645 rule!580))))))

(assert (=> b!1833703 (= e!1171959 e!1171954)))

(declare-fun b!1833700 () Bool)

(declare-fun nullable!1549 (Regex!4973) Bool)

(assert (=> b!1833700 (= e!1171958 (nullable!1549 (regex!3645 rule!580)))))

(declare-fun d!560533 () Bool)

(assert (=> d!560533 e!1171956))

(declare-fun c!299054 () Bool)

(assert (=> d!560533 (= c!299054 ((_ is EmptyExpr!4973) (regex!3645 rule!580)))))

(assert (=> d!560533 (= lt!711859 e!1171958)))

(declare-fun c!299056 () Bool)

(assert (=> d!560533 (= c!299056 (isEmpty!12733 lt!711743))))

(declare-fun validRegex!2031 (Regex!4973) Bool)

(assert (=> d!560533 (validRegex!2031 (regex!3645 rule!580))))

(assert (=> d!560533 (= (matchR!2436 (regex!3645 rule!580) lt!711743) lt!711859)))

(declare-fun b!1833704 () Bool)

(assert (=> b!1833704 (= e!1171955 e!1171957)))

(declare-fun res!824597 () Bool)

(assert (=> b!1833704 (=> res!824597 e!1171957)))

(assert (=> b!1833704 (= res!824597 call!114807)))

(declare-fun b!1833705 () Bool)

(declare-fun res!824596 () Bool)

(assert (=> b!1833705 (=> res!824596 e!1171957)))

(assert (=> b!1833705 (= res!824596 (not (isEmpty!12733 (tail!2746 lt!711743))))))

(declare-fun b!1833706 () Bool)

(assert (=> b!1833706 (= e!1171953 (= (head!4287 lt!711743) (c!298994 (regex!3645 rule!580))))))

(assert (= (and d!560533 c!299056) b!1833700))

(assert (= (and d!560533 (not c!299056)) b!1833695))

(assert (= (and d!560533 c!299054) b!1833697))

(assert (= (and d!560533 (not c!299054)) b!1833693))

(assert (= (and b!1833693 c!299055) b!1833701))

(assert (= (and b!1833693 (not c!299055)) b!1833703))

(assert (= (and b!1833703 (not res!824595)) b!1833699))

(assert (= (and b!1833699 res!824591) b!1833702))

(assert (= (and b!1833702 res!824594) b!1833696))

(assert (= (and b!1833696 res!824592) b!1833706))

(assert (= (and b!1833699 (not res!824593)) b!1833694))

(assert (= (and b!1833694 res!824598) b!1833704))

(assert (= (and b!1833704 (not res!824597)) b!1833705))

(assert (= (and b!1833705 (not res!824596)) b!1833698))

(assert (= (or b!1833697 b!1833702 b!1833704) bm!114802))

(declare-fun m!2261431 () Bool)

(assert (=> b!1833705 m!2261431))

(assert (=> b!1833705 m!2261431))

(declare-fun m!2261433 () Bool)

(assert (=> b!1833705 m!2261433))

(assert (=> b!1833696 m!2261431))

(assert (=> b!1833696 m!2261431))

(assert (=> b!1833696 m!2261433))

(declare-fun m!2261435 () Bool)

(assert (=> b!1833695 m!2261435))

(assert (=> b!1833695 m!2261435))

(declare-fun m!2261437 () Bool)

(assert (=> b!1833695 m!2261437))

(assert (=> b!1833695 m!2261431))

(assert (=> b!1833695 m!2261437))

(assert (=> b!1833695 m!2261431))

(declare-fun m!2261439 () Bool)

(assert (=> b!1833695 m!2261439))

(declare-fun m!2261441 () Bool)

(assert (=> bm!114802 m!2261441))

(declare-fun m!2261443 () Bool)

(assert (=> b!1833700 m!2261443))

(assert (=> b!1833698 m!2261435))

(assert (=> d!560533 m!2261441))

(declare-fun m!2261445 () Bool)

(assert (=> d!560533 m!2261445))

(assert (=> b!1833706 m!2261435))

(assert (=> b!1833387 d!560533))

(declare-fun d!560541 () Bool)

(declare-fun res!824603 () Bool)

(declare-fun e!1171968 () Bool)

(assert (=> d!560541 (=> (not res!824603) (not e!1171968))))

(assert (=> d!560541 (= res!824603 (rulesValid!1392 thiss!28318 rules!4610))))

(assert (=> d!560541 (= (rulesInvariant!2943 thiss!28318 rules!4610) e!1171968)))

(declare-fun b!1833719 () Bool)

(declare-datatypes ((List!20238 0))(
  ( (Nil!20168) (Cons!20168 (h!25569 String!23007) (t!171039 List!20238)) )
))
(declare-fun noDuplicateTag!1390 (LexerInterface!3274 List!20235 List!20238) Bool)

(assert (=> b!1833719 (= e!1171968 (noDuplicateTag!1390 thiss!28318 rules!4610 Nil!20168))))

(assert (= (and d!560541 res!824603) b!1833719))

(declare-fun m!2261457 () Bool)

(assert (=> d!560541 m!2261457))

(declare-fun m!2261459 () Bool)

(assert (=> b!1833719 m!2261459))

(assert (=> b!1833408 d!560541))

(declare-fun d!560551 () Bool)

(assert (=> d!560551 (= (inv!26228 (tag!4059 (h!25566 rules!4610))) (= (mod (str.len (value!113548 (tag!4059 (h!25566 rules!4610)))) 2) 0))))

(assert (=> b!1833393 d!560551))

(declare-fun d!560553 () Bool)

(declare-fun res!824604 () Bool)

(declare-fun e!1171969 () Bool)

(assert (=> d!560553 (=> (not res!824604) (not e!1171969))))

(assert (=> d!560553 (= res!824604 (semiInverseModEq!1466 (toChars!5051 (transformation!3645 (h!25566 rules!4610))) (toValue!5192 (transformation!3645 (h!25566 rules!4610)))))))

(assert (=> d!560553 (= (inv!26231 (transformation!3645 (h!25566 rules!4610))) e!1171969)))

(declare-fun b!1833720 () Bool)

(assert (=> b!1833720 (= e!1171969 (equivClasses!1407 (toChars!5051 (transformation!3645 (h!25566 rules!4610))) (toValue!5192 (transformation!3645 (h!25566 rules!4610)))))))

(assert (= (and d!560553 res!824604) b!1833720))

(declare-fun m!2261461 () Bool)

(assert (=> d!560553 m!2261461))

(declare-fun m!2261463 () Bool)

(assert (=> b!1833720 m!2261463))

(assert (=> b!1833393 d!560553))

(declare-fun d!560555 () Bool)

(assert (=> d!560555 (= (inv!26228 (tag!4059 rule!580)) (= (mod (str.len (value!113548 (tag!4059 rule!580))) 2) 0))))

(assert (=> b!1833404 d!560555))

(declare-fun d!560557 () Bool)

(declare-fun res!824605 () Bool)

(declare-fun e!1171970 () Bool)

(assert (=> d!560557 (=> (not res!824605) (not e!1171970))))

(assert (=> d!560557 (= res!824605 (semiInverseModEq!1466 (toChars!5051 (transformation!3645 rule!580)) (toValue!5192 (transformation!3645 rule!580))))))

(assert (=> d!560557 (= (inv!26231 (transformation!3645 rule!580)) e!1171970)))

(declare-fun b!1833721 () Bool)

(assert (=> b!1833721 (= e!1171970 (equivClasses!1407 (toChars!5051 (transformation!3645 rule!580)) (toValue!5192 (transformation!3645 rule!580))))))

(assert (= (and d!560557 res!824605) b!1833721))

(declare-fun m!2261465 () Bool)

(assert (=> d!560557 m!2261465))

(declare-fun m!2261467 () Bool)

(assert (=> b!1833721 m!2261467))

(assert (=> b!1833404 d!560557))

(declare-fun b!1833818 () Bool)

(declare-fun e!1172024 () Bool)

(declare-fun e!1172023 () Bool)

(assert (=> b!1833818 (= e!1172024 e!1172023)))

(declare-fun res!824643 () Bool)

(assert (=> b!1833818 (=> (not res!824643) (not e!1172023))))

(declare-fun lt!711883 () Option!4225)

(declare-fun isDefined!3528 (Option!4225) Bool)

(assert (=> b!1833818 (= res!824643 (isDefined!3528 lt!711883))))

(declare-fun b!1833819 () Bool)

(declare-fun e!1172025 () Option!4225)

(declare-fun lt!711882 () Option!4225)

(declare-fun lt!711879 () Option!4225)

(assert (=> b!1833819 (= e!1172025 (ite (and ((_ is None!4224) lt!711882) ((_ is None!4224) lt!711879)) None!4224 (ite ((_ is None!4224) lt!711879) lt!711882 (ite ((_ is None!4224) lt!711882) lt!711879 (ite (>= (size!15991 (_1!11211 (v!25801 lt!711882))) (size!15991 (_1!11211 (v!25801 lt!711879)))) lt!711882 lt!711879)))))))

(declare-fun call!114811 () Option!4225)

(assert (=> b!1833819 (= lt!711882 call!114811)))

(assert (=> b!1833819 (= lt!711879 (maxPrefix!1822 thiss!28318 (t!170988 rules!4610) input!3681))))

(declare-fun b!1833821 () Bool)

(assert (=> b!1833821 (= e!1172025 call!114811)))

(declare-fun b!1833822 () Bool)

(declare-fun res!824645 () Bool)

(assert (=> b!1833822 (=> (not res!824645) (not e!1172023))))

(assert (=> b!1833822 (= res!824645 (= (value!113549 (_1!11211 (get!6225 lt!711883))) (apply!5433 (transformation!3645 (rule!5825 (_1!11211 (get!6225 lt!711883)))) (seqFromList!2602 (originalCharacters!4453 (_1!11211 (get!6225 lt!711883)))))))))

(declare-fun b!1833823 () Bool)

(declare-fun res!824644 () Bool)

(assert (=> b!1833823 (=> (not res!824644) (not e!1172023))))

(assert (=> b!1833823 (= res!824644 (< (size!15992 (_2!11211 (get!6225 lt!711883))) (size!15992 input!3681)))))

(declare-fun d!560559 () Bool)

(assert (=> d!560559 e!1172024))

(declare-fun res!824641 () Bool)

(assert (=> d!560559 (=> res!824641 e!1172024)))

(assert (=> d!560559 (= res!824641 (isEmpty!12734 lt!711883))))

(assert (=> d!560559 (= lt!711883 e!1172025)))

(declare-fun c!299068 () Bool)

(assert (=> d!560559 (= c!299068 (and ((_ is Cons!20165) rules!4610) ((_ is Nil!20165) (t!170988 rules!4610))))))

(declare-fun lt!711880 () Unit!34841)

(declare-fun lt!711881 () Unit!34841)

(assert (=> d!560559 (= lt!711880 lt!711881)))

(declare-fun isPrefix!1841 (List!20234 List!20234) Bool)

(assert (=> d!560559 (isPrefix!1841 input!3681 input!3681)))

(declare-fun lemmaIsPrefixRefl!1218 (List!20234 List!20234) Unit!34841)

(assert (=> d!560559 (= lt!711881 (lemmaIsPrefixRefl!1218 input!3681 input!3681))))

(assert (=> d!560559 (rulesValidInductive!1260 thiss!28318 rules!4610)))

(assert (=> d!560559 (= (maxPrefix!1822 thiss!28318 rules!4610 input!3681) lt!711883)))

(declare-fun b!1833820 () Bool)

(declare-fun res!824642 () Bool)

(assert (=> b!1833820 (=> (not res!824642) (not e!1172023))))

(assert (=> b!1833820 (= res!824642 (= (list!8193 (charsOf!2288 (_1!11211 (get!6225 lt!711883)))) (originalCharacters!4453 (_1!11211 (get!6225 lt!711883)))))))

(declare-fun b!1833824 () Bool)

(declare-fun res!824647 () Bool)

(assert (=> b!1833824 (=> (not res!824647) (not e!1172023))))

(assert (=> b!1833824 (= res!824647 (= (++!5469 (list!8193 (charsOf!2288 (_1!11211 (get!6225 lt!711883)))) (_2!11211 (get!6225 lt!711883))) input!3681))))

(declare-fun bm!114806 () Bool)

(assert (=> bm!114806 (= call!114811 (maxPrefixOneRule!1183 thiss!28318 (h!25566 rules!4610) input!3681))))

(declare-fun b!1833825 () Bool)

(declare-fun res!824646 () Bool)

(assert (=> b!1833825 (=> (not res!824646) (not e!1172023))))

(assert (=> b!1833825 (= res!824646 (matchR!2436 (regex!3645 (rule!5825 (_1!11211 (get!6225 lt!711883)))) (list!8193 (charsOf!2288 (_1!11211 (get!6225 lt!711883))))))))

(declare-fun b!1833826 () Bool)

(assert (=> b!1833826 (= e!1172023 (contains!3721 rules!4610 (rule!5825 (_1!11211 (get!6225 lt!711883)))))))

(assert (= (and d!560559 c!299068) b!1833821))

(assert (= (and d!560559 (not c!299068)) b!1833819))

(assert (= (or b!1833821 b!1833819) bm!114806))

(assert (= (and d!560559 (not res!824641)) b!1833818))

(assert (= (and b!1833818 res!824643) b!1833820))

(assert (= (and b!1833820 res!824642) b!1833823))

(assert (= (and b!1833823 res!824644) b!1833824))

(assert (= (and b!1833824 res!824647) b!1833822))

(assert (= (and b!1833822 res!824645) b!1833825))

(assert (= (and b!1833825 res!824646) b!1833826))

(declare-fun m!2261509 () Bool)

(assert (=> bm!114806 m!2261509))

(declare-fun m!2261511 () Bool)

(assert (=> b!1833826 m!2261511))

(declare-fun m!2261513 () Bool)

(assert (=> b!1833826 m!2261513))

(declare-fun m!2261515 () Bool)

(assert (=> b!1833819 m!2261515))

(assert (=> b!1833822 m!2261511))

(declare-fun m!2261517 () Bool)

(assert (=> b!1833822 m!2261517))

(assert (=> b!1833822 m!2261517))

(declare-fun m!2261519 () Bool)

(assert (=> b!1833822 m!2261519))

(assert (=> b!1833823 m!2261511))

(declare-fun m!2261521 () Bool)

(assert (=> b!1833823 m!2261521))

(assert (=> b!1833823 m!2261311))

(assert (=> b!1833820 m!2261511))

(declare-fun m!2261523 () Bool)

(assert (=> b!1833820 m!2261523))

(assert (=> b!1833820 m!2261523))

(declare-fun m!2261525 () Bool)

(assert (=> b!1833820 m!2261525))

(assert (=> b!1833825 m!2261511))

(assert (=> b!1833825 m!2261523))

(assert (=> b!1833825 m!2261523))

(assert (=> b!1833825 m!2261525))

(assert (=> b!1833825 m!2261525))

(declare-fun m!2261527 () Bool)

(assert (=> b!1833825 m!2261527))

(declare-fun m!2261529 () Bool)

(assert (=> b!1833818 m!2261529))

(declare-fun m!2261531 () Bool)

(assert (=> d!560559 m!2261531))

(declare-fun m!2261533 () Bool)

(assert (=> d!560559 m!2261533))

(declare-fun m!2261535 () Bool)

(assert (=> d!560559 m!2261535))

(declare-fun m!2261537 () Bool)

(assert (=> d!560559 m!2261537))

(assert (=> b!1833824 m!2261511))

(assert (=> b!1833824 m!2261523))

(assert (=> b!1833824 m!2261523))

(assert (=> b!1833824 m!2261525))

(assert (=> b!1833824 m!2261525))

(declare-fun m!2261539 () Bool)

(assert (=> b!1833824 m!2261539))

(assert (=> b!1833394 d!560559))

(declare-fun b!1833827 () Bool)

(declare-fun e!1172029 () Bool)

(declare-fun e!1172032 () Bool)

(assert (=> b!1833827 (= e!1172029 e!1172032)))

(declare-fun c!299070 () Bool)

(assert (=> b!1833827 (= c!299070 ((_ is EmptyLang!4973) (regex!3645 rule!580)))))

(declare-fun b!1833828 () Bool)

(declare-fun e!1172027 () Bool)

(declare-fun e!1172028 () Bool)

(assert (=> b!1833828 (= e!1172027 e!1172028)))

(declare-fun res!824655 () Bool)

(assert (=> b!1833828 (=> (not res!824655) (not e!1172028))))

(declare-fun lt!711884 () Bool)

(assert (=> b!1833828 (= res!824655 (not lt!711884))))

(declare-fun b!1833829 () Bool)

(declare-fun e!1172031 () Bool)

(assert (=> b!1833829 (= e!1172031 (matchR!2436 (derivativeStep!1313 (regex!3645 rule!580) (head!4287 lt!711744)) (tail!2746 lt!711744)))))

(declare-fun b!1833830 () Bool)

(declare-fun res!824649 () Bool)

(declare-fun e!1172026 () Bool)

(assert (=> b!1833830 (=> (not res!824649) (not e!1172026))))

(assert (=> b!1833830 (= res!824649 (isEmpty!12733 (tail!2746 lt!711744)))))

(declare-fun b!1833831 () Bool)

(declare-fun call!114812 () Bool)

(assert (=> b!1833831 (= e!1172029 (= lt!711884 call!114812))))

(declare-fun b!1833832 () Bool)

(declare-fun e!1172030 () Bool)

(assert (=> b!1833832 (= e!1172030 (not (= (head!4287 lt!711744) (c!298994 (regex!3645 rule!580)))))))

(declare-fun b!1833833 () Bool)

(declare-fun res!824650 () Bool)

(assert (=> b!1833833 (=> res!824650 e!1172027)))

(assert (=> b!1833833 (= res!824650 e!1172026)))

(declare-fun res!824648 () Bool)

(assert (=> b!1833833 (=> (not res!824648) (not e!1172026))))

(assert (=> b!1833833 (= res!824648 lt!711884)))

(declare-fun bm!114807 () Bool)

(assert (=> bm!114807 (= call!114812 (isEmpty!12733 lt!711744))))

(declare-fun b!1833835 () Bool)

(assert (=> b!1833835 (= e!1172032 (not lt!711884))))

(declare-fun b!1833836 () Bool)

(declare-fun res!824651 () Bool)

(assert (=> b!1833836 (=> (not res!824651) (not e!1172026))))

(assert (=> b!1833836 (= res!824651 (not call!114812))))

(declare-fun b!1833837 () Bool)

(declare-fun res!824652 () Bool)

(assert (=> b!1833837 (=> res!824652 e!1172027)))

(assert (=> b!1833837 (= res!824652 (not ((_ is ElementMatch!4973) (regex!3645 rule!580))))))

(assert (=> b!1833837 (= e!1172032 e!1172027)))

(declare-fun b!1833834 () Bool)

(assert (=> b!1833834 (= e!1172031 (nullable!1549 (regex!3645 rule!580)))))

(declare-fun d!560583 () Bool)

(assert (=> d!560583 e!1172029))

(declare-fun c!299069 () Bool)

(assert (=> d!560583 (= c!299069 ((_ is EmptyExpr!4973) (regex!3645 rule!580)))))

(assert (=> d!560583 (= lt!711884 e!1172031)))

(declare-fun c!299071 () Bool)

(assert (=> d!560583 (= c!299071 (isEmpty!12733 lt!711744))))

(assert (=> d!560583 (validRegex!2031 (regex!3645 rule!580))))

(assert (=> d!560583 (= (matchR!2436 (regex!3645 rule!580) lt!711744) lt!711884)))

(declare-fun b!1833838 () Bool)

(assert (=> b!1833838 (= e!1172028 e!1172030)))

(declare-fun res!824654 () Bool)

(assert (=> b!1833838 (=> res!824654 e!1172030)))

(assert (=> b!1833838 (= res!824654 call!114812)))

(declare-fun b!1833839 () Bool)

(declare-fun res!824653 () Bool)

(assert (=> b!1833839 (=> res!824653 e!1172030)))

(assert (=> b!1833839 (= res!824653 (not (isEmpty!12733 (tail!2746 lt!711744))))))

(declare-fun b!1833840 () Bool)

(assert (=> b!1833840 (= e!1172026 (= (head!4287 lt!711744) (c!298994 (regex!3645 rule!580))))))

(assert (= (and d!560583 c!299071) b!1833834))

(assert (= (and d!560583 (not c!299071)) b!1833829))

(assert (= (and d!560583 c!299069) b!1833831))

(assert (= (and d!560583 (not c!299069)) b!1833827))

(assert (= (and b!1833827 c!299070) b!1833835))

(assert (= (and b!1833827 (not c!299070)) b!1833837))

(assert (= (and b!1833837 (not res!824652)) b!1833833))

(assert (= (and b!1833833 res!824648) b!1833836))

(assert (= (and b!1833836 res!824651) b!1833830))

(assert (= (and b!1833830 res!824649) b!1833840))

(assert (= (and b!1833833 (not res!824650)) b!1833828))

(assert (= (and b!1833828 res!824655) b!1833838))

(assert (= (and b!1833838 (not res!824654)) b!1833839))

(assert (= (and b!1833839 (not res!824653)) b!1833832))

(assert (= (or b!1833831 b!1833836 b!1833838) bm!114807))

(declare-fun m!2261541 () Bool)

(assert (=> b!1833839 m!2261541))

(assert (=> b!1833839 m!2261541))

(declare-fun m!2261543 () Bool)

(assert (=> b!1833839 m!2261543))

(assert (=> b!1833830 m!2261541))

(assert (=> b!1833830 m!2261541))

(assert (=> b!1833830 m!2261543))

(declare-fun m!2261545 () Bool)

(assert (=> b!1833829 m!2261545))

(assert (=> b!1833829 m!2261545))

(declare-fun m!2261547 () Bool)

(assert (=> b!1833829 m!2261547))

(assert (=> b!1833829 m!2261541))

(assert (=> b!1833829 m!2261547))

(assert (=> b!1833829 m!2261541))

(declare-fun m!2261549 () Bool)

(assert (=> b!1833829 m!2261549))

(declare-fun m!2261551 () Bool)

(assert (=> bm!114807 m!2261551))

(assert (=> b!1833834 m!2261443))

(assert (=> b!1833832 m!2261545))

(assert (=> d!560583 m!2261551))

(assert (=> d!560583 m!2261445))

(assert (=> b!1833840 m!2261545))

(assert (=> b!1833395 d!560583))

(declare-fun d!560585 () Bool)

(declare-fun res!824660 () Bool)

(declare-fun e!1172035 () Bool)

(assert (=> d!560585 (=> (not res!824660) (not e!1172035))))

(assert (=> d!560585 (= res!824660 (validRegex!2031 (regex!3645 rule!580)))))

(assert (=> d!560585 (= (ruleValid!1135 thiss!28318 rule!580) e!1172035)))

(declare-fun b!1833845 () Bool)

(declare-fun res!824661 () Bool)

(assert (=> b!1833845 (=> (not res!824661) (not e!1172035))))

(assert (=> b!1833845 (= res!824661 (not (nullable!1549 (regex!3645 rule!580))))))

(declare-fun b!1833846 () Bool)

(assert (=> b!1833846 (= e!1172035 (not (= (tag!4059 rule!580) (String!23008 ""))))))

(assert (= (and d!560585 res!824660) b!1833845))

(assert (= (and b!1833845 res!824661) b!1833846))

(assert (=> d!560585 m!2261445))

(assert (=> b!1833845 m!2261443))

(assert (=> b!1833395 d!560585))

(declare-fun d!560587 () Bool)

(assert (=> d!560587 (ruleValid!1135 thiss!28318 rule!580)))

(declare-fun lt!711887 () Unit!34841)

(declare-fun choose!11544 (LexerInterface!3274 Rule!7090 List!20235) Unit!34841)

(assert (=> d!560587 (= lt!711887 (choose!11544 thiss!28318 rule!580 rules!4610))))

(assert (=> d!560587 (contains!3721 rules!4610 rule!580)))

(assert (=> d!560587 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!654 thiss!28318 rule!580 rules!4610) lt!711887)))

(declare-fun bs!408063 () Bool)

(assert (= bs!408063 d!560587))

(assert (=> bs!408063 m!2261113))

(declare-fun m!2261553 () Bool)

(assert (=> bs!408063 m!2261553))

(assert (=> bs!408063 m!2261069))

(assert (=> b!1833395 d!560587))

(declare-fun d!560589 () Bool)

(declare-fun lt!711890 () Int)

(assert (=> d!560589 (>= lt!711890 0)))

(declare-fun e!1172038 () Int)

(assert (=> d!560589 (= lt!711890 e!1172038)))

(declare-fun c!299074 () Bool)

(assert (=> d!560589 (= c!299074 ((_ is Nil!20165) (t!170988 rs!808)))))

(assert (=> d!560589 (= (ListPrimitiveSize!112 (t!170988 rs!808)) lt!711890)))

(declare-fun b!1833851 () Bool)

(assert (=> b!1833851 (= e!1172038 0)))

(declare-fun b!1833852 () Bool)

(assert (=> b!1833852 (= e!1172038 (+ 1 (ListPrimitiveSize!112 (t!170988 (t!170988 rs!808)))))))

(assert (= (and d!560589 c!299074) b!1833851))

(assert (= (and d!560589 (not c!299074)) b!1833852))

(declare-fun m!2261555 () Bool)

(assert (=> b!1833852 m!2261555))

(assert (=> b!1833384 d!560589))

(declare-fun d!560591 () Bool)

(declare-fun lt!711891 () Int)

(assert (=> d!560591 (>= lt!711891 0)))

(declare-fun e!1172039 () Int)

(assert (=> d!560591 (= lt!711891 e!1172039)))

(declare-fun c!299075 () Bool)

(assert (=> d!560591 (= c!299075 ((_ is Nil!20165) rs!808))))

(assert (=> d!560591 (= (ListPrimitiveSize!112 rs!808) lt!711891)))

(declare-fun b!1833853 () Bool)

(assert (=> b!1833853 (= e!1172039 0)))

(declare-fun b!1833854 () Bool)

(assert (=> b!1833854 (= e!1172039 (+ 1 (ListPrimitiveSize!112 (t!170988 rs!808))))))

(assert (= (and d!560591 c!299075) b!1833853))

(assert (= (and d!560591 (not c!299075)) b!1833854))

(assert (=> b!1833854 m!2261085))

(assert (=> b!1833384 d!560591))

(declare-fun d!560593 () Bool)

(declare-fun lt!711892 () Bool)

(assert (=> d!560593 (= lt!711892 (select (content!2993 rules!4610) rule!580))))

(declare-fun e!1172040 () Bool)

(assert (=> d!560593 (= lt!711892 e!1172040)))

(declare-fun res!824663 () Bool)

(assert (=> d!560593 (=> (not res!824663) (not e!1172040))))

(assert (=> d!560593 (= res!824663 ((_ is Cons!20165) rules!4610))))

(assert (=> d!560593 (= (contains!3721 rules!4610 rule!580) lt!711892)))

(declare-fun b!1833855 () Bool)

(declare-fun e!1172041 () Bool)

(assert (=> b!1833855 (= e!1172040 e!1172041)))

(declare-fun res!824662 () Bool)

(assert (=> b!1833855 (=> res!824662 e!1172041)))

(assert (=> b!1833855 (= res!824662 (= (h!25566 rules!4610) rule!580))))

(declare-fun b!1833856 () Bool)

(assert (=> b!1833856 (= e!1172041 (contains!3721 (t!170988 rules!4610) rule!580))))

(assert (= (and d!560593 res!824663) b!1833855))

(assert (= (and b!1833855 (not res!824662)) b!1833856))

(declare-fun m!2261557 () Bool)

(assert (=> d!560593 m!2261557))

(declare-fun m!2261559 () Bool)

(assert (=> d!560593 m!2261559))

(declare-fun m!2261561 () Bool)

(assert (=> b!1833856 m!2261561))

(assert (=> b!1833401 d!560593))

(declare-fun d!560595 () Bool)

(declare-fun res!824668 () Bool)

(declare-fun e!1172044 () Bool)

(assert (=> d!560595 (=> (not res!824668) (not e!1172044))))

(assert (=> d!560595 (= res!824668 (not (isEmpty!12733 (originalCharacters!4453 token!567))))))

(assert (=> d!560595 (= (inv!26232 token!567) e!1172044)))

(declare-fun b!1833861 () Bool)

(declare-fun res!824669 () Bool)

(assert (=> b!1833861 (=> (not res!824669) (not e!1172044))))

(assert (=> b!1833861 (= res!824669 (= (originalCharacters!4453 token!567) (list!8193 (dynLambda!10033 (toChars!5051 (transformation!3645 (rule!5825 token!567))) (value!113549 token!567)))))))

(declare-fun b!1833862 () Bool)

(assert (=> b!1833862 (= e!1172044 (= (size!15991 token!567) (size!15992 (originalCharacters!4453 token!567))))))

(assert (= (and d!560595 res!824668) b!1833861))

(assert (= (and b!1833861 res!824669) b!1833862))

(declare-fun b_lambda!60717 () Bool)

(assert (=> (not b_lambda!60717) (not b!1833861)))

(assert (=> b!1833861 t!170999))

(declare-fun b_and!142953 () Bool)

(assert (= b_and!142913 (and (=> t!170999 result!134866) b_and!142953)))

(assert (=> b!1833861 t!171001))

(declare-fun b_and!142955 () Bool)

(assert (= b_and!142915 (and (=> t!171001 result!134870) b_and!142955)))

(assert (=> b!1833861 t!171003))

(declare-fun b_and!142957 () Bool)

(assert (= b_and!142917 (and (=> t!171003 result!134872) b_and!142957)))

(assert (=> b!1833861 t!171005))

(declare-fun b_and!142959 () Bool)

(assert (= b_and!142919 (and (=> t!171005 result!134874) b_and!142959)))

(declare-fun m!2261563 () Bool)

(assert (=> d!560595 m!2261563))

(assert (=> b!1833861 m!2261181))

(assert (=> b!1833861 m!2261181))

(declare-fun m!2261565 () Bool)

(assert (=> b!1833861 m!2261565))

(declare-fun m!2261567 () Bool)

(assert (=> b!1833862 m!2261567))

(assert (=> start!182050 d!560595))

(declare-fun b!1833873 () Bool)

(declare-fun e!1172052 () Bool)

(declare-fun inv!16 (TokenValue!3735) Bool)

(assert (=> b!1833873 (= e!1172052 (inv!16 (value!113549 token!567)))))

(declare-fun b!1833874 () Bool)

(declare-fun e!1172053 () Bool)

(assert (=> b!1833874 (= e!1172052 e!1172053)))

(declare-fun c!299080 () Bool)

(assert (=> b!1833874 (= c!299080 ((_ is IntegerValue!11206) (value!113549 token!567)))))

(declare-fun b!1833875 () Bool)

(declare-fun res!824672 () Bool)

(declare-fun e!1172051 () Bool)

(assert (=> b!1833875 (=> res!824672 e!1172051)))

(assert (=> b!1833875 (= res!824672 (not ((_ is IntegerValue!11207) (value!113549 token!567))))))

(assert (=> b!1833875 (= e!1172053 e!1172051)))

(declare-fun d!560597 () Bool)

(declare-fun c!299081 () Bool)

(assert (=> d!560597 (= c!299081 ((_ is IntegerValue!11205) (value!113549 token!567)))))

(assert (=> d!560597 (= (inv!21 (value!113549 token!567)) e!1172052)))

(declare-fun b!1833876 () Bool)

(declare-fun inv!17 (TokenValue!3735) Bool)

(assert (=> b!1833876 (= e!1172053 (inv!17 (value!113549 token!567)))))

(declare-fun b!1833877 () Bool)

(declare-fun inv!15 (TokenValue!3735) Bool)

(assert (=> b!1833877 (= e!1172051 (inv!15 (value!113549 token!567)))))

(assert (= (and d!560597 c!299081) b!1833873))

(assert (= (and d!560597 (not c!299081)) b!1833874))

(assert (= (and b!1833874 c!299080) b!1833876))

(assert (= (and b!1833874 (not c!299080)) b!1833875))

(assert (= (and b!1833875 (not res!824672)) b!1833877))

(declare-fun m!2261569 () Bool)

(assert (=> b!1833873 m!2261569))

(declare-fun m!2261571 () Bool)

(assert (=> b!1833876 m!2261571))

(declare-fun m!2261573 () Bool)

(assert (=> b!1833877 m!2261573))

(assert (=> b!1833391 d!560597))

(declare-fun bs!408064 () Bool)

(declare-fun d!560599 () Bool)

(assert (= bs!408064 (and d!560599 b!1833392)))

(declare-fun lambda!72079 () Int)

(assert (=> bs!408064 (= lambda!72079 lambda!72058)))

(declare-fun lt!711895 () Unit!34841)

(declare-fun lemma!544 (List!20235 LexerInterface!3274 List!20235) Unit!34841)

(assert (=> d!560599 (= lt!711895 (lemma!544 rules!4610 thiss!28318 rules!4610))))

(assert (=> d!560599 (= (rulesRegex!965 thiss!28318 rules!4610) (generalisedUnion!488 (map!4186 rules!4610 lambda!72079)))))

(declare-fun bs!408065 () Bool)

(assert (= bs!408065 d!560599))

(declare-fun m!2261575 () Bool)

(assert (=> bs!408065 m!2261575))

(declare-fun m!2261577 () Bool)

(assert (=> bs!408065 m!2261577))

(assert (=> bs!408065 m!2261577))

(declare-fun m!2261579 () Bool)

(assert (=> bs!408065 m!2261579))

(assert (=> b!1833392 d!560599))

(declare-fun b!1833898 () Bool)

(declare-fun e!1172069 () Regex!4973)

(declare-fun e!1172070 () Regex!4973)

(assert (=> b!1833898 (= e!1172069 e!1172070)))

(declare-fun c!299090 () Bool)

(assert (=> b!1833898 (= c!299090 ((_ is Cons!20166) (map!4186 rules!4610 lambda!72058)))))

(declare-fun b!1833899 () Bool)

(declare-fun e!1172067 () Bool)

(declare-fun e!1172068 () Bool)

(assert (=> b!1833899 (= e!1172067 e!1172068)))

(declare-fun c!299093 () Bool)

(declare-fun isEmpty!12735 (List!20236) Bool)

(assert (=> b!1833899 (= c!299093 (isEmpty!12735 (map!4186 rules!4610 lambda!72058)))))

(declare-fun d!560601 () Bool)

(assert (=> d!560601 e!1172067))

(declare-fun res!824678 () Bool)

(assert (=> d!560601 (=> (not res!824678) (not e!1172067))))

(declare-fun lt!711898 () Regex!4973)

(assert (=> d!560601 (= res!824678 (validRegex!2031 lt!711898))))

(assert (=> d!560601 (= lt!711898 e!1172069)))

(declare-fun c!299092 () Bool)

(declare-fun e!1172071 () Bool)

(assert (=> d!560601 (= c!299092 e!1172071)))

(declare-fun res!824677 () Bool)

(assert (=> d!560601 (=> (not res!824677) (not e!1172071))))

(assert (=> d!560601 (= res!824677 ((_ is Cons!20166) (map!4186 rules!4610 lambda!72058)))))

(declare-fun lambda!72082 () Int)

(declare-fun forall!4345 (List!20236 Int) Bool)

(assert (=> d!560601 (forall!4345 (map!4186 rules!4610 lambda!72058) lambda!72082)))

(assert (=> d!560601 (= (generalisedUnion!488 (map!4186 rules!4610 lambda!72058)) lt!711898)))

(declare-fun b!1833900 () Bool)

(assert (=> b!1833900 (= e!1172071 (isEmpty!12735 (t!170989 (map!4186 rules!4610 lambda!72058))))))

(declare-fun b!1833901 () Bool)

(assert (=> b!1833901 (= e!1172070 EmptyLang!4973)))

(declare-fun b!1833902 () Bool)

(assert (=> b!1833902 (= e!1172069 (h!25567 (map!4186 rules!4610 lambda!72058)))))

(declare-fun b!1833903 () Bool)

(declare-fun e!1172066 () Bool)

(declare-fun head!4288 (List!20236) Regex!4973)

(assert (=> b!1833903 (= e!1172066 (= lt!711898 (head!4288 (map!4186 rules!4610 lambda!72058))))))

(declare-fun b!1833904 () Bool)

(assert (=> b!1833904 (= e!1172068 e!1172066)))

(declare-fun c!299091 () Bool)

(declare-fun tail!2747 (List!20236) List!20236)

(assert (=> b!1833904 (= c!299091 (isEmpty!12735 (tail!2747 (map!4186 rules!4610 lambda!72058))))))

(declare-fun b!1833905 () Bool)

(declare-fun isUnion!131 (Regex!4973) Bool)

(assert (=> b!1833905 (= e!1172066 (isUnion!131 lt!711898))))

(declare-fun b!1833906 () Bool)

(assert (=> b!1833906 (= e!1172070 (Union!4973 (h!25567 (map!4186 rules!4610 lambda!72058)) (generalisedUnion!488 (t!170989 (map!4186 rules!4610 lambda!72058)))))))

(declare-fun b!1833907 () Bool)

(declare-fun isEmptyLang!131 (Regex!4973) Bool)

(assert (=> b!1833907 (= e!1172068 (isEmptyLang!131 lt!711898))))

(assert (= (and d!560601 res!824677) b!1833900))

(assert (= (and d!560601 c!299092) b!1833902))

(assert (= (and d!560601 (not c!299092)) b!1833898))

(assert (= (and b!1833898 c!299090) b!1833906))

(assert (= (and b!1833898 (not c!299090)) b!1833901))

(assert (= (and d!560601 res!824678) b!1833899))

(assert (= (and b!1833899 c!299093) b!1833907))

(assert (= (and b!1833899 (not c!299093)) b!1833904))

(assert (= (and b!1833904 c!299091) b!1833903))

(assert (= (and b!1833904 (not c!299091)) b!1833905))

(assert (=> b!1833904 m!2261077))

(declare-fun m!2261581 () Bool)

(assert (=> b!1833904 m!2261581))

(assert (=> b!1833904 m!2261581))

(declare-fun m!2261583 () Bool)

(assert (=> b!1833904 m!2261583))

(declare-fun m!2261585 () Bool)

(assert (=> b!1833900 m!2261585))

(assert (=> b!1833903 m!2261077))

(declare-fun m!2261587 () Bool)

(assert (=> b!1833903 m!2261587))

(declare-fun m!2261589 () Bool)

(assert (=> b!1833906 m!2261589))

(assert (=> b!1833899 m!2261077))

(declare-fun m!2261591 () Bool)

(assert (=> b!1833899 m!2261591))

(declare-fun m!2261593 () Bool)

(assert (=> b!1833905 m!2261593))

(declare-fun m!2261595 () Bool)

(assert (=> d!560601 m!2261595))

(assert (=> d!560601 m!2261077))

(declare-fun m!2261597 () Bool)

(assert (=> d!560601 m!2261597))

(declare-fun m!2261599 () Bool)

(assert (=> b!1833907 m!2261599))

(assert (=> b!1833392 d!560601))

(declare-fun d!560603 () Bool)

(declare-fun lt!711901 () List!20236)

(declare-fun size!15997 (List!20236) Int)

(declare-fun size!15998 (List!20235) Int)

(assert (=> d!560603 (= (size!15997 lt!711901) (size!15998 rules!4610))))

(declare-fun e!1172074 () List!20236)

(assert (=> d!560603 (= lt!711901 e!1172074)))

(declare-fun c!299096 () Bool)

(assert (=> d!560603 (= c!299096 ((_ is Nil!20165) rules!4610))))

(assert (=> d!560603 (= (map!4186 rules!4610 lambda!72058) lt!711901)))

(declare-fun b!1833912 () Bool)

(assert (=> b!1833912 (= e!1172074 Nil!20166)))

(declare-fun b!1833913 () Bool)

(declare-fun $colon$colon!464 (List!20236 Regex!4973) List!20236)

(declare-fun dynLambda!10035 (Int Rule!7090) Regex!4973)

(assert (=> b!1833913 (= e!1172074 ($colon$colon!464 (map!4186 (t!170988 rules!4610) lambda!72058) (dynLambda!10035 lambda!72058 (h!25566 rules!4610))))))

(assert (= (and d!560603 c!299096) b!1833912))

(assert (= (and d!560603 (not c!299096)) b!1833913))

(declare-fun b_lambda!60719 () Bool)

(assert (=> (not b_lambda!60719) (not b!1833913)))

(declare-fun m!2261601 () Bool)

(assert (=> d!560603 m!2261601))

(declare-fun m!2261603 () Bool)

(assert (=> d!560603 m!2261603))

(declare-fun m!2261605 () Bool)

(assert (=> b!1833913 m!2261605))

(declare-fun m!2261607 () Bool)

(assert (=> b!1833913 m!2261607))

(assert (=> b!1833913 m!2261605))

(assert (=> b!1833913 m!2261607))

(declare-fun m!2261609 () Bool)

(assert (=> b!1833913 m!2261609))

(assert (=> b!1833392 d!560603))

(declare-fun bs!408066 () Bool)

(declare-fun d!560605 () Bool)

(assert (= bs!408066 (and d!560605 b!1833392)))

(declare-fun lambda!72087 () Int)

(assert (=> bs!408066 (= lambda!72087 lambda!72058)))

(declare-fun bs!408067 () Bool)

(assert (= bs!408067 (and d!560605 d!560599)))

(assert (=> bs!408067 (= lambda!72087 lambda!72079)))

(declare-fun bs!408068 () Bool)

(assert (= bs!408068 (and d!560605 d!560601)))

(declare-fun lambda!72088 () Int)

(assert (=> bs!408068 (= lambda!72088 lambda!72082)))

(assert (=> d!560605 (forall!4345 (map!4186 rules!4610 lambda!72087) lambda!72088)))

(declare-fun lt!711914 () Unit!34841)

(declare-fun e!1172077 () Unit!34841)

(assert (=> d!560605 (= lt!711914 e!1172077)))

(declare-fun c!299099 () Bool)

(assert (=> d!560605 (= c!299099 ((_ is Nil!20165) rules!4610))))

(assert (=> d!560605 (rulesValid!1392 thiss!28318 rules!4610)))

(declare-fun lt!711915 () Unit!34841)

(declare-fun lt!711912 () Unit!34841)

(assert (=> d!560605 (= lt!711915 lt!711912)))

(declare-fun lt!711916 () List!20234)

(assert (=> d!560605 (= (maxPrefixOneRule!1183 thiss!28318 rule!580 input!3681) (Some!4224 (tuple2!19619 (Token!6845 (apply!5433 (transformation!3645 rule!580) (seqFromList!2602 lt!711916)) rule!580 (size!15992 lt!711916) lt!711916) suffix!1698)))))

(assert (=> d!560605 (= lt!711912 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!553 thiss!28318 rules!4610 lt!711916 input!3681 suffix!1698 rule!580))))

(assert (=> d!560605 (= lt!711916 (list!8193 (charsOf!2288 token!567)))))

(assert (=> d!560605 (= (lemma!542 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 rules!4610) lt!711914)))

(declare-fun b!1833918 () Bool)

(declare-fun Unit!34845 () Unit!34841)

(assert (=> b!1833918 (= e!1172077 Unit!34845)))

(declare-fun b!1833919 () Bool)

(declare-fun Unit!34846 () Unit!34841)

(assert (=> b!1833919 (= e!1172077 Unit!34846)))

(declare-fun lt!711913 () Unit!34841)

(assert (=> b!1833919 (= lt!711913 (lemma!542 input!3681 rule!580 rules!4610 suffix!1698 thiss!28318 token!567 (t!170988 rules!4610)))))

(assert (= (and d!560605 c!299099) b!1833918))

(assert (= (and d!560605 (not c!299099)) b!1833919))

(declare-fun m!2261611 () Bool)

(assert (=> d!560605 m!2261611))

(declare-fun m!2261613 () Bool)

(assert (=> d!560605 m!2261613))

(declare-fun m!2261615 () Bool)

(assert (=> d!560605 m!2261615))

(assert (=> d!560605 m!2261105))

(assert (=> d!560605 m!2261107))

(declare-fun m!2261617 () Bool)

(assert (=> d!560605 m!2261617))

(assert (=> d!560605 m!2261105))

(assert (=> d!560605 m!2261611))

(assert (=> d!560605 m!2261457))

(declare-fun m!2261619 () Bool)

(assert (=> d!560605 m!2261619))

(assert (=> d!560605 m!2261125))

(assert (=> d!560605 m!2261619))

(declare-fun m!2261621 () Bool)

(assert (=> d!560605 m!2261621))

(declare-fun m!2261623 () Bool)

(assert (=> b!1833919 m!2261623))

(assert (=> b!1833392 d!560605))

(declare-fun b!1833933 () Bool)

(declare-fun e!1172080 () Bool)

(declare-fun tp!518814 () Bool)

(declare-fun tp!518815 () Bool)

(assert (=> b!1833933 (= e!1172080 (and tp!518814 tp!518815))))

(declare-fun b!1833932 () Bool)

(declare-fun tp!518818 () Bool)

(assert (=> b!1833932 (= e!1172080 tp!518818)))

(declare-fun b!1833931 () Bool)

(declare-fun tp!518816 () Bool)

(declare-fun tp!518817 () Bool)

(assert (=> b!1833931 (= e!1172080 (and tp!518816 tp!518817))))

(declare-fun b!1833930 () Bool)

(assert (=> b!1833930 (= e!1172080 tp_is_empty!8181)))

(assert (=> b!1833393 (= tp!518730 e!1172080)))

(assert (= (and b!1833393 ((_ is ElementMatch!4973) (regex!3645 (h!25566 rules!4610)))) b!1833930))

(assert (= (and b!1833393 ((_ is Concat!8708) (regex!3645 (h!25566 rules!4610)))) b!1833931))

(assert (= (and b!1833393 ((_ is Star!4973) (regex!3645 (h!25566 rules!4610)))) b!1833932))

(assert (= (and b!1833393 ((_ is Union!4973) (regex!3645 (h!25566 rules!4610)))) b!1833933))

(declare-fun b!1833938 () Bool)

(declare-fun e!1172083 () Bool)

(declare-fun tp!518821 () Bool)

(assert (=> b!1833938 (= e!1172083 (and tp_is_empty!8181 tp!518821))))

(assert (=> b!1833399 (= tp!518746 e!1172083)))

(assert (= (and b!1833399 ((_ is Cons!20164) (t!170987 input!3681))) b!1833938))

(declare-fun b!1833942 () Bool)

(declare-fun e!1172084 () Bool)

(declare-fun tp!518822 () Bool)

(declare-fun tp!518823 () Bool)

(assert (=> b!1833942 (= e!1172084 (and tp!518822 tp!518823))))

(declare-fun b!1833941 () Bool)

(declare-fun tp!518826 () Bool)

(assert (=> b!1833941 (= e!1172084 tp!518826)))

(declare-fun b!1833940 () Bool)

(declare-fun tp!518824 () Bool)

(declare-fun tp!518825 () Bool)

(assert (=> b!1833940 (= e!1172084 (and tp!518824 tp!518825))))

(declare-fun b!1833939 () Bool)

(assert (=> b!1833939 (= e!1172084 tp_is_empty!8181)))

(assert (=> b!1833404 (= tp!518737 e!1172084)))

(assert (= (and b!1833404 ((_ is ElementMatch!4973) (regex!3645 rule!580))) b!1833939))

(assert (= (and b!1833404 ((_ is Concat!8708) (regex!3645 rule!580))) b!1833940))

(assert (= (and b!1833404 ((_ is Star!4973) (regex!3645 rule!580))) b!1833941))

(assert (= (and b!1833404 ((_ is Union!4973) (regex!3645 rule!580))) b!1833942))

(declare-fun b!1833946 () Bool)

(declare-fun e!1172085 () Bool)

(declare-fun tp!518827 () Bool)

(declare-fun tp!518828 () Bool)

(assert (=> b!1833946 (= e!1172085 (and tp!518827 tp!518828))))

(declare-fun b!1833945 () Bool)

(declare-fun tp!518831 () Bool)

(assert (=> b!1833945 (= e!1172085 tp!518831)))

(declare-fun b!1833944 () Bool)

(declare-fun tp!518829 () Bool)

(declare-fun tp!518830 () Bool)

(assert (=> b!1833944 (= e!1172085 (and tp!518829 tp!518830))))

(declare-fun b!1833943 () Bool)

(assert (=> b!1833943 (= e!1172085 tp_is_empty!8181)))

(assert (=> b!1833410 (= tp!518735 e!1172085)))

(assert (= (and b!1833410 ((_ is ElementMatch!4973) (regex!3645 (rule!5825 token!567)))) b!1833943))

(assert (= (and b!1833410 ((_ is Concat!8708) (regex!3645 (rule!5825 token!567)))) b!1833944))

(assert (= (and b!1833410 ((_ is Star!4973) (regex!3645 (rule!5825 token!567)))) b!1833945))

(assert (= (and b!1833410 ((_ is Union!4973) (regex!3645 (rule!5825 token!567)))) b!1833946))

(declare-fun b!1833947 () Bool)

(declare-fun e!1172086 () Bool)

(declare-fun tp!518832 () Bool)

(assert (=> b!1833947 (= e!1172086 (and tp_is_empty!8181 tp!518832))))

(assert (=> b!1833400 (= tp!518733 e!1172086)))

(assert (= (and b!1833400 ((_ is Cons!20164) (t!170987 suffix!1698))) b!1833947))

(declare-fun b!1833958 () Bool)

(declare-fun b_free!51347 () Bool)

(declare-fun b_next!52051 () Bool)

(assert (=> b!1833958 (= b_free!51347 (not b_next!52051))))

(declare-fun tb!112177 () Bool)

(declare-fun t!171031 () Bool)

(assert (=> (and b!1833958 (= (toValue!5192 (transformation!3645 (h!25566 (t!170988 rs!808)))) (toValue!5192 (transformation!3645 rule!580))) t!171031) tb!112177))

(declare-fun result!134916 () Bool)

(assert (= result!134916 result!134876))

(assert (=> d!560519 t!171031))

(declare-fun b_and!142961 () Bool)

(declare-fun tp!518843 () Bool)

(assert (=> b!1833958 (= tp!518843 (and (=> t!171031 result!134916) b_and!142961))))

(declare-fun b_free!51349 () Bool)

(declare-fun b_next!52053 () Bool)

(assert (=> b!1833958 (= b_free!51349 (not b_next!52053))))

(declare-fun t!171033 () Bool)

(declare-fun tb!112179 () Bool)

(assert (=> (and b!1833958 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rs!808)))) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!171033) tb!112179))

(declare-fun result!134918 () Bool)

(assert (= result!134918 result!134866))

(assert (=> d!560485 t!171033))

(assert (=> b!1833861 t!171033))

(declare-fun tp!518841 () Bool)

(declare-fun b_and!142963 () Bool)

(assert (=> b!1833958 (= tp!518841 (and (=> t!171033 result!134918) b_and!142963))))

(declare-fun e!1172096 () Bool)

(assert (=> b!1833958 (= e!1172096 (and tp!518843 tp!518841))))

(declare-fun b!1833957 () Bool)

(declare-fun e!1172098 () Bool)

(declare-fun tp!518844 () Bool)

(assert (=> b!1833957 (= e!1172098 (and tp!518844 (inv!26228 (tag!4059 (h!25566 (t!170988 rs!808)))) (inv!26231 (transformation!3645 (h!25566 (t!170988 rs!808)))) e!1172096))))

(declare-fun b!1833956 () Bool)

(declare-fun e!1172097 () Bool)

(declare-fun tp!518842 () Bool)

(assert (=> b!1833956 (= e!1172097 (and e!1172098 tp!518842))))

(assert (=> b!1833390 (= tp!518734 e!1172097)))

(assert (= b!1833957 b!1833958))

(assert (= b!1833956 b!1833957))

(assert (= (and b!1833390 ((_ is Cons!20165) (t!170988 rs!808))) b!1833956))

(declare-fun m!2261625 () Bool)

(assert (=> b!1833957 m!2261625))

(declare-fun m!2261627 () Bool)

(assert (=> b!1833957 m!2261627))

(declare-fun b!1833959 () Bool)

(declare-fun e!1172099 () Bool)

(declare-fun tp!518845 () Bool)

(assert (=> b!1833959 (= e!1172099 (and tp_is_empty!8181 tp!518845))))

(assert (=> b!1833391 (= tp!518744 e!1172099)))

(assert (= (and b!1833391 ((_ is Cons!20164) (originalCharacters!4453 token!567))) b!1833959))

(declare-fun b!1833963 () Bool)

(declare-fun e!1172100 () Bool)

(declare-fun tp!518846 () Bool)

(declare-fun tp!518847 () Bool)

(assert (=> b!1833963 (= e!1172100 (and tp!518846 tp!518847))))

(declare-fun b!1833962 () Bool)

(declare-fun tp!518850 () Bool)

(assert (=> b!1833962 (= e!1172100 tp!518850)))

(declare-fun b!1833961 () Bool)

(declare-fun tp!518848 () Bool)

(declare-fun tp!518849 () Bool)

(assert (=> b!1833961 (= e!1172100 (and tp!518848 tp!518849))))

(declare-fun b!1833960 () Bool)

(assert (=> b!1833960 (= e!1172100 tp_is_empty!8181)))

(assert (=> b!1833397 (= tp!518743 e!1172100)))

(assert (= (and b!1833397 ((_ is ElementMatch!4973) (regex!3645 (h!25566 rs!808)))) b!1833960))

(assert (= (and b!1833397 ((_ is Concat!8708) (regex!3645 (h!25566 rs!808)))) b!1833961))

(assert (= (and b!1833397 ((_ is Star!4973) (regex!3645 (h!25566 rs!808)))) b!1833962))

(assert (= (and b!1833397 ((_ is Union!4973) (regex!3645 (h!25566 rs!808)))) b!1833963))

(declare-fun b!1833966 () Bool)

(declare-fun b_free!51351 () Bool)

(declare-fun b_next!52055 () Bool)

(assert (=> b!1833966 (= b_free!51351 (not b_next!52055))))

(declare-fun tb!112181 () Bool)

(declare-fun t!171035 () Bool)

(assert (=> (and b!1833966 (= (toValue!5192 (transformation!3645 (h!25566 (t!170988 rules!4610)))) (toValue!5192 (transformation!3645 rule!580))) t!171035) tb!112181))

(declare-fun result!134920 () Bool)

(assert (= result!134920 result!134876))

(assert (=> d!560519 t!171035))

(declare-fun tp!518853 () Bool)

(declare-fun b_and!142965 () Bool)

(assert (=> b!1833966 (= tp!518853 (and (=> t!171035 result!134920) b_and!142965))))

(declare-fun b_free!51353 () Bool)

(declare-fun b_next!52057 () Bool)

(assert (=> b!1833966 (= b_free!51353 (not b_next!52057))))

(declare-fun tb!112183 () Bool)

(declare-fun t!171037 () Bool)

(assert (=> (and b!1833966 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rules!4610)))) (toChars!5051 (transformation!3645 (rule!5825 token!567)))) t!171037) tb!112183))

(declare-fun result!134922 () Bool)

(assert (= result!134922 result!134866))

(assert (=> d!560485 t!171037))

(assert (=> b!1833861 t!171037))

(declare-fun b_and!142967 () Bool)

(declare-fun tp!518851 () Bool)

(assert (=> b!1833966 (= tp!518851 (and (=> t!171037 result!134922) b_and!142967))))

(declare-fun e!1172102 () Bool)

(assert (=> b!1833966 (= e!1172102 (and tp!518853 tp!518851))))

(declare-fun tp!518854 () Bool)

(declare-fun b!1833965 () Bool)

(declare-fun e!1172104 () Bool)

(assert (=> b!1833965 (= e!1172104 (and tp!518854 (inv!26228 (tag!4059 (h!25566 (t!170988 rules!4610)))) (inv!26231 (transformation!3645 (h!25566 (t!170988 rules!4610)))) e!1172102))))

(declare-fun b!1833964 () Bool)

(declare-fun e!1172103 () Bool)

(declare-fun tp!518852 () Bool)

(assert (=> b!1833964 (= e!1172103 (and e!1172104 tp!518852))))

(assert (=> b!1833402 (= tp!518731 e!1172103)))

(assert (= b!1833965 b!1833966))

(assert (= b!1833964 b!1833965))

(assert (= (and b!1833402 ((_ is Cons!20165) (t!170988 rules!4610))) b!1833964))

(declare-fun m!2261629 () Bool)

(assert (=> b!1833965 m!2261629))

(declare-fun m!2261631 () Bool)

(assert (=> b!1833965 m!2261631))

(declare-fun b_lambda!60721 () Bool)

(assert (= b_lambda!60719 (or b!1833392 b_lambda!60721)))

(declare-fun bs!408069 () Bool)

(declare-fun d!560607 () Bool)

(assert (= bs!408069 (and d!560607 b!1833392)))

(assert (=> bs!408069 (= (dynLambda!10035 lambda!72058 (h!25566 rules!4610)) (regex!3645 (h!25566 rules!4610)))))

(assert (=> b!1833913 d!560607))

(declare-fun b_lambda!60723 () Bool)

(assert (= b_lambda!60699 (or (and b!1833403 b_free!51333 (= (toChars!5051 (transformation!3645 (h!25566 rs!808))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833966 b_free!51353 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rules!4610)))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833388 b_free!51325) (and b!1833398 b_free!51329 (= (toChars!5051 (transformation!3645 (h!25566 rules!4610))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833958 b_free!51349 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rs!808)))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833386 b_free!51337 (= (toChars!5051 (transformation!3645 rule!580)) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) b_lambda!60723)))

(declare-fun b_lambda!60725 () Bool)

(assert (= b_lambda!60717 (or (and b!1833403 b_free!51333 (= (toChars!5051 (transformation!3645 (h!25566 rs!808))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833966 b_free!51353 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rules!4610)))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833388 b_free!51325) (and b!1833398 b_free!51329 (= (toChars!5051 (transformation!3645 (h!25566 rules!4610))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833958 b_free!51349 (= (toChars!5051 (transformation!3645 (h!25566 (t!170988 rs!808)))) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) (and b!1833386 b_free!51337 (= (toChars!5051 (transformation!3645 rule!580)) (toChars!5051 (transformation!3645 (rule!5825 token!567))))) b_lambda!60725)))

(declare-fun b_lambda!60727 () Bool)

(assert (= b_lambda!60703 (or (and b!1833958 b_free!51347 (= (toValue!5192 (transformation!3645 (h!25566 (t!170988 rs!808)))) (toValue!5192 (transformation!3645 rule!580)))) (and b!1833403 b_free!51331 (= (toValue!5192 (transformation!3645 (h!25566 rs!808))) (toValue!5192 (transformation!3645 rule!580)))) (and b!1833386 b_free!51335) (and b!1833398 b_free!51327 (= (toValue!5192 (transformation!3645 (h!25566 rules!4610))) (toValue!5192 (transformation!3645 rule!580)))) (and b!1833966 b_free!51351 (= (toValue!5192 (transformation!3645 (h!25566 (t!170988 rules!4610)))) (toValue!5192 (transformation!3645 rule!580)))) (and b!1833388 b_free!51323 (= (toValue!5192 (transformation!3645 (rule!5825 token!567))) (toValue!5192 (transformation!3645 rule!580)))) b_lambda!60727)))

(check-sat (not b!1833698) (not b!1833832) b_and!142931 (not b_next!52051) (not b_next!52031) b_and!142923 (not b_next!52029) b_and!142961 (not b_next!52053) (not b!1833941) (not b!1833557) (not b!1833614) (not b!1833945) (not b!1833944) b_and!142957 (not b_lambda!60727) (not b!1833903) (not d!560481) (not b!1833609) (not d!560489) (not d!560585) (not b!1833957) (not b!1833900) (not b!1833861) (not b_lambda!60721) (not d!560599) (not d!560583) (not b!1833964) (not d!560601) (not b_next!52035) (not b!1833877) (not b!1833695) (not d!560523) (not b!1833947) (not d!560513) (not b!1833830) (not b!1833942) (not b!1833825) (not d!560559) (not b_next!52037) (not d!560541) (not b!1833719) (not b!1833932) b_and!142921 (not b!1833818) (not b!1833852) (not b!1833839) (not b!1833845) (not b!1833940) (not b!1833696) (not b!1833933) (not b!1833876) (not b!1833608) (not b!1833965) (not b_lambda!60723) (not d!560557) (not d!560603) (not d!560485) (not b!1833823) (not b!1833931) (not d!560505) (not b!1833441) (not d!560593) (not b!1833907) (not b!1833820) b_and!142959 (not b!1833440) (not b!1833822) (not b!1833963) (not b!1833447) (not b!1833720) (not b!1833706) tp_is_empty!8181 b_and!142953 b_and!142967 (not b!1833826) (not d!560553) (not b!1833616) (not d!560507) (not bm!114802) (not b_next!52057) (not b!1833899) (not d!560595) (not b_lambda!60725) (not d!560587) (not b_next!52033) (not b!1833961) (not b!1833829) (not b_next!52041) (not b!1833721) (not b!1833636) (not b!1833615) (not b!1833819) (not d!560605) (not d!560491) (not b!1833956) b_and!142927 (not b!1833919) (not b!1833913) (not b!1833854) (not tb!112145) (not b!1833856) (not b!1833824) (not b!1833610) (not b_next!52039) b_and!142963 (not b_next!52027) (not b!1833946) (not b!1833904) (not b!1833962) (not d!560529) (not b!1833873) (not b!1833959) (not b!1833938) (not b_next!52055) (not b!1833705) (not b!1833862) (not bm!114807) (not b!1833700) (not b!1833631) (not b!1833612) (not b!1833906) (not bm!114806) (not tb!112153) b_and!142965 (not b!1833840) (not b!1833834) (not b!1833613) (not b!1833450) (not b!1833905) b_and!142955 (not d!560483) (not d!560533))
(check-sat b_and!142957 (not b_next!52035) (not b_next!52037) b_and!142921 b_and!142959 (not b_next!52057) (not b_next!52033) (not b_next!52041) b_and!142927 (not b_next!52055) b_and!142965 b_and!142955 b_and!142931 (not b_next!52051) (not b_next!52031) b_and!142923 (not b_next!52029) b_and!142961 (not b_next!52053) b_and!142967 b_and!142953 (not b_next!52039) b_and!142963 (not b_next!52027))
