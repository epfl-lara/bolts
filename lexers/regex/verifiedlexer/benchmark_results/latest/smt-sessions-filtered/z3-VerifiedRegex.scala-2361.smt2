; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117922 () Bool)

(assert start!117922)

(declare-fun b!1326608 () Bool)

(declare-fun b_free!32043 () Bool)

(declare-fun b_next!32747 () Bool)

(assert (=> b!1326608 (= b_free!32043 (not b_next!32747))))

(declare-fun tp!384548 () Bool)

(declare-fun b_and!88615 () Bool)

(assert (=> b!1326608 (= tp!384548 b_and!88615)))

(declare-fun b_free!32045 () Bool)

(declare-fun b_next!32749 () Bool)

(assert (=> b!1326608 (= b_free!32045 (not b_next!32749))))

(declare-fun tp!384542 () Bool)

(declare-fun b_and!88617 () Bool)

(assert (=> b!1326608 (= tp!384542 b_and!88617)))

(declare-fun b!1326600 () Bool)

(declare-fun b_free!32047 () Bool)

(declare-fun b_next!32751 () Bool)

(assert (=> b!1326600 (= b_free!32047 (not b_next!32751))))

(declare-fun tp!384541 () Bool)

(declare-fun b_and!88619 () Bool)

(assert (=> b!1326600 (= tp!384541 b_and!88619)))

(declare-fun b_free!32049 () Bool)

(declare-fun b_next!32753 () Bool)

(assert (=> b!1326600 (= b_free!32049 (not b_next!32753))))

(declare-fun tp!384545 () Bool)

(declare-fun b_and!88621 () Bool)

(assert (=> b!1326600 (= tp!384545 b_and!88621)))

(declare-fun b!1326630 () Bool)

(declare-fun b_free!32051 () Bool)

(declare-fun b_next!32755 () Bool)

(assert (=> b!1326630 (= b_free!32051 (not b_next!32755))))

(declare-fun tp!384546 () Bool)

(declare-fun b_and!88623 () Bool)

(assert (=> b!1326630 (= tp!384546 b_and!88623)))

(declare-fun b_free!32053 () Bool)

(declare-fun b_next!32757 () Bool)

(assert (=> b!1326630 (= b_free!32053 (not b_next!32757))))

(declare-fun tp!384543 () Bool)

(declare-fun b_and!88625 () Bool)

(assert (=> b!1326630 (= tp!384543 b_and!88625)))

(declare-fun b!1326632 () Bool)

(assert (=> b!1326632 true))

(assert (=> b!1326632 true))

(declare-fun b!1326614 () Bool)

(assert (=> b!1326614 true))

(declare-fun b!1326636 () Bool)

(assert (=> b!1326636 true))

(declare-fun bs!331396 () Bool)

(declare-fun b!1326631 () Bool)

(assert (= bs!331396 (and b!1326631 b!1326636)))

(declare-fun lambda!54795 () Int)

(declare-fun lambda!54794 () Int)

(assert (=> bs!331396 (not (= lambda!54795 lambda!54794))))

(assert (=> b!1326631 true))

(declare-fun b!1326598 () Bool)

(declare-datatypes ((Unit!19553 0))(
  ( (Unit!19554) )
))
(declare-fun e!849990 () Unit!19553)

(declare-fun Unit!19555 () Unit!19553)

(assert (=> b!1326598 (= e!849990 Unit!19555)))

(declare-fun e!849984 () Bool)

(declare-fun tp!384539 () Bool)

(declare-fun b!1326599 () Bool)

(declare-fun e!849977 () Bool)

