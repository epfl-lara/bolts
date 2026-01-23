; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336246 () Bool)

(assert start!336246)

(declare-fun b!3611862 () Bool)

(declare-fun b_free!93841 () Bool)

(declare-fun b_next!94545 () Bool)

(assert (=> b!3611862 (= b_free!93841 (not b_next!94545))))

(declare-fun tp!1104037 () Bool)

(declare-fun b_and!263459 () Bool)

(assert (=> b!3611862 (= tp!1104037 b_and!263459)))

(declare-fun b_free!93843 () Bool)

(declare-fun b_next!94547 () Bool)

(assert (=> b!3611862 (= b_free!93843 (not b_next!94547))))

(declare-fun tp!1104039 () Bool)

(declare-fun b_and!263461 () Bool)

(assert (=> b!3611862 (= tp!1104039 b_and!263461)))

(declare-fun b!3611853 () Bool)

(declare-fun b_free!93845 () Bool)

(declare-fun b_next!94549 () Bool)

(assert (=> b!3611853 (= b_free!93845 (not b_next!94549))))

(declare-fun tp!1104029 () Bool)

(declare-fun b_and!263463 () Bool)

(assert (=> b!3611853 (= tp!1104029 b_and!263463)))

(declare-fun b_free!93847 () Bool)

(declare-fun b_next!94551 () Bool)

(assert (=> b!3611853 (= b_free!93847 (not b_next!94551))))

(declare-fun tp!1104040 () Bool)

(declare-fun b_and!263465 () Bool)

(assert (=> b!3611853 (= tp!1104040 b_and!263465)))

(declare-fun b!3611843 () Bool)

(declare-fun b_free!93849 () Bool)

(declare-fun b_next!94553 () Bool)

(assert (=> b!3611843 (= b_free!93849 (not b_next!94553))))

(declare-fun tp!1104032 () Bool)

(declare-fun b_and!263467 () Bool)

(assert (=> b!3611843 (= tp!1104032 b_and!263467)))

(declare-fun b_free!93851 () Bool)

(declare-fun b_next!94555 () Bool)

(assert (=> b!3611843 (= b_free!93851 (not b_next!94555))))

(declare-fun tp!1104036 () Bool)

(declare-fun b_and!263469 () Bool)

(assert (=> b!3611843 (= tp!1104036 b_and!263469)))

(declare-fun b!3611882 () Bool)

(declare-fun b_free!93853 () Bool)

(declare-fun b_next!94557 () Bool)

(assert (=> b!3611882 (= b_free!93853 (not b_next!94557))))

(declare-fun tp!1104028 () Bool)

(declare-fun b_and!263471 () Bool)

(assert (=> b!3611882 (= tp!1104028 b_and!263471)))

(declare-fun b_free!93855 () Bool)

(declare-fun b_next!94559 () Bool)

(assert (=> b!3611882 (= b_free!93855 (not b_next!94559))))

(declare-fun tp!1104027 () Bool)

(declare-fun b_and!263473 () Bool)

(assert (=> b!3611882 (= tp!1104027 b_and!263473)))

(declare-fun bm!261124 () Bool)

(declare-datatypes ((Unit!54264 0))(
  ( (Unit!54265) )
))
(declare-fun call!261131 () Unit!54264)

(declare-datatypes ((List!38145 0))(
  ( (Nil!38021) (Cons!38021 (h!43441 (_ BitVec 16)) (t!293436 List!38145)) )
))
(declare-datatypes ((TokenValue!5874 0))(
  ( (FloatLiteralValue!11748 (text!41563 List!38145)) (TokenValueExt!5873 (__x!23965 Int)) (Broken!29370 (value!181288 List!38145)) (Object!5997) (End!5874) (Def!5874) (Underscore!5874) (Match!5874) (Else!5874) (Error!5874) (Case!5874) (If!5874) (Extends!5874) (Abstract!5874) (Class!5874) (Val!5874) (DelimiterValue!11748 (del!5934 List!38145)) (KeywordValue!5880 (value!181289 List!38145)) (CommentValue!11748 (value!181290 List!38145)) (WhitespaceValue!11748 (value!181291 List!38145)) (IndentationValue!5874 (value!181292 List!38145)) (String!42703) (Int32!5874) (Broken!29371 (value!181293 List!38145)) (Boolean!5875) (Unit!54266) (OperatorValue!5877 (op!5934 List!38145)) (IdentifierValue!11748 (value!181294 List!38145)) (IdentifierValue!11749 (value!181295 List!38145)) (WhitespaceValue!11749 (value!181296 List!38145)) (True!11748) (False!11748) (Broken!29372 (value!181297 List!38145)) (Broken!29373 (value!181298 List!38145)) (True!11749) (RightBrace!5874) (RightBracket!5874) (Colon!5874) (Null!5874) (Comma!5874) (LeftBracket!5874) (False!11749) (LeftBrace!5874) (ImaginaryLiteralValue!5874 (text!41564 List!38145)) (StringLiteralValue!17622 (value!181299 List!38145)) (EOFValue!5874 (value!181300 List!38145)) (IdentValue!5874 (value!181301 List!38145)) (DelimiterValue!11749 (value!181302 List!38145)) (DedentValue!5874 (value!181303 List!38145)) (NewLineValue!5874 (value!181304 List!38145)) (IntegerValue!17622 (value!181305 (_ BitVec 32)) (text!41565 List!38145)) (IntegerValue!17623 (value!181306 Int) (text!41566 List!38145)) (Times!5874) (Or!5874) (Equal!5874) (Minus!5874) (Broken!29374 (value!181307 List!38145)) (And!5874) (Div!5874) (LessEqual!5874) (Mod!5874) (Concat!16277) (Not!5874) (Plus!5874) (SpaceValue!5874 (value!181308 List!38145)) (IntegerValue!17624 (value!181309 Int) (text!41567 List!38145)) (StringLiteralValue!17623 (text!41568 List!38145)) (FloatLiteralValue!11749 (text!41569 List!38145)) (BytesLiteralValue!5874 (value!181310 List!38145)) (CommentValue!11749 (value!181311 List!38145)) (StringLiteralValue!17624 (value!181312 List!38145)) (ErrorTokenValue!5874 (msg!5935 List!38145)) )
))
(declare-datatypes ((C!20992 0))(
  ( (C!20993 (val!12544 Int)) )
))
(declare-datatypes ((Regex!10403 0))(
  ( (ElementMatch!10403 (c!624868 C!20992)) (Concat!16278 (regOne!21318 Regex!10403) (regTwo!21318 Regex!10403)) (EmptyExpr!10403) (Star!10403 (reg!10732 Regex!10403)) (EmptyLang!10403) (Union!10403 (regOne!21319 Regex!10403) (regTwo!21319 Regex!10403)) )
))
(declare-datatypes ((String!42704 0))(
  ( (String!42705 (value!181313 String)) )
))
(declare-datatypes ((List!38146 0))(
  ( (Nil!38022) (Cons!38022 (h!43442 C!20992) (t!293437 List!38146)) )
))
(declare-datatypes ((IArray!23179 0))(
  ( (IArray!23180 (innerList!11647 List!38146)) )
))
(declare-datatypes ((Conc!11587 0))(
  ( (Node!11587 (left!29703 Conc!11587) (right!30033 Conc!11587) (csize!23404 Int) (cheight!11798 Int)) (Leaf!18020 (xs!14789 IArray!23179) (csize!23405 Int)) (Empty!11587) )
))
(declare-datatypes ((BalanceConc!22788 0))(
  ( (BalanceConc!22789 (c!624869 Conc!11587)) )
))
(declare-datatypes ((TokenValueInjection!11176 0))(
  ( (TokenValueInjection!11177 (toValue!7928 Int) (toChars!7787 Int)) )
))
(declare-datatypes ((Rule!11088 0))(
  ( (Rule!11089 (regex!5644 Regex!10403) (tag!6352 String!42704) (isSeparator!5644 Bool) (transformation!5644 TokenValueInjection!11176)) )
))
(declare-datatypes ((Token!10654 0))(
  ( (Token!10655 (value!181314 TokenValue!5874) (rule!8396 Rule!11088) (size!28991 Int) (originalCharacters!6358 List!38146)) )
))
(declare-datatypes ((tuple2!37912 0))(
  ( (tuple2!37913 (_1!22090 Token!10654) (_2!22090 List!38146)) )
))
(declare-fun lt!1244090 () tuple2!37912)

(declare-fun lt!1244079 () List!38146)

(declare-fun lt!1244089 () C!20992)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (Regex!10403 List!38146 C!20992) Unit!54264)

(assert (=> bm!261124 (= call!261131 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244089))))

(declare-fun b!3611842 () Bool)

(declare-fun res!1461066 () Bool)

(declare-fun e!2235392 () Bool)

(assert (=> b!3611842 (=> (not res!1461066) (not e!2235392))))

(declare-fun lt!1244067 () tuple2!37912)

(declare-fun isEmpty!22454 (List!38146) Bool)

(assert (=> b!3611842 (= res!1461066 (isEmpty!22454 (_2!22090 lt!1244067)))))

(declare-fun bm!261125 () Bool)

(declare-fun call!261132 () Bool)

(declare-fun call!261130 () List!38146)

(declare-fun lt!1244083 () C!20992)

(declare-fun contains!7351 (List!38146 C!20992) Bool)

(assert (=> bm!261125 (= call!261132 (contains!7351 call!261130 lt!1244083))))

(declare-fun e!2235418 () Bool)

(assert (=> b!3611843 (= e!2235418 (and tp!1104032 tp!1104036))))

(declare-fun bm!261126 () Bool)

(declare-fun call!261129 () Unit!54264)

(assert (=> bm!261126 (= call!261129 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244083))))

(declare-fun b!3611844 () Bool)

(declare-fun e!2235416 () Bool)

(declare-fun e!2235391 () Bool)

(assert (=> b!3611844 (= e!2235416 e!2235391)))

(declare-fun res!1461079 () Bool)

(assert (=> b!3611844 (=> res!1461079 e!2235391)))

(declare-datatypes ((Option!7918 0))(
  ( (None!7917) (Some!7917 (v!37663 tuple2!37912)) )
))
(declare-fun lt!1244068 () Option!7918)

(declare-fun lt!1244073 () List!38146)

(assert (=> b!3611844 (= res!1461079 (or (not (= lt!1244073 (_2!22090 lt!1244090))) (not (= lt!1244068 (Some!7917 (tuple2!37913 (_1!22090 lt!1244090) lt!1244073))))))))

(assert (=> b!3611844 (= (_2!22090 lt!1244090) lt!1244073)))

(declare-fun lt!1244059 () Unit!54264)

(declare-fun lt!1244062 () List!38146)

(declare-fun lemmaSamePrefixThenSameSuffix!1362 (List!38146 List!38146 List!38146 List!38146 List!38146) Unit!54264)

(assert (=> b!3611844 (= lt!1244059 (lemmaSamePrefixThenSameSuffix!1362 lt!1244079 (_2!22090 lt!1244090) lt!1244079 lt!1244073 lt!1244062))))

(declare-fun getSuffix!1582 (List!38146 List!38146) List!38146)

(assert (=> b!3611844 (= lt!1244073 (getSuffix!1582 lt!1244062 lt!1244079))))

(declare-fun lt!1244078 () Int)

(declare-fun lt!1244049 () TokenValue!5874)

(assert (=> b!3611844 (= lt!1244068 (Some!7917 (tuple2!37913 (Token!10655 lt!1244049 (rule!8396 (_1!22090 lt!1244090)) lt!1244078 lt!1244079) (_2!22090 lt!1244090))))))

(declare-datatypes ((LexerInterface!5233 0))(
  ( (LexerInterfaceExt!5230 (__x!23966 Int)) (Lexer!5231) )
))
(declare-fun thiss!23823 () LexerInterface!5233)

(declare-fun maxPrefixOneRule!1911 (LexerInterface!5233 Rule!11088 List!38146) Option!7918)

(assert (=> b!3611844 (= lt!1244068 (maxPrefixOneRule!1911 thiss!23823 (rule!8396 (_1!22090 lt!1244090)) lt!1244062))))

(declare-fun size!28992 (List!38146) Int)

(assert (=> b!3611844 (= lt!1244078 (size!28992 lt!1244079))))

(declare-fun apply!9150 (TokenValueInjection!11176 BalanceConc!22788) TokenValue!5874)

(declare-fun seqFromList!4197 (List!38146) BalanceConc!22788)

(assert (=> b!3611844 (= lt!1244049 (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) (seqFromList!4197 lt!1244079)))))

(declare-datatypes ((List!38147 0))(
  ( (Nil!38023) (Cons!38023 (h!43443 Rule!11088) (t!293438 List!38147)) )
))
(declare-fun rules!3307 () List!38147)

(declare-fun lt!1244086 () Unit!54264)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!983 (LexerInterface!5233 List!38147 List!38146 List!38146 List!38146 Rule!11088) Unit!54264)

