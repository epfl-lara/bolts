; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342078 () Bool)

(assert start!342078)

(declare-fun b!3656681 () Bool)

(declare-fun b_free!96393 () Bool)

(declare-fun b_next!97097 () Bool)

(assert (=> b!3656681 (= b_free!96393 (not b_next!97097))))

(declare-fun tp!1114303 () Bool)

(declare-fun b_and!270979 () Bool)

(assert (=> b!3656681 (= tp!1114303 b_and!270979)))

(declare-fun b_free!96395 () Bool)

(declare-fun b_next!97099 () Bool)

(assert (=> b!3656681 (= b_free!96395 (not b_next!97099))))

(declare-fun tp!1114309 () Bool)

(declare-fun b_and!270981 () Bool)

(assert (=> b!3656681 (= tp!1114309 b_and!270981)))

(declare-fun b!3656678 () Bool)

(declare-fun b_free!96397 () Bool)

(declare-fun b_next!97101 () Bool)

(assert (=> b!3656678 (= b_free!96397 (not b_next!97101))))

(declare-fun tp!1114297 () Bool)

(declare-fun b_and!270983 () Bool)

(assert (=> b!3656678 (= tp!1114297 b_and!270983)))

(declare-fun b_free!96399 () Bool)

(declare-fun b_next!97103 () Bool)

(assert (=> b!3656678 (= b_free!96399 (not b_next!97103))))

(declare-fun tp!1114301 () Bool)

(declare-fun b_and!270985 () Bool)

(assert (=> b!3656678 (= tp!1114301 b_and!270985)))

(declare-fun b!3656680 () Bool)

(declare-fun b_free!96401 () Bool)

(declare-fun b_next!97105 () Bool)

(assert (=> b!3656680 (= b_free!96401 (not b_next!97105))))

(declare-fun tp!1114305 () Bool)

(declare-fun b_and!270987 () Bool)

(assert (=> b!3656680 (= tp!1114305 b_and!270987)))

(declare-fun b_free!96403 () Bool)

(declare-fun b_next!97107 () Bool)

(assert (=> b!3656680 (= b_free!96403 (not b_next!97107))))

(declare-fun tp!1114310 () Bool)

(declare-fun b_and!270989 () Bool)

(assert (=> b!3656680 (= tp!1114310 b_and!270989)))

(declare-fun b!3656649 () Bool)

(declare-fun b_free!96405 () Bool)

(declare-fun b_next!97109 () Bool)

(assert (=> b!3656649 (= b_free!96405 (not b_next!97109))))

(declare-fun tp!1114307 () Bool)

(declare-fun b_and!270991 () Bool)

(assert (=> b!3656649 (= tp!1114307 b_and!270991)))

(declare-fun b_free!96407 () Bool)

(declare-fun b_next!97111 () Bool)

(assert (=> b!3656649 (= b_free!96407 (not b_next!97111))))

(declare-fun tp!1114304 () Bool)

(declare-fun b_and!270993 () Bool)

(assert (=> b!3656649 (= tp!1114304 b_and!270993)))

(declare-fun b!3656645 () Bool)

(declare-fun e!2264138 () Bool)

(declare-fun e!2264131 () Bool)

(assert (=> b!3656645 (= e!2264138 e!2264131)))

(declare-fun res!1484078 () Bool)

(assert (=> b!3656645 (=> res!1484078 e!2264131)))

(declare-fun lt!1270610 () Int)

(declare-fun lt!1270578 () Int)

(assert (=> b!3656645 (= res!1484078 (>= lt!1270610 lt!1270578))))

(declare-datatypes ((Unit!55748 0))(
  ( (Unit!55749) )
))
(declare-fun lt!1270595 () Unit!55748)

(declare-fun e!2264137 () Unit!55748)

(assert (=> b!3656645 (= lt!1270595 e!2264137)))

(declare-fun c!631976 () Bool)

(assert (=> b!3656645 (= c!631976 (> lt!1270610 lt!1270578))))

(declare-datatypes ((C!21276 0))(
  ( (C!21277 (val!12686 Int)) )
))
(declare-datatypes ((List!38701 0))(
  ( (Nil!38577) (Cons!38577 (h!43997 C!21276) (t!298064 List!38701)) )
))
(declare-datatypes ((IArray!23591 0))(
  ( (IArray!23592 (innerList!11853 List!38701)) )
))
(declare-datatypes ((Conc!11793 0))(
  ( (Node!11793 (left!30108 Conc!11793) (right!30438 Conc!11793) (csize!23816 Int) (cheight!12004 Int)) (Leaf!18297 (xs!14995 IArray!23591) (csize!23817 Int)) (Empty!11793) )
))
(declare-datatypes ((BalanceConc!23200 0))(
  ( (BalanceConc!23201 (c!631978 Conc!11793)) )
))
(declare-fun lt!1270602 () BalanceConc!23200)

(declare-fun size!29469 (BalanceConc!23200) Int)

(assert (=> b!3656645 (= lt!1270578 (size!29469 lt!1270602))))

(declare-fun lt!1270608 () Unit!55748)

(declare-fun e!2264120 () Unit!55748)

(assert (=> b!3656645 (= lt!1270608 e!2264120)))

(declare-fun c!631975 () Bool)

(declare-datatypes ((List!38702 0))(
  ( (Nil!38578) (Cons!38578 (h!43998 (_ BitVec 16)) (t!298065 List!38702)) )
))
(declare-datatypes ((TokenValue!6016 0))(
  ( (FloatLiteralValue!12032 (text!42557 List!38702)) (TokenValueExt!6015 (__x!24249 Int)) (Broken!30080 (value!185335 List!38702)) (Object!6139) (End!6016) (Def!6016) (Underscore!6016) (Match!6016) (Else!6016) (Error!6016) (Case!6016) (If!6016) (Extends!6016) (Abstract!6016) (Class!6016) (Val!6016) (DelimiterValue!12032 (del!6076 List!38702)) (KeywordValue!6022 (value!185336 List!38702)) (CommentValue!12032 (value!185337 List!38702)) (WhitespaceValue!12032 (value!185338 List!38702)) (IndentationValue!6016 (value!185339 List!38702)) (String!43413) (Int32!6016) (Broken!30081 (value!185340 List!38702)) (Boolean!6017) (Unit!55750) (OperatorValue!6019 (op!6076 List!38702)) (IdentifierValue!12032 (value!185341 List!38702)) (IdentifierValue!12033 (value!185342 List!38702)) (WhitespaceValue!12033 (value!185343 List!38702)) (True!12032) (False!12032) (Broken!30082 (value!185344 List!38702)) (Broken!30083 (value!185345 List!38702)) (True!12033) (RightBrace!6016) (RightBracket!6016) (Colon!6016) (Null!6016) (Comma!6016) (LeftBracket!6016) (False!12033) (LeftBrace!6016) (ImaginaryLiteralValue!6016 (text!42558 List!38702)) (StringLiteralValue!18048 (value!185346 List!38702)) (EOFValue!6016 (value!185347 List!38702)) (IdentValue!6016 (value!185348 List!38702)) (DelimiterValue!12033 (value!185349 List!38702)) (DedentValue!6016 (value!185350 List!38702)) (NewLineValue!6016 (value!185351 List!38702)) (IntegerValue!18048 (value!185352 (_ BitVec 32)) (text!42559 List!38702)) (IntegerValue!18049 (value!185353 Int) (text!42560 List!38702)) (Times!6016) (Or!6016) (Equal!6016) (Minus!6016) (Broken!30084 (value!185354 List!38702)) (And!6016) (Div!6016) (LessEqual!6016) (Mod!6016) (Concat!16561) (Not!6016) (Plus!6016) (SpaceValue!6016 (value!185355 List!38702)) (IntegerValue!18050 (value!185356 Int) (text!42561 List!38702)) (StringLiteralValue!18049 (text!42562 List!38702)) (FloatLiteralValue!12033 (text!42563 List!38702)) (BytesLiteralValue!6016 (value!185357 List!38702)) (CommentValue!12033 (value!185358 List!38702)) (StringLiteralValue!18050 (value!185359 List!38702)) (ErrorTokenValue!6016 (msg!6077 List!38702)) )
))
(declare-datatypes ((Regex!10545 0))(
  ( (ElementMatch!10545 (c!631979 C!21276)) (Concat!16562 (regOne!21602 Regex!10545) (regTwo!21602 Regex!10545)) (EmptyExpr!10545) (Star!10545 (reg!10874 Regex!10545)) (EmptyLang!10545) (Union!10545 (regOne!21603 Regex!10545) (regTwo!21603 Regex!10545)) )
))
(declare-datatypes ((String!43414 0))(
  ( (String!43415 (value!185360 String)) )
))
(declare-datatypes ((TokenValueInjection!11460 0))(
  ( (TokenValueInjection!11461 (toValue!8078 Int) (toChars!7937 Int)) )
))
(declare-datatypes ((Rule!11372 0))(
  ( (Rule!11373 (regex!5786 Regex!10545) (tag!6558 String!43414) (isSeparator!5786 Bool) (transformation!5786 TokenValueInjection!11460)) )
))
(declare-fun rule!403 () Rule!11372)

(assert (=> b!3656645 (= c!631975 (isSeparator!5786 rule!403))))

(declare-fun lt!1270589 () Unit!55748)

(declare-fun e!2264142 () Unit!55748)

(assert (=> b!3656645 (= lt!1270589 e!2264142)))

(declare-fun c!631973 () Bool)

(declare-fun lt!1270618 () List!38701)

(declare-fun lt!1270598 () C!21276)

(declare-fun contains!7637 (List!38701 C!21276) Bool)

(assert (=> b!3656645 (= c!631973 (not (contains!7637 lt!1270618 lt!1270598)))))

(declare-fun lt!1270583 () List!38701)

(declare-fun head!7808 (List!38701) C!21276)

(assert (=> b!3656645 (= lt!1270598 (head!7808 lt!1270583))))

(declare-datatypes ((List!38703 0))(
  ( (Nil!38579) (Cons!38579 (h!43999 Rule!11372) (t!298066 List!38703)) )
))
(declare-fun rules!3307 () List!38703)

(declare-fun b!3656646 () Bool)

(declare-fun e!2264129 () Bool)

(declare-fun e!2264140 () Bool)

(declare-fun tp!1114298 () Bool)

(declare-fun inv!52036 (String!43414) Bool)

(declare-fun inv!52039 (TokenValueInjection!11460) Bool)

(assert (=> b!3656646 (= e!2264129 (and tp!1114298 (inv!52036 (tag!6558 (h!43999 rules!3307))) (inv!52039 (transformation!5786 (h!43999 rules!3307))) e!2264140))))

(declare-fun bm!264400 () Bool)

(declare-fun call!264405 () List!38701)

(declare-datatypes ((Token!10938 0))(
  ( (Token!10939 (value!185361 TokenValue!6016) (rule!8592 Rule!11372) (size!29470 Int) (originalCharacters!6500 List!38701)) )
))
(declare-datatypes ((tuple2!38440 0))(
  ( (tuple2!38441 (_1!22354 Token!10938) (_2!22354 List!38701)) )
))
(declare-fun lt!1270586 () tuple2!38440)

(declare-fun usedCharacters!998 (Regex!10545) List!38701)

(assert (=> bm!264400 (= call!264405 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3656647 () Bool)

(assert (=> b!3656647 false))

(declare-fun lt!1270599 () Unit!55748)

(declare-fun call!264407 () Unit!55748)

(assert (=> b!3656647 (= lt!1270599 call!264407)))

(declare-fun call!264406 () Bool)

(assert (=> b!3656647 (not call!264406)))

(declare-fun lt!1270600 () C!21276)

(declare-fun lt!1270622 () Unit!55748)

(declare-datatypes ((LexerInterface!5375 0))(
  ( (LexerInterfaceExt!5372 (__x!24250 Int)) (Lexer!5373) )
))
(declare-fun thiss!23823 () LexerInterface!5375)

(declare-fun anOtherTypeRule!33 () Rule!11372)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!314 (LexerInterface!5375 List!38703 List!38703 Rule!11372 Rule!11372 C!21276) Unit!55748)

(assert (=> b!3656647 (= lt!1270622 (lemmaSepRuleNotContainsCharContainedInANonSepRule!314 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8592 (_1!22354 lt!1270586)) lt!1270600))))

(declare-fun e!2264127 () Unit!55748)

(declare-fun Unit!55751 () Unit!55748)

(assert (=> b!3656647 (= e!2264127 Unit!55751)))

(declare-fun b!3656648 () Bool)

(declare-fun res!1484100 () Bool)

(declare-fun e!2264143 () Bool)

(assert (=> b!3656648 (=> (not res!1484100) (not e!2264143))))

(declare-fun isEmpty!22872 (List!38703) Bool)

(assert (=> b!3656648 (= res!1484100 (not (isEmpty!22872 rules!3307)))))

(declare-fun e!2264136 () Bool)

(assert (=> b!3656649 (= e!2264136 (and tp!1114307 tp!1114304))))

(declare-fun b!3656650 () Bool)

(declare-fun e!2264123 () Bool)

(declare-fun e!2264145 () Bool)

(assert (=> b!3656650 (= e!2264123 e!2264145)))

(declare-fun res!1484092 () Bool)

(assert (=> b!3656650 (=> res!1484092 e!2264145)))

(declare-fun lt!1270579 () List!38701)

(declare-fun isPrefix!3149 (List!38701 List!38701) Bool)

(assert (=> b!3656650 (= res!1484092 (not (isPrefix!3149 lt!1270583 lt!1270579)))))

(declare-fun ++!9602 (List!38701 List!38701) List!38701)

(assert (=> b!3656650 (isPrefix!3149 lt!1270583 (++!9602 lt!1270583 (_2!22354 lt!1270586)))))

(declare-fun lt!1270585 () Unit!55748)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2068 (List!38701 List!38701) Unit!55748)

(assert (=> b!3656650 (= lt!1270585 (lemmaConcatTwoListThenFirstIsPrefix!2068 lt!1270583 (_2!22354 lt!1270586)))))

(declare-fun lt!1270621 () BalanceConc!23200)

(declare-fun list!14304 (BalanceConc!23200) List!38701)

(assert (=> b!3656650 (= lt!1270583 (list!14304 lt!1270621))))

(declare-fun charsOf!3800 (Token!10938) BalanceConc!23200)

(assert (=> b!3656650 (= lt!1270621 (charsOf!3800 (_1!22354 lt!1270586)))))

(declare-fun e!2264135 () Bool)

(assert (=> b!3656650 e!2264135))

(declare-fun res!1484083 () Bool)

(assert (=> b!3656650 (=> (not res!1484083) (not e!2264135))))

(declare-datatypes ((Option!8200 0))(
  ( (None!8199) (Some!8199 (v!38075 Rule!11372)) )
))
(declare-fun lt!1270611 () Option!8200)

(declare-fun isDefined!6432 (Option!8200) Bool)

(assert (=> b!3656650 (= res!1484083 (isDefined!6432 lt!1270611))))

(declare-fun getRuleFromTag!1390 (LexerInterface!5375 List!38703 String!43414) Option!8200)

(assert (=> b!3656650 (= lt!1270611 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun lt!1270601 () Unit!55748)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1390 (LexerInterface!5375 List!38703 List!38701 Token!10938) Unit!55748)

(assert (=> b!3656650 (= lt!1270601 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1390 thiss!23823 rules!3307 lt!1270579 (_1!22354 lt!1270586)))))

(declare-datatypes ((Option!8201 0))(
  ( (None!8200) (Some!8200 (v!38076 tuple2!38440)) )
))
(declare-fun lt!1270596 () Option!8201)

(declare-fun get!12703 (Option!8201) tuple2!38440)

(assert (=> b!3656650 (= lt!1270586 (get!12703 lt!1270596))))

(declare-fun suffix!1395 () List!38701)

(declare-fun lt!1270581 () List!38701)

(declare-fun lt!1270607 () Unit!55748)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1053 (LexerInterface!5375 List!38703 List!38701 List!38701) Unit!55748)

(assert (=> b!3656650 (= lt!1270607 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1053 thiss!23823 rules!3307 lt!1270581 suffix!1395))))

(declare-fun maxPrefix!2909 (LexerInterface!5375 List!38703 List!38701) Option!8201)

(assert (=> b!3656650 (= lt!1270596 (maxPrefix!2909 thiss!23823 rules!3307 lt!1270579))))

(assert (=> b!3656650 (isPrefix!3149 lt!1270581 lt!1270579)))

(declare-fun lt!1270606 () Unit!55748)

(assert (=> b!3656650 (= lt!1270606 (lemmaConcatTwoListThenFirstIsPrefix!2068 lt!1270581 suffix!1395))))

(assert (=> b!3656650 (= lt!1270579 (++!9602 lt!1270581 suffix!1395))))

(declare-fun b!3656651 () Bool)

(declare-fun res!1484077 () Bool)

(assert (=> b!3656651 (=> res!1484077 e!2264145)))

(declare-fun matchR!5114 (Regex!10545 List!38701) Bool)

(assert (=> b!3656651 (= res!1484077 (not (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583)))))

(declare-fun bm!264401 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (Regex!10545 List!38701 C!21276) Unit!55748)

(assert (=> bm!264401 (= call!264407 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270600))))

(declare-fun b!3656652 () Bool)

(declare-fun e!2264134 () Unit!55748)

(declare-fun Unit!55752 () Unit!55748)

(assert (=> b!3656652 (= e!2264134 Unit!55752)))

(declare-fun b!3656653 () Bool)

(declare-fun e!2264147 () Bool)

(declare-fun lt!1270580 () Option!8201)

(assert (=> b!3656653 (= e!2264147 (= lt!1270596 lt!1270580))))

(declare-fun b!3656654 () Bool)

(declare-fun res!1484093 () Bool)

(assert (=> b!3656654 (=> res!1484093 e!2264147)))

(declare-fun lt!1270624 () Int)

(declare-fun size!29471 (List!38701) Int)

(assert (=> b!3656654 (= res!1484093 (<= (size!29471 lt!1270581) lt!1270624))))

(declare-fun b!3656655 () Bool)

(declare-fun e!2264132 () Bool)

(declare-fun e!2264141 () Bool)

(assert (=> b!3656655 (= e!2264132 e!2264141)))

(declare-fun res!1484080 () Bool)

(assert (=> b!3656655 (=> (not res!1484080) (not e!2264141))))

(declare-fun lt!1270614 () tuple2!38440)

(declare-fun token!511 () Token!10938)

(assert (=> b!3656655 (= res!1484080 (= (_1!22354 lt!1270614) token!511))))

(declare-fun lt!1270588 () Option!8201)

(assert (=> b!3656655 (= lt!1270614 (get!12703 lt!1270588))))

(declare-fun b!3656656 () Bool)

(declare-fun e!2264130 () Bool)

(assert (=> b!3656656 (= e!2264130 e!2264123)))

(declare-fun res!1484082 () Bool)

(assert (=> b!3656656 (=> res!1484082 e!2264123)))

(assert (=> b!3656656 (= res!1484082 (contains!7637 lt!1270618 lt!1270600))))

(assert (=> b!3656656 (= lt!1270600 (head!7808 suffix!1395))))

(assert (=> b!3656656 (= lt!1270618 (usedCharacters!998 (regex!5786 rule!403)))))

(declare-fun b!3656657 () Bool)

(declare-fun res!1484090 () Bool)

(assert (=> b!3656657 (=> (not res!1484090) (not e!2264141))))

(assert (=> b!3656657 (= res!1484090 (= (rule!8592 token!511) rule!403))))

(declare-fun b!3656658 () Bool)

(declare-fun Unit!55753 () Unit!55748)

(assert (=> b!3656658 (= e!2264142 Unit!55753)))

(declare-fun lt!1270587 () Unit!55748)

(assert (=> b!3656658 (= lt!1270587 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 rule!403) lt!1270581 lt!1270598))))

(assert (=> b!3656658 false))

(declare-fun b!3656659 () Bool)

(declare-fun res!1484081 () Bool)

(assert (=> b!3656659 (=> (not res!1484081) (not e!2264141))))

(declare-fun isEmpty!22873 (List!38701) Bool)

(assert (=> b!3656659 (= res!1484081 (isEmpty!22873 (_2!22354 lt!1270614)))))

(declare-fun b!3656660 () Bool)

(declare-fun e!2264148 () Unit!55748)

(assert (=> b!3656660 (= e!2264120 e!2264148)))

(declare-fun c!631972 () Bool)

(assert (=> b!3656660 (= c!631972 (isSeparator!5786 (rule!8592 (_1!22354 lt!1270586))))))

(declare-fun b!3656661 () Bool)

(declare-fun e!2264125 () Bool)

(assert (=> b!3656661 (= e!2264125 e!2264138)))

(declare-fun res!1484089 () Bool)

(assert (=> b!3656661 (=> res!1484089 e!2264138)))

(declare-fun lt!1270590 () List!38701)

(declare-fun lt!1270592 () Option!8201)

(assert (=> b!3656661 (= res!1484089 (or (not (= lt!1270590 (_2!22354 lt!1270586))) (not (= lt!1270592 (Some!8200 (tuple2!38441 (_1!22354 lt!1270586) lt!1270590))))))))

(assert (=> b!3656661 (= (_2!22354 lt!1270586) lt!1270590)))

(declare-fun lt!1270604 () Unit!55748)

(declare-fun lemmaSamePrefixThenSameSuffix!1476 (List!38701 List!38701 List!38701 List!38701 List!38701) Unit!55748)

(assert (=> b!3656661 (= lt!1270604 (lemmaSamePrefixThenSameSuffix!1476 lt!1270583 (_2!22354 lt!1270586) lt!1270583 lt!1270590 lt!1270579))))

(declare-fun getSuffix!1702 (List!38701 List!38701) List!38701)

(assert (=> b!3656661 (= lt!1270590 (getSuffix!1702 lt!1270579 lt!1270583))))

(declare-fun lt!1270616 () Token!10938)

(assert (=> b!3656661 (= lt!1270592 (Some!8200 (tuple2!38441 lt!1270616 (_2!22354 lt!1270586))))))

(declare-fun maxPrefixOneRule!2047 (LexerInterface!5375 Rule!11372 List!38701) Option!8201)

(assert (=> b!3656661 (= lt!1270592 (maxPrefixOneRule!2047 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) lt!1270579))))

(declare-fun lt!1270597 () TokenValue!6016)

(assert (=> b!3656661 (= lt!1270616 (Token!10939 lt!1270597 (rule!8592 (_1!22354 lt!1270586)) lt!1270624 lt!1270583))))

(assert (=> b!3656661 (= lt!1270624 (size!29471 lt!1270583))))

(declare-fun lt!1270591 () BalanceConc!23200)

(declare-fun apply!9288 (TokenValueInjection!11460 BalanceConc!23200) TokenValue!6016)

(assert (=> b!3656661 (= lt!1270597 (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270591))))

(declare-fun seqFromList!4335 (List!38701) BalanceConc!23200)

(assert (=> b!3656661 (= lt!1270591 (seqFromList!4335 lt!1270583))))

(declare-fun lt!1270617 () Unit!55748)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1103 (LexerInterface!5375 List!38703 List!38701 List!38701 List!38701 Rule!11372) Unit!55748)

(assert (=> b!3656661 (= lt!1270617 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1103 thiss!23823 rules!3307 lt!1270583 lt!1270579 (_2!22354 lt!1270586) (rule!8592 (_1!22354 lt!1270586))))))

(declare-fun b!3656662 () Bool)

(declare-fun res!1484088 () Bool)

(assert (=> b!3656662 (=> res!1484088 e!2264131)))

(declare-fun contains!7638 (List!38703 Rule!11372) Bool)

