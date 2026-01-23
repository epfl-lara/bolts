; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177690 () Bool)

(assert start!177690)

(declare-fun b!1784107 () Bool)

(declare-fun b_free!49543 () Bool)

(declare-fun b_next!50247 () Bool)

(assert (=> b!1784107 (= b_free!49543 (not b_next!50247))))

(declare-fun tp!504826 () Bool)

(declare-fun b_and!137063 () Bool)

(assert (=> b!1784107 (= tp!504826 b_and!137063)))

(declare-fun b_free!49545 () Bool)

(declare-fun b_next!50249 () Bool)

(assert (=> b!1784107 (= b_free!49545 (not b_next!50249))))

(declare-fun tp!504819 () Bool)

(declare-fun b_and!137065 () Bool)

(assert (=> b!1784107 (= tp!504819 b_and!137065)))

(declare-fun b!1784122 () Bool)

(declare-fun b_free!49547 () Bool)

(declare-fun b_next!50251 () Bool)

(assert (=> b!1784122 (= b_free!49547 (not b_next!50251))))

(declare-fun tp!504817 () Bool)

(declare-fun b_and!137067 () Bool)

(assert (=> b!1784122 (= tp!504817 b_and!137067)))

(declare-fun b_free!49549 () Bool)

(declare-fun b_next!50253 () Bool)

(assert (=> b!1784122 (= b_free!49549 (not b_next!50253))))

(declare-fun tp!504824 () Bool)

(declare-fun b_and!137069 () Bool)

(assert (=> b!1784122 (= tp!504824 b_and!137069)))

(declare-fun b!1784119 () Bool)

(declare-fun b_free!49551 () Bool)

(declare-fun b_next!50255 () Bool)

(assert (=> b!1784119 (= b_free!49551 (not b_next!50255))))

(declare-fun tp!504821 () Bool)

(declare-fun b_and!137071 () Bool)

(assert (=> b!1784119 (= tp!504821 b_and!137071)))

(declare-fun b_free!49553 () Bool)

(declare-fun b_next!50257 () Bool)

(assert (=> b!1784119 (= b_free!49553 (not b_next!50257))))

(declare-fun tp!504825 () Bool)

(declare-fun b_and!137073 () Bool)

(assert (=> b!1784119 (= tp!504825 b_and!137073)))

(declare-fun b!1784138 () Bool)

(declare-fun e!1141793 () Bool)

(assert (=> b!1784138 (= e!1141793 true)))

(declare-fun b!1784137 () Bool)

(declare-fun e!1141792 () Bool)

(assert (=> b!1784137 (= e!1141792 e!1141793)))

(declare-fun b!1784136 () Bool)

(declare-fun e!1141791 () Bool)

(assert (=> b!1784136 (= e!1141791 e!1141792)))

(declare-fun b!1784115 () Bool)

(assert (=> b!1784115 e!1141791))

(assert (= b!1784137 b!1784138))

(assert (= b!1784136 b!1784137))

(assert (= b!1784115 b!1784136))

(declare-fun order!12713 () Int)

(declare-fun order!12711 () Int)

(declare-fun lambda!70736 () Int)

(declare-datatypes ((List!19732 0))(
  ( (Nil!19662) (Cons!19662 (h!25063 (_ BitVec 16)) (t!166883 List!19732)) )
))
(declare-datatypes ((TokenValue!3613 0))(
  ( (FloatLiteralValue!7226 (text!25736 List!19732)) (TokenValueExt!3612 (__x!12528 Int)) (Broken!18065 (value!110052 List!19732)) (Object!3682) (End!3613) (Def!3613) (Underscore!3613) (Match!3613) (Else!3613) (Error!3613) (Case!3613) (If!3613) (Extends!3613) (Abstract!3613) (Class!3613) (Val!3613) (DelimiterValue!7226 (del!3673 List!19732)) (KeywordValue!3619 (value!110053 List!19732)) (CommentValue!7226 (value!110054 List!19732)) (WhitespaceValue!7226 (value!110055 List!19732)) (IndentationValue!3613 (value!110056 List!19732)) (String!22396) (Int32!3613) (Broken!18066 (value!110057 List!19732)) (Boolean!3614) (Unit!33988) (OperatorValue!3616 (op!3673 List!19732)) (IdentifierValue!7226 (value!110058 List!19732)) (IdentifierValue!7227 (value!110059 List!19732)) (WhitespaceValue!7227 (value!110060 List!19732)) (True!7226) (False!7226) (Broken!18067 (value!110061 List!19732)) (Broken!18068 (value!110062 List!19732)) (True!7227) (RightBrace!3613) (RightBracket!3613) (Colon!3613) (Null!3613) (Comma!3613) (LeftBracket!3613) (False!7227) (LeftBrace!3613) (ImaginaryLiteralValue!3613 (text!25737 List!19732)) (StringLiteralValue!10839 (value!110063 List!19732)) (EOFValue!3613 (value!110064 List!19732)) (IdentValue!3613 (value!110065 List!19732)) (DelimiterValue!7227 (value!110066 List!19732)) (DedentValue!3613 (value!110067 List!19732)) (NewLineValue!3613 (value!110068 List!19732)) (IntegerValue!10839 (value!110069 (_ BitVec 32)) (text!25738 List!19732)) (IntegerValue!10840 (value!110070 Int) (text!25739 List!19732)) (Times!3613) (Or!3613) (Equal!3613) (Minus!3613) (Broken!18069 (value!110071 List!19732)) (And!3613) (Div!3613) (LessEqual!3613) (Mod!3613) (Concat!8464) (Not!3613) (Plus!3613) (SpaceValue!3613 (value!110072 List!19732)) (IntegerValue!10841 (value!110073 Int) (text!25740 List!19732)) (StringLiteralValue!10840 (text!25741 List!19732)) (FloatLiteralValue!7227 (text!25742 List!19732)) (BytesLiteralValue!3613 (value!110074 List!19732)) (CommentValue!7227 (value!110075 List!19732)) (StringLiteralValue!10841 (value!110076 List!19732)) (ErrorTokenValue!3613 (msg!3674 List!19732)) )
))
(declare-datatypes ((C!9876 0))(
  ( (C!9877 (val!5534 Int)) )
))
(declare-datatypes ((Regex!4851 0))(
  ( (ElementMatch!4851 (c!290198 C!9876)) (Concat!8465 (regOne!10214 Regex!4851) (regTwo!10214 Regex!4851)) (EmptyExpr!4851) (Star!4851 (reg!5180 Regex!4851)) (EmptyLang!4851) (Union!4851 (regOne!10215 Regex!4851) (regTwo!10215 Regex!4851)) )
))
(declare-datatypes ((String!22397 0))(
  ( (String!22398 (value!110077 String)) )
))
(declare-datatypes ((List!19733 0))(
  ( (Nil!19663) (Cons!19663 (h!25064 C!9876) (t!166884 List!19733)) )
))
(declare-datatypes ((IArray!13087 0))(
  ( (IArray!13088 (innerList!6601 List!19733)) )
))
(declare-datatypes ((Conc!6541 0))(
  ( (Node!6541 (left!15760 Conc!6541) (right!16090 Conc!6541) (csize!13312 Int) (cheight!6752 Int)) (Leaf!9523 (xs!9417 IArray!13087) (csize!13313 Int)) (Empty!6541) )
))
(declare-datatypes ((BalanceConc!13026 0))(
  ( (BalanceConc!13027 (c!290199 Conc!6541)) )
))
(declare-datatypes ((TokenValueInjection!6886 0))(
  ( (TokenValueInjection!6887 (toValue!5050 Int) (toChars!4909 Int)) )
))
(declare-datatypes ((Rule!6846 0))(
  ( (Rule!6847 (regex!3523 Regex!4851) (tag!3923 String!22397) (isSeparator!3523 Bool) (transformation!3523 TokenValueInjection!6886)) )
))
(declare-datatypes ((Token!6612 0))(
  ( (Token!6613 (value!110078 TokenValue!3613) (rule!5607 Rule!6846) (size!15618 Int) (originalCharacters!4337 List!19733)) )
))
(declare-datatypes ((tuple2!19254 0))(
  ( (tuple2!19255 (_1!11029 Token!6612) (_2!11029 List!19733)) )
))
(declare-fun lt!694045 () tuple2!19254)