(declare-datatypes ((List!13532 0))(
  ( (Nil!13466) (Cons!13466 (h!18867 (_ BitVec 16)) (t!118833 List!13532)) )
))
(declare-datatypes ((TokenValue!2421 0))(
  ( (FloatLiteralValue!4842 (text!17392 List!13532)) (TokenValueExt!2420 (__x!8671 Int)) (Broken!12105 (value!76040 List!13532)) (Object!2486) (End!2421) (Def!2421) (Underscore!2421) (Match!2421) (Else!2421) (Error!2421) (Case!2421) (If!2421) (Extends!2421) (Abstract!2421) (Class!2421) (Val!2421) (DelimiterValue!4842 (del!2481 List!13532)) (KeywordValue!2427 (value!76041 List!13532)) (CommentValue!4842 (value!76042 List!13532)) (WhitespaceValue!4842 (value!76043 List!13532)) (IndentationValue!2421 (value!76044 List!13532)) (String!16340) (Int32!2421) (Broken!12106 (value!76045 List!13532)) (Boolean!2422) (Unit!19556) (OperatorValue!2424 (op!2481 List!13532)) (IdentifierValue!4842 (value!76046 List!13532)) (IdentifierValue!4843 (value!76047 List!13532)) (WhitespaceValue!4843 (value!76048 List!13532)) (True!4842) (False!4842) (Broken!12107 (value!76049 List!13532)) (Broken!12108 (value!76050 List!13532)) (True!4843) (RightBrace!2421) (RightBracket!2421) (Colon!2421) (Null!2421) (Comma!2421) (LeftBracket!2421) (False!4843) (LeftBrace!2421) (ImaginaryLiteralValue!2421 (text!17393 List!13532)) (StringLiteralValue!7263 (value!76051 List!13532)) (EOFValue!2421 (value!76052 List!13532)) (IdentValue!2421 (value!76053 List!13532)) (DelimiterValue!4843 (value!76054 List!13532)) (DedentValue!2421 (value!76055 List!13532)) (NewLineValue!2421 (value!76056 List!13532)) (IntegerValue!7263 (value!76057 (_ BitVec 32)) (text!17394 List!13532)) (IntegerValue!7264 (value!76058 Int) (text!17395 List!13532)) (Times!2421) (Or!2421) (Equal!2421) (Minus!2421) (Broken!12109 (value!76059 List!13532)) (And!2421) (Div!2421) (LessEqual!2421) (Mod!2421) (Concat!6066) (Not!2421) (Plus!2421) (SpaceValue!2421 (value!76060 List!13532)) (IntegerValue!7265 (value!76061 Int) (text!17396 List!13532)) (StringLiteralValue!7264 (text!17397 List!13532)) (FloatLiteralValue!4843 (text!17398 List!13532)) (BytesLiteralValue!2421 (value!76062 List!13532)) (CommentValue!4843 (value!76063 List!13532)) (StringLiteralValue!7265 (value!76064 List!13532)) (ErrorTokenValue!2421 (msg!2482 List!13532)) )
))
(declare-datatypes ((C!7580 0))(
  ( (C!7581 (val!4350 Int)) )
))
(declare-datatypes ((List!13533 0))(
  ( (Nil!13467) (Cons!13467 (h!18868 C!7580) (t!118834 List!13533)) )
))
(declare-datatypes ((IArray!8869 0))(
  ( (IArray!8870 (innerList!4492 List!13533)) )
))
(declare-datatypes ((String!16341 0))(
  ( (String!16342 (value!76065 String)) )
))
(declare-datatypes ((Conc!4432 0))(
  ( (Node!4432 (left!11567 Conc!4432) (right!11897 Conc!4432) (csize!9094 Int) (cheight!4643 Int)) (Leaf!6794 (xs!7147 IArray!8869) (csize!9095 Int)) (Empty!4432) )
))
(declare-datatypes ((BalanceConc!8804 0))(
  ( (BalanceConc!8805 (c!217566 Conc!4432)) )
))
(declare-datatypes ((Regex!3645 0))(
  ( (ElementMatch!3645 (c!217567 C!7580)) (Concat!6067 (regOne!7802 Regex!3645) (regTwo!7802 Regex!3645)) (EmptyExpr!3645) (Star!3645 (reg!3974 Regex!3645)) (EmptyLang!3645) (Union!3645 (regOne!7803 Regex!3645) (regTwo!7803 Regex!3645)) )
))
(declare-datatypes ((TokenValueInjection!4502 0))(
  ( (TokenValueInjection!4503 (toValue!3562 Int) (toChars!3421 Int)) )
))
(declare-datatypes ((Rule!4462 0))(
  ( (Rule!4463 (regex!2331 Regex!3645) (tag!2593 String!16341) (isSeparator!2331 Bool) (transformation!2331 TokenValueInjection!4502)) )
))
(declare-datatypes ((Token!4324 0))(
  ( (Token!4325 (value!76066 TokenValue!2421) (rule!4076 Rule!4462) (size!10968 Int) (originalCharacters!3193 List!13533)) )
))
(declare-fun t2!34 () Token!4324)

(declare-fun inv!17824 (String!16341) Bool)

(declare-fun inv!17827 (TokenValueInjection!4502) Bool)

(assert (=> b!1326599 (= e!849984 (and tp!384539 (inv!17824 (tag!2593 (rule!4076 t2!34))) (inv!17827 (transformation!2331 (rule!4076 t2!34))) e!849977))))

(declare-fun e!849979 () Bool)

(assert (=> b!1326600 (= e!849979 (and tp!384541 tp!384545))))

(declare-fun b!1326601 () Bool)

(declare-fun Unit!19557 () Unit!19553)

(assert (=> b!1326601 (= e!849990 Unit!19557)))

(declare-fun lt!438475 () Unit!19553)

(declare-fun t1!34 () Token!4324)

(declare-fun lt!438467 () List!13533)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!142 (Regex!3645 List!13533 C!7580) Unit!19553)

(declare-fun head!2322 (List!13533) C!7580)

(assert (=> b!1326601 (= lt!438475 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!142 (regex!2331 (rule!4076 t1!34)) lt!438467 (head!2322 lt!438467)))))

(assert (=> b!1326601 false))

(declare-fun b!1326602 () Bool)

(declare-fun res!597127 () Bool)

(declare-fun e!849989 () Bool)

(assert (=> b!1326602 (=> res!597127 e!849989)))

(declare-datatypes ((List!13534 0))(
  ( (Nil!13468) (Cons!13468 (h!18869 Token!4324) (t!118835 List!13534)) )
))
(declare-datatypes ((IArray!8871 0))(
  ( (IArray!8872 (innerList!4493 List!13534)) )
))
(declare-datatypes ((Conc!4433 0))(
  ( (Node!4433 (left!11568 Conc!4433) (right!11898 Conc!4433) (csize!9096 Int) (cheight!4644 Int)) (Leaf!6795 (xs!7148 IArray!8871) (csize!9097 Int)) (Empty!4433) )
))
(declare-datatypes ((BalanceConc!8806 0))(
  ( (BalanceConc!8807 (c!217568 Conc!4433)) )
))
(declare-datatypes ((tuple2!13106 0))(
  ( (tuple2!13107 (_1!7439 BalanceConc!8806) (_2!7439 BalanceConc!8804)) )
))
(declare-fun lt!438472 () tuple2!13106)

(declare-fun isEmpty!8018 (BalanceConc!8804) Bool)

(assert (=> b!1326602 (= res!597127 (not (isEmpty!8018 (_2!7439 lt!438472))))))

(declare-fun b!1326603 () Bool)

(declare-fun e!849971 () Bool)

(declare-fun e!849986 () Bool)

(assert (=> b!1326603 (= e!849971 e!849986)))

(declare-fun res!597116 () Bool)

(assert (=> b!1326603 (=> res!597116 e!849986)))

(declare-fun lt!438466 () tuple2!13106)

(declare-fun lt!438479 () List!13534)

(declare-fun list!5098 (BalanceConc!8806) List!13534)

