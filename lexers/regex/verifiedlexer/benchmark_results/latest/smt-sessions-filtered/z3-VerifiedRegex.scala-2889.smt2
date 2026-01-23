; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168670 () Bool)

(assert start!168670)

(declare-fun b!1721351 () Bool)

(declare-fun b_free!46931 () Bool)

(declare-fun b_next!47635 () Bool)

(assert (=> b!1721351 (= b_free!46931 (not b_next!47635))))

(declare-fun tp!491531 () Bool)

(declare-fun b_and!125759 () Bool)

(assert (=> b!1721351 (= tp!491531 b_and!125759)))

(declare-fun b_free!46933 () Bool)

(declare-fun b_next!47637 () Bool)

(assert (=> b!1721351 (= b_free!46933 (not b_next!47637))))

(declare-fun tp!491525 () Bool)

(declare-fun b_and!125761 () Bool)

(assert (=> b!1721351 (= tp!491525 b_and!125761)))

(declare-fun b!1721352 () Bool)

(declare-fun b_free!46935 () Bool)

(declare-fun b_next!47639 () Bool)

(assert (=> b!1721352 (= b_free!46935 (not b_next!47639))))

(declare-fun tp!491528 () Bool)

(declare-fun b_and!125763 () Bool)

(assert (=> b!1721352 (= tp!491528 b_and!125763)))

(declare-fun b_free!46937 () Bool)

(declare-fun b_next!47641 () Bool)

(assert (=> b!1721352 (= b_free!46937 (not b_next!47641))))

(declare-fun tp!491535 () Bool)

(declare-fun b_and!125765 () Bool)

(assert (=> b!1721352 (= tp!491535 b_and!125765)))

(declare-fun b!1721350 () Bool)

(declare-fun b_free!46939 () Bool)

(declare-fun b_next!47643 () Bool)

(assert (=> b!1721350 (= b_free!46939 (not b_next!47643))))

(declare-fun tp!491526 () Bool)

(declare-fun b_and!125767 () Bool)

(assert (=> b!1721350 (= tp!491526 b_and!125767)))

(declare-fun b_free!46941 () Bool)

(declare-fun b_next!47645 () Bool)

(assert (=> b!1721350 (= b_free!46941 (not b_next!47645))))

(declare-fun tp!491529 () Bool)

(declare-fun b_and!125769 () Bool)

(assert (=> b!1721350 (= tp!491529 b_and!125769)))

(declare-fun b!1721376 () Bool)

(declare-fun e!1101087 () Bool)

(assert (=> b!1721376 (= e!1101087 true)))

(declare-fun b!1721375 () Bool)

(declare-fun e!1101086 () Bool)

(assert (=> b!1721375 (= e!1101086 e!1101087)))

(declare-fun b!1721374 () Bool)

(declare-fun e!1101085 () Bool)

(assert (=> b!1721374 (= e!1101085 e!1101086)))

(declare-fun b!1721356 () Bool)

(assert (=> b!1721356 e!1101085))

(assert (= b!1721375 b!1721376))

(assert (= b!1721374 b!1721375))

(assert (= b!1721356 b!1721374))

(declare-fun order!11489 () Int)

(declare-datatypes ((List!18912 0))(
  ( (Nil!18842) (Cons!18842 (h!24243 (_ BitVec 16)) (t!159551 List!18912)) )
))
(declare-datatypes ((TokenValue!3429 0))(
  ( (FloatLiteralValue!6858 (text!24448 List!18912)) (TokenValueExt!3428 (__x!12160 Int)) (Broken!17145 (value!104808 List!18912)) (Object!3498) (End!3429) (Def!3429) (Underscore!3429) (Match!3429) (Else!3429) (Error!3429) (Case!3429) (If!3429) (Extends!3429) (Abstract!3429) (Class!3429) (Val!3429) (DelimiterValue!6858 (del!3489 List!18912)) (KeywordValue!3435 (value!104809 List!18912)) (CommentValue!6858 (value!104810 List!18912)) (WhitespaceValue!6858 (value!104811 List!18912)) (IndentationValue!3429 (value!104812 List!18912)) (String!21476) (Int32!3429) (Broken!17146 (value!104813 List!18912)) (Boolean!3430) (Unit!32682) (OperatorValue!3432 (op!3489 List!18912)) (IdentifierValue!6858 (value!104814 List!18912)) (IdentifierValue!6859 (value!104815 List!18912)) (WhitespaceValue!6859 (value!104816 List!18912)) (True!6858) (False!6858) (Broken!17147 (value!104817 List!18912)) (Broken!17148 (value!104818 List!18912)) (True!6859) (RightBrace!3429) (RightBracket!3429) (Colon!3429) (Null!3429) (Comma!3429) (LeftBracket!3429) (False!6859) (LeftBrace!3429) (ImaginaryLiteralValue!3429 (text!24449 List!18912)) (StringLiteralValue!10287 (value!104819 List!18912)) (EOFValue!3429 (value!104820 List!18912)) (IdentValue!3429 (value!104821 List!18912)) (DelimiterValue!6859 (value!104822 List!18912)) (DedentValue!3429 (value!104823 List!18912)) (NewLineValue!3429 (value!104824 List!18912)) (IntegerValue!10287 (value!104825 (_ BitVec 32)) (text!24450 List!18912)) (IntegerValue!10288 (value!104826 Int) (text!24451 List!18912)) (Times!3429) (Or!3429) (Equal!3429) (Minus!3429) (Broken!17149 (value!104827 List!18912)) (And!3429) (Div!3429) (LessEqual!3429) (Mod!3429) (Concat!8096) (Not!3429) (Plus!3429) (SpaceValue!3429 (value!104828 List!18912)) (IntegerValue!10289 (value!104829 Int) (text!24452 List!18912)) (StringLiteralValue!10288 (text!24453 List!18912)) (FloatLiteralValue!6859 (text!24454 List!18912)) (BytesLiteralValue!3429 (value!104830 List!18912)) (CommentValue!6859 (value!104831 List!18912)) (StringLiteralValue!10289 (value!104832 List!18912)) (ErrorTokenValue!3429 (msg!3490 List!18912)) )
))
(declare-datatypes ((C!9508 0))(
  ( (C!9509 (val!5350 Int)) )
))
(declare-datatypes ((List!18913 0))(
  ( (Nil!18843) (Cons!18843 (h!24244 C!9508) (t!159552 List!18913)) )
))
(declare-datatypes ((Regex!4667 0))(
  ( (ElementMatch!4667 (c!281622 C!9508)) (Concat!8097 (regOne!9846 Regex!4667) (regTwo!9846 Regex!4667)) (EmptyExpr!4667) (Star!4667 (reg!4996 Regex!4667)) (EmptyLang!4667) (Union!4667 (regOne!9847 Regex!4667) (regTwo!9847 Regex!4667)) )
))
(declare-datatypes ((String!21477 0))(
  ( (String!21478 (value!104833 String)) )
))
(declare-datatypes ((IArray!12539 0))(
  ( (IArray!12540 (innerList!6327 List!18913)) )
))
(declare-datatypes ((Conc!6267 0))(
  ( (Node!6267 (left!15038 Conc!6267) (right!15368 Conc!6267) (csize!12764 Int) (cheight!6478 Int)) (Leaf!9157 (xs!9143 IArray!12539) (csize!12765 Int)) (Empty!6267) )
))
(declare-datatypes ((BalanceConc!12478 0))(
  ( (BalanceConc!12479 (c!281623 Conc!6267)) )
))
(declare-datatypes ((TokenValueInjection!6518 0))(
  ( (TokenValueInjection!6519 (toValue!4846 Int) (toChars!4705 Int)) )
))
(declare-datatypes ((Rule!6478 0))(
  ( (Rule!6479 (regex!3339 Regex!4667) (tag!3649 String!21477) (isSeparator!3339 Bool) (transformation!3339 TokenValueInjection!6518)) )
))
(declare-datatypes ((Token!6244 0))(
  ( (Token!6245 (value!104834 TokenValue!3429) (rule!5285 Rule!6478) (size!14974 Int) (originalCharacters!4153 List!18913)) )
))
(declare-datatypes ((tuple2!18534 0))(
  ( (tuple2!18535 (_1!10669 Token!6244) (_2!10669 List!18913)) )
))
(declare-fun lt!658542 () tuple2!18534)

(declare-fun lambda!69122 () Int)

(declare-fun order!11487 () Int)

(declare-fun dynLambda!8682 (Int Int) Int)

(declare-fun dynLambda!8683 (Int Int) Int)

(assert (=> b!1721376 (< (dynLambda!8682 order!11487 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8683 order!11489 lambda!69122))))

(declare-fun order!11491 () Int)

(declare-fun dynLambda!8684 (Int Int) Int)

(assert (=> b!1721376 (< (dynLambda!8684 order!11491 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8683 order!11489 lambda!69122))))

(declare-fun b!1721337 () Bool)

(declare-fun e!1101069 () Bool)

(declare-fun e!1101060 () Bool)

(assert (=> b!1721337 (= e!1101069 e!1101060)))

(declare-fun res!772300 () Bool)

(assert (=> b!1721337 (=> res!772300 e!1101060)))

(declare-fun suffix!1421 () List!18913)

(declare-fun lt!658538 () Regex!4667)

(declare-fun lt!658528 () List!18913)

(declare-fun prefixMatch!552 (Regex!4667 List!18913) Bool)

(declare-fun ++!5164 (List!18913 List!18913) List!18913)

(declare-fun head!3892 (List!18913) C!9508)

(assert (=> b!1721337 (= res!772300 (prefixMatch!552 lt!658538 (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843))))))

(declare-datatypes ((LexerInterface!2968 0))(
  ( (LexerInterfaceExt!2965 (__x!12161 Int)) (Lexer!2966) )
))
(declare-fun thiss!24550 () LexerInterface!2968)

(declare-datatypes ((List!18914 0))(
  ( (Nil!18844) (Cons!18844 (h!24245 Rule!6478) (t!159553 List!18914)) )
))
(declare-fun rules!3447 () List!18914)

(declare-fun rulesRegex!697 (LexerInterface!2968 List!18914) Regex!4667)

(assert (=> b!1721337 (= lt!658538 (rulesRegex!697 thiss!24550 rules!3447))))

(declare-fun b!1721338 () Bool)

(declare-fun e!1101077 () Bool)

(declare-fun e!1101059 () Bool)

(declare-fun tp!491533 () Bool)

(assert (=> b!1721338 (= e!1101077 (and e!1101059 tp!491533))))

(declare-fun b!1721339 () Bool)

(declare-fun e!1101057 () Bool)

(declare-fun lt!658537 () Rule!6478)

(assert (=> b!1721339 (= e!1101057 (= (rule!5285 (_1!10669 lt!658542)) lt!658537))))

(declare-fun tp!491532 () Bool)

(declare-fun e!1101062 () Bool)

(declare-fun e!1101078 () Bool)

(declare-fun token!523 () Token!6244)

(declare-fun b!1721340 () Bool)

(declare-fun inv!24334 (String!21477) Bool)

(declare-fun inv!24339 (TokenValueInjection!6518) Bool)

(assert (=> b!1721340 (= e!1101062 (and tp!491532 (inv!24334 (tag!3649 (rule!5285 token!523))) (inv!24339 (transformation!3339 (rule!5285 token!523))) e!1101078))))

(declare-fun b!1721341 () Bool)

(declare-fun e!1101067 () Bool)

(declare-fun tp_is_empty!7577 () Bool)

(declare-fun tp!491530 () Bool)

(assert (=> b!1721341 (= e!1101067 (and tp_is_empty!7577 tp!491530))))

(declare-fun b!1721342 () Bool)

(declare-fun e!1101063 () Bool)

(declare-fun e!1101070 () Bool)

(assert (=> b!1721342 (= e!1101063 e!1101070)))

(declare-fun res!772302 () Bool)

(assert (=> b!1721342 (=> res!772302 e!1101070)))

(declare-datatypes ((Option!3702 0))(
  ( (None!3701) (Some!3701 (v!25104 tuple2!18534)) )
))
(declare-fun lt!658534 () Option!3702)

(declare-fun lt!658523 () List!18913)

(declare-fun lt!658539 () BalanceConc!12478)

(declare-fun apply!5144 (TokenValueInjection!6518 BalanceConc!12478) TokenValue!3429)

(declare-fun size!14975 (BalanceConc!12478) Int)

(assert (=> b!1721342 (= res!772302 (not (= lt!658534 (Some!3701 (tuple2!18535 (Token!6245 (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539) (rule!5285 (_1!10669 lt!658542)) (size!14975 lt!658539) lt!658523) (_2!10669 lt!658542))))))))

(declare-datatypes ((Unit!32683 0))(
  ( (Unit!32684) )
))
(declare-fun lt!658540 () Unit!32683)

(declare-fun lemmaCharactersSize!411 (Token!6244) Unit!32683)

(assert (=> b!1721342 (= lt!658540 (lemmaCharactersSize!411 (_1!10669 lt!658542)))))

(declare-fun lt!658536 () Unit!32683)

(declare-fun lemmaEqSameImage!264 (TokenValueInjection!6518 BalanceConc!12478 BalanceConc!12478) Unit!32683)

(declare-fun seqFromList!2313 (List!18913) BalanceConc!12478)

(assert (=> b!1721342 (= lt!658536 (lemmaEqSameImage!264 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539 (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542)))))))

(declare-fun b!1721343 () Bool)

(declare-fun e!1101071 () Bool)

(declare-fun e!1101066 () Bool)

(assert (=> b!1721343 (= e!1101071 e!1101066)))

(declare-fun res!772301 () Bool)

(assert (=> b!1721343 (=> (not res!772301) (not e!1101066))))

(declare-fun lt!658531 () tuple2!18534)

(assert (=> b!1721343 (= res!772301 (= (_1!10669 lt!658531) token!523))))

(declare-fun lt!658533 () Option!3702)

(declare-fun get!5589 (Option!3702) tuple2!18534)

(assert (=> b!1721343 (= lt!658531 (get!5589 lt!658533))))

(declare-fun b!1721344 () Bool)

(declare-fun res!772304 () Bool)

(assert (=> b!1721344 (=> (not res!772304) (not e!1101066))))

(declare-fun rule!422 () Rule!6478)

(assert (=> b!1721344 (= res!772304 (= (rule!5285 token!523) rule!422))))

(declare-fun b!1721346 () Bool)

(declare-fun res!772294 () Bool)

(assert (=> b!1721346 (=> res!772294 e!1101069)))

(declare-fun isEmpty!11849 (List!18913) Bool)

(assert (=> b!1721346 (= res!772294 (isEmpty!11849 suffix!1421))))

(declare-fun b!1721347 () Bool)

(declare-fun tp!491536 () Bool)

(declare-fun e!1101072 () Bool)

(declare-fun e!1101055 () Bool)

(assert (=> b!1721347 (= e!1101072 (and tp!491536 (inv!24334 (tag!3649 rule!422)) (inv!24339 (transformation!3339 rule!422)) e!1101055))))

(declare-fun b!1721348 () Bool)

(declare-fun e!1101068 () Bool)

(assert (=> b!1721348 (= e!1101068 e!1101063)))

(declare-fun res!772298 () Bool)

(assert (=> b!1721348 (=> res!772298 e!1101063)))

(declare-fun list!7612 (BalanceConc!12478) List!18913)

(declare-fun dynLambda!8685 (Int TokenValue!3429) BalanceConc!12478)

(declare-fun dynLambda!8686 (Int BalanceConc!12478) TokenValue!3429)

(assert (=> b!1721348 (= res!772298 (not (= (list!7612 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))) lt!658523)))))

(declare-fun lt!658545 () Unit!32683)

(declare-fun lemmaSemiInverse!485 (TokenValueInjection!6518 BalanceConc!12478) Unit!32683)

(assert (=> b!1721348 (= lt!658545 (lemmaSemiInverse!485 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539))))

(declare-fun b!1721349 () Bool)

(declare-fun e!1101065 () Bool)

(declare-fun rulesValidInductive!1106 (LexerInterface!2968 List!18914) Bool)

(assert (=> b!1721349 (= e!1101065 (rulesValidInductive!1106 thiss!24550 rules!3447))))

(declare-fun matchR!2141 (Regex!4667 List!18913) Bool)

(assert (=> b!1721349 (matchR!2141 lt!658538 lt!658528)))

(declare-fun lt!658520 () Unit!32683)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!88 (LexerInterface!2968 List!18914 List!18913 Token!6244 Rule!6478 List!18913) Unit!32683)

(assert (=> b!1721349 (= lt!658520 (lemmaMaxPrefixThenMatchesRulesRegex!88 thiss!24550 rules!3447 lt!658528 token!523 rule!422 Nil!18843))))

(assert (=> b!1721350 (= e!1101078 (and tp!491526 tp!491529))))

(declare-fun e!1101064 () Bool)

(assert (=> b!1721351 (= e!1101064 (and tp!491531 tp!491525))))

(assert (=> b!1721352 (= e!1101055 (and tp!491528 tp!491535))))

(declare-fun b!1721353 () Bool)

(declare-fun e!1101073 () Bool)

(assert (=> b!1721353 (= e!1101060 e!1101073)))

(declare-fun res!772299 () Bool)

(assert (=> b!1721353 (=> res!772299 e!1101073)))

(declare-fun lt!658532 () List!18913)

(declare-fun isPrefix!1580 (List!18913 List!18913) Bool)

(assert (=> b!1721353 (= res!772299 (not (isPrefix!1580 lt!658523 lt!658532)))))

(assert (=> b!1721353 (isPrefix!1580 lt!658523 (++!5164 lt!658523 (_2!10669 lt!658542)))))

(declare-fun lt!658529 () Unit!32683)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1090 (List!18913 List!18913) Unit!32683)

(assert (=> b!1721353 (= lt!658529 (lemmaConcatTwoListThenFirstIsPrefix!1090 lt!658523 (_2!10669 lt!658542)))))

(assert (=> b!1721353 (= lt!658523 (list!7612 lt!658539))))

(declare-fun charsOf!1988 (Token!6244) BalanceConc!12478)

(assert (=> b!1721353 (= lt!658539 (charsOf!1988 (_1!10669 lt!658542)))))

(declare-fun e!1101074 () Bool)

(assert (=> b!1721353 e!1101074))

(declare-fun res!772290 () Bool)

(assert (=> b!1721353 (=> (not res!772290) (not e!1101074))))

(declare-datatypes ((Option!3703 0))(
  ( (None!3702) (Some!3702 (v!25105 Rule!6478)) )
))
(declare-fun lt!658530 () Option!3703)

(declare-fun isDefined!3045 (Option!3703) Bool)

(assert (=> b!1721353 (= res!772290 (isDefined!3045 lt!658530))))

(declare-fun getRuleFromTag!389 (LexerInterface!2968 List!18914 String!21477) Option!3703)

(assert (=> b!1721353 (= lt!658530 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun lt!658527 () Unit!32683)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!389 (LexerInterface!2968 List!18914 List!18913 Token!6244) Unit!32683)

(assert (=> b!1721353 (= lt!658527 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!389 thiss!24550 rules!3447 lt!658532 (_1!10669 lt!658542)))))

(assert (=> b!1721353 (= lt!658542 (get!5589 lt!658534))))

(declare-fun lt!658525 () Unit!32683)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!492 (LexerInterface!2968 List!18914 List!18913 List!18913) Unit!32683)

(assert (=> b!1721353 (= lt!658525 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!492 thiss!24550 rules!3447 lt!658528 suffix!1421))))

(declare-fun maxPrefix!1522 (LexerInterface!2968 List!18914 List!18913) Option!3702)

(assert (=> b!1721353 (= lt!658534 (maxPrefix!1522 thiss!24550 rules!3447 lt!658532))))

(assert (=> b!1721353 (isPrefix!1580 lt!658528 lt!658532)))

(declare-fun lt!658544 () Unit!32683)

(assert (=> b!1721353 (= lt!658544 (lemmaConcatTwoListThenFirstIsPrefix!1090 lt!658528 suffix!1421))))

(assert (=> b!1721353 (= lt!658532 (++!5164 lt!658528 suffix!1421))))

(declare-fun tp!491534 () Bool)

(declare-fun b!1721354 () Bool)

(assert (=> b!1721354 (= e!1101059 (and tp!491534 (inv!24334 (tag!3649 (h!24245 rules!3447))) (inv!24339 (transformation!3339 (h!24245 rules!3447))) e!1101064))))

(declare-fun b!1721355 () Bool)

(assert (=> b!1721355 (= e!1101066 (not e!1101069))))

(declare-fun res!772293 () Bool)

(assert (=> b!1721355 (=> res!772293 e!1101069)))

(assert (=> b!1721355 (= res!772293 (not (matchR!2141 (regex!3339 rule!422) lt!658528)))))

(declare-fun ruleValid!838 (LexerInterface!2968 Rule!6478) Bool)

(assert (=> b!1721355 (ruleValid!838 thiss!24550 rule!422)))

(declare-fun lt!658541 () Unit!32683)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!362 (LexerInterface!2968 Rule!6478 List!18914) Unit!32683)