(assert (=> b!3656662 (= res!1484088 (not (contains!7638 rules!3307 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun bm!264402 () Bool)

(declare-fun call!264408 () List!38701)

(assert (=> bm!264402 (= call!264408 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun bm!264403 () Bool)

(declare-fun call!264409 () Bool)

(assert (=> bm!264403 (= call!264409 (contains!7637 call!264405 lt!1270598))))

(declare-fun e!2264124 () Bool)

(declare-fun b!3656663 () Bool)

(declare-fun e!2264119 () Bool)

(declare-fun tp!1114296 () Bool)

(assert (=> b!3656663 (= e!2264124 (and tp!1114296 (inv!52036 (tag!6558 rule!403)) (inv!52039 (transformation!5786 rule!403)) e!2264119))))

(declare-fun b!3656664 () Bool)

(declare-fun res!1484091 () Bool)

(assert (=> b!3656664 (=> res!1484091 e!2264123)))

(declare-fun sepAndNonSepRulesDisjointChars!1954 (List!38703 List!38703) Bool)

(assert (=> b!3656664 (= res!1484091 (not (sepAndNonSepRulesDisjointChars!1954 rules!3307 rules!3307)))))

(declare-fun b!3656665 () Bool)

(assert (=> b!3656665 false))

(declare-fun lt!1270575 () Unit!55748)

(declare-fun call!264410 () Unit!55748)

(assert (=> b!3656665 (= lt!1270575 call!264410)))

(assert (=> b!3656665 (not call!264409)))

(declare-fun lt!1270582 () Unit!55748)

(assert (=> b!3656665 (= lt!1270582 (lemmaSepRuleNotContainsCharContainedInANonSepRule!314 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8592 (_1!22354 lt!1270586)) lt!1270598))))

(declare-fun Unit!55754 () Unit!55748)

(assert (=> b!3656665 (= e!2264148 Unit!55754)))

(declare-fun b!3656666 () Bool)

(assert (=> b!3656666 false))

(declare-fun lt!1270609 () Unit!55748)

(assert (=> b!3656666 (= lt!1270609 call!264407)))

(assert (=> b!3656666 (not call!264406)))

(declare-fun lt!1270623 () Unit!55748)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!432 (LexerInterface!5375 List!38703 List!38703 Rule!11372 Rule!11372 C!21276) Unit!55748)

(assert (=> b!3656666 (= lt!1270623 (lemmaNonSepRuleNotContainsCharContainedInASepRule!432 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) anOtherTypeRule!33 lt!1270600))))

(declare-fun Unit!55755 () Unit!55748)

(assert (=> b!3656666 (= e!2264127 Unit!55755)))

(declare-fun b!3656667 () Bool)

(declare-fun res!1484095 () Bool)

(assert (=> b!3656667 (=> (not res!1484095) (not e!2264143))))

(declare-fun rulesInvariant!4772 (LexerInterface!5375 List!38703) Bool)

(assert (=> b!3656667 (= res!1484095 (rulesInvariant!4772 thiss!23823 rules!3307))))

(declare-fun b!3656668 () Bool)

(assert (=> b!3656668 (= e!2264141 (not e!2264130))))

(declare-fun res!1484099 () Bool)

(assert (=> b!3656668 (=> res!1484099 e!2264130)))

(assert (=> b!3656668 (= res!1484099 (not (matchR!5114 (regex!5786 rule!403) lt!1270581)))))

(declare-fun ruleValid!2050 (LexerInterface!5375 Rule!11372) Bool)

(assert (=> b!3656668 (ruleValid!2050 thiss!23823 rule!403)))

(declare-fun lt!1270577 () Unit!55748)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1204 (LexerInterface!5375 Rule!11372 List!38703) Unit!55748)

(assert (=> b!3656668 (= lt!1270577 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1204 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3656669 () Bool)

(declare-fun e!2264126 () Bool)

(declare-fun lt!1270613 () Rule!11372)

(assert (=> b!3656669 (= e!2264126 (= (rule!8592 (_1!22354 lt!1270586)) lt!1270613))))

(declare-fun b!3656670 () Bool)

(assert (=> b!3656670 (= e!2264120 e!2264134)))

(declare-fun c!631977 () Bool)

(assert (=> b!3656670 (= c!631977 (not (isSeparator!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3656671 () Bool)

(declare-fun Unit!55756 () Unit!55748)

(assert (=> b!3656671 (= e!2264142 Unit!55756)))

(declare-fun e!2264149 () Bool)

(declare-fun e!2264133 () Bool)

(declare-fun tp!1114300 () Bool)

(declare-fun b!3656672 () Bool)

(assert (=> b!3656672 (= e!2264149 (and tp!1114300 (inv!52036 (tag!6558 (rule!8592 token!511))) (inv!52039 (transformation!5786 (rule!8592 token!511))) e!2264133))))

(declare-fun b!3656673 () Bool)

(declare-fun res!1484085 () Bool)

(assert (=> b!3656673 (=> res!1484085 e!2264130)))

(assert (=> b!3656673 (= res!1484085 (isEmpty!22873 suffix!1395))))

(declare-fun bm!264404 () Bool)

(assert (=> bm!264404 (= call!264410 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270598))))

(declare-fun b!3656674 () Bool)

(declare-fun e!2264128 () Bool)

(declare-fun tp!1114299 () Bool)

(assert (=> b!3656674 (= e!2264128 (and e!2264129 tp!1114299))))

(declare-fun b!3656675 () Bool)

(declare-fun Unit!55757 () Unit!55748)

(assert (=> b!3656675 (= e!2264148 Unit!55757)))

(declare-fun b!3656676 () Bool)

(assert (=> b!3656676 (= e!2264145 e!2264125)))

(declare-fun res!1484098 () Bool)

(assert (=> b!3656676 (=> res!1484098 e!2264125)))

(declare-fun lt!1270594 () TokenValue!6016)

(assert (=> b!3656676 (= res!1484098 (not (= lt!1270596 (Some!8200 (tuple2!38441 (Token!10939 lt!1270594 (rule!8592 (_1!22354 lt!1270586)) lt!1270610 lt!1270583) (_2!22354 lt!1270586))))))))

(assert (=> b!3656676 (= lt!1270610 (size!29469 lt!1270621))))

(assert (=> b!3656676 (= lt!1270594 (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621))))

(declare-fun lt!1270576 () Unit!55748)

(declare-fun lemmaCharactersSize!831 (Token!10938) Unit!55748)

(assert (=> b!3656676 (= lt!1270576 (lemmaCharactersSize!831 (_1!22354 lt!1270586)))))

(declare-fun lt!1270605 () Unit!55748)

(declare-fun lemmaEqSameImage!969 (TokenValueInjection!11460 BalanceConc!23200 BalanceConc!23200) Unit!55748)

(assert (=> b!3656676 (= lt!1270605 (lemmaEqSameImage!969 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621 (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586)))))))

(declare-fun lt!1270619 () Unit!55748)

(declare-fun lemmaSemiInverse!1535 (TokenValueInjection!11460 BalanceConc!23200) Unit!55748)

(assert (=> b!3656676 (= lt!1270619 (lemmaSemiInverse!1535 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621))))

(declare-fun b!3656677 () Bool)

(declare-fun res!1484096 () Bool)

(assert (=> b!3656677 (=> (not res!1484096) (not e!2264143))))

(assert (=> b!3656677 (= res!1484096 (contains!7638 rules!3307 rule!403))))

(assert (=> b!3656678 (= e!2264119 (and tp!1114297 tp!1114301))))

(declare-fun b!3656679 () Bool)

(declare-fun Unit!55758 () Unit!55748)

(assert (=> b!3656679 (= e!2264137 Unit!55758)))

(assert (=> b!3656680 (= e!2264140 (and tp!1114305 tp!1114310))))

(declare-fun res!1484079 () Bool)

(assert (=> start!342078 (=> (not res!1484079) (not e!2264143))))

(get-info :version)

(assert (=> start!342078 (= res!1484079 ((_ is Lexer!5373) thiss!23823))))

(assert (=> start!342078 e!2264143))

(assert (=> start!342078 e!2264128))

(declare-fun e!2264122 () Bool)

(assert (=> start!342078 e!2264122))

(assert (=> start!342078 true))

(declare-fun e!2264117 () Bool)

(declare-fun inv!52040 (Token!10938) Bool)

(assert (=> start!342078 (and (inv!52040 token!511) e!2264117)))

(assert (=> start!342078 e!2264124))

(declare-fun e!2264121 () Bool)

(assert (=> start!342078 e!2264121))

(assert (=> b!3656681 (= e!2264133 (and tp!1114303 tp!1114309))))

(declare-fun b!3656682 () Bool)

(assert (=> b!3656682 (= e!2264143 e!2264132)))

(declare-fun res!1484087 () Bool)

(assert (=> b!3656682 (=> (not res!1484087) (not e!2264132))))

(declare-fun isDefined!6433 (Option!8201) Bool)

(assert (=> b!3656682 (= res!1484087 (isDefined!6433 lt!1270588))))

(assert (=> b!3656682 (= lt!1270588 (maxPrefix!2909 thiss!23823 rules!3307 lt!1270581))))

(assert (=> b!3656682 (= lt!1270581 (list!14304 lt!1270602))))

(assert (=> b!3656682 (= lt!1270602 (charsOf!3800 token!511))))

(declare-fun b!3656683 () Bool)

(assert (=> b!3656683 false))

(declare-fun lt!1270593 () Unit!55748)

(assert (=> b!3656683 (= lt!1270593 call!264410)))

(assert (=> b!3656683 (not call!264409)))

(declare-fun lt!1270584 () Unit!55748)

(assert (=> b!3656683 (= lt!1270584 (lemmaNonSepRuleNotContainsCharContainedInASepRule!432 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) rule!403 lt!1270598))))

(declare-fun Unit!55759 () Unit!55748)

(assert (=> b!3656683 (= e!2264134 Unit!55759)))

(declare-fun b!3656684 () Bool)

(declare-fun res!1484097 () Bool)

(assert (=> b!3656684 (=> (not res!1484097) (not e!2264143))))

(assert (=> b!3656684 (= res!1484097 (not (= (isSeparator!5786 anOtherTypeRule!33) (isSeparator!5786 rule!403))))))

(declare-fun b!3656685 () Bool)

(declare-fun tp!1114306 () Bool)

(declare-fun inv!21 (TokenValue!6016) Bool)

(assert (=> b!3656685 (= e!2264117 (and (inv!21 (value!185361 token!511)) e!2264149 tp!1114306))))

(declare-fun bm!264405 () Bool)

(assert (=> bm!264405 (= call!264406 (contains!7637 call!264408 lt!1270600))))

(declare-fun b!3656686 () Bool)

(declare-fun tp_is_empty!18173 () Bool)

(declare-fun tp!1114308 () Bool)

(assert (=> b!3656686 (= e!2264122 (and tp_is_empty!18173 tp!1114308))))

(declare-fun b!3656687 () Bool)

(assert (=> b!3656687 (= e!2264137 e!2264127)))

(declare-fun lt!1270603 () Unit!55748)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!94 (List!38701 List!38701 List!38701 List!38701) Unit!55748)

(assert (=> b!3656687 (= lt!1270603 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!94 lt!1270581 suffix!1395 lt!1270583 lt!1270579))))

(assert (=> b!3656687 (contains!7637 lt!1270583 lt!1270600)))

(declare-fun c!631974 () Bool)

(assert (=> b!3656687 (= c!631974 (isSeparator!5786 rule!403))))

(declare-fun b!3656688 () Bool)

(declare-fun res!1484086 () Bool)

(assert (=> b!3656688 (=> (not res!1484086) (not e!2264143))))

(assert (=> b!3656688 (= res!1484086 (contains!7638 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3656689 () Bool)

(assert (=> b!3656689 (= e!2264135 e!2264126)))

(declare-fun res!1484094 () Bool)

(assert (=> b!3656689 (=> (not res!1484094) (not e!2264126))))

(assert (=> b!3656689 (= res!1484094 (matchR!5114 (regex!5786 lt!1270613) (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))))))

(declare-fun get!12704 (Option!8200) Rule!11372)

(assert (=> b!3656689 (= lt!1270613 (get!12704 lt!1270611))))

(declare-fun b!3656690 () Bool)

(declare-fun res!1484101 () Bool)

(assert (=> b!3656690 (=> res!1484101 e!2264123)))

(assert (=> b!3656690 (= res!1484101 (not (contains!7637 (usedCharacters!998 (regex!5786 anOtherTypeRule!33)) lt!1270600)))))

(declare-fun tp!1114302 () Bool)

(declare-fun b!3656691 () Bool)

(assert (=> b!3656691 (= e!2264121 (and tp!1114302 (inv!52036 (tag!6558 anOtherTypeRule!33)) (inv!52039 (transformation!5786 anOtherTypeRule!33)) e!2264136))))

(declare-fun b!3656692 () Bool)

(assert (=> b!3656692 (= e!2264131 e!2264147)))

(declare-fun res!1484084 () Bool)

(assert (=> b!3656692 (=> res!1484084 e!2264147)))

(assert (=> b!3656692 (= res!1484084 (not (= lt!1270592 lt!1270580)))))

(assert (=> b!3656692 (= lt!1270580 (Some!8200 (tuple2!38441 lt!1270616 lt!1270590)))))

(assert (=> b!3656692 (isPrefix!3149 lt!1270579 lt!1270579)))

(declare-fun lt!1270620 () Unit!55748)

(declare-fun lemmaIsPrefixRefl!1988 (List!38701 List!38701) Unit!55748)

(assert (=> b!3656692 (= lt!1270620 (lemmaIsPrefixRefl!1988 lt!1270579 lt!1270579))))

(declare-fun lt!1270612 () Unit!55748)

(assert (=> b!3656692 (= lt!1270612 (lemmaSemiInverse!1535 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270591))))

(assert (=> b!3656692 (ruleValid!2050 thiss!23823 (rule!8592 (_1!22354 lt!1270586)))))

(declare-fun lt!1270615 () Unit!55748)

(assert (=> b!3656692 (= lt!1270615 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1204 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) rules!3307))))

(assert (= (and start!342078 res!1484079) b!3656648))

(assert (= (and b!3656648 res!1484100) b!3656667))

(assert (= (and b!3656667 res!1484095) b!3656677))

(assert (= (and b!3656677 res!1484096) b!3656688))

(assert (= (and b!3656688 res!1484086) b!3656684))

(assert (= (and b!3656684 res!1484097) b!3656682))

(assert (= (and b!3656682 res!1484087) b!3656655))

(assert (= (and b!3656655 res!1484080) b!3656659))

(assert (= (and b!3656659 res!1484081) b!3656657))

(assert (= (and b!3656657 res!1484090) b!3656668))

(assert (= (and b!3656668 (not res!1484099)) b!3656673))

(assert (= (and b!3656673 (not res!1484085)) b!3656656))

(assert (= (and b!3656656 (not res!1484082)) b!3656690))

(assert (= (and b!3656690 (not res!1484101)) b!3656664))

(assert (= (and b!3656664 (not res!1484091)) b!3656650))

(assert (= (and b!3656650 res!1484083) b!3656689))

(assert (= (and b!3656689 res!1484094) b!3656669))

(assert (= (and b!3656650 (not res!1484092)) b!3656651))

(assert (= (and b!3656651 (not res!1484077)) b!3656676))

(assert (= (and b!3656676 (not res!1484098)) b!3656661))

(assert (= (and b!3656661 (not res!1484089)) b!3656645))

(assert (= (and b!3656645 c!631973) b!3656658))

(assert (= (and b!3656645 (not c!631973)) b!3656671))

(assert (= (and b!3656645 c!631975) b!3656670))

(assert (= (and b!3656645 (not c!631975)) b!3656660))

(assert (= (and b!3656670 c!631977) b!3656683))

(assert (= (and b!3656670 (not c!631977)) b!3656652))

(assert (= (and b!3656660 c!631972) b!3656665))

(assert (= (and b!3656660 (not c!631972)) b!3656675))

(assert (= (or b!3656683 b!3656665) bm!264404))

(assert (= (or b!3656683 b!3656665) bm!264400))

(assert (= (or b!3656683 b!3656665) bm!264403))

(assert (= (and b!3656645 c!631976) b!3656687))

(assert (= (and b!3656645 (not c!631976)) b!3656679))

(assert (= (and b!3656687 c!631974) b!3656647))

(assert (= (and b!3656687 (not c!631974)) b!3656666))

(assert (= (or b!3656647 b!3656666) bm!264401))

(assert (= (or b!3656647 b!3656666) bm!264402))

(assert (= (or b!3656647 b!3656666) bm!264405))

(assert (= (and b!3656645 (not res!1484078)) b!3656662))

(assert (= (and b!3656662 (not res!1484088)) b!3656692))

(assert (= (and b!3656692 (not res!1484084)) b!3656654))

(assert (= (and b!3656654 (not res!1484093)) b!3656653))

(assert (= b!3656646 b!3656680))

(assert (= b!3656674 b!3656646))

(assert (= (and start!342078 ((_ is Cons!38579) rules!3307)) b!3656674))

(assert (= (and start!342078 ((_ is Cons!38577) suffix!1395)) b!3656686))

(assert (= b!3656672 b!3656681))

(assert (= b!3656685 b!3656672))

(assert (= start!342078 b!3656685))

(assert (= b!3656663 b!3656678))

(assert (= start!342078 b!3656663))

(assert (= b!3656691 b!3656649))

(assert (= start!342078 b!3656691))

(declare-fun m!4162277 () Bool)

(assert (=> b!3656673 m!4162277))

(declare-fun m!4162279 () Bool)

(assert (=> b!3656685 m!4162279))

(declare-fun m!4162281 () Bool)

(assert (=> b!3656664 m!4162281))

(declare-fun m!4162283 () Bool)

(assert (=> bm!264401 m!4162283))

(declare-fun m!4162285 () Bool)

(assert (=> b!3656663 m!4162285))

(declare-fun m!4162287 () Bool)

(assert (=> b!3656663 m!4162287))

(declare-fun m!4162289 () Bool)

(assert (=> b!3656658 m!4162289))

(declare-fun m!4162291 () Bool)

(assert (=> b!3656654 m!4162291))

(declare-fun m!4162293 () Bool)

(assert (=> b!3656690 m!4162293))

(assert (=> b!3656690 m!4162293))

(declare-fun m!4162295 () Bool)

(assert (=> b!3656690 m!4162295))

(declare-fun m!4162297 () Bool)

(assert (=> b!3656648 m!4162297))

(declare-fun m!4162299 () Bool)

(assert (=> b!3656655 m!4162299))

(declare-fun m!4162301 () Bool)

(assert (=> b!3656682 m!4162301))

(declare-fun m!4162303 () Bool)

(assert (=> b!3656682 m!4162303))

(declare-fun m!4162305 () Bool)

(assert (=> b!3656682 m!4162305))

(declare-fun m!4162307 () Bool)

(assert (=> b!3656682 m!4162307))

(declare-fun m!4162309 () Bool)

(assert (=> b!3656656 m!4162309))

(declare-fun m!4162311 () Bool)

(assert (=> b!3656656 m!4162311))

(declare-fun m!4162313 () Bool)

(assert (=> b!3656656 m!4162313))

(declare-fun m!4162315 () Bool)

(assert (=> b!3656651 m!4162315))

(declare-fun m!4162317 () Bool)

(assert (=> b!3656691 m!4162317))

(declare-fun m!4162319 () Bool)

(assert (=> b!3656691 m!4162319))

(declare-fun m!4162321 () Bool)

(assert (=> b!3656662 m!4162321))

(declare-fun m!4162323 () Bool)

(assert (=> bm!264404 m!4162323))

(declare-fun m!4162325 () Bool)

(assert (=> b!3656676 m!4162325))

(declare-fun m!4162327 () Bool)

(assert (=> b!3656676 m!4162327))

(declare-fun m!4162329 () Bool)

(assert (=> b!3656676 m!4162329))

(declare-fun m!4162331 () Bool)

(assert (=> b!3656676 m!4162331))

(declare-fun m!4162333 () Bool)

(assert (=> b!3656676 m!4162333))

(declare-fun m!4162335 () Bool)

(assert (=> b!3656676 m!4162335))

(assert (=> b!3656676 m!4162329))

(declare-fun m!4162337 () Bool)

(assert (=> bm!264400 m!4162337))

(declare-fun m!4162339 () Bool)

(assert (=> start!342078 m!4162339))

(declare-fun m!4162341 () Bool)

(assert (=> b!3656659 m!4162341))

(declare-fun m!4162343 () Bool)

(assert (=> b!3656646 m!4162343))

(declare-fun m!4162345 () Bool)

(assert (=> b!3656646 m!4162345))

(declare-fun m!4162347 () Bool)

(assert (=> b!3656677 m!4162347))

(declare-fun m!4162349 () Bool)

(assert (=> bm!264403 m!4162349))

(declare-fun m!4162351 () Bool)

(assert (=> b!3656672 m!4162351))

(declare-fun m!4162353 () Bool)

(assert (=> b!3656672 m!4162353))

(declare-fun m!4162355 () Bool)

(assert (=> b!3656668 m!4162355))

(declare-fun m!4162357 () Bool)

(assert (=> b!3656668 m!4162357))

(declare-fun m!4162359 () Bool)

(assert (=> b!3656668 m!4162359))

(declare-fun m!4162361 () Bool)

(assert (=> b!3656661 m!4162361))

(declare-fun m!4162363 () Bool)

(assert (=> b!3656661 m!4162363))

(declare-fun m!4162365 () Bool)

(assert (=> b!3656661 m!4162365))

(declare-fun m!4162367 () Bool)

(assert (=> b!3656661 m!4162367))

(declare-fun m!4162369 () Bool)

(assert (=> b!3656661 m!4162369))

(declare-fun m!4162371 () Bool)

(assert (=> b!3656661 m!4162371))

(declare-fun m!4162373 () Bool)

(assert (=> b!3656661 m!4162373))

(declare-fun m!4162375 () Bool)

(assert (=> b!3656666 m!4162375))

(declare-fun m!4162377 () Bool)

(assert (=> b!3656683 m!4162377))

(assert (=> bm!264402 m!4162337))

(declare-fun m!4162379 () Bool)

(assert (=> b!3656645 m!4162379))

(declare-fun m!4162381 () Bool)

(assert (=> b!3656645 m!4162381))

(declare-fun m!4162383 () Bool)

(assert (=> b!3656645 m!4162383))

(declare-fun m!4162385 () Bool)

(assert (=> b!3656687 m!4162385))

(declare-fun m!4162387 () Bool)

(assert (=> b!3656687 m!4162387))

(declare-fun m!4162389 () Bool)

(assert (=> b!3656689 m!4162389))

(assert (=> b!3656689 m!4162389))

(declare-fun m!4162391 () Bool)

(assert (=> b!3656689 m!4162391))

(assert (=> b!3656689 m!4162391))

(declare-fun m!4162393 () Bool)

(assert (=> b!3656689 m!4162393))

(declare-fun m!4162395 () Bool)

(assert (=> b!3656689 m!4162395))

(declare-fun m!4162397 () Bool)

(assert (=> b!3656688 m!4162397))

(declare-fun m!4162399 () Bool)

(assert (=> b!3656647 m!4162399))

(assert (=> b!3656650 m!4162389))

(declare-fun m!4162401 () Bool)

(assert (=> b!3656650 m!4162401))

(declare-fun m!4162403 () Bool)

(assert (=> b!3656650 m!4162403))

(declare-fun m!4162405 () Bool)

(assert (=> b!3656650 m!4162405))

(declare-fun m!4162407 () Bool)

(assert (=> b!3656650 m!4162407))

(declare-fun m!4162409 () Bool)

(assert (=> b!3656650 m!4162409))

(declare-fun m!4162411 () Bool)

(assert (=> b!3656650 m!4162411))

(declare-fun m!4162413 () Bool)

(assert (=> b!3656650 m!4162413))

(declare-fun m!4162415 () Bool)

(assert (=> b!3656650 m!4162415))

(declare-fun m!4162417 () Bool)

(assert (=> b!3656650 m!4162417))

(assert (=> b!3656650 m!4162415))

(declare-fun m!4162419 () Bool)

(assert (=> b!3656650 m!4162419))

(declare-fun m!4162421 () Bool)

(assert (=> b!3656650 m!4162421))

(declare-fun m!4162423 () Bool)

(assert (=> b!3656650 m!4162423))

(declare-fun m!4162425 () Bool)

(assert (=> b!3656650 m!4162425))

(declare-fun m!4162427 () Bool)

(assert (=> b!3656650 m!4162427))

(declare-fun m!4162429 () Bool)

(assert (=> b!3656667 m!4162429))

(declare-fun m!4162431 () Bool)

(assert (=> b!3656692 m!4162431))

(declare-fun m!4162433 () Bool)

(assert (=> b!3656692 m!4162433))

(declare-fun m!4162435 () Bool)

(assert (=> b!3656692 m!4162435))

(declare-fun m!4162437 () Bool)

(assert (=> b!3656692 m!4162437))

(declare-fun m!4162439 () Bool)

(assert (=> b!3656692 m!4162439))

(declare-fun m!4162441 () Bool)

(assert (=> b!3656665 m!4162441))

(declare-fun m!4162443 () Bool)

(assert (=> bm!264405 m!4162443))

(check-sat (not b!3656673) (not b!3656691) (not bm!264401) (not b!3656689) (not bm!264405) (not b!3656665) (not b_next!97101) b_and!270985 (not b!3656655) (not b!3656676) (not b!3656658) (not b!3656677) (not bm!264400) b_and!270993 (not b!3656666) (not b!3656688) (not b!3656685) (not start!342078) (not b!3656667) (not b!3656646) (not b!3656692) (not b!3656656) (not b!3656648) (not b_next!97111) (not b!3656668) (not b!3656654) (not b!3656663) b_and!270981 (not b!3656645) (not b!3656659) (not b_next!97103) (not b_next!97099) tp_is_empty!18173 (not b!3656647) (not b!3656662) (not b_next!97097) (not b_next!97105) b_and!270983 (not b!3656674) b_and!270979 (not b_next!97107) (not b!3656650) (not b!3656690) b_and!270987 (not bm!264403) (not b!3656661) (not b!3656686) (not b!3656651) (not b_next!97109) (not b!3656683) (not bm!264402) (not b!3656687) b_and!270991 b_and!270989 (not b!3656664) (not b!3656672) (not bm!264404) (not b!3656682))
(check-sat b_and!270993 (not b_next!97111) b_and!270981 (not b_next!97103) (not b_next!97099) b_and!270987 (not b_next!97109) (not b_next!97101) b_and!270985 (not b_next!97097) (not b_next!97105) b_and!270983 b_and!270979 (not b_next!97107) b_and!270991 b_and!270989)
(get-model)

(declare-fun d!1073892 () Bool)

(assert (=> d!1073892 (= (get!12703 lt!1270588) (v!38076 lt!1270588))))

(assert (=> b!3656655 d!1073892))

(declare-fun d!1073894 () Bool)

(assert (=> d!1073894 (not (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583))))

(declare-fun lt!1270651 () Unit!55748)

(declare-fun choose!21593 (Regex!10545 List!38701 C!21276) Unit!55748)

(assert (=> d!1073894 (= lt!1270651 (choose!21593 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270598))))

(declare-fun validRegex!4827 (Regex!10545) Bool)

(assert (=> d!1073894 (validRegex!4827 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))

(assert (=> d!1073894 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270598) lt!1270651)))

(declare-fun bs!572438 () Bool)

(assert (= bs!572438 d!1073894))

(assert (=> bs!572438 m!4162315))

(declare-fun m!4162495 () Bool)

(assert (=> bs!572438 m!4162495))

(declare-fun m!4162501 () Bool)

(assert (=> bs!572438 m!4162501))

(assert (=> bm!264404 d!1073894))

(declare-fun d!1073896 () Bool)

(assert (=> d!1073896 (= (isEmpty!22873 suffix!1395) ((_ is Nil!38577) suffix!1395))))

(assert (=> b!3656673 d!1073896))

(declare-fun d!1073900 () Bool)

(declare-fun lt!1270657 () Int)

(assert (=> d!1073900 (>= lt!1270657 0)))

(declare-fun e!2264195 () Int)

(assert (=> d!1073900 (= lt!1270657 e!2264195)))

(declare-fun c!631995 () Bool)

(assert (=> d!1073900 (= c!631995 ((_ is Nil!38577) lt!1270581))))

(assert (=> d!1073900 (= (size!29471 lt!1270581) lt!1270657)))

(declare-fun b!3656783 () Bool)

(assert (=> b!3656783 (= e!2264195 0)))

(declare-fun b!3656784 () Bool)

(assert (=> b!3656784 (= e!2264195 (+ 1 (size!29471 (t!298064 lt!1270581))))))

(assert (= (and d!1073900 c!631995) b!3656783))

(assert (= (and d!1073900 (not c!631995)) b!3656784))

(declare-fun m!4162517 () Bool)

(assert (=> b!3656784 m!4162517))

(assert (=> b!3656654 d!1073900))

(declare-fun d!1073906 () Bool)

(declare-fun e!2264220 () Bool)

(assert (=> d!1073906 e!2264220))

(declare-fun res!1484191 () Bool)

(assert (=> d!1073906 (=> res!1484191 e!2264220)))

(declare-fun lt!1270667 () Bool)

(assert (=> d!1073906 (= res!1484191 (not lt!1270667))))

(declare-fun e!2264219 () Bool)

(assert (=> d!1073906 (= lt!1270667 e!2264219)))

(declare-fun res!1484189 () Bool)

(assert (=> d!1073906 (=> res!1484189 e!2264219)))

(assert (=> d!1073906 (= res!1484189 ((_ is Nil!38577) lt!1270579))))

(assert (=> d!1073906 (= (isPrefix!3149 lt!1270579 lt!1270579) lt!1270667)))

(declare-fun b!3656817 () Bool)

(declare-fun res!1484192 () Bool)

(declare-fun e!2264221 () Bool)

(assert (=> b!3656817 (=> (not res!1484192) (not e!2264221))))

(assert (=> b!3656817 (= res!1484192 (= (head!7808 lt!1270579) (head!7808 lt!1270579)))))

(declare-fun b!3656819 () Bool)

(assert (=> b!3656819 (= e!2264220 (>= (size!29471 lt!1270579) (size!29471 lt!1270579)))))

(declare-fun b!3656816 () Bool)

(assert (=> b!3656816 (= e!2264219 e!2264221)))

(declare-fun res!1484190 () Bool)

(assert (=> b!3656816 (=> (not res!1484190) (not e!2264221))))

(assert (=> b!3656816 (= res!1484190 (not ((_ is Nil!38577) lt!1270579)))))

(declare-fun b!3656818 () Bool)

(declare-fun tail!5663 (List!38701) List!38701)

(assert (=> b!3656818 (= e!2264221 (isPrefix!3149 (tail!5663 lt!1270579) (tail!5663 lt!1270579)))))

(assert (= (and d!1073906 (not res!1484189)) b!3656816))

(assert (= (and b!3656816 res!1484190) b!3656817))

(assert (= (and b!3656817 res!1484192) b!3656818))

(assert (= (and d!1073906 (not res!1484191)) b!3656819))

(declare-fun m!4162539 () Bool)

(assert (=> b!3656817 m!4162539))

(assert (=> b!3656817 m!4162539))

(declare-fun m!4162541 () Bool)

(assert (=> b!3656819 m!4162541))

(assert (=> b!3656819 m!4162541))

(declare-fun m!4162543 () Bool)

(assert (=> b!3656818 m!4162543))

(assert (=> b!3656818 m!4162543))

(assert (=> b!3656818 m!4162543))

(assert (=> b!3656818 m!4162543))

(declare-fun m!4162545 () Bool)

(assert (=> b!3656818 m!4162545))

(assert (=> b!3656692 d!1073906))

(declare-fun d!1073920 () Bool)

(declare-fun res!1484211 () Bool)

(declare-fun e!2264236 () Bool)

(assert (=> d!1073920 (=> (not res!1484211) (not e!2264236))))

(assert (=> d!1073920 (= res!1484211 (validRegex!4827 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(assert (=> d!1073920 (= (ruleValid!2050 thiss!23823 (rule!8592 (_1!22354 lt!1270586))) e!2264236)))

(declare-fun b!3656838 () Bool)

(declare-fun res!1484212 () Bool)

(assert (=> b!3656838 (=> (not res!1484212) (not e!2264236))))

(declare-fun nullable!3665 (Regex!10545) Bool)

(assert (=> b!3656838 (= res!1484212 (not (nullable!3665 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))))

(declare-fun b!3656839 () Bool)

(assert (=> b!3656839 (= e!2264236 (not (= (tag!6558 (rule!8592 (_1!22354 lt!1270586))) (String!43415 ""))))))

(assert (= (and d!1073920 res!1484211) b!3656838))

(assert (= (and b!3656838 res!1484212) b!3656839))

(assert (=> d!1073920 m!4162501))

(declare-fun m!4162561 () Bool)

(assert (=> b!3656838 m!4162561))

(assert (=> b!3656692 d!1073920))

(declare-fun b!3657026 () Bool)

(declare-fun e!2264343 () Bool)

(assert (=> b!3657026 (= e!2264343 true)))

(declare-fun d!1073930 () Bool)

(assert (=> d!1073930 e!2264343))

(assert (= d!1073930 b!3657026))

(declare-fun order!21267 () Int)

(declare-fun lambda!124528 () Int)

(declare-fun order!21269 () Int)

(declare-fun dynLambda!16831 (Int Int) Int)

(declare-fun dynLambda!16832 (Int Int) Int)

(assert (=> b!3657026 (< (dynLambda!16831 order!21267 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16832 order!21269 lambda!124528))))

(declare-fun order!21271 () Int)

(declare-fun dynLambda!16833 (Int Int) Int)

(assert (=> b!3657026 (< (dynLambda!16833 order!21271 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16832 order!21269 lambda!124528))))

(declare-fun dynLambda!16834 (Int TokenValue!6016) BalanceConc!23200)

(declare-fun dynLambda!16835 (Int BalanceConc!23200) TokenValue!6016)

(assert (=> d!1073930 (= (list!14304 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270591))) (list!14304 lt!1270591))))

(declare-fun lt!1270795 () Unit!55748)

(declare-fun ForallOf!721 (Int BalanceConc!23200) Unit!55748)

(assert (=> d!1073930 (= lt!1270795 (ForallOf!721 lambda!124528 lt!1270591))))

(assert (=> d!1073930 (= (lemmaSemiInverse!1535 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270591) lt!1270795)))

(declare-fun b_lambda!108443 () Bool)

(assert (=> (not b_lambda!108443) (not d!1073930)))

(declare-fun t!298092 () Bool)

(declare-fun tb!211145 () Bool)

(assert (=> (and b!3656681 (= (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298092) tb!211145))

(declare-fun b!3657031 () Bool)

(declare-fun e!2264346 () Bool)

(declare-fun tp!1114317 () Bool)

(declare-fun inv!52043 (Conc!11793) Bool)

(assert (=> b!3657031 (= e!2264346 (and (inv!52043 (c!631978 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270591)))) tp!1114317))))

(declare-fun result!257090 () Bool)

(declare-fun inv!52044 (BalanceConc!23200) Bool)

(assert (=> tb!211145 (= result!257090 (and (inv!52044 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270591))) e!2264346))))

(assert (= tb!211145 b!3657031))

(declare-fun m!4162855 () Bool)

(assert (=> b!3657031 m!4162855))

(declare-fun m!4162857 () Bool)

(assert (=> tb!211145 m!4162857))

(assert (=> d!1073930 t!298092))

(declare-fun b_and!271027 () Bool)

(assert (= b_and!270981 (and (=> t!298092 result!257090) b_and!271027)))

(declare-fun t!298094 () Bool)

(declare-fun tb!211147 () Bool)

(assert (=> (and b!3656678 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298094) tb!211147))

(declare-fun result!257094 () Bool)

(assert (= result!257094 result!257090))

(assert (=> d!1073930 t!298094))

(declare-fun b_and!271029 () Bool)

(assert (= b_and!270985 (and (=> t!298094 result!257094) b_and!271029)))

(declare-fun tb!211149 () Bool)

(declare-fun t!298096 () Bool)

(assert (=> (and b!3656680 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298096) tb!211149))

(declare-fun result!257096 () Bool)

(assert (= result!257096 result!257090))

(assert (=> d!1073930 t!298096))

(declare-fun b_and!271031 () Bool)

(assert (= b_and!270989 (and (=> t!298096 result!257096) b_and!271031)))

(declare-fun tb!211151 () Bool)

(declare-fun t!298098 () Bool)

(assert (=> (and b!3656649 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298098) tb!211151))

(declare-fun result!257098 () Bool)

(assert (= result!257098 result!257090))

(assert (=> d!1073930 t!298098))

(declare-fun b_and!271033 () Bool)

(assert (= b_and!270993 (and (=> t!298098 result!257098) b_and!271033)))

(declare-fun b_lambda!108445 () Bool)

(assert (=> (not b_lambda!108445) (not d!1073930)))

(declare-fun t!298100 () Bool)

(declare-fun tb!211153 () Bool)

(assert (=> (and b!3656681 (= (toValue!8078 (transformation!5786 (rule!8592 token!511))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298100) tb!211153))

(declare-fun result!257100 () Bool)

(assert (=> tb!211153 (= result!257100 (inv!21 (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270591)))))

(declare-fun m!4162859 () Bool)

(assert (=> tb!211153 m!4162859))

(assert (=> d!1073930 t!298100))

(declare-fun b_and!271035 () Bool)

(assert (= b_and!270979 (and (=> t!298100 result!257100) b_and!271035)))

(declare-fun t!298102 () Bool)

(declare-fun tb!211155 () Bool)

(assert (=> (and b!3656678 (= (toValue!8078 (transformation!5786 rule!403)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298102) tb!211155))

(declare-fun result!257104 () Bool)

(assert (= result!257104 result!257100))

(assert (=> d!1073930 t!298102))

(declare-fun b_and!271037 () Bool)

(assert (= b_and!270983 (and (=> t!298102 result!257104) b_and!271037)))

(declare-fun tb!211157 () Bool)

(declare-fun t!298104 () Bool)

(assert (=> (and b!3656680 (= (toValue!8078 (transformation!5786 (h!43999 rules!3307))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298104) tb!211157))

(declare-fun result!257106 () Bool)

(assert (= result!257106 result!257100))

(assert (=> d!1073930 t!298104))

(declare-fun b_and!271039 () Bool)

(assert (= b_and!270987 (and (=> t!298104 result!257106) b_and!271039)))

(declare-fun t!298106 () Bool)

(declare-fun tb!211159 () Bool)

(assert (=> (and b!3656649 (= (toValue!8078 (transformation!5786 anOtherTypeRule!33)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298106) tb!211159))

(declare-fun result!257108 () Bool)

(assert (= result!257108 result!257100))

(assert (=> d!1073930 t!298106))

(declare-fun b_and!271041 () Bool)

(assert (= b_and!270991 (and (=> t!298106 result!257108) b_and!271041)))

(declare-fun m!4162861 () Bool)

(assert (=> d!1073930 m!4162861))

(declare-fun m!4162863 () Bool)

(assert (=> d!1073930 m!4162863))

(declare-fun m!4162865 () Bool)

(assert (=> d!1073930 m!4162865))

(declare-fun m!4162867 () Bool)

(assert (=> d!1073930 m!4162867))

(assert (=> d!1073930 m!4162865))

(declare-fun m!4162869 () Bool)

(assert (=> d!1073930 m!4162869))

(assert (=> d!1073930 m!4162863))

(assert (=> b!3656692 d!1073930))

(declare-fun d!1074012 () Bool)

(assert (=> d!1074012 (ruleValid!2050 thiss!23823 (rule!8592 (_1!22354 lt!1270586)))))

(declare-fun lt!1270801 () Unit!55748)

(declare-fun choose!21596 (LexerInterface!5375 Rule!11372 List!38703) Unit!55748)

(assert (=> d!1074012 (= lt!1270801 (choose!21596 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) rules!3307))))

(assert (=> d!1074012 (contains!7638 rules!3307 (rule!8592 (_1!22354 lt!1270586)))))

(assert (=> d!1074012 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1204 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) rules!3307) lt!1270801)))

(declare-fun bs!572453 () Bool)

(assert (= bs!572453 d!1074012))

(assert (=> bs!572453 m!4162431))

(declare-fun m!4162871 () Bool)

(assert (=> bs!572453 m!4162871))

(assert (=> bs!572453 m!4162321))

(assert (=> b!3656692 d!1074012))

(declare-fun d!1074014 () Bool)

(assert (=> d!1074014 (isPrefix!3149 lt!1270579 lt!1270579)))

(declare-fun lt!1270804 () Unit!55748)

(declare-fun choose!21597 (List!38701 List!38701) Unit!55748)

(assert (=> d!1074014 (= lt!1270804 (choose!21597 lt!1270579 lt!1270579))))

(assert (=> d!1074014 (= (lemmaIsPrefixRefl!1988 lt!1270579 lt!1270579) lt!1270804)))

(declare-fun bs!572454 () Bool)

(assert (= bs!572454 d!1074014))

(assert (=> bs!572454 m!4162439))

(declare-fun m!4162873 () Bool)

(assert (=> bs!572454 m!4162873))

(assert (=> b!3656692 d!1074014))

(declare-fun d!1074016 () Bool)

(assert (=> d!1074016 (= (inv!52036 (tag!6558 anOtherTypeRule!33)) (= (mod (str.len (value!185360 (tag!6558 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3656691 d!1074016))

(declare-fun d!1074018 () Bool)

(declare-fun res!1484310 () Bool)

(declare-fun e!2264352 () Bool)

(assert (=> d!1074018 (=> (not res!1484310) (not e!2264352))))

(declare-fun semiInverseModEq!2465 (Int Int) Bool)

(assert (=> d!1074018 (= res!1484310 (semiInverseModEq!2465 (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toValue!8078 (transformation!5786 anOtherTypeRule!33))))))

(assert (=> d!1074018 (= (inv!52039 (transformation!5786 anOtherTypeRule!33)) e!2264352)))

(declare-fun b!3657036 () Bool)

(declare-fun equivClasses!2364 (Int Int) Bool)

(assert (=> b!3657036 (= e!2264352 (equivClasses!2364 (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toValue!8078 (transformation!5786 anOtherTypeRule!33))))))

(assert (= (and d!1074018 res!1484310) b!3657036))

(declare-fun m!4162875 () Bool)

(assert (=> d!1074018 m!4162875))

(declare-fun m!4162877 () Bool)

(assert (=> b!3657036 m!4162877))

(assert (=> b!3656691 d!1074018))

(declare-fun d!1074020 () Bool)

(assert (=> d!1074020 (= (inv!52036 (tag!6558 (rule!8592 token!511))) (= (mod (str.len (value!185360 (tag!6558 (rule!8592 token!511)))) 2) 0))))

(assert (=> b!3656672 d!1074020))

(declare-fun d!1074022 () Bool)

(declare-fun res!1484311 () Bool)

(declare-fun e!2264353 () Bool)

(assert (=> d!1074022 (=> (not res!1484311) (not e!2264353))))

(assert (=> d!1074022 (= res!1484311 (semiInverseModEq!2465 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toValue!8078 (transformation!5786 (rule!8592 token!511)))))))

(assert (=> d!1074022 (= (inv!52039 (transformation!5786 (rule!8592 token!511))) e!2264353)))

(declare-fun b!3657037 () Bool)

(assert (=> b!3657037 (= e!2264353 (equivClasses!2364 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toValue!8078 (transformation!5786 (rule!8592 token!511)))))))

(assert (= (and d!1074022 res!1484311) b!3657037))

(declare-fun m!4162879 () Bool)

(assert (=> d!1074022 m!4162879))

(declare-fun m!4162881 () Bool)

(assert (=> b!3657037 m!4162881))

(assert (=> b!3656672 d!1074022))

(declare-fun d!1074024 () Bool)

(assert (=> d!1074024 (not (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583))))

(declare-fun lt!1270805 () Unit!55748)

(assert (=> d!1074024 (= lt!1270805 (choose!21593 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270600))))

(assert (=> d!1074024 (validRegex!4827 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))

(assert (=> d!1074024 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583 lt!1270600) lt!1270805)))

(declare-fun bs!572455 () Bool)

(assert (= bs!572455 d!1074024))

(assert (=> bs!572455 m!4162315))

(declare-fun m!4162883 () Bool)

(assert (=> bs!572455 m!4162883))

(assert (=> bs!572455 m!4162501))

(assert (=> bm!264401 d!1074024))

(declare-fun d!1074026 () Bool)

(declare-fun lt!1270808 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5570 (List!38701) (InoxSet C!21276))

(assert (=> d!1074026 (= lt!1270808 (select (content!5570 (usedCharacters!998 (regex!5786 anOtherTypeRule!33))) lt!1270600))))

(declare-fun e!2264358 () Bool)

(assert (=> d!1074026 (= lt!1270808 e!2264358)))

(declare-fun res!1484317 () Bool)

(assert (=> d!1074026 (=> (not res!1484317) (not e!2264358))))

(assert (=> d!1074026 (= res!1484317 ((_ is Cons!38577) (usedCharacters!998 (regex!5786 anOtherTypeRule!33))))))

(assert (=> d!1074026 (= (contains!7637 (usedCharacters!998 (regex!5786 anOtherTypeRule!33)) lt!1270600) lt!1270808)))

(declare-fun b!3657042 () Bool)

(declare-fun e!2264359 () Bool)

(assert (=> b!3657042 (= e!2264358 e!2264359)))

(declare-fun res!1484316 () Bool)

(assert (=> b!3657042 (=> res!1484316 e!2264359)))

(assert (=> b!3657042 (= res!1484316 (= (h!43997 (usedCharacters!998 (regex!5786 anOtherTypeRule!33))) lt!1270600))))

(declare-fun b!3657043 () Bool)

(assert (=> b!3657043 (= e!2264359 (contains!7637 (t!298064 (usedCharacters!998 (regex!5786 anOtherTypeRule!33))) lt!1270600))))

(assert (= (and d!1074026 res!1484317) b!3657042))

(assert (= (and b!3657042 (not res!1484316)) b!3657043))

(assert (=> d!1074026 m!4162293))

(declare-fun m!4162885 () Bool)

(assert (=> d!1074026 m!4162885))

(declare-fun m!4162887 () Bool)

(assert (=> d!1074026 m!4162887))

(declare-fun m!4162889 () Bool)

(assert (=> b!3657043 m!4162889))

(assert (=> b!3656690 d!1074026))

(declare-fun b!3657060 () Bool)

(declare-fun e!2264371 () List!38701)

(declare-fun call!264443 () List!38701)

(assert (=> b!3657060 (= e!2264371 call!264443)))

(declare-fun bm!264438 () Bool)

(declare-fun call!264444 () List!38701)

(declare-fun call!264446 () List!38701)

(assert (=> bm!264438 (= call!264444 call!264446)))

(declare-fun b!3657061 () Bool)

(declare-fun e!2264369 () List!38701)

(assert (=> b!3657061 (= e!2264369 (Cons!38577 (c!631979 (regex!5786 anOtherTypeRule!33)) Nil!38577))))

(declare-fun bm!264439 () Bool)

(declare-fun call!264445 () List!38701)

(declare-fun c!632059 () Bool)

(assert (=> bm!264439 (= call!264445 (usedCharacters!998 (ite c!632059 (regTwo!21603 (regex!5786 anOtherTypeRule!33)) (regOne!21602 (regex!5786 anOtherTypeRule!33)))))))

(declare-fun d!1074028 () Bool)

(declare-fun c!632058 () Bool)

(assert (=> d!1074028 (= c!632058 (or ((_ is EmptyExpr!10545) (regex!5786 anOtherTypeRule!33)) ((_ is EmptyLang!10545) (regex!5786 anOtherTypeRule!33))))))

(declare-fun e!2264368 () List!38701)

(assert (=> d!1074028 (= (usedCharacters!998 (regex!5786 anOtherTypeRule!33)) e!2264368)))

(declare-fun bm!264440 () Bool)

(assert (=> bm!264440 (= call!264443 (++!9602 (ite c!632059 call!264444 call!264445) (ite c!632059 call!264445 call!264444)))))

(declare-fun b!3657062 () Bool)

(declare-fun c!632057 () Bool)

(assert (=> b!3657062 (= c!632057 ((_ is Star!10545) (regex!5786 anOtherTypeRule!33)))))

(declare-fun e!2264370 () List!38701)

(assert (=> b!3657062 (= e!2264369 e!2264370)))

(declare-fun b!3657063 () Bool)

(assert (=> b!3657063 (= e!2264370 call!264446)))

(declare-fun b!3657064 () Bool)

(assert (=> b!3657064 (= e!2264368 Nil!38577)))

(declare-fun b!3657065 () Bool)

(assert (=> b!3657065 (= e!2264370 e!2264371)))

(assert (=> b!3657065 (= c!632059 ((_ is Union!10545) (regex!5786 anOtherTypeRule!33)))))

(declare-fun b!3657066 () Bool)

(assert (=> b!3657066 (= e!2264368 e!2264369)))

(declare-fun c!632056 () Bool)

(assert (=> b!3657066 (= c!632056 ((_ is ElementMatch!10545) (regex!5786 anOtherTypeRule!33)))))

(declare-fun bm!264441 () Bool)

(assert (=> bm!264441 (= call!264446 (usedCharacters!998 (ite c!632057 (reg!10874 (regex!5786 anOtherTypeRule!33)) (ite c!632059 (regOne!21603 (regex!5786 anOtherTypeRule!33)) (regTwo!21602 (regex!5786 anOtherTypeRule!33))))))))

(declare-fun b!3657067 () Bool)

(assert (=> b!3657067 (= e!2264371 call!264443)))

(assert (= (and d!1074028 c!632058) b!3657064))

(assert (= (and d!1074028 (not c!632058)) b!3657066))

(assert (= (and b!3657066 c!632056) b!3657061))

(assert (= (and b!3657066 (not c!632056)) b!3657062))

(assert (= (and b!3657062 c!632057) b!3657063))

(assert (= (and b!3657062 (not c!632057)) b!3657065))

(assert (= (and b!3657065 c!632059) b!3657060))

(assert (= (and b!3657065 (not c!632059)) b!3657067))

(assert (= (or b!3657060 b!3657067) bm!264438))

(assert (= (or b!3657060 b!3657067) bm!264439))

(assert (= (or b!3657060 b!3657067) bm!264440))

(assert (= (or b!3657063 bm!264438) bm!264441))

(declare-fun m!4162891 () Bool)

(assert (=> bm!264439 m!4162891))

(declare-fun m!4162893 () Bool)

(assert (=> bm!264440 m!4162893))

(declare-fun m!4162895 () Bool)

(assert (=> bm!264441 m!4162895))

(assert (=> b!3656690 d!1074028))

(declare-fun b!3657096 () Bool)

(declare-fun e!2264392 () Bool)

(declare-fun lt!1270811 () Bool)

(declare-fun call!264449 () Bool)

(assert (=> b!3657096 (= e!2264392 (= lt!1270811 call!264449))))

(declare-fun b!3657097 () Bool)

(declare-fun res!1484335 () Bool)

(declare-fun e!2264388 () Bool)

(assert (=> b!3657097 (=> res!1484335 e!2264388)))

(assert (=> b!3657097 (= res!1484335 (not ((_ is ElementMatch!10545) (regex!5786 lt!1270613))))))

(declare-fun e!2264386 () Bool)

(assert (=> b!3657097 (= e!2264386 e!2264388)))

(declare-fun b!3657098 () Bool)

(declare-fun res!1484341 () Bool)

(declare-fun e!2264387 () Bool)

(assert (=> b!3657098 (=> res!1484341 e!2264387)))

(assert (=> b!3657098 (= res!1484341 (not (isEmpty!22873 (tail!5663 (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))))))))

(declare-fun b!3657099 () Bool)

(declare-fun res!1484337 () Bool)

(declare-fun e!2264389 () Bool)

(assert (=> b!3657099 (=> (not res!1484337) (not e!2264389))))

(assert (=> b!3657099 (= res!1484337 (isEmpty!22873 (tail!5663 (list!14304 (charsOf!3800 (_1!22354 lt!1270586))))))))

(declare-fun b!3657100 () Bool)

(declare-fun res!1484334 () Bool)

(assert (=> b!3657100 (=> res!1484334 e!2264388)))

(assert (=> b!3657100 (= res!1484334 e!2264389)))

(declare-fun res!1484338 () Bool)

(assert (=> b!3657100 (=> (not res!1484338) (not e!2264389))))

(assert (=> b!3657100 (= res!1484338 lt!1270811)))

(declare-fun b!3657101 () Bool)

(assert (=> b!3657101 (= e!2264387 (not (= (head!7808 (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))) (c!631979 (regex!5786 lt!1270613)))))))

(declare-fun b!3657102 () Bool)

(declare-fun e!2264390 () Bool)

(assert (=> b!3657102 (= e!2264388 e!2264390)))

(declare-fun res!1484336 () Bool)

(assert (=> b!3657102 (=> (not res!1484336) (not e!2264390))))

(assert (=> b!3657102 (= res!1484336 (not lt!1270811))))

(declare-fun b!3657103 () Bool)

(declare-fun e!2264391 () Bool)

(assert (=> b!3657103 (= e!2264391 (nullable!3665 (regex!5786 lt!1270613)))))

(declare-fun b!3657104 () Bool)

(assert (=> b!3657104 (= e!2264392 e!2264386)))

(declare-fun c!632067 () Bool)

(assert (=> b!3657104 (= c!632067 ((_ is EmptyLang!10545) (regex!5786 lt!1270613)))))

(declare-fun b!3657105 () Bool)

(assert (=> b!3657105 (= e!2264390 e!2264387)))

(declare-fun res!1484340 () Bool)

(assert (=> b!3657105 (=> res!1484340 e!2264387)))

(assert (=> b!3657105 (= res!1484340 call!264449)))

(declare-fun bm!264444 () Bool)

(assert (=> bm!264444 (= call!264449 (isEmpty!22873 (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))))))

(declare-fun b!3657106 () Bool)

(assert (=> b!3657106 (= e!2264389 (= (head!7808 (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))) (c!631979 (regex!5786 lt!1270613))))))

(declare-fun b!3657107 () Bool)

(declare-fun res!1484339 () Bool)

(assert (=> b!3657107 (=> (not res!1484339) (not e!2264389))))

(assert (=> b!3657107 (= res!1484339 (not call!264449))))

(declare-fun b!3657108 () Bool)

(assert (=> b!3657108 (= e!2264386 (not lt!1270811))))

(declare-fun d!1074030 () Bool)

(assert (=> d!1074030 e!2264392))

(declare-fun c!632068 () Bool)

(assert (=> d!1074030 (= c!632068 ((_ is EmptyExpr!10545) (regex!5786 lt!1270613)))))

(assert (=> d!1074030 (= lt!1270811 e!2264391)))

(declare-fun c!632066 () Bool)

(assert (=> d!1074030 (= c!632066 (isEmpty!22873 (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))))))

(assert (=> d!1074030 (validRegex!4827 (regex!5786 lt!1270613))))

(assert (=> d!1074030 (= (matchR!5114 (regex!5786 lt!1270613) (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))) lt!1270811)))

(declare-fun b!3657109 () Bool)

(declare-fun derivativeStep!3214 (Regex!10545 C!21276) Regex!10545)

(assert (=> b!3657109 (= e!2264391 (matchR!5114 (derivativeStep!3214 (regex!5786 lt!1270613) (head!7808 (list!14304 (charsOf!3800 (_1!22354 lt!1270586))))) (tail!5663 (list!14304 (charsOf!3800 (_1!22354 lt!1270586))))))))

(assert (= (and d!1074030 c!632066) b!3657103))

(assert (= (and d!1074030 (not c!632066)) b!3657109))

(assert (= (and d!1074030 c!632068) b!3657096))

(assert (= (and d!1074030 (not c!632068)) b!3657104))

(assert (= (and b!3657104 c!632067) b!3657108))

(assert (= (and b!3657104 (not c!632067)) b!3657097))

(assert (= (and b!3657097 (not res!1484335)) b!3657100))

(assert (= (and b!3657100 res!1484338) b!3657107))

(assert (= (and b!3657107 res!1484339) b!3657099))

(assert (= (and b!3657099 res!1484337) b!3657106))

(assert (= (and b!3657100 (not res!1484334)) b!3657102))

(assert (= (and b!3657102 res!1484336) b!3657105))

(assert (= (and b!3657105 (not res!1484340)) b!3657098))

(assert (= (and b!3657098 (not res!1484341)) b!3657101))

(assert (= (or b!3657096 b!3657105 b!3657107) bm!264444))

(assert (=> b!3657101 m!4162391))

(declare-fun m!4162897 () Bool)

(assert (=> b!3657101 m!4162897))

(assert (=> b!3657098 m!4162391))

(declare-fun m!4162899 () Bool)

(assert (=> b!3657098 m!4162899))

(assert (=> b!3657098 m!4162899))

(declare-fun m!4162901 () Bool)

(assert (=> b!3657098 m!4162901))

(assert (=> b!3657106 m!4162391))

(assert (=> b!3657106 m!4162897))

(assert (=> b!3657109 m!4162391))

(assert (=> b!3657109 m!4162897))

(assert (=> b!3657109 m!4162897))

(declare-fun m!4162903 () Bool)

(assert (=> b!3657109 m!4162903))

(assert (=> b!3657109 m!4162391))

(assert (=> b!3657109 m!4162899))

(assert (=> b!3657109 m!4162903))

(assert (=> b!3657109 m!4162899))

(declare-fun m!4162905 () Bool)

(assert (=> b!3657109 m!4162905))

(assert (=> bm!264444 m!4162391))

(declare-fun m!4162907 () Bool)

(assert (=> bm!264444 m!4162907))

(declare-fun m!4162909 () Bool)

(assert (=> b!3657103 m!4162909))

(assert (=> d!1074030 m!4162391))

(assert (=> d!1074030 m!4162907))

(declare-fun m!4162911 () Bool)

(assert (=> d!1074030 m!4162911))

(assert (=> b!3657099 m!4162391))

(assert (=> b!3657099 m!4162899))

(assert (=> b!3657099 m!4162899))

(assert (=> b!3657099 m!4162901))

(assert (=> b!3656689 d!1074030))

(declare-fun d!1074032 () Bool)

(declare-fun list!14307 (Conc!11793) List!38701)

(assert (=> d!1074032 (= (list!14304 (charsOf!3800 (_1!22354 lt!1270586))) (list!14307 (c!631978 (charsOf!3800 (_1!22354 lt!1270586)))))))

(declare-fun bs!572456 () Bool)

(assert (= bs!572456 d!1074032))

(declare-fun m!4162913 () Bool)

(assert (=> bs!572456 m!4162913))

(assert (=> b!3656689 d!1074032))

(declare-fun d!1074034 () Bool)

(declare-fun lt!1270814 () BalanceConc!23200)

(assert (=> d!1074034 (= (list!14304 lt!1270814) (originalCharacters!6500 (_1!22354 lt!1270586)))))

(assert (=> d!1074034 (= lt!1270814 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (value!185361 (_1!22354 lt!1270586))))))

(assert (=> d!1074034 (= (charsOf!3800 (_1!22354 lt!1270586)) lt!1270814)))

(declare-fun b_lambda!108447 () Bool)

(assert (=> (not b_lambda!108447) (not d!1074034)))

(declare-fun tb!211161 () Bool)

(declare-fun t!298108 () Bool)

(assert (=> (and b!3656681 (= (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298108) tb!211161))

(declare-fun b!3657110 () Bool)

(declare-fun e!2264393 () Bool)

(declare-fun tp!1114318 () Bool)

(assert (=> b!3657110 (= e!2264393 (and (inv!52043 (c!631978 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (value!185361 (_1!22354 lt!1270586))))) tp!1114318))))

(declare-fun result!257110 () Bool)

(assert (=> tb!211161 (= result!257110 (and (inv!52044 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (value!185361 (_1!22354 lt!1270586)))) e!2264393))))

(assert (= tb!211161 b!3657110))

(declare-fun m!4162915 () Bool)

(assert (=> b!3657110 m!4162915))

(declare-fun m!4162917 () Bool)

(assert (=> tb!211161 m!4162917))

(assert (=> d!1074034 t!298108))

(declare-fun b_and!271043 () Bool)

(assert (= b_and!271027 (and (=> t!298108 result!257110) b_and!271043)))

(declare-fun tb!211163 () Bool)

(declare-fun t!298110 () Bool)

(assert (=> (and b!3656678 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298110) tb!211163))

(declare-fun result!257112 () Bool)

(assert (= result!257112 result!257110))

(assert (=> d!1074034 t!298110))

(declare-fun b_and!271045 () Bool)

(assert (= b_and!271029 (and (=> t!298110 result!257112) b_and!271045)))

(declare-fun tb!211165 () Bool)

(declare-fun t!298112 () Bool)

(assert (=> (and b!3656680 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298112) tb!211165))

(declare-fun result!257114 () Bool)

(assert (= result!257114 result!257110))

(assert (=> d!1074034 t!298112))

(declare-fun b_and!271047 () Bool)

(assert (= b_and!271031 (and (=> t!298112 result!257114) b_and!271047)))

(declare-fun tb!211167 () Bool)

(declare-fun t!298114 () Bool)

(assert (=> (and b!3656649 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298114) tb!211167))

(declare-fun result!257116 () Bool)

(assert (= result!257116 result!257110))

(assert (=> d!1074034 t!298114))

(declare-fun b_and!271049 () Bool)

(assert (= b_and!271033 (and (=> t!298114 result!257116) b_and!271049)))

(declare-fun m!4162919 () Bool)

(assert (=> d!1074034 m!4162919))

(declare-fun m!4162921 () Bool)

(assert (=> d!1074034 m!4162921))

(assert (=> b!3656689 d!1074034))

(declare-fun d!1074036 () Bool)

(assert (=> d!1074036 (= (get!12704 lt!1270611) (v!38075 lt!1270611))))

(assert (=> b!3656689 d!1074036))

(declare-fun b!3657111 () Bool)

(declare-fun e!2264400 () Bool)

(declare-fun lt!1270815 () Bool)

(declare-fun call!264450 () Bool)

(assert (=> b!3657111 (= e!2264400 (= lt!1270815 call!264450))))

(declare-fun b!3657112 () Bool)

(declare-fun res!1484343 () Bool)

(declare-fun e!2264396 () Bool)

(assert (=> b!3657112 (=> res!1484343 e!2264396)))

(assert (=> b!3657112 (= res!1484343 (not ((_ is ElementMatch!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))))

(declare-fun e!2264394 () Bool)

(assert (=> b!3657112 (= e!2264394 e!2264396)))

(declare-fun b!3657113 () Bool)

(declare-fun res!1484349 () Bool)

(declare-fun e!2264395 () Bool)

(assert (=> b!3657113 (=> res!1484349 e!2264395)))

(assert (=> b!3657113 (= res!1484349 (not (isEmpty!22873 (tail!5663 lt!1270583))))))

(declare-fun b!3657114 () Bool)

(declare-fun res!1484345 () Bool)

(declare-fun e!2264397 () Bool)

(assert (=> b!3657114 (=> (not res!1484345) (not e!2264397))))

(assert (=> b!3657114 (= res!1484345 (isEmpty!22873 (tail!5663 lt!1270583)))))

(declare-fun b!3657115 () Bool)

(declare-fun res!1484342 () Bool)

(assert (=> b!3657115 (=> res!1484342 e!2264396)))

(assert (=> b!3657115 (= res!1484342 e!2264397)))

(declare-fun res!1484346 () Bool)

(assert (=> b!3657115 (=> (not res!1484346) (not e!2264397))))

(assert (=> b!3657115 (= res!1484346 lt!1270815)))

(declare-fun b!3657116 () Bool)

(assert (=> b!3657116 (= e!2264395 (not (= (head!7808 lt!1270583) (c!631979 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))))

(declare-fun b!3657117 () Bool)

(declare-fun e!2264398 () Bool)

(assert (=> b!3657117 (= e!2264396 e!2264398)))

(declare-fun res!1484344 () Bool)

(assert (=> b!3657117 (=> (not res!1484344) (not e!2264398))))

(assert (=> b!3657117 (= res!1484344 (not lt!1270815))))

(declare-fun b!3657118 () Bool)

(declare-fun e!2264399 () Bool)

(assert (=> b!3657118 (= e!2264399 (nullable!3665 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3657119 () Bool)

(assert (=> b!3657119 (= e!2264400 e!2264394)))

(declare-fun c!632070 () Bool)

(assert (=> b!3657119 (= c!632070 ((_ is EmptyLang!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3657120 () Bool)

(assert (=> b!3657120 (= e!2264398 e!2264395)))

(declare-fun res!1484348 () Bool)

(assert (=> b!3657120 (=> res!1484348 e!2264395)))

(assert (=> b!3657120 (= res!1484348 call!264450)))

(declare-fun bm!264445 () Bool)

(assert (=> bm!264445 (= call!264450 (isEmpty!22873 lt!1270583))))

(declare-fun b!3657121 () Bool)

(assert (=> b!3657121 (= e!2264397 (= (head!7808 lt!1270583) (c!631979 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))))

(declare-fun b!3657122 () Bool)

(declare-fun res!1484347 () Bool)

(assert (=> b!3657122 (=> (not res!1484347) (not e!2264397))))

(assert (=> b!3657122 (= res!1484347 (not call!264450))))

(declare-fun b!3657123 () Bool)

(assert (=> b!3657123 (= e!2264394 (not lt!1270815))))

(declare-fun d!1074038 () Bool)

(assert (=> d!1074038 e!2264400))

(declare-fun c!632071 () Bool)

(assert (=> d!1074038 (= c!632071 ((_ is EmptyExpr!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(assert (=> d!1074038 (= lt!1270815 e!2264399)))

(declare-fun c!632069 () Bool)

(assert (=> d!1074038 (= c!632069 (isEmpty!22873 lt!1270583))))

(assert (=> d!1074038 (validRegex!4827 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))

(assert (=> d!1074038 (= (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270583) lt!1270815)))

(declare-fun b!3657124 () Bool)

(assert (=> b!3657124 (= e!2264399 (matchR!5114 (derivativeStep!3214 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) (head!7808 lt!1270583)) (tail!5663 lt!1270583)))))

(assert (= (and d!1074038 c!632069) b!3657118))

(assert (= (and d!1074038 (not c!632069)) b!3657124))

(assert (= (and d!1074038 c!632071) b!3657111))

(assert (= (and d!1074038 (not c!632071)) b!3657119))

(assert (= (and b!3657119 c!632070) b!3657123))

(assert (= (and b!3657119 (not c!632070)) b!3657112))

(assert (= (and b!3657112 (not res!1484343)) b!3657115))

(assert (= (and b!3657115 res!1484346) b!3657122))

(assert (= (and b!3657122 res!1484347) b!3657114))

(assert (= (and b!3657114 res!1484345) b!3657121))

(assert (= (and b!3657115 (not res!1484342)) b!3657117))

(assert (= (and b!3657117 res!1484344) b!3657120))

(assert (= (and b!3657120 (not res!1484348)) b!3657113))

(assert (= (and b!3657113 (not res!1484349)) b!3657116))

(assert (= (or b!3657111 b!3657120 b!3657122) bm!264445))

(assert (=> b!3657116 m!4162383))

(declare-fun m!4162923 () Bool)

(assert (=> b!3657113 m!4162923))

(assert (=> b!3657113 m!4162923))

(declare-fun m!4162925 () Bool)

(assert (=> b!3657113 m!4162925))

(assert (=> b!3657121 m!4162383))

(assert (=> b!3657124 m!4162383))

(assert (=> b!3657124 m!4162383))

(declare-fun m!4162927 () Bool)

(assert (=> b!3657124 m!4162927))

(assert (=> b!3657124 m!4162923))

(assert (=> b!3657124 m!4162927))

(assert (=> b!3657124 m!4162923))

(declare-fun m!4162929 () Bool)

(assert (=> b!3657124 m!4162929))

(declare-fun m!4162931 () Bool)

(assert (=> bm!264445 m!4162931))

(assert (=> b!3657118 m!4162561))

(assert (=> d!1074038 m!4162931))

(assert (=> d!1074038 m!4162501))

(assert (=> b!3657114 m!4162923))

(assert (=> b!3657114 m!4162923))

(assert (=> b!3657114 m!4162925))

(assert (=> b!3656651 d!1074038))

(declare-fun d!1074040 () Bool)

(declare-fun e!2264403 () Bool)

(assert (=> d!1074040 e!2264403))

(declare-fun res!1484354 () Bool)

(assert (=> d!1074040 (=> (not res!1484354) (not e!2264403))))

(assert (=> d!1074040 (= res!1484354 (isDefined!6432 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 (_1!22354 lt!1270586))))))))

(declare-fun lt!1270818 () Unit!55748)

(declare-fun choose!21599 (LexerInterface!5375 List!38703 List!38701 Token!10938) Unit!55748)

(assert (=> d!1074040 (= lt!1270818 (choose!21599 thiss!23823 rules!3307 lt!1270579 (_1!22354 lt!1270586)))))

(assert (=> d!1074040 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074040 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1390 thiss!23823 rules!3307 lt!1270579 (_1!22354 lt!1270586)) lt!1270818)))

(declare-fun b!3657129 () Bool)

(declare-fun res!1484355 () Bool)

(assert (=> b!3657129 (=> (not res!1484355) (not e!2264403))))

(assert (=> b!3657129 (= res!1484355 (matchR!5114 (regex!5786 (get!12704 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))) (list!14304 (charsOf!3800 (_1!22354 lt!1270586)))))))

(declare-fun b!3657130 () Bool)

(assert (=> b!3657130 (= e!2264403 (= (rule!8592 (_1!22354 lt!1270586)) (get!12704 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))))))

(assert (= (and d!1074040 res!1484354) b!3657129))

(assert (= (and b!3657129 res!1484355) b!3657130))

(assert (=> d!1074040 m!4162411))

(assert (=> d!1074040 m!4162411))

(declare-fun m!4162933 () Bool)

(assert (=> d!1074040 m!4162933))

(declare-fun m!4162935 () Bool)

(assert (=> d!1074040 m!4162935))

(assert (=> d!1074040 m!4162429))

(assert (=> b!3657129 m!4162411))

(declare-fun m!4162937 () Bool)

(assert (=> b!3657129 m!4162937))

(assert (=> b!3657129 m!4162389))

(assert (=> b!3657129 m!4162389))

(assert (=> b!3657129 m!4162391))

(assert (=> b!3657129 m!4162411))

(assert (=> b!3657129 m!4162391))

(declare-fun m!4162939 () Bool)

(assert (=> b!3657129 m!4162939))

(assert (=> b!3657130 m!4162411))

(assert (=> b!3657130 m!4162411))

(assert (=> b!3657130 m!4162937))

(assert (=> b!3656650 d!1074040))

(declare-fun b!3657140 () Bool)

(declare-fun e!2264409 () List!38701)

(assert (=> b!3657140 (= e!2264409 (Cons!38577 (h!43997 lt!1270583) (++!9602 (t!298064 lt!1270583) (_2!22354 lt!1270586))))))

(declare-fun lt!1270821 () List!38701)

(declare-fun e!2264408 () Bool)

(declare-fun b!3657142 () Bool)

(assert (=> b!3657142 (= e!2264408 (or (not (= (_2!22354 lt!1270586) Nil!38577)) (= lt!1270821 lt!1270583)))))

(declare-fun b!3657141 () Bool)

(declare-fun res!1484360 () Bool)

(assert (=> b!3657141 (=> (not res!1484360) (not e!2264408))))

(assert (=> b!3657141 (= res!1484360 (= (size!29471 lt!1270821) (+ (size!29471 lt!1270583) (size!29471 (_2!22354 lt!1270586)))))))

(declare-fun b!3657139 () Bool)

(assert (=> b!3657139 (= e!2264409 (_2!22354 lt!1270586))))

(declare-fun d!1074042 () Bool)

(assert (=> d!1074042 e!2264408))

(declare-fun res!1484361 () Bool)

(assert (=> d!1074042 (=> (not res!1484361) (not e!2264408))))

(assert (=> d!1074042 (= res!1484361 (= (content!5570 lt!1270821) ((_ map or) (content!5570 lt!1270583) (content!5570 (_2!22354 lt!1270586)))))))

(assert (=> d!1074042 (= lt!1270821 e!2264409)))

(declare-fun c!632074 () Bool)

(assert (=> d!1074042 (= c!632074 ((_ is Nil!38577) lt!1270583))))

(assert (=> d!1074042 (= (++!9602 lt!1270583 (_2!22354 lt!1270586)) lt!1270821)))

(assert (= (and d!1074042 c!632074) b!3657139))

(assert (= (and d!1074042 (not c!632074)) b!3657140))

(assert (= (and d!1074042 res!1484361) b!3657141))

(assert (= (and b!3657141 res!1484360) b!3657142))

(declare-fun m!4162941 () Bool)

(assert (=> b!3657140 m!4162941))

(declare-fun m!4162943 () Bool)

(assert (=> b!3657141 m!4162943))

(assert (=> b!3657141 m!4162363))

(declare-fun m!4162945 () Bool)

(assert (=> b!3657141 m!4162945))

(declare-fun m!4162947 () Bool)

(assert (=> d!1074042 m!4162947))

(declare-fun m!4162949 () Bool)

(assert (=> d!1074042 m!4162949))

(declare-fun m!4162951 () Bool)

(assert (=> d!1074042 m!4162951))

(assert (=> b!3656650 d!1074042))

(declare-fun b!3657155 () Bool)

(declare-fun e!2264418 () Option!8200)

(declare-fun e!2264421 () Option!8200)

(assert (=> b!3657155 (= e!2264418 e!2264421)))

(declare-fun c!632079 () Bool)

(assert (=> b!3657155 (= c!632079 (and ((_ is Cons!38579) rules!3307) (not (= (tag!6558 (h!43999 rules!3307)) (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))))))

(declare-fun b!3657156 () Bool)

(declare-fun lt!1270828 () Unit!55748)

(declare-fun lt!1270830 () Unit!55748)

(assert (=> b!3657156 (= lt!1270828 lt!1270830)))

(assert (=> b!3657156 (rulesInvariant!4772 thiss!23823 (t!298066 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!595 (LexerInterface!5375 Rule!11372 List!38703) Unit!55748)

(assert (=> b!3657156 (= lt!1270830 (lemmaInvariantOnRulesThenOnTail!595 thiss!23823 (h!43999 rules!3307) (t!298066 rules!3307)))))

(assert (=> b!3657156 (= e!2264421 (getRuleFromTag!1390 thiss!23823 (t!298066 rules!3307) (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3657157 () Bool)

(assert (=> b!3657157 (= e!2264421 None!8199)))

(declare-fun d!1074044 () Bool)

(declare-fun e!2264419 () Bool)

(assert (=> d!1074044 e!2264419))

(declare-fun res!1484367 () Bool)

(assert (=> d!1074044 (=> res!1484367 e!2264419)))

(declare-fun lt!1270829 () Option!8200)

(declare-fun isEmpty!22876 (Option!8200) Bool)

(assert (=> d!1074044 (= res!1484367 (isEmpty!22876 lt!1270829))))

(assert (=> d!1074044 (= lt!1270829 e!2264418)))

(declare-fun c!632080 () Bool)

(assert (=> d!1074044 (= c!632080 (and ((_ is Cons!38579) rules!3307) (= (tag!6558 (h!43999 rules!3307)) (tag!6558 (rule!8592 (_1!22354 lt!1270586))))))))

(assert (=> d!1074044 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074044 (= (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 (_1!22354 lt!1270586)))) lt!1270829)))

(declare-fun b!3657158 () Bool)

(declare-fun e!2264420 () Bool)

(assert (=> b!3657158 (= e!2264420 (= (tag!6558 (get!12704 lt!1270829)) (tag!6558 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3657159 () Bool)

(assert (=> b!3657159 (= e!2264419 e!2264420)))

(declare-fun res!1484366 () Bool)

(assert (=> b!3657159 (=> (not res!1484366) (not e!2264420))))

(assert (=> b!3657159 (= res!1484366 (contains!7638 rules!3307 (get!12704 lt!1270829)))))

(declare-fun b!3657160 () Bool)

(assert (=> b!3657160 (= e!2264418 (Some!8199 (h!43999 rules!3307)))))

(assert (= (and d!1074044 c!632080) b!3657160))

(assert (= (and d!1074044 (not c!632080)) b!3657155))

(assert (= (and b!3657155 c!632079) b!3657156))

(assert (= (and b!3657155 (not c!632079)) b!3657157))

(assert (= (and d!1074044 (not res!1484367)) b!3657159))

(assert (= (and b!3657159 res!1484366) b!3657158))

(declare-fun m!4162953 () Bool)

(assert (=> b!3657156 m!4162953))

(declare-fun m!4162955 () Bool)

(assert (=> b!3657156 m!4162955))

(declare-fun m!4162957 () Bool)

(assert (=> b!3657156 m!4162957))

(declare-fun m!4162959 () Bool)

(assert (=> d!1074044 m!4162959))

(assert (=> d!1074044 m!4162429))

(declare-fun m!4162961 () Bool)

(assert (=> b!3657158 m!4162961))

(assert (=> b!3657159 m!4162961))

(assert (=> b!3657159 m!4162961))

(declare-fun m!4162963 () Bool)

(assert (=> b!3657159 m!4162963))

(assert (=> b!3656650 d!1074044))

(assert (=> b!3656650 d!1074034))

(declare-fun d!1074046 () Bool)

(assert (=> d!1074046 (isPrefix!3149 lt!1270581 (++!9602 lt!1270581 suffix!1395))))

(declare-fun lt!1270833 () Unit!55748)

(declare-fun choose!21602 (List!38701 List!38701) Unit!55748)

(assert (=> d!1074046 (= lt!1270833 (choose!21602 lt!1270581 suffix!1395))))

(assert (=> d!1074046 (= (lemmaConcatTwoListThenFirstIsPrefix!2068 lt!1270581 suffix!1395) lt!1270833)))

(declare-fun bs!572457 () Bool)

(assert (= bs!572457 d!1074046))

(assert (=> bs!572457 m!4162405))

(assert (=> bs!572457 m!4162405))

(declare-fun m!4162965 () Bool)

(assert (=> bs!572457 m!4162965))

(declare-fun m!4162967 () Bool)

(assert (=> bs!572457 m!4162967))

(assert (=> b!3656650 d!1074046))

(declare-fun d!1074048 () Bool)

(assert (=> d!1074048 (isDefined!6433 (maxPrefix!2909 thiss!23823 rules!3307 (++!9602 lt!1270581 suffix!1395)))))

(declare-fun lt!1270872 () Unit!55748)

(declare-fun e!2264427 () Unit!55748)

(assert (=> d!1074048 (= lt!1270872 e!2264427)))

(declare-fun c!632083 () Bool)

(declare-fun isEmpty!22877 (Option!8201) Bool)

(assert (=> d!1074048 (= c!632083 (isEmpty!22877 (maxPrefix!2909 thiss!23823 rules!3307 (++!9602 lt!1270581 suffix!1395))))))

(declare-fun lt!1270880 () Unit!55748)

(declare-fun lt!1270878 () Unit!55748)

(assert (=> d!1074048 (= lt!1270880 lt!1270878)))

(declare-fun e!2264426 () Bool)

(assert (=> d!1074048 e!2264426))

(declare-fun res!1484373 () Bool)

(assert (=> d!1074048 (=> (not res!1484373) (not e!2264426))))

(declare-fun lt!1270881 () Token!10938)

(assert (=> d!1074048 (= res!1484373 (isDefined!6432 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 lt!1270881)))))))

(assert (=> d!1074048 (= lt!1270878 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1390 thiss!23823 rules!3307 lt!1270581 lt!1270881))))

(declare-fun lt!1270870 () Unit!55748)

(declare-fun lt!1270883 () Unit!55748)

(assert (=> d!1074048 (= lt!1270870 lt!1270883)))

(declare-fun lt!1270876 () List!38701)

(assert (=> d!1074048 (isPrefix!3149 lt!1270876 (++!9602 lt!1270581 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!516 (List!38701 List!38701 List!38701) Unit!55748)

(assert (=> d!1074048 (= lt!1270883 (lemmaPrefixStaysPrefixWhenAddingToSuffix!516 lt!1270876 lt!1270581 suffix!1395))))

(assert (=> d!1074048 (= lt!1270876 (list!14304 (charsOf!3800 lt!1270881)))))

(declare-fun lt!1270879 () Unit!55748)

(declare-fun lt!1270871 () Unit!55748)

(assert (=> d!1074048 (= lt!1270879 lt!1270871)))

(declare-fun lt!1270874 () List!38701)

(declare-fun lt!1270875 () List!38701)

(assert (=> d!1074048 (isPrefix!3149 lt!1270874 (++!9602 lt!1270874 lt!1270875))))

(assert (=> d!1074048 (= lt!1270871 (lemmaConcatTwoListThenFirstIsPrefix!2068 lt!1270874 lt!1270875))))

(assert (=> d!1074048 (= lt!1270875 (_2!22354 (get!12703 (maxPrefix!2909 thiss!23823 rules!3307 lt!1270581))))))

(assert (=> d!1074048 (= lt!1270874 (list!14304 (charsOf!3800 lt!1270881)))))

(declare-datatypes ((List!38705 0))(
  ( (Nil!38581) (Cons!38581 (h!44001 Token!10938) (t!298208 List!38705)) )
))
(declare-fun head!7810 (List!38705) Token!10938)

(declare-datatypes ((IArray!23595 0))(
  ( (IArray!23596 (innerList!11855 List!38705)) )
))
(declare-datatypes ((Conc!11795 0))(
  ( (Node!11795 (left!30114 Conc!11795) (right!30444 Conc!11795) (csize!23820 Int) (cheight!12006 Int)) (Leaf!18299 (xs!14997 IArray!23595) (csize!23821 Int)) (Empty!11795) )
))
(declare-datatypes ((BalanceConc!23204 0))(
  ( (BalanceConc!23205 (c!632125 Conc!11795)) )
))
(declare-fun list!14308 (BalanceConc!23204) List!38705)

(declare-datatypes ((tuple2!38446 0))(
  ( (tuple2!38447 (_1!22357 BalanceConc!23204) (_2!22357 BalanceConc!23200)) )
))
(declare-fun lex!2548 (LexerInterface!5375 List!38703 BalanceConc!23200) tuple2!38446)

(assert (=> d!1074048 (= lt!1270881 (head!7810 (list!14308 (_1!22357 (lex!2548 thiss!23823 rules!3307 (seqFromList!4335 lt!1270581))))))))

(assert (=> d!1074048 (not (isEmpty!22872 rules!3307))))

(assert (=> d!1074048 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1053 thiss!23823 rules!3307 lt!1270581 suffix!1395) lt!1270872)))

(declare-fun b!3657170 () Bool)

(assert (=> b!3657170 (= e!2264426 (= (rule!8592 lt!1270881) (get!12704 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 lt!1270881))))))))

(declare-fun b!3657172 () Bool)

(declare-fun Unit!55762 () Unit!55748)

(assert (=> b!3657172 (= e!2264427 Unit!55762)))

(declare-fun b!3657169 () Bool)

(declare-fun res!1484372 () Bool)

(assert (=> b!3657169 (=> (not res!1484372) (not e!2264426))))

(assert (=> b!3657169 (= res!1484372 (matchR!5114 (regex!5786 (get!12704 (getRuleFromTag!1390 thiss!23823 rules!3307 (tag!6558 (rule!8592 lt!1270881))))) (list!14304 (charsOf!3800 lt!1270881))))))

(declare-fun b!3657171 () Bool)

(declare-fun Unit!55763 () Unit!55748)

(assert (=> b!3657171 (= e!2264427 Unit!55763)))

(declare-fun lt!1270868 () List!38701)

(assert (=> b!3657171 (= lt!1270868 (++!9602 lt!1270581 suffix!1395))))

(declare-fun lt!1270877 () Unit!55748)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!552 (LexerInterface!5375 Rule!11372 List!38703 List!38701) Unit!55748)

(assert (=> b!3657171 (= lt!1270877 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!552 thiss!23823 (rule!8592 lt!1270881) rules!3307 lt!1270868))))

(assert (=> b!3657171 (isEmpty!22877 (maxPrefixOneRule!2047 thiss!23823 (rule!8592 lt!1270881) lt!1270868))))

(declare-fun lt!1270873 () Unit!55748)

(assert (=> b!3657171 (= lt!1270873 lt!1270877)))

(declare-fun lt!1270882 () List!38701)

(assert (=> b!3657171 (= lt!1270882 (list!14304 (charsOf!3800 lt!1270881)))))

(declare-fun lt!1270869 () Unit!55748)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!540 (LexerInterface!5375 Rule!11372 List!38701 List!38701) Unit!55748)

(assert (=> b!3657171 (= lt!1270869 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!540 thiss!23823 (rule!8592 lt!1270881) lt!1270882 (++!9602 lt!1270581 suffix!1395)))))

(assert (=> b!3657171 (not (matchR!5114 (regex!5786 (rule!8592 lt!1270881)) lt!1270882))))

(declare-fun lt!1270884 () Unit!55748)

(assert (=> b!3657171 (= lt!1270884 lt!1270869)))

(assert (=> b!3657171 false))

(assert (= (and d!1074048 res!1484373) b!3657169))

(assert (= (and b!3657169 res!1484372) b!3657170))

(assert (= (and d!1074048 c!632083) b!3657171))

(assert (= (and d!1074048 (not c!632083)) b!3657172))

(declare-fun m!4162969 () Bool)

(assert (=> d!1074048 m!4162969))

(declare-fun m!4162971 () Bool)

(assert (=> d!1074048 m!4162971))

(declare-fun m!4162973 () Bool)

(assert (=> d!1074048 m!4162973))

(declare-fun m!4162975 () Bool)

(assert (=> d!1074048 m!4162975))

(assert (=> d!1074048 m!4162973))

(declare-fun m!4162977 () Bool)

(assert (=> d!1074048 m!4162977))

(assert (=> d!1074048 m!4162971))

(declare-fun m!4162979 () Bool)

(assert (=> d!1074048 m!4162979))

(assert (=> d!1074048 m!4162405))

(assert (=> d!1074048 m!4162303))

(declare-fun m!4162981 () Bool)

(assert (=> d!1074048 m!4162981))

(declare-fun m!4162983 () Bool)

(assert (=> d!1074048 m!4162983))

(declare-fun m!4162985 () Bool)

(assert (=> d!1074048 m!4162985))

(declare-fun m!4162987 () Bool)

(assert (=> d!1074048 m!4162987))

(assert (=> d!1074048 m!4162405))

(assert (=> d!1074048 m!4162973))

(declare-fun m!4162989 () Bool)

(assert (=> d!1074048 m!4162989))

(assert (=> d!1074048 m!4162985))

(declare-fun m!4162991 () Bool)

(assert (=> d!1074048 m!4162991))

(declare-fun m!4162993 () Bool)

(assert (=> d!1074048 m!4162993))

(assert (=> d!1074048 m!4162303))

(assert (=> d!1074048 m!4162991))

(assert (=> d!1074048 m!4162297))

(assert (=> d!1074048 m!4162969))

(declare-fun m!4162995 () Bool)

(assert (=> d!1074048 m!4162995))

(declare-fun m!4162997 () Bool)

(assert (=> d!1074048 m!4162997))

(assert (=> d!1074048 m!4162405))

(declare-fun m!4162999 () Bool)

(assert (=> d!1074048 m!4162999))

(assert (=> d!1074048 m!4162997))

(declare-fun m!4163001 () Bool)

(assert (=> d!1074048 m!4163001))

(declare-fun m!4163003 () Bool)

(assert (=> d!1074048 m!4163003))

(assert (=> b!3657170 m!4162997))

(assert (=> b!3657170 m!4162997))

(declare-fun m!4163005 () Bool)

(assert (=> b!3657170 m!4163005))

(assert (=> b!3657169 m!4162985))

(assert (=> b!3657169 m!4162987))

(assert (=> b!3657169 m!4162985))

(assert (=> b!3657169 m!4162987))

(declare-fun m!4163007 () Bool)

(assert (=> b!3657169 m!4163007))

(assert (=> b!3657169 m!4162997))

(assert (=> b!3657169 m!4162997))

(assert (=> b!3657169 m!4163005))

(assert (=> b!3657171 m!4162985))

(assert (=> b!3657171 m!4162987))

(assert (=> b!3657171 m!4162985))

(declare-fun m!4163009 () Bool)

(assert (=> b!3657171 m!4163009))

(declare-fun m!4163011 () Bool)

(assert (=> b!3657171 m!4163011))

(declare-fun m!4163013 () Bool)

(assert (=> b!3657171 m!4163013))

(assert (=> b!3657171 m!4162405))

(declare-fun m!4163015 () Bool)

(assert (=> b!3657171 m!4163015))

(assert (=> b!3657171 m!4162405))

(assert (=> b!3657171 m!4163009))

(declare-fun m!4163017 () Bool)

(assert (=> b!3657171 m!4163017))

(assert (=> b!3656650 d!1074048))

(declare-fun d!1074050 () Bool)

(assert (=> d!1074050 (isPrefix!3149 lt!1270583 (++!9602 lt!1270583 (_2!22354 lt!1270586)))))

(declare-fun lt!1270885 () Unit!55748)

(assert (=> d!1074050 (= lt!1270885 (choose!21602 lt!1270583 (_2!22354 lt!1270586)))))

(assert (=> d!1074050 (= (lemmaConcatTwoListThenFirstIsPrefix!2068 lt!1270583 (_2!22354 lt!1270586)) lt!1270885)))

(declare-fun bs!572458 () Bool)

(assert (= bs!572458 d!1074050))

(assert (=> bs!572458 m!4162415))

(assert (=> bs!572458 m!4162415))

(assert (=> bs!572458 m!4162419))

(declare-fun m!4163019 () Bool)

(assert (=> bs!572458 m!4163019))

(assert (=> b!3656650 d!1074050))

(declare-fun d!1074052 () Bool)

(declare-fun e!2264429 () Bool)

(assert (=> d!1074052 e!2264429))

(declare-fun res!1484376 () Bool)

(assert (=> d!1074052 (=> res!1484376 e!2264429)))

(declare-fun lt!1270886 () Bool)

(assert (=> d!1074052 (= res!1484376 (not lt!1270886))))

(declare-fun e!2264428 () Bool)

(assert (=> d!1074052 (= lt!1270886 e!2264428)))

(declare-fun res!1484374 () Bool)

(assert (=> d!1074052 (=> res!1484374 e!2264428)))

(assert (=> d!1074052 (= res!1484374 ((_ is Nil!38577) lt!1270583))))

(assert (=> d!1074052 (= (isPrefix!3149 lt!1270583 (++!9602 lt!1270583 (_2!22354 lt!1270586))) lt!1270886)))

(declare-fun b!3657174 () Bool)

(declare-fun res!1484377 () Bool)

(declare-fun e!2264430 () Bool)

(assert (=> b!3657174 (=> (not res!1484377) (not e!2264430))))

(assert (=> b!3657174 (= res!1484377 (= (head!7808 lt!1270583) (head!7808 (++!9602 lt!1270583 (_2!22354 lt!1270586)))))))

(declare-fun b!3657176 () Bool)

(assert (=> b!3657176 (= e!2264429 (>= (size!29471 (++!9602 lt!1270583 (_2!22354 lt!1270586))) (size!29471 lt!1270583)))))

(declare-fun b!3657173 () Bool)

(assert (=> b!3657173 (= e!2264428 e!2264430)))

(declare-fun res!1484375 () Bool)

(assert (=> b!3657173 (=> (not res!1484375) (not e!2264430))))

(assert (=> b!3657173 (= res!1484375 (not ((_ is Nil!38577) (++!9602 lt!1270583 (_2!22354 lt!1270586)))))))

(declare-fun b!3657175 () Bool)

(assert (=> b!3657175 (= e!2264430 (isPrefix!3149 (tail!5663 lt!1270583) (tail!5663 (++!9602 lt!1270583 (_2!22354 lt!1270586)))))))

(assert (= (and d!1074052 (not res!1484374)) b!3657173))

(assert (= (and b!3657173 res!1484375) b!3657174))

(assert (= (and b!3657174 res!1484377) b!3657175))

(assert (= (and d!1074052 (not res!1484376)) b!3657176))

(assert (=> b!3657174 m!4162383))

(assert (=> b!3657174 m!4162415))

(declare-fun m!4163021 () Bool)

(assert (=> b!3657174 m!4163021))

(assert (=> b!3657176 m!4162415))

(declare-fun m!4163023 () Bool)

(assert (=> b!3657176 m!4163023))

(assert (=> b!3657176 m!4162363))

(assert (=> b!3657175 m!4162923))

(assert (=> b!3657175 m!4162415))

(declare-fun m!4163025 () Bool)

(assert (=> b!3657175 m!4163025))

(assert (=> b!3657175 m!4162923))

(assert (=> b!3657175 m!4163025))

(declare-fun m!4163027 () Bool)

(assert (=> b!3657175 m!4163027))

(assert (=> b!3656650 d!1074052))

(declare-fun d!1074054 () Bool)

(assert (=> d!1074054 (= (list!14304 lt!1270621) (list!14307 (c!631978 lt!1270621)))))

(declare-fun bs!572459 () Bool)

(assert (= bs!572459 d!1074054))

(declare-fun m!4163029 () Bool)

(assert (=> bs!572459 m!4163029))

(assert (=> b!3656650 d!1074054))

(declare-fun d!1074056 () Bool)

(declare-fun e!2264432 () Bool)

(assert (=> d!1074056 e!2264432))

(declare-fun res!1484380 () Bool)

(assert (=> d!1074056 (=> res!1484380 e!2264432)))

(declare-fun lt!1270887 () Bool)

(assert (=> d!1074056 (= res!1484380 (not lt!1270887))))

(declare-fun e!2264431 () Bool)

(assert (=> d!1074056 (= lt!1270887 e!2264431)))

(declare-fun res!1484378 () Bool)

(assert (=> d!1074056 (=> res!1484378 e!2264431)))

(assert (=> d!1074056 (= res!1484378 ((_ is Nil!38577) lt!1270581))))

(assert (=> d!1074056 (= (isPrefix!3149 lt!1270581 lt!1270579) lt!1270887)))

(declare-fun b!3657178 () Bool)

(declare-fun res!1484381 () Bool)

(declare-fun e!2264433 () Bool)

(assert (=> b!3657178 (=> (not res!1484381) (not e!2264433))))

(assert (=> b!3657178 (= res!1484381 (= (head!7808 lt!1270581) (head!7808 lt!1270579)))))

(declare-fun b!3657180 () Bool)

(assert (=> b!3657180 (= e!2264432 (>= (size!29471 lt!1270579) (size!29471 lt!1270581)))))

(declare-fun b!3657177 () Bool)

(assert (=> b!3657177 (= e!2264431 e!2264433)))

(declare-fun res!1484379 () Bool)

(assert (=> b!3657177 (=> (not res!1484379) (not e!2264433))))

(assert (=> b!3657177 (= res!1484379 (not ((_ is Nil!38577) lt!1270579)))))

(declare-fun b!3657179 () Bool)

(assert (=> b!3657179 (= e!2264433 (isPrefix!3149 (tail!5663 lt!1270581) (tail!5663 lt!1270579)))))

(assert (= (and d!1074056 (not res!1484378)) b!3657177))

(assert (= (and b!3657177 res!1484379) b!3657178))

(assert (= (and b!3657178 res!1484381) b!3657179))

(assert (= (and d!1074056 (not res!1484380)) b!3657180))

(declare-fun m!4163031 () Bool)

(assert (=> b!3657178 m!4163031))

(assert (=> b!3657178 m!4162539))

(assert (=> b!3657180 m!4162541))

(assert (=> b!3657180 m!4162291))

(declare-fun m!4163033 () Bool)

(assert (=> b!3657179 m!4163033))

(assert (=> b!3657179 m!4162543))

(assert (=> b!3657179 m!4163033))

(assert (=> b!3657179 m!4162543))

(declare-fun m!4163035 () Bool)

(assert (=> b!3657179 m!4163035))

(assert (=> b!3656650 d!1074056))

(declare-fun d!1074058 () Bool)

(assert (=> d!1074058 (= (isDefined!6432 lt!1270611) (not (isEmpty!22876 lt!1270611)))))

(declare-fun bs!572460 () Bool)

(assert (= bs!572460 d!1074058))

(declare-fun m!4163037 () Bool)

(assert (=> bs!572460 m!4163037))

(assert (=> b!3656650 d!1074058))

(declare-fun d!1074060 () Bool)

(assert (=> d!1074060 (= (get!12703 lt!1270596) (v!38076 lt!1270596))))

(assert (=> b!3656650 d!1074060))

(declare-fun b!3657199 () Bool)

(declare-fun e!2264440 () Bool)

(declare-fun lt!1270898 () Option!8201)

(assert (=> b!3657199 (= e!2264440 (contains!7638 rules!3307 (rule!8592 (_1!22354 (get!12703 lt!1270898)))))))

(declare-fun b!3657200 () Bool)

(declare-fun res!1484397 () Bool)

(assert (=> b!3657200 (=> (not res!1484397) (not e!2264440))))

(assert (=> b!3657200 (= res!1484397 (= (++!9602 (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270898)))) (_2!22354 (get!12703 lt!1270898))) lt!1270579))))

(declare-fun b!3657201 () Bool)

(declare-fun res!1484396 () Bool)

(assert (=> b!3657201 (=> (not res!1484396) (not e!2264440))))

(assert (=> b!3657201 (= res!1484396 (= (value!185361 (_1!22354 (get!12703 lt!1270898))) (apply!9288 (transformation!5786 (rule!8592 (_1!22354 (get!12703 lt!1270898)))) (seqFromList!4335 (originalCharacters!6500 (_1!22354 (get!12703 lt!1270898)))))))))

(declare-fun d!1074062 () Bool)

(declare-fun e!2264442 () Bool)

(assert (=> d!1074062 e!2264442))

(declare-fun res!1484399 () Bool)

(assert (=> d!1074062 (=> res!1484399 e!2264442)))

(assert (=> d!1074062 (= res!1484399 (isEmpty!22877 lt!1270898))))

(declare-fun e!2264441 () Option!8201)

(assert (=> d!1074062 (= lt!1270898 e!2264441)))

(declare-fun c!632086 () Bool)

(assert (=> d!1074062 (= c!632086 (and ((_ is Cons!38579) rules!3307) ((_ is Nil!38579) (t!298066 rules!3307))))))

(declare-fun lt!1270899 () Unit!55748)

(declare-fun lt!1270900 () Unit!55748)

(assert (=> d!1074062 (= lt!1270899 lt!1270900)))

(assert (=> d!1074062 (isPrefix!3149 lt!1270579 lt!1270579)))

(assert (=> d!1074062 (= lt!1270900 (lemmaIsPrefixRefl!1988 lt!1270579 lt!1270579))))

(declare-fun rulesValidInductive!2051 (LexerInterface!5375 List!38703) Bool)

(assert (=> d!1074062 (rulesValidInductive!2051 thiss!23823 rules!3307)))

(assert (=> d!1074062 (= (maxPrefix!2909 thiss!23823 rules!3307 lt!1270579) lt!1270898)))

(declare-fun b!3657202 () Bool)

(assert (=> b!3657202 (= e!2264442 e!2264440)))

(declare-fun res!1484401 () Bool)

(assert (=> b!3657202 (=> (not res!1484401) (not e!2264440))))

(assert (=> b!3657202 (= res!1484401 (isDefined!6433 lt!1270898))))

(declare-fun b!3657203 () Bool)

(declare-fun lt!1270901 () Option!8201)

(declare-fun lt!1270902 () Option!8201)

(assert (=> b!3657203 (= e!2264441 (ite (and ((_ is None!8200) lt!1270901) ((_ is None!8200) lt!1270902)) None!8200 (ite ((_ is None!8200) lt!1270902) lt!1270901 (ite ((_ is None!8200) lt!1270901) lt!1270902 (ite (>= (size!29470 (_1!22354 (v!38076 lt!1270901))) (size!29470 (_1!22354 (v!38076 lt!1270902)))) lt!1270901 lt!1270902)))))))

(declare-fun call!264453 () Option!8201)

(assert (=> b!3657203 (= lt!1270901 call!264453)))

(assert (=> b!3657203 (= lt!1270902 (maxPrefix!2909 thiss!23823 (t!298066 rules!3307) lt!1270579))))

(declare-fun b!3657204 () Bool)

(assert (=> b!3657204 (= e!2264441 call!264453)))

(declare-fun b!3657205 () Bool)

(declare-fun res!1484400 () Bool)

(assert (=> b!3657205 (=> (not res!1484400) (not e!2264440))))

(assert (=> b!3657205 (= res!1484400 (matchR!5114 (regex!5786 (rule!8592 (_1!22354 (get!12703 lt!1270898)))) (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270898))))))))

(declare-fun b!3657206 () Bool)

(declare-fun res!1484398 () Bool)

(assert (=> b!3657206 (=> (not res!1484398) (not e!2264440))))

(assert (=> b!3657206 (= res!1484398 (< (size!29471 (_2!22354 (get!12703 lt!1270898))) (size!29471 lt!1270579)))))

(declare-fun bm!264448 () Bool)

(assert (=> bm!264448 (= call!264453 (maxPrefixOneRule!2047 thiss!23823 (h!43999 rules!3307) lt!1270579))))

(declare-fun b!3657207 () Bool)

(declare-fun res!1484402 () Bool)

(assert (=> b!3657207 (=> (not res!1484402) (not e!2264440))))

(assert (=> b!3657207 (= res!1484402 (= (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270898)))) (originalCharacters!6500 (_1!22354 (get!12703 lt!1270898)))))))

(assert (= (and d!1074062 c!632086) b!3657204))

(assert (= (and d!1074062 (not c!632086)) b!3657203))

(assert (= (or b!3657204 b!3657203) bm!264448))

(assert (= (and d!1074062 (not res!1484399)) b!3657202))

(assert (= (and b!3657202 res!1484401) b!3657207))

(assert (= (and b!3657207 res!1484402) b!3657206))

(assert (= (and b!3657206 res!1484398) b!3657200))

(assert (= (and b!3657200 res!1484397) b!3657201))

(assert (= (and b!3657201 res!1484396) b!3657205))

(assert (= (and b!3657205 res!1484400) b!3657199))

(declare-fun m!4163039 () Bool)

(assert (=> b!3657207 m!4163039))

(declare-fun m!4163041 () Bool)

(assert (=> b!3657207 m!4163041))

(assert (=> b!3657207 m!4163041))

(declare-fun m!4163043 () Bool)

(assert (=> b!3657207 m!4163043))

(assert (=> b!3657201 m!4163039))

(declare-fun m!4163045 () Bool)

(assert (=> b!3657201 m!4163045))

(assert (=> b!3657201 m!4163045))

(declare-fun m!4163047 () Bool)

(assert (=> b!3657201 m!4163047))

(assert (=> b!3657206 m!4163039))

(declare-fun m!4163049 () Bool)

(assert (=> b!3657206 m!4163049))

(assert (=> b!3657206 m!4162541))

(declare-fun m!4163051 () Bool)

(assert (=> b!3657202 m!4163051))

(declare-fun m!4163053 () Bool)

(assert (=> d!1074062 m!4163053))

(assert (=> d!1074062 m!4162439))

(assert (=> d!1074062 m!4162437))

(declare-fun m!4163055 () Bool)

(assert (=> d!1074062 m!4163055))

(assert (=> b!3657200 m!4163039))

(assert (=> b!3657200 m!4163041))

(assert (=> b!3657200 m!4163041))

(assert (=> b!3657200 m!4163043))

(assert (=> b!3657200 m!4163043))

(declare-fun m!4163057 () Bool)

(assert (=> b!3657200 m!4163057))

(assert (=> b!3657205 m!4163039))

(assert (=> b!3657205 m!4163041))

(assert (=> b!3657205 m!4163041))

(assert (=> b!3657205 m!4163043))

(assert (=> b!3657205 m!4163043))

(declare-fun m!4163059 () Bool)

(assert (=> b!3657205 m!4163059))

(declare-fun m!4163061 () Bool)

(assert (=> b!3657203 m!4163061))

(declare-fun m!4163063 () Bool)

(assert (=> bm!264448 m!4163063))

(assert (=> b!3657199 m!4163039))

(declare-fun m!4163065 () Bool)

(assert (=> b!3657199 m!4163065))

(assert (=> b!3656650 d!1074062))

(declare-fun b!3657215 () Bool)

(declare-fun e!2264448 () List!38701)

(assert (=> b!3657215 (= e!2264448 (Cons!38577 (h!43997 lt!1270581) (++!9602 (t!298064 lt!1270581) suffix!1395)))))

(declare-fun e!2264447 () Bool)

(declare-fun b!3657217 () Bool)

(declare-fun lt!1270904 () List!38701)

(assert (=> b!3657217 (= e!2264447 (or (not (= suffix!1395 Nil!38577)) (= lt!1270904 lt!1270581)))))

(declare-fun b!3657216 () Bool)

(declare-fun res!1484403 () Bool)

(assert (=> b!3657216 (=> (not res!1484403) (not e!2264447))))

(assert (=> b!3657216 (= res!1484403 (= (size!29471 lt!1270904) (+ (size!29471 lt!1270581) (size!29471 suffix!1395))))))

(declare-fun b!3657214 () Bool)

(assert (=> b!3657214 (= e!2264448 suffix!1395)))

(declare-fun d!1074064 () Bool)

(assert (=> d!1074064 e!2264447))

(declare-fun res!1484404 () Bool)

(assert (=> d!1074064 (=> (not res!1484404) (not e!2264447))))

(assert (=> d!1074064 (= res!1484404 (= (content!5570 lt!1270904) ((_ map or) (content!5570 lt!1270581) (content!5570 suffix!1395))))))

(assert (=> d!1074064 (= lt!1270904 e!2264448)))

(declare-fun c!632087 () Bool)

(assert (=> d!1074064 (= c!632087 ((_ is Nil!38577) lt!1270581))))

(assert (=> d!1074064 (= (++!9602 lt!1270581 suffix!1395) lt!1270904)))

(assert (= (and d!1074064 c!632087) b!3657214))

(assert (= (and d!1074064 (not c!632087)) b!3657215))

(assert (= (and d!1074064 res!1484404) b!3657216))

(assert (= (and b!3657216 res!1484403) b!3657217))

(declare-fun m!4163071 () Bool)

(assert (=> b!3657215 m!4163071))

(declare-fun m!4163073 () Bool)

(assert (=> b!3657216 m!4163073))

(assert (=> b!3657216 m!4162291))

(declare-fun m!4163075 () Bool)

(assert (=> b!3657216 m!4163075))

(declare-fun m!4163077 () Bool)

(assert (=> d!1074064 m!4163077))

(declare-fun m!4163079 () Bool)

(assert (=> d!1074064 m!4163079))

(declare-fun m!4163081 () Bool)

(assert (=> d!1074064 m!4163081))

(assert (=> b!3656650 d!1074064))

(declare-fun d!1074066 () Bool)

(declare-fun e!2264450 () Bool)

(assert (=> d!1074066 e!2264450))

(declare-fun res!1484407 () Bool)

(assert (=> d!1074066 (=> res!1484407 e!2264450)))

(declare-fun lt!1270905 () Bool)

(assert (=> d!1074066 (= res!1484407 (not lt!1270905))))

(declare-fun e!2264449 () Bool)

(assert (=> d!1074066 (= lt!1270905 e!2264449)))

(declare-fun res!1484405 () Bool)

(assert (=> d!1074066 (=> res!1484405 e!2264449)))

(assert (=> d!1074066 (= res!1484405 ((_ is Nil!38577) lt!1270583))))

(assert (=> d!1074066 (= (isPrefix!3149 lt!1270583 lt!1270579) lt!1270905)))

(declare-fun b!3657219 () Bool)

(declare-fun res!1484408 () Bool)

(declare-fun e!2264451 () Bool)

(assert (=> b!3657219 (=> (not res!1484408) (not e!2264451))))

(assert (=> b!3657219 (= res!1484408 (= (head!7808 lt!1270583) (head!7808 lt!1270579)))))

(declare-fun b!3657221 () Bool)

(assert (=> b!3657221 (= e!2264450 (>= (size!29471 lt!1270579) (size!29471 lt!1270583)))))

(declare-fun b!3657218 () Bool)

(assert (=> b!3657218 (= e!2264449 e!2264451)))

(declare-fun res!1484406 () Bool)

(assert (=> b!3657218 (=> (not res!1484406) (not e!2264451))))

(assert (=> b!3657218 (= res!1484406 (not ((_ is Nil!38577) lt!1270579)))))

(declare-fun b!3657220 () Bool)

(assert (=> b!3657220 (= e!2264451 (isPrefix!3149 (tail!5663 lt!1270583) (tail!5663 lt!1270579)))))

(assert (= (and d!1074066 (not res!1484405)) b!3657218))

(assert (= (and b!3657218 res!1484406) b!3657219))

(assert (= (and b!3657219 res!1484408) b!3657220))

(assert (= (and d!1074066 (not res!1484407)) b!3657221))

(assert (=> b!3657219 m!4162383))

(assert (=> b!3657219 m!4162539))

(assert (=> b!3657221 m!4162541))

(assert (=> b!3657221 m!4162363))

(assert (=> b!3657220 m!4162923))

(assert (=> b!3657220 m!4162543))

(assert (=> b!3657220 m!4162923))

(assert (=> b!3657220 m!4162543))

(declare-fun m!4163085 () Bool)

(assert (=> b!3657220 m!4163085))

(assert (=> b!3656650 d!1074066))

(declare-fun d!1074068 () Bool)

(declare-fun lt!1270908 () Bool)

(declare-fun content!5571 (List!38703) (InoxSet Rule!11372))

(assert (=> d!1074068 (= lt!1270908 (select (content!5571 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2264458 () Bool)

(assert (=> d!1074068 (= lt!1270908 e!2264458)))

(declare-fun res!1484414 () Bool)

(assert (=> d!1074068 (=> (not res!1484414) (not e!2264458))))

(assert (=> d!1074068 (= res!1484414 ((_ is Cons!38579) rules!3307))))

(assert (=> d!1074068 (= (contains!7638 rules!3307 anOtherTypeRule!33) lt!1270908)))

(declare-fun b!3657226 () Bool)

(declare-fun e!2264457 () Bool)

(assert (=> b!3657226 (= e!2264458 e!2264457)))

(declare-fun res!1484413 () Bool)

(assert (=> b!3657226 (=> res!1484413 e!2264457)))

(assert (=> b!3657226 (= res!1484413 (= (h!43999 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3657227 () Bool)

(assert (=> b!3657227 (= e!2264457 (contains!7638 (t!298066 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1074068 res!1484414) b!3657226))

(assert (= (and b!3657226 (not res!1484413)) b!3657227))

(declare-fun m!4163099 () Bool)

(assert (=> d!1074068 m!4163099))

(declare-fun m!4163101 () Bool)

(assert (=> d!1074068 m!4163101))

(declare-fun m!4163103 () Bool)

(assert (=> b!3657227 m!4163103))

(assert (=> b!3656688 d!1074068))

(declare-fun d!1074078 () Bool)

(assert (=> d!1074078 (contains!7637 lt!1270583 (head!7808 suffix!1395))))

(declare-fun lt!1270913 () Unit!55748)

(declare-fun choose!21606 (List!38701 List!38701 List!38701 List!38701) Unit!55748)

(assert (=> d!1074078 (= lt!1270913 (choose!21606 lt!1270581 suffix!1395 lt!1270583 lt!1270579))))

(assert (=> d!1074078 (isPrefix!3149 lt!1270583 lt!1270579)))

(assert (=> d!1074078 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!94 lt!1270581 suffix!1395 lt!1270583 lt!1270579) lt!1270913)))

(declare-fun bs!572463 () Bool)

(assert (= bs!572463 d!1074078))

(assert (=> bs!572463 m!4162311))

(assert (=> bs!572463 m!4162311))

(declare-fun m!4163105 () Bool)

(assert (=> bs!572463 m!4163105))

(declare-fun m!4163107 () Bool)

(assert (=> bs!572463 m!4163107))

(assert (=> bs!572463 m!4162423))

(assert (=> b!3656687 d!1074078))

(declare-fun d!1074080 () Bool)

(declare-fun lt!1270914 () Bool)

(assert (=> d!1074080 (= lt!1270914 (select (content!5570 lt!1270583) lt!1270600))))

(declare-fun e!2264459 () Bool)

(assert (=> d!1074080 (= lt!1270914 e!2264459)))

(declare-fun res!1484416 () Bool)

(assert (=> d!1074080 (=> (not res!1484416) (not e!2264459))))

(assert (=> d!1074080 (= res!1484416 ((_ is Cons!38577) lt!1270583))))

(assert (=> d!1074080 (= (contains!7637 lt!1270583 lt!1270600) lt!1270914)))

(declare-fun b!3657228 () Bool)

(declare-fun e!2264460 () Bool)

(assert (=> b!3657228 (= e!2264459 e!2264460)))

(declare-fun res!1484415 () Bool)

(assert (=> b!3657228 (=> res!1484415 e!2264460)))

(assert (=> b!3657228 (= res!1484415 (= (h!43997 lt!1270583) lt!1270600))))

(declare-fun b!3657229 () Bool)

(assert (=> b!3657229 (= e!2264460 (contains!7637 (t!298064 lt!1270583) lt!1270600))))

(assert (= (and d!1074080 res!1484416) b!3657228))

(assert (= (and b!3657228 (not res!1484415)) b!3657229))

(assert (=> d!1074080 m!4162949))

(declare-fun m!4163109 () Bool)

(assert (=> d!1074080 m!4163109))

(declare-fun m!4163111 () Bool)

(assert (=> b!3657229 m!4163111))

(assert (=> b!3656687 d!1074080))

(declare-fun b!3657230 () Bool)

(declare-fun e!2264467 () Bool)

(declare-fun lt!1270915 () Bool)

(declare-fun call!264454 () Bool)

(assert (=> b!3657230 (= e!2264467 (= lt!1270915 call!264454))))

(declare-fun b!3657231 () Bool)

(declare-fun res!1484418 () Bool)

(declare-fun e!2264463 () Bool)

(assert (=> b!3657231 (=> res!1484418 e!2264463)))

(assert (=> b!3657231 (= res!1484418 (not ((_ is ElementMatch!10545) (regex!5786 rule!403))))))

(declare-fun e!2264461 () Bool)

(assert (=> b!3657231 (= e!2264461 e!2264463)))

(declare-fun b!3657232 () Bool)

(declare-fun res!1484424 () Bool)

(declare-fun e!2264462 () Bool)

(assert (=> b!3657232 (=> res!1484424 e!2264462)))

(assert (=> b!3657232 (= res!1484424 (not (isEmpty!22873 (tail!5663 lt!1270581))))))

(declare-fun b!3657233 () Bool)

(declare-fun res!1484420 () Bool)

(declare-fun e!2264464 () Bool)

(assert (=> b!3657233 (=> (not res!1484420) (not e!2264464))))

(assert (=> b!3657233 (= res!1484420 (isEmpty!22873 (tail!5663 lt!1270581)))))

(declare-fun b!3657234 () Bool)

(declare-fun res!1484417 () Bool)

(assert (=> b!3657234 (=> res!1484417 e!2264463)))

(assert (=> b!3657234 (= res!1484417 e!2264464)))

(declare-fun res!1484421 () Bool)

(assert (=> b!3657234 (=> (not res!1484421) (not e!2264464))))

(assert (=> b!3657234 (= res!1484421 lt!1270915)))

(declare-fun b!3657235 () Bool)

(assert (=> b!3657235 (= e!2264462 (not (= (head!7808 lt!1270581) (c!631979 (regex!5786 rule!403)))))))

(declare-fun b!3657236 () Bool)

(declare-fun e!2264465 () Bool)

(assert (=> b!3657236 (= e!2264463 e!2264465)))

(declare-fun res!1484419 () Bool)

(assert (=> b!3657236 (=> (not res!1484419) (not e!2264465))))

(assert (=> b!3657236 (= res!1484419 (not lt!1270915))))

(declare-fun b!3657237 () Bool)

(declare-fun e!2264466 () Bool)

(assert (=> b!3657237 (= e!2264466 (nullable!3665 (regex!5786 rule!403)))))

(declare-fun b!3657238 () Bool)

(assert (=> b!3657238 (= e!2264467 e!2264461)))

(declare-fun c!632089 () Bool)

(assert (=> b!3657238 (= c!632089 ((_ is EmptyLang!10545) (regex!5786 rule!403)))))

(declare-fun b!3657239 () Bool)

(assert (=> b!3657239 (= e!2264465 e!2264462)))

(declare-fun res!1484423 () Bool)

(assert (=> b!3657239 (=> res!1484423 e!2264462)))

(assert (=> b!3657239 (= res!1484423 call!264454)))

(declare-fun bm!264449 () Bool)

(assert (=> bm!264449 (= call!264454 (isEmpty!22873 lt!1270581))))

(declare-fun b!3657240 () Bool)

(assert (=> b!3657240 (= e!2264464 (= (head!7808 lt!1270581) (c!631979 (regex!5786 rule!403))))))

(declare-fun b!3657241 () Bool)

(declare-fun res!1484422 () Bool)

(assert (=> b!3657241 (=> (not res!1484422) (not e!2264464))))

(assert (=> b!3657241 (= res!1484422 (not call!264454))))

(declare-fun b!3657242 () Bool)

(assert (=> b!3657242 (= e!2264461 (not lt!1270915))))

(declare-fun d!1074082 () Bool)

(assert (=> d!1074082 e!2264467))

(declare-fun c!632090 () Bool)

(assert (=> d!1074082 (= c!632090 ((_ is EmptyExpr!10545) (regex!5786 rule!403)))))

(assert (=> d!1074082 (= lt!1270915 e!2264466)))

(declare-fun c!632088 () Bool)

(assert (=> d!1074082 (= c!632088 (isEmpty!22873 lt!1270581))))

(assert (=> d!1074082 (validRegex!4827 (regex!5786 rule!403))))

(assert (=> d!1074082 (= (matchR!5114 (regex!5786 rule!403) lt!1270581) lt!1270915)))

(declare-fun b!3657243 () Bool)

(assert (=> b!3657243 (= e!2264466 (matchR!5114 (derivativeStep!3214 (regex!5786 rule!403) (head!7808 lt!1270581)) (tail!5663 lt!1270581)))))

(assert (= (and d!1074082 c!632088) b!3657237))

(assert (= (and d!1074082 (not c!632088)) b!3657243))

(assert (= (and d!1074082 c!632090) b!3657230))

(assert (= (and d!1074082 (not c!632090)) b!3657238))

(assert (= (and b!3657238 c!632089) b!3657242))

(assert (= (and b!3657238 (not c!632089)) b!3657231))

(assert (= (and b!3657231 (not res!1484418)) b!3657234))

(assert (= (and b!3657234 res!1484421) b!3657241))

(assert (= (and b!3657241 res!1484422) b!3657233))

(assert (= (and b!3657233 res!1484420) b!3657240))

(assert (= (and b!3657234 (not res!1484417)) b!3657236))

(assert (= (and b!3657236 res!1484419) b!3657239))

(assert (= (and b!3657239 (not res!1484423)) b!3657232))

(assert (= (and b!3657232 (not res!1484424)) b!3657235))

(assert (= (or b!3657230 b!3657239 b!3657241) bm!264449))

(assert (=> b!3657235 m!4163031))

(assert (=> b!3657232 m!4163033))

(assert (=> b!3657232 m!4163033))

(declare-fun m!4163113 () Bool)

(assert (=> b!3657232 m!4163113))

(assert (=> b!3657240 m!4163031))

(assert (=> b!3657243 m!4163031))

(assert (=> b!3657243 m!4163031))

(declare-fun m!4163115 () Bool)

(assert (=> b!3657243 m!4163115))

(assert (=> b!3657243 m!4163033))

(assert (=> b!3657243 m!4163115))

(assert (=> b!3657243 m!4163033))

(declare-fun m!4163117 () Bool)

(assert (=> b!3657243 m!4163117))

(declare-fun m!4163119 () Bool)

(assert (=> bm!264449 m!4163119))

(declare-fun m!4163121 () Bool)

(assert (=> b!3657237 m!4163121))

(assert (=> d!1074082 m!4163119))

(declare-fun m!4163123 () Bool)

(assert (=> d!1074082 m!4163123))

(assert (=> b!3657233 m!4163033))

(assert (=> b!3657233 m!4163033))

(assert (=> b!3657233 m!4163113))

(assert (=> b!3656668 d!1074082))

(declare-fun d!1074084 () Bool)

(declare-fun res!1484427 () Bool)

(declare-fun e!2264470 () Bool)

(assert (=> d!1074084 (=> (not res!1484427) (not e!2264470))))

(assert (=> d!1074084 (= res!1484427 (validRegex!4827 (regex!5786 rule!403)))))

(assert (=> d!1074084 (= (ruleValid!2050 thiss!23823 rule!403) e!2264470)))

(declare-fun b!3657246 () Bool)

(declare-fun res!1484428 () Bool)

(assert (=> b!3657246 (=> (not res!1484428) (not e!2264470))))

(assert (=> b!3657246 (= res!1484428 (not (nullable!3665 (regex!5786 rule!403))))))

(declare-fun b!3657247 () Bool)

(assert (=> b!3657247 (= e!2264470 (not (= (tag!6558 rule!403) (String!43415 ""))))))

(assert (= (and d!1074084 res!1484427) b!3657246))

(assert (= (and b!3657246 res!1484428) b!3657247))

(assert (=> d!1074084 m!4163123))

(assert (=> b!3657246 m!4163121))

(assert (=> b!3656668 d!1074084))

(declare-fun d!1074086 () Bool)

(assert (=> d!1074086 (ruleValid!2050 thiss!23823 rule!403)))

(declare-fun lt!1270916 () Unit!55748)

(assert (=> d!1074086 (= lt!1270916 (choose!21596 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1074086 (contains!7638 rules!3307 rule!403)))

(assert (=> d!1074086 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1204 thiss!23823 rule!403 rules!3307) lt!1270916)))

(declare-fun bs!572464 () Bool)

(assert (= bs!572464 d!1074086))

(assert (=> bs!572464 m!4162357))

(declare-fun m!4163125 () Bool)

(assert (=> bs!572464 m!4163125))

(assert (=> bs!572464 m!4162347))

(assert (=> b!3656668 d!1074086))

(declare-fun d!1074088 () Bool)

(declare-fun res!1484431 () Bool)

(declare-fun e!2264476 () Bool)

(assert (=> d!1074088 (=> (not res!1484431) (not e!2264476))))

(declare-fun rulesValid!2222 (LexerInterface!5375 List!38703) Bool)

(assert (=> d!1074088 (= res!1484431 (rulesValid!2222 thiss!23823 rules!3307))))

(assert (=> d!1074088 (= (rulesInvariant!4772 thiss!23823 rules!3307) e!2264476)))

(declare-fun b!3657255 () Bool)

(declare-datatypes ((List!38707 0))(
  ( (Nil!38583) (Cons!38583 (h!44003 String!43414) (t!298210 List!38707)) )
))
(declare-fun noDuplicateTag!2218 (LexerInterface!5375 List!38703 List!38707) Bool)

(assert (=> b!3657255 (= e!2264476 (noDuplicateTag!2218 thiss!23823 rules!3307 Nil!38583))))

(assert (= (and d!1074088 res!1484431) b!3657255))

(declare-fun m!4163127 () Bool)

(assert (=> d!1074088 m!4163127))

(declare-fun m!4163129 () Bool)

(assert (=> b!3657255 m!4163129))

(assert (=> b!3656667 d!1074088))

(declare-fun d!1074090 () Bool)

(assert (=> d!1074090 (= (isEmpty!22872 rules!3307) ((_ is Nil!38579) rules!3307))))

(assert (=> b!3656648 d!1074090))

(declare-fun d!1074092 () Bool)

(declare-fun lt!1270918 () Bool)

(assert (=> d!1074092 (= lt!1270918 (select (content!5570 call!264408) lt!1270600))))

(declare-fun e!2264478 () Bool)

(assert (=> d!1074092 (= lt!1270918 e!2264478)))

(declare-fun res!1484433 () Bool)

(assert (=> d!1074092 (=> (not res!1484433) (not e!2264478))))

(assert (=> d!1074092 (= res!1484433 ((_ is Cons!38577) call!264408))))

(assert (=> d!1074092 (= (contains!7637 call!264408 lt!1270600) lt!1270918)))

(declare-fun b!3657256 () Bool)

(declare-fun e!2264479 () Bool)

(assert (=> b!3657256 (= e!2264478 e!2264479)))

(declare-fun res!1484432 () Bool)

(assert (=> b!3657256 (=> res!1484432 e!2264479)))

(assert (=> b!3657256 (= res!1484432 (= (h!43997 call!264408) lt!1270600))))

(declare-fun b!3657257 () Bool)

(assert (=> b!3657257 (= e!2264479 (contains!7637 (t!298064 call!264408) lt!1270600))))

(assert (= (and d!1074092 res!1484433) b!3657256))

(assert (= (and b!3657256 (not res!1484432)) b!3657257))

(declare-fun m!4163133 () Bool)

(assert (=> d!1074092 m!4163133))

(declare-fun m!4163135 () Bool)

(assert (=> d!1074092 m!4163135))

(declare-fun m!4163137 () Bool)

(assert (=> b!3657257 m!4163137))

(assert (=> bm!264405 d!1074092))

(declare-fun d!1074094 () Bool)

(assert (=> d!1074094 (not (contains!7637 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270600))))

(declare-fun lt!1270922 () Unit!55748)

(declare-fun choose!21608 (LexerInterface!5375 List!38703 List!38703 Rule!11372 Rule!11372 C!21276) Unit!55748)

(assert (=> d!1074094 (= lt!1270922 (choose!21608 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) anOtherTypeRule!33 lt!1270600))))

(assert (=> d!1074094 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074094 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!432 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) anOtherTypeRule!33 lt!1270600) lt!1270922)))

(declare-fun bs!572465 () Bool)

(assert (= bs!572465 d!1074094))

(assert (=> bs!572465 m!4162337))

(assert (=> bs!572465 m!4162337))

(declare-fun m!4163155 () Bool)

(assert (=> bs!572465 m!4163155))

(declare-fun m!4163157 () Bool)

(assert (=> bs!572465 m!4163157))

(assert (=> bs!572465 m!4162429))

(assert (=> b!3656666 d!1074094))

(declare-fun d!1074108 () Bool)

(assert (=> d!1074108 (not (contains!7637 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270598))))

(declare-fun lt!1270930 () Unit!55748)

(declare-fun choose!21609 (LexerInterface!5375 List!38703 List!38703 Rule!11372 Rule!11372 C!21276) Unit!55748)

(assert (=> d!1074108 (= lt!1270930 (choose!21609 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8592 (_1!22354 lt!1270586)) lt!1270598))))

(assert (=> d!1074108 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074108 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!314 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8592 (_1!22354 lt!1270586)) lt!1270598) lt!1270930)))

(declare-fun bs!572469 () Bool)

(assert (= bs!572469 d!1074108))

(assert (=> bs!572469 m!4162337))

(assert (=> bs!572469 m!4162337))

(declare-fun m!4163169 () Bool)

(assert (=> bs!572469 m!4163169))

(declare-fun m!4163171 () Bool)

(assert (=> bs!572469 m!4163171))

(assert (=> bs!572469 m!4162429))

(assert (=> b!3656665 d!1074108))

(declare-fun d!1074118 () Bool)

(assert (=> d!1074118 (not (contains!7637 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270600))))

(declare-fun lt!1270931 () Unit!55748)

(assert (=> d!1074118 (= lt!1270931 (choose!21609 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8592 (_1!22354 lt!1270586)) lt!1270600))))

(assert (=> d!1074118 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074118 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!314 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8592 (_1!22354 lt!1270586)) lt!1270600) lt!1270931)))