(declare-fun dynLambda!9673 (Int Int) Int)

(declare-fun dynLambda!9674 (Int Int) Int)

(assert (=> b!1784138 (< (dynLambda!9673 order!12711 (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) (dynLambda!9674 order!12713 lambda!70736))))

(declare-fun order!12715 () Int)

(declare-fun dynLambda!9675 (Int Int) Int)

(assert (=> b!1784138 (< (dynLambda!9675 order!12715 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) (dynLambda!9674 order!12713 lambda!70736))))

(declare-fun b!1784088 () Bool)

(declare-fun e!1141756 () Bool)

(declare-fun e!1141772 () Bool)

(assert (=> b!1784088 (= e!1141756 e!1141772)))

(declare-fun res!804371 () Bool)

(assert (=> b!1784088 (=> res!804371 e!1141772)))

(declare-fun token!523 () Token!6612)

(assert (=> b!1784088 (= res!804371 (= (rule!5607 (_1!11029 lt!694045)) (rule!5607 token!523)))))

(declare-fun suffix!1421 () List!19733)

(assert (=> b!1784088 (= suffix!1421 (_2!11029 lt!694045))))

(declare-fun lt!694034 () List!19733)

(declare-fun lt!694022 () List!19733)

(declare-datatypes ((Unit!33989 0))(
  ( (Unit!33990) )
))
(declare-fun lt!694043 () Unit!33989)

(declare-fun lemmaSamePrefixThenSameSuffix!874 (List!19733 List!19733 List!19733 List!19733 List!19733) Unit!33989)

(assert (=> b!1784088 (= lt!694043 (lemmaSamePrefixThenSameSuffix!874 lt!694022 suffix!1421 lt!694022 (_2!11029 lt!694045) lt!694034))))

(declare-fun lt!694017 () List!19733)

(assert (=> b!1784088 (= lt!694017 lt!694022)))

(declare-fun lt!694044 () Unit!33989)

(declare-fun lemmaIsPrefixSameLengthThenSameList!259 (List!19733 List!19733 List!19733) Unit!33989)

(assert (=> b!1784088 (= lt!694044 (lemmaIsPrefixSameLengthThenSameList!259 lt!694017 lt!694022 lt!694034))))

(declare-fun b!1784089 () Bool)

(declare-fun e!1141778 () Bool)

(declare-fun e!1141777 () Bool)

(assert (=> b!1784089 (= e!1141778 e!1141777)))

(declare-fun res!804368 () Bool)

(assert (=> b!1784089 (=> (not res!804368) (not e!1141777))))

(declare-datatypes ((Option!4068 0))(
  ( (None!4067) (Some!4067 (v!25562 tuple2!19254)) )
))
(declare-fun lt!694018 () Option!4068)

(declare-fun isDefined!3411 (Option!4068) Bool)

(assert (=> b!1784089 (= res!804368 (isDefined!3411 lt!694018))))

(declare-datatypes ((LexerInterface!3152 0))(
  ( (LexerInterfaceExt!3149 (__x!12529 Int)) (Lexer!3150) )
))
(declare-fun thiss!24550 () LexerInterface!3152)

(declare-datatypes ((List!19734 0))(
  ( (Nil!19664) (Cons!19664 (h!25065 Rule!6846) (t!166885 List!19734)) )
))
(declare-fun rules!3447 () List!19734)

(declare-fun maxPrefix!1706 (LexerInterface!3152 List!19734 List!19733) Option!4068)

(assert (=> b!1784089 (= lt!694018 (maxPrefix!1706 thiss!24550 rules!3447 lt!694022))))

(declare-fun lt!694020 () BalanceConc!13026)

(declare-fun list!7997 (BalanceConc!13026) List!19733)

(assert (=> b!1784089 (= lt!694022 (list!7997 lt!694020))))

(declare-fun charsOf!2172 (Token!6612) BalanceConc!13026)

(assert (=> b!1784089 (= lt!694020 (charsOf!2172 token!523))))

(declare-fun tp!504822 () Bool)

(declare-fun e!1141782 () Bool)

(declare-fun e!1141764 () Bool)

(declare-fun b!1784090 () Bool)

(declare-fun inv!25592 (String!22397) Bool)

(declare-fun inv!25597 (TokenValueInjection!6886) Bool)

(assert (=> b!1784090 (= e!1141764 (and tp!504822 (inv!25592 (tag!3923 (rule!5607 token!523))) (inv!25597 (transformation!3523 (rule!5607 token!523))) e!1141782))))

(declare-fun b!1784091 () Bool)

(declare-fun e!1141766 () Bool)

(assert (=> b!1784091 (= e!1141777 e!1141766)))

(declare-fun res!804361 () Bool)

(assert (=> b!1784091 (=> (not res!804361) (not e!1141766))))

(declare-fun lt!694035 () tuple2!19254)

(assert (=> b!1784091 (= res!804361 (= (_1!11029 lt!694035) token!523))))

(declare-fun get!6047 (Option!4068) tuple2!19254)

(assert (=> b!1784091 (= lt!694035 (get!6047 lt!694018))))

(declare-fun b!1784092 () Bool)

(declare-fun e!1141774 () Bool)

(declare-fun e!1141757 () Bool)

(assert (=> b!1784092 (= e!1141774 e!1141757)))

(declare-fun res!804369 () Bool)

(assert (=> b!1784092 (=> res!804369 e!1141757)))

(declare-fun lt!694023 () Option!4068)

(declare-fun lt!694056 () List!19733)

(assert (=> b!1784092 (= res!804369 (or (not (= lt!694056 (_2!11029 lt!694045))) (not (= lt!694023 (Some!4067 (tuple2!19255 (_1!11029 lt!694045) lt!694056))))))))

(assert (=> b!1784092 (= (_2!11029 lt!694045) lt!694056)))

(declare-fun lt!694037 () Unit!33989)

(assert (=> b!1784092 (= lt!694037 (lemmaSamePrefixThenSameSuffix!874 lt!694017 (_2!11029 lt!694045) lt!694017 lt!694056 lt!694034))))

(declare-fun getSuffix!930 (List!19733 List!19733) List!19733)

(assert (=> b!1784092 (= lt!694056 (getSuffix!930 lt!694034 lt!694017))))

(declare-fun lt!694036 () TokenValue!3613)

(declare-fun lt!694025 () Int)

(assert (=> b!1784092 (= lt!694023 (Some!4067 (tuple2!19255 (Token!6613 lt!694036 (rule!5607 (_1!11029 lt!694045)) lt!694025 lt!694017) (_2!11029 lt!694045))))))

(declare-fun maxPrefixOneRule!1075 (LexerInterface!3152 Rule!6846 List!19733) Option!4068)

(assert (=> b!1784092 (= lt!694023 (maxPrefixOneRule!1075 thiss!24550 (rule!5607 (_1!11029 lt!694045)) lt!694034))))

(declare-fun size!15619 (List!19733) Int)

(assert (=> b!1784092 (= lt!694025 (size!15619 lt!694017))))

(declare-fun lt!694031 () BalanceConc!13026)

(declare-fun apply!5323 (TokenValueInjection!6886 BalanceConc!13026) TokenValue!3613)

(assert (=> b!1784092 (= lt!694036 (apply!5323 (transformation!3523 (rule!5607 (_1!11029 lt!694045))) lt!694031))))

(declare-fun seqFromList!2492 (List!19733) BalanceConc!13026)

(assert (=> b!1784092 (= lt!694031 (seqFromList!2492 lt!694017))))

(declare-fun lt!694019 () Unit!33989)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!453 (LexerInterface!3152 List!19734 List!19733 List!19733 List!19733 Rule!6846) Unit!33989)