(assert (=> b!1721355 (= lt!658541 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!362 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1721356 (= e!1101073 e!1101068)))

(declare-fun res!772285 () Bool)

(assert (=> b!1721356 (=> res!772285 e!1101068)))

(declare-fun Forall!714 (Int) Bool)

(assert (=> b!1721356 (= res!772285 (not (Forall!714 lambda!69122)))))

(declare-fun lt!658546 () Unit!32683)

(declare-fun lemmaInv!546 (TokenValueInjection!6518) Unit!32683)

(assert (=> b!1721356 (= lt!658546 (lemmaInv!546 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun b!1721357 () Bool)

(declare-fun e!1101054 () Bool)

(assert (=> b!1721357 (= e!1101054 e!1101071)))

(declare-fun res!772289 () Bool)

(assert (=> b!1721357 (=> (not res!772289) (not e!1101071))))

(declare-fun isDefined!3046 (Option!3702) Bool)

(assert (=> b!1721357 (= res!772289 (isDefined!3046 lt!658533))))

(assert (=> b!1721357 (= lt!658533 (maxPrefix!1522 thiss!24550 rules!3447 lt!658528))))

(assert (=> b!1721357 (= lt!658528 (list!7612 (charsOf!1988 token!523)))))

(declare-fun b!1721358 () Bool)

(declare-fun res!772287 () Bool)

(assert (=> b!1721358 (=> res!772287 e!1101063)))

(assert (=> b!1721358 (= res!772287 (not (= lt!658539 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))))

(declare-fun b!1721359 () Bool)

(declare-fun res!772286 () Bool)

(assert (=> b!1721359 (=> (not res!772286) (not e!1101066))))

(assert (=> b!1721359 (= res!772286 (isEmpty!11849 (_2!10669 lt!658531)))))

(declare-fun b!1721360 () Bool)

(declare-fun res!772303 () Bool)

(assert (=> b!1721360 (=> (not res!772303) (not e!1101054))))

(declare-fun contains!3361 (List!18914 Rule!6478) Bool)

(assert (=> b!1721360 (= res!772303 (contains!3361 rules!3447 rule!422))))

(declare-fun b!1721361 () Bool)

(assert (=> b!1721361 (= e!1101070 e!1101065)))

(declare-fun res!772296 () Bool)

(assert (=> b!1721361 (=> res!772296 e!1101065)))

(declare-fun lt!658524 () Option!3702)

(declare-fun lt!658521 () List!18913)

(assert (=> b!1721361 (= res!772296 (or (not (= lt!658521 (_2!10669 lt!658542))) (not (= lt!658524 (Some!3701 (tuple2!18535 (_1!10669 lt!658542) lt!658521))))))))

(assert (=> b!1721361 (= (_2!10669 lt!658542) lt!658521)))

(declare-fun lt!658543 () Unit!32683)

(declare-fun lemmaSamePrefixThenSameSuffix!724 (List!18913 List!18913 List!18913 List!18913 List!18913) Unit!32683)

(assert (=> b!1721361 (= lt!658543 (lemmaSamePrefixThenSameSuffix!724 lt!658523 (_2!10669 lt!658542) lt!658523 lt!658521 lt!658532))))

(declare-fun getSuffix!774 (List!18913 List!18913) List!18913)

(assert (=> b!1721361 (= lt!658521 (getSuffix!774 lt!658532 lt!658523))))

(declare-fun lt!658526 () TokenValue!3429)

(declare-fun lt!658522 () Int)

(assert (=> b!1721361 (= lt!658524 (Some!3701 (tuple2!18535 (Token!6245 lt!658526 (rule!5285 (_1!10669 lt!658542)) lt!658522 lt!658523) (_2!10669 lt!658542))))))

(declare-fun maxPrefixOneRule!898 (LexerInterface!2968 Rule!6478 List!18913) Option!3702)

(assert (=> b!1721361 (= lt!658524 (maxPrefixOneRule!898 thiss!24550 (rule!5285 (_1!10669 lt!658542)) lt!658532))))

(declare-fun size!14976 (List!18913) Int)

(assert (=> b!1721361 (= lt!658522 (size!14976 lt!658523))))

(assert (=> b!1721361 (= lt!658526 (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) (seqFromList!2313 lt!658523)))))

(declare-fun lt!658535 () Unit!32683)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!297 (LexerInterface!2968 List!18914 List!18913 List!18913 List!18913 Rule!6478) Unit!32683)

(assert (=> b!1721361 (= lt!658535 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!297 thiss!24550 rules!3447 lt!658523 lt!658532 (_2!10669 lt!658542) (rule!5285 (_1!10669 lt!658542))))))

(declare-fun res!772291 () Bool)

(assert (=> start!168670 (=> (not res!772291) (not e!1101054))))

(get-info :version)

(assert (=> start!168670 (= res!772291 ((_ is Lexer!2966) thiss!24550))))

(assert (=> start!168670 e!1101054))

(assert (=> start!168670 e!1101067))

(assert (=> start!168670 e!1101072))

(assert (=> start!168670 true))

(declare-fun e!1101056 () Bool)

(declare-fun inv!24340 (Token!6244) Bool)

(assert (=> start!168670 (and (inv!24340 token!523) e!1101056)))

(assert (=> start!168670 e!1101077))

(declare-fun b!1721345 () Bool)

(declare-fun tp!491527 () Bool)

(declare-fun inv!21 (TokenValue!3429) Bool)

(assert (=> b!1721345 (= e!1101056 (and (inv!21 (value!104834 token!523)) e!1101062 tp!491527))))

(declare-fun b!1721362 () Bool)

(declare-fun res!772297 () Bool)

(assert (=> b!1721362 (=> res!772297 e!1101073)))

(assert (=> b!1721362 (= res!772297 (not (matchR!2141 (regex!3339 (rule!5285 (_1!10669 lt!658542))) lt!658523)))))

(declare-fun b!1721363 () Bool)

(declare-fun res!772295 () Bool)

(assert (=> b!1721363 (=> (not res!772295) (not e!1101054))))

(declare-fun isEmpty!11850 (List!18914) Bool)

(assert (=> b!1721363 (= res!772295 (not (isEmpty!11850 rules!3447)))))

(declare-fun b!1721364 () Bool)

(declare-fun res!772292 () Bool)

(assert (=> b!1721364 (=> (not res!772292) (not e!1101054))))

(declare-fun rulesInvariant!2637 (LexerInterface!2968 List!18914) Bool)

(assert (=> b!1721364 (= res!772292 (rulesInvariant!2637 thiss!24550 rules!3447))))

(declare-fun b!1721365 () Bool)

(assert (=> b!1721365 (= e!1101074 e!1101057)))

(declare-fun res!772288 () Bool)

(assert (=> b!1721365 (=> (not res!772288) (not e!1101057))))

(assert (=> b!1721365 (= res!772288 (matchR!2141 (regex!3339 lt!658537) (list!7612 (charsOf!1988 (_1!10669 lt!658542)))))))

(declare-fun get!5590 (Option!3703) Rule!6478)

(assert (=> b!1721365 (= lt!658537 (get!5590 lt!658530))))

(assert (= (and start!168670 res!772291) b!1721363))

(assert (= (and b!1721363 res!772295) b!1721364))

(assert (= (and b!1721364 res!772292) b!1721360))

(assert (= (and b!1721360 res!772303) b!1721357))

(assert (= (and b!1721357 res!772289) b!1721343))

(assert (= (and b!1721343 res!772301) b!1721359))

(assert (= (and b!1721359 res!772286) b!1721344))

(assert (= (and b!1721344 res!772304) b!1721355))

(assert (= (and b!1721355 (not res!772293)) b!1721346))

(assert (= (and b!1721346 (not res!772294)) b!1721337))

(assert (= (and b!1721337 (not res!772300)) b!1721353))

(assert (= (and b!1721353 res!772290) b!1721365))

(assert (= (and b!1721365 res!772288) b!1721339))

(assert (= (and b!1721353 (not res!772299)) b!1721362))

(assert (= (and b!1721362 (not res!772297)) b!1721356))

(assert (= (and b!1721356 (not res!772285)) b!1721348))

(assert (= (and b!1721348 (not res!772298)) b!1721358))

(assert (= (and b!1721358 (not res!772287)) b!1721342))

(assert (= (and b!1721342 (not res!772302)) b!1721361))

(assert (= (and b!1721361 (not res!772296)) b!1721349))

(assert (= (and start!168670 ((_ is Cons!18843) suffix!1421)) b!1721341))

(assert (= b!1721347 b!1721352))

(assert (= start!168670 b!1721347))

(assert (= b!1721340 b!1721350))

(assert (= b!1721345 b!1721340))

(assert (= start!168670 b!1721345))

(assert (= b!1721354 b!1721351))

(assert (= b!1721338 b!1721354))

(assert (= (and start!168670 ((_ is Cons!18844) rules!3447)) b!1721338))

(declare-fun b_lambda!54591 () Bool)

(assert (=> (not b_lambda!54591) (not b!1721348)))

(declare-fun t!159534 () Bool)

(declare-fun tb!102057 () Bool)

(assert (=> (and b!1721351 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159534) tb!102057))

(declare-fun e!1101090 () Bool)

(declare-fun tp!491539 () Bool)

(declare-fun b!1721381 () Bool)

(declare-fun inv!24341 (Conc!6267) Bool)

(assert (=> b!1721381 (= e!1101090 (and (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))) tp!491539))))

(declare-fun result!122668 () Bool)

(declare-fun inv!24342 (BalanceConc!12478) Bool)

(assert (=> tb!102057 (= result!122668 (and (inv!24342 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))) e!1101090))))

(assert (= tb!102057 b!1721381))

(declare-fun m!2127051 () Bool)

(assert (=> b!1721381 m!2127051))

(declare-fun m!2127053 () Bool)

(assert (=> tb!102057 m!2127053))

(assert (=> b!1721348 t!159534))

(declare-fun b_and!125771 () Bool)

(assert (= b_and!125761 (and (=> t!159534 result!122668) b_and!125771)))

(declare-fun tb!102059 () Bool)

(declare-fun t!159536 () Bool)

(assert (=> (and b!1721352 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159536) tb!102059))

(declare-fun result!122672 () Bool)

(assert (= result!122672 result!122668))

(assert (=> b!1721348 t!159536))

(declare-fun b_and!125773 () Bool)

(assert (= b_and!125765 (and (=> t!159536 result!122672) b_and!125773)))

(declare-fun t!159538 () Bool)

(declare-fun tb!102061 () Bool)

(assert (=> (and b!1721350 (= (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159538) tb!102061))

(declare-fun result!122674 () Bool)

(assert (= result!122674 result!122668))

(assert (=> b!1721348 t!159538))

(declare-fun b_and!125775 () Bool)

(assert (= b_and!125769 (and (=> t!159538 result!122674) b_and!125775)))

(declare-fun b_lambda!54593 () Bool)

(assert (=> (not b_lambda!54593) (not b!1721348)))

(declare-fun tb!102063 () Bool)

(declare-fun t!159540 () Bool)

(assert (=> (and b!1721351 (= (toValue!4846 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159540) tb!102063))

(declare-fun result!122676 () Bool)

(assert (=> tb!102063 (= result!122676 (inv!21 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(declare-fun m!2127055 () Bool)

(assert (=> tb!102063 m!2127055))

(assert (=> b!1721348 t!159540))

(declare-fun b_and!125777 () Bool)

(assert (= b_and!125759 (and (=> t!159540 result!122676) b_and!125777)))

(declare-fun t!159542 () Bool)

(declare-fun tb!102065 () Bool)

(assert (=> (and b!1721352 (= (toValue!4846 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159542) tb!102065))

(declare-fun result!122680 () Bool)

(assert (= result!122680 result!122676))

(assert (=> b!1721348 t!159542))

(declare-fun b_and!125779 () Bool)

(assert (= b_and!125763 (and (=> t!159542 result!122680) b_and!125779)))

(declare-fun t!159544 () Bool)

(declare-fun tb!102067 () Bool)

(assert (=> (and b!1721350 (= (toValue!4846 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159544) tb!102067))

(declare-fun result!122682 () Bool)

(assert (= result!122682 result!122676))

(assert (=> b!1721348 t!159544))

(declare-fun b_and!125781 () Bool)

(assert (= b_and!125767 (and (=> t!159544 result!122682) b_and!125781)))

(declare-fun b_lambda!54595 () Bool)

(assert (=> (not b_lambda!54595) (not b!1721358)))

(declare-fun tb!102069 () Bool)

(declare-fun t!159546 () Bool)

(assert (=> (and b!1721351 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159546) tb!102069))

(declare-fun b!1721384 () Bool)

(declare-fun e!1101094 () Bool)

(declare-fun tp!491540 () Bool)

(assert (=> b!1721384 (= e!1101094 (and (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))) tp!491540))))

(declare-fun result!122684 () Bool)

(assert (=> tb!102069 (= result!122684 (and (inv!24342 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))) e!1101094))))

(assert (= tb!102069 b!1721384))

(declare-fun m!2127057 () Bool)

(assert (=> b!1721384 m!2127057))

(declare-fun m!2127059 () Bool)

(assert (=> tb!102069 m!2127059))

(assert (=> b!1721358 t!159546))

(declare-fun b_and!125783 () Bool)

(assert (= b_and!125771 (and (=> t!159546 result!122684) b_and!125783)))

(declare-fun tb!102071 () Bool)

(declare-fun t!159548 () Bool)

(assert (=> (and b!1721352 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159548) tb!102071))

(declare-fun result!122686 () Bool)

(assert (= result!122686 result!122684))

(assert (=> b!1721358 t!159548))

(declare-fun b_and!125785 () Bool)

(assert (= b_and!125773 (and (=> t!159548 result!122686) b_and!125785)))

(declare-fun t!159550 () Bool)

(declare-fun tb!102073 () Bool)

(assert (=> (and b!1721350 (= (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159550) tb!102073))

(declare-fun result!122688 () Bool)

(assert (= result!122688 result!122684))

(assert (=> b!1721358 t!159550))

(declare-fun b_and!125787 () Bool)

(assert (= b_and!125775 (and (=> t!159550 result!122688) b_and!125787)))

(declare-fun m!2127061 () Bool)

(assert (=> b!1721343 m!2127061))

(declare-fun m!2127063 () Bool)

(assert (=> b!1721354 m!2127063))

(declare-fun m!2127065 () Bool)

(assert (=> b!1721354 m!2127065))

(declare-fun m!2127067 () Bool)

(assert (=> b!1721347 m!2127067))

(declare-fun m!2127069 () Bool)

(assert (=> b!1721347 m!2127069))

(declare-fun m!2127071 () Bool)

(assert (=> b!1721361 m!2127071))

(declare-fun m!2127073 () Bool)

(assert (=> b!1721361 m!2127073))

(declare-fun m!2127075 () Bool)

(assert (=> b!1721361 m!2127075))

(declare-fun m!2127077 () Bool)

(assert (=> b!1721361 m!2127077))

(assert (=> b!1721361 m!2127073))

(declare-fun m!2127079 () Bool)

(assert (=> b!1721361 m!2127079))

(declare-fun m!2127081 () Bool)

(assert (=> b!1721361 m!2127081))

(declare-fun m!2127083 () Bool)

(assert (=> b!1721361 m!2127083))

(declare-fun m!2127085 () Bool)

(assert (=> b!1721358 m!2127085))

(declare-fun m!2127087 () Bool)

(assert (=> b!1721364 m!2127087))

(declare-fun m!2127089 () Bool)

(assert (=> b!1721360 m!2127089))

(declare-fun m!2127091 () Bool)

(assert (=> b!1721340 m!2127091))

(declare-fun m!2127093 () Bool)

(assert (=> b!1721340 m!2127093))

(declare-fun m!2127095 () Bool)

(assert (=> b!1721365 m!2127095))

(assert (=> b!1721365 m!2127095))

(declare-fun m!2127097 () Bool)

(assert (=> b!1721365 m!2127097))

(assert (=> b!1721365 m!2127097))

(declare-fun m!2127099 () Bool)

(assert (=> b!1721365 m!2127099))

(declare-fun m!2127101 () Bool)

(assert (=> b!1721365 m!2127101))

(declare-fun m!2127103 () Bool)

(assert (=> b!1721359 m!2127103))

(declare-fun m!2127105 () Bool)

(assert (=> b!1721349 m!2127105))

(declare-fun m!2127107 () Bool)

(assert (=> b!1721349 m!2127107))

(declare-fun m!2127109 () Bool)

(assert (=> b!1721349 m!2127109))

(declare-fun m!2127111 () Bool)

(assert (=> b!1721362 m!2127111))

(declare-fun m!2127113 () Bool)

(assert (=> b!1721363 m!2127113))

(declare-fun m!2127115 () Bool)

(assert (=> b!1721342 m!2127115))

(declare-fun m!2127117 () Bool)

(assert (=> b!1721342 m!2127117))

(declare-fun m!2127119 () Bool)

(assert (=> b!1721342 m!2127119))

(assert (=> b!1721342 m!2127115))

(declare-fun m!2127121 () Bool)

(assert (=> b!1721342 m!2127121))

(declare-fun m!2127123 () Bool)

(assert (=> b!1721342 m!2127123))

(declare-fun m!2127125 () Bool)

(assert (=> b!1721345 m!2127125))

(declare-fun m!2127127 () Bool)

(assert (=> b!1721337 m!2127127))

(declare-fun m!2127129 () Bool)

(assert (=> b!1721337 m!2127129))

(assert (=> b!1721337 m!2127129))

(declare-fun m!2127131 () Bool)

(assert (=> b!1721337 m!2127131))

(declare-fun m!2127133 () Bool)

(assert (=> b!1721337 m!2127133))

(declare-fun m!2127135 () Bool)

(assert (=> b!1721346 m!2127135))

(declare-fun m!2127137 () Bool)

(assert (=> b!1721355 m!2127137))

(declare-fun m!2127139 () Bool)

(assert (=> b!1721355 m!2127139))

(declare-fun m!2127141 () Bool)

(assert (=> b!1721355 m!2127141))

(declare-fun m!2127143 () Bool)

(assert (=> b!1721348 m!2127143))

(assert (=> b!1721348 m!2127143))

(declare-fun m!2127145 () Bool)

(assert (=> b!1721348 m!2127145))

(assert (=> b!1721348 m!2127145))

(declare-fun m!2127147 () Bool)

(assert (=> b!1721348 m!2127147))

(declare-fun m!2127149 () Bool)

(assert (=> b!1721348 m!2127149))

(declare-fun m!2127151 () Bool)

(assert (=> b!1721353 m!2127151))

(declare-fun m!2127153 () Bool)

(assert (=> b!1721353 m!2127153))

(declare-fun m!2127155 () Bool)

(assert (=> b!1721353 m!2127155))

(declare-fun m!2127157 () Bool)

(assert (=> b!1721353 m!2127157))

(declare-fun m!2127159 () Bool)

(assert (=> b!1721353 m!2127159))

(declare-fun m!2127161 () Bool)

(assert (=> b!1721353 m!2127161))

(declare-fun m!2127163 () Bool)

(assert (=> b!1721353 m!2127163))

(assert (=> b!1721353 m!2127095))

(declare-fun m!2127165 () Bool)

(assert (=> b!1721353 m!2127165))

(assert (=> b!1721353 m!2127151))

(declare-fun m!2127167 () Bool)

(assert (=> b!1721353 m!2127167))

(declare-fun m!2127169 () Bool)

(assert (=> b!1721353 m!2127169))

(declare-fun m!2127171 () Bool)

(assert (=> b!1721353 m!2127171))

(declare-fun m!2127173 () Bool)

(assert (=> b!1721353 m!2127173))

(declare-fun m!2127175 () Bool)

(assert (=> b!1721353 m!2127175))

(declare-fun m!2127177 () Bool)

(assert (=> b!1721353 m!2127177))

(declare-fun m!2127179 () Bool)

(assert (=> start!168670 m!2127179))

(declare-fun m!2127181 () Bool)

(assert (=> b!1721356 m!2127181))

(declare-fun m!2127183 () Bool)

(assert (=> b!1721356 m!2127183))

(declare-fun m!2127185 () Bool)

(assert (=> b!1721357 m!2127185))

(declare-fun m!2127187 () Bool)

(assert (=> b!1721357 m!2127187))

(declare-fun m!2127189 () Bool)

(assert (=> b!1721357 m!2127189))

(assert (=> b!1721357 m!2127189))

(declare-fun m!2127191 () Bool)

(assert (=> b!1721357 m!2127191))

(check-sat (not b!1721356) (not b!1721346) (not b_next!47641) (not b!1721384) (not b!1721365) (not b!1721341) (not start!168670) b_and!125785 (not b!1721343) (not b!1721353) (not b!1721347) (not b!1721342) b_and!125783 (not b!1721338) (not b!1721349) (not b_lambda!54595) (not b!1721348) (not b_lambda!54593) (not b!1721345) (not b!1721381) (not b_next!47645) (not b!1721357) (not b!1721363) (not b!1721361) (not tb!102057) (not b_next!47637) b_and!125781 b_and!125787 (not b!1721360) (not b!1721354) b_and!125779 (not b_next!47639) (not b!1721340) b_and!125777 tp_is_empty!7577 (not tb!102069) (not b!1721337) (not tb!102063) (not b!1721355) (not b!1721362) (not b!1721359) (not b_lambda!54591) (not b!1721364) (not b_next!47643) (not b_next!47635))
(check-sat b_and!125783 (not b_next!47641) (not b_next!47645) (not b_next!47637) b_and!125777 b_and!125785 b_and!125781 b_and!125787 b_and!125779 (not b_next!47639) (not b_next!47643) (not b_next!47635))
(get-model)

(declare-fun d!527612 () Bool)

(declare-fun isEmpty!11853 (Option!3702) Bool)

(assert (=> d!527612 (= (isDefined!3046 lt!658533) (not (isEmpty!11853 lt!658533)))))

(declare-fun bs!402219 () Bool)

(assert (= bs!402219 d!527612))

(declare-fun m!2127267 () Bool)

(assert (=> bs!402219 m!2127267))

(assert (=> b!1721357 d!527612))

(declare-fun b!1721562 () Bool)

(declare-fun res!772421 () Bool)

(declare-fun e!1101192 () Bool)

(assert (=> b!1721562 (=> (not res!772421) (not e!1101192))))

(declare-fun lt!658606 () Option!3702)

(assert (=> b!1721562 (= res!772421 (< (size!14976 (_2!10669 (get!5589 lt!658606))) (size!14976 lt!658528)))))

(declare-fun b!1721563 () Bool)

(declare-fun res!772417 () Bool)

(assert (=> b!1721563 (=> (not res!772417) (not e!1101192))))

(assert (=> b!1721563 (= res!772417 (= (++!5164 (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658606)))) (_2!10669 (get!5589 lt!658606))) lt!658528))))

(declare-fun b!1721564 () Bool)

(declare-fun e!1101191 () Option!3702)

(declare-fun call!109723 () Option!3702)

(assert (=> b!1721564 (= e!1101191 call!109723)))

(declare-fun b!1721565 () Bool)

(assert (=> b!1721565 (= e!1101192 (contains!3361 rules!3447 (rule!5285 (_1!10669 (get!5589 lt!658606)))))))

(declare-fun bm!109718 () Bool)

(assert (=> bm!109718 (= call!109723 (maxPrefixOneRule!898 thiss!24550 (h!24245 rules!3447) lt!658528))))

(declare-fun b!1721567 () Bool)

(declare-fun res!772420 () Bool)

(assert (=> b!1721567 (=> (not res!772420) (not e!1101192))))

(assert (=> b!1721567 (= res!772420 (= (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658606)))) (originalCharacters!4153 (_1!10669 (get!5589 lt!658606)))))))

(declare-fun b!1721568 () Bool)

(declare-fun res!772416 () Bool)

(assert (=> b!1721568 (=> (not res!772416) (not e!1101192))))

(assert (=> b!1721568 (= res!772416 (matchR!2141 (regex!3339 (rule!5285 (_1!10669 (get!5589 lt!658606)))) (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658606))))))))

(declare-fun d!527614 () Bool)

(declare-fun e!1101190 () Bool)

(assert (=> d!527614 e!1101190))

(declare-fun res!772419 () Bool)

(assert (=> d!527614 (=> res!772419 e!1101190)))

(assert (=> d!527614 (= res!772419 (isEmpty!11853 lt!658606))))

(assert (=> d!527614 (= lt!658606 e!1101191)))

(declare-fun c!281657 () Bool)

(assert (=> d!527614 (= c!281657 (and ((_ is Cons!18844) rules!3447) ((_ is Nil!18844) (t!159553 rules!3447))))))

(declare-fun lt!658610 () Unit!32683)

(declare-fun lt!658607 () Unit!32683)

(assert (=> d!527614 (= lt!658610 lt!658607)))

(assert (=> d!527614 (isPrefix!1580 lt!658528 lt!658528)))

(declare-fun lemmaIsPrefixRefl!1069 (List!18913 List!18913) Unit!32683)

(assert (=> d!527614 (= lt!658607 (lemmaIsPrefixRefl!1069 lt!658528 lt!658528))))

(assert (=> d!527614 (rulesValidInductive!1106 thiss!24550 rules!3447)))

(assert (=> d!527614 (= (maxPrefix!1522 thiss!24550 rules!3447 lt!658528) lt!658606)))

(declare-fun b!1721566 () Bool)

(assert (=> b!1721566 (= e!1101190 e!1101192)))

(declare-fun res!772418 () Bool)

(assert (=> b!1721566 (=> (not res!772418) (not e!1101192))))

(assert (=> b!1721566 (= res!772418 (isDefined!3046 lt!658606))))

(declare-fun b!1721569 () Bool)

(declare-fun lt!658608 () Option!3702)

(declare-fun lt!658609 () Option!3702)

(assert (=> b!1721569 (= e!1101191 (ite (and ((_ is None!3701) lt!658608) ((_ is None!3701) lt!658609)) None!3701 (ite ((_ is None!3701) lt!658609) lt!658608 (ite ((_ is None!3701) lt!658608) lt!658609 (ite (>= (size!14974 (_1!10669 (v!25104 lt!658608))) (size!14974 (_1!10669 (v!25104 lt!658609)))) lt!658608 lt!658609)))))))

(assert (=> b!1721569 (= lt!658608 call!109723)))

(assert (=> b!1721569 (= lt!658609 (maxPrefix!1522 thiss!24550 (t!159553 rules!3447) lt!658528))))

(declare-fun b!1721570 () Bool)

(declare-fun res!772422 () Bool)

(assert (=> b!1721570 (=> (not res!772422) (not e!1101192))))

(assert (=> b!1721570 (= res!772422 (= (value!104834 (_1!10669 (get!5589 lt!658606))) (apply!5144 (transformation!3339 (rule!5285 (_1!10669 (get!5589 lt!658606)))) (seqFromList!2313 (originalCharacters!4153 (_1!10669 (get!5589 lt!658606)))))))))

(assert (= (and d!527614 c!281657) b!1721564))

(assert (= (and d!527614 (not c!281657)) b!1721569))

(assert (= (or b!1721564 b!1721569) bm!109718))

(assert (= (and d!527614 (not res!772419)) b!1721566))

(assert (= (and b!1721566 res!772418) b!1721567))

(assert (= (and b!1721567 res!772420) b!1721562))

(assert (= (and b!1721562 res!772421) b!1721563))

(assert (= (and b!1721563 res!772417) b!1721570))

(assert (= (and b!1721570 res!772422) b!1721568))

(assert (= (and b!1721568 res!772416) b!1721565))

(declare-fun m!2127339 () Bool)

(assert (=> b!1721570 m!2127339))

(declare-fun m!2127341 () Bool)

(assert (=> b!1721570 m!2127341))

(assert (=> b!1721570 m!2127341))

(declare-fun m!2127343 () Bool)

(assert (=> b!1721570 m!2127343))

(declare-fun m!2127345 () Bool)

(assert (=> bm!109718 m!2127345))

(declare-fun m!2127347 () Bool)

(assert (=> d!527614 m!2127347))

(declare-fun m!2127349 () Bool)

(assert (=> d!527614 m!2127349))

(declare-fun m!2127351 () Bool)

(assert (=> d!527614 m!2127351))

(assert (=> d!527614 m!2127105))

(assert (=> b!1721565 m!2127339))

(declare-fun m!2127353 () Bool)

(assert (=> b!1721565 m!2127353))

(assert (=> b!1721568 m!2127339))

(declare-fun m!2127355 () Bool)

(assert (=> b!1721568 m!2127355))

(assert (=> b!1721568 m!2127355))

(declare-fun m!2127357 () Bool)

(assert (=> b!1721568 m!2127357))

(assert (=> b!1721568 m!2127357))

(declare-fun m!2127359 () Bool)

(assert (=> b!1721568 m!2127359))

(assert (=> b!1721563 m!2127339))

(assert (=> b!1721563 m!2127355))

(assert (=> b!1721563 m!2127355))

(assert (=> b!1721563 m!2127357))

(assert (=> b!1721563 m!2127357))

(declare-fun m!2127361 () Bool)

(assert (=> b!1721563 m!2127361))

(assert (=> b!1721562 m!2127339))

(declare-fun m!2127363 () Bool)

(assert (=> b!1721562 m!2127363))

(declare-fun m!2127365 () Bool)

(assert (=> b!1721562 m!2127365))

(declare-fun m!2127367 () Bool)

(assert (=> b!1721569 m!2127367))

(declare-fun m!2127369 () Bool)

(assert (=> b!1721566 m!2127369))

(assert (=> b!1721567 m!2127339))

(assert (=> b!1721567 m!2127355))

(assert (=> b!1721567 m!2127355))

(assert (=> b!1721567 m!2127357))

(assert (=> b!1721357 d!527614))

(declare-fun d!527628 () Bool)

(declare-fun list!7614 (Conc!6267) List!18913)

(assert (=> d!527628 (= (list!7612 (charsOf!1988 token!523)) (list!7614 (c!281623 (charsOf!1988 token!523))))))

(declare-fun bs!402222 () Bool)

(assert (= bs!402222 d!527628))

(declare-fun m!2127371 () Bool)

(assert (=> bs!402222 m!2127371))

(assert (=> b!1721357 d!527628))

(declare-fun d!527630 () Bool)

(declare-fun lt!658613 () BalanceConc!12478)

(assert (=> d!527630 (= (list!7612 lt!658613) (originalCharacters!4153 token!523))))

(assert (=> d!527630 (= lt!658613 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (value!104834 token!523)))))