(declare-fun bs!572470 () Bool)

(assert (= bs!572470 d!1074118))

(assert (=> bs!572470 m!4162337))

(assert (=> bs!572470 m!4162337))

(assert (=> bs!572470 m!4163155))

(declare-fun m!4163173 () Bool)

(assert (=> bs!572470 m!4163173))

(assert (=> bs!572470 m!4162429))

(assert (=> b!3656647 d!1074118))

(declare-fun b!3657276 () Bool)

(declare-fun e!2264495 () List!38701)

(declare-fun call!264459 () List!38701)

(assert (=> b!3657276 (= e!2264495 call!264459)))

(declare-fun bm!264454 () Bool)

(declare-fun call!264460 () List!38701)

(declare-fun call!264462 () List!38701)

(assert (=> bm!264454 (= call!264460 call!264462)))

(declare-fun b!3657277 () Bool)

(declare-fun e!2264493 () List!38701)

(assert (=> b!3657277 (= e!2264493 (Cons!38577 (c!631979 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) Nil!38577))))

(declare-fun bm!264455 () Bool)

(declare-fun call!264461 () List!38701)

(declare-fun c!632101 () Bool)

(assert (=> bm!264455 (= call!264461 (usedCharacters!998 (ite c!632101 (regTwo!21603 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) (regOne!21602 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))))

(declare-fun d!1074120 () Bool)

(declare-fun c!632100 () Bool)

(assert (=> d!1074120 (= c!632100 (or ((_ is EmptyExpr!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) ((_ is EmptyLang!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))))

(declare-fun e!2264492 () List!38701)

(assert (=> d!1074120 (= (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) e!2264492)))

(declare-fun bm!264456 () Bool)

(assert (=> bm!264456 (= call!264459 (++!9602 (ite c!632101 call!264460 call!264461) (ite c!632101 call!264461 call!264460)))))

(declare-fun b!3657278 () Bool)

(declare-fun c!632099 () Bool)

(assert (=> b!3657278 (= c!632099 ((_ is Star!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun e!2264494 () List!38701)

(assert (=> b!3657278 (= e!2264493 e!2264494)))

(declare-fun b!3657279 () Bool)

(assert (=> b!3657279 (= e!2264494 call!264462)))

(declare-fun b!3657280 () Bool)

(assert (=> b!3657280 (= e!2264492 Nil!38577)))

(declare-fun b!3657281 () Bool)

(assert (=> b!3657281 (= e!2264494 e!2264495)))

(assert (=> b!3657281 (= c!632101 ((_ is Union!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun b!3657282 () Bool)

(assert (=> b!3657282 (= e!2264492 e!2264493)))

(declare-fun c!632098 () Bool)

(assert (=> b!3657282 (= c!632098 ((_ is ElementMatch!10545) (regex!5786 (rule!8592 (_1!22354 lt!1270586)))))))

(declare-fun bm!264457 () Bool)

(assert (=> bm!264457 (= call!264462 (usedCharacters!998 (ite c!632099 (reg!10874 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) (ite c!632101 (regOne!21603 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) (regTwo!21602 (regex!5786 (rule!8592 (_1!22354 lt!1270586))))))))))

(declare-fun b!3657283 () Bool)

(assert (=> b!3657283 (= e!2264495 call!264459)))

(assert (= (and d!1074120 c!632100) b!3657280))

(assert (= (and d!1074120 (not c!632100)) b!3657282))

(assert (= (and b!3657282 c!632098) b!3657277))

(assert (= (and b!3657282 (not c!632098)) b!3657278))

(assert (= (and b!3657278 c!632099) b!3657279))

(assert (= (and b!3657278 (not c!632099)) b!3657281))

(assert (= (and b!3657281 c!632101) b!3657276))

(assert (= (and b!3657281 (not c!632101)) b!3657283))

(assert (= (or b!3657276 b!3657283) bm!264454))

(assert (= (or b!3657276 b!3657283) bm!264455))

(assert (= (or b!3657276 b!3657283) bm!264456))

(assert (= (or b!3657279 bm!264454) bm!264457))

(declare-fun m!4163183 () Bool)

(assert (=> bm!264455 m!4163183))

(declare-fun m!4163187 () Bool)

(assert (=> bm!264456 m!4163187))

(declare-fun m!4163191 () Bool)

(assert (=> bm!264457 m!4163191))

(assert (=> bm!264400 d!1074120))

(declare-fun b!3657298 () Bool)

(declare-fun e!2264506 () Bool)

(declare-fun e!2264505 () Bool)

(assert (=> b!3657298 (= e!2264506 e!2264505)))

(declare-fun c!632107 () Bool)

(assert (=> b!3657298 (= c!632107 ((_ is IntegerValue!18049) (value!185361 token!511)))))

(declare-fun d!1074122 () Bool)

(declare-fun c!632108 () Bool)

(assert (=> d!1074122 (= c!632108 ((_ is IntegerValue!18048) (value!185361 token!511)))))

(assert (=> d!1074122 (= (inv!21 (value!185361 token!511)) e!2264506)))

(declare-fun b!3657299 () Bool)

(declare-fun inv!16 (TokenValue!6016) Bool)

(assert (=> b!3657299 (= e!2264506 (inv!16 (value!185361 token!511)))))

(declare-fun b!3657300 () Bool)

(declare-fun res!1484446 () Bool)

(declare-fun e!2264507 () Bool)

(assert (=> b!3657300 (=> res!1484446 e!2264507)))

(assert (=> b!3657300 (= res!1484446 (not ((_ is IntegerValue!18050) (value!185361 token!511))))))

(assert (=> b!3657300 (= e!2264505 e!2264507)))

(declare-fun b!3657301 () Bool)

(declare-fun inv!17 (TokenValue!6016) Bool)

(assert (=> b!3657301 (= e!2264505 (inv!17 (value!185361 token!511)))))

(declare-fun b!3657302 () Bool)

(declare-fun inv!15 (TokenValue!6016) Bool)

(assert (=> b!3657302 (= e!2264507 (inv!15 (value!185361 token!511)))))

(assert (= (and d!1074122 c!632108) b!3657299))

(assert (= (and d!1074122 (not c!632108)) b!3657298))

(assert (= (and b!3657298 c!632107) b!3657301))

(assert (= (and b!3657298 (not c!632107)) b!3657300))

(assert (= (and b!3657300 (not res!1484446)) b!3657302))

(declare-fun m!4163197 () Bool)

(assert (=> b!3657299 m!4163197))

(declare-fun m!4163199 () Bool)

(assert (=> b!3657301 m!4163199))

(declare-fun m!4163201 () Bool)

(assert (=> b!3657302 m!4163201))

(assert (=> b!3656685 d!1074122))

(declare-fun d!1074130 () Bool)

(declare-fun res!1484461 () Bool)

(declare-fun e!2264521 () Bool)

(assert (=> d!1074130 (=> res!1484461 e!2264521)))

(assert (=> d!1074130 (= res!1484461 (not ((_ is Cons!38579) rules!3307)))))

(assert (=> d!1074130 (= (sepAndNonSepRulesDisjointChars!1954 rules!3307 rules!3307) e!2264521)))

(declare-fun b!3657323 () Bool)

(declare-fun e!2264522 () Bool)

(assert (=> b!3657323 (= e!2264521 e!2264522)))

(declare-fun res!1484462 () Bool)

(assert (=> b!3657323 (=> (not res!1484462) (not e!2264522))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!889 (Rule!11372 List!38703) Bool)

(assert (=> b!3657323 (= res!1484462 (ruleDisjointCharsFromAllFromOtherType!889 (h!43999 rules!3307) rules!3307))))

(declare-fun b!3657324 () Bool)

(assert (=> b!3657324 (= e!2264522 (sepAndNonSepRulesDisjointChars!1954 rules!3307 (t!298066 rules!3307)))))

(assert (= (and d!1074130 (not res!1484461)) b!3657323))

(assert (= (and b!3657323 res!1484462) b!3657324))

(declare-fun m!4163231 () Bool)

(assert (=> b!3657323 m!4163231))

(declare-fun m!4163233 () Bool)

(assert (=> b!3657324 m!4163233))

(assert (=> b!3656664 d!1074130))

(declare-fun d!1074144 () Bool)

(assert (=> d!1074144 (= (inv!52036 (tag!6558 rule!403)) (= (mod (str.len (value!185360 (tag!6558 rule!403))) 2) 0))))

(assert (=> b!3656663 d!1074144))

(declare-fun d!1074148 () Bool)

(declare-fun res!1484463 () Bool)

(declare-fun e!2264523 () Bool)

(assert (=> d!1074148 (=> (not res!1484463) (not e!2264523))))

(assert (=> d!1074148 (= res!1484463 (semiInverseModEq!2465 (toChars!7937 (transformation!5786 rule!403)) (toValue!8078 (transformation!5786 rule!403))))))

(assert (=> d!1074148 (= (inv!52039 (transformation!5786 rule!403)) e!2264523)))

(declare-fun b!3657325 () Bool)

(assert (=> b!3657325 (= e!2264523 (equivClasses!2364 (toChars!7937 (transformation!5786 rule!403)) (toValue!8078 (transformation!5786 rule!403))))))

(assert (= (and d!1074148 res!1484463) b!3657325))

(declare-fun m!4163235 () Bool)

(assert (=> d!1074148 m!4163235))

(declare-fun m!4163237 () Bool)

(assert (=> b!3657325 m!4163237))

(assert (=> b!3656663 d!1074148))

(declare-fun d!1074150 () Bool)

(assert (=> d!1074150 (= (inv!52036 (tag!6558 (h!43999 rules!3307))) (= (mod (str.len (value!185360 (tag!6558 (h!43999 rules!3307)))) 2) 0))))

(assert (=> b!3656646 d!1074150))

(declare-fun d!1074152 () Bool)

(declare-fun res!1484464 () Bool)

(declare-fun e!2264524 () Bool)

(assert (=> d!1074152 (=> (not res!1484464) (not e!2264524))))

(assert (=> d!1074152 (= res!1484464 (semiInverseModEq!2465 (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toValue!8078 (transformation!5786 (h!43999 rules!3307)))))))

(assert (=> d!1074152 (= (inv!52039 (transformation!5786 (h!43999 rules!3307))) e!2264524)))

(declare-fun b!3657326 () Bool)

(assert (=> b!3657326 (= e!2264524 (equivClasses!2364 (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toValue!8078 (transformation!5786 (h!43999 rules!3307)))))))

(assert (= (and d!1074152 res!1484464) b!3657326))

(declare-fun m!4163241 () Bool)

(assert (=> d!1074152 m!4163241))

(declare-fun m!4163243 () Bool)

(assert (=> b!3657326 m!4163243))

(assert (=> b!3656646 d!1074152))

(declare-fun d!1074154 () Bool)

(declare-fun lt!1270943 () Int)

(assert (=> d!1074154 (= lt!1270943 (size!29471 (list!14304 lt!1270602)))))

(declare-fun size!29473 (Conc!11793) Int)

(assert (=> d!1074154 (= lt!1270943 (size!29473 (c!631978 lt!1270602)))))

(assert (=> d!1074154 (= (size!29469 lt!1270602) lt!1270943)))

(declare-fun bs!572476 () Bool)

(assert (= bs!572476 d!1074154))

(assert (=> bs!572476 m!4162305))

(assert (=> bs!572476 m!4162305))

(declare-fun m!4163245 () Bool)

(assert (=> bs!572476 m!4163245))

(declare-fun m!4163247 () Bool)

(assert (=> bs!572476 m!4163247))

(assert (=> b!3656645 d!1074154))

(declare-fun d!1074156 () Bool)

(declare-fun lt!1270944 () Bool)

(assert (=> d!1074156 (= lt!1270944 (select (content!5570 lt!1270618) lt!1270598))))

(declare-fun e!2264534 () Bool)

(assert (=> d!1074156 (= lt!1270944 e!2264534)))

(declare-fun res!1484466 () Bool)

(assert (=> d!1074156 (=> (not res!1484466) (not e!2264534))))

(assert (=> d!1074156 (= res!1484466 ((_ is Cons!38577) lt!1270618))))

(assert (=> d!1074156 (= (contains!7637 lt!1270618 lt!1270598) lt!1270944)))

(declare-fun b!3657347 () Bool)

(declare-fun e!2264535 () Bool)

(assert (=> b!3657347 (= e!2264534 e!2264535)))

(declare-fun res!1484465 () Bool)

(assert (=> b!3657347 (=> res!1484465 e!2264535)))

(assert (=> b!3657347 (= res!1484465 (= (h!43997 lt!1270618) lt!1270598))))

(declare-fun b!3657348 () Bool)

(assert (=> b!3657348 (= e!2264535 (contains!7637 (t!298064 lt!1270618) lt!1270598))))

(assert (= (and d!1074156 res!1484466) b!3657347))

(assert (= (and b!3657347 (not res!1484465)) b!3657348))

(declare-fun m!4163249 () Bool)

(assert (=> d!1074156 m!4163249))

(declare-fun m!4163251 () Bool)

(assert (=> d!1074156 m!4163251))

(declare-fun m!4163253 () Bool)

(assert (=> b!3657348 m!4163253))

(assert (=> b!3656645 d!1074156))

(declare-fun d!1074158 () Bool)

(assert (=> d!1074158 (= (head!7808 lt!1270583) (h!43997 lt!1270583))))

(assert (=> b!3656645 d!1074158))

(declare-fun d!1074160 () Bool)

(assert (=> d!1074160 (not (contains!7637 (usedCharacters!998 (regex!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270598))))

(declare-fun lt!1270945 () Unit!55748)

(assert (=> d!1074160 (= lt!1270945 (choose!21608 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) rule!403 lt!1270598))))

(assert (=> d!1074160 (rulesInvariant!4772 thiss!23823 rules!3307)))

(assert (=> d!1074160 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!432 thiss!23823 rules!3307 rules!3307 (rule!8592 (_1!22354 lt!1270586)) rule!403 lt!1270598) lt!1270945)))

(declare-fun bs!572477 () Bool)

(assert (= bs!572477 d!1074160))

(assert (=> bs!572477 m!4162337))

(assert (=> bs!572477 m!4162337))

(assert (=> bs!572477 m!4163169))

(declare-fun m!4163255 () Bool)

(assert (=> bs!572477 m!4163255))

(assert (=> bs!572477 m!4162429))

(assert (=> b!3656683 d!1074160))

(declare-fun d!1074162 () Bool)

(assert (=> d!1074162 (= (isDefined!6433 lt!1270588) (not (isEmpty!22877 lt!1270588)))))

(declare-fun bs!572478 () Bool)

(assert (= bs!572478 d!1074162))

(declare-fun m!4163257 () Bool)

(assert (=> bs!572478 m!4163257))

(assert (=> b!3656682 d!1074162))

(declare-fun b!3657354 () Bool)

(declare-fun e!2264542 () Bool)

(declare-fun lt!1270946 () Option!8201)

(assert (=> b!3657354 (= e!2264542 (contains!7638 rules!3307 (rule!8592 (_1!22354 (get!12703 lt!1270946)))))))

(declare-fun b!3657355 () Bool)

(declare-fun res!1484468 () Bool)

(assert (=> b!3657355 (=> (not res!1484468) (not e!2264542))))

(assert (=> b!3657355 (= res!1484468 (= (++!9602 (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270946)))) (_2!22354 (get!12703 lt!1270946))) lt!1270581))))

(declare-fun b!3657356 () Bool)

(declare-fun res!1484467 () Bool)

(assert (=> b!3657356 (=> (not res!1484467) (not e!2264542))))

(assert (=> b!3657356 (= res!1484467 (= (value!185361 (_1!22354 (get!12703 lt!1270946))) (apply!9288 (transformation!5786 (rule!8592 (_1!22354 (get!12703 lt!1270946)))) (seqFromList!4335 (originalCharacters!6500 (_1!22354 (get!12703 lt!1270946)))))))))

(declare-fun d!1074164 () Bool)

(declare-fun e!2264544 () Bool)

(assert (=> d!1074164 e!2264544))

(declare-fun res!1484470 () Bool)

(assert (=> d!1074164 (=> res!1484470 e!2264544)))

(assert (=> d!1074164 (= res!1484470 (isEmpty!22877 lt!1270946))))

(declare-fun e!2264543 () Option!8201)

(assert (=> d!1074164 (= lt!1270946 e!2264543)))

(declare-fun c!632112 () Bool)

(assert (=> d!1074164 (= c!632112 (and ((_ is Cons!38579) rules!3307) ((_ is Nil!38579) (t!298066 rules!3307))))))

(declare-fun lt!1270947 () Unit!55748)

(declare-fun lt!1270948 () Unit!55748)

(assert (=> d!1074164 (= lt!1270947 lt!1270948)))

(assert (=> d!1074164 (isPrefix!3149 lt!1270581 lt!1270581)))

(assert (=> d!1074164 (= lt!1270948 (lemmaIsPrefixRefl!1988 lt!1270581 lt!1270581))))

(assert (=> d!1074164 (rulesValidInductive!2051 thiss!23823 rules!3307)))

(assert (=> d!1074164 (= (maxPrefix!2909 thiss!23823 rules!3307 lt!1270581) lt!1270946)))

(declare-fun b!3657357 () Bool)

(assert (=> b!3657357 (= e!2264544 e!2264542)))

(declare-fun res!1484472 () Bool)

(assert (=> b!3657357 (=> (not res!1484472) (not e!2264542))))

(assert (=> b!3657357 (= res!1484472 (isDefined!6433 lt!1270946))))

(declare-fun b!3657358 () Bool)

(declare-fun lt!1270949 () Option!8201)

(declare-fun lt!1270950 () Option!8201)

(assert (=> b!3657358 (= e!2264543 (ite (and ((_ is None!8200) lt!1270949) ((_ is None!8200) lt!1270950)) None!8200 (ite ((_ is None!8200) lt!1270950) lt!1270949 (ite ((_ is None!8200) lt!1270949) lt!1270950 (ite (>= (size!29470 (_1!22354 (v!38076 lt!1270949))) (size!29470 (_1!22354 (v!38076 lt!1270950)))) lt!1270949 lt!1270950)))))))

(declare-fun call!264464 () Option!8201)

(assert (=> b!3657358 (= lt!1270949 call!264464)))

(assert (=> b!3657358 (= lt!1270950 (maxPrefix!2909 thiss!23823 (t!298066 rules!3307) lt!1270581))))

(declare-fun b!3657359 () Bool)

(assert (=> b!3657359 (= e!2264543 call!264464)))

(declare-fun b!3657360 () Bool)

(declare-fun res!1484471 () Bool)

(assert (=> b!3657360 (=> (not res!1484471) (not e!2264542))))

(assert (=> b!3657360 (= res!1484471 (matchR!5114 (regex!5786 (rule!8592 (_1!22354 (get!12703 lt!1270946)))) (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270946))))))))

(declare-fun b!3657361 () Bool)

(declare-fun res!1484469 () Bool)

(assert (=> b!3657361 (=> (not res!1484469) (not e!2264542))))

(assert (=> b!3657361 (= res!1484469 (< (size!29471 (_2!22354 (get!12703 lt!1270946))) (size!29471 lt!1270581)))))

(declare-fun bm!264459 () Bool)

(assert (=> bm!264459 (= call!264464 (maxPrefixOneRule!2047 thiss!23823 (h!43999 rules!3307) lt!1270581))))

(declare-fun b!3657362 () Bool)

(declare-fun res!1484473 () Bool)

(assert (=> b!3657362 (=> (not res!1484473) (not e!2264542))))

(assert (=> b!3657362 (= res!1484473 (= (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270946)))) (originalCharacters!6500 (_1!22354 (get!12703 lt!1270946)))))))

(assert (= (and d!1074164 c!632112) b!3657359))

(assert (= (and d!1074164 (not c!632112)) b!3657358))

(assert (= (or b!3657359 b!3657358) bm!264459))

(assert (= (and d!1074164 (not res!1484470)) b!3657357))

(assert (= (and b!3657357 res!1484472) b!3657362))

(assert (= (and b!3657362 res!1484473) b!3657361))

(assert (= (and b!3657361 res!1484469) b!3657355))

(assert (= (and b!3657355 res!1484468) b!3657356))

(assert (= (and b!3657356 res!1484467) b!3657360))

(assert (= (and b!3657360 res!1484471) b!3657354))

(declare-fun m!4163263 () Bool)

(assert (=> b!3657362 m!4163263))

(declare-fun m!4163265 () Bool)

(assert (=> b!3657362 m!4163265))

(assert (=> b!3657362 m!4163265))

(declare-fun m!4163267 () Bool)

(assert (=> b!3657362 m!4163267))

(assert (=> b!3657356 m!4163263))

(declare-fun m!4163269 () Bool)

(assert (=> b!3657356 m!4163269))

(assert (=> b!3657356 m!4163269))

(declare-fun m!4163271 () Bool)

(assert (=> b!3657356 m!4163271))

(assert (=> b!3657361 m!4163263))

(declare-fun m!4163273 () Bool)

(assert (=> b!3657361 m!4163273))

(assert (=> b!3657361 m!4162291))

(declare-fun m!4163275 () Bool)

(assert (=> b!3657357 m!4163275))

(declare-fun m!4163277 () Bool)

(assert (=> d!1074164 m!4163277))

(declare-fun m!4163279 () Bool)

(assert (=> d!1074164 m!4163279))

(declare-fun m!4163281 () Bool)

(assert (=> d!1074164 m!4163281))

(assert (=> d!1074164 m!4163055))

(assert (=> b!3657355 m!4163263))

(assert (=> b!3657355 m!4163265))

(assert (=> b!3657355 m!4163265))

(assert (=> b!3657355 m!4163267))

(assert (=> b!3657355 m!4163267))

(declare-fun m!4163283 () Bool)

(assert (=> b!3657355 m!4163283))

(assert (=> b!3657360 m!4163263))

(assert (=> b!3657360 m!4163265))

(assert (=> b!3657360 m!4163265))

(assert (=> b!3657360 m!4163267))

(assert (=> b!3657360 m!4163267))

(declare-fun m!4163285 () Bool)

(assert (=> b!3657360 m!4163285))

(declare-fun m!4163287 () Bool)

(assert (=> b!3657358 m!4163287))

(declare-fun m!4163289 () Bool)

(assert (=> bm!264459 m!4163289))

(assert (=> b!3657354 m!4163263))

(declare-fun m!4163291 () Bool)

(assert (=> b!3657354 m!4163291))

(assert (=> b!3656682 d!1074164))

(declare-fun d!1074166 () Bool)

(assert (=> d!1074166 (= (list!14304 lt!1270602) (list!14307 (c!631978 lt!1270602)))))

(declare-fun bs!572479 () Bool)

(assert (= bs!572479 d!1074166))

(declare-fun m!4163293 () Bool)

(assert (=> bs!572479 m!4163293))

(assert (=> b!3656682 d!1074166))

(declare-fun d!1074168 () Bool)

(declare-fun lt!1270951 () BalanceConc!23200)

(assert (=> d!1074168 (= (list!14304 lt!1270951) (originalCharacters!6500 token!511))))

(assert (=> d!1074168 (= lt!1270951 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (value!185361 token!511)))))

(assert (=> d!1074168 (= (charsOf!3800 token!511) lt!1270951)))

(declare-fun b_lambda!108467 () Bool)

(assert (=> (not b_lambda!108467) (not d!1074168)))

(declare-fun t!298162 () Bool)

(declare-fun tb!211215 () Bool)

(assert (=> (and b!3656681 (= (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toChars!7937 (transformation!5786 (rule!8592 token!511)))) t!298162) tb!211215))

(declare-fun b!3657381 () Bool)

(declare-fun e!2264552 () Bool)

(declare-fun tp!1114367 () Bool)

(assert (=> b!3657381 (= e!2264552 (and (inv!52043 (c!631978 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (value!185361 token!511)))) tp!1114367))))

(declare-fun result!257170 () Bool)

(assert (=> tb!211215 (= result!257170 (and (inv!52044 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (value!185361 token!511))) e!2264552))))

(assert (= tb!211215 b!3657381))

(declare-fun m!4163295 () Bool)

(assert (=> b!3657381 m!4163295))

(declare-fun m!4163297 () Bool)

(assert (=> tb!211215 m!4163297))

(assert (=> d!1074168 t!298162))

(declare-fun b_and!271111 () Bool)

(assert (= b_and!271043 (and (=> t!298162 result!257170) b_and!271111)))

(declare-fun t!298164 () Bool)

(declare-fun tb!211217 () Bool)

(assert (=> (and b!3656678 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 token!511)))) t!298164) tb!211217))

