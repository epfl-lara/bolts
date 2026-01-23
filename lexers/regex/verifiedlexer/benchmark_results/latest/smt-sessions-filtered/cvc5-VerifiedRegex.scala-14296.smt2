; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746506 () Bool)

(assert start!746506)

(declare-fun b!7909450 () Bool)

(declare-fun b_free!135171 () Bool)

(declare-fun b_next!135961 () Bool)

(assert (=> b!7909450 (= b_free!135171 (not b_next!135961))))

(declare-fun tp!2356258 () Bool)

(declare-fun b_and!353415 () Bool)

(assert (=> b!7909450 (= tp!2356258 b_and!353415)))

(declare-fun b_free!135173 () Bool)

(declare-fun b_next!135963 () Bool)

(assert (=> b!7909450 (= b_free!135173 (not b_next!135963))))

(declare-fun tp!2356256 () Bool)

(declare-fun b_and!353417 () Bool)

(assert (=> b!7909450 (= tp!2356256 b_and!353417)))

(declare-fun b!7909449 () Bool)

(declare-fun e!4668929 () Bool)

(declare-datatypes ((String!83288 0))(
  ( (String!83289 (value!288677 String)) )
))
(declare-datatypes ((List!74475 0))(
  ( (Nil!74351) (Cons!74351 (h!80799 (_ BitVec 16)) (t!389828 List!74475)) )
))
(declare-datatypes ((C!43050 0))(
  ( (C!43051 (val!31989 Int)) )
))
(declare-datatypes ((List!74476 0))(
  ( (Nil!74352) (Cons!74352 (h!80800 C!43050) (t!389829 List!74476)) )
))
(declare-datatypes ((IArray!31723 0))(
  ( (IArray!31724 (innerList!15919 List!74476)) )
))
(declare-datatypes ((Conc!15831 0))(
  ( (Node!15831 (left!56723 Conc!15831) (right!57053 Conc!15831) (csize!31892 Int) (cheight!16042 Int)) (Leaf!30128 (xs!19213 IArray!31723) (csize!31893 Int)) (Empty!15831) )
))
(declare-datatypes ((BalanceConc!30780 0))(
  ( (BalanceConc!30781 (c!1451066 Conc!15831)) )
))
(declare-datatypes ((TokenValue!8973 0))(
  ( (FloatLiteralValue!17946 (text!63256 List!74475)) (TokenValueExt!8972 (__x!35233 Int)) (Broken!44865 (value!288678 List!74475)) (Object!9096) (End!8973) (Def!8973) (Underscore!8973) (Match!8973) (Else!8973) (Error!8973) (Case!8973) (If!8973) (Extends!8973) (Abstract!8973) (Class!8973) (Val!8973) (DelimiterValue!17946 (del!9033 List!74475)) (KeywordValue!8979 (value!288679 List!74475)) (CommentValue!17946 (value!288680 List!74475)) (WhitespaceValue!17946 (value!288681 List!74475)) (IndentationValue!8973 (value!288682 List!74475)) (String!83290) (Int32!8973) (Broken!44866 (value!288683 List!74475)) (Boolean!8974) (Unit!169377) (OperatorValue!8976 (op!9033 List!74475)) (IdentifierValue!17946 (value!288684 List!74475)) (IdentifierValue!17947 (value!288685 List!74475)) (WhitespaceValue!17947 (value!288686 List!74475)) (True!17946) (False!17946) (Broken!44867 (value!288687 List!74475)) (Broken!44868 (value!288688 List!74475)) (True!17947) (RightBrace!8973) (RightBracket!8973) (Colon!8973) (Null!8973) (Comma!8973) (LeftBracket!8973) (False!17947) (LeftBrace!8973) (ImaginaryLiteralValue!8973 (text!63257 List!74475)) (StringLiteralValue!26919 (value!288689 List!74475)) (EOFValue!8973 (value!288690 List!74475)) (IdentValue!8973 (value!288691 List!74475)) (DelimiterValue!17947 (value!288692 List!74475)) (DedentValue!8973 (value!288693 List!74475)) (NewLineValue!8973 (value!288694 List!74475)) (IntegerValue!26919 (value!288695 (_ BitVec 32)) (text!63258 List!74475)) (IntegerValue!26920 (value!288696 Int) (text!63259 List!74475)) (Times!8973) (Or!8973) (Equal!8973) (Minus!8973) (Broken!44869 (value!288697 List!74475)) (And!8973) (Div!8973) (LessEqual!8973) (Mod!8973) (Concat!30333) (Not!8973) (Plus!8973) (SpaceValue!8973 (value!288698 List!74475)) (IntegerValue!26921 (value!288699 Int) (text!63260 List!74475)) (StringLiteralValue!26920 (text!63261 List!74475)) (FloatLiteralValue!17947 (text!63262 List!74475)) (BytesLiteralValue!8973 (value!288700 List!74475)) (CommentValue!17947 (value!288701 List!74475)) (StringLiteralValue!26921 (value!288702 List!74475)) (ErrorTokenValue!8973 (msg!9034 List!74475)) )
))
(declare-datatypes ((Regex!21360 0))(
  ( (ElementMatch!21360 (c!1451067 C!43050)) (Concat!30334 (regOne!43232 Regex!21360) (regTwo!43232 Regex!21360)) (EmptyExpr!21360) (Star!21360 (reg!21689 Regex!21360)) (EmptyLang!21360) (Union!21360 (regOne!43233 Regex!21360) (regTwo!43233 Regex!21360)) )
))
(declare-datatypes ((TokenValueInjection!17254 0))(
  ( (TokenValueInjection!17255 (toValue!11714 Int) (toChars!11573 Int)) )
))
(declare-datatypes ((Rule!17114 0))(
  ( (Rule!17115 (regex!8657 Regex!21360) (tag!9521 String!83288) (isSeparator!8657 Bool) (transformation!8657 TokenValueInjection!17254)) )
))
(declare-fun rule!156 () Rule!17114)

(declare-datatypes ((tuple2!70394 0))(
  ( (tuple2!70395 (_1!38500 List!74476) (_2!38500 List!74476)) )
))
(declare-fun lt!2686021 () tuple2!70394)

(declare-fun matchR!10681 (Regex!21360 List!74476) Bool)

(assert (=> b!7909449 (= e!4668929 (matchR!10681 (regex!8657 rule!156) (_1!38500 lt!2686021)))))

(declare-fun e!4668932 () Bool)

(assert (=> b!7909450 (= e!4668932 (and tp!2356258 tp!2356256))))

(declare-fun b!7909451 () Bool)

(declare-fun res!3139299 () Bool)

(declare-fun e!4668931 () Bool)

(assert (=> b!7909451 (=> (not res!3139299) (not e!4668931))))

(declare-datatypes ((LexerInterface!8249 0))(
  ( (LexerInterfaceExt!8246 (__x!35234 Int)) (Lexer!8247) )
))
(declare-fun thiss!15815 () LexerInterface!8249)

(declare-fun ruleValid!3968 (LexerInterface!8249 Rule!17114) Bool)

(assert (=> b!7909451 (= res!3139299 (ruleValid!3968 thiss!15815 rule!156))))

(declare-fun b!7909453 () Bool)

(declare-fun e!4668933 () Bool)

(assert (=> b!7909453 (= e!4668931 e!4668933)))

(declare-fun res!3139295 () Bool)

(assert (=> b!7909453 (=> (not res!3139295) (not e!4668933))))

(declare-fun lt!2686022 () tuple2!70394)

(declare-fun isEmpty!42684 (List!74476) Bool)

(assert (=> b!7909453 (= res!3139295 (not (isEmpty!42684 (_1!38500 lt!2686022))))))