(assert (=> d!527630 (= (charsOf!1988 token!523) lt!658613)))

(declare-fun b_lambda!54599 () Bool)

(assert (=> (not b_lambda!54599) (not d!527630)))

(declare-fun tb!102075 () Bool)

(declare-fun t!159555 () Bool)

(assert (=> (and b!1721351 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 token!523)))) t!159555) tb!102075))

(declare-fun b!1721571 () Bool)

(declare-fun e!1101193 () Bool)

(declare-fun tp!491541 () Bool)

(assert (=> b!1721571 (= e!1101193 (and (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (value!104834 token!523)))) tp!491541))))

(declare-fun result!122690 () Bool)

(assert (=> tb!102075 (= result!122690 (and (inv!24342 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (value!104834 token!523))) e!1101193))))

(assert (= tb!102075 b!1721571))

(declare-fun m!2127373 () Bool)

(assert (=> b!1721571 m!2127373))

(declare-fun m!2127375 () Bool)

(assert (=> tb!102075 m!2127375))

(assert (=> d!527630 t!159555))

(declare-fun b_and!125795 () Bool)

(assert (= b_and!125783 (and (=> t!159555 result!122690) b_and!125795)))

(declare-fun tb!102077 () Bool)

(declare-fun t!159557 () Bool)

(assert (=> (and b!1721352 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 token!523)))) t!159557) tb!102077))

(declare-fun result!122692 () Bool)

(assert (= result!122692 result!122690))

(assert (=> d!527630 t!159557))

(declare-fun b_and!125797 () Bool)

(assert (= b_and!125785 (and (=> t!159557 result!122692) b_and!125797)))

(declare-fun t!159559 () Bool)

(declare-fun tb!102079 () Bool)

(assert (=> (and b!1721350 (= (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toChars!4705 (transformation!3339 (rule!5285 token!523)))) t!159559) tb!102079))

(declare-fun result!122694 () Bool)

(assert (= result!122694 result!122690))

(assert (=> d!527630 t!159559))

(declare-fun b_and!125799 () Bool)

(assert (= b_and!125787 (and (=> t!159559 result!122694) b_and!125799)))

(declare-fun m!2127377 () Bool)

(assert (=> d!527630 m!2127377))

(declare-fun m!2127379 () Bool)

(assert (=> d!527630 m!2127379))

(assert (=> b!1721357 d!527630))

(declare-fun d!527632 () Bool)

(declare-fun c!281660 () Bool)

(assert (=> d!527632 (= c!281660 (isEmpty!11849 (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843))))))

(declare-fun e!1101196 () Bool)

(assert (=> d!527632 (= (prefixMatch!552 lt!658538 (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843))) e!1101196)))

(declare-fun b!1721576 () Bool)

(declare-fun lostCause!515 (Regex!4667) Bool)

(assert (=> b!1721576 (= e!1101196 (not (lostCause!515 lt!658538)))))

(declare-fun b!1721577 () Bool)

(declare-fun derivativeStep!1174 (Regex!4667 C!9508) Regex!4667)

(declare-fun tail!2571 (List!18913) List!18913)

(assert (=> b!1721577 (= e!1101196 (prefixMatch!552 (derivativeStep!1174 lt!658538 (head!3892 (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843)))) (tail!2571 (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843)))))))

(assert (= (and d!527632 c!281660) b!1721576))

(assert (= (and d!527632 (not c!281660)) b!1721577))

(assert (=> d!527632 m!2127129))

(declare-fun m!2127381 () Bool)

(assert (=> d!527632 m!2127381))

(declare-fun m!2127383 () Bool)

(assert (=> b!1721576 m!2127383))

(assert (=> b!1721577 m!2127129))

(declare-fun m!2127385 () Bool)

(assert (=> b!1721577 m!2127385))

(assert (=> b!1721577 m!2127385))

(declare-fun m!2127387 () Bool)

(assert (=> b!1721577 m!2127387))

(assert (=> b!1721577 m!2127129))

(declare-fun m!2127389 () Bool)

(assert (=> b!1721577 m!2127389))

(assert (=> b!1721577 m!2127387))

(assert (=> b!1721577 m!2127389))

(declare-fun m!2127391 () Bool)

(assert (=> b!1721577 m!2127391))

(assert (=> b!1721337 d!527632))

(declare-fun d!527634 () Bool)

(declare-fun e!1101202 () Bool)

(assert (=> d!527634 e!1101202))

(declare-fun res!772427 () Bool)

(assert (=> d!527634 (=> (not res!772427) (not e!1101202))))

(declare-fun lt!658616 () List!18913)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2688 (List!18913) (InoxSet C!9508))

(assert (=> d!527634 (= res!772427 (= (content!2688 lt!658616) ((_ map or) (content!2688 lt!658528) (content!2688 (Cons!18843 (head!3892 suffix!1421) Nil!18843)))))))

(declare-fun e!1101201 () List!18913)

(assert (=> d!527634 (= lt!658616 e!1101201)))

(declare-fun c!281663 () Bool)

(assert (=> d!527634 (= c!281663 ((_ is Nil!18843) lt!658528))))

(assert (=> d!527634 (= (++!5164 lt!658528 (Cons!18843 (head!3892 suffix!1421) Nil!18843)) lt!658616)))

(declare-fun b!1721588 () Bool)

(declare-fun res!772428 () Bool)

(assert (=> b!1721588 (=> (not res!772428) (not e!1101202))))

(assert (=> b!1721588 (= res!772428 (= (size!14976 lt!658616) (+ (size!14976 lt!658528) (size!14976 (Cons!18843 (head!3892 suffix!1421) Nil!18843)))))))

(declare-fun b!1721586 () Bool)

(assert (=> b!1721586 (= e!1101201 (Cons!18843 (head!3892 suffix!1421) Nil!18843))))

(declare-fun b!1721589 () Bool)

(assert (=> b!1721589 (= e!1101202 (or (not (= (Cons!18843 (head!3892 suffix!1421) Nil!18843) Nil!18843)) (= lt!658616 lt!658528)))))

(declare-fun b!1721587 () Bool)

(assert (=> b!1721587 (= e!1101201 (Cons!18843 (h!24244 lt!658528) (++!5164 (t!159552 lt!658528) (Cons!18843 (head!3892 suffix!1421) Nil!18843))))))

(assert (= (and d!527634 c!281663) b!1721586))

(assert (= (and d!527634 (not c!281663)) b!1721587))

(assert (= (and d!527634 res!772427) b!1721588))

(assert (= (and b!1721588 res!772428) b!1721589))

(declare-fun m!2127393 () Bool)

(assert (=> d!527634 m!2127393))

(declare-fun m!2127395 () Bool)

(assert (=> d!527634 m!2127395))

(declare-fun m!2127397 () Bool)

(assert (=> d!527634 m!2127397))

(declare-fun m!2127399 () Bool)

(assert (=> b!1721588 m!2127399))

(assert (=> b!1721588 m!2127365))

(declare-fun m!2127401 () Bool)

(assert (=> b!1721588 m!2127401))

(declare-fun m!2127403 () Bool)

(assert (=> b!1721587 m!2127403))

(assert (=> b!1721337 d!527634))

(declare-fun d!527636 () Bool)

(assert (=> d!527636 (= (head!3892 suffix!1421) (h!24244 suffix!1421))))

(assert (=> b!1721337 d!527636))

(declare-fun d!527638 () Bool)

(declare-fun lt!658619 () Unit!32683)

(declare-fun lemma!329 (List!18914 LexerInterface!2968 List!18914) Unit!32683)

(assert (=> d!527638 (= lt!658619 (lemma!329 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69125 () Int)

(declare-datatypes ((List!18916 0))(
  ( (Nil!18846) (Cons!18846 (h!24247 Regex!4667) (t!159615 List!18916)) )
))
(declare-fun generalisedUnion!337 (List!18916) Regex!4667)

(declare-fun map!3878 (List!18914 Int) List!18916)

(assert (=> d!527638 (= (rulesRegex!697 thiss!24550 rules!3447) (generalisedUnion!337 (map!3878 rules!3447 lambda!69125)))))

(declare-fun bs!402223 () Bool)

(assert (= bs!402223 d!527638))

(declare-fun m!2127405 () Bool)

(assert (=> bs!402223 m!2127405))

(declare-fun m!2127407 () Bool)

(assert (=> bs!402223 m!2127407))

(assert (=> bs!402223 m!2127407))

(declare-fun m!2127409 () Bool)

(assert (=> bs!402223 m!2127409))

(assert (=> b!1721337 d!527638))

(declare-fun d!527640 () Bool)

(declare-fun c!281666 () Bool)

(assert (=> d!527640 (= c!281666 ((_ is Node!6267) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))))

(declare-fun e!1101207 () Bool)

(assert (=> d!527640 (= (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))) e!1101207)))

(declare-fun b!1721596 () Bool)

(declare-fun inv!24345 (Conc!6267) Bool)

(assert (=> b!1721596 (= e!1101207 (inv!24345 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))))

(declare-fun b!1721597 () Bool)

(declare-fun e!1101208 () Bool)

(assert (=> b!1721597 (= e!1101207 e!1101208)))

(declare-fun res!772431 () Bool)

(assert (=> b!1721597 (= res!772431 (not ((_ is Leaf!9157) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))))))

(assert (=> b!1721597 (=> res!772431 e!1101208)))

(declare-fun b!1721598 () Bool)

(declare-fun inv!24346 (Conc!6267) Bool)

(assert (=> b!1721598 (= e!1101208 (inv!24346 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))))

(assert (= (and d!527640 c!281666) b!1721596))

(assert (= (and d!527640 (not c!281666)) b!1721597))

(assert (= (and b!1721597 (not res!772431)) b!1721598))

(declare-fun m!2127411 () Bool)

(assert (=> b!1721596 m!2127411))

(declare-fun m!2127413 () Bool)

(assert (=> b!1721598 m!2127413))

(assert (=> b!1721381 d!527640))

(declare-fun d!527642 () Bool)

(declare-fun res!772436 () Bool)

(declare-fun e!1101211 () Bool)

(assert (=> d!527642 (=> (not res!772436) (not e!1101211))))

(assert (=> d!527642 (= res!772436 (not (isEmpty!11849 (originalCharacters!4153 token!523))))))

(assert (=> d!527642 (= (inv!24340 token!523) e!1101211)))

(declare-fun b!1721603 () Bool)

(declare-fun res!772437 () Bool)

(assert (=> b!1721603 (=> (not res!772437) (not e!1101211))))

(assert (=> b!1721603 (= res!772437 (= (originalCharacters!4153 token!523) (list!7612 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (value!104834 token!523)))))))

(declare-fun b!1721604 () Bool)

(assert (=> b!1721604 (= e!1101211 (= (size!14974 token!523) (size!14976 (originalCharacters!4153 token!523))))))

(assert (= (and d!527642 res!772436) b!1721603))

(assert (= (and b!1721603 res!772437) b!1721604))

(declare-fun b_lambda!54601 () Bool)

(assert (=> (not b_lambda!54601) (not b!1721603)))

(assert (=> b!1721603 t!159555))

(declare-fun b_and!125801 () Bool)

(assert (= b_and!125795 (and (=> t!159555 result!122690) b_and!125801)))

(assert (=> b!1721603 t!159557))

(declare-fun b_and!125803 () Bool)

(assert (= b_and!125797 (and (=> t!159557 result!122692) b_and!125803)))

(assert (=> b!1721603 t!159559))

(declare-fun b_and!125805 () Bool)

(assert (= b_and!125799 (and (=> t!159559 result!122694) b_and!125805)))

(declare-fun m!2127415 () Bool)

(assert (=> d!527642 m!2127415))

(assert (=> b!1721603 m!2127379))

(assert (=> b!1721603 m!2127379))

(declare-fun m!2127417 () Bool)

(assert (=> b!1721603 m!2127417))

(declare-fun m!2127419 () Bool)

(assert (=> b!1721604 m!2127419))

(assert (=> start!168670 d!527642))

(declare-fun d!527644 () Bool)

(assert (=> d!527644 (= (inv!24334 (tag!3649 (h!24245 rules!3447))) (= (mod (str.len (value!104833 (tag!3649 (h!24245 rules!3447)))) 2) 0))))

(assert (=> b!1721354 d!527644))

(declare-fun d!527646 () Bool)

(declare-fun res!772440 () Bool)

(declare-fun e!1101214 () Bool)

(assert (=> d!527646 (=> (not res!772440) (not e!1101214))))

(declare-fun semiInverseModEq!1318 (Int Int) Bool)

(assert (=> d!527646 (= res!772440 (semiInverseModEq!1318 (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (h!24245 rules!3447)))))))

(assert (=> d!527646 (= (inv!24339 (transformation!3339 (h!24245 rules!3447))) e!1101214)))

(declare-fun b!1721607 () Bool)

(declare-fun equivClasses!1259 (Int Int) Bool)

(assert (=> b!1721607 (= e!1101214 (equivClasses!1259 (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (h!24245 rules!3447)))))))

(assert (= (and d!527646 res!772440) b!1721607))

(declare-fun m!2127421 () Bool)

(assert (=> d!527646 m!2127421))

(declare-fun m!2127423 () Bool)

(assert (=> b!1721607 m!2127423))

(assert (=> b!1721354 d!527646))

(declare-fun d!527648 () Bool)

(declare-fun choose!10466 (Int) Bool)

(assert (=> d!527648 (= (Forall!714 lambda!69122) (choose!10466 lambda!69122))))

(declare-fun bs!402224 () Bool)

(assert (= bs!402224 d!527648))

(declare-fun m!2127425 () Bool)

(assert (=> bs!402224 m!2127425))

(assert (=> b!1721356 d!527648))

(declare-fun d!527650 () Bool)

(declare-fun e!1101217 () Bool)

(assert (=> d!527650 e!1101217))

(declare-fun res!772443 () Bool)

(assert (=> d!527650 (=> (not res!772443) (not e!1101217))))

(assert (=> d!527650 (= res!772443 (semiInverseModEq!1318 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))))))

(declare-fun Unit!32687 () Unit!32683)

(assert (=> d!527650 (= (lemmaInv!546 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) Unit!32687)))

(declare-fun b!1721610 () Bool)

(assert (=> b!1721610 (= e!1101217 (equivClasses!1259 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))))))

(assert (= (and d!527650 res!772443) b!1721610))

(declare-fun m!2127427 () Bool)

(assert (=> d!527650 m!2127427))

(declare-fun m!2127429 () Bool)

(assert (=> b!1721610 m!2127429))

(assert (=> b!1721356 d!527650))

(declare-fun d!527652 () Bool)

(declare-fun e!1101236 () Bool)

(assert (=> d!527652 e!1101236))

(declare-fun c!281675 () Bool)

(assert (=> d!527652 (= c!281675 ((_ is EmptyExpr!4667) (regex!3339 rule!422)))))

(declare-fun lt!658622 () Bool)

(declare-fun e!1101232 () Bool)

(assert (=> d!527652 (= lt!658622 e!1101232)))

(declare-fun c!281673 () Bool)

(assert (=> d!527652 (= c!281673 (isEmpty!11849 lt!658528))))

(declare-fun validRegex!1880 (Regex!4667) Bool)

(assert (=> d!527652 (validRegex!1880 (regex!3339 rule!422))))

(assert (=> d!527652 (= (matchR!2141 (regex!3339 rule!422) lt!658528) lt!658622)))

(declare-fun b!1721639 () Bool)

(declare-fun e!1101238 () Bool)

(assert (=> b!1721639 (= e!1101236 e!1101238)))

(declare-fun c!281674 () Bool)

(assert (=> b!1721639 (= c!281674 ((_ is EmptyLang!4667) (regex!3339 rule!422)))))

(declare-fun b!1721640 () Bool)

(assert (=> b!1721640 (= e!1101232 (matchR!2141 (derivativeStep!1174 (regex!3339 rule!422) (head!3892 lt!658528)) (tail!2571 lt!658528)))))

(declare-fun b!1721641 () Bool)

(declare-fun res!772462 () Bool)

(declare-fun e!1101234 () Bool)

(assert (=> b!1721641 (=> (not res!772462) (not e!1101234))))

(declare-fun call!109726 () Bool)

(assert (=> b!1721641 (= res!772462 (not call!109726))))

(declare-fun b!1721642 () Bool)

(declare-fun res!772460 () Bool)

(declare-fun e!1101233 () Bool)

(assert (=> b!1721642 (=> res!772460 e!1101233)))

(assert (=> b!1721642 (= res!772460 (not (isEmpty!11849 (tail!2571 lt!658528))))))

(declare-fun b!1721643 () Bool)

(assert (=> b!1721643 (= e!1101234 (= (head!3892 lt!658528) (c!281622 (regex!3339 rule!422))))))

(declare-fun b!1721644 () Bool)

(declare-fun res!772463 () Bool)

(declare-fun e!1101235 () Bool)

(assert (=> b!1721644 (=> res!772463 e!1101235)))

(assert (=> b!1721644 (= res!772463 (not ((_ is ElementMatch!4667) (regex!3339 rule!422))))))

(assert (=> b!1721644 (= e!1101238 e!1101235)))

(declare-fun b!1721645 () Bool)

(declare-fun e!1101237 () Bool)

(assert (=> b!1721645 (= e!1101235 e!1101237)))

(declare-fun res!772467 () Bool)

(assert (=> b!1721645 (=> (not res!772467) (not e!1101237))))

(assert (=> b!1721645 (= res!772467 (not lt!658622))))

(declare-fun b!1721646 () Bool)

(declare-fun nullable!1406 (Regex!4667) Bool)

(assert (=> b!1721646 (= e!1101232 (nullable!1406 (regex!3339 rule!422)))))

(declare-fun b!1721647 () Bool)

(assert (=> b!1721647 (= e!1101237 e!1101233)))

(declare-fun res!772461 () Bool)

(assert (=> b!1721647 (=> res!772461 e!1101233)))

(assert (=> b!1721647 (= res!772461 call!109726)))

(declare-fun b!1721648 () Bool)

(declare-fun res!772466 () Bool)

(assert (=> b!1721648 (=> (not res!772466) (not e!1101234))))

(assert (=> b!1721648 (= res!772466 (isEmpty!11849 (tail!2571 lt!658528)))))

(declare-fun bm!109721 () Bool)

(assert (=> bm!109721 (= call!109726 (isEmpty!11849 lt!658528))))

(declare-fun b!1721649 () Bool)

(assert (=> b!1721649 (= e!1101238 (not lt!658622))))

(declare-fun b!1721650 () Bool)

(assert (=> b!1721650 (= e!1101233 (not (= (head!3892 lt!658528) (c!281622 (regex!3339 rule!422)))))))

(declare-fun b!1721651 () Bool)

(assert (=> b!1721651 (= e!1101236 (= lt!658622 call!109726))))

(declare-fun b!1721652 () Bool)

(declare-fun res!772465 () Bool)

(assert (=> b!1721652 (=> res!772465 e!1101235)))

(assert (=> b!1721652 (= res!772465 e!1101234)))

(declare-fun res!772464 () Bool)

(assert (=> b!1721652 (=> (not res!772464) (not e!1101234))))

(assert (=> b!1721652 (= res!772464 lt!658622)))

(assert (= (and d!527652 c!281673) b!1721646))

(assert (= (and d!527652 (not c!281673)) b!1721640))

(assert (= (and d!527652 c!281675) b!1721651))

(assert (= (and d!527652 (not c!281675)) b!1721639))

(assert (= (and b!1721639 c!281674) b!1721649))

(assert (= (and b!1721639 (not c!281674)) b!1721644))

(assert (= (and b!1721644 (not res!772463)) b!1721652))

(assert (= (and b!1721652 res!772464) b!1721641))

(assert (= (and b!1721641 res!772462) b!1721648))

(assert (= (and b!1721648 res!772466) b!1721643))

(assert (= (and b!1721652 (not res!772465)) b!1721645))

(assert (= (and b!1721645 res!772467) b!1721647))

(assert (= (and b!1721647 (not res!772461)) b!1721642))

(assert (= (and b!1721642 (not res!772460)) b!1721650))

(assert (= (or b!1721651 b!1721647 b!1721641) bm!109721))

(declare-fun m!2127431 () Bool)

(assert (=> bm!109721 m!2127431))

(declare-fun m!2127433 () Bool)

(assert (=> b!1721648 m!2127433))

(assert (=> b!1721648 m!2127433))

(declare-fun m!2127435 () Bool)

(assert (=> b!1721648 m!2127435))

(declare-fun m!2127437 () Bool)

(assert (=> b!1721646 m!2127437))

(declare-fun m!2127439 () Bool)

(assert (=> b!1721643 m!2127439))

(assert (=> b!1721640 m!2127439))

(assert (=> b!1721640 m!2127439))

(declare-fun m!2127441 () Bool)

(assert (=> b!1721640 m!2127441))

(assert (=> b!1721640 m!2127433))

(assert (=> b!1721640 m!2127441))

(assert (=> b!1721640 m!2127433))

(declare-fun m!2127443 () Bool)

(assert (=> b!1721640 m!2127443))

(assert (=> b!1721650 m!2127439))

(assert (=> d!527652 m!2127431))

(declare-fun m!2127445 () Bool)

(assert (=> d!527652 m!2127445))

(assert (=> b!1721642 m!2127433))

(assert (=> b!1721642 m!2127433))

(assert (=> b!1721642 m!2127435))

(assert (=> b!1721355 d!527652))

(declare-fun d!527654 () Bool)

(declare-fun res!772472 () Bool)

(declare-fun e!1101241 () Bool)

(assert (=> d!527654 (=> (not res!772472) (not e!1101241))))

(assert (=> d!527654 (= res!772472 (validRegex!1880 (regex!3339 rule!422)))))

(assert (=> d!527654 (= (ruleValid!838 thiss!24550 rule!422) e!1101241)))

(declare-fun b!1721657 () Bool)

(declare-fun res!772473 () Bool)

(assert (=> b!1721657 (=> (not res!772473) (not e!1101241))))

(assert (=> b!1721657 (= res!772473 (not (nullable!1406 (regex!3339 rule!422))))))

(declare-fun b!1721658 () Bool)

(assert (=> b!1721658 (= e!1101241 (not (= (tag!3649 rule!422) (String!21478 ""))))))

(assert (= (and d!527654 res!772472) b!1721657))

(assert (= (and b!1721657 res!772473) b!1721658))

(assert (=> d!527654 m!2127445))

(assert (=> b!1721657 m!2127437))

(assert (=> b!1721355 d!527654))

(declare-fun d!527656 () Bool)

(assert (=> d!527656 (ruleValid!838 thiss!24550 rule!422)))

(declare-fun lt!658625 () Unit!32683)

(declare-fun choose!10467 (LexerInterface!2968 Rule!6478 List!18914) Unit!32683)

(assert (=> d!527656 (= lt!658625 (choose!10467 thiss!24550 rule!422 rules!3447))))

(assert (=> d!527656 (contains!3361 rules!3447 rule!422)))

