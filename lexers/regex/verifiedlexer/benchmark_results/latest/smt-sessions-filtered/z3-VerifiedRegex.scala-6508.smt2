; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342638 () Bool)

(assert start!342638)

(declare-fun b!3660469 () Bool)

(declare-fun b_free!96577 () Bool)

(declare-fun b_next!97281 () Bool)

(assert (=> b!3660469 (= b_free!96577 (not b_next!97281))))

(declare-fun tp!1115062 () Bool)

(declare-fun b_and!271627 () Bool)

(assert (=> b!3660469 (= tp!1115062 b_and!271627)))

(declare-fun b_free!96579 () Bool)

(declare-fun b_next!97283 () Bool)

(assert (=> b!3660469 (= b_free!96579 (not b_next!97283))))

(declare-fun tp!1115060 () Bool)

(declare-fun b_and!271629 () Bool)

(assert (=> b!3660469 (= tp!1115060 b_and!271629)))

(declare-fun b!3660466 () Bool)

(declare-fun b_free!96581 () Bool)

(declare-fun b_next!97285 () Bool)

(assert (=> b!3660466 (= b_free!96581 (not b_next!97285))))

(declare-fun tp!1115056 () Bool)

(declare-fun b_and!271631 () Bool)

(assert (=> b!3660466 (= tp!1115056 b_and!271631)))

(declare-fun b_free!96583 () Bool)

(declare-fun b_next!97287 () Bool)

(assert (=> b!3660466 (= b_free!96583 (not b_next!97287))))

(declare-fun tp!1115059 () Bool)

(declare-fun b_and!271633 () Bool)

(assert (=> b!3660466 (= tp!1115059 b_and!271633)))

(declare-fun b!3660454 () Bool)

(declare-fun b_free!96585 () Bool)

(declare-fun b_next!97289 () Bool)

(assert (=> b!3660454 (= b_free!96585 (not b_next!97289))))

(declare-fun tp!1115067 () Bool)

(declare-fun b_and!271635 () Bool)

(assert (=> b!3660454 (= tp!1115067 b_and!271635)))

(declare-fun b_free!96587 () Bool)

(declare-fun b_next!97291 () Bool)

(assert (=> b!3660454 (= b_free!96587 (not b_next!97291))))

(declare-fun tp!1115058 () Bool)

(declare-fun b_and!271637 () Bool)

(assert (=> b!3660454 (= tp!1115058 b_and!271637)))

(declare-fun b!3660460 () Bool)

(declare-fun b_free!96589 () Bool)

(declare-fun b_next!97293 () Bool)

(assert (=> b!3660460 (= b_free!96589 (not b_next!97293))))

(declare-fun tp!1115057 () Bool)

(declare-fun b_and!271639 () Bool)

(assert (=> b!3660460 (= tp!1115057 b_and!271639)))

(declare-fun b_free!96591 () Bool)

(declare-fun b_next!97295 () Bool)

(assert (=> b!3660460 (= b_free!96591 (not b_next!97295))))

(declare-fun tp!1115064 () Bool)

(declare-fun b_and!271641 () Bool)

(assert (=> b!3660460 (= tp!1115064 b_and!271641)))

(declare-fun b!3660437 () Bool)

(declare-fun e!2266506 () Bool)

(declare-fun e!2266526 () Bool)

(assert (=> b!3660437 (= e!2266506 e!2266526)))

(declare-fun res!1485960 () Bool)

(assert (=> b!3660437 (=> (not res!1485960) (not e!2266526))))

(declare-datatypes ((List!38743 0))(
  ( (Nil!38619) (Cons!38619 (h!44039 (_ BitVec 16)) (t!298486 List!38743)) )
))
(declare-datatypes ((TokenValue!6026 0))(
  ( (FloatLiteralValue!12052 (text!42627 List!38743)) (TokenValueExt!6025 (__x!24269 Int)) (Broken!30130 (value!185620 List!38743)) (Object!6149) (End!6026) (Def!6026) (Underscore!6026) (Match!6026) (Else!6026) (Error!6026) (Case!6026) (If!6026) (Extends!6026) (Abstract!6026) (Class!6026) (Val!6026) (DelimiterValue!12052 (del!6086 List!38743)) (KeywordValue!6032 (value!185621 List!38743)) (CommentValue!12052 (value!185622 List!38743)) (WhitespaceValue!12052 (value!185623 List!38743)) (IndentationValue!6026 (value!185624 List!38743)) (String!43463) (Int32!6026) (Broken!30131 (value!185625 List!38743)) (Boolean!6027) (Unit!55900) (OperatorValue!6029 (op!6086 List!38743)) (IdentifierValue!12052 (value!185626 List!38743)) (IdentifierValue!12053 (value!185627 List!38743)) (WhitespaceValue!12053 (value!185628 List!38743)) (True!12052) (False!12052) (Broken!30132 (value!185629 List!38743)) (Broken!30133 (value!185630 List!38743)) (True!12053) (RightBrace!6026) (RightBracket!6026) (Colon!6026) (Null!6026) (Comma!6026) (LeftBracket!6026) (False!12053) (LeftBrace!6026) (ImaginaryLiteralValue!6026 (text!42628 List!38743)) (StringLiteralValue!18078 (value!185631 List!38743)) (EOFValue!6026 (value!185632 List!38743)) (IdentValue!6026 (value!185633 List!38743)) (DelimiterValue!12053 (value!185634 List!38743)) (DedentValue!6026 (value!185635 List!38743)) (NewLineValue!6026 (value!185636 List!38743)) (IntegerValue!18078 (value!185637 (_ BitVec 32)) (text!42629 List!38743)) (IntegerValue!18079 (value!185638 Int) (text!42630 List!38743)) (Times!6026) (Or!6026) (Equal!6026) (Minus!6026) (Broken!30134 (value!185639 List!38743)) (And!6026) (Div!6026) (LessEqual!6026) (Mod!6026) (Concat!16581) (Not!6026) (Plus!6026) (SpaceValue!6026 (value!185640 List!38743)) (IntegerValue!18080 (value!185641 Int) (text!42631 List!38743)) (StringLiteralValue!18079 (text!42632 List!38743)) (FloatLiteralValue!12053 (text!42633 List!38743)) (BytesLiteralValue!6026 (value!185642 List!38743)) (CommentValue!12053 (value!185643 List!38743)) (StringLiteralValue!18080 (value!185644 List!38743)) (ErrorTokenValue!6026 (msg!6087 List!38743)) )
))
(declare-datatypes ((C!21296 0))(
  ( (C!21297 (val!12696 Int)) )
))
(declare-datatypes ((Regex!10555 0))(
  ( (ElementMatch!10555 (c!632666 C!21296)) (Concat!16582 (regOne!21622 Regex!10555) (regTwo!21622 Regex!10555)) (EmptyExpr!10555) (Star!10555 (reg!10884 Regex!10555)) (EmptyLang!10555) (Union!10555 (regOne!21623 Regex!10555) (regTwo!21623 Regex!10555)) )
))
(declare-datatypes ((String!43464 0))(
  ( (String!43465 (value!185645 String)) )
))
(declare-datatypes ((List!38744 0))(
  ( (Nil!38620) (Cons!38620 (h!44040 C!21296) (t!298487 List!38744)) )
))
(declare-datatypes ((IArray!23623 0))(
  ( (IArray!23624 (innerList!11869 List!38744)) )
))
(declare-datatypes ((Conc!11809 0))(
  ( (Node!11809 (left!30141 Conc!11809) (right!30471 Conc!11809) (csize!23848 Int) (cheight!12020 Int)) (Leaf!18318 (xs!15011 IArray!23623) (csize!23849 Int)) (Empty!11809) )
))
(declare-datatypes ((BalanceConc!23232 0))(
  ( (BalanceConc!23233 (c!632667 Conc!11809)) )
))
(declare-datatypes ((TokenValueInjection!11480 0))(
  ( (TokenValueInjection!11481 (toValue!8088 Int) (toChars!7947 Int)) )
))
(declare-datatypes ((Rule!11392 0))(
  ( (Rule!11393 (regex!5796 Regex!10555) (tag!6574 String!43464) (isSeparator!5796 Bool) (transformation!5796 TokenValueInjection!11480)) )
))
(declare-fun lt!1273118 () Rule!11392)

