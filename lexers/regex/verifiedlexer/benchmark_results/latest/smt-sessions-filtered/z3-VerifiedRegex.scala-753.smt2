; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41234 () Bool)

(assert start!41234)

(declare-fun b!437351 () Bool)

(declare-fun b_free!12185 () Bool)

(declare-fun b_next!12185 () Bool)

(assert (=> b!437351 (= b_free!12185 (not b_next!12185))))

(declare-fun tp!123916 () Bool)

(declare-fun b_and!47189 () Bool)

(assert (=> b!437351 (= tp!123916 b_and!47189)))

(declare-fun b_free!12187 () Bool)

(declare-fun b_next!12187 () Bool)

(assert (=> b!437351 (= b_free!12187 (not b_next!12187))))

(declare-fun tp!123918 () Bool)

(declare-fun b_and!47191 () Bool)

(assert (=> b!437351 (= tp!123918 b_and!47191)))

(declare-fun b!437336 () Bool)

(declare-fun b_free!12189 () Bool)

(declare-fun b_next!12189 () Bool)

(assert (=> b!437336 (= b_free!12189 (not b_next!12189))))

(declare-fun tp!123914 () Bool)

(declare-fun b_and!47193 () Bool)

(assert (=> b!437336 (= tp!123914 b_and!47193)))

(declare-fun b_free!12191 () Bool)

(declare-fun b_next!12191 () Bool)

(assert (=> b!437336 (= b_free!12191 (not b_next!12191))))

(declare-fun tp!123909 () Bool)

(declare-fun b_and!47195 () Bool)

(assert (=> b!437336 (= tp!123909 b_and!47195)))

(declare-fun b!437302 () Bool)

(declare-fun b_free!12193 () Bool)

(declare-fun b_next!12193 () Bool)

(assert (=> b!437302 (= b_free!12193 (not b_next!12193))))

(declare-fun tp!123910 () Bool)

(declare-fun b_and!47197 () Bool)

(assert (=> b!437302 (= tp!123910 b_and!47197)))

(declare-fun b_free!12195 () Bool)

(declare-fun b_next!12195 () Bool)

(assert (=> b!437302 (= b_free!12195 (not b_next!12195))))

(declare-fun tp!123913 () Bool)

(declare-fun b_and!47199 () Bool)

(assert (=> b!437302 (= tp!123913 b_and!47199)))

(declare-fun bs!54086 () Bool)

(declare-fun b!437344 () Bool)

(declare-fun b!437324 () Bool)

(assert (= bs!54086 (and b!437344 b!437324)))

(declare-fun lambda!12680 () Int)

(declare-fun lambda!12679 () Int)

(assert (=> bs!54086 (not (= lambda!12680 lambda!12679))))

(declare-fun b!437362 () Bool)

(declare-fun e!267070 () Bool)

(assert (=> b!437362 (= e!267070 true)))

(declare-fun b!437361 () Bool)

(declare-fun e!267069 () Bool)

(assert (=> b!437361 (= e!267069 e!267070)))

(declare-fun b!437360 () Bool)

(declare-fun e!267068 () Bool)

(assert (=> b!437360 (= e!267068 e!267069)))

(assert (=> b!437344 e!267068))

(assert (= b!437361 b!437362))

(assert (= b!437360 b!437361))

(declare-datatypes ((List!4298 0))(
  ( (Nil!4288) (Cons!4288 (h!9685 (_ BitVec 16)) (t!69304 List!4298)) )
))
(declare-datatypes ((TokenValue!851 0))(
  ( (FloatLiteralValue!1702 (text!6402 List!4298)) (TokenValueExt!850 (__x!3189 Int)) (Broken!4255 (value!27916 List!4298)) (Object!860) (End!851) (Def!851) (Underscore!851) (Match!851) (Else!851) (Error!851) (Case!851) (If!851) (Extends!851) (Abstract!851) (Class!851) (Val!851) (DelimiterValue!1702 (del!911 List!4298)) (KeywordValue!857 (value!27917 List!4298)) (CommentValue!1702 (value!27918 List!4298)) (WhitespaceValue!1702 (value!27919 List!4298)) (IndentationValue!851 (value!27920 List!4298)) (String!5334) (Int32!851) (Broken!4256 (value!27921 List!4298)) (Boolean!852) (Unit!7552) (OperatorValue!854 (op!911 List!4298)) (IdentifierValue!1702 (value!27922 List!4298)) (IdentifierValue!1703 (value!27923 List!4298)) (WhitespaceValue!1703 (value!27924 List!4298)) (True!1702) (False!1702) (Broken!4257 (value!27925 List!4298)) (Broken!4258 (value!27926 List!4298)) (True!1703) (RightBrace!851) (RightBracket!851) (Colon!851) (Null!851) (Comma!851) (LeftBracket!851) (False!1703) (LeftBrace!851) (ImaginaryLiteralValue!851 (text!6403 List!4298)) (StringLiteralValue!2553 (value!27927 List!4298)) (EOFValue!851 (value!27928 List!4298)) (IdentValue!851 (value!27929 List!4298)) (DelimiterValue!1703 (value!27930 List!4298)) (DedentValue!851 (value!27931 List!4298)) (NewLineValue!851 (value!27932 List!4298)) (IntegerValue!2553 (value!27933 (_ BitVec 32)) (text!6404 List!4298)) (IntegerValue!2554 (value!27934 Int) (text!6405 List!4298)) (Times!851) (Or!851) (Equal!851) (Minus!851) (Broken!4259 (value!27935 List!4298)) (And!851) (Div!851) (LessEqual!851) (Mod!851) (Concat!1904) (Not!851) (Plus!851) (SpaceValue!851 (value!27936 List!4298)) (IntegerValue!2555 (value!27937 Int) (text!6406 List!4298)) (StringLiteralValue!2554 (text!6407 List!4298)) (FloatLiteralValue!1703 (text!6408 List!4298)) (BytesLiteralValue!851 (value!27938 List!4298)) (CommentValue!1703 (value!27939 List!4298)) (StringLiteralValue!2555 (value!27940 List!4298)) (ErrorTokenValue!851 (msg!912 List!4298)) )
))
(declare-datatypes ((C!3028 0))(
  ( (C!3029 (val!1400 Int)) )
))
(declare-datatypes ((List!4299 0))(
  ( (Nil!4289) (Cons!4289 (h!9686 C!3028) (t!69305 List!4299)) )
))
(declare-datatypes ((IArray!2961 0))(
  ( (IArray!2962 (innerList!1538 List!4299)) )
))
(declare-datatypes ((Conc!1480 0))(
  ( (Node!1480 (left!3593 Conc!1480) (right!3923 Conc!1480) (csize!3190 Int) (cheight!1691 Int)) (Leaf!2234 (xs!4111 IArray!2961) (csize!3191 Int)) (Empty!1480) )
))
(declare-datatypes ((BalanceConc!2968 0))(
  ( (BalanceConc!2969 (c!88658 Conc!1480)) )
))
(declare-datatypes ((TokenValueInjection!1474 0))(
  ( (TokenValueInjection!1475 (toValue!1636 Int) (toChars!1495 Int)) )
))
(declare-datatypes ((Regex!1053 0))(
  ( (ElementMatch!1053 (c!88659 C!3028)) (Concat!1905 (regOne!2618 Regex!1053) (regTwo!2618 Regex!1053)) (EmptyExpr!1053) (Star!1053 (reg!1382 Regex!1053)) (EmptyLang!1053) (Union!1053 (regOne!2619 Regex!1053) (regTwo!2619 Regex!1053)) )
))
(declare-datatypes ((String!5335 0))(
  ( (String!5336 (value!27941 String)) )
))
(declare-datatypes ((Rule!1458 0))(
  ( (Rule!1459 (regex!829 Regex!1053) (tag!1079 String!5335) (isSeparator!829 Bool) (transformation!829 TokenValueInjection!1474)) )
))
(declare-datatypes ((List!4300 0))(
  ( (Nil!4290) (Cons!4290 (h!9687 Rule!1458) (t!69306 List!4300)) )
))
(declare-fun rules!1920 () List!4300)