(assert (=> b!3611844 (= lt!1244086 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!983 thiss!23823 rules!3307 lt!1244079 lt!1244062 (_2!22090 lt!1244090) (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun b!3611845 () Bool)

(declare-fun e!2235405 () Bool)

(declare-fun e!2235406 () Bool)

(assert (=> b!3611845 (= e!2235405 e!2235406)))

(declare-fun res!1461067 () Bool)

(assert (=> b!3611845 (=> (not res!1461067) (not e!2235406))))

(declare-fun lt!1244075 () Rule!11088)

(declare-fun matchR!4972 (Regex!10403 List!38146) Bool)

(declare-fun list!14024 (BalanceConc!22788) List!38146)

(declare-fun charsOf!3658 (Token!10654) BalanceConc!22788)

(assert (=> b!3611845 (= res!1461067 (matchR!4972 (regex!5644 lt!1244075) (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))))))

(declare-datatypes ((Option!7919 0))(
  ( (None!7918) (Some!7918 (v!37664 Rule!11088)) )
))
(declare-fun lt!1244061 () Option!7919)

(declare-fun get!12350 (Option!7919) Rule!11088)

(assert (=> b!3611845 (= lt!1244075 (get!12350 lt!1244061))))

(declare-fun b!3611846 () Bool)

(declare-fun res!1461076 () Bool)

(declare-fun e!2235397 () Bool)

(assert (=> b!3611846 (=> (not res!1461076) (not e!2235397))))

(declare-fun anOtherTypeRule!33 () Rule!11088)

(declare-fun rule!403 () Rule!11088)

(assert (=> b!3611846 (= res!1461076 (not (= (isSeparator!5644 anOtherTypeRule!33) (isSeparator!5644 rule!403))))))

(declare-fun b!3611847 () Bool)

(declare-fun tp!1104031 () Bool)

(declare-fun token!511 () Token!10654)

(declare-fun e!2235410 () Bool)

(declare-fun e!2235385 () Bool)

(declare-fun inv!21 (TokenValue!5874) Bool)

(assert (=> b!3611847 (= e!2235410 (and (inv!21 (value!181314 token!511)) e!2235385 tp!1104031))))

(declare-fun b!3611848 () Bool)

(declare-fun e!2235411 () Bool)

(declare-fun e!2235414 () Bool)

(declare-fun tp!1104035 () Bool)

(assert (=> b!3611848 (= e!2235411 (and e!2235414 tp!1104035))))

(declare-fun b!3611849 () Bool)

(declare-fun res!1461070 () Bool)

(assert (=> b!3611849 (=> (not res!1461070) (not e!2235397))))

(declare-fun contains!7352 (List!38147 Rule!11088) Bool)

(assert (=> b!3611849 (= res!1461070 (contains!7352 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3611850 () Bool)

(declare-fun e!2235401 () Bool)

(assert (=> b!3611850 (= e!2235401 e!2235392)))

(declare-fun res!1461081 () Bool)

(assert (=> b!3611850 (=> (not res!1461081) (not e!2235392))))

(assert (=> b!3611850 (= res!1461081 (= (_1!22090 lt!1244067) token!511))))

(declare-fun lt!1244063 () Option!7918)

(declare-fun get!12351 (Option!7918) tuple2!37912)

(assert (=> b!3611850 (= lt!1244067 (get!12351 lt!1244063))))

(declare-fun b!3611851 () Bool)

(declare-fun e!2235395 () Unit!54264)

(declare-fun e!2235387 () Unit!54264)

(assert (=> b!3611851 (= e!2235395 e!2235387)))

(declare-fun lt!1244081 () Unit!54264)

(declare-fun lt!1244074 () List!38146)

(declare-fun suffix!1395 () List!38146)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!22 (List!38146 List!38146 List!38146 List!38146) Unit!54264)

(assert (=> b!3611851 (= lt!1244081 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!22 lt!1244074 suffix!1395 lt!1244079 lt!1244062))))

(assert (=> b!3611851 (contains!7351 lt!1244079 lt!1244089)))

(declare-fun c!624867 () Bool)

(assert (=> b!3611851 (= c!624867 (isSeparator!5644 rule!403))))

(declare-fun b!3611852 () Bool)

(declare-fun res!1461072 () Bool)

(assert (=> b!3611852 (=> (not res!1461072) (not e!2235397))))

(assert (=> b!3611852 (= res!1461072 (contains!7352 rules!3307 rule!403))))

(declare-fun e!2235408 () Bool)

(assert (=> b!3611853 (= e!2235408 (and tp!1104029 tp!1104040))))

(declare-fun b!3611854 () Bool)

(declare-fun e!2235409 () Unit!54264)

(declare-fun Unit!54267 () Unit!54264)

(assert (=> b!3611854 (= e!2235409 Unit!54267)))

(declare-fun b!3611855 () Bool)

(declare-fun res!1461082 () Bool)

(declare-fun e!2235388 () Bool)

(assert (=> b!3611855 (=> res!1461082 e!2235388)))

(assert (=> b!3611855 (= res!1461082 (not (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079)))))

(declare-fun b!3611856 () Bool)

(declare-fun res!1461078 () Bool)

(declare-fun e!2235398 () Bool)

(assert (=> b!3611856 (=> res!1461078 e!2235398)))

(declare-fun sepAndNonSepRulesDisjointChars!1814 (List!38147 List!38147) Bool)

(assert (=> b!3611856 (= res!1461078 (not (sepAndNonSepRulesDisjointChars!1814 rules!3307 rules!3307)))))

(declare-fun bm!261127 () Bool)

(declare-fun call!261134 () List!38146)

(declare-fun usedCharacters!858 (Regex!10403) List!38146)

(assert (=> bm!261127 (= call!261134 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun bm!261128 () Bool)

(declare-fun call!261133 () Bool)

(assert (=> bm!261128 (= call!261133 (contains!7351 call!261134 lt!1244089))))

(declare-fun b!3611857 () Bool)

(assert (=> b!3611857 (= e!2235388 e!2235416)))

(declare-fun res!1461073 () Bool)

(assert (=> b!3611857 (=> res!1461073 e!2235416)))

(declare-fun lt!1244082 () TokenValue!5874)

(declare-fun lt!1244051 () Option!7918)

(declare-fun lt!1244055 () Int)

(assert (=> b!3611857 (= res!1461073 (not (= lt!1244051 (Some!7917 (tuple2!37913 (Token!10655 lt!1244082 (rule!8396 (_1!22090 lt!1244090)) lt!1244055 lt!1244079) (_2!22090 lt!1244090))))))))

(declare-fun lt!1244069 () BalanceConc!22788)

(declare-fun size!28993 (BalanceConc!22788) Int)

(assert (=> b!3611857 (= lt!1244055 (size!28993 lt!1244069))))

(assert (=> b!3611857 (= lt!1244082 (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069))))

(declare-fun lt!1244064 () Unit!54264)

(declare-fun lemmaCharactersSize!697 (Token!10654) Unit!54264)

(assert (=> b!3611857 (= lt!1244064 (lemmaCharactersSize!697 (_1!22090 lt!1244090)))))

(declare-fun lt!1244054 () Unit!54264)

(declare-fun lemmaEqSameImage!835 (TokenValueInjection!11176 BalanceConc!22788 BalanceConc!22788) Unit!54264)

(assert (=> b!3611857 (= lt!1244054 (lemmaEqSameImage!835 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069 (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090)))))))

(declare-fun lt!1244058 () Unit!54264)

(declare-fun lemmaSemiInverse!1401 (TokenValueInjection!11176 BalanceConc!22788) Unit!54264)

(assert (=> b!3611857 (= lt!1244058 (lemmaSemiInverse!1401 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069))))

(declare-fun b!3611858 () Bool)

(declare-fun e!2235389 () Unit!54264)

(declare-fun Unit!54268 () Unit!54264)

(assert (=> b!3611858 (= e!2235389 Unit!54268)))

(declare-fun res!1461061 () Bool)

(assert (=> start!336246 (=> (not res!1461061) (not e!2235397))))

(get-info :version)

(assert (=> start!336246 (= res!1461061 ((_ is Lexer!5231) thiss!23823))))

(assert (=> start!336246 e!2235397))

(assert (=> start!336246 e!2235411))

(declare-fun e!2235404 () Bool)

(assert (=> start!336246 e!2235404))

(assert (=> start!336246 true))

(declare-fun inv!51399 (Token!10654) Bool)

(assert (=> start!336246 (and (inv!51399 token!511) e!2235410)))

(declare-fun e!2235396 () Bool)

(assert (=> start!336246 e!2235396))

(declare-fun e!2235400 () Bool)

(assert (=> start!336246 e!2235400))

(declare-fun b!3611859 () Bool)

(assert (=> b!3611859 false))

(declare-fun lt!1244091 () Unit!54264)

(assert (=> b!3611859 (= lt!1244091 call!261131)))

(assert (=> b!3611859 (not call!261133)))

(declare-fun lt!1244087 () Unit!54264)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!350 (LexerInterface!5233 List!38147 List!38147 Rule!11088 Rule!11088 C!20992) Unit!54264)

(assert (=> b!3611859 (= lt!1244087 (lemmaNonSepRuleNotContainsCharContainedInASepRule!350 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) anOtherTypeRule!33 lt!1244089))))

(declare-fun Unit!54269 () Unit!54264)

(assert (=> b!3611859 (= e!2235387 Unit!54269)))

(declare-fun b!3611860 () Bool)

(declare-fun e!2235407 () Bool)

(assert (=> b!3611860 (= e!2235391 e!2235407)))

(declare-fun res!1461068 () Bool)

(assert (=> b!3611860 (=> res!1461068 e!2235407)))

(assert (=> b!3611860 (= res!1461068 (= (rule!8396 (_1!22090 lt!1244090)) (rule!8396 token!511)))))

(assert (=> b!3611860 (= lt!1244079 lt!1244074)))

(declare-fun lt!1244077 () Unit!54264)

(declare-fun lemmaIsPrefixSameLengthThenSameList!581 (List!38146 List!38146 List!38146) Unit!54264)

(assert (=> b!3611860 (= lt!1244077 (lemmaIsPrefixSameLengthThenSameList!581 lt!1244079 lt!1244074 lt!1244062))))

(declare-fun lt!1244056 () Unit!54264)

(declare-fun e!2235403 () Unit!54264)

(assert (=> b!3611860 (= lt!1244056 e!2235403)))

(declare-fun c!624862 () Bool)

(declare-fun lt!1244085 () Int)

(assert (=> b!3611860 (= c!624862 (< lt!1244055 lt!1244085))))

(declare-fun lt!1244053 () Unit!54264)

(assert (=> b!3611860 (= lt!1244053 e!2235395)))

(declare-fun c!624864 () Bool)

(assert (=> b!3611860 (= c!624864 (> lt!1244055 lt!1244085))))

(declare-fun lt!1244048 () BalanceConc!22788)

(assert (=> b!3611860 (= lt!1244085 (size!28993 lt!1244048))))

(declare-fun lt!1244052 () Unit!54264)

(declare-fun e!2235399 () Unit!54264)

(assert (=> b!3611860 (= lt!1244052 e!2235399)))

(declare-fun c!624863 () Bool)

(assert (=> b!3611860 (= c!624863 (isSeparator!5644 rule!403))))

(declare-fun lt!1244060 () Unit!54264)

(declare-fun e!2235386 () Unit!54264)

(assert (=> b!3611860 (= lt!1244060 e!2235386)))

(declare-fun c!624865 () Bool)

(declare-fun lt!1244084 () List!38146)

(assert (=> b!3611860 (= c!624865 (not (contains!7351 lt!1244084 lt!1244083)))))

(declare-fun head!7604 (List!38146) C!20992)

(assert (=> b!3611860 (= lt!1244083 (head!7604 lt!1244079))))

(declare-fun b!3611861 () Bool)

(declare-fun e!2235412 () Bool)

(declare-fun tp!1104033 () Bool)

(declare-fun inv!51396 (String!42704) Bool)

(declare-fun inv!51400 (TokenValueInjection!11176) Bool)

(assert (=> b!3611861 (= e!2235396 (and tp!1104033 (inv!51396 (tag!6352 rule!403)) (inv!51400 (transformation!5644 rule!403)) e!2235412))))

(declare-fun e!2235417 () Bool)

(assert (=> b!3611862 (= e!2235417 (and tp!1104037 tp!1104039))))

(declare-fun b!3611863 () Bool)

(declare-fun Unit!54270 () Unit!54264)

(assert (=> b!3611863 (= e!2235395 Unit!54270)))

(declare-fun b!3611864 () Bool)

(assert (=> b!3611864 (= e!2235407 (contains!7352 rules!3307 (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun b!3611865 () Bool)

(declare-fun Unit!54271 () Unit!54264)

(assert (=> b!3611865 (= e!2235386 Unit!54271)))

(declare-fun b!3611866 () Bool)

(declare-fun Unit!54272 () Unit!54264)

(assert (=> b!3611866 (= e!2235386 Unit!54272)))

(declare-fun lt!1244057 () Unit!54264)

(assert (=> b!3611866 (= lt!1244057 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 rule!403) lt!1244074 lt!1244083))))

(assert (=> b!3611866 false))

(declare-fun tp!1104034 () Bool)

(declare-fun b!3611867 () Bool)

(assert (=> b!3611867 (= e!2235414 (and tp!1104034 (inv!51396 (tag!6352 (h!43443 rules!3307))) (inv!51400 (transformation!5644 (h!43443 rules!3307))) e!2235417))))

(declare-fun b!3611868 () Bool)

(declare-fun e!2235394 () Bool)

(assert (=> b!3611868 (= e!2235394 e!2235398)))

(declare-fun res!1461069 () Bool)

(assert (=> b!3611868 (=> res!1461069 e!2235398)))

(assert (=> b!3611868 (= res!1461069 (contains!7351 lt!1244084 lt!1244089))))

(assert (=> b!3611868 (= lt!1244089 (head!7604 suffix!1395))))

(assert (=> b!3611868 (= lt!1244084 (usedCharacters!858 (regex!5644 rule!403)))))

(declare-fun b!3611869 () Bool)

(declare-fun tp!1104026 () Bool)

(assert (=> b!3611869 (= e!2235385 (and tp!1104026 (inv!51396 (tag!6352 (rule!8396 token!511))) (inv!51400 (transformation!5644 (rule!8396 token!511))) e!2235408))))

(declare-fun b!3611870 () Bool)

(declare-fun res!1461071 () Bool)

(assert (=> b!3611870 (=> res!1461071 e!2235394)))

(assert (=> b!3611870 (= res!1461071 (isEmpty!22454 suffix!1395))))

(declare-fun b!3611871 () Bool)

(assert (=> b!3611871 false))

(declare-fun lt!1244066 () Unit!54264)

(assert (=> b!3611871 (= lt!1244066 call!261131)))

(assert (=> b!3611871 (not call!261133)))

(declare-fun lt!1244080 () Unit!54264)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!232 (LexerInterface!5233 List!38147 List!38147 Rule!11088 Rule!11088 C!20992) Unit!54264)

(assert (=> b!3611871 (= lt!1244080 (lemmaSepRuleNotContainsCharContainedInANonSepRule!232 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8396 (_1!22090 lt!1244090)) lt!1244089))))

(declare-fun Unit!54273 () Unit!54264)

(assert (=> b!3611871 (= e!2235387 Unit!54273)))

(declare-fun b!3611872 () Bool)

(declare-fun res!1461080 () Bool)

(assert (=> b!3611872 (=> (not res!1461080) (not e!2235397))))

(declare-fun isEmpty!22455 (List!38147) Bool)

(assert (=> b!3611872 (= res!1461080 (not (isEmpty!22455 rules!3307)))))

(declare-fun b!3611873 () Bool)

(assert (=> b!3611873 (= e!2235406 (= (rule!8396 (_1!22090 lt!1244090)) lt!1244075))))

(declare-fun b!3611874 () Bool)

(assert (=> b!3611874 (= e!2235399 e!2235409)))

(declare-fun c!624866 () Bool)

(assert (=> b!3611874 (= c!624866 (isSeparator!5644 (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun b!3611875 () Bool)

(declare-fun res!1461064 () Bool)

(assert (=> b!3611875 (=> (not res!1461064) (not e!2235397))))

(declare-fun rulesInvariant!4630 (LexerInterface!5233 List!38147) Bool)

(assert (=> b!3611875 (= res!1461064 (rulesInvariant!4630 thiss!23823 rules!3307))))

(declare-fun b!3611876 () Bool)

(assert (=> b!3611876 (= e!2235392 (not e!2235394))))

(declare-fun res!1461063 () Bool)

(assert (=> b!3611876 (=> res!1461063 e!2235394)))

(assert (=> b!3611876 (= res!1461063 (not (matchR!4972 (regex!5644 rule!403) lt!1244074)))))

(declare-fun ruleValid!1909 (LexerInterface!5233 Rule!11088) Bool)

(assert (=> b!3611876 (ruleValid!1909 thiss!23823 rule!403)))

(declare-fun lt!1244065 () Unit!54264)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1064 (LexerInterface!5233 Rule!11088 List!38147) Unit!54264)

(assert (=> b!3611876 (= lt!1244065 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1064 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3611877 () Bool)

(assert (=> b!3611877 (= e!2235398 e!2235388)))

(declare-fun res!1461062 () Bool)

(assert (=> b!3611877 (=> res!1461062 e!2235388)))

(declare-fun isPrefix!3007 (List!38146 List!38146) Bool)

(assert (=> b!3611877 (= res!1461062 (not (isPrefix!3007 lt!1244079 lt!1244062)))))

(declare-fun ++!9460 (List!38146 List!38146) List!38146)

(assert (=> b!3611877 (isPrefix!3007 lt!1244079 (++!9460 lt!1244079 (_2!22090 lt!1244090)))))

(declare-fun lt!1244050 () Unit!54264)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1928 (List!38146 List!38146) Unit!54264)

(assert (=> b!3611877 (= lt!1244050 (lemmaConcatTwoListThenFirstIsPrefix!1928 lt!1244079 (_2!22090 lt!1244090)))))

(assert (=> b!3611877 (= lt!1244079 (list!14024 lt!1244069))))

(assert (=> b!3611877 (= lt!1244069 (charsOf!3658 (_1!22090 lt!1244090)))))

(assert (=> b!3611877 e!2235405))

(declare-fun res!1461074 () Bool)

(assert (=> b!3611877 (=> (not res!1461074) (not e!2235405))))

(declare-fun isDefined!6150 (Option!7919) Bool)

(assert (=> b!3611877 (= res!1461074 (isDefined!6150 lt!1244061))))

(declare-fun getRuleFromTag!1250 (LexerInterface!5233 List!38147 String!42704) Option!7919)

(assert (=> b!3611877 (= lt!1244061 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun lt!1244071 () Unit!54264)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1250 (LexerInterface!5233 List!38147 List!38146 Token!10654) Unit!54264)

(assert (=> b!3611877 (= lt!1244071 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1250 thiss!23823 rules!3307 lt!1244062 (_1!22090 lt!1244090)))))

(assert (=> b!3611877 (= lt!1244090 (get!12351 lt!1244051))))

(declare-fun lt!1244072 () Unit!54264)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!913 (LexerInterface!5233 List!38147 List!38146 List!38146) Unit!54264)

(assert (=> b!3611877 (= lt!1244072 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!913 thiss!23823 rules!3307 lt!1244074 suffix!1395))))

(declare-fun maxPrefix!2767 (LexerInterface!5233 List!38147 List!38146) Option!7918)

(assert (=> b!3611877 (= lt!1244051 (maxPrefix!2767 thiss!23823 rules!3307 lt!1244062))))

(assert (=> b!3611877 (isPrefix!3007 lt!1244074 lt!1244062)))

(declare-fun lt!1244093 () Unit!54264)

(assert (=> b!3611877 (= lt!1244093 (lemmaConcatTwoListThenFirstIsPrefix!1928 lt!1244074 suffix!1395))))

(assert (=> b!3611877 (= lt!1244062 (++!9460 lt!1244074 suffix!1395))))

(declare-fun bm!261129 () Bool)

(assert (=> bm!261129 (= call!261130 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3611878 () Bool)

(declare-fun tp_is_empty!17889 () Bool)

(declare-fun tp!1104038 () Bool)

(assert (=> b!3611878 (= e!2235404 (and tp_is_empty!17889 tp!1104038))))

(declare-fun b!3611879 () Bool)

(declare-fun res!1461065 () Bool)

(assert (=> b!3611879 (=> (not res!1461065) (not e!2235392))))

(assert (=> b!3611879 (= res!1461065 (= (rule!8396 token!511) rule!403))))

(declare-fun b!3611880 () Bool)

(assert (=> b!3611880 false))

(declare-fun lt!1244088 () Unit!54264)

(assert (=> b!3611880 (= lt!1244088 call!261129)))

(assert (=> b!3611880 (not call!261132)))

(declare-fun lt!1244092 () Unit!54264)

(assert (=> b!3611880 (= lt!1244092 (lemmaSepRuleNotContainsCharContainedInANonSepRule!232 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8396 (_1!22090 lt!1244090)) lt!1244083))))

(declare-fun Unit!54274 () Unit!54264)

(assert (=> b!3611880 (= e!2235409 Unit!54274)))

(declare-fun b!3611881 () Bool)

(declare-fun res!1461075 () Bool)

(assert (=> b!3611881 (=> res!1461075 e!2235398)))

(assert (=> b!3611881 (= res!1461075 (not (contains!7351 (usedCharacters!858 (regex!5644 anOtherTypeRule!33)) lt!1244089)))))

(assert (=> b!3611882 (= e!2235412 (and tp!1104028 tp!1104027))))

(declare-fun b!3611883 () Bool)

(declare-fun Unit!54275 () Unit!54264)

(assert (=> b!3611883 (= e!2235403 Unit!54275)))

(declare-fun lt!1244094 () Unit!54264)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!292 (LexerInterface!5233 List!38147 Rule!11088 List!38146 List!38146 List!38146 Rule!11088) Unit!54264)

(assert (=> b!3611883 (= lt!1244094 (lemmaMaxPrefixOutputsMaxPrefix!292 thiss!23823 rules!3307 (rule!8396 (_1!22090 lt!1244090)) lt!1244079 lt!1244062 lt!1244074 rule!403))))

(assert (=> b!3611883 false))

(declare-fun b!3611884 () Bool)

(assert (=> b!3611884 (= e!2235397 e!2235401)))

(declare-fun res!1461077 () Bool)

(assert (=> b!3611884 (=> (not res!1461077) (not e!2235401))))

(declare-fun isDefined!6151 (Option!7918) Bool)

(assert (=> b!3611884 (= res!1461077 (isDefined!6151 lt!1244063))))

(assert (=> b!3611884 (= lt!1244063 (maxPrefix!2767 thiss!23823 rules!3307 lt!1244074))))

(assert (=> b!3611884 (= lt!1244074 (list!14024 lt!1244048))))

(assert (=> b!3611884 (= lt!1244048 (charsOf!3658 token!511))))

(declare-fun tp!1104030 () Bool)

(declare-fun b!3611885 () Bool)

(assert (=> b!3611885 (= e!2235400 (and tp!1104030 (inv!51396 (tag!6352 anOtherTypeRule!33)) (inv!51400 (transformation!5644 anOtherTypeRule!33)) e!2235418))))

(declare-fun b!3611886 () Bool)

(assert (=> b!3611886 false))

(declare-fun lt!1244070 () Unit!54264)

(assert (=> b!3611886 (= lt!1244070 call!261129)))

(assert (=> b!3611886 (not call!261132)))

(declare-fun lt!1244076 () Unit!54264)

(assert (=> b!3611886 (= lt!1244076 (lemmaNonSepRuleNotContainsCharContainedInASepRule!350 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) rule!403 lt!1244083))))

(declare-fun Unit!54276 () Unit!54264)

(assert (=> b!3611886 (= e!2235389 Unit!54276)))

(declare-fun b!3611887 () Bool)

(declare-fun Unit!54277 () Unit!54264)

(assert (=> b!3611887 (= e!2235403 Unit!54277)))

(declare-fun b!3611888 () Bool)

(assert (=> b!3611888 (= e!2235399 e!2235389)))

(declare-fun c!624861 () Bool)

(assert (=> b!3611888 (= c!624861 (not (isSeparator!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(assert (= (and start!336246 res!1461061) b!3611872))

(assert (= (and b!3611872 res!1461080) b!3611875))

(assert (= (and b!3611875 res!1461064) b!3611852))

(assert (= (and b!3611852 res!1461072) b!3611849))

(assert (= (and b!3611849 res!1461070) b!3611846))

(assert (= (and b!3611846 res!1461076) b!3611884))

(assert (= (and b!3611884 res!1461077) b!3611850))

(assert (= (and b!3611850 res!1461081) b!3611842))

(assert (= (and b!3611842 res!1461066) b!3611879))

(assert (= (and b!3611879 res!1461065) b!3611876))

(assert (= (and b!3611876 (not res!1461063)) b!3611870))

(assert (= (and b!3611870 (not res!1461071)) b!3611868))

(assert (= (and b!3611868 (not res!1461069)) b!3611881))

(assert (= (and b!3611881 (not res!1461075)) b!3611856))

(assert (= (and b!3611856 (not res!1461078)) b!3611877))

(assert (= (and b!3611877 res!1461074) b!3611845))

(assert (= (and b!3611845 res!1461067) b!3611873))

(assert (= (and b!3611877 (not res!1461062)) b!3611855))

(assert (= (and b!3611855 (not res!1461082)) b!3611857))

(assert (= (and b!3611857 (not res!1461073)) b!3611844))

(assert (= (and b!3611844 (not res!1461079)) b!3611860))

(assert (= (and b!3611860 c!624865) b!3611866))

(assert (= (and b!3611860 (not c!624865)) b!3611865))

(assert (= (and b!3611860 c!624863) b!3611888))

(assert (= (and b!3611860 (not c!624863)) b!3611874))

(assert (= (and b!3611888 c!624861) b!3611886))

(assert (= (and b!3611888 (not c!624861)) b!3611858))

(assert (= (and b!3611874 c!624866) b!3611880))

(assert (= (and b!3611874 (not c!624866)) b!3611854))

(assert (= (or b!3611886 b!3611880) bm!261126))

(assert (= (or b!3611886 b!3611880) bm!261129))

(assert (= (or b!3611886 b!3611880) bm!261125))

(assert (= (and b!3611860 c!624864) b!3611851))

(assert (= (and b!3611860 (not c!624864)) b!3611863))

(assert (= (and b!3611851 c!624867) b!3611871))

(assert (= (and b!3611851 (not c!624867)) b!3611859))

(assert (= (or b!3611871 b!3611859) bm!261124))

(assert (= (or b!3611871 b!3611859) bm!261127))

(assert (= (or b!3611871 b!3611859) bm!261128))

(assert (= (and b!3611860 c!624862) b!3611883))

(assert (= (and b!3611860 (not c!624862)) b!3611887))

(assert (= (and b!3611860 (not res!1461068)) b!3611864))

(assert (= b!3611867 b!3611862))

(assert (= b!3611848 b!3611867))

(assert (= (and start!336246 ((_ is Cons!38023) rules!3307)) b!3611848))

(assert (= (and start!336246 ((_ is Cons!38022) suffix!1395)) b!3611878))

(assert (= b!3611869 b!3611853))

(assert (= b!3611847 b!3611869))

(assert (= start!336246 b!3611847))

(assert (= b!3611861 b!3611882))

(assert (= start!336246 b!3611861))

(assert (= b!3611885 b!3611843))

(assert (= start!336246 b!3611885))

(declare-fun m!4109693 () Bool)

(assert (=> b!3611869 m!4109693))

(declare-fun m!4109695 () Bool)

(assert (=> b!3611869 m!4109695))

(declare-fun m!4109697 () Bool)

(assert (=> b!3611883 m!4109697))

(declare-fun m!4109699 () Bool)

(assert (=> b!3611844 m!4109699))

(declare-fun m!4109701 () Bool)

(assert (=> b!3611844 m!4109701))

(declare-fun m!4109703 () Bool)

(assert (=> b!3611844 m!4109703))

(declare-fun m!4109705 () Bool)

(assert (=> b!3611844 m!4109705))

(assert (=> b!3611844 m!4109701))

(declare-fun m!4109707 () Bool)

(assert (=> b!3611844 m!4109707))

(declare-fun m!4109709 () Bool)

(assert (=> b!3611844 m!4109709))

(declare-fun m!4109711 () Bool)

(assert (=> b!3611844 m!4109711))

(declare-fun m!4109713 () Bool)

(assert (=> b!3611867 m!4109713))

(declare-fun m!4109715 () Bool)

(assert (=> b!3611867 m!4109715))

(declare-fun m!4109717 () Bool)

(assert (=> b!3611857 m!4109717))

(declare-fun m!4109719 () Bool)

(assert (=> b!3611857 m!4109719))

(declare-fun m!4109721 () Bool)

(assert (=> b!3611857 m!4109721))

(declare-fun m!4109723 () Bool)

(assert (=> b!3611857 m!4109723))

(declare-fun m!4109725 () Bool)

(assert (=> b!3611857 m!4109725))

(declare-fun m!4109727 () Bool)

(assert (=> b!3611857 m!4109727))

(assert (=> b!3611857 m!4109719))

(declare-fun m!4109729 () Bool)

(assert (=> b!3611860 m!4109729))

(declare-fun m!4109731 () Bool)

(assert (=> b!3611860 m!4109731))

(declare-fun m!4109733 () Bool)

(assert (=> b!3611860 m!4109733))

(declare-fun m!4109735 () Bool)

(assert (=> b!3611860 m!4109735))

(declare-fun m!4109737 () Bool)

(assert (=> bm!261126 m!4109737))

(declare-fun m!4109739 () Bool)

(assert (=> b!3611881 m!4109739))

(assert (=> b!3611881 m!4109739))

(declare-fun m!4109741 () Bool)

(assert (=> b!3611881 m!4109741))

(declare-fun m!4109743 () Bool)

(assert (=> start!336246 m!4109743))

(declare-fun m!4109745 () Bool)

(assert (=> bm!261128 m!4109745))

(declare-fun m!4109747 () Bool)

(assert (=> b!3611850 m!4109747))

(declare-fun m!4109749 () Bool)

(assert (=> b!3611872 m!4109749))

(declare-fun m!4109751 () Bool)

(assert (=> b!3611870 m!4109751))

(declare-fun m!4109753 () Bool)

(assert (=> b!3611855 m!4109753))

(declare-fun m!4109755 () Bool)

(assert (=> b!3611877 m!4109755))

(declare-fun m!4109757 () Bool)

(assert (=> b!3611877 m!4109757))

(declare-fun m!4109759 () Bool)

(assert (=> b!3611877 m!4109759))

(declare-fun m!4109761 () Bool)

(assert (=> b!3611877 m!4109761))

(declare-fun m!4109763 () Bool)

(assert (=> b!3611877 m!4109763))

(declare-fun m!4109765 () Bool)

(assert (=> b!3611877 m!4109765))

(declare-fun m!4109767 () Bool)

(assert (=> b!3611877 m!4109767))

(declare-fun m!4109769 () Bool)

(assert (=> b!3611877 m!4109769))

(declare-fun m!4109771 () Bool)

(assert (=> b!3611877 m!4109771))

(declare-fun m!4109773 () Bool)

(assert (=> b!3611877 m!4109773))

(assert (=> b!3611877 m!4109757))

(declare-fun m!4109775 () Bool)

(assert (=> b!3611877 m!4109775))

(declare-fun m!4109777 () Bool)

(assert (=> b!3611877 m!4109777))

(declare-fun m!4109779 () Bool)

(assert (=> b!3611877 m!4109779))

(declare-fun m!4109781 () Bool)

(assert (=> b!3611877 m!4109781))

(declare-fun m!4109783 () Bool)

(assert (=> b!3611877 m!4109783))

(declare-fun m!4109785 () Bool)

(assert (=> b!3611875 m!4109785))

(declare-fun m!4109787 () Bool)

(assert (=> b!3611886 m!4109787))

(declare-fun m!4109789 () Bool)

(assert (=> b!3611842 m!4109789))

(declare-fun m!4109791 () Bool)

(assert (=> b!3611876 m!4109791))

(declare-fun m!4109793 () Bool)

(assert (=> b!3611876 m!4109793))

(declare-fun m!4109795 () Bool)

(assert (=> b!3611876 m!4109795))

(declare-fun m!4109797 () Bool)

(assert (=> b!3611859 m!4109797))

(declare-fun m!4109799 () Bool)

(assert (=> b!3611866 m!4109799))

(declare-fun m!4109801 () Bool)

(assert (=> b!3611871 m!4109801))

(declare-fun m!4109803 () Bool)

(assert (=> b!3611847 m!4109803))

(declare-fun m!4109805 () Bool)

(assert (=> b!3611868 m!4109805))

(declare-fun m!4109807 () Bool)

(assert (=> b!3611868 m!4109807))

(declare-fun m!4109809 () Bool)

(assert (=> b!3611868 m!4109809))

(declare-fun m!4109811 () Bool)

(assert (=> bm!261125 m!4109811))

(declare-fun m!4109813 () Bool)

(assert (=> b!3611864 m!4109813))

(declare-fun m!4109815 () Bool)

(assert (=> b!3611852 m!4109815))

(declare-fun m!4109817 () Bool)

(assert (=> b!3611849 m!4109817))

(declare-fun m!4109819 () Bool)

(assert (=> b!3611885 m!4109819))

(declare-fun m!4109821 () Bool)

(assert (=> b!3611885 m!4109821))

(declare-fun m!4109823 () Bool)

(assert (=> b!3611884 m!4109823))

(declare-fun m!4109825 () Bool)

(assert (=> b!3611884 m!4109825))

(declare-fun m!4109827 () Bool)

(assert (=> b!3611884 m!4109827))

(declare-fun m!4109829 () Bool)

(assert (=> b!3611884 m!4109829))

(declare-fun m!4109831 () Bool)

(assert (=> b!3611851 m!4109831))

(declare-fun m!4109833 () Bool)

(assert (=> b!3611851 m!4109833))

(assert (=> b!3611845 m!4109755))

(assert (=> b!3611845 m!4109755))

(declare-fun m!4109835 () Bool)

(assert (=> b!3611845 m!4109835))

(assert (=> b!3611845 m!4109835))

(declare-fun m!4109837 () Bool)

(assert (=> b!3611845 m!4109837))

(declare-fun m!4109839 () Bool)

(assert (=> b!3611845 m!4109839))

(declare-fun m!4109841 () Bool)

(assert (=> bm!261124 m!4109841))

(declare-fun m!4109843 () Bool)

(assert (=> b!3611861 m!4109843))

(declare-fun m!4109845 () Bool)

(assert (=> b!3611861 m!4109845))

(declare-fun m!4109847 () Bool)

(assert (=> bm!261127 m!4109847))

(assert (=> bm!261129 m!4109847))

(declare-fun m!4109849 () Bool)

(assert (=> b!3611856 m!4109849))

(declare-fun m!4109851 () Bool)

(assert (=> b!3611880 m!4109851))

(check-sat (not b!3611877) (not b!3611869) (not b!3611876) (not b_next!94553) (not bm!261128) (not b!3611871) b_and!263467 tp_is_empty!17889 (not b!3611884) (not b!3611878) (not b!3611864) (not b!3611875) b_and!263469 (not b!3611886) (not b!3611848) (not bm!261125) (not b!3611883) (not b!3611860) (not b!3611856) b_and!263461 (not b!3611881) (not b!3611851) (not b!3611849) (not start!336246) (not b!3611866) b_and!263471 (not b!3611859) (not b!3611872) b_and!263473 (not b_next!94545) (not b!3611847) (not b_next!94551) (not bm!261126) (not b!3611867) (not bm!261127) (not b_next!94555) (not b_next!94557) (not b!3611842) b_and!263465 (not b!3611844) (not b_next!94547) (not b!3611855) (not bm!261124) (not b!3611868) (not b!3611852) b_and!263459 (not b!3611870) (not bm!261129) (not b!3611857) (not b!3611885) (not b!3611850) (not b_next!94559) (not b!3611845) b_and!263463 (not b!3611861) (not b_next!94549) (not b!3611880))
(check-sat b_and!263469 b_and!263461 b_and!263471 (not b_next!94551) (not b_next!94553) (not b_next!94547) b_and!263467 b_and!263459 (not b_next!94549) b_and!263473 (not b_next!94545) (not b_next!94555) (not b_next!94557) b_and!263465 (not b_next!94559) b_and!263463)
(get-model)

(declare-fun d!1063367 () Bool)

(assert (=> d!1063367 (not (contains!7351 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244089))))

(declare-fun lt!1244105 () Unit!54264)

(declare-fun choose!21120 (LexerInterface!5233 List!38147 List!38147 Rule!11088 Rule!11088 C!20992) Unit!54264)

(assert (=> d!1063367 (= lt!1244105 (choose!21120 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8396 (_1!22090 lt!1244090)) lt!1244089))))

(assert (=> d!1063367 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063367 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!232 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8396 (_1!22090 lt!1244090)) lt!1244089) lt!1244105)))

(declare-fun bs!570882 () Bool)

(assert (= bs!570882 d!1063367))

(assert (=> bs!570882 m!4109847))

(assert (=> bs!570882 m!4109847))

(declare-fun m!4109875 () Bool)

(assert (=> bs!570882 m!4109875))

(declare-fun m!4109877 () Bool)

(assert (=> bs!570882 m!4109877))

(assert (=> bs!570882 m!4109785))

(assert (=> b!3611871 d!1063367))

(declare-fun d!1063379 () Bool)

(declare-fun lt!1244114 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5439 (List!38147) (InoxSet Rule!11088))

(assert (=> d!1063379 (= lt!1244114 (select (content!5439 rules!3307) rule!403))))

(declare-fun e!2235445 () Bool)

(assert (=> d!1063379 (= lt!1244114 e!2235445)))

(declare-fun res!1461125 () Bool)

(assert (=> d!1063379 (=> (not res!1461125) (not e!2235445))))

(assert (=> d!1063379 (= res!1461125 ((_ is Cons!38023) rules!3307))))

(assert (=> d!1063379 (= (contains!7352 rules!3307 rule!403) lt!1244114)))

(declare-fun b!3611925 () Bool)

(declare-fun e!2235444 () Bool)

(assert (=> b!3611925 (= e!2235445 e!2235444)))

(declare-fun res!1461124 () Bool)

(assert (=> b!3611925 (=> res!1461124 e!2235444)))

(assert (=> b!3611925 (= res!1461124 (= (h!43443 rules!3307) rule!403))))

(declare-fun b!3611926 () Bool)

(assert (=> b!3611926 (= e!2235444 (contains!7352 (t!293438 rules!3307) rule!403))))

(assert (= (and d!1063379 res!1461125) b!3611925))

(assert (= (and b!3611925 (not res!1461124)) b!3611926))

(declare-fun m!4109903 () Bool)

(assert (=> d!1063379 m!4109903))

(declare-fun m!4109905 () Bool)

(assert (=> d!1063379 m!4109905))

(declare-fun m!4109907 () Bool)

(assert (=> b!3611926 m!4109907))

(assert (=> b!3611852 d!1063379))

(declare-fun d!1063389 () Bool)

(assert (=> d!1063389 (contains!7351 lt!1244079 (head!7604 suffix!1395))))

(declare-fun lt!1244119 () Unit!54264)

(declare-fun choose!21121 (List!38146 List!38146 List!38146 List!38146) Unit!54264)

(assert (=> d!1063389 (= lt!1244119 (choose!21121 lt!1244074 suffix!1395 lt!1244079 lt!1244062))))

(assert (=> d!1063389 (isPrefix!3007 lt!1244079 lt!1244062)))

(assert (=> d!1063389 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!22 lt!1244074 suffix!1395 lt!1244079 lt!1244062) lt!1244119)))

(declare-fun bs!570883 () Bool)

(assert (= bs!570883 d!1063389))

(assert (=> bs!570883 m!4109807))

(assert (=> bs!570883 m!4109807))

(declare-fun m!4109909 () Bool)

(assert (=> bs!570883 m!4109909))

(declare-fun m!4109911 () Bool)

(assert (=> bs!570883 m!4109911))

(assert (=> bs!570883 m!4109777))

(assert (=> b!3611851 d!1063389))

(declare-fun d!1063391 () Bool)

(declare-fun lt!1244124 () Bool)

(declare-fun content!5440 (List!38146) (InoxSet C!20992))

(assert (=> d!1063391 (= lt!1244124 (select (content!5440 lt!1244079) lt!1244089))))

(declare-fun e!2235454 () Bool)

(assert (=> d!1063391 (= lt!1244124 e!2235454)))

(declare-fun res!1461136 () Bool)

(assert (=> d!1063391 (=> (not res!1461136) (not e!2235454))))

(assert (=> d!1063391 (= res!1461136 ((_ is Cons!38022) lt!1244079))))

(assert (=> d!1063391 (= (contains!7351 lt!1244079 lt!1244089) lt!1244124)))

(declare-fun b!3611937 () Bool)

(declare-fun e!2235453 () Bool)

(assert (=> b!3611937 (= e!2235454 e!2235453)))

(declare-fun res!1461137 () Bool)

(assert (=> b!3611937 (=> res!1461137 e!2235453)))

(assert (=> b!3611937 (= res!1461137 (= (h!43442 lt!1244079) lt!1244089))))

(declare-fun b!3611938 () Bool)

(assert (=> b!3611938 (= e!2235453 (contains!7351 (t!293437 lt!1244079) lt!1244089))))

(assert (= (and d!1063391 res!1461136) b!3611937))

(assert (= (and b!3611937 (not res!1461137)) b!3611938))

(declare-fun m!4109925 () Bool)

(assert (=> d!1063391 m!4109925))

(declare-fun m!4109927 () Bool)

(assert (=> d!1063391 m!4109927))

(declare-fun m!4109929 () Bool)

(assert (=> b!3611938 m!4109929))

(assert (=> b!3611851 d!1063391))

(declare-fun d!1063399 () Bool)

(assert (=> d!1063399 (= (isEmpty!22454 suffix!1395) ((_ is Nil!38022) suffix!1395))))

(assert (=> b!3611870 d!1063399))

(declare-fun d!1063401 () Bool)

(assert (=> d!1063401 (= (inv!51396 (tag!6352 (rule!8396 token!511))) (= (mod (str.len (value!181313 (tag!6352 (rule!8396 token!511)))) 2) 0))))

(assert (=> b!3611869 d!1063401))

(declare-fun d!1063403 () Bool)

(declare-fun res!1461146 () Bool)

(declare-fun e!2235472 () Bool)

(assert (=> d!1063403 (=> (not res!1461146) (not e!2235472))))

(declare-fun semiInverseModEq!2398 (Int Int) Bool)

(assert (=> d!1063403 (= res!1461146 (semiInverseModEq!2398 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (toValue!7928 (transformation!5644 (rule!8396 token!511)))))))

(assert (=> d!1063403 (= (inv!51400 (transformation!5644 (rule!8396 token!511))) e!2235472)))

(declare-fun b!3611964 () Bool)

(declare-fun equivClasses!2297 (Int Int) Bool)

(assert (=> b!3611964 (= e!2235472 (equivClasses!2297 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (toValue!7928 (transformation!5644 (rule!8396 token!511)))))))

(assert (= (and d!1063403 res!1461146) b!3611964))

(declare-fun m!4109951 () Bool)

(assert (=> d!1063403 m!4109951))

(declare-fun m!4109953 () Bool)

(assert (=> b!3611964 m!4109953))

(assert (=> b!3611869 d!1063403))

(declare-fun d!1063409 () Bool)

(assert (=> d!1063409 (= (get!12351 lt!1244063) (v!37663 lt!1244063))))

(assert (=> b!3611850 d!1063409))

(declare-fun d!1063413 () Bool)

(declare-fun lt!1244138 () Bool)

(assert (=> d!1063413 (= lt!1244138 (select (content!5439 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2235476 () Bool)

(assert (=> d!1063413 (= lt!1244138 e!2235476)))

(declare-fun res!1461150 () Bool)

(assert (=> d!1063413 (=> (not res!1461150) (not e!2235476))))

(assert (=> d!1063413 (= res!1461150 ((_ is Cons!38023) rules!3307))))

(assert (=> d!1063413 (= (contains!7352 rules!3307 anOtherTypeRule!33) lt!1244138)))

(declare-fun b!3611969 () Bool)

(declare-fun e!2235475 () Bool)

(assert (=> b!3611969 (= e!2235476 e!2235475)))

(declare-fun res!1461149 () Bool)

(assert (=> b!3611969 (=> res!1461149 e!2235475)))

(assert (=> b!3611969 (= res!1461149 (= (h!43443 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3611970 () Bool)

(assert (=> b!3611970 (= e!2235475 (contains!7352 (t!293438 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1063413 res!1461150) b!3611969))

(assert (= (and b!3611969 (not res!1461149)) b!3611970))

(assert (=> d!1063413 m!4109903))

(declare-fun m!4109967 () Bool)

(assert (=> d!1063413 m!4109967))

(declare-fun m!4109969 () Bool)

(assert (=> b!3611970 m!4109969))

(assert (=> b!3611849 d!1063413))

(declare-fun d!1063415 () Bool)

(declare-fun lt!1244139 () Bool)

(assert (=> d!1063415 (= lt!1244139 (select (content!5440 lt!1244084) lt!1244089))))

(declare-fun e!2235478 () Bool)

(assert (=> d!1063415 (= lt!1244139 e!2235478)))

(declare-fun res!1461151 () Bool)

(assert (=> d!1063415 (=> (not res!1461151) (not e!2235478))))

(assert (=> d!1063415 (= res!1461151 ((_ is Cons!38022) lt!1244084))))

(assert (=> d!1063415 (= (contains!7351 lt!1244084 lt!1244089) lt!1244139)))

(declare-fun b!3611971 () Bool)

(declare-fun e!2235477 () Bool)

(assert (=> b!3611971 (= e!2235478 e!2235477)))

(declare-fun res!1461152 () Bool)

(assert (=> b!3611971 (=> res!1461152 e!2235477)))

(assert (=> b!3611971 (= res!1461152 (= (h!43442 lt!1244084) lt!1244089))))

(declare-fun b!3611972 () Bool)

(assert (=> b!3611972 (= e!2235477 (contains!7351 (t!293437 lt!1244084) lt!1244089))))

(assert (= (and d!1063415 res!1461151) b!3611971))

(assert (= (and b!3611971 (not res!1461152)) b!3611972))

(declare-fun m!4109971 () Bool)

(assert (=> d!1063415 m!4109971))

(declare-fun m!4109973 () Bool)

(assert (=> d!1063415 m!4109973))

(declare-fun m!4109975 () Bool)

(assert (=> b!3611972 m!4109975))

(assert (=> b!3611868 d!1063415))

(declare-fun d!1063417 () Bool)

(assert (=> d!1063417 (= (head!7604 suffix!1395) (h!43442 suffix!1395))))

(assert (=> b!3611868 d!1063417))

(declare-fun b!3611989 () Bool)

(declare-fun e!2235487 () List!38146)

(assert (=> b!3611989 (= e!2235487 (Cons!38022 (c!624868 (regex!5644 rule!403)) Nil!38022))))

(declare-fun bm!261138 () Bool)

(declare-fun call!261145 () List!38146)

(declare-fun call!261143 () List!38146)

(assert (=> bm!261138 (= call!261145 call!261143)))

(declare-fun b!3611990 () Bool)

(declare-fun e!2235490 () List!38146)

(assert (=> b!3611990 (= e!2235490 Nil!38022)))

(declare-fun b!3611991 () Bool)

(declare-fun e!2235488 () List!38146)

(assert (=> b!3611991 (= e!2235488 call!261143)))

(declare-fun d!1063419 () Bool)

(declare-fun c!624893 () Bool)

(assert (=> d!1063419 (= c!624893 (or ((_ is EmptyExpr!10403) (regex!5644 rule!403)) ((_ is EmptyLang!10403) (regex!5644 rule!403))))))

(assert (=> d!1063419 (= (usedCharacters!858 (regex!5644 rule!403)) e!2235490)))

(declare-fun b!3611992 () Bool)

(declare-fun e!2235489 () List!38146)

(assert (=> b!3611992 (= e!2235488 e!2235489)))

(declare-fun c!624892 () Bool)

(assert (=> b!3611992 (= c!624892 ((_ is Union!10403) (regex!5644 rule!403)))))

(declare-fun b!3611993 () Bool)

(declare-fun call!261146 () List!38146)

(assert (=> b!3611993 (= e!2235489 call!261146)))

(declare-fun b!3611994 () Bool)

(assert (=> b!3611994 (= e!2235490 e!2235487)))

(declare-fun c!624890 () Bool)

(assert (=> b!3611994 (= c!624890 ((_ is ElementMatch!10403) (regex!5644 rule!403)))))

(declare-fun b!3611995 () Bool)

(declare-fun c!624891 () Bool)

(assert (=> b!3611995 (= c!624891 ((_ is Star!10403) (regex!5644 rule!403)))))

(assert (=> b!3611995 (= e!2235487 e!2235488)))

(declare-fun b!3611996 () Bool)

(assert (=> b!3611996 (= e!2235489 call!261146)))

(declare-fun bm!261139 () Bool)

(assert (=> bm!261139 (= call!261143 (usedCharacters!858 (ite c!624891 (reg!10732 (regex!5644 rule!403)) (ite c!624892 (regOne!21319 (regex!5644 rule!403)) (regTwo!21318 (regex!5644 rule!403))))))))

(declare-fun bm!261140 () Bool)

(declare-fun call!261144 () List!38146)

(assert (=> bm!261140 (= call!261144 (usedCharacters!858 (ite c!624892 (regTwo!21319 (regex!5644 rule!403)) (regOne!21318 (regex!5644 rule!403)))))))

(declare-fun bm!261141 () Bool)

(assert (=> bm!261141 (= call!261146 (++!9460 (ite c!624892 call!261145 call!261144) (ite c!624892 call!261144 call!261145)))))

(assert (= (and d!1063419 c!624893) b!3611990))

(assert (= (and d!1063419 (not c!624893)) b!3611994))

(assert (= (and b!3611994 c!624890) b!3611989))

(assert (= (and b!3611994 (not c!624890)) b!3611995))

(assert (= (and b!3611995 c!624891) b!3611991))

(assert (= (and b!3611995 (not c!624891)) b!3611992))

(assert (= (and b!3611992 c!624892) b!3611996))

(assert (= (and b!3611992 (not c!624892)) b!3611993))

(assert (= (or b!3611996 b!3611993) bm!261138))

(assert (= (or b!3611996 b!3611993) bm!261140))

(assert (= (or b!3611996 b!3611993) bm!261141))

(assert (= (or b!3611991 bm!261138) bm!261139))

(declare-fun m!4109977 () Bool)

(assert (=> bm!261139 m!4109977))

(declare-fun m!4109979 () Bool)

(assert (=> bm!261140 m!4109979))

(declare-fun m!4109981 () Bool)

(assert (=> bm!261141 m!4109981))

(assert (=> b!3611868 d!1063419))

(declare-fun d!1063421 () Bool)

(declare-fun res!1461171 () Bool)

(declare-fun e!2235499 () Bool)

(assert (=> d!1063421 (=> (not res!1461171) (not e!2235499))))

(assert (=> d!1063421 (= res!1461171 (not (isEmpty!22454 (originalCharacters!6358 token!511))))))

(assert (=> d!1063421 (= (inv!51399 token!511) e!2235499)))

(declare-fun b!3612019 () Bool)

(declare-fun res!1461172 () Bool)

(assert (=> b!3612019 (=> (not res!1461172) (not e!2235499))))

(declare-fun dynLambda!16447 (Int TokenValue!5874) BalanceConc!22788)

(assert (=> b!3612019 (= res!1461172 (= (originalCharacters!6358 token!511) (list!14024 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (value!181314 token!511)))))))

(declare-fun b!3612020 () Bool)

(assert (=> b!3612020 (= e!2235499 (= (size!28991 token!511) (size!28992 (originalCharacters!6358 token!511))))))

(assert (= (and d!1063421 res!1461171) b!3612019))

(assert (= (and b!3612019 res!1461172) b!3612020))

(declare-fun b_lambda!106865 () Bool)

(assert (=> (not b_lambda!106865) (not b!3612019)))

(declare-fun t!293448 () Bool)

(declare-fun tb!207065 () Bool)

(assert (=> (and b!3611862 (= (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toChars!7787 (transformation!5644 (rule!8396 token!511)))) t!293448) tb!207065))

(declare-fun b!3612034 () Bool)

(declare-fun e!2235505 () Bool)

(declare-fun tp!1104046 () Bool)

(declare-fun inv!51403 (Conc!11587) Bool)

(assert (=> b!3612034 (= e!2235505 (and (inv!51403 (c!624869 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (value!181314 token!511)))) tp!1104046))))

(declare-fun result!252348 () Bool)

(declare-fun inv!51404 (BalanceConc!22788) Bool)

(assert (=> tb!207065 (= result!252348 (and (inv!51404 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (value!181314 token!511))) e!2235505))))

(assert (= tb!207065 b!3612034))

(declare-fun m!4110015 () Bool)

(assert (=> b!3612034 m!4110015))

(declare-fun m!4110017 () Bool)

(assert (=> tb!207065 m!4110017))

(assert (=> b!3612019 t!293448))

(declare-fun b_and!263483 () Bool)

(assert (= b_and!263461 (and (=> t!293448 result!252348) b_and!263483)))

(declare-fun t!293450 () Bool)

(declare-fun tb!207067 () Bool)

(assert (=> (and b!3611853 (= (toChars!7787 (transformation!5644 (rule!8396 token!511))) (toChars!7787 (transformation!5644 (rule!8396 token!511)))) t!293450) tb!207067))

(declare-fun result!252352 () Bool)

(assert (= result!252352 result!252348))

(assert (=> b!3612019 t!293450))

(declare-fun b_and!263485 () Bool)

(assert (= b_and!263465 (and (=> t!293450 result!252352) b_and!263485)))

(declare-fun t!293452 () Bool)

(declare-fun tb!207069 () Bool)

(assert (=> (and b!3611843 (= (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toChars!7787 (transformation!5644 (rule!8396 token!511)))) t!293452) tb!207069))

(declare-fun result!252354 () Bool)

(assert (= result!252354 result!252348))

(assert (=> b!3612019 t!293452))

(declare-fun b_and!263487 () Bool)

(assert (= b_and!263469 (and (=> t!293452 result!252354) b_and!263487)))

(declare-fun t!293454 () Bool)

(declare-fun tb!207071 () Bool)

(assert (=> (and b!3611882 (= (toChars!7787 (transformation!5644 rule!403)) (toChars!7787 (transformation!5644 (rule!8396 token!511)))) t!293454) tb!207071))

(declare-fun result!252356 () Bool)

(assert (= result!252356 result!252348))

(assert (=> b!3612019 t!293454))

(declare-fun b_and!263489 () Bool)

(assert (= b_and!263473 (and (=> t!293454 result!252356) b_and!263489)))

(declare-fun m!4110021 () Bool)

(assert (=> d!1063421 m!4110021))

(declare-fun m!4110023 () Bool)

(assert (=> b!3612019 m!4110023))

(assert (=> b!3612019 m!4110023))

(declare-fun m!4110025 () Bool)

(assert (=> b!3612019 m!4110025))

(declare-fun m!4110027 () Bool)

(assert (=> b!3612020 m!4110027))

(assert (=> start!336246 d!1063421))

(declare-fun d!1063427 () Bool)

(assert (=> d!1063427 (= (inv!51396 (tag!6352 (h!43443 rules!3307))) (= (mod (str.len (value!181313 (tag!6352 (h!43443 rules!3307)))) 2) 0))))

(assert (=> b!3611867 d!1063427))

(declare-fun d!1063429 () Bool)

(declare-fun res!1461180 () Bool)

(declare-fun e!2235506 () Bool)

(assert (=> d!1063429 (=> (not res!1461180) (not e!2235506))))

(assert (=> d!1063429 (= res!1461180 (semiInverseModEq!2398 (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toValue!7928 (transformation!5644 (h!43443 rules!3307)))))))

(assert (=> d!1063429 (= (inv!51400 (transformation!5644 (h!43443 rules!3307))) e!2235506)))

(declare-fun b!3612035 () Bool)

(assert (=> b!3612035 (= e!2235506 (equivClasses!2297 (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toValue!7928 (transformation!5644 (h!43443 rules!3307)))))))

(assert (= (and d!1063429 res!1461180) b!3612035))

(declare-fun m!4110029 () Bool)

(assert (=> d!1063429 m!4110029))

(declare-fun m!4110031 () Bool)

(assert (=> b!3612035 m!4110031))

(assert (=> b!3611867 d!1063429))

(declare-fun b!3612046 () Bool)

(declare-fun e!2235513 () Bool)

(declare-fun inv!16 (TokenValue!5874) Bool)

(assert (=> b!3612046 (= e!2235513 (inv!16 (value!181314 token!511)))))

(declare-fun b!3612047 () Bool)

(declare-fun res!1461183 () Bool)

(declare-fun e!2235514 () Bool)

(assert (=> b!3612047 (=> res!1461183 e!2235514)))

(assert (=> b!3612047 (= res!1461183 (not ((_ is IntegerValue!17624) (value!181314 token!511))))))

(declare-fun e!2235515 () Bool)

(assert (=> b!3612047 (= e!2235515 e!2235514)))

(declare-fun d!1063431 () Bool)

(declare-fun c!624901 () Bool)

(assert (=> d!1063431 (= c!624901 ((_ is IntegerValue!17622) (value!181314 token!511)))))

(assert (=> d!1063431 (= (inv!21 (value!181314 token!511)) e!2235513)))

(declare-fun b!3612048 () Bool)

(declare-fun inv!17 (TokenValue!5874) Bool)

(assert (=> b!3612048 (= e!2235515 (inv!17 (value!181314 token!511)))))

(declare-fun b!3612049 () Bool)

(declare-fun inv!15 (TokenValue!5874) Bool)

(assert (=> b!3612049 (= e!2235514 (inv!15 (value!181314 token!511)))))

(declare-fun b!3612050 () Bool)

(assert (=> b!3612050 (= e!2235513 e!2235515)))

(declare-fun c!624902 () Bool)

(assert (=> b!3612050 (= c!624902 ((_ is IntegerValue!17623) (value!181314 token!511)))))

(assert (= (and d!1063431 c!624901) b!3612046))

(assert (= (and d!1063431 (not c!624901)) b!3612050))

(assert (= (and b!3612050 c!624902) b!3612048))

(assert (= (and b!3612050 (not c!624902)) b!3612047))

(assert (= (and b!3612047 (not res!1461183)) b!3612049))

(declare-fun m!4110033 () Bool)

(assert (=> b!3612046 m!4110033))

(declare-fun m!4110035 () Bool)

(assert (=> b!3612048 m!4110035))

(declare-fun m!4110037 () Bool)

(assert (=> b!3612049 m!4110037))

(assert (=> b!3611847 d!1063431))

(declare-fun d!1063433 () Bool)

(assert (=> d!1063433 (not (contains!7351 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244083))))

(declare-fun lt!1244157 () Unit!54264)

(declare-fun choose!21122 (LexerInterface!5233 List!38147 List!38147 Rule!11088 Rule!11088 C!20992) Unit!54264)

(assert (=> d!1063433 (= lt!1244157 (choose!21122 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) rule!403 lt!1244083))))

(assert (=> d!1063433 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063433 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!350 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) rule!403 lt!1244083) lt!1244157)))

(declare-fun bs!570887 () Bool)

(assert (= bs!570887 d!1063433))

(assert (=> bs!570887 m!4109847))

(assert (=> bs!570887 m!4109847))

(declare-fun m!4110039 () Bool)

(assert (=> bs!570887 m!4110039))

(declare-fun m!4110041 () Bool)

(assert (=> bs!570887 m!4110041))

(assert (=> bs!570887 m!4109785))

(assert (=> b!3611886 d!1063433))

(declare-fun d!1063435 () Bool)

(assert (=> d!1063435 (not (matchR!4972 (regex!5644 rule!403) lt!1244074))))

(declare-fun lt!1244160 () Unit!54264)

(declare-fun choose!21123 (Regex!10403 List!38146 C!20992) Unit!54264)

(assert (=> d!1063435 (= lt!1244160 (choose!21123 (regex!5644 rule!403) lt!1244074 lt!1244083))))

(declare-fun validRegex!4763 (Regex!10403) Bool)

(assert (=> d!1063435 (validRegex!4763 (regex!5644 rule!403))))

(assert (=> d!1063435 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 rule!403) lt!1244074 lt!1244083) lt!1244160)))

(declare-fun bs!570888 () Bool)

(assert (= bs!570888 d!1063435))

(assert (=> bs!570888 m!4109791))

(declare-fun m!4110043 () Bool)

(assert (=> bs!570888 m!4110043))

(declare-fun m!4110045 () Bool)

(assert (=> bs!570888 m!4110045))

(assert (=> b!3611866 d!1063435))

(declare-fun b!3612079 () Bool)

(declare-fun e!2235534 () Bool)

(declare-fun e!2235536 () Bool)

(assert (=> b!3612079 (= e!2235534 e!2235536)))

(declare-fun c!624911 () Bool)

(assert (=> b!3612079 (= c!624911 ((_ is EmptyLang!10403) (regex!5644 lt!1244075)))))

(declare-fun b!3612080 () Bool)

(declare-fun res!1461200 () Bool)

(declare-fun e!2235532 () Bool)

(assert (=> b!3612080 (=> (not res!1461200) (not e!2235532))))

(declare-fun call!261152 () Bool)

(assert (=> b!3612080 (= res!1461200 (not call!261152))))

(declare-fun b!3612081 () Bool)

(declare-fun res!1461202 () Bool)

(assert (=> b!3612081 (=> (not res!1461202) (not e!2235532))))

(declare-fun tail!5599 (List!38146) List!38146)

(assert (=> b!3612081 (= res!1461202 (isEmpty!22454 (tail!5599 (list!14024 (charsOf!3658 (_1!22090 lt!1244090))))))))

(declare-fun b!3612082 () Bool)

(declare-fun e!2235533 () Bool)

(declare-fun derivativeStep!3149 (Regex!10403 C!20992) Regex!10403)

(assert (=> b!3612082 (= e!2235533 (matchR!4972 (derivativeStep!3149 (regex!5644 lt!1244075) (head!7604 (list!14024 (charsOf!3658 (_1!22090 lt!1244090))))) (tail!5599 (list!14024 (charsOf!3658 (_1!22090 lt!1244090))))))))

(declare-fun b!3612083 () Bool)

(declare-fun e!2235531 () Bool)

(assert (=> b!3612083 (= e!2235531 (not (= (head!7604 (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))) (c!624868 (regex!5644 lt!1244075)))))))