(assert (=> d!527656 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!362 thiss!24550 rule!422 rules!3447) lt!658625)))

(declare-fun bs!402225 () Bool)

(assert (= bs!402225 d!527656))

(assert (=> bs!402225 m!2127139))

(declare-fun m!2127447 () Bool)

(assert (=> bs!402225 m!2127447))

(assert (=> bs!402225 m!2127089))

(assert (=> b!1721355 d!527656))

(declare-fun d!527658 () Bool)

(assert (=> d!527658 (isPrefix!1580 lt!658528 (++!5164 lt!658528 suffix!1421))))

(declare-fun lt!658628 () Unit!32683)

(declare-fun choose!10468 (List!18913 List!18913) Unit!32683)

(assert (=> d!527658 (= lt!658628 (choose!10468 lt!658528 suffix!1421))))

(assert (=> d!527658 (= (lemmaConcatTwoListThenFirstIsPrefix!1090 lt!658528 suffix!1421) lt!658628)))

(declare-fun bs!402226 () Bool)

(assert (= bs!402226 d!527658))

(assert (=> bs!402226 m!2127175))

(assert (=> bs!402226 m!2127175))

(declare-fun m!2127449 () Bool)

(assert (=> bs!402226 m!2127449))

(declare-fun m!2127451 () Bool)

(assert (=> bs!402226 m!2127451))

(assert (=> b!1721353 d!527658))

(declare-fun d!527660 () Bool)

(assert (=> d!527660 (isPrefix!1580 lt!658523 (++!5164 lt!658523 (_2!10669 lt!658542)))))

(declare-fun lt!658629 () Unit!32683)

(assert (=> d!527660 (= lt!658629 (choose!10468 lt!658523 (_2!10669 lt!658542)))))

(assert (=> d!527660 (= (lemmaConcatTwoListThenFirstIsPrefix!1090 lt!658523 (_2!10669 lt!658542)) lt!658629)))

(declare-fun bs!402227 () Bool)

(assert (= bs!402227 d!527660))

(assert (=> bs!402227 m!2127151))

(assert (=> bs!402227 m!2127151))

(assert (=> bs!402227 m!2127153))

(declare-fun m!2127453 () Bool)

(assert (=> bs!402227 m!2127453))

(assert (=> b!1721353 d!527660))

(declare-fun d!527662 () Bool)

(declare-fun e!1101248 () Bool)

(assert (=> d!527662 e!1101248))

(declare-fun res!772485 () Bool)

(assert (=> d!527662 (=> res!772485 e!1101248)))

(declare-fun lt!658632 () Bool)

(assert (=> d!527662 (= res!772485 (not lt!658632))))

(declare-fun e!1101250 () Bool)

(assert (=> d!527662 (= lt!658632 e!1101250)))

(declare-fun res!772484 () Bool)

(assert (=> d!527662 (=> res!772484 e!1101250)))

(assert (=> d!527662 (= res!772484 ((_ is Nil!18843) lt!658523))))

(assert (=> d!527662 (= (isPrefix!1580 lt!658523 lt!658532) lt!658632)))

(declare-fun b!1721670 () Bool)

(assert (=> b!1721670 (= e!1101248 (>= (size!14976 lt!658532) (size!14976 lt!658523)))))

(declare-fun b!1721667 () Bool)

(declare-fun e!1101249 () Bool)

(assert (=> b!1721667 (= e!1101250 e!1101249)))

(declare-fun res!772482 () Bool)

(assert (=> b!1721667 (=> (not res!772482) (not e!1101249))))

(assert (=> b!1721667 (= res!772482 (not ((_ is Nil!18843) lt!658532)))))

(declare-fun b!1721669 () Bool)

(assert (=> b!1721669 (= e!1101249 (isPrefix!1580 (tail!2571 lt!658523) (tail!2571 lt!658532)))))

(declare-fun b!1721668 () Bool)

(declare-fun res!772483 () Bool)

(assert (=> b!1721668 (=> (not res!772483) (not e!1101249))))

(assert (=> b!1721668 (= res!772483 (= (head!3892 lt!658523) (head!3892 lt!658532)))))

(assert (= (and d!527662 (not res!772484)) b!1721667))

(assert (= (and b!1721667 res!772482) b!1721668))

(assert (= (and b!1721668 res!772483) b!1721669))

(assert (= (and d!527662 (not res!772485)) b!1721670))

(declare-fun m!2127455 () Bool)

(assert (=> b!1721670 m!2127455))

(assert (=> b!1721670 m!2127079))

(declare-fun m!2127457 () Bool)

(assert (=> b!1721669 m!2127457))

(declare-fun m!2127459 () Bool)

(assert (=> b!1721669 m!2127459))

(assert (=> b!1721669 m!2127457))

(assert (=> b!1721669 m!2127459))

(declare-fun m!2127461 () Bool)

(assert (=> b!1721669 m!2127461))

(declare-fun m!2127463 () Bool)

(assert (=> b!1721668 m!2127463))

(declare-fun m!2127465 () Bool)

(assert (=> b!1721668 m!2127465))

(assert (=> b!1721353 d!527662))

(declare-fun d!527664 () Bool)

(declare-fun e!1101263 () Bool)

(assert (=> d!527664 e!1101263))

(declare-fun res!772495 () Bool)

(assert (=> d!527664 (=> res!772495 e!1101263)))

(declare-fun lt!658674 () Option!3703)

(declare-fun isEmpty!11854 (Option!3703) Bool)

(assert (=> d!527664 (= res!772495 (isEmpty!11854 lt!658674))))

(declare-fun e!1101265 () Option!3703)

(assert (=> d!527664 (= lt!658674 e!1101265)))

(declare-fun c!281682 () Bool)

(assert (=> d!527664 (= c!281682 (and ((_ is Cons!18844) rules!3447) (= (tag!3649 (h!24245 rules!3447)) (tag!3649 (rule!5285 (_1!10669 lt!658542))))))))

(assert (=> d!527664 (rulesInvariant!2637 thiss!24550 rules!3447)))

(assert (=> d!527664 (= (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 (_1!10669 lt!658542)))) lt!658674)))

(declare-fun b!1721691 () Bool)

(declare-fun e!1101264 () Option!3703)

(assert (=> b!1721691 (= e!1101265 e!1101264)))

(declare-fun c!281683 () Bool)

(assert (=> b!1721691 (= c!281683 (and ((_ is Cons!18844) rules!3447) (not (= (tag!3649 (h!24245 rules!3447)) (tag!3649 (rule!5285 (_1!10669 lt!658542)))))))))

(declare-fun b!1721692 () Bool)

(assert (=> b!1721692 (= e!1101265 (Some!3702 (h!24245 rules!3447)))))

(declare-fun b!1721693 () Bool)

(declare-fun lt!658675 () Unit!32683)

(declare-fun lt!658673 () Unit!32683)

(assert (=> b!1721693 (= lt!658675 lt!658673)))

(assert (=> b!1721693 (rulesInvariant!2637 thiss!24550 (t!159553 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!134 (LexerInterface!2968 Rule!6478 List!18914) Unit!32683)

(assert (=> b!1721693 (= lt!658673 (lemmaInvariantOnRulesThenOnTail!134 thiss!24550 (h!24245 rules!3447) (t!159553 rules!3447)))))

(assert (=> b!1721693 (= e!1101264 (getRuleFromTag!389 thiss!24550 (t!159553 rules!3447) (tag!3649 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun b!1721694 () Bool)

(declare-fun e!1101266 () Bool)

(assert (=> b!1721694 (= e!1101263 e!1101266)))

(declare-fun res!772494 () Bool)

(assert (=> b!1721694 (=> (not res!772494) (not e!1101266))))

(assert (=> b!1721694 (= res!772494 (contains!3361 rules!3447 (get!5590 lt!658674)))))

(declare-fun b!1721695 () Bool)

(assert (=> b!1721695 (= e!1101266 (= (tag!3649 (get!5590 lt!658674)) (tag!3649 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun b!1721696 () Bool)

(assert (=> b!1721696 (= e!1101264 None!3702)))

(assert (= (and d!527664 c!281682) b!1721692))

(assert (= (and d!527664 (not c!281682)) b!1721691))

(assert (= (and b!1721691 c!281683) b!1721693))

(assert (= (and b!1721691 (not c!281683)) b!1721696))

(assert (= (and d!527664 (not res!772495)) b!1721694))

(assert (= (and b!1721694 res!772494) b!1721695))

(declare-fun m!2127467 () Bool)

(assert (=> d!527664 m!2127467))

(assert (=> d!527664 m!2127087))

(declare-fun m!2127469 () Bool)

(assert (=> b!1721693 m!2127469))

(declare-fun m!2127471 () Bool)

(assert (=> b!1721693 m!2127471))

(declare-fun m!2127473 () Bool)

(assert (=> b!1721693 m!2127473))

(declare-fun m!2127475 () Bool)

(assert (=> b!1721694 m!2127475))

(assert (=> b!1721694 m!2127475))

(declare-fun m!2127477 () Bool)

(assert (=> b!1721694 m!2127477))

(assert (=> b!1721695 m!2127475))

(assert (=> b!1721353 d!527664))

(declare-fun d!527666 () Bool)

(declare-fun e!1101268 () Bool)

(assert (=> d!527666 e!1101268))

(declare-fun res!772496 () Bool)

(assert (=> d!527666 (=> (not res!772496) (not e!1101268))))

(declare-fun lt!658676 () List!18913)

(assert (=> d!527666 (= res!772496 (= (content!2688 lt!658676) ((_ map or) (content!2688 lt!658523) (content!2688 (_2!10669 lt!658542)))))))

(declare-fun e!1101267 () List!18913)

(assert (=> d!527666 (= lt!658676 e!1101267)))

(declare-fun c!281684 () Bool)

(assert (=> d!527666 (= c!281684 ((_ is Nil!18843) lt!658523))))

(assert (=> d!527666 (= (++!5164 lt!658523 (_2!10669 lt!658542)) lt!658676)))

(declare-fun b!1721699 () Bool)

(declare-fun res!772497 () Bool)

(assert (=> b!1721699 (=> (not res!772497) (not e!1101268))))

(assert (=> b!1721699 (= res!772497 (= (size!14976 lt!658676) (+ (size!14976 lt!658523) (size!14976 (_2!10669 lt!658542)))))))

(declare-fun b!1721697 () Bool)

(assert (=> b!1721697 (= e!1101267 (_2!10669 lt!658542))))

(declare-fun b!1721700 () Bool)

(assert (=> b!1721700 (= e!1101268 (or (not (= (_2!10669 lt!658542) Nil!18843)) (= lt!658676 lt!658523)))))

(declare-fun b!1721698 () Bool)

(assert (=> b!1721698 (= e!1101267 (Cons!18843 (h!24244 lt!658523) (++!5164 (t!159552 lt!658523) (_2!10669 lt!658542))))))

(assert (= (and d!527666 c!281684) b!1721697))

(assert (= (and d!527666 (not c!281684)) b!1721698))

(assert (= (and d!527666 res!772496) b!1721699))

(assert (= (and b!1721699 res!772497) b!1721700))

(declare-fun m!2127479 () Bool)

(assert (=> d!527666 m!2127479))

(declare-fun m!2127481 () Bool)

(assert (=> d!527666 m!2127481))

(declare-fun m!2127483 () Bool)

(assert (=> d!527666 m!2127483))

(declare-fun m!2127485 () Bool)

(assert (=> b!1721699 m!2127485))

(assert (=> b!1721699 m!2127079))

(declare-fun m!2127487 () Bool)

(assert (=> b!1721699 m!2127487))

(declare-fun m!2127489 () Bool)

(assert (=> b!1721698 m!2127489))

(assert (=> b!1721353 d!527666))

(declare-fun d!527668 () Bool)

(declare-fun e!1101269 () Bool)

(assert (=> d!527668 e!1101269))

(declare-fun res!772501 () Bool)

(assert (=> d!527668 (=> res!772501 e!1101269)))

(declare-fun lt!658677 () Bool)

(assert (=> d!527668 (= res!772501 (not lt!658677))))

(declare-fun e!1101271 () Bool)

(assert (=> d!527668 (= lt!658677 e!1101271)))

(declare-fun res!772500 () Bool)

(assert (=> d!527668 (=> res!772500 e!1101271)))

(assert (=> d!527668 (= res!772500 ((_ is Nil!18843) lt!658528))))

(assert (=> d!527668 (= (isPrefix!1580 lt!658528 lt!658532) lt!658677)))

(declare-fun b!1721704 () Bool)

(assert (=> b!1721704 (= e!1101269 (>= (size!14976 lt!658532) (size!14976 lt!658528)))))

(declare-fun b!1721701 () Bool)

(declare-fun e!1101270 () Bool)

(assert (=> b!1721701 (= e!1101271 e!1101270)))

(declare-fun res!772498 () Bool)

(assert (=> b!1721701 (=> (not res!772498) (not e!1101270))))

(assert (=> b!1721701 (= res!772498 (not ((_ is Nil!18843) lt!658532)))))

(declare-fun b!1721703 () Bool)

(assert (=> b!1721703 (= e!1101270 (isPrefix!1580 (tail!2571 lt!658528) (tail!2571 lt!658532)))))

(declare-fun b!1721702 () Bool)

(declare-fun res!772499 () Bool)

(assert (=> b!1721702 (=> (not res!772499) (not e!1101270))))

(assert (=> b!1721702 (= res!772499 (= (head!3892 lt!658528) (head!3892 lt!658532)))))

(assert (= (and d!527668 (not res!772500)) b!1721701))

(assert (= (and b!1721701 res!772498) b!1721702))

(assert (= (and b!1721702 res!772499) b!1721703))

(assert (= (and d!527668 (not res!772501)) b!1721704))

(assert (=> b!1721704 m!2127455))

(assert (=> b!1721704 m!2127365))

(assert (=> b!1721703 m!2127433))

(assert (=> b!1721703 m!2127459))

(assert (=> b!1721703 m!2127433))

(assert (=> b!1721703 m!2127459))

(declare-fun m!2127491 () Bool)

(assert (=> b!1721703 m!2127491))

(assert (=> b!1721702 m!2127439))

(assert (=> b!1721702 m!2127465))

(assert (=> b!1721353 d!527668))

(declare-fun d!527670 () Bool)

(assert (=> d!527670 (= (get!5589 lt!658534) (v!25104 lt!658534))))

(assert (=> b!1721353 d!527670))

(declare-fun d!527672 () Bool)

(declare-fun e!1101276 () Bool)

(assert (=> d!527672 e!1101276))

(declare-fun res!772508 () Bool)

(assert (=> d!527672 (=> (not res!772508) (not e!1101276))))

(assert (=> d!527672 (= res!772508 (isDefined!3045 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 (_1!10669 lt!658542))))))))

(declare-fun lt!658697 () Unit!32683)

(declare-fun choose!10470 (LexerInterface!2968 List!18914 List!18913 Token!6244) Unit!32683)

(assert (=> d!527672 (= lt!658697 (choose!10470 thiss!24550 rules!3447 lt!658532 (_1!10669 lt!658542)))))

(assert (=> d!527672 (rulesInvariant!2637 thiss!24550 rules!3447)))

(assert (=> d!527672 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!389 thiss!24550 rules!3447 lt!658532 (_1!10669 lt!658542)) lt!658697)))

(declare-fun b!1721713 () Bool)

(declare-fun res!772509 () Bool)

(assert (=> b!1721713 (=> (not res!772509) (not e!1101276))))

(assert (=> b!1721713 (= res!772509 (matchR!2141 (regex!3339 (get!5590 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 (_1!10669 lt!658542)))))) (list!7612 (charsOf!1988 (_1!10669 lt!658542)))))))

(declare-fun b!1721714 () Bool)

(assert (=> b!1721714 (= e!1101276 (= (rule!5285 (_1!10669 lt!658542)) (get!5590 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 (_1!10669 lt!658542)))))))))

(assert (= (and d!527672 res!772508) b!1721713))

(assert (= (and b!1721713 res!772509) b!1721714))

(assert (=> d!527672 m!2127167))

(assert (=> d!527672 m!2127167))

(declare-fun m!2127543 () Bool)

(assert (=> d!527672 m!2127543))

(declare-fun m!2127545 () Bool)

(assert (=> d!527672 m!2127545))

(assert (=> d!527672 m!2127087))

(assert (=> b!1721713 m!2127097))

(declare-fun m!2127547 () Bool)

(assert (=> b!1721713 m!2127547))

(assert (=> b!1721713 m!2127095))

(assert (=> b!1721713 m!2127097))

(assert (=> b!1721713 m!2127167))

(assert (=> b!1721713 m!2127167))

(declare-fun m!2127549 () Bool)

(assert (=> b!1721713 m!2127549))

(assert (=> b!1721713 m!2127095))

(assert (=> b!1721714 m!2127167))

(assert (=> b!1721714 m!2127167))

(assert (=> b!1721714 m!2127549))

(assert (=> b!1721353 d!527672))

(declare-fun d!527676 () Bool)

(declare-fun lt!658698 () BalanceConc!12478)

(assert (=> d!527676 (= (list!7612 lt!658698) (originalCharacters!4153 (_1!10669 lt!658542)))))

(assert (=> d!527676 (= lt!658698 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))

(assert (=> d!527676 (= (charsOf!1988 (_1!10669 lt!658542)) lt!658698)))

(declare-fun b_lambda!54603 () Bool)

(assert (=> (not b_lambda!54603) (not d!527676)))

(assert (=> d!527676 t!159546))

(declare-fun b_and!125807 () Bool)

(assert (= b_and!125801 (and (=> t!159546 result!122684) b_and!125807)))

(assert (=> d!527676 t!159548))

(declare-fun b_and!125809 () Bool)

(assert (= b_and!125803 (and (=> t!159548 result!122686) b_and!125809)))

(assert (=> d!527676 t!159550))

(declare-fun b_and!125811 () Bool)

(assert (= b_and!125805 (and (=> t!159550 result!122688) b_and!125811)))

(declare-fun m!2127551 () Bool)

(assert (=> d!527676 m!2127551))

(assert (=> d!527676 m!2127085))

(assert (=> b!1721353 d!527676))

(declare-fun d!527678 () Bool)

(declare-fun e!1101280 () Bool)

(assert (=> d!527678 e!1101280))

(declare-fun res!772510 () Bool)

(assert (=> d!527678 (=> (not res!772510) (not e!1101280))))

(declare-fun lt!658699 () List!18913)

(assert (=> d!527678 (= res!772510 (= (content!2688 lt!658699) ((_ map or) (content!2688 lt!658528) (content!2688 suffix!1421))))))

(declare-fun e!1101279 () List!18913)

(assert (=> d!527678 (= lt!658699 e!1101279)))

(declare-fun c!281688 () Bool)

(assert (=> d!527678 (= c!281688 ((_ is Nil!18843) lt!658528))))

(assert (=> d!527678 (= (++!5164 lt!658528 suffix!1421) lt!658699)))

(declare-fun b!1721721 () Bool)

(declare-fun res!772511 () Bool)

(assert (=> b!1721721 (=> (not res!772511) (not e!1101280))))

(assert (=> b!1721721 (= res!772511 (= (size!14976 lt!658699) (+ (size!14976 lt!658528) (size!14976 suffix!1421))))))

(declare-fun b!1721719 () Bool)

(assert (=> b!1721719 (= e!1101279 suffix!1421)))

(declare-fun b!1721722 () Bool)

(assert (=> b!1721722 (= e!1101280 (or (not (= suffix!1421 Nil!18843)) (= lt!658699 lt!658528)))))

(declare-fun b!1721720 () Bool)

(assert (=> b!1721720 (= e!1101279 (Cons!18843 (h!24244 lt!658528) (++!5164 (t!159552 lt!658528) suffix!1421)))))

(assert (= (and d!527678 c!281688) b!1721719))

(assert (= (and d!527678 (not c!281688)) b!1721720))

(assert (= (and d!527678 res!772510) b!1721721))

(assert (= (and b!1721721 res!772511) b!1721722))

(declare-fun m!2127555 () Bool)

(assert (=> d!527678 m!2127555))

(assert (=> d!527678 m!2127395))

(declare-fun m!2127559 () Bool)

(assert (=> d!527678 m!2127559))

(declare-fun m!2127561 () Bool)

(assert (=> b!1721721 m!2127561))

(assert (=> b!1721721 m!2127365))

(declare-fun m!2127565 () Bool)

(assert (=> b!1721721 m!2127565))

(declare-fun m!2127569 () Bool)

(assert (=> b!1721720 m!2127569))

(assert (=> b!1721353 d!527678))

(declare-fun d!527680 () Bool)

(assert (=> d!527680 (= (list!7612 lt!658539) (list!7614 (c!281623 lt!658539)))))

(declare-fun bs!402228 () Bool)

(assert (= bs!402228 d!527680))

(declare-fun m!2127573 () Bool)

(assert (=> bs!402228 m!2127573))

(assert (=> b!1721353 d!527680))

(declare-fun b!1721835 () Bool)

(declare-fun res!772573 () Bool)

(declare-fun e!1101342 () Bool)

(assert (=> b!1721835 (=> (not res!772573) (not e!1101342))))

(declare-fun lt!658778 () Token!6244)

(assert (=> b!1721835 (= res!772573 (matchR!2141 (regex!3339 (get!5590 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 lt!658778))))) (list!7612 (charsOf!1988 lt!658778))))))

(declare-fun b!1721836 () Bool)

(assert (=> b!1721836 (= e!1101342 (= (rule!5285 lt!658778) (get!5590 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 lt!658778))))))))

(declare-fun b!1721838 () Bool)

(declare-fun e!1101343 () Unit!32683)

(declare-fun Unit!32688 () Unit!32683)

(assert (=> b!1721838 (= e!1101343 Unit!32688)))

(declare-fun b!1721837 () Bool)

(declare-fun Unit!32689 () Unit!32683)

(assert (=> b!1721837 (= e!1101343 Unit!32689)))

(declare-fun lt!658783 () List!18913)

(assert (=> b!1721837 (= lt!658783 (++!5164 lt!658528 suffix!1421))))

(declare-fun lt!658771 () Unit!32683)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!263 (LexerInterface!2968 Rule!6478 List!18914 List!18913) Unit!32683)

(assert (=> b!1721837 (= lt!658771 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!263 thiss!24550 (rule!5285 lt!658778) rules!3447 lt!658783))))

(assert (=> b!1721837 (isEmpty!11853 (maxPrefixOneRule!898 thiss!24550 (rule!5285 lt!658778) lt!658783))))

(declare-fun lt!658782 () Unit!32683)

(assert (=> b!1721837 (= lt!658782 lt!658771)))

(declare-fun lt!658781 () List!18913)

(assert (=> b!1721837 (= lt!658781 (list!7612 (charsOf!1988 lt!658778)))))

(declare-fun lt!658776 () Unit!32683)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!259 (LexerInterface!2968 Rule!6478 List!18913 List!18913) Unit!32683)

(assert (=> b!1721837 (= lt!658776 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!259 thiss!24550 (rule!5285 lt!658778) lt!658781 (++!5164 lt!658528 suffix!1421)))))

(assert (=> b!1721837 (not (matchR!2141 (regex!3339 (rule!5285 lt!658778)) lt!658781))))

(declare-fun lt!658774 () Unit!32683)

(assert (=> b!1721837 (= lt!658774 lt!658776)))

(assert (=> b!1721837 false))

(declare-fun d!527682 () Bool)

(assert (=> d!527682 (isDefined!3046 (maxPrefix!1522 thiss!24550 rules!3447 (++!5164 lt!658528 suffix!1421)))))

(declare-fun lt!658784 () Unit!32683)

(assert (=> d!527682 (= lt!658784 e!1101343)))

(declare-fun c!281712 () Bool)

(assert (=> d!527682 (= c!281712 (isEmpty!11853 (maxPrefix!1522 thiss!24550 rules!3447 (++!5164 lt!658528 suffix!1421))))))

(declare-fun lt!658786 () Unit!32683)

(declare-fun lt!658773 () Unit!32683)

(assert (=> d!527682 (= lt!658786 lt!658773)))

(assert (=> d!527682 e!1101342))

(declare-fun res!772572 () Bool)

(assert (=> d!527682 (=> (not res!772572) (not e!1101342))))

(assert (=> d!527682 (= res!772572 (isDefined!3045 (getRuleFromTag!389 thiss!24550 rules!3447 (tag!3649 (rule!5285 lt!658778)))))))

(assert (=> d!527682 (= lt!658773 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!389 thiss!24550 rules!3447 lt!658528 lt!658778))))

(declare-fun lt!658772 () Unit!32683)

(declare-fun lt!658780 () Unit!32683)

(assert (=> d!527682 (= lt!658772 lt!658780)))

(declare-fun lt!658777 () List!18913)

