; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336630 () Bool)

(assert start!336630)

(declare-fun b!3614651 () Bool)

(declare-fun b_free!93985 () Bool)

(declare-fun b_next!94689 () Bool)

(assert (=> b!3614651 (= b_free!93985 (not b_next!94689))))

(declare-fun tp!1104594 () Bool)

(declare-fun b_and!263891 () Bool)

(assert (=> b!3614651 (= tp!1104594 b_and!263891)))

(declare-fun b_free!93987 () Bool)

(declare-fun b_next!94691 () Bool)

(assert (=> b!3614651 (= b_free!93987 (not b_next!94691))))

(declare-fun tp!1104603 () Bool)

(declare-fun b_and!263893 () Bool)

(assert (=> b!3614651 (= tp!1104603 b_and!263893)))

(declare-fun b!3614631 () Bool)

(declare-fun b_free!93989 () Bool)

(declare-fun b_next!94693 () Bool)

(assert (=> b!3614631 (= b_free!93989 (not b_next!94693))))

(declare-fun tp!1104595 () Bool)

(declare-fun b_and!263895 () Bool)

(assert (=> b!3614631 (= tp!1104595 b_and!263895)))

(declare-fun b_free!93991 () Bool)

(declare-fun b_next!94695 () Bool)

(assert (=> b!3614631 (= b_free!93991 (not b_next!94695))))

(declare-fun tp!1104593 () Bool)

(declare-fun b_and!263897 () Bool)

(assert (=> b!3614631 (= tp!1104593 b_and!263897)))

(declare-fun b!3614643 () Bool)

(declare-fun b_free!93993 () Bool)

(declare-fun b_next!94697 () Bool)

(assert (=> b!3614643 (= b_free!93993 (not b_next!94697))))

(declare-fun tp!1104602 () Bool)

(declare-fun b_and!263899 () Bool)

(assert (=> b!3614643 (= tp!1104602 b_and!263899)))

(declare-fun b_free!93995 () Bool)

(declare-fun b_next!94699 () Bool)

(assert (=> b!3614643 (= b_free!93995 (not b_next!94699))))

(declare-fun tp!1104604 () Bool)

(declare-fun b_and!263901 () Bool)

(assert (=> b!3614643 (= tp!1104604 b_and!263901)))

(declare-fun b!3614616 () Bool)

(declare-fun b_free!93997 () Bool)

(declare-fun b_next!94701 () Bool)

(assert (=> b!3614616 (= b_free!93997 (not b_next!94701))))

(declare-fun tp!1104596 () Bool)

(declare-fun b_and!263903 () Bool)

(assert (=> b!3614616 (= tp!1104596 b_and!263903)))

(declare-fun b_free!93999 () Bool)

(declare-fun b_next!94703 () Bool)

(assert (=> b!3614616 (= b_free!93999 (not b_next!94703))))

(declare-fun tp!1104597 () Bool)

(declare-fun b_and!263905 () Bool)

(assert (=> b!3614616 (= tp!1104597 b_and!263905)))

(declare-fun b!3614602 () Bool)

(assert (=> b!3614602 false))

(declare-datatypes ((Unit!54388 0))(
  ( (Unit!54389) )
))
(declare-fun lt!1245982 () Unit!54388)

(declare-fun call!261389 () Unit!54388)

(assert (=> b!3614602 (= lt!1245982 call!261389)))

(declare-fun call!261391 () Bool)

(assert (=> b!3614602 (not call!261391)))

(declare-datatypes ((List!38177 0))(
  ( (Nil!38053) (Cons!38053 (h!43473 (_ BitVec 16)) (t!293708 List!38177)) )
))
(declare-datatypes ((TokenValue!5882 0))(
  ( (FloatLiteralValue!11764 (text!41619 List!38177)) (TokenValueExt!5881 (__x!23981 Int)) (Broken!29410 (value!181516 List!38177)) (Object!6005) (End!5882) (Def!5882) (Underscore!5882) (Match!5882) (Else!5882) (Error!5882) (Case!5882) (If!5882) (Extends!5882) (Abstract!5882) (Class!5882) (Val!5882) (DelimiterValue!11764 (del!5942 List!38177)) (KeywordValue!5888 (value!181517 List!38177)) (CommentValue!11764 (value!181518 List!38177)) (WhitespaceValue!11764 (value!181519 List!38177)) (IndentationValue!5882 (value!181520 List!38177)) (String!42743) (Int32!5882) (Broken!29411 (value!181521 List!38177)) (Boolean!5883) (Unit!54390) (OperatorValue!5885 (op!5942 List!38177)) (IdentifierValue!11764 (value!181522 List!38177)) (IdentifierValue!11765 (value!181523 List!38177)) (WhitespaceValue!11765 (value!181524 List!38177)) (True!11764) (False!11764) (Broken!29412 (value!181525 List!38177)) (Broken!29413 (value!181526 List!38177)) (True!11765) (RightBrace!5882) (RightBracket!5882) (Colon!5882) (Null!5882) (Comma!5882) (LeftBracket!5882) (False!11765) (LeftBrace!5882) (ImaginaryLiteralValue!5882 (text!41620 List!38177)) (StringLiteralValue!17646 (value!181527 List!38177)) (EOFValue!5882 (value!181528 List!38177)) (IdentValue!5882 (value!181529 List!38177)) (DelimiterValue!11765 (value!181530 List!38177)) (DedentValue!5882 (value!181531 List!38177)) (NewLineValue!5882 (value!181532 List!38177)) (IntegerValue!17646 (value!181533 (_ BitVec 32)) (text!41621 List!38177)) (IntegerValue!17647 (value!181534 Int) (text!41622 List!38177)) (Times!5882) (Or!5882) (Equal!5882) (Minus!5882) (Broken!29414 (value!181535 List!38177)) (And!5882) (Div!5882) (LessEqual!5882) (Mod!5882) (Concat!16293) (Not!5882) (Plus!5882) (SpaceValue!5882 (value!181536 List!38177)) (IntegerValue!17648 (value!181537 Int) (text!41623 List!38177)) (StringLiteralValue!17647 (text!41624 List!38177)) (FloatLiteralValue!11765 (text!41625 List!38177)) (BytesLiteralValue!5882 (value!181538 List!38177)) (CommentValue!11765 (value!181539 List!38177)) (StringLiteralValue!17648 (value!181540 List!38177)) (ErrorTokenValue!5882 (msg!5943 List!38177)) )
))
(declare-datatypes ((C!21008 0))(
  ( (C!21009 (val!12552 Int)) )
))
(declare-datatypes ((Regex!10411 0))(
  ( (ElementMatch!10411 (c!625368 C!21008)) (Concat!16294 (regOne!21334 Regex!10411) (regTwo!21334 Regex!10411)) (EmptyExpr!10411) (Star!10411 (reg!10740 Regex!10411)) (EmptyLang!10411) (Union!10411 (regOne!21335 Regex!10411) (regTwo!21335 Regex!10411)) )
))
(declare-datatypes ((String!42744 0))(
  ( (String!42745 (value!181541 String)) )
))
(declare-datatypes ((List!38178 0))(
  ( (Nil!38054) (Cons!38054 (h!43474 C!21008) (t!293709 List!38178)) )
))
(declare-datatypes ((IArray!23203 0))(
  ( (IArray!23204 (innerList!11659 List!38178)) )
))
(declare-datatypes ((Conc!11599 0))(
  ( (Node!11599 (left!29727 Conc!11599) (right!30057 Conc!11599) (csize!23428 Int) (cheight!11810 Int)) (Leaf!18036 (xs!14801 IArray!23203) (csize!23429 Int)) (Empty!11599) )
))
(declare-datatypes ((BalanceConc!22812 0))(
  ( (BalanceConc!22813 (c!625369 Conc!11599)) )
))
(declare-datatypes ((TokenValueInjection!11192 0))(
  ( (TokenValueInjection!11193 (toValue!7936 Int) (toChars!7795 Int)) )
))
(declare-datatypes ((Rule!11104 0))(
  ( (Rule!11105 (regex!5652 Regex!10411) (tag!6364 String!42744) (isSeparator!5652 Bool) (transformation!5652 TokenValueInjection!11192)) )
))
(declare-datatypes ((List!38179 0))(
  ( (Nil!38055) (Cons!38055 (h!43475 Rule!11104) (t!293710 List!38179)) )
))
(declare-fun rules!3307 () List!38179)