(assert (=> b!1784092 (= lt!694019 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!453 thiss!24550 rules!3447 lt!694017 lt!694034 (_2!11029 lt!694045) (rule!5607 (_1!11029 lt!694045))))))

(declare-fun e!1141762 () Bool)

(declare-fun b!1784093 () Bool)

(declare-fun rule!422 () Rule!6846)

(declare-fun e!1141769 () Bool)

(declare-fun tp!504818 () Bool)

(assert (=> b!1784093 (= e!1141762 (and tp!504818 (inv!25592 (tag!3923 rule!422)) (inv!25597 (transformation!3523 rule!422)) e!1141769))))

(declare-fun res!804359 () Bool)

(assert (=> start!177690 (=> (not res!804359) (not e!1141778))))

(get-info :version)

(assert (=> start!177690 (= res!804359 ((_ is Lexer!3150) thiss!24550))))

(assert (=> start!177690 e!1141778))

(declare-fun e!1141763 () Bool)

(assert (=> start!177690 e!1141763))

(assert (=> start!177690 e!1141762))

(assert (=> start!177690 true))

(declare-fun e!1141758 () Bool)

(declare-fun inv!25598 (Token!6612) Bool)

(assert (=> start!177690 (and (inv!25598 token!523) e!1141758)))

(declare-fun e!1141765 () Bool)

(assert (=> start!177690 e!1141765))

(declare-fun b!1784094 () Bool)

(declare-fun e!1141784 () Bool)

(declare-fun e!1141767 () Bool)

(assert (=> b!1784094 (= e!1141784 e!1141767)))

(declare-fun res!804356 () Bool)

(assert (=> b!1784094 (=> res!804356 e!1141767)))

(declare-fun isPrefix!1763 (List!19733 List!19733) Bool)

(assert (=> b!1784094 (= res!804356 (not (isPrefix!1763 lt!694017 lt!694034)))))

(declare-fun ++!5347 (List!19733 List!19733) List!19733)

(assert (=> b!1784094 (isPrefix!1763 lt!694017 (++!5347 lt!694017 (_2!11029 lt!694045)))))

(declare-fun lt!694028 () Unit!33989)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1272 (List!19733 List!19733) Unit!33989)

(assert (=> b!1784094 (= lt!694028 (lemmaConcatTwoListThenFirstIsPrefix!1272 lt!694017 (_2!11029 lt!694045)))))

(declare-fun lt!694016 () BalanceConc!13026)

(assert (=> b!1784094 (= lt!694017 (list!7997 lt!694016))))

(assert (=> b!1784094 (= lt!694016 (charsOf!2172 (_1!11029 lt!694045)))))

(declare-fun e!1141781 () Bool)

(assert (=> b!1784094 e!1141781))

(declare-fun res!804380 () Bool)

(assert (=> b!1784094 (=> (not res!804380) (not e!1141781))))

(declare-datatypes ((Option!4069 0))(
  ( (None!4068) (Some!4068 (v!25563 Rule!6846)) )
))
(declare-fun lt!694029 () Option!4069)

(declare-fun isDefined!3412 (Option!4069) Bool)

(assert (=> b!1784094 (= res!804380 (isDefined!3412 lt!694029))))

(declare-fun getRuleFromTag!571 (LexerInterface!3152 List!19734 String!22397) Option!4069)

(assert (=> b!1784094 (= lt!694029 (getRuleFromTag!571 thiss!24550 rules!3447 (tag!3923 (rule!5607 (_1!11029 lt!694045)))))))

(declare-fun lt!694051 () Unit!33989)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!571 (LexerInterface!3152 List!19734 List!19733 Token!6612) Unit!33989)

(assert (=> b!1784094 (= lt!694051 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!571 thiss!24550 rules!3447 lt!694034 (_1!11029 lt!694045)))))

(declare-fun lt!694055 () Option!4068)

(assert (=> b!1784094 (= lt!694045 (get!6047 lt!694055))))

(declare-fun lt!694054 () Unit!33989)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!674 (LexerInterface!3152 List!19734 List!19733 List!19733) Unit!33989)

(assert (=> b!1784094 (= lt!694054 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!674 thiss!24550 rules!3447 lt!694022 suffix!1421))))

(assert (=> b!1784094 (= lt!694055 (maxPrefix!1706 thiss!24550 rules!3447 lt!694034))))

(assert (=> b!1784094 (isPrefix!1763 lt!694022 lt!694034)))

(declare-fun lt!694015 () Unit!33989)

(assert (=> b!1784094 (= lt!694015 (lemmaConcatTwoListThenFirstIsPrefix!1272 lt!694022 suffix!1421))))

(assert (=> b!1784094 (= lt!694034 (++!5347 lt!694022 suffix!1421))))

(declare-fun b!1784095 () Bool)

(declare-fun e!1141771 () Bool)

(declare-fun lt!694039 () Rule!6846)

(assert (=> b!1784095 (= e!1141771 (= (rule!5607 (_1!11029 lt!694045)) lt!694039))))