(assert (=> d!527682 (isPrefix!1580 lt!658777 (++!5164 lt!658528 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!255 (List!18913 List!18913 List!18913) Unit!32683)

(assert (=> d!527682 (= lt!658780 (lemmaPrefixStaysPrefixWhenAddingToSuffix!255 lt!658777 lt!658528 suffix!1421))))

(assert (=> d!527682 (= lt!658777 (list!7612 (charsOf!1988 lt!658778)))))

(declare-fun lt!658775 () Unit!32683)

(declare-fun lt!658779 () Unit!32683)

(assert (=> d!527682 (= lt!658775 lt!658779)))

(declare-fun lt!658787 () List!18913)

(declare-fun lt!658785 () List!18913)

(assert (=> d!527682 (isPrefix!1580 lt!658787 (++!5164 lt!658787 lt!658785))))

(assert (=> d!527682 (= lt!658779 (lemmaConcatTwoListThenFirstIsPrefix!1090 lt!658787 lt!658785))))

(assert (=> d!527682 (= lt!658785 (_2!10669 (get!5589 (maxPrefix!1522 thiss!24550 rules!3447 lt!658528))))))

(assert (=> d!527682 (= lt!658787 (list!7612 (charsOf!1988 lt!658778)))))

(declare-datatypes ((List!18918 0))(
  ( (Nil!18848) (Cons!18848 (h!24249 Token!6244) (t!159617 List!18918)) )
))
(declare-fun head!3894 (List!18918) Token!6244)

(declare-datatypes ((IArray!12543 0))(
  ( (IArray!12544 (innerList!6329 List!18918)) )
))
(declare-datatypes ((Conc!6269 0))(
  ( (Node!6269 (left!15040 Conc!6269) (right!15370 Conc!6269) (csize!12768 Int) (cheight!6480 Int)) (Leaf!9159 (xs!9145 IArray!12543) (csize!12769 Int)) (Empty!6269) )
))
(declare-datatypes ((BalanceConc!12482 0))(
  ( (BalanceConc!12483 (c!281747 Conc!6269)) )
))
(declare-fun list!7616 (BalanceConc!12482) List!18918)

(declare-datatypes ((tuple2!18538 0))(
  ( (tuple2!18539 (_1!10671 BalanceConc!12482) (_2!10671 BalanceConc!12478)) )
))
(declare-fun lex!1394 (LexerInterface!2968 List!18914 BalanceConc!12478) tuple2!18538)

(assert (=> d!527682 (= lt!658778 (head!3894 (list!7616 (_1!10671 (lex!1394 thiss!24550 rules!3447 (seqFromList!2313 lt!658528))))))))

(assert (=> d!527682 (not (isEmpty!11850 rules!3447))))

(assert (=> d!527682 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!492 thiss!24550 rules!3447 lt!658528 suffix!1421) lt!658784)))

(assert (= (and d!527682 res!772572) b!1721835))

(assert (= (and b!1721835 res!772573) b!1721836))

(assert (= (and d!527682 c!281712) b!1721837))

(assert (= (and d!527682 (not c!281712)) b!1721838))

(declare-fun m!2127725 () Bool)

(assert (=> b!1721835 m!2127725))

(declare-fun m!2127727 () Bool)

(assert (=> b!1721835 m!2127727))

(declare-fun m!2127729 () Bool)

(assert (=> b!1721835 m!2127729))

(assert (=> b!1721835 m!2127729))

(declare-fun m!2127731 () Bool)

(assert (=> b!1721835 m!2127731))

(declare-fun m!2127733 () Bool)

(assert (=> b!1721835 m!2127733))

(assert (=> b!1721835 m!2127725))

(assert (=> b!1721835 m!2127733))

(assert (=> b!1721836 m!2127729))

(assert (=> b!1721836 m!2127729))

(assert (=> b!1721836 m!2127731))

(assert (=> b!1721837 m!2127175))

(declare-fun m!2127735 () Bool)

(assert (=> b!1721837 m!2127735))

(declare-fun m!2127737 () Bool)

(assert (=> b!1721837 m!2127737))

(assert (=> b!1721837 m!2127175))

(assert (=> b!1721837 m!2127733))

(assert (=> b!1721837 m!2127725))

(assert (=> b!1721837 m!2127737))

(declare-fun m!2127739 () Bool)

(assert (=> b!1721837 m!2127739))

(assert (=> b!1721837 m!2127733))

(declare-fun m!2127741 () Bool)

(assert (=> b!1721837 m!2127741))

(declare-fun m!2127743 () Bool)

(assert (=> b!1721837 m!2127743))

(declare-fun m!2127745 () Bool)

(assert (=> d!527682 m!2127745))

(assert (=> d!527682 m!2127729))

(declare-fun m!2127747 () Bool)

(assert (=> d!527682 m!2127747))

(declare-fun m!2127749 () Bool)

(assert (=> d!527682 m!2127749))

(declare-fun m!2127751 () Bool)

(assert (=> d!527682 m!2127751))

(assert (=> d!527682 m!2127175))

(declare-fun m!2127753 () Bool)

(assert (=> d!527682 m!2127753))

(assert (=> d!527682 m!2127733))

(assert (=> d!527682 m!2127725))

(assert (=> d!527682 m!2127753))

(declare-fun m!2127755 () Bool)

(assert (=> d!527682 m!2127755))

(assert (=> d!527682 m!2127753))

(declare-fun m!2127757 () Bool)

(assert (=> d!527682 m!2127757))

(assert (=> d!527682 m!2127113))

(declare-fun m!2127759 () Bool)

(assert (=> d!527682 m!2127759))

(declare-fun m!2127761 () Bool)

(assert (=> d!527682 m!2127761))

(declare-fun m!2127763 () Bool)

(assert (=> d!527682 m!2127763))

(assert (=> d!527682 m!2127729))

(assert (=> d!527682 m!2127175))

(assert (=> d!527682 m!2127175))

(declare-fun m!2127765 () Bool)

(assert (=> d!527682 m!2127765))

(assert (=> d!527682 m!2127187))

(declare-fun m!2127767 () Bool)

(assert (=> d!527682 m!2127767))

(declare-fun m!2127769 () Bool)

(assert (=> d!527682 m!2127769))

(assert (=> d!527682 m!2127769))

(declare-fun m!2127771 () Bool)

(assert (=> d!527682 m!2127771))

(assert (=> d!527682 m!2127749))

(declare-fun m!2127773 () Bool)

(assert (=> d!527682 m!2127773))

(assert (=> d!527682 m!2127733))

(assert (=> d!527682 m!2127759))

(assert (=> d!527682 m!2127187))

(assert (=> b!1721353 d!527682))

(declare-fun b!1721855 () Bool)

(declare-fun res!772591 () Bool)

(declare-fun e!1101354 () Bool)

(assert (=> b!1721855 (=> (not res!772591) (not e!1101354))))

(declare-fun lt!658798 () Option!3702)

(assert (=> b!1721855 (= res!772591 (< (size!14976 (_2!10669 (get!5589 lt!658798))) (size!14976 lt!658532)))))

(declare-fun b!1721856 () Bool)

(declare-fun res!772585 () Bool)

(assert (=> b!1721856 (=> (not res!772585) (not e!1101354))))

(assert (=> b!1721856 (= res!772585 (= (++!5164 (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658798)))) (_2!10669 (get!5589 lt!658798))) lt!658532))))

(declare-fun b!1721857 () Bool)

(declare-fun e!1101353 () Option!3702)

(declare-fun call!109731 () Option!3702)

(assert (=> b!1721857 (= e!1101353 call!109731)))

(declare-fun b!1721858 () Bool)

(assert (=> b!1721858 (= e!1101354 (contains!3361 rules!3447 (rule!5285 (_1!10669 (get!5589 lt!658798)))))))

(declare-fun bm!109726 () Bool)

(assert (=> bm!109726 (= call!109731 (maxPrefixOneRule!898 thiss!24550 (h!24245 rules!3447) lt!658532))))

(declare-fun b!1721860 () Bool)

(declare-fun res!772590 () Bool)

(assert (=> b!1721860 (=> (not res!772590) (not e!1101354))))

(assert (=> b!1721860 (= res!772590 (= (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658798)))) (originalCharacters!4153 (_1!10669 (get!5589 lt!658798)))))))

(declare-fun b!1721861 () Bool)

(declare-fun res!772584 () Bool)

(assert (=> b!1721861 (=> (not res!772584) (not e!1101354))))

(assert (=> b!1721861 (= res!772584 (matchR!2141 (regex!3339 (rule!5285 (_1!10669 (get!5589 lt!658798)))) (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658798))))))))

(declare-fun d!527746 () Bool)

(declare-fun e!1101352 () Bool)

(assert (=> d!527746 e!1101352))

(declare-fun res!772587 () Bool)

(assert (=> d!527746 (=> res!772587 e!1101352)))

(assert (=> d!527746 (= res!772587 (isEmpty!11853 lt!658798))))

(assert (=> d!527746 (= lt!658798 e!1101353)))

(declare-fun c!281715 () Bool)

(assert (=> d!527746 (= c!281715 (and ((_ is Cons!18844) rules!3447) ((_ is Nil!18844) (t!159553 rules!3447))))))

(declare-fun lt!658802 () Unit!32683)

(declare-fun lt!658799 () Unit!32683)

(assert (=> d!527746 (= lt!658802 lt!658799)))

(assert (=> d!527746 (isPrefix!1580 lt!658532 lt!658532)))

(assert (=> d!527746 (= lt!658799 (lemmaIsPrefixRefl!1069 lt!658532 lt!658532))))

(assert (=> d!527746 (rulesValidInductive!1106 thiss!24550 rules!3447)))

(assert (=> d!527746 (= (maxPrefix!1522 thiss!24550 rules!3447 lt!658532) lt!658798)))

(declare-fun b!1721859 () Bool)

(assert (=> b!1721859 (= e!1101352 e!1101354)))

(declare-fun res!772586 () Bool)

(assert (=> b!1721859 (=> (not res!772586) (not e!1101354))))

(assert (=> b!1721859 (= res!772586 (isDefined!3046 lt!658798))))

(declare-fun b!1721862 () Bool)

(declare-fun lt!658800 () Option!3702)

(declare-fun lt!658801 () Option!3702)

(assert (=> b!1721862 (= e!1101353 (ite (and ((_ is None!3701) lt!658800) ((_ is None!3701) lt!658801)) None!3701 (ite ((_ is None!3701) lt!658801) lt!658800 (ite ((_ is None!3701) lt!658800) lt!658801 (ite (>= (size!14974 (_1!10669 (v!25104 lt!658800))) (size!14974 (_1!10669 (v!25104 lt!658801)))) lt!658800 lt!658801)))))))

(assert (=> b!1721862 (= lt!658800 call!109731)))

(assert (=> b!1721862 (= lt!658801 (maxPrefix!1522 thiss!24550 (t!159553 rules!3447) lt!658532))))

(declare-fun b!1721863 () Bool)

(declare-fun res!772594 () Bool)

(assert (=> b!1721863 (=> (not res!772594) (not e!1101354))))

(assert (=> b!1721863 (= res!772594 (= (value!104834 (_1!10669 (get!5589 lt!658798))) (apply!5144 (transformation!3339 (rule!5285 (_1!10669 (get!5589 lt!658798)))) (seqFromList!2313 (originalCharacters!4153 (_1!10669 (get!5589 lt!658798)))))))))

(assert (= (and d!527746 c!281715) b!1721857))

(assert (= (and d!527746 (not c!281715)) b!1721862))

(assert (= (or b!1721857 b!1721862) bm!109726))

(assert (= (and d!527746 (not res!772587)) b!1721859))

(assert (= (and b!1721859 res!772586) b!1721860))

(assert (= (and b!1721860 res!772590) b!1721855))

(assert (= (and b!1721855 res!772591) b!1721856))

(assert (= (and b!1721856 res!772585) b!1721863))

(assert (= (and b!1721863 res!772594) b!1721861))

(assert (= (and b!1721861 res!772584) b!1721858))

(declare-fun m!2127775 () Bool)

(assert (=> b!1721863 m!2127775))

(declare-fun m!2127777 () Bool)

(assert (=> b!1721863 m!2127777))

(assert (=> b!1721863 m!2127777))

(declare-fun m!2127779 () Bool)

(assert (=> b!1721863 m!2127779))

(declare-fun m!2127781 () Bool)

(assert (=> bm!109726 m!2127781))

(declare-fun m!2127783 () Bool)

(assert (=> d!527746 m!2127783))

(declare-fun m!2127785 () Bool)

(assert (=> d!527746 m!2127785))

(declare-fun m!2127787 () Bool)

(assert (=> d!527746 m!2127787))

(assert (=> d!527746 m!2127105))

(assert (=> b!1721858 m!2127775))

(declare-fun m!2127789 () Bool)

(assert (=> b!1721858 m!2127789))

(assert (=> b!1721861 m!2127775))

(declare-fun m!2127791 () Bool)

(assert (=> b!1721861 m!2127791))

(assert (=> b!1721861 m!2127791))

(declare-fun m!2127793 () Bool)

(assert (=> b!1721861 m!2127793))

(assert (=> b!1721861 m!2127793))

(declare-fun m!2127795 () Bool)

(assert (=> b!1721861 m!2127795))

(assert (=> b!1721856 m!2127775))

(assert (=> b!1721856 m!2127791))

(assert (=> b!1721856 m!2127791))

(assert (=> b!1721856 m!2127793))

(assert (=> b!1721856 m!2127793))

(declare-fun m!2127797 () Bool)

(assert (=> b!1721856 m!2127797))

(assert (=> b!1721855 m!2127775))

(declare-fun m!2127799 () Bool)

(assert (=> b!1721855 m!2127799))

(assert (=> b!1721855 m!2127455))

(declare-fun m!2127801 () Bool)

(assert (=> b!1721862 m!2127801))

(declare-fun m!2127803 () Bool)

(assert (=> b!1721859 m!2127803))

(assert (=> b!1721860 m!2127775))

(assert (=> b!1721860 m!2127791))

(assert (=> b!1721860 m!2127791))

(assert (=> b!1721860 m!2127793))

(assert (=> b!1721353 d!527746))

(declare-fun d!527748 () Bool)

(assert (=> d!527748 (= (isDefined!3045 lt!658530) (not (isEmpty!11854 lt!658530)))))

(declare-fun bs!402240 () Bool)

(assert (= bs!402240 d!527748))

(declare-fun m!2127805 () Bool)

(assert (=> bs!402240 m!2127805))

(assert (=> b!1721353 d!527748))

(declare-fun d!527750 () Bool)

(declare-fun e!1101355 () Bool)

(assert (=> d!527750 e!1101355))

(declare-fun res!772598 () Bool)

(assert (=> d!527750 (=> res!772598 e!1101355)))

(declare-fun lt!658803 () Bool)

(assert (=> d!527750 (= res!772598 (not lt!658803))))

(declare-fun e!1101357 () Bool)

(assert (=> d!527750 (= lt!658803 e!1101357)))

(declare-fun res!772597 () Bool)

(assert (=> d!527750 (=> res!772597 e!1101357)))

(assert (=> d!527750 (= res!772597 ((_ is Nil!18843) lt!658523))))

(assert (=> d!527750 (= (isPrefix!1580 lt!658523 (++!5164 lt!658523 (_2!10669 lt!658542))) lt!658803)))

(declare-fun b!1721869 () Bool)

(assert (=> b!1721869 (= e!1101355 (>= (size!14976 (++!5164 lt!658523 (_2!10669 lt!658542))) (size!14976 lt!658523)))))

(declare-fun b!1721866 () Bool)

(declare-fun e!1101356 () Bool)

(assert (=> b!1721866 (= e!1101357 e!1101356)))

(declare-fun res!772595 () Bool)

(assert (=> b!1721866 (=> (not res!772595) (not e!1101356))))

(assert (=> b!1721866 (= res!772595 (not ((_ is Nil!18843) (++!5164 lt!658523 (_2!10669 lt!658542)))))))

(declare-fun b!1721868 () Bool)

(assert (=> b!1721868 (= e!1101356 (isPrefix!1580 (tail!2571 lt!658523) (tail!2571 (++!5164 lt!658523 (_2!10669 lt!658542)))))))

(declare-fun b!1721867 () Bool)

(declare-fun res!772596 () Bool)

(assert (=> b!1721867 (=> (not res!772596) (not e!1101356))))

(assert (=> b!1721867 (= res!772596 (= (head!3892 lt!658523) (head!3892 (++!5164 lt!658523 (_2!10669 lt!658542)))))))

(assert (= (and d!527750 (not res!772597)) b!1721866))

(assert (= (and b!1721866 res!772595) b!1721867))

(assert (= (and b!1721867 res!772596) b!1721868))

(assert (= (and d!527750 (not res!772598)) b!1721869))

(assert (=> b!1721869 m!2127151))

(declare-fun m!2127807 () Bool)

(assert (=> b!1721869 m!2127807))

(assert (=> b!1721869 m!2127079))

(assert (=> b!1721868 m!2127457))

(assert (=> b!1721868 m!2127151))

(declare-fun m!2127809 () Bool)

(assert (=> b!1721868 m!2127809))

(assert (=> b!1721868 m!2127457))

(assert (=> b!1721868 m!2127809))

(declare-fun m!2127811 () Bool)

(assert (=> b!1721868 m!2127811))

(assert (=> b!1721867 m!2127463))

(assert (=> b!1721867 m!2127151))

(declare-fun m!2127813 () Bool)

(assert (=> b!1721867 m!2127813))

(assert (=> b!1721353 d!527750))

(declare-fun d!527752 () Bool)

(assert (=> d!527752 true))

(declare-fun lt!658811 () Bool)

(declare-fun lambda!69137 () Int)

(declare-fun forall!4254 (List!18914 Int) Bool)

(assert (=> d!527752 (= lt!658811 (forall!4254 rules!3447 lambda!69137))))

(declare-fun e!1101366 () Bool)

(assert (=> d!527752 (= lt!658811 e!1101366)))

(declare-fun res!772611 () Bool)

(assert (=> d!527752 (=> res!772611 e!1101366)))

(assert (=> d!527752 (= res!772611 (not ((_ is Cons!18844) rules!3447)))))

(assert (=> d!527752 (= (rulesValidInductive!1106 thiss!24550 rules!3447) lt!658811)))

(declare-fun b!1721883 () Bool)

(declare-fun e!1101367 () Bool)

(assert (=> b!1721883 (= e!1101366 e!1101367)))

(declare-fun res!772610 () Bool)

(assert (=> b!1721883 (=> (not res!772610) (not e!1101367))))

(assert (=> b!1721883 (= res!772610 (ruleValid!838 thiss!24550 (h!24245 rules!3447)))))

(declare-fun b!1721884 () Bool)

(assert (=> b!1721884 (= e!1101367 (rulesValidInductive!1106 thiss!24550 (t!159553 rules!3447)))))

(assert (= (and d!527752 (not res!772611)) b!1721883))

(assert (= (and b!1721883 res!772610) b!1721884))

(declare-fun m!2127839 () Bool)

(assert (=> d!527752 m!2127839))

(declare-fun m!2127843 () Bool)

(assert (=> b!1721883 m!2127843))

(declare-fun m!2127845 () Bool)

(assert (=> b!1721884 m!2127845))

(assert (=> b!1721349 d!527752))

(declare-fun d!527754 () Bool)

(declare-fun e!1101372 () Bool)

(assert (=> d!527754 e!1101372))

(declare-fun c!281719 () Bool)

(assert (=> d!527754 (= c!281719 ((_ is EmptyExpr!4667) lt!658538))))

(declare-fun lt!658812 () Bool)

(declare-fun e!1101368 () Bool)

(assert (=> d!527754 (= lt!658812 e!1101368)))

(declare-fun c!281717 () Bool)

(assert (=> d!527754 (= c!281717 (isEmpty!11849 lt!658528))))

(assert (=> d!527754 (validRegex!1880 lt!658538)))

(assert (=> d!527754 (= (matchR!2141 lt!658538 lt!658528) lt!658812)))

(declare-fun b!1721887 () Bool)

(declare-fun e!1101374 () Bool)

(assert (=> b!1721887 (= e!1101372 e!1101374)))

(declare-fun c!281718 () Bool)

(assert (=> b!1721887 (= c!281718 ((_ is EmptyLang!4667) lt!658538))))

(declare-fun b!1721888 () Bool)

(assert (=> b!1721888 (= e!1101368 (matchR!2141 (derivativeStep!1174 lt!658538 (head!3892 lt!658528)) (tail!2571 lt!658528)))))

(declare-fun b!1721889 () Bool)

(declare-fun res!772614 () Bool)

(declare-fun e!1101370 () Bool)

(assert (=> b!1721889 (=> (not res!772614) (not e!1101370))))

(declare-fun call!109732 () Bool)

(assert (=> b!1721889 (= res!772614 (not call!109732))))

(declare-fun b!1721890 () Bool)

(declare-fun res!772612 () Bool)

(declare-fun e!1101369 () Bool)

(assert (=> b!1721890 (=> res!772612 e!1101369)))

(assert (=> b!1721890 (= res!772612 (not (isEmpty!11849 (tail!2571 lt!658528))))))

(declare-fun b!1721891 () Bool)

(assert (=> b!1721891 (= e!1101370 (= (head!3892 lt!658528) (c!281622 lt!658538)))))

(declare-fun b!1721892 () Bool)

(declare-fun res!772615 () Bool)

(declare-fun e!1101371 () Bool)

(assert (=> b!1721892 (=> res!772615 e!1101371)))

(assert (=> b!1721892 (= res!772615 (not ((_ is ElementMatch!4667) lt!658538)))))

(assert (=> b!1721892 (= e!1101374 e!1101371)))

(declare-fun b!1721893 () Bool)

(declare-fun e!1101373 () Bool)

(assert (=> b!1721893 (= e!1101371 e!1101373)))

(declare-fun res!772619 () Bool)

(assert (=> b!1721893 (=> (not res!772619) (not e!1101373))))

(assert (=> b!1721893 (= res!772619 (not lt!658812))))

(declare-fun b!1721894 () Bool)

(assert (=> b!1721894 (= e!1101368 (nullable!1406 lt!658538))))

(declare-fun b!1721895 () Bool)

(assert (=> b!1721895 (= e!1101373 e!1101369)))

(declare-fun res!772613 () Bool)

(assert (=> b!1721895 (=> res!772613 e!1101369)))

(assert (=> b!1721895 (= res!772613 call!109732)))

(declare-fun b!1721896 () Bool)

(declare-fun res!772618 () Bool)

(assert (=> b!1721896 (=> (not res!772618) (not e!1101370))))

(assert (=> b!1721896 (= res!772618 (isEmpty!11849 (tail!2571 lt!658528)))))

(declare-fun bm!109727 () Bool)

(assert (=> bm!109727 (= call!109732 (isEmpty!11849 lt!658528))))

(declare-fun b!1721897 () Bool)

(assert (=> b!1721897 (= e!1101374 (not lt!658812))))

(declare-fun b!1721898 () Bool)

(assert (=> b!1721898 (= e!1101369 (not (= (head!3892 lt!658528) (c!281622 lt!658538))))))

(declare-fun b!1721899 () Bool)

(assert (=> b!1721899 (= e!1101372 (= lt!658812 call!109732))))

(declare-fun b!1721900 () Bool)

(declare-fun res!772617 () Bool)

(assert (=> b!1721900 (=> res!772617 e!1101371)))

(assert (=> b!1721900 (= res!772617 e!1101370)))

(declare-fun res!772616 () Bool)

(assert (=> b!1721900 (=> (not res!772616) (not e!1101370))))

(assert (=> b!1721900 (= res!772616 lt!658812)))

(assert (= (and d!527754 c!281717) b!1721894))

(assert (= (and d!527754 (not c!281717)) b!1721888))

(assert (= (and d!527754 c!281719) b!1721899))

(assert (= (and d!527754 (not c!281719)) b!1721887))

(assert (= (and b!1721887 c!281718) b!1721897))

(assert (= (and b!1721887 (not c!281718)) b!1721892))

(assert (= (and b!1721892 (not res!772615)) b!1721900))

(assert (= (and b!1721900 res!772616) b!1721889))

(assert (= (and b!1721889 res!772614) b!1721896))

(assert (= (and b!1721896 res!772618) b!1721891))

(assert (= (and b!1721900 (not res!772617)) b!1721893))

(assert (= (and b!1721893 res!772619) b!1721895))

(assert (= (and b!1721895 (not res!772613)) b!1721890))

(assert (= (and b!1721890 (not res!772612)) b!1721898))

(assert (= (or b!1721899 b!1721895 b!1721889) bm!109727))

(assert (=> bm!109727 m!2127431))

(assert (=> b!1721896 m!2127433))

(assert (=> b!1721896 m!2127433))

(assert (=> b!1721896 m!2127435))

(declare-fun m!2127865 () Bool)

