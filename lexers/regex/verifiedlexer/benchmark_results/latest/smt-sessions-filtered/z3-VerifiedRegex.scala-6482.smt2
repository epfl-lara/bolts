; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340614 () Bool)

(assert start!340614)

(declare-fun b!3644876 () Bool)

(declare-fun b_free!95657 () Bool)

(declare-fun b_next!96361 () Bool)

(assert (=> b!3644876 (= b_free!95657 (not b_next!96361))))

(declare-fun tp!1111589 () Bool)

(declare-fun b_and!269059 () Bool)

(assert (=> b!3644876 (= tp!1111589 b_and!269059)))

(declare-fun b_free!95659 () Bool)

(declare-fun b_next!96363 () Bool)

(assert (=> b!3644876 (= b_free!95659 (not b_next!96363))))

(declare-fun tp!1111597 () Bool)

(declare-fun b_and!269061 () Bool)

(assert (=> b!3644876 (= tp!1111597 b_and!269061)))

(declare-fun b!3644885 () Bool)

(declare-fun b_free!95661 () Bool)

(declare-fun b_next!96365 () Bool)

(assert (=> b!3644885 (= b_free!95661 (not b_next!96365))))

(declare-fun tp!1111599 () Bool)

(declare-fun b_and!269063 () Bool)

(assert (=> b!3644885 (= tp!1111599 b_and!269063)))

(declare-fun b_free!95663 () Bool)

(declare-fun b_next!96367 () Bool)

(assert (=> b!3644885 (= b_free!95663 (not b_next!96367))))

(declare-fun tp!1111594 () Bool)

(declare-fun b_and!269065 () Bool)

(assert (=> b!3644885 (= tp!1111594 b_and!269065)))

(declare-fun b!3644859 () Bool)

(declare-fun b_free!95665 () Bool)

(declare-fun b_next!96369 () Bool)

(assert (=> b!3644859 (= b_free!95665 (not b_next!96369))))

(declare-fun tp!1111592 () Bool)

(declare-fun b_and!269067 () Bool)

(assert (=> b!3644859 (= tp!1111592 b_and!269067)))

(declare-fun b_free!95667 () Bool)

(declare-fun b_next!96371 () Bool)

(assert (=> b!3644859 (= b_free!95667 (not b_next!96371))))

(declare-fun tp!1111601 () Bool)

(declare-fun b_and!269069 () Bool)

(assert (=> b!3644859 (= tp!1111601 b_and!269069)))

(declare-fun b!3644866 () Bool)

(declare-fun b_free!95669 () Bool)

(declare-fun b_next!96373 () Bool)

(assert (=> b!3644866 (= b_free!95669 (not b_next!96373))))

(declare-fun tp!1111595 () Bool)

(declare-fun b_and!269071 () Bool)

(assert (=> b!3644866 (= tp!1111595 b_and!269071)))

(declare-fun b_free!95671 () Bool)

(declare-fun b_next!96375 () Bool)

(assert (=> b!3644866 (= b_free!95671 (not b_next!96375))))

(declare-fun tp!1111591 () Bool)

(declare-fun b_and!269073 () Bool)

(assert (=> b!3644866 (= tp!1111591 b_and!269073)))

(declare-fun b!3644853 () Bool)

(declare-fun e!2256380 () Bool)

(declare-fun e!2256400 () Bool)

(assert (=> b!3644853 (= e!2256380 e!2256400)))

(declare-fun res!1477950 () Bool)

(assert (=> b!3644853 (=> res!1477950 e!2256400)))

(declare-datatypes ((List!38543 0))(
  ( (Nil!38419) (Cons!38419 (h!43839 (_ BitVec 16)) (t!296926 List!38543)) )
))
(declare-datatypes ((TokenValue!5974 0))(
  ( (FloatLiteralValue!11948 (text!42263 List!38543)) (TokenValueExt!5973 (__x!24165 Int)) (Broken!29870 (value!184138 List!38543)) (Object!6097) (End!5974) (Def!5974) (Underscore!5974) (Match!5974) (Else!5974) (Error!5974) (Case!5974) (If!5974) (Extends!5974) (Abstract!5974) (Class!5974) (Val!5974) (DelimiterValue!11948 (del!6034 List!38543)) (KeywordValue!5980 (value!184139 List!38543)) (CommentValue!11948 (value!184140 List!38543)) (WhitespaceValue!11948 (value!184141 List!38543)) (IndentationValue!5974 (value!184142 List!38543)) (String!43203) (Int32!5974) (Broken!29871 (value!184143 List!38543)) (Boolean!5975) (Unit!55295) (OperatorValue!5977 (op!6034 List!38543)) (IdentifierValue!11948 (value!184144 List!38543)) (IdentifierValue!11949 (value!184145 List!38543)) (WhitespaceValue!11949 (value!184146 List!38543)) (True!11948) (False!11948) (Broken!29872 (value!184147 List!38543)) (Broken!29873 (value!184148 List!38543)) (True!11949) (RightBrace!5974) (RightBracket!5974) (Colon!5974) (Null!5974) (Comma!5974) (LeftBracket!5974) (False!11949) (LeftBrace!5974) (ImaginaryLiteralValue!5974 (text!42264 List!38543)) (StringLiteralValue!17922 (value!184149 List!38543)) (EOFValue!5974 (value!184150 List!38543)) (IdentValue!5974 (value!184151 List!38543)) (DelimiterValue!11949 (value!184152 List!38543)) (DedentValue!5974 (value!184153 List!38543)) (NewLineValue!5974 (value!184154 List!38543)) (IntegerValue!17922 (value!184155 (_ BitVec 32)) (text!42265 List!38543)) (IntegerValue!17923 (value!184156 Int) (text!42266 List!38543)) (Times!5974) (Or!5974) (Equal!5974) (Minus!5974) (Broken!29874 (value!184157 List!38543)) (And!5974) (Div!5974) (LessEqual!5974) (Mod!5974) (Concat!16477) (Not!5974) (Plus!5974) (SpaceValue!5974 (value!184158 List!38543)) (IntegerValue!17924 (value!184159 Int) (text!42267 List!38543)) (StringLiteralValue!17923 (text!42268 List!38543)) (FloatLiteralValue!11949 (text!42269 List!38543)) (BytesLiteralValue!5974 (value!184160 List!38543)) (CommentValue!11949 (value!184161 List!38543)) (StringLiteralValue!17924 (value!184162 List!38543)) (ErrorTokenValue!5974 (msg!6035 List!38543)) )
))
(declare-datatypes ((C!21192 0))(
  ( (C!21193 (val!12644 Int)) )
))
(declare-datatypes ((Regex!10503 0))(
  ( (ElementMatch!10503 (c!630092 C!21192)) (Concat!16478 (regOne!21518 Regex!10503) (regTwo!21518 Regex!10503)) (EmptyExpr!10503) (Star!10503 (reg!10832 Regex!10503)) (EmptyLang!10503) (Union!10503 (regOne!21519 Regex!10503) (regTwo!21519 Regex!10503)) )
))
(declare-datatypes ((String!43204 0))(
  ( (String!43205 (value!184163 String)) )
))
(declare-datatypes ((List!38544 0))(
  ( (Nil!38420) (Cons!38420 (h!43840 C!21192) (t!296927 List!38544)) )
))
(declare-datatypes ((IArray!23475 0))(
  ( (IArray!23476 (innerList!11795 List!38544)) )
))
(declare-datatypes ((Conc!11735 0))(
  ( (Node!11735 (left!29997 Conc!11735) (right!30327 Conc!11735) (csize!23700 Int) (cheight!11946 Int)) (Leaf!18218 (xs!14937 IArray!23475) (csize!23701 Int)) (Empty!11735) )
))
(declare-datatypes ((BalanceConc!23084 0))(
  ( (BalanceConc!23085 (c!630093 Conc!11735)) )
))
(declare-datatypes ((TokenValueInjection!11376 0))(
  ( (TokenValueInjection!11377 (toValue!8036 Int) (toChars!7895 Int)) )
))
(declare-datatypes ((Rule!11288 0))(
  ( (Rule!11289 (regex!5744 Regex!10503) (tag!6500 String!43204) (isSeparator!5744 Bool) (transformation!5744 TokenValueInjection!11376)) )
))
(declare-datatypes ((Token!10854 0))(
  ( (Token!10855 (value!184164 TokenValue!5974) (rule!8534 Rule!11288) (size!29327 Int) (originalCharacters!6458 List!38544)) )
))
(declare-datatypes ((tuple2!38292 0))(
  ( (tuple2!38293 (_1!22280 Token!10854) (_2!22280 List!38544)) )
))
(declare-datatypes ((Option!8116 0))(
  ( (None!8115) (Some!8115 (v!37959 tuple2!38292)) )
))
(declare-fun lt!1262781 () Option!8116)

(declare-fun lt!1262762 () tuple2!38292)

(declare-fun lt!1262771 () List!38544)

(assert (=> b!3644853 (= res!1477950 (or (not (= lt!1262771 (_2!22280 lt!1262762))) (not (= lt!1262781 (Some!8115 (tuple2!38293 (_1!22280 lt!1262762) lt!1262771))))))))

(assert (=> b!3644853 (= (_2!22280 lt!1262762) lt!1262771)))

(declare-fun lt!1262754 () List!38544)

(declare-datatypes ((Unit!55296 0))(
  ( (Unit!55297) )
))
(declare-fun lt!1262766 () Unit!55296)

(declare-fun lt!1262778 () List!38544)

(declare-fun lemmaSamePrefixThenSameSuffix!1434 (List!38544 List!38544 List!38544 List!38544 List!38544) Unit!55296)

(assert (=> b!3644853 (= lt!1262766 (lemmaSamePrefixThenSameSuffix!1434 lt!1262778 (_2!22280 lt!1262762) lt!1262778 lt!1262771 lt!1262754))))

(declare-fun getSuffix!1660 (List!38544 List!38544) List!38544)

(assert (=> b!3644853 (= lt!1262771 (getSuffix!1660 lt!1262754 lt!1262778))))

(declare-fun lt!1262763 () Int)

(declare-fun lt!1262767 () TokenValue!5974)

(assert (=> b!3644853 (= lt!1262781 (Some!8115 (tuple2!38293 (Token!10855 lt!1262767 (rule!8534 (_1!22280 lt!1262762)) lt!1262763 lt!1262778) (_2!22280 lt!1262762))))))

(declare-datatypes ((LexerInterface!5333 0))(
  ( (LexerInterfaceExt!5330 (__x!24166 Int)) (Lexer!5331) )
))
(declare-fun thiss!23823 () LexerInterface!5333)

(declare-fun maxPrefixOneRule!2005 (LexerInterface!5333 Rule!11288 List!38544) Option!8116)

(assert (=> b!3644853 (= lt!1262781 (maxPrefixOneRule!2005 thiss!23823 (rule!8534 (_1!22280 lt!1262762)) lt!1262754))))

(declare-fun size!29328 (List!38544) Int)

(assert (=> b!3644853 (= lt!1262763 (size!29328 lt!1262778))))

(declare-fun apply!9246 (TokenValueInjection!11376 BalanceConc!23084) TokenValue!5974)

(declare-fun seqFromList!4293 (List!38544) BalanceConc!23084)

(assert (=> b!3644853 (= lt!1262767 (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) (seqFromList!4293 lt!1262778)))))

(declare-fun lt!1262757 () Unit!55296)

(declare-datatypes ((List!38545 0))(
  ( (Nil!38421) (Cons!38421 (h!43841 Rule!11288) (t!296928 List!38545)) )
))
(declare-fun rules!3307 () List!38545)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1061 (LexerInterface!5333 List!38545 List!38544 List!38544 List!38544 Rule!11288) Unit!55296)

(assert (=> b!3644853 (= lt!1262757 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1061 thiss!23823 rules!3307 lt!1262778 lt!1262754 (_2!22280 lt!1262762) (rule!8534 (_1!22280 lt!1262762))))))

(declare-fun b!3644854 () Bool)

(declare-fun e!2256399 () Bool)

(assert (=> b!3644854 (= e!2256400 e!2256399)))

(declare-fun res!1477957 () Bool)

(assert (=> b!3644854 (=> res!1477957 e!2256399)))

(declare-fun rule!403 () Rule!11288)