(declare-fun b!1784096 () Bool)

(declare-fun res!804370 () Bool)

(assert (=> b!1784096 (=> res!804370 e!1141772)))

(declare-fun contains!3555 (List!19734 Rule!6846) Bool)

(assert (=> b!1784096 (= res!804370 (not (contains!3555 rules!3447 (rule!5607 token!523))))))

(declare-fun b!1784097 () Bool)

(declare-fun res!804379 () Bool)

(assert (=> b!1784097 (=> (not res!804379) (not e!1141778))))

(declare-fun isEmpty!12426 (List!19734) Bool)

(assert (=> b!1784097 (= res!804379 (not (isEmpty!12426 rules!3447)))))

(declare-fun b!1784098 () Bool)

(declare-fun e!1141776 () Bool)

(assert (=> b!1784098 (= e!1141776 e!1141756)))

(declare-fun res!804355 () Bool)

(assert (=> b!1784098 (=> res!804355 e!1141756)))

(declare-fun lt!694027 () Int)

(declare-fun lt!694058 () Int)

(assert (=> b!1784098 (= res!804355 (not (= lt!694027 lt!694058)))))

(declare-fun lt!694048 () Unit!33989)

(declare-fun e!1141779 () Unit!33989)

(assert (=> b!1784098 (= lt!694048 e!1141779)))

(declare-fun c!290196 () Bool)

(assert (=> b!1784098 (= c!290196 (< lt!694027 lt!694058))))

(declare-fun b!1784099 () Bool)

(declare-fun tp_is_empty!7945 () Bool)

(declare-fun tp!504828 () Bool)

(assert (=> b!1784099 (= e!1141763 (and tp_is_empty!7945 tp!504828))))

(declare-fun b!1784100 () Bool)

(declare-fun e!1141770 () Bool)

(declare-fun tp!504827 () Bool)

(assert (=> b!1784100 (= e!1141765 (and e!1141770 tp!504827))))

(declare-fun b!1784101 () Bool)

(declare-fun e!1141761 () Bool)

(assert (=> b!1784101 (= e!1141766 (not e!1141761))))

(declare-fun res!804364 () Bool)

(assert (=> b!1784101 (=> res!804364 e!1141761)))

(declare-fun matchR!2324 (Regex!4851 List!19733) Bool)

(assert (=> b!1784101 (= res!804364 (not (matchR!2324 (regex!3523 rule!422) lt!694022)))))

(declare-fun ruleValid!1021 (LexerInterface!3152 Rule!6846) Bool)

(assert (=> b!1784101 (ruleValid!1021 thiss!24550 rule!422)))

(declare-fun lt!694046 () Unit!33989)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!544 (LexerInterface!3152 Rule!6846 List!19734) Unit!33989)

(assert (=> b!1784101 (= lt!694046 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!544 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1784102 () Bool)

(assert (=> b!1784102 (= e!1141772 true)))

(declare-fun lt!694032 () Unit!33989)

(declare-fun lemmaSemiInverse!661 (TokenValueInjection!6886 BalanceConc!13026) Unit!33989)

(assert (=> b!1784102 (= lt!694032 (lemmaSemiInverse!661 (transformation!3523 (rule!5607 (_1!11029 lt!694045))) lt!694031))))

(declare-fun b!1784103 () Bool)

(declare-fun res!804362 () Bool)

(assert (=> b!1784103 (=> res!804362 e!1141767)))

(assert (=> b!1784103 (= res!804362 (not (matchR!2324 (regex!3523 (rule!5607 (_1!11029 lt!694045))) lt!694017)))))

(declare-fun b!1784104 () Bool)

(declare-fun e!1141759 () Bool)

(assert (=> b!1784104 (= e!1141759 e!1141774)))

(declare-fun res!804367 () Bool)

(assert (=> b!1784104 (=> res!804367 e!1141774)))

(declare-fun lt!694052 () TokenValue!3613)

(assert (=> b!1784104 (= res!804367 (not (= lt!694055 (Some!4067 (tuple2!19255 (Token!6613 lt!694052 (rule!5607 (_1!11029 lt!694045)) lt!694027 lt!694017) (_2!11029 lt!694045))))))))

(declare-fun size!15620 (BalanceConc!13026) Int)

(assert (=> b!1784104 (= lt!694027 (size!15620 lt!694016))))

(assert (=> b!1784104 (= lt!694052 (apply!5323 (transformation!3523 (rule!5607 (_1!11029 lt!694045))) lt!694016))))

(declare-fun lt!694030 () Unit!33989)

(declare-fun lemmaCharactersSize!581 (Token!6612) Unit!33989)

(assert (=> b!1784104 (= lt!694030 (lemmaCharactersSize!581 (_1!11029 lt!694045)))))

(declare-fun lt!694026 () Unit!33989)

(declare-fun lemmaEqSameImage!434 (TokenValueInjection!6886 BalanceConc!13026 BalanceConc!13026) Unit!33989)

(assert (=> b!1784104 (= lt!694026 (lemmaEqSameImage!434 (transformation!3523 (rule!5607 (_1!11029 lt!694045))) lt!694016 (seqFromList!2492 (originalCharacters!4337 (_1!11029 lt!694045)))))))

(declare-fun b!1784105 () Bool)

(declare-fun e!1141755 () Bool)

(assert (=> b!1784105 (= e!1141755 e!1141759)))

(declare-fun res!804373 () Bool)

(assert (=> b!1784105 (=> res!804373 e!1141759)))

(declare-fun dynLambda!9676 (Int TokenValue!3613) BalanceConc!13026)

(declare-fun dynLambda!9677 (Int BalanceConc!13026) TokenValue!3613)

(assert (=> b!1784105 (= res!804373 (not (= (list!7997 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (dynLambda!9677 (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) lt!694016))) lt!694017)))))

(declare-fun lt!694014 () Unit!33989)

(assert (=> b!1784105 (= lt!694014 (lemmaSemiInverse!661 (transformation!3523 (rule!5607 (_1!11029 lt!694045))) lt!694016))))

(declare-fun b!1784106 () Bool)

(assert (=> b!1784106 (= e!1141761 e!1141784)))

(declare-fun res!804363 () Bool)

(assert (=> b!1784106 (=> res!804363 e!1141784)))

(declare-fun lt!694038 () Regex!4851)

(declare-fun lt!694050 () List!19733)

(declare-fun prefixMatch!734 (Regex!4851 List!19733) Bool)

(assert (=> b!1784106 (= res!804363 (prefixMatch!734 lt!694038 lt!694050))))

(declare-fun head!4174 (List!19733) C!9876)

(assert (=> b!1784106 (= lt!694050 (++!5347 lt!694022 (Cons!19663 (head!4174 suffix!1421) Nil!19663)))))

(declare-fun rulesRegex!879 (LexerInterface!3152 List!19734) Regex!4851)

(assert (=> b!1784106 (= lt!694038 (rulesRegex!879 thiss!24550 rules!3447))))

(assert (=> b!1784107 (= e!1141782 (and tp!504826 tp!504819))))

(declare-fun b!1784108 () Bool)

(declare-fun res!804357 () Bool)

(assert (=> b!1784108 (=> res!804357 e!1141759)))

(assert (=> b!1784108 (= res!804357 (not (= lt!694016 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (value!110078 (_1!11029 lt!694045))))))))

