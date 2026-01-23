; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343810 () Bool)

(assert start!343810)

(declare-fun b!3668998 () Bool)

(declare-fun b_free!96913 () Bool)

(declare-fun b_next!97617 () Bool)

(assert (=> b!3668998 (= b_free!96913 (not b_next!97617))))

(declare-fun tp!1116648 () Bool)

(declare-fun b_and!273075 () Bool)

(assert (=> b!3668998 (= tp!1116648 b_and!273075)))

(declare-fun b_free!96915 () Bool)

(declare-fun b_next!97619 () Bool)

(assert (=> b!3668998 (= b_free!96915 (not b_next!97619))))

(declare-fun tp!1116645 () Bool)

(declare-fun b_and!273077 () Bool)

(assert (=> b!3668998 (= tp!1116645 b_and!273077)))

(declare-fun b!3668981 () Bool)

(declare-fun b_free!96917 () Bool)

(declare-fun b_next!97621 () Bool)

(assert (=> b!3668981 (= b_free!96917 (not b_next!97621))))

(declare-fun tp!1116655 () Bool)

(declare-fun b_and!273079 () Bool)

(assert (=> b!3668981 (= tp!1116655 b_and!273079)))

(declare-fun b_free!96919 () Bool)

(declare-fun b_next!97623 () Bool)

(assert (=> b!3668981 (= b_free!96919 (not b_next!97623))))

(declare-fun tp!1116650 () Bool)

(declare-fun b_and!273081 () Bool)

(assert (=> b!3668981 (= tp!1116650 b_and!273081)))

(declare-fun b!3669008 () Bool)

(declare-fun b_free!96921 () Bool)

(declare-fun b_next!97625 () Bool)

(assert (=> b!3669008 (= b_free!96921 (not b_next!97625))))

(declare-fun tp!1116647 () Bool)

(declare-fun b_and!273083 () Bool)

(assert (=> b!3669008 (= tp!1116647 b_and!273083)))

(declare-fun b_free!96923 () Bool)

(declare-fun b_next!97627 () Bool)

(assert (=> b!3669008 (= b_free!96923 (not b_next!97627))))

(declare-fun tp!1116653 () Bool)

(declare-fun b_and!273085 () Bool)

(assert (=> b!3669008 (= tp!1116653 b_and!273085)))

(declare-fun b!3669002 () Bool)

(declare-fun b_free!96925 () Bool)

(declare-fun b_next!97629 () Bool)

(assert (=> b!3669002 (= b_free!96925 (not b_next!97629))))

(declare-fun tp!1116644 () Bool)

(declare-fun b_and!273087 () Bool)

(assert (=> b!3669002 (= tp!1116644 b_and!273087)))

(declare-fun b_free!96927 () Bool)

(declare-fun b_next!97631 () Bool)

(assert (=> b!3669002 (= b_free!96927 (not b_next!97631))))

(declare-fun tp!1116657 () Bool)

(declare-fun b_and!273089 () Bool)

(assert (=> b!3669002 (= tp!1116657 b_and!273089)))

(declare-datatypes ((List!38817 0))(
  ( (Nil!38693) (Cons!38693 (h!44113 (_ BitVec 16)) (t!299452 List!38817)) )
))
(declare-datatypes ((TokenValue!6044 0))(
  ( (FloatLiteralValue!12088 (text!42753 List!38817)) (TokenValueExt!6043 (__x!24305 Int)) (Broken!30220 (value!186133 List!38817)) (Object!6167) (End!6044) (Def!6044) (Underscore!6044) (Match!6044) (Else!6044) (Error!6044) (Case!6044) (If!6044) (Extends!6044) (Abstract!6044) (Class!6044) (Val!6044) (DelimiterValue!12088 (del!6104 List!38817)) (KeywordValue!6050 (value!186134 List!38817)) (CommentValue!12088 (value!186135 List!38817)) (WhitespaceValue!12088 (value!186136 List!38817)) (IndentationValue!6044 (value!186137 List!38817)) (String!43553) (Int32!6044) (Broken!30221 (value!186138 List!38817)) (Boolean!6045) (Unit!56206) (OperatorValue!6047 (op!6104 List!38817)) (IdentifierValue!12088 (value!186139 List!38817)) (IdentifierValue!12089 (value!186140 List!38817)) (WhitespaceValue!12089 (value!186141 List!38817)) (True!12088) (False!12088) (Broken!30222 (value!186142 List!38817)) (Broken!30223 (value!186143 List!38817)) (True!12089) (RightBrace!6044) (RightBracket!6044) (Colon!6044) (Null!6044) (Comma!6044) (LeftBracket!6044) (False!12089) (LeftBrace!6044) (ImaginaryLiteralValue!6044 (text!42754 List!38817)) (StringLiteralValue!18132 (value!186144 List!38817)) (EOFValue!6044 (value!186145 List!38817)) (IdentValue!6044 (value!186146 List!38817)) (DelimiterValue!12089 (value!186147 List!38817)) (DedentValue!6044 (value!186148 List!38817)) (NewLineValue!6044 (value!186149 List!38817)) (IntegerValue!18132 (value!186150 (_ BitVec 32)) (text!42755 List!38817)) (IntegerValue!18133 (value!186151 Int) (text!42756 List!38817)) (Times!6044) (Or!6044) (Equal!6044) (Minus!6044) (Broken!30224 (value!186152 List!38817)) (And!6044) (Div!6044) (LessEqual!6044) (Mod!6044) (Concat!16617) (Not!6044) (Plus!6044) (SpaceValue!6044 (value!186153 List!38817)) (IntegerValue!18134 (value!186154 Int) (text!42757 List!38817)) (StringLiteralValue!18133 (text!42758 List!38817)) (FloatLiteralValue!12089 (text!42759 List!38817)) (BytesLiteralValue!6044 (value!186155 List!38817)) (CommentValue!12089 (value!186156 List!38817)) (StringLiteralValue!18134 (value!186157 List!38817)) (ErrorTokenValue!6044 (msg!6105 List!38817)) )
))
(declare-datatypes ((C!21332 0))(
  ( (C!21333 (val!12714 Int)) )
))
(declare-datatypes ((Regex!10573 0))(
  ( (ElementMatch!10573 (c!634352 C!21332)) (Concat!16618 (regOne!21658 Regex!10573) (regTwo!21658 Regex!10573)) (EmptyExpr!10573) (Star!10573 (reg!10902 Regex!10573)) (EmptyLang!10573) (Union!10573 (regOne!21659 Regex!10573) (regTwo!21659 Regex!10573)) )
))
(declare-datatypes ((String!43554 0))(
  ( (String!43555 (value!186158 String)) )
))
(declare-datatypes ((List!38818 0))(
  ( (Nil!38694) (Cons!38694 (h!44114 C!21332) (t!299453 List!38818)) )
))
(declare-datatypes ((IArray!23679 0))(
  ( (IArray!23680 (innerList!11897 List!38818)) )
))
(declare-datatypes ((Conc!11837 0))(
  ( (Node!11837 (left!30198 Conc!11837) (right!30528 Conc!11837) (csize!23904 Int) (cheight!12048 Int)) (Leaf!18355 (xs!15039 IArray!23679) (csize!23905 Int)) (Empty!11837) )
))
(declare-datatypes ((BalanceConc!23288 0))(
  ( (BalanceConc!23289 (c!634353 Conc!11837)) )
))
(declare-datatypes ((TokenValueInjection!11516 0))(
  ( (TokenValueInjection!11517 (toValue!8110 Int) (toChars!7969 Int)) )
))
(declare-datatypes ((Rule!11428 0))(
  ( (Rule!11429 (regex!5814 Regex!10573) (tag!6602 String!43554) (isSeparator!5814 Bool) (transformation!5814 TokenValueInjection!11516)) )
))
(declare-datatypes ((Token!10994 0))(
  ( (Token!10995 (value!186159 TokenValue!6044) (rule!8636 Rule!11428) (size!29571 Int) (originalCharacters!6528 List!38818)) )
))
(declare-fun token!511 () Token!10994)

(declare-fun tp!1116654 () Bool)

(declare-fun e!2271751 () Bool)

(declare-fun b!3668958 () Bool)

(declare-fun e!2271783 () Bool)

(declare-fun inv!21 (TokenValue!6044) Bool)

(assert (=> b!3668958 (= e!2271751 (and (inv!21 (value!186159 token!511)) e!2271783 tp!1116654))))

(declare-fun b!3668960 () Bool)

(assert (=> b!3668960 false))

(declare-datatypes ((Unit!56207 0))(
  ( (Unit!56208) )
))
(declare-fun lt!1278255 () Unit!56207)

(declare-fun call!265577 () Unit!56207)

(assert (=> b!3668960 (= lt!1278255 call!265577)))

(declare-fun call!265578 () Bool)

(assert (=> b!3668960 (not call!265578)))

(declare-datatypes ((LexerInterface!5403 0))(
  ( (LexerInterfaceExt!5400 (__x!24306 Int)) (Lexer!5401) )
))
(declare-fun thiss!23823 () LexerInterface!5403)

(declare-fun lt!1278264 () Unit!56207)

(declare-fun lt!1278270 () C!21332)

(declare-datatypes ((tuple2!38564 0))(
  ( (tuple2!38565 (_1!22416 Token!10994) (_2!22416 List!38818)) )
))
(declare-fun lt!1278279 () tuple2!38564)

(declare-datatypes ((List!38819 0))(
  ( (Nil!38695) (Cons!38695 (h!44115 Rule!11428) (t!299454 List!38819)) )
))
(declare-fun rules!3307 () List!38819)

(declare-fun rule!403 () Rule!11428)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!342 (LexerInterface!5403 List!38819 List!38819 Rule!11428 Rule!11428 C!21332) Unit!56207)

(assert (=> b!3668960 (= lt!1278264 (lemmaSepRuleNotContainsCharContainedInANonSepRule!342 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8636 (_1!22416 lt!1278279)) lt!1278270))))

(declare-fun e!2271768 () Unit!56207)

(declare-fun Unit!56209 () Unit!56207)

(assert (=> b!3668960 (= e!2271768 Unit!56209)))

(declare-fun b!3668961 () Bool)

(declare-fun e!2271782 () Bool)

(declare-fun e!2271777 () Bool)

(assert (=> b!3668961 (= e!2271782 e!2271777)))

(declare-fun res!1489917 () Bool)

(assert (=> b!3668961 (=> res!1489917 e!2271777)))

(declare-fun lt!1278293 () Int)

(declare-datatypes ((Option!8256 0))(
  ( (None!8255) (Some!8255 (v!38163 tuple2!38564)) )
))
(declare-fun lt!1278272 () Option!8256)

(declare-fun lt!1278254 () TokenValue!6044)

(declare-fun lt!1278291 () List!38818)

(assert (=> b!3668961 (= res!1489917 (not (= lt!1278272 (Some!8255 (tuple2!38565 (Token!10995 lt!1278254 (rule!8636 (_1!22416 lt!1278279)) lt!1278293 lt!1278291) (_2!22416 lt!1278279))))))))

(declare-fun lt!1278287 () BalanceConc!23288)

(declare-fun size!29572 (BalanceConc!23288) Int)

(assert (=> b!3668961 (= lt!1278293 (size!29572 lt!1278287))))

(declare-fun apply!9316 (TokenValueInjection!11516 BalanceConc!23288) TokenValue!6044)

(assert (=> b!3668961 (= lt!1278254 (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287))))

(declare-fun lt!1278269 () Unit!56207)

(declare-fun lemmaCharactersSize!859 (Token!10994) Unit!56207)

(assert (=> b!3668961 (= lt!1278269 (lemmaCharactersSize!859 (_1!22416 lt!1278279)))))

(declare-fun lt!1278277 () Unit!56207)

(declare-fun lemmaEqSameImage!997 (TokenValueInjection!11516 BalanceConc!23288 BalanceConc!23288) Unit!56207)

(declare-fun seqFromList!4363 (List!38818) BalanceConc!23288)

(assert (=> b!3668961 (= lt!1278277 (lemmaEqSameImage!997 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287 (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279)))))))

(declare-fun lt!1278275 () Unit!56207)

(declare-fun lemmaSemiInverse!1563 (TokenValueInjection!11516 BalanceConc!23288) Unit!56207)

(assert (=> b!3668961 (= lt!1278275 (lemmaSemiInverse!1563 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287))))

(declare-fun b!3668962 () Bool)

(declare-fun res!1489910 () Bool)

(declare-fun e!2271757 () Bool)

(assert (=> b!3668962 (=> (not res!1489910) (not e!2271757))))

(declare-fun lt!1278261 () tuple2!38564)

(declare-fun isEmpty!22962 (List!38818) Bool)

(assert (=> b!3668962 (= res!1489910 (isEmpty!22962 (_2!22416 lt!1278261)))))

(declare-fun b!3668963 () Bool)

(declare-fun res!1489909 () Bool)

(declare-fun e!2271776 () Bool)

(assert (=> b!3668963 (=> (not res!1489909) (not e!2271776))))

(declare-fun contains!7695 (List!38819 Rule!11428) Bool)

(assert (=> b!3668963 (= res!1489909 (contains!7695 rules!3307 rule!403))))

(declare-fun b!3668964 () Bool)

(declare-fun e!2271762 () Unit!56207)

(declare-fun Unit!56210 () Unit!56207)

(assert (=> b!3668964 (= e!2271762 Unit!56210)))

(declare-fun lt!1278266 () Unit!56207)

(declare-fun lt!1278296 () List!38818)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (Regex!10573 List!38818 C!21332) Unit!56207)

(assert (=> b!3668964 (= lt!1278266 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 rule!403) lt!1278296 lt!1278270))))

(assert (=> b!3668964 false))

(declare-fun b!3668965 () Bool)

(declare-fun e!2271780 () Bool)

(declare-fun e!2271750 () Bool)

(assert (=> b!3668965 (= e!2271780 e!2271750)))

(declare-fun res!1489905 () Bool)

(assert (=> b!3668965 (=> (not res!1489905) (not e!2271750))))

(declare-fun lt!1278249 () Rule!11428)

(declare-fun matchR!5142 (Regex!10573 List!38818) Bool)

(declare-fun list!14368 (BalanceConc!23288) List!38818)

(declare-fun charsOf!3828 (Token!10994) BalanceConc!23288)

(assert (=> b!3668965 (= res!1489905 (matchR!5142 (regex!5814 lt!1278249) (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))))))

(declare-datatypes ((Option!8257 0))(
  ( (None!8256) (Some!8256 (v!38164 Rule!11428)) )
))
(declare-fun lt!1278276 () Option!8257)

(declare-fun get!12773 (Option!8257) Rule!11428)

(assert (=> b!3668965 (= lt!1278249 (get!12773 lt!1278276))))

(declare-fun b!3668966 () Bool)

(declare-fun e!2271755 () Bool)

(declare-fun e!2271784 () Bool)

(declare-fun tp!1116649 () Bool)

(declare-fun inv!52172 (String!43554) Bool)

(declare-fun inv!52175 (TokenValueInjection!11516) Bool)

(assert (=> b!3668966 (= e!2271784 (and tp!1116649 (inv!52172 (tag!6602 (h!44115 rules!3307))) (inv!52175 (transformation!5814 (h!44115 rules!3307))) e!2271755))))

(declare-fun b!3668967 () Bool)

(declare-fun e!2271758 () Bool)

(assert (=> b!3668967 (= e!2271777 e!2271758)))

(declare-fun res!1489906 () Bool)

(assert (=> b!3668967 (=> res!1489906 e!2271758)))

(declare-fun lt!1278260 () Option!8256)

(declare-fun lt!1278282 () List!38818)

(assert (=> b!3668967 (= res!1489906 (or (not (= lt!1278282 (_2!22416 lt!1278279))) (not (= lt!1278260 (Some!8255 (tuple2!38565 (_1!22416 lt!1278279) lt!1278282))))))))

(assert (=> b!3668967 (= (_2!22416 lt!1278279) lt!1278282)))

(declare-fun lt!1278258 () Unit!56207)

(declare-fun lt!1278285 () List!38818)

(declare-fun lemmaSamePrefixThenSameSuffix!1504 (List!38818 List!38818 List!38818 List!38818 List!38818) Unit!56207)

(assert (=> b!3668967 (= lt!1278258 (lemmaSamePrefixThenSameSuffix!1504 lt!1278291 (_2!22416 lt!1278279) lt!1278291 lt!1278282 lt!1278285))))

(declare-fun getSuffix!1730 (List!38818 List!38818) List!38818)

(assert (=> b!3668967 (= lt!1278282 (getSuffix!1730 lt!1278285 lt!1278291))))

(declare-fun lt!1278268 () TokenValue!6044)

(declare-fun lt!1278253 () Int)

(assert (=> b!3668967 (= lt!1278260 (Some!8255 (tuple2!38565 (Token!10995 lt!1278268 (rule!8636 (_1!22416 lt!1278279)) lt!1278253 lt!1278291) (_2!22416 lt!1278279))))))

(declare-fun maxPrefixOneRule!2075 (LexerInterface!5403 Rule!11428 List!38818) Option!8256)

(assert (=> b!3668967 (= lt!1278260 (maxPrefixOneRule!2075 thiss!23823 (rule!8636 (_1!22416 lt!1278279)) lt!1278285))))

(declare-fun size!29573 (List!38818) Int)

(assert (=> b!3668967 (= lt!1278253 (size!29573 lt!1278291))))

(assert (=> b!3668967 (= lt!1278268 (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) (seqFromList!4363 lt!1278291)))))

(declare-fun lt!1278248 () Unit!56207)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1131 (LexerInterface!5403 List!38819 List!38818 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> b!3668967 (= lt!1278248 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1131 thiss!23823 rules!3307 lt!1278291 lt!1278285 (_2!22416 lt!1278279) (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun b!3668968 () Bool)

(declare-fun e!2271767 () Bool)

(declare-fun tp_is_empty!18229 () Bool)

(declare-fun tp!1116646 () Bool)

(assert (=> b!3668968 (= e!2271767 (and tp_is_empty!18229 tp!1116646))))

(declare-fun b!3668969 () Bool)

(declare-fun e!2271781 () Bool)

(assert (=> b!3668969 (= e!2271781 e!2271782)))

(declare-fun res!1489922 () Bool)

(assert (=> b!3668969 (=> res!1489922 e!2271782)))

(declare-fun isPrefix!3177 (List!38818 List!38818) Bool)

(assert (=> b!3668969 (= res!1489922 (not (isPrefix!3177 lt!1278291 lt!1278285)))))

(declare-fun ++!9630 (List!38818 List!38818) List!38818)

(assert (=> b!3668969 (isPrefix!3177 lt!1278291 (++!9630 lt!1278291 (_2!22416 lt!1278279)))))

(declare-fun lt!1278294 () Unit!56207)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2096 (List!38818 List!38818) Unit!56207)

(assert (=> b!3668969 (= lt!1278294 (lemmaConcatTwoListThenFirstIsPrefix!2096 lt!1278291 (_2!22416 lt!1278279)))))

(assert (=> b!3668969 (= lt!1278291 (list!14368 lt!1278287))))

(assert (=> b!3668969 (= lt!1278287 (charsOf!3828 (_1!22416 lt!1278279)))))

(assert (=> b!3668969 e!2271780))

(declare-fun res!1489915 () Bool)

(assert (=> b!3668969 (=> (not res!1489915) (not e!2271780))))

(declare-fun isDefined!6488 (Option!8257) Bool)

(assert (=> b!3668969 (= res!1489915 (isDefined!6488 lt!1278276))))

(declare-fun getRuleFromTag!1418 (LexerInterface!5403 List!38819 String!43554) Option!8257)

(assert (=> b!3668969 (= lt!1278276 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun lt!1278295 () Unit!56207)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1418 (LexerInterface!5403 List!38819 List!38818 Token!10994) Unit!56207)

(assert (=> b!3668969 (= lt!1278295 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1418 thiss!23823 rules!3307 lt!1278285 (_1!22416 lt!1278279)))))

(declare-fun get!12774 (Option!8256) tuple2!38564)

(assert (=> b!3668969 (= lt!1278279 (get!12774 lt!1278272))))

(declare-fun lt!1278288 () Unit!56207)

(declare-fun suffix!1395 () List!38818)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1081 (LexerInterface!5403 List!38819 List!38818 List!38818) Unit!56207)

(assert (=> b!3668969 (= lt!1278288 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1081 thiss!23823 rules!3307 lt!1278296 suffix!1395))))

(declare-fun maxPrefix!2937 (LexerInterface!5403 List!38819 List!38818) Option!8256)

(assert (=> b!3668969 (= lt!1278272 (maxPrefix!2937 thiss!23823 rules!3307 lt!1278285))))

(assert (=> b!3668969 (isPrefix!3177 lt!1278296 lt!1278285)))

(declare-fun lt!1278273 () Unit!56207)

(assert (=> b!3668969 (= lt!1278273 (lemmaConcatTwoListThenFirstIsPrefix!2096 lt!1278296 suffix!1395))))

(assert (=> b!3668969 (= lt!1278285 (++!9630 lt!1278296 suffix!1395))))

(declare-fun b!3668970 () Bool)

(declare-fun e!2271778 () Unit!56207)

(declare-fun Unit!56211 () Unit!56207)

(assert (=> b!3668970 (= e!2271778 Unit!56211)))

(declare-fun lt!1278290 () Unit!56207)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!194 (List!38818) Unit!56207)

(assert (=> b!3668970 (= lt!1278290 (lemmaGetSuffixOnListWithItSelfIsEmpty!194 lt!1278296))))

(assert (=> b!3668970 (isEmpty!22962 (getSuffix!1730 lt!1278296 lt!1278296))))