(get-info :version)

(assert (= (and b!437344 ((_ is Cons!4290) rules!1920)) b!437360))

(declare-fun order!3709 () Int)

(declare-fun order!3711 () Int)

(declare-fun dynLambda!2548 (Int Int) Int)

(declare-fun dynLambda!2549 (Int Int) Int)

(assert (=> b!437362 (< (dynLambda!2548 order!3709 (toValue!1636 (transformation!829 (h!9687 rules!1920)))) (dynLambda!2549 order!3711 lambda!12680))))

(declare-fun order!3713 () Int)

(declare-fun dynLambda!2550 (Int Int) Int)

(assert (=> b!437362 (< (dynLambda!2550 order!3713 (toChars!1495 (transformation!829 (h!9687 rules!1920)))) (dynLambda!2549 order!3711 lambda!12680))))

(assert (=> b!437344 true))

(declare-fun b!437301 () Bool)

(declare-fun res!193686 () Bool)

(declare-fun e!267049 () Bool)

(assert (=> b!437301 (=> (not res!193686) (not e!267049))))

(declare-datatypes ((Token!1402 0))(
  ( (Token!1403 (value!27942 TokenValue!851) (rule!1504 Rule!1458) (size!3518 Int) (originalCharacters!872 List!4299)) )
))
(declare-datatypes ((List!4301 0))(
  ( (Nil!4291) (Cons!4291 (h!9688 Token!1402) (t!69307 List!4301)) )
))
(declare-datatypes ((IArray!2963 0))(
  ( (IArray!2964 (innerList!1539 List!4301)) )
))
(declare-datatypes ((Conc!1481 0))(
  ( (Node!1481 (left!3594 Conc!1481) (right!3924 Conc!1481) (csize!3192 Int) (cheight!1692 Int)) (Leaf!2235 (xs!4112 IArray!2963) (csize!3193 Int)) (Empty!1481) )
))
(declare-datatypes ((BalanceConc!2970 0))(
  ( (BalanceConc!2971 (c!88660 Conc!1481)) )
))
(declare-datatypes ((tuple2!5146 0))(
  ( (tuple2!5147 (_1!2789 BalanceConc!2970) (_2!2789 BalanceConc!2968)) )
))
(declare-fun lt!192063 () tuple2!5146)

(declare-fun lt!192058 () Token!1402)

(declare-fun apply!1066 (BalanceConc!2970 Int) Token!1402)

(assert (=> b!437301 (= res!193686 (= (apply!1066 (_1!2789 lt!192063) 0) lt!192058))))

(declare-fun lt!192071 () List!4299)

(declare-fun lt!192074 () List!4299)

(declare-fun lt!192051 () List!4299)

(declare-fun b!437303 () Bool)

(declare-fun e!267050 () Bool)

(declare-fun ++!1234 (List!4299 List!4299) List!4299)

(assert (=> b!437303 (= e!267050 (not (= lt!192074 (++!1234 lt!192071 lt!192051))))))

(declare-fun b!437304 () Bool)

(declare-fun e!267051 () Bool)

(declare-fun e!267058 () Bool)

(declare-fun tp!123907 () Bool)

(assert (=> b!437304 (= e!267051 (and e!267058 tp!123907))))

(declare-fun b!437305 () Bool)

(declare-datatypes ((Unit!7553 0))(
  ( (Unit!7554) )
))
(declare-fun e!267044 () Unit!7553)

(declare-fun Unit!7555 () Unit!7553)

(assert (=> b!437305 (= e!267044 Unit!7555)))

(assert (=> b!437305 false))

(declare-fun b!437306 () Bool)

(declare-fun e!267038 () Unit!7553)

(declare-fun Unit!7556 () Unit!7553)

(assert (=> b!437306 (= e!267038 Unit!7556)))

(declare-fun separatorToken!170 () Token!1402)

(declare-fun lt!192077 () Unit!7553)

(declare-fun lt!192064 () C!3028)

(declare-datatypes ((LexerInterface!715 0))(
  ( (LexerInterfaceExt!712 (__x!3190 Int)) (Lexer!713) )
))
(declare-fun thiss!17480 () LexerInterface!715)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!88 (LexerInterface!715 List!4300 List!4300 Rule!1458 Rule!1458 C!3028) Unit!7553)

(assert (=> b!437306 (= lt!192077 (lemmaSepRuleNotContainsCharContainedInANonSepRule!88 thiss!17480 rules!1920 rules!1920 (rule!1504 lt!192058) (rule!1504 separatorToken!170) lt!192064))))

(assert (=> b!437306 false))

(declare-fun b!437307 () Bool)

(declare-fun res!193694 () Bool)

(declare-fun e!267027 () Bool)

(assert (=> b!437307 (=> (not res!193694) (not e!267027))))

(assert (=> b!437307 (= res!193694 (isSeparator!829 (rule!1504 separatorToken!170)))))

(declare-fun b!437308 () Bool)

(declare-fun res!193680 () Bool)

(declare-fun e!267056 () Bool)

(assert (=> b!437308 (=> res!193680 e!267056)))

(declare-fun isEmpty!3190 (BalanceConc!2970) Bool)

(declare-fun lex!507 (LexerInterface!715 List!4300 BalanceConc!2968) tuple2!5146)

(declare-fun seqFromList!1023 (List!4299) BalanceConc!2968)

(assert (=> b!437308 (= res!193680 (isEmpty!3190 (_1!2789 (lex!507 thiss!17480 rules!1920 (seqFromList!1023 lt!192071)))))))

(declare-fun b!437309 () Bool)

(declare-fun res!193710 () Bool)

(assert (=> b!437309 (=> (not res!193710) (not e!267027))))

(declare-fun rulesProduceIndividualToken!464 (LexerInterface!715 List!4300 Token!1402) Bool)