(declare-fun lt!1246016 () Unit!54388)

(declare-datatypes ((LexerInterface!5241 0))(
  ( (LexerInterfaceExt!5238 (__x!23982 Int)) (Lexer!5239) )
))
(declare-fun thiss!23823 () LexerInterface!5241)

(declare-fun rule!403 () Rule!11104)

(declare-fun lt!1246002 () C!21008)

(declare-datatypes ((Token!10670 0))(
  ( (Token!10671 (value!181542 TokenValue!5882) (rule!8408 Rule!11104) (size!29019 Int) (originalCharacters!6366 List!38178)) )
))
(declare-datatypes ((tuple2!37944 0))(
  ( (tuple2!37945 (_1!22106 Token!10670) (_2!22106 List!38178)) )
))
(declare-fun lt!1245994 () tuple2!37944)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!240 (LexerInterface!5241 List!38179 List!38179 Rule!11104 Rule!11104 C!21008) Unit!54388)

(assert (=> b!3614602 (= lt!1246016 (lemmaSepRuleNotContainsCharContainedInANonSepRule!240 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8408 (_1!22106 lt!1245994)) lt!1246002))))

(declare-fun e!2237150 () Unit!54388)

(declare-fun Unit!54391 () Unit!54388)

(assert (=> b!3614602 (= e!2237150 Unit!54391)))

(declare-fun b!3614603 () Bool)

(declare-fun res!1462444 () Bool)

(declare-fun e!2237136 () Bool)

(assert (=> b!3614603 (=> res!1462444 e!2237136)))

(declare-fun contains!7367 (List!38179 Rule!11104) Bool)

(assert (=> b!3614603 (= res!1462444 (not (contains!7367 rules!3307 (rule!8408 (_1!22106 lt!1245994)))))))

(declare-fun b!3614604 () Bool)

(declare-fun e!2237131 () Unit!54388)

(declare-fun Unit!54392 () Unit!54388)

(assert (=> b!3614604 (= e!2237131 Unit!54392)))

(declare-fun b!3614605 () Bool)

(declare-fun e!2237163 () Unit!54388)

(declare-fun Unit!54393 () Unit!54388)

(assert (=> b!3614605 (= e!2237163 Unit!54393)))

(declare-fun b!3614606 () Bool)

(declare-fun res!1462440 () Bool)

(declare-fun e!2237133 () Bool)

(assert (=> b!3614606 (=> res!1462440 e!2237133)))

(declare-fun anOtherTypeRule!33 () Rule!11104)

(declare-fun lt!1246003 () C!21008)

(declare-fun contains!7368 (List!38178 C!21008) Bool)

(declare-fun usedCharacters!866 (Regex!10411) List!38178)

(assert (=> b!3614606 (= res!1462440 (not (contains!7368 (usedCharacters!866 (regex!5652 anOtherTypeRule!33)) lt!1246003)))))

(declare-fun b!3614608 () Bool)

(assert (=> b!3614608 false))

(declare-fun lt!1245992 () Unit!54388)

(declare-fun call!261392 () Unit!54388)

(assert (=> b!3614608 (= lt!1245992 call!261392)))

(declare-fun call!261390 () Bool)

(assert (=> b!3614608 (not call!261390)))

(declare-fun lt!1246020 () Unit!54388)

(assert (=> b!3614608 (= lt!1246020 (lemmaSepRuleNotContainsCharContainedInANonSepRule!240 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8408 (_1!22106 lt!1245994)) lt!1246003))))

(declare-fun e!2237151 () Unit!54388)

(declare-fun Unit!54394 () Unit!54388)

(assert (=> b!3614608 (= e!2237151 Unit!54394)))

(declare-fun b!3614609 () Bool)

(declare-fun res!1462421 () Bool)

(assert (=> b!3614609 (=> res!1462421 e!2237136)))

(declare-fun lt!1246012 () List!38178)

(declare-fun isEmpty!22478 (List!38178) Bool)

(assert (=> b!3614609 (= res!1462421 (isEmpty!22478 lt!1246012))))

(declare-fun b!3614610 () Bool)

(declare-fun e!2237139 () Unit!54388)

(declare-fun Unit!54395 () Unit!54388)

(assert (=> b!3614610 (= e!2237139 Unit!54395)))

(declare-fun b!3614611 () Bool)

(declare-fun e!2237154 () Bool)

(declare-fun e!2237159 () Bool)

(assert (=> b!3614611 (= e!2237154 e!2237159)))

(declare-fun res!1462428 () Bool)

(assert (=> b!3614611 (=> res!1462428 e!2237159)))

(declare-fun token!511 () Token!10670)

(assert (=> b!3614611 (= res!1462428 (= (rule!8408 (_1!22106 lt!1245994)) (rule!8408 token!511)))))

(declare-fun lt!1245972 () List!38178)

(assert (=> b!3614611 (= lt!1245972 lt!1246012)))

(declare-fun lt!1245987 () List!38178)

(declare-fun lt!1246000 () Unit!54388)

(declare-fun lemmaIsPrefixSameLengthThenSameList!589 (List!38178 List!38178 List!38178) Unit!54388)

(assert (=> b!3614611 (= lt!1246000 (lemmaIsPrefixSameLengthThenSameList!589 lt!1245972 lt!1246012 lt!1245987))))

(declare-fun lt!1245978 () Unit!54388)

(assert (=> b!3614611 (= lt!1245978 e!2237131)))

(declare-fun c!625367 () Bool)

(declare-fun lt!1245989 () Int)

(declare-fun lt!1245995 () Int)