(declare-fun lt!1278289 () Unit!56207)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!222 (LexerInterface!5403 List!38819 Rule!11428 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> b!3668970 (= lt!1278289 (lemmaMaxPrefNoSmallerRuleMatches!222 thiss!23823 rules!3307 rule!403 lt!1278296 lt!1278296 (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun res!1489925 () Bool)

(assert (=> b!3668970 (= res!1489925 (not (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278296)))))

(declare-fun e!2271764 () Bool)

(assert (=> b!3668970 (=> (not res!1489925) (not e!2271764))))

(assert (=> b!3668970 e!2271764))

(declare-fun b!3668971 () Bool)

(declare-fun e!2271772 () Bool)

(declare-fun e!2271773 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11428)

(declare-fun tp!1116656 () Bool)

(assert (=> b!3668971 (= e!2271773 (and tp!1116656 (inv!52172 (tag!6602 anOtherTypeRule!33)) (inv!52175 (transformation!5814 anOtherTypeRule!33)) e!2271772))))

(declare-fun res!1489912 () Bool)

(assert (=> start!343810 (=> (not res!1489912) (not e!2271776))))

(get-info :version)

(assert (=> start!343810 (= res!1489912 ((_ is Lexer!5401) thiss!23823))))

(assert (=> start!343810 e!2271776))

(declare-fun e!2271752 () Bool)

(assert (=> start!343810 e!2271752))

(assert (=> start!343810 e!2271767))

(assert (=> start!343810 true))

(declare-fun inv!52176 (Token!10994) Bool)

(assert (=> start!343810 (and (inv!52176 token!511) e!2271751)))

(declare-fun e!2271761 () Bool)

(assert (=> start!343810 e!2271761))

(assert (=> start!343810 e!2271773))

(declare-fun b!3668959 () Bool)

(assert (=> b!3668959 false))

(declare-fun lt!1278280 () Unit!56207)

(assert (=> b!3668959 (= lt!1278280 call!265577)))

(assert (=> b!3668959 (not call!265578)))

(declare-fun lt!1278252 () Unit!56207)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!460 (LexerInterface!5403 List!38819 List!38819 Rule!11428 Rule!11428 C!21332) Unit!56207)

(assert (=> b!3668959 (= lt!1278252 (lemmaNonSepRuleNotContainsCharContainedInASepRule!460 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) rule!403 lt!1278270))))

(declare-fun e!2271775 () Unit!56207)

(declare-fun Unit!56212 () Unit!56207)

(assert (=> b!3668959 (= e!2271775 Unit!56212)))

(declare-fun b!3668972 () Bool)

(assert (=> b!3668972 (= e!2271764 false)))

(declare-fun b!3668973 () Bool)

(declare-fun tp!1116651 () Bool)

(assert (=> b!3668973 (= e!2271752 (and e!2271784 tp!1116651))))

(declare-fun b!3668974 () Bool)

(declare-fun Unit!56213 () Unit!56207)

(assert (=> b!3668974 (= e!2271775 Unit!56213)))

(declare-fun b!3668975 () Bool)

(declare-fun res!1489920 () Bool)

(assert (=> b!3668975 (=> res!1489920 e!2271781)))

(declare-fun sepAndNonSepRulesDisjointChars!1982 (List!38819 List!38819) Bool)

(assert (=> b!3668975 (= res!1489920 (not (sepAndNonSepRulesDisjointChars!1982 rules!3307 rules!3307)))))

(declare-fun b!3668976 () Bool)

(declare-fun res!1489926 () Bool)

(declare-fun e!2271786 () Bool)

(assert (=> b!3668976 (=> res!1489926 e!2271786)))

(assert (=> b!3668976 (= res!1489926 (not (contains!7695 rules!3307 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3668977 () Bool)

(assert (=> b!3668977 false))

(declare-fun lt!1278247 () Unit!56207)

(declare-fun call!265576 () Unit!56207)

(assert (=> b!3668977 (= lt!1278247 call!265576)))

(declare-fun call!265580 () Bool)

(assert (=> b!3668977 (not call!265580)))

(declare-fun lt!1278274 () C!21332)

(declare-fun lt!1278263 () Unit!56207)

(assert (=> b!3668977 (= lt!1278263 (lemmaSepRuleNotContainsCharContainedInANonSepRule!342 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8636 (_1!22416 lt!1278279)) lt!1278274))))

(declare-fun e!2271765 () Unit!56207)

(declare-fun Unit!56214 () Unit!56207)

(assert (=> b!3668977 (= e!2271765 Unit!56214)))

(declare-fun b!3668978 () Bool)

(declare-fun res!1489924 () Bool)

(declare-fun e!2271759 () Bool)

(assert (=> b!3668978 (=> res!1489924 e!2271759)))

(assert (=> b!3668978 (= res!1489924 (isEmpty!22962 suffix!1395))))

(declare-fun b!3668979 () Bool)

(declare-fun e!2271770 () Bool)

(assert (=> b!3668979 (= e!2271770 e!2271757)))

(declare-fun res!1489928 () Bool)

(assert (=> b!3668979 (=> (not res!1489928) (not e!2271757))))

(assert (=> b!3668979 (= res!1489928 (= (_1!22416 lt!1278261) token!511))))

(declare-fun lt!1278278 () Option!8256)

(assert (=> b!3668979 (= lt!1278261 (get!12774 lt!1278278))))

(declare-fun bm!265570 () Bool)

(declare-fun call!265579 () List!38818)

(declare-fun usedCharacters!1026 (Regex!10573) List!38818)

(assert (=> bm!265570 (= call!265579 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3668980 () Bool)

(declare-fun Unit!56215 () Unit!56207)

(assert (=> b!3668980 (= e!2271762 Unit!56215)))

(declare-fun e!2271774 () Bool)

(assert (=> b!3668981 (= e!2271774 (and tp!1116655 tp!1116650))))

(declare-fun b!3668982 () Bool)

(assert (=> b!3668982 (= e!2271757 (not e!2271759))))

(declare-fun res!1489927 () Bool)

(assert (=> b!3668982 (=> res!1489927 e!2271759)))

(assert (=> b!3668982 (= res!1489927 (not (matchR!5142 (regex!5814 rule!403) lt!1278296)))))

(declare-fun ruleValid!2078 (LexerInterface!5403 Rule!11428) Bool)

(assert (=> b!3668982 (ruleValid!2078 thiss!23823 rule!403)))

(declare-fun lt!1278250 () Unit!56207)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1232 (LexerInterface!5403 Rule!11428 List!38819) Unit!56207)

(assert (=> b!3668982 (= lt!1278250 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1232 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1116652 () Bool)

(declare-fun e!2271756 () Bool)

(declare-fun b!3668983 () Bool)

(assert (=> b!3668983 (= e!2271761 (and tp!1116652 (inv!52172 (tag!6602 rule!403)) (inv!52175 (transformation!5814 rule!403)) e!2271756))))

(declare-fun b!3668984 () Bool)

(declare-fun res!1489908 () Bool)

(assert (=> b!3668984 (=> res!1489908 e!2271786)))

(assert (=> b!3668984 (= res!1489908 (isEmpty!22962 lt!1278296))))

(declare-fun b!3668985 () Bool)

(declare-fun res!1489923 () Bool)

(assert (=> b!3668985 (=> (not res!1489923) (not e!2271776))))

(assert (=> b!3668985 (= res!1489923 (contains!7695 rules!3307 anOtherTypeRule!33))))

(declare-fun bm!265571 () Bool)

(assert (=> bm!265571 (= call!265576 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278274))))

(declare-fun bm!265572 () Bool)

(declare-fun contains!7696 (List!38818 C!21332) Bool)

(assert (=> bm!265572 (= call!265578 (contains!7696 call!265579 lt!1278270))))

(declare-fun b!3668986 () Bool)

(assert (=> b!3668986 false))

(declare-fun lt!1278297 () Unit!56207)

(assert (=> b!3668986 (= lt!1278297 call!265576)))

(assert (=> b!3668986 (not call!265580)))

(declare-fun lt!1278262 () Unit!56207)

(assert (=> b!3668986 (= lt!1278262 (lemmaNonSepRuleNotContainsCharContainedInASepRule!460 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) anOtherTypeRule!33 lt!1278274))))

(declare-fun Unit!56216 () Unit!56207)

(assert (=> b!3668986 (= e!2271765 Unit!56216)))

(declare-fun b!3668987 () Bool)

(declare-fun Unit!56217 () Unit!56207)

(assert (=> b!3668987 (= e!2271778 Unit!56217)))

(declare-fun b!3668988 () Bool)

(declare-fun res!1489921 () Bool)

(assert (=> b!3668988 (=> (not res!1489921) (not e!2271776))))

(assert (=> b!3668988 (= res!1489921 (not (= (isSeparator!5814 anOtherTypeRule!33) (isSeparator!5814 rule!403))))))

(declare-fun b!3668989 () Bool)

(declare-fun res!1489918 () Bool)

(assert (=> b!3668989 (=> res!1489918 e!2271781)))

(assert (=> b!3668989 (= res!1489918 (not (contains!7696 (usedCharacters!1026 (regex!5814 anOtherTypeRule!33)) lt!1278274)))))

(declare-fun b!3668990 () Bool)

(declare-fun res!1489929 () Bool)

(assert (=> b!3668990 (=> (not res!1489929) (not e!2271776))))

(declare-fun rulesInvariant!4800 (LexerInterface!5403 List!38819) Bool)

(assert (=> b!3668990 (= res!1489929 (rulesInvariant!4800 thiss!23823 rules!3307))))

(declare-fun bm!265573 () Bool)

(declare-fun call!265575 () List!38818)

(assert (=> bm!265573 (= call!265580 (contains!7696 call!265575 lt!1278274))))

(declare-fun b!3668991 () Bool)

(assert (=> b!3668991 (= e!2271750 (= (rule!8636 (_1!22416 lt!1278279)) lt!1278249))))

(declare-fun bm!265574 () Bool)

(assert (=> bm!265574 (= call!265577 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278270))))

(declare-fun b!3668992 () Bool)

(declare-fun e!2271779 () Unit!56207)

(declare-fun Unit!56218 () Unit!56207)

(assert (=> b!3668992 (= e!2271779 Unit!56218)))

(declare-fun b!3668993 () Bool)

(declare-fun e!2271754 () Unit!56207)

(assert (=> b!3668993 (= e!2271754 e!2271765)))

(declare-fun lt!1278283 () Unit!56207)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!122 (List!38818 List!38818 List!38818 List!38818) Unit!56207)

(assert (=> b!3668993 (= lt!1278283 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!122 lt!1278296 suffix!1395 lt!1278291 lt!1278285))))

(assert (=> b!3668993 (contains!7696 lt!1278291 lt!1278274)))

(declare-fun c!634345 () Bool)

(assert (=> b!3668993 (= c!634345 (isSeparator!5814 rule!403))))

(declare-fun b!3668994 () Bool)

(declare-fun lt!1278299 () BalanceConc!23288)

(assert (=> b!3668994 (= e!2271786 (= lt!1278272 (Some!8255 (tuple2!38565 (Token!10995 (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278299) (rule!8636 (_1!22416 lt!1278279)) (size!29573 lt!1278296) lt!1278296) (getSuffix!1730 lt!1278285 lt!1278296)))))))

(declare-fun lt!1278300 () Unit!56207)

(assert (=> b!3668994 (= lt!1278300 (lemmaSemiInverse!1563 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278299))))

(assert (=> b!3668994 (= lt!1278299 (seqFromList!4363 lt!1278296))))

(declare-fun b!3668995 () Bool)

(declare-fun Unit!56219 () Unit!56207)

(assert (=> b!3668995 (= e!2271779 Unit!56219)))

(declare-fun lt!1278292 () Unit!56207)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!356 (LexerInterface!5403 List!38819 Rule!11428 List!38818 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> b!3668995 (= lt!1278292 (lemmaMaxPrefixOutputsMaxPrefix!356 thiss!23823 rules!3307 (rule!8636 (_1!22416 lt!1278279)) lt!1278291 lt!1278285 lt!1278296 rule!403))))

(assert (=> b!3668995 false))

(declare-fun b!3668996 () Bool)

(declare-fun res!1489913 () Bool)

(assert (=> b!3668996 (=> (not res!1489913) (not e!2271757))))

(assert (=> b!3668996 (= res!1489913 (= (rule!8636 token!511) rule!403))))

(declare-fun b!3668997 () Bool)

(assert (=> b!3668997 (= e!2271759 e!2271781)))

(declare-fun res!1489916 () Bool)

(assert (=> b!3668997 (=> res!1489916 e!2271781)))

(declare-fun lt!1278265 () List!38818)

(assert (=> b!3668997 (= res!1489916 (contains!7696 lt!1278265 lt!1278274))))

(declare-fun head!7852 (List!38818) C!21332)

(assert (=> b!3668997 (= lt!1278274 (head!7852 suffix!1395))))

(assert (=> b!3668997 (= lt!1278265 (usedCharacters!1026 (regex!5814 rule!403)))))

(assert (=> b!3668998 (= e!2271755 (and tp!1116648 tp!1116645))))

(declare-fun tp!1116658 () Bool)

(declare-fun b!3668999 () Bool)

(assert (=> b!3668999 (= e!2271783 (and tp!1116658 (inv!52172 (tag!6602 (rule!8636 token!511))) (inv!52175 (transformation!5814 (rule!8636 token!511))) e!2271774))))

(declare-fun b!3669000 () Bool)

(declare-fun e!2271760 () Bool)

(assert (=> b!3669000 (= e!2271758 e!2271760)))

(declare-fun res!1489919 () Bool)

(assert (=> b!3669000 (=> res!1489919 e!2271760)))

(assert (=> b!3669000 (= res!1489919 (= (rule!8636 (_1!22416 lt!1278279)) (rule!8636 token!511)))))

(assert (=> b!3669000 (= lt!1278291 lt!1278296)))

(declare-fun lt!1278284 () Unit!56207)

(declare-fun lemmaIsPrefixSameLengthThenSameList!639 (List!38818 List!38818 List!38818) Unit!56207)

(assert (=> b!3669000 (= lt!1278284 (lemmaIsPrefixSameLengthThenSameList!639 lt!1278291 lt!1278296 lt!1278285))))

(declare-fun lt!1278271 () Unit!56207)

(assert (=> b!3669000 (= lt!1278271 e!2271779)))

(declare-fun c!634344 () Bool)

(declare-fun lt!1278286 () Int)

(assert (=> b!3669000 (= c!634344 (< lt!1278293 lt!1278286))))

(declare-fun lt!1278256 () Unit!56207)

(assert (=> b!3669000 (= lt!1278256 e!2271754)))

(declare-fun c!634350 () Bool)

(assert (=> b!3669000 (= c!634350 (> lt!1278293 lt!1278286))))

(declare-fun lt!1278259 () BalanceConc!23288)

(assert (=> b!3669000 (= lt!1278286 (size!29572 lt!1278259))))

(declare-fun lt!1278298 () Unit!56207)

(declare-fun e!2271763 () Unit!56207)

(assert (=> b!3669000 (= lt!1278298 e!2271763)))

(declare-fun c!634347 () Bool)

(assert (=> b!3669000 (= c!634347 (isSeparator!5814 rule!403))))

(declare-fun lt!1278251 () Unit!56207)

(assert (=> b!3669000 (= lt!1278251 e!2271762)))

(declare-fun c!634348 () Bool)

(assert (=> b!3669000 (= c!634348 (not (contains!7696 lt!1278265 lt!1278270)))))

(assert (=> b!3669000 (= lt!1278270 (head!7852 lt!1278291))))

(declare-fun b!3669001 () Bool)

(assert (=> b!3669001 (= e!2271760 e!2271786)))

(declare-fun res!1489911 () Bool)

(assert (=> b!3669001 (=> res!1489911 e!2271786)))

(declare-fun lt!1278267 () Int)

(declare-fun lt!1278281 () Int)

(assert (=> b!3669001 (= res!1489911 (>= lt!1278267 lt!1278281))))

(declare-fun lt!1278257 () Unit!56207)

(assert (=> b!3669001 (= lt!1278257 e!2271778)))

(declare-fun c!634346 () Bool)

(assert (=> b!3669001 (= c!634346 (< lt!1278281 lt!1278267))))

(declare-fun getIndex!482 (List!38819 Rule!11428) Int)

(assert (=> b!3669001 (= lt!1278267 (getIndex!482 rules!3307 rule!403))))

(assert (=> b!3669001 (= lt!1278281 (getIndex!482 rules!3307 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> b!3669002 (= e!2271756 (and tp!1116644 tp!1116657))))

(declare-fun b!3669003 () Bool)

(declare-fun Unit!56220 () Unit!56207)

(assert (=> b!3669003 (= e!2271768 Unit!56220)))

(declare-fun bm!265575 () Bool)

(assert (=> bm!265575 (= call!265575 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669004 () Bool)

(declare-fun res!1489907 () Bool)

(assert (=> b!3669004 (=> (not res!1489907) (not e!2271776))))

(declare-fun isEmpty!22963 (List!38819) Bool)

(assert (=> b!3669004 (= res!1489907 (not (isEmpty!22963 rules!3307)))))

(declare-fun b!3669005 () Bool)

(assert (=> b!3669005 (= e!2271763 e!2271775)))

(declare-fun c!634351 () Bool)

(assert (=> b!3669005 (= c!634351 (not (isSeparator!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669006 () Bool)

(assert (=> b!3669006 (= e!2271763 e!2271768)))

(declare-fun c!634349 () Bool)

(assert (=> b!3669006 (= c!634349 (isSeparator!5814 (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun b!3669007 () Bool)

(declare-fun Unit!56221 () Unit!56207)

(assert (=> b!3669007 (= e!2271754 Unit!56221)))

(assert (=> b!3669008 (= e!2271772 (and tp!1116647 tp!1116653))))

(declare-fun b!3669009 () Bool)

(declare-fun res!1489914 () Bool)

(assert (=> b!3669009 (=> res!1489914 e!2271782)))

(assert (=> b!3669009 (= res!1489914 (not (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291)))))

(declare-fun b!3669010 () Bool)

(assert (=> b!3669010 (= e!2271776 e!2271770)))

(declare-fun res!1489904 () Bool)

(assert (=> b!3669010 (=> (not res!1489904) (not e!2271770))))

(declare-fun isDefined!6489 (Option!8256) Bool)

(assert (=> b!3669010 (= res!1489904 (isDefined!6489 lt!1278278))))

(assert (=> b!3669010 (= lt!1278278 (maxPrefix!2937 thiss!23823 rules!3307 lt!1278296))))

(assert (=> b!3669010 (= lt!1278296 (list!14368 lt!1278259))))

(assert (=> b!3669010 (= lt!1278259 (charsOf!3828 token!511))))

(assert (= (and start!343810 res!1489912) b!3669004))

(assert (= (and b!3669004 res!1489907) b!3668990))

(assert (= (and b!3668990 res!1489929) b!3668963))

(assert (= (and b!3668963 res!1489909) b!3668985))

(assert (= (and b!3668985 res!1489923) b!3668988))

(assert (= (and b!3668988 res!1489921) b!3669010))

(assert (= (and b!3669010 res!1489904) b!3668979))

(assert (= (and b!3668979 res!1489928) b!3668962))

(assert (= (and b!3668962 res!1489910) b!3668996))

(assert (= (and b!3668996 res!1489913) b!3668982))

(assert (= (and b!3668982 (not res!1489927)) b!3668978))

(assert (= (and b!3668978 (not res!1489924)) b!3668997))

(assert (= (and b!3668997 (not res!1489916)) b!3668989))

(assert (= (and b!3668989 (not res!1489918)) b!3668975))

(assert (= (and b!3668975 (not res!1489920)) b!3668969))

(assert (= (and b!3668969 res!1489915) b!3668965))

(assert (= (and b!3668965 res!1489905) b!3668991))

(assert (= (and b!3668969 (not res!1489922)) b!3669009))

(assert (= (and b!3669009 (not res!1489914)) b!3668961))

(assert (= (and b!3668961 (not res!1489917)) b!3668967))

(assert (= (and b!3668967 (not res!1489906)) b!3669000))

(assert (= (and b!3669000 c!634348) b!3668964))

(assert (= (and b!3669000 (not c!634348)) b!3668980))

(assert (= (and b!3669000 c!634347) b!3669005))

(assert (= (and b!3669000 (not c!634347)) b!3669006))

(assert (= (and b!3669005 c!634351) b!3668959))

(assert (= (and b!3669005 (not c!634351)) b!3668974))

(assert (= (and b!3669006 c!634349) b!3668960))

(assert (= (and b!3669006 (not c!634349)) b!3669003))

(assert (= (or b!3668959 b!3668960) bm!265574))

(assert (= (or b!3668959 b!3668960) bm!265570))

(assert (= (or b!3668959 b!3668960) bm!265572))

(assert (= (and b!3669000 c!634350) b!3668993))

(assert (= (and b!3669000 (not c!634350)) b!3669007))

(assert (= (and b!3668993 c!634345) b!3668977))

(assert (= (and b!3668993 (not c!634345)) b!3668986))

(assert (= (or b!3668977 b!3668986) bm!265571))

(assert (= (or b!3668977 b!3668986) bm!265575))

(assert (= (or b!3668977 b!3668986) bm!265573))

(assert (= (and b!3669000 c!634344) b!3668995))

(assert (= (and b!3669000 (not c!634344)) b!3668992))

(assert (= (and b!3669000 (not res!1489919)) b!3669001))

(assert (= (and b!3669001 c!634346) b!3668970))

(assert (= (and b!3669001 (not c!634346)) b!3668987))

(assert (= (and b!3668970 res!1489925) b!3668972))

(assert (= (and b!3669001 (not res!1489911)) b!3668976))

(assert (= (and b!3668976 (not res!1489926)) b!3668984))

(assert (= (and b!3668984 (not res!1489908)) b!3668994))

(assert (= b!3668966 b!3668998))

(assert (= b!3668973 b!3668966))

(assert (= (and start!343810 ((_ is Cons!38695) rules!3307)) b!3668973))

(assert (= (and start!343810 ((_ is Cons!38694) suffix!1395)) b!3668968))

(assert (= b!3668999 b!3668981))

(assert (= b!3668958 b!3668999))

(assert (= start!343810 b!3668958))

(assert (= b!3668983 b!3669002))

(assert (= start!343810 b!3668983))

(assert (= b!3668971 b!3669008))

(assert (= start!343810 b!3668971))

(declare-fun m!4177231 () Bool)

(assert (=> bm!265574 m!4177231))

(declare-fun m!4177233 () Bool)

(assert (=> b!3669010 m!4177233))

(declare-fun m!4177235 () Bool)

(assert (=> b!3669010 m!4177235))

(declare-fun m!4177237 () Bool)

(assert (=> b!3669010 m!4177237))

(declare-fun m!4177239 () Bool)

(assert (=> b!3669010 m!4177239))

(declare-fun m!4177241 () Bool)

(assert (=> b!3668966 m!4177241))

(declare-fun m!4177243 () Bool)

(assert (=> b!3668966 m!4177243))

(declare-fun m!4177245 () Bool)

(assert (=> b!3668995 m!4177245))

(declare-fun m!4177247 () Bool)

(assert (=> b!3668963 m!4177247))

(declare-fun m!4177249 () Bool)

(assert (=> bm!265570 m!4177249))

(declare-fun m!4177251 () Bool)

(assert (=> b!3668993 m!4177251))

(declare-fun m!4177253 () Bool)

(assert (=> b!3668993 m!4177253))

(declare-fun m!4177255 () Bool)

(assert (=> bm!265573 m!4177255))

(declare-fun m!4177257 () Bool)

(assert (=> b!3668985 m!4177257))

(declare-fun m!4177259 () Bool)

(assert (=> b!3668990 m!4177259))

(declare-fun m!4177261 () Bool)

(assert (=> b!3668997 m!4177261))

(declare-fun m!4177263 () Bool)

(assert (=> b!3668997 m!4177263))

(declare-fun m!4177265 () Bool)

(assert (=> b!3668997 m!4177265))

(declare-fun m!4177267 () Bool)

(assert (=> b!3668958 m!4177267))

(declare-fun m!4177269 () Bool)

(assert (=> b!3668977 m!4177269))

(declare-fun m!4177271 () Bool)

(assert (=> b!3668984 m!4177271))

(declare-fun m!4177273 () Bool)

(assert (=> b!3668983 m!4177273))

(declare-fun m!4177275 () Bool)

(assert (=> b!3668983 m!4177275))

(declare-fun m!4177277 () Bool)

(assert (=> b!3668960 m!4177277))

(declare-fun m!4177279 () Bool)

(assert (=> b!3668961 m!4177279))

(declare-fun m!4177281 () Bool)

(assert (=> b!3668961 m!4177281))

(declare-fun m!4177283 () Bool)

(assert (=> b!3668961 m!4177283))

(declare-fun m!4177285 () Bool)

(assert (=> b!3668961 m!4177285))

(declare-fun m!4177287 () Bool)

(assert (=> b!3668961 m!4177287))

(assert (=> b!3668961 m!4177285))

(declare-fun m!4177289 () Bool)

(assert (=> b!3668961 m!4177289))

(declare-fun m!4177291 () Bool)

(assert (=> start!343810 m!4177291))

(declare-fun m!4177293 () Bool)

(assert (=> b!3668978 m!4177293))

(declare-fun m!4177295 () Bool)

(assert (=> b!3669009 m!4177295))

(declare-fun m!4177297 () Bool)

(assert (=> b!3668976 m!4177297))

(declare-fun m!4177299 () Bool)

(assert (=> b!3668969 m!4177299))

(declare-fun m!4177301 () Bool)

(assert (=> b!3668969 m!4177301))

(declare-fun m!4177303 () Bool)

(assert (=> b!3668969 m!4177303))

(declare-fun m!4177305 () Bool)

(assert (=> b!3668969 m!4177305))

(declare-fun m!4177307 () Bool)

(assert (=> b!3668969 m!4177307))

(declare-fun m!4177309 () Bool)

(assert (=> b!3668969 m!4177309))

(declare-fun m!4177311 () Bool)

(assert (=> b!3668969 m!4177311))

(declare-fun m!4177313 () Bool)

(assert (=> b!3668969 m!4177313))

(declare-fun m!4177315 () Bool)

(assert (=> b!3668969 m!4177315))

(declare-fun m!4177317 () Bool)

(assert (=> b!3668969 m!4177317))

(declare-fun m!4177319 () Bool)

(assert (=> b!3668969 m!4177319))

(declare-fun m!4177321 () Bool)

(assert (=> b!3668969 m!4177321))

(declare-fun m!4177323 () Bool)

(assert (=> b!3668969 m!4177323))

(declare-fun m!4177325 () Bool)

(assert (=> b!3668969 m!4177325))

(assert (=> b!3668969 m!4177303))

(declare-fun m!4177327 () Bool)

(assert (=> b!3668969 m!4177327))

(declare-fun m!4177329 () Bool)

(assert (=> b!3668989 m!4177329))

(assert (=> b!3668989 m!4177329))

(declare-fun m!4177331 () Bool)

(assert (=> b!3668989 m!4177331))

(declare-fun m!4177333 () Bool)

(assert (=> b!3668962 m!4177333))

(declare-fun m!4177335 () Bool)

(assert (=> bm!265572 m!4177335))

(declare-fun m!4177337 () Bool)

(assert (=> b!3668959 m!4177337))

(assert (=> bm!265575 m!4177249))

(declare-fun m!4177339 () Bool)

(assert (=> b!3668971 m!4177339))

(declare-fun m!4177341 () Bool)

(assert (=> b!3668971 m!4177341))

(declare-fun m!4177343 () Bool)

(assert (=> b!3669001 m!4177343))

(declare-fun m!4177345 () Bool)

(assert (=> b!3669001 m!4177345))

(declare-fun m!4177347 () Bool)

(assert (=> b!3668975 m!4177347))

(declare-fun m!4177349 () Bool)

(assert (=> b!3668967 m!4177349))

(declare-fun m!4177351 () Bool)

(assert (=> b!3668967 m!4177351))

(declare-fun m!4177353 () Bool)

(assert (=> b!3668967 m!4177353))

(declare-fun m!4177355 () Bool)

(assert (=> b!3668967 m!4177355))

(declare-fun m!4177357 () Bool)

(assert (=> b!3668967 m!4177357))

(assert (=> b!3668967 m!4177349))

(declare-fun m!4177359 () Bool)

(assert (=> b!3668967 m!4177359))

(declare-fun m!4177361 () Bool)

(assert (=> b!3668967 m!4177361))

(declare-fun m!4177363 () Bool)

(assert (=> b!3668979 m!4177363))

(declare-fun m!4177365 () Bool)

(assert (=> b!3668986 m!4177365))

(declare-fun m!4177367 () Bool)

(assert (=> b!3668982 m!4177367))

(declare-fun m!4177369 () Bool)

(assert (=> b!3668982 m!4177369))

(declare-fun m!4177371 () Bool)

(assert (=> b!3668982 m!4177371))

(declare-fun m!4177373 () Bool)

(assert (=> bm!265571 m!4177373))

(declare-fun m!4177375 () Bool)

(assert (=> b!3669004 m!4177375))

(assert (=> b!3668965 m!4177305))

(assert (=> b!3668965 m!4177305))

(declare-fun m!4177377 () Bool)

(assert (=> b!3668965 m!4177377))

(assert (=> b!3668965 m!4177377))

(declare-fun m!4177379 () Bool)

(assert (=> b!3668965 m!4177379))

(declare-fun m!4177381 () Bool)

(assert (=> b!3668965 m!4177381))

(declare-fun m!4177383 () Bool)

(assert (=> b!3668994 m!4177383))

(declare-fun m!4177385 () Bool)

(assert (=> b!3668994 m!4177385))

(declare-fun m!4177387 () Bool)

(assert (=> b!3668994 m!4177387))

(declare-fun m!4177389 () Bool)

(assert (=> b!3668994 m!4177389))

(declare-fun m!4177391 () Bool)

(assert (=> b!3668994 m!4177391))

(declare-fun m!4177393 () Bool)

(assert (=> b!3669000 m!4177393))

(declare-fun m!4177395 () Bool)

(assert (=> b!3669000 m!4177395))

(declare-fun m!4177397 () Bool)

(assert (=> b!3669000 m!4177397))

(declare-fun m!4177399 () Bool)

(assert (=> b!3669000 m!4177399))

(declare-fun m!4177401 () Bool)

(assert (=> b!3668964 m!4177401))

(declare-fun m!4177403 () Bool)

(assert (=> b!3668970 m!4177403))

(declare-fun m!4177405 () Bool)

(assert (=> b!3668970 m!4177405))

(declare-fun m!4177407 () Bool)

(assert (=> b!3668970 m!4177407))

(declare-fun m!4177409 () Bool)

(assert (=> b!3668970 m!4177409))

(declare-fun m!4177411 () Bool)

(assert (=> b!3668970 m!4177411))

(assert (=> b!3668970 m!4177405))

(declare-fun m!4177413 () Bool)

(assert (=> b!3668999 m!4177413))

(declare-fun m!4177415 () Bool)

(assert (=> b!3668999 m!4177415))

(check-sat (not b!3668962) (not b!3669009) (not b!3668964) (not bm!265570) (not b!3668990) (not b!3668985) (not b!3668984) b_and!273089 (not b!3668969) (not b!3668961) (not b!3668975) (not b!3668993) (not b!3668982) (not b!3668997) (not b!3668960) (not b!3668989) (not b_next!97631) (not b_next!97621) (not bm!265573) (not b!3668978) (not b!3668970) b_and!273081 (not start!343810) (not b!3669004) (not b!3668959) (not b!3668977) (not b!3668979) b_and!273079 (not b!3668986) (not b!3669001) (not b!3668994) (not b_next!97623) b_and!273085 tp_is_empty!18229 (not b!3669000) (not b!3668965) (not b!3668963) (not b_next!97625) (not b!3668967) b_and!273075 (not b_next!97617) (not b_next!97619) (not b_next!97627) b_and!273077 (not bm!265575) (not b!3668966) (not b!3668973) b_and!273087 (not b!3668968) (not b!3668983) (not b!3668995) (not bm!265571) (not bm!265574) (not bm!265572) (not b!3668999) (not b!3668971) (not b!3669010) (not b_next!97629) (not b!3668958) (not b!3668976) b_and!273083)
(check-sat (not b_next!97631) (not b_next!97621) b_and!273081 b_and!273079 (not b_next!97623) b_and!273089 b_and!273085 (not b_next!97625) b_and!273087 b_and!273075 (not b_next!97617) (not b_next!97619) (not b_next!97627) b_and!273077 (not b_next!97629) b_and!273083)
(get-model)

(declare-fun d!1077602 () Bool)

(assert (=> d!1077602 (isPrefix!3177 lt!1278296 (++!9630 lt!1278296 suffix!1395))))

(declare-fun lt!1278306 () Unit!56207)

(declare-fun choose!21798 (List!38818 List!38818) Unit!56207)

(assert (=> d!1077602 (= lt!1278306 (choose!21798 lt!1278296 suffix!1395))))

(assert (=> d!1077602 (= (lemmaConcatTwoListThenFirstIsPrefix!2096 lt!1278296 suffix!1395) lt!1278306)))

(declare-fun bs!573088 () Bool)

(assert (= bs!573088 d!1077602))

(assert (=> bs!573088 m!4177301))

(assert (=> bs!573088 m!4177301))

(declare-fun m!4177429 () Bool)

(assert (=> bs!573088 m!4177429))

(declare-fun m!4177431 () Bool)

(assert (=> bs!573088 m!4177431))

(assert (=> b!3668969 d!1077602))

(declare-fun b!3669062 () Bool)

(declare-fun res!1489963 () Bool)

(declare-fun e!2271821 () Bool)

(assert (=> b!3669062 (=> (not res!1489963) (not e!2271821))))

(declare-fun lt!1278316 () List!38818)

(assert (=> b!3669062 (= res!1489963 (= (size!29573 lt!1278316) (+ (size!29573 lt!1278291) (size!29573 (_2!22416 lt!1278279)))))))

(declare-fun b!3669060 () Bool)

(declare-fun e!2271820 () List!38818)

(assert (=> b!3669060 (= e!2271820 (_2!22416 lt!1278279))))

(declare-fun b!3669063 () Bool)

(assert (=> b!3669063 (= e!2271821 (or (not (= (_2!22416 lt!1278279) Nil!38694)) (= lt!1278316 lt!1278291)))))

(declare-fun d!1077606 () Bool)

(assert (=> d!1077606 e!2271821))

(declare-fun res!1489962 () Bool)

(assert (=> d!1077606 (=> (not res!1489962) (not e!2271821))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5602 (List!38818) (InoxSet C!21332))

(assert (=> d!1077606 (= res!1489962 (= (content!5602 lt!1278316) ((_ map or) (content!5602 lt!1278291) (content!5602 (_2!22416 lt!1278279)))))))

(assert (=> d!1077606 (= lt!1278316 e!2271820)))

(declare-fun c!634369 () Bool)

(assert (=> d!1077606 (= c!634369 ((_ is Nil!38694) lt!1278291))))

(assert (=> d!1077606 (= (++!9630 lt!1278291 (_2!22416 lt!1278279)) lt!1278316)))

(declare-fun b!3669061 () Bool)

(assert (=> b!3669061 (= e!2271820 (Cons!38694 (h!44114 lt!1278291) (++!9630 (t!299453 lt!1278291) (_2!22416 lt!1278279))))))

(assert (= (and d!1077606 c!634369) b!3669060))

(assert (= (and d!1077606 (not c!634369)) b!3669061))

(assert (= (and d!1077606 res!1489962) b!3669062))

(assert (= (and b!3669062 res!1489963) b!3669063))

(declare-fun m!4177453 () Bool)

(assert (=> b!3669062 m!4177453))

(assert (=> b!3669062 m!4177353))

(declare-fun m!4177455 () Bool)

(assert (=> b!3669062 m!4177455))

(declare-fun m!4177457 () Bool)

(assert (=> d!1077606 m!4177457))

(declare-fun m!4177459 () Bool)

(assert (=> d!1077606 m!4177459))

(declare-fun m!4177461 () Bool)

(assert (=> d!1077606 m!4177461))

(declare-fun m!4177463 () Bool)

(assert (=> b!3669061 m!4177463))

(assert (=> b!3668969 d!1077606))

(declare-fun b!3669124 () Bool)

(declare-fun e!2271859 () Bool)

(declare-fun lt!1278333 () Option!8257)

(assert (=> b!3669124 (= e!2271859 (= (tag!6602 (get!12773 lt!1278333)) (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669125 () Bool)

(declare-fun lt!1278332 () Unit!56207)

(declare-fun lt!1278331 () Unit!56207)

(assert (=> b!3669125 (= lt!1278332 lt!1278331)))

(assert (=> b!3669125 (rulesInvariant!4800 thiss!23823 (t!299454 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!610 (LexerInterface!5403 Rule!11428 List!38819) Unit!56207)

(assert (=> b!3669125 (= lt!1278331 (lemmaInvariantOnRulesThenOnTail!610 thiss!23823 (h!44115 rules!3307) (t!299454 rules!3307)))))

(declare-fun e!2271860 () Option!8257)

(assert (=> b!3669125 (= e!2271860 (getRuleFromTag!1418 thiss!23823 (t!299454 rules!3307) (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun d!1077620 () Bool)

(declare-fun e!2271857 () Bool)

(assert (=> d!1077620 e!2271857))

(declare-fun res!1489998 () Bool)

(assert (=> d!1077620 (=> res!1489998 e!2271857)))

(declare-fun isEmpty!22964 (Option!8257) Bool)

(assert (=> d!1077620 (= res!1489998 (isEmpty!22964 lt!1278333))))

(declare-fun e!2271858 () Option!8257)

(assert (=> d!1077620 (= lt!1278333 e!2271858)))

(declare-fun c!634383 () Bool)

(assert (=> d!1077620 (= c!634383 (and ((_ is Cons!38695) rules!3307) (= (tag!6602 (h!44115 rules!3307)) (tag!6602 (rule!8636 (_1!22416 lt!1278279))))))))

(assert (=> d!1077620 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077620 (= (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 (_1!22416 lt!1278279)))) lt!1278333)))

(declare-fun b!3669126 () Bool)

(assert (=> b!3669126 (= e!2271858 (Some!8256 (h!44115 rules!3307)))))

(declare-fun b!3669127 () Bool)

(assert (=> b!3669127 (= e!2271860 None!8256)))

(declare-fun b!3669128 () Bool)

(assert (=> b!3669128 (= e!2271857 e!2271859)))

(declare-fun res!1489999 () Bool)

(assert (=> b!3669128 (=> (not res!1489999) (not e!2271859))))

(assert (=> b!3669128 (= res!1489999 (contains!7695 rules!3307 (get!12773 lt!1278333)))))

(declare-fun b!3669129 () Bool)

(assert (=> b!3669129 (= e!2271858 e!2271860)))

(declare-fun c!634384 () Bool)

(assert (=> b!3669129 (= c!634384 (and ((_ is Cons!38695) rules!3307) (not (= (tag!6602 (h!44115 rules!3307)) (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))))))

(assert (= (and d!1077620 c!634383) b!3669126))

(assert (= (and d!1077620 (not c!634383)) b!3669129))

(assert (= (and b!3669129 c!634384) b!3669125))

(assert (= (and b!3669129 (not c!634384)) b!3669127))

(assert (= (and d!1077620 (not res!1489998)) b!3669128))

(assert (= (and b!3669128 res!1489999) b!3669124))

(declare-fun m!4177483 () Bool)

(assert (=> b!3669124 m!4177483))

(declare-fun m!4177485 () Bool)

(assert (=> b!3669125 m!4177485))

(declare-fun m!4177487 () Bool)

(assert (=> b!3669125 m!4177487))

(declare-fun m!4177489 () Bool)

(assert (=> b!3669125 m!4177489))

(declare-fun m!4177491 () Bool)

(assert (=> d!1077620 m!4177491))

(assert (=> d!1077620 m!4177259))

(assert (=> b!3669128 m!4177483))

(assert (=> b!3669128 m!4177483))

(declare-fun m!4177493 () Bool)

(assert (=> b!3669128 m!4177493))

(assert (=> b!3668969 d!1077620))

(declare-fun b!3669139 () Bool)

(declare-fun res!1490010 () Bool)

(declare-fun e!2271867 () Bool)

(assert (=> b!3669139 (=> (not res!1490010) (not e!2271867))))

(assert (=> b!3669139 (= res!1490010 (= (head!7852 lt!1278291) (head!7852 lt!1278285)))))

(declare-fun b!3669138 () Bool)

(declare-fun e!2271868 () Bool)

(assert (=> b!3669138 (= e!2271868 e!2271867)))

(declare-fun res!1490011 () Bool)

(assert (=> b!3669138 (=> (not res!1490011) (not e!2271867))))

(assert (=> b!3669138 (= res!1490011 (not ((_ is Nil!38694) lt!1278285)))))

(declare-fun b!3669141 () Bool)

(declare-fun e!2271869 () Bool)

(assert (=> b!3669141 (= e!2271869 (>= (size!29573 lt!1278285) (size!29573 lt!1278291)))))

(declare-fun b!3669140 () Bool)

(declare-fun tail!5679 (List!38818) List!38818)

(assert (=> b!3669140 (= e!2271867 (isPrefix!3177 (tail!5679 lt!1278291) (tail!5679 lt!1278285)))))

(declare-fun d!1077628 () Bool)

(assert (=> d!1077628 e!2271869))

(declare-fun res!1490009 () Bool)

(assert (=> d!1077628 (=> res!1490009 e!2271869)))

(declare-fun lt!1278336 () Bool)

(assert (=> d!1077628 (= res!1490009 (not lt!1278336))))

(assert (=> d!1077628 (= lt!1278336 e!2271868)))

(declare-fun res!1490008 () Bool)

(assert (=> d!1077628 (=> res!1490008 e!2271868)))

(assert (=> d!1077628 (= res!1490008 ((_ is Nil!38694) lt!1278291))))

(assert (=> d!1077628 (= (isPrefix!3177 lt!1278291 lt!1278285) lt!1278336)))

(assert (= (and d!1077628 (not res!1490008)) b!3669138))

(assert (= (and b!3669138 res!1490011) b!3669139))

(assert (= (and b!3669139 res!1490010) b!3669140))

(assert (= (and d!1077628 (not res!1490009)) b!3669141))

(assert (=> b!3669139 m!4177399))

(declare-fun m!4177495 () Bool)

(assert (=> b!3669139 m!4177495))

(declare-fun m!4177497 () Bool)

(assert (=> b!3669141 m!4177497))

(assert (=> b!3669141 m!4177353))

(declare-fun m!4177499 () Bool)

(assert (=> b!3669140 m!4177499))

(declare-fun m!4177501 () Bool)

(assert (=> b!3669140 m!4177501))

(assert (=> b!3669140 m!4177499))

(assert (=> b!3669140 m!4177501))

(declare-fun m!4177503 () Bool)

(assert (=> b!3669140 m!4177503))

(assert (=> b!3668969 d!1077628))

(declare-fun d!1077630 () Bool)

(declare-fun lt!1278339 () BalanceConc!23288)

(assert (=> d!1077630 (= (list!14368 lt!1278339) (originalCharacters!6528 (_1!22416 lt!1278279)))))

(declare-fun dynLambda!16936 (Int TokenValue!6044) BalanceConc!23288)

(assert (=> d!1077630 (= lt!1278339 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (value!186159 (_1!22416 lt!1278279))))))

(assert (=> d!1077630 (= (charsOf!3828 (_1!22416 lt!1278279)) lt!1278339)))

(declare-fun b_lambda!108935 () Bool)

(assert (=> (not b_lambda!108935) (not d!1077630)))

(declare-fun t!299456 () Bool)

(declare-fun tb!212389 () Bool)

(assert (=> (and b!3668998 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299456) tb!212389))

(declare-fun b!3669146 () Bool)

(declare-fun e!2271872 () Bool)

(declare-fun tp!1116661 () Bool)

(declare-fun inv!52179 (Conc!11837) Bool)

(assert (=> b!3669146 (= e!2271872 (and (inv!52179 (c!634353 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (value!186159 (_1!22416 lt!1278279))))) tp!1116661))))

(declare-fun result!258494 () Bool)

(declare-fun inv!52180 (BalanceConc!23288) Bool)

(assert (=> tb!212389 (= result!258494 (and (inv!52180 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (value!186159 (_1!22416 lt!1278279)))) e!2271872))))

(assert (= tb!212389 b!3669146))

(declare-fun m!4177505 () Bool)

(assert (=> b!3669146 m!4177505))

(declare-fun m!4177507 () Bool)

(assert (=> tb!212389 m!4177507))

(assert (=> d!1077630 t!299456))

(declare-fun b_and!273091 () Bool)

(assert (= b_and!273077 (and (=> t!299456 result!258494) b_and!273091)))

(declare-fun tb!212391 () Bool)

(declare-fun t!299458 () Bool)

(assert (=> (and b!3668981 (= (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299458) tb!212391))

(declare-fun result!258498 () Bool)

(assert (= result!258498 result!258494))

(assert (=> d!1077630 t!299458))

(declare-fun b_and!273093 () Bool)

(assert (= b_and!273081 (and (=> t!299458 result!258498) b_and!273093)))

(declare-fun tb!212393 () Bool)

(declare-fun t!299460 () Bool)

(assert (=> (and b!3669008 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299460) tb!212393))

(declare-fun result!258500 () Bool)

(assert (= result!258500 result!258494))

(assert (=> d!1077630 t!299460))

(declare-fun b_and!273095 () Bool)

(assert (= b_and!273085 (and (=> t!299460 result!258500) b_and!273095)))

(declare-fun t!299462 () Bool)

(declare-fun tb!212395 () Bool)

(assert (=> (and b!3669002 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299462) tb!212395))

(declare-fun result!258502 () Bool)

(assert (= result!258502 result!258494))

(assert (=> d!1077630 t!299462))

(declare-fun b_and!273097 () Bool)

(assert (= b_and!273089 (and (=> t!299462 result!258502) b_and!273097)))

(declare-fun m!4177509 () Bool)

(assert (=> d!1077630 m!4177509))

(declare-fun m!4177511 () Bool)

(assert (=> d!1077630 m!4177511))

(assert (=> b!3668969 d!1077630))

(declare-fun b!3669165 () Bool)

(declare-fun res!1490028 () Bool)

(declare-fun e!2271881 () Bool)

(assert (=> b!3669165 (=> (not res!1490028) (not e!2271881))))

(declare-fun lt!1278351 () Option!8256)

(assert (=> b!3669165 (= res!1490028 (= (++!9630 (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278351)))) (_2!22416 (get!12774 lt!1278351))) lt!1278285))))

(declare-fun b!3669166 () Bool)

(declare-fun e!2271879 () Option!8256)

(declare-fun call!265598 () Option!8256)

(assert (=> b!3669166 (= e!2271879 call!265598)))

(declare-fun d!1077632 () Bool)

(declare-fun e!2271880 () Bool)

(assert (=> d!1077632 e!2271880))

(declare-fun res!1490027 () Bool)

(assert (=> d!1077632 (=> res!1490027 e!2271880)))

(declare-fun isEmpty!22965 (Option!8256) Bool)

(assert (=> d!1077632 (= res!1490027 (isEmpty!22965 lt!1278351))))

(assert (=> d!1077632 (= lt!1278351 e!2271879)))

(declare-fun c!634387 () Bool)

(assert (=> d!1077632 (= c!634387 (and ((_ is Cons!38695) rules!3307) ((_ is Nil!38695) (t!299454 rules!3307))))))

(declare-fun lt!1278353 () Unit!56207)

(declare-fun lt!1278352 () Unit!56207)

(assert (=> d!1077632 (= lt!1278353 lt!1278352)))

(assert (=> d!1077632 (isPrefix!3177 lt!1278285 lt!1278285)))

(declare-fun lemmaIsPrefixRefl!2003 (List!38818 List!38818) Unit!56207)

(assert (=> d!1077632 (= lt!1278352 (lemmaIsPrefixRefl!2003 lt!1278285 lt!1278285))))

(declare-fun rulesValidInductive!2066 (LexerInterface!5403 List!38819) Bool)

(assert (=> d!1077632 (rulesValidInductive!2066 thiss!23823 rules!3307)))

(assert (=> d!1077632 (= (maxPrefix!2937 thiss!23823 rules!3307 lt!1278285) lt!1278351)))

(declare-fun b!3669167 () Bool)

(declare-fun res!1490032 () Bool)

(assert (=> b!3669167 (=> (not res!1490032) (not e!2271881))))

(assert (=> b!3669167 (= res!1490032 (matchR!5142 (regex!5814 (rule!8636 (_1!22416 (get!12774 lt!1278351)))) (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278351))))))))

(declare-fun b!3669168 () Bool)

(assert (=> b!3669168 (= e!2271881 (contains!7695 rules!3307 (rule!8636 (_1!22416 (get!12774 lt!1278351)))))))

(declare-fun bm!265593 () Bool)

(assert (=> bm!265593 (= call!265598 (maxPrefixOneRule!2075 thiss!23823 (h!44115 rules!3307) lt!1278285))))

(declare-fun b!3669169 () Bool)

(declare-fun res!1490026 () Bool)

(assert (=> b!3669169 (=> (not res!1490026) (not e!2271881))))

(assert (=> b!3669169 (= res!1490026 (= (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278351)))) (originalCharacters!6528 (_1!22416 (get!12774 lt!1278351)))))))

(declare-fun b!3669170 () Bool)

(declare-fun res!1490029 () Bool)

(assert (=> b!3669170 (=> (not res!1490029) (not e!2271881))))

(assert (=> b!3669170 (= res!1490029 (< (size!29573 (_2!22416 (get!12774 lt!1278351))) (size!29573 lt!1278285)))))

(declare-fun b!3669171 () Bool)

(assert (=> b!3669171 (= e!2271880 e!2271881)))

(declare-fun res!1490031 () Bool)

(assert (=> b!3669171 (=> (not res!1490031) (not e!2271881))))

(assert (=> b!3669171 (= res!1490031 (isDefined!6489 lt!1278351))))

(declare-fun b!3669172 () Bool)

(declare-fun lt!1278350 () Option!8256)

(declare-fun lt!1278354 () Option!8256)

(assert (=> b!3669172 (= e!2271879 (ite (and ((_ is None!8255) lt!1278350) ((_ is None!8255) lt!1278354)) None!8255 (ite ((_ is None!8255) lt!1278354) lt!1278350 (ite ((_ is None!8255) lt!1278350) lt!1278354 (ite (>= (size!29571 (_1!22416 (v!38163 lt!1278350))) (size!29571 (_1!22416 (v!38163 lt!1278354)))) lt!1278350 lt!1278354)))))))

(assert (=> b!3669172 (= lt!1278350 call!265598)))

(assert (=> b!3669172 (= lt!1278354 (maxPrefix!2937 thiss!23823 (t!299454 rules!3307) lt!1278285))))

(declare-fun b!3669173 () Bool)

(declare-fun res!1490030 () Bool)

(assert (=> b!3669173 (=> (not res!1490030) (not e!2271881))))

(assert (=> b!3669173 (= res!1490030 (= (value!186159 (_1!22416 (get!12774 lt!1278351))) (apply!9316 (transformation!5814 (rule!8636 (_1!22416 (get!12774 lt!1278351)))) (seqFromList!4363 (originalCharacters!6528 (_1!22416 (get!12774 lt!1278351)))))))))

(assert (= (and d!1077632 c!634387) b!3669166))

(assert (= (and d!1077632 (not c!634387)) b!3669172))

(assert (= (or b!3669166 b!3669172) bm!265593))

(assert (= (and d!1077632 (not res!1490027)) b!3669171))

(assert (= (and b!3669171 res!1490031) b!3669169))

(assert (= (and b!3669169 res!1490026) b!3669170))

(assert (= (and b!3669170 res!1490029) b!3669165))

(assert (= (and b!3669165 res!1490028) b!3669173))

(assert (= (and b!3669173 res!1490030) b!3669167))

(assert (= (and b!3669167 res!1490032) b!3669168))

(declare-fun m!4177513 () Bool)

(assert (=> b!3669171 m!4177513))

(declare-fun m!4177515 () Bool)

(assert (=> b!3669172 m!4177515))

(declare-fun m!4177517 () Bool)

(assert (=> b!3669169 m!4177517))

(declare-fun m!4177519 () Bool)

(assert (=> b!3669169 m!4177519))

(assert (=> b!3669169 m!4177519))

(declare-fun m!4177521 () Bool)

(assert (=> b!3669169 m!4177521))

(assert (=> b!3669167 m!4177517))

(assert (=> b!3669167 m!4177519))

(assert (=> b!3669167 m!4177519))

(assert (=> b!3669167 m!4177521))

(assert (=> b!3669167 m!4177521))

(declare-fun m!4177523 () Bool)

(assert (=> b!3669167 m!4177523))

(assert (=> b!3669165 m!4177517))

(assert (=> b!3669165 m!4177519))

(assert (=> b!3669165 m!4177519))

(assert (=> b!3669165 m!4177521))

(assert (=> b!3669165 m!4177521))

(declare-fun m!4177525 () Bool)

(assert (=> b!3669165 m!4177525))

(assert (=> b!3669173 m!4177517))

(declare-fun m!4177527 () Bool)

(assert (=> b!3669173 m!4177527))

(assert (=> b!3669173 m!4177527))

(declare-fun m!4177529 () Bool)

(assert (=> b!3669173 m!4177529))

(declare-fun m!4177531 () Bool)

(assert (=> bm!265593 m!4177531))

(assert (=> b!3669168 m!4177517))

(declare-fun m!4177533 () Bool)

(assert (=> b!3669168 m!4177533))

(declare-fun m!4177535 () Bool)

(assert (=> d!1077632 m!4177535))

(declare-fun m!4177537 () Bool)

(assert (=> d!1077632 m!4177537))

(declare-fun m!4177539 () Bool)

(assert (=> d!1077632 m!4177539))

(declare-fun m!4177541 () Bool)

(assert (=> d!1077632 m!4177541))

(assert (=> b!3669170 m!4177517))

(declare-fun m!4177543 () Bool)

(assert (=> b!3669170 m!4177543))

(assert (=> b!3669170 m!4177497))

(assert (=> b!3668969 d!1077632))

(declare-fun d!1077634 () Bool)

(assert (=> d!1077634 (isPrefix!3177 lt!1278291 (++!9630 lt!1278291 (_2!22416 lt!1278279)))))

(declare-fun lt!1278355 () Unit!56207)

(assert (=> d!1077634 (= lt!1278355 (choose!21798 lt!1278291 (_2!22416 lt!1278279)))))

(assert (=> d!1077634 (= (lemmaConcatTwoListThenFirstIsPrefix!2096 lt!1278291 (_2!22416 lt!1278279)) lt!1278355)))

(declare-fun bs!573091 () Bool)

(assert (= bs!573091 d!1077634))

(assert (=> bs!573091 m!4177303))

(assert (=> bs!573091 m!4177303))

(assert (=> bs!573091 m!4177327))

(declare-fun m!4177545 () Bool)

(assert (=> bs!573091 m!4177545))

(assert (=> b!3668969 d!1077634))

(declare-fun d!1077636 () Bool)

(assert (=> d!1077636 (= (get!12774 lt!1278272) (v!38163 lt!1278272))))

(assert (=> b!3668969 d!1077636))

(declare-fun b!3669203 () Bool)

(declare-fun e!2271901 () Unit!56207)

(declare-fun Unit!56223 () Unit!56207)

(assert (=> b!3669203 (= e!2271901 Unit!56223)))

(declare-fun lt!1278403 () List!38818)

(assert (=> b!3669203 (= lt!1278403 (++!9630 lt!1278296 suffix!1395))))

(declare-fun lt!1278409 () Unit!56207)

(declare-fun lt!1278399 () Token!10994)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!567 (LexerInterface!5403 Rule!11428 List!38819 List!38818) Unit!56207)

(assert (=> b!3669203 (= lt!1278409 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!567 thiss!23823 (rule!8636 lt!1278399) rules!3307 lt!1278403))))

(assert (=> b!3669203 (isEmpty!22965 (maxPrefixOneRule!2075 thiss!23823 (rule!8636 lt!1278399) lt!1278403))))

(declare-fun lt!1278407 () Unit!56207)

(assert (=> b!3669203 (= lt!1278407 lt!1278409)))

(declare-fun lt!1278394 () List!38818)

(assert (=> b!3669203 (= lt!1278394 (list!14368 (charsOf!3828 lt!1278399)))))

(declare-fun lt!1278401 () Unit!56207)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!555 (LexerInterface!5403 Rule!11428 List!38818 List!38818) Unit!56207)

(assert (=> b!3669203 (= lt!1278401 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!555 thiss!23823 (rule!8636 lt!1278399) lt!1278394 (++!9630 lt!1278296 suffix!1395)))))

(assert (=> b!3669203 (not (matchR!5142 (regex!5814 (rule!8636 lt!1278399)) lt!1278394))))

(declare-fun lt!1278408 () Unit!56207)

(assert (=> b!3669203 (= lt!1278408 lt!1278401)))

(assert (=> b!3669203 false))

(declare-fun d!1077638 () Bool)

(assert (=> d!1077638 (isDefined!6489 (maxPrefix!2937 thiss!23823 rules!3307 (++!9630 lt!1278296 suffix!1395)))))

(declare-fun lt!1278400 () Unit!56207)

(assert (=> d!1077638 (= lt!1278400 e!2271901)))

(declare-fun c!634391 () Bool)

(assert (=> d!1077638 (= c!634391 (isEmpty!22965 (maxPrefix!2937 thiss!23823 rules!3307 (++!9630 lt!1278296 suffix!1395))))))

(declare-fun lt!1278406 () Unit!56207)

(declare-fun lt!1278397 () Unit!56207)

(assert (=> d!1077638 (= lt!1278406 lt!1278397)))

(declare-fun e!2271902 () Bool)

(assert (=> d!1077638 e!2271902))

(declare-fun res!1490040 () Bool)

(assert (=> d!1077638 (=> (not res!1490040) (not e!2271902))))

(assert (=> d!1077638 (= res!1490040 (isDefined!6488 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 lt!1278399)))))))

(assert (=> d!1077638 (= lt!1278397 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1418 thiss!23823 rules!3307 lt!1278296 lt!1278399))))

(declare-fun lt!1278402 () Unit!56207)

(declare-fun lt!1278410 () Unit!56207)

(assert (=> d!1077638 (= lt!1278402 lt!1278410)))

(declare-fun lt!1278404 () List!38818)

(assert (=> d!1077638 (isPrefix!3177 lt!1278404 (++!9630 lt!1278296 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!531 (List!38818 List!38818 List!38818) Unit!56207)

(assert (=> d!1077638 (= lt!1278410 (lemmaPrefixStaysPrefixWhenAddingToSuffix!531 lt!1278404 lt!1278296 suffix!1395))))

(assert (=> d!1077638 (= lt!1278404 (list!14368 (charsOf!3828 lt!1278399)))))

(declare-fun lt!1278396 () Unit!56207)

(declare-fun lt!1278395 () Unit!56207)

(assert (=> d!1077638 (= lt!1278396 lt!1278395)))

(declare-fun lt!1278398 () List!38818)

(declare-fun lt!1278405 () List!38818)

(assert (=> d!1077638 (isPrefix!3177 lt!1278398 (++!9630 lt!1278398 lt!1278405))))

(assert (=> d!1077638 (= lt!1278395 (lemmaConcatTwoListThenFirstIsPrefix!2096 lt!1278398 lt!1278405))))

(assert (=> d!1077638 (= lt!1278405 (_2!22416 (get!12774 (maxPrefix!2937 thiss!23823 rules!3307 lt!1278296))))))

(assert (=> d!1077638 (= lt!1278398 (list!14368 (charsOf!3828 lt!1278399)))))

(declare-datatypes ((List!38820 0))(
  ( (Nil!38696) (Cons!38696 (h!44116 Token!10994) (t!299615 List!38820)) )
))
(declare-fun head!7853 (List!38820) Token!10994)

(declare-datatypes ((IArray!23681 0))(
  ( (IArray!23682 (innerList!11898 List!38820)) )
))
(declare-datatypes ((Conc!11838 0))(
  ( (Node!11838 (left!30203 Conc!11838) (right!30533 Conc!11838) (csize!23906 Int) (cheight!12049 Int)) (Leaf!18356 (xs!15040 IArray!23681) (csize!23907 Int)) (Empty!11838) )
))
(declare-datatypes ((BalanceConc!23290 0))(
  ( (BalanceConc!23291 (c!634524 Conc!11838)) )
))
(declare-fun list!14369 (BalanceConc!23290) List!38820)

(declare-datatypes ((tuple2!38566 0))(
  ( (tuple2!38567 (_1!22417 BalanceConc!23290) (_2!22417 BalanceConc!23288)) )
))
(declare-fun lex!2563 (LexerInterface!5403 List!38819 BalanceConc!23288) tuple2!38566)

(assert (=> d!1077638 (= lt!1278399 (head!7853 (list!14369 (_1!22417 (lex!2563 thiss!23823 rules!3307 (seqFromList!4363 lt!1278296))))))))

(assert (=> d!1077638 (not (isEmpty!22963 rules!3307))))

(assert (=> d!1077638 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1081 thiss!23823 rules!3307 lt!1278296 suffix!1395) lt!1278400)))

(declare-fun b!3669201 () Bool)

(declare-fun res!1490039 () Bool)

(assert (=> b!3669201 (=> (not res!1490039) (not e!2271902))))

(assert (=> b!3669201 (= res!1490039 (matchR!5142 (regex!5814 (get!12773 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 lt!1278399))))) (list!14368 (charsOf!3828 lt!1278399))))))

(declare-fun b!3669202 () Bool)

(assert (=> b!3669202 (= e!2271902 (= (rule!8636 lt!1278399) (get!12773 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 lt!1278399))))))))

(declare-fun b!3669204 () Bool)

(declare-fun Unit!56224 () Unit!56207)

(assert (=> b!3669204 (= e!2271901 Unit!56224)))

(assert (= (and d!1077638 res!1490040) b!3669201))

(assert (= (and b!3669201 res!1490039) b!3669202))

(assert (= (and d!1077638 c!634391) b!3669203))

(assert (= (and d!1077638 (not c!634391)) b!3669204))

(declare-fun m!4177573 () Bool)

(assert (=> b!3669203 m!4177573))

(declare-fun m!4177575 () Bool)

(assert (=> b!3669203 m!4177575))

(assert (=> b!3669203 m!4177301))

(declare-fun m!4177577 () Bool)

(assert (=> b!3669203 m!4177577))

(assert (=> b!3669203 m!4177301))

(declare-fun m!4177579 () Bool)

(assert (=> b!3669203 m!4177579))

(declare-fun m!4177581 () Bool)

(assert (=> b!3669203 m!4177581))

(assert (=> b!3669203 m!4177577))

(declare-fun m!4177583 () Bool)

(assert (=> b!3669203 m!4177583))

(declare-fun m!4177585 () Bool)

(assert (=> b!3669203 m!4177585))

(assert (=> b!3669203 m!4177573))

(declare-fun m!4177587 () Bool)

(assert (=> d!1077638 m!4177587))

(declare-fun m!4177589 () Bool)

(assert (=> d!1077638 m!4177589))

(declare-fun m!4177591 () Bool)

(assert (=> d!1077638 m!4177591))

(assert (=> d!1077638 m!4177301))

(declare-fun m!4177593 () Bool)

(assert (=> d!1077638 m!4177593))

(assert (=> d!1077638 m!4177301))

(declare-fun m!4177595 () Bool)

(assert (=> d!1077638 m!4177595))

(assert (=> d!1077638 m!4177301))

(declare-fun m!4177597 () Bool)

(assert (=> d!1077638 m!4177597))

(assert (=> d!1077638 m!4177387))

(declare-fun m!4177599 () Bool)

(assert (=> d!1077638 m!4177599))

(assert (=> d!1077638 m!4177593))

(declare-fun m!4177601 () Bool)

(assert (=> d!1077638 m!4177601))

(assert (=> d!1077638 m!4177387))

(declare-fun m!4177603 () Bool)

(assert (=> d!1077638 m!4177603))

(declare-fun m!4177605 () Bool)

(assert (=> d!1077638 m!4177605))

(assert (=> d!1077638 m!4177235))

(assert (=> d!1077638 m!4177577))

(assert (=> d!1077638 m!4177587))

(declare-fun m!4177611 () Bool)

(assert (=> d!1077638 m!4177611))

(assert (=> d!1077638 m!4177589))

(declare-fun m!4177613 () Bool)

(assert (=> d!1077638 m!4177613))

(assert (=> d!1077638 m!4177235))

(declare-fun m!4177615 () Bool)

(assert (=> d!1077638 m!4177615))

(assert (=> d!1077638 m!4177577))

(assert (=> d!1077638 m!4177583))

(assert (=> d!1077638 m!4177595))

(declare-fun m!4177617 () Bool)

(assert (=> d!1077638 m!4177617))

(assert (=> d!1077638 m!4177375))

(assert (=> d!1077638 m!4177593))

(declare-fun m!4177621 () Bool)

(assert (=> d!1077638 m!4177621))

(assert (=> b!3669201 m!4177583))

(declare-fun m!4177627 () Bool)

(assert (=> b!3669201 m!4177627))

(assert (=> b!3669201 m!4177587))

(assert (=> b!3669201 m!4177577))

(assert (=> b!3669201 m!4177577))

(assert (=> b!3669201 m!4177583))

(assert (=> b!3669201 m!4177587))

(declare-fun m!4177629 () Bool)

(assert (=> b!3669201 m!4177629))

(assert (=> b!3669202 m!4177587))

(assert (=> b!3669202 m!4177587))

(assert (=> b!3669202 m!4177629))

(assert (=> b!3668969 d!1077638))

(declare-fun b!3669208 () Bool)

(declare-fun res!1490045 () Bool)

(declare-fun e!2271905 () Bool)

(assert (=> b!3669208 (=> (not res!1490045) (not e!2271905))))

(assert (=> b!3669208 (= res!1490045 (= (head!7852 lt!1278296) (head!7852 lt!1278285)))))

(declare-fun b!3669207 () Bool)

(declare-fun e!2271906 () Bool)

(assert (=> b!3669207 (= e!2271906 e!2271905)))

(declare-fun res!1490046 () Bool)

(assert (=> b!3669207 (=> (not res!1490046) (not e!2271905))))

(assert (=> b!3669207 (= res!1490046 (not ((_ is Nil!38694) lt!1278285)))))

(declare-fun b!3669210 () Bool)

(declare-fun e!2271907 () Bool)

(assert (=> b!3669210 (= e!2271907 (>= (size!29573 lt!1278285) (size!29573 lt!1278296)))))

(declare-fun b!3669209 () Bool)

(assert (=> b!3669209 (= e!2271905 (isPrefix!3177 (tail!5679 lt!1278296) (tail!5679 lt!1278285)))))

(declare-fun d!1077654 () Bool)

(assert (=> d!1077654 e!2271907))

(declare-fun res!1490044 () Bool)

(assert (=> d!1077654 (=> res!1490044 e!2271907)))

(declare-fun lt!1278415 () Bool)

(assert (=> d!1077654 (= res!1490044 (not lt!1278415))))

(assert (=> d!1077654 (= lt!1278415 e!2271906)))

(declare-fun res!1490043 () Bool)

(assert (=> d!1077654 (=> res!1490043 e!2271906)))

(assert (=> d!1077654 (= res!1490043 ((_ is Nil!38694) lt!1278296))))

(assert (=> d!1077654 (= (isPrefix!3177 lt!1278296 lt!1278285) lt!1278415)))

(assert (= (and d!1077654 (not res!1490043)) b!3669207))

(assert (= (and b!3669207 res!1490046) b!3669208))

(assert (= (and b!3669208 res!1490045) b!3669209))

(assert (= (and d!1077654 (not res!1490044)) b!3669210))

(declare-fun m!4177631 () Bool)

(assert (=> b!3669208 m!4177631))

(assert (=> b!3669208 m!4177495))

(assert (=> b!3669210 m!4177497))

(assert (=> b!3669210 m!4177389))

(declare-fun m!4177633 () Bool)

(assert (=> b!3669209 m!4177633))

(assert (=> b!3669209 m!4177501))

(assert (=> b!3669209 m!4177633))

(assert (=> b!3669209 m!4177501))

(declare-fun m!4177635 () Bool)

(assert (=> b!3669209 m!4177635))

(assert (=> b!3668969 d!1077654))

(declare-fun b!3669221 () Bool)

(declare-fun res!1490048 () Bool)

(declare-fun e!2271913 () Bool)

(assert (=> b!3669221 (=> (not res!1490048) (not e!2271913))))

(declare-fun lt!1278416 () List!38818)

(assert (=> b!3669221 (= res!1490048 (= (size!29573 lt!1278416) (+ (size!29573 lt!1278296) (size!29573 suffix!1395))))))

(declare-fun b!3669219 () Bool)

(declare-fun e!2271912 () List!38818)

(assert (=> b!3669219 (= e!2271912 suffix!1395)))

(declare-fun b!3669222 () Bool)

(assert (=> b!3669222 (= e!2271913 (or (not (= suffix!1395 Nil!38694)) (= lt!1278416 lt!1278296)))))

(declare-fun d!1077658 () Bool)

(assert (=> d!1077658 e!2271913))

(declare-fun res!1490047 () Bool)

(assert (=> d!1077658 (=> (not res!1490047) (not e!2271913))))

(assert (=> d!1077658 (= res!1490047 (= (content!5602 lt!1278416) ((_ map or) (content!5602 lt!1278296) (content!5602 suffix!1395))))))

(assert (=> d!1077658 (= lt!1278416 e!2271912)))

(declare-fun c!634396 () Bool)

(assert (=> d!1077658 (= c!634396 ((_ is Nil!38694) lt!1278296))))

(assert (=> d!1077658 (= (++!9630 lt!1278296 suffix!1395) lt!1278416)))

(declare-fun b!3669220 () Bool)

(assert (=> b!3669220 (= e!2271912 (Cons!38694 (h!44114 lt!1278296) (++!9630 (t!299453 lt!1278296) suffix!1395)))))

(assert (= (and d!1077658 c!634396) b!3669219))

(assert (= (and d!1077658 (not c!634396)) b!3669220))

(assert (= (and d!1077658 res!1490047) b!3669221))

(assert (= (and b!3669221 res!1490048) b!3669222))

(declare-fun m!4177643 () Bool)

(assert (=> b!3669221 m!4177643))

(assert (=> b!3669221 m!4177389))

(declare-fun m!4177645 () Bool)

(assert (=> b!3669221 m!4177645))

(declare-fun m!4177647 () Bool)

(assert (=> d!1077658 m!4177647))

(declare-fun m!4177649 () Bool)

(assert (=> d!1077658 m!4177649))

(declare-fun m!4177651 () Bool)

(assert (=> d!1077658 m!4177651))

(declare-fun m!4177653 () Bool)

(assert (=> b!3669220 m!4177653))

(assert (=> b!3668969 d!1077658))

(declare-fun d!1077662 () Bool)

(declare-fun e!2271925 () Bool)

(assert (=> d!1077662 e!2271925))

(declare-fun res!1490061 () Bool)

(assert (=> d!1077662 (=> (not res!1490061) (not e!2271925))))

(assert (=> d!1077662 (= res!1490061 (isDefined!6488 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun lt!1278425 () Unit!56207)

(declare-fun choose!21803 (LexerInterface!5403 List!38819 List!38818 Token!10994) Unit!56207)

(assert (=> d!1077662 (= lt!1278425 (choose!21803 thiss!23823 rules!3307 lt!1278285 (_1!22416 lt!1278279)))))

(assert (=> d!1077662 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077662 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1418 thiss!23823 rules!3307 lt!1278285 (_1!22416 lt!1278279)) lt!1278425)))

(declare-fun b!3669245 () Bool)

(declare-fun res!1490062 () Bool)

(assert (=> b!3669245 (=> (not res!1490062) (not e!2271925))))

(assert (=> b!3669245 (= res!1490062 (matchR!5142 (regex!5814 (get!12773 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))) (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))))))