(assert (=> b!1721894 m!2127865))

(assert (=> b!1721891 m!2127439))

(assert (=> b!1721888 m!2127439))

(assert (=> b!1721888 m!2127439))

(declare-fun m!2127867 () Bool)

(assert (=> b!1721888 m!2127867))

(assert (=> b!1721888 m!2127433))

(assert (=> b!1721888 m!2127867))

(assert (=> b!1721888 m!2127433))

(declare-fun m!2127869 () Bool)

(assert (=> b!1721888 m!2127869))

(assert (=> b!1721898 m!2127439))

(assert (=> d!527754 m!2127431))

(declare-fun m!2127871 () Bool)

(assert (=> d!527754 m!2127871))

(assert (=> b!1721890 m!2127433))

(assert (=> b!1721890 m!2127433))

(assert (=> b!1721890 m!2127435))

(assert (=> b!1721349 d!527754))

(declare-fun d!527758 () Bool)

(assert (=> d!527758 (matchR!2141 (rulesRegex!697 thiss!24550 rules!3447) (list!7612 (charsOf!1988 token!523)))))

(declare-fun lt!658817 () Unit!32683)

(declare-fun choose!10474 (LexerInterface!2968 List!18914 List!18913 Token!6244 Rule!6478 List!18913) Unit!32683)

(assert (=> d!527758 (= lt!658817 (choose!10474 thiss!24550 rules!3447 lt!658528 token!523 rule!422 Nil!18843))))

(assert (=> d!527758 (not (isEmpty!11850 rules!3447))))

(assert (=> d!527758 (= (lemmaMaxPrefixThenMatchesRulesRegex!88 thiss!24550 rules!3447 lt!658528 token!523 rule!422 Nil!18843) lt!658817)))

(declare-fun bs!402241 () Bool)

(assert (= bs!402241 d!527758))

(assert (=> bs!402241 m!2127133))

(assert (=> bs!402241 m!2127133))

(assert (=> bs!402241 m!2127191))

(declare-fun m!2127873 () Bool)

(assert (=> bs!402241 m!2127873))

(declare-fun m!2127875 () Bool)

(assert (=> bs!402241 m!2127875))

(assert (=> bs!402241 m!2127189))

(assert (=> bs!402241 m!2127191))

(assert (=> bs!402241 m!2127189))

(assert (=> bs!402241 m!2127113))

(assert (=> b!1721349 d!527758))

(declare-fun d!527760 () Bool)

(assert (=> d!527760 (= (isEmpty!11849 suffix!1421) ((_ is Nil!18843) suffix!1421))))

(assert (=> b!1721346 d!527760))

(declare-fun d!527762 () Bool)

(assert (=> d!527762 (= (list!7612 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))) (list!7614 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))))

(declare-fun bs!402242 () Bool)

(assert (= bs!402242 d!527762))

(declare-fun m!2127877 () Bool)

(assert (=> bs!402242 m!2127877))

(assert (=> b!1721348 d!527762))

(declare-fun bs!402246 () Bool)

(declare-fun d!527764 () Bool)

(assert (= bs!402246 (and d!527764 b!1721356)))

(declare-fun lambda!69143 () Int)

(assert (=> bs!402246 (= lambda!69143 lambda!69122)))

(declare-fun b!1721912 () Bool)

(declare-fun e!1101383 () Bool)

(assert (=> b!1721912 (= e!1101383 true)))

(assert (=> d!527764 e!1101383))

(assert (= d!527764 b!1721912))

(assert (=> b!1721912 (< (dynLambda!8682 order!11487 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8683 order!11489 lambda!69143))))

(assert (=> b!1721912 (< (dynLambda!8684 order!11491 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8683 order!11489 lambda!69143))))

(assert (=> d!527764 (= (list!7612 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))) (list!7612 lt!658539))))

(declare-fun lt!658824 () Unit!32683)

(declare-fun ForallOf!262 (Int BalanceConc!12478) Unit!32683)

(assert (=> d!527764 (= lt!658824 (ForallOf!262 lambda!69143 lt!658539))))

(assert (=> d!527764 (= (lemmaSemiInverse!485 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539) lt!658824)))

(declare-fun b_lambda!54621 () Bool)

(assert (=> (not b_lambda!54621) (not d!527764)))

(assert (=> d!527764 t!159534))

(declare-fun b_and!125861 () Bool)

(assert (= b_and!125807 (and (=> t!159534 result!122668) b_and!125861)))

(assert (=> d!527764 t!159536))

(declare-fun b_and!125863 () Bool)

(assert (= b_and!125809 (and (=> t!159536 result!122672) b_and!125863)))

(assert (=> d!527764 t!159538))

(declare-fun b_and!125865 () Bool)

(assert (= b_and!125811 (and (=> t!159538 result!122674) b_and!125865)))

(declare-fun b_lambda!54623 () Bool)

(assert (=> (not b_lambda!54623) (not d!527764)))

(assert (=> d!527764 t!159540))

(declare-fun b_and!125867 () Bool)

(assert (= b_and!125777 (and (=> t!159540 result!122676) b_and!125867)))

(assert (=> d!527764 t!159542))

(declare-fun b_and!125869 () Bool)

(assert (= b_and!125779 (and (=> t!159542 result!122680) b_and!125869)))

(assert (=> d!527764 t!159544))

(declare-fun b_and!125871 () Bool)

(assert (= b_and!125781 (and (=> t!159544 result!122682) b_and!125871)))

(declare-fun m!2127895 () Bool)

(assert (=> d!527764 m!2127895))

(assert (=> d!527764 m!2127171))

(assert (=> d!527764 m!2127145))

(assert (=> d!527764 m!2127147))

(assert (=> d!527764 m!2127143))

(assert (=> d!527764 m!2127145))

(assert (=> d!527764 m!2127143))

(assert (=> b!1721348 d!527764))

(declare-fun d!527780 () Bool)

(assert (=> d!527780 (= (inv!24334 (tag!3649 rule!422)) (= (mod (str.len (value!104833 (tag!3649 rule!422))) 2) 0))))

(assert (=> b!1721347 d!527780))

(declare-fun d!527782 () Bool)

(declare-fun res!772623 () Bool)

(declare-fun e!1101386 () Bool)

(assert (=> d!527782 (=> (not res!772623) (not e!1101386))))

(assert (=> d!527782 (= res!772623 (semiInverseModEq!1318 (toChars!4705 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 rule!422))))))

(assert (=> d!527782 (= (inv!24339 (transformation!3339 rule!422)) e!1101386)))

(declare-fun b!1721916 () Bool)

(assert (=> b!1721916 (= e!1101386 (equivClasses!1259 (toChars!4705 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 rule!422))))))

(assert (= (and d!527782 res!772623) b!1721916))

(declare-fun m!2127901 () Bool)

(assert (=> d!527782 m!2127901))

(declare-fun m!2127903 () Bool)

(assert (=> b!1721916 m!2127903))

(assert (=> b!1721347 d!527782))

(declare-fun d!527784 () Bool)

(declare-fun e!1101391 () Bool)

(assert (=> d!527784 e!1101391))

(declare-fun c!281724 () Bool)

(assert (=> d!527784 (= c!281724 ((_ is EmptyExpr!4667) (regex!3339 lt!658537)))))

(declare-fun lt!658825 () Bool)

(declare-fun e!1101387 () Bool)

(assert (=> d!527784 (= lt!658825 e!1101387)))

(declare-fun c!281722 () Bool)

(assert (=> d!527784 (= c!281722 (isEmpty!11849 (list!7612 (charsOf!1988 (_1!10669 lt!658542)))))))

(assert (=> d!527784 (validRegex!1880 (regex!3339 lt!658537))))

(assert (=> d!527784 (= (matchR!2141 (regex!3339 lt!658537) (list!7612 (charsOf!1988 (_1!10669 lt!658542)))) lt!658825)))

(declare-fun b!1721917 () Bool)

(declare-fun e!1101393 () Bool)

(assert (=> b!1721917 (= e!1101391 e!1101393)))

(declare-fun c!281723 () Bool)

(assert (=> b!1721917 (= c!281723 ((_ is EmptyLang!4667) (regex!3339 lt!658537)))))

(declare-fun b!1721918 () Bool)

(assert (=> b!1721918 (= e!1101387 (matchR!2141 (derivativeStep!1174 (regex!3339 lt!658537) (head!3892 (list!7612 (charsOf!1988 (_1!10669 lt!658542))))) (tail!2571 (list!7612 (charsOf!1988 (_1!10669 lt!658542))))))))

(declare-fun b!1721919 () Bool)

(declare-fun res!772626 () Bool)

(declare-fun e!1101389 () Bool)

(assert (=> b!1721919 (=> (not res!772626) (not e!1101389))))

(declare-fun call!109733 () Bool)

(assert (=> b!1721919 (= res!772626 (not call!109733))))

(declare-fun b!1721920 () Bool)

(declare-fun res!772624 () Bool)

(declare-fun e!1101388 () Bool)

(assert (=> b!1721920 (=> res!772624 e!1101388)))

(assert (=> b!1721920 (= res!772624 (not (isEmpty!11849 (tail!2571 (list!7612 (charsOf!1988 (_1!10669 lt!658542)))))))))

(declare-fun b!1721921 () Bool)

(assert (=> b!1721921 (= e!1101389 (= (head!3892 (list!7612 (charsOf!1988 (_1!10669 lt!658542)))) (c!281622 (regex!3339 lt!658537))))))

(declare-fun b!1721922 () Bool)

(declare-fun res!772627 () Bool)

(declare-fun e!1101390 () Bool)

(assert (=> b!1721922 (=> res!772627 e!1101390)))

(assert (=> b!1721922 (= res!772627 (not ((_ is ElementMatch!4667) (regex!3339 lt!658537))))))

(assert (=> b!1721922 (= e!1101393 e!1101390)))

(declare-fun b!1721923 () Bool)

(declare-fun e!1101392 () Bool)

(assert (=> b!1721923 (= e!1101390 e!1101392)))

(declare-fun res!772631 () Bool)

(assert (=> b!1721923 (=> (not res!772631) (not e!1101392))))

(assert (=> b!1721923 (= res!772631 (not lt!658825))))

(declare-fun b!1721924 () Bool)

(assert (=> b!1721924 (= e!1101387 (nullable!1406 (regex!3339 lt!658537)))))

(declare-fun b!1721925 () Bool)

(assert (=> b!1721925 (= e!1101392 e!1101388)))

(declare-fun res!772625 () Bool)

(assert (=> b!1721925 (=> res!772625 e!1101388)))

(assert (=> b!1721925 (= res!772625 call!109733)))

(declare-fun b!1721926 () Bool)

(declare-fun res!772630 () Bool)

(assert (=> b!1721926 (=> (not res!772630) (not e!1101389))))

(assert (=> b!1721926 (= res!772630 (isEmpty!11849 (tail!2571 (list!7612 (charsOf!1988 (_1!10669 lt!658542))))))))

(declare-fun bm!109728 () Bool)

(assert (=> bm!109728 (= call!109733 (isEmpty!11849 (list!7612 (charsOf!1988 (_1!10669 lt!658542)))))))

(declare-fun b!1721927 () Bool)

(assert (=> b!1721927 (= e!1101393 (not lt!658825))))

(declare-fun b!1721928 () Bool)

(assert (=> b!1721928 (= e!1101388 (not (= (head!3892 (list!7612 (charsOf!1988 (_1!10669 lt!658542)))) (c!281622 (regex!3339 lt!658537)))))))

(declare-fun b!1721929 () Bool)

(assert (=> b!1721929 (= e!1101391 (= lt!658825 call!109733))))

(declare-fun b!1721930 () Bool)

(declare-fun res!772629 () Bool)

(assert (=> b!1721930 (=> res!772629 e!1101390)))

(assert (=> b!1721930 (= res!772629 e!1101389)))

(declare-fun res!772628 () Bool)

(assert (=> b!1721930 (=> (not res!772628) (not e!1101389))))

(assert (=> b!1721930 (= res!772628 lt!658825)))

(assert (= (and d!527784 c!281722) b!1721924))

(assert (= (and d!527784 (not c!281722)) b!1721918))

(assert (= (and d!527784 c!281724) b!1721929))

(assert (= (and d!527784 (not c!281724)) b!1721917))

(assert (= (and b!1721917 c!281723) b!1721927))

(assert (= (and b!1721917 (not c!281723)) b!1721922))

(assert (= (and b!1721922 (not res!772627)) b!1721930))

(assert (= (and b!1721930 res!772628) b!1721919))

(assert (= (and b!1721919 res!772626) b!1721926))

(assert (= (and b!1721926 res!772630) b!1721921))

(assert (= (and b!1721930 (not res!772629)) b!1721923))

(assert (= (and b!1721923 res!772631) b!1721925))

(assert (= (and b!1721925 (not res!772625)) b!1721920))

(assert (= (and b!1721920 (not res!772624)) b!1721928))

(assert (= (or b!1721929 b!1721925 b!1721919) bm!109728))

(assert (=> bm!109728 m!2127097))

(declare-fun m!2127905 () Bool)

(assert (=> bm!109728 m!2127905))

(assert (=> b!1721926 m!2127097))

(declare-fun m!2127907 () Bool)

(assert (=> b!1721926 m!2127907))

(assert (=> b!1721926 m!2127907))

(declare-fun m!2127909 () Bool)

(assert (=> b!1721926 m!2127909))

(declare-fun m!2127911 () Bool)

(assert (=> b!1721924 m!2127911))

(assert (=> b!1721921 m!2127097))

(declare-fun m!2127913 () Bool)

(assert (=> b!1721921 m!2127913))

(assert (=> b!1721918 m!2127097))

(assert (=> b!1721918 m!2127913))

(assert (=> b!1721918 m!2127913))

(declare-fun m!2127915 () Bool)

(assert (=> b!1721918 m!2127915))

(assert (=> b!1721918 m!2127097))

(assert (=> b!1721918 m!2127907))

(assert (=> b!1721918 m!2127915))

(assert (=> b!1721918 m!2127907))

(declare-fun m!2127917 () Bool)

(assert (=> b!1721918 m!2127917))

(assert (=> b!1721928 m!2127097))

(assert (=> b!1721928 m!2127913))

(assert (=> d!527784 m!2127097))

(assert (=> d!527784 m!2127905))

(declare-fun m!2127919 () Bool)

(assert (=> d!527784 m!2127919))

(assert (=> b!1721920 m!2127097))

(assert (=> b!1721920 m!2127907))

(assert (=> b!1721920 m!2127907))

(assert (=> b!1721920 m!2127909))

(assert (=> b!1721365 d!527784))

(declare-fun d!527786 () Bool)

(assert (=> d!527786 (= (list!7612 (charsOf!1988 (_1!10669 lt!658542))) (list!7614 (c!281623 (charsOf!1988 (_1!10669 lt!658542)))))))

(declare-fun bs!402247 () Bool)

(assert (= bs!402247 d!527786))

(declare-fun m!2127921 () Bool)

(assert (=> bs!402247 m!2127921))

(assert (=> b!1721365 d!527786))

(assert (=> b!1721365 d!527676))

(declare-fun d!527788 () Bool)

(assert (=> d!527788 (= (get!5590 lt!658530) (v!25105 lt!658530))))

(assert (=> b!1721365 d!527788))

(declare-fun b!1721947 () Bool)

(declare-fun e!1101408 () Bool)

(declare-fun e!1101407 () Bool)

(assert (=> b!1721947 (= e!1101408 e!1101407)))

(declare-fun c!281730 () Bool)