(assert (=> b!3614611 (= c!625367 (< lt!1245989 lt!1245995))))

(declare-fun lt!1245993 () Unit!54388)

(declare-fun e!2237149 () Unit!54388)

(assert (=> b!3614611 (= lt!1245993 e!2237149)))

(declare-fun c!625363 () Bool)

(assert (=> b!3614611 (= c!625363 (> lt!1245989 lt!1245995))))

(declare-fun lt!1245976 () BalanceConc!22812)

(declare-fun size!29020 (BalanceConc!22812) Int)

(assert (=> b!3614611 (= lt!1245995 (size!29020 lt!1245976))))

(declare-fun lt!1245980 () Unit!54388)

(declare-fun e!2237148 () Unit!54388)

(assert (=> b!3614611 (= lt!1245980 e!2237148)))

(declare-fun c!625366 () Bool)

(assert (=> b!3614611 (= c!625366 (isSeparator!5652 rule!403))))

(declare-fun lt!1245986 () Unit!54388)

(assert (=> b!3614611 (= lt!1245986 e!2237139)))

(declare-fun c!625361 () Bool)

(declare-fun lt!1245997 () List!38178)

(assert (=> b!3614611 (= c!625361 (not (contains!7368 lt!1245997 lt!1246002)))))

(declare-fun head!7616 (List!38178) C!21008)

(assert (=> b!3614611 (= lt!1246002 (head!7616 lt!1245972))))

(declare-fun b!3614612 () Bool)

(declare-fun res!1462427 () Bool)

(declare-fun e!2237156 () Bool)

(assert (=> b!3614612 (=> (not res!1462427) (not e!2237156))))

(assert (=> b!3614612 (= res!1462427 (not (= (isSeparator!5652 anOtherTypeRule!33) (isSeparator!5652 rule!403))))))

(declare-fun b!3614613 () Bool)

(declare-fun e!2237135 () Bool)

(declare-fun e!2237130 () Bool)

(assert (=> b!3614613 (= e!2237135 (not e!2237130))))

(declare-fun res!1462431 () Bool)

(assert (=> b!3614613 (=> res!1462431 e!2237130)))

(declare-fun matchR!4980 (Regex!10411 List!38178) Bool)

(assert (=> b!3614613 (= res!1462431 (not (matchR!4980 (regex!5652 rule!403) lt!1246012)))))

(declare-fun ruleValid!1917 (LexerInterface!5241 Rule!11104) Bool)

(assert (=> b!3614613 (ruleValid!1917 thiss!23823 rule!403)))

(declare-fun lt!1245975 () Unit!54388)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1072 (LexerInterface!5241 Rule!11104 List!38179) Unit!54388)

(assert (=> b!3614613 (= lt!1245975 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1072 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3614614 () Bool)

(assert (=> b!3614614 (= e!2237130 e!2237133)))

(declare-fun res!1462434 () Bool)

(assert (=> b!3614614 (=> res!1462434 e!2237133)))

(assert (=> b!3614614 (= res!1462434 (contains!7368 lt!1245997 lt!1246003))))

(declare-fun suffix!1395 () List!38178)

(assert (=> b!3614614 (= lt!1246003 (head!7616 suffix!1395))))

(assert (=> b!3614614 (= lt!1245997 (usedCharacters!866 (regex!5652 rule!403)))))

(declare-fun b!3614615 () Bool)

(declare-fun res!1462419 () Bool)

(declare-fun e!2237160 () Bool)

(assert (=> b!3614615 (=> res!1462419 e!2237160)))

(assert (=> b!3614615 (= res!1462419 (not (matchR!4980 (regex!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245972)))))

(declare-fun e!2237134 () Bool)

(assert (=> b!3614616 (= e!2237134 (and tp!1104596 tp!1104597))))

(declare-fun b!3614617 () Bool)

(declare-fun e!2237164 () Bool)

(declare-fun lt!1245977 () Rule!11104)

(assert (=> b!3614617 (= e!2237164 (= (rule!8408 (_1!22106 lt!1245994)) lt!1245977))))

(declare-fun b!3614618 () Bool)

(declare-fun Unit!54396 () Unit!54388)

(assert (=> b!3614618 (= e!2237131 Unit!54396)))

(declare-fun lt!1246004 () Unit!54388)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!300 (LexerInterface!5241 List!38179 Rule!11104 List!38178 List!38178 List!38178 Rule!11104) Unit!54388)

(assert (=> b!3614618 (= lt!1246004 (lemmaMaxPrefixOutputsMaxPrefix!300 thiss!23823 rules!3307 (rule!8408 (_1!22106 lt!1245994)) lt!1245972 lt!1245987 lt!1246012 rule!403))))

(assert (=> b!3614618 false))

(declare-fun b!3614619 () Bool)

(assert (=> b!3614619 (= e!2237133 e!2237160)))

(declare-fun res!1462423 () Bool)

(assert (=> b!3614619 (=> res!1462423 e!2237160)))

(declare-fun isPrefix!3015 (List!38178 List!38178) Bool)

(assert (=> b!3614619 (= res!1462423 (not (isPrefix!3015 lt!1245972 lt!1245987)))))

(declare-fun ++!9468 (List!38178 List!38178) List!38178)

(assert (=> b!3614619 (isPrefix!3015 lt!1245972 (++!9468 lt!1245972 (_2!22106 lt!1245994)))))

(declare-fun lt!1246014 () Unit!54388)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1936 (List!38178 List!38178) Unit!54388)

(assert (=> b!3614619 (= lt!1246014 (lemmaConcatTwoListThenFirstIsPrefix!1936 lt!1245972 (_2!22106 lt!1245994)))))

(declare-fun lt!1245999 () BalanceConc!22812)

(declare-fun list!14040 (BalanceConc!22812) List!38178)

(assert (=> b!3614619 (= lt!1245972 (list!14040 lt!1245999))))

(declare-fun charsOf!3666 (Token!10670) BalanceConc!22812)

(assert (=> b!3614619 (= lt!1245999 (charsOf!3666 (_1!22106 lt!1245994)))))

(declare-fun e!2237147 () Bool)

(assert (=> b!3614619 e!2237147))

(declare-fun res!1462435 () Bool)

(assert (=> b!3614619 (=> (not res!1462435) (not e!2237147))))

(declare-datatypes ((Option!7934 0))(
  ( (None!7933) (Some!7933 (v!37687 Rule!11104)) )
))
(declare-fun lt!1246006 () Option!7934)

(declare-fun isDefined!6166 (Option!7934) Bool)

(assert (=> b!3614619 (= res!1462435 (isDefined!6166 lt!1246006))))

(declare-fun getRuleFromTag!1258 (LexerInterface!5241 List!38179 String!42744) Option!7934)

(assert (=> b!3614619 (= lt!1246006 (getRuleFromTag!1258 thiss!23823 rules!3307 (tag!6364 (rule!8408 (_1!22106 lt!1245994)))))))

(declare-fun lt!1246015 () Unit!54388)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1258 (LexerInterface!5241 List!38179 List!38178 Token!10670) Unit!54388)

