; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339754 () Bool)

(assert start!339754)

(declare-fun b!3638908 () Bool)

(declare-fun b_free!95329 () Bool)

(declare-fun b_next!96033 () Bool)

(assert (=> b!3638908 (= b_free!95329 (not b_next!96033))))

(declare-fun tp!1110280 () Bool)

(declare-fun b_and!268011 () Bool)

(assert (=> b!3638908 (= tp!1110280 b_and!268011)))

(declare-fun b_free!95331 () Bool)

(declare-fun b_next!96035 () Bool)

(assert (=> b!3638908 (= b_free!95331 (not b_next!96035))))

(declare-fun tp!1110276 () Bool)

(declare-fun b_and!268013 () Bool)

(assert (=> b!3638908 (= tp!1110276 b_and!268013)))

(declare-fun b!3638898 () Bool)

(declare-fun b_free!95333 () Bool)

(declare-fun b_next!96037 () Bool)

(assert (=> b!3638898 (= b_free!95333 (not b_next!96037))))

(declare-fun tp!1110275 () Bool)

(declare-fun b_and!268015 () Bool)

(assert (=> b!3638898 (= tp!1110275 b_and!268015)))

(declare-fun b_free!95335 () Bool)

(declare-fun b_next!96039 () Bool)

(assert (=> b!3638898 (= b_free!95335 (not b_next!96039))))

(declare-fun tp!1110268 () Bool)

(declare-fun b_and!268017 () Bool)

(assert (=> b!3638898 (= tp!1110268 b_and!268017)))

(declare-fun b!3638896 () Bool)

(declare-fun b_free!95337 () Bool)

(declare-fun b_next!96041 () Bool)

(assert (=> b!3638896 (= b_free!95337 (not b_next!96041))))

(declare-fun tp!1110271 () Bool)

(declare-fun b_and!268019 () Bool)

(assert (=> b!3638896 (= tp!1110271 b_and!268019)))

(declare-fun b_free!95339 () Bool)

(declare-fun b_next!96043 () Bool)

(assert (=> b!3638896 (= b_free!95339 (not b_next!96043))))

(declare-fun tp!1110270 () Bool)

(declare-fun b_and!268021 () Bool)

(assert (=> b!3638896 (= tp!1110270 b_and!268021)))

(declare-fun b!3638891 () Bool)

(declare-fun b_free!95341 () Bool)

(declare-fun b_next!96045 () Bool)

(assert (=> b!3638891 (= b_free!95341 (not b_next!96045))))

(declare-fun tp!1110274 () Bool)

(declare-fun b_and!268023 () Bool)

(assert (=> b!3638891 (= tp!1110274 b_and!268023)))

(declare-fun b_free!95343 () Bool)

(declare-fun b_next!96047 () Bool)

(assert (=> b!3638891 (= b_free!95343 (not b_next!96047))))

(declare-fun tp!1110272 () Bool)

(declare-fun b_and!268025 () Bool)

(assert (=> b!3638891 (= tp!1110272 b_and!268025)))

(declare-fun b!3638888 () Bool)

(declare-fun res!1474633 () Bool)

(declare-fun e!2252538 () Bool)

(assert (=> b!3638888 (=> res!1474633 e!2252538)))

(declare-datatypes ((C!21156 0))(
  ( (C!21157 (val!12626 Int)) )
))
(declare-datatypes ((List!38469 0))(
  ( (Nil!38345) (Cons!38345 (h!43765 C!21156) (t!296252 List!38469)) )
))
(declare-fun suffix!1395 () List!38469)

(declare-fun isEmpty!22700 (List!38469) Bool)

(assert (=> b!3638888 (= res!1474633 (isEmpty!22700 suffix!1395))))

(declare-fun tp!1110279 () Bool)

