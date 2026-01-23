; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299058 () Bool)

(assert start!299058)

(declare-fun b!3188298 () Bool)

(declare-fun b_free!84201 () Bool)

(declare-fun b_next!84905 () Bool)

(assert (=> b!3188298 (= b_free!84201 (not b_next!84905))))

(declare-fun tp!1007955 () Bool)

(declare-fun b_and!211151 () Bool)

(assert (=> b!3188298 (= tp!1007955 b_and!211151)))

(declare-fun b_free!84203 () Bool)

(declare-fun b_next!84907 () Bool)

(assert (=> b!3188298 (= b_free!84203 (not b_next!84907))))

(declare-fun tp!1007959 () Bool)

(declare-fun b_and!211153 () Bool)

(assert (=> b!3188298 (= tp!1007959 b_and!211153)))

(declare-fun b!3188305 () Bool)

(declare-fun b_free!84205 () Bool)

(declare-fun b_next!84909 () Bool)

(assert (=> b!3188305 (= b_free!84205 (not b_next!84909))))

(declare-fun tp!1007960 () Bool)

(declare-fun b_and!211155 () Bool)

(assert (=> b!3188305 (= tp!1007960 b_and!211155)))

(declare-fun b_free!84207 () Bool)

(declare-fun b_next!84911 () Bool)

(assert (=> b!3188305 (= b_free!84207 (not b_next!84911))))

(declare-fun tp!1007950 () Bool)

(declare-fun b_and!211157 () Bool)

(assert (=> b!3188305 (= tp!1007950 b_and!211157)))

(declare-fun b!3188316 () Bool)

(declare-fun b_free!84209 () Bool)

(declare-fun b_next!84913 () Bool)

(assert (=> b!3188316 (= b_free!84209 (not b_next!84913))))

(declare-fun tp!1007953 () Bool)

(declare-fun b_and!211159 () Bool)

(assert (=> b!3188316 (= tp!1007953 b_and!211159)))

(declare-fun b_free!84211 () Bool)

(declare-fun b_next!84915 () Bool)

(assert (=> b!3188316 (= b_free!84211 (not b_next!84915))))

(declare-fun tp!1007958 () Bool)

(declare-fun b_and!211161 () Bool)

(assert (=> b!3188316 (= tp!1007958 b_and!211161)))

(declare-fun e!1986765 () Bool)

(declare-fun b!3188286 () Bool)

(declare-fun e!1986759 () Bool)

(declare-datatypes ((C!19984 0))(
  ( (C!19985 (val!12040 Int)) )
))
(declare-datatypes ((Regex!9899 0))(
  ( (ElementMatch!9899 (c!535510 C!19984)) (Concat!15269 (regOne!20310 Regex!9899) (regTwo!20310 Regex!9899)) (EmptyExpr!9899) (Star!9899 (reg!10228 Regex!9899)) (EmptyLang!9899) (Union!9899 (regOne!20311 Regex!9899) (regTwo!20311 Regex!9899)) )
))
(declare-datatypes ((String!40183 0))(
  ( (String!40184 (value!166924 String)) )
))
(declare-datatypes ((List!35950 0))(
  ( (Nil!35826) (Cons!35826 (h!41246 (_ BitVec 16)) (t!235999 List!35950)) )
))
(declare-datatypes ((TokenValue!5370 0))(
  ( (FloatLiteralValue!10740 (text!38035 List!35950)) (TokenValueExt!5369 (__x!22957 Int)) (Broken!26850 (value!166925 List!35950)) (Object!5493) (End!5370) (Def!5370) (Underscore!5370) (Match!5370) (Else!5370) (Error!5370) (Case!5370) (If!5370) (Extends!5370) (Abstract!5370) (Class!5370) (Val!5370) (DelimiterValue!10740 (del!5430 List!35950)) (KeywordValue!5376 (value!166926 List!35950)) (CommentValue!10740 (value!166927 List!35950)) (WhitespaceValue!10740 (value!166928 List!35950)) (IndentationValue!5370 (value!166929 List!35950)) (String!40185) (Int32!5370) (Broken!26851 (value!166930 List!35950)) (Boolean!5371) (Unit!50249) (OperatorValue!5373 (op!5430 List!35950)) (IdentifierValue!10740 (value!166931 List!35950)) (IdentifierValue!10741 (value!166932 List!35950)) (WhitespaceValue!10741 (value!166933 List!35950)) (True!10740) (False!10740) (Broken!26852 (value!166934 List!35950)) (Broken!26853 (value!166935 List!35950)) (True!10741) (RightBrace!5370) (RightBracket!5370) (Colon!5370) (Null!5370) (Comma!5370) (LeftBracket!5370) (False!10741) (LeftBrace!5370) (ImaginaryLiteralValue!5370 (text!38036 List!35950)) (StringLiteralValue!16110 (value!166936 List!35950)) (EOFValue!5370 (value!166937 List!35950)) (IdentValue!5370 (value!166938 List!35950)) (DelimiterValue!10741 (value!166939 List!35950)) (DedentValue!5370 (value!166940 List!35950)) (NewLineValue!5370 (value!166941 List!35950)) (IntegerValue!16110 (value!166942 (_ BitVec 32)) (text!38037 List!35950)) (IntegerValue!16111 (value!166943 Int) (text!38038 List!35950)) (Times!5370) (Or!5370) (Equal!5370) (Minus!5370) (Broken!26854 (value!166944 List!35950)) (And!5370) (Div!5370) (LessEqual!5370) (Mod!5370) (Concat!15270) (Not!5370) (Plus!5370) (SpaceValue!5370 (value!166945 List!35950)) (IntegerValue!16112 (value!166946 Int) (text!38039 List!35950)) (StringLiteralValue!16111 (text!38040 List!35950)) (FloatLiteralValue!10741 (text!38041 List!35950)) (BytesLiteralValue!5370 (value!166947 List!35950)) (CommentValue!10741 (value!166948 List!35950)) (StringLiteralValue!16112 (value!166949 List!35950)) (ErrorTokenValue!5370 (msg!5431 List!35950)) )
))
(declare-datatypes ((List!35951 0))(
  ( (Nil!35827) (Cons!35827 (h!41247 C!19984) (t!236000 List!35951)) )
))
(declare-datatypes ((IArray!21315 0))(
  ( (IArray!21316 (innerList!10715 List!35951)) )
))
(declare-datatypes ((Conc!10655 0))(
  ( (Node!10655 (left!27863 Conc!10655) (right!28193 Conc!10655) (csize!21540 Int) (cheight!10866 Int)) (Leaf!16836 (xs!13773 IArray!21315) (csize!21541 Int)) (Empty!10655) )
))
(declare-datatypes ((BalanceConc!20924 0))(
  ( (BalanceConc!20925 (c!535511 Conc!10655)) )
))
(declare-datatypes ((TokenValueInjection!10168 0))(
  ( (TokenValueInjection!10169 (toValue!7204 Int) (toChars!7063 Int)) )
))
(declare-datatypes ((Rule!10080 0))(
  ( (Rule!10081 (regex!5140 Regex!9899) (tag!5656 String!40183) (isSeparator!5140 Bool) (transformation!5140 TokenValueInjection!10168)) )
))
(declare-datatypes ((Token!9646 0))(
  ( (Token!9647 (value!166950 TokenValue!5370) (rule!7568 Rule!10080) (size!27032 Int) (originalCharacters!5854 List!35951)) )
))
(declare-datatypes ((List!35952 0))(
  ( (Nil!35828) (Cons!35828 (h!41248 Token!9646) (t!236001 List!35952)) )
))
(declare-fun tokens!494 () List!35952)

(declare-fun tp!1007948 () Bool)

(declare-fun inv!48680 (String!40183) Bool)

(declare-fun inv!48683 (TokenValueInjection!10168) Bool)

(assert (=> b!3188286 (= e!1986759 (and tp!1007948 (inv!48680 (tag!5656 (rule!7568 (h!41248 tokens!494)))) (inv!48683 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) e!1986765))))

(declare-fun b!3188287 () Bool)

(declare-datatypes ((Unit!50250 0))(
  ( (Unit!50251) )
))
(declare-fun e!1986771 () Unit!50250)

(declare-fun Unit!50252 () Unit!50250)

(assert (=> b!3188287 (= e!1986771 Unit!50252)))

(declare-fun b!3188288 () Bool)

(declare-fun res!1296365 () Bool)

(declare-fun e!1986749 () Bool)

(assert (=> b!3188288 (=> (not res!1296365) (not e!1986749))))

(declare-datatypes ((LexerInterface!4729 0))(
  ( (LexerInterfaceExt!4726 (__x!22958 Int)) (Lexer!4727) )
))
(declare-fun thiss!18206 () LexerInterface!4729)

(declare-datatypes ((List!35953 0))(
  ( (Nil!35829) (Cons!35829 (h!41249 Rule!10080) (t!236002 List!35953)) )
))
(declare-fun rules!2135 () List!35953)

(declare-fun rulesInvariant!4126 (LexerInterface!4729 List!35953) Bool)

(assert (=> b!3188288 (= res!1296365 (rulesInvariant!4126 thiss!18206 rules!2135))))

(declare-fun b!3188289 () Bool)

(declare-fun Unit!50253 () Unit!50250)

(assert (=> b!3188289 (= e!1986771 Unit!50253)))

(declare-fun lt!1072962 () C!19984)

(declare-fun separatorToken!241 () Token!9646)

(declare-fun lt!1072970 () Unit!50250)

(declare-fun lt!1072961 () List!35951)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!338 (Regex!9899 List!35951 C!19984) Unit!50250)

(assert (=> b!3188289 (= lt!1072970 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!338 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961 lt!1072962))))

(declare-fun res!1296361 () Bool)

(declare-fun matchR!4557 (Regex!9899 List!35951) Bool)

(assert (=> b!3188289 (= res!1296361 (not (matchR!4557 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961)))))

(declare-fun e!1986770 () Bool)

(assert (=> b!3188289 (=> (not res!1296361) (not e!1986770))))

(assert (=> b!3188289 e!1986770))

(declare-fun e!1986758 () Bool)

(declare-fun e!1986769 () Bool)

(declare-fun b!3188290 () Bool)

(declare-fun tp!1007954 () Bool)

(declare-fun inv!48684 (Token!9646) Bool)

(assert (=> b!3188290 (= e!1986769 (and (inv!48684 (h!41248 tokens!494)) e!1986758 tp!1007954))))

(declare-fun b!3188291 () Bool)

(declare-fun res!1296364 () Bool)

(declare-fun e!1986772 () Bool)

(assert (=> b!3188291 (=> (not res!1296364) (not e!1986772))))

(declare-fun sepAndNonSepRulesDisjointChars!1334 (List!35953 List!35953) Bool)

(assert (=> b!3188291 (= res!1296364 (sepAndNonSepRulesDisjointChars!1334 rules!2135 rules!2135))))

(declare-fun b!3188292 () Bool)

(declare-fun e!1986746 () Bool)

(declare-fun e!1986757 () Bool)

(assert (=> b!3188292 (= e!1986746 e!1986757)))

(declare-fun res!1296355 () Bool)

(assert (=> b!3188292 (=> res!1296355 e!1986757)))

(declare-fun lt!1072955 () BalanceConc!20924)

(declare-datatypes ((IArray!21317 0))(
  ( (IArray!21318 (innerList!10716 List!35952)) )
))
(declare-datatypes ((Conc!10656 0))(
  ( (Node!10656 (left!27864 Conc!10656) (right!28194 Conc!10656) (csize!21542 Int) (cheight!10867 Int)) (Leaf!16837 (xs!13774 IArray!21317) (csize!21543 Int)) (Empty!10656) )
))
(declare-datatypes ((BalanceConc!20926 0))(
  ( (BalanceConc!20927 (c!535512 Conc!10656)) )
))
(declare-fun isEmpty!19961 (BalanceConc!20926) Bool)

(declare-datatypes ((tuple2!35194 0))(
  ( (tuple2!35195 (_1!20731 BalanceConc!20926) (_2!20731 BalanceConc!20924)) )
))
(declare-fun lex!2069 (LexerInterface!4729 List!35953 BalanceConc!20924) tuple2!35194)

(assert (=> b!3188292 (= res!1296355 (isEmpty!19961 (_1!20731 (lex!2069 thiss!18206 rules!2135 lt!1072955))))))

(declare-fun lt!1072969 () List!35951)

(declare-fun seqFromList!3359 (List!35951) BalanceConc!20924)

(assert (=> b!3188292 (= lt!1072955 (seqFromList!3359 lt!1072969))))

(declare-fun b!3188293 () Bool)

(declare-fun res!1296354 () Bool)

(assert (=> b!3188293 (=> (not res!1296354) (not e!1986772))))

(assert (=> b!3188293 (= res!1296354 (isSeparator!5140 (rule!7568 separatorToken!241)))))

(declare-fun b!3188294 () Bool)

(declare-fun res!1296353 () Bool)

(assert (=> b!3188294 (=> res!1296353 e!1986746)))

(declare-fun rulesProduceIndividualToken!2221 (LexerInterface!4729 List!35953 Token!9646) Bool)

(assert (=> b!3188294 (= res!1296353 (not (rulesProduceIndividualToken!2221 thiss!18206 rules!2135 (h!41248 tokens!494))))))

(declare-fun b!3188295 () Bool)

(declare-fun e!1986744 () Bool)

(declare-fun e!1986745 () Bool)

(assert (=> b!3188295 (= e!1986744 e!1986745)))

(declare-fun res!1296359 () Bool)

(assert (=> b!3188295 (=> res!1296359 e!1986745)))

(declare-fun lt!1072956 () Bool)

(assert (=> b!3188295 (= res!1296359 lt!1072956)))

(declare-fun lt!1072973 () Unit!50250)

(assert (=> b!3188295 (= lt!1072973 e!1986771)))

(declare-fun c!535509 () Bool)

(assert (=> b!3188295 (= c!535509 lt!1072956)))

(declare-fun contains!6361 (List!35951 C!19984) Bool)

(declare-fun usedCharacters!484 (Regex!9899) List!35951)

(assert (=> b!3188295 (= lt!1072956 (not (contains!6361 (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241))) lt!1072962)))))

(declare-fun head!6973 (List!35951) C!19984)

(assert (=> b!3188295 (= lt!1072962 (head!6973 lt!1072961))))

(declare-datatypes ((tuple2!35196 0))(
  ( (tuple2!35197 (_1!20732 Token!9646) (_2!20732 List!35951)) )
))
(declare-datatypes ((Option!7013 0))(
  ( (None!7012) (Some!7012 (v!35504 tuple2!35196)) )
))
(declare-fun maxPrefixOneRule!1534 (LexerInterface!4729 Rule!10080 List!35951) Option!7013)

(declare-fun apply!8074 (TokenValueInjection!10168 BalanceConc!20924) TokenValue!5370)

(declare-fun size!27033 (List!35951) Int)

(assert (=> b!3188295 (= (maxPrefixOneRule!1534 thiss!18206 (rule!7568 (h!41248 tokens!494)) lt!1072969) (Some!7012 (tuple2!35197 (Token!9647 (apply!8074 (transformation!5140 (rule!7568 (h!41248 tokens!494))) lt!1072955) (rule!7568 (h!41248 tokens!494)) (size!27033 lt!1072969) lt!1072969) Nil!35827)))))

(declare-fun lt!1072960 () Unit!50250)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!647 (LexerInterface!4729 List!35953 List!35951 List!35951 List!35951 Rule!10080) Unit!50250)

(assert (=> b!3188295 (= lt!1072960 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!647 thiss!18206 rules!2135 lt!1072969 lt!1072969 Nil!35827 (rule!7568 (h!41248 tokens!494))))))

(declare-fun e!1986764 () Bool)

(assert (=> b!3188295 e!1986764))

(declare-fun res!1296357 () Bool)

(assert (=> b!3188295 (=> (not res!1296357) (not e!1986764))))

(declare-datatypes ((Option!7014 0))(
  ( (None!7013) (Some!7013 (v!35505 Rule!10080)) )
))
(declare-fun lt!1072971 () Option!7014)

(declare-fun isDefined!5490 (Option!7014) Bool)

(assert (=> b!3188295 (= res!1296357 (isDefined!5490 lt!1072971))))

(declare-fun getRuleFromTag!869 (LexerInterface!4729 List!35953 String!40183) Option!7014)

(assert (=> b!3188295 (= lt!1072971 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 separatorToken!241))))))

(declare-fun lt!1072976 () Unit!50250)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!869 (LexerInterface!4729 List!35953 List!35951 Token!9646) Unit!50250)

(assert (=> b!3188295 (= lt!1072976 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!869 thiss!18206 rules!2135 lt!1072961 separatorToken!241))))

(declare-fun e!1986761 () Bool)

(assert (=> b!3188295 e!1986761))

(declare-fun res!1296369 () Bool)

(assert (=> b!3188295 (=> (not res!1296369) (not e!1986761))))

(declare-fun lt!1072967 () Option!7014)

(assert (=> b!3188295 (= res!1296369 (isDefined!5490 lt!1072967))))

(assert (=> b!3188295 (= lt!1072967 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 (h!41248 tokens!494)))))))

(declare-fun lt!1072954 () Unit!50250)

(assert (=> b!3188295 (= lt!1072954 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!869 thiss!18206 rules!2135 lt!1072969 (h!41248 tokens!494)))))

(declare-fun lt!1072950 () Unit!50250)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!790 (LexerInterface!4729 List!35953 List!35952 Token!9646) Unit!50250)

(assert (=> b!3188295 (= lt!1072950 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!790 thiss!18206 rules!2135 tokens!494 (h!41248 tokens!494)))))

(declare-fun isEmpty!19962 (List!35951) Bool)

(declare-fun getSuffix!1356 (List!35951 List!35951) List!35951)

(assert (=> b!3188295 (isEmpty!19962 (getSuffix!1356 lt!1072969 lt!1072969))))

(declare-fun lt!1072968 () Unit!50250)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!34 (List!35951) Unit!50250)

(assert (=> b!3188295 (= lt!1072968 (lemmaGetSuffixOnListWithItSelfIsEmpty!34 lt!1072969))))

(declare-fun b!3188296 () Bool)

(declare-fun tp!1007956 () Bool)

(declare-fun e!1986767 () Bool)

(declare-fun e!1986754 () Bool)

(declare-fun inv!21 (TokenValue!5370) Bool)

(assert (=> b!3188296 (= e!1986767 (and (inv!21 (value!166950 separatorToken!241)) e!1986754 tp!1007956))))

(declare-fun b!3188297 () Bool)

(declare-fun res!1296368 () Bool)

(assert (=> b!3188297 (=> (not res!1296368) (not e!1986772))))

(assert (=> b!3188297 (= res!1296368 (rulesProduceIndividualToken!2221 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1986760 () Bool)

(assert (=> b!3188298 (= e!1986760 (and tp!1007955 tp!1007959))))

(declare-fun b!3188299 () Bool)

(declare-fun tp!1007951 () Bool)

(assert (=> b!3188299 (= e!1986754 (and tp!1007951 (inv!48680 (tag!5656 (rule!7568 separatorToken!241))) (inv!48683 (transformation!5140 (rule!7568 separatorToken!241))) e!1986760))))

(declare-fun b!3188300 () Bool)

(declare-fun res!1296367 () Bool)

(assert (=> b!3188300 (=> (not res!1296367) (not e!1986772))))

(get-info :version)

(assert (=> b!3188300 (= res!1296367 (and (not ((_ is Nil!35828) tokens!494)) ((_ is Nil!35828) (t!236001 tokens!494))))))

(declare-fun b!3188301 () Bool)

(declare-fun e!1986751 () Bool)

(assert (=> b!3188301 (= e!1986761 e!1986751)))

(declare-fun res!1296351 () Bool)

(assert (=> b!3188301 (=> (not res!1296351) (not e!1986751))))

(declare-fun lt!1072952 () Rule!10080)

(assert (=> b!3188301 (= res!1296351 (matchR!4557 (regex!5140 lt!1072952) lt!1072969))))

(declare-fun get!11405 (Option!7014) Rule!10080)

(assert (=> b!3188301 (= lt!1072952 (get!11405 lt!1072967))))

(declare-fun b!3188302 () Bool)

(declare-fun e!1986750 () Bool)

(assert (=> b!3188302 (= e!1986772 (not e!1986750))))

(declare-fun res!1296356 () Bool)

(assert (=> b!3188302 (=> res!1296356 e!1986750)))

(declare-fun lt!1072966 () List!35951)

(declare-fun lt!1072965 () List!35951)

(assert (=> b!3188302 (= res!1296356 (not (= lt!1072966 lt!1072965)))))

(declare-fun printList!1283 (LexerInterface!4729 List!35952) List!35951)

(assert (=> b!3188302 (= lt!1072965 (printList!1283 thiss!18206 (Cons!35828 (h!41248 tokens!494) Nil!35828)))))

(declare-fun lt!1072963 () BalanceConc!20924)

(declare-fun list!12725 (BalanceConc!20924) List!35951)

(assert (=> b!3188302 (= lt!1072966 (list!12725 lt!1072963))))

(declare-fun lt!1072953 () BalanceConc!20926)

(declare-fun printTailRec!1228 (LexerInterface!4729 BalanceConc!20926 Int BalanceConc!20924) BalanceConc!20924)

(assert (=> b!3188302 (= lt!1072963 (printTailRec!1228 thiss!18206 lt!1072953 0 (BalanceConc!20925 Empty!10655)))))

(declare-fun print!1796 (LexerInterface!4729 BalanceConc!20926) BalanceConc!20924)

(assert (=> b!3188302 (= lt!1072963 (print!1796 thiss!18206 lt!1072953))))

(declare-fun singletonSeq!2236 (Token!9646) BalanceConc!20926)

(assert (=> b!3188302 (= lt!1072953 (singletonSeq!2236 (h!41248 tokens!494)))))

(declare-fun b!3188303 () Bool)

(declare-fun e!1986752 () Bool)

(assert (=> b!3188303 (= e!1986752 e!1986744)))

(declare-fun res!1296366 () Bool)

(assert (=> b!3188303 (=> res!1296366 e!1986744)))

(declare-fun lt!1072972 () List!35951)

(declare-fun lt!1072959 () List!35951)

(assert (=> b!3188303 (= res!1296366 (not (= lt!1072972 lt!1072959)))))

(declare-fun ++!8576 (List!35951 List!35951) List!35951)

(assert (=> b!3188303 (= lt!1072959 (++!8576 lt!1072969 lt!1072961))))

(declare-fun lt!1072951 () BalanceConc!20924)

(assert (=> b!3188303 (= lt!1072972 (list!12725 lt!1072951))))

(declare-fun charsOf!3162 (Token!9646) BalanceConc!20924)

(assert (=> b!3188303 (= lt!1072961 (list!12725 (charsOf!3162 separatorToken!241)))))

(declare-fun lt!1072975 () BalanceConc!20926)

(declare-fun printWithSeparatorToken!38 (LexerInterface!4729 BalanceConc!20926 Token!9646) BalanceConc!20924)

(assert (=> b!3188303 (= lt!1072951 (printWithSeparatorToken!38 thiss!18206 lt!1072975 separatorToken!241))))

(declare-fun b!3188304 () Bool)

(declare-fun rulesValidInductive!1763 (LexerInterface!4729 List!35953) Bool)

(assert (=> b!3188304 (= e!1986745 (rulesValidInductive!1763 thiss!18206 rules!2135))))

(declare-fun lt!1072949 () Option!7013)

(declare-fun maxPrefix!2407 (LexerInterface!4729 List!35953 List!35951) Option!7013)

(assert (=> b!3188304 (= lt!1072949 (maxPrefix!2407 thiss!18206 rules!2135 lt!1072972))))

(assert (=> b!3188304 (= (maxPrefix!2407 thiss!18206 rules!2135 lt!1072959) (Some!7012 (tuple2!35197 (h!41248 tokens!494) lt!1072961)))))

(declare-fun lt!1072974 () Unit!50250)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!118 (LexerInterface!4729 List!35953 Token!9646 Rule!10080 List!35951 Rule!10080) Unit!50250)

(assert (=> b!3188304 (= lt!1072974 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!118 thiss!18206 rules!2135 (h!41248 tokens!494) (rule!7568 (h!41248 tokens!494)) lt!1072961 (rule!7568 separatorToken!241)))))

(assert (=> b!3188304 (not (contains!6361 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494)))) lt!1072962))))

(declare-fun lt!1072958 () Unit!50250)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!116 (LexerInterface!4729 List!35953 List!35953 Rule!10080 Rule!10080 C!19984) Unit!50250)

(assert (=> b!3188304 (= lt!1072958 (lemmaNonSepRuleNotContainsCharContainedInASepRule!116 thiss!18206 rules!2135 rules!2135 (rule!7568 (h!41248 tokens!494)) (rule!7568 separatorToken!241) lt!1072962))))

(assert (=> b!3188305 (= e!1986765 (and tp!1007960 tp!1007950))))

(declare-fun b!3188306 () Bool)

(declare-fun e!1986756 () Bool)

(declare-fun lt!1072957 () Rule!10080)

(assert (=> b!3188306 (= e!1986756 (= (rule!7568 separatorToken!241) lt!1072957))))