(declare-fun b!3612084 () Bool)

(declare-fun nullable!3600 (Regex!10403) Bool)

(assert (=> b!3612084 (= e!2235533 (nullable!3600 (regex!5644 lt!1244075)))))

(declare-fun b!3612085 () Bool)

(declare-fun res!1461207 () Bool)

(assert (=> b!3612085 (=> res!1461207 e!2235531)))

(assert (=> b!3612085 (= res!1461207 (not (isEmpty!22454 (tail!5599 (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))))))))

(declare-fun d!1063437 () Bool)

(assert (=> d!1063437 e!2235534))

(declare-fun c!624913 () Bool)

(assert (=> d!1063437 (= c!624913 ((_ is EmptyExpr!10403) (regex!5644 lt!1244075)))))

(declare-fun lt!1244163 () Bool)

(assert (=> d!1063437 (= lt!1244163 e!2235533)))

(declare-fun c!624912 () Bool)

(assert (=> d!1063437 (= c!624912 (isEmpty!22454 (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))))))

(assert (=> d!1063437 (validRegex!4763 (regex!5644 lt!1244075))))

(assert (=> d!1063437 (= (matchR!4972 (regex!5644 lt!1244075) (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))) lt!1244163)))

(declare-fun b!3612086 () Bool)

(declare-fun res!1461206 () Bool)

(declare-fun e!2235530 () Bool)

(assert (=> b!3612086 (=> res!1461206 e!2235530)))

(assert (=> b!3612086 (= res!1461206 e!2235532)))

(declare-fun res!1461203 () Bool)

(assert (=> b!3612086 (=> (not res!1461203) (not e!2235532))))

(assert (=> b!3612086 (= res!1461203 lt!1244163)))

(declare-fun b!3612087 () Bool)

(declare-fun e!2235535 () Bool)

(assert (=> b!3612087 (= e!2235535 e!2235531)))

(declare-fun res!1461205 () Bool)

(assert (=> b!3612087 (=> res!1461205 e!2235531)))

(assert (=> b!3612087 (= res!1461205 call!261152)))

(declare-fun b!3612088 () Bool)

(assert (=> b!3612088 (= e!2235532 (= (head!7604 (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))) (c!624868 (regex!5644 lt!1244075))))))

(declare-fun b!3612089 () Bool)

(assert (=> b!3612089 (= e!2235534 (= lt!1244163 call!261152))))

(declare-fun bm!261147 () Bool)

(assert (=> bm!261147 (= call!261152 (isEmpty!22454 (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))))))

(declare-fun b!3612090 () Bool)

(assert (=> b!3612090 (= e!2235536 (not lt!1244163))))

(declare-fun b!3612091 () Bool)

(declare-fun res!1461201 () Bool)

(assert (=> b!3612091 (=> res!1461201 e!2235530)))

(assert (=> b!3612091 (= res!1461201 (not ((_ is ElementMatch!10403) (regex!5644 lt!1244075))))))

(assert (=> b!3612091 (= e!2235536 e!2235530)))

(declare-fun b!3612092 () Bool)

(assert (=> b!3612092 (= e!2235530 e!2235535)))

(declare-fun res!1461204 () Bool)

(assert (=> b!3612092 (=> (not res!1461204) (not e!2235535))))

(assert (=> b!3612092 (= res!1461204 (not lt!1244163))))

(assert (= (and d!1063437 c!624912) b!3612084))

(assert (= (and d!1063437 (not c!624912)) b!3612082))

(assert (= (and d!1063437 c!624913) b!3612089))

(assert (= (and d!1063437 (not c!624913)) b!3612079))

(assert (= (and b!3612079 c!624911) b!3612090))

(assert (= (and b!3612079 (not c!624911)) b!3612091))

(assert (= (and b!3612091 (not res!1461201)) b!3612086))

(assert (= (and b!3612086 res!1461203) b!3612080))

(assert (= (and b!3612080 res!1461200) b!3612081))

(assert (= (and b!3612081 res!1461202) b!3612088))

(assert (= (and b!3612086 (not res!1461206)) b!3612092))

(assert (= (and b!3612092 res!1461204) b!3612087))

(assert (= (and b!3612087 (not res!1461205)) b!3612085))

(assert (= (and b!3612085 (not res!1461207)) b!3612083))

(assert (= (or b!3612089 b!3612080 b!3612087) bm!261147))

(assert (=> b!3612081 m!4109835))

(declare-fun m!4110047 () Bool)

(assert (=> b!3612081 m!4110047))

(assert (=> b!3612081 m!4110047))

(declare-fun m!4110049 () Bool)

(assert (=> b!3612081 m!4110049))

(assert (=> d!1063437 m!4109835))

(declare-fun m!4110051 () Bool)

(assert (=> d!1063437 m!4110051))

(declare-fun m!4110053 () Bool)

(assert (=> d!1063437 m!4110053))

(assert (=> b!3612083 m!4109835))

(declare-fun m!4110055 () Bool)

(assert (=> b!3612083 m!4110055))

(assert (=> b!3612088 m!4109835))

(assert (=> b!3612088 m!4110055))

(assert (=> b!3612082 m!4109835))

(assert (=> b!3612082 m!4110055))

(assert (=> b!3612082 m!4110055))

(declare-fun m!4110057 () Bool)

(assert (=> b!3612082 m!4110057))

(assert (=> b!3612082 m!4109835))

(assert (=> b!3612082 m!4110047))

(assert (=> b!3612082 m!4110057))

(assert (=> b!3612082 m!4110047))

(declare-fun m!4110059 () Bool)

(assert (=> b!3612082 m!4110059))

(assert (=> b!3612085 m!4109835))

(assert (=> b!3612085 m!4110047))

(assert (=> b!3612085 m!4110047))

(assert (=> b!3612085 m!4110049))

(assert (=> bm!261147 m!4109835))

(assert (=> bm!261147 m!4110051))

(declare-fun m!4110061 () Bool)

(assert (=> b!3612084 m!4110061))

(assert (=> b!3611845 d!1063437))

(declare-fun d!1063439 () Bool)

(declare-fun list!14027 (Conc!11587) List!38146)

(assert (=> d!1063439 (= (list!14024 (charsOf!3658 (_1!22090 lt!1244090))) (list!14027 (c!624869 (charsOf!3658 (_1!22090 lt!1244090)))))))

(declare-fun bs!570889 () Bool)

(assert (= bs!570889 d!1063439))

(declare-fun m!4110063 () Bool)

(assert (=> bs!570889 m!4110063))

(assert (=> b!3611845 d!1063439))

(declare-fun d!1063441 () Bool)

(declare-fun lt!1244166 () BalanceConc!22788)

(assert (=> d!1063441 (= (list!14024 lt!1244166) (originalCharacters!6358 (_1!22090 lt!1244090)))))

(assert (=> d!1063441 (= lt!1244166 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (value!181314 (_1!22090 lt!1244090))))))

(assert (=> d!1063441 (= (charsOf!3658 (_1!22090 lt!1244090)) lt!1244166)))

(declare-fun b_lambda!106867 () Bool)

(assert (=> (not b_lambda!106867) (not d!1063441)))

(declare-fun t!293456 () Bool)

(declare-fun tb!207073 () Bool)

(assert (=> (and b!3611862 (= (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293456) tb!207073))

(declare-fun b!3612093 () Bool)

(declare-fun e!2235537 () Bool)

(declare-fun tp!1104047 () Bool)

(assert (=> b!3612093 (= e!2235537 (and (inv!51403 (c!624869 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (value!181314 (_1!22090 lt!1244090))))) tp!1104047))))

(declare-fun result!252358 () Bool)

(assert (=> tb!207073 (= result!252358 (and (inv!51404 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (value!181314 (_1!22090 lt!1244090)))) e!2235537))))

(assert (= tb!207073 b!3612093))

(declare-fun m!4110065 () Bool)

(assert (=> b!3612093 m!4110065))

(declare-fun m!4110067 () Bool)

(assert (=> tb!207073 m!4110067))

(assert (=> d!1063441 t!293456))

(declare-fun b_and!263491 () Bool)

(assert (= b_and!263483 (and (=> t!293456 result!252358) b_and!263491)))

(declare-fun tb!207075 () Bool)

(declare-fun t!293458 () Bool)