(assert (=> b!1721947 (= c!281730 ((_ is IntegerValue!10288) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(declare-fun b!1721948 () Bool)

(declare-fun inv!16 (TokenValue!3429) Bool)

(assert (=> b!1721948 (= e!1101408 (inv!16 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(declare-fun b!1721950 () Bool)

(declare-fun inv!17 (TokenValue!3429) Bool)

(assert (=> b!1721950 (= e!1101407 (inv!17 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(declare-fun b!1721951 () Bool)

(declare-fun res!772640 () Bool)

(declare-fun e!1101406 () Bool)

(assert (=> b!1721951 (=> res!772640 e!1101406)))

(assert (=> b!1721951 (= res!772640 (not ((_ is IntegerValue!10289) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))))

(assert (=> b!1721951 (= e!1101407 e!1101406)))

(declare-fun d!527794 () Bool)

(declare-fun c!281729 () Bool)

(assert (=> d!527794 (= c!281729 ((_ is IntegerValue!10287) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(assert (=> d!527794 (= (inv!21 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)) e!1101408)))

(declare-fun b!1721949 () Bool)

(declare-fun inv!15 (TokenValue!3429) Bool)

(assert (=> b!1721949 (= e!1101406 (inv!15 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))

(assert (= (and d!527794 c!281729) b!1721948))

(assert (= (and d!527794 (not c!281729)) b!1721947))

(assert (= (and b!1721947 c!281730) b!1721950))

(assert (= (and b!1721947 (not c!281730)) b!1721951))

(assert (= (and b!1721951 (not res!772640)) b!1721949))

(declare-fun m!2127935 () Bool)

(assert (=> b!1721948 m!2127935))

(declare-fun m!2127937 () Bool)

(assert (=> b!1721950 m!2127937))

(declare-fun m!2127939 () Bool)

(assert (=> b!1721949 m!2127939))

(assert (=> tb!102063 d!527794))

(declare-fun d!527806 () Bool)

(assert (=> d!527806 (= (get!5589 lt!658533) (v!25104 lt!658533))))

(assert (=> b!1721343 d!527806))

(declare-fun d!527808 () Bool)

(declare-fun c!281731 () Bool)

(assert (=> d!527808 (= c!281731 ((_ is Node!6267) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))))

(declare-fun e!1101410 () Bool)

(assert (=> d!527808 (= (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))) e!1101410)))

(declare-fun b!1721953 () Bool)

(assert (=> b!1721953 (= e!1101410 (inv!24345 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))))

(declare-fun b!1721954 () Bool)

(declare-fun e!1101411 () Bool)

(assert (=> b!1721954 (= e!1101410 e!1101411)))

(declare-fun res!772642 () Bool)

(assert (=> b!1721954 (= res!772642 (not ((_ is Leaf!9157) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))))))

(assert (=> b!1721954 (=> res!772642 e!1101411)))

(declare-fun b!1721955 () Bool)

(assert (=> b!1721955 (= e!1101411 (inv!24346 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))))

(assert (= (and d!527808 c!281731) b!1721953))

(assert (= (and d!527808 (not c!281731)) b!1721954))

(assert (= (and b!1721954 (not res!772642)) b!1721955))

(declare-fun m!2127945 () Bool)

(assert (=> b!1721953 m!2127945))

(declare-fun m!2127947 () Bool)

(assert (=> b!1721955 m!2127947))

(assert (=> b!1721384 d!527808))

(declare-fun b!1721956 () Bool)

(declare-fun e!1101414 () Bool)

(declare-fun e!1101413 () Bool)

(assert (=> b!1721956 (= e!1101414 e!1101413)))

(declare-fun c!281733 () Bool)

(assert (=> b!1721956 (= c!281733 ((_ is IntegerValue!10288) (value!104834 token!523)))))

(declare-fun b!1721957 () Bool)

(assert (=> b!1721957 (= e!1101414 (inv!16 (value!104834 token!523)))))

(declare-fun b!1721959 () Bool)

(assert (=> b!1721959 (= e!1101413 (inv!17 (value!104834 token!523)))))

(declare-fun b!1721960 () Bool)

(declare-fun res!772643 () Bool)

(declare-fun e!1101412 () Bool)

(assert (=> b!1721960 (=> res!772643 e!1101412)))

(assert (=> b!1721960 (= res!772643 (not ((_ is IntegerValue!10289) (value!104834 token!523))))))

(assert (=> b!1721960 (= e!1101413 e!1101412)))

(declare-fun d!527812 () Bool)

(declare-fun c!281732 () Bool)

(assert (=> d!527812 (= c!281732 ((_ is IntegerValue!10287) (value!104834 token!523)))))

(assert (=> d!527812 (= (inv!21 (value!104834 token!523)) e!1101414)))

(declare-fun b!1721958 () Bool)

(assert (=> b!1721958 (= e!1101412 (inv!15 (value!104834 token!523)))))

(assert (= (and d!527812 c!281732) b!1721957))

(assert (= (and d!527812 (not c!281732)) b!1721956))

(assert (= (and b!1721956 c!281733) b!1721959))

(assert (= (and b!1721956 (not c!281733)) b!1721960))

(assert (= (and b!1721960 (not res!772643)) b!1721958))

(declare-fun m!2127949 () Bool)

(assert (=> b!1721957 m!2127949))

(declare-fun m!2127951 () Bool)

(assert (=> b!1721959 m!2127951))

(declare-fun m!2127953 () Bool)

(assert (=> b!1721958 m!2127953))

(assert (=> b!1721345 d!527812))

(declare-fun d!527814 () Bool)

(declare-fun isBalanced!1960 (Conc!6267) Bool)

(assert (=> d!527814 (= (inv!24342 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))) (isBalanced!1960 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))))))

(declare-fun bs!402250 () Bool)

(assert (= bs!402250 d!527814))

(declare-fun m!2127955 () Bool)

(assert (=> bs!402250 m!2127955))

(assert (=> tb!102057 d!527814))

(declare-fun d!527816 () Bool)

(declare-fun e!1101426 () Bool)

(assert (=> d!527816 e!1101426))

(declare-fun c!281736 () Bool)

(assert (=> d!527816 (= c!281736 ((_ is EmptyExpr!4667) (regex!3339 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun lt!658826 () Bool)

(declare-fun e!1101422 () Bool)

(assert (=> d!527816 (= lt!658826 e!1101422)))

(declare-fun c!281734 () Bool)

(assert (=> d!527816 (= c!281734 (isEmpty!11849 lt!658523))))

(assert (=> d!527816 (validRegex!1880 (regex!3339 (rule!5285 (_1!10669 lt!658542))))))

(assert (=> d!527816 (= (matchR!2141 (regex!3339 (rule!5285 (_1!10669 lt!658542))) lt!658523) lt!658826)))

(declare-fun b!1721983 () Bool)

(declare-fun e!1101428 () Bool)

(assert (=> b!1721983 (= e!1101426 e!1101428)))

(declare-fun c!281735 () Bool)

(assert (=> b!1721983 (= c!281735 ((_ is EmptyLang!4667) (regex!3339 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun b!1721984 () Bool)

(assert (=> b!1721984 (= e!1101422 (matchR!2141 (derivativeStep!1174 (regex!3339 (rule!5285 (_1!10669 lt!658542))) (head!3892 lt!658523)) (tail!2571 lt!658523)))))

(declare-fun b!1721985 () Bool)

(declare-fun res!772646 () Bool)

(declare-fun e!1101424 () Bool)

(assert (=> b!1721985 (=> (not res!772646) (not e!1101424))))

(declare-fun call!109734 () Bool)

(assert (=> b!1721985 (= res!772646 (not call!109734))))

(declare-fun b!1721986 () Bool)

(declare-fun res!772644 () Bool)

(declare-fun e!1101423 () Bool)

(assert (=> b!1721986 (=> res!772644 e!1101423)))

(assert (=> b!1721986 (= res!772644 (not (isEmpty!11849 (tail!2571 lt!658523))))))

(declare-fun b!1721987 () Bool)

(assert (=> b!1721987 (= e!1101424 (= (head!3892 lt!658523) (c!281622 (regex!3339 (rule!5285 (_1!10669 lt!658542))))))))

(declare-fun b!1721988 () Bool)

(declare-fun res!772647 () Bool)

(declare-fun e!1101425 () Bool)

(assert (=> b!1721988 (=> res!772647 e!1101425)))

(assert (=> b!1721988 (= res!772647 (not ((_ is ElementMatch!4667) (regex!3339 (rule!5285 (_1!10669 lt!658542))))))))

(assert (=> b!1721988 (= e!1101428 e!1101425)))

(declare-fun b!1721989 () Bool)

(declare-fun e!1101427 () Bool)

(assert (=> b!1721989 (= e!1101425 e!1101427)))

(declare-fun res!772651 () Bool)

(assert (=> b!1721989 (=> (not res!772651) (not e!1101427))))

(assert (=> b!1721989 (= res!772651 (not lt!658826))))

(declare-fun b!1721990 () Bool)

(assert (=> b!1721990 (= e!1101422 (nullable!1406 (regex!3339 (rule!5285 (_1!10669 lt!658542)))))))

(declare-fun b!1721991 () Bool)

(assert (=> b!1721991 (= e!1101427 e!1101423)))

(declare-fun res!772645 () Bool)

(assert (=> b!1721991 (=> res!772645 e!1101423)))

(assert (=> b!1721991 (= res!772645 call!109734)))

(declare-fun b!1721992 () Bool)

(declare-fun res!772650 () Bool)

(assert (=> b!1721992 (=> (not res!772650) (not e!1101424))))

(assert (=> b!1721992 (= res!772650 (isEmpty!11849 (tail!2571 lt!658523)))))

(declare-fun bm!109729 () Bool)

(assert (=> bm!109729 (= call!109734 (isEmpty!11849 lt!658523))))

(declare-fun b!1721993 () Bool)

(assert (=> b!1721993 (= e!1101428 (not lt!658826))))

(declare-fun b!1721994 () Bool)

(assert (=> b!1721994 (= e!1101423 (not (= (head!3892 lt!658523) (c!281622 (regex!3339 (rule!5285 (_1!10669 lt!658542)))))))))

(declare-fun b!1721995 () Bool)

(assert (=> b!1721995 (= e!1101426 (= lt!658826 call!109734))))

(declare-fun b!1721996 () Bool)

(declare-fun res!772649 () Bool)

(assert (=> b!1721996 (=> res!772649 e!1101425)))

(assert (=> b!1721996 (= res!772649 e!1101424)))

(declare-fun res!772648 () Bool)

(assert (=> b!1721996 (=> (not res!772648) (not e!1101424))))

(assert (=> b!1721996 (= res!772648 lt!658826)))

(assert (= (and d!527816 c!281734) b!1721990))

(assert (= (and d!527816 (not c!281734)) b!1721984))

(assert (= (and d!527816 c!281736) b!1721995))

(assert (= (and d!527816 (not c!281736)) b!1721983))

(assert (= (and b!1721983 c!281735) b!1721993))

(assert (= (and b!1721983 (not c!281735)) b!1721988))

(assert (= (and b!1721988 (not res!772647)) b!1721996))

(assert (= (and b!1721996 res!772648) b!1721985))

(assert (= (and b!1721985 res!772646) b!1721992))

(assert (= (and b!1721992 res!772650) b!1721987))

(assert (= (and b!1721996 (not res!772649)) b!1721989))

(assert (= (and b!1721989 res!772651) b!1721991))

(assert (= (and b!1721991 (not res!772645)) b!1721986))

(assert (= (and b!1721986 (not res!772644)) b!1721994))

(assert (= (or b!1721995 b!1721991 b!1721985) bm!109729))

(declare-fun m!2127957 () Bool)

(assert (=> bm!109729 m!2127957))

(assert (=> b!1721992 m!2127457))

(assert (=> b!1721992 m!2127457))

(declare-fun m!2127959 () Bool)

(assert (=> b!1721992 m!2127959))

(declare-fun m!2127961 () Bool)

(assert (=> b!1721990 m!2127961))

(assert (=> b!1721987 m!2127463))

(assert (=> b!1721984 m!2127463))

(assert (=> b!1721984 m!2127463))

(declare-fun m!2127963 () Bool)

(assert (=> b!1721984 m!2127963))

(assert (=> b!1721984 m!2127457))

(assert (=> b!1721984 m!2127963))

(assert (=> b!1721984 m!2127457))

(declare-fun m!2127965 () Bool)

(assert (=> b!1721984 m!2127965))

(assert (=> b!1721994 m!2127463))

(assert (=> d!527816 m!2127957))

(declare-fun m!2127969 () Bool)

(assert (=> d!527816 m!2127969))

(assert (=> b!1721986 m!2127457))

(assert (=> b!1721986 m!2127457))

(assert (=> b!1721986 m!2127959))

(assert (=> b!1721362 d!527816))

(declare-fun d!527818 () Bool)

(declare-fun res!772654 () Bool)

(declare-fun e!1101447 () Bool)

(assert (=> d!527818 (=> (not res!772654) (not e!1101447))))

(declare-fun rulesValid!1246 (LexerInterface!2968 List!18914) Bool)

(assert (=> d!527818 (= res!772654 (rulesValid!1246 thiss!24550 rules!3447))))

(assert (=> d!527818 (= (rulesInvariant!2637 thiss!24550 rules!3447) e!1101447)))

(declare-fun b!1722016 () Bool)

(declare-datatypes ((List!18920 0))(
  ( (Nil!18850) (Cons!18850 (h!24251 String!21477) (t!159619 List!18920)) )
))
(declare-fun noDuplicateTag!1246 (LexerInterface!2968 List!18914 List!18920) Bool)

(assert (=> b!1722016 (= e!1101447 (noDuplicateTag!1246 thiss!24550 rules!3447 Nil!18850))))

(assert (= (and d!527818 res!772654) b!1722016))

(declare-fun m!2127981 () Bool)

(assert (=> d!527818 m!2127981))

(declare-fun m!2127983 () Bool)

(assert (=> b!1722016 m!2127983))

(assert (=> b!1721364 d!527818))

(declare-fun d!527820 () Bool)

(assert (=> d!527820 (= (size!14974 (_1!10669 lt!658542)) (size!14976 (originalCharacters!4153 (_1!10669 lt!658542))))))

(declare-fun Unit!32692 () Unit!32683)

(assert (=> d!527820 (= (lemmaCharactersSize!411 (_1!10669 lt!658542)) Unit!32692)))

(declare-fun bs!402251 () Bool)

(assert (= bs!402251 d!527820))

(declare-fun m!2127985 () Bool)

(assert (=> bs!402251 m!2127985))

(assert (=> b!1721342 d!527820))

(declare-fun d!527822 () Bool)

(declare-fun fromListB!1060 (List!18913) BalanceConc!12478)

(assert (=> d!527822 (= (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542))) (fromListB!1060 (originalCharacters!4153 (_1!10669 lt!658542))))))

(declare-fun bs!402252 () Bool)

(assert (= bs!402252 d!527822))

(declare-fun m!2127991 () Bool)

(assert (=> bs!402252 m!2127991))

(assert (=> b!1721342 d!527822))

(declare-fun d!527824 () Bool)

(assert (=> d!527824 (= (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))

(declare-fun b_lambda!54635 () Bool)

(assert (=> (not b_lambda!54635) (not d!527824)))

(assert (=> d!527824 t!159540))

(declare-fun b_and!125877 () Bool)

(assert (= b_and!125867 (and (=> t!159540 result!122676) b_and!125877)))

(assert (=> d!527824 t!159542))

(declare-fun b_and!125879 () Bool)

(assert (= b_and!125869 (and (=> t!159542 result!122680) b_and!125879)))

(assert (=> d!527824 t!159544))

(declare-fun b_and!125881 () Bool)

(assert (= b_and!125871 (and (=> t!159544 result!122682) b_and!125881)))

(assert (=> d!527824 m!2127143))

(assert (=> b!1721342 d!527824))

(declare-fun b!1722037 () Bool)

(declare-fun e!1101458 () Bool)

(assert (=> b!1722037 (= e!1101458 true)))

(declare-fun d!527826 () Bool)

(assert (=> d!527826 e!1101458))

(assert (= d!527826 b!1722037))

(declare-fun lambda!69146 () Int)

(declare-fun order!11495 () Int)

(declare-fun dynLambda!8688 (Int Int) Int)

(assert (=> b!1722037 (< (dynLambda!8682 order!11487 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8688 order!11495 lambda!69146))))

(assert (=> b!1722037 (< (dynLambda!8684 order!11491 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) (dynLambda!8688 order!11495 lambda!69146))))

(assert (=> d!527826 (= (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542)))))))

(declare-fun lt!658829 () Unit!32683)

(declare-fun Forall2of!75 (Int BalanceConc!12478 BalanceConc!12478) Unit!32683)

(assert (=> d!527826 (= lt!658829 (Forall2of!75 lambda!69146 lt!658539 (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542)))))))

(assert (=> d!527826 (= (list!7612 lt!658539) (list!7612 (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542)))))))

(assert (=> d!527826 (= (lemmaEqSameImage!264 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) lt!658539 (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542)))) lt!658829)))

(declare-fun b_lambda!54637 () Bool)

(assert (=> (not b_lambda!54637) (not d!527826)))

(assert (=> d!527826 t!159540))

(declare-fun b_and!125883 () Bool)

(assert (= b_and!125877 (and (=> t!159540 result!122676) b_and!125883)))

(assert (=> d!527826 t!159542))

(declare-fun b_and!125885 () Bool)

(assert (= b_and!125879 (and (=> t!159542 result!122680) b_and!125885)))

(assert (=> d!527826 t!159544))

(declare-fun b_and!125887 () Bool)

(assert (= b_and!125881 (and (=> t!159544 result!122682) b_and!125887)))

(declare-fun b_lambda!54639 () Bool)

(assert (=> (not b_lambda!54639) (not d!527826)))

(declare-fun tb!102111 () Bool)

(declare-fun t!159591 () Bool)

(assert (=> (and b!1721351 (= (toValue!4846 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159591) tb!102111))

(declare-fun result!122734 () Bool)

(assert (=> tb!102111 (= result!122734 (inv!21 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (seqFromList!2313 (originalCharacters!4153 (_1!10669 lt!658542))))))))

(declare-fun m!2127993 () Bool)

(assert (=> tb!102111 m!2127993))

(assert (=> d!527826 t!159591))

(declare-fun b_and!125889 () Bool)

(assert (= b_and!125883 (and (=> t!159591 result!122734) b_and!125889)))

(declare-fun t!159593 () Bool)

(declare-fun tb!102113 () Bool)

(assert (=> (and b!1721352 (= (toValue!4846 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159593) tb!102113))

(declare-fun result!122736 () Bool)

(assert (= result!122736 result!122734))

(assert (=> d!527826 t!159593))

(declare-fun b_and!125891 () Bool)

(assert (= b_and!125885 (and (=> t!159593 result!122736) b_and!125891)))

(declare-fun tb!102115 () Bool)

(declare-fun t!159595 () Bool)

(assert (=> (and b!1721350 (= (toValue!4846 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159595) tb!102115))

(declare-fun result!122738 () Bool)

(assert (= result!122738 result!122734))

(assert (=> d!527826 t!159595))

(declare-fun b_and!125893 () Bool)

(assert (= b_and!125887 (and (=> t!159595 result!122738) b_and!125893)))

(assert (=> d!527826 m!2127143))

(assert (=> d!527826 m!2127115))

(declare-fun m!2127995 () Bool)

(assert (=> d!527826 m!2127995))

(assert (=> d!527826 m!2127115))

(declare-fun m!2127997 () Bool)

(assert (=> d!527826 m!2127997))

(assert (=> d!527826 m!2127171))

(assert (=> d!527826 m!2127115))

(declare-fun m!2127999 () Bool)

(assert (=> d!527826 m!2127999))

(assert (=> b!1721342 d!527826))

(declare-fun d!527828 () Bool)

(declare-fun lt!658832 () Int)

(assert (=> d!527828 (= lt!658832 (size!14976 (list!7612 lt!658539)))))

(declare-fun size!14978 (Conc!6267) Int)

(assert (=> d!527828 (= lt!658832 (size!14978 (c!281623 lt!658539)))))

(assert (=> d!527828 (= (size!14975 lt!658539) lt!658832)))

(declare-fun bs!402253 () Bool)

(assert (= bs!402253 d!527828))

(assert (=> bs!402253 m!2127171))

(assert (=> bs!402253 m!2127171))

(declare-fun m!2128001 () Bool)

(assert (=> bs!402253 m!2128001))

(declare-fun m!2128003 () Bool)

(assert (=> bs!402253 m!2128003))

(assert (=> b!1721342 d!527828))

(declare-fun d!527830 () Bool)

(assert (=> d!527830 (= (isEmpty!11850 rules!3447) ((_ is Nil!18844) rules!3447))))

(assert (=> b!1721363 d!527830))

(declare-fun d!527832 () Bool)

(declare-fun lt!658835 () Bool)

(declare-fun content!2689 (List!18914) (InoxSet Rule!6478))

(assert (=> d!527832 (= lt!658835 (select (content!2689 rules!3447) rule!422))))

(declare-fun e!1101464 () Bool)

(assert (=> d!527832 (= lt!658835 e!1101464)))

(declare-fun res!772661 () Bool)

(assert (=> d!527832 (=> (not res!772661) (not e!1101464))))

(assert (=> d!527832 (= res!772661 ((_ is Cons!18844) rules!3447))))

(assert (=> d!527832 (= (contains!3361 rules!3447 rule!422) lt!658835)))

(declare-fun b!1722042 () Bool)

(declare-fun e!1101465 () Bool)

(assert (=> b!1722042 (= e!1101464 e!1101465)))

(declare-fun res!772662 () Bool)

(assert (=> b!1722042 (=> res!772662 e!1101465)))

(assert (=> b!1722042 (= res!772662 (= (h!24245 rules!3447) rule!422))))

(declare-fun b!1722043 () Bool)

(assert (=> b!1722043 (= e!1101465 (contains!3361 (t!159553 rules!3447) rule!422))))

(assert (= (and d!527832 res!772661) b!1722042))

(assert (= (and b!1722042 (not res!772662)) b!1722043))

(declare-fun m!2128005 () Bool)

(assert (=> d!527832 m!2128005))

(declare-fun m!2128007 () Bool)

(assert (=> d!527832 m!2128007))

(declare-fun m!2128009 () Bool)

(assert (=> b!1722043 m!2128009))

(assert (=> b!1721360 d!527832))

(declare-fun d!527834 () Bool)

(assert (=> d!527834 (= (inv!24342 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))) (isBalanced!1960 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))))))

(declare-fun bs!402254 () Bool)

(assert (= bs!402254 d!527834))

(declare-fun m!2128011 () Bool)

(assert (=> bs!402254 m!2128011))

(assert (=> tb!102069 d!527834))

(declare-fun d!527836 () Bool)

(assert (=> d!527836 (= (isEmpty!11849 (_2!10669 lt!658531)) ((_ is Nil!18843) (_2!10669 lt!658531)))))

(assert (=> b!1721359 d!527836))

(declare-fun d!527838 () Bool)

(assert (=> d!527838 (= (inv!24334 (tag!3649 (rule!5285 token!523))) (= (mod (str.len (value!104833 (tag!3649 (rule!5285 token!523)))) 2) 0))))

(assert (=> b!1721340 d!527838))

(declare-fun d!527840 () Bool)

(declare-fun res!772663 () Bool)

(declare-fun e!1101466 () Bool)

(assert (=> d!527840 (=> (not res!772663) (not e!1101466))))

(assert (=> d!527840 (= res!772663 (semiInverseModEq!1318 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 token!523)))))))

(assert (=> d!527840 (= (inv!24339 (transformation!3339 (rule!5285 token!523))) e!1101466)))

(declare-fun b!1722044 () Bool)

(assert (=> b!1722044 (= e!1101466 (equivClasses!1259 (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 token!523)))))))

(assert (= (and d!527840 res!772663) b!1722044))

(declare-fun m!2128013 () Bool)

(assert (=> d!527840 m!2128013))

(declare-fun m!2128015 () Bool)

(assert (=> b!1722044 m!2128015))

(assert (=> b!1721340 d!527840))

(declare-fun d!527842 () Bool)

(declare-fun lt!658838 () List!18913)

(assert (=> d!527842 (= (++!5164 lt!658523 lt!658838) lt!658532)))

(declare-fun e!1101469 () List!18913)

(assert (=> d!527842 (= lt!658838 e!1101469)))

(declare-fun c!281739 () Bool)

(assert (=> d!527842 (= c!281739 ((_ is Cons!18843) lt!658523))))

(assert (=> d!527842 (>= (size!14976 lt!658532) (size!14976 lt!658523))))

(assert (=> d!527842 (= (getSuffix!774 lt!658532 lt!658523) lt!658838)))

(declare-fun b!1722049 () Bool)

(assert (=> b!1722049 (= e!1101469 (getSuffix!774 (tail!2571 lt!658532) (t!159552 lt!658523)))))

(declare-fun b!1722050 () Bool)

(assert (=> b!1722050 (= e!1101469 lt!658532)))

(assert (= (and d!527842 c!281739) b!1722049))

(assert (= (and d!527842 (not c!281739)) b!1722050))

(declare-fun m!2128017 () Bool)

(assert (=> d!527842 m!2128017))

(assert (=> d!527842 m!2127455))

(assert (=> d!527842 m!2127079))

(assert (=> b!1722049 m!2127459))

(assert (=> b!1722049 m!2127459))

(declare-fun m!2128019 () Bool)

(assert (=> b!1722049 m!2128019))

(assert (=> b!1721361 d!527842))

(declare-fun d!527844 () Bool)

(assert (=> d!527844 (= (maxPrefixOneRule!898 thiss!24550 (rule!5285 (_1!10669 lt!658542)) lt!658532) (Some!3701 (tuple2!18535 (Token!6245 (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) (seqFromList!2313 lt!658523)) (rule!5285 (_1!10669 lt!658542)) (size!14976 lt!658523) lt!658523) (_2!10669 lt!658542))))))

(declare-fun lt!658841 () Unit!32683)

(declare-fun choose!10476 (LexerInterface!2968 List!18914 List!18913 List!18913 List!18913 Rule!6478) Unit!32683)

(assert (=> d!527844 (= lt!658841 (choose!10476 thiss!24550 rules!3447 lt!658523 lt!658532 (_2!10669 lt!658542) (rule!5285 (_1!10669 lt!658542))))))

(assert (=> d!527844 (not (isEmpty!11850 rules!3447))))

(assert (=> d!527844 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!297 thiss!24550 rules!3447 lt!658523 lt!658532 (_2!10669 lt!658542) (rule!5285 (_1!10669 lt!658542))) lt!658841)))

(declare-fun bs!402255 () Bool)

(assert (= bs!402255 d!527844))

(assert (=> bs!402255 m!2127079))

(assert (=> bs!402255 m!2127073))

(assert (=> bs!402255 m!2127113))

(assert (=> bs!402255 m!2127071))

(assert (=> bs!402255 m!2127073))

(assert (=> bs!402255 m!2127075))

(declare-fun m!2128021 () Bool)

(assert (=> bs!402255 m!2128021))

(assert (=> b!1721361 d!527844))

(declare-fun d!527846 () Bool)

(assert (=> d!527846 (= (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) (seqFromList!2313 lt!658523)) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (seqFromList!2313 lt!658523)))))

(declare-fun b_lambda!54641 () Bool)

(assert (=> (not b_lambda!54641) (not d!527846)))

(declare-fun tb!102117 () Bool)

(declare-fun t!159597 () Bool)