(declare-fun b!3188307 () Bool)

(assert (=> b!3188307 (= e!1986757 e!1986752)))

(declare-fun res!1296358 () Bool)

(assert (=> b!3188307 (=> res!1296358 e!1986752)))

(assert (=> b!3188307 (= res!1296358 (isSeparator!5140 (rule!7568 (h!41248 tokens!494))))))

(declare-fun lt!1072964 () Unit!50250)

(declare-fun lambda!116603 () Int)

(declare-fun forallContained!1123 (List!35952 Int Token!9646) Unit!50250)

(assert (=> b!3188307 (= lt!1072964 (forallContained!1123 tokens!494 lambda!116603 (h!41248 tokens!494)))))

(declare-fun res!1296352 () Bool)

(assert (=> start!299058 (=> (not res!1296352) (not e!1986749))))

(assert (=> start!299058 (= res!1296352 ((_ is Lexer!4727) thiss!18206))))

(assert (=> start!299058 e!1986749))

(assert (=> start!299058 true))

(declare-fun e!1986747 () Bool)

(assert (=> start!299058 e!1986747))

(assert (=> start!299058 (and (inv!48684 separatorToken!241) e!1986767)))

(assert (=> start!299058 e!1986769))

(declare-fun b!3188308 () Bool)

(assert (=> b!3188308 (= e!1986751 (= (rule!7568 (h!41248 tokens!494)) lt!1072952))))

(declare-fun b!3188309 () Bool)

(declare-fun res!1296370 () Bool)

(assert (=> b!3188309 (=> (not res!1296370) (not e!1986772))))

(declare-fun forall!7268 (List!35952 Int) Bool)

(assert (=> b!3188309 (= res!1296370 (forall!7268 tokens!494 lambda!116603))))

(declare-fun b!3188310 () Bool)

(assert (=> b!3188310 (= e!1986749 e!1986772)))

(declare-fun res!1296363 () Bool)

(assert (=> b!3188310 (=> (not res!1296363) (not e!1986772))))

(declare-fun rulesProduceEachTokenIndividually!1180 (LexerInterface!4729 List!35953 BalanceConc!20926) Bool)

(assert (=> b!3188310 (= res!1296363 (rulesProduceEachTokenIndividually!1180 thiss!18206 rules!2135 lt!1072975))))

(declare-fun seqFromList!3360 (List!35952) BalanceConc!20926)

(assert (=> b!3188310 (= lt!1072975 (seqFromList!3360 tokens!494))))

(declare-fun b!3188311 () Bool)

(declare-fun res!1296371 () Bool)

(assert (=> b!3188311 (=> (not res!1296371) (not e!1986749))))

(declare-fun isEmpty!19963 (List!35953) Bool)

(assert (=> b!3188311 (= res!1296371 (not (isEmpty!19963 rules!2135)))))

(declare-fun b!3188312 () Bool)

(declare-fun e!1986762 () Bool)

(declare-fun tp!1007949 () Bool)

(assert (=> b!3188312 (= e!1986747 (and e!1986762 tp!1007949))))

(declare-fun b!3188313 () Bool)

(assert (=> b!3188313 (= e!1986750 e!1986746)))

(declare-fun res!1296360 () Bool)

(assert (=> b!3188313 (=> res!1296360 e!1986746)))

(assert (=> b!3188313 (= res!1296360 (or (not (= lt!1072965 lt!1072969)) (not (= lt!1072966 lt!1072969))))))

(assert (=> b!3188313 (= lt!1072969 (list!12725 (charsOf!3162 (h!41248 tokens!494))))))

(declare-fun tp!1007952 () Bool)

(declare-fun b!3188314 () Bool)

(assert (=> b!3188314 (= e!1986758 (and (inv!21 (value!166950 (h!41248 tokens!494))) e!1986759 tp!1007952))))

(declare-fun b!3188315 () Bool)

(assert (=> b!3188315 (= e!1986770 false)))

(declare-fun e!1986755 () Bool)

(assert (=> b!3188316 (= e!1986755 (and tp!1007953 tp!1007958))))

(declare-fun tp!1007957 () Bool)

(declare-fun b!3188317 () Bool)

(assert (=> b!3188317 (= e!1986762 (and tp!1007957 (inv!48680 (tag!5656 (h!41249 rules!2135))) (inv!48683 (transformation!5140 (h!41249 rules!2135))) e!1986755))))

(declare-fun b!3188318 () Bool)

(assert (=> b!3188318 (= e!1986764 e!1986756)))

(declare-fun res!1296362 () Bool)

(assert (=> b!3188318 (=> (not res!1296362) (not e!1986756))))

(assert (=> b!3188318 (= res!1296362 (matchR!4557 (regex!5140 lt!1072957) lt!1072961))))

(assert (=> b!3188318 (= lt!1072957 (get!11405 lt!1072971))))

(assert (= (and start!299058 res!1296352) b!3188311))

(assert (= (and b!3188311 res!1296371) b!3188288))

(assert (= (and b!3188288 res!1296365) b!3188310))

(assert (= (and b!3188310 res!1296363) b!3188297))

(assert (= (and b!3188297 res!1296368) b!3188293))

(assert (= (and b!3188293 res!1296354) b!3188309))

(assert (= (and b!3188309 res!1296370) b!3188291))

(assert (= (and b!3188291 res!1296364) b!3188300))

(assert (= (and b!3188300 res!1296367) b!3188302))

(assert (= (and b!3188302 (not res!1296356)) b!3188313))

(assert (= (and b!3188313 (not res!1296360)) b!3188294))

(assert (= (and b!3188294 (not res!1296353)) b!3188292))

(assert (= (and b!3188292 (not res!1296355)) b!3188307))

(assert (= (and b!3188307 (not res!1296358)) b!3188303))

(assert (= (and b!3188303 (not res!1296366)) b!3188295))

(assert (= (and b!3188295 res!1296369) b!3188301))

(assert (= (and b!3188301 res!1296351) b!3188308))

(assert (= (and b!3188295 res!1296357) b!3188318))

(assert (= (and b!3188318 res!1296362) b!3188306))

(assert (= (and b!3188295 c!535509) b!3188289))

(assert (= (and b!3188295 (not c!535509)) b!3188287))

(assert (= (and b!3188289 res!1296361) b!3188315))

(assert (= (and b!3188295 (not res!1296359)) b!3188304))

(assert (= b!3188317 b!3188316))

(assert (= b!3188312 b!3188317))

(assert (= (and start!299058 ((_ is Cons!35829) rules!2135)) b!3188312))

(assert (= b!3188299 b!3188298))

(assert (= b!3188296 b!3188299))

(assert (= start!299058 b!3188296))

(assert (= b!3188286 b!3188305))

(assert (= b!3188314 b!3188286))

(assert (= b!3188290 b!3188314))

(assert (= (and start!299058 ((_ is Cons!35828) tokens!494)) b!3188290))

(declare-fun m!3446847 () Bool)

(assert (=> b!3188310 m!3446847))

(declare-fun m!3446849 () Bool)

(assert (=> b!3188310 m!3446849))

(declare-fun m!3446851 () Bool)

(assert (=> b!3188291 m!3446851))

(declare-fun m!3446853 () Bool)

(assert (=> b!3188296 m!3446853))

(declare-fun m!3446855 () Bool)

(assert (=> b!3188294 m!3446855))

(declare-fun m!3446857 () Bool)

(assert (=> b!3188304 m!3446857))

(declare-fun m!3446859 () Bool)

(assert (=> b!3188304 m!3446859))

(declare-fun m!3446861 () Bool)

(assert (=> b!3188304 m!3446861))

(declare-fun m!3446863 () Bool)

(assert (=> b!3188304 m!3446863))

(declare-fun m!3446865 () Bool)

(assert (=> b!3188304 m!3446865))

(declare-fun m!3446867 () Bool)

(assert (=> b!3188304 m!3446867))

(declare-fun m!3446869 () Bool)

(assert (=> b!3188304 m!3446869))

(assert (=> b!3188304 m!3446863))

(declare-fun m!3446871 () Bool)

(assert (=> b!3188303 m!3446871))

(declare-fun m!3446873 () Bool)

(assert (=> b!3188303 m!3446873))

(declare-fun m!3446875 () Bool)

(assert (=> b!3188303 m!3446875))

(assert (=> b!3188303 m!3446871))

(declare-fun m!3446877 () Bool)

(assert (=> b!3188303 m!3446877))

(declare-fun m!3446879 () Bool)

(assert (=> b!3188303 m!3446879))

(declare-fun m!3446881 () Bool)

(assert (=> b!3188309 m!3446881))

(declare-fun m!3446883 () Bool)

(assert (=> b!3188295 m!3446883))

(declare-fun m!3446885 () Bool)

(assert (=> b!3188295 m!3446885))

(declare-fun m!3446887 () Bool)

(assert (=> b!3188295 m!3446887))

(declare-fun m!3446889 () Bool)

(assert (=> b!3188295 m!3446889))

(declare-fun m!3446891 () Bool)

(assert (=> b!3188295 m!3446891))

(declare-fun m!3446893 () Bool)

(assert (=> b!3188295 m!3446893))

(declare-fun m!3446895 () Bool)

(assert (=> b!3188295 m!3446895))

(declare-fun m!3446897 () Bool)

(assert (=> b!3188295 m!3446897))

(declare-fun m!3446899 () Bool)

(assert (=> b!3188295 m!3446899))

(declare-fun m!3446901 () Bool)

(assert (=> b!3188295 m!3446901))

(declare-fun m!3446903 () Bool)

(assert (=> b!3188295 m!3446903))

(assert (=> b!3188295 m!3446883))

(declare-fun m!3446905 () Bool)

(assert (=> b!3188295 m!3446905))

(declare-fun m!3446907 () Bool)

(assert (=> b!3188295 m!3446907))

(declare-fun m!3446909 () Bool)

(assert (=> b!3188295 m!3446909))

(assert (=> b!3188295 m!3446905))

(declare-fun m!3446911 () Bool)

(assert (=> b!3188295 m!3446911))

(declare-fun m!3446913 () Bool)

(assert (=> b!3188295 m!3446913))

(declare-fun m!3446915 () Bool)

(assert (=> b!3188295 m!3446915))

(declare-fun m!3446917 () Bool)

(assert (=> b!3188289 m!3446917))

(declare-fun m!3446919 () Bool)

(assert (=> b!3188289 m!3446919))

(declare-fun m!3446921 () Bool)

(assert (=> b!3188317 m!3446921))

(declare-fun m!3446923 () Bool)

(assert (=> b!3188317 m!3446923))

(declare-fun m!3446925 () Bool)

(assert (=> b!3188311 m!3446925))

(declare-fun m!3446927 () Bool)

(assert (=> b!3188302 m!3446927))

(declare-fun m!3446929 () Bool)

(assert (=> b!3188302 m!3446929))

(declare-fun m!3446931 () Bool)

(assert (=> b!3188302 m!3446931))

(declare-fun m!3446933 () Bool)

(assert (=> b!3188302 m!3446933))

(declare-fun m!3446935 () Bool)

(assert (=> b!3188302 m!3446935))

(declare-fun m!3446937 () Bool)

(assert (=> b!3188307 m!3446937))

(declare-fun m!3446939 () Bool)

(assert (=> b!3188301 m!3446939))

(declare-fun m!3446941 () Bool)

(assert (=> b!3188301 m!3446941))

(declare-fun m!3446943 () Bool)

(assert (=> b!3188313 m!3446943))

(assert (=> b!3188313 m!3446943))

(declare-fun m!3446945 () Bool)

(assert (=> b!3188313 m!3446945))

(declare-fun m!3446947 () Bool)

(assert (=> b!3188290 m!3446947))

(declare-fun m!3446949 () Bool)

(assert (=> b!3188299 m!3446949))

(declare-fun m!3446951 () Bool)

(assert (=> b!3188299 m!3446951))

(declare-fun m!3446953 () Bool)

(assert (=> b!3188288 m!3446953))

(declare-fun m!3446955 () Bool)

(assert (=> b!3188297 m!3446955))

(declare-fun m!3446957 () Bool)

(assert (=> b!3188286 m!3446957))

(declare-fun m!3446959 () Bool)

(assert (=> b!3188286 m!3446959))

(declare-fun m!3446961 () Bool)

(assert (=> b!3188314 m!3446961))

(declare-fun m!3446963 () Bool)

(assert (=> start!299058 m!3446963))

(declare-fun m!3446965 () Bool)

(assert (=> b!3188318 m!3446965))

(declare-fun m!3446967 () Bool)

(assert (=> b!3188318 m!3446967))

(declare-fun m!3446969 () Bool)

(assert (=> b!3188292 m!3446969))

(declare-fun m!3446971 () Bool)

(assert (=> b!3188292 m!3446971))

(declare-fun m!3446973 () Bool)

(assert (=> b!3188292 m!3446973))

(check-sat (not b!3188302) (not b!3188291) (not b!3188290) (not b_next!84905) (not b!3188295) (not b!3188299) (not b!3188297) (not b!3188301) (not b!3188289) b_and!211153 (not b!3188312) b_and!211155 b_and!211159 (not b!3188294) (not b_next!84907) (not b_next!84909) (not b!3188309) (not b!3188303) (not b!3188310) (not b!3188317) (not b!3188318) (not b_next!84911) (not b!3188296) b_and!211151 (not b!3188304) (not start!299058) (not b!3188292) (not b!3188307) (not b!3188313) b_and!211161 (not b_next!84913) (not b_next!84915) (not b!3188288) (not b!3188314) (not b!3188311) b_and!211157 (not b!3188286))
(check-sat b_and!211153 (not b_next!84907) (not b_next!84909) (not b_next!84905) (not b_next!84911) b_and!211151 (not b_next!84915) b_and!211157 b_and!211155 b_and!211159 b_and!211161 (not b_next!84913))
(get-model)

(declare-fun d!872521 () Bool)

(declare-fun lt!1073001 () BalanceConc!20924)

(declare-fun printListTailRec!547 (LexerInterface!4729 List!35952 List!35951) List!35951)

(declare-fun dropList!1064 (BalanceConc!20926 Int) List!35952)

(assert (=> d!872521 (= (list!12725 lt!1073001) (printListTailRec!547 thiss!18206 (dropList!1064 lt!1072953 0) (list!12725 (BalanceConc!20925 Empty!10655))))))

(declare-fun e!1986804 () BalanceConc!20924)

(assert (=> d!872521 (= lt!1073001 e!1986804)))

(declare-fun c!535524 () Bool)

(declare-fun size!27035 (BalanceConc!20926) Int)

(assert (=> d!872521 (= c!535524 (>= 0 (size!27035 lt!1072953)))))

(declare-fun e!1986805 () Bool)

(assert (=> d!872521 e!1986805))

(declare-fun res!1296417 () Bool)

(assert (=> d!872521 (=> (not res!1296417) (not e!1986805))))

(assert (=> d!872521 (= res!1296417 (>= 0 0))))

(assert (=> d!872521 (= (printTailRec!1228 thiss!18206 lt!1072953 0 (BalanceConc!20925 Empty!10655)) lt!1073001)))

(declare-fun b!3188376 () Bool)

(assert (=> b!3188376 (= e!1986805 (<= 0 (size!27035 lt!1072953)))))

(declare-fun b!3188377 () Bool)

(assert (=> b!3188377 (= e!1986804 (BalanceConc!20925 Empty!10655))))

(declare-fun b!3188378 () Bool)

(declare-fun ++!8578 (BalanceConc!20924 BalanceConc!20924) BalanceConc!20924)

(declare-fun apply!8077 (BalanceConc!20926 Int) Token!9646)

(assert (=> b!3188378 (= e!1986804 (printTailRec!1228 thiss!18206 lt!1072953 (+ 0 1) (++!8578 (BalanceConc!20925 Empty!10655) (charsOf!3162 (apply!8077 lt!1072953 0)))))))

(declare-fun lt!1073004 () List!35952)

(declare-fun list!12728 (BalanceConc!20926) List!35952)

(assert (=> b!3188378 (= lt!1073004 (list!12728 lt!1072953))))

(declare-fun lt!1073005 () Unit!50250)

(declare-fun lemmaDropApply!1023 (List!35952 Int) Unit!50250)

(assert (=> b!3188378 (= lt!1073005 (lemmaDropApply!1023 lt!1073004 0))))

(declare-fun head!6975 (List!35952) Token!9646)

(declare-fun drop!1847 (List!35952 Int) List!35952)

(declare-fun apply!8078 (List!35952 Int) Token!9646)

(assert (=> b!3188378 (= (head!6975 (drop!1847 lt!1073004 0)) (apply!8078 lt!1073004 0))))

(declare-fun lt!1073000 () Unit!50250)

(assert (=> b!3188378 (= lt!1073000 lt!1073005)))

(declare-fun lt!1073003 () List!35952)

(assert (=> b!3188378 (= lt!1073003 (list!12728 lt!1072953))))

(declare-fun lt!1073006 () Unit!50250)

(declare-fun lemmaDropTail!907 (List!35952 Int) Unit!50250)

(assert (=> b!3188378 (= lt!1073006 (lemmaDropTail!907 lt!1073003 0))))

(declare-fun tail!5188 (List!35952) List!35952)

(assert (=> b!3188378 (= (tail!5188 (drop!1847 lt!1073003 0)) (drop!1847 lt!1073003 (+ 0 1)))))

(declare-fun lt!1073002 () Unit!50250)

(assert (=> b!3188378 (= lt!1073002 lt!1073006)))

(assert (= (and d!872521 res!1296417) b!3188376))

(assert (= (and d!872521 c!535524) b!3188377))

(assert (= (and d!872521 (not c!535524)) b!3188378))

(declare-fun m!3447007 () Bool)

(assert (=> d!872521 m!3447007))

(declare-fun m!3447009 () Bool)

(assert (=> d!872521 m!3447009))

(declare-fun m!3447011 () Bool)

(assert (=> d!872521 m!3447011))

(declare-fun m!3447013 () Bool)

(assert (=> d!872521 m!3447013))

(assert (=> d!872521 m!3447007))

(assert (=> d!872521 m!3447009))

(declare-fun m!3447015 () Bool)

(assert (=> d!872521 m!3447015))

(assert (=> b!3188376 m!3447013))

(declare-fun m!3447017 () Bool)

(assert (=> b!3188378 m!3447017))

(declare-fun m!3447019 () Bool)

(assert (=> b!3188378 m!3447019))

(declare-fun m!3447021 () Bool)

(assert (=> b!3188378 m!3447021))

(declare-fun m!3447023 () Bool)

(assert (=> b!3188378 m!3447023))

(declare-fun m!3447025 () Bool)

(assert (=> b!3188378 m!3447025))

(declare-fun m!3447027 () Bool)

(assert (=> b!3188378 m!3447027))

(declare-fun m!3447029 () Bool)

(assert (=> b!3188378 m!3447029))

(declare-fun m!3447031 () Bool)

(assert (=> b!3188378 m!3447031))

(assert (=> b!3188378 m!3447021))

(declare-fun m!3447033 () Bool)

(assert (=> b!3188378 m!3447033))

(assert (=> b!3188378 m!3447017))

(declare-fun m!3447035 () Bool)

(assert (=> b!3188378 m!3447035))

(declare-fun m!3447037 () Bool)

(assert (=> b!3188378 m!3447037))

(assert (=> b!3188378 m!3447035))

(assert (=> b!3188378 m!3447019))

(assert (=> b!3188378 m!3447029))

(declare-fun m!3447039 () Bool)

(assert (=> b!3188378 m!3447039))

(declare-fun m!3447041 () Bool)

(assert (=> b!3188378 m!3447041))

(assert (=> b!3188302 d!872521))

(declare-fun d!872531 () Bool)

(declare-fun lt!1073009 () BalanceConc!20924)

(assert (=> d!872531 (= (list!12725 lt!1073009) (printList!1283 thiss!18206 (list!12728 lt!1072953)))))

(assert (=> d!872531 (= lt!1073009 (printTailRec!1228 thiss!18206 lt!1072953 0 (BalanceConc!20925 Empty!10655)))))

(assert (=> d!872531 (= (print!1796 thiss!18206 lt!1072953) lt!1073009)))

(declare-fun bs!540246 () Bool)

(assert (= bs!540246 d!872531))

(declare-fun m!3447047 () Bool)

(assert (=> bs!540246 m!3447047))

(assert (=> bs!540246 m!3447027))

(assert (=> bs!540246 m!3447027))

(declare-fun m!3447049 () Bool)

(assert (=> bs!540246 m!3447049))

(assert (=> bs!540246 m!3446929))

(assert (=> b!3188302 d!872531))

(declare-fun d!872535 () Bool)

(declare-fun list!12729 (Conc!10655) List!35951)

(assert (=> d!872535 (= (list!12725 lt!1072963) (list!12729 (c!535511 lt!1072963)))))

(declare-fun bs!540247 () Bool)

(assert (= bs!540247 d!872535))

(declare-fun m!3447051 () Bool)

(assert (=> bs!540247 m!3447051))

(assert (=> b!3188302 d!872535))

(declare-fun d!872537 () Bool)

(declare-fun e!1986811 () Bool)

(assert (=> d!872537 e!1986811))

(declare-fun res!1296423 () Bool)

(assert (=> d!872537 (=> (not res!1296423) (not e!1986811))))

(declare-fun lt!1073012 () BalanceConc!20926)

(assert (=> d!872537 (= res!1296423 (= (list!12728 lt!1073012) (Cons!35828 (h!41248 tokens!494) Nil!35828)))))

(declare-fun singleton!980 (Token!9646) BalanceConc!20926)

(assert (=> d!872537 (= lt!1073012 (singleton!980 (h!41248 tokens!494)))))

(assert (=> d!872537 (= (singletonSeq!2236 (h!41248 tokens!494)) lt!1073012)))

(declare-fun b!3188384 () Bool)

(declare-fun isBalanced!3193 (Conc!10656) Bool)

(assert (=> b!3188384 (= e!1986811 (isBalanced!3193 (c!535512 lt!1073012)))))

(assert (= (and d!872537 res!1296423) b!3188384))

(declare-fun m!3447053 () Bool)

(assert (=> d!872537 m!3447053))

(declare-fun m!3447055 () Bool)

(assert (=> d!872537 m!3447055))

(declare-fun m!3447057 () Bool)

(assert (=> b!3188384 m!3447057))

(assert (=> b!3188302 d!872537))

(declare-fun d!872539 () Bool)

(declare-fun c!535527 () Bool)

(assert (=> d!872539 (= c!535527 ((_ is Cons!35828) (Cons!35828 (h!41248 tokens!494) Nil!35828)))))

(declare-fun e!1986814 () List!35951)

(assert (=> d!872539 (= (printList!1283 thiss!18206 (Cons!35828 (h!41248 tokens!494) Nil!35828)) e!1986814)))

(declare-fun b!3188389 () Bool)

(assert (=> b!3188389 (= e!1986814 (++!8576 (list!12725 (charsOf!3162 (h!41248 (Cons!35828 (h!41248 tokens!494) Nil!35828)))) (printList!1283 thiss!18206 (t!236001 (Cons!35828 (h!41248 tokens!494) Nil!35828)))))))

(declare-fun b!3188390 () Bool)

(assert (=> b!3188390 (= e!1986814 Nil!35827)))

(assert (= (and d!872539 c!535527) b!3188389))

(assert (= (and d!872539 (not c!535527)) b!3188390))

(declare-fun m!3447059 () Bool)

(assert (=> b!3188389 m!3447059))

(assert (=> b!3188389 m!3447059))

(declare-fun m!3447061 () Bool)

(assert (=> b!3188389 m!3447061))

(declare-fun m!3447063 () Bool)

(assert (=> b!3188389 m!3447063))

(assert (=> b!3188389 m!3447061))

(assert (=> b!3188389 m!3447063))

(declare-fun m!3447065 () Bool)

(assert (=> b!3188389 m!3447065))

(assert (=> b!3188302 d!872539))

(declare-fun b!3188419 () Bool)

(declare-fun res!1296446 () Bool)

(declare-fun e!1986830 () Bool)

(assert (=> b!3188419 (=> res!1296446 e!1986830)))

(declare-fun tail!5189 (List!35951) List!35951)

(assert (=> b!3188419 (= res!1296446 (not (isEmpty!19962 (tail!5189 lt!1072969))))))

(declare-fun b!3188421 () Bool)

(declare-fun res!1296441 () Bool)

(declare-fun e!1986833 () Bool)

(assert (=> b!3188421 (=> res!1296441 e!1986833)))

(assert (=> b!3188421 (= res!1296441 (not ((_ is ElementMatch!9899) (regex!5140 lt!1072952))))))

(declare-fun e!1986832 () Bool)

(assert (=> b!3188421 (= e!1986832 e!1986833)))

(declare-fun b!3188422 () Bool)

(declare-fun e!1986834 () Bool)

(assert (=> b!3188422 (= e!1986834 e!1986832)))

(declare-fun c!535534 () Bool)

(assert (=> b!3188422 (= c!535534 ((_ is EmptyLang!9899) (regex!5140 lt!1072952)))))

(declare-fun b!3188423 () Bool)