(assert (=> b!1326603 (= res!597116 (not (= (list!5098 (_1!7439 lt!438466)) lt!438479)))))

(assert (=> b!1326603 (= lt!438479 (Cons!13468 t1!34 Nil!13468))))

(declare-datatypes ((LexerInterface!2026 0))(
  ( (LexerInterfaceExt!2023 (__x!8672 Int)) (Lexer!2024) )
))
(declare-fun thiss!19762 () LexerInterface!2026)

(declare-datatypes ((List!13535 0))(
  ( (Nil!13469) (Cons!13469 (h!18870 Rule!4462) (t!118836 List!13535)) )
))
(declare-fun rules!2550 () List!13535)

(declare-fun lt!438453 () BalanceConc!8804)

(declare-fun lex!861 (LexerInterface!2026 List!13535 BalanceConc!8804) tuple2!13106)

(assert (=> b!1326603 (= lt!438466 (lex!861 thiss!19762 rules!2550 lt!438453))))

(declare-fun print!800 (LexerInterface!2026 BalanceConc!8806) BalanceConc!8804)

(declare-fun singletonSeq!922 (Token!4324) BalanceConc!8806)

(assert (=> b!1326603 (= lt!438453 (print!800 thiss!19762 (singletonSeq!922 t1!34)))))

(declare-fun lt!438468 () Rule!4462)

(declare-fun getWitness!256 (List!13535 Int) Rule!4462)

(assert (=> b!1326603 (= lt!438468 (getWitness!256 rules!2550 lambda!54794))))

(declare-fun b!1326604 () Bool)

(declare-fun res!597120 () Bool)

(declare-fun e!849992 () Bool)

(assert (=> b!1326604 (=> (not res!597120) (not e!849992))))

(declare-fun sepAndNonSepRulesDisjointChars!704 (List!13535 List!13535) Bool)

(assert (=> b!1326604 (= res!597120 (sepAndNonSepRulesDisjointChars!704 rules!2550 rules!2550))))

(declare-fun b!1326605 () Bool)

(declare-fun e!849988 () Bool)

(assert (=> b!1326605 (= e!849992 e!849988)))

(declare-fun res!597118 () Bool)

(assert (=> b!1326605 (=> (not res!597118) (not e!849988))))

(declare-fun lt!438461 () Regex!3645)

(declare-fun lt!438455 () List!13533)

(declare-fun prefixMatch!158 (Regex!3645 List!13533) Bool)

(assert (=> b!1326605 (= res!597118 (prefixMatch!158 lt!438461 lt!438455))))

(declare-fun rulesRegex!216 (LexerInterface!2026 List!13535) Regex!3645)

(assert (=> b!1326605 (= lt!438461 (rulesRegex!216 thiss!19762 rules!2550))))

(declare-fun lt!438465 () C!7580)

(declare-fun ++!3440 (List!13533 List!13533) List!13533)

(assert (=> b!1326605 (= lt!438455 (++!3440 lt!438467 (Cons!13467 lt!438465 Nil!13467)))))

(declare-fun lt!438477 () BalanceConc!8804)

(declare-fun apply!3109 (BalanceConc!8804 Int) C!7580)

(assert (=> b!1326605 (= lt!438465 (apply!3109 lt!438477 0))))

(declare-fun lt!438473 () BalanceConc!8804)

(declare-fun list!5099 (BalanceConc!8804) List!13533)

(assert (=> b!1326605 (= lt!438467 (list!5099 lt!438473))))

(declare-fun charsOf!1303 (Token!4324) BalanceConc!8804)

(assert (=> b!1326605 (= lt!438473 (charsOf!1303 t1!34))))

(declare-fun b!1326606 () Bool)

(declare-fun res!597131 () Bool)

(assert (=> b!1326606 (=> res!597131 e!849986)))

(declare-datatypes ((tuple2!13108 0))(
  ( (tuple2!13109 (_1!7440 List!13534) (_2!7440 List!13533)) )
))
(declare-fun lexList!564 (LexerInterface!2026 List!13535 List!13533) tuple2!13108)

(assert (=> b!1326606 (= res!597131 (not (= (lexList!564 thiss!19762 rules!2550 (list!5099 lt!438453)) (tuple2!13109 lt!438479 Nil!13467))))))

(declare-fun b!1326607 () Bool)

(declare-fun res!597122 () Bool)

(declare-fun e!849980 () Bool)

(assert (=> b!1326607 (=> (not res!597122) (not e!849980))))

(declare-fun rulesInvariant!1896 (LexerInterface!2026 List!13535) Bool)

(assert (=> b!1326607 (= res!597122 (rulesInvariant!1896 thiss!19762 rules!2550))))

(declare-fun e!849991 () Bool)

(assert (=> b!1326608 (= e!849991 (and tp!384548 tp!384542))))

(declare-fun b!1326609 () Bool)

(declare-fun res!597113 () Bool)

(assert (=> b!1326609 (=> res!597113 e!849986)))

(declare-fun contains!2409 (List!13535 Rule!4462) Bool)

(assert (=> b!1326609 (= res!597113 (not (contains!2409 rules!2550 (rule!4076 t1!34))))))

(declare-fun b!1326610 () Bool)

(declare-fun res!597119 () Bool)

(declare-fun e!849985 () Bool)

(assert (=> b!1326610 (=> res!597119 e!849985)))

(declare-fun lt!438474 () List!13533)

(declare-fun lt!438463 () C!7580)

(declare-fun contains!2410 (List!13533 C!7580) Bool)

(assert (=> b!1326610 (= res!597119 (not (contains!2410 lt!438474 lt!438463)))))

(declare-fun b!1326611 () Bool)

(declare-fun res!597142 () Bool)

(assert (=> b!1326611 (=> res!597142 e!849986)))