(declare-datatypes ((List!38470 0))(
  ( (Nil!38346) (Cons!38346 (h!43766 (_ BitVec 16)) (t!296253 List!38470)) )
))
(declare-datatypes ((TokenValue!5956 0))(
  ( (FloatLiteralValue!11912 (text!42137 List!38470)) (TokenValueExt!5955 (__x!24129 Int)) (Broken!29780 (value!183625 List!38470)) (Object!6079) (End!5956) (Def!5956) (Underscore!5956) (Match!5956) (Else!5956) (Error!5956) (Case!5956) (If!5956) (Extends!5956) (Abstract!5956) (Class!5956) (Val!5956) (DelimiterValue!11912 (del!6016 List!38470)) (KeywordValue!5962 (value!183626 List!38470)) (CommentValue!11912 (value!183627 List!38470)) (WhitespaceValue!11912 (value!183628 List!38470)) (IndentationValue!5956 (value!183629 List!38470)) (String!43113) (Int32!5956) (Broken!29781 (value!183630 List!38470)) (Boolean!5957) (Unit!55177) (OperatorValue!5959 (op!6016 List!38470)) (IdentifierValue!11912 (value!183631 List!38470)) (IdentifierValue!11913 (value!183632 List!38470)) (WhitespaceValue!11913 (value!183633 List!38470)) (True!11912) (False!11912) (Broken!29782 (value!183634 List!38470)) (Broken!29783 (value!183635 List!38470)) (True!11913) (RightBrace!5956) (RightBracket!5956) (Colon!5956) (Null!5956) (Comma!5956) (LeftBracket!5956) (False!11913) (LeftBrace!5956) (ImaginaryLiteralValue!5956 (text!42138 List!38470)) (StringLiteralValue!17868 (value!183636 List!38470)) (EOFValue!5956 (value!183637 List!38470)) (IdentValue!5956 (value!183638 List!38470)) (DelimiterValue!11913 (value!183639 List!38470)) (DedentValue!5956 (value!183640 List!38470)) (NewLineValue!5956 (value!183641 List!38470)) (IntegerValue!17868 (value!183642 (_ BitVec 32)) (text!42139 List!38470)) (IntegerValue!17869 (value!183643 Int) (text!42140 List!38470)) (Times!5956) (Or!5956) (Equal!5956) (Minus!5956) (Broken!29784 (value!183644 List!38470)) (And!5956) (Div!5956) (LessEqual!5956) (Mod!5956) (Concat!16441) (Not!5956) (Plus!5956) (SpaceValue!5956 (value!183645 List!38470)) (IntegerValue!17870 (value!183646 Int) (text!42141 List!38470)) (StringLiteralValue!17869 (text!42142 List!38470)) (FloatLiteralValue!11913 (text!42143 List!38470)) (BytesLiteralValue!5956 (value!183647 List!38470)) (CommentValue!11913 (value!183648 List!38470)) (StringLiteralValue!17870 (value!183649 List!38470)) (ErrorTokenValue!5956 (msg!6017 List!38470)) )
))
(declare-datatypes ((Regex!10485 0))(
  ( (ElementMatch!10485 (c!629258 C!21156)) (Concat!16442 (regOne!21482 Regex!10485) (regTwo!21482 Regex!10485)) (EmptyExpr!10485) (Star!10485 (reg!10814 Regex!10485)) (EmptyLang!10485) (Union!10485 (regOne!21483 Regex!10485) (regTwo!21483 Regex!10485)) )
))
(declare-datatypes ((String!43114 0))(
  ( (String!43115 (value!183650 String)) )
))
(declare-datatypes ((IArray!23419 0))(
  ( (IArray!23420 (innerList!11767 List!38469)) )
))
(declare-datatypes ((Conc!11707 0))(
  ( (Node!11707 (left!29940 Conc!11707) (right!30270 Conc!11707) (csize!23644 Int) (cheight!11918 Int)) (Leaf!18181 (xs!14909 IArray!23419) (csize!23645 Int)) (Empty!11707) )
))
(declare-datatypes ((BalanceConc!23028 0))(
  ( (BalanceConc!23029 (c!629259 Conc!11707)) )
))
(declare-datatypes ((TokenValueInjection!11340 0))(
  ( (TokenValueInjection!11341 (toValue!8018 Int) (toChars!7877 Int)) )
))
(declare-datatypes ((Rule!11252 0))(
  ( (Rule!11253 (regex!5726 Regex!10485) (tag!6472 String!43114) (isSeparator!5726 Bool) (transformation!5726 TokenValueInjection!11340)) )
))
(declare-datatypes ((List!38471 0))(
  ( (Nil!38347) (Cons!38347 (h!43767 Rule!11252) (t!296254 List!38471)) )
))
(declare-fun rules!3307 () List!38471)

(declare-fun b!3638889 () Bool)

(declare-fun e!2252550 () Bool)

(declare-fun e!2252542 () Bool)

(declare-fun inv!51774 (String!43114) Bool)

(declare-fun inv!51777 (TokenValueInjection!11340) Bool)

(assert (=> b!3638889 (= e!2252542 (and tp!1110279 (inv!51774 (tag!6472 (h!43767 rules!3307))) (inv!51777 (transformation!5726 (h!43767 rules!3307))) e!2252550))))

(declare-fun e!2252548 () Bool)

(assert (=> b!3638891 (= e!2252548 (and tp!1110274 tp!1110272))))

(declare-fun b!3638892 () Bool)

(declare-fun res!1474625 () Bool)

(declare-fun e!2252546 () Bool)

(assert (=> b!3638892 (=> res!1474625 e!2252546)))

(declare-fun sepAndNonSepRulesDisjointChars!1894 (List!38471 List!38471) Bool)

(assert (=> b!3638892 (= res!1474625 (not (sepAndNonSepRulesDisjointChars!1894 rules!3307 rules!3307)))))

(declare-fun b!3638893 () Bool)

(declare-fun e!2252556 () Bool)

(assert (=> b!3638893 (= e!2252556 (not e!2252538))))

(declare-fun res!1474638 () Bool)

(assert (=> b!3638893 (=> res!1474638 e!2252538)))

(declare-fun rule!403 () Rule!11252)

