; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342446 () Bool)

(assert start!342446)

(declare-fun b!3659336 () Bool)

(declare-fun b_free!96537 () Bool)

(declare-fun b_next!97241 () Bool)

(assert (=> b!3659336 (= b_free!96537 (not b_next!97241))))

(declare-fun tp!1114870 () Bool)

(declare-fun b_and!271443 () Bool)

(assert (=> b!3659336 (= tp!1114870 b_and!271443)))

(declare-fun b_free!96539 () Bool)

(declare-fun b_next!97243 () Bool)

(assert (=> b!3659336 (= b_free!96539 (not b_next!97243))))

(declare-fun tp!1114866 () Bool)

(declare-fun b_and!271445 () Bool)

(assert (=> b!3659336 (= tp!1114866 b_and!271445)))

(declare-fun b!3659371 () Bool)

(declare-fun b_free!96541 () Bool)

(declare-fun b_next!97245 () Bool)

(assert (=> b!3659371 (= b_free!96541 (not b_next!97245))))

(declare-fun tp!1114869 () Bool)

(declare-fun b_and!271447 () Bool)

(assert (=> b!3659371 (= tp!1114869 b_and!271447)))

(declare-fun b_free!96543 () Bool)

(declare-fun b_next!97247 () Bool)

(assert (=> b!3659371 (= b_free!96543 (not b_next!97247))))

(declare-fun tp!1114864 () Bool)

(declare-fun b_and!271449 () Bool)

(assert (=> b!3659371 (= tp!1114864 b_and!271449)))

(declare-fun b!3659361 () Bool)

(declare-fun b_free!96545 () Bool)

(declare-fun b_next!97249 () Bool)

(assert (=> b!3659361 (= b_free!96545 (not b_next!97249))))

(declare-fun tp!1114863 () Bool)

(declare-fun b_and!271451 () Bool)

(assert (=> b!3659361 (= tp!1114863 b_and!271451)))

(declare-fun b_free!96547 () Bool)

(declare-fun b_next!97251 () Bool)

(assert (=> b!3659361 (= b_free!96547 (not b_next!97251))))

(declare-fun tp!1114875 () Bool)

(declare-fun b_and!271453 () Bool)

(assert (=> b!3659361 (= tp!1114875 b_and!271453)))

(declare-fun b!3659331 () Bool)

(declare-fun b_free!96549 () Bool)

(declare-fun b_next!97253 () Bool)

(assert (=> b!3659331 (= b_free!96549 (not b_next!97253))))

(declare-fun tp!1114876 () Bool)

(declare-fun b_and!271455 () Bool)

(assert (=> b!3659331 (= tp!1114876 b_and!271455)))

(declare-fun b_free!96551 () Bool)

(declare-fun b_next!97255 () Bool)

(assert (=> b!3659331 (= b_free!96551 (not b_next!97255))))

(declare-fun tp!1114874 () Bool)

(declare-fun b_and!271457 () Bool)

(assert (=> b!3659331 (= tp!1114874 b_and!271457)))

(declare-fun res!1485402 () Bool)

(declare-fun e!2265833 () Bool)

(assert (=> start!342446 (=> (not res!1485402) (not e!2265833))))

(declare-datatypes ((LexerInterface!5383 0))(
  ( (LexerInterfaceExt!5380 (__x!24265 Int)) (Lexer!5381) )
))
(declare-fun thiss!23823 () LexerInterface!5383)

(get-info :version)

(assert (=> start!342446 (= res!1485402 ((_ is Lexer!5381) thiss!23823))))

(assert (=> start!342446 e!2265833))

(declare-fun e!2265857 () Bool)

(assert (=> start!342446 e!2265857))

(declare-fun e!2265853 () Bool)

(assert (=> start!342446 e!2265853))

(assert (=> start!342446 true))

(declare-datatypes ((List!38733 0))(
  ( (Nil!38609) (Cons!38609 (h!44029 (_ BitVec 16)) (t!298356 List!38733)) )
))
(declare-datatypes ((TokenValue!6024 0))(
  ( (FloatLiteralValue!12048 (text!42613 List!38733)) (TokenValueExt!6023 (__x!24266 Int)) (Broken!30120 (value!185563 List!38733)) (Object!6147) (End!6024) (Def!6024) (Underscore!6024) (Match!6024) (Else!6024) (Error!6024) (Case!6024) (If!6024) (Extends!6024) (Abstract!6024) (Class!6024) (Val!6024) (DelimiterValue!12048 (del!6084 List!38733)) (KeywordValue!6030 (value!185564 List!38733)) (CommentValue!12048 (value!185565 List!38733)) (WhitespaceValue!12048 (value!185566 List!38733)) (IndentationValue!6024 (value!185567 List!38733)) (String!43453) (Int32!6024) (Broken!30121 (value!185568 List!38733)) (Boolean!6025) (Unit!55866) (OperatorValue!6027 (op!6084 List!38733)) (IdentifierValue!12048 (value!185569 List!38733)) (IdentifierValue!12049 (value!185570 List!38733)) (WhitespaceValue!12049 (value!185571 List!38733)) (True!12048) (False!12048) (Broken!30122 (value!185572 List!38733)) (Broken!30123 (value!185573 List!38733)) (True!12049) (RightBrace!6024) (RightBracket!6024) (Colon!6024) (Null!6024) (Comma!6024) (LeftBracket!6024) (False!12049) (LeftBrace!6024) (ImaginaryLiteralValue!6024 (text!42614 List!38733)) (StringLiteralValue!18072 (value!185574 List!38733)) (EOFValue!6024 (value!185575 List!38733)) (IdentValue!6024 (value!185576 List!38733)) (DelimiterValue!12049 (value!185577 List!38733)) (DedentValue!6024 (value!185578 List!38733)) (NewLineValue!6024 (value!185579 List!38733)) (IntegerValue!18072 (value!185580 (_ BitVec 32)) (text!42615 List!38733)) (IntegerValue!18073 (value!185581 Int) (text!42616 List!38733)) (Times!6024) (Or!6024) (Equal!6024) (Minus!6024) (Broken!30124 (value!185582 List!38733)) (And!6024) (Div!6024) (LessEqual!6024) (Mod!6024) (Concat!16577) (Not!6024) (Plus!6024) (SpaceValue!6024 (value!185583 List!38733)) (IntegerValue!18074 (value!185584 Int) (text!42617 List!38733)) (StringLiteralValue!18073 (text!42618 List!38733)) (FloatLiteralValue!12049 (text!42619 List!38733)) (BytesLiteralValue!6024 (value!185585 List!38733)) (CommentValue!12049 (value!185586 List!38733)) (StringLiteralValue!18074 (value!185587 List!38733)) (ErrorTokenValue!6024 (msg!6085 List!38733)) )
))
(declare-datatypes ((C!21292 0))(
  ( (C!21293 (val!12694 Int)) )
))
(declare-datatypes ((Regex!10553 0))(
  ( (ElementMatch!10553 (c!632456 C!21292)) (Concat!16578 (regOne!21618 Regex!10553) (regTwo!21618 Regex!10553)) (EmptyExpr!10553) (Star!10553 (reg!10882 Regex!10553)) (EmptyLang!10553) (Union!10553 (regOne!21619 Regex!10553) (regTwo!21619 Regex!10553)) )
))
(declare-datatypes ((String!43454 0))(
  ( (String!43455 (value!185588 String)) )
))
(declare-datatypes ((List!38734 0))(
  ( (Nil!38610) (Cons!38610 (h!44030 C!21292) (t!298357 List!38734)) )
))
(declare-datatypes ((IArray!23615 0))(
  ( (IArray!23616 (innerList!11865 List!38734)) )
))
(declare-datatypes ((Conc!11805 0))(
  ( (Node!11805 (left!30132 Conc!11805) (right!30462 Conc!11805) (csize!23840 Int) (cheight!12016 Int)) (Leaf!18313 (xs!15007 IArray!23615) (csize!23841 Int)) (Empty!11805) )
))
(declare-datatypes ((BalanceConc!23224 0))(
  ( (BalanceConc!23225 (c!632457 Conc!11805)) )
))
(declare-datatypes ((TokenValueInjection!11476 0))(
  ( (TokenValueInjection!11477 (toValue!8086 Int) (toChars!7945 Int)) )
))
(declare-datatypes ((Rule!11388 0))(
  ( (Rule!11389 (regex!5794 Regex!10553) (tag!6570 String!43454) (isSeparator!5794 Bool) (transformation!5794 TokenValueInjection!11476)) )
))
(declare-datatypes ((Token!10954 0))(
  ( (Token!10955 (value!185589 TokenValue!6024) (rule!8604 Rule!11388) (size!29497 Int) (originalCharacters!6508 List!38734)) )
))
(declare-fun token!511 () Token!10954)

(declare-fun e!2265860 () Bool)

(declare-fun inv!52075 (Token!10954) Bool)

(assert (=> start!342446 (and (inv!52075 token!511) e!2265860)))

(declare-fun e!2265830 () Bool)

(assert (=> start!342446 e!2265830))

(declare-fun e!2265839 () Bool)

(assert (=> start!342446 e!2265839))

(declare-fun bm!264660 () Bool)

(declare-fun call!264670 () Bool)

(declare-fun call!264665 () List!38734)

(declare-fun lt!1272431 () C!21292)

(declare-fun contains!7653 (List!38734 C!21292) Bool)

(assert (=> bm!264660 (= call!264670 (contains!7653 call!264665 lt!1272431))))

(declare-fun e!2265848 () Bool)

(assert (=> b!3659331 (= e!2265848 (and tp!1114876 tp!1114874))))

(declare-fun bm!264661 () Bool)

(declare-fun call!264666 () Bool)

(declare-fun call!264669 () List!38734)

(declare-fun lt!1272440 () C!21292)

(assert (=> bm!264661 (= call!264666 (contains!7653 call!264669 lt!1272440))))

(declare-fun b!3659332 () Bool)

(assert (=> b!3659332 false))

(declare-datatypes ((Unit!55867 0))(
  ( (Unit!55868) )
))
(declare-fun lt!1272435 () Unit!55867)

(declare-fun call!264668 () Unit!55867)

(assert (=> b!3659332 (= lt!1272435 call!264668)))

(assert (=> b!3659332 (not call!264670)))

(declare-datatypes ((List!38735 0))(
  ( (Nil!38611) (Cons!38611 (h!44031 Rule!11388) (t!298358 List!38735)) )
))
(declare-fun rules!3307 () List!38735)

(declare-datatypes ((tuple2!38472 0))(
  ( (tuple2!38473 (_1!22370 Token!10954) (_2!22370 List!38734)) )
))
(declare-fun lt!1272444 () tuple2!38472)

(declare-fun rule!403 () Rule!11388)

(declare-fun lt!1272438 () Unit!55867)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!322 (LexerInterface!5383 List!38735 List!38735 Rule!11388 Rule!11388 C!21292) Unit!55867)

(assert (=> b!3659332 (= lt!1272438 (lemmaSepRuleNotContainsCharContainedInANonSepRule!322 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8604 (_1!22370 lt!1272444)) lt!1272431))))

(declare-fun e!2265838 () Unit!55867)

(declare-fun Unit!55869 () Unit!55867)

(assert (=> b!3659332 (= e!2265838 Unit!55869)))

(declare-fun b!3659333 () Bool)

(declare-fun e!2265834 () Bool)

(declare-fun tp!1114868 () Bool)

(assert (=> b!3659333 (= e!2265857 (and e!2265834 tp!1114868))))

(declare-fun b!3659334 () Bool)

(declare-fun e!2265828 () Bool)

(declare-fun tp!1114872 () Bool)

(declare-fun inv!52072 (String!43454) Bool)

(declare-fun inv!52076 (TokenValueInjection!11476) Bool)

(assert (=> b!3659334 (= e!2265834 (and tp!1114872 (inv!52072 (tag!6570 (h!44031 rules!3307))) (inv!52076 (transformation!5794 (h!44031 rules!3307))) e!2265828))))

(declare-fun b!3659335 () Bool)

(declare-fun res!1485412 () Bool)

(assert (=> b!3659335 (=> (not res!1485412) (not e!2265833))))

(declare-fun anOtherTypeRule!33 () Rule!11388)

(assert (=> b!3659335 (= res!1485412 (not (= (isSeparator!5794 anOtherTypeRule!33) (isSeparator!5794 rule!403))))))

(declare-fun bm!264662 () Bool)

(declare-fun lt!1272423 () List!38734)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (Regex!10553 List!38734 C!21292) Unit!55867)

(assert (=> bm!264662 (= call!264668 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272431))))

(declare-fun e!2265842 () Bool)

(assert (=> b!3659336 (= e!2265842 (and tp!1114870 tp!1114866))))

(declare-fun b!3659337 () Bool)

(declare-fun res!1485414 () Bool)

(declare-fun e!2265837 () Bool)

(assert (=> b!3659337 (=> res!1485414 e!2265837)))

(declare-fun usedCharacters!1006 (Regex!10553) List!38734)

(assert (=> b!3659337 (= res!1485414 (not (contains!7653 (usedCharacters!1006 (regex!5794 anOtherTypeRule!33)) lt!1272440)))))

(declare-fun b!3659338 () Bool)

(declare-fun e!2265843 () Unit!55867)

(declare-fun Unit!55870 () Unit!55867)

(assert (=> b!3659338 (= e!2265843 Unit!55870)))

(declare-fun b!3659339 () Bool)

(declare-fun e!2265856 () Bool)

(declare-fun tp!1114865 () Bool)

(assert (=> b!3659339 (= e!2265830 (and tp!1114865 (inv!52072 (tag!6570 rule!403)) (inv!52076 (transformation!5794 rule!403)) e!2265856))))

(declare-fun b!3659340 () Bool)

(declare-fun e!2265859 () Unit!55867)

(declare-fun Unit!55871 () Unit!55867)

(assert (=> b!3659340 (= e!2265859 Unit!55871)))

(declare-fun tp!1114871 () Bool)

(declare-fun e!2265854 () Bool)

(declare-fun b!3659341 () Bool)

(declare-fun inv!21 (TokenValue!6024) Bool)

(assert (=> b!3659341 (= e!2265860 (and (inv!21 (value!185589 token!511)) e!2265854 tp!1114871))))

(declare-fun bm!264663 () Bool)

(assert (=> bm!264663 (= call!264669 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659342 () Bool)

(declare-fun e!2265851 () Bool)

(declare-fun e!2265827 () Bool)

(assert (=> b!3659342 (= e!2265851 e!2265827)))

(declare-fun res!1485422 () Bool)

(assert (=> b!3659342 (=> res!1485422 e!2265827)))

(assert (=> b!3659342 (= res!1485422 (= (rule!8604 (_1!22370 lt!1272444)) (rule!8604 token!511)))))

(declare-fun lt!1272441 () List!38734)

(assert (=> b!3659342 (= lt!1272423 lt!1272441)))

(declare-fun lt!1272424 () Unit!55867)

(declare-fun lt!1272448 () List!38734)

(declare-fun lemmaIsPrefixSameLengthThenSameList!619 (List!38734 List!38734 List!38734) Unit!55867)

(assert (=> b!3659342 (= lt!1272424 (lemmaIsPrefixSameLengthThenSameList!619 lt!1272423 lt!1272441 lt!1272448))))

(declare-fun lt!1272443 () Unit!55867)

(assert (=> b!3659342 (= lt!1272443 e!2265859)))

(declare-fun c!632452 () Bool)

(declare-fun lt!1272447 () Int)

(declare-fun lt!1272406 () Int)

(assert (=> b!3659342 (= c!632452 (< lt!1272447 lt!1272406))))

(declare-fun lt!1272445 () Unit!55867)

(declare-fun e!2265845 () Unit!55867)

(assert (=> b!3659342 (= lt!1272445 e!2265845)))

(declare-fun c!632454 () Bool)

(assert (=> b!3659342 (= c!632454 (> lt!1272447 lt!1272406))))

(declare-fun lt!1272427 () BalanceConc!23224)

(declare-fun size!29498 (BalanceConc!23224) Int)

(assert (=> b!3659342 (= lt!1272406 (size!29498 lt!1272427))))

(declare-fun lt!1272420 () Unit!55867)

(declare-fun e!2265847 () Unit!55867)

(assert (=> b!3659342 (= lt!1272420 e!2265847)))

(declare-fun c!632450 () Bool)

(assert (=> b!3659342 (= c!632450 (isSeparator!5794 rule!403))))

(declare-fun lt!1272412 () Unit!55867)

(declare-fun e!2265846 () Unit!55867)

(assert (=> b!3659342 (= lt!1272412 e!2265846)))

(declare-fun c!632453 () Bool)

(declare-fun lt!1272437 () List!38734)

(assert (=> b!3659342 (= c!632453 (not (contains!7653 lt!1272437 lt!1272431)))))

(declare-fun head!7820 (List!38734) C!21292)

(assert (=> b!3659342 (= lt!1272431 (head!7820 lt!1272423))))

(declare-fun b!3659343 () Bool)

(declare-fun e!2265852 () Unit!55867)

(assert (=> b!3659343 (= e!2265845 e!2265852)))

(declare-fun suffix!1395 () List!38734)

(declare-fun lt!1272449 () Unit!55867)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!102 (List!38734 List!38734 List!38734 List!38734) Unit!55867)

(assert (=> b!3659343 (= lt!1272449 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!102 lt!1272441 suffix!1395 lt!1272423 lt!1272448))))

(assert (=> b!3659343 (contains!7653 lt!1272423 lt!1272440)))

(declare-fun c!632455 () Bool)

(assert (=> b!3659343 (= c!632455 (isSeparator!5794 rule!403))))

(declare-fun b!3659344 () Bool)

(declare-fun e!2265855 () Bool)

(declare-fun e!2265844 () Bool)

(assert (=> b!3659344 (= e!2265855 e!2265844)))

(declare-fun res!1485410 () Bool)

(assert (=> b!3659344 (=> (not res!1485410) (not e!2265844))))

(declare-fun lt!1272425 () Rule!11388)

(declare-fun matchR!5122 (Regex!10553 List!38734) Bool)

(declare-fun list!14320 (BalanceConc!23224) List!38734)

(declare-fun charsOf!3808 (Token!10954) BalanceConc!23224)

(assert (=> b!3659344 (= res!1485410 (matchR!5122 (regex!5794 lt!1272425) (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))))))

(declare-datatypes ((Option!8216 0))(
  ( (None!8215) (Some!8215 (v!38099 Rule!11388)) )
))
(declare-fun lt!1272432 () Option!8216)

(declare-fun get!12723 (Option!8216) Rule!11388)

(assert (=> b!3659344 (= lt!1272425 (get!12723 lt!1272432))))

(declare-fun b!3659345 () Bool)

(declare-fun e!2265849 () Bool)

(assert (=> b!3659345 (= e!2265849 e!2265851)))

(declare-fun res!1485423 () Bool)

(assert (=> b!3659345 (=> res!1485423 e!2265851)))

(declare-fun lt!1272408 () List!38734)

(declare-datatypes ((Option!8217 0))(
  ( (None!8216) (Some!8216 (v!38100 tuple2!38472)) )
))
(declare-fun lt!1272410 () Option!8217)

(assert (=> b!3659345 (= res!1485423 (or (not (= lt!1272408 (_2!22370 lt!1272444))) (not (= lt!1272410 (Some!8216 (tuple2!38473 (_1!22370 lt!1272444) lt!1272408))))))))

(assert (=> b!3659345 (= (_2!22370 lt!1272444) lt!1272408)))

(declare-fun lt!1272403 () Unit!55867)

(declare-fun lemmaSamePrefixThenSameSuffix!1484 (List!38734 List!38734 List!38734 List!38734 List!38734) Unit!55867)

(assert (=> b!3659345 (= lt!1272403 (lemmaSamePrefixThenSameSuffix!1484 lt!1272423 (_2!22370 lt!1272444) lt!1272423 lt!1272408 lt!1272448))))

(declare-fun getSuffix!1710 (List!38734 List!38734) List!38734)

(assert (=> b!3659345 (= lt!1272408 (getSuffix!1710 lt!1272448 lt!1272423))))

(declare-fun lt!1272404 () Int)

(declare-fun lt!1272430 () TokenValue!6024)

(assert (=> b!3659345 (= lt!1272410 (Some!8216 (tuple2!38473 (Token!10955 lt!1272430 (rule!8604 (_1!22370 lt!1272444)) lt!1272404 lt!1272423) (_2!22370 lt!1272444))))))

(declare-fun maxPrefixOneRule!2055 (LexerInterface!5383 Rule!11388 List!38734) Option!8217)

(assert (=> b!3659345 (= lt!1272410 (maxPrefixOneRule!2055 thiss!23823 (rule!8604 (_1!22370 lt!1272444)) lt!1272448))))

(declare-fun size!29499 (List!38734) Int)

(assert (=> b!3659345 (= lt!1272404 (size!29499 lt!1272423))))

(declare-fun apply!9296 (TokenValueInjection!11476 BalanceConc!23224) TokenValue!6024)

(declare-fun seqFromList!4343 (List!38734) BalanceConc!23224)

(assert (=> b!3659345 (= lt!1272430 (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) (seqFromList!4343 lt!1272423)))))

(declare-fun lt!1272436 () Unit!55867)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1111 (LexerInterface!5383 List!38735 List!38734 List!38734 List!38734 Rule!11388) Unit!55867)

(assert (=> b!3659345 (= lt!1272436 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1111 thiss!23823 rules!3307 lt!1272423 lt!1272448 (_2!22370 lt!1272444) (rule!8604 (_1!22370 lt!1272444))))))

(declare-fun b!3659346 () Bool)

(declare-fun Unit!55872 () Unit!55867)

(assert (=> b!3659346 (= e!2265845 Unit!55872)))

(declare-fun b!3659347 () Bool)

(declare-fun res!1485416 () Bool)

(declare-fun e!2265831 () Bool)

(assert (=> b!3659347 (=> (not res!1485416) (not e!2265831))))

(declare-fun lt!1272415 () tuple2!38472)

(declare-fun isEmpty!22896 (List!38734) Bool)

(assert (=> b!3659347 (= res!1485416 (isEmpty!22896 (_2!22370 lt!1272415)))))

(declare-fun b!3659348 () Bool)

(declare-fun e!2265832 () Bool)

(assert (=> b!3659348 (= e!2265832 e!2265837)))

(declare-fun res!1485408 () Bool)

(assert (=> b!3659348 (=> res!1485408 e!2265837)))

(assert (=> b!3659348 (= res!1485408 (contains!7653 lt!1272437 lt!1272440))))

(assert (=> b!3659348 (= lt!1272440 (head!7820 suffix!1395))))

(assert (=> b!3659348 (= lt!1272437 (usedCharacters!1006 (regex!5794 rule!403)))))

(declare-fun call!264667 () Unit!55867)

(declare-fun bm!264664 () Bool)

(assert (=> bm!264664 (= call!264667 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272440))))

(declare-fun b!3659349 () Bool)

(declare-fun isPrefix!3157 (List!38734 List!38734) Bool)

(assert (=> b!3659349 (= e!2265827 (isPrefix!3157 lt!1272441 lt!1272441))))

(assert (=> b!3659349 (isEmpty!22896 (getSuffix!1710 lt!1272441 lt!1272441))))

(declare-fun lt!1272411 () Unit!55867)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!174 (List!38734) Unit!55867)

(assert (=> b!3659349 (= lt!1272411 (lemmaGetSuffixOnListWithItSelfIsEmpty!174 lt!1272441))))

(declare-fun b!3659350 () Bool)

(declare-fun Unit!55873 () Unit!55867)

(assert (=> b!3659350 (= e!2265859 Unit!55873)))

(declare-fun lt!1272421 () Unit!55867)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!336 (LexerInterface!5383 List!38735 Rule!11388 List!38734 List!38734 List!38734 Rule!11388) Unit!55867)

(assert (=> b!3659350 (= lt!1272421 (lemmaMaxPrefixOutputsMaxPrefix!336 thiss!23823 rules!3307 (rule!8604 (_1!22370 lt!1272444)) lt!1272423 lt!1272448 lt!1272441 rule!403))))

(assert (=> b!3659350 false))

(declare-fun bm!264665 () Bool)

(assert (=> bm!264665 (= call!264665 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659351 () Bool)

(declare-fun res!1485407 () Bool)

(assert (=> b!3659351 (=> res!1485407 e!2265827)))

(declare-fun getIndex!462 (List!38735 Rule!11388) Int)

(assert (=> b!3659351 (= res!1485407 (>= (getIndex!462 rules!3307 (rule!8604 (_1!22370 lt!1272444))) (getIndex!462 rules!3307 rule!403)))))

(declare-fun b!3659352 () Bool)

(declare-fun tp_is_empty!18189 () Bool)

(declare-fun tp!1114873 () Bool)

(assert (=> b!3659352 (= e!2265853 (and tp_is_empty!18189 tp!1114873))))

(declare-fun b!3659353 () Bool)

(declare-fun res!1485404 () Bool)

(assert (=> b!3659353 (=> res!1485404 e!2265832)))

(assert (=> b!3659353 (= res!1485404 (isEmpty!22896 suffix!1395))))

(declare-fun b!3659354 () Bool)

(declare-fun res!1485415 () Bool)

(assert (=> b!3659354 (=> res!1485415 e!2265837)))

(declare-fun sepAndNonSepRulesDisjointChars!1962 (List!38735 List!38735) Bool)

(assert (=> b!3659354 (= res!1485415 (not (sepAndNonSepRulesDisjointChars!1962 rules!3307 rules!3307)))))

(declare-fun b!3659355 () Bool)

(assert (=> b!3659355 (= e!2265831 (not e!2265832))))

(declare-fun res!1485405 () Bool)

(assert (=> b!3659355 (=> res!1485405 e!2265832)))

(assert (=> b!3659355 (= res!1485405 (not (matchR!5122 (regex!5794 rule!403) lt!1272441)))))

(declare-fun ruleValid!2058 (LexerInterface!5383 Rule!11388) Bool)

(assert (=> b!3659355 (ruleValid!2058 thiss!23823 rule!403)))

(declare-fun lt!1272426 () Unit!55867)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1212 (LexerInterface!5383 Rule!11388 List!38735) Unit!55867)

(assert (=> b!3659355 (= lt!1272426 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1212 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3659356 () Bool)

(declare-fun res!1485403 () Bool)

(assert (=> b!3659356 (=> (not res!1485403) (not e!2265833))))

(declare-fun contains!7654 (List!38735 Rule!11388) Bool)

(assert (=> b!3659356 (= res!1485403 (contains!7654 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3659357 () Bool)

(declare-fun tp!1114867 () Bool)

(assert (=> b!3659357 (= e!2265854 (and tp!1114867 (inv!52072 (tag!6570 (rule!8604 token!511))) (inv!52076 (transformation!5794 (rule!8604 token!511))) e!2265848))))

(declare-fun b!3659358 () Bool)

(declare-fun Unit!55874 () Unit!55867)

(assert (=> b!3659358 (= e!2265846 Unit!55874)))

(declare-fun lt!1272428 () Unit!55867)

(assert (=> b!3659358 (= lt!1272428 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 rule!403) lt!1272441 lt!1272431))))

(assert (=> b!3659358 false))

(declare-fun b!3659359 () Bool)

(declare-fun Unit!55875 () Unit!55867)

(assert (=> b!3659359 (= e!2265838 Unit!55875)))

(declare-fun b!3659360 () Bool)

(assert (=> b!3659360 false))

(declare-fun lt!1272414 () Unit!55867)

(assert (=> b!3659360 (= lt!1272414 call!264667)))

(assert (=> b!3659360 (not call!264666)))

(declare-fun lt!1272433 () Unit!55867)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!440 (LexerInterface!5383 List!38735 List!38735 Rule!11388 Rule!11388 C!21292) Unit!55867)

(assert (=> b!3659360 (= lt!1272433 (lemmaNonSepRuleNotContainsCharContainedInASepRule!440 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) anOtherTypeRule!33 lt!1272440))))

(declare-fun Unit!55876 () Unit!55867)

(assert (=> b!3659360 (= e!2265852 Unit!55876)))

(assert (=> b!3659361 (= e!2265856 (and tp!1114863 tp!1114875))))

(declare-fun b!3659362 () Bool)

(declare-fun e!2265836 () Bool)

(assert (=> b!3659362 (= e!2265837 e!2265836)))

(declare-fun res!1485411 () Bool)

(assert (=> b!3659362 (=> res!1485411 e!2265836)))

(assert (=> b!3659362 (= res!1485411 (not (isPrefix!3157 lt!1272423 lt!1272448)))))

(declare-fun ++!9610 (List!38734 List!38734) List!38734)

(assert (=> b!3659362 (isPrefix!3157 lt!1272423 (++!9610 lt!1272423 (_2!22370 lt!1272444)))))

(declare-fun lt!1272419 () Unit!55867)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2076 (List!38734 List!38734) Unit!55867)

(assert (=> b!3659362 (= lt!1272419 (lemmaConcatTwoListThenFirstIsPrefix!2076 lt!1272423 (_2!22370 lt!1272444)))))

(declare-fun lt!1272422 () BalanceConc!23224)

(assert (=> b!3659362 (= lt!1272423 (list!14320 lt!1272422))))

(assert (=> b!3659362 (= lt!1272422 (charsOf!3808 (_1!22370 lt!1272444)))))

(assert (=> b!3659362 e!2265855))

(declare-fun res!1485424 () Bool)

(assert (=> b!3659362 (=> (not res!1485424) (not e!2265855))))

(declare-fun isDefined!6448 (Option!8216) Bool)

(assert (=> b!3659362 (= res!1485424 (isDefined!6448 lt!1272432))))

(declare-fun getRuleFromTag!1398 (LexerInterface!5383 List!38735 String!43454) Option!8216)

(assert (=> b!3659362 (= lt!1272432 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun lt!1272417 () Unit!55867)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1398 (LexerInterface!5383 List!38735 List!38734 Token!10954) Unit!55867)

(assert (=> b!3659362 (= lt!1272417 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1398 thiss!23823 rules!3307 lt!1272448 (_1!22370 lt!1272444)))))

(declare-fun lt!1272439 () Option!8217)

(declare-fun get!12724 (Option!8217) tuple2!38472)

(assert (=> b!3659362 (= lt!1272444 (get!12724 lt!1272439))))

(declare-fun lt!1272446 () Unit!55867)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1061 (LexerInterface!5383 List!38735 List!38734 List!38734) Unit!55867)