(declare-fun input!1480 () List!74476)

(declare-fun findLongestMatch!1950 (Regex!21360 List!74476) tuple2!70394)

(assert (=> b!7909453 (= lt!2686022 (findLongestMatch!1950 (regex!8657 rule!156) input!1480))))

(declare-fun b!7909454 () Bool)

(declare-fun e!4668934 () Bool)

(assert (=> b!7909454 (= e!4668933 (not e!4668934))))

(declare-fun res!3139298 () Bool)

(assert (=> b!7909454 (=> res!3139298 e!4668934)))

(declare-datatypes ((Token!15726 0))(
  ( (Token!15727 (value!288703 TokenValue!8973) (rule!11957 Rule!17114) (size!43111 Int) (originalCharacters!8894 List!74476)) )
))
(declare-datatypes ((tuple2!70396 0))(
  ( (tuple2!70397 (_1!38501 Token!15726) (_2!38501 List!74476)) )
))
(declare-datatypes ((Option!17935 0))(
  ( (None!17934) (Some!17934 (v!55091 tuple2!70396)) )
))
(declare-fun lt!2686020 () Option!17935)

(declare-fun isEmpty!42685 (Option!17935) Bool)

(assert (=> b!7909454 (= res!3139298 (isEmpty!42685 lt!2686020))))

(declare-fun lt!2686019 () BalanceConc!30780)

(declare-fun apply!14366 (TokenValueInjection!17254 BalanceConc!30780) TokenValue!8973)

(declare-fun size!43112 (BalanceConc!30780) Int)

(assert (=> b!7909454 (= lt!2686020 (Some!17934 (tuple2!70397 (Token!15727 (apply!14366 (transformation!8657 rule!156) lt!2686019) rule!156 (size!43112 lt!2686019) (_1!38500 lt!2686022)) (_2!38500 lt!2686022))))))

(declare-datatypes ((Unit!169378 0))(
  ( (Unit!169379) )
))
(declare-fun lt!2686017 () Unit!169378)

(declare-fun lemmaSemiInverse!2677 (TokenValueInjection!17254 BalanceConc!30780) Unit!169378)

(assert (=> b!7909454 (= lt!2686017 (lemmaSemiInverse!2677 (transformation!8657 rule!156) lt!2686019))))

(declare-fun seqFromList!6184 (List!74476) BalanceConc!30780)

(assert (=> b!7909454 (= lt!2686019 (seqFromList!6184 (_1!38500 lt!2686022)))))

(assert (=> b!7909454 e!4668929))

(declare-fun res!3139296 () Bool)

(assert (=> b!7909454 (=> res!3139296 e!4668929)))

(assert (=> b!7909454 (= res!3139296 (isEmpty!42684 (_1!38500 lt!2686021)))))

(declare-fun findLongestMatchInner!2167 (Regex!21360 List!74476 Int List!74476 List!74476 Int) tuple2!70394)

(declare-fun size!43113 (List!74476) Int)

(assert (=> b!7909454 (= lt!2686021 (findLongestMatchInner!2167 (regex!8657 rule!156) Nil!74352 (size!43113 Nil!74352) input!1480 input!1480 (size!43113 input!1480)))))

(declare-fun lt!2686018 () Unit!169378)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2130 (Regex!21360 List!74476) Unit!169378)

(assert (=> b!7909454 (= lt!2686018 (longestMatchIsAcceptedByMatchOrIsEmpty!2130 (regex!8657 rule!156) input!1480))))

(declare-fun res!3139297 () Bool)

(assert (=> start!746506 (=> (not res!3139297) (not e!4668931))))

(assert (=> start!746506 (= res!3139297 (is-Lexer!8247 thiss!15815))))

(assert (=> start!746506 e!4668931))

(assert (=> start!746506 true))

(declare-fun e!4668935 () Bool)

(assert (=> start!746506 e!4668935))

(declare-fun e!4668936 () Bool)

(assert (=> start!746506 e!4668936))

(declare-fun b!7909452 () Bool)

(declare-fun tp_is_empty!53095 () Bool)

(declare-fun tp!2356255 () Bool)

(assert (=> b!7909452 (= e!4668936 (and tp_is_empty!53095 tp!2356255))))

(declare-fun b!7909455 () Bool)

(declare-fun isDefined!14495 (Option!17935) Bool)

(assert (=> b!7909455 (= e!4668934 (isDefined!14495 lt!2686020))))

(declare-fun b!7909456 () Bool)

(declare-fun tp!2356257 () Bool)

(declare-fun inv!95385 (String!83288) Bool)

(declare-fun inv!95388 (TokenValueInjection!17254) Bool)

(assert (=> b!7909456 (= e!4668935 (and tp!2356257 (inv!95385 (tag!9521 rule!156)) (inv!95388 (transformation!8657 rule!156)) e!4668932))))

(assert (= (and start!746506 res!3139297) b!7909451))

(assert (= (and b!7909451 res!3139299) b!7909453))

(assert (= (and b!7909453 res!3139295) b!7909454))

(assert (= (and b!7909454 (not res!3139296)) b!7909449))

(assert (= (and b!7909454 (not res!3139298)) b!7909455))

(assert (= b!7909456 b!7909450))

(assert (= start!746506 b!7909456))

(assert (= (and start!746506 (is-Cons!74352 input!1480)) b!7909452))

(declare-fun m!8283040 () Bool)

(assert (=> b!7909451 m!8283040))

(declare-fun m!8283042 () Bool)

(assert (=> b!7909454 m!8283042))

(declare-fun m!8283044 () Bool)

(assert (=> b!7909454 m!8283044))

(declare-fun m!8283046 () Bool)

(assert (=> b!7909454 m!8283046))

(assert (=> b!7909454 m!8283042))

(declare-fun m!8283048 () Bool)

(assert (=> b!7909454 m!8283048))

(declare-fun m!8283050 () Bool)

(assert (=> b!7909454 m!8283050))

(declare-fun m!8283052 () Bool)

(assert (=> b!7909454 m!8283052))

(declare-fun m!8283054 () Bool)

(assert (=> b!7909454 m!8283054))

(assert (=> b!7909454 m!8283048))

(declare-fun m!8283056 () Bool)

(assert (=> b!7909454 m!8283056))

(declare-fun m!8283058 () Bool)

(assert (=> b!7909454 m!8283058))

(declare-fun m!8283060 () Bool)

(assert (=> b!7909454 m!8283060))

(declare-fun m!8283062 () Bool)

(assert (=> b!7909455 m!8283062))

(declare-fun m!8283064 () Bool)

(assert (=> b!7909453 m!8283064))

(declare-fun m!8283066 () Bool)

(assert (=> b!7909453 m!8283066))

(declare-fun m!8283068 () Bool)

(assert (=> b!7909449 m!8283068))

(declare-fun m!8283070 () Bool)

(assert (=> b!7909456 m!8283070))

(declare-fun m!8283072 () Bool)

(assert (=> b!7909456 m!8283072))

(push 1)

(assert (not b!7909453))

(assert (not b!7909449))

(assert (not b!7909456))

(assert (not b!7909451))

(assert (not b_next!135961))

(assert b_and!353415)

(assert (not b!7909452))

(assert tp_is_empty!53095)

(assert (not b_next!135963))

(assert (not b!7909454))

(assert (not b!7909455))

(assert b_and!353417)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353415)

(assert b_and!353417)

(assert (not b_next!135961))

(assert (not b_next!135963))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2359877 () Bool)

(assert (=> d!2359877 (= (isEmpty!42684 (_1!38500 lt!2686022)) (is-Nil!74352 (_1!38500 lt!2686022)))))

(assert (=> b!7909453 d!2359877))