(assert (=> b!3644854 (= res!1477957 (or (isSeparator!5744 rule!403) (not (isSeparator!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(declare-fun lt!1262764 () Unit!55296)

(declare-fun e!2256393 () Unit!55296)

(assert (=> b!3644854 (= lt!1262764 e!2256393)))

(declare-fun c!630091 () Bool)

(declare-fun lt!1262758 () Bool)

(assert (=> b!3644854 (= c!630091 lt!1262758)))

(declare-fun lt!1262761 () List!38544)

(declare-fun lt!1262777 () C!21192)

(declare-fun contains!7553 (List!38544 C!21192) Bool)

(assert (=> b!3644854 (= lt!1262758 (not (contains!7553 lt!1262761 lt!1262777)))))

(declare-fun head!7750 (List!38544) C!21192)

(assert (=> b!3644854 (= lt!1262777 (head!7750 lt!1262778))))

(declare-fun b!3644855 () Bool)

(declare-fun e!2256396 () Bool)

(declare-fun e!2256402 () Bool)

(assert (=> b!3644855 (= e!2256396 e!2256402)))

(declare-fun res!1477955 () Bool)

(assert (=> b!3644855 (=> res!1477955 e!2256402)))

(declare-fun lt!1262756 () C!21192)

(assert (=> b!3644855 (= res!1477955 (contains!7553 lt!1262761 lt!1262756))))

(declare-fun suffix!1395 () List!38544)

(assert (=> b!3644855 (= lt!1262756 (head!7750 suffix!1395))))

(declare-fun usedCharacters!956 (Regex!10503) List!38544)

(assert (=> b!3644855 (= lt!1262761 (usedCharacters!956 (regex!5744 rule!403)))))

(declare-fun token!511 () Token!10854)

(declare-fun e!2256397 () Bool)

(declare-fun e!2256395 () Bool)

(declare-fun b!3644856 () Bool)

(declare-fun tp!1111588 () Bool)

(declare-fun inv!51857 (String!43204) Bool)

(declare-fun inv!51860 (TokenValueInjection!11376) Bool)

(assert (=> b!3644856 (= e!2256395 (and tp!1111588 (inv!51857 (tag!6500 (rule!8534 token!511))) (inv!51860 (transformation!5744 (rule!8534 token!511))) e!2256397))))

(declare-fun b!3644857 () Bool)

(declare-fun Unit!55298 () Unit!55296)

(assert (=> b!3644857 (= e!2256393 Unit!55298)))

(declare-fun b!3644858 () Bool)

(declare-fun res!1477952 () Bool)

(assert (=> b!3644858 (=> res!1477952 e!2256402)))

(declare-fun anOtherTypeRule!33 () Rule!11288)

(assert (=> b!3644858 (= res!1477952 (not (contains!7553 (usedCharacters!956 (regex!5744 anOtherTypeRule!33)) lt!1262756)))))

(assert (=> b!3644859 (= e!2256397 (and tp!1111592 tp!1111601))))

(declare-fun b!3644860 () Bool)

(declare-fun e!2256387 () Bool)

(assert (=> b!3644860 (= e!2256387 (not e!2256396))))

(declare-fun res!1477942 () Bool)

(assert (=> b!3644860 (=> res!1477942 e!2256396)))

(declare-fun lt!1262774 () List!38544)

(declare-fun matchR!5072 (Regex!10503 List!38544) Bool)

(assert (=> b!3644860 (= res!1477942 (not (matchR!5072 (regex!5744 rule!403) lt!1262774)))))

(declare-fun ruleValid!2008 (LexerInterface!5333 Rule!11288) Bool)

(assert (=> b!3644860 (ruleValid!2008 thiss!23823 rule!403)))

(declare-fun lt!1262760 () Unit!55296)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1162 (LexerInterface!5333 Rule!11288 List!38545) Unit!55296)

(assert (=> b!3644860 (= lt!1262760 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1162 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3644861 () Bool)

(declare-fun e!2256384 () Bool)

(assert (=> b!3644861 (= e!2256402 e!2256384)))

(declare-fun res!1477940 () Bool)

(assert (=> b!3644861 (=> res!1477940 e!2256384)))

(declare-fun isPrefix!3107 (List!38544 List!38544) Bool)

(assert (=> b!3644861 (= res!1477940 (not (isPrefix!3107 lt!1262778 lt!1262754)))))

(declare-fun ++!9560 (List!38544 List!38544) List!38544)

(assert (=> b!3644861 (isPrefix!3107 lt!1262778 (++!9560 lt!1262778 (_2!22280 lt!1262762)))))

(declare-fun lt!1262779 () Unit!55296)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2026 (List!38544 List!38544) Unit!55296)

(assert (=> b!3644861 (= lt!1262779 (lemmaConcatTwoListThenFirstIsPrefix!2026 lt!1262778 (_2!22280 lt!1262762)))))

(declare-fun lt!1262780 () BalanceConc!23084)

(declare-fun list!14230 (BalanceConc!23084) List!38544)

(assert (=> b!3644861 (= lt!1262778 (list!14230 lt!1262780))))

(declare-fun charsOf!3758 (Token!10854) BalanceConc!23084)

(assert (=> b!3644861 (= lt!1262780 (charsOf!3758 (_1!22280 lt!1262762)))))

(declare-fun e!2256386 () Bool)

(assert (=> b!3644861 e!2256386))

(declare-fun res!1477943 () Bool)

(assert (=> b!3644861 (=> (not res!1477943) (not e!2256386))))

(declare-datatypes ((Option!8117 0))(
  ( (None!8116) (Some!8116 (v!37960 Rule!11288)) )
))
(declare-fun lt!1262772 () Option!8117)

(declare-fun isDefined!6348 (Option!8117) Bool)

(assert (=> b!3644861 (= res!1477943 (isDefined!6348 lt!1262772))))

(declare-fun getRuleFromTag!1348 (LexerInterface!5333 List!38545 String!43204) Option!8117)

(assert (=> b!3644861 (= lt!1262772 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun lt!1262776 () Unit!55296)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1348 (LexerInterface!5333 List!38545 List!38544 Token!10854) Unit!55296)

(assert (=> b!3644861 (= lt!1262776 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1348 thiss!23823 rules!3307 lt!1262754 (_1!22280 lt!1262762)))))

(declare-fun lt!1262753 () Option!8116)

(declare-fun get!12598 (Option!8116) tuple2!38292)

(assert (=> b!3644861 (= lt!1262762 (get!12598 lt!1262753))))

(declare-fun lt!1262782 () Unit!55296)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1011 (LexerInterface!5333 List!38545 List!38544 List!38544) Unit!55296)

(assert (=> b!3644861 (= lt!1262782 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1011 thiss!23823 rules!3307 lt!1262774 suffix!1395))))

(declare-fun maxPrefix!2867 (LexerInterface!5333 List!38545 List!38544) Option!8116)

(assert (=> b!3644861 (= lt!1262753 (maxPrefix!2867 thiss!23823 rules!3307 lt!1262754))))

(assert (=> b!3644861 (isPrefix!3107 lt!1262774 lt!1262754)))

(declare-fun lt!1262752 () Unit!55296)

(assert (=> b!3644861 (= lt!1262752 (lemmaConcatTwoListThenFirstIsPrefix!2026 lt!1262774 suffix!1395))))

(assert (=> b!3644861 (= lt!1262754 (++!9560 lt!1262774 suffix!1395))))

(declare-fun b!3644862 () Bool)

(declare-fun res!1477945 () Bool)

(declare-fun e!2256405 () Bool)

(assert (=> b!3644862 (=> (not res!1477945) (not e!2256405))))

(assert (=> b!3644862 (= res!1477945 (not (= (isSeparator!5744 anOtherTypeRule!33) (isSeparator!5744 rule!403))))))

(declare-fun b!3644863 () Bool)

(declare-fun res!1477935 () Bool)

(assert (=> b!3644863 (=> (not res!1477935) (not e!2256387))))

(assert (=> b!3644863 (= res!1477935 (= (rule!8534 token!511) rule!403))))

(declare-fun b!3644864 () Bool)

(declare-fun res!1477947 () Bool)

(assert (=> b!3644864 (=> res!1477947 e!2256399)))

(assert (=> b!3644864 (= res!1477947 (not (contains!7553 lt!1262774 lt!1262777)))))

(declare-fun b!3644865 () Bool)

(declare-fun Unit!55299 () Unit!55296)

(assert (=> b!3644865 (= e!2256393 Unit!55299)))

(declare-fun lt!1262773 () Unit!55296)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!692 (Regex!10503 List!38544 C!21192) Unit!55296)

(assert (=> b!3644865 (= lt!1262773 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!692 (regex!5744 rule!403) lt!1262774 lt!1262777))))

(assert (=> b!3644865 false))

(declare-fun e!2256394 () Bool)

(assert (=> b!3644866 (= e!2256394 (and tp!1111595 tp!1111591))))

(declare-fun b!3644867 () Bool)

(declare-fun e!2256383 () Bool)

(assert (=> b!3644867 (= e!2256383 e!2256387)))

(declare-fun res!1477948 () Bool)

(assert (=> b!3644867 (=> (not res!1477948) (not e!2256387))))

(declare-fun lt!1262775 () tuple2!38292)

(assert (=> b!3644867 (= res!1477948 (= (_1!22280 lt!1262775) token!511))))

(declare-fun lt!1262759 () Option!8116)

(assert (=> b!3644867 (= lt!1262775 (get!12598 lt!1262759))))

(declare-fun b!3644868 () Bool)

(declare-fun res!1477956 () Bool)

(assert (=> b!3644868 (=> (not res!1477956) (not e!2256405))))

(declare-fun rulesInvariant!4730 (LexerInterface!5333 List!38545) Bool)

(assert (=> b!3644868 (= res!1477956 (rulesInvariant!4730 thiss!23823 rules!3307))))

(declare-fun b!3644869 () Bool)

(declare-fun res!1477939 () Bool)

(assert (=> b!3644869 (=> (not res!1477939) (not e!2256405))))

(declare-fun contains!7554 (List!38545 Rule!11288) Bool)

(assert (=> b!3644869 (= res!1477939 (contains!7554 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3644870 () Bool)

(declare-fun res!1477953 () Bool)

(assert (=> b!3644870 (=> (not res!1477953) (not e!2256387))))

(declare-fun isEmpty!22756 (List!38544) Bool)

(assert (=> b!3644870 (= res!1477953 (isEmpty!22756 (_2!22280 lt!1262775)))))

(declare-fun b!3644871 () Bool)

(declare-fun e!2256392 () Bool)

(assert (=> b!3644871 (= e!2256386 e!2256392)))

(declare-fun res!1477944 () Bool)

(assert (=> b!3644871 (=> (not res!1477944) (not e!2256392))))

(declare-fun lt!1262765 () Rule!11288)

(assert (=> b!3644871 (= res!1477944 (matchR!5072 (regex!5744 lt!1262765) (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))))))

(declare-fun get!12599 (Option!8117) Rule!11288)

(assert (=> b!3644871 (= lt!1262765 (get!12599 lt!1262772))))

(declare-fun b!3644872 () Bool)

(declare-fun e!2256408 () Bool)

(assert (=> b!3644872 (= e!2256408 (contains!7553 lt!1262778 lt!1262777))))

(declare-fun b!3644873 () Bool)

(declare-fun res!1477954 () Bool)

(assert (=> b!3644873 (=> (not res!1477954) (not e!2256405))))

(assert (=> b!3644873 (= res!1477954 (contains!7554 rules!3307 rule!403))))

(declare-fun b!3644874 () Bool)

(declare-fun e!2256385 () Bool)

(declare-fun e!2256390 () Bool)

(declare-fun tp!1111593 () Bool)

(assert (=> b!3644874 (= e!2256385 (and e!2256390 tp!1111593))))

(declare-fun b!3644875 () Bool)

(declare-fun res!1477949 () Bool)

(assert (=> b!3644875 (=> res!1477949 e!2256402)))

(declare-fun sepAndNonSepRulesDisjointChars!1912 (List!38545 List!38545) Bool)

(assert (=> b!3644875 (= res!1477949 (not (sepAndNonSepRulesDisjointChars!1912 rules!3307 rules!3307)))))

(declare-fun e!2256398 () Bool)

(assert (=> b!3644876 (= e!2256398 (and tp!1111589 tp!1111597))))

(declare-fun tp!1111596 () Bool)

(declare-fun e!2256391 () Bool)

(declare-fun b!3644877 () Bool)

(assert (=> b!3644877 (= e!2256391 (and tp!1111596 (inv!51857 (tag!6500 anOtherTypeRule!33)) (inv!51860 (transformation!5744 anOtherTypeRule!33)) e!2256394))))

(declare-fun b!3644878 () Bool)

(assert (=> b!3644878 (= e!2256399 e!2256408)))

(declare-fun res!1477951 () Bool)

(assert (=> b!3644878 (=> res!1477951 e!2256408)))

(declare-fun validRegex!4811 (Regex!10503) Bool)

(assert (=> b!3644878 (= res!1477951 (not (validRegex!4811 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> b!3644878 (not (contains!7553 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262777))))

(declare-fun lt!1262768 () Unit!55296)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!272 (LexerInterface!5333 List!38545 List!38545 Rule!11288 Rule!11288 C!21192) Unit!55296)

(assert (=> b!3644878 (= lt!1262768 (lemmaSepRuleNotContainsCharContainedInANonSepRule!272 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8534 (_1!22280 lt!1262762)) lt!1262777))))

(declare-fun b!3644879 () Bool)

(declare-fun tp!1111590 () Bool)

(assert (=> b!3644879 (= e!2256390 (and tp!1111590 (inv!51857 (tag!6500 (h!43841 rules!3307))) (inv!51860 (transformation!5744 (h!43841 rules!3307))) e!2256398))))

(declare-fun b!3644880 () Bool)

(assert (=> b!3644880 (= e!2256392 (= (rule!8534 (_1!22280 lt!1262762)) lt!1262765))))

(declare-fun b!3644881 () Bool)

(declare-fun res!1477936 () Bool)

(assert (=> b!3644881 (=> (not res!1477936) (not e!2256405))))

(declare-fun isEmpty!22757 (List!38545) Bool)

(assert (=> b!3644881 (= res!1477936 (not (isEmpty!22757 rules!3307)))))

(declare-fun b!3644882 () Bool)

(assert (=> b!3644882 (= e!2256405 e!2256383)))

(declare-fun res!1477959 () Bool)

(assert (=> b!3644882 (=> (not res!1477959) (not e!2256383))))

(declare-fun isDefined!6349 (Option!8116) Bool)

(assert (=> b!3644882 (= res!1477959 (isDefined!6349 lt!1262759))))

(assert (=> b!3644882 (= lt!1262759 (maxPrefix!2867 thiss!23823 rules!3307 lt!1262774))))

(assert (=> b!3644882 (= lt!1262774 (list!14230 (charsOf!3758 token!511)))))

(declare-fun b!3644883 () Bool)

(declare-fun e!2256403 () Bool)

(declare-fun tp_is_empty!18089 () Bool)

(declare-fun tp!1111600 () Bool)

(assert (=> b!3644883 (= e!2256403 (and tp_is_empty!18089 tp!1111600))))

(declare-fun res!1477937 () Bool)

(assert (=> start!340614 (=> (not res!1477937) (not e!2256405))))

(get-info :version)

(assert (=> start!340614 (= res!1477937 ((_ is Lexer!5331) thiss!23823))))

(assert (=> start!340614 e!2256405))

(assert (=> start!340614 e!2256385))

(assert (=> start!340614 e!2256403))

(assert (=> start!340614 true))

(declare-fun e!2256382 () Bool)

(declare-fun inv!51861 (Token!10854) Bool)

(assert (=> start!340614 (and (inv!51861 token!511) e!2256382)))

(declare-fun e!2256388 () Bool)

(assert (=> start!340614 e!2256388))

(assert (=> start!340614 e!2256391))

(declare-fun b!3644884 () Bool)

(declare-fun res!1477958 () Bool)

(assert (=> b!3644884 (=> res!1477958 e!2256399)))

(assert (=> b!3644884 (= res!1477958 lt!1262758)))

(declare-fun e!2256389 () Bool)

(assert (=> b!3644885 (= e!2256389 (and tp!1111599 tp!1111594))))

(declare-fun tp!1111598 () Bool)

(declare-fun b!3644886 () Bool)

(declare-fun inv!21 (TokenValue!5974) Bool)

(assert (=> b!3644886 (= e!2256382 (and (inv!21 (value!184164 token!511)) e!2256395 tp!1111598))))

(declare-fun b!3644887 () Bool)

(declare-fun res!1477946 () Bool)

(assert (=> b!3644887 (=> res!1477946 e!2256396)))

(assert (=> b!3644887 (= res!1477946 (isEmpty!22756 suffix!1395))))

(declare-fun b!3644888 () Bool)

(assert (=> b!3644888 (= e!2256384 e!2256380)))

(declare-fun res!1477941 () Bool)

(assert (=> b!3644888 (=> res!1477941 e!2256380)))

(declare-fun size!29329 (BalanceConc!23084) Int)

(assert (=> b!3644888 (= res!1477941 (not (= lt!1262753 (Some!8115 (tuple2!38293 (Token!10855 (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780) (rule!8534 (_1!22280 lt!1262762)) (size!29329 lt!1262780) lt!1262778) (_2!22280 lt!1262762))))))))

(declare-fun lt!1262770 () Unit!55296)

(declare-fun lemmaCharactersSize!789 (Token!10854) Unit!55296)

(assert (=> b!3644888 (= lt!1262770 (lemmaCharactersSize!789 (_1!22280 lt!1262762)))))

(declare-fun lt!1262755 () Unit!55296)

(declare-fun lemmaEqSameImage!927 (TokenValueInjection!11376 BalanceConc!23084 BalanceConc!23084) Unit!55296)

(assert (=> b!3644888 (= lt!1262755 (lemmaEqSameImage!927 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780 (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762)))))))

(declare-fun lt!1262769 () Unit!55296)

(declare-fun lemmaSemiInverse!1493 (TokenValueInjection!11376 BalanceConc!23084) Unit!55296)

(assert (=> b!3644888 (= lt!1262769 (lemmaSemiInverse!1493 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780))))

(declare-fun b!3644889 () Bool)

(declare-fun res!1477938 () Bool)

(assert (=> b!3644889 (=> res!1477938 e!2256384)))

(assert (=> b!3644889 (= res!1477938 (not (matchR!5072 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262778)))))

(declare-fun tp!1111602 () Bool)

(declare-fun b!3644890 () Bool)

(assert (=> b!3644890 (= e!2256388 (and tp!1111602 (inv!51857 (tag!6500 rule!403)) (inv!51860 (transformation!5744 rule!403)) e!2256389))))

(assert (= (and start!340614 res!1477937) b!3644881))

(assert (= (and b!3644881 res!1477936) b!3644868))

(assert (= (and b!3644868 res!1477956) b!3644873))

(assert (= (and b!3644873 res!1477954) b!3644869))

(assert (= (and b!3644869 res!1477939) b!3644862))

(assert (= (and b!3644862 res!1477945) b!3644882))

(assert (= (and b!3644882 res!1477959) b!3644867))

(assert (= (and b!3644867 res!1477948) b!3644870))

(assert (= (and b!3644870 res!1477953) b!3644863))

(assert (= (and b!3644863 res!1477935) b!3644860))

(assert (= (and b!3644860 (not res!1477942)) b!3644887))

(assert (= (and b!3644887 (not res!1477946)) b!3644855))

(assert (= (and b!3644855 (not res!1477955)) b!3644858))

(assert (= (and b!3644858 (not res!1477952)) b!3644875))

(assert (= (and b!3644875 (not res!1477949)) b!3644861))

(assert (= (and b!3644861 res!1477943) b!3644871))

(assert (= (and b!3644871 res!1477944) b!3644880))

(assert (= (and b!3644861 (not res!1477940)) b!3644889))

(assert (= (and b!3644889 (not res!1477938)) b!3644888))

(assert (= (and b!3644888 (not res!1477941)) b!3644853))

(assert (= (and b!3644853 (not res!1477950)) b!3644854))

(assert (= (and b!3644854 c!630091) b!3644865))

(assert (= (and b!3644854 (not c!630091)) b!3644857))

(assert (= (and b!3644854 (not res!1477957)) b!3644864))

(assert (= (and b!3644864 (not res!1477947)) b!3644884))

(assert (= (and b!3644884 (not res!1477958)) b!3644878))

(assert (= (and b!3644878 (not res!1477951)) b!3644872))

(assert (= b!3644879 b!3644876))

(assert (= b!3644874 b!3644879))

(assert (= (and start!340614 ((_ is Cons!38421) rules!3307)) b!3644874))

(assert (= (and start!340614 ((_ is Cons!38420) suffix!1395)) b!3644883))

(assert (= b!3644856 b!3644859))

(assert (= b!3644886 b!3644856))

(assert (= start!340614 b!3644886))

(assert (= b!3644890 b!3644885))

(assert (= start!340614 b!3644890))

(assert (= b!3644877 b!3644866))

(assert (= start!340614 b!3644877))

(declare-fun m!4148447 () Bool)

(assert (=> b!3644878 m!4148447))

(declare-fun m!4148449 () Bool)

(assert (=> b!3644878 m!4148449))

(assert (=> b!3644878 m!4148449))

(declare-fun m!4148451 () Bool)

(assert (=> b!3644878 m!4148451))

(declare-fun m!4148453 () Bool)

(assert (=> b!3644878 m!4148453))

(declare-fun m!4148455 () Bool)

(assert (=> b!3644882 m!4148455))

(declare-fun m!4148457 () Bool)

(assert (=> b!3644882 m!4148457))

(declare-fun m!4148459 () Bool)

(assert (=> b!3644882 m!4148459))

(assert (=> b!3644882 m!4148459))

(declare-fun m!4148461 () Bool)

(assert (=> b!3644882 m!4148461))

(declare-fun m!4148463 () Bool)

(assert (=> b!3644890 m!4148463))

(declare-fun m!4148465 () Bool)

(assert (=> b!3644890 m!4148465))

(declare-fun m!4148467 () Bool)

(assert (=> b!3644865 m!4148467))

(declare-fun m!4148469 () Bool)

(assert (=> b!3644888 m!4148469))

(declare-fun m!4148471 () Bool)

(assert (=> b!3644888 m!4148471))

(declare-fun m!4148473 () Bool)

(assert (=> b!3644888 m!4148473))

(assert (=> b!3644888 m!4148471))

(declare-fun m!4148475 () Bool)

(assert (=> b!3644888 m!4148475))

(declare-fun m!4148477 () Bool)

(assert (=> b!3644888 m!4148477))

(declare-fun m!4148479 () Bool)

(assert (=> b!3644888 m!4148479))

(declare-fun m!4148481 () Bool)

(assert (=> b!3644855 m!4148481))

(declare-fun m!4148483 () Bool)

(assert (=> b!3644855 m!4148483))

(declare-fun m!4148485 () Bool)

(assert (=> b!3644855 m!4148485))

(declare-fun m!4148487 () Bool)

(assert (=> b!3644864 m!4148487))

(declare-fun m!4148489 () Bool)

(assert (=> b!3644871 m!4148489))

(assert (=> b!3644871 m!4148489))

(declare-fun m!4148491 () Bool)

(assert (=> b!3644871 m!4148491))

(assert (=> b!3644871 m!4148491))

(declare-fun m!4148493 () Bool)

(assert (=> b!3644871 m!4148493))

(declare-fun m!4148495 () Bool)

(assert (=> b!3644871 m!4148495))

(declare-fun m!4148497 () Bool)

(assert (=> b!3644881 m!4148497))

(declare-fun m!4148499 () Bool)

(assert (=> b!3644879 m!4148499))

(declare-fun m!4148501 () Bool)

(assert (=> b!3644879 m!4148501))

(declare-fun m!4148503 () Bool)

(assert (=> b!3644858 m!4148503))

(assert (=> b!3644858 m!4148503))

(declare-fun m!4148505 () Bool)

(assert (=> b!3644858 m!4148505))

(declare-fun m!4148507 () Bool)

(assert (=> b!3644853 m!4148507))

(declare-fun m!4148509 () Bool)

(assert (=> b!3644853 m!4148509))

(declare-fun m!4148511 () Bool)

(assert (=> b!3644853 m!4148511))

(declare-fun m!4148513 () Bool)

(assert (=> b!3644853 m!4148513))

(declare-fun m!4148515 () Bool)

(assert (=> b!3644853 m!4148515))

(declare-fun m!4148517 () Bool)

(assert (=> b!3644853 m!4148517))

(assert (=> b!3644853 m!4148513))

(declare-fun m!4148519 () Bool)

(assert (=> b!3644853 m!4148519))

(declare-fun m!4148521 () Bool)

(assert (=> b!3644870 m!4148521))

(declare-fun m!4148523 () Bool)

(assert (=> b!3644869 m!4148523))

(declare-fun m!4148525 () Bool)

(assert (=> start!340614 m!4148525))

(declare-fun m!4148527 () Bool)

(assert (=> b!3644877 m!4148527))

(declare-fun m!4148529 () Bool)

(assert (=> b!3644877 m!4148529))

(declare-fun m!4148531 () Bool)

(assert (=> b!3644875 m!4148531))

(declare-fun m!4148533 () Bool)

(assert (=> b!3644867 m!4148533))

(declare-fun m!4148535 () Bool)

(assert (=> b!3644886 m!4148535))

(declare-fun m!4148537 () Bool)

(assert (=> b!3644856 m!4148537))

(declare-fun m!4148539 () Bool)

(assert (=> b!3644856 m!4148539))

(declare-fun m!4148541 () Bool)

(assert (=> b!3644873 m!4148541))

(declare-fun m!4148543 () Bool)

(assert (=> b!3644887 m!4148543))

(declare-fun m!4148545 () Bool)

(assert (=> b!3644861 m!4148545))

(declare-fun m!4148547 () Bool)

(assert (=> b!3644861 m!4148547))

(declare-fun m!4148549 () Bool)

(assert (=> b!3644861 m!4148549))

(declare-fun m!4148551 () Bool)

(assert (=> b!3644861 m!4148551))

(declare-fun m!4148553 () Bool)

(assert (=> b!3644861 m!4148553))

(declare-fun m!4148555 () Bool)

(assert (=> b!3644861 m!4148555))

(declare-fun m!4148557 () Bool)

(assert (=> b!3644861 m!4148557))

(declare-fun m!4148559 () Bool)

(assert (=> b!3644861 m!4148559))

(declare-fun m!4148561 () Bool)

(assert (=> b!3644861 m!4148561))

(assert (=> b!3644861 m!4148559))

(declare-fun m!4148563 () Bool)

(assert (=> b!3644861 m!4148563))

(declare-fun m!4148565 () Bool)

(assert (=> b!3644861 m!4148565))

(declare-fun m!4148567 () Bool)

(assert (=> b!3644861 m!4148567))

(declare-fun m!4148569 () Bool)

(assert (=> b!3644861 m!4148569))

(declare-fun m!4148571 () Bool)

(assert (=> b!3644861 m!4148571))

(assert (=> b!3644861 m!4148489))

(declare-fun m!4148573 () Bool)

(assert (=> b!3644868 m!4148573))

(declare-fun m!4148575 () Bool)

(assert (=> b!3644872 m!4148575))

(declare-fun m!4148577 () Bool)

(assert (=> b!3644860 m!4148577))

(declare-fun m!4148579 () Bool)

(assert (=> b!3644860 m!4148579))

(declare-fun m!4148581 () Bool)

(assert (=> b!3644860 m!4148581))

(declare-fun m!4148583 () Bool)

(assert (=> b!3644889 m!4148583))

(declare-fun m!4148585 () Bool)

(assert (=> b!3644854 m!4148585))

(declare-fun m!4148587 () Bool)

(assert (=> b!3644854 m!4148587))

(check-sat (not b!3644888) (not start!340614) (not b!3644861) b_and!269061 (not b!3644873) (not b!3644874) (not b!3644860) (not b!3644870) (not b!3644889) (not b!3644881) (not b!3644887) b_and!269065 b_and!269069 (not b!3644872) (not b!3644882) (not b_next!96369) (not b_next!96363) (not b!3644865) b_and!269059 (not b!3644867) (not b_next!96365) (not b_next!96371) (not b!3644879) (not b!3644858) (not b!3644854) (not b!3644856) b_and!269073 (not b_next!96375) (not b_next!96373) (not b!3644868) (not b!3644875) b_and!269067 (not b!3644886) tp_is_empty!18089 (not b_next!96367) (not b!3644871) (not b!3644878) (not b!3644864) (not b!3644877) (not b!3644855) b_and!269071 (not b!3644890) (not b!3644869) (not b!3644853) (not b!3644883) b_and!269063 (not b_next!96361))
(check-sat b_and!269069 b_and!269061 (not b_next!96369) (not b_next!96363) b_and!269059 b_and!269067 (not b_next!96367) b_and!269071 b_and!269065 (not b_next!96365) (not b_next!96371) b_and!269073 (not b_next!96375) (not b_next!96373) b_and!269063 (not b_next!96361))
(get-model)

(declare-fun d!1071487 () Bool)

(declare-fun lt!1262823 () BalanceConc!23084)

(assert (=> d!1071487 (= (list!14230 lt!1262823) (originalCharacters!6458 (_1!22280 lt!1262762)))))

(declare-fun dynLambda!16735 (Int TokenValue!5974) BalanceConc!23084)

(assert (=> d!1071487 (= lt!1262823 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (value!184164 (_1!22280 lt!1262762))))))

(assert (=> d!1071487 (= (charsOf!3758 (_1!22280 lt!1262762)) lt!1262823)))

(declare-fun b_lambda!108081 () Bool)

(assert (=> (not b_lambda!108081) (not d!1071487)))

(declare-fun t!296946 () Bool)

(declare-fun tb!210157 () Bool)

(assert (=> (and b!3644876 (= (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296946) tb!210157))

(declare-fun b!3645070 () Bool)

(declare-fun e!2256509 () Bool)

(declare-fun tp!1111609 () Bool)

(declare-fun inv!51864 (Conc!11735) Bool)

(assert (=> b!3645070 (= e!2256509 (and (inv!51864 (c!630093 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (value!184164 (_1!22280 lt!1262762))))) tp!1111609))))

(declare-fun result!255940 () Bool)

(declare-fun inv!51865 (BalanceConc!23084) Bool)

(assert (=> tb!210157 (= result!255940 (and (inv!51865 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (value!184164 (_1!22280 lt!1262762)))) e!2256509))))

(assert (= tb!210157 b!3645070))

(declare-fun m!4148751 () Bool)

(assert (=> b!3645070 m!4148751))

(declare-fun m!4148753 () Bool)

(assert (=> tb!210157 m!4148753))

(assert (=> d!1071487 t!296946))

(declare-fun b_and!269099 () Bool)

(assert (= b_and!269061 (and (=> t!296946 result!255940) b_and!269099)))

(declare-fun t!296948 () Bool)

(declare-fun tb!210159 () Bool)

(assert (=> (and b!3644885 (= (toChars!7895 (transformation!5744 rule!403)) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296948) tb!210159))

(declare-fun result!255944 () Bool)

(assert (= result!255944 result!255940))

(assert (=> d!1071487 t!296948))

(declare-fun b_and!269101 () Bool)

(assert (= b_and!269065 (and (=> t!296948 result!255944) b_and!269101)))

(declare-fun tb!210161 () Bool)

(declare-fun t!296950 () Bool)

(assert (=> (and b!3644859 (= (toChars!7895 (transformation!5744 (rule!8534 token!511))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296950) tb!210161))

(declare-fun result!255946 () Bool)

(assert (= result!255946 result!255940))

(assert (=> d!1071487 t!296950))

(declare-fun b_and!269103 () Bool)

(assert (= b_and!269069 (and (=> t!296950 result!255946) b_and!269103)))

(declare-fun tb!210163 () Bool)

(declare-fun t!296952 () Bool)

(assert (=> (and b!3644866 (= (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296952) tb!210163))

(declare-fun result!255948 () Bool)

(assert (= result!255948 result!255940))

(assert (=> d!1071487 t!296952))

(declare-fun b_and!269105 () Bool)

(assert (= b_and!269073 (and (=> t!296952 result!255948) b_and!269105)))

(declare-fun m!4148755 () Bool)

(assert (=> d!1071487 m!4148755))

(declare-fun m!4148757 () Bool)

(assert (=> d!1071487 m!4148757))

(assert (=> b!3644861 d!1071487))

(declare-fun b!3645080 () Bool)

(declare-fun e!2256514 () List!38544)

(assert (=> b!3645080 (= e!2256514 (Cons!38420 (h!43840 lt!1262774) (++!9560 (t!296927 lt!1262774) suffix!1395)))))

(declare-fun b!3645079 () Bool)

(assert (=> b!3645079 (= e!2256514 suffix!1395)))

(declare-fun b!3645081 () Bool)

(declare-fun res!1478075 () Bool)

(declare-fun e!2256515 () Bool)

(assert (=> b!3645081 (=> (not res!1478075) (not e!2256515))))

(declare-fun lt!1262826 () List!38544)

(assert (=> b!3645081 (= res!1478075 (= (size!29328 lt!1262826) (+ (size!29328 lt!1262774) (size!29328 suffix!1395))))))

(declare-fun d!1071499 () Bool)

(assert (=> d!1071499 e!2256515))

(declare-fun res!1478076 () Bool)

(assert (=> d!1071499 (=> (not res!1478076) (not e!2256515))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5537 (List!38544) (InoxSet C!21192))

(assert (=> d!1071499 (= res!1478076 (= (content!5537 lt!1262826) ((_ map or) (content!5537 lt!1262774) (content!5537 suffix!1395))))))

(assert (=> d!1071499 (= lt!1262826 e!2256514)))

(declare-fun c!630130 () Bool)

(assert (=> d!1071499 (= c!630130 ((_ is Nil!38420) lt!1262774))))

(assert (=> d!1071499 (= (++!9560 lt!1262774 suffix!1395) lt!1262826)))

(declare-fun b!3645082 () Bool)

(assert (=> b!3645082 (= e!2256515 (or (not (= suffix!1395 Nil!38420)) (= lt!1262826 lt!1262774)))))

(assert (= (and d!1071499 c!630130) b!3645079))

(assert (= (and d!1071499 (not c!630130)) b!3645080))

(assert (= (and d!1071499 res!1478076) b!3645081))

(assert (= (and b!3645081 res!1478075) b!3645082))

(declare-fun m!4148759 () Bool)

(assert (=> b!3645080 m!4148759))

(declare-fun m!4148761 () Bool)

(assert (=> b!3645081 m!4148761))

(declare-fun m!4148763 () Bool)

(assert (=> b!3645081 m!4148763))

(declare-fun m!4148765 () Bool)

(assert (=> b!3645081 m!4148765))

(declare-fun m!4148767 () Bool)

(assert (=> d!1071499 m!4148767))

(declare-fun m!4148769 () Bool)

(assert (=> d!1071499 m!4148769))

(declare-fun m!4148771 () Bool)

(assert (=> d!1071499 m!4148771))

(assert (=> b!3644861 d!1071499))

(declare-fun d!1071501 () Bool)

(assert (=> d!1071501 (isPrefix!3107 lt!1262774 (++!9560 lt!1262774 suffix!1395))))

(declare-fun lt!1262829 () Unit!55296)

(declare-fun choose!21454 (List!38544 List!38544) Unit!55296)

(assert (=> d!1071501 (= lt!1262829 (choose!21454 lt!1262774 suffix!1395))))

(assert (=> d!1071501 (= (lemmaConcatTwoListThenFirstIsPrefix!2026 lt!1262774 suffix!1395) lt!1262829)))

(declare-fun bs!572066 () Bool)

(assert (= bs!572066 d!1071501))

(assert (=> bs!572066 m!4148551))

(assert (=> bs!572066 m!4148551))

(declare-fun m!4148773 () Bool)

(assert (=> bs!572066 m!4148773))

(declare-fun m!4148775 () Bool)

(assert (=> bs!572066 m!4148775))

(assert (=> b!3644861 d!1071501))

(declare-fun b!3645084 () Bool)

(declare-fun e!2256516 () List!38544)

(assert (=> b!3645084 (= e!2256516 (Cons!38420 (h!43840 lt!1262778) (++!9560 (t!296927 lt!1262778) (_2!22280 lt!1262762))))))

(declare-fun b!3645083 () Bool)

(assert (=> b!3645083 (= e!2256516 (_2!22280 lt!1262762))))

(declare-fun b!3645085 () Bool)

(declare-fun res!1478077 () Bool)

(declare-fun e!2256517 () Bool)

(assert (=> b!3645085 (=> (not res!1478077) (not e!2256517))))

(declare-fun lt!1262830 () List!38544)

(assert (=> b!3645085 (= res!1478077 (= (size!29328 lt!1262830) (+ (size!29328 lt!1262778) (size!29328 (_2!22280 lt!1262762)))))))

(declare-fun d!1071503 () Bool)

(assert (=> d!1071503 e!2256517))

(declare-fun res!1478078 () Bool)

(assert (=> d!1071503 (=> (not res!1478078) (not e!2256517))))

(assert (=> d!1071503 (= res!1478078 (= (content!5537 lt!1262830) ((_ map or) (content!5537 lt!1262778) (content!5537 (_2!22280 lt!1262762)))))))

(assert (=> d!1071503 (= lt!1262830 e!2256516)))

(declare-fun c!630131 () Bool)

(assert (=> d!1071503 (= c!630131 ((_ is Nil!38420) lt!1262778))))

(assert (=> d!1071503 (= (++!9560 lt!1262778 (_2!22280 lt!1262762)) lt!1262830)))

(declare-fun b!3645086 () Bool)

(assert (=> b!3645086 (= e!2256517 (or (not (= (_2!22280 lt!1262762) Nil!38420)) (= lt!1262830 lt!1262778)))))

(assert (= (and d!1071503 c!630131) b!3645083))

(assert (= (and d!1071503 (not c!630131)) b!3645084))

(assert (= (and d!1071503 res!1478078) b!3645085))

(assert (= (and b!3645085 res!1478077) b!3645086))

(declare-fun m!4148777 () Bool)

(assert (=> b!3645084 m!4148777))

(declare-fun m!4148779 () Bool)

(assert (=> b!3645085 m!4148779))

(assert (=> b!3645085 m!4148511))

(declare-fun m!4148781 () Bool)

(assert (=> b!3645085 m!4148781))

(declare-fun m!4148783 () Bool)

(assert (=> d!1071503 m!4148783))

(declare-fun m!4148785 () Bool)

(assert (=> d!1071503 m!4148785))

(declare-fun m!4148787 () Bool)

(assert (=> d!1071503 m!4148787))

(assert (=> b!3644861 d!1071503))

(declare-fun b!3645095 () Bool)

(declare-fun e!2256525 () Bool)

(declare-fun e!2256526 () Bool)

(assert (=> b!3645095 (= e!2256525 e!2256526)))

(declare-fun res!1478088 () Bool)

(assert (=> b!3645095 (=> (not res!1478088) (not e!2256526))))

(assert (=> b!3645095 (= res!1478088 (not ((_ is Nil!38420) (++!9560 lt!1262778 (_2!22280 lt!1262762)))))))

(declare-fun d!1071505 () Bool)

(declare-fun e!2256524 () Bool)

(assert (=> d!1071505 e!2256524))

(declare-fun res!1478089 () Bool)

(assert (=> d!1071505 (=> res!1478089 e!2256524)))

(declare-fun lt!1262833 () Bool)

(assert (=> d!1071505 (= res!1478089 (not lt!1262833))))

(assert (=> d!1071505 (= lt!1262833 e!2256525)))

(declare-fun res!1478090 () Bool)

(assert (=> d!1071505 (=> res!1478090 e!2256525)))

(assert (=> d!1071505 (= res!1478090 ((_ is Nil!38420) lt!1262778))))

(assert (=> d!1071505 (= (isPrefix!3107 lt!1262778 (++!9560 lt!1262778 (_2!22280 lt!1262762))) lt!1262833)))

(declare-fun b!3645097 () Bool)

(declare-fun tail!5647 (List!38544) List!38544)

(assert (=> b!3645097 (= e!2256526 (isPrefix!3107 (tail!5647 lt!1262778) (tail!5647 (++!9560 lt!1262778 (_2!22280 lt!1262762)))))))

(declare-fun b!3645098 () Bool)

(assert (=> b!3645098 (= e!2256524 (>= (size!29328 (++!9560 lt!1262778 (_2!22280 lt!1262762))) (size!29328 lt!1262778)))))

(declare-fun b!3645096 () Bool)

(declare-fun res!1478087 () Bool)

(assert (=> b!3645096 (=> (not res!1478087) (not e!2256526))))

(assert (=> b!3645096 (= res!1478087 (= (head!7750 lt!1262778) (head!7750 (++!9560 lt!1262778 (_2!22280 lt!1262762)))))))

(assert (= (and d!1071505 (not res!1478090)) b!3645095))

(assert (= (and b!3645095 res!1478088) b!3645096))

(assert (= (and b!3645096 res!1478087) b!3645097))

(assert (= (and d!1071505 (not res!1478089)) b!3645098))

(declare-fun m!4148789 () Bool)

(assert (=> b!3645097 m!4148789))

(assert (=> b!3645097 m!4148559))

(declare-fun m!4148791 () Bool)

(assert (=> b!3645097 m!4148791))

(assert (=> b!3645097 m!4148789))

(assert (=> b!3645097 m!4148791))

(declare-fun m!4148793 () Bool)

(assert (=> b!3645097 m!4148793))

(assert (=> b!3645098 m!4148559))

(declare-fun m!4148795 () Bool)

(assert (=> b!3645098 m!4148795))

(assert (=> b!3645098 m!4148511))

(assert (=> b!3645096 m!4148587))

(assert (=> b!3645096 m!4148559))

(declare-fun m!4148797 () Bool)

(assert (=> b!3645096 m!4148797))

(assert (=> b!3644861 d!1071505))

(declare-fun b!3645099 () Bool)

(declare-fun e!2256528 () Bool)

(declare-fun e!2256529 () Bool)

(assert (=> b!3645099 (= e!2256528 e!2256529)))

(declare-fun res!1478092 () Bool)

(assert (=> b!3645099 (=> (not res!1478092) (not e!2256529))))

(assert (=> b!3645099 (= res!1478092 (not ((_ is Nil!38420) lt!1262754)))))

(declare-fun d!1071507 () Bool)

(declare-fun e!2256527 () Bool)

(assert (=> d!1071507 e!2256527))

(declare-fun res!1478093 () Bool)

(assert (=> d!1071507 (=> res!1478093 e!2256527)))

(declare-fun lt!1262834 () Bool)

(assert (=> d!1071507 (= res!1478093 (not lt!1262834))))

(assert (=> d!1071507 (= lt!1262834 e!2256528)))

(declare-fun res!1478094 () Bool)

(assert (=> d!1071507 (=> res!1478094 e!2256528)))

(assert (=> d!1071507 (= res!1478094 ((_ is Nil!38420) lt!1262778))))

(assert (=> d!1071507 (= (isPrefix!3107 lt!1262778 lt!1262754) lt!1262834)))

(declare-fun b!3645101 () Bool)

(assert (=> b!3645101 (= e!2256529 (isPrefix!3107 (tail!5647 lt!1262778) (tail!5647 lt!1262754)))))

(declare-fun b!3645102 () Bool)

(assert (=> b!3645102 (= e!2256527 (>= (size!29328 lt!1262754) (size!29328 lt!1262778)))))

(declare-fun b!3645100 () Bool)

(declare-fun res!1478091 () Bool)

(assert (=> b!3645100 (=> (not res!1478091) (not e!2256529))))

(assert (=> b!3645100 (= res!1478091 (= (head!7750 lt!1262778) (head!7750 lt!1262754)))))

(assert (= (and d!1071507 (not res!1478094)) b!3645099))

(assert (= (and b!3645099 res!1478092) b!3645100))

(assert (= (and b!3645100 res!1478091) b!3645101))

(assert (= (and d!1071507 (not res!1478093)) b!3645102))

(assert (=> b!3645101 m!4148789))

(declare-fun m!4148799 () Bool)

(assert (=> b!3645101 m!4148799))

(assert (=> b!3645101 m!4148789))

(assert (=> b!3645101 m!4148799))

(declare-fun m!4148801 () Bool)

(assert (=> b!3645101 m!4148801))

(declare-fun m!4148803 () Bool)

(assert (=> b!3645102 m!4148803))

(assert (=> b!3645102 m!4148511))

(assert (=> b!3645100 m!4148587))

(declare-fun m!4148805 () Bool)

(assert (=> b!3645100 m!4148805))

(assert (=> b!3644861 d!1071507))

(declare-fun b!3645227 () Bool)

(declare-fun e!2256605 () Unit!55296)

(declare-fun Unit!55302 () Unit!55296)

(assert (=> b!3645227 (= e!2256605 Unit!55302)))

(declare-fun lt!1262957 () List!38544)

(assert (=> b!3645227 (= lt!1262957 (++!9560 lt!1262774 suffix!1395))))

(declare-fun lt!1262966 () Unit!55296)

(declare-fun lt!1262959 () Token!10854)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!536 (LexerInterface!5333 Rule!11288 List!38545 List!38544) Unit!55296)

(assert (=> b!3645227 (= lt!1262966 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!536 thiss!23823 (rule!8534 lt!1262959) rules!3307 lt!1262957))))

(declare-fun isEmpty!22760 (Option!8116) Bool)

(assert (=> b!3645227 (isEmpty!22760 (maxPrefixOneRule!2005 thiss!23823 (rule!8534 lt!1262959) lt!1262957))))

(declare-fun lt!1262960 () Unit!55296)

(assert (=> b!3645227 (= lt!1262960 lt!1262966)))

(declare-fun lt!1262962 () List!38544)

(assert (=> b!3645227 (= lt!1262962 (list!14230 (charsOf!3758 lt!1262959)))))

(declare-fun lt!1262969 () Unit!55296)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!524 (LexerInterface!5333 Rule!11288 List!38544 List!38544) Unit!55296)

(assert (=> b!3645227 (= lt!1262969 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!524 thiss!23823 (rule!8534 lt!1262959) lt!1262962 (++!9560 lt!1262774 suffix!1395)))))

(assert (=> b!3645227 (not (matchR!5072 (regex!5744 (rule!8534 lt!1262959)) lt!1262962))))

(declare-fun lt!1262972 () Unit!55296)

(assert (=> b!3645227 (= lt!1262972 lt!1262969)))

(assert (=> b!3645227 false))

(declare-fun b!3645228 () Bool)

(declare-fun Unit!55303 () Unit!55296)

(assert (=> b!3645228 (= e!2256605 Unit!55303)))

(declare-fun b!3645226 () Bool)

(declare-fun e!2256606 () Bool)

(assert (=> b!3645226 (= e!2256606 (= (rule!8534 lt!1262959) (get!12599 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 lt!1262959))))))))

(declare-fun d!1071509 () Bool)

(assert (=> d!1071509 (isDefined!6349 (maxPrefix!2867 thiss!23823 rules!3307 (++!9560 lt!1262774 suffix!1395)))))

(declare-fun lt!1262971 () Unit!55296)

(assert (=> d!1071509 (= lt!1262971 e!2256605)))

(declare-fun c!630164 () Bool)

(assert (=> d!1071509 (= c!630164 (isEmpty!22760 (maxPrefix!2867 thiss!23823 rules!3307 (++!9560 lt!1262774 suffix!1395))))))

(declare-fun lt!1262963 () Unit!55296)

(declare-fun lt!1262970 () Unit!55296)

(assert (=> d!1071509 (= lt!1262963 lt!1262970)))

(assert (=> d!1071509 e!2256606))

(declare-fun res!1478159 () Bool)

(assert (=> d!1071509 (=> (not res!1478159) (not e!2256606))))

(assert (=> d!1071509 (= res!1478159 (isDefined!6348 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 lt!1262959)))))))