(declare-fun e!1986835 () Bool)

(declare-fun nullable!3388 (Regex!9899) Bool)

(assert (=> b!3188423 (= e!1986835 (nullable!3388 (regex!5140 lt!1072952)))))

(declare-fun b!3188424 () Bool)

(declare-fun res!1296447 () Bool)

(assert (=> b!3188424 (=> res!1296447 e!1986833)))

(declare-fun e!1986829 () Bool)

(assert (=> b!3188424 (= res!1296447 e!1986829)))

(declare-fun res!1296443 () Bool)

(assert (=> b!3188424 (=> (not res!1296443) (not e!1986829))))

(declare-fun lt!1073015 () Bool)

(assert (=> b!3188424 (= res!1296443 lt!1073015)))

(declare-fun b!3188425 () Bool)

(assert (=> b!3188425 (= e!1986829 (= (head!6973 lt!1072969) (c!535510 (regex!5140 lt!1072952))))))

(declare-fun b!3188426 () Bool)

(declare-fun res!1296442 () Bool)

(assert (=> b!3188426 (=> (not res!1296442) (not e!1986829))))

(assert (=> b!3188426 (= res!1296442 (isEmpty!19962 (tail!5189 lt!1072969)))))

(declare-fun b!3188427 () Bool)

(declare-fun res!1296445 () Bool)

(assert (=> b!3188427 (=> (not res!1296445) (not e!1986829))))

(declare-fun call!231326 () Bool)

(assert (=> b!3188427 (= res!1296445 (not call!231326))))

(declare-fun b!3188428 () Bool)

(declare-fun e!1986831 () Bool)

(assert (=> b!3188428 (= e!1986831 e!1986830)))

(declare-fun res!1296440 () Bool)

(assert (=> b!3188428 (=> res!1296440 e!1986830)))

(assert (=> b!3188428 (= res!1296440 call!231326)))

(declare-fun b!3188429 () Bool)

(assert (=> b!3188429 (= e!1986833 e!1986831)))

(declare-fun res!1296444 () Bool)

(assert (=> b!3188429 (=> (not res!1296444) (not e!1986831))))

(assert (=> b!3188429 (= res!1296444 (not lt!1073015))))

(declare-fun b!3188430 () Bool)

(assert (=> b!3188430 (= e!1986830 (not (= (head!6973 lt!1072969) (c!535510 (regex!5140 lt!1072952)))))))

(declare-fun b!3188431 () Bool)

(assert (=> b!3188431 (= e!1986834 (= lt!1073015 call!231326))))

(declare-fun d!872541 () Bool)

(assert (=> d!872541 e!1986834))

(declare-fun c!535536 () Bool)

(assert (=> d!872541 (= c!535536 ((_ is EmptyExpr!9899) (regex!5140 lt!1072952)))))

(assert (=> d!872541 (= lt!1073015 e!1986835)))

(declare-fun c!535535 () Bool)

(assert (=> d!872541 (= c!535535 (isEmpty!19962 lt!1072969))))

(declare-fun validRegex!4540 (Regex!9899) Bool)

(assert (=> d!872541 (validRegex!4540 (regex!5140 lt!1072952))))

(assert (=> d!872541 (= (matchR!4557 (regex!5140 lt!1072952) lt!1072969) lt!1073015)))

(declare-fun b!3188420 () Bool)

(assert (=> b!3188420 (= e!1986832 (not lt!1073015))))

(declare-fun b!3188432 () Bool)

(declare-fun derivativeStep!2941 (Regex!9899 C!19984) Regex!9899)

(assert (=> b!3188432 (= e!1986835 (matchR!4557 (derivativeStep!2941 (regex!5140 lt!1072952) (head!6973 lt!1072969)) (tail!5189 lt!1072969)))))

(declare-fun bm!231321 () Bool)

(assert (=> bm!231321 (= call!231326 (isEmpty!19962 lt!1072969))))

(assert (= (and d!872541 c!535535) b!3188423))

(assert (= (and d!872541 (not c!535535)) b!3188432))

(assert (= (and d!872541 c!535536) b!3188431))

(assert (= (and d!872541 (not c!535536)) b!3188422))

(assert (= (and b!3188422 c!535534) b!3188420))

(assert (= (and b!3188422 (not c!535534)) b!3188421))

(assert (= (and b!3188421 (not res!1296441)) b!3188424))

(assert (= (and b!3188424 res!1296443) b!3188427))

(assert (= (and b!3188427 res!1296445) b!3188426))

(assert (= (and b!3188426 res!1296442) b!3188425))

(assert (= (and b!3188424 (not res!1296447)) b!3188429))

(assert (= (and b!3188429 res!1296444) b!3188428))

(assert (= (and b!3188428 (not res!1296440)) b!3188419))

(assert (= (and b!3188419 (not res!1296446)) b!3188430))

(assert (= (or b!3188431 b!3188427 b!3188428) bm!231321))

(declare-fun m!3447067 () Bool)

(assert (=> b!3188425 m!3447067))

(declare-fun m!3447069 () Bool)

(assert (=> bm!231321 m!3447069))

(assert (=> b!3188430 m!3447067))

(declare-fun m!3447071 () Bool)

(assert (=> b!3188423 m!3447071))

(assert (=> d!872541 m!3447069))

(declare-fun m!3447073 () Bool)

(assert (=> d!872541 m!3447073))

(assert (=> b!3188432 m!3447067))

(assert (=> b!3188432 m!3447067))

(declare-fun m!3447075 () Bool)

(assert (=> b!3188432 m!3447075))

(declare-fun m!3447077 () Bool)

(assert (=> b!3188432 m!3447077))

(assert (=> b!3188432 m!3447075))

(assert (=> b!3188432 m!3447077))

(declare-fun m!3447079 () Bool)

(assert (=> b!3188432 m!3447079))

(assert (=> b!3188426 m!3447077))

(assert (=> b!3188426 m!3447077))

(declare-fun m!3447081 () Bool)

(assert (=> b!3188426 m!3447081))

(assert (=> b!3188419 m!3447077))

(assert (=> b!3188419 m!3447077))

(assert (=> b!3188419 m!3447081))

(assert (=> b!3188301 d!872541))

(declare-fun d!872543 () Bool)

(assert (=> d!872543 (= (get!11405 lt!1072967) (v!35505 lt!1072967))))

(assert (=> b!3188301 d!872543))

(declare-fun d!872545 () Bool)

(assert (=> d!872545 (= (inv!48680 (tag!5656 (rule!7568 separatorToken!241))) (= (mod (str.len (value!166924 (tag!5656 (rule!7568 separatorToken!241)))) 2) 0))))

(assert (=> b!3188299 d!872545))

(declare-fun d!872547 () Bool)

(declare-fun res!1296450 () Bool)

(declare-fun e!1986838 () Bool)

(assert (=> d!872547 (=> (not res!1296450) (not e!1986838))))

(declare-fun semiInverseModEq!2141 (Int Int) Bool)

(assert (=> d!872547 (= res!1296450 (semiInverseModEq!2141 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toValue!7204 (transformation!5140 (rule!7568 separatorToken!241)))))))

(assert (=> d!872547 (= (inv!48683 (transformation!5140 (rule!7568 separatorToken!241))) e!1986838)))

(declare-fun b!3188435 () Bool)

(declare-fun equivClasses!2040 (Int Int) Bool)

(assert (=> b!3188435 (= e!1986838 (equivClasses!2040 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toValue!7204 (transformation!5140 (rule!7568 separatorToken!241)))))))

(assert (= (and d!872547 res!1296450) b!3188435))

(declare-fun m!3447083 () Bool)

(assert (=> d!872547 m!3447083))

(declare-fun m!3447085 () Bool)

(assert (=> b!3188435 m!3447085))

(assert (=> b!3188299 d!872547))

(declare-fun b!3188436 () Bool)

(declare-fun res!1296457 () Bool)

(declare-fun e!1986840 () Bool)

(assert (=> b!3188436 (=> res!1296457 e!1986840)))

(assert (=> b!3188436 (= res!1296457 (not (isEmpty!19962 (tail!5189 lt!1072961))))))

(declare-fun b!3188438 () Bool)

(declare-fun res!1296452 () Bool)

(declare-fun e!1986843 () Bool)

(assert (=> b!3188438 (=> res!1296452 e!1986843)))

(assert (=> b!3188438 (= res!1296452 (not ((_ is ElementMatch!9899) (regex!5140 lt!1072957))))))

(declare-fun e!1986842 () Bool)

(assert (=> b!3188438 (= e!1986842 e!1986843)))

(declare-fun b!3188439 () Bool)

(declare-fun e!1986844 () Bool)

(assert (=> b!3188439 (= e!1986844 e!1986842)))

(declare-fun c!535537 () Bool)

(assert (=> b!3188439 (= c!535537 ((_ is EmptyLang!9899) (regex!5140 lt!1072957)))))

(declare-fun b!3188440 () Bool)

(declare-fun e!1986845 () Bool)

(assert (=> b!3188440 (= e!1986845 (nullable!3388 (regex!5140 lt!1072957)))))

(declare-fun b!3188441 () Bool)

(declare-fun res!1296458 () Bool)

(assert (=> b!3188441 (=> res!1296458 e!1986843)))

(declare-fun e!1986839 () Bool)

(assert (=> b!3188441 (= res!1296458 e!1986839)))

(declare-fun res!1296454 () Bool)

(assert (=> b!3188441 (=> (not res!1296454) (not e!1986839))))

(declare-fun lt!1073016 () Bool)

(assert (=> b!3188441 (= res!1296454 lt!1073016)))

(declare-fun b!3188442 () Bool)

(assert (=> b!3188442 (= e!1986839 (= (head!6973 lt!1072961) (c!535510 (regex!5140 lt!1072957))))))

(declare-fun b!3188443 () Bool)

(declare-fun res!1296453 () Bool)

(assert (=> b!3188443 (=> (not res!1296453) (not e!1986839))))

(assert (=> b!3188443 (= res!1296453 (isEmpty!19962 (tail!5189 lt!1072961)))))

(declare-fun b!3188444 () Bool)

(declare-fun res!1296456 () Bool)

(assert (=> b!3188444 (=> (not res!1296456) (not e!1986839))))

(declare-fun call!231327 () Bool)

(assert (=> b!3188444 (= res!1296456 (not call!231327))))

(declare-fun b!3188445 () Bool)

(declare-fun e!1986841 () Bool)

(assert (=> b!3188445 (= e!1986841 e!1986840)))

(declare-fun res!1296451 () Bool)

(assert (=> b!3188445 (=> res!1296451 e!1986840)))

(assert (=> b!3188445 (= res!1296451 call!231327)))

(declare-fun b!3188446 () Bool)

(assert (=> b!3188446 (= e!1986843 e!1986841)))

(declare-fun res!1296455 () Bool)

(assert (=> b!3188446 (=> (not res!1296455) (not e!1986841))))

(assert (=> b!3188446 (= res!1296455 (not lt!1073016))))

(declare-fun b!3188447 () Bool)

(assert (=> b!3188447 (= e!1986840 (not (= (head!6973 lt!1072961) (c!535510 (regex!5140 lt!1072957)))))))

(declare-fun b!3188448 () Bool)

(assert (=> b!3188448 (= e!1986844 (= lt!1073016 call!231327))))

(declare-fun d!872549 () Bool)

(assert (=> d!872549 e!1986844))

(declare-fun c!535539 () Bool)

(assert (=> d!872549 (= c!535539 ((_ is EmptyExpr!9899) (regex!5140 lt!1072957)))))

(assert (=> d!872549 (= lt!1073016 e!1986845)))

(declare-fun c!535538 () Bool)

(assert (=> d!872549 (= c!535538 (isEmpty!19962 lt!1072961))))

(assert (=> d!872549 (validRegex!4540 (regex!5140 lt!1072957))))

(assert (=> d!872549 (= (matchR!4557 (regex!5140 lt!1072957) lt!1072961) lt!1073016)))

(declare-fun b!3188437 () Bool)

(assert (=> b!3188437 (= e!1986842 (not lt!1073016))))

(declare-fun b!3188449 () Bool)

(assert (=> b!3188449 (= e!1986845 (matchR!4557 (derivativeStep!2941 (regex!5140 lt!1072957) (head!6973 lt!1072961)) (tail!5189 lt!1072961)))))

(declare-fun bm!231322 () Bool)

(assert (=> bm!231322 (= call!231327 (isEmpty!19962 lt!1072961))))

(assert (= (and d!872549 c!535538) b!3188440))

(assert (= (and d!872549 (not c!535538)) b!3188449))

(assert (= (and d!872549 c!535539) b!3188448))

(assert (= (and d!872549 (not c!535539)) b!3188439))

(assert (= (and b!3188439 c!535537) b!3188437))

(assert (= (and b!3188439 (not c!535537)) b!3188438))

(assert (= (and b!3188438 (not res!1296452)) b!3188441))

(assert (= (and b!3188441 res!1296454) b!3188444))

(assert (= (and b!3188444 res!1296456) b!3188443))

(assert (= (and b!3188443 res!1296453) b!3188442))

(assert (= (and b!3188441 (not res!1296458)) b!3188446))

(assert (= (and b!3188446 res!1296455) b!3188445))

(assert (= (and b!3188445 (not res!1296451)) b!3188436))

(assert (= (and b!3188436 (not res!1296457)) b!3188447))

(assert (= (or b!3188448 b!3188444 b!3188445) bm!231322))

(assert (=> b!3188442 m!3446891))

(declare-fun m!3447087 () Bool)

(assert (=> bm!231322 m!3447087))

(assert (=> b!3188447 m!3446891))

(declare-fun m!3447089 () Bool)

(assert (=> b!3188440 m!3447089))

(assert (=> d!872549 m!3447087))

(declare-fun m!3447091 () Bool)

(assert (=> d!872549 m!3447091))

(assert (=> b!3188449 m!3446891))

(assert (=> b!3188449 m!3446891))

(declare-fun m!3447093 () Bool)

(assert (=> b!3188449 m!3447093))

(declare-fun m!3447095 () Bool)

(assert (=> b!3188449 m!3447095))

(assert (=> b!3188449 m!3447093))

(assert (=> b!3188449 m!3447095))

(declare-fun m!3447097 () Bool)

(assert (=> b!3188449 m!3447097))

(assert (=> b!3188443 m!3447095))

(assert (=> b!3188443 m!3447095))

(declare-fun m!3447099 () Bool)

(assert (=> b!3188443 m!3447099))

(assert (=> b!3188436 m!3447095))

(assert (=> b!3188436 m!3447095))

(assert (=> b!3188436 m!3447099))

(assert (=> b!3188318 d!872549))

(declare-fun d!872551 () Bool)

(assert (=> d!872551 (= (get!11405 lt!1072971) (v!35505 lt!1072971))))

(assert (=> b!3188318 d!872551))

(declare-fun d!872553 () Bool)

(declare-fun lt!1073023 () Bool)

(declare-fun e!1986850 () Bool)

(assert (=> d!872553 (= lt!1073023 e!1986850)))

(declare-fun res!1296465 () Bool)

(assert (=> d!872553 (=> (not res!1296465) (not e!1986850))))

(assert (=> d!872553 (= res!1296465 (= (list!12728 (_1!20731 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 separatorToken!241))))) (list!12728 (singletonSeq!2236 separatorToken!241))))))

(declare-fun e!1986851 () Bool)

(assert (=> d!872553 (= lt!1073023 e!1986851)))

(declare-fun res!1296466 () Bool)

(assert (=> d!872553 (=> (not res!1296466) (not e!1986851))))

(declare-fun lt!1073024 () tuple2!35194)

(assert (=> d!872553 (= res!1296466 (= (size!27035 (_1!20731 lt!1073024)) 1))))

(assert (=> d!872553 (= lt!1073024 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 separatorToken!241))))))

(assert (=> d!872553 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872553 (= (rulesProduceIndividualToken!2221 thiss!18206 rules!2135 separatorToken!241) lt!1073023)))

(declare-fun b!3188456 () Bool)

(declare-fun res!1296467 () Bool)

(assert (=> b!3188456 (=> (not res!1296467) (not e!1986851))))

(assert (=> b!3188456 (= res!1296467 (= (apply!8077 (_1!20731 lt!1073024) 0) separatorToken!241))))

(declare-fun b!3188457 () Bool)

(declare-fun isEmpty!19968 (BalanceConc!20924) Bool)

(assert (=> b!3188457 (= e!1986851 (isEmpty!19968 (_2!20731 lt!1073024)))))

(declare-fun b!3188458 () Bool)

(assert (=> b!3188458 (= e!1986850 (isEmpty!19968 (_2!20731 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 separatorToken!241))))))))

(assert (= (and d!872553 res!1296466) b!3188456))

(assert (= (and b!3188456 res!1296467) b!3188457))

(assert (= (and d!872553 res!1296465) b!3188458))

(declare-fun m!3447101 () Bool)

(assert (=> d!872553 m!3447101))

(declare-fun m!3447103 () Bool)

(assert (=> d!872553 m!3447103))

(assert (=> d!872553 m!3446925))

(declare-fun m!3447105 () Bool)

(assert (=> d!872553 m!3447105))

(declare-fun m!3447107 () Bool)

(assert (=> d!872553 m!3447107))

(declare-fun m!3447109 () Bool)

(assert (=> d!872553 m!3447109))

(assert (=> d!872553 m!3447103))

(assert (=> d!872553 m!3447105))

(assert (=> d!872553 m!3447103))

(declare-fun m!3447111 () Bool)

(assert (=> d!872553 m!3447111))

(declare-fun m!3447113 () Bool)

(assert (=> b!3188456 m!3447113))

(declare-fun m!3447115 () Bool)

(assert (=> b!3188457 m!3447115))

(assert (=> b!3188458 m!3447103))

(assert (=> b!3188458 m!3447103))

(assert (=> b!3188458 m!3447105))

(assert (=> b!3188458 m!3447105))

(assert (=> b!3188458 m!3447107))

(declare-fun m!3447117 () Bool)

(assert (=> b!3188458 m!3447117))

(assert (=> b!3188297 d!872553))

(declare-fun d!872555 () Bool)

(declare-fun dynLambda!14467 (Int BalanceConc!20924) TokenValue!5370)

(assert (=> d!872555 (= (apply!8074 (transformation!5140 (rule!7568 (h!41248 tokens!494))) lt!1072955) (dynLambda!14467 (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) lt!1072955))))

(declare-fun b_lambda!86979 () Bool)

(assert (=> (not b_lambda!86979) (not d!872555)))

(declare-fun t!236009 () Bool)

(declare-fun tb!155875 () Bool)

(assert (=> (and b!3188298 (= (toValue!7204 (transformation!5140 (rule!7568 separatorToken!241))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236009) tb!155875))

(declare-fun result!198036 () Bool)

(assert (=> tb!155875 (= result!198036 (inv!21 (dynLambda!14467 (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) lt!1072955)))))

(declare-fun m!3447119 () Bool)

(assert (=> tb!155875 m!3447119))

(assert (=> d!872555 t!236009))

(declare-fun b_and!211163 () Bool)

(assert (= b_and!211151 (and (=> t!236009 result!198036) b_and!211163)))

(declare-fun t!236011 () Bool)

(declare-fun tb!155877 () Bool)

(assert (=> (and b!3188305 (= (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236011) tb!155877))

(declare-fun result!198040 () Bool)

(assert (= result!198040 result!198036))

(assert (=> d!872555 t!236011))

(declare-fun b_and!211165 () Bool)

(assert (= b_and!211155 (and (=> t!236011 result!198040) b_and!211165)))

(declare-fun t!236013 () Bool)

(declare-fun tb!155879 () Bool)

(assert (=> (and b!3188316 (= (toValue!7204 (transformation!5140 (h!41249 rules!2135))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236013) tb!155879))

(declare-fun result!198042 () Bool)

(assert (= result!198042 result!198036))

(assert (=> d!872555 t!236013))

(declare-fun b_and!211167 () Bool)

(assert (= b_and!211159 (and (=> t!236013 result!198042) b_and!211167)))

(declare-fun m!3447121 () Bool)

(assert (=> d!872555 m!3447121))

(assert (=> b!3188295 d!872555))

(declare-fun b!3188473 () Bool)

(declare-fun e!1986865 () Option!7014)

(assert (=> b!3188473 (= e!1986865 (Some!7013 (h!41249 rules!2135)))))

(declare-fun b!3188474 () Bool)

(declare-fun e!1986863 () Option!7014)

(assert (=> b!3188474 (= e!1986863 None!7013)))

(declare-fun b!3188475 () Bool)

(assert (=> b!3188475 (= e!1986865 e!1986863)))

(declare-fun c!535544 () Bool)

(assert (=> b!3188475 (= c!535544 (and ((_ is Cons!35829) rules!2135) (not (= (tag!5656 (h!41249 rules!2135)) (tag!5656 (rule!7568 (h!41248 tokens!494)))))))))

(declare-fun b!3188476 () Bool)

(declare-fun lt!1073033 () Unit!50250)

(declare-fun lt!1073031 () Unit!50250)

(assert (=> b!3188476 (= lt!1073033 lt!1073031)))

(assert (=> b!3188476 (rulesInvariant!4126 thiss!18206 (t!236002 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!339 (LexerInterface!4729 Rule!10080 List!35953) Unit!50250)

(assert (=> b!3188476 (= lt!1073031 (lemmaInvariantOnRulesThenOnTail!339 thiss!18206 (h!41249 rules!2135) (t!236002 rules!2135)))))

(assert (=> b!3188476 (= e!1986863 (getRuleFromTag!869 thiss!18206 (t!236002 rules!2135) (tag!5656 (rule!7568 (h!41248 tokens!494)))))))

(declare-fun d!872557 () Bool)

(declare-fun e!1986864 () Bool)

(assert (=> d!872557 e!1986864))

(declare-fun res!1296473 () Bool)

(assert (=> d!872557 (=> res!1296473 e!1986864)))

(declare-fun lt!1073032 () Option!7014)

(declare-fun isEmpty!19969 (Option!7014) Bool)

(assert (=> d!872557 (= res!1296473 (isEmpty!19969 lt!1073032))))

(assert (=> d!872557 (= lt!1073032 e!1986865)))

(declare-fun c!535545 () Bool)

(assert (=> d!872557 (= c!535545 (and ((_ is Cons!35829) rules!2135) (= (tag!5656 (h!41249 rules!2135)) (tag!5656 (rule!7568 (h!41248 tokens!494))))))))

(assert (=> d!872557 (rulesInvariant!4126 thiss!18206 rules!2135)))

(assert (=> d!872557 (= (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 (h!41248 tokens!494)))) lt!1073032)))

(declare-fun b!3188477 () Bool)

(declare-fun e!1986866 () Bool)

(assert (=> b!3188477 (= e!1986864 e!1986866)))

(declare-fun res!1296472 () Bool)

(assert (=> b!3188477 (=> (not res!1296472) (not e!1986866))))

(declare-fun contains!6363 (List!35953 Rule!10080) Bool)

(assert (=> b!3188477 (= res!1296472 (contains!6363 rules!2135 (get!11405 lt!1073032)))))

(declare-fun b!3188478 () Bool)

(assert (=> b!3188478 (= e!1986866 (= (tag!5656 (get!11405 lt!1073032)) (tag!5656 (rule!7568 (h!41248 tokens!494)))))))

(assert (= (and d!872557 c!535545) b!3188473))

(assert (= (and d!872557 (not c!535545)) b!3188475))

(assert (= (and b!3188475 c!535544) b!3188476))

(assert (= (and b!3188475 (not c!535544)) b!3188474))

(assert (= (and d!872557 (not res!1296473)) b!3188477))

(assert (= (and b!3188477 res!1296472) b!3188478))

(declare-fun m!3447123 () Bool)

(assert (=> b!3188476 m!3447123))

(declare-fun m!3447125 () Bool)

(assert (=> b!3188476 m!3447125))

(declare-fun m!3447127 () Bool)

(assert (=> b!3188476 m!3447127))

(declare-fun m!3447129 () Bool)

(assert (=> d!872557 m!3447129))

(assert (=> d!872557 m!3446953))

(declare-fun m!3447131 () Bool)

(assert (=> b!3188477 m!3447131))

(assert (=> b!3188477 m!3447131))

(declare-fun m!3447133 () Bool)

(assert (=> b!3188477 m!3447133))

(assert (=> b!3188478 m!3447131))

(assert (=> b!3188295 d!872557))

(declare-fun d!872559 () Bool)

(declare-fun e!1986869 () Bool)

(assert (=> d!872559 e!1986869))

(declare-fun res!1296478 () Bool)

(assert (=> d!872559 (=> (not res!1296478) (not e!1986869))))

(assert (=> d!872559 (= res!1296478 (isDefined!5490 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 separatorToken!241)))))))

(declare-fun lt!1073036 () Unit!50250)

(declare-fun choose!18618 (LexerInterface!4729 List!35953 List!35951 Token!9646) Unit!50250)

(assert (=> d!872559 (= lt!1073036 (choose!18618 thiss!18206 rules!2135 lt!1072961 separatorToken!241))))

(assert (=> d!872559 (rulesInvariant!4126 thiss!18206 rules!2135)))

(assert (=> d!872559 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!869 thiss!18206 rules!2135 lt!1072961 separatorToken!241) lt!1073036)))

(declare-fun b!3188483 () Bool)

(declare-fun res!1296479 () Bool)

(assert (=> b!3188483 (=> (not res!1296479) (not e!1986869))))

(assert (=> b!3188483 (= res!1296479 (matchR!4557 (regex!5140 (get!11405 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 separatorToken!241))))) (list!12725 (charsOf!3162 separatorToken!241))))))