(declare-fun d!2359879 () Bool)

(declare-fun lt!2686059 () tuple2!70394)

(declare-fun ++!18203 (List!74476 List!74476) List!74476)

(assert (=> d!2359879 (= (++!18203 (_1!38500 lt!2686059) (_2!38500 lt!2686059)) input!1480)))

(declare-fun sizeTr!454 (List!74476 Int) Int)

(assert (=> d!2359879 (= lt!2686059 (findLongestMatchInner!2167 (regex!8657 rule!156) Nil!74352 0 input!1480 input!1480 (sizeTr!454 input!1480 0)))))

(declare-fun lt!2686063 () Unit!169378)

(declare-fun lt!2686057 () Unit!169378)

(assert (=> d!2359879 (= lt!2686063 lt!2686057)))

(declare-fun lt!2686058 () List!74476)

(declare-fun lt!2686061 () Int)

(assert (=> d!2359879 (= (sizeTr!454 lt!2686058 lt!2686061) (+ (size!43113 lt!2686058) lt!2686061))))

(declare-fun lemmaSizeTrEqualsSize!453 (List!74476 Int) Unit!169378)

(assert (=> d!2359879 (= lt!2686057 (lemmaSizeTrEqualsSize!453 lt!2686058 lt!2686061))))

(assert (=> d!2359879 (= lt!2686061 0)))

(assert (=> d!2359879 (= lt!2686058 Nil!74352)))

(declare-fun lt!2686060 () Unit!169378)

(declare-fun lt!2686064 () Unit!169378)

(assert (=> d!2359879 (= lt!2686060 lt!2686064)))

(declare-fun lt!2686062 () Int)

(assert (=> d!2359879 (= (sizeTr!454 input!1480 lt!2686062) (+ (size!43113 input!1480) lt!2686062))))

(assert (=> d!2359879 (= lt!2686064 (lemmaSizeTrEqualsSize!453 input!1480 lt!2686062))))

(assert (=> d!2359879 (= lt!2686062 0)))

(declare-fun validRegex!11666 (Regex!21360) Bool)

(assert (=> d!2359879 (validRegex!11666 (regex!8657 rule!156))))

(assert (=> d!2359879 (= (findLongestMatch!1950 (regex!8657 rule!156) input!1480) lt!2686059)))

(declare-fun bs!1968208 () Bool)

(assert (= bs!1968208 d!2359879))

(declare-fun m!8283116 () Bool)

(assert (=> bs!1968208 m!8283116))

(declare-fun m!8283118 () Bool)

(assert (=> bs!1968208 m!8283118))

(declare-fun m!8283120 () Bool)

(assert (=> bs!1968208 m!8283120))

(assert (=> bs!1968208 m!8283048))

(declare-fun m!8283122 () Bool)

(assert (=> bs!1968208 m!8283122))

(declare-fun m!8283124 () Bool)

(assert (=> bs!1968208 m!8283124))

(declare-fun m!8283126 () Bool)

(assert (=> bs!1968208 m!8283126))

(assert (=> bs!1968208 m!8283116))

(declare-fun m!8283128 () Bool)

(assert (=> bs!1968208 m!8283128))

(declare-fun m!8283130 () Bool)

(assert (=> bs!1968208 m!8283130))

(declare-fun m!8283132 () Bool)

(assert (=> bs!1968208 m!8283132))

(assert (=> b!7909453 d!2359879))

(declare-fun d!2359889 () Bool)

(declare-fun lt!2686067 () Int)

(assert (=> d!2359889 (>= lt!2686067 0)))

(declare-fun e!4668969 () Int)

(assert (=> d!2359889 (= lt!2686067 e!4668969)))

(declare-fun c!1451073 () Bool)

(assert (=> d!2359889 (= c!1451073 (is-Nil!74352 Nil!74352))))

(assert (=> d!2359889 (= (size!43113 Nil!74352) lt!2686067)))

(declare-fun b!7909494 () Bool)

(assert (=> b!7909494 (= e!4668969 0)))

(declare-fun b!7909495 () Bool)

(assert (=> b!7909495 (= e!4668969 (+ 1 (size!43113 (t!389829 Nil!74352))))))

(assert (= (and d!2359889 c!1451073) b!7909494))

(assert (= (and d!2359889 (not c!1451073)) b!7909495))

(declare-fun m!8283134 () Bool)

(assert (=> b!7909495 m!8283134))

(assert (=> b!7909454 d!2359889))

(declare-fun call!733524 () Regex!21360)

(declare-fun call!733526 () List!74476)

(declare-fun bm!733519 () Bool)

(declare-fun call!733525 () tuple2!70394)

(declare-fun lt!2686185 () List!74476)

(assert (=> bm!733519 (= call!733525 (findLongestMatchInner!2167 call!733524 lt!2686185 (+ (size!43113 Nil!74352) 1) call!733526 input!1480 (size!43113 input!1480)))))

(declare-fun bm!733520 () Bool)

(declare-fun call!733529 () Bool)

(declare-fun isPrefix!6474 (List!74476 List!74476) Bool)

(assert (=> bm!733520 (= call!733529 (isPrefix!6474 input!1480 input!1480))))

(declare-fun d!2359891 () Bool)

(declare-fun e!4669011 () Bool)

(assert (=> d!2359891 e!4669011))

(declare-fun res!3139357 () Bool)

(assert (=> d!2359891 (=> (not res!3139357) (not e!4669011))))

(declare-fun lt!2686171 () tuple2!70394)

(assert (=> d!2359891 (= res!3139357 (= (++!18203 (_1!38500 lt!2686171) (_2!38500 lt!2686171)) input!1480))))

(declare-fun e!4669016 () tuple2!70394)

(assert (=> d!2359891 (= lt!2686171 e!4669016)))

(declare-fun c!1451099 () Bool)

(declare-fun lostCause!1919 (Regex!21360) Bool)

(assert (=> d!2359891 (= c!1451099 (lostCause!1919 (regex!8657 rule!156)))))

(declare-fun lt!2686167 () Unit!169378)

(declare-fun Unit!169383 () Unit!169378)

(assert (=> d!2359891 (= lt!2686167 Unit!169383)))

(declare-fun getSuffix!3687 (List!74476 List!74476) List!74476)

(assert (=> d!2359891 (= (getSuffix!3687 input!1480 Nil!74352) input!1480)))

(declare-fun lt!2686181 () Unit!169378)

(declare-fun lt!2686170 () Unit!169378)

(assert (=> d!2359891 (= lt!2686181 lt!2686170)))

(declare-fun lt!2686165 () List!74476)

(assert (=> d!2359891 (= input!1480 lt!2686165)))

(declare-fun lemmaSamePrefixThenSameSuffix!2935 (List!74476 List!74476 List!74476 List!74476 List!74476) Unit!169378)

(assert (=> d!2359891 (= lt!2686170 (lemmaSamePrefixThenSameSuffix!2935 Nil!74352 input!1480 Nil!74352 lt!2686165 input!1480))))

(assert (=> d!2359891 (= lt!2686165 (getSuffix!3687 input!1480 Nil!74352))))

(declare-fun lt!2686173 () Unit!169378)

(declare-fun lt!2686164 () Unit!169378)

(assert (=> d!2359891 (= lt!2686173 lt!2686164)))