(declare-fun b!1784109 () Bool)

(declare-fun Unit!33991 () Unit!33989)

(assert (=> b!1784109 (= e!1141779 Unit!33991)))

(declare-fun b!1784110 () Bool)

(declare-fun e!1141775 () Unit!33989)

(declare-fun Unit!33992 () Unit!33989)

(assert (=> b!1784110 (= e!1141775 Unit!33992)))

(declare-fun b!1784111 () Bool)

(declare-fun res!804354 () Bool)

(assert (=> b!1784111 (=> res!804354 e!1141772)))

(assert (=> b!1784111 (= res!804354 (not (contains!3555 rules!3447 (rule!5607 (_1!11029 lt!694045)))))))

(declare-fun b!1784112 () Bool)

(declare-fun res!804372 () Bool)

(assert (=> b!1784112 (=> (not res!804372) (not e!1141778))))

(declare-fun rulesInvariant!2821 (LexerInterface!3152 List!19734) Bool)

(assert (=> b!1784112 (= res!804372 (rulesInvariant!2821 thiss!24550 rules!3447))))

(declare-fun tp!504820 () Bool)

(declare-fun b!1784113 () Bool)

(declare-fun inv!21 (TokenValue!3613) Bool)

(assert (=> b!1784113 (= e!1141758 (and (inv!21 (value!110078 token!523)) e!1141764 tp!504820))))

(declare-fun b!1784114 () Bool)

(assert (=> b!1784114 (= e!1141757 e!1141776)))

(declare-fun res!804358 () Bool)

(assert (=> b!1784114 (=> res!804358 e!1141776)))

(declare-fun lt!694057 () Bool)

(assert (=> b!1784114 (= res!804358 lt!694057)))

(declare-fun lt!694049 () Unit!33989)

(assert (=> b!1784114 (= lt!694049 e!1141775)))

(declare-fun c!290197 () Bool)

(assert (=> b!1784114 (= c!290197 lt!694057)))

(assert (=> b!1784114 (= lt!694057 (> lt!694027 lt!694058))))

(assert (=> b!1784114 (= lt!694058 (size!15620 lt!694020))))

(assert (=> b!1784114 (matchR!2324 lt!694038 lt!694022)))

(declare-fun lt!694053 () Unit!33989)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!230 (LexerInterface!3152 List!19734 List!19733 Token!6612 Rule!6846 List!19733) Unit!33989)

(assert (=> b!1784114 (= lt!694053 (lemmaMaxPrefixThenMatchesRulesRegex!230 thiss!24550 rules!3447 lt!694022 token!523 rule!422 Nil!19663))))

(assert (=> b!1784115 (= e!1141767 e!1141755)))

(declare-fun res!804378 () Bool)

(assert (=> b!1784115 (=> res!804378 e!1141755)))

(declare-fun Forall!890 (Int) Bool)

(assert (=> b!1784115 (= res!804378 (not (Forall!890 lambda!70736)))))

(declare-fun lt!694013 () Unit!33989)

(declare-fun lemmaInv!722 (TokenValueInjection!6886) Unit!33989)

(assert (=> b!1784115 (= lt!694013 (lemmaInv!722 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))))))

(declare-fun b!1784116 () Bool)

(assert (=> b!1784116 (= e!1141781 e!1141771)))

(declare-fun res!804360 () Bool)

(assert (=> b!1784116 (=> (not res!804360) (not e!1141771))))

(assert (=> b!1784116 (= res!804360 (matchR!2324 (regex!3523 lt!694039) (list!7997 (charsOf!2172 (_1!11029 lt!694045)))))))

(declare-fun get!6048 (Option!4069) Rule!6846)

(assert (=> b!1784116 (= lt!694039 (get!6048 lt!694029))))

(declare-fun b!1784117 () Bool)

(declare-fun res!804374 () Bool)

(assert (=> b!1784117 (=> (not res!804374) (not e!1141766))))

(assert (=> b!1784117 (= res!804374 (= (rule!5607 token!523) rule!422))))

(declare-fun b!1784118 () Bool)

(declare-fun res!804375 () Bool)

(assert (=> b!1784118 (=> res!804375 e!1141761)))

(declare-fun isEmpty!12427 (List!19733) Bool)

(assert (=> b!1784118 (= res!804375 (isEmpty!12427 suffix!1421))))

(assert (=> b!1784119 (= e!1141769 (and tp!504821 tp!504825))))

(declare-fun b!1784120 () Bool)

(declare-fun res!804366 () Bool)

(assert (=> b!1784120 (=> res!804366 e!1141772)))

(assert (=> b!1784120 (= res!804366 (isEmpty!12427 lt!694017))))

(declare-fun b!1784121 () Bool)

(declare-fun Unit!33993 () Unit!33989)

(assert (=> b!1784121 (= e!1141775 Unit!33993)))

(declare-fun lt!694041 () Unit!33989)

(assert (=> b!1784121 (= lt!694041 (lemmaMaxPrefixThenMatchesRulesRegex!230 thiss!24550 rules!3447 lt!694034 (_1!11029 lt!694045) (rule!5607 (_1!11029 lt!694045)) (_2!11029 lt!694045)))))

(assert (=> b!1784121 (matchR!2324 lt!694038 lt!694017)))

(declare-fun lt!694033 () List!19733)

(assert (=> b!1784121 (= lt!694033 (getSuffix!930 lt!694034 lt!694022))))

(declare-fun lt!694047 () Unit!33989)

(assert (=> b!1784121 (= lt!694047 (lemmaSamePrefixThenSameSuffix!874 lt!694022 suffix!1421 lt!694022 lt!694033 lt!694034))))

(assert (=> b!1784121 (= suffix!1421 lt!694033)))

(declare-fun lt!694042 () Unit!33989)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!299 (List!19733 List!19733) Unit!33989)

(assert (=> b!1784121 (= lt!694042 (lemmaAddHeadSuffixToPrefixStillPrefix!299 lt!694022 lt!694034))))

(assert (=> b!1784121 (isPrefix!1763 (++!5347 lt!694022 (Cons!19663 (head!4174 lt!694033) Nil!19663)) lt!694034)))

(declare-fun lt!694024 () Unit!33989)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!171 (List!19733 List!19733 List!19733) Unit!33989)

(assert (=> b!1784121 (= lt!694024 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!171 lt!694017 lt!694050 lt!694034))))

(assert (=> b!1784121 (isPrefix!1763 lt!694050 lt!694017)))

(declare-fun lt!694021 () Unit!33989)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!162 (Regex!4851 List!19733 List!19733) Unit!33989)