(declare-fun result!257172 () Bool)

(assert (= result!257172 result!257170))

(assert (=> d!1074168 t!298164))

(declare-fun b_and!271113 () Bool)

(assert (= b_and!271045 (and (=> t!298164 result!257172) b_and!271113)))

(declare-fun tb!211219 () Bool)

(declare-fun t!298166 () Bool)

(assert (=> (and b!3656680 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 token!511)))) t!298166) tb!211219))

(declare-fun result!257174 () Bool)

(assert (= result!257174 result!257170))

(assert (=> d!1074168 t!298166))

(declare-fun b_and!271115 () Bool)

(assert (= b_and!271047 (and (=> t!298166 result!257174) b_and!271115)))

(declare-fun t!298168 () Bool)

(declare-fun tb!211221 () Bool)

(assert (=> (and b!3656649 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 token!511)))) t!298168) tb!211221))

(declare-fun result!257176 () Bool)

(assert (= result!257176 result!257170))

(assert (=> d!1074168 t!298168))

(declare-fun b_and!271117 () Bool)

(assert (= b_and!271049 (and (=> t!298168 result!257176) b_and!271117)))

(declare-fun m!4163299 () Bool)

(assert (=> d!1074168 m!4163299))

(declare-fun m!4163301 () Bool)

(assert (=> d!1074168 m!4163301))