(assert (=> b!3659362 (= lt!1272446 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1061 thiss!23823 rules!3307 lt!1272441 suffix!1395))))

(declare-fun maxPrefix!2917 (LexerInterface!5383 List!38735 List!38734) Option!8217)

(assert (=> b!3659362 (= lt!1272439 (maxPrefix!2917 thiss!23823 rules!3307 lt!1272448))))

(assert (=> b!3659362 (isPrefix!3157 lt!1272441 lt!1272448)))

(declare-fun lt!1272405 () Unit!55867)

(assert (=> b!3659362 (= lt!1272405 (lemmaConcatTwoListThenFirstIsPrefix!2076 lt!1272441 suffix!1395))))

(assert (=> b!3659362 (= lt!1272448 (++!9610 lt!1272441 suffix!1395))))

(declare-fun b!3659363 () Bool)

(declare-fun e!2265829 () Bool)

(assert (=> b!3659363 (= e!2265833 e!2265829)))

(declare-fun res!1485420 () Bool)

(assert (=> b!3659363 (=> (not res!1485420) (not e!2265829))))

(declare-fun lt!1272418 () Option!8217)

(declare-fun isDefined!6449 (Option!8217) Bool)

(assert (=> b!3659363 (= res!1485420 (isDefined!6449 lt!1272418))))

(assert (=> b!3659363 (= lt!1272418 (maxPrefix!2917 thiss!23823 rules!3307 lt!1272441))))

(assert (=> b!3659363 (= lt!1272441 (list!14320 lt!1272427))))

(assert (=> b!3659363 (= lt!1272427 (charsOf!3808 token!511))))

(declare-fun b!3659364 () Bool)

(assert (=> b!3659364 (= e!2265847 e!2265838)))

(declare-fun c!632451 () Bool)

(assert (=> b!3659364 (= c!632451 (isSeparator!5794 (rule!8604 (_1!22370 lt!1272444))))))

(declare-fun b!3659365 () Bool)

(declare-fun Unit!55877 () Unit!55867)

(assert (=> b!3659365 (= e!2265846 Unit!55877)))

(declare-fun b!3659366 () Bool)

(assert (=> b!3659366 false))

(declare-fun lt!1272450 () Unit!55867)

(assert (=> b!3659366 (= lt!1272450 call!264667)))

(assert (=> b!3659366 (not call!264666)))

(declare-fun lt!1272407 () Unit!55867)

(assert (=> b!3659366 (= lt!1272407 (lemmaSepRuleNotContainsCharContainedInANonSepRule!322 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8604 (_1!22370 lt!1272444)) lt!1272440))))

(declare-fun Unit!55878 () Unit!55867)

(assert (=> b!3659366 (= e!2265852 Unit!55878)))

(declare-fun b!3659367 () Bool)

(declare-fun res!1485417 () Bool)

(assert (=> b!3659367 (=> (not res!1485417) (not e!2265833))))

(assert (=> b!3659367 (= res!1485417 (contains!7654 rules!3307 rule!403))))

(declare-fun b!3659368 () Bool)

(declare-fun res!1485409 () Bool)

(assert (=> b!3659368 (=> (not res!1485409) (not e!2265831))))

(assert (=> b!3659368 (= res!1485409 (= (rule!8604 token!511) rule!403))))

(declare-fun b!3659369 () Bool)

(declare-fun res!1485419 () Bool)

(assert (=> b!3659369 (=> (not res!1485419) (not e!2265833))))

(declare-fun rulesInvariant!4780 (LexerInterface!5383 List!38735) Bool)

(assert (=> b!3659369 (= res!1485419 (rulesInvariant!4780 thiss!23823 rules!3307))))

(declare-fun b!3659370 () Bool)

(assert (=> b!3659370 (= e!2265829 e!2265831)))

(declare-fun res!1485421 () Bool)

(assert (=> b!3659370 (=> (not res!1485421) (not e!2265831))))

(assert (=> b!3659370 (= res!1485421 (= (_1!22370 lt!1272415) token!511))))

(assert (=> b!3659370 (= lt!1272415 (get!12724 lt!1272418))))

(assert (=> b!3659371 (= e!2265828 (and tp!1114869 tp!1114864))))

(declare-fun b!3659372 () Bool)

(assert (=> b!3659372 (= e!2265844 (= (rule!8604 (_1!22370 lt!1272444)) lt!1272425))))

(declare-fun tp!1114862 () Bool)

(declare-fun b!3659373 () Bool)

(assert (=> b!3659373 (= e!2265839 (and tp!1114862 (inv!52072 (tag!6570 anOtherTypeRule!33)) (inv!52076 (transformation!5794 anOtherTypeRule!33)) e!2265842))))

(declare-fun b!3659374 () Bool)

(declare-fun res!1485413 () Bool)

(assert (=> b!3659374 (=> res!1485413 e!2265836)))

(assert (=> b!3659374 (= res!1485413 (not (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423)))))

(declare-fun b!3659375 () Bool)

(declare-fun res!1485406 () Bool)

(assert (=> b!3659375 (=> (not res!1485406) (not e!2265833))))

(declare-fun isEmpty!22897 (List!38735) Bool)

(assert (=> b!3659375 (= res!1485406 (not (isEmpty!22897 rules!3307)))))

(declare-fun b!3659376 () Bool)

(assert (=> b!3659376 (= e!2265836 e!2265849)))

(declare-fun res!1485418 () Bool)

(assert (=> b!3659376 (=> res!1485418 e!2265849)))

(declare-fun lt!1272434 () TokenValue!6024)

(assert (=> b!3659376 (= res!1485418 (not (= lt!1272439 (Some!8216 (tuple2!38473 (Token!10955 lt!1272434 (rule!8604 (_1!22370 lt!1272444)) lt!1272447 lt!1272423) (_2!22370 lt!1272444))))))))

(assert (=> b!3659376 (= lt!1272447 (size!29498 lt!1272422))))

(assert (=> b!3659376 (= lt!1272434 (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422))))

(declare-fun lt!1272413 () Unit!55867)

(declare-fun lemmaCharactersSize!839 (Token!10954) Unit!55867)

(assert (=> b!3659376 (= lt!1272413 (lemmaCharactersSize!839 (_1!22370 lt!1272444)))))

(declare-fun lt!1272442 () Unit!55867)

(declare-fun lemmaEqSameImage!977 (TokenValueInjection!11476 BalanceConc!23224 BalanceConc!23224) Unit!55867)

(assert (=> b!3659376 (= lt!1272442 (lemmaEqSameImage!977 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422 (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444)))))))

(declare-fun lt!1272416 () Unit!55867)

(declare-fun lemmaSemiInverse!1543 (TokenValueInjection!11476 BalanceConc!23224) Unit!55867)

(assert (=> b!3659376 (= lt!1272416 (lemmaSemiInverse!1543 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422))))

(declare-fun b!3659377 () Bool)

(assert (=> b!3659377 (= e!2265847 e!2265843)))

(declare-fun c!632449 () Bool)

(assert (=> b!3659377 (= c!632449 (not (isSeparator!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659378 () Bool)

(assert (=> b!3659378 false))

(declare-fun lt!1272429 () Unit!55867)

(assert (=> b!3659378 (= lt!1272429 call!264668)))

(assert (=> b!3659378 (not call!264670)))

(declare-fun lt!1272409 () Unit!55867)

(assert (=> b!3659378 (= lt!1272409 (lemmaNonSepRuleNotContainsCharContainedInASepRule!440 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) rule!403 lt!1272431))))

(declare-fun Unit!55879 () Unit!55867)

(assert (=> b!3659378 (= e!2265843 Unit!55879)))

(assert (= (and start!342446 res!1485402) b!3659375))

(assert (= (and b!3659375 res!1485406) b!3659369))

(assert (= (and b!3659369 res!1485419) b!3659367))

(assert (= (and b!3659367 res!1485417) b!3659356))

(assert (= (and b!3659356 res!1485403) b!3659335))

(assert (= (and b!3659335 res!1485412) b!3659363))

(assert (= (and b!3659363 res!1485420) b!3659370))

(assert (= (and b!3659370 res!1485421) b!3659347))

(assert (= (and b!3659347 res!1485416) b!3659368))

(assert (= (and b!3659368 res!1485409) b!3659355))

(assert (= (and b!3659355 (not res!1485405)) b!3659353))

(assert (= (and b!3659353 (not res!1485404)) b!3659348))

(assert (= (and b!3659348 (not res!1485408)) b!3659337))

(assert (= (and b!3659337 (not res!1485414)) b!3659354))

(assert (= (and b!3659354 (not res!1485415)) b!3659362))

(assert (= (and b!3659362 res!1485424) b!3659344))

(assert (= (and b!3659344 res!1485410) b!3659372))

(assert (= (and b!3659362 (not res!1485411)) b!3659374))

(assert (= (and b!3659374 (not res!1485413)) b!3659376))

(assert (= (and b!3659376 (not res!1485418)) b!3659345))

(assert (= (and b!3659345 (not res!1485423)) b!3659342))

(assert (= (and b!3659342 c!632453) b!3659358))

(assert (= (and b!3659342 (not c!632453)) b!3659365))

(assert (= (and b!3659342 c!632450) b!3659377))

(assert (= (and b!3659342 (not c!632450)) b!3659364))

(assert (= (and b!3659377 c!632449) b!3659378))

(assert (= (and b!3659377 (not c!632449)) b!3659338))

(assert (= (and b!3659364 c!632451) b!3659332))

(assert (= (and b!3659364 (not c!632451)) b!3659359))

(assert (= (or b!3659378 b!3659332) bm!264662))

(assert (= (or b!3659378 b!3659332) bm!264665))

(assert (= (or b!3659378 b!3659332) bm!264660))

(assert (= (and b!3659342 c!632454) b!3659343))

(assert (= (and b!3659342 (not c!632454)) b!3659346))

(assert (= (and b!3659343 c!632455) b!3659366))

(assert (= (and b!3659343 (not c!632455)) b!3659360))

(assert (= (or b!3659366 b!3659360) bm!264664))

(assert (= (or b!3659366 b!3659360) bm!264663))

(assert (= (or b!3659366 b!3659360) bm!264661))

(assert (= (and b!3659342 c!632452) b!3659350))

(assert (= (and b!3659342 (not c!632452)) b!3659340))

(assert (= (and b!3659342 (not res!1485422)) b!3659351))

(assert (= (and b!3659351 (not res!1485407)) b!3659349))

(assert (= b!3659334 b!3659371))

(assert (= b!3659333 b!3659334))

(assert (= (and start!342446 ((_ is Cons!38611) rules!3307)) b!3659333))

(assert (= (and start!342446 ((_ is Cons!38610) suffix!1395)) b!3659352))

(assert (= b!3659357 b!3659331))

(assert (= b!3659341 b!3659357))

(assert (= start!342446 b!3659341))

(assert (= b!3659339 b!3659361))

(assert (= start!342446 b!3659339))

(assert (= b!3659373 b!3659336))

(assert (= start!342446 b!3659373))

(declare-fun m!4165483 () Bool)

(assert (=> b!3659378 m!4165483))

(declare-fun m!4165485 () Bool)

(assert (=> b!3659363 m!4165485))

(declare-fun m!4165487 () Bool)

(assert (=> b!3659363 m!4165487))

(declare-fun m!4165489 () Bool)

(assert (=> b!3659363 m!4165489))

(declare-fun m!4165491 () Bool)

(assert (=> b!3659363 m!4165491))

(declare-fun m!4165493 () Bool)

(assert (=> b!3659370 m!4165493))

(declare-fun m!4165495 () Bool)

(assert (=> bm!264660 m!4165495))

(declare-fun m!4165497 () Bool)

(assert (=> b!3659334 m!4165497))

(declare-fun m!4165499 () Bool)

(assert (=> b!3659334 m!4165499))

(declare-fun m!4165501 () Bool)

(assert (=> b!3659360 m!4165501))

(declare-fun m!4165503 () Bool)

(assert (=> b!3659337 m!4165503))

(assert (=> b!3659337 m!4165503))

(declare-fun m!4165505 () Bool)

(assert (=> b!3659337 m!4165505))

(declare-fun m!4165507 () Bool)

(assert (=> b!3659341 m!4165507))

(declare-fun m!4165509 () Bool)

(assert (=> bm!264662 m!4165509))

(declare-fun m!4165511 () Bool)

(assert (=> b!3659366 m!4165511))

(declare-fun m!4165513 () Bool)

(assert (=> b!3659350 m!4165513))

(declare-fun m!4165515 () Bool)

(assert (=> b!3659375 m!4165515))

(declare-fun m!4165517 () Bool)

(assert (=> b!3659373 m!4165517))

(declare-fun m!4165519 () Bool)

(assert (=> b!3659373 m!4165519))

(declare-fun m!4165521 () Bool)

(assert (=> b!3659369 m!4165521))

(declare-fun m!4165523 () Bool)

(assert (=> b!3659376 m!4165523))

(declare-fun m!4165525 () Bool)

(assert (=> b!3659376 m!4165525))

(declare-fun m!4165527 () Bool)

(assert (=> b!3659376 m!4165527))

(declare-fun m!4165529 () Bool)

(assert (=> b!3659376 m!4165529))

(declare-fun m!4165531 () Bool)

(assert (=> b!3659376 m!4165531))

(declare-fun m!4165533 () Bool)

(assert (=> b!3659376 m!4165533))

(assert (=> b!3659376 m!4165529))

(declare-fun m!4165535 () Bool)

(assert (=> start!342446 m!4165535))

(declare-fun m!4165537 () Bool)

(assert (=> b!3659374 m!4165537))

(declare-fun m!4165539 () Bool)

(assert (=> bm!264661 m!4165539))

(declare-fun m!4165541 () Bool)

(assert (=> b!3659332 m!4165541))

(declare-fun m!4165543 () Bool)

(assert (=> b!3659362 m!4165543))

(declare-fun m!4165545 () Bool)

(assert (=> b!3659362 m!4165545))

(declare-fun m!4165547 () Bool)

(assert (=> b!3659362 m!4165547))

(declare-fun m!4165549 () Bool)

(assert (=> b!3659362 m!4165549))

(declare-fun m!4165551 () Bool)

(assert (=> b!3659362 m!4165551))

(declare-fun m!4165553 () Bool)

(assert (=> b!3659362 m!4165553))

(declare-fun m!4165555 () Bool)

(assert (=> b!3659362 m!4165555))

(declare-fun m!4165557 () Bool)

(assert (=> b!3659362 m!4165557))

(declare-fun m!4165559 () Bool)

(assert (=> b!3659362 m!4165559))

(declare-fun m!4165561 () Bool)

(assert (=> b!3659362 m!4165561))

(declare-fun m!4165563 () Bool)

(assert (=> b!3659362 m!4165563))

(declare-fun m!4165565 () Bool)

(assert (=> b!3659362 m!4165565))

(declare-fun m!4165567 () Bool)

(assert (=> b!3659362 m!4165567))

(assert (=> b!3659362 m!4165555))

(declare-fun m!4165569 () Bool)

(assert (=> b!3659362 m!4165569))

(declare-fun m!4165571 () Bool)

(assert (=> b!3659362 m!4165571))

(assert (=> b!3659344 m!4165571))

(assert (=> b!3659344 m!4165571))

(declare-fun m!4165573 () Bool)

(assert (=> b!3659344 m!4165573))

(assert (=> b!3659344 m!4165573))

(declare-fun m!4165575 () Bool)

(assert (=> b!3659344 m!4165575))

(declare-fun m!4165577 () Bool)

(assert (=> b!3659344 m!4165577))

(declare-fun m!4165579 () Bool)

(assert (=> b!3659347 m!4165579))

(declare-fun m!4165581 () Bool)

(assert (=> b!3659353 m!4165581))

(declare-fun m!4165583 () Bool)

(assert (=> b!3659345 m!4165583))

(declare-fun m!4165585 () Bool)

(assert (=> b!3659345 m!4165585))

(declare-fun m!4165587 () Bool)

(assert (=> b!3659345 m!4165587))

(declare-fun m!4165589 () Bool)

(assert (=> b!3659345 m!4165589))

(assert (=> b!3659345 m!4165585))

(declare-fun m!4165591 () Bool)

(assert (=> b!3659345 m!4165591))

(declare-fun m!4165593 () Bool)

(assert (=> b!3659345 m!4165593))

(declare-fun m!4165595 () Bool)

(assert (=> b!3659345 m!4165595))

(declare-fun m!4165597 () Bool)

(assert (=> b!3659357 m!4165597))

(declare-fun m!4165599 () Bool)

(assert (=> b!3659357 m!4165599))

(declare-fun m!4165601 () Bool)

(assert (=> b!3659355 m!4165601))

(declare-fun m!4165603 () Bool)

(assert (=> b!3659355 m!4165603))

(declare-fun m!4165605 () Bool)

(assert (=> b!3659355 m!4165605))

(declare-fun m!4165607 () Bool)

(assert (=> b!3659339 m!4165607))

(declare-fun m!4165609 () Bool)

(assert (=> b!3659339 m!4165609))

(declare-fun m!4165611 () Bool)

(assert (=> bm!264665 m!4165611))

(declare-fun m!4165613 () Bool)

(assert (=> b!3659342 m!4165613))

(declare-fun m!4165615 () Bool)

(assert (=> b!3659342 m!4165615))

(declare-fun m!4165617 () Bool)

(assert (=> b!3659342 m!4165617))

(declare-fun m!4165619 () Bool)

(assert (=> b!3659342 m!4165619))

(declare-fun m!4165621 () Bool)

(assert (=> b!3659343 m!4165621))

(declare-fun m!4165623 () Bool)

(assert (=> b!3659343 m!4165623))

(declare-fun m!4165625 () Bool)

(assert (=> b!3659356 m!4165625))

(declare-fun m!4165627 () Bool)

(assert (=> b!3659349 m!4165627))

(declare-fun m!4165629 () Bool)

(assert (=> b!3659349 m!4165629))

(assert (=> b!3659349 m!4165629))

(declare-fun m!4165631 () Bool)

(assert (=> b!3659349 m!4165631))

(declare-fun m!4165633 () Bool)

(assert (=> b!3659349 m!4165633))

(declare-fun m!4165635 () Bool)

(assert (=> b!3659367 m!4165635))

(assert (=> bm!264663 m!4165611))

(declare-fun m!4165637 () Bool)

(assert (=> b!3659354 m!4165637))

(declare-fun m!4165639 () Bool)

(assert (=> b!3659358 m!4165639))

(declare-fun m!4165641 () Bool)

(assert (=> b!3659348 m!4165641))

(declare-fun m!4165643 () Bool)

(assert (=> b!3659348 m!4165643))

(declare-fun m!4165645 () Bool)

(assert (=> b!3659348 m!4165645))

(declare-fun m!4165647 () Bool)

(assert (=> bm!264664 m!4165647))

(declare-fun m!4165649 () Bool)

(assert (=> b!3659351 m!4165649))

(declare-fun m!4165651 () Bool)

(assert (=> b!3659351 m!4165651))

(check-sat (not b!3659378) (not b!3659334) b_and!271443 (not b_next!97243) (not b!3659349) (not b!3659367) (not b!3659342) (not bm!264661) (not b!3659345) (not b!3659351) (not b_next!97251) tp_is_empty!18189 (not bm!264662) (not b_next!97249) (not b!3659352) (not b!3659350) b_and!271453 (not b!3659357) (not bm!264664) (not b!3659337) (not b!3659341) b_and!271449 (not bm!264665) (not b!3659374) (not b!3659376) (not b!3659373) (not b!3659366) (not b!3659369) (not b_next!97255) (not b_next!97245) (not b!3659375) (not b!3659332) (not b!3659370) (not b!3659348) (not b!3659355) b_and!271447 (not bm!264660) b_and!271457 b_and!271445 (not b_next!97253) (not b_next!97247) (not b!3659360) (not b!3659343) (not b!3659347) (not bm!264663) (not b!3659333) (not b!3659344) (not b!3659339) (not b!3659363) b_and!271455 (not start!342446) (not b!3659356) (not b!3659362) b_and!271451 (not b!3659358) (not b!3659354) (not b!3659353) (not b_next!97241))
(check-sat (not b_next!97251) b_and!271443 (not b_next!97249) b_and!271453 (not b_next!97243) b_and!271449 b_and!271447 b_and!271455 b_and!271451 (not b_next!97241) (not b_next!97255) (not b_next!97245) b_and!271457 b_and!271445 (not b_next!97253) (not b_next!97247))
(get-model)

(declare-fun bm!264674 () Bool)

(declare-fun call!264682 () List!38734)

(declare-fun c!632466 () Bool)

(assert (=> bm!264674 (= call!264682 (usedCharacters!1006 (ite c!632466 (regTwo!21619 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) (regOne!21618 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))))

(declare-fun call!264680 () List!38734)

(declare-fun bm!264675 () Bool)

(declare-fun call!264681 () List!38734)

(assert (=> bm!264675 (= call!264681 (++!9610 (ite c!632466 call!264680 call!264682) (ite c!632466 call!264682 call!264680)))))

(declare-fun c!632468 () Bool)

(declare-fun call!264679 () List!38734)

(declare-fun bm!264676 () Bool)

(assert (=> bm!264676 (= call!264679 (usedCharacters!1006 (ite c!632468 (reg!10882 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) (ite c!632466 (regOne!21619 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) (regTwo!21618 (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))))))

(declare-fun b!3659395 () Bool)

(declare-fun e!2265871 () List!38734)

(declare-fun e!2265870 () List!38734)

(assert (=> b!3659395 (= e!2265871 e!2265870)))

(assert (=> b!3659395 (= c!632466 ((_ is Union!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659396 () Bool)

(declare-fun e!2265872 () List!38734)

(assert (=> b!3659396 (= e!2265872 Nil!38610)))

(declare-fun b!3659397 () Bool)

(assert (=> b!3659397 (= e!2265871 call!264679)))

(declare-fun b!3659398 () Bool)

(assert (=> b!3659398 (= c!632468 ((_ is Star!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun e!2265869 () List!38734)

(assert (=> b!3659398 (= e!2265869 e!2265871)))

(declare-fun d!1074534 () Bool)

(declare-fun c!632467 () Bool)

(assert (=> d!1074534 (= c!632467 (or ((_ is EmptyExpr!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) ((_ is EmptyLang!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))))

(assert (=> d!1074534 (= (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) e!2265872)))

(declare-fun b!3659399 () Bool)

(assert (=> b!3659399 (= e!2265870 call!264681)))

(declare-fun bm!264677 () Bool)

(assert (=> bm!264677 (= call!264680 call!264679)))

(declare-fun b!3659400 () Bool)

(assert (=> b!3659400 (= e!2265872 e!2265869)))

(declare-fun c!632469 () Bool)

(assert (=> b!3659400 (= c!632469 ((_ is ElementMatch!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659401 () Bool)

(assert (=> b!3659401 (= e!2265870 call!264681)))

(declare-fun b!3659402 () Bool)

(assert (=> b!3659402 (= e!2265869 (Cons!38610 (c!632456 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) Nil!38610))))

(assert (= (and d!1074534 c!632467) b!3659396))

(assert (= (and d!1074534 (not c!632467)) b!3659400))

(assert (= (and b!3659400 c!632469) b!3659402))

(assert (= (and b!3659400 (not c!632469)) b!3659398))

(assert (= (and b!3659398 c!632468) b!3659397))

(assert (= (and b!3659398 (not c!632468)) b!3659395))

(assert (= (and b!3659395 c!632466) b!3659399))

(assert (= (and b!3659395 (not c!632466)) b!3659401))

(assert (= (or b!3659399 b!3659401) bm!264677))

(assert (= (or b!3659399 b!3659401) bm!264674))

(assert (= (or b!3659399 b!3659401) bm!264675))

(assert (= (or b!3659397 bm!264677) bm!264676))

(declare-fun m!4165653 () Bool)

(assert (=> bm!264674 m!4165653))

(declare-fun m!4165655 () Bool)

(assert (=> bm!264675 m!4165655))

(declare-fun m!4165657 () Bool)

(assert (=> bm!264676 m!4165657))

(assert (=> bm!264663 d!1074534))

(declare-fun d!1074536 () Bool)

(assert (=> d!1074536 (= lt!1272423 lt!1272441)))

(declare-fun lt!1272453 () Unit!55867)

(declare-fun choose!21632 (List!38734 List!38734 List!38734) Unit!55867)

(assert (=> d!1074536 (= lt!1272453 (choose!21632 lt!1272423 lt!1272441 lt!1272448))))

(assert (=> d!1074536 (isPrefix!3157 lt!1272423 lt!1272448)))

(assert (=> d!1074536 (= (lemmaIsPrefixSameLengthThenSameList!619 lt!1272423 lt!1272441 lt!1272448) lt!1272453)))

(declare-fun bs!572544 () Bool)

(assert (= bs!572544 d!1074536))

(declare-fun m!4165659 () Bool)

(assert (=> bs!572544 m!4165659))

(assert (=> bs!572544 m!4165545))

(assert (=> b!3659342 d!1074536))

(declare-fun d!1074538 () Bool)

(declare-fun lt!1272456 () Int)

(assert (=> d!1074538 (= lt!1272456 (size!29499 (list!14320 lt!1272427)))))

(declare-fun size!29501 (Conc!11805) Int)

(assert (=> d!1074538 (= lt!1272456 (size!29501 (c!632457 lt!1272427)))))

(assert (=> d!1074538 (= (size!29498 lt!1272427) lt!1272456)))

(declare-fun bs!572545 () Bool)

(assert (= bs!572545 d!1074538))

(assert (=> bs!572545 m!4165489))

(assert (=> bs!572545 m!4165489))

(declare-fun m!4165661 () Bool)

(assert (=> bs!572545 m!4165661))

(declare-fun m!4165663 () Bool)

(assert (=> bs!572545 m!4165663))

(assert (=> b!3659342 d!1074538))

(declare-fun d!1074540 () Bool)

(declare-fun lt!1272459 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5577 (List!38734) (InoxSet C!21292))

(assert (=> d!1074540 (= lt!1272459 (select (content!5577 lt!1272437) lt!1272431))))

(declare-fun e!2265877 () Bool)

(assert (=> d!1074540 (= lt!1272459 e!2265877)))

(declare-fun res!1485435 () Bool)

(assert (=> d!1074540 (=> (not res!1485435) (not e!2265877))))

(assert (=> d!1074540 (= res!1485435 ((_ is Cons!38610) lt!1272437))))

(assert (=> d!1074540 (= (contains!7653 lt!1272437 lt!1272431) lt!1272459)))

(declare-fun b!3659407 () Bool)

(declare-fun e!2265878 () Bool)

(assert (=> b!3659407 (= e!2265877 e!2265878)))

(declare-fun res!1485436 () Bool)

(assert (=> b!3659407 (=> res!1485436 e!2265878)))

(assert (=> b!3659407 (= res!1485436 (= (h!44030 lt!1272437) lt!1272431))))

(declare-fun b!3659408 () Bool)

(assert (=> b!3659408 (= e!2265878 (contains!7653 (t!298357 lt!1272437) lt!1272431))))

(assert (= (and d!1074540 res!1485435) b!3659407))

(assert (= (and b!3659407 (not res!1485436)) b!3659408))

(declare-fun m!4165665 () Bool)

(assert (=> d!1074540 m!4165665))

(declare-fun m!4165667 () Bool)

(assert (=> d!1074540 m!4165667))

(declare-fun m!4165669 () Bool)

(assert (=> b!3659408 m!4165669))

(assert (=> b!3659342 d!1074540))

(declare-fun d!1074542 () Bool)

(assert (=> d!1074542 (= (head!7820 lt!1272423) (h!44030 lt!1272423))))

(assert (=> b!3659342 d!1074542))

(declare-fun d!1074544 () Bool)

(declare-fun c!632475 () Bool)

(assert (=> d!1074544 (= c!632475 ((_ is IntegerValue!18072) (value!185589 token!511)))))

(declare-fun e!2265886 () Bool)

(assert (=> d!1074544 (= (inv!21 (value!185589 token!511)) e!2265886)))

(declare-fun b!3659419 () Bool)

(declare-fun e!2265885 () Bool)

(declare-fun inv!15 (TokenValue!6024) Bool)

(assert (=> b!3659419 (= e!2265885 (inv!15 (value!185589 token!511)))))

(declare-fun b!3659420 () Bool)

(declare-fun e!2265887 () Bool)

(declare-fun inv!17 (TokenValue!6024) Bool)

(assert (=> b!3659420 (= e!2265887 (inv!17 (value!185589 token!511)))))

(declare-fun b!3659421 () Bool)

(assert (=> b!3659421 (= e!2265886 e!2265887)))

(declare-fun c!632474 () Bool)

(assert (=> b!3659421 (= c!632474 ((_ is IntegerValue!18073) (value!185589 token!511)))))

(declare-fun b!3659422 () Bool)

(declare-fun res!1485439 () Bool)

(assert (=> b!3659422 (=> res!1485439 e!2265885)))

(assert (=> b!3659422 (= res!1485439 (not ((_ is IntegerValue!18074) (value!185589 token!511))))))

(assert (=> b!3659422 (= e!2265887 e!2265885)))

(declare-fun b!3659423 () Bool)

(declare-fun inv!16 (TokenValue!6024) Bool)

(assert (=> b!3659423 (= e!2265886 (inv!16 (value!185589 token!511)))))

(assert (= (and d!1074544 c!632475) b!3659423))

(assert (= (and d!1074544 (not c!632475)) b!3659421))

(assert (= (and b!3659421 c!632474) b!3659420))

(assert (= (and b!3659421 (not c!632474)) b!3659422))

(assert (= (and b!3659422 (not res!1485439)) b!3659419))

(declare-fun m!4165671 () Bool)

(assert (=> b!3659419 m!4165671))

(declare-fun m!4165673 () Bool)

(assert (=> b!3659420 m!4165673))

(declare-fun m!4165675 () Bool)

(assert (=> b!3659423 m!4165675))

(assert (=> b!3659341 d!1074544))

(declare-fun d!1074546 () Bool)

(assert (=> d!1074546 (not (contains!7653 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272440))))

(declare-fun lt!1272462 () Unit!55867)

(declare-fun choose!21633 (LexerInterface!5383 List!38735 List!38735 Rule!11388 Rule!11388 C!21292) Unit!55867)

(assert (=> d!1074546 (= lt!1272462 (choose!21633 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) anOtherTypeRule!33 lt!1272440))))

(assert (=> d!1074546 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074546 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!440 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) anOtherTypeRule!33 lt!1272440) lt!1272462)))

(declare-fun bs!572546 () Bool)

(assert (= bs!572546 d!1074546))

(assert (=> bs!572546 m!4165611))

(assert (=> bs!572546 m!4165611))

(declare-fun m!4165677 () Bool)

(assert (=> bs!572546 m!4165677))

(declare-fun m!4165679 () Bool)

(assert (=> bs!572546 m!4165679))

(assert (=> bs!572546 m!4165521))

(assert (=> b!3659360 d!1074546))

(declare-fun d!1074548 () Bool)

(assert (=> d!1074548 (not (matchR!5122 (regex!5794 rule!403) lt!1272441))))

(declare-fun lt!1272467 () Unit!55867)

(declare-fun choose!21635 (Regex!10553 List!38734 C!21292) Unit!55867)

(assert (=> d!1074548 (= lt!1272467 (choose!21635 (regex!5794 rule!403) lt!1272441 lt!1272431))))

(declare-fun validRegex!4830 (Regex!10553) Bool)

(assert (=> d!1074548 (validRegex!4830 (regex!5794 rule!403))))

(assert (=> d!1074548 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 rule!403) lt!1272441 lt!1272431) lt!1272467)))

(declare-fun bs!572547 () Bool)

(assert (= bs!572547 d!1074548))

(assert (=> bs!572547 m!4165601))

(declare-fun m!4165687 () Bool)

(assert (=> bs!572547 m!4165687))

(declare-fun m!4165689 () Bool)

(assert (=> bs!572547 m!4165689))

(assert (=> b!3659358 d!1074548))

(declare-fun d!1074554 () Bool)

(assert (=> d!1074554 (not (contains!7653 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272431))))

(declare-fun lt!1272469 () Unit!55867)

(assert (=> d!1074554 (= lt!1272469 (choose!21633 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) rule!403 lt!1272431))))

(assert (=> d!1074554 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074554 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!440 thiss!23823 rules!3307 rules!3307 (rule!8604 (_1!22370 lt!1272444)) rule!403 lt!1272431) lt!1272469)))

(declare-fun bs!572548 () Bool)

(assert (= bs!572548 d!1074554))

(assert (=> bs!572548 m!4165611))

(assert (=> bs!572548 m!4165611))

(declare-fun m!4165691 () Bool)

(assert (=> bs!572548 m!4165691))

(declare-fun m!4165693 () Bool)

(assert (=> bs!572548 m!4165693))

(assert (=> bs!572548 m!4165521))

(assert (=> b!3659378 d!1074554))

(declare-fun d!1074556 () Bool)

(assert (=> d!1074556 (= (inv!52072 (tag!6570 rule!403)) (= (mod (str.len (value!185588 (tag!6570 rule!403))) 2) 0))))

(assert (=> b!3659339 d!1074556))

(declare-fun d!1074558 () Bool)

(declare-fun res!1485453 () Bool)

(declare-fun e!2265896 () Bool)

(assert (=> d!1074558 (=> (not res!1485453) (not e!2265896))))

(declare-fun semiInverseModEq!2468 (Int Int) Bool)

(assert (=> d!1074558 (= res!1485453 (semiInverseModEq!2468 (toChars!7945 (transformation!5794 rule!403)) (toValue!8086 (transformation!5794 rule!403))))))

(assert (=> d!1074558 (= (inv!52076 (transformation!5794 rule!403)) e!2265896)))

(declare-fun b!3659432 () Bool)

(declare-fun equivClasses!2367 (Int Int) Bool)

(assert (=> b!3659432 (= e!2265896 (equivClasses!2367 (toChars!7945 (transformation!5794 rule!403)) (toValue!8086 (transformation!5794 rule!403))))))

(assert (= (and d!1074558 res!1485453) b!3659432))

(declare-fun m!4165695 () Bool)

(assert (=> d!1074558 m!4165695))

(declare-fun m!4165697 () Bool)

(assert (=> b!3659432 m!4165697))

(assert (=> b!3659339 d!1074558))

(declare-fun d!1074560 () Bool)

(assert (=> d!1074560 (= (inv!52072 (tag!6570 (rule!8604 token!511))) (= (mod (str.len (value!185588 (tag!6570 (rule!8604 token!511)))) 2) 0))))

(assert (=> b!3659357 d!1074560))

(declare-fun d!1074562 () Bool)

(declare-fun res!1485454 () Bool)

(declare-fun e!2265897 () Bool)

(assert (=> d!1074562 (=> (not res!1485454) (not e!2265897))))

(assert (=> d!1074562 (= res!1485454 (semiInverseModEq!2468 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (toValue!8086 (transformation!5794 (rule!8604 token!511)))))))

(assert (=> d!1074562 (= (inv!52076 (transformation!5794 (rule!8604 token!511))) e!2265897)))

(declare-fun b!3659433 () Bool)

(assert (=> b!3659433 (= e!2265897 (equivClasses!2367 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (toValue!8086 (transformation!5794 (rule!8604 token!511)))))))

(assert (= (and d!1074562 res!1485454) b!3659433))

(declare-fun m!4165699 () Bool)

(assert (=> d!1074562 m!4165699))

(declare-fun m!4165701 () Bool)

(assert (=> b!3659433 m!4165701))

(assert (=> b!3659357 d!1074562))

(declare-fun d!1074564 () Bool)

(assert (=> d!1074564 (not (contains!7653 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272440))))

(declare-fun lt!1272474 () Unit!55867)

(declare-fun choose!21636 (LexerInterface!5383 List!38735 List!38735 Rule!11388 Rule!11388 C!21292) Unit!55867)

(assert (=> d!1074564 (= lt!1272474 (choose!21636 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8604 (_1!22370 lt!1272444)) lt!1272440))))

(assert (=> d!1074564 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074564 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!322 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8604 (_1!22370 lt!1272444)) lt!1272440) lt!1272474)))

(declare-fun bs!572549 () Bool)

(assert (= bs!572549 d!1074564))

(assert (=> bs!572549 m!4165611))

(assert (=> bs!572549 m!4165611))

(assert (=> bs!572549 m!4165677))

(declare-fun m!4165703 () Bool)

(assert (=> bs!572549 m!4165703))

(assert (=> bs!572549 m!4165521))

(assert (=> b!3659366 d!1074564))

(declare-fun d!1074566 () Bool)

(assert (=> d!1074566 (= (isEmpty!22896 (_2!22370 lt!1272415)) ((_ is Nil!38610) (_2!22370 lt!1272415)))))

(assert (=> b!3659347 d!1074566))

(declare-fun d!1074568 () Bool)

(assert (=> d!1074568 (= (maxPrefixOneRule!2055 thiss!23823 (rule!8604 (_1!22370 lt!1272444)) lt!1272448) (Some!8216 (tuple2!38473 (Token!10955 (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) (seqFromList!4343 lt!1272423)) (rule!8604 (_1!22370 lt!1272444)) (size!29499 lt!1272423) lt!1272423) (_2!22370 lt!1272444))))))

(declare-fun lt!1272477 () Unit!55867)

(declare-fun choose!21637 (LexerInterface!5383 List!38735 List!38734 List!38734 List!38734 Rule!11388) Unit!55867)

(assert (=> d!1074568 (= lt!1272477 (choose!21637 thiss!23823 rules!3307 lt!1272423 lt!1272448 (_2!22370 lt!1272444) (rule!8604 (_1!22370 lt!1272444))))))

(assert (=> d!1074568 (not (isEmpty!22897 rules!3307))))

(assert (=> d!1074568 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1111 thiss!23823 rules!3307 lt!1272423 lt!1272448 (_2!22370 lt!1272444) (rule!8604 (_1!22370 lt!1272444))) lt!1272477)))

(declare-fun bs!572550 () Bool)

(assert (= bs!572550 d!1074568))

(assert (=> bs!572550 m!4165515))

(assert (=> bs!572550 m!4165585))

(assert (=> bs!572550 m!4165591))

(assert (=> bs!572550 m!4165583))

(assert (=> bs!572550 m!4165593))

(declare-fun m!4165705 () Bool)

(assert (=> bs!572550 m!4165705))

(assert (=> bs!572550 m!4165585))

(assert (=> b!3659345 d!1074568))

(declare-fun d!1074570 () Bool)

(declare-fun lt!1272480 () List!38734)

(assert (=> d!1074570 (= (++!9610 lt!1272423 lt!1272480) lt!1272448)))

(declare-fun e!2265900 () List!38734)

(assert (=> d!1074570 (= lt!1272480 e!2265900)))

(declare-fun c!632481 () Bool)

(assert (=> d!1074570 (= c!632481 ((_ is Cons!38610) lt!1272423))))

(assert (=> d!1074570 (>= (size!29499 lt!1272448) (size!29499 lt!1272423))))

(assert (=> d!1074570 (= (getSuffix!1710 lt!1272448 lt!1272423) lt!1272480)))

(declare-fun b!3659438 () Bool)

(declare-fun tail!5666 (List!38734) List!38734)

(assert (=> b!3659438 (= e!2265900 (getSuffix!1710 (tail!5666 lt!1272448) (t!298357 lt!1272423)))))

(declare-fun b!3659439 () Bool)

(assert (=> b!3659439 (= e!2265900 lt!1272448)))

(assert (= (and d!1074570 c!632481) b!3659438))

(assert (= (and d!1074570 (not c!632481)) b!3659439))

(declare-fun m!4165707 () Bool)

(assert (=> d!1074570 m!4165707))

(declare-fun m!4165709 () Bool)

(assert (=> d!1074570 m!4165709))

(assert (=> d!1074570 m!4165583))

(declare-fun m!4165711 () Bool)

(assert (=> b!3659438 m!4165711))

(assert (=> b!3659438 m!4165711))

(declare-fun m!4165713 () Bool)

(assert (=> b!3659438 m!4165713))

(assert (=> b!3659345 d!1074570))

(declare-fun d!1074572 () Bool)

(declare-fun lt!1272483 () Int)

(assert (=> d!1074572 (>= lt!1272483 0)))

(declare-fun e!2265903 () Int)

(assert (=> d!1074572 (= lt!1272483 e!2265903)))

(declare-fun c!632484 () Bool)

(assert (=> d!1074572 (= c!632484 ((_ is Nil!38610) lt!1272423))))

(assert (=> d!1074572 (= (size!29499 lt!1272423) lt!1272483)))

(declare-fun b!3659444 () Bool)

(assert (=> b!3659444 (= e!2265903 0)))

(declare-fun b!3659445 () Bool)

(assert (=> b!3659445 (= e!2265903 (+ 1 (size!29499 (t!298357 lt!1272423))))))

(assert (= (and d!1074572 c!632484) b!3659444))

(assert (= (and d!1074572 (not c!632484)) b!3659445))

(declare-fun m!4165715 () Bool)

(assert (=> b!3659445 m!4165715))

(assert (=> b!3659345 d!1074572))

(declare-fun b!3659464 () Bool)

(declare-fun res!1485475 () Bool)

(declare-fun e!2265913 () Bool)

(assert (=> b!3659464 (=> (not res!1485475) (not e!2265913))))

(declare-fun lt!1272495 () Option!8217)

(assert (=> b!3659464 (= res!1485475 (= (rule!8604 (_1!22370 (get!12724 lt!1272495))) (rule!8604 (_1!22370 lt!1272444))))))

(declare-fun b!3659465 () Bool)

(declare-fun res!1485471 () Bool)

(assert (=> b!3659465 (=> (not res!1485471) (not e!2265913))))

(assert (=> b!3659465 (= res!1485471 (< (size!29499 (_2!22370 (get!12724 lt!1272495))) (size!29499 lt!1272448)))))

(declare-fun b!3659466 () Bool)

(declare-fun res!1485474 () Bool)

(assert (=> b!3659466 (=> (not res!1485474) (not e!2265913))))

(assert (=> b!3659466 (= res!1485474 (= (++!9610 (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272495)))) (_2!22370 (get!12724 lt!1272495))) lt!1272448))))

(declare-fun b!3659467 () Bool)

(declare-fun e!2265915 () Option!8217)

(assert (=> b!3659467 (= e!2265915 None!8216)))

(declare-fun b!3659468 () Bool)

(declare-fun e!2265912 () Bool)

(declare-datatypes ((tuple2!38474 0))(
  ( (tuple2!38475 (_1!22371 List!38734) (_2!22371 List!38734)) )
))
(declare-fun findLongestMatchInner!1064 (Regex!10553 List!38734 Int List!38734 List!38734 Int) tuple2!38474)

(assert (=> b!3659468 (= e!2265912 (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) (_1!22371 (findLongestMatchInner!1064 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) Nil!38610 (size!29499 Nil!38610) lt!1272448 lt!1272448 (size!29499 lt!1272448)))))))