(assert (=> b!1784121 (= lt!694021 (lemmaNotPrefixMatchThenCannotMatchLonger!162 lt!694038 lt!694050 lt!694017))))

(assert (=> b!1784121 false))

(declare-fun e!1141780 () Bool)

(assert (=> b!1784122 (= e!1141780 (and tp!504817 tp!504824))))

(declare-fun b!1784123 () Bool)

(declare-fun res!804365 () Bool)

(assert (=> b!1784123 (=> res!804365 e!1141772)))

(declare-fun getIndex!188 (List!19734 Rule!6846) Int)

(assert (=> b!1784123 (= res!804365 (>= (getIndex!188 rules!3447 (rule!5607 token!523)) (getIndex!188 rules!3447 (rule!5607 (_1!11029 lt!694045)))))))

(declare-fun b!1784124 () Bool)

(declare-fun res!804377 () Bool)

(assert (=> b!1784124 (=> (not res!804377) (not e!1141778))))

(assert (=> b!1784124 (= res!804377 (contains!3555 rules!3447 rule!422))))

(declare-fun b!1784125 () Bool)

(declare-fun tp!504823 () Bool)

(assert (=> b!1784125 (= e!1141770 (and tp!504823 (inv!25592 (tag!3923 (h!25065 rules!3447))) (inv!25597 (transformation!3523 (h!25065 rules!3447))) e!1141780))))

(declare-fun b!1784126 () Bool)

(declare-fun res!804376 () Bool)

(assert (=> b!1784126 (=> (not res!804376) (not e!1141766))))

(assert (=> b!1784126 (= res!804376 (isEmpty!12427 (_2!11029 lt!694035)))))

(declare-fun b!1784127 () Bool)

(declare-fun Unit!33994 () Unit!33989)

(assert (=> b!1784127 (= e!1141779 Unit!33994)))

(declare-fun lt!694040 () Unit!33989)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!232 (LexerInterface!3152 List!19734 Rule!6846 List!19733 List!19733 List!19733 Rule!6846) Unit!33989)

(assert (=> b!1784127 (= lt!694040 (lemmaMaxPrefixOutputsMaxPrefix!232 thiss!24550 rules!3447 (rule!5607 (_1!11029 lt!694045)) lt!694017 lt!694034 lt!694022 rule!422))))

(assert (=> b!1784127 false))

(assert (= (and start!177690 res!804359) b!1784097))

(assert (= (and b!1784097 res!804379) b!1784112))

(assert (= (and b!1784112 res!804372) b!1784124))

(assert (= (and b!1784124 res!804377) b!1784089))

(assert (= (and b!1784089 res!804368) b!1784091))

(assert (= (and b!1784091 res!804361) b!1784126))

(assert (= (and b!1784126 res!804376) b!1784117))

(assert (= (and b!1784117 res!804374) b!1784101))

(assert (= (and b!1784101 (not res!804364)) b!1784118))

(assert (= (and b!1784118 (not res!804375)) b!1784106))

(assert (= (and b!1784106 (not res!804363)) b!1784094))

(assert (= (and b!1784094 res!804380) b!1784116))

(assert (= (and b!1784116 res!804360) b!1784095))

(assert (= (and b!1784094 (not res!804356)) b!1784103))

(assert (= (and b!1784103 (not res!804362)) b!1784115))

(assert (= (and b!1784115 (not res!804378)) b!1784105))

(assert (= (and b!1784105 (not res!804373)) b!1784108))

(assert (= (and b!1784108 (not res!804357)) b!1784104))

(assert (= (and b!1784104 (not res!804367)) b!1784092))

(assert (= (and b!1784092 (not res!804369)) b!1784114))

(assert (= (and b!1784114 c!290197) b!1784121))

(assert (= (and b!1784114 (not c!290197)) b!1784110))

(assert (= (and b!1784114 (not res!804358)) b!1784098))

(assert (= (and b!1784098 c!290196) b!1784127))

(assert (= (and b!1784098 (not c!290196)) b!1784109))

(assert (= (and b!1784098 (not res!804355)) b!1784088))

(assert (= (and b!1784088 (not res!804371)) b!1784123))

(assert (= (and b!1784123 (not res!804365)) b!1784111))

(assert (= (and b!1784111 (not res!804354)) b!1784096))

(assert (= (and b!1784096 (not res!804370)) b!1784120))

(assert (= (and b!1784120 (not res!804366)) b!1784102))

(assert (= (and start!177690 ((_ is Cons!19663) suffix!1421)) b!1784099))

(assert (= b!1784093 b!1784119))

(assert (= start!177690 b!1784093))

(assert (= b!1784090 b!1784107))

(assert (= b!1784113 b!1784090))

(assert (= start!177690 b!1784113))

(assert (= b!1784125 b!1784122))

(assert (= b!1784100 b!1784125))

(assert (= (and start!177690 ((_ is Cons!19664) rules!3447)) b!1784100))

(declare-fun b_lambda!58495 () Bool)

(assert (=> (not b_lambda!58495) (not b!1784105)))

(declare-fun tb!108543 () Bool)

(declare-fun t!166866 () Bool)

(assert (=> (and b!1784107 (= (toChars!4909 (transformation!3523 (rule!5607 token!523))) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166866) tb!108543))

(declare-fun e!1141796 () Bool)

(declare-fun b!1784143 () Bool)

(declare-fun tp!504831 () Bool)

(declare-fun inv!25599 (Conc!6541) Bool)

(assert (=> b!1784143 (= e!1141796 (and (inv!25599 (c!290199 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (dynLambda!9677 (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) lt!694016)))) tp!504831))))

(declare-fun result!130594 () Bool)

(declare-fun inv!25600 (BalanceConc!13026) Bool)

(assert (=> tb!108543 (= result!130594 (and (inv!25600 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (dynLambda!9677 (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) lt!694016))) e!1141796))))

(assert (= tb!108543 b!1784143))

(declare-fun m!2207019 () Bool)

(assert (=> b!1784143 m!2207019))

(declare-fun m!2207021 () Bool)

(assert (=> tb!108543 m!2207021))

(assert (=> b!1784105 t!166866))

(declare-fun b_and!137075 () Bool)

(assert (= b_and!137065 (and (=> t!166866 result!130594) b_and!137075)))

(declare-fun tb!108545 () Bool)

(declare-fun t!166868 () Bool)