(declare-fun b!3188484 () Bool)

(assert (=> b!3188484 (= e!1986869 (= (rule!7568 separatorToken!241) (get!11405 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 separatorToken!241))))))))

(assert (= (and d!872559 res!1296478) b!3188483))

(assert (= (and b!3188483 res!1296479) b!3188484))

(assert (=> d!872559 m!3446895))

(assert (=> d!872559 m!3446895))

(declare-fun m!3447135 () Bool)

(assert (=> d!872559 m!3447135))

(declare-fun m!3447137 () Bool)

(assert (=> d!872559 m!3447137))

(assert (=> d!872559 m!3446953))

(assert (=> b!3188483 m!3446895))

(declare-fun m!3447139 () Bool)

(assert (=> b!3188483 m!3447139))

(assert (=> b!3188483 m!3446895))

(assert (=> b!3188483 m!3446871))

(assert (=> b!3188483 m!3446871))

(assert (=> b!3188483 m!3446877))

(assert (=> b!3188483 m!3446877))

(declare-fun m!3447141 () Bool)

(assert (=> b!3188483 m!3447141))

(assert (=> b!3188484 m!3446895))

(assert (=> b!3188484 m!3446895))

(assert (=> b!3188484 m!3447139))

(assert (=> b!3188295 d!872559))

(declare-fun d!872561 () Bool)

(assert (=> d!872561 (= (head!6973 lt!1072961) (h!41247 lt!1072961))))

(assert (=> b!3188295 d!872561))

(declare-fun d!872563 () Bool)

(declare-fun lt!1073039 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4856 (List!35951) (InoxSet C!19984))

(assert (=> d!872563 (= lt!1073039 (select (content!4856 (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241)))) lt!1072962))))

(declare-fun e!1986875 () Bool)

(assert (=> d!872563 (= lt!1073039 e!1986875)))

(declare-fun res!1296485 () Bool)

(assert (=> d!872563 (=> (not res!1296485) (not e!1986875))))

(assert (=> d!872563 (= res!1296485 ((_ is Cons!35827) (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241)))))))

(assert (=> d!872563 (= (contains!6361 (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241))) lt!1072962) lt!1073039)))

(declare-fun b!3188489 () Bool)

(declare-fun e!1986874 () Bool)

(assert (=> b!3188489 (= e!1986875 e!1986874)))

(declare-fun res!1296484 () Bool)

(assert (=> b!3188489 (=> res!1296484 e!1986874)))

(assert (=> b!3188489 (= res!1296484 (= (h!41247 (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241)))) lt!1072962))))

(declare-fun b!3188490 () Bool)

(assert (=> b!3188490 (= e!1986874 (contains!6361 (t!236000 (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241)))) lt!1072962))))

(assert (= (and d!872563 res!1296485) b!3188489))

(assert (= (and b!3188489 (not res!1296484)) b!3188490))

(assert (=> d!872563 m!3446905))

(declare-fun m!3447143 () Bool)

(assert (=> d!872563 m!3447143))

(declare-fun m!3447145 () Bool)

(assert (=> d!872563 m!3447145))

(declare-fun m!3447147 () Bool)

(assert (=> b!3188490 m!3447147))

(assert (=> b!3188295 d!872563))

(declare-fun d!872565 () Bool)

(declare-fun lt!1073042 () List!35951)

(assert (=> d!872565 (= (++!8576 lt!1072969 lt!1073042) lt!1072969)))

(declare-fun e!1986878 () List!35951)

(assert (=> d!872565 (= lt!1073042 e!1986878)))

(declare-fun c!535548 () Bool)

(assert (=> d!872565 (= c!535548 ((_ is Cons!35827) lt!1072969))))

(assert (=> d!872565 (>= (size!27033 lt!1072969) (size!27033 lt!1072969))))

(assert (=> d!872565 (= (getSuffix!1356 lt!1072969 lt!1072969) lt!1073042)))

(declare-fun b!3188495 () Bool)

(assert (=> b!3188495 (= e!1986878 (getSuffix!1356 (tail!5189 lt!1072969) (t!236000 lt!1072969)))))

(declare-fun b!3188496 () Bool)

(assert (=> b!3188496 (= e!1986878 lt!1072969)))

(assert (= (and d!872565 c!535548) b!3188495))

(assert (= (and d!872565 (not c!535548)) b!3188496))

(declare-fun m!3447149 () Bool)

(assert (=> d!872565 m!3447149))

(assert (=> d!872565 m!3446899))

(assert (=> d!872565 m!3446899))

(assert (=> b!3188495 m!3447077))

(assert (=> b!3188495 m!3447077))

(declare-fun m!3447151 () Bool)

(assert (=> b!3188495 m!3447151))

(assert (=> b!3188295 d!872565))

(declare-fun d!872567 () Bool)

(assert (=> d!872567 (= (maxPrefixOneRule!1534 thiss!18206 (rule!7568 (h!41248 tokens!494)) lt!1072969) (Some!7012 (tuple2!35197 (Token!9647 (apply!8074 (transformation!5140 (rule!7568 (h!41248 tokens!494))) (seqFromList!3359 lt!1072969)) (rule!7568 (h!41248 tokens!494)) (size!27033 lt!1072969) lt!1072969) Nil!35827)))))

(declare-fun lt!1073045 () Unit!50250)

(declare-fun choose!18622 (LexerInterface!4729 List!35953 List!35951 List!35951 List!35951 Rule!10080) Unit!50250)

(assert (=> d!872567 (= lt!1073045 (choose!18622 thiss!18206 rules!2135 lt!1072969 lt!1072969 Nil!35827 (rule!7568 (h!41248 tokens!494))))))

(assert (=> d!872567 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872567 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!647 thiss!18206 rules!2135 lt!1072969 lt!1072969 Nil!35827 (rule!7568 (h!41248 tokens!494))) lt!1073045)))

(declare-fun bs!540248 () Bool)

(assert (= bs!540248 d!872567))

(assert (=> bs!540248 m!3446973))

(assert (=> bs!540248 m!3446899))

(assert (=> bs!540248 m!3446973))

(declare-fun m!3447153 () Bool)

(assert (=> bs!540248 m!3447153))

(assert (=> bs!540248 m!3446925))

(declare-fun m!3447155 () Bool)

(assert (=> bs!540248 m!3447155))

(assert (=> bs!540248 m!3446903))

(assert (=> b!3188295 d!872567))

(declare-fun d!872569 () Bool)

(assert (=> d!872569 (isEmpty!19962 (getSuffix!1356 lt!1072969 lt!1072969))))

(declare-fun lt!1073048 () Unit!50250)

(declare-fun choose!18623 (List!35951) Unit!50250)

(assert (=> d!872569 (= lt!1073048 (choose!18623 lt!1072969))))

(assert (=> d!872569 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!34 lt!1072969) lt!1073048)))

(declare-fun bs!540249 () Bool)

(assert (= bs!540249 d!872569))

(assert (=> bs!540249 m!3446883))

(assert (=> bs!540249 m!3446883))

(assert (=> bs!540249 m!3446885))

(declare-fun m!3447157 () Bool)

(assert (=> bs!540249 m!3447157))

(assert (=> b!3188295 d!872569))

(declare-fun d!872571 () Bool)

(assert (=> d!872571 (rulesProduceIndividualToken!2221 thiss!18206 rules!2135 (h!41248 tokens!494))))

(declare-fun lt!1073052 () Unit!50250)

(declare-fun choose!18624 (LexerInterface!4729 List!35953 List!35952 Token!9646) Unit!50250)

(assert (=> d!872571 (= lt!1073052 (choose!18624 thiss!18206 rules!2135 tokens!494 (h!41248 tokens!494)))))

(assert (=> d!872571 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872571 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!790 thiss!18206 rules!2135 tokens!494 (h!41248 tokens!494)) lt!1073052)))

(declare-fun bs!540250 () Bool)

(assert (= bs!540250 d!872571))

(assert (=> bs!540250 m!3446855))

(declare-fun m!3447159 () Bool)

(assert (=> bs!540250 m!3447159))

(assert (=> bs!540250 m!3446925))

(assert (=> b!3188295 d!872571))

(declare-fun b!3188585 () Bool)

(declare-fun res!1296539 () Bool)

(declare-fun e!1986932 () Bool)

(assert (=> b!3188585 (=> (not res!1296539) (not e!1986932))))

(declare-fun lt!1073088 () Option!7013)

(declare-fun get!11407 (Option!7013) tuple2!35196)

(assert (=> b!3188585 (= res!1296539 (< (size!27033 (_2!20732 (get!11407 lt!1073088))) (size!27033 lt!1072969)))))

(declare-fun b!3188586 () Bool)

(declare-fun e!1986934 () Option!7013)

(declare-datatypes ((tuple2!35200 0))(
  ( (tuple2!35201 (_1!20734 List!35951) (_2!20734 List!35951)) )
))
(declare-fun lt!1073089 () tuple2!35200)

(declare-fun size!27037 (BalanceConc!20924) Int)

(assert (=> b!3188586 (= e!1986934 (Some!7012 (tuple2!35197 (Token!9647 (apply!8074 (transformation!5140 (rule!7568 (h!41248 tokens!494))) (seqFromList!3359 (_1!20734 lt!1073089))) (rule!7568 (h!41248 tokens!494)) (size!27037 (seqFromList!3359 (_1!20734 lt!1073089))) (_1!20734 lt!1073089)) (_2!20734 lt!1073089))))))

(declare-fun lt!1073087 () Unit!50250)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!793 (Regex!9899 List!35951) Unit!50250)

(assert (=> b!3188586 (= lt!1073087 (longestMatchIsAcceptedByMatchOrIsEmpty!793 (regex!5140 (rule!7568 (h!41248 tokens!494))) lt!1072969))))

(declare-fun res!1296542 () Bool)

(declare-fun findLongestMatchInner!820 (Regex!9899 List!35951 Int List!35951 List!35951 Int) tuple2!35200)

(assert (=> b!3188586 (= res!1296542 (isEmpty!19962 (_1!20734 (findLongestMatchInner!820 (regex!5140 (rule!7568 (h!41248 tokens!494))) Nil!35827 (size!27033 Nil!35827) lt!1072969 lt!1072969 (size!27033 lt!1072969)))))))

(declare-fun e!1986933 () Bool)

(assert (=> b!3188586 (=> res!1296542 e!1986933)))

(assert (=> b!3188586 e!1986933))

(declare-fun lt!1073086 () Unit!50250)

(assert (=> b!3188586 (= lt!1073086 lt!1073087)))

(declare-fun lt!1073085 () Unit!50250)

(declare-fun lemmaSemiInverse!1162 (TokenValueInjection!10168 BalanceConc!20924) Unit!50250)

(assert (=> b!3188586 (= lt!1073085 (lemmaSemiInverse!1162 (transformation!5140 (rule!7568 (h!41248 tokens!494))) (seqFromList!3359 (_1!20734 lt!1073089))))))

(declare-fun b!3188587 () Bool)

(declare-fun res!1296536 () Bool)

(assert (=> b!3188587 (=> (not res!1296536) (not e!1986932))))

(assert (=> b!3188587 (= res!1296536 (= (value!166950 (_1!20732 (get!11407 lt!1073088))) (apply!8074 (transformation!5140 (rule!7568 (_1!20732 (get!11407 lt!1073088)))) (seqFromList!3359 (originalCharacters!5854 (_1!20732 (get!11407 lt!1073088)))))))))

(declare-fun d!872573 () Bool)

(declare-fun e!1986935 () Bool)

(assert (=> d!872573 e!1986935))

(declare-fun res!1296537 () Bool)

(assert (=> d!872573 (=> res!1296537 e!1986935)))

(declare-fun isEmpty!19971 (Option!7013) Bool)

(assert (=> d!872573 (= res!1296537 (isEmpty!19971 lt!1073088))))

(assert (=> d!872573 (= lt!1073088 e!1986934)))

(declare-fun c!535560 () Bool)

(assert (=> d!872573 (= c!535560 (isEmpty!19962 (_1!20734 lt!1073089)))))

(declare-fun findLongestMatch!735 (Regex!9899 List!35951) tuple2!35200)

(assert (=> d!872573 (= lt!1073089 (findLongestMatch!735 (regex!5140 (rule!7568 (h!41248 tokens!494))) lt!1072969))))

(declare-fun ruleValid!1632 (LexerInterface!4729 Rule!10080) Bool)

(assert (=> d!872573 (ruleValid!1632 thiss!18206 (rule!7568 (h!41248 tokens!494)))))

(assert (=> d!872573 (= (maxPrefixOneRule!1534 thiss!18206 (rule!7568 (h!41248 tokens!494)) lt!1072969) lt!1073088)))

(declare-fun b!3188588 () Bool)

(assert (=> b!3188588 (= e!1986933 (matchR!4557 (regex!5140 (rule!7568 (h!41248 tokens!494))) (_1!20734 (findLongestMatchInner!820 (regex!5140 (rule!7568 (h!41248 tokens!494))) Nil!35827 (size!27033 Nil!35827) lt!1072969 lt!1072969 (size!27033 lt!1072969)))))))

(declare-fun b!3188589 () Bool)

(declare-fun res!1296540 () Bool)

(assert (=> b!3188589 (=> (not res!1296540) (not e!1986932))))

(assert (=> b!3188589 (= res!1296540 (= (rule!7568 (_1!20732 (get!11407 lt!1073088))) (rule!7568 (h!41248 tokens!494))))))

(declare-fun b!3188590 () Bool)

(assert (=> b!3188590 (= e!1986935 e!1986932)))

(declare-fun res!1296541 () Bool)

(assert (=> b!3188590 (=> (not res!1296541) (not e!1986932))))

(assert (=> b!3188590 (= res!1296541 (matchR!4557 (regex!5140 (rule!7568 (h!41248 tokens!494))) (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073088))))))))

(declare-fun b!3188591 () Bool)

(assert (=> b!3188591 (= e!1986932 (= (size!27032 (_1!20732 (get!11407 lt!1073088))) (size!27033 (originalCharacters!5854 (_1!20732 (get!11407 lt!1073088))))))))

(declare-fun b!3188592 () Bool)

(declare-fun res!1296538 () Bool)

(assert (=> b!3188592 (=> (not res!1296538) (not e!1986932))))

(assert (=> b!3188592 (= res!1296538 (= (++!8576 (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073088)))) (_2!20732 (get!11407 lt!1073088))) lt!1072969))))

(declare-fun b!3188593 () Bool)

(assert (=> b!3188593 (= e!1986934 None!7012)))

(assert (= (and d!872573 c!535560) b!3188593))

(assert (= (and d!872573 (not c!535560)) b!3188586))

(assert (= (and b!3188586 (not res!1296542)) b!3188588))

(assert (= (and d!872573 (not res!1296537)) b!3188590))

(assert (= (and b!3188590 res!1296541) b!3188592))

(assert (= (and b!3188592 res!1296538) b!3188585))

(assert (= (and b!3188585 res!1296539) b!3188589))

(assert (= (and b!3188589 res!1296540) b!3188587))

(assert (= (and b!3188587 res!1296536) b!3188591))

(declare-fun m!3447253 () Bool)

(assert (=> b!3188586 m!3447253))

(declare-fun m!3447257 () Bool)

(assert (=> b!3188586 m!3447257))

(declare-fun m!3447261 () Bool)

(assert (=> b!3188586 m!3447261))

(declare-fun m!3447263 () Bool)

(assert (=> b!3188586 m!3447263))

(assert (=> b!3188586 m!3447253))

(assert (=> b!3188586 m!3447263))

(assert (=> b!3188586 m!3446899))

(declare-fun m!3447265 () Bool)

(assert (=> b!3188586 m!3447265))

(declare-fun m!3447267 () Bool)

(assert (=> b!3188586 m!3447267))

(assert (=> b!3188586 m!3447253))

(declare-fun m!3447269 () Bool)

(assert (=> b!3188586 m!3447269))

(assert (=> b!3188586 m!3447253))

(declare-fun m!3447271 () Bool)

(assert (=> b!3188586 m!3447271))

(assert (=> b!3188586 m!3446899))

(declare-fun m!3447273 () Bool)

(assert (=> b!3188592 m!3447273))

(declare-fun m!3447275 () Bool)

(assert (=> b!3188592 m!3447275))

(assert (=> b!3188592 m!3447275))

(declare-fun m!3447277 () Bool)

(assert (=> b!3188592 m!3447277))

(assert (=> b!3188592 m!3447277))

(declare-fun m!3447279 () Bool)

(assert (=> b!3188592 m!3447279))

(assert (=> b!3188590 m!3447273))

(assert (=> b!3188590 m!3447275))

(assert (=> b!3188590 m!3447275))

(assert (=> b!3188590 m!3447277))

(assert (=> b!3188590 m!3447277))

(declare-fun m!3447281 () Bool)

(assert (=> b!3188590 m!3447281))

(declare-fun m!3447283 () Bool)

(assert (=> d!872573 m!3447283))

(declare-fun m!3447285 () Bool)

(assert (=> d!872573 m!3447285))

(declare-fun m!3447287 () Bool)

(assert (=> d!872573 m!3447287))

(declare-fun m!3447289 () Bool)

(assert (=> d!872573 m!3447289))

(assert (=> b!3188589 m!3447273))

(assert (=> b!3188587 m!3447273))

(declare-fun m!3447291 () Bool)

(assert (=> b!3188587 m!3447291))

(assert (=> b!3188587 m!3447291))

(declare-fun m!3447293 () Bool)

(assert (=> b!3188587 m!3447293))

(assert (=> b!3188588 m!3447263))

(assert (=> b!3188588 m!3446899))

(assert (=> b!3188588 m!3447263))

(assert (=> b!3188588 m!3446899))

(assert (=> b!3188588 m!3447265))

(declare-fun m!3447295 () Bool)

(assert (=> b!3188588 m!3447295))

(assert (=> b!3188585 m!3447273))

(declare-fun m!3447297 () Bool)

(assert (=> b!3188585 m!3447297))

(assert (=> b!3188585 m!3446899))

(assert (=> b!3188591 m!3447273))

(declare-fun m!3447299 () Bool)

(assert (=> b!3188591 m!3447299))

(assert (=> b!3188295 d!872573))

(declare-fun b!3188597 () Bool)

(declare-fun e!1986940 () Option!7014)

(assert (=> b!3188597 (= e!1986940 (Some!7013 (h!41249 rules!2135)))))

(declare-fun b!3188598 () Bool)

(declare-fun e!1986938 () Option!7014)

(assert (=> b!3188598 (= e!1986938 None!7013)))

(declare-fun b!3188599 () Bool)

(assert (=> b!3188599 (= e!1986940 e!1986938)))

(declare-fun c!535562 () Bool)

(assert (=> b!3188599 (= c!535562 (and ((_ is Cons!35829) rules!2135) (not (= (tag!5656 (h!41249 rules!2135)) (tag!5656 (rule!7568 separatorToken!241))))))))

(declare-fun b!3188600 () Bool)

(declare-fun lt!1073099 () Unit!50250)

(declare-fun lt!1073097 () Unit!50250)

(assert (=> b!3188600 (= lt!1073099 lt!1073097)))

(assert (=> b!3188600 (rulesInvariant!4126 thiss!18206 (t!236002 rules!2135))))

(assert (=> b!3188600 (= lt!1073097 (lemmaInvariantOnRulesThenOnTail!339 thiss!18206 (h!41249 rules!2135) (t!236002 rules!2135)))))

(assert (=> b!3188600 (= e!1986938 (getRuleFromTag!869 thiss!18206 (t!236002 rules!2135) (tag!5656 (rule!7568 separatorToken!241))))))

(declare-fun d!872599 () Bool)

(declare-fun e!1986939 () Bool)

(assert (=> d!872599 e!1986939))

(declare-fun res!1296545 () Bool)

(assert (=> d!872599 (=> res!1296545 e!1986939)))

(declare-fun lt!1073098 () Option!7014)

(assert (=> d!872599 (= res!1296545 (isEmpty!19969 lt!1073098))))

(assert (=> d!872599 (= lt!1073098 e!1986940)))

(declare-fun c!535563 () Bool)

(assert (=> d!872599 (= c!535563 (and ((_ is Cons!35829) rules!2135) (= (tag!5656 (h!41249 rules!2135)) (tag!5656 (rule!7568 separatorToken!241)))))))

(assert (=> d!872599 (rulesInvariant!4126 thiss!18206 rules!2135)))

(assert (=> d!872599 (= (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 separatorToken!241))) lt!1073098)))

(declare-fun b!3188601 () Bool)

(declare-fun e!1986941 () Bool)

(assert (=> b!3188601 (= e!1986939 e!1986941)))

(declare-fun res!1296544 () Bool)

(assert (=> b!3188601 (=> (not res!1296544) (not e!1986941))))

(assert (=> b!3188601 (= res!1296544 (contains!6363 rules!2135 (get!11405 lt!1073098)))))

(declare-fun b!3188602 () Bool)

(assert (=> b!3188602 (= e!1986941 (= (tag!5656 (get!11405 lt!1073098)) (tag!5656 (rule!7568 separatorToken!241))))))

(assert (= (and d!872599 c!535563) b!3188597))

(assert (= (and d!872599 (not c!535563)) b!3188599))

(assert (= (and b!3188599 c!535562) b!3188600))

(assert (= (and b!3188599 (not c!535562)) b!3188598))

(assert (= (and d!872599 (not res!1296545)) b!3188601))

(assert (= (and b!3188601 res!1296544) b!3188602))

(assert (=> b!3188600 m!3447123))

(assert (=> b!3188600 m!3447125))

(declare-fun m!3447301 () Bool)

(assert (=> b!3188600 m!3447301))

(declare-fun m!3447303 () Bool)

(assert (=> d!872599 m!3447303))

(assert (=> d!872599 m!3446953))

(declare-fun m!3447305 () Bool)

(assert (=> b!3188601 m!3447305))

(assert (=> b!3188601 m!3447305))

(declare-fun m!3447307 () Bool)

(assert (=> b!3188601 m!3447307))

(assert (=> b!3188602 m!3447305))

(assert (=> b!3188295 d!872599))

(declare-fun d!872601 () Bool)

(assert (=> d!872601 (= (isEmpty!19962 (getSuffix!1356 lt!1072969 lt!1072969)) ((_ is Nil!35827) (getSuffix!1356 lt!1072969 lt!1072969)))))

(assert (=> b!3188295 d!872601))

(declare-fun b!3188635 () Bool)

(declare-fun e!1986963 () List!35951)

(declare-fun e!1986964 () List!35951)

(assert (=> b!3188635 (= e!1986963 e!1986964)))

(declare-fun c!535576 () Bool)

(assert (=> b!3188635 (= c!535576 ((_ is ElementMatch!9899) (regex!5140 (rule!7568 separatorToken!241))))))

(declare-fun bm!231333 () Bool)

(declare-fun call!231341 () List!35951)

(declare-fun c!535575 () Bool)

(declare-fun c!535577 () Bool)

(assert (=> bm!231333 (= call!231341 (usedCharacters!484 (ite c!535575 (reg!10228 (regex!5140 (rule!7568 separatorToken!241))) (ite c!535577 (regOne!20311 (regex!5140 (rule!7568 separatorToken!241))) (regTwo!20310 (regex!5140 (rule!7568 separatorToken!241)))))))))

(declare-fun b!3188636 () Bool)

(declare-fun e!1986966 () List!35951)

(declare-fun call!231338 () List!35951)

(assert (=> b!3188636 (= e!1986966 call!231338)))

(declare-fun bm!231334 () Bool)

(declare-fun call!231340 () List!35951)

(assert (=> bm!231334 (= call!231340 call!231341)))

(declare-fun b!3188637 () Bool)

(declare-fun e!1986965 () List!35951)

(assert (=> b!3188637 (= e!1986965 call!231341)))

(declare-fun b!3188638 () Bool)

(assert (=> b!3188638 (= e!1986963 Nil!35827)))

(declare-fun call!231339 () List!35951)

(declare-fun bm!231336 () Bool)

(assert (=> bm!231336 (= call!231338 (++!8576 (ite c!535577 call!231340 call!231339) (ite c!535577 call!231339 call!231340)))))

(declare-fun d!872603 () Bool)

(declare-fun c!535578 () Bool)

(assert (=> d!872603 (= c!535578 (or ((_ is EmptyExpr!9899) (regex!5140 (rule!7568 separatorToken!241))) ((_ is EmptyLang!9899) (regex!5140 (rule!7568 separatorToken!241)))))))

(assert (=> d!872603 (= (usedCharacters!484 (regex!5140 (rule!7568 separatorToken!241))) e!1986963)))

(declare-fun bm!231335 () Bool)

