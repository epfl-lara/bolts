; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345026 () Bool)

(assert start!345026)

(declare-fun b!3678272 () Bool)

(declare-fun b_free!97377 () Bool)

(declare-fun b_next!98081 () Bool)

(assert (=> b!3678272 (= b_free!97377 (not b_next!98081))))

(declare-fun tp!1118442 () Bool)

(declare-fun b_and!274547 () Bool)

(assert (=> b!3678272 (= tp!1118442 b_and!274547)))

(declare-fun b_free!97379 () Bool)

(declare-fun b_next!98083 () Bool)

(assert (=> b!3678272 (= b_free!97379 (not b_next!98083))))

(declare-fun tp!1118440 () Bool)

(declare-fun b_and!274549 () Bool)

(assert (=> b!3678272 (= tp!1118440 b_and!274549)))

(declare-fun b!3678269 () Bool)

(declare-fun b_free!97381 () Bool)

(declare-fun b_next!98085 () Bool)

(assert (=> b!3678269 (= b_free!97381 (not b_next!98085))))

(declare-fun tp!1118446 () Bool)

(declare-fun b_and!274551 () Bool)

(assert (=> b!3678269 (= tp!1118446 b_and!274551)))

(declare-fun b_free!97383 () Bool)

(declare-fun b_next!98087 () Bool)

(assert (=> b!3678269 (= b_free!97383 (not b_next!98087))))

(declare-fun tp!1118434 () Bool)

(declare-fun b_and!274553 () Bool)

(assert (=> b!3678269 (= tp!1118434 b_and!274553)))

(declare-fun b!3678239 () Bool)

(declare-fun b_free!97385 () Bool)

(declare-fun b_next!98089 () Bool)

(assert (=> b!3678239 (= b_free!97385 (not b_next!98089))))

(declare-fun tp!1118435 () Bool)

(declare-fun b_and!274555 () Bool)

(assert (=> b!3678239 (= tp!1118435 b_and!274555)))

(declare-fun b_free!97387 () Bool)

(declare-fun b_next!98091 () Bool)

(assert (=> b!3678239 (= b_free!97387 (not b_next!98091))))

(declare-fun tp!1118436 () Bool)

(declare-fun b_and!274557 () Bool)

(assert (=> b!3678239 (= tp!1118436 b_and!274557)))

(declare-fun b!3678242 () Bool)

(declare-fun b_free!97389 () Bool)

(declare-fun b_next!98093 () Bool)

(assert (=> b!3678242 (= b_free!97389 (not b_next!98093))))

(declare-fun tp!1118432 () Bool)

(declare-fun b_and!274559 () Bool)

(assert (=> b!3678242 (= tp!1118432 b_and!274559)))

(declare-fun b_free!97391 () Bool)

(declare-fun b_next!98095 () Bool)

(assert (=> b!3678242 (= b_free!97391 (not b_next!98095))))

(declare-fun tp!1118444 () Bool)

(declare-fun b_and!274561 () Bool)

(assert (=> b!3678242 (= tp!1118444 b_and!274561)))

(declare-fun b!3678222 () Bool)

(declare-fun e!2277618 () Bool)

(declare-fun e!2277624 () Bool)

(declare-fun tp!1118443 () Bool)

(assert (=> b!3678222 (= e!2277618 (and e!2277624 tp!1118443))))

(declare-fun b!3678223 () Bool)

(declare-datatypes ((Unit!56714 0))(
  ( (Unit!56715) )
))
(declare-fun e!2277647 () Unit!56714)

(declare-fun e!2277623 () Unit!56714)

(assert (=> b!3678223 (= e!2277647 e!2277623)))

(declare-fun c!636173 () Bool)

(declare-datatypes ((List!38919 0))(
  ( (Nil!38795) (Cons!38795 (h!44215 (_ BitVec 16)) (t!300394 List!38919)) )
))
(declare-datatypes ((TokenValue!6070 0))(
  ( (FloatLiteralValue!12140 (text!42935 List!38919)) (TokenValueExt!6069 (__x!24357 Int)) (Broken!30350 (value!186874 List!38919)) (Object!6193) (End!6070) (Def!6070) (Underscore!6070) (Match!6070) (Else!6070) (Error!6070) (Case!6070) (If!6070) (Extends!6070) (Abstract!6070) (Class!6070) (Val!6070) (DelimiterValue!12140 (del!6130 List!38919)) (KeywordValue!6076 (value!186875 List!38919)) (CommentValue!12140 (value!186876 List!38919)) (WhitespaceValue!12140 (value!186877 List!38919)) (IndentationValue!6070 (value!186878 List!38919)) (String!43683) (Int32!6070) (Broken!30351 (value!186879 List!38919)) (Boolean!6071) (Unit!56716) (OperatorValue!6073 (op!6130 List!38919)) (IdentifierValue!12140 (value!186880 List!38919)) (IdentifierValue!12141 (value!186881 List!38919)) (WhitespaceValue!12141 (value!186882 List!38919)) (True!12140) (False!12140) (Broken!30352 (value!186883 List!38919)) (Broken!30353 (value!186884 List!38919)) (True!12141) (RightBrace!6070) (RightBracket!6070) (Colon!6070) (Null!6070) (Comma!6070) (LeftBracket!6070) (False!12141) (LeftBrace!6070) (ImaginaryLiteralValue!6070 (text!42936 List!38919)) (StringLiteralValue!18210 (value!186885 List!38919)) (EOFValue!6070 (value!186886 List!38919)) (IdentValue!6070 (value!186887 List!38919)) (DelimiterValue!12141 (value!186888 List!38919)) (DedentValue!6070 (value!186889 List!38919)) (NewLineValue!6070 (value!186890 List!38919)) (IntegerValue!18210 (value!186891 (_ BitVec 32)) (text!42937 List!38919)) (IntegerValue!18211 (value!186892 Int) (text!42938 List!38919)) (Times!6070) (Or!6070) (Equal!6070) (Minus!6070) (Broken!30354 (value!186893 List!38919)) (And!6070) (Div!6070) (LessEqual!6070) (Mod!6070) (Concat!16669) (Not!6070) (Plus!6070) (SpaceValue!6070 (value!186894 List!38919)) (IntegerValue!18212 (value!186895 Int) (text!42939 List!38919)) (StringLiteralValue!18211 (text!42940 List!38919)) (FloatLiteralValue!12141 (text!42941 List!38919)) (BytesLiteralValue!6070 (value!186896 List!38919)) (CommentValue!12141 (value!186897 List!38919)) (StringLiteralValue!18212 (value!186898 List!38919)) (ErrorTokenValue!6070 (msg!6131 List!38919)) )
))
(declare-datatypes ((C!21384 0))(
  ( (C!21385 (val!12740 Int)) )
))
(declare-datatypes ((Regex!10599 0))(
  ( (ElementMatch!10599 (c!636174 C!21384)) (Concat!16670 (regOne!21710 Regex!10599) (regTwo!21710 Regex!10599)) (EmptyExpr!10599) (Star!10599 (reg!10928 Regex!10599)) (EmptyLang!10599) (Union!10599 (regOne!21711 Regex!10599) (regTwo!21711 Regex!10599)) )
))
(declare-datatypes ((String!43684 0))(
  ( (String!43685 (value!186899 String)) )
))
(declare-datatypes ((List!38920 0))(
  ( (Nil!38796) (Cons!38796 (h!44216 C!21384) (t!300395 List!38920)) )
))
(declare-datatypes ((IArray!23755 0))(
  ( (IArray!23756 (innerList!11935 List!38920)) )
))
(declare-datatypes ((Conc!11875 0))(
  ( (Node!11875 (left!30273 Conc!11875) (right!30603 Conc!11875) (csize!23980 Int) (cheight!12086 Int)) (Leaf!18406 (xs!15077 IArray!23755) (csize!23981 Int)) (Empty!11875) )
))
(declare-datatypes ((BalanceConc!23364 0))(
  ( (BalanceConc!23365 (c!636175 Conc!11875)) )
))
(declare-datatypes ((TokenValueInjection!11568 0))(
  ( (TokenValueInjection!11569 (toValue!8136 Int) (toChars!7995 Int)) )
))
(declare-datatypes ((Rule!11480 0))(
  ( (Rule!11481 (regex!5840 Regex!10599) (tag!6640 String!43684) (isSeparator!5840 Bool) (transformation!5840 TokenValueInjection!11568)) )
))
(declare-datatypes ((Token!11046 0))(
  ( (Token!11047 (value!186900 TokenValue!6070) (rule!8674 Rule!11480) (size!29661 Int) (originalCharacters!6554 List!38920)) )
))
(declare-datatypes ((tuple2!38664 0))(
  ( (tuple2!38665 (_1!22466 Token!11046) (_2!22466 List!38920)) )
))
(declare-fun lt!1284940 () tuple2!38664)

(assert (=> b!3678223 (= c!636173 (isSeparator!5840 (rule!8674 (_1!22466 lt!1284940))))))

(declare-fun b!3678224 () Bool)

(declare-fun e!2277633 () Bool)

(declare-fun e!2277620 () Bool)

(assert (=> b!3678224 (= e!2277633 e!2277620)))

(declare-fun res!1494247 () Bool)

(assert (=> b!3678224 (=> res!1494247 e!2277620)))

(declare-fun lt!1284975 () TokenValue!6070)

(declare-datatypes ((Option!8308 0))(
  ( (None!8307) (Some!8307 (v!38239 tuple2!38664)) )
))
(declare-fun lt!1284979 () Option!8308)

(declare-fun lt!1284987 () List!38920)

(declare-fun lt!1284976 () Int)

(assert (=> b!3678224 (= res!1494247 (not (= lt!1284979 (Some!8307 (tuple2!38665 (Token!11047 lt!1284975 (rule!8674 (_1!22466 lt!1284940)) lt!1284976 lt!1284987) (_2!22466 lt!1284940))))))))

(declare-fun lt!1284988 () BalanceConc!23364)

(declare-fun size!29662 (BalanceConc!23364) Int)

(assert (=> b!3678224 (= lt!1284976 (size!29662 lt!1284988))))

(declare-fun apply!9342 (TokenValueInjection!11568 BalanceConc!23364) TokenValue!6070)

(assert (=> b!3678224 (= lt!1284975 (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988))))

(declare-fun lt!1284933 () Unit!56714)

(declare-fun lemmaCharactersSize!885 (Token!11046) Unit!56714)

(assert (=> b!3678224 (= lt!1284933 (lemmaCharactersSize!885 (_1!22466 lt!1284940)))))

(declare-fun lt!1284955 () Unit!56714)

(declare-fun lemmaEqSameImage!1023 (TokenValueInjection!11568 BalanceConc!23364 BalanceConc!23364) Unit!56714)

(declare-fun seqFromList!4389 (List!38920) BalanceConc!23364)

(assert (=> b!3678224 (= lt!1284955 (lemmaEqSameImage!1023 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988 (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940)))))))

(declare-fun lt!1284938 () Unit!56714)

(declare-fun lemmaSemiInverse!1589 (TokenValueInjection!11568 BalanceConc!23364) Unit!56714)

(assert (=> b!3678224 (= lt!1284938 (lemmaSemiInverse!1589 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988))))

(declare-fun b!3678225 () Bool)

(declare-fun e!2277627 () Bool)

(assert (=> b!3678225 (= e!2277627 false)))

(declare-fun b!3678227 () Bool)

(declare-fun res!1494243 () Bool)

(declare-fun e!2277616 () Bool)

(assert (=> b!3678227 (=> res!1494243 e!2277616)))

(declare-fun suffix!1395 () List!38920)

(declare-fun isEmpty!23038 (List!38920) Bool)

(assert (=> b!3678227 (= res!1494243 (isEmpty!23038 suffix!1395))))

(declare-fun b!3678228 () Bool)

(declare-fun e!2277636 () Bool)

(assert (=> b!3678228 (= e!2277636 e!2277633)))

(declare-fun res!1494258 () Bool)

(assert (=> b!3678228 (=> res!1494258 e!2277633)))

(declare-fun lt!1284950 () List!38920)

(declare-fun isPrefix!3203 (List!38920 List!38920) Bool)

(assert (=> b!3678228 (= res!1494258 (not (isPrefix!3203 lt!1284987 lt!1284950)))))

(declare-fun ++!9656 (List!38920 List!38920) List!38920)

(assert (=> b!3678228 (isPrefix!3203 lt!1284987 (++!9656 lt!1284987 (_2!22466 lt!1284940)))))

(declare-fun lt!1284948 () Unit!56714)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2122 (List!38920 List!38920) Unit!56714)

(assert (=> b!3678228 (= lt!1284948 (lemmaConcatTwoListThenFirstIsPrefix!2122 lt!1284987 (_2!22466 lt!1284940)))))

(declare-fun list!14418 (BalanceConc!23364) List!38920)

(assert (=> b!3678228 (= lt!1284987 (list!14418 lt!1284988))))

(declare-fun charsOf!3854 (Token!11046) BalanceConc!23364)

(assert (=> b!3678228 (= lt!1284988 (charsOf!3854 (_1!22466 lt!1284940)))))

(declare-fun e!2277642 () Bool)

(assert (=> b!3678228 e!2277642))

(declare-fun res!1494251 () Bool)

(assert (=> b!3678228 (=> (not res!1494251) (not e!2277642))))

(declare-datatypes ((Option!8309 0))(
  ( (None!8308) (Some!8308 (v!38240 Rule!11480)) )
))
(declare-fun lt!1284990 () Option!8309)

(declare-fun isDefined!6540 (Option!8309) Bool)

(assert (=> b!3678228 (= res!1494251 (isDefined!6540 lt!1284990))))

(declare-datatypes ((List!38921 0))(
  ( (Nil!38797) (Cons!38797 (h!44217 Rule!11480) (t!300396 List!38921)) )
))
(declare-fun rules!3307 () List!38921)

(declare-datatypes ((LexerInterface!5429 0))(
  ( (LexerInterfaceExt!5426 (__x!24358 Int)) (Lexer!5427) )
))
(declare-fun thiss!23823 () LexerInterface!5429)

(declare-fun getRuleFromTag!1444 (LexerInterface!5429 List!38921 String!43684) Option!8309)

(assert (=> b!3678228 (= lt!1284990 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun lt!1284935 () Unit!56714)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1444 (LexerInterface!5429 List!38921 List!38920 Token!11046) Unit!56714)

(assert (=> b!3678228 (= lt!1284935 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1444 thiss!23823 rules!3307 lt!1284950 (_1!22466 lt!1284940)))))

(declare-fun get!12838 (Option!8308) tuple2!38664)

(assert (=> b!3678228 (= lt!1284940 (get!12838 lt!1284979))))

(declare-fun lt!1284983 () List!38920)

(declare-fun lt!1284986 () Unit!56714)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1107 (LexerInterface!5429 List!38921 List!38920 List!38920) Unit!56714)

(assert (=> b!3678228 (= lt!1284986 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1107 thiss!23823 rules!3307 lt!1284983 suffix!1395))))

(declare-fun maxPrefix!2963 (LexerInterface!5429 List!38921 List!38920) Option!8308)

(assert (=> b!3678228 (= lt!1284979 (maxPrefix!2963 thiss!23823 rules!3307 lt!1284950))))

(assert (=> b!3678228 (isPrefix!3203 lt!1284983 lt!1284950)))

(declare-fun lt!1284968 () Unit!56714)

(assert (=> b!3678228 (= lt!1284968 (lemmaConcatTwoListThenFirstIsPrefix!2122 lt!1284983 suffix!1395))))

(assert (=> b!3678228 (= lt!1284950 (++!9656 lt!1284983 suffix!1395))))

(declare-fun b!3678229 () Bool)

(assert (=> b!3678229 false))

(declare-fun lt!1284947 () Unit!56714)

(declare-fun call!266408 () Unit!56714)

(assert (=> b!3678229 (= lt!1284947 call!266408)))

(declare-fun call!266405 () Bool)

(assert (=> b!3678229 (not call!266405)))

(declare-fun lt!1284980 () Unit!56714)

(declare-fun rule!403 () Rule!11480)

(declare-fun lt!1284963 () C!21384)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!368 (LexerInterface!5429 List!38921 List!38921 Rule!11480 Rule!11480 C!21384) Unit!56714)

(assert (=> b!3678229 (= lt!1284980 (lemmaSepRuleNotContainsCharContainedInANonSepRule!368 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8674 (_1!22466 lt!1284940)) lt!1284963))))

(declare-fun Unit!56717 () Unit!56714)

(assert (=> b!3678229 (= e!2277623 Unit!56717)))

(declare-fun b!3678230 () Bool)

(assert (=> b!3678230 e!2277627))

(declare-fun res!1494245 () Bool)

(assert (=> b!3678230 (=> (not res!1494245) (not e!2277627))))

(declare-fun matchR!5168 (Regex!10599 List!38920) Bool)

(assert (=> b!3678230 (= res!1494245 (not (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284983)))))

(declare-fun lt!1284981 () Unit!56714)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!248 (LexerInterface!5429 List!38921 Rule!11480 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> b!3678230 (= lt!1284981 (lemmaMaxPrefNoSmallerRuleMatches!248 thiss!23823 rules!3307 rule!403 lt!1284983 lt!1284983 (rule!8674 (_1!22466 lt!1284940))))))

(declare-fun getSuffix!1756 (List!38920 List!38920) List!38920)

(assert (=> b!3678230 (isEmpty!23038 (getSuffix!1756 lt!1284983 lt!1284983))))

(declare-fun lt!1284952 () Unit!56714)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!220 (List!38920) Unit!56714)

(assert (=> b!3678230 (= lt!1284952 (lemmaGetSuffixOnListWithItSelfIsEmpty!220 lt!1284983))))

(declare-fun e!2277635 () Unit!56714)

(declare-fun Unit!56718 () Unit!56714)

(assert (=> b!3678230 (= e!2277635 Unit!56718)))

(declare-fun b!3678231 () Bool)

(declare-fun res!1494264 () Bool)

(declare-fun e!2277615 () Bool)

(assert (=> b!3678231 (=> (not res!1494264) (not e!2277615))))

(declare-fun contains!7747 (List!38921 Rule!11480) Bool)

(assert (=> b!3678231 (= res!1494264 (contains!7747 rules!3307 rule!403))))

(declare-fun b!3678232 () Bool)

(assert (=> b!3678232 false))

(declare-fun lt!1284945 () Unit!56714)

(assert (=> b!3678232 (= lt!1284945 (lemmaMaxPrefNoSmallerRuleMatches!248 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284983 lt!1284950 rule!403))))

(declare-fun e!2277644 () Unit!56714)

(declare-fun Unit!56719 () Unit!56714)

(assert (=> b!3678232 (= e!2277644 Unit!56719)))

(declare-fun b!3678233 () Bool)

(declare-fun res!1494259 () Bool)

(assert (=> b!3678233 (=> (not res!1494259) (not e!2277615))))

(declare-fun anOtherTypeRule!33 () Rule!11480)

(assert (=> b!3678233 (= res!1494259 (not (= (isSeparator!5840 anOtherTypeRule!33) (isSeparator!5840 rule!403))))))

(declare-fun b!3678234 () Bool)

(declare-fun e!2277626 () Unit!56714)

(declare-fun Unit!56720 () Unit!56714)

(assert (=> b!3678234 (= e!2277626 Unit!56720)))

(declare-fun lt!1284961 () Unit!56714)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!382 (LexerInterface!5429 List!38921 Rule!11480 List!38920 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> b!3678234 (= lt!1284961 (lemmaMaxPrefixOutputsMaxPrefix!382 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284987 lt!1284950 lt!1284983 rule!403))))

(assert (=> b!3678234 false))

(declare-fun b!3678235 () Bool)

(assert (=> b!3678235 (= e!2277616 e!2277636)))

(declare-fun res!1494263 () Bool)

(assert (=> b!3678235 (=> res!1494263 e!2277636)))

(declare-fun lt!1284949 () List!38920)

(declare-fun lt!1284967 () C!21384)

(declare-fun contains!7748 (List!38920 C!21384) Bool)

(assert (=> b!3678235 (= res!1494263 (contains!7748 lt!1284949 lt!1284967))))

(declare-fun head!7890 (List!38920) C!21384)

(assert (=> b!3678235 (= lt!1284967 (head!7890 suffix!1395))))

(declare-fun usedCharacters!1052 (Regex!10599) List!38920)

(assert (=> b!3678235 (= lt!1284949 (usedCharacters!1052 (regex!5840 rule!403)))))

(declare-fun bm!266398 () Bool)

(declare-fun call!266403 () List!38920)

(assert (=> bm!266398 (= call!266405 (contains!7748 call!266403 lt!1284963))))

(declare-fun e!2277648 () Bool)

(declare-fun e!2277629 () Bool)

(declare-fun tp!1118438 () Bool)

(declare-fun b!3678236 () Bool)

(declare-fun inv!52287 (String!43684) Bool)

(declare-fun inv!52290 (TokenValueInjection!11568) Bool)

(assert (=> b!3678236 (= e!2277629 (and tp!1118438 (inv!52287 (tag!6640 rule!403)) (inv!52290 (transformation!5840 rule!403)) e!2277648))))

(declare-fun b!3678237 () Bool)

(declare-fun e!2277637 () Unit!56714)

(declare-fun Unit!56721 () Unit!56714)

(assert (=> b!3678237 (= e!2277637 Unit!56721)))

(declare-fun b!3678238 () Bool)

(declare-fun e!2277614 () Bool)

(assert (=> b!3678238 (= e!2277620 e!2277614)))

(declare-fun res!1494246 () Bool)

(assert (=> b!3678238 (=> res!1494246 e!2277614)))

(declare-fun lt!1284989 () List!38920)

(declare-fun lt!1284944 () Option!8308)

(assert (=> b!3678238 (= res!1494246 (or (not (= lt!1284989 (_2!22466 lt!1284940))) (not (= lt!1284944 (Some!8307 (tuple2!38665 (_1!22466 lt!1284940) lt!1284989))))))))

(assert (=> b!3678238 (= (_2!22466 lt!1284940) lt!1284989)))

(declare-fun lt!1284959 () Unit!56714)

(declare-fun lemmaSamePrefixThenSameSuffix!1530 (List!38920 List!38920 List!38920 List!38920 List!38920) Unit!56714)

(assert (=> b!3678238 (= lt!1284959 (lemmaSamePrefixThenSameSuffix!1530 lt!1284987 (_2!22466 lt!1284940) lt!1284987 lt!1284989 lt!1284950))))

(assert (=> b!3678238 (= lt!1284989 (getSuffix!1756 lt!1284950 lt!1284987))))

(declare-fun lt!1284954 () Int)

(declare-fun lt!1284985 () TokenValue!6070)

(assert (=> b!3678238 (= lt!1284944 (Some!8307 (tuple2!38665 (Token!11047 lt!1284985 (rule!8674 (_1!22466 lt!1284940)) lt!1284954 lt!1284987) (_2!22466 lt!1284940))))))

(declare-fun maxPrefixOneRule!2101 (LexerInterface!5429 Rule!11480 List!38920) Option!8308)

(assert (=> b!3678238 (= lt!1284944 (maxPrefixOneRule!2101 thiss!23823 (rule!8674 (_1!22466 lt!1284940)) lt!1284950))))

(declare-fun size!29663 (List!38920) Int)

(assert (=> b!3678238 (= lt!1284954 (size!29663 lt!1284987))))

(assert (=> b!3678238 (= lt!1284985 (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) (seqFromList!4389 lt!1284987)))))

(declare-fun lt!1284936 () Unit!56714)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1157 (LexerInterface!5429 List!38921 List!38920 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> b!3678238 (= lt!1284936 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1157 thiss!23823 rules!3307 lt!1284987 lt!1284950 (_2!22466 lt!1284940) (rule!8674 (_1!22466 lt!1284940))))))

(declare-fun e!2277612 () Bool)

(assert (=> b!3678239 (= e!2277612 (and tp!1118435 tp!1118436))))

(declare-fun b!3678240 () Bool)

(declare-fun res!1494254 () Bool)

(assert (=> b!3678240 (=> (not res!1494254) (not e!2277615))))

(declare-fun isEmpty!23039 (List!38921) Bool)

(assert (=> b!3678240 (= res!1494254 (not (isEmpty!23039 rules!3307)))))

(declare-fun b!3678241 () Bool)

(declare-fun res!1494252 () Bool)

(assert (=> b!3678241 (=> (not res!1494252) (not e!2277615))))

(declare-fun rulesInvariant!4826 (LexerInterface!5429 List!38921) Bool)

(assert (=> b!3678241 (= res!1494252 (rulesInvariant!4826 thiss!23823 rules!3307))))

(declare-fun e!2277640 () Bool)

(assert (=> b!3678242 (= e!2277640 (and tp!1118432 tp!1118444))))

(declare-fun bm!266399 () Bool)

(declare-fun call!266407 () Bool)

(declare-fun call!266406 () List!38920)

(assert (=> bm!266399 (= call!266407 (contains!7748 call!266406 lt!1284967))))

(declare-fun b!3678243 () Bool)

(declare-fun e!2277625 () Bool)

(declare-fun lt!1284956 () Rule!11480)

(assert (=> b!3678243 (= e!2277625 (= (rule!8674 (_1!22466 lt!1284940)) lt!1284956))))

(declare-fun b!3678244 () Bool)

(declare-fun e!2277631 () Bool)

(declare-fun tp_is_empty!18281 () Bool)

(declare-fun tp!1118437 () Bool)

(assert (=> b!3678244 (= e!2277631 (and tp_is_empty!18281 tp!1118437))))

(declare-fun b!3678245 () Bool)

(declare-fun e!2277643 () Bool)

(declare-fun tp!1118445 () Bool)

(declare-fun e!2277617 () Bool)

(declare-fun token!511 () Token!11046)

(declare-fun inv!21 (TokenValue!6070) Bool)

(assert (=> b!3678245 (= e!2277617 (and (inv!21 (value!186900 token!511)) e!2277643 tp!1118445))))

(declare-fun b!3678246 () Bool)

(declare-fun res!1494248 () Bool)

(assert (=> b!3678246 (=> (not res!1494248) (not e!2277615))))

(assert (=> b!3678246 (= res!1494248 (contains!7747 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3678247 () Bool)

(assert (=> b!3678247 false))

(declare-fun lt!1284941 () Unit!56714)

(declare-fun call!266404 () Unit!56714)

(assert (=> b!3678247 (= lt!1284941 call!266404)))

(assert (=> b!3678247 (not call!266407)))

(declare-fun lt!1284960 () Unit!56714)

(assert (=> b!3678247 (= lt!1284960 (lemmaSepRuleNotContainsCharContainedInANonSepRule!368 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8674 (_1!22466 lt!1284940)) lt!1284967))))

(declare-fun e!2277619 () Unit!56714)

(declare-fun Unit!56722 () Unit!56714)

(assert (=> b!3678247 (= e!2277619 Unit!56722)))

(declare-fun b!3678248 () Bool)

(declare-fun e!2277621 () Bool)

(assert (=> b!3678248 (= e!2277621 (not e!2277616))))

(declare-fun res!1494261 () Bool)

(assert (=> b!3678248 (=> res!1494261 e!2277616)))

(assert (=> b!3678248 (= res!1494261 (not (matchR!5168 (regex!5840 rule!403) lt!1284983)))))

(declare-fun ruleValid!2104 (LexerInterface!5429 Rule!11480) Bool)

(assert (=> b!3678248 (ruleValid!2104 thiss!23823 rule!403)))

(declare-fun lt!1284970 () Unit!56714)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1258 (LexerInterface!5429 Rule!11480 List!38921) Unit!56714)

(assert (=> b!3678248 (= lt!1284970 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1258 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3678249 () Bool)

(assert (=> b!3678249 false))

(declare-fun lt!1284973 () Unit!56714)

(assert (=> b!3678249 (= lt!1284973 call!266404)))

(assert (=> b!3678249 (not call!266407)))

(declare-fun lt!1284958 () Unit!56714)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!486 (LexerInterface!5429 List!38921 List!38921 Rule!11480 Rule!11480 C!21384) Unit!56714)

(assert (=> b!3678249 (= lt!1284958 (lemmaNonSepRuleNotContainsCharContainedInASepRule!486 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) anOtherTypeRule!33 lt!1284967))))

(declare-fun Unit!56723 () Unit!56714)

(assert (=> b!3678249 (= e!2277619 Unit!56723)))

(declare-fun bm!266400 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (Regex!10599 List!38920 C!21384) Unit!56714)

(assert (=> bm!266400 (= call!266408 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284963))))

(declare-fun b!3678250 () Bool)

(declare-fun res!1494262 () Bool)

(assert (=> b!3678250 (=> res!1494262 e!2277636)))

(declare-fun sepAndNonSepRulesDisjointChars!2008 (List!38921 List!38921) Bool)

(assert (=> b!3678250 (= res!1494262 (not (sepAndNonSepRulesDisjointChars!2008 rules!3307 rules!3307)))))

(declare-fun b!3678251 () Bool)

(declare-fun res!1494244 () Bool)

(assert (=> b!3678251 (=> res!1494244 e!2277633)))

(assert (=> b!3678251 (= res!1494244 (not (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987)))))

(declare-fun tp!1118433 () Bool)

(declare-fun b!3678252 () Bool)

(declare-fun e!2277645 () Bool)

(assert (=> b!3678252 (= e!2277645 (and tp!1118433 (inv!52287 (tag!6640 anOtherTypeRule!33)) (inv!52290 (transformation!5840 anOtherTypeRule!33)) e!2277640))))

(declare-fun b!3678253 () Bool)

(declare-fun e!2277641 () Unit!56714)

(declare-fun Unit!56724 () Unit!56714)

(assert (=> b!3678253 (= e!2277641 Unit!56724)))

(declare-fun b!3678226 () Bool)

(declare-fun e!2277613 () Bool)

(assert (=> b!3678226 (= e!2277615 e!2277613)))

(declare-fun res!1494255 () Bool)

(assert (=> b!3678226 (=> (not res!1494255) (not e!2277613))))

(declare-fun lt!1284943 () Option!8308)

(declare-fun isDefined!6541 (Option!8308) Bool)

(assert (=> b!3678226 (= res!1494255 (isDefined!6541 lt!1284943))))

(assert (=> b!3678226 (= lt!1284943 (maxPrefix!2963 thiss!23823 rules!3307 lt!1284983))))

(declare-fun lt!1284953 () BalanceConc!23364)

(assert (=> b!3678226 (= lt!1284983 (list!14418 lt!1284953))))

(assert (=> b!3678226 (= lt!1284953 (charsOf!3854 token!511))))

(declare-fun res!1494257 () Bool)

(assert (=> start!345026 (=> (not res!1494257) (not e!2277615))))

(get-info :version)

(assert (=> start!345026 (= res!1494257 ((_ is Lexer!5427) thiss!23823))))

(assert (=> start!345026 e!2277615))

(assert (=> start!345026 e!2277618))

(assert (=> start!345026 e!2277631))

(assert (=> start!345026 true))

(declare-fun inv!52291 (Token!11046) Bool)

(assert (=> start!345026 (and (inv!52291 token!511) e!2277617)))

(assert (=> start!345026 e!2277629))

(assert (=> start!345026 e!2277645))

(declare-fun b!3678254 () Bool)

(declare-fun e!2277622 () Unit!56714)

(declare-fun Unit!56725 () Unit!56714)

(assert (=> b!3678254 (= e!2277622 Unit!56725)))

(declare-fun b!3678255 () Bool)

(declare-fun e!2277639 () Unit!56714)

(declare-fun Unit!56726 () Unit!56714)

(assert (=> b!3678255 (= e!2277639 Unit!56726)))

(declare-fun b!3678256 () Bool)

(declare-fun Unit!56727 () Unit!56714)

(assert (=> b!3678256 (= e!2277623 Unit!56727)))

(declare-fun b!3678257 () Bool)

(declare-fun Unit!56728 () Unit!56714)

(assert (=> b!3678257 (= e!2277644 Unit!56728)))

(declare-fun bm!266401 () Bool)

(assert (=> bm!266401 (= call!266404 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284967))))

(declare-fun b!3678258 () Bool)

(declare-fun res!1494260 () Bool)

(assert (=> b!3678258 (=> res!1494260 e!2277636)))

(assert (=> b!3678258 (= res!1494260 (not (contains!7748 (usedCharacters!1052 (regex!5840 anOtherTypeRule!33)) lt!1284967)))))

(declare-fun b!3678259 () Bool)

(declare-fun Unit!56729 () Unit!56714)

(assert (=> b!3678259 (= e!2277641 Unit!56729)))

(declare-fun lt!1284969 () Unit!56714)

(assert (=> b!3678259 (= lt!1284969 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 rule!403) lt!1284983 lt!1284963))))

(assert (=> b!3678259 false))

(declare-fun b!3678260 () Bool)

(assert (=> b!3678260 (= e!2277642 e!2277625)))

(declare-fun res!1494253 () Bool)

(assert (=> b!3678260 (=> (not res!1494253) (not e!2277625))))

(assert (=> b!3678260 (= res!1494253 (matchR!5168 (regex!5840 lt!1284956) (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))))))

(declare-fun get!12839 (Option!8309) Rule!11480)

(assert (=> b!3678260 (= lt!1284956 (get!12839 lt!1284990))))

(declare-fun b!3678261 () Bool)

(declare-fun res!1494250 () Bool)

(assert (=> b!3678261 (=> (not res!1494250) (not e!2277621))))

(declare-fun lt!1284966 () tuple2!38664)