(declare-fun lt!1259521 () List!38469)

(declare-fun matchR!5054 (Regex!10485 List!38469) Bool)

(assert (=> b!3638893 (= res!1474638 (not (matchR!5054 (regex!5726 rule!403) lt!1259521)))))

(declare-datatypes ((LexerInterface!5315 0))(
  ( (LexerInterfaceExt!5312 (__x!24130 Int)) (Lexer!5313) )
))
(declare-fun thiss!23823 () LexerInterface!5315)

(declare-fun ruleValid!1990 (LexerInterface!5315 Rule!11252) Bool)

(assert (=> b!3638893 (ruleValid!1990 thiss!23823 rule!403)))

(declare-datatypes ((Unit!55178 0))(
  ( (Unit!55179) )
))
(declare-fun lt!1259523 () Unit!55178)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1144 (LexerInterface!5315 Rule!11252 List!38471) Unit!55178)

(assert (=> b!3638893 (= lt!1259523 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1144 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3638894 () Bool)

(declare-fun e!2252549 () Bool)

(declare-fun e!2252555 () Bool)

(assert (=> b!3638894 (= e!2252549 e!2252555)))

(declare-fun res!1474632 () Bool)

(assert (=> b!3638894 (=> (not res!1474632) (not e!2252555))))

(declare-fun lt!1259525 () Rule!11252)

(declare-datatypes ((Token!10818 0))(
  ( (Token!10819 (value!183651 TokenValue!5956) (rule!8506 Rule!11252) (size!29263 Int) (originalCharacters!6440 List!38469)) )
))
(declare-datatypes ((tuple2!38216 0))(
  ( (tuple2!38217 (_1!22242 Token!10818) (_2!22242 List!38469)) )
))
(declare-fun lt!1259519 () tuple2!38216)

(declare-fun list!14192 (BalanceConc!23028) List!38469)

(declare-fun charsOf!3740 (Token!10818) BalanceConc!23028)

(assert (=> b!3638894 (= res!1474632 (matchR!5054 (regex!5726 lt!1259525) (list!14192 (charsOf!3740 (_1!22242 lt!1259519)))))))

(declare-datatypes ((Option!8080 0))(
  ( (None!8079) (Some!8079 (v!37903 Rule!11252)) )
))
(declare-fun lt!1259503 () Option!8080)

(declare-fun get!12553 (Option!8080) Rule!11252)

(assert (=> b!3638894 (= lt!1259525 (get!12553 lt!1259503))))

(declare-fun b!3638895 () Bool)

(assert (=> b!3638895 (= e!2252555 (= (rule!8506 (_1!22242 lt!1259519)) lt!1259525))))

(declare-fun e!2252540 () Bool)

(assert (=> b!3638896 (= e!2252540 (and tp!1110271 tp!1110270))))

(declare-fun b!3638897 () Bool)

(declare-fun res!1474628 () Bool)

(declare-fun e!2252539 () Bool)

(assert (=> b!3638897 (=> (not res!1474628) (not e!2252539))))

(declare-fun isEmpty!22701 (List!38471) Bool)

(assert (=> b!3638897 (= res!1474628 (not (isEmpty!22701 rules!3307)))))

(assert (=> b!3638898 (= e!2252550 (and tp!1110275 tp!1110268))))

(declare-fun b!3638899 () Bool)

(declare-fun e!2252544 () Bool)

(declare-fun tp_is_empty!18053 () Bool)

(declare-fun tp!1110277 () Bool)

(assert (=> b!3638899 (= e!2252544 (and tp_is_empty!18053 tp!1110277))))

(declare-fun tp!1110278 () Bool)

(declare-fun b!3638900 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11252)

(declare-fun e!2252543 () Bool)

(assert (=> b!3638900 (= e!2252543 (and tp!1110278 (inv!51774 (tag!6472 anOtherTypeRule!33)) (inv!51777 (transformation!5726 anOtherTypeRule!33)) e!2252548))))

(declare-fun b!3638901 () Bool)

(declare-fun res!1474636 () Bool)

(assert (=> b!3638901 (=> (not res!1474636) (not e!2252539))))

(declare-fun rulesInvariant!4712 (LexerInterface!5315 List!38471) Bool)

(assert (=> b!3638901 (= res!1474636 (rulesInvariant!4712 thiss!23823 rules!3307))))

(declare-fun b!3638902 () Bool)

(declare-fun e!2252553 () Bool)

(declare-fun e!2252537 () Bool)

(assert (=> b!3638902 (= e!2252553 e!2252537)))

(declare-fun res!1474635 () Bool)

(assert (=> b!3638902 (=> res!1474635 e!2252537)))

(declare-fun lt!1259500 () List!38469)

(declare-datatypes ((Option!8081 0))(
  ( (None!8080) (Some!8080 (v!37904 tuple2!38216)) )
))
(declare-fun lt!1259516 () Option!8081)

(assert (=> b!3638902 (= res!1474635 (or (not (= lt!1259500 (_2!22242 lt!1259519))) (not (= lt!1259516 (Some!8080 (tuple2!38217 (_1!22242 lt!1259519) lt!1259500))))))))

(assert (=> b!3638902 (= (_2!22242 lt!1259519) lt!1259500)))

(declare-fun lt!1259512 () List!38469)

(declare-fun lt!1259509 () List!38469)

(declare-fun lt!1259517 () Unit!55178)

(declare-fun lemmaSamePrefixThenSameSuffix!1416 (List!38469 List!38469 List!38469 List!38469 List!38469) Unit!55178)

(assert (=> b!3638902 (= lt!1259517 (lemmaSamePrefixThenSameSuffix!1416 lt!1259509 (_2!22242 lt!1259519) lt!1259509 lt!1259500 lt!1259512))))

(declare-fun getSuffix!1642 (List!38469 List!38469) List!38469)

(assert (=> b!3638902 (= lt!1259500 (getSuffix!1642 lt!1259512 lt!1259509))))

(declare-fun lt!1259524 () Int)

(declare-fun lt!1259502 () TokenValue!5956)

(assert (=> b!3638902 (= lt!1259516 (Some!8080 (tuple2!38217 (Token!10819 lt!1259502 (rule!8506 (_1!22242 lt!1259519)) lt!1259524 lt!1259509) (_2!22242 lt!1259519))))))

(declare-fun maxPrefixOneRule!1987 (LexerInterface!5315 Rule!11252 List!38469) Option!8081)

(assert (=> b!3638902 (= lt!1259516 (maxPrefixOneRule!1987 thiss!23823 (rule!8506 (_1!22242 lt!1259519)) lt!1259512))))

(declare-fun size!29264 (List!38469) Int)

(assert (=> b!3638902 (= lt!1259524 (size!29264 lt!1259509))))

(declare-fun apply!9228 (TokenValueInjection!11340 BalanceConc!23028) TokenValue!5956)

(declare-fun seqFromList!4275 (List!38469) BalanceConc!23028)

(assert (=> b!3638902 (= lt!1259502 (apply!9228 (transformation!5726 (rule!8506 (_1!22242 lt!1259519))) (seqFromList!4275 lt!1259509)))))

(declare-fun lt!1259510 () Unit!55178)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1043 (LexerInterface!5315 List!38471 List!38469 List!38469 List!38469 Rule!11252) Unit!55178)

(assert (=> b!3638902 (= lt!1259510 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1043 thiss!23823 rules!3307 lt!1259509 lt!1259512 (_2!22242 lt!1259519) (rule!8506 (_1!22242 lt!1259519))))))