(assert (=> bm!231335 (= call!231339 (usedCharacters!484 (ite c!535577 (regTwo!20311 (regex!5140 (rule!7568 separatorToken!241))) (regOne!20310 (regex!5140 (rule!7568 separatorToken!241))))))))

(declare-fun b!3188639 () Bool)

(assert (=> b!3188639 (= e!1986965 e!1986966)))

(assert (=> b!3188639 (= c!535577 ((_ is Union!9899) (regex!5140 (rule!7568 separatorToken!241))))))

(declare-fun b!3188640 () Bool)

(assert (=> b!3188640 (= e!1986966 call!231338)))

(declare-fun b!3188641 () Bool)

(assert (=> b!3188641 (= c!535575 ((_ is Star!9899) (regex!5140 (rule!7568 separatorToken!241))))))

(assert (=> b!3188641 (= e!1986964 e!1986965)))

(declare-fun b!3188642 () Bool)

(assert (=> b!3188642 (= e!1986964 (Cons!35827 (c!535510 (regex!5140 (rule!7568 separatorToken!241))) Nil!35827))))

(assert (= (and d!872603 c!535578) b!3188638))

(assert (= (and d!872603 (not c!535578)) b!3188635))

(assert (= (and b!3188635 c!535576) b!3188642))

(assert (= (and b!3188635 (not c!535576)) b!3188641))

(assert (= (and b!3188641 c!535575) b!3188637))

(assert (= (and b!3188641 (not c!535575)) b!3188639))

(assert (= (and b!3188639 c!535577) b!3188640))

(assert (= (and b!3188639 (not c!535577)) b!3188636))

(assert (= (or b!3188640 b!3188636) bm!231335))

(assert (= (or b!3188640 b!3188636) bm!231334))

(assert (= (or b!3188640 b!3188636) bm!231336))

(assert (= (or b!3188637 bm!231334) bm!231333))

(declare-fun m!3447331 () Bool)

(assert (=> bm!231333 m!3447331))

(declare-fun m!3447333 () Bool)

(assert (=> bm!231336 m!3447333))

(declare-fun m!3447335 () Bool)

(assert (=> bm!231335 m!3447335))

(assert (=> b!3188295 d!872603))

(declare-fun d!872615 () Bool)

(declare-fun e!1986967 () Bool)

(assert (=> d!872615 e!1986967))

(declare-fun res!1296556 () Bool)

(assert (=> d!872615 (=> (not res!1296556) (not e!1986967))))

(assert (=> d!872615 (= res!1296556 (isDefined!5490 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 (h!41248 tokens!494))))))))

(declare-fun lt!1073103 () Unit!50250)

(assert (=> d!872615 (= lt!1073103 (choose!18618 thiss!18206 rules!2135 lt!1072969 (h!41248 tokens!494)))))

(assert (=> d!872615 (rulesInvariant!4126 thiss!18206 rules!2135)))

(assert (=> d!872615 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!869 thiss!18206 rules!2135 lt!1072969 (h!41248 tokens!494)) lt!1073103)))

(declare-fun b!3188643 () Bool)

(declare-fun res!1296557 () Bool)

(assert (=> b!3188643 (=> (not res!1296557) (not e!1986967))))

(assert (=> b!3188643 (= res!1296557 (matchR!4557 (regex!5140 (get!11405 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 (h!41248 tokens!494)))))) (list!12725 (charsOf!3162 (h!41248 tokens!494)))))))

(declare-fun b!3188644 () Bool)

(assert (=> b!3188644 (= e!1986967 (= (rule!7568 (h!41248 tokens!494)) (get!11405 (getRuleFromTag!869 thiss!18206 rules!2135 (tag!5656 (rule!7568 (h!41248 tokens!494)))))))))

(assert (= (and d!872615 res!1296556) b!3188643))

(assert (= (and b!3188643 res!1296557) b!3188644))

(assert (=> d!872615 m!3446887))

(assert (=> d!872615 m!3446887))

(declare-fun m!3447337 () Bool)

(assert (=> d!872615 m!3447337))

(declare-fun m!3447339 () Bool)

(assert (=> d!872615 m!3447339))

(assert (=> d!872615 m!3446953))

(assert (=> b!3188643 m!3446887))

(declare-fun m!3447341 () Bool)

(assert (=> b!3188643 m!3447341))

(assert (=> b!3188643 m!3446887))

(assert (=> b!3188643 m!3446943))

(assert (=> b!3188643 m!3446943))

(assert (=> b!3188643 m!3446945))

(assert (=> b!3188643 m!3446945))

(declare-fun m!3447343 () Bool)

(assert (=> b!3188643 m!3447343))

(assert (=> b!3188644 m!3446887))

(assert (=> b!3188644 m!3446887))

(assert (=> b!3188644 m!3447341))

(assert (=> b!3188295 d!872615))

(declare-fun d!872617 () Bool)

(assert (=> d!872617 (= (isDefined!5490 lt!1072971) (not (isEmpty!19969 lt!1072971)))))

(declare-fun bs!540256 () Bool)

(assert (= bs!540256 d!872617))

(declare-fun m!3447345 () Bool)

(assert (=> bs!540256 m!3447345))

(assert (=> b!3188295 d!872617))

(declare-fun d!872619 () Bool)

(declare-fun lt!1073106 () Int)

(assert (=> d!872619 (>= lt!1073106 0)))

(declare-fun e!1986970 () Int)

(assert (=> d!872619 (= lt!1073106 e!1986970)))

(declare-fun c!535581 () Bool)

(assert (=> d!872619 (= c!535581 ((_ is Nil!35827) lt!1072969))))

(assert (=> d!872619 (= (size!27033 lt!1072969) lt!1073106)))

(declare-fun b!3188649 () Bool)

(assert (=> b!3188649 (= e!1986970 0)))

(declare-fun b!3188650 () Bool)

(assert (=> b!3188650 (= e!1986970 (+ 1 (size!27033 (t!236000 lt!1072969))))))

(assert (= (and d!872619 c!535581) b!3188649))

(assert (= (and d!872619 (not c!535581)) b!3188650))

(declare-fun m!3447347 () Bool)

(assert (=> b!3188650 m!3447347))

(assert (=> b!3188295 d!872619))

(declare-fun d!872621 () Bool)

(assert (=> d!872621 (= (isDefined!5490 lt!1072967) (not (isEmpty!19969 lt!1072967)))))

(declare-fun bs!540257 () Bool)

(assert (= bs!540257 d!872621))

(declare-fun m!3447349 () Bool)

(assert (=> bs!540257 m!3447349))

(assert (=> b!3188295 d!872621))

(declare-fun b!3188661 () Bool)

(declare-fun e!1986978 () Bool)

(declare-fun e!1986977 () Bool)

(assert (=> b!3188661 (= e!1986978 e!1986977)))

(declare-fun c!535587 () Bool)

(assert (=> b!3188661 (= c!535587 ((_ is IntegerValue!16111) (value!166950 separatorToken!241)))))

(declare-fun d!872623 () Bool)

(declare-fun c!535586 () Bool)

(assert (=> d!872623 (= c!535586 ((_ is IntegerValue!16110) (value!166950 separatorToken!241)))))

(assert (=> d!872623 (= (inv!21 (value!166950 separatorToken!241)) e!1986978)))

(declare-fun b!3188662 () Bool)

(declare-fun inv!17 (TokenValue!5370) Bool)

(assert (=> b!3188662 (= e!1986977 (inv!17 (value!166950 separatorToken!241)))))

(declare-fun b!3188663 () Bool)

(declare-fun inv!16 (TokenValue!5370) Bool)

(assert (=> b!3188663 (= e!1986978 (inv!16 (value!166950 separatorToken!241)))))

(declare-fun b!3188664 () Bool)

(declare-fun res!1296560 () Bool)

(declare-fun e!1986979 () Bool)

(assert (=> b!3188664 (=> res!1296560 e!1986979)))

(assert (=> b!3188664 (= res!1296560 (not ((_ is IntegerValue!16112) (value!166950 separatorToken!241))))))

(assert (=> b!3188664 (= e!1986977 e!1986979)))

(declare-fun b!3188665 () Bool)

(declare-fun inv!15 (TokenValue!5370) Bool)

(assert (=> b!3188665 (= e!1986979 (inv!15 (value!166950 separatorToken!241)))))

(assert (= (and d!872623 c!535586) b!3188663))

(assert (= (and d!872623 (not c!535586)) b!3188661))

(assert (= (and b!3188661 c!535587) b!3188662))

(assert (= (and b!3188661 (not c!535587)) b!3188664))

(assert (= (and b!3188664 (not res!1296560)) b!3188665))

(declare-fun m!3447351 () Bool)

(assert (=> b!3188662 m!3447351))

(declare-fun m!3447353 () Bool)

(assert (=> b!3188663 m!3447353))

(declare-fun m!3447355 () Bool)

(assert (=> b!3188665 m!3447355))

(assert (=> b!3188296 d!872623))

(declare-fun d!872625 () Bool)

(assert (=> d!872625 (= (inv!48680 (tag!5656 (h!41249 rules!2135))) (= (mod (str.len (value!166924 (tag!5656 (h!41249 rules!2135)))) 2) 0))))

(assert (=> b!3188317 d!872625))

(declare-fun d!872627 () Bool)

(declare-fun res!1296561 () Bool)

(declare-fun e!1986980 () Bool)

(assert (=> d!872627 (=> (not res!1296561) (not e!1986980))))

(assert (=> d!872627 (= res!1296561 (semiInverseModEq!2141 (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toValue!7204 (transformation!5140 (h!41249 rules!2135)))))))

(assert (=> d!872627 (= (inv!48683 (transformation!5140 (h!41249 rules!2135))) e!1986980)))

(declare-fun b!3188666 () Bool)

(assert (=> b!3188666 (= e!1986980 (equivClasses!2040 (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toValue!7204 (transformation!5140 (h!41249 rules!2135)))))))

(assert (= (and d!872627 res!1296561) b!3188666))

(declare-fun m!3447357 () Bool)

(assert (=> d!872627 m!3447357))

(declare-fun m!3447359 () Bool)

(assert (=> b!3188666 m!3447359))

(assert (=> b!3188317 d!872627))

(declare-fun d!872629 () Bool)

(declare-fun lt!1073107 () Bool)

(declare-fun e!1986981 () Bool)

(assert (=> d!872629 (= lt!1073107 e!1986981)))

(declare-fun res!1296562 () Bool)

(assert (=> d!872629 (=> (not res!1296562) (not e!1986981))))

(assert (=> d!872629 (= res!1296562 (= (list!12728 (_1!20731 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 (h!41248 tokens!494)))))) (list!12728 (singletonSeq!2236 (h!41248 tokens!494)))))))

(declare-fun e!1986982 () Bool)

(assert (=> d!872629 (= lt!1073107 e!1986982)))

(declare-fun res!1296563 () Bool)

(assert (=> d!872629 (=> (not res!1296563) (not e!1986982))))

(declare-fun lt!1073108 () tuple2!35194)

(assert (=> d!872629 (= res!1296563 (= (size!27035 (_1!20731 lt!1073108)) 1))))

(assert (=> d!872629 (= lt!1073108 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 (h!41248 tokens!494)))))))

(assert (=> d!872629 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872629 (= (rulesProduceIndividualToken!2221 thiss!18206 rules!2135 (h!41248 tokens!494)) lt!1073107)))

(declare-fun b!3188667 () Bool)

(declare-fun res!1296564 () Bool)

(assert (=> b!3188667 (=> (not res!1296564) (not e!1986982))))

(assert (=> b!3188667 (= res!1296564 (= (apply!8077 (_1!20731 lt!1073108) 0) (h!41248 tokens!494)))))

(declare-fun b!3188668 () Bool)

(assert (=> b!3188668 (= e!1986982 (isEmpty!19968 (_2!20731 lt!1073108)))))

(declare-fun b!3188669 () Bool)

(assert (=> b!3188669 (= e!1986981 (isEmpty!19968 (_2!20731 (lex!2069 thiss!18206 rules!2135 (print!1796 thiss!18206 (singletonSeq!2236 (h!41248 tokens!494)))))))))

(assert (= (and d!872629 res!1296563) b!3188667))

(assert (= (and b!3188667 res!1296564) b!3188668))

(assert (= (and d!872629 res!1296562) b!3188669))

(declare-fun m!3447361 () Bool)

(assert (=> d!872629 m!3447361))

(assert (=> d!872629 m!3446927))

(assert (=> d!872629 m!3446925))

(declare-fun m!3447363 () Bool)

(assert (=> d!872629 m!3447363))

(declare-fun m!3447365 () Bool)

(assert (=> d!872629 m!3447365))

(declare-fun m!3447367 () Bool)

(assert (=> d!872629 m!3447367))

(assert (=> d!872629 m!3446927))

(assert (=> d!872629 m!3447363))

(assert (=> d!872629 m!3446927))

(declare-fun m!3447369 () Bool)

(assert (=> d!872629 m!3447369))

(declare-fun m!3447371 () Bool)

(assert (=> b!3188667 m!3447371))

(declare-fun m!3447373 () Bool)

(assert (=> b!3188668 m!3447373))

(assert (=> b!3188669 m!3446927))

(assert (=> b!3188669 m!3446927))

(assert (=> b!3188669 m!3447363))

(assert (=> b!3188669 m!3447363))

(assert (=> b!3188669 m!3447365))

(declare-fun m!3447375 () Bool)

(assert (=> b!3188669 m!3447375))

(assert (=> b!3188294 d!872629))

(declare-fun b!3188670 () Bool)

(declare-fun e!1986984 () Bool)

(declare-fun e!1986983 () Bool)

(assert (=> b!3188670 (= e!1986984 e!1986983)))

(declare-fun c!535589 () Bool)

(assert (=> b!3188670 (= c!535589 ((_ is IntegerValue!16111) (value!166950 (h!41248 tokens!494))))))

(declare-fun d!872631 () Bool)

(declare-fun c!535588 () Bool)

(assert (=> d!872631 (= c!535588 ((_ is IntegerValue!16110) (value!166950 (h!41248 tokens!494))))))

(assert (=> d!872631 (= (inv!21 (value!166950 (h!41248 tokens!494))) e!1986984)))

(declare-fun b!3188671 () Bool)

(assert (=> b!3188671 (= e!1986983 (inv!17 (value!166950 (h!41248 tokens!494))))))

(declare-fun b!3188672 () Bool)

(assert (=> b!3188672 (= e!1986984 (inv!16 (value!166950 (h!41248 tokens!494))))))

(declare-fun b!3188673 () Bool)

(declare-fun res!1296565 () Bool)

(declare-fun e!1986985 () Bool)

(assert (=> b!3188673 (=> res!1296565 e!1986985)))

(assert (=> b!3188673 (= res!1296565 (not ((_ is IntegerValue!16112) (value!166950 (h!41248 tokens!494)))))))

(assert (=> b!3188673 (= e!1986983 e!1986985)))

(declare-fun b!3188674 () Bool)

(assert (=> b!3188674 (= e!1986985 (inv!15 (value!166950 (h!41248 tokens!494))))))

(assert (= (and d!872631 c!535588) b!3188672))

(assert (= (and d!872631 (not c!535588)) b!3188670))

(assert (= (and b!3188670 c!535589) b!3188671))

(assert (= (and b!3188670 (not c!535589)) b!3188673))

(assert (= (and b!3188673 (not res!1296565)) b!3188674))

(declare-fun m!3447377 () Bool)

(assert (=> b!3188671 m!3447377))

(declare-fun m!3447379 () Bool)

(assert (=> b!3188672 m!3447379))

(declare-fun m!3447381 () Bool)

(assert (=> b!3188674 m!3447381))

(assert (=> b!3188314 d!872631))

(declare-fun d!872633 () Bool)

(declare-fun res!1296570 () Bool)

(declare-fun e!1986990 () Bool)

(assert (=> d!872633 (=> res!1296570 e!1986990)))

(assert (=> d!872633 (= res!1296570 (not ((_ is Cons!35829) rules!2135)))))

(assert (=> d!872633 (= (sepAndNonSepRulesDisjointChars!1334 rules!2135 rules!2135) e!1986990)))

(declare-fun b!3188679 () Bool)

(declare-fun e!1986991 () Bool)

(assert (=> b!3188679 (= e!1986990 e!1986991)))

(declare-fun res!1296571 () Bool)

(assert (=> b!3188679 (=> (not res!1296571) (not e!1986991))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!577 (Rule!10080 List!35953) Bool)

(assert (=> b!3188679 (= res!1296571 (ruleDisjointCharsFromAllFromOtherType!577 (h!41249 rules!2135) rules!2135))))

(declare-fun b!3188680 () Bool)

(assert (=> b!3188680 (= e!1986991 (sepAndNonSepRulesDisjointChars!1334 rules!2135 (t!236002 rules!2135)))))

(assert (= (and d!872633 (not res!1296570)) b!3188679))

(assert (= (and b!3188679 res!1296571) b!3188680))

(declare-fun m!3447383 () Bool)

(assert (=> b!3188679 m!3447383))

(declare-fun m!3447385 () Bool)

(assert (=> b!3188680 m!3447385))

(assert (=> b!3188291 d!872633))

(declare-fun lt!1073111 () Bool)

(declare-fun d!872635 () Bool)

(declare-fun isEmpty!19972 (List!35952) Bool)

(assert (=> d!872635 (= lt!1073111 (isEmpty!19972 (list!12728 (_1!20731 (lex!2069 thiss!18206 rules!2135 lt!1072955)))))))

(declare-fun isEmpty!19973 (Conc!10656) Bool)

(assert (=> d!872635 (= lt!1073111 (isEmpty!19973 (c!535512 (_1!20731 (lex!2069 thiss!18206 rules!2135 lt!1072955)))))))

(assert (=> d!872635 (= (isEmpty!19961 (_1!20731 (lex!2069 thiss!18206 rules!2135 lt!1072955))) lt!1073111)))

(declare-fun bs!540258 () Bool)

(assert (= bs!540258 d!872635))

(declare-fun m!3447387 () Bool)

(assert (=> bs!540258 m!3447387))

(assert (=> bs!540258 m!3447387))

(declare-fun m!3447389 () Bool)

(assert (=> bs!540258 m!3447389))

(declare-fun m!3447391 () Bool)

(assert (=> bs!540258 m!3447391))

(assert (=> b!3188292 d!872635))

(declare-fun d!872637 () Bool)

(declare-fun e!1987035 () Bool)

(assert (=> d!872637 e!1987035))

(declare-fun res!1296620 () Bool)

(assert (=> d!872637 (=> (not res!1296620) (not e!1987035))))

(declare-fun e!1987036 () Bool)

(assert (=> d!872637 (= res!1296620 e!1987036)))

(declare-fun c!535609 () Bool)

(declare-fun lt!1073149 () tuple2!35194)

(assert (=> d!872637 (= c!535609 (> (size!27035 (_1!20731 lt!1073149)) 0))))

(declare-fun lexTailRecV2!919 (LexerInterface!4729 List!35953 BalanceConc!20924 BalanceConc!20924 BalanceConc!20924 BalanceConc!20926) tuple2!35194)

(assert (=> d!872637 (= lt!1073149 (lexTailRecV2!919 thiss!18206 rules!2135 lt!1072955 (BalanceConc!20925 Empty!10655) lt!1072955 (BalanceConc!20927 Empty!10656)))))

(assert (=> d!872637 (= (lex!2069 thiss!18206 rules!2135 lt!1072955) lt!1073149)))

(declare-fun b!3188765 () Bool)

(declare-fun e!1987034 () Bool)

(assert (=> b!3188765 (= e!1987036 e!1987034)))

(declare-fun res!1296619 () Bool)

(assert (=> b!3188765 (= res!1296619 (< (size!27037 (_2!20731 lt!1073149)) (size!27037 lt!1072955)))))

(assert (=> b!3188765 (=> (not res!1296619) (not e!1987034))))

(declare-fun b!3188766 () Bool)

(assert (=> b!3188766 (= e!1987034 (not (isEmpty!19961 (_1!20731 lt!1073149))))))

(declare-fun b!3188767 () Bool)

(declare-fun res!1296618 () Bool)

(assert (=> b!3188767 (=> (not res!1296618) (not e!1987035))))

(declare-datatypes ((tuple2!35204 0))(
  ( (tuple2!35205 (_1!20736 List!35952) (_2!20736 List!35951)) )
))
(declare-fun lexList!1281 (LexerInterface!4729 List!35953 List!35951) tuple2!35204)

(assert (=> b!3188767 (= res!1296618 (= (list!12728 (_1!20731 lt!1073149)) (_1!20736 (lexList!1281 thiss!18206 rules!2135 (list!12725 lt!1072955)))))))

(declare-fun b!3188768 () Bool)

(assert (=> b!3188768 (= e!1987036 (= (_2!20731 lt!1073149) lt!1072955))))

(declare-fun b!3188769 () Bool)

(assert (=> b!3188769 (= e!1987035 (= (list!12725 (_2!20731 lt!1073149)) (_2!20736 (lexList!1281 thiss!18206 rules!2135 (list!12725 lt!1072955)))))))

(assert (= (and d!872637 c!535609) b!3188765))

(assert (= (and d!872637 (not c!535609)) b!3188768))

(assert (= (and b!3188765 res!1296619) b!3188766))

(assert (= (and d!872637 res!1296620) b!3188767))

(assert (= (and b!3188767 res!1296618) b!3188769))

(declare-fun m!3447489 () Bool)

(assert (=> b!3188767 m!3447489))

(declare-fun m!3447491 () Bool)

(assert (=> b!3188767 m!3447491))

(assert (=> b!3188767 m!3447491))

(declare-fun m!3447493 () Bool)

(assert (=> b!3188767 m!3447493))

(declare-fun m!3447495 () Bool)

(assert (=> b!3188766 m!3447495))

(declare-fun m!3447497 () Bool)

(assert (=> b!3188769 m!3447497))

(assert (=> b!3188769 m!3447491))

(assert (=> b!3188769 m!3447491))

(assert (=> b!3188769 m!3447493))

(declare-fun m!3447499 () Bool)

(assert (=> d!872637 m!3447499))

(declare-fun m!3447501 () Bool)

(assert (=> d!872637 m!3447501))

(declare-fun m!3447503 () Bool)

(assert (=> b!3188765 m!3447503))

(declare-fun m!3447505 () Bool)

(assert (=> b!3188765 m!3447505))

(assert (=> b!3188292 d!872637))

(declare-fun d!872655 () Bool)

(declare-fun fromListB!1513 (List!35951) BalanceConc!20924)

(assert (=> d!872655 (= (seqFromList!3359 lt!1072969) (fromListB!1513 lt!1072969))))

(declare-fun bs!540262 () Bool)

(assert (= bs!540262 d!872655))

(declare-fun m!3447507 () Bool)

(assert (=> bs!540262 m!3447507))

(assert (=> b!3188292 d!872655))

(declare-fun d!872657 () Bool)

(assert (=> d!872657 (= (list!12725 (charsOf!3162 (h!41248 tokens!494))) (list!12729 (c!535511 (charsOf!3162 (h!41248 tokens!494)))))))

(declare-fun bs!540263 () Bool)

(assert (= bs!540263 d!872657))

(declare-fun m!3447509 () Bool)

(assert (=> bs!540263 m!3447509))

(assert (=> b!3188313 d!872657))

(declare-fun d!872659 () Bool)

(declare-fun lt!1073152 () BalanceConc!20924)

(assert (=> d!872659 (= (list!12725 lt!1073152) (originalCharacters!5854 (h!41248 tokens!494)))))

(declare-fun dynLambda!14469 (Int TokenValue!5370) BalanceConc!20924)

(assert (=> d!872659 (= lt!1073152 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (value!166950 (h!41248 tokens!494))))))

(assert (=> d!872659 (= (charsOf!3162 (h!41248 tokens!494)) lt!1073152)))

(declare-fun b_lambda!86985 () Bool)

(assert (=> (not b_lambda!86985) (not d!872659)))

(declare-fun t!236025 () Bool)

(declare-fun tb!155887 () Bool)

(assert (=> (and b!3188298 (= (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236025) tb!155887))

(declare-fun b!3188774 () Bool)

(declare-fun e!1987039 () Bool)

(declare-fun tp!1007966 () Bool)

(declare-fun inv!48687 (Conc!10655) Bool)

(assert (=> b!3188774 (= e!1987039 (and (inv!48687 (c!535511 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (value!166950 (h!41248 tokens!494))))) tp!1007966))))

(declare-fun result!198052 () Bool)

(declare-fun inv!48688 (BalanceConc!20924) Bool)

(assert (=> tb!155887 (= result!198052 (and (inv!48688 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (value!166950 (h!41248 tokens!494)))) e!1987039))))

(assert (= tb!155887 b!3188774))

(declare-fun m!3447511 () Bool)

(assert (=> b!3188774 m!3447511))

(declare-fun m!3447513 () Bool)

(assert (=> tb!155887 m!3447513))

(assert (=> d!872659 t!236025))

(declare-fun b_and!211175 () Bool)

(assert (= b_and!211153 (and (=> t!236025 result!198052) b_and!211175)))

(declare-fun t!236027 () Bool)

(declare-fun tb!155889 () Bool)