(assert (=> b!3678261 (= res!1494250 (isEmpty!23038 (_2!22466 lt!1284966)))))

(declare-fun b!3678262 () Bool)

(assert (=> b!3678262 (= e!2277647 e!2277637)))

(declare-fun c!636166 () Bool)

(assert (=> b!3678262 (= c!636166 (not (isSeparator!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3678263 () Bool)

(assert (=> b!3678263 (= e!2277622 e!2277619)))

(declare-fun lt!1284957 () Unit!56714)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!148 (List!38920 List!38920 List!38920 List!38920) Unit!56714)

(assert (=> b!3678263 (= lt!1284957 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!148 lt!1284983 suffix!1395 lt!1284987 lt!1284950))))

(assert (=> b!3678263 (contains!7748 lt!1284987 lt!1284967)))

(declare-fun c!636172 () Bool)

(assert (=> b!3678263 (= c!636172 (isSeparator!5840 rule!403))))

(declare-fun b!3678264 () Bool)

(declare-fun Unit!56730 () Unit!56714)

(assert (=> b!3678264 (= e!2277639 Unit!56730)))

(declare-fun lt!1284962 () Int)

(declare-fun getIndex!508 (List!38921 Rule!11480) Int)

(assert (=> b!3678264 (= lt!1284962 (getIndex!508 rules!3307 (rule!8674 (_1!22466 lt!1284940))))))

(declare-fun lt!1284951 () Int)

(assert (=> b!3678264 (= lt!1284951 (getIndex!508 rules!3307 rule!403))))

(declare-fun c!636165 () Bool)

(assert (=> b!3678264 (= c!636165 (< lt!1284962 lt!1284951))))

(declare-fun lt!1284974 () Unit!56714)

(assert (=> b!3678264 (= lt!1284974 e!2277635)))

(declare-fun c!636167 () Bool)

(assert (=> b!3678264 (= c!636167 (< lt!1284951 lt!1284962))))

(declare-fun lt!1284978 () Unit!56714)

(assert (=> b!3678264 (= lt!1284978 e!2277644)))

(declare-fun lt!1284934 () Unit!56714)

(declare-fun lemmaSameIndexThenSameElement!240 (List!38921 Rule!11480 Rule!11480) Unit!56714)

(assert (=> b!3678264 (= lt!1284934 (lemmaSameIndexThenSameElement!240 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403))))

(assert (=> b!3678264 false))

(declare-fun e!2277634 () Bool)

(declare-fun tp!1118441 () Bool)

(declare-fun b!3678265 () Bool)

(assert (=> b!3678265 (= e!2277624 (and tp!1118441 (inv!52287 (tag!6640 (h!44217 rules!3307))) (inv!52290 (transformation!5840 (h!44217 rules!3307))) e!2277634))))

(declare-fun tp!1118439 () Bool)

(declare-fun b!3678266 () Bool)

(assert (=> b!3678266 (= e!2277643 (and tp!1118439 (inv!52287 (tag!6640 (rule!8674 token!511))) (inv!52290 (transformation!5840 (rule!8674 token!511))) e!2277612))))

(declare-fun b!3678267 () Bool)

(declare-fun res!1494249 () Bool)

(assert (=> b!3678267 (=> (not res!1494249) (not e!2277621))))

(assert (=> b!3678267 (= res!1494249 (= (rule!8674 token!511) rule!403))))

(declare-fun lt!1284984 () List!38920)

(declare-fun b!3678268 () Bool)

(assert (=> b!3678268 (= e!2277614 (= (++!9656 lt!1284983 lt!1284984) lt!1284950))))

(assert (=> b!3678268 (= (maxPrefixOneRule!2101 thiss!23823 rule!403 lt!1284950) (Some!8307 (tuple2!38665 (Token!11047 (apply!9342 (transformation!5840 rule!403) (seqFromList!4389 lt!1284983)) rule!403 (size!29663 lt!1284983) lt!1284983) lt!1284984)))))

(declare-fun lt!1284982 () Unit!56714)

(assert (=> b!3678268 (= lt!1284982 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1157 thiss!23823 rules!3307 lt!1284983 lt!1284950 lt!1284984 rule!403))))

(assert (=> b!3678268 (= lt!1284984 (getSuffix!1756 lt!1284950 lt!1284983))))

(declare-fun lt!1284942 () Unit!56714)

(assert (=> b!3678268 (= lt!1284942 e!2277639)))

(declare-fun c!636170 () Bool)

(assert (=> b!3678268 (= c!636170 (not (= (rule!8674 (_1!22466 lt!1284940)) (rule!8674 token!511))))))

(assert (=> b!3678268 (= lt!1284987 lt!1284983)))

(declare-fun lt!1284946 () Unit!56714)

(declare-fun lemmaIsPrefixSameLengthThenSameList!665 (List!38920 List!38920 List!38920) Unit!56714)

(assert (=> b!3678268 (= lt!1284946 (lemmaIsPrefixSameLengthThenSameList!665 lt!1284987 lt!1284983 lt!1284950))))

(declare-fun lt!1284964 () Unit!56714)

(assert (=> b!3678268 (= lt!1284964 e!2277626)))

(declare-fun c!636169 () Bool)

(declare-fun lt!1284971 () Int)

(assert (=> b!3678268 (= c!636169 (< lt!1284976 lt!1284971))))

(declare-fun lt!1284972 () Unit!56714)

(assert (=> b!3678268 (= lt!1284972 e!2277622)))

(declare-fun c!636164 () Bool)

(assert (=> b!3678268 (= c!636164 (> lt!1284976 lt!1284971))))

(assert (=> b!3678268 (= lt!1284971 (size!29662 lt!1284953))))

(declare-fun lt!1284977 () Unit!56714)

(assert (=> b!3678268 (= lt!1284977 e!2277647)))

(declare-fun c!636168 () Bool)

(assert (=> b!3678268 (= c!636168 (isSeparator!5840 rule!403))))

(declare-fun lt!1284937 () Unit!56714)

(assert (=> b!3678268 (= lt!1284937 e!2277641)))

(declare-fun c!636171 () Bool)

(assert (=> b!3678268 (= c!636171 (not (contains!7748 lt!1284949 lt!1284963)))))

(assert (=> b!3678268 (= lt!1284963 (head!7890 lt!1284987))))

(assert (=> b!3678269 (= e!2277648 (and tp!1118446 tp!1118434))))

(declare-fun b!3678270 () Bool)

(assert (=> b!3678270 (= e!2277613 e!2277621)))

(declare-fun res!1494256 () Bool)

(assert (=> b!3678270 (=> (not res!1494256) (not e!2277621))))

(assert (=> b!3678270 (= res!1494256 (= (_1!22466 lt!1284966) token!511))))

(assert (=> b!3678270 (= lt!1284966 (get!12838 lt!1284943))))

(declare-fun b!3678271 () Bool)

(assert (=> b!3678271 false))

(declare-fun lt!1284939 () Unit!56714)

(assert (=> b!3678271 (= lt!1284939 call!266408)))

(assert (=> b!3678271 (not call!266405)))

(declare-fun lt!1284965 () Unit!56714)

(assert (=> b!3678271 (= lt!1284965 (lemmaNonSepRuleNotContainsCharContainedInASepRule!486 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403 lt!1284963))))

(declare-fun Unit!56731 () Unit!56714)

(assert (=> b!3678271 (= e!2277637 Unit!56731)))

(assert (=> b!3678272 (= e!2277634 (and tp!1118442 tp!1118440))))

(declare-fun b!3678273 () Bool)

(declare-fun Unit!56732 () Unit!56714)

(assert (=> b!3678273 (= e!2277635 Unit!56732)))

(declare-fun b!3678274 () Bool)

(declare-fun Unit!56733 () Unit!56714)

(assert (=> b!3678274 (= e!2277626 Unit!56733)))

(declare-fun bm!266402 () Bool)

(assert (=> bm!266402 (= call!266403 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun bm!266403 () Bool)

(assert (=> bm!266403 (= call!266406 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(assert (= (and start!345026 res!1494257) b!3678240))

(assert (= (and b!3678240 res!1494254) b!3678241))

(assert (= (and b!3678241 res!1494252) b!3678231))

(assert (= (and b!3678231 res!1494264) b!3678246))

(assert (= (and b!3678246 res!1494248) b!3678233))

(assert (= (and b!3678233 res!1494259) b!3678226))

(assert (= (and b!3678226 res!1494255) b!3678270))

(assert (= (and b!3678270 res!1494256) b!3678261))

(assert (= (and b!3678261 res!1494250) b!3678267))

(assert (= (and b!3678267 res!1494249) b!3678248))

(assert (= (and b!3678248 (not res!1494261)) b!3678227))

(assert (= (and b!3678227 (not res!1494243)) b!3678235))

(assert (= (and b!3678235 (not res!1494263)) b!3678258))

(assert (= (and b!3678258 (not res!1494260)) b!3678250))

(assert (= (and b!3678250 (not res!1494262)) b!3678228))

(assert (= (and b!3678228 res!1494251) b!3678260))

(assert (= (and b!3678260 res!1494253) b!3678243))

(assert (= (and b!3678228 (not res!1494258)) b!3678251))

(assert (= (and b!3678251 (not res!1494244)) b!3678224))

(assert (= (and b!3678224 (not res!1494247)) b!3678238))

(assert (= (and b!3678238 (not res!1494246)) b!3678268))

(assert (= (and b!3678268 c!636171) b!3678259))

(assert (= (and b!3678268 (not c!636171)) b!3678253))

(assert (= (and b!3678268 c!636168) b!3678262))

(assert (= (and b!3678268 (not c!636168)) b!3678223))

(assert (= (and b!3678262 c!636166) b!3678271))

(assert (= (and b!3678262 (not c!636166)) b!3678237))

(assert (= (and b!3678223 c!636173) b!3678229))

(assert (= (and b!3678223 (not c!636173)) b!3678256))

(assert (= (or b!3678271 b!3678229) bm!266400))

(assert (= (or b!3678271 b!3678229) bm!266402))

(assert (= (or b!3678271 b!3678229) bm!266398))

(assert (= (and b!3678268 c!636164) b!3678263))

(assert (= (and b!3678268 (not c!636164)) b!3678254))

(assert (= (and b!3678263 c!636172) b!3678247))

(assert (= (and b!3678263 (not c!636172)) b!3678249))

(assert (= (or b!3678247 b!3678249) bm!266401))

(assert (= (or b!3678247 b!3678249) bm!266403))

(assert (= (or b!3678247 b!3678249) bm!266399))

(assert (= (and b!3678268 c!636169) b!3678234))

(assert (= (and b!3678268 (not c!636169)) b!3678274))

(assert (= (and b!3678268 c!636170) b!3678264))

(assert (= (and b!3678268 (not c!636170)) b!3678255))

(assert (= (and b!3678264 c!636165) b!3678230))

(assert (= (and b!3678264 (not c!636165)) b!3678273))

(assert (= (and b!3678230 res!1494245) b!3678225))

(assert (= (and b!3678264 c!636167) b!3678232))

(assert (= (and b!3678264 (not c!636167)) b!3678257))

(assert (= b!3678265 b!3678272))

(assert (= b!3678222 b!3678265))

(assert (= (and start!345026 ((_ is Cons!38797) rules!3307)) b!3678222))

(assert (= (and start!345026 ((_ is Cons!38796) suffix!1395)) b!3678244))

(assert (= b!3678266 b!3678239))

(assert (= b!3678245 b!3678266))

(assert (= start!345026 b!3678245))

(assert (= b!3678236 b!3678269))

(assert (= start!345026 b!3678236))

(assert (= b!3678252 b!3678242))

(assert (= start!345026 b!3678252))

(declare-fun m!4188111 () Bool)

(assert (=> b!3678247 m!4188111))

(declare-fun m!4188113 () Bool)

(assert (=> b!3678246 m!4188113))

(declare-fun m!4188115 () Bool)

(assert (=> b!3678259 m!4188115))

(declare-fun m!4188117 () Bool)

(assert (=> b!3678261 m!4188117))

(declare-fun m!4188119 () Bool)

(assert (=> b!3678232 m!4188119))

(declare-fun m!4188121 () Bool)

(assert (=> b!3678231 m!4188121))

(declare-fun m!4188123 () Bool)

(assert (=> bm!266403 m!4188123))

(declare-fun m!4188125 () Bool)

(assert (=> b!3678227 m!4188125))

(declare-fun m!4188127 () Bool)

(assert (=> bm!266400 m!4188127))

(declare-fun m!4188129 () Bool)

(assert (=> b!3678224 m!4188129))

(declare-fun m!4188131 () Bool)

(assert (=> b!3678224 m!4188131))

(declare-fun m!4188133 () Bool)

(assert (=> b!3678224 m!4188133))

(assert (=> b!3678224 m!4188129))

(declare-fun m!4188135 () Bool)

(assert (=> b!3678224 m!4188135))

(declare-fun m!4188137 () Bool)

(assert (=> b!3678224 m!4188137))

(declare-fun m!4188139 () Bool)

(assert (=> b!3678224 m!4188139))

(declare-fun m!4188141 () Bool)

(assert (=> b!3678271 m!4188141))

(declare-fun m!4188143 () Bool)

(assert (=> b!3678238 m!4188143))

(declare-fun m!4188145 () Bool)

(assert (=> b!3678238 m!4188145))

(declare-fun m!4188147 () Bool)

(assert (=> b!3678238 m!4188147))

(declare-fun m!4188149 () Bool)

(assert (=> b!3678238 m!4188149))

(declare-fun m!4188151 () Bool)

(assert (=> b!3678238 m!4188151))

(declare-fun m!4188153 () Bool)

(assert (=> b!3678238 m!4188153))

(assert (=> b!3678238 m!4188151))

(declare-fun m!4188155 () Bool)

(assert (=> b!3678238 m!4188155))

(declare-fun m!4188157 () Bool)

(assert (=> b!3678251 m!4188157))

(declare-fun m!4188159 () Bool)

(assert (=> b!3678266 m!4188159))

(declare-fun m!4188161 () Bool)

(assert (=> b!3678266 m!4188161))

(declare-fun m!4188163 () Bool)

(assert (=> b!3678228 m!4188163))

(declare-fun m!4188165 () Bool)

(assert (=> b!3678228 m!4188165))

(declare-fun m!4188167 () Bool)

(assert (=> b!3678228 m!4188167))

(assert (=> b!3678228 m!4188165))

(declare-fun m!4188169 () Bool)

(assert (=> b!3678228 m!4188169))

(declare-fun m!4188171 () Bool)

(assert (=> b!3678228 m!4188171))

(declare-fun m!4188173 () Bool)

(assert (=> b!3678228 m!4188173))

(declare-fun m!4188175 () Bool)

(assert (=> b!3678228 m!4188175))

(declare-fun m!4188177 () Bool)

(assert (=> b!3678228 m!4188177))

(declare-fun m!4188179 () Bool)

(assert (=> b!3678228 m!4188179))

(declare-fun m!4188181 () Bool)

(assert (=> b!3678228 m!4188181))

(declare-fun m!4188183 () Bool)

(assert (=> b!3678228 m!4188183))

(declare-fun m!4188185 () Bool)

(assert (=> b!3678228 m!4188185))

(declare-fun m!4188187 () Bool)

(assert (=> b!3678228 m!4188187))

(declare-fun m!4188189 () Bool)

(assert (=> b!3678228 m!4188189))

(declare-fun m!4188191 () Bool)

(assert (=> b!3678228 m!4188191))

(declare-fun m!4188193 () Bool)

(assert (=> b!3678240 m!4188193))

(declare-fun m!4188195 () Bool)

(assert (=> b!3678268 m!4188195))

(declare-fun m!4188197 () Bool)

(assert (=> b!3678268 m!4188197))

(declare-fun m!4188199 () Bool)

(assert (=> b!3678268 m!4188199))

(declare-fun m!4188201 () Bool)

(assert (=> b!3678268 m!4188201))

(declare-fun m!4188203 () Bool)

(assert (=> b!3678268 m!4188203))

(declare-fun m!4188205 () Bool)

(assert (=> b!3678268 m!4188205))

(declare-fun m!4188207 () Bool)

(assert (=> b!3678268 m!4188207))

(assert (=> b!3678268 m!4188195))

(declare-fun m!4188209 () Bool)

(assert (=> b!3678268 m!4188209))

(declare-fun m!4188211 () Bool)

(assert (=> b!3678268 m!4188211))

(declare-fun m!4188213 () Bool)

(assert (=> b!3678268 m!4188213))

(declare-fun m!4188215 () Bool)

(assert (=> b!3678268 m!4188215))

(declare-fun m!4188217 () Bool)

(assert (=> bm!266399 m!4188217))

(declare-fun m!4188219 () Bool)

(assert (=> b!3678236 m!4188219))

(declare-fun m!4188221 () Bool)

(assert (=> b!3678236 m!4188221))

(declare-fun m!4188223 () Bool)

(assert (=> start!345026 m!4188223))

(assert (=> bm!266402 m!4188123))

(declare-fun m!4188225 () Bool)

(assert (=> b!3678229 m!4188225))

(declare-fun m!4188227 () Bool)

(assert (=> b!3678252 m!4188227))

(declare-fun m!4188229 () Bool)

(assert (=> b!3678252 m!4188229))

(declare-fun m!4188231 () Bool)

(assert (=> b!3678270 m!4188231))

(declare-fun m!4188233 () Bool)

(assert (=> b!3678250 m!4188233))

(declare-fun m!4188235 () Bool)

(assert (=> b!3678235 m!4188235))

(declare-fun m!4188237 () Bool)

(assert (=> b!3678235 m!4188237))

(declare-fun m!4188239 () Bool)

(assert (=> b!3678235 m!4188239))

(declare-fun m!4188241 () Bool)

(assert (=> bm!266398 m!4188241))

(declare-fun m!4188243 () Bool)

(assert (=> b!3678245 m!4188243))

(declare-fun m!4188245 () Bool)

(assert (=> b!3678226 m!4188245))

(declare-fun m!4188247 () Bool)

(assert (=> b!3678226 m!4188247))

(declare-fun m!4188249 () Bool)

(assert (=> b!3678226 m!4188249))

(declare-fun m!4188251 () Bool)

(assert (=> b!3678226 m!4188251))

(declare-fun m!4188253 () Bool)

(assert (=> b!3678263 m!4188253))

(declare-fun m!4188255 () Bool)

(assert (=> b!3678263 m!4188255))

(declare-fun m!4188257 () Bool)

(assert (=> b!3678248 m!4188257))

(declare-fun m!4188259 () Bool)

(assert (=> b!3678248 m!4188259))

(declare-fun m!4188261 () Bool)

(assert (=> b!3678248 m!4188261))

(assert (=> b!3678260 m!4188189))

(assert (=> b!3678260 m!4188189))

(declare-fun m!4188263 () Bool)

(assert (=> b!3678260 m!4188263))

(assert (=> b!3678260 m!4188263))

(declare-fun m!4188265 () Bool)

(assert (=> b!3678260 m!4188265))

(declare-fun m!4188267 () Bool)

(assert (=> b!3678260 m!4188267))

(declare-fun m!4188269 () Bool)

(assert (=> b!3678265 m!4188269))

(declare-fun m!4188271 () Bool)

(assert (=> b!3678265 m!4188271))

(declare-fun m!4188273 () Bool)

(assert (=> b!3678264 m!4188273))

(declare-fun m!4188275 () Bool)

(assert (=> b!3678264 m!4188275))

(declare-fun m!4188277 () Bool)

(assert (=> b!3678264 m!4188277))

(declare-fun m!4188279 () Bool)

(assert (=> b!3678230 m!4188279))

(declare-fun m!4188281 () Bool)

(assert (=> b!3678230 m!4188281))

(declare-fun m!4188283 () Bool)

(assert (=> b!3678230 m!4188283))

(declare-fun m!4188285 () Bool)

(assert (=> b!3678230 m!4188285))

(assert (=> b!3678230 m!4188281))

(declare-fun m!4188287 () Bool)

(assert (=> b!3678230 m!4188287))

(declare-fun m!4188289 () Bool)

(assert (=> b!3678258 m!4188289))

(assert (=> b!3678258 m!4188289))

(declare-fun m!4188291 () Bool)

(assert (=> b!3678258 m!4188291))

(declare-fun m!4188293 () Bool)

(assert (=> b!3678249 m!4188293))

(declare-fun m!4188295 () Bool)

(assert (=> b!3678234 m!4188295))

(declare-fun m!4188297 () Bool)

(assert (=> bm!266401 m!4188297))

(declare-fun m!4188299 () Bool)

(assert (=> b!3678241 m!4188299))

(check-sat b_and!274551 (not b!3678268) (not b!3678222) (not b!3678247) (not b!3678271) (not b_next!98083) (not b!3678234) b_and!274553 (not b_next!98093) (not b_next!98085) (not b!3678245) (not bm!266400) (not b!3678265) (not b!3678246) b_and!274561 (not b_next!98087) (not start!345026) (not b!3678251) b_and!274555 (not b!3678231) (not b!3678261) (not b_next!98089) (not b!3678241) (not b!3678249) (not b!3678263) (not b!3678227) (not b!3678232) (not b!3678228) (not b!3678235) (not bm!266399) b_and!274549 (not b_next!98095) (not b!3678252) (not bm!266403) (not b!3678244) (not b!3678266) (not b_next!98091) (not b!3678226) b_and!274557 (not b!3678240) (not bm!266398) (not bm!266401) (not bm!266402) (not b!3678270) (not b!3678250) (not b_next!98081) (not b!3678264) (not b!3678258) tp_is_empty!18281 (not b!3678259) (not b!3678230) (not b!3678236) b_and!274559 b_and!274547 (not b!3678229) (not b!3678238) (not b!3678260) (not b!3678248) (not b!3678224))
(check-sat (not b_next!98085) b_and!274551 b_and!274555 (not b_next!98089) b_and!274549 (not b_next!98095) (not b_next!98091) b_and!274557 (not b_next!98081) (not b_next!98083) b_and!274553 (not b_next!98093) b_and!274561 (not b_next!98087) b_and!274559 b_and!274547)
(get-model)

(declare-fun d!1079835 () Bool)

(declare-fun res!1494289 () Bool)

(declare-fun e!2277684 () Bool)

(assert (=> d!1079835 (=> (not res!1494289) (not e!2277684))))

(declare-fun rulesValid!2250 (LexerInterface!5429 List!38921) Bool)

(assert (=> d!1079835 (= res!1494289 (rulesValid!2250 thiss!23823 rules!3307))))

(assert (=> d!1079835 (= (rulesInvariant!4826 thiss!23823 rules!3307) e!2277684)))

(declare-fun b!3678333 () Bool)

(declare-datatypes ((List!38923 0))(
  ( (Nil!38799) (Cons!38799 (h!44219 String!43684) (t!300538 List!38923)) )
))
(declare-fun noDuplicateTag!2246 (LexerInterface!5429 List!38921 List!38923) Bool)

(assert (=> b!3678333 (= e!2277684 (noDuplicateTag!2246 thiss!23823 rules!3307 Nil!38799))))

(assert (= (and d!1079835 res!1494289) b!3678333))

(declare-fun m!4188345 () Bool)

(assert (=> d!1079835 m!4188345))

(declare-fun m!4188347 () Bool)

(assert (=> b!3678333 m!4188347))

(assert (=> b!3678241 d!1079835))

(declare-fun b!3678391 () Bool)

(declare-fun res!1494327 () Bool)

(declare-fun e!2277717 () Bool)

(assert (=> b!3678391 (=> res!1494327 e!2277717)))

(declare-fun e!2277716 () Bool)

(assert (=> b!3678391 (= res!1494327 e!2277716)))

(declare-fun res!1494329 () Bool)

(assert (=> b!3678391 (=> (not res!1494329) (not e!2277716))))

(declare-fun lt!1285029 () Bool)

(assert (=> b!3678391 (= res!1494329 lt!1285029)))

(declare-fun b!3678392 () Bool)

(declare-fun e!2277719 () Bool)

(assert (=> b!3678392 (= e!2277717 e!2277719)))

(declare-fun res!1494328 () Bool)

(assert (=> b!3678392 (=> (not res!1494328) (not e!2277719))))

(assert (=> b!3678392 (= res!1494328 (not lt!1285029))))

(declare-fun b!3678393 () Bool)

(assert (=> b!3678393 (= e!2277716 (= (head!7890 (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))) (c!636174 (regex!5840 lt!1284956))))))

(declare-fun b!3678394 () Bool)

(declare-fun e!2277714 () Bool)

(declare-fun nullable!3693 (Regex!10599) Bool)

(assert (=> b!3678394 (= e!2277714 (nullable!3693 (regex!5840 lt!1284956)))))

(declare-fun b!3678395 () Bool)

(declare-fun res!1494330 () Bool)

(declare-fun e!2277720 () Bool)

(assert (=> b!3678395 (=> res!1494330 e!2277720)))

(declare-fun tail!5691 (List!38920) List!38920)

(assert (=> b!3678395 (= res!1494330 (not (isEmpty!23038 (tail!5691 (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))))))))

(declare-fun b!3678396 () Bool)

(assert (=> b!3678396 (= e!2277720 (not (= (head!7890 (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))) (c!636174 (regex!5840 lt!1284956)))))))

(declare-fun b!3678397 () Bool)

(declare-fun res!1494332 () Bool)

(assert (=> b!3678397 (=> res!1494332 e!2277717)))

(assert (=> b!3678397 (= res!1494332 (not ((_ is ElementMatch!10599) (regex!5840 lt!1284956))))))

(declare-fun e!2277715 () Bool)

(assert (=> b!3678397 (= e!2277715 e!2277717)))

(declare-fun b!3678398 () Bool)

(assert (=> b!3678398 (= e!2277719 e!2277720)))

(declare-fun res!1494334 () Bool)

(assert (=> b!3678398 (=> res!1494334 e!2277720)))

(declare-fun call!266423 () Bool)

(assert (=> b!3678398 (= res!1494334 call!266423)))

(declare-fun b!3678399 () Bool)

(declare-fun res!1494333 () Bool)

(assert (=> b!3678399 (=> (not res!1494333) (not e!2277716))))

(assert (=> b!3678399 (= res!1494333 (isEmpty!23038 (tail!5691 (list!14418 (charsOf!3854 (_1!22466 lt!1284940))))))))

(declare-fun d!1079837 () Bool)

(declare-fun e!2277718 () Bool)

(assert (=> d!1079837 e!2277718))

(declare-fun c!636204 () Bool)

(assert (=> d!1079837 (= c!636204 ((_ is EmptyExpr!10599) (regex!5840 lt!1284956)))))

(assert (=> d!1079837 (= lt!1285029 e!2277714)))

(declare-fun c!636205 () Bool)

(assert (=> d!1079837 (= c!636205 (isEmpty!23038 (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))))))

(declare-fun validRegex!4855 (Regex!10599) Bool)

(assert (=> d!1079837 (validRegex!4855 (regex!5840 lt!1284956))))

(assert (=> d!1079837 (= (matchR!5168 (regex!5840 lt!1284956) (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))) lt!1285029)))

(declare-fun b!3678400 () Bool)

(declare-fun res!1494331 () Bool)

(assert (=> b!3678400 (=> (not res!1494331) (not e!2277716))))

(assert (=> b!3678400 (= res!1494331 (not call!266423))))

(declare-fun b!3678401 () Bool)

(assert (=> b!3678401 (= e!2277715 (not lt!1285029))))

(declare-fun b!3678402 () Bool)

(assert (=> b!3678402 (= e!2277718 (= lt!1285029 call!266423))))

(declare-fun b!3678403 () Bool)

(declare-fun derivativeStep!3242 (Regex!10599 C!21384) Regex!10599)

(assert (=> b!3678403 (= e!2277714 (matchR!5168 (derivativeStep!3242 (regex!5840 lt!1284956) (head!7890 (list!14418 (charsOf!3854 (_1!22466 lt!1284940))))) (tail!5691 (list!14418 (charsOf!3854 (_1!22466 lt!1284940))))))))

(declare-fun b!3678404 () Bool)

(assert (=> b!3678404 (= e!2277718 e!2277715)))

(declare-fun c!636203 () Bool)

(assert (=> b!3678404 (= c!636203 ((_ is EmptyLang!10599) (regex!5840 lt!1284956)))))

(declare-fun bm!266418 () Bool)

(assert (=> bm!266418 (= call!266423 (isEmpty!23038 (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))))))

(assert (= (and d!1079837 c!636205) b!3678394))

(assert (= (and d!1079837 (not c!636205)) b!3678403))

(assert (= (and d!1079837 c!636204) b!3678402))

(assert (= (and d!1079837 (not c!636204)) b!3678404))

(assert (= (and b!3678404 c!636203) b!3678401))

(assert (= (and b!3678404 (not c!636203)) b!3678397))

(assert (= (and b!3678397 (not res!1494332)) b!3678391))

(assert (= (and b!3678391 res!1494329) b!3678400))

(assert (= (and b!3678400 res!1494331) b!3678399))

(assert (= (and b!3678399 res!1494333) b!3678393))

(assert (= (and b!3678391 (not res!1494327)) b!3678392))

(assert (= (and b!3678392 res!1494328) b!3678398))

(assert (= (and b!3678398 (not res!1494334)) b!3678395))

(assert (= (and b!3678395 (not res!1494330)) b!3678396))

(assert (= (or b!3678402 b!3678398 b!3678400) bm!266418))

(assert (=> bm!266418 m!4188263))

(declare-fun m!4188411 () Bool)

(assert (=> bm!266418 m!4188411))

(assert (=> d!1079837 m!4188263))

(assert (=> d!1079837 m!4188411))

(declare-fun m!4188413 () Bool)

(assert (=> d!1079837 m!4188413))

(declare-fun m!4188415 () Bool)

(assert (=> b!3678394 m!4188415))

(assert (=> b!3678395 m!4188263))

(declare-fun m!4188417 () Bool)

(assert (=> b!3678395 m!4188417))

(assert (=> b!3678395 m!4188417))

(declare-fun m!4188419 () Bool)

(assert (=> b!3678395 m!4188419))

(assert (=> b!3678403 m!4188263))

(declare-fun m!4188421 () Bool)

(assert (=> b!3678403 m!4188421))

(assert (=> b!3678403 m!4188421))

(declare-fun m!4188423 () Bool)

(assert (=> b!3678403 m!4188423))

(assert (=> b!3678403 m!4188263))

(assert (=> b!3678403 m!4188417))

(assert (=> b!3678403 m!4188423))

(assert (=> b!3678403 m!4188417))

(declare-fun m!4188425 () Bool)

(assert (=> b!3678403 m!4188425))

(assert (=> b!3678393 m!4188263))

(assert (=> b!3678393 m!4188421))

(assert (=> b!3678396 m!4188263))

(assert (=> b!3678396 m!4188421))

(assert (=> b!3678399 m!4188263))

(assert (=> b!3678399 m!4188417))

(assert (=> b!3678399 m!4188417))

(assert (=> b!3678399 m!4188419))

(assert (=> b!3678260 d!1079837))

(declare-fun d!1079851 () Bool)

(declare-fun list!14419 (Conc!11875) List!38920)

(assert (=> d!1079851 (= (list!14418 (charsOf!3854 (_1!22466 lt!1284940))) (list!14419 (c!636175 (charsOf!3854 (_1!22466 lt!1284940)))))))

(declare-fun bs!573471 () Bool)

(assert (= bs!573471 d!1079851))

(declare-fun m!4188431 () Bool)

(assert (=> bs!573471 m!4188431))

(assert (=> b!3678260 d!1079851))

(declare-fun d!1079855 () Bool)

(declare-fun lt!1285041 () BalanceConc!23364)

(assert (=> d!1079855 (= (list!14418 lt!1285041) (originalCharacters!6554 (_1!22466 lt!1284940)))))

(declare-fun dynLambda!17004 (Int TokenValue!6070) BalanceConc!23364)

(assert (=> d!1079855 (= lt!1285041 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (value!186900 (_1!22466 lt!1284940))))))

(assert (=> d!1079855 (= (charsOf!3854 (_1!22466 lt!1284940)) lt!1285041)))

(declare-fun b_lambda!109251 () Bool)

(assert (=> (not b_lambda!109251) (not d!1079855)))

(declare-fun t!300414 () Bool)

(declare-fun tb!213245 () Bool)

(assert (=> (and b!3678272 (= (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300414) tb!213245))

(declare-fun b!3678439 () Bool)

(declare-fun e!2277739 () Bool)

(declare-fun tp!1118452 () Bool)

(declare-fun inv!52294 (Conc!11875) Bool)

(assert (=> b!3678439 (= e!2277739 (and (inv!52294 (c!636175 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (value!186900 (_1!22466 lt!1284940))))) tp!1118452))))

(declare-fun result!259474 () Bool)

(declare-fun inv!52295 (BalanceConc!23364) Bool)

(assert (=> tb!213245 (= result!259474 (and (inv!52295 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (value!186900 (_1!22466 lt!1284940)))) e!2277739))))

(assert (= tb!213245 b!3678439))

(declare-fun m!4188433 () Bool)

(assert (=> b!3678439 m!4188433))

(declare-fun m!4188435 () Bool)

(assert (=> tb!213245 m!4188435))

(assert (=> d!1079855 t!300414))

(declare-fun b_and!274579 () Bool)

(assert (= b_and!274549 (and (=> t!300414 result!259474) b_and!274579)))

(declare-fun tb!213247 () Bool)

(declare-fun t!300416 () Bool)