(assert (=> (and b!3611853 (= (toChars!7787 (transformation!5644 (rule!8396 token!511))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293458) tb!207075))

(declare-fun result!252360 () Bool)

(assert (= result!252360 result!252358))

(assert (=> d!1063441 t!293458))

(declare-fun b_and!263493 () Bool)

(assert (= b_and!263485 (and (=> t!293458 result!252360) b_and!263493)))

(declare-fun t!293460 () Bool)

(declare-fun tb!207077 () Bool)

(assert (=> (and b!3611843 (= (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293460) tb!207077))

(declare-fun result!252362 () Bool)

(assert (= result!252362 result!252358))

(assert (=> d!1063441 t!293460))

(declare-fun b_and!263495 () Bool)

(assert (= b_and!263487 (and (=> t!293460 result!252362) b_and!263495)))

(declare-fun tb!207079 () Bool)

(declare-fun t!293462 () Bool)

(assert (=> (and b!3611882 (= (toChars!7787 (transformation!5644 rule!403)) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293462) tb!207079))

(declare-fun result!252364 () Bool)

(assert (= result!252364 result!252358))

(assert (=> d!1063441 t!293462))

(declare-fun b_and!263497 () Bool)

(assert (= b_and!263489 (and (=> t!293462 result!252364) b_and!263497)))

(declare-fun m!4110069 () Bool)

(assert (=> d!1063441 m!4110069))

(declare-fun m!4110071 () Bool)

(assert (=> d!1063441 m!4110071))

(assert (=> b!3611845 d!1063441))

(declare-fun d!1063443 () Bool)

(assert (=> d!1063443 (= (get!12350 lt!1244061) (v!37664 lt!1244061))))

(assert (=> b!3611845 d!1063443))

(declare-fun d!1063445 () Bool)

(assert (=> d!1063445 (= (inv!51396 (tag!6352 anOtherTypeRule!33)) (= (mod (str.len (value!181313 (tag!6352 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3611885 d!1063445))

(declare-fun d!1063447 () Bool)

(declare-fun res!1461208 () Bool)

(declare-fun e!2235538 () Bool)

(assert (=> d!1063447 (=> (not res!1461208) (not e!2235538))))

(assert (=> d!1063447 (= res!1461208 (semiInverseModEq!2398 (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toValue!7928 (transformation!5644 anOtherTypeRule!33))))))

(assert (=> d!1063447 (= (inv!51400 (transformation!5644 anOtherTypeRule!33)) e!2235538)))

(declare-fun b!3612094 () Bool)

(assert (=> b!3612094 (= e!2235538 (equivClasses!2297 (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toValue!7928 (transformation!5644 anOtherTypeRule!33))))))

(assert (= (and d!1063447 res!1461208) b!3612094))

(declare-fun m!4110073 () Bool)

(assert (=> d!1063447 m!4110073))

(declare-fun m!4110075 () Bool)

(assert (=> b!3612094 m!4110075))

(assert (=> b!3611885 d!1063447))

(declare-fun d!1063449 () Bool)

(declare-fun isEmpty!22458 (Option!7918) Bool)

(assert (=> d!1063449 (= (isDefined!6151 lt!1244063) (not (isEmpty!22458 lt!1244063)))))

(declare-fun bs!570890 () Bool)

(assert (= bs!570890 d!1063449))

(declare-fun m!4110077 () Bool)

(assert (=> bs!570890 m!4110077))

(assert (=> b!3611884 d!1063449))

(declare-fun b!3612114 () Bool)

(declare-fun e!2235545 () Option!7918)

(declare-fun lt!1244180 () Option!7918)

(declare-fun lt!1244178 () Option!7918)

(assert (=> b!3612114 (= e!2235545 (ite (and ((_ is None!7917) lt!1244180) ((_ is None!7917) lt!1244178)) None!7917 (ite ((_ is None!7917) lt!1244178) lt!1244180 (ite ((_ is None!7917) lt!1244180) lt!1244178 (ite (>= (size!28991 (_1!22090 (v!37663 lt!1244180))) (size!28991 (_1!22090 (v!37663 lt!1244178)))) lt!1244180 lt!1244178)))))))

(declare-fun call!261155 () Option!7918)

(assert (=> b!3612114 (= lt!1244180 call!261155)))

(assert (=> b!3612114 (= lt!1244178 (maxPrefix!2767 thiss!23823 (t!293438 rules!3307) lt!1244074))))

(declare-fun b!3612115 () Bool)

(assert (=> b!3612115 (= e!2235545 call!261155)))

(declare-fun b!3612116 () Bool)

(declare-fun res!1461228 () Bool)

(declare-fun e!2235547 () Bool)

(assert (=> b!3612116 (=> (not res!1461228) (not e!2235547))))

(declare-fun lt!1244179 () Option!7918)

(assert (=> b!3612116 (= res!1461228 (matchR!4972 (regex!5644 (rule!8396 (_1!22090 (get!12351 lt!1244179)))) (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244179))))))))

(declare-fun b!3612117 () Bool)

(declare-fun e!2235546 () Bool)

(assert (=> b!3612117 (= e!2235546 e!2235547)))

(declare-fun res!1461226 () Bool)

(assert (=> b!3612117 (=> (not res!1461226) (not e!2235547))))

(assert (=> b!3612117 (= res!1461226 (isDefined!6151 lt!1244179))))

(declare-fun b!3612118 () Bool)

(assert (=> b!3612118 (= e!2235547 (contains!7352 rules!3307 (rule!8396 (_1!22090 (get!12351 lt!1244179)))))))

(declare-fun bm!261150 () Bool)

(assert (=> bm!261150 (= call!261155 (maxPrefixOneRule!1911 thiss!23823 (h!43443 rules!3307) lt!1244074))))

(declare-fun b!3612119 () Bool)

(declare-fun res!1461225 () Bool)

(assert (=> b!3612119 (=> (not res!1461225) (not e!2235547))))

(assert (=> b!3612119 (= res!1461225 (= (value!181314 (_1!22090 (get!12351 lt!1244179))) (apply!9150 (transformation!5644 (rule!8396 (_1!22090 (get!12351 lt!1244179)))) (seqFromList!4197 (originalCharacters!6358 (_1!22090 (get!12351 lt!1244179)))))))))

(declare-fun b!3612120 () Bool)

(declare-fun res!1461229 () Bool)

(assert (=> b!3612120 (=> (not res!1461229) (not e!2235547))))

(assert (=> b!3612120 (= res!1461229 (= (++!9460 (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244179)))) (_2!22090 (get!12351 lt!1244179))) lt!1244074))))

(declare-fun b!3612121 () Bool)

(declare-fun res!1461227 () Bool)

(assert (=> b!3612121 (=> (not res!1461227) (not e!2235547))))

(assert (=> b!3612121 (= res!1461227 (< (size!28992 (_2!22090 (get!12351 lt!1244179))) (size!28992 lt!1244074)))))

(declare-fun b!3612113 () Bool)

(declare-fun res!1461224 () Bool)

(assert (=> b!3612113 (=> (not res!1461224) (not e!2235547))))

(assert (=> b!3612113 (= res!1461224 (= (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244179)))) (originalCharacters!6358 (_1!22090 (get!12351 lt!1244179)))))))

(declare-fun d!1063451 () Bool)

(assert (=> d!1063451 e!2235546))

(declare-fun res!1461223 () Bool)

(assert (=> d!1063451 (=> res!1461223 e!2235546)))

(assert (=> d!1063451 (= res!1461223 (isEmpty!22458 lt!1244179))))

(assert (=> d!1063451 (= lt!1244179 e!2235545)))

(declare-fun c!624916 () Bool)

(assert (=> d!1063451 (= c!624916 (and ((_ is Cons!38023) rules!3307) ((_ is Nil!38023) (t!293438 rules!3307))))))

(declare-fun lt!1244181 () Unit!54264)

(declare-fun lt!1244177 () Unit!54264)

(assert (=> d!1063451 (= lt!1244181 lt!1244177)))

(assert (=> d!1063451 (isPrefix!3007 lt!1244074 lt!1244074)))

(declare-fun lemmaIsPrefixRefl!1920 (List!38146 List!38146) Unit!54264)

(assert (=> d!1063451 (= lt!1244177 (lemmaIsPrefixRefl!1920 lt!1244074 lt!1244074))))

(declare-fun rulesValidInductive!1983 (LexerInterface!5233 List!38147) Bool)

(assert (=> d!1063451 (rulesValidInductive!1983 thiss!23823 rules!3307)))

(assert (=> d!1063451 (= (maxPrefix!2767 thiss!23823 rules!3307 lt!1244074) lt!1244179)))

(assert (= (and d!1063451 c!624916) b!3612115))

(assert (= (and d!1063451 (not c!624916)) b!3612114))

(assert (= (or b!3612115 b!3612114) bm!261150))

(assert (= (and d!1063451 (not res!1461223)) b!3612117))

(assert (= (and b!3612117 res!1461226) b!3612113))

(assert (= (and b!3612113 res!1461224) b!3612121))

(assert (= (and b!3612121 res!1461227) b!3612120))

(assert (= (and b!3612120 res!1461229) b!3612119))

(assert (= (and b!3612119 res!1461225) b!3612116))

(assert (= (and b!3612116 res!1461228) b!3612118))

(declare-fun m!4110079 () Bool)

(assert (=> b!3612116 m!4110079))

(declare-fun m!4110081 () Bool)

(assert (=> b!3612116 m!4110081))

(assert (=> b!3612116 m!4110081))

(declare-fun m!4110083 () Bool)

(assert (=> b!3612116 m!4110083))

(assert (=> b!3612116 m!4110083))

(declare-fun m!4110085 () Bool)

(assert (=> b!3612116 m!4110085))

(assert (=> b!3612119 m!4110079))

(declare-fun m!4110087 () Bool)

(assert (=> b!3612119 m!4110087))

(assert (=> b!3612119 m!4110087))

(declare-fun m!4110089 () Bool)

(assert (=> b!3612119 m!4110089))

(declare-fun m!4110091 () Bool)

(assert (=> bm!261150 m!4110091))

(assert (=> b!3612113 m!4110079))

(assert (=> b!3612113 m!4110081))

(assert (=> b!3612113 m!4110081))

(assert (=> b!3612113 m!4110083))

(assert (=> b!3612121 m!4110079))

(declare-fun m!4110093 () Bool)

(assert (=> b!3612121 m!4110093))

(declare-fun m!4110095 () Bool)

(assert (=> b!3612121 m!4110095))

(assert (=> b!3612120 m!4110079))

(assert (=> b!3612120 m!4110081))

(assert (=> b!3612120 m!4110081))

(assert (=> b!3612120 m!4110083))

(assert (=> b!3612120 m!4110083))

(declare-fun m!4110097 () Bool)

(assert (=> b!3612120 m!4110097))

(assert (=> b!3612118 m!4110079))

(declare-fun m!4110099 () Bool)

(assert (=> b!3612118 m!4110099))

(declare-fun m!4110101 () Bool)

(assert (=> b!3612114 m!4110101))

(declare-fun m!4110103 () Bool)

(assert (=> d!1063451 m!4110103))

(declare-fun m!4110105 () Bool)

(assert (=> d!1063451 m!4110105))

(declare-fun m!4110107 () Bool)

(assert (=> d!1063451 m!4110107))

(declare-fun m!4110109 () Bool)

(assert (=> d!1063451 m!4110109))

(declare-fun m!4110111 () Bool)

(assert (=> b!3612117 m!4110111))

(assert (=> b!3611884 d!1063451))

(declare-fun d!1063453 () Bool)

(assert (=> d!1063453 (= (list!14024 lt!1244048) (list!14027 (c!624869 lt!1244048)))))

(declare-fun bs!570891 () Bool)

(assert (= bs!570891 d!1063453))

(declare-fun m!4110113 () Bool)

(assert (=> bs!570891 m!4110113))

(assert (=> b!3611884 d!1063453))

(declare-fun d!1063455 () Bool)

(declare-fun lt!1244182 () BalanceConc!22788)

(assert (=> d!1063455 (= (list!14024 lt!1244182) (originalCharacters!6358 token!511))))

(assert (=> d!1063455 (= lt!1244182 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 token!511))) (value!181314 token!511)))))

(assert (=> d!1063455 (= (charsOf!3658 token!511) lt!1244182)))

(declare-fun b_lambda!106869 () Bool)

(assert (=> (not b_lambda!106869) (not d!1063455)))

(assert (=> d!1063455 t!293448))

(declare-fun b_and!263499 () Bool)

(assert (= b_and!263491 (and (=> t!293448 result!252348) b_and!263499)))

(assert (=> d!1063455 t!293450))

(declare-fun b_and!263501 () Bool)

(assert (= b_and!263493 (and (=> t!293450 result!252352) b_and!263501)))

(assert (=> d!1063455 t!293452))

(declare-fun b_and!263503 () Bool)

(assert (= b_and!263495 (and (=> t!293452 result!252354) b_and!263503)))

(assert (=> d!1063455 t!293454))

(declare-fun b_and!263505 () Bool)

(assert (= b_and!263497 (and (=> t!293454 result!252356) b_and!263505)))

(declare-fun m!4110115 () Bool)

(assert (=> d!1063455 m!4110115))

(assert (=> d!1063455 m!4110023))

(assert (=> b!3611884 d!1063455))

(declare-fun d!1063457 () Bool)

(declare-fun lt!1244183 () Bool)

(assert (=> d!1063457 (= lt!1244183 (select (content!5439 rules!3307) (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun e!2235549 () Bool)

(assert (=> d!1063457 (= lt!1244183 e!2235549)))

(declare-fun res!1461231 () Bool)

(assert (=> d!1063457 (=> (not res!1461231) (not e!2235549))))

(assert (=> d!1063457 (= res!1461231 ((_ is Cons!38023) rules!3307))))

(assert (=> d!1063457 (= (contains!7352 rules!3307 (rule!8396 (_1!22090 lt!1244090))) lt!1244183)))

(declare-fun b!3612122 () Bool)

(declare-fun e!2235548 () Bool)

(assert (=> b!3612122 (= e!2235549 e!2235548)))

(declare-fun res!1461230 () Bool)

(assert (=> b!3612122 (=> res!1461230 e!2235548)))

(assert (=> b!3612122 (= res!1461230 (= (h!43443 rules!3307) (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun b!3612123 () Bool)

(assert (=> b!3612123 (= e!2235548 (contains!7352 (t!293438 rules!3307) (rule!8396 (_1!22090 lt!1244090))))))

(assert (= (and d!1063457 res!1461231) b!3612122))

(assert (= (and b!3612122 (not res!1461230)) b!3612123))

(assert (=> d!1063457 m!4109903))

(declare-fun m!4110117 () Bool)

(assert (=> d!1063457 m!4110117))

(declare-fun m!4110119 () Bool)

(assert (=> b!3612123 m!4110119))

(assert (=> b!3611864 d!1063457))

(declare-fun b!3612198 () Bool)

(declare-fun res!1461285 () Bool)

(declare-fun e!2235596 () Bool)

(assert (=> b!3612198 (=> (not res!1461285) (not e!2235596))))

(declare-fun lt!1244273 () Option!7918)

(assert (=> b!3612198 (= res!1461285 (= (value!181314 (_1!22090 (get!12351 lt!1244273))) (apply!9150 (transformation!5644 (rule!8396 (_1!22090 (get!12351 lt!1244273)))) (seqFromList!4197 (originalCharacters!6358 (_1!22090 (get!12351 lt!1244273)))))))))

(declare-fun b!3612199 () Bool)

(declare-fun res!1461283 () Bool)

(assert (=> b!3612199 (=> (not res!1461283) (not e!2235596))))

(assert (=> b!3612199 (= res!1461283 (= (++!9460 (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244273)))) (_2!22090 (get!12351 lt!1244273))) lt!1244062))))

(declare-fun b!3612200 () Bool)

(declare-fun e!2235598 () Option!7918)

(declare-datatypes ((tuple2!37916 0))(
  ( (tuple2!37917 (_1!22092 List!38146) (_2!22092 List!38146)) )
))
(declare-fun lt!1244271 () tuple2!37916)

(assert (=> b!3612200 (= e!2235598 (Some!7917 (tuple2!37913 (Token!10655 (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) (seqFromList!4197 (_1!22092 lt!1244271))) (rule!8396 (_1!22090 lt!1244090)) (size!28993 (seqFromList!4197 (_1!22092 lt!1244271))) (_1!22092 lt!1244271)) (_2!22092 lt!1244271))))))

(declare-fun lt!1244269 () Unit!54264)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!979 (Regex!10403 List!38146) Unit!54264)

(assert (=> b!3612200 (= lt!1244269 (longestMatchIsAcceptedByMatchOrIsEmpty!979 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244062))))

(declare-fun res!1461286 () Bool)

(declare-fun findLongestMatchInner!1006 (Regex!10403 List!38146 Int List!38146 List!38146 Int) tuple2!37916)

(assert (=> b!3612200 (= res!1461286 (isEmpty!22454 (_1!22092 (findLongestMatchInner!1006 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) Nil!38022 (size!28992 Nil!38022) lt!1244062 lt!1244062 (size!28992 lt!1244062)))))))

(declare-fun e!2235599 () Bool)

(assert (=> b!3612200 (=> res!1461286 e!2235599)))

(assert (=> b!3612200 e!2235599))

(declare-fun lt!1244272 () Unit!54264)

(assert (=> b!3612200 (= lt!1244272 lt!1244269)))

(declare-fun lt!1244270 () Unit!54264)

(assert (=> b!3612200 (= lt!1244270 (lemmaSemiInverse!1401 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) (seqFromList!4197 (_1!22092 lt!1244271))))))

(declare-fun b!3612201 () Bool)

(assert (=> b!3612201 (= e!2235596 (= (size!28991 (_1!22090 (get!12351 lt!1244273))) (size!28992 (originalCharacters!6358 (_1!22090 (get!12351 lt!1244273))))))))

(declare-fun b!3612202 () Bool)

(assert (=> b!3612202 (= e!2235598 None!7917)))

(declare-fun b!3612203 () Bool)

(declare-fun e!2235597 () Bool)

(assert (=> b!3612203 (= e!2235597 e!2235596)))

(declare-fun res!1461282 () Bool)

(assert (=> b!3612203 (=> (not res!1461282) (not e!2235596))))

(assert (=> b!3612203 (= res!1461282 (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244273))))))))

(declare-fun b!3612204 () Bool)

(assert (=> b!3612204 (= e!2235599 (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) (_1!22092 (findLongestMatchInner!1006 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) Nil!38022 (size!28992 Nil!38022) lt!1244062 lt!1244062 (size!28992 lt!1244062)))))))

(declare-fun b!3612206 () Bool)

(declare-fun res!1461287 () Bool)

(assert (=> b!3612206 (=> (not res!1461287) (not e!2235596))))

(assert (=> b!3612206 (= res!1461287 (= (rule!8396 (_1!22090 (get!12351 lt!1244273))) (rule!8396 (_1!22090 lt!1244090))))))

(declare-fun b!3612205 () Bool)

(declare-fun res!1461284 () Bool)

(assert (=> b!3612205 (=> (not res!1461284) (not e!2235596))))

(assert (=> b!3612205 (= res!1461284 (< (size!28992 (_2!22090 (get!12351 lt!1244273))) (size!28992 lt!1244062)))))

(declare-fun d!1063459 () Bool)

(assert (=> d!1063459 e!2235597))

(declare-fun res!1461281 () Bool)

(assert (=> d!1063459 (=> res!1461281 e!2235597)))

(assert (=> d!1063459 (= res!1461281 (isEmpty!22458 lt!1244273))))

(assert (=> d!1063459 (= lt!1244273 e!2235598)))

(declare-fun c!624930 () Bool)

(assert (=> d!1063459 (= c!624930 (isEmpty!22454 (_1!22092 lt!1244271)))))

(declare-fun findLongestMatch!921 (Regex!10403 List!38146) tuple2!37916)

(assert (=> d!1063459 (= lt!1244271 (findLongestMatch!921 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244062))))

(assert (=> d!1063459 (ruleValid!1909 thiss!23823 (rule!8396 (_1!22090 lt!1244090)))))

(assert (=> d!1063459 (= (maxPrefixOneRule!1911 thiss!23823 (rule!8396 (_1!22090 lt!1244090)) lt!1244062) lt!1244273)))

(assert (= (and d!1063459 c!624930) b!3612202))

(assert (= (and d!1063459 (not c!624930)) b!3612200))

(assert (= (and b!3612200 (not res!1461286)) b!3612204))

(assert (= (and d!1063459 (not res!1461281)) b!3612203))

(assert (= (and b!3612203 res!1461282) b!3612199))

(assert (= (and b!3612199 res!1461283) b!3612205))

(assert (= (and b!3612205 res!1461284) b!3612206))

(assert (= (and b!3612206 res!1461287) b!3612198))

(assert (= (and b!3612198 res!1461285) b!3612201))

(declare-fun m!4110259 () Bool)

(assert (=> b!3612206 m!4110259))

(declare-fun m!4110261 () Bool)

(assert (=> b!3612204 m!4110261))

(declare-fun m!4110263 () Bool)

(assert (=> b!3612204 m!4110263))

(assert (=> b!3612204 m!4110261))

(assert (=> b!3612204 m!4110263))

(declare-fun m!4110265 () Bool)

(assert (=> b!3612204 m!4110265))

(declare-fun m!4110267 () Bool)

(assert (=> b!3612204 m!4110267))

(declare-fun m!4110269 () Bool)

(assert (=> d!1063459 m!4110269))

(declare-fun m!4110271 () Bool)

(assert (=> d!1063459 m!4110271))

(declare-fun m!4110273 () Bool)

(assert (=> d!1063459 m!4110273))

(declare-fun m!4110275 () Bool)

(assert (=> d!1063459 m!4110275))

(assert (=> b!3612198 m!4110259))

(declare-fun m!4110277 () Bool)

(assert (=> b!3612198 m!4110277))

(assert (=> b!3612198 m!4110277))

(declare-fun m!4110279 () Bool)

(assert (=> b!3612198 m!4110279))

(declare-fun m!4110281 () Bool)

(assert (=> b!3612200 m!4110281))

(declare-fun m!4110283 () Bool)

(assert (=> b!3612200 m!4110283))

(assert (=> b!3612200 m!4110263))

(assert (=> b!3612200 m!4110281))

(declare-fun m!4110285 () Bool)

(assert (=> b!3612200 m!4110285))

(declare-fun m!4110287 () Bool)

(assert (=> b!3612200 m!4110287))

(assert (=> b!3612200 m!4110281))

(assert (=> b!3612200 m!4110261))

(assert (=> b!3612200 m!4110281))

(declare-fun m!4110289 () Bool)

(assert (=> b!3612200 m!4110289))

(declare-fun m!4110291 () Bool)

(assert (=> b!3612200 m!4110291))

(assert (=> b!3612200 m!4110261))

(assert (=> b!3612200 m!4110263))

(assert (=> b!3612200 m!4110265))

(assert (=> b!3612205 m!4110259))

(declare-fun m!4110293 () Bool)

(assert (=> b!3612205 m!4110293))

(assert (=> b!3612205 m!4110263))

(assert (=> b!3612199 m!4110259))

(declare-fun m!4110295 () Bool)

(assert (=> b!3612199 m!4110295))

(assert (=> b!3612199 m!4110295))

(declare-fun m!4110297 () Bool)

(assert (=> b!3612199 m!4110297))

(assert (=> b!3612199 m!4110297))

(declare-fun m!4110299 () Bool)

(assert (=> b!3612199 m!4110299))

(assert (=> b!3612203 m!4110259))

(assert (=> b!3612203 m!4110295))

(assert (=> b!3612203 m!4110295))

(assert (=> b!3612203 m!4110297))

(assert (=> b!3612203 m!4110297))

(declare-fun m!4110301 () Bool)

(assert (=> b!3612203 m!4110301))

(assert (=> b!3612201 m!4110259))

(declare-fun m!4110303 () Bool)

(assert (=> b!3612201 m!4110303))

(assert (=> b!3611844 d!1063459))

(declare-fun d!1063495 () Bool)

(declare-fun lt!1244276 () Int)

(assert (=> d!1063495 (>= lt!1244276 0)))

(declare-fun e!2235602 () Int)

(assert (=> d!1063495 (= lt!1244276 e!2235602)))

(declare-fun c!624933 () Bool)

(assert (=> d!1063495 (= c!624933 ((_ is Nil!38022) lt!1244079))))

(assert (=> d!1063495 (= (size!28992 lt!1244079) lt!1244276)))

(declare-fun b!3612211 () Bool)

(assert (=> b!3612211 (= e!2235602 0)))

(declare-fun b!3612212 () Bool)

(assert (=> b!3612212 (= e!2235602 (+ 1 (size!28992 (t!293437 lt!1244079))))))

(assert (= (and d!1063495 c!624933) b!3612211))

(assert (= (and d!1063495 (not c!624933)) b!3612212))

(declare-fun m!4110305 () Bool)

(assert (=> b!3612212 m!4110305))

(assert (=> b!3611844 d!1063495))

(declare-fun d!1063497 () Bool)

(assert (=> d!1063497 (= (maxPrefixOneRule!1911 thiss!23823 (rule!8396 (_1!22090 lt!1244090)) lt!1244062) (Some!7917 (tuple2!37913 (Token!10655 (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) (seqFromList!4197 lt!1244079)) (rule!8396 (_1!22090 lt!1244090)) (size!28992 lt!1244079) lt!1244079) (_2!22090 lt!1244090))))))

(declare-fun lt!1244279 () Unit!54264)

(declare-fun choose!21125 (LexerInterface!5233 List!38147 List!38146 List!38146 List!38146 Rule!11088) Unit!54264)

(assert (=> d!1063497 (= lt!1244279 (choose!21125 thiss!23823 rules!3307 lt!1244079 lt!1244062 (_2!22090 lt!1244090) (rule!8396 (_1!22090 lt!1244090))))))

(assert (=> d!1063497 (not (isEmpty!22455 rules!3307))))

(assert (=> d!1063497 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!983 thiss!23823 rules!3307 lt!1244079 lt!1244062 (_2!22090 lt!1244090) (rule!8396 (_1!22090 lt!1244090))) lt!1244279)))

(declare-fun bs!570898 () Bool)

(assert (= bs!570898 d!1063497))

(assert (=> bs!570898 m!4109701))

(declare-fun m!4110307 () Bool)

(assert (=> bs!570898 m!4110307))

(assert (=> bs!570898 m!4109701))

(assert (=> bs!570898 m!4109707))

(assert (=> bs!570898 m!4109749))

(assert (=> bs!570898 m!4109699))

(assert (=> bs!570898 m!4109709))

(assert (=> b!3611844 d!1063497))

(declare-fun d!1063499 () Bool)

(declare-fun dynLambda!16453 (Int BalanceConc!22788) TokenValue!5874)

(assert (=> d!1063499 (= (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) (seqFromList!4197 lt!1244079)) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (seqFromList!4197 lt!1244079)))))

(declare-fun b_lambda!106873 () Bool)

(assert (=> (not b_lambda!106873) (not d!1063499)))

(declare-fun tb!207089 () Bool)

(declare-fun t!293472 () Bool)