(assert (=> (and b!3188305 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236027) tb!155889))

(declare-fun result!198056 () Bool)

(assert (= result!198056 result!198052))

(assert (=> d!872659 t!236027))

(declare-fun b_and!211177 () Bool)

(assert (= b_and!211157 (and (=> t!236027 result!198056) b_and!211177)))

(declare-fun t!236029 () Bool)

(declare-fun tb!155891 () Bool)

(assert (=> (and b!3188316 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236029) tb!155891))

(declare-fun result!198058 () Bool)

(assert (= result!198058 result!198052))

(assert (=> d!872659 t!236029))

(declare-fun b_and!211179 () Bool)

(assert (= b_and!211161 (and (=> t!236029 result!198058) b_and!211179)))

(declare-fun m!3447515 () Bool)

(assert (=> d!872659 m!3447515))

(declare-fun m!3447517 () Bool)

(assert (=> d!872659 m!3447517))

(assert (=> b!3188313 d!872659))

(declare-fun d!872661 () Bool)

(declare-fun res!1296625 () Bool)

(declare-fun e!1987042 () Bool)

(assert (=> d!872661 (=> (not res!1296625) (not e!1987042))))

(assert (=> d!872661 (= res!1296625 (not (isEmpty!19962 (originalCharacters!5854 (h!41248 tokens!494)))))))

(assert (=> d!872661 (= (inv!48684 (h!41248 tokens!494)) e!1987042)))

(declare-fun b!3188779 () Bool)

(declare-fun res!1296626 () Bool)

(assert (=> b!3188779 (=> (not res!1296626) (not e!1987042))))

(assert (=> b!3188779 (= res!1296626 (= (originalCharacters!5854 (h!41248 tokens!494)) (list!12725 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (value!166950 (h!41248 tokens!494))))))))

(declare-fun b!3188780 () Bool)

(assert (=> b!3188780 (= e!1987042 (= (size!27032 (h!41248 tokens!494)) (size!27033 (originalCharacters!5854 (h!41248 tokens!494)))))))

(assert (= (and d!872661 res!1296625) b!3188779))

(assert (= (and b!3188779 res!1296626) b!3188780))

(declare-fun b_lambda!86987 () Bool)

(assert (=> (not b_lambda!86987) (not b!3188779)))

(assert (=> b!3188779 t!236025))

(declare-fun b_and!211181 () Bool)

(assert (= b_and!211175 (and (=> t!236025 result!198052) b_and!211181)))

(assert (=> b!3188779 t!236027))

(declare-fun b_and!211183 () Bool)

(assert (= b_and!211177 (and (=> t!236027 result!198056) b_and!211183)))

(assert (=> b!3188779 t!236029))

(declare-fun b_and!211185 () Bool)

(assert (= b_and!211179 (and (=> t!236029 result!198058) b_and!211185)))

(declare-fun m!3447519 () Bool)

(assert (=> d!872661 m!3447519))

(assert (=> b!3188779 m!3447517))

(assert (=> b!3188779 m!3447517))

(declare-fun m!3447521 () Bool)

(assert (=> b!3188779 m!3447521))

(declare-fun m!3447523 () Bool)

(assert (=> b!3188780 m!3447523))

(assert (=> b!3188290 d!872661))

(declare-fun d!872663 () Bool)

(assert (=> d!872663 (= (isEmpty!19963 rules!2135) ((_ is Nil!35829) rules!2135))))

(assert (=> b!3188311 d!872663))

(declare-fun d!872665 () Bool)

(declare-fun res!1296627 () Bool)

(declare-fun e!1987043 () Bool)

(assert (=> d!872665 (=> (not res!1296627) (not e!1987043))))

(assert (=> d!872665 (= res!1296627 (not (isEmpty!19962 (originalCharacters!5854 separatorToken!241))))))

(assert (=> d!872665 (= (inv!48684 separatorToken!241) e!1987043)))

(declare-fun b!3188781 () Bool)

(declare-fun res!1296628 () Bool)

(assert (=> b!3188781 (=> (not res!1296628) (not e!1987043))))

(assert (=> b!3188781 (= res!1296628 (= (originalCharacters!5854 separatorToken!241) (list!12725 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (value!166950 separatorToken!241)))))))

(declare-fun b!3188782 () Bool)

(assert (=> b!3188782 (= e!1987043 (= (size!27032 separatorToken!241) (size!27033 (originalCharacters!5854 separatorToken!241))))))

(assert (= (and d!872665 res!1296627) b!3188781))

(assert (= (and b!3188781 res!1296628) b!3188782))

(declare-fun b_lambda!86989 () Bool)

(assert (=> (not b_lambda!86989) (not b!3188781)))

(declare-fun t!236031 () Bool)

(declare-fun tb!155893 () Bool)

(assert (=> (and b!3188298 (= (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241)))) t!236031) tb!155893))

(declare-fun b!3188783 () Bool)

(declare-fun e!1987044 () Bool)

(declare-fun tp!1007967 () Bool)

(assert (=> b!3188783 (= e!1987044 (and (inv!48687 (c!535511 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (value!166950 separatorToken!241)))) tp!1007967))))

(declare-fun result!198060 () Bool)

(assert (=> tb!155893 (= result!198060 (and (inv!48688 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (value!166950 separatorToken!241))) e!1987044))))

(assert (= tb!155893 b!3188783))

(declare-fun m!3447525 () Bool)

(assert (=> b!3188783 m!3447525))

(declare-fun m!3447527 () Bool)

(assert (=> tb!155893 m!3447527))

(assert (=> b!3188781 t!236031))

(declare-fun b_and!211187 () Bool)

(assert (= b_and!211181 (and (=> t!236031 result!198060) b_and!211187)))

(declare-fun tb!155895 () Bool)

(declare-fun t!236033 () Bool)

(assert (=> (and b!3188305 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241)))) t!236033) tb!155895))

(declare-fun result!198062 () Bool)

(assert (= result!198062 result!198060))

(assert (=> b!3188781 t!236033))

(declare-fun b_and!211189 () Bool)

(assert (= b_and!211183 (and (=> t!236033 result!198062) b_and!211189)))

(declare-fun tb!155897 () Bool)

(declare-fun t!236035 () Bool)

(assert (=> (and b!3188316 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241)))) t!236035) tb!155897))

(declare-fun result!198064 () Bool)

(assert (= result!198064 result!198060))

(assert (=> b!3188781 t!236035))

(declare-fun b_and!211191 () Bool)

(assert (= b_and!211185 (and (=> t!236035 result!198064) b_and!211191)))

(declare-fun m!3447529 () Bool)

(assert (=> d!872665 m!3447529))

(declare-fun m!3447531 () Bool)

(assert (=> b!3188781 m!3447531))

(assert (=> b!3188781 m!3447531))

(declare-fun m!3447533 () Bool)

(assert (=> b!3188781 m!3447533))

(declare-fun m!3447535 () Bool)

(assert (=> b!3188782 m!3447535))

(assert (=> start!299058 d!872665))

(declare-fun bs!540275 () Bool)

(declare-fun d!872667 () Bool)

(assert (= bs!540275 (and d!872667 b!3188309)))

(declare-fun lambda!116616 () Int)

(assert (=> bs!540275 (not (= lambda!116616 lambda!116603))))

(declare-fun b!3188990 () Bool)

(declare-fun e!1987177 () Bool)

(assert (=> b!3188990 (= e!1987177 true)))

(declare-fun b!3188989 () Bool)

(declare-fun e!1987176 () Bool)

(assert (=> b!3188989 (= e!1987176 e!1987177)))

(declare-fun b!3188988 () Bool)

(declare-fun e!1987175 () Bool)

(assert (=> b!3188988 (= e!1987175 e!1987176)))

(assert (=> d!872667 e!1987175))

(assert (= b!3188989 b!3188990))

(assert (= b!3188988 b!3188989))

(assert (= (and d!872667 ((_ is Cons!35829) rules!2135)) b!3188988))

(declare-fun order!18265 () Int)

(declare-fun order!18267 () Int)

(declare-fun dynLambda!14470 (Int Int) Int)

(declare-fun dynLambda!14471 (Int Int) Int)

(assert (=> b!3188990 (< (dynLambda!14470 order!18265 (toValue!7204 (transformation!5140 (h!41249 rules!2135)))) (dynLambda!14471 order!18267 lambda!116616))))

(declare-fun order!18269 () Int)

(declare-fun dynLambda!14472 (Int Int) Int)

(assert (=> b!3188990 (< (dynLambda!14472 order!18269 (toChars!7063 (transformation!5140 (h!41249 rules!2135)))) (dynLambda!14471 order!18267 lambda!116616))))

(assert (=> d!872667 true))

(declare-fun e!1987168 () Bool)

(assert (=> d!872667 e!1987168))

(declare-fun res!1296698 () Bool)

(assert (=> d!872667 (=> (not res!1296698) (not e!1987168))))

(declare-fun lt!1073220 () Bool)

(assert (=> d!872667 (= res!1296698 (= lt!1073220 (forall!7268 (list!12728 lt!1072975) lambda!116616)))))

(declare-fun forall!7271 (BalanceConc!20926 Int) Bool)

(assert (=> d!872667 (= lt!1073220 (forall!7271 lt!1072975 lambda!116616))))

(assert (=> d!872667 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872667 (= (rulesProduceEachTokenIndividually!1180 thiss!18206 rules!2135 lt!1072975) lt!1073220)))

(declare-fun b!3188979 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1709 (LexerInterface!4729 List!35953 List!35952) Bool)

(assert (=> b!3188979 (= e!1987168 (= lt!1073220 (rulesProduceEachTokenIndividuallyList!1709 thiss!18206 rules!2135 (list!12728 lt!1072975))))))

(assert (= (and d!872667 res!1296698) b!3188979))

(declare-fun m!3447761 () Bool)

(assert (=> d!872667 m!3447761))

(assert (=> d!872667 m!3447761))

(declare-fun m!3447763 () Bool)

(assert (=> d!872667 m!3447763))

(declare-fun m!3447765 () Bool)

(assert (=> d!872667 m!3447765))

(assert (=> d!872667 m!3446925))

(assert (=> b!3188979 m!3447761))

(assert (=> b!3188979 m!3447761))

(declare-fun m!3447767 () Bool)

(assert (=> b!3188979 m!3447767))

(assert (=> b!3188310 d!872667))

(declare-fun d!872737 () Bool)

(declare-fun fromListB!1514 (List!35952) BalanceConc!20926)

(assert (=> d!872737 (= (seqFromList!3360 tokens!494) (fromListB!1514 tokens!494))))

(declare-fun bs!540276 () Bool)

(assert (= bs!540276 d!872737))

(declare-fun m!3447769 () Bool)

(assert (=> bs!540276 m!3447769))

(assert (=> b!3188310 d!872737))

(declare-fun d!872739 () Bool)

(assert (=> d!872739 (not (matchR!4557 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961))))

(declare-fun lt!1073223 () Unit!50250)

(declare-fun choose!18627 (Regex!9899 List!35951 C!19984) Unit!50250)

(assert (=> d!872739 (= lt!1073223 (choose!18627 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961 lt!1072962))))

(assert (=> d!872739 (validRegex!4540 (regex!5140 (rule!7568 separatorToken!241)))))

(assert (=> d!872739 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!338 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961 lt!1072962) lt!1073223)))

(declare-fun bs!540277 () Bool)

(assert (= bs!540277 d!872739))

(assert (=> bs!540277 m!3446919))

(declare-fun m!3447771 () Bool)

(assert (=> bs!540277 m!3447771))

(declare-fun m!3447773 () Bool)

(assert (=> bs!540277 m!3447773))

(assert (=> b!3188289 d!872739))

(declare-fun b!3188993 () Bool)

(declare-fun res!1296705 () Bool)

(declare-fun e!1987179 () Bool)

(assert (=> b!3188993 (=> res!1296705 e!1987179)))

(assert (=> b!3188993 (= res!1296705 (not (isEmpty!19962 (tail!5189 lt!1072961))))))

(declare-fun b!3188995 () Bool)

(declare-fun res!1296700 () Bool)

(declare-fun e!1987182 () Bool)

(assert (=> b!3188995 (=> res!1296700 e!1987182)))

(assert (=> b!3188995 (= res!1296700 (not ((_ is ElementMatch!9899) (regex!5140 (rule!7568 separatorToken!241)))))))

(declare-fun e!1987181 () Bool)

(assert (=> b!3188995 (= e!1987181 e!1987182)))

(declare-fun b!3188996 () Bool)

(declare-fun e!1987183 () Bool)

(assert (=> b!3188996 (= e!1987183 e!1987181)))

(declare-fun c!535646 () Bool)

(assert (=> b!3188996 (= c!535646 ((_ is EmptyLang!9899) (regex!5140 (rule!7568 separatorToken!241))))))

(declare-fun b!3188997 () Bool)

(declare-fun e!1987184 () Bool)

(assert (=> b!3188997 (= e!1987184 (nullable!3388 (regex!5140 (rule!7568 separatorToken!241))))))

(declare-fun b!3188998 () Bool)

(declare-fun res!1296706 () Bool)

(assert (=> b!3188998 (=> res!1296706 e!1987182)))

(declare-fun e!1987178 () Bool)

(assert (=> b!3188998 (= res!1296706 e!1987178)))

(declare-fun res!1296702 () Bool)

(assert (=> b!3188998 (=> (not res!1296702) (not e!1987178))))

(declare-fun lt!1073224 () Bool)

(assert (=> b!3188998 (= res!1296702 lt!1073224)))

(declare-fun b!3188999 () Bool)

(assert (=> b!3188999 (= e!1987178 (= (head!6973 lt!1072961) (c!535510 (regex!5140 (rule!7568 separatorToken!241)))))))

(declare-fun b!3189000 () Bool)

(declare-fun res!1296701 () Bool)

(assert (=> b!3189000 (=> (not res!1296701) (not e!1987178))))

(assert (=> b!3189000 (= res!1296701 (isEmpty!19962 (tail!5189 lt!1072961)))))

(declare-fun b!3189001 () Bool)

(declare-fun res!1296704 () Bool)

(assert (=> b!3189001 (=> (not res!1296704) (not e!1987178))))

(declare-fun call!231362 () Bool)

(assert (=> b!3189001 (= res!1296704 (not call!231362))))

(declare-fun b!3189002 () Bool)

(declare-fun e!1987180 () Bool)

(assert (=> b!3189002 (= e!1987180 e!1987179)))

(declare-fun res!1296699 () Bool)

(assert (=> b!3189002 (=> res!1296699 e!1987179)))

(assert (=> b!3189002 (= res!1296699 call!231362)))

(declare-fun b!3189003 () Bool)

(assert (=> b!3189003 (= e!1987182 e!1987180)))

(declare-fun res!1296703 () Bool)

(assert (=> b!3189003 (=> (not res!1296703) (not e!1987180))))

(assert (=> b!3189003 (= res!1296703 (not lt!1073224))))

(declare-fun b!3189004 () Bool)

(assert (=> b!3189004 (= e!1987179 (not (= (head!6973 lt!1072961) (c!535510 (regex!5140 (rule!7568 separatorToken!241))))))))

(declare-fun b!3189005 () Bool)

(assert (=> b!3189005 (= e!1987183 (= lt!1073224 call!231362))))

(declare-fun d!872741 () Bool)

(assert (=> d!872741 e!1987183))

(declare-fun c!535648 () Bool)

(assert (=> d!872741 (= c!535648 ((_ is EmptyExpr!9899) (regex!5140 (rule!7568 separatorToken!241))))))

(assert (=> d!872741 (= lt!1073224 e!1987184)))

(declare-fun c!535647 () Bool)

(assert (=> d!872741 (= c!535647 (isEmpty!19962 lt!1072961))))

(assert (=> d!872741 (validRegex!4540 (regex!5140 (rule!7568 separatorToken!241)))))

(assert (=> d!872741 (= (matchR!4557 (regex!5140 (rule!7568 separatorToken!241)) lt!1072961) lt!1073224)))

(declare-fun b!3188994 () Bool)

(assert (=> b!3188994 (= e!1987181 (not lt!1073224))))

(declare-fun b!3189006 () Bool)

(assert (=> b!3189006 (= e!1987184 (matchR!4557 (derivativeStep!2941 (regex!5140 (rule!7568 separatorToken!241)) (head!6973 lt!1072961)) (tail!5189 lt!1072961)))))

(declare-fun bm!231357 () Bool)

(assert (=> bm!231357 (= call!231362 (isEmpty!19962 lt!1072961))))

(assert (= (and d!872741 c!535647) b!3188997))

(assert (= (and d!872741 (not c!535647)) b!3189006))

(assert (= (and d!872741 c!535648) b!3189005))

(assert (= (and d!872741 (not c!535648)) b!3188996))

(assert (= (and b!3188996 c!535646) b!3188994))

(assert (= (and b!3188996 (not c!535646)) b!3188995))

(assert (= (and b!3188995 (not res!1296700)) b!3188998))

(assert (= (and b!3188998 res!1296702) b!3189001))

(assert (= (and b!3189001 res!1296704) b!3189000))

(assert (= (and b!3189000 res!1296701) b!3188999))

(assert (= (and b!3188998 (not res!1296706)) b!3189003))

(assert (= (and b!3189003 res!1296703) b!3189002))

(assert (= (and b!3189002 (not res!1296699)) b!3188993))

(assert (= (and b!3188993 (not res!1296705)) b!3189004))

(assert (= (or b!3189005 b!3189001 b!3189002) bm!231357))

(assert (=> b!3188999 m!3446891))

(assert (=> bm!231357 m!3447087))

(assert (=> b!3189004 m!3446891))

(declare-fun m!3447775 () Bool)

(assert (=> b!3188997 m!3447775))

(assert (=> d!872741 m!3447087))

(assert (=> d!872741 m!3447773))

(assert (=> b!3189006 m!3446891))

(assert (=> b!3189006 m!3446891))

(declare-fun m!3447777 () Bool)

(assert (=> b!3189006 m!3447777))

(assert (=> b!3189006 m!3447095))

(assert (=> b!3189006 m!3447777))

(assert (=> b!3189006 m!3447095))

(declare-fun m!3447779 () Bool)

(assert (=> b!3189006 m!3447779))

(assert (=> b!3189000 m!3447095))

(assert (=> b!3189000 m!3447095))

(assert (=> b!3189000 m!3447099))

(assert (=> b!3188993 m!3447095))

(assert (=> b!3188993 m!3447095))

(assert (=> b!3188993 m!3447099))

(assert (=> b!3188289 d!872741))

(declare-fun d!872743 () Bool)

(declare-fun res!1296709 () Bool)

(declare-fun e!1987187 () Bool)

(assert (=> d!872743 (=> (not res!1296709) (not e!1987187))))

(declare-fun rulesValid!1901 (LexerInterface!4729 List!35953) Bool)

(assert (=> d!872743 (= res!1296709 (rulesValid!1901 thiss!18206 rules!2135))))

(assert (=> d!872743 (= (rulesInvariant!4126 thiss!18206 rules!2135) e!1987187)))

(declare-fun b!3189009 () Bool)

(declare-datatypes ((List!35955 0))(
  ( (Nil!35831) (Cons!35831 (h!41251 String!40183) (t!236078 List!35955)) )
))
(declare-fun noDuplicateTag!1897 (LexerInterface!4729 List!35953 List!35955) Bool)

(assert (=> b!3189009 (= e!1987187 (noDuplicateTag!1897 thiss!18206 rules!2135 Nil!35831))))

(assert (= (and d!872743 res!1296709) b!3189009))

(declare-fun m!3447781 () Bool)

(assert (=> d!872743 m!3447781))

(declare-fun m!3447783 () Bool)

(assert (=> b!3189009 m!3447783))

(assert (=> b!3188288 d!872743))

(declare-fun d!872745 () Bool)

(declare-fun res!1296714 () Bool)

(declare-fun e!1987192 () Bool)

(assert (=> d!872745 (=> res!1296714 e!1987192)))

(assert (=> d!872745 (= res!1296714 ((_ is Nil!35828) tokens!494))))

(assert (=> d!872745 (= (forall!7268 tokens!494 lambda!116603) e!1987192)))

(declare-fun b!3189014 () Bool)

(declare-fun e!1987193 () Bool)

(assert (=> b!3189014 (= e!1987192 e!1987193)))

(declare-fun res!1296715 () Bool)

(assert (=> b!3189014 (=> (not res!1296715) (not e!1987193))))

(declare-fun dynLambda!14473 (Int Token!9646) Bool)

(assert (=> b!3189014 (= res!1296715 (dynLambda!14473 lambda!116603 (h!41248 tokens!494)))))

(declare-fun b!3189015 () Bool)

(assert (=> b!3189015 (= e!1987193 (forall!7268 (t!236001 tokens!494) lambda!116603))))

(assert (= (and d!872745 (not res!1296714)) b!3189014))

(assert (= (and b!3189014 res!1296715) b!3189015))

(declare-fun b_lambda!87015 () Bool)

(assert (=> (not b_lambda!87015) (not b!3189014)))

(declare-fun m!3447785 () Bool)

(assert (=> b!3189014 m!3447785))

(declare-fun m!3447787 () Bool)

(assert (=> b!3189015 m!3447787))

(assert (=> b!3188309 d!872745))

(declare-fun d!872747 () Bool)

(assert (=> d!872747 (= (inv!48680 (tag!5656 (rule!7568 (h!41248 tokens!494)))) (= (mod (str.len (value!166924 (tag!5656 (rule!7568 (h!41248 tokens!494))))) 2) 0))))

(assert (=> b!3188286 d!872747))

(declare-fun d!872749 () Bool)

(declare-fun res!1296716 () Bool)

(declare-fun e!1987194 () Bool)

(assert (=> d!872749 (=> (not res!1296716) (not e!1987194))))

(assert (=> d!872749 (= res!1296716 (semiInverseModEq!2141 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))))))

(assert (=> d!872749 (= (inv!48683 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) e!1987194)))

(declare-fun b!3189016 () Bool)

(assert (=> b!3189016 (= e!1987194 (equivClasses!2040 (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))))))

(assert (= (and d!872749 res!1296716) b!3189016))

(declare-fun m!3447789 () Bool)

(assert (=> d!872749 m!3447789))

(declare-fun m!3447791 () Bool)

(assert (=> b!3189016 m!3447791))

(assert (=> b!3188286 d!872749))

(declare-fun d!872751 () Bool)

(assert (=> d!872751 (dynLambda!14473 lambda!116603 (h!41248 tokens!494))))

(declare-fun lt!1073227 () Unit!50250)

(declare-fun choose!18628 (List!35952 Int Token!9646) Unit!50250)

(assert (=> d!872751 (= lt!1073227 (choose!18628 tokens!494 lambda!116603 (h!41248 tokens!494)))))

(declare-fun e!1987197 () Bool)

(assert (=> d!872751 e!1987197))

(declare-fun res!1296719 () Bool)

(assert (=> d!872751 (=> (not res!1296719) (not e!1987197))))

(assert (=> d!872751 (= res!1296719 (forall!7268 tokens!494 lambda!116603))))

(assert (=> d!872751 (= (forallContained!1123 tokens!494 lambda!116603 (h!41248 tokens!494)) lt!1073227)))

(declare-fun b!3189019 () Bool)

(declare-fun contains!6365 (List!35952 Token!9646) Bool)

(assert (=> b!3189019 (= e!1987197 (contains!6365 tokens!494 (h!41248 tokens!494)))))

(assert (= (and d!872751 res!1296719) b!3189019))

(declare-fun b_lambda!87017 () Bool)

(assert (=> (not b_lambda!87017) (not d!872751)))

(assert (=> d!872751 m!3447785))

(declare-fun m!3447793 () Bool)

(assert (=> d!872751 m!3447793))

(assert (=> d!872751 m!3446881))

(declare-fun m!3447795 () Bool)

(assert (=> b!3189019 m!3447795))

(assert (=> b!3188307 d!872751))

(declare-fun lt!1073230 () BalanceConc!20924)

(declare-fun d!872753 () Bool)

(declare-fun printWithSeparatorTokenList!100 (LexerInterface!4729 List!35952 Token!9646) List!35951)