(declare-datatypes ((Token!10958 0))(
  ( (Token!10959 (value!185646 TokenValue!6026) (rule!8608 Rule!11392) (size!29505 Int) (originalCharacters!6510 List!38744)) )
))
(declare-datatypes ((tuple2!38484 0))(
  ( (tuple2!38485 (_1!22376 Token!10958) (_2!22376 List!38744)) )
))
(declare-fun lt!1273106 () tuple2!38484)

(declare-fun matchR!5124 (Regex!10555 List!38744) Bool)

(declare-fun list!14326 (BalanceConc!23232) List!38744)

(declare-fun charsOf!3810 (Token!10958) BalanceConc!23232)

(assert (=> b!3660437 (= res!1485960 (matchR!5124 (regex!5796 lt!1273118) (list!14326 (charsOf!3810 (_1!22376 lt!1273106)))))))

(declare-datatypes ((Option!8220 0))(
  ( (None!8219) (Some!8219 (v!38107 Rule!11392)) )
))
(declare-fun lt!1273099 () Option!8220)

(declare-fun get!12728 (Option!8220) Rule!11392)

(assert (=> b!3660437 (= lt!1273118 (get!12728 lt!1273099))))

(declare-fun b!3660439 () Bool)

(declare-fun e!2266531 () Bool)

(declare-fun e!2266533 () Bool)

(assert (=> b!3660439 (= e!2266531 e!2266533)))

(declare-fun res!1485952 () Bool)

(assert (=> b!3660439 (=> (not res!1485952) (not e!2266533))))

(declare-datatypes ((Option!8221 0))(
  ( (None!8220) (Some!8220 (v!38108 tuple2!38484)) )
))
(declare-fun lt!1273089 () Option!8221)

(declare-fun isDefined!6452 (Option!8221) Bool)

(assert (=> b!3660439 (= res!1485952 (isDefined!6452 lt!1273089))))

(declare-datatypes ((List!38745 0))(
  ( (Nil!38621) (Cons!38621 (h!44041 Rule!11392) (t!298488 List!38745)) )
))
(declare-fun rules!3307 () List!38745)

(declare-datatypes ((LexerInterface!5385 0))(
  ( (LexerInterfaceExt!5382 (__x!24270 Int)) (Lexer!5383) )
))
(declare-fun thiss!23823 () LexerInterface!5385)

(declare-fun lt!1273091 () List!38744)

(declare-fun maxPrefix!2919 (LexerInterface!5385 List!38745 List!38744) Option!8221)

(assert (=> b!3660439 (= lt!1273089 (maxPrefix!2919 thiss!23823 rules!3307 lt!1273091))))

(declare-fun lt!1273108 () BalanceConc!23232)

(assert (=> b!3660439 (= lt!1273091 (list!14326 lt!1273108))))

(declare-fun token!511 () Token!10958)

(assert (=> b!3660439 (= lt!1273108 (charsOf!3810 token!511))))

(declare-fun b!3660440 () Bool)

(assert (=> b!3660440 false))

(declare-datatypes ((Unit!55901 0))(
  ( (Unit!55902) )
))
(declare-fun lt!1273098 () Unit!55901)

(declare-fun call!264764 () Unit!55901)

(assert (=> b!3660440 (= lt!1273098 call!264764)))

(declare-fun call!264763 () Bool)

(assert (=> b!3660440 (not call!264763)))

(declare-fun lt!1273109 () C!21296)

(declare-fun lt!1273119 () Unit!55901)

(declare-fun anOtherTypeRule!33 () Rule!11392)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!442 (LexerInterface!5385 List!38745 List!38745 Rule!11392 Rule!11392 C!21296) Unit!55901)

(assert (=> b!3660440 (= lt!1273119 (lemmaNonSepRuleNotContainsCharContainedInASepRule!442 thiss!23823 rules!3307 rules!3307 (rule!8608 (_1!22376 lt!1273106)) anOtherTypeRule!33 lt!1273109))))

(declare-fun e!2266530 () Unit!55901)

(declare-fun Unit!55903 () Unit!55901)

(assert (=> b!3660440 (= e!2266530 Unit!55903)))

(declare-fun b!3660441 () Bool)

(declare-fun e!2266528 () Bool)

(declare-fun e!2266505 () Bool)

(assert (=> b!3660441 (= e!2266528 (not e!2266505))))

(declare-fun res!1485944 () Bool)

(assert (=> b!3660441 (=> res!1485944 e!2266505)))

(declare-fun rule!403 () Rule!11392)

(assert (=> b!3660441 (= res!1485944 (not (matchR!5124 (regex!5796 rule!403) lt!1273091)))))

(declare-fun ruleValid!2060 (LexerInterface!5385 Rule!11392) Bool)

(assert (=> b!3660441 (ruleValid!2060 thiss!23823 rule!403)))

(declare-fun lt!1273101 () Unit!55901)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1214 (LexerInterface!5385 Rule!11392 List!38745) Unit!55901)