(assert (=> b!437309 (= res!193710 (rulesProduceIndividualToken!464 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!437310 () Bool)

(declare-fun e!267043 () Bool)

(declare-fun e!267026 () Bool)

(assert (=> b!437310 (= e!267043 e!267026)))

(declare-fun res!193707 () Bool)

(assert (=> b!437310 (=> (not res!193707) (not e!267026))))

(declare-datatypes ((tuple2!5148 0))(
  ( (tuple2!5149 (_1!2790 Token!1402) (_2!2790 List!4299)) )
))
(declare-datatypes ((Option!1069 0))(
  ( (None!1068) (Some!1068 (v!15333 tuple2!5148)) )
))
(declare-fun lt!192041 () Option!1069)

(declare-fun isDefined!908 (Option!1069) Bool)

(assert (=> b!437310 (= res!193707 (isDefined!908 lt!192041))))

(declare-fun maxPrefix!431 (LexerInterface!715 List!4300 List!4299) Option!1069)

(assert (=> b!437310 (= lt!192041 (maxPrefix!431 thiss!17480 rules!1920 lt!192074))))

(declare-fun b!437311 () Bool)

(declare-fun res!193688 () Bool)

(declare-fun e!267055 () Bool)

(assert (=> b!437311 (=> (not res!193688) (not e!267055))))

(declare-fun lt!192076 () List!4299)

(declare-fun list!1895 (BalanceConc!2968) List!4299)

(assert (=> b!437311 (= res!193688 (= (list!1895 (seqFromList!1023 lt!192074)) lt!192076))))

(declare-fun e!267031 () Bool)

(declare-fun e!267054 () Bool)

(declare-fun tokens!465 () List!4301)

(declare-fun b!437312 () Bool)

(declare-fun tp!123912 () Bool)

(declare-fun inv!21 (TokenValue!851) Bool)

(assert (=> b!437312 (= e!267054 (and (inv!21 (value!27942 (h!9688 tokens!465))) e!267031 tp!123912))))

(declare-fun b!437313 () Bool)

(declare-fun res!193697 () Bool)

(declare-fun e!267040 () Bool)

(assert (=> b!437313 (=> (not res!193697) (not e!267040))))

(declare-fun lt!192072 () tuple2!5148)

(declare-fun isEmpty!3191 (List!4299) Bool)

(assert (=> b!437313 (= res!193697 (isEmpty!3191 (_2!2790 lt!192072)))))

(declare-fun b!437314 () Bool)

(declare-fun res!193702 () Bool)

(assert (=> b!437314 (=> (not res!193702) (not e!267027))))

(assert (=> b!437314 (= res!193702 ((_ is Cons!4291) tokens!465))))

(declare-fun b!437315 () Bool)

(declare-fun res!193699 () Bool)

(assert (=> b!437315 (=> (not res!193699) (not e!267027))))

(declare-fun sepAndNonSepRulesDisjointChars!418 (List!4300 List!4300) Bool)

(assert (=> b!437315 (= res!193699 (sepAndNonSepRulesDisjointChars!418 rules!1920 rules!1920))))

(declare-fun b!437316 () Bool)

(declare-fun e!267024 () Bool)

(declare-fun tp!123911 () Bool)

(declare-fun e!267045 () Bool)

(assert (=> b!437316 (= e!267024 (and (inv!21 (value!27942 separatorToken!170)) e!267045 tp!123911))))

(declare-fun b!437317 () Bool)

(declare-fun tp!123908 () Bool)

(declare-fun e!267036 () Bool)

(declare-fun inv!5352 (String!5335) Bool)

(declare-fun inv!5355 (TokenValueInjection!1474) Bool)

(assert (=> b!437317 (= e!267031 (and tp!123908 (inv!5352 (tag!1079 (rule!1504 (h!9688 tokens!465)))) (inv!5355 (transformation!829 (rule!1504 (h!9688 tokens!465)))) e!267036))))

(declare-fun e!267025 () Bool)

(assert (=> b!437302 (= e!267025 (and tp!123910 tp!123913))))

(declare-fun res!193681 () Bool)

(declare-fun e!267035 () Bool)

(assert (=> start!41234 (=> (not res!193681) (not e!267035))))

(assert (=> start!41234 (= res!193681 ((_ is Lexer!713) thiss!17480))))

(assert (=> start!41234 e!267035))

(assert (=> start!41234 true))

(assert (=> start!41234 e!267051))

(declare-fun inv!5356 (Token!1402) Bool)

(assert (=> start!41234 (and (inv!5356 separatorToken!170) e!267024)))

(declare-fun e!267060 () Bool)

(assert (=> start!41234 e!267060))

(declare-fun b!437318 () Bool)

(declare-fun matchR!371 (Regex!1053 List!4299) Bool)

(assert (=> b!437318 (= e!267040 (matchR!371 (regex!829 (rule!1504 (h!9688 tokens!465))) lt!192071))))

(declare-fun b!437319 () Bool)

(declare-fun isEmpty!3192 (BalanceConc!2968) Bool)

(assert (=> b!437319 (= e!267049 (isEmpty!3192 (_2!2789 lt!192063)))))

(declare-fun b!437320 () Bool)

(declare-fun e!267039 () Bool)

(declare-fun lt!192037 () tuple2!5146)

(assert (=> b!437320 (= e!267039 (isEmpty!3192 (_2!2789 lt!192037)))))

(declare-fun b!437321 () Bool)

(declare-fun res!193696 () Bool)

(assert (=> b!437321 (=> (not res!193696) (not e!267039))))

(assert (=> b!437321 (= res!193696 (= (apply!1066 (_1!2789 lt!192037) 0) separatorToken!170))))

(declare-fun b!437322 () Bool)

(declare-fun e!267032 () Bool)

(declare-fun e!267048 () Bool)

(assert (=> b!437322 (= e!267032 e!267048)))

(declare-fun res!193687 () Bool)

(assert (=> b!437322 (=> res!193687 e!267048)))

(declare-fun lt!192070 () Bool)

(assert (=> b!437322 (= res!193687 (not lt!192070))))

(assert (=> b!437322 e!267040))

(declare-fun res!193701 () Bool)

(assert (=> b!437322 (=> (not res!193701) (not e!267040))))

(assert (=> b!437322 (= res!193701 (= (_1!2790 lt!192072) (h!9688 tokens!465)))))

(declare-fun lt!192079 () Option!1069)

(declare-fun get!1541 (Option!1069) tuple2!5148)

(assert (=> b!437322 (= lt!192072 (get!1541 lt!192079))))

(assert (=> b!437322 (isDefined!908 lt!192079)))

(assert (=> b!437322 (= lt!192079 (maxPrefix!431 thiss!17480 rules!1920 lt!192071))))

(declare-fun b!437323 () Bool)

(declare-fun e!267052 () Bool)

(assert (=> b!437323 (= e!267052 false)))

(declare-fun res!193705 () Bool)

(assert (=> b!437324 (=> (not res!193705) (not e!267027))))

(declare-fun forall!1230 (List!4301 Int) Bool)

(assert (=> b!437324 (= res!193705 (forall!1230 tokens!465 lambda!12679))))

(declare-fun b!437325 () Bool)

(declare-fun e!267042 () Unit!7553)

(declare-fun Unit!7557 () Unit!7553)

(assert (=> b!437325 (= e!267042 Unit!7557)))

(declare-fun lt!192066 () List!4299)

(declare-fun lt!192081 () C!3028)

(declare-fun lt!192048 () Unit!7553)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!108 (Regex!1053 List!4299 C!3028) Unit!7553)

(assert (=> b!437325 (= lt!192048 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!108 (regex!829 (rule!1504 lt!192058)) lt!192066 lt!192081))))

(declare-fun res!193712 () Bool)

(assert (=> b!437325 (= res!193712 (not (matchR!371 (regex!829 (rule!1504 lt!192058)) lt!192066)))))

(assert (=> b!437325 (=> (not res!193712) (not e!267052))))

(assert (=> b!437325 e!267052))

(declare-fun b!437326 () Bool)

(declare-fun tp!123917 () Bool)

(assert (=> b!437326 (= e!267058 (and tp!123917 (inv!5352 (tag!1079 (h!9687 rules!1920))) (inv!5355 (transformation!829 (h!9687 rules!1920))) e!267025))))

(declare-fun b!437327 () Bool)

(declare-fun e!267061 () Bool)

(assert (=> b!437327 (= e!267061 e!267056)))

(declare-fun res!193708 () Bool)

(assert (=> b!437327 (=> res!193708 e!267056)))

(declare-fun lt!192044 () List!4299)

(declare-fun lt!192045 () List!4299)

(assert (=> b!437327 (= res!193708 (or (not (= lt!192045 lt!192044)) (not (= lt!192044 lt!192071)) (not (= lt!192045 lt!192071))))))

(declare-fun printList!389 (LexerInterface!715 List!4301) List!4299)

(assert (=> b!437327 (= lt!192044 (printList!389 thiss!17480 (Cons!4291 (h!9688 tokens!465) Nil!4291)))))

(declare-fun lt!192047 () BalanceConc!2968)

(assert (=> b!437327 (= lt!192045 (list!1895 lt!192047))))

(declare-fun lt!192082 () BalanceConc!2970)

(declare-fun printTailRec!401 (LexerInterface!715 BalanceConc!2970 Int BalanceConc!2968) BalanceConc!2968)

(assert (=> b!437327 (= lt!192047 (printTailRec!401 thiss!17480 lt!192082 0 (BalanceConc!2969 Empty!1480)))))

(declare-fun print!440 (LexerInterface!715 BalanceConc!2970) BalanceConc!2968)

(assert (=> b!437327 (= lt!192047 (print!440 thiss!17480 lt!192082))))

(declare-fun singletonSeq!375 (Token!1402) BalanceConc!2970)

(assert (=> b!437327 (= lt!192082 (singletonSeq!375 (h!9688 tokens!465)))))

(declare-fun b!437328 () Bool)

(declare-fun e!267033 () Bool)

(declare-fun e!267059 () Bool)

(assert (=> b!437328 (= e!267033 e!267059)))

(declare-fun res!193706 () Bool)

(assert (=> b!437328 (=> (not res!193706) (not e!267059))))

(declare-fun lt!192057 () Rule!1458)

(declare-fun lt!192056 () List!4299)

(assert (=> b!437328 (= res!193706 (matchR!371 (regex!829 lt!192057) lt!192056))))

(declare-datatypes ((Option!1070 0))(
  ( (None!1069) (Some!1069 (v!15334 Rule!1458)) )
))
(declare-fun lt!192075 () Option!1070)

(declare-fun get!1542 (Option!1070) Rule!1458)

(assert (=> b!437328 (= lt!192057 (get!1542 lt!192075))))

(declare-fun b!437329 () Bool)

(declare-fun res!193679 () Bool)

(assert (=> b!437329 (=> res!193679 e!267056)))

(assert (=> b!437329 (= res!193679 (not (rulesProduceIndividualToken!464 thiss!17480 rules!1920 (h!9688 tokens!465))))))

(declare-fun b!437330 () Bool)

(declare-fun Unit!7558 () Unit!7553)

(assert (=> b!437330 (= e!267038 Unit!7558)))

(declare-fun b!437331 () Bool)

(declare-fun res!193703 () Bool)

(assert (=> b!437331 (=> (not res!193703) (not e!267035))))

(declare-fun isEmpty!3193 (List!4300) Bool)

(assert (=> b!437331 (= res!193703 (not (isEmpty!3193 rules!1920)))))

(declare-fun b!437332 () Bool)

(declare-fun res!193700 () Bool)

(declare-fun e!267034 () Bool)

(assert (=> b!437332 (=> res!193700 e!267034)))

(declare-fun contains!934 (List!4300 Rule!1458) Bool)

(assert (=> b!437332 (= res!193700 (not (contains!934 rules!1920 (rule!1504 lt!192058))))))

(declare-fun b!437333 () Bool)

(declare-fun head!1059 (List!4301) Token!1402)

(assert (=> b!437333 (= e!267026 (= (_1!2790 (get!1541 lt!192041)) (head!1059 tokens!465)))))

(declare-fun b!437334 () Bool)

(assert (=> b!437334 (= e!267059 (= (rule!1504 separatorToken!170) lt!192057))))

(declare-fun b!437335 () Bool)

(declare-fun Unit!7559 () Unit!7553)

(assert (=> b!437335 (= e!267044 Unit!7559)))

(declare-fun e!267046 () Bool)

(assert (=> b!437336 (= e!267046 (and tp!123914 tp!123909))))

(declare-fun b!437337 () Bool)

(declare-fun tp!123919 () Bool)

(assert (=> b!437337 (= e!267060 (and (inv!5356 (h!9688 tokens!465)) e!267054 tp!123919))))

(declare-fun b!437338 () Bool)

(assert (=> b!437338 (= e!267027 e!267055)))

(declare-fun res!193693 () Bool)

(assert (=> b!437338 (=> (not res!193693) (not e!267055))))

(assert (=> b!437338 (= res!193693 (= lt!192074 lt!192076))))

(declare-fun lt!192046 () BalanceConc!2970)

(declare-fun printWithSeparatorTokenWhenNeededRec!388 (LexerInterface!715 List!4300 BalanceConc!2970 Token!1402 Int) BalanceConc!2968)

(assert (=> b!437338 (= lt!192076 (list!1895 (printWithSeparatorTokenWhenNeededRec!388 thiss!17480 rules!1920 lt!192046 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!396 (LexerInterface!715 List!4300 List!4301 Token!1402) List!4299)

(assert (=> b!437338 (= lt!192074 (printWithSeparatorTokenWhenNeededList!396 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!123915 () Bool)

(declare-fun b!437339 () Bool)

(assert (=> b!437339 (= e!267045 (and tp!123915 (inv!5352 (tag!1079 (rule!1504 separatorToken!170))) (inv!5355 (transformation!829 (rule!1504 separatorToken!170))) e!267046))))

(declare-fun b!437340 () Bool)

(assert (=> b!437340 (= e!267034 true)))

(declare-fun lt!192061 () Option!1069)

(assert (=> b!437340 (= lt!192061 (maxPrefix!431 thiss!17480 rules!1920 lt!192056))))

(declare-fun b!437341 () Bool)

(declare-fun res!193698 () Bool)

(assert (=> b!437341 (=> (not res!193698) (not e!267035))))

(declare-fun rulesInvariant!681 (LexerInterface!715 List!4300) Bool)

(assert (=> b!437341 (= res!193698 (rulesInvariant!681 thiss!17480 rules!1920))))

(declare-fun b!437342 () Bool)

(declare-fun e!267030 () Bool)

(declare-fun lt!192052 () Rule!1458)

(assert (=> b!437342 (= e!267030 (= (rule!1504 lt!192058) lt!192052))))

(declare-fun b!437343 () Bool)

(declare-fun e!267047 () Bool)

(assert (=> b!437343 (= e!267055 (not e!267047))))

(declare-fun res!193695 () Bool)

(assert (=> b!437343 (=> res!193695 e!267047)))

(declare-fun seqFromList!1024 (List!4301) BalanceConc!2970)

(assert (=> b!437343 (= res!193695 (not (= lt!192051 (list!1895 (printWithSeparatorTokenWhenNeededRec!388 thiss!17480 rules!1920 (seqFromList!1024 (t!69307 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!192065 () List!4299)

(declare-fun lt!192068 () List!4299)

(assert (=> b!437343 (= lt!192065 lt!192068)))

(declare-fun lt!192050 () List!4299)

(assert (=> b!437343 (= lt!192068 (++!1234 lt!192071 lt!192050))))

(assert (=> b!437343 (= lt!192065 (++!1234 (++!1234 lt!192071 lt!192056) lt!192051))))

(declare-fun lt!192069 () Unit!7553)

(declare-fun lemmaConcatAssociativity!560 (List!4299 List!4299 List!4299) Unit!7553)

(assert (=> b!437343 (= lt!192069 (lemmaConcatAssociativity!560 lt!192071 lt!192056 lt!192051))))

(declare-fun charsOf!472 (Token!1402) BalanceConc!2968)

(assert (=> b!437343 (= lt!192071 (list!1895 (charsOf!472 (h!9688 tokens!465))))))

(assert (=> b!437343 (= lt!192050 (++!1234 lt!192056 lt!192051))))

(assert (=> b!437343 (= lt!192051 (printWithSeparatorTokenWhenNeededList!396 thiss!17480 rules!1920 (t!69307 tokens!465) separatorToken!170))))

(assert (=> b!437343 (= lt!192056 (list!1895 (charsOf!472 separatorToken!170)))))

(assert (=> b!437344 (= e!267056 e!267032)))

(declare-fun res!193691 () Bool)

(assert (=> b!437344 (=> res!193691 e!267032)))

(declare-datatypes ((tuple2!5150 0))(
  ( (tuple2!5151 (_1!2791 Token!1402) (_2!2791 BalanceConc!2968)) )
))
(declare-datatypes ((Option!1071 0))(
  ( (None!1070) (Some!1070 (v!15335 tuple2!5150)) )
))
(declare-fun isDefined!909 (Option!1071) Bool)

(declare-fun maxPrefixZipperSequence!394 (LexerInterface!715 List!4300 BalanceConc!2968) Option!1071)

(assert (=> b!437344 (= res!193691 (not (isDefined!909 (maxPrefixZipperSequence!394 thiss!17480 rules!1920 (seqFromList!1023 (originalCharacters!872 (h!9688 tokens!465)))))))))

(declare-fun lt!192035 () Unit!7553)

(declare-fun forallContained!382 (List!4301 Int Token!1402) Unit!7553)

(assert (=> b!437344 (= lt!192035 (forallContained!382 tokens!465 lambda!12680 (h!9688 tokens!465)))))

(assert (=> b!437344 (= lt!192071 (originalCharacters!872 (h!9688 tokens!465)))))

(declare-fun b!437345 () Bool)

(declare-fun res!193685 () Bool)

(assert (=> b!437345 (=> res!193685 e!267034)))

(assert (=> b!437345 (= res!193685 (isSeparator!829 (rule!1504 lt!192058)))))

(declare-fun b!437346 () Bool)

(assert (=> b!437346 (= e!267035 e!267027)))

(declare-fun res!193690 () Bool)

(assert (=> b!437346 (=> (not res!193690) (not e!267027))))

(declare-fun rulesProduceEachTokenIndividually!507 (LexerInterface!715 List!4300 BalanceConc!2970) Bool)

(assert (=> b!437346 (= res!193690 (rulesProduceEachTokenIndividually!507 thiss!17480 rules!1920 lt!192046))))

(assert (=> b!437346 (= lt!192046 (seqFromList!1024 tokens!465))))

(declare-fun b!437347 () Bool)

(assert (=> b!437347 (= e!267048 e!267034)))

(declare-fun res!193689 () Bool)

(assert (=> b!437347 (=> res!193689 e!267034)))

(assert (=> b!437347 (= res!193689 (not (contains!934 rules!1920 (rule!1504 separatorToken!170))))))

(declare-fun lt!192073 () Unit!7553)

(assert (=> b!437347 (= lt!192073 e!267038)))

(declare-fun c!88656 () Bool)

(declare-fun contains!935 (List!4299 C!3028) Bool)

(declare-fun usedCharacters!130 (Regex!1053) List!4299)

(assert (=> b!437347 (= c!88656 (contains!935 (usedCharacters!130 (regex!829 (rule!1504 separatorToken!170))) lt!192064))))

(declare-fun head!1060 (List!4299) C!3028)

(assert (=> b!437347 (= lt!192064 (head!1060 lt!192051))))

(declare-fun lt!192042 () Unit!7553)

(assert (=> b!437347 (= lt!192042 e!267042)))

(declare-fun c!88655 () Bool)

(assert (=> b!437347 (= c!88655 (not (contains!935 (usedCharacters!130 (regex!829 (rule!1504 lt!192058))) lt!192081)))))

(assert (=> b!437347 (= lt!192081 (head!1060 lt!192066))))

(declare-fun e!267028 () Bool)

(assert (=> b!437347 e!267028))

(declare-fun res!193692 () Bool)

(assert (=> b!437347 (=> (not res!193692) (not e!267028))))

(declare-fun lt!192049 () Option!1070)

(declare-fun isDefined!910 (Option!1070) Bool)

(assert (=> b!437347 (= res!193692 (isDefined!910 lt!192049))))

(declare-fun getRuleFromTag!188 (LexerInterface!715 List!4300 String!5335) Option!1070)

(assert (=> b!437347 (= lt!192049 (getRuleFromTag!188 thiss!17480 rules!1920 (tag!1079 (rule!1504 lt!192058))))))

(declare-fun lt!192040 () Unit!7553)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!188 (LexerInterface!715 List!4300 List!4299 Token!1402) Unit!7553)

(assert (=> b!437347 (= lt!192040 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!188 thiss!17480 rules!1920 lt!192066 lt!192058))))

(assert (=> b!437347 (= lt!192066 (list!1895 (charsOf!472 lt!192058)))))

(declare-fun lt!192036 () Unit!7553)

(assert (=> b!437347 (= lt!192036 (forallContained!382 tokens!465 lambda!12680 lt!192058))))

(assert (=> b!437347 e!267049))

(declare-fun res!193704 () Bool)

(assert (=> b!437347 (=> (not res!193704) (not e!267049))))

(declare-fun size!3519 (BalanceConc!2970) Int)

(assert (=> b!437347 (= res!193704 (= (size!3519 (_1!2789 lt!192063)) 1))))

(declare-fun lt!192055 () BalanceConc!2968)

(assert (=> b!437347 (= lt!192063 (lex!507 thiss!17480 rules!1920 lt!192055))))

(declare-fun lt!192062 () BalanceConc!2970)

(assert (=> b!437347 (= lt!192055 (printTailRec!401 thiss!17480 lt!192062 0 (BalanceConc!2969 Empty!1480)))))

(assert (=> b!437347 (= lt!192055 (print!440 thiss!17480 lt!192062))))

(assert (=> b!437347 (= lt!192062 (singletonSeq!375 lt!192058))))

(assert (=> b!437347 e!267033))

(declare-fun res!193684 () Bool)

(assert (=> b!437347 (=> (not res!193684) (not e!267033))))

(assert (=> b!437347 (= res!193684 (isDefined!910 lt!192075))))

(assert (=> b!437347 (= lt!192075 (getRuleFromTag!188 thiss!17480 rules!1920 (tag!1079 (rule!1504 separatorToken!170))))))

(declare-fun lt!192053 () Unit!7553)

(assert (=> b!437347 (= lt!192053 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!188 thiss!17480 rules!1920 lt!192056 separatorToken!170))))

(assert (=> b!437347 e!267039))

(declare-fun res!193682 () Bool)

(assert (=> b!437347 (=> (not res!193682) (not e!267039))))

(assert (=> b!437347 (= res!193682 (= (size!3519 (_1!2789 lt!192037)) 1))))

(declare-fun lt!192038 () BalanceConc!2968)

(assert (=> b!437347 (= lt!192037 (lex!507 thiss!17480 rules!1920 lt!192038))))

(declare-fun lt!192043 () BalanceConc!2970)

(assert (=> b!437347 (= lt!192038 (printTailRec!401 thiss!17480 lt!192043 0 (BalanceConc!2969 Empty!1480)))))

(assert (=> b!437347 (= lt!192038 (print!440 thiss!17480 lt!192043))))

(assert (=> b!437347 (= lt!192043 (singletonSeq!375 separatorToken!170))))

(assert (=> b!437347 (rulesProduceIndividualToken!464 thiss!17480 rules!1920 lt!192058)))

(declare-fun lt!192060 () Unit!7553)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!178 (LexerInterface!715 List!4300 List!4301 Token!1402) Unit!7553)

(assert (=> b!437347 (= lt!192060 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!178 thiss!17480 rules!1920 tokens!465 lt!192058))))

(assert (=> b!437347 (= lt!192058 (head!1059 (t!69307 tokens!465)))))

(declare-fun lt!192054 () Unit!7553)

(assert (=> b!437347 (= lt!192054 e!267044)))

(declare-fun c!88657 () Bool)

(declare-fun isEmpty!3194 (List!4301) Bool)

(assert (=> b!437347 (= c!88657 (isEmpty!3194 (t!69307 tokens!465)))))

(declare-fun lt!192067 () Option!1069)

(assert (=> b!437347 (= lt!192067 (maxPrefix!431 thiss!17480 rules!1920 lt!192050))))

(declare-fun lt!192039 () tuple2!5148)

(assert (=> b!437347 (= lt!192050 (_2!2790 lt!192039))))

(declare-fun lt!192080 () Unit!7553)

(declare-fun lemmaSamePrefixThenSameSuffix!274 (List!4299 List!4299 List!4299 List!4299 List!4299) Unit!7553)

(assert (=> b!437347 (= lt!192080 (lemmaSamePrefixThenSameSuffix!274 lt!192071 lt!192050 lt!192071 (_2!2790 lt!192039) lt!192074))))

(assert (=> b!437347 (= lt!192039 (get!1541 (maxPrefix!431 thiss!17480 rules!1920 lt!192074)))))

(declare-fun isPrefix!489 (List!4299 List!4299) Bool)

(assert (=> b!437347 (isPrefix!489 lt!192071 lt!192068)))

(declare-fun lt!192059 () Unit!7553)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!380 (List!4299 List!4299) Unit!7553)

(assert (=> b!437347 (= lt!192059 (lemmaConcatTwoListThenFirstIsPrefix!380 lt!192071 lt!192050))))

(assert (=> b!437347 e!267043))

(declare-fun res!193709 () Bool)

(assert (=> b!437347 (=> res!193709 e!267043)))

(assert (=> b!437347 (= res!193709 (isEmpty!3194 tokens!465))))

(declare-fun lt!192078 () Unit!7553)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!236 (LexerInterface!715 List!4300 List!4301 Token!1402) Unit!7553)

(assert (=> b!437347 (= lt!192078 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!236 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!437348 () Bool)

(declare-fun Unit!7560 () Unit!7553)

(assert (=> b!437348 (= e!267042 Unit!7560)))

(declare-fun b!437349 () Bool)

(assert (=> b!437349 (= e!267047 e!267061)))

(declare-fun res!193711 () Bool)

(assert (=> b!437349 (=> res!193711 e!267061)))

(assert (=> b!437349 (= res!193711 e!267050)))

(declare-fun res!193683 () Bool)

(assert (=> b!437349 (=> (not res!193683) (not e!267050))))

(assert (=> b!437349 (= res!193683 (not lt!192070))))

(assert (=> b!437349 (= lt!192070 (= lt!192074 lt!192068))))

(declare-fun b!437350 () Bool)

(assert (=> b!437350 (= e!267028 e!267030)))

(declare-fun res!193713 () Bool)

(assert (=> b!437350 (=> (not res!193713) (not e!267030))))

(assert (=> b!437350 (= res!193713 (matchR!371 (regex!829 lt!192052) lt!192066))))

(assert (=> b!437350 (= lt!192052 (get!1542 lt!192049))))

(assert (=> b!437351 (= e!267036 (and tp!123916 tp!123918))))

(assert (= (and start!41234 res!193681) b!437331))

(assert (= (and b!437331 res!193703) b!437341))

(assert (= (and b!437341 res!193698) b!437346))

(assert (= (and b!437346 res!193690) b!437309))

(assert (= (and b!437309 res!193710) b!437307))

(assert (= (and b!437307 res!193694) b!437324))

(assert (= (and b!437324 res!193705) b!437315))

(assert (= (and b!437315 res!193699) b!437314))

(assert (= (and b!437314 res!193702) b!437338))

(assert (= (and b!437338 res!193693) b!437311))

(assert (= (and b!437311 res!193688) b!437343))

(assert (= (and b!437343 (not res!193695)) b!437349))

(assert (= (and b!437349 res!193683) b!437303))

(assert (= (and b!437349 (not res!193711)) b!437327))

(assert (= (and b!437327 (not res!193708)) b!437329))

(assert (= (and b!437329 (not res!193679)) b!437308))

(assert (= (and b!437308 (not res!193680)) b!437344))

(assert (= (and b!437344 (not res!193691)) b!437322))

(assert (= (and b!437322 res!193701) b!437313))

(assert (= (and b!437313 res!193697) b!437318))

(assert (= (and b!437322 (not res!193687)) b!437347))

(assert (= (and b!437347 (not res!193709)) b!437310))

(assert (= (and b!437310 res!193707) b!437333))

(assert (= (and b!437347 c!88657) b!437305))

(assert (= (and b!437347 (not c!88657)) b!437335))

(assert (= (and b!437347 res!193682) b!437321))

(assert (= (and b!437321 res!193696) b!437320))

(assert (= (and b!437347 res!193684) b!437328))

(assert (= (and b!437328 res!193706) b!437334))

(assert (= (and b!437347 res!193704) b!437301))

(assert (= (and b!437301 res!193686) b!437319))

(assert (= (and b!437347 res!193692) b!437350))

(assert (= (and b!437350 res!193713) b!437342))

(assert (= (and b!437347 c!88655) b!437325))

(assert (= (and b!437347 (not c!88655)) b!437348))

(assert (= (and b!437325 res!193712) b!437323))

(assert (= (and b!437347 c!88656) b!437306))

(assert (= (and b!437347 (not c!88656)) b!437330))

(assert (= (and b!437347 (not res!193689)) b!437332))

(assert (= (and b!437332 (not res!193700)) b!437345))

(assert (= (and b!437345 (not res!193685)) b!437340))

(assert (= b!437326 b!437302))

(assert (= b!437304 b!437326))

(assert (= (and start!41234 ((_ is Cons!4290) rules!1920)) b!437304))

(assert (= b!437339 b!437336))

(assert (= b!437316 b!437339))

(assert (= start!41234 b!437316))

(assert (= b!437317 b!437351))

(assert (= b!437312 b!437317))

(assert (= b!437337 b!437312))

(assert (= (and start!41234 ((_ is Cons!4291) tokens!465)) b!437337))

(declare-fun m!688443 () Bool)

(assert (=> b!437326 m!688443))

(declare-fun m!688445 () Bool)

(assert (=> b!437326 m!688445))

(declare-fun m!688447 () Bool)

(assert (=> b!437322 m!688447))

(declare-fun m!688449 () Bool)

(assert (=> b!437322 m!688449))

(declare-fun m!688451 () Bool)

(assert (=> b!437322 m!688451))

(declare-fun m!688453 () Bool)

(assert (=> b!437327 m!688453))

(declare-fun m!688455 () Bool)

(assert (=> b!437327 m!688455))

(declare-fun m!688457 () Bool)

(assert (=> b!437327 m!688457))

(declare-fun m!688459 () Bool)

(assert (=> b!437327 m!688459))

(declare-fun m!688461 () Bool)

(assert (=> b!437327 m!688461))

(declare-fun m!688463 () Bool)

(assert (=> b!437317 m!688463))

(declare-fun m!688465 () Bool)

(assert (=> b!437317 m!688465))

(declare-fun m!688467 () Bool)

(assert (=> b!437309 m!688467))

(declare-fun m!688469 () Bool)

(assert (=> b!437312 m!688469))

(declare-fun m!688471 () Bool)

(assert (=> b!437339 m!688471))

(declare-fun m!688473 () Bool)

(assert (=> b!437339 m!688473))

(declare-fun m!688475 () Bool)

(assert (=> b!437337 m!688475))

(declare-fun m!688477 () Bool)

(assert (=> b!437316 m!688477))

(declare-fun m!688479 () Bool)

(assert (=> b!437343 m!688479))

(declare-fun m!688481 () Bool)

(assert (=> b!437343 m!688481))

(declare-fun m!688483 () Bool)

(assert (=> b!437343 m!688483))

(declare-fun m!688485 () Bool)

(assert (=> b!437343 m!688485))

(declare-fun m!688487 () Bool)

(assert (=> b!437343 m!688487))

(assert (=> b!437343 m!688485))

(declare-fun m!688489 () Bool)

(assert (=> b!437343 m!688489))

(declare-fun m!688491 () Bool)

(assert (=> b!437343 m!688491))

(assert (=> b!437343 m!688481))

(declare-fun m!688493 () Bool)

(assert (=> b!437343 m!688493))

(assert (=> b!437343 m!688479))

(declare-fun m!688495 () Bool)

(assert (=> b!437343 m!688495))

(declare-fun m!688497 () Bool)

(assert (=> b!437343 m!688497))

(declare-fun m!688499 () Bool)

(assert (=> b!437343 m!688499))

(assert (=> b!437343 m!688497))

(declare-fun m!688501 () Bool)

(assert (=> b!437343 m!688501))

(assert (=> b!437343 m!688495))

(declare-fun m!688503 () Bool)

(assert (=> b!437343 m!688503))

(declare-fun m!688505 () Bool)

(assert (=> b!437311 m!688505))

(assert (=> b!437311 m!688505))

(declare-fun m!688507 () Bool)

(assert (=> b!437311 m!688507))

(declare-fun m!688509 () Bool)

(assert (=> b!437319 m!688509))

(declare-fun m!688511 () Bool)

(assert (=> b!437331 m!688511))

(declare-fun m!688513 () Bool)

(assert (=> b!437344 m!688513))

(assert (=> b!437344 m!688513))

(declare-fun m!688515 () Bool)

(assert (=> b!437344 m!688515))

(assert (=> b!437344 m!688515))

(declare-fun m!688517 () Bool)

(assert (=> b!437344 m!688517))

(declare-fun m!688519 () Bool)

(assert (=> b!437344 m!688519))

(declare-fun m!688521 () Bool)

(assert (=> b!437324 m!688521))

(declare-fun m!688523 () Bool)

(assert (=> b!437303 m!688523))

(declare-fun m!688525 () Bool)

(assert (=> b!437320 m!688525))

(declare-fun m!688527 () Bool)

(assert (=> start!41234 m!688527))

(declare-fun m!688529 () Bool)

(assert (=> b!437347 m!688529))

(declare-fun m!688531 () Bool)

(assert (=> b!437347 m!688531))

(declare-fun m!688533 () Bool)

(assert (=> b!437347 m!688533))

(declare-fun m!688535 () Bool)

(assert (=> b!437347 m!688535))

(declare-fun m!688537 () Bool)

(assert (=> b!437347 m!688537))

(declare-fun m!688539 () Bool)

(assert (=> b!437347 m!688539))

(assert (=> b!437347 m!688533))

(declare-fun m!688541 () Bool)

(assert (=> b!437347 m!688541))

(declare-fun m!688543 () Bool)

(assert (=> b!437347 m!688543))

(declare-fun m!688545 () Bool)

(assert (=> b!437347 m!688545))

(declare-fun m!688547 () Bool)

(assert (=> b!437347 m!688547))

(declare-fun m!688549 () Bool)

(assert (=> b!437347 m!688549))

(declare-fun m!688551 () Bool)

(assert (=> b!437347 m!688551))

(declare-fun m!688553 () Bool)

(assert (=> b!437347 m!688553))

(declare-fun m!688555 () Bool)

(assert (=> b!437347 m!688555))

(assert (=> b!437347 m!688547))

(declare-fun m!688557 () Bool)

(assert (=> b!437347 m!688557))

(declare-fun m!688559 () Bool)

(assert (=> b!437347 m!688559))

(declare-fun m!688561 () Bool)

(assert (=> b!437347 m!688561))

(declare-fun m!688563 () Bool)

(assert (=> b!437347 m!688563))

(declare-fun m!688565 () Bool)

(assert (=> b!437347 m!688565))

(declare-fun m!688567 () Bool)

(assert (=> b!437347 m!688567))

(declare-fun m!688569 () Bool)

(assert (=> b!437347 m!688569))

(declare-fun m!688571 () Bool)

(assert (=> b!437347 m!688571))

(declare-fun m!688573 () Bool)

(assert (=> b!437347 m!688573))

(declare-fun m!688575 () Bool)

(assert (=> b!437347 m!688575))

(declare-fun m!688577 () Bool)

(assert (=> b!437347 m!688577))

(declare-fun m!688579 () Bool)

(assert (=> b!437347 m!688579))

(declare-fun m!688581 () Bool)

(assert (=> b!437347 m!688581))

(assert (=> b!437347 m!688575))

(declare-fun m!688583 () Bool)

(assert (=> b!437347 m!688583))

(declare-fun m!688585 () Bool)

(assert (=> b!437347 m!688585))

(declare-fun m!688587 () Bool)

(assert (=> b!437347 m!688587))

(declare-fun m!688589 () Bool)

(assert (=> b!437347 m!688589))

(assert (=> b!437347 m!688537))

(declare-fun m!688591 () Bool)

(assert (=> b!437347 m!688591))

(declare-fun m!688593 () Bool)

(assert (=> b!437347 m!688593))

(declare-fun m!688595 () Bool)

(assert (=> b!437347 m!688595))

(declare-fun m!688597 () Bool)

(assert (=> b!437347 m!688597))

(declare-fun m!688599 () Bool)

(assert (=> b!437347 m!688599))

(declare-fun m!688601 () Bool)

(assert (=> b!437347 m!688601))

(declare-fun m!688603 () Bool)

(assert (=> b!437347 m!688603))

(declare-fun m!688605 () Bool)

(assert (=> b!437333 m!688605))

(declare-fun m!688607 () Bool)

(assert (=> b!437333 m!688607))

(declare-fun m!688609 () Bool)

(assert (=> b!437338 m!688609))

(assert (=> b!437338 m!688609))

(declare-fun m!688611 () Bool)

(assert (=> b!437338 m!688611))

(declare-fun m!688613 () Bool)

(assert (=> b!437338 m!688613))

(declare-fun m!688615 () Bool)

(assert (=> b!437340 m!688615))

(declare-fun m!688617 () Bool)

(assert (=> b!437313 m!688617))

(declare-fun m!688619 () Bool)

(assert (=> b!437310 m!688619))

(assert (=> b!437310 m!688537))

(declare-fun m!688621 () Bool)

(assert (=> b!437350 m!688621))

(declare-fun m!688623 () Bool)

(assert (=> b!437350 m!688623))

(declare-fun m!688625 () Bool)

(assert (=> b!437329 m!688625))

(declare-fun m!688627 () Bool)

(assert (=> b!437325 m!688627))

(declare-fun m!688629 () Bool)

(assert (=> b!437325 m!688629))

(declare-fun m!688631 () Bool)

(assert (=> b!437321 m!688631))

(declare-fun m!688633 () Bool)

(assert (=> b!437318 m!688633))

(declare-fun m!688635 () Bool)

(assert (=> b!437306 m!688635))

(declare-fun m!688637 () Bool)

(assert (=> b!437328 m!688637))

(declare-fun m!688639 () Bool)

(assert (=> b!437328 m!688639))

(declare-fun m!688641 () Bool)

(assert (=> b!437315 m!688641))

(declare-fun m!688643 () Bool)

(assert (=> b!437301 m!688643))

(declare-fun m!688645 () Bool)

(assert (=> b!437332 m!688645))

(declare-fun m!688647 () Bool)

(assert (=> b!437308 m!688647))

(assert (=> b!437308 m!688647))

(declare-fun m!688649 () Bool)

(assert (=> b!437308 m!688649))

(declare-fun m!688651 () Bool)

(assert (=> b!437308 m!688651))

(declare-fun m!688653 () Bool)

(assert (=> b!437341 m!688653))

(declare-fun m!688655 () Bool)

(assert (=> b!437346 m!688655))

(declare-fun m!688657 () Bool)

(assert (=> b!437346 m!688657))

(check-sat b_and!47191 (not start!41234) (not b!437301) (not b!437326) (not b!437322) (not b!437309) (not b!437327) b_and!47193 (not b_next!12187) (not b!437310) (not b_next!12185) (not b_next!12189) (not b!437350) b_and!47199 (not b!437311) (not b!437319) (not b!437316) (not b!437308) (not b!437304) (not b_next!12195) (not b!437313) (not b!437331) (not b!437346) (not b!437360) (not b!437328) (not b!437333) (not b!437344) (not b!437312) (not b!437320) (not b_next!12193) (not b!437347) (not b!437303) b_and!47195 (not b!437324) (not b!437318) (not b!437317) (not b!437343) (not b!437329) b_and!47189 (not b!437340) (not b!437321) (not b!437325) (not b!437306) (not b!437338) (not b!437337) (not b_next!12191) (not b!437332) (not b!437341) b_and!47197 (not b!437339) (not b!437315))
(check-sat b_and!47191 (not b_next!12185) (not b_next!12189) b_and!47199 (not b_next!12195) (not b_next!12193) b_and!47195 b_and!47189 (not b_next!12191) b_and!47197 b_and!47193 (not b_next!12187))