(declare-fun b!3638903 () Bool)

(declare-fun e!2252559 () Bool)

(assert (=> b!3638903 (= e!2252546 e!2252559)))

(declare-fun res!1474626 () Bool)

(assert (=> b!3638903 (=> res!1474626 e!2252559)))

(declare-fun isPrefix!3089 (List!38469 List!38469) Bool)

(assert (=> b!3638903 (= res!1474626 (not (isPrefix!3089 lt!1259509 lt!1259512)))))

(declare-fun ++!9542 (List!38469 List!38469) List!38469)

(assert (=> b!3638903 (isPrefix!3089 lt!1259509 (++!9542 lt!1259509 (_2!22242 lt!1259519)))))

(declare-fun lt!1259520 () Unit!55178)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2008 (List!38469 List!38469) Unit!55178)

(assert (=> b!3638903 (= lt!1259520 (lemmaConcatTwoListThenFirstIsPrefix!2008 lt!1259509 (_2!22242 lt!1259519)))))

(declare-fun lt!1259501 () BalanceConc!23028)

(assert (=> b!3638903 (= lt!1259509 (list!14192 lt!1259501))))

(assert (=> b!3638903 (= lt!1259501 (charsOf!3740 (_1!22242 lt!1259519)))))

(assert (=> b!3638903 e!2252549))

(declare-fun res!1474630 () Bool)

(assert (=> b!3638903 (=> (not res!1474630) (not e!2252549))))

(declare-fun isDefined!6312 (Option!8080) Bool)

(assert (=> b!3638903 (= res!1474630 (isDefined!6312 lt!1259503))))

(declare-fun getRuleFromTag!1330 (LexerInterface!5315 List!38471 String!43114) Option!8080)

(assert (=> b!3638903 (= lt!1259503 (getRuleFromTag!1330 thiss!23823 rules!3307 (tag!6472 (rule!8506 (_1!22242 lt!1259519)))))))

(declare-fun lt!1259507 () Unit!55178)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1330 (LexerInterface!5315 List!38471 List!38469 Token!10818) Unit!55178)

(assert (=> b!3638903 (= lt!1259507 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1330 thiss!23823 rules!3307 lt!1259512 (_1!22242 lt!1259519)))))

(declare-fun lt!1259506 () Option!8081)

(declare-fun get!12554 (Option!8081) tuple2!38216)

