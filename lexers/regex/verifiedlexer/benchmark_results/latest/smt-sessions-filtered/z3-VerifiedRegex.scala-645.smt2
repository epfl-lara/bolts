; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22286 () Bool)

(assert start!22286)

(declare-fun b!207371 () Bool)

(declare-fun b_free!8009 () Bool)

(declare-fun b_next!8009 () Bool)

(assert (=> b!207371 (= b_free!8009 (not b_next!8009))))

(declare-fun tp!90910 () Bool)

(declare-fun b_and!14981 () Bool)

(assert (=> b!207371 (= tp!90910 b_and!14981)))

(declare-fun b_free!8011 () Bool)

(declare-fun b_next!8011 () Bool)

(assert (=> b!207371 (= b_free!8011 (not b_next!8011))))

(declare-fun tp!90908 () Bool)

(declare-fun b_and!14983 () Bool)

(assert (=> b!207371 (= tp!90908 b_and!14983)))

(declare-fun b!207326 () Bool)

(declare-fun b_free!8013 () Bool)

(declare-fun b_next!8013 () Bool)

(assert (=> b!207326 (= b_free!8013 (not b_next!8013))))

(declare-fun tp!90919 () Bool)

(declare-fun b_and!14985 () Bool)

(assert (=> b!207326 (= tp!90919 b_and!14985)))

(declare-fun b_free!8015 () Bool)

(declare-fun b_next!8015 () Bool)

(assert (=> b!207326 (= b_free!8015 (not b_next!8015))))

(declare-fun tp!90913 () Bool)

(declare-fun b_and!14987 () Bool)

(assert (=> b!207326 (= tp!90913 b_and!14987)))

(declare-fun b!207324 () Bool)

(declare-fun b_free!8017 () Bool)

(declare-fun b_next!8017 () Bool)

(assert (=> b!207324 (= b_free!8017 (not b_next!8017))))

(declare-fun tp!90911 () Bool)

(declare-fun b_and!14989 () Bool)

(assert (=> b!207324 (= tp!90911 b_and!14989)))

(declare-fun b_free!8019 () Bool)

(declare-fun b_next!8019 () Bool)

(assert (=> b!207324 (= b_free!8019 (not b_next!8019))))

(declare-fun tp!90914 () Bool)

(declare-fun b_and!14991 () Bool)

(assert (=> b!207324 (= tp!90914 b_and!14991)))

(declare-fun bs!21026 () Bool)

(declare-fun b!207370 () Bool)

(declare-fun b!207366 () Bool)

(assert (= bs!21026 (and b!207370 b!207366)))

(declare-fun lambda!6364 () Int)

(declare-fun lambda!6363 () Int)

(assert (=> bs!21026 (not (= lambda!6364 lambda!6363))))

(declare-fun b!207384 () Bool)

(declare-fun e!127731 () Bool)

(assert (=> b!207384 (= e!127731 true)))

(declare-fun b!207383 () Bool)

(declare-fun e!127730 () Bool)

(assert (=> b!207383 (= e!127730 e!127731)))

(declare-fun b!207382 () Bool)

(declare-fun e!127729 () Bool)

(assert (=> b!207382 (= e!127729 e!127730)))

(assert (=> b!207370 e!127729))

(assert (= b!207383 b!207384))

(assert (= b!207382 b!207383))

(declare-datatypes ((List!3317 0))(
  ( (Nil!3307) (Cons!3307 (h!8704 (_ BitVec 16)) (t!31061 List!3317)) )
))
(declare-datatypes ((TokenValue!635 0))(
  ( (FloatLiteralValue!1270 (text!4890 List!3317)) (TokenValueExt!634 (__x!2757 Int)) (Broken!3175 (value!21760 List!3317)) (Object!644) (End!635) (Def!635) (Underscore!635) (Match!635) (Else!635) (Error!635) (Case!635) (If!635) (Extends!635) (Abstract!635) (Class!635) (Val!635) (DelimiterValue!1270 (del!695 List!3317)) (KeywordValue!641 (value!21761 List!3317)) (CommentValue!1270 (value!21762 List!3317)) (WhitespaceValue!1270 (value!21763 List!3317)) (IndentationValue!635 (value!21764 List!3317)) (String!4254) (Int32!635) (Broken!3176 (value!21765 List!3317)) (Boolean!636) (Unit!3391) (OperatorValue!638 (op!695 List!3317)) (IdentifierValue!1270 (value!21766 List!3317)) (IdentifierValue!1271 (value!21767 List!3317)) (WhitespaceValue!1271 (value!21768 List!3317)) (True!1270) (False!1270) (Broken!3177 (value!21769 List!3317)) (Broken!3178 (value!21770 List!3317)) (True!1271) (RightBrace!635) (RightBracket!635) (Colon!635) (Null!635) (Comma!635) (LeftBracket!635) (False!1271) (LeftBrace!635) (ImaginaryLiteralValue!635 (text!4891 List!3317)) (StringLiteralValue!1905 (value!21771 List!3317)) (EOFValue!635 (value!21772 List!3317)) (IdentValue!635 (value!21773 List!3317)) (DelimiterValue!1271 (value!21774 List!3317)) (DedentValue!635 (value!21775 List!3317)) (NewLineValue!635 (value!21776 List!3317)) (IntegerValue!1905 (value!21777 (_ BitVec 32)) (text!4892 List!3317)) (IntegerValue!1906 (value!21778 Int) (text!4893 List!3317)) (Times!635) (Or!635) (Equal!635) (Minus!635) (Broken!3179 (value!21779 List!3317)) (And!635) (Div!635) (LessEqual!635) (Mod!635) (Concat!1472) (Not!635) (Plus!635) (SpaceValue!635 (value!21780 List!3317)) (IntegerValue!1907 (value!21781 Int) (text!4894 List!3317)) (StringLiteralValue!1906 (text!4895 List!3317)) (FloatLiteralValue!1271 (text!4896 List!3317)) (BytesLiteralValue!635 (value!21782 List!3317)) (CommentValue!1271 (value!21783 List!3317)) (StringLiteralValue!1907 (value!21784 List!3317)) (ErrorTokenValue!635 (msg!696 List!3317)) )
))
(declare-datatypes ((C!2596 0))(
  ( (C!2597 (val!1184 Int)) )
))
(declare-datatypes ((List!3318 0))(
  ( (Nil!3308) (Cons!3308 (h!8705 C!2596) (t!31062 List!3318)) )
))
(declare-datatypes ((IArray!2097 0))(
  ( (IArray!2098 (innerList!1106 List!3318)) )
))
(declare-datatypes ((Conc!1048 0))(
  ( (Node!1048 (left!2637 Conc!1048) (right!2967 Conc!1048) (csize!2326 Int) (cheight!1259 Int)) (Leaf!1694 (xs!3643 IArray!2097) (csize!2327 Int)) (Empty!1048) )
))
(declare-datatypes ((BalanceConc!2104 0))(
  ( (BalanceConc!2105 (c!39643 Conc!1048)) )
))
(declare-datatypes ((String!4255 0))(
  ( (String!4256 (value!21785 String)) )
))
(declare-datatypes ((TokenValueInjection!1042 0))(
  ( (TokenValueInjection!1043 (toValue!1296 Int) (toChars!1155 Int)) )
))
(declare-datatypes ((Regex!837 0))(
  ( (ElementMatch!837 (c!39644 C!2596)) (Concat!1473 (regOne!2186 Regex!837) (regTwo!2186 Regex!837)) (EmptyExpr!837) (Star!837 (reg!1166 Regex!837)) (EmptyLang!837) (Union!837 (regOne!2187 Regex!837) (regTwo!2187 Regex!837)) )
))
(declare-datatypes ((Rule!1026 0))(
  ( (Rule!1027 (regex!613 Regex!837) (tag!801 String!4255) (isSeparator!613 Bool) (transformation!613 TokenValueInjection!1042)) )
))
(declare-datatypes ((List!3319 0))(
  ( (Nil!3309) (Cons!3309 (h!8706 Rule!1026) (t!31063 List!3319)) )
))
(declare-fun rules!1920 () List!3319)