(assert (=> b!3656682 d!1074168))

(declare-fun d!1074170 () Bool)

(declare-fun lt!1270952 () Bool)

(assert (=> d!1074170 (= lt!1270952 (select (content!5570 call!264405) lt!1270598))))

(declare-fun e!2264553 () Bool)

(assert (=> d!1074170 (= lt!1270952 e!2264553)))

(declare-fun res!1484475 () Bool)

(assert (=> d!1074170 (=> (not res!1484475) (not e!2264553))))

(assert (=> d!1074170 (= res!1484475 ((_ is Cons!38577) call!264405))))

(assert (=> d!1074170 (= (contains!7637 call!264405 lt!1270598) lt!1270952)))

(declare-fun b!3657382 () Bool)

(declare-fun e!2264554 () Bool)

(assert (=> b!3657382 (= e!2264553 e!2264554)))

(declare-fun res!1484474 () Bool)

(assert (=> b!3657382 (=> res!1484474 e!2264554)))

(assert (=> b!3657382 (= res!1484474 (= (h!43997 call!264405) lt!1270598))))

(declare-fun b!3657383 () Bool)

(assert (=> b!3657383 (= e!2264554 (contains!7637 (t!298064 call!264405) lt!1270598))))

(assert (= (and d!1074170 res!1484475) b!3657382))