(declare-fun d!1074574 () Bool)

(declare-fun e!2265914 () Bool)

(assert (=> d!1074574 e!2265914))

(declare-fun res!1485472 () Bool)

(assert (=> d!1074574 (=> res!1485472 e!2265914)))

(declare-fun isEmpty!22898 (Option!8217) Bool)

(assert (=> d!1074574 (= res!1485472 (isEmpty!22898 lt!1272495))))

(assert (=> d!1074574 (= lt!1272495 e!2265915)))

(declare-fun c!632487 () Bool)

(declare-fun lt!1272497 () tuple2!38474)

(assert (=> d!1074574 (= c!632487 (isEmpty!22896 (_1!22371 lt!1272497)))))

(declare-fun findLongestMatch!979 (Regex!10553 List!38734) tuple2!38474)

(assert (=> d!1074574 (= lt!1272497 (findLongestMatch!979 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272448))))

(assert (=> d!1074574 (ruleValid!2058 thiss!23823 (rule!8604 (_1!22370 lt!1272444)))))

(assert (=> d!1074574 (= (maxPrefixOneRule!2055 thiss!23823 (rule!8604 (_1!22370 lt!1272444)) lt!1272448) lt!1272495)))

(declare-fun b!3659469 () Bool)

(assert (=> b!3659469 (= e!2265914 e!2265913)))

(declare-fun res!1485469 () Bool)

(assert (=> b!3659469 (=> (not res!1485469) (not e!2265913))))

(assert (=> b!3659469 (= res!1485469 (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272495))))))))

(declare-fun b!3659470 () Bool)

(declare-fun res!1485473 () Bool)

(assert (=> b!3659470 (=> (not res!1485473) (not e!2265913))))

(assert (=> b!3659470 (= res!1485473 (= (value!185589 (_1!22370 (get!12724 lt!1272495))) (apply!9296 (transformation!5794 (rule!8604 (_1!22370 (get!12724 lt!1272495)))) (seqFromList!4343 (originalCharacters!6508 (_1!22370 (get!12724 lt!1272495)))))))))

(declare-fun b!3659471 () Bool)

(assert (=> b!3659471 (= e!2265913 (= (size!29497 (_1!22370 (get!12724 lt!1272495))) (size!29499 (originalCharacters!6508 (_1!22370 (get!12724 lt!1272495))))))))

(declare-fun b!3659472 () Bool)

(assert (=> b!3659472 (= e!2265915 (Some!8216 (tuple2!38473 (Token!10955 (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) (seqFromList!4343 (_1!22371 lt!1272497))) (rule!8604 (_1!22370 lt!1272444)) (size!29498 (seqFromList!4343 (_1!22371 lt!1272497))) (_1!22371 lt!1272497)) (_2!22371 lt!1272497))))))

(declare-fun lt!1272494 () Unit!55867)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1037 (Regex!10553 List!38734) Unit!55867)

(assert (=> b!3659472 (= lt!1272494 (longestMatchIsAcceptedByMatchOrIsEmpty!1037 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272448))))

(declare-fun res!1485470 () Bool)

(assert (=> b!3659472 (= res!1485470 (isEmpty!22896 (_1!22371 (findLongestMatchInner!1064 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) Nil!38610 (size!29499 Nil!38610) lt!1272448 lt!1272448 (size!29499 lt!1272448)))))))

(assert (=> b!3659472 (=> res!1485470 e!2265912)))

(assert (=> b!3659472 e!2265912))

(declare-fun lt!1272498 () Unit!55867)

(assert (=> b!3659472 (= lt!1272498 lt!1272494)))

(declare-fun lt!1272496 () Unit!55867)

(assert (=> b!3659472 (= lt!1272496 (lemmaSemiInverse!1543 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) (seqFromList!4343 (_1!22371 lt!1272497))))))

(assert (= (and d!1074574 c!632487) b!3659467))

(assert (= (and d!1074574 (not c!632487)) b!3659472))

(assert (= (and b!3659472 (not res!1485470)) b!3659468))

(assert (= (and d!1074574 (not res!1485472)) b!3659469))

(assert (= (and b!3659469 res!1485469) b!3659466))

(assert (= (and b!3659466 res!1485474) b!3659465))

(assert (= (and b!3659465 res!1485471) b!3659464))

(assert (= (and b!3659464 res!1485475) b!3659470))

(assert (= (and b!3659470 res!1485473) b!3659471))

(declare-fun m!4165717 () Bool)

(assert (=> d!1074574 m!4165717))

(declare-fun m!4165719 () Bool)

(assert (=> d!1074574 m!4165719))

(declare-fun m!4165721 () Bool)

(assert (=> d!1074574 m!4165721))

(declare-fun m!4165723 () Bool)

(assert (=> d!1074574 m!4165723))

(declare-fun m!4165725 () Bool)

(assert (=> b!3659469 m!4165725))

(declare-fun m!4165727 () Bool)

(assert (=> b!3659469 m!4165727))

(assert (=> b!3659469 m!4165727))

(declare-fun m!4165729 () Bool)

(assert (=> b!3659469 m!4165729))

(assert (=> b!3659469 m!4165729))

(declare-fun m!4165731 () Bool)

(assert (=> b!3659469 m!4165731))

(assert (=> b!3659471 m!4165725))

(declare-fun m!4165733 () Bool)

(assert (=> b!3659471 m!4165733))

(assert (=> b!3659465 m!4165725))

(declare-fun m!4165735 () Bool)

(assert (=> b!3659465 m!4165735))

(assert (=> b!3659465 m!4165709))

(declare-fun m!4165737 () Bool)

(assert (=> b!3659472 m!4165737))

(assert (=> b!3659472 m!4165709))

(declare-fun m!4165739 () Bool)

(assert (=> b!3659472 m!4165739))

(assert (=> b!3659472 m!4165709))

(declare-fun m!4165741 () Bool)

(assert (=> b!3659472 m!4165741))

(declare-fun m!4165743 () Bool)

(assert (=> b!3659472 m!4165743))

(assert (=> b!3659472 m!4165741))

(declare-fun m!4165745 () Bool)

(assert (=> b!3659472 m!4165745))

(assert (=> b!3659472 m!4165741))

(declare-fun m!4165747 () Bool)

(assert (=> b!3659472 m!4165747))

(assert (=> b!3659472 m!4165741))

(assert (=> b!3659472 m!4165737))

(declare-fun m!4165749 () Bool)

(assert (=> b!3659472 m!4165749))

(declare-fun m!4165751 () Bool)

(assert (=> b!3659472 m!4165751))

(assert (=> b!3659466 m!4165725))

(assert (=> b!3659466 m!4165727))

(assert (=> b!3659466 m!4165727))

(assert (=> b!3659466 m!4165729))

(assert (=> b!3659466 m!4165729))

(declare-fun m!4165753 () Bool)

(assert (=> b!3659466 m!4165753))

(assert (=> b!3659468 m!4165737))

(assert (=> b!3659468 m!4165709))

(assert (=> b!3659468 m!4165737))

(assert (=> b!3659468 m!4165709))

(assert (=> b!3659468 m!4165739))

(declare-fun m!4165755 () Bool)

(assert (=> b!3659468 m!4165755))

(assert (=> b!3659464 m!4165725))

(assert (=> b!3659470 m!4165725))

(declare-fun m!4165757 () Bool)

(assert (=> b!3659470 m!4165757))

(assert (=> b!3659470 m!4165757))

(declare-fun m!4165759 () Bool)

(assert (=> b!3659470 m!4165759))

(assert (=> b!3659345 d!1074574))

(declare-fun d!1074576 () Bool)

(declare-fun fromListB!2005 (List!38734) BalanceConc!23224)

(assert (=> d!1074576 (= (seqFromList!4343 lt!1272423) (fromListB!2005 lt!1272423))))

(declare-fun bs!572551 () Bool)

(assert (= bs!572551 d!1074576))

(declare-fun m!4165761 () Bool)

(assert (=> bs!572551 m!4165761))

(assert (=> b!3659345 d!1074576))

(declare-fun d!1074578 () Bool)

(assert (=> d!1074578 (= (_2!22370 lt!1272444) lt!1272408)))

(declare-fun lt!1272501 () Unit!55867)

(declare-fun choose!21638 (List!38734 List!38734 List!38734 List!38734 List!38734) Unit!55867)

(assert (=> d!1074578 (= lt!1272501 (choose!21638 lt!1272423 (_2!22370 lt!1272444) lt!1272423 lt!1272408 lt!1272448))))

(assert (=> d!1074578 (isPrefix!3157 lt!1272423 lt!1272448)))

(assert (=> d!1074578 (= (lemmaSamePrefixThenSameSuffix!1484 lt!1272423 (_2!22370 lt!1272444) lt!1272423 lt!1272408 lt!1272448) lt!1272501)))

(declare-fun bs!572552 () Bool)

(assert (= bs!572552 d!1074578))

(declare-fun m!4165763 () Bool)

(assert (=> bs!572552 m!4165763))

(assert (=> bs!572552 m!4165545))

(assert (=> b!3659345 d!1074578))

(declare-fun d!1074580 () Bool)

(declare-fun dynLambda!16860 (Int BalanceConc!23224) TokenValue!6024)

(assert (=> d!1074580 (= (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) (seqFromList!4343 lt!1272423)) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (seqFromList!4343 lt!1272423)))))

(declare-fun b_lambda!108531 () Bool)

(assert (=> (not b_lambda!108531) (not d!1074580)))

(declare-fun t!298360 () Bool)

(declare-fun tb!211381 () Bool)