(get-info :version)

(assert (= (and b!207370 ((_ is Cons!3309) rules!1920)) b!207382))

(declare-fun order!2177 () Int)

(declare-fun order!2179 () Int)

(declare-fun dynLambda!1467 (Int Int) Int)

(declare-fun dynLambda!1468 (Int Int) Int)

(assert (=> b!207384 (< (dynLambda!1467 order!2177 (toValue!1296 (transformation!613 (h!8706 rules!1920)))) (dynLambda!1468 order!2179 lambda!6364))))

(declare-fun order!2181 () Int)

(declare-fun dynLambda!1469 (Int Int) Int)

(assert (=> b!207384 (< (dynLambda!1469 order!2181 (toChars!1155 (transformation!613 (h!8706 rules!1920)))) (dynLambda!1468 order!2179 lambda!6364))))

(assert (=> b!207370 true))

(declare-fun e!127697 () Bool)

(assert (=> b!207324 (= e!127697 (and tp!90911 tp!90914))))

(declare-fun b!207325 () Bool)

(declare-fun res!95242 () Bool)

(declare-fun e!127718 () Bool)

(assert (=> b!207325 (=> (not res!95242) (not e!127718))))

(declare-datatypes ((Token!970 0))(
  ( (Token!971 (value!21786 TokenValue!635) (rule!1140 Rule!1026) (size!2648 Int) (originalCharacters!656 List!3318)) )
))
(declare-datatypes ((List!3320 0))(
  ( (Nil!3310) (Cons!3310 (h!8707 Token!970) (t!31064 List!3320)) )
))
(declare-datatypes ((IArray!2099 0))(
  ( (IArray!2100 (innerList!1107 List!3320)) )
))
(declare-datatypes ((Conc!1049 0))(
  ( (Node!1049 (left!2638 Conc!1049) (right!2968 Conc!1049) (csize!2328 Int) (cheight!1260 Int)) (Leaf!1695 (xs!3644 IArray!2099) (csize!2329 Int)) (Empty!1049) )
))
(declare-datatypes ((BalanceConc!2106 0))(
  ( (BalanceConc!2107 (c!39645 Conc!1049)) )
))
(declare-datatypes ((tuple2!3466 0))(
  ( (tuple2!3467 (_1!1949 BalanceConc!2106) (_2!1949 BalanceConc!2104)) )
))
(declare-fun lt!75450 () tuple2!3466)

(declare-fun lt!75425 () Token!970)

(declare-fun apply!548 (BalanceConc!2106 Int) Token!970)

(assert (=> b!207325 (= res!95242 (= (apply!548 (_1!1949 lt!75450) 0) lt!75425))))

(declare-fun e!127717 () Bool)

(assert (=> b!207326 (= e!127717 (and tp!90919 tp!90913))))

(declare-fun b!207327 () Bool)

(declare-fun res!95243 () Bool)

(declare-fun e!127690 () Bool)

(assert (=> b!207327 (=> (not res!95243) (not e!127690))))

(declare-fun separatorToken!170 () Token!970)

(assert (=> b!207327 (= res!95243 (isSeparator!613 (rule!1140 separatorToken!170)))))

(declare-fun e!127693 () Bool)

(declare-fun e!127719 () Bool)

(declare-fun b!207328 () Bool)

(declare-fun tp!90915 () Bool)

(declare-fun inv!4145 (String!4255) Bool)

(declare-fun inv!4148 (TokenValueInjection!1042) Bool)

(assert (=> b!207328 (= e!127693 (and tp!90915 (inv!4145 (tag!801 (h!8706 rules!1920))) (inv!4148 (transformation!613 (h!8706 rules!1920))) e!127719))))

(declare-fun b!207329 () Bool)

(declare-fun e!127689 () Bool)

(assert (=> b!207329 (= e!127689 false)))

(declare-fun b!207330 () Bool)

(declare-fun res!95255 () Bool)

(assert (=> b!207330 (=> (not res!95255) (not e!127690))))

(declare-fun sepAndNonSepRulesDisjointChars!202 (List!3319 List!3319) Bool)

(assert (=> b!207330 (= res!95255 (sepAndNonSepRulesDisjointChars!202 rules!1920 rules!1920))))

(declare-fun tokens!465 () List!3320)

(declare-fun e!127700 () Bool)

(declare-fun b!207331 () Bool)

(declare-fun e!127705 () Bool)

(declare-fun tp!90916 () Bool)

(declare-fun inv!4149 (Token!970) Bool)

(assert (=> b!207331 (= e!127700 (and (inv!4149 (h!8707 tokens!465)) e!127705 tp!90916))))

(declare-fun b!207332 () Bool)

(declare-fun e!127699 () Bool)

(declare-fun e!127704 () Bool)

(assert (=> b!207332 (= e!127699 e!127704)))

(declare-fun res!95244 () Bool)

(assert (=> b!207332 (=> res!95244 e!127704)))

(declare-fun e!127716 () Bool)

(assert (=> b!207332 (= res!95244 e!127716)))

(declare-fun res!95241 () Bool)

(assert (=> b!207332 (=> (not res!95241) (not e!127716))))

(declare-fun lt!75451 () Bool)

(assert (=> b!207332 (= res!95241 (not lt!75451))))

(declare-fun lt!75447 () List!3318)

(declare-fun lt!75444 () List!3318)

(assert (=> b!207332 (= lt!75451 (= lt!75447 lt!75444))))

(declare-fun b!207333 () Bool)

(declare-fun res!95251 () Bool)

(declare-fun e!127695 () Bool)

(assert (=> b!207333 (=> res!95251 e!127695)))

(declare-fun forall!717 (List!3320 Int) Bool)

(assert (=> b!207333 (= res!95251 (not (forall!717 (t!31064 tokens!465) lambda!6363)))))