(assert (=> (and b!1721351 (= (toValue!4846 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159597) tb!102117))

(declare-fun result!122740 () Bool)

(assert (=> tb!102117 (= result!122740 (inv!21 (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (seqFromList!2313 lt!658523))))))

(declare-fun m!2128023 () Bool)

(assert (=> tb!102117 m!2128023))

(assert (=> d!527846 t!159597))

(declare-fun b_and!125895 () Bool)

(assert (= b_and!125889 (and (=> t!159597 result!122740) b_and!125895)))

(declare-fun t!159599 () Bool)

(declare-fun tb!102119 () Bool)

(assert (=> (and b!1721352 (= (toValue!4846 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159599) tb!102119))

(declare-fun result!122742 () Bool)

(assert (= result!122742 result!122740))

(assert (=> d!527846 t!159599))

(declare-fun b_and!125897 () Bool)

(assert (= b_and!125891 (and (=> t!159599 result!122742) b_and!125897)))

(declare-fun t!159601 () Bool)

(declare-fun tb!102121 () Bool)

(assert (=> (and b!1721350 (= (toValue!4846 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159601) tb!102121))

(declare-fun result!122744 () Bool)

(assert (= result!122744 result!122740))

(assert (=> d!527846 t!159601))

(declare-fun b_and!125899 () Bool)

(assert (= b_and!125893 (and (=> t!159601 result!122744) b_and!125899)))

(assert (=> d!527846 m!2127073))

(declare-fun m!2128025 () Bool)

(assert (=> d!527846 m!2128025))

(assert (=> b!1721361 d!527846))

(declare-fun b!1722069 () Bool)

(declare-fun e!1101480 () Option!3702)

(declare-datatypes ((tuple2!18542 0))(
  ( (tuple2!18543 (_1!10673 List!18913) (_2!10673 List!18913)) )
))
(declare-fun lt!658853 () tuple2!18542)

(assert (=> b!1722069 (= e!1101480 (Some!3701 (tuple2!18535 (Token!6245 (apply!5144 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) (seqFromList!2313 (_1!10673 lt!658853))) (rule!5285 (_1!10669 lt!658542)) (size!14975 (seqFromList!2313 (_1!10673 lt!658853))) (_1!10673 lt!658853)) (_2!10673 lt!658853))))))

(declare-fun lt!658854 () Unit!32683)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!381 (Regex!4667 List!18913) Unit!32683)

(assert (=> b!1722069 (= lt!658854 (longestMatchIsAcceptedByMatchOrIsEmpty!381 (regex!3339 (rule!5285 (_1!10669 lt!658542))) lt!658532))))

(declare-fun res!772682 () Bool)

(declare-fun findLongestMatchInner!397 (Regex!4667 List!18913 Int List!18913 List!18913 Int) tuple2!18542)

(assert (=> b!1722069 (= res!772682 (isEmpty!11849 (_1!10673 (findLongestMatchInner!397 (regex!3339 (rule!5285 (_1!10669 lt!658542))) Nil!18843 (size!14976 Nil!18843) lt!658532 lt!658532 (size!14976 lt!658532)))))))

(declare-fun e!1101479 () Bool)

(assert (=> b!1722069 (=> res!772682 e!1101479)))

(assert (=> b!1722069 e!1101479))

(declare-fun lt!658855 () Unit!32683)

(assert (=> b!1722069 (= lt!658855 lt!658854)))

(declare-fun lt!658852 () Unit!32683)

(assert (=> b!1722069 (= lt!658852 (lemmaSemiInverse!485 (transformation!3339 (rule!5285 (_1!10669 lt!658542))) (seqFromList!2313 (_1!10673 lt!658853))))))

(declare-fun b!1722070 () Bool)

(declare-fun e!1101482 () Bool)

(declare-fun e!1101481 () Bool)

(assert (=> b!1722070 (= e!1101482 e!1101481)))

(declare-fun res!772683 () Bool)

(assert (=> b!1722070 (=> (not res!772683) (not e!1101481))))

(declare-fun lt!658856 () Option!3702)

(assert (=> b!1722070 (= res!772683 (matchR!2141 (regex!3339 (rule!5285 (_1!10669 lt!658542))) (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658856))))))))

(declare-fun d!527848 () Bool)

(assert (=> d!527848 e!1101482))

(declare-fun res!772684 () Bool)

(assert (=> d!527848 (=> res!772684 e!1101482)))

(assert (=> d!527848 (= res!772684 (isEmpty!11853 lt!658856))))

(assert (=> d!527848 (= lt!658856 e!1101480)))

(declare-fun c!281742 () Bool)

(assert (=> d!527848 (= c!281742 (isEmpty!11849 (_1!10673 lt!658853)))))

(declare-fun findLongestMatch!324 (Regex!4667 List!18913) tuple2!18542)

(assert (=> d!527848 (= lt!658853 (findLongestMatch!324 (regex!3339 (rule!5285 (_1!10669 lt!658542))) lt!658532))))

(assert (=> d!527848 (ruleValid!838 thiss!24550 (rule!5285 (_1!10669 lt!658542)))))

(assert (=> d!527848 (= (maxPrefixOneRule!898 thiss!24550 (rule!5285 (_1!10669 lt!658542)) lt!658532) lt!658856)))

(declare-fun b!1722071 () Bool)

(declare-fun res!772681 () Bool)

(assert (=> b!1722071 (=> (not res!772681) (not e!1101481))))

(assert (=> b!1722071 (= res!772681 (< (size!14976 (_2!10669 (get!5589 lt!658856))) (size!14976 lt!658532)))))

(declare-fun b!1722072 () Bool)

(declare-fun res!772679 () Bool)

(assert (=> b!1722072 (=> (not res!772679) (not e!1101481))))

(assert (=> b!1722072 (= res!772679 (= (++!5164 (list!7612 (charsOf!1988 (_1!10669 (get!5589 lt!658856)))) (_2!10669 (get!5589 lt!658856))) lt!658532))))

(declare-fun b!1722073 () Bool)

(assert (=> b!1722073 (= e!1101480 None!3701)))

(declare-fun b!1722074 () Bool)

(assert (=> b!1722074 (= e!1101481 (= (size!14974 (_1!10669 (get!5589 lt!658856))) (size!14976 (originalCharacters!4153 (_1!10669 (get!5589 lt!658856))))))))

(declare-fun b!1722075 () Bool)

(declare-fun res!772680 () Bool)

(assert (=> b!1722075 (=> (not res!772680) (not e!1101481))))

(assert (=> b!1722075 (= res!772680 (= (value!104834 (_1!10669 (get!5589 lt!658856))) (apply!5144 (transformation!3339 (rule!5285 (_1!10669 (get!5589 lt!658856)))) (seqFromList!2313 (originalCharacters!4153 (_1!10669 (get!5589 lt!658856)))))))))

(declare-fun b!1722076 () Bool)

(assert (=> b!1722076 (= e!1101479 (matchR!2141 (regex!3339 (rule!5285 (_1!10669 lt!658542))) (_1!10673 (findLongestMatchInner!397 (regex!3339 (rule!5285 (_1!10669 lt!658542))) Nil!18843 (size!14976 Nil!18843) lt!658532 lt!658532 (size!14976 lt!658532)))))))

(declare-fun b!1722077 () Bool)

(declare-fun res!772678 () Bool)

(assert (=> b!1722077 (=> (not res!772678) (not e!1101481))))

(assert (=> b!1722077 (= res!772678 (= (rule!5285 (_1!10669 (get!5589 lt!658856))) (rule!5285 (_1!10669 lt!658542))))))

(assert (= (and d!527848 c!281742) b!1722073))

(assert (= (and d!527848 (not c!281742)) b!1722069))

(assert (= (and b!1722069 (not res!772682)) b!1722076))

(assert (= (and d!527848 (not res!772684)) b!1722070))

(assert (= (and b!1722070 res!772683) b!1722072))

(assert (= (and b!1722072 res!772679) b!1722071))

(assert (= (and b!1722071 res!772681) b!1722077))

(assert (= (and b!1722077 res!772678) b!1722075))

(assert (= (and b!1722075 res!772680) b!1722074))

(declare-fun m!2128027 () Bool)

(assert (=> b!1722077 m!2128027))

(declare-fun m!2128029 () Bool)

(assert (=> d!527848 m!2128029))

(declare-fun m!2128031 () Bool)

(assert (=> d!527848 m!2128031))

(declare-fun m!2128033 () Bool)

(assert (=> d!527848 m!2128033))

(declare-fun m!2128035 () Bool)

(assert (=> d!527848 m!2128035))

(declare-fun m!2128037 () Bool)

(assert (=> b!1722076 m!2128037))

(assert (=> b!1722076 m!2127455))

(assert (=> b!1722076 m!2128037))

(assert (=> b!1722076 m!2127455))

(declare-fun m!2128039 () Bool)

(assert (=> b!1722076 m!2128039))

(declare-fun m!2128041 () Bool)

(assert (=> b!1722076 m!2128041))

(assert (=> b!1722072 m!2128027))

(declare-fun m!2128043 () Bool)

(assert (=> b!1722072 m!2128043))

(assert (=> b!1722072 m!2128043))

(declare-fun m!2128045 () Bool)

(assert (=> b!1722072 m!2128045))

(assert (=> b!1722072 m!2128045))

(declare-fun m!2128047 () Bool)

(assert (=> b!1722072 m!2128047))

(assert (=> b!1722071 m!2128027))

(declare-fun m!2128049 () Bool)

(assert (=> b!1722071 m!2128049))

(assert (=> b!1722071 m!2127455))

(assert (=> b!1722069 m!2128037))

(declare-fun m!2128051 () Bool)

(assert (=> b!1722069 m!2128051))

(declare-fun m!2128053 () Bool)

(assert (=> b!1722069 m!2128053))

(declare-fun m!2128055 () Bool)

(assert (=> b!1722069 m!2128055))

(assert (=> b!1722069 m!2127455))

(assert (=> b!1722069 m!2128055))

(declare-fun m!2128057 () Bool)

(assert (=> b!1722069 m!2128057))

(assert (=> b!1722069 m!2128055))

(declare-fun m!2128059 () Bool)

(assert (=> b!1722069 m!2128059))

(assert (=> b!1722069 m!2128055))

(declare-fun m!2128061 () Bool)

(assert (=> b!1722069 m!2128061))

(assert (=> b!1722069 m!2128037))

(assert (=> b!1722069 m!2127455))

(assert (=> b!1722069 m!2128039))

(assert (=> b!1722074 m!2128027))

(declare-fun m!2128063 () Bool)

(assert (=> b!1722074 m!2128063))

(assert (=> b!1722075 m!2128027))

(declare-fun m!2128065 () Bool)

(assert (=> b!1722075 m!2128065))

(assert (=> b!1722075 m!2128065))

(declare-fun m!2128067 () Bool)

(assert (=> b!1722075 m!2128067))

(assert (=> b!1722070 m!2128027))

(assert (=> b!1722070 m!2128043))

(assert (=> b!1722070 m!2128043))

(assert (=> b!1722070 m!2128045))

(assert (=> b!1722070 m!2128045))

(declare-fun m!2128069 () Bool)

(assert (=> b!1722070 m!2128069))

(assert (=> b!1721361 d!527848))

(declare-fun d!527850 () Bool)

(assert (=> d!527850 (= (seqFromList!2313 lt!658523) (fromListB!1060 lt!658523))))

(declare-fun bs!402256 () Bool)

(assert (= bs!402256 d!527850))

(declare-fun m!2128071 () Bool)

(assert (=> bs!402256 m!2128071))

(assert (=> b!1721361 d!527850))

(declare-fun d!527852 () Bool)

(assert (=> d!527852 (= (_2!10669 lt!658542) lt!658521)))

(declare-fun lt!658859 () Unit!32683)

(declare-fun choose!10477 (List!18913 List!18913 List!18913 List!18913 List!18913) Unit!32683)

(assert (=> d!527852 (= lt!658859 (choose!10477 lt!658523 (_2!10669 lt!658542) lt!658523 lt!658521 lt!658532))))

(assert (=> d!527852 (isPrefix!1580 lt!658523 lt!658532)))

(assert (=> d!527852 (= (lemmaSamePrefixThenSameSuffix!724 lt!658523 (_2!10669 lt!658542) lt!658523 lt!658521 lt!658532) lt!658859)))

(declare-fun bs!402257 () Bool)

(assert (= bs!402257 d!527852))

(declare-fun m!2128073 () Bool)

(assert (=> bs!402257 m!2128073))

(assert (=> bs!402257 m!2127169))

(assert (=> b!1721361 d!527852))

(declare-fun d!527854 () Bool)

(declare-fun lt!658862 () Int)

(assert (=> d!527854 (>= lt!658862 0)))

(declare-fun e!1101485 () Int)

(assert (=> d!527854 (= lt!658862 e!1101485)))

(declare-fun c!281745 () Bool)

(assert (=> d!527854 (= c!281745 ((_ is Nil!18843) lt!658523))))

(assert (=> d!527854 (= (size!14976 lt!658523) lt!658862)))

(declare-fun b!1722082 () Bool)

(assert (=> b!1722082 (= e!1101485 0)))

(declare-fun b!1722083 () Bool)

(assert (=> b!1722083 (= e!1101485 (+ 1 (size!14976 (t!159552 lt!658523))))))

(assert (= (and d!527854 c!281745) b!1722082))

(assert (= (and d!527854 (not c!281745)) b!1722083))

(declare-fun m!2128075 () Bool)

(assert (=> b!1722083 m!2128075))

(assert (=> b!1721361 d!527854))

(declare-fun b!1722088 () Bool)

(declare-fun e!1101488 () Bool)

(declare-fun tp!491598 () Bool)

(assert (=> b!1722088 (= e!1101488 (and tp_is_empty!7577 tp!491598))))

(assert (=> b!1721341 (= tp!491530 e!1101488)))

(assert (= (and b!1721341 ((_ is Cons!18843) (t!159552 suffix!1421))) b!1722088))

(declare-fun tp!491605 () Bool)

(declare-fun b!1722097 () Bool)

(declare-fun e!1101493 () Bool)

(declare-fun tp!491606 () Bool)

(assert (=> b!1722097 (= e!1101493 (and (inv!24341 (left!15038 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))) tp!491605 (inv!24341 (right!15368 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))) tp!491606))))

(declare-fun b!1722099 () Bool)

(declare-fun e!1101494 () Bool)

(declare-fun tp!491607 () Bool)

(assert (=> b!1722099 (= e!1101494 tp!491607)))

(declare-fun b!1722098 () Bool)

(declare-fun inv!24348 (IArray!12539) Bool)

(assert (=> b!1722098 (= e!1101493 (and (inv!24348 (xs!9143 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))) e!1101494))))

(assert (=> b!1721381 (= tp!491539 (and (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539)))) e!1101493))))

(assert (= (and b!1721381 ((_ is Node!6267) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))) b!1722097))

(assert (= b!1722098 b!1722099))

(assert (= (and b!1721381 ((_ is Leaf!9157) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (dynLambda!8686 (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) lt!658539))))) b!1722098))

(declare-fun m!2128077 () Bool)

(assert (=> b!1722097 m!2128077))

(declare-fun m!2128079 () Bool)

(assert (=> b!1722097 m!2128079))

(declare-fun m!2128081 () Bool)

(assert (=> b!1722098 m!2128081))

(assert (=> b!1721381 m!2127051))

(declare-fun b!1722111 () Bool)

(declare-fun e!1101497 () Bool)

(declare-fun tp!491619 () Bool)

(declare-fun tp!491621 () Bool)

(assert (=> b!1722111 (= e!1101497 (and tp!491619 tp!491621))))

(assert (=> b!1721347 (= tp!491536 e!1101497)))

(declare-fun b!1722112 () Bool)

(declare-fun tp!491622 () Bool)

(assert (=> b!1722112 (= e!1101497 tp!491622)))

(declare-fun b!1722113 () Bool)

(declare-fun tp!491618 () Bool)

(declare-fun tp!491620 () Bool)

(assert (=> b!1722113 (= e!1101497 (and tp!491618 tp!491620))))

(declare-fun b!1722110 () Bool)

(assert (=> b!1722110 (= e!1101497 tp_is_empty!7577)))

(assert (= (and b!1721347 ((_ is ElementMatch!4667) (regex!3339 rule!422))) b!1722110))

(assert (= (and b!1721347 ((_ is Concat!8097) (regex!3339 rule!422))) b!1722111))

(assert (= (and b!1721347 ((_ is Star!4667) (regex!3339 rule!422))) b!1722112))

(assert (= (and b!1721347 ((_ is Union!4667) (regex!3339 rule!422))) b!1722113))

(declare-fun b!1722115 () Bool)

(declare-fun e!1101498 () Bool)

(declare-fun tp!491624 () Bool)

(declare-fun tp!491626 () Bool)

(assert (=> b!1722115 (= e!1101498 (and tp!491624 tp!491626))))

(assert (=> b!1721354 (= tp!491534 e!1101498)))

(declare-fun b!1722116 () Bool)

(declare-fun tp!491627 () Bool)

(assert (=> b!1722116 (= e!1101498 tp!491627)))

(declare-fun b!1722117 () Bool)

(declare-fun tp!491623 () Bool)

(declare-fun tp!491625 () Bool)

(assert (=> b!1722117 (= e!1101498 (and tp!491623 tp!491625))))

(declare-fun b!1722114 () Bool)

(assert (=> b!1722114 (= e!1101498 tp_is_empty!7577)))

(assert (= (and b!1721354 ((_ is ElementMatch!4667) (regex!3339 (h!24245 rules!3447)))) b!1722114))

(assert (= (and b!1721354 ((_ is Concat!8097) (regex!3339 (h!24245 rules!3447)))) b!1722115))

(assert (= (and b!1721354 ((_ is Star!4667) (regex!3339 (h!24245 rules!3447)))) b!1722116))

(assert (= (and b!1721354 ((_ is Union!4667) (regex!3339 (h!24245 rules!3447)))) b!1722117))

(declare-fun b!1722128 () Bool)

(declare-fun b_free!46947 () Bool)

(declare-fun b_next!47651 () Bool)

(assert (=> b!1722128 (= b_free!46947 (not b_next!47651))))

(declare-fun t!159603 () Bool)

(declare-fun tb!102123 () Bool)

(assert (=> (and b!1722128 (= (toValue!4846 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159603) tb!102123))

(declare-fun result!122754 () Bool)

(assert (= result!122754 result!122676))

(assert (=> d!527764 t!159603))

(declare-fun tb!102125 () Bool)

(declare-fun t!159605 () Bool)

(assert (=> (and b!1722128 (= (toValue!4846 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159605) tb!102125))

(declare-fun result!122756 () Bool)

(assert (= result!122756 result!122740))

(assert (=> d!527846 t!159605))

(assert (=> d!527826 t!159603))

(assert (=> b!1721348 t!159603))

(assert (=> d!527824 t!159603))

(declare-fun tb!102127 () Bool)

(declare-fun t!159607 () Bool)

(assert (=> (and b!1722128 (= (toValue!4846 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159607) tb!102127))

(declare-fun result!122758 () Bool)

(assert (= result!122758 result!122734))

(assert (=> d!527826 t!159607))

(declare-fun tp!491636 () Bool)

(declare-fun b_and!125901 () Bool)

(assert (=> b!1722128 (= tp!491636 (and (=> t!159603 result!122754) (=> t!159607 result!122758) (=> t!159605 result!122756) b_and!125901))))

(declare-fun b_free!46949 () Bool)

(declare-fun b_next!47653 () Bool)

(assert (=> b!1722128 (= b_free!46949 (not b_next!47653))))

(declare-fun t!159609 () Bool)

(declare-fun tb!102129 () Bool)

(assert (=> (and b!1722128 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 token!523)))) t!159609) tb!102129))

(declare-fun result!122760 () Bool)

(assert (= result!122760 result!122690))

(assert (=> d!527630 t!159609))

(declare-fun tb!102131 () Bool)

(declare-fun t!159611 () Bool)

(assert (=> (and b!1722128 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159611) tb!102131))

(declare-fun result!122762 () Bool)

(assert (= result!122762 result!122684))

(assert (=> d!527676 t!159611))

(declare-fun t!159613 () Bool)

(declare-fun tb!102133 () Bool)

(assert (=> (and b!1722128 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542))))) t!159613) tb!102133))

(declare-fun result!122764 () Bool)

(assert (= result!122764 result!122668))

(assert (=> d!527764 t!159613))

(assert (=> b!1721348 t!159613))

(assert (=> b!1721358 t!159611))

(assert (=> b!1721603 t!159609))

(declare-fun b_and!125903 () Bool)

(declare-fun tp!491639 () Bool)

(assert (=> b!1722128 (= tp!491639 (and (=> t!159609 result!122760) (=> t!159611 result!122762) (=> t!159613 result!122764) b_and!125903))))

(declare-fun e!1101510 () Bool)

(assert (=> b!1722128 (= e!1101510 (and tp!491636 tp!491639))))

(declare-fun b!1722127 () Bool)

(declare-fun tp!491637 () Bool)

(declare-fun e!1101509 () Bool)

(assert (=> b!1722127 (= e!1101509 (and tp!491637 (inv!24334 (tag!3649 (h!24245 (t!159553 rules!3447)))) (inv!24339 (transformation!3339 (h!24245 (t!159553 rules!3447)))) e!1101510))))

(declare-fun b!1722126 () Bool)

(declare-fun e!1101507 () Bool)

(declare-fun tp!491638 () Bool)

(assert (=> b!1722126 (= e!1101507 (and e!1101509 tp!491638))))

(assert (=> b!1721338 (= tp!491533 e!1101507)))

(assert (= b!1722127 b!1722128))

(assert (= b!1722126 b!1722127))

(assert (= (and b!1721338 ((_ is Cons!18844) (t!159553 rules!3447))) b!1722126))

(declare-fun m!2128083 () Bool)

(assert (=> b!1722127 m!2128083))

(declare-fun m!2128085 () Bool)

(assert (=> b!1722127 m!2128085))

(declare-fun b!1722129 () Bool)

(declare-fun e!1101511 () Bool)

(declare-fun tp!491640 () Bool)

(declare-fun tp!491641 () Bool)

(assert (=> b!1722129 (= e!1101511 (and (inv!24341 (left!15038 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))) tp!491640 (inv!24341 (right!15368 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))) tp!491641))))

(declare-fun b!1722131 () Bool)

(declare-fun e!1101512 () Bool)

(declare-fun tp!491642 () Bool)

(assert (=> b!1722131 (= e!1101512 tp!491642)))

(declare-fun b!1722130 () Bool)

(assert (=> b!1722130 (= e!1101511 (and (inv!24348 (xs!9143 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))) e!1101512))))

(assert (=> b!1721384 (= tp!491540 (and (inv!24341 (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542))))) e!1101511))))

(assert (= (and b!1721384 ((_ is Node!6267) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))) b!1722129))

(assert (= b!1722130 b!1722131))

(assert (= (and b!1721384 ((_ is Leaf!9157) (c!281623 (dynLambda!8685 (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))) (value!104834 (_1!10669 lt!658542)))))) b!1722130))

(declare-fun m!2128087 () Bool)

(assert (=> b!1722129 m!2128087))

(declare-fun m!2128089 () Bool)

(assert (=> b!1722129 m!2128089))

(declare-fun m!2128091 () Bool)

(assert (=> b!1722130 m!2128091))

(assert (=> b!1721384 m!2127057))

(declare-fun b!1722133 () Bool)

(declare-fun e!1101513 () Bool)

(declare-fun tp!491644 () Bool)

(declare-fun tp!491646 () Bool)

(assert (=> b!1722133 (= e!1101513 (and tp!491644 tp!491646))))

(assert (=> b!1721340 (= tp!491532 e!1101513)))

(declare-fun b!1722134 () Bool)

(declare-fun tp!491647 () Bool)

(assert (=> b!1722134 (= e!1101513 tp!491647)))

(declare-fun b!1722135 () Bool)

(declare-fun tp!491643 () Bool)

(declare-fun tp!491645 () Bool)

(assert (=> b!1722135 (= e!1101513 (and tp!491643 tp!491645))))

(declare-fun b!1722132 () Bool)

(assert (=> b!1722132 (= e!1101513 tp_is_empty!7577)))

(assert (= (and b!1721340 ((_ is ElementMatch!4667) (regex!3339 (rule!5285 token!523)))) b!1722132))

(assert (= (and b!1721340 ((_ is Concat!8097) (regex!3339 (rule!5285 token!523)))) b!1722133))

(assert (= (and b!1721340 ((_ is Star!4667) (regex!3339 (rule!5285 token!523)))) b!1722134))

(assert (= (and b!1721340 ((_ is Union!4667) (regex!3339 (rule!5285 token!523)))) b!1722135))

(declare-fun b!1722136 () Bool)

(declare-fun e!1101514 () Bool)

(declare-fun tp!491648 () Bool)

(assert (=> b!1722136 (= e!1101514 (and tp_is_empty!7577 tp!491648))))

(assert (=> b!1721345 (= tp!491527 e!1101514)))

(assert (= (and b!1721345 ((_ is Cons!18843) (originalCharacters!4153 token!523))) b!1722136))

(declare-fun b_lambda!54643 () Bool)

(assert (= b_lambda!54591 (or (and b!1721351 b_free!46933 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721352 b_free!46937 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721350 b_free!46941 (= (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1722128 b_free!46949 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) b_lambda!54643)))

(declare-fun b_lambda!54645 () Bool)

(assert (= b_lambda!54595 (or (and b!1721351 b_free!46933 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721352 b_free!46937 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721350 b_free!46941 (= (toChars!4705 (transformation!3339 (rule!5285 token!523))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1722128 b_free!46949 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) b_lambda!54645)))

(declare-fun b_lambda!54647 () Bool)

(assert (= b_lambda!54593 (or (and b!1721351 b_free!46931 (= (toValue!4846 (transformation!3339 (h!24245 rules!3447))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721352 b_free!46935 (= (toValue!4846 (transformation!3339 rule!422)) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1721350 b_free!46939 (= (toValue!4846 (transformation!3339 (rule!5285 token!523))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) (and b!1722128 b_free!46947 (= (toValue!4846 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toValue!4846 (transformation!3339 (rule!5285 (_1!10669 lt!658542)))))) b_lambda!54647)))

(declare-fun b_lambda!54649 () Bool)

(assert (= b_lambda!54599 (or (and b!1721351 b_free!46933 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) (and b!1721352 b_free!46937 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) (and b!1721350 b_free!46941) (and b!1722128 b_free!46949 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) b_lambda!54649)))

(declare-fun b_lambda!54651 () Bool)

(assert (= b_lambda!54601 (or (and b!1721351 b_free!46933 (= (toChars!4705 (transformation!3339 (h!24245 rules!3447))) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) (and b!1721352 b_free!46937 (= (toChars!4705 (transformation!3339 rule!422)) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) (and b!1721350 b_free!46941) (and b!1722128 b_free!46949 (= (toChars!4705 (transformation!3339 (h!24245 (t!159553 rules!3447)))) (toChars!4705 (transformation!3339 (rule!5285 token!523))))) b_lambda!54651)))

(check-sat (not b!1721958) (not bm!109726) (not d!527748) (not d!527848) (not b!1721640) (not b!1721713) (not b!1721896) (not d!527628) (not b_lambda!54603) (not b!1722131) (not tb!102075) (not bm!109728) (not b!1721668) (not d!527632) (not d!527818) (not d!527648) (not d!527786) (not b!1721694) b_and!125899 (not b_next!47651) (not b!1721695) (not b!1721950) (not d!527656) (not b!1721646) b_and!125861 (not d!527614) (not b!1721953) (not b_lambda!54639) (not b!1721568) (not b!1721642) (not b!1721650) (not b!1721657) (not b!1722075) (not b!1721926) (not b!1721858) (not b!1721918) (not b!1721869) (not d!527840) b_and!125903 (not b!1722126) (not b!1721994) (not b!1721987) (not b!1722088) (not b_lambda!54643) (not b!1721571) (not b!1722111) (not b!1721898) (not b_lambda!54645) (not b!1721862) b_and!125863 (not d!527664) (not d!527630) (not b!1721861) (not b!1721863) (not b!1721957) (not b!1721563) (not b!1721598) (not b!1722049) (not d!527672) (not d!527646) (not b!1721921) (not b!1721576) (not b!1721381) (not b!1722076) (not b!1721888) (not b!1721855) (not d!527654) (not b!1721916) (not b!1722133) (not b_next!47641) (not d!527680) (not d!527638) (not b!1722136) (not d!527652) (not b!1721562) (not b_next!47645) (not b_lambda!54621) (not b!1722113) (not b!1721860) (not b!1721588) (not b!1721704) (not d!527634) (not d!527678) (not b!1721928) (not b!1722070) (not d!527842) (not b!1721596) (not d!527852) (not b_next!47653) (not b!1721835) (not d!527828) (not d!527844) (not b!1721884) (not b!1721856) (not b!1721949) (not b_lambda!54637) (not b!1722116) (not d!527816) (not b!1722044) (not b_lambda!54641) (not b!1722069) (not b!1722016) (not b!1721699) (not b_next!47637) (not d!527666) (not d!527642) (not b!1722077) (not b!1721883) (not b!1721570) (not b!1721990) (not b!1722129) (not b!1721670) (not b!1721604) (not d!527676) (not tb!102111) (not d!527650) (not b!1721702) (not d!527758) (not b!1721959) (not d!527754) (not b!1721868) (not bm!109727) (not b!1722083) (not b!1721859) (not b!1721610) (not b!1721837) (not b!1721566) (not b!1721587) (not d!527762) (not b!1721643) (not d!527660) (not b_lambda!54623) (not b!1722098) (not b!1721384) (not b!1721577) (not b!1722099) (not d!527832) (not bm!109718) (not d!527764) (not b_next!47639) (not b_lambda!54635) (not b!1722072) b_and!125897 b_and!125895 (not d!527822) (not b_lambda!54651) b_and!125865 tp_is_empty!7577 (not b!1721955) (not b!1721703) (not b!1722112) (not d!527746) (not b!1721721) (not b!1721569) (not b!1721567) (not b!1721891) (not b!1721992) (not b!1721565) (not b!1721698) (not b!1721924) (not b!1721890) (not b!1722097) (not b!1722117) (not d!527682) (not b!1721693) (not b!1721894) (not b!1722130) (not d!527782) (not d!527820) (not b!1722134) (not b!1722135) (not b!1722115) (not b!1721603) (not b!1721714) (not b!1721836) (not bm!109721) (not d!527826) (not b!1721607) (not b!1721986) b_and!125901 (not b!1722043) (not tb!102117) (not b!1722071) (not d!527784) (not b!1721648) (not b!1722074) (not b!1721720) (not d!527834) (not d!527850) (not b!1721867) (not b!1722127) (not b_lambda!54647) (not b_lambda!54649) (not b!1721920) (not b!1721984) (not d!527814) (not d!527612) (not b!1721669) (not b!1721948) (not bm!109729) (not b_next!47643) (not d!527658) (not b_next!47635) (not d!527752))
(check-sat b_and!125861 b_and!125903 b_and!125863 (not b_next!47641) (not b_next!47645) (not b_next!47653) (not b_next!47637) (not b_next!47639) b_and!125901 b_and!125899 (not b_next!47651) b_and!125897 b_and!125895 b_and!125865 (not b_next!47643) (not b_next!47635))