(assert (=> (and b!3659336 (= (toValue!8086 (transformation!5794 anOtherTypeRule!33)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298360) tb!211381))

(declare-fun result!257362 () Bool)

(assert (=> tb!211381 (= result!257362 (inv!21 (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (seqFromList!4343 lt!1272423))))))

(declare-fun m!4165765 () Bool)

(assert (=> tb!211381 m!4165765))

(assert (=> d!1074580 t!298360))

(declare-fun b_and!271459 () Bool)

(assert (= b_and!271443 (and (=> t!298360 result!257362) b_and!271459)))

(declare-fun t!298362 () Bool)

(declare-fun tb!211383 () Bool)

(assert (=> (and b!3659371 (= (toValue!8086 (transformation!5794 (h!44031 rules!3307))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298362) tb!211383))

(declare-fun result!257366 () Bool)

(assert (= result!257366 result!257362))

(assert (=> d!1074580 t!298362))

(declare-fun b_and!271461 () Bool)

(assert (= b_and!271447 (and (=> t!298362 result!257366) b_and!271461)))

(declare-fun tb!211385 () Bool)

(declare-fun t!298364 () Bool)

(assert (=> (and b!3659361 (= (toValue!8086 (transformation!5794 rule!403)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298364) tb!211385))

(declare-fun result!257368 () Bool)

(assert (= result!257368 result!257362))

(assert (=> d!1074580 t!298364))

(declare-fun b_and!271463 () Bool)

(assert (= b_and!271451 (and (=> t!298364 result!257368) b_and!271463)))

(declare-fun tb!211387 () Bool)

(declare-fun t!298366 () Bool)

(assert (=> (and b!3659331 (= (toValue!8086 (transformation!5794 (rule!8604 token!511))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298366) tb!211387))

(declare-fun result!257370 () Bool)

(assert (= result!257370 result!257362))

(assert (=> d!1074580 t!298366))

(declare-fun b_and!271465 () Bool)

(assert (= b_and!271455 (and (=> t!298366 result!257370) b_and!271465)))

(assert (=> d!1074580 m!4165585))

(declare-fun m!4165767 () Bool)

(assert (=> d!1074580 m!4165767))

(assert (=> b!3659345 d!1074580))

(declare-fun b!3659503 () Bool)

(declare-fun e!2265938 () Bool)

(assert (=> b!3659503 (= e!2265938 (not (= (head!7820 (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))) (c!632456 (regex!5794 lt!1272425)))))))

(declare-fun b!3659504 () Bool)

(declare-fun e!2265935 () Bool)

(assert (=> b!3659504 (= e!2265935 e!2265938)))

(declare-fun res!1485498 () Bool)

(assert (=> b!3659504 (=> res!1485498 e!2265938)))

(declare-fun call!264685 () Bool)

(assert (=> b!3659504 (= res!1485498 call!264685)))

(declare-fun b!3659505 () Bool)

(declare-fun e!2265937 () Bool)

(declare-fun e!2265934 () Bool)

(assert (=> b!3659505 (= e!2265937 e!2265934)))

(declare-fun c!632496 () Bool)

(assert (=> b!3659505 (= c!632496 ((_ is EmptyLang!10553) (regex!5794 lt!1272425)))))

(declare-fun b!3659506 () Bool)

(declare-fun res!1485494 () Bool)

(declare-fun e!2265933 () Bool)

(assert (=> b!3659506 (=> res!1485494 e!2265933)))

(assert (=> b!3659506 (= res!1485494 (not ((_ is ElementMatch!10553) (regex!5794 lt!1272425))))))

(assert (=> b!3659506 (= e!2265934 e!2265933)))

(declare-fun b!3659507 () Bool)

(declare-fun lt!1272504 () Bool)

(assert (=> b!3659507 (= e!2265937 (= lt!1272504 call!264685))))

(declare-fun d!1074582 () Bool)

(assert (=> d!1074582 e!2265937))

(declare-fun c!632495 () Bool)

(assert (=> d!1074582 (= c!632495 ((_ is EmptyExpr!10553) (regex!5794 lt!1272425)))))

(declare-fun e!2265936 () Bool)

(assert (=> d!1074582 (= lt!1272504 e!2265936)))

(declare-fun c!632494 () Bool)

(assert (=> d!1074582 (= c!632494 (isEmpty!22896 (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))))))

(assert (=> d!1074582 (validRegex!4830 (regex!5794 lt!1272425))))

(assert (=> d!1074582 (= (matchR!5122 (regex!5794 lt!1272425) (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))) lt!1272504)))

(declare-fun b!3659508 () Bool)

(declare-fun res!1485495 () Bool)

(assert (=> b!3659508 (=> res!1485495 e!2265938)))

(assert (=> b!3659508 (= res!1485495 (not (isEmpty!22896 (tail!5666 (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))))))))

(declare-fun b!3659509 () Bool)

(declare-fun res!1485496 () Bool)

(declare-fun e!2265939 () Bool)

(assert (=> b!3659509 (=> (not res!1485496) (not e!2265939))))

(assert (=> b!3659509 (= res!1485496 (not call!264685))))

(declare-fun b!3659510 () Bool)

(assert (=> b!3659510 (= e!2265939 (= (head!7820 (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))) (c!632456 (regex!5794 lt!1272425))))))

(declare-fun b!3659511 () Bool)

(declare-fun nullable!3669 (Regex!10553) Bool)

(assert (=> b!3659511 (= e!2265936 (nullable!3669 (regex!5794 lt!1272425)))))

(declare-fun b!3659512 () Bool)

(assert (=> b!3659512 (= e!2265933 e!2265935)))

(declare-fun res!1485499 () Bool)

(assert (=> b!3659512 (=> (not res!1485499) (not e!2265935))))

(assert (=> b!3659512 (= res!1485499 (not lt!1272504))))

(declare-fun b!3659513 () Bool)

(declare-fun derivativeStep!3217 (Regex!10553 C!21292) Regex!10553)

(assert (=> b!3659513 (= e!2265936 (matchR!5122 (derivativeStep!3217 (regex!5794 lt!1272425) (head!7820 (list!14320 (charsOf!3808 (_1!22370 lt!1272444))))) (tail!5666 (list!14320 (charsOf!3808 (_1!22370 lt!1272444))))))))

(declare-fun b!3659514 () Bool)

(declare-fun res!1485493 () Bool)

(assert (=> b!3659514 (=> (not res!1485493) (not e!2265939))))

(assert (=> b!3659514 (= res!1485493 (isEmpty!22896 (tail!5666 (list!14320 (charsOf!3808 (_1!22370 lt!1272444))))))))

(declare-fun bm!264680 () Bool)

(assert (=> bm!264680 (= call!264685 (isEmpty!22896 (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))))))

(declare-fun b!3659515 () Bool)

(assert (=> b!3659515 (= e!2265934 (not lt!1272504))))

(declare-fun b!3659516 () Bool)

(declare-fun res!1485492 () Bool)

(assert (=> b!3659516 (=> res!1485492 e!2265933)))

(assert (=> b!3659516 (= res!1485492 e!2265939)))

(declare-fun res!1485497 () Bool)

(assert (=> b!3659516 (=> (not res!1485497) (not e!2265939))))

(assert (=> b!3659516 (= res!1485497 lt!1272504)))

(assert (= (and d!1074582 c!632494) b!3659511))

(assert (= (and d!1074582 (not c!632494)) b!3659513))

(assert (= (and d!1074582 c!632495) b!3659507))

(assert (= (and d!1074582 (not c!632495)) b!3659505))

(assert (= (and b!3659505 c!632496) b!3659515))

(assert (= (and b!3659505 (not c!632496)) b!3659506))

(assert (= (and b!3659506 (not res!1485494)) b!3659516))

(assert (= (and b!3659516 res!1485497) b!3659509))

(assert (= (and b!3659509 res!1485496) b!3659514))

(assert (= (and b!3659514 res!1485493) b!3659510))

(assert (= (and b!3659516 (not res!1485492)) b!3659512))

(assert (= (and b!3659512 res!1485499) b!3659504))

(assert (= (and b!3659504 (not res!1485498)) b!3659508))

(assert (= (and b!3659508 (not res!1485495)) b!3659503))

(assert (= (or b!3659507 b!3659504 b!3659509) bm!264680))

(assert (=> b!3659513 m!4165573))

(declare-fun m!4165769 () Bool)

(assert (=> b!3659513 m!4165769))

(assert (=> b!3659513 m!4165769))

(declare-fun m!4165771 () Bool)

(assert (=> b!3659513 m!4165771))

(assert (=> b!3659513 m!4165573))

(declare-fun m!4165773 () Bool)

(assert (=> b!3659513 m!4165773))

(assert (=> b!3659513 m!4165771))

(assert (=> b!3659513 m!4165773))

(declare-fun m!4165775 () Bool)

(assert (=> b!3659513 m!4165775))

(assert (=> bm!264680 m!4165573))

(declare-fun m!4165777 () Bool)

(assert (=> bm!264680 m!4165777))

(assert (=> b!3659510 m!4165573))

(assert (=> b!3659510 m!4165769))

(assert (=> b!3659514 m!4165573))

(assert (=> b!3659514 m!4165773))

(assert (=> b!3659514 m!4165773))

(declare-fun m!4165779 () Bool)

(assert (=> b!3659514 m!4165779))

(assert (=> d!1074582 m!4165573))

(assert (=> d!1074582 m!4165777))

(declare-fun m!4165781 () Bool)

(assert (=> d!1074582 m!4165781))

(declare-fun m!4165783 () Bool)

(assert (=> b!3659511 m!4165783))

(assert (=> b!3659503 m!4165573))

(assert (=> b!3659503 m!4165769))

(assert (=> b!3659508 m!4165573))

(assert (=> b!3659508 m!4165773))

(assert (=> b!3659508 m!4165773))

(assert (=> b!3659508 m!4165779))

(assert (=> b!3659344 d!1074582))

(declare-fun d!1074584 () Bool)

(declare-fun list!14321 (Conc!11805) List!38734)

(assert (=> d!1074584 (= (list!14320 (charsOf!3808 (_1!22370 lt!1272444))) (list!14321 (c!632457 (charsOf!3808 (_1!22370 lt!1272444)))))))

(declare-fun bs!572553 () Bool)

(assert (= bs!572553 d!1074584))

(declare-fun m!4165785 () Bool)

(assert (=> bs!572553 m!4165785))

(assert (=> b!3659344 d!1074584))

(declare-fun d!1074586 () Bool)

(declare-fun lt!1272507 () BalanceConc!23224)

(assert (=> d!1074586 (= (list!14320 lt!1272507) (originalCharacters!6508 (_1!22370 lt!1272444)))))

(declare-fun dynLambda!16861 (Int TokenValue!6024) BalanceConc!23224)

(assert (=> d!1074586 (= lt!1272507 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (value!185589 (_1!22370 lt!1272444))))))

(assert (=> d!1074586 (= (charsOf!3808 (_1!22370 lt!1272444)) lt!1272507)))

(declare-fun b_lambda!108533 () Bool)

(assert (=> (not b_lambda!108533) (not d!1074586)))

(declare-fun t!298368 () Bool)

(declare-fun tb!211389 () Bool)

(assert (=> (and b!3659336 (= (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298368) tb!211389))

(declare-fun b!3659521 () Bool)

(declare-fun e!2265942 () Bool)

(declare-fun tp!1114879 () Bool)

(declare-fun inv!52079 (Conc!11805) Bool)

(assert (=> b!3659521 (= e!2265942 (and (inv!52079 (c!632457 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (value!185589 (_1!22370 lt!1272444))))) tp!1114879))))

(declare-fun result!257372 () Bool)

(declare-fun inv!52080 (BalanceConc!23224) Bool)

(assert (=> tb!211389 (= result!257372 (and (inv!52080 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (value!185589 (_1!22370 lt!1272444)))) e!2265942))))

(assert (= tb!211389 b!3659521))

(declare-fun m!4165787 () Bool)

(assert (=> b!3659521 m!4165787))

(declare-fun m!4165789 () Bool)

(assert (=> tb!211389 m!4165789))

(assert (=> d!1074586 t!298368))

(declare-fun b_and!271467 () Bool)

(assert (= b_and!271445 (and (=> t!298368 result!257372) b_and!271467)))

(declare-fun t!298370 () Bool)

(declare-fun tb!211391 () Bool)

(assert (=> (and b!3659371 (= (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298370) tb!211391))

(declare-fun result!257376 () Bool)

(assert (= result!257376 result!257372))

(assert (=> d!1074586 t!298370))

(declare-fun b_and!271469 () Bool)

(assert (= b_and!271449 (and (=> t!298370 result!257376) b_and!271469)))

(declare-fun tb!211393 () Bool)

(declare-fun t!298372 () Bool)

(assert (=> (and b!3659361 (= (toChars!7945 (transformation!5794 rule!403)) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298372) tb!211393))

(declare-fun result!257378 () Bool)

(assert (= result!257378 result!257372))

(assert (=> d!1074586 t!298372))

(declare-fun b_and!271471 () Bool)

(assert (= b_and!271453 (and (=> t!298372 result!257378) b_and!271471)))

(declare-fun tb!211395 () Bool)

(declare-fun t!298374 () Bool)

(assert (=> (and b!3659331 (= (toChars!7945 (transformation!5794 (rule!8604 token!511))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298374) tb!211395))

(declare-fun result!257380 () Bool)

(assert (= result!257380 result!257372))

(assert (=> d!1074586 t!298374))

(declare-fun b_and!271473 () Bool)

(assert (= b_and!271457 (and (=> t!298374 result!257380) b_and!271473)))

(declare-fun m!4165791 () Bool)

(assert (=> d!1074586 m!4165791))

(declare-fun m!4165793 () Bool)

(assert (=> d!1074586 m!4165793))

(assert (=> b!3659344 d!1074586))

(declare-fun d!1074588 () Bool)

(assert (=> d!1074588 (= (get!12723 lt!1272432) (v!38099 lt!1272432))))

(assert (=> b!3659344 d!1074588))

(declare-fun d!1074590 () Bool)

(assert (=> d!1074590 (= (isDefined!6449 lt!1272418) (not (isEmpty!22898 lt!1272418)))))

(declare-fun bs!572554 () Bool)

(assert (= bs!572554 d!1074590))

(declare-fun m!4165795 () Bool)

(assert (=> bs!572554 m!4165795))

(assert (=> b!3659363 d!1074590))

(declare-fun b!3659540 () Bool)

(declare-fun res!1485518 () Bool)

(declare-fun e!2265950 () Bool)

(assert (=> b!3659540 (=> (not res!1485518) (not e!2265950))))

(declare-fun lt!1272521 () Option!8217)

(assert (=> b!3659540 (= res!1485518 (= (value!185589 (_1!22370 (get!12724 lt!1272521))) (apply!9296 (transformation!5794 (rule!8604 (_1!22370 (get!12724 lt!1272521)))) (seqFromList!4343 (originalCharacters!6508 (_1!22370 (get!12724 lt!1272521)))))))))

(declare-fun d!1074592 () Bool)

(declare-fun e!2265951 () Bool)

(assert (=> d!1074592 e!2265951))

(declare-fun res!1485514 () Bool)

(assert (=> d!1074592 (=> res!1485514 e!2265951)))

(assert (=> d!1074592 (= res!1485514 (isEmpty!22898 lt!1272521))))

(declare-fun e!2265949 () Option!8217)

(assert (=> d!1074592 (= lt!1272521 e!2265949)))

(declare-fun c!632499 () Bool)

(assert (=> d!1074592 (= c!632499 (and ((_ is Cons!38611) rules!3307) ((_ is Nil!38611) (t!298358 rules!3307))))))

(declare-fun lt!1272522 () Unit!55867)

(declare-fun lt!1272518 () Unit!55867)

(assert (=> d!1074592 (= lt!1272522 lt!1272518)))

(assert (=> d!1074592 (isPrefix!3157 lt!1272441 lt!1272441)))

(declare-fun lemmaIsPrefixRefl!1991 (List!38734 List!38734) Unit!55867)

(assert (=> d!1074592 (= lt!1272518 (lemmaIsPrefixRefl!1991 lt!1272441 lt!1272441))))

(declare-fun rulesValidInductive!2054 (LexerInterface!5383 List!38735) Bool)

(assert (=> d!1074592 (rulesValidInductive!2054 thiss!23823 rules!3307)))

(assert (=> d!1074592 (= (maxPrefix!2917 thiss!23823 rules!3307 lt!1272441) lt!1272521)))

(declare-fun b!3659541 () Bool)

(declare-fun call!264688 () Option!8217)

(assert (=> b!3659541 (= e!2265949 call!264688)))

(declare-fun b!3659542 () Bool)

(declare-fun res!1485516 () Bool)

(assert (=> b!3659542 (=> (not res!1485516) (not e!2265950))))

(assert (=> b!3659542 (= res!1485516 (= (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272521)))) (originalCharacters!6508 (_1!22370 (get!12724 lt!1272521)))))))

(declare-fun b!3659543 () Bool)

(assert (=> b!3659543 (= e!2265950 (contains!7654 rules!3307 (rule!8604 (_1!22370 (get!12724 lt!1272521)))))))

(declare-fun b!3659544 () Bool)

(declare-fun res!1485517 () Bool)

(assert (=> b!3659544 (=> (not res!1485517) (not e!2265950))))

(assert (=> b!3659544 (= res!1485517 (< (size!29499 (_2!22370 (get!12724 lt!1272521))) (size!29499 lt!1272441)))))

(declare-fun b!3659545 () Bool)

(declare-fun lt!1272520 () Option!8217)

(declare-fun lt!1272519 () Option!8217)

(assert (=> b!3659545 (= e!2265949 (ite (and ((_ is None!8216) lt!1272520) ((_ is None!8216) lt!1272519)) None!8216 (ite ((_ is None!8216) lt!1272519) lt!1272520 (ite ((_ is None!8216) lt!1272520) lt!1272519 (ite (>= (size!29497 (_1!22370 (v!38100 lt!1272520))) (size!29497 (_1!22370 (v!38100 lt!1272519)))) lt!1272520 lt!1272519)))))))

(assert (=> b!3659545 (= lt!1272520 call!264688)))

(assert (=> b!3659545 (= lt!1272519 (maxPrefix!2917 thiss!23823 (t!298358 rules!3307) lt!1272441))))

(declare-fun bm!264683 () Bool)

(assert (=> bm!264683 (= call!264688 (maxPrefixOneRule!2055 thiss!23823 (h!44031 rules!3307) lt!1272441))))

(declare-fun b!3659546 () Bool)

(declare-fun res!1485520 () Bool)

(assert (=> b!3659546 (=> (not res!1485520) (not e!2265950))))

(assert (=> b!3659546 (= res!1485520 (matchR!5122 (regex!5794 (rule!8604 (_1!22370 (get!12724 lt!1272521)))) (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272521))))))))

(declare-fun b!3659547 () Bool)

(declare-fun res!1485519 () Bool)

(assert (=> b!3659547 (=> (not res!1485519) (not e!2265950))))

(assert (=> b!3659547 (= res!1485519 (= (++!9610 (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272521)))) (_2!22370 (get!12724 lt!1272521))) lt!1272441))))

(declare-fun b!3659548 () Bool)

(assert (=> b!3659548 (= e!2265951 e!2265950)))

(declare-fun res!1485515 () Bool)

(assert (=> b!3659548 (=> (not res!1485515) (not e!2265950))))

(assert (=> b!3659548 (= res!1485515 (isDefined!6449 lt!1272521))))

(assert (= (and d!1074592 c!632499) b!3659541))

(assert (= (and d!1074592 (not c!632499)) b!3659545))

(assert (= (or b!3659541 b!3659545) bm!264683))

(assert (= (and d!1074592 (not res!1485514)) b!3659548))

(assert (= (and b!3659548 res!1485515) b!3659542))

(assert (= (and b!3659542 res!1485516) b!3659544))

(assert (= (and b!3659544 res!1485517) b!3659547))

(assert (= (and b!3659547 res!1485519) b!3659540))

(assert (= (and b!3659540 res!1485518) b!3659546))

(assert (= (and b!3659546 res!1485520) b!3659543))

(declare-fun m!4165797 () Bool)

(assert (=> b!3659547 m!4165797))

(declare-fun m!4165799 () Bool)

(assert (=> b!3659547 m!4165799))

(assert (=> b!3659547 m!4165799))

(declare-fun m!4165801 () Bool)

(assert (=> b!3659547 m!4165801))

(assert (=> b!3659547 m!4165801))

(declare-fun m!4165803 () Bool)

(assert (=> b!3659547 m!4165803))

(assert (=> b!3659546 m!4165797))

(assert (=> b!3659546 m!4165799))

(assert (=> b!3659546 m!4165799))

(assert (=> b!3659546 m!4165801))

(assert (=> b!3659546 m!4165801))

(declare-fun m!4165805 () Bool)

(assert (=> b!3659546 m!4165805))

(assert (=> b!3659543 m!4165797))

(declare-fun m!4165807 () Bool)

(assert (=> b!3659543 m!4165807))

(declare-fun m!4165809 () Bool)

(assert (=> bm!264683 m!4165809))

(declare-fun m!4165811 () Bool)

(assert (=> b!3659548 m!4165811))

(assert (=> b!3659542 m!4165797))

(assert (=> b!3659542 m!4165799))

(assert (=> b!3659542 m!4165799))

(assert (=> b!3659542 m!4165801))

(declare-fun m!4165813 () Bool)

(assert (=> d!1074592 m!4165813))

(assert (=> d!1074592 m!4165627))

(declare-fun m!4165815 () Bool)

(assert (=> d!1074592 m!4165815))

(declare-fun m!4165817 () Bool)

(assert (=> d!1074592 m!4165817))

(assert (=> b!3659544 m!4165797))

(declare-fun m!4165819 () Bool)

(assert (=> b!3659544 m!4165819))

(declare-fun m!4165821 () Bool)

(assert (=> b!3659544 m!4165821))

(assert (=> b!3659540 m!4165797))

(declare-fun m!4165823 () Bool)

(assert (=> b!3659540 m!4165823))

(assert (=> b!3659540 m!4165823))

(declare-fun m!4165825 () Bool)

(assert (=> b!3659540 m!4165825))

(declare-fun m!4165827 () Bool)

(assert (=> b!3659545 m!4165827))

(assert (=> b!3659363 d!1074592))

(declare-fun d!1074594 () Bool)

(assert (=> d!1074594 (= (list!14320 lt!1272427) (list!14321 (c!632457 lt!1272427)))))

(declare-fun bs!572555 () Bool)

(assert (= bs!572555 d!1074594))

(declare-fun m!4165829 () Bool)

(assert (=> bs!572555 m!4165829))

(assert (=> b!3659363 d!1074594))

(declare-fun d!1074596 () Bool)

(declare-fun lt!1272523 () BalanceConc!23224)

(assert (=> d!1074596 (= (list!14320 lt!1272523) (originalCharacters!6508 token!511))))

(assert (=> d!1074596 (= lt!1272523 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (value!185589 token!511)))))

(assert (=> d!1074596 (= (charsOf!3808 token!511) lt!1272523)))

(declare-fun b_lambda!108535 () Bool)

(assert (=> (not b_lambda!108535) (not d!1074596)))

(declare-fun tb!211397 () Bool)

(declare-fun t!298376 () Bool)

(assert (=> (and b!3659336 (= (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toChars!7945 (transformation!5794 (rule!8604 token!511)))) t!298376) tb!211397))

(declare-fun b!3659549 () Bool)

(declare-fun e!2265952 () Bool)

(declare-fun tp!1114880 () Bool)

(assert (=> b!3659549 (= e!2265952 (and (inv!52079 (c!632457 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (value!185589 token!511)))) tp!1114880))))

(declare-fun result!257382 () Bool)

(assert (=> tb!211397 (= result!257382 (and (inv!52080 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (value!185589 token!511))) e!2265952))))

(assert (= tb!211397 b!3659549))

(declare-fun m!4165831 () Bool)

(assert (=> b!3659549 m!4165831))

(declare-fun m!4165833 () Bool)

(assert (=> tb!211397 m!4165833))

(assert (=> d!1074596 t!298376))

(declare-fun b_and!271475 () Bool)

(assert (= b_and!271467 (and (=> t!298376 result!257382) b_and!271475)))

(declare-fun t!298378 () Bool)

(declare-fun tb!211399 () Bool)

(assert (=> (and b!3659371 (= (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toChars!7945 (transformation!5794 (rule!8604 token!511)))) t!298378) tb!211399))

(declare-fun result!257384 () Bool)

(assert (= result!257384 result!257382))

(assert (=> d!1074596 t!298378))

(declare-fun b_and!271477 () Bool)

(assert (= b_and!271469 (and (=> t!298378 result!257384) b_and!271477)))

(declare-fun t!298380 () Bool)

(declare-fun tb!211401 () Bool)

(assert (=> (and b!3659361 (= (toChars!7945 (transformation!5794 rule!403)) (toChars!7945 (transformation!5794 (rule!8604 token!511)))) t!298380) tb!211401))

(declare-fun result!257386 () Bool)

(assert (= result!257386 result!257382))

(assert (=> d!1074596 t!298380))

(declare-fun b_and!271479 () Bool)

(assert (= b_and!271471 (and (=> t!298380 result!257386) b_and!271479)))

(declare-fun t!298382 () Bool)

(declare-fun tb!211403 () Bool)

(assert (=> (and b!3659331 (= (toChars!7945 (transformation!5794 (rule!8604 token!511))) (toChars!7945 (transformation!5794 (rule!8604 token!511)))) t!298382) tb!211403))

(declare-fun result!257388 () Bool)

(assert (= result!257388 result!257382))

(assert (=> d!1074596 t!298382))

(declare-fun b_and!271481 () Bool)

(assert (= b_and!271473 (and (=> t!298382 result!257388) b_and!271481)))

(declare-fun m!4165835 () Bool)

(assert (=> d!1074596 m!4165835))

(declare-fun m!4165837 () Bool)

(assert (=> d!1074596 m!4165837))

(assert (=> b!3659363 d!1074596))

(assert (=> b!3659362 d!1074586))

(declare-fun b!3659561 () Bool)

(declare-fun e!2265961 () Bool)

(assert (=> b!3659561 (= e!2265961 (>= (size!29499 lt!1272448) (size!29499 lt!1272441)))))

(declare-fun b!3659560 () Bool)

(declare-fun e!2265959 () Bool)

(assert (=> b!3659560 (= e!2265959 (isPrefix!3157 (tail!5666 lt!1272441) (tail!5666 lt!1272448)))))

(declare-fun d!1074598 () Bool)

(assert (=> d!1074598 e!2265961))

(declare-fun res!1485529 () Bool)

(assert (=> d!1074598 (=> res!1485529 e!2265961)))

(declare-fun lt!1272526 () Bool)

(assert (=> d!1074598 (= res!1485529 (not lt!1272526))))

(declare-fun e!2265960 () Bool)

(assert (=> d!1074598 (= lt!1272526 e!2265960)))

(declare-fun res!1485531 () Bool)

(assert (=> d!1074598 (=> res!1485531 e!2265960)))

(assert (=> d!1074598 (= res!1485531 ((_ is Nil!38610) lt!1272441))))

(assert (=> d!1074598 (= (isPrefix!3157 lt!1272441 lt!1272448) lt!1272526)))

(declare-fun b!3659558 () Bool)

(assert (=> b!3659558 (= e!2265960 e!2265959)))

(declare-fun res!1485532 () Bool)

(assert (=> b!3659558 (=> (not res!1485532) (not e!2265959))))

(assert (=> b!3659558 (= res!1485532 (not ((_ is Nil!38610) lt!1272448)))))

(declare-fun b!3659559 () Bool)

(declare-fun res!1485530 () Bool)

(assert (=> b!3659559 (=> (not res!1485530) (not e!2265959))))

(assert (=> b!3659559 (= res!1485530 (= (head!7820 lt!1272441) (head!7820 lt!1272448)))))

(assert (= (and d!1074598 (not res!1485531)) b!3659558))

(assert (= (and b!3659558 res!1485532) b!3659559))

(assert (= (and b!3659559 res!1485530) b!3659560))

(assert (= (and d!1074598 (not res!1485529)) b!3659561))

(assert (=> b!3659561 m!4165709))

(assert (=> b!3659561 m!4165821))

(declare-fun m!4165839 () Bool)

(assert (=> b!3659560 m!4165839))

(assert (=> b!3659560 m!4165711))

(assert (=> b!3659560 m!4165839))

(assert (=> b!3659560 m!4165711))

(declare-fun m!4165841 () Bool)

(assert (=> b!3659560 m!4165841))

(declare-fun m!4165843 () Bool)

(assert (=> b!3659559 m!4165843))

(declare-fun m!4165845 () Bool)

(assert (=> b!3659559 m!4165845))

(assert (=> b!3659362 d!1074598))

(declare-fun d!1074600 () Bool)

(declare-fun e!2265964 () Bool)

(assert (=> d!1074600 e!2265964))

(declare-fun res!1485537 () Bool)

(assert (=> d!1074600 (=> (not res!1485537) (not e!2265964))))

(assert (=> d!1074600 (= res!1485537 (isDefined!6448 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 (_1!22370 lt!1272444))))))))

(declare-fun lt!1272529 () Unit!55867)

(declare-fun choose!21642 (LexerInterface!5383 List!38735 List!38734 Token!10954) Unit!55867)

(assert (=> d!1074600 (= lt!1272529 (choose!21642 thiss!23823 rules!3307 lt!1272448 (_1!22370 lt!1272444)))))

(assert (=> d!1074600 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074600 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1398 thiss!23823 rules!3307 lt!1272448 (_1!22370 lt!1272444)) lt!1272529)))

(declare-fun b!3659566 () Bool)

(declare-fun res!1485538 () Bool)

(assert (=> b!3659566 (=> (not res!1485538) (not e!2265964))))

(assert (=> b!3659566 (= res!1485538 (matchR!5122 (regex!5794 (get!12723 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))) (list!14320 (charsOf!3808 (_1!22370 lt!1272444)))))))

(declare-fun b!3659567 () Bool)

(assert (=> b!3659567 (= e!2265964 (= (rule!8604 (_1!22370 lt!1272444)) (get!12723 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))))))

(assert (= (and d!1074600 res!1485537) b!3659566))

(assert (= (and b!3659566 res!1485538) b!3659567))

(assert (=> d!1074600 m!4165551))

(assert (=> d!1074600 m!4165551))

(declare-fun m!4165847 () Bool)

(assert (=> d!1074600 m!4165847))

(declare-fun m!4165849 () Bool)

(assert (=> d!1074600 m!4165849))

(assert (=> d!1074600 m!4165521))

(assert (=> b!3659566 m!4165551))

(declare-fun m!4165851 () Bool)

(assert (=> b!3659566 m!4165851))

(assert (=> b!3659566 m!4165551))

(assert (=> b!3659566 m!4165571))

(assert (=> b!3659566 m!4165573))

(assert (=> b!3659566 m!4165573))

(declare-fun m!4165853 () Bool)

(assert (=> b!3659566 m!4165853))

(assert (=> b!3659566 m!4165571))

(assert (=> b!3659567 m!4165551))

(assert (=> b!3659567 m!4165551))

(assert (=> b!3659567 m!4165851))

(assert (=> b!3659362 d!1074600))

(declare-fun e!2266074 () Bool)

(declare-fun lt!1272618 () Token!10954)

(declare-fun b!3659749 () Bool)

(assert (=> b!3659749 (= e!2266074 (= (rule!8604 lt!1272618) (get!12723 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 lt!1272618))))))))

(declare-fun b!3659751 () Bool)

(declare-fun e!2266075 () Unit!55867)

(declare-fun Unit!55881 () Unit!55867)

(assert (=> b!3659751 (= e!2266075 Unit!55881)))

(declare-fun b!3659748 () Bool)

(declare-fun res!1485617 () Bool)

(assert (=> b!3659748 (=> (not res!1485617) (not e!2266074))))

(assert (=> b!3659748 (= res!1485617 (matchR!5122 (regex!5794 (get!12723 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 lt!1272618))))) (list!14320 (charsOf!3808 lt!1272618))))))

(declare-fun b!3659750 () Bool)

(declare-fun Unit!55882 () Unit!55867)

(assert (=> b!3659750 (= e!2266075 Unit!55882)))

(declare-fun lt!1272617 () List!38734)

(assert (=> b!3659750 (= lt!1272617 (++!9610 lt!1272441 suffix!1395))))

(declare-fun lt!1272619 () Unit!55867)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!555 (LexerInterface!5383 Rule!11388 List!38735 List!38734) Unit!55867)

(assert (=> b!3659750 (= lt!1272619 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!555 thiss!23823 (rule!8604 lt!1272618) rules!3307 lt!1272617))))

(assert (=> b!3659750 (isEmpty!22898 (maxPrefixOneRule!2055 thiss!23823 (rule!8604 lt!1272618) lt!1272617))))

(declare-fun lt!1272620 () Unit!55867)

(assert (=> b!3659750 (= lt!1272620 lt!1272619)))

(declare-fun lt!1272621 () List!38734)

(assert (=> b!3659750 (= lt!1272621 (list!14320 (charsOf!3808 lt!1272618)))))

(declare-fun lt!1272624 () Unit!55867)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!543 (LexerInterface!5383 Rule!11388 List!38734 List!38734) Unit!55867)

(assert (=> b!3659750 (= lt!1272624 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!543 thiss!23823 (rule!8604 lt!1272618) lt!1272621 (++!9610 lt!1272441 suffix!1395)))))

(assert (=> b!3659750 (not (matchR!5122 (regex!5794 (rule!8604 lt!1272618)) lt!1272621))))

(declare-fun lt!1272614 () Unit!55867)

(assert (=> b!3659750 (= lt!1272614 lt!1272624)))

(assert (=> b!3659750 false))

(declare-fun d!1074602 () Bool)

(assert (=> d!1074602 (isDefined!6449 (maxPrefix!2917 thiss!23823 rules!3307 (++!9610 lt!1272441 suffix!1395)))))

(declare-fun lt!1272628 () Unit!55867)

(assert (=> d!1074602 (= lt!1272628 e!2266075)))

(declare-fun c!632546 () Bool)

(assert (=> d!1074602 (= c!632546 (isEmpty!22898 (maxPrefix!2917 thiss!23823 rules!3307 (++!9610 lt!1272441 suffix!1395))))))

(declare-fun lt!1272623 () Unit!55867)

(declare-fun lt!1272629 () Unit!55867)

(assert (=> d!1074602 (= lt!1272623 lt!1272629)))

(assert (=> d!1074602 e!2266074))

(declare-fun res!1485616 () Bool)

(assert (=> d!1074602 (=> (not res!1485616) (not e!2266074))))

(assert (=> d!1074602 (= res!1485616 (isDefined!6448 (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 lt!1272618)))))))

(assert (=> d!1074602 (= lt!1272629 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1398 thiss!23823 rules!3307 lt!1272441 lt!1272618))))

(declare-fun lt!1272615 () Unit!55867)

(declare-fun lt!1272625 () Unit!55867)

(assert (=> d!1074602 (= lt!1272615 lt!1272625)))

(declare-fun lt!1272622 () List!38734)