(declare-fun b!207334 () Bool)

(declare-fun isEmpty!1758 (BalanceConc!2104) Bool)

(assert (=> b!207334 (= e!127718 (isEmpty!1758 (_2!1949 lt!75450)))))

(declare-fun b!207335 () Bool)

(declare-fun e!127707 () Bool)

(declare-fun lt!75433 () Rule!1026)

(assert (=> b!207335 (= e!127707 (= (rule!1140 lt!75425) lt!75433))))

(declare-fun b!207336 () Bool)

(declare-datatypes ((Unit!3392 0))(
  ( (Unit!3393) )
))
(declare-fun e!127715 () Unit!3392)

(declare-fun Unit!3394 () Unit!3392)

(assert (=> b!207336 (= e!127715 Unit!3394)))

(declare-fun lt!75431 () C!2596)

(declare-fun lt!75454 () Unit!3392)

(declare-datatypes ((LexerInterface!499 0))(
  ( (LexerInterfaceExt!496 (__x!2758 Int)) (Lexer!497) )
))
(declare-fun thiss!17480 () LexerInterface!499)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!6 (LexerInterface!499 List!3319 List!3319 Rule!1026 Rule!1026 C!2596) Unit!3392)

(assert (=> b!207336 (= lt!75454 (lemmaSepRuleNotContainsCharContainedInANonSepRule!6 thiss!17480 rules!1920 rules!1920 (rule!1140 lt!75425) (rule!1140 separatorToken!170) lt!75431))))

(assert (=> b!207336 false))

(declare-fun b!207337 () Bool)

(declare-fun e!127686 () Bool)

(declare-fun e!127722 () Bool)

(assert (=> b!207337 (= e!127686 e!127722)))

(declare-fun res!95250 () Bool)

(assert (=> b!207337 (=> (not res!95250) (not e!127722))))

(declare-datatypes ((tuple2!3468 0))(
  ( (tuple2!3469 (_1!1950 Token!970) (_2!1950 List!3318)) )
))
(declare-datatypes ((Option!531 0))(
  ( (None!530) (Some!530 (v!14089 tuple2!3468)) )
))
(declare-fun lt!75416 () Option!531)

(declare-fun isDefined!382 (Option!531) Bool)

(assert (=> b!207337 (= res!95250 (isDefined!382 lt!75416))))

(declare-fun maxPrefix!229 (LexerInterface!499 List!3319 List!3318) Option!531)

(assert (=> b!207337 (= lt!75416 (maxPrefix!229 thiss!17480 rules!1920 lt!75447))))

(declare-fun b!207338 () Bool)

(declare-fun e!127713 () Bool)

(assert (=> b!207338 (= e!127713 e!127695)))

(declare-fun res!95248 () Bool)

(assert (=> b!207338 (=> res!95248 e!127695)))

(declare-fun lt!75440 () BalanceConc!2106)

(declare-fun rulesProduceEachTokenIndividually!291 (LexerInterface!499 List!3319 BalanceConc!2106) Bool)

(assert (=> b!207338 (= res!95248 (not (rulesProduceEachTokenIndividually!291 thiss!17480 rules!1920 lt!75440)))))

(declare-fun lt!75442 () Option!531)

(declare-fun lt!75409 () List!3318)

(assert (=> b!207338 (= lt!75442 (Some!530 (tuple2!3469 separatorToken!170 lt!75409)))))

(declare-fun lt!75415 () Unit!3392)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!4 (LexerInterface!499 List!3319 Token!970 Rule!1026 List!3318 Rule!1026) Unit!3392)

(assert (=> b!207338 (= lt!75415 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!4 thiss!17480 rules!1920 separatorToken!170 (rule!1140 separatorToken!170) lt!75409 (rule!1140 lt!75425)))))

(declare-fun lt!75449 () Unit!3392)

(assert (=> b!207338 (= lt!75449 e!127715)))

(declare-fun c!39641 () Bool)

(declare-fun contains!558 (List!3318 C!2596) Bool)

(declare-fun usedCharacters!18 (Regex!837) List!3318)

(assert (=> b!207338 (= c!39641 (contains!558 (usedCharacters!18 (regex!613 (rule!1140 separatorToken!170))) lt!75431))))

(declare-fun head!721 (List!3318) C!2596)

(assert (=> b!207338 (= lt!75431 (head!721 lt!75409))))

(declare-fun lt!75434 () Unit!3392)

(declare-fun e!127706 () Unit!3392)

(assert (=> b!207338 (= lt!75434 e!127706)))

(declare-fun c!39640 () Bool)

(declare-fun lt!75438 () C!2596)

(assert (=> b!207338 (= c!39640 (not (contains!558 (usedCharacters!18 (regex!613 (rule!1140 lt!75425))) lt!75438)))))

(declare-fun lt!75439 () List!3318)

(assert (=> b!207338 (= lt!75438 (head!721 lt!75439))))

(declare-fun e!127692 () Bool)

(assert (=> b!207338 e!127692))

(declare-fun res!95230 () Bool)

(assert (=> b!207338 (=> (not res!95230) (not e!127692))))

(declare-datatypes ((Option!532 0))(
  ( (None!531) (Some!531 (v!14090 Rule!1026)) )
))
(declare-fun lt!75445 () Option!532)

(declare-fun isDefined!383 (Option!532) Bool)

(assert (=> b!207338 (= res!95230 (isDefined!383 lt!75445))))

(declare-fun getRuleFromTag!54 (LexerInterface!499 List!3319 String!4255) Option!532)

(assert (=> b!207338 (= lt!75445 (getRuleFromTag!54 thiss!17480 rules!1920 (tag!801 (rule!1140 lt!75425))))))

(declare-fun lt!75408 () Unit!3392)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!54 (LexerInterface!499 List!3319 List!3318 Token!970) Unit!3392)

(assert (=> b!207338 (= lt!75408 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!54 thiss!17480 rules!1920 lt!75439 lt!75425))))

(declare-fun list!1231 (BalanceConc!2104) List!3318)

(declare-fun charsOf!268 (Token!970) BalanceConc!2104)

(assert (=> b!207338 (= lt!75439 (list!1231 (charsOf!268 lt!75425)))))

(declare-fun lt!75446 () Unit!3392)

(declare-fun forallContained!180 (List!3320 Int Token!970) Unit!3392)

(assert (=> b!207338 (= lt!75446 (forallContained!180 tokens!465 lambda!6364 lt!75425))))

(assert (=> b!207338 e!127718))

(declare-fun res!95239 () Bool)

(assert (=> b!207338 (=> (not res!95239) (not e!127718))))

(declare-fun size!2649 (BalanceConc!2106) Int)

(assert (=> b!207338 (= res!95239 (= (size!2649 (_1!1949 lt!75450)) 1))))

(declare-fun lt!75456 () BalanceConc!2104)

(declare-fun lex!299 (LexerInterface!499 List!3319 BalanceConc!2104) tuple2!3466)