(assert (=> b!3614619 (= lt!1246015 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1258 thiss!23823 rules!3307 lt!1245987 (_1!22106 lt!1245994)))))

(declare-datatypes ((Option!7935 0))(
  ( (None!7934) (Some!7934 (v!37688 tuple2!37944)) )
))
(declare-fun lt!1245996 () Option!7935)

(declare-fun get!12370 (Option!7935) tuple2!37944)

(assert (=> b!3614619 (= lt!1245994 (get!12370 lt!1245996))))

(declare-fun lt!1245998 () Unit!54388)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!921 (LexerInterface!5241 List!38179 List!38178 List!38178) Unit!54388)

(assert (=> b!3614619 (= lt!1245998 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!921 thiss!23823 rules!3307 lt!1246012 suffix!1395))))

(declare-fun maxPrefix!2775 (LexerInterface!5241 List!38179 List!38178) Option!7935)

(assert (=> b!3614619 (= lt!1245996 (maxPrefix!2775 thiss!23823 rules!3307 lt!1245987))))

(assert (=> b!3614619 (isPrefix!3015 lt!1246012 lt!1245987)))

(declare-fun lt!1245983 () Unit!54388)

(assert (=> b!3614619 (= lt!1245983 (lemmaConcatTwoListThenFirstIsPrefix!1936 lt!1246012 suffix!1395))))

(assert (=> b!3614619 (= lt!1245987 (++!9468 lt!1246012 suffix!1395))))

(declare-fun b!3614620 () Bool)

(assert (=> b!3614620 (= e!2237148 e!2237163)))

(declare-fun c!625365 () Bool)

(assert (=> b!3614620 (= c!625365 (not (isSeparator!5652 (rule!8408 (_1!22106 lt!1245994)))))))

(declare-fun b!3614621 () Bool)

(declare-fun res!1462439 () Bool)

(assert (=> b!3614621 (=> (not res!1462439) (not e!2237156))))

(declare-fun rulesInvariant!4638 (LexerInterface!5241 List!38179) Bool)

(assert (=> b!3614621 (= res!1462439 (rulesInvariant!4638 thiss!23823 rules!3307))))

(declare-fun e!2237137 () Bool)

(declare-fun tp!1104600 () Bool)

(declare-fun e!2237146 () Bool)

(declare-fun b!3614622 () Bool)

(declare-fun inv!21 (TokenValue!5882) Bool)

(assert (=> b!3614622 (= e!2237146 (and (inv!21 (value!181542 token!511)) e!2237137 tp!1104600))))

(declare-fun b!3614623 () Bool)

(declare-fun res!1462436 () Bool)

(assert (=> b!3614623 (=> (not res!1462436) (not e!2237135))))

(declare-fun lt!1246008 () tuple2!37944)

(assert (=> b!3614623 (= res!1462436 (isEmpty!22478 (_2!22106 lt!1246008)))))

(declare-fun bm!261384 () Bool)

(declare-fun call!261393 () List!38178)

(assert (=> bm!261384 (= call!261393 (usedCharacters!866 (regex!5652 (rule!8408 (_1!22106 lt!1245994)))))))

(declare-fun b!3614624 () Bool)

(declare-fun e!2237158 () Bool)

(assert (=> b!3614624 (= e!2237156 e!2237158)))

(declare-fun res!1462422 () Bool)

(assert (=> b!3614624 (=> (not res!1462422) (not e!2237158))))

(declare-fun lt!1246009 () Option!7935)

(declare-fun isDefined!6167 (Option!7935) Bool)

(assert (=> b!3614624 (= res!1462422 (isDefined!6167 lt!1246009))))

(assert (=> b!3614624 (= lt!1246009 (maxPrefix!2775 thiss!23823 rules!3307 lt!1246012))))

(assert (=> b!3614624 (= lt!1246012 (list!14040 lt!1245976))))

(assert (=> b!3614624 (= lt!1245976 (charsOf!3666 token!511))))

(declare-fun b!3614625 () Bool)

(declare-fun e!2237132 () Bool)

(declare-fun e!2237143 () Bool)

(declare-fun tp!1104590 () Bool)

(assert (=> b!3614625 (= e!2237132 (and e!2237143 tp!1104590))))

(declare-fun b!3614626 () Bool)

(declare-fun res!1462420 () Bool)

(assert (=> b!3614626 (=> res!1462420 e!2237133)))

(declare-fun sepAndNonSepRulesDisjointChars!1822 (List!38179 List!38179) Bool)

(assert (=> b!3614626 (= res!1462420 (not (sepAndNonSepRulesDisjointChars!1822 rules!3307 rules!3307)))))

(declare-fun b!3614627 () Bool)

(assert (=> b!3614627 (= e!2237148 e!2237150)))

(declare-fun c!625362 () Bool)

(assert (=> b!3614627 (= c!625362 (isSeparator!5652 (rule!8408 (_1!22106 lt!1245994))))))

(declare-fun b!3614628 () Bool)

(declare-fun e!2237142 () Bool)

(assert (=> b!3614628 (= e!2237142 e!2237154)))

(declare-fun res!1462433 () Bool)

(assert (=> b!3614628 (=> res!1462433 e!2237154)))

(declare-fun lt!1246013 () List!38178)

(declare-fun lt!1246011 () Option!7935)

(assert (=> b!3614628 (= res!1462433 (or (not (= lt!1246013 (_2!22106 lt!1245994))) (not (= lt!1246011 (Some!7934 (tuple2!37945 (_1!22106 lt!1245994) lt!1246013))))))))

(assert (=> b!3614628 (= (_2!22106 lt!1245994) lt!1246013)))

(declare-fun lt!1245990 () Unit!54388)

(declare-fun lemmaSamePrefixThenSameSuffix!1370 (List!38178 List!38178 List!38178 List!38178 List!38178) Unit!54388)

(assert (=> b!3614628 (= lt!1245990 (lemmaSamePrefixThenSameSuffix!1370 lt!1245972 (_2!22106 lt!1245994) lt!1245972 lt!1246013 lt!1245987))))

(declare-fun getSuffix!1590 (List!38178 List!38178) List!38178)

(assert (=> b!3614628 (= lt!1246013 (getSuffix!1590 lt!1245987 lt!1245972))))

(declare-fun lt!1245970 () TokenValue!5882)

(declare-fun lt!1246018 () Int)

(assert (=> b!3614628 (= lt!1246011 (Some!7934 (tuple2!37945 (Token!10671 lt!1245970 (rule!8408 (_1!22106 lt!1245994)) lt!1246018 lt!1245972) (_2!22106 lt!1245994))))))

(declare-fun maxPrefixOneRule!1919 (LexerInterface!5241 Rule!11104 List!38178) Option!7935)

(assert (=> b!3614628 (= lt!1246011 (maxPrefixOneRule!1919 thiss!23823 (rule!8408 (_1!22106 lt!1245994)) lt!1245987))))