(assert (=> d!1074602 (isPrefix!3157 lt!1272622 (++!9610 lt!1272441 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!519 (List!38734 List!38734 List!38734) Unit!55867)

(assert (=> d!1074602 (= lt!1272625 (lemmaPrefixStaysPrefixWhenAddingToSuffix!519 lt!1272622 lt!1272441 suffix!1395))))

(assert (=> d!1074602 (= lt!1272622 (list!14320 (charsOf!3808 lt!1272618)))))

(declare-fun lt!1272616 () Unit!55867)

(declare-fun lt!1272613 () Unit!55867)

(assert (=> d!1074602 (= lt!1272616 lt!1272613)))

(declare-fun lt!1272627 () List!38734)

(declare-fun lt!1272626 () List!38734)

(assert (=> d!1074602 (isPrefix!3157 lt!1272627 (++!9610 lt!1272627 lt!1272626))))

(assert (=> d!1074602 (= lt!1272613 (lemmaConcatTwoListThenFirstIsPrefix!2076 lt!1272627 lt!1272626))))

(assert (=> d!1074602 (= lt!1272626 (_2!22370 (get!12724 (maxPrefix!2917 thiss!23823 rules!3307 lt!1272441))))))

(assert (=> d!1074602 (= lt!1272627 (list!14320 (charsOf!3808 lt!1272618)))))

(declare-datatypes ((List!38737 0))(
  ( (Nil!38613) (Cons!38613 (h!44033 Token!10954) (t!298480 List!38737)) )
))
(declare-fun head!7821 (List!38737) Token!10954)

(declare-datatypes ((IArray!23617 0))(
  ( (IArray!23618 (innerList!11866 List!38737)) )
))
(declare-datatypes ((Conc!11806 0))(
  ( (Node!11806 (left!30137 Conc!11806) (right!30467 Conc!11806) (csize!23842 Int) (cheight!12017 Int)) (Leaf!18314 (xs!15008 IArray!23617) (csize!23843 Int)) (Empty!11806) )
))
(declare-datatypes ((BalanceConc!23226 0))(
  ( (BalanceConc!23227 (c!632618 Conc!11806)) )
))
(declare-fun list!14323 (BalanceConc!23226) List!38737)

(declare-datatypes ((tuple2!38476 0))(
  ( (tuple2!38477 (_1!22372 BalanceConc!23226) (_2!22372 BalanceConc!23224)) )
))
(declare-fun lex!2551 (LexerInterface!5383 List!38735 BalanceConc!23224) tuple2!38476)

(assert (=> d!1074602 (= lt!1272618 (head!7821 (list!14323 (_1!22372 (lex!2551 thiss!23823 rules!3307 (seqFromList!4343 lt!1272441))))))))

(assert (=> d!1074602 (not (isEmpty!22897 rules!3307))))

(assert (=> d!1074602 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1061 thiss!23823 rules!3307 lt!1272441 suffix!1395) lt!1272628)))

(assert (= (and d!1074602 res!1485616) b!3659748))

(assert (= (and b!3659748 res!1485617) b!3659749))

(assert (= (and d!1074602 c!632546) b!3659750))

(assert (= (and d!1074602 (not c!632546)) b!3659751))

(declare-fun m!4166021 () Bool)

(assert (=> b!3659749 m!4166021))

(assert (=> b!3659749 m!4166021))

(declare-fun m!4166023 () Bool)

(assert (=> b!3659749 m!4166023))

(assert (=> b!3659748 m!4166021))

(assert (=> b!3659748 m!4166023))

(declare-fun m!4166025 () Bool)

(assert (=> b!3659748 m!4166025))

(declare-fun m!4166027 () Bool)

(assert (=> b!3659748 m!4166027))

(declare-fun m!4166029 () Bool)

(assert (=> b!3659748 m!4166029))

(assert (=> b!3659748 m!4166025))

(assert (=> b!3659748 m!4166029))

(assert (=> b!3659748 m!4166021))

(assert (=> b!3659750 m!4165561))

(declare-fun m!4166031 () Bool)

(assert (=> b!3659750 m!4166031))

(declare-fun m!4166033 () Bool)

(assert (=> b!3659750 m!4166033))

(assert (=> b!3659750 m!4166031))

(declare-fun m!4166035 () Bool)

(assert (=> b!3659750 m!4166035))

(assert (=> b!3659750 m!4166029))

(assert (=> b!3659750 m!4166025))

(declare-fun m!4166037 () Bool)

(assert (=> b!3659750 m!4166037))

(assert (=> b!3659750 m!4166029))

(assert (=> b!3659750 m!4165561))

(declare-fun m!4166039 () Bool)

(assert (=> b!3659750 m!4166039))

(declare-fun m!4166042 () Bool)

(assert (=> d!1074602 m!4166042))

(declare-fun m!4166045 () Bool)

(assert (=> d!1074602 m!4166045))

(assert (=> d!1074602 m!4165561))

(assert (=> d!1074602 m!4165487))

(declare-fun m!4166047 () Bool)

(assert (=> d!1074602 m!4166047))

(declare-fun m!4166049 () Bool)

(assert (=> d!1074602 m!4166049))

(declare-fun m!4166051 () Bool)

(assert (=> d!1074602 m!4166051))

(declare-fun m!4166053 () Bool)

(assert (=> d!1074602 m!4166053))

(assert (=> d!1074602 m!4166047))

(assert (=> d!1074602 m!4166042))

(declare-fun m!4166055 () Bool)

(assert (=> d!1074602 m!4166055))

(declare-fun m!4166057 () Bool)

(assert (=> d!1074602 m!4166057))

(assert (=> d!1074602 m!4165515))

(assert (=> d!1074602 m!4165487))

(declare-fun m!4166059 () Bool)

(assert (=> d!1074602 m!4166059))

(declare-fun m!4166061 () Bool)

(assert (=> d!1074602 m!4166061))

(declare-fun m!4166063 () Bool)

(assert (=> d!1074602 m!4166063))

(assert (=> d!1074602 m!4166021))

(declare-fun m!4166065 () Bool)

(assert (=> d!1074602 m!4166065))

(assert (=> d!1074602 m!4166029))

(assert (=> d!1074602 m!4166025))

(assert (=> d!1074602 m!4166061))

(assert (=> d!1074602 m!4166029))

(assert (=> d!1074602 m!4165561))

(declare-fun m!4166067 () Bool)

(assert (=> d!1074602 m!4166067))

(assert (=> d!1074602 m!4166021))

(declare-fun m!4166069 () Bool)

(assert (=> d!1074602 m!4166069))

(assert (=> d!1074602 m!4165561))

(assert (=> d!1074602 m!4166042))

(declare-fun m!4166071 () Bool)

(assert (=> d!1074602 m!4166071))

(assert (=> d!1074602 m!4166051))

(assert (=> b!3659362 d!1074602))

(declare-fun b!3659768 () Bool)

(declare-fun res!1485622 () Bool)

(declare-fun e!2266084 () Bool)

(assert (=> b!3659768 (=> (not res!1485622) (not e!2266084))))

(declare-fun lt!1272635 () List!38734)

(assert (=> b!3659768 (= res!1485622 (= (size!29499 lt!1272635) (+ (size!29499 lt!1272441) (size!29499 suffix!1395))))))

(declare-fun b!3659766 () Bool)

(declare-fun e!2266083 () List!38734)

(assert (=> b!3659766 (= e!2266083 suffix!1395)))

(declare-fun b!3659767 () Bool)

(assert (=> b!3659767 (= e!2266083 (Cons!38610 (h!44030 lt!1272441) (++!9610 (t!298357 lt!1272441) suffix!1395)))))

(declare-fun b!3659769 () Bool)

(assert (=> b!3659769 (= e!2266084 (or (not (= suffix!1395 Nil!38610)) (= lt!1272635 lt!1272441)))))

(declare-fun d!1074684 () Bool)

(assert (=> d!1074684 e!2266084))

(declare-fun res!1485623 () Bool)

(assert (=> d!1074684 (=> (not res!1485623) (not e!2266084))))

(assert (=> d!1074684 (= res!1485623 (= (content!5577 lt!1272635) ((_ map or) (content!5577 lt!1272441) (content!5577 suffix!1395))))))

(assert (=> d!1074684 (= lt!1272635 e!2266083)))

(declare-fun c!632552 () Bool)

(assert (=> d!1074684 (= c!632552 ((_ is Nil!38610) lt!1272441))))

(assert (=> d!1074684 (= (++!9610 lt!1272441 suffix!1395) lt!1272635)))

(assert (= (and d!1074684 c!632552) b!3659766))

(assert (= (and d!1074684 (not c!632552)) b!3659767))

(assert (= (and d!1074684 res!1485623) b!3659768))

(assert (= (and b!3659768 res!1485622) b!3659769))

(declare-fun m!4166073 () Bool)

(assert (=> b!3659768 m!4166073))

(assert (=> b!3659768 m!4165821))

(declare-fun m!4166075 () Bool)

(assert (=> b!3659768 m!4166075))

(declare-fun m!4166077 () Bool)

(assert (=> b!3659767 m!4166077))

(declare-fun m!4166079 () Bool)

(assert (=> d!1074684 m!4166079))

(declare-fun m!4166081 () Bool)

(assert (=> d!1074684 m!4166081))

(declare-fun m!4166083 () Bool)

(assert (=> d!1074684 m!4166083))

(assert (=> b!3659362 d!1074684))

(declare-fun d!1074686 () Bool)

(assert (=> d!1074686 (= (get!12724 lt!1272439) (v!38100 lt!1272439))))

(assert (=> b!3659362 d!1074686))

(declare-fun b!3659773 () Bool)

(declare-fun e!2266087 () Bool)

(assert (=> b!3659773 (= e!2266087 (>= (size!29499 (++!9610 lt!1272423 (_2!22370 lt!1272444))) (size!29499 lt!1272423)))))

(declare-fun b!3659772 () Bool)

(declare-fun e!2266085 () Bool)

(assert (=> b!3659772 (= e!2266085 (isPrefix!3157 (tail!5666 lt!1272423) (tail!5666 (++!9610 lt!1272423 (_2!22370 lt!1272444)))))))

(declare-fun d!1074688 () Bool)

(assert (=> d!1074688 e!2266087))

(declare-fun res!1485624 () Bool)

(assert (=> d!1074688 (=> res!1485624 e!2266087)))

(declare-fun lt!1272636 () Bool)

(assert (=> d!1074688 (= res!1485624 (not lt!1272636))))

(declare-fun e!2266086 () Bool)

(assert (=> d!1074688 (= lt!1272636 e!2266086)))

(declare-fun res!1485626 () Bool)

(assert (=> d!1074688 (=> res!1485626 e!2266086)))

(assert (=> d!1074688 (= res!1485626 ((_ is Nil!38610) lt!1272423))))

(assert (=> d!1074688 (= (isPrefix!3157 lt!1272423 (++!9610 lt!1272423 (_2!22370 lt!1272444))) lt!1272636)))

(declare-fun b!3659770 () Bool)

(assert (=> b!3659770 (= e!2266086 e!2266085)))

(declare-fun res!1485627 () Bool)

(assert (=> b!3659770 (=> (not res!1485627) (not e!2266085))))

(assert (=> b!3659770 (= res!1485627 (not ((_ is Nil!38610) (++!9610 lt!1272423 (_2!22370 lt!1272444)))))))

(declare-fun b!3659771 () Bool)

(declare-fun res!1485625 () Bool)

(assert (=> b!3659771 (=> (not res!1485625) (not e!2266085))))

(assert (=> b!3659771 (= res!1485625 (= (head!7820 lt!1272423) (head!7820 (++!9610 lt!1272423 (_2!22370 lt!1272444)))))))

(assert (= (and d!1074688 (not res!1485626)) b!3659770))

(assert (= (and b!3659770 res!1485627) b!3659771))

(assert (= (and b!3659771 res!1485625) b!3659772))

(assert (= (and d!1074688 (not res!1485624)) b!3659773))

(assert (=> b!3659773 m!4165555))

(declare-fun m!4166085 () Bool)

(assert (=> b!3659773 m!4166085))

(assert (=> b!3659773 m!4165583))

(declare-fun m!4166087 () Bool)

(assert (=> b!3659772 m!4166087))

(assert (=> b!3659772 m!4165555))

(declare-fun m!4166089 () Bool)

(assert (=> b!3659772 m!4166089))

(assert (=> b!3659772 m!4166087))

(assert (=> b!3659772 m!4166089))

(declare-fun m!4166091 () Bool)

(assert (=> b!3659772 m!4166091))

(assert (=> b!3659771 m!4165619))

(assert (=> b!3659771 m!4165555))

(declare-fun m!4166093 () Bool)

(assert (=> b!3659771 m!4166093))

(assert (=> b!3659362 d!1074688))

(declare-fun b!3659774 () Bool)

(declare-fun res!1485632 () Bool)

(declare-fun e!2266089 () Bool)

(assert (=> b!3659774 (=> (not res!1485632) (not e!2266089))))

(declare-fun lt!1272640 () Option!8217)

(assert (=> b!3659774 (= res!1485632 (= (value!185589 (_1!22370 (get!12724 lt!1272640))) (apply!9296 (transformation!5794 (rule!8604 (_1!22370 (get!12724 lt!1272640)))) (seqFromList!4343 (originalCharacters!6508 (_1!22370 (get!12724 lt!1272640)))))))))

(declare-fun d!1074690 () Bool)

(declare-fun e!2266090 () Bool)

(assert (=> d!1074690 e!2266090))

(declare-fun res!1485628 () Bool)

(assert (=> d!1074690 (=> res!1485628 e!2266090)))

(assert (=> d!1074690 (= res!1485628 (isEmpty!22898 lt!1272640))))

(declare-fun e!2266088 () Option!8217)

(assert (=> d!1074690 (= lt!1272640 e!2266088)))

(declare-fun c!632553 () Bool)

(assert (=> d!1074690 (= c!632553 (and ((_ is Cons!38611) rules!3307) ((_ is Nil!38611) (t!298358 rules!3307))))))

(declare-fun lt!1272641 () Unit!55867)

(declare-fun lt!1272637 () Unit!55867)

(assert (=> d!1074690 (= lt!1272641 lt!1272637)))

(assert (=> d!1074690 (isPrefix!3157 lt!1272448 lt!1272448)))

(assert (=> d!1074690 (= lt!1272637 (lemmaIsPrefixRefl!1991 lt!1272448 lt!1272448))))

(assert (=> d!1074690 (rulesValidInductive!2054 thiss!23823 rules!3307)))

(assert (=> d!1074690 (= (maxPrefix!2917 thiss!23823 rules!3307 lt!1272448) lt!1272640)))

(declare-fun b!3659775 () Bool)

(declare-fun call!264709 () Option!8217)

(assert (=> b!3659775 (= e!2266088 call!264709)))

(declare-fun b!3659776 () Bool)

(declare-fun res!1485630 () Bool)

(assert (=> b!3659776 (=> (not res!1485630) (not e!2266089))))

(assert (=> b!3659776 (= res!1485630 (= (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272640)))) (originalCharacters!6508 (_1!22370 (get!12724 lt!1272640)))))))

(declare-fun b!3659777 () Bool)

(assert (=> b!3659777 (= e!2266089 (contains!7654 rules!3307 (rule!8604 (_1!22370 (get!12724 lt!1272640)))))))

(declare-fun b!3659778 () Bool)

(declare-fun res!1485631 () Bool)

(assert (=> b!3659778 (=> (not res!1485631) (not e!2266089))))

(assert (=> b!3659778 (= res!1485631 (< (size!29499 (_2!22370 (get!12724 lt!1272640))) (size!29499 lt!1272448)))))

(declare-fun b!3659779 () Bool)

(declare-fun lt!1272639 () Option!8217)

(declare-fun lt!1272638 () Option!8217)

(assert (=> b!3659779 (= e!2266088 (ite (and ((_ is None!8216) lt!1272639) ((_ is None!8216) lt!1272638)) None!8216 (ite ((_ is None!8216) lt!1272638) lt!1272639 (ite ((_ is None!8216) lt!1272639) lt!1272638 (ite (>= (size!29497 (_1!22370 (v!38100 lt!1272639))) (size!29497 (_1!22370 (v!38100 lt!1272638)))) lt!1272639 lt!1272638)))))))

(assert (=> b!3659779 (= lt!1272639 call!264709)))

(assert (=> b!3659779 (= lt!1272638 (maxPrefix!2917 thiss!23823 (t!298358 rules!3307) lt!1272448))))

(declare-fun bm!264704 () Bool)

(assert (=> bm!264704 (= call!264709 (maxPrefixOneRule!2055 thiss!23823 (h!44031 rules!3307) lt!1272448))))

(declare-fun b!3659780 () Bool)

(declare-fun res!1485634 () Bool)

(assert (=> b!3659780 (=> (not res!1485634) (not e!2266089))))

(assert (=> b!3659780 (= res!1485634 (matchR!5122 (regex!5794 (rule!8604 (_1!22370 (get!12724 lt!1272640)))) (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272640))))))))

(declare-fun b!3659781 () Bool)

(declare-fun res!1485633 () Bool)

(assert (=> b!3659781 (=> (not res!1485633) (not e!2266089))))

(assert (=> b!3659781 (= res!1485633 (= (++!9610 (list!14320 (charsOf!3808 (_1!22370 (get!12724 lt!1272640)))) (_2!22370 (get!12724 lt!1272640))) lt!1272448))))

(declare-fun b!3659782 () Bool)

(assert (=> b!3659782 (= e!2266090 e!2266089)))

(declare-fun res!1485629 () Bool)

(assert (=> b!3659782 (=> (not res!1485629) (not e!2266089))))

(assert (=> b!3659782 (= res!1485629 (isDefined!6449 lt!1272640))))

(assert (= (and d!1074690 c!632553) b!3659775))

(assert (= (and d!1074690 (not c!632553)) b!3659779))

(assert (= (or b!3659775 b!3659779) bm!264704))

(assert (= (and d!1074690 (not res!1485628)) b!3659782))

(assert (= (and b!3659782 res!1485629) b!3659776))

(assert (= (and b!3659776 res!1485630) b!3659778))

(assert (= (and b!3659778 res!1485631) b!3659781))

(assert (= (and b!3659781 res!1485633) b!3659774))

(assert (= (and b!3659774 res!1485632) b!3659780))

(assert (= (and b!3659780 res!1485634) b!3659777))

(declare-fun m!4166095 () Bool)

(assert (=> b!3659781 m!4166095))

(declare-fun m!4166097 () Bool)

(assert (=> b!3659781 m!4166097))

(assert (=> b!3659781 m!4166097))

(declare-fun m!4166099 () Bool)

(assert (=> b!3659781 m!4166099))

(assert (=> b!3659781 m!4166099))

(declare-fun m!4166101 () Bool)

(assert (=> b!3659781 m!4166101))

(assert (=> b!3659780 m!4166095))

(assert (=> b!3659780 m!4166097))

(assert (=> b!3659780 m!4166097))

(assert (=> b!3659780 m!4166099))

(assert (=> b!3659780 m!4166099))

(declare-fun m!4166103 () Bool)

(assert (=> b!3659780 m!4166103))

(assert (=> b!3659777 m!4166095))

(declare-fun m!4166105 () Bool)

(assert (=> b!3659777 m!4166105))

(declare-fun m!4166107 () Bool)

(assert (=> bm!264704 m!4166107))

(declare-fun m!4166109 () Bool)

(assert (=> b!3659782 m!4166109))

(assert (=> b!3659776 m!4166095))

(assert (=> b!3659776 m!4166097))

(assert (=> b!3659776 m!4166097))

(assert (=> b!3659776 m!4166099))

(declare-fun m!4166111 () Bool)

(assert (=> d!1074690 m!4166111))

(declare-fun m!4166113 () Bool)

(assert (=> d!1074690 m!4166113))

(declare-fun m!4166115 () Bool)

(assert (=> d!1074690 m!4166115))

(assert (=> d!1074690 m!4165817))

(assert (=> b!3659778 m!4166095))

(declare-fun m!4166117 () Bool)

(assert (=> b!3659778 m!4166117))

(assert (=> b!3659778 m!4165709))

(assert (=> b!3659774 m!4166095))

(declare-fun m!4166119 () Bool)

(assert (=> b!3659774 m!4166119))

(assert (=> b!3659774 m!4166119))

(declare-fun m!4166121 () Bool)

(assert (=> b!3659774 m!4166121))

(declare-fun m!4166123 () Bool)

(assert (=> b!3659779 m!4166123))

(assert (=> b!3659362 d!1074690))

(declare-fun d!1074692 () Bool)

(declare-fun isEmpty!22900 (Option!8216) Bool)

(assert (=> d!1074692 (= (isDefined!6448 lt!1272432) (not (isEmpty!22900 lt!1272432)))))

(declare-fun bs!572569 () Bool)

(assert (= bs!572569 d!1074692))

(declare-fun m!4166125 () Bool)

(assert (=> bs!572569 m!4166125))

(assert (=> b!3659362 d!1074692))

(declare-fun b!3659786 () Bool)

(declare-fun e!2266093 () Bool)

(assert (=> b!3659786 (= e!2266093 (>= (size!29499 lt!1272448) (size!29499 lt!1272423)))))

(declare-fun b!3659785 () Bool)

(declare-fun e!2266091 () Bool)

(assert (=> b!3659785 (= e!2266091 (isPrefix!3157 (tail!5666 lt!1272423) (tail!5666 lt!1272448)))))

(declare-fun d!1074694 () Bool)

(assert (=> d!1074694 e!2266093))

(declare-fun res!1485635 () Bool)

(assert (=> d!1074694 (=> res!1485635 e!2266093)))

(declare-fun lt!1272642 () Bool)

(assert (=> d!1074694 (= res!1485635 (not lt!1272642))))

(declare-fun e!2266092 () Bool)

(assert (=> d!1074694 (= lt!1272642 e!2266092)))

(declare-fun res!1485637 () Bool)

(assert (=> d!1074694 (=> res!1485637 e!2266092)))

(assert (=> d!1074694 (= res!1485637 ((_ is Nil!38610) lt!1272423))))

(assert (=> d!1074694 (= (isPrefix!3157 lt!1272423 lt!1272448) lt!1272642)))

(declare-fun b!3659783 () Bool)

(assert (=> b!3659783 (= e!2266092 e!2266091)))

(declare-fun res!1485638 () Bool)

(assert (=> b!3659783 (=> (not res!1485638) (not e!2266091))))

(assert (=> b!3659783 (= res!1485638 (not ((_ is Nil!38610) lt!1272448)))))

(declare-fun b!3659784 () Bool)

(declare-fun res!1485636 () Bool)

(assert (=> b!3659784 (=> (not res!1485636) (not e!2266091))))

(assert (=> b!3659784 (= res!1485636 (= (head!7820 lt!1272423) (head!7820 lt!1272448)))))

(assert (= (and d!1074694 (not res!1485637)) b!3659783))

(assert (= (and b!3659783 res!1485638) b!3659784))

(assert (= (and b!3659784 res!1485636) b!3659785))

(assert (= (and d!1074694 (not res!1485635)) b!3659786))

(assert (=> b!3659786 m!4165709))

(assert (=> b!3659786 m!4165583))

(assert (=> b!3659785 m!4166087))

(assert (=> b!3659785 m!4165711))

(assert (=> b!3659785 m!4166087))

(assert (=> b!3659785 m!4165711))

(declare-fun m!4166127 () Bool)

(assert (=> b!3659785 m!4166127))

(assert (=> b!3659784 m!4165619))

(assert (=> b!3659784 m!4165845))

(assert (=> b!3659362 d!1074694))

(declare-fun d!1074696 () Bool)

(assert (=> d!1074696 (isPrefix!3157 lt!1272423 (++!9610 lt!1272423 (_2!22370 lt!1272444)))))

(declare-fun lt!1272645 () Unit!55867)

(declare-fun choose!21646 (List!38734 List!38734) Unit!55867)

(assert (=> d!1074696 (= lt!1272645 (choose!21646 lt!1272423 (_2!22370 lt!1272444)))))

(assert (=> d!1074696 (= (lemmaConcatTwoListThenFirstIsPrefix!2076 lt!1272423 (_2!22370 lt!1272444)) lt!1272645)))

(declare-fun bs!572570 () Bool)

(assert (= bs!572570 d!1074696))

(assert (=> bs!572570 m!4165555))

(assert (=> bs!572570 m!4165555))

(assert (=> bs!572570 m!4165569))

(declare-fun m!4166129 () Bool)

(assert (=> bs!572570 m!4166129))

(assert (=> b!3659362 d!1074696))

(declare-fun d!1074698 () Bool)

(assert (=> d!1074698 (isPrefix!3157 lt!1272441 (++!9610 lt!1272441 suffix!1395))))

(declare-fun lt!1272646 () Unit!55867)

(assert (=> d!1074698 (= lt!1272646 (choose!21646 lt!1272441 suffix!1395))))

(assert (=> d!1074698 (= (lemmaConcatTwoListThenFirstIsPrefix!2076 lt!1272441 suffix!1395) lt!1272646)))

(declare-fun bs!572571 () Bool)

(assert (= bs!572571 d!1074698))

(assert (=> bs!572571 m!4165561))

(assert (=> bs!572571 m!4165561))

(declare-fun m!4166131 () Bool)

(assert (=> bs!572571 m!4166131))

(declare-fun m!4166133 () Bool)

(assert (=> bs!572571 m!4166133))

(assert (=> b!3659362 d!1074698))

(declare-fun d!1074700 () Bool)

(assert (=> d!1074700 (= (list!14320 lt!1272422) (list!14321 (c!632457 lt!1272422)))))

(declare-fun bs!572572 () Bool)

(assert (= bs!572572 d!1074700))

(declare-fun m!4166135 () Bool)

(assert (=> bs!572572 m!4166135))

(assert (=> b!3659362 d!1074700))

(declare-fun b!3659799 () Bool)

(declare-fun e!2266104 () Option!8216)

(assert (=> b!3659799 (= e!2266104 (Some!8215 (h!44031 rules!3307)))))

(declare-fun b!3659800 () Bool)

(declare-fun e!2266105 () Option!8216)

(assert (=> b!3659800 (= e!2266105 None!8215)))

(declare-fun d!1074702 () Bool)

(declare-fun e!2266102 () Bool)

(assert (=> d!1074702 e!2266102))

(declare-fun res!1485643 () Bool)

(assert (=> d!1074702 (=> res!1485643 e!2266102)))

(declare-fun lt!1272654 () Option!8216)

(assert (=> d!1074702 (= res!1485643 (isEmpty!22900 lt!1272654))))

(assert (=> d!1074702 (= lt!1272654 e!2266104)))

(declare-fun c!632558 () Bool)

(assert (=> d!1074702 (= c!632558 (and ((_ is Cons!38611) rules!3307) (= (tag!6570 (h!44031 rules!3307)) (tag!6570 (rule!8604 (_1!22370 lt!1272444))))))))

(assert (=> d!1074702 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074702 (= (getRuleFromTag!1398 thiss!23823 rules!3307 (tag!6570 (rule!8604 (_1!22370 lt!1272444)))) lt!1272654)))

(declare-fun b!3659801 () Bool)

(declare-fun lt!1272655 () Unit!55867)

(declare-fun lt!1272653 () Unit!55867)

(assert (=> b!3659801 (= lt!1272655 lt!1272653)))