(assert (=> b!207338 (= lt!75450 (lex!299 thiss!17480 rules!1920 lt!75456))))

(declare-fun lt!75422 () BalanceConc!2106)

(declare-fun printTailRec!193 (LexerInterface!499 BalanceConc!2106 Int BalanceConc!2104) BalanceConc!2104)

(assert (=> b!207338 (= lt!75456 (printTailRec!193 thiss!17480 lt!75422 0 (BalanceConc!2105 Empty!1048)))))

(declare-fun print!230 (LexerInterface!499 BalanceConc!2106) BalanceConc!2104)

(assert (=> b!207338 (= lt!75456 (print!230 thiss!17480 lt!75422))))

(declare-fun singletonSeq!165 (Token!970) BalanceConc!2106)

(assert (=> b!207338 (= lt!75422 (singletonSeq!165 lt!75425))))

(declare-fun e!127703 () Bool)

(assert (=> b!207338 e!127703))

(declare-fun res!95224 () Bool)

(assert (=> b!207338 (=> (not res!95224) (not e!127703))))

(declare-fun lt!75436 () Option!532)

(assert (=> b!207338 (= res!95224 (isDefined!383 lt!75436))))

(assert (=> b!207338 (= lt!75436 (getRuleFromTag!54 thiss!17480 rules!1920 (tag!801 (rule!1140 separatorToken!170))))))

(declare-fun lt!75421 () Unit!3392)

(declare-fun lt!75417 () List!3318)

(assert (=> b!207338 (= lt!75421 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!54 thiss!17480 rules!1920 lt!75417 separatorToken!170))))

(declare-fun e!127691 () Bool)

(assert (=> b!207338 e!127691))

(declare-fun res!95227 () Bool)

(assert (=> b!207338 (=> (not res!95227) (not e!127691))))

(declare-fun lt!75426 () tuple2!3466)

(assert (=> b!207338 (= res!95227 (= (size!2649 (_1!1949 lt!75426)) 1))))

(declare-fun lt!75413 () BalanceConc!2104)

(assert (=> b!207338 (= lt!75426 (lex!299 thiss!17480 rules!1920 lt!75413))))

(declare-fun lt!75428 () BalanceConc!2106)

(assert (=> b!207338 (= lt!75413 (printTailRec!193 thiss!17480 lt!75428 0 (BalanceConc!2105 Empty!1048)))))

(assert (=> b!207338 (= lt!75413 (print!230 thiss!17480 lt!75428))))

(assert (=> b!207338 (= lt!75428 (singletonSeq!165 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!248 (LexerInterface!499 List!3319 Token!970) Bool)

(assert (=> b!207338 (rulesProduceIndividualToken!248 thiss!17480 rules!1920 lt!75425)))

(declare-fun lt!75420 () Unit!3392)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!66 (LexerInterface!499 List!3319 List!3320 Token!970) Unit!3392)

(assert (=> b!207338 (= lt!75420 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!66 thiss!17480 rules!1920 tokens!465 lt!75425))))

(declare-fun head!722 (List!3320) Token!970)

(assert (=> b!207338 (= lt!75425 (head!722 (t!31064 tokens!465)))))

(declare-fun lt!75419 () Unit!3392)

(declare-fun e!127711 () Unit!3392)

(assert (=> b!207338 (= lt!75419 e!127711)))

(declare-fun c!39642 () Bool)

(declare-fun isEmpty!1759 (List!3320) Bool)

(assert (=> b!207338 (= c!39642 (isEmpty!1759 (t!31064 tokens!465)))))

(declare-fun lt!75418 () List!3318)

(assert (=> b!207338 (= lt!75442 (maxPrefix!229 thiss!17480 rules!1920 lt!75418))))

(declare-fun lt!75448 () tuple2!3468)

(assert (=> b!207338 (= lt!75418 (_2!1950 lt!75448))))

(declare-fun lt!75432 () Unit!3392)

(declare-fun lt!75414 () List!3318)

(declare-fun lemmaSamePrefixThenSameSuffix!134 (List!3318 List!3318 List!3318 List!3318 List!3318) Unit!3392)

(assert (=> b!207338 (= lt!75432 (lemmaSamePrefixThenSameSuffix!134 lt!75414 lt!75418 lt!75414 (_2!1950 lt!75448) lt!75447))))

(declare-fun get!997 (Option!531) tuple2!3468)

(assert (=> b!207338 (= lt!75448 (get!997 (maxPrefix!229 thiss!17480 rules!1920 lt!75447)))))

(declare-fun isPrefix!309 (List!3318 List!3318) Bool)

(assert (=> b!207338 (isPrefix!309 lt!75414 lt!75444)))

(declare-fun lt!75441 () Unit!3392)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!204 (List!3318 List!3318) Unit!3392)

(assert (=> b!207338 (= lt!75441 (lemmaConcatTwoListThenFirstIsPrefix!204 lt!75414 lt!75418))))

(assert (=> b!207338 e!127686))

(declare-fun res!95238 () Bool)

(assert (=> b!207338 (=> res!95238 e!127686)))

(assert (=> b!207338 (= res!95238 (isEmpty!1759 tokens!465))))

(declare-fun lt!75452 () Unit!3392)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!74 (LexerInterface!499 List!3319 List!3320 Token!970) Unit!3392)

(assert (=> b!207338 (= lt!75452 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!74 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207339 () Bool)

(declare-fun Unit!3395 () Unit!3392)

(assert (=> b!207339 (= e!127706 Unit!3395)))

(declare-fun lt!75435 () Unit!3392)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!12 (Regex!837 List!3318 C!2596) Unit!3392)

(assert (=> b!207339 (= lt!75435 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!12 (regex!613 (rule!1140 lt!75425)) lt!75439 lt!75438))))

(declare-fun res!95231 () Bool)

(declare-fun matchR!175 (Regex!837 List!3318) Bool)

(assert (=> b!207339 (= res!95231 (not (matchR!175 (regex!613 (rule!1140 lt!75425)) lt!75439)))))

(assert (=> b!207339 (=> (not res!95231) (not e!127689))))

(assert (=> b!207339 e!127689))

(declare-fun b!207340 () Bool)

(assert (=> b!207340 (= e!127695 (forall!717 (t!31064 tokens!465) lambda!6363))))

(declare-fun b!207341 () Bool)

(declare-fun Unit!3396 () Unit!3392)

(assert (=> b!207341 (= e!127706 Unit!3396)))

(declare-fun e!127709 () Bool)

(declare-fun tp!90909 () Bool)

(declare-fun b!207342 () Bool)

(assert (=> b!207342 (= e!127709 (and tp!90909 (inv!4145 (tag!801 (rule!1140 separatorToken!170))) (inv!4148 (transformation!613 (rule!1140 separatorToken!170))) e!127717))))

(declare-fun b!207343 () Bool)

(declare-fun res!95245 () Bool)

(declare-fun e!127687 () Bool)