(assert (=> d!1071509 (= lt!1262970 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1348 thiss!23823 rules!3307 lt!1262774 lt!1262959))))

(declare-fun lt!1262965 () Unit!55296)

(declare-fun lt!1262964 () Unit!55296)

(assert (=> d!1071509 (= lt!1262965 lt!1262964)))

(declare-fun lt!1262973 () List!38544)

(assert (=> d!1071509 (isPrefix!3107 lt!1262973 (++!9560 lt!1262774 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!500 (List!38544 List!38544 List!38544) Unit!55296)

(assert (=> d!1071509 (= lt!1262964 (lemmaPrefixStaysPrefixWhenAddingToSuffix!500 lt!1262973 lt!1262774 suffix!1395))))

(assert (=> d!1071509 (= lt!1262973 (list!14230 (charsOf!3758 lt!1262959)))))

(declare-fun lt!1262958 () Unit!55296)

(declare-fun lt!1262968 () Unit!55296)

(assert (=> d!1071509 (= lt!1262958 lt!1262968)))

(declare-fun lt!1262961 () List!38544)

(declare-fun lt!1262967 () List!38544)

(assert (=> d!1071509 (isPrefix!3107 lt!1262961 (++!9560 lt!1262961 lt!1262967))))

(assert (=> d!1071509 (= lt!1262968 (lemmaConcatTwoListThenFirstIsPrefix!2026 lt!1262961 lt!1262967))))

(assert (=> d!1071509 (= lt!1262967 (_2!22280 (get!12598 (maxPrefix!2867 thiss!23823 rules!3307 lt!1262774))))))

(assert (=> d!1071509 (= lt!1262961 (list!14230 (charsOf!3758 lt!1262959)))))

(declare-datatypes ((List!38548 0))(
  ( (Nil!38424) (Cons!38424 (h!43844 Token!10854) (t!297051 List!38548)) )
))
(declare-fun head!7752 (List!38548) Token!10854)

(declare-datatypes ((IArray!23479 0))(
  ( (IArray!23480 (innerList!11797 List!38548)) )
))
(declare-datatypes ((Conc!11737 0))(
  ( (Node!11737 (left!30003 Conc!11737) (right!30333 Conc!11737) (csize!23704 Int) (cheight!11948 Int)) (Leaf!18220 (xs!14939 IArray!23479) (csize!23705 Int)) (Empty!11737) )
))
(declare-datatypes ((BalanceConc!23088 0))(
  ( (BalanceConc!23089 (c!630247 Conc!11737)) )
))
(declare-fun list!14233 (BalanceConc!23088) List!38548)

(declare-datatypes ((tuple2!38296 0))(
  ( (tuple2!38297 (_1!22282 BalanceConc!23088) (_2!22282 BalanceConc!23084)) )
))
(declare-fun lex!2532 (LexerInterface!5333 List!38545 BalanceConc!23084) tuple2!38296)

(assert (=> d!1071509 (= lt!1262959 (head!7752 (list!14233 (_1!22282 (lex!2532 thiss!23823 rules!3307 (seqFromList!4293 lt!1262774))))))))

(assert (=> d!1071509 (not (isEmpty!22757 rules!3307))))

(assert (=> d!1071509 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1011 thiss!23823 rules!3307 lt!1262774 suffix!1395) lt!1262971)))

(declare-fun b!3645225 () Bool)

(declare-fun res!1478160 () Bool)

(assert (=> b!3645225 (=> (not res!1478160) (not e!2256606))))

(assert (=> b!3645225 (= res!1478160 (matchR!5072 (regex!5744 (get!12599 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 lt!1262959))))) (list!14230 (charsOf!3758 lt!1262959))))))

(assert (= (and d!1071509 res!1478159) b!3645225))

(assert (= (and b!3645225 res!1478160) b!3645226))

(assert (= (and d!1071509 c!630164) b!3645227))

(assert (= (and d!1071509 (not c!630164)) b!3645228))

(declare-fun m!4148975 () Bool)

(assert (=> b!3645227 m!4148975))

(declare-fun m!4148977 () Bool)

(assert (=> b!3645227 m!4148977))

(assert (=> b!3645227 m!4148551))

(declare-fun m!4148979 () Bool)

(assert (=> b!3645227 m!4148979))

(declare-fun m!4148981 () Bool)

(assert (=> b!3645227 m!4148981))

(declare-fun m!4148983 () Bool)

(assert (=> b!3645227 m!4148983))

(assert (=> b!3645227 m!4148551))

(declare-fun m!4148985 () Bool)

(assert (=> b!3645227 m!4148985))

(assert (=> b!3645227 m!4148981))

(declare-fun m!4148987 () Bool)

(assert (=> b!3645227 m!4148987))

(assert (=> b!3645227 m!4148975))

(declare-fun m!4148989 () Bool)

(assert (=> b!3645226 m!4148989))

(assert (=> b!3645226 m!4148989))

(declare-fun m!4148991 () Bool)

(assert (=> b!3645226 m!4148991))

(assert (=> d!1071509 m!4148975))

(declare-fun m!4148993 () Bool)

(assert (=> d!1071509 m!4148993))

(declare-fun m!4148995 () Bool)

(assert (=> d!1071509 m!4148995))

(declare-fun m!4148997 () Bool)

(assert (=> d!1071509 m!4148997))

(assert (=> d!1071509 m!4148989))

(declare-fun m!4148999 () Bool)

(assert (=> d!1071509 m!4148999))

(assert (=> d!1071509 m!4148551))

(declare-fun m!4149001 () Bool)

(assert (=> d!1071509 m!4149001))

(declare-fun m!4149003 () Bool)

(assert (=> d!1071509 m!4149003))

(declare-fun m!4149005 () Bool)

(assert (=> d!1071509 m!4149005))

(declare-fun m!4149007 () Bool)

(assert (=> d!1071509 m!4149007))

(assert (=> d!1071509 m!4148457))

(declare-fun m!4149009 () Bool)

(assert (=> d!1071509 m!4149009))

(assert (=> d!1071509 m!4149001))

(declare-fun m!4149011 () Bool)

(assert (=> d!1071509 m!4149011))

(assert (=> d!1071509 m!4148975))

(assert (=> d!1071509 m!4148977))

(assert (=> d!1071509 m!4148993))

(declare-fun m!4149013 () Bool)

(assert (=> d!1071509 m!4149013))

(declare-fun m!4149015 () Bool)

(assert (=> d!1071509 m!4149015))

(assert (=> d!1071509 m!4148497))

(declare-fun m!4149017 () Bool)

(assert (=> d!1071509 m!4149017))

(assert (=> d!1071509 m!4149005))

(assert (=> d!1071509 m!4148551))

(declare-fun m!4149019 () Bool)

(assert (=> d!1071509 m!4149019))

(assert (=> d!1071509 m!4148997))

(declare-fun m!4149021 () Bool)

(assert (=> d!1071509 m!4149021))

(assert (=> d!1071509 m!4148989))

(assert (=> d!1071509 m!4148551))

(assert (=> d!1071509 m!4149001))

(assert (=> d!1071509 m!4148457))

(assert (=> b!3645225 m!4148975))

(assert (=> b!3645225 m!4148975))

(assert (=> b!3645225 m!4148977))

(assert (=> b!3645225 m!4148989))

(assert (=> b!3645225 m!4148991))

(assert (=> b!3645225 m!4148989))

(assert (=> b!3645225 m!4148977))

(declare-fun m!4149023 () Bool)

(assert (=> b!3645225 m!4149023))

(assert (=> b!3644861 d!1071509))

(declare-fun b!3645229 () Bool)

(declare-fun e!2256608 () Bool)

(declare-fun e!2256609 () Bool)

(assert (=> b!3645229 (= e!2256608 e!2256609)))

(declare-fun res!1478162 () Bool)

(assert (=> b!3645229 (=> (not res!1478162) (not e!2256609))))

(assert (=> b!3645229 (= res!1478162 (not ((_ is Nil!38420) lt!1262754)))))

(declare-fun d!1071559 () Bool)

(declare-fun e!2256607 () Bool)

(assert (=> d!1071559 e!2256607))

(declare-fun res!1478163 () Bool)

(assert (=> d!1071559 (=> res!1478163 e!2256607)))

(declare-fun lt!1262974 () Bool)

(assert (=> d!1071559 (= res!1478163 (not lt!1262974))))

(assert (=> d!1071559 (= lt!1262974 e!2256608)))

(declare-fun res!1478164 () Bool)

(assert (=> d!1071559 (=> res!1478164 e!2256608)))

(assert (=> d!1071559 (= res!1478164 ((_ is Nil!38420) lt!1262774))))

(assert (=> d!1071559 (= (isPrefix!3107 lt!1262774 lt!1262754) lt!1262974)))

(declare-fun b!3645231 () Bool)

(assert (=> b!3645231 (= e!2256609 (isPrefix!3107 (tail!5647 lt!1262774) (tail!5647 lt!1262754)))))

(declare-fun b!3645232 () Bool)

(assert (=> b!3645232 (= e!2256607 (>= (size!29328 lt!1262754) (size!29328 lt!1262774)))))

(declare-fun b!3645230 () Bool)

(declare-fun res!1478161 () Bool)

(assert (=> b!3645230 (=> (not res!1478161) (not e!2256609))))

(assert (=> b!3645230 (= res!1478161 (= (head!7750 lt!1262774) (head!7750 lt!1262754)))))

(assert (= (and d!1071559 (not res!1478164)) b!3645229))

(assert (= (and b!3645229 res!1478162) b!3645230))

(assert (= (and b!3645230 res!1478161) b!3645231))

(assert (= (and d!1071559 (not res!1478163)) b!3645232))

(declare-fun m!4149025 () Bool)

(assert (=> b!3645231 m!4149025))

(assert (=> b!3645231 m!4148799))

(assert (=> b!3645231 m!4149025))

(assert (=> b!3645231 m!4148799))

(declare-fun m!4149027 () Bool)

(assert (=> b!3645231 m!4149027))

(assert (=> b!3645232 m!4148803))

(assert (=> b!3645232 m!4148763))

(declare-fun m!4149029 () Bool)

(assert (=> b!3645230 m!4149029))

(assert (=> b!3645230 m!4148805))

(assert (=> b!3644861 d!1071559))

(declare-fun b!3645251 () Bool)

(declare-fun e!2256616 () Option!8116)

(declare-fun lt!1262987 () Option!8116)

(declare-fun lt!1262989 () Option!8116)

(assert (=> b!3645251 (= e!2256616 (ite (and ((_ is None!8115) lt!1262987) ((_ is None!8115) lt!1262989)) None!8115 (ite ((_ is None!8115) lt!1262989) lt!1262987 (ite ((_ is None!8115) lt!1262987) lt!1262989 (ite (>= (size!29327 (_1!22280 (v!37959 lt!1262987))) (size!29327 (_1!22280 (v!37959 lt!1262989)))) lt!1262987 lt!1262989)))))))

(declare-fun call!263446 () Option!8116)

(assert (=> b!3645251 (= lt!1262987 call!263446)))

(assert (=> b!3645251 (= lt!1262989 (maxPrefix!2867 thiss!23823 (t!296928 rules!3307) lt!1262754))))

(declare-fun b!3645252 () Bool)

(declare-fun res!1478184 () Bool)

(declare-fun e!2256618 () Bool)

(assert (=> b!3645252 (=> (not res!1478184) (not e!2256618))))

(declare-fun lt!1262985 () Option!8116)

(assert (=> b!3645252 (= res!1478184 (= (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1262985)))) (originalCharacters!6458 (_1!22280 (get!12598 lt!1262985)))))))

(declare-fun b!3645253 () Bool)

(declare-fun res!1478185 () Bool)

(assert (=> b!3645253 (=> (not res!1478185) (not e!2256618))))

(assert (=> b!3645253 (= res!1478185 (= (++!9560 (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1262985)))) (_2!22280 (get!12598 lt!1262985))) lt!1262754))))

(declare-fun bm!263441 () Bool)

(assert (=> bm!263441 (= call!263446 (maxPrefixOneRule!2005 thiss!23823 (h!43841 rules!3307) lt!1262754))))

(declare-fun b!3645254 () Bool)

(declare-fun res!1478182 () Bool)

(assert (=> b!3645254 (=> (not res!1478182) (not e!2256618))))

(assert (=> b!3645254 (= res!1478182 (= (value!184164 (_1!22280 (get!12598 lt!1262985))) (apply!9246 (transformation!5744 (rule!8534 (_1!22280 (get!12598 lt!1262985)))) (seqFromList!4293 (originalCharacters!6458 (_1!22280 (get!12598 lt!1262985)))))))))

(declare-fun b!3645255 () Bool)

(assert (=> b!3645255 (= e!2256616 call!263446)))

(declare-fun b!3645256 () Bool)

(assert (=> b!3645256 (= e!2256618 (contains!7554 rules!3307 (rule!8534 (_1!22280 (get!12598 lt!1262985)))))))

(declare-fun b!3645257 () Bool)

(declare-fun res!1478179 () Bool)

(assert (=> b!3645257 (=> (not res!1478179) (not e!2256618))))

(assert (=> b!3645257 (= res!1478179 (matchR!5072 (regex!5744 (rule!8534 (_1!22280 (get!12598 lt!1262985)))) (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1262985))))))))

(declare-fun d!1071561 () Bool)

(declare-fun e!2256617 () Bool)

(assert (=> d!1071561 e!2256617))

(declare-fun res!1478183 () Bool)

(assert (=> d!1071561 (=> res!1478183 e!2256617)))

(assert (=> d!1071561 (= res!1478183 (isEmpty!22760 lt!1262985))))

(assert (=> d!1071561 (= lt!1262985 e!2256616)))

(declare-fun c!630167 () Bool)

(assert (=> d!1071561 (= c!630167 (and ((_ is Cons!38421) rules!3307) ((_ is Nil!38421) (t!296928 rules!3307))))))

(declare-fun lt!1262986 () Unit!55296)

(declare-fun lt!1262988 () Unit!55296)

(assert (=> d!1071561 (= lt!1262986 lt!1262988)))

(assert (=> d!1071561 (isPrefix!3107 lt!1262754 lt!1262754)))

(declare-fun lemmaIsPrefixRefl!1970 (List!38544 List!38544) Unit!55296)

(assert (=> d!1071561 (= lt!1262988 (lemmaIsPrefixRefl!1970 lt!1262754 lt!1262754))))

(declare-fun rulesValidInductive!2035 (LexerInterface!5333 List!38545) Bool)

(assert (=> d!1071561 (rulesValidInductive!2035 thiss!23823 rules!3307)))

(assert (=> d!1071561 (= (maxPrefix!2867 thiss!23823 rules!3307 lt!1262754) lt!1262985)))

(declare-fun b!3645258 () Bool)

(declare-fun res!1478181 () Bool)

(assert (=> b!3645258 (=> (not res!1478181) (not e!2256618))))

(assert (=> b!3645258 (= res!1478181 (< (size!29328 (_2!22280 (get!12598 lt!1262985))) (size!29328 lt!1262754)))))

(declare-fun b!3645259 () Bool)

(assert (=> b!3645259 (= e!2256617 e!2256618)))

(declare-fun res!1478180 () Bool)

(assert (=> b!3645259 (=> (not res!1478180) (not e!2256618))))

(assert (=> b!3645259 (= res!1478180 (isDefined!6349 lt!1262985))))

(assert (= (and d!1071561 c!630167) b!3645255))

(assert (= (and d!1071561 (not c!630167)) b!3645251))

(assert (= (or b!3645255 b!3645251) bm!263441))

(assert (= (and d!1071561 (not res!1478183)) b!3645259))

(assert (= (and b!3645259 res!1478180) b!3645252))

(assert (= (and b!3645252 res!1478184) b!3645258))

(assert (= (and b!3645258 res!1478181) b!3645253))

(assert (= (and b!3645253 res!1478185) b!3645254))

(assert (= (and b!3645254 res!1478182) b!3645257))

(assert (= (and b!3645257 res!1478179) b!3645256))

(declare-fun m!4149031 () Bool)

(assert (=> d!1071561 m!4149031))

(declare-fun m!4149033 () Bool)

(assert (=> d!1071561 m!4149033))

(declare-fun m!4149035 () Bool)

(assert (=> d!1071561 m!4149035))

(declare-fun m!4149037 () Bool)

(assert (=> d!1071561 m!4149037))

(declare-fun m!4149039 () Bool)

(assert (=> b!3645251 m!4149039))

(declare-fun m!4149041 () Bool)

(assert (=> b!3645254 m!4149041))

(declare-fun m!4149043 () Bool)

(assert (=> b!3645254 m!4149043))

(assert (=> b!3645254 m!4149043))

(declare-fun m!4149045 () Bool)

(assert (=> b!3645254 m!4149045))

(assert (=> b!3645253 m!4149041))

(declare-fun m!4149047 () Bool)

(assert (=> b!3645253 m!4149047))

(assert (=> b!3645253 m!4149047))

(declare-fun m!4149049 () Bool)

(assert (=> b!3645253 m!4149049))

(assert (=> b!3645253 m!4149049))

(declare-fun m!4149051 () Bool)

(assert (=> b!3645253 m!4149051))

(assert (=> b!3645257 m!4149041))

(assert (=> b!3645257 m!4149047))

(assert (=> b!3645257 m!4149047))

(assert (=> b!3645257 m!4149049))

(assert (=> b!3645257 m!4149049))

(declare-fun m!4149053 () Bool)

(assert (=> b!3645257 m!4149053))

(declare-fun m!4149055 () Bool)

(assert (=> bm!263441 m!4149055))

(assert (=> b!3645252 m!4149041))

(assert (=> b!3645252 m!4149047))

(assert (=> b!3645252 m!4149047))

(assert (=> b!3645252 m!4149049))

(assert (=> b!3645258 m!4149041))

(declare-fun m!4149057 () Bool)

(assert (=> b!3645258 m!4149057))

(assert (=> b!3645258 m!4148803))

(assert (=> b!3645256 m!4149041))

(declare-fun m!4149059 () Bool)

(assert (=> b!3645256 m!4149059))

(declare-fun m!4149061 () Bool)

(assert (=> b!3645259 m!4149061))

(assert (=> b!3644861 d!1071561))

(declare-fun d!1071563 () Bool)

(assert (=> d!1071563 (= (get!12598 lt!1262753) (v!37959 lt!1262753))))

(assert (=> b!3644861 d!1071563))

(declare-fun d!1071565 () Bool)

(declare-fun e!2256621 () Bool)

(assert (=> d!1071565 e!2256621))

(declare-fun res!1478190 () Bool)

(assert (=> d!1071565 (=> (not res!1478190) (not e!2256621))))

(assert (=> d!1071565 (= res!1478190 (isDefined!6348 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 (_1!22280 lt!1262762))))))))

(declare-fun lt!1262992 () Unit!55296)

(declare-fun choose!21457 (LexerInterface!5333 List!38545 List!38544 Token!10854) Unit!55296)

(assert (=> d!1071565 (= lt!1262992 (choose!21457 thiss!23823 rules!3307 lt!1262754 (_1!22280 lt!1262762)))))

(assert (=> d!1071565 (rulesInvariant!4730 thiss!23823 rules!3307)))

(assert (=> d!1071565 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1348 thiss!23823 rules!3307 lt!1262754 (_1!22280 lt!1262762)) lt!1262992)))

(declare-fun b!3645264 () Bool)

(declare-fun res!1478191 () Bool)

(assert (=> b!3645264 (=> (not res!1478191) (not e!2256621))))

(assert (=> b!3645264 (= res!1478191 (matchR!5072 (regex!5744 (get!12599 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))) (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))))))

(declare-fun b!3645265 () Bool)

(assert (=> b!3645265 (= e!2256621 (= (rule!8534 (_1!22280 lt!1262762)) (get!12599 (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))))))

(assert (= (and d!1071565 res!1478190) b!3645264))

(assert (= (and b!3645264 res!1478191) b!3645265))

(assert (=> d!1071565 m!4148555))

(assert (=> d!1071565 m!4148555))

(declare-fun m!4149063 () Bool)

(assert (=> d!1071565 m!4149063))

(declare-fun m!4149065 () Bool)

(assert (=> d!1071565 m!4149065))

(assert (=> d!1071565 m!4148573))

(assert (=> b!3645264 m!4148491))

(declare-fun m!4149067 () Bool)

(assert (=> b!3645264 m!4149067))

(assert (=> b!3645264 m!4148555))

(assert (=> b!3645264 m!4148489))

(assert (=> b!3645264 m!4148491))

(assert (=> b!3645264 m!4148555))

(declare-fun m!4149069 () Bool)

(assert (=> b!3645264 m!4149069))

(assert (=> b!3645264 m!4148489))

(assert (=> b!3645265 m!4148555))

(assert (=> b!3645265 m!4148555))