(assert (=> b!3659801 (rulesInvariant!4780 thiss!23823 (t!298358 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!598 (LexerInterface!5383 Rule!11388 List!38735) Unit!55867)

(assert (=> b!3659801 (= lt!1272653 (lemmaInvariantOnRulesThenOnTail!598 thiss!23823 (h!44031 rules!3307) (t!298358 rules!3307)))))

(assert (=> b!3659801 (= e!2266105 (getRuleFromTag!1398 thiss!23823 (t!298358 rules!3307) (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659802 () Bool)

(declare-fun e!2266103 () Bool)

(assert (=> b!3659802 (= e!2266103 (= (tag!6570 (get!12723 lt!1272654)) (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3659803 () Bool)

(assert (=> b!3659803 (= e!2266104 e!2266105)))

(declare-fun c!632559 () Bool)

(assert (=> b!3659803 (= c!632559 (and ((_ is Cons!38611) rules!3307) (not (= (tag!6570 (h!44031 rules!3307)) (tag!6570 (rule!8604 (_1!22370 lt!1272444)))))))))

(declare-fun b!3659804 () Bool)

(assert (=> b!3659804 (= e!2266102 e!2266103)))

(declare-fun res!1485644 () Bool)

(assert (=> b!3659804 (=> (not res!1485644) (not e!2266103))))

(assert (=> b!3659804 (= res!1485644 (contains!7654 rules!3307 (get!12723 lt!1272654)))))

(assert (= (and d!1074702 c!632558) b!3659799))

(assert (= (and d!1074702 (not c!632558)) b!3659803))

(assert (= (and b!3659803 c!632559) b!3659801))

(assert (= (and b!3659803 (not c!632559)) b!3659800))

(assert (= (and d!1074702 (not res!1485643)) b!3659804))

(assert (= (and b!3659804 res!1485644) b!3659802))

(declare-fun m!4166137 () Bool)

(assert (=> d!1074702 m!4166137))

(assert (=> d!1074702 m!4165521))

(declare-fun m!4166139 () Bool)

(assert (=> b!3659801 m!4166139))

(declare-fun m!4166141 () Bool)

(assert (=> b!3659801 m!4166141))

(declare-fun m!4166143 () Bool)

(assert (=> b!3659801 m!4166143))

(declare-fun m!4166145 () Bool)

(assert (=> b!3659802 m!4166145))

(assert (=> b!3659804 m!4166145))

(assert (=> b!3659804 m!4166145))

(declare-fun m!4166147 () Bool)

(assert (=> b!3659804 m!4166147))

(assert (=> b!3659362 d!1074702))

(declare-fun b!3659807 () Bool)

(declare-fun res!1485645 () Bool)

(declare-fun e!2266107 () Bool)

(assert (=> b!3659807 (=> (not res!1485645) (not e!2266107))))

(declare-fun lt!1272656 () List!38734)

(assert (=> b!3659807 (= res!1485645 (= (size!29499 lt!1272656) (+ (size!29499 lt!1272423) (size!29499 (_2!22370 lt!1272444)))))))

(declare-fun b!3659805 () Bool)

(declare-fun e!2266106 () List!38734)

(assert (=> b!3659805 (= e!2266106 (_2!22370 lt!1272444))))

(declare-fun b!3659806 () Bool)

(assert (=> b!3659806 (= e!2266106 (Cons!38610 (h!44030 lt!1272423) (++!9610 (t!298357 lt!1272423) (_2!22370 lt!1272444))))))

(declare-fun b!3659808 () Bool)

(assert (=> b!3659808 (= e!2266107 (or (not (= (_2!22370 lt!1272444) Nil!38610)) (= lt!1272656 lt!1272423)))))

(declare-fun d!1074704 () Bool)

(assert (=> d!1074704 e!2266107))

(declare-fun res!1485646 () Bool)

(assert (=> d!1074704 (=> (not res!1485646) (not e!2266107))))

(assert (=> d!1074704 (= res!1485646 (= (content!5577 lt!1272656) ((_ map or) (content!5577 lt!1272423) (content!5577 (_2!22370 lt!1272444)))))))

(assert (=> d!1074704 (= lt!1272656 e!2266106)))

(declare-fun c!632560 () Bool)

(assert (=> d!1074704 (= c!632560 ((_ is Nil!38610) lt!1272423))))

(assert (=> d!1074704 (= (++!9610 lt!1272423 (_2!22370 lt!1272444)) lt!1272656)))

(assert (= (and d!1074704 c!632560) b!3659805))

(assert (= (and d!1074704 (not c!632560)) b!3659806))

(assert (= (and d!1074704 res!1485646) b!3659807))

(assert (= (and b!3659807 res!1485645) b!3659808))

(declare-fun m!4166149 () Bool)

(assert (=> b!3659807 m!4166149))

(assert (=> b!3659807 m!4165583))

(declare-fun m!4166151 () Bool)

(assert (=> b!3659807 m!4166151))

(declare-fun m!4166153 () Bool)

(assert (=> b!3659806 m!4166153))

(declare-fun m!4166155 () Bool)

(assert (=> d!1074704 m!4166155))

(declare-fun m!4166157 () Bool)

(assert (=> d!1074704 m!4166157))

(declare-fun m!4166159 () Bool)

(assert (=> d!1074704 m!4166159))

(assert (=> b!3659362 d!1074704))

(declare-fun d!1074706 () Bool)

(assert (=> d!1074706 (contains!7653 lt!1272423 (head!7820 suffix!1395))))

(declare-fun lt!1272659 () Unit!55867)

(declare-fun choose!21647 (List!38734 List!38734 List!38734 List!38734) Unit!55867)

(assert (=> d!1074706 (= lt!1272659 (choose!21647 lt!1272441 suffix!1395 lt!1272423 lt!1272448))))

(assert (=> d!1074706 (isPrefix!3157 lt!1272423 lt!1272448)))

(assert (=> d!1074706 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!102 lt!1272441 suffix!1395 lt!1272423 lt!1272448) lt!1272659)))

(declare-fun bs!572573 () Bool)

(assert (= bs!572573 d!1074706))

(assert (=> bs!572573 m!4165643))

(assert (=> bs!572573 m!4165643))

(declare-fun m!4166161 () Bool)

(assert (=> bs!572573 m!4166161))

(declare-fun m!4166163 () Bool)

(assert (=> bs!572573 m!4166163))

(assert (=> bs!572573 m!4165545))

(assert (=> b!3659343 d!1074706))

(declare-fun d!1074708 () Bool)

(declare-fun lt!1272660 () Bool)

(assert (=> d!1074708 (= lt!1272660 (select (content!5577 lt!1272423) lt!1272440))))

(declare-fun e!2266108 () Bool)

(assert (=> d!1074708 (= lt!1272660 e!2266108)))

(declare-fun res!1485647 () Bool)

(assert (=> d!1074708 (=> (not res!1485647) (not e!2266108))))

(assert (=> d!1074708 (= res!1485647 ((_ is Cons!38610) lt!1272423))))

(assert (=> d!1074708 (= (contains!7653 lt!1272423 lt!1272440) lt!1272660)))

(declare-fun b!3659809 () Bool)

(declare-fun e!2266109 () Bool)

(assert (=> b!3659809 (= e!2266108 e!2266109)))

(declare-fun res!1485648 () Bool)

(assert (=> b!3659809 (=> res!1485648 e!2266109)))

(assert (=> b!3659809 (= res!1485648 (= (h!44030 lt!1272423) lt!1272440))))

(declare-fun b!3659810 () Bool)

(assert (=> b!3659810 (= e!2266109 (contains!7653 (t!298357 lt!1272423) lt!1272440))))

(assert (= (and d!1074708 res!1485647) b!3659809))

(assert (= (and b!3659809 (not res!1485648)) b!3659810))

(assert (=> d!1074708 m!4166157))

(declare-fun m!4166165 () Bool)

(assert (=> d!1074708 m!4166165))

(declare-fun m!4166167 () Bool)

(assert (=> b!3659810 m!4166167))

(assert (=> b!3659343 d!1074708))

(assert (=> bm!264665 d!1074534))

(declare-fun d!1074710 () Bool)

(declare-fun lt!1272661 () Bool)

(assert (=> d!1074710 (= lt!1272661 (select (content!5577 call!264669) lt!1272440))))

(declare-fun e!2266110 () Bool)

(assert (=> d!1074710 (= lt!1272661 e!2266110)))

(declare-fun res!1485649 () Bool)

(assert (=> d!1074710 (=> (not res!1485649) (not e!2266110))))

(assert (=> d!1074710 (= res!1485649 ((_ is Cons!38610) call!264669))))

(assert (=> d!1074710 (= (contains!7653 call!264669 lt!1272440) lt!1272661)))

(declare-fun b!3659811 () Bool)

(declare-fun e!2266111 () Bool)

(assert (=> b!3659811 (= e!2266110 e!2266111)))

(declare-fun res!1485650 () Bool)

(assert (=> b!3659811 (=> res!1485650 e!2266111)))

(assert (=> b!3659811 (= res!1485650 (= (h!44030 call!264669) lt!1272440))))

(declare-fun b!3659812 () Bool)

(assert (=> b!3659812 (= e!2266111 (contains!7653 (t!298357 call!264669) lt!1272440))))

(assert (= (and d!1074710 res!1485649) b!3659811))

(assert (= (and b!3659811 (not res!1485650)) b!3659812))

(declare-fun m!4166169 () Bool)

(assert (=> d!1074710 m!4166169))

(declare-fun m!4166171 () Bool)

(assert (=> d!1074710 m!4166171))

(declare-fun m!4166173 () Bool)

(assert (=> b!3659812 m!4166173))

(assert (=> bm!264661 d!1074710))

(declare-fun d!1074712 () Bool)

(assert (=> d!1074712 (= (get!12724 lt!1272418) (v!38100 lt!1272418))))

(assert (=> b!3659370 d!1074712))

(declare-fun d!1074714 () Bool)

(assert (=> d!1074714 (not (contains!7653 (usedCharacters!1006 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272431))))

(declare-fun lt!1272662 () Unit!55867)

(assert (=> d!1074714 (= lt!1272662 (choose!21636 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8604 (_1!22370 lt!1272444)) lt!1272431))))

(assert (=> d!1074714 (rulesInvariant!4780 thiss!23823 rules!3307)))

(assert (=> d!1074714 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!322 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8604 (_1!22370 lt!1272444)) lt!1272431) lt!1272662)))

(declare-fun bs!572574 () Bool)

(assert (= bs!572574 d!1074714))

(assert (=> bs!572574 m!4165611))

(assert (=> bs!572574 m!4165611))

(assert (=> bs!572574 m!4165691))

(declare-fun m!4166175 () Bool)

(assert (=> bs!572574 m!4166175))

(assert (=> bs!572574 m!4165521))

(assert (=> b!3659332 d!1074714))

(declare-fun d!1074716 () Bool)

(assert (=> d!1074716 (not (matchR!5122 (regex!5794 rule!403) lt!1272441))))

(declare-fun lt!1272665 () Unit!55867)

(declare-fun choose!21649 (LexerInterface!5383 List!38735 Rule!11388 List!38734 List!38734 List!38734 Rule!11388) Unit!55867)

(assert (=> d!1074716 (= lt!1272665 (choose!21649 thiss!23823 rules!3307 (rule!8604 (_1!22370 lt!1272444)) lt!1272423 lt!1272448 lt!1272441 rule!403))))

(assert (=> d!1074716 (isPrefix!3157 lt!1272423 lt!1272448)))

(assert (=> d!1074716 (= (lemmaMaxPrefixOutputsMaxPrefix!336 thiss!23823 rules!3307 (rule!8604 (_1!22370 lt!1272444)) lt!1272423 lt!1272448 lt!1272441 rule!403) lt!1272665)))

(declare-fun bs!572575 () Bool)

(assert (= bs!572575 d!1074716))

(assert (=> bs!572575 m!4165601))

(declare-fun m!4166177 () Bool)

(assert (=> bs!572575 m!4166177))

(assert (=> bs!572575 m!4165545))

(assert (=> b!3659350 d!1074716))

(declare-fun d!1074718 () Bool)

(declare-fun res!1485655 () Bool)

(declare-fun e!2266114 () Bool)

(assert (=> d!1074718 (=> (not res!1485655) (not e!2266114))))

(assert (=> d!1074718 (= res!1485655 (not (isEmpty!22896 (originalCharacters!6508 token!511))))))

(assert (=> d!1074718 (= (inv!52075 token!511) e!2266114)))

(declare-fun b!3659817 () Bool)

(declare-fun res!1485656 () Bool)

(assert (=> b!3659817 (=> (not res!1485656) (not e!2266114))))

(assert (=> b!3659817 (= res!1485656 (= (originalCharacters!6508 token!511) (list!14320 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 token!511))) (value!185589 token!511)))))))

(declare-fun b!3659818 () Bool)

(assert (=> b!3659818 (= e!2266114 (= (size!29497 token!511) (size!29499 (originalCharacters!6508 token!511))))))

(assert (= (and d!1074718 res!1485655) b!3659817))

(assert (= (and b!3659817 res!1485656) b!3659818))

(declare-fun b_lambda!108553 () Bool)

(assert (=> (not b_lambda!108553) (not b!3659817)))

(assert (=> b!3659817 t!298376))

(declare-fun b_and!271547 () Bool)

(assert (= b_and!271475 (and (=> t!298376 result!257382) b_and!271547)))

(assert (=> b!3659817 t!298378))

(declare-fun b_and!271549 () Bool)

(assert (= b_and!271477 (and (=> t!298378 result!257384) b_and!271549)))

(assert (=> b!3659817 t!298380))

(declare-fun b_and!271551 () Bool)

(assert (= b_and!271479 (and (=> t!298380 result!257386) b_and!271551)))

(assert (=> b!3659817 t!298382))

(declare-fun b_and!271553 () Bool)

(assert (= b_and!271481 (and (=> t!298382 result!257388) b_and!271553)))

(declare-fun m!4166179 () Bool)

(assert (=> d!1074718 m!4166179))

(assert (=> b!3659817 m!4165837))

(assert (=> b!3659817 m!4165837))

(declare-fun m!4166181 () Bool)

(assert (=> b!3659817 m!4166181))

(declare-fun m!4166183 () Bool)

(assert (=> b!3659818 m!4166183))

(assert (=> start!342446 d!1074718))

(declare-fun d!1074720 () Bool)

(assert (=> d!1074720 (not (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423))))

(declare-fun lt!1272666 () Unit!55867)

(assert (=> d!1074720 (= lt!1272666 (choose!21635 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272440))))

(assert (=> d!1074720 (validRegex!4830 (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))

(assert (=> d!1074720 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272440) lt!1272666)))

(declare-fun bs!572576 () Bool)

(assert (= bs!572576 d!1074720))

(assert (=> bs!572576 m!4165537))

(declare-fun m!4166185 () Bool)

(assert (=> bs!572576 m!4166185))

(declare-fun m!4166187 () Bool)

(assert (=> bs!572576 m!4166187))

(assert (=> bm!264664 d!1074720))

(declare-fun b!3659822 () Bool)

(declare-fun e!2266117 () Bool)

(assert (=> b!3659822 (= e!2266117 (>= (size!29499 lt!1272441) (size!29499 lt!1272441)))))

(declare-fun b!3659821 () Bool)

(declare-fun e!2266115 () Bool)

(assert (=> b!3659821 (= e!2266115 (isPrefix!3157 (tail!5666 lt!1272441) (tail!5666 lt!1272441)))))

(declare-fun d!1074722 () Bool)

(assert (=> d!1074722 e!2266117))

(declare-fun res!1485657 () Bool)

(assert (=> d!1074722 (=> res!1485657 e!2266117)))

(declare-fun lt!1272667 () Bool)

(assert (=> d!1074722 (= res!1485657 (not lt!1272667))))

(declare-fun e!2266116 () Bool)

(assert (=> d!1074722 (= lt!1272667 e!2266116)))

(declare-fun res!1485659 () Bool)

(assert (=> d!1074722 (=> res!1485659 e!2266116)))

(assert (=> d!1074722 (= res!1485659 ((_ is Nil!38610) lt!1272441))))

(assert (=> d!1074722 (= (isPrefix!3157 lt!1272441 lt!1272441) lt!1272667)))

(declare-fun b!3659819 () Bool)

(assert (=> b!3659819 (= e!2266116 e!2266115)))

(declare-fun res!1485660 () Bool)

(assert (=> b!3659819 (=> (not res!1485660) (not e!2266115))))

(assert (=> b!3659819 (= res!1485660 (not ((_ is Nil!38610) lt!1272441)))))

(declare-fun b!3659820 () Bool)

(declare-fun res!1485658 () Bool)

(assert (=> b!3659820 (=> (not res!1485658) (not e!2266115))))

(assert (=> b!3659820 (= res!1485658 (= (head!7820 lt!1272441) (head!7820 lt!1272441)))))

(assert (= (and d!1074722 (not res!1485659)) b!3659819))

(assert (= (and b!3659819 res!1485660) b!3659820))

(assert (= (and b!3659820 res!1485658) b!3659821))

(assert (= (and d!1074722 (not res!1485657)) b!3659822))

(assert (=> b!3659822 m!4165821))

(assert (=> b!3659822 m!4165821))

(assert (=> b!3659821 m!4165839))

(assert (=> b!3659821 m!4165839))

(assert (=> b!3659821 m!4165839))

(assert (=> b!3659821 m!4165839))

(declare-fun m!4166189 () Bool)

(assert (=> b!3659821 m!4166189))

(assert (=> b!3659820 m!4165843))

(assert (=> b!3659820 m!4165843))

(assert (=> b!3659349 d!1074722))

(declare-fun d!1074724 () Bool)

(assert (=> d!1074724 (= (isEmpty!22896 (getSuffix!1710 lt!1272441 lt!1272441)) ((_ is Nil!38610) (getSuffix!1710 lt!1272441 lt!1272441)))))

(assert (=> b!3659349 d!1074724))

(declare-fun d!1074726 () Bool)

(declare-fun lt!1272668 () List!38734)

(assert (=> d!1074726 (= (++!9610 lt!1272441 lt!1272668) lt!1272441)))

(declare-fun e!2266118 () List!38734)

(assert (=> d!1074726 (= lt!1272668 e!2266118)))

(declare-fun c!632561 () Bool)

(assert (=> d!1074726 (= c!632561 ((_ is Cons!38610) lt!1272441))))

(assert (=> d!1074726 (>= (size!29499 lt!1272441) (size!29499 lt!1272441))))

(assert (=> d!1074726 (= (getSuffix!1710 lt!1272441 lt!1272441) lt!1272668)))

(declare-fun b!3659823 () Bool)

(assert (=> b!3659823 (= e!2266118 (getSuffix!1710 (tail!5666 lt!1272441) (t!298357 lt!1272441)))))

(declare-fun b!3659824 () Bool)

(assert (=> b!3659824 (= e!2266118 lt!1272441)))

(assert (= (and d!1074726 c!632561) b!3659823))

(assert (= (and d!1074726 (not c!632561)) b!3659824))

(declare-fun m!4166191 () Bool)

(assert (=> d!1074726 m!4166191))

(assert (=> d!1074726 m!4165821))

(assert (=> d!1074726 m!4165821))

(assert (=> b!3659823 m!4165839))

(assert (=> b!3659823 m!4165839))

(declare-fun m!4166193 () Bool)

(assert (=> b!3659823 m!4166193))

(assert (=> b!3659349 d!1074726))

(declare-fun d!1074728 () Bool)

(assert (=> d!1074728 (isEmpty!22896 (getSuffix!1710 lt!1272441 lt!1272441))))

(declare-fun lt!1272671 () Unit!55867)

(declare-fun choose!21650 (List!38734) Unit!55867)

(assert (=> d!1074728 (= lt!1272671 (choose!21650 lt!1272441))))

(assert (=> d!1074728 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!174 lt!1272441) lt!1272671)))

(declare-fun bs!572577 () Bool)

(assert (= bs!572577 d!1074728))

(assert (=> bs!572577 m!4165629))

(assert (=> bs!572577 m!4165629))

(assert (=> bs!572577 m!4165631))

(declare-fun m!4166195 () Bool)

(assert (=> bs!572577 m!4166195))

(assert (=> b!3659349 d!1074728))

(declare-fun d!1074730 () Bool)

(declare-fun res!1485667 () Bool)

(declare-fun e!2266127 () Bool)

(assert (=> d!1074730 (=> (not res!1485667) (not e!2266127))))

(declare-fun rulesValid!2226 (LexerInterface!5383 List!38735) Bool)

(assert (=> d!1074730 (= res!1485667 (rulesValid!2226 thiss!23823 rules!3307))))

(assert (=> d!1074730 (= (rulesInvariant!4780 thiss!23823 rules!3307) e!2266127)))

(declare-fun b!3659835 () Bool)

(declare-datatypes ((List!38739 0))(
  ( (Nil!38615) (Cons!38615 (h!44035 String!43454) (t!298482 List!38739)) )
))
(declare-fun noDuplicateTag!2222 (LexerInterface!5383 List!38735 List!38739) Bool)

(assert (=> b!3659835 (= e!2266127 (noDuplicateTag!2222 thiss!23823 rules!3307 Nil!38615))))

(assert (= (and d!1074730 res!1485667) b!3659835))

(declare-fun m!4166197 () Bool)

(assert (=> d!1074730 m!4166197))

(declare-fun m!4166199 () Bool)

(assert (=> b!3659835 m!4166199))

(assert (=> b!3659369 d!1074730))

(declare-fun d!1074732 () Bool)

(declare-fun lt!1272682 () Bool)

(assert (=> d!1074732 (= lt!1272682 (select (content!5577 lt!1272437) lt!1272440))))

(declare-fun e!2266130 () Bool)

(assert (=> d!1074732 (= lt!1272682 e!2266130)))

(declare-fun res!1485676 () Bool)

(assert (=> d!1074732 (=> (not res!1485676) (not e!2266130))))

(assert (=> d!1074732 (= res!1485676 ((_ is Cons!38610) lt!1272437))))

(assert (=> d!1074732 (= (contains!7653 lt!1272437 lt!1272440) lt!1272682)))

(declare-fun b!3659844 () Bool)

(declare-fun e!2266131 () Bool)

(assert (=> b!3659844 (= e!2266130 e!2266131)))

(declare-fun res!1485679 () Bool)

(assert (=> b!3659844 (=> res!1485679 e!2266131)))

(assert (=> b!3659844 (= res!1485679 (= (h!44030 lt!1272437) lt!1272440))))

(declare-fun b!3659845 () Bool)

(assert (=> b!3659845 (= e!2266131 (contains!7653 (t!298357 lt!1272437) lt!1272440))))

(assert (= (and d!1074732 res!1485676) b!3659844))

(assert (= (and b!3659844 (not res!1485679)) b!3659845))

(assert (=> d!1074732 m!4165665))

(declare-fun m!4166201 () Bool)

(assert (=> d!1074732 m!4166201))

(declare-fun m!4166203 () Bool)

(assert (=> b!3659845 m!4166203))

(assert (=> b!3659348 d!1074732))

(declare-fun d!1074734 () Bool)

(assert (=> d!1074734 (= (head!7820 suffix!1395) (h!44030 suffix!1395))))

(assert (=> b!3659348 d!1074734))

(declare-fun bm!264705 () Bool)

(declare-fun call!264713 () List!38734)

(declare-fun c!632564 () Bool)

(assert (=> bm!264705 (= call!264713 (usedCharacters!1006 (ite c!632564 (regTwo!21619 (regex!5794 rule!403)) (regOne!21618 (regex!5794 rule!403)))))))

(declare-fun call!264711 () List!38734)

(declare-fun call!264712 () List!38734)

(declare-fun bm!264706 () Bool)

(assert (=> bm!264706 (= call!264712 (++!9610 (ite c!632564 call!264711 call!264713) (ite c!632564 call!264713 call!264711)))))

(declare-fun call!264710 () List!38734)

(declare-fun c!632566 () Bool)

(declare-fun bm!264707 () Bool)

(assert (=> bm!264707 (= call!264710 (usedCharacters!1006 (ite c!632566 (reg!10882 (regex!5794 rule!403)) (ite c!632564 (regOne!21619 (regex!5794 rule!403)) (regTwo!21618 (regex!5794 rule!403))))))))

(declare-fun b!3659848 () Bool)

(declare-fun e!2266134 () List!38734)

(declare-fun e!2266133 () List!38734)

(assert (=> b!3659848 (= e!2266134 e!2266133)))

(assert (=> b!3659848 (= c!632564 ((_ is Union!10553) (regex!5794 rule!403)))))

(declare-fun b!3659849 () Bool)

(declare-fun e!2266135 () List!38734)

(assert (=> b!3659849 (= e!2266135 Nil!38610)))

(declare-fun b!3659850 () Bool)

(assert (=> b!3659850 (= e!2266134 call!264710)))

(declare-fun b!3659851 () Bool)

(assert (=> b!3659851 (= c!632566 ((_ is Star!10553) (regex!5794 rule!403)))))

(declare-fun e!2266132 () List!38734)

(assert (=> b!3659851 (= e!2266132 e!2266134)))

(declare-fun d!1074736 () Bool)

(declare-fun c!632565 () Bool)

(assert (=> d!1074736 (= c!632565 (or ((_ is EmptyExpr!10553) (regex!5794 rule!403)) ((_ is EmptyLang!10553) (regex!5794 rule!403))))))

(assert (=> d!1074736 (= (usedCharacters!1006 (regex!5794 rule!403)) e!2266135)))

(declare-fun b!3659852 () Bool)

(assert (=> b!3659852 (= e!2266133 call!264712)))

(declare-fun bm!264708 () Bool)

(assert (=> bm!264708 (= call!264711 call!264710)))

(declare-fun b!3659853 () Bool)

(assert (=> b!3659853 (= e!2266135 e!2266132)))

(declare-fun c!632567 () Bool)

(assert (=> b!3659853 (= c!632567 ((_ is ElementMatch!10553) (regex!5794 rule!403)))))

(declare-fun b!3659854 () Bool)

(assert (=> b!3659854 (= e!2266133 call!264712)))

(declare-fun b!3659855 () Bool)

(assert (=> b!3659855 (= e!2266132 (Cons!38610 (c!632456 (regex!5794 rule!403)) Nil!38610))))

(assert (= (and d!1074736 c!632565) b!3659849))

(assert (= (and d!1074736 (not c!632565)) b!3659853))

(assert (= (and b!3659853 c!632567) b!3659855))

(assert (= (and b!3659853 (not c!632567)) b!3659851))

(assert (= (and b!3659851 c!632566) b!3659850))

(assert (= (and b!3659851 (not c!632566)) b!3659848))

(assert (= (and b!3659848 c!632564) b!3659852))

(assert (= (and b!3659848 (not c!632564)) b!3659854))

(assert (= (or b!3659852 b!3659854) bm!264708))

(assert (= (or b!3659852 b!3659854) bm!264705))

(assert (= (or b!3659852 b!3659854) bm!264706))

(assert (= (or b!3659850 bm!264708) bm!264707))

(declare-fun m!4166205 () Bool)

(assert (=> bm!264705 m!4166205))

(declare-fun m!4166207 () Bool)

(assert (=> bm!264706 m!4166207))

(declare-fun m!4166209 () Bool)

(assert (=> bm!264707 m!4166209))

(assert (=> b!3659348 d!1074736))

(declare-fun d!1074738 () Bool)

(declare-fun lt!1272685 () Bool)

(declare-fun content!5579 (List!38735) (InoxSet Rule!11388))

(assert (=> d!1074738 (= lt!1272685 (select (content!5579 rules!3307) rule!403))))

(declare-fun e!2266141 () Bool)

(assert (=> d!1074738 (= lt!1272685 e!2266141)))

(declare-fun res!1485684 () Bool)

(assert (=> d!1074738 (=> (not res!1485684) (not e!2266141))))

(assert (=> d!1074738 (= res!1485684 ((_ is Cons!38611) rules!3307))))

(assert (=> d!1074738 (= (contains!7654 rules!3307 rule!403) lt!1272685)))

(declare-fun b!3659860 () Bool)

(declare-fun e!2266140 () Bool)

(assert (=> b!3659860 (= e!2266141 e!2266140)))

(declare-fun res!1485685 () Bool)

(assert (=> b!3659860 (=> res!1485685 e!2266140)))

(assert (=> b!3659860 (= res!1485685 (= (h!44031 rules!3307) rule!403))))

(declare-fun b!3659861 () Bool)

(assert (=> b!3659861 (= e!2266140 (contains!7654 (t!298358 rules!3307) rule!403))))

(assert (= (and d!1074738 res!1485684) b!3659860))

(assert (= (and b!3659860 (not res!1485685)) b!3659861))

(declare-fun m!4166211 () Bool)

(assert (=> d!1074738 m!4166211))

(declare-fun m!4166213 () Bool)

(assert (=> d!1074738 m!4166213))

(declare-fun m!4166215 () Bool)

(assert (=> b!3659861 m!4166215))

(assert (=> b!3659367 d!1074738))

(declare-fun d!1074740 () Bool)

(declare-fun lt!1272686 () Bool)

(assert (=> d!1074740 (= lt!1272686 (select (content!5577 call!264665) lt!1272431))))

(declare-fun e!2266142 () Bool)

(assert (=> d!1074740 (= lt!1272686 e!2266142)))

(declare-fun res!1485686 () Bool)

(assert (=> d!1074740 (=> (not res!1485686) (not e!2266142))))

(assert (=> d!1074740 (= res!1485686 ((_ is Cons!38610) call!264665))))

(assert (=> d!1074740 (= (contains!7653 call!264665 lt!1272431) lt!1272686)))

(declare-fun b!3659862 () Bool)

(declare-fun e!2266143 () Bool)

(assert (=> b!3659862 (= e!2266142 e!2266143)))

(declare-fun res!1485687 () Bool)

(assert (=> b!3659862 (=> res!1485687 e!2266143)))

(assert (=> b!3659862 (= res!1485687 (= (h!44030 call!264665) lt!1272431))))

(declare-fun b!3659863 () Bool)

(assert (=> b!3659863 (= e!2266143 (contains!7653 (t!298357 call!264665) lt!1272431))))

(assert (= (and d!1074740 res!1485686) b!3659862))

(assert (= (and b!3659862 (not res!1485687)) b!3659863))

(declare-fun m!4166217 () Bool)

(assert (=> d!1074740 m!4166217))

(declare-fun m!4166219 () Bool)

(assert (=> d!1074740 m!4166219))

(declare-fun m!4166221 () Bool)

(assert (=> b!3659863 m!4166221))

(assert (=> bm!264660 d!1074740))

(declare-fun d!1074742 () Bool)

(declare-fun lt!1272687 () Bool)

(assert (=> d!1074742 (= lt!1272687 (select (content!5577 (usedCharacters!1006 (regex!5794 anOtherTypeRule!33))) lt!1272440))))

(declare-fun e!2266144 () Bool)

(assert (=> d!1074742 (= lt!1272687 e!2266144)))

(declare-fun res!1485688 () Bool)

(assert (=> d!1074742 (=> (not res!1485688) (not e!2266144))))

(assert (=> d!1074742 (= res!1485688 ((_ is Cons!38610) (usedCharacters!1006 (regex!5794 anOtherTypeRule!33))))))

(assert (=> d!1074742 (= (contains!7653 (usedCharacters!1006 (regex!5794 anOtherTypeRule!33)) lt!1272440) lt!1272687)))

(declare-fun b!3659864 () Bool)

(declare-fun e!2266145 () Bool)

(assert (=> b!3659864 (= e!2266144 e!2266145)))

(declare-fun res!1485689 () Bool)

(assert (=> b!3659864 (=> res!1485689 e!2266145)))

(assert (=> b!3659864 (= res!1485689 (= (h!44030 (usedCharacters!1006 (regex!5794 anOtherTypeRule!33))) lt!1272440))))

(declare-fun b!3659865 () Bool)

(assert (=> b!3659865 (= e!2266145 (contains!7653 (t!298357 (usedCharacters!1006 (regex!5794 anOtherTypeRule!33))) lt!1272440))))

(assert (= (and d!1074742 res!1485688) b!3659864))

(assert (= (and b!3659864 (not res!1485689)) b!3659865))

(assert (=> d!1074742 m!4165503))

(declare-fun m!4166223 () Bool)

(assert (=> d!1074742 m!4166223))

(declare-fun m!4166225 () Bool)

(assert (=> d!1074742 m!4166225))

(declare-fun m!4166227 () Bool)

(assert (=> b!3659865 m!4166227))

(assert (=> b!3659337 d!1074742))

(declare-fun bm!264709 () Bool)

(declare-fun call!264717 () List!38734)

(declare-fun c!632568 () Bool)

(assert (=> bm!264709 (= call!264717 (usedCharacters!1006 (ite c!632568 (regTwo!21619 (regex!5794 anOtherTypeRule!33)) (regOne!21618 (regex!5794 anOtherTypeRule!33)))))))

(declare-fun call!264716 () List!38734)

(declare-fun bm!264710 () Bool)

(declare-fun call!264715 () List!38734)

(assert (=> bm!264710 (= call!264716 (++!9610 (ite c!632568 call!264715 call!264717) (ite c!632568 call!264717 call!264715)))))

(declare-fun c!632570 () Bool)

(declare-fun bm!264711 () Bool)

(declare-fun call!264714 () List!38734)