(assert (=> b!3660441 (= lt!1273101 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1214 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3660442 () Bool)

(declare-fun res!1485941 () Bool)

(assert (=> b!3660442 (=> (not res!1485941) (not e!2266531))))

(declare-fun contains!7657 (List!38745 Rule!11392) Bool)

(assert (=> b!3660442 (= res!1485941 (contains!7657 rules!3307 rule!403))))

(declare-fun b!3660443 () Bool)

(declare-fun res!1485953 () Bool)

(assert (=> b!3660443 (=> res!1485953 e!2266505)))

(declare-fun suffix!1395 () List!38744)

(declare-fun isEmpty!22904 (List!38744) Bool)

(assert (=> b!3660443 (= res!1485953 (isEmpty!22904 suffix!1395))))

(declare-fun e!2266524 () Bool)

(declare-fun b!3660444 () Bool)

(declare-fun tp!1115061 () Bool)

(declare-fun e!2266534 () Bool)

(declare-fun inv!52083 (String!43464) Bool)

(declare-fun inv!52086 (TokenValueInjection!11480) Bool)

(assert (=> b!3660444 (= e!2266524 (and tp!1115061 (inv!52083 (tag!6574 (rule!8608 token!511))) (inv!52086 (transformation!5796 (rule!8608 token!511))) e!2266534))))

(declare-fun b!3660445 () Bool)

(declare-fun e!2266514 () Bool)

(declare-fun e!2266522 () Bool)

(declare-fun tp!1115068 () Bool)

(assert (=> b!3660445 (= e!2266514 (and e!2266522 tp!1115068))))

(declare-fun b!3660446 () Bool)

(declare-fun e!2266520 () Bool)

(assert (=> b!3660446 (= e!2266505 e!2266520)))

(declare-fun res!1485946 () Bool)

(assert (=> b!3660446 (=> res!1485946 e!2266520)))

(declare-fun lt!1273095 () List!38744)

(declare-fun contains!7658 (List!38744 C!21296) Bool)

(assert (=> b!3660446 (= res!1485946 (contains!7658 lt!1273095 lt!1273109))))

(declare-fun head!7824 (List!38744) C!21296)

(assert (=> b!3660446 (= lt!1273109 (head!7824 suffix!1395))))

(declare-fun usedCharacters!1008 (Regex!10555) List!38744)

(assert (=> b!3660446 (= lt!1273095 (usedCharacters!1008 (regex!5796 rule!403)))))

(declare-fun b!3660447 () Bool)

(declare-fun e!2266507 () Bool)

(declare-fun e!2266527 () Bool)

(assert (=> b!3660447 (= e!2266507 e!2266527)))

(declare-fun res!1485957 () Bool)

(assert (=> b!3660447 (=> res!1485957 e!2266527)))

(assert (=> b!3660447 (= res!1485957 (= (rule!8608 (_1!22376 lt!1273106)) (rule!8608 token!511)))))

(declare-fun lt!1273105 () List!38744)

(assert (=> b!3660447 (= lt!1273105 lt!1273091)))

(declare-fun lt!1273103 () Unit!55901)

(declare-fun lt!1273117 () List!38744)

(declare-fun lemmaIsPrefixSameLengthThenSameList!621 (List!38744 List!38744 List!38744) Unit!55901)

(assert (=> b!3660447 (= lt!1273103 (lemmaIsPrefixSameLengthThenSameList!621 lt!1273105 lt!1273091 lt!1273117))))

(declare-fun lt!1273084 () Unit!55901)

(declare-fun e!2266509 () Unit!55901)

(assert (=> b!3660447 (= lt!1273084 e!2266509)))

(declare-fun c!632665 () Bool)

(declare-fun lt!1273113 () Int)

(declare-fun lt!1273100 () Int)

(assert (=> b!3660447 (= c!632665 (< lt!1273113 lt!1273100))))

(declare-fun lt!1273112 () Unit!55901)

(declare-fun e!2266535 () Unit!55901)

(assert (=> b!3660447 (= lt!1273112 e!2266535)))

(declare-fun c!632659 () Bool)

(assert (=> b!3660447 (= c!632659 (> lt!1273113 lt!1273100))))

(declare-fun size!29506 (BalanceConc!23232) Int)

(assert (=> b!3660447 (= lt!1273100 (size!29506 lt!1273108))))

(declare-fun lt!1273083 () Unit!55901)

(declare-fun e!2266521 () Unit!55901)

(assert (=> b!3660447 (= lt!1273083 e!2266521)))

(declare-fun c!632663 () Bool)

(assert (=> b!3660447 (= c!632663 (isSeparator!5796 rule!403))))

(declare-fun lt!1273073 () Unit!55901)

(declare-fun e!2266536 () Unit!55901)

(assert (=> b!3660447 (= lt!1273073 e!2266536)))

(declare-fun c!632660 () Bool)

(declare-fun lt!1273107 () C!21296)

(assert (=> b!3660447 (= c!632660 (not (contains!7658 lt!1273095 lt!1273107)))))

(assert (=> b!3660447 (= lt!1273107 (head!7824 lt!1273105))))

(declare-fun b!3660448 () Bool)

(declare-fun res!1485942 () Bool)

(assert (=> b!3660448 (=> (not res!1485942) (not e!2266531))))

(declare-fun rulesInvariant!4782 (LexerInterface!5385 List!38745) Bool)

(assert (=> b!3660448 (= res!1485942 (rulesInvariant!4782 thiss!23823 rules!3307))))

(declare-fun b!3660449 () Bool)

(declare-fun res!1485943 () Bool)

(assert (=> b!3660449 (=> (not res!1485943) (not e!2266531))))

(assert (=> b!3660449 (= res!1485943 (not (= (isSeparator!5796 anOtherTypeRule!33) (isSeparator!5796 rule!403))))))

(declare-fun tp!1115054 () Bool)

(declare-fun b!3660450 () Bool)

(declare-fun e!2266508 () Bool)

(assert (=> b!3660450 (= e!2266522 (and tp!1115054 (inv!52083 (tag!6574 (h!44041 rules!3307))) (inv!52086 (transformation!5796 (h!44041 rules!3307))) e!2266508))))

(declare-fun bm!264754 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!744 (Regex!10555 List!38744 C!21296) Unit!55901)

(assert (=> bm!264754 (= call!264764 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!744 (regex!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273105 lt!1273109))))

(declare-fun b!3660451 () Bool)

(declare-fun res!1485961 () Bool)

(assert (=> b!3660451 (=> (not res!1485961) (not e!2266531))))

(assert (=> b!3660451 (= res!1485961 (contains!7657 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1115065 () Bool)

(declare-fun b!3660452 () Bool)

(declare-fun e!2266504 () Bool)

(declare-fun e!2266503 () Bool)

(assert (=> b!3660452 (= e!2266504 (and tp!1115065 (inv!52083 (tag!6574 anOtherTypeRule!33)) (inv!52086 (transformation!5796 anOtherTypeRule!33)) e!2266503))))

(declare-fun b!3660453 () Bool)

(assert (=> b!3660453 false))

(declare-fun lt!1273088 () Unit!55901)

(assert (=> b!3660453 (= lt!1273088 call!264764)))

(assert (=> b!3660453 (not call!264763)))

(declare-fun lt!1273074 () Unit!55901)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!324 (LexerInterface!5385 List!38745 List!38745 Rule!11392 Rule!11392 C!21296) Unit!55901)

(assert (=> b!3660453 (= lt!1273074 (lemmaSepRuleNotContainsCharContainedInANonSepRule!324 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8608 (_1!22376 lt!1273106)) lt!1273109))))

(declare-fun Unit!55904 () Unit!55901)

(assert (=> b!3660453 (= e!2266530 Unit!55904)))

(declare-fun bm!264755 () Bool)

(declare-fun call!264762 () List!38744)

(assert (=> bm!264755 (= call!264762 (usedCharacters!1008 (regex!5796 (rule!8608 (_1!22376 lt!1273106)))))))

(declare-fun b!3660438 () Bool)

(declare-fun e!2266518 () Unit!55901)

(declare-fun Unit!55905 () Unit!55901)

(assert (=> b!3660438 (= e!2266518 Unit!55905)))

(declare-fun res!1485963 () Bool)

(assert (=> start!342638 (=> (not res!1485963) (not e!2266531))))

(get-info :version)

(assert (=> start!342638 (= res!1485963 ((_ is Lexer!5383) thiss!23823))))

(assert (=> start!342638 e!2266531))

(assert (=> start!342638 e!2266514))

(declare-fun e!2266515 () Bool)

(assert (=> start!342638 e!2266515))

(assert (=> start!342638 true))

(declare-fun e!2266512 () Bool)

(declare-fun inv!52087 (Token!10958) Bool)

(assert (=> start!342638 (and (inv!52087 token!511) e!2266512)))

(declare-fun e!2266511 () Bool)

(assert (=> start!342638 e!2266511))

(assert (=> start!342638 e!2266504))

(assert (=> b!3660454 (= e!2266503 (and tp!1115067 tp!1115058))))

(declare-fun b!3660455 () Bool)

(declare-fun res!1485951 () Bool)

(assert (=> b!3660455 (=> (not res!1485951) (not e!2266531))))

(declare-fun isEmpty!22905 (List!38745) Bool)

(assert (=> b!3660455 (= res!1485951 (not (isEmpty!22905 rules!3307)))))

(declare-fun b!3660456 () Bool)

(declare-fun tp_is_empty!18193 () Bool)

(declare-fun tp!1115063 () Bool)

(assert (=> b!3660456 (= e!2266515 (and tp_is_empty!18193 tp!1115063))))

(declare-fun bm!264756 () Bool)

(declare-fun call!264760 () Unit!55901)

(assert (=> bm!264756 (= call!264760 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!744 (regex!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273105 lt!1273107))))

(declare-fun b!3660457 () Bool)

(declare-fun Unit!55906 () Unit!55901)

(assert (=> b!3660457 (= e!2266509 Unit!55906)))

(declare-fun b!3660458 () Bool)

(declare-fun res!1485958 () Bool)

(assert (=> b!3660458 (=> res!1485958 e!2266520)))

(assert (=> b!3660458 (= res!1485958 (not (contains!7658 (usedCharacters!1008 (regex!5796 anOtherTypeRule!33)) lt!1273109)))))

(declare-fun b!3660459 () Bool)

(declare-fun res!1485948 () Bool)

(assert (=> b!3660459 (=> res!1485948 e!2266527)))

(declare-fun getIndex!464 (List!38745 Rule!11392) Int)

(assert (=> b!3660459 (= res!1485948 (>= (getIndex!464 rules!3307 (rule!8608 (_1!22376 lt!1273106))) (getIndex!464 rules!3307 rule!403)))))

(declare-fun e!2266513 () Bool)

(assert (=> b!3660460 (= e!2266513 (and tp!1115057 tp!1115064))))

(declare-fun b!3660461 () Bool)

(declare-fun Unit!55907 () Unit!55901)

(assert (=> b!3660461 (= e!2266535 Unit!55907)))

(declare-fun b!3660462 () Bool)

(declare-fun res!1485947 () Bool)

(assert (=> b!3660462 (=> (not res!1485947) (not e!2266528))))

(assert (=> b!3660462 (= res!1485947 (= (rule!8608 token!511) rule!403))))

(declare-fun tp!1115066 () Bool)

(declare-fun b!3660463 () Bool)

(assert (=> b!3660463 (= e!2266511 (and tp!1115066 (inv!52083 (tag!6574 rule!403)) (inv!52086 (transformation!5796 rule!403)) e!2266513))))

(declare-fun b!3660464 () Bool)

(declare-fun Unit!55908 () Unit!55901)

(assert (=> b!3660464 (= e!2266509 Unit!55908)))

(declare-fun lt!1273114 () Unit!55901)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!338 (LexerInterface!5385 List!38745 Rule!11392 List!38744 List!38744 List!38744 Rule!11392) Unit!55901)

(assert (=> b!3660464 (= lt!1273114 (lemmaMaxPrefixOutputsMaxPrefix!338 thiss!23823 rules!3307 (rule!8608 (_1!22376 lt!1273106)) lt!1273105 lt!1273117 lt!1273091 rule!403))))

(assert (=> b!3660464 false))

(declare-fun b!3660465 () Bool)

(assert (=> b!3660465 false))

(declare-fun lt!1273080 () Unit!55901)

(assert (=> b!3660465 (= lt!1273080 call!264760)))

(declare-fun call!264761 () Bool)

(assert (=> b!3660465 (not call!264761)))

(declare-fun lt!1273081 () Unit!55901)

(assert (=> b!3660465 (= lt!1273081 (lemmaSepRuleNotContainsCharContainedInANonSepRule!324 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8608 (_1!22376 lt!1273106)) lt!1273107))))

(declare-fun Unit!55909 () Unit!55901)

(assert (=> b!3660465 (= e!2266518 Unit!55909)))

(assert (=> b!3660466 (= e!2266508 (and tp!1115056 tp!1115059))))

(declare-fun b!3660467 () Bool)

(assert (=> b!3660467 (= e!2266526 (= (rule!8608 (_1!22376 lt!1273106)) lt!1273118))))

(declare-fun b!3660468 () Bool)

(assert (=> b!3660468 (= e!2266535 e!2266530)))

(declare-fun lt!1273082 () Unit!55901)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!104 (List!38744 List!38744 List!38744 List!38744) Unit!55901)