(declare-fun b!3669246 () Bool)

(assert (=> b!3669246 (= e!2271925 (= (rule!8636 (_1!22416 lt!1278279)) (get!12773 (getRuleFromTag!1418 thiss!23823 rules!3307 (tag!6602 (rule!8636 (_1!22416 lt!1278279)))))))))

(assert (= (and d!1077662 res!1490061) b!3669245))

(assert (= (and b!3669245 res!1490062) b!3669246))

(assert (=> d!1077662 m!4177311))

(assert (=> d!1077662 m!4177311))

(declare-fun m!4177669 () Bool)

(assert (=> d!1077662 m!4177669))

(declare-fun m!4177671 () Bool)

(assert (=> d!1077662 m!4177671))

(assert (=> d!1077662 m!4177259))

(assert (=> b!3669245 m!4177311))

(declare-fun m!4177673 () Bool)

(assert (=> b!3669245 m!4177673))

(assert (=> b!3669245 m!4177311))

(assert (=> b!3669245 m!4177305))

(assert (=> b!3669245 m!4177377))

(assert (=> b!3669245 m!4177305))

(assert (=> b!3669245 m!4177377))

(declare-fun m!4177679 () Bool)

(assert (=> b!3669245 m!4177679))

(assert (=> b!3669246 m!4177311))

(assert (=> b!3669246 m!4177311))

(assert (=> b!3669246 m!4177673))

(assert (=> b!3668969 d!1077662))

(declare-fun d!1077672 () Bool)

(assert (=> d!1077672 (= (isDefined!6488 lt!1278276) (not (isEmpty!22964 lt!1278276)))))

(declare-fun bs!573096 () Bool)

(assert (= bs!573096 d!1077672))

(declare-fun m!4177681 () Bool)

(assert (=> bs!573096 m!4177681))

(assert (=> b!3668969 d!1077672))

(declare-fun d!1077674 () Bool)

(declare-fun list!14371 (Conc!11837) List!38818)

(assert (=> d!1077674 (= (list!14368 lt!1278287) (list!14371 (c!634353 lt!1278287)))))

(declare-fun bs!573098 () Bool)

(assert (= bs!573098 d!1077674))

(declare-fun m!4177683 () Bool)

(assert (=> bs!573098 m!4177683))

(assert (=> b!3668969 d!1077674))

(declare-fun b!3669250 () Bool)

(declare-fun res!1490065 () Bool)