(assert (=> d!872753 (= (list!12725 lt!1073230) (printWithSeparatorTokenList!100 thiss!18206 (list!12728 lt!1072975) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!14 (LexerInterface!4729 BalanceConc!20926 Token!9646 Int BalanceConc!20924) BalanceConc!20924)

(assert (=> d!872753 (= lt!1073230 (printWithSeparatorTokenTailRec!14 thiss!18206 lt!1072975 separatorToken!241 0 (BalanceConc!20925 Empty!10655)))))

(assert (=> d!872753 (isSeparator!5140 (rule!7568 separatorToken!241))))

(assert (=> d!872753 (= (printWithSeparatorToken!38 thiss!18206 lt!1072975 separatorToken!241) lt!1073230)))

(declare-fun bs!540278 () Bool)

(assert (= bs!540278 d!872753))

(declare-fun m!3447797 () Bool)

(assert (=> bs!540278 m!3447797))

(assert (=> bs!540278 m!3447761))

(assert (=> bs!540278 m!3447761))

(declare-fun m!3447799 () Bool)

(assert (=> bs!540278 m!3447799))

(declare-fun m!3447801 () Bool)

(assert (=> bs!540278 m!3447801))

(assert (=> b!3188303 d!872753))

(declare-fun b!3189029 () Bool)

(declare-fun e!1987203 () List!35951)

(assert (=> b!3189029 (= e!1987203 (Cons!35827 (h!41247 lt!1072969) (++!8576 (t!236000 lt!1072969) lt!1072961)))))

(declare-fun b!3189028 () Bool)

(assert (=> b!3189028 (= e!1987203 lt!1072961)))

(declare-fun b!3189030 () Bool)

(declare-fun res!1296724 () Bool)

(declare-fun e!1987202 () Bool)

(assert (=> b!3189030 (=> (not res!1296724) (not e!1987202))))

(declare-fun lt!1073233 () List!35951)

(assert (=> b!3189030 (= res!1296724 (= (size!27033 lt!1073233) (+ (size!27033 lt!1072969) (size!27033 lt!1072961))))))

(declare-fun b!3189031 () Bool)

(assert (=> b!3189031 (= e!1987202 (or (not (= lt!1072961 Nil!35827)) (= lt!1073233 lt!1072969)))))

(declare-fun d!872755 () Bool)

(assert (=> d!872755 e!1987202))

(declare-fun res!1296725 () Bool)

(assert (=> d!872755 (=> (not res!1296725) (not e!1987202))))

(assert (=> d!872755 (= res!1296725 (= (content!4856 lt!1073233) ((_ map or) (content!4856 lt!1072969) (content!4856 lt!1072961))))))

(assert (=> d!872755 (= lt!1073233 e!1987203)))

(declare-fun c!535651 () Bool)

(assert (=> d!872755 (= c!535651 ((_ is Nil!35827) lt!1072969))))

(assert (=> d!872755 (= (++!8576 lt!1072969 lt!1072961) lt!1073233)))

(assert (= (and d!872755 c!535651) b!3189028))

(assert (= (and d!872755 (not c!535651)) b!3189029))

(assert (= (and d!872755 res!1296725) b!3189030))

(assert (= (and b!3189030 res!1296724) b!3189031))

(declare-fun m!3447803 () Bool)

(assert (=> b!3189029 m!3447803))

(declare-fun m!3447805 () Bool)

(assert (=> b!3189030 m!3447805))

(assert (=> b!3189030 m!3446899))

(declare-fun m!3447807 () Bool)

(assert (=> b!3189030 m!3447807))

(declare-fun m!3447809 () Bool)

(assert (=> d!872755 m!3447809))

(declare-fun m!3447811 () Bool)

(assert (=> d!872755 m!3447811))

(declare-fun m!3447813 () Bool)

(assert (=> d!872755 m!3447813))

(assert (=> b!3188303 d!872755))

(declare-fun d!872757 () Bool)

(assert (=> d!872757 (= (list!12725 lt!1072951) (list!12729 (c!535511 lt!1072951)))))

(declare-fun bs!540279 () Bool)

(assert (= bs!540279 d!872757))

(declare-fun m!3447815 () Bool)

(assert (=> bs!540279 m!3447815))

(assert (=> b!3188303 d!872757))

(declare-fun d!872759 () Bool)

(declare-fun lt!1073234 () BalanceConc!20924)

(assert (=> d!872759 (= (list!12725 lt!1073234) (originalCharacters!5854 separatorToken!241))))

(assert (=> d!872759 (= lt!1073234 (dynLambda!14469 (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (value!166950 separatorToken!241)))))

(assert (=> d!872759 (= (charsOf!3162 separatorToken!241) lt!1073234)))

(declare-fun b_lambda!87019 () Bool)

(assert (=> (not b_lambda!87019) (not d!872759)))

(assert (=> d!872759 t!236031))

(declare-fun b_and!211225 () Bool)

(assert (= b_and!211187 (and (=> t!236031 result!198060) b_and!211225)))

(assert (=> d!872759 t!236033))

(declare-fun b_and!211227 () Bool)

(assert (= b_and!211189 (and (=> t!236033 result!198062) b_and!211227)))

(assert (=> d!872759 t!236035))

(declare-fun b_and!211229 () Bool)

(assert (= b_and!211191 (and (=> t!236035 result!198064) b_and!211229)))

(declare-fun m!3447817 () Bool)

(assert (=> d!872759 m!3447817))

(assert (=> d!872759 m!3447531))

(assert (=> b!3188303 d!872759))

(declare-fun d!872761 () Bool)

(assert (=> d!872761 (= (list!12725 (charsOf!3162 separatorToken!241)) (list!12729 (c!535511 (charsOf!3162 separatorToken!241))))))

(declare-fun bs!540280 () Bool)

(assert (= bs!540280 d!872761))

(declare-fun m!3447819 () Bool)

(assert (=> bs!540280 m!3447819))

(assert (=> b!3188303 d!872761))

(declare-fun b!3189032 () Bool)

(declare-fun e!1987204 () List!35951)

(declare-fun e!1987205 () List!35951)

(assert (=> b!3189032 (= e!1987204 e!1987205)))

(declare-fun c!535653 () Bool)

(assert (=> b!3189032 (= c!535653 ((_ is ElementMatch!9899) (regex!5140 (rule!7568 (h!41248 tokens!494)))))))

(declare-fun call!231366 () List!35951)

(declare-fun c!535654 () Bool)

(declare-fun c!535652 () Bool)

(declare-fun bm!231358 () Bool)

(assert (=> bm!231358 (= call!231366 (usedCharacters!484 (ite c!535652 (reg!10228 (regex!5140 (rule!7568 (h!41248 tokens!494)))) (ite c!535654 (regOne!20311 (regex!5140 (rule!7568 (h!41248 tokens!494)))) (regTwo!20310 (regex!5140 (rule!7568 (h!41248 tokens!494))))))))))

(declare-fun b!3189033 () Bool)

(declare-fun e!1987207 () List!35951)

(declare-fun call!231363 () List!35951)

(assert (=> b!3189033 (= e!1987207 call!231363)))

(declare-fun bm!231359 () Bool)

(declare-fun call!231365 () List!35951)

(assert (=> bm!231359 (= call!231365 call!231366)))

(declare-fun b!3189034 () Bool)

(declare-fun e!1987206 () List!35951)

(assert (=> b!3189034 (= e!1987206 call!231366)))

(declare-fun b!3189035 () Bool)

(assert (=> b!3189035 (= e!1987204 Nil!35827)))

(declare-fun bm!231361 () Bool)

(declare-fun call!231364 () List!35951)

(assert (=> bm!231361 (= call!231363 (++!8576 (ite c!535654 call!231365 call!231364) (ite c!535654 call!231364 call!231365)))))

(declare-fun d!872763 () Bool)

(declare-fun c!535655 () Bool)

(assert (=> d!872763 (= c!535655 (or ((_ is EmptyExpr!9899) (regex!5140 (rule!7568 (h!41248 tokens!494)))) ((_ is EmptyLang!9899) (regex!5140 (rule!7568 (h!41248 tokens!494))))))))

(assert (=> d!872763 (= (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494)))) e!1987204)))

(declare-fun bm!231360 () Bool)

(assert (=> bm!231360 (= call!231364 (usedCharacters!484 (ite c!535654 (regTwo!20311 (regex!5140 (rule!7568 (h!41248 tokens!494)))) (regOne!20310 (regex!5140 (rule!7568 (h!41248 tokens!494)))))))))

(declare-fun b!3189036 () Bool)

(assert (=> b!3189036 (= e!1987206 e!1987207)))

(assert (=> b!3189036 (= c!535654 ((_ is Union!9899) (regex!5140 (rule!7568 (h!41248 tokens!494)))))))

(declare-fun b!3189037 () Bool)

(assert (=> b!3189037 (= e!1987207 call!231363)))

(declare-fun b!3189038 () Bool)

(assert (=> b!3189038 (= c!535652 ((_ is Star!9899) (regex!5140 (rule!7568 (h!41248 tokens!494)))))))

(assert (=> b!3189038 (= e!1987205 e!1987206)))

(declare-fun b!3189039 () Bool)

(assert (=> b!3189039 (= e!1987205 (Cons!35827 (c!535510 (regex!5140 (rule!7568 (h!41248 tokens!494)))) Nil!35827))))

(assert (= (and d!872763 c!535655) b!3189035))

(assert (= (and d!872763 (not c!535655)) b!3189032))

(assert (= (and b!3189032 c!535653) b!3189039))

(assert (= (and b!3189032 (not c!535653)) b!3189038))

(assert (= (and b!3189038 c!535652) b!3189034))

(assert (= (and b!3189038 (not c!535652)) b!3189036))

(assert (= (and b!3189036 c!535654) b!3189037))

(assert (= (and b!3189036 (not c!535654)) b!3189033))

(assert (= (or b!3189037 b!3189033) bm!231360))

(assert (= (or b!3189037 b!3189033) bm!231359))

(assert (= (or b!3189037 b!3189033) bm!231361))

(assert (= (or b!3189034 bm!231359) bm!231358))

(declare-fun m!3447821 () Bool)

(assert (=> bm!231358 m!3447821))

(declare-fun m!3447823 () Bool)

(assert (=> bm!231361 m!3447823))

(declare-fun m!3447825 () Bool)

(assert (=> bm!231360 m!3447825))

(assert (=> b!3188304 d!872763))

(declare-fun d!872765 () Bool)

(assert (=> d!872765 true))

(declare-fun lt!1073237 () Bool)

(declare-fun lambda!116619 () Int)

(declare-fun forall!7272 (List!35953 Int) Bool)

(assert (=> d!872765 (= lt!1073237 (forall!7272 rules!2135 lambda!116619))))

(declare-fun e!1987213 () Bool)

(assert (=> d!872765 (= lt!1073237 e!1987213)))

(declare-fun res!1296731 () Bool)

(assert (=> d!872765 (=> res!1296731 e!1987213)))

(assert (=> d!872765 (= res!1296731 (not ((_ is Cons!35829) rules!2135)))))

(assert (=> d!872765 (= (rulesValidInductive!1763 thiss!18206 rules!2135) lt!1073237)))

(declare-fun b!3189044 () Bool)

(declare-fun e!1987212 () Bool)

(assert (=> b!3189044 (= e!1987213 e!1987212)))

(declare-fun res!1296730 () Bool)

(assert (=> b!3189044 (=> (not res!1296730) (not e!1987212))))

(assert (=> b!3189044 (= res!1296730 (ruleValid!1632 thiss!18206 (h!41249 rules!2135)))))

(declare-fun b!3189045 () Bool)

(assert (=> b!3189045 (= e!1987212 (rulesValidInductive!1763 thiss!18206 (t!236002 rules!2135)))))

(assert (= (and d!872765 (not res!1296731)) b!3189044))

(assert (= (and b!3189044 res!1296730) b!3189045))

(declare-fun m!3447827 () Bool)

(assert (=> d!872765 m!3447827))

(declare-fun m!3447829 () Bool)

(assert (=> b!3189044 m!3447829))

(declare-fun m!3447831 () Bool)

(assert (=> b!3189045 m!3447831))

(assert (=> b!3188304 d!872765))

(declare-fun b!3189066 () Bool)

(declare-fun res!1296749 () Bool)

(declare-fun e!1987221 () Bool)

(assert (=> b!3189066 (=> (not res!1296749) (not e!1987221))))

(declare-fun lt!1073251 () Option!7013)

(assert (=> b!3189066 (= res!1296749 (< (size!27033 (_2!20732 (get!11407 lt!1073251))) (size!27033 lt!1072972)))))

(declare-fun b!3189067 () Bool)

(assert (=> b!3189067 (= e!1987221 (contains!6363 rules!2135 (rule!7568 (_1!20732 (get!11407 lt!1073251)))))))

(declare-fun b!3189068 () Bool)

(declare-fun res!1296750 () Bool)

(assert (=> b!3189068 (=> (not res!1296750) (not e!1987221))))

(assert (=> b!3189068 (= res!1296750 (= (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073251)))) (originalCharacters!5854 (_1!20732 (get!11407 lt!1073251)))))))

(declare-fun b!3189070 () Bool)

(declare-fun res!1296747 () Bool)

(assert (=> b!3189070 (=> (not res!1296747) (not e!1987221))))

(assert (=> b!3189070 (= res!1296747 (matchR!4557 (regex!5140 (rule!7568 (_1!20732 (get!11407 lt!1073251)))) (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073251))))))))

(declare-fun b!3189071 () Bool)

(declare-fun e!1987222 () Bool)

(assert (=> b!3189071 (= e!1987222 e!1987221)))

(declare-fun res!1296746 () Bool)

(assert (=> b!3189071 (=> (not res!1296746) (not e!1987221))))

(declare-fun isDefined!5492 (Option!7013) Bool)

(assert (=> b!3189071 (= res!1296746 (isDefined!5492 lt!1073251))))

(declare-fun b!3189072 () Bool)

(declare-fun res!1296751 () Bool)

(assert (=> b!3189072 (=> (not res!1296751) (not e!1987221))))

(assert (=> b!3189072 (= res!1296751 (= (++!8576 (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073251)))) (_2!20732 (get!11407 lt!1073251))) lt!1072972))))

(declare-fun d!872767 () Bool)

(assert (=> d!872767 e!1987222))

(declare-fun res!1296748 () Bool)

(assert (=> d!872767 (=> res!1296748 e!1987222)))

(assert (=> d!872767 (= res!1296748 (isEmpty!19971 lt!1073251))))

(declare-fun e!1987220 () Option!7013)

(assert (=> d!872767 (= lt!1073251 e!1987220)))

(declare-fun c!535658 () Bool)

(assert (=> d!872767 (= c!535658 (and ((_ is Cons!35829) rules!2135) ((_ is Nil!35829) (t!236002 rules!2135))))))

(declare-fun lt!1073250 () Unit!50250)

(declare-fun lt!1073249 () Unit!50250)

(assert (=> d!872767 (= lt!1073250 lt!1073249)))

(declare-fun isPrefix!2774 (List!35951 List!35951) Bool)

(assert (=> d!872767 (isPrefix!2774 lt!1072972 lt!1072972)))

(declare-fun lemmaIsPrefixRefl!1733 (List!35951 List!35951) Unit!50250)

(assert (=> d!872767 (= lt!1073249 (lemmaIsPrefixRefl!1733 lt!1072972 lt!1072972))))

(assert (=> d!872767 (rulesValidInductive!1763 thiss!18206 rules!2135)))

(assert (=> d!872767 (= (maxPrefix!2407 thiss!18206 rules!2135 lt!1072972) lt!1073251)))

(declare-fun b!3189069 () Bool)

(declare-fun call!231369 () Option!7013)

(assert (=> b!3189069 (= e!1987220 call!231369)))

(declare-fun bm!231364 () Bool)

(assert (=> bm!231364 (= call!231369 (maxPrefixOneRule!1534 thiss!18206 (h!41249 rules!2135) lt!1072972))))

(declare-fun b!3189073 () Bool)

(declare-fun res!1296752 () Bool)

(assert (=> b!3189073 (=> (not res!1296752) (not e!1987221))))

(assert (=> b!3189073 (= res!1296752 (= (value!166950 (_1!20732 (get!11407 lt!1073251))) (apply!8074 (transformation!5140 (rule!7568 (_1!20732 (get!11407 lt!1073251)))) (seqFromList!3359 (originalCharacters!5854 (_1!20732 (get!11407 lt!1073251)))))))))

(declare-fun b!3189074 () Bool)

(declare-fun lt!1073252 () Option!7013)

(declare-fun lt!1073248 () Option!7013)

(assert (=> b!3189074 (= e!1987220 (ite (and ((_ is None!7012) lt!1073252) ((_ is None!7012) lt!1073248)) None!7012 (ite ((_ is None!7012) lt!1073248) lt!1073252 (ite ((_ is None!7012) lt!1073252) lt!1073248 (ite (>= (size!27032 (_1!20732 (v!35504 lt!1073252))) (size!27032 (_1!20732 (v!35504 lt!1073248)))) lt!1073252 lt!1073248)))))))

(assert (=> b!3189074 (= lt!1073252 call!231369)))

(assert (=> b!3189074 (= lt!1073248 (maxPrefix!2407 thiss!18206 (t!236002 rules!2135) lt!1072972))))

(assert (= (and d!872767 c!535658) b!3189069))

(assert (= (and d!872767 (not c!535658)) b!3189074))

(assert (= (or b!3189069 b!3189074) bm!231364))

(assert (= (and d!872767 (not res!1296748)) b!3189071))

(assert (= (and b!3189071 res!1296746) b!3189068))

(assert (= (and b!3189068 res!1296750) b!3189066))

(assert (= (and b!3189066 res!1296749) b!3189072))

(assert (= (and b!3189072 res!1296751) b!3189073))

(assert (= (and b!3189073 res!1296752) b!3189070))

(assert (= (and b!3189070 res!1296747) b!3189067))

(declare-fun m!3447833 () Bool)

(assert (=> b!3189071 m!3447833))

(declare-fun m!3447835 () Bool)

(assert (=> b!3189073 m!3447835))

(declare-fun m!3447837 () Bool)

(assert (=> b!3189073 m!3447837))

(assert (=> b!3189073 m!3447837))

(declare-fun m!3447839 () Bool)

(assert (=> b!3189073 m!3447839))

(declare-fun m!3447841 () Bool)

(assert (=> d!872767 m!3447841))

(declare-fun m!3447843 () Bool)

(assert (=> d!872767 m!3447843))

(declare-fun m!3447845 () Bool)

(assert (=> d!872767 m!3447845))

(assert (=> d!872767 m!3446857))

(assert (=> b!3189072 m!3447835))

(declare-fun m!3447847 () Bool)

(assert (=> b!3189072 m!3447847))

(assert (=> b!3189072 m!3447847))

(declare-fun m!3447849 () Bool)

(assert (=> b!3189072 m!3447849))

(assert (=> b!3189072 m!3447849))

(declare-fun m!3447851 () Bool)

(assert (=> b!3189072 m!3447851))

(assert (=> b!3189068 m!3447835))

(assert (=> b!3189068 m!3447847))

(assert (=> b!3189068 m!3447847))

(assert (=> b!3189068 m!3447849))

(declare-fun m!3447853 () Bool)

(assert (=> b!3189074 m!3447853))

(assert (=> b!3189070 m!3447835))

(assert (=> b!3189070 m!3447847))

(assert (=> b!3189070 m!3447847))

(assert (=> b!3189070 m!3447849))

(assert (=> b!3189070 m!3447849))

(declare-fun m!3447855 () Bool)

(assert (=> b!3189070 m!3447855))

(assert (=> b!3189067 m!3447835))

(declare-fun m!3447857 () Bool)

(assert (=> b!3189067 m!3447857))

(declare-fun m!3447859 () Bool)

(assert (=> bm!231364 m!3447859))

(assert (=> b!3189066 m!3447835))

(declare-fun m!3447861 () Bool)

(assert (=> b!3189066 m!3447861))

(declare-fun m!3447863 () Bool)

(assert (=> b!3189066 m!3447863))

(assert (=> b!3188304 d!872767))

(declare-fun b!3189075 () Bool)

(declare-fun res!1296756 () Bool)

(declare-fun e!1987224 () Bool)

(assert (=> b!3189075 (=> (not res!1296756) (not e!1987224))))

(declare-fun lt!1073256 () Option!7013)

(assert (=> b!3189075 (= res!1296756 (< (size!27033 (_2!20732 (get!11407 lt!1073256))) (size!27033 lt!1072959)))))

(declare-fun b!3189076 () Bool)

(assert (=> b!3189076 (= e!1987224 (contains!6363 rules!2135 (rule!7568 (_1!20732 (get!11407 lt!1073256)))))))

(declare-fun b!3189077 () Bool)

(declare-fun res!1296757 () Bool)

(assert (=> b!3189077 (=> (not res!1296757) (not e!1987224))))

(assert (=> b!3189077 (= res!1296757 (= (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073256)))) (originalCharacters!5854 (_1!20732 (get!11407 lt!1073256)))))))

(declare-fun b!3189079 () Bool)

(declare-fun res!1296754 () Bool)

(assert (=> b!3189079 (=> (not res!1296754) (not e!1987224))))

(assert (=> b!3189079 (= res!1296754 (matchR!4557 (regex!5140 (rule!7568 (_1!20732 (get!11407 lt!1073256)))) (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073256))))))))

(declare-fun b!3189080 () Bool)

(declare-fun e!1987225 () Bool)

(assert (=> b!3189080 (= e!1987225 e!1987224)))

(declare-fun res!1296753 () Bool)

(assert (=> b!3189080 (=> (not res!1296753) (not e!1987224))))

(assert (=> b!3189080 (= res!1296753 (isDefined!5492 lt!1073256))))

(declare-fun b!3189081 () Bool)

(declare-fun res!1296758 () Bool)

(assert (=> b!3189081 (=> (not res!1296758) (not e!1987224))))

(assert (=> b!3189081 (= res!1296758 (= (++!8576 (list!12725 (charsOf!3162 (_1!20732 (get!11407 lt!1073256)))) (_2!20732 (get!11407 lt!1073256))) lt!1072959))))

(declare-fun d!872769 () Bool)

(assert (=> d!872769 e!1987225))

(declare-fun res!1296755 () Bool)

(assert (=> d!872769 (=> res!1296755 e!1987225)))

(assert (=> d!872769 (= res!1296755 (isEmpty!19971 lt!1073256))))

(declare-fun e!1987223 () Option!7013)

(assert (=> d!872769 (= lt!1073256 e!1987223)))

(declare-fun c!535659 () Bool)

(assert (=> d!872769 (= c!535659 (and ((_ is Cons!35829) rules!2135) ((_ is Nil!35829) (t!236002 rules!2135))))))

(declare-fun lt!1073255 () Unit!50250)

(declare-fun lt!1073254 () Unit!50250)

(assert (=> d!872769 (= lt!1073255 lt!1073254)))

(assert (=> d!872769 (isPrefix!2774 lt!1072959 lt!1072959)))

(assert (=> d!872769 (= lt!1073254 (lemmaIsPrefixRefl!1733 lt!1072959 lt!1072959))))

(assert (=> d!872769 (rulesValidInductive!1763 thiss!18206 rules!2135)))

(assert (=> d!872769 (= (maxPrefix!2407 thiss!18206 rules!2135 lt!1072959) lt!1073256)))

(declare-fun b!3189078 () Bool)

(declare-fun call!231370 () Option!7013)

(assert (=> b!3189078 (= e!1987223 call!231370)))

(declare-fun bm!231365 () Bool)

(assert (=> bm!231365 (= call!231370 (maxPrefixOneRule!1534 thiss!18206 (h!41249 rules!2135) lt!1072959))))

(declare-fun b!3189082 () Bool)

(declare-fun res!1296759 () Bool)

(assert (=> b!3189082 (=> (not res!1296759) (not e!1987224))))

(assert (=> b!3189082 (= res!1296759 (= (value!166950 (_1!20732 (get!11407 lt!1073256))) (apply!8074 (transformation!5140 (rule!7568 (_1!20732 (get!11407 lt!1073256)))) (seqFromList!3359 (originalCharacters!5854 (_1!20732 (get!11407 lt!1073256)))))))))

(declare-fun b!3189083 () Bool)

(declare-fun lt!1073257 () Option!7013)

(declare-fun lt!1073253 () Option!7013)

(assert (=> b!3189083 (= e!1987223 (ite (and ((_ is None!7012) lt!1073257) ((_ is None!7012) lt!1073253)) None!7012 (ite ((_ is None!7012) lt!1073253) lt!1073257 (ite ((_ is None!7012) lt!1073257) lt!1073253 (ite (>= (size!27032 (_1!20732 (v!35504 lt!1073257))) (size!27032 (_1!20732 (v!35504 lt!1073253)))) lt!1073257 lt!1073253)))))))

(assert (=> b!3189083 (= lt!1073257 call!231370)))

(assert (=> b!3189083 (= lt!1073253 (maxPrefix!2407 thiss!18206 (t!236002 rules!2135) lt!1072959))))

(assert (= (and d!872769 c!535659) b!3189078))

(assert (= (and d!872769 (not c!535659)) b!3189083))

(assert (= (or b!3189078 b!3189083) bm!231365))

(assert (= (and d!872769 (not res!1296755)) b!3189080))

(assert (= (and b!3189080 res!1296753) b!3189077))

(assert (= (and b!3189077 res!1296757) b!3189075))

(assert (= (and b!3189075 res!1296756) b!3189081))

(assert (= (and b!3189081 res!1296758) b!3189082))

(assert (= (and b!3189082 res!1296759) b!3189079))

(assert (= (and b!3189079 res!1296754) b!3189076))

(declare-fun m!3447865 () Bool)

(assert (=> b!3189080 m!3447865))

(declare-fun m!3447867 () Bool)

(assert (=> b!3189082 m!3447867))

(declare-fun m!3447869 () Bool)

(assert (=> b!3189082 m!3447869))

(assert (=> b!3189082 m!3447869))

(declare-fun m!3447871 () Bool)

(assert (=> b!3189082 m!3447871))

(declare-fun m!3447873 () Bool)