(assert (=> bm!264711 (= call!264714 (usedCharacters!1006 (ite c!632570 (reg!10882 (regex!5794 anOtherTypeRule!33)) (ite c!632568 (regOne!21619 (regex!5794 anOtherTypeRule!33)) (regTwo!21618 (regex!5794 anOtherTypeRule!33))))))))

(declare-fun b!3659866 () Bool)

(declare-fun e!2266148 () List!38734)

(declare-fun e!2266147 () List!38734)

(assert (=> b!3659866 (= e!2266148 e!2266147)))

(assert (=> b!3659866 (= c!632568 ((_ is Union!10553) (regex!5794 anOtherTypeRule!33)))))

(declare-fun b!3659867 () Bool)

(declare-fun e!2266149 () List!38734)

(assert (=> b!3659867 (= e!2266149 Nil!38610)))

(declare-fun b!3659868 () Bool)

(assert (=> b!3659868 (= e!2266148 call!264714)))

(declare-fun b!3659869 () Bool)

(assert (=> b!3659869 (= c!632570 ((_ is Star!10553) (regex!5794 anOtherTypeRule!33)))))

(declare-fun e!2266146 () List!38734)

(assert (=> b!3659869 (= e!2266146 e!2266148)))

(declare-fun d!1074744 () Bool)

(declare-fun c!632569 () Bool)

(assert (=> d!1074744 (= c!632569 (or ((_ is EmptyExpr!10553) (regex!5794 anOtherTypeRule!33)) ((_ is EmptyLang!10553) (regex!5794 anOtherTypeRule!33))))))

(assert (=> d!1074744 (= (usedCharacters!1006 (regex!5794 anOtherTypeRule!33)) e!2266149)))

(declare-fun b!3659870 () Bool)

(assert (=> b!3659870 (= e!2266147 call!264716)))

(declare-fun bm!264712 () Bool)

(assert (=> bm!264712 (= call!264715 call!264714)))

(declare-fun b!3659871 () Bool)

(assert (=> b!3659871 (= e!2266149 e!2266146)))

(declare-fun c!632571 () Bool)

(assert (=> b!3659871 (= c!632571 ((_ is ElementMatch!10553) (regex!5794 anOtherTypeRule!33)))))

(declare-fun b!3659872 () Bool)

(assert (=> b!3659872 (= e!2266147 call!264716)))

(declare-fun b!3659873 () Bool)

(assert (=> b!3659873 (= e!2266146 (Cons!38610 (c!632456 (regex!5794 anOtherTypeRule!33)) Nil!38610))))

(assert (= (and d!1074744 c!632569) b!3659867))

(assert (= (and d!1074744 (not c!632569)) b!3659871))

(assert (= (and b!3659871 c!632571) b!3659873))

(assert (= (and b!3659871 (not c!632571)) b!3659869))

(assert (= (and b!3659869 c!632570) b!3659868))

(assert (= (and b!3659869 (not c!632570)) b!3659866))

(assert (= (and b!3659866 c!632568) b!3659870))

(assert (= (and b!3659866 (not c!632568)) b!3659872))

(assert (= (or b!3659870 b!3659872) bm!264712))

(assert (= (or b!3659870 b!3659872) bm!264709))

(assert (= (or b!3659870 b!3659872) bm!264710))

(assert (= (or b!3659868 bm!264712) bm!264711))

(declare-fun m!4166229 () Bool)

(assert (=> bm!264709 m!4166229))

(declare-fun m!4166231 () Bool)

(assert (=> bm!264710 m!4166231))

(declare-fun m!4166233 () Bool)

(assert (=> bm!264711 m!4166233))

(assert (=> b!3659337 d!1074744))

(declare-fun b!3659874 () Bool)

(declare-fun e!2266155 () Bool)

(assert (=> b!3659874 (= e!2266155 (not (= (head!7820 lt!1272441) (c!632456 (regex!5794 rule!403)))))))

(declare-fun b!3659875 () Bool)

(declare-fun e!2266152 () Bool)

(assert (=> b!3659875 (= e!2266152 e!2266155)))

(declare-fun res!1485696 () Bool)

(assert (=> b!3659875 (=> res!1485696 e!2266155)))

(declare-fun call!264718 () Bool)

(assert (=> b!3659875 (= res!1485696 call!264718)))

(declare-fun b!3659876 () Bool)

(declare-fun e!2266154 () Bool)

(declare-fun e!2266151 () Bool)

(assert (=> b!3659876 (= e!2266154 e!2266151)))

(declare-fun c!632574 () Bool)

(assert (=> b!3659876 (= c!632574 ((_ is EmptyLang!10553) (regex!5794 rule!403)))))

(declare-fun b!3659877 () Bool)

(declare-fun res!1485692 () Bool)

(declare-fun e!2266150 () Bool)

(assert (=> b!3659877 (=> res!1485692 e!2266150)))

(assert (=> b!3659877 (= res!1485692 (not ((_ is ElementMatch!10553) (regex!5794 rule!403))))))

(assert (=> b!3659877 (= e!2266151 e!2266150)))

(declare-fun b!3659878 () Bool)

(declare-fun lt!1272688 () Bool)

(assert (=> b!3659878 (= e!2266154 (= lt!1272688 call!264718))))

(declare-fun d!1074746 () Bool)

(assert (=> d!1074746 e!2266154))

(declare-fun c!632573 () Bool)

(assert (=> d!1074746 (= c!632573 ((_ is EmptyExpr!10553) (regex!5794 rule!403)))))

(declare-fun e!2266153 () Bool)

(assert (=> d!1074746 (= lt!1272688 e!2266153)))

(declare-fun c!632572 () Bool)

(assert (=> d!1074746 (= c!632572 (isEmpty!22896 lt!1272441))))

(assert (=> d!1074746 (validRegex!4830 (regex!5794 rule!403))))

(assert (=> d!1074746 (= (matchR!5122 (regex!5794 rule!403) lt!1272441) lt!1272688)))

(declare-fun b!3659879 () Bool)

(declare-fun res!1485693 () Bool)

(assert (=> b!3659879 (=> res!1485693 e!2266155)))

(assert (=> b!3659879 (= res!1485693 (not (isEmpty!22896 (tail!5666 lt!1272441))))))

(declare-fun b!3659880 () Bool)

(declare-fun res!1485694 () Bool)

(declare-fun e!2266156 () Bool)

(assert (=> b!3659880 (=> (not res!1485694) (not e!2266156))))

(assert (=> b!3659880 (= res!1485694 (not call!264718))))

(declare-fun b!3659881 () Bool)

(assert (=> b!3659881 (= e!2266156 (= (head!7820 lt!1272441) (c!632456 (regex!5794 rule!403))))))

(declare-fun b!3659882 () Bool)

(assert (=> b!3659882 (= e!2266153 (nullable!3669 (regex!5794 rule!403)))))

(declare-fun b!3659883 () Bool)

(assert (=> b!3659883 (= e!2266150 e!2266152)))

(declare-fun res!1485697 () Bool)

(assert (=> b!3659883 (=> (not res!1485697) (not e!2266152))))

(assert (=> b!3659883 (= res!1485697 (not lt!1272688))))

(declare-fun b!3659884 () Bool)

(assert (=> b!3659884 (= e!2266153 (matchR!5122 (derivativeStep!3217 (regex!5794 rule!403) (head!7820 lt!1272441)) (tail!5666 lt!1272441)))))

(declare-fun b!3659885 () Bool)

(declare-fun res!1485691 () Bool)

(assert (=> b!3659885 (=> (not res!1485691) (not e!2266156))))

(assert (=> b!3659885 (= res!1485691 (isEmpty!22896 (tail!5666 lt!1272441)))))

(declare-fun bm!264713 () Bool)

(assert (=> bm!264713 (= call!264718 (isEmpty!22896 lt!1272441))))

(declare-fun b!3659886 () Bool)

(assert (=> b!3659886 (= e!2266151 (not lt!1272688))))

(declare-fun b!3659887 () Bool)

(declare-fun res!1485690 () Bool)

(assert (=> b!3659887 (=> res!1485690 e!2266150)))

(assert (=> b!3659887 (= res!1485690 e!2266156)))

(declare-fun res!1485695 () Bool)

(assert (=> b!3659887 (=> (not res!1485695) (not e!2266156))))

(assert (=> b!3659887 (= res!1485695 lt!1272688)))

(assert (= (and d!1074746 c!632572) b!3659882))

(assert (= (and d!1074746 (not c!632572)) b!3659884))

(assert (= (and d!1074746 c!632573) b!3659878))

(assert (= (and d!1074746 (not c!632573)) b!3659876))

(assert (= (and b!3659876 c!632574) b!3659886))

(assert (= (and b!3659876 (not c!632574)) b!3659877))

(assert (= (and b!3659877 (not res!1485692)) b!3659887))

(assert (= (and b!3659887 res!1485695) b!3659880))

(assert (= (and b!3659880 res!1485694) b!3659885))

(assert (= (and b!3659885 res!1485691) b!3659881))

(assert (= (and b!3659887 (not res!1485690)) b!3659883))

(assert (= (and b!3659883 res!1485697) b!3659875))

(assert (= (and b!3659875 (not res!1485696)) b!3659879))

(assert (= (and b!3659879 (not res!1485693)) b!3659874))

(assert (= (or b!3659878 b!3659875 b!3659880) bm!264713))

(assert (=> b!3659884 m!4165843))

(assert (=> b!3659884 m!4165843))

(declare-fun m!4166235 () Bool)

(assert (=> b!3659884 m!4166235))

(assert (=> b!3659884 m!4165839))

(assert (=> b!3659884 m!4166235))

(assert (=> b!3659884 m!4165839))

(declare-fun m!4166237 () Bool)

(assert (=> b!3659884 m!4166237))

(declare-fun m!4166239 () Bool)

(assert (=> bm!264713 m!4166239))

(assert (=> b!3659881 m!4165843))

(assert (=> b!3659885 m!4165839))

(assert (=> b!3659885 m!4165839))

(declare-fun m!4166241 () Bool)

(assert (=> b!3659885 m!4166241))

(assert (=> d!1074746 m!4166239))

(assert (=> d!1074746 m!4165689))

(declare-fun m!4166243 () Bool)

(assert (=> b!3659882 m!4166243))

(assert (=> b!3659874 m!4165843))

(assert (=> b!3659879 m!4165839))

(assert (=> b!3659879 m!4165839))

(assert (=> b!3659879 m!4166241))

(assert (=> b!3659355 d!1074746))

(declare-fun d!1074748 () Bool)

(declare-fun res!1485709 () Bool)

(declare-fun e!2266163 () Bool)

(assert (=> d!1074748 (=> (not res!1485709) (not e!2266163))))

(assert (=> d!1074748 (= res!1485709 (validRegex!4830 (regex!5794 rule!403)))))

(assert (=> d!1074748 (= (ruleValid!2058 thiss!23823 rule!403) e!2266163)))

(declare-fun b!3659901 () Bool)

(declare-fun res!1485710 () Bool)

(assert (=> b!3659901 (=> (not res!1485710) (not e!2266163))))

(assert (=> b!3659901 (= res!1485710 (not (nullable!3669 (regex!5794 rule!403))))))

(declare-fun b!3659902 () Bool)

(assert (=> b!3659902 (= e!2266163 (not (= (tag!6570 rule!403) (String!43455 ""))))))

(assert (= (and d!1074748 res!1485709) b!3659901))

(assert (= (and b!3659901 res!1485710) b!3659902))

(assert (=> d!1074748 m!4165689))

(assert (=> b!3659901 m!4166243))

(assert (=> b!3659355 d!1074748))

(declare-fun d!1074750 () Bool)

(assert (=> d!1074750 (ruleValid!2058 thiss!23823 rule!403)))

(declare-fun lt!1272698 () Unit!55867)

(declare-fun choose!21652 (LexerInterface!5383 Rule!11388 List!38735) Unit!55867)

(assert (=> d!1074750 (= lt!1272698 (choose!21652 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1074750 (contains!7654 rules!3307 rule!403)))

(assert (=> d!1074750 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1212 thiss!23823 rule!403 rules!3307) lt!1272698)))

(declare-fun bs!572579 () Bool)

(assert (= bs!572579 d!1074750))

(assert (=> bs!572579 m!4165603))

(declare-fun m!4166291 () Bool)

(assert (=> bs!572579 m!4166291))

(assert (=> bs!572579 m!4165635))

(assert (=> b!3659355 d!1074750))

(declare-fun d!1074758 () Bool)

(declare-fun lt!1272699 () Bool)