(assert (=> b!3660468 (= lt!1273082 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!104 lt!1273091 suffix!1395 lt!1273105 lt!1273117))))

(assert (=> b!3660468 (contains!7658 lt!1273105 lt!1273109)))

(declare-fun c!632662 () Bool)

(assert (=> b!3660468 (= c!632662 (isSeparator!5796 rule!403))))

(assert (=> b!3660469 (= e!2266534 (and tp!1115062 tp!1115060))))

(declare-fun b!3660470 () Bool)

(assert (=> b!3660470 false))

(declare-fun lt!1273120 () Unit!55901)

(assert (=> b!3660470 (= lt!1273120 call!264760)))

(assert (=> b!3660470 (not call!264761)))

(declare-fun lt!1273116 () Unit!55901)

(assert (=> b!3660470 (= lt!1273116 (lemmaNonSepRuleNotContainsCharContainedInASepRule!442 thiss!23823 rules!3307 rules!3307 (rule!8608 (_1!22376 lt!1273106)) rule!403 lt!1273107))))

(declare-fun e!2266517 () Unit!55901)

(declare-fun Unit!55910 () Unit!55901)

(assert (=> b!3660470 (= e!2266517 Unit!55910)))

(declare-fun b!3660471 () Bool)

(declare-fun e!2266510 () Bool)