(assert (= (and b!3657382 (not res!1484474)) b!3657383))

(declare-fun m!4163303 () Bool)

(assert (=> d!1074170 m!4163303))

(declare-fun m!4163305 () Bool)

(assert (=> d!1074170 m!4163305))

(declare-fun m!4163307 () Bool)

(assert (=> b!3657383 m!4163307))

(assert (=> bm!264403 d!1074170))

(assert (=> bm!264402 d!1074120))

(declare-fun d!1074172 () Bool)

(declare-fun lt!1270953 () Bool)

(assert (=> d!1074172 (= lt!1270953 (select (content!5571 rules!3307) (rule!8592 (_1!22354 lt!1270586))))))

(declare-fun e!2264556 () Bool)

(assert (=> d!1074172 (= lt!1270953 e!2264556)))

(declare-fun res!1484477 () Bool)

(assert (=> d!1074172 (=> (not res!1484477) (not e!2264556))))

(assert (=> d!1074172 (= res!1484477 ((_ is Cons!38579) rules!3307))))

(assert (=> d!1074172 (= (contains!7638 rules!3307 (rule!8592 (_1!22354 lt!1270586))) lt!1270953)))

(declare-fun b!3657384 () Bool)

(declare-fun e!2264555 () Bool)

(assert (=> b!3657384 (= e!2264556 e!2264555)))