(declare-fun size!29021 (List!38178) Int)

(assert (=> b!3614628 (= lt!1246018 (size!29021 lt!1245972))))

(declare-fun apply!9158 (TokenValueInjection!11192 BalanceConc!22812) TokenValue!5882)

(declare-fun seqFromList!4205 (List!38178) BalanceConc!22812)

(assert (=> b!3614628 (= lt!1245970 (apply!9158 (transformation!5652 (rule!8408 (_1!22106 lt!1245994))) (seqFromList!4205 lt!1245972)))))

(declare-fun lt!1245988 () Unit!54388)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!991 (LexerInterface!5241 List!38179 List!38178 List!38178 List!38178 Rule!11104) Unit!54388)

(assert (=> b!3614628 (= lt!1245988 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!991 thiss!23823 rules!3307 lt!1245972 lt!1245987 (_2!22106 lt!1245994) (rule!8408 (_1!22106 lt!1245994))))))

(declare-fun b!3614629 () Bool)

(assert (=> b!3614629 (= e!2237158 e!2237135)))

(declare-fun res!1462425 () Bool)

(assert (=> b!3614629 (=> (not res!1462425) (not e!2237135))))

(assert (=> b!3614629 (= res!1462425 (= (_1!22106 lt!1246008) token!511))))

(assert (=> b!3614629 (= lt!1246008 (get!12370 lt!1246009))))

(declare-fun e!2237157 () Bool)

(declare-fun tp!1104601 () Bool)

(declare-fun b!3614630 () Bool)

(declare-fun inv!51432 (String!42744) Bool)

(declare-fun inv!51435 (TokenValueInjection!11192) Bool)

(assert (=> b!3614630 (= e!2237143 (and tp!1104601 (inv!51432 (tag!6364 (h!43475 rules!3307))) (inv!51435 (transformation!5652 (h!43475 rules!3307))) e!2237157))))

(assert (=> b!3614631 (= e!2237157 (and tp!1104595 tp!1104593))))

(declare-fun bm!261385 () Bool)

(declare-fun call!261394 () List!38178)

(assert (=> bm!261385 (= call!261394 (usedCharacters!866 (regex!5652 (rule!8408 (_1!22106 lt!1245994)))))))

(declare-fun b!3614632 () Bool)

(declare-fun res!1462442 () Bool)

(assert (=> b!3614632 (=> (not res!1462442) (not e!2237135))))

(assert (=> b!3614632 (= res!1462442 (= (rule!8408 token!511) rule!403))))

(declare-fun bm!261386 () Bool)

(assert (=> bm!261386 (= call!261391 (contains!7368 call!261394 lt!1246002))))

(declare-fun b!3614633 () Bool)

(assert (=> b!3614633 false))

(declare-fun lt!1245984 () Unit!54388)

(assert (=> b!3614633 (= lt!1245984 call!261389)))

(assert (=> b!3614633 (not call!261391)))

(declare-fun lt!1245973 () Unit!54388)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!358 (LexerInterface!5241 List!38179 List!38179 Rule!11104 Rule!11104 C!21008) Unit!54388)

(assert (=> b!3614633 (= lt!1245973 (lemmaNonSepRuleNotContainsCharContainedInASepRule!358 thiss!23823 rules!3307 rules!3307 (rule!8408 (_1!22106 lt!1245994)) rule!403 lt!1246002))))

(declare-fun Unit!54397 () Unit!54388)

(assert (=> b!3614633 (= e!2237163 Unit!54397)))

(declare-fun b!3614607 () Bool)

(assert (=> b!3614607 (= e!2237149 e!2237151)))

(declare-fun lt!1245991 () Unit!54388)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!30 (List!38178 List!38178 List!38178 List!38178) Unit!54388)

(assert (=> b!3614607 (= lt!1245991 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!30 lt!1246012 suffix!1395 lt!1245972 lt!1245987))))

(assert (=> b!3614607 (contains!7368 lt!1245972 lt!1246003)))

(declare-fun c!625364 () Bool)

(assert (=> b!3614607 (= c!625364 (isSeparator!5652 rule!403))))

(declare-fun res!1462432 () Bool)

(assert (=> start!336630 (=> (not res!1462432) (not e!2237156))))

(get-info :version)

(assert (=> start!336630 (= res!1462432 ((_ is Lexer!5239) thiss!23823))))

(assert (=> start!336630 e!2237156))

(assert (=> start!336630 e!2237132))

(declare-fun e!2237161 () Bool)

(assert (=> start!336630 e!2237161))

(assert (=> start!336630 true))

(declare-fun inv!51436 (Token!10670) Bool)

(assert (=> start!336630 (and (inv!51436 token!511) e!2237146)))

(declare-fun e!2237155 () Bool)

(assert (=> start!336630 e!2237155))

(declare-fun e!2237152 () Bool)

(assert (=> start!336630 e!2237152))

(declare-fun b!3614634 () Bool)

(assert (=> b!3614634 (= e!2237136 true)))

(declare-fun lt!1245981 () Int)

(assert (=> b!3614634 (= lt!1245981 (size!29021 lt!1246012))))

(declare-fun lt!1245979 () TokenValue!5882)

(declare-fun lt!1245969 () BalanceConc!22812)

(assert (=> b!3614634 (= lt!1245979 (apply!9158 (transformation!5652 rule!403) lt!1245969))))

(declare-fun lt!1246001 () Unit!54388)

(declare-fun lemmaSemiInverse!1409 (TokenValueInjection!11192 BalanceConc!22812) Unit!54388)

(assert (=> b!3614634 (= lt!1246001 (lemmaSemiInverse!1409 (transformation!5652 rule!403) lt!1245969))))

(assert (=> b!3614634 (= lt!1245969 (seqFromList!4205 lt!1246012))))

(declare-fun bm!261387 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!636 (Regex!10411 List!38178 C!21008) Unit!54388)

(assert (=> bm!261387 (= call!261392 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!636 (regex!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245972 lt!1246003))))

(declare-fun b!3614635 () Bool)

(assert (=> b!3614635 (= e!2237147 e!2237164)))

(declare-fun res!1462437 () Bool)

(assert (=> b!3614635 (=> (not res!1462437) (not e!2237164))))

(assert (=> b!3614635 (= res!1462437 (matchR!4980 (regex!5652 lt!1245977) (list!14040 (charsOf!3666 (_1!22106 lt!1245994)))))))

(declare-fun get!12371 (Option!7934) Rule!11104)

(assert (=> b!3614635 (= lt!1245977 (get!12371 lt!1246006))))

(declare-fun b!3614636 () Bool)

(declare-fun Unit!54398 () Unit!54388)

(assert (=> b!3614636 (= e!2237139 Unit!54398)))

(declare-fun lt!1246017 () Unit!54388)

(assert (=> b!3614636 (= lt!1246017 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!636 (regex!5652 rule!403) lt!1246012 lt!1246002))))