(assert (=> (and b!1784122 (= (toChars!4909 (transformation!3523 (h!25065 rules!3447))) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166868) tb!108545))

(declare-fun result!130598 () Bool)

(assert (= result!130598 result!130594))

(assert (=> b!1784105 t!166868))

(declare-fun b_and!137077 () Bool)

(assert (= b_and!137069 (and (=> t!166868 result!130598) b_and!137077)))

(declare-fun tb!108547 () Bool)

(declare-fun t!166870 () Bool)

(assert (=> (and b!1784119 (= (toChars!4909 (transformation!3523 rule!422)) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166870) tb!108547))

(declare-fun result!130600 () Bool)

(assert (= result!130600 result!130594))

(assert (=> b!1784105 t!166870))

(declare-fun b_and!137079 () Bool)

(assert (= b_and!137073 (and (=> t!166870 result!130600) b_and!137079)))

(declare-fun b_lambda!58497 () Bool)

(assert (=> (not b_lambda!58497) (not b!1784105)))

(declare-fun tb!108549 () Bool)

(declare-fun t!166872 () Bool)

(assert (=> (and b!1784107 (= (toValue!5050 (transformation!3523 (rule!5607 token!523))) (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166872) tb!108549))

(declare-fun result!130602 () Bool)

(assert (=> tb!108549 (= result!130602 (inv!21 (dynLambda!9677 (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) lt!694016)))))

(declare-fun m!2207023 () Bool)

(assert (=> tb!108549 m!2207023))

(assert (=> b!1784105 t!166872))

(declare-fun b_and!137081 () Bool)

(assert (= b_and!137063 (and (=> t!166872 result!130602) b_and!137081)))

(declare-fun tb!108551 () Bool)

(declare-fun t!166874 () Bool)

(assert (=> (and b!1784122 (= (toValue!5050 (transformation!3523 (h!25065 rules!3447))) (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166874) tb!108551))

(declare-fun result!130606 () Bool)

(assert (= result!130606 result!130602))

(assert (=> b!1784105 t!166874))

(declare-fun b_and!137083 () Bool)

(assert (= b_and!137067 (and (=> t!166874 result!130606) b_and!137083)))

(declare-fun t!166876 () Bool)

(declare-fun tb!108553 () Bool)

(assert (=> (and b!1784119 (= (toValue!5050 (transformation!3523 rule!422)) (toValue!5050 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166876) tb!108553))

(declare-fun result!130608 () Bool)

(assert (= result!130608 result!130602))

(assert (=> b!1784105 t!166876))

(declare-fun b_and!137085 () Bool)

(assert (= b_and!137071 (and (=> t!166876 result!130608) b_and!137085)))

(declare-fun b_lambda!58499 () Bool)

(assert (=> (not b_lambda!58499) (not b!1784108)))

(declare-fun tb!108555 () Bool)

(declare-fun t!166878 () Bool)

(assert (=> (and b!1784107 (= (toChars!4909 (transformation!3523 (rule!5607 token!523))) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166878) tb!108555))

(declare-fun b!1784146 () Bool)

(declare-fun e!1141800 () Bool)

(declare-fun tp!504832 () Bool)

(assert (=> b!1784146 (= e!1141800 (and (inv!25599 (c!290199 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (value!110078 (_1!11029 lt!694045))))) tp!504832))))

(declare-fun result!130610 () Bool)

(assert (=> tb!108555 (= result!130610 (and (inv!25600 (dynLambda!9676 (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045)))) (value!110078 (_1!11029 lt!694045)))) e!1141800))))

(assert (= tb!108555 b!1784146))

(declare-fun m!2207025 () Bool)

(assert (=> b!1784146 m!2207025))

(declare-fun m!2207027 () Bool)

(assert (=> tb!108555 m!2207027))

(assert (=> b!1784108 t!166878))

(declare-fun b_and!137087 () Bool)

(assert (= b_and!137075 (and (=> t!166878 result!130610) b_and!137087)))

(declare-fun t!166880 () Bool)

(declare-fun tb!108557 () Bool)

(assert (=> (and b!1784122 (= (toChars!4909 (transformation!3523 (h!25065 rules!3447))) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166880) tb!108557))

(declare-fun result!130612 () Bool)

(assert (= result!130612 result!130610))

(assert (=> b!1784108 t!166880))

(declare-fun b_and!137089 () Bool)

(assert (= b_and!137077 (and (=> t!166880 result!130612) b_and!137089)))

(declare-fun t!166882 () Bool)

(declare-fun tb!108559 () Bool)

(assert (=> (and b!1784119 (= (toChars!4909 (transformation!3523 rule!422)) (toChars!4909 (transformation!3523 (rule!5607 (_1!11029 lt!694045))))) t!166882) tb!108559))

(declare-fun result!130614 () Bool)

(assert (= result!130614 result!130610))

(assert (=> b!1784108 t!166882))

(declare-fun b_and!137091 () Bool)

(assert (= b_and!137079 (and (=> t!166882 result!130614) b_and!137091)))

(declare-fun m!2207029 () Bool)

(assert (=> b!1784105 m!2207029))

(assert (=> b!1784105 m!2207029))

(declare-fun m!2207031 () Bool)

(assert (=> b!1784105 m!2207031))

(assert (=> b!1784105 m!2207031))

(declare-fun m!2207033 () Bool)

(assert (=> b!1784105 m!2207033))

(declare-fun m!2207035 () Bool)

(assert (=> b!1784105 m!2207035))

(declare-fun m!2207037 () Bool)

(assert (=> start!177690 m!2207037))

(declare-fun m!2207039 () Bool)

(assert (=> b!1784111 m!2207039))

(declare-fun m!2207041 () Bool)

(assert (=> b!1784090 m!2207041))

(declare-fun m!2207043 () Bool)

(assert (=> b!1784090 m!2207043))

(declare-fun m!2207045 () Bool)

(assert (=> b!1784114 m!2207045))

(declare-fun m!2207047 () Bool)

(assert (=> b!1784114 m!2207047))

(declare-fun m!2207049 () Bool)

(assert (=> b!1784114 m!2207049))

(declare-fun m!2207051 () Bool)

(assert (=> b!1784103 m!2207051))

(declare-fun m!2207053 () Bool)

(assert (=> b!1784115 m!2207053))

(declare-fun m!2207055 () Bool)

(assert (=> b!1784115 m!2207055))

(declare-fun m!2207057 () Bool)

(assert (=> b!1784092 m!2207057))

(declare-fun m!2207059 () Bool)

(assert (=> b!1784092 m!2207059))

(declare-fun m!2207061 () Bool)

(assert (=> b!1784092 m!2207061))

(declare-fun m!2207063 () Bool)

(assert (=> b!1784092 m!2207063))

(declare-fun m!2207065 () Bool)

(assert (=> b!1784092 m!2207065))

(declare-fun m!2207067 () Bool)

(assert (=> b!1784092 m!2207067))

(declare-fun m!2207069 () Bool)

(assert (=> b!1784092 m!2207069))

(declare-fun m!2207071 () Bool)

(assert (=> b!1784123 m!2207071))

(declare-fun m!2207073 () Bool)

(assert (=> b!1784123 m!2207073))

(declare-fun m!2207075 () Bool)

(assert (=> b!1784116 m!2207075))

(assert (=> b!1784116 m!2207075))

(declare-fun m!2207077 () Bool)

(assert (=> b!1784116 m!2207077))

(assert (=> b!1784116 m!2207077))

(declare-fun m!2207079 () Bool)

(assert (=> b!1784116 m!2207079))

(declare-fun m!2207081 () Bool)

(assert (=> b!1784116 m!2207081))

(declare-fun m!2207083 () Bool)

(assert (=> b!1784120 m!2207083))

(declare-fun m!2207085 () Bool)

(assert (=> b!1784125 m!2207085))

(declare-fun m!2207087 () Bool)

(assert (=> b!1784125 m!2207087))

(declare-fun m!2207089 () Bool)

(assert (=> b!1784088 m!2207089))

(declare-fun m!2207091 () Bool)

(assert (=> b!1784088 m!2207091))

(declare-fun m!2207093 () Bool)

(assert (=> b!1784112 m!2207093))

(declare-fun m!2207095 () Bool)

(assert (=> b!1784093 m!2207095))

(declare-fun m!2207097 () Bool)

(assert (=> b!1784093 m!2207097))

(declare-fun m!2207099 () Bool)

(assert (=> b!1784124 m!2207099))

(declare-fun m!2207101 () Bool)

(assert (=> b!1784094 m!2207101))

(declare-fun m!2207103 () Bool)

(assert (=> b!1784094 m!2207103))

(declare-fun m!2207105 () Bool)

(assert (=> b!1784094 m!2207105))

(assert (=> b!1784094 m!2207101))

(declare-fun m!2207107 () Bool)

(assert (=> b!1784094 m!2207107))

(declare-fun m!2207109 () Bool)

(assert (=> b!1784094 m!2207109))

(declare-fun m!2207111 () Bool)

(assert (=> b!1784094 m!2207111))

(declare-fun m!2207113 () Bool)

(assert (=> b!1784094 m!2207113))

(declare-fun m!2207115 () Bool)

(assert (=> b!1784094 m!2207115))

(declare-fun m!2207117 () Bool)

(assert (=> b!1784094 m!2207117))

(assert (=> b!1784094 m!2207075))

(declare-fun m!2207119 () Bool)

(assert (=> b!1784094 m!2207119))

(declare-fun m!2207121 () Bool)

(assert (=> b!1784094 m!2207121))

(declare-fun m!2207123 () Bool)

(assert (=> b!1784094 m!2207123))

(declare-fun m!2207125 () Bool)

(assert (=> b!1784094 m!2207125))

(declare-fun m!2207127 () Bool)

(assert (=> b!1784094 m!2207127))

(declare-fun m!2207129 () Bool)

(assert (=> b!1784101 m!2207129))

(declare-fun m!2207131 () Bool)

(assert (=> b!1784101 m!2207131))

(declare-fun m!2207133 () Bool)

(assert (=> b!1784101 m!2207133))

(declare-fun m!2207135 () Bool)

(assert (=> b!1784127 m!2207135))

(declare-fun m!2207137 () Bool)

(assert (=> b!1784091 m!2207137))

(declare-fun m!2207139 () Bool)

(assert (=> b!1784106 m!2207139))

(declare-fun m!2207141 () Bool)

(assert (=> b!1784106 m!2207141))

(declare-fun m!2207143 () Bool)

(assert (=> b!1784106 m!2207143))

(declare-fun m!2207145 () Bool)

(assert (=> b!1784106 m!2207145))

(declare-fun m!2207147 () Bool)

(assert (=> b!1784096 m!2207147))

(declare-fun m!2207149 () Bool)

(assert (=> b!1784108 m!2207149))

(declare-fun m!2207151 () Bool)

(assert (=> b!1784126 m!2207151))

(declare-fun m!2207153 () Bool)

(assert (=> b!1784118 m!2207153))

(declare-fun m!2207155 () Bool)

(assert (=> b!1784097 m!2207155))

(declare-fun m!2207157 () Bool)

(assert (=> b!1784104 m!2207157))

(declare-fun m!2207159 () Bool)

(assert (=> b!1784104 m!2207159))

(declare-fun m!2207161 () Bool)

(assert (=> b!1784104 m!2207161))

(assert (=> b!1784104 m!2207161))

(declare-fun m!2207163 () Bool)

(assert (=> b!1784104 m!2207163))

(declare-fun m!2207165 () Bool)

(assert (=> b!1784104 m!2207165))

(declare-fun m!2207167 () Bool)

(assert (=> b!1784102 m!2207167))

(declare-fun m!2207169 () Bool)

(assert (=> b!1784113 m!2207169))

(declare-fun m!2207171 () Bool)

(assert (=> b!1784089 m!2207171))

(declare-fun m!2207173 () Bool)

(assert (=> b!1784089 m!2207173))

(declare-fun m!2207175 () Bool)

(assert (=> b!1784089 m!2207175))

(declare-fun m!2207177 () Bool)

(assert (=> b!1784089 m!2207177))

(declare-fun m!2207179 () Bool)

(assert (=> b!1784121 m!2207179))

(declare-fun m!2207181 () Bool)

(assert (=> b!1784121 m!2207181))

(declare-fun m!2207183 () Bool)

(assert (=> b!1784121 m!2207183))

(declare-fun m!2207185 () Bool)

(assert (=> b!1784121 m!2207185))

(declare-fun m!2207187 () Bool)

(assert (=> b!1784121 m!2207187))

(declare-fun m!2207189 () Bool)

(assert (=> b!1784121 m!2207189))

(declare-fun m!2207191 () Bool)

(assert (=> b!1784121 m!2207191))

(declare-fun m!2207193 () Bool)

(assert (=> b!1784121 m!2207193))

(declare-fun m!2207195 () Bool)

(assert (=> b!1784121 m!2207195))

(assert (=> b!1784121 m!2207187))

(declare-fun m!2207197 () Bool)

(assert (=> b!1784121 m!2207197))

(declare-fun m!2207199 () Bool)

(assert (=> b!1784121 m!2207199))

(check-sat (not b_next!50251) (not b_lambda!58499) (not b!1784094) (not b!1784105) tp_is_empty!7945 (not b!1784111) (not b!1784126) (not b!1784091) (not b!1784088) (not b!1784100) b_and!137089 (not start!177690) b_and!137081 (not tb!108549) (not tb!108555) (not b!1784114) (not b!1784103) (not b_next!50247) (not b!1784125) (not b!1784106) (not b_next!50255) (not b!1784102) (not b_lambda!58495) (not b!1784113) (not b!1784101) (not b!1784143) (not b!1784099) (not b!1784104) (not b!1784127) (not b!1784123) (not b!1784121) b_and!137085 (not b!1784089) (not b!1784093) (not b!1784096) (not b_next!50253) (not b_next!50257) b_and!137087 (not b_lambda!58497) b_and!137083 (not b!1784092) (not b!1784120) (not b!1784097) (not b!1784146) (not b!1784090) (not b_next!50249) (not b!1784116) (not tb!108543) b_and!137091 (not b!1784112) (not b!1784118) (not b!1784115) (not b!1784124))
(check-sat (not b_next!50251) b_and!137089 b_and!137081 (not b_next!50247) (not b_next!50255) b_and!137085 (not b_next!50253) (not b_next!50249) b_and!137091 b_and!137083 (not b_next!50257) b_and!137087)
