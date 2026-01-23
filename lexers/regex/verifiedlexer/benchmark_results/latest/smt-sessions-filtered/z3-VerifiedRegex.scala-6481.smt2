; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340442 () Bool)

(assert start!340442)

(declare-fun b!3643816 () Bool)

(declare-fun b_free!95617 () Bool)

(declare-fun b_next!96321 () Bool)

(assert (=> b!3643816 (= b_free!95617 (not b_next!96321))))

(declare-fun tp!1111396 () Bool)

(declare-fun b_and!268875 () Bool)

(assert (=> b!3643816 (= tp!1111396 b_and!268875)))

(declare-fun b_free!95619 () Bool)

(declare-fun b_next!96323 () Bool)

(assert (=> b!3643816 (= b_free!95619 (not b_next!96323))))

(declare-fun tp!1111399 () Bool)

(declare-fun b_and!268877 () Bool)

(assert (=> b!3643816 (= tp!1111399 b_and!268877)))

(declare-fun b!3643803 () Bool)

(declare-fun b_free!95621 () Bool)

(declare-fun b_next!96325 () Bool)

(assert (=> b!3643803 (= b_free!95621 (not b_next!96325))))

(declare-fun tp!1111397 () Bool)

(declare-fun b_and!268879 () Bool)

(assert (=> b!3643803 (= tp!1111397 b_and!268879)))

(declare-fun b_free!95623 () Bool)

(declare-fun b_next!96327 () Bool)

(assert (=> b!3643803 (= b_free!95623 (not b_next!96327))))

(declare-fun tp!1111400 () Bool)

(declare-fun b_and!268881 () Bool)

(assert (=> b!3643803 (= tp!1111400 b_and!268881)))

(declare-fun b!3643838 () Bool)

(declare-fun b_free!95625 () Bool)

(declare-fun b_next!96329 () Bool)

(assert (=> b!3643838 (= b_free!95625 (not b_next!96329))))

(declare-fun tp!1111410 () Bool)

(declare-fun b_and!268883 () Bool)

(assert (=> b!3643838 (= tp!1111410 b_and!268883)))

(declare-fun b_free!95627 () Bool)

(declare-fun b_next!96331 () Bool)

(assert (=> b!3643838 (= b_free!95627 (not b_next!96331))))

(declare-fun tp!1111408 () Bool)

(declare-fun b_and!268885 () Bool)

(assert (=> b!3643838 (= tp!1111408 b_and!268885)))

(declare-fun b!3643809 () Bool)

(declare-fun b_free!95629 () Bool)

(declare-fun b_next!96333 () Bool)

(assert (=> b!3643809 (= b_free!95629 (not b_next!96333))))

(declare-fun tp!1111406 () Bool)

(declare-fun b_and!268887 () Bool)

(assert (=> b!3643809 (= tp!1111406 b_and!268887)))

(declare-fun b_free!95631 () Bool)

(declare-fun b_next!96335 () Bool)

(assert (=> b!3643809 (= b_free!95631 (not b_next!96335))))

(declare-fun tp!1111409 () Bool)

(declare-fun b_and!268889 () Bool)

(assert (=> b!3643809 (= tp!1111409 b_and!268889)))

(declare-fun b!3643802 () Bool)

(declare-fun res!1477388 () Bool)

(declare-fun e!2255745 () Bool)

(assert (=> b!3643802 (=> (not res!1477388) (not e!2255745))))

(declare-datatypes ((LexerInterface!5331 0))(
  ( (LexerInterfaceExt!5328 (__x!24161 Int)) (Lexer!5329) )
))
(declare-fun thiss!23823 () LexerInterface!5331)

(declare-datatypes ((List!38533 0))(
  ( (Nil!38409) (Cons!38409 (h!43829 (_ BitVec 16)) (t!296796 List!38533)) )
))
(declare-datatypes ((TokenValue!5972 0))(
  ( (FloatLiteralValue!11944 (text!42249 List!38533)) (TokenValueExt!5971 (__x!24162 Int)) (Broken!29860 (value!184081 List!38533)) (Object!6095) (End!5972) (Def!5972) (Underscore!5972) (Match!5972) (Else!5972) (Error!5972) (Case!5972) (If!5972) (Extends!5972) (Abstract!5972) (Class!5972) (Val!5972) (DelimiterValue!11944 (del!6032 List!38533)) (KeywordValue!5978 (value!184082 List!38533)) (CommentValue!11944 (value!184083 List!38533)) (WhitespaceValue!11944 (value!184084 List!38533)) (IndentationValue!5972 (value!184085 List!38533)) (String!43193) (Int32!5972) (Broken!29861 (value!184086 List!38533)) (Boolean!5973) (Unit!55279) (OperatorValue!5975 (op!6032 List!38533)) (IdentifierValue!11944 (value!184087 List!38533)) (IdentifierValue!11945 (value!184088 List!38533)) (WhitespaceValue!11945 (value!184089 List!38533)) (True!11944) (False!11944) (Broken!29862 (value!184090 List!38533)) (Broken!29863 (value!184091 List!38533)) (True!11945) (RightBrace!5972) (RightBracket!5972) (Colon!5972) (Null!5972) (Comma!5972) (LeftBracket!5972) (False!11945) (LeftBrace!5972) (ImaginaryLiteralValue!5972 (text!42250 List!38533)) (StringLiteralValue!17916 (value!184092 List!38533)) (EOFValue!5972 (value!184093 List!38533)) (IdentValue!5972 (value!184094 List!38533)) (DelimiterValue!11945 (value!184095 List!38533)) (DedentValue!5972 (value!184096 List!38533)) (NewLineValue!5972 (value!184097 List!38533)) (IntegerValue!17916 (value!184098 (_ BitVec 32)) (text!42251 List!38533)) (IntegerValue!17917 (value!184099 Int) (text!42252 List!38533)) (Times!5972) (Or!5972) (Equal!5972) (Minus!5972) (Broken!29864 (value!184100 List!38533)) (And!5972) (Div!5972) (LessEqual!5972) (Mod!5972) (Concat!16473) (Not!5972) (Plus!5972) (SpaceValue!5972 (value!184101 List!38533)) (IntegerValue!17918 (value!184102 Int) (text!42253 List!38533)) (StringLiteralValue!17917 (text!42254 List!38533)) (FloatLiteralValue!11945 (text!42255 List!38533)) (BytesLiteralValue!5972 (value!184103 List!38533)) (CommentValue!11945 (value!184104 List!38533)) (StringLiteralValue!17918 (value!184105 List!38533)) (ErrorTokenValue!5972 (msg!6033 List!38533)) )
))
(declare-datatypes ((C!21188 0))(
  ( (C!21189 (val!12642 Int)) )
))
(declare-datatypes ((Regex!10501 0))(
  ( (ElementMatch!10501 (c!629926 C!21188)) (Concat!16474 (regOne!21514 Regex!10501) (regTwo!21514 Regex!10501)) (EmptyExpr!10501) (Star!10501 (reg!10830 Regex!10501)) (EmptyLang!10501) (Union!10501 (regOne!21515 Regex!10501) (regTwo!21515 Regex!10501)) )
))
(declare-datatypes ((String!43194 0))(
  ( (String!43195 (value!184106 String)) )
))
(declare-datatypes ((List!38534 0))(
  ( (Nil!38410) (Cons!38410 (h!43830 C!21188) (t!296797 List!38534)) )
))
(declare-datatypes ((IArray!23467 0))(
  ( (IArray!23468 (innerList!11791 List!38534)) )
))
(declare-datatypes ((Conc!11731 0))(
  ( (Node!11731 (left!29988 Conc!11731) (right!30318 Conc!11731) (csize!23692 Int) (cheight!11942 Int)) (Leaf!18213 (xs!14933 IArray!23467) (csize!23693 Int)) (Empty!11731) )
))
(declare-datatypes ((BalanceConc!23076 0))(
  ( (BalanceConc!23077 (c!629927 Conc!11731)) )
))
(declare-datatypes ((TokenValueInjection!11372 0))(
  ( (TokenValueInjection!11373 (toValue!8034 Int) (toChars!7893 Int)) )
))
(declare-datatypes ((Rule!11284 0))(
  ( (Rule!11285 (regex!5742 Regex!10501) (tag!6496 String!43194) (isSeparator!5742 Bool) (transformation!5742 TokenValueInjection!11372)) )
))
(declare-datatypes ((List!38535 0))(
  ( (Nil!38411) (Cons!38411 (h!43831 Rule!11284) (t!296798 List!38535)) )
))
(declare-fun rules!3307 () List!38535)

(declare-fun rulesInvariant!4728 (LexerInterface!5331 List!38535) Bool)

(assert (=> b!3643802 (= res!1477388 (rulesInvariant!4728 thiss!23823 rules!3307))))

(declare-fun e!2255743 () Bool)

(assert (=> b!3643803 (= e!2255743 (and tp!1111397 tp!1111400))))

(declare-fun b!3643804 () Bool)

(declare-fun e!2255739 () Bool)

(declare-datatypes ((Token!10850 0))(
  ( (Token!10851 (value!184107 TokenValue!5972) (rule!8530 Rule!11284) (size!29319 Int) (originalCharacters!6456 List!38534)) )
))
(declare-datatypes ((tuple2!38280 0))(
  ( (tuple2!38281 (_1!22274 Token!10850) (_2!22274 List!38534)) )
))
(declare-fun lt!1262263 () tuple2!38280)

(declare-fun lt!1262249 () Rule!11284)

(assert (=> b!3643804 (= e!2255739 (= (rule!8530 (_1!22274 lt!1262263)) lt!1262249))))

(declare-fun b!3643805 () Bool)

(declare-fun res!1477378 () Bool)

(declare-fun e!2255735 () Bool)

(assert (=> b!3643805 (=> res!1477378 e!2255735)))

(declare-fun lt!1262256 () List!38534)

(declare-fun matchR!5070 (Regex!10501 List!38534) Bool)

(assert (=> b!3643805 (= res!1477378 (not (matchR!5070 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262256)))))

(declare-fun b!3643806 () Bool)

(declare-fun res!1477386 () Bool)

(declare-fun e!2255742 () Bool)

(assert (=> b!3643806 (=> res!1477386 e!2255742)))

(declare-fun lt!1262248 () List!38534)

(declare-fun lt!1262259 () C!21188)

(declare-fun contains!7549 (List!38534 C!21188) Bool)

(assert (=> b!3643806 (= res!1477386 (not (contains!7549 lt!1262248 lt!1262259)))))

(declare-fun e!2255741 () Bool)

(declare-fun e!2255732 () Bool)

(declare-fun tp!1111398 () Bool)

(declare-fun token!511 () Token!10850)

(declare-fun b!3643808 () Bool)

(declare-fun inv!21 (TokenValue!5972) Bool)

(assert (=> b!3643808 (= e!2255732 (and (inv!21 (value!184107 token!511)) e!2255741 tp!1111398))))

(declare-fun e!2255724 () Bool)

(assert (=> b!3643809 (= e!2255724 (and tp!1111406 tp!1111409))))

(declare-fun b!3643810 () Bool)

(declare-fun validRegex!4809 (Regex!10501) Bool)

(assert (=> b!3643810 (= e!2255742 (validRegex!4809 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun usedCharacters!954 (Regex!10501) List!38534)

(assert (=> b!3643810 (not (contains!7549 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262259))))

(declare-datatypes ((Unit!55280 0))(
  ( (Unit!55281) )
))
(declare-fun lt!1262257 () Unit!55280)

(declare-fun rule!403 () Rule!11284)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!270 (LexerInterface!5331 List!38535 List!38535 Rule!11284 Rule!11284 C!21188) Unit!55280)

(assert (=> b!3643810 (= lt!1262257 (lemmaSepRuleNotContainsCharContainedInANonSepRule!270 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8530 (_1!22274 lt!1262263)) lt!1262259))))

(declare-fun b!3643811 () Bool)

(declare-fun e!2255748 () Bool)

(assert (=> b!3643811 (= e!2255748 e!2255735)))

(declare-fun res!1477379 () Bool)

(assert (=> b!3643811 (=> res!1477379 e!2255735)))

(declare-fun lt!1262269 () List!38534)

(declare-fun isPrefix!3105 (List!38534 List!38534) Bool)

(assert (=> b!3643811 (= res!1477379 (not (isPrefix!3105 lt!1262256 lt!1262269)))))

(declare-fun ++!9558 (List!38534 List!38534) List!38534)

(assert (=> b!3643811 (isPrefix!3105 lt!1262256 (++!9558 lt!1262256 (_2!22274 lt!1262263)))))

(declare-fun lt!1262245 () Unit!55280)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2024 (List!38534 List!38534) Unit!55280)

(assert (=> b!3643811 (= lt!1262245 (lemmaConcatTwoListThenFirstIsPrefix!2024 lt!1262256 (_2!22274 lt!1262263)))))

(declare-fun lt!1262251 () BalanceConc!23076)

(declare-fun list!14224 (BalanceConc!23076) List!38534)

(assert (=> b!3643811 (= lt!1262256 (list!14224 lt!1262251))))

(declare-fun charsOf!3756 (Token!10850) BalanceConc!23076)

(assert (=> b!3643811 (= lt!1262251 (charsOf!3756 (_1!22274 lt!1262263)))))

(declare-fun e!2255749 () Bool)

(assert (=> b!3643811 e!2255749))

(declare-fun res!1477375 () Bool)

(assert (=> b!3643811 (=> (not res!1477375) (not e!2255749))))

(declare-datatypes ((Option!8112 0))(
  ( (None!8111) (Some!8111 (v!37951 Rule!11284)) )
))
(declare-fun lt!1262252 () Option!8112)

(declare-fun isDefined!6344 (Option!8112) Bool)

(assert (=> b!3643811 (= res!1477375 (isDefined!6344 lt!1262252))))

(declare-fun getRuleFromTag!1346 (LexerInterface!5331 List!38535 String!43194) Option!8112)

(assert (=> b!3643811 (= lt!1262252 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun lt!1262270 () Unit!55280)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1346 (LexerInterface!5331 List!38535 List!38534 Token!10850) Unit!55280)

(assert (=> b!3643811 (= lt!1262270 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1346 thiss!23823 rules!3307 lt!1262269 (_1!22274 lt!1262263)))))

(declare-datatypes ((Option!8113 0))(
  ( (None!8112) (Some!8112 (v!37952 tuple2!38280)) )
))
(declare-fun lt!1262261 () Option!8113)

(declare-fun get!12593 (Option!8113) tuple2!38280)

(assert (=> b!3643811 (= lt!1262263 (get!12593 lt!1262261))))

(declare-fun suffix!1395 () List!38534)

(declare-fun lt!1262265 () Unit!55280)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1009 (LexerInterface!5331 List!38535 List!38534 List!38534) Unit!55280)

(assert (=> b!3643811 (= lt!1262265 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1009 thiss!23823 rules!3307 lt!1262248 suffix!1395))))

(declare-fun maxPrefix!2865 (LexerInterface!5331 List!38535 List!38534) Option!8113)

(assert (=> b!3643811 (= lt!1262261 (maxPrefix!2865 thiss!23823 rules!3307 lt!1262269))))

(assert (=> b!3643811 (isPrefix!3105 lt!1262248 lt!1262269)))

(declare-fun lt!1262244 () Unit!55280)

(assert (=> b!3643811 (= lt!1262244 (lemmaConcatTwoListThenFirstIsPrefix!2024 lt!1262248 suffix!1395))))

(assert (=> b!3643811 (= lt!1262269 (++!9558 lt!1262248 suffix!1395))))

(declare-fun b!3643812 () Bool)

(declare-fun e!2255731 () Bool)

(assert (=> b!3643812 (= e!2255735 e!2255731)))

(declare-fun res!1477369 () Bool)

(assert (=> b!3643812 (=> res!1477369 e!2255731)))

(declare-fun apply!9244 (TokenValueInjection!11372 BalanceConc!23076) TokenValue!5972)

(declare-fun size!29320 (BalanceConc!23076) Int)

(assert (=> b!3643812 (= res!1477369 (not (= lt!1262261 (Some!8112 (tuple2!38281 (Token!10851 (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251) (rule!8530 (_1!22274 lt!1262263)) (size!29320 lt!1262251) lt!1262256) (_2!22274 lt!1262263))))))))

(declare-fun lt!1262268 () Unit!55280)

(declare-fun lemmaCharactersSize!787 (Token!10850) Unit!55280)

(assert (=> b!3643812 (= lt!1262268 (lemmaCharactersSize!787 (_1!22274 lt!1262263)))))

(declare-fun lt!1262254 () Unit!55280)

(declare-fun lemmaEqSameImage!925 (TokenValueInjection!11372 BalanceConc!23076 BalanceConc!23076) Unit!55280)

(declare-fun seqFromList!4291 (List!38534) BalanceConc!23076)

(assert (=> b!3643812 (= lt!1262254 (lemmaEqSameImage!925 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251 (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263)))))))

(declare-fun lt!1262273 () Unit!55280)

(declare-fun lemmaSemiInverse!1491 (TokenValueInjection!11372 BalanceConc!23076) Unit!55280)

(assert (=> b!3643812 (= lt!1262273 (lemmaSemiInverse!1491 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251))))

(declare-fun b!3643813 () Bool)

(declare-fun e!2255729 () Bool)

(assert (=> b!3643813 (= e!2255745 e!2255729)))

(declare-fun res!1477374 () Bool)

(assert (=> b!3643813 (=> (not res!1477374) (not e!2255729))))

(declare-fun lt!1262271 () Option!8113)

(declare-fun isDefined!6345 (Option!8113) Bool)

(assert (=> b!3643813 (= res!1477374 (isDefined!6345 lt!1262271))))

(assert (=> b!3643813 (= lt!1262271 (maxPrefix!2865 thiss!23823 rules!3307 lt!1262248))))

(assert (=> b!3643813 (= lt!1262248 (list!14224 (charsOf!3756 token!511)))))

(declare-fun tp!1111402 () Bool)

(declare-fun e!2255723 () Bool)

(declare-fun b!3643814 () Bool)

(declare-fun inv!51846 (String!43194) Bool)

(declare-fun inv!51849 (TokenValueInjection!11372) Bool)

(assert (=> b!3643814 (= e!2255723 (and tp!1111402 (inv!51846 (tag!6496 (h!43831 rules!3307))) (inv!51849 (transformation!5742 (h!43831 rules!3307))) e!2255743))))

(declare-fun e!2255737 () Bool)

(declare-fun tp!1111403 () Bool)

(declare-fun b!3643815 () Bool)

(assert (=> b!3643815 (= e!2255741 (and tp!1111403 (inv!51846 (tag!6496 (rule!8530 token!511))) (inv!51849 (transformation!5742 (rule!8530 token!511))) e!2255737))))

(assert (=> b!3643816 (= e!2255737 (and tp!1111396 tp!1111399))))

(declare-fun b!3643817 () Bool)

(declare-fun res!1477371 () Bool)

(assert (=> b!3643817 (=> res!1477371 e!2255748)))

(declare-fun anOtherTypeRule!33 () Rule!11284)

(declare-fun lt!1262266 () C!21188)

(assert (=> b!3643817 (= res!1477371 (not (contains!7549 (usedCharacters!954 (regex!5742 anOtherTypeRule!33)) lt!1262266)))))

(declare-fun b!3643818 () Bool)

(declare-fun res!1477382 () Bool)

(assert (=> b!3643818 (=> (not res!1477382) (not e!2255745))))

(declare-fun contains!7550 (List!38535 Rule!11284) Bool)

(assert (=> b!3643818 (= res!1477382 (contains!7550 rules!3307 rule!403))))

(declare-fun b!3643819 () Bool)

(declare-fun res!1477381 () Bool)

(assert (=> b!3643819 (=> res!1477381 e!2255742)))

(declare-fun lt!1262264 () Bool)

(assert (=> b!3643819 (= res!1477381 lt!1262264)))

(declare-fun b!3643820 () Bool)

(declare-fun res!1477377 () Bool)

(declare-fun e!2255750 () Bool)

(assert (=> b!3643820 (=> res!1477377 e!2255750)))

(declare-fun isEmpty!22748 (List!38534) Bool)

(assert (=> b!3643820 (= res!1477377 (isEmpty!22748 suffix!1395))))

(declare-fun b!3643821 () Bool)

(declare-fun e!2255740 () Bool)

(assert (=> b!3643821 (= e!2255731 e!2255740)))

(declare-fun res!1477373 () Bool)

(assert (=> b!3643821 (=> res!1477373 e!2255740)))

(declare-fun lt!1262267 () Option!8113)

(declare-fun lt!1262274 () List!38534)

(assert (=> b!3643821 (= res!1477373 (or (not (= lt!1262274 (_2!22274 lt!1262263))) (not (= lt!1262267 (Some!8112 (tuple2!38281 (_1!22274 lt!1262263) lt!1262274))))))))

(assert (=> b!3643821 (= (_2!22274 lt!1262263) lt!1262274)))

(declare-fun lt!1262253 () Unit!55280)

(declare-fun lemmaSamePrefixThenSameSuffix!1432 (List!38534 List!38534 List!38534 List!38534 List!38534) Unit!55280)

(assert (=> b!3643821 (= lt!1262253 (lemmaSamePrefixThenSameSuffix!1432 lt!1262256 (_2!22274 lt!1262263) lt!1262256 lt!1262274 lt!1262269))))

(declare-fun getSuffix!1658 (List!38534 List!38534) List!38534)

(assert (=> b!3643821 (= lt!1262274 (getSuffix!1658 lt!1262269 lt!1262256))))

(declare-fun lt!1262260 () TokenValue!5972)

(declare-fun lt!1262250 () Int)

(assert (=> b!3643821 (= lt!1262267 (Some!8112 (tuple2!38281 (Token!10851 lt!1262260 (rule!8530 (_1!22274 lt!1262263)) lt!1262250 lt!1262256) (_2!22274 lt!1262263))))))

(declare-fun maxPrefixOneRule!2003 (LexerInterface!5331 Rule!11284 List!38534) Option!8113)

(assert (=> b!3643821 (= lt!1262267 (maxPrefixOneRule!2003 thiss!23823 (rule!8530 (_1!22274 lt!1262263)) lt!1262269))))

(declare-fun size!29321 (List!38534) Int)

(assert (=> b!3643821 (= lt!1262250 (size!29321 lt!1262256))))

(assert (=> b!3643821 (= lt!1262260 (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) (seqFromList!4291 lt!1262256)))))

(declare-fun lt!1262255 () Unit!55280)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1059 (LexerInterface!5331 List!38535 List!38534 List!38534 List!38534 Rule!11284) Unit!55280)

(assert (=> b!3643821 (= lt!1262255 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1059 thiss!23823 rules!3307 lt!1262256 lt!1262269 (_2!22274 lt!1262263) (rule!8530 (_1!22274 lt!1262263))))))

(declare-fun b!3643822 () Bool)

(assert (=> b!3643822 (= e!2255750 e!2255748)))

(declare-fun res!1477368 () Bool)

(assert (=> b!3643822 (=> res!1477368 e!2255748)))

(declare-fun lt!1262262 () List!38534)

(assert (=> b!3643822 (= res!1477368 (contains!7549 lt!1262262 lt!1262266))))

(declare-fun head!7746 (List!38534) C!21188)

(assert (=> b!3643822 (= lt!1262266 (head!7746 suffix!1395))))

(assert (=> b!3643822 (= lt!1262262 (usedCharacters!954 (regex!5742 rule!403)))))

(declare-fun b!3643823 () Bool)

(declare-fun e!2255730 () Bool)

(declare-fun tp_is_empty!18085 () Bool)

(declare-fun tp!1111404 () Bool)

(assert (=> b!3643823 (= e!2255730 (and tp_is_empty!18085 tp!1111404))))

(declare-fun b!3643824 () Bool)

(declare-fun res!1477370 () Bool)

(assert (=> b!3643824 (=> res!1477370 e!2255748)))

(declare-fun sepAndNonSepRulesDisjointChars!1910 (List!38535 List!38535) Bool)

(assert (=> b!3643824 (= res!1477370 (not (sepAndNonSepRulesDisjointChars!1910 rules!3307 rules!3307)))))

(declare-fun b!3643825 () Bool)

(assert (=> b!3643825 (= e!2255749 e!2255739)))

(declare-fun res!1477389 () Bool)

(assert (=> b!3643825 (=> (not res!1477389) (not e!2255739))))

(assert (=> b!3643825 (= res!1477389 (matchR!5070 (regex!5742 lt!1262249) (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))))))

(declare-fun get!12594 (Option!8112) Rule!11284)

(assert (=> b!3643825 (= lt!1262249 (get!12594 lt!1262252))))

(declare-fun b!3643826 () Bool)

(declare-fun res!1477376 () Bool)

(declare-fun e!2255727 () Bool)

(assert (=> b!3643826 (=> (not res!1477376) (not e!2255727))))

(declare-fun lt!1262247 () tuple2!38280)

(assert (=> b!3643826 (= res!1477376 (isEmpty!22748 (_2!22274 lt!1262247)))))

(declare-fun b!3643827 () Bool)

(assert (=> b!3643827 (= e!2255727 (not e!2255750))))

(declare-fun res!1477367 () Bool)

(assert (=> b!3643827 (=> res!1477367 e!2255750)))

(assert (=> b!3643827 (= res!1477367 (not (matchR!5070 (regex!5742 rule!403) lt!1262248)))))

(declare-fun ruleValid!2006 (LexerInterface!5331 Rule!11284) Bool)

(assert (=> b!3643827 (ruleValid!2006 thiss!23823 rule!403)))

(declare-fun lt!1262258 () Unit!55280)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1160 (LexerInterface!5331 Rule!11284 List!38535) Unit!55280)