(assert (=> b!3645265 m!4149069))

(assert (=> b!3644861 d!1071565))

(declare-fun d!1071567 () Bool)

(assert (=> d!1071567 (isPrefix!3107 lt!1262778 (++!9560 lt!1262778 (_2!22280 lt!1262762)))))

(declare-fun lt!1262993 () Unit!55296)

(assert (=> d!1071567 (= lt!1262993 (choose!21454 lt!1262778 (_2!22280 lt!1262762)))))

(assert (=> d!1071567 (= (lemmaConcatTwoListThenFirstIsPrefix!2026 lt!1262778 (_2!22280 lt!1262762)) lt!1262993)))

(declare-fun bs!572073 () Bool)

(assert (= bs!572073 d!1071567))

(assert (=> bs!572073 m!4148559))

(assert (=> bs!572073 m!4148559))

(assert (=> bs!572073 m!4148563))

(declare-fun m!4149071 () Bool)

(assert (=> bs!572073 m!4149071))

(assert (=> b!3644861 d!1071567))

(declare-fun d!1071569 () Bool)

(declare-fun list!14234 (Conc!11735) List!38544)

(assert (=> d!1071569 (= (list!14230 lt!1262780) (list!14234 (c!630093 lt!1262780)))))

(declare-fun bs!572074 () Bool)

(assert (= bs!572074 d!1071569))

(declare-fun m!4149073 () Bool)

(assert (=> bs!572074 m!4149073))

(assert (=> b!3644861 d!1071569))

(declare-fun d!1071571 () Bool)

(declare-fun isEmpty!22761 (Option!8117) Bool)

(assert (=> d!1071571 (= (isDefined!6348 lt!1262772) (not (isEmpty!22761 lt!1262772)))))

(declare-fun bs!572075 () Bool)

(assert (= bs!572075 d!1071571))

(declare-fun m!4149075 () Bool)

(assert (=> bs!572075 m!4149075))

(assert (=> b!3644861 d!1071571))

(declare-fun b!3645278 () Bool)

(declare-fun lt!1263001 () Unit!55296)

(declare-fun lt!1263000 () Unit!55296)

(assert (=> b!3645278 (= lt!1263001 lt!1263000)))