(declare-fun e!2271927 () Bool)

(assert (=> b!3669250 (=> (not res!1490065) (not e!2271927))))

(assert (=> b!3669250 (= res!1490065 (= (head!7852 lt!1278291) (head!7852 (++!9630 lt!1278291 (_2!22416 lt!1278279)))))))

(declare-fun b!3669249 () Bool)

(declare-fun e!2271928 () Bool)

(assert (=> b!3669249 (= e!2271928 e!2271927)))

(declare-fun res!1490066 () Bool)

(assert (=> b!3669249 (=> (not res!1490066) (not e!2271927))))

(assert (=> b!3669249 (= res!1490066 (not ((_ is Nil!38694) (++!9630 lt!1278291 (_2!22416 lt!1278279)))))))

(declare-fun b!3669252 () Bool)

(declare-fun e!2271929 () Bool)

(assert (=> b!3669252 (= e!2271929 (>= (size!29573 (++!9630 lt!1278291 (_2!22416 lt!1278279))) (size!29573 lt!1278291)))))

(declare-fun b!3669251 () Bool)

(assert (=> b!3669251 (= e!2271927 (isPrefix!3177 (tail!5679 lt!1278291) (tail!5679 (++!9630 lt!1278291 (_2!22416 lt!1278279)))))))

(declare-fun d!1077678 () Bool)

(assert (=> d!1077678 e!2271929))

(declare-fun res!1490064 () Bool)

(assert (=> d!1077678 (=> res!1490064 e!2271929)))

(declare-fun lt!1278430 () Bool)

(assert (=> d!1077678 (= res!1490064 (not lt!1278430))))

(assert (=> d!1077678 (= lt!1278430 e!2271928)))

(declare-fun res!1490063 () Bool)

(assert (=> d!1077678 (=> res!1490063 e!2271928)))

(assert (=> d!1077678 (= res!1490063 ((_ is Nil!38694) lt!1278291))))

(assert (=> d!1077678 (= (isPrefix!3177 lt!1278291 (++!9630 lt!1278291 (_2!22416 lt!1278279))) lt!1278430)))

(assert (= (and d!1077678 (not res!1490063)) b!3669249))

(assert (= (and b!3669249 res!1490066) b!3669250))

(assert (= (and b!3669250 res!1490065) b!3669251))

(assert (= (and d!1077678 (not res!1490064)) b!3669252))

(assert (=> b!3669250 m!4177399))

(assert (=> b!3669250 m!4177303))

(declare-fun m!4177691 () Bool)

(assert (=> b!3669250 m!4177691))

(assert (=> b!3669252 m!4177303))

(declare-fun m!4177693 () Bool)

(assert (=> b!3669252 m!4177693))

(assert (=> b!3669252 m!4177353))

(assert (=> b!3669251 m!4177499))

(assert (=> b!3669251 m!4177303))

(declare-fun m!4177695 () Bool)

(assert (=> b!3669251 m!4177695))

(assert (=> b!3669251 m!4177499))

(assert (=> b!3669251 m!4177695))

(declare-fun m!4177697 () Bool)

(assert (=> b!3669251 m!4177697))

(assert (=> b!3668969 d!1077678))

(declare-fun d!1077684 () Bool)

(assert (=> d!1077684 (not (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278296))))

(declare-fun lt!1278435 () Unit!56207)