(assert (=> d!1074758 (= lt!1272699 (select (content!5579 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2266169 () Bool)

(assert (=> d!1074758 (= lt!1272699 e!2266169)))

(declare-fun res!1485715 () Bool)

(assert (=> d!1074758 (=> (not res!1485715) (not e!2266169))))

(assert (=> d!1074758 (= res!1485715 ((_ is Cons!38611) rules!3307))))

(assert (=> d!1074758 (= (contains!7654 rules!3307 anOtherTypeRule!33) lt!1272699)))

(declare-fun b!3659907 () Bool)

(declare-fun e!2266168 () Bool)

(assert (=> b!3659907 (= e!2266169 e!2266168)))

(declare-fun res!1485716 () Bool)

(assert (=> b!3659907 (=> res!1485716 e!2266168)))

(assert (=> b!3659907 (= res!1485716 (= (h!44031 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3659908 () Bool)

(assert (=> b!3659908 (= e!2266168 (contains!7654 (t!298358 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1074758 res!1485715) b!3659907))

(assert (= (and b!3659907 (not res!1485716)) b!3659908))

(assert (=> d!1074758 m!4166211))

(declare-fun m!4166293 () Bool)

(assert (=> d!1074758 m!4166293))

(declare-fun m!4166295 () Bool)

(assert (=> b!3659908 m!4166295))

(assert (=> b!3659356 d!1074758))

(declare-fun d!1074760 () Bool)

(declare-fun res!1485723 () Bool)

(declare-fun e!2266176 () Bool)

(assert (=> d!1074760 (=> res!1485723 e!2266176)))

(assert (=> d!1074760 (= res!1485723 (not ((_ is Cons!38611) rules!3307)))))

(assert (=> d!1074760 (= (sepAndNonSepRulesDisjointChars!1962 rules!3307 rules!3307) e!2266176)))

(declare-fun b!3659915 () Bool)

(declare-fun e!2266177 () Bool)

(assert (=> b!3659915 (= e!2266176 e!2266177)))

(declare-fun res!1485724 () Bool)

(assert (=> b!3659915 (=> (not res!1485724) (not e!2266177))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!893 (Rule!11388 List!38735) Bool)

(assert (=> b!3659915 (= res!1485724 (ruleDisjointCharsFromAllFromOtherType!893 (h!44031 rules!3307) rules!3307))))

(declare-fun b!3659916 () Bool)

(assert (=> b!3659916 (= e!2266177 (sepAndNonSepRulesDisjointChars!1962 rules!3307 (t!298358 rules!3307)))))

(assert (= (and d!1074760 (not res!1485723)) b!3659915))

(assert (= (and b!3659915 res!1485724) b!3659916))

(declare-fun m!4166303 () Bool)

(assert (=> b!3659915 m!4166303))

(declare-fun m!4166305 () Bool)

(assert (=> b!3659916 m!4166305))

(assert (=> b!3659354 d!1074760))

(declare-fun d!1074764 () Bool)

(assert (=> d!1074764 (= (isEmpty!22897 rules!3307) ((_ is Nil!38611) rules!3307))))

(assert (=> b!3659375 d!1074764))

(declare-fun d!1074766 () Bool)

(assert (=> d!1074766 (= (apply!9296 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422))))

(declare-fun b_lambda!108555 () Bool)

(assert (=> (not b_lambda!108555) (not d!1074766)))

(declare-fun t!298432 () Bool)

(declare-fun tb!211453 () Bool)

(assert (=> (and b!3659336 (= (toValue!8086 (transformation!5794 anOtherTypeRule!33)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298432) tb!211453))

(declare-fun result!257442 () Bool)

(assert (=> tb!211453 (= result!257442 (inv!21 (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422)))))

(declare-fun m!4166307 () Bool)

(assert (=> tb!211453 m!4166307))

(assert (=> d!1074766 t!298432))

(declare-fun b_and!271555 () Bool)

(assert (= b_and!271459 (and (=> t!298432 result!257442) b_and!271555)))

(declare-fun t!298434 () Bool)

(declare-fun tb!211455 () Bool)

(assert (=> (and b!3659371 (= (toValue!8086 (transformation!5794 (h!44031 rules!3307))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298434) tb!211455))

(declare-fun result!257444 () Bool)

(assert (= result!257444 result!257442))

(assert (=> d!1074766 t!298434))

(declare-fun b_and!271557 () Bool)

(assert (= b_and!271461 (and (=> t!298434 result!257444) b_and!271557)))

(declare-fun t!298436 () Bool)

(declare-fun tb!211457 () Bool)

(assert (=> (and b!3659361 (= (toValue!8086 (transformation!5794 rule!403)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298436) tb!211457))

(declare-fun result!257446 () Bool)

(assert (= result!257446 result!257442))

(assert (=> d!1074766 t!298436))

(declare-fun b_and!271559 () Bool)

(assert (= b_and!271463 (and (=> t!298436 result!257446) b_and!271559)))

(declare-fun t!298438 () Bool)

(declare-fun tb!211459 () Bool)

(assert (=> (and b!3659331 (= (toValue!8086 (transformation!5794 (rule!8604 token!511))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298438) tb!211459))

(declare-fun result!257448 () Bool)

(assert (= result!257448 result!257442))

(assert (=> d!1074766 t!298438))

(declare-fun b_and!271561 () Bool)

(assert (= b_and!271465 (and (=> t!298438 result!257448) b_and!271561)))

(declare-fun m!4166309 () Bool)

(assert (=> d!1074766 m!4166309))

(assert (=> b!3659376 d!1074766))

(declare-fun d!1074768 () Bool)

(assert (=> d!1074768 (= (size!29497 (_1!22370 lt!1272444)) (size!29499 (originalCharacters!6508 (_1!22370 lt!1272444))))))

(declare-fun Unit!55885 () Unit!55867)

(assert (=> d!1074768 (= (lemmaCharactersSize!839 (_1!22370 lt!1272444)) Unit!55885)))

(declare-fun bs!572580 () Bool)

(assert (= bs!572580 d!1074768))

(declare-fun m!4166311 () Bool)

(assert (=> bs!572580 m!4166311))

(assert (=> b!3659376 d!1074768))

(declare-fun b!3660115 () Bool)

(declare-fun e!2266287 () Bool)

(assert (=> b!3660115 (= e!2266287 true)))

(declare-fun d!1074770 () Bool)

(assert (=> d!1074770 e!2266287))

(assert (= d!1074770 b!3660115))

(declare-fun lambda!124560 () Int)

(declare-fun order!21309 () Int)

(declare-fun order!21307 () Int)

(declare-fun dynLambda!16862 (Int Int) Int)

(declare-fun dynLambda!16863 (Int Int) Int)

(assert (=> b!3660115 (< (dynLambda!16862 order!21307 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) (dynLambda!16863 order!21309 lambda!124560))))

(declare-fun order!21311 () Int)

(declare-fun dynLambda!16864 (Int Int) Int)

(assert (=> b!3660115 (< (dynLambda!16864 order!21311 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) (dynLambda!16863 order!21309 lambda!124560))))

(assert (=> d!1074770 (= (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444)))))))

(declare-fun lt!1272816 () Unit!55867)

(declare-fun Forall2of!384 (Int BalanceConc!23224 BalanceConc!23224) Unit!55867)

(assert (=> d!1074770 (= lt!1272816 (Forall2of!384 lambda!124560 lt!1272422 (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444)))))))

(assert (=> d!1074770 (= (list!14320 lt!1272422) (list!14320 (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444)))))))

(assert (=> d!1074770 (= (lemmaEqSameImage!977 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422 (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444)))) lt!1272816)))

(declare-fun b_lambda!108563 () Bool)

(assert (=> (not b_lambda!108563) (not d!1074770)))

(assert (=> d!1074770 t!298432))

(declare-fun b_and!271575 () Bool)

(assert (= b_and!271555 (and (=> t!298432 result!257442) b_and!271575)))

(assert (=> d!1074770 t!298434))

(declare-fun b_and!271577 () Bool)

(assert (= b_and!271557 (and (=> t!298434 result!257444) b_and!271577)))

(assert (=> d!1074770 t!298436))

(declare-fun b_and!271579 () Bool)

(assert (= b_and!271559 (and (=> t!298436 result!257446) b_and!271579)))

(assert (=> d!1074770 t!298438))

(declare-fun b_and!271581 () Bool)

(assert (= b_and!271561 (and (=> t!298438 result!257448) b_and!271581)))

(declare-fun b_lambda!108565 () Bool)

(assert (=> (not b_lambda!108565) (not d!1074770)))

(declare-fun tb!211473 () Bool)

(declare-fun t!298452 () Bool)

(assert (=> (and b!3659336 (= (toValue!8086 (transformation!5794 anOtherTypeRule!33)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298452) tb!211473))

(declare-fun result!257468 () Bool)

(assert (=> tb!211473 (= result!257468 (inv!21 (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444))))))))

(declare-fun m!4166575 () Bool)

(assert (=> tb!211473 m!4166575))

(assert (=> d!1074770 t!298452))

(declare-fun b_and!271583 () Bool)

(assert (= b_and!271575 (and (=> t!298452 result!257468) b_and!271583)))

(declare-fun t!298454 () Bool)

(declare-fun tb!211475 () Bool)

(assert (=> (and b!3659371 (= (toValue!8086 (transformation!5794 (h!44031 rules!3307))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298454) tb!211475))

(declare-fun result!257470 () Bool)

(assert (= result!257470 result!257468))

(assert (=> d!1074770 t!298454))

(declare-fun b_and!271585 () Bool)

(assert (= b_and!271577 (and (=> t!298454 result!257470) b_and!271585)))

(declare-fun t!298456 () Bool)

(declare-fun tb!211477 () Bool)

(assert (=> (and b!3659361 (= (toValue!8086 (transformation!5794 rule!403)) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298456) tb!211477))

(declare-fun result!257472 () Bool)

(assert (= result!257472 result!257468))

(assert (=> d!1074770 t!298456))

(declare-fun b_and!271587 () Bool)

(assert (= b_and!271579 (and (=> t!298456 result!257472) b_and!271587)))

(declare-fun t!298458 () Bool)

(declare-fun tb!211479 () Bool)

(assert (=> (and b!3659331 (= (toValue!8086 (transformation!5794 (rule!8604 token!511))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298458) tb!211479))

(declare-fun result!257474 () Bool)

(assert (= result!257474 result!257468))

(assert (=> d!1074770 t!298458))

(declare-fun b_and!271589 () Bool)

(assert (= b_and!271581 (and (=> t!298458 result!257474) b_and!271589)))

(assert (=> d!1074770 m!4166309))

(assert (=> d!1074770 m!4165529))

(declare-fun m!4166577 () Bool)

(assert (=> d!1074770 m!4166577))

(assert (=> d!1074770 m!4165565))

(assert (=> d!1074770 m!4165529))

(declare-fun m!4166579 () Bool)

(assert (=> d!1074770 m!4166579))

(assert (=> d!1074770 m!4165529))

(declare-fun m!4166581 () Bool)

(assert (=> d!1074770 m!4166581))

(assert (=> b!3659376 d!1074770))

(declare-fun d!1074850 () Bool)

(assert (=> d!1074850 (= (seqFromList!4343 (originalCharacters!6508 (_1!22370 lt!1272444))) (fromListB!2005 (originalCharacters!6508 (_1!22370 lt!1272444))))))

(declare-fun bs!572593 () Bool)

(assert (= bs!572593 d!1074850))

(declare-fun m!4166583 () Bool)

(assert (=> bs!572593 m!4166583))

(assert (=> b!3659376 d!1074850))

(declare-fun b!3660120 () Bool)

(declare-fun e!2266291 () Bool)

(assert (=> b!3660120 (= e!2266291 true)))

(declare-fun d!1074852 () Bool)

(assert (=> d!1074852 e!2266291))

(assert (= d!1074852 b!3660120))

(declare-fun lambda!124563 () Int)

(declare-fun order!21313 () Int)

(declare-fun dynLambda!16865 (Int Int) Int)

(assert (=> b!3660120 (< (dynLambda!16862 order!21307 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) (dynLambda!16865 order!21313 lambda!124563))))

(assert (=> b!3660120 (< (dynLambda!16864 order!21311 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) (dynLambda!16865 order!21313 lambda!124563))))

(assert (=> d!1074852 (= (list!14320 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422))) (list!14320 lt!1272422))))

(declare-fun lt!1272819 () Unit!55867)

(declare-fun ForallOf!726 (Int BalanceConc!23224) Unit!55867)

(assert (=> d!1074852 (= lt!1272819 (ForallOf!726 lambda!124563 lt!1272422))))

(assert (=> d!1074852 (= (lemmaSemiInverse!1543 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272422) lt!1272819)))

(declare-fun b_lambda!108567 () Bool)

(assert (=> (not b_lambda!108567) (not d!1074852)))

(declare-fun t!298460 () Bool)

(declare-fun tb!211481 () Bool)

(assert (=> (and b!3659336 (= (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298460) tb!211481))

(declare-fun e!2266292 () Bool)

(declare-fun b!3660121 () Bool)

(declare-fun tp!1114932 () Bool)

(assert (=> b!3660121 (= e!2266292 (and (inv!52079 (c!632457 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422)))) tp!1114932))))

(declare-fun result!257476 () Bool)

(assert (=> tb!211481 (= result!257476 (and (inv!52080 (dynLambda!16861 (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) (dynLambda!16860 (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444)))) lt!1272422))) e!2266292))))

(assert (= tb!211481 b!3660121))

(declare-fun m!4166585 () Bool)

(assert (=> b!3660121 m!4166585))

(declare-fun m!4166587 () Bool)

(assert (=> tb!211481 m!4166587))

(assert (=> d!1074852 t!298460))

(declare-fun b_and!271591 () Bool)

(assert (= b_and!271547 (and (=> t!298460 result!257476) b_and!271591)))

(declare-fun t!298462 () Bool)

(declare-fun tb!211483 () Bool)

(assert (=> (and b!3659371 (= (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298462) tb!211483))

(declare-fun result!257478 () Bool)

(assert (= result!257478 result!257476))

(assert (=> d!1074852 t!298462))

(declare-fun b_and!271593 () Bool)

(assert (= b_and!271549 (and (=> t!298462 result!257478) b_and!271593)))

(declare-fun t!298464 () Bool)

(declare-fun tb!211485 () Bool)

(assert (=> (and b!3659361 (= (toChars!7945 (transformation!5794 rule!403)) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298464) tb!211485))

(declare-fun result!257480 () Bool)

(assert (= result!257480 result!257476))

(assert (=> d!1074852 t!298464))

(declare-fun b_and!271595 () Bool)

(assert (= b_and!271551 (and (=> t!298464 result!257480) b_and!271595)))

(declare-fun t!298466 () Bool)

(declare-fun tb!211487 () Bool)

(assert (=> (and b!3659331 (= (toChars!7945 (transformation!5794 (rule!8604 token!511))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298466) tb!211487))

(declare-fun result!257482 () Bool)

(assert (= result!257482 result!257476))

(assert (=> d!1074852 t!298466))

(declare-fun b_and!271597 () Bool)

(assert (= b_and!271553 (and (=> t!298466 result!257482) b_and!271597)))

(declare-fun b_lambda!108569 () Bool)

(assert (=> (not b_lambda!108569) (not d!1074852)))

(assert (=> d!1074852 t!298432))

(declare-fun b_and!271599 () Bool)

(assert (= b_and!271583 (and (=> t!298432 result!257442) b_and!271599)))

(assert (=> d!1074852 t!298434))

(declare-fun b_and!271601 () Bool)

(assert (= b_and!271585 (and (=> t!298434 result!257444) b_and!271601)))

(assert (=> d!1074852 t!298436))

(declare-fun b_and!271603 () Bool)

(assert (= b_and!271587 (and (=> t!298436 result!257446) b_and!271603)))

(assert (=> d!1074852 t!298438))

(declare-fun b_and!271605 () Bool)

(assert (= b_and!271589 (and (=> t!298438 result!257448) b_and!271605)))

(declare-fun m!4166589 () Bool)

(assert (=> d!1074852 m!4166589))

(declare-fun m!4166591 () Bool)

(assert (=> d!1074852 m!4166591))

(assert (=> d!1074852 m!4166309))

(assert (=> d!1074852 m!4165565))

(declare-fun m!4166593 () Bool)

(assert (=> d!1074852 m!4166593))

(assert (=> d!1074852 m!4166309))

(assert (=> d!1074852 m!4166589))

(assert (=> b!3659376 d!1074852))

(declare-fun d!1074854 () Bool)

(declare-fun lt!1272820 () Int)

(assert (=> d!1074854 (= lt!1272820 (size!29499 (list!14320 lt!1272422)))))

(assert (=> d!1074854 (= lt!1272820 (size!29501 (c!632457 lt!1272422)))))

(assert (=> d!1074854 (= (size!29498 lt!1272422) lt!1272820)))

(declare-fun bs!572594 () Bool)

(assert (= bs!572594 d!1074854))

(assert (=> bs!572594 m!4165565))

(assert (=> bs!572594 m!4165565))

(declare-fun m!4166595 () Bool)

(assert (=> bs!572594 m!4166595))

(declare-fun m!4166597 () Bool)

(assert (=> bs!572594 m!4166597))

(assert (=> b!3659376 d!1074854))

(declare-fun b!3660122 () Bool)

(declare-fun e!2266298 () Bool)

(assert (=> b!3660122 (= e!2266298 (not (= (head!7820 lt!1272423) (c!632456 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))))

(declare-fun b!3660123 () Bool)

(declare-fun e!2266295 () Bool)

(assert (=> b!3660123 (= e!2266295 e!2266298)))

(declare-fun res!1485822 () Bool)

(assert (=> b!3660123 (=> res!1485822 e!2266298)))

(declare-fun call!264728 () Bool)

(assert (=> b!3660123 (= res!1485822 call!264728)))

(declare-fun b!3660124 () Bool)

(declare-fun e!2266297 () Bool)

(declare-fun e!2266294 () Bool)

(assert (=> b!3660124 (= e!2266297 e!2266294)))

(declare-fun c!632609 () Bool)

(assert (=> b!3660124 (= c!632609 ((_ is EmptyLang!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3660125 () Bool)

(declare-fun res!1485818 () Bool)

(declare-fun e!2266293 () Bool)

(assert (=> b!3660125 (=> res!1485818 e!2266293)))

(assert (=> b!3660125 (= res!1485818 (not ((_ is ElementMatch!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))))

(assert (=> b!3660125 (= e!2266294 e!2266293)))

(declare-fun b!3660126 () Bool)

(declare-fun lt!1272821 () Bool)

(assert (=> b!3660126 (= e!2266297 (= lt!1272821 call!264728))))

(declare-fun d!1074856 () Bool)

(assert (=> d!1074856 e!2266297))

(declare-fun c!632608 () Bool)

(assert (=> d!1074856 (= c!632608 ((_ is EmptyExpr!10553) (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun e!2266296 () Bool)

(assert (=> d!1074856 (= lt!1272821 e!2266296)))

(declare-fun c!632607 () Bool)

(assert (=> d!1074856 (= c!632607 (isEmpty!22896 lt!1272423))))

(assert (=> d!1074856 (validRegex!4830 (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))

(assert (=> d!1074856 (= (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423) lt!1272821)))

(declare-fun b!3660127 () Bool)

(declare-fun res!1485819 () Bool)

(assert (=> b!3660127 (=> res!1485819 e!2266298)))

(assert (=> b!3660127 (= res!1485819 (not (isEmpty!22896 (tail!5666 lt!1272423))))))

(declare-fun b!3660128 () Bool)

(declare-fun res!1485820 () Bool)

(declare-fun e!2266299 () Bool)

(assert (=> b!3660128 (=> (not res!1485820) (not e!2266299))))

(assert (=> b!3660128 (= res!1485820 (not call!264728))))

(declare-fun b!3660129 () Bool)

(assert (=> b!3660129 (= e!2266299 (= (head!7820 lt!1272423) (c!632456 (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))))

(declare-fun b!3660130 () Bool)

(assert (=> b!3660130 (= e!2266296 (nullable!3669 (regex!5794 (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3660131 () Bool)

(assert (=> b!3660131 (= e!2266293 e!2266295)))

(declare-fun res!1485823 () Bool)

(assert (=> b!3660131 (=> (not res!1485823) (not e!2266295))))

(assert (=> b!3660131 (= res!1485823 (not lt!1272821))))

(declare-fun b!3660132 () Bool)

(assert (=> b!3660132 (= e!2266296 (matchR!5122 (derivativeStep!3217 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) (head!7820 lt!1272423)) (tail!5666 lt!1272423)))))

(declare-fun b!3660133 () Bool)

(declare-fun res!1485817 () Bool)

(assert (=> b!3660133 (=> (not res!1485817) (not e!2266299))))

(assert (=> b!3660133 (= res!1485817 (isEmpty!22896 (tail!5666 lt!1272423)))))

(declare-fun bm!264723 () Bool)

(assert (=> bm!264723 (= call!264728 (isEmpty!22896 lt!1272423))))

(declare-fun b!3660134 () Bool)

(assert (=> b!3660134 (= e!2266294 (not lt!1272821))))

(declare-fun b!3660135 () Bool)

(declare-fun res!1485816 () Bool)

(assert (=> b!3660135 (=> res!1485816 e!2266293)))

(assert (=> b!3660135 (= res!1485816 e!2266299)))

(declare-fun res!1485821 () Bool)

(assert (=> b!3660135 (=> (not res!1485821) (not e!2266299))))

(assert (=> b!3660135 (= res!1485821 lt!1272821)))

(assert (= (and d!1074856 c!632607) b!3660130))

(assert (= (and d!1074856 (not c!632607)) b!3660132))

(assert (= (and d!1074856 c!632608) b!3660126))

(assert (= (and d!1074856 (not c!632608)) b!3660124))

(assert (= (and b!3660124 c!632609) b!3660134))

(assert (= (and b!3660124 (not c!632609)) b!3660125))

(assert (= (and b!3660125 (not res!1485818)) b!3660135))

(assert (= (and b!3660135 res!1485821) b!3660128))

(assert (= (and b!3660128 res!1485820) b!3660133))

(assert (= (and b!3660133 res!1485817) b!3660129))

(assert (= (and b!3660135 (not res!1485816)) b!3660131))

(assert (= (and b!3660131 res!1485823) b!3660123))

(assert (= (and b!3660123 (not res!1485822)) b!3660127))

(assert (= (and b!3660127 (not res!1485819)) b!3660122))

(assert (= (or b!3660126 b!3660123 b!3660128) bm!264723))

(assert (=> b!3660132 m!4165619))

(assert (=> b!3660132 m!4165619))

(declare-fun m!4166599 () Bool)

(assert (=> b!3660132 m!4166599))

(assert (=> b!3660132 m!4166087))

(assert (=> b!3660132 m!4166599))

(assert (=> b!3660132 m!4166087))

(declare-fun m!4166601 () Bool)

(assert (=> b!3660132 m!4166601))

(declare-fun m!4166603 () Bool)

(assert (=> bm!264723 m!4166603))

(assert (=> b!3660129 m!4165619))

(assert (=> b!3660133 m!4166087))

(assert (=> b!3660133 m!4166087))

(declare-fun m!4166605 () Bool)

(assert (=> b!3660133 m!4166605))

(assert (=> d!1074856 m!4166603))

(assert (=> d!1074856 m!4166187))

(declare-fun m!4166607 () Bool)

(assert (=> b!3660130 m!4166607))

(assert (=> b!3660122 m!4165619))

(assert (=> b!3660127 m!4166087))

(assert (=> b!3660127 m!4166087))

(assert (=> b!3660127 m!4166605))

(assert (=> b!3659374 d!1074856))

(declare-fun d!1074858 () Bool)

(assert (=> d!1074858 (not (matchR!5122 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423))))

(declare-fun lt!1272822 () Unit!55867)

(assert (=> d!1074858 (= lt!1272822 (choose!21635 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272431))))

(assert (=> d!1074858 (validRegex!4830 (regex!5794 (rule!8604 (_1!22370 lt!1272444))))))

(assert (=> d!1074858 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!742 (regex!5794 (rule!8604 (_1!22370 lt!1272444))) lt!1272423 lt!1272431) lt!1272822)))

(declare-fun bs!572595 () Bool)

(assert (= bs!572595 d!1074858))

(assert (=> bs!572595 m!4165537))

(declare-fun m!4166609 () Bool)

(assert (=> bs!572595 m!4166609))

(assert (=> bs!572595 m!4166187))

(assert (=> bm!264662 d!1074858))

(declare-fun d!1074860 () Bool)

(assert (=> d!1074860 (= (isEmpty!22896 suffix!1395) ((_ is Nil!38610) suffix!1395))))

(assert (=> b!3659353 d!1074860))

(declare-fun d!1074862 () Bool)

(assert (=> d!1074862 (= (inv!52072 (tag!6570 (h!44031 rules!3307))) (= (mod (str.len (value!185588 (tag!6570 (h!44031 rules!3307)))) 2) 0))))

(assert (=> b!3659334 d!1074862))

(declare-fun d!1074864 () Bool)

(declare-fun res!1485824 () Bool)

(declare-fun e!2266300 () Bool)

(assert (=> d!1074864 (=> (not res!1485824) (not e!2266300))))

(assert (=> d!1074864 (= res!1485824 (semiInverseModEq!2468 (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toValue!8086 (transformation!5794 (h!44031 rules!3307)))))))

(assert (=> d!1074864 (= (inv!52076 (transformation!5794 (h!44031 rules!3307))) e!2266300)))

(declare-fun b!3660136 () Bool)

(assert (=> b!3660136 (= e!2266300 (equivClasses!2367 (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toValue!8086 (transformation!5794 (h!44031 rules!3307)))))))

(assert (= (and d!1074864 res!1485824) b!3660136))

(declare-fun m!4166611 () Bool)

(assert (=> d!1074864 m!4166611))

(declare-fun m!4166613 () Bool)

(assert (=> b!3660136 m!4166613))

(assert (=> b!3659334 d!1074864))

(declare-fun b!3660146 () Bool)

(declare-fun e!2266307 () Int)

(declare-fun e!2266306 () Int)

(assert (=> b!3660146 (= e!2266307 e!2266306)))

(declare-fun c!632614 () Bool)

(assert (=> b!3660146 (= c!632614 (and ((_ is Cons!38611) rules!3307) (not (= (h!44031 rules!3307) (rule!8604 (_1!22370 lt!1272444))))))))

(declare-fun b!3660147 () Bool)

(assert (=> b!3660147 (= e!2266306 (+ 1 (getIndex!462 (t!298358 rules!3307) (rule!8604 (_1!22370 lt!1272444)))))))

(declare-fun b!3660145 () Bool)

(assert (=> b!3660145 (= e!2266307 0)))

(declare-fun d!1074866 () Bool)

(declare-fun lt!1272825 () Int)

(assert (=> d!1074866 (>= lt!1272825 0)))

(assert (=> d!1074866 (= lt!1272825 e!2266307)))

(declare-fun c!632615 () Bool)

(assert (=> d!1074866 (= c!632615 (and ((_ is Cons!38611) rules!3307) (= (h!44031 rules!3307) (rule!8604 (_1!22370 lt!1272444)))))))

(assert (=> d!1074866 (contains!7654 rules!3307 (rule!8604 (_1!22370 lt!1272444)))))

(assert (=> d!1074866 (= (getIndex!462 rules!3307 (rule!8604 (_1!22370 lt!1272444))) lt!1272825)))

(declare-fun b!3660148 () Bool)

(assert (=> b!3660148 (= e!2266306 (- 1))))

(assert (= (and d!1074866 c!632615) b!3660145))

(assert (= (and d!1074866 (not c!632615)) b!3660146))

(assert (= (and b!3660146 c!632614) b!3660147))

(assert (= (and b!3660146 (not c!632614)) b!3660148))

(declare-fun m!4166615 () Bool)

(assert (=> b!3660147 m!4166615))

(declare-fun m!4166617 () Bool)

(assert (=> d!1074866 m!4166617))

(assert (=> b!3659351 d!1074866))

(declare-fun b!3660150 () Bool)

(declare-fun e!2266309 () Int)

(declare-fun e!2266308 () Int)

(assert (=> b!3660150 (= e!2266309 e!2266308)))

(declare-fun c!632616 () Bool)

(assert (=> b!3660150 (= c!632616 (and ((_ is Cons!38611) rules!3307) (not (= (h!44031 rules!3307) rule!403))))))

(declare-fun b!3660151 () Bool)

(assert (=> b!3660151 (= e!2266308 (+ 1 (getIndex!462 (t!298358 rules!3307) rule!403)))))

(declare-fun b!3660149 () Bool)

(assert (=> b!3660149 (= e!2266309 0)))

(declare-fun d!1074868 () Bool)

(declare-fun lt!1272826 () Int)

(assert (=> d!1074868 (>= lt!1272826 0)))

(assert (=> d!1074868 (= lt!1272826 e!2266309)))

(declare-fun c!632617 () Bool)

(assert (=> d!1074868 (= c!632617 (and ((_ is Cons!38611) rules!3307) (= (h!44031 rules!3307) rule!403)))))

(assert (=> d!1074868 (contains!7654 rules!3307 rule!403)))

(assert (=> d!1074868 (= (getIndex!462 rules!3307 rule!403) lt!1272826)))

(declare-fun b!3660152 () Bool)

(assert (=> b!3660152 (= e!2266308 (- 1))))

(assert (= (and d!1074868 c!632617) b!3660149))

(assert (= (and d!1074868 (not c!632617)) b!3660150))

(assert (= (and b!3660150 c!632616) b!3660151))

(assert (= (and b!3660150 (not c!632616)) b!3660152))

(declare-fun m!4166619 () Bool)

(assert (=> b!3660151 m!4166619))

(assert (=> d!1074868 m!4165635))

(assert (=> b!3659351 d!1074868))

(declare-fun d!1074870 () Bool)

(assert (=> d!1074870 (= (inv!52072 (tag!6570 anOtherTypeRule!33)) (= (mod (str.len (value!185588 (tag!6570 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3659373 d!1074870))

(declare-fun d!1074872 () Bool)

(declare-fun res!1485825 () Bool)

(declare-fun e!2266310 () Bool)

(assert (=> d!1074872 (=> (not res!1485825) (not e!2266310))))

(assert (=> d!1074872 (= res!1485825 (semiInverseModEq!2468 (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toValue!8086 (transformation!5794 anOtherTypeRule!33))))))

(assert (=> d!1074872 (= (inv!52076 (transformation!5794 anOtherTypeRule!33)) e!2266310)))

(declare-fun b!3660153 () Bool)

(assert (=> b!3660153 (= e!2266310 (equivClasses!2367 (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toValue!8086 (transformation!5794 anOtherTypeRule!33))))))

(assert (= (and d!1074872 res!1485825) b!3660153))

(declare-fun m!4166621 () Bool)

(assert (=> d!1074872 m!4166621))

(declare-fun m!4166623 () Bool)

(assert (=> b!3660153 m!4166623))

(assert (=> b!3659373 d!1074872))

(declare-fun b!3660164 () Bool)

(declare-fun b_free!96557 () Bool)

(declare-fun b_next!97261 () Bool)

(assert (=> b!3660164 (= b_free!96557 (not b_next!97261))))

(declare-fun t!298468 () Bool)

(declare-fun tb!211489 () Bool)

(assert (=> (and b!3660164 (= (toValue!8086 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298468) tb!211489))

(declare-fun result!257486 () Bool)

(assert (= result!257486 result!257442))

(assert (=> d!1074770 t!298468))

(assert (=> d!1074852 t!298468))

(declare-fun t!298470 () Bool)

(declare-fun tb!211491 () Bool)

(assert (=> (and b!3660164 (= (toValue!8086 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298470) tb!211491))

(declare-fun result!257488 () Bool)

(assert (= result!257488 result!257468))

(assert (=> d!1074770 t!298470))

(declare-fun tb!211493 () Bool)

(declare-fun t!298472 () Bool)

(assert (=> (and b!3660164 (= (toValue!8086 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toValue!8086 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298472) tb!211493))

(declare-fun result!257490 () Bool)

(assert (= result!257490 result!257362))

(assert (=> d!1074580 t!298472))

(assert (=> d!1074766 t!298468))

(declare-fun tp!1114944 () Bool)

(declare-fun b_and!271607 () Bool)

(assert (=> b!3660164 (= tp!1114944 (and (=> t!298472 result!257490) (=> t!298468 result!257486) (=> t!298470 result!257488) b_and!271607))))

(declare-fun b_free!96559 () Bool)

(declare-fun b_next!97263 () Bool)

(assert (=> b!3660164 (= b_free!96559 (not b_next!97263))))

(declare-fun tb!211495 () Bool)

(declare-fun t!298474 () Bool)

(assert (=> (and b!3660164 (= (toChars!7945 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298474) tb!211495))

(declare-fun result!257492 () Bool)

(assert (= result!257492 result!257372))

(assert (=> d!1074586 t!298474))

(declare-fun t!298476 () Bool)

(declare-fun tb!211497 () Bool)

(assert (=> (and b!3660164 (= (toChars!7945 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toChars!7945 (transformation!5794 (rule!8604 token!511)))) t!298476) tb!211497))

(declare-fun result!257494 () Bool)

(assert (= result!257494 result!257382))

(assert (=> d!1074596 t!298476))

(assert (=> b!3659817 t!298476))

(declare-fun t!298478 () Bool)

(declare-fun tb!211499 () Bool)

(assert (=> (and b!3660164 (= (toChars!7945 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toChars!7945 (transformation!5794 (rule!8604 (_1!22370 lt!1272444))))) t!298478) tb!211499))

(declare-fun result!257496 () Bool)

(assert (= result!257496 result!257476))

(assert (=> d!1074852 t!298478))

(declare-fun b_and!271609 () Bool)

(declare-fun tp!1114943 () Bool)

(assert (=> b!3660164 (= tp!1114943 (and (=> t!298474 result!257492) (=> t!298476 result!257494) (=> t!298478 result!257496) b_and!271609))))

(declare-fun e!2266319 () Bool)

(assert (=> b!3660164 (= e!2266319 (and tp!1114944 tp!1114943))))

(declare-fun b!3660163 () Bool)

(declare-fun e!2266322 () Bool)

(declare-fun tp!1114942 () Bool)

(assert (=> b!3660163 (= e!2266322 (and tp!1114942 (inv!52072 (tag!6570 (h!44031 (t!298358 rules!3307)))) (inv!52076 (transformation!5794 (h!44031 (t!298358 rules!3307)))) e!2266319))))

(declare-fun b!3660162 () Bool)

(declare-fun e!2266321 () Bool)

(declare-fun tp!1114941 () Bool)

(assert (=> b!3660162 (= e!2266321 (and e!2266322 tp!1114941))))

(assert (=> b!3659333 (= tp!1114868 e!2266321)))

(assert (= b!3660163 b!3660164))

(assert (= b!3660162 b!3660163))

(assert (= (and b!3659333 ((_ is Cons!38611) (t!298358 rules!3307))) b!3660162))

(declare-fun m!4166625 () Bool)

(assert (=> b!3660163 m!4166625))

(declare-fun m!4166627 () Bool)

(assert (=> b!3660163 m!4166627))

(declare-fun b!3660169 () Bool)

(declare-fun e!2266325 () Bool)

(declare-fun tp!1114947 () Bool)

(assert (=> b!3660169 (= e!2266325 (and tp_is_empty!18189 tp!1114947))))

(assert (=> b!3659341 (= tp!1114871 e!2266325)))

(assert (= (and b!3659341 ((_ is Cons!38610) (originalCharacters!6508 token!511))) b!3660169))

(declare-fun b!3660181 () Bool)

(declare-fun e!2266328 () Bool)

(declare-fun tp!1114960 () Bool)

(declare-fun tp!1114958 () Bool)

(assert (=> b!3660181 (= e!2266328 (and tp!1114960 tp!1114958))))

(declare-fun b!3660180 () Bool)

(assert (=> b!3660180 (= e!2266328 tp_is_empty!18189)))

(declare-fun b!3660183 () Bool)

(declare-fun tp!1114959 () Bool)

(declare-fun tp!1114962 () Bool)

(assert (=> b!3660183 (= e!2266328 (and tp!1114959 tp!1114962))))

(assert (=> b!3659334 (= tp!1114872 e!2266328)))

(declare-fun b!3660182 () Bool)

(declare-fun tp!1114961 () Bool)

(assert (=> b!3660182 (= e!2266328 tp!1114961)))

(assert (= (and b!3659334 ((_ is ElementMatch!10553) (regex!5794 (h!44031 rules!3307)))) b!3660180))

(assert (= (and b!3659334 ((_ is Concat!16578) (regex!5794 (h!44031 rules!3307)))) b!3660181))

(assert (= (and b!3659334 ((_ is Star!10553) (regex!5794 (h!44031 rules!3307)))) b!3660182))

(assert (= (and b!3659334 ((_ is Union!10553) (regex!5794 (h!44031 rules!3307)))) b!3660183))

(declare-fun b!3660184 () Bool)

(declare-fun e!2266329 () Bool)

(declare-fun tp!1114963 () Bool)

(assert (=> b!3660184 (= e!2266329 (and tp_is_empty!18189 tp!1114963))))

(assert (=> b!3659352 (= tp!1114873 e!2266329)))

(assert (= (and b!3659352 ((_ is Cons!38610) (t!298357 suffix!1395))) b!3660184))

(declare-fun b!3660186 () Bool)

(declare-fun e!2266330 () Bool)

(declare-fun tp!1114966 () Bool)

(declare-fun tp!1114964 () Bool)

(assert (=> b!3660186 (= e!2266330 (and tp!1114966 tp!1114964))))

(declare-fun b!3660185 () Bool)

(assert (=> b!3660185 (= e!2266330 tp_is_empty!18189)))

(declare-fun b!3660188 () Bool)

(declare-fun tp!1114965 () Bool)

(declare-fun tp!1114968 () Bool)

(assert (=> b!3660188 (= e!2266330 (and tp!1114965 tp!1114968))))

(assert (=> b!3659339 (= tp!1114865 e!2266330)))

(declare-fun b!3660187 () Bool)

(declare-fun tp!1114967 () Bool)

(assert (=> b!3660187 (= e!2266330 tp!1114967)))

(assert (= (and b!3659339 ((_ is ElementMatch!10553) (regex!5794 rule!403))) b!3660185))

(assert (= (and b!3659339 ((_ is Concat!16578) (regex!5794 rule!403))) b!3660186))

(assert (= (and b!3659339 ((_ is Star!10553) (regex!5794 rule!403))) b!3660187))

(assert (= (and b!3659339 ((_ is Union!10553) (regex!5794 rule!403))) b!3660188))

(declare-fun b!3660190 () Bool)

(declare-fun e!2266331 () Bool)

(declare-fun tp!1114971 () Bool)

(declare-fun tp!1114969 () Bool)

(assert (=> b!3660190 (= e!2266331 (and tp!1114971 tp!1114969))))

(declare-fun b!3660189 () Bool)

(assert (=> b!3660189 (= e!2266331 tp_is_empty!18189)))

(declare-fun b!3660192 () Bool)

(declare-fun tp!1114970 () Bool)

(declare-fun tp!1114973 () Bool)

(assert (=> b!3660192 (= e!2266331 (and tp!1114970 tp!1114973))))

(assert (=> b!3659373 (= tp!1114862 e!2266331)))

(declare-fun b!3660191 () Bool)

(declare-fun tp!1114972 () Bool)

(assert (=> b!3660191 (= e!2266331 tp!1114972)))

(assert (= (and b!3659373 ((_ is ElementMatch!10553) (regex!5794 anOtherTypeRule!33))) b!3660189))

(assert (= (and b!3659373 ((_ is Concat!16578) (regex!5794 anOtherTypeRule!33))) b!3660190))

(assert (= (and b!3659373 ((_ is Star!10553) (regex!5794 anOtherTypeRule!33))) b!3660191))

(assert (= (and b!3659373 ((_ is Union!10553) (regex!5794 anOtherTypeRule!33))) b!3660192))

(declare-fun b!3660194 () Bool)

(declare-fun e!2266332 () Bool)

(declare-fun tp!1114976 () Bool)

(declare-fun tp!1114974 () Bool)

(assert (=> b!3660194 (= e!2266332 (and tp!1114976 tp!1114974))))

(declare-fun b!3660193 () Bool)

(assert (=> b!3660193 (= e!2266332 tp_is_empty!18189)))

(declare-fun b!3660196 () Bool)

(declare-fun tp!1114975 () Bool)

(declare-fun tp!1114978 () Bool)

(assert (=> b!3660196 (= e!2266332 (and tp!1114975 tp!1114978))))

(assert (=> b!3659357 (= tp!1114867 e!2266332)))

(declare-fun b!3660195 () Bool)

(declare-fun tp!1114977 () Bool)

(assert (=> b!3660195 (= e!2266332 tp!1114977)))

(assert (= (and b!3659357 ((_ is ElementMatch!10553) (regex!5794 (rule!8604 token!511)))) b!3660193))

(assert (= (and b!3659357 ((_ is Concat!16578) (regex!5794 (rule!8604 token!511)))) b!3660194))

(assert (= (and b!3659357 ((_ is Star!10553) (regex!5794 (rule!8604 token!511)))) b!3660195))

(assert (= (and b!3659357 ((_ is Union!10553) (regex!5794 (rule!8604 token!511)))) b!3660196))

(declare-fun b_lambda!108571 () Bool)

(assert (= b_lambda!108553 (or (and b!3659331 b_free!96551) (and b!3660164 b_free!96559 (= (toChars!7945 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659371 b_free!96543 (= (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659336 b_free!96539 (= (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659361 b_free!96547 (= (toChars!7945 (transformation!5794 rule!403)) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) b_lambda!108571)))

(declare-fun b_lambda!108573 () Bool)

(assert (= b_lambda!108535 (or (and b!3659331 b_free!96551) (and b!3660164 b_free!96559 (= (toChars!7945 (transformation!5794 (h!44031 (t!298358 rules!3307)))) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659371 b_free!96543 (= (toChars!7945 (transformation!5794 (h!44031 rules!3307))) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659336 b_free!96539 (= (toChars!7945 (transformation!5794 anOtherTypeRule!33)) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) (and b!3659361 b_free!96547 (= (toChars!7945 (transformation!5794 rule!403)) (toChars!7945 (transformation!5794 (rule!8604 token!511))))) b_lambda!108573)))

(check-sat (not d!1074726) (not b!3659546) (not b!3660188) (not d!1074704) (not bm!264707) (not b!3659879) b_and!271595 (not b!3659420) (not d!1074746) (not d!1074600) (not d!1074568) tp_is_empty!18189 (not d!1074594) (not b!3659408) (not b_lambda!108531) (not d!1074536) (not b_next!97251) (not d!1074714) (not b_lambda!108565) (not b!3660121) (not b!3660132) (not b!3660190) (not b!3660181) (not b!3659464) (not d!1074742) b_and!271599 (not d!1074716) (not d!1074728) (not b!3660169) (not d!1074702) (not d!1074690) (not d!1074590) (not b!3660182) (not b!3659503) (not b_lambda!108567) (not d!1074758) (not b_next!97249) (not b!3660130) (not bm!264705) (not d!1074698) (not b_lambda!108573) (not b!3659776) (not b!3660127) (not b!3659472) (not b!3659884) (not b!3660194) b_and!271597 (not d!1074696) b_and!271609 (not d!1074720) (not b!3660163) (not d!1074856) (not b_next!97243) (not b!3659802) b_and!271593 (not b!3659881) (not b!3659567) (not d!1074750) (not d!1074546) (not b!3660192) (not b!3659779) (not b!3659786) (not b!3659768) (not d!1074584) (not d!1074538) (not d!1074770) (not b!3659801) (not bm!264675) (not b!3659471) (not b_next!97261) (not b!3659423) (not tb!211481) (not d!1074692) (not bm!264706) (not d!1074858) b_and!271591 (not tb!211381) (not b!3659508) (not b!3659469) (not b!3660147) (not d!1074850) (not b_lambda!108571) (not d!1074732) (not b!3659521) b_and!271603 (not b!3659433) (not b!3659432) (not b!3659514) (not b!3660183) (not b!3660184) (not b!3660129) (not bm!264711) (not d!1074582) (not d!1074852) (not d!1074574) (not b!3659822) (not d!1074578) (not b_lambda!108533) (not b!3659445) (not b!3659772) (not b_next!97245) (not b!3659749) b_and!271607 (not d!1074596) (not b!3659781) (not d!1074554) (not b!3660136) (not b_next!97255) (not b!3659560) (not d!1074576) (not b_lambda!108563) (not b!3659511) (not d!1074872) (not bm!264676) (not b!3659817) (not b!3659542) (not b!3659861) (not b!3659916) (not b!3659561) (not b!3659782) (not d!1074562) (not tb!211389) (not b!3659510) (not d!1074592) (not b!3660191) (not d!1074564) (not d!1074730) (not tb!211473) (not b!3659777) (not b!3659513) (not d!1074718) (not b_next!97253) (not d!1074586) (not b!3659806) (not b!3660162) (not tb!211453) (not b!3659915) (not b!3659821) (not b_next!97247) (not b!3660186) (not b!3659845) (not b!3659774) (not b_lambda!108555) (not b!3659465) (not d!1074684) (not bm!264683) (not bm!264709) (not b!3660195) (not b!3659547) (not bm!264713) (not b!3659810) (not b!3660133) (not b!3660151) (not d!1074740) (not bm!264704) (not b_next!97263) (not d!1074602) (not d!1074540) (not b!3660187) (not b!3659820) (not b!3659470) (not b!3659771) (not d!1074558) (not bm!264710) (not b!3659784) (not d!1074748) (not d!1074866) (not b!3659785) (not b!3659823) (not b!3659863) (not bm!264674) (not b!3659807) (not b!3659835) (not b!3659559) (not d!1074548) (not b!3659548) (not b!3660196) (not b!3660153) (not b!3659750) (not b!3659545) (not b!3659438) (not d!1074706) (not b!3659778) (not b!3659804) (not b!3659540) (not b!3659865) (not b!3659544) (not b_lambda!108569) (not b!3659908) b_and!271605 (not bm!264723) (not b!3659468) (not d!1074854) (not b!3659419) (not b!3659901) (not bm!264680) (not d!1074864) (not tb!211397) (not b!3659885) b_and!271601 (not b_next!97241) (not d!1074570) (not d!1074708) (not d!1074738) (not d!1074710) (not b!3659812) (not b!3659818) (not d!1074868) (not b!3660122) (not b!3659773) (not d!1074700) (not b!3659466) (not b!3659549) (not b!3659543) (not b!3659882) (not d!1074768) (not b!3659780) (not b!3659748) (not b!3659767) (not b!3659566) (not b!3659874))
(check-sat b_and!271595 (not b_next!97251) b_and!271599 (not b_next!97249) b_and!271597 b_and!271603 (not b_next!97263) b_and!271605 b_and!271609 (not b_next!97243) b_and!271593 (not b_next!97261) b_and!271591 (not b_next!97255) (not b_next!97245) b_and!271607 (not b_next!97253) (not b_next!97247) b_and!271601 (not b_next!97241))