(assert (=> b!3645278 (rulesInvariant!4730 thiss!23823 (t!296928 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!579 (LexerInterface!5333 Rule!11288 List!38545) Unit!55296)

(assert (=> b!3645278 (= lt!1263000 (lemmaInvariantOnRulesThenOnTail!579 thiss!23823 (h!43841 rules!3307) (t!296928 rules!3307)))))

(declare-fun e!2256632 () Option!8117)

(assert (=> b!3645278 (= e!2256632 (getRuleFromTag!1348 thiss!23823 (t!296928 rules!3307) (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645279 () Bool)

(declare-fun e!2256630 () Option!8117)

(assert (=> b!3645279 (= e!2256630 (Some!8116 (h!43841 rules!3307)))))

(declare-fun d!1071573 () Bool)

(declare-fun e!2256631 () Bool)

(assert (=> d!1071573 e!2256631))

(declare-fun res!1478196 () Bool)

(assert (=> d!1071573 (=> res!1478196 e!2256631)))

(declare-fun lt!1263002 () Option!8117)

(assert (=> d!1071573 (= res!1478196 (isEmpty!22761 lt!1263002))))

(assert (=> d!1071573 (= lt!1263002 e!2256630)))

(declare-fun c!630172 () Bool)

(assert (=> d!1071573 (= c!630172 (and ((_ is Cons!38421) rules!3307) (= (tag!6500 (h!43841 rules!3307)) (tag!6500 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> d!1071573 (rulesInvariant!4730 thiss!23823 rules!3307)))

(assert (=> d!1071573 (= (getRuleFromTag!1348 thiss!23823 rules!3307 (tag!6500 (rule!8534 (_1!22280 lt!1262762)))) lt!1263002)))

(declare-fun b!3645280 () Bool)

(assert (=> b!3645280 (= e!2256630 e!2256632)))

(declare-fun c!630173 () Bool)

(assert (=> b!3645280 (= c!630173 (and ((_ is Cons!38421) rules!3307) (not (= (tag!6500 (h!43841 rules!3307)) (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))))))

(declare-fun b!3645281 () Bool)

(assert (=> b!3645281 (= e!2256632 None!8116)))

(declare-fun b!3645282 () Bool)

(declare-fun e!2256633 () Bool)

(assert (=> b!3645282 (= e!2256633 (= (tag!6500 (get!12599 lt!1263002)) (tag!6500 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645283 () Bool)

(assert (=> b!3645283 (= e!2256631 e!2256633)))

(declare-fun res!1478197 () Bool)

(assert (=> b!3645283 (=> (not res!1478197) (not e!2256633))))

(assert (=> b!3645283 (= res!1478197 (contains!7554 rules!3307 (get!12599 lt!1263002)))))

(assert (= (and d!1071573 c!630172) b!3645279))

(assert (= (and d!1071573 (not c!630172)) b!3645280))

(assert (= (and b!3645280 c!630173) b!3645278))

(assert (= (and b!3645280 (not c!630173)) b!3645281))

(assert (= (and d!1071573 (not res!1478196)) b!3645283))

(assert (= (and b!3645283 res!1478197) b!3645282))

(declare-fun m!4149077 () Bool)

(assert (=> b!3645278 m!4149077))

(declare-fun m!4149079 () Bool)

(assert (=> b!3645278 m!4149079))

(declare-fun m!4149081 () Bool)

(assert (=> b!3645278 m!4149081))

(declare-fun m!4149083 () Bool)

(assert (=> d!1071573 m!4149083))

(assert (=> d!1071573 m!4148573))

(declare-fun m!4149085 () Bool)

(assert (=> b!3645282 m!4149085))

(assert (=> b!3645283 m!4149085))

(assert (=> b!3645283 m!4149085))

(declare-fun m!4149087 () Bool)

(assert (=> b!3645283 m!4149087))

(assert (=> b!3644861 d!1071573))

(declare-fun d!1071575 () Bool)

(assert (=> d!1071575 (= (isDefined!6349 lt!1262759) (not (isEmpty!22760 lt!1262759)))))

(declare-fun bs!572076 () Bool)

(assert (= bs!572076 d!1071575))

(declare-fun m!4149089 () Bool)

(assert (=> bs!572076 m!4149089))

(assert (=> b!3644882 d!1071575))

(declare-fun b!3645284 () Bool)

(declare-fun e!2256634 () Option!8116)

(declare-fun lt!1263005 () Option!8116)

(declare-fun lt!1263007 () Option!8116)

(assert (=> b!3645284 (= e!2256634 (ite (and ((_ is None!8115) lt!1263005) ((_ is None!8115) lt!1263007)) None!8115 (ite ((_ is None!8115) lt!1263007) lt!1263005 (ite ((_ is None!8115) lt!1263005) lt!1263007 (ite (>= (size!29327 (_1!22280 (v!37959 lt!1263005))) (size!29327 (_1!22280 (v!37959 lt!1263007)))) lt!1263005 lt!1263007)))))))

(declare-fun call!263447 () Option!8116)

(assert (=> b!3645284 (= lt!1263005 call!263447)))

(assert (=> b!3645284 (= lt!1263007 (maxPrefix!2867 thiss!23823 (t!296928 rules!3307) lt!1262774))))

(declare-fun b!3645285 () Bool)

(declare-fun res!1478203 () Bool)

(declare-fun e!2256636 () Bool)

(assert (=> b!3645285 (=> (not res!1478203) (not e!2256636))))

(declare-fun lt!1263003 () Option!8116)

(assert (=> b!3645285 (= res!1478203 (= (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1263003)))) (originalCharacters!6458 (_1!22280 (get!12598 lt!1263003)))))))

(declare-fun b!3645286 () Bool)

(declare-fun res!1478204 () Bool)

(assert (=> b!3645286 (=> (not res!1478204) (not e!2256636))))

(assert (=> b!3645286 (= res!1478204 (= (++!9560 (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1263003)))) (_2!22280 (get!12598 lt!1263003))) lt!1262774))))

(declare-fun bm!263442 () Bool)

(assert (=> bm!263442 (= call!263447 (maxPrefixOneRule!2005 thiss!23823 (h!43841 rules!3307) lt!1262774))))

(declare-fun b!3645287 () Bool)

(declare-fun res!1478201 () Bool)

(assert (=> b!3645287 (=> (not res!1478201) (not e!2256636))))

(assert (=> b!3645287 (= res!1478201 (= (value!184164 (_1!22280 (get!12598 lt!1263003))) (apply!9246 (transformation!5744 (rule!8534 (_1!22280 (get!12598 lt!1263003)))) (seqFromList!4293 (originalCharacters!6458 (_1!22280 (get!12598 lt!1263003)))))))))

(declare-fun b!3645288 () Bool)

(assert (=> b!3645288 (= e!2256634 call!263447)))

(declare-fun b!3645289 () Bool)

(assert (=> b!3645289 (= e!2256636 (contains!7554 rules!3307 (rule!8534 (_1!22280 (get!12598 lt!1263003)))))))

(declare-fun b!3645290 () Bool)

(declare-fun res!1478198 () Bool)

(assert (=> b!3645290 (=> (not res!1478198) (not e!2256636))))

(assert (=> b!3645290 (= res!1478198 (matchR!5072 (regex!5744 (rule!8534 (_1!22280 (get!12598 lt!1263003)))) (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1263003))))))))

(declare-fun d!1071577 () Bool)

(declare-fun e!2256635 () Bool)

(assert (=> d!1071577 e!2256635))

(declare-fun res!1478202 () Bool)

(assert (=> d!1071577 (=> res!1478202 e!2256635)))

(assert (=> d!1071577 (= res!1478202 (isEmpty!22760 lt!1263003))))

(assert (=> d!1071577 (= lt!1263003 e!2256634)))

(declare-fun c!630174 () Bool)

(assert (=> d!1071577 (= c!630174 (and ((_ is Cons!38421) rules!3307) ((_ is Nil!38421) (t!296928 rules!3307))))))

(declare-fun lt!1263004 () Unit!55296)

(declare-fun lt!1263006 () Unit!55296)

(assert (=> d!1071577 (= lt!1263004 lt!1263006)))

(assert (=> d!1071577 (isPrefix!3107 lt!1262774 lt!1262774)))

(assert (=> d!1071577 (= lt!1263006 (lemmaIsPrefixRefl!1970 lt!1262774 lt!1262774))))

(assert (=> d!1071577 (rulesValidInductive!2035 thiss!23823 rules!3307)))

(assert (=> d!1071577 (= (maxPrefix!2867 thiss!23823 rules!3307 lt!1262774) lt!1263003)))

(declare-fun b!3645291 () Bool)

(declare-fun res!1478200 () Bool)

(assert (=> b!3645291 (=> (not res!1478200) (not e!2256636))))

(assert (=> b!3645291 (= res!1478200 (< (size!29328 (_2!22280 (get!12598 lt!1263003))) (size!29328 lt!1262774)))))

(declare-fun b!3645292 () Bool)

(assert (=> b!3645292 (= e!2256635 e!2256636)))

(declare-fun res!1478199 () Bool)

(assert (=> b!3645292 (=> (not res!1478199) (not e!2256636))))

(assert (=> b!3645292 (= res!1478199 (isDefined!6349 lt!1263003))))

(assert (= (and d!1071577 c!630174) b!3645288))

(assert (= (and d!1071577 (not c!630174)) b!3645284))

(assert (= (or b!3645288 b!3645284) bm!263442))

(assert (= (and d!1071577 (not res!1478202)) b!3645292))

(assert (= (and b!3645292 res!1478199) b!3645285))

(assert (= (and b!3645285 res!1478203) b!3645291))

(assert (= (and b!3645291 res!1478200) b!3645286))

(assert (= (and b!3645286 res!1478204) b!3645287))

(assert (= (and b!3645287 res!1478201) b!3645290))

(assert (= (and b!3645290 res!1478198) b!3645289))

(declare-fun m!4149091 () Bool)

(assert (=> d!1071577 m!4149091))

(declare-fun m!4149093 () Bool)

(assert (=> d!1071577 m!4149093))

(declare-fun m!4149095 () Bool)

(assert (=> d!1071577 m!4149095))

(assert (=> d!1071577 m!4149037))

(declare-fun m!4149097 () Bool)

(assert (=> b!3645284 m!4149097))

(declare-fun m!4149099 () Bool)

(assert (=> b!3645287 m!4149099))

(declare-fun m!4149101 () Bool)

(assert (=> b!3645287 m!4149101))

(assert (=> b!3645287 m!4149101))

(declare-fun m!4149103 () Bool)

(assert (=> b!3645287 m!4149103))

(assert (=> b!3645286 m!4149099))

(declare-fun m!4149105 () Bool)

(assert (=> b!3645286 m!4149105))

(assert (=> b!3645286 m!4149105))

(declare-fun m!4149107 () Bool)

(assert (=> b!3645286 m!4149107))

(assert (=> b!3645286 m!4149107))

(declare-fun m!4149109 () Bool)

(assert (=> b!3645286 m!4149109))

(assert (=> b!3645290 m!4149099))

(assert (=> b!3645290 m!4149105))

(assert (=> b!3645290 m!4149105))

(assert (=> b!3645290 m!4149107))

(assert (=> b!3645290 m!4149107))

(declare-fun m!4149111 () Bool)

(assert (=> b!3645290 m!4149111))

(declare-fun m!4149113 () Bool)

(assert (=> bm!263442 m!4149113))

(assert (=> b!3645285 m!4149099))

(assert (=> b!3645285 m!4149105))

(assert (=> b!3645285 m!4149105))

(assert (=> b!3645285 m!4149107))

(assert (=> b!3645291 m!4149099))

(declare-fun m!4149115 () Bool)

(assert (=> b!3645291 m!4149115))

(assert (=> b!3645291 m!4148763))

(assert (=> b!3645289 m!4149099))

(declare-fun m!4149117 () Bool)

(assert (=> b!3645289 m!4149117))

(declare-fun m!4149119 () Bool)

(assert (=> b!3645292 m!4149119))

(assert (=> b!3644882 d!1071577))

(declare-fun d!1071579 () Bool)

(assert (=> d!1071579 (= (list!14230 (charsOf!3758 token!511)) (list!14234 (c!630093 (charsOf!3758 token!511))))))

(declare-fun bs!572077 () Bool)

(assert (= bs!572077 d!1071579))

(declare-fun m!4149121 () Bool)

(assert (=> bs!572077 m!4149121))

(assert (=> b!3644882 d!1071579))

(declare-fun d!1071581 () Bool)

(declare-fun lt!1263008 () BalanceConc!23084)

(assert (=> d!1071581 (= (list!14230 lt!1263008) (originalCharacters!6458 token!511))))

(assert (=> d!1071581 (= lt!1263008 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (value!184164 token!511)))))

(assert (=> d!1071581 (= (charsOf!3758 token!511) lt!1263008)))

(declare-fun b_lambda!108083 () Bool)

(assert (=> (not b_lambda!108083) (not d!1071581)))

(declare-fun tb!210165 () Bool)

(declare-fun t!296954 () Bool)

(assert (=> (and b!3644876 (= (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toChars!7895 (transformation!5744 (rule!8534 token!511)))) t!296954) tb!210165))

(declare-fun b!3645293 () Bool)

(declare-fun e!2256637 () Bool)

(declare-fun tp!1111610 () Bool)

(assert (=> b!3645293 (= e!2256637 (and (inv!51864 (c!630093 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (value!184164 token!511)))) tp!1111610))))

(declare-fun result!255950 () Bool)

(assert (=> tb!210165 (= result!255950 (and (inv!51865 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (value!184164 token!511))) e!2256637))))

(assert (= tb!210165 b!3645293))

(declare-fun m!4149123 () Bool)

(assert (=> b!3645293 m!4149123))

(declare-fun m!4149125 () Bool)

(assert (=> tb!210165 m!4149125))

(assert (=> d!1071581 t!296954))

(declare-fun b_and!269107 () Bool)

(assert (= b_and!269099 (and (=> t!296954 result!255950) b_and!269107)))

(declare-fun t!296956 () Bool)

(declare-fun tb!210167 () Bool)

(assert (=> (and b!3644885 (= (toChars!7895 (transformation!5744 rule!403)) (toChars!7895 (transformation!5744 (rule!8534 token!511)))) t!296956) tb!210167))

(declare-fun result!255952 () Bool)

(assert (= result!255952 result!255950))

(assert (=> d!1071581 t!296956))

(declare-fun b_and!269109 () Bool)

(assert (= b_and!269101 (and (=> t!296956 result!255952) b_and!269109)))

(declare-fun t!296958 () Bool)

(declare-fun tb!210169 () Bool)

(assert (=> (and b!3644859 (= (toChars!7895 (transformation!5744 (rule!8534 token!511))) (toChars!7895 (transformation!5744 (rule!8534 token!511)))) t!296958) tb!210169))

(declare-fun result!255954 () Bool)

(assert (= result!255954 result!255950))

(assert (=> d!1071581 t!296958))

(declare-fun b_and!269111 () Bool)

(assert (= b_and!269103 (and (=> t!296958 result!255954) b_and!269111)))

(declare-fun t!296960 () Bool)

(declare-fun tb!210171 () Bool)

(assert (=> (and b!3644866 (= (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toChars!7895 (transformation!5744 (rule!8534 token!511)))) t!296960) tb!210171))

(declare-fun result!255956 () Bool)

(assert (= result!255956 result!255950))

(assert (=> d!1071581 t!296960))

(declare-fun b_and!269113 () Bool)

(assert (= b_and!269105 (and (=> t!296960 result!255956) b_and!269113)))

(declare-fun m!4149127 () Bool)

(assert (=> d!1071581 m!4149127))

(declare-fun m!4149129 () Bool)

(assert (=> d!1071581 m!4149129))

(assert (=> b!3644882 d!1071581))

(declare-fun b!3645322 () Bool)

(declare-fun e!2256652 () Bool)

(declare-fun lt!1263011 () Bool)

(assert (=> b!3645322 (= e!2256652 (not lt!1263011))))

(declare-fun b!3645323 () Bool)

(declare-fun res!1478222 () Bool)

(declare-fun e!2256655 () Bool)

(assert (=> b!3645323 (=> res!1478222 e!2256655)))

(declare-fun e!2256653 () Bool)

(assert (=> b!3645323 (= res!1478222 e!2256653)))

(declare-fun res!1478228 () Bool)

(assert (=> b!3645323 (=> (not res!1478228) (not e!2256653))))

(assert (=> b!3645323 (= res!1478228 lt!1263011)))

(declare-fun b!3645324 () Bool)

(declare-fun e!2256654 () Bool)

(declare-fun nullable!3649 (Regex!10503) Bool)

(assert (=> b!3645324 (= e!2256654 (nullable!3649 (regex!5744 rule!403)))))

(declare-fun b!3645325 () Bool)

(declare-fun e!2256658 () Bool)

(assert (=> b!3645325 (= e!2256658 e!2256652)))

(declare-fun c!630181 () Bool)

(assert (=> b!3645325 (= c!630181 ((_ is EmptyLang!10503) (regex!5744 rule!403)))))

(declare-fun b!3645326 () Bool)

(declare-fun res!1478226 () Bool)

(assert (=> b!3645326 (=> (not res!1478226) (not e!2256653))))

(declare-fun call!263450 () Bool)

(assert (=> b!3645326 (= res!1478226 (not call!263450))))

(declare-fun b!3645327 () Bool)

(assert (=> b!3645327 (= e!2256658 (= lt!1263011 call!263450))))

(declare-fun d!1071583 () Bool)

(assert (=> d!1071583 e!2256658))

(declare-fun c!630182 () Bool)

(assert (=> d!1071583 (= c!630182 ((_ is EmptyExpr!10503) (regex!5744 rule!403)))))

(assert (=> d!1071583 (= lt!1263011 e!2256654)))

(declare-fun c!630183 () Bool)

(assert (=> d!1071583 (= c!630183 (isEmpty!22756 lt!1262774))))

(assert (=> d!1071583 (validRegex!4811 (regex!5744 rule!403))))

(assert (=> d!1071583 (= (matchR!5072 (regex!5744 rule!403) lt!1262774) lt!1263011)))

(declare-fun b!3645328 () Bool)

(declare-fun res!1478227 () Bool)

(assert (=> b!3645328 (=> (not res!1478227) (not e!2256653))))

(assert (=> b!3645328 (= res!1478227 (isEmpty!22756 (tail!5647 lt!1262774)))))

(declare-fun b!3645329 () Bool)

(declare-fun e!2256657 () Bool)

(assert (=> b!3645329 (= e!2256655 e!2256657)))

(declare-fun res!1478223 () Bool)

(assert (=> b!3645329 (=> (not res!1478223) (not e!2256657))))

(assert (=> b!3645329 (= res!1478223 (not lt!1263011))))

(declare-fun b!3645330 () Bool)

(declare-fun e!2256656 () Bool)

(assert (=> b!3645330 (= e!2256656 (not (= (head!7750 lt!1262774) (c!630092 (regex!5744 rule!403)))))))

(declare-fun b!3645331 () Bool)

(declare-fun res!1478221 () Bool)

(assert (=> b!3645331 (=> res!1478221 e!2256655)))

(assert (=> b!3645331 (= res!1478221 (not ((_ is ElementMatch!10503) (regex!5744 rule!403))))))

(assert (=> b!3645331 (= e!2256652 e!2256655)))

(declare-fun bm!263445 () Bool)

(assert (=> bm!263445 (= call!263450 (isEmpty!22756 lt!1262774))))

(declare-fun b!3645332 () Bool)

(assert (=> b!3645332 (= e!2256657 e!2256656)))

(declare-fun res!1478224 () Bool)

(assert (=> b!3645332 (=> res!1478224 e!2256656)))

(assert (=> b!3645332 (= res!1478224 call!263450)))

(declare-fun b!3645333 () Bool)

(declare-fun derivativeStep!3198 (Regex!10503 C!21192) Regex!10503)

(assert (=> b!3645333 (= e!2256654 (matchR!5072 (derivativeStep!3198 (regex!5744 rule!403) (head!7750 lt!1262774)) (tail!5647 lt!1262774)))))

(declare-fun b!3645334 () Bool)

(declare-fun res!1478225 () Bool)

(assert (=> b!3645334 (=> res!1478225 e!2256656)))

(assert (=> b!3645334 (= res!1478225 (not (isEmpty!22756 (tail!5647 lt!1262774))))))

(declare-fun b!3645335 () Bool)

(assert (=> b!3645335 (= e!2256653 (= (head!7750 lt!1262774) (c!630092 (regex!5744 rule!403))))))

(assert (= (and d!1071583 c!630183) b!3645324))

(assert (= (and d!1071583 (not c!630183)) b!3645333))

(assert (= (and d!1071583 c!630182) b!3645327))

(assert (= (and d!1071583 (not c!630182)) b!3645325))

(assert (= (and b!3645325 c!630181) b!3645322))

(assert (= (and b!3645325 (not c!630181)) b!3645331))

(assert (= (and b!3645331 (not res!1478221)) b!3645323))

(assert (= (and b!3645323 res!1478228) b!3645326))

(assert (= (and b!3645326 res!1478226) b!3645328))

(assert (= (and b!3645328 res!1478227) b!3645335))

(assert (= (and b!3645323 (not res!1478222)) b!3645329))

(assert (= (and b!3645329 res!1478223) b!3645332))

(assert (= (and b!3645332 (not res!1478224)) b!3645334))

(assert (= (and b!3645334 (not res!1478225)) b!3645330))

(assert (= (or b!3645327 b!3645326 b!3645332) bm!263445))

(assert (=> b!3645335 m!4149029))

(declare-fun m!4149131 () Bool)

(assert (=> d!1071583 m!4149131))

(declare-fun m!4149133 () Bool)

(assert (=> d!1071583 m!4149133))

(assert (=> b!3645330 m!4149029))

(declare-fun m!4149135 () Bool)

(assert (=> b!3645324 m!4149135))

(assert (=> b!3645334 m!4149025))

(assert (=> b!3645334 m!4149025))

(declare-fun m!4149137 () Bool)

(assert (=> b!3645334 m!4149137))

(assert (=> b!3645328 m!4149025))

(assert (=> b!3645328 m!4149025))

(assert (=> b!3645328 m!4149137))

(assert (=> b!3645333 m!4149029))

(assert (=> b!3645333 m!4149029))

(declare-fun m!4149139 () Bool)

(assert (=> b!3645333 m!4149139))

(assert (=> b!3645333 m!4149025))

(assert (=> b!3645333 m!4149139))

(assert (=> b!3645333 m!4149025))

(declare-fun m!4149141 () Bool)

(assert (=> b!3645333 m!4149141))

(assert (=> bm!263445 m!4149131))

(assert (=> b!3644860 d!1071583))

(declare-fun d!1071585 () Bool)

(declare-fun res!1478233 () Bool)

(declare-fun e!2256661 () Bool)

(assert (=> d!1071585 (=> (not res!1478233) (not e!2256661))))

(assert (=> d!1071585 (= res!1478233 (validRegex!4811 (regex!5744 rule!403)))))

(assert (=> d!1071585 (= (ruleValid!2008 thiss!23823 rule!403) e!2256661)))

(declare-fun b!3645340 () Bool)

(declare-fun res!1478234 () Bool)

(assert (=> b!3645340 (=> (not res!1478234) (not e!2256661))))

(assert (=> b!3645340 (= res!1478234 (not (nullable!3649 (regex!5744 rule!403))))))

(declare-fun b!3645341 () Bool)

(assert (=> b!3645341 (= e!2256661 (not (= (tag!6500 rule!403) (String!43205 ""))))))

(assert (= (and d!1071585 res!1478233) b!3645340))

(assert (= (and b!3645340 res!1478234) b!3645341))

(assert (=> d!1071585 m!4149133))

(assert (=> b!3645340 m!4149135))

(assert (=> b!3644860 d!1071585))

(declare-fun d!1071587 () Bool)

(assert (=> d!1071587 (ruleValid!2008 thiss!23823 rule!403)))

(declare-fun lt!1263014 () Unit!55296)

(declare-fun choose!21460 (LexerInterface!5333 Rule!11288 List!38545) Unit!55296)

(assert (=> d!1071587 (= lt!1263014 (choose!21460 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1071587 (contains!7554 rules!3307 rule!403)))

(assert (=> d!1071587 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1162 thiss!23823 rule!403 rules!3307) lt!1263014)))

(declare-fun bs!572078 () Bool)

(assert (= bs!572078 d!1071587))

(assert (=> bs!572078 m!4148579))

(declare-fun m!4149143 () Bool)

(assert (=> bs!572078 m!4149143))

(assert (=> bs!572078 m!4148541))

(assert (=> b!3644860 d!1071587))

(declare-fun d!1071589 () Bool)

(assert (=> d!1071589 (= (isEmpty!22757 rules!3307) ((_ is Nil!38421) rules!3307))))

(assert (=> b!3644881 d!1071589))

(declare-fun d!1071591 () Bool)

(assert (=> d!1071591 (= (get!12598 lt!1262759) (v!37959 lt!1262759))))

(assert (=> b!3644867 d!1071591))

(declare-fun d!1071593 () Bool)

(assert (=> d!1071593 (= (size!29327 (_1!22280 lt!1262762)) (size!29328 (originalCharacters!6458 (_1!22280 lt!1262762))))))

(declare-fun Unit!55304 () Unit!55296)

(assert (=> d!1071593 (= (lemmaCharactersSize!789 (_1!22280 lt!1262762)) Unit!55304)))

(declare-fun bs!572079 () Bool)

(assert (= bs!572079 d!1071593))

(declare-fun m!4149145 () Bool)

(assert (=> bs!572079 m!4149145))

(assert (=> b!3644888 d!1071593))

(declare-fun d!1071595 () Bool)

(declare-fun dynLambda!16740 (Int BalanceConc!23084) TokenValue!5974)

(assert (=> d!1071595 (= (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780))))

(declare-fun b_lambda!108085 () Bool)

(assert (=> (not b_lambda!108085) (not d!1071595)))

(declare-fun tb!210173 () Bool)

(declare-fun t!296962 () Bool)

(assert (=> (and b!3644876 (= (toValue!8036 (transformation!5744 (h!43841 rules!3307))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296962) tb!210173))

(declare-fun result!255958 () Bool)

(assert (=> tb!210173 (= result!255958 (inv!21 (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780)))))

(declare-fun m!4149147 () Bool)

(assert (=> tb!210173 m!4149147))

(assert (=> d!1071595 t!296962))

(declare-fun b_and!269115 () Bool)

(assert (= b_and!269059 (and (=> t!296962 result!255958) b_and!269115)))

(declare-fun tb!210175 () Bool)

(declare-fun t!296964 () Bool)

(assert (=> (and b!3644885 (= (toValue!8036 (transformation!5744 rule!403)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296964) tb!210175))

(declare-fun result!255962 () Bool)

(assert (= result!255962 result!255958))

(assert (=> d!1071595 t!296964))

(declare-fun b_and!269117 () Bool)

(assert (= b_and!269063 (and (=> t!296964 result!255962) b_and!269117)))

(declare-fun t!296966 () Bool)

(declare-fun tb!210177 () Bool)

(assert (=> (and b!3644859 (= (toValue!8036 (transformation!5744 (rule!8534 token!511))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296966) tb!210177))

(declare-fun result!255964 () Bool)

(assert (= result!255964 result!255958))

(assert (=> d!1071595 t!296966))

(declare-fun b_and!269119 () Bool)

(assert (= b_and!269067 (and (=> t!296966 result!255964) b_and!269119)))

(declare-fun t!296968 () Bool)

(declare-fun tb!210179 () Bool)

(assert (=> (and b!3644866 (= (toValue!8036 (transformation!5744 anOtherTypeRule!33)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!296968) tb!210179))

(declare-fun result!255966 () Bool)

(assert (= result!255966 result!255958))

(assert (=> d!1071595 t!296968))

(declare-fun b_and!269121 () Bool)

(assert (= b_and!269071 (and (=> t!296968 result!255966) b_and!269121)))

(declare-fun m!4149149 () Bool)

(assert (=> d!1071595 m!4149149))

(assert (=> b!3644888 d!1071595))

(declare-fun d!1071597 () Bool)

(declare-fun lt!1263017 () Int)

(assert (=> d!1071597 (= lt!1263017 (size!29328 (list!14230 lt!1262780)))))

(declare-fun size!29331 (Conc!11735) Int)

(assert (=> d!1071597 (= lt!1263017 (size!29331 (c!630093 lt!1262780)))))

(assert (=> d!1071597 (= (size!29329 lt!1262780) lt!1263017)))

(declare-fun bs!572080 () Bool)

(assert (= bs!572080 d!1071597))

(assert (=> bs!572080 m!4148549))

(assert (=> bs!572080 m!4148549))

(declare-fun m!4149151 () Bool)

(assert (=> bs!572080 m!4149151))

(declare-fun m!4149153 () Bool)

(assert (=> bs!572080 m!4149153))

(assert (=> b!3644888 d!1071597))

(declare-fun b!3645473 () Bool)

(declare-fun e!2256742 () Bool)

(assert (=> b!3645473 (= e!2256742 true)))

(declare-fun d!1071599 () Bool)

(assert (=> d!1071599 e!2256742))

(assert (= d!1071599 b!3645473))

(declare-fun lambda!124436 () Int)

(declare-fun order!21147 () Int)

(declare-fun order!21149 () Int)

(declare-fun dynLambda!16742 (Int Int) Int)

(declare-fun dynLambda!16743 (Int Int) Int)

(assert (=> b!3645473 (< (dynLambda!16742 order!21147 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) (dynLambda!16743 order!21149 lambda!124436))))

(declare-fun order!21151 () Int)

(declare-fun dynLambda!16744 (Int Int) Int)

(assert (=> b!3645473 (< (dynLambda!16744 order!21151 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) (dynLambda!16743 order!21149 lambda!124436))))

(assert (=> d!1071599 (= (list!14230 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780))) (list!14230 lt!1262780))))

(declare-fun lt!1263056 () Unit!55296)

(declare-fun ForallOf!706 (Int BalanceConc!23084) Unit!55296)

(assert (=> d!1071599 (= lt!1263056 (ForallOf!706 lambda!124436 lt!1262780))))

(assert (=> d!1071599 (= (lemmaSemiInverse!1493 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780) lt!1263056)))

(declare-fun b_lambda!108103 () Bool)

(assert (=> (not b_lambda!108103) (not d!1071599)))

(declare-fun t!297014 () Bool)

(declare-fun tb!210225 () Bool)

(assert (=> (and b!3644876 (= (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297014) tb!210225))

(declare-fun e!2256743 () Bool)

(declare-fun tp!1111658 () Bool)

(declare-fun b!3645474 () Bool)

(assert (=> b!3645474 (= e!2256743 (and (inv!51864 (c!630093 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780)))) tp!1111658))))

(declare-fun result!256020 () Bool)

(assert (=> tb!210225 (= result!256020 (and (inv!51865 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780))) e!2256743))))

(assert (= tb!210225 b!3645474))

(declare-fun m!4149277 () Bool)

(assert (=> b!3645474 m!4149277))

(declare-fun m!4149279 () Bool)

(assert (=> tb!210225 m!4149279))

(assert (=> d!1071599 t!297014))

(declare-fun b_and!269175 () Bool)

(assert (= b_and!269107 (and (=> t!297014 result!256020) b_and!269175)))

(declare-fun t!297016 () Bool)

(declare-fun tb!210227 () Bool)

(assert (=> (and b!3644885 (= (toChars!7895 (transformation!5744 rule!403)) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297016) tb!210227))

(declare-fun result!256022 () Bool)

(assert (= result!256022 result!256020))

(assert (=> d!1071599 t!297016))

(declare-fun b_and!269177 () Bool)

(assert (= b_and!269109 (and (=> t!297016 result!256022) b_and!269177)))

(declare-fun t!297018 () Bool)

(declare-fun tb!210229 () Bool)

(assert (=> (and b!3644859 (= (toChars!7895 (transformation!5744 (rule!8534 token!511))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297018) tb!210229))

(declare-fun result!256024 () Bool)

(assert (= result!256024 result!256020))

(assert (=> d!1071599 t!297018))

(declare-fun b_and!269179 () Bool)

(assert (= b_and!269111 (and (=> t!297018 result!256024) b_and!269179)))

(declare-fun tb!210231 () Bool)

(declare-fun t!297020 () Bool)

(assert (=> (and b!3644866 (= (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297020) tb!210231))

(declare-fun result!256026 () Bool)

(assert (= result!256026 result!256020))

(assert (=> d!1071599 t!297020))

(declare-fun b_and!269181 () Bool)

(assert (= b_and!269113 (and (=> t!297020 result!256026) b_and!269181)))

(declare-fun b_lambda!108105 () Bool)

(assert (=> (not b_lambda!108105) (not d!1071599)))

(assert (=> d!1071599 t!296962))

(declare-fun b_and!269183 () Bool)

(assert (= b_and!269115 (and (=> t!296962 result!255958) b_and!269183)))

(assert (=> d!1071599 t!296964))

(declare-fun b_and!269185 () Bool)

(assert (= b_and!269117 (and (=> t!296964 result!255962) b_and!269185)))

(assert (=> d!1071599 t!296966))

(declare-fun b_and!269187 () Bool)

(assert (= b_and!269119 (and (=> t!296966 result!255964) b_and!269187)))

(assert (=> d!1071599 t!296968))

(declare-fun b_and!269189 () Bool)

(assert (= b_and!269121 (and (=> t!296968 result!255966) b_and!269189)))

(assert (=> d!1071599 m!4148549))

(declare-fun m!4149281 () Bool)

(assert (=> d!1071599 m!4149281))

(declare-fun m!4149283 () Bool)

(assert (=> d!1071599 m!4149283))

(assert (=> d!1071599 m!4149149))

(declare-fun m!4149285 () Bool)

(assert (=> d!1071599 m!4149285))

(assert (=> d!1071599 m!4149149))

(assert (=> d!1071599 m!4149281))

(assert (=> b!3644888 d!1071599))

(declare-fun d!1071635 () Bool)

(declare-fun fromListB!1985 (List!38544) BalanceConc!23084)

(assert (=> d!1071635 (= (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762))) (fromListB!1985 (originalCharacters!6458 (_1!22280 lt!1262762))))))

(declare-fun bs!572087 () Bool)

(assert (= bs!572087 d!1071635))

(declare-fun m!4149287 () Bool)

(assert (=> bs!572087 m!4149287))

(assert (=> b!3644888 d!1071635))

(declare-fun b!3645481 () Bool)

(declare-fun e!2256748 () Bool)

(assert (=> b!3645481 (= e!2256748 true)))

(declare-fun d!1071637 () Bool)

(assert (=> d!1071637 e!2256748))

(assert (= d!1071637 b!3645481))

(declare-fun lambda!124439 () Int)

(declare-fun order!21153 () Int)

(declare-fun dynLambda!16745 (Int Int) Int)

(assert (=> b!3645481 (< (dynLambda!16742 order!21147 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) (dynLambda!16745 order!21153 lambda!124439))))

(assert (=> b!3645481 (< (dynLambda!16744 order!21151 (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) (dynLambda!16745 order!21153 lambda!124439))))

(assert (=> d!1071637 (= (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262780) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762)))))))

(declare-fun lt!1263059 () Unit!55296)

(declare-fun Forall2of!364 (Int BalanceConc!23084 BalanceConc!23084) Unit!55296)

(assert (=> d!1071637 (= lt!1263059 (Forall2of!364 lambda!124439 lt!1262780 (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762)))))))

(assert (=> d!1071637 (= (list!14230 lt!1262780) (list!14230 (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762)))))))

(assert (=> d!1071637 (= (lemmaEqSameImage!927 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262780 (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762)))) lt!1263059)))

(declare-fun b_lambda!108107 () Bool)

(assert (=> (not b_lambda!108107) (not d!1071637)))

(assert (=> d!1071637 t!296962))

(declare-fun b_and!269191 () Bool)

(assert (= b_and!269183 (and (=> t!296962 result!255958) b_and!269191)))

(assert (=> d!1071637 t!296964))

(declare-fun b_and!269193 () Bool)

(assert (= b_and!269185 (and (=> t!296964 result!255962) b_and!269193)))

(assert (=> d!1071637 t!296966))

(declare-fun b_and!269195 () Bool)

(assert (= b_and!269187 (and (=> t!296966 result!255964) b_and!269195)))

(assert (=> d!1071637 t!296968))

(declare-fun b_and!269197 () Bool)

(assert (= b_and!269189 (and (=> t!296968 result!255966) b_and!269197)))

(declare-fun b_lambda!108109 () Bool)

(assert (=> (not b_lambda!108109) (not d!1071637)))

(declare-fun t!297022 () Bool)

(declare-fun tb!210233 () Bool)

(assert (=> (and b!3644876 (= (toValue!8036 (transformation!5744 (h!43841 rules!3307))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297022) tb!210233))

(declare-fun result!256028 () Bool)

(assert (=> tb!210233 (= result!256028 (inv!21 (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (seqFromList!4293 (originalCharacters!6458 (_1!22280 lt!1262762))))))))

(declare-fun m!4149289 () Bool)

(assert (=> tb!210233 m!4149289))

(assert (=> d!1071637 t!297022))

(declare-fun b_and!269199 () Bool)

(assert (= b_and!269191 (and (=> t!297022 result!256028) b_and!269199)))

(declare-fun tb!210235 () Bool)

(declare-fun t!297024 () Bool)

(assert (=> (and b!3644885 (= (toValue!8036 (transformation!5744 rule!403)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297024) tb!210235))

(declare-fun result!256030 () Bool)

(assert (= result!256030 result!256028))

(assert (=> d!1071637 t!297024))

(declare-fun b_and!269201 () Bool)

(assert (= b_and!269193 (and (=> t!297024 result!256030) b_and!269201)))

(declare-fun tb!210237 () Bool)

(declare-fun t!297026 () Bool)

(assert (=> (and b!3644859 (= (toValue!8036 (transformation!5744 (rule!8534 token!511))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297026) tb!210237))

(declare-fun result!256032 () Bool)

(assert (= result!256032 result!256028))

(assert (=> d!1071637 t!297026))

(declare-fun b_and!269203 () Bool)

(assert (= b_and!269195 (and (=> t!297026 result!256032) b_and!269203)))

(declare-fun tb!210239 () Bool)

(declare-fun t!297028 () Bool)

(assert (=> (and b!3644866 (= (toValue!8036 (transformation!5744 anOtherTypeRule!33)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297028) tb!210239))

(declare-fun result!256034 () Bool)

(assert (= result!256034 result!256028))

(assert (=> d!1071637 t!297028))

(declare-fun b_and!269205 () Bool)

(assert (= b_and!269197 (and (=> t!297028 result!256034) b_and!269205)))

(assert (=> d!1071637 m!4148549))

(assert (=> d!1071637 m!4148471))

(declare-fun m!4149291 () Bool)

(assert (=> d!1071637 m!4149291))

(assert (=> d!1071637 m!4148471))

(declare-fun m!4149293 () Bool)

(assert (=> d!1071637 m!4149293))

(assert (=> d!1071637 m!4149149))

(assert (=> d!1071637 m!4148471))

(declare-fun m!4149295 () Bool)

(assert (=> d!1071637 m!4149295))

(assert (=> b!3644888 d!1071637))

(declare-fun d!1071639 () Bool)

(assert (=> d!1071639 (= (inv!51857 (tag!6500 rule!403)) (= (mod (str.len (value!184163 (tag!6500 rule!403))) 2) 0))))

(assert (=> b!3644890 d!1071639))

(declare-fun d!1071641 () Bool)

(declare-fun res!1478284 () Bool)

(declare-fun e!2256752 () Bool)

(assert (=> d!1071641 (=> (not res!1478284) (not e!2256752))))

(declare-fun semiInverseModEq!2449 (Int Int) Bool)

(assert (=> d!1071641 (= res!1478284 (semiInverseModEq!2449 (toChars!7895 (transformation!5744 rule!403)) (toValue!8036 (transformation!5744 rule!403))))))

(assert (=> d!1071641 (= (inv!51860 (transformation!5744 rule!403)) e!2256752)))

(declare-fun b!3645484 () Bool)

(declare-fun equivClasses!2348 (Int Int) Bool)

(assert (=> b!3645484 (= e!2256752 (equivClasses!2348 (toChars!7895 (transformation!5744 rule!403)) (toValue!8036 (transformation!5744 rule!403))))))

(assert (= (and d!1071641 res!1478284) b!3645484))

(declare-fun m!4149297 () Bool)

(assert (=> d!1071641 m!4149297))

(declare-fun m!4149299 () Bool)

(assert (=> b!3645484 m!4149299))

(assert (=> b!3644890 d!1071641))

(declare-fun d!1071643 () Bool)

(declare-fun res!1478287 () Bool)

(declare-fun e!2256755 () Bool)

(assert (=> d!1071643 (=> (not res!1478287) (not e!2256755))))

(declare-fun rulesValid!2206 (LexerInterface!5333 List!38545) Bool)

(assert (=> d!1071643 (= res!1478287 (rulesValid!2206 thiss!23823 rules!3307))))

(assert (=> d!1071643 (= (rulesInvariant!4730 thiss!23823 rules!3307) e!2256755)))

(declare-fun b!3645487 () Bool)

(declare-datatypes ((List!38549 0))(
  ( (Nil!38425) (Cons!38425 (h!43845 String!43204) (t!297052 List!38549)) )
))
(declare-fun noDuplicateTag!2202 (LexerInterface!5333 List!38545 List!38549) Bool)

(assert (=> b!3645487 (= e!2256755 (noDuplicateTag!2202 thiss!23823 rules!3307 Nil!38425))))

(assert (= (and d!1071643 res!1478287) b!3645487))

(declare-fun m!4149301 () Bool)

(assert (=> d!1071643 m!4149301))

(declare-fun m!4149303 () Bool)

(assert (=> b!3645487 m!4149303))

(assert (=> b!3644868 d!1071643))

(declare-fun b!3645488 () Bool)

(declare-fun e!2256756 () Bool)

(declare-fun lt!1263060 () Bool)

(assert (=> b!3645488 (= e!2256756 (not lt!1263060))))

(declare-fun b!3645489 () Bool)

(declare-fun res!1478289 () Bool)

(declare-fun e!2256759 () Bool)

(assert (=> b!3645489 (=> res!1478289 e!2256759)))

(declare-fun e!2256757 () Bool)

(assert (=> b!3645489 (= res!1478289 e!2256757)))

(declare-fun res!1478295 () Bool)

(assert (=> b!3645489 (=> (not res!1478295) (not e!2256757))))

(assert (=> b!3645489 (= res!1478295 lt!1263060)))

(declare-fun b!3645490 () Bool)

(declare-fun e!2256758 () Bool)

(assert (=> b!3645490 (= e!2256758 (nullable!3649 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645491 () Bool)

(declare-fun e!2256762 () Bool)

(assert (=> b!3645491 (= e!2256762 e!2256756)))

(declare-fun c!630197 () Bool)

(assert (=> b!3645491 (= c!630197 ((_ is EmptyLang!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645492 () Bool)

(declare-fun res!1478293 () Bool)

(assert (=> b!3645492 (=> (not res!1478293) (not e!2256757))))

(declare-fun call!263452 () Bool)

(assert (=> b!3645492 (= res!1478293 (not call!263452))))

(declare-fun b!3645493 () Bool)

(assert (=> b!3645493 (= e!2256762 (= lt!1263060 call!263452))))

(declare-fun d!1071645 () Bool)

(assert (=> d!1071645 e!2256762))

(declare-fun c!630198 () Bool)

(assert (=> d!1071645 (= c!630198 ((_ is EmptyExpr!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(assert (=> d!1071645 (= lt!1263060 e!2256758)))

(declare-fun c!630199 () Bool)

(assert (=> d!1071645 (= c!630199 (isEmpty!22756 lt!1262778))))

(assert (=> d!1071645 (validRegex!4811 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))

(assert (=> d!1071645 (= (matchR!5072 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262778) lt!1263060)))

(declare-fun b!3645494 () Bool)

(declare-fun res!1478294 () Bool)

(assert (=> b!3645494 (=> (not res!1478294) (not e!2256757))))

(assert (=> b!3645494 (= res!1478294 (isEmpty!22756 (tail!5647 lt!1262778)))))

(declare-fun b!3645495 () Bool)

(declare-fun e!2256761 () Bool)

(assert (=> b!3645495 (= e!2256759 e!2256761)))

(declare-fun res!1478290 () Bool)

(assert (=> b!3645495 (=> (not res!1478290) (not e!2256761))))

(assert (=> b!3645495 (= res!1478290 (not lt!1263060))))

(declare-fun b!3645496 () Bool)

(declare-fun e!2256760 () Bool)

(assert (=> b!3645496 (= e!2256760 (not (= (head!7750 lt!1262778) (c!630092 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))))

(declare-fun b!3645497 () Bool)

(declare-fun res!1478288 () Bool)

(assert (=> b!3645497 (=> res!1478288 e!2256759)))

(assert (=> b!3645497 (= res!1478288 (not ((_ is ElementMatch!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> b!3645497 (= e!2256756 e!2256759)))

(declare-fun bm!263447 () Bool)

(assert (=> bm!263447 (= call!263452 (isEmpty!22756 lt!1262778))))

(declare-fun b!3645498 () Bool)

(assert (=> b!3645498 (= e!2256761 e!2256760)))

(declare-fun res!1478291 () Bool)

(assert (=> b!3645498 (=> res!1478291 e!2256760)))

(assert (=> b!3645498 (= res!1478291 call!263452)))

(declare-fun b!3645499 () Bool)

(assert (=> b!3645499 (= e!2256758 (matchR!5072 (derivativeStep!3198 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) (head!7750 lt!1262778)) (tail!5647 lt!1262778)))))

(declare-fun b!3645500 () Bool)

(declare-fun res!1478292 () Bool)

(assert (=> b!3645500 (=> res!1478292 e!2256760)))

(assert (=> b!3645500 (= res!1478292 (not (isEmpty!22756 (tail!5647 lt!1262778))))))

(declare-fun b!3645501 () Bool)

(assert (=> b!3645501 (= e!2256757 (= (head!7750 lt!1262778) (c!630092 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (= (and d!1071645 c!630199) b!3645490))

(assert (= (and d!1071645 (not c!630199)) b!3645499))

(assert (= (and d!1071645 c!630198) b!3645493))

(assert (= (and d!1071645 (not c!630198)) b!3645491))

(assert (= (and b!3645491 c!630197) b!3645488))

(assert (= (and b!3645491 (not c!630197)) b!3645497))

(assert (= (and b!3645497 (not res!1478288)) b!3645489))

(assert (= (and b!3645489 res!1478295) b!3645492))

(assert (= (and b!3645492 res!1478293) b!3645494))

(assert (= (and b!3645494 res!1478294) b!3645501))

(assert (= (and b!3645489 (not res!1478289)) b!3645495))

(assert (= (and b!3645495 res!1478290) b!3645498))

(assert (= (and b!3645498 (not res!1478291)) b!3645500))

(assert (= (and b!3645500 (not res!1478292)) b!3645496))

(assert (= (or b!3645493 b!3645492 b!3645498) bm!263447))

(assert (=> b!3645501 m!4148587))

(declare-fun m!4149305 () Bool)

(assert (=> d!1071645 m!4149305))

(assert (=> d!1071645 m!4148447))

(assert (=> b!3645496 m!4148587))

(declare-fun m!4149307 () Bool)

(assert (=> b!3645490 m!4149307))

(assert (=> b!3645500 m!4148789))

(assert (=> b!3645500 m!4148789))

(declare-fun m!4149309 () Bool)

(assert (=> b!3645500 m!4149309))

(assert (=> b!3645494 m!4148789))

(assert (=> b!3645494 m!4148789))

(assert (=> b!3645494 m!4149309))

(assert (=> b!3645499 m!4148587))

(assert (=> b!3645499 m!4148587))

(declare-fun m!4149311 () Bool)

(assert (=> b!3645499 m!4149311))

(assert (=> b!3645499 m!4148789))

(assert (=> b!3645499 m!4149311))

(assert (=> b!3645499 m!4148789))

(declare-fun m!4149313 () Bool)

(assert (=> b!3645499 m!4149313))

(assert (=> bm!263447 m!4149305))

(assert (=> b!3644889 d!1071645))

(declare-fun d!1071647 () Bool)

(declare-fun c!630204 () Bool)

(assert (=> d!1071647 (= c!630204 ((_ is IntegerValue!17922) (value!184164 token!511)))))

(declare-fun e!2256769 () Bool)

(assert (=> d!1071647 (= (inv!21 (value!184164 token!511)) e!2256769)))

(declare-fun b!3645512 () Bool)

(declare-fun e!2256770 () Bool)

(declare-fun inv!15 (TokenValue!5974) Bool)

(assert (=> b!3645512 (= e!2256770 (inv!15 (value!184164 token!511)))))

(declare-fun b!3645513 () Bool)

(declare-fun e!2256771 () Bool)

(declare-fun inv!17 (TokenValue!5974) Bool)

(assert (=> b!3645513 (= e!2256771 (inv!17 (value!184164 token!511)))))

(declare-fun b!3645514 () Bool)

(declare-fun inv!16 (TokenValue!5974) Bool)

(assert (=> b!3645514 (= e!2256769 (inv!16 (value!184164 token!511)))))

(declare-fun b!3645515 () Bool)

(declare-fun res!1478298 () Bool)

(assert (=> b!3645515 (=> res!1478298 e!2256770)))

(assert (=> b!3645515 (= res!1478298 (not ((_ is IntegerValue!17924) (value!184164 token!511))))))

(assert (=> b!3645515 (= e!2256771 e!2256770)))

(declare-fun b!3645516 () Bool)

(assert (=> b!3645516 (= e!2256769 e!2256771)))

(declare-fun c!630205 () Bool)

(assert (=> b!3645516 (= c!630205 ((_ is IntegerValue!17923) (value!184164 token!511)))))

(assert (= (and d!1071647 c!630204) b!3645514))

(assert (= (and d!1071647 (not c!630204)) b!3645516))

(assert (= (and b!3645516 c!630205) b!3645513))

(assert (= (and b!3645516 (not c!630205)) b!3645515))

(assert (= (and b!3645515 (not res!1478298)) b!3645512))

(declare-fun m!4149315 () Bool)

(assert (=> b!3645512 m!4149315))

(declare-fun m!4149317 () Bool)

(assert (=> b!3645513 m!4149317))

(declare-fun m!4149319 () Bool)

(assert (=> b!3645514 m!4149319))

(assert (=> b!3644886 d!1071647))

(declare-fun d!1071649 () Bool)

(declare-fun lt!1263063 () Bool)

(assert (=> d!1071649 (= lt!1263063 (select (content!5537 lt!1262774) lt!1262777))))

(declare-fun e!2256777 () Bool)

(assert (=> d!1071649 (= lt!1263063 e!2256777)))

(declare-fun res!1478303 () Bool)

(assert (=> d!1071649 (=> (not res!1478303) (not e!2256777))))

(assert (=> d!1071649 (= res!1478303 ((_ is Cons!38420) lt!1262774))))

(assert (=> d!1071649 (= (contains!7553 lt!1262774 lt!1262777) lt!1263063)))

(declare-fun b!3645521 () Bool)

(declare-fun e!2256776 () Bool)

(assert (=> b!3645521 (= e!2256777 e!2256776)))

(declare-fun res!1478304 () Bool)

(assert (=> b!3645521 (=> res!1478304 e!2256776)))

(assert (=> b!3645521 (= res!1478304 (= (h!43840 lt!1262774) lt!1262777))))

(declare-fun b!3645522 () Bool)

(assert (=> b!3645522 (= e!2256776 (contains!7553 (t!296927 lt!1262774) lt!1262777))))

(assert (= (and d!1071649 res!1478303) b!3645521))

(assert (= (and b!3645521 (not res!1478304)) b!3645522))

(assert (=> d!1071649 m!4148769))

(declare-fun m!4149321 () Bool)

(assert (=> d!1071649 m!4149321))

(declare-fun m!4149323 () Bool)

(assert (=> b!3645522 m!4149323))

(assert (=> b!3644864 d!1071649))

(declare-fun d!1071651 () Bool)

(assert (=> d!1071651 (= (isEmpty!22756 suffix!1395) ((_ is Nil!38420) suffix!1395))))

(assert (=> b!3644887 d!1071651))

(declare-fun d!1071653 () Bool)

(assert (=> d!1071653 (not (matchR!5072 (regex!5744 rule!403) lt!1262774))))

(declare-fun lt!1263066 () Unit!55296)

(declare-fun choose!21461 (Regex!10503 List!38544 C!21192) Unit!55296)

(assert (=> d!1071653 (= lt!1263066 (choose!21461 (regex!5744 rule!403) lt!1262774 lt!1262777))))

(assert (=> d!1071653 (validRegex!4811 (regex!5744 rule!403))))

(assert (=> d!1071653 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!692 (regex!5744 rule!403) lt!1262774 lt!1262777) lt!1263066)))

(declare-fun bs!572088 () Bool)

(assert (= bs!572088 d!1071653))

(assert (=> bs!572088 m!4148577))

(declare-fun m!4149325 () Bool)

(assert (=> bs!572088 m!4149325))

(assert (=> bs!572088 m!4149133))

(assert (=> b!3644865 d!1071653))

(declare-fun d!1071655 () Bool)

(declare-fun lt!1263067 () Bool)

(assert (=> d!1071655 (= lt!1263067 (select (content!5537 lt!1262778) lt!1262777))))

(declare-fun e!2256779 () Bool)

(assert (=> d!1071655 (= lt!1263067 e!2256779)))

(declare-fun res!1478305 () Bool)

(assert (=> d!1071655 (=> (not res!1478305) (not e!2256779))))

(assert (=> d!1071655 (= res!1478305 ((_ is Cons!38420) lt!1262778))))

(assert (=> d!1071655 (= (contains!7553 lt!1262778 lt!1262777) lt!1263067)))

(declare-fun b!3645523 () Bool)

(declare-fun e!2256778 () Bool)

(assert (=> b!3645523 (= e!2256779 e!2256778)))

(declare-fun res!1478306 () Bool)

(assert (=> b!3645523 (=> res!1478306 e!2256778)))

(assert (=> b!3645523 (= res!1478306 (= (h!43840 lt!1262778) lt!1262777))))

(declare-fun b!3645524 () Bool)

(assert (=> b!3645524 (= e!2256778 (contains!7553 (t!296927 lt!1262778) lt!1262777))))

(assert (= (and d!1071655 res!1478305) b!3645523))

(assert (= (and b!3645523 (not res!1478306)) b!3645524))

(assert (=> d!1071655 m!4148785))

(declare-fun m!4149327 () Bool)

(assert (=> d!1071655 m!4149327))

(declare-fun m!4149329 () Bool)

(assert (=> b!3645524 m!4149329))

(assert (=> b!3644872 d!1071655))

(declare-fun d!1071657 () Bool)

(declare-fun lt!1263070 () Bool)

(declare-fun content!5539 (List!38545) (InoxSet Rule!11288))

(assert (=> d!1071657 (= lt!1263070 (select (content!5539 rules!3307) rule!403))))

(declare-fun e!2256785 () Bool)

(assert (=> d!1071657 (= lt!1263070 e!2256785)))

(declare-fun res!1478311 () Bool)

(assert (=> d!1071657 (=> (not res!1478311) (not e!2256785))))

(assert (=> d!1071657 (= res!1478311 ((_ is Cons!38421) rules!3307))))

(assert (=> d!1071657 (= (contains!7554 rules!3307 rule!403) lt!1263070)))

(declare-fun b!3645529 () Bool)

(declare-fun e!2256784 () Bool)

(assert (=> b!3645529 (= e!2256785 e!2256784)))

(declare-fun res!1478312 () Bool)

(assert (=> b!3645529 (=> res!1478312 e!2256784)))

(assert (=> b!3645529 (= res!1478312 (= (h!43841 rules!3307) rule!403))))

(declare-fun b!3645530 () Bool)

(assert (=> b!3645530 (= e!2256784 (contains!7554 (t!296928 rules!3307) rule!403))))

(assert (= (and d!1071657 res!1478311) b!3645529))

(assert (= (and b!3645529 (not res!1478312)) b!3645530))

(declare-fun m!4149331 () Bool)

(assert (=> d!1071657 m!4149331))

(declare-fun m!4149333 () Bool)

(assert (=> d!1071657 m!4149333))

(declare-fun m!4149335 () Bool)

(assert (=> b!3645530 m!4149335))

(assert (=> b!3644873 d!1071657))

(declare-fun d!1071659 () Bool)

(assert (=> d!1071659 (= (isEmpty!22756 (_2!22280 lt!1262775)) ((_ is Nil!38420) (_2!22280 lt!1262775)))))

(assert (=> b!3644870 d!1071659))

(declare-fun d!1071661 () Bool)

(declare-fun lt!1263071 () Bool)

(assert (=> d!1071661 (= lt!1263071 (select (content!5539 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2256787 () Bool)

(assert (=> d!1071661 (= lt!1263071 e!2256787)))

(declare-fun res!1478313 () Bool)

(assert (=> d!1071661 (=> (not res!1478313) (not e!2256787))))

(assert (=> d!1071661 (= res!1478313 ((_ is Cons!38421) rules!3307))))

(assert (=> d!1071661 (= (contains!7554 rules!3307 anOtherTypeRule!33) lt!1263071)))

(declare-fun b!3645531 () Bool)

(declare-fun e!2256786 () Bool)

(assert (=> b!3645531 (= e!2256787 e!2256786)))

(declare-fun res!1478314 () Bool)

(assert (=> b!3645531 (=> res!1478314 e!2256786)))

(assert (=> b!3645531 (= res!1478314 (= (h!43841 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3645532 () Bool)

(assert (=> b!3645532 (= e!2256786 (contains!7554 (t!296928 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1071661 res!1478313) b!3645531))

(assert (= (and b!3645531 (not res!1478314)) b!3645532))

(assert (=> d!1071661 m!4149331))

(declare-fun m!4149337 () Bool)

(assert (=> d!1071661 m!4149337))

(declare-fun m!4149339 () Bool)

(assert (=> b!3645532 m!4149339))

(assert (=> b!3644869 d!1071661))

(declare-fun b!3645533 () Bool)

(declare-fun e!2256788 () Bool)

(declare-fun lt!1263072 () Bool)

(assert (=> b!3645533 (= e!2256788 (not lt!1263072))))

(declare-fun b!3645534 () Bool)

(declare-fun res!1478316 () Bool)

(declare-fun e!2256791 () Bool)

(assert (=> b!3645534 (=> res!1478316 e!2256791)))

(declare-fun e!2256789 () Bool)

(assert (=> b!3645534 (= res!1478316 e!2256789)))

(declare-fun res!1478322 () Bool)

(assert (=> b!3645534 (=> (not res!1478322) (not e!2256789))))

(assert (=> b!3645534 (= res!1478322 lt!1263072)))

(declare-fun b!3645535 () Bool)

(declare-fun e!2256790 () Bool)

(assert (=> b!3645535 (= e!2256790 (nullable!3649 (regex!5744 lt!1262765)))))

(declare-fun b!3645536 () Bool)

(declare-fun e!2256794 () Bool)

(assert (=> b!3645536 (= e!2256794 e!2256788)))

(declare-fun c!630207 () Bool)

(assert (=> b!3645536 (= c!630207 ((_ is EmptyLang!10503) (regex!5744 lt!1262765)))))

(declare-fun b!3645537 () Bool)

(declare-fun res!1478320 () Bool)

(assert (=> b!3645537 (=> (not res!1478320) (not e!2256789))))

(declare-fun call!263453 () Bool)

(assert (=> b!3645537 (= res!1478320 (not call!263453))))

(declare-fun b!3645538 () Bool)

(assert (=> b!3645538 (= e!2256794 (= lt!1263072 call!263453))))

(declare-fun d!1071663 () Bool)

(assert (=> d!1071663 e!2256794))

(declare-fun c!630208 () Bool)

(assert (=> d!1071663 (= c!630208 ((_ is EmptyExpr!10503) (regex!5744 lt!1262765)))))

(assert (=> d!1071663 (= lt!1263072 e!2256790)))

(declare-fun c!630209 () Bool)

(assert (=> d!1071663 (= c!630209 (isEmpty!22756 (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))))))

(assert (=> d!1071663 (validRegex!4811 (regex!5744 lt!1262765))))

(assert (=> d!1071663 (= (matchR!5072 (regex!5744 lt!1262765) (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))) lt!1263072)))

(declare-fun b!3645539 () Bool)

(declare-fun res!1478321 () Bool)

(assert (=> b!3645539 (=> (not res!1478321) (not e!2256789))))

(assert (=> b!3645539 (= res!1478321 (isEmpty!22756 (tail!5647 (list!14230 (charsOf!3758 (_1!22280 lt!1262762))))))))

(declare-fun b!3645540 () Bool)

(declare-fun e!2256793 () Bool)

(assert (=> b!3645540 (= e!2256791 e!2256793)))

(declare-fun res!1478317 () Bool)

(assert (=> b!3645540 (=> (not res!1478317) (not e!2256793))))

(assert (=> b!3645540 (= res!1478317 (not lt!1263072))))

(declare-fun b!3645541 () Bool)

(declare-fun e!2256792 () Bool)

(assert (=> b!3645541 (= e!2256792 (not (= (head!7750 (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))) (c!630092 (regex!5744 lt!1262765)))))))

(declare-fun b!3645542 () Bool)

(declare-fun res!1478315 () Bool)

(assert (=> b!3645542 (=> res!1478315 e!2256791)))

(assert (=> b!3645542 (= res!1478315 (not ((_ is ElementMatch!10503) (regex!5744 lt!1262765))))))

(assert (=> b!3645542 (= e!2256788 e!2256791)))

(declare-fun bm!263448 () Bool)

(assert (=> bm!263448 (= call!263453 (isEmpty!22756 (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))))))

(declare-fun b!3645543 () Bool)

(assert (=> b!3645543 (= e!2256793 e!2256792)))

(declare-fun res!1478318 () Bool)

(assert (=> b!3645543 (=> res!1478318 e!2256792)))

(assert (=> b!3645543 (= res!1478318 call!263453)))

(declare-fun b!3645544 () Bool)

(assert (=> b!3645544 (= e!2256790 (matchR!5072 (derivativeStep!3198 (regex!5744 lt!1262765) (head!7750 (list!14230 (charsOf!3758 (_1!22280 lt!1262762))))) (tail!5647 (list!14230 (charsOf!3758 (_1!22280 lt!1262762))))))))

(declare-fun b!3645545 () Bool)

(declare-fun res!1478319 () Bool)

(assert (=> b!3645545 (=> res!1478319 e!2256792)))

(assert (=> b!3645545 (= res!1478319 (not (isEmpty!22756 (tail!5647 (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))))))))

(declare-fun b!3645546 () Bool)

(assert (=> b!3645546 (= e!2256789 (= (head!7750 (list!14230 (charsOf!3758 (_1!22280 lt!1262762)))) (c!630092 (regex!5744 lt!1262765))))))

(assert (= (and d!1071663 c!630209) b!3645535))

(assert (= (and d!1071663 (not c!630209)) b!3645544))

(assert (= (and d!1071663 c!630208) b!3645538))

(assert (= (and d!1071663 (not c!630208)) b!3645536))

(assert (= (and b!3645536 c!630207) b!3645533))

(assert (= (and b!3645536 (not c!630207)) b!3645542))

(assert (= (and b!3645542 (not res!1478315)) b!3645534))

(assert (= (and b!3645534 res!1478322) b!3645537))

(assert (= (and b!3645537 res!1478320) b!3645539))

(assert (= (and b!3645539 res!1478321) b!3645546))

(assert (= (and b!3645534 (not res!1478316)) b!3645540))

(assert (= (and b!3645540 res!1478317) b!3645543))

(assert (= (and b!3645543 (not res!1478318)) b!3645545))

(assert (= (and b!3645545 (not res!1478319)) b!3645541))

(assert (= (or b!3645538 b!3645537 b!3645543) bm!263448))

(assert (=> b!3645546 m!4148491))

(declare-fun m!4149341 () Bool)

(assert (=> b!3645546 m!4149341))

(assert (=> d!1071663 m!4148491))

(declare-fun m!4149343 () Bool)

(assert (=> d!1071663 m!4149343))

(declare-fun m!4149345 () Bool)

(assert (=> d!1071663 m!4149345))

(assert (=> b!3645541 m!4148491))

(assert (=> b!3645541 m!4149341))

(declare-fun m!4149347 () Bool)

(assert (=> b!3645535 m!4149347))

(assert (=> b!3645545 m!4148491))

(declare-fun m!4149349 () Bool)

(assert (=> b!3645545 m!4149349))

(assert (=> b!3645545 m!4149349))

(declare-fun m!4149351 () Bool)

(assert (=> b!3645545 m!4149351))

(assert (=> b!3645539 m!4148491))

(assert (=> b!3645539 m!4149349))

(assert (=> b!3645539 m!4149349))

(assert (=> b!3645539 m!4149351))

(assert (=> b!3645544 m!4148491))

(assert (=> b!3645544 m!4149341))

(assert (=> b!3645544 m!4149341))

(declare-fun m!4149353 () Bool)

(assert (=> b!3645544 m!4149353))

(assert (=> b!3645544 m!4148491))

(assert (=> b!3645544 m!4149349))

(assert (=> b!3645544 m!4149353))

(assert (=> b!3645544 m!4149349))

(declare-fun m!4149355 () Bool)

(assert (=> b!3645544 m!4149355))

(assert (=> bm!263448 m!4148491))

(assert (=> bm!263448 m!4149343))

(assert (=> b!3644871 d!1071663))

(declare-fun d!1071665 () Bool)

(assert (=> d!1071665 (= (list!14230 (charsOf!3758 (_1!22280 lt!1262762))) (list!14234 (c!630093 (charsOf!3758 (_1!22280 lt!1262762)))))))

(declare-fun bs!572089 () Bool)

(assert (= bs!572089 d!1071665))

(declare-fun m!4149357 () Bool)

(assert (=> bs!572089 m!4149357))

(assert (=> b!3644871 d!1071665))

(assert (=> b!3644871 d!1071487))

(declare-fun d!1071667 () Bool)

(assert (=> d!1071667 (= (get!12599 lt!1262772) (v!37960 lt!1262772))))

(assert (=> b!3644871 d!1071667))

(declare-fun b!3645565 () Bool)

(declare-fun e!2256812 () Bool)

(declare-fun e!2256815 () Bool)

(assert (=> b!3645565 (= e!2256812 e!2256815)))

(declare-fun c!630214 () Bool)

(assert (=> b!3645565 (= c!630214 ((_ is Union!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645566 () Bool)

(declare-fun e!2256813 () Bool)

(assert (=> b!3645566 (= e!2256812 e!2256813)))

(declare-fun res!1478337 () Bool)

(assert (=> b!3645566 (= res!1478337 (not (nullable!3649 (reg!10832 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))))

(assert (=> b!3645566 (=> (not res!1478337) (not e!2256813))))

(declare-fun b!3645567 () Bool)

(declare-fun e!2256814 () Bool)

(declare-fun call!263461 () Bool)

(assert (=> b!3645567 (= e!2256814 call!263461)))

(declare-fun c!630215 () Bool)

(declare-fun bm!263455 () Bool)

(declare-fun call!263462 () Bool)

(assert (=> bm!263455 (= call!263462 (validRegex!4811 (ite c!630215 (reg!10832 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (ite c!630214 (regTwo!21519 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (regOne!21518 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))))

(declare-fun b!3645569 () Bool)

(declare-fun res!1478335 () Bool)

(assert (=> b!3645569 (=> (not res!1478335) (not e!2256814))))

(declare-fun call!263460 () Bool)

(assert (=> b!3645569 (= res!1478335 call!263460)))

(assert (=> b!3645569 (= e!2256815 e!2256814)))

(declare-fun b!3645570 () Bool)

(assert (=> b!3645570 (= e!2256813 call!263462)))

(declare-fun d!1071669 () Bool)

(declare-fun res!1478333 () Bool)

(declare-fun e!2256811 () Bool)

(assert (=> d!1071669 (=> res!1478333 e!2256811)))

(assert (=> d!1071669 (= res!1478333 ((_ is ElementMatch!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(assert (=> d!1071669 (= (validRegex!4811 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) e!2256811)))

(declare-fun b!3645568 () Bool)

(declare-fun e!2256810 () Bool)

(assert (=> b!3645568 (= e!2256810 call!263460)))

(declare-fun b!3645571 () Bool)

(assert (=> b!3645571 (= e!2256811 e!2256812)))

(assert (=> b!3645571 (= c!630215 ((_ is Star!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645572 () Bool)

(declare-fun e!2256809 () Bool)

(assert (=> b!3645572 (= e!2256809 e!2256810)))

(declare-fun res!1478334 () Bool)

(assert (=> b!3645572 (=> (not res!1478334) (not e!2256810))))

(assert (=> b!3645572 (= res!1478334 call!263461)))

(declare-fun b!3645573 () Bool)

(declare-fun res!1478336 () Bool)

(assert (=> b!3645573 (=> res!1478336 e!2256809)))

(assert (=> b!3645573 (= res!1478336 (not ((_ is Concat!16478) (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> b!3645573 (= e!2256815 e!2256809)))

(declare-fun bm!263456 () Bool)

(assert (=> bm!263456 (= call!263461 call!263462)))

(declare-fun bm!263457 () Bool)

(assert (=> bm!263457 (= call!263460 (validRegex!4811 (ite c!630214 (regOne!21519 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (regTwo!21518 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))))

(assert (= (and d!1071669 (not res!1478333)) b!3645571))

(assert (= (and b!3645571 c!630215) b!3645566))

(assert (= (and b!3645571 (not c!630215)) b!3645565))

(assert (= (and b!3645566 res!1478337) b!3645570))

(assert (= (and b!3645565 c!630214) b!3645569))

(assert (= (and b!3645565 (not c!630214)) b!3645573))

(assert (= (and b!3645569 res!1478335) b!3645567))

(assert (= (and b!3645573 (not res!1478336)) b!3645572))

(assert (= (and b!3645572 res!1478334) b!3645568))

(assert (= (or b!3645569 b!3645568) bm!263457))

(assert (= (or b!3645567 b!3645572) bm!263456))

(assert (= (or b!3645570 bm!263456) bm!263455))

(declare-fun m!4149359 () Bool)

(assert (=> b!3645566 m!4149359))

(declare-fun m!4149361 () Bool)

(assert (=> bm!263455 m!4149361))

(declare-fun m!4149363 () Bool)

(assert (=> bm!263457 m!4149363))

(assert (=> b!3644878 d!1071669))

(declare-fun d!1071671 () Bool)

(declare-fun lt!1263073 () Bool)

(assert (=> d!1071671 (= lt!1263073 (select (content!5537 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))) lt!1262777))))

(declare-fun e!2256817 () Bool)

(assert (=> d!1071671 (= lt!1263073 e!2256817)))

(declare-fun res!1478338 () Bool)

(assert (=> d!1071671 (=> (not res!1478338) (not e!2256817))))

(assert (=> d!1071671 (= res!1478338 ((_ is Cons!38420) (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> d!1071671 (= (contains!7553 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262777) lt!1263073)))

(declare-fun b!3645574 () Bool)

(declare-fun e!2256816 () Bool)

(assert (=> b!3645574 (= e!2256817 e!2256816)))

(declare-fun res!1478339 () Bool)

(assert (=> b!3645574 (=> res!1478339 e!2256816)))

(assert (=> b!3645574 (= res!1478339 (= (h!43840 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))) lt!1262777))))

(declare-fun b!3645575 () Bool)

(assert (=> b!3645575 (= e!2256816 (contains!7553 (t!296927 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))) lt!1262777))))

(assert (= (and d!1071671 res!1478338) b!3645574))

(assert (= (and b!3645574 (not res!1478339)) b!3645575))

(assert (=> d!1071671 m!4148449))

(declare-fun m!4149365 () Bool)

(assert (=> d!1071671 m!4149365))

(declare-fun m!4149367 () Bool)

(assert (=> d!1071671 m!4149367))

(declare-fun m!4149369 () Bool)

(assert (=> b!3645575 m!4149369))

(assert (=> b!3644878 d!1071671))

(declare-fun b!3645592 () Bool)

(declare-fun e!2256828 () List!38544)

(assert (=> b!3645592 (= e!2256828 Nil!38420)))

(declare-fun b!3645593 () Bool)

(declare-fun e!2256829 () List!38544)

(declare-fun e!2256827 () List!38544)

(assert (=> b!3645593 (= e!2256829 e!2256827)))

(declare-fun c!630225 () Bool)

(assert (=> b!3645593 (= c!630225 ((_ is Union!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun bm!263466 () Bool)

(declare-fun call!263473 () List!38544)

(declare-fun call!263474 () List!38544)

(assert (=> bm!263466 (= call!263473 call!263474)))

(declare-fun b!3645594 () Bool)

(declare-fun call!263472 () List!38544)

(assert (=> b!3645594 (= e!2256827 call!263472)))

(declare-fun c!630226 () Bool)

(declare-fun bm!263467 () Bool)

(assert (=> bm!263467 (= call!263474 (usedCharacters!956 (ite c!630226 (reg!10832 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (ite c!630225 (regTwo!21519 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (regOne!21518 (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))))

(declare-fun b!3645595 () Bool)

(assert (=> b!3645595 (= e!2256829 call!263474)))

(declare-fun d!1071673 () Bool)

(declare-fun c!630227 () Bool)

(assert (=> d!1071673 (= c!630227 (or ((_ is EmptyExpr!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) ((_ is EmptyLang!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762))))))))

(assert (=> d!1071673 (= (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) e!2256828)))

(declare-fun b!3645596 () Bool)

(assert (=> b!3645596 (= e!2256827 call!263472)))

(declare-fun bm!263468 () Bool)

(declare-fun call!263471 () List!38544)

(assert (=> bm!263468 (= call!263471 (usedCharacters!956 (ite c!630225 (regOne!21519 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) (regTwo!21518 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))))

(declare-fun bm!263469 () Bool)

(assert (=> bm!263469 (= call!263472 (++!9560 (ite c!630225 call!263471 call!263473) (ite c!630225 call!263473 call!263471)))))

(declare-fun b!3645597 () Bool)

(declare-fun e!2256826 () List!38544)

(assert (=> b!3645597 (= e!2256828 e!2256826)))

(declare-fun c!630224 () Bool)

(assert (=> b!3645597 (= c!630224 ((_ is ElementMatch!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(declare-fun b!3645598 () Bool)

(assert (=> b!3645598 (= c!630226 ((_ is Star!10503) (regex!5744 (rule!8534 (_1!22280 lt!1262762)))))))

(assert (=> b!3645598 (= e!2256826 e!2256829)))

(declare-fun b!3645599 () Bool)

(assert (=> b!3645599 (= e!2256826 (Cons!38420 (c!630092 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) Nil!38420))))

(assert (= (and d!1071673 c!630227) b!3645592))

(assert (= (and d!1071673 (not c!630227)) b!3645597))

(assert (= (and b!3645597 c!630224) b!3645599))

(assert (= (and b!3645597 (not c!630224)) b!3645598))

(assert (= (and b!3645598 c!630226) b!3645595))

(assert (= (and b!3645598 (not c!630226)) b!3645593))

(assert (= (and b!3645593 c!630225) b!3645594))

(assert (= (and b!3645593 (not c!630225)) b!3645596))

(assert (= (or b!3645594 b!3645596) bm!263468))

(assert (= (or b!3645594 b!3645596) bm!263466))

(assert (= (or b!3645594 b!3645596) bm!263469))

(assert (= (or b!3645595 bm!263466) bm!263467))

(declare-fun m!4149371 () Bool)

(assert (=> bm!263467 m!4149371))

(declare-fun m!4149373 () Bool)

(assert (=> bm!263468 m!4149373))

(declare-fun m!4149375 () Bool)

(assert (=> bm!263469 m!4149375))

(assert (=> b!3644878 d!1071673))

(declare-fun d!1071675 () Bool)

(assert (=> d!1071675 (not (contains!7553 (usedCharacters!956 (regex!5744 (rule!8534 (_1!22280 lt!1262762)))) lt!1262777))))

(declare-fun lt!1263076 () Unit!55296)

(declare-fun choose!21464 (LexerInterface!5333 List!38545 List!38545 Rule!11288 Rule!11288 C!21192) Unit!55296)

(assert (=> d!1071675 (= lt!1263076 (choose!21464 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8534 (_1!22280 lt!1262762)) lt!1262777))))

(assert (=> d!1071675 (rulesInvariant!4730 thiss!23823 rules!3307)))

(assert (=> d!1071675 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!272 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8534 (_1!22280 lt!1262762)) lt!1262777) lt!1263076)))

(declare-fun bs!572090 () Bool)

(assert (= bs!572090 d!1071675))

(assert (=> bs!572090 m!4148449))

(assert (=> bs!572090 m!4148449))

(assert (=> bs!572090 m!4148451))

(declare-fun m!4149377 () Bool)

(assert (=> bs!572090 m!4149377))

(assert (=> bs!572090 m!4148573))

(assert (=> b!3644878 d!1071675))

(declare-fun d!1071677 () Bool)

(assert (=> d!1071677 (= (inv!51857 (tag!6500 (rule!8534 token!511))) (= (mod (str.len (value!184163 (tag!6500 (rule!8534 token!511)))) 2) 0))))

(assert (=> b!3644856 d!1071677))

(declare-fun d!1071679 () Bool)

(declare-fun res!1478340 () Bool)

(declare-fun e!2256830 () Bool)

(assert (=> d!1071679 (=> (not res!1478340) (not e!2256830))))

(assert (=> d!1071679 (= res!1478340 (semiInverseModEq!2449 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (toValue!8036 (transformation!5744 (rule!8534 token!511)))))))

(assert (=> d!1071679 (= (inv!51860 (transformation!5744 (rule!8534 token!511))) e!2256830)))

(declare-fun b!3645600 () Bool)

(assert (=> b!3645600 (= e!2256830 (equivClasses!2348 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (toValue!8036 (transformation!5744 (rule!8534 token!511)))))))

(assert (= (and d!1071679 res!1478340) b!3645600))

(declare-fun m!4149379 () Bool)

(assert (=> d!1071679 m!4149379))

(declare-fun m!4149381 () Bool)

(assert (=> b!3645600 m!4149381))

(assert (=> b!3644856 d!1071679))

(declare-fun d!1071681 () Bool)

(assert (=> d!1071681 (= (inv!51857 (tag!6500 anOtherTypeRule!33)) (= (mod (str.len (value!184163 (tag!6500 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3644877 d!1071681))

(declare-fun d!1071683 () Bool)

(declare-fun res!1478341 () Bool)

(declare-fun e!2256831 () Bool)

(assert (=> d!1071683 (=> (not res!1478341) (not e!2256831))))

(assert (=> d!1071683 (= res!1478341 (semiInverseModEq!2449 (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toValue!8036 (transformation!5744 anOtherTypeRule!33))))))

(assert (=> d!1071683 (= (inv!51860 (transformation!5744 anOtherTypeRule!33)) e!2256831)))

(declare-fun b!3645601 () Bool)

(assert (=> b!3645601 (= e!2256831 (equivClasses!2348 (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toValue!8036 (transformation!5744 anOtherTypeRule!33))))))

(assert (= (and d!1071683 res!1478341) b!3645601))

(declare-fun m!4149383 () Bool)

(assert (=> d!1071683 m!4149383))

(declare-fun m!4149385 () Bool)

(assert (=> b!3645601 m!4149385))

(assert (=> b!3644877 d!1071683))

(declare-fun d!1071685 () Bool)

(declare-fun lt!1263077 () Bool)

(assert (=> d!1071685 (= lt!1263077 (select (content!5537 (usedCharacters!956 (regex!5744 anOtherTypeRule!33))) lt!1262756))))

(declare-fun e!2256833 () Bool)

(assert (=> d!1071685 (= lt!1263077 e!2256833)))

(declare-fun res!1478342 () Bool)

(assert (=> d!1071685 (=> (not res!1478342) (not e!2256833))))

(assert (=> d!1071685 (= res!1478342 ((_ is Cons!38420) (usedCharacters!956 (regex!5744 anOtherTypeRule!33))))))

(assert (=> d!1071685 (= (contains!7553 (usedCharacters!956 (regex!5744 anOtherTypeRule!33)) lt!1262756) lt!1263077)))

(declare-fun b!3645602 () Bool)

(declare-fun e!2256832 () Bool)

(assert (=> b!3645602 (= e!2256833 e!2256832)))

(declare-fun res!1478343 () Bool)

(assert (=> b!3645602 (=> res!1478343 e!2256832)))

(assert (=> b!3645602 (= res!1478343 (= (h!43840 (usedCharacters!956 (regex!5744 anOtherTypeRule!33))) lt!1262756))))

(declare-fun b!3645603 () Bool)

(assert (=> b!3645603 (= e!2256832 (contains!7553 (t!296927 (usedCharacters!956 (regex!5744 anOtherTypeRule!33))) lt!1262756))))

(assert (= (and d!1071685 res!1478342) b!3645602))

(assert (= (and b!3645602 (not res!1478343)) b!3645603))

(assert (=> d!1071685 m!4148503))

(declare-fun m!4149387 () Bool)

(assert (=> d!1071685 m!4149387))

(declare-fun m!4149389 () Bool)

(assert (=> d!1071685 m!4149389))

(declare-fun m!4149391 () Bool)

(assert (=> b!3645603 m!4149391))

(assert (=> b!3644858 d!1071685))

(declare-fun b!3645604 () Bool)

(declare-fun e!2256836 () List!38544)

(assert (=> b!3645604 (= e!2256836 Nil!38420)))

(declare-fun b!3645605 () Bool)

(declare-fun e!2256837 () List!38544)

(declare-fun e!2256835 () List!38544)

(assert (=> b!3645605 (= e!2256837 e!2256835)))

(declare-fun c!630230 () Bool)

(assert (=> b!3645605 (= c!630230 ((_ is Union!10503) (regex!5744 anOtherTypeRule!33)))))

(declare-fun bm!263470 () Bool)

(declare-fun call!263477 () List!38544)

(declare-fun call!263478 () List!38544)

(assert (=> bm!263470 (= call!263477 call!263478)))

(declare-fun b!3645606 () Bool)

(declare-fun call!263476 () List!38544)

(assert (=> b!3645606 (= e!2256835 call!263476)))

(declare-fun bm!263471 () Bool)

(declare-fun c!630231 () Bool)

(assert (=> bm!263471 (= call!263478 (usedCharacters!956 (ite c!630231 (reg!10832 (regex!5744 anOtherTypeRule!33)) (ite c!630230 (regTwo!21519 (regex!5744 anOtherTypeRule!33)) (regOne!21518 (regex!5744 anOtherTypeRule!33))))))))

(declare-fun b!3645607 () Bool)

(assert (=> b!3645607 (= e!2256837 call!263478)))

(declare-fun d!1071687 () Bool)

(declare-fun c!630232 () Bool)

(assert (=> d!1071687 (= c!630232 (or ((_ is EmptyExpr!10503) (regex!5744 anOtherTypeRule!33)) ((_ is EmptyLang!10503) (regex!5744 anOtherTypeRule!33))))))

(assert (=> d!1071687 (= (usedCharacters!956 (regex!5744 anOtherTypeRule!33)) e!2256836)))

(declare-fun b!3645608 () Bool)

(assert (=> b!3645608 (= e!2256835 call!263476)))

(declare-fun bm!263472 () Bool)

(declare-fun call!263475 () List!38544)

(assert (=> bm!263472 (= call!263475 (usedCharacters!956 (ite c!630230 (regOne!21519 (regex!5744 anOtherTypeRule!33)) (regTwo!21518 (regex!5744 anOtherTypeRule!33)))))))

(declare-fun bm!263473 () Bool)

(assert (=> bm!263473 (= call!263476 (++!9560 (ite c!630230 call!263475 call!263477) (ite c!630230 call!263477 call!263475)))))

(declare-fun b!3645609 () Bool)

(declare-fun e!2256834 () List!38544)

(assert (=> b!3645609 (= e!2256836 e!2256834)))

(declare-fun c!630229 () Bool)

(assert (=> b!3645609 (= c!630229 ((_ is ElementMatch!10503) (regex!5744 anOtherTypeRule!33)))))

(declare-fun b!3645610 () Bool)

(assert (=> b!3645610 (= c!630231 ((_ is Star!10503) (regex!5744 anOtherTypeRule!33)))))

(assert (=> b!3645610 (= e!2256834 e!2256837)))

(declare-fun b!3645611 () Bool)

(assert (=> b!3645611 (= e!2256834 (Cons!38420 (c!630092 (regex!5744 anOtherTypeRule!33)) Nil!38420))))

(assert (= (and d!1071687 c!630232) b!3645604))

(assert (= (and d!1071687 (not c!630232)) b!3645609))

(assert (= (and b!3645609 c!630229) b!3645611))

(assert (= (and b!3645609 (not c!630229)) b!3645610))

(assert (= (and b!3645610 c!630231) b!3645607))

(assert (= (and b!3645610 (not c!630231)) b!3645605))

(assert (= (and b!3645605 c!630230) b!3645606))

(assert (= (and b!3645605 (not c!630230)) b!3645608))

(assert (= (or b!3645606 b!3645608) bm!263472))

(assert (= (or b!3645606 b!3645608) bm!263470))

(assert (= (or b!3645606 b!3645608) bm!263473))

(assert (= (or b!3645607 bm!263470) bm!263471))

(declare-fun m!4149393 () Bool)

(assert (=> bm!263471 m!4149393))

(declare-fun m!4149395 () Bool)

(assert (=> bm!263472 m!4149395))

(declare-fun m!4149397 () Bool)

(assert (=> bm!263473 m!4149397))

(assert (=> b!3644858 d!1071687))

(declare-fun d!1071689 () Bool)

(assert (=> d!1071689 (= (inv!51857 (tag!6500 (h!43841 rules!3307))) (= (mod (str.len (value!184163 (tag!6500 (h!43841 rules!3307)))) 2) 0))))

(assert (=> b!3644879 d!1071689))

(declare-fun d!1071691 () Bool)

(declare-fun res!1478344 () Bool)

(declare-fun e!2256838 () Bool)

(assert (=> d!1071691 (=> (not res!1478344) (not e!2256838))))

(assert (=> d!1071691 (= res!1478344 (semiInverseModEq!2449 (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toValue!8036 (transformation!5744 (h!43841 rules!3307)))))))

(assert (=> d!1071691 (= (inv!51860 (transformation!5744 (h!43841 rules!3307))) e!2256838)))

(declare-fun b!3645612 () Bool)

(assert (=> b!3645612 (= e!2256838 (equivClasses!2348 (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toValue!8036 (transformation!5744 (h!43841 rules!3307)))))))

(assert (= (and d!1071691 res!1478344) b!3645612))

(declare-fun m!4149399 () Bool)

(assert (=> d!1071691 m!4149399))

(declare-fun m!4149401 () Bool)

(assert (=> b!3645612 m!4149401))

(assert (=> b!3644879 d!1071691))

(declare-fun d!1071693 () Bool)

(declare-fun lt!1263078 () Bool)

(assert (=> d!1071693 (= lt!1263078 (select (content!5537 lt!1262761) lt!1262777))))

(declare-fun e!2256840 () Bool)

(assert (=> d!1071693 (= lt!1263078 e!2256840)))

(declare-fun res!1478345 () Bool)

(assert (=> d!1071693 (=> (not res!1478345) (not e!2256840))))

(assert (=> d!1071693 (= res!1478345 ((_ is Cons!38420) lt!1262761))))

(assert (=> d!1071693 (= (contains!7553 lt!1262761 lt!1262777) lt!1263078)))

(declare-fun b!3645613 () Bool)

(declare-fun e!2256839 () Bool)

(assert (=> b!3645613 (= e!2256840 e!2256839)))

(declare-fun res!1478346 () Bool)

(assert (=> b!3645613 (=> res!1478346 e!2256839)))

(assert (=> b!3645613 (= res!1478346 (= (h!43840 lt!1262761) lt!1262777))))

(declare-fun b!3645614 () Bool)

(assert (=> b!3645614 (= e!2256839 (contains!7553 (t!296927 lt!1262761) lt!1262777))))

(assert (= (and d!1071693 res!1478345) b!3645613))

(assert (= (and b!3645613 (not res!1478346)) b!3645614))

(declare-fun m!4149403 () Bool)

(assert (=> d!1071693 m!4149403))

(declare-fun m!4149405 () Bool)

(assert (=> d!1071693 m!4149405))

(declare-fun m!4149407 () Bool)

(assert (=> b!3645614 m!4149407))

(assert (=> b!3644854 d!1071693))

(declare-fun d!1071695 () Bool)

(assert (=> d!1071695 (= (head!7750 lt!1262778) (h!43840 lt!1262778))))

(assert (=> b!3644854 d!1071695))

(declare-fun d!1071697 () Bool)

(declare-fun res!1478351 () Bool)

(declare-fun e!2256845 () Bool)

(assert (=> d!1071697 (=> res!1478351 e!2256845)))

(assert (=> d!1071697 (= res!1478351 (not ((_ is Cons!38421) rules!3307)))))

(assert (=> d!1071697 (= (sepAndNonSepRulesDisjointChars!1912 rules!3307 rules!3307) e!2256845)))

(declare-fun b!3645619 () Bool)

(declare-fun e!2256846 () Bool)

(assert (=> b!3645619 (= e!2256845 e!2256846)))

(declare-fun res!1478352 () Bool)

(assert (=> b!3645619 (=> (not res!1478352) (not e!2256846))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!873 (Rule!11288 List!38545) Bool)

(assert (=> b!3645619 (= res!1478352 (ruleDisjointCharsFromAllFromOtherType!873 (h!43841 rules!3307) rules!3307))))

(declare-fun b!3645620 () Bool)

(assert (=> b!3645620 (= e!2256846 (sepAndNonSepRulesDisjointChars!1912 rules!3307 (t!296928 rules!3307)))))

(assert (= (and d!1071697 (not res!1478351)) b!3645619))

(assert (= (and b!3645619 res!1478352) b!3645620))

(declare-fun m!4149409 () Bool)

(assert (=> b!3645619 m!4149409))

(declare-fun m!4149411 () Bool)

(assert (=> b!3645620 m!4149411))

(assert (=> b!3644875 d!1071697))

(declare-fun d!1071699 () Bool)

(assert (=> d!1071699 (= (maxPrefixOneRule!2005 thiss!23823 (rule!8534 (_1!22280 lt!1262762)) lt!1262754) (Some!8115 (tuple2!38293 (Token!10855 (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) (seqFromList!4293 lt!1262778)) (rule!8534 (_1!22280 lt!1262762)) (size!29328 lt!1262778) lt!1262778) (_2!22280 lt!1262762))))))

(declare-fun lt!1263081 () Unit!55296)

(declare-fun choose!21465 (LexerInterface!5333 List!38545 List!38544 List!38544 List!38544 Rule!11288) Unit!55296)

(assert (=> d!1071699 (= lt!1263081 (choose!21465 thiss!23823 rules!3307 lt!1262778 lt!1262754 (_2!22280 lt!1262762) (rule!8534 (_1!22280 lt!1262762))))))

(assert (=> d!1071699 (not (isEmpty!22757 rules!3307))))

(assert (=> d!1071699 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1061 thiss!23823 rules!3307 lt!1262778 lt!1262754 (_2!22280 lt!1262762) (rule!8534 (_1!22280 lt!1262762))) lt!1263081)))

(declare-fun bs!572091 () Bool)

(assert (= bs!572091 d!1071699))

(assert (=> bs!572091 m!4148513))

(assert (=> bs!572091 m!4148519))

(declare-fun m!4149413 () Bool)

(assert (=> bs!572091 m!4149413))

(assert (=> bs!572091 m!4148511))

(assert (=> bs!572091 m!4148513))

(assert (=> bs!572091 m!4148517))

(assert (=> bs!572091 m!4148497))

(assert (=> b!3644853 d!1071699))

(declare-fun d!1071701 () Bool)

(assert (=> d!1071701 (= (seqFromList!4293 lt!1262778) (fromListB!1985 lt!1262778))))

(declare-fun bs!572092 () Bool)

(assert (= bs!572092 d!1071701))

(declare-fun m!4149415 () Bool)

(assert (=> bs!572092 m!4149415))

(assert (=> b!3644853 d!1071701))

(declare-fun b!3645639 () Bool)

(declare-fun res!1478367 () Bool)

(declare-fun e!2256856 () Bool)

(assert (=> b!3645639 (=> (not res!1478367) (not e!2256856))))

(declare-fun lt!1263094 () Option!8116)

(assert (=> b!3645639 (= res!1478367 (= (rule!8534 (_1!22280 (get!12598 lt!1263094))) (rule!8534 (_1!22280 lt!1262762))))))

(declare-fun d!1071703 () Bool)

(declare-fun e!2256857 () Bool)

(assert (=> d!1071703 e!2256857))

(declare-fun res!1478373 () Bool)

(assert (=> d!1071703 (=> res!1478373 e!2256857)))

(assert (=> d!1071703 (= res!1478373 (isEmpty!22760 lt!1263094))))

(declare-fun e!2256858 () Option!8116)

(assert (=> d!1071703 (= lt!1263094 e!2256858)))

(declare-fun c!630235 () Bool)

(declare-datatypes ((tuple2!38300 0))(
  ( (tuple2!38301 (_1!22284 List!38544) (_2!22284 List!38544)) )
))
(declare-fun lt!1263092 () tuple2!38300)

(assert (=> d!1071703 (= c!630235 (isEmpty!22756 (_1!22284 lt!1263092)))))

(declare-fun findLongestMatch!960 (Regex!10503 List!38544) tuple2!38300)

(assert (=> d!1071703 (= lt!1263092 (findLongestMatch!960 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262754))))

(assert (=> d!1071703 (ruleValid!2008 thiss!23823 (rule!8534 (_1!22280 lt!1262762)))))

(assert (=> d!1071703 (= (maxPrefixOneRule!2005 thiss!23823 (rule!8534 (_1!22280 lt!1262762)) lt!1262754) lt!1263094)))

(declare-fun b!3645640 () Bool)

(assert (=> b!3645640 (= e!2256858 (Some!8115 (tuple2!38293 (Token!10855 (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) (seqFromList!4293 (_1!22284 lt!1263092))) (rule!8534 (_1!22280 lt!1262762)) (size!29329 (seqFromList!4293 (_1!22284 lt!1263092))) (_1!22284 lt!1263092)) (_2!22284 lt!1263092))))))

(declare-fun lt!1263095 () Unit!55296)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1018 (Regex!10503 List!38544) Unit!55296)

(assert (=> b!3645640 (= lt!1263095 (longestMatchIsAcceptedByMatchOrIsEmpty!1018 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) lt!1262754))))

(declare-fun res!1478368 () Bool)

(declare-fun findLongestMatchInner!1045 (Regex!10503 List!38544 Int List!38544 List!38544 Int) tuple2!38300)

(assert (=> b!3645640 (= res!1478368 (isEmpty!22756 (_1!22284 (findLongestMatchInner!1045 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) Nil!38420 (size!29328 Nil!38420) lt!1262754 lt!1262754 (size!29328 lt!1262754)))))))

(declare-fun e!2256855 () Bool)

(assert (=> b!3645640 (=> res!1478368 e!2256855)))

(assert (=> b!3645640 e!2256855))

(declare-fun lt!1263096 () Unit!55296)

(assert (=> b!3645640 (= lt!1263096 lt!1263095)))

(declare-fun lt!1263093 () Unit!55296)

(assert (=> b!3645640 (= lt!1263093 (lemmaSemiInverse!1493 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) (seqFromList!4293 (_1!22284 lt!1263092))))))

(declare-fun b!3645641 () Bool)

(assert (=> b!3645641 (= e!2256856 (= (size!29327 (_1!22280 (get!12598 lt!1263094))) (size!29328 (originalCharacters!6458 (_1!22280 (get!12598 lt!1263094))))))))

(declare-fun b!3645642 () Bool)

(assert (=> b!3645642 (= e!2256857 e!2256856)))

(declare-fun res!1478372 () Bool)

(assert (=> b!3645642 (=> (not res!1478372) (not e!2256856))))

(assert (=> b!3645642 (= res!1478372 (matchR!5072 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1263094))))))))

(declare-fun b!3645643 () Bool)

(declare-fun res!1478369 () Bool)

(assert (=> b!3645643 (=> (not res!1478369) (not e!2256856))))

(assert (=> b!3645643 (= res!1478369 (= (value!184164 (_1!22280 (get!12598 lt!1263094))) (apply!9246 (transformation!5744 (rule!8534 (_1!22280 (get!12598 lt!1263094)))) (seqFromList!4293 (originalCharacters!6458 (_1!22280 (get!12598 lt!1263094)))))))))

(declare-fun b!3645644 () Bool)

(declare-fun res!1478370 () Bool)

(assert (=> b!3645644 (=> (not res!1478370) (not e!2256856))))

(assert (=> b!3645644 (= res!1478370 (= (++!9560 (list!14230 (charsOf!3758 (_1!22280 (get!12598 lt!1263094)))) (_2!22280 (get!12598 lt!1263094))) lt!1262754))))

(declare-fun b!3645645 () Bool)

(assert (=> b!3645645 (= e!2256858 None!8115)))

(declare-fun b!3645646 () Bool)

(declare-fun res!1478371 () Bool)

(assert (=> b!3645646 (=> (not res!1478371) (not e!2256856))))

(assert (=> b!3645646 (= res!1478371 (< (size!29328 (_2!22280 (get!12598 lt!1263094))) (size!29328 lt!1262754)))))

(declare-fun b!3645647 () Bool)

(assert (=> b!3645647 (= e!2256855 (matchR!5072 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) (_1!22284 (findLongestMatchInner!1045 (regex!5744 (rule!8534 (_1!22280 lt!1262762))) Nil!38420 (size!29328 Nil!38420) lt!1262754 lt!1262754 (size!29328 lt!1262754)))))))

(assert (= (and d!1071703 c!630235) b!3645645))

(assert (= (and d!1071703 (not c!630235)) b!3645640))

(assert (= (and b!3645640 (not res!1478368)) b!3645647))

(assert (= (and d!1071703 (not res!1478373)) b!3645642))

(assert (= (and b!3645642 res!1478372) b!3645644))

(assert (= (and b!3645644 res!1478370) b!3645646))

(assert (= (and b!3645646 res!1478371) b!3645639))

(assert (= (and b!3645639 res!1478367) b!3645643))

(assert (= (and b!3645643 res!1478369) b!3645641))

(declare-fun m!4149417 () Bool)

(assert (=> b!3645642 m!4149417))

(declare-fun m!4149419 () Bool)

(assert (=> b!3645642 m!4149419))

(assert (=> b!3645642 m!4149419))

(declare-fun m!4149421 () Bool)

(assert (=> b!3645642 m!4149421))

(assert (=> b!3645642 m!4149421))

(declare-fun m!4149423 () Bool)

(assert (=> b!3645642 m!4149423))

(declare-fun m!4149425 () Bool)

(assert (=> d!1071703 m!4149425))

(declare-fun m!4149427 () Bool)

(assert (=> d!1071703 m!4149427))

(declare-fun m!4149429 () Bool)

(assert (=> d!1071703 m!4149429))

(declare-fun m!4149431 () Bool)

(assert (=> d!1071703 m!4149431))

(declare-fun m!4149433 () Bool)

(assert (=> b!3645640 m!4149433))

(assert (=> b!3645640 m!4148803))

(declare-fun m!4149435 () Bool)

(assert (=> b!3645640 m!4149435))

(assert (=> b!3645640 m!4148803))

(declare-fun m!4149437 () Bool)

(assert (=> b!3645640 m!4149437))

(declare-fun m!4149439 () Bool)

(assert (=> b!3645640 m!4149439))

(assert (=> b!3645640 m!4149439))

(declare-fun m!4149441 () Bool)

(assert (=> b!3645640 m!4149441))

(declare-fun m!4149443 () Bool)

(assert (=> b!3645640 m!4149443))

(assert (=> b!3645640 m!4149435))

(assert (=> b!3645640 m!4149439))

(declare-fun m!4149445 () Bool)

(assert (=> b!3645640 m!4149445))

(assert (=> b!3645640 m!4149439))

(declare-fun m!4149447 () Bool)

(assert (=> b!3645640 m!4149447))

(assert (=> b!3645641 m!4149417))

(declare-fun m!4149449 () Bool)

(assert (=> b!3645641 m!4149449))

(assert (=> b!3645643 m!4149417))

(declare-fun m!4149451 () Bool)

(assert (=> b!3645643 m!4149451))

(assert (=> b!3645643 m!4149451))

(declare-fun m!4149453 () Bool)

(assert (=> b!3645643 m!4149453))

(assert (=> b!3645646 m!4149417))

(declare-fun m!4149455 () Bool)

(assert (=> b!3645646 m!4149455))

(assert (=> b!3645646 m!4148803))

(assert (=> b!3645647 m!4149435))

(assert (=> b!3645647 m!4148803))

(assert (=> b!3645647 m!4149435))

(assert (=> b!3645647 m!4148803))

(assert (=> b!3645647 m!4149437))

(declare-fun m!4149457 () Bool)

(assert (=> b!3645647 m!4149457))

(assert (=> b!3645644 m!4149417))

(assert (=> b!3645644 m!4149419))

(assert (=> b!3645644 m!4149419))

(assert (=> b!3645644 m!4149421))

(assert (=> b!3645644 m!4149421))

(declare-fun m!4149459 () Bool)

(assert (=> b!3645644 m!4149459))

(assert (=> b!3645639 m!4149417))

(assert (=> b!3644853 d!1071703))

(declare-fun d!1071705 () Bool)

(assert (=> d!1071705 (= (apply!9246 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))) (seqFromList!4293 lt!1262778)) (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (seqFromList!4293 lt!1262778)))))

(declare-fun b_lambda!108111 () Bool)

(assert (=> (not b_lambda!108111) (not d!1071705)))

(declare-fun tb!210241 () Bool)

(declare-fun t!297031 () Bool)

(assert (=> (and b!3644876 (= (toValue!8036 (transformation!5744 (h!43841 rules!3307))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297031) tb!210241))

(declare-fun result!256036 () Bool)

(assert (=> tb!210241 (= result!256036 (inv!21 (dynLambda!16740 (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762)))) (seqFromList!4293 lt!1262778))))))

(declare-fun m!4149461 () Bool)

(assert (=> tb!210241 m!4149461))

(assert (=> d!1071705 t!297031))

(declare-fun b_and!269207 () Bool)

(assert (= b_and!269199 (and (=> t!297031 result!256036) b_and!269207)))

(declare-fun tb!210243 () Bool)

(declare-fun t!297033 () Bool)

(assert (=> (and b!3644885 (= (toValue!8036 (transformation!5744 rule!403)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297033) tb!210243))

(declare-fun result!256038 () Bool)

(assert (= result!256038 result!256036))

(assert (=> d!1071705 t!297033))

(declare-fun b_and!269209 () Bool)

(assert (= b_and!269201 (and (=> t!297033 result!256038) b_and!269209)))

(declare-fun t!297035 () Bool)

(declare-fun tb!210245 () Bool)

(assert (=> (and b!3644859 (= (toValue!8036 (transformation!5744 (rule!8534 token!511))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297035) tb!210245))

(declare-fun result!256040 () Bool)

(assert (= result!256040 result!256036))

(assert (=> d!1071705 t!297035))

(declare-fun b_and!269211 () Bool)

(assert (= b_and!269203 (and (=> t!297035 result!256040) b_and!269211)))

(declare-fun t!297037 () Bool)

(declare-fun tb!210247 () Bool)

(assert (=> (and b!3644866 (= (toValue!8036 (transformation!5744 anOtherTypeRule!33)) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297037) tb!210247))

(declare-fun result!256042 () Bool)

(assert (= result!256042 result!256036))

(assert (=> d!1071705 t!297037))

(declare-fun b_and!269213 () Bool)

(assert (= b_and!269205 (and (=> t!297037 result!256042) b_and!269213)))

(assert (=> d!1071705 m!4148513))

(declare-fun m!4149463 () Bool)

(assert (=> d!1071705 m!4149463))

(assert (=> b!3644853 d!1071705))

(declare-fun d!1071707 () Bool)

(assert (=> d!1071707 (= (_2!22280 lt!1262762) lt!1262771)))

(declare-fun lt!1263099 () Unit!55296)

(declare-fun choose!21466 (List!38544 List!38544 List!38544 List!38544 List!38544) Unit!55296)

(assert (=> d!1071707 (= lt!1263099 (choose!21466 lt!1262778 (_2!22280 lt!1262762) lt!1262778 lt!1262771 lt!1262754))))

(assert (=> d!1071707 (isPrefix!3107 lt!1262778 lt!1262754)))

(assert (=> d!1071707 (= (lemmaSamePrefixThenSameSuffix!1434 lt!1262778 (_2!22280 lt!1262762) lt!1262778 lt!1262771 lt!1262754) lt!1263099)))

(declare-fun bs!572093 () Bool)

(assert (= bs!572093 d!1071707))

(declare-fun m!4149465 () Bool)

(assert (=> bs!572093 m!4149465))

(assert (=> bs!572093 m!4148547))

(assert (=> b!3644853 d!1071707))

(declare-fun d!1071709 () Bool)

(declare-fun lt!1263102 () List!38544)

(assert (=> d!1071709 (= (++!9560 lt!1262778 lt!1263102) lt!1262754)))

(declare-fun e!2256862 () List!38544)

(assert (=> d!1071709 (= lt!1263102 e!2256862)))

(declare-fun c!630238 () Bool)

(assert (=> d!1071709 (= c!630238 ((_ is Cons!38420) lt!1262778))))

(assert (=> d!1071709 (>= (size!29328 lt!1262754) (size!29328 lt!1262778))))

(assert (=> d!1071709 (= (getSuffix!1660 lt!1262754 lt!1262778) lt!1263102)))

(declare-fun b!3645652 () Bool)

(assert (=> b!3645652 (= e!2256862 (getSuffix!1660 (tail!5647 lt!1262754) (t!296927 lt!1262778)))))

(declare-fun b!3645653 () Bool)

(assert (=> b!3645653 (= e!2256862 lt!1262754)))

(assert (= (and d!1071709 c!630238) b!3645652))

(assert (= (and d!1071709 (not c!630238)) b!3645653))

(declare-fun m!4149467 () Bool)

(assert (=> d!1071709 m!4149467))

(assert (=> d!1071709 m!4148803))

(assert (=> d!1071709 m!4148511))

(assert (=> b!3645652 m!4148799))

(assert (=> b!3645652 m!4148799))

(declare-fun m!4149469 () Bool)

(assert (=> b!3645652 m!4149469))

(assert (=> b!3644853 d!1071709))

(declare-fun d!1071711 () Bool)

(declare-fun lt!1263105 () Int)

(assert (=> d!1071711 (>= lt!1263105 0)))

(declare-fun e!2256865 () Int)

(assert (=> d!1071711 (= lt!1263105 e!2256865)))

(declare-fun c!630241 () Bool)

(assert (=> d!1071711 (= c!630241 ((_ is Nil!38420) lt!1262778))))

(assert (=> d!1071711 (= (size!29328 lt!1262778) lt!1263105)))

(declare-fun b!3645658 () Bool)

(assert (=> b!3645658 (= e!2256865 0)))

(declare-fun b!3645659 () Bool)

(assert (=> b!3645659 (= e!2256865 (+ 1 (size!29328 (t!296927 lt!1262778))))))

(assert (= (and d!1071711 c!630241) b!3645658))

(assert (= (and d!1071711 (not c!630241)) b!3645659))

(declare-fun m!4149471 () Bool)

(assert (=> b!3645659 m!4149471))

(assert (=> b!3644853 d!1071711))

(declare-fun d!1071713 () Bool)

(declare-fun lt!1263106 () Bool)

(assert (=> d!1071713 (= lt!1263106 (select (content!5537 lt!1262761) lt!1262756))))

(declare-fun e!2256867 () Bool)

(assert (=> d!1071713 (= lt!1263106 e!2256867)))

(declare-fun res!1478374 () Bool)

(assert (=> d!1071713 (=> (not res!1478374) (not e!2256867))))

(assert (=> d!1071713 (= res!1478374 ((_ is Cons!38420) lt!1262761))))

(assert (=> d!1071713 (= (contains!7553 lt!1262761 lt!1262756) lt!1263106)))

(declare-fun b!3645660 () Bool)

(declare-fun e!2256866 () Bool)

(assert (=> b!3645660 (= e!2256867 e!2256866)))

(declare-fun res!1478375 () Bool)

(assert (=> b!3645660 (=> res!1478375 e!2256866)))

(assert (=> b!3645660 (= res!1478375 (= (h!43840 lt!1262761) lt!1262756))))

(declare-fun b!3645661 () Bool)

(assert (=> b!3645661 (= e!2256866 (contains!7553 (t!296927 lt!1262761) lt!1262756))))

(assert (= (and d!1071713 res!1478374) b!3645660))

(assert (= (and b!3645660 (not res!1478375)) b!3645661))

(assert (=> d!1071713 m!4149403))

(declare-fun m!4149473 () Bool)

(assert (=> d!1071713 m!4149473))

(declare-fun m!4149475 () Bool)

(assert (=> b!3645661 m!4149475))

(assert (=> b!3644855 d!1071713))

(declare-fun d!1071715 () Bool)

(assert (=> d!1071715 (= (head!7750 suffix!1395) (h!43840 suffix!1395))))

(assert (=> b!3644855 d!1071715))

(declare-fun b!3645662 () Bool)

(declare-fun e!2256870 () List!38544)

(assert (=> b!3645662 (= e!2256870 Nil!38420)))

(declare-fun b!3645663 () Bool)

(declare-fun e!2256871 () List!38544)

(declare-fun e!2256869 () List!38544)

(assert (=> b!3645663 (= e!2256871 e!2256869)))

(declare-fun c!630243 () Bool)

(assert (=> b!3645663 (= c!630243 ((_ is Union!10503) (regex!5744 rule!403)))))

(declare-fun bm!263474 () Bool)

(declare-fun call!263481 () List!38544)

(declare-fun call!263482 () List!38544)

(assert (=> bm!263474 (= call!263481 call!263482)))

(declare-fun b!3645664 () Bool)

(declare-fun call!263480 () List!38544)

(assert (=> b!3645664 (= e!2256869 call!263480)))

(declare-fun bm!263475 () Bool)

(declare-fun c!630244 () Bool)

(assert (=> bm!263475 (= call!263482 (usedCharacters!956 (ite c!630244 (reg!10832 (regex!5744 rule!403)) (ite c!630243 (regTwo!21519 (regex!5744 rule!403)) (regOne!21518 (regex!5744 rule!403))))))))

(declare-fun b!3645665 () Bool)

(assert (=> b!3645665 (= e!2256871 call!263482)))

(declare-fun d!1071717 () Bool)

(declare-fun c!630245 () Bool)

(assert (=> d!1071717 (= c!630245 (or ((_ is EmptyExpr!10503) (regex!5744 rule!403)) ((_ is EmptyLang!10503) (regex!5744 rule!403))))))

(assert (=> d!1071717 (= (usedCharacters!956 (regex!5744 rule!403)) e!2256870)))

(declare-fun b!3645666 () Bool)

(assert (=> b!3645666 (= e!2256869 call!263480)))

(declare-fun bm!263476 () Bool)

(declare-fun call!263479 () List!38544)

(assert (=> bm!263476 (= call!263479 (usedCharacters!956 (ite c!630243 (regOne!21519 (regex!5744 rule!403)) (regTwo!21518 (regex!5744 rule!403)))))))

(declare-fun bm!263477 () Bool)

(assert (=> bm!263477 (= call!263480 (++!9560 (ite c!630243 call!263479 call!263481) (ite c!630243 call!263481 call!263479)))))

(declare-fun b!3645667 () Bool)

(declare-fun e!2256868 () List!38544)

(assert (=> b!3645667 (= e!2256870 e!2256868)))

(declare-fun c!630242 () Bool)

(assert (=> b!3645667 (= c!630242 ((_ is ElementMatch!10503) (regex!5744 rule!403)))))

(declare-fun b!3645668 () Bool)

(assert (=> b!3645668 (= c!630244 ((_ is Star!10503) (regex!5744 rule!403)))))

(assert (=> b!3645668 (= e!2256868 e!2256871)))

(declare-fun b!3645669 () Bool)

(assert (=> b!3645669 (= e!2256868 (Cons!38420 (c!630092 (regex!5744 rule!403)) Nil!38420))))

(assert (= (and d!1071717 c!630245) b!3645662))

(assert (= (and d!1071717 (not c!630245)) b!3645667))

(assert (= (and b!3645667 c!630242) b!3645669))

(assert (= (and b!3645667 (not c!630242)) b!3645668))

(assert (= (and b!3645668 c!630244) b!3645665))

(assert (= (and b!3645668 (not c!630244)) b!3645663))

(assert (= (and b!3645663 c!630243) b!3645664))

(assert (= (and b!3645663 (not c!630243)) b!3645666))

(assert (= (or b!3645664 b!3645666) bm!263476))

(assert (= (or b!3645664 b!3645666) bm!263474))

(assert (= (or b!3645664 b!3645666) bm!263477))

(assert (= (or b!3645665 bm!263474) bm!263475))

(declare-fun m!4149477 () Bool)

(assert (=> bm!263475 m!4149477))

(declare-fun m!4149479 () Bool)

(assert (=> bm!263476 m!4149479))

(declare-fun m!4149481 () Bool)

(assert (=> bm!263477 m!4149481))

(assert (=> b!3644855 d!1071717))

(declare-fun d!1071719 () Bool)

(declare-fun res!1478380 () Bool)

(declare-fun e!2256874 () Bool)

(assert (=> d!1071719 (=> (not res!1478380) (not e!2256874))))

(assert (=> d!1071719 (= res!1478380 (not (isEmpty!22756 (originalCharacters!6458 token!511))))))

(assert (=> d!1071719 (= (inv!51861 token!511) e!2256874)))

(declare-fun b!3645674 () Bool)

(declare-fun res!1478381 () Bool)

(assert (=> b!3645674 (=> (not res!1478381) (not e!2256874))))

(assert (=> b!3645674 (= res!1478381 (= (originalCharacters!6458 token!511) (list!14230 (dynLambda!16735 (toChars!7895 (transformation!5744 (rule!8534 token!511))) (value!184164 token!511)))))))

(declare-fun b!3645675 () Bool)

(assert (=> b!3645675 (= e!2256874 (= (size!29327 token!511) (size!29328 (originalCharacters!6458 token!511))))))

(assert (= (and d!1071719 res!1478380) b!3645674))

(assert (= (and b!3645674 res!1478381) b!3645675))

(declare-fun b_lambda!108113 () Bool)

(assert (=> (not b_lambda!108113) (not b!3645674)))

(assert (=> b!3645674 t!296954))

(declare-fun b_and!269215 () Bool)

(assert (= b_and!269175 (and (=> t!296954 result!255950) b_and!269215)))

(assert (=> b!3645674 t!296956))

(declare-fun b_and!269217 () Bool)

(assert (= b_and!269177 (and (=> t!296956 result!255952) b_and!269217)))

(assert (=> b!3645674 t!296958))

(declare-fun b_and!269219 () Bool)

(assert (= b_and!269179 (and (=> t!296958 result!255954) b_and!269219)))

(assert (=> b!3645674 t!296960))

(declare-fun b_and!269221 () Bool)

(assert (= b_and!269181 (and (=> t!296960 result!255956) b_and!269221)))

(declare-fun m!4149483 () Bool)

(assert (=> d!1071719 m!4149483))

(assert (=> b!3645674 m!4149129))

(assert (=> b!3645674 m!4149129))

(declare-fun m!4149485 () Bool)

(assert (=> b!3645674 m!4149485))

(declare-fun m!4149487 () Bool)

(assert (=> b!3645675 m!4149487))

(assert (=> start!340614 d!1071719))

(declare-fun b!3645680 () Bool)

(declare-fun e!2256877 () Bool)

(declare-fun tp!1111661 () Bool)

(assert (=> b!3645680 (= e!2256877 (and tp_is_empty!18089 tp!1111661))))

(assert (=> b!3644883 (= tp!1111600 e!2256877)))

(assert (= (and b!3644883 ((_ is Cons!38420) (t!296927 suffix!1395))) b!3645680))

(declare-fun e!2256880 () Bool)

(assert (=> b!3644856 (= tp!1111588 e!2256880)))

(declare-fun b!3645693 () Bool)

(declare-fun tp!1111673 () Bool)

(assert (=> b!3645693 (= e!2256880 tp!1111673)))

(declare-fun b!3645691 () Bool)

(assert (=> b!3645691 (= e!2256880 tp_is_empty!18089)))

(declare-fun b!3645694 () Bool)

(declare-fun tp!1111674 () Bool)

(declare-fun tp!1111672 () Bool)

(assert (=> b!3645694 (= e!2256880 (and tp!1111674 tp!1111672))))

(declare-fun b!3645692 () Bool)

(declare-fun tp!1111676 () Bool)

(declare-fun tp!1111675 () Bool)

(assert (=> b!3645692 (= e!2256880 (and tp!1111676 tp!1111675))))

(assert (= (and b!3644856 ((_ is ElementMatch!10503) (regex!5744 (rule!8534 token!511)))) b!3645691))

(assert (= (and b!3644856 ((_ is Concat!16478) (regex!5744 (rule!8534 token!511)))) b!3645692))

(assert (= (and b!3644856 ((_ is Star!10503) (regex!5744 (rule!8534 token!511)))) b!3645693))

(assert (= (and b!3644856 ((_ is Union!10503) (regex!5744 (rule!8534 token!511)))) b!3645694))

(declare-fun e!2256881 () Bool)

(assert (=> b!3644877 (= tp!1111596 e!2256881)))

(declare-fun b!3645697 () Bool)

(declare-fun tp!1111678 () Bool)

(assert (=> b!3645697 (= e!2256881 tp!1111678)))

(declare-fun b!3645695 () Bool)

(assert (=> b!3645695 (= e!2256881 tp_is_empty!18089)))

(declare-fun b!3645698 () Bool)

(declare-fun tp!1111679 () Bool)

(declare-fun tp!1111677 () Bool)

(assert (=> b!3645698 (= e!2256881 (and tp!1111679 tp!1111677))))

(declare-fun b!3645696 () Bool)

(declare-fun tp!1111681 () Bool)

(declare-fun tp!1111680 () Bool)

(assert (=> b!3645696 (= e!2256881 (and tp!1111681 tp!1111680))))

(assert (= (and b!3644877 ((_ is ElementMatch!10503) (regex!5744 anOtherTypeRule!33))) b!3645695))

(assert (= (and b!3644877 ((_ is Concat!16478) (regex!5744 anOtherTypeRule!33))) b!3645696))

(assert (= (and b!3644877 ((_ is Star!10503) (regex!5744 anOtherTypeRule!33))) b!3645697))

(assert (= (and b!3644877 ((_ is Union!10503) (regex!5744 anOtherTypeRule!33))) b!3645698))

(declare-fun b!3645709 () Bool)

(declare-fun b_free!95677 () Bool)

(declare-fun b_next!96381 () Bool)

(assert (=> b!3645709 (= b_free!95677 (not b_next!96381))))

(declare-fun tb!210249 () Bool)

(declare-fun t!297039 () Bool)

(assert (=> (and b!3645709 (= (toValue!8036 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297039) tb!210249))

(declare-fun result!256050 () Bool)

(assert (= result!256050 result!256036))

(assert (=> d!1071705 t!297039))

(declare-fun tb!210251 () Bool)

(declare-fun t!297041 () Bool)

(assert (=> (and b!3645709 (= (toValue!8036 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297041) tb!210251))

(declare-fun result!256052 () Bool)

(assert (= result!256052 result!255958))

(assert (=> d!1071595 t!297041))

(declare-fun t!297043 () Bool)

(declare-fun tb!210253 () Bool)

(assert (=> (and b!3645709 (= (toValue!8036 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toValue!8036 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297043) tb!210253))

(declare-fun result!256054 () Bool)

(assert (= result!256054 result!256028))

(assert (=> d!1071637 t!297043))

(assert (=> d!1071637 t!297041))

(assert (=> d!1071599 t!297041))

(declare-fun tp!1111690 () Bool)

(declare-fun b_and!269223 () Bool)

(assert (=> b!3645709 (= tp!1111690 (and (=> t!297039 result!256050) (=> t!297043 result!256054) (=> t!297041 result!256052) b_and!269223))))

(declare-fun b_free!95679 () Bool)

(declare-fun b_next!96383 () Bool)

(assert (=> b!3645709 (= b_free!95679 (not b_next!96383))))

(declare-fun tb!210255 () Bool)

(declare-fun t!297045 () Bool)

(assert (=> (and b!3645709 (= (toChars!7895 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297045) tb!210255))

(declare-fun result!256056 () Bool)

(assert (= result!256056 result!255940))

(assert (=> d!1071487 t!297045))

(declare-fun tb!210257 () Bool)

(declare-fun t!297047 () Bool)

(assert (=> (and b!3645709 (= (toChars!7895 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toChars!7895 (transformation!5744 (rule!8534 token!511)))) t!297047) tb!210257))

(declare-fun result!256058 () Bool)

(assert (= result!256058 result!255950))

(assert (=> d!1071581 t!297047))

(declare-fun tb!210259 () Bool)

(declare-fun t!297049 () Bool)

(assert (=> (and b!3645709 (= (toChars!7895 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toChars!7895 (transformation!5744 (rule!8534 (_1!22280 lt!1262762))))) t!297049) tb!210259))

(declare-fun result!256060 () Bool)

(assert (= result!256060 result!256020))

(assert (=> d!1071599 t!297049))

(assert (=> b!3645674 t!297047))

(declare-fun tp!1111692 () Bool)

(declare-fun b_and!269225 () Bool)

(assert (=> b!3645709 (= tp!1111692 (and (=> t!297045 result!256056) (=> t!297047 result!256058) (=> t!297049 result!256060) b_and!269225))))

(declare-fun e!2256890 () Bool)

(assert (=> b!3645709 (= e!2256890 (and tp!1111690 tp!1111692))))

(declare-fun b!3645708 () Bool)

(declare-fun tp!1111693 () Bool)

(declare-fun e!2256892 () Bool)

(assert (=> b!3645708 (= e!2256892 (and tp!1111693 (inv!51857 (tag!6500 (h!43841 (t!296928 rules!3307)))) (inv!51860 (transformation!5744 (h!43841 (t!296928 rules!3307)))) e!2256890))))

(declare-fun b!3645707 () Bool)

(declare-fun e!2256891 () Bool)

(declare-fun tp!1111691 () Bool)

(assert (=> b!3645707 (= e!2256891 (and e!2256892 tp!1111691))))

(assert (=> b!3644874 (= tp!1111593 e!2256891)))

(assert (= b!3645708 b!3645709))

(assert (= b!3645707 b!3645708))

(assert (= (and b!3644874 ((_ is Cons!38421) (t!296928 rules!3307))) b!3645707))

(declare-fun m!4149489 () Bool)

(assert (=> b!3645708 m!4149489))

(declare-fun m!4149491 () Bool)

(assert (=> b!3645708 m!4149491))

(declare-fun e!2256894 () Bool)

(assert (=> b!3644890 (= tp!1111602 e!2256894)))

(declare-fun b!3645712 () Bool)

(declare-fun tp!1111695 () Bool)

(assert (=> b!3645712 (= e!2256894 tp!1111695)))

(declare-fun b!3645710 () Bool)

(assert (=> b!3645710 (= e!2256894 tp_is_empty!18089)))

(declare-fun b!3645713 () Bool)

(declare-fun tp!1111696 () Bool)

(declare-fun tp!1111694 () Bool)

(assert (=> b!3645713 (= e!2256894 (and tp!1111696 tp!1111694))))

(declare-fun b!3645711 () Bool)

(declare-fun tp!1111698 () Bool)

(declare-fun tp!1111697 () Bool)

(assert (=> b!3645711 (= e!2256894 (and tp!1111698 tp!1111697))))

(assert (= (and b!3644890 ((_ is ElementMatch!10503) (regex!5744 rule!403))) b!3645710))

(assert (= (and b!3644890 ((_ is Concat!16478) (regex!5744 rule!403))) b!3645711))

(assert (= (and b!3644890 ((_ is Star!10503) (regex!5744 rule!403))) b!3645712))

(assert (= (and b!3644890 ((_ is Union!10503) (regex!5744 rule!403))) b!3645713))

(declare-fun e!2256895 () Bool)

(assert (=> b!3644879 (= tp!1111590 e!2256895)))

(declare-fun b!3645716 () Bool)

(declare-fun tp!1111700 () Bool)

(assert (=> b!3645716 (= e!2256895 tp!1111700)))

(declare-fun b!3645714 () Bool)

(assert (=> b!3645714 (= e!2256895 tp_is_empty!18089)))

(declare-fun b!3645717 () Bool)

(declare-fun tp!1111701 () Bool)

(declare-fun tp!1111699 () Bool)

(assert (=> b!3645717 (= e!2256895 (and tp!1111701 tp!1111699))))

(declare-fun b!3645715 () Bool)

(declare-fun tp!1111703 () Bool)

(declare-fun tp!1111702 () Bool)

(assert (=> b!3645715 (= e!2256895 (and tp!1111703 tp!1111702))))

(assert (= (and b!3644879 ((_ is ElementMatch!10503) (regex!5744 (h!43841 rules!3307)))) b!3645714))

(assert (= (and b!3644879 ((_ is Concat!16478) (regex!5744 (h!43841 rules!3307)))) b!3645715))

(assert (= (and b!3644879 ((_ is Star!10503) (regex!5744 (h!43841 rules!3307)))) b!3645716))

(assert (= (and b!3644879 ((_ is Union!10503) (regex!5744 (h!43841 rules!3307)))) b!3645717))

(declare-fun b!3645718 () Bool)

(declare-fun e!2256896 () Bool)

(declare-fun tp!1111704 () Bool)

(assert (=> b!3645718 (= e!2256896 (and tp_is_empty!18089 tp!1111704))))

(assert (=> b!3644886 (= tp!1111598 e!2256896)))

(assert (= (and b!3644886 ((_ is Cons!38420) (originalCharacters!6458 token!511))) b!3645718))

(declare-fun b_lambda!108115 () Bool)

(assert (= b_lambda!108113 (or (and b!3644866 b_free!95671 (= (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3644859 b_free!95667) (and b!3644876 b_free!95659 (= (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3645709 b_free!95679 (= (toChars!7895 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3644885 b_free!95663 (= (toChars!7895 (transformation!5744 rule!403)) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) b_lambda!108115)))

(declare-fun b_lambda!108117 () Bool)

(assert (= b_lambda!108083 (or (and b!3644866 b_free!95671 (= (toChars!7895 (transformation!5744 anOtherTypeRule!33)) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3644859 b_free!95667) (and b!3644876 b_free!95659 (= (toChars!7895 (transformation!5744 (h!43841 rules!3307))) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3645709 b_free!95679 (= (toChars!7895 (transformation!5744 (h!43841 (t!296928 rules!3307)))) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) (and b!3644885 b_free!95663 (= (toChars!7895 (transformation!5744 rule!403)) (toChars!7895 (transformation!5744 (rule!8534 token!511))))) b_lambda!108117)))

(check-sat (not b!3645716) (not d!1071663) (not d!1071637) (not d!1071509) (not b!3645097) (not b_lambda!108109) (not b!3645643) (not b_lambda!108107) (not d!1071709) (not b!3645708) (not d!1071699) b_and!269215 (not b!3645283) (not b!3645225) (not d!1071675) (not d!1071661) (not b!3645500) (not b_lambda!108111) (not d!1071567) (not b!3645575) (not b!3645566) (not bm!263467) (not b!3645717) (not b!3645335) (not b!3645715) (not b!3645080) b_and!269209 (not tb!210157) (not tb!210173) (not bm!263471) (not bm!263472) (not d!1071575) (not d!1071701) (not b!3645254) (not d!1071565) (not b!3645102) (not d!1071635) (not b!3645096) (not b!3645291) (not b_next!96381) (not b!3645659) (not b!3645697) (not b!3645642) (not b!3645661) (not b!3645282) (not b!3645640) (not d!1071487) (not b!3645227) (not b!3645484) (not b!3645522) (not b!3645287) (not b_lambda!108105) b_and!269211 (not bm!263441) b_and!269223 (not b!3645501) (not b!3645085) (not b!3645231) (not b!3645514) (not b!3645226) (not b_next!96369) (not tb!210233) (not b!3645496) (not b!3645290) (not d!1071643) (not b_next!96363) (not b!3645334) (not d!1071655) (not b!3645293) (not d!1071685) b_and!269217 (not bm!263475) (not d!1071693) (not b!3645278) (not b!3645230) (not b!3645680) (not b_lambda!108085) (not b!3645718) (not b!3645546) (not bm!263447) (not d!1071571) (not b!3645474) (not tb!210165) (not bm!263457) (not b!3645292) (not b_next!96365) (not d!1071641) (not b!3645513) (not b_next!96371) b_and!269207 (not b!3645646) (not b!3645264) (not b!3645232) (not d!1071707) (not d!1071587) b_and!269213 (not b_lambda!108117) (not b!3645284) (not b!3645652) (not b!3645641) (not d!1071499) (not bm!263468) (not d!1071683) (not b!3645494) (not b!3645692) (not bm!263448) (not d!1071653) (not b!3645696) (not b!3645324) (not b!3645289) (not d!1071501) (not b!3645512) (not b!3645603) (not d!1071713) (not b!3645614) (not b_lambda!108081) (not d!1071561) (not tb!210241) (not tb!210225) (not b!3645098) (not b_next!96375) (not b!3645070) (not b_next!96373) (not d!1071599) (not d!1071583) (not d!1071719) b_and!269219 (not bm!263473) b_and!269221 (not d!1071577) (not b!3645100) (not b!3645259) (not b!3645535) (not d!1071649) (not d!1071569) (not b!3645530) (not b!3645265) (not b!3645081) (not b!3645524) (not b!3645644) (not b!3645330) (not b!3645675) (not b!3645487) (not b!3645532) (not b!3645639) (not b!3645694) (not d!1071679) (not b_next!96383) tp_is_empty!18089 (not b!3645252) (not d!1071657) (not b!3645285) (not bm!263445) (not b!3645712) (not d!1071503) (not b_next!96367) (not b!3645499) (not b!3645693) (not d!1071691) (not b!3645698) (not b!3645286) (not d!1071585) (not bm!263469) (not b!3645340) (not b!3645253) (not b!3645601) (not b_lambda!108103) (not b!3645544) (not d!1071579) (not b!3645713) (not b!3645101) (not d!1071703) (not bm!263442) (not b!3645541) (not b!3645256) (not bm!263455) (not d!1071645) (not d!1071665) (not d!1071597) (not b!3645258) (not b!3645707) (not b_lambda!108115) (not b!3645620) (not b!3645539) (not b!3645674) (not bm!263476) (not d!1071593) (not b!3645328) (not bm!263477) (not d!1071671) (not b!3645490) (not b!3645711) (not b!3645333) (not b!3645257) (not b!3645084) (not b!3645251) (not b!3645600) (not d!1071573) (not b!3645545) (not d!1071581) b_and!269225 (not b_next!96361) (not b!3645612) (not b!3645647) (not b!3645619))
(check-sat b_and!269215 b_and!269209 (not b_next!96381) (not b_next!96369) b_and!269207 b_and!269213 b_and!269221 (not b_next!96383) (not b_next!96367) b_and!269211 b_and!269223 (not b_next!96363) b_and!269217 (not b_next!96365) (not b_next!96371) (not b_next!96375) (not b_next!96373) b_and!269219 b_and!269225 (not b_next!96361))