(assert (=> (and b!3678269 (= (toChars!7995 (transformation!5840 rule!403)) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300416) tb!213247))

(declare-fun result!259478 () Bool)

(assert (= result!259478 result!259474))

(assert (=> d!1079855 t!300416))

(declare-fun b_and!274581 () Bool)

(assert (= b_and!274553 (and (=> t!300416 result!259478) b_and!274581)))

(declare-fun t!300418 () Bool)

(declare-fun tb!213249 () Bool)

(assert (=> (and b!3678239 (= (toChars!7995 (transformation!5840 (rule!8674 token!511))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300418) tb!213249))

(declare-fun result!259480 () Bool)

(assert (= result!259480 result!259474))

(assert (=> d!1079855 t!300418))

(declare-fun b_and!274583 () Bool)

(assert (= b_and!274557 (and (=> t!300418 result!259480) b_and!274583)))

(declare-fun tb!213251 () Bool)

(declare-fun t!300420 () Bool)

(assert (=> (and b!3678242 (= (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300420) tb!213251))

(declare-fun result!259482 () Bool)

(assert (= result!259482 result!259474))

(assert (=> d!1079855 t!300420))

(declare-fun b_and!274585 () Bool)

(assert (= b_and!274561 (and (=> t!300420 result!259482) b_and!274585)))

(declare-fun m!4188437 () Bool)

(assert (=> d!1079855 m!4188437))

(declare-fun m!4188439 () Bool)

(assert (=> d!1079855 m!4188439))

(assert (=> b!3678260 d!1079855))

(declare-fun d!1079857 () Bool)

(assert (=> d!1079857 (= (get!12839 lt!1284990) (v!38240 lt!1284990))))

(assert (=> b!3678260 d!1079857))

(declare-fun d!1079859 () Bool)

(declare-fun lt!1285047 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5626 (List!38920) (InoxSet C!21384))

(assert (=> d!1079859 (= lt!1285047 (select (content!5626 (usedCharacters!1052 (regex!5840 anOtherTypeRule!33))) lt!1284967))))

(declare-fun e!2277755 () Bool)

(assert (=> d!1079859 (= lt!1285047 e!2277755)))

(declare-fun res!1494371 () Bool)

(assert (=> d!1079859 (=> (not res!1494371) (not e!2277755))))

(assert (=> d!1079859 (= res!1494371 ((_ is Cons!38796) (usedCharacters!1052 (regex!5840 anOtherTypeRule!33))))))

(assert (=> d!1079859 (= (contains!7748 (usedCharacters!1052 (regex!5840 anOtherTypeRule!33)) lt!1284967) lt!1285047)))

(declare-fun b!3678464 () Bool)

(declare-fun e!2277754 () Bool)

(assert (=> b!3678464 (= e!2277755 e!2277754)))

(declare-fun res!1494372 () Bool)

(assert (=> b!3678464 (=> res!1494372 e!2277754)))

(assert (=> b!3678464 (= res!1494372 (= (h!44216 (usedCharacters!1052 (regex!5840 anOtherTypeRule!33))) lt!1284967))))

(declare-fun b!3678465 () Bool)

(assert (=> b!3678465 (= e!2277754 (contains!7748 (t!300395 (usedCharacters!1052 (regex!5840 anOtherTypeRule!33))) lt!1284967))))

(assert (= (and d!1079859 res!1494371) b!3678464))

(assert (= (and b!3678464 (not res!1494372)) b!3678465))

(assert (=> d!1079859 m!4188289))

(declare-fun m!4188457 () Bool)

(assert (=> d!1079859 m!4188457))

(declare-fun m!4188459 () Bool)

(assert (=> d!1079859 m!4188459))

(declare-fun m!4188463 () Bool)

(assert (=> b!3678465 m!4188463))

(assert (=> b!3678258 d!1079859))

(declare-fun b!3678521 () Bool)

(declare-fun e!2277790 () List!38920)

(declare-fun e!2277788 () List!38920)

(assert (=> b!3678521 (= e!2277790 e!2277788)))

(declare-fun c!636232 () Bool)

(assert (=> b!3678521 (= c!636232 ((_ is Union!10599) (regex!5840 anOtherTypeRule!33)))))

(declare-fun b!3678522 () Bool)

(declare-fun call!266443 () List!38920)

(assert (=> b!3678522 (= e!2277788 call!266443)))

(declare-fun b!3678523 () Bool)

(declare-fun e!2277791 () List!38920)

(declare-fun e!2277789 () List!38920)

(assert (=> b!3678523 (= e!2277791 e!2277789)))

(declare-fun c!636235 () Bool)

(assert (=> b!3678523 (= c!636235 ((_ is ElementMatch!10599) (regex!5840 anOtherTypeRule!33)))))

(declare-fun call!266442 () List!38920)

(declare-fun call!266440 () List!38920)

(declare-fun bm!266435 () Bool)

(assert (=> bm!266435 (= call!266443 (++!9656 (ite c!636232 call!266442 call!266440) (ite c!636232 call!266440 call!266442)))))

(declare-fun b!3678524 () Bool)

(assert (=> b!3678524 (= e!2277791 Nil!38796)))

(declare-fun d!1079867 () Bool)

(declare-fun c!636233 () Bool)

(assert (=> d!1079867 (= c!636233 (or ((_ is EmptyExpr!10599) (regex!5840 anOtherTypeRule!33)) ((_ is EmptyLang!10599) (regex!5840 anOtherTypeRule!33))))))

(assert (=> d!1079867 (= (usedCharacters!1052 (regex!5840 anOtherTypeRule!33)) e!2277791)))

(declare-fun bm!266436 () Bool)

(assert (=> bm!266436 (= call!266442 (usedCharacters!1052 (ite c!636232 (regOne!21711 (regex!5840 anOtherTypeRule!33)) (regTwo!21710 (regex!5840 anOtherTypeRule!33)))))))

(declare-fun b!3678525 () Bool)

(declare-fun call!266441 () List!38920)

(assert (=> b!3678525 (= e!2277790 call!266441)))

(declare-fun b!3678526 () Bool)

(declare-fun c!636234 () Bool)

(assert (=> b!3678526 (= c!636234 ((_ is Star!10599) (regex!5840 anOtherTypeRule!33)))))

(assert (=> b!3678526 (= e!2277789 e!2277790)))

(declare-fun b!3678527 () Bool)

(assert (=> b!3678527 (= e!2277789 (Cons!38796 (c!636174 (regex!5840 anOtherTypeRule!33)) Nil!38796))))

(declare-fun bm!266437 () Bool)

(assert (=> bm!266437 (= call!266441 (usedCharacters!1052 (ite c!636234 (reg!10928 (regex!5840 anOtherTypeRule!33)) (ite c!636232 (regTwo!21711 (regex!5840 anOtherTypeRule!33)) (regOne!21710 (regex!5840 anOtherTypeRule!33))))))))

(declare-fun bm!266438 () Bool)

(assert (=> bm!266438 (= call!266440 call!266441)))

(declare-fun b!3678528 () Bool)

(assert (=> b!3678528 (= e!2277788 call!266443)))

(assert (= (and d!1079867 c!636233) b!3678524))

(assert (= (and d!1079867 (not c!636233)) b!3678523))

(assert (= (and b!3678523 c!636235) b!3678527))

(assert (= (and b!3678523 (not c!636235)) b!3678526))

(assert (= (and b!3678526 c!636234) b!3678525))

(assert (= (and b!3678526 (not c!636234)) b!3678521))

(assert (= (and b!3678521 c!636232) b!3678522))

(assert (= (and b!3678521 (not c!636232)) b!3678528))

(assert (= (or b!3678522 b!3678528) bm!266436))

(assert (= (or b!3678522 b!3678528) bm!266438))

(assert (= (or b!3678522 b!3678528) bm!266435))

(assert (= (or b!3678525 bm!266438) bm!266437))

(declare-fun m!4188537 () Bool)

(assert (=> bm!266435 m!4188537))

(declare-fun m!4188539 () Bool)

(assert (=> bm!266436 m!4188539))

(declare-fun m!4188541 () Bool)

(assert (=> bm!266437 m!4188541))

(assert (=> b!3678258 d!1079867))

(declare-fun d!1079881 () Bool)

(assert (=> d!1079881 (= (isEmpty!23039 rules!3307) ((_ is Nil!38797) rules!3307))))

(assert (=> b!3678240 d!1079881))

(declare-fun d!1079883 () Bool)

(assert (=> d!1079883 (not (matchR!5168 (regex!5840 rule!403) lt!1284983))))

(declare-fun lt!1285069 () Unit!56714)

(declare-fun choose!21966 (Regex!10599 List!38920 C!21384) Unit!56714)

(assert (=> d!1079883 (= lt!1285069 (choose!21966 (regex!5840 rule!403) lt!1284983 lt!1284963))))

(assert (=> d!1079883 (validRegex!4855 (regex!5840 rule!403))))

(assert (=> d!1079883 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 rule!403) lt!1284983 lt!1284963) lt!1285069)))

(declare-fun bs!573476 () Bool)

(assert (= bs!573476 d!1079883))

(assert (=> bs!573476 m!4188257))

(declare-fun m!4188563 () Bool)

(assert (=> bs!573476 m!4188563))

(declare-fun m!4188565 () Bool)

(assert (=> bs!573476 m!4188565))

(assert (=> b!3678259 d!1079883))

(declare-fun d!1079897 () Bool)

(declare-fun lt!1285076 () Int)

(assert (=> d!1079897 (= lt!1285076 (size!29663 (list!14418 lt!1284988)))))

(declare-fun size!29665 (Conc!11875) Int)

(assert (=> d!1079897 (= lt!1285076 (size!29665 (c!636175 lt!1284988)))))

(assert (=> d!1079897 (= (size!29662 lt!1284988) lt!1285076)))

(declare-fun bs!573479 () Bool)

(assert (= bs!573479 d!1079897))

(assert (=> bs!573479 m!4188183))

(assert (=> bs!573479 m!4188183))

(declare-fun m!4188577 () Bool)

(assert (=> bs!573479 m!4188577))

(declare-fun m!4188579 () Bool)

(assert (=> bs!573479 m!4188579))

(assert (=> b!3678224 d!1079897))

(declare-fun d!1079905 () Bool)

(assert (=> d!1079905 (= (size!29661 (_1!22466 lt!1284940)) (size!29663 (originalCharacters!6554 (_1!22466 lt!1284940))))))

(declare-fun Unit!56735 () Unit!56714)

(assert (=> d!1079905 (= (lemmaCharactersSize!885 (_1!22466 lt!1284940)) Unit!56735)))

(declare-fun bs!573480 () Bool)

(assert (= bs!573480 d!1079905))

(declare-fun m!4188581 () Bool)

(assert (=> bs!573480 m!4188581))

(assert (=> b!3678224 d!1079905))

(declare-fun d!1079907 () Bool)

(declare-fun fromListB!2029 (List!38920) BalanceConc!23364)

(assert (=> d!1079907 (= (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940))) (fromListB!2029 (originalCharacters!6554 (_1!22466 lt!1284940))))))

(declare-fun bs!573481 () Bool)

(assert (= bs!573481 d!1079907))

(declare-fun m!4188583 () Bool)

(assert (=> bs!573481 m!4188583))

(assert (=> b!3678224 d!1079907))

(declare-fun b!3678566 () Bool)

(declare-fun e!2277817 () Bool)

(assert (=> b!3678566 (= e!2277817 true)))

(declare-fun d!1079909 () Bool)

(assert (=> d!1079909 e!2277817))

(assert (= d!1079909 b!3678566))

(declare-fun order!21501 () Int)

(declare-fun lambda!124750 () Int)

(declare-fun order!21499 () Int)

(declare-fun dynLambda!17008 (Int Int) Int)

(declare-fun dynLambda!17009 (Int Int) Int)

(assert (=> b!3678566 (< (dynLambda!17008 order!21499 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) (dynLambda!17009 order!21501 lambda!124750))))

(declare-fun order!21503 () Int)

(declare-fun dynLambda!17010 (Int Int) Int)

(assert (=> b!3678566 (< (dynLambda!17010 order!21503 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) (dynLambda!17009 order!21501 lambda!124750))))

(declare-fun dynLambda!17011 (Int BalanceConc!23364) TokenValue!6070)

(assert (=> d!1079909 (= (list!14418 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988))) (list!14418 lt!1284988))))

(declare-fun lt!1285089 () Unit!56714)

(declare-fun ForallOf!749 (Int BalanceConc!23364) Unit!56714)

(assert (=> d!1079909 (= lt!1285089 (ForallOf!749 lambda!124750 lt!1284988))))

(assert (=> d!1079909 (= (lemmaSemiInverse!1589 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988) lt!1285089)))

(declare-fun b_lambda!109267 () Bool)

(assert (=> (not b_lambda!109267) (not d!1079909)))

(declare-fun tb!213293 () Bool)

(declare-fun t!300462 () Bool)

(assert (=> (and b!3678272 (= (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300462) tb!213293))

(declare-fun tp!1118455 () Bool)

(declare-fun e!2277818 () Bool)

(declare-fun b!3678567 () Bool)

(assert (=> b!3678567 (= e!2277818 (and (inv!52294 (c!636175 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988)))) tp!1118455))))

(declare-fun result!259524 () Bool)

(assert (=> tb!213293 (= result!259524 (and (inv!52295 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988))) e!2277818))))

(assert (= tb!213293 b!3678567))

(declare-fun m!4188631 () Bool)

(assert (=> b!3678567 m!4188631))

(declare-fun m!4188633 () Bool)

(assert (=> tb!213293 m!4188633))

(assert (=> d!1079909 t!300462))

(declare-fun b_and!274643 () Bool)

(assert (= b_and!274579 (and (=> t!300462 result!259524) b_and!274643)))

(declare-fun t!300464 () Bool)

(declare-fun tb!213295 () Bool)