(assert (=> b!3660471 (= e!2266520 e!2266510)))

(declare-fun res!1485954 () Bool)

(assert (=> b!3660471 (=> res!1485954 e!2266510)))

(declare-fun isPrefix!3159 (List!38744 List!38744) Bool)

(assert (=> b!3660471 (= res!1485954 (not (isPrefix!3159 lt!1273105 lt!1273117)))))

(declare-fun ++!9612 (List!38744 List!38744) List!38744)

(assert (=> b!3660471 (isPrefix!3159 lt!1273105 (++!9612 lt!1273105 (_2!22376 lt!1273106)))))

(declare-fun lt!1273110 () Unit!55901)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2078 (List!38744 List!38744) Unit!55901)

(assert (=> b!3660471 (= lt!1273110 (lemmaConcatTwoListThenFirstIsPrefix!2078 lt!1273105 (_2!22376 lt!1273106)))))

(declare-fun lt!1273104 () BalanceConc!23232)

(assert (=> b!3660471 (= lt!1273105 (list!14326 lt!1273104))))

(assert (=> b!3660471 (= lt!1273104 (charsOf!3810 (_1!22376 lt!1273106)))))

(assert (=> b!3660471 e!2266506))

(declare-fun res!1485950 () Bool)

(assert (=> b!3660471 (=> (not res!1485950) (not e!2266506))))

(declare-fun isDefined!6453 (Option!8220) Bool)

(assert (=> b!3660471 (= res!1485950 (isDefined!6453 lt!1273099))))

(declare-fun getRuleFromTag!1400 (LexerInterface!5385 List!38745 String!43464) Option!8220)

(assert (=> b!3660471 (= lt!1273099 (getRuleFromTag!1400 thiss!23823 rules!3307 (tag!6574 (rule!8608 (_1!22376 lt!1273106)))))))

(declare-fun lt!1273097 () Unit!55901)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1400 (LexerInterface!5385 List!38745 List!38744 Token!10958) Unit!55901)

(assert (=> b!3660471 (= lt!1273097 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1400 thiss!23823 rules!3307 lt!1273117 (_1!22376 lt!1273106)))))

(declare-fun lt!1273092 () Option!8221)

(declare-fun get!12729 (Option!8221) tuple2!38484)

(assert (=> b!3660471 (= lt!1273106 (get!12729 lt!1273092))))

(declare-fun lt!1273072 () Unit!55901)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1063 (LexerInterface!5385 List!38745 List!38744 List!38744) Unit!55901)

(assert (=> b!3660471 (= lt!1273072 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1063 thiss!23823 rules!3307 lt!1273091 suffix!1395))))

(assert (=> b!3660471 (= lt!1273092 (maxPrefix!2919 thiss!23823 rules!3307 lt!1273117))))

(assert (=> b!3660471 (isPrefix!3159 lt!1273091 lt!1273117)))

(declare-fun lt!1273096 () Unit!55901)

(assert (=> b!3660471 (= lt!1273096 (lemmaConcatTwoListThenFirstIsPrefix!2078 lt!1273091 suffix!1395))))

(assert (=> b!3660471 (= lt!1273117 (++!9612 lt!1273091 suffix!1395))))

(declare-fun b!3660472 () Bool)

(declare-fun Unit!55911 () Unit!55901)

(assert (=> b!3660472 (= e!2266536 Unit!55911)))

(declare-fun b!3660473 () Bool)

(assert (=> b!3660473 (= e!2266521 e!2266517)))

(declare-fun c!632661 () Bool)

(assert (=> b!3660473 (= c!632661 (not (isSeparator!5796 (rule!8608 (_1!22376 lt!1273106)))))))

(declare-fun b!3660474 () Bool)

(assert (=> b!3660474 (= e!2266521 e!2266518)))

(declare-fun c!632664 () Bool)

(assert (=> b!3660474 (= c!632664 (isSeparator!5796 (rule!8608 (_1!22376 lt!1273106))))))

(declare-fun tp!1115055 () Bool)

(declare-fun b!3660475 () Bool)

(declare-fun inv!21 (TokenValue!6026) Bool)

(assert (=> b!3660475 (= e!2266512 (and (inv!21 (value!185646 token!511)) e!2266524 tp!1115055))))

(declare-fun b!3660476 () Bool)

(declare-fun res!1485962 () Bool)

(assert (=> b!3660476 (=> res!1485962 e!2266520)))

(declare-fun sepAndNonSepRulesDisjointChars!1964 (List!38745 List!38745) Bool)

(assert (=> b!3660476 (= res!1485962 (not (sepAndNonSepRulesDisjointChars!1964 rules!3307 rules!3307)))))

(declare-fun bm!264757 () Bool)

(declare-fun call!264759 () List!38744)

(assert (=> bm!264757 (= call!264761 (contains!7658 call!264759 lt!1273107))))

(declare-fun b!3660477 () Bool)

(declare-fun res!1485949 () Bool)

(assert (=> b!3660477 (=> res!1485949 e!2266510)))