(assert (=> b!1326611 (= res!597142 (not (isEmpty!8018 (_2!7439 lt!438466))))))

(declare-fun b!1326612 () Bool)

(declare-fun res!597123 () Bool)

(assert (=> b!1326612 (=> res!597123 e!849985)))

(assert (=> b!1326612 (= res!597123 (not (contains!2410 lt!438474 lt!438465)))))

(declare-fun b!1326613 () Bool)

(declare-fun res!597143 () Bool)

(assert (=> b!1326613 (=> (not res!597143) (not e!849980))))

(declare-fun isEmpty!8019 (List!13535) Bool)

(assert (=> b!1326613 (= res!597143 (not (isEmpty!8019 rules!2550)))))

(declare-fun e!849983 () Bool)

(assert (=> b!1326614 (= e!849985 e!849983)))

(declare-fun res!597129 () Bool)

(assert (=> b!1326614 (=> res!597129 e!849983)))

(declare-fun lambda!54792 () Int)

(declare-fun lambda!54793 () Int)

(declare-datatypes ((List!13536 0))(
  ( (Nil!13470) (Cons!13470 (h!18871 Regex!3645) (t!118837 List!13536)) )
))
(declare-fun exists!364 (List!13536 Int) Bool)

(declare-fun map!2963 (List!13535 Int) List!13536)

(assert (=> b!1326614 (= res!597129 (not (exists!364 (map!2963 rules!2550 lambda!54792) lambda!54793)))))

(declare-fun lt!438471 () List!13536)

(assert (=> b!1326614 (exists!364 lt!438471 lambda!54793)))

(declare-fun lt!438456 () Unit!19553)

(declare-fun matchRGenUnionSpec!82 (Regex!3645 List!13536 List!13533) Unit!19553)

(assert (=> b!1326614 (= lt!438456 (matchRGenUnionSpec!82 lt!438461 lt!438471 lt!438474))))

(assert (=> b!1326614 (= lt!438471 (map!2963 rules!2550 lambda!54792))))

(declare-fun b!1326615 () Bool)

(declare-fun e!849970 () Bool)

(declare-fun e!849973 () Bool)

(assert (=> b!1326615 (= e!849970 e!849973)))

(declare-fun res!597136 () Bool)

(assert (=> b!1326615 (=> res!597136 e!849973)))

(declare-fun getSuffix!501 (List!13533 List!13533) List!13533)

(assert (=> b!1326615 (= res!597136 (not (= lt!438474 (++!3440 lt!438455 (getSuffix!501 lt!438474 lt!438455)))))))

(declare-fun lambda!54791 () Int)

(declare-fun pickWitness!108 (Int) List!13533)

(assert (=> b!1326615 (= lt!438474 (pickWitness!108 lambda!54791))))

(declare-fun b!1326616 () Bool)

(assert (=> b!1326616 (= e!849973 e!849985)))

(declare-fun res!597111 () Bool)

(assert (=> b!1326616 (=> res!597111 e!849985)))

(assert (=> b!1326616 (= res!597111 (not (contains!2410 lt!438455 lt!438463)))))

(assert (=> b!1326616 (= lt!438463 (apply!3109 lt!438473 0))))

(declare-fun b!1326617 () Bool)

(declare-fun res!597124 () Bool)

(assert (=> b!1326617 (=> res!597124 e!849985)))

(assert (=> b!1326617 (= res!597124 (not (contains!2410 lt!438455 lt!438465)))))

(declare-fun b!1326618 () Bool)

(declare-fun e!849996 () Bool)

(declare-fun e!849993 () Bool)

(assert (=> b!1326618 (= e!849996 e!849993)))

(declare-fun res!597126 () Bool)

(assert (=> b!1326618 (=> res!597126 e!849993)))

(declare-fun lt!438462 () Bool)

(assert (=> b!1326618 (= res!597126 lt!438462)))

(declare-fun lt!438459 () Unit!19553)

(declare-fun e!849976 () Unit!19553)

(assert (=> b!1326618 (= lt!438459 e!849976)))

(declare-fun c!217564 () Bool)

(assert (=> b!1326618 (= c!217564 lt!438462)))

(declare-fun usedCharacters!196 (Regex!3645) List!13533)

(assert (=> b!1326618 (= lt!438462 (not (contains!2410 (usedCharacters!196 (regex!2331 (rule!4076 t2!34))) lt!438465)))))

(declare-fun b!1326619 () Bool)

(declare-fun res!597139 () Bool)

(assert (=> b!1326619 (=> res!597139 e!849986)))

(declare-datatypes ((tuple2!13110 0))(
  ( (tuple2!13111 (_1!7441 Token!4324) (_2!7441 List!13533)) )
))
(declare-datatypes ((Option!2602 0))(
  ( (None!2601) (Some!2601 (v!21206 tuple2!13110)) )
))
(declare-fun maxPrefix!1036 (LexerInterface!2026 List!13535 List!13533) Option!2602)

(assert (=> b!1326619 (= res!597139 (not (= (maxPrefix!1036 thiss!19762 rules!2550 lt!438467) (Some!2601 (tuple2!13111 t1!34 Nil!13467)))))))

(declare-fun b!1326620 () Bool)

(declare-fun res!597144 () Bool)

(assert (=> b!1326620 (=> (not res!597144) (not e!849980))))

(declare-fun rulesProduceIndividualToken!995 (LexerInterface!2026 List!13535 Token!4324) Bool)