(assert (=> b!207343 (=> (not res!95245) (not e!127687))))

(declare-fun rulesInvariant!465 (LexerInterface!499 List!3319) Bool)

(assert (=> b!207343 (= res!95245 (rulesInvariant!465 thiss!17480 rules!1920))))

(declare-fun b!207344 () Bool)

(declare-fun Unit!3397 () Unit!3392)

(assert (=> b!207344 (= e!127711 Unit!3397)))

(declare-fun b!207345 () Bool)

(assert (=> b!207345 (= e!127722 (= (_1!1950 (get!997 lt!75416)) (head!722 tokens!465)))))

(declare-fun b!207346 () Bool)

(declare-fun e!127714 () Bool)

(declare-fun tp!90917 () Bool)

(assert (=> b!207346 (= e!127714 (and e!127693 tp!90917))))

(declare-fun b!207347 () Bool)

(declare-fun res!95225 () Bool)

(declare-fun e!127720 () Bool)

(assert (=> b!207347 (=> (not res!95225) (not e!127720))))

(declare-fun lt!75427 () tuple2!3468)

(declare-fun isEmpty!1760 (List!3318) Bool)

(assert (=> b!207347 (= res!95225 (isEmpty!1760 (_2!1950 lt!75427)))))

(declare-fun b!207348 () Bool)

(declare-fun res!95252 () Bool)

(assert (=> b!207348 (=> (not res!95252) (not e!127691))))

(assert (=> b!207348 (= res!95252 (= (apply!548 (_1!1949 lt!75426) 0) separatorToken!170))))

(declare-fun b!207349 () Bool)

(assert (=> b!207349 (= e!127687 e!127690)))

(declare-fun res!95249 () Bool)

(assert (=> b!207349 (=> (not res!95249) (not e!127690))))

(declare-fun lt!75437 () BalanceConc!2106)

(assert (=> b!207349 (= res!95249 (rulesProduceEachTokenIndividually!291 thiss!17480 rules!1920 lt!75437))))

(declare-fun seqFromList!603 (List!3320) BalanceConc!2106)

(assert (=> b!207349 (= lt!75437 (seqFromList!603 tokens!465))))

(declare-fun b!207350 () Bool)

(declare-fun res!95226 () Bool)

(declare-fun e!127710 () Bool)

(assert (=> b!207350 (=> res!95226 e!127710)))

(assert (=> b!207350 (= res!95226 (not (rulesProduceIndividualToken!248 thiss!17480 rules!1920 (h!8707 tokens!465))))))

(declare-fun tp!90912 () Bool)

(declare-fun b!207351 () Bool)

(declare-fun e!127702 () Bool)

(declare-fun inv!21 (TokenValue!635) Bool)

(assert (=> b!207351 (= e!127702 (and (inv!21 (value!21786 separatorToken!170)) e!127709 tp!90912))))

(declare-fun b!207352 () Bool)

(assert (=> b!207352 (= e!127691 (isEmpty!1758 (_2!1949 lt!75426)))))

(declare-fun b!207353 () Bool)

(assert (=> b!207353 (= e!127720 (matchR!175 (regex!613 (rule!1140 (h!8707 tokens!465))) lt!75414))))

(declare-fun b!207354 () Bool)

(declare-fun e!127694 () Bool)

(assert (=> b!207354 (= e!127694 (not e!127699))))

(declare-fun res!95254 () Bool)

(assert (=> b!207354 (=> res!95254 e!127699)))

(declare-fun printWithSeparatorTokenWhenNeededRec!182 (LexerInterface!499 List!3319 BalanceConc!2106 Token!970 Int) BalanceConc!2104)

(assert (=> b!207354 (= res!95254 (not (= lt!75409 (list!1231 (printWithSeparatorTokenWhenNeededRec!182 thiss!17480 rules!1920 lt!75440 separatorToken!170 0)))))))

(assert (=> b!207354 (= lt!75440 (seqFromList!603 (t!31064 tokens!465)))))

(declare-fun lt!75411 () List!3318)

(assert (=> b!207354 (= lt!75411 lt!75444)))

(declare-fun ++!810 (List!3318 List!3318) List!3318)

(assert (=> b!207354 (= lt!75444 (++!810 lt!75414 lt!75418))))

(assert (=> b!207354 (= lt!75411 (++!810 (++!810 lt!75414 lt!75417) lt!75409))))

(declare-fun lt!75455 () Unit!3392)

(declare-fun lemmaConcatAssociativity!308 (List!3318 List!3318 List!3318) Unit!3392)

(assert (=> b!207354 (= lt!75455 (lemmaConcatAssociativity!308 lt!75414 lt!75417 lt!75409))))

(assert (=> b!207354 (= lt!75414 (list!1231 (charsOf!268 (h!8707 tokens!465))))))

(assert (=> b!207354 (= lt!75418 (++!810 lt!75417 lt!75409))))

(declare-fun printWithSeparatorTokenWhenNeededList!192 (LexerInterface!499 List!3319 List!3320 Token!970) List!3318)

(assert (=> b!207354 (= lt!75409 (printWithSeparatorTokenWhenNeededList!192 thiss!17480 rules!1920 (t!31064 tokens!465) separatorToken!170))))

(assert (=> b!207354 (= lt!75417 (list!1231 (charsOf!268 separatorToken!170)))))

(declare-fun b!207355 () Bool)

(declare-fun Unit!3398 () Unit!3392)

(assert (=> b!207355 (= e!127711 Unit!3398)))

(assert (=> b!207355 false))

(declare-fun b!207356 () Bool)

(declare-fun res!95234 () Bool)

(assert (=> b!207356 (=> (not res!95234) (not e!127694))))

(declare-fun lt!75453 () List!3318)

(declare-fun seqFromList!604 (List!3318) BalanceConc!2104)

(assert (=> b!207356 (= res!95234 (= (list!1231 (seqFromList!604 lt!75447)) lt!75453))))

(declare-fun b!207357 () Bool)

(declare-fun tp!90907 () Bool)

(declare-fun e!127712 () Bool)

(assert (=> b!207357 (= e!127705 (and (inv!21 (value!21786 (h!8707 tokens!465))) e!127712 tp!90907))))

(declare-fun b!207358 () Bool)

(declare-fun res!95246 () Bool)

(assert (=> b!207358 (=> (not res!95246) (not e!127687))))

(declare-fun isEmpty!1761 (List!3319) Bool)

(assert (=> b!207358 (= res!95246 (not (isEmpty!1761 rules!1920)))))

(declare-fun b!207359 () Bool)

(declare-fun e!127688 () Bool)

(assert (=> b!207359 (= e!127688 e!127713)))

(declare-fun res!95247 () Bool)

(assert (=> b!207359 (=> res!95247 e!127713)))

(assert (=> b!207359 (= res!95247 (not lt!75451))))

(assert (=> b!207359 e!127720))

(declare-fun res!95235 () Bool)

(assert (=> b!207359 (=> (not res!95235) (not e!127720))))