(assert (=> b!3614636 false))

(declare-fun b!3614637 () Bool)

(assert (=> b!3614637 false))

(declare-fun lt!1246005 () Unit!54388)

(assert (=> b!3614637 (= lt!1246005 call!261392)))

(assert (=> b!3614637 (not call!261390)))

(declare-fun lt!1245971 () Unit!54388)

(assert (=> b!3614637 (= lt!1245971 (lemmaNonSepRuleNotContainsCharContainedInASepRule!358 thiss!23823 rules!3307 rules!3307 (rule!8408 (_1!22106 lt!1245994)) anOtherTypeRule!33 lt!1246003))))

(declare-fun Unit!54399 () Unit!54388)

(assert (=> b!3614637 (= e!2237151 Unit!54399)))

(declare-fun b!3614638 () Bool)

(declare-fun Unit!54400 () Unit!54388)

(assert (=> b!3614638 (= e!2237149 Unit!54400)))

(declare-fun e!2237140 () Bool)

(declare-fun tp!1104598 () Bool)

(declare-fun b!3614639 () Bool)

(assert (=> b!3614639 (= e!2237155 (and tp!1104598 (inv!51432 (tag!6364 rule!403)) (inv!51435 (transformation!5652 rule!403)) e!2237140))))

(declare-fun bm!261388 () Bool)

(assert (=> bm!261388 (= call!261389 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!636 (regex!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245972 lt!1246002))))

(declare-fun b!3614640 () Bool)

(assert (=> b!3614640 (= e!2237160 e!2237142)))

(declare-fun res!1462426 () Bool)

(assert (=> b!3614640 (=> res!1462426 e!2237142)))

(declare-fun lt!1245985 () TokenValue!5882)

(assert (=> b!3614640 (= res!1462426 (not (= lt!1245996 (Some!7934 (tuple2!37945 (Token!10671 lt!1245985 (rule!8408 (_1!22106 lt!1245994)) lt!1245989 lt!1245972) (_2!22106 lt!1245994))))))))

(assert (=> b!3614640 (= lt!1245989 (size!29020 lt!1245999))))