(assert (=> b!3643827 (= lt!1262258 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1160 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2255733 () Bool)

(declare-fun b!3643828 () Bool)

(declare-fun tp!1111407 () Bool)

(declare-fun e!2255744 () Bool)

(assert (=> b!3643828 (= e!2255744 (and tp!1111407 (inv!51846 (tag!6496 anOtherTypeRule!33)) (inv!51849 (transformation!5742 anOtherTypeRule!33)) e!2255733))))

(declare-fun res!1477387 () Bool)

(assert (=> start!340442 (=> (not res!1477387) (not e!2255745))))

(get-info :version)

(assert (=> start!340442 (= res!1477387 ((_ is Lexer!5329) thiss!23823))))

(assert (=> start!340442 e!2255745))

(declare-fun e!2255738 () Bool)

(assert (=> start!340442 e!2255738))

(assert (=> start!340442 e!2255730))

(assert (=> start!340442 true))

(declare-fun inv!51850 (Token!10850) Bool)

(assert (=> start!340442 (and (inv!51850 token!511) e!2255732)))

(declare-fun e!2255725 () Bool)

(assert (=> start!340442 e!2255725))

(assert (=> start!340442 e!2255744))

(declare-fun tp!1111405 () Bool)

(declare-fun b!3643807 () Bool)

(assert (=> b!3643807 (= e!2255725 (and tp!1111405 (inv!51846 (tag!6496 rule!403)) (inv!51849 (transformation!5742 rule!403)) e!2255724))))

(declare-fun b!3643829 () Bool)

(declare-fun e!2255734 () Unit!55280)

(declare-fun Unit!55282 () Unit!55280)

(assert (=> b!3643829 (= e!2255734 Unit!55282)))

(declare-fun b!3643830 () Bool)

(declare-fun tp!1111401 () Bool)

(assert (=> b!3643830 (= e!2255738 (and e!2255723 tp!1111401))))

(declare-fun b!3643831 () Bool)

(assert (=> b!3643831 (= e!2255740 e!2255742)))

(declare-fun res!1477380 () Bool)

(assert (=> b!3643831 (=> res!1477380 e!2255742)))

(assert (=> b!3643831 (= res!1477380 (or (isSeparator!5742 rule!403) (not (isSeparator!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(declare-fun lt!1262272 () Unit!55280)

(assert (=> b!3643831 (= lt!1262272 e!2255734)))

(declare-fun c!629925 () Bool)

(assert (=> b!3643831 (= c!629925 lt!1262264)))

(assert (=> b!3643831 (= lt!1262264 (not (contains!7549 lt!1262262 lt!1262259)))))

(assert (=> b!3643831 (= lt!1262259 (head!7746 lt!1262256))))

(declare-fun b!3643832 () Bool)

(declare-fun res!1477383 () Bool)

(assert (=> b!3643832 (=> (not res!1477383) (not e!2255745))))

(declare-fun isEmpty!22749 (List!38535) Bool)

(assert (=> b!3643832 (= res!1477383 (not (isEmpty!22749 rules!3307)))))

(declare-fun b!3643833 () Bool)

(assert (=> b!3643833 (= e!2255729 e!2255727)))

(declare-fun res!1477390 () Bool)

(assert (=> b!3643833 (=> (not res!1477390) (not e!2255727))))

(assert (=> b!3643833 (= res!1477390 (= (_1!22274 lt!1262247) token!511))))

(assert (=> b!3643833 (= lt!1262247 (get!12593 lt!1262271))))

(declare-fun b!3643834 () Bool)

(declare-fun Unit!55283 () Unit!55280)

(assert (=> b!3643834 (= e!2255734 Unit!55283)))

(declare-fun lt!1262246 () Unit!55280)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!690 (Regex!10501 List!38534 C!21188) Unit!55280)

(assert (=> b!3643834 (= lt!1262246 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!690 (regex!5742 rule!403) lt!1262248 lt!1262259))))

(assert (=> b!3643834 false))

(declare-fun b!3643835 () Bool)

(declare-fun res!1477385 () Bool)

(assert (=> b!3643835 (=> (not res!1477385) (not e!2255727))))

(assert (=> b!3643835 (= res!1477385 (= (rule!8530 token!511) rule!403))))

(declare-fun b!3643836 () Bool)

(declare-fun res!1477384 () Bool)

(assert (=> b!3643836 (=> (not res!1477384) (not e!2255745))))

(assert (=> b!3643836 (= res!1477384 (not (= (isSeparator!5742 anOtherTypeRule!33) (isSeparator!5742 rule!403))))))

(declare-fun b!3643837 () Bool)

(declare-fun res!1477372 () Bool)

(assert (=> b!3643837 (=> (not res!1477372) (not e!2255745))))

(assert (=> b!3643837 (= res!1477372 (contains!7550 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3643838 (= e!2255733 (and tp!1111410 tp!1111408))))

(assert (= (and start!340442 res!1477387) b!3643832))

(assert (= (and b!3643832 res!1477383) b!3643802))

(assert (= (and b!3643802 res!1477388) b!3643818))

(assert (= (and b!3643818 res!1477382) b!3643837))

(assert (= (and b!3643837 res!1477372) b!3643836))

(assert (= (and b!3643836 res!1477384) b!3643813))

(assert (= (and b!3643813 res!1477374) b!3643833))

(assert (= (and b!3643833 res!1477390) b!3643826))

(assert (= (and b!3643826 res!1477376) b!3643835))

(assert (= (and b!3643835 res!1477385) b!3643827))

(assert (= (and b!3643827 (not res!1477367)) b!3643820))

(assert (= (and b!3643820 (not res!1477377)) b!3643822))

(assert (= (and b!3643822 (not res!1477368)) b!3643817))

(assert (= (and b!3643817 (not res!1477371)) b!3643824))

(assert (= (and b!3643824 (not res!1477370)) b!3643811))

(assert (= (and b!3643811 res!1477375) b!3643825))

(assert (= (and b!3643825 res!1477389) b!3643804))

(assert (= (and b!3643811 (not res!1477379)) b!3643805))

(assert (= (and b!3643805 (not res!1477378)) b!3643812))

(assert (= (and b!3643812 (not res!1477369)) b!3643821))

(assert (= (and b!3643821 (not res!1477373)) b!3643831))

(assert (= (and b!3643831 c!629925) b!3643834))

(assert (= (and b!3643831 (not c!629925)) b!3643829))

(assert (= (and b!3643831 (not res!1477380)) b!3643806))

(assert (= (and b!3643806 (not res!1477386)) b!3643819))

(assert (= (and b!3643819 (not res!1477381)) b!3643810))

(assert (= b!3643814 b!3643803))

(assert (= b!3643830 b!3643814))

(assert (= (and start!340442 ((_ is Cons!38411) rules!3307)) b!3643830))

(assert (= (and start!340442 ((_ is Cons!38410) suffix!1395)) b!3643823))

(assert (= b!3643815 b!3643816))

(assert (= b!3643808 b!3643815))

(assert (= start!340442 b!3643808))

(assert (= b!3643807 b!3643809))

(assert (= start!340442 b!3643807))

(assert (= b!3643828 b!3643838))

(assert (= start!340442 b!3643828))

(declare-fun m!4147269 () Bool)

(assert (=> b!3643837 m!4147269))

(declare-fun m!4147271 () Bool)

(assert (=> b!3643834 m!4147271))

(declare-fun m!4147273 () Bool)

(assert (=> b!3643802 m!4147273))

(declare-fun m!4147275 () Bool)

(assert (=> b!3643831 m!4147275))

(declare-fun m!4147277 () Bool)

(assert (=> b!3643831 m!4147277))

(declare-fun m!4147279 () Bool)

(assert (=> b!3643822 m!4147279))

(declare-fun m!4147281 () Bool)

(assert (=> b!3643822 m!4147281))

(declare-fun m!4147283 () Bool)

(assert (=> b!3643822 m!4147283))

(declare-fun m!4147285 () Bool)

(assert (=> b!3643826 m!4147285))

(declare-fun m!4147287 () Bool)

(assert (=> b!3643815 m!4147287))

(declare-fun m!4147289 () Bool)

(assert (=> b!3643815 m!4147289))

(declare-fun m!4147291 () Bool)

(assert (=> b!3643814 m!4147291))

(declare-fun m!4147293 () Bool)

(assert (=> b!3643814 m!4147293))

(declare-fun m!4147295 () Bool)

(assert (=> b!3643821 m!4147295))

(declare-fun m!4147297 () Bool)

(assert (=> b!3643821 m!4147297))

(declare-fun m!4147299 () Bool)

(assert (=> b!3643821 m!4147299))

(declare-fun m!4147301 () Bool)

(assert (=> b!3643821 m!4147301))

(assert (=> b!3643821 m!4147301))

(declare-fun m!4147303 () Bool)

(assert (=> b!3643821 m!4147303))

(declare-fun m!4147305 () Bool)

(assert (=> b!3643821 m!4147305))

(declare-fun m!4147307 () Bool)

(assert (=> b!3643821 m!4147307))

(declare-fun m!4147309 () Bool)

(assert (=> b!3643825 m!4147309))

(assert (=> b!3643825 m!4147309))

(declare-fun m!4147311 () Bool)

(assert (=> b!3643825 m!4147311))

(assert (=> b!3643825 m!4147311))

(declare-fun m!4147313 () Bool)

(assert (=> b!3643825 m!4147313))

(declare-fun m!4147315 () Bool)

(assert (=> b!3643825 m!4147315))

(declare-fun m!4147317 () Bool)

(assert (=> b!3643808 m!4147317))

(declare-fun m!4147319 () Bool)

(assert (=> b!3643833 m!4147319))

(declare-fun m!4147321 () Bool)

(assert (=> b!3643807 m!4147321))

(declare-fun m!4147323 () Bool)

(assert (=> b!3643807 m!4147323))

(declare-fun m!4147325 () Bool)

(assert (=> b!3643828 m!4147325))

(declare-fun m!4147327 () Bool)

(assert (=> b!3643828 m!4147327))

(declare-fun m!4147329 () Bool)

(assert (=> b!3643827 m!4147329))

(declare-fun m!4147331 () Bool)

(assert (=> b!3643827 m!4147331))

(declare-fun m!4147333 () Bool)

(assert (=> b!3643827 m!4147333))

(declare-fun m!4147335 () Bool)

(assert (=> b!3643810 m!4147335))

(declare-fun m!4147337 () Bool)

(assert (=> b!3643810 m!4147337))

(assert (=> b!3643810 m!4147337))

(declare-fun m!4147339 () Bool)

(assert (=> b!3643810 m!4147339))

(declare-fun m!4147341 () Bool)

(assert (=> b!3643810 m!4147341))

(declare-fun m!4147343 () Bool)

(assert (=> b!3643818 m!4147343))

(declare-fun m!4147345 () Bool)

(assert (=> b!3643817 m!4147345))

(assert (=> b!3643817 m!4147345))

(declare-fun m!4147347 () Bool)

(assert (=> b!3643817 m!4147347))

(declare-fun m!4147349 () Bool)

(assert (=> b!3643805 m!4147349))

(declare-fun m!4147351 () Bool)

(assert (=> b!3643812 m!4147351))

(declare-fun m!4147353 () Bool)

(assert (=> b!3643812 m!4147353))

(declare-fun m!4147355 () Bool)

(assert (=> b!3643812 m!4147355))

(declare-fun m!4147357 () Bool)

(assert (=> b!3643812 m!4147357))

(declare-fun m!4147359 () Bool)

(assert (=> b!3643812 m!4147359))

(assert (=> b!3643812 m!4147359))

(declare-fun m!4147361 () Bool)

(assert (=> b!3643812 m!4147361))

(declare-fun m!4147363 () Bool)

(assert (=> start!340442 m!4147363))

(declare-fun m!4147365 () Bool)

(assert (=> b!3643832 m!4147365))

(declare-fun m!4147367 () Bool)

(assert (=> b!3643820 m!4147367))

(declare-fun m!4147369 () Bool)

(assert (=> b!3643806 m!4147369))

(declare-fun m!4147371 () Bool)

(assert (=> b!3643824 m!4147371))

(declare-fun m!4147373 () Bool)

(assert (=> b!3643813 m!4147373))

(declare-fun m!4147375 () Bool)

(assert (=> b!3643813 m!4147375))

(declare-fun m!4147377 () Bool)

(assert (=> b!3643813 m!4147377))

(assert (=> b!3643813 m!4147377))

(declare-fun m!4147379 () Bool)

(assert (=> b!3643813 m!4147379))

(declare-fun m!4147381 () Bool)

(assert (=> b!3643811 m!4147381))

(declare-fun m!4147383 () Bool)

(assert (=> b!3643811 m!4147383))

(assert (=> b!3643811 m!4147309))

(declare-fun m!4147385 () Bool)

(assert (=> b!3643811 m!4147385))

(declare-fun m!4147387 () Bool)

(assert (=> b!3643811 m!4147387))

(declare-fun m!4147389 () Bool)

(assert (=> b!3643811 m!4147389))

(declare-fun m!4147391 () Bool)

(assert (=> b!3643811 m!4147391))

(declare-fun m!4147393 () Bool)

(assert (=> b!3643811 m!4147393))

(declare-fun m!4147395 () Bool)

(assert (=> b!3643811 m!4147395))

(declare-fun m!4147397 () Bool)

(assert (=> b!3643811 m!4147397))

(declare-fun m!4147399 () Bool)

(assert (=> b!3643811 m!4147399))

(declare-fun m!4147401 () Bool)

(assert (=> b!3643811 m!4147401))

(assert (=> b!3643811 m!4147389))

(declare-fun m!4147403 () Bool)

(assert (=> b!3643811 m!4147403))

(declare-fun m!4147405 () Bool)

(assert (=> b!3643811 m!4147405))

(declare-fun m!4147407 () Bool)

(assert (=> b!3643811 m!4147407))

(check-sat (not b!3643817) (not b!3643830) b_and!268875 (not b!3643807) (not b!3643833) (not b!3643812) b_and!268881 (not b_next!96333) (not b!3643820) (not b!3643832) (not b!3643824) (not b_next!96323) (not b!3643827) (not b!3643818) (not b!3643815) (not b_next!96329) (not b_next!96331) (not b!3643831) (not b!3643805) b_and!268885 (not b!3643811) (not b!3643814) (not b!3643825) b_and!268887 b_and!268879 (not b_next!96325) tp_is_empty!18085 (not b!3643802) b_and!268877 (not b!3643822) (not b_next!96335) (not b_next!96327) (not start!340442) (not b!3643810) b_and!268889 (not b!3643806) (not b!3643813) (not b!3643808) (not b!3643828) (not b!3643826) (not b!3643823) (not b!3643821) (not b!3643837) (not b!3643834) (not b_next!96321) b_and!268883)
(check-sat (not b_next!96323) (not b_next!96329) (not b_next!96331) b_and!268885 b_and!268875 b_and!268881 (not b_next!96333) b_and!268887 b_and!268879 (not b_next!96325) (not b_next!96335) b_and!268877 (not b_next!96327) b_and!268889 (not b_next!96321) b_and!268883)
(get-model)

(declare-fun b!3643942 () Bool)

(declare-fun e!2255803 () Bool)

(declare-fun e!2255802 () Bool)

(assert (=> b!3643942 (= e!2255803 e!2255802)))

(declare-fun res!1477475 () Bool)

(assert (=> b!3643942 (=> (not res!1477475) (not e!2255802))))

(declare-fun lt!1262301 () Bool)

(assert (=> b!3643942 (= res!1477475 (not lt!1262301))))

(declare-fun b!3643943 () Bool)

(declare-fun res!1477472 () Bool)

(assert (=> b!3643943 (=> res!1477472 e!2255803)))

(declare-fun e!2255798 () Bool)

(assert (=> b!3643943 (= res!1477472 e!2255798)))

(declare-fun res!1477470 () Bool)

(assert (=> b!3643943 (=> (not res!1477470) (not e!2255798))))

(assert (=> b!3643943 (= res!1477470 lt!1262301)))

(declare-fun b!3643944 () Bool)

(assert (=> b!3643944 (= e!2255798 (= (head!7746 lt!1262256) (c!629926 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(declare-fun b!3643945 () Bool)

(declare-fun e!2255799 () Bool)

(declare-fun nullable!3647 (Regex!10501) Bool)

(assert (=> b!3643945 (= e!2255799 (nullable!3647 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun b!3643946 () Bool)

(declare-fun res!1477474 () Bool)

(assert (=> b!3643946 (=> (not res!1477474) (not e!2255798))))

(declare-fun call!263339 () Bool)

(assert (=> b!3643946 (= res!1477474 (not call!263339))))

(declare-fun b!3643947 () Bool)

(declare-fun e!2255800 () Bool)

(declare-fun e!2255801 () Bool)

(assert (=> b!3643947 (= e!2255800 e!2255801)))

(declare-fun c!629947 () Bool)

(assert (=> b!3643947 (= c!629947 ((_ is EmptyLang!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun d!1071168 () Bool)

(assert (=> d!1071168 e!2255800))

(declare-fun c!629949 () Bool)

(assert (=> d!1071168 (= c!629949 ((_ is EmptyExpr!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(assert (=> d!1071168 (= lt!1262301 e!2255799)))

(declare-fun c!629948 () Bool)

(assert (=> d!1071168 (= c!629948 (isEmpty!22748 lt!1262256))))

(assert (=> d!1071168 (validRegex!4809 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))

(assert (=> d!1071168 (= (matchR!5070 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262256) lt!1262301)))

(declare-fun b!3643948 () Bool)

(assert (=> b!3643948 (= e!2255801 (not lt!1262301))))

(declare-fun b!3643949 () Bool)

(declare-fun e!2255804 () Bool)

(assert (=> b!3643949 (= e!2255804 (not (= (head!7746 lt!1262256) (c!629926 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))))

(declare-fun b!3643950 () Bool)

(declare-fun derivativeStep!3196 (Regex!10501 C!21188) Regex!10501)

(declare-fun tail!5645 (List!38534) List!38534)

(assert (=> b!3643950 (= e!2255799 (matchR!5070 (derivativeStep!3196 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) (head!7746 lt!1262256)) (tail!5645 lt!1262256)))))

(declare-fun b!3643951 () Bool)

(assert (=> b!3643951 (= e!2255802 e!2255804)))

(declare-fun res!1477469 () Bool)

(assert (=> b!3643951 (=> res!1477469 e!2255804)))

(assert (=> b!3643951 (= res!1477469 call!263339)))

(declare-fun b!3643952 () Bool)

(declare-fun res!1477476 () Bool)

(assert (=> b!3643952 (=> res!1477476 e!2255803)))

(assert (=> b!3643952 (= res!1477476 (not ((_ is ElementMatch!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(assert (=> b!3643952 (= e!2255801 e!2255803)))

(declare-fun bm!263334 () Bool)

(assert (=> bm!263334 (= call!263339 (isEmpty!22748 lt!1262256))))

(declare-fun b!3643953 () Bool)

(declare-fun res!1477471 () Bool)

(assert (=> b!3643953 (=> (not res!1477471) (not e!2255798))))

(assert (=> b!3643953 (= res!1477471 (isEmpty!22748 (tail!5645 lt!1262256)))))

(declare-fun b!3643954 () Bool)

(declare-fun res!1477473 () Bool)

(assert (=> b!3643954 (=> res!1477473 e!2255804)))

(assert (=> b!3643954 (= res!1477473 (not (isEmpty!22748 (tail!5645 lt!1262256))))))

(declare-fun b!3643955 () Bool)

(assert (=> b!3643955 (= e!2255800 (= lt!1262301 call!263339))))

(assert (= (and d!1071168 c!629948) b!3643945))

(assert (= (and d!1071168 (not c!629948)) b!3643950))

(assert (= (and d!1071168 c!629949) b!3643955))

(assert (= (and d!1071168 (not c!629949)) b!3643947))

(assert (= (and b!3643947 c!629947) b!3643948))

(assert (= (and b!3643947 (not c!629947)) b!3643952))

(assert (= (and b!3643952 (not res!1477476)) b!3643943))

(assert (= (and b!3643943 res!1477470) b!3643946))

(assert (= (and b!3643946 res!1477474) b!3643953))

(assert (= (and b!3643953 res!1477471) b!3643944))

(assert (= (and b!3643943 (not res!1477472)) b!3643942))

(assert (= (and b!3643942 res!1477475) b!3643951))

(assert (= (and b!3643951 (not res!1477469)) b!3643954))

(assert (= (and b!3643954 (not res!1477473)) b!3643949))

(assert (= (or b!3643955 b!3643946 b!3643951) bm!263334))

(declare-fun m!4147465 () Bool)

(assert (=> b!3643945 m!4147465))

(declare-fun m!4147467 () Bool)

(assert (=> b!3643953 m!4147467))

(assert (=> b!3643953 m!4147467))

(declare-fun m!4147469 () Bool)

(assert (=> b!3643953 m!4147469))

(assert (=> b!3643950 m!4147277))

(assert (=> b!3643950 m!4147277))

(declare-fun m!4147471 () Bool)

(assert (=> b!3643950 m!4147471))

(assert (=> b!3643950 m!4147467))

(assert (=> b!3643950 m!4147471))

(assert (=> b!3643950 m!4147467))

(declare-fun m!4147475 () Bool)

(assert (=> b!3643950 m!4147475))

(declare-fun m!4147477 () Bool)

(assert (=> bm!263334 m!4147477))

(assert (=> b!3643954 m!4147467))

(assert (=> b!3643954 m!4147467))

(assert (=> b!3643954 m!4147469))

(assert (=> d!1071168 m!4147477))

(assert (=> d!1071168 m!4147335))

(assert (=> b!3643949 m!4147277))

(assert (=> b!3643944 m!4147277))

(assert (=> b!3643805 d!1071168))

(declare-fun d!1071174 () Bool)

(assert (=> d!1071174 (= (isEmpty!22748 (_2!22274 lt!1262247)) ((_ is Nil!38410) (_2!22274 lt!1262247)))))

(assert (=> b!3643826 d!1071174))

(declare-fun d!1071176 () Bool)

(assert (=> d!1071176 (= (inv!51846 (tag!6496 anOtherTypeRule!33)) (= (mod (str.len (value!184106 (tag!6496 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3643828 d!1071176))

(declare-fun d!1071178 () Bool)

(declare-fun res!1477486 () Bool)

(declare-fun e!2255815 () Bool)

(assert (=> d!1071178 (=> (not res!1477486) (not e!2255815))))

(declare-fun semiInverseModEq!2447 (Int Int) Bool)

(assert (=> d!1071178 (= res!1477486 (semiInverseModEq!2447 (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toValue!8034 (transformation!5742 anOtherTypeRule!33))))))

(assert (=> d!1071178 (= (inv!51849 (transformation!5742 anOtherTypeRule!33)) e!2255815)))

(declare-fun b!3643970 () Bool)

(declare-fun equivClasses!2346 (Int Int) Bool)

(assert (=> b!3643970 (= e!2255815 (equivClasses!2346 (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toValue!8034 (transformation!5742 anOtherTypeRule!33))))))

(assert (= (and d!1071178 res!1477486) b!3643970))

(declare-fun m!4147491 () Bool)

(assert (=> d!1071178 m!4147491))

(declare-fun m!4147493 () Bool)

(assert (=> b!3643970 m!4147493))

(assert (=> b!3643828 d!1071178))

(declare-fun b!3643971 () Bool)

(declare-fun e!2255821 () Bool)

(declare-fun e!2255820 () Bool)

(assert (=> b!3643971 (= e!2255821 e!2255820)))

(declare-fun res!1477493 () Bool)

(assert (=> b!3643971 (=> (not res!1477493) (not e!2255820))))

(declare-fun lt!1262305 () Bool)

(assert (=> b!3643971 (= res!1477493 (not lt!1262305))))

(declare-fun b!3643972 () Bool)

(declare-fun res!1477490 () Bool)

(assert (=> b!3643972 (=> res!1477490 e!2255821)))

(declare-fun e!2255816 () Bool)

(assert (=> b!3643972 (= res!1477490 e!2255816)))

(declare-fun res!1477488 () Bool)

(assert (=> b!3643972 (=> (not res!1477488) (not e!2255816))))

(assert (=> b!3643972 (= res!1477488 lt!1262305)))

(declare-fun b!3643973 () Bool)

(assert (=> b!3643973 (= e!2255816 (= (head!7746 lt!1262248) (c!629926 (regex!5742 rule!403))))))

(declare-fun b!3643974 () Bool)

(declare-fun e!2255817 () Bool)

(assert (=> b!3643974 (= e!2255817 (nullable!3647 (regex!5742 rule!403)))))

(declare-fun b!3643975 () Bool)

(declare-fun res!1477492 () Bool)

(assert (=> b!3643975 (=> (not res!1477492) (not e!2255816))))

(declare-fun call!263340 () Bool)

(assert (=> b!3643975 (= res!1477492 (not call!263340))))

(declare-fun b!3643976 () Bool)

(declare-fun e!2255818 () Bool)

(declare-fun e!2255819 () Bool)

(assert (=> b!3643976 (= e!2255818 e!2255819)))

(declare-fun c!629950 () Bool)

(assert (=> b!3643976 (= c!629950 ((_ is EmptyLang!10501) (regex!5742 rule!403)))))

(declare-fun d!1071190 () Bool)

(assert (=> d!1071190 e!2255818))

(declare-fun c!629952 () Bool)

(assert (=> d!1071190 (= c!629952 ((_ is EmptyExpr!10501) (regex!5742 rule!403)))))

(assert (=> d!1071190 (= lt!1262305 e!2255817)))

(declare-fun c!629951 () Bool)

(assert (=> d!1071190 (= c!629951 (isEmpty!22748 lt!1262248))))

(assert (=> d!1071190 (validRegex!4809 (regex!5742 rule!403))))

(assert (=> d!1071190 (= (matchR!5070 (regex!5742 rule!403) lt!1262248) lt!1262305)))

(declare-fun b!3643977 () Bool)

(assert (=> b!3643977 (= e!2255819 (not lt!1262305))))

(declare-fun b!3643978 () Bool)

(declare-fun e!2255822 () Bool)

(assert (=> b!3643978 (= e!2255822 (not (= (head!7746 lt!1262248) (c!629926 (regex!5742 rule!403)))))))

(declare-fun b!3643979 () Bool)

(assert (=> b!3643979 (= e!2255817 (matchR!5070 (derivativeStep!3196 (regex!5742 rule!403) (head!7746 lt!1262248)) (tail!5645 lt!1262248)))))

(declare-fun b!3643980 () Bool)

(assert (=> b!3643980 (= e!2255820 e!2255822)))

(declare-fun res!1477487 () Bool)

(assert (=> b!3643980 (=> res!1477487 e!2255822)))

(assert (=> b!3643980 (= res!1477487 call!263340)))

(declare-fun b!3643981 () Bool)

(declare-fun res!1477494 () Bool)

(assert (=> b!3643981 (=> res!1477494 e!2255821)))

(assert (=> b!3643981 (= res!1477494 (not ((_ is ElementMatch!10501) (regex!5742 rule!403))))))

(assert (=> b!3643981 (= e!2255819 e!2255821)))

(declare-fun bm!263335 () Bool)

(assert (=> bm!263335 (= call!263340 (isEmpty!22748 lt!1262248))))

(declare-fun b!3643982 () Bool)

(declare-fun res!1477489 () Bool)

(assert (=> b!3643982 (=> (not res!1477489) (not e!2255816))))

(assert (=> b!3643982 (= res!1477489 (isEmpty!22748 (tail!5645 lt!1262248)))))

(declare-fun b!3643983 () Bool)

(declare-fun res!1477491 () Bool)

(assert (=> b!3643983 (=> res!1477491 e!2255822)))

(assert (=> b!3643983 (= res!1477491 (not (isEmpty!22748 (tail!5645 lt!1262248))))))

(declare-fun b!3643984 () Bool)

(assert (=> b!3643984 (= e!2255818 (= lt!1262305 call!263340))))

(assert (= (and d!1071190 c!629951) b!3643974))

(assert (= (and d!1071190 (not c!629951)) b!3643979))

(assert (= (and d!1071190 c!629952) b!3643984))

(assert (= (and d!1071190 (not c!629952)) b!3643976))

(assert (= (and b!3643976 c!629950) b!3643977))

(assert (= (and b!3643976 (not c!629950)) b!3643981))

(assert (= (and b!3643981 (not res!1477494)) b!3643972))

(assert (= (and b!3643972 res!1477488) b!3643975))

(assert (= (and b!3643975 res!1477492) b!3643982))

(assert (= (and b!3643982 res!1477489) b!3643973))

(assert (= (and b!3643972 (not res!1477490)) b!3643971))

(assert (= (and b!3643971 res!1477493) b!3643980))

(assert (= (and b!3643980 (not res!1477487)) b!3643983))

(assert (= (and b!3643983 (not res!1477491)) b!3643978))

(assert (= (or b!3643984 b!3643975 b!3643980) bm!263335))

(declare-fun m!4147501 () Bool)

(assert (=> b!3643974 m!4147501))

(declare-fun m!4147503 () Bool)

(assert (=> b!3643982 m!4147503))

(assert (=> b!3643982 m!4147503))

(declare-fun m!4147505 () Bool)

(assert (=> b!3643982 m!4147505))

(declare-fun m!4147507 () Bool)

(assert (=> b!3643979 m!4147507))

(assert (=> b!3643979 m!4147507))

(declare-fun m!4147509 () Bool)

(assert (=> b!3643979 m!4147509))

(assert (=> b!3643979 m!4147503))

(assert (=> b!3643979 m!4147509))

(assert (=> b!3643979 m!4147503))

(declare-fun m!4147511 () Bool)

(assert (=> b!3643979 m!4147511))

(declare-fun m!4147513 () Bool)

(assert (=> bm!263335 m!4147513))

(assert (=> b!3643983 m!4147503))

(assert (=> b!3643983 m!4147503))

(assert (=> b!3643983 m!4147505))

(assert (=> d!1071190 m!4147513))

(declare-fun m!4147515 () Bool)

(assert (=> d!1071190 m!4147515))

(assert (=> b!3643978 m!4147507))

(assert (=> b!3643973 m!4147507))

(assert (=> b!3643827 d!1071190))

(declare-fun d!1071194 () Bool)

(declare-fun res!1477515 () Bool)

(declare-fun e!2255840 () Bool)

(assert (=> d!1071194 (=> (not res!1477515) (not e!2255840))))

(assert (=> d!1071194 (= res!1477515 (validRegex!4809 (regex!5742 rule!403)))))

(assert (=> d!1071194 (= (ruleValid!2006 thiss!23823 rule!403) e!2255840)))

(declare-fun b!3644005 () Bool)

(declare-fun res!1477516 () Bool)

(assert (=> b!3644005 (=> (not res!1477516) (not e!2255840))))

(assert (=> b!3644005 (= res!1477516 (not (nullable!3647 (regex!5742 rule!403))))))

(declare-fun b!3644006 () Bool)

(assert (=> b!3644006 (= e!2255840 (not (= (tag!6496 rule!403) (String!43195 ""))))))

(assert (= (and d!1071194 res!1477515) b!3644005))

(assert (= (and b!3644005 res!1477516) b!3644006))

(assert (=> d!1071194 m!4147515))

(assert (=> b!3644005 m!4147501))

(assert (=> b!3643827 d!1071194))

(declare-fun d!1071204 () Bool)

(assert (=> d!1071204 (ruleValid!2006 thiss!23823 rule!403)))

(declare-fun lt!1262316 () Unit!55280)

(declare-fun choose!21441 (LexerInterface!5331 Rule!11284 List!38535) Unit!55280)

(assert (=> d!1071204 (= lt!1262316 (choose!21441 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1071204 (contains!7550 rules!3307 rule!403)))

(assert (=> d!1071204 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1160 thiss!23823 rule!403 rules!3307) lt!1262316)))

(declare-fun bs!572032 () Bool)

(assert (= bs!572032 d!1071204))

(assert (=> bs!572032 m!4147331))

(declare-fun m!4147545 () Bool)

(assert (=> bs!572032 m!4147545))

(assert (=> bs!572032 m!4147343))

(assert (=> b!3643827 d!1071204))

(declare-fun d!1071212 () Bool)

(declare-fun lt!1262321 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5534 (List!38534) (InoxSet C!21188))

(assert (=> d!1071212 (= lt!1262321 (select (content!5534 lt!1262248) lt!1262259))))

(declare-fun e!2255872 () Bool)

(assert (=> d!1071212 (= lt!1262321 e!2255872)))

(declare-fun res!1477530 () Bool)

(assert (=> d!1071212 (=> (not res!1477530) (not e!2255872))))

(assert (=> d!1071212 (= res!1477530 ((_ is Cons!38410) lt!1262248))))

(assert (=> d!1071212 (= (contains!7549 lt!1262248 lt!1262259) lt!1262321)))

(declare-fun b!3644056 () Bool)

(declare-fun e!2255873 () Bool)

(assert (=> b!3644056 (= e!2255872 e!2255873)))

(declare-fun res!1477531 () Bool)

(assert (=> b!3644056 (=> res!1477531 e!2255873)))

(assert (=> b!3644056 (= res!1477531 (= (h!43830 lt!1262248) lt!1262259))))

(declare-fun b!3644057 () Bool)

(assert (=> b!3644057 (= e!2255873 (contains!7549 (t!296797 lt!1262248) lt!1262259))))

(assert (= (and d!1071212 res!1477530) b!3644056))

(assert (= (and b!3644056 (not res!1477531)) b!3644057))

(declare-fun m!4147563 () Bool)

(assert (=> d!1071212 m!4147563))

(declare-fun m!4147565 () Bool)

(assert (=> d!1071212 m!4147565))

(declare-fun m!4147567 () Bool)

(assert (=> b!3644057 m!4147567))

(assert (=> b!3643806 d!1071212))

(declare-fun b!3644113 () Bool)

(declare-fun e!2255912 () Bool)

(declare-fun e!2255911 () Bool)

(assert (=> b!3644113 (= e!2255912 e!2255911)))

(declare-fun c!629990 () Bool)

(assert (=> b!3644113 (= c!629990 ((_ is IntegerValue!17917) (value!184107 token!511)))))

(declare-fun b!3644115 () Bool)

(declare-fun inv!16 (TokenValue!5972) Bool)

(assert (=> b!3644115 (= e!2255912 (inv!16 (value!184107 token!511)))))

(declare-fun b!3644116 () Bool)

(declare-fun inv!17 (TokenValue!5972) Bool)

(assert (=> b!3644116 (= e!2255911 (inv!17 (value!184107 token!511)))))

(declare-fun b!3644117 () Bool)

(declare-fun res!1477551 () Bool)

(declare-fun e!2255913 () Bool)

(assert (=> b!3644117 (=> res!1477551 e!2255913)))

(assert (=> b!3644117 (= res!1477551 (not ((_ is IntegerValue!17918) (value!184107 token!511))))))

(assert (=> b!3644117 (= e!2255911 e!2255913)))

(declare-fun d!1071224 () Bool)

(declare-fun c!629989 () Bool)

(assert (=> d!1071224 (= c!629989 ((_ is IntegerValue!17916) (value!184107 token!511)))))

(assert (=> d!1071224 (= (inv!21 (value!184107 token!511)) e!2255912)))

(declare-fun b!3644114 () Bool)

(declare-fun inv!15 (TokenValue!5972) Bool)

(assert (=> b!3644114 (= e!2255913 (inv!15 (value!184107 token!511)))))

(assert (= (and d!1071224 c!629989) b!3644115))

(assert (= (and d!1071224 (not c!629989)) b!3644113))

(assert (= (and b!3644113 c!629990) b!3644116))

(assert (= (and b!3644113 (not c!629990)) b!3644117))

(assert (= (and b!3644117 (not res!1477551)) b!3644114))

(declare-fun m!4147593 () Bool)

(assert (=> b!3644115 m!4147593))

(declare-fun m!4147595 () Bool)

(assert (=> b!3644116 m!4147595))

(declare-fun m!4147597 () Bool)

(assert (=> b!3644114 m!4147597))

(assert (=> b!3643808 d!1071224))

(declare-fun d!1071234 () Bool)

(assert (=> d!1071234 (= (inv!51846 (tag!6496 rule!403)) (= (mod (str.len (value!184106 (tag!6496 rule!403))) 2) 0))))

(assert (=> b!3643807 d!1071234))

(declare-fun d!1071236 () Bool)

(declare-fun res!1477552 () Bool)

(declare-fun e!2255914 () Bool)

(assert (=> d!1071236 (=> (not res!1477552) (not e!2255914))))

(assert (=> d!1071236 (= res!1477552 (semiInverseModEq!2447 (toChars!7893 (transformation!5742 rule!403)) (toValue!8034 (transformation!5742 rule!403))))))

(assert (=> d!1071236 (= (inv!51849 (transformation!5742 rule!403)) e!2255914)))

(declare-fun b!3644118 () Bool)

(assert (=> b!3644118 (= e!2255914 (equivClasses!2346 (toChars!7893 (transformation!5742 rule!403)) (toValue!8034 (transformation!5742 rule!403))))))

(assert (= (and d!1071236 res!1477552) b!3644118))

(declare-fun m!4147599 () Bool)

(assert (=> d!1071236 m!4147599))

(declare-fun m!4147601 () Bool)

(assert (=> b!3644118 m!4147601))

(assert (=> b!3643807 d!1071236))

(declare-fun b!3644161 () Bool)

(declare-fun res!1477587 () Bool)

(declare-fun e!2255941 () Bool)

(assert (=> b!3644161 (=> (not res!1477587) (not e!2255941))))

(declare-fun lt!1262339 () Option!8113)

(assert (=> b!3644161 (= res!1477587 (< (size!29321 (_2!22274 (get!12593 lt!1262339))) (size!29321 lt!1262269)))))

(declare-fun b!3644162 () Bool)

(declare-fun e!2255940 () Bool)

(declare-datatypes ((tuple2!38282 0))(
  ( (tuple2!38283 (_1!22275 List!38534) (_2!22275 List!38534)) )
))
(declare-fun findLongestMatchInner!1042 (Regex!10501 List!38534 Int List!38534 List!38534 Int) tuple2!38282)

(assert (=> b!3644162 (= e!2255940 (matchR!5070 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) (_1!22275 (findLongestMatchInner!1042 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) Nil!38410 (size!29321 Nil!38410) lt!1262269 lt!1262269 (size!29321 lt!1262269)))))))

(declare-fun b!3644163 () Bool)

(assert (=> b!3644163 (= e!2255941 (= (size!29319 (_1!22274 (get!12593 lt!1262339))) (size!29321 (originalCharacters!6456 (_1!22274 (get!12593 lt!1262339))))))))

(declare-fun b!3644164 () Bool)

(declare-fun e!2255942 () Option!8113)

(assert (=> b!3644164 (= e!2255942 None!8112)))

(declare-fun b!3644165 () Bool)

(declare-fun res!1477590 () Bool)

(assert (=> b!3644165 (=> (not res!1477590) (not e!2255941))))

(assert (=> b!3644165 (= res!1477590 (= (value!184107 (_1!22274 (get!12593 lt!1262339))) (apply!9244 (transformation!5742 (rule!8530 (_1!22274 (get!12593 lt!1262339)))) (seqFromList!4291 (originalCharacters!6456 (_1!22274 (get!12593 lt!1262339)))))))))

(declare-fun d!1071238 () Bool)

(declare-fun e!2255943 () Bool)

(assert (=> d!1071238 e!2255943))

(declare-fun res!1477589 () Bool)

(assert (=> d!1071238 (=> res!1477589 e!2255943)))

(declare-fun isEmpty!22751 (Option!8113) Bool)

(assert (=> d!1071238 (= res!1477589 (isEmpty!22751 lt!1262339))))

(assert (=> d!1071238 (= lt!1262339 e!2255942)))

(declare-fun c!629998 () Bool)

(declare-fun lt!1262342 () tuple2!38282)

(assert (=> d!1071238 (= c!629998 (isEmpty!22748 (_1!22275 lt!1262342)))))

(declare-fun findLongestMatch!957 (Regex!10501 List!38534) tuple2!38282)

(assert (=> d!1071238 (= lt!1262342 (findLongestMatch!957 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262269))))

(assert (=> d!1071238 (ruleValid!2006 thiss!23823 (rule!8530 (_1!22274 lt!1262263)))))

(assert (=> d!1071238 (= (maxPrefixOneRule!2003 thiss!23823 (rule!8530 (_1!22274 lt!1262263)) lt!1262269) lt!1262339)))

(declare-fun b!3644166 () Bool)

(declare-fun res!1477585 () Bool)

(assert (=> b!3644166 (=> (not res!1477585) (not e!2255941))))

(assert (=> b!3644166 (= res!1477585 (= (++!9558 (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262339)))) (_2!22274 (get!12593 lt!1262339))) lt!1262269))))

(declare-fun b!3644167 () Bool)

(declare-fun res!1477588 () Bool)

(assert (=> b!3644167 (=> (not res!1477588) (not e!2255941))))

(assert (=> b!3644167 (= res!1477588 (= (rule!8530 (_1!22274 (get!12593 lt!1262339))) (rule!8530 (_1!22274 lt!1262263))))))

(declare-fun b!3644168 () Bool)

(assert (=> b!3644168 (= e!2255942 (Some!8112 (tuple2!38281 (Token!10851 (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) (seqFromList!4291 (_1!22275 lt!1262342))) (rule!8530 (_1!22274 lt!1262263)) (size!29320 (seqFromList!4291 (_1!22275 lt!1262342))) (_1!22275 lt!1262342)) (_2!22275 lt!1262342))))))

(declare-fun lt!1262341 () Unit!55280)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1015 (Regex!10501 List!38534) Unit!55280)

(assert (=> b!3644168 (= lt!1262341 (longestMatchIsAcceptedByMatchOrIsEmpty!1015 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262269))))

(declare-fun res!1477591 () Bool)

(assert (=> b!3644168 (= res!1477591 (isEmpty!22748 (_1!22275 (findLongestMatchInner!1042 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) Nil!38410 (size!29321 Nil!38410) lt!1262269 lt!1262269 (size!29321 lt!1262269)))))))

(assert (=> b!3644168 (=> res!1477591 e!2255940)))

(assert (=> b!3644168 e!2255940))

(declare-fun lt!1262340 () Unit!55280)

(assert (=> b!3644168 (= lt!1262340 lt!1262341)))

(declare-fun lt!1262343 () Unit!55280)

(assert (=> b!3644168 (= lt!1262343 (lemmaSemiInverse!1491 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) (seqFromList!4291 (_1!22275 lt!1262342))))))

(declare-fun b!3644169 () Bool)

(assert (=> b!3644169 (= e!2255943 e!2255941)))

(declare-fun res!1477586 () Bool)

(assert (=> b!3644169 (=> (not res!1477586) (not e!2255941))))

(assert (=> b!3644169 (= res!1477586 (matchR!5070 (regex!5742 (rule!8530 (_1!22274 lt!1262263))) (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262339))))))))

(assert (= (and d!1071238 c!629998) b!3644164))

(assert (= (and d!1071238 (not c!629998)) b!3644168))

(assert (= (and b!3644168 (not res!1477591)) b!3644162))

(assert (= (and d!1071238 (not res!1477589)) b!3644169))

(assert (= (and b!3644169 res!1477586) b!3644166))

(assert (= (and b!3644166 res!1477585) b!3644161))

(assert (= (and b!3644161 res!1477587) b!3644167))

(assert (= (and b!3644167 res!1477588) b!3644165))

(assert (= (and b!3644165 res!1477590) b!3644163))

(declare-fun m!4147631 () Bool)

(assert (=> b!3644162 m!4147631))

(declare-fun m!4147633 () Bool)

(assert (=> b!3644162 m!4147633))

(assert (=> b!3644162 m!4147631))

(assert (=> b!3644162 m!4147633))

(declare-fun m!4147635 () Bool)

(assert (=> b!3644162 m!4147635))

(declare-fun m!4147637 () Bool)

(assert (=> b!3644162 m!4147637))

(declare-fun m!4147639 () Bool)

(assert (=> b!3644169 m!4147639))

(declare-fun m!4147641 () Bool)

(assert (=> b!3644169 m!4147641))

(assert (=> b!3644169 m!4147641))

(declare-fun m!4147643 () Bool)

(assert (=> b!3644169 m!4147643))

(assert (=> b!3644169 m!4147643))

(declare-fun m!4147645 () Bool)

(assert (=> b!3644169 m!4147645))

(assert (=> b!3644165 m!4147639))

(declare-fun m!4147647 () Bool)

(assert (=> b!3644165 m!4147647))

(assert (=> b!3644165 m!4147647))

(declare-fun m!4147649 () Bool)

(assert (=> b!3644165 m!4147649))

(assert (=> b!3644163 m!4147639))

(declare-fun m!4147651 () Bool)

(assert (=> b!3644163 m!4147651))

(declare-fun m!4147653 () Bool)

(assert (=> d!1071238 m!4147653))

(declare-fun m!4147655 () Bool)

(assert (=> d!1071238 m!4147655))

(declare-fun m!4147657 () Bool)

(assert (=> d!1071238 m!4147657))

(declare-fun m!4147659 () Bool)

(assert (=> d!1071238 m!4147659))

(assert (=> b!3644168 m!4147631))

(assert (=> b!3644168 m!4147633))

(assert (=> b!3644168 m!4147635))

(declare-fun m!4147661 () Bool)

(assert (=> b!3644168 m!4147661))

(declare-fun m!4147663 () Bool)

(assert (=> b!3644168 m!4147663))

(assert (=> b!3644168 m!4147661))

(declare-fun m!4147665 () Bool)

(assert (=> b!3644168 m!4147665))

(assert (=> b!3644168 m!4147633))

(assert (=> b!3644168 m!4147631))

(assert (=> b!3644168 m!4147661))

(declare-fun m!4147667 () Bool)

(assert (=> b!3644168 m!4147667))

(declare-fun m!4147669 () Bool)

(assert (=> b!3644168 m!4147669))

(assert (=> b!3644168 m!4147661))

(declare-fun m!4147671 () Bool)

(assert (=> b!3644168 m!4147671))

(assert (=> b!3644167 m!4147639))

(assert (=> b!3644166 m!4147639))

(assert (=> b!3644166 m!4147641))

(assert (=> b!3644166 m!4147641))

(assert (=> b!3644166 m!4147643))

(assert (=> b!3644166 m!4147643))

(declare-fun m!4147673 () Bool)

(assert (=> b!3644166 m!4147673))

(assert (=> b!3644161 m!4147639))

(declare-fun m!4147675 () Bool)

(assert (=> b!3644161 m!4147675))

(assert (=> b!3644161 m!4147633))

(assert (=> b!3643821 d!1071238))

(declare-fun d!1071254 () Bool)

(assert (=> d!1071254 (= (maxPrefixOneRule!2003 thiss!23823 (rule!8530 (_1!22274 lt!1262263)) lt!1262269) (Some!8112 (tuple2!38281 (Token!10851 (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) (seqFromList!4291 lt!1262256)) (rule!8530 (_1!22274 lt!1262263)) (size!29321 lt!1262256) lt!1262256) (_2!22274 lt!1262263))))))

(declare-fun lt!1262346 () Unit!55280)

(declare-fun choose!21443 (LexerInterface!5331 List!38535 List!38534 List!38534 List!38534 Rule!11284) Unit!55280)

(assert (=> d!1071254 (= lt!1262346 (choose!21443 thiss!23823 rules!3307 lt!1262256 lt!1262269 (_2!22274 lt!1262263) (rule!8530 (_1!22274 lt!1262263))))))

(assert (=> d!1071254 (not (isEmpty!22749 rules!3307))))

(assert (=> d!1071254 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1059 thiss!23823 rules!3307 lt!1262256 lt!1262269 (_2!22274 lt!1262263) (rule!8530 (_1!22274 lt!1262263))) lt!1262346)))

(declare-fun bs!572035 () Bool)

(assert (= bs!572035 d!1071254))

(assert (=> bs!572035 m!4147301))

(assert (=> bs!572035 m!4147303))

(assert (=> bs!572035 m!4147365))

(assert (=> bs!572035 m!4147301))

(assert (=> bs!572035 m!4147307))

(declare-fun m!4147677 () Bool)

(assert (=> bs!572035 m!4147677))

(assert (=> bs!572035 m!4147295))

(assert (=> b!3643821 d!1071254))

(declare-fun d!1071256 () Bool)

(assert (=> d!1071256 (= (_2!22274 lt!1262263) lt!1262274)))

(declare-fun lt!1262349 () Unit!55280)

(declare-fun choose!21444 (List!38534 List!38534 List!38534 List!38534 List!38534) Unit!55280)

(assert (=> d!1071256 (= lt!1262349 (choose!21444 lt!1262256 (_2!22274 lt!1262263) lt!1262256 lt!1262274 lt!1262269))))

(assert (=> d!1071256 (isPrefix!3105 lt!1262256 lt!1262269)))

(assert (=> d!1071256 (= (lemmaSamePrefixThenSameSuffix!1432 lt!1262256 (_2!22274 lt!1262263) lt!1262256 lt!1262274 lt!1262269) lt!1262349)))

(declare-fun bs!572036 () Bool)

(assert (= bs!572036 d!1071256))

(declare-fun m!4147679 () Bool)

(assert (=> bs!572036 m!4147679))

(assert (=> bs!572036 m!4147387))

(assert (=> b!3643821 d!1071256))

(declare-fun d!1071258 () Bool)

(declare-fun lt!1262352 () Int)

(assert (=> d!1071258 (>= lt!1262352 0)))

(declare-fun e!2255946 () Int)

(assert (=> d!1071258 (= lt!1262352 e!2255946)))

(declare-fun c!630001 () Bool)

(assert (=> d!1071258 (= c!630001 ((_ is Nil!38410) lt!1262256))))

(assert (=> d!1071258 (= (size!29321 lt!1262256) lt!1262352)))

(declare-fun b!3644174 () Bool)

(assert (=> b!3644174 (= e!2255946 0)))

(declare-fun b!3644175 () Bool)

(assert (=> b!3644175 (= e!2255946 (+ 1 (size!29321 (t!296797 lt!1262256))))))

(assert (= (and d!1071258 c!630001) b!3644174))

(assert (= (and d!1071258 (not c!630001)) b!3644175))

(declare-fun m!4147681 () Bool)

(assert (=> b!3644175 m!4147681))

(assert (=> b!3643821 d!1071258))

(declare-fun d!1071260 () Bool)

(declare-fun fromListB!1982 (List!38534) BalanceConc!23076)

(assert (=> d!1071260 (= (seqFromList!4291 lt!1262256) (fromListB!1982 lt!1262256))))

(declare-fun bs!572037 () Bool)

(assert (= bs!572037 d!1071260))

(declare-fun m!4147683 () Bool)

(assert (=> bs!572037 m!4147683))

(assert (=> b!3643821 d!1071260))

(declare-fun d!1071262 () Bool)

(declare-fun lt!1262355 () List!38534)

(assert (=> d!1071262 (= (++!9558 lt!1262256 lt!1262355) lt!1262269)))

(declare-fun e!2255949 () List!38534)

(assert (=> d!1071262 (= lt!1262355 e!2255949)))

(declare-fun c!630004 () Bool)

(assert (=> d!1071262 (= c!630004 ((_ is Cons!38410) lt!1262256))))

(assert (=> d!1071262 (>= (size!29321 lt!1262269) (size!29321 lt!1262256))))

(assert (=> d!1071262 (= (getSuffix!1658 lt!1262269 lt!1262256) lt!1262355)))

(declare-fun b!3644180 () Bool)

(assert (=> b!3644180 (= e!2255949 (getSuffix!1658 (tail!5645 lt!1262269) (t!296797 lt!1262256)))))

(declare-fun b!3644181 () Bool)

(assert (=> b!3644181 (= e!2255949 lt!1262269)))

(assert (= (and d!1071262 c!630004) b!3644180))

(assert (= (and d!1071262 (not c!630004)) b!3644181))

(declare-fun m!4147685 () Bool)

(assert (=> d!1071262 m!4147685))

(assert (=> d!1071262 m!4147633))

(assert (=> d!1071262 m!4147295))

(declare-fun m!4147687 () Bool)

(assert (=> b!3644180 m!4147687))

(assert (=> b!3644180 m!4147687))

(declare-fun m!4147689 () Bool)

(assert (=> b!3644180 m!4147689))

(assert (=> b!3643821 d!1071262))

(declare-fun d!1071264 () Bool)

(declare-fun dynLambda!16727 (Int BalanceConc!23076) TokenValue!5972)

(assert (=> d!1071264 (= (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) (seqFromList!4291 lt!1262256)) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (seqFromList!4291 lt!1262256)))))

(declare-fun b_lambda!108035 () Bool)

(assert (=> (not b_lambda!108035) (not d!1071264)))

(declare-fun t!296808 () Bool)

(declare-fun tb!210029 () Bool)

(assert (=> (and b!3643816 (= (toValue!8034 (transformation!5742 (rule!8530 token!511))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296808) tb!210029))

(declare-fun result!255792 () Bool)

(assert (=> tb!210029 (= result!255792 (inv!21 (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (seqFromList!4291 lt!1262256))))))

(declare-fun m!4147691 () Bool)

(assert (=> tb!210029 m!4147691))

(assert (=> d!1071264 t!296808))

(declare-fun b_and!268907 () Bool)

(assert (= b_and!268875 (and (=> t!296808 result!255792) b_and!268907)))

(declare-fun tb!210031 () Bool)

(declare-fun t!296810 () Bool)

(assert (=> (and b!3643803 (= (toValue!8034 (transformation!5742 (h!43831 rules!3307))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296810) tb!210031))

(declare-fun result!255796 () Bool)

(assert (= result!255796 result!255792))

(assert (=> d!1071264 t!296810))

(declare-fun b_and!268909 () Bool)

(assert (= b_and!268879 (and (=> t!296810 result!255796) b_and!268909)))

(declare-fun t!296812 () Bool)

(declare-fun tb!210033 () Bool)

(assert (=> (and b!3643838 (= (toValue!8034 (transformation!5742 anOtherTypeRule!33)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296812) tb!210033))

(declare-fun result!255798 () Bool)

(assert (= result!255798 result!255792))

(assert (=> d!1071264 t!296812))

(declare-fun b_and!268911 () Bool)

(assert (= b_and!268883 (and (=> t!296812 result!255798) b_and!268911)))

(declare-fun tb!210035 () Bool)

(declare-fun t!296814 () Bool)

(assert (=> (and b!3643809 (= (toValue!8034 (transformation!5742 rule!403)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296814) tb!210035))

(declare-fun result!255800 () Bool)

(assert (= result!255800 result!255792))

(assert (=> d!1071264 t!296814))

(declare-fun b_and!268913 () Bool)

(assert (= b_and!268887 (and (=> t!296814 result!255800) b_and!268913)))

(assert (=> d!1071264 m!4147301))

(declare-fun m!4147693 () Bool)

(assert (=> d!1071264 m!4147693))

(assert (=> b!3643821 d!1071264))

(declare-fun d!1071266 () Bool)

(declare-fun lt!1262356 () Bool)

(assert (=> d!1071266 (= lt!1262356 (select (content!5534 lt!1262262) lt!1262266))))

(declare-fun e!2255953 () Bool)

(assert (=> d!1071266 (= lt!1262356 e!2255953)))

(declare-fun res!1477592 () Bool)

(assert (=> d!1071266 (=> (not res!1477592) (not e!2255953))))

(assert (=> d!1071266 (= res!1477592 ((_ is Cons!38410) lt!1262262))))

(assert (=> d!1071266 (= (contains!7549 lt!1262262 lt!1262266) lt!1262356)))

(declare-fun b!3644184 () Bool)

(declare-fun e!2255954 () Bool)

(assert (=> b!3644184 (= e!2255953 e!2255954)))

(declare-fun res!1477593 () Bool)

(assert (=> b!3644184 (=> res!1477593 e!2255954)))

(assert (=> b!3644184 (= res!1477593 (= (h!43830 lt!1262262) lt!1262266))))

(declare-fun b!3644185 () Bool)

(assert (=> b!3644185 (= e!2255954 (contains!7549 (t!296797 lt!1262262) lt!1262266))))

(assert (= (and d!1071266 res!1477592) b!3644184))

(assert (= (and b!3644184 (not res!1477593)) b!3644185))

(declare-fun m!4147695 () Bool)

(assert (=> d!1071266 m!4147695))

(declare-fun m!4147697 () Bool)

(assert (=> d!1071266 m!4147697))

(declare-fun m!4147699 () Bool)

(assert (=> b!3644185 m!4147699))

(assert (=> b!3643822 d!1071266))

(declare-fun d!1071268 () Bool)

(assert (=> d!1071268 (= (head!7746 suffix!1395) (h!43830 suffix!1395))))

(assert (=> b!3643822 d!1071268))

(declare-fun b!3644202 () Bool)

(declare-fun e!2255965 () List!38534)

(declare-fun call!263379 () List!38534)

(assert (=> b!3644202 (= e!2255965 call!263379)))

(declare-fun b!3644203 () Bool)

(declare-fun c!630014 () Bool)

(assert (=> b!3644203 (= c!630014 ((_ is Star!10501) (regex!5742 rule!403)))))

(declare-fun e!2255963 () List!38534)

(assert (=> b!3644203 (= e!2255963 e!2255965)))

(declare-fun bm!263374 () Bool)

(declare-fun call!263381 () List!38534)

(assert (=> bm!263374 (= call!263381 call!263379)))

(declare-fun b!3644204 () Bool)

(declare-fun e!2255964 () List!38534)

(assert (=> b!3644204 (= e!2255964 Nil!38410)))

(declare-fun b!3644205 () Bool)

(declare-fun e!2255966 () List!38534)

(declare-fun call!263382 () List!38534)

(assert (=> b!3644205 (= e!2255966 call!263382)))

(declare-fun b!3644206 () Bool)

(assert (=> b!3644206 (= e!2255963 (Cons!38410 (c!629926 (regex!5742 rule!403)) Nil!38410))))

(declare-fun b!3644207 () Bool)

(assert (=> b!3644207 (= e!2255965 e!2255966)))

(declare-fun c!630013 () Bool)

(assert (=> b!3644207 (= c!630013 ((_ is Union!10501) (regex!5742 rule!403)))))

(declare-fun bm!263375 () Bool)

(declare-fun call!263380 () List!38534)

(assert (=> bm!263375 (= call!263382 (++!9558 (ite c!630013 call!263380 call!263381) (ite c!630013 call!263381 call!263380)))))

(declare-fun bm!263376 () Bool)

(assert (=> bm!263376 (= call!263379 (usedCharacters!954 (ite c!630014 (reg!10830 (regex!5742 rule!403)) (ite c!630013 (regTwo!21515 (regex!5742 rule!403)) (regOne!21514 (regex!5742 rule!403))))))))

(declare-fun b!3644208 () Bool)

(assert (=> b!3644208 (= e!2255964 e!2255963)))

(declare-fun c!630016 () Bool)

(assert (=> b!3644208 (= c!630016 ((_ is ElementMatch!10501) (regex!5742 rule!403)))))

(declare-fun d!1071270 () Bool)

(declare-fun c!630015 () Bool)

(assert (=> d!1071270 (= c!630015 (or ((_ is EmptyExpr!10501) (regex!5742 rule!403)) ((_ is EmptyLang!10501) (regex!5742 rule!403))))))

(assert (=> d!1071270 (= (usedCharacters!954 (regex!5742 rule!403)) e!2255964)))

(declare-fun b!3644209 () Bool)

(assert (=> b!3644209 (= e!2255966 call!263382)))

(declare-fun bm!263377 () Bool)

(assert (=> bm!263377 (= call!263380 (usedCharacters!954 (ite c!630013 (regOne!21515 (regex!5742 rule!403)) (regTwo!21514 (regex!5742 rule!403)))))))

(assert (= (and d!1071270 c!630015) b!3644204))

(assert (= (and d!1071270 (not c!630015)) b!3644208))

(assert (= (and b!3644208 c!630016) b!3644206))

(assert (= (and b!3644208 (not c!630016)) b!3644203))

(assert (= (and b!3644203 c!630014) b!3644202))

(assert (= (and b!3644203 (not c!630014)) b!3644207))

(assert (= (and b!3644207 c!630013) b!3644209))

(assert (= (and b!3644207 (not c!630013)) b!3644205))

(assert (= (or b!3644209 b!3644205) bm!263377))

(assert (= (or b!3644209 b!3644205) bm!263374))

(assert (= (or b!3644209 b!3644205) bm!263375))

(assert (= (or b!3644202 bm!263374) bm!263376))

(declare-fun m!4147701 () Bool)

(assert (=> bm!263375 m!4147701))

(declare-fun m!4147703 () Bool)

(assert (=> bm!263376 m!4147703))

(declare-fun m!4147705 () Bool)

(assert (=> bm!263377 m!4147705))

(assert (=> b!3643822 d!1071270))

(declare-fun d!1071272 () Bool)

(declare-fun res!1477598 () Bool)

(declare-fun e!2255971 () Bool)

(assert (=> d!1071272 (=> res!1477598 e!2255971)))

(assert (=> d!1071272 (= res!1477598 (not ((_ is Cons!38411) rules!3307)))))

(assert (=> d!1071272 (= (sepAndNonSepRulesDisjointChars!1910 rules!3307 rules!3307) e!2255971)))

(declare-fun b!3644214 () Bool)

(declare-fun e!2255972 () Bool)

(assert (=> b!3644214 (= e!2255971 e!2255972)))

(declare-fun res!1477599 () Bool)

(assert (=> b!3644214 (=> (not res!1477599) (not e!2255972))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!871 (Rule!11284 List!38535) Bool)

(assert (=> b!3644214 (= res!1477599 (ruleDisjointCharsFromAllFromOtherType!871 (h!43831 rules!3307) rules!3307))))

(declare-fun b!3644215 () Bool)

(assert (=> b!3644215 (= e!2255972 (sepAndNonSepRulesDisjointChars!1910 rules!3307 (t!296798 rules!3307)))))

(assert (= (and d!1071272 (not res!1477598)) b!3644214))

(assert (= (and b!3644214 res!1477599) b!3644215))

(declare-fun m!4147707 () Bool)

(assert (=> b!3644214 m!4147707))

(declare-fun m!4147709 () Bool)

(assert (=> b!3644215 m!4147709))

(assert (=> b!3643824 d!1071272))

(declare-fun d!1071274 () Bool)

(declare-fun res!1477602 () Bool)

(declare-fun e!2255975 () Bool)

(assert (=> d!1071274 (=> (not res!1477602) (not e!2255975))))

(declare-fun rulesValid!2204 (LexerInterface!5331 List!38535) Bool)

(assert (=> d!1071274 (= res!1477602 (rulesValid!2204 thiss!23823 rules!3307))))

(assert (=> d!1071274 (= (rulesInvariant!4728 thiss!23823 rules!3307) e!2255975)))

(declare-fun b!3644218 () Bool)

(declare-datatypes ((List!38537 0))(
  ( (Nil!38413) (Cons!38413 (h!43833 String!43194) (t!296920 List!38537)) )
))
(declare-fun noDuplicateTag!2200 (LexerInterface!5331 List!38535 List!38537) Bool)

(assert (=> b!3644218 (= e!2255975 (noDuplicateTag!2200 thiss!23823 rules!3307 Nil!38413))))

(assert (= (and d!1071274 res!1477602) b!3644218))

(declare-fun m!4147711 () Bool)

(assert (=> d!1071274 m!4147711))

(declare-fun m!4147713 () Bool)

(assert (=> b!3644218 m!4147713))

(assert (=> b!3643802 d!1071274))

(declare-fun b!3644219 () Bool)

(declare-fun e!2255981 () Bool)

(declare-fun e!2255980 () Bool)

(assert (=> b!3644219 (= e!2255981 e!2255980)))

(declare-fun res!1477609 () Bool)

(assert (=> b!3644219 (=> (not res!1477609) (not e!2255980))))

(declare-fun lt!1262357 () Bool)

(assert (=> b!3644219 (= res!1477609 (not lt!1262357))))

(declare-fun b!3644220 () Bool)

(declare-fun res!1477606 () Bool)

(assert (=> b!3644220 (=> res!1477606 e!2255981)))

(declare-fun e!2255976 () Bool)

(assert (=> b!3644220 (= res!1477606 e!2255976)))

(declare-fun res!1477604 () Bool)

(assert (=> b!3644220 (=> (not res!1477604) (not e!2255976))))

(assert (=> b!3644220 (= res!1477604 lt!1262357)))

(declare-fun b!3644221 () Bool)

(assert (=> b!3644221 (= e!2255976 (= (head!7746 (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))) (c!629926 (regex!5742 lt!1262249))))))

(declare-fun b!3644222 () Bool)

(declare-fun e!2255977 () Bool)

(assert (=> b!3644222 (= e!2255977 (nullable!3647 (regex!5742 lt!1262249)))))

(declare-fun b!3644223 () Bool)

(declare-fun res!1477608 () Bool)

(assert (=> b!3644223 (=> (not res!1477608) (not e!2255976))))

(declare-fun call!263383 () Bool)

(assert (=> b!3644223 (= res!1477608 (not call!263383))))

(declare-fun b!3644224 () Bool)

(declare-fun e!2255978 () Bool)

(declare-fun e!2255979 () Bool)

(assert (=> b!3644224 (= e!2255978 e!2255979)))

(declare-fun c!630017 () Bool)

(assert (=> b!3644224 (= c!630017 ((_ is EmptyLang!10501) (regex!5742 lt!1262249)))))

(declare-fun d!1071276 () Bool)

(assert (=> d!1071276 e!2255978))

(declare-fun c!630019 () Bool)

(assert (=> d!1071276 (= c!630019 ((_ is EmptyExpr!10501) (regex!5742 lt!1262249)))))

(assert (=> d!1071276 (= lt!1262357 e!2255977)))

(declare-fun c!630018 () Bool)

(assert (=> d!1071276 (= c!630018 (isEmpty!22748 (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))))))

(assert (=> d!1071276 (validRegex!4809 (regex!5742 lt!1262249))))

(assert (=> d!1071276 (= (matchR!5070 (regex!5742 lt!1262249) (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))) lt!1262357)))

(declare-fun b!3644225 () Bool)

(assert (=> b!3644225 (= e!2255979 (not lt!1262357))))

(declare-fun b!3644226 () Bool)

(declare-fun e!2255982 () Bool)

(assert (=> b!3644226 (= e!2255982 (not (= (head!7746 (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))) (c!629926 (regex!5742 lt!1262249)))))))

(declare-fun b!3644227 () Bool)

(assert (=> b!3644227 (= e!2255977 (matchR!5070 (derivativeStep!3196 (regex!5742 lt!1262249) (head!7746 (list!14224 (charsOf!3756 (_1!22274 lt!1262263))))) (tail!5645 (list!14224 (charsOf!3756 (_1!22274 lt!1262263))))))))

(declare-fun b!3644228 () Bool)

(assert (=> b!3644228 (= e!2255980 e!2255982)))

(declare-fun res!1477603 () Bool)

(assert (=> b!3644228 (=> res!1477603 e!2255982)))

(assert (=> b!3644228 (= res!1477603 call!263383)))

(declare-fun b!3644229 () Bool)

(declare-fun res!1477610 () Bool)

(assert (=> b!3644229 (=> res!1477610 e!2255981)))

(assert (=> b!3644229 (= res!1477610 (not ((_ is ElementMatch!10501) (regex!5742 lt!1262249))))))

(assert (=> b!3644229 (= e!2255979 e!2255981)))

(declare-fun bm!263378 () Bool)

(assert (=> bm!263378 (= call!263383 (isEmpty!22748 (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))))))

(declare-fun b!3644230 () Bool)

(declare-fun res!1477605 () Bool)

(assert (=> b!3644230 (=> (not res!1477605) (not e!2255976))))

(assert (=> b!3644230 (= res!1477605 (isEmpty!22748 (tail!5645 (list!14224 (charsOf!3756 (_1!22274 lt!1262263))))))))

(declare-fun b!3644231 () Bool)

(declare-fun res!1477607 () Bool)

(assert (=> b!3644231 (=> res!1477607 e!2255982)))

(assert (=> b!3644231 (= res!1477607 (not (isEmpty!22748 (tail!5645 (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))))))))

(declare-fun b!3644232 () Bool)

(assert (=> b!3644232 (= e!2255978 (= lt!1262357 call!263383))))

(assert (= (and d!1071276 c!630018) b!3644222))

(assert (= (and d!1071276 (not c!630018)) b!3644227))

(assert (= (and d!1071276 c!630019) b!3644232))

(assert (= (and d!1071276 (not c!630019)) b!3644224))

(assert (= (and b!3644224 c!630017) b!3644225))

(assert (= (and b!3644224 (not c!630017)) b!3644229))

(assert (= (and b!3644229 (not res!1477610)) b!3644220))

(assert (= (and b!3644220 res!1477604) b!3644223))

(assert (= (and b!3644223 res!1477608) b!3644230))

(assert (= (and b!3644230 res!1477605) b!3644221))

(assert (= (and b!3644220 (not res!1477606)) b!3644219))

(assert (= (and b!3644219 res!1477609) b!3644228))

(assert (= (and b!3644228 (not res!1477603)) b!3644231))

(assert (= (and b!3644231 (not res!1477607)) b!3644226))

(assert (= (or b!3644232 b!3644223 b!3644228) bm!263378))

(declare-fun m!4147715 () Bool)

(assert (=> b!3644222 m!4147715))

(assert (=> b!3644230 m!4147311))

(declare-fun m!4147717 () Bool)

(assert (=> b!3644230 m!4147717))

(assert (=> b!3644230 m!4147717))

(declare-fun m!4147719 () Bool)

(assert (=> b!3644230 m!4147719))

(assert (=> b!3644227 m!4147311))

(declare-fun m!4147721 () Bool)

(assert (=> b!3644227 m!4147721))

(assert (=> b!3644227 m!4147721))

(declare-fun m!4147723 () Bool)

(assert (=> b!3644227 m!4147723))

(assert (=> b!3644227 m!4147311))

(assert (=> b!3644227 m!4147717))

(assert (=> b!3644227 m!4147723))

(assert (=> b!3644227 m!4147717))

(declare-fun m!4147725 () Bool)

(assert (=> b!3644227 m!4147725))

(assert (=> bm!263378 m!4147311))

(declare-fun m!4147727 () Bool)

(assert (=> bm!263378 m!4147727))

(assert (=> b!3644231 m!4147311))

(assert (=> b!3644231 m!4147717))

(assert (=> b!3644231 m!4147717))

(assert (=> b!3644231 m!4147719))

(assert (=> d!1071276 m!4147311))

(assert (=> d!1071276 m!4147727))

(declare-fun m!4147729 () Bool)

(assert (=> d!1071276 m!4147729))

(assert (=> b!3644226 m!4147311))

(assert (=> b!3644226 m!4147721))

(assert (=> b!3644221 m!4147311))

(assert (=> b!3644221 m!4147721))

(assert (=> b!3643825 d!1071276))

(declare-fun d!1071278 () Bool)

(declare-fun list!14226 (Conc!11731) List!38534)

(assert (=> d!1071278 (= (list!14224 (charsOf!3756 (_1!22274 lt!1262263))) (list!14226 (c!629927 (charsOf!3756 (_1!22274 lt!1262263)))))))

(declare-fun bs!572038 () Bool)

(assert (= bs!572038 d!1071278))

(declare-fun m!4147731 () Bool)

(assert (=> bs!572038 m!4147731))

(assert (=> b!3643825 d!1071278))

(declare-fun d!1071280 () Bool)

(declare-fun lt!1262360 () BalanceConc!23076)

(assert (=> d!1071280 (= (list!14224 lt!1262360) (originalCharacters!6456 (_1!22274 lt!1262263)))))

(declare-fun dynLambda!16729 (Int TokenValue!5972) BalanceConc!23076)

(assert (=> d!1071280 (= lt!1262360 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (value!184107 (_1!22274 lt!1262263))))))

(assert (=> d!1071280 (= (charsOf!3756 (_1!22274 lt!1262263)) lt!1262360)))

(declare-fun b_lambda!108037 () Bool)

(assert (=> (not b_lambda!108037) (not d!1071280)))

(declare-fun tb!210037 () Bool)

(declare-fun t!296816 () Bool)

(assert (=> (and b!3643816 (= (toChars!7893 (transformation!5742 (rule!8530 token!511))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296816) tb!210037))

(declare-fun b!3644237 () Bool)

(declare-fun e!2255985 () Bool)

(declare-fun tp!1111416 () Bool)

(declare-fun inv!51853 (Conc!11731) Bool)

(assert (=> b!3644237 (= e!2255985 (and (inv!51853 (c!629927 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (value!184107 (_1!22274 lt!1262263))))) tp!1111416))))

(declare-fun result!255802 () Bool)

(declare-fun inv!51854 (BalanceConc!23076) Bool)

(assert (=> tb!210037 (= result!255802 (and (inv!51854 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (value!184107 (_1!22274 lt!1262263)))) e!2255985))))

(assert (= tb!210037 b!3644237))

(declare-fun m!4147733 () Bool)

(assert (=> b!3644237 m!4147733))

(declare-fun m!4147735 () Bool)

(assert (=> tb!210037 m!4147735))

(assert (=> d!1071280 t!296816))

(declare-fun b_and!268915 () Bool)

(assert (= b_and!268877 (and (=> t!296816 result!255802) b_and!268915)))

(declare-fun t!296818 () Bool)

(declare-fun tb!210039 () Bool)

(assert (=> (and b!3643803 (= (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296818) tb!210039))

(declare-fun result!255806 () Bool)

(assert (= result!255806 result!255802))

(assert (=> d!1071280 t!296818))

(declare-fun b_and!268917 () Bool)

(assert (= b_and!268881 (and (=> t!296818 result!255806) b_and!268917)))

(declare-fun t!296820 () Bool)

(declare-fun tb!210041 () Bool)

(assert (=> (and b!3643838 (= (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296820) tb!210041))

(declare-fun result!255808 () Bool)

(assert (= result!255808 result!255802))

(assert (=> d!1071280 t!296820))

(declare-fun b_and!268919 () Bool)

(assert (= b_and!268885 (and (=> t!296820 result!255808) b_and!268919)))

(declare-fun t!296822 () Bool)

(declare-fun tb!210043 () Bool)

(assert (=> (and b!3643809 (= (toChars!7893 (transformation!5742 rule!403)) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296822) tb!210043))

(declare-fun result!255810 () Bool)

(assert (= result!255810 result!255802))

(assert (=> d!1071280 t!296822))

(declare-fun b_and!268921 () Bool)

(assert (= b_and!268889 (and (=> t!296822 result!255810) b_and!268921)))

(declare-fun m!4147737 () Bool)

(assert (=> d!1071280 m!4147737))

(declare-fun m!4147739 () Bool)

(assert (=> d!1071280 m!4147739))

(assert (=> b!3643825 d!1071280))

(declare-fun d!1071282 () Bool)

(assert (=> d!1071282 (= (get!12594 lt!1262252) (v!37951 lt!1262252))))

(assert (=> b!3643825 d!1071282))

(declare-fun d!1071284 () Bool)

(declare-fun lt!1262363 () Bool)

(declare-fun content!5535 (List!38535) (InoxSet Rule!11284))

(assert (=> d!1071284 (= lt!1262363 (select (content!5535 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2255990 () Bool)

(assert (=> d!1071284 (= lt!1262363 e!2255990)))

(declare-fun res!1477616 () Bool)

(assert (=> d!1071284 (=> (not res!1477616) (not e!2255990))))

(assert (=> d!1071284 (= res!1477616 ((_ is Cons!38411) rules!3307))))

(assert (=> d!1071284 (= (contains!7550 rules!3307 anOtherTypeRule!33) lt!1262363)))

(declare-fun b!3644242 () Bool)

(declare-fun e!2255991 () Bool)

(assert (=> b!3644242 (= e!2255990 e!2255991)))

(declare-fun res!1477615 () Bool)

(assert (=> b!3644242 (=> res!1477615 e!2255991)))

(assert (=> b!3644242 (= res!1477615 (= (h!43831 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3644243 () Bool)

(assert (=> b!3644243 (= e!2255991 (contains!7550 (t!296798 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1071284 res!1477616) b!3644242))

(assert (= (and b!3644242 (not res!1477615)) b!3644243))

(declare-fun m!4147741 () Bool)

(assert (=> d!1071284 m!4147741))

(declare-fun m!4147743 () Bool)

(assert (=> d!1071284 m!4147743))

(declare-fun m!4147745 () Bool)

(assert (=> b!3644243 m!4147745))

(assert (=> b!3643837 d!1071284))

(declare-fun d!1071286 () Bool)

(assert (=> d!1071286 (= (inv!51846 (tag!6496 (rule!8530 token!511))) (= (mod (str.len (value!184106 (tag!6496 (rule!8530 token!511)))) 2) 0))))

(assert (=> b!3643815 d!1071286))

(declare-fun d!1071288 () Bool)

(declare-fun res!1477617 () Bool)

(declare-fun e!2255992 () Bool)

(assert (=> d!1071288 (=> (not res!1477617) (not e!2255992))))

(assert (=> d!1071288 (= res!1477617 (semiInverseModEq!2447 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (toValue!8034 (transformation!5742 (rule!8530 token!511)))))))

(assert (=> d!1071288 (= (inv!51849 (transformation!5742 (rule!8530 token!511))) e!2255992)))

(declare-fun b!3644244 () Bool)

(assert (=> b!3644244 (= e!2255992 (equivClasses!2346 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (toValue!8034 (transformation!5742 (rule!8530 token!511)))))))

(assert (= (and d!1071288 res!1477617) b!3644244))

(declare-fun m!4147747 () Bool)

(assert (=> d!1071288 m!4147747))

(declare-fun m!4147749 () Bool)

(assert (=> b!3644244 m!4147749))

(assert (=> b!3643815 d!1071288))

(declare-fun d!1071290 () Bool)

(declare-fun lt!1262364 () Bool)

(assert (=> d!1071290 (= lt!1262364 (select (content!5534 (usedCharacters!954 (regex!5742 anOtherTypeRule!33))) lt!1262266))))

(declare-fun e!2255993 () Bool)

(assert (=> d!1071290 (= lt!1262364 e!2255993)))

(declare-fun res!1477618 () Bool)

(assert (=> d!1071290 (=> (not res!1477618) (not e!2255993))))

(assert (=> d!1071290 (= res!1477618 ((_ is Cons!38410) (usedCharacters!954 (regex!5742 anOtherTypeRule!33))))))

(assert (=> d!1071290 (= (contains!7549 (usedCharacters!954 (regex!5742 anOtherTypeRule!33)) lt!1262266) lt!1262364)))

(declare-fun b!3644245 () Bool)

(declare-fun e!2255994 () Bool)

(assert (=> b!3644245 (= e!2255993 e!2255994)))

(declare-fun res!1477619 () Bool)

(assert (=> b!3644245 (=> res!1477619 e!2255994)))

(assert (=> b!3644245 (= res!1477619 (= (h!43830 (usedCharacters!954 (regex!5742 anOtherTypeRule!33))) lt!1262266))))

(declare-fun b!3644246 () Bool)

(assert (=> b!3644246 (= e!2255994 (contains!7549 (t!296797 (usedCharacters!954 (regex!5742 anOtherTypeRule!33))) lt!1262266))))

(assert (= (and d!1071290 res!1477618) b!3644245))

(assert (= (and b!3644245 (not res!1477619)) b!3644246))

(assert (=> d!1071290 m!4147345))

(declare-fun m!4147751 () Bool)

(assert (=> d!1071290 m!4147751))

(declare-fun m!4147753 () Bool)

(assert (=> d!1071290 m!4147753))

(declare-fun m!4147755 () Bool)

(assert (=> b!3644246 m!4147755))

(assert (=> b!3643817 d!1071290))

(declare-fun b!3644247 () Bool)

(declare-fun e!2255997 () List!38534)

(declare-fun call!263384 () List!38534)

(assert (=> b!3644247 (= e!2255997 call!263384)))

(declare-fun b!3644248 () Bool)

(declare-fun c!630021 () Bool)

(assert (=> b!3644248 (= c!630021 ((_ is Star!10501) (regex!5742 anOtherTypeRule!33)))))

(declare-fun e!2255995 () List!38534)

(assert (=> b!3644248 (= e!2255995 e!2255997)))

(declare-fun bm!263379 () Bool)

(declare-fun call!263386 () List!38534)

(assert (=> bm!263379 (= call!263386 call!263384)))

(declare-fun b!3644249 () Bool)

(declare-fun e!2255996 () List!38534)

(assert (=> b!3644249 (= e!2255996 Nil!38410)))

(declare-fun b!3644250 () Bool)

(declare-fun e!2255998 () List!38534)

(declare-fun call!263387 () List!38534)

(assert (=> b!3644250 (= e!2255998 call!263387)))

(declare-fun b!3644251 () Bool)

(assert (=> b!3644251 (= e!2255995 (Cons!38410 (c!629926 (regex!5742 anOtherTypeRule!33)) Nil!38410))))

(declare-fun b!3644252 () Bool)

(assert (=> b!3644252 (= e!2255997 e!2255998)))

(declare-fun c!630020 () Bool)

(assert (=> b!3644252 (= c!630020 ((_ is Union!10501) (regex!5742 anOtherTypeRule!33)))))

(declare-fun call!263385 () List!38534)

(declare-fun bm!263380 () Bool)

(assert (=> bm!263380 (= call!263387 (++!9558 (ite c!630020 call!263385 call!263386) (ite c!630020 call!263386 call!263385)))))

(declare-fun bm!263381 () Bool)

(assert (=> bm!263381 (= call!263384 (usedCharacters!954 (ite c!630021 (reg!10830 (regex!5742 anOtherTypeRule!33)) (ite c!630020 (regTwo!21515 (regex!5742 anOtherTypeRule!33)) (regOne!21514 (regex!5742 anOtherTypeRule!33))))))))

(declare-fun b!3644253 () Bool)

(assert (=> b!3644253 (= e!2255996 e!2255995)))

(declare-fun c!630023 () Bool)

(assert (=> b!3644253 (= c!630023 ((_ is ElementMatch!10501) (regex!5742 anOtherTypeRule!33)))))

(declare-fun d!1071292 () Bool)

(declare-fun c!630022 () Bool)

(assert (=> d!1071292 (= c!630022 (or ((_ is EmptyExpr!10501) (regex!5742 anOtherTypeRule!33)) ((_ is EmptyLang!10501) (regex!5742 anOtherTypeRule!33))))))

(assert (=> d!1071292 (= (usedCharacters!954 (regex!5742 anOtherTypeRule!33)) e!2255996)))

(declare-fun b!3644254 () Bool)

(assert (=> b!3644254 (= e!2255998 call!263387)))

(declare-fun bm!263382 () Bool)

(assert (=> bm!263382 (= call!263385 (usedCharacters!954 (ite c!630020 (regOne!21515 (regex!5742 anOtherTypeRule!33)) (regTwo!21514 (regex!5742 anOtherTypeRule!33)))))))

(assert (= (and d!1071292 c!630022) b!3644249))

(assert (= (and d!1071292 (not c!630022)) b!3644253))

(assert (= (and b!3644253 c!630023) b!3644251))

(assert (= (and b!3644253 (not c!630023)) b!3644248))

(assert (= (and b!3644248 c!630021) b!3644247))

(assert (= (and b!3644248 (not c!630021)) b!3644252))

(assert (= (and b!3644252 c!630020) b!3644254))

(assert (= (and b!3644252 (not c!630020)) b!3644250))

(assert (= (or b!3644254 b!3644250) bm!263382))

(assert (= (or b!3644254 b!3644250) bm!263379))

(assert (= (or b!3644254 b!3644250) bm!263380))

(assert (= (or b!3644247 bm!263379) bm!263381))

(declare-fun m!4147757 () Bool)

(assert (=> bm!263380 m!4147757))

(declare-fun m!4147759 () Bool)

(assert (=> bm!263381 m!4147759))

(declare-fun m!4147761 () Bool)

(assert (=> bm!263382 m!4147761))

(assert (=> b!3643817 d!1071292))

(declare-fun d!1071294 () Bool)

(declare-fun lt!1262365 () Bool)

(assert (=> d!1071294 (= lt!1262365 (select (content!5535 rules!3307) rule!403))))

(declare-fun e!2255999 () Bool)

(assert (=> d!1071294 (= lt!1262365 e!2255999)))

(declare-fun res!1477621 () Bool)

(assert (=> d!1071294 (=> (not res!1477621) (not e!2255999))))

(assert (=> d!1071294 (= res!1477621 ((_ is Cons!38411) rules!3307))))

(assert (=> d!1071294 (= (contains!7550 rules!3307 rule!403) lt!1262365)))

(declare-fun b!3644255 () Bool)

(declare-fun e!2256000 () Bool)

(assert (=> b!3644255 (= e!2255999 e!2256000)))

(declare-fun res!1477620 () Bool)

(assert (=> b!3644255 (=> res!1477620 e!2256000)))

(assert (=> b!3644255 (= res!1477620 (= (h!43831 rules!3307) rule!403))))

(declare-fun b!3644256 () Bool)

(assert (=> b!3644256 (= e!2256000 (contains!7550 (t!296798 rules!3307) rule!403))))

(assert (= (and d!1071294 res!1477621) b!3644255))

(assert (= (and b!3644255 (not res!1477620)) b!3644256))

(assert (=> d!1071294 m!4147741))

(declare-fun m!4147763 () Bool)

(assert (=> d!1071294 m!4147763))

(declare-fun m!4147765 () Bool)

(assert (=> b!3644256 m!4147765))

(assert (=> b!3643818 d!1071294))

(declare-fun d!1071296 () Bool)

(assert (=> d!1071296 (= (isEmpty!22748 suffix!1395) ((_ is Nil!38410) suffix!1395))))

(assert (=> b!3643820 d!1071296))

(declare-fun d!1071298 () Bool)

(assert (=> d!1071298 (= (isEmpty!22749 rules!3307) ((_ is Nil!38411) rules!3307))))

(assert (=> b!3643832 d!1071298))

(declare-fun d!1071300 () Bool)

(declare-fun lt!1262366 () Bool)

(assert (=> d!1071300 (= lt!1262366 (select (content!5534 lt!1262262) lt!1262259))))

(declare-fun e!2256001 () Bool)

(assert (=> d!1071300 (= lt!1262366 e!2256001)))

(declare-fun res!1477622 () Bool)

(assert (=> d!1071300 (=> (not res!1477622) (not e!2256001))))

(assert (=> d!1071300 (= res!1477622 ((_ is Cons!38410) lt!1262262))))

(assert (=> d!1071300 (= (contains!7549 lt!1262262 lt!1262259) lt!1262366)))

(declare-fun b!3644257 () Bool)

(declare-fun e!2256002 () Bool)

(assert (=> b!3644257 (= e!2256001 e!2256002)))

(declare-fun res!1477623 () Bool)

(assert (=> b!3644257 (=> res!1477623 e!2256002)))

(assert (=> b!3644257 (= res!1477623 (= (h!43830 lt!1262262) lt!1262259))))

(declare-fun b!3644258 () Bool)

(assert (=> b!3644258 (= e!2256002 (contains!7549 (t!296797 lt!1262262) lt!1262259))))

(assert (= (and d!1071300 res!1477622) b!3644257))

(assert (= (and b!3644257 (not res!1477623)) b!3644258))

(assert (=> d!1071300 m!4147695))

(declare-fun m!4147767 () Bool)

(assert (=> d!1071300 m!4147767))

(declare-fun m!4147769 () Bool)

(assert (=> b!3644258 m!4147769))

(assert (=> b!3643831 d!1071300))

(declare-fun d!1071302 () Bool)

(assert (=> d!1071302 (= (head!7746 lt!1262256) (h!43830 lt!1262256))))

(assert (=> b!3643831 d!1071302))

(declare-fun b!3644277 () Bool)

(declare-fun res!1477638 () Bool)

(declare-fun e!2256023 () Bool)

(assert (=> b!3644277 (=> res!1477638 e!2256023)))

(assert (=> b!3644277 (= res!1477638 (not ((_ is Concat!16474) (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(declare-fun e!2256020 () Bool)

(assert (=> b!3644277 (= e!2256020 e!2256023)))

(declare-fun bm!263389 () Bool)

(declare-fun call!263394 () Bool)

(declare-fun c!630028 () Bool)

(assert (=> bm!263389 (= call!263394 (validRegex!4809 (ite c!630028 (regOne!21515 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (regTwo!21514 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))))

(declare-fun d!1071304 () Bool)

(declare-fun res!1477635 () Bool)

(declare-fun e!2256022 () Bool)

(assert (=> d!1071304 (=> res!1477635 e!2256022)))

(assert (=> d!1071304 (= res!1477635 ((_ is ElementMatch!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(assert (=> d!1071304 (= (validRegex!4809 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) e!2256022)))

(declare-fun b!3644278 () Bool)

(declare-fun e!2256017 () Bool)

(assert (=> b!3644278 (= e!2256017 e!2256020)))

(assert (=> b!3644278 (= c!630028 ((_ is Union!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun b!3644279 () Bool)

(declare-fun e!2256019 () Bool)

(assert (=> b!3644279 (= e!2256023 e!2256019)))

(declare-fun res!1477637 () Bool)

(assert (=> b!3644279 (=> (not res!1477637) (not e!2256019))))

(declare-fun call!263396 () Bool)

(assert (=> b!3644279 (= res!1477637 call!263396)))

(declare-fun bm!263390 () Bool)

(declare-fun call!263395 () Bool)

(assert (=> bm!263390 (= call!263396 call!263395)))

(declare-fun b!3644280 () Bool)

(declare-fun res!1477636 () Bool)

(declare-fun e!2256021 () Bool)

(assert (=> b!3644280 (=> (not res!1477636) (not e!2256021))))

(assert (=> b!3644280 (= res!1477636 call!263394)))

(assert (=> b!3644280 (= e!2256020 e!2256021)))

(declare-fun b!3644281 () Bool)

(assert (=> b!3644281 (= e!2256022 e!2256017)))

(declare-fun c!630029 () Bool)

(assert (=> b!3644281 (= c!630029 ((_ is Star!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun b!3644282 () Bool)

(assert (=> b!3644282 (= e!2256021 call!263396)))

(declare-fun b!3644283 () Bool)

(declare-fun e!2256018 () Bool)

(assert (=> b!3644283 (= e!2256018 call!263395)))

(declare-fun bm!263391 () Bool)

(assert (=> bm!263391 (= call!263395 (validRegex!4809 (ite c!630029 (reg!10830 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (ite c!630028 (regTwo!21515 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (regOne!21514 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))))

(declare-fun b!3644284 () Bool)

(assert (=> b!3644284 (= e!2256017 e!2256018)))

(declare-fun res!1477634 () Bool)

(assert (=> b!3644284 (= res!1477634 (not (nullable!3647 (reg!10830 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))))

(assert (=> b!3644284 (=> (not res!1477634) (not e!2256018))))

(declare-fun b!3644285 () Bool)

(assert (=> b!3644285 (= e!2256019 call!263394)))

(assert (= (and d!1071304 (not res!1477635)) b!3644281))

(assert (= (and b!3644281 c!630029) b!3644284))

(assert (= (and b!3644281 (not c!630029)) b!3644278))

(assert (= (and b!3644284 res!1477634) b!3644283))

(assert (= (and b!3644278 c!630028) b!3644280))

(assert (= (and b!3644278 (not c!630028)) b!3644277))

(assert (= (and b!3644280 res!1477636) b!3644282))

(assert (= (and b!3644277 (not res!1477638)) b!3644279))

(assert (= (and b!3644279 res!1477637) b!3644285))

(assert (= (or b!3644280 b!3644285) bm!263389))

(assert (= (or b!3644282 b!3644279) bm!263390))

(assert (= (or b!3644283 bm!263390) bm!263391))

(declare-fun m!4147771 () Bool)

(assert (=> bm!263389 m!4147771))

(declare-fun m!4147773 () Bool)

(assert (=> bm!263391 m!4147773))

(declare-fun m!4147775 () Bool)

(assert (=> b!3644284 m!4147775))

(assert (=> b!3643810 d!1071304))

(declare-fun d!1071306 () Bool)

(declare-fun lt!1262367 () Bool)

(assert (=> d!1071306 (= lt!1262367 (select (content!5534 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))) lt!1262259))))

(declare-fun e!2256024 () Bool)

(assert (=> d!1071306 (= lt!1262367 e!2256024)))

(declare-fun res!1477639 () Bool)

(assert (=> d!1071306 (=> (not res!1477639) (not e!2256024))))

(assert (=> d!1071306 (= res!1477639 ((_ is Cons!38410) (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(assert (=> d!1071306 (= (contains!7549 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262259) lt!1262367)))

(declare-fun b!3644286 () Bool)

(declare-fun e!2256025 () Bool)

(assert (=> b!3644286 (= e!2256024 e!2256025)))

(declare-fun res!1477640 () Bool)

(assert (=> b!3644286 (=> res!1477640 e!2256025)))

(assert (=> b!3644286 (= res!1477640 (= (h!43830 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))) lt!1262259))))

(declare-fun b!3644287 () Bool)

(assert (=> b!3644287 (= e!2256025 (contains!7549 (t!296797 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))) lt!1262259))))

(assert (= (and d!1071306 res!1477639) b!3644286))

(assert (= (and b!3644286 (not res!1477640)) b!3644287))

(assert (=> d!1071306 m!4147337))

(declare-fun m!4147777 () Bool)

(assert (=> d!1071306 m!4147777))

(declare-fun m!4147779 () Bool)

(assert (=> d!1071306 m!4147779))

(declare-fun m!4147781 () Bool)

(assert (=> b!3644287 m!4147781))

(assert (=> b!3643810 d!1071306))

(declare-fun b!3644288 () Bool)

(declare-fun e!2256028 () List!38534)

(declare-fun call!263397 () List!38534)

(assert (=> b!3644288 (= e!2256028 call!263397)))

(declare-fun b!3644289 () Bool)

(declare-fun c!630031 () Bool)

(assert (=> b!3644289 (= c!630031 ((_ is Star!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun e!2256026 () List!38534)

(assert (=> b!3644289 (= e!2256026 e!2256028)))

(declare-fun bm!263392 () Bool)

(declare-fun call!263399 () List!38534)

(assert (=> bm!263392 (= call!263399 call!263397)))

(declare-fun b!3644290 () Bool)

(declare-fun e!2256027 () List!38534)

(assert (=> b!3644290 (= e!2256027 Nil!38410)))

(declare-fun b!3644291 () Bool)

(declare-fun e!2256029 () List!38534)

(declare-fun call!263400 () List!38534)

(assert (=> b!3644291 (= e!2256029 call!263400)))

(declare-fun b!3644292 () Bool)

(assert (=> b!3644292 (= e!2256026 (Cons!38410 (c!629926 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) Nil!38410))))

(declare-fun b!3644293 () Bool)

(assert (=> b!3644293 (= e!2256028 e!2256029)))

(declare-fun c!630030 () Bool)

(assert (=> b!3644293 (= c!630030 ((_ is Union!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun call!263398 () List!38534)

(declare-fun bm!263393 () Bool)

(assert (=> bm!263393 (= call!263400 (++!9558 (ite c!630030 call!263398 call!263399) (ite c!630030 call!263399 call!263398)))))

(declare-fun bm!263394 () Bool)

(assert (=> bm!263394 (= call!263397 (usedCharacters!954 (ite c!630031 (reg!10830 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (ite c!630030 (regTwo!21515 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (regOne!21514 (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))))

(declare-fun b!3644294 () Bool)

(assert (=> b!3644294 (= e!2256027 e!2256026)))

(declare-fun c!630033 () Bool)

(assert (=> b!3644294 (= c!630033 ((_ is ElementMatch!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun d!1071308 () Bool)

(declare-fun c!630032 () Bool)

(assert (=> d!1071308 (= c!630032 (or ((_ is EmptyExpr!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) ((_ is EmptyLang!10501) (regex!5742 (rule!8530 (_1!22274 lt!1262263))))))))

(assert (=> d!1071308 (= (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) e!2256027)))

(declare-fun b!3644295 () Bool)

(assert (=> b!3644295 (= e!2256029 call!263400)))

(declare-fun bm!263395 () Bool)

(assert (=> bm!263395 (= call!263398 (usedCharacters!954 (ite c!630030 (regOne!21515 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) (regTwo!21514 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))))))))

(assert (= (and d!1071308 c!630032) b!3644290))

(assert (= (and d!1071308 (not c!630032)) b!3644294))

(assert (= (and b!3644294 c!630033) b!3644292))

(assert (= (and b!3644294 (not c!630033)) b!3644289))

(assert (= (and b!3644289 c!630031) b!3644288))

(assert (= (and b!3644289 (not c!630031)) b!3644293))

(assert (= (and b!3644293 c!630030) b!3644295))

(assert (= (and b!3644293 (not c!630030)) b!3644291))

(assert (= (or b!3644295 b!3644291) bm!263395))

(assert (= (or b!3644295 b!3644291) bm!263392))

(assert (= (or b!3644295 b!3644291) bm!263393))

(assert (= (or b!3644288 bm!263392) bm!263394))

(declare-fun m!4147783 () Bool)

(assert (=> bm!263393 m!4147783))

(declare-fun m!4147785 () Bool)

(assert (=> bm!263394 m!4147785))

(declare-fun m!4147787 () Bool)

(assert (=> bm!263395 m!4147787))

(assert (=> b!3643810 d!1071308))

(declare-fun d!1071310 () Bool)

(assert (=> d!1071310 (not (contains!7549 (usedCharacters!954 (regex!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262259))))

(declare-fun lt!1262370 () Unit!55280)

(declare-fun choose!21447 (LexerInterface!5331 List!38535 List!38535 Rule!11284 Rule!11284 C!21188) Unit!55280)

(assert (=> d!1071310 (= lt!1262370 (choose!21447 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8530 (_1!22274 lt!1262263)) lt!1262259))))

(assert (=> d!1071310 (rulesInvariant!4728 thiss!23823 rules!3307)))

(assert (=> d!1071310 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!270 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8530 (_1!22274 lt!1262263)) lt!1262259) lt!1262370)))

(declare-fun bs!572039 () Bool)

(assert (= bs!572039 d!1071310))

(assert (=> bs!572039 m!4147337))

(assert (=> bs!572039 m!4147337))

(assert (=> bs!572039 m!4147339))

(declare-fun m!4147789 () Bool)

(assert (=> bs!572039 m!4147789))

(assert (=> bs!572039 m!4147273))

(assert (=> b!3643810 d!1071310))

(declare-fun d!1071312 () Bool)

(assert (=> d!1071312 (= (get!12593 lt!1262271) (v!37952 lt!1262271))))

(assert (=> b!3643833 d!1071312))

(declare-fun d!1071314 () Bool)

(declare-fun lt!1262373 () Int)

(assert (=> d!1071314 (= lt!1262373 (size!29321 (list!14224 lt!1262251)))))

(declare-fun size!29323 (Conc!11731) Int)

(assert (=> d!1071314 (= lt!1262373 (size!29323 (c!629927 lt!1262251)))))

(assert (=> d!1071314 (= (size!29320 lt!1262251) lt!1262373)))

(declare-fun bs!572040 () Bool)

(assert (= bs!572040 d!1071314))

(assert (=> bs!572040 m!4147397))

(assert (=> bs!572040 m!4147397))

(declare-fun m!4147791 () Bool)

(assert (=> bs!572040 m!4147791))

(declare-fun m!4147793 () Bool)

(assert (=> bs!572040 m!4147793))

(assert (=> b!3643812 d!1071314))

(declare-fun b!3644394 () Bool)

(declare-fun e!2256088 () Bool)

(assert (=> b!3644394 (= e!2256088 true)))

(declare-fun d!1071316 () Bool)

(assert (=> d!1071316 e!2256088))

(assert (= d!1071316 b!3644394))

(declare-fun order!21131 () Int)

(declare-fun lambda!124424 () Int)

(declare-fun order!21133 () Int)

(declare-fun dynLambda!16730 (Int Int) Int)

(declare-fun dynLambda!16731 (Int Int) Int)

(assert (=> b!3644394 (< (dynLambda!16730 order!21131 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) (dynLambda!16731 order!21133 lambda!124424))))

(declare-fun order!21135 () Int)

(declare-fun dynLambda!16732 (Int Int) Int)

(assert (=> b!3644394 (< (dynLambda!16732 order!21135 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) (dynLambda!16731 order!21133 lambda!124424))))

(assert (=> d!1071316 (= (list!14224 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251))) (list!14224 lt!1262251))))

(declare-fun lt!1262421 () Unit!55280)

(declare-fun ForallOf!704 (Int BalanceConc!23076) Unit!55280)

(assert (=> d!1071316 (= lt!1262421 (ForallOf!704 lambda!124424 lt!1262251))))

(assert (=> d!1071316 (= (lemmaSemiInverse!1491 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251) lt!1262421)))

(declare-fun b_lambda!108053 () Bool)

(assert (=> (not b_lambda!108053) (not d!1071316)))

(declare-fun t!296864 () Bool)

(declare-fun tb!210085 () Bool)

(assert (=> (and b!3643816 (= (toChars!7893 (transformation!5742 (rule!8530 token!511))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296864) tb!210085))

(declare-fun b!3644395 () Bool)

(declare-fun tp!1111419 () Bool)

(declare-fun e!2256089 () Bool)

(assert (=> b!3644395 (= e!2256089 (and (inv!51853 (c!629927 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251)))) tp!1111419))))

(declare-fun result!255854 () Bool)

(assert (=> tb!210085 (= result!255854 (and (inv!51854 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251))) e!2256089))))

(assert (= tb!210085 b!3644395))

(declare-fun m!4147937 () Bool)

(assert (=> b!3644395 m!4147937))

(declare-fun m!4147939 () Bool)

(assert (=> tb!210085 m!4147939))

(assert (=> d!1071316 t!296864))

(declare-fun b_and!268979 () Bool)

(assert (= b_and!268915 (and (=> t!296864 result!255854) b_and!268979)))

(declare-fun tb!210087 () Bool)

(declare-fun t!296866 () Bool)

(assert (=> (and b!3643803 (= (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296866) tb!210087))

(declare-fun result!255856 () Bool)

(assert (= result!255856 result!255854))

(assert (=> d!1071316 t!296866))

(declare-fun b_and!268981 () Bool)

(assert (= b_and!268917 (and (=> t!296866 result!255856) b_and!268981)))

(declare-fun t!296868 () Bool)

(declare-fun tb!210089 () Bool)

(assert (=> (and b!3643838 (= (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296868) tb!210089))

(declare-fun result!255858 () Bool)

(assert (= result!255858 result!255854))

(assert (=> d!1071316 t!296868))

(declare-fun b_and!268983 () Bool)

(assert (= b_and!268919 (and (=> t!296868 result!255858) b_and!268983)))

(declare-fun t!296870 () Bool)

(declare-fun tb!210091 () Bool)

(assert (=> (and b!3643809 (= (toChars!7893 (transformation!5742 rule!403)) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296870) tb!210091))

(declare-fun result!255860 () Bool)

(assert (= result!255860 result!255854))

(assert (=> d!1071316 t!296870))

(declare-fun b_and!268985 () Bool)

(assert (= b_and!268921 (and (=> t!296870 result!255860) b_and!268985)))

(declare-fun b_lambda!108055 () Bool)

(assert (=> (not b_lambda!108055) (not d!1071316)))

(declare-fun t!296872 () Bool)

(declare-fun tb!210093 () Bool)

(assert (=> (and b!3643816 (= (toValue!8034 (transformation!5742 (rule!8530 token!511))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296872) tb!210093))

(declare-fun result!255862 () Bool)

(assert (=> tb!210093 (= result!255862 (inv!21 (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251)))))

(declare-fun m!4147941 () Bool)

(assert (=> tb!210093 m!4147941))

(assert (=> d!1071316 t!296872))

(declare-fun b_and!268987 () Bool)

(assert (= b_and!268907 (and (=> t!296872 result!255862) b_and!268987)))

(declare-fun tb!210095 () Bool)

(declare-fun t!296874 () Bool)

(assert (=> (and b!3643803 (= (toValue!8034 (transformation!5742 (h!43831 rules!3307))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296874) tb!210095))

(declare-fun result!255864 () Bool)

(assert (= result!255864 result!255862))

(assert (=> d!1071316 t!296874))

(declare-fun b_and!268989 () Bool)

(assert (= b_and!268909 (and (=> t!296874 result!255864) b_and!268989)))

(declare-fun tb!210097 () Bool)

(declare-fun t!296876 () Bool)

(assert (=> (and b!3643838 (= (toValue!8034 (transformation!5742 anOtherTypeRule!33)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296876) tb!210097))

(declare-fun result!255866 () Bool)

(assert (= result!255866 result!255862))

(assert (=> d!1071316 t!296876))

(declare-fun b_and!268991 () Bool)

(assert (= b_and!268911 (and (=> t!296876 result!255866) b_and!268991)))

(declare-fun t!296878 () Bool)

(declare-fun tb!210099 () Bool)

(assert (=> (and b!3643809 (= (toValue!8034 (transformation!5742 rule!403)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296878) tb!210099))

(declare-fun result!255868 () Bool)

(assert (= result!255868 result!255862))

(assert (=> d!1071316 t!296878))

(declare-fun b_and!268993 () Bool)

(assert (= b_and!268913 (and (=> t!296878 result!255868) b_and!268993)))

(declare-fun m!4147943 () Bool)

(assert (=> d!1071316 m!4147943))

(declare-fun m!4147945 () Bool)

(assert (=> d!1071316 m!4147945))

(assert (=> d!1071316 m!4147945))

(declare-fun m!4147947 () Bool)

(assert (=> d!1071316 m!4147947))

(assert (=> d!1071316 m!4147943))

(assert (=> d!1071316 m!4147397))

(declare-fun m!4147949 () Bool)

(assert (=> d!1071316 m!4147949))

(assert (=> b!3643812 d!1071316))

(declare-fun d!1071360 () Bool)

(assert (=> d!1071360 (= (size!29319 (_1!22274 lt!1262263)) (size!29321 (originalCharacters!6456 (_1!22274 lt!1262263))))))

(declare-fun Unit!55287 () Unit!55280)

(assert (=> d!1071360 (= (lemmaCharactersSize!787 (_1!22274 lt!1262263)) Unit!55287)))

(declare-fun bs!572048 () Bool)

(assert (= bs!572048 d!1071360))

(declare-fun m!4147951 () Bool)

(assert (=> bs!572048 m!4147951))

(assert (=> b!3643812 d!1071360))

(declare-fun d!1071362 () Bool)

(assert (=> d!1071362 (= (apply!9244 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251))))

(declare-fun b_lambda!108057 () Bool)

(assert (=> (not b_lambda!108057) (not d!1071362)))

(assert (=> d!1071362 t!296872))

(declare-fun b_and!268995 () Bool)

(assert (= b_and!268987 (and (=> t!296872 result!255862) b_and!268995)))

(assert (=> d!1071362 t!296874))

(declare-fun b_and!268997 () Bool)

(assert (= b_and!268989 (and (=> t!296874 result!255864) b_and!268997)))

(assert (=> d!1071362 t!296876))

(declare-fun b_and!268999 () Bool)

(assert (= b_and!268991 (and (=> t!296876 result!255866) b_and!268999)))

(assert (=> d!1071362 t!296878))

(declare-fun b_and!269001 () Bool)

(assert (= b_and!268993 (and (=> t!296878 result!255868) b_and!269001)))

(assert (=> d!1071362 m!4147943))

(assert (=> b!3643812 d!1071362))

(declare-fun b!3644402 () Bool)

(declare-fun e!2256095 () Bool)

(assert (=> b!3644402 (= e!2256095 true)))

(declare-fun d!1071364 () Bool)

(assert (=> d!1071364 e!2256095))

(assert (= d!1071364 b!3644402))

(declare-fun order!21137 () Int)

(declare-fun lambda!124427 () Int)

(declare-fun dynLambda!16733 (Int Int) Int)

(assert (=> b!3644402 (< (dynLambda!16730 order!21131 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) (dynLambda!16733 order!21137 lambda!124427))))

(assert (=> b!3644402 (< (dynLambda!16732 order!21135 (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) (dynLambda!16733 order!21137 lambda!124427))))

(assert (=> d!1071364 (= (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) lt!1262251) (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263)))))))

(declare-fun lt!1262424 () Unit!55280)

(declare-fun Forall2of!362 (Int BalanceConc!23076 BalanceConc!23076) Unit!55280)

(assert (=> d!1071364 (= lt!1262424 (Forall2of!362 lambda!124427 lt!1262251 (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263)))))))

(assert (=> d!1071364 (= (list!14224 lt!1262251) (list!14224 (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263)))))))

(assert (=> d!1071364 (= (lemmaEqSameImage!925 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))) lt!1262251 (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263)))) lt!1262424)))

(declare-fun b_lambda!108059 () Bool)

(assert (=> (not b_lambda!108059) (not d!1071364)))

(assert (=> d!1071364 t!296872))

(declare-fun b_and!269003 () Bool)

(assert (= b_and!268995 (and (=> t!296872 result!255862) b_and!269003)))

(assert (=> d!1071364 t!296874))

(declare-fun b_and!269005 () Bool)

(assert (= b_and!268997 (and (=> t!296874 result!255864) b_and!269005)))

(assert (=> d!1071364 t!296876))

(declare-fun b_and!269007 () Bool)

(assert (= b_and!268999 (and (=> t!296876 result!255866) b_and!269007)))

(assert (=> d!1071364 t!296878))

(declare-fun b_and!269009 () Bool)

(assert (= b_and!269001 (and (=> t!296878 result!255868) b_and!269009)))

(declare-fun b_lambda!108061 () Bool)

(assert (=> (not b_lambda!108061) (not d!1071364)))

(declare-fun tb!210101 () Bool)

(declare-fun t!296880 () Bool)

(assert (=> (and b!3643816 (= (toValue!8034 (transformation!5742 (rule!8530 token!511))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296880) tb!210101))

(declare-fun result!255870 () Bool)

(assert (=> tb!210101 (= result!255870 (inv!21 (dynLambda!16727 (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263)))) (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263))))))))

(declare-fun m!4147953 () Bool)

(assert (=> tb!210101 m!4147953))

(assert (=> d!1071364 t!296880))

(declare-fun b_and!269011 () Bool)

(assert (= b_and!269003 (and (=> t!296880 result!255870) b_and!269011)))

(declare-fun tb!210103 () Bool)

(declare-fun t!296882 () Bool)

(assert (=> (and b!3643803 (= (toValue!8034 (transformation!5742 (h!43831 rules!3307))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296882) tb!210103))

(declare-fun result!255872 () Bool)

(assert (= result!255872 result!255870))

(assert (=> d!1071364 t!296882))

(declare-fun b_and!269013 () Bool)

(assert (= b_and!269005 (and (=> t!296882 result!255872) b_and!269013)))

(declare-fun tb!210105 () Bool)

(declare-fun t!296884 () Bool)

(assert (=> (and b!3643838 (= (toValue!8034 (transformation!5742 anOtherTypeRule!33)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296884) tb!210105))

(declare-fun result!255874 () Bool)

(assert (= result!255874 result!255870))

(assert (=> d!1071364 t!296884))

(declare-fun b_and!269015 () Bool)

(assert (= b_and!269007 (and (=> t!296884 result!255874) b_and!269015)))

(declare-fun tb!210107 () Bool)

(declare-fun t!296886 () Bool)

(assert (=> (and b!3643809 (= (toValue!8034 (transformation!5742 rule!403)) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296886) tb!210107))

(declare-fun result!255876 () Bool)

(assert (= result!255876 result!255870))

(assert (=> d!1071364 t!296886))

(declare-fun b_and!269017 () Bool)

(assert (= b_and!269009 (and (=> t!296886 result!255876) b_and!269017)))

(assert (=> d!1071364 m!4147359))

(declare-fun m!4147955 () Bool)

(assert (=> d!1071364 m!4147955))

(assert (=> d!1071364 m!4147943))

(assert (=> d!1071364 m!4147397))

(assert (=> d!1071364 m!4147359))

(declare-fun m!4147957 () Bool)

(assert (=> d!1071364 m!4147957))

(assert (=> d!1071364 m!4147359))

(declare-fun m!4147959 () Bool)

(assert (=> d!1071364 m!4147959))

(assert (=> b!3643812 d!1071364))

(declare-fun d!1071366 () Bool)

(assert (=> d!1071366 (= (seqFromList!4291 (originalCharacters!6456 (_1!22274 lt!1262263))) (fromListB!1982 (originalCharacters!6456 (_1!22274 lt!1262263))))))

(declare-fun bs!572049 () Bool)

(assert (= bs!572049 d!1071366))

(declare-fun m!4147961 () Bool)

(assert (=> bs!572049 m!4147961))

(assert (=> b!3643812 d!1071366))

(declare-fun d!1071368 () Bool)

(declare-fun res!1477697 () Bool)

(declare-fun e!2256099 () Bool)

(assert (=> d!1071368 (=> (not res!1477697) (not e!2256099))))

(assert (=> d!1071368 (= res!1477697 (not (isEmpty!22748 (originalCharacters!6456 token!511))))))

(assert (=> d!1071368 (= (inv!51850 token!511) e!2256099)))

(declare-fun b!3644407 () Bool)

(declare-fun res!1477698 () Bool)

(assert (=> b!3644407 (=> (not res!1477698) (not e!2256099))))

(assert (=> b!3644407 (= res!1477698 (= (originalCharacters!6456 token!511) (list!14224 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (value!184107 token!511)))))))

(declare-fun b!3644408 () Bool)

(assert (=> b!3644408 (= e!2256099 (= (size!29319 token!511) (size!29321 (originalCharacters!6456 token!511))))))

(assert (= (and d!1071368 res!1477697) b!3644407))

(assert (= (and b!3644407 res!1477698) b!3644408))

(declare-fun b_lambda!108063 () Bool)

(assert (=> (not b_lambda!108063) (not b!3644407)))

(declare-fun t!296888 () Bool)

(declare-fun tb!210109 () Bool)

(assert (=> (and b!3643816 (= (toChars!7893 (transformation!5742 (rule!8530 token!511))) (toChars!7893 (transformation!5742 (rule!8530 token!511)))) t!296888) tb!210109))

(declare-fun b!3644409 () Bool)

(declare-fun e!2256100 () Bool)

(declare-fun tp!1111420 () Bool)

(assert (=> b!3644409 (= e!2256100 (and (inv!51853 (c!629927 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (value!184107 token!511)))) tp!1111420))))

(declare-fun result!255878 () Bool)

(assert (=> tb!210109 (= result!255878 (and (inv!51854 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (value!184107 token!511))) e!2256100))))

(assert (= tb!210109 b!3644409))

(declare-fun m!4147963 () Bool)

(assert (=> b!3644409 m!4147963))

(declare-fun m!4147965 () Bool)

(assert (=> tb!210109 m!4147965))

(assert (=> b!3644407 t!296888))

(declare-fun b_and!269019 () Bool)

(assert (= b_and!268979 (and (=> t!296888 result!255878) b_and!269019)))

(declare-fun tb!210111 () Bool)

(declare-fun t!296890 () Bool)

(assert (=> (and b!3643803 (= (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toChars!7893 (transformation!5742 (rule!8530 token!511)))) t!296890) tb!210111))

(declare-fun result!255880 () Bool)

(assert (= result!255880 result!255878))

(assert (=> b!3644407 t!296890))

(declare-fun b_and!269021 () Bool)

(assert (= b_and!268981 (and (=> t!296890 result!255880) b_and!269021)))

(declare-fun tb!210113 () Bool)

(declare-fun t!296892 () Bool)

(assert (=> (and b!3643838 (= (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toChars!7893 (transformation!5742 (rule!8530 token!511)))) t!296892) tb!210113))

(declare-fun result!255882 () Bool)

(assert (= result!255882 result!255878))

(assert (=> b!3644407 t!296892))

(declare-fun b_and!269023 () Bool)

(assert (= b_and!268983 (and (=> t!296892 result!255882) b_and!269023)))

(declare-fun tb!210115 () Bool)

(declare-fun t!296894 () Bool)

(assert (=> (and b!3643809 (= (toChars!7893 (transformation!5742 rule!403)) (toChars!7893 (transformation!5742 (rule!8530 token!511)))) t!296894) tb!210115))

(declare-fun result!255884 () Bool)

(assert (= result!255884 result!255878))

(assert (=> b!3644407 t!296894))

(declare-fun b_and!269025 () Bool)

(assert (= b_and!268985 (and (=> t!296894 result!255884) b_and!269025)))

(declare-fun m!4147967 () Bool)

(assert (=> d!1071368 m!4147967))

(declare-fun m!4147969 () Bool)

(assert (=> b!3644407 m!4147969))

(assert (=> b!3644407 m!4147969))

(declare-fun m!4147971 () Bool)

(assert (=> b!3644407 m!4147971))

(declare-fun m!4147973 () Bool)

(assert (=> b!3644408 m!4147973))

(assert (=> start!340442 d!1071368))

(declare-fun d!1071370 () Bool)

(assert (=> d!1071370 (isPrefix!3105 lt!1262248 (++!9558 lt!1262248 suffix!1395))))

(declare-fun lt!1262427 () Unit!55280)

(declare-fun choose!21449 (List!38534 List!38534) Unit!55280)

(assert (=> d!1071370 (= lt!1262427 (choose!21449 lt!1262248 suffix!1395))))

(assert (=> d!1071370 (= (lemmaConcatTwoListThenFirstIsPrefix!2024 lt!1262248 suffix!1395) lt!1262427)))

(declare-fun bs!572050 () Bool)

(assert (= bs!572050 d!1071370))

(assert (=> bs!572050 m!4147385))

(assert (=> bs!572050 m!4147385))

(declare-fun m!4147975 () Bool)

(assert (=> bs!572050 m!4147975))

(declare-fun m!4147977 () Bool)

(assert (=> bs!572050 m!4147977))

(assert (=> b!3643811 d!1071370))

(declare-fun b!3644421 () Bool)

(declare-fun e!2256108 () Bool)

(assert (=> b!3644421 (= e!2256108 (>= (size!29321 lt!1262269) (size!29321 lt!1262256)))))

(declare-fun b!3644420 () Bool)

(declare-fun e!2256107 () Bool)

(assert (=> b!3644420 (= e!2256107 (isPrefix!3105 (tail!5645 lt!1262256) (tail!5645 lt!1262269)))))

(declare-fun b!3644419 () Bool)

(declare-fun res!1477710 () Bool)

(assert (=> b!3644419 (=> (not res!1477710) (not e!2256107))))

(assert (=> b!3644419 (= res!1477710 (= (head!7746 lt!1262256) (head!7746 lt!1262269)))))

(declare-fun b!3644418 () Bool)

(declare-fun e!2256109 () Bool)

(assert (=> b!3644418 (= e!2256109 e!2256107)))

(declare-fun res!1477709 () Bool)

(assert (=> b!3644418 (=> (not res!1477709) (not e!2256107))))

(assert (=> b!3644418 (= res!1477709 (not ((_ is Nil!38410) lt!1262269)))))

(declare-fun d!1071372 () Bool)

(assert (=> d!1071372 e!2256108))

(declare-fun res!1477707 () Bool)

(assert (=> d!1071372 (=> res!1477707 e!2256108)))

(declare-fun lt!1262430 () Bool)

(assert (=> d!1071372 (= res!1477707 (not lt!1262430))))

(assert (=> d!1071372 (= lt!1262430 e!2256109)))

(declare-fun res!1477708 () Bool)

(assert (=> d!1071372 (=> res!1477708 e!2256109)))

(assert (=> d!1071372 (= res!1477708 ((_ is Nil!38410) lt!1262256))))

(assert (=> d!1071372 (= (isPrefix!3105 lt!1262256 lt!1262269) lt!1262430)))

(assert (= (and d!1071372 (not res!1477708)) b!3644418))

(assert (= (and b!3644418 res!1477709) b!3644419))

(assert (= (and b!3644419 res!1477710) b!3644420))

(assert (= (and d!1071372 (not res!1477707)) b!3644421))

(assert (=> b!3644421 m!4147633))

(assert (=> b!3644421 m!4147295))

(assert (=> b!3644420 m!4147467))

(assert (=> b!3644420 m!4147687))

(assert (=> b!3644420 m!4147467))

(assert (=> b!3644420 m!4147687))

(declare-fun m!4147979 () Bool)

(assert (=> b!3644420 m!4147979))

(assert (=> b!3644419 m!4147277))

(declare-fun m!4147981 () Bool)

(assert (=> b!3644419 m!4147981))

(assert (=> b!3643811 d!1071372))

(assert (=> b!3643811 d!1071280))

(declare-fun d!1071374 () Bool)

(declare-fun e!2256115 () Bool)

(assert (=> d!1071374 e!2256115))

(declare-fun res!1477716 () Bool)

(assert (=> d!1071374 (=> (not res!1477716) (not e!2256115))))

(declare-fun lt!1262433 () List!38534)

(assert (=> d!1071374 (= res!1477716 (= (content!5534 lt!1262433) ((_ map or) (content!5534 lt!1262248) (content!5534 suffix!1395))))))

(declare-fun e!2256114 () List!38534)

(assert (=> d!1071374 (= lt!1262433 e!2256114)))

(declare-fun c!630053 () Bool)

(assert (=> d!1071374 (= c!630053 ((_ is Nil!38410) lt!1262248))))

(assert (=> d!1071374 (= (++!9558 lt!1262248 suffix!1395) lt!1262433)))

(declare-fun b!3644430 () Bool)

(assert (=> b!3644430 (= e!2256114 suffix!1395)))

(declare-fun b!3644431 () Bool)

(assert (=> b!3644431 (= e!2256114 (Cons!38410 (h!43830 lt!1262248) (++!9558 (t!296797 lt!1262248) suffix!1395)))))

(declare-fun b!3644433 () Bool)

(assert (=> b!3644433 (= e!2256115 (or (not (= suffix!1395 Nil!38410)) (= lt!1262433 lt!1262248)))))

(declare-fun b!3644432 () Bool)

(declare-fun res!1477715 () Bool)

(assert (=> b!3644432 (=> (not res!1477715) (not e!2256115))))

(assert (=> b!3644432 (= res!1477715 (= (size!29321 lt!1262433) (+ (size!29321 lt!1262248) (size!29321 suffix!1395))))))

(assert (= (and d!1071374 c!630053) b!3644430))

(assert (= (and d!1071374 (not c!630053)) b!3644431))

(assert (= (and d!1071374 res!1477716) b!3644432))

(assert (= (and b!3644432 res!1477715) b!3644433))

(declare-fun m!4147983 () Bool)

(assert (=> d!1071374 m!4147983))

(assert (=> d!1071374 m!4147563))

(declare-fun m!4147985 () Bool)

(assert (=> d!1071374 m!4147985))

(declare-fun m!4147987 () Bool)

(assert (=> b!3644431 m!4147987))

(declare-fun m!4147989 () Bool)

(assert (=> b!3644432 m!4147989))

(declare-fun m!4147991 () Bool)

(assert (=> b!3644432 m!4147991))

(declare-fun m!4147993 () Bool)

(assert (=> b!3644432 m!4147993))

(assert (=> b!3643811 d!1071374))

(declare-fun b!3644452 () Bool)

(declare-fun res!1477732 () Bool)

(declare-fun e!2256122 () Bool)

(assert (=> b!3644452 (=> (not res!1477732) (not e!2256122))))

(declare-fun lt!1262447 () Option!8113)

(assert (=> b!3644452 (= res!1477732 (< (size!29321 (_2!22274 (get!12593 lt!1262447))) (size!29321 lt!1262269)))))

(declare-fun b!3644453 () Bool)

(declare-fun res!1477737 () Bool)

(assert (=> b!3644453 (=> (not res!1477737) (not e!2256122))))

(assert (=> b!3644453 (= res!1477737 (matchR!5070 (regex!5742 (rule!8530 (_1!22274 (get!12593 lt!1262447)))) (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262447))))))))

(declare-fun b!3644454 () Bool)

(declare-fun res!1477734 () Bool)

(assert (=> b!3644454 (=> (not res!1477734) (not e!2256122))))

(assert (=> b!3644454 (= res!1477734 (= (++!9558 (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262447)))) (_2!22274 (get!12593 lt!1262447))) lt!1262269))))

(declare-fun b!3644455 () Bool)

(declare-fun e!2256123 () Bool)

(assert (=> b!3644455 (= e!2256123 e!2256122)))

(declare-fun res!1477736 () Bool)

(assert (=> b!3644455 (=> (not res!1477736) (not e!2256122))))

(assert (=> b!3644455 (= res!1477736 (isDefined!6345 lt!1262447))))

(declare-fun d!1071376 () Bool)

(assert (=> d!1071376 e!2256123))

(declare-fun res!1477733 () Bool)

(assert (=> d!1071376 (=> res!1477733 e!2256123)))

(assert (=> d!1071376 (= res!1477733 (isEmpty!22751 lt!1262447))))

(declare-fun e!2256124 () Option!8113)

(assert (=> d!1071376 (= lt!1262447 e!2256124)))

(declare-fun c!630056 () Bool)

(assert (=> d!1071376 (= c!630056 (and ((_ is Cons!38411) rules!3307) ((_ is Nil!38411) (t!296798 rules!3307))))))

(declare-fun lt!1262444 () Unit!55280)

(declare-fun lt!1262446 () Unit!55280)

(assert (=> d!1071376 (= lt!1262444 lt!1262446)))

(assert (=> d!1071376 (isPrefix!3105 lt!1262269 lt!1262269)))

(declare-fun lemmaIsPrefixRefl!1968 (List!38534 List!38534) Unit!55280)

(assert (=> d!1071376 (= lt!1262446 (lemmaIsPrefixRefl!1968 lt!1262269 lt!1262269))))

(declare-fun rulesValidInductive!2033 (LexerInterface!5331 List!38535) Bool)

(assert (=> d!1071376 (rulesValidInductive!2033 thiss!23823 rules!3307)))

(assert (=> d!1071376 (= (maxPrefix!2865 thiss!23823 rules!3307 lt!1262269) lt!1262447)))

(declare-fun call!263404 () Option!8113)

(declare-fun bm!263399 () Bool)

(assert (=> bm!263399 (= call!263404 (maxPrefixOneRule!2003 thiss!23823 (h!43831 rules!3307) lt!1262269))))

(declare-fun b!3644456 () Bool)

(assert (=> b!3644456 (= e!2256124 call!263404)))

(declare-fun b!3644457 () Bool)

(declare-fun res!1477731 () Bool)

(assert (=> b!3644457 (=> (not res!1477731) (not e!2256122))))

(assert (=> b!3644457 (= res!1477731 (= (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262447)))) (originalCharacters!6456 (_1!22274 (get!12593 lt!1262447)))))))

(declare-fun b!3644458 () Bool)

(declare-fun res!1477735 () Bool)

(assert (=> b!3644458 (=> (not res!1477735) (not e!2256122))))

(assert (=> b!3644458 (= res!1477735 (= (value!184107 (_1!22274 (get!12593 lt!1262447))) (apply!9244 (transformation!5742 (rule!8530 (_1!22274 (get!12593 lt!1262447)))) (seqFromList!4291 (originalCharacters!6456 (_1!22274 (get!12593 lt!1262447)))))))))

(declare-fun b!3644459 () Bool)

(assert (=> b!3644459 (= e!2256122 (contains!7550 rules!3307 (rule!8530 (_1!22274 (get!12593 lt!1262447)))))))

(declare-fun b!3644460 () Bool)

(declare-fun lt!1262448 () Option!8113)

(declare-fun lt!1262445 () Option!8113)

(assert (=> b!3644460 (= e!2256124 (ite (and ((_ is None!8112) lt!1262448) ((_ is None!8112) lt!1262445)) None!8112 (ite ((_ is None!8112) lt!1262445) lt!1262448 (ite ((_ is None!8112) lt!1262448) lt!1262445 (ite (>= (size!29319 (_1!22274 (v!37952 lt!1262448))) (size!29319 (_1!22274 (v!37952 lt!1262445)))) lt!1262448 lt!1262445)))))))

(assert (=> b!3644460 (= lt!1262448 call!263404)))

(assert (=> b!3644460 (= lt!1262445 (maxPrefix!2865 thiss!23823 (t!296798 rules!3307) lt!1262269))))

(assert (= (and d!1071376 c!630056) b!3644456))

(assert (= (and d!1071376 (not c!630056)) b!3644460))

(assert (= (or b!3644456 b!3644460) bm!263399))

(assert (= (and d!1071376 (not res!1477733)) b!3644455))

(assert (= (and b!3644455 res!1477736) b!3644457))

(assert (= (and b!3644457 res!1477731) b!3644452))

(assert (= (and b!3644452 res!1477732) b!3644454))

(assert (= (and b!3644454 res!1477734) b!3644458))

(assert (= (and b!3644458 res!1477735) b!3644453))

(assert (= (and b!3644453 res!1477737) b!3644459))

(declare-fun m!4147995 () Bool)

(assert (=> b!3644455 m!4147995))

(declare-fun m!4147997 () Bool)

(assert (=> b!3644459 m!4147997))

(declare-fun m!4147999 () Bool)

(assert (=> b!3644459 m!4147999))

(declare-fun m!4148001 () Bool)

(assert (=> b!3644460 m!4148001))

(assert (=> b!3644452 m!4147997))

(declare-fun m!4148003 () Bool)

(assert (=> b!3644452 m!4148003))

(assert (=> b!3644452 m!4147633))

(declare-fun m!4148005 () Bool)

(assert (=> bm!263399 m!4148005))

(assert (=> b!3644457 m!4147997))

(declare-fun m!4148007 () Bool)

(assert (=> b!3644457 m!4148007))

(assert (=> b!3644457 m!4148007))

(declare-fun m!4148009 () Bool)

(assert (=> b!3644457 m!4148009))

(assert (=> b!3644458 m!4147997))

(declare-fun m!4148011 () Bool)

(assert (=> b!3644458 m!4148011))

(assert (=> b!3644458 m!4148011))

(declare-fun m!4148013 () Bool)

(assert (=> b!3644458 m!4148013))

(assert (=> b!3644454 m!4147997))

(assert (=> b!3644454 m!4148007))

(assert (=> b!3644454 m!4148007))

(assert (=> b!3644454 m!4148009))

(assert (=> b!3644454 m!4148009))

(declare-fun m!4148015 () Bool)

(assert (=> b!3644454 m!4148015))

(assert (=> b!3644453 m!4147997))

(assert (=> b!3644453 m!4148007))

(assert (=> b!3644453 m!4148007))

(assert (=> b!3644453 m!4148009))

(assert (=> b!3644453 m!4148009))

(declare-fun m!4148017 () Bool)

(assert (=> b!3644453 m!4148017))

(declare-fun m!4148019 () Bool)

(assert (=> d!1071376 m!4148019))

(declare-fun m!4148021 () Bool)

(assert (=> d!1071376 m!4148021))

(declare-fun m!4148023 () Bool)

(assert (=> d!1071376 m!4148023))

(declare-fun m!4148025 () Bool)

(assert (=> d!1071376 m!4148025))

(assert (=> b!3643811 d!1071376))

(declare-fun d!1071378 () Bool)

(declare-fun isEmpty!22753 (Option!8112) Bool)

(assert (=> d!1071378 (= (isDefined!6344 lt!1262252) (not (isEmpty!22753 lt!1262252)))))

(declare-fun bs!572051 () Bool)

(assert (= bs!572051 d!1071378))

(declare-fun m!4148027 () Bool)

(assert (=> bs!572051 m!4148027))

(assert (=> b!3643811 d!1071378))

(declare-fun d!1071380 () Bool)

(declare-fun e!2256126 () Bool)

(assert (=> d!1071380 e!2256126))

(declare-fun res!1477739 () Bool)

(assert (=> d!1071380 (=> (not res!1477739) (not e!2256126))))

(declare-fun lt!1262449 () List!38534)

(assert (=> d!1071380 (= res!1477739 (= (content!5534 lt!1262449) ((_ map or) (content!5534 lt!1262256) (content!5534 (_2!22274 lt!1262263)))))))

(declare-fun e!2256125 () List!38534)

(assert (=> d!1071380 (= lt!1262449 e!2256125)))

(declare-fun c!630057 () Bool)

(assert (=> d!1071380 (= c!630057 ((_ is Nil!38410) lt!1262256))))

(assert (=> d!1071380 (= (++!9558 lt!1262256 (_2!22274 lt!1262263)) lt!1262449)))

(declare-fun b!3644461 () Bool)

(assert (=> b!3644461 (= e!2256125 (_2!22274 lt!1262263))))

(declare-fun b!3644462 () Bool)

(assert (=> b!3644462 (= e!2256125 (Cons!38410 (h!43830 lt!1262256) (++!9558 (t!296797 lt!1262256) (_2!22274 lt!1262263))))))

(declare-fun b!3644464 () Bool)

(assert (=> b!3644464 (= e!2256126 (or (not (= (_2!22274 lt!1262263) Nil!38410)) (= lt!1262449 lt!1262256)))))

(declare-fun b!3644463 () Bool)

(declare-fun res!1477738 () Bool)

(assert (=> b!3644463 (=> (not res!1477738) (not e!2256126))))

(assert (=> b!3644463 (= res!1477738 (= (size!29321 lt!1262449) (+ (size!29321 lt!1262256) (size!29321 (_2!22274 lt!1262263)))))))

(assert (= (and d!1071380 c!630057) b!3644461))

(assert (= (and d!1071380 (not c!630057)) b!3644462))

(assert (= (and d!1071380 res!1477739) b!3644463))

(assert (= (and b!3644463 res!1477738) b!3644464))

(declare-fun m!4148029 () Bool)

(assert (=> d!1071380 m!4148029))

(declare-fun m!4148031 () Bool)

(assert (=> d!1071380 m!4148031))

(declare-fun m!4148033 () Bool)

(assert (=> d!1071380 m!4148033))

(declare-fun m!4148035 () Bool)

(assert (=> b!3644462 m!4148035))

(declare-fun m!4148037 () Bool)

(assert (=> b!3644463 m!4148037))

(assert (=> b!3644463 m!4147295))

(declare-fun m!4148039 () Bool)

(assert (=> b!3644463 m!4148039))

(assert (=> b!3643811 d!1071380))

(declare-fun d!1071382 () Bool)

(declare-fun e!2256142 () Bool)

(assert (=> d!1071382 e!2256142))

(declare-fun res!1477748 () Bool)

(assert (=> d!1071382 (=> res!1477748 e!2256142)))

(declare-fun lt!1262490 () Option!8112)

(assert (=> d!1071382 (= res!1477748 (isEmpty!22753 lt!1262490))))

(declare-fun e!2256139 () Option!8112)

(assert (=> d!1071382 (= lt!1262490 e!2256139)))

(declare-fun c!630065 () Bool)

(assert (=> d!1071382 (= c!630065 (and ((_ is Cons!38411) rules!3307) (= (tag!6496 (h!43831 rules!3307)) (tag!6496 (rule!8530 (_1!22274 lt!1262263))))))))

(assert (=> d!1071382 (rulesInvariant!4728 thiss!23823 rules!3307)))

(assert (=> d!1071382 (= (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 (_1!22274 lt!1262263)))) lt!1262490)))

(declare-fun b!3644485 () Bool)

(declare-fun e!2256141 () Bool)

(assert (=> b!3644485 (= e!2256142 e!2256141)))

(declare-fun res!1477749 () Bool)

(assert (=> b!3644485 (=> (not res!1477749) (not e!2256141))))

(assert (=> b!3644485 (= res!1477749 (contains!7550 rules!3307 (get!12594 lt!1262490)))))

(declare-fun b!3644486 () Bool)

(declare-fun e!2256140 () Option!8112)

(assert (=> b!3644486 (= e!2256139 e!2256140)))

(declare-fun c!630064 () Bool)

(assert (=> b!3644486 (= c!630064 (and ((_ is Cons!38411) rules!3307) (not (= (tag!6496 (h!43831 rules!3307)) (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))))))

(declare-fun b!3644487 () Bool)

(assert (=> b!3644487 (= e!2256139 (Some!8111 (h!43831 rules!3307)))))

(declare-fun b!3644488 () Bool)

(assert (=> b!3644488 (= e!2256141 (= (tag!6496 (get!12594 lt!1262490)) (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun b!3644489 () Bool)

(declare-fun lt!1262492 () Unit!55280)

(declare-fun lt!1262491 () Unit!55280)

(assert (=> b!3644489 (= lt!1262492 lt!1262491)))

(assert (=> b!3644489 (rulesInvariant!4728 thiss!23823 (t!296798 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!577 (LexerInterface!5331 Rule!11284 List!38535) Unit!55280)

(assert (=> b!3644489 (= lt!1262491 (lemmaInvariantOnRulesThenOnTail!577 thiss!23823 (h!43831 rules!3307) (t!296798 rules!3307)))))

(assert (=> b!3644489 (= e!2256140 (getRuleFromTag!1346 thiss!23823 (t!296798 rules!3307) (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))))

(declare-fun b!3644490 () Bool)

(assert (=> b!3644490 (= e!2256140 None!8111)))

(assert (= (and d!1071382 c!630065) b!3644487))

(assert (= (and d!1071382 (not c!630065)) b!3644486))

(assert (= (and b!3644486 c!630064) b!3644489))

(assert (= (and b!3644486 (not c!630064)) b!3644490))

(assert (= (and d!1071382 (not res!1477748)) b!3644485))

(assert (= (and b!3644485 res!1477749) b!3644488))

(declare-fun m!4148041 () Bool)

(assert (=> d!1071382 m!4148041))

(assert (=> d!1071382 m!4147273))

(declare-fun m!4148043 () Bool)

(assert (=> b!3644485 m!4148043))

(assert (=> b!3644485 m!4148043))

(declare-fun m!4148045 () Bool)

(assert (=> b!3644485 m!4148045))

(assert (=> b!3644488 m!4148043))

(declare-fun m!4148047 () Bool)

(assert (=> b!3644489 m!4148047))

(declare-fun m!4148049 () Bool)

(assert (=> b!3644489 m!4148049))

(declare-fun m!4148051 () Bool)

(assert (=> b!3644489 m!4148051))

(assert (=> b!3643811 d!1071382))

(declare-fun b!3644592 () Bool)

(declare-fun res!1477787 () Bool)

(declare-fun e!2256199 () Bool)

(assert (=> b!3644592 (=> (not res!1477787) (not e!2256199))))

(declare-fun lt!1262573 () Token!10850)

(assert (=> b!3644592 (= res!1477787 (matchR!5070 (regex!5742 (get!12594 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 lt!1262573))))) (list!14224 (charsOf!3756 lt!1262573))))))

(declare-fun b!3644593 () Bool)

(assert (=> b!3644593 (= e!2256199 (= (rule!8530 lt!1262573) (get!12594 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 lt!1262573))))))))

(declare-fun b!3644595 () Bool)

(declare-fun e!2256198 () Unit!55280)

(declare-fun Unit!55288 () Unit!55280)

(assert (=> b!3644595 (= e!2256198 Unit!55288)))

(declare-fun b!3644594 () Bool)

(declare-fun Unit!55289 () Unit!55280)

(assert (=> b!3644594 (= e!2256198 Unit!55289)))

(declare-fun lt!1262572 () List!38534)

(assert (=> b!3644594 (= lt!1262572 (++!9558 lt!1262248 suffix!1395))))

(declare-fun lt!1262575 () Unit!55280)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!534 (LexerInterface!5331 Rule!11284 List!38535 List!38534) Unit!55280)

(assert (=> b!3644594 (= lt!1262575 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!534 thiss!23823 (rule!8530 lt!1262573) rules!3307 lt!1262572))))

(assert (=> b!3644594 (isEmpty!22751 (maxPrefixOneRule!2003 thiss!23823 (rule!8530 lt!1262573) lt!1262572))))

(declare-fun lt!1262571 () Unit!55280)

(assert (=> b!3644594 (= lt!1262571 lt!1262575)))

(declare-fun lt!1262581 () List!38534)

(assert (=> b!3644594 (= lt!1262581 (list!14224 (charsOf!3756 lt!1262573)))))

(declare-fun lt!1262577 () Unit!55280)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!522 (LexerInterface!5331 Rule!11284 List!38534 List!38534) Unit!55280)

(assert (=> b!3644594 (= lt!1262577 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!522 thiss!23823 (rule!8530 lt!1262573) lt!1262581 (++!9558 lt!1262248 suffix!1395)))))

(assert (=> b!3644594 (not (matchR!5070 (regex!5742 (rule!8530 lt!1262573)) lt!1262581))))

(declare-fun lt!1262570 () Unit!55280)

(assert (=> b!3644594 (= lt!1262570 lt!1262577)))

(assert (=> b!3644594 false))

(declare-fun d!1071384 () Bool)

(assert (=> d!1071384 (isDefined!6345 (maxPrefix!2865 thiss!23823 rules!3307 (++!9558 lt!1262248 suffix!1395)))))

(declare-fun lt!1262566 () Unit!55280)

(assert (=> d!1071384 (= lt!1262566 e!2256198)))

(declare-fun c!630077 () Bool)

(assert (=> d!1071384 (= c!630077 (isEmpty!22751 (maxPrefix!2865 thiss!23823 rules!3307 (++!9558 lt!1262248 suffix!1395))))))

(declare-fun lt!1262578 () Unit!55280)

(declare-fun lt!1262565 () Unit!55280)

(assert (=> d!1071384 (= lt!1262578 lt!1262565)))

(assert (=> d!1071384 e!2256199))

(declare-fun res!1477786 () Bool)

(assert (=> d!1071384 (=> (not res!1477786) (not e!2256199))))

(assert (=> d!1071384 (= res!1477786 (isDefined!6344 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 lt!1262573)))))))

(assert (=> d!1071384 (= lt!1262565 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1346 thiss!23823 rules!3307 lt!1262248 lt!1262573))))

(declare-fun lt!1262568 () Unit!55280)

(declare-fun lt!1262579 () Unit!55280)

(assert (=> d!1071384 (= lt!1262568 lt!1262579)))

(declare-fun lt!1262567 () List!38534)

(assert (=> d!1071384 (isPrefix!3105 lt!1262567 (++!9558 lt!1262248 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!498 (List!38534 List!38534 List!38534) Unit!55280)

(assert (=> d!1071384 (= lt!1262579 (lemmaPrefixStaysPrefixWhenAddingToSuffix!498 lt!1262567 lt!1262248 suffix!1395))))

(assert (=> d!1071384 (= lt!1262567 (list!14224 (charsOf!3756 lt!1262573)))))

(declare-fun lt!1262569 () Unit!55280)

(declare-fun lt!1262576 () Unit!55280)

(assert (=> d!1071384 (= lt!1262569 lt!1262576)))

(declare-fun lt!1262574 () List!38534)

(declare-fun lt!1262580 () List!38534)

(assert (=> d!1071384 (isPrefix!3105 lt!1262574 (++!9558 lt!1262574 lt!1262580))))

(assert (=> d!1071384 (= lt!1262576 (lemmaConcatTwoListThenFirstIsPrefix!2024 lt!1262574 lt!1262580))))

(assert (=> d!1071384 (= lt!1262580 (_2!22274 (get!12593 (maxPrefix!2865 thiss!23823 rules!3307 lt!1262248))))))

(assert (=> d!1071384 (= lt!1262574 (list!14224 (charsOf!3756 lt!1262573)))))

(declare-datatypes ((List!38539 0))(
  ( (Nil!38415) (Cons!38415 (h!43835 Token!10850) (t!296922 List!38539)) )
))
(declare-fun head!7748 (List!38539) Token!10850)

(declare-datatypes ((IArray!23471 0))(
  ( (IArray!23472 (innerList!11793 List!38539)) )
))
(declare-datatypes ((Conc!11733 0))(
  ( (Node!11733 (left!29994 Conc!11733) (right!30324 Conc!11733) (csize!23696 Int) (cheight!11944 Int)) (Leaf!18215 (xs!14935 IArray!23471) (csize!23697 Int)) (Empty!11733) )
))
(declare-datatypes ((BalanceConc!23080 0))(
  ( (BalanceConc!23081 (c!630081 Conc!11733)) )
))
(declare-fun list!14228 (BalanceConc!23080) List!38539)

(declare-datatypes ((tuple2!38288 0))(
  ( (tuple2!38289 (_1!22278 BalanceConc!23080) (_2!22278 BalanceConc!23076)) )
))
(declare-fun lex!2530 (LexerInterface!5331 List!38535 BalanceConc!23076) tuple2!38288)

(assert (=> d!1071384 (= lt!1262573 (head!7748 (list!14228 (_1!22278 (lex!2530 thiss!23823 rules!3307 (seqFromList!4291 lt!1262248))))))))

(assert (=> d!1071384 (not (isEmpty!22749 rules!3307))))

(assert (=> d!1071384 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1009 thiss!23823 rules!3307 lt!1262248 suffix!1395) lt!1262566)))

(assert (= (and d!1071384 res!1477786) b!3644592))

(assert (= (and b!3644592 res!1477787) b!3644593))

(assert (= (and d!1071384 c!630077) b!3644594))

(assert (= (and d!1071384 (not c!630077)) b!3644595))

(declare-fun m!4148187 () Bool)

(assert (=> b!3644592 m!4148187))

(declare-fun m!4148189 () Bool)

(assert (=> b!3644592 m!4148189))

(declare-fun m!4148191 () Bool)

(assert (=> b!3644592 m!4148191))

(declare-fun m!4148193 () Bool)

(assert (=> b!3644592 m!4148193))

(declare-fun m!4148195 () Bool)

(assert (=> b!3644592 m!4148195))

(assert (=> b!3644592 m!4148195))

(assert (=> b!3644592 m!4148191))

(assert (=> b!3644592 m!4148187))

(assert (=> b!3644593 m!4148187))

(assert (=> b!3644593 m!4148187))

(assert (=> b!3644593 m!4148189))

(declare-fun m!4148197 () Bool)

(assert (=> b!3644594 m!4148197))

(declare-fun m!4148199 () Bool)

(assert (=> b!3644594 m!4148199))

(assert (=> b!3644594 m!4147385))

(declare-fun m!4148201 () Bool)

(assert (=> b!3644594 m!4148201))

(declare-fun m!4148203 () Bool)

(assert (=> b!3644594 m!4148203))

(declare-fun m!4148205 () Bool)

(assert (=> b!3644594 m!4148205))

(assert (=> b!3644594 m!4147385))

(assert (=> b!3644594 m!4148195))

(assert (=> b!3644594 m!4148195))

(assert (=> b!3644594 m!4148191))

(assert (=> b!3644594 m!4148203))

(declare-fun m!4148207 () Bool)

(assert (=> d!1071384 m!4148207))

(declare-fun m!4148209 () Bool)

(assert (=> d!1071384 m!4148209))

(declare-fun m!4148211 () Bool)

(assert (=> d!1071384 m!4148211))

(assert (=> d!1071384 m!4148187))

(declare-fun m!4148213 () Bool)

(assert (=> d!1071384 m!4148213))

(assert (=> d!1071384 m!4148207))

(declare-fun m!4148215 () Bool)

(assert (=> d!1071384 m!4148215))

(assert (=> d!1071384 m!4147375))

(declare-fun m!4148217 () Bool)

(assert (=> d!1071384 m!4148217))

(declare-fun m!4148219 () Bool)

(assert (=> d!1071384 m!4148219))

(declare-fun m!4148221 () Bool)

(assert (=> d!1071384 m!4148221))

(assert (=> d!1071384 m!4147385))

(assert (=> d!1071384 m!4148195))

(declare-fun m!4148223 () Bool)

(assert (=> d!1071384 m!4148223))

(assert (=> d!1071384 m!4148219))

(declare-fun m!4148225 () Bool)

(assert (=> d!1071384 m!4148225))

(declare-fun m!4148227 () Bool)

(assert (=> d!1071384 m!4148227))

(declare-fun m!4148229 () Bool)

(assert (=> d!1071384 m!4148229))

(declare-fun m!4148231 () Bool)

(assert (=> d!1071384 m!4148231))

(assert (=> d!1071384 m!4147385))

(assert (=> d!1071384 m!4148229))

(assert (=> d!1071384 m!4148229))

(declare-fun m!4148233 () Bool)

(assert (=> d!1071384 m!4148233))

(assert (=> d!1071384 m!4147385))

(declare-fun m!4148235 () Bool)

(assert (=> d!1071384 m!4148235))

(assert (=> d!1071384 m!4147365))

(assert (=> d!1071384 m!4148225))

(assert (=> d!1071384 m!4147375))

(assert (=> d!1071384 m!4148195))

(assert (=> d!1071384 m!4148191))

(assert (=> d!1071384 m!4148187))

(assert (=> b!3643811 d!1071384))

(declare-fun d!1071410 () Bool)

(assert (=> d!1071410 (= (list!14224 lt!1262251) (list!14226 (c!629927 lt!1262251)))))

(declare-fun bs!572055 () Bool)

(assert (= bs!572055 d!1071410))

(declare-fun m!4148237 () Bool)

(assert (=> bs!572055 m!4148237))

(assert (=> b!3643811 d!1071410))

(declare-fun d!1071412 () Bool)

(declare-fun e!2256202 () Bool)

(assert (=> d!1071412 e!2256202))

(declare-fun res!1477792 () Bool)

(assert (=> d!1071412 (=> (not res!1477792) (not e!2256202))))

(assert (=> d!1071412 (= res!1477792 (isDefined!6344 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 (_1!22274 lt!1262263))))))))

(declare-fun lt!1262584 () Unit!55280)

(declare-fun choose!21451 (LexerInterface!5331 List!38535 List!38534 Token!10850) Unit!55280)

(assert (=> d!1071412 (= lt!1262584 (choose!21451 thiss!23823 rules!3307 lt!1262269 (_1!22274 lt!1262263)))))

(assert (=> d!1071412 (rulesInvariant!4728 thiss!23823 rules!3307)))

(assert (=> d!1071412 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1346 thiss!23823 rules!3307 lt!1262269 (_1!22274 lt!1262263)) lt!1262584)))

(declare-fun b!3644600 () Bool)

(declare-fun res!1477793 () Bool)

(assert (=> b!3644600 (=> (not res!1477793) (not e!2256202))))

(assert (=> b!3644600 (= res!1477793 (matchR!5070 (regex!5742 (get!12594 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))) (list!14224 (charsOf!3756 (_1!22274 lt!1262263)))))))

(declare-fun b!3644601 () Bool)

(assert (=> b!3644601 (= e!2256202 (= (rule!8530 (_1!22274 lt!1262263)) (get!12594 (getRuleFromTag!1346 thiss!23823 rules!3307 (tag!6496 (rule!8530 (_1!22274 lt!1262263)))))))))

(assert (= (and d!1071412 res!1477792) b!3644600))

(assert (= (and b!3644600 res!1477793) b!3644601))

(assert (=> d!1071412 m!4147401))

(assert (=> d!1071412 m!4147401))

(declare-fun m!4148239 () Bool)

(assert (=> d!1071412 m!4148239))

(declare-fun m!4148241 () Bool)

(assert (=> d!1071412 m!4148241))

(assert (=> d!1071412 m!4147273))

(assert (=> b!3644600 m!4147401))

(declare-fun m!4148243 () Bool)

(assert (=> b!3644600 m!4148243))

(assert (=> b!3644600 m!4147309))

(assert (=> b!3644600 m!4147401))

(assert (=> b!3644600 m!4147311))

(declare-fun m!4148245 () Bool)

(assert (=> b!3644600 m!4148245))

(assert (=> b!3644600 m!4147309))

(assert (=> b!3644600 m!4147311))

(assert (=> b!3644601 m!4147401))

(assert (=> b!3644601 m!4147401))

(assert (=> b!3644601 m!4148243))

(assert (=> b!3643811 d!1071412))

(declare-fun b!3644605 () Bool)

(declare-fun e!2256204 () Bool)

(assert (=> b!3644605 (= e!2256204 (>= (size!29321 lt!1262269) (size!29321 lt!1262248)))))

(declare-fun b!3644604 () Bool)

(declare-fun e!2256203 () Bool)

(assert (=> b!3644604 (= e!2256203 (isPrefix!3105 (tail!5645 lt!1262248) (tail!5645 lt!1262269)))))

(declare-fun b!3644603 () Bool)

(declare-fun res!1477797 () Bool)

(assert (=> b!3644603 (=> (not res!1477797) (not e!2256203))))

(assert (=> b!3644603 (= res!1477797 (= (head!7746 lt!1262248) (head!7746 lt!1262269)))))

(declare-fun b!3644602 () Bool)

(declare-fun e!2256205 () Bool)

(assert (=> b!3644602 (= e!2256205 e!2256203)))

(declare-fun res!1477796 () Bool)

(assert (=> b!3644602 (=> (not res!1477796) (not e!2256203))))

(assert (=> b!3644602 (= res!1477796 (not ((_ is Nil!38410) lt!1262269)))))

(declare-fun d!1071414 () Bool)

(assert (=> d!1071414 e!2256204))

(declare-fun res!1477794 () Bool)

(assert (=> d!1071414 (=> res!1477794 e!2256204)))

(declare-fun lt!1262585 () Bool)

(assert (=> d!1071414 (= res!1477794 (not lt!1262585))))

(assert (=> d!1071414 (= lt!1262585 e!2256205)))

(declare-fun res!1477795 () Bool)

(assert (=> d!1071414 (=> res!1477795 e!2256205)))

(assert (=> d!1071414 (= res!1477795 ((_ is Nil!38410) lt!1262248))))

(assert (=> d!1071414 (= (isPrefix!3105 lt!1262248 lt!1262269) lt!1262585)))

(assert (= (and d!1071414 (not res!1477795)) b!3644602))

(assert (= (and b!3644602 res!1477796) b!3644603))

(assert (= (and b!3644603 res!1477797) b!3644604))

(assert (= (and d!1071414 (not res!1477794)) b!3644605))

(assert (=> b!3644605 m!4147633))

(assert (=> b!3644605 m!4147991))

(assert (=> b!3644604 m!4147503))

(assert (=> b!3644604 m!4147687))

(assert (=> b!3644604 m!4147503))

(assert (=> b!3644604 m!4147687))

(declare-fun m!4148247 () Bool)

(assert (=> b!3644604 m!4148247))

(assert (=> b!3644603 m!4147507))

(assert (=> b!3644603 m!4147981))

(assert (=> b!3643811 d!1071414))

(declare-fun d!1071416 () Bool)

(assert (=> d!1071416 (= (get!12593 lt!1262261) (v!37952 lt!1262261))))

(assert (=> b!3643811 d!1071416))

(declare-fun b!3644609 () Bool)

(declare-fun e!2256207 () Bool)

(assert (=> b!3644609 (= e!2256207 (>= (size!29321 (++!9558 lt!1262256 (_2!22274 lt!1262263))) (size!29321 lt!1262256)))))

(declare-fun b!3644608 () Bool)

(declare-fun e!2256206 () Bool)

(assert (=> b!3644608 (= e!2256206 (isPrefix!3105 (tail!5645 lt!1262256) (tail!5645 (++!9558 lt!1262256 (_2!22274 lt!1262263)))))))

(declare-fun b!3644607 () Bool)

(declare-fun res!1477801 () Bool)

(assert (=> b!3644607 (=> (not res!1477801) (not e!2256206))))

(assert (=> b!3644607 (= res!1477801 (= (head!7746 lt!1262256) (head!7746 (++!9558 lt!1262256 (_2!22274 lt!1262263)))))))

(declare-fun b!3644606 () Bool)

(declare-fun e!2256208 () Bool)

(assert (=> b!3644606 (= e!2256208 e!2256206)))

(declare-fun res!1477800 () Bool)

(assert (=> b!3644606 (=> (not res!1477800) (not e!2256206))))

(assert (=> b!3644606 (= res!1477800 (not ((_ is Nil!38410) (++!9558 lt!1262256 (_2!22274 lt!1262263)))))))

(declare-fun d!1071418 () Bool)

(assert (=> d!1071418 e!2256207))

(declare-fun res!1477798 () Bool)

(assert (=> d!1071418 (=> res!1477798 e!2256207)))

(declare-fun lt!1262586 () Bool)

(assert (=> d!1071418 (= res!1477798 (not lt!1262586))))

(assert (=> d!1071418 (= lt!1262586 e!2256208)))

(declare-fun res!1477799 () Bool)

(assert (=> d!1071418 (=> res!1477799 e!2256208)))

(assert (=> d!1071418 (= res!1477799 ((_ is Nil!38410) lt!1262256))))

(assert (=> d!1071418 (= (isPrefix!3105 lt!1262256 (++!9558 lt!1262256 (_2!22274 lt!1262263))) lt!1262586)))

(assert (= (and d!1071418 (not res!1477799)) b!3644606))

(assert (= (and b!3644606 res!1477800) b!3644607))

(assert (= (and b!3644607 res!1477801) b!3644608))

(assert (= (and d!1071418 (not res!1477798)) b!3644609))

(assert (=> b!3644609 m!4147389))

(declare-fun m!4148249 () Bool)

(assert (=> b!3644609 m!4148249))

(assert (=> b!3644609 m!4147295))

(assert (=> b!3644608 m!4147467))

(assert (=> b!3644608 m!4147389))

(declare-fun m!4148251 () Bool)

(assert (=> b!3644608 m!4148251))

(assert (=> b!3644608 m!4147467))

(assert (=> b!3644608 m!4148251))

(declare-fun m!4148253 () Bool)

(assert (=> b!3644608 m!4148253))

(assert (=> b!3644607 m!4147277))

(assert (=> b!3644607 m!4147389))

(declare-fun m!4148255 () Bool)

(assert (=> b!3644607 m!4148255))

(assert (=> b!3643811 d!1071418))

(declare-fun d!1071420 () Bool)

(assert (=> d!1071420 (isPrefix!3105 lt!1262256 (++!9558 lt!1262256 (_2!22274 lt!1262263)))))

(declare-fun lt!1262587 () Unit!55280)

(assert (=> d!1071420 (= lt!1262587 (choose!21449 lt!1262256 (_2!22274 lt!1262263)))))

(assert (=> d!1071420 (= (lemmaConcatTwoListThenFirstIsPrefix!2024 lt!1262256 (_2!22274 lt!1262263)) lt!1262587)))

(declare-fun bs!572056 () Bool)

(assert (= bs!572056 d!1071420))

(assert (=> bs!572056 m!4147389))

(assert (=> bs!572056 m!4147389))

(assert (=> bs!572056 m!4147391))

(declare-fun m!4148257 () Bool)

(assert (=> bs!572056 m!4148257))

(assert (=> b!3643811 d!1071420))

(declare-fun d!1071422 () Bool)

(assert (=> d!1071422 (= (isDefined!6345 lt!1262271) (not (isEmpty!22751 lt!1262271)))))

(declare-fun bs!572057 () Bool)

(assert (= bs!572057 d!1071422))

(declare-fun m!4148259 () Bool)

(assert (=> bs!572057 m!4148259))

(assert (=> b!3643813 d!1071422))

(declare-fun b!3644610 () Bool)

(declare-fun res!1477803 () Bool)

(declare-fun e!2256209 () Bool)

(assert (=> b!3644610 (=> (not res!1477803) (not e!2256209))))

(declare-fun lt!1262591 () Option!8113)

(assert (=> b!3644610 (= res!1477803 (< (size!29321 (_2!22274 (get!12593 lt!1262591))) (size!29321 lt!1262248)))))

(declare-fun b!3644611 () Bool)

(declare-fun res!1477808 () Bool)

(assert (=> b!3644611 (=> (not res!1477808) (not e!2256209))))

(assert (=> b!3644611 (= res!1477808 (matchR!5070 (regex!5742 (rule!8530 (_1!22274 (get!12593 lt!1262591)))) (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262591))))))))

(declare-fun b!3644612 () Bool)

(declare-fun res!1477805 () Bool)

(assert (=> b!3644612 (=> (not res!1477805) (not e!2256209))))

(assert (=> b!3644612 (= res!1477805 (= (++!9558 (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262591)))) (_2!22274 (get!12593 lt!1262591))) lt!1262248))))

(declare-fun b!3644613 () Bool)

(declare-fun e!2256210 () Bool)

(assert (=> b!3644613 (= e!2256210 e!2256209)))

(declare-fun res!1477807 () Bool)

(assert (=> b!3644613 (=> (not res!1477807) (not e!2256209))))

(assert (=> b!3644613 (= res!1477807 (isDefined!6345 lt!1262591))))

(declare-fun d!1071424 () Bool)

(assert (=> d!1071424 e!2256210))

(declare-fun res!1477804 () Bool)

(assert (=> d!1071424 (=> res!1477804 e!2256210)))

(assert (=> d!1071424 (= res!1477804 (isEmpty!22751 lt!1262591))))

(declare-fun e!2256211 () Option!8113)

(assert (=> d!1071424 (= lt!1262591 e!2256211)))

(declare-fun c!630078 () Bool)

(assert (=> d!1071424 (= c!630078 (and ((_ is Cons!38411) rules!3307) ((_ is Nil!38411) (t!296798 rules!3307))))))

(declare-fun lt!1262588 () Unit!55280)

(declare-fun lt!1262590 () Unit!55280)

(assert (=> d!1071424 (= lt!1262588 lt!1262590)))

(assert (=> d!1071424 (isPrefix!3105 lt!1262248 lt!1262248)))

(assert (=> d!1071424 (= lt!1262590 (lemmaIsPrefixRefl!1968 lt!1262248 lt!1262248))))

(assert (=> d!1071424 (rulesValidInductive!2033 thiss!23823 rules!3307)))

(assert (=> d!1071424 (= (maxPrefix!2865 thiss!23823 rules!3307 lt!1262248) lt!1262591)))

(declare-fun call!263406 () Option!8113)

(declare-fun bm!263401 () Bool)

(assert (=> bm!263401 (= call!263406 (maxPrefixOneRule!2003 thiss!23823 (h!43831 rules!3307) lt!1262248))))

(declare-fun b!3644614 () Bool)

(assert (=> b!3644614 (= e!2256211 call!263406)))

(declare-fun b!3644615 () Bool)

(declare-fun res!1477802 () Bool)

(assert (=> b!3644615 (=> (not res!1477802) (not e!2256209))))

(assert (=> b!3644615 (= res!1477802 (= (list!14224 (charsOf!3756 (_1!22274 (get!12593 lt!1262591)))) (originalCharacters!6456 (_1!22274 (get!12593 lt!1262591)))))))

(declare-fun b!3644616 () Bool)

(declare-fun res!1477806 () Bool)

(assert (=> b!3644616 (=> (not res!1477806) (not e!2256209))))

(assert (=> b!3644616 (= res!1477806 (= (value!184107 (_1!22274 (get!12593 lt!1262591))) (apply!9244 (transformation!5742 (rule!8530 (_1!22274 (get!12593 lt!1262591)))) (seqFromList!4291 (originalCharacters!6456 (_1!22274 (get!12593 lt!1262591)))))))))

(declare-fun b!3644617 () Bool)

(assert (=> b!3644617 (= e!2256209 (contains!7550 rules!3307 (rule!8530 (_1!22274 (get!12593 lt!1262591)))))))

(declare-fun b!3644618 () Bool)

(declare-fun lt!1262592 () Option!8113)

(declare-fun lt!1262589 () Option!8113)

(assert (=> b!3644618 (= e!2256211 (ite (and ((_ is None!8112) lt!1262592) ((_ is None!8112) lt!1262589)) None!8112 (ite ((_ is None!8112) lt!1262589) lt!1262592 (ite ((_ is None!8112) lt!1262592) lt!1262589 (ite (>= (size!29319 (_1!22274 (v!37952 lt!1262592))) (size!29319 (_1!22274 (v!37952 lt!1262589)))) lt!1262592 lt!1262589)))))))

(assert (=> b!3644618 (= lt!1262592 call!263406)))

(assert (=> b!3644618 (= lt!1262589 (maxPrefix!2865 thiss!23823 (t!296798 rules!3307) lt!1262248))))

(assert (= (and d!1071424 c!630078) b!3644614))

(assert (= (and d!1071424 (not c!630078)) b!3644618))

(assert (= (or b!3644614 b!3644618) bm!263401))

(assert (= (and d!1071424 (not res!1477804)) b!3644613))

(assert (= (and b!3644613 res!1477807) b!3644615))

(assert (= (and b!3644615 res!1477802) b!3644610))

(assert (= (and b!3644610 res!1477803) b!3644612))

(assert (= (and b!3644612 res!1477805) b!3644616))

(assert (= (and b!3644616 res!1477806) b!3644611))

(assert (= (and b!3644611 res!1477808) b!3644617))

(declare-fun m!4148261 () Bool)

(assert (=> b!3644613 m!4148261))

(declare-fun m!4148263 () Bool)

(assert (=> b!3644617 m!4148263))

(declare-fun m!4148265 () Bool)

(assert (=> b!3644617 m!4148265))

(declare-fun m!4148267 () Bool)

(assert (=> b!3644618 m!4148267))

(assert (=> b!3644610 m!4148263))

(declare-fun m!4148269 () Bool)

(assert (=> b!3644610 m!4148269))

(assert (=> b!3644610 m!4147991))

(declare-fun m!4148271 () Bool)

(assert (=> bm!263401 m!4148271))

(assert (=> b!3644615 m!4148263))

(declare-fun m!4148273 () Bool)

(assert (=> b!3644615 m!4148273))

(assert (=> b!3644615 m!4148273))

(declare-fun m!4148275 () Bool)

(assert (=> b!3644615 m!4148275))

(assert (=> b!3644616 m!4148263))

(declare-fun m!4148277 () Bool)

(assert (=> b!3644616 m!4148277))

(assert (=> b!3644616 m!4148277))

(declare-fun m!4148279 () Bool)

(assert (=> b!3644616 m!4148279))

(assert (=> b!3644612 m!4148263))

(assert (=> b!3644612 m!4148273))

(assert (=> b!3644612 m!4148273))

(assert (=> b!3644612 m!4148275))

(assert (=> b!3644612 m!4148275))

(declare-fun m!4148281 () Bool)

(assert (=> b!3644612 m!4148281))

(assert (=> b!3644611 m!4148263))

(assert (=> b!3644611 m!4148273))

(assert (=> b!3644611 m!4148273))

(assert (=> b!3644611 m!4148275))

(assert (=> b!3644611 m!4148275))

(declare-fun m!4148283 () Bool)

(assert (=> b!3644611 m!4148283))

(declare-fun m!4148285 () Bool)

(assert (=> d!1071424 m!4148285))

(declare-fun m!4148287 () Bool)

(assert (=> d!1071424 m!4148287))

(declare-fun m!4148289 () Bool)

(assert (=> d!1071424 m!4148289))

(assert (=> d!1071424 m!4148025))

(assert (=> b!3643813 d!1071424))

(declare-fun d!1071426 () Bool)

(assert (=> d!1071426 (= (list!14224 (charsOf!3756 token!511)) (list!14226 (c!629927 (charsOf!3756 token!511))))))

(declare-fun bs!572058 () Bool)

(assert (= bs!572058 d!1071426))

(declare-fun m!4148291 () Bool)

(assert (=> bs!572058 m!4148291))

(assert (=> b!3643813 d!1071426))

(declare-fun d!1071428 () Bool)

(declare-fun lt!1262593 () BalanceConc!23076)

(assert (=> d!1071428 (= (list!14224 lt!1262593) (originalCharacters!6456 token!511))))

(assert (=> d!1071428 (= lt!1262593 (dynLambda!16729 (toChars!7893 (transformation!5742 (rule!8530 token!511))) (value!184107 token!511)))))

(assert (=> d!1071428 (= (charsOf!3756 token!511) lt!1262593)))

(declare-fun b_lambda!108069 () Bool)

(assert (=> (not b_lambda!108069) (not d!1071428)))

(assert (=> d!1071428 t!296888))

(declare-fun b_and!269031 () Bool)

(assert (= b_and!269019 (and (=> t!296888 result!255878) b_and!269031)))

(assert (=> d!1071428 t!296890))

(declare-fun b_and!269033 () Bool)

(assert (= b_and!269021 (and (=> t!296890 result!255880) b_and!269033)))

(assert (=> d!1071428 t!296892))

(declare-fun b_and!269035 () Bool)

(assert (= b_and!269023 (and (=> t!296892 result!255882) b_and!269035)))

(assert (=> d!1071428 t!296894))

(declare-fun b_and!269037 () Bool)

(assert (= b_and!269025 (and (=> t!296894 result!255884) b_and!269037)))

(declare-fun m!4148293 () Bool)

(assert (=> d!1071428 m!4148293))

(assert (=> d!1071428 m!4147969))

(assert (=> b!3643813 d!1071428))

(declare-fun d!1071430 () Bool)

(assert (=> d!1071430 (not (matchR!5070 (regex!5742 rule!403) lt!1262248))))

(declare-fun lt!1262596 () Unit!55280)

(declare-fun choose!21452 (Regex!10501 List!38534 C!21188) Unit!55280)

(assert (=> d!1071430 (= lt!1262596 (choose!21452 (regex!5742 rule!403) lt!1262248 lt!1262259))))

(assert (=> d!1071430 (validRegex!4809 (regex!5742 rule!403))))

(assert (=> d!1071430 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!690 (regex!5742 rule!403) lt!1262248 lt!1262259) lt!1262596)))

(declare-fun bs!572059 () Bool)

(assert (= bs!572059 d!1071430))

(assert (=> bs!572059 m!4147329))

(declare-fun m!4148295 () Bool)

(assert (=> bs!572059 m!4148295))

(assert (=> bs!572059 m!4147515))

(assert (=> b!3643834 d!1071430))

(declare-fun d!1071432 () Bool)

(assert (=> d!1071432 (= (inv!51846 (tag!6496 (h!43831 rules!3307))) (= (mod (str.len (value!184106 (tag!6496 (h!43831 rules!3307)))) 2) 0))))

(assert (=> b!3643814 d!1071432))

(declare-fun d!1071434 () Bool)

(declare-fun res!1477809 () Bool)

(declare-fun e!2256212 () Bool)

(assert (=> d!1071434 (=> (not res!1477809) (not e!2256212))))

(assert (=> d!1071434 (= res!1477809 (semiInverseModEq!2447 (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toValue!8034 (transformation!5742 (h!43831 rules!3307)))))))

(assert (=> d!1071434 (= (inv!51849 (transformation!5742 (h!43831 rules!3307))) e!2256212)))

(declare-fun b!3644619 () Bool)

(assert (=> b!3644619 (= e!2256212 (equivClasses!2346 (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toValue!8034 (transformation!5742 (h!43831 rules!3307)))))))

(assert (= (and d!1071434 res!1477809) b!3644619))

(declare-fun m!4148297 () Bool)

(assert (=> d!1071434 m!4148297))

(declare-fun m!4148299 () Bool)

(assert (=> b!3644619 m!4148299))

(assert (=> b!3643814 d!1071434))

(declare-fun b!3644632 () Bool)

(declare-fun e!2256215 () Bool)

(declare-fun tp!1111480 () Bool)

(assert (=> b!3644632 (= e!2256215 tp!1111480)))

(declare-fun b!3644630 () Bool)

(assert (=> b!3644630 (= e!2256215 tp_is_empty!18085)))

(assert (=> b!3643815 (= tp!1111403 e!2256215)))

(declare-fun b!3644633 () Bool)

(declare-fun tp!1111479 () Bool)

(declare-fun tp!1111478 () Bool)

(assert (=> b!3644633 (= e!2256215 (and tp!1111479 tp!1111478))))

(declare-fun b!3644631 () Bool)

(declare-fun tp!1111481 () Bool)

(declare-fun tp!1111477 () Bool)

(assert (=> b!3644631 (= e!2256215 (and tp!1111481 tp!1111477))))

(assert (= (and b!3643815 ((_ is ElementMatch!10501) (regex!5742 (rule!8530 token!511)))) b!3644630))

(assert (= (and b!3643815 ((_ is Concat!16474) (regex!5742 (rule!8530 token!511)))) b!3644631))

(assert (= (and b!3643815 ((_ is Star!10501) (regex!5742 (rule!8530 token!511)))) b!3644632))

(assert (= (and b!3643815 ((_ is Union!10501) (regex!5742 (rule!8530 token!511)))) b!3644633))

(declare-fun b!3644636 () Bool)

(declare-fun e!2256216 () Bool)

(declare-fun tp!1111485 () Bool)

(assert (=> b!3644636 (= e!2256216 tp!1111485)))

(declare-fun b!3644634 () Bool)

(assert (=> b!3644634 (= e!2256216 tp_is_empty!18085)))

(assert (=> b!3643828 (= tp!1111407 e!2256216)))

(declare-fun b!3644637 () Bool)

(declare-fun tp!1111484 () Bool)

(declare-fun tp!1111483 () Bool)

(assert (=> b!3644637 (= e!2256216 (and tp!1111484 tp!1111483))))

(declare-fun b!3644635 () Bool)

(declare-fun tp!1111486 () Bool)

(declare-fun tp!1111482 () Bool)

(assert (=> b!3644635 (= e!2256216 (and tp!1111486 tp!1111482))))

(assert (= (and b!3643828 ((_ is ElementMatch!10501) (regex!5742 anOtherTypeRule!33))) b!3644634))

(assert (= (and b!3643828 ((_ is Concat!16474) (regex!5742 anOtherTypeRule!33))) b!3644635))

(assert (= (and b!3643828 ((_ is Star!10501) (regex!5742 anOtherTypeRule!33))) b!3644636))

(assert (= (and b!3643828 ((_ is Union!10501) (regex!5742 anOtherTypeRule!33))) b!3644637))

(declare-fun b!3644642 () Bool)

(declare-fun e!2256219 () Bool)

(declare-fun tp!1111489 () Bool)

(assert (=> b!3644642 (= e!2256219 (and tp_is_empty!18085 tp!1111489))))

(assert (=> b!3643808 (= tp!1111398 e!2256219)))

(assert (= (and b!3643808 ((_ is Cons!38410) (originalCharacters!6456 token!511))) b!3644642))

(declare-fun b!3644643 () Bool)

(declare-fun e!2256220 () Bool)

(declare-fun tp!1111490 () Bool)

(assert (=> b!3644643 (= e!2256220 (and tp_is_empty!18085 tp!1111490))))

(assert (=> b!3643823 (= tp!1111404 e!2256220)))

(assert (= (and b!3643823 ((_ is Cons!38410) (t!296797 suffix!1395))) b!3644643))

(declare-fun b!3644646 () Bool)

(declare-fun e!2256221 () Bool)

(declare-fun tp!1111494 () Bool)

(assert (=> b!3644646 (= e!2256221 tp!1111494)))

(declare-fun b!3644644 () Bool)

(assert (=> b!3644644 (= e!2256221 tp_is_empty!18085)))

(assert (=> b!3643807 (= tp!1111405 e!2256221)))

(declare-fun b!3644647 () Bool)

(declare-fun tp!1111493 () Bool)

(declare-fun tp!1111492 () Bool)

(assert (=> b!3644647 (= e!2256221 (and tp!1111493 tp!1111492))))

(declare-fun b!3644645 () Bool)

(declare-fun tp!1111495 () Bool)

(declare-fun tp!1111491 () Bool)

(assert (=> b!3644645 (= e!2256221 (and tp!1111495 tp!1111491))))

(assert (= (and b!3643807 ((_ is ElementMatch!10501) (regex!5742 rule!403))) b!3644644))

(assert (= (and b!3643807 ((_ is Concat!16474) (regex!5742 rule!403))) b!3644645))

(assert (= (and b!3643807 ((_ is Star!10501) (regex!5742 rule!403))) b!3644646))

(assert (= (and b!3643807 ((_ is Union!10501) (regex!5742 rule!403))) b!3644647))

(declare-fun b!3644658 () Bool)

(declare-fun b_free!95637 () Bool)

(declare-fun b_next!96341 () Bool)

(assert (=> b!3644658 (= b_free!95637 (not b_next!96341))))

(declare-fun t!296908 () Bool)

(declare-fun tb!210129 () Bool)

(assert (=> (and b!3644658 (= (toValue!8034 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296908) tb!210129))

(declare-fun result!255910 () Bool)

(assert (= result!255910 result!255862))

(assert (=> d!1071316 t!296908))

(assert (=> d!1071362 t!296908))

(declare-fun t!296910 () Bool)

(declare-fun tb!210131 () Bool)

(assert (=> (and b!3644658 (= (toValue!8034 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296910) tb!210131))

(declare-fun result!255912 () Bool)

(assert (= result!255912 result!255792))

(assert (=> d!1071264 t!296910))

(assert (=> d!1071364 t!296908))

(declare-fun t!296912 () Bool)

(declare-fun tb!210133 () Bool)

(assert (=> (and b!3644658 (= (toValue!8034 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toValue!8034 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296912) tb!210133))

(declare-fun result!255914 () Bool)

(assert (= result!255914 result!255870))

(assert (=> d!1071364 t!296912))

(declare-fun b_and!269039 () Bool)

(declare-fun tp!1111506 () Bool)

(assert (=> b!3644658 (= tp!1111506 (and (=> t!296908 result!255910) (=> t!296912 result!255914) (=> t!296910 result!255912) b_and!269039))))

(declare-fun b_free!95639 () Bool)

(declare-fun b_next!96343 () Bool)

(assert (=> b!3644658 (= b_free!95639 (not b_next!96343))))

(declare-fun t!296914 () Bool)

(declare-fun tb!210135 () Bool)

(assert (=> (and b!3644658 (= (toChars!7893 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296914) tb!210135))

(declare-fun result!255916 () Bool)

(assert (= result!255916 result!255802))

(assert (=> d!1071280 t!296914))

(declare-fun tb!210137 () Bool)

(declare-fun t!296916 () Bool)

(assert (=> (and b!3644658 (= (toChars!7893 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toChars!7893 (transformation!5742 (rule!8530 (_1!22274 lt!1262263))))) t!296916) tb!210137))

(declare-fun result!255918 () Bool)

(assert (= result!255918 result!255854))

(assert (=> d!1071316 t!296916))

(declare-fun t!296918 () Bool)

(declare-fun tb!210139 () Bool)

(assert (=> (and b!3644658 (= (toChars!7893 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toChars!7893 (transformation!5742 (rule!8530 token!511)))) t!296918) tb!210139))

(declare-fun result!255920 () Bool)

(assert (= result!255920 result!255878))

(assert (=> b!3644407 t!296918))

(assert (=> d!1071428 t!296918))

(declare-fun tp!1111507 () Bool)

(declare-fun b_and!269041 () Bool)

(assert (=> b!3644658 (= tp!1111507 (and (=> t!296914 result!255916) (=> t!296916 result!255918) (=> t!296918 result!255920) b_and!269041))))

(declare-fun e!2256233 () Bool)

(assert (=> b!3644658 (= e!2256233 (and tp!1111506 tp!1111507))))

(declare-fun e!2256232 () Bool)

(declare-fun b!3644657 () Bool)

(declare-fun tp!1111505 () Bool)

(assert (=> b!3644657 (= e!2256232 (and tp!1111505 (inv!51846 (tag!6496 (h!43831 (t!296798 rules!3307)))) (inv!51849 (transformation!5742 (h!43831 (t!296798 rules!3307)))) e!2256233))))

(declare-fun b!3644656 () Bool)

(declare-fun e!2256231 () Bool)

(declare-fun tp!1111504 () Bool)

(assert (=> b!3644656 (= e!2256231 (and e!2256232 tp!1111504))))

(assert (=> b!3643830 (= tp!1111401 e!2256231)))

(assert (= b!3644657 b!3644658))

(assert (= b!3644656 b!3644657))

(assert (= (and b!3643830 ((_ is Cons!38411) (t!296798 rules!3307))) b!3644656))

(declare-fun m!4148301 () Bool)

(assert (=> b!3644657 m!4148301))

(declare-fun m!4148303 () Bool)

(assert (=> b!3644657 m!4148303))

(declare-fun b!3644661 () Bool)

(declare-fun e!2256234 () Bool)

(declare-fun tp!1111511 () Bool)

(assert (=> b!3644661 (= e!2256234 tp!1111511)))

(declare-fun b!3644659 () Bool)

(assert (=> b!3644659 (= e!2256234 tp_is_empty!18085)))

(assert (=> b!3643814 (= tp!1111402 e!2256234)))

(declare-fun b!3644662 () Bool)

(declare-fun tp!1111510 () Bool)

(declare-fun tp!1111509 () Bool)

(assert (=> b!3644662 (= e!2256234 (and tp!1111510 tp!1111509))))

(declare-fun b!3644660 () Bool)

(declare-fun tp!1111512 () Bool)

(declare-fun tp!1111508 () Bool)

(assert (=> b!3644660 (= e!2256234 (and tp!1111512 tp!1111508))))

(assert (= (and b!3643814 ((_ is ElementMatch!10501) (regex!5742 (h!43831 rules!3307)))) b!3644659))

(assert (= (and b!3643814 ((_ is Concat!16474) (regex!5742 (h!43831 rules!3307)))) b!3644660))

(assert (= (and b!3643814 ((_ is Star!10501) (regex!5742 (h!43831 rules!3307)))) b!3644661))

(assert (= (and b!3643814 ((_ is Union!10501) (regex!5742 (h!43831 rules!3307)))) b!3644662))

(declare-fun b_lambda!108071 () Bool)

(assert (= b_lambda!108063 (or (and b!3643838 b_free!95627 (= (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643809 b_free!95631 (= (toChars!7893 (transformation!5742 rule!403)) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643803 b_free!95623 (= (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3644658 b_free!95639 (= (toChars!7893 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643816 b_free!95619) b_lambda!108071)))

(declare-fun b_lambda!108073 () Bool)

(assert (= b_lambda!108069 (or (and b!3643838 b_free!95627 (= (toChars!7893 (transformation!5742 anOtherTypeRule!33)) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643809 b_free!95631 (= (toChars!7893 (transformation!5742 rule!403)) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643803 b_free!95623 (= (toChars!7893 (transformation!5742 (h!43831 rules!3307))) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3644658 b_free!95639 (= (toChars!7893 (transformation!5742 (h!43831 (t!296798 rules!3307)))) (toChars!7893 (transformation!5742 (rule!8530 token!511))))) (and b!3643816 b_free!95619) b_lambda!108073)))

(check-sat (not d!1071276) (not b!3644601) (not b!3643970) (not d!1071204) (not b!3643974) (not b!3644618) (not b!3644256) (not b!3644615) (not b!3644395) (not b!3644162) (not bm!263381) (not bm!263335) (not d!1071236) b_and!269033 (not d!1071422) (not b!3644115) (not d!1071376) (not b!3644454) (not b_next!96323) (not b!3644593) (not b_lambda!108059) (not b!3644408) (not b_next!96329) (not d!1071378) (not b!3644459) (not b!3644407) (not d!1071178) (not b!3644175) (not tb!210109) (not b_lambda!108055) (not b!3644455) (not b_lambda!108037) (not d!1071294) (not d!1071212) (not b!3644656) (not b!3644485) (not d!1071278) (not d!1071366) (not b!3644603) (not b_next!96331) (not d!1071290) (not tb!210093) (not b!3644221) (not d!1071424) (not d!1071368) (not d!1071420) (not b!3644633) (not bm!263395) (not d!1071280) (not d!1071194) (not b!3644231) b_and!269031 (not d!1071168) (not b!3644432) (not b!3644647) (not b!3644409) (not b!3643944) (not d!1071260) (not b!3644166) (not b!3644237) (not b!3644604) (not b!3644488) (not b!3644660) (not b_next!96325) (not b_lambda!108061) (not bm!263394) (not d!1071262) (not b!3644608) tp_is_empty!18085 b_and!269039 (not b!3644612) (not b!3644226) (not b!3644246) (not b_next!96335) (not d!1071370) (not d!1071428) (not b!3644116) (not tb!210037) (not b!3644218) (not b!3644635) (not bm!263378) b_and!269015 b_and!269017 (not b!3644161) (not b!3644643) (not b_lambda!108035) (not d!1071310) (not b!3644616) (not bm!263377) (not b!3643979) (not b!3643945) (not b!3644610) (not b_next!96327) (not d!1071274) (not b!3644215) b_and!269041 (not b!3644609) (not b!3644646) (not bm!263382) (not d!1071380) (not b!3644631) (not b!3644662) (not b!3644169) (not d!1071426) (not b!3644284) (not b!3644230) (not d!1071306) (not b!3643954) (not d!1071266) (not b!3644657) (not b!3644163) (not bm!263391) (not d!1071434) (not b!3644431) b_and!269037 (not d!1071360) (not d!1071410) (not b!3644419) (not b!3644244) (not b!3644661) (not d!1071256) (not tb!210101) (not d!1071238) (not b!3644453) (not b_lambda!108057) (not d!1071316) b_and!269035 (not d!1071382) (not b!3644420) (not b!3644227) (not bm!263389) (not b_next!96343) (not b!3643950) (not b!3644258) (not d!1071284) (not b!3644185) (not d!1071430) (not b!3644594) (not b!3644165) (not b!3644463) (not b!3643949) (not b!3644222) b_and!269011 (not b!3644632) (not b!3644214) (not bm!263375) (not b_next!96333) (not b!3644458) (not b!3643983) (not bm!263376) (not b!3644057) (not b_lambda!108053) (not d!1071314) (not b!3644613) (not b!3644167) (not bm!263399) (not d!1071190) (not b!3644460) (not b!3644619) (not bm!263393) (not b!3644421) (not d!1071412) (not b!3644600) (not b!3644489) (not d!1071384) (not b!3644592) (not b!3644645) (not b!3643953) (not b!3644605) (not b!3643982) (not b_lambda!108071) b_and!269013 (not b!3644607) (not b!3644611) (not b!3644168) (not d!1071300) (not d!1071364) (not bm!263380) (not b!3644452) (not b!3644462) (not d!1071288) (not bm!263334) (not b!3644287) (not b_lambda!108073) (not d!1071254) (not b!3643973) (not b!3644118) (not b_next!96341) (not b_next!96321) (not b!3644180) (not b!3644617) (not b!3643978) (not b!3644457) (not b!3644642) (not d!1071374) (not tb!210029) (not tb!210085) (not b!3644243) (not b!3644637) (not b!3644636) (not b!3644114) (not b!3644005) (not bm!263401))
(check-sat b_and!269033 (not b_next!96323) (not b_next!96329) (not b_next!96331) b_and!269031 (not b_next!96325) b_and!269039 (not b_next!96335) b_and!269037 b_and!269011 (not b_next!96333) b_and!269013 b_and!269015 b_and!269017 (not b_next!96327) b_and!269041 (not b_next!96343) b_and!269035 (not b_next!96341) (not b_next!96321))