(assert (=> b!3638903 (= lt!1259519 (get!12554 lt!1259506))))

(declare-fun lt!1259513 () Unit!55178)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!993 (LexerInterface!5315 List!38471 List!38469 List!38469) Unit!55178)

(assert (=> b!3638903 (= lt!1259513 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!993 thiss!23823 rules!3307 lt!1259521 suffix!1395))))

(declare-fun maxPrefix!2849 (LexerInterface!5315 List!38471 List!38469) Option!8081)

(assert (=> b!3638903 (= lt!1259506 (maxPrefix!2849 thiss!23823 rules!3307 lt!1259512))))

(assert (=> b!3638903 (isPrefix!3089 lt!1259521 lt!1259512)))

(declare-fun lt!1259499 () Unit!55178)

(assert (=> b!3638903 (= lt!1259499 (lemmaConcatTwoListThenFirstIsPrefix!2008 lt!1259521 suffix!1395))))

(assert (=> b!3638903 (= lt!1259512 (++!9542 lt!1259521 suffix!1395))))

(declare-fun b!3638904 () Bool)

(assert (=> b!3638904 (= e!2252559 e!2252553)))

(declare-fun res!1474634 () Bool)

(assert (=> b!3638904 (=> res!1474634 e!2252553)))

(declare-fun size!29265 (BalanceConc!23028) Int)

(assert (=> b!3638904 (= res!1474634 (not (= lt!1259506 (Some!8080 (tuple2!38217 (Token!10819 (apply!9228 (transformation!5726 (rule!8506 (_1!22242 lt!1259519))) lt!1259501) (rule!8506 (_1!22242 lt!1259519)) (size!29265 lt!1259501) lt!1259509) (_2!22242 lt!1259519))))))))

(declare-fun lt!1259511 () Unit!55178)

(declare-fun lemmaCharactersSize!771 (Token!10818) Unit!55178)

(assert (=> b!3638904 (= lt!1259511 (lemmaCharactersSize!771 (_1!22242 lt!1259519)))))

(declare-fun lt!1259526 () Unit!55178)

(declare-fun lemmaEqSameImage!909 (TokenValueInjection!11340 BalanceConc!23028 BalanceConc!23028) Unit!55178)

(assert (=> b!3638904 (= lt!1259526 (lemmaEqSameImage!909 (transformation!5726 (rule!8506 (_1!22242 lt!1259519))) lt!1259501 (seqFromList!4275 (originalCharacters!6440 (_1!22242 lt!1259519)))))))

(declare-fun lt!1259522 () Unit!55178)

(declare-fun lemmaSemiInverse!1475 (TokenValueInjection!11340 BalanceConc!23028) Unit!55178)

(assert (=> b!3638904 (= lt!1259522 (lemmaSemiInverse!1475 (transformation!5726 (rule!8506 (_1!22242 lt!1259519))) lt!1259501))))

(declare-fun b!3638905 () Bool)

(declare-fun e!2252547 () Bool)

(assert (=> b!3638905 (= e!2252539 e!2252547)))

(declare-fun res!1474631 () Bool)

(assert (=> b!3638905 (=> (not res!1474631) (not e!2252547))))

(declare-fun lt!1259505 () Option!8081)

(declare-fun isDefined!6313 (Option!8081) Bool)

(assert (=> b!3638905 (= res!1474631 (isDefined!6313 lt!1259505))))

(assert (=> b!3638905 (= lt!1259505 (maxPrefix!2849 thiss!23823 rules!3307 lt!1259521))))

(declare-fun token!511 () Token!10818)

(assert (=> b!3638905 (= lt!1259521 (list!14192 (charsOf!3740 token!511)))))

(declare-fun e!2252536 () Bool)

(declare-fun e!2252541 () Bool)

(declare-fun tp!1110269 () Bool)

(declare-fun b!3638890 () Bool)

(assert (=> b!3638890 (= e!2252541 (and tp!1110269 (inv!51774 (tag!6472 (rule!8506 token!511))) (inv!51777 (transformation!5726 (rule!8506 token!511))) e!2252536))))

(declare-fun res!1474629 () Bool)

(assert (=> start!339754 (=> (not res!1474629) (not e!2252539))))

(get-info :version)

(assert (=> start!339754 (= res!1474629 ((_ is Lexer!5313) thiss!23823))))

(assert (=> start!339754 e!2252539))

(declare-fun e!2252560 () Bool)

(assert (=> start!339754 e!2252560))

(assert (=> start!339754 e!2252544))

(assert (=> start!339754 true))

(declare-fun e!2252534 () Bool)

(declare-fun inv!51778 (Token!10818) Bool)

(assert (=> start!339754 (and (inv!51778 token!511) e!2252534)))

(declare-fun e!2252551 () Bool)

(assert (=> start!339754 e!2252551))

(assert (=> start!339754 e!2252543))

(declare-fun b!3638906 () Bool)

(declare-fun tp!1110281 () Bool)

(declare-fun inv!21 (TokenValue!5956) Bool)