(declare-fun choose!21804 (LexerInterface!5403 List!38819 Rule!11428 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> d!1077684 (= lt!1278435 (choose!21804 thiss!23823 rules!3307 rule!403 lt!1278296 lt!1278296 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077684 (isPrefix!3177 lt!1278296 lt!1278296)))

(assert (=> d!1077684 (= (lemmaMaxPrefNoSmallerRuleMatches!222 thiss!23823 rules!3307 rule!403 lt!1278296 lt!1278296 (rule!8636 (_1!22416 lt!1278279))) lt!1278435)))

(declare-fun bs!573099 () Bool)

(assert (= bs!573099 d!1077684))

(assert (=> bs!573099 m!4177409))

(declare-fun m!4177699 () Bool)

(assert (=> bs!573099 m!4177699))

(declare-fun m!4177701 () Bool)

(assert (=> bs!573099 m!4177701))

(assert (=> b!3668970 d!1077684))

(declare-fun b!3669300 () Bool)

(declare-fun e!2271959 () Bool)

(declare-fun derivativeStep!3230 (Regex!10573 C!21332) Regex!10573)

(assert (=> b!3669300 (= e!2271959 (matchR!5142 (derivativeStep!3230 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) (head!7852 lt!1278296)) (tail!5679 lt!1278296)))))

(declare-fun b!3669301 () Bool)

(declare-fun nullable!3681 (Regex!10573) Bool)

(assert (=> b!3669301 (= e!2271959 (nullable!3681 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669302 () Bool)

(declare-fun res!1490091 () Bool)

(declare-fun e!2271957 () Bool)

(assert (=> b!3669302 (=> res!1490091 e!2271957)))

(assert (=> b!3669302 (= res!1490091 (not (isEmpty!22962 (tail!5679 lt!1278296))))))

(declare-fun bm!265601 () Bool)

(declare-fun call!265606 () Bool)

(assert (=> bm!265601 (= call!265606 (isEmpty!22962 lt!1278296))))

(declare-fun b!3669304 () Bool)

(assert (=> b!3669304 (= e!2271957 (not (= (head!7852 lt!1278296) (c!634352 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))))

(declare-fun b!3669305 () Bool)

(declare-fun res!1490088 () Bool)

(declare-fun e!2271962 () Bool)

(assert (=> b!3669305 (=> res!1490088 e!2271962)))

(assert (=> b!3669305 (= res!1490088 (not ((_ is ElementMatch!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun e!2271956 () Bool)

(assert (=> b!3669305 (= e!2271956 e!2271962)))

(declare-fun b!3669306 () Bool)

(declare-fun lt!1278447 () Bool)

(assert (=> b!3669306 (= e!2271956 (not lt!1278447))))

(declare-fun b!3669307 () Bool)

(declare-fun res!1490093 () Bool)

(declare-fun e!2271958 () Bool)

(assert (=> b!3669307 (=> (not res!1490093) (not e!2271958))))

(assert (=> b!3669307 (= res!1490093 (isEmpty!22962 (tail!5679 lt!1278296)))))

(declare-fun b!3669308 () Bool)

(declare-fun res!1490089 () Bool)

(assert (=> b!3669308 (=> res!1490089 e!2271962)))

(assert (=> b!3669308 (= res!1490089 e!2271958)))

(declare-fun res!1490087 () Bool)

(assert (=> b!3669308 (=> (not res!1490087) (not e!2271958))))

(assert (=> b!3669308 (= res!1490087 lt!1278447)))

(declare-fun b!3669309 () Bool)

(declare-fun e!2271961 () Bool)

(assert (=> b!3669309 (= e!2271961 (= lt!1278447 call!265606))))

(declare-fun b!3669310 () Bool)

(declare-fun e!2271960 () Bool)

(assert (=> b!3669310 (= e!2271960 e!2271957)))

(declare-fun res!1490086 () Bool)

(assert (=> b!3669310 (=> res!1490086 e!2271957)))

(assert (=> b!3669310 (= res!1490086 call!265606)))

(declare-fun b!3669311 () Bool)

(declare-fun res!1490092 () Bool)

(assert (=> b!3669311 (=> (not res!1490092) (not e!2271958))))

(assert (=> b!3669311 (= res!1490092 (not call!265606))))

(declare-fun b!3669303 () Bool)

(assert (=> b!3669303 (= e!2271958 (= (head!7852 lt!1278296) (c!634352 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun d!1077686 () Bool)

(assert (=> d!1077686 e!2271961))

(declare-fun c!634420 () Bool)

(assert (=> d!1077686 (= c!634420 ((_ is EmptyExpr!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (=> d!1077686 (= lt!1278447 e!2271959)))

(declare-fun c!634419 () Bool)

(assert (=> d!1077686 (= c!634419 (isEmpty!22962 lt!1278296))))

(declare-fun validRegex!4843 (Regex!10573) Bool)

(assert (=> d!1077686 (validRegex!4843 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077686 (= (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278296) lt!1278447)))

(declare-fun b!3669312 () Bool)

(assert (=> b!3669312 (= e!2271962 e!2271960)))

(declare-fun res!1490090 () Bool)

(assert (=> b!3669312 (=> (not res!1490090) (not e!2271960))))

(assert (=> b!3669312 (= res!1490090 (not lt!1278447))))

(declare-fun b!3669313 () Bool)

(assert (=> b!3669313 (= e!2271961 e!2271956)))

(declare-fun c!634421 () Bool)

(assert (=> b!3669313 (= c!634421 ((_ is EmptyLang!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (= (and d!1077686 c!634419) b!3669301))

(assert (= (and d!1077686 (not c!634419)) b!3669300))

(assert (= (and d!1077686 c!634420) b!3669309))

(assert (= (and d!1077686 (not c!634420)) b!3669313))

(assert (= (and b!3669313 c!634421) b!3669306))

(assert (= (and b!3669313 (not c!634421)) b!3669305))

(assert (= (and b!3669305 (not res!1490088)) b!3669308))

(assert (= (and b!3669308 res!1490087) b!3669311))

(assert (= (and b!3669311 res!1490092) b!3669307))

(assert (= (and b!3669307 res!1490093) b!3669303))

(assert (= (and b!3669308 (not res!1490089)) b!3669312))

(assert (= (and b!3669312 res!1490090) b!3669310))

(assert (= (and b!3669310 (not res!1490086)) b!3669302))

(assert (= (and b!3669302 (not res!1490091)) b!3669304))

(assert (= (or b!3669309 b!3669310 b!3669311) bm!265601))

(assert (=> d!1077686 m!4177271))

(declare-fun m!4177723 () Bool)

(assert (=> d!1077686 m!4177723))

(declare-fun m!4177725 () Bool)

(assert (=> b!3669301 m!4177725))

(assert (=> b!3669307 m!4177633))

(assert (=> b!3669307 m!4177633))

(declare-fun m!4177727 () Bool)

(assert (=> b!3669307 m!4177727))

(assert (=> b!3669303 m!4177631))

(assert (=> bm!265601 m!4177271))

(assert (=> b!3669300 m!4177631))

(assert (=> b!3669300 m!4177631))

(declare-fun m!4177729 () Bool)

(assert (=> b!3669300 m!4177729))

(assert (=> b!3669300 m!4177633))

(assert (=> b!3669300 m!4177729))

(assert (=> b!3669300 m!4177633))

(declare-fun m!4177731 () Bool)

(assert (=> b!3669300 m!4177731))

(assert (=> b!3669304 m!4177631))

(assert (=> b!3669302 m!4177633))

(assert (=> b!3669302 m!4177633))

(assert (=> b!3669302 m!4177727))

(assert (=> b!3668970 d!1077686))

(declare-fun d!1077708 () Bool)

(assert (=> d!1077708 (= (isEmpty!22962 (getSuffix!1730 lt!1278296 lt!1278296)) ((_ is Nil!38694) (getSuffix!1730 lt!1278296 lt!1278296)))))

(assert (=> b!3668970 d!1077708))

(declare-fun d!1077710 () Bool)

(assert (=> d!1077710 (isEmpty!22962 (getSuffix!1730 lt!1278296 lt!1278296))))

(declare-fun lt!1278450 () Unit!56207)

(declare-fun choose!21807 (List!38818) Unit!56207)

(assert (=> d!1077710 (= lt!1278450 (choose!21807 lt!1278296))))

(assert (=> d!1077710 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!194 lt!1278296) lt!1278450)))

(declare-fun bs!573103 () Bool)

(assert (= bs!573103 d!1077710))

(assert (=> bs!573103 m!4177405))

(assert (=> bs!573103 m!4177405))

(assert (=> bs!573103 m!4177407))

(declare-fun m!4177737 () Bool)

(assert (=> bs!573103 m!4177737))

(assert (=> b!3668970 d!1077710))

(declare-fun d!1077712 () Bool)

(declare-fun lt!1278456 () List!38818)

(assert (=> d!1077712 (= (++!9630 lt!1278296 lt!1278456) lt!1278296)))

(declare-fun e!2271981 () List!38818)

(assert (=> d!1077712 (= lt!1278456 e!2271981)))

(declare-fun c!634433 () Bool)

(assert (=> d!1077712 (= c!634433 ((_ is Cons!38694) lt!1278296))))

(assert (=> d!1077712 (>= (size!29573 lt!1278296) (size!29573 lt!1278296))))

(assert (=> d!1077712 (= (getSuffix!1730 lt!1278296 lt!1278296) lt!1278456)))

(declare-fun b!3669347 () Bool)

(assert (=> b!3669347 (= e!2271981 (getSuffix!1730 (tail!5679 lt!1278296) (t!299453 lt!1278296)))))

(declare-fun b!3669348 () Bool)

(assert (=> b!3669348 (= e!2271981 lt!1278296)))

(assert (= (and d!1077712 c!634433) b!3669347))

(assert (= (and d!1077712 (not c!634433)) b!3669348))

(declare-fun m!4177765 () Bool)

(assert (=> d!1077712 m!4177765))

(assert (=> d!1077712 m!4177389))

(assert (=> d!1077712 m!4177389))

(assert (=> b!3669347 m!4177633))

(assert (=> b!3669347 m!4177633))

(declare-fun m!4177767 () Bool)

(assert (=> b!3669347 m!4177767))

(assert (=> b!3668970 d!1077712))

(declare-fun d!1077724 () Bool)

(declare-fun lt!1278462 () Bool)

(assert (=> d!1077724 (= lt!1278462 (select (content!5602 (usedCharacters!1026 (regex!5814 anOtherTypeRule!33))) lt!1278274))))

(declare-fun e!2271986 () Bool)

(assert (=> d!1077724 (= lt!1278462 e!2271986)))

(declare-fun res!1490109 () Bool)

(assert (=> d!1077724 (=> (not res!1490109) (not e!2271986))))

(assert (=> d!1077724 (= res!1490109 ((_ is Cons!38694) (usedCharacters!1026 (regex!5814 anOtherTypeRule!33))))))

(assert (=> d!1077724 (= (contains!7696 (usedCharacters!1026 (regex!5814 anOtherTypeRule!33)) lt!1278274) lt!1278462)))

(declare-fun b!3669353 () Bool)

(declare-fun e!2271987 () Bool)

(assert (=> b!3669353 (= e!2271986 e!2271987)))

(declare-fun res!1490110 () Bool)

(assert (=> b!3669353 (=> res!1490110 e!2271987)))

(assert (=> b!3669353 (= res!1490110 (= (h!44114 (usedCharacters!1026 (regex!5814 anOtherTypeRule!33))) lt!1278274))))

(declare-fun b!3669354 () Bool)

(assert (=> b!3669354 (= e!2271987 (contains!7696 (t!299453 (usedCharacters!1026 (regex!5814 anOtherTypeRule!33))) lt!1278274))))

(assert (= (and d!1077724 res!1490109) b!3669353))

(assert (= (and b!3669353 (not res!1490110)) b!3669354))

(assert (=> d!1077724 m!4177329))

(declare-fun m!4177771 () Bool)

(assert (=> d!1077724 m!4177771))

(declare-fun m!4177773 () Bool)

(assert (=> d!1077724 m!4177773))

(declare-fun m!4177775 () Bool)

(assert (=> b!3669354 m!4177775))

(assert (=> b!3668989 d!1077724))

(declare-fun b!3669384 () Bool)

(declare-fun e!2272007 () List!38818)

(assert (=> b!3669384 (= e!2272007 (Cons!38694 (c!634352 (regex!5814 anOtherTypeRule!33)) Nil!38694))))

(declare-fun b!3669385 () Bool)

(declare-fun e!2272006 () List!38818)

(declare-fun call!265618 () List!38818)

(assert (=> b!3669385 (= e!2272006 call!265618)))

(declare-fun bm!265611 () Bool)

(declare-fun call!265619 () List!38818)

(declare-fun call!265617 () List!38818)

(assert (=> bm!265611 (= call!265619 call!265617)))

(declare-fun bm!265612 () Bool)

(declare-fun c!634442 () Bool)

(declare-fun call!265616 () List!38818)

(assert (=> bm!265612 (= call!265618 (++!9630 (ite c!634442 call!265616 call!265619) (ite c!634442 call!265619 call!265616)))))

(declare-fun d!1077728 () Bool)

(declare-fun c!634444 () Bool)

(assert (=> d!1077728 (= c!634444 (or ((_ is EmptyExpr!10573) (regex!5814 anOtherTypeRule!33)) ((_ is EmptyLang!10573) (regex!5814 anOtherTypeRule!33))))))

(declare-fun e!2272009 () List!38818)

(assert (=> d!1077728 (= (usedCharacters!1026 (regex!5814 anOtherTypeRule!33)) e!2272009)))

(declare-fun b!3669386 () Bool)

(declare-fun e!2272008 () List!38818)

(assert (=> b!3669386 (= e!2272008 call!265617)))

(declare-fun b!3669387 () Bool)

(declare-fun c!634445 () Bool)

(assert (=> b!3669387 (= c!634445 ((_ is Star!10573) (regex!5814 anOtherTypeRule!33)))))

(assert (=> b!3669387 (= e!2272007 e!2272008)))

(declare-fun b!3669388 () Bool)

(assert (=> b!3669388 (= e!2272009 Nil!38694)))

(declare-fun bm!265613 () Bool)

(assert (=> bm!265613 (= call!265617 (usedCharacters!1026 (ite c!634445 (reg!10902 (regex!5814 anOtherTypeRule!33)) (ite c!634442 (regTwo!21659 (regex!5814 anOtherTypeRule!33)) (regOne!21658 (regex!5814 anOtherTypeRule!33))))))))

(declare-fun bm!265614 () Bool)

(assert (=> bm!265614 (= call!265616 (usedCharacters!1026 (ite c!634442 (regOne!21659 (regex!5814 anOtherTypeRule!33)) (regTwo!21658 (regex!5814 anOtherTypeRule!33)))))))

(declare-fun b!3669389 () Bool)

(assert (=> b!3669389 (= e!2272008 e!2272006)))

(assert (=> b!3669389 (= c!634442 ((_ is Union!10573) (regex!5814 anOtherTypeRule!33)))))

(declare-fun b!3669390 () Bool)

(assert (=> b!3669390 (= e!2272006 call!265618)))

(declare-fun b!3669391 () Bool)

(assert (=> b!3669391 (= e!2272009 e!2272007)))

(declare-fun c!634443 () Bool)

(assert (=> b!3669391 (= c!634443 ((_ is ElementMatch!10573) (regex!5814 anOtherTypeRule!33)))))

(assert (= (and d!1077728 c!634444) b!3669388))

(assert (= (and d!1077728 (not c!634444)) b!3669391))

(assert (= (and b!3669391 c!634443) b!3669384))

(assert (= (and b!3669391 (not c!634443)) b!3669387))

(assert (= (and b!3669387 c!634445) b!3669386))

(assert (= (and b!3669387 (not c!634445)) b!3669389))

(assert (= (and b!3669389 c!634442) b!3669385))

(assert (= (and b!3669389 (not c!634442)) b!3669390))

(assert (= (or b!3669385 b!3669390) bm!265614))

(assert (= (or b!3669385 b!3669390) bm!265611))

(assert (= (or b!3669385 b!3669390) bm!265612))

(assert (= (or b!3669386 bm!265611) bm!265613))

(declare-fun m!4177793 () Bool)

(assert (=> bm!265612 m!4177793))

(declare-fun m!4177795 () Bool)

(assert (=> bm!265613 m!4177795))

(declare-fun m!4177797 () Bool)

(assert (=> bm!265614 m!4177797))

(assert (=> b!3668989 d!1077728))

(declare-fun d!1077736 () Bool)

(assert (=> d!1077736 (= (inv!52172 (tag!6602 anOtherTypeRule!33)) (= (mod (str.len (value!186158 (tag!6602 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3668971 d!1077736))

(declare-fun d!1077740 () Bool)

(declare-fun res!1490129 () Bool)

(declare-fun e!2272016 () Bool)

(assert (=> d!1077740 (=> (not res!1490129) (not e!2272016))))

(declare-fun semiInverseModEq!2481 (Int Int) Bool)

(assert (=> d!1077740 (= res!1490129 (semiInverseModEq!2481 (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 anOtherTypeRule!33))))))

(assert (=> d!1077740 (= (inv!52175 (transformation!5814 anOtherTypeRule!33)) e!2272016)))

(declare-fun b!3669400 () Bool)

(declare-fun equivClasses!2380 (Int Int) Bool)

(assert (=> b!3669400 (= e!2272016 (equivClasses!2380 (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 anOtherTypeRule!33))))))

(assert (= (and d!1077740 res!1490129) b!3669400))

(declare-fun m!4177803 () Bool)

(assert (=> d!1077740 m!4177803))

(declare-fun m!4177805 () Bool)

(assert (=> b!3669400 m!4177805))

(assert (=> b!3668971 d!1077740))

(declare-fun d!1077742 () Bool)

(declare-fun res!1490134 () Bool)

(declare-fun e!2272021 () Bool)

(assert (=> d!1077742 (=> (not res!1490134) (not e!2272021))))

(declare-fun rulesValid!2237 (LexerInterface!5403 List!38819) Bool)

(assert (=> d!1077742 (= res!1490134 (rulesValid!2237 thiss!23823 rules!3307))))

(assert (=> d!1077742 (= (rulesInvariant!4800 thiss!23823 rules!3307) e!2272021)))

(declare-fun b!3669409 () Bool)

(declare-datatypes ((List!38822 0))(
  ( (Nil!38698) (Cons!38698 (h!44118 String!43554) (t!299617 List!38822)) )
))
(declare-fun noDuplicateTag!2233 (LexerInterface!5403 List!38819 List!38822) Bool)

(assert (=> b!3669409 (= e!2272021 (noDuplicateTag!2233 thiss!23823 rules!3307 Nil!38698))))

(assert (= (and d!1077742 res!1490134) b!3669409))

(declare-fun m!4177819 () Bool)

(assert (=> d!1077742 m!4177819))

(declare-fun m!4177821 () Bool)

(assert (=> b!3669409 m!4177821))

(assert (=> b!3668990 d!1077742))

(declare-fun b!3669410 () Bool)

(declare-fun e!2272025 () Bool)

(assert (=> b!3669410 (= e!2272025 (matchR!5142 (derivativeStep!3230 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) (head!7852 lt!1278291)) (tail!5679 lt!1278291)))))

(declare-fun b!3669411 () Bool)

(assert (=> b!3669411 (= e!2272025 (nullable!3681 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669412 () Bool)

(declare-fun res!1490140 () Bool)

(declare-fun e!2272023 () Bool)

(assert (=> b!3669412 (=> res!1490140 e!2272023)))

(assert (=> b!3669412 (= res!1490140 (not (isEmpty!22962 (tail!5679 lt!1278291))))))

(declare-fun bm!265615 () Bool)

(declare-fun call!265620 () Bool)

(assert (=> bm!265615 (= call!265620 (isEmpty!22962 lt!1278291))))

(declare-fun b!3669414 () Bool)

(assert (=> b!3669414 (= e!2272023 (not (= (head!7852 lt!1278291) (c!634352 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))))

(declare-fun b!3669415 () Bool)

(declare-fun res!1490137 () Bool)

(declare-fun e!2272028 () Bool)

(assert (=> b!3669415 (=> res!1490137 e!2272028)))

(assert (=> b!3669415 (= res!1490137 (not ((_ is ElementMatch!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun e!2272022 () Bool)

(assert (=> b!3669415 (= e!2272022 e!2272028)))

(declare-fun b!3669416 () Bool)

(declare-fun lt!1278472 () Bool)

(assert (=> b!3669416 (= e!2272022 (not lt!1278472))))

(declare-fun b!3669417 () Bool)

(declare-fun res!1490142 () Bool)

(declare-fun e!2272024 () Bool)

(assert (=> b!3669417 (=> (not res!1490142) (not e!2272024))))

(assert (=> b!3669417 (= res!1490142 (isEmpty!22962 (tail!5679 lt!1278291)))))

(declare-fun b!3669418 () Bool)

(declare-fun res!1490138 () Bool)

(assert (=> b!3669418 (=> res!1490138 e!2272028)))

(assert (=> b!3669418 (= res!1490138 e!2272024)))

(declare-fun res!1490136 () Bool)

(assert (=> b!3669418 (=> (not res!1490136) (not e!2272024))))

(assert (=> b!3669418 (= res!1490136 lt!1278472)))

(declare-fun b!3669419 () Bool)

(declare-fun e!2272027 () Bool)

(assert (=> b!3669419 (= e!2272027 (= lt!1278472 call!265620))))

(declare-fun b!3669420 () Bool)

(declare-fun e!2272026 () Bool)

(assert (=> b!3669420 (= e!2272026 e!2272023)))

(declare-fun res!1490135 () Bool)

(assert (=> b!3669420 (=> res!1490135 e!2272023)))

(assert (=> b!3669420 (= res!1490135 call!265620)))

(declare-fun b!3669421 () Bool)

(declare-fun res!1490141 () Bool)

(assert (=> b!3669421 (=> (not res!1490141) (not e!2272024))))

(assert (=> b!3669421 (= res!1490141 (not call!265620))))

(declare-fun b!3669413 () Bool)

(assert (=> b!3669413 (= e!2272024 (= (head!7852 lt!1278291) (c!634352 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun d!1077746 () Bool)

(assert (=> d!1077746 e!2272027))

(declare-fun c!634450 () Bool)

(assert (=> d!1077746 (= c!634450 ((_ is EmptyExpr!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (=> d!1077746 (= lt!1278472 e!2272025)))

(declare-fun c!634449 () Bool)

(assert (=> d!1077746 (= c!634449 (isEmpty!22962 lt!1278291))))

(assert (=> d!1077746 (validRegex!4843 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077746 (= (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291) lt!1278472)))

(declare-fun b!3669422 () Bool)

(assert (=> b!3669422 (= e!2272028 e!2272026)))

(declare-fun res!1490139 () Bool)

(assert (=> b!3669422 (=> (not res!1490139) (not e!2272026))))

(assert (=> b!3669422 (= res!1490139 (not lt!1278472))))

(declare-fun b!3669423 () Bool)

(assert (=> b!3669423 (= e!2272027 e!2272022)))

(declare-fun c!634451 () Bool)

(assert (=> b!3669423 (= c!634451 ((_ is EmptyLang!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (= (and d!1077746 c!634449) b!3669411))

(assert (= (and d!1077746 (not c!634449)) b!3669410))

(assert (= (and d!1077746 c!634450) b!3669419))

(assert (= (and d!1077746 (not c!634450)) b!3669423))

(assert (= (and b!3669423 c!634451) b!3669416))

(assert (= (and b!3669423 (not c!634451)) b!3669415))

(assert (= (and b!3669415 (not res!1490137)) b!3669418))

(assert (= (and b!3669418 res!1490136) b!3669421))

(assert (= (and b!3669421 res!1490141) b!3669417))

(assert (= (and b!3669417 res!1490142) b!3669413))

(assert (= (and b!3669418 (not res!1490138)) b!3669422))

(assert (= (and b!3669422 res!1490139) b!3669420))

(assert (= (and b!3669420 (not res!1490135)) b!3669412))

(assert (= (and b!3669412 (not res!1490140)) b!3669414))

(assert (= (or b!3669419 b!3669420 b!3669421) bm!265615))

(declare-fun m!4177823 () Bool)

(assert (=> d!1077746 m!4177823))

(assert (=> d!1077746 m!4177723))

(assert (=> b!3669411 m!4177725))

(assert (=> b!3669417 m!4177499))

(assert (=> b!3669417 m!4177499))

(declare-fun m!4177825 () Bool)

(assert (=> b!3669417 m!4177825))

(assert (=> b!3669413 m!4177399))

(assert (=> bm!265615 m!4177823))

(assert (=> b!3669410 m!4177399))

(assert (=> b!3669410 m!4177399))

(declare-fun m!4177827 () Bool)

(assert (=> b!3669410 m!4177827))

(assert (=> b!3669410 m!4177499))

(assert (=> b!3669410 m!4177827))

(assert (=> b!3669410 m!4177499))

(declare-fun m!4177829 () Bool)

(assert (=> b!3669410 m!4177829))

(assert (=> b!3669414 m!4177399))

(assert (=> b!3669412 m!4177499))

(assert (=> b!3669412 m!4177499))

(assert (=> b!3669412 m!4177825))

(assert (=> b!3669009 d!1077746))

(declare-fun d!1077748 () Bool)

(declare-fun lt!1278473 () Bool)

(assert (=> d!1077748 (= lt!1278473 (select (content!5602 call!265575) lt!1278274))))

(declare-fun e!2272029 () Bool)

(assert (=> d!1077748 (= lt!1278473 e!2272029)))

(declare-fun res!1490143 () Bool)

(assert (=> d!1077748 (=> (not res!1490143) (not e!2272029))))

(assert (=> d!1077748 (= res!1490143 ((_ is Cons!38694) call!265575))))

(assert (=> d!1077748 (= (contains!7696 call!265575 lt!1278274) lt!1278473)))

(declare-fun b!3669424 () Bool)

(declare-fun e!2272030 () Bool)

(assert (=> b!3669424 (= e!2272029 e!2272030)))

(declare-fun res!1490144 () Bool)

(assert (=> b!3669424 (=> res!1490144 e!2272030)))

(assert (=> b!3669424 (= res!1490144 (= (h!44114 call!265575) lt!1278274))))

(declare-fun b!3669425 () Bool)

(assert (=> b!3669425 (= e!2272030 (contains!7696 (t!299453 call!265575) lt!1278274))))

(assert (= (and d!1077748 res!1490143) b!3669424))

(assert (= (and b!3669424 (not res!1490144)) b!3669425))

(declare-fun m!4177831 () Bool)

(assert (=> d!1077748 m!4177831))

(declare-fun m!4177833 () Bool)

(assert (=> d!1077748 m!4177833))

(declare-fun m!4177835 () Bool)

(assert (=> b!3669425 m!4177835))

(assert (=> bm!265573 d!1077748))

(declare-fun d!1077750 () Bool)

(assert (=> d!1077750 (= (isDefined!6489 lt!1278278) (not (isEmpty!22965 lt!1278278)))))

(declare-fun bs!573108 () Bool)

(assert (= bs!573108 d!1077750))

(declare-fun m!4177837 () Bool)

(assert (=> bs!573108 m!4177837))

(assert (=> b!3669010 d!1077750))

(declare-fun b!3669426 () Bool)

(declare-fun res!1490147 () Bool)

(declare-fun e!2272033 () Bool)

(assert (=> b!3669426 (=> (not res!1490147) (not e!2272033))))

(declare-fun lt!1278475 () Option!8256)

(assert (=> b!3669426 (= res!1490147 (= (++!9630 (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278475)))) (_2!22416 (get!12774 lt!1278475))) lt!1278296))))

(declare-fun b!3669427 () Bool)

(declare-fun e!2272031 () Option!8256)

(declare-fun call!265621 () Option!8256)

(assert (=> b!3669427 (= e!2272031 call!265621)))

(declare-fun d!1077752 () Bool)

(declare-fun e!2272032 () Bool)

(assert (=> d!1077752 e!2272032))

(declare-fun res!1490146 () Bool)

(assert (=> d!1077752 (=> res!1490146 e!2272032)))

(assert (=> d!1077752 (= res!1490146 (isEmpty!22965 lt!1278475))))

(assert (=> d!1077752 (= lt!1278475 e!2272031)))

(declare-fun c!634452 () Bool)

(assert (=> d!1077752 (= c!634452 (and ((_ is Cons!38695) rules!3307) ((_ is Nil!38695) (t!299454 rules!3307))))))

(declare-fun lt!1278477 () Unit!56207)

(declare-fun lt!1278476 () Unit!56207)

(assert (=> d!1077752 (= lt!1278477 lt!1278476)))

(assert (=> d!1077752 (isPrefix!3177 lt!1278296 lt!1278296)))

(assert (=> d!1077752 (= lt!1278476 (lemmaIsPrefixRefl!2003 lt!1278296 lt!1278296))))

(assert (=> d!1077752 (rulesValidInductive!2066 thiss!23823 rules!3307)))

(assert (=> d!1077752 (= (maxPrefix!2937 thiss!23823 rules!3307 lt!1278296) lt!1278475)))

(declare-fun b!3669428 () Bool)

(declare-fun res!1490151 () Bool)

(assert (=> b!3669428 (=> (not res!1490151) (not e!2272033))))

(assert (=> b!3669428 (= res!1490151 (matchR!5142 (regex!5814 (rule!8636 (_1!22416 (get!12774 lt!1278475)))) (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278475))))))))

(declare-fun b!3669429 () Bool)

(assert (=> b!3669429 (= e!2272033 (contains!7695 rules!3307 (rule!8636 (_1!22416 (get!12774 lt!1278475)))))))

(declare-fun bm!265616 () Bool)

(assert (=> bm!265616 (= call!265621 (maxPrefixOneRule!2075 thiss!23823 (h!44115 rules!3307) lt!1278296))))

(declare-fun b!3669430 () Bool)

(declare-fun res!1490145 () Bool)

(assert (=> b!3669430 (=> (not res!1490145) (not e!2272033))))

(assert (=> b!3669430 (= res!1490145 (= (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278475)))) (originalCharacters!6528 (_1!22416 (get!12774 lt!1278475)))))))

(declare-fun b!3669431 () Bool)

(declare-fun res!1490148 () Bool)

(assert (=> b!3669431 (=> (not res!1490148) (not e!2272033))))

(assert (=> b!3669431 (= res!1490148 (< (size!29573 (_2!22416 (get!12774 lt!1278475))) (size!29573 lt!1278296)))))

(declare-fun b!3669432 () Bool)

(assert (=> b!3669432 (= e!2272032 e!2272033)))

(declare-fun res!1490150 () Bool)

(assert (=> b!3669432 (=> (not res!1490150) (not e!2272033))))

(assert (=> b!3669432 (= res!1490150 (isDefined!6489 lt!1278475))))

(declare-fun b!3669433 () Bool)

(declare-fun lt!1278474 () Option!8256)

(declare-fun lt!1278478 () Option!8256)

(assert (=> b!3669433 (= e!2272031 (ite (and ((_ is None!8255) lt!1278474) ((_ is None!8255) lt!1278478)) None!8255 (ite ((_ is None!8255) lt!1278478) lt!1278474 (ite ((_ is None!8255) lt!1278474) lt!1278478 (ite (>= (size!29571 (_1!22416 (v!38163 lt!1278474))) (size!29571 (_1!22416 (v!38163 lt!1278478)))) lt!1278474 lt!1278478)))))))

(assert (=> b!3669433 (= lt!1278474 call!265621)))

(assert (=> b!3669433 (= lt!1278478 (maxPrefix!2937 thiss!23823 (t!299454 rules!3307) lt!1278296))))

(declare-fun b!3669434 () Bool)

(declare-fun res!1490149 () Bool)

(assert (=> b!3669434 (=> (not res!1490149) (not e!2272033))))

(assert (=> b!3669434 (= res!1490149 (= (value!186159 (_1!22416 (get!12774 lt!1278475))) (apply!9316 (transformation!5814 (rule!8636 (_1!22416 (get!12774 lt!1278475)))) (seqFromList!4363 (originalCharacters!6528 (_1!22416 (get!12774 lt!1278475)))))))))

(assert (= (and d!1077752 c!634452) b!3669427))

(assert (= (and d!1077752 (not c!634452)) b!3669433))

(assert (= (or b!3669427 b!3669433) bm!265616))

(assert (= (and d!1077752 (not res!1490146)) b!3669432))

(assert (= (and b!3669432 res!1490150) b!3669430))

(assert (= (and b!3669430 res!1490145) b!3669431))

(assert (= (and b!3669431 res!1490148) b!3669426))

(assert (= (and b!3669426 res!1490147) b!3669434))

(assert (= (and b!3669434 res!1490149) b!3669428))

(assert (= (and b!3669428 res!1490151) b!3669429))

(declare-fun m!4177839 () Bool)

(assert (=> b!3669432 m!4177839))

(declare-fun m!4177841 () Bool)

(assert (=> b!3669433 m!4177841))

(declare-fun m!4177843 () Bool)

(assert (=> b!3669430 m!4177843))

(declare-fun m!4177845 () Bool)

(assert (=> b!3669430 m!4177845))

(assert (=> b!3669430 m!4177845))

(declare-fun m!4177847 () Bool)

(assert (=> b!3669430 m!4177847))

(assert (=> b!3669428 m!4177843))

(assert (=> b!3669428 m!4177845))

(assert (=> b!3669428 m!4177845))

(assert (=> b!3669428 m!4177847))

(assert (=> b!3669428 m!4177847))

(declare-fun m!4177849 () Bool)

(assert (=> b!3669428 m!4177849))

(assert (=> b!3669426 m!4177843))

(assert (=> b!3669426 m!4177845))

(assert (=> b!3669426 m!4177845))

(assert (=> b!3669426 m!4177847))

(assert (=> b!3669426 m!4177847))

(declare-fun m!4177851 () Bool)

(assert (=> b!3669426 m!4177851))

(assert (=> b!3669434 m!4177843))

(declare-fun m!4177853 () Bool)

(assert (=> b!3669434 m!4177853))

(assert (=> b!3669434 m!4177853))

(declare-fun m!4177855 () Bool)

(assert (=> b!3669434 m!4177855))

(declare-fun m!4177857 () Bool)

(assert (=> bm!265616 m!4177857))

(assert (=> b!3669429 m!4177843))

(declare-fun m!4177859 () Bool)

(assert (=> b!3669429 m!4177859))

(declare-fun m!4177861 () Bool)

(assert (=> d!1077752 m!4177861))

(assert (=> d!1077752 m!4177701))

(declare-fun m!4177863 () Bool)

(assert (=> d!1077752 m!4177863))

(assert (=> d!1077752 m!4177541))

(assert (=> b!3669431 m!4177843))

(declare-fun m!4177865 () Bool)

(assert (=> b!3669431 m!4177865))

(assert (=> b!3669431 m!4177389))

(assert (=> b!3669010 d!1077752))

(declare-fun d!1077754 () Bool)

(assert (=> d!1077754 (= (list!14368 lt!1278259) (list!14371 (c!634353 lt!1278259)))))

(declare-fun bs!573109 () Bool)

(assert (= bs!573109 d!1077754))

(declare-fun m!4177867 () Bool)

(assert (=> bs!573109 m!4177867))

(assert (=> b!3669010 d!1077754))

(declare-fun d!1077756 () Bool)

(declare-fun lt!1278479 () BalanceConc!23288)

(assert (=> d!1077756 (= (list!14368 lt!1278479) (originalCharacters!6528 token!511))))

(assert (=> d!1077756 (= lt!1278479 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (value!186159 token!511)))))

(assert (=> d!1077756 (= (charsOf!3828 token!511) lt!1278479)))

(declare-fun b_lambda!108949 () Bool)

(assert (=> (not b_lambda!108949) (not d!1077756)))

(declare-fun tb!212429 () Bool)

(declare-fun t!299496 () Bool)

(assert (=> (and b!3668998 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 token!511)))) t!299496) tb!212429))

(declare-fun b!3669439 () Bool)

(declare-fun e!2272036 () Bool)

(declare-fun tp!1116666 () Bool)

(assert (=> b!3669439 (= e!2272036 (and (inv!52179 (c!634353 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (value!186159 token!511)))) tp!1116666))))

(declare-fun result!258540 () Bool)

(assert (=> tb!212429 (= result!258540 (and (inv!52180 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (value!186159 token!511))) e!2272036))))

(assert (= tb!212429 b!3669439))

(declare-fun m!4177869 () Bool)

(assert (=> b!3669439 m!4177869))

(declare-fun m!4177871 () Bool)

(assert (=> tb!212429 m!4177871))

(assert (=> d!1077756 t!299496))

(declare-fun b_and!273147 () Bool)

(assert (= b_and!273091 (and (=> t!299496 result!258540) b_and!273147)))

(declare-fun t!299498 () Bool)

(declare-fun tb!212431 () Bool)

(assert (=> (and b!3668981 (= (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toChars!7969 (transformation!5814 (rule!8636 token!511)))) t!299498) tb!212431))

(declare-fun result!258542 () Bool)

(assert (= result!258542 result!258540))

(assert (=> d!1077756 t!299498))

(declare-fun b_and!273149 () Bool)

(assert (= b_and!273093 (and (=> t!299498 result!258542) b_and!273149)))

(declare-fun t!299500 () Bool)

(declare-fun tb!212433 () Bool)

(assert (=> (and b!3669008 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 token!511)))) t!299500) tb!212433))

(declare-fun result!258544 () Bool)

(assert (= result!258544 result!258540))

(assert (=> d!1077756 t!299500))

(declare-fun b_and!273151 () Bool)

(assert (= b_and!273095 (and (=> t!299500 result!258544) b_and!273151)))

(declare-fun t!299502 () Bool)

(declare-fun tb!212435 () Bool)

(assert (=> (and b!3669002 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 token!511)))) t!299502) tb!212435))

(declare-fun result!258546 () Bool)

(assert (= result!258546 result!258540))

(assert (=> d!1077756 t!299502))

(declare-fun b_and!273153 () Bool)

(assert (= b_and!273097 (and (=> t!299502 result!258546) b_and!273153)))

(declare-fun m!4177873 () Bool)

(assert (=> d!1077756 m!4177873))

(declare-fun m!4177875 () Bool)

(assert (=> d!1077756 m!4177875))

(assert (=> b!3669010 d!1077756))

(declare-fun d!1077758 () Bool)

(declare-fun lt!1278485 () Bool)

(declare-fun content!5603 (List!38819) (InoxSet Rule!11428))

(assert (=> d!1077758 (= lt!1278485 (select (content!5603 rules!3307) rule!403))))

(declare-fun e!2272042 () Bool)

(assert (=> d!1077758 (= lt!1278485 e!2272042)))

(declare-fun res!1490162 () Bool)

(assert (=> d!1077758 (=> (not res!1490162) (not e!2272042))))

(assert (=> d!1077758 (= res!1490162 ((_ is Cons!38695) rules!3307))))

(assert (=> d!1077758 (= (contains!7695 rules!3307 rule!403) lt!1278485)))

(declare-fun b!3669446 () Bool)

(declare-fun e!2272043 () Bool)

(assert (=> b!3669446 (= e!2272042 e!2272043)))

(declare-fun res!1490163 () Bool)

(assert (=> b!3669446 (=> res!1490163 e!2272043)))

(assert (=> b!3669446 (= res!1490163 (= (h!44115 rules!3307) rule!403))))

(declare-fun b!3669447 () Bool)

(assert (=> b!3669447 (= e!2272043 (contains!7695 (t!299454 rules!3307) rule!403))))

(assert (= (and d!1077758 res!1490162) b!3669446))

(assert (= (and b!3669446 (not res!1490163)) b!3669447))

(declare-fun m!4177885 () Bool)

(assert (=> d!1077758 m!4177885))

(declare-fun m!4177887 () Bool)

(assert (=> d!1077758 m!4177887))

(declare-fun m!4177889 () Bool)

(assert (=> b!3669447 m!4177889))

(assert (=> b!3668963 d!1077758))

(declare-fun b!3669458 () Bool)

(declare-fun e!2272050 () Int)

(assert (=> b!3669458 (= e!2272050 (+ 1 (getIndex!482 (t!299454 rules!3307) rule!403)))))

(declare-fun b!3669456 () Bool)

(declare-fun e!2272049 () Int)

(assert (=> b!3669456 (= e!2272049 0)))

(declare-fun d!1077762 () Bool)

(declare-fun lt!1278488 () Int)

(assert (=> d!1077762 (>= lt!1278488 0)))

(assert (=> d!1077762 (= lt!1278488 e!2272049)))

(declare-fun c!634457 () Bool)

(assert (=> d!1077762 (= c!634457 (and ((_ is Cons!38695) rules!3307) (= (h!44115 rules!3307) rule!403)))))

(assert (=> d!1077762 (contains!7695 rules!3307 rule!403)))

(assert (=> d!1077762 (= (getIndex!482 rules!3307 rule!403) lt!1278488)))

(declare-fun b!3669457 () Bool)

(assert (=> b!3669457 (= e!2272049 e!2272050)))

(declare-fun c!634458 () Bool)

(assert (=> b!3669457 (= c!634458 (and ((_ is Cons!38695) rules!3307) (not (= (h!44115 rules!3307) rule!403))))))

(declare-fun b!3669459 () Bool)

(assert (=> b!3669459 (= e!2272050 (- 1))))

(assert (= (and d!1077762 c!634457) b!3669456))

(assert (= (and d!1077762 (not c!634457)) b!3669457))

(assert (= (and b!3669457 c!634458) b!3669458))

(assert (= (and b!3669457 (not c!634458)) b!3669459))

(declare-fun m!4177891 () Bool)

(assert (=> b!3669458 m!4177891))

(assert (=> d!1077762 m!4177247))

(assert (=> b!3669001 d!1077762))

(declare-fun b!3669462 () Bool)

(declare-fun e!2272052 () Int)

(assert (=> b!3669462 (= e!2272052 (+ 1 (getIndex!482 (t!299454 rules!3307) (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669460 () Bool)

(declare-fun e!2272051 () Int)

(assert (=> b!3669460 (= e!2272051 0)))

(declare-fun d!1077764 () Bool)

(declare-fun lt!1278489 () Int)

(assert (=> d!1077764 (>= lt!1278489 0)))

(assert (=> d!1077764 (= lt!1278489 e!2272051)))

(declare-fun c!634459 () Bool)

(assert (=> d!1077764 (= c!634459 (and ((_ is Cons!38695) rules!3307) (= (h!44115 rules!3307) (rule!8636 (_1!22416 lt!1278279)))))))

(assert (=> d!1077764 (contains!7695 rules!3307 (rule!8636 (_1!22416 lt!1278279)))))

(assert (=> d!1077764 (= (getIndex!482 rules!3307 (rule!8636 (_1!22416 lt!1278279))) lt!1278489)))

(declare-fun b!3669461 () Bool)

(assert (=> b!3669461 (= e!2272051 e!2272052)))

(declare-fun c!634460 () Bool)

(assert (=> b!3669461 (= c!634460 (and ((_ is Cons!38695) rules!3307) (not (= (h!44115 rules!3307) (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun b!3669463 () Bool)

(assert (=> b!3669463 (= e!2272052 (- 1))))

(assert (= (and d!1077764 c!634459) b!3669460))

(assert (= (and d!1077764 (not c!634459)) b!3669461))

(assert (= (and b!3669461 c!634460) b!3669462))

(assert (= (and b!3669461 (not c!634460)) b!3669463))

(declare-fun m!4177893 () Bool)

(assert (=> b!3669462 m!4177893))

(assert (=> d!1077764 m!4177297))

(assert (=> b!3669001 d!1077764))

(declare-fun d!1077766 () Bool)

(assert (=> d!1077766 (= (isEmpty!22962 lt!1278296) ((_ is Nil!38694) lt!1278296))))

(assert (=> b!3668984 d!1077766))

(declare-fun d!1077768 () Bool)

(assert (=> d!1077768 (not (matchR!5142 (regex!5814 rule!403) lt!1278296))))

(declare-fun lt!1278492 () Unit!56207)

(declare-fun choose!21808 (Regex!10573 List!38818 C!21332) Unit!56207)

(assert (=> d!1077768 (= lt!1278492 (choose!21808 (regex!5814 rule!403) lt!1278296 lt!1278270))))

(assert (=> d!1077768 (validRegex!4843 (regex!5814 rule!403))))

(assert (=> d!1077768 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 rule!403) lt!1278296 lt!1278270) lt!1278492)))

(declare-fun bs!573110 () Bool)

(assert (= bs!573110 d!1077768))

(assert (=> bs!573110 m!4177367))

(declare-fun m!4177895 () Bool)

(assert (=> bs!573110 m!4177895))

(declare-fun m!4177897 () Bool)

(assert (=> bs!573110 m!4177897))

(assert (=> b!3668964 d!1077768))

(declare-fun d!1077770 () Bool)

(declare-fun lt!1278493 () Bool)

(assert (=> d!1077770 (= lt!1278493 (select (content!5603 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2272053 () Bool)

(assert (=> d!1077770 (= lt!1278493 e!2272053)))

(declare-fun res!1490164 () Bool)

(assert (=> d!1077770 (=> (not res!1490164) (not e!2272053))))

(assert (=> d!1077770 (= res!1490164 ((_ is Cons!38695) rules!3307))))

(assert (=> d!1077770 (= (contains!7695 rules!3307 anOtherTypeRule!33) lt!1278493)))

(declare-fun b!3669464 () Bool)

(declare-fun e!2272054 () Bool)

(assert (=> b!3669464 (= e!2272053 e!2272054)))

(declare-fun res!1490165 () Bool)

(assert (=> b!3669464 (=> res!1490165 e!2272054)))

(assert (=> b!3669464 (= res!1490165 (= (h!44115 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3669465 () Bool)

(assert (=> b!3669465 (= e!2272054 (contains!7695 (t!299454 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1077770 res!1490164) b!3669464))

(assert (= (and b!3669464 (not res!1490165)) b!3669465))

(assert (=> d!1077770 m!4177885))

(declare-fun m!4177899 () Bool)

(assert (=> d!1077770 m!4177899))

(declare-fun m!4177901 () Bool)

(assert (=> b!3669465 m!4177901))

(assert (=> b!3668985 d!1077770))

(declare-fun b!3669466 () Bool)

(declare-fun e!2272058 () Bool)

(assert (=> b!3669466 (= e!2272058 (matchR!5142 (derivativeStep!3230 (regex!5814 lt!1278249) (head!7852 (list!14368 (charsOf!3828 (_1!22416 lt!1278279))))) (tail!5679 (list!14368 (charsOf!3828 (_1!22416 lt!1278279))))))))

(declare-fun b!3669467 () Bool)

(assert (=> b!3669467 (= e!2272058 (nullable!3681 (regex!5814 lt!1278249)))))

(declare-fun b!3669468 () Bool)

(declare-fun res!1490171 () Bool)

(declare-fun e!2272056 () Bool)

(assert (=> b!3669468 (=> res!1490171 e!2272056)))

(assert (=> b!3669468 (= res!1490171 (not (isEmpty!22962 (tail!5679 (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))))))))

(declare-fun bm!265617 () Bool)

(declare-fun call!265622 () Bool)

(assert (=> bm!265617 (= call!265622 (isEmpty!22962 (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))))))

(declare-fun b!3669470 () Bool)

(assert (=> b!3669470 (= e!2272056 (not (= (head!7852 (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))) (c!634352 (regex!5814 lt!1278249)))))))

(declare-fun b!3669471 () Bool)

(declare-fun res!1490168 () Bool)

(declare-fun e!2272061 () Bool)

(assert (=> b!3669471 (=> res!1490168 e!2272061)))

(assert (=> b!3669471 (= res!1490168 (not ((_ is ElementMatch!10573) (regex!5814 lt!1278249))))))

(declare-fun e!2272055 () Bool)

(assert (=> b!3669471 (= e!2272055 e!2272061)))

(declare-fun b!3669472 () Bool)

(declare-fun lt!1278494 () Bool)

(assert (=> b!3669472 (= e!2272055 (not lt!1278494))))

(declare-fun b!3669473 () Bool)

(declare-fun res!1490173 () Bool)

(declare-fun e!2272057 () Bool)

(assert (=> b!3669473 (=> (not res!1490173) (not e!2272057))))

(assert (=> b!3669473 (= res!1490173 (isEmpty!22962 (tail!5679 (list!14368 (charsOf!3828 (_1!22416 lt!1278279))))))))

(declare-fun b!3669474 () Bool)

(declare-fun res!1490169 () Bool)

(assert (=> b!3669474 (=> res!1490169 e!2272061)))

(assert (=> b!3669474 (= res!1490169 e!2272057)))

(declare-fun res!1490167 () Bool)

(assert (=> b!3669474 (=> (not res!1490167) (not e!2272057))))

(assert (=> b!3669474 (= res!1490167 lt!1278494)))

(declare-fun b!3669475 () Bool)

(declare-fun e!2272060 () Bool)

(assert (=> b!3669475 (= e!2272060 (= lt!1278494 call!265622))))

(declare-fun b!3669476 () Bool)

(declare-fun e!2272059 () Bool)

(assert (=> b!3669476 (= e!2272059 e!2272056)))

(declare-fun res!1490166 () Bool)

(assert (=> b!3669476 (=> res!1490166 e!2272056)))

(assert (=> b!3669476 (= res!1490166 call!265622)))

(declare-fun b!3669477 () Bool)

(declare-fun res!1490172 () Bool)

(assert (=> b!3669477 (=> (not res!1490172) (not e!2272057))))

(assert (=> b!3669477 (= res!1490172 (not call!265622))))

(declare-fun b!3669469 () Bool)

(assert (=> b!3669469 (= e!2272057 (= (head!7852 (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))) (c!634352 (regex!5814 lt!1278249))))))

(declare-fun d!1077772 () Bool)

(assert (=> d!1077772 e!2272060))

(declare-fun c!634463 () Bool)

(assert (=> d!1077772 (= c!634463 ((_ is EmptyExpr!10573) (regex!5814 lt!1278249)))))

(assert (=> d!1077772 (= lt!1278494 e!2272058)))

(declare-fun c!634462 () Bool)

(assert (=> d!1077772 (= c!634462 (isEmpty!22962 (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))))))

(assert (=> d!1077772 (validRegex!4843 (regex!5814 lt!1278249))))

(assert (=> d!1077772 (= (matchR!5142 (regex!5814 lt!1278249) (list!14368 (charsOf!3828 (_1!22416 lt!1278279)))) lt!1278494)))

(declare-fun b!3669478 () Bool)

(assert (=> b!3669478 (= e!2272061 e!2272059)))

(declare-fun res!1490170 () Bool)

(assert (=> b!3669478 (=> (not res!1490170) (not e!2272059))))

(assert (=> b!3669478 (= res!1490170 (not lt!1278494))))

(declare-fun b!3669479 () Bool)

(assert (=> b!3669479 (= e!2272060 e!2272055)))

(declare-fun c!634464 () Bool)

(assert (=> b!3669479 (= c!634464 ((_ is EmptyLang!10573) (regex!5814 lt!1278249)))))

(assert (= (and d!1077772 c!634462) b!3669467))

(assert (= (and d!1077772 (not c!634462)) b!3669466))

(assert (= (and d!1077772 c!634463) b!3669475))

(assert (= (and d!1077772 (not c!634463)) b!3669479))

(assert (= (and b!3669479 c!634464) b!3669472))

(assert (= (and b!3669479 (not c!634464)) b!3669471))

(assert (= (and b!3669471 (not res!1490168)) b!3669474))

(assert (= (and b!3669474 res!1490167) b!3669477))

(assert (= (and b!3669477 res!1490172) b!3669473))

(assert (= (and b!3669473 res!1490173) b!3669469))

(assert (= (and b!3669474 (not res!1490169)) b!3669478))

(assert (= (and b!3669478 res!1490170) b!3669476))

(assert (= (and b!3669476 (not res!1490166)) b!3669468))

(assert (= (and b!3669468 (not res!1490171)) b!3669470))

(assert (= (or b!3669475 b!3669476 b!3669477) bm!265617))

(assert (=> d!1077772 m!4177377))

(declare-fun m!4177903 () Bool)

(assert (=> d!1077772 m!4177903))

(declare-fun m!4177905 () Bool)

(assert (=> d!1077772 m!4177905))

(declare-fun m!4177907 () Bool)

(assert (=> b!3669467 m!4177907))

(assert (=> b!3669473 m!4177377))

(declare-fun m!4177909 () Bool)

(assert (=> b!3669473 m!4177909))

(assert (=> b!3669473 m!4177909))

(declare-fun m!4177911 () Bool)

(assert (=> b!3669473 m!4177911))

(assert (=> b!3669469 m!4177377))

(declare-fun m!4177913 () Bool)

(assert (=> b!3669469 m!4177913))

(assert (=> bm!265617 m!4177377))

(assert (=> bm!265617 m!4177903))

(assert (=> b!3669466 m!4177377))

(assert (=> b!3669466 m!4177913))

(assert (=> b!3669466 m!4177913))

(declare-fun m!4177915 () Bool)

(assert (=> b!3669466 m!4177915))

(assert (=> b!3669466 m!4177377))

(assert (=> b!3669466 m!4177909))

(assert (=> b!3669466 m!4177915))

(assert (=> b!3669466 m!4177909))

(declare-fun m!4177917 () Bool)

(assert (=> b!3669466 m!4177917))

(assert (=> b!3669470 m!4177377))

(assert (=> b!3669470 m!4177913))

(assert (=> b!3669468 m!4177377))

(assert (=> b!3669468 m!4177909))

(assert (=> b!3669468 m!4177909))

(assert (=> b!3669468 m!4177911))

(assert (=> b!3668965 d!1077772))

(declare-fun d!1077774 () Bool)

(assert (=> d!1077774 (= (list!14368 (charsOf!3828 (_1!22416 lt!1278279))) (list!14371 (c!634353 (charsOf!3828 (_1!22416 lt!1278279)))))))

(declare-fun bs!573111 () Bool)

(assert (= bs!573111 d!1077774))

(declare-fun m!4177919 () Bool)

(assert (=> bs!573111 m!4177919))

(assert (=> b!3668965 d!1077774))

(assert (=> b!3668965 d!1077630))

(declare-fun d!1077776 () Bool)

(assert (=> d!1077776 (= (get!12773 lt!1278276) (v!38164 lt!1278276))))

(assert (=> b!3668965 d!1077776))

(declare-fun d!1077778 () Bool)

(assert (=> d!1077778 (not (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291))))

(declare-fun lt!1278495 () Unit!56207)

(assert (=> d!1077778 (= lt!1278495 (choose!21808 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278274))))

(assert (=> d!1077778 (validRegex!4843 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077778 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278274) lt!1278495)))

(declare-fun bs!573112 () Bool)

(assert (= bs!573112 d!1077778))

(assert (=> bs!573112 m!4177295))

(declare-fun m!4177921 () Bool)

(assert (=> bs!573112 m!4177921))

(assert (=> bs!573112 m!4177723))

(assert (=> bm!265571 d!1077778))

(declare-fun d!1077780 () Bool)

(assert (=> d!1077780 (= (inv!52172 (tag!6602 (h!44115 rules!3307))) (= (mod (str.len (value!186158 (tag!6602 (h!44115 rules!3307)))) 2) 0))))

(assert (=> b!3668966 d!1077780))

(declare-fun d!1077782 () Bool)

(declare-fun res!1490174 () Bool)

(declare-fun e!2272062 () Bool)

(assert (=> d!1077782 (=> (not res!1490174) (not e!2272062))))

(assert (=> d!1077782 (= res!1490174 (semiInverseModEq!2481 (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (h!44115 rules!3307)))))))

(assert (=> d!1077782 (= (inv!52175 (transformation!5814 (h!44115 rules!3307))) e!2272062)))

(declare-fun b!3669480 () Bool)

(assert (=> b!3669480 (= e!2272062 (equivClasses!2380 (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (h!44115 rules!3307)))))))

(assert (= (and d!1077782 res!1490174) b!3669480))

(declare-fun m!4177923 () Bool)

(assert (=> d!1077782 m!4177923))

(declare-fun m!4177925 () Bool)

(assert (=> b!3669480 m!4177925))

(assert (=> b!3668966 d!1077782))

(declare-fun b!3669481 () Bool)

(declare-fun e!2272064 () List!38818)

(assert (=> b!3669481 (= e!2272064 (Cons!38694 (c!634352 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) Nil!38694))))

(declare-fun b!3669482 () Bool)

(declare-fun e!2272063 () List!38818)

(declare-fun call!265625 () List!38818)

(assert (=> b!3669482 (= e!2272063 call!265625)))

(declare-fun bm!265618 () Bool)

(declare-fun call!265626 () List!38818)

(declare-fun call!265624 () List!38818)

(assert (=> bm!265618 (= call!265626 call!265624)))

(declare-fun bm!265619 () Bool)

(declare-fun call!265623 () List!38818)

(declare-fun c!634465 () Bool)

(assert (=> bm!265619 (= call!265625 (++!9630 (ite c!634465 call!265623 call!265626) (ite c!634465 call!265626 call!265623)))))

(declare-fun d!1077784 () Bool)

(declare-fun c!634467 () Bool)

(assert (=> d!1077784 (= c!634467 (or ((_ is EmptyExpr!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) ((_ is EmptyLang!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))

(declare-fun e!2272066 () List!38818)

(assert (=> d!1077784 (= (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) e!2272066)))

(declare-fun b!3669483 () Bool)

(declare-fun e!2272065 () List!38818)

(assert (=> b!3669483 (= e!2272065 call!265624)))

(declare-fun b!3669484 () Bool)

(declare-fun c!634468 () Bool)

(assert (=> b!3669484 (= c!634468 ((_ is Star!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (=> b!3669484 (= e!2272064 e!2272065)))

(declare-fun b!3669485 () Bool)

(assert (=> b!3669485 (= e!2272066 Nil!38694)))

(declare-fun bm!265620 () Bool)

(assert (=> bm!265620 (= call!265624 (usedCharacters!1026 (ite c!634468 (reg!10902 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) (ite c!634465 (regTwo!21659 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) (regOne!21658 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))))))

(declare-fun bm!265621 () Bool)

(assert (=> bm!265621 (= call!265623 (usedCharacters!1026 (ite c!634465 (regOne!21659 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) (regTwo!21658 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))))

(declare-fun b!3669486 () Bool)

(assert (=> b!3669486 (= e!2272065 e!2272063)))

(assert (=> b!3669486 (= c!634465 ((_ is Union!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(declare-fun b!3669487 () Bool)

(assert (=> b!3669487 (= e!2272063 call!265625)))

(declare-fun b!3669488 () Bool)

(assert (=> b!3669488 (= e!2272066 e!2272064)))

(declare-fun c!634466 () Bool)

(assert (=> b!3669488 (= c!634466 ((_ is ElementMatch!10573) (regex!5814 (rule!8636 (_1!22416 lt!1278279)))))))

(assert (= (and d!1077784 c!634467) b!3669485))

(assert (= (and d!1077784 (not c!634467)) b!3669488))

(assert (= (and b!3669488 c!634466) b!3669481))

(assert (= (and b!3669488 (not c!634466)) b!3669484))

(assert (= (and b!3669484 c!634468) b!3669483))

(assert (= (and b!3669484 (not c!634468)) b!3669486))

(assert (= (and b!3669486 c!634465) b!3669482))

(assert (= (and b!3669486 (not c!634465)) b!3669487))

(assert (= (or b!3669482 b!3669487) bm!265621))

(assert (= (or b!3669482 b!3669487) bm!265618))

(assert (= (or b!3669482 b!3669487) bm!265619))

(assert (= (or b!3669483 bm!265618) bm!265620))

(declare-fun m!4177927 () Bool)

(assert (=> bm!265619 m!4177927))

(declare-fun m!4177929 () Bool)

(assert (=> bm!265620 m!4177929))

(declare-fun m!4177931 () Bool)

(assert (=> bm!265621 m!4177931))

(assert (=> bm!265575 d!1077784))

(declare-fun d!1077786 () Bool)

(declare-fun lt!1278496 () Bool)

(assert (=> d!1077786 (= lt!1278496 (select (content!5602 call!265579) lt!1278270))))

(declare-fun e!2272067 () Bool)

(assert (=> d!1077786 (= lt!1278496 e!2272067)))

(declare-fun res!1490175 () Bool)

(assert (=> d!1077786 (=> (not res!1490175) (not e!2272067))))

(assert (=> d!1077786 (= res!1490175 ((_ is Cons!38694) call!265579))))

(assert (=> d!1077786 (= (contains!7696 call!265579 lt!1278270) lt!1278496)))

(declare-fun b!3669489 () Bool)

(declare-fun e!2272068 () Bool)

(assert (=> b!3669489 (= e!2272067 e!2272068)))

(declare-fun res!1490176 () Bool)

(assert (=> b!3669489 (=> res!1490176 e!2272068)))

(assert (=> b!3669489 (= res!1490176 (= (h!44114 call!265579) lt!1278270))))

(declare-fun b!3669490 () Bool)

(assert (=> b!3669490 (= e!2272068 (contains!7696 (t!299453 call!265579) lt!1278270))))

(assert (= (and d!1077786 res!1490175) b!3669489))

(assert (= (and b!3669489 (not res!1490176)) b!3669490))

(declare-fun m!4177933 () Bool)

(assert (=> d!1077786 m!4177933))

(declare-fun m!4177935 () Bool)

(assert (=> d!1077786 m!4177935))

(declare-fun m!4177937 () Bool)

(assert (=> b!3669490 m!4177937))

(assert (=> bm!265572 d!1077786))

(declare-fun d!1077788 () Bool)

(assert (=> d!1077788 (= (_2!22416 lt!1278279) lt!1278282)))

(declare-fun lt!1278499 () Unit!56207)

(declare-fun choose!21810 (List!38818 List!38818 List!38818 List!38818 List!38818) Unit!56207)

(assert (=> d!1077788 (= lt!1278499 (choose!21810 lt!1278291 (_2!22416 lt!1278279) lt!1278291 lt!1278282 lt!1278285))))

(assert (=> d!1077788 (isPrefix!3177 lt!1278291 lt!1278285)))

(assert (=> d!1077788 (= (lemmaSamePrefixThenSameSuffix!1504 lt!1278291 (_2!22416 lt!1278279) lt!1278291 lt!1278282 lt!1278285) lt!1278499)))

(declare-fun bs!573113 () Bool)

(assert (= bs!573113 d!1077788))

(declare-fun m!4177939 () Bool)

(assert (=> bs!573113 m!4177939))

(assert (=> bs!573113 m!4177325))

(assert (=> b!3668967 d!1077788))

(declare-fun d!1077790 () Bool)

(declare-fun lt!1278500 () List!38818)

(assert (=> d!1077790 (= (++!9630 lt!1278291 lt!1278500) lt!1278285)))

(declare-fun e!2272069 () List!38818)

(assert (=> d!1077790 (= lt!1278500 e!2272069)))

(declare-fun c!634469 () Bool)

(assert (=> d!1077790 (= c!634469 ((_ is Cons!38694) lt!1278291))))

(assert (=> d!1077790 (>= (size!29573 lt!1278285) (size!29573 lt!1278291))))

(assert (=> d!1077790 (= (getSuffix!1730 lt!1278285 lt!1278291) lt!1278500)))

(declare-fun b!3669491 () Bool)

(assert (=> b!3669491 (= e!2272069 (getSuffix!1730 (tail!5679 lt!1278285) (t!299453 lt!1278291)))))

(declare-fun b!3669492 () Bool)

(assert (=> b!3669492 (= e!2272069 lt!1278285)))

(assert (= (and d!1077790 c!634469) b!3669491))

(assert (= (and d!1077790 (not c!634469)) b!3669492))

(declare-fun m!4177941 () Bool)

(assert (=> d!1077790 m!4177941))

(assert (=> d!1077790 m!4177497))

(assert (=> d!1077790 m!4177353))

(assert (=> b!3669491 m!4177501))

(assert (=> b!3669491 m!4177501))

(declare-fun m!4177943 () Bool)

(assert (=> b!3669491 m!4177943))

(assert (=> b!3668967 d!1077790))

(declare-fun b!3669511 () Bool)

(declare-fun res!1490196 () Bool)

(declare-fun e!2272080 () Bool)

(assert (=> b!3669511 (=> (not res!1490196) (not e!2272080))))

(declare-fun lt!1278513 () Option!8256)

(assert (=> b!3669511 (= res!1490196 (= (value!186159 (_1!22416 (get!12774 lt!1278513))) (apply!9316 (transformation!5814 (rule!8636 (_1!22416 (get!12774 lt!1278513)))) (seqFromList!4363 (originalCharacters!6528 (_1!22416 (get!12774 lt!1278513)))))))))

(declare-fun b!3669512 () Bool)

(declare-fun res!1490193 () Bool)

(assert (=> b!3669512 (=> (not res!1490193) (not e!2272080))))

(assert (=> b!3669512 (= res!1490193 (= (rule!8636 (_1!22416 (get!12774 lt!1278513))) (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun b!3669514 () Bool)

(declare-fun e!2272079 () Bool)

(assert (=> b!3669514 (= e!2272079 e!2272080)))

(declare-fun res!1490191 () Bool)

(assert (=> b!3669514 (=> (not res!1490191) (not e!2272080))))

(assert (=> b!3669514 (= res!1490191 (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278513))))))))

(declare-fun b!3669515 () Bool)

(declare-fun e!2272081 () Option!8256)

(assert (=> b!3669515 (= e!2272081 None!8255)))

(declare-fun b!3669516 () Bool)

(declare-fun res!1490194 () Bool)

(assert (=> b!3669516 (=> (not res!1490194) (not e!2272080))))

(assert (=> b!3669516 (= res!1490194 (< (size!29573 (_2!22416 (get!12774 lt!1278513))) (size!29573 lt!1278285)))))

(declare-fun b!3669517 () Bool)

(declare-datatypes ((tuple2!38572 0))(
  ( (tuple2!38573 (_1!22420 List!38818) (_2!22420 List!38818)) )
))
(declare-fun lt!1278515 () tuple2!38572)

(assert (=> b!3669517 (= e!2272081 (Some!8255 (tuple2!38565 (Token!10995 (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) (seqFromList!4363 (_1!22420 lt!1278515))) (rule!8636 (_1!22416 lt!1278279)) (size!29572 (seqFromList!4363 (_1!22420 lt!1278515))) (_1!22420 lt!1278515)) (_2!22420 lt!1278515))))))

(declare-fun lt!1278514 () Unit!56207)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1050 (Regex!10573 List!38818) Unit!56207)

(assert (=> b!3669517 (= lt!1278514 (longestMatchIsAcceptedByMatchOrIsEmpty!1050 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278285))))

(declare-fun res!1490197 () Bool)

(declare-fun findLongestMatchInner!1077 (Regex!10573 List!38818 Int List!38818 List!38818 Int) tuple2!38572)

(assert (=> b!3669517 (= res!1490197 (isEmpty!22962 (_1!22420 (findLongestMatchInner!1077 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) Nil!38694 (size!29573 Nil!38694) lt!1278285 lt!1278285 (size!29573 lt!1278285)))))))

(declare-fun e!2272078 () Bool)

(assert (=> b!3669517 (=> res!1490197 e!2272078)))

(assert (=> b!3669517 e!2272078))

(declare-fun lt!1278511 () Unit!56207)

(assert (=> b!3669517 (= lt!1278511 lt!1278514)))

(declare-fun lt!1278512 () Unit!56207)

(assert (=> b!3669517 (= lt!1278512 (lemmaSemiInverse!1563 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) (seqFromList!4363 (_1!22420 lt!1278515))))))

(declare-fun b!3669518 () Bool)

(assert (=> b!3669518 (= e!2272078 (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) (_1!22420 (findLongestMatchInner!1077 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) Nil!38694 (size!29573 Nil!38694) lt!1278285 lt!1278285 (size!29573 lt!1278285)))))))

(declare-fun b!3669519 () Bool)

(declare-fun res!1490192 () Bool)

(assert (=> b!3669519 (=> (not res!1490192) (not e!2272080))))

(assert (=> b!3669519 (= res!1490192 (= (++!9630 (list!14368 (charsOf!3828 (_1!22416 (get!12774 lt!1278513)))) (_2!22416 (get!12774 lt!1278513))) lt!1278285))))

(declare-fun b!3669513 () Bool)

(assert (=> b!3669513 (= e!2272080 (= (size!29571 (_1!22416 (get!12774 lt!1278513))) (size!29573 (originalCharacters!6528 (_1!22416 (get!12774 lt!1278513))))))))

(declare-fun d!1077792 () Bool)

(assert (=> d!1077792 e!2272079))

(declare-fun res!1490195 () Bool)

(assert (=> d!1077792 (=> res!1490195 e!2272079)))

(assert (=> d!1077792 (= res!1490195 (isEmpty!22965 lt!1278513))))

(assert (=> d!1077792 (= lt!1278513 e!2272081)))

(declare-fun c!634472 () Bool)

(assert (=> d!1077792 (= c!634472 (isEmpty!22962 (_1!22420 lt!1278515)))))

(declare-fun findLongestMatch!992 (Regex!10573 List!38818) tuple2!38572)

(assert (=> d!1077792 (= lt!1278515 (findLongestMatch!992 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278285))))

(assert (=> d!1077792 (ruleValid!2078 thiss!23823 (rule!8636 (_1!22416 lt!1278279)))))

(assert (=> d!1077792 (= (maxPrefixOneRule!2075 thiss!23823 (rule!8636 (_1!22416 lt!1278279)) lt!1278285) lt!1278513)))

(assert (= (and d!1077792 c!634472) b!3669515))

(assert (= (and d!1077792 (not c!634472)) b!3669517))

(assert (= (and b!3669517 (not res!1490197)) b!3669518))

(assert (= (and d!1077792 (not res!1490195)) b!3669514))

(assert (= (and b!3669514 res!1490191) b!3669519))

(assert (= (and b!3669519 res!1490192) b!3669516))

(assert (= (and b!3669516 res!1490194) b!3669512))

(assert (= (and b!3669512 res!1490193) b!3669511))

(assert (= (and b!3669511 res!1490196) b!3669513))

(declare-fun m!4177945 () Bool)

(assert (=> b!3669518 m!4177945))

(assert (=> b!3669518 m!4177497))

(assert (=> b!3669518 m!4177945))

(assert (=> b!3669518 m!4177497))

(declare-fun m!4177947 () Bool)

(assert (=> b!3669518 m!4177947))

(declare-fun m!4177949 () Bool)

(assert (=> b!3669518 m!4177949))

(declare-fun m!4177951 () Bool)

(assert (=> b!3669516 m!4177951))

(declare-fun m!4177953 () Bool)

(assert (=> b!3669516 m!4177953))

(assert (=> b!3669516 m!4177497))

(assert (=> b!3669513 m!4177951))

(declare-fun m!4177955 () Bool)

(assert (=> b!3669513 m!4177955))

(assert (=> b!3669519 m!4177951))

(declare-fun m!4177957 () Bool)

(assert (=> b!3669519 m!4177957))

(assert (=> b!3669519 m!4177957))

(declare-fun m!4177959 () Bool)

(assert (=> b!3669519 m!4177959))

(assert (=> b!3669519 m!4177959))

(declare-fun m!4177961 () Bool)

(assert (=> b!3669519 m!4177961))

(assert (=> b!3669514 m!4177951))

(assert (=> b!3669514 m!4177957))

(assert (=> b!3669514 m!4177957))

(assert (=> b!3669514 m!4177959))

(assert (=> b!3669514 m!4177959))

(declare-fun m!4177963 () Bool)

(assert (=> b!3669514 m!4177963))

(declare-fun m!4177965 () Bool)

(assert (=> b!3669517 m!4177965))

(declare-fun m!4177967 () Bool)

(assert (=> b!3669517 m!4177967))

(assert (=> b!3669517 m!4177965))

(declare-fun m!4177969 () Bool)

(assert (=> b!3669517 m!4177969))

(assert (=> b!3669517 m!4177965))

(declare-fun m!4177971 () Bool)

(assert (=> b!3669517 m!4177971))

(assert (=> b!3669517 m!4177497))

(declare-fun m!4177973 () Bool)

(assert (=> b!3669517 m!4177973))

(declare-fun m!4177975 () Bool)

(assert (=> b!3669517 m!4177975))

(assert (=> b!3669517 m!4177945))

(assert (=> b!3669517 m!4177965))

(assert (=> b!3669517 m!4177945))

(assert (=> b!3669517 m!4177497))

(assert (=> b!3669517 m!4177947))

(declare-fun m!4177977 () Bool)

(assert (=> d!1077792 m!4177977))

(declare-fun m!4177979 () Bool)

(assert (=> d!1077792 m!4177979))

(declare-fun m!4177981 () Bool)

(assert (=> d!1077792 m!4177981))

(declare-fun m!4177983 () Bool)

(assert (=> d!1077792 m!4177983))

(assert (=> b!3669512 m!4177951))

(assert (=> b!3669511 m!4177951))

(declare-fun m!4177985 () Bool)

(assert (=> b!3669511 m!4177985))

(assert (=> b!3669511 m!4177985))

(declare-fun m!4177987 () Bool)

(assert (=> b!3669511 m!4177987))

(assert (=> b!3668967 d!1077792))

(declare-fun d!1077794 () Bool)

(declare-fun fromListB!2017 (List!38818) BalanceConc!23288)

(assert (=> d!1077794 (= (seqFromList!4363 lt!1278291) (fromListB!2017 lt!1278291))))

(declare-fun bs!573114 () Bool)

(assert (= bs!573114 d!1077794))

(declare-fun m!4177989 () Bool)

(assert (=> bs!573114 m!4177989))

(assert (=> b!3668967 d!1077794))

(declare-fun d!1077796 () Bool)

(declare-fun dynLambda!16937 (Int BalanceConc!23288) TokenValue!6044)

(assert (=> d!1077796 (= (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) (seqFromList!4363 lt!1278291)) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (seqFromList!4363 lt!1278291)))))

(declare-fun b_lambda!108951 () Bool)

(assert (=> (not b_lambda!108951) (not d!1077796)))

(declare-fun t!299504 () Bool)

(declare-fun tb!212437 () Bool)

(assert (=> (and b!3668998 (= (toValue!8110 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299504) tb!212437))

(declare-fun result!258548 () Bool)

(assert (=> tb!212437 (= result!258548 (inv!21 (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (seqFromList!4363 lt!1278291))))))

(declare-fun m!4177991 () Bool)

(assert (=> tb!212437 m!4177991))

(assert (=> d!1077796 t!299504))

(declare-fun b_and!273155 () Bool)

(assert (= b_and!273075 (and (=> t!299504 result!258548) b_and!273155)))

(declare-fun t!299506 () Bool)

(declare-fun tb!212439 () Bool)

(assert (=> (and b!3668981 (= (toValue!8110 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299506) tb!212439))

(declare-fun result!258552 () Bool)

(assert (= result!258552 result!258548))

(assert (=> d!1077796 t!299506))

(declare-fun b_and!273157 () Bool)

(assert (= b_and!273079 (and (=> t!299506 result!258552) b_and!273157)))

(declare-fun t!299508 () Bool)

(declare-fun tb!212441 () Bool)

(assert (=> (and b!3669008 (= (toValue!8110 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299508) tb!212441))

(declare-fun result!258554 () Bool)

(assert (= result!258554 result!258548))

(assert (=> d!1077796 t!299508))

(declare-fun b_and!273159 () Bool)

(assert (= b_and!273083 (and (=> t!299508 result!258554) b_and!273159)))

(declare-fun t!299510 () Bool)

(declare-fun tb!212443 () Bool)

(assert (=> (and b!3669002 (= (toValue!8110 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299510) tb!212443))

(declare-fun result!258556 () Bool)

(assert (= result!258556 result!258548))

(assert (=> d!1077796 t!299510))

(declare-fun b_and!273161 () Bool)

(assert (= b_and!273087 (and (=> t!299510 result!258556) b_and!273161)))

(assert (=> d!1077796 m!4177349))

(declare-fun m!4177993 () Bool)

(assert (=> d!1077796 m!4177993))

(assert (=> b!3668967 d!1077796))

(declare-fun d!1077798 () Bool)

(declare-fun lt!1278518 () Int)

(assert (=> d!1077798 (>= lt!1278518 0)))

(declare-fun e!2272087 () Int)

(assert (=> d!1077798 (= lt!1278518 e!2272087)))

(declare-fun c!634475 () Bool)

(assert (=> d!1077798 (= c!634475 ((_ is Nil!38694) lt!1278291))))

(assert (=> d!1077798 (= (size!29573 lt!1278291) lt!1278518)))

(declare-fun b!3669526 () Bool)

(assert (=> b!3669526 (= e!2272087 0)))

(declare-fun b!3669527 () Bool)

(assert (=> b!3669527 (= e!2272087 (+ 1 (size!29573 (t!299453 lt!1278291))))))

(assert (= (and d!1077798 c!634475) b!3669526))

(assert (= (and d!1077798 (not c!634475)) b!3669527))

(declare-fun m!4177995 () Bool)

(assert (=> b!3669527 m!4177995))

(assert (=> b!3668967 d!1077798))

(declare-fun d!1077800 () Bool)

(assert (=> d!1077800 (= (maxPrefixOneRule!2075 thiss!23823 (rule!8636 (_1!22416 lt!1278279)) lt!1278285) (Some!8255 (tuple2!38565 (Token!10995 (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) (seqFromList!4363 lt!1278291)) (rule!8636 (_1!22416 lt!1278279)) (size!29573 lt!1278291) lt!1278291) (_2!22416 lt!1278279))))))

(declare-fun lt!1278521 () Unit!56207)

(declare-fun choose!21813 (LexerInterface!5403 List!38819 List!38818 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> d!1077800 (= lt!1278521 (choose!21813 thiss!23823 rules!3307 lt!1278291 lt!1278285 (_2!22416 lt!1278279) (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077800 (not (isEmpty!22963 rules!3307))))

(assert (=> d!1077800 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1131 thiss!23823 rules!3307 lt!1278291 lt!1278285 (_2!22416 lt!1278279) (rule!8636 (_1!22416 lt!1278279))) lt!1278521)))

(declare-fun bs!573115 () Bool)

(assert (= bs!573115 d!1077800))

(assert (=> bs!573115 m!4177349))

(assert (=> bs!573115 m!4177351))

(assert (=> bs!573115 m!4177353))

(assert (=> bs!573115 m!4177375))

(declare-fun m!4177997 () Bool)

(assert (=> bs!573115 m!4177997))

(assert (=> bs!573115 m!4177355))

(assert (=> bs!573115 m!4177349))

(assert (=> b!3668967 d!1077800))

(declare-fun d!1077802 () Bool)

(assert (=> d!1077802 (= (isEmpty!22963 rules!3307) ((_ is Nil!38695) rules!3307))))

(assert (=> b!3669004 d!1077802))

(declare-fun d!1077804 () Bool)

(assert (=> d!1077804 (not (contains!7696 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278274))))

(declare-fun lt!1278524 () Unit!56207)

(declare-fun choose!21814 (LexerInterface!5403 List!38819 List!38819 Rule!11428 Rule!11428 C!21332) Unit!56207)

(assert (=> d!1077804 (= lt!1278524 (choose!21814 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) anOtherTypeRule!33 lt!1278274))))

(assert (=> d!1077804 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077804 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!460 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) anOtherTypeRule!33 lt!1278274) lt!1278524)))

(declare-fun bs!573116 () Bool)

(assert (= bs!573116 d!1077804))

(assert (=> bs!573116 m!4177249))

(assert (=> bs!573116 m!4177249))

(declare-fun m!4177999 () Bool)

(assert (=> bs!573116 m!4177999))

(declare-fun m!4178001 () Bool)

(assert (=> bs!573116 m!4178001))

(assert (=> bs!573116 m!4177259))

(assert (=> b!3668986 d!1077804))

(declare-fun d!1077806 () Bool)

(assert (=> d!1077806 (= (get!12774 lt!1278278) (v!38163 lt!1278278))))

(assert (=> b!3668979 d!1077806))

(declare-fun b!3669538 () Bool)

(declare-fun e!2272096 () Bool)

(declare-fun e!2272094 () Bool)

(assert (=> b!3669538 (= e!2272096 e!2272094)))

(declare-fun c!634482 () Bool)

(assert (=> b!3669538 (= c!634482 ((_ is IntegerValue!18133) (value!186159 token!511)))))

(declare-fun b!3669539 () Bool)

(declare-fun res!1490200 () Bool)

(declare-fun e!2272095 () Bool)

(assert (=> b!3669539 (=> res!1490200 e!2272095)))

(assert (=> b!3669539 (= res!1490200 (not ((_ is IntegerValue!18134) (value!186159 token!511))))))

(assert (=> b!3669539 (= e!2272094 e!2272095)))

(declare-fun d!1077808 () Bool)

(declare-fun c!634481 () Bool)

(assert (=> d!1077808 (= c!634481 ((_ is IntegerValue!18132) (value!186159 token!511)))))

(assert (=> d!1077808 (= (inv!21 (value!186159 token!511)) e!2272096)))

(declare-fun b!3669540 () Bool)

(declare-fun inv!17 (TokenValue!6044) Bool)

(assert (=> b!3669540 (= e!2272094 (inv!17 (value!186159 token!511)))))

(declare-fun b!3669541 () Bool)

(declare-fun inv!16 (TokenValue!6044) Bool)

(assert (=> b!3669541 (= e!2272096 (inv!16 (value!186159 token!511)))))

(declare-fun b!3669542 () Bool)

(declare-fun inv!15 (TokenValue!6044) Bool)

(assert (=> b!3669542 (= e!2272095 (inv!15 (value!186159 token!511)))))

(assert (= (and d!1077808 c!634481) b!3669541))

(assert (= (and d!1077808 (not c!634481)) b!3669538))

(assert (= (and b!3669538 c!634482) b!3669540))

(assert (= (and b!3669538 (not c!634482)) b!3669539))

(assert (= (and b!3669539 (not res!1490200)) b!3669542))

(declare-fun m!4178003 () Bool)

(assert (=> b!3669540 m!4178003))

(declare-fun m!4178005 () Bool)

(assert (=> b!3669541 m!4178005))

(declare-fun m!4178007 () Bool)

(assert (=> b!3669542 m!4178007))

(assert (=> b!3668958 d!1077808))

(assert (=> bm!265570 d!1077784))

(declare-fun d!1077810 () Bool)

(assert (=> d!1077810 (not (contains!7696 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278270))))

(declare-fun lt!1278525 () Unit!56207)

(assert (=> d!1077810 (= lt!1278525 (choose!21814 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) rule!403 lt!1278270))))

(assert (=> d!1077810 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077810 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!460 thiss!23823 rules!3307 rules!3307 (rule!8636 (_1!22416 lt!1278279)) rule!403 lt!1278270) lt!1278525)))

(declare-fun bs!573117 () Bool)

(assert (= bs!573117 d!1077810))

(assert (=> bs!573117 m!4177249))

(assert (=> bs!573117 m!4177249))

(declare-fun m!4178009 () Bool)

(assert (=> bs!573117 m!4178009))

(declare-fun m!4178011 () Bool)

(assert (=> bs!573117 m!4178011))

(assert (=> bs!573117 m!4177259))

(assert (=> b!3668959 d!1077810))

(declare-fun d!1077812 () Bool)

(declare-fun lt!1278526 () Bool)

(assert (=> d!1077812 (= lt!1278526 (select (content!5602 lt!1278265) lt!1278274))))

(declare-fun e!2272097 () Bool)

(assert (=> d!1077812 (= lt!1278526 e!2272097)))

(declare-fun res!1490201 () Bool)

(assert (=> d!1077812 (=> (not res!1490201) (not e!2272097))))

(assert (=> d!1077812 (= res!1490201 ((_ is Cons!38694) lt!1278265))))

(assert (=> d!1077812 (= (contains!7696 lt!1278265 lt!1278274) lt!1278526)))

(declare-fun b!3669543 () Bool)

(declare-fun e!2272098 () Bool)

(assert (=> b!3669543 (= e!2272097 e!2272098)))

(declare-fun res!1490202 () Bool)

(assert (=> b!3669543 (=> res!1490202 e!2272098)))

(assert (=> b!3669543 (= res!1490202 (= (h!44114 lt!1278265) lt!1278274))))

(declare-fun b!3669544 () Bool)

(assert (=> b!3669544 (= e!2272098 (contains!7696 (t!299453 lt!1278265) lt!1278274))))

(assert (= (and d!1077812 res!1490201) b!3669543))

(assert (= (and b!3669543 (not res!1490202)) b!3669544))

(declare-fun m!4178013 () Bool)

(assert (=> d!1077812 m!4178013))

(declare-fun m!4178015 () Bool)

(assert (=> d!1077812 m!4178015))

(declare-fun m!4178017 () Bool)

(assert (=> b!3669544 m!4178017))

(assert (=> b!3668997 d!1077812))

(declare-fun d!1077814 () Bool)

(assert (=> d!1077814 (= (head!7852 suffix!1395) (h!44114 suffix!1395))))

(assert (=> b!3668997 d!1077814))

(declare-fun b!3669545 () Bool)

(declare-fun e!2272100 () List!38818)

(assert (=> b!3669545 (= e!2272100 (Cons!38694 (c!634352 (regex!5814 rule!403)) Nil!38694))))

(declare-fun b!3669546 () Bool)

(declare-fun e!2272099 () List!38818)

(declare-fun call!265629 () List!38818)

(assert (=> b!3669546 (= e!2272099 call!265629)))

(declare-fun bm!265622 () Bool)

(declare-fun call!265630 () List!38818)

(declare-fun call!265628 () List!38818)

(assert (=> bm!265622 (= call!265630 call!265628)))

(declare-fun bm!265623 () Bool)

(declare-fun c!634483 () Bool)

(declare-fun call!265627 () List!38818)

(assert (=> bm!265623 (= call!265629 (++!9630 (ite c!634483 call!265627 call!265630) (ite c!634483 call!265630 call!265627)))))

(declare-fun d!1077816 () Bool)

(declare-fun c!634485 () Bool)

(assert (=> d!1077816 (= c!634485 (or ((_ is EmptyExpr!10573) (regex!5814 rule!403)) ((_ is EmptyLang!10573) (regex!5814 rule!403))))))

(declare-fun e!2272102 () List!38818)

(assert (=> d!1077816 (= (usedCharacters!1026 (regex!5814 rule!403)) e!2272102)))

(declare-fun b!3669547 () Bool)

(declare-fun e!2272101 () List!38818)

(assert (=> b!3669547 (= e!2272101 call!265628)))

(declare-fun b!3669548 () Bool)

(declare-fun c!634486 () Bool)

(assert (=> b!3669548 (= c!634486 ((_ is Star!10573) (regex!5814 rule!403)))))

(assert (=> b!3669548 (= e!2272100 e!2272101)))

(declare-fun b!3669549 () Bool)

(assert (=> b!3669549 (= e!2272102 Nil!38694)))

(declare-fun bm!265624 () Bool)

(assert (=> bm!265624 (= call!265628 (usedCharacters!1026 (ite c!634486 (reg!10902 (regex!5814 rule!403)) (ite c!634483 (regTwo!21659 (regex!5814 rule!403)) (regOne!21658 (regex!5814 rule!403))))))))

(declare-fun bm!265625 () Bool)

(assert (=> bm!265625 (= call!265627 (usedCharacters!1026 (ite c!634483 (regOne!21659 (regex!5814 rule!403)) (regTwo!21658 (regex!5814 rule!403)))))))

(declare-fun b!3669550 () Bool)

(assert (=> b!3669550 (= e!2272101 e!2272099)))

(assert (=> b!3669550 (= c!634483 ((_ is Union!10573) (regex!5814 rule!403)))))

(declare-fun b!3669551 () Bool)

(assert (=> b!3669551 (= e!2272099 call!265629)))

(declare-fun b!3669552 () Bool)

(assert (=> b!3669552 (= e!2272102 e!2272100)))

(declare-fun c!634484 () Bool)

(assert (=> b!3669552 (= c!634484 ((_ is ElementMatch!10573) (regex!5814 rule!403)))))

(assert (= (and d!1077816 c!634485) b!3669549))

(assert (= (and d!1077816 (not c!634485)) b!3669552))

(assert (= (and b!3669552 c!634484) b!3669545))

(assert (= (and b!3669552 (not c!634484)) b!3669548))

(assert (= (and b!3669548 c!634486) b!3669547))

(assert (= (and b!3669548 (not c!634486)) b!3669550))

(assert (= (and b!3669550 c!634483) b!3669546))

(assert (= (and b!3669550 (not c!634483)) b!3669551))

(assert (= (or b!3669546 b!3669551) bm!265625))

(assert (= (or b!3669546 b!3669551) bm!265622))

(assert (= (or b!3669546 b!3669551) bm!265623))

(assert (= (or b!3669547 bm!265622) bm!265624))

(declare-fun m!4178019 () Bool)

(assert (=> bm!265623 m!4178019))

(declare-fun m!4178021 () Bool)

(assert (=> bm!265624 m!4178021))

(declare-fun m!4178023 () Bool)

(assert (=> bm!265625 m!4178023))

(assert (=> b!3668997 d!1077816))

(declare-fun d!1077818 () Bool)

(assert (=> d!1077818 (not (contains!7696 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278270))))

(declare-fun lt!1278529 () Unit!56207)

(declare-fun choose!21816 (LexerInterface!5403 List!38819 List!38819 Rule!11428 Rule!11428 C!21332) Unit!56207)

(assert (=> d!1077818 (= lt!1278529 (choose!21816 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8636 (_1!22416 lt!1278279)) lt!1278270))))

(assert (=> d!1077818 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077818 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!342 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8636 (_1!22416 lt!1278279)) lt!1278270) lt!1278529)))

(declare-fun bs!573118 () Bool)

(assert (= bs!573118 d!1077818))

(assert (=> bs!573118 m!4177249))

(assert (=> bs!573118 m!4177249))

(assert (=> bs!573118 m!4178009))

(declare-fun m!4178025 () Bool)

(assert (=> bs!573118 m!4178025))

(assert (=> bs!573118 m!4177259))

(assert (=> b!3668960 d!1077818))

(declare-fun d!1077820 () Bool)

(declare-fun lt!1278554 () Int)

(assert (=> d!1077820 (= lt!1278554 (size!29573 (list!14368 lt!1278287)))))

(declare-fun size!29575 (Conc!11837) Int)

(assert (=> d!1077820 (= lt!1278554 (size!29575 (c!634353 lt!1278287)))))

(assert (=> d!1077820 (= (size!29572 lt!1278287) lt!1278554)))

(declare-fun bs!573119 () Bool)

(assert (= bs!573119 d!1077820))

(assert (=> bs!573119 m!4177315))

(assert (=> bs!573119 m!4177315))

(declare-fun m!4178027 () Bool)

(assert (=> bs!573119 m!4178027))

(declare-fun m!4178029 () Bool)

(assert (=> bs!573119 m!4178029))

(assert (=> b!3668961 d!1077820))

(declare-fun d!1077822 () Bool)

(assert (=> d!1077822 (= (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287))))

(declare-fun b_lambda!108953 () Bool)

(assert (=> (not b_lambda!108953) (not d!1077822)))

(declare-fun t!299512 () Bool)

(declare-fun tb!212445 () Bool)

(assert (=> (and b!3668998 (= (toValue!8110 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299512) tb!212445))

(declare-fun result!258558 () Bool)

(assert (=> tb!212445 (= result!258558 (inv!21 (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287)))))

(declare-fun m!4178031 () Bool)

(assert (=> tb!212445 m!4178031))

(assert (=> d!1077822 t!299512))

(declare-fun b_and!273163 () Bool)

(assert (= b_and!273155 (and (=> t!299512 result!258558) b_and!273163)))

(declare-fun t!299514 () Bool)

(declare-fun tb!212447 () Bool)

(assert (=> (and b!3668981 (= (toValue!8110 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299514) tb!212447))

(declare-fun result!258560 () Bool)

(assert (= result!258560 result!258558))

(assert (=> d!1077822 t!299514))

(declare-fun b_and!273165 () Bool)

(assert (= b_and!273157 (and (=> t!299514 result!258560) b_and!273165)))

(declare-fun tb!212449 () Bool)

(declare-fun t!299516 () Bool)

(assert (=> (and b!3669008 (= (toValue!8110 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299516) tb!212449))

(declare-fun result!258562 () Bool)

(assert (= result!258562 result!258558))

(assert (=> d!1077822 t!299516))

(declare-fun b_and!273167 () Bool)

(assert (= b_and!273159 (and (=> t!299516 result!258562) b_and!273167)))

(declare-fun t!299518 () Bool)

(declare-fun tb!212451 () Bool)

(assert (=> (and b!3669002 (= (toValue!8110 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299518) tb!212451))

(declare-fun result!258564 () Bool)

(assert (= result!258564 result!258558))

(assert (=> d!1077822 t!299518))

(declare-fun b_and!273169 () Bool)

(assert (= b_and!273161 (and (=> t!299518 result!258564) b_and!273169)))

(declare-fun m!4178033 () Bool)

(assert (=> d!1077822 m!4178033))

(assert (=> b!3668961 d!1077822))

(declare-fun d!1077824 () Bool)

(assert (=> d!1077824 (= (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279))) (fromListB!2017 (originalCharacters!6528 (_1!22416 lt!1278279))))))

(declare-fun bs!573120 () Bool)

(assert (= bs!573120 d!1077824))

(declare-fun m!4178035 () Bool)

(assert (=> bs!573120 m!4178035))

(assert (=> b!3668961 d!1077824))

(declare-fun b!3669769 () Bool)

(declare-fun e!2272221 () Bool)

(assert (=> b!3669769 (= e!2272221 true)))

(declare-fun d!1077826 () Bool)

(assert (=> d!1077826 e!2272221))

(assert (= d!1077826 b!3669769))

(declare-fun order!21403 () Int)

(declare-fun order!21405 () Int)

(declare-fun lambda!124673 () Int)

(declare-fun dynLambda!16938 (Int Int) Int)

(declare-fun dynLambda!16939 (Int Int) Int)

(assert (=> b!3669769 (< (dynLambda!16938 order!21403 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16939 order!21405 lambda!124673))))

(declare-fun order!21407 () Int)

(declare-fun dynLambda!16940 (Int Int) Int)

(assert (=> b!3669769 (< (dynLambda!16940 order!21407 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16939 order!21405 lambda!124673))))

(assert (=> d!1077826 (= (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279)))))))

(declare-fun lt!1278665 () Unit!56207)

(declare-fun Forall2of!396 (Int BalanceConc!23288 BalanceConc!23288) Unit!56207)

(assert (=> d!1077826 (= lt!1278665 (Forall2of!396 lambda!124673 lt!1278287 (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279)))))))

(assert (=> d!1077826 (= (list!14368 lt!1278287) (list!14368 (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279)))))))

(assert (=> d!1077826 (= (lemmaEqSameImage!997 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287 (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279)))) lt!1278665)))

(declare-fun b_lambda!108971 () Bool)

(assert (=> (not b_lambda!108971) (not d!1077826)))

(assert (=> d!1077826 t!299512))

(declare-fun b_and!273223 () Bool)

(assert (= b_and!273163 (and (=> t!299512 result!258558) b_and!273223)))

(assert (=> d!1077826 t!299514))

(declare-fun b_and!273225 () Bool)

(assert (= b_and!273165 (and (=> t!299514 result!258560) b_and!273225)))

(assert (=> d!1077826 t!299516))

(declare-fun b_and!273227 () Bool)

(assert (= b_and!273167 (and (=> t!299516 result!258562) b_and!273227)))

(assert (=> d!1077826 t!299518))

(declare-fun b_and!273229 () Bool)

(assert (= b_and!273169 (and (=> t!299518 result!258564) b_and!273229)))

(declare-fun b_lambda!108973 () Bool)

(assert (=> (not b_lambda!108973) (not d!1077826)))

(declare-fun tb!212501 () Bool)

(declare-fun t!299568 () Bool)

(assert (=> (and b!3668998 (= (toValue!8110 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299568) tb!212501))

(declare-fun result!258620 () Bool)

(assert (=> tb!212501 (= result!258620 (inv!21 (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (seqFromList!4363 (originalCharacters!6528 (_1!22416 lt!1278279))))))))

(declare-fun m!4178343 () Bool)

(assert (=> tb!212501 m!4178343))

(assert (=> d!1077826 t!299568))

(declare-fun b_and!273231 () Bool)

(assert (= b_and!273223 (and (=> t!299568 result!258620) b_and!273231)))

(declare-fun tb!212503 () Bool)

(declare-fun t!299570 () Bool)

(assert (=> (and b!3668981 (= (toValue!8110 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299570) tb!212503))

(declare-fun result!258622 () Bool)

(assert (= result!258622 result!258620))

(assert (=> d!1077826 t!299570))

(declare-fun b_and!273233 () Bool)

(assert (= b_and!273225 (and (=> t!299570 result!258622) b_and!273233)))

(declare-fun tb!212505 () Bool)

(declare-fun t!299572 () Bool)

(assert (=> (and b!3669008 (= (toValue!8110 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299572) tb!212505))

(declare-fun result!258624 () Bool)

(assert (= result!258624 result!258620))

(assert (=> d!1077826 t!299572))

(declare-fun b_and!273235 () Bool)

(assert (= b_and!273227 (and (=> t!299572 result!258624) b_and!273235)))

(declare-fun t!299574 () Bool)

(declare-fun tb!212507 () Bool)

(assert (=> (and b!3669002 (= (toValue!8110 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299574) tb!212507))

(declare-fun result!258626 () Bool)

(assert (= result!258626 result!258620))

(assert (=> d!1077826 t!299574))

(declare-fun b_and!273237 () Bool)

(assert (= b_and!273229 (and (=> t!299574 result!258626) b_and!273237)))

(assert (=> d!1077826 m!4177285))

(declare-fun m!4178345 () Bool)

(assert (=> d!1077826 m!4178345))

(assert (=> d!1077826 m!4178033))

(assert (=> d!1077826 m!4177285))

(declare-fun m!4178347 () Bool)

(assert (=> d!1077826 m!4178347))

(assert (=> d!1077826 m!4177285))

(declare-fun m!4178349 () Bool)

(assert (=> d!1077826 m!4178349))

(assert (=> d!1077826 m!4177315))

(assert (=> b!3668961 d!1077826))

(declare-fun d!1077912 () Bool)

(assert (=> d!1077912 (= (size!29571 (_1!22416 lt!1278279)) (size!29573 (originalCharacters!6528 (_1!22416 lt!1278279))))))

(declare-fun Unit!56227 () Unit!56207)

(assert (=> d!1077912 (= (lemmaCharactersSize!859 (_1!22416 lt!1278279)) Unit!56227)))

(declare-fun bs!573136 () Bool)

(assert (= bs!573136 d!1077912))

(declare-fun m!4178351 () Bool)

(assert (=> bs!573136 m!4178351))

(assert (=> b!3668961 d!1077912))

(declare-fun b!3669774 () Bool)

(declare-fun e!2272225 () Bool)

(assert (=> b!3669774 (= e!2272225 true)))

(declare-fun d!1077914 () Bool)

(assert (=> d!1077914 e!2272225))

(assert (= d!1077914 b!3669774))

(declare-fun order!21409 () Int)

(declare-fun lambda!124676 () Int)

(declare-fun dynLambda!16941 (Int Int) Int)

(assert (=> b!3669774 (< (dynLambda!16938 order!21403 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16941 order!21409 lambda!124676))))

(assert (=> b!3669774 (< (dynLambda!16940 order!21407 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16941 order!21409 lambda!124676))))

(assert (=> d!1077914 (= (list!14368 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287))) (list!14368 lt!1278287))))

(declare-fun lt!1278668 () Unit!56207)

(declare-fun ForallOf!738 (Int BalanceConc!23288) Unit!56207)

(assert (=> d!1077914 (= lt!1278668 (ForallOf!738 lambda!124676 lt!1278287))))

(assert (=> d!1077914 (= (lemmaSemiInverse!1563 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278287) lt!1278668)))

(declare-fun b_lambda!108975 () Bool)

(assert (=> (not b_lambda!108975) (not d!1077914)))

(declare-fun t!299576 () Bool)

(declare-fun tb!212509 () Bool)

(assert (=> (and b!3668998 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299576) tb!212509))

(declare-fun e!2272226 () Bool)

(declare-fun tp!1116715 () Bool)

(declare-fun b!3669775 () Bool)

(assert (=> b!3669775 (= e!2272226 (and (inv!52179 (c!634353 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287)))) tp!1116715))))

(declare-fun result!258628 () Bool)

(assert (=> tb!212509 (= result!258628 (and (inv!52180 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278287))) e!2272226))))

(assert (= tb!212509 b!3669775))

(declare-fun m!4178353 () Bool)

(assert (=> b!3669775 m!4178353))

(declare-fun m!4178355 () Bool)

(assert (=> tb!212509 m!4178355))

(assert (=> d!1077914 t!299576))

(declare-fun b_and!273239 () Bool)

(assert (= b_and!273147 (and (=> t!299576 result!258628) b_and!273239)))

(declare-fun tb!212511 () Bool)

(declare-fun t!299578 () Bool)

(assert (=> (and b!3668981 (= (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299578) tb!212511))

(declare-fun result!258630 () Bool)

(assert (= result!258630 result!258628))

(assert (=> d!1077914 t!299578))

(declare-fun b_and!273241 () Bool)

(assert (= b_and!273149 (and (=> t!299578 result!258630) b_and!273241)))

(declare-fun t!299580 () Bool)

(declare-fun tb!212513 () Bool)

(assert (=> (and b!3669008 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299580) tb!212513))

(declare-fun result!258632 () Bool)

(assert (= result!258632 result!258628))

(assert (=> d!1077914 t!299580))

(declare-fun b_and!273243 () Bool)

(assert (= b_and!273151 (and (=> t!299580 result!258632) b_and!273243)))

(declare-fun t!299582 () Bool)

(declare-fun tb!212515 () Bool)

(assert (=> (and b!3669002 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299582) tb!212515))

(declare-fun result!258634 () Bool)

(assert (= result!258634 result!258628))

(assert (=> d!1077914 t!299582))

(declare-fun b_and!273245 () Bool)

(assert (= b_and!273153 (and (=> t!299582 result!258634) b_and!273245)))

(declare-fun b_lambda!108977 () Bool)

(assert (=> (not b_lambda!108977) (not d!1077914)))

(assert (=> d!1077914 t!299512))

(declare-fun b_and!273247 () Bool)

(assert (= b_and!273231 (and (=> t!299512 result!258558) b_and!273247)))

(assert (=> d!1077914 t!299514))

(declare-fun b_and!273249 () Bool)

(assert (= b_and!273233 (and (=> t!299514 result!258560) b_and!273249)))

(assert (=> d!1077914 t!299516))

(declare-fun b_and!273251 () Bool)

(assert (= b_and!273235 (and (=> t!299516 result!258562) b_and!273251)))

(assert (=> d!1077914 t!299518))

(declare-fun b_and!273253 () Bool)

(assert (= b_and!273237 (and (=> t!299518 result!258564) b_and!273253)))

(assert (=> d!1077914 m!4177315))

(declare-fun m!4178357 () Bool)

(assert (=> d!1077914 m!4178357))

(declare-fun m!4178359 () Bool)

(assert (=> d!1077914 m!4178359))

(assert (=> d!1077914 m!4178033))

(assert (=> d!1077914 m!4178357))

(assert (=> d!1077914 m!4178033))

(declare-fun m!4178361 () Bool)

(assert (=> d!1077914 m!4178361))

(assert (=> b!3668961 d!1077914))

(declare-fun d!1077916 () Bool)

(assert (=> d!1077916 (= (inv!52172 (tag!6602 (rule!8636 token!511))) (= (mod (str.len (value!186158 (tag!6602 (rule!8636 token!511)))) 2) 0))))

(assert (=> b!3668999 d!1077916))

(declare-fun d!1077918 () Bool)

(declare-fun res!1490309 () Bool)

(declare-fun e!2272227 () Bool)

(assert (=> d!1077918 (=> (not res!1490309) (not e!2272227))))

(assert (=> d!1077918 (= res!1490309 (semiInverseModEq!2481 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 token!511)))))))

(assert (=> d!1077918 (= (inv!52175 (transformation!5814 (rule!8636 token!511))) e!2272227)))

(declare-fun b!3669776 () Bool)

(assert (=> b!3669776 (= e!2272227 (equivClasses!2380 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 token!511)))))))

(assert (= (and d!1077918 res!1490309) b!3669776))

(declare-fun m!4178363 () Bool)

(assert (=> d!1077918 m!4178363))

(declare-fun m!4178365 () Bool)

(assert (=> b!3669776 m!4178365))

(assert (=> b!3668999 d!1077918))

(declare-fun b!3669777 () Bool)

(declare-fun e!2272231 () Bool)

(assert (=> b!3669777 (= e!2272231 (matchR!5142 (derivativeStep!3230 (regex!5814 rule!403) (head!7852 lt!1278296)) (tail!5679 lt!1278296)))))

(declare-fun b!3669778 () Bool)

(assert (=> b!3669778 (= e!2272231 (nullable!3681 (regex!5814 rule!403)))))

(declare-fun b!3669779 () Bool)

(declare-fun res!1490315 () Bool)

(declare-fun e!2272229 () Bool)

(assert (=> b!3669779 (=> res!1490315 e!2272229)))

(assert (=> b!3669779 (= res!1490315 (not (isEmpty!22962 (tail!5679 lt!1278296))))))

(declare-fun bm!265635 () Bool)

(declare-fun call!265640 () Bool)

(assert (=> bm!265635 (= call!265640 (isEmpty!22962 lt!1278296))))

(declare-fun b!3669781 () Bool)

(assert (=> b!3669781 (= e!2272229 (not (= (head!7852 lt!1278296) (c!634352 (regex!5814 rule!403)))))))

(declare-fun b!3669782 () Bool)

(declare-fun res!1490312 () Bool)

(declare-fun e!2272234 () Bool)

(assert (=> b!3669782 (=> res!1490312 e!2272234)))

(assert (=> b!3669782 (= res!1490312 (not ((_ is ElementMatch!10573) (regex!5814 rule!403))))))

(declare-fun e!2272228 () Bool)

(assert (=> b!3669782 (= e!2272228 e!2272234)))

(declare-fun b!3669783 () Bool)

(declare-fun lt!1278669 () Bool)

(assert (=> b!3669783 (= e!2272228 (not lt!1278669))))

(declare-fun b!3669784 () Bool)

(declare-fun res!1490317 () Bool)

(declare-fun e!2272230 () Bool)

(assert (=> b!3669784 (=> (not res!1490317) (not e!2272230))))

(assert (=> b!3669784 (= res!1490317 (isEmpty!22962 (tail!5679 lt!1278296)))))

(declare-fun b!3669785 () Bool)

(declare-fun res!1490313 () Bool)

(assert (=> b!3669785 (=> res!1490313 e!2272234)))

(assert (=> b!3669785 (= res!1490313 e!2272230)))

(declare-fun res!1490311 () Bool)

(assert (=> b!3669785 (=> (not res!1490311) (not e!2272230))))

(assert (=> b!3669785 (= res!1490311 lt!1278669)))

(declare-fun b!3669786 () Bool)

(declare-fun e!2272233 () Bool)

(assert (=> b!3669786 (= e!2272233 (= lt!1278669 call!265640))))

(declare-fun b!3669787 () Bool)

(declare-fun e!2272232 () Bool)

(assert (=> b!3669787 (= e!2272232 e!2272229)))

(declare-fun res!1490310 () Bool)

(assert (=> b!3669787 (=> res!1490310 e!2272229)))

(assert (=> b!3669787 (= res!1490310 call!265640)))

(declare-fun b!3669788 () Bool)

(declare-fun res!1490316 () Bool)

(assert (=> b!3669788 (=> (not res!1490316) (not e!2272230))))

(assert (=> b!3669788 (= res!1490316 (not call!265640))))

(declare-fun b!3669780 () Bool)

(assert (=> b!3669780 (= e!2272230 (= (head!7852 lt!1278296) (c!634352 (regex!5814 rule!403))))))

(declare-fun d!1077920 () Bool)

(assert (=> d!1077920 e!2272233))

(declare-fun c!634520 () Bool)

(assert (=> d!1077920 (= c!634520 ((_ is EmptyExpr!10573) (regex!5814 rule!403)))))

(assert (=> d!1077920 (= lt!1278669 e!2272231)))

(declare-fun c!634519 () Bool)

(assert (=> d!1077920 (= c!634519 (isEmpty!22962 lt!1278296))))

(assert (=> d!1077920 (validRegex!4843 (regex!5814 rule!403))))

(assert (=> d!1077920 (= (matchR!5142 (regex!5814 rule!403) lt!1278296) lt!1278669)))

(declare-fun b!3669789 () Bool)

(assert (=> b!3669789 (= e!2272234 e!2272232)))

(declare-fun res!1490314 () Bool)

(assert (=> b!3669789 (=> (not res!1490314) (not e!2272232))))

(assert (=> b!3669789 (= res!1490314 (not lt!1278669))))

(declare-fun b!3669790 () Bool)

(assert (=> b!3669790 (= e!2272233 e!2272228)))

(declare-fun c!634521 () Bool)

(assert (=> b!3669790 (= c!634521 ((_ is EmptyLang!10573) (regex!5814 rule!403)))))

(assert (= (and d!1077920 c!634519) b!3669778))

(assert (= (and d!1077920 (not c!634519)) b!3669777))

(assert (= (and d!1077920 c!634520) b!3669786))

(assert (= (and d!1077920 (not c!634520)) b!3669790))

(assert (= (and b!3669790 c!634521) b!3669783))

(assert (= (and b!3669790 (not c!634521)) b!3669782))

(assert (= (and b!3669782 (not res!1490312)) b!3669785))

(assert (= (and b!3669785 res!1490311) b!3669788))

(assert (= (and b!3669788 res!1490316) b!3669784))

(assert (= (and b!3669784 res!1490317) b!3669780))

(assert (= (and b!3669785 (not res!1490313)) b!3669789))

(assert (= (and b!3669789 res!1490314) b!3669787))

(assert (= (and b!3669787 (not res!1490310)) b!3669779))

(assert (= (and b!3669779 (not res!1490315)) b!3669781))

(assert (= (or b!3669786 b!3669787 b!3669788) bm!265635))

(assert (=> d!1077920 m!4177271))

(assert (=> d!1077920 m!4177897))

(declare-fun m!4178367 () Bool)

(assert (=> b!3669778 m!4178367))

(assert (=> b!3669784 m!4177633))

(assert (=> b!3669784 m!4177633))

(assert (=> b!3669784 m!4177727))

(assert (=> b!3669780 m!4177631))

(assert (=> bm!265635 m!4177271))

(assert (=> b!3669777 m!4177631))

(assert (=> b!3669777 m!4177631))

(declare-fun m!4178369 () Bool)

(assert (=> b!3669777 m!4178369))

(assert (=> b!3669777 m!4177633))

(assert (=> b!3669777 m!4178369))

(assert (=> b!3669777 m!4177633))

(declare-fun m!4178371 () Bool)

(assert (=> b!3669777 m!4178371))

(assert (=> b!3669781 m!4177631))

(assert (=> b!3669779 m!4177633))

(assert (=> b!3669779 m!4177633))

(assert (=> b!3669779 m!4177727))

(assert (=> b!3668982 d!1077920))

(declare-fun d!1077922 () Bool)

(declare-fun res!1490322 () Bool)

(declare-fun e!2272237 () Bool)

(assert (=> d!1077922 (=> (not res!1490322) (not e!2272237))))

(assert (=> d!1077922 (= res!1490322 (validRegex!4843 (regex!5814 rule!403)))))

(assert (=> d!1077922 (= (ruleValid!2078 thiss!23823 rule!403) e!2272237)))

(declare-fun b!3669795 () Bool)

(declare-fun res!1490323 () Bool)

(assert (=> b!3669795 (=> (not res!1490323) (not e!2272237))))

(assert (=> b!3669795 (= res!1490323 (not (nullable!3681 (regex!5814 rule!403))))))

(declare-fun b!3669796 () Bool)

(assert (=> b!3669796 (= e!2272237 (not (= (tag!6602 rule!403) (String!43555 ""))))))

(assert (= (and d!1077922 res!1490322) b!3669795))

(assert (= (and b!3669795 res!1490323) b!3669796))

(assert (=> d!1077922 m!4177897))

(assert (=> b!3669795 m!4178367))

(assert (=> b!3668982 d!1077922))

(declare-fun d!1077924 () Bool)

(assert (=> d!1077924 (ruleValid!2078 thiss!23823 rule!403)))

(declare-fun lt!1278672 () Unit!56207)

(declare-fun choose!21818 (LexerInterface!5403 Rule!11428 List!38819) Unit!56207)

(assert (=> d!1077924 (= lt!1278672 (choose!21818 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1077924 (contains!7695 rules!3307 rule!403)))

(assert (=> d!1077924 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1232 thiss!23823 rule!403 rules!3307) lt!1278672)))

(declare-fun bs!573137 () Bool)

(assert (= bs!573137 d!1077924))

(assert (=> bs!573137 m!4177369))

(declare-fun m!4178373 () Bool)

(assert (=> bs!573137 m!4178373))

(assert (=> bs!573137 m!4177247))

(assert (=> b!3668982 d!1077924))

(declare-fun d!1077926 () Bool)

(assert (=> d!1077926 (= (isEmpty!22962 (_2!22416 lt!1278261)) ((_ is Nil!38694) (_2!22416 lt!1278261)))))

(assert (=> b!3668962 d!1077926))

(declare-fun d!1077928 () Bool)

(assert (=> d!1077928 (= lt!1278291 lt!1278296)))

(declare-fun lt!1278675 () Unit!56207)

(declare-fun choose!21819 (List!38818 List!38818 List!38818) Unit!56207)

(assert (=> d!1077928 (= lt!1278675 (choose!21819 lt!1278291 lt!1278296 lt!1278285))))

(assert (=> d!1077928 (isPrefix!3177 lt!1278291 lt!1278285)))

(assert (=> d!1077928 (= (lemmaIsPrefixSameLengthThenSameList!639 lt!1278291 lt!1278296 lt!1278285) lt!1278675)))

(declare-fun bs!573138 () Bool)

(assert (= bs!573138 d!1077928))

(declare-fun m!4178375 () Bool)

(assert (=> bs!573138 m!4178375))

(assert (=> bs!573138 m!4177325))

(assert (=> b!3669000 d!1077928))

(declare-fun d!1077930 () Bool)

(declare-fun lt!1278676 () Int)

(assert (=> d!1077930 (= lt!1278676 (size!29573 (list!14368 lt!1278259)))))

(assert (=> d!1077930 (= lt!1278676 (size!29575 (c!634353 lt!1278259)))))

(assert (=> d!1077930 (= (size!29572 lt!1278259) lt!1278676)))

(declare-fun bs!573139 () Bool)

(assert (= bs!573139 d!1077930))

(assert (=> bs!573139 m!4177237))

(assert (=> bs!573139 m!4177237))

(declare-fun m!4178377 () Bool)

(assert (=> bs!573139 m!4178377))

(declare-fun m!4178379 () Bool)

(assert (=> bs!573139 m!4178379))

(assert (=> b!3669000 d!1077930))

(declare-fun d!1077932 () Bool)

(declare-fun lt!1278677 () Bool)

(assert (=> d!1077932 (= lt!1278677 (select (content!5602 lt!1278265) lt!1278270))))

(declare-fun e!2272238 () Bool)

(assert (=> d!1077932 (= lt!1278677 e!2272238)))

(declare-fun res!1490324 () Bool)

(assert (=> d!1077932 (=> (not res!1490324) (not e!2272238))))

(assert (=> d!1077932 (= res!1490324 ((_ is Cons!38694) lt!1278265))))

(assert (=> d!1077932 (= (contains!7696 lt!1278265 lt!1278270) lt!1278677)))

(declare-fun b!3669797 () Bool)

(declare-fun e!2272239 () Bool)

(assert (=> b!3669797 (= e!2272238 e!2272239)))

(declare-fun res!1490325 () Bool)

(assert (=> b!3669797 (=> res!1490325 e!2272239)))

(assert (=> b!3669797 (= res!1490325 (= (h!44114 lt!1278265) lt!1278270))))

(declare-fun b!3669798 () Bool)

(assert (=> b!3669798 (= e!2272239 (contains!7696 (t!299453 lt!1278265) lt!1278270))))

(assert (= (and d!1077932 res!1490324) b!3669797))

(assert (= (and b!3669797 (not res!1490325)) b!3669798))

(assert (=> d!1077932 m!4178013))

(declare-fun m!4178381 () Bool)

(assert (=> d!1077932 m!4178381))

(declare-fun m!4178383 () Bool)

(assert (=> b!3669798 m!4178383))

(assert (=> b!3669000 d!1077932))

(declare-fun d!1077934 () Bool)

(assert (=> d!1077934 (= (head!7852 lt!1278291) (h!44114 lt!1278291))))

(assert (=> b!3669000 d!1077934))

(declare-fun d!1077936 () Bool)

(assert (=> d!1077936 (= (inv!52172 (tag!6602 rule!403)) (= (mod (str.len (value!186158 (tag!6602 rule!403))) 2) 0))))

(assert (=> b!3668983 d!1077936))

(declare-fun d!1077938 () Bool)

(declare-fun res!1490326 () Bool)

(declare-fun e!2272240 () Bool)

(assert (=> d!1077938 (=> (not res!1490326) (not e!2272240))))

(assert (=> d!1077938 (= res!1490326 (semiInverseModEq!2481 (toChars!7969 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 rule!403))))))

(assert (=> d!1077938 (= (inv!52175 (transformation!5814 rule!403)) e!2272240)))

(declare-fun b!3669799 () Bool)

(assert (=> b!3669799 (= e!2272240 (equivClasses!2380 (toChars!7969 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 rule!403))))))

(assert (= (and d!1077938 res!1490326) b!3669799))

(declare-fun m!4178385 () Bool)

(assert (=> d!1077938 m!4178385))

(declare-fun m!4178387 () Bool)

(assert (=> b!3669799 m!4178387))

(assert (=> b!3668983 d!1077938))

(declare-fun d!1077940 () Bool)

(declare-fun res!1490331 () Bool)

(declare-fun e!2272243 () Bool)

(assert (=> d!1077940 (=> (not res!1490331) (not e!2272243))))

(assert (=> d!1077940 (= res!1490331 (not (isEmpty!22962 (originalCharacters!6528 token!511))))))

(assert (=> d!1077940 (= (inv!52176 token!511) e!2272243)))

(declare-fun b!3669804 () Bool)

(declare-fun res!1490332 () Bool)

(assert (=> b!3669804 (=> (not res!1490332) (not e!2272243))))

(assert (=> b!3669804 (= res!1490332 (= (originalCharacters!6528 token!511) (list!14368 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 token!511))) (value!186159 token!511)))))))

(declare-fun b!3669805 () Bool)

(assert (=> b!3669805 (= e!2272243 (= (size!29571 token!511) (size!29573 (originalCharacters!6528 token!511))))))

(assert (= (and d!1077940 res!1490331) b!3669804))

(assert (= (and b!3669804 res!1490332) b!3669805))

(declare-fun b_lambda!108979 () Bool)

(assert (=> (not b_lambda!108979) (not b!3669804)))

(assert (=> b!3669804 t!299496))

(declare-fun b_and!273255 () Bool)

(assert (= b_and!273239 (and (=> t!299496 result!258540) b_and!273255)))

(assert (=> b!3669804 t!299498))

(declare-fun b_and!273257 () Bool)

(assert (= b_and!273241 (and (=> t!299498 result!258542) b_and!273257)))

(assert (=> b!3669804 t!299500))

(declare-fun b_and!273259 () Bool)

(assert (= b_and!273243 (and (=> t!299500 result!258544) b_and!273259)))

(assert (=> b!3669804 t!299502))

(declare-fun b_and!273261 () Bool)

(assert (= b_and!273245 (and (=> t!299502 result!258546) b_and!273261)))

(declare-fun m!4178389 () Bool)

(assert (=> d!1077940 m!4178389))

(assert (=> b!3669804 m!4177875))

(assert (=> b!3669804 m!4177875))

(declare-fun m!4178391 () Bool)

(assert (=> b!3669804 m!4178391))

(declare-fun m!4178393 () Bool)

(assert (=> b!3669805 m!4178393))

(assert (=> start!343810 d!1077940))

(declare-fun d!1077942 () Bool)

(assert (=> d!1077942 (not (matchR!5142 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291))))

(declare-fun lt!1278678 () Unit!56207)

(assert (=> d!1077942 (= lt!1278678 (choose!21808 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278270))))

(assert (=> d!1077942 (validRegex!4843 (regex!5814 (rule!8636 (_1!22416 lt!1278279))))))

(assert (=> d!1077942 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!762 (regex!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278291 lt!1278270) lt!1278678)))

(declare-fun bs!573140 () Bool)

(assert (= bs!573140 d!1077942))

(assert (=> bs!573140 m!4177295))

(declare-fun m!4178395 () Bool)

(assert (=> bs!573140 m!4178395))

(assert (=> bs!573140 m!4177723))

(assert (=> bm!265574 d!1077942))

(declare-fun d!1077944 () Bool)

(declare-fun res!1490337 () Bool)

(declare-fun e!2272248 () Bool)

(assert (=> d!1077944 (=> res!1490337 e!2272248)))

(assert (=> d!1077944 (= res!1490337 (not ((_ is Cons!38695) rules!3307)))))

(assert (=> d!1077944 (= (sepAndNonSepRulesDisjointChars!1982 rules!3307 rules!3307) e!2272248)))

(declare-fun b!3669810 () Bool)

(declare-fun e!2272249 () Bool)

(assert (=> b!3669810 (= e!2272248 e!2272249)))

(declare-fun res!1490338 () Bool)

(assert (=> b!3669810 (=> (not res!1490338) (not e!2272249))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!905 (Rule!11428 List!38819) Bool)

(assert (=> b!3669810 (= res!1490338 (ruleDisjointCharsFromAllFromOtherType!905 (h!44115 rules!3307) rules!3307))))

(declare-fun b!3669811 () Bool)

(assert (=> b!3669811 (= e!2272249 (sepAndNonSepRulesDisjointChars!1982 rules!3307 (t!299454 rules!3307)))))

(assert (= (and d!1077944 (not res!1490337)) b!3669810))

(assert (= (and b!3669810 res!1490338) b!3669811))

(declare-fun m!4178397 () Bool)

(assert (=> b!3669810 m!4178397))

(declare-fun m!4178399 () Bool)

(assert (=> b!3669811 m!4178399))

(assert (=> b!3668975 d!1077944))

(declare-fun d!1077946 () Bool)

(declare-fun lt!1278679 () Bool)

(assert (=> d!1077946 (= lt!1278679 (select (content!5603 rules!3307) (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun e!2272250 () Bool)

(assert (=> d!1077946 (= lt!1278679 e!2272250)))

(declare-fun res!1490339 () Bool)

(assert (=> d!1077946 (=> (not res!1490339) (not e!2272250))))

(assert (=> d!1077946 (= res!1490339 ((_ is Cons!38695) rules!3307))))

(assert (=> d!1077946 (= (contains!7695 rules!3307 (rule!8636 (_1!22416 lt!1278279))) lt!1278679)))

(declare-fun b!3669812 () Bool)

(declare-fun e!2272251 () Bool)

(assert (=> b!3669812 (= e!2272250 e!2272251)))

(declare-fun res!1490340 () Bool)

(assert (=> b!3669812 (=> res!1490340 e!2272251)))

(assert (=> b!3669812 (= res!1490340 (= (h!44115 rules!3307) (rule!8636 (_1!22416 lt!1278279))))))

(declare-fun b!3669813 () Bool)

(assert (=> b!3669813 (= e!2272251 (contains!7695 (t!299454 rules!3307) (rule!8636 (_1!22416 lt!1278279))))))

(assert (= (and d!1077946 res!1490339) b!3669812))

(assert (= (and b!3669812 (not res!1490340)) b!3669813))

(assert (=> d!1077946 m!4177885))

(declare-fun m!4178401 () Bool)

(assert (=> d!1077946 m!4178401))

(declare-fun m!4178403 () Bool)

(assert (=> b!3669813 m!4178403))

(assert (=> b!3668976 d!1077946))

(declare-fun d!1077948 () Bool)

(assert (=> d!1077948 (contains!7696 lt!1278291 (head!7852 suffix!1395))))

(declare-fun lt!1278682 () Unit!56207)

(declare-fun choose!21820 (List!38818 List!38818 List!38818 List!38818) Unit!56207)

(assert (=> d!1077948 (= lt!1278682 (choose!21820 lt!1278296 suffix!1395 lt!1278291 lt!1278285))))

(assert (=> d!1077948 (isPrefix!3177 lt!1278291 lt!1278285)))

(assert (=> d!1077948 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!122 lt!1278296 suffix!1395 lt!1278291 lt!1278285) lt!1278682)))

(declare-fun bs!573141 () Bool)

(assert (= bs!573141 d!1077948))

(assert (=> bs!573141 m!4177263))

(assert (=> bs!573141 m!4177263))

(declare-fun m!4178405 () Bool)

(assert (=> bs!573141 m!4178405))

(declare-fun m!4178407 () Bool)

(assert (=> bs!573141 m!4178407))

(assert (=> bs!573141 m!4177325))

(assert (=> b!3668993 d!1077948))

(declare-fun d!1077950 () Bool)

(declare-fun lt!1278683 () Bool)

(assert (=> d!1077950 (= lt!1278683 (select (content!5602 lt!1278291) lt!1278274))))

(declare-fun e!2272252 () Bool)

(assert (=> d!1077950 (= lt!1278683 e!2272252)))

(declare-fun res!1490341 () Bool)

(assert (=> d!1077950 (=> (not res!1490341) (not e!2272252))))

(assert (=> d!1077950 (= res!1490341 ((_ is Cons!38694) lt!1278291))))

(assert (=> d!1077950 (= (contains!7696 lt!1278291 lt!1278274) lt!1278683)))

(declare-fun b!3669814 () Bool)

(declare-fun e!2272253 () Bool)

(assert (=> b!3669814 (= e!2272252 e!2272253)))

(declare-fun res!1490342 () Bool)

(assert (=> b!3669814 (=> res!1490342 e!2272253)))

(assert (=> b!3669814 (= res!1490342 (= (h!44114 lt!1278291) lt!1278274))))

(declare-fun b!3669815 () Bool)

(assert (=> b!3669815 (= e!2272253 (contains!7696 (t!299453 lt!1278291) lt!1278274))))

(assert (= (and d!1077950 res!1490341) b!3669814))

(assert (= (and b!3669814 (not res!1490342)) b!3669815))

(assert (=> d!1077950 m!4177459))

(declare-fun m!4178409 () Bool)

(assert (=> d!1077950 m!4178409))

(declare-fun m!4178411 () Bool)

(assert (=> b!3669815 m!4178411))

(assert (=> b!3668993 d!1077950))

(declare-fun d!1077952 () Bool)

(assert (=> d!1077952 (not (contains!7696 (usedCharacters!1026 (regex!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278274))))

(declare-fun lt!1278684 () Unit!56207)

(assert (=> d!1077952 (= lt!1278684 (choose!21816 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8636 (_1!22416 lt!1278279)) lt!1278274))))

(assert (=> d!1077952 (rulesInvariant!4800 thiss!23823 rules!3307)))

(assert (=> d!1077952 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!342 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8636 (_1!22416 lt!1278279)) lt!1278274) lt!1278684)))

(declare-fun bs!573142 () Bool)

(assert (= bs!573142 d!1077952))

(assert (=> bs!573142 m!4177249))

(assert (=> bs!573142 m!4177249))

(assert (=> bs!573142 m!4177999))

(declare-fun m!4178413 () Bool)

(assert (=> bs!573142 m!4178413))

(assert (=> bs!573142 m!4177259))

(assert (=> b!3668977 d!1077952))

(declare-fun d!1077954 () Bool)

(declare-fun lt!1278685 () List!38818)

(assert (=> d!1077954 (= (++!9630 lt!1278296 lt!1278685) lt!1278285)))

(declare-fun e!2272254 () List!38818)

(assert (=> d!1077954 (= lt!1278685 e!2272254)))

(declare-fun c!634522 () Bool)

(assert (=> d!1077954 (= c!634522 ((_ is Cons!38694) lt!1278296))))

(assert (=> d!1077954 (>= (size!29573 lt!1278285) (size!29573 lt!1278296))))

(assert (=> d!1077954 (= (getSuffix!1730 lt!1278285 lt!1278296) lt!1278685)))

(declare-fun b!3669816 () Bool)

(assert (=> b!3669816 (= e!2272254 (getSuffix!1730 (tail!5679 lt!1278285) (t!299453 lt!1278296)))))

(declare-fun b!3669817 () Bool)

(assert (=> b!3669817 (= e!2272254 lt!1278285)))

(assert (= (and d!1077954 c!634522) b!3669816))

(assert (= (and d!1077954 (not c!634522)) b!3669817))

(declare-fun m!4178415 () Bool)

(assert (=> d!1077954 m!4178415))

(assert (=> d!1077954 m!4177497))

(assert (=> d!1077954 m!4177389))

(assert (=> b!3669816 m!4177501))

(assert (=> b!3669816 m!4177501))

(declare-fun m!4178417 () Bool)

(assert (=> b!3669816 m!4178417))

(assert (=> b!3668994 d!1077954))

(declare-fun d!1077956 () Bool)

(declare-fun lt!1278686 () Int)

(assert (=> d!1077956 (>= lt!1278686 0)))

(declare-fun e!2272255 () Int)

(assert (=> d!1077956 (= lt!1278686 e!2272255)))

(declare-fun c!634523 () Bool)

(assert (=> d!1077956 (= c!634523 ((_ is Nil!38694) lt!1278296))))

(assert (=> d!1077956 (= (size!29573 lt!1278296) lt!1278686)))

(declare-fun b!3669818 () Bool)

(assert (=> b!3669818 (= e!2272255 0)))

(declare-fun b!3669819 () Bool)

(assert (=> b!3669819 (= e!2272255 (+ 1 (size!29573 (t!299453 lt!1278296))))))

(assert (= (and d!1077956 c!634523) b!3669818))

(assert (= (and d!1077956 (not c!634523)) b!3669819))

(declare-fun m!4178419 () Bool)

(assert (=> b!3669819 m!4178419))

(assert (=> b!3668994 d!1077956))

(declare-fun bs!573143 () Bool)

(declare-fun d!1077958 () Bool)

(assert (= bs!573143 (and d!1077958 d!1077914)))

(declare-fun lambda!124677 () Int)

(assert (=> bs!573143 (= lambda!124677 lambda!124676)))

(declare-fun b!3669820 () Bool)

(declare-fun e!2272256 () Bool)

(assert (=> b!3669820 (= e!2272256 true)))

(assert (=> d!1077958 e!2272256))

(assert (= d!1077958 b!3669820))

(assert (=> b!3669820 (< (dynLambda!16938 order!21403 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16941 order!21409 lambda!124677))))

(assert (=> b!3669820 (< (dynLambda!16940 order!21407 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) (dynLambda!16941 order!21409 lambda!124677))))

(assert (=> d!1077958 (= (list!14368 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278299))) (list!14368 lt!1278299))))

(declare-fun lt!1278687 () Unit!56207)

(assert (=> d!1077958 (= lt!1278687 (ForallOf!738 lambda!124677 lt!1278299))))

(assert (=> d!1077958 (= (lemmaSemiInverse!1563 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278299) lt!1278687)))

(declare-fun b_lambda!108981 () Bool)

(assert (=> (not b_lambda!108981) (not d!1077958)))

(declare-fun tb!212517 () Bool)

(declare-fun t!299584 () Bool)

(assert (=> (and b!3668998 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299584) tb!212517))

(declare-fun e!2272257 () Bool)

(declare-fun b!3669821 () Bool)

(declare-fun tp!1116716 () Bool)

(assert (=> b!3669821 (= e!2272257 (and (inv!52179 (c!634353 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278299)))) tp!1116716))))

(declare-fun result!258636 () Bool)

(assert (=> tb!212517 (= result!258636 (and (inv!52180 (dynLambda!16936 (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278299))) e!2272257))))

(assert (= tb!212517 b!3669821))

(declare-fun m!4178421 () Bool)

(assert (=> b!3669821 m!4178421))

(declare-fun m!4178423 () Bool)

(assert (=> tb!212517 m!4178423))

(assert (=> d!1077958 t!299584))

(declare-fun b_and!273263 () Bool)

(assert (= b_and!273255 (and (=> t!299584 result!258636) b_and!273263)))

(declare-fun t!299586 () Bool)

(declare-fun tb!212519 () Bool)

(assert (=> (and b!3668981 (= (toChars!7969 (transformation!5814 (rule!8636 token!511))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299586) tb!212519))

(declare-fun result!258638 () Bool)

(assert (= result!258638 result!258636))

(assert (=> d!1077958 t!299586))

(declare-fun b_and!273265 () Bool)

(assert (= b_and!273257 (and (=> t!299586 result!258638) b_and!273265)))

(declare-fun tb!212521 () Bool)

(declare-fun t!299588 () Bool)

(assert (=> (and b!3669008 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299588) tb!212521))

(declare-fun result!258640 () Bool)

(assert (= result!258640 result!258636))

(assert (=> d!1077958 t!299588))

(declare-fun b_and!273267 () Bool)

(assert (= b_and!273259 (and (=> t!299588 result!258640) b_and!273267)))

(declare-fun tb!212523 () Bool)

(declare-fun t!299590 () Bool)

(assert (=> (and b!3669002 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299590) tb!212523))

(declare-fun result!258642 () Bool)

(assert (= result!258642 result!258636))

(assert (=> d!1077958 t!299590))

(declare-fun b_and!273269 () Bool)

(assert (= b_and!273261 (and (=> t!299590 result!258642) b_and!273269)))

(declare-fun b_lambda!108983 () Bool)

(assert (=> (not b_lambda!108983) (not d!1077958)))

(declare-fun tb!212525 () Bool)

(declare-fun t!299592 () Bool)

(assert (=> (and b!3668998 (= (toValue!8110 (transformation!5814 (h!44115 rules!3307))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299592) tb!212525))

(declare-fun result!258644 () Bool)

(assert (=> tb!212525 (= result!258644 (inv!21 (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278299)))))

(declare-fun m!4178425 () Bool)

(assert (=> tb!212525 m!4178425))

(assert (=> d!1077958 t!299592))

(declare-fun b_and!273271 () Bool)

(assert (= b_and!273247 (and (=> t!299592 result!258644) b_and!273271)))

(declare-fun t!299594 () Bool)

(declare-fun tb!212527 () Bool)

(assert (=> (and b!3668981 (= (toValue!8110 (transformation!5814 (rule!8636 token!511))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299594) tb!212527))

(declare-fun result!258646 () Bool)

(assert (= result!258646 result!258644))

(assert (=> d!1077958 t!299594))

(declare-fun b_and!273273 () Bool)

(assert (= b_and!273249 (and (=> t!299594 result!258646) b_and!273273)))

(declare-fun t!299596 () Bool)

(declare-fun tb!212529 () Bool)

(assert (=> (and b!3669008 (= (toValue!8110 (transformation!5814 anOtherTypeRule!33)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299596) tb!212529))

(declare-fun result!258648 () Bool)

(assert (= result!258648 result!258644))

(assert (=> d!1077958 t!299596))

(declare-fun b_and!273275 () Bool)

(assert (= b_and!273251 (and (=> t!299596 result!258648) b_and!273275)))

(declare-fun t!299598 () Bool)

(declare-fun tb!212531 () Bool)

(assert (=> (and b!3669002 (= (toValue!8110 (transformation!5814 rule!403)) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299598) tb!212531))

(declare-fun result!258650 () Bool)

(assert (= result!258650 result!258644))

(assert (=> d!1077958 t!299598))

(declare-fun b_and!273277 () Bool)

(assert (= b_and!273253 (and (=> t!299598 result!258650) b_and!273277)))

(declare-fun m!4178427 () Bool)

(assert (=> d!1077958 m!4178427))

(declare-fun m!4178429 () Bool)

(assert (=> d!1077958 m!4178429))

(declare-fun m!4178431 () Bool)

(assert (=> d!1077958 m!4178431))

(declare-fun m!4178433 () Bool)

(assert (=> d!1077958 m!4178433))

(assert (=> d!1077958 m!4178429))

(assert (=> d!1077958 m!4178433))

(declare-fun m!4178435 () Bool)

(assert (=> d!1077958 m!4178435))

(assert (=> b!3668994 d!1077958))

(declare-fun d!1077960 () Bool)

(assert (=> d!1077960 (= (seqFromList!4363 lt!1278296) (fromListB!2017 lt!1278296))))

(declare-fun bs!573144 () Bool)

(assert (= bs!573144 d!1077960))

(declare-fun m!4178437 () Bool)

(assert (=> bs!573144 m!4178437))

(assert (=> b!3668994 d!1077960))

(declare-fun d!1077962 () Bool)

(assert (=> d!1077962 (= (apply!9316 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))) lt!1278299) (dynLambda!16937 (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279)))) lt!1278299))))

(declare-fun b_lambda!108985 () Bool)

(assert (=> (not b_lambda!108985) (not d!1077962)))

(assert (=> d!1077962 t!299592))

(declare-fun b_and!273279 () Bool)

(assert (= b_and!273271 (and (=> t!299592 result!258644) b_and!273279)))

(assert (=> d!1077962 t!299594))

(declare-fun b_and!273281 () Bool)

(assert (= b_and!273273 (and (=> t!299594 result!258646) b_and!273281)))

(assert (=> d!1077962 t!299596))

(declare-fun b_and!273283 () Bool)

(assert (= b_and!273275 (and (=> t!299596 result!258648) b_and!273283)))

(assert (=> d!1077962 t!299598))

(declare-fun b_and!273285 () Bool)

(assert (= b_and!273277 (and (=> t!299598 result!258650) b_and!273285)))

(assert (=> d!1077962 m!4178433))

(assert (=> b!3668994 d!1077962))

(declare-fun d!1077964 () Bool)

(assert (=> d!1077964 (= (isEmpty!22962 suffix!1395) ((_ is Nil!38694) suffix!1395))))

(assert (=> b!3668978 d!1077964))

(declare-fun d!1077966 () Bool)

(assert (=> d!1077966 (not (matchR!5142 (regex!5814 rule!403) lt!1278296))))

(declare-fun lt!1278690 () Unit!56207)

(declare-fun choose!21821 (LexerInterface!5403 List!38819 Rule!11428 List!38818 List!38818 List!38818 Rule!11428) Unit!56207)

(assert (=> d!1077966 (= lt!1278690 (choose!21821 thiss!23823 rules!3307 (rule!8636 (_1!22416 lt!1278279)) lt!1278291 lt!1278285 lt!1278296 rule!403))))

(assert (=> d!1077966 (isPrefix!3177 lt!1278291 lt!1278285)))

(assert (=> d!1077966 (= (lemmaMaxPrefixOutputsMaxPrefix!356 thiss!23823 rules!3307 (rule!8636 (_1!22416 lt!1278279)) lt!1278291 lt!1278285 lt!1278296 rule!403) lt!1278690)))

(declare-fun bs!573145 () Bool)

(assert (= bs!573145 d!1077966))

(assert (=> bs!573145 m!4177367))

(declare-fun m!4178439 () Bool)

(assert (=> bs!573145 m!4178439))

(assert (=> bs!573145 m!4177325))

(assert (=> b!3668995 d!1077966))

(declare-fun b!3669826 () Bool)

(declare-fun e!2272261 () Bool)

(declare-fun tp!1116719 () Bool)

(assert (=> b!3669826 (= e!2272261 (and tp_is_empty!18229 tp!1116719))))

(assert (=> b!3668958 (= tp!1116654 e!2272261)))

(assert (= (and b!3668958 ((_ is Cons!38694) (originalCharacters!6528 token!511))) b!3669826))

(declare-fun b!3669837 () Bool)

(declare-fun e!2272264 () Bool)

(assert (=> b!3669837 (= e!2272264 tp_is_empty!18229)))

(declare-fun b!3669838 () Bool)

(declare-fun tp!1116733 () Bool)

(declare-fun tp!1116732 () Bool)

(assert (=> b!3669838 (= e!2272264 (and tp!1116733 tp!1116732))))

(assert (=> b!3668971 (= tp!1116656 e!2272264)))

(declare-fun b!3669840 () Bool)

(declare-fun tp!1116730 () Bool)

(declare-fun tp!1116731 () Bool)

(assert (=> b!3669840 (= e!2272264 (and tp!1116730 tp!1116731))))

(declare-fun b!3669839 () Bool)

(declare-fun tp!1116734 () Bool)

(assert (=> b!3669839 (= e!2272264 tp!1116734)))

(assert (= (and b!3668971 ((_ is ElementMatch!10573) (regex!5814 anOtherTypeRule!33))) b!3669837))

(assert (= (and b!3668971 ((_ is Concat!16618) (regex!5814 anOtherTypeRule!33))) b!3669838))

(assert (= (and b!3668971 ((_ is Star!10573) (regex!5814 anOtherTypeRule!33))) b!3669839))

(assert (= (and b!3668971 ((_ is Union!10573) (regex!5814 anOtherTypeRule!33))) b!3669840))

(declare-fun b!3669841 () Bool)

(declare-fun e!2272265 () Bool)

(assert (=> b!3669841 (= e!2272265 tp_is_empty!18229)))

(declare-fun b!3669842 () Bool)

(declare-fun tp!1116738 () Bool)

(declare-fun tp!1116737 () Bool)

(assert (=> b!3669842 (= e!2272265 (and tp!1116738 tp!1116737))))

(assert (=> b!3668966 (= tp!1116649 e!2272265)))

(declare-fun b!3669844 () Bool)

(declare-fun tp!1116735 () Bool)

(declare-fun tp!1116736 () Bool)

(assert (=> b!3669844 (= e!2272265 (and tp!1116735 tp!1116736))))

(declare-fun b!3669843 () Bool)

(declare-fun tp!1116739 () Bool)

(assert (=> b!3669843 (= e!2272265 tp!1116739)))

(assert (= (and b!3668966 ((_ is ElementMatch!10573) (regex!5814 (h!44115 rules!3307)))) b!3669841))

(assert (= (and b!3668966 ((_ is Concat!16618) (regex!5814 (h!44115 rules!3307)))) b!3669842))

(assert (= (and b!3668966 ((_ is Star!10573) (regex!5814 (h!44115 rules!3307)))) b!3669843))

(assert (= (and b!3668966 ((_ is Union!10573) (regex!5814 (h!44115 rules!3307)))) b!3669844))

(declare-fun b!3669845 () Bool)

(declare-fun e!2272266 () Bool)

(assert (=> b!3669845 (= e!2272266 tp_is_empty!18229)))

(declare-fun b!3669846 () Bool)

(declare-fun tp!1116743 () Bool)

(declare-fun tp!1116742 () Bool)

(assert (=> b!3669846 (= e!2272266 (and tp!1116743 tp!1116742))))

(assert (=> b!3668999 (= tp!1116658 e!2272266)))

(declare-fun b!3669848 () Bool)

(declare-fun tp!1116740 () Bool)

(declare-fun tp!1116741 () Bool)

(assert (=> b!3669848 (= e!2272266 (and tp!1116740 tp!1116741))))

(declare-fun b!3669847 () Bool)

(declare-fun tp!1116744 () Bool)

(assert (=> b!3669847 (= e!2272266 tp!1116744)))

(assert (= (and b!3668999 ((_ is ElementMatch!10573) (regex!5814 (rule!8636 token!511)))) b!3669845))

(assert (= (and b!3668999 ((_ is Concat!16618) (regex!5814 (rule!8636 token!511)))) b!3669846))

(assert (= (and b!3668999 ((_ is Star!10573) (regex!5814 (rule!8636 token!511)))) b!3669847))

(assert (= (and b!3668999 ((_ is Union!10573) (regex!5814 (rule!8636 token!511)))) b!3669848))

(declare-fun b!3669859 () Bool)

(declare-fun b_free!96933 () Bool)

(declare-fun b_next!97637 () Bool)

(assert (=> b!3669859 (= b_free!96933 (not b_next!97637))))

(declare-fun tb!212533 () Bool)

(declare-fun t!299600 () Bool)

(assert (=> (and b!3669859 (= (toValue!8110 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299600) tb!212533))

(declare-fun result!258658 () Bool)

(assert (= result!258658 result!258558))

(assert (=> d!1077914 t!299600))

(declare-fun tb!212535 () Bool)

(declare-fun t!299602 () Bool)

(assert (=> (and b!3669859 (= (toValue!8110 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299602) tb!212535))

(declare-fun result!258660 () Bool)

(assert (= result!258660 result!258548))

(assert (=> d!1077796 t!299602))

(declare-fun t!299604 () Bool)

(declare-fun tb!212537 () Bool)

(assert (=> (and b!3669859 (= (toValue!8110 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299604) tb!212537))

(declare-fun result!258662 () Bool)

(assert (= result!258662 result!258620))

(assert (=> d!1077826 t!299604))

(assert (=> d!1077826 t!299600))

(declare-fun tb!212539 () Bool)

(declare-fun t!299606 () Bool)

(assert (=> (and b!3669859 (= (toValue!8110 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toValue!8110 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299606) tb!212539))

(declare-fun result!258664 () Bool)

(assert (= result!258664 result!258644))

(assert (=> d!1077958 t!299606))

(assert (=> d!1077962 t!299606))

(assert (=> d!1077822 t!299600))

(declare-fun tp!1116753 () Bool)

(declare-fun b_and!273287 () Bool)

(assert (=> b!3669859 (= tp!1116753 (and (=> t!299602 result!258660) (=> t!299604 result!258662) (=> t!299600 result!258658) (=> t!299606 result!258664) b_and!273287))))

(declare-fun b_free!96935 () Bool)

(declare-fun b_next!97639 () Bool)

(assert (=> b!3669859 (= b_free!96935 (not b_next!97639))))

(declare-fun tb!212541 () Bool)

(declare-fun t!299608 () Bool)

(assert (=> (and b!3669859 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299608) tb!212541))

(declare-fun result!258666 () Bool)

(assert (= result!258666 result!258494))

(assert (=> d!1077630 t!299608))

(declare-fun t!299610 () Bool)

(declare-fun tb!212543 () Bool)

(assert (=> (and b!3669859 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299610) tb!212543))

(declare-fun result!258668 () Bool)

(assert (= result!258668 result!258636))

(assert (=> d!1077958 t!299610))

(declare-fun t!299612 () Bool)

(declare-fun tb!212545 () Bool)

(assert (=> (and b!3669859 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 token!511)))) t!299612) tb!212545))

(declare-fun result!258670 () Bool)

(assert (= result!258670 result!258540))

(assert (=> b!3669804 t!299612))

(declare-fun tb!212547 () Bool)

(declare-fun t!299614 () Bool)

(assert (=> (and b!3669859 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 (_1!22416 lt!1278279))))) t!299614) tb!212547))

(declare-fun result!258672 () Bool)

(assert (= result!258672 result!258628))

(assert (=> d!1077914 t!299614))

(assert (=> d!1077756 t!299612))

(declare-fun tp!1116754 () Bool)

(declare-fun b_and!273289 () Bool)

(assert (=> b!3669859 (= tp!1116754 (and (=> t!299610 result!258668) (=> t!299608 result!258666) (=> t!299614 result!258672) (=> t!299612 result!258670) b_and!273289))))

(declare-fun e!2272276 () Bool)

(assert (=> b!3669859 (= e!2272276 (and tp!1116753 tp!1116754))))

(declare-fun b!3669858 () Bool)

(declare-fun tp!1116755 () Bool)

(declare-fun e!2272277 () Bool)

(assert (=> b!3669858 (= e!2272277 (and tp!1116755 (inv!52172 (tag!6602 (h!44115 (t!299454 rules!3307)))) (inv!52175 (transformation!5814 (h!44115 (t!299454 rules!3307)))) e!2272276))))

(declare-fun b!3669857 () Bool)

(declare-fun e!2272275 () Bool)

(declare-fun tp!1116756 () Bool)

(assert (=> b!3669857 (= e!2272275 (and e!2272277 tp!1116756))))

(assert (=> b!3668973 (= tp!1116651 e!2272275)))

(assert (= b!3669858 b!3669859))

(assert (= b!3669857 b!3669858))

(assert (= (and b!3668973 ((_ is Cons!38695) (t!299454 rules!3307))) b!3669857))

(declare-fun m!4178441 () Bool)

(assert (=> b!3669858 m!4178441))

(declare-fun m!4178443 () Bool)

(assert (=> b!3669858 m!4178443))

(declare-fun b!3669860 () Bool)

(declare-fun e!2272279 () Bool)

(assert (=> b!3669860 (= e!2272279 tp_is_empty!18229)))

(declare-fun b!3669861 () Bool)

(declare-fun tp!1116760 () Bool)

(declare-fun tp!1116759 () Bool)

(assert (=> b!3669861 (= e!2272279 (and tp!1116760 tp!1116759))))

(assert (=> b!3668983 (= tp!1116652 e!2272279)))

(declare-fun b!3669863 () Bool)

(declare-fun tp!1116757 () Bool)

(declare-fun tp!1116758 () Bool)

(assert (=> b!3669863 (= e!2272279 (and tp!1116757 tp!1116758))))

(declare-fun b!3669862 () Bool)

(declare-fun tp!1116761 () Bool)

(assert (=> b!3669862 (= e!2272279 tp!1116761)))

(assert (= (and b!3668983 ((_ is ElementMatch!10573) (regex!5814 rule!403))) b!3669860))

(assert (= (and b!3668983 ((_ is Concat!16618) (regex!5814 rule!403))) b!3669861))

(assert (= (and b!3668983 ((_ is Star!10573) (regex!5814 rule!403))) b!3669862))

(assert (= (and b!3668983 ((_ is Union!10573) (regex!5814 rule!403))) b!3669863))

(declare-fun b!3669864 () Bool)

(declare-fun e!2272280 () Bool)

(declare-fun tp!1116762 () Bool)

(assert (=> b!3669864 (= e!2272280 (and tp_is_empty!18229 tp!1116762))))

(assert (=> b!3668968 (= tp!1116646 e!2272280)))

(assert (= (and b!3668968 ((_ is Cons!38694) (t!299453 suffix!1395))) b!3669864))

(declare-fun b_lambda!108987 () Bool)

(assert (= b_lambda!108949 (or (and b!3668998 b_free!96915 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3669859 b_free!96935 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3668981 b_free!96919) (and b!3669002 b_free!96927 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3669008 b_free!96923 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) b_lambda!108987)))

(declare-fun b_lambda!108989 () Bool)

(assert (= b_lambda!108979 (or (and b!3668998 b_free!96915 (= (toChars!7969 (transformation!5814 (h!44115 rules!3307))) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3669859 b_free!96935 (= (toChars!7969 (transformation!5814 (h!44115 (t!299454 rules!3307)))) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3668981 b_free!96919) (and b!3669002 b_free!96927 (= (toChars!7969 (transformation!5814 rule!403)) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) (and b!3669008 b_free!96923 (= (toChars!7969 (transformation!5814 anOtherTypeRule!33)) (toChars!7969 (transformation!5814 (rule!8636 token!511))))) b_lambda!108989)))

(check-sat (not b!3669511) (not d!1077762) (not d!1077952) (not b!3669428) (not b!3669512) (not b!3669458) (not b!3669513) (not b!3669246) (not b!3669432) (not d!1077634) (not bm!265613) (not tb!212445) (not b!3669473) (not b_lambda!108987) (not b!3669804) (not tb!212429) (not b!3669128) (not b_lambda!108975) (not d!1077794) (not d!1077662) (not b!3669061) (not b!3669465) (not b!3669778) (not b!3669433) (not b_next!97631) (not b!3669141) b_and!273289 (not d!1077712) (not b!3669307) (not b!3669780) (not b!3669864) (not b!3669839) (not b!3669469) (not d!1077620) (not d!1077938) (not b!3669208) (not b!3669540) (not d!1077606) (not b_next!97621) (not b!3669838) (not bm!265614) (not d!1077922) (not bm!265616) (not tb!212501) (not bm!265623) (not b_lambda!108953) (not d!1077942) (not b!3669470) (not d!1077946) (not b!3669411) (not d!1077812) (not d!1077778) (not b!3669805) (not b!3669165) (not d!1077940) (not b!3669300) (not bm!265615) (not b!3669347) (not b!3669172) (not b!3669400) (not b_lambda!108951) (not d!1077824) (not b!3669414) (not d!1077768) (not d!1077932) (not d!1077782) (not d!1077930) (not b!3669062) (not b!3669245) (not d!1077632) (not b!3669202) (not d!1077912) (not b!3669813) (not b!3669426) (not d!1077804) (not b!3669439) (not d!1077792) (not b!3669514) (not b!3669467) (not b!3669862) (not d!1077920) (not b!3669430) (not b!3669168) (not b!3669171) (not d!1077928) (not b!3669781) (not b!3669468) (not b_lambda!108935) (not d!1077674) (not b!3669251) (not bm!265624) (not d!1077924) (not b_lambda!108981) (not b!3669480) (not tb!212437) (not b!3669811) (not b!3669857) b_and!273263 (not b_lambda!108973) (not b!3669304) (not b_next!97623) (not b_lambda!108977) (not tb!212389) b_and!273269 (not b!3669462) (not b!3669409) (not bm!265593) (not d!1077756) (not d!1077820) (not d!1077672) b_and!273279 (not d!1077658) (not b!3669799) (not b!3669819) (not tb!212517) (not b!3669846) (not bm!265601) (not d!1077724) (not d!1077948) (not b!3669203) (not b_lambda!108985) (not b_lambda!108983) (not b!3669844) (not b!3669209) (not d!1077960) (not b!3669425) (not bm!265635) (not b!3669516) (not b!3669861) (not d!1077742) (not b_lambda!108971) (not b!3669542) (not d!1077790) (not b!3669518) (not b!3669776) (not b!3669302) (not b!3669541) (not d!1077914) (not d!1077750) (not b!3669810) (not b!3669146) (not d!1077710) (not b!3669842) (not b!3669417) (not b!3669821) (not b!3669775) tp_is_empty!18229 (not d!1077954) (not b!3669848) (not tb!212509) (not d!1077684) (not b!3669466) (not b!3669840) (not b!3669779) (not b!3669210) (not d!1077786) (not b!3669139) b_and!273285 (not d!1077602) (not b!3669843) (not b!3669125) (not b!3669434) (not d!1077752) (not d!1077638) (not b!3669124) (not b!3669429) (not d!1077748) (not b!3669798) (not d!1077826) (not b!3669544) (not d!1077630) (not b!3669413) (not d!1077758) (not bm!265621) (not b!3669784) (not d!1077818) (not b!3669490) (not b_next!97625) (not b_next!97639) (not b!3669250) b_and!273283 (not b!3669816) (not b!3669847) (not d!1077764) b_and!273267 (not b_next!97617) (not d!1077774) (not b_lambda!108989) (not bm!265620) (not b_next!97619) (not b!3669447) (not d!1077746) (not b!3669169) (not b!3669410) (not b!3669220) (not b!3669777) b_and!273281 (not b!3669301) (not bm!265612) (not d!1077686) (not b!3669431) (not b_next!97627) (not b!3669252) (not d!1077788) (not b_next!97637) (not b!3669173) (not b!3669303) (not d!1077740) (not b!3669201) (not b!3669221) (not b!3669167) (not b!3669795) (not bm!265625) (not d!1077800) (not b!3669491) (not d!1077770) (not b!3669863) (not d!1077772) (not bm!265619) (not tb!212525) b_and!273287 (not b!3669354) (not b!3669826) (not d!1077754) (not b!3669170) (not b!3669140) (not d!1077918) (not d!1077950) (not b!3669519) b_and!273265 (not d!1077958) (not b!3669858) (not d!1077810) (not b!3669815) (not b!3669527) (not d!1077966) (not bm!265617) (not b_next!97629) (not b!3669517) (not b!3669412))
(check-sat (not b_next!97621) b_and!273285 (not b_next!97637) b_and!273287 b_and!273265 (not b_next!97629) (not b_next!97631) b_and!273289 b_and!273263 (not b_next!97623) b_and!273279 b_and!273269 (not b_next!97625) (not b_next!97639) b_and!273283 b_and!273267 (not b_next!97617) (not b_next!97619) b_and!273281 (not b_next!97627))