(assert (=> b!3660477 (= res!1485949 (not (matchR!5124 (regex!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273105)))))

(declare-fun b!3660478 () Bool)

(declare-fun e!2266529 () Bool)

(assert (=> b!3660478 (= e!2266529 e!2266507)))

(declare-fun res!1485955 () Bool)

(assert (=> b!3660478 (=> res!1485955 e!2266507)))

(declare-fun lt!1273077 () Option!8221)

(declare-fun lt!1273102 () List!38744)

(assert (=> b!3660478 (= res!1485955 (or (not (= lt!1273102 (_2!22376 lt!1273106))) (not (= lt!1273077 (Some!8220 (tuple2!38485 (_1!22376 lt!1273106) lt!1273102))))))))

(assert (=> b!3660478 (= (_2!22376 lt!1273106) lt!1273102)))

(declare-fun lt!1273076 () Unit!55901)

(declare-fun lemmaSamePrefixThenSameSuffix!1486 (List!38744 List!38744 List!38744 List!38744 List!38744) Unit!55901)

(assert (=> b!3660478 (= lt!1273076 (lemmaSamePrefixThenSameSuffix!1486 lt!1273105 (_2!22376 lt!1273106) lt!1273105 lt!1273102 lt!1273117))))

(declare-fun getSuffix!1712 (List!38744 List!38744) List!38744)

(assert (=> b!3660478 (= lt!1273102 (getSuffix!1712 lt!1273117 lt!1273105))))

(declare-fun lt!1273078 () TokenValue!6026)

(declare-fun lt!1273093 () Int)

(assert (=> b!3660478 (= lt!1273077 (Some!8220 (tuple2!38485 (Token!10959 lt!1273078 (rule!8608 (_1!22376 lt!1273106)) lt!1273093 lt!1273105) (_2!22376 lt!1273106))))))

(declare-fun maxPrefixOneRule!2057 (LexerInterface!5385 Rule!11392 List!38744) Option!8221)

(assert (=> b!3660478 (= lt!1273077 (maxPrefixOneRule!2057 thiss!23823 (rule!8608 (_1!22376 lt!1273106)) lt!1273117))))

(declare-fun size!29507 (List!38744) Int)

(assert (=> b!3660478 (= lt!1273093 (size!29507 lt!1273105))))

(declare-fun apply!9298 (TokenValueInjection!11480 BalanceConc!23232) TokenValue!6026)

(declare-fun seqFromList!4345 (List!38744) BalanceConc!23232)

(assert (=> b!3660478 (= lt!1273078 (apply!9298 (transformation!5796 (rule!8608 (_1!22376 lt!1273106))) (seqFromList!4345 lt!1273105)))))

(declare-fun lt!1273086 () Unit!55901)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1113 (LexerInterface!5385 List!38745 List!38744 List!38744 List!38744 Rule!11392) Unit!55901)

(assert (=> b!3660478 (= lt!1273086 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1113 thiss!23823 rules!3307 lt!1273105 lt!1273117 (_2!22376 lt!1273106) (rule!8608 (_1!22376 lt!1273106))))))

(declare-fun b!3660479 () Bool)

(assert (=> b!3660479 (= e!2266527 true)))

(declare-fun lt!1273079 () Bool)

(assert (=> b!3660479 (= lt!1273079 (isPrefix!3159 lt!1273091 lt!1273091))))

(assert (=> b!3660479 (isEmpty!22904 (getSuffix!1712 lt!1273091 lt!1273091))))

(declare-fun lt!1273087 () Unit!55901)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!176 (List!38744) Unit!55901)

(assert (=> b!3660479 (= lt!1273087 (lemmaGetSuffixOnListWithItSelfIsEmpty!176 lt!1273091))))

(declare-fun b!3660480 () Bool)

(declare-fun Unit!55912 () Unit!55901)

(assert (=> b!3660480 (= e!2266536 Unit!55912)))

(declare-fun lt!1273085 () Unit!55901)

(assert (=> b!3660480 (= lt!1273085 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!744 (regex!5796 rule!403) lt!1273091 lt!1273107))))

(assert (=> b!3660480 false))

(declare-fun b!3660481 () Bool)

(assert (=> b!3660481 (= e!2266510 e!2266529)))

(declare-fun res!1485959 () Bool)

(assert (=> b!3660481 (=> res!1485959 e!2266529)))

(declare-fun lt!1273090 () TokenValue!6026)

(assert (=> b!3660481 (= res!1485959 (not (= lt!1273092 (Some!8220 (tuple2!38485 (Token!10959 lt!1273090 (rule!8608 (_1!22376 lt!1273106)) lt!1273113 lt!1273105) (_2!22376 lt!1273106))))))))

(assert (=> b!3660481 (= lt!1273113 (size!29506 lt!1273104))))