(assert (=> b!3638906 (= e!2252534 (and (inv!21 (value!183651 token!511)) e!2252541 tp!1110281))))

(declare-fun b!3638907 () Bool)

(declare-fun e!2252558 () Bool)

(assert (=> b!3638907 (= e!2252537 e!2252558)))

(declare-fun res!1474624 () Bool)

(assert (=> b!3638907 (=> res!1474624 e!2252558)))

(declare-fun lt!1259508 () List!38469)

(declare-fun lt!1259514 () C!21156)

(declare-fun contains!7517 (List!38469 C!21156) Bool)

(assert (=> b!3638907 (= res!1474624 (contains!7517 lt!1259508 lt!1259514))))

(declare-fun head!7722 (List!38469) C!21156)

(assert (=> b!3638907 (= lt!1259514 (head!7722 lt!1259509))))

(assert (=> b!3638908 (= e!2252536 (and tp!1110280 tp!1110276))))

(declare-fun b!3638909 () Bool)

(assert (=> b!3638909 (= e!2252547 e!2252556)))

(declare-fun res!1474639 () Bool)

(assert (=> b!3638909 (=> (not res!1474639) (not e!2252556))))

(declare-fun lt!1259518 () tuple2!38216)

(assert (=> b!3638909 (= res!1474639 (= (_1!22242 lt!1259518) token!511))))

(assert (=> b!3638909 (= lt!1259518 (get!12554 lt!1259505))))

(declare-fun b!3638910 () Bool)

(declare-fun tp!1110273 () Bool)

(assert (=> b!3638910 (= e!2252560 (and e!2252542 tp!1110273))))

(declare-fun b!3638911 () Bool)

(declare-fun res!1474619 () Bool)

(assert (=> b!3638911 (=> (not res!1474619) (not e!2252556))))

(assert (=> b!3638911 (= res!1474619 (= (rule!8506 token!511) rule!403))))

(declare-fun b!3638912 () Bool)

(declare-fun res!1474622 () Bool)

(assert (=> b!3638912 (=> (not res!1474622) (not e!2252539))))

(assert (=> b!3638912 (= res!1474622 (not (= (isSeparator!5726 anOtherTypeRule!33) (isSeparator!5726 rule!403))))))

(declare-fun b!3638913 () Bool)

(declare-fun res!1474623 () Bool)

(assert (=> b!3638913 (=> (not res!1474623) (not e!2252556))))

(assert (=> b!3638913 (= res!1474623 (isEmpty!22700 (_2!22242 lt!1259518)))))

(declare-fun b!3638914 () Bool)

(declare-fun res!1474618 () Bool)

(assert (=> b!3638914 (=> res!1474618 e!2252546)))

(declare-fun lt!1259515 () C!21156)

(declare-fun usedCharacters!938 (Regex!10485) List!38469)

(assert (=> b!3638914 (= res!1474618 (not (contains!7517 (usedCharacters!938 (regex!5726 anOtherTypeRule!33)) lt!1259515)))))

(declare-fun b!3638915 () Bool)

(assert (=> b!3638915 (= e!2252538 e!2252546)))

(declare-fun res!1474620 () Bool)

(assert (=> b!3638915 (=> res!1474620 e!2252546)))

(assert (=> b!3638915 (= res!1474620 (contains!7517 lt!1259508 lt!1259515))))

(assert (=> b!3638915 (= lt!1259515 (head!7722 suffix!1395))))

(assert (=> b!3638915 (= lt!1259508 (usedCharacters!938 (regex!5726 rule!403)))))

(declare-fun b!3638916 () Bool)

(declare-fun res!1474621 () Bool)

(assert (=> b!3638916 (=> res!1474621 e!2252559)))

(assert (=> b!3638916 (= res!1474621 (not (matchR!5054 (regex!5726 (rule!8506 (_1!22242 lt!1259519))) lt!1259509)))))

(declare-fun b!3638917 () Bool)

(declare-fun res!1474637 () Bool)

(assert (=> b!3638917 (=> (not res!1474637) (not e!2252539))))

(declare-fun contains!7518 (List!38471 Rule!11252) Bool)

(assert (=> b!3638917 (= res!1474637 (contains!7518 rules!3307 rule!403))))

(declare-fun b!3638918 () Bool)

(declare-fun res!1474627 () Bool)

(assert (=> b!3638918 (=> (not res!1474627) (not e!2252539))))