(assert (=> (and b!3611862 (= (toValue!7928 (transformation!5644 (h!43443 rules!3307))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293472) tb!207089))

(declare-fun result!252374 () Bool)

(assert (=> tb!207089 (= result!252374 (inv!21 (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (seqFromList!4197 lt!1244079))))))

(declare-fun m!4110309 () Bool)

(assert (=> tb!207089 m!4110309))

(assert (=> d!1063499 t!293472))

(declare-fun b_and!263515 () Bool)

(assert (= b_and!263459 (and (=> t!293472 result!252374) b_and!263515)))

(declare-fun t!293474 () Bool)

(declare-fun tb!207091 () Bool)

(assert (=> (and b!3611853 (= (toValue!7928 (transformation!5644 (rule!8396 token!511))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293474) tb!207091))

(declare-fun result!252378 () Bool)

(assert (= result!252378 result!252374))

(assert (=> d!1063499 t!293474))

(declare-fun b_and!263517 () Bool)

(assert (= b_and!263463 (and (=> t!293474 result!252378) b_and!263517)))

(declare-fun tb!207093 () Bool)

(declare-fun t!293476 () Bool)

(assert (=> (and b!3611843 (= (toValue!7928 (transformation!5644 anOtherTypeRule!33)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293476) tb!207093))

(declare-fun result!252380 () Bool)

(assert (= result!252380 result!252374))

(assert (=> d!1063499 t!293476))

(declare-fun b_and!263519 () Bool)

(assert (= b_and!263467 (and (=> t!293476 result!252380) b_and!263519)))

(declare-fun t!293478 () Bool)

(declare-fun tb!207095 () Bool)

(assert (=> (and b!3611882 (= (toValue!7928 (transformation!5644 rule!403)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293478) tb!207095))

(declare-fun result!252382 () Bool)

(assert (= result!252382 result!252374))

(assert (=> d!1063499 t!293478))

(declare-fun b_and!263521 () Bool)

(assert (= b_and!263471 (and (=> t!293478 result!252382) b_and!263521)))

(assert (=> d!1063499 m!4109701))

(declare-fun m!4110311 () Bool)

(assert (=> d!1063499 m!4110311))

(assert (=> b!3611844 d!1063499))

(declare-fun d!1063501 () Bool)

(declare-fun fromListB!1939 (List!38146) BalanceConc!22788)

(assert (=> d!1063501 (= (seqFromList!4197 lt!1244079) (fromListB!1939 lt!1244079))))

(declare-fun bs!570899 () Bool)

(assert (= bs!570899 d!1063501))

(declare-fun m!4110313 () Bool)

(assert (=> bs!570899 m!4110313))

(assert (=> b!3611844 d!1063501))

(declare-fun d!1063503 () Bool)

(declare-fun lt!1244282 () List!38146)

(assert (=> d!1063503 (= (++!9460 lt!1244079 lt!1244282) lt!1244062)))

(declare-fun e!2235608 () List!38146)

(assert (=> d!1063503 (= lt!1244282 e!2235608)))

(declare-fun c!624936 () Bool)

(assert (=> d!1063503 (= c!624936 ((_ is Cons!38022) lt!1244079))))

(assert (=> d!1063503 (>= (size!28992 lt!1244062) (size!28992 lt!1244079))))

(assert (=> d!1063503 (= (getSuffix!1582 lt!1244062 lt!1244079) lt!1244282)))

(declare-fun b!3612219 () Bool)

(assert (=> b!3612219 (= e!2235608 (getSuffix!1582 (tail!5599 lt!1244062) (t!293437 lt!1244079)))))

(declare-fun b!3612220 () Bool)

(assert (=> b!3612220 (= e!2235608 lt!1244062)))

(assert (= (and d!1063503 c!624936) b!3612219))

(assert (= (and d!1063503 (not c!624936)) b!3612220))

(declare-fun m!4110315 () Bool)

(assert (=> d!1063503 m!4110315))

(assert (=> d!1063503 m!4110263))

(assert (=> d!1063503 m!4109699))

(declare-fun m!4110317 () Bool)

(assert (=> b!3612219 m!4110317))

(assert (=> b!3612219 m!4110317))

(declare-fun m!4110319 () Bool)

(assert (=> b!3612219 m!4110319))

(assert (=> b!3611844 d!1063503))

(declare-fun d!1063505 () Bool)

(assert (=> d!1063505 (= (_2!22090 lt!1244090) lt!1244073)))

(declare-fun lt!1244285 () Unit!54264)

(declare-fun choose!21128 (List!38146 List!38146 List!38146 List!38146 List!38146) Unit!54264)

(assert (=> d!1063505 (= lt!1244285 (choose!21128 lt!1244079 (_2!22090 lt!1244090) lt!1244079 lt!1244073 lt!1244062))))

(assert (=> d!1063505 (isPrefix!3007 lt!1244079 lt!1244062)))

(assert (=> d!1063505 (= (lemmaSamePrefixThenSameSuffix!1362 lt!1244079 (_2!22090 lt!1244090) lt!1244079 lt!1244073 lt!1244062) lt!1244285)))

(declare-fun bs!570900 () Bool)

(assert (= bs!570900 d!1063505))

(declare-fun m!4110321 () Bool)

(assert (=> bs!570900 m!4110321))

(assert (=> bs!570900 m!4109777))

(assert (=> b!3611844 d!1063505))

(declare-fun d!1063507 () Bool)

(assert (=> d!1063507 (not (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079))))

(declare-fun lt!1244286 () Unit!54264)

(assert (=> d!1063507 (= lt!1244286 (choose!21123 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244083))))

(assert (=> d!1063507 (validRegex!4763 (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))

(assert (=> d!1063507 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244083) lt!1244286)))

(declare-fun bs!570901 () Bool)

(assert (= bs!570901 d!1063507))

(assert (=> bs!570901 m!4109753))

(declare-fun m!4110323 () Bool)

(assert (=> bs!570901 m!4110323))

(declare-fun m!4110325 () Bool)

(assert (=> bs!570901 m!4110325))

(assert (=> bm!261126 d!1063507))

(declare-fun d!1063509 () Bool)

(assert (=> d!1063509 (not (matchR!4972 (regex!5644 rule!403) lt!1244074))))

(declare-fun lt!1244289 () Unit!54264)

(declare-fun choose!21129 (LexerInterface!5233 List!38147 Rule!11088 List!38146 List!38146 List!38146 Rule!11088) Unit!54264)

(assert (=> d!1063509 (= lt!1244289 (choose!21129 thiss!23823 rules!3307 (rule!8396 (_1!22090 lt!1244090)) lt!1244079 lt!1244062 lt!1244074 rule!403))))

(assert (=> d!1063509 (isPrefix!3007 lt!1244079 lt!1244062)))

(assert (=> d!1063509 (= (lemmaMaxPrefixOutputsMaxPrefix!292 thiss!23823 rules!3307 (rule!8396 (_1!22090 lt!1244090)) lt!1244079 lt!1244062 lt!1244074 rule!403) lt!1244289)))

(declare-fun bs!570902 () Bool)

(assert (= bs!570902 d!1063509))

(assert (=> bs!570902 m!4109791))

(declare-fun m!4110327 () Bool)

(assert (=> bs!570902 m!4110327))

(assert (=> bs!570902 m!4109777))

(assert (=> b!3611883 d!1063509))

(declare-fun d!1063511 () Bool)

(assert (=> d!1063511 (= (inv!51396 (tag!6352 rule!403)) (= (mod (str.len (value!181313 (tag!6352 rule!403))) 2) 0))))

(assert (=> b!3611861 d!1063511))

(declare-fun d!1063513 () Bool)

(declare-fun res!1461288 () Bool)

(declare-fun e!2235609 () Bool)

(assert (=> d!1063513 (=> (not res!1461288) (not e!2235609))))

(assert (=> d!1063513 (= res!1461288 (semiInverseModEq!2398 (toChars!7787 (transformation!5644 rule!403)) (toValue!7928 (transformation!5644 rule!403))))))

(assert (=> d!1063513 (= (inv!51400 (transformation!5644 rule!403)) e!2235609)))

(declare-fun b!3612221 () Bool)

(assert (=> b!3612221 (= e!2235609 (equivClasses!2297 (toChars!7787 (transformation!5644 rule!403)) (toValue!7928 (transformation!5644 rule!403))))))

(assert (= (and d!1063513 res!1461288) b!3612221))

(declare-fun m!4110329 () Bool)

(assert (=> d!1063513 m!4110329))

(declare-fun m!4110331 () Bool)

(assert (=> b!3612221 m!4110331))

(assert (=> b!3611861 d!1063513))

(declare-fun d!1063515 () Bool)

(declare-fun lt!1244290 () Bool)

(assert (=> d!1063515 (= lt!1244290 (select (content!5440 call!261130) lt!1244083))))

(declare-fun e!2235611 () Bool)

(assert (=> d!1063515 (= lt!1244290 e!2235611)))

(declare-fun res!1461289 () Bool)

(assert (=> d!1063515 (=> (not res!1461289) (not e!2235611))))

(assert (=> d!1063515 (= res!1461289 ((_ is Cons!38022) call!261130))))

(assert (=> d!1063515 (= (contains!7351 call!261130 lt!1244083) lt!1244290)))

(declare-fun b!3612222 () Bool)

(declare-fun e!2235610 () Bool)

(assert (=> b!3612222 (= e!2235611 e!2235610)))

(declare-fun res!1461290 () Bool)

(assert (=> b!3612222 (=> res!1461290 e!2235610)))

(assert (=> b!3612222 (= res!1461290 (= (h!43442 call!261130) lt!1244083))))

(declare-fun b!3612223 () Bool)

(assert (=> b!3612223 (= e!2235610 (contains!7351 (t!293437 call!261130) lt!1244083))))

(assert (= (and d!1063515 res!1461289) b!3612222))

(assert (= (and b!3612222 (not res!1461290)) b!3612223))

(declare-fun m!4110333 () Bool)

(assert (=> d!1063515 m!4110333))

(declare-fun m!4110335 () Bool)

(assert (=> d!1063515 m!4110335))

(declare-fun m!4110337 () Bool)

(assert (=> b!3612223 m!4110337))

(assert (=> bm!261125 d!1063515))

(declare-fun d!1063517 () Bool)

(declare-fun lt!1244291 () Bool)

(assert (=> d!1063517 (= lt!1244291 (select (content!5440 (usedCharacters!858 (regex!5644 anOtherTypeRule!33))) lt!1244089))))

(declare-fun e!2235613 () Bool)

(assert (=> d!1063517 (= lt!1244291 e!2235613)))

(declare-fun res!1461291 () Bool)

(assert (=> d!1063517 (=> (not res!1461291) (not e!2235613))))

(assert (=> d!1063517 (= res!1461291 ((_ is Cons!38022) (usedCharacters!858 (regex!5644 anOtherTypeRule!33))))))

(assert (=> d!1063517 (= (contains!7351 (usedCharacters!858 (regex!5644 anOtherTypeRule!33)) lt!1244089) lt!1244291)))

(declare-fun b!3612224 () Bool)

(declare-fun e!2235612 () Bool)

(assert (=> b!3612224 (= e!2235613 e!2235612)))

(declare-fun res!1461292 () Bool)

(assert (=> b!3612224 (=> res!1461292 e!2235612)))

(assert (=> b!3612224 (= res!1461292 (= (h!43442 (usedCharacters!858 (regex!5644 anOtherTypeRule!33))) lt!1244089))))

(declare-fun b!3612225 () Bool)

(assert (=> b!3612225 (= e!2235612 (contains!7351 (t!293437 (usedCharacters!858 (regex!5644 anOtherTypeRule!33))) lt!1244089))))

(assert (= (and d!1063517 res!1461291) b!3612224))

(assert (= (and b!3612224 (not res!1461292)) b!3612225))

(assert (=> d!1063517 m!4109739))

(declare-fun m!4110339 () Bool)

(assert (=> d!1063517 m!4110339))

(declare-fun m!4110341 () Bool)

(assert (=> d!1063517 m!4110341))

(declare-fun m!4110343 () Bool)

(assert (=> b!3612225 m!4110343))

(assert (=> b!3611881 d!1063517))

(declare-fun b!3612226 () Bool)

(declare-fun e!2235614 () List!38146)

(assert (=> b!3612226 (= e!2235614 (Cons!38022 (c!624868 (regex!5644 anOtherTypeRule!33)) Nil!38022))))

(declare-fun bm!261152 () Bool)

(declare-fun call!261159 () List!38146)

(declare-fun call!261157 () List!38146)

(assert (=> bm!261152 (= call!261159 call!261157)))

(declare-fun b!3612227 () Bool)

(declare-fun e!2235617 () List!38146)

(assert (=> b!3612227 (= e!2235617 Nil!38022)))

(declare-fun b!3612228 () Bool)

(declare-fun e!2235615 () List!38146)

(assert (=> b!3612228 (= e!2235615 call!261157)))

(declare-fun d!1063519 () Bool)

(declare-fun c!624940 () Bool)

(assert (=> d!1063519 (= c!624940 (or ((_ is EmptyExpr!10403) (regex!5644 anOtherTypeRule!33)) ((_ is EmptyLang!10403) (regex!5644 anOtherTypeRule!33))))))

(assert (=> d!1063519 (= (usedCharacters!858 (regex!5644 anOtherTypeRule!33)) e!2235617)))

(declare-fun b!3612229 () Bool)

(declare-fun e!2235616 () List!38146)

(assert (=> b!3612229 (= e!2235615 e!2235616)))

(declare-fun c!624939 () Bool)

(assert (=> b!3612229 (= c!624939 ((_ is Union!10403) (regex!5644 anOtherTypeRule!33)))))

(declare-fun b!3612230 () Bool)

(declare-fun call!261160 () List!38146)

(assert (=> b!3612230 (= e!2235616 call!261160)))

(declare-fun b!3612231 () Bool)

(assert (=> b!3612231 (= e!2235617 e!2235614)))

(declare-fun c!624937 () Bool)

(assert (=> b!3612231 (= c!624937 ((_ is ElementMatch!10403) (regex!5644 anOtherTypeRule!33)))))

(declare-fun b!3612232 () Bool)

(declare-fun c!624938 () Bool)

(assert (=> b!3612232 (= c!624938 ((_ is Star!10403) (regex!5644 anOtherTypeRule!33)))))

(assert (=> b!3612232 (= e!2235614 e!2235615)))

(declare-fun b!3612233 () Bool)

(assert (=> b!3612233 (= e!2235616 call!261160)))

(declare-fun bm!261153 () Bool)

(assert (=> bm!261153 (= call!261157 (usedCharacters!858 (ite c!624938 (reg!10732 (regex!5644 anOtherTypeRule!33)) (ite c!624939 (regOne!21319 (regex!5644 anOtherTypeRule!33)) (regTwo!21318 (regex!5644 anOtherTypeRule!33))))))))

(declare-fun bm!261154 () Bool)

(declare-fun call!261158 () List!38146)

(assert (=> bm!261154 (= call!261158 (usedCharacters!858 (ite c!624939 (regTwo!21319 (regex!5644 anOtherTypeRule!33)) (regOne!21318 (regex!5644 anOtherTypeRule!33)))))))

(declare-fun bm!261155 () Bool)

(assert (=> bm!261155 (= call!261160 (++!9460 (ite c!624939 call!261159 call!261158) (ite c!624939 call!261158 call!261159)))))

(assert (= (and d!1063519 c!624940) b!3612227))

(assert (= (and d!1063519 (not c!624940)) b!3612231))

(assert (= (and b!3612231 c!624937) b!3612226))

(assert (= (and b!3612231 (not c!624937)) b!3612232))

(assert (= (and b!3612232 c!624938) b!3612228))

(assert (= (and b!3612232 (not c!624938)) b!3612229))

(assert (= (and b!3612229 c!624939) b!3612233))

(assert (= (and b!3612229 (not c!624939)) b!3612230))

(assert (= (or b!3612233 b!3612230) bm!261152))

(assert (= (or b!3612233 b!3612230) bm!261154))

(assert (= (or b!3612233 b!3612230) bm!261155))

(assert (= (or b!3612228 bm!261152) bm!261153))

(declare-fun m!4110345 () Bool)

(assert (=> bm!261153 m!4110345))

(declare-fun m!4110347 () Bool)

(assert (=> bm!261154 m!4110347))

(declare-fun m!4110349 () Bool)

(assert (=> bm!261155 m!4110349))

(assert (=> b!3611881 d!1063519))

(declare-fun d!1063521 () Bool)

(assert (=> d!1063521 (not (contains!7351 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244083))))

(declare-fun lt!1244292 () Unit!54264)

(assert (=> d!1063521 (= lt!1244292 (choose!21120 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8396 (_1!22090 lt!1244090)) lt!1244083))))

(assert (=> d!1063521 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063521 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!232 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8396 (_1!22090 lt!1244090)) lt!1244083) lt!1244292)))

(declare-fun bs!570903 () Bool)

(assert (= bs!570903 d!1063521))

(assert (=> bs!570903 m!4109847))

(assert (=> bs!570903 m!4109847))

(assert (=> bs!570903 m!4110039))

(declare-fun m!4110351 () Bool)

(assert (=> bs!570903 m!4110351))

(assert (=> bs!570903 m!4109785))

(assert (=> b!3611880 d!1063521))

(declare-fun d!1063523 () Bool)

(assert (=> d!1063523 (= lt!1244079 lt!1244074)))

(declare-fun lt!1244295 () Unit!54264)

(declare-fun choose!21131 (List!38146 List!38146 List!38146) Unit!54264)

(assert (=> d!1063523 (= lt!1244295 (choose!21131 lt!1244079 lt!1244074 lt!1244062))))

(assert (=> d!1063523 (isPrefix!3007 lt!1244079 lt!1244062)))

(assert (=> d!1063523 (= (lemmaIsPrefixSameLengthThenSameList!581 lt!1244079 lt!1244074 lt!1244062) lt!1244295)))

(declare-fun bs!570904 () Bool)

(assert (= bs!570904 d!1063523))

(declare-fun m!4110353 () Bool)

(assert (=> bs!570904 m!4110353))

(assert (=> bs!570904 m!4109777))

(assert (=> b!3611860 d!1063523))

(declare-fun d!1063525 () Bool)

(declare-fun lt!1244298 () Int)

(assert (=> d!1063525 (= lt!1244298 (size!28992 (list!14024 lt!1244048)))))

(declare-fun size!28995 (Conc!11587) Int)

(assert (=> d!1063525 (= lt!1244298 (size!28995 (c!624869 lt!1244048)))))

(assert (=> d!1063525 (= (size!28993 lt!1244048) lt!1244298)))

(declare-fun bs!570905 () Bool)

(assert (= bs!570905 d!1063525))

(assert (=> bs!570905 m!4109827))

(assert (=> bs!570905 m!4109827))

(declare-fun m!4110355 () Bool)

(assert (=> bs!570905 m!4110355))

(declare-fun m!4110357 () Bool)

(assert (=> bs!570905 m!4110357))

(assert (=> b!3611860 d!1063525))

(declare-fun d!1063527 () Bool)

(declare-fun lt!1244299 () Bool)

(assert (=> d!1063527 (= lt!1244299 (select (content!5440 lt!1244084) lt!1244083))))

(declare-fun e!2235619 () Bool)

(assert (=> d!1063527 (= lt!1244299 e!2235619)))

(declare-fun res!1461293 () Bool)

(assert (=> d!1063527 (=> (not res!1461293) (not e!2235619))))

(assert (=> d!1063527 (= res!1461293 ((_ is Cons!38022) lt!1244084))))

(assert (=> d!1063527 (= (contains!7351 lt!1244084 lt!1244083) lt!1244299)))

(declare-fun b!3612234 () Bool)

(declare-fun e!2235618 () Bool)

(assert (=> b!3612234 (= e!2235619 e!2235618)))

(declare-fun res!1461294 () Bool)

(assert (=> b!3612234 (=> res!1461294 e!2235618)))

(assert (=> b!3612234 (= res!1461294 (= (h!43442 lt!1244084) lt!1244083))))

(declare-fun b!3612235 () Bool)

(assert (=> b!3612235 (= e!2235618 (contains!7351 (t!293437 lt!1244084) lt!1244083))))

(assert (= (and d!1063527 res!1461293) b!3612234))

(assert (= (and b!3612234 (not res!1461294)) b!3612235))

(assert (=> d!1063527 m!4109971))

(declare-fun m!4110359 () Bool)

(assert (=> d!1063527 m!4110359))

(declare-fun m!4110361 () Bool)

(assert (=> b!3612235 m!4110361))

(assert (=> b!3611860 d!1063527))

(declare-fun d!1063529 () Bool)

(assert (=> d!1063529 (= (head!7604 lt!1244079) (h!43442 lt!1244079))))

(assert (=> b!3611860 d!1063529))

(declare-fun d!1063531 () Bool)

(assert (=> d!1063531 (not (contains!7351 (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244089))))

(declare-fun lt!1244300 () Unit!54264)

(assert (=> d!1063531 (= lt!1244300 (choose!21122 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) anOtherTypeRule!33 lt!1244089))))

(assert (=> d!1063531 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063531 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!350 thiss!23823 rules!3307 rules!3307 (rule!8396 (_1!22090 lt!1244090)) anOtherTypeRule!33 lt!1244089) lt!1244300)))

(declare-fun bs!570906 () Bool)

(assert (= bs!570906 d!1063531))

(assert (=> bs!570906 m!4109847))

(assert (=> bs!570906 m!4109847))

(assert (=> bs!570906 m!4109875))

(declare-fun m!4110363 () Bool)

(assert (=> bs!570906 m!4110363))

(assert (=> bs!570906 m!4109785))

(assert (=> b!3611859 d!1063531))

(declare-fun d!1063533 () Bool)

(assert (=> d!1063533 (= (isEmpty!22454 (_2!22090 lt!1244067)) ((_ is Nil!38022) (_2!22090 lt!1244067)))))

(assert (=> b!3611842 d!1063533))

(declare-fun d!1063535 () Bool)

(assert (=> d!1063535 (not (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079))))

(declare-fun lt!1244301 () Unit!54264)

(assert (=> d!1063535 (= lt!1244301 (choose!21123 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244089))))

(assert (=> d!1063535 (validRegex!4763 (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))

(assert (=> d!1063535 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!628 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079 lt!1244089) lt!1244301)))

(declare-fun bs!570907 () Bool)

(assert (= bs!570907 d!1063535))

(assert (=> bs!570907 m!4109753))

(declare-fun m!4110365 () Bool)

(assert (=> bs!570907 m!4110365))

(assert (=> bs!570907 m!4110325))

(assert (=> bm!261124 d!1063535))

(declare-fun d!1063537 () Bool)

(declare-fun lt!1244302 () Int)

(assert (=> d!1063537 (= lt!1244302 (size!28992 (list!14024 lt!1244069)))))

(assert (=> d!1063537 (= lt!1244302 (size!28995 (c!624869 lt!1244069)))))

(assert (=> d!1063537 (= (size!28993 lt!1244069) lt!1244302)))

(declare-fun bs!570908 () Bool)

(assert (= bs!570908 d!1063537))

(assert (=> bs!570908 m!4109765))

(assert (=> bs!570908 m!4109765))

(declare-fun m!4110367 () Bool)

(assert (=> bs!570908 m!4110367))

(declare-fun m!4110369 () Bool)

(assert (=> bs!570908 m!4110369))

(assert (=> b!3611857 d!1063537))

(declare-fun d!1063539 () Bool)

(assert (=> d!1063539 (= (size!28991 (_1!22090 lt!1244090)) (size!28992 (originalCharacters!6358 (_1!22090 lt!1244090))))))

(declare-fun Unit!54281 () Unit!54264)

(assert (=> d!1063539 (= (lemmaCharactersSize!697 (_1!22090 lt!1244090)) Unit!54281)))

(declare-fun bs!570909 () Bool)

(assert (= bs!570909 d!1063539))

(declare-fun m!4110371 () Bool)

(assert (=> bs!570909 m!4110371))

(assert (=> b!3611857 d!1063539))

(declare-fun b!3612357 () Bool)

(declare-fun e!2235694 () Bool)

(assert (=> b!3612357 (= e!2235694 true)))

(declare-fun d!1063541 () Bool)

(assert (=> d!1063541 e!2235694))

(assert (= d!1063541 b!3612357))

(declare-fun order!20781 () Int)

(declare-fun lambda!124074 () Int)

(declare-fun order!20779 () Int)

(declare-fun dynLambda!16454 (Int Int) Int)

(declare-fun dynLambda!16455 (Int Int) Int)

(assert (=> b!3612357 (< (dynLambda!16454 order!20779 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) (dynLambda!16455 order!20781 lambda!124074))))

(declare-fun order!20783 () Int)

(declare-fun dynLambda!16456 (Int Int) Int)

(assert (=> b!3612357 (< (dynLambda!16456 order!20783 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) (dynLambda!16455 order!20781 lambda!124074))))

(assert (=> d!1063541 (= (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090)))))))

(declare-fun lt!1244324 () Unit!54264)

(declare-fun Forall2of!318 (Int BalanceConc!22788 BalanceConc!22788) Unit!54264)

(assert (=> d!1063541 (= lt!1244324 (Forall2of!318 lambda!124074 lt!1244069 (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090)))))))

(assert (=> d!1063541 (= (list!14024 lt!1244069) (list!14024 (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090)))))))

(assert (=> d!1063541 (= (lemmaEqSameImage!835 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069 (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090)))) lt!1244324)))

(declare-fun b_lambda!106887 () Bool)

(assert (=> (not b_lambda!106887) (not d!1063541)))

(declare-fun t!293504 () Bool)

(declare-fun tb!207121 () Bool)