(declare-fun res!1484476 () Bool)

(assert (=> b!3657384 (=> res!1484476 e!2264555)))

(assert (=> b!3657384 (= res!1484476 (= (h!43999 rules!3307) (rule!8592 (_1!22354 lt!1270586))))))

(declare-fun b!3657385 () Bool)

(assert (=> b!3657385 (= e!2264555 (contains!7638 (t!298066 rules!3307) (rule!8592 (_1!22354 lt!1270586))))))

(assert (= (and d!1074172 res!1484477) b!3657384))

(assert (= (and b!3657384 (not res!1484476)) b!3657385))

(assert (=> d!1074172 m!4163099))

(declare-fun m!4163309 () Bool)

(assert (=> d!1074172 m!4163309))

(declare-fun m!4163311 () Bool)

(assert (=> b!3657385 m!4163311))

(assert (=> b!3656662 d!1074172))

(declare-fun d!1074174 () Bool)

(declare-fun lt!1270954 () Int)

(assert (=> d!1074174 (>= lt!1270954 0)))

(declare-fun e!2264557 () Int)

(assert (=> d!1074174 (= lt!1270954 e!2264557)))

(declare-fun c!632113 () Bool)

(assert (=> d!1074174 (= c!632113 ((_ is Nil!38577) lt!1270583))))

(assert (=> d!1074174 (= (size!29471 lt!1270583) lt!1270954)))

(declare-fun b!3657386 () Bool)

(assert (=> b!3657386 (= e!2264557 0)))

(declare-fun b!3657387 () Bool)

(assert (=> b!3657387 (= e!2264557 (+ 1 (size!29471 (t!298064 lt!1270583))))))

(assert (= (and d!1074174 c!632113) b!3657386))

(assert (= (and d!1074174 (not c!632113)) b!3657387))

(declare-fun m!4163313 () Bool)

(assert (=> b!3657387 m!4163313))

(assert (=> b!3656661 d!1074174))

(declare-fun b!3657406 () Bool)

(declare-fun res!1484495 () Bool)

(declare-fun e!2264566 () Bool)

(assert (=> b!3657406 (=> (not res!1484495) (not e!2264566))))

(declare-fun lt!1270969 () Option!8201)

(assert (=> b!3657406 (= res!1484495 (= (rule!8592 (_1!22354 (get!12703 lt!1270969))) (rule!8592 (_1!22354 lt!1270586))))))

(declare-fun b!3657407 () Bool)

(declare-fun e!2264569 () Option!8201)

(declare-datatypes ((tuple2!38448 0))(
  ( (tuple2!38449 (_1!22358 List!38701) (_2!22358 List!38701)) )
))
(declare-fun lt!1270968 () tuple2!38448)

(assert (=> b!3657407 (= e!2264569 (Some!8200 (tuple2!38441 (Token!10939 (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) (seqFromList!4335 (_1!22358 lt!1270968))) (rule!8592 (_1!22354 lt!1270586)) (size!29469 (seqFromList!4335 (_1!22358 lt!1270968))) (_1!22358 lt!1270968)) (_2!22358 lt!1270968))))))

(declare-fun lt!1270965 () Unit!55748)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1034 (Regex!10545 List!38701) Unit!55748)

(assert (=> b!3657407 (= lt!1270965 (longestMatchIsAcceptedByMatchOrIsEmpty!1034 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270579))))

(declare-fun res!1484492 () Bool)

(declare-fun findLongestMatchInner!1061 (Regex!10545 List!38701 Int List!38701 List!38701 Int) tuple2!38448)

(assert (=> b!3657407 (= res!1484492 (isEmpty!22873 (_1!22358 (findLongestMatchInner!1061 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) Nil!38577 (size!29471 Nil!38577) lt!1270579 lt!1270579 (size!29471 lt!1270579)))))))

(declare-fun e!2264568 () Bool)

(assert (=> b!3657407 (=> res!1484492 e!2264568)))

(assert (=> b!3657407 e!2264568))

(declare-fun lt!1270967 () Unit!55748)

(assert (=> b!3657407 (= lt!1270967 lt!1270965)))

(declare-fun lt!1270966 () Unit!55748)

(assert (=> b!3657407 (= lt!1270966 (lemmaSemiInverse!1535 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) (seqFromList!4335 (_1!22358 lt!1270968))))))

(declare-fun b!3657408 () Bool)

(declare-fun res!1484496 () Bool)

(assert (=> b!3657408 (=> (not res!1484496) (not e!2264566))))

(assert (=> b!3657408 (= res!1484496 (< (size!29471 (_2!22354 (get!12703 lt!1270969))) (size!29471 lt!1270579)))))

(declare-fun d!1074176 () Bool)

(declare-fun e!2264567 () Bool)

(assert (=> d!1074176 e!2264567))

(declare-fun res!1484494 () Bool)

(assert (=> d!1074176 (=> res!1484494 e!2264567)))

(assert (=> d!1074176 (= res!1484494 (isEmpty!22877 lt!1270969))))

(assert (=> d!1074176 (= lt!1270969 e!2264569)))

(declare-fun c!632116 () Bool)

(assert (=> d!1074176 (= c!632116 (isEmpty!22873 (_1!22358 lt!1270968)))))

(declare-fun findLongestMatch!976 (Regex!10545 List!38701) tuple2!38448)

(assert (=> d!1074176 (= lt!1270968 (findLongestMatch!976 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270579))))

(assert (=> d!1074176 (ruleValid!2050 thiss!23823 (rule!8592 (_1!22354 lt!1270586)))))

(assert (=> d!1074176 (= (maxPrefixOneRule!2047 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) lt!1270579) lt!1270969)))

(declare-fun b!3657409 () Bool)

(assert (=> b!3657409 (= e!2264566 (= (size!29470 (_1!22354 (get!12703 lt!1270969))) (size!29471 (originalCharacters!6500 (_1!22354 (get!12703 lt!1270969))))))))

(declare-fun b!3657410 () Bool)

(assert (=> b!3657410 (= e!2264567 e!2264566)))

(declare-fun res!1484493 () Bool)

(assert (=> b!3657410 (=> (not res!1484493) (not e!2264566))))

(assert (=> b!3657410 (= res!1484493 (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270969))))))))

(declare-fun b!3657411 () Bool)

(declare-fun res!1484498 () Bool)

(assert (=> b!3657411 (=> (not res!1484498) (not e!2264566))))

(assert (=> b!3657411 (= res!1484498 (= (value!185361 (_1!22354 (get!12703 lt!1270969))) (apply!9288 (transformation!5786 (rule!8592 (_1!22354 (get!12703 lt!1270969)))) (seqFromList!4335 (originalCharacters!6500 (_1!22354 (get!12703 lt!1270969)))))))))

(declare-fun b!3657412 () Bool)

(assert (=> b!3657412 (= e!2264569 None!8200)))

(declare-fun b!3657413 () Bool)

(assert (=> b!3657413 (= e!2264568 (matchR!5114 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) (_1!22358 (findLongestMatchInner!1061 (regex!5786 (rule!8592 (_1!22354 lt!1270586))) Nil!38577 (size!29471 Nil!38577) lt!1270579 lt!1270579 (size!29471 lt!1270579)))))))

(declare-fun b!3657414 () Bool)

(declare-fun res!1484497 () Bool)

(assert (=> b!3657414 (=> (not res!1484497) (not e!2264566))))

(assert (=> b!3657414 (= res!1484497 (= (++!9602 (list!14304 (charsOf!3800 (_1!22354 (get!12703 lt!1270969)))) (_2!22354 (get!12703 lt!1270969))) lt!1270579))))

(assert (= (and d!1074176 c!632116) b!3657412))

(assert (= (and d!1074176 (not c!632116)) b!3657407))

(assert (= (and b!3657407 (not res!1484492)) b!3657413))

(assert (= (and d!1074176 (not res!1484494)) b!3657410))

(assert (= (and b!3657410 res!1484493) b!3657414))

(assert (= (and b!3657414 res!1484497) b!3657408))

(assert (= (and b!3657408 res!1484496) b!3657406))

(assert (= (and b!3657406 res!1484495) b!3657411))

(assert (= (and b!3657411 res!1484498) b!3657409))

(declare-fun m!4163315 () Bool)

(assert (=> d!1074176 m!4163315))

(declare-fun m!4163317 () Bool)

(assert (=> d!1074176 m!4163317))

(declare-fun m!4163319 () Bool)

(assert (=> d!1074176 m!4163319))

(assert (=> d!1074176 m!4162431))

(declare-fun m!4163321 () Bool)

(assert (=> b!3657407 m!4163321))

(declare-fun m!4163323 () Bool)

(assert (=> b!3657407 m!4163323))

(assert (=> b!3657407 m!4163321))

(declare-fun m!4163325 () Bool)

(assert (=> b!3657407 m!4163325))

(declare-fun m!4163327 () Bool)

(assert (=> b!3657407 m!4163327))

(declare-fun m!4163329 () Bool)

(assert (=> b!3657407 m!4163329))

(assert (=> b!3657407 m!4162541))

(declare-fun m!4163331 () Bool)

(assert (=> b!3657407 m!4163331))

(assert (=> b!3657407 m!4163329))

(declare-fun m!4163333 () Bool)

(assert (=> b!3657407 m!4163333))

(assert (=> b!3657407 m!4163321))

(declare-fun m!4163335 () Bool)

(assert (=> b!3657407 m!4163335))

(assert (=> b!3657407 m!4163321))

(assert (=> b!3657407 m!4162541))

(declare-fun m!4163337 () Bool)

(assert (=> b!3657408 m!4163337))

(declare-fun m!4163339 () Bool)

(assert (=> b!3657408 m!4163339))

(assert (=> b!3657408 m!4162541))

(assert (=> b!3657413 m!4163329))

(assert (=> b!3657413 m!4162541))

(assert (=> b!3657413 m!4163329))

(assert (=> b!3657413 m!4162541))

(assert (=> b!3657413 m!4163331))

(declare-fun m!4163341 () Bool)

(assert (=> b!3657413 m!4163341))

(assert (=> b!3657410 m!4163337))

(declare-fun m!4163343 () Bool)

(assert (=> b!3657410 m!4163343))

(assert (=> b!3657410 m!4163343))

(declare-fun m!4163345 () Bool)

(assert (=> b!3657410 m!4163345))

(assert (=> b!3657410 m!4163345))

(declare-fun m!4163347 () Bool)

(assert (=> b!3657410 m!4163347))

(assert (=> b!3657414 m!4163337))

(assert (=> b!3657414 m!4163343))

(assert (=> b!3657414 m!4163343))

(assert (=> b!3657414 m!4163345))

(assert (=> b!3657414 m!4163345))

(declare-fun m!4163349 () Bool)

(assert (=> b!3657414 m!4163349))

(assert (=> b!3657406 m!4163337))

(assert (=> b!3657411 m!4163337))

(declare-fun m!4163351 () Bool)

(assert (=> b!3657411 m!4163351))

(assert (=> b!3657411 m!4163351))

(declare-fun m!4163353 () Bool)

(assert (=> b!3657411 m!4163353))

(assert (=> b!3657409 m!4163337))

(declare-fun m!4163355 () Bool)

(assert (=> b!3657409 m!4163355))

(assert (=> b!3656661 d!1074176))

(declare-fun d!1074178 () Bool)

(assert (=> d!1074178 (= (maxPrefixOneRule!2047 thiss!23823 (rule!8592 (_1!22354 lt!1270586)) lt!1270579) (Some!8200 (tuple2!38441 (Token!10939 (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) (seqFromList!4335 lt!1270583)) (rule!8592 (_1!22354 lt!1270586)) (size!29471 lt!1270583) lt!1270583) (_2!22354 lt!1270586))))))

(declare-fun lt!1270972 () Unit!55748)

(declare-fun choose!21610 (LexerInterface!5375 List!38703 List!38701 List!38701 List!38701 Rule!11372) Unit!55748)

(assert (=> d!1074178 (= lt!1270972 (choose!21610 thiss!23823 rules!3307 lt!1270583 lt!1270579 (_2!22354 lt!1270586) (rule!8592 (_1!22354 lt!1270586))))))

(assert (=> d!1074178 (not (isEmpty!22872 rules!3307))))

(assert (=> d!1074178 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1103 thiss!23823 rules!3307 lt!1270583 lt!1270579 (_2!22354 lt!1270586) (rule!8592 (_1!22354 lt!1270586))) lt!1270972)))

(declare-fun bs!572480 () Bool)

(assert (= bs!572480 d!1074178))

(declare-fun m!4163357 () Bool)

(assert (=> bs!572480 m!4163357))

(assert (=> bs!572480 m!4162367))

(assert (=> bs!572480 m!4162373))

(assert (=> bs!572480 m!4162363))

(assert (=> bs!572480 m!4162297))

(assert (=> bs!572480 m!4162373))

(declare-fun m!4163359 () Bool)

(assert (=> bs!572480 m!4163359))

(assert (=> b!3656661 d!1074178))

(declare-fun d!1074180 () Bool)

(declare-fun fromListB!2001 (List!38701) BalanceConc!23200)

(assert (=> d!1074180 (= (seqFromList!4335 lt!1270583) (fromListB!2001 lt!1270583))))

(declare-fun bs!572481 () Bool)

(assert (= bs!572481 d!1074180))

(declare-fun m!4163361 () Bool)

(assert (=> bs!572481 m!4163361))

(assert (=> b!3656661 d!1074180))

(declare-fun d!1074182 () Bool)

(assert (=> d!1074182 (= (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270591) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270591))))

(declare-fun b_lambda!108469 () Bool)

(assert (=> (not b_lambda!108469) (not d!1074182)))

(assert (=> d!1074182 t!298100))

(declare-fun b_and!271119 () Bool)

(assert (= b_and!271035 (and (=> t!298100 result!257100) b_and!271119)))

(assert (=> d!1074182 t!298102))

(declare-fun b_and!271121 () Bool)

(assert (= b_and!271037 (and (=> t!298102 result!257104) b_and!271121)))

(assert (=> d!1074182 t!298104))

(declare-fun b_and!271123 () Bool)

(assert (= b_and!271039 (and (=> t!298104 result!257106) b_and!271123)))

(assert (=> d!1074182 t!298106))

(declare-fun b_and!271125 () Bool)

(assert (= b_and!271041 (and (=> t!298106 result!257108) b_and!271125)))

(assert (=> d!1074182 m!4162863))

(assert (=> b!3656661 d!1074182))

(declare-fun d!1074184 () Bool)

(assert (=> d!1074184 (= (_2!22354 lt!1270586) lt!1270590)))

(declare-fun lt!1270975 () Unit!55748)

(declare-fun choose!21611 (List!38701 List!38701 List!38701 List!38701 List!38701) Unit!55748)

(assert (=> d!1074184 (= lt!1270975 (choose!21611 lt!1270583 (_2!22354 lt!1270586) lt!1270583 lt!1270590 lt!1270579))))

(assert (=> d!1074184 (isPrefix!3149 lt!1270583 lt!1270579)))

(assert (=> d!1074184 (= (lemmaSamePrefixThenSameSuffix!1476 lt!1270583 (_2!22354 lt!1270586) lt!1270583 lt!1270590 lt!1270579) lt!1270975)))

(declare-fun bs!572482 () Bool)

(assert (= bs!572482 d!1074184))

(declare-fun m!4163363 () Bool)

(assert (=> bs!572482 m!4163363))

(assert (=> bs!572482 m!4162423))

(assert (=> b!3656661 d!1074184))

(declare-fun d!1074186 () Bool)

(declare-fun lt!1270978 () List!38701)

(assert (=> d!1074186 (= (++!9602 lt!1270583 lt!1270978) lt!1270579)))

(declare-fun e!2264572 () List!38701)

(assert (=> d!1074186 (= lt!1270978 e!2264572)))

(declare-fun c!632119 () Bool)

(assert (=> d!1074186 (= c!632119 ((_ is Cons!38577) lt!1270583))))

(assert (=> d!1074186 (>= (size!29471 lt!1270579) (size!29471 lt!1270583))))

(assert (=> d!1074186 (= (getSuffix!1702 lt!1270579 lt!1270583) lt!1270978)))

(declare-fun b!3657419 () Bool)

(assert (=> b!3657419 (= e!2264572 (getSuffix!1702 (tail!5663 lt!1270579) (t!298064 lt!1270583)))))

(declare-fun b!3657420 () Bool)

(assert (=> b!3657420 (= e!2264572 lt!1270579)))

(assert (= (and d!1074186 c!632119) b!3657419))

(assert (= (and d!1074186 (not c!632119)) b!3657420))

(declare-fun m!4163365 () Bool)

(assert (=> d!1074186 m!4163365))

(assert (=> d!1074186 m!4162541))

(assert (=> d!1074186 m!4162363))

(assert (=> b!3657419 m!4162543))

(assert (=> b!3657419 m!4162543))

(declare-fun m!4163367 () Bool)

(assert (=> b!3657419 m!4163367))

(assert (=> b!3656661 d!1074186))

(declare-fun d!1074188 () Bool)

(assert (=> d!1074188 (= (isEmpty!22873 (_2!22354 lt!1270614)) ((_ is Nil!38577) (_2!22354 lt!1270614)))))

(assert (=> b!3656659 d!1074188))

(declare-fun d!1074190 () Bool)

(declare-fun lt!1270979 () Bool)

(assert (=> d!1074190 (= lt!1270979 (select (content!5571 rules!3307) rule!403))))

(declare-fun e!2264574 () Bool)

(assert (=> d!1074190 (= lt!1270979 e!2264574)))

(declare-fun res!1484500 () Bool)

(assert (=> d!1074190 (=> (not res!1484500) (not e!2264574))))

(assert (=> d!1074190 (= res!1484500 ((_ is Cons!38579) rules!3307))))

(assert (=> d!1074190 (= (contains!7638 rules!3307 rule!403) lt!1270979)))

(declare-fun b!3657421 () Bool)

(declare-fun e!2264573 () Bool)

(assert (=> b!3657421 (= e!2264574 e!2264573)))

(declare-fun res!1484499 () Bool)

(assert (=> b!3657421 (=> res!1484499 e!2264573)))

(assert (=> b!3657421 (= res!1484499 (= (h!43999 rules!3307) rule!403))))

(declare-fun b!3657422 () Bool)

(assert (=> b!3657422 (= e!2264573 (contains!7638 (t!298066 rules!3307) rule!403))))

(assert (= (and d!1074190 res!1484500) b!3657421))

(assert (= (and b!3657421 (not res!1484499)) b!3657422))

(assert (=> d!1074190 m!4163099))

(declare-fun m!4163369 () Bool)

(assert (=> d!1074190 m!4163369))

(declare-fun m!4163371 () Bool)

(assert (=> b!3657422 m!4163371))

(assert (=> b!3656677 d!1074190))

(declare-fun d!1074192 () Bool)

(assert (=> d!1074192 (= (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586))) (fromListB!2001 (originalCharacters!6500 (_1!22354 lt!1270586))))))

(declare-fun bs!572483 () Bool)

(assert (= bs!572483 d!1074192))

(declare-fun m!4163373 () Bool)

(assert (=> bs!572483 m!4163373))

(assert (=> b!3656676 d!1074192))

(declare-fun d!1074194 () Bool)

(declare-fun lt!1270980 () Int)

(assert (=> d!1074194 (= lt!1270980 (size!29471 (list!14304 lt!1270621)))))

(assert (=> d!1074194 (= lt!1270980 (size!29473 (c!631978 lt!1270621)))))

(assert (=> d!1074194 (= (size!29469 lt!1270621) lt!1270980)))

(declare-fun bs!572484 () Bool)

(assert (= bs!572484 d!1074194))

(assert (=> bs!572484 m!4162409))

(assert (=> bs!572484 m!4162409))

(declare-fun m!4163375 () Bool)

(assert (=> bs!572484 m!4163375))

(declare-fun m!4163377 () Bool)

(assert (=> bs!572484 m!4163377))

(assert (=> b!3656676 d!1074194))

(declare-fun d!1074196 () Bool)

(assert (=> d!1074196 (= (size!29470 (_1!22354 lt!1270586)) (size!29471 (originalCharacters!6500 (_1!22354 lt!1270586))))))

(declare-fun Unit!55765 () Unit!55748)

(assert (=> d!1074196 (= (lemmaCharactersSize!831 (_1!22354 lt!1270586)) Unit!55765)))

(declare-fun bs!572485 () Bool)

(assert (= bs!572485 d!1074196))

(declare-fun m!4163379 () Bool)

(assert (=> bs!572485 m!4163379))

(assert (=> b!3656676 d!1074196))

(declare-fun bs!572486 () Bool)

(declare-fun d!1074198 () Bool)

(assert (= bs!572486 (and d!1074198 d!1073930)))

(declare-fun lambda!124536 () Int)

(assert (=> bs!572486 (= lambda!124536 lambda!124528)))

(declare-fun b!3657423 () Bool)

(declare-fun e!2264575 () Bool)

(assert (=> b!3657423 (= e!2264575 true)))

(assert (=> d!1074198 e!2264575))

(assert (= d!1074198 b!3657423))

(assert (=> b!3657423 (< (dynLambda!16831 order!21267 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16832 order!21269 lambda!124536))))

(assert (=> b!3657423 (< (dynLambda!16833 order!21271 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16832 order!21269 lambda!124536))))

(assert (=> d!1074198 (= (list!14304 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621))) (list!14304 lt!1270621))))

(declare-fun lt!1270981 () Unit!55748)

(assert (=> d!1074198 (= lt!1270981 (ForallOf!721 lambda!124536 lt!1270621))))

(assert (=> d!1074198 (= (lemmaSemiInverse!1535 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621) lt!1270981)))

(declare-fun b_lambda!108471 () Bool)

(assert (=> (not b_lambda!108471) (not d!1074198)))

(declare-fun t!298170 () Bool)

(declare-fun tb!211223 () Bool)

(assert (=> (and b!3656681 (= (toChars!7937 (transformation!5786 (rule!8592 token!511))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298170) tb!211223))

(declare-fun tp!1114368 () Bool)

(declare-fun e!2264576 () Bool)

(declare-fun b!3657424 () Bool)

(assert (=> b!3657424 (= e!2264576 (and (inv!52043 (c!631978 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621)))) tp!1114368))))

(declare-fun result!257178 () Bool)

(assert (=> tb!211223 (= result!257178 (and (inv!52044 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621))) e!2264576))))

(assert (= tb!211223 b!3657424))

(declare-fun m!4163381 () Bool)

(assert (=> b!3657424 m!4163381))

(declare-fun m!4163383 () Bool)

(assert (=> tb!211223 m!4163383))

(assert (=> d!1074198 t!298170))

(declare-fun b_and!271127 () Bool)

(assert (= b_and!271111 (and (=> t!298170 result!257178) b_and!271127)))

(declare-fun t!298172 () Bool)

(declare-fun tb!211225 () Bool)

(assert (=> (and b!3656678 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298172) tb!211225))

(declare-fun result!257180 () Bool)

(assert (= result!257180 result!257178))

(assert (=> d!1074198 t!298172))

(declare-fun b_and!271129 () Bool)

(assert (= b_and!271113 (and (=> t!298172 result!257180) b_and!271129)))

(declare-fun tb!211227 () Bool)

(declare-fun t!298174 () Bool)

(assert (=> (and b!3656680 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298174) tb!211227))

(declare-fun result!257182 () Bool)

(assert (= result!257182 result!257178))

(assert (=> d!1074198 t!298174))

(declare-fun b_and!271131 () Bool)

(assert (= b_and!271115 (and (=> t!298174 result!257182) b_and!271131)))

(declare-fun tb!211229 () Bool)

(declare-fun t!298176 () Bool)

(assert (=> (and b!3656649 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298176) tb!211229))

(declare-fun result!257184 () Bool)

(assert (= result!257184 result!257178))

(assert (=> d!1074198 t!298176))

(declare-fun b_and!271133 () Bool)

(assert (= b_and!271117 (and (=> t!298176 result!257184) b_and!271133)))

(declare-fun b_lambda!108473 () Bool)

(assert (=> (not b_lambda!108473) (not d!1074198)))

(declare-fun t!298178 () Bool)

(declare-fun tb!211231 () Bool)

(assert (=> (and b!3656681 (= (toValue!8078 (transformation!5786 (rule!8592 token!511))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298178) tb!211231))

(declare-fun result!257186 () Bool)

(assert (=> tb!211231 (= result!257186 (inv!21 (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621)))))

(declare-fun m!4163385 () Bool)

(assert (=> tb!211231 m!4163385))

(assert (=> d!1074198 t!298178))

(declare-fun b_and!271135 () Bool)

(assert (= b_and!271119 (and (=> t!298178 result!257186) b_and!271135)))

(declare-fun t!298180 () Bool)

(declare-fun tb!211233 () Bool)

(assert (=> (and b!3656678 (= (toValue!8078 (transformation!5786 rule!403)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298180) tb!211233))

(declare-fun result!257188 () Bool)

(assert (= result!257188 result!257186))

(assert (=> d!1074198 t!298180))

(declare-fun b_and!271137 () Bool)

(assert (= b_and!271121 (and (=> t!298180 result!257188) b_and!271137)))

(declare-fun tb!211235 () Bool)

(declare-fun t!298182 () Bool)

(assert (=> (and b!3656680 (= (toValue!8078 (transformation!5786 (h!43999 rules!3307))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298182) tb!211235))

(declare-fun result!257190 () Bool)

(assert (= result!257190 result!257186))

(assert (=> d!1074198 t!298182))

(declare-fun b_and!271139 () Bool)

(assert (= b_and!271123 (and (=> t!298182 result!257190) b_and!271139)))

(declare-fun tb!211237 () Bool)

(declare-fun t!298184 () Bool)

(assert (=> (and b!3656649 (= (toValue!8078 (transformation!5786 anOtherTypeRule!33)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298184) tb!211237))

(declare-fun result!257192 () Bool)

(assert (= result!257192 result!257186))

(assert (=> d!1074198 t!298184))

(declare-fun b_and!271141 () Bool)

(assert (= b_and!271125 (and (=> t!298184 result!257192) b_and!271141)))

(declare-fun m!4163387 () Bool)

(assert (=> d!1074198 m!4163387))

(declare-fun m!4163389 () Bool)

(assert (=> d!1074198 m!4163389))

(declare-fun m!4163391 () Bool)

(assert (=> d!1074198 m!4163391))

(assert (=> d!1074198 m!4162409))

(assert (=> d!1074198 m!4163391))

(declare-fun m!4163393 () Bool)

(assert (=> d!1074198 m!4163393))

(assert (=> d!1074198 m!4163389))

(assert (=> b!3656676 d!1074198))

(declare-fun b!3657431 () Bool)

(declare-fun e!2264582 () Bool)

(assert (=> b!3657431 (= e!2264582 true)))

(declare-fun d!1074200 () Bool)

(assert (=> d!1074200 e!2264582))

(assert (= d!1074200 b!3657431))

(declare-fun lambda!124539 () Int)

(declare-fun order!21281 () Int)

(declare-fun dynLambda!16841 (Int Int) Int)

(assert (=> b!3657431 (< (dynLambda!16831 order!21267 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16841 order!21281 lambda!124539))))

(assert (=> b!3657431 (< (dynLambda!16833 order!21271 (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) (dynLambda!16841 order!21281 lambda!124539))))

(assert (=> d!1074200 (= (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586)))))))

(declare-fun lt!1270984 () Unit!55748)

(declare-fun Forall2of!380 (Int BalanceConc!23200 BalanceConc!23200) Unit!55748)

(assert (=> d!1074200 (= lt!1270984 (Forall2of!380 lambda!124539 lt!1270621 (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586)))))))

(assert (=> d!1074200 (= (list!14304 lt!1270621) (list!14304 (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586)))))))

(assert (=> d!1074200 (= (lemmaEqSameImage!969 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621 (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586)))) lt!1270984)))

(declare-fun b_lambda!108475 () Bool)

(assert (=> (not b_lambda!108475) (not d!1074200)))

(assert (=> d!1074200 t!298178))

(declare-fun b_and!271143 () Bool)

(assert (= b_and!271135 (and (=> t!298178 result!257186) b_and!271143)))

(assert (=> d!1074200 t!298180))