(assert (=> b!3638918 (= res!1474627 (contains!7518 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3638919 () Bool)

(assert (=> b!3638919 (= e!2252558 true)))

(assert (=> b!3638919 false))

(declare-fun lt!1259504 () Unit!55178)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!674 (Regex!10485 List!38469 C!21156) Unit!55178)

(assert (=> b!3638919 (= lt!1259504 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!674 (regex!5726 rule!403) lt!1259521 lt!1259514))))

(declare-fun tp!1110282 () Bool)

(declare-fun b!3638920 () Bool)

(assert (=> b!3638920 (= e!2252551 (and tp!1110282 (inv!51774 (tag!6472 rule!403)) (inv!51777 (transformation!5726 rule!403)) e!2252540))))

(assert (= (and start!339754 res!1474629) b!3638897))

(assert (= (and b!3638897 res!1474628) b!3638901))

(assert (= (and b!3638901 res!1474636) b!3638917))

(assert (= (and b!3638917 res!1474637) b!3638918))

(assert (= (and b!3638918 res!1474627) b!3638912))

(assert (= (and b!3638912 res!1474622) b!3638905))

(assert (= (and b!3638905 res!1474631) b!3638909))

(assert (= (and b!3638909 res!1474639) b!3638913))

(assert (= (and b!3638913 res!1474623) b!3638911))

(assert (= (and b!3638911 res!1474619) b!3638893))

(assert (= (and b!3638893 (not res!1474638)) b!3638888))

(assert (= (and b!3638888 (not res!1474633)) b!3638915))

(assert (= (and b!3638915 (not res!1474620)) b!3638914))

(assert (= (and b!3638914 (not res!1474618)) b!3638892))

(assert (= (and b!3638892 (not res!1474625)) b!3638903))

(assert (= (and b!3638903 res!1474630) b!3638894))

(assert (= (and b!3638894 res!1474632) b!3638895))

(assert (= (and b!3638903 (not res!1474626)) b!3638916))

(assert (= (and b!3638916 (not res!1474621)) b!3638904))

(assert (= (and b!3638904 (not res!1474634)) b!3638902))

(assert (= (and b!3638902 (not res!1474635)) b!3638907))

(assert (= (and b!3638907 (not res!1474624)) b!3638919))

(assert (= b!3638889 b!3638898))

(assert (= b!3638910 b!3638889))

(assert (= (and start!339754 ((_ is Cons!38347) rules!3307)) b!3638910))

(assert (= (and start!339754 ((_ is Cons!38345) suffix!1395)) b!3638899))

(assert (= b!3638890 b!3638908))

(assert (= b!3638906 b!3638890))

(assert (= start!339754 b!3638906))

(assert (= b!3638920 b!3638896))

(assert (= start!339754 b!3638920))

(assert (= b!3638900 b!3638891))

(assert (= start!339754 b!3638900))

(declare-fun m!4141555 () Bool)

(assert (=> b!3638915 m!4141555))

(declare-fun m!4141557 () Bool)

(assert (=> b!3638915 m!4141557))

(declare-fun m!4141559 () Bool)

(assert (=> b!3638915 m!4141559))

(declare-fun m!4141561 () Bool)

(assert (=> start!339754 m!4141561))

(declare-fun m!4141563 () Bool)

(assert (=> b!3638916 m!4141563))

(declare-fun m!4141565 () Bool)

(assert (=> b!3638897 m!4141565))

(declare-fun m!4141567 () Bool)

(assert (=> b!3638903 m!4141567))

(declare-fun m!4141569 () Bool)

(assert (=> b!3638903 m!4141569))

(declare-fun m!4141571 () Bool)

(assert (=> b!3638903 m!4141571))

(declare-fun m!4141573 () Bool)

(assert (=> b!3638903 m!4141573))

(declare-fun m!4141575 () Bool)

(assert (=> b!3638903 m!4141575))

(declare-fun m!4141577 () Bool)

(assert (=> b!3638903 m!4141577))

(declare-fun m!4141579 () Bool)

(assert (=> b!3638903 m!4141579))

(declare-fun m!4141581 () Bool)

(assert (=> b!3638903 m!4141581))

(assert (=> b!3638903 m!4141567))

(declare-fun m!4141583 () Bool)

(assert (=> b!3638903 m!4141583))

(declare-fun m!4141585 () Bool)

(assert (=> b!3638903 m!4141585))

(declare-fun m!4141587 () Bool)

(assert (=> b!3638903 m!4141587))

(declare-fun m!4141589 () Bool)

(assert (=> b!3638903 m!4141589))

(declare-fun m!4141591 () Bool)

(assert (=> b!3638903 m!4141591))

(declare-fun m!4141593 () Bool)

(assert (=> b!3638903 m!4141593))

(declare-fun m!4141595 () Bool)

(assert (=> b!3638903 m!4141595))

(assert (=> b!3638894 m!4141591))

(assert (=> b!3638894 m!4141591))

(declare-fun m!4141597 () Bool)

(assert (=> b!3638894 m!4141597))

(assert (=> b!3638894 m!4141597))

(declare-fun m!4141599 () Bool)

(assert (=> b!3638894 m!4141599))

(declare-fun m!4141601 () Bool)

(assert (=> b!3638894 m!4141601))

(declare-fun m!4141603 () Bool)

(assert (=> b!3638890 m!4141603))

(declare-fun m!4141605 () Bool)

(assert (=> b!3638890 m!4141605))

(declare-fun m!4141607 () Bool)

(assert (=> b!3638907 m!4141607))

(declare-fun m!4141609 () Bool)

(assert (=> b!3638907 m!4141609))

(declare-fun m!4141611 () Bool)

(assert (=> b!3638905 m!4141611))

(declare-fun m!4141613 () Bool)

(assert (=> b!3638905 m!4141613))

(declare-fun m!4141615 () Bool)

(assert (=> b!3638905 m!4141615))

(assert (=> b!3638905 m!4141615))

(declare-fun m!4141617 () Bool)

(assert (=> b!3638905 m!4141617))

(declare-fun m!4141619 () Bool)

(assert (=> b!3638914 m!4141619))

(assert (=> b!3638914 m!4141619))

(declare-fun m!4141621 () Bool)

(assert (=> b!3638914 m!4141621))

(declare-fun m!4141623 () Bool)

(assert (=> b!3638901 m!4141623))

(declare-fun m!4141625 () Bool)

(assert (=> b!3638888 m!4141625))

(declare-fun m!4141627 () Bool)

(assert (=> b!3638906 m!4141627))

(declare-fun m!4141629 () Bool)

(assert (=> b!3638892 m!4141629))

(declare-fun m!4141631 () Bool)

(assert (=> b!3638909 m!4141631))

(declare-fun m!4141633 () Bool)

(assert (=> b!3638917 m!4141633))

(declare-fun m!4141635 () Bool)

(assert (=> b!3638893 m!4141635))

(declare-fun m!4141637 () Bool)

(assert (=> b!3638893 m!4141637))

(declare-fun m!4141639 () Bool)

(assert (=> b!3638893 m!4141639))

(declare-fun m!4141641 () Bool)

(assert (=> b!3638889 m!4141641))

(declare-fun m!4141643 () Bool)

(assert (=> b!3638889 m!4141643))

(declare-fun m!4141645 () Bool)

(assert (=> b!3638900 m!4141645))

(declare-fun m!4141647 () Bool)

(assert (=> b!3638900 m!4141647))

(declare-fun m!4141649 () Bool)

(assert (=> b!3638918 m!4141649))

(declare-fun m!4141651 () Bool)

(assert (=> b!3638913 m!4141651))

(declare-fun m!4141653 () Bool)

(assert (=> b!3638920 m!4141653))

(declare-fun m!4141655 () Bool)

(assert (=> b!3638920 m!4141655))

(declare-fun m!4141657 () Bool)

(assert (=> b!3638904 m!4141657))

(declare-fun m!4141659 () Bool)

(assert (=> b!3638904 m!4141659))

(declare-fun m!4141661 () Bool)

(assert (=> b!3638904 m!4141661))

(declare-fun m!4141663 () Bool)

(assert (=> b!3638904 m!4141663))

(declare-fun m!4141665 () Bool)

(assert (=> b!3638904 m!4141665))

(assert (=> b!3638904 m!4141657))

(declare-fun m!4141667 () Bool)

(assert (=> b!3638904 m!4141667))

(declare-fun m!4141669 () Bool)

(assert (=> b!3638919 m!4141669))

(declare-fun m!4141671 () Bool)

(assert (=> b!3638902 m!4141671))

(declare-fun m!4141673 () Bool)

(assert (=> b!3638902 m!4141673))

(declare-fun m!4141675 () Bool)

(assert (=> b!3638902 m!4141675))

(declare-fun m!4141677 () Bool)

(assert (=> b!3638902 m!4141677))

(assert (=> b!3638902 m!4141675))

(declare-fun m!4141679 () Bool)

(assert (=> b!3638902 m!4141679))

(declare-fun m!4141681 () Bool)

(assert (=> b!3638902 m!4141681))

(declare-fun m!4141683 () Bool)

(assert (=> b!3638902 m!4141683))

(check-sat (not b!3638906) (not b!3638910) (not b!3638918) (not b!3638893) (not b_next!96041) b_and!268021 (not b_next!96043) (not b_next!96045) (not b!3638914) b_and!268013 (not b!3638903) (not b!3638902) (not b!3638899) tp_is_empty!18053 (not b!3638917) (not b!3638900) (not b!3638909) (not b_next!96047) (not b!3638894) (not b_next!96035) (not b!3638888) (not b!3638901) (not b!3638916) (not b!3638905) (not b!3638907) (not b!3638892) (not b_next!96037) b_and!268017 (not b!3638915) (not b!3638913) (not b!3638890) b_and!268011 (not start!339754) (not b!3638897) (not b_next!96039) b_and!268023 b_and!268025 (not b!3638904) b_and!268015 (not b!3638919) (not b!3638920) (not b!3638889) b_and!268019 (not b_next!96033))
(check-sat (not b_next!96047) (not b_next!96035) (not b_next!96041) b_and!268021 (not b_next!96043) (not b_next!96045) b_and!268011 b_and!268013 b_and!268025 b_and!268015 (not b_next!96037) b_and!268017 (not b_next!96039) b_and!268023 b_and!268019 (not b_next!96033))