(assert (=> (and b!3611862 (= (toValue!7928 (transformation!5644 (h!43443 rules!3307))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293504) tb!207121))

(declare-fun result!252410 () Bool)

(assert (=> tb!207121 (= result!252410 (inv!21 (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069)))))

(declare-fun m!4110473 () Bool)

(assert (=> tb!207121 m!4110473))

(assert (=> d!1063541 t!293504))

(declare-fun b_and!263571 () Bool)

(assert (= b_and!263515 (and (=> t!293504 result!252410) b_and!263571)))

(declare-fun t!293506 () Bool)

(declare-fun tb!207123 () Bool)

(assert (=> (and b!3611853 (= (toValue!7928 (transformation!5644 (rule!8396 token!511))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293506) tb!207123))

(declare-fun result!252412 () Bool)

(assert (= result!252412 result!252410))

(assert (=> d!1063541 t!293506))

(declare-fun b_and!263573 () Bool)

(assert (= b_and!263517 (and (=> t!293506 result!252412) b_and!263573)))

(declare-fun tb!207125 () Bool)

(declare-fun t!293508 () Bool)

(assert (=> (and b!3611843 (= (toValue!7928 (transformation!5644 anOtherTypeRule!33)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293508) tb!207125))

(declare-fun result!252414 () Bool)

(assert (= result!252414 result!252410))

(assert (=> d!1063541 t!293508))

(declare-fun b_and!263575 () Bool)

(assert (= b_and!263519 (and (=> t!293508 result!252414) b_and!263575)))

(declare-fun t!293510 () Bool)

(declare-fun tb!207127 () Bool)

(assert (=> (and b!3611882 (= (toValue!7928 (transformation!5644 rule!403)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293510) tb!207127))

(declare-fun result!252416 () Bool)

(assert (= result!252416 result!252410))

(assert (=> d!1063541 t!293510))

(declare-fun b_and!263577 () Bool)

(assert (= b_and!263521 (and (=> t!293510 result!252416) b_and!263577)))

(declare-fun b_lambda!106889 () Bool)

(assert (=> (not b_lambda!106889) (not d!1063541)))

(declare-fun t!293512 () Bool)

(declare-fun tb!207129 () Bool)

(assert (=> (and b!3611862 (= (toValue!7928 (transformation!5644 (h!43443 rules!3307))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293512) tb!207129))

(declare-fun result!252418 () Bool)

(assert (=> tb!207129 (= result!252418 (inv!21 (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090))))))))

(declare-fun m!4110479 () Bool)

(assert (=> tb!207129 m!4110479))

(assert (=> d!1063541 t!293512))

(declare-fun b_and!263579 () Bool)

(assert (= b_and!263571 (and (=> t!293512 result!252418) b_and!263579)))

(declare-fun t!293514 () Bool)

(declare-fun tb!207131 () Bool)

(assert (=> (and b!3611853 (= (toValue!7928 (transformation!5644 (rule!8396 token!511))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293514) tb!207131))

(declare-fun result!252420 () Bool)

(assert (= result!252420 result!252418))

(assert (=> d!1063541 t!293514))

(declare-fun b_and!263581 () Bool)

(assert (= b_and!263573 (and (=> t!293514 result!252420) b_and!263581)))

(declare-fun tb!207133 () Bool)

(declare-fun t!293516 () Bool)

(assert (=> (and b!3611843 (= (toValue!7928 (transformation!5644 anOtherTypeRule!33)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293516) tb!207133))

(declare-fun result!252422 () Bool)

(assert (= result!252422 result!252418))

(assert (=> d!1063541 t!293516))

(declare-fun b_and!263583 () Bool)

(assert (= b_and!263575 (and (=> t!293516 result!252422) b_and!263583)))

(declare-fun t!293518 () Bool)

(declare-fun tb!207135 () Bool)

(assert (=> (and b!3611882 (= (toValue!7928 (transformation!5644 rule!403)) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293518) tb!207135))

(declare-fun result!252424 () Bool)

(assert (= result!252424 result!252418))

(assert (=> d!1063541 t!293518))

(declare-fun b_and!263585 () Bool)

(assert (= b_and!263577 (and (=> t!293518 result!252424) b_and!263585)))

(declare-fun m!4110481 () Bool)

(assert (=> d!1063541 m!4110481))

(assert (=> d!1063541 m!4109719))

(declare-fun m!4110483 () Bool)

(assert (=> d!1063541 m!4110483))

(assert (=> d!1063541 m!4109719))

(declare-fun m!4110487 () Bool)

(assert (=> d!1063541 m!4110487))

(assert (=> d!1063541 m!4109719))

(declare-fun m!4110491 () Bool)

(assert (=> d!1063541 m!4110491))

(assert (=> d!1063541 m!4109765))

(assert (=> b!3611857 d!1063541))

(declare-fun d!1063591 () Bool)

(assert (=> d!1063591 (= (seqFromList!4197 (originalCharacters!6358 (_1!22090 lt!1244090))) (fromListB!1939 (originalCharacters!6358 (_1!22090 lt!1244090))))))

(declare-fun bs!570917 () Bool)

(assert (= bs!570917 d!1063591))

(declare-fun m!4110495 () Bool)

(assert (=> bs!570917 m!4110495))

(assert (=> b!3611857 d!1063591))

(declare-fun b!3612375 () Bool)

(declare-fun e!2235708 () Bool)

(assert (=> b!3612375 (= e!2235708 true)))

(declare-fun d!1063595 () Bool)

(assert (=> d!1063595 e!2235708))

(assert (= d!1063595 b!3612375))

(declare-fun lambda!124077 () Int)

(declare-fun order!20785 () Int)

(declare-fun dynLambda!16457 (Int Int) Int)

(assert (=> b!3612375 (< (dynLambda!16454 order!20779 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) (dynLambda!16457 order!20785 lambda!124077))))

(assert (=> b!3612375 (< (dynLambda!16456 order!20783 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) (dynLambda!16457 order!20785 lambda!124077))))

(assert (=> d!1063595 (= (list!14024 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069))) (list!14024 lt!1244069))))

(declare-fun lt!1244331 () Unit!54264)

(declare-fun ForallOf!660 (Int BalanceConc!22788) Unit!54264)

(assert (=> d!1063595 (= lt!1244331 (ForallOf!660 lambda!124077 lt!1244069))))

(assert (=> d!1063595 (= (lemmaSemiInverse!1401 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069) lt!1244331)))

(declare-fun b_lambda!106891 () Bool)

(assert (=> (not b_lambda!106891) (not d!1063595)))

(declare-fun tb!207137 () Bool)

(declare-fun t!293520 () Bool)

(assert (=> (and b!3611862 (= (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293520) tb!207137))

(declare-fun tp!1104050 () Bool)

(declare-fun e!2235709 () Bool)

(declare-fun b!3612376 () Bool)

(assert (=> b!3612376 (= e!2235709 (and (inv!51403 (c!624869 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069)))) tp!1104050))))

(declare-fun result!252426 () Bool)

(assert (=> tb!207137 (= result!252426 (and (inv!51404 (dynLambda!16447 (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069))) e!2235709))))

(assert (= tb!207137 b!3612376))

(declare-fun m!4110509 () Bool)

(assert (=> b!3612376 m!4110509))

(declare-fun m!4110511 () Bool)

(assert (=> tb!207137 m!4110511))

(assert (=> d!1063595 t!293520))

(declare-fun b_and!263587 () Bool)

(assert (= b_and!263499 (and (=> t!293520 result!252426) b_and!263587)))

(declare-fun tb!207139 () Bool)

(declare-fun t!293522 () Bool)

(assert (=> (and b!3611853 (= (toChars!7787 (transformation!5644 (rule!8396 token!511))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293522) tb!207139))

(declare-fun result!252428 () Bool)

(assert (= result!252428 result!252426))

(assert (=> d!1063595 t!293522))

(declare-fun b_and!263589 () Bool)

(assert (= b_and!263501 (and (=> t!293522 result!252428) b_and!263589)))

(declare-fun t!293524 () Bool)

(declare-fun tb!207141 () Bool)

(assert (=> (and b!3611843 (= (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293524) tb!207141))

(declare-fun result!252430 () Bool)

(assert (= result!252430 result!252426))

(assert (=> d!1063595 t!293524))

(declare-fun b_and!263591 () Bool)

(assert (= b_and!263503 (and (=> t!293524 result!252430) b_and!263591)))

(declare-fun t!293526 () Bool)

(declare-fun tb!207143 () Bool)

(assert (=> (and b!3611882 (= (toChars!7787 (transformation!5644 rule!403)) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293526) tb!207143))

(declare-fun result!252432 () Bool)

(assert (= result!252432 result!252426))

(assert (=> d!1063595 t!293526))

(declare-fun b_and!263593 () Bool)

(assert (= b_and!263505 (and (=> t!293526 result!252432) b_and!263593)))

(declare-fun b_lambda!106893 () Bool)

(assert (=> (not b_lambda!106893) (not d!1063595)))

(assert (=> d!1063595 t!293504))

(declare-fun b_and!263595 () Bool)

(assert (= b_and!263579 (and (=> t!293504 result!252410) b_and!263595)))

(assert (=> d!1063595 t!293506))

(declare-fun b_and!263597 () Bool)

(assert (= b_and!263581 (and (=> t!293506 result!252412) b_and!263597)))

(assert (=> d!1063595 t!293508))

(declare-fun b_and!263599 () Bool)

(assert (= b_and!263583 (and (=> t!293508 result!252414) b_and!263599)))

(assert (=> d!1063595 t!293510))

(declare-fun b_and!263601 () Bool)

(assert (= b_and!263585 (and (=> t!293510 result!252416) b_and!263601)))

(assert (=> d!1063595 m!4109765))

(assert (=> d!1063595 m!4110481))

(declare-fun m!4110513 () Bool)

(assert (=> d!1063595 m!4110513))

(declare-fun m!4110515 () Bool)

(assert (=> d!1063595 m!4110515))

(assert (=> d!1063595 m!4110513))

(declare-fun m!4110517 () Bool)

(assert (=> d!1063595 m!4110517))

(assert (=> d!1063595 m!4110481))

(assert (=> b!3611857 d!1063595))

(declare-fun d!1063605 () Bool)

(assert (=> d!1063605 (= (apply!9150 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244069) (dynLambda!16453 (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090)))) lt!1244069))))

(declare-fun b_lambda!106895 () Bool)

(assert (=> (not b_lambda!106895) (not d!1063605)))

(assert (=> d!1063605 t!293504))

(declare-fun b_and!263603 () Bool)

(assert (= b_and!263595 (and (=> t!293504 result!252410) b_and!263603)))

(assert (=> d!1063605 t!293506))

(declare-fun b_and!263605 () Bool)

(assert (= b_and!263597 (and (=> t!293506 result!252412) b_and!263605)))

(assert (=> d!1063605 t!293508))

(declare-fun b_and!263607 () Bool)

(assert (= b_and!263599 (and (=> t!293508 result!252414) b_and!263607)))

(assert (=> d!1063605 t!293510))

(declare-fun b_and!263609 () Bool)

(assert (= b_and!263601 (and (=> t!293510 result!252416) b_and!263609)))

(assert (=> d!1063605 m!4110481))

(assert (=> b!3611857 d!1063605))

(declare-fun b!3612377 () Bool)

(declare-fun e!2235710 () List!38146)

(assert (=> b!3612377 (= e!2235710 (Cons!38022 (c!624868 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) Nil!38022))))

(declare-fun bm!261176 () Bool)

(declare-fun call!261183 () List!38146)

(declare-fun call!261181 () List!38146)

(assert (=> bm!261176 (= call!261183 call!261181)))

(declare-fun b!3612378 () Bool)

(declare-fun e!2235713 () List!38146)

(assert (=> b!3612378 (= e!2235713 Nil!38022)))

(declare-fun b!3612379 () Bool)

(declare-fun e!2235711 () List!38146)

(assert (=> b!3612379 (= e!2235711 call!261181)))

(declare-fun d!1063607 () Bool)

(declare-fun c!624974 () Bool)

(assert (=> d!1063607 (= c!624974 (or ((_ is EmptyExpr!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) ((_ is EmptyLang!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))))

(assert (=> d!1063607 (= (usedCharacters!858 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) e!2235713)))

(declare-fun b!3612380 () Bool)

(declare-fun e!2235712 () List!38146)

(assert (=> b!3612380 (= e!2235711 e!2235712)))

(declare-fun c!624973 () Bool)

(assert (=> b!3612380 (= c!624973 ((_ is Union!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3612381 () Bool)

(declare-fun call!261184 () List!38146)

(assert (=> b!3612381 (= e!2235712 call!261184)))

(declare-fun b!3612382 () Bool)

(assert (=> b!3612382 (= e!2235713 e!2235710)))

(declare-fun c!624971 () Bool)

(assert (=> b!3612382 (= c!624971 ((_ is ElementMatch!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3612383 () Bool)

(declare-fun c!624972 () Bool)

(assert (=> b!3612383 (= c!624972 ((_ is Star!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(assert (=> b!3612383 (= e!2235710 e!2235711)))

(declare-fun b!3612384 () Bool)

(assert (=> b!3612384 (= e!2235712 call!261184)))

(declare-fun bm!261177 () Bool)

(assert (=> bm!261177 (= call!261181 (usedCharacters!858 (ite c!624972 (reg!10732 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) (ite c!624973 (regOne!21319 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) (regTwo!21318 (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))))))

(declare-fun bm!261178 () Bool)

(declare-fun call!261182 () List!38146)

(assert (=> bm!261178 (= call!261182 (usedCharacters!858 (ite c!624973 (regTwo!21319 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))) (regOne!21318 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))))

(declare-fun bm!261179 () Bool)

(assert (=> bm!261179 (= call!261184 (++!9460 (ite c!624973 call!261183 call!261182) (ite c!624973 call!261182 call!261183)))))

(assert (= (and d!1063607 c!624974) b!3612378))

(assert (= (and d!1063607 (not c!624974)) b!3612382))

(assert (= (and b!3612382 c!624971) b!3612377))

(assert (= (and b!3612382 (not c!624971)) b!3612383))

(assert (= (and b!3612383 c!624972) b!3612379))

(assert (= (and b!3612383 (not c!624972)) b!3612380))

(assert (= (and b!3612380 c!624973) b!3612384))

(assert (= (and b!3612380 (not c!624973)) b!3612381))

(assert (= (or b!3612384 b!3612381) bm!261176))

(assert (= (or b!3612384 b!3612381) bm!261178))

(assert (= (or b!3612384 b!3612381) bm!261179))

(assert (= (or b!3612379 bm!261176) bm!261177))

(declare-fun m!4110519 () Bool)

(assert (=> bm!261177 m!4110519))

(declare-fun m!4110521 () Bool)

(assert (=> bm!261178 m!4110521))

(declare-fun m!4110523 () Bool)

(assert (=> bm!261179 m!4110523))

(assert (=> bm!261129 d!1063607))

(assert (=> b!3611877 d!1063441))

(declare-fun b!3612395 () Bool)

(declare-fun e!2235722 () Bool)

(assert (=> b!3612395 (= e!2235722 (isPrefix!3007 (tail!5599 lt!1244079) (tail!5599 (++!9460 lt!1244079 (_2!22090 lt!1244090)))))))

(declare-fun b!3612396 () Bool)

(declare-fun e!2235721 () Bool)

(assert (=> b!3612396 (= e!2235721 (>= (size!28992 (++!9460 lt!1244079 (_2!22090 lt!1244090))) (size!28992 lt!1244079)))))

(declare-fun d!1063609 () Bool)

(assert (=> d!1063609 e!2235721))

(declare-fun res!1461366 () Bool)

(assert (=> d!1063609 (=> res!1461366 e!2235721)))

(declare-fun lt!1244334 () Bool)

(assert (=> d!1063609 (= res!1461366 (not lt!1244334))))

(declare-fun e!2235720 () Bool)

(assert (=> d!1063609 (= lt!1244334 e!2235720)))

(declare-fun res!1461367 () Bool)

(assert (=> d!1063609 (=> res!1461367 e!2235720)))

(assert (=> d!1063609 (= res!1461367 ((_ is Nil!38022) lt!1244079))))

(assert (=> d!1063609 (= (isPrefix!3007 lt!1244079 (++!9460 lt!1244079 (_2!22090 lt!1244090))) lt!1244334)))

(declare-fun b!3612393 () Bool)

(assert (=> b!3612393 (= e!2235720 e!2235722)))

(declare-fun res!1461365 () Bool)

(assert (=> b!3612393 (=> (not res!1461365) (not e!2235722))))

(assert (=> b!3612393 (= res!1461365 (not ((_ is Nil!38022) (++!9460 lt!1244079 (_2!22090 lt!1244090)))))))

(declare-fun b!3612394 () Bool)

(declare-fun res!1461364 () Bool)

(assert (=> b!3612394 (=> (not res!1461364) (not e!2235722))))

(assert (=> b!3612394 (= res!1461364 (= (head!7604 lt!1244079) (head!7604 (++!9460 lt!1244079 (_2!22090 lt!1244090)))))))

(assert (= (and d!1063609 (not res!1461367)) b!3612393))

(assert (= (and b!3612393 res!1461365) b!3612394))

(assert (= (and b!3612394 res!1461364) b!3612395))

(assert (= (and d!1063609 (not res!1461366)) b!3612396))

(declare-fun m!4110525 () Bool)

(assert (=> b!3612395 m!4110525))

(assert (=> b!3612395 m!4109757))

(declare-fun m!4110527 () Bool)

(assert (=> b!3612395 m!4110527))

(assert (=> b!3612395 m!4110525))

(assert (=> b!3612395 m!4110527))

(declare-fun m!4110529 () Bool)

(assert (=> b!3612395 m!4110529))

(assert (=> b!3612396 m!4109757))

(declare-fun m!4110531 () Bool)

(assert (=> b!3612396 m!4110531))

(assert (=> b!3612396 m!4109699))

(assert (=> b!3612394 m!4109735))

(assert (=> b!3612394 m!4109757))

(declare-fun m!4110533 () Bool)

(assert (=> b!3612394 m!4110533))

(assert (=> b!3611877 d!1063609))

(declare-fun d!1063611 () Bool)

(declare-fun e!2235725 () Bool)

(assert (=> d!1063611 e!2235725))

(declare-fun res!1461372 () Bool)

(assert (=> d!1063611 (=> (not res!1461372) (not e!2235725))))

(assert (=> d!1063611 (= res!1461372 (isDefined!6150 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 (_1!22090 lt!1244090))))))))

(declare-fun lt!1244337 () Unit!54264)

(declare-fun choose!21132 (LexerInterface!5233 List!38147 List!38146 Token!10654) Unit!54264)

(assert (=> d!1063611 (= lt!1244337 (choose!21132 thiss!23823 rules!3307 lt!1244062 (_1!22090 lt!1244090)))))

(assert (=> d!1063611 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063611 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1250 thiss!23823 rules!3307 lt!1244062 (_1!22090 lt!1244090)) lt!1244337)))

(declare-fun b!3612401 () Bool)

(declare-fun res!1461373 () Bool)

(assert (=> b!3612401 (=> (not res!1461373) (not e!2235725))))

(assert (=> b!3612401 (= res!1461373 (matchR!4972 (regex!5644 (get!12350 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))) (list!14024 (charsOf!3658 (_1!22090 lt!1244090)))))))

(declare-fun b!3612402 () Bool)

(assert (=> b!3612402 (= e!2235725 (= (rule!8396 (_1!22090 lt!1244090)) (get!12350 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))))))

(assert (= (and d!1063611 res!1461372) b!3612401))

(assert (= (and b!3612401 res!1461373) b!3612402))

(assert (=> d!1063611 m!4109783))

(assert (=> d!1063611 m!4109783))

(declare-fun m!4110535 () Bool)

(assert (=> d!1063611 m!4110535))

(declare-fun m!4110537 () Bool)

(assert (=> d!1063611 m!4110537))

(assert (=> d!1063611 m!4109785))

(assert (=> b!3612401 m!4109835))

(declare-fun m!4110539 () Bool)

(assert (=> b!3612401 m!4110539))

(assert (=> b!3612401 m!4109755))

(assert (=> b!3612401 m!4109755))

(assert (=> b!3612401 m!4109835))

(assert (=> b!3612401 m!4109783))

(assert (=> b!3612401 m!4109783))

(declare-fun m!4110541 () Bool)

(assert (=> b!3612401 m!4110541))

(assert (=> b!3612402 m!4109783))

(assert (=> b!3612402 m!4109783))

(assert (=> b!3612402 m!4110541))

(assert (=> b!3611877 d!1063611))

(declare-fun b!3612524 () Bool)

(declare-fun res!1461417 () Bool)

(declare-fun e!2235788 () Bool)

(assert (=> b!3612524 (=> (not res!1461417) (not e!2235788))))

(declare-fun lt!1244409 () Token!10654)

(assert (=> b!3612524 (= res!1461417 (matchR!4972 (regex!5644 (get!12350 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 lt!1244409))))) (list!14024 (charsOf!3658 lt!1244409))))))

(declare-fun d!1063613 () Bool)

(assert (=> d!1063613 (isDefined!6151 (maxPrefix!2767 thiss!23823 rules!3307 (++!9460 lt!1244074 suffix!1395)))))

(declare-fun lt!1244423 () Unit!54264)

(declare-fun e!2235789 () Unit!54264)

(assert (=> d!1063613 (= lt!1244423 e!2235789)))

(declare-fun c!624994 () Bool)

(assert (=> d!1063613 (= c!624994 (isEmpty!22458 (maxPrefix!2767 thiss!23823 rules!3307 (++!9460 lt!1244074 suffix!1395))))))

(declare-fun lt!1244419 () Unit!54264)

(declare-fun lt!1244420 () Unit!54264)

(assert (=> d!1063613 (= lt!1244419 lt!1244420)))

(assert (=> d!1063613 e!2235788))

(declare-fun res!1461416 () Bool)

(assert (=> d!1063613 (=> (not res!1461416) (not e!2235788))))

(assert (=> d!1063613 (= res!1461416 (isDefined!6150 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 lt!1244409)))))))

(assert (=> d!1063613 (= lt!1244420 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1250 thiss!23823 rules!3307 lt!1244074 lt!1244409))))

(declare-fun lt!1244410 () Unit!54264)

(declare-fun lt!1244414 () Unit!54264)

(assert (=> d!1063613 (= lt!1244410 lt!1244414)))

(declare-fun lt!1244412 () List!38146)

(assert (=> d!1063613 (isPrefix!3007 lt!1244412 (++!9460 lt!1244074 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!452 (List!38146 List!38146 List!38146) Unit!54264)

(assert (=> d!1063613 (= lt!1244414 (lemmaPrefixStaysPrefixWhenAddingToSuffix!452 lt!1244412 lt!1244074 suffix!1395))))

(assert (=> d!1063613 (= lt!1244412 (list!14024 (charsOf!3658 lt!1244409)))))

(declare-fun lt!1244413 () Unit!54264)

(declare-fun lt!1244417 () Unit!54264)

(assert (=> d!1063613 (= lt!1244413 lt!1244417)))

(declare-fun lt!1244416 () List!38146)

(declare-fun lt!1244411 () List!38146)

(assert (=> d!1063613 (isPrefix!3007 lt!1244416 (++!9460 lt!1244416 lt!1244411))))

(assert (=> d!1063613 (= lt!1244417 (lemmaConcatTwoListThenFirstIsPrefix!1928 lt!1244416 lt!1244411))))

(assert (=> d!1063613 (= lt!1244411 (_2!22090 (get!12351 (maxPrefix!2767 thiss!23823 rules!3307 lt!1244074))))))

(assert (=> d!1063613 (= lt!1244416 (list!14024 (charsOf!3658 lt!1244409)))))

(declare-datatypes ((List!38150 0))(
  ( (Nil!38026) (Cons!38026 (h!43446 Token!10654) (t!293561 List!38150)) )
))
(declare-fun head!7606 (List!38150) Token!10654)

(declare-datatypes ((IArray!23183 0))(
  ( (IArray!23184 (innerList!11649 List!38150)) )
))
(declare-datatypes ((Conc!11589 0))(
  ( (Node!11589 (left!29709 Conc!11589) (right!30039 Conc!11589) (csize!23408 Int) (cheight!11800 Int)) (Leaf!18022 (xs!14791 IArray!23183) (csize!23409 Int)) (Empty!11589) )
))
(declare-datatypes ((BalanceConc!22792 0))(
  ( (BalanceConc!22793 (c!625013 Conc!11589)) )
))
(declare-fun list!14028 (BalanceConc!22792) List!38150)

(declare-datatypes ((tuple2!37920 0))(
  ( (tuple2!37921 (_1!22094 BalanceConc!22792) (_2!22094 BalanceConc!22788)) )
))
(declare-fun lex!2484 (LexerInterface!5233 List!38147 BalanceConc!22788) tuple2!37920)

(assert (=> d!1063613 (= lt!1244409 (head!7606 (list!14028 (_1!22094 (lex!2484 thiss!23823 rules!3307 (seqFromList!4197 lt!1244074))))))))

(assert (=> d!1063613 (not (isEmpty!22455 rules!3307))))

(assert (=> d!1063613 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!913 thiss!23823 rules!3307 lt!1244074 suffix!1395) lt!1244423)))

(declare-fun b!3612527 () Bool)

(declare-fun Unit!54282 () Unit!54264)

(assert (=> b!3612527 (= e!2235789 Unit!54282)))

(declare-fun b!3612526 () Bool)

(declare-fun Unit!54283 () Unit!54264)

(assert (=> b!3612526 (= e!2235789 Unit!54283)))

(declare-fun lt!1244421 () List!38146)

(assert (=> b!3612526 (= lt!1244421 (++!9460 lt!1244074 suffix!1395))))

(declare-fun lt!1244424 () Unit!54264)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!488 (LexerInterface!5233 Rule!11088 List!38147 List!38146) Unit!54264)

(assert (=> b!3612526 (= lt!1244424 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!488 thiss!23823 (rule!8396 lt!1244409) rules!3307 lt!1244421))))

(assert (=> b!3612526 (isEmpty!22458 (maxPrefixOneRule!1911 thiss!23823 (rule!8396 lt!1244409) lt!1244421))))

(declare-fun lt!1244408 () Unit!54264)

(assert (=> b!3612526 (= lt!1244408 lt!1244424)))

(declare-fun lt!1244422 () List!38146)

(assert (=> b!3612526 (= lt!1244422 (list!14024 (charsOf!3658 lt!1244409)))))

(declare-fun lt!1244418 () Unit!54264)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!476 (LexerInterface!5233 Rule!11088 List!38146 List!38146) Unit!54264)

(assert (=> b!3612526 (= lt!1244418 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!476 thiss!23823 (rule!8396 lt!1244409) lt!1244422 (++!9460 lt!1244074 suffix!1395)))))

(assert (=> b!3612526 (not (matchR!4972 (regex!5644 (rule!8396 lt!1244409)) lt!1244422))))

(declare-fun lt!1244415 () Unit!54264)

(assert (=> b!3612526 (= lt!1244415 lt!1244418)))

(assert (=> b!3612526 false))

(declare-fun b!3612525 () Bool)

(assert (=> b!3612525 (= e!2235788 (= (rule!8396 lt!1244409) (get!12350 (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 lt!1244409))))))))

(assert (= (and d!1063613 res!1461416) b!3612524))

(assert (= (and b!3612524 res!1461417) b!3612525))

(assert (= (and d!1063613 c!624994) b!3612526))

(assert (= (and d!1063613 (not c!624994)) b!3612527))

(declare-fun m!4110639 () Bool)

(assert (=> b!3612524 m!4110639))

(declare-fun m!4110641 () Bool)

(assert (=> b!3612524 m!4110641))

(declare-fun m!4110643 () Bool)

(assert (=> b!3612524 m!4110643))

(assert (=> b!3612524 m!4110639))

(declare-fun m!4110645 () Bool)

(assert (=> b!3612524 m!4110645))

(declare-fun m!4110647 () Bool)

(assert (=> b!3612524 m!4110647))

(assert (=> b!3612524 m!4110647))

(assert (=> b!3612524 m!4110641))

(assert (=> d!1063613 m!4109775))

(assert (=> d!1063613 m!4109775))

(declare-fun m!4110649 () Bool)

(assert (=> d!1063613 m!4110649))

(assert (=> d!1063613 m!4110639))

(assert (=> d!1063613 m!4110639))

(declare-fun m!4110651 () Bool)

(assert (=> d!1063613 m!4110651))

(declare-fun m!4110653 () Bool)

(assert (=> d!1063613 m!4110653))

(declare-fun m!4110655 () Bool)

(assert (=> d!1063613 m!4110655))

(declare-fun m!4110657 () Bool)

(assert (=> d!1063613 m!4110657))

(assert (=> d!1063613 m!4110649))

(declare-fun m!4110659 () Bool)

(assert (=> d!1063613 m!4110659))

(assert (=> d!1063613 m!4109825))

(declare-fun m!4110661 () Bool)

(assert (=> d!1063613 m!4110661))

(assert (=> d!1063613 m!4109775))

(declare-fun m!4110663 () Bool)

(assert (=> d!1063613 m!4110663))

(declare-fun m!4110665 () Bool)

(assert (=> d!1063613 m!4110665))

(assert (=> d!1063613 m!4110647))

(assert (=> d!1063613 m!4109825))

(declare-fun m!4110667 () Bool)

(assert (=> d!1063613 m!4110667))

(assert (=> d!1063613 m!4110653))

(declare-fun m!4110669 () Bool)

(assert (=> d!1063613 m!4110669))

(declare-fun m!4110671 () Bool)

(assert (=> d!1063613 m!4110671))

(declare-fun m!4110673 () Bool)

(assert (=> d!1063613 m!4110673))

(assert (=> d!1063613 m!4110649))

(declare-fun m!4110675 () Bool)

(assert (=> d!1063613 m!4110675))

(assert (=> d!1063613 m!4109749))

(assert (=> d!1063613 m!4110671))

(assert (=> d!1063613 m!4110647))

(assert (=> d!1063613 m!4110641))

(assert (=> d!1063613 m!4110661))

(declare-fun m!4110677 () Bool)

(assert (=> d!1063613 m!4110677))

(declare-fun m!4110679 () Bool)

(assert (=> b!3612526 m!4110679))

(assert (=> b!3612526 m!4109775))

(declare-fun m!4110681 () Bool)

(assert (=> b!3612526 m!4110681))

(declare-fun m!4110683 () Bool)

(assert (=> b!3612526 m!4110683))

(assert (=> b!3612526 m!4110647))

(declare-fun m!4110685 () Bool)

(assert (=> b!3612526 m!4110685))

(assert (=> b!3612526 m!4110647))

(assert (=> b!3612526 m!4110641))

(assert (=> b!3612526 m!4110679))

(declare-fun m!4110687 () Bool)

(assert (=> b!3612526 m!4110687))

(assert (=> b!3612526 m!4109775))

(assert (=> b!3612525 m!4110639))

(assert (=> b!3612525 m!4110639))

(assert (=> b!3612525 m!4110645))

(assert (=> b!3611877 d!1063613))

(declare-fun d!1063649 () Bool)

(assert (=> d!1063649 (= (get!12351 lt!1244051) (v!37663 lt!1244051))))

(assert (=> b!3611877 d!1063649))

(declare-fun b!3612537 () Bool)

(declare-fun e!2235794 () List!38146)

(assert (=> b!3612537 (= e!2235794 (Cons!38022 (h!43442 lt!1244079) (++!9460 (t!293437 lt!1244079) (_2!22090 lt!1244090))))))

(declare-fun e!2235795 () Bool)

(declare-fun lt!1244427 () List!38146)

(declare-fun b!3612539 () Bool)

(assert (=> b!3612539 (= e!2235795 (or (not (= (_2!22090 lt!1244090) Nil!38022)) (= lt!1244427 lt!1244079)))))

(declare-fun d!1063651 () Bool)

(assert (=> d!1063651 e!2235795))

(declare-fun res!1461423 () Bool)

(assert (=> d!1063651 (=> (not res!1461423) (not e!2235795))))

(assert (=> d!1063651 (= res!1461423 (= (content!5440 lt!1244427) ((_ map or) (content!5440 lt!1244079) (content!5440 (_2!22090 lt!1244090)))))))

(assert (=> d!1063651 (= lt!1244427 e!2235794)))

(declare-fun c!624997 () Bool)

(assert (=> d!1063651 (= c!624997 ((_ is Nil!38022) lt!1244079))))

(assert (=> d!1063651 (= (++!9460 lt!1244079 (_2!22090 lt!1244090)) lt!1244427)))

(declare-fun b!3612538 () Bool)

(declare-fun res!1461422 () Bool)

(assert (=> b!3612538 (=> (not res!1461422) (not e!2235795))))

(assert (=> b!3612538 (= res!1461422 (= (size!28992 lt!1244427) (+ (size!28992 lt!1244079) (size!28992 (_2!22090 lt!1244090)))))))

(declare-fun b!3612536 () Bool)

(assert (=> b!3612536 (= e!2235794 (_2!22090 lt!1244090))))

(assert (= (and d!1063651 c!624997) b!3612536))

(assert (= (and d!1063651 (not c!624997)) b!3612537))

(assert (= (and d!1063651 res!1461423) b!3612538))

(assert (= (and b!3612538 res!1461422) b!3612539))

(declare-fun m!4110689 () Bool)

(assert (=> b!3612537 m!4110689))

(declare-fun m!4110691 () Bool)

(assert (=> d!1063651 m!4110691))

(assert (=> d!1063651 m!4109925))

(declare-fun m!4110693 () Bool)

(assert (=> d!1063651 m!4110693))

(declare-fun m!4110695 () Bool)

(assert (=> b!3612538 m!4110695))

(assert (=> b!3612538 m!4109699))

(declare-fun m!4110697 () Bool)

(assert (=> b!3612538 m!4110697))

(assert (=> b!3611877 d!1063651))

(declare-fun d!1063653 () Bool)

(assert (=> d!1063653 (= (list!14024 lt!1244069) (list!14027 (c!624869 lt!1244069)))))

(declare-fun bs!570925 () Bool)

(assert (= bs!570925 d!1063653))

(declare-fun m!4110699 () Bool)

(assert (=> bs!570925 m!4110699))

(assert (=> b!3611877 d!1063653))

(declare-fun b!3612542 () Bool)

(declare-fun e!2235798 () Bool)

(assert (=> b!3612542 (= e!2235798 (isPrefix!3007 (tail!5599 lt!1244074) (tail!5599 lt!1244062)))))

(declare-fun b!3612543 () Bool)

(declare-fun e!2235797 () Bool)

(assert (=> b!3612543 (= e!2235797 (>= (size!28992 lt!1244062) (size!28992 lt!1244074)))))

(declare-fun d!1063655 () Bool)

(assert (=> d!1063655 e!2235797))

(declare-fun res!1461426 () Bool)

(assert (=> d!1063655 (=> res!1461426 e!2235797)))

(declare-fun lt!1244428 () Bool)

(assert (=> d!1063655 (= res!1461426 (not lt!1244428))))

(declare-fun e!2235796 () Bool)

(assert (=> d!1063655 (= lt!1244428 e!2235796)))

(declare-fun res!1461427 () Bool)

(assert (=> d!1063655 (=> res!1461427 e!2235796)))

(assert (=> d!1063655 (= res!1461427 ((_ is Nil!38022) lt!1244074))))

(assert (=> d!1063655 (= (isPrefix!3007 lt!1244074 lt!1244062) lt!1244428)))

(declare-fun b!3612540 () Bool)

(assert (=> b!3612540 (= e!2235796 e!2235798)))

(declare-fun res!1461425 () Bool)

(assert (=> b!3612540 (=> (not res!1461425) (not e!2235798))))

(assert (=> b!3612540 (= res!1461425 (not ((_ is Nil!38022) lt!1244062)))))

(declare-fun b!3612541 () Bool)

(declare-fun res!1461424 () Bool)

(assert (=> b!3612541 (=> (not res!1461424) (not e!2235798))))

(assert (=> b!3612541 (= res!1461424 (= (head!7604 lt!1244074) (head!7604 lt!1244062)))))

(assert (= (and d!1063655 (not res!1461427)) b!3612540))

(assert (= (and b!3612540 res!1461425) b!3612541))

(assert (= (and b!3612541 res!1461424) b!3612542))

(assert (= (and d!1063655 (not res!1461426)) b!3612543))

(declare-fun m!4110701 () Bool)

(assert (=> b!3612542 m!4110701))

(assert (=> b!3612542 m!4110317))

(assert (=> b!3612542 m!4110701))

(assert (=> b!3612542 m!4110317))

(declare-fun m!4110703 () Bool)

(assert (=> b!3612542 m!4110703))

(assert (=> b!3612543 m!4110263))

(assert (=> b!3612543 m!4110095))

(declare-fun m!4110705 () Bool)

(assert (=> b!3612541 m!4110705))

(declare-fun m!4110707 () Bool)

(assert (=> b!3612541 m!4110707))

(assert (=> b!3611877 d!1063655))

(declare-fun d!1063657 () Bool)

(assert (=> d!1063657 (isPrefix!3007 lt!1244079 (++!9460 lt!1244079 (_2!22090 lt!1244090)))))

(declare-fun lt!1244431 () Unit!54264)

(declare-fun choose!21136 (List!38146 List!38146) Unit!54264)

(assert (=> d!1063657 (= lt!1244431 (choose!21136 lt!1244079 (_2!22090 lt!1244090)))))

(assert (=> d!1063657 (= (lemmaConcatTwoListThenFirstIsPrefix!1928 lt!1244079 (_2!22090 lt!1244090)) lt!1244431)))

(declare-fun bs!570926 () Bool)

(assert (= bs!570926 d!1063657))

(assert (=> bs!570926 m!4109757))

(assert (=> bs!570926 m!4109757))

(assert (=> bs!570926 m!4109759))

(declare-fun m!4110709 () Bool)

(assert (=> bs!570926 m!4110709))

(assert (=> b!3611877 d!1063657))

(declare-fun d!1063659 () Bool)

(declare-fun isEmpty!22459 (Option!7919) Bool)

(assert (=> d!1063659 (= (isDefined!6150 lt!1244061) (not (isEmpty!22459 lt!1244061)))))

(declare-fun bs!570927 () Bool)

(assert (= bs!570927 d!1063659))

(declare-fun m!4110711 () Bool)

(assert (=> bs!570927 m!4110711))

(assert (=> b!3611877 d!1063659))

(declare-fun d!1063661 () Bool)

(assert (=> d!1063661 (isPrefix!3007 lt!1244074 (++!9460 lt!1244074 suffix!1395))))

(declare-fun lt!1244432 () Unit!54264)

(assert (=> d!1063661 (= lt!1244432 (choose!21136 lt!1244074 suffix!1395))))

(assert (=> d!1063661 (= (lemmaConcatTwoListThenFirstIsPrefix!1928 lt!1244074 suffix!1395) lt!1244432)))

(declare-fun bs!570928 () Bool)

(assert (= bs!570928 d!1063661))

(assert (=> bs!570928 m!4109775))

(assert (=> bs!570928 m!4109775))

(declare-fun m!4110713 () Bool)

(assert (=> bs!570928 m!4110713))

(declare-fun m!4110715 () Bool)

(assert (=> bs!570928 m!4110715))

(assert (=> b!3611877 d!1063661))

(declare-fun b!3612556 () Bool)

(declare-fun e!2235810 () Bool)

(declare-fun lt!1244440 () Option!7919)

(assert (=> b!3612556 (= e!2235810 (= (tag!6352 (get!12350 lt!1244440)) (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3612558 () Bool)

(declare-fun e!2235809 () Bool)

(assert (=> b!3612558 (= e!2235809 e!2235810)))

(declare-fun res!1461432 () Bool)

(assert (=> b!3612558 (=> (not res!1461432) (not e!2235810))))

(assert (=> b!3612558 (= res!1461432 (contains!7352 rules!3307 (get!12350 lt!1244440)))))

(declare-fun b!3612559 () Bool)

(declare-fun e!2235807 () Option!7919)

(assert (=> b!3612559 (= e!2235807 None!7918)))

(declare-fun b!3612560 () Bool)

(declare-fun e!2235808 () Option!7919)

(assert (=> b!3612560 (= e!2235808 (Some!7918 (h!43443 rules!3307)))))

(declare-fun b!3612561 () Bool)

(declare-fun lt!1244441 () Unit!54264)

(declare-fun lt!1244439 () Unit!54264)

(assert (=> b!3612561 (= lt!1244441 lt!1244439)))

(assert (=> b!3612561 (rulesInvariant!4630 thiss!23823 (t!293438 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!531 (LexerInterface!5233 Rule!11088 List!38147) Unit!54264)

(assert (=> b!3612561 (= lt!1244439 (lemmaInvariantOnRulesThenOnTail!531 thiss!23823 (h!43443 rules!3307) (t!293438 rules!3307)))))

(assert (=> b!3612561 (= e!2235807 (getRuleFromTag!1250 thiss!23823 (t!293438 rules!3307) (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun d!1063663 () Bool)

(assert (=> d!1063663 e!2235809))

(declare-fun res!1461433 () Bool)

(assert (=> d!1063663 (=> res!1461433 e!2235809)))

(assert (=> d!1063663 (= res!1461433 (isEmpty!22459 lt!1244440))))

(assert (=> d!1063663 (= lt!1244440 e!2235808)))

(declare-fun c!625002 () Bool)

(assert (=> d!1063663 (= c!625002 (and ((_ is Cons!38023) rules!3307) (= (tag!6352 (h!43443 rules!3307)) (tag!6352 (rule!8396 (_1!22090 lt!1244090))))))))

(assert (=> d!1063663 (rulesInvariant!4630 thiss!23823 rules!3307)))

(assert (=> d!1063663 (= (getRuleFromTag!1250 thiss!23823 rules!3307 (tag!6352 (rule!8396 (_1!22090 lt!1244090)))) lt!1244440)))

(declare-fun b!3612557 () Bool)

(assert (=> b!3612557 (= e!2235808 e!2235807)))

(declare-fun c!625003 () Bool)

(assert (=> b!3612557 (= c!625003 (and ((_ is Cons!38023) rules!3307) (not (= (tag!6352 (h!43443 rules!3307)) (tag!6352 (rule!8396 (_1!22090 lt!1244090)))))))))

(assert (= (and d!1063663 c!625002) b!3612560))

(assert (= (and d!1063663 (not c!625002)) b!3612557))

(assert (= (and b!3612557 c!625003) b!3612561))

(assert (= (and b!3612557 (not c!625003)) b!3612559))

(assert (= (and d!1063663 (not res!1461433)) b!3612558))

(assert (= (and b!3612558 res!1461432) b!3612556))

(declare-fun m!4110717 () Bool)

(assert (=> b!3612556 m!4110717))

(assert (=> b!3612558 m!4110717))

(assert (=> b!3612558 m!4110717))

(declare-fun m!4110719 () Bool)

(assert (=> b!3612558 m!4110719))

(declare-fun m!4110721 () Bool)

(assert (=> b!3612561 m!4110721))

(declare-fun m!4110723 () Bool)

(assert (=> b!3612561 m!4110723))

(declare-fun m!4110725 () Bool)

(assert (=> b!3612561 m!4110725))

(declare-fun m!4110727 () Bool)

(assert (=> d!1063663 m!4110727))

(assert (=> d!1063663 m!4109785))

(assert (=> b!3611877 d!1063663))

(declare-fun b!3612564 () Bool)

(declare-fun e!2235813 () Bool)

(assert (=> b!3612564 (= e!2235813 (isPrefix!3007 (tail!5599 lt!1244079) (tail!5599 lt!1244062)))))

(declare-fun b!3612565 () Bool)

(declare-fun e!2235812 () Bool)

(assert (=> b!3612565 (= e!2235812 (>= (size!28992 lt!1244062) (size!28992 lt!1244079)))))

(declare-fun d!1063665 () Bool)

(assert (=> d!1063665 e!2235812))

(declare-fun res!1461436 () Bool)

(assert (=> d!1063665 (=> res!1461436 e!2235812)))

(declare-fun lt!1244442 () Bool)

(assert (=> d!1063665 (= res!1461436 (not lt!1244442))))

(declare-fun e!2235811 () Bool)

(assert (=> d!1063665 (= lt!1244442 e!2235811)))

(declare-fun res!1461437 () Bool)

(assert (=> d!1063665 (=> res!1461437 e!2235811)))

(assert (=> d!1063665 (= res!1461437 ((_ is Nil!38022) lt!1244079))))

(assert (=> d!1063665 (= (isPrefix!3007 lt!1244079 lt!1244062) lt!1244442)))

(declare-fun b!3612562 () Bool)

(assert (=> b!3612562 (= e!2235811 e!2235813)))

(declare-fun res!1461435 () Bool)

(assert (=> b!3612562 (=> (not res!1461435) (not e!2235813))))

(assert (=> b!3612562 (= res!1461435 (not ((_ is Nil!38022) lt!1244062)))))

(declare-fun b!3612563 () Bool)

(declare-fun res!1461434 () Bool)

(assert (=> b!3612563 (=> (not res!1461434) (not e!2235813))))

(assert (=> b!3612563 (= res!1461434 (= (head!7604 lt!1244079) (head!7604 lt!1244062)))))

(assert (= (and d!1063665 (not res!1461437)) b!3612562))

(assert (= (and b!3612562 res!1461435) b!3612563))

(assert (= (and b!3612563 res!1461434) b!3612564))

(assert (= (and d!1063665 (not res!1461436)) b!3612565))

(assert (=> b!3612564 m!4110525))

(assert (=> b!3612564 m!4110317))

(assert (=> b!3612564 m!4110525))

(assert (=> b!3612564 m!4110317))

(declare-fun m!4110729 () Bool)

(assert (=> b!3612564 m!4110729))

(assert (=> b!3612565 m!4110263))

(assert (=> b!3612565 m!4109699))

(assert (=> b!3612563 m!4109735))

(assert (=> b!3612563 m!4110707))

(assert (=> b!3611877 d!1063665))

(declare-fun b!3612567 () Bool)

(declare-fun e!2235814 () Option!7918)

(declare-fun lt!1244446 () Option!7918)

(declare-fun lt!1244444 () Option!7918)

(assert (=> b!3612567 (= e!2235814 (ite (and ((_ is None!7917) lt!1244446) ((_ is None!7917) lt!1244444)) None!7917 (ite ((_ is None!7917) lt!1244444) lt!1244446 (ite ((_ is None!7917) lt!1244446) lt!1244444 (ite (>= (size!28991 (_1!22090 (v!37663 lt!1244446))) (size!28991 (_1!22090 (v!37663 lt!1244444)))) lt!1244446 lt!1244444)))))))

(declare-fun call!261190 () Option!7918)

(assert (=> b!3612567 (= lt!1244446 call!261190)))

(assert (=> b!3612567 (= lt!1244444 (maxPrefix!2767 thiss!23823 (t!293438 rules!3307) lt!1244062))))

(declare-fun b!3612568 () Bool)

(assert (=> b!3612568 (= e!2235814 call!261190)))

(declare-fun b!3612569 () Bool)

(declare-fun res!1461443 () Bool)

(declare-fun e!2235816 () Bool)

(assert (=> b!3612569 (=> (not res!1461443) (not e!2235816))))

(declare-fun lt!1244445 () Option!7918)

(assert (=> b!3612569 (= res!1461443 (matchR!4972 (regex!5644 (rule!8396 (_1!22090 (get!12351 lt!1244445)))) (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244445))))))))

(declare-fun b!3612570 () Bool)

(declare-fun e!2235815 () Bool)

(assert (=> b!3612570 (= e!2235815 e!2235816)))

(declare-fun res!1461441 () Bool)

(assert (=> b!3612570 (=> (not res!1461441) (not e!2235816))))

(assert (=> b!3612570 (= res!1461441 (isDefined!6151 lt!1244445))))

(declare-fun b!3612571 () Bool)

(assert (=> b!3612571 (= e!2235816 (contains!7352 rules!3307 (rule!8396 (_1!22090 (get!12351 lt!1244445)))))))

(declare-fun bm!261185 () Bool)

(assert (=> bm!261185 (= call!261190 (maxPrefixOneRule!1911 thiss!23823 (h!43443 rules!3307) lt!1244062))))

(declare-fun b!3612572 () Bool)

(declare-fun res!1461440 () Bool)

(assert (=> b!3612572 (=> (not res!1461440) (not e!2235816))))

(assert (=> b!3612572 (= res!1461440 (= (value!181314 (_1!22090 (get!12351 lt!1244445))) (apply!9150 (transformation!5644 (rule!8396 (_1!22090 (get!12351 lt!1244445)))) (seqFromList!4197 (originalCharacters!6358 (_1!22090 (get!12351 lt!1244445)))))))))

(declare-fun b!3612573 () Bool)

(declare-fun res!1461444 () Bool)

(assert (=> b!3612573 (=> (not res!1461444) (not e!2235816))))

(assert (=> b!3612573 (= res!1461444 (= (++!9460 (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244445)))) (_2!22090 (get!12351 lt!1244445))) lt!1244062))))

(declare-fun b!3612574 () Bool)

(declare-fun res!1461442 () Bool)

(assert (=> b!3612574 (=> (not res!1461442) (not e!2235816))))

(assert (=> b!3612574 (= res!1461442 (< (size!28992 (_2!22090 (get!12351 lt!1244445))) (size!28992 lt!1244062)))))

(declare-fun b!3612566 () Bool)

(declare-fun res!1461439 () Bool)

(assert (=> b!3612566 (=> (not res!1461439) (not e!2235816))))

(assert (=> b!3612566 (= res!1461439 (= (list!14024 (charsOf!3658 (_1!22090 (get!12351 lt!1244445)))) (originalCharacters!6358 (_1!22090 (get!12351 lt!1244445)))))))

(declare-fun d!1063667 () Bool)

(assert (=> d!1063667 e!2235815))

(declare-fun res!1461438 () Bool)

(assert (=> d!1063667 (=> res!1461438 e!2235815)))

(assert (=> d!1063667 (= res!1461438 (isEmpty!22458 lt!1244445))))

(assert (=> d!1063667 (= lt!1244445 e!2235814)))

(declare-fun c!625004 () Bool)

(assert (=> d!1063667 (= c!625004 (and ((_ is Cons!38023) rules!3307) ((_ is Nil!38023) (t!293438 rules!3307))))))

(declare-fun lt!1244447 () Unit!54264)

(declare-fun lt!1244443 () Unit!54264)

(assert (=> d!1063667 (= lt!1244447 lt!1244443)))

(assert (=> d!1063667 (isPrefix!3007 lt!1244062 lt!1244062)))

(assert (=> d!1063667 (= lt!1244443 (lemmaIsPrefixRefl!1920 lt!1244062 lt!1244062))))

(assert (=> d!1063667 (rulesValidInductive!1983 thiss!23823 rules!3307)))

(assert (=> d!1063667 (= (maxPrefix!2767 thiss!23823 rules!3307 lt!1244062) lt!1244445)))

(assert (= (and d!1063667 c!625004) b!3612568))

(assert (= (and d!1063667 (not c!625004)) b!3612567))

(assert (= (or b!3612568 b!3612567) bm!261185))

(assert (= (and d!1063667 (not res!1461438)) b!3612570))

(assert (= (and b!3612570 res!1461441) b!3612566))

(assert (= (and b!3612566 res!1461439) b!3612574))

(assert (= (and b!3612574 res!1461442) b!3612573))

(assert (= (and b!3612573 res!1461444) b!3612572))

(assert (= (and b!3612572 res!1461440) b!3612569))

(assert (= (and b!3612569 res!1461443) b!3612571))

(declare-fun m!4110731 () Bool)

(assert (=> b!3612569 m!4110731))

(declare-fun m!4110733 () Bool)

(assert (=> b!3612569 m!4110733))

(assert (=> b!3612569 m!4110733))

(declare-fun m!4110735 () Bool)

(assert (=> b!3612569 m!4110735))

(assert (=> b!3612569 m!4110735))

(declare-fun m!4110737 () Bool)

(assert (=> b!3612569 m!4110737))

(assert (=> b!3612572 m!4110731))

(declare-fun m!4110739 () Bool)

(assert (=> b!3612572 m!4110739))

(assert (=> b!3612572 m!4110739))

(declare-fun m!4110741 () Bool)

(assert (=> b!3612572 m!4110741))

(declare-fun m!4110743 () Bool)

(assert (=> bm!261185 m!4110743))

(assert (=> b!3612566 m!4110731))

(assert (=> b!3612566 m!4110733))

(assert (=> b!3612566 m!4110733))

(assert (=> b!3612566 m!4110735))

(assert (=> b!3612574 m!4110731))

(declare-fun m!4110745 () Bool)

(assert (=> b!3612574 m!4110745))

(assert (=> b!3612574 m!4110263))

(assert (=> b!3612573 m!4110731))

(assert (=> b!3612573 m!4110733))

(assert (=> b!3612573 m!4110733))

(assert (=> b!3612573 m!4110735))

(assert (=> b!3612573 m!4110735))

(declare-fun m!4110747 () Bool)

(assert (=> b!3612573 m!4110747))

(assert (=> b!3612571 m!4110731))

(declare-fun m!4110749 () Bool)

(assert (=> b!3612571 m!4110749))

(declare-fun m!4110751 () Bool)

(assert (=> b!3612567 m!4110751))

(declare-fun m!4110753 () Bool)

(assert (=> d!1063667 m!4110753))

(declare-fun m!4110755 () Bool)

(assert (=> d!1063667 m!4110755))

(declare-fun m!4110757 () Bool)

(assert (=> d!1063667 m!4110757))

(assert (=> d!1063667 m!4110109))

(declare-fun m!4110759 () Bool)

(assert (=> b!3612570 m!4110759))

(assert (=> b!3611877 d!1063667))

(declare-fun b!3612576 () Bool)

(declare-fun e!2235817 () List!38146)

(assert (=> b!3612576 (= e!2235817 (Cons!38022 (h!43442 lt!1244074) (++!9460 (t!293437 lt!1244074) suffix!1395)))))

(declare-fun e!2235818 () Bool)

(declare-fun lt!1244448 () List!38146)

(declare-fun b!3612578 () Bool)

(assert (=> b!3612578 (= e!2235818 (or (not (= suffix!1395 Nil!38022)) (= lt!1244448 lt!1244074)))))

(declare-fun d!1063669 () Bool)

(assert (=> d!1063669 e!2235818))

(declare-fun res!1461446 () Bool)

(assert (=> d!1063669 (=> (not res!1461446) (not e!2235818))))

(assert (=> d!1063669 (= res!1461446 (= (content!5440 lt!1244448) ((_ map or) (content!5440 lt!1244074) (content!5440 suffix!1395))))))

(assert (=> d!1063669 (= lt!1244448 e!2235817)))

(declare-fun c!625005 () Bool)

(assert (=> d!1063669 (= c!625005 ((_ is Nil!38022) lt!1244074))))

(assert (=> d!1063669 (= (++!9460 lt!1244074 suffix!1395) lt!1244448)))

(declare-fun b!3612577 () Bool)

(declare-fun res!1461445 () Bool)

(assert (=> b!3612577 (=> (not res!1461445) (not e!2235818))))

(assert (=> b!3612577 (= res!1461445 (= (size!28992 lt!1244448) (+ (size!28992 lt!1244074) (size!28992 suffix!1395))))))

(declare-fun b!3612575 () Bool)

(assert (=> b!3612575 (= e!2235817 suffix!1395)))

(assert (= (and d!1063669 c!625005) b!3612575))

(assert (= (and d!1063669 (not c!625005)) b!3612576))

(assert (= (and d!1063669 res!1461446) b!3612577))

(assert (= (and b!3612577 res!1461445) b!3612578))

(declare-fun m!4110761 () Bool)

(assert (=> b!3612576 m!4110761))

(declare-fun m!4110763 () Bool)

(assert (=> d!1063669 m!4110763))

(declare-fun m!4110765 () Bool)

(assert (=> d!1063669 m!4110765))

(declare-fun m!4110767 () Bool)

(assert (=> d!1063669 m!4110767))

(declare-fun m!4110769 () Bool)

(assert (=> b!3612577 m!4110769))

(assert (=> b!3612577 m!4110095))

(declare-fun m!4110771 () Bool)

(assert (=> b!3612577 m!4110771))

(assert (=> b!3611877 d!1063669))

(declare-fun d!1063671 () Bool)

(declare-fun lt!1244449 () Bool)

(assert (=> d!1063671 (= lt!1244449 (select (content!5440 call!261134) lt!1244089))))

(declare-fun e!2235820 () Bool)

(assert (=> d!1063671 (= lt!1244449 e!2235820)))

(declare-fun res!1461447 () Bool)

(assert (=> d!1063671 (=> (not res!1461447) (not e!2235820))))

(assert (=> d!1063671 (= res!1461447 ((_ is Cons!38022) call!261134))))

(assert (=> d!1063671 (= (contains!7351 call!261134 lt!1244089) lt!1244449)))

(declare-fun b!3612579 () Bool)

(declare-fun e!2235819 () Bool)

(assert (=> b!3612579 (= e!2235820 e!2235819)))

(declare-fun res!1461448 () Bool)

(assert (=> b!3612579 (=> res!1461448 e!2235819)))

(assert (=> b!3612579 (= res!1461448 (= (h!43442 call!261134) lt!1244089))))

(declare-fun b!3612580 () Bool)

(assert (=> b!3612580 (= e!2235819 (contains!7351 (t!293437 call!261134) lt!1244089))))

(assert (= (and d!1063671 res!1461447) b!3612579))

(assert (= (and b!3612579 (not res!1461448)) b!3612580))

(declare-fun m!4110773 () Bool)

(assert (=> d!1063671 m!4110773))

(declare-fun m!4110775 () Bool)

(assert (=> d!1063671 m!4110775))

(declare-fun m!4110777 () Bool)

(assert (=> b!3612580 m!4110777))

(assert (=> bm!261128 d!1063671))

(assert (=> bm!261127 d!1063607))

(declare-fun b!3612581 () Bool)

(declare-fun e!2235825 () Bool)

(declare-fun e!2235827 () Bool)

(assert (=> b!3612581 (= e!2235825 e!2235827)))

(declare-fun c!625006 () Bool)

(assert (=> b!3612581 (= c!625006 ((_ is EmptyLang!10403) (regex!5644 rule!403)))))

(declare-fun b!3612582 () Bool)

(declare-fun res!1461449 () Bool)

(declare-fun e!2235823 () Bool)

(assert (=> b!3612582 (=> (not res!1461449) (not e!2235823))))

(declare-fun call!261191 () Bool)

(assert (=> b!3612582 (= res!1461449 (not call!261191))))

(declare-fun b!3612583 () Bool)

(declare-fun res!1461451 () Bool)

(assert (=> b!3612583 (=> (not res!1461451) (not e!2235823))))

(assert (=> b!3612583 (= res!1461451 (isEmpty!22454 (tail!5599 lt!1244074)))))

(declare-fun b!3612584 () Bool)

(declare-fun e!2235824 () Bool)

(assert (=> b!3612584 (= e!2235824 (matchR!4972 (derivativeStep!3149 (regex!5644 rule!403) (head!7604 lt!1244074)) (tail!5599 lt!1244074)))))

(declare-fun b!3612585 () Bool)

(declare-fun e!2235822 () Bool)

(assert (=> b!3612585 (= e!2235822 (not (= (head!7604 lt!1244074) (c!624868 (regex!5644 rule!403)))))))

(declare-fun b!3612586 () Bool)

(assert (=> b!3612586 (= e!2235824 (nullable!3600 (regex!5644 rule!403)))))

(declare-fun b!3612587 () Bool)

(declare-fun res!1461456 () Bool)

(assert (=> b!3612587 (=> res!1461456 e!2235822)))

(assert (=> b!3612587 (= res!1461456 (not (isEmpty!22454 (tail!5599 lt!1244074))))))

(declare-fun d!1063673 () Bool)

(assert (=> d!1063673 e!2235825))

(declare-fun c!625008 () Bool)

(assert (=> d!1063673 (= c!625008 ((_ is EmptyExpr!10403) (regex!5644 rule!403)))))

(declare-fun lt!1244450 () Bool)

(assert (=> d!1063673 (= lt!1244450 e!2235824)))

(declare-fun c!625007 () Bool)

(assert (=> d!1063673 (= c!625007 (isEmpty!22454 lt!1244074))))

(assert (=> d!1063673 (validRegex!4763 (regex!5644 rule!403))))

(assert (=> d!1063673 (= (matchR!4972 (regex!5644 rule!403) lt!1244074) lt!1244450)))

(declare-fun b!3612588 () Bool)

(declare-fun res!1461455 () Bool)

(declare-fun e!2235821 () Bool)

(assert (=> b!3612588 (=> res!1461455 e!2235821)))

(assert (=> b!3612588 (= res!1461455 e!2235823)))

(declare-fun res!1461452 () Bool)

(assert (=> b!3612588 (=> (not res!1461452) (not e!2235823))))

(assert (=> b!3612588 (= res!1461452 lt!1244450)))

(declare-fun b!3612589 () Bool)

(declare-fun e!2235826 () Bool)

(assert (=> b!3612589 (= e!2235826 e!2235822)))

(declare-fun res!1461454 () Bool)

(assert (=> b!3612589 (=> res!1461454 e!2235822)))

(assert (=> b!3612589 (= res!1461454 call!261191)))

(declare-fun b!3612590 () Bool)

(assert (=> b!3612590 (= e!2235823 (= (head!7604 lt!1244074) (c!624868 (regex!5644 rule!403))))))

(declare-fun b!3612591 () Bool)

(assert (=> b!3612591 (= e!2235825 (= lt!1244450 call!261191))))

(declare-fun bm!261186 () Bool)

(assert (=> bm!261186 (= call!261191 (isEmpty!22454 lt!1244074))))

(declare-fun b!3612592 () Bool)

(assert (=> b!3612592 (= e!2235827 (not lt!1244450))))

(declare-fun b!3612593 () Bool)

(declare-fun res!1461450 () Bool)

(assert (=> b!3612593 (=> res!1461450 e!2235821)))

(assert (=> b!3612593 (= res!1461450 (not ((_ is ElementMatch!10403) (regex!5644 rule!403))))))

(assert (=> b!3612593 (= e!2235827 e!2235821)))

(declare-fun b!3612594 () Bool)

(assert (=> b!3612594 (= e!2235821 e!2235826)))

(declare-fun res!1461453 () Bool)

(assert (=> b!3612594 (=> (not res!1461453) (not e!2235826))))

(assert (=> b!3612594 (= res!1461453 (not lt!1244450))))

(assert (= (and d!1063673 c!625007) b!3612586))

(assert (= (and d!1063673 (not c!625007)) b!3612584))

(assert (= (and d!1063673 c!625008) b!3612591))

(assert (= (and d!1063673 (not c!625008)) b!3612581))

(assert (= (and b!3612581 c!625006) b!3612592))

(assert (= (and b!3612581 (not c!625006)) b!3612593))

(assert (= (and b!3612593 (not res!1461450)) b!3612588))

(assert (= (and b!3612588 res!1461452) b!3612582))

(assert (= (and b!3612582 res!1461449) b!3612583))

(assert (= (and b!3612583 res!1461451) b!3612590))

(assert (= (and b!3612588 (not res!1461455)) b!3612594))

(assert (= (and b!3612594 res!1461453) b!3612589))

(assert (= (and b!3612589 (not res!1461454)) b!3612587))

(assert (= (and b!3612587 (not res!1461456)) b!3612585))

(assert (= (or b!3612591 b!3612582 b!3612589) bm!261186))

(assert (=> b!3612583 m!4110701))

(assert (=> b!3612583 m!4110701))

(declare-fun m!4110779 () Bool)

(assert (=> b!3612583 m!4110779))

(declare-fun m!4110781 () Bool)

(assert (=> d!1063673 m!4110781))

(assert (=> d!1063673 m!4110045))

(assert (=> b!3612585 m!4110705))

(assert (=> b!3612590 m!4110705))

(assert (=> b!3612584 m!4110705))

(assert (=> b!3612584 m!4110705))

(declare-fun m!4110783 () Bool)

(assert (=> b!3612584 m!4110783))

(assert (=> b!3612584 m!4110701))

(assert (=> b!3612584 m!4110783))

(assert (=> b!3612584 m!4110701))

(declare-fun m!4110785 () Bool)

(assert (=> b!3612584 m!4110785))

(assert (=> b!3612587 m!4110701))

(assert (=> b!3612587 m!4110701))

(assert (=> b!3612587 m!4110779))

(assert (=> bm!261186 m!4110781))

(declare-fun m!4110787 () Bool)

(assert (=> b!3612586 m!4110787))

(assert (=> b!3611876 d!1063673))

(declare-fun d!1063675 () Bool)

(declare-fun res!1461461 () Bool)

(declare-fun e!2235830 () Bool)

(assert (=> d!1063675 (=> (not res!1461461) (not e!2235830))))

(assert (=> d!1063675 (= res!1461461 (validRegex!4763 (regex!5644 rule!403)))))

(assert (=> d!1063675 (= (ruleValid!1909 thiss!23823 rule!403) e!2235830)))

(declare-fun b!3612599 () Bool)

(declare-fun res!1461462 () Bool)

(assert (=> b!3612599 (=> (not res!1461462) (not e!2235830))))

(assert (=> b!3612599 (= res!1461462 (not (nullable!3600 (regex!5644 rule!403))))))

(declare-fun b!3612600 () Bool)

(assert (=> b!3612600 (= e!2235830 (not (= (tag!6352 rule!403) (String!42705 ""))))))

(assert (= (and d!1063675 res!1461461) b!3612599))

(assert (= (and b!3612599 res!1461462) b!3612600))

(assert (=> d!1063675 m!4110045))

(assert (=> b!3612599 m!4110787))

(assert (=> b!3611876 d!1063675))

(declare-fun d!1063677 () Bool)

(assert (=> d!1063677 (ruleValid!1909 thiss!23823 rule!403)))

(declare-fun lt!1244453 () Unit!54264)

(declare-fun choose!21138 (LexerInterface!5233 Rule!11088 List!38147) Unit!54264)

(assert (=> d!1063677 (= lt!1244453 (choose!21138 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1063677 (contains!7352 rules!3307 rule!403)))

(assert (=> d!1063677 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1064 thiss!23823 rule!403 rules!3307) lt!1244453)))

(declare-fun bs!570929 () Bool)

(assert (= bs!570929 d!1063677))

(assert (=> bs!570929 m!4109793))

(declare-fun m!4110789 () Bool)

(assert (=> bs!570929 m!4110789))

(assert (=> bs!570929 m!4109815))

(assert (=> b!3611876 d!1063677))

(declare-fun d!1063679 () Bool)

(declare-fun res!1461465 () Bool)

(declare-fun e!2235833 () Bool)

(assert (=> d!1063679 (=> (not res!1461465) (not e!2235833))))

(declare-fun rulesValid!2156 (LexerInterface!5233 List!38147) Bool)

(assert (=> d!1063679 (= res!1461465 (rulesValid!2156 thiss!23823 rules!3307))))

(assert (=> d!1063679 (= (rulesInvariant!4630 thiss!23823 rules!3307) e!2235833)))

(declare-fun b!3612603 () Bool)

(declare-datatypes ((List!38151 0))(
  ( (Nil!38027) (Cons!38027 (h!43447 String!42704) (t!293562 List!38151)) )
))
(declare-fun noDuplicateTag!2152 (LexerInterface!5233 List!38147 List!38151) Bool)

(assert (=> b!3612603 (= e!2235833 (noDuplicateTag!2152 thiss!23823 rules!3307 Nil!38027))))

(assert (= (and d!1063679 res!1461465) b!3612603))

(declare-fun m!4110791 () Bool)

(assert (=> d!1063679 m!4110791))

(declare-fun m!4110793 () Bool)

(assert (=> b!3612603 m!4110793))

(assert (=> b!3611875 d!1063679))

(declare-fun d!1063681 () Bool)

(declare-fun res!1461470 () Bool)

(declare-fun e!2235838 () Bool)

(assert (=> d!1063681 (=> res!1461470 e!2235838)))

(assert (=> d!1063681 (= res!1461470 (not ((_ is Cons!38023) rules!3307)))))

(assert (=> d!1063681 (= (sepAndNonSepRulesDisjointChars!1814 rules!3307 rules!3307) e!2235838)))

(declare-fun b!3612608 () Bool)

(declare-fun e!2235839 () Bool)

(assert (=> b!3612608 (= e!2235838 e!2235839)))

(declare-fun res!1461471 () Bool)

(assert (=> b!3612608 (=> (not res!1461471) (not e!2235839))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!825 (Rule!11088 List!38147) Bool)

(assert (=> b!3612608 (= res!1461471 (ruleDisjointCharsFromAllFromOtherType!825 (h!43443 rules!3307) rules!3307))))

(declare-fun b!3612609 () Bool)

(assert (=> b!3612609 (= e!2235839 (sepAndNonSepRulesDisjointChars!1814 rules!3307 (t!293438 rules!3307)))))

(assert (= (and d!1063681 (not res!1461470)) b!3612608))

(assert (= (and b!3612608 res!1461471) b!3612609))

(declare-fun m!4110795 () Bool)

(assert (=> b!3612608 m!4110795))

(declare-fun m!4110797 () Bool)

(assert (=> b!3612609 m!4110797))

(assert (=> b!3611856 d!1063681))

(declare-fun b!3612610 () Bool)

(declare-fun e!2235844 () Bool)

(declare-fun e!2235846 () Bool)

(assert (=> b!3612610 (= e!2235844 e!2235846)))

(declare-fun c!625009 () Bool)

(assert (=> b!3612610 (= c!625009 ((_ is EmptyLang!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3612611 () Bool)

(declare-fun res!1461472 () Bool)

(declare-fun e!2235842 () Bool)

(assert (=> b!3612611 (=> (not res!1461472) (not e!2235842))))

(declare-fun call!261192 () Bool)

(assert (=> b!3612611 (= res!1461472 (not call!261192))))

(declare-fun b!3612612 () Bool)

(declare-fun res!1461474 () Bool)

(assert (=> b!3612612 (=> (not res!1461474) (not e!2235842))))

(assert (=> b!3612612 (= res!1461474 (isEmpty!22454 (tail!5599 lt!1244079)))))

(declare-fun b!3612613 () Bool)

(declare-fun e!2235843 () Bool)

(assert (=> b!3612613 (= e!2235843 (matchR!4972 (derivativeStep!3149 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) (head!7604 lt!1244079)) (tail!5599 lt!1244079)))))

(declare-fun b!3612614 () Bool)

(declare-fun e!2235841 () Bool)

(assert (=> b!3612614 (= e!2235841 (not (= (head!7604 lt!1244079) (c!624868 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))))

(declare-fun b!3612615 () Bool)

(assert (=> b!3612615 (= e!2235843 (nullable!3600 (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun b!3612616 () Bool)

(declare-fun res!1461479 () Bool)

(assert (=> b!3612616 (=> res!1461479 e!2235841)))

(assert (=> b!3612616 (= res!1461479 (not (isEmpty!22454 (tail!5599 lt!1244079))))))

(declare-fun d!1063683 () Bool)

(assert (=> d!1063683 e!2235844))

(declare-fun c!625011 () Bool)

(assert (=> d!1063683 (= c!625011 ((_ is EmptyExpr!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090)))))))

(declare-fun lt!1244454 () Bool)

(assert (=> d!1063683 (= lt!1244454 e!2235843)))

(declare-fun c!625010 () Bool)

(assert (=> d!1063683 (= c!625010 (isEmpty!22454 lt!1244079))))

(assert (=> d!1063683 (validRegex!4763 (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))

(assert (=> d!1063683 (= (matchR!4972 (regex!5644 (rule!8396 (_1!22090 lt!1244090))) lt!1244079) lt!1244454)))

(declare-fun b!3612617 () Bool)

(declare-fun res!1461478 () Bool)

(declare-fun e!2235840 () Bool)

(assert (=> b!3612617 (=> res!1461478 e!2235840)))

(assert (=> b!3612617 (= res!1461478 e!2235842)))

(declare-fun res!1461475 () Bool)

(assert (=> b!3612617 (=> (not res!1461475) (not e!2235842))))

(assert (=> b!3612617 (= res!1461475 lt!1244454)))

(declare-fun b!3612618 () Bool)

(declare-fun e!2235845 () Bool)

(assert (=> b!3612618 (= e!2235845 e!2235841)))

(declare-fun res!1461477 () Bool)

(assert (=> b!3612618 (=> res!1461477 e!2235841)))

(assert (=> b!3612618 (= res!1461477 call!261192)))

(declare-fun b!3612619 () Bool)

(assert (=> b!3612619 (= e!2235842 (= (head!7604 lt!1244079) (c!624868 (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))))

(declare-fun b!3612620 () Bool)

(assert (=> b!3612620 (= e!2235844 (= lt!1244454 call!261192))))

(declare-fun bm!261187 () Bool)

(assert (=> bm!261187 (= call!261192 (isEmpty!22454 lt!1244079))))

(declare-fun b!3612621 () Bool)

(assert (=> b!3612621 (= e!2235846 (not lt!1244454))))

(declare-fun b!3612622 () Bool)

(declare-fun res!1461473 () Bool)

(assert (=> b!3612622 (=> res!1461473 e!2235840)))

(assert (=> b!3612622 (= res!1461473 (not ((_ is ElementMatch!10403) (regex!5644 (rule!8396 (_1!22090 lt!1244090))))))))

(assert (=> b!3612622 (= e!2235846 e!2235840)))

(declare-fun b!3612623 () Bool)

(assert (=> b!3612623 (= e!2235840 e!2235845)))

(declare-fun res!1461476 () Bool)

(assert (=> b!3612623 (=> (not res!1461476) (not e!2235845))))

(assert (=> b!3612623 (= res!1461476 (not lt!1244454))))

(assert (= (and d!1063683 c!625010) b!3612615))

(assert (= (and d!1063683 (not c!625010)) b!3612613))

(assert (= (and d!1063683 c!625011) b!3612620))

(assert (= (and d!1063683 (not c!625011)) b!3612610))

(assert (= (and b!3612610 c!625009) b!3612621))

(assert (= (and b!3612610 (not c!625009)) b!3612622))

(assert (= (and b!3612622 (not res!1461473)) b!3612617))

(assert (= (and b!3612617 res!1461475) b!3612611))

(assert (= (and b!3612611 res!1461472) b!3612612))

(assert (= (and b!3612612 res!1461474) b!3612619))

(assert (= (and b!3612617 (not res!1461478)) b!3612623))

(assert (= (and b!3612623 res!1461476) b!3612618))

(assert (= (and b!3612618 (not res!1461477)) b!3612616))

(assert (= (and b!3612616 (not res!1461479)) b!3612614))

(assert (= (or b!3612620 b!3612611 b!3612618) bm!261187))

(assert (=> b!3612612 m!4110525))

(assert (=> b!3612612 m!4110525))

(declare-fun m!4110799 () Bool)

(assert (=> b!3612612 m!4110799))

(declare-fun m!4110801 () Bool)

(assert (=> d!1063683 m!4110801))

(assert (=> d!1063683 m!4110325))

(assert (=> b!3612614 m!4109735))

(assert (=> b!3612619 m!4109735))

(assert (=> b!3612613 m!4109735))

(assert (=> b!3612613 m!4109735))

(declare-fun m!4110803 () Bool)

(assert (=> b!3612613 m!4110803))

(assert (=> b!3612613 m!4110525))

(assert (=> b!3612613 m!4110803))

(assert (=> b!3612613 m!4110525))

(declare-fun m!4110805 () Bool)

(assert (=> b!3612613 m!4110805))

(assert (=> b!3612616 m!4110525))

(assert (=> b!3612616 m!4110525))

(assert (=> b!3612616 m!4110799))

(assert (=> bm!261187 m!4110801))

(declare-fun m!4110807 () Bool)

(assert (=> b!3612615 m!4110807))

(assert (=> b!3611855 d!1063683))

(declare-fun d!1063685 () Bool)

(assert (=> d!1063685 (= (isEmpty!22455 rules!3307) ((_ is Nil!38023) rules!3307))))

(assert (=> b!3611872 d!1063685))

(declare-fun b!3612637 () Bool)

(declare-fun e!2235849 () Bool)

(declare-fun tp!1104110 () Bool)

(declare-fun tp!1104111 () Bool)

(assert (=> b!3612637 (= e!2235849 (and tp!1104110 tp!1104111))))

(declare-fun b!3612635 () Bool)

(declare-fun tp!1104108 () Bool)

(declare-fun tp!1104107 () Bool)

(assert (=> b!3612635 (= e!2235849 (and tp!1104108 tp!1104107))))

(declare-fun b!3612636 () Bool)

(declare-fun tp!1104109 () Bool)

(assert (=> b!3612636 (= e!2235849 tp!1104109)))

(assert (=> b!3611885 (= tp!1104030 e!2235849)))

(declare-fun b!3612634 () Bool)

(assert (=> b!3612634 (= e!2235849 tp_is_empty!17889)))

(assert (= (and b!3611885 ((_ is ElementMatch!10403) (regex!5644 anOtherTypeRule!33))) b!3612634))

(assert (= (and b!3611885 ((_ is Concat!16278) (regex!5644 anOtherTypeRule!33))) b!3612635))

(assert (= (and b!3611885 ((_ is Star!10403) (regex!5644 anOtherTypeRule!33))) b!3612636))

(assert (= (and b!3611885 ((_ is Union!10403) (regex!5644 anOtherTypeRule!33))) b!3612637))

(declare-fun b!3612641 () Bool)

(declare-fun e!2235850 () Bool)

(declare-fun tp!1104115 () Bool)

(declare-fun tp!1104116 () Bool)

(assert (=> b!3612641 (= e!2235850 (and tp!1104115 tp!1104116))))

(declare-fun b!3612639 () Bool)

(declare-fun tp!1104113 () Bool)

(declare-fun tp!1104112 () Bool)

(assert (=> b!3612639 (= e!2235850 (and tp!1104113 tp!1104112))))

(declare-fun b!3612640 () Bool)

(declare-fun tp!1104114 () Bool)

(assert (=> b!3612640 (= e!2235850 tp!1104114)))

(assert (=> b!3611869 (= tp!1104026 e!2235850)))

(declare-fun b!3612638 () Bool)

(assert (=> b!3612638 (= e!2235850 tp_is_empty!17889)))

(assert (= (and b!3611869 ((_ is ElementMatch!10403) (regex!5644 (rule!8396 token!511)))) b!3612638))

(assert (= (and b!3611869 ((_ is Concat!16278) (regex!5644 (rule!8396 token!511)))) b!3612639))

(assert (= (and b!3611869 ((_ is Star!10403) (regex!5644 (rule!8396 token!511)))) b!3612640))

(assert (= (and b!3611869 ((_ is Union!10403) (regex!5644 (rule!8396 token!511)))) b!3612641))

(declare-fun b!3612646 () Bool)

(declare-fun e!2235853 () Bool)

(declare-fun tp!1104119 () Bool)

(assert (=> b!3612646 (= e!2235853 (and tp_is_empty!17889 tp!1104119))))

(assert (=> b!3611878 (= tp!1104038 e!2235853)))

(assert (= (and b!3611878 ((_ is Cons!38022) (t!293437 suffix!1395))) b!3612646))

(declare-fun b!3612650 () Bool)

(declare-fun e!2235854 () Bool)

(declare-fun tp!1104123 () Bool)

(declare-fun tp!1104124 () Bool)

(assert (=> b!3612650 (= e!2235854 (and tp!1104123 tp!1104124))))

(declare-fun b!3612648 () Bool)

(declare-fun tp!1104121 () Bool)

(declare-fun tp!1104120 () Bool)

(assert (=> b!3612648 (= e!2235854 (and tp!1104121 tp!1104120))))

(declare-fun b!3612649 () Bool)

(declare-fun tp!1104122 () Bool)

(assert (=> b!3612649 (= e!2235854 tp!1104122)))

(assert (=> b!3611867 (= tp!1104034 e!2235854)))

(declare-fun b!3612647 () Bool)

(assert (=> b!3612647 (= e!2235854 tp_is_empty!17889)))

(assert (= (and b!3611867 ((_ is ElementMatch!10403) (regex!5644 (h!43443 rules!3307)))) b!3612647))

(assert (= (and b!3611867 ((_ is Concat!16278) (regex!5644 (h!43443 rules!3307)))) b!3612648))

(assert (= (and b!3611867 ((_ is Star!10403) (regex!5644 (h!43443 rules!3307)))) b!3612649))

(assert (= (and b!3611867 ((_ is Union!10403) (regex!5644 (h!43443 rules!3307)))) b!3612650))

(declare-fun b!3612661 () Bool)

(declare-fun b_free!93861 () Bool)

(declare-fun b_next!94565 () Bool)

(assert (=> b!3612661 (= b_free!93861 (not b_next!94565))))

(declare-fun t!293548 () Bool)

(declare-fun tb!207165 () Bool)

(assert (=> (and b!3612661 (= (toValue!7928 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293548) tb!207165))

(declare-fun result!252466 () Bool)

(assert (= result!252466 result!252410))

(assert (=> d!1063541 t!293548))

(declare-fun t!293550 () Bool)

(declare-fun tb!207167 () Bool)

(assert (=> (and b!3612661 (= (toValue!7928 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293550) tb!207167))

(declare-fun result!252468 () Bool)

(assert (= result!252468 result!252374))

(assert (=> d!1063499 t!293550))

(declare-fun t!293552 () Bool)

(declare-fun tb!207169 () Bool)

(assert (=> (and b!3612661 (= (toValue!7928 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toValue!7928 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293552) tb!207169))

(declare-fun result!252470 () Bool)

(assert (= result!252470 result!252418))

(assert (=> d!1063541 t!293552))

(assert (=> d!1063595 t!293548))

(assert (=> d!1063605 t!293548))

(declare-fun b_and!263623 () Bool)

(declare-fun tp!1104135 () Bool)

(assert (=> b!3612661 (= tp!1104135 (and (=> t!293548 result!252466) (=> t!293550 result!252468) (=> t!293552 result!252470) b_and!263623))))

(declare-fun b_free!93863 () Bool)

(declare-fun b_next!94567 () Bool)

(assert (=> b!3612661 (= b_free!93863 (not b_next!94567))))

(declare-fun tb!207171 () Bool)

(declare-fun t!293554 () Bool)

(assert (=> (and b!3612661 (= (toChars!7787 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toChars!7787 (transformation!5644 (rule!8396 token!511)))) t!293554) tb!207171))

(declare-fun result!252472 () Bool)

(assert (= result!252472 result!252348))

(assert (=> b!3612019 t!293554))

(declare-fun t!293556 () Bool)

(declare-fun tb!207173 () Bool)

(assert (=> (and b!3612661 (= (toChars!7787 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293556) tb!207173))

(declare-fun result!252474 () Bool)

(assert (= result!252474 result!252358))

(assert (=> d!1063441 t!293556))

(assert (=> d!1063455 t!293554))

(declare-fun tb!207175 () Bool)

(declare-fun t!293558 () Bool)

(assert (=> (and b!3612661 (= (toChars!7787 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toChars!7787 (transformation!5644 (rule!8396 (_1!22090 lt!1244090))))) t!293558) tb!207175))

(declare-fun result!252476 () Bool)

(assert (= result!252476 result!252426))

(assert (=> d!1063595 t!293558))

(declare-fun tp!1104134 () Bool)

(declare-fun b_and!263625 () Bool)

(assert (=> b!3612661 (= tp!1104134 (and (=> t!293554 result!252472) (=> t!293556 result!252474) (=> t!293558 result!252476) b_and!263625))))

(declare-fun e!2235864 () Bool)

(assert (=> b!3612661 (= e!2235864 (and tp!1104135 tp!1104134))))

(declare-fun b!3612660 () Bool)

(declare-fun tp!1104136 () Bool)

(declare-fun e!2235866 () Bool)

(assert (=> b!3612660 (= e!2235866 (and tp!1104136 (inv!51396 (tag!6352 (h!43443 (t!293438 rules!3307)))) (inv!51400 (transformation!5644 (h!43443 (t!293438 rules!3307)))) e!2235864))))

(declare-fun b!3612659 () Bool)

(declare-fun e!2235863 () Bool)

(declare-fun tp!1104133 () Bool)

(assert (=> b!3612659 (= e!2235863 (and e!2235866 tp!1104133))))

(assert (=> b!3611848 (= tp!1104035 e!2235863)))

(assert (= b!3612660 b!3612661))

(assert (= b!3612659 b!3612660))

(assert (= (and b!3611848 ((_ is Cons!38023) (t!293438 rules!3307))) b!3612659))

(declare-fun m!4110809 () Bool)

(assert (=> b!3612660 m!4110809))

(declare-fun m!4110811 () Bool)

(assert (=> b!3612660 m!4110811))

(declare-fun b!3612665 () Bool)

(declare-fun e!2235867 () Bool)

(declare-fun tp!1104140 () Bool)

(declare-fun tp!1104141 () Bool)

(assert (=> b!3612665 (= e!2235867 (and tp!1104140 tp!1104141))))

(declare-fun b!3612663 () Bool)

(declare-fun tp!1104138 () Bool)

(declare-fun tp!1104137 () Bool)

(assert (=> b!3612663 (= e!2235867 (and tp!1104138 tp!1104137))))

(declare-fun b!3612664 () Bool)

(declare-fun tp!1104139 () Bool)

(assert (=> b!3612664 (= e!2235867 tp!1104139)))

(assert (=> b!3611861 (= tp!1104033 e!2235867)))

(declare-fun b!3612662 () Bool)

(assert (=> b!3612662 (= e!2235867 tp_is_empty!17889)))

(assert (= (and b!3611861 ((_ is ElementMatch!10403) (regex!5644 rule!403))) b!3612662))

(assert (= (and b!3611861 ((_ is Concat!16278) (regex!5644 rule!403))) b!3612663))

(assert (= (and b!3611861 ((_ is Star!10403) (regex!5644 rule!403))) b!3612664))

(assert (= (and b!3611861 ((_ is Union!10403) (regex!5644 rule!403))) b!3612665))

(declare-fun b!3612666 () Bool)

(declare-fun e!2235868 () Bool)

(declare-fun tp!1104142 () Bool)

(assert (=> b!3612666 (= e!2235868 (and tp_is_empty!17889 tp!1104142))))

(assert (=> b!3611847 (= tp!1104031 e!2235868)))

(assert (= (and b!3611847 ((_ is Cons!38022) (originalCharacters!6358 token!511))) b!3612666))

(declare-fun b_lambda!106903 () Bool)

(assert (= b_lambda!106869 (or (and b!3611882 b_free!93855 (= (toChars!7787 (transformation!5644 rule!403)) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3612661 b_free!93863 (= (toChars!7787 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3611853 b_free!93847) (and b!3611843 b_free!93851 (= (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3611862 b_free!93843 (= (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) b_lambda!106903)))

(declare-fun b_lambda!106905 () Bool)

(assert (= b_lambda!106865 (or (and b!3611882 b_free!93855 (= (toChars!7787 (transformation!5644 rule!403)) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3612661 b_free!93863 (= (toChars!7787 (transformation!5644 (h!43443 (t!293438 rules!3307)))) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3611853 b_free!93847) (and b!3611843 b_free!93851 (= (toChars!7787 (transformation!5644 anOtherTypeRule!33)) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) (and b!3611862 b_free!93843 (= (toChars!7787 (transformation!5644 (h!43443 rules!3307))) (toChars!7787 (transformation!5644 (rule!8396 token!511))))) b_lambda!106905)))

(check-sat (not d!1063509) (not b!3612203) (not b!3612619) (not b!3612020) (not b_lambda!106887) (not b!3612543) (not d!1063513) (not b!3612587) (not bm!261178) (not b!3612019) (not b!3612640) (not b!3612206) (not d!1063525) (not b!3612081) (not d!1063663) (not d!1063505) (not b!3612637) (not d!1063669) (not b!3612571) (not d!1063503) (not b_next!94567) (not d!1063517) (not b!3612541) (not d!1063673) (not b!3612576) (not d!1063595) (not d!1063415) (not d!1063501) (not bm!261186) (not b!3612572) (not b!3612083) (not b!3612641) (not b!3612235) (not b!3612402) (not b!3612613) (not b!3612649) (not tb!207121) (not tb!207073) (not b!3612577) (not b!3612401) (not bm!261140) (not d!1063591) b_and!263591 (not b!3611926) (not b!3612123) b_and!263605 (not d!1063439) (not d!1063403) (not d!1063527) (not b!3612094) (not b!3612537) (not d!1063507) (not d!1063449) (not b!3612120) (not bm!261187) (not b!3612085) (not b_lambda!106867) (not b!3612198) (not d!1063429) (not b!3612542) (not b!3612614) (not b!3612526) (not b!3612585) (not bm!261141) (not d!1063541) (not b!3612615) (not b!3612580) b_and!263603 (not b_next!94545) (not tb!207129) (not d!1063531) (not b!3612616) (not bm!261147) (not b!3612199) (not b!3612566) (not b!3612221) (not b_next!94551) (not b!3612639) (not d!1063675) (not b!3612088) (not b!3612608) (not b!3612666) (not b_lambda!106895) (not b_next!94555) (not b_next!94557) (not b!3612564) (not d!1063453) (not d!1063389) (not b!3612583) (not b!3612538) (not d!1063515) (not b!3612584) (not bm!261139) (not b!3612082) (not b_next!94553) (not d!1063367) (not b!3612635) (not d!1063667) (not bm!261150) (not b!3612113) (not b!3612565) (not b!3612048) (not b!3611938) b_and!263623 (not b!3612114) (not b_next!94547) (not d!1063613) (not b!3612205) (not d!1063537) (not d!1063379) (not b!3612659) (not d!1063451) (not d!1063521) (not d!1063671) (not d!1063435) (not b!3612660) (not d!1063679) b_and!263607 (not tb!207065) (not bm!261154) (not b!3612556) (not b_lambda!106891) (not b!3612567) (not b!3612636) (not b!3612396) (not b!3611964) (not d!1063391) (not b!3612394) (not d!1063677) (not b_next!94565) (not b!3612200) (not b!3612570) (not bm!261155) (not b!3612569) (not b!3612663) (not b_lambda!106889) (not b!3612525) (not d!1063459) (not d!1063611) (not b!3612223) (not bm!261153) (not b!3612116) (not b!3612603) (not b!3612034) (not d!1063457) (not tb!207089) (not b!3612093) (not d!1063539) (not d!1063683) (not b!3612204) (not d!1063455) (not b!3611972) (not b!3612558) (not b!3612225) (not b!3612599) (not d!1063433) (not b!3612524) (not b!3612201) b_and!263609 b_and!263625 (not b!3612586) (not d!1063413) (not b!3612046) (not tb!207137) (not b!3612118) (not b!3612574) (not d!1063657) (not b_lambda!106905) (not b!3612563) (not d!1063447) b_and!263587 (not b!3611970) (not bm!261179) (not d!1063651) (not d!1063659) (not bm!261177) (not b!3612646) (not b!3612648) (not d!1063437) (not b!3612664) (not b!3612561) (not b!3612609) b_and!263593 tp_is_empty!17889 (not b!3612665) (not b!3612049) (not b!3612117) (not b!3612395) (not b_next!94559) (not b_lambda!106893) (not d!1063535) (not b_lambda!106873) (not d!1063421) (not b!3612376) (not b!3612573) (not b!3612212) (not b!3612084) (not bm!261185) b_and!263589 (not d!1063497) (not b_lambda!106903) (not b!3612119) (not b!3612035) (not b!3612219) (not b!3612590) (not b_next!94549) (not d!1063441) (not b!3612612) (not b!3612650) (not d!1063653) (not b!3612121) (not d!1063523) (not d!1063661))
(check-sat (not b_next!94567) (not b_next!94551) (not b_next!94553) b_and!263607 (not b_next!94565) b_and!263587 b_and!263593 (not b_next!94559) b_and!263589 (not b_next!94549) b_and!263591 b_and!263605 b_and!263603 (not b_next!94545) (not b_next!94555) (not b_next!94557) b_and!263623 (not b_next!94547) b_and!263609 b_and!263625)