(assert (=> d!2359891 (isPrefix!6474 Nil!74352 (++!18203 Nil!74352 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3797 (List!74476 List!74476) Unit!169378)

(assert (=> d!2359891 (= lt!2686164 (lemmaConcatTwoListThenFirstIsPrefix!3797 Nil!74352 input!1480))))

(assert (=> d!2359891 (validRegex!11666 (regex!8657 rule!156))))

(assert (=> d!2359891 (= (findLongestMatchInner!2167 (regex!8657 rule!156) Nil!74352 (size!43113 Nil!74352) input!1480 input!1480 (size!43113 input!1480)) lt!2686171)))

(declare-fun b!7909574 () Bool)

(declare-fun e!4669013 () Unit!169378)

(declare-fun Unit!169384 () Unit!169378)

(assert (=> b!7909574 (= e!4669013 Unit!169384)))

(declare-fun lt!2686176 () Unit!169378)

(declare-fun call!733530 () Unit!169378)

(assert (=> b!7909574 (= lt!2686176 call!733530)))

(assert (=> b!7909574 call!733529))

(declare-fun lt!2686166 () Unit!169378)

(assert (=> b!7909574 (= lt!2686166 lt!2686176)))

(declare-fun lt!2686160 () Unit!169378)

(declare-fun call!733527 () Unit!169378)

(assert (=> b!7909574 (= lt!2686160 call!733527)))

(assert (=> b!7909574 (= input!1480 Nil!74352)))

(declare-fun lt!2686169 () Unit!169378)

(assert (=> b!7909574 (= lt!2686169 lt!2686160)))

(assert (=> b!7909574 false))

(declare-fun bm!733521 () Bool)

(declare-fun tail!15707 (List!74476) List!74476)

(assert (=> bm!733521 (= call!733526 (tail!15707 input!1480))))

(declare-fun b!7909575 () Bool)

(declare-fun e!4669012 () tuple2!70394)

(declare-fun lt!2686183 () tuple2!70394)

(assert (=> b!7909575 (= e!4669012 lt!2686183)))

(declare-fun bm!733522 () Bool)

(declare-fun call!733528 () C!43050)

(declare-fun head!16164 (List!74476) C!43050)

(assert (=> bm!733522 (= call!733528 (head!16164 input!1480))))

(declare-fun bm!733523 () Bool)

(declare-fun derivativeStep!6443 (Regex!21360 C!43050) Regex!21360)

(assert (=> bm!733523 (= call!733524 (derivativeStep!6443 (regex!8657 rule!156) call!733528))))

(declare-fun b!7909576 () Bool)

(declare-fun e!4669017 () tuple2!70394)

(assert (=> b!7909576 (= e!4669016 e!4669017)))

(declare-fun c!1451100 () Bool)

(assert (=> b!7909576 (= c!1451100 (= (size!43113 Nil!74352) (size!43113 input!1480)))))

(declare-fun b!7909577 () Bool)

(declare-fun e!4669015 () tuple2!70394)

(assert (=> b!7909577 (= e!4669015 (tuple2!70395 Nil!74352 input!1480))))

(declare-fun b!7909578 () Bool)

(declare-fun e!4669018 () Bool)

(assert (=> b!7909578 (= e!4669011 e!4669018)))

(declare-fun res!3139356 () Bool)

(assert (=> b!7909578 (=> res!3139356 e!4669018)))

(assert (=> b!7909578 (= res!3139356 (isEmpty!42684 (_1!38500 lt!2686171)))))

(declare-fun b!7909579 () Bool)

(declare-fun c!1451102 () Bool)

(declare-fun call!733531 () Bool)

(assert (=> b!7909579 (= c!1451102 call!733531)))

(declare-fun lt!2686178 () Unit!169378)

(declare-fun lt!2686163 () Unit!169378)

(assert (=> b!7909579 (= lt!2686178 lt!2686163)))

(declare-fun lt!2686158 () C!43050)

(declare-fun lt!2686180 () List!74476)

(assert (=> b!7909579 (= (++!18203 (++!18203 Nil!74352 (Cons!74352 lt!2686158 Nil!74352)) lt!2686180) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3474 (List!74476 C!43050 List!74476 List!74476) Unit!169378)

(assert (=> b!7909579 (= lt!2686163 (lemmaMoveElementToOtherListKeepsConcatEq!3474 Nil!74352 lt!2686158 lt!2686180 input!1480))))

(assert (=> b!7909579 (= lt!2686180 (tail!15707 input!1480))))

(assert (=> b!7909579 (= lt!2686158 (head!16164 input!1480))))

(declare-fun lt!2686182 () Unit!169378)

(declare-fun lt!2686179 () Unit!169378)

(assert (=> b!7909579 (= lt!2686182 lt!2686179)))

(assert (=> b!7909579 (isPrefix!6474 (++!18203 Nil!74352 (Cons!74352 (head!16164 (getSuffix!3687 input!1480 Nil!74352)) Nil!74352)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1252 (List!74476 List!74476) Unit!169378)

(assert (=> b!7909579 (= lt!2686179 (lemmaAddHeadSuffixToPrefixStillPrefix!1252 Nil!74352 input!1480))))

(declare-fun lt!2686162 () Unit!169378)

(declare-fun lt!2686161 () Unit!169378)

(assert (=> b!7909579 (= lt!2686162 lt!2686161)))

(assert (=> b!7909579 (= lt!2686161 (lemmaAddHeadSuffixToPrefixStillPrefix!1252 Nil!74352 input!1480))))

(assert (=> b!7909579 (= lt!2686185 (++!18203 Nil!74352 (Cons!74352 (head!16164 input!1480) Nil!74352)))))

(declare-fun lt!2686177 () Unit!169378)

(assert (=> b!7909579 (= lt!2686177 e!4669013)))

(declare-fun c!1451103 () Bool)

(assert (=> b!7909579 (= c!1451103 (= (size!43113 Nil!74352) (size!43113 input!1480)))))

(declare-fun lt!2686159 () Unit!169378)

(declare-fun lt!2686184 () Unit!169378)

(assert (=> b!7909579 (= lt!2686159 lt!2686184)))

(assert (=> b!7909579 (<= (size!43113 Nil!74352) (size!43113 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1032 (List!74476 List!74476) Unit!169378)

(assert (=> b!7909579 (= lt!2686184 (lemmaIsPrefixThenSmallerEqSize!1032 Nil!74352 input!1480))))

(declare-fun e!4669014 () tuple2!70394)

(assert (=> b!7909579 (= e!4669017 e!4669014)))

(declare-fun b!7909580 () Bool)

(assert (=> b!7909580 (= e!4669018 (>= (size!43113 (_1!38500 lt!2686171)) (size!43113 Nil!74352)))))

(declare-fun bm!733524 () Bool)

(declare-fun nullable!9501 (Regex!21360) Bool)

(assert (=> bm!733524 (= call!733531 (nullable!9501 (regex!8657 rule!156)))))

(declare-fun b!7909581 () Bool)

(assert (=> b!7909581 (= e!4669012 (tuple2!70395 Nil!74352 input!1480))))

(declare-fun b!7909582 () Bool)

(assert (=> b!7909582 (= e!4669015 (tuple2!70395 Nil!74352 Nil!74352))))

(declare-fun b!7909583 () Bool)

(assert (=> b!7909583 (= e!4669014 call!733525)))

(declare-fun b!7909584 () Bool)

(declare-fun Unit!169385 () Unit!169378)

(assert (=> b!7909584 (= e!4669013 Unit!169385)))

(declare-fun bm!733525 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1567 (List!74476 List!74476 List!74476) Unit!169378)

(assert (=> bm!733525 (= call!733527 (lemmaIsPrefixSameLengthThenSameList!1567 input!1480 Nil!74352 input!1480))))

(declare-fun b!7909585 () Bool)

(assert (=> b!7909585 (= e!4669014 e!4669012)))

(assert (=> b!7909585 (= lt!2686183 call!733525)))

(declare-fun c!1451104 () Bool)

(assert (=> b!7909585 (= c!1451104 (isEmpty!42684 (_1!38500 lt!2686183)))))

(declare-fun bm!733526 () Bool)

(declare-fun lemmaIsPrefixRefl!3985 (List!74476 List!74476) Unit!169378)

(assert (=> bm!733526 (= call!733530 (lemmaIsPrefixRefl!3985 input!1480 input!1480))))

(declare-fun b!7909586 () Bool)

(declare-fun c!1451101 () Bool)

(assert (=> b!7909586 (= c!1451101 call!733531)))

(declare-fun lt!2686175 () Unit!169378)

(declare-fun lt!2686174 () Unit!169378)

(assert (=> b!7909586 (= lt!2686175 lt!2686174)))

(assert (=> b!7909586 (= input!1480 Nil!74352)))

(assert (=> b!7909586 (= lt!2686174 call!733527)))

(declare-fun lt!2686172 () Unit!169378)

(declare-fun lt!2686168 () Unit!169378)

(assert (=> b!7909586 (= lt!2686172 lt!2686168)))

(assert (=> b!7909586 call!733529))

(assert (=> b!7909586 (= lt!2686168 call!733530)))

(assert (=> b!7909586 (= e!4669017 e!4669015)))

(declare-fun b!7909587 () Bool)

(assert (=> b!7909587 (= e!4669016 (tuple2!70395 Nil!74352 input!1480))))

(assert (= (and d!2359891 c!1451099) b!7909587))

(assert (= (and d!2359891 (not c!1451099)) b!7909576))

(assert (= (and b!7909576 c!1451100) b!7909586))

(assert (= (and b!7909576 (not c!1451100)) b!7909579))

(assert (= (and b!7909586 c!1451101) b!7909582))

(assert (= (and b!7909586 (not c!1451101)) b!7909577))

(assert (= (and b!7909579 c!1451103) b!7909574))

(assert (= (and b!7909579 (not c!1451103)) b!7909584))

(assert (= (and b!7909579 c!1451102) b!7909585))

(assert (= (and b!7909579 (not c!1451102)) b!7909583))

(assert (= (and b!7909585 c!1451104) b!7909581))

(assert (= (and b!7909585 (not c!1451104)) b!7909575))

(assert (= (or b!7909585 b!7909583) bm!733522))

(assert (= (or b!7909585 b!7909583) bm!733521))

(assert (= (or b!7909585 b!7909583) bm!733523))

(assert (= (or b!7909585 b!7909583) bm!733519))

(assert (= (or b!7909586 b!7909579) bm!733524))

(assert (= (or b!7909586 b!7909574) bm!733520))

(assert (= (or b!7909586 b!7909574) bm!733526))

(assert (= (or b!7909586 b!7909574) bm!733525))

(assert (= (and d!2359891 res!3139357) b!7909578))

(assert (= (and b!7909578 (not res!3139356)) b!7909580))

(declare-fun m!8283172 () Bool)

(assert (=> b!7909585 m!8283172))

(declare-fun m!8283174 () Bool)

(assert (=> b!7909580 m!8283174))

(assert (=> b!7909580 m!8283042))

(declare-fun m!8283176 () Bool)

(assert (=> bm!733524 m!8283176))

(declare-fun m!8283178 () Bool)

(assert (=> bm!733525 m!8283178))

(assert (=> b!7909579 m!8283048))

(declare-fun m!8283180 () Bool)

(assert (=> b!7909579 m!8283180))

(declare-fun m!8283182 () Bool)

(assert (=> b!7909579 m!8283182))

(declare-fun m!8283184 () Bool)

(assert (=> b!7909579 m!8283184))

(declare-fun m!8283186 () Bool)

(assert (=> b!7909579 m!8283186))

(declare-fun m!8283188 () Bool)

(assert (=> b!7909579 m!8283188))

(declare-fun m!8283190 () Bool)

(assert (=> b!7909579 m!8283190))

(declare-fun m!8283192 () Bool)

(assert (=> b!7909579 m!8283192))

(declare-fun m!8283194 () Bool)

(assert (=> b!7909579 m!8283194))

(assert (=> b!7909579 m!8283192))

(declare-fun m!8283196 () Bool)

(assert (=> b!7909579 m!8283196))

(assert (=> b!7909579 m!8283042))

(assert (=> b!7909579 m!8283182))

(declare-fun m!8283198 () Bool)

(assert (=> b!7909579 m!8283198))

(assert (=> b!7909579 m!8283186))

(declare-fun m!8283200 () Bool)

(assert (=> b!7909579 m!8283200))

(declare-fun m!8283202 () Bool)

(assert (=> b!7909579 m!8283202))

(declare-fun m!8283204 () Bool)

(assert (=> bm!733520 m!8283204))

(assert (=> bm!733521 m!8283188))

(declare-fun m!8283206 () Bool)

(assert (=> bm!733526 m!8283206))

(declare-fun m!8283208 () Bool)

(assert (=> b!7909578 m!8283208))

(assert (=> bm!733519 m!8283048))

(declare-fun m!8283210 () Bool)

(assert (=> bm!733519 m!8283210))

(assert (=> d!2359891 m!8283182))

(declare-fun m!8283212 () Bool)

(assert (=> d!2359891 m!8283212))

(declare-fun m!8283214 () Bool)

(assert (=> d!2359891 m!8283214))

(declare-fun m!8283216 () Bool)

(assert (=> d!2359891 m!8283216))

(declare-fun m!8283218 () Bool)

(assert (=> d!2359891 m!8283218))

(declare-fun m!8283220 () Bool)

(assert (=> d!2359891 m!8283220))

(assert (=> d!2359891 m!8283216))

(declare-fun m!8283222 () Bool)

(assert (=> d!2359891 m!8283222))

(assert (=> d!2359891 m!8283132))

(assert (=> bm!733522 m!8283190))

(declare-fun m!8283224 () Bool)

(assert (=> bm!733523 m!8283224))

(assert (=> b!7909454 d!2359891))

(declare-fun d!2359907 () Bool)

(declare-fun e!4669021 () Bool)

(assert (=> d!2359907 e!4669021))

(declare-fun res!3139360 () Bool)

(assert (=> d!2359907 (=> res!3139360 e!4669021)))

(assert (=> d!2359907 (= res!3139360 (isEmpty!42684 (_1!38500 (findLongestMatchInner!2167 (regex!8657 rule!156) Nil!74352 (size!43113 Nil!74352) input!1480 input!1480 (size!43113 input!1480)))))))

(declare-fun lt!2686188 () Unit!169378)

(declare-fun choose!59739 (Regex!21360 List!74476) Unit!169378)

(assert (=> d!2359907 (= lt!2686188 (choose!59739 (regex!8657 rule!156) input!1480))))

(assert (=> d!2359907 (validRegex!11666 (regex!8657 rule!156))))

(assert (=> d!2359907 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2130 (regex!8657 rule!156) input!1480) lt!2686188)))

(declare-fun b!7909590 () Bool)

(assert (=> b!7909590 (= e!4669021 (matchR!10681 (regex!8657 rule!156) (_1!38500 (findLongestMatchInner!2167 (regex!8657 rule!156) Nil!74352 (size!43113 Nil!74352) input!1480 input!1480 (size!43113 input!1480)))))))

(assert (= (and d!2359907 (not res!3139360)) b!7909590))

(assert (=> d!2359907 m!8283042))

(assert (=> d!2359907 m!8283048))

(declare-fun m!8283226 () Bool)

(assert (=> d!2359907 m!8283226))

(assert (=> d!2359907 m!8283132))

(assert (=> d!2359907 m!8283042))

(assert (=> d!2359907 m!8283048))

(assert (=> d!2359907 m!8283050))

(declare-fun m!8283228 () Bool)

(assert (=> d!2359907 m!8283228))

(assert (=> b!7909590 m!8283042))

(assert (=> b!7909590 m!8283048))

(assert (=> b!7909590 m!8283042))

(assert (=> b!7909590 m!8283048))

(assert (=> b!7909590 m!8283050))

(declare-fun m!8283230 () Bool)

(assert (=> b!7909590 m!8283230))

(assert (=> b!7909454 d!2359907))

(declare-fun d!2359909 () Bool)

(assert (=> d!2359909 (= (isEmpty!42685 lt!2686020) (not (is-Some!17934 lt!2686020)))))

(assert (=> b!7909454 d!2359909))

(declare-fun d!2359911 () Bool)

(declare-fun lt!2686189 () Int)

(assert (=> d!2359911 (>= lt!2686189 0)))

(declare-fun e!4669022 () Int)

(assert (=> d!2359911 (= lt!2686189 e!4669022)))

(declare-fun c!1451105 () Bool)

(assert (=> d!2359911 (= c!1451105 (is-Nil!74352 input!1480))))

(assert (=> d!2359911 (= (size!43113 input!1480) lt!2686189)))

(declare-fun b!7909591 () Bool)

(assert (=> b!7909591 (= e!4669022 0)))

(declare-fun b!7909592 () Bool)

(assert (=> b!7909592 (= e!4669022 (+ 1 (size!43113 (t!389829 input!1480))))))

(assert (= (and d!2359911 c!1451105) b!7909591))

(assert (= (and d!2359911 (not c!1451105)) b!7909592))

(declare-fun m!8283232 () Bool)

(assert (=> b!7909592 m!8283232))

(assert (=> b!7909454 d!2359911))

(declare-fun d!2359913 () Bool)

(declare-fun fromListB!2792 (List!74476) BalanceConc!30780)

(assert (=> d!2359913 (= (seqFromList!6184 (_1!38500 lt!2686022)) (fromListB!2792 (_1!38500 lt!2686022)))))

(declare-fun bs!1968212 () Bool)

(assert (= bs!1968212 d!2359913))

(declare-fun m!8283234 () Bool)

(assert (=> bs!1968212 m!8283234))

(assert (=> b!7909454 d!2359913))

(declare-fun d!2359915 () Bool)

(declare-fun lt!2686192 () Int)

(declare-fun list!19301 (BalanceConc!30780) List!74476)

(assert (=> d!2359915 (= lt!2686192 (size!43113 (list!19301 lt!2686019)))))

(declare-fun size!43117 (Conc!15831) Int)

(assert (=> d!2359915 (= lt!2686192 (size!43117 (c!1451066 lt!2686019)))))

(assert (=> d!2359915 (= (size!43112 lt!2686019) lt!2686192)))

(declare-fun bs!1968213 () Bool)

(assert (= bs!1968213 d!2359915))

(declare-fun m!8283236 () Bool)

(assert (=> bs!1968213 m!8283236))

(assert (=> bs!1968213 m!8283236))

(declare-fun m!8283238 () Bool)

(assert (=> bs!1968213 m!8283238))

(declare-fun m!8283240 () Bool)

(assert (=> bs!1968213 m!8283240))

(assert (=> b!7909454 d!2359915))

(declare-fun d!2359917 () Bool)

(assert (=> d!2359917 (= (isEmpty!42684 (_1!38500 lt!2686021)) (is-Nil!74352 (_1!38500 lt!2686021)))))

(assert (=> b!7909454 d!2359917))

(declare-fun d!2359919 () Bool)

(declare-fun dynLambda!30108 (Int BalanceConc!30780) TokenValue!8973)

(assert (=> d!2359919 (= (apply!14366 (transformation!8657 rule!156) lt!2686019) (dynLambda!30108 (toValue!11714 (transformation!8657 rule!156)) lt!2686019))))

(declare-fun b_lambda!289931 () Bool)

(assert (=> (not b_lambda!289931) (not d!2359919)))

(declare-fun t!389833 () Bool)

(declare-fun tb!263191 () Bool)

(assert (=> (and b!7909450 (= (toValue!11714 (transformation!8657 rule!156)) (toValue!11714 (transformation!8657 rule!156))) t!389833) tb!263191))

(declare-fun result!360454 () Bool)

(declare-fun inv!21 (TokenValue!8973) Bool)

(assert (=> tb!263191 (= result!360454 (inv!21 (dynLambda!30108 (toValue!11714 (transformation!8657 rule!156)) lt!2686019)))))

(declare-fun m!8283242 () Bool)

(assert (=> tb!263191 m!8283242))

(assert (=> d!2359919 t!389833))

(declare-fun b_and!353423 () Bool)

(assert (= b_and!353415 (and (=> t!389833 result!360454) b_and!353423)))

(declare-fun m!8283244 () Bool)

(assert (=> d!2359919 m!8283244))

(assert (=> b!7909454 d!2359919))

(declare-fun b!7909641 () Bool)

(declare-fun e!4669052 () Bool)

(assert (=> b!7909641 (= e!4669052 true)))

(declare-fun d!2359921 () Bool)

(assert (=> d!2359921 e!4669052))

(assert (= d!2359921 b!7909641))

(declare-fun order!29859 () Int)

(declare-fun order!29857 () Int)

(declare-fun lambda!472542 () Int)

(declare-fun dynLambda!30109 (Int Int) Int)

(declare-fun dynLambda!30110 (Int Int) Int)

(assert (=> b!7909641 (< (dynLambda!30109 order!29857 (toValue!11714 (transformation!8657 rule!156))) (dynLambda!30110 order!29859 lambda!472542))))

(declare-fun order!29861 () Int)

(declare-fun dynLambda!30111 (Int Int) Int)

(assert (=> b!7909641 (< (dynLambda!30111 order!29861 (toChars!11573 (transformation!8657 rule!156))) (dynLambda!30110 order!29859 lambda!472542))))

(declare-fun dynLambda!30112 (Int TokenValue!8973) BalanceConc!30780)

(assert (=> d!2359921 (= (list!19301 (dynLambda!30112 (toChars!11573 (transformation!8657 rule!156)) (dynLambda!30108 (toValue!11714 (transformation!8657 rule!156)) lt!2686019))) (list!19301 lt!2686019))))

(declare-fun lt!2686281 () Unit!169378)

(declare-fun ForallOf!1303 (Int BalanceConc!30780) Unit!169378)

(assert (=> d!2359921 (= lt!2686281 (ForallOf!1303 lambda!472542 lt!2686019))))

(assert (=> d!2359921 (= (lemmaSemiInverse!2677 (transformation!8657 rule!156) lt!2686019) lt!2686281)))

(declare-fun b_lambda!289933 () Bool)

(assert (=> (not b_lambda!289933) (not d!2359921)))

(declare-fun t!389835 () Bool)

(declare-fun tb!263193 () Bool)

(assert (=> (and b!7909450 (= (toChars!11573 (transformation!8657 rule!156)) (toChars!11573 (transformation!8657 rule!156))) t!389835) tb!263193))

(declare-fun e!4669055 () Bool)

(declare-fun tp!2356273 () Bool)

(declare-fun b!7909646 () Bool)

(declare-fun inv!95390 (Conc!15831) Bool)

(assert (=> b!7909646 (= e!4669055 (and (inv!95390 (c!1451066 (dynLambda!30112 (toChars!11573 (transformation!8657 rule!156)) (dynLambda!30108 (toValue!11714 (transformation!8657 rule!156)) lt!2686019)))) tp!2356273))))

(declare-fun result!360458 () Bool)

(declare-fun inv!95391 (BalanceConc!30780) Bool)

(assert (=> tb!263193 (= result!360458 (and (inv!95391 (dynLambda!30112 (toChars!11573 (transformation!8657 rule!156)) (dynLambda!30108 (toValue!11714 (transformation!8657 rule!156)) lt!2686019))) e!4669055))))

(assert (= tb!263193 b!7909646))

(declare-fun m!8283298 () Bool)

(assert (=> b!7909646 m!8283298))

(declare-fun m!8283300 () Bool)

(assert (=> tb!263193 m!8283300))

(assert (=> d!2359921 t!389835))

(declare-fun b_and!353425 () Bool)

(assert (= b_and!353417 (and (=> t!389835 result!360458) b_and!353425)))

(declare-fun b_lambda!289935 () Bool)

(assert (=> (not b_lambda!289935) (not d!2359921)))

(assert (=> d!2359921 t!389833))

(declare-fun b_and!353427 () Bool)

(assert (= b_and!353423 (and (=> t!389833 result!360454) b_and!353427)))

(assert (=> d!2359921 m!8283236))

(declare-fun m!8283302 () Bool)

(assert (=> d!2359921 m!8283302))

(declare-fun m!8283304 () Bool)

(assert (=> d!2359921 m!8283304))

(declare-fun m!8283306 () Bool)

(assert (=> d!2359921 m!8283306))

(assert (=> d!2359921 m!8283244))

(assert (=> d!2359921 m!8283244))

(assert (=> d!2359921 m!8283304))

(assert (=> b!7909454 d!2359921))

(declare-fun d!2359925 () Bool)

(assert (=> d!2359925 (= (inv!95385 (tag!9521 rule!156)) (= (mod (str.len (value!288677 (tag!9521 rule!156))) 2) 0))))

(assert (=> b!7909456 d!2359925))

(declare-fun d!2359927 () Bool)

(declare-fun res!3139369 () Bool)

(declare-fun e!4669058 () Bool)

(assert (=> d!2359927 (=> (not res!3139369) (not e!4669058))))

(declare-fun semiInverseModEq!3832 (Int Int) Bool)

(assert (=> d!2359927 (= res!3139369 (semiInverseModEq!3832 (toChars!11573 (transformation!8657 rule!156)) (toValue!11714 (transformation!8657 rule!156))))))

(assert (=> d!2359927 (= (inv!95388 (transformation!8657 rule!156)) e!4669058)))

(declare-fun b!7909649 () Bool)

(declare-fun equivClasses!3647 (Int Int) Bool)

(assert (=> b!7909649 (= e!4669058 (equivClasses!3647 (toChars!11573 (transformation!8657 rule!156)) (toValue!11714 (transformation!8657 rule!156))))))

(assert (= (and d!2359927 res!3139369) b!7909649))

(declare-fun m!8283308 () Bool)

(assert (=> d!2359927 m!8283308))

(declare-fun m!8283310 () Bool)

(assert (=> b!7909649 m!8283310))

(assert (=> b!7909456 d!2359927))

(declare-fun d!2359929 () Bool)

(declare-fun res!3139374 () Bool)

(declare-fun e!4669061 () Bool)

(assert (=> d!2359929 (=> (not res!3139374) (not e!4669061))))

(assert (=> d!2359929 (= res!3139374 (validRegex!11666 (regex!8657 rule!156)))))

(assert (=> d!2359929 (= (ruleValid!3968 thiss!15815 rule!156) e!4669061)))

(declare-fun b!7909654 () Bool)

(declare-fun res!3139375 () Bool)

(assert (=> b!7909654 (=> (not res!3139375) (not e!4669061))))

(assert (=> b!7909654 (= res!3139375 (not (nullable!9501 (regex!8657 rule!156))))))

(declare-fun b!7909655 () Bool)

(assert (=> b!7909655 (= e!4669061 (not (= (tag!9521 rule!156) (String!83289 ""))))))

(assert (= (and d!2359929 res!3139374) b!7909654))

(assert (= (and b!7909654 res!3139375) b!7909655))

(assert (=> d!2359929 m!8283132))

(assert (=> b!7909654 m!8283176))

(assert (=> b!7909451 d!2359929))

(declare-fun b!7909684 () Bool)

(declare-fun res!3139399 () Bool)

(declare-fun e!4669082 () Bool)

(assert (=> b!7909684 (=> (not res!3139399) (not e!4669082))))

(assert (=> b!7909684 (= res!3139399 (isEmpty!42684 (tail!15707 (_1!38500 lt!2686021))))))

(declare-fun b!7909685 () Bool)

(declare-fun e!4669077 () Bool)

(declare-fun e!4669078 () Bool)

(assert (=> b!7909685 (= e!4669077 e!4669078)))

(declare-fun res!3139394 () Bool)

(assert (=> b!7909685 (=> res!3139394 e!4669078)))

(declare-fun call!733558 () Bool)

(assert (=> b!7909685 (= res!3139394 call!733558)))

(declare-fun b!7909686 () Bool)

(declare-fun res!3139396 () Bool)

(assert (=> b!7909686 (=> res!3139396 e!4669078)))

(assert (=> b!7909686 (= res!3139396 (not (isEmpty!42684 (tail!15707 (_1!38500 lt!2686021)))))))

(declare-fun b!7909687 () Bool)

(assert (=> b!7909687 (= e!4669078 (not (= (head!16164 (_1!38500 lt!2686021)) (c!1451067 (regex!8657 rule!156)))))))

(declare-fun b!7909688 () Bool)

(declare-fun e!4669080 () Bool)

(assert (=> b!7909688 (= e!4669080 (nullable!9501 (regex!8657 rule!156)))))

(declare-fun b!7909689 () Bool)

(assert (=> b!7909689 (= e!4669082 (= (head!16164 (_1!38500 lt!2686021)) (c!1451067 (regex!8657 rule!156))))))

(declare-fun b!7909690 () Bool)

(declare-fun e!4669079 () Bool)

(declare-fun lt!2686284 () Bool)

(assert (=> b!7909690 (= e!4669079 (= lt!2686284 call!733558))))

(declare-fun b!7909691 () Bool)

(declare-fun e!4669081 () Bool)

(assert (=> b!7909691 (= e!4669079 e!4669081)))

(declare-fun c!1451132 () Bool)

(assert (=> b!7909691 (= c!1451132 (is-EmptyLang!21360 (regex!8657 rule!156)))))

(declare-fun d!2359931 () Bool)

(assert (=> d!2359931 e!4669079))

(declare-fun c!1451133 () Bool)

(assert (=> d!2359931 (= c!1451133 (is-EmptyExpr!21360 (regex!8657 rule!156)))))

(assert (=> d!2359931 (= lt!2686284 e!4669080)))

(declare-fun c!1451134 () Bool)

(assert (=> d!2359931 (= c!1451134 (isEmpty!42684 (_1!38500 lt!2686021)))))

(assert (=> d!2359931 (validRegex!11666 (regex!8657 rule!156))))

(assert (=> d!2359931 (= (matchR!10681 (regex!8657 rule!156) (_1!38500 lt!2686021)) lt!2686284)))

(declare-fun b!7909692 () Bool)

(declare-fun e!4669076 () Bool)

(assert (=> b!7909692 (= e!4669076 e!4669077)))

(declare-fun res!3139398 () Bool)

(assert (=> b!7909692 (=> (not res!3139398) (not e!4669077))))

(assert (=> b!7909692 (= res!3139398 (not lt!2686284))))

(declare-fun b!7909693 () Bool)

(assert (=> b!7909693 (= e!4669080 (matchR!10681 (derivativeStep!6443 (regex!8657 rule!156) (head!16164 (_1!38500 lt!2686021))) (tail!15707 (_1!38500 lt!2686021))))))

(declare-fun bm!733553 () Bool)

(assert (=> bm!733553 (= call!733558 (isEmpty!42684 (_1!38500 lt!2686021)))))

(declare-fun b!7909694 () Bool)

(declare-fun res!3139397 () Bool)

(assert (=> b!7909694 (=> res!3139397 e!4669076)))

(assert (=> b!7909694 (= res!3139397 e!4669082)))

(declare-fun res!3139395 () Bool)

(assert (=> b!7909694 (=> (not res!3139395) (not e!4669082))))

(assert (=> b!7909694 (= res!3139395 lt!2686284)))

(declare-fun b!7909695 () Bool)

(declare-fun res!3139392 () Bool)

(assert (=> b!7909695 (=> (not res!3139392) (not e!4669082))))

(assert (=> b!7909695 (= res!3139392 (not call!733558))))

(declare-fun b!7909696 () Bool)

(declare-fun res!3139393 () Bool)

(assert (=> b!7909696 (=> res!3139393 e!4669076)))

(assert (=> b!7909696 (= res!3139393 (not (is-ElementMatch!21360 (regex!8657 rule!156))))))

(assert (=> b!7909696 (= e!4669081 e!4669076)))

(declare-fun b!7909697 () Bool)

(assert (=> b!7909697 (= e!4669081 (not lt!2686284))))

(assert (= (and d!2359931 c!1451134) b!7909688))

(assert (= (and d!2359931 (not c!1451134)) b!7909693))

(assert (= (and d!2359931 c!1451133) b!7909690))

(assert (= (and d!2359931 (not c!1451133)) b!7909691))

(assert (= (and b!7909691 c!1451132) b!7909697))

(assert (= (and b!7909691 (not c!1451132)) b!7909696))

(assert (= (and b!7909696 (not res!3139393)) b!7909694))

(assert (= (and b!7909694 res!3139395) b!7909695))

(assert (= (and b!7909695 res!3139392) b!7909684))

(assert (= (and b!7909684 res!3139399) b!7909689))

(assert (= (and b!7909694 (not res!3139397)) b!7909692))

(assert (= (and b!7909692 res!3139398) b!7909685))

(assert (= (and b!7909685 (not res!3139394)) b!7909686))

(assert (= (and b!7909686 (not res!3139396)) b!7909687))

(assert (= (or b!7909690 b!7909685 b!7909695) bm!733553))

(assert (=> b!7909688 m!8283176))

(assert (=> d!2359931 m!8283054))

(assert (=> d!2359931 m!8283132))

(declare-fun m!8283312 () Bool)

(assert (=> b!7909689 m!8283312))

(assert (=> bm!733553 m!8283054))

(declare-fun m!8283314 () Bool)

(assert (=> b!7909686 m!8283314))

(assert (=> b!7909686 m!8283314))

(declare-fun m!8283316 () Bool)

(assert (=> b!7909686 m!8283316))

(assert (=> b!7909687 m!8283312))

(assert (=> b!7909684 m!8283314))

(assert (=> b!7909684 m!8283314))

(assert (=> b!7909684 m!8283316))

(assert (=> b!7909693 m!8283312))

(assert (=> b!7909693 m!8283312))

(declare-fun m!8283318 () Bool)

(assert (=> b!7909693 m!8283318))

(assert (=> b!7909693 m!8283314))

(assert (=> b!7909693 m!8283318))

(assert (=> b!7909693 m!8283314))

(declare-fun m!8283320 () Bool)

(assert (=> b!7909693 m!8283320))

(assert (=> b!7909449 d!2359931))

(declare-fun d!2359933 () Bool)

(assert (=> d!2359933 (= (isDefined!14495 lt!2686020) (not (isEmpty!42685 lt!2686020)))))

(declare-fun bs!1968214 () Bool)

(assert (= bs!1968214 d!2359933))

(assert (=> bs!1968214 m!8283044))

(assert (=> b!7909455 d!2359933))

(declare-fun b!7909702 () Bool)

(declare-fun e!4669085 () Bool)

(declare-fun tp!2356276 () Bool)

(assert (=> b!7909702 (= e!4669085 (and tp_is_empty!53095 tp!2356276))))

(assert (=> b!7909452 (= tp!2356255 e!4669085)))

(assert (= (and b!7909452 (is-Cons!74352 (t!389829 input!1480))) b!7909702))

(declare-fun e!4669088 () Bool)

(assert (=> b!7909456 (= tp!2356257 e!4669088)))

(declare-fun b!7909716 () Bool)

(declare-fun tp!2356291 () Bool)

(declare-fun tp!2356289 () Bool)

(assert (=> b!7909716 (= e!4669088 (and tp!2356291 tp!2356289))))

(declare-fun b!7909713 () Bool)

(assert (=> b!7909713 (= e!4669088 tp_is_empty!53095)))

(declare-fun b!7909715 () Bool)

(declare-fun tp!2356288 () Bool)

(assert (=> b!7909715 (= e!4669088 tp!2356288)))

(declare-fun b!7909714 () Bool)

(declare-fun tp!2356287 () Bool)

(declare-fun tp!2356290 () Bool)

(assert (=> b!7909714 (= e!4669088 (and tp!2356287 tp!2356290))))

(assert (= (and b!7909456 (is-ElementMatch!21360 (regex!8657 rule!156))) b!7909713))

(assert (= (and b!7909456 (is-Concat!30334 (regex!8657 rule!156))) b!7909714))

(assert (= (and b!7909456 (is-Star!21360 (regex!8657 rule!156))) b!7909715))

(assert (= (and b!7909456 (is-Union!21360 (regex!8657 rule!156))) b!7909716))

(declare-fun b_lambda!289937 () Bool)

(assert (= b_lambda!289933 (or (and b!7909450 b_free!135173) b_lambda!289937)))

(declare-fun b_lambda!289939 () Bool)

(assert (= b_lambda!289935 (or (and b!7909450 b_free!135171) b_lambda!289939)))

(declare-fun b_lambda!289941 () Bool)

(assert (= b_lambda!289931 (or (and b!7909450 b_free!135171) b_lambda!289941)))

(push 1)

(assert (not b_lambda!289937))

(assert (not b!7909590))

(assert (not tb!263191))

(assert b_and!353427)

(assert (not d!2359915))

(assert (not b!7909580))

(assert (not b!7909654))

(assert (not b!7909687))

(assert b_and!353425)

(assert (not b!7909646))

(assert (not b!7909495))

(assert (not d!2359921))

(assert (not b!7909714))

(assert (not d!2359891))

(assert (not b_next!135963))

(assert tp_is_empty!53095)

(assert (not d!2359931))

(assert (not bm!733524))

(assert (not b!7909702))

(assert (not b_lambda!289939))

(assert (not d!2359933))

(assert (not b!7909693))

(assert (not b!7909689))

(assert (not b!7909579))

(assert (not bm!733523))

(assert (not bm!733522))

(assert (not bm!733525))

(assert (not d!2359913))

(assert (not d!2359929))

(assert (not b!7909688))

(assert (not bm!733520))

(assert (not bm!733526))

(assert (not b!7909686))

(assert (not tb!263193))

(assert (not bm!733519))

(assert (not b!7909578))

(assert (not bm!733521))

(assert (not b_next!135961))

(assert (not d!2359927))

(assert (not b!7909585))

(assert (not b_lambda!289941))

(assert (not bm!733553))

(assert (not b!7909684))

(assert (not b!7909592))

(assert (not d!2359907))

(assert (not b!7909649))

(assert (not d!2359879))

(assert (not b!7909715))

(assert (not b!7909716))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353427)

(assert b_and!353425)

(assert (not b_next!135961))

(assert (not b_next!135963))

(check-sat)

(pop 1)