(assert (=> b!207359 (= res!95235 (= (_1!1950 lt!75427) (h!8707 tokens!465)))))

(declare-fun lt!75430 () Option!531)

(assert (=> b!207359 (= lt!75427 (get!997 lt!75430))))

(assert (=> b!207359 (isDefined!382 lt!75430)))

(assert (=> b!207359 (= lt!75430 (maxPrefix!229 thiss!17480 rules!1920 lt!75414))))

(declare-fun b!207360 () Bool)

(assert (=> b!207360 (= e!127692 e!127707)))

(declare-fun res!95223 () Bool)

(assert (=> b!207360 (=> (not res!95223) (not e!127707))))

(assert (=> b!207360 (= res!95223 (matchR!175 (regex!613 lt!75433) lt!75439))))

(declare-fun get!998 (Option!532) Rule!1026)

(assert (=> b!207360 (= lt!75433 (get!998 lt!75445))))

(declare-fun b!207361 () Bool)

(declare-fun e!127685 () Bool)

(declare-fun lt!75412 () Rule!1026)

(assert (=> b!207361 (= e!127685 (= (rule!1140 separatorToken!170) lt!75412))))

(declare-fun b!207362 () Bool)

(declare-fun Unit!3399 () Unit!3392)

(assert (=> b!207362 (= e!127715 Unit!3399)))

(declare-fun b!207363 () Bool)

(declare-fun res!95237 () Bool)

(assert (=> b!207363 (=> (not res!95237) (not e!127690))))