(assert (=> b!1326620 (= res!597144 (rulesProduceIndividualToken!995 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1326621 () Bool)

(declare-fun res!597137 () Bool)

(assert (=> b!1326621 (=> res!597137 e!849985)))

(declare-fun matchR!1647 (Regex!3645 List!13533) Bool)

(assert (=> b!1326621 (= res!597137 (not (matchR!1647 lt!438461 lt!438474)))))

(declare-fun b!1326622 () Bool)

(declare-fun res!597121 () Bool)

(assert (=> b!1326622 (=> (not res!597121) (not e!849992))))

(declare-fun separableTokensPredicate!309 (LexerInterface!2026 Token!4324 Token!4324 List!13535) Bool)

(assert (=> b!1326622 (= res!597121 (not (separableTokensPredicate!309 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1326623 () Bool)

(assert (=> b!1326623 (= e!849980 e!849992)))

(declare-fun res!597135 () Bool)

(assert (=> b!1326623 (=> (not res!597135) (not e!849992))))

(declare-fun size!10969 (BalanceConc!8804) Int)

(assert (=> b!1326623 (= res!597135 (> (size!10969 lt!438477) 0))))

(assert (=> b!1326623 (= lt!438477 (charsOf!1303 t2!34))))

(declare-fun b!1326624 () Bool)

(assert (=> b!1326624 (= e!849986 e!849989)))

(declare-fun res!597132 () Bool)

(assert (=> b!1326624 (=> res!597132 e!849989)))

(declare-fun lt!438460 () List!13534)

(assert (=> b!1326624 (= res!597132 (not (= (list!5098 (_1!7439 lt!438472)) lt!438460)))))

(assert (=> b!1326624 (= lt!438460 (Cons!13468 t2!34 Nil!13468))))

(declare-fun lt!438464 () BalanceConc!8804)

(assert (=> b!1326624 (= lt!438472 (lex!861 thiss!19762 rules!2550 lt!438464))))

(assert (=> b!1326624 (= lt!438464 (print!800 thiss!19762 (singletonSeq!922 t2!34)))))

(declare-fun tp!384538 () Bool)

(declare-fun b!1326625 () Bool)

(declare-fun e!849981 () Bool)

(assert (=> b!1326625 (= e!849981 (and tp!384538 (inv!17824 (tag!2593 (h!18870 rules!2550))) (inv!17827 (transformation!2331 (h!18870 rules!2550))) e!849991))))

(declare-fun e!849975 () Bool)

(declare-fun e!849972 () Bool)

(declare-fun b!1326626 () Bool)

(declare-fun tp!384537 () Bool)

(declare-fun inv!21 (TokenValue!2421) Bool)

(assert (=> b!1326626 (= e!849972 (and (inv!21 (value!76066 t1!34)) e!849975 tp!384537))))

(declare-fun b!1326627 () Bool)

(declare-fun res!597130 () Bool)

(declare-fun e!849974 () Bool)

(assert (=> b!1326627 (=> res!597130 e!849974)))

(assert (=> b!1326627 (= res!597130 (not (contains!2409 rules!2550 lt!438468)))))

(declare-fun e!849969 () Bool)

(declare-fun b!1326628 () Bool)

(declare-fun tp!384540 () Bool)

(assert (=> b!1326628 (= e!849969 (and (inv!21 (value!76066 t2!34)) e!849984 tp!384540))))

(declare-fun b!1326629 () Bool)

(declare-fun e!849968 () Bool)

(assert (=> b!1326629 (= e!849968 e!849996)))

(declare-fun res!597141 () Bool)

(assert (=> b!1326629 (=> res!597141 e!849996)))

(declare-fun lt!438482 () Bool)

(assert (=> b!1326629 (= res!597141 lt!438482)))

(declare-fun lt!438457 () Unit!19553)

(assert (=> b!1326629 (= lt!438457 e!849990)))

(declare-fun c!217565 () Bool)

(assert (=> b!1326629 (= c!217565 lt!438482)))

(assert (=> b!1326629 (= lt!438482 (not (contains!2410 (usedCharacters!196 (regex!2331 (rule!4076 t1!34))) lt!438463)))))

(assert (=> b!1326630 (= e!849977 (and tp!384546 tp!384543))))

(assert (=> b!1326631 (= e!849974 e!849968)))

(declare-fun res!597117 () Bool)

(assert (=> b!1326631 (=> res!597117 e!849968)))

(assert (=> b!1326631 (= res!597117 (not (matchR!1647 (regex!2331 (rule!4076 t1!34)) lt!438467)))))

(declare-fun lt!438454 () Unit!19553)

(declare-fun forallContained!582 (List!13535 Int Rule!4462) Unit!19553)

(assert (=> b!1326631 (= lt!438454 (forallContained!582 rules!2550 lambda!54795 (rule!4076 t2!34)))))

(declare-fun lt!438478 () Unit!19553)

(assert (=> b!1326631 (= lt!438478 (forallContained!582 rules!2550 lambda!54795 (rule!4076 t1!34)))))

(declare-fun lt!438469 () Unit!19553)

(assert (=> b!1326631 (= lt!438469 (forallContained!582 rules!2550 lambda!54795 lt!438468))))

(assert (=> b!1326632 (= e!849988 (not e!849970))))

(declare-fun res!597134 () Bool)

(assert (=> b!1326632 (=> res!597134 e!849970)))

(declare-fun Exists!803 (Int) Bool)

(assert (=> b!1326632 (= res!597134 (not (Exists!803 lambda!54791)))))

(assert (=> b!1326632 (Exists!803 lambda!54791)))

(declare-fun lt!438470 () Unit!19553)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!121 (Regex!3645 List!13533) Unit!19553)

(assert (=> b!1326632 (= lt!438470 (lemmaPrefixMatchThenExistsStringThatMatches!121 lt!438461 lt!438455))))

(declare-fun b!1326633 () Bool)

(assert (=> b!1326633 (= e!849993 true)))

(declare-fun lt!438458 () Regex!3645)

(assert (=> b!1326633 (= (regex!2331 lt!438468) lt!438458)))

(declare-fun b!1326634 () Bool)

(declare-fun Unit!19558 () Unit!19553)

(assert (=> b!1326634 (= e!849976 Unit!19558)))

(declare-fun res!597133 () Bool)

(assert (=> start!117922 (=> (not res!597133) (not e!849980))))

(get-info :version)

(assert (=> start!117922 (= res!597133 ((_ is Lexer!2024) thiss!19762))))

(assert (=> start!117922 e!849980))

(assert (=> start!117922 true))

(declare-fun e!849995 () Bool)

(assert (=> start!117922 e!849995))

(declare-fun inv!17828 (Token!4324) Bool)

(assert (=> start!117922 (and (inv!17828 t1!34) e!849972)))

(assert (=> start!117922 (and (inv!17828 t2!34) e!849969)))

(declare-fun b!1326635 () Bool)

(declare-fun res!597112 () Bool)

(assert (=> b!1326635 (=> (not res!597112) (not e!849980))))

(assert (=> b!1326635 (= res!597112 (not (= (isSeparator!2331 (rule!4076 t1!34)) (isSeparator!2331 (rule!4076 t2!34)))))))

(declare-fun e!849967 () Bool)

(assert (=> b!1326636 (= e!849967 e!849971)))

(declare-fun res!597140 () Bool)

(assert (=> b!1326636 (=> res!597140 e!849971)))

(declare-fun exists!365 (List!13535 Int) Bool)

(assert (=> b!1326636 (= res!597140 (not (exists!365 rules!2550 lambda!54794)))))

(assert (=> b!1326636 (exists!365 rules!2550 lambda!54794)))

(declare-fun lt!438476 () Unit!19553)

(declare-fun lemmaMapContains!74 (List!13535 Int Regex!3645) Unit!19553)

(assert (=> b!1326636 (= lt!438476 (lemmaMapContains!74 rules!2550 lambda!54792 lt!438458))))

(declare-fun b!1326637 () Bool)

(assert (=> b!1326637 (= e!849989 e!849974)))

(declare-fun res!597145 () Bool)

(assert (=> b!1326637 (=> res!597145 e!849974)))

(declare-fun lt!438480 () List!13533)

(assert (=> b!1326637 (= res!597145 (not (= (maxPrefix!1036 thiss!19762 rules!2550 lt!438480) (Some!2601 (tuple2!13111 t2!34 Nil!13467)))))))

(assert (=> b!1326637 (= lt!438480 (list!5099 lt!438477))))

(declare-fun b!1326638 () Bool)

(declare-fun res!597115 () Bool)

(assert (=> b!1326638 (=> (not res!597115) (not e!849980))))

(assert (=> b!1326638 (= res!597115 (rulesProduceIndividualToken!995 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1326639 () Bool)

(declare-fun tp!384544 () Bool)

(assert (=> b!1326639 (= e!849975 (and tp!384544 (inv!17824 (tag!2593 (rule!4076 t1!34))) (inv!17827 (transformation!2331 (rule!4076 t1!34))) e!849979))))

(declare-fun b!1326640 () Bool)

(declare-fun tp!384547 () Bool)

(assert (=> b!1326640 (= e!849995 (and e!849981 tp!384547))))

(declare-fun b!1326641 () Bool)

(declare-fun res!597125 () Bool)

(assert (=> b!1326641 (=> res!597125 e!849968)))

(assert (=> b!1326641 (= res!597125 (not (matchR!1647 (regex!2331 (rule!4076 t2!34)) lt!438480)))))

(declare-fun b!1326642 () Bool)

(declare-fun res!597138 () Bool)

(assert (=> b!1326642 (=> res!597138 e!849989)))

(assert (=> b!1326642 (= res!597138 (not (= (lexList!564 thiss!19762 rules!2550 (list!5099 lt!438464)) (tuple2!13109 lt!438460 Nil!13467))))))

(declare-fun b!1326643 () Bool)

(assert (=> b!1326643 (= e!849983 e!849967)))

(declare-fun res!597128 () Bool)

(assert (=> b!1326643 (=> res!597128 e!849967)))

(declare-fun contains!2411 (List!13536 Regex!3645) Bool)

(assert (=> b!1326643 (= res!597128 (not (contains!2411 (map!2963 rules!2550 lambda!54792) lt!438458)))))

(declare-fun getWitness!257 (List!13536 Int) Regex!3645)

(assert (=> b!1326643 (= lt!438458 (getWitness!257 (map!2963 rules!2550 lambda!54792) lambda!54793))))

(declare-fun b!1326644 () Bool)

(declare-fun res!597114 () Bool)

(assert (=> b!1326644 (=> res!597114 e!849974)))

(assert (=> b!1326644 (= res!597114 (not (contains!2409 rules!2550 (rule!4076 t2!34))))))

(declare-fun b!1326645 () Bool)

(declare-fun Unit!19559 () Unit!19553)

(assert (=> b!1326645 (= e!849976 Unit!19559)))

(declare-fun lt!438481 () Unit!19553)

(assert (=> b!1326645 (= lt!438481 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!142 (regex!2331 (rule!4076 t2!34)) lt!438480 (head!2322 lt!438480)))))

(assert (=> b!1326645 false))

(assert (= (and start!117922 res!597133) b!1326613))

(assert (= (and b!1326613 res!597143) b!1326607))

(assert (= (and b!1326607 res!597122) b!1326620))

(assert (= (and b!1326620 res!597144) b!1326638))

(assert (= (and b!1326638 res!597115) b!1326635))

(assert (= (and b!1326635 res!597112) b!1326623))

(assert (= (and b!1326623 res!597135) b!1326604))

(assert (= (and b!1326604 res!597120) b!1326622))

(assert (= (and b!1326622 res!597121) b!1326605))

(assert (= (and b!1326605 res!597118) b!1326632))

(assert (= (and b!1326632 (not res!597134)) b!1326615))

(assert (= (and b!1326615 (not res!597136)) b!1326616))

(assert (= (and b!1326616 (not res!597111)) b!1326610))

(assert (= (and b!1326610 (not res!597119)) b!1326617))

(assert (= (and b!1326617 (not res!597124)) b!1326612))

(assert (= (and b!1326612 (not res!597123)) b!1326621))

(assert (= (and b!1326621 (not res!597137)) b!1326614))

(assert (= (and b!1326614 (not res!597129)) b!1326643))

(assert (= (and b!1326643 (not res!597128)) b!1326636))

(assert (= (and b!1326636 (not res!597140)) b!1326603))

(assert (= (and b!1326603 (not res!597116)) b!1326611))

(assert (= (and b!1326611 (not res!597142)) b!1326606))

(assert (= (and b!1326606 (not res!597131)) b!1326619))

(assert (= (and b!1326619 (not res!597139)) b!1326609))

(assert (= (and b!1326609 (not res!597113)) b!1326624))

(assert (= (and b!1326624 (not res!597132)) b!1326602))

(assert (= (and b!1326602 (not res!597127)) b!1326642))

(assert (= (and b!1326642 (not res!597138)) b!1326637))

(assert (= (and b!1326637 (not res!597145)) b!1326644))

(assert (= (and b!1326644 (not res!597114)) b!1326627))

(assert (= (and b!1326627 (not res!597130)) b!1326631))

(assert (= (and b!1326631 (not res!597117)) b!1326641))

(assert (= (and b!1326641 (not res!597125)) b!1326629))

(assert (= (and b!1326629 c!217565) b!1326601))

(assert (= (and b!1326629 (not c!217565)) b!1326598))

(assert (= (and b!1326629 (not res!597141)) b!1326618))

(assert (= (and b!1326618 c!217564) b!1326645))

(assert (= (and b!1326618 (not c!217564)) b!1326634))

(assert (= (and b!1326618 (not res!597126)) b!1326633))

(assert (= b!1326625 b!1326608))

(assert (= b!1326640 b!1326625))

(assert (= (and start!117922 ((_ is Cons!13469) rules!2550)) b!1326640))

(assert (= b!1326639 b!1326600))

(assert (= b!1326626 b!1326639))

(assert (= start!117922 b!1326626))

(assert (= b!1326599 b!1326630))

(assert (= b!1326628 b!1326599))

(assert (= start!117922 b!1326628))

(declare-fun m!1483173 () Bool)

(assert (=> b!1326644 m!1483173))

(declare-fun m!1483175 () Bool)

(assert (=> b!1326617 m!1483175))

(declare-fun m!1483177 () Bool)

(assert (=> b!1326605 m!1483177))

(declare-fun m!1483179 () Bool)

(assert (=> b!1326605 m!1483179))

(declare-fun m!1483181 () Bool)

(assert (=> b!1326605 m!1483181))

(declare-fun m!1483183 () Bool)

(assert (=> b!1326605 m!1483183))

(declare-fun m!1483185 () Bool)

(assert (=> b!1326605 m!1483185))

(declare-fun m!1483187 () Bool)

(assert (=> b!1326605 m!1483187))

(declare-fun m!1483189 () Bool)

(assert (=> b!1326603 m!1483189))

(declare-fun m!1483191 () Bool)

(assert (=> b!1326603 m!1483191))

(declare-fun m!1483193 () Bool)

(assert (=> b!1326603 m!1483193))

(declare-fun m!1483195 () Bool)

(assert (=> b!1326603 m!1483195))

(declare-fun m!1483197 () Bool)

(assert (=> b!1326603 m!1483197))

(assert (=> b!1326603 m!1483195))

(declare-fun m!1483199 () Bool)

(assert (=> start!117922 m!1483199))

(declare-fun m!1483201 () Bool)

(assert (=> start!117922 m!1483201))

(declare-fun m!1483203 () Bool)

(assert (=> b!1326638 m!1483203))

(declare-fun m!1483205 () Bool)

(assert (=> b!1326607 m!1483205))

(declare-fun m!1483207 () Bool)

(assert (=> b!1326628 m!1483207))

(declare-fun m!1483209 () Bool)

(assert (=> b!1326631 m!1483209))

(declare-fun m!1483211 () Bool)

(assert (=> b!1326631 m!1483211))

(declare-fun m!1483213 () Bool)

(assert (=> b!1326631 m!1483213))

(declare-fun m!1483215 () Bool)

(assert (=> b!1326631 m!1483215))

(declare-fun m!1483217 () Bool)

(assert (=> b!1326629 m!1483217))

(assert (=> b!1326629 m!1483217))

(declare-fun m!1483219 () Bool)

(assert (=> b!1326629 m!1483219))

(declare-fun m!1483221 () Bool)

(assert (=> b!1326625 m!1483221))

(declare-fun m!1483223 () Bool)

(assert (=> b!1326625 m!1483223))

(declare-fun m!1483225 () Bool)

(assert (=> b!1326606 m!1483225))

(assert (=> b!1326606 m!1483225))

(declare-fun m!1483227 () Bool)

(assert (=> b!1326606 m!1483227))

(declare-fun m!1483229 () Bool)

(assert (=> b!1326639 m!1483229))

(declare-fun m!1483231 () Bool)

(assert (=> b!1326639 m!1483231))

(declare-fun m!1483233 () Bool)

(assert (=> b!1326616 m!1483233))

(declare-fun m!1483235 () Bool)

(assert (=> b!1326616 m!1483235))

(declare-fun m!1483237 () Bool)

(assert (=> b!1326602 m!1483237))

(declare-fun m!1483239 () Bool)

(assert (=> b!1326642 m!1483239))

(assert (=> b!1326642 m!1483239))

(declare-fun m!1483241 () Bool)

(assert (=> b!1326642 m!1483241))

(declare-fun m!1483243 () Bool)

(assert (=> b!1326610 m!1483243))

(declare-fun m!1483245 () Bool)

(assert (=> b!1326618 m!1483245))

(assert (=> b!1326618 m!1483245))

(declare-fun m!1483247 () Bool)

(assert (=> b!1326618 m!1483247))

(declare-fun m!1483249 () Bool)

(assert (=> b!1326619 m!1483249))

(declare-fun m!1483251 () Bool)

(assert (=> b!1326615 m!1483251))

(assert (=> b!1326615 m!1483251))

(declare-fun m!1483253 () Bool)

(assert (=> b!1326615 m!1483253))

(declare-fun m!1483255 () Bool)

(assert (=> b!1326615 m!1483255))

(declare-fun m!1483257 () Bool)

(assert (=> b!1326637 m!1483257))

(declare-fun m!1483259 () Bool)

(assert (=> b!1326637 m!1483259))

(declare-fun m!1483261 () Bool)

(assert (=> b!1326604 m!1483261))

(declare-fun m!1483263 () Bool)

(assert (=> b!1326614 m!1483263))

(declare-fun m!1483265 () Bool)

(assert (=> b!1326614 m!1483265))

(assert (=> b!1326614 m!1483265))

(declare-fun m!1483267 () Bool)

(assert (=> b!1326614 m!1483267))

(declare-fun m!1483269 () Bool)

(assert (=> b!1326614 m!1483269))

(assert (=> b!1326614 m!1483265))

(assert (=> b!1326643 m!1483265))

(assert (=> b!1326643 m!1483265))

(declare-fun m!1483271 () Bool)

(assert (=> b!1326643 m!1483271))

(assert (=> b!1326643 m!1483265))

(assert (=> b!1326643 m!1483265))

(declare-fun m!1483273 () Bool)

(assert (=> b!1326643 m!1483273))

(declare-fun m!1483275 () Bool)

(assert (=> b!1326636 m!1483275))

(assert (=> b!1326636 m!1483275))

(declare-fun m!1483277 () Bool)

(assert (=> b!1326636 m!1483277))

(declare-fun m!1483279 () Bool)

(assert (=> b!1326612 m!1483279))

(declare-fun m!1483281 () Bool)

(assert (=> b!1326601 m!1483281))

(assert (=> b!1326601 m!1483281))

(declare-fun m!1483283 () Bool)

(assert (=> b!1326601 m!1483283))

(declare-fun m!1483285 () Bool)

(assert (=> b!1326621 m!1483285))

(declare-fun m!1483287 () Bool)

(assert (=> b!1326626 m!1483287))

(declare-fun m!1483289 () Bool)

(assert (=> b!1326641 m!1483289))

(declare-fun m!1483291 () Bool)

(assert (=> b!1326599 m!1483291))

(declare-fun m!1483293 () Bool)

(assert (=> b!1326599 m!1483293))

(declare-fun m!1483295 () Bool)

(assert (=> b!1326645 m!1483295))

(assert (=> b!1326645 m!1483295))

(declare-fun m!1483297 () Bool)

(assert (=> b!1326645 m!1483297))

(declare-fun m!1483299 () Bool)

(assert (=> b!1326627 m!1483299))

(declare-fun m!1483301 () Bool)

(assert (=> b!1326609 m!1483301))

(declare-fun m!1483303 () Bool)

(assert (=> b!1326623 m!1483303))

(declare-fun m!1483305 () Bool)

(assert (=> b!1326623 m!1483305))

(declare-fun m!1483307 () Bool)

(assert (=> b!1326611 m!1483307))

(declare-fun m!1483309 () Bool)

(assert (=> b!1326613 m!1483309))

(declare-fun m!1483311 () Bool)

(assert (=> b!1326624 m!1483311))

(declare-fun m!1483313 () Bool)

(assert (=> b!1326624 m!1483313))

(declare-fun m!1483315 () Bool)

(assert (=> b!1326624 m!1483315))

(assert (=> b!1326624 m!1483315))

(declare-fun m!1483317 () Bool)

(assert (=> b!1326624 m!1483317))

(declare-fun m!1483319 () Bool)

(assert (=> b!1326632 m!1483319))

(assert (=> b!1326632 m!1483319))

(declare-fun m!1483321 () Bool)

(assert (=> b!1326632 m!1483321))

(declare-fun m!1483323 () Bool)

(assert (=> b!1326620 m!1483323))

(declare-fun m!1483325 () Bool)

(assert (=> b!1326622 m!1483325))

(check-sat (not b_next!32749) (not b!1326606) b_and!88619 (not b!1326641) (not b_next!32751) (not b!1326602) (not b!1326618) (not b!1326603) (not b!1326620) (not start!117922) (not b!1326642) b_and!88617 (not b!1326645) (not b!1326601) (not b!1326604) (not b!1326622) (not b!1326628) b_and!88615 b_and!88621 (not b!1326619) (not b!1326644) (not b!1326599) (not b!1326605) (not b!1326612) (not b!1326621) (not b!1326617) (not b!1326637) (not b_next!32753) (not b!1326626) (not b!1326639) b_and!88625 (not b!1326611) (not b!1326623) (not b!1326627) b_and!88623 (not b!1326629) (not b!1326609) (not b!1326631) (not b!1326613) (not b!1326624) (not b!1326638) (not b!1326636) (not b!1326607) (not b!1326640) (not b_next!32747) (not b!1326615) (not b!1326610) (not b!1326625) (not b_next!32755) (not b!1326614) (not b!1326643) (not b!1326632) (not b!1326616) (not b_next!32757))
(check-sat (not b_next!32749) b_and!88617 b_and!88615 b_and!88621 (not b_next!32753) b_and!88625 b_and!88623 b_and!88619 (not b_next!32751) (not b_next!32747) (not b_next!32755) (not b_next!32757))