(declare-fun b_and!271145 () Bool)

(assert (= b_and!271137 (and (=> t!298180 result!257188) b_and!271145)))

(assert (=> d!1074200 t!298182))

(declare-fun b_and!271147 () Bool)

(assert (= b_and!271139 (and (=> t!298182 result!257190) b_and!271147)))

(assert (=> d!1074200 t!298184))

(declare-fun b_and!271149 () Bool)

(assert (= b_and!271141 (and (=> t!298184 result!257192) b_and!271149)))

(declare-fun b_lambda!108477 () Bool)

(assert (=> (not b_lambda!108477) (not d!1074200)))

(declare-fun t!298186 () Bool)

(declare-fun tb!211239 () Bool)

(assert (=> (and b!3656681 (= (toValue!8078 (transformation!5786 (rule!8592 token!511))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298186) tb!211239))

(declare-fun result!257194 () Bool)

(assert (=> tb!211239 (= result!257194 (inv!21 (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) (seqFromList!4335 (originalCharacters!6500 (_1!22354 lt!1270586))))))))

(declare-fun m!4163395 () Bool)

(assert (=> tb!211239 m!4163395))

(assert (=> d!1074200 t!298186))

(declare-fun b_and!271151 () Bool)

(assert (= b_and!271143 (and (=> t!298186 result!257194) b_and!271151)))

(declare-fun tb!211241 () Bool)

(declare-fun t!298188 () Bool)

(assert (=> (and b!3656678 (= (toValue!8078 (transformation!5786 rule!403)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298188) tb!211241))

(declare-fun result!257196 () Bool)

(assert (= result!257196 result!257194))

(assert (=> d!1074200 t!298188))

(declare-fun b_and!271153 () Bool)

(assert (= b_and!271145 (and (=> t!298188 result!257196) b_and!271153)))

(declare-fun t!298190 () Bool)

(declare-fun tb!211243 () Bool)

(assert (=> (and b!3656680 (= (toValue!8078 (transformation!5786 (h!43999 rules!3307))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298190) tb!211243))

(declare-fun result!257198 () Bool)

(assert (= result!257198 result!257194))

(assert (=> d!1074200 t!298190))

(declare-fun b_and!271155 () Bool)

(assert (= b_and!271147 (and (=> t!298190 result!257198) b_and!271155)))

(declare-fun t!298192 () Bool)

(declare-fun tb!211245 () Bool)

(assert (=> (and b!3656649 (= (toValue!8078 (transformation!5786 anOtherTypeRule!33)) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298192) tb!211245))

(declare-fun result!257200 () Bool)

(assert (= result!257200 result!257194))

(assert (=> d!1074200 t!298192))

(declare-fun b_and!271157 () Bool)

(assert (= b_and!271149 (and (=> t!298192 result!257200) b_and!271157)))

(assert (=> d!1074200 m!4163389))

(assert (=> d!1074200 m!4162409))

(assert (=> d!1074200 m!4162329))

(declare-fun m!4163397 () Bool)

(assert (=> d!1074200 m!4163397))

(assert (=> d!1074200 m!4162329))

(declare-fun m!4163399 () Bool)

(assert (=> d!1074200 m!4163399))

(assert (=> d!1074200 m!4162329))

(declare-fun m!4163401 () Bool)

(assert (=> d!1074200 m!4163401))

(assert (=> b!3656676 d!1074200))

(declare-fun d!1074202 () Bool)

(assert (=> d!1074202 (= (apply!9288 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))) lt!1270621) (dynLambda!16835 (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586)))) lt!1270621))))

(declare-fun b_lambda!108479 () Bool)

(assert (=> (not b_lambda!108479) (not d!1074202)))

(assert (=> d!1074202 t!298178))

(declare-fun b_and!271159 () Bool)

(assert (= b_and!271151 (and (=> t!298178 result!257186) b_and!271159)))

(assert (=> d!1074202 t!298180))

(declare-fun b_and!271161 () Bool)

(assert (= b_and!271153 (and (=> t!298180 result!257188) b_and!271161)))

(assert (=> d!1074202 t!298182))

(declare-fun b_and!271163 () Bool)

(assert (= b_and!271155 (and (=> t!298182 result!257190) b_and!271163)))

(assert (=> d!1074202 t!298184))

(declare-fun b_and!271165 () Bool)

(assert (= b_and!271157 (and (=> t!298184 result!257192) b_and!271165)))

(assert (=> d!1074202 m!4163389))

(assert (=> b!3656676 d!1074202))

(declare-fun d!1074204 () Bool)

(assert (=> d!1074204 (not (matchR!5114 (regex!5786 rule!403) lt!1270581))))

(declare-fun lt!1270985 () Unit!55748)

(assert (=> d!1074204 (= lt!1270985 (choose!21593 (regex!5786 rule!403) lt!1270581 lt!1270598))))

(assert (=> d!1074204 (validRegex!4827 (regex!5786 rule!403))))

(assert (=> d!1074204 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!734 (regex!5786 rule!403) lt!1270581 lt!1270598) lt!1270985)))

(declare-fun bs!572487 () Bool)

(assert (= bs!572487 d!1074204))

(assert (=> bs!572487 m!4162355))

(declare-fun m!4163403 () Bool)

(assert (=> bs!572487 m!4163403))

(assert (=> bs!572487 m!4163123))

(assert (=> b!3656658 d!1074204))

(declare-fun d!1074206 () Bool)

(declare-fun res!1484507 () Bool)

(declare-fun e!2264586 () Bool)

(assert (=> d!1074206 (=> (not res!1484507) (not e!2264586))))

(assert (=> d!1074206 (= res!1484507 (not (isEmpty!22873 (originalCharacters!6500 token!511))))))

(assert (=> d!1074206 (= (inv!52040 token!511) e!2264586)))

(declare-fun b!3657436 () Bool)

(declare-fun res!1484508 () Bool)

(assert (=> b!3657436 (=> (not res!1484508) (not e!2264586))))

(assert (=> b!3657436 (= res!1484508 (= (originalCharacters!6500 token!511) (list!14304 (dynLambda!16834 (toChars!7937 (transformation!5786 (rule!8592 token!511))) (value!185361 token!511)))))))

(declare-fun b!3657437 () Bool)

(assert (=> b!3657437 (= e!2264586 (= (size!29470 token!511) (size!29471 (originalCharacters!6500 token!511))))))

(assert (= (and d!1074206 res!1484507) b!3657436))

(assert (= (and b!3657436 res!1484508) b!3657437))

(declare-fun b_lambda!108481 () Bool)

(assert (=> (not b_lambda!108481) (not b!3657436)))

(assert (=> b!3657436 t!298162))

(declare-fun b_and!271167 () Bool)

(assert (= b_and!271127 (and (=> t!298162 result!257170) b_and!271167)))

(assert (=> b!3657436 t!298164))

(declare-fun b_and!271169 () Bool)

(assert (= b_and!271129 (and (=> t!298164 result!257172) b_and!271169)))

(assert (=> b!3657436 t!298166))

(declare-fun b_and!271171 () Bool)

(assert (= b_and!271131 (and (=> t!298166 result!257174) b_and!271171)))

(assert (=> b!3657436 t!298168))

(declare-fun b_and!271173 () Bool)

(assert (= b_and!271133 (and (=> t!298168 result!257176) b_and!271173)))

(declare-fun m!4163405 () Bool)

(assert (=> d!1074206 m!4163405))

(assert (=> b!3657436 m!4163301))

(assert (=> b!3657436 m!4163301))

(declare-fun m!4163407 () Bool)

(assert (=> b!3657436 m!4163407))

(declare-fun m!4163409 () Bool)

(assert (=> b!3657437 m!4163409))

(assert (=> start!342078 d!1074206))

(declare-fun d!1074208 () Bool)

(declare-fun lt!1270986 () Bool)

(assert (=> d!1074208 (= lt!1270986 (select (content!5570 lt!1270618) lt!1270600))))

(declare-fun e!2264587 () Bool)

(assert (=> d!1074208 (= lt!1270986 e!2264587)))

(declare-fun res!1484510 () Bool)

(assert (=> d!1074208 (=> (not res!1484510) (not e!2264587))))

(assert (=> d!1074208 (= res!1484510 ((_ is Cons!38577) lt!1270618))))

(assert (=> d!1074208 (= (contains!7637 lt!1270618 lt!1270600) lt!1270986)))

(declare-fun b!3657438 () Bool)

(declare-fun e!2264588 () Bool)

(assert (=> b!3657438 (= e!2264587 e!2264588)))

(declare-fun res!1484509 () Bool)

(assert (=> b!3657438 (=> res!1484509 e!2264588)))

(assert (=> b!3657438 (= res!1484509 (= (h!43997 lt!1270618) lt!1270600))))

(declare-fun b!3657439 () Bool)

(assert (=> b!3657439 (= e!2264588 (contains!7637 (t!298064 lt!1270618) lt!1270600))))

(assert (= (and d!1074208 res!1484510) b!3657438))

(assert (= (and b!3657438 (not res!1484509)) b!3657439))

(assert (=> d!1074208 m!4163249))

(declare-fun m!4163411 () Bool)

(assert (=> d!1074208 m!4163411))

(declare-fun m!4163413 () Bool)

(assert (=> b!3657439 m!4163413))

(assert (=> b!3656656 d!1074208))

(declare-fun d!1074210 () Bool)

(assert (=> d!1074210 (= (head!7808 suffix!1395) (h!43997 suffix!1395))))

(assert (=> b!3656656 d!1074210))

(declare-fun b!3657440 () Bool)

(declare-fun e!2264592 () List!38701)

(declare-fun call!264465 () List!38701)

(assert (=> b!3657440 (= e!2264592 call!264465)))

(declare-fun bm!264460 () Bool)

(declare-fun call!264466 () List!38701)

(declare-fun call!264468 () List!38701)

(assert (=> bm!264460 (= call!264466 call!264468)))

(declare-fun b!3657441 () Bool)

(declare-fun e!2264590 () List!38701)

(assert (=> b!3657441 (= e!2264590 (Cons!38577 (c!631979 (regex!5786 rule!403)) Nil!38577))))

(declare-fun bm!264461 () Bool)

(declare-fun call!264467 () List!38701)

(declare-fun c!632123 () Bool)

(assert (=> bm!264461 (= call!264467 (usedCharacters!998 (ite c!632123 (regTwo!21603 (regex!5786 rule!403)) (regOne!21602 (regex!5786 rule!403)))))))

(declare-fun d!1074212 () Bool)

(declare-fun c!632122 () Bool)

(assert (=> d!1074212 (= c!632122 (or ((_ is EmptyExpr!10545) (regex!5786 rule!403)) ((_ is EmptyLang!10545) (regex!5786 rule!403))))))

(declare-fun e!2264589 () List!38701)

(assert (=> d!1074212 (= (usedCharacters!998 (regex!5786 rule!403)) e!2264589)))

(declare-fun bm!264462 () Bool)

(assert (=> bm!264462 (= call!264465 (++!9602 (ite c!632123 call!264466 call!264467) (ite c!632123 call!264467 call!264466)))))

(declare-fun b!3657442 () Bool)

(declare-fun c!632121 () Bool)

(assert (=> b!3657442 (= c!632121 ((_ is Star!10545) (regex!5786 rule!403)))))

(declare-fun e!2264591 () List!38701)

(assert (=> b!3657442 (= e!2264590 e!2264591)))

(declare-fun b!3657443 () Bool)

(assert (=> b!3657443 (= e!2264591 call!264468)))

(declare-fun b!3657444 () Bool)

(assert (=> b!3657444 (= e!2264589 Nil!38577)))

(declare-fun b!3657445 () Bool)

(assert (=> b!3657445 (= e!2264591 e!2264592)))

(assert (=> b!3657445 (= c!632123 ((_ is Union!10545) (regex!5786 rule!403)))))

(declare-fun b!3657446 () Bool)

(assert (=> b!3657446 (= e!2264589 e!2264590)))

(declare-fun c!632120 () Bool)

(assert (=> b!3657446 (= c!632120 ((_ is ElementMatch!10545) (regex!5786 rule!403)))))

(declare-fun bm!264463 () Bool)

(assert (=> bm!264463 (= call!264468 (usedCharacters!998 (ite c!632121 (reg!10874 (regex!5786 rule!403)) (ite c!632123 (regOne!21603 (regex!5786 rule!403)) (regTwo!21602 (regex!5786 rule!403))))))))

(declare-fun b!3657447 () Bool)

(assert (=> b!3657447 (= e!2264592 call!264465)))

(assert (= (and d!1074212 c!632122) b!3657444))

(assert (= (and d!1074212 (not c!632122)) b!3657446))

(assert (= (and b!3657446 c!632120) b!3657441))

(assert (= (and b!3657446 (not c!632120)) b!3657442))

(assert (= (and b!3657442 c!632121) b!3657443))

(assert (= (and b!3657442 (not c!632121)) b!3657445))

(assert (= (and b!3657445 c!632123) b!3657440))

(assert (= (and b!3657445 (not c!632123)) b!3657447))

(assert (= (or b!3657440 b!3657447) bm!264460))

(assert (= (or b!3657440 b!3657447) bm!264461))

(assert (= (or b!3657440 b!3657447) bm!264462))

(assert (= (or b!3657443 bm!264460) bm!264463))

(declare-fun m!4163415 () Bool)

(assert (=> bm!264461 m!4163415))

(declare-fun m!4163417 () Bool)

(assert (=> bm!264462 m!4163417))

(declare-fun m!4163419 () Bool)

(assert (=> bm!264463 m!4163419))

(assert (=> b!3656656 d!1074212))

(declare-fun b!3657460 () Bool)

(declare-fun e!2264595 () Bool)

(declare-fun tp!1114382 () Bool)

(assert (=> b!3657460 (= e!2264595 tp!1114382)))

(declare-fun b!3657461 () Bool)

(declare-fun tp!1114383 () Bool)

(declare-fun tp!1114381 () Bool)

(assert (=> b!3657461 (= e!2264595 (and tp!1114383 tp!1114381))))

(declare-fun b!3657458 () Bool)

(assert (=> b!3657458 (= e!2264595 tp_is_empty!18173)))

(assert (=> b!3656663 (= tp!1114296 e!2264595)))

(declare-fun b!3657459 () Bool)

(declare-fun tp!1114379 () Bool)

(declare-fun tp!1114380 () Bool)

(assert (=> b!3657459 (= e!2264595 (and tp!1114379 tp!1114380))))

(assert (= (and b!3656663 ((_ is ElementMatch!10545) (regex!5786 rule!403))) b!3657458))

(assert (= (and b!3656663 ((_ is Concat!16562) (regex!5786 rule!403))) b!3657459))

(assert (= (and b!3656663 ((_ is Star!10545) (regex!5786 rule!403))) b!3657460))

(assert (= (and b!3656663 ((_ is Union!10545) (regex!5786 rule!403))) b!3657461))

(declare-fun b!3657464 () Bool)

(declare-fun e!2264596 () Bool)

(declare-fun tp!1114387 () Bool)

(assert (=> b!3657464 (= e!2264596 tp!1114387)))

(declare-fun b!3657465 () Bool)

(declare-fun tp!1114388 () Bool)

(declare-fun tp!1114386 () Bool)

(assert (=> b!3657465 (= e!2264596 (and tp!1114388 tp!1114386))))

(declare-fun b!3657462 () Bool)

(assert (=> b!3657462 (= e!2264596 tp_is_empty!18173)))

(assert (=> b!3656646 (= tp!1114298 e!2264596)))

(declare-fun b!3657463 () Bool)

(declare-fun tp!1114384 () Bool)

(declare-fun tp!1114385 () Bool)

(assert (=> b!3657463 (= e!2264596 (and tp!1114384 tp!1114385))))

(assert (= (and b!3656646 ((_ is ElementMatch!10545) (regex!5786 (h!43999 rules!3307)))) b!3657462))

(assert (= (and b!3656646 ((_ is Concat!16562) (regex!5786 (h!43999 rules!3307)))) b!3657463))

(assert (= (and b!3656646 ((_ is Star!10545) (regex!5786 (h!43999 rules!3307)))) b!3657464))

(assert (= (and b!3656646 ((_ is Union!10545) (regex!5786 (h!43999 rules!3307)))) b!3657465))

(declare-fun b!3657468 () Bool)

(declare-fun e!2264597 () Bool)

(declare-fun tp!1114392 () Bool)

(assert (=> b!3657468 (= e!2264597 tp!1114392)))

(declare-fun b!3657469 () Bool)

(declare-fun tp!1114393 () Bool)

(declare-fun tp!1114391 () Bool)

(assert (=> b!3657469 (= e!2264597 (and tp!1114393 tp!1114391))))

(declare-fun b!3657466 () Bool)

(assert (=> b!3657466 (= e!2264597 tp_is_empty!18173)))

(assert (=> b!3656691 (= tp!1114302 e!2264597)))

(declare-fun b!3657467 () Bool)

(declare-fun tp!1114389 () Bool)

(declare-fun tp!1114390 () Bool)

(assert (=> b!3657467 (= e!2264597 (and tp!1114389 tp!1114390))))

(assert (= (and b!3656691 ((_ is ElementMatch!10545) (regex!5786 anOtherTypeRule!33))) b!3657466))

(assert (= (and b!3656691 ((_ is Concat!16562) (regex!5786 anOtherTypeRule!33))) b!3657467))

(assert (= (and b!3656691 ((_ is Star!10545) (regex!5786 anOtherTypeRule!33))) b!3657468))

(assert (= (and b!3656691 ((_ is Union!10545) (regex!5786 anOtherTypeRule!33))) b!3657469))

(declare-fun b!3657474 () Bool)

(declare-fun e!2264600 () Bool)

(declare-fun tp!1114396 () Bool)

(assert (=> b!3657474 (= e!2264600 (and tp_is_empty!18173 tp!1114396))))

(assert (=> b!3656686 (= tp!1114308 e!2264600)))

(assert (= (and b!3656686 ((_ is Cons!38577) (t!298064 suffix!1395))) b!3657474))

(declare-fun b!3657477 () Bool)

(declare-fun e!2264601 () Bool)

(declare-fun tp!1114400 () Bool)

(assert (=> b!3657477 (= e!2264601 tp!1114400)))

(declare-fun b!3657478 () Bool)

(declare-fun tp!1114401 () Bool)

(declare-fun tp!1114399 () Bool)

(assert (=> b!3657478 (= e!2264601 (and tp!1114401 tp!1114399))))

(declare-fun b!3657475 () Bool)

(assert (=> b!3657475 (= e!2264601 tp_is_empty!18173)))

(assert (=> b!3656672 (= tp!1114300 e!2264601)))

(declare-fun b!3657476 () Bool)

(declare-fun tp!1114397 () Bool)

(declare-fun tp!1114398 () Bool)

(assert (=> b!3657476 (= e!2264601 (and tp!1114397 tp!1114398))))

(assert (= (and b!3656672 ((_ is ElementMatch!10545) (regex!5786 (rule!8592 token!511)))) b!3657475))

(assert (= (and b!3656672 ((_ is Concat!16562) (regex!5786 (rule!8592 token!511)))) b!3657476))

(assert (= (and b!3656672 ((_ is Star!10545) (regex!5786 (rule!8592 token!511)))) b!3657477))

(assert (= (and b!3656672 ((_ is Union!10545) (regex!5786 (rule!8592 token!511)))) b!3657478))

(declare-fun b!3657489 () Bool)

(declare-fun b_free!96413 () Bool)

(declare-fun b_next!97117 () Bool)

(assert (=> b!3657489 (= b_free!96413 (not b_next!97117))))

(declare-fun tb!211247 () Bool)

(declare-fun t!298194 () Bool)

(assert (=> (and b!3657489 (= (toValue!8078 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298194) tb!211247))

(declare-fun result!257208 () Bool)

(assert (= result!257208 result!257100))

(assert (=> d!1074182 t!298194))

(declare-fun t!298196 () Bool)

(declare-fun tb!211249 () Bool)

(assert (=> (and b!3657489 (= (toValue!8078 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298196) tb!211249))

(declare-fun result!257210 () Bool)

(assert (= result!257210 result!257186))

(assert (=> d!1074198 t!298196))

(assert (=> d!1074200 t!298196))

(assert (=> d!1073930 t!298194))

(assert (=> d!1074202 t!298196))

(declare-fun t!298198 () Bool)

(declare-fun tb!211251 () Bool)

(assert (=> (and b!3657489 (= (toValue!8078 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toValue!8078 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298198) tb!211251))

(declare-fun result!257212 () Bool)

(assert (= result!257212 result!257194))

(assert (=> d!1074200 t!298198))

(declare-fun tp!1114412 () Bool)

(declare-fun b_and!271175 () Bool)

(assert (=> b!3657489 (= tp!1114412 (and (=> t!298198 result!257212) (=> t!298196 result!257210) (=> t!298194 result!257208) b_and!271175))))

(declare-fun b_free!96415 () Bool)

(declare-fun b_next!97119 () Bool)

(assert (=> b!3657489 (= b_free!96415 (not b_next!97119))))

(declare-fun tb!211253 () Bool)

(declare-fun t!298200 () Bool)

(assert (=> (and b!3657489 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298200) tb!211253))

(declare-fun result!257214 () Bool)

(assert (= result!257214 result!257090))

(assert (=> d!1073930 t!298200))

(declare-fun tb!211255 () Bool)

(declare-fun t!298202 () Bool)

(assert (=> (and b!3657489 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298202) tb!211255))

(declare-fun result!257216 () Bool)

(assert (= result!257216 result!257110))

(assert (=> d!1074034 t!298202))

(declare-fun tb!211257 () Bool)

(declare-fun t!298204 () Bool)

(assert (=> (and b!3657489 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 token!511)))) t!298204) tb!211257))

(declare-fun result!257218 () Bool)

(assert (= result!257218 result!257170))

(assert (=> d!1074168 t!298204))

(assert (=> b!3657436 t!298204))

(declare-fun t!298206 () Bool)

(declare-fun tb!211259 () Bool)

(assert (=> (and b!3657489 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 (_1!22354 lt!1270586))))) t!298206) tb!211259))

(declare-fun result!257220 () Bool)

(assert (= result!257220 result!257178))

(assert (=> d!1074198 t!298206))

(declare-fun b_and!271177 () Bool)

(declare-fun tp!1114410 () Bool)

(assert (=> b!3657489 (= tp!1114410 (and (=> t!298204 result!257218) (=> t!298206 result!257220) (=> t!298202 result!257216) (=> t!298200 result!257214) b_and!271177))))

(declare-fun e!2264613 () Bool)

(assert (=> b!3657489 (= e!2264613 (and tp!1114412 tp!1114410))))

(declare-fun tp!1114413 () Bool)

(declare-fun e!2264610 () Bool)

(declare-fun b!3657488 () Bool)

(assert (=> b!3657488 (= e!2264610 (and tp!1114413 (inv!52036 (tag!6558 (h!43999 (t!298066 rules!3307)))) (inv!52039 (transformation!5786 (h!43999 (t!298066 rules!3307)))) e!2264613))))

(declare-fun b!3657487 () Bool)

(declare-fun e!2264612 () Bool)

(declare-fun tp!1114411 () Bool)

(assert (=> b!3657487 (= e!2264612 (and e!2264610 tp!1114411))))

(assert (=> b!3656674 (= tp!1114299 e!2264612)))

(assert (= b!3657488 b!3657489))

(assert (= b!3657487 b!3657488))

(assert (= (and b!3656674 ((_ is Cons!38579) (t!298066 rules!3307))) b!3657487))

(declare-fun m!4163421 () Bool)

(assert (=> b!3657488 m!4163421))

(declare-fun m!4163423 () Bool)

(assert (=> b!3657488 m!4163423))

(declare-fun b!3657490 () Bool)

(declare-fun e!2264614 () Bool)

(declare-fun tp!1114414 () Bool)

(assert (=> b!3657490 (= e!2264614 (and tp_is_empty!18173 tp!1114414))))

(assert (=> b!3656685 (= tp!1114306 e!2264614)))

(assert (= (and b!3656685 ((_ is Cons!38577) (originalCharacters!6500 token!511))) b!3657490))

(declare-fun b_lambda!108483 () Bool)

(assert (= b_lambda!108467 (or (and b!3656649 b_free!96407 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656680 b_free!96403 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3657489 b_free!96415 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656678 b_free!96399 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656681 b_free!96395) b_lambda!108483)))

(declare-fun b_lambda!108485 () Bool)

(assert (= b_lambda!108481 (or (and b!3656649 b_free!96407 (= (toChars!7937 (transformation!5786 anOtherTypeRule!33)) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656680 b_free!96403 (= (toChars!7937 (transformation!5786 (h!43999 rules!3307))) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3657489 b_free!96415 (= (toChars!7937 (transformation!5786 (h!43999 (t!298066 rules!3307)))) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656678 b_free!96399 (= (toChars!7937 (transformation!5786 rule!403)) (toChars!7937 (transformation!5786 (rule!8592 token!511))))) (and b!3656681 b_free!96395) b_lambda!108485)))

(check-sat (not b!3657381) (not b!3657180) (not b!3657176) (not b!3657174) (not b!3657106) (not d!1074032) b_and!271177 (not d!1073930) (not b!3657409) (not tb!211239) (not b_lambda!108475) (not d!1074156) (not b!3657356) (not bm!264448) (not b!3657114) (not bm!264457) (not b!3657469) (not b!3657219) (not b!3657410) (not b!3657109) (not b!3657215) (not d!1074166) (not b!3657171) (not b!3657110) (not b!3657325) (not tb!211231) (not bm!264449) (not b!3657158) (not b_lambda!108445) (not b!3657464) (not b!3657118) (not b!3657202) (not b!3657490) (not b!3657156) (not b!3657175) (not b!3657203) b_and!271169 (not b!3657037) (not b!3657476) (not b!3656818) (not d!1074196) (not b!3657422) (not d!1074176) (not tb!211161) (not d!1074160) (not b!3657036) (not d!1074206) (not d!1074024) (not d!1074014) (not b!3657240) (not d!1074044) (not d!1074162) (not d!1074190) (not b!3657437) (not bm!264441) (not b!3657227) (not b!3657387) (not tb!211153) (not b!3657101) (not b_next!97111) (not b!3657255) b_and!271167 (not bm!264461) (not b_lambda!108477) (not d!1074062) (not d!1074088) (not b!3657205) (not d!1074172) b_and!271163 (not b!3657179) (not d!1074170) (not b!3657424) (not d!1074094) (not b!3657408) (not b!3657465) (not b!3657407) (not d!1074022) (not b_next!97103) (not d!1074200) (not b!3657169) (not b!3657130) (not b!3657383) (not d!1074050) b_and!271171 (not b!3657436) (not d!1074068) (not b_next!97099) (not d!1074178) tp_is_empty!18173 b_and!271159 (not b_lambda!108469) (not b!3657031) (not b!3657200) (not b!3656819) (not b!3657170) (not b!3657467) (not b_lambda!108479) (not b!3657229) (not d!1074092) b_and!271173 (not b!3657461) (not b!3657246) (not b!3657257) (not b!3657098) (not b!3657411) (not b!3657043) (not d!1074204) (not b!3657233) (not b!3657232) (not d!1074048) (not bm!264455) (not b_next!97097) (not b_next!97105) (not d!1073920) (not bm!264439) (not bm!264440) (not b_lambda!108483) (not b!3657159) (not d!1074198) (not d!1074042) (not b!3657478) (not d!1074084) (not b!3656838) (not d!1074152) (not b!3657301) (not d!1074148) (not d!1074046) (not d!1074168) (not d!1074080) (not b!3657468) (not b_next!97107) (not d!1074180) (not b!3657121) (not d!1074186) (not b_lambda!108485) (not b!3657141) b_and!271161 (not b!3657235) (not b!3657221) (not b_lambda!108471) (not b!3657140) (not b!3657237) (not d!1074108) (not b!3657354) (not d!1074034) (not b!3657360) (not b!3657178) (not b!3657439) (not b!3657487) (not d!1074118) (not b!3657406) (not b!3657207) (not b_next!97109) (not bm!264463) (not b!3657201) (not bm!264444) (not b!3657326) (not d!1074038) (not d!1074164) (not d!1074030) (not bm!264445) (not b!3657477) (not b!3657385) (not d!1074012) (not b!3657129) (not bm!264462) (not b!3656784) (not d!1074192) (not b!3657220) (not b!3657459) (not d!1074054) (not b!3657199) (not b!3657099) (not b!3657324) (not d!1074058) (not b_lambda!108473) (not b!3657474) (not b!3657361) (not b!3657460) (not b!3657362) (not b!3657355) (not b!3657113) (not tb!211215) (not b_next!97117) (not tb!211223) (not d!1074184) (not b!3657348) (not b!3657414) (not b!3657216) (not d!1074040) (not b!3657206) b_and!271165 (not bm!264456) (not d!1074064) (not b!3657299) (not bm!264459) (not b!3657103) (not d!1074194) (not b!3657323) (not b_next!97119) (not d!1074018) (not b_next!97101) (not b!3657463) (not d!1074208) (not d!1074154) (not b!3657413) (not b!3657243) (not b!3657419) (not b_lambda!108443) (not b!3657124) (not d!1074026) (not d!1074078) (not d!1073894) (not d!1074082) (not d!1074086) (not b!3657302) (not b!3656817) (not b_lambda!108447) (not b!3657488) (not b!3657357) b_and!271175 (not b!3657116) (not tb!211145) (not b!3657358))
(check-sat b_and!271177 b_and!271169 b_and!271163 (not b_next!97103) b_and!271171 b_and!271173 (not b_next!97107) b_and!271161 (not b_next!97109) b_and!271175 (not b_next!97111) b_and!271167 (not b_next!97099) b_and!271159 (not b_next!97097) (not b_next!97105) b_and!271165 (not b_next!97117) (not b_next!97119) (not b_next!97101))