(assert (=> b!207363 (= res!95237 (rulesProduceIndividualToken!248 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!207364 () Bool)

(assert (=> b!207364 (= e!127690 e!127694)))

(declare-fun res!95236 () Bool)

(assert (=> b!207364 (=> (not res!95236) (not e!127694))))

(assert (=> b!207364 (= res!95236 (= lt!75447 lt!75453))))

(assert (=> b!207364 (= lt!75453 (list!1231 (printWithSeparatorTokenWhenNeededRec!182 thiss!17480 rules!1920 lt!75437 separatorToken!170 0)))))

(assert (=> b!207364 (= lt!75447 (printWithSeparatorTokenWhenNeededList!192 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207365 () Bool)

(assert (=> b!207365 (= e!127703 e!127685)))

(declare-fun res!95222 () Bool)

(assert (=> b!207365 (=> (not res!95222) (not e!127685))))

(assert (=> b!207365 (= res!95222 (matchR!175 (regex!613 lt!75412) lt!75417))))

(assert (=> b!207365 (= lt!75412 (get!998 lt!75436))))

(declare-fun res!95229 () Bool)

(assert (=> b!207366 (=> (not res!95229) (not e!127690))))

(assert (=> b!207366 (= res!95229 (forall!717 tokens!465 lambda!6363))))

(declare-fun b!207367 () Bool)

(declare-fun res!95233 () Bool)

(assert (=> b!207367 (=> res!95233 e!127710)))

(declare-fun isEmpty!1762 (BalanceConc!2106) Bool)

(assert (=> b!207367 (= res!95233 (isEmpty!1762 (_1!1949 (lex!299 thiss!17480 rules!1920 (seqFromList!604 lt!75414)))))))

(declare-fun res!95240 () Bool)

(assert (=> start!22286 (=> (not res!95240) (not e!127687))))

(assert (=> start!22286 (= res!95240 ((_ is Lexer!497) thiss!17480))))

(assert (=> start!22286 e!127687))

(assert (=> start!22286 true))

(assert (=> start!22286 e!127714))

(assert (=> start!22286 (and (inv!4149 separatorToken!170) e!127702)))

(assert (=> start!22286 e!127700))

(declare-fun b!207368 () Bool)

(assert (=> b!207368 (= e!127716 (not (= lt!75447 (++!810 lt!75414 lt!75409))))))

(declare-fun tp!90918 () Bool)

(declare-fun b!207369 () Bool)

(assert (=> b!207369 (= e!127712 (and tp!90918 (inv!4145 (tag!801 (rule!1140 (h!8707 tokens!465)))) (inv!4148 (transformation!613 (rule!1140 (h!8707 tokens!465)))) e!127697))))

(assert (=> b!207370 (= e!127710 e!127688)))

(declare-fun res!95232 () Bool)

(assert (=> b!207370 (=> res!95232 e!127688)))

(declare-datatypes ((tuple2!3470 0))(
  ( (tuple2!3471 (_1!1951 Token!970) (_2!1951 BalanceConc!2104)) )
))
(declare-datatypes ((Option!533 0))(
  ( (None!532) (Some!532 (v!14091 tuple2!3470)) )
))
(declare-fun isDefined!384 (Option!533) Bool)

(declare-fun maxPrefixZipperSequence!192 (LexerInterface!499 List!3319 BalanceConc!2104) Option!533)

(assert (=> b!207370 (= res!95232 (not (isDefined!384 (maxPrefixZipperSequence!192 thiss!17480 rules!1920 (seqFromList!604 (originalCharacters!656 (h!8707 tokens!465)))))))))

(declare-fun lt!75424 () Unit!3392)

(assert (=> b!207370 (= lt!75424 (forallContained!180 tokens!465 lambda!6364 (h!8707 tokens!465)))))

(assert (=> b!207370 (= lt!75414 (originalCharacters!656 (h!8707 tokens!465)))))

(assert (=> b!207371 (= e!127719 (and tp!90910 tp!90908))))

(declare-fun b!207372 () Bool)

(declare-fun res!95253 () Bool)

(assert (=> b!207372 (=> (not res!95253) (not e!127690))))

(assert (=> b!207372 (= res!95253 ((_ is Cons!3310) tokens!465))))

(declare-fun b!207373 () Bool)

(assert (=> b!207373 (= e!127704 e!127710)))

(declare-fun res!95228 () Bool)

(assert (=> b!207373 (=> res!95228 e!127710)))

(declare-fun lt!75443 () List!3318)

(declare-fun lt!75423 () List!3318)

(assert (=> b!207373 (= res!95228 (or (not (= lt!75423 lt!75443)) (not (= lt!75443 lt!75414)) (not (= lt!75423 lt!75414))))))

(declare-fun printList!183 (LexerInterface!499 List!3320) List!3318)

(assert (=> b!207373 (= lt!75443 (printList!183 thiss!17480 (Cons!3310 (h!8707 tokens!465) Nil!3310)))))

(declare-fun lt!75410 () BalanceConc!2104)

(assert (=> b!207373 (= lt!75423 (list!1231 lt!75410))))

(declare-fun lt!75429 () BalanceConc!2106)

(assert (=> b!207373 (= lt!75410 (printTailRec!193 thiss!17480 lt!75429 0 (BalanceConc!2105 Empty!1048)))))

(assert (=> b!207373 (= lt!75410 (print!230 thiss!17480 lt!75429))))

(assert (=> b!207373 (= lt!75429 (singletonSeq!165 (h!8707 tokens!465)))))

(assert (= (and start!22286 res!95240) b!207358))

(assert (= (and b!207358 res!95246) b!207343))

(assert (= (and b!207343 res!95245) b!207349))

(assert (= (and b!207349 res!95249) b!207363))

(assert (= (and b!207363 res!95237) b!207327))

(assert (= (and b!207327 res!95243) b!207366))

(assert (= (and b!207366 res!95229) b!207330))

(assert (= (and b!207330 res!95255) b!207372))

(assert (= (and b!207372 res!95253) b!207364))

(assert (= (and b!207364 res!95236) b!207356))

(assert (= (and b!207356 res!95234) b!207354))

(assert (= (and b!207354 (not res!95254)) b!207332))

(assert (= (and b!207332 res!95241) b!207368))

(assert (= (and b!207332 (not res!95244)) b!207373))

(assert (= (and b!207373 (not res!95228)) b!207350))

(assert (= (and b!207350 (not res!95226)) b!207367))

(assert (= (and b!207367 (not res!95233)) b!207370))

(assert (= (and b!207370 (not res!95232)) b!207359))

(assert (= (and b!207359 res!95235) b!207347))

(assert (= (and b!207347 res!95225) b!207353))

(assert (= (and b!207359 (not res!95247)) b!207338))

(assert (= (and b!207338 (not res!95238)) b!207337))

(assert (= (and b!207337 res!95250) b!207345))

(assert (= (and b!207338 c!39642) b!207355))

(assert (= (and b!207338 (not c!39642)) b!207344))

(assert (= (and b!207338 res!95227) b!207348))

(assert (= (and b!207348 res!95252) b!207352))

(assert (= (and b!207338 res!95224) b!207365))

(assert (= (and b!207365 res!95222) b!207361))

(assert (= (and b!207338 res!95239) b!207325))

(assert (= (and b!207325 res!95242) b!207334))

(assert (= (and b!207338 res!95230) b!207360))

(assert (= (and b!207360 res!95223) b!207335))

(assert (= (and b!207338 c!39640) b!207339))

(assert (= (and b!207338 (not c!39640)) b!207341))

(assert (= (and b!207339 res!95231) b!207329))

(assert (= (and b!207338 c!39641) b!207336))

(assert (= (and b!207338 (not c!39641)) b!207362))

(assert (= (and b!207338 (not res!95248)) b!207333))

(assert (= (and b!207333 (not res!95251)) b!207340))

(assert (= b!207328 b!207371))

(assert (= b!207346 b!207328))

(assert (= (and start!22286 ((_ is Cons!3309) rules!1920)) b!207346))

(assert (= b!207342 b!207326))

(assert (= b!207351 b!207342))

(assert (= start!22286 b!207351))

(assert (= b!207369 b!207324))

(assert (= b!207357 b!207369))

(assert (= b!207331 b!207357))

(assert (= (and start!22286 ((_ is Cons!3310) tokens!465)) b!207331))

(declare-fun m!228855 () Bool)

(assert (=> b!207338 m!228855))

(declare-fun m!228857 () Bool)

(assert (=> b!207338 m!228857))

(declare-fun m!228859 () Bool)

(assert (=> b!207338 m!228859))

(declare-fun m!228861 () Bool)

(assert (=> b!207338 m!228861))

(declare-fun m!228863 () Bool)

(assert (=> b!207338 m!228863))

(declare-fun m!228865 () Bool)

(assert (=> b!207338 m!228865))

(declare-fun m!228867 () Bool)

(assert (=> b!207338 m!228867))

(assert (=> b!207338 m!228859))

(declare-fun m!228869 () Bool)

(assert (=> b!207338 m!228869))

(declare-fun m!228871 () Bool)

(assert (=> b!207338 m!228871))

(declare-fun m!228873 () Bool)

(assert (=> b!207338 m!228873))

(declare-fun m!228875 () Bool)

(assert (=> b!207338 m!228875))

(declare-fun m!228877 () Bool)

(assert (=> b!207338 m!228877))

(declare-fun m!228879 () Bool)

(assert (=> b!207338 m!228879))

(declare-fun m!228881 () Bool)

(assert (=> b!207338 m!228881))

(declare-fun m!228883 () Bool)

(assert (=> b!207338 m!228883))

(declare-fun m!228885 () Bool)

(assert (=> b!207338 m!228885))

(declare-fun m!228887 () Bool)

(assert (=> b!207338 m!228887))

(declare-fun m!228889 () Bool)

(assert (=> b!207338 m!228889))

(declare-fun m!228891 () Bool)

(assert (=> b!207338 m!228891))

(declare-fun m!228893 () Bool)

(assert (=> b!207338 m!228893))

(declare-fun m!228895 () Bool)

(assert (=> b!207338 m!228895))

(declare-fun m!228897 () Bool)

(assert (=> b!207338 m!228897))

(declare-fun m!228899 () Bool)

(assert (=> b!207338 m!228899))

(declare-fun m!228901 () Bool)

(assert (=> b!207338 m!228901))

(declare-fun m!228903 () Bool)

(assert (=> b!207338 m!228903))

(declare-fun m!228905 () Bool)

(assert (=> b!207338 m!228905))

(declare-fun m!228907 () Bool)

(assert (=> b!207338 m!228907))

(declare-fun m!228909 () Bool)

(assert (=> b!207338 m!228909))

(declare-fun m!228911 () Bool)

(assert (=> b!207338 m!228911))

(declare-fun m!228913 () Bool)

(assert (=> b!207338 m!228913))

(assert (=> b!207338 m!228883))

(declare-fun m!228915 () Bool)

(assert (=> b!207338 m!228915))

(declare-fun m!228917 () Bool)

(assert (=> b!207338 m!228917))

(declare-fun m!228919 () Bool)

(assert (=> b!207338 m!228919))

(declare-fun m!228921 () Bool)

(assert (=> b!207338 m!228921))

(declare-fun m!228923 () Bool)

(assert (=> b!207338 m!228923))

(declare-fun m!228925 () Bool)

(assert (=> b!207338 m!228925))

(declare-fun m!228927 () Bool)

(assert (=> b!207338 m!228927))

(assert (=> b!207338 m!228903))

(declare-fun m!228929 () Bool)

(assert (=> b!207338 m!228929))

(declare-fun m!228931 () Bool)

(assert (=> b!207338 m!228931))

(assert (=> b!207338 m!228925))

(declare-fun m!228933 () Bool)

(assert (=> b!207348 m!228933))

(declare-fun m!228935 () Bool)

(assert (=> b!207368 m!228935))

(declare-fun m!228937 () Bool)

(assert (=> b!207356 m!228937))

(assert (=> b!207356 m!228937))

(declare-fun m!228939 () Bool)

(assert (=> b!207356 m!228939))

(declare-fun m!228941 () Bool)

(assert (=> b!207365 m!228941))

(declare-fun m!228943 () Bool)

(assert (=> b!207365 m!228943))

(declare-fun m!228945 () Bool)

(assert (=> b!207351 m!228945))

(declare-fun m!228947 () Bool)

(assert (=> b!207342 m!228947))

(declare-fun m!228949 () Bool)

(assert (=> b!207342 m!228949))

(declare-fun m!228951 () Bool)

(assert (=> b!207350 m!228951))

(declare-fun m!228953 () Bool)

(assert (=> b!207353 m!228953))

(declare-fun m!228955 () Bool)

(assert (=> b!207354 m!228955))

(declare-fun m!228957 () Bool)

(assert (=> b!207354 m!228957))

(declare-fun m!228959 () Bool)

(assert (=> b!207354 m!228959))

(declare-fun m!228961 () Bool)

(assert (=> b!207354 m!228961))

(declare-fun m!228963 () Bool)

(assert (=> b!207354 m!228963))

(assert (=> b!207354 m!228961))

(declare-fun m!228965 () Bool)

(assert (=> b!207354 m!228965))

(declare-fun m!228967 () Bool)

(assert (=> b!207354 m!228967))

(declare-fun m!228969 () Bool)

(assert (=> b!207354 m!228969))

(assert (=> b!207354 m!228965))

(declare-fun m!228971 () Bool)

(assert (=> b!207354 m!228971))

(declare-fun m!228973 () Bool)

(assert (=> b!207354 m!228973))

(declare-fun m!228975 () Bool)

(assert (=> b!207354 m!228975))

(assert (=> b!207354 m!228969))

(declare-fun m!228977 () Bool)

(assert (=> b!207354 m!228977))

(assert (=> b!207354 m!228971))

(declare-fun m!228979 () Bool)

(assert (=> b!207354 m!228979))

(declare-fun m!228981 () Bool)

(assert (=> b!207340 m!228981))

(declare-fun m!228983 () Bool)

(assert (=> b!207357 m!228983))

(declare-fun m!228985 () Bool)

(assert (=> b!207339 m!228985))

(declare-fun m!228987 () Bool)

(assert (=> b!207339 m!228987))

(declare-fun m!228989 () Bool)

(assert (=> b!207364 m!228989))

(assert (=> b!207364 m!228989))

(declare-fun m!228991 () Bool)

(assert (=> b!207364 m!228991))

(declare-fun m!228993 () Bool)

(assert (=> b!207364 m!228993))

(declare-fun m!228995 () Bool)

(assert (=> start!22286 m!228995))

(declare-fun m!228997 () Bool)

(assert (=> b!207370 m!228997))

(assert (=> b!207370 m!228997))

(declare-fun m!228999 () Bool)

(assert (=> b!207370 m!228999))

(assert (=> b!207370 m!228999))

(declare-fun m!229001 () Bool)

(assert (=> b!207370 m!229001))

(declare-fun m!229003 () Bool)

(assert (=> b!207370 m!229003))

(declare-fun m!229005 () Bool)

(assert (=> b!207349 m!229005))

(declare-fun m!229007 () Bool)

(assert (=> b!207349 m!229007))

(declare-fun m!229009 () Bool)

(assert (=> b!207337 m!229009))

(assert (=> b!207337 m!228883))

(declare-fun m!229011 () Bool)

(assert (=> b!207358 m!229011))

(declare-fun m!229013 () Bool)

(assert (=> b!207373 m!229013))

(declare-fun m!229015 () Bool)

(assert (=> b!207373 m!229015))

(declare-fun m!229017 () Bool)

(assert (=> b!207373 m!229017))

(declare-fun m!229019 () Bool)

(assert (=> b!207373 m!229019))

(declare-fun m!229021 () Bool)

(assert (=> b!207373 m!229021))

(declare-fun m!229023 () Bool)

(assert (=> b!207363 m!229023))

(declare-fun m!229025 () Bool)

(assert (=> b!207366 m!229025))

(declare-fun m!229027 () Bool)

(assert (=> b!207330 m!229027))

(assert (=> b!207333 m!228981))

(declare-fun m!229029 () Bool)

(assert (=> b!207336 m!229029))

(declare-fun m!229031 () Bool)

(assert (=> b!207334 m!229031))

(declare-fun m!229033 () Bool)

(assert (=> b!207367 m!229033))

(assert (=> b!207367 m!229033))

(declare-fun m!229035 () Bool)

(assert (=> b!207367 m!229035))

(declare-fun m!229037 () Bool)

(assert (=> b!207367 m!229037))

(declare-fun m!229039 () Bool)

(assert (=> b!207369 m!229039))

(declare-fun m!229041 () Bool)

(assert (=> b!207369 m!229041))

(declare-fun m!229043 () Bool)

(assert (=> b!207360 m!229043))

(declare-fun m!229045 () Bool)

(assert (=> b!207360 m!229045))

(declare-fun m!229047 () Bool)

(assert (=> b!207325 m!229047))

(declare-fun m!229049 () Bool)

(assert (=> b!207343 m!229049))

(declare-fun m!229051 () Bool)

(assert (=> b!207345 m!229051))

(declare-fun m!229053 () Bool)

(assert (=> b!207345 m!229053))

(declare-fun m!229055 () Bool)

(assert (=> b!207328 m!229055))

(declare-fun m!229057 () Bool)

(assert (=> b!207328 m!229057))

(declare-fun m!229059 () Bool)

(assert (=> b!207331 m!229059))

(declare-fun m!229061 () Bool)

(assert (=> b!207347 m!229061))

(declare-fun m!229063 () Bool)

(assert (=> b!207352 m!229063))

(declare-fun m!229065 () Bool)

(assert (=> b!207359 m!229065))

(declare-fun m!229067 () Bool)

(assert (=> b!207359 m!229067))

(declare-fun m!229069 () Bool)

(assert (=> b!207359 m!229069))

(check-sat (not b!207365) (not b!207359) (not b!207358) (not b!207363) (not b!207345) (not b!207351) (not b_next!8019) (not b!207325) (not b!207340) (not b!207356) (not b!207364) (not b!207343) (not b!207339) (not b!207349) (not b_next!8015) (not b!207367) (not b_next!8009) (not b!207360) (not b!207352) (not b!207357) (not b!207342) (not b!207366) (not b!207330) (not b!207347) (not b!207337) (not b!207348) (not b!207328) b_and!14983 (not b!207336) (not b_next!8011) (not start!22286) (not b!207346) b_and!14987 (not b!207334) (not b!207382) (not b!207350) (not b!207333) (not b!207354) b_and!14991 (not b!207369) (not b_next!8017) (not b!207373) (not b!207370) (not b!207368) (not b!207353) b_and!14981 (not b!207338) b_and!14989 (not b_next!8013) b_and!14985 (not b!207331))
(check-sat (not b_next!8015) (not b_next!8009) b_and!14987 b_and!14991 (not b_next!8017) (not b_next!8019) b_and!14981 b_and!14985 b_and!14983 (not b_next!8011) b_and!14989 (not b_next!8013))