(assert (=> b!3660481 (= lt!1273090 (apply!9298 (transformation!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273104))))

(declare-fun lt!1273115 () Unit!55901)

(declare-fun lemmaCharactersSize!841 (Token!10958) Unit!55901)

(assert (=> b!3660481 (= lt!1273115 (lemmaCharactersSize!841 (_1!22376 lt!1273106)))))

(declare-fun lt!1273075 () Unit!55901)

(declare-fun lemmaEqSameImage!979 (TokenValueInjection!11480 BalanceConc!23232 BalanceConc!23232) Unit!55901)

(assert (=> b!3660481 (= lt!1273075 (lemmaEqSameImage!979 (transformation!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273104 (seqFromList!4345 (originalCharacters!6510 (_1!22376 lt!1273106)))))))

(declare-fun lt!1273111 () Unit!55901)

(declare-fun lemmaSemiInverse!1545 (TokenValueInjection!11480 BalanceConc!23232) Unit!55901)

(assert (=> b!3660481 (= lt!1273111 (lemmaSemiInverse!1545 (transformation!5796 (rule!8608 (_1!22376 lt!1273106))) lt!1273104))))

(declare-fun bm!264758 () Bool)

(assert (=> bm!264758 (= call!264759 (usedCharacters!1008 (regex!5796 (rule!8608 (_1!22376 lt!1273106)))))))

(declare-fun b!3660482 () Bool)

(assert (=> b!3660482 (= e!2266533 e!2266528)))

(declare-fun res!1485945 () Bool)

(assert (=> b!3660482 (=> (not res!1485945) (not e!2266528))))

(declare-fun lt!1273094 () tuple2!38484)

(assert (=> b!3660482 (= res!1485945 (= (_1!22376 lt!1273094) token!511))))

(assert (=> b!3660482 (= lt!1273094 (get!12729 lt!1273089))))

(declare-fun b!3660483 () Bool)

(declare-fun Unit!55913 () Unit!55901)

(assert (=> b!3660483 (= e!2266517 Unit!55913)))

(declare-fun b!3660484 () Bool)

(declare-fun res!1485956 () Bool)

(assert (=> b!3660484 (=> (not res!1485956) (not e!2266528))))

(assert (=> b!3660484 (= res!1485956 (isEmpty!22904 (_2!22376 lt!1273094)))))

(declare-fun bm!264759 () Bool)

(assert (=> bm!264759 (= call!264763 (contains!7658 call!264762 lt!1273109))))

(assert (= (and start!342638 res!1485963) b!3660455))

(assert (= (and b!3660455 res!1485951) b!3660448))

(assert (= (and b!3660448 res!1485942) b!3660442))

(assert (= (and b!3660442 res!1485941) b!3660451))

(assert (= (and b!3660451 res!1485961) b!3660449))

(assert (= (and b!3660449 res!1485943) b!3660439))

(assert (= (and b!3660439 res!1485952) b!3660482))

(assert (= (and b!3660482 res!1485945) b!3660484))

(assert (= (and b!3660484 res!1485956) b!3660462))

(assert (= (and b!3660462 res!1485947) b!3660441))

(assert (= (and b!3660441 (not res!1485944)) b!3660443))

(assert (= (and b!3660443 (not res!1485953)) b!3660446))

(assert (= (and b!3660446 (not res!1485946)) b!3660458))

(assert (= (and b!3660458 (not res!1485958)) b!3660476))

(assert (= (and b!3660476 (not res!1485962)) b!3660471))

(assert (= (and b!3660471 res!1485950) b!3660437))

(assert (= (and b!3660437 res!1485960) b!3660467))

(assert (= (and b!3660471 (not res!1485954)) b!3660477))

(assert (= (and b!3660477 (not res!1485949)) b!3660481))

(assert (= (and b!3660481 (not res!1485959)) b!3660478))

(assert (= (and b!3660478 (not res!1485955)) b!3660447))

(assert (= (and b!3660447 c!632660) b!3660480))

(assert (= (and b!3660447 (not c!632660)) b!3660472))

(assert (= (and b!3660447 c!632663) b!3660473))

(assert (= (and b!3660447 (not c!632663)) b!3660474))

(assert (= (and b!3660473 c!632661) b!3660470))

(assert (= (and b!3660473 (not c!632661)) b!3660483))

(assert (= (and b!3660474 c!632664) b!3660465))

(assert (= (and b!3660474 (not c!632664)) b!3660438))

(assert (= (or b!3660470 b!3660465) bm!264756))

(assert (= (or b!3660470 b!3660465) bm!264758))

(assert (= (or b!3660470 b!3660465) bm!264757))

(assert (= (and b!3660447 c!632659) b!3660468))

(assert (= (and b!3660447 (not c!632659)) b!3660461))

(assert (= (and b!3660468 c!632662) b!3660453))

(assert (= (and b!3660468 (not c!632662)) b!3660440))

(assert (= (or b!3660453 b!3660440) bm!264754))

(assert (= (or b!3660453 b!3660440) bm!264755))

(assert (= (or b!3660453 b!3660440) bm!264759))

(assert (= (and b!3660447 c!632665) b!3660464))

(assert (= (and b!3660447 (not c!632665)) b!3660457))

(assert (= (and b!3660447 (not res!1485957)) b!3660459))

(assert (= (and b!3660459 (not res!1485948)) b!3660479))

(assert (= b!3660450 b!3660466))

(assert (= b!3660445 b!3660450))

(assert (= (and start!342638 ((_ is Cons!38621) rules!3307)) b!3660445))

(assert (= (and start!342638 ((_ is Cons!38620) suffix!1395)) b!3660456))

(assert (= b!3660444 b!3660469))

(assert (= b!3660475 b!3660444))

(assert (= start!342638 b!3660475))

(assert (= b!3660463 b!3660460))

(assert (= start!342638 b!3660463))

(assert (= b!3660452 b!3660454))

(assert (= start!342638 b!3660452))

(declare-fun m!4166799 () Bool)

(assert (=> b!3660440 m!4166799))

(declare-fun m!4166801 () Bool)

(assert (=> b!3660448 m!4166801))

(declare-fun m!4166803 () Bool)

(assert (=> start!342638 m!4166803))

(declare-fun m!4166805 () Bool)

(assert (=> bm!264754 m!4166805))

(declare-fun m!4166807 () Bool)

(assert (=> b!3660477 m!4166807))

(declare-fun m!4166809 () Bool)

(assert (=> b!3660471 m!4166809))

(declare-fun m!4166811 () Bool)

(assert (=> b!3660471 m!4166811))

(declare-fun m!4166813 () Bool)

(assert (=> b!3660471 m!4166813))

(declare-fun m!4166815 () Bool)

(assert (=> b!3660471 m!4166815))

(declare-fun m!4166817 () Bool)

(assert (=> b!3660471 m!4166817))

(declare-fun m!4166819 () Bool)

(assert (=> b!3660471 m!4166819))

(declare-fun m!4166821 () Bool)

(assert (=> b!3660471 m!4166821))

(declare-fun m!4166823 () Bool)

(assert (=> b!3660471 m!4166823))

(declare-fun m!4166825 () Bool)

(assert (=> b!3660471 m!4166825))

(declare-fun m!4166827 () Bool)

(assert (=> b!3660471 m!4166827))

(declare-fun m!4166829 () Bool)

(assert (=> b!3660471 m!4166829))

(declare-fun m!4166831 () Bool)

(assert (=> b!3660471 m!4166831))

(declare-fun m!4166833 () Bool)

(assert (=> b!3660471 m!4166833))

(declare-fun m!4166835 () Bool)

(assert (=> b!3660471 m!4166835))

(declare-fun m!4166837 () Bool)

(assert (=> b!3660471 m!4166837))

(assert (=> b!3660471 m!4166827))

(declare-fun m!4166839 () Bool)

(assert (=> b!3660459 m!4166839))

(declare-fun m!4166841 () Bool)

(assert (=> b!3660459 m!4166841))

(declare-fun m!4166843 () Bool)

(assert (=> b!3660480 m!4166843))

(declare-fun m!4166845 () Bool)

(assert (=> b!3660470 m!4166845))

(declare-fun m!4166847 () Bool)

(assert (=> bm!264755 m!4166847))

(declare-fun m!4166849 () Bool)

(assert (=> b!3660465 m!4166849))

(declare-fun m!4166851 () Bool)

(assert (=> b!3660443 m!4166851))

(declare-fun m!4166853 () Bool)

(assert (=> bm!264759 m!4166853))

(declare-fun m!4166855 () Bool)

(assert (=> b!3660479 m!4166855))

(declare-fun m!4166857 () Bool)

(assert (=> b!3660479 m!4166857))

(assert (=> b!3660479 m!4166857))

(declare-fun m!4166859 () Bool)

(assert (=> b!3660479 m!4166859))

(declare-fun m!4166861 () Bool)

(assert (=> b!3660479 m!4166861))

(declare-fun m!4166863 () Bool)

(assert (=> b!3660482 m!4166863))

(declare-fun m!4166865 () Bool)

(assert (=> b!3660451 m!4166865))

(declare-fun m!4166867 () Bool)

(assert (=> b!3660455 m!4166867))

(declare-fun m!4166869 () Bool)

(assert (=> b!3660458 m!4166869))

(assert (=> b!3660458 m!4166869))

(declare-fun m!4166871 () Bool)

(assert (=> b!3660458 m!4166871))

(declare-fun m!4166873 () Bool)

(assert (=> b!3660475 m!4166873))

(declare-fun m!4166875 () Bool)

(assert (=> b!3660478 m!4166875))

(declare-fun m!4166877 () Bool)

(assert (=> b!3660478 m!4166877))

(declare-fun m!4166879 () Bool)

(assert (=> b!3660478 m!4166879))

(declare-fun m!4166881 () Bool)

(assert (=> b!3660478 m!4166881))

(declare-fun m!4166883 () Bool)

(assert (=> b!3660478 m!4166883))

(declare-fun m!4166885 () Bool)

(assert (=> b!3660478 m!4166885))

(declare-fun m!4166887 () Bool)

(assert (=> b!3660478 m!4166887))

(assert (=> b!3660478 m!4166885))

(declare-fun m!4166889 () Bool)

(assert (=> b!3660441 m!4166889))

(declare-fun m!4166891 () Bool)

(assert (=> b!3660441 m!4166891))

(declare-fun m!4166893 () Bool)

(assert (=> b!3660441 m!4166893))

(declare-fun m!4166895 () Bool)

(assert (=> b!3660481 m!4166895))

(declare-fun m!4166897 () Bool)

(assert (=> b!3660481 m!4166897))

(assert (=> b!3660481 m!4166897))

(declare-fun m!4166899 () Bool)

(assert (=> b!3660481 m!4166899))

(declare-fun m!4166901 () Bool)

(assert (=> b!3660481 m!4166901))

(declare-fun m!4166903 () Bool)

(assert (=> b!3660481 m!4166903))

(declare-fun m!4166905 () Bool)

(assert (=> b!3660481 m!4166905))

(declare-fun m!4166907 () Bool)

(assert (=> b!3660464 m!4166907))

(declare-fun m!4166909 () Bool)

(assert (=> b!3660476 m!4166909))

(declare-fun m!4166911 () Bool)

(assert (=> b!3660447 m!4166911))

(declare-fun m!4166913 () Bool)

(assert (=> b!3660447 m!4166913))

(declare-fun m!4166915 () Bool)

(assert (=> b!3660447 m!4166915))

(declare-fun m!4166917 () Bool)

(assert (=> b!3660447 m!4166917))

(declare-fun m!4166919 () Bool)

(assert (=> b!3660463 m!4166919))

(declare-fun m!4166921 () Bool)

(assert (=> b!3660463 m!4166921))

(declare-fun m!4166923 () Bool)

(assert (=> b!3660468 m!4166923))

(declare-fun m!4166925 () Bool)

(assert (=> b!3660468 m!4166925))

(declare-fun m!4166927 () Bool)

(assert (=> b!3660442 m!4166927))

(declare-fun m!4166929 () Bool)

(assert (=> b!3660444 m!4166929))

(declare-fun m!4166931 () Bool)

(assert (=> b!3660444 m!4166931))

(declare-fun m!4166933 () Bool)

(assert (=> b!3660439 m!4166933))

(declare-fun m!4166935 () Bool)

(assert (=> b!3660439 m!4166935))

(declare-fun m!4166937 () Bool)

(assert (=> b!3660439 m!4166937))

(declare-fun m!4166939 () Bool)

(assert (=> b!3660439 m!4166939))

(declare-fun m!4166941 () Bool)

(assert (=> b!3660446 m!4166941))

(declare-fun m!4166943 () Bool)

(assert (=> b!3660446 m!4166943))

(declare-fun m!4166945 () Bool)

(assert (=> b!3660446 m!4166945))

(assert (=> bm!264758 m!4166847))

(assert (=> b!3660437 m!4166815))

(assert (=> b!3660437 m!4166815))

(declare-fun m!4166947 () Bool)

(assert (=> b!3660437 m!4166947))

(assert (=> b!3660437 m!4166947))

(declare-fun m!4166949 () Bool)

(assert (=> b!3660437 m!4166949))

(declare-fun m!4166951 () Bool)

(assert (=> b!3660437 m!4166951))

(declare-fun m!4166953 () Bool)

(assert (=> bm!264756 m!4166953))

(declare-fun m!4166955 () Bool)

(assert (=> b!3660452 m!4166955))

(declare-fun m!4166957 () Bool)

(assert (=> b!3660452 m!4166957))

(declare-fun m!4166959 () Bool)

(assert (=> b!3660453 m!4166959))

(declare-fun m!4166961 () Bool)

(assert (=> bm!264757 m!4166961))

(declare-fun m!4166963 () Bool)

(assert (=> b!3660450 m!4166963))

(declare-fun m!4166965 () Bool)

(assert (=> b!3660450 m!4166965))

(declare-fun m!4166967 () Bool)

(assert (=> b!3660484 m!4166967))

(check-sat (not b!3660452) (not b_next!97291) (not b_next!97285) (not b!3660476) (not bm!264755) b_and!271627 (not b!3660479) tp_is_empty!18193 (not b!3660447) (not b!3660478) (not start!342638) (not b!3660443) (not b!3660468) (not b!3660441) (not b_next!97289) (not b_next!97287) (not b!3660440) (not b!3660484) (not b!3660458) b_and!271641 (not b!3660464) (not b!3660470) b_and!271631 (not b!3660455) (not b!3660477) (not b!3660445) (not b!3660451) (not b!3660439) b_and!271629 b_and!271633 b_and!271635 (not b!3660450) (not b!3660465) (not b!3660480) (not bm!264758) (not b!3660437) (not b_next!97293) (not b!3660482) (not b!3660446) (not b!3660453) (not b!3660442) (not b_next!97283) (not b_next!97295) (not b_next!97281) (not b!3660463) b_and!271639 (not b!3660456) (not b!3660475) b_and!271637 (not b!3660471) (not bm!264754) (not bm!264759) (not b!3660481) (not b!3660444) (not b!3660459) (not bm!264757) (not b!3660448) (not bm!264756))
(check-sat (not b_next!97289) (not b_next!97291) (not b_next!97287) b_and!271641 b_and!271631 (not b_next!97285) b_and!271627 b_and!271635 (not b_next!97293) b_and!271639 b_and!271637 b_and!271629 b_and!271633 (not b_next!97283) (not b_next!97295) (not b_next!97281))