(assert (=> (and b!3678269 (= (toChars!7995 (transformation!5840 rule!403)) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300464) tb!213295))

(declare-fun result!259526 () Bool)

(assert (= result!259526 result!259524))

(assert (=> d!1079909 t!300464))

(declare-fun b_and!274645 () Bool)

(assert (= b_and!274581 (and (=> t!300464 result!259526) b_and!274645)))

(declare-fun t!300466 () Bool)

(declare-fun tb!213297 () Bool)

(assert (=> (and b!3678239 (= (toChars!7995 (transformation!5840 (rule!8674 token!511))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300466) tb!213297))

(declare-fun result!259528 () Bool)

(assert (= result!259528 result!259524))

(assert (=> d!1079909 t!300466))

(declare-fun b_and!274647 () Bool)

(assert (= b_and!274583 (and (=> t!300466 result!259528) b_and!274647)))

(declare-fun tb!213299 () Bool)

(declare-fun t!300468 () Bool)

(assert (=> (and b!3678242 (= (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300468) tb!213299))

(declare-fun result!259530 () Bool)

(assert (= result!259530 result!259524))

(assert (=> d!1079909 t!300468))

(declare-fun b_and!274649 () Bool)

(assert (= b_and!274585 (and (=> t!300468 result!259530) b_and!274649)))

(declare-fun b_lambda!109269 () Bool)

(assert (=> (not b_lambda!109269) (not d!1079909)))

(declare-fun tb!213301 () Bool)

(declare-fun t!300470 () Bool)

(assert (=> (and b!3678272 (= (toValue!8136 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300470) tb!213301))

(declare-fun result!259532 () Bool)

(assert (=> tb!213301 (= result!259532 (inv!21 (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988)))))

(declare-fun m!4188635 () Bool)

(assert (=> tb!213301 m!4188635))

(assert (=> d!1079909 t!300470))

(declare-fun b_and!274651 () Bool)

(assert (= b_and!274547 (and (=> t!300470 result!259532) b_and!274651)))

(declare-fun tb!213303 () Bool)

(declare-fun t!300472 () Bool)

(assert (=> (and b!3678269 (= (toValue!8136 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300472) tb!213303))

(declare-fun result!259536 () Bool)

(assert (= result!259536 result!259532))

(assert (=> d!1079909 t!300472))

(declare-fun b_and!274653 () Bool)

(assert (= b_and!274551 (and (=> t!300472 result!259536) b_and!274653)))

(declare-fun t!300474 () Bool)

(declare-fun tb!213305 () Bool)

(assert (=> (and b!3678239 (= (toValue!8136 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300474) tb!213305))

(declare-fun result!259538 () Bool)

(assert (= result!259538 result!259532))

(assert (=> d!1079909 t!300474))

(declare-fun b_and!274655 () Bool)

(assert (= b_and!274555 (and (=> t!300474 result!259538) b_and!274655)))

(declare-fun tb!213307 () Bool)

(declare-fun t!300476 () Bool)

(assert (=> (and b!3678242 (= (toValue!8136 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300476) tb!213307))

(declare-fun result!259540 () Bool)

(assert (= result!259540 result!259532))

(assert (=> d!1079909 t!300476))

(declare-fun b_and!274657 () Bool)

(assert (= b_and!274559 (and (=> t!300476 result!259540) b_and!274657)))

(declare-fun m!4188637 () Bool)

(assert (=> d!1079909 m!4188637))

(declare-fun m!4188639 () Bool)

(assert (=> d!1079909 m!4188639))

(declare-fun m!4188641 () Bool)

(assert (=> d!1079909 m!4188641))

(assert (=> d!1079909 m!4188639))

(assert (=> d!1079909 m!4188641))

(declare-fun m!4188643 () Bool)

(assert (=> d!1079909 m!4188643))

(assert (=> d!1079909 m!4188183))

(assert (=> b!3678224 d!1079909))

(declare-fun d!1079933 () Bool)

(assert (=> d!1079933 (= (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988))))

(declare-fun b_lambda!109271 () Bool)

(assert (=> (not b_lambda!109271) (not d!1079933)))

(assert (=> d!1079933 t!300470))

(declare-fun b_and!274659 () Bool)

(assert (= b_and!274651 (and (=> t!300470 result!259532) b_and!274659)))

(assert (=> d!1079933 t!300472))

(declare-fun b_and!274661 () Bool)

(assert (= b_and!274653 (and (=> t!300472 result!259536) b_and!274661)))

(assert (=> d!1079933 t!300474))

(declare-fun b_and!274663 () Bool)

(assert (= b_and!274655 (and (=> t!300474 result!259538) b_and!274663)))

(assert (=> d!1079933 t!300476))

(declare-fun b_and!274665 () Bool)

(assert (= b_and!274657 (and (=> t!300476 result!259540) b_and!274665)))

(assert (=> d!1079933 m!4188639))

(assert (=> b!3678224 d!1079933))

(declare-fun b!3678594 () Bool)

(declare-fun e!2277838 () Bool)

(assert (=> b!3678594 (= e!2277838 true)))

(declare-fun d!1079935 () Bool)

(assert (=> d!1079935 e!2277838))

(assert (= d!1079935 b!3678594))

(declare-fun lambda!124753 () Int)

(declare-fun order!21505 () Int)

(declare-fun dynLambda!17013 (Int Int) Int)

(assert (=> b!3678594 (< (dynLambda!17008 order!21499 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) (dynLambda!17013 order!21505 lambda!124753))))

(assert (=> b!3678594 (< (dynLambda!17010 order!21503 (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) (dynLambda!17013 order!21505 lambda!124753))))

(assert (=> d!1079935 (= (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284988) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940)))))))

(declare-fun lt!1285104 () Unit!56714)

(declare-fun Forall2of!408 (Int BalanceConc!23364 BalanceConc!23364) Unit!56714)

(assert (=> d!1079935 (= lt!1285104 (Forall2of!408 lambda!124753 lt!1284988 (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940)))))))

(assert (=> d!1079935 (= (list!14418 lt!1284988) (list!14418 (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940)))))))

(assert (=> d!1079935 (= (lemmaEqSameImage!1023 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284988 (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940)))) lt!1285104)))

(declare-fun b_lambda!109273 () Bool)

(assert (=> (not b_lambda!109273) (not d!1079935)))

(assert (=> d!1079935 t!300470))

(declare-fun b_and!274667 () Bool)

(assert (= b_and!274659 (and (=> t!300470 result!259532) b_and!274667)))

(assert (=> d!1079935 t!300472))

(declare-fun b_and!274669 () Bool)

(assert (= b_and!274661 (and (=> t!300472 result!259536) b_and!274669)))

(assert (=> d!1079935 t!300474))

(declare-fun b_and!274671 () Bool)

(assert (= b_and!274663 (and (=> t!300474 result!259538) b_and!274671)))

(assert (=> d!1079935 t!300476))

(declare-fun b_and!274673 () Bool)

(assert (= b_and!274665 (and (=> t!300476 result!259540) b_and!274673)))

(declare-fun b_lambda!109275 () Bool)

(assert (=> (not b_lambda!109275) (not d!1079935)))

(declare-fun tb!213309 () Bool)

(declare-fun t!300478 () Bool)

(assert (=> (and b!3678272 (= (toValue!8136 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300478) tb!213309))

(declare-fun result!259542 () Bool)

(assert (=> tb!213309 (= result!259542 (inv!21 (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 lt!1284940))))))))

(declare-fun m!4188657 () Bool)

(assert (=> tb!213309 m!4188657))

(assert (=> d!1079935 t!300478))

(declare-fun b_and!274675 () Bool)

(assert (= b_and!274667 (and (=> t!300478 result!259542) b_and!274675)))

(declare-fun tb!213311 () Bool)

(declare-fun t!300480 () Bool)

(assert (=> (and b!3678269 (= (toValue!8136 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300480) tb!213311))

(declare-fun result!259544 () Bool)

(assert (= result!259544 result!259542))

(assert (=> d!1079935 t!300480))

(declare-fun b_and!274677 () Bool)

(assert (= b_and!274669 (and (=> t!300480 result!259544) b_and!274677)))

(declare-fun tb!213313 () Bool)

(declare-fun t!300482 () Bool)

(assert (=> (and b!3678239 (= (toValue!8136 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300482) tb!213313))

(declare-fun result!259546 () Bool)

(assert (= result!259546 result!259542))

(assert (=> d!1079935 t!300482))

(declare-fun b_and!274679 () Bool)

(assert (= b_and!274671 (and (=> t!300482 result!259546) b_and!274679)))

(declare-fun t!300484 () Bool)

(declare-fun tb!213315 () Bool)

(assert (=> (and b!3678242 (= (toValue!8136 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300484) tb!213315))

(declare-fun result!259548 () Bool)

(assert (= result!259548 result!259542))

(assert (=> d!1079935 t!300484))

(declare-fun b_and!274681 () Bool)

(assert (= b_and!274673 (and (=> t!300484 result!259548) b_and!274681)))

(assert (=> d!1079935 m!4188129))

(declare-fun m!4188659 () Bool)

(assert (=> d!1079935 m!4188659))

(assert (=> d!1079935 m!4188129))

(declare-fun m!4188661 () Bool)

(assert (=> d!1079935 m!4188661))

(assert (=> d!1079935 m!4188129))

(declare-fun m!4188663 () Bool)

(assert (=> d!1079935 m!4188663))

(assert (=> d!1079935 m!4188183))

(assert (=> d!1079935 m!4188639))

(assert (=> b!3678224 d!1079935))

(declare-fun d!1079939 () Bool)

(assert (=> d!1079939 (contains!7748 lt!1284987 (head!7890 suffix!1395))))

(declare-fun lt!1285107 () Unit!56714)

(declare-fun choose!21968 (List!38920 List!38920 List!38920 List!38920) Unit!56714)

(assert (=> d!1079939 (= lt!1285107 (choose!21968 lt!1284983 suffix!1395 lt!1284987 lt!1284950))))

(assert (=> d!1079939 (isPrefix!3203 lt!1284987 lt!1284950)))

(assert (=> d!1079939 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!148 lt!1284983 suffix!1395 lt!1284987 lt!1284950) lt!1285107)))

(declare-fun bs!573486 () Bool)

(assert (= bs!573486 d!1079939))

(assert (=> bs!573486 m!4188237))

(assert (=> bs!573486 m!4188237))

(declare-fun m!4188665 () Bool)

(assert (=> bs!573486 m!4188665))

(declare-fun m!4188667 () Bool)

(assert (=> bs!573486 m!4188667))

(assert (=> bs!573486 m!4188177))

(assert (=> b!3678263 d!1079939))

(declare-fun d!1079941 () Bool)

(declare-fun lt!1285108 () Bool)

(assert (=> d!1079941 (= lt!1285108 (select (content!5626 lt!1284987) lt!1284967))))

(declare-fun e!2277841 () Bool)

(assert (=> d!1079941 (= lt!1285108 e!2277841)))

(declare-fun res!1494415 () Bool)

(assert (=> d!1079941 (=> (not res!1494415) (not e!2277841))))

(assert (=> d!1079941 (= res!1494415 ((_ is Cons!38796) lt!1284987))))

(assert (=> d!1079941 (= (contains!7748 lt!1284987 lt!1284967) lt!1285108)))

(declare-fun b!3678595 () Bool)

(declare-fun e!2277840 () Bool)

(assert (=> b!3678595 (= e!2277841 e!2277840)))

(declare-fun res!1494416 () Bool)

(assert (=> b!3678595 (=> res!1494416 e!2277840)))

(assert (=> b!3678595 (= res!1494416 (= (h!44216 lt!1284987) lt!1284967))))

(declare-fun b!3678596 () Bool)

(assert (=> b!3678596 (= e!2277840 (contains!7748 (t!300395 lt!1284987) lt!1284967))))

(assert (= (and d!1079941 res!1494415) b!3678595))

(assert (= (and b!3678595 (not res!1494416)) b!3678596))

(declare-fun m!4188669 () Bool)

(assert (=> d!1079941 m!4188669))

(declare-fun m!4188671 () Bool)

(assert (=> d!1079941 m!4188671))

(declare-fun m!4188673 () Bool)

(assert (=> b!3678596 m!4188673))

(assert (=> b!3678263 d!1079941))

(declare-fun d!1079943 () Bool)

(assert (=> d!1079943 (= (isEmpty!23038 (_2!22466 lt!1284966)) ((_ is Nil!38796) (_2!22466 lt!1284966)))))

(assert (=> b!3678261 d!1079943))

(declare-fun d!1079945 () Bool)

(declare-fun lt!1285109 () Bool)

(assert (=> d!1079945 (= lt!1285109 (select (content!5626 call!266406) lt!1284967))))

(declare-fun e!2277843 () Bool)

(assert (=> d!1079945 (= lt!1285109 e!2277843)))

(declare-fun res!1494417 () Bool)

(assert (=> d!1079945 (=> (not res!1494417) (not e!2277843))))

(assert (=> d!1079945 (= res!1494417 ((_ is Cons!38796) call!266406))))

(assert (=> d!1079945 (= (contains!7748 call!266406 lt!1284967) lt!1285109)))

(declare-fun b!3678597 () Bool)

(declare-fun e!2277842 () Bool)

(assert (=> b!3678597 (= e!2277843 e!2277842)))

(declare-fun res!1494418 () Bool)

(assert (=> b!3678597 (=> res!1494418 e!2277842)))

(assert (=> b!3678597 (= res!1494418 (= (h!44216 call!266406) lt!1284967))))

(declare-fun b!3678598 () Bool)

(assert (=> b!3678598 (= e!2277842 (contains!7748 (t!300395 call!266406) lt!1284967))))

(assert (= (and d!1079945 res!1494417) b!3678597))

(assert (= (and b!3678597 (not res!1494418)) b!3678598))

(declare-fun m!4188675 () Bool)

(assert (=> d!1079945 m!4188675))

(declare-fun m!4188677 () Bool)

(assert (=> d!1079945 m!4188677))

(declare-fun m!4188679 () Bool)

(assert (=> b!3678598 m!4188679))

(assert (=> bm!266399 d!1079945))

(declare-fun d!1079947 () Bool)

(assert (=> d!1079947 (= (inv!52287 (tag!6640 rule!403)) (= (mod (str.len (value!186899 (tag!6640 rule!403))) 2) 0))))

(assert (=> b!3678236 d!1079947))

(declare-fun d!1079949 () Bool)

(declare-fun res!1494427 () Bool)

(declare-fun e!2277849 () Bool)

(assert (=> d!1079949 (=> (not res!1494427) (not e!2277849))))

(declare-fun semiInverseModEq!2493 (Int Int) Bool)

(assert (=> d!1079949 (= res!1494427 (semiInverseModEq!2493 (toChars!7995 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 rule!403))))))

(assert (=> d!1079949 (= (inv!52290 (transformation!5840 rule!403)) e!2277849)))

(declare-fun b!3678607 () Bool)

(declare-fun equivClasses!2392 (Int Int) Bool)

(assert (=> b!3678607 (= e!2277849 (equivClasses!2392 (toChars!7995 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 rule!403))))))

(assert (= (and d!1079949 res!1494427) b!3678607))

(declare-fun m!4188691 () Bool)

(assert (=> d!1079949 m!4188691))

(declare-fun m!4188693 () Bool)

(assert (=> b!3678607 m!4188693))

(assert (=> b!3678236 d!1079949))

(declare-fun b!3678608 () Bool)

(declare-fun e!2277852 () List!38920)

(declare-fun e!2277850 () List!38920)

(assert (=> b!3678608 (= e!2277852 e!2277850)))

(declare-fun c!636250 () Bool)

(assert (=> b!3678608 (= c!636250 ((_ is Union!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3678609 () Bool)

(declare-fun call!266447 () List!38920)

(assert (=> b!3678609 (= e!2277850 call!266447)))

(declare-fun b!3678610 () Bool)

(declare-fun e!2277853 () List!38920)

(declare-fun e!2277851 () List!38920)

(assert (=> b!3678610 (= e!2277853 e!2277851)))

(declare-fun c!636253 () Bool)

(assert (=> b!3678610 (= c!636253 ((_ is ElementMatch!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun bm!266439 () Bool)

(declare-fun call!266446 () List!38920)

(declare-fun call!266444 () List!38920)

(assert (=> bm!266439 (= call!266447 (++!9656 (ite c!636250 call!266446 call!266444) (ite c!636250 call!266444 call!266446)))))

(declare-fun b!3678611 () Bool)

(assert (=> b!3678611 (= e!2277853 Nil!38796)))

(declare-fun d!1079955 () Bool)

(declare-fun c!636251 () Bool)

(assert (=> d!1079955 (= c!636251 (or ((_ is EmptyExpr!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) ((_ is EmptyLang!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))

(assert (=> d!1079955 (= (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) e!2277853)))

(declare-fun bm!266440 () Bool)

(assert (=> bm!266440 (= call!266446 (usedCharacters!1052 (ite c!636250 (regOne!21711 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) (regTwo!21710 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))))

(declare-fun b!3678612 () Bool)

(declare-fun call!266445 () List!38920)

(assert (=> b!3678612 (= e!2277852 call!266445)))

(declare-fun b!3678613 () Bool)

(declare-fun c!636252 () Bool)

(assert (=> b!3678613 (= c!636252 ((_ is Star!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(assert (=> b!3678613 (= e!2277851 e!2277852)))

(declare-fun b!3678614 () Bool)

(assert (=> b!3678614 (= e!2277851 (Cons!38796 (c!636174 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) Nil!38796))))

(declare-fun bm!266441 () Bool)

(assert (=> bm!266441 (= call!266445 (usedCharacters!1052 (ite c!636252 (reg!10928 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) (ite c!636250 (regTwo!21711 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) (regOne!21710 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))))

(declare-fun bm!266442 () Bool)

(assert (=> bm!266442 (= call!266444 call!266445)))

(declare-fun b!3678615 () Bool)

(assert (=> b!3678615 (= e!2277850 call!266447)))

(assert (= (and d!1079955 c!636251) b!3678611))

(assert (= (and d!1079955 (not c!636251)) b!3678610))

(assert (= (and b!3678610 c!636253) b!3678614))

(assert (= (and b!3678610 (not c!636253)) b!3678613))

(assert (= (and b!3678613 c!636252) b!3678612))

(assert (= (and b!3678613 (not c!636252)) b!3678608))

(assert (= (and b!3678608 c!636250) b!3678609))

(assert (= (and b!3678608 (not c!636250)) b!3678615))

(assert (= (or b!3678609 b!3678615) bm!266440))

(assert (= (or b!3678609 b!3678615) bm!266442))

(assert (= (or b!3678609 b!3678615) bm!266439))

(assert (= (or b!3678612 bm!266442) bm!266441))

(declare-fun m!4188695 () Bool)

(assert (=> bm!266439 m!4188695))

(declare-fun m!4188697 () Bool)

(assert (=> bm!266440 m!4188697))

(declare-fun m!4188699 () Bool)

(assert (=> bm!266441 m!4188699))

(assert (=> bm!266403 d!1079955))

(declare-fun d!1079957 () Bool)

(declare-fun lt!1285113 () Bool)

(assert (=> d!1079957 (= lt!1285113 (select (content!5626 call!266403) lt!1284963))))

(declare-fun e!2277855 () Bool)

(assert (=> d!1079957 (= lt!1285113 e!2277855)))

(declare-fun res!1494428 () Bool)

(assert (=> d!1079957 (=> (not res!1494428) (not e!2277855))))

(assert (=> d!1079957 (= res!1494428 ((_ is Cons!38796) call!266403))))

(assert (=> d!1079957 (= (contains!7748 call!266403 lt!1284963) lt!1285113)))

(declare-fun b!3678616 () Bool)

(declare-fun e!2277854 () Bool)

(assert (=> b!3678616 (= e!2277855 e!2277854)))

(declare-fun res!1494429 () Bool)

(assert (=> b!3678616 (=> res!1494429 e!2277854)))

(assert (=> b!3678616 (= res!1494429 (= (h!44216 call!266403) lt!1284963))))

(declare-fun b!3678617 () Bool)

(assert (=> b!3678617 (= e!2277854 (contains!7748 (t!300395 call!266403) lt!1284963))))

(assert (= (and d!1079957 res!1494428) b!3678616))

(assert (= (and b!3678616 (not res!1494429)) b!3678617))

(declare-fun m!4188701 () Bool)

(assert (=> d!1079957 m!4188701))

(declare-fun m!4188703 () Bool)

(assert (=> d!1079957 m!4188703))

(declare-fun m!4188705 () Bool)

(assert (=> b!3678617 m!4188705))

(assert (=> bm!266398 d!1079957))

(assert (=> bm!266402 d!1079955))

(declare-fun d!1079959 () Bool)

(assert (=> d!1079959 (not (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987))))

(declare-fun lt!1285114 () Unit!56714)

(assert (=> d!1079959 (= lt!1285114 (choose!21966 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284967))))

(assert (=> d!1079959 (validRegex!4855 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1079959 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284967) lt!1285114)))

(declare-fun bs!573488 () Bool)

(assert (= bs!573488 d!1079959))

(assert (=> bs!573488 m!4188157))

(declare-fun m!4188707 () Bool)

(assert (=> bs!573488 m!4188707))

(declare-fun m!4188709 () Bool)

(assert (=> bs!573488 m!4188709))

(assert (=> bm!266401 d!1079959))

(declare-fun d!1079961 () Bool)

(assert (=> d!1079961 (= (_2!22466 lt!1284940) lt!1284989)))

(declare-fun lt!1285119 () Unit!56714)

(declare-fun choose!21970 (List!38920 List!38920 List!38920 List!38920 List!38920) Unit!56714)

(assert (=> d!1079961 (= lt!1285119 (choose!21970 lt!1284987 (_2!22466 lt!1284940) lt!1284987 lt!1284989 lt!1284950))))

(assert (=> d!1079961 (isPrefix!3203 lt!1284987 lt!1284950)))

(assert (=> d!1079961 (= (lemmaSamePrefixThenSameSuffix!1530 lt!1284987 (_2!22466 lt!1284940) lt!1284987 lt!1284989 lt!1284950) lt!1285119)))

(declare-fun bs!573489 () Bool)

(assert (= bs!573489 d!1079961))

(declare-fun m!4188711 () Bool)

(assert (=> bs!573489 m!4188711))

(assert (=> bs!573489 m!4188177))

(assert (=> b!3678238 d!1079961))

(declare-fun d!1079963 () Bool)

(declare-fun lt!1285126 () List!38920)

(assert (=> d!1079963 (= (++!9656 lt!1284987 lt!1285126) lt!1284950)))

(declare-fun e!2277875 () List!38920)

(assert (=> d!1079963 (= lt!1285126 e!2277875)))

(declare-fun c!636257 () Bool)

(assert (=> d!1079963 (= c!636257 ((_ is Cons!38796) lt!1284987))))

(assert (=> d!1079963 (>= (size!29663 lt!1284950) (size!29663 lt!1284987))))

(assert (=> d!1079963 (= (getSuffix!1756 lt!1284950 lt!1284987) lt!1285126)))

(declare-fun b!3678646 () Bool)

(assert (=> b!3678646 (= e!2277875 (getSuffix!1756 (tail!5691 lt!1284950) (t!300395 lt!1284987)))))

(declare-fun b!3678647 () Bool)

(assert (=> b!3678647 (= e!2277875 lt!1284950)))

(assert (= (and d!1079963 c!636257) b!3678646))

(assert (= (and d!1079963 (not c!636257)) b!3678647))

(declare-fun m!4188737 () Bool)

(assert (=> d!1079963 m!4188737))

(declare-fun m!4188739 () Bool)

(assert (=> d!1079963 m!4188739))

(assert (=> d!1079963 m!4188147))

(declare-fun m!4188741 () Bool)

(assert (=> b!3678646 m!4188741))

(assert (=> b!3678646 m!4188741))

(declare-fun m!4188743 () Bool)

(assert (=> b!3678646 m!4188743))

(assert (=> b!3678238 d!1079963))

(declare-fun d!1079973 () Bool)

(assert (=> d!1079973 (= (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) (seqFromList!4389 lt!1284987)) (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (seqFromList!4389 lt!1284987)))))

(declare-fun b_lambda!109277 () Bool)

(assert (=> (not b_lambda!109277) (not d!1079973)))

(declare-fun tb!213317 () Bool)

(declare-fun t!300486 () Bool)

(assert (=> (and b!3678272 (= (toValue!8136 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300486) tb!213317))

(declare-fun result!259550 () Bool)

(assert (=> tb!213317 (= result!259550 (inv!21 (dynLambda!17011 (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940)))) (seqFromList!4389 lt!1284987))))))

(declare-fun m!4188745 () Bool)

(assert (=> tb!213317 m!4188745))

(assert (=> d!1079973 t!300486))

(declare-fun b_and!274683 () Bool)

(assert (= b_and!274675 (and (=> t!300486 result!259550) b_and!274683)))

(declare-fun t!300488 () Bool)

(declare-fun tb!213319 () Bool)

(assert (=> (and b!3678269 (= (toValue!8136 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300488) tb!213319))

(declare-fun result!259552 () Bool)

(assert (= result!259552 result!259550))

(assert (=> d!1079973 t!300488))

(declare-fun b_and!274685 () Bool)

(assert (= b_and!274677 (and (=> t!300488 result!259552) b_and!274685)))

(declare-fun tb!213321 () Bool)

(declare-fun t!300490 () Bool)

(assert (=> (and b!3678239 (= (toValue!8136 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300490) tb!213321))

(declare-fun result!259554 () Bool)

(assert (= result!259554 result!259550))

(assert (=> d!1079973 t!300490))

(declare-fun b_and!274687 () Bool)

(assert (= b_and!274679 (and (=> t!300490 result!259554) b_and!274687)))

(declare-fun tb!213323 () Bool)

(declare-fun t!300492 () Bool)

(assert (=> (and b!3678242 (= (toValue!8136 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300492) tb!213323))

(declare-fun result!259556 () Bool)

(assert (= result!259556 result!259550))

(assert (=> d!1079973 t!300492))

(declare-fun b_and!274689 () Bool)

(assert (= b_and!274681 (and (=> t!300492 result!259556) b_and!274689)))

(assert (=> d!1079973 m!4188151))

(declare-fun m!4188747 () Bool)

(assert (=> d!1079973 m!4188747))

(assert (=> b!3678238 d!1079973))

(declare-fun d!1079975 () Bool)

(declare-fun lt!1285129 () Int)

(assert (=> d!1079975 (>= lt!1285129 0)))

(declare-fun e!2277879 () Int)

(assert (=> d!1079975 (= lt!1285129 e!2277879)))

(declare-fun c!636260 () Bool)

(assert (=> d!1079975 (= c!636260 ((_ is Nil!38796) lt!1284987))))

(assert (=> d!1079975 (= (size!29663 lt!1284987) lt!1285129)))

(declare-fun b!3678652 () Bool)

(assert (=> b!3678652 (= e!2277879 0)))

(declare-fun b!3678653 () Bool)

(assert (=> b!3678653 (= e!2277879 (+ 1 (size!29663 (t!300395 lt!1284987))))))

(assert (= (and d!1079975 c!636260) b!3678652))

(assert (= (and d!1079975 (not c!636260)) b!3678653))

(declare-fun m!4188749 () Bool)

(assert (=> b!3678653 m!4188749))

(assert (=> b!3678238 d!1079975))

(declare-fun b!3678703 () Bool)

(declare-fun res!1494489 () Bool)

(declare-fun e!2277900 () Bool)

(assert (=> b!3678703 (=> (not res!1494489) (not e!2277900))))

(declare-fun lt!1285159 () Option!8308)

(assert (=> b!3678703 (= res!1494489 (= (rule!8674 (_1!22466 (get!12838 lt!1285159))) (rule!8674 (_1!22466 lt!1284940))))))

(declare-fun b!3678704 () Bool)

(declare-fun e!2277902 () Bool)

(assert (=> b!3678704 (= e!2277902 e!2277900)))

(declare-fun res!1494494 () Bool)

(assert (=> b!3678704 (=> (not res!1494494) (not e!2277900))))

(assert (=> b!3678704 (= res!1494494 (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285159))))))))

(declare-fun d!1079977 () Bool)

(assert (=> d!1079977 e!2277902))

(declare-fun res!1494492 () Bool)

(assert (=> d!1079977 (=> res!1494492 e!2277902)))

(declare-fun isEmpty!23042 (Option!8308) Bool)

(assert (=> d!1079977 (= res!1494492 (isEmpty!23042 lt!1285159))))

(declare-fun e!2277899 () Option!8308)

(assert (=> d!1079977 (= lt!1285159 e!2277899)))

(declare-fun c!636267 () Bool)

(declare-datatypes ((tuple2!38668 0))(
  ( (tuple2!38669 (_1!22468 List!38920) (_2!22468 List!38920)) )
))
(declare-fun lt!1285156 () tuple2!38668)

(assert (=> d!1079977 (= c!636267 (isEmpty!23038 (_1!22468 lt!1285156)))))

(declare-fun findLongestMatch!1004 (Regex!10599 List!38920) tuple2!38668)

(assert (=> d!1079977 (= lt!1285156 (findLongestMatch!1004 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284950))))

(assert (=> d!1079977 (ruleValid!2104 thiss!23823 (rule!8674 (_1!22466 lt!1284940)))))

(assert (=> d!1079977 (= (maxPrefixOneRule!2101 thiss!23823 (rule!8674 (_1!22466 lt!1284940)) lt!1284950) lt!1285159)))

(declare-fun b!3678705 () Bool)

(declare-fun res!1494495 () Bool)

(assert (=> b!3678705 (=> (not res!1494495) (not e!2277900))))

(assert (=> b!3678705 (= res!1494495 (= (++!9656 (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285159)))) (_2!22466 (get!12838 lt!1285159))) lt!1284950))))

(declare-fun b!3678706 () Bool)

(assert (=> b!3678706 (= e!2277900 (= (size!29661 (_1!22466 (get!12838 lt!1285159))) (size!29663 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285159))))))))

(declare-fun b!3678707 () Bool)

(assert (=> b!3678707 (= e!2277899 (Some!8307 (tuple2!38665 (Token!11047 (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) (seqFromList!4389 (_1!22468 lt!1285156))) (rule!8674 (_1!22466 lt!1284940)) (size!29662 (seqFromList!4389 (_1!22468 lt!1285156))) (_1!22468 lt!1285156)) (_2!22468 lt!1285156))))))

(declare-fun lt!1285158 () Unit!56714)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1062 (Regex!10599 List!38920) Unit!56714)

(assert (=> b!3678707 (= lt!1285158 (longestMatchIsAcceptedByMatchOrIsEmpty!1062 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284950))))

(declare-fun res!1494490 () Bool)

(declare-fun findLongestMatchInner!1089 (Regex!10599 List!38920 Int List!38920 List!38920 Int) tuple2!38668)

(assert (=> b!3678707 (= res!1494490 (isEmpty!23038 (_1!22468 (findLongestMatchInner!1089 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) Nil!38796 (size!29663 Nil!38796) lt!1284950 lt!1284950 (size!29663 lt!1284950)))))))

(declare-fun e!2277901 () Bool)

(assert (=> b!3678707 (=> res!1494490 e!2277901)))

(assert (=> b!3678707 e!2277901))

(declare-fun lt!1285157 () Unit!56714)

(assert (=> b!3678707 (= lt!1285157 lt!1285158)))

(declare-fun lt!1285160 () Unit!56714)

(assert (=> b!3678707 (= lt!1285160 (lemmaSemiInverse!1589 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) (seqFromList!4389 (_1!22468 lt!1285156))))))

(declare-fun b!3678708 () Bool)

(assert (=> b!3678708 (= e!2277899 None!8307)))

(declare-fun b!3678709 () Bool)

(declare-fun res!1494493 () Bool)

(assert (=> b!3678709 (=> (not res!1494493) (not e!2277900))))

(assert (=> b!3678709 (= res!1494493 (= (value!186900 (_1!22466 (get!12838 lt!1285159))) (apply!9342 (transformation!5840 (rule!8674 (_1!22466 (get!12838 lt!1285159)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285159)))))))))

(declare-fun b!3678710 () Bool)

(declare-fun res!1494491 () Bool)

(assert (=> b!3678710 (=> (not res!1494491) (not e!2277900))))

(assert (=> b!3678710 (= res!1494491 (< (size!29663 (_2!22466 (get!12838 lt!1285159))) (size!29663 lt!1284950)))))

(declare-fun b!3678711 () Bool)

(assert (=> b!3678711 (= e!2277901 (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) (_1!22468 (findLongestMatchInner!1089 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) Nil!38796 (size!29663 Nil!38796) lt!1284950 lt!1284950 (size!29663 lt!1284950)))))))

(assert (= (and d!1079977 c!636267) b!3678708))

(assert (= (and d!1079977 (not c!636267)) b!3678707))

(assert (= (and b!3678707 (not res!1494490)) b!3678711))

(assert (= (and d!1079977 (not res!1494492)) b!3678704))

(assert (= (and b!3678704 res!1494494) b!3678705))

(assert (= (and b!3678705 res!1494495) b!3678710))

(assert (= (and b!3678710 res!1494491) b!3678703))

(assert (= (and b!3678703 res!1494489) b!3678709))

(assert (= (and b!3678709 res!1494493) b!3678706))

(declare-fun m!4188793 () Bool)

(assert (=> b!3678709 m!4188793))

(declare-fun m!4188795 () Bool)

(assert (=> b!3678709 m!4188795))

(assert (=> b!3678709 m!4188795))

(declare-fun m!4188797 () Bool)

(assert (=> b!3678709 m!4188797))

(assert (=> b!3678707 m!4188739))

(declare-fun m!4188799 () Bool)

(assert (=> b!3678707 m!4188799))

(declare-fun m!4188801 () Bool)

(assert (=> b!3678707 m!4188801))

(assert (=> b!3678707 m!4188799))

(declare-fun m!4188803 () Bool)

(assert (=> b!3678707 m!4188803))

(assert (=> b!3678707 m!4188799))

(declare-fun m!4188805 () Bool)

(assert (=> b!3678707 m!4188805))

(assert (=> b!3678707 m!4188799))

(declare-fun m!4188807 () Bool)

(assert (=> b!3678707 m!4188807))

(declare-fun m!4188809 () Bool)

(assert (=> b!3678707 m!4188809))

(assert (=> b!3678707 m!4188739))

(declare-fun m!4188811 () Bool)

(assert (=> b!3678707 m!4188811))

(declare-fun m!4188813 () Bool)

(assert (=> b!3678707 m!4188813))

(assert (=> b!3678707 m!4188809))

(assert (=> b!3678703 m!4188793))

(assert (=> b!3678705 m!4188793))

(declare-fun m!4188815 () Bool)

(assert (=> b!3678705 m!4188815))

(assert (=> b!3678705 m!4188815))

(declare-fun m!4188817 () Bool)

(assert (=> b!3678705 m!4188817))

(assert (=> b!3678705 m!4188817))

(declare-fun m!4188819 () Bool)

(assert (=> b!3678705 m!4188819))

(assert (=> b!3678704 m!4188793))

(assert (=> b!3678704 m!4188815))

(assert (=> b!3678704 m!4188815))

(assert (=> b!3678704 m!4188817))

(assert (=> b!3678704 m!4188817))

(declare-fun m!4188821 () Bool)

(assert (=> b!3678704 m!4188821))

(assert (=> b!3678711 m!4188809))

(assert (=> b!3678711 m!4188739))

(assert (=> b!3678711 m!4188809))

(assert (=> b!3678711 m!4188739))

(assert (=> b!3678711 m!4188811))

(declare-fun m!4188823 () Bool)

(assert (=> b!3678711 m!4188823))

(assert (=> b!3678706 m!4188793))

(declare-fun m!4188825 () Bool)

(assert (=> b!3678706 m!4188825))

(assert (=> b!3678710 m!4188793))

(declare-fun m!4188827 () Bool)

(assert (=> b!3678710 m!4188827))

(assert (=> b!3678710 m!4188739))

(declare-fun m!4188829 () Bool)

(assert (=> d!1079977 m!4188829))

(declare-fun m!4188831 () Bool)

(assert (=> d!1079977 m!4188831))

(declare-fun m!4188833 () Bool)

(assert (=> d!1079977 m!4188833))

(declare-fun m!4188835 () Bool)

(assert (=> d!1079977 m!4188835))

(assert (=> b!3678238 d!1079977))

(declare-fun d!1079983 () Bool)

(assert (=> d!1079983 (= (maxPrefixOneRule!2101 thiss!23823 (rule!8674 (_1!22466 lt!1284940)) lt!1284950) (Some!8307 (tuple2!38665 (Token!11047 (apply!9342 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))) (seqFromList!4389 lt!1284987)) (rule!8674 (_1!22466 lt!1284940)) (size!29663 lt!1284987) lt!1284987) (_2!22466 lt!1284940))))))

(declare-fun lt!1285163 () Unit!56714)

(declare-fun choose!21971 (LexerInterface!5429 List!38921 List!38920 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> d!1079983 (= lt!1285163 (choose!21971 thiss!23823 rules!3307 lt!1284987 lt!1284950 (_2!22466 lt!1284940) (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1079983 (not (isEmpty!23039 rules!3307))))

(assert (=> d!1079983 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1157 thiss!23823 rules!3307 lt!1284987 lt!1284950 (_2!22466 lt!1284940) (rule!8674 (_1!22466 lt!1284940))) lt!1285163)))

(declare-fun bs!573490 () Bool)

(assert (= bs!573490 d!1079983))

(assert (=> bs!573490 m!4188153))

(assert (=> bs!573490 m!4188151))

(declare-fun m!4188837 () Bool)

(assert (=> bs!573490 m!4188837))

(assert (=> bs!573490 m!4188147))

(assert (=> bs!573490 m!4188151))

(assert (=> bs!573490 m!4188155))

(assert (=> bs!573490 m!4188193))

(assert (=> b!3678238 d!1079983))

(declare-fun d!1079985 () Bool)

(assert (=> d!1079985 (= (seqFromList!4389 lt!1284987) (fromListB!2029 lt!1284987))))

(declare-fun bs!573491 () Bool)

(assert (= bs!573491 d!1079985))

(declare-fun m!4188839 () Bool)

(assert (=> bs!573491 m!4188839))

(assert (=> b!3678238 d!1079985))

(declare-fun d!1079987 () Bool)

(assert (=> d!1079987 (= (get!12838 lt!1284943) (v!38239 lt!1284943))))

(assert (=> b!3678270 d!1079987))

(declare-fun d!1079989 () Bool)

(declare-fun res!1494500 () Bool)

(declare-fun e!2277907 () Bool)

(assert (=> d!1079989 (=> res!1494500 e!2277907)))

(assert (=> d!1079989 (= res!1494500 (not ((_ is Cons!38797) rules!3307)))))

(assert (=> d!1079989 (= (sepAndNonSepRulesDisjointChars!2008 rules!3307 rules!3307) e!2277907)))

(declare-fun b!3678716 () Bool)

(declare-fun e!2277908 () Bool)

(assert (=> b!3678716 (= e!2277907 e!2277908)))

(declare-fun res!1494501 () Bool)

(assert (=> b!3678716 (=> (not res!1494501) (not e!2277908))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!916 (Rule!11480 List!38921) Bool)

(assert (=> b!3678716 (= res!1494501 (ruleDisjointCharsFromAllFromOtherType!916 (h!44217 rules!3307) rules!3307))))

(declare-fun b!3678717 () Bool)

(assert (=> b!3678717 (= e!2277908 (sepAndNonSepRulesDisjointChars!2008 rules!3307 (t!300396 rules!3307)))))

(assert (= (and d!1079989 (not res!1494500)) b!3678716))

(assert (= (and b!3678716 res!1494501) b!3678717))

(declare-fun m!4188841 () Bool)

(assert (=> b!3678716 m!4188841))

(declare-fun m!4188843 () Bool)

(assert (=> b!3678717 m!4188843))

(assert (=> b!3678250 d!1079989))

(declare-fun d!1079991 () Bool)

(assert (=> d!1079991 (not (matchR!5168 (regex!5840 rule!403) lt!1284983))))

(declare-fun lt!1285166 () Unit!56714)

(declare-fun choose!21972 (LexerInterface!5429 List!38921 Rule!11480 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> d!1079991 (= lt!1285166 (choose!21972 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284983 lt!1284950 rule!403))))

(assert (=> d!1079991 (isPrefix!3203 lt!1284983 lt!1284950)))

(assert (=> d!1079991 (= (lemmaMaxPrefNoSmallerRuleMatches!248 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284983 lt!1284950 rule!403) lt!1285166)))

(declare-fun bs!573492 () Bool)

(assert (= bs!573492 d!1079991))

(assert (=> bs!573492 m!4188257))

(declare-fun m!4188845 () Bool)

(assert (=> bs!573492 m!4188845))

(assert (=> bs!573492 m!4188169))

(assert (=> b!3678232 d!1079991))

(declare-fun d!1079993 () Bool)

(declare-fun res!1494506 () Bool)

(declare-fun e!2277911 () Bool)

(assert (=> d!1079993 (=> (not res!1494506) (not e!2277911))))

(assert (=> d!1079993 (= res!1494506 (not (isEmpty!23038 (originalCharacters!6554 token!511))))))

(assert (=> d!1079993 (= (inv!52291 token!511) e!2277911)))

(declare-fun b!3678722 () Bool)

(declare-fun res!1494507 () Bool)

(assert (=> b!3678722 (=> (not res!1494507) (not e!2277911))))

(assert (=> b!3678722 (= res!1494507 (= (originalCharacters!6554 token!511) (list!14418 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (value!186900 token!511)))))))

(declare-fun b!3678723 () Bool)

(assert (=> b!3678723 (= e!2277911 (= (size!29661 token!511) (size!29663 (originalCharacters!6554 token!511))))))

(assert (= (and d!1079993 res!1494506) b!3678722))

(assert (= (and b!3678722 res!1494507) b!3678723))

(declare-fun b_lambda!109279 () Bool)

(assert (=> (not b_lambda!109279) (not b!3678722)))

(declare-fun t!300494 () Bool)

(declare-fun tb!213325 () Bool)

(assert (=> (and b!3678272 (= (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toChars!7995 (transformation!5840 (rule!8674 token!511)))) t!300494) tb!213325))

(declare-fun b!3678724 () Bool)

(declare-fun e!2277912 () Bool)

(declare-fun tp!1118456 () Bool)

(assert (=> b!3678724 (= e!2277912 (and (inv!52294 (c!636175 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (value!186900 token!511)))) tp!1118456))))

(declare-fun result!259558 () Bool)

(assert (=> tb!213325 (= result!259558 (and (inv!52295 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (value!186900 token!511))) e!2277912))))

(assert (= tb!213325 b!3678724))

(declare-fun m!4188847 () Bool)

(assert (=> b!3678724 m!4188847))

(declare-fun m!4188849 () Bool)

(assert (=> tb!213325 m!4188849))

(assert (=> b!3678722 t!300494))

(declare-fun b_and!274691 () Bool)

(assert (= b_and!274643 (and (=> t!300494 result!259558) b_and!274691)))

(declare-fun t!300496 () Bool)

(declare-fun tb!213327 () Bool)

(assert (=> (and b!3678269 (= (toChars!7995 (transformation!5840 rule!403)) (toChars!7995 (transformation!5840 (rule!8674 token!511)))) t!300496) tb!213327))

(declare-fun result!259560 () Bool)

(assert (= result!259560 result!259558))

(assert (=> b!3678722 t!300496))

(declare-fun b_and!274693 () Bool)

(assert (= b_and!274645 (and (=> t!300496 result!259560) b_and!274693)))

(declare-fun t!300498 () Bool)

(declare-fun tb!213329 () Bool)

(assert (=> (and b!3678239 (= (toChars!7995 (transformation!5840 (rule!8674 token!511))) (toChars!7995 (transformation!5840 (rule!8674 token!511)))) t!300498) tb!213329))

(declare-fun result!259562 () Bool)

(assert (= result!259562 result!259558))

(assert (=> b!3678722 t!300498))

(declare-fun b_and!274695 () Bool)

(assert (= b_and!274647 (and (=> t!300498 result!259562) b_and!274695)))

(declare-fun t!300500 () Bool)

(declare-fun tb!213331 () Bool)

(assert (=> (and b!3678242 (= (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toChars!7995 (transformation!5840 (rule!8674 token!511)))) t!300500) tb!213331))

(declare-fun result!259564 () Bool)

(assert (= result!259564 result!259558))

(assert (=> b!3678722 t!300500))

(declare-fun b_and!274697 () Bool)

(assert (= b_and!274649 (and (=> t!300500 result!259564) b_and!274697)))

(declare-fun m!4188851 () Bool)

(assert (=> d!1079993 m!4188851))

(declare-fun m!4188853 () Bool)

(assert (=> b!3678722 m!4188853))

(assert (=> b!3678722 m!4188853))

(declare-fun m!4188855 () Bool)

(assert (=> b!3678722 m!4188855))

(declare-fun m!4188857 () Bool)

(assert (=> b!3678723 m!4188857))

(assert (=> start!345026 d!1079993))

(declare-fun d!1079995 () Bool)

(assert (=> d!1079995 (not (contains!7748 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284963))))

(declare-fun lt!1285169 () Unit!56714)

(declare-fun choose!21973 (LexerInterface!5429 List!38921 List!38921 Rule!11480 Rule!11480 C!21384) Unit!56714)

(assert (=> d!1079995 (= lt!1285169 (choose!21973 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403 lt!1284963))))

(assert (=> d!1079995 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1079995 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!486 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403 lt!1284963) lt!1285169)))

(declare-fun bs!573493 () Bool)

(assert (= bs!573493 d!1079995))

(assert (=> bs!573493 m!4188123))

(assert (=> bs!573493 m!4188123))

(declare-fun m!4188859 () Bool)

(assert (=> bs!573493 m!4188859))

(declare-fun m!4188861 () Bool)

(assert (=> bs!573493 m!4188861))

(assert (=> bs!573493 m!4188299))

(assert (=> b!3678271 d!1079995))

(declare-fun d!1079997 () Bool)

(declare-fun lt!1285170 () List!38920)

(assert (=> d!1079997 (= (++!9656 lt!1284983 lt!1285170) lt!1284983)))

(declare-fun e!2277913 () List!38920)

(assert (=> d!1079997 (= lt!1285170 e!2277913)))

(declare-fun c!636269 () Bool)

(assert (=> d!1079997 (= c!636269 ((_ is Cons!38796) lt!1284983))))

(assert (=> d!1079997 (>= (size!29663 lt!1284983) (size!29663 lt!1284983))))

(assert (=> d!1079997 (= (getSuffix!1756 lt!1284983 lt!1284983) lt!1285170)))

(declare-fun b!3678725 () Bool)

(assert (=> b!3678725 (= e!2277913 (getSuffix!1756 (tail!5691 lt!1284983) (t!300395 lt!1284983)))))

(declare-fun b!3678726 () Bool)

(assert (=> b!3678726 (= e!2277913 lt!1284983)))

(assert (= (and d!1079997 c!636269) b!3678725))

(assert (= (and d!1079997 (not c!636269)) b!3678726))

(declare-fun m!4188863 () Bool)

(assert (=> d!1079997 m!4188863))

(assert (=> d!1079997 m!4188199))

(assert (=> d!1079997 m!4188199))

(declare-fun m!4188865 () Bool)

(assert (=> b!3678725 m!4188865))

(assert (=> b!3678725 m!4188865))

(declare-fun m!4188867 () Bool)

(assert (=> b!3678725 m!4188867))

(assert (=> b!3678230 d!1079997))

(declare-fun b!3678727 () Bool)

(declare-fun res!1494508 () Bool)

(declare-fun e!2277917 () Bool)

(assert (=> b!3678727 (=> res!1494508 e!2277917)))

(declare-fun e!2277916 () Bool)

(assert (=> b!3678727 (= res!1494508 e!2277916)))

(declare-fun res!1494510 () Bool)

(assert (=> b!3678727 (=> (not res!1494510) (not e!2277916))))

(declare-fun lt!1285171 () Bool)

(assert (=> b!3678727 (= res!1494510 lt!1285171)))

(declare-fun b!3678728 () Bool)

(declare-fun e!2277919 () Bool)

(assert (=> b!3678728 (= e!2277917 e!2277919)))

(declare-fun res!1494509 () Bool)

(assert (=> b!3678728 (=> (not res!1494509) (not e!2277919))))

(assert (=> b!3678728 (= res!1494509 (not lt!1285171))))

(declare-fun b!3678729 () Bool)

(assert (=> b!3678729 (= e!2277916 (= (head!7890 lt!1284983) (c!636174 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun b!3678730 () Bool)

(declare-fun e!2277914 () Bool)

(assert (=> b!3678730 (= e!2277914 (nullable!3693 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3678731 () Bool)

(declare-fun res!1494511 () Bool)

(declare-fun e!2277920 () Bool)

(assert (=> b!3678731 (=> res!1494511 e!2277920)))

(assert (=> b!3678731 (= res!1494511 (not (isEmpty!23038 (tail!5691 lt!1284983))))))

(declare-fun b!3678732 () Bool)

(assert (=> b!3678732 (= e!2277920 (not (= (head!7890 lt!1284983) (c!636174 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))))

(declare-fun b!3678733 () Bool)

(declare-fun res!1494513 () Bool)

(assert (=> b!3678733 (=> res!1494513 e!2277917)))

(assert (=> b!3678733 (= res!1494513 (not ((_ is ElementMatch!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun e!2277915 () Bool)

(assert (=> b!3678733 (= e!2277915 e!2277917)))

(declare-fun b!3678734 () Bool)

(assert (=> b!3678734 (= e!2277919 e!2277920)))

(declare-fun res!1494515 () Bool)

(assert (=> b!3678734 (=> res!1494515 e!2277920)))

(declare-fun call!266451 () Bool)

(assert (=> b!3678734 (= res!1494515 call!266451)))

(declare-fun b!3678735 () Bool)

(declare-fun res!1494514 () Bool)

(assert (=> b!3678735 (=> (not res!1494514) (not e!2277916))))

(assert (=> b!3678735 (= res!1494514 (isEmpty!23038 (tail!5691 lt!1284983)))))

(declare-fun d!1079999 () Bool)

(declare-fun e!2277918 () Bool)

(assert (=> d!1079999 e!2277918))

(declare-fun c!636271 () Bool)

(assert (=> d!1079999 (= c!636271 ((_ is EmptyExpr!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(assert (=> d!1079999 (= lt!1285171 e!2277914)))

(declare-fun c!636272 () Bool)

(assert (=> d!1079999 (= c!636272 (isEmpty!23038 lt!1284983))))

(assert (=> d!1079999 (validRegex!4855 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1079999 (= (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284983) lt!1285171)))

(declare-fun b!3678736 () Bool)

(declare-fun res!1494512 () Bool)

(assert (=> b!3678736 (=> (not res!1494512) (not e!2277916))))

(assert (=> b!3678736 (= res!1494512 (not call!266451))))

(declare-fun b!3678737 () Bool)

(assert (=> b!3678737 (= e!2277915 (not lt!1285171))))

(declare-fun b!3678738 () Bool)

(assert (=> b!3678738 (= e!2277918 (= lt!1285171 call!266451))))

(declare-fun b!3678739 () Bool)

(assert (=> b!3678739 (= e!2277914 (matchR!5168 (derivativeStep!3242 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) (head!7890 lt!1284983)) (tail!5691 lt!1284983)))))

(declare-fun b!3678740 () Bool)

(assert (=> b!3678740 (= e!2277918 e!2277915)))

(declare-fun c!636270 () Bool)

(assert (=> b!3678740 (= c!636270 ((_ is EmptyLang!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun bm!266446 () Bool)

(assert (=> bm!266446 (= call!266451 (isEmpty!23038 lt!1284983))))

(assert (= (and d!1079999 c!636272) b!3678730))

(assert (= (and d!1079999 (not c!636272)) b!3678739))

(assert (= (and d!1079999 c!636271) b!3678738))

(assert (= (and d!1079999 (not c!636271)) b!3678740))

(assert (= (and b!3678740 c!636270) b!3678737))

(assert (= (and b!3678740 (not c!636270)) b!3678733))

(assert (= (and b!3678733 (not res!1494513)) b!3678727))

(assert (= (and b!3678727 res!1494510) b!3678736))

(assert (= (and b!3678736 res!1494512) b!3678735))

(assert (= (and b!3678735 res!1494514) b!3678729))

(assert (= (and b!3678727 (not res!1494508)) b!3678728))

(assert (= (and b!3678728 res!1494509) b!3678734))

(assert (= (and b!3678734 (not res!1494515)) b!3678731))

(assert (= (and b!3678731 (not res!1494511)) b!3678732))

(assert (= (or b!3678738 b!3678734 b!3678736) bm!266446))

(declare-fun m!4188869 () Bool)

(assert (=> bm!266446 m!4188869))

(assert (=> d!1079999 m!4188869))

(assert (=> d!1079999 m!4188709))

(declare-fun m!4188871 () Bool)

(assert (=> b!3678730 m!4188871))

(assert (=> b!3678731 m!4188865))

(assert (=> b!3678731 m!4188865))

(declare-fun m!4188873 () Bool)

(assert (=> b!3678731 m!4188873))

(declare-fun m!4188875 () Bool)

(assert (=> b!3678739 m!4188875))

(assert (=> b!3678739 m!4188875))

(declare-fun m!4188877 () Bool)

(assert (=> b!3678739 m!4188877))

(assert (=> b!3678739 m!4188865))

(assert (=> b!3678739 m!4188877))

(assert (=> b!3678739 m!4188865))

(declare-fun m!4188879 () Bool)

(assert (=> b!3678739 m!4188879))

(assert (=> b!3678729 m!4188875))

(assert (=> b!3678732 m!4188875))

(assert (=> b!3678735 m!4188865))

(assert (=> b!3678735 m!4188865))

(assert (=> b!3678735 m!4188873))

(assert (=> b!3678230 d!1079999))

(declare-fun d!1080001 () Bool)

(assert (=> d!1080001 (isEmpty!23038 (getSuffix!1756 lt!1284983 lt!1284983))))

(declare-fun lt!1285174 () Unit!56714)

(declare-fun choose!21974 (List!38920) Unit!56714)

(assert (=> d!1080001 (= lt!1285174 (choose!21974 lt!1284983))))

(assert (=> d!1080001 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!220 lt!1284983) lt!1285174)))

(declare-fun bs!573494 () Bool)

(assert (= bs!573494 d!1080001))

(assert (=> bs!573494 m!4188281))

(assert (=> bs!573494 m!4188281))

(assert (=> bs!573494 m!4188283))

(declare-fun m!4188881 () Bool)

(assert (=> bs!573494 m!4188881))

(assert (=> b!3678230 d!1080001))

(declare-fun d!1080003 () Bool)

(assert (=> d!1080003 (not (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284983))))

(declare-fun lt!1285175 () Unit!56714)

(assert (=> d!1080003 (= lt!1285175 (choose!21972 thiss!23823 rules!3307 rule!403 lt!1284983 lt!1284983 (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1080003 (isPrefix!3203 lt!1284983 lt!1284983)))

(assert (=> d!1080003 (= (lemmaMaxPrefNoSmallerRuleMatches!248 thiss!23823 rules!3307 rule!403 lt!1284983 lt!1284983 (rule!8674 (_1!22466 lt!1284940))) lt!1285175)))

(declare-fun bs!573495 () Bool)

(assert (= bs!573495 d!1080003))

(assert (=> bs!573495 m!4188279))

(declare-fun m!4188883 () Bool)

(assert (=> bs!573495 m!4188883))

(declare-fun m!4188885 () Bool)

(assert (=> bs!573495 m!4188885))

(assert (=> b!3678230 d!1080003))

(declare-fun d!1080005 () Bool)

(assert (=> d!1080005 (= (isEmpty!23038 (getSuffix!1756 lt!1284983 lt!1284983)) ((_ is Nil!38796) (getSuffix!1756 lt!1284983 lt!1284983)))))

(assert (=> b!3678230 d!1080005))

(declare-fun d!1080007 () Bool)

(assert (=> d!1080007 (not (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987))))

(declare-fun lt!1285176 () Unit!56714)

(assert (=> d!1080007 (= lt!1285176 (choose!21966 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284963))))

(assert (=> d!1080007 (validRegex!4855 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1080007 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!788 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987 lt!1284963) lt!1285176)))

(declare-fun bs!573496 () Bool)

(assert (= bs!573496 d!1080007))

(assert (=> bs!573496 m!4188157))

(declare-fun m!4188887 () Bool)

(assert (=> bs!573496 m!4188887))

(assert (=> bs!573496 m!4188709))

(assert (=> bm!266400 d!1080007))

(declare-fun d!1080009 () Bool)

(declare-fun lt!1285179 () Bool)

(declare-fun content!5627 (List!38921) (InoxSet Rule!11480))

(assert (=> d!1080009 (= lt!1285179 (select (content!5627 rules!3307) rule!403))))

(declare-fun e!2277925 () Bool)

(assert (=> d!1080009 (= lt!1285179 e!2277925)))

(declare-fun res!1494521 () Bool)

(assert (=> d!1080009 (=> (not res!1494521) (not e!2277925))))

(assert (=> d!1080009 (= res!1494521 ((_ is Cons!38797) rules!3307))))

(assert (=> d!1080009 (= (contains!7747 rules!3307 rule!403) lt!1285179)))

(declare-fun b!3678745 () Bool)

(declare-fun e!2277926 () Bool)

(assert (=> b!3678745 (= e!2277925 e!2277926)))

(declare-fun res!1494520 () Bool)

(assert (=> b!3678745 (=> res!1494520 e!2277926)))

(assert (=> b!3678745 (= res!1494520 (= (h!44217 rules!3307) rule!403))))

(declare-fun b!3678746 () Bool)

(assert (=> b!3678746 (= e!2277926 (contains!7747 (t!300396 rules!3307) rule!403))))

(assert (= (and d!1080009 res!1494521) b!3678745))

(assert (= (and b!3678745 (not res!1494520)) b!3678746))

(declare-fun m!4188889 () Bool)

(assert (=> d!1080009 m!4188889))

(declare-fun m!4188891 () Bool)

(assert (=> d!1080009 m!4188891))

(declare-fun m!4188893 () Bool)

(assert (=> b!3678746 m!4188893))

(assert (=> b!3678231 d!1080009))

(declare-fun d!1080011 () Bool)

(assert (=> d!1080011 (not (matchR!5168 (regex!5840 rule!403) lt!1284983))))

(declare-fun lt!1285182 () Unit!56714)

(declare-fun choose!21975 (LexerInterface!5429 List!38921 Rule!11480 List!38920 List!38920 List!38920 Rule!11480) Unit!56714)

(assert (=> d!1080011 (= lt!1285182 (choose!21975 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284987 lt!1284950 lt!1284983 rule!403))))

(assert (=> d!1080011 (isPrefix!3203 lt!1284987 lt!1284950)))

(assert (=> d!1080011 (= (lemmaMaxPrefixOutputsMaxPrefix!382 thiss!23823 rules!3307 (rule!8674 (_1!22466 lt!1284940)) lt!1284987 lt!1284950 lt!1284983 rule!403) lt!1285182)))

(declare-fun bs!573497 () Bool)

(assert (= bs!573497 d!1080011))

(assert (=> bs!573497 m!4188257))

(declare-fun m!4188895 () Bool)

(assert (=> bs!573497 m!4188895))

(assert (=> bs!573497 m!4188177))

(assert (=> b!3678234 d!1080011))

(declare-fun d!1080013 () Bool)

(declare-fun lt!1285183 () Bool)

(assert (=> d!1080013 (= lt!1285183 (select (content!5626 lt!1284949) lt!1284967))))

(declare-fun e!2277928 () Bool)

(assert (=> d!1080013 (= lt!1285183 e!2277928)))

(declare-fun res!1494522 () Bool)

(assert (=> d!1080013 (=> (not res!1494522) (not e!2277928))))

(assert (=> d!1080013 (= res!1494522 ((_ is Cons!38796) lt!1284949))))

(assert (=> d!1080013 (= (contains!7748 lt!1284949 lt!1284967) lt!1285183)))

(declare-fun b!3678747 () Bool)

(declare-fun e!2277927 () Bool)

(assert (=> b!3678747 (= e!2277928 e!2277927)))

(declare-fun res!1494523 () Bool)

(assert (=> b!3678747 (=> res!1494523 e!2277927)))

(assert (=> b!3678747 (= res!1494523 (= (h!44216 lt!1284949) lt!1284967))))

(declare-fun b!3678748 () Bool)

(assert (=> b!3678748 (= e!2277927 (contains!7748 (t!300395 lt!1284949) lt!1284967))))

(assert (= (and d!1080013 res!1494522) b!3678747))

(assert (= (and b!3678747 (not res!1494523)) b!3678748))

(declare-fun m!4188897 () Bool)

(assert (=> d!1080013 m!4188897))

(declare-fun m!4188899 () Bool)

(assert (=> d!1080013 m!4188899))

(declare-fun m!4188901 () Bool)

(assert (=> b!3678748 m!4188901))

(assert (=> b!3678235 d!1080013))

(declare-fun d!1080015 () Bool)

(assert (=> d!1080015 (= (head!7890 suffix!1395) (h!44216 suffix!1395))))

(assert (=> b!3678235 d!1080015))

(declare-fun b!3678749 () Bool)

(declare-fun e!2277931 () List!38920)

(declare-fun e!2277929 () List!38920)

(assert (=> b!3678749 (= e!2277931 e!2277929)))

(declare-fun c!636273 () Bool)

(assert (=> b!3678749 (= c!636273 ((_ is Union!10599) (regex!5840 rule!403)))))

(declare-fun b!3678750 () Bool)

(declare-fun call!266455 () List!38920)

(assert (=> b!3678750 (= e!2277929 call!266455)))

(declare-fun b!3678751 () Bool)

(declare-fun e!2277932 () List!38920)

(declare-fun e!2277930 () List!38920)

(assert (=> b!3678751 (= e!2277932 e!2277930)))

(declare-fun c!636276 () Bool)

(assert (=> b!3678751 (= c!636276 ((_ is ElementMatch!10599) (regex!5840 rule!403)))))

(declare-fun bm!266447 () Bool)

(declare-fun call!266452 () List!38920)

(declare-fun call!266454 () List!38920)

(assert (=> bm!266447 (= call!266455 (++!9656 (ite c!636273 call!266454 call!266452) (ite c!636273 call!266452 call!266454)))))

(declare-fun b!3678752 () Bool)

(assert (=> b!3678752 (= e!2277932 Nil!38796)))

(declare-fun d!1080017 () Bool)

(declare-fun c!636274 () Bool)

(assert (=> d!1080017 (= c!636274 (or ((_ is EmptyExpr!10599) (regex!5840 rule!403)) ((_ is EmptyLang!10599) (regex!5840 rule!403))))))

(assert (=> d!1080017 (= (usedCharacters!1052 (regex!5840 rule!403)) e!2277932)))

(declare-fun bm!266448 () Bool)

(assert (=> bm!266448 (= call!266454 (usedCharacters!1052 (ite c!636273 (regOne!21711 (regex!5840 rule!403)) (regTwo!21710 (regex!5840 rule!403)))))))

(declare-fun b!3678753 () Bool)

(declare-fun call!266453 () List!38920)

(assert (=> b!3678753 (= e!2277931 call!266453)))

(declare-fun b!3678754 () Bool)

(declare-fun c!636275 () Bool)

(assert (=> b!3678754 (= c!636275 ((_ is Star!10599) (regex!5840 rule!403)))))

(assert (=> b!3678754 (= e!2277930 e!2277931)))

(declare-fun b!3678755 () Bool)

(assert (=> b!3678755 (= e!2277930 (Cons!38796 (c!636174 (regex!5840 rule!403)) Nil!38796))))

(declare-fun bm!266449 () Bool)

(assert (=> bm!266449 (= call!266453 (usedCharacters!1052 (ite c!636275 (reg!10928 (regex!5840 rule!403)) (ite c!636273 (regTwo!21711 (regex!5840 rule!403)) (regOne!21710 (regex!5840 rule!403))))))))

(declare-fun bm!266450 () Bool)

(assert (=> bm!266450 (= call!266452 call!266453)))

(declare-fun b!3678756 () Bool)

(assert (=> b!3678756 (= e!2277929 call!266455)))

(assert (= (and d!1080017 c!636274) b!3678752))

(assert (= (and d!1080017 (not c!636274)) b!3678751))

(assert (= (and b!3678751 c!636276) b!3678755))

(assert (= (and b!3678751 (not c!636276)) b!3678754))

(assert (= (and b!3678754 c!636275) b!3678753))

(assert (= (and b!3678754 (not c!636275)) b!3678749))

(assert (= (and b!3678749 c!636273) b!3678750))

(assert (= (and b!3678749 (not c!636273)) b!3678756))

(assert (= (or b!3678750 b!3678756) bm!266448))

(assert (= (or b!3678750 b!3678756) bm!266450))

(assert (= (or b!3678750 b!3678756) bm!266447))

(assert (= (or b!3678753 bm!266450) bm!266449))

(declare-fun m!4188903 () Bool)

(assert (=> bm!266447 m!4188903))

(declare-fun m!4188905 () Bool)

(assert (=> bm!266448 m!4188905))

(declare-fun m!4188907 () Bool)

(assert (=> bm!266449 m!4188907))

(assert (=> b!3678235 d!1080017))

(declare-fun b!3678757 () Bool)

(declare-fun res!1494524 () Bool)

(declare-fun e!2277936 () Bool)

(assert (=> b!3678757 (=> res!1494524 e!2277936)))

(declare-fun e!2277935 () Bool)

(assert (=> b!3678757 (= res!1494524 e!2277935)))

(declare-fun res!1494526 () Bool)

(assert (=> b!3678757 (=> (not res!1494526) (not e!2277935))))

(declare-fun lt!1285184 () Bool)

(assert (=> b!3678757 (= res!1494526 lt!1285184)))

(declare-fun b!3678758 () Bool)

(declare-fun e!2277938 () Bool)

(assert (=> b!3678758 (= e!2277936 e!2277938)))

(declare-fun res!1494525 () Bool)

(assert (=> b!3678758 (=> (not res!1494525) (not e!2277938))))

(assert (=> b!3678758 (= res!1494525 (not lt!1285184))))

(declare-fun b!3678759 () Bool)

(assert (=> b!3678759 (= e!2277935 (= (head!7890 lt!1284987) (c!636174 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun b!3678760 () Bool)

(declare-fun e!2277933 () Bool)

(assert (=> b!3678760 (= e!2277933 (nullable!3693 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3678761 () Bool)

(declare-fun res!1494527 () Bool)

(declare-fun e!2277939 () Bool)

(assert (=> b!3678761 (=> res!1494527 e!2277939)))

(assert (=> b!3678761 (= res!1494527 (not (isEmpty!23038 (tail!5691 lt!1284987))))))

(declare-fun b!3678762 () Bool)

(assert (=> b!3678762 (= e!2277939 (not (= (head!7890 lt!1284987) (c!636174 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))))

(declare-fun b!3678763 () Bool)

(declare-fun res!1494529 () Bool)

(assert (=> b!3678763 (=> res!1494529 e!2277936)))

(assert (=> b!3678763 (= res!1494529 (not ((_ is ElementMatch!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun e!2277934 () Bool)

(assert (=> b!3678763 (= e!2277934 e!2277936)))

(declare-fun b!3678764 () Bool)

(assert (=> b!3678764 (= e!2277938 e!2277939)))

(declare-fun res!1494531 () Bool)

(assert (=> b!3678764 (=> res!1494531 e!2277939)))

(declare-fun call!266456 () Bool)

(assert (=> b!3678764 (= res!1494531 call!266456)))

(declare-fun b!3678765 () Bool)

(declare-fun res!1494530 () Bool)

(assert (=> b!3678765 (=> (not res!1494530) (not e!2277935))))

(assert (=> b!3678765 (= res!1494530 (isEmpty!23038 (tail!5691 lt!1284987)))))

(declare-fun d!1080019 () Bool)

(declare-fun e!2277937 () Bool)

(assert (=> d!1080019 e!2277937))

(declare-fun c!636278 () Bool)

(assert (=> d!1080019 (= c!636278 ((_ is EmptyExpr!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(assert (=> d!1080019 (= lt!1285184 e!2277933)))

(declare-fun c!636279 () Bool)

(assert (=> d!1080019 (= c!636279 (isEmpty!23038 lt!1284987))))

(assert (=> d!1080019 (validRegex!4855 (regex!5840 (rule!8674 (_1!22466 lt!1284940))))))

(assert (=> d!1080019 (= (matchR!5168 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) lt!1284987) lt!1285184)))

(declare-fun b!3678766 () Bool)

(declare-fun res!1494528 () Bool)

(assert (=> b!3678766 (=> (not res!1494528) (not e!2277935))))

(assert (=> b!3678766 (= res!1494528 (not call!266456))))

(declare-fun b!3678767 () Bool)

(assert (=> b!3678767 (= e!2277934 (not lt!1285184))))

(declare-fun b!3678768 () Bool)

(assert (=> b!3678768 (= e!2277937 (= lt!1285184 call!266456))))

(declare-fun b!3678769 () Bool)

(assert (=> b!3678769 (= e!2277933 (matchR!5168 (derivativeStep!3242 (regex!5840 (rule!8674 (_1!22466 lt!1284940))) (head!7890 lt!1284987)) (tail!5691 lt!1284987)))))

(declare-fun b!3678770 () Bool)

(assert (=> b!3678770 (= e!2277937 e!2277934)))

(declare-fun c!636277 () Bool)

(assert (=> b!3678770 (= c!636277 ((_ is EmptyLang!10599) (regex!5840 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun bm!266451 () Bool)

(assert (=> bm!266451 (= call!266456 (isEmpty!23038 lt!1284987))))

(assert (= (and d!1080019 c!636279) b!3678760))

(assert (= (and d!1080019 (not c!636279)) b!3678769))

(assert (= (and d!1080019 c!636278) b!3678768))

(assert (= (and d!1080019 (not c!636278)) b!3678770))

(assert (= (and b!3678770 c!636277) b!3678767))

(assert (= (and b!3678770 (not c!636277)) b!3678763))

(assert (= (and b!3678763 (not res!1494529)) b!3678757))

(assert (= (and b!3678757 res!1494526) b!3678766))

(assert (= (and b!3678766 res!1494528) b!3678765))

(assert (= (and b!3678765 res!1494530) b!3678759))

(assert (= (and b!3678757 (not res!1494524)) b!3678758))

(assert (= (and b!3678758 res!1494525) b!3678764))

(assert (= (and b!3678764 (not res!1494531)) b!3678761))

(assert (= (and b!3678761 (not res!1494527)) b!3678762))

(assert (= (or b!3678768 b!3678764 b!3678766) bm!266451))

(declare-fun m!4188909 () Bool)

(assert (=> bm!266451 m!4188909))

(assert (=> d!1080019 m!4188909))

(assert (=> d!1080019 m!4188709))

(assert (=> b!3678760 m!4188871))

(declare-fun m!4188911 () Bool)

(assert (=> b!3678761 m!4188911))

(assert (=> b!3678761 m!4188911))

(declare-fun m!4188913 () Bool)

(assert (=> b!3678761 m!4188913))

(assert (=> b!3678769 m!4188209))

(assert (=> b!3678769 m!4188209))

(declare-fun m!4188915 () Bool)

(assert (=> b!3678769 m!4188915))

(assert (=> b!3678769 m!4188911))

(assert (=> b!3678769 m!4188915))

(assert (=> b!3678769 m!4188911))

(declare-fun m!4188917 () Bool)

(assert (=> b!3678769 m!4188917))

(assert (=> b!3678759 m!4188209))

(assert (=> b!3678762 m!4188209))

(assert (=> b!3678765 m!4188911))

(assert (=> b!3678765 m!4188911))

(assert (=> b!3678765 m!4188913))

(assert (=> b!3678251 d!1080019))

(declare-fun d!1080021 () Bool)

(assert (=> d!1080021 (= (inv!52287 (tag!6640 anOtherTypeRule!33)) (= (mod (str.len (value!186899 (tag!6640 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3678252 d!1080021))

(declare-fun d!1080023 () Bool)

(declare-fun res!1494532 () Bool)

(declare-fun e!2277940 () Bool)

(assert (=> d!1080023 (=> (not res!1494532) (not e!2277940))))

(assert (=> d!1080023 (= res!1494532 (semiInverseModEq!2493 (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 anOtherTypeRule!33))))))

(assert (=> d!1080023 (= (inv!52290 (transformation!5840 anOtherTypeRule!33)) e!2277940)))

(declare-fun b!3678771 () Bool)

(assert (=> b!3678771 (= e!2277940 (equivClasses!2392 (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 anOtherTypeRule!33))))))

(assert (= (and d!1080023 res!1494532) b!3678771))

(declare-fun m!4188919 () Bool)

(assert (=> d!1080023 m!4188919))

(declare-fun m!4188921 () Bool)

(assert (=> b!3678771 m!4188921))

(assert (=> b!3678252 d!1080023))

(declare-fun d!1080025 () Bool)

(assert (=> d!1080025 (= (isDefined!6541 lt!1284943) (not (isEmpty!23042 lt!1284943)))))

(declare-fun bs!573498 () Bool)

(assert (= bs!573498 d!1080025))

(declare-fun m!4188923 () Bool)

(assert (=> bs!573498 m!4188923))

(assert (=> b!3678226 d!1080025))

(declare-fun b!3678790 () Bool)

(declare-fun e!2277947 () Option!8308)

(declare-fun call!266459 () Option!8308)

(assert (=> b!3678790 (= e!2277947 call!266459)))

(declare-fun b!3678791 () Bool)

(declare-fun res!1494551 () Bool)

(declare-fun e!2277948 () Bool)

(assert (=> b!3678791 (=> (not res!1494551) (not e!2277948))))

(declare-fun lt!1285195 () Option!8308)

(assert (=> b!3678791 (= res!1494551 (= (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285195)))) (originalCharacters!6554 (_1!22466 (get!12838 lt!1285195)))))))

(declare-fun b!3678792 () Bool)

(declare-fun res!1494548 () Bool)

(assert (=> b!3678792 (=> (not res!1494548) (not e!2277948))))

(assert (=> b!3678792 (= res!1494548 (matchR!5168 (regex!5840 (rule!8674 (_1!22466 (get!12838 lt!1285195)))) (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285195))))))))

(declare-fun b!3678793 () Bool)

(declare-fun res!1494553 () Bool)

(assert (=> b!3678793 (=> (not res!1494553) (not e!2277948))))

(assert (=> b!3678793 (= res!1494553 (< (size!29663 (_2!22466 (get!12838 lt!1285195))) (size!29663 lt!1284983)))))

(declare-fun bm!266454 () Bool)

(assert (=> bm!266454 (= call!266459 (maxPrefixOneRule!2101 thiss!23823 (h!44217 rules!3307) lt!1284983))))

(declare-fun b!3678794 () Bool)

(declare-fun lt!1285197 () Option!8308)

(declare-fun lt!1285198 () Option!8308)

(assert (=> b!3678794 (= e!2277947 (ite (and ((_ is None!8307) lt!1285197) ((_ is None!8307) lt!1285198)) None!8307 (ite ((_ is None!8307) lt!1285198) lt!1285197 (ite ((_ is None!8307) lt!1285197) lt!1285198 (ite (>= (size!29661 (_1!22466 (v!38239 lt!1285197))) (size!29661 (_1!22466 (v!38239 lt!1285198)))) lt!1285197 lt!1285198)))))))

(assert (=> b!3678794 (= lt!1285197 call!266459)))

(assert (=> b!3678794 (= lt!1285198 (maxPrefix!2963 thiss!23823 (t!300396 rules!3307) lt!1284983))))

(declare-fun b!3678795 () Bool)

(assert (=> b!3678795 (= e!2277948 (contains!7747 rules!3307 (rule!8674 (_1!22466 (get!12838 lt!1285195)))))))

(declare-fun d!1080027 () Bool)

(declare-fun e!2277949 () Bool)

(assert (=> d!1080027 e!2277949))

(declare-fun res!1494549 () Bool)

(assert (=> d!1080027 (=> res!1494549 e!2277949)))

(assert (=> d!1080027 (= res!1494549 (isEmpty!23042 lt!1285195))))

(assert (=> d!1080027 (= lt!1285195 e!2277947)))

(declare-fun c!636282 () Bool)

(assert (=> d!1080027 (= c!636282 (and ((_ is Cons!38797) rules!3307) ((_ is Nil!38797) (t!300396 rules!3307))))))

(declare-fun lt!1285199 () Unit!56714)

(declare-fun lt!1285196 () Unit!56714)

(assert (=> d!1080027 (= lt!1285199 lt!1285196)))

(assert (=> d!1080027 (isPrefix!3203 lt!1284983 lt!1284983)))

(declare-fun lemmaIsPrefixRefl!2016 (List!38920 List!38920) Unit!56714)

(assert (=> d!1080027 (= lt!1285196 (lemmaIsPrefixRefl!2016 lt!1284983 lt!1284983))))

(declare-fun rulesValidInductive!2079 (LexerInterface!5429 List!38921) Bool)

(assert (=> d!1080027 (rulesValidInductive!2079 thiss!23823 rules!3307)))

(assert (=> d!1080027 (= (maxPrefix!2963 thiss!23823 rules!3307 lt!1284983) lt!1285195)))

(declare-fun b!3678796 () Bool)

(assert (=> b!3678796 (= e!2277949 e!2277948)))

(declare-fun res!1494552 () Bool)

(assert (=> b!3678796 (=> (not res!1494552) (not e!2277948))))

(assert (=> b!3678796 (= res!1494552 (isDefined!6541 lt!1285195))))

(declare-fun b!3678797 () Bool)

(declare-fun res!1494550 () Bool)

(assert (=> b!3678797 (=> (not res!1494550) (not e!2277948))))

(assert (=> b!3678797 (= res!1494550 (= (value!186900 (_1!22466 (get!12838 lt!1285195))) (apply!9342 (transformation!5840 (rule!8674 (_1!22466 (get!12838 lt!1285195)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285195)))))))))

(declare-fun b!3678798 () Bool)

(declare-fun res!1494547 () Bool)

(assert (=> b!3678798 (=> (not res!1494547) (not e!2277948))))

(assert (=> b!3678798 (= res!1494547 (= (++!9656 (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285195)))) (_2!22466 (get!12838 lt!1285195))) lt!1284983))))

(assert (= (and d!1080027 c!636282) b!3678790))

(assert (= (and d!1080027 (not c!636282)) b!3678794))

(assert (= (or b!3678790 b!3678794) bm!266454))

(assert (= (and d!1080027 (not res!1494549)) b!3678796))

(assert (= (and b!3678796 res!1494552) b!3678791))

(assert (= (and b!3678791 res!1494551) b!3678793))

(assert (= (and b!3678793 res!1494553) b!3678798))

(assert (= (and b!3678798 res!1494547) b!3678797))

(assert (= (and b!3678797 res!1494550) b!3678792))

(assert (= (and b!3678792 res!1494548) b!3678795))

(declare-fun m!4188925 () Bool)

(assert (=> b!3678797 m!4188925))

(declare-fun m!4188927 () Bool)

(assert (=> b!3678797 m!4188927))

(assert (=> b!3678797 m!4188927))

(declare-fun m!4188929 () Bool)

(assert (=> b!3678797 m!4188929))

(declare-fun m!4188931 () Bool)

(assert (=> b!3678794 m!4188931))

(assert (=> b!3678795 m!4188925))

(declare-fun m!4188933 () Bool)

(assert (=> b!3678795 m!4188933))

(assert (=> b!3678791 m!4188925))

(declare-fun m!4188935 () Bool)

(assert (=> b!3678791 m!4188935))

(assert (=> b!3678791 m!4188935))

(declare-fun m!4188937 () Bool)

(assert (=> b!3678791 m!4188937))

(declare-fun m!4188939 () Bool)

(assert (=> d!1080027 m!4188939))

(assert (=> d!1080027 m!4188885))

(declare-fun m!4188941 () Bool)

(assert (=> d!1080027 m!4188941))

(declare-fun m!4188943 () Bool)

(assert (=> d!1080027 m!4188943))

(declare-fun m!4188945 () Bool)

(assert (=> b!3678796 m!4188945))

(assert (=> b!3678792 m!4188925))

(assert (=> b!3678792 m!4188935))

(assert (=> b!3678792 m!4188935))

(assert (=> b!3678792 m!4188937))

(assert (=> b!3678792 m!4188937))

(declare-fun m!4188947 () Bool)

(assert (=> b!3678792 m!4188947))

(declare-fun m!4188949 () Bool)

(assert (=> bm!266454 m!4188949))

(assert (=> b!3678793 m!4188925))

(declare-fun m!4188951 () Bool)

(assert (=> b!3678793 m!4188951))

(assert (=> b!3678793 m!4188199))

(assert (=> b!3678798 m!4188925))

(assert (=> b!3678798 m!4188935))

(assert (=> b!3678798 m!4188935))

(assert (=> b!3678798 m!4188937))

(assert (=> b!3678798 m!4188937))

(declare-fun m!4188953 () Bool)

(assert (=> b!3678798 m!4188953))

(assert (=> b!3678226 d!1080027))

(declare-fun d!1080029 () Bool)

(assert (=> d!1080029 (= (list!14418 lt!1284953) (list!14419 (c!636175 lt!1284953)))))

(declare-fun bs!573499 () Bool)

(assert (= bs!573499 d!1080029))

(declare-fun m!4188955 () Bool)

(assert (=> bs!573499 m!4188955))

(assert (=> b!3678226 d!1080029))

(declare-fun d!1080031 () Bool)

(declare-fun lt!1285234 () BalanceConc!23364)

(assert (=> d!1080031 (= (list!14418 lt!1285234) (originalCharacters!6554 token!511))))

(assert (=> d!1080031 (= lt!1285234 (dynLambda!17004 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (value!186900 token!511)))))

(assert (=> d!1080031 (= (charsOf!3854 token!511) lt!1285234)))

(declare-fun b_lambda!109281 () Bool)

(assert (=> (not b_lambda!109281) (not d!1080031)))

(assert (=> d!1080031 t!300494))

(declare-fun b_and!274699 () Bool)

(assert (= b_and!274691 (and (=> t!300494 result!259558) b_and!274699)))

(assert (=> d!1080031 t!300496))

(declare-fun b_and!274701 () Bool)

(assert (= b_and!274693 (and (=> t!300496 result!259560) b_and!274701)))

(assert (=> d!1080031 t!300498))

(declare-fun b_and!274703 () Bool)

(assert (= b_and!274695 (and (=> t!300498 result!259562) b_and!274703)))

(assert (=> d!1080031 t!300500))

(declare-fun b_and!274705 () Bool)

(assert (= b_and!274697 (and (=> t!300500 result!259564) b_and!274705)))

(declare-fun m!4188957 () Bool)

(assert (=> d!1080031 m!4188957))

(assert (=> d!1080031 m!4188853))

(assert (=> b!3678226 d!1080031))

(declare-fun d!1080033 () Bool)

(assert (=> d!1080033 (= (inv!52287 (tag!6640 (h!44217 rules!3307))) (= (mod (str.len (value!186899 (tag!6640 (h!44217 rules!3307)))) 2) 0))))

(assert (=> b!3678265 d!1080033))

(declare-fun d!1080035 () Bool)

(declare-fun res!1494558 () Bool)

(declare-fun e!2277954 () Bool)

(assert (=> d!1080035 (=> (not res!1494558) (not e!2277954))))

(assert (=> d!1080035 (= res!1494558 (semiInverseModEq!2493 (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 (h!44217 rules!3307)))))))

(assert (=> d!1080035 (= (inv!52290 (transformation!5840 (h!44217 rules!3307))) e!2277954)))

(declare-fun b!3678807 () Bool)

(assert (=> b!3678807 (= e!2277954 (equivClasses!2392 (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 (h!44217 rules!3307)))))))

(assert (= (and d!1080035 res!1494558) b!3678807))

(declare-fun m!4188959 () Bool)

(assert (=> d!1080035 m!4188959))

(declare-fun m!4188961 () Bool)

(assert (=> b!3678807 m!4188961))

(assert (=> b!3678265 d!1080035))

(declare-fun d!1080037 () Bool)

(declare-fun lt!1285235 () Bool)

(assert (=> d!1080037 (= lt!1285235 (select (content!5627 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2277955 () Bool)

(assert (=> d!1080037 (= lt!1285235 e!2277955)))

(declare-fun res!1494560 () Bool)

(assert (=> d!1080037 (=> (not res!1494560) (not e!2277955))))

(assert (=> d!1080037 (= res!1494560 ((_ is Cons!38797) rules!3307))))

(assert (=> d!1080037 (= (contains!7747 rules!3307 anOtherTypeRule!33) lt!1285235)))

(declare-fun b!3678808 () Bool)

(declare-fun e!2277956 () Bool)

(assert (=> b!3678808 (= e!2277955 e!2277956)))

(declare-fun res!1494559 () Bool)

(assert (=> b!3678808 (=> res!1494559 e!2277956)))

(assert (=> b!3678808 (= res!1494559 (= (h!44217 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3678809 () Bool)

(assert (=> b!3678809 (= e!2277956 (contains!7747 (t!300396 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1080037 res!1494560) b!3678808))

(assert (= (and b!3678808 (not res!1494559)) b!3678809))

(assert (=> d!1080037 m!4188889))

(declare-fun m!4188963 () Bool)

(assert (=> d!1080037 m!4188963))

(declare-fun m!4188965 () Bool)

(assert (=> b!3678809 m!4188965))

(assert (=> b!3678246 d!1080037))

(declare-fun d!1080039 () Bool)

(assert (=> d!1080039 (= (isEmpty!23038 suffix!1395) ((_ is Nil!38796) suffix!1395))))

(assert (=> b!3678227 d!1080039))

(declare-fun b!3678823 () Bool)

(declare-fun e!2277964 () Int)

(declare-fun e!2277965 () Int)

(assert (=> b!3678823 (= e!2277964 e!2277965)))

(declare-fun c!636290 () Bool)

(assert (=> b!3678823 (= c!636290 (and ((_ is Cons!38797) rules!3307) (not (= (h!44217 rules!3307) (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun b!3678824 () Bool)

(assert (=> b!3678824 (= e!2277965 (+ 1 (getIndex!508 (t!300396 rules!3307) (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3678822 () Bool)

(assert (=> b!3678822 (= e!2277964 0)))

(declare-fun d!1080041 () Bool)

(declare-fun lt!1285255 () Int)

(assert (=> d!1080041 (>= lt!1285255 0)))

(assert (=> d!1080041 (= lt!1285255 e!2277964)))

(declare-fun c!636291 () Bool)

(assert (=> d!1080041 (= c!636291 (and ((_ is Cons!38797) rules!3307) (= (h!44217 rules!3307) (rule!8674 (_1!22466 lt!1284940)))))))

(assert (=> d!1080041 (contains!7747 rules!3307 (rule!8674 (_1!22466 lt!1284940)))))

(assert (=> d!1080041 (= (getIndex!508 rules!3307 (rule!8674 (_1!22466 lt!1284940))) lt!1285255)))

(declare-fun b!3678825 () Bool)

(assert (=> b!3678825 (= e!2277965 (- 1))))

(assert (= (and d!1080041 c!636291) b!3678822))

(assert (= (and d!1080041 (not c!636291)) b!3678823))

(assert (= (and b!3678823 c!636290) b!3678824))

(assert (= (and b!3678823 (not c!636290)) b!3678825))

(declare-fun m!4188967 () Bool)

(assert (=> b!3678824 m!4188967))

(declare-fun m!4188969 () Bool)

(assert (=> d!1080041 m!4188969))

(assert (=> b!3678264 d!1080041))

(declare-fun b!3678827 () Bool)

(declare-fun e!2277966 () Int)

(declare-fun e!2277967 () Int)

(assert (=> b!3678827 (= e!2277966 e!2277967)))

(declare-fun c!636292 () Bool)

(assert (=> b!3678827 (= c!636292 (and ((_ is Cons!38797) rules!3307) (not (= (h!44217 rules!3307) rule!403))))))

(declare-fun b!3678828 () Bool)

(assert (=> b!3678828 (= e!2277967 (+ 1 (getIndex!508 (t!300396 rules!3307) rule!403)))))

(declare-fun b!3678826 () Bool)

(assert (=> b!3678826 (= e!2277966 0)))

(declare-fun d!1080043 () Bool)

(declare-fun lt!1285256 () Int)

(assert (=> d!1080043 (>= lt!1285256 0)))

(assert (=> d!1080043 (= lt!1285256 e!2277966)))

(declare-fun c!636293 () Bool)

(assert (=> d!1080043 (= c!636293 (and ((_ is Cons!38797) rules!3307) (= (h!44217 rules!3307) rule!403)))))

(assert (=> d!1080043 (contains!7747 rules!3307 rule!403)))

(assert (=> d!1080043 (= (getIndex!508 rules!3307 rule!403) lt!1285256)))

(declare-fun b!3678829 () Bool)

(assert (=> b!3678829 (= e!2277967 (- 1))))

(assert (= (and d!1080043 c!636293) b!3678826))

(assert (= (and d!1080043 (not c!636293)) b!3678827))

(assert (= (and b!3678827 c!636292) b!3678828))

(assert (= (and b!3678827 (not c!636292)) b!3678829))

(declare-fun m!4188977 () Bool)

(assert (=> b!3678828 m!4188977))

(assert (=> d!1080043 m!4188121))

(assert (=> b!3678264 d!1080043))

(declare-fun d!1080045 () Bool)

(assert (=> d!1080045 (= (rule!8674 (_1!22466 lt!1284940)) rule!403)))

(declare-fun lt!1285260 () Unit!56714)

(declare-fun choose!21977 (List!38921 Rule!11480 Rule!11480) Unit!56714)

(assert (=> d!1080045 (= lt!1285260 (choose!21977 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403))))

(assert (=> d!1080045 (contains!7747 rules!3307 (rule!8674 (_1!22466 lt!1284940)))))

(assert (=> d!1080045 (= (lemmaSameIndexThenSameElement!240 rules!3307 (rule!8674 (_1!22466 lt!1284940)) rule!403) lt!1285260)))

(declare-fun bs!573501 () Bool)

(assert (= bs!573501 d!1080045))

(declare-fun m!4189023 () Bool)

(assert (=> bs!573501 m!4189023))

(assert (=> bs!573501 m!4188969))

(assert (=> b!3678264 d!1080045))

(declare-fun b!3678856 () Bool)

(declare-fun e!2277982 () Bool)

(declare-fun e!2277983 () Bool)

(assert (=> b!3678856 (= e!2277982 e!2277983)))

(declare-fun c!636302 () Bool)

(assert (=> b!3678856 (= c!636302 ((_ is IntegerValue!18211) (value!186900 token!511)))))

(declare-fun b!3678857 () Bool)

(declare-fun res!1494574 () Bool)

(declare-fun e!2277984 () Bool)

(assert (=> b!3678857 (=> res!1494574 e!2277984)))

(assert (=> b!3678857 (= res!1494574 (not ((_ is IntegerValue!18212) (value!186900 token!511))))))

(assert (=> b!3678857 (= e!2277983 e!2277984)))

(declare-fun b!3678858 () Bool)

(declare-fun inv!15 (TokenValue!6070) Bool)

(assert (=> b!3678858 (= e!2277984 (inv!15 (value!186900 token!511)))))

(declare-fun b!3678859 () Bool)

(declare-fun inv!16 (TokenValue!6070) Bool)

(assert (=> b!3678859 (= e!2277982 (inv!16 (value!186900 token!511)))))

(declare-fun b!3678855 () Bool)

(declare-fun inv!17 (TokenValue!6070) Bool)

(assert (=> b!3678855 (= e!2277983 (inv!17 (value!186900 token!511)))))

(declare-fun d!1080053 () Bool)

(declare-fun c!636301 () Bool)

(assert (=> d!1080053 (= c!636301 ((_ is IntegerValue!18210) (value!186900 token!511)))))

(assert (=> d!1080053 (= (inv!21 (value!186900 token!511)) e!2277982)))

(assert (= (and d!1080053 c!636301) b!3678859))

(assert (= (and d!1080053 (not c!636301)) b!3678856))

(assert (= (and b!3678856 c!636302) b!3678855))

(assert (= (and b!3678856 (not c!636302)) b!3678857))

(assert (= (and b!3678857 (not res!1494574)) b!3678858))

(declare-fun m!4189049 () Bool)

(assert (=> b!3678858 m!4189049))

(declare-fun m!4189051 () Bool)

(assert (=> b!3678859 m!4189051))

(declare-fun m!4189053 () Bool)

(assert (=> b!3678855 m!4189053))

(assert (=> b!3678245 d!1080053))

(declare-fun b!3678869 () Bool)

(declare-fun res!1494582 () Bool)

(declare-fun e!2277991 () Bool)

(assert (=> b!3678869 (=> res!1494582 e!2277991)))

(declare-fun e!2277990 () Bool)

(assert (=> b!3678869 (= res!1494582 e!2277990)))

(declare-fun res!1494584 () Bool)

(assert (=> b!3678869 (=> (not res!1494584) (not e!2277990))))

(declare-fun lt!1285267 () Bool)

(assert (=> b!3678869 (= res!1494584 lt!1285267)))

(declare-fun b!3678870 () Bool)

(declare-fun e!2277993 () Bool)

(assert (=> b!3678870 (= e!2277991 e!2277993)))

(declare-fun res!1494583 () Bool)

(assert (=> b!3678870 (=> (not res!1494583) (not e!2277993))))

(assert (=> b!3678870 (= res!1494583 (not lt!1285267))))

(declare-fun b!3678871 () Bool)

(assert (=> b!3678871 (= e!2277990 (= (head!7890 lt!1284983) (c!636174 (regex!5840 rule!403))))))

(declare-fun b!3678872 () Bool)

(declare-fun e!2277988 () Bool)

(assert (=> b!3678872 (= e!2277988 (nullable!3693 (regex!5840 rule!403)))))

(declare-fun b!3678873 () Bool)

(declare-fun res!1494585 () Bool)

(declare-fun e!2277994 () Bool)

(assert (=> b!3678873 (=> res!1494585 e!2277994)))

(assert (=> b!3678873 (= res!1494585 (not (isEmpty!23038 (tail!5691 lt!1284983))))))

(declare-fun b!3678874 () Bool)

(assert (=> b!3678874 (= e!2277994 (not (= (head!7890 lt!1284983) (c!636174 (regex!5840 rule!403)))))))

(declare-fun b!3678875 () Bool)

(declare-fun res!1494587 () Bool)

(assert (=> b!3678875 (=> res!1494587 e!2277991)))

(assert (=> b!3678875 (= res!1494587 (not ((_ is ElementMatch!10599) (regex!5840 rule!403))))))

(declare-fun e!2277989 () Bool)

(assert (=> b!3678875 (= e!2277989 e!2277991)))

(declare-fun b!3678876 () Bool)

(assert (=> b!3678876 (= e!2277993 e!2277994)))

(declare-fun res!1494589 () Bool)

(assert (=> b!3678876 (=> res!1494589 e!2277994)))

(declare-fun call!266462 () Bool)

(assert (=> b!3678876 (= res!1494589 call!266462)))

(declare-fun b!3678877 () Bool)

(declare-fun res!1494588 () Bool)

(assert (=> b!3678877 (=> (not res!1494588) (not e!2277990))))

(assert (=> b!3678877 (= res!1494588 (isEmpty!23038 (tail!5691 lt!1284983)))))

(declare-fun d!1080067 () Bool)

(declare-fun e!2277992 () Bool)

(assert (=> d!1080067 e!2277992))

(declare-fun c!636305 () Bool)

(assert (=> d!1080067 (= c!636305 ((_ is EmptyExpr!10599) (regex!5840 rule!403)))))

(assert (=> d!1080067 (= lt!1285267 e!2277988)))

(declare-fun c!636306 () Bool)

(assert (=> d!1080067 (= c!636306 (isEmpty!23038 lt!1284983))))

(assert (=> d!1080067 (validRegex!4855 (regex!5840 rule!403))))

(assert (=> d!1080067 (= (matchR!5168 (regex!5840 rule!403) lt!1284983) lt!1285267)))

(declare-fun b!3678878 () Bool)

(declare-fun res!1494586 () Bool)

(assert (=> b!3678878 (=> (not res!1494586) (not e!2277990))))

(assert (=> b!3678878 (= res!1494586 (not call!266462))))

(declare-fun b!3678879 () Bool)

(assert (=> b!3678879 (= e!2277989 (not lt!1285267))))

(declare-fun b!3678880 () Bool)

(assert (=> b!3678880 (= e!2277992 (= lt!1285267 call!266462))))

(declare-fun b!3678881 () Bool)

(assert (=> b!3678881 (= e!2277988 (matchR!5168 (derivativeStep!3242 (regex!5840 rule!403) (head!7890 lt!1284983)) (tail!5691 lt!1284983)))))

(declare-fun b!3678882 () Bool)

(assert (=> b!3678882 (= e!2277992 e!2277989)))

(declare-fun c!636304 () Bool)

(assert (=> b!3678882 (= c!636304 ((_ is EmptyLang!10599) (regex!5840 rule!403)))))

(declare-fun bm!266457 () Bool)

(assert (=> bm!266457 (= call!266462 (isEmpty!23038 lt!1284983))))

(assert (= (and d!1080067 c!636306) b!3678872))

(assert (= (and d!1080067 (not c!636306)) b!3678881))

(assert (= (and d!1080067 c!636305) b!3678880))

(assert (= (and d!1080067 (not c!636305)) b!3678882))

(assert (= (and b!3678882 c!636304) b!3678879))

(assert (= (and b!3678882 (not c!636304)) b!3678875))

(assert (= (and b!3678875 (not res!1494587)) b!3678869))

(assert (= (and b!3678869 res!1494584) b!3678878))

(assert (= (and b!3678878 res!1494586) b!3678877))

(assert (= (and b!3678877 res!1494588) b!3678871))

(assert (= (and b!3678869 (not res!1494582)) b!3678870))

(assert (= (and b!3678870 res!1494583) b!3678876))

(assert (= (and b!3678876 (not res!1494589)) b!3678873))

(assert (= (and b!3678873 (not res!1494585)) b!3678874))

(assert (= (or b!3678880 b!3678876 b!3678878) bm!266457))

(assert (=> bm!266457 m!4188869))

(assert (=> d!1080067 m!4188869))

(assert (=> d!1080067 m!4188565))

(declare-fun m!4189055 () Bool)

(assert (=> b!3678872 m!4189055))

(assert (=> b!3678873 m!4188865))

(assert (=> b!3678873 m!4188865))

(assert (=> b!3678873 m!4188873))

(assert (=> b!3678881 m!4188875))

(assert (=> b!3678881 m!4188875))

(declare-fun m!4189057 () Bool)

(assert (=> b!3678881 m!4189057))

(assert (=> b!3678881 m!4188865))

(assert (=> b!3678881 m!4189057))

(assert (=> b!3678881 m!4188865))

(declare-fun m!4189059 () Bool)

(assert (=> b!3678881 m!4189059))

(assert (=> b!3678871 m!4188875))

(assert (=> b!3678874 m!4188875))

(assert (=> b!3678877 m!4188865))

(assert (=> b!3678877 m!4188865))

(assert (=> b!3678877 m!4188873))

(assert (=> b!3678248 d!1080067))

(declare-fun d!1080069 () Bool)

(declare-fun res!1494594 () Bool)

(declare-fun e!2277997 () Bool)

(assert (=> d!1080069 (=> (not res!1494594) (not e!2277997))))

(assert (=> d!1080069 (= res!1494594 (validRegex!4855 (regex!5840 rule!403)))))

(assert (=> d!1080069 (= (ruleValid!2104 thiss!23823 rule!403) e!2277997)))

(declare-fun b!3678887 () Bool)

(declare-fun res!1494595 () Bool)

(assert (=> b!3678887 (=> (not res!1494595) (not e!2277997))))

(assert (=> b!3678887 (= res!1494595 (not (nullable!3693 (regex!5840 rule!403))))))

(declare-fun b!3678888 () Bool)

(assert (=> b!3678888 (= e!2277997 (not (= (tag!6640 rule!403) (String!43685 ""))))))

(assert (= (and d!1080069 res!1494594) b!3678887))

(assert (= (and b!3678887 res!1494595) b!3678888))

(assert (=> d!1080069 m!4188565))

(assert (=> b!3678887 m!4189055))

(assert (=> b!3678248 d!1080069))

(declare-fun d!1080077 () Bool)

(assert (=> d!1080077 (ruleValid!2104 thiss!23823 rule!403)))

(declare-fun lt!1285272 () Unit!56714)

(declare-fun choose!21980 (LexerInterface!5429 Rule!11480 List!38921) Unit!56714)

(assert (=> d!1080077 (= lt!1285272 (choose!21980 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1080077 (contains!7747 rules!3307 rule!403)))

(assert (=> d!1080077 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1258 thiss!23823 rule!403 rules!3307) lt!1285272)))

(declare-fun bs!573505 () Bool)

(assert (= bs!573505 d!1080077))

(assert (=> bs!573505 m!4188259))

(declare-fun m!4189101 () Bool)

(assert (=> bs!573505 m!4189101))

(assert (=> bs!573505 m!4188121))

(assert (=> b!3678248 d!1080077))

(declare-fun d!1080081 () Bool)

(assert (=> d!1080081 (not (contains!7748 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284963))))

(declare-fun lt!1285279 () Unit!56714)

(declare-fun choose!21981 (LexerInterface!5429 List!38921 List!38921 Rule!11480 Rule!11480 C!21384) Unit!56714)

(assert (=> d!1080081 (= lt!1285279 (choose!21981 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8674 (_1!22466 lt!1284940)) lt!1284963))))

(assert (=> d!1080081 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1080081 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!368 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8674 (_1!22466 lt!1284940)) lt!1284963) lt!1285279)))

(declare-fun bs!573506 () Bool)

(assert (= bs!573506 d!1080081))

(assert (=> bs!573506 m!4188123))

(assert (=> bs!573506 m!4188123))

(assert (=> bs!573506 m!4188859))

(declare-fun m!4189109 () Bool)

(assert (=> bs!573506 m!4189109))

(assert (=> bs!573506 m!4188299))

(assert (=> b!3678229 d!1080081))

(declare-fun d!1080087 () Bool)

(assert (=> d!1080087 (= (head!7890 lt!1284987) (h!44216 lt!1284987))))

(assert (=> b!3678268 d!1080087))

(declare-fun d!1080089 () Bool)

(declare-fun lt!1285282 () Int)

(assert (=> d!1080089 (>= lt!1285282 0)))

(declare-fun e!2278009 () Int)

(assert (=> d!1080089 (= lt!1285282 e!2278009)))

(declare-fun c!636316 () Bool)

(assert (=> d!1080089 (= c!636316 ((_ is Nil!38796) lt!1284983))))

(assert (=> d!1080089 (= (size!29663 lt!1284983) lt!1285282)))

(declare-fun b!3678907 () Bool)

(assert (=> b!3678907 (= e!2278009 0)))

(declare-fun b!3678908 () Bool)

(assert (=> b!3678908 (= e!2278009 (+ 1 (size!29663 (t!300395 lt!1284983))))))

(assert (= (and d!1080089 c!636316) b!3678907))

(assert (= (and d!1080089 (not c!636316)) b!3678908))

(declare-fun m!4189111 () Bool)

(assert (=> b!3678908 m!4189111))

(assert (=> b!3678268 d!1080089))

(declare-fun d!1080091 () Bool)

(assert (=> d!1080091 (= (seqFromList!4389 lt!1284983) (fromListB!2029 lt!1284983))))

(declare-fun bs!573508 () Bool)

(assert (= bs!573508 d!1080091))

(declare-fun m!4189115 () Bool)

(assert (=> bs!573508 m!4189115))

(assert (=> b!3678268 d!1080091))

(declare-fun d!1080093 () Bool)

(declare-fun lt!1285284 () Bool)

(assert (=> d!1080093 (= lt!1285284 (select (content!5626 lt!1284949) lt!1284963))))

(declare-fun e!2278011 () Bool)

(assert (=> d!1080093 (= lt!1285284 e!2278011)))

(declare-fun res!1494598 () Bool)

(assert (=> d!1080093 (=> (not res!1494598) (not e!2278011))))

(assert (=> d!1080093 (= res!1494598 ((_ is Cons!38796) lt!1284949))))

(assert (=> d!1080093 (= (contains!7748 lt!1284949 lt!1284963) lt!1285284)))

(declare-fun b!3678909 () Bool)

(declare-fun e!2278010 () Bool)

(assert (=> b!3678909 (= e!2278011 e!2278010)))

(declare-fun res!1494599 () Bool)

(assert (=> b!3678909 (=> res!1494599 e!2278010)))

(assert (=> b!3678909 (= res!1494599 (= (h!44216 lt!1284949) lt!1284963))))

(declare-fun b!3678910 () Bool)

(assert (=> b!3678910 (= e!2278010 (contains!7748 (t!300395 lt!1284949) lt!1284963))))

(assert (= (and d!1080093 res!1494598) b!3678909))

(assert (= (and b!3678909 (not res!1494599)) b!3678910))

(assert (=> d!1080093 m!4188897))

(declare-fun m!4189117 () Bool)

(assert (=> d!1080093 m!4189117))

(declare-fun m!4189119 () Bool)

(assert (=> b!3678910 m!4189119))

(assert (=> b!3678268 d!1080093))

(declare-fun b!3678938 () Bool)

(declare-fun res!1494610 () Bool)

(declare-fun e!2278027 () Bool)

(assert (=> b!3678938 (=> (not res!1494610) (not e!2278027))))

(declare-fun lt!1285288 () List!38920)

(assert (=> b!3678938 (= res!1494610 (= (size!29663 lt!1285288) (+ (size!29663 lt!1284983) (size!29663 lt!1284984))))))

(declare-fun d!1080099 () Bool)

(assert (=> d!1080099 e!2278027))

(declare-fun res!1494609 () Bool)

(assert (=> d!1080099 (=> (not res!1494609) (not e!2278027))))

(assert (=> d!1080099 (= res!1494609 (= (content!5626 lt!1285288) ((_ map or) (content!5626 lt!1284983) (content!5626 lt!1284984))))))

(declare-fun e!2278028 () List!38920)

(assert (=> d!1080099 (= lt!1285288 e!2278028)))

(declare-fun c!636325 () Bool)

(assert (=> d!1080099 (= c!636325 ((_ is Nil!38796) lt!1284983))))

(assert (=> d!1080099 (= (++!9656 lt!1284983 lt!1284984) lt!1285288)))

(declare-fun b!3678937 () Bool)

(assert (=> b!3678937 (= e!2278028 (Cons!38796 (h!44216 lt!1284983) (++!9656 (t!300395 lt!1284983) lt!1284984)))))

(declare-fun b!3678939 () Bool)

(assert (=> b!3678939 (= e!2278027 (or (not (= lt!1284984 Nil!38796)) (= lt!1285288 lt!1284983)))))

(declare-fun b!3678936 () Bool)

(assert (=> b!3678936 (= e!2278028 lt!1284984)))

(assert (= (and d!1080099 c!636325) b!3678936))

(assert (= (and d!1080099 (not c!636325)) b!3678937))

(assert (= (and d!1080099 res!1494609) b!3678938))

(assert (= (and b!3678938 res!1494610) b!3678939))

(declare-fun m!4189135 () Bool)

(assert (=> b!3678938 m!4189135))

(assert (=> b!3678938 m!4188199))

(declare-fun m!4189137 () Bool)

(assert (=> b!3678938 m!4189137))

(declare-fun m!4189139 () Bool)

(assert (=> d!1080099 m!4189139))

(declare-fun m!4189141 () Bool)

(assert (=> d!1080099 m!4189141))

(declare-fun m!4189143 () Bool)

(assert (=> d!1080099 m!4189143))

(declare-fun m!4189145 () Bool)

(assert (=> b!3678937 m!4189145))

(assert (=> b!3678268 d!1080099))

(declare-fun d!1080111 () Bool)

(assert (=> d!1080111 (= (maxPrefixOneRule!2101 thiss!23823 rule!403 lt!1284950) (Some!8307 (tuple2!38665 (Token!11047 (apply!9342 (transformation!5840 rule!403) (seqFromList!4389 lt!1284983)) rule!403 (size!29663 lt!1284983) lt!1284983) lt!1284984)))))

(declare-fun lt!1285291 () Unit!56714)

(assert (=> d!1080111 (= lt!1285291 (choose!21971 thiss!23823 rules!3307 lt!1284983 lt!1284950 lt!1284984 rule!403))))

(assert (=> d!1080111 (not (isEmpty!23039 rules!3307))))

(assert (=> d!1080111 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1157 thiss!23823 rules!3307 lt!1284983 lt!1284950 lt!1284984 rule!403) lt!1285291)))

(declare-fun bs!573510 () Bool)

(assert (= bs!573510 d!1080111))

(assert (=> bs!573510 m!4188207))

(assert (=> bs!573510 m!4188195))

(declare-fun m!4189147 () Bool)

(assert (=> bs!573510 m!4189147))

(assert (=> bs!573510 m!4188199))

(assert (=> bs!573510 m!4188195))

(assert (=> bs!573510 m!4188197))

(assert (=> bs!573510 m!4188193))

(assert (=> b!3678268 d!1080111))

(declare-fun d!1080113 () Bool)

(declare-fun lt!1285292 () Int)

(assert (=> d!1080113 (= lt!1285292 (size!29663 (list!14418 lt!1284953)))))

(assert (=> d!1080113 (= lt!1285292 (size!29665 (c!636175 lt!1284953)))))

(assert (=> d!1080113 (= (size!29662 lt!1284953) lt!1285292)))

(declare-fun bs!573511 () Bool)

(assert (= bs!573511 d!1080113))

(assert (=> bs!573511 m!4188249))

(assert (=> bs!573511 m!4188249))

(declare-fun m!4189149 () Bool)

(assert (=> bs!573511 m!4189149))

(declare-fun m!4189151 () Bool)

(assert (=> bs!573511 m!4189151))

(assert (=> b!3678268 d!1080113))

(declare-fun d!1080115 () Bool)

(assert (=> d!1080115 (= lt!1284987 lt!1284983)))

(declare-fun lt!1285296 () Unit!56714)

(declare-fun choose!21983 (List!38920 List!38920 List!38920) Unit!56714)

(assert (=> d!1080115 (= lt!1285296 (choose!21983 lt!1284987 lt!1284983 lt!1284950))))

(assert (=> d!1080115 (isPrefix!3203 lt!1284987 lt!1284950)))

(assert (=> d!1080115 (= (lemmaIsPrefixSameLengthThenSameList!665 lt!1284987 lt!1284983 lt!1284950) lt!1285296)))

(declare-fun bs!573512 () Bool)

(assert (= bs!573512 d!1080115))

(declare-fun m!4189161 () Bool)

(assert (=> bs!573512 m!4189161))

(assert (=> bs!573512 m!4188177))

(assert (=> b!3678268 d!1080115))

(declare-fun d!1080121 () Bool)

(assert (=> d!1080121 (= (apply!9342 (transformation!5840 rule!403) (seqFromList!4389 lt!1284983)) (dynLambda!17011 (toValue!8136 (transformation!5840 rule!403)) (seqFromList!4389 lt!1284983)))))

(declare-fun b_lambda!109285 () Bool)

(assert (=> (not b_lambda!109285) (not d!1080121)))

(declare-fun tb!213333 () Bool)

(declare-fun t!300502 () Bool)

(assert (=> (and b!3678272 (= (toValue!8136 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 rule!403))) t!300502) tb!213333))

(declare-fun result!259566 () Bool)

(assert (=> tb!213333 (= result!259566 (inv!21 (dynLambda!17011 (toValue!8136 (transformation!5840 rule!403)) (seqFromList!4389 lt!1284983))))))

(declare-fun m!4189163 () Bool)

(assert (=> tb!213333 m!4189163))

(assert (=> d!1080121 t!300502))

(declare-fun b_and!274715 () Bool)

(assert (= b_and!274683 (and (=> t!300502 result!259566) b_and!274715)))

(declare-fun t!300504 () Bool)

(declare-fun tb!213335 () Bool)

(assert (=> (and b!3678269 (= (toValue!8136 (transformation!5840 rule!403)) (toValue!8136 (transformation!5840 rule!403))) t!300504) tb!213335))

(declare-fun result!259568 () Bool)

(assert (= result!259568 result!259566))

(assert (=> d!1080121 t!300504))

(declare-fun b_and!274717 () Bool)

(assert (= b_and!274685 (and (=> t!300504 result!259568) b_and!274717)))

(declare-fun tb!213337 () Bool)

(declare-fun t!300506 () Bool)

(assert (=> (and b!3678239 (= (toValue!8136 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 rule!403))) t!300506) tb!213337))

(declare-fun result!259570 () Bool)

(assert (= result!259570 result!259566))

(assert (=> d!1080121 t!300506))

(declare-fun b_and!274719 () Bool)

(assert (= b_and!274687 (and (=> t!300506 result!259570) b_and!274719)))

(declare-fun tb!213339 () Bool)

(declare-fun t!300508 () Bool)

(assert (=> (and b!3678242 (= (toValue!8136 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 rule!403))) t!300508) tb!213339))

(declare-fun result!259572 () Bool)

(assert (= result!259572 result!259566))

(assert (=> d!1080121 t!300508))

(declare-fun b_and!274721 () Bool)

(assert (= b_and!274689 (and (=> t!300508 result!259572) b_and!274721)))

(assert (=> d!1080121 m!4188195))

(declare-fun m!4189169 () Bool)

(assert (=> d!1080121 m!4189169))

(assert (=> b!3678268 d!1080121))

(declare-fun b!3678956 () Bool)

(declare-fun res!1494619 () Bool)

(declare-fun e!2278039 () Bool)

(assert (=> b!3678956 (=> (not res!1494619) (not e!2278039))))

(declare-fun lt!1285304 () Option!8308)

(assert (=> b!3678956 (= res!1494619 (= (rule!8674 (_1!22466 (get!12838 lt!1285304))) rule!403))))

(declare-fun b!3678957 () Bool)

(declare-fun e!2278041 () Bool)

(assert (=> b!3678957 (= e!2278041 e!2278039)))

(declare-fun res!1494624 () Bool)

(assert (=> b!3678957 (=> (not res!1494624) (not e!2278039))))

(assert (=> b!3678957 (= res!1494624 (matchR!5168 (regex!5840 rule!403) (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285304))))))))

(declare-fun d!1080127 () Bool)

(assert (=> d!1080127 e!2278041))

(declare-fun res!1494622 () Bool)

(assert (=> d!1080127 (=> res!1494622 e!2278041)))

(assert (=> d!1080127 (= res!1494622 (isEmpty!23042 lt!1285304))))

(declare-fun e!2278038 () Option!8308)

(assert (=> d!1080127 (= lt!1285304 e!2278038)))

(declare-fun c!636330 () Bool)

(declare-fun lt!1285301 () tuple2!38668)

(assert (=> d!1080127 (= c!636330 (isEmpty!23038 (_1!22468 lt!1285301)))))

(assert (=> d!1080127 (= lt!1285301 (findLongestMatch!1004 (regex!5840 rule!403) lt!1284950))))

(assert (=> d!1080127 (ruleValid!2104 thiss!23823 rule!403)))

(assert (=> d!1080127 (= (maxPrefixOneRule!2101 thiss!23823 rule!403 lt!1284950) lt!1285304)))

(declare-fun b!3678958 () Bool)

(declare-fun res!1494625 () Bool)

(assert (=> b!3678958 (=> (not res!1494625) (not e!2278039))))

(assert (=> b!3678958 (= res!1494625 (= (++!9656 (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285304)))) (_2!22466 (get!12838 lt!1285304))) lt!1284950))))

(declare-fun b!3678959 () Bool)

(assert (=> b!3678959 (= e!2278039 (= (size!29661 (_1!22466 (get!12838 lt!1285304))) (size!29663 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285304))))))))

(declare-fun b!3678960 () Bool)

(assert (=> b!3678960 (= e!2278038 (Some!8307 (tuple2!38665 (Token!11047 (apply!9342 (transformation!5840 rule!403) (seqFromList!4389 (_1!22468 lt!1285301))) rule!403 (size!29662 (seqFromList!4389 (_1!22468 lt!1285301))) (_1!22468 lt!1285301)) (_2!22468 lt!1285301))))))

(declare-fun lt!1285303 () Unit!56714)

(assert (=> b!3678960 (= lt!1285303 (longestMatchIsAcceptedByMatchOrIsEmpty!1062 (regex!5840 rule!403) lt!1284950))))

(declare-fun res!1494620 () Bool)

(assert (=> b!3678960 (= res!1494620 (isEmpty!23038 (_1!22468 (findLongestMatchInner!1089 (regex!5840 rule!403) Nil!38796 (size!29663 Nil!38796) lt!1284950 lt!1284950 (size!29663 lt!1284950)))))))

(declare-fun e!2278040 () Bool)

(assert (=> b!3678960 (=> res!1494620 e!2278040)))

(assert (=> b!3678960 e!2278040))

(declare-fun lt!1285302 () Unit!56714)

(assert (=> b!3678960 (= lt!1285302 lt!1285303)))

(declare-fun lt!1285305 () Unit!56714)

(assert (=> b!3678960 (= lt!1285305 (lemmaSemiInverse!1589 (transformation!5840 rule!403) (seqFromList!4389 (_1!22468 lt!1285301))))))

(declare-fun b!3678961 () Bool)

(assert (=> b!3678961 (= e!2278038 None!8307)))

(declare-fun b!3678962 () Bool)

(declare-fun res!1494623 () Bool)

(assert (=> b!3678962 (=> (not res!1494623) (not e!2278039))))

(assert (=> b!3678962 (= res!1494623 (= (value!186900 (_1!22466 (get!12838 lt!1285304))) (apply!9342 (transformation!5840 (rule!8674 (_1!22466 (get!12838 lt!1285304)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285304)))))))))

(declare-fun b!3678963 () Bool)

(declare-fun res!1494621 () Bool)

(assert (=> b!3678963 (=> (not res!1494621) (not e!2278039))))

(assert (=> b!3678963 (= res!1494621 (< (size!29663 (_2!22466 (get!12838 lt!1285304))) (size!29663 lt!1284950)))))

(declare-fun b!3678964 () Bool)

(assert (=> b!3678964 (= e!2278040 (matchR!5168 (regex!5840 rule!403) (_1!22468 (findLongestMatchInner!1089 (regex!5840 rule!403) Nil!38796 (size!29663 Nil!38796) lt!1284950 lt!1284950 (size!29663 lt!1284950)))))))

(assert (= (and d!1080127 c!636330) b!3678961))

(assert (= (and d!1080127 (not c!636330)) b!3678960))

(assert (= (and b!3678960 (not res!1494620)) b!3678964))

(assert (= (and d!1080127 (not res!1494622)) b!3678957))

(assert (= (and b!3678957 res!1494624) b!3678958))

(assert (= (and b!3678958 res!1494625) b!3678963))

(assert (= (and b!3678963 res!1494621) b!3678956))

(assert (= (and b!3678956 res!1494619) b!3678962))

(assert (= (and b!3678962 res!1494623) b!3678959))

(declare-fun m!4189171 () Bool)

(assert (=> b!3678962 m!4189171))

(declare-fun m!4189173 () Bool)

(assert (=> b!3678962 m!4189173))

(assert (=> b!3678962 m!4189173))

(declare-fun m!4189175 () Bool)

(assert (=> b!3678962 m!4189175))

(assert (=> b!3678960 m!4188739))

(declare-fun m!4189177 () Bool)

(assert (=> b!3678960 m!4189177))

(declare-fun m!4189179 () Bool)

(assert (=> b!3678960 m!4189179))

(assert (=> b!3678960 m!4189177))

(declare-fun m!4189181 () Bool)

(assert (=> b!3678960 m!4189181))

(assert (=> b!3678960 m!4189177))

(declare-fun m!4189183 () Bool)

(assert (=> b!3678960 m!4189183))

(assert (=> b!3678960 m!4189177))

(declare-fun m!4189185 () Bool)

(assert (=> b!3678960 m!4189185))

(assert (=> b!3678960 m!4188809))

(assert (=> b!3678960 m!4188739))

(declare-fun m!4189187 () Bool)

(assert (=> b!3678960 m!4189187))

(declare-fun m!4189189 () Bool)

(assert (=> b!3678960 m!4189189))

(assert (=> b!3678960 m!4188809))

(assert (=> b!3678956 m!4189171))

(assert (=> b!3678958 m!4189171))

(declare-fun m!4189191 () Bool)

(assert (=> b!3678958 m!4189191))

(assert (=> b!3678958 m!4189191))

(declare-fun m!4189193 () Bool)

(assert (=> b!3678958 m!4189193))

(assert (=> b!3678958 m!4189193))

(declare-fun m!4189195 () Bool)

(assert (=> b!3678958 m!4189195))

(assert (=> b!3678957 m!4189171))

(assert (=> b!3678957 m!4189191))

(assert (=> b!3678957 m!4189191))

(assert (=> b!3678957 m!4189193))

(assert (=> b!3678957 m!4189193))

(declare-fun m!4189201 () Bool)

(assert (=> b!3678957 m!4189201))

(assert (=> b!3678964 m!4188809))

(assert (=> b!3678964 m!4188739))

(assert (=> b!3678964 m!4188809))

(assert (=> b!3678964 m!4188739))

(assert (=> b!3678964 m!4189187))

(declare-fun m!4189203 () Bool)

(assert (=> b!3678964 m!4189203))

(assert (=> b!3678959 m!4189171))

(declare-fun m!4189205 () Bool)

(assert (=> b!3678959 m!4189205))

(assert (=> b!3678963 m!4189171))

(declare-fun m!4189207 () Bool)

(assert (=> b!3678963 m!4189207))

(assert (=> b!3678963 m!4188739))

(declare-fun m!4189209 () Bool)

(assert (=> d!1080127 m!4189209))

(declare-fun m!4189211 () Bool)

(assert (=> d!1080127 m!4189211))

(declare-fun m!4189213 () Bool)

(assert (=> d!1080127 m!4189213))

(assert (=> d!1080127 m!4188259))

(assert (=> b!3678268 d!1080127))

(declare-fun d!1080131 () Bool)

(declare-fun lt!1285306 () List!38920)

(assert (=> d!1080131 (= (++!9656 lt!1284983 lt!1285306) lt!1284950)))

(declare-fun e!2278048 () List!38920)

(assert (=> d!1080131 (= lt!1285306 e!2278048)))

(declare-fun c!636331 () Bool)

(assert (=> d!1080131 (= c!636331 ((_ is Cons!38796) lt!1284983))))

(assert (=> d!1080131 (>= (size!29663 lt!1284950) (size!29663 lt!1284983))))

(assert (=> d!1080131 (= (getSuffix!1756 lt!1284950 lt!1284983) lt!1285306)))

(declare-fun b!3678971 () Bool)

(assert (=> b!3678971 (= e!2278048 (getSuffix!1756 (tail!5691 lt!1284950) (t!300395 lt!1284983)))))

(declare-fun b!3678972 () Bool)

(assert (=> b!3678972 (= e!2278048 lt!1284950)))

(assert (= (and d!1080131 c!636331) b!3678971))

(assert (= (and d!1080131 (not c!636331)) b!3678972))

(declare-fun m!4189215 () Bool)

(assert (=> d!1080131 m!4189215))

(assert (=> d!1080131 m!4188739))

(assert (=> d!1080131 m!4188199))

(assert (=> b!3678971 m!4188741))

(assert (=> b!3678971 m!4188741))

(declare-fun m!4189217 () Bool)

(assert (=> b!3678971 m!4189217))

(assert (=> b!3678268 d!1080131))

(declare-fun d!1080133 () Bool)

(assert (=> d!1080133 (not (contains!7748 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284967))))

(declare-fun lt!1285307 () Unit!56714)

(assert (=> d!1080133 (= lt!1285307 (choose!21973 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) anOtherTypeRule!33 lt!1284967))))

(assert (=> d!1080133 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1080133 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!486 thiss!23823 rules!3307 rules!3307 (rule!8674 (_1!22466 lt!1284940)) anOtherTypeRule!33 lt!1284967) lt!1285307)))

(declare-fun bs!573515 () Bool)

(assert (= bs!573515 d!1080133))

(assert (=> bs!573515 m!4188123))

(assert (=> bs!573515 m!4188123))

(declare-fun m!4189219 () Bool)

(assert (=> bs!573515 m!4189219))

(declare-fun m!4189221 () Bool)

(assert (=> bs!573515 m!4189221))

(assert (=> bs!573515 m!4188299))

(assert (=> b!3678249 d!1080133))

(declare-fun d!1080135 () Bool)

(assert (=> d!1080135 (= (inv!52287 (tag!6640 (rule!8674 token!511))) (= (mod (str.len (value!186899 (tag!6640 (rule!8674 token!511)))) 2) 0))))

(assert (=> b!3678266 d!1080135))

(declare-fun d!1080137 () Bool)

(declare-fun res!1494632 () Bool)

(declare-fun e!2278049 () Bool)

(assert (=> d!1080137 (=> (not res!1494632) (not e!2278049))))

(assert (=> d!1080137 (= res!1494632 (semiInverseModEq!2493 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 (rule!8674 token!511)))))))

(assert (=> d!1080137 (= (inv!52290 (transformation!5840 (rule!8674 token!511))) e!2278049)))

(declare-fun b!3678973 () Bool)

(assert (=> b!3678973 (= e!2278049 (equivClasses!2392 (toChars!7995 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 (rule!8674 token!511)))))))

(assert (= (and d!1080137 res!1494632) b!3678973))

(declare-fun m!4189223 () Bool)

(assert (=> d!1080137 m!4189223))

(declare-fun m!4189225 () Bool)

(assert (=> b!3678973 m!4189225))

(assert (=> b!3678266 d!1080137))

(declare-fun d!1080139 () Bool)

(assert (=> d!1080139 (not (contains!7748 (usedCharacters!1052 (regex!5840 (rule!8674 (_1!22466 lt!1284940)))) lt!1284967))))

(declare-fun lt!1285308 () Unit!56714)

(assert (=> d!1080139 (= lt!1285308 (choose!21981 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8674 (_1!22466 lt!1284940)) lt!1284967))))

(assert (=> d!1080139 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1080139 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!368 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8674 (_1!22466 lt!1284940)) lt!1284967) lt!1285308)))

(declare-fun bs!573516 () Bool)

(assert (= bs!573516 d!1080139))

(assert (=> bs!573516 m!4188123))

(assert (=> bs!573516 m!4188123))

(assert (=> bs!573516 m!4189219))

(declare-fun m!4189227 () Bool)

(assert (=> bs!573516 m!4189227))

(assert (=> bs!573516 m!4188299))

(assert (=> b!3678247 d!1080139))

(declare-fun b!3678993 () Bool)

(declare-fun res!1494647 () Bool)

(declare-fun e!2278066 () Bool)

(assert (=> b!3678993 (=> (not res!1494647) (not e!2278066))))

(assert (=> b!3678993 (= res!1494647 (= (head!7890 lt!1284987) (head!7890 lt!1284950)))))

(declare-fun d!1080141 () Bool)

(declare-fun e!2278064 () Bool)

(assert (=> d!1080141 e!2278064))

(declare-fun res!1494650 () Bool)

(assert (=> d!1080141 (=> res!1494650 e!2278064)))

(declare-fun lt!1285318 () Bool)

(assert (=> d!1080141 (= res!1494650 (not lt!1285318))))

(declare-fun e!2278068 () Bool)

(assert (=> d!1080141 (= lt!1285318 e!2278068)))

(declare-fun res!1494649 () Bool)

(assert (=> d!1080141 (=> res!1494649 e!2278068)))

(assert (=> d!1080141 (= res!1494649 ((_ is Nil!38796) lt!1284987))))

(assert (=> d!1080141 (= (isPrefix!3203 lt!1284987 lt!1284950) lt!1285318)))

(declare-fun b!3678997 () Bool)

(assert (=> b!3678997 (= e!2278064 (>= (size!29663 lt!1284950) (size!29663 lt!1284987)))))

(declare-fun b!3678991 () Bool)

(assert (=> b!3678991 (= e!2278068 e!2278066)))

(declare-fun res!1494648 () Bool)

(assert (=> b!3678991 (=> (not res!1494648) (not e!2278066))))

(assert (=> b!3678991 (= res!1494648 (not ((_ is Nil!38796) lt!1284950)))))

(declare-fun b!3678995 () Bool)

(assert (=> b!3678995 (= e!2278066 (isPrefix!3203 (tail!5691 lt!1284987) (tail!5691 lt!1284950)))))

(assert (= (and d!1080141 (not res!1494649)) b!3678991))

(assert (= (and b!3678991 res!1494648) b!3678993))

(assert (= (and b!3678993 res!1494647) b!3678995))

(assert (= (and d!1080141 (not res!1494650)) b!3678997))

(assert (=> b!3678993 m!4188209))

(declare-fun m!4189257 () Bool)

(assert (=> b!3678993 m!4189257))

(assert (=> b!3678997 m!4188739))

(assert (=> b!3678997 m!4188147))

(assert (=> b!3678995 m!4188911))

(assert (=> b!3678995 m!4188741))

(assert (=> b!3678995 m!4188911))

(assert (=> b!3678995 m!4188741))

(declare-fun m!4189259 () Bool)

(assert (=> b!3678995 m!4189259))

(assert (=> b!3678228 d!1080141))

(declare-fun d!1080161 () Bool)

(assert (=> d!1080161 (isPrefix!3203 lt!1284987 (++!9656 lt!1284987 (_2!22466 lt!1284940)))))

(declare-fun lt!1285321 () Unit!56714)

(declare-fun choose!21984 (List!38920 List!38920) Unit!56714)

(assert (=> d!1080161 (= lt!1285321 (choose!21984 lt!1284987 (_2!22466 lt!1284940)))))

(assert (=> d!1080161 (= (lemmaConcatTwoListThenFirstIsPrefix!2122 lt!1284987 (_2!22466 lt!1284940)) lt!1285321)))

(declare-fun bs!573520 () Bool)

(assert (= bs!573520 d!1080161))

(assert (=> bs!573520 m!4188165))

(assert (=> bs!573520 m!4188165))

(assert (=> bs!573520 m!4188167))

(declare-fun m!4189267 () Bool)

(assert (=> bs!573520 m!4189267))

(assert (=> b!3678228 d!1080161))

(declare-fun d!1080165 () Bool)

(assert (=> d!1080165 (= (get!12838 lt!1284979) (v!38239 lt!1284979))))

(assert (=> b!3678228 d!1080165))

(declare-fun d!1080167 () Bool)

(declare-fun e!2278093 () Bool)

(assert (=> d!1080167 e!2278093))

(declare-fun res!1494655 () Bool)

(assert (=> d!1080167 (=> (not res!1494655) (not e!2278093))))

(assert (=> d!1080167 (= res!1494655 (isDefined!6540 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 (_1!22466 lt!1284940))))))))

(declare-fun lt!1285328 () Unit!56714)

(declare-fun choose!21985 (LexerInterface!5429 List!38921 List!38920 Token!11046) Unit!56714)

(assert (=> d!1080167 (= lt!1285328 (choose!21985 thiss!23823 rules!3307 lt!1284950 (_1!22466 lt!1284940)))))

(assert (=> d!1080167 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1080167 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1444 thiss!23823 rules!3307 lt!1284950 (_1!22466 lt!1284940)) lt!1285328)))

(declare-fun b!3679047 () Bool)

(declare-fun res!1494656 () Bool)

(assert (=> b!3679047 (=> (not res!1494656) (not e!2278093))))

(assert (=> b!3679047 (= res!1494656 (matchR!5168 (regex!5840 (get!12839 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))) (list!14418 (charsOf!3854 (_1!22466 lt!1284940)))))))

(declare-fun b!3679048 () Bool)

(assert (=> b!3679048 (= e!2278093 (= (rule!8674 (_1!22466 lt!1284940)) (get!12839 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))))))

(assert (= (and d!1080167 res!1494655) b!3679047))

(assert (= (and b!3679047 res!1494656) b!3679048))

(assert (=> d!1080167 m!4188163))

(assert (=> d!1080167 m!4188163))

(declare-fun m!4189273 () Bool)

(assert (=> d!1080167 m!4189273))

(declare-fun m!4189275 () Bool)

(assert (=> d!1080167 m!4189275))

(assert (=> d!1080167 m!4188299))

(assert (=> b!3679047 m!4188189))

(assert (=> b!3679047 m!4188163))

(assert (=> b!3679047 m!4188163))

(declare-fun m!4189277 () Bool)

(assert (=> b!3679047 m!4189277))

(assert (=> b!3679047 m!4188263))

(declare-fun m!4189279 () Bool)

(assert (=> b!3679047 m!4189279))

(assert (=> b!3679047 m!4188189))

(assert (=> b!3679047 m!4188263))

(assert (=> b!3679048 m!4188163))

(assert (=> b!3679048 m!4188163))

(assert (=> b!3679048 m!4189277))

(assert (=> b!3678228 d!1080167))

(declare-fun b!3679051 () Bool)

(declare-fun res!1494658 () Bool)

(declare-fun e!2278094 () Bool)

(assert (=> b!3679051 (=> (not res!1494658) (not e!2278094))))

(declare-fun lt!1285329 () List!38920)

(assert (=> b!3679051 (= res!1494658 (= (size!29663 lt!1285329) (+ (size!29663 lt!1284983) (size!29663 suffix!1395))))))

(declare-fun d!1080173 () Bool)

(assert (=> d!1080173 e!2278094))

(declare-fun res!1494657 () Bool)

(assert (=> d!1080173 (=> (not res!1494657) (not e!2278094))))

(assert (=> d!1080173 (= res!1494657 (= (content!5626 lt!1285329) ((_ map or) (content!5626 lt!1284983) (content!5626 suffix!1395))))))

(declare-fun e!2278095 () List!38920)

(assert (=> d!1080173 (= lt!1285329 e!2278095)))

(declare-fun c!636338 () Bool)

(assert (=> d!1080173 (= c!636338 ((_ is Nil!38796) lt!1284983))))

(assert (=> d!1080173 (= (++!9656 lt!1284983 suffix!1395) lt!1285329)))

(declare-fun b!3679050 () Bool)

(assert (=> b!3679050 (= e!2278095 (Cons!38796 (h!44216 lt!1284983) (++!9656 (t!300395 lt!1284983) suffix!1395)))))

(declare-fun b!3679052 () Bool)

(assert (=> b!3679052 (= e!2278094 (or (not (= suffix!1395 Nil!38796)) (= lt!1285329 lt!1284983)))))

(declare-fun b!3679049 () Bool)

(assert (=> b!3679049 (= e!2278095 suffix!1395)))

(assert (= (and d!1080173 c!636338) b!3679049))

(assert (= (and d!1080173 (not c!636338)) b!3679050))

(assert (= (and d!1080173 res!1494657) b!3679051))

(assert (= (and b!3679051 res!1494658) b!3679052))

(declare-fun m!4189285 () Bool)

(assert (=> b!3679051 m!4189285))

(assert (=> b!3679051 m!4188199))

(declare-fun m!4189287 () Bool)

(assert (=> b!3679051 m!4189287))

(declare-fun m!4189289 () Bool)

(assert (=> d!1080173 m!4189289))

(assert (=> d!1080173 m!4189141))

(declare-fun m!4189291 () Bool)

(assert (=> d!1080173 m!4189291))

(declare-fun m!4189293 () Bool)

(assert (=> b!3679050 m!4189293))

(assert (=> b!3678228 d!1080173))

(declare-fun d!1080175 () Bool)

(assert (=> d!1080175 (= (list!14418 lt!1284988) (list!14419 (c!636175 lt!1284988)))))

(declare-fun bs!573523 () Bool)

(assert (= bs!573523 d!1080175))

(declare-fun m!4189295 () Bool)

(assert (=> bs!573523 m!4189295))

(assert (=> b!3678228 d!1080175))

(declare-fun b!3679055 () Bool)

(declare-fun res!1494660 () Bool)

(declare-fun e!2278096 () Bool)

(assert (=> b!3679055 (=> (not res!1494660) (not e!2278096))))

(declare-fun lt!1285330 () List!38920)

(assert (=> b!3679055 (= res!1494660 (= (size!29663 lt!1285330) (+ (size!29663 lt!1284987) (size!29663 (_2!22466 lt!1284940)))))))

(declare-fun d!1080177 () Bool)

(assert (=> d!1080177 e!2278096))

(declare-fun res!1494659 () Bool)

(assert (=> d!1080177 (=> (not res!1494659) (not e!2278096))))

(assert (=> d!1080177 (= res!1494659 (= (content!5626 lt!1285330) ((_ map or) (content!5626 lt!1284987) (content!5626 (_2!22466 lt!1284940)))))))

(declare-fun e!2278097 () List!38920)

(assert (=> d!1080177 (= lt!1285330 e!2278097)))

(declare-fun c!636339 () Bool)

(assert (=> d!1080177 (= c!636339 ((_ is Nil!38796) lt!1284987))))

(assert (=> d!1080177 (= (++!9656 lt!1284987 (_2!22466 lt!1284940)) lt!1285330)))

(declare-fun b!3679054 () Bool)

(assert (=> b!3679054 (= e!2278097 (Cons!38796 (h!44216 lt!1284987) (++!9656 (t!300395 lt!1284987) (_2!22466 lt!1284940))))))

(declare-fun b!3679056 () Bool)

(assert (=> b!3679056 (= e!2278096 (or (not (= (_2!22466 lt!1284940) Nil!38796)) (= lt!1285330 lt!1284987)))))

(declare-fun b!3679053 () Bool)

(assert (=> b!3679053 (= e!2278097 (_2!22466 lt!1284940))))

(assert (= (and d!1080177 c!636339) b!3679053))

(assert (= (and d!1080177 (not c!636339)) b!3679054))

(assert (= (and d!1080177 res!1494659) b!3679055))

(assert (= (and b!3679055 res!1494660) b!3679056))

(declare-fun m!4189297 () Bool)

(assert (=> b!3679055 m!4189297))

(assert (=> b!3679055 m!4188147))

(declare-fun m!4189299 () Bool)

(assert (=> b!3679055 m!4189299))

(declare-fun m!4189301 () Bool)

(assert (=> d!1080177 m!4189301))

(assert (=> d!1080177 m!4188669))

(declare-fun m!4189303 () Bool)

(assert (=> d!1080177 m!4189303))

(declare-fun m!4189305 () Bool)

(assert (=> b!3679054 m!4189305))

(assert (=> b!3678228 d!1080177))

(declare-fun d!1080179 () Bool)

(assert (=> d!1080179 (isPrefix!3203 lt!1284983 (++!9656 lt!1284983 suffix!1395))))

(declare-fun lt!1285331 () Unit!56714)

(assert (=> d!1080179 (= lt!1285331 (choose!21984 lt!1284983 suffix!1395))))

(assert (=> d!1080179 (= (lemmaConcatTwoListThenFirstIsPrefix!2122 lt!1284983 suffix!1395) lt!1285331)))

(declare-fun bs!573524 () Bool)

(assert (= bs!573524 d!1080179))

(assert (=> bs!573524 m!4188173))

(assert (=> bs!573524 m!4188173))

(declare-fun m!4189307 () Bool)

(assert (=> bs!573524 m!4189307))

(declare-fun m!4189309 () Bool)

(assert (=> bs!573524 m!4189309))

(assert (=> b!3678228 d!1080179))

(declare-fun b!3679058 () Bool)

(declare-fun res!1494661 () Bool)

(declare-fun e!2278099 () Bool)

(assert (=> b!3679058 (=> (not res!1494661) (not e!2278099))))

(assert (=> b!3679058 (= res!1494661 (= (head!7890 lt!1284987) (head!7890 (++!9656 lt!1284987 (_2!22466 lt!1284940)))))))

(declare-fun d!1080181 () Bool)

(declare-fun e!2278098 () Bool)

(assert (=> d!1080181 e!2278098))

(declare-fun res!1494664 () Bool)

(assert (=> d!1080181 (=> res!1494664 e!2278098)))

(declare-fun lt!1285332 () Bool)

(assert (=> d!1080181 (= res!1494664 (not lt!1285332))))

(declare-fun e!2278100 () Bool)

(assert (=> d!1080181 (= lt!1285332 e!2278100)))

(declare-fun res!1494663 () Bool)

(assert (=> d!1080181 (=> res!1494663 e!2278100)))

(assert (=> d!1080181 (= res!1494663 ((_ is Nil!38796) lt!1284987))))

(assert (=> d!1080181 (= (isPrefix!3203 lt!1284987 (++!9656 lt!1284987 (_2!22466 lt!1284940))) lt!1285332)))

(declare-fun b!3679060 () Bool)

(assert (=> b!3679060 (= e!2278098 (>= (size!29663 (++!9656 lt!1284987 (_2!22466 lt!1284940))) (size!29663 lt!1284987)))))

(declare-fun b!3679057 () Bool)

(assert (=> b!3679057 (= e!2278100 e!2278099)))

(declare-fun res!1494662 () Bool)

(assert (=> b!3679057 (=> (not res!1494662) (not e!2278099))))

(assert (=> b!3679057 (= res!1494662 (not ((_ is Nil!38796) (++!9656 lt!1284987 (_2!22466 lt!1284940)))))))

(declare-fun b!3679059 () Bool)

(assert (=> b!3679059 (= e!2278099 (isPrefix!3203 (tail!5691 lt!1284987) (tail!5691 (++!9656 lt!1284987 (_2!22466 lt!1284940)))))))

(assert (= (and d!1080181 (not res!1494663)) b!3679057))

(assert (= (and b!3679057 res!1494662) b!3679058))

(assert (= (and b!3679058 res!1494661) b!3679059))

(assert (= (and d!1080181 (not res!1494664)) b!3679060))

(assert (=> b!3679058 m!4188209))

(assert (=> b!3679058 m!4188165))

(declare-fun m!4189311 () Bool)

(assert (=> b!3679058 m!4189311))

(assert (=> b!3679060 m!4188165))

(declare-fun m!4189313 () Bool)

(assert (=> b!3679060 m!4189313))

(assert (=> b!3679060 m!4188147))

(assert (=> b!3679059 m!4188911))

(assert (=> b!3679059 m!4188165))

(declare-fun m!4189315 () Bool)

(assert (=> b!3679059 m!4189315))

(assert (=> b!3679059 m!4188911))

(assert (=> b!3679059 m!4189315))

(declare-fun m!4189317 () Bool)

(assert (=> b!3679059 m!4189317))

(assert (=> b!3678228 d!1080181))

(declare-fun b!3679069 () Bool)

(declare-fun res!1494670 () Bool)

(declare-fun e!2278106 () Bool)

(assert (=> b!3679069 (=> (not res!1494670) (not e!2278106))))

(declare-fun lt!1285370 () Token!11046)

(assert (=> b!3679069 (= res!1494670 (matchR!5168 (regex!5840 (get!12839 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 lt!1285370))))) (list!14418 (charsOf!3854 lt!1285370))))))

(declare-fun b!3679070 () Bool)

(assert (=> b!3679070 (= e!2278106 (= (rule!8674 lt!1285370) (get!12839 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 lt!1285370))))))))

(declare-fun d!1080183 () Bool)

(assert (=> d!1080183 (isDefined!6541 (maxPrefix!2963 thiss!23823 rules!3307 (++!9656 lt!1284983 suffix!1395)))))

(declare-fun lt!1285372 () Unit!56714)

(declare-fun e!2278105 () Unit!56714)

(assert (=> d!1080183 (= lt!1285372 e!2278105)))

(declare-fun c!636342 () Bool)

(assert (=> d!1080183 (= c!636342 (isEmpty!23042 (maxPrefix!2963 thiss!23823 rules!3307 (++!9656 lt!1284983 suffix!1395))))))

(declare-fun lt!1285382 () Unit!56714)

(declare-fun lt!1285381 () Unit!56714)

(assert (=> d!1080183 (= lt!1285382 lt!1285381)))

(assert (=> d!1080183 e!2278106))

(declare-fun res!1494669 () Bool)

(assert (=> d!1080183 (=> (not res!1494669) (not e!2278106))))

(assert (=> d!1080183 (= res!1494669 (isDefined!6540 (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 lt!1285370)))))))

(assert (=> d!1080183 (= lt!1285381 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1444 thiss!23823 rules!3307 lt!1284983 lt!1285370))))

(declare-fun lt!1285369 () Unit!56714)

(declare-fun lt!1285376 () Unit!56714)

(assert (=> d!1080183 (= lt!1285369 lt!1285376)))

(declare-fun lt!1285367 () List!38920)

(assert (=> d!1080183 (isPrefix!3203 lt!1285367 (++!9656 lt!1284983 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!544 (List!38920 List!38920 List!38920) Unit!56714)

(assert (=> d!1080183 (= lt!1285376 (lemmaPrefixStaysPrefixWhenAddingToSuffix!544 lt!1285367 lt!1284983 suffix!1395))))

(assert (=> d!1080183 (= lt!1285367 (list!14418 (charsOf!3854 lt!1285370)))))

(declare-fun lt!1285383 () Unit!56714)

(declare-fun lt!1285378 () Unit!56714)

(assert (=> d!1080183 (= lt!1285383 lt!1285378)))

(declare-fun lt!1285380 () List!38920)

(declare-fun lt!1285373 () List!38920)

(assert (=> d!1080183 (isPrefix!3203 lt!1285380 (++!9656 lt!1285380 lt!1285373))))

(assert (=> d!1080183 (= lt!1285378 (lemmaConcatTwoListThenFirstIsPrefix!2122 lt!1285380 lt!1285373))))

(assert (=> d!1080183 (= lt!1285373 (_2!22466 (get!12838 (maxPrefix!2963 thiss!23823 rules!3307 lt!1284983))))))

(assert (=> d!1080183 (= lt!1285380 (list!14418 (charsOf!3854 lt!1285370)))))

(declare-datatypes ((List!38925 0))(
  ( (Nil!38801) (Cons!38801 (h!44221 Token!11046) (t!300540 List!38925)) )
))
(declare-fun head!7892 (List!38925) Token!11046)

(declare-datatypes ((IArray!23759 0))(
  ( (IArray!23760 (innerList!11937 List!38925)) )
))
(declare-datatypes ((Conc!11877 0))(
  ( (Node!11877 (left!30279 Conc!11877) (right!30609 Conc!11877) (csize!23984 Int) (cheight!12088 Int)) (Leaf!18408 (xs!15079 IArray!23759) (csize!23985 Int)) (Empty!11877) )
))
(declare-datatypes ((BalanceConc!23368 0))(
  ( (BalanceConc!23369 (c!636351 Conc!11877)) )
))
(declare-fun list!14422 (BalanceConc!23368) List!38925)

(declare-datatypes ((tuple2!38672 0))(
  ( (tuple2!38673 (_1!22470 BalanceConc!23368) (_2!22470 BalanceConc!23364)) )
))
(declare-fun lex!2576 (LexerInterface!5429 List!38921 BalanceConc!23364) tuple2!38672)

(assert (=> d!1080183 (= lt!1285370 (head!7892 (list!14422 (_1!22470 (lex!2576 thiss!23823 rules!3307 (seqFromList!4389 lt!1284983))))))))

(assert (=> d!1080183 (not (isEmpty!23039 rules!3307))))

(assert (=> d!1080183 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1107 thiss!23823 rules!3307 lt!1284983 suffix!1395) lt!1285372)))

(declare-fun b!3679071 () Bool)

(declare-fun Unit!56738 () Unit!56714)

(assert (=> b!3679071 (= e!2278105 Unit!56738)))

(declare-fun lt!1285377 () List!38920)

(assert (=> b!3679071 (= lt!1285377 (++!9656 lt!1284983 suffix!1395))))

(declare-fun lt!1285379 () Unit!56714)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!580 (LexerInterface!5429 Rule!11480 List!38921 List!38920) Unit!56714)

(assert (=> b!3679071 (= lt!1285379 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!580 thiss!23823 (rule!8674 lt!1285370) rules!3307 lt!1285377))))

(assert (=> b!3679071 (isEmpty!23042 (maxPrefixOneRule!2101 thiss!23823 (rule!8674 lt!1285370) lt!1285377))))

(declare-fun lt!1285371 () Unit!56714)

(assert (=> b!3679071 (= lt!1285371 lt!1285379)))

(declare-fun lt!1285368 () List!38920)

(assert (=> b!3679071 (= lt!1285368 (list!14418 (charsOf!3854 lt!1285370)))))

(declare-fun lt!1285375 () Unit!56714)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!568 (LexerInterface!5429 Rule!11480 List!38920 List!38920) Unit!56714)

(assert (=> b!3679071 (= lt!1285375 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!568 thiss!23823 (rule!8674 lt!1285370) lt!1285368 (++!9656 lt!1284983 suffix!1395)))))

(assert (=> b!3679071 (not (matchR!5168 (regex!5840 (rule!8674 lt!1285370)) lt!1285368))))

(declare-fun lt!1285374 () Unit!56714)

(assert (=> b!3679071 (= lt!1285374 lt!1285375)))

(assert (=> b!3679071 false))

(declare-fun b!3679072 () Bool)

(declare-fun Unit!56739 () Unit!56714)

(assert (=> b!3679072 (= e!2278105 Unit!56739)))

(assert (= (and d!1080183 res!1494669) b!3679069))

(assert (= (and b!3679069 res!1494670) b!3679070))

(assert (= (and d!1080183 c!636342) b!3679071))

(assert (= (and d!1080183 (not c!636342)) b!3679072))

(declare-fun m!4189319 () Bool)

(assert (=> b!3679069 m!4189319))

(declare-fun m!4189321 () Bool)

(assert (=> b!3679069 m!4189321))

(declare-fun m!4189323 () Bool)

(assert (=> b!3679069 m!4189323))

(declare-fun m!4189325 () Bool)

(assert (=> b!3679069 m!4189325))

(assert (=> b!3679069 m!4189323))

(declare-fun m!4189327 () Bool)

(assert (=> b!3679069 m!4189327))

(assert (=> b!3679069 m!4189319))

(assert (=> b!3679069 m!4189327))

(assert (=> b!3679070 m!4189323))

(assert (=> b!3679070 m!4189323))

(assert (=> b!3679070 m!4189325))

(assert (=> d!1080183 m!4189327))

(assert (=> d!1080183 m!4188173))

(declare-fun m!4189329 () Bool)

(assert (=> d!1080183 m!4189329))

(assert (=> d!1080183 m!4188247))

(declare-fun m!4189331 () Bool)

(assert (=> d!1080183 m!4189331))

(assert (=> d!1080183 m!4188195))

(assert (=> d!1080183 m!4189329))

(declare-fun m!4189333 () Bool)

(assert (=> d!1080183 m!4189333))

(declare-fun m!4189335 () Bool)

(assert (=> d!1080183 m!4189335))

(assert (=> d!1080183 m!4188195))

(declare-fun m!4189337 () Bool)

(assert (=> d!1080183 m!4189337))

(assert (=> d!1080183 m!4188247))

(declare-fun m!4189339 () Bool)

(assert (=> d!1080183 m!4189339))

(declare-fun m!4189341 () Bool)

(assert (=> d!1080183 m!4189341))

(declare-fun m!4189343 () Bool)

(assert (=> d!1080183 m!4189343))

(declare-fun m!4189345 () Bool)

(assert (=> d!1080183 m!4189345))

(assert (=> d!1080183 m!4189343))

(declare-fun m!4189347 () Bool)

(assert (=> d!1080183 m!4189347))

(declare-fun m!4189349 () Bool)

(assert (=> d!1080183 m!4189349))

(assert (=> d!1080183 m!4189323))

(assert (=> d!1080183 m!4188193))

(assert (=> d!1080183 m!4189323))

(declare-fun m!4189351 () Bool)

(assert (=> d!1080183 m!4189351))

(assert (=> d!1080183 m!4189327))

(assert (=> d!1080183 m!4189319))

(assert (=> d!1080183 m!4188173))

(assert (=> d!1080183 m!4189339))

(assert (=> d!1080183 m!4188173))

(declare-fun m!4189353 () Bool)

(assert (=> d!1080183 m!4189353))

(assert (=> d!1080183 m!4189329))

(declare-fun m!4189355 () Bool)

(assert (=> d!1080183 m!4189355))

(assert (=> b!3679071 m!4188173))

(declare-fun m!4189357 () Bool)

(assert (=> b!3679071 m!4189357))

(declare-fun m!4189359 () Bool)

(assert (=> b!3679071 m!4189359))

(assert (=> b!3679071 m!4189327))

(assert (=> b!3679071 m!4189319))

(assert (=> b!3679071 m!4189327))

(declare-fun m!4189361 () Bool)

(assert (=> b!3679071 m!4189361))

(declare-fun m!4189363 () Bool)

(assert (=> b!3679071 m!4189363))

(assert (=> b!3679071 m!4188173))

(assert (=> b!3679071 m!4189359))

(declare-fun m!4189365 () Bool)

(assert (=> b!3679071 m!4189365))

(assert (=> b!3678228 d!1080183))

(declare-fun d!1080185 () Bool)

(declare-fun e!2278115 () Bool)

(assert (=> d!1080185 e!2278115))

(declare-fun res!1494675 () Bool)

(assert (=> d!1080185 (=> res!1494675 e!2278115)))

(declare-fun lt!1285390 () Option!8309)

(declare-fun isEmpty!23043 (Option!8309) Bool)

(assert (=> d!1080185 (= res!1494675 (isEmpty!23043 lt!1285390))))

(declare-fun e!2278117 () Option!8309)

(assert (=> d!1080185 (= lt!1285390 e!2278117)))

(declare-fun c!636347 () Bool)

(assert (=> d!1080185 (= c!636347 (and ((_ is Cons!38797) rules!3307) (= (tag!6640 (h!44217 rules!3307)) (tag!6640 (rule!8674 (_1!22466 lt!1284940))))))))

(assert (=> d!1080185 (rulesInvariant!4826 thiss!23823 rules!3307)))

(assert (=> d!1080185 (= (getRuleFromTag!1444 thiss!23823 rules!3307 (tag!6640 (rule!8674 (_1!22466 lt!1284940)))) lt!1285390)))

(declare-fun b!3679085 () Bool)

(declare-fun e!2278118 () Bool)

(assert (=> b!3679085 (= e!2278118 (= (tag!6640 (get!12839 lt!1285390)) (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3679086 () Bool)

(declare-fun lt!1285392 () Unit!56714)

(declare-fun lt!1285391 () Unit!56714)

(assert (=> b!3679086 (= lt!1285392 lt!1285391)))

(assert (=> b!3679086 (rulesInvariant!4826 thiss!23823 (t!300396 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!623 (LexerInterface!5429 Rule!11480 List!38921) Unit!56714)

(assert (=> b!3679086 (= lt!1285391 (lemmaInvariantOnRulesThenOnTail!623 thiss!23823 (h!44217 rules!3307) (t!300396 rules!3307)))))

(declare-fun e!2278116 () Option!8309)

(assert (=> b!3679086 (= e!2278116 (getRuleFromTag!1444 thiss!23823 (t!300396 rules!3307) (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))))

(declare-fun b!3679087 () Bool)

(assert (=> b!3679087 (= e!2278115 e!2278118)))

(declare-fun res!1494676 () Bool)

(assert (=> b!3679087 (=> (not res!1494676) (not e!2278118))))

(assert (=> b!3679087 (= res!1494676 (contains!7747 rules!3307 (get!12839 lt!1285390)))))

(declare-fun b!3679088 () Bool)

(assert (=> b!3679088 (= e!2278117 e!2278116)))

(declare-fun c!636348 () Bool)

(assert (=> b!3679088 (= c!636348 (and ((_ is Cons!38797) rules!3307) (not (= (tag!6640 (h!44217 rules!3307)) (tag!6640 (rule!8674 (_1!22466 lt!1284940)))))))))

(declare-fun b!3679089 () Bool)

(assert (=> b!3679089 (= e!2278117 (Some!8308 (h!44217 rules!3307)))))

(declare-fun b!3679090 () Bool)

(assert (=> b!3679090 (= e!2278116 None!8308)))

(assert (= (and d!1080185 c!636347) b!3679089))

(assert (= (and d!1080185 (not c!636347)) b!3679088))

(assert (= (and b!3679088 c!636348) b!3679086))

(assert (= (and b!3679088 (not c!636348)) b!3679090))

(assert (= (and d!1080185 (not res!1494675)) b!3679087))

(assert (= (and b!3679087 res!1494676) b!3679085))

(declare-fun m!4189367 () Bool)

(assert (=> d!1080185 m!4189367))

(assert (=> d!1080185 m!4188299))

(declare-fun m!4189369 () Bool)

(assert (=> b!3679085 m!4189369))

(declare-fun m!4189371 () Bool)

(assert (=> b!3679086 m!4189371))

(declare-fun m!4189373 () Bool)

(assert (=> b!3679086 m!4189373))

(declare-fun m!4189375 () Bool)

(assert (=> b!3679086 m!4189375))

(assert (=> b!3679087 m!4189369))

(assert (=> b!3679087 m!4189369))

(declare-fun m!4189377 () Bool)

(assert (=> b!3679087 m!4189377))

(assert (=> b!3678228 d!1080185))

(declare-fun d!1080187 () Bool)

(assert (=> d!1080187 (= (isDefined!6540 lt!1284990) (not (isEmpty!23043 lt!1284990)))))

(declare-fun bs!573525 () Bool)

(assert (= bs!573525 d!1080187))

(declare-fun m!4189379 () Bool)

(assert (=> bs!573525 m!4189379))

(assert (=> b!3678228 d!1080187))

(declare-fun b!3679091 () Bool)

(declare-fun e!2278119 () Option!8308)

(declare-fun call!266468 () Option!8308)

(assert (=> b!3679091 (= e!2278119 call!266468)))

(declare-fun b!3679092 () Bool)

(declare-fun res!1494681 () Bool)

(declare-fun e!2278120 () Bool)

(assert (=> b!3679092 (=> (not res!1494681) (not e!2278120))))

(declare-fun lt!1285393 () Option!8308)

(assert (=> b!3679092 (= res!1494681 (= (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285393)))) (originalCharacters!6554 (_1!22466 (get!12838 lt!1285393)))))))

(declare-fun b!3679093 () Bool)

(declare-fun res!1494678 () Bool)

(assert (=> b!3679093 (=> (not res!1494678) (not e!2278120))))

(assert (=> b!3679093 (= res!1494678 (matchR!5168 (regex!5840 (rule!8674 (_1!22466 (get!12838 lt!1285393)))) (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285393))))))))

(declare-fun b!3679094 () Bool)

(declare-fun res!1494683 () Bool)

(assert (=> b!3679094 (=> (not res!1494683) (not e!2278120))))

(assert (=> b!3679094 (= res!1494683 (< (size!29663 (_2!22466 (get!12838 lt!1285393))) (size!29663 lt!1284950)))))

(declare-fun bm!266463 () Bool)

(assert (=> bm!266463 (= call!266468 (maxPrefixOneRule!2101 thiss!23823 (h!44217 rules!3307) lt!1284950))))

(declare-fun b!3679095 () Bool)

(declare-fun lt!1285395 () Option!8308)

(declare-fun lt!1285396 () Option!8308)

(assert (=> b!3679095 (= e!2278119 (ite (and ((_ is None!8307) lt!1285395) ((_ is None!8307) lt!1285396)) None!8307 (ite ((_ is None!8307) lt!1285396) lt!1285395 (ite ((_ is None!8307) lt!1285395) lt!1285396 (ite (>= (size!29661 (_1!22466 (v!38239 lt!1285395))) (size!29661 (_1!22466 (v!38239 lt!1285396)))) lt!1285395 lt!1285396)))))))

(assert (=> b!3679095 (= lt!1285395 call!266468)))

(assert (=> b!3679095 (= lt!1285396 (maxPrefix!2963 thiss!23823 (t!300396 rules!3307) lt!1284950))))

(declare-fun b!3679096 () Bool)

(assert (=> b!3679096 (= e!2278120 (contains!7747 rules!3307 (rule!8674 (_1!22466 (get!12838 lt!1285393)))))))

(declare-fun d!1080189 () Bool)

(declare-fun e!2278121 () Bool)

(assert (=> d!1080189 e!2278121))

(declare-fun res!1494679 () Bool)

(assert (=> d!1080189 (=> res!1494679 e!2278121)))

(assert (=> d!1080189 (= res!1494679 (isEmpty!23042 lt!1285393))))

(assert (=> d!1080189 (= lt!1285393 e!2278119)))

(declare-fun c!636349 () Bool)

(assert (=> d!1080189 (= c!636349 (and ((_ is Cons!38797) rules!3307) ((_ is Nil!38797) (t!300396 rules!3307))))))

(declare-fun lt!1285397 () Unit!56714)

(declare-fun lt!1285394 () Unit!56714)

(assert (=> d!1080189 (= lt!1285397 lt!1285394)))

(assert (=> d!1080189 (isPrefix!3203 lt!1284950 lt!1284950)))

(assert (=> d!1080189 (= lt!1285394 (lemmaIsPrefixRefl!2016 lt!1284950 lt!1284950))))

(assert (=> d!1080189 (rulesValidInductive!2079 thiss!23823 rules!3307)))

(assert (=> d!1080189 (= (maxPrefix!2963 thiss!23823 rules!3307 lt!1284950) lt!1285393)))

(declare-fun b!3679097 () Bool)

(assert (=> b!3679097 (= e!2278121 e!2278120)))

(declare-fun res!1494682 () Bool)

(assert (=> b!3679097 (=> (not res!1494682) (not e!2278120))))

(assert (=> b!3679097 (= res!1494682 (isDefined!6541 lt!1285393))))

(declare-fun b!3679098 () Bool)

(declare-fun res!1494680 () Bool)

(assert (=> b!3679098 (=> (not res!1494680) (not e!2278120))))

(assert (=> b!3679098 (= res!1494680 (= (value!186900 (_1!22466 (get!12838 lt!1285393))) (apply!9342 (transformation!5840 (rule!8674 (_1!22466 (get!12838 lt!1285393)))) (seqFromList!4389 (originalCharacters!6554 (_1!22466 (get!12838 lt!1285393)))))))))

(declare-fun b!3679099 () Bool)

(declare-fun res!1494677 () Bool)

(assert (=> b!3679099 (=> (not res!1494677) (not e!2278120))))

(assert (=> b!3679099 (= res!1494677 (= (++!9656 (list!14418 (charsOf!3854 (_1!22466 (get!12838 lt!1285393)))) (_2!22466 (get!12838 lt!1285393))) lt!1284950))))

(assert (= (and d!1080189 c!636349) b!3679091))

(assert (= (and d!1080189 (not c!636349)) b!3679095))

(assert (= (or b!3679091 b!3679095) bm!266463))

(assert (= (and d!1080189 (not res!1494679)) b!3679097))

(assert (= (and b!3679097 res!1494682) b!3679092))

(assert (= (and b!3679092 res!1494681) b!3679094))

(assert (= (and b!3679094 res!1494683) b!3679099))

(assert (= (and b!3679099 res!1494677) b!3679098))

(assert (= (and b!3679098 res!1494680) b!3679093))

(assert (= (and b!3679093 res!1494678) b!3679096))

(declare-fun m!4189381 () Bool)

(assert (=> b!3679098 m!4189381))

(declare-fun m!4189383 () Bool)

(assert (=> b!3679098 m!4189383))

(assert (=> b!3679098 m!4189383))

(declare-fun m!4189385 () Bool)

(assert (=> b!3679098 m!4189385))

(declare-fun m!4189387 () Bool)

(assert (=> b!3679095 m!4189387))

(assert (=> b!3679096 m!4189381))

(declare-fun m!4189389 () Bool)

(assert (=> b!3679096 m!4189389))

(assert (=> b!3679092 m!4189381))

(declare-fun m!4189391 () Bool)

(assert (=> b!3679092 m!4189391))

(assert (=> b!3679092 m!4189391))

(declare-fun m!4189393 () Bool)

(assert (=> b!3679092 m!4189393))

(declare-fun m!4189395 () Bool)

(assert (=> d!1080189 m!4189395))

(declare-fun m!4189397 () Bool)

(assert (=> d!1080189 m!4189397))

(declare-fun m!4189399 () Bool)

(assert (=> d!1080189 m!4189399))

(assert (=> d!1080189 m!4188943))

(declare-fun m!4189401 () Bool)

(assert (=> b!3679097 m!4189401))

(assert (=> b!3679093 m!4189381))

(assert (=> b!3679093 m!4189391))

(assert (=> b!3679093 m!4189391))

(assert (=> b!3679093 m!4189393))

(assert (=> b!3679093 m!4189393))

(declare-fun m!4189403 () Bool)

(assert (=> b!3679093 m!4189403))

(declare-fun m!4189405 () Bool)

(assert (=> bm!266463 m!4189405))

(assert (=> b!3679094 m!4189381))

(declare-fun m!4189407 () Bool)

(assert (=> b!3679094 m!4189407))

(assert (=> b!3679094 m!4188739))

(assert (=> b!3679099 m!4189381))

(assert (=> b!3679099 m!4189391))

(assert (=> b!3679099 m!4189391))

(assert (=> b!3679099 m!4189393))

(assert (=> b!3679099 m!4189393))

(declare-fun m!4189409 () Bool)

(assert (=> b!3679099 m!4189409))

(assert (=> b!3678228 d!1080189))

(declare-fun b!3679101 () Bool)

(declare-fun res!1494684 () Bool)

(declare-fun e!2278123 () Bool)

(assert (=> b!3679101 (=> (not res!1494684) (not e!2278123))))

(assert (=> b!3679101 (= res!1494684 (= (head!7890 lt!1284983) (head!7890 lt!1284950)))))

(declare-fun d!1080191 () Bool)

(declare-fun e!2278122 () Bool)

(assert (=> d!1080191 e!2278122))

(declare-fun res!1494687 () Bool)

(assert (=> d!1080191 (=> res!1494687 e!2278122)))

(declare-fun lt!1285398 () Bool)

(assert (=> d!1080191 (= res!1494687 (not lt!1285398))))

(declare-fun e!2278124 () Bool)

(assert (=> d!1080191 (= lt!1285398 e!2278124)))

(declare-fun res!1494686 () Bool)

(assert (=> d!1080191 (=> res!1494686 e!2278124)))

(assert (=> d!1080191 (= res!1494686 ((_ is Nil!38796) lt!1284983))))

(assert (=> d!1080191 (= (isPrefix!3203 lt!1284983 lt!1284950) lt!1285398)))

(declare-fun b!3679103 () Bool)

(assert (=> b!3679103 (= e!2278122 (>= (size!29663 lt!1284950) (size!29663 lt!1284983)))))

(declare-fun b!3679100 () Bool)

(assert (=> b!3679100 (= e!2278124 e!2278123)))

(declare-fun res!1494685 () Bool)

(assert (=> b!3679100 (=> (not res!1494685) (not e!2278123))))

(assert (=> b!3679100 (= res!1494685 (not ((_ is Nil!38796) lt!1284950)))))

(declare-fun b!3679102 () Bool)

(assert (=> b!3679102 (= e!2278123 (isPrefix!3203 (tail!5691 lt!1284983) (tail!5691 lt!1284950)))))

(assert (= (and d!1080191 (not res!1494686)) b!3679100))

(assert (= (and b!3679100 res!1494685) b!3679101))

(assert (= (and b!3679101 res!1494684) b!3679102))

(assert (= (and d!1080191 (not res!1494687)) b!3679103))

(assert (=> b!3679101 m!4188875))

(assert (=> b!3679101 m!4189257))

(assert (=> b!3679103 m!4188739))

(assert (=> b!3679103 m!4188199))

(assert (=> b!3679102 m!4188865))

(assert (=> b!3679102 m!4188741))

(assert (=> b!3679102 m!4188865))

(assert (=> b!3679102 m!4188741))

(declare-fun m!4189411 () Bool)

(assert (=> b!3679102 m!4189411))

(assert (=> b!3678228 d!1080191))

(assert (=> b!3678228 d!1079855))

(declare-fun b!3679117 () Bool)

(declare-fun e!2278127 () Bool)

(declare-fun tp!1118516 () Bool)

(declare-fun tp!1118513 () Bool)

(assert (=> b!3679117 (= e!2278127 (and tp!1118516 tp!1118513))))

(declare-fun b!3679115 () Bool)

(declare-fun tp!1118515 () Bool)

(declare-fun tp!1118514 () Bool)

(assert (=> b!3679115 (= e!2278127 (and tp!1118515 tp!1118514))))

(declare-fun b!3679114 () Bool)

(assert (=> b!3679114 (= e!2278127 tp_is_empty!18281)))

(assert (=> b!3678265 (= tp!1118441 e!2278127)))

(declare-fun b!3679116 () Bool)

(declare-fun tp!1118517 () Bool)

(assert (=> b!3679116 (= e!2278127 tp!1118517)))

(assert (= (and b!3678265 ((_ is ElementMatch!10599) (regex!5840 (h!44217 rules!3307)))) b!3679114))

(assert (= (and b!3678265 ((_ is Concat!16670) (regex!5840 (h!44217 rules!3307)))) b!3679115))

(assert (= (and b!3678265 ((_ is Star!10599) (regex!5840 (h!44217 rules!3307)))) b!3679116))

(assert (= (and b!3678265 ((_ is Union!10599) (regex!5840 (h!44217 rules!3307)))) b!3679117))

(declare-fun b!3679121 () Bool)

(declare-fun e!2278128 () Bool)

(declare-fun tp!1118521 () Bool)

(declare-fun tp!1118518 () Bool)

(assert (=> b!3679121 (= e!2278128 (and tp!1118521 tp!1118518))))

(declare-fun b!3679119 () Bool)

(declare-fun tp!1118520 () Bool)

(declare-fun tp!1118519 () Bool)

(assert (=> b!3679119 (= e!2278128 (and tp!1118520 tp!1118519))))

(declare-fun b!3679118 () Bool)

(assert (=> b!3679118 (= e!2278128 tp_is_empty!18281)))

(assert (=> b!3678236 (= tp!1118438 e!2278128)))

(declare-fun b!3679120 () Bool)

(declare-fun tp!1118522 () Bool)

(assert (=> b!3679120 (= e!2278128 tp!1118522)))

(assert (= (and b!3678236 ((_ is ElementMatch!10599) (regex!5840 rule!403))) b!3679118))

(assert (= (and b!3678236 ((_ is Concat!16670) (regex!5840 rule!403))) b!3679119))

(assert (= (and b!3678236 ((_ is Star!10599) (regex!5840 rule!403))) b!3679120))

(assert (= (and b!3678236 ((_ is Union!10599) (regex!5840 rule!403))) b!3679121))

(declare-fun b!3679126 () Bool)

(declare-fun e!2278131 () Bool)

(declare-fun tp!1118525 () Bool)

(assert (=> b!3679126 (= e!2278131 (and tp_is_empty!18281 tp!1118525))))

(assert (=> b!3678244 (= tp!1118437 e!2278131)))

(assert (= (and b!3678244 ((_ is Cons!38796) (t!300395 suffix!1395))) b!3679126))

(declare-fun b!3679127 () Bool)

(declare-fun e!2278132 () Bool)

(declare-fun tp!1118526 () Bool)

(assert (=> b!3679127 (= e!2278132 (and tp_is_empty!18281 tp!1118526))))

(assert (=> b!3678245 (= tp!1118445 e!2278132)))

(assert (= (and b!3678245 ((_ is Cons!38796) (originalCharacters!6554 token!511))) b!3679127))

(declare-fun b!3679131 () Bool)

(declare-fun e!2278133 () Bool)

(declare-fun tp!1118530 () Bool)

(declare-fun tp!1118527 () Bool)

(assert (=> b!3679131 (= e!2278133 (and tp!1118530 tp!1118527))))

(declare-fun b!3679129 () Bool)

(declare-fun tp!1118529 () Bool)

(declare-fun tp!1118528 () Bool)

(assert (=> b!3679129 (= e!2278133 (and tp!1118529 tp!1118528))))

(declare-fun b!3679128 () Bool)

(assert (=> b!3679128 (= e!2278133 tp_is_empty!18281)))

(assert (=> b!3678266 (= tp!1118439 e!2278133)))

(declare-fun b!3679130 () Bool)

(declare-fun tp!1118531 () Bool)

(assert (=> b!3679130 (= e!2278133 tp!1118531)))

(assert (= (and b!3678266 ((_ is ElementMatch!10599) (regex!5840 (rule!8674 token!511)))) b!3679128))

(assert (= (and b!3678266 ((_ is Concat!16670) (regex!5840 (rule!8674 token!511)))) b!3679129))

(assert (= (and b!3678266 ((_ is Star!10599) (regex!5840 (rule!8674 token!511)))) b!3679130))

(assert (= (and b!3678266 ((_ is Union!10599) (regex!5840 (rule!8674 token!511)))) b!3679131))

(declare-fun b!3679142 () Bool)

(declare-fun b_free!97397 () Bool)

(declare-fun b_next!98101 () Bool)

(assert (=> b!3679142 (= b_free!97397 (not b_next!98101))))

(declare-fun tb!213355 () Bool)

(declare-fun t!300525 () Bool)

(assert (=> (and b!3679142 (= (toValue!8136 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300525) tb!213355))

(declare-fun result!259600 () Bool)

(assert (= result!259600 result!259550))

(assert (=> d!1079973 t!300525))

(declare-fun tb!213357 () Bool)

(declare-fun t!300527 () Bool)

(assert (=> (and b!3679142 (= (toValue!8136 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300527) tb!213357))

(declare-fun result!259602 () Bool)

(assert (= result!259602 result!259532))

(assert (=> d!1079935 t!300527))

(declare-fun t!300529 () Bool)

(declare-fun tb!213359 () Bool)

(assert (=> (and b!3679142 (= (toValue!8136 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toValue!8136 (transformation!5840 rule!403))) t!300529) tb!213359))

(declare-fun result!259604 () Bool)

(assert (= result!259604 result!259566))

(assert (=> d!1080121 t!300529))

(declare-fun tb!213361 () Bool)

(declare-fun t!300531 () Bool)

(assert (=> (and b!3679142 (= (toValue!8136 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toValue!8136 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300531) tb!213361))

(declare-fun result!259606 () Bool)

(assert (= result!259606 result!259542))

(assert (=> d!1079935 t!300531))

(assert (=> d!1079933 t!300527))

(assert (=> d!1079909 t!300527))

(declare-fun tp!1118542 () Bool)

(declare-fun b_and!274727 () Bool)

(assert (=> b!3679142 (= tp!1118542 (and (=> t!300531 result!259606) (=> t!300527 result!259602) (=> t!300529 result!259604) (=> t!300525 result!259600) b_and!274727))))

(declare-fun b_free!97399 () Bool)

(declare-fun b_next!98103 () Bool)

(assert (=> b!3679142 (= b_free!97399 (not b_next!98103))))

(declare-fun tb!213363 () Bool)

(declare-fun t!300533 () Bool)

(assert (=> (and b!3679142 (= (toChars!7995 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300533) tb!213363))

(declare-fun result!259608 () Bool)

(assert (= result!259608 result!259474))

(assert (=> d!1079855 t!300533))

(declare-fun t!300535 () Bool)

(declare-fun tb!213365 () Bool)

(assert (=> (and b!3679142 (= (toChars!7995 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toChars!7995 (transformation!5840 (rule!8674 (_1!22466 lt!1284940))))) t!300535) tb!213365))

(declare-fun result!259610 () Bool)

(assert (= result!259610 result!259524))

(assert (=> d!1079909 t!300535))

(declare-fun tb!213367 () Bool)

(declare-fun t!300537 () Bool)

(assert (=> (and b!3679142 (= (toChars!7995 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toChars!7995 (transformation!5840 (rule!8674 token!511)))) t!300537) tb!213367))

(declare-fun result!259612 () Bool)

(assert (= result!259612 result!259558))

(assert (=> b!3678722 t!300537))

(assert (=> d!1080031 t!300537))

(declare-fun tp!1118540 () Bool)

(declare-fun b_and!274729 () Bool)

(assert (=> b!3679142 (= tp!1118540 (and (=> t!300533 result!259608) (=> t!300535 result!259610) (=> t!300537 result!259612) b_and!274729))))

(declare-fun e!2278145 () Bool)

(assert (=> b!3679142 (= e!2278145 (and tp!1118542 tp!1118540))))

(declare-fun tp!1118541 () Bool)

(declare-fun e!2278142 () Bool)

(declare-fun b!3679141 () Bool)

(assert (=> b!3679141 (= e!2278142 (and tp!1118541 (inv!52287 (tag!6640 (h!44217 (t!300396 rules!3307)))) (inv!52290 (transformation!5840 (h!44217 (t!300396 rules!3307)))) e!2278145))))

(declare-fun b!3679140 () Bool)

(declare-fun e!2278143 () Bool)

(declare-fun tp!1118543 () Bool)

(assert (=> b!3679140 (= e!2278143 (and e!2278142 tp!1118543))))

(assert (=> b!3678222 (= tp!1118443 e!2278143)))

(assert (= b!3679141 b!3679142))

(assert (= b!3679140 b!3679141))

(assert (= (and b!3678222 ((_ is Cons!38797) (t!300396 rules!3307))) b!3679140))

(declare-fun m!4189413 () Bool)

(assert (=> b!3679141 m!4189413))

(declare-fun m!4189415 () Bool)

(assert (=> b!3679141 m!4189415))

(declare-fun b!3679146 () Bool)

(declare-fun e!2278146 () Bool)

(declare-fun tp!1118547 () Bool)

(declare-fun tp!1118544 () Bool)

(assert (=> b!3679146 (= e!2278146 (and tp!1118547 tp!1118544))))

(declare-fun b!3679144 () Bool)

(declare-fun tp!1118546 () Bool)

(declare-fun tp!1118545 () Bool)

(assert (=> b!3679144 (= e!2278146 (and tp!1118546 tp!1118545))))

(declare-fun b!3679143 () Bool)

(assert (=> b!3679143 (= e!2278146 tp_is_empty!18281)))

(assert (=> b!3678252 (= tp!1118433 e!2278146)))

(declare-fun b!3679145 () Bool)

(declare-fun tp!1118548 () Bool)

(assert (=> b!3679145 (= e!2278146 tp!1118548)))

(assert (= (and b!3678252 ((_ is ElementMatch!10599) (regex!5840 anOtherTypeRule!33))) b!3679143))

(assert (= (and b!3678252 ((_ is Concat!16670) (regex!5840 anOtherTypeRule!33))) b!3679144))

(assert (= (and b!3678252 ((_ is Star!10599) (regex!5840 anOtherTypeRule!33))) b!3679145))

(assert (= (and b!3678252 ((_ is Union!10599) (regex!5840 anOtherTypeRule!33))) b!3679146))

(declare-fun b_lambda!109293 () Bool)

(assert (= b_lambda!109281 (or (and b!3679142 b_free!97399 (= (toChars!7995 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678272 b_free!97379 (= (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678242 b_free!97391 (= (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678269 b_free!97383 (= (toChars!7995 (transformation!5840 rule!403)) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678239 b_free!97387) b_lambda!109293)))

(declare-fun b_lambda!109295 () Bool)

(assert (= b_lambda!109285 (or (and b!3678242 b_free!97389 (= (toValue!8136 (transformation!5840 anOtherTypeRule!33)) (toValue!8136 (transformation!5840 rule!403)))) (and b!3678269 b_free!97381) (and b!3678272 b_free!97377 (= (toValue!8136 (transformation!5840 (h!44217 rules!3307))) (toValue!8136 (transformation!5840 rule!403)))) (and b!3678239 b_free!97385 (= (toValue!8136 (transformation!5840 (rule!8674 token!511))) (toValue!8136 (transformation!5840 rule!403)))) (and b!3679142 b_free!97397 (= (toValue!8136 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toValue!8136 (transformation!5840 rule!403)))) b_lambda!109295)))

(declare-fun b_lambda!109297 () Bool)

(assert (= b_lambda!109279 (or (and b!3679142 b_free!97399 (= (toChars!7995 (transformation!5840 (h!44217 (t!300396 rules!3307)))) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678272 b_free!97379 (= (toChars!7995 (transformation!5840 (h!44217 rules!3307))) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678242 b_free!97391 (= (toChars!7995 (transformation!5840 anOtherTypeRule!33)) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678269 b_free!97383 (= (toChars!7995 (transformation!5840 rule!403)) (toChars!7995 (transformation!5840 (rule!8674 token!511))))) (and b!3678239 b_free!97387) b_lambda!109297)))

(check-sat (not b!3678797) (not b!3679144) (not b_next!98085) (not b_lambda!109297) (not d!1079957) (not b!3678769) (not d!1080045) (not b_lambda!109269) (not b!3678607) (not d!1080099) (not d!1080009) (not b!3678960) (not b!3679119) (not b!3678722) (not d!1079909) (not d!1080041) (not d!1080081) (not b!3679058) (not d!1079935) (not d!1080069) (not b!3678646) (not bm!266457) (not d!1079999) (not tb!213333) (not b!3678798) (not d!1080031) (not b!3678796) (not b!3679055) (not b!3679060) (not b_next!98087) (not d!1079835) (not d!1079907) (not d!1079905) (not d!1080189) (not d!1080013) (not b!3678709) (not d!1079995) (not b!3679059) (not b!3678761) (not d!1079997) (not b!3679102) (not b!3678439) (not b_lambda!109277) (not b!3678399) (not d!1080167) (not b!3679085) (not b!3678598) (not b!3678910) (not b!3678732) (not b!3679145) (not d!1079945) (not b!3678707) (not b!3678887) (not b!3678973) (not b_next!98089) (not b!3678723) (not d!1080173) (not bm!266435) (not d!1080133) (not d!1080043) (not d!1079883) (not bm!266441) (not bm!266463) (not d!1080029) (not d!1080185) (not b!3678997) b_and!274717 (not b!3679116) (not d!1080091) (not tb!213325) (not b!3679093) b_and!274715 (not bm!266437) (not d!1080187) b_and!274721 (not b_next!98095) b_and!274703 (not b!3678704) (not d!1080067) (not b!3679120) (not b!3678724) (not b!3678765) (not bm!266436) (not d!1080115) (not b_lambda!109295) (not b_lambda!109273) (not b!3678735) (not b!3678653) (not bm!266448) (not b!3678794) (not b!3679086) (not b_lambda!109251) (not b!3678956) (not d!1079993) (not b_next!98103) (not b!3679087) (not b_next!98101) (not d!1079855) (not d!1079941) (not b!3678824) (not b!3678395) (not d!1080035) (not d!1080003) (not tb!213245) (not b!3678739) (not b!3678971) (not bm!266418) (not b!3679140) (not b_next!98091) (not b!3679146) (not b!3678872) (not b!3678959) (not b!3679131) (not b!3679103) (not b!3678730) (not b!3678748) (not b!3678762) (not d!1080025) (not b!3678705) (not d!1080177) (not b!3678859) (not b!3678962) (not b!3679130) (not d!1080037) (not d!1080161) (not b!3679121) (not b!3678807) (not b!3679098) (not b!3678995) (not d!1080011) (not b!3679126) (not d!1080007) (not d!1079939) (not b!3679096) (not b!3678716) (not d!1079897) (not b!3678759) (not b!3678746) (not d!1080131) (not d!1080137) (not b!3679129) (not d!1080001) (not b!3679097) (not b!3678957) (not b!3678855) (not d!1079963) (not b!3678858) (not b!3679092) (not b!3679048) b_and!274699 (not b!3678465) (not b_next!98081) (not b_next!98083) (not d!1079985) (not d!1079837) (not b!3678877) (not b!3678828) (not b!3679054) b_and!274719 (not d!1080179) (not b!3679094) (not d!1079977) (not tb!213293) (not d!1080027) (not d!1080139) (not bm!266440) (not tb!213317) (not d!1079959) (not b!3678937) (not b!3679069) (not d!1080019) (not b!3678795) (not b_lambda!109275) (not d!1080077) (not b!3679101) tp_is_empty!18281 (not b!3678617) (not d!1080113) b_and!274701 (not b!3679099) (not b!3678791) (not b!3678881) (not b!3679047) (not b!3678729) (not b!3678725) (not b!3678596) (not d!1079991) (not d!1080183) (not b!3679095) (not b_lambda!109293) (not tb!213301) (not b!3678809) (not d!1079983) (not b!3678403) (not b!3679127) (not b!3678710) (not bm!266454) (not b!3678333) (not d!1080023) (not b!3679117) (not b!3678874) (not b!3679070) (not b!3678717) (not b!3678760) (not d!1079851) (not b!3678964) (not bm!266451) (not b!3678706) (not b_lambda!109267) (not b!3679050) (not tb!213309) (not b!3678792) (not b!3679141) (not b!3678394) b_and!274729 (not b!3678963) (not b!3679071) (not b!3678703) b_and!274705 (not d!1080093) (not bm!266439) (not d!1080175) (not b!3678871) (not b!3678771) (not b!3679115) (not b!3678731) (not b!3679051) (not d!1080111) (not bm!266449) (not b!3678393) (not b!3678567) (not d!1079859) (not b!3678938) (not b!3678908) (not b_next!98093) (not b!3678711) (not b!3678793) (not bm!266447) (not b!3678396) (not d!1079949) b_and!274727 (not bm!266446) (not b!3678958) (not d!1079961) (not d!1080127) (not b!3678873) (not b_lambda!109271) (not b!3678993))
(check-sat (not b_next!98085) (not b_next!98087) (not b_next!98089) b_and!274717 (not b_next!98091) b_and!274701 b_and!274729 b_and!274705 b_and!274715 b_and!274721 (not b_next!98095) b_and!274703 (not b_next!98103) (not b_next!98101) (not b_next!98081) b_and!274699 (not b_next!98083) b_and!274719 (not b_next!98093) b_and!274727)