(assert (=> b!3614640 (= lt!1245985 (apply!9158 (transformation!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245999))))

(declare-fun lt!1246010 () Unit!54388)

(declare-fun lemmaCharactersSize!705 (Token!10670) Unit!54388)

(assert (=> b!3614640 (= lt!1246010 (lemmaCharactersSize!705 (_1!22106 lt!1245994)))))

(declare-fun lt!1245974 () Unit!54388)

(declare-fun lemmaEqSameImage!843 (TokenValueInjection!11192 BalanceConc!22812 BalanceConc!22812) Unit!54388)

(assert (=> b!3614640 (= lt!1245974 (lemmaEqSameImage!843 (transformation!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245999 (seqFromList!4205 (originalCharacters!6366 (_1!22106 lt!1245994)))))))

(declare-fun lt!1246019 () Unit!54388)

(assert (=> b!3614640 (= lt!1246019 (lemmaSemiInverse!1409 (transformation!5652 (rule!8408 (_1!22106 lt!1245994))) lt!1245999))))

(declare-fun b!3614641 () Bool)

(declare-fun res!1462429 () Bool)

(assert (=> b!3614641 (=> res!1462429 e!2237159)))

(declare-fun getIndex!434 (List!38179 Rule!11104) Int)

(assert (=> b!3614641 (= res!1462429 (>= (getIndex!434 rules!3307 (rule!8408 (_1!22106 lt!1245994))) (getIndex!434 rules!3307 rule!403)))))

(declare-fun b!3614642 () Bool)

(assert (=> b!3614642 (= e!2237159 e!2237136)))

(declare-fun res!1462424 () Bool)

(assert (=> b!3614642 (=> res!1462424 e!2237136)))

(assert (=> b!3614642 (= res!1462424 (not (isPrefix!3015 lt!1246012 lt!1246012)))))

(assert (=> b!3614642 (isEmpty!22478 (getSuffix!1590 lt!1246012 lt!1246012))))

(declare-fun lt!1246007 () Unit!54388)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!146 (List!38178) Unit!54388)

(assert (=> b!3614642 (= lt!1246007 (lemmaGetSuffixOnListWithItSelfIsEmpty!146 lt!1246012))))

(assert (=> b!3614643 (= e!2237140 (and tp!1104602 tp!1104604))))

(declare-fun e!2237144 () Bool)

(declare-fun tp!1104591 () Bool)

(declare-fun b!3614644 () Bool)

(assert (=> b!3614644 (= e!2237152 (and tp!1104591 (inv!51432 (tag!6364 anOtherTypeRule!33)) (inv!51435 (transformation!5652 anOtherTypeRule!33)) e!2237144))))

(declare-fun b!3614645 () Bool)

(declare-fun res!1462430 () Bool)

(assert (=> b!3614645 (=> res!1462430 e!2237130)))

(assert (=> b!3614645 (= res!1462430 (isEmpty!22478 suffix!1395))))

(declare-fun tp!1104599 () Bool)

(declare-fun b!3614646 () Bool)

(assert (=> b!3614646 (= e!2237137 (and tp!1104599 (inv!51432 (tag!6364 (rule!8408 token!511))) (inv!51435 (transformation!5652 (rule!8408 token!511))) e!2237134))))

(declare-fun b!3614647 () Bool)

(declare-fun res!1462441 () Bool)

(assert (=> b!3614647 (=> (not res!1462441) (not e!2237156))))

(declare-fun isEmpty!22479 (List!38179) Bool)

(assert (=> b!3614647 (= res!1462441 (not (isEmpty!22479 rules!3307)))))

(declare-fun b!3614648 () Bool)

(declare-fun res!1462438 () Bool)

(assert (=> b!3614648 (=> (not res!1462438) (not e!2237156))))

(assert (=> b!3614648 (= res!1462438 (contains!7367 rules!3307 rule!403))))

(declare-fun b!3614649 () Bool)

(declare-fun tp_is_empty!17905 () Bool)

(declare-fun tp!1104592 () Bool)

(assert (=> b!3614649 (= e!2237161 (and tp_is_empty!17905 tp!1104592))))

(declare-fun b!3614650 () Bool)

(declare-fun Unit!54401 () Unit!54388)

(assert (=> b!3614650 (= e!2237150 Unit!54401)))

(assert (=> b!3614651 (= e!2237144 (and tp!1104594 tp!1104603))))

(declare-fun bm!261389 () Bool)

(assert (=> bm!261389 (= call!261390 (contains!7368 call!261393 lt!1246003))))

(declare-fun b!3614652 () Bool)

(declare-fun res!1462443 () Bool)

(assert (=> b!3614652 (=> (not res!1462443) (not e!2237156))))

(assert (=> b!3614652 (= res!1462443 (contains!7367 rules!3307 anOtherTypeRule!33))))

(assert (= (and start!336630 res!1462432) b!3614647))

(assert (= (and b!3614647 res!1462441) b!3614621))

(assert (= (and b!3614621 res!1462439) b!3614648))

(assert (= (and b!3614648 res!1462438) b!3614652))

(assert (= (and b!3614652 res!1462443) b!3614612))

(assert (= (and b!3614612 res!1462427) b!3614624))

(assert (= (and b!3614624 res!1462422) b!3614629))

(assert (= (and b!3614629 res!1462425) b!3614623))

(assert (= (and b!3614623 res!1462436) b!3614632))

(assert (= (and b!3614632 res!1462442) b!3614613))

(assert (= (and b!3614613 (not res!1462431)) b!3614645))

(assert (= (and b!3614645 (not res!1462430)) b!3614614))

(assert (= (and b!3614614 (not res!1462434)) b!3614606))

(assert (= (and b!3614606 (not res!1462440)) b!3614626))

(assert (= (and b!3614626 (not res!1462420)) b!3614619))

(assert (= (and b!3614619 res!1462435) b!3614635))

(assert (= (and b!3614635 res!1462437) b!3614617))

(assert (= (and b!3614619 (not res!1462423)) b!3614615))

(assert (= (and b!3614615 (not res!1462419)) b!3614640))

(assert (= (and b!3614640 (not res!1462426)) b!3614628))

(assert (= (and b!3614628 (not res!1462433)) b!3614611))

(assert (= (and b!3614611 c!625361) b!3614636))

(assert (= (and b!3614611 (not c!625361)) b!3614610))

(assert (= (and b!3614611 c!625366) b!3614620))

(assert (= (and b!3614611 (not c!625366)) b!3614627))

(assert (= (and b!3614620 c!625365) b!3614633))

(assert (= (and b!3614620 (not c!625365)) b!3614605))

(assert (= (and b!3614627 c!625362) b!3614602))

(assert (= (and b!3614627 (not c!625362)) b!3614650))

(assert (= (or b!3614633 b!3614602) bm!261388))

(assert (= (or b!3614633 b!3614602) bm!261385))

(assert (= (or b!3614633 b!3614602) bm!261386))

(assert (= (and b!3614611 c!625363) b!3614607))

(assert (= (and b!3614611 (not c!625363)) b!3614638))

(assert (= (and b!3614607 c!625364) b!3614608))

(assert (= (and b!3614607 (not c!625364)) b!3614637))

(assert (= (or b!3614608 b!3614637) bm!261387))

(assert (= (or b!3614608 b!3614637) bm!261384))

(assert (= (or b!3614608 b!3614637) bm!261389))

(assert (= (and b!3614611 c!625367) b!3614618))

(assert (= (and b!3614611 (not c!625367)) b!3614604))

(assert (= (and b!3614611 (not res!1462428)) b!3614641))

(assert (= (and b!3614641 (not res!1462429)) b!3614642))

(assert (= (and b!3614642 (not res!1462424)) b!3614603))

(assert (= (and b!3614603 (not res!1462444)) b!3614609))

(assert (= (and b!3614609 (not res!1462421)) b!3614634))

(assert (= b!3614630 b!3614631))

(assert (= b!3614625 b!3614630))

(assert (= (and start!336630 ((_ is Cons!38055) rules!3307)) b!3614625))

(assert (= (and start!336630 ((_ is Cons!38054) suffix!1395)) b!3614649))

(assert (= b!3614646 b!3614616))

(assert (= b!3614622 b!3614646))

(assert (= start!336630 b!3614622))

(assert (= b!3614639 b!3614643))

(assert (= start!336630 b!3614639))

(assert (= b!3614644 b!3614651))

(assert (= start!336630 b!3614644))

(declare-fun m!4112975 () Bool)

(assert (=> b!3614621 m!4112975))

(declare-fun m!4112977 () Bool)

(assert (=> b!3614648 m!4112977))

(declare-fun m!4112979 () Bool)

(assert (=> b!3614609 m!4112979))

(declare-fun m!4112981 () Bool)

(assert (=> b!3614647 m!4112981))

(declare-fun m!4112983 () Bool)

(assert (=> bm!261386 m!4112983))

(declare-fun m!4112985 () Bool)

(assert (=> b!3614608 m!4112985))

(declare-fun m!4112987 () Bool)

(assert (=> b!3614618 m!4112987))

(declare-fun m!4112989 () Bool)

(assert (=> b!3614644 m!4112989))

(declare-fun m!4112991 () Bool)

(assert (=> b!3614644 m!4112991))

(declare-fun m!4112993 () Bool)

(assert (=> b!3614633 m!4112993))

(declare-fun m!4112995 () Bool)

(assert (=> b!3614615 m!4112995))

(declare-fun m!4112997 () Bool)

(assert (=> b!3614626 m!4112997))

(declare-fun m!4112999 () Bool)

(assert (=> b!3614602 m!4112999))

(declare-fun m!4113001 () Bool)

(assert (=> bm!261385 m!4113001))

(declare-fun m!4113003 () Bool)

(assert (=> b!3614613 m!4113003))

(declare-fun m!4113005 () Bool)

(assert (=> b!3614613 m!4113005))

(declare-fun m!4113007 () Bool)

(assert (=> b!3614613 m!4113007))

(declare-fun m!4113009 () Bool)

(assert (=> b!3614634 m!4113009))

(declare-fun m!4113011 () Bool)

(assert (=> b!3614634 m!4113011))

(declare-fun m!4113013 () Bool)

(assert (=> b!3614634 m!4113013))

(declare-fun m!4113015 () Bool)

(assert (=> b!3614634 m!4113015))

(declare-fun m!4113017 () Bool)

(assert (=> b!3614628 m!4113017))

(declare-fun m!4113019 () Bool)

(assert (=> b!3614628 m!4113019))

(declare-fun m!4113021 () Bool)

(assert (=> b!3614628 m!4113021))

(declare-fun m!4113023 () Bool)

(assert (=> b!3614628 m!4113023))

(declare-fun m!4113025 () Bool)

(assert (=> b!3614628 m!4113025))

(assert (=> b!3614628 m!4113017))

(declare-fun m!4113027 () Bool)

(assert (=> b!3614628 m!4113027))

(declare-fun m!4113029 () Bool)

(assert (=> b!3614628 m!4113029))

(declare-fun m!4113031 () Bool)

(assert (=> b!3614603 m!4113031))

(declare-fun m!4113033 () Bool)

(assert (=> b!3614611 m!4113033))

(declare-fun m!4113035 () Bool)

(assert (=> b!3614611 m!4113035))

(declare-fun m!4113037 () Bool)

(assert (=> b!3614611 m!4113037))

(declare-fun m!4113039 () Bool)

(assert (=> b!3614611 m!4113039))

(assert (=> bm!261384 m!4113001))

(declare-fun m!4113041 () Bool)

(assert (=> b!3614646 m!4113041))

(declare-fun m!4113043 () Bool)

(assert (=> b!3614646 m!4113043))

(declare-fun m!4113045 () Bool)

(assert (=> b!3614629 m!4113045))

(declare-fun m!4113047 () Bool)

(assert (=> b!3614607 m!4113047))

(declare-fun m!4113049 () Bool)

(assert (=> b!3614607 m!4113049))

(declare-fun m!4113051 () Bool)

(assert (=> b!3614636 m!4113051))

(declare-fun m!4113053 () Bool)

(assert (=> start!336630 m!4113053))

(declare-fun m!4113055 () Bool)

(assert (=> b!3614622 m!4113055))

(declare-fun m!4113057 () Bool)

(assert (=> b!3614641 m!4113057))

(declare-fun m!4113059 () Bool)

(assert (=> b!3614641 m!4113059))

(declare-fun m!4113061 () Bool)

(assert (=> bm!261388 m!4113061))

(declare-fun m!4113063 () Bool)

(assert (=> b!3614642 m!4113063))

(declare-fun m!4113065 () Bool)

(assert (=> b!3614642 m!4113065))

(assert (=> b!3614642 m!4113065))

(declare-fun m!4113067 () Bool)

(assert (=> b!3614642 m!4113067))

(declare-fun m!4113069 () Bool)

(assert (=> b!3614642 m!4113069))

(declare-fun m!4113071 () Bool)

(assert (=> b!3614619 m!4113071))

(declare-fun m!4113073 () Bool)

(assert (=> b!3614619 m!4113073))

(declare-fun m!4113075 () Bool)

(assert (=> b!3614619 m!4113075))

(declare-fun m!4113077 () Bool)

(assert (=> b!3614619 m!4113077))

(declare-fun m!4113079 () Bool)

(assert (=> b!3614619 m!4113079))

(declare-fun m!4113081 () Bool)

(assert (=> b!3614619 m!4113081))

(declare-fun m!4113083 () Bool)

(assert (=> b!3614619 m!4113083))

(declare-fun m!4113085 () Bool)

(assert (=> b!3614619 m!4113085))

(declare-fun m!4113087 () Bool)

(assert (=> b!3614619 m!4113087))

(declare-fun m!4113089 () Bool)

(assert (=> b!3614619 m!4113089))

(assert (=> b!3614619 m!4113089))

(declare-fun m!4113091 () Bool)

(assert (=> b!3614619 m!4113091))

(declare-fun m!4113093 () Bool)

(assert (=> b!3614619 m!4113093))

(declare-fun m!4113095 () Bool)

(assert (=> b!3614619 m!4113095))

(declare-fun m!4113097 () Bool)

(assert (=> b!3614619 m!4113097))

(declare-fun m!4113099 () Bool)

(assert (=> b!3614619 m!4113099))

(assert (=> b!3614635 m!4113095))

(assert (=> b!3614635 m!4113095))

(declare-fun m!4113101 () Bool)

(assert (=> b!3614635 m!4113101))

(assert (=> b!3614635 m!4113101))

(declare-fun m!4113103 () Bool)

(assert (=> b!3614635 m!4113103))

(declare-fun m!4113105 () Bool)

(assert (=> b!3614635 m!4113105))

(declare-fun m!4113107 () Bool)

(assert (=> b!3614640 m!4113107))

(declare-fun m!4113109 () Bool)

(assert (=> b!3614640 m!4113109))

(declare-fun m!4113111 () Bool)

(assert (=> b!3614640 m!4113111))

(declare-fun m!4113113 () Bool)

(assert (=> b!3614640 m!4113113))

(declare-fun m!4113115 () Bool)

(assert (=> b!3614640 m!4113115))

(assert (=> b!3614640 m!4113111))

(declare-fun m!4113117 () Bool)

(assert (=> b!3614640 m!4113117))

(declare-fun m!4113119 () Bool)

(assert (=> b!3614639 m!4113119))

(declare-fun m!4113121 () Bool)

(assert (=> b!3614639 m!4113121))

(declare-fun m!4113123 () Bool)

(assert (=> bm!261387 m!4113123))

(declare-fun m!4113125 () Bool)

(assert (=> b!3614606 m!4113125))

(assert (=> b!3614606 m!4113125))

(declare-fun m!4113127 () Bool)

(assert (=> b!3614606 m!4113127))

(declare-fun m!4113129 () Bool)

(assert (=> b!3614637 m!4113129))

(declare-fun m!4113131 () Bool)

(assert (=> bm!261389 m!4113131))

(declare-fun m!4113133 () Bool)

(assert (=> b!3614630 m!4113133))

(declare-fun m!4113135 () Bool)

(assert (=> b!3614630 m!4113135))

(declare-fun m!4113137 () Bool)

(assert (=> b!3614623 m!4113137))

(declare-fun m!4113139 () Bool)

(assert (=> b!3614624 m!4113139))

(declare-fun m!4113141 () Bool)

(assert (=> b!3614624 m!4113141))

(declare-fun m!4113143 () Bool)

(assert (=> b!3614624 m!4113143))

(declare-fun m!4113145 () Bool)

(assert (=> b!3614624 m!4113145))

(declare-fun m!4113147 () Bool)

(assert (=> b!3614645 m!4113147))

(declare-fun m!4113149 () Bool)

(assert (=> b!3614652 m!4113149))

(declare-fun m!4113151 () Bool)

(assert (=> b!3614614 m!4113151))

(declare-fun m!4113153 () Bool)

(assert (=> b!3614614 m!4113153))

(declare-fun m!4113155 () Bool)

(assert (=> b!3614614 m!4113155))

(check-sat (not b!3614637) (not b!3614622) (not b!3614628) (not b!3614624) (not b!3614639) (not b_next!94689) tp_is_empty!17905 b_and!263893 (not b!3614623) b_and!263903 (not b!3614621) (not b!3614640) (not b!3614641) (not b!3614629) (not b!3614613) (not bm!261389) b_and!263895 (not b!3614635) (not bm!261384) (not b!3614633) (not b!3614609) b_and!263901 (not bm!261387) (not b!3614630) (not b!3614614) (not b!3614645) (not b!3614646) (not b!3614602) (not b_next!94695) (not b_next!94699) (not b!3614647) (not b_next!94691) b_and!263891 (not b!3614603) (not b_next!94697) (not b!3614611) (not b!3614606) b_and!263899 (not b!3614619) b_and!263905 (not b!3614636) (not b!3614626) (not b!3614615) (not b_next!94701) (not b!3614649) (not b!3614644) b_and!263897 (not b!3614634) (not start!336630) (not b!3614607) (not bm!261385) (not b!3614618) (not b!3614648) (not b_next!94693) (not b_next!94703) (not b!3614642) (not bm!261388) (not bm!261386) (not b!3614652) (not b!3614608) (not b!3614625))
(check-sat b_and!263903 b_and!263895 b_and!263901 (not b_next!94695) (not b_next!94699) (not b_next!94697) b_and!263899 b_and!263905 (not b_next!94701) (not b_next!94689) b_and!263897 (not b_next!94693) (not b_next!94703) b_and!263893 (not b_next!94691) b_and!263891)