(assert (=> d!872769 m!3447873))

(declare-fun m!3447875 () Bool)

(assert (=> d!872769 m!3447875))

(declare-fun m!3447877 () Bool)

(assert (=> d!872769 m!3447877))

(assert (=> d!872769 m!3446857))

(assert (=> b!3189081 m!3447867))

(declare-fun m!3447879 () Bool)

(assert (=> b!3189081 m!3447879))

(assert (=> b!3189081 m!3447879))

(declare-fun m!3447881 () Bool)

(assert (=> b!3189081 m!3447881))

(assert (=> b!3189081 m!3447881))

(declare-fun m!3447883 () Bool)

(assert (=> b!3189081 m!3447883))

(assert (=> b!3189077 m!3447867))

(assert (=> b!3189077 m!3447879))

(assert (=> b!3189077 m!3447879))

(assert (=> b!3189077 m!3447881))

(declare-fun m!3447885 () Bool)

(assert (=> b!3189083 m!3447885))

(assert (=> b!3189079 m!3447867))

(assert (=> b!3189079 m!3447879))

(assert (=> b!3189079 m!3447879))

(assert (=> b!3189079 m!3447881))

(assert (=> b!3189079 m!3447881))

(declare-fun m!3447887 () Bool)

(assert (=> b!3189079 m!3447887))

(assert (=> b!3189076 m!3447867))

(declare-fun m!3447889 () Bool)

(assert (=> b!3189076 m!3447889))

(declare-fun m!3447891 () Bool)

(assert (=> bm!231365 m!3447891))

(assert (=> b!3189075 m!3447867))

(declare-fun m!3447893 () Bool)

(assert (=> b!3189075 m!3447893))

(declare-fun m!3447895 () Bool)

(assert (=> b!3189075 m!3447895))

(assert (=> b!3188304 d!872769))

(declare-fun d!872771 () Bool)

(assert (=> d!872771 (not (contains!6361 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494)))) lt!1072962))))

(declare-fun lt!1073260 () Unit!50250)

(declare-fun choose!18629 (LexerInterface!4729 List!35953 List!35953 Rule!10080 Rule!10080 C!19984) Unit!50250)

(assert (=> d!872771 (= lt!1073260 (choose!18629 thiss!18206 rules!2135 rules!2135 (rule!7568 (h!41248 tokens!494)) (rule!7568 separatorToken!241) lt!1072962))))

(assert (=> d!872771 (rulesInvariant!4126 thiss!18206 rules!2135)))

(assert (=> d!872771 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!116 thiss!18206 rules!2135 rules!2135 (rule!7568 (h!41248 tokens!494)) (rule!7568 separatorToken!241) lt!1072962) lt!1073260)))

(declare-fun bs!540281 () Bool)

(assert (= bs!540281 d!872771))

(assert (=> bs!540281 m!3446863))

(assert (=> bs!540281 m!3446863))

(assert (=> bs!540281 m!3446865))

(declare-fun m!3447897 () Bool)

(assert (=> bs!540281 m!3447897))

(assert (=> bs!540281 m!3446953))

(assert (=> b!3188304 d!872771))

(declare-fun d!872773 () Bool)

(assert (=> d!872773 (= (maxPrefix!2407 thiss!18206 rules!2135 (++!8576 (list!12725 (charsOf!3162 (h!41248 tokens!494))) lt!1072961)) (Some!7012 (tuple2!35197 (h!41248 tokens!494) lt!1072961)))))

(declare-fun lt!1073263 () Unit!50250)

(declare-fun choose!18630 (LexerInterface!4729 List!35953 Token!9646 Rule!10080 List!35951 Rule!10080) Unit!50250)

(assert (=> d!872773 (= lt!1073263 (choose!18630 thiss!18206 rules!2135 (h!41248 tokens!494) (rule!7568 (h!41248 tokens!494)) lt!1072961 (rule!7568 separatorToken!241)))))

(assert (=> d!872773 (not (isEmpty!19963 rules!2135))))

(assert (=> d!872773 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!118 thiss!18206 rules!2135 (h!41248 tokens!494) (rule!7568 (h!41248 tokens!494)) lt!1072961 (rule!7568 separatorToken!241)) lt!1073263)))

(declare-fun bs!540282 () Bool)

(assert (= bs!540282 d!872773))

(assert (=> bs!540282 m!3446925))

(assert (=> bs!540282 m!3446943))

(assert (=> bs!540282 m!3446945))

(declare-fun m!3447899 () Bool)

(assert (=> bs!540282 m!3447899))

(declare-fun m!3447901 () Bool)

(assert (=> bs!540282 m!3447901))

(declare-fun m!3447903 () Bool)

(assert (=> bs!540282 m!3447903))

(assert (=> bs!540282 m!3446945))

(assert (=> bs!540282 m!3447901))

(assert (=> bs!540282 m!3446943))

(assert (=> b!3188304 d!872773))

(declare-fun d!872775 () Bool)

(declare-fun lt!1073264 () Bool)

(assert (=> d!872775 (= lt!1073264 (select (content!4856 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494))))) lt!1072962))))

(declare-fun e!1987227 () Bool)

(assert (=> d!872775 (= lt!1073264 e!1987227)))

(declare-fun res!1296761 () Bool)

(assert (=> d!872775 (=> (not res!1296761) (not e!1987227))))

(assert (=> d!872775 (= res!1296761 ((_ is Cons!35827) (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494))))))))

(assert (=> d!872775 (= (contains!6361 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494)))) lt!1072962) lt!1073264)))

(declare-fun b!3189084 () Bool)

(declare-fun e!1987226 () Bool)

(assert (=> b!3189084 (= e!1987227 e!1987226)))

(declare-fun res!1296760 () Bool)

(assert (=> b!3189084 (=> res!1296760 e!1987226)))

(assert (=> b!3189084 (= res!1296760 (= (h!41247 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494))))) lt!1072962))))

(declare-fun b!3189085 () Bool)

(assert (=> b!3189085 (= e!1987226 (contains!6361 (t!236000 (usedCharacters!484 (regex!5140 (rule!7568 (h!41248 tokens!494))))) lt!1072962))))

(assert (= (and d!872775 res!1296761) b!3189084))

(assert (= (and b!3189084 (not res!1296760)) b!3189085))

(assert (=> d!872775 m!3446863))

(declare-fun m!3447905 () Bool)

(assert (=> d!872775 m!3447905))

(declare-fun m!3447907 () Bool)

(assert (=> d!872775 m!3447907))

(declare-fun m!3447909 () Bool)

(assert (=> b!3189085 m!3447909))

(assert (=> b!3188304 d!872775))

(declare-fun b!3189098 () Bool)

(declare-fun e!1987230 () Bool)

(declare-fun tp!1008038 () Bool)

(assert (=> b!3189098 (= e!1987230 tp!1008038)))

(declare-fun b!3189097 () Bool)

(declare-fun tp!1008035 () Bool)

(declare-fun tp!1008037 () Bool)

(assert (=> b!3189097 (= e!1987230 (and tp!1008035 tp!1008037))))

(declare-fun b!3189099 () Bool)

(declare-fun tp!1008036 () Bool)

(declare-fun tp!1008039 () Bool)

(assert (=> b!3189099 (= e!1987230 (and tp!1008036 tp!1008039))))

(assert (=> b!3188286 (= tp!1007948 e!1987230)))

(declare-fun b!3189096 () Bool)

(declare-fun tp_is_empty!17269 () Bool)

(assert (=> b!3189096 (= e!1987230 tp_is_empty!17269)))

(assert (= (and b!3188286 ((_ is ElementMatch!9899) (regex!5140 (rule!7568 (h!41248 tokens!494))))) b!3189096))

(assert (= (and b!3188286 ((_ is Concat!15269) (regex!5140 (rule!7568 (h!41248 tokens!494))))) b!3189097))

(assert (= (and b!3188286 ((_ is Star!9899) (regex!5140 (rule!7568 (h!41248 tokens!494))))) b!3189098))

(assert (= (and b!3188286 ((_ is Union!9899) (regex!5140 (rule!7568 (h!41248 tokens!494))))) b!3189099))

(declare-fun b!3189113 () Bool)

(declare-fun b_free!84221 () Bool)

(declare-fun b_next!84925 () Bool)

(assert (=> b!3189113 (= b_free!84221 (not b_next!84925))))

(declare-fun t!236067 () Bool)

(declare-fun tb!155923 () Bool)

(assert (=> (and b!3189113 (= (toValue!7204 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236067) tb!155923))

(declare-fun result!198104 () Bool)

(assert (= result!198104 result!198036))

(assert (=> d!872555 t!236067))

(declare-fun b_and!211231 () Bool)

(declare-fun tp!1008051 () Bool)

(assert (=> b!3189113 (= tp!1008051 (and (=> t!236067 result!198104) b_and!211231))))

(declare-fun b_free!84223 () Bool)

(declare-fun b_next!84927 () Bool)

(assert (=> b!3189113 (= b_free!84223 (not b_next!84927))))

(declare-fun t!236069 () Bool)

(declare-fun tb!155925 () Bool)

(assert (=> (and b!3189113 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236069) tb!155925))

(declare-fun result!198106 () Bool)

(assert (= result!198106 result!198052))

(assert (=> d!872659 t!236069))

(assert (=> b!3188779 t!236069))

(declare-fun tb!155927 () Bool)

(declare-fun t!236071 () Bool)

(assert (=> (and b!3189113 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241)))) t!236071) tb!155927))

(declare-fun result!198108 () Bool)

(assert (= result!198108 result!198060))

(assert (=> b!3188781 t!236071))

(assert (=> d!872759 t!236071))

(declare-fun b_and!211233 () Bool)

(declare-fun tp!1008052 () Bool)

(assert (=> b!3189113 (= tp!1008052 (and (=> t!236069 result!198106) (=> t!236071 result!198108) b_and!211233))))

(declare-fun b!3189111 () Bool)

(declare-fun tp!1008053 () Bool)

(declare-fun e!1987244 () Bool)

(declare-fun e!1987246 () Bool)

(assert (=> b!3189111 (= e!1987246 (and (inv!21 (value!166950 (h!41248 (t!236001 tokens!494)))) e!1987244 tp!1008053))))

(declare-fun tp!1008050 () Bool)

(declare-fun b!3189112 () Bool)

(declare-fun e!1987248 () Bool)

(assert (=> b!3189112 (= e!1987244 (and tp!1008050 (inv!48680 (tag!5656 (rule!7568 (h!41248 (t!236001 tokens!494))))) (inv!48683 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) e!1987248))))

(declare-fun e!1987247 () Bool)

(assert (=> b!3188290 (= tp!1007954 e!1987247)))

(assert (=> b!3189113 (= e!1987248 (and tp!1008051 tp!1008052))))

(declare-fun b!3189110 () Bool)

(declare-fun tp!1008054 () Bool)

(assert (=> b!3189110 (= e!1987247 (and (inv!48684 (h!41248 (t!236001 tokens!494))) e!1987246 tp!1008054))))

(assert (= b!3189112 b!3189113))

(assert (= b!3189111 b!3189112))

(assert (= b!3189110 b!3189111))

(assert (= (and b!3188290 ((_ is Cons!35828) (t!236001 tokens!494))) b!3189110))

(declare-fun m!3447911 () Bool)

(assert (=> b!3189111 m!3447911))

(declare-fun m!3447913 () Bool)

(assert (=> b!3189112 m!3447913))

(declare-fun m!3447915 () Bool)

(assert (=> b!3189112 m!3447915))

(declare-fun m!3447917 () Bool)

(assert (=> b!3189110 m!3447917))

(declare-fun b!3189118 () Bool)

(declare-fun e!1987251 () Bool)

(declare-fun tp!1008057 () Bool)

(assert (=> b!3189118 (= e!1987251 (and tp_is_empty!17269 tp!1008057))))

(assert (=> b!3188296 (= tp!1007956 e!1987251)))

(assert (= (and b!3188296 ((_ is Cons!35827) (originalCharacters!5854 separatorToken!241))) b!3189118))

(declare-fun b!3189129 () Bool)

(declare-fun b_free!84225 () Bool)

(declare-fun b_next!84929 () Bool)

(assert (=> b!3189129 (= b_free!84225 (not b_next!84929))))

(declare-fun t!236073 () Bool)

(declare-fun tb!155929 () Bool)

(assert (=> (and b!3189129 (= (toValue!7204 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236073) tb!155929))

(declare-fun result!198114 () Bool)

(assert (= result!198114 result!198036))

(assert (=> d!872555 t!236073))

(declare-fun tp!1008069 () Bool)

(declare-fun b_and!211235 () Bool)

(assert (=> b!3189129 (= tp!1008069 (and (=> t!236073 result!198114) b_and!211235))))

(declare-fun b_free!84227 () Bool)

(declare-fun b_next!84931 () Bool)

(assert (=> b!3189129 (= b_free!84227 (not b_next!84931))))

(declare-fun t!236075 () Bool)

(declare-fun tb!155931 () Bool)

(assert (=> (and b!3189129 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494))))) t!236075) tb!155931))

(declare-fun result!198116 () Bool)

(assert (= result!198116 result!198052))

(assert (=> d!872659 t!236075))

(assert (=> b!3188779 t!236075))

(declare-fun tb!155933 () Bool)

(declare-fun t!236077 () Bool)

(assert (=> (and b!3189129 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241)))) t!236077) tb!155933))

(declare-fun result!198118 () Bool)

(assert (= result!198118 result!198060))

(assert (=> b!3188781 t!236077))

(assert (=> d!872759 t!236077))

(declare-fun tp!1008067 () Bool)

(declare-fun b_and!211237 () Bool)

(assert (=> b!3189129 (= tp!1008067 (and (=> t!236075 result!198116) (=> t!236077 result!198118) b_and!211237))))

(declare-fun e!1987262 () Bool)

(assert (=> b!3189129 (= e!1987262 (and tp!1008069 tp!1008067))))

(declare-fun e!1987260 () Bool)

(declare-fun b!3189128 () Bool)

(declare-fun tp!1008068 () Bool)

(assert (=> b!3189128 (= e!1987260 (and tp!1008068 (inv!48680 (tag!5656 (h!41249 (t!236002 rules!2135)))) (inv!48683 (transformation!5140 (h!41249 (t!236002 rules!2135)))) e!1987262))))

(declare-fun b!3189127 () Bool)

(declare-fun e!1987261 () Bool)

(declare-fun tp!1008066 () Bool)

(assert (=> b!3189127 (= e!1987261 (and e!1987260 tp!1008066))))

(assert (=> b!3188312 (= tp!1007949 e!1987261)))

(assert (= b!3189128 b!3189129))

(assert (= b!3189127 b!3189128))

(assert (= (and b!3188312 ((_ is Cons!35829) (t!236002 rules!2135))) b!3189127))

(declare-fun m!3447919 () Bool)

(assert (=> b!3189128 m!3447919))

(declare-fun m!3447921 () Bool)

(assert (=> b!3189128 m!3447921))

(declare-fun b!3189132 () Bool)

(declare-fun e!1987264 () Bool)

(declare-fun tp!1008073 () Bool)

(assert (=> b!3189132 (= e!1987264 tp!1008073)))

(declare-fun b!3189131 () Bool)

(declare-fun tp!1008070 () Bool)

(declare-fun tp!1008072 () Bool)

(assert (=> b!3189131 (= e!1987264 (and tp!1008070 tp!1008072))))

(declare-fun b!3189133 () Bool)

(declare-fun tp!1008071 () Bool)

(declare-fun tp!1008074 () Bool)

(assert (=> b!3189133 (= e!1987264 (and tp!1008071 tp!1008074))))

(assert (=> b!3188317 (= tp!1007957 e!1987264)))

(declare-fun b!3189130 () Bool)

(assert (=> b!3189130 (= e!1987264 tp_is_empty!17269)))

(assert (= (and b!3188317 ((_ is ElementMatch!9899) (regex!5140 (h!41249 rules!2135)))) b!3189130))

(assert (= (and b!3188317 ((_ is Concat!15269) (regex!5140 (h!41249 rules!2135)))) b!3189131))

(assert (= (and b!3188317 ((_ is Star!9899) (regex!5140 (h!41249 rules!2135)))) b!3189132))

(assert (= (and b!3188317 ((_ is Union!9899) (regex!5140 (h!41249 rules!2135)))) b!3189133))

(declare-fun b!3189136 () Bool)

(declare-fun e!1987265 () Bool)

(declare-fun tp!1008078 () Bool)

(assert (=> b!3189136 (= e!1987265 tp!1008078)))

(declare-fun b!3189135 () Bool)

(declare-fun tp!1008075 () Bool)

(declare-fun tp!1008077 () Bool)

(assert (=> b!3189135 (= e!1987265 (and tp!1008075 tp!1008077))))

(declare-fun b!3189137 () Bool)

(declare-fun tp!1008076 () Bool)

(declare-fun tp!1008079 () Bool)

(assert (=> b!3189137 (= e!1987265 (and tp!1008076 tp!1008079))))

(assert (=> b!3188299 (= tp!1007951 e!1987265)))

(declare-fun b!3189134 () Bool)

(assert (=> b!3189134 (= e!1987265 tp_is_empty!17269)))

(assert (= (and b!3188299 ((_ is ElementMatch!9899) (regex!5140 (rule!7568 separatorToken!241)))) b!3189134))

(assert (= (and b!3188299 ((_ is Concat!15269) (regex!5140 (rule!7568 separatorToken!241)))) b!3189135))

(assert (= (and b!3188299 ((_ is Star!9899) (regex!5140 (rule!7568 separatorToken!241)))) b!3189136))

(assert (= (and b!3188299 ((_ is Union!9899) (regex!5140 (rule!7568 separatorToken!241)))) b!3189137))

(declare-fun b!3189138 () Bool)

(declare-fun e!1987266 () Bool)

(declare-fun tp!1008080 () Bool)

(assert (=> b!3189138 (= e!1987266 (and tp_is_empty!17269 tp!1008080))))

(assert (=> b!3188314 (= tp!1007952 e!1987266)))

(assert (= (and b!3188314 ((_ is Cons!35827) (originalCharacters!5854 (h!41248 tokens!494)))) b!3189138))

(declare-fun b_lambda!87021 () Bool)

(assert (= b_lambda!86987 (or (and b!3188305 b_free!84207) (and b!3189113 b_free!84223 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3189129 b_free!84227 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188316 b_free!84211 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188298 b_free!84203 (= (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) b_lambda!87021)))

(declare-fun b_lambda!87023 () Bool)

(assert (= b_lambda!87019 (or (and b!3188316 b_free!84211 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3189129 b_free!84227 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3188305 b_free!84207 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3188298 b_free!84203) (and b!3189113 b_free!84223 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) b_lambda!87023)))

(declare-fun b_lambda!87025 () Bool)

(assert (= b_lambda!86985 (or (and b!3188305 b_free!84207) (and b!3189113 b_free!84223 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3189129 b_free!84227 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188316 b_free!84211 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188298 b_free!84203 (= (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))) (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) b_lambda!87025)))

(declare-fun b_lambda!87027 () Bool)

(assert (= b_lambda!87017 (or b!3188309 b_lambda!87027)))

(declare-fun bs!540283 () Bool)

(declare-fun d!872777 () Bool)

(assert (= bs!540283 (and d!872777 b!3188309)))

(assert (=> bs!540283 (= (dynLambda!14473 lambda!116603 (h!41248 tokens!494)) (not (isSeparator!5140 (rule!7568 (h!41248 tokens!494)))))))

(assert (=> d!872751 d!872777))

(declare-fun b_lambda!87029 () Bool)

(assert (= b_lambda!86989 (or (and b!3188316 b_free!84211 (= (toChars!7063 (transformation!5140 (h!41249 rules!2135))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3189129 b_free!84227 (= (toChars!7063 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3188305 b_free!84207 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 tokens!494)))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) (and b!3188298 b_free!84203) (and b!3189113 b_free!84223 (= (toChars!7063 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toChars!7063 (transformation!5140 (rule!7568 separatorToken!241))))) b_lambda!87029)))

(declare-fun b_lambda!87031 () Bool)

(assert (= b_lambda!86979 (or (and b!3189129 b_free!84225 (= (toValue!7204 (transformation!5140 (h!41249 (t!236002 rules!2135)))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3189113 b_free!84221 (= (toValue!7204 (transformation!5140 (rule!7568 (h!41248 (t!236001 tokens!494))))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188316 b_free!84209 (= (toValue!7204 (transformation!5140 (h!41249 rules!2135))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188298 b_free!84201 (= (toValue!7204 (transformation!5140 (rule!7568 separatorToken!241))) (toValue!7204 (transformation!5140 (rule!7568 (h!41248 tokens!494)))))) (and b!3188305 b_free!84205) b_lambda!87031)))

(declare-fun b_lambda!87033 () Bool)

(assert (= b_lambda!87015 (or b!3188309 b_lambda!87033)))

(assert (=> b!3189014 d!872777))

(check-sat (not bm!231364) (not tb!155893) (not b!3188774) (not b!3188495) (not d!872573) (not b!3189072) (not d!872569) (not b!3189098) (not d!872769) (not b!3189030) (not b!3189071) (not d!872629) (not b!3188665) (not b!3188425) (not b!3189127) (not b_next!84925) (not d!872615) (not b!3188585) (not b!3189137) (not b!3189080) (not d!872661) (not d!872547) (not b!3188591) b_and!211165 (not d!872549) (not b!3189009) (not b!3188601) (not d!872571) (not bm!231365) (not b!3188419) (not b!3188767) (not b_lambda!87023) (not b!3189066) (not b!3188766) (not b_next!84907) b_and!211233 (not bm!231361) (not b!3188430) (not b!3188668) (not b!3189111) (not d!872659) (not d!872567) (not b_next!84927) (not b!3189073) (not b_next!84909) (not b!3188436) (not b!3188600) (not b!3188588) (not b!3189099) (not b!3188663) (not b!3188587) (not d!872559) (not b!3188669) (not b!3188589) b_and!211225 (not b!3189067) (not b!3189016) (not b!3188680) (not b!3188769) (not d!872775) (not b!3189083) (not b!3189082) b_and!211229 (not b!3189131) (not b_next!84905) (not b!3188586) (not bm!231358) (not b_lambda!87029) (not b_next!84929) (not b!3188442) (not d!872665) (not d!872737) (not b!3189019) (not d!872541) (not d!872635) (not b!3189085) (not d!872537) (not b!3188477) b_and!211231 (not d!872563) (not d!872773) (not d!872531) (not b!3188449) (not b!3189004) (not b!3189006) (not b!3189029) (not d!872749) (not bm!231322) b_and!211167 (not b!3188999) b_and!211163 (not tb!155887) (not d!872627) (not b!3189138) (not b!3188666) (not b!3188643) (not b!3188456) (not b!3188590) (not b!3188602) (not b!3189076) (not bm!231357) (not d!872657) (not d!872599) (not b!3189044) (not b!3189070) (not bm!231336) (not b!3188979) (not b!3188443) (not d!872655) (not b!3189081) (not b!3188457) (not b!3189110) (not b!3188432) (not d!872535) (not b!3188478) (not b_next!84911) (not b!3189118) (not d!872755) (not b!3188435) (not b!3188592) (not b_lambda!87033) b_and!211235 (not d!872741) (not b!3188679) (not b!3189015) (not d!872751) (not b!3189135) (not b!3188378) (not d!872743) (not b!3188644) (not b!3188447) (not d!872521) (not b_next!84931) (not b!3188671) (not b!3188483) (not b_lambda!87021) (not b_next!84913) (not b!3189077) (not d!872621) (not b!3188389) (not d!872753) (not b!3188458) (not b!3188384) (not b!3189068) (not d!872757) (not b!3188988) tp_is_empty!17269 (not d!872767) (not tb!155875) (not b!3188672) b_and!211237 (not b_lambda!87031) (not b!3189075) (not b_lambda!87025) (not b_next!84915) (not bm!231360) (not b!3189097) (not b!3188779) (not b!3188667) (not d!872771) (not b!3188476) (not b!3188426) (not d!872565) (not b!3188662) (not bm!231333) (not d!872739) (not b!3188765) (not b!3188993) (not b!3188423) (not d!872557) (not b!3189079) (not b!3188440) (not b!3188674) (not b_lambda!87027) (not d!872759) (not b!3189132) (not b!3188782) (not d!872765) (not b!3189133) (not b!3189000) (not b!3188783) (not d!872637) (not b!3189074) (not d!872553) (not bm!231321) (not b!3189045) (not b!3188490) (not b!3189112) (not b!3188997) (not d!872617) (not b!3188781) b_and!211227 (not d!872667) (not d!872761) (not b!3188376) (not b!3188484) (not b!3188780) (not b!3188650) (not bm!231335) (not b!3189128) (not b!3189136))
(check-sat (not b_next!84925) b_and!211165 (not b_next!84907) (not b_next!84909) b_and!211225 b_and!211229 b_and!211231 (not b_next!84911) b_and!211235 b_and!211237 (not b_next!84915) b_and!211227 b_and!211233 (not b_next!84927) (not b_next!84905) (not b_next!84929) b_and!211167 b_and!211163 (not b_next!84931) (not b_next!84913))
