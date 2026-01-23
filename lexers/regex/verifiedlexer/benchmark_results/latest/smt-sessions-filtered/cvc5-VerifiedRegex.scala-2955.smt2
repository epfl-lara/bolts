; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!174816 () Bool)

(assert start!174816)

(declare-fun b!1764749 () Bool)

(declare-fun b_free!48787 () Bool)

(declare-fun b_next!49491 () Bool)

(assert (=> b!1764749 (= b_free!48787 (not b_next!49491))))

(declare-fun tp!500965 () Bool)

(declare-fun b_and!133529 () Bool)

(assert (=> b!1764749 (= tp!500965 b_and!133529)))

(declare-fun b_free!48789 () Bool)

(declare-fun b_next!49493 () Bool)

(assert (=> b!1764749 (= b_free!48789 (not b_next!49493))))

(declare-fun tp!500967 () Bool)

(declare-fun b_and!133531 () Bool)

(assert (=> b!1764749 (= tp!500967 b_and!133531)))

(declare-fun b!1764754 () Bool)

(declare-fun b_free!48791 () Bool)

(declare-fun b_next!49495 () Bool)

(assert (=> b!1764754 (= b_free!48791 (not b_next!49495))))

(declare-fun tp!500969 () Bool)

(declare-fun b_and!133533 () Bool)

(assert (=> b!1764754 (= tp!500969 b_and!133533)))

(declare-fun b_free!48793 () Bool)

(declare-fun b_next!49497 () Bool)

(assert (=> b!1764754 (= b_free!48793 (not b_next!49497))))

(declare-fun tp!500974 () Bool)

(declare-fun b_and!133535 () Bool)

(assert (=> b!1764754 (= tp!500974 b_and!133535)))

(declare-fun b!1764773 () Bool)

(declare-fun b_free!48795 () Bool)

(declare-fun b_next!49499 () Bool)

(assert (=> b!1764773 (= b_free!48795 (not b_next!49499))))

(declare-fun tp!500972 () Bool)

(declare-fun b_and!133537 () Bool)

(assert (=> b!1764773 (= tp!500972 b_and!133537)))

(declare-fun b_free!48797 () Bool)

(declare-fun b_next!49501 () Bool)

(assert (=> b!1764773 (= b_free!48797 (not b_next!49501))))

(declare-fun tp!500970 () Bool)

(declare-fun b_and!133539 () Bool)

(assert (=> b!1764773 (= tp!500970 b_and!133539)))

(declare-fun b!1764790 () Bool)

(declare-fun e!1129295 () Bool)

(assert (=> b!1764790 (= e!1129295 true)))

(declare-fun b!1764789 () Bool)

(declare-fun e!1129294 () Bool)

(assert (=> b!1764789 (= e!1129294 e!1129295)))

(declare-fun b!1764788 () Bool)

(declare-fun e!1129293 () Bool)

(assert (=> b!1764788 (= e!1129293 e!1129294)))

(declare-fun b!1764767 () Bool)

(assert (=> b!1764767 e!1129293))

(assert (= b!1764789 b!1764790))

(assert (= b!1764788 b!1764789))

(assert (= b!1764767 b!1764788))

(declare-datatypes ((List!19490 0))(
  ( (Nil!19420) (Cons!19420 (h!24821 (_ BitVec 16)) (t!164589 List!19490)) )
))
(declare-datatypes ((TokenValue!3560 0))(
  ( (FloatLiteralValue!7120 (text!25365 List!19490)) (TokenValueExt!3559 (__x!12422 Int)) (Broken!17800 (value!108543 List!19490)) (Object!3629) (End!3560) (Def!3560) (Underscore!3560) (Match!3560) (Else!3560) (Error!3560) (Case!3560) (If!3560) (Extends!3560) (Abstract!3560) (Class!3560) (Val!3560) (DelimiterValue!7120 (del!3620 List!19490)) (KeywordValue!3566 (value!108544 List!19490)) (CommentValue!7120 (value!108545 List!19490)) (WhitespaceValue!7120 (value!108546 List!19490)) (IndentationValue!3560 (value!108547 List!19490)) (String!22133) (Int32!3560) (Broken!17801 (value!108548 List!19490)) (Boolean!3561) (Unit!33609) (OperatorValue!3563 (op!3620 List!19490)) (IdentifierValue!7120 (value!108549 List!19490)) (IdentifierValue!7121 (value!108550 List!19490)) (WhitespaceValue!7121 (value!108551 List!19490)) (True!7120) (False!7120) (Broken!17802 (value!108552 List!19490)) (Broken!17803 (value!108553 List!19490)) (True!7121) (RightBrace!3560) (RightBracket!3560) (Colon!3560) (Null!3560) (Comma!3560) (LeftBracket!3560) (False!7121) (LeftBrace!3560) (ImaginaryLiteralValue!3560 (text!25366 List!19490)) (StringLiteralValue!10680 (value!108554 List!19490)) (EOFValue!3560 (value!108555 List!19490)) (IdentValue!3560 (value!108556 List!19490)) (DelimiterValue!7121 (value!108557 List!19490)) (DedentValue!3560 (value!108558 List!19490)) (NewLineValue!3560 (value!108559 List!19490)) (IntegerValue!10680 (value!108560 (_ BitVec 32)) (text!25367 List!19490)) (IntegerValue!10681 (value!108561 Int) (text!25368 List!19490)) (Times!3560) (Or!3560) (Equal!3560) (Minus!3560) (Broken!17804 (value!108562 List!19490)) (And!3560) (Div!3560) (LessEqual!3560) (Mod!3560) (Concat!8358) (Not!3560) (Plus!3560) (SpaceValue!3560 (value!108563 List!19490)) (IntegerValue!10682 (value!108564 Int) (text!25369 List!19490)) (StringLiteralValue!10681 (text!25370 List!19490)) (FloatLiteralValue!7121 (text!25371 List!19490)) (BytesLiteralValue!3560 (value!108565 List!19490)) (CommentValue!7121 (value!108566 List!19490)) (StringLiteralValue!10682 (value!108567 List!19490)) (ErrorTokenValue!3560 (msg!3621 List!19490)) )
))
(declare-datatypes ((C!9770 0))(
  ( (C!9771 (val!5481 Int)) )
))
(declare-datatypes ((List!19491 0))(
  ( (Nil!19421) (Cons!19421 (h!24822 C!9770) (t!164590 List!19491)) )
))
(declare-datatypes ((String!22134 0))(
  ( (String!22135 (value!108568 String)) )
))
(declare-datatypes ((Regex!4798 0))(
  ( (ElementMatch!4798 (c!287521 C!9770)) (Concat!8359 (regOne!10108 Regex!4798) (regTwo!10108 Regex!4798)) (EmptyExpr!4798) (Star!4798 (reg!5127 Regex!4798)) (EmptyLang!4798) (Union!4798 (regOne!10109 Regex!4798) (regTwo!10109 Regex!4798)) )
))
(declare-datatypes ((IArray!12925 0))(
  ( (IArray!12926 (innerList!6520 List!19491)) )
))
(declare-datatypes ((Conc!6460 0))(
  ( (Node!6460 (left!15547 Conc!6460) (right!15877 Conc!6460) (csize!13150 Int) (cheight!6671 Int)) (Leaf!9416 (xs!9336 IArray!12925) (csize!13151 Int)) (Empty!6460) )
))
(declare-datatypes ((BalanceConc!12864 0))(
  ( (BalanceConc!12865 (c!287522 Conc!6460)) )
))
(declare-datatypes ((TokenValueInjection!6780 0))(
  ( (TokenValueInjection!6781 (toValue!4993 Int) (toChars!4852 Int)) )
))
(declare-datatypes ((Rule!6740 0))(
  ( (Rule!6741 (regex!3470 Regex!4798) (tag!3842 String!22134) (isSeparator!3470 Bool) (transformation!3470 TokenValueInjection!6780)) )
))
(declare-datatypes ((Token!6506 0))(
  ( (Token!6507 (value!108569 TokenValue!3560) (rule!5496 Rule!6740) (size!15426 Int) (originalCharacters!4284 List!19491)) )
))
(declare-datatypes ((tuple2!19032 0))(
  ( (tuple2!19033 (_1!10918 Token!6506) (_2!10918 List!19491)) )
))
(declare-fun lt!682379 () tuple2!19032)

(declare-fun order!12339 () Int)

(declare-fun lambda!70263 () Int)

(declare-fun order!12337 () Int)

(declare-fun dynLambda!9376 (Int Int) Int)

(declare-fun dynLambda!9377 (Int Int) Int)

(assert (=> b!1764790 (< (dynLambda!9376 order!12337 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9377 order!12339 lambda!70263))))

(declare-fun order!12341 () Int)

(declare-fun dynLambda!9378 (Int Int) Int)

(assert (=> b!1764790 (< (dynLambda!9378 order!12341 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9377 order!12339 lambda!70263))))

(declare-fun e!1129286 () Bool)

(assert (=> b!1764749 (= e!1129286 (and tp!500965 tp!500967))))

(declare-fun b!1764750 () Bool)

(declare-fun e!1129280 () Bool)

(declare-fun e!1129268 () Bool)

(assert (=> b!1764750 (= e!1129280 (not e!1129268))))

(declare-fun res!794372 () Bool)

(assert (=> b!1764750 (=> res!794372 e!1129268)))

(declare-fun rule!422 () Rule!6740)

(declare-fun lt!682389 () List!19491)

(declare-fun matchR!2271 (Regex!4798 List!19491) Bool)

(assert (=> b!1764750 (= res!794372 (not (matchR!2271 (regex!3470 rule!422) lt!682389)))))

(declare-datatypes ((LexerInterface!3099 0))(
  ( (LexerInterfaceExt!3096 (__x!12423 Int)) (Lexer!3097) )
))
(declare-fun thiss!24550 () LexerInterface!3099)

(declare-fun ruleValid!968 (LexerInterface!3099 Rule!6740) Bool)

(assert (=> b!1764750 (ruleValid!968 thiss!24550 rule!422)))

(declare-datatypes ((List!19492 0))(
  ( (Nil!19422) (Cons!19422 (h!24823 Rule!6740) (t!164591 List!19492)) )
))
(declare-fun rules!3447 () List!19492)

(declare-datatypes ((Unit!33610 0))(
  ( (Unit!33611) )
))
(declare-fun lt!682388 () Unit!33610)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!491 (LexerInterface!3099 Rule!6740 List!19492) Unit!33610)

(assert (=> b!1764750 (= lt!682388 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!491 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1764751 () Bool)

(declare-fun e!1129283 () Bool)

(declare-fun e!1129275 () Bool)

(declare-fun tp!500964 () Bool)

(assert (=> b!1764751 (= e!1129283 (and e!1129275 tp!500964))))

(declare-fun e!1129284 () Bool)

(declare-fun tp!500968 () Bool)

(declare-fun e!1129264 () Bool)

(declare-fun b!1764752 () Bool)

(declare-fun inv!25224 (String!22134) Bool)

(declare-fun inv!25227 (TokenValueInjection!6780) Bool)

(assert (=> b!1764752 (= e!1129264 (and tp!500968 (inv!25224 (tag!3842 rule!422)) (inv!25227 (transformation!3470 rule!422)) e!1129284))))

(declare-fun b!1764753 () Bool)

(declare-fun e!1129261 () Bool)

(declare-fun tp_is_empty!7839 () Bool)

(declare-fun tp!500963 () Bool)

(assert (=> b!1764753 (= e!1129261 (and tp_is_empty!7839 tp!500963))))

(assert (=> b!1764754 (= e!1129284 (and tp!500969 tp!500974))))

(declare-fun b!1764755 () Bool)

(declare-fun res!794369 () Bool)

(assert (=> b!1764755 (=> res!794369 e!1129268)))

(declare-fun suffix!1421 () List!19491)

(declare-fun isEmpty!12258 (List!19491) Bool)

(assert (=> b!1764755 (= res!794369 (isEmpty!12258 suffix!1421))))

(declare-fun b!1764756 () Bool)

(declare-fun res!794373 () Bool)

(assert (=> b!1764756 (=> (not res!794373) (not e!1129280))))

(declare-fun token!523 () Token!6506)

(assert (=> b!1764756 (= res!794373 (= (rule!5496 token!523) rule!422))))

(declare-fun b!1764757 () Bool)

(declare-fun res!794388 () Bool)

(assert (=> b!1764757 (=> (not res!794388) (not e!1129280))))

(declare-fun lt!682396 () tuple2!19032)

(assert (=> b!1764757 (= res!794388 (isEmpty!12258 (_2!10918 lt!682396)))))

(declare-fun res!794379 () Bool)

(declare-fun e!1129277 () Bool)

(assert (=> start!174816 (=> (not res!794379) (not e!1129277))))

(assert (=> start!174816 (= res!794379 (is-Lexer!3097 thiss!24550))))

(assert (=> start!174816 e!1129277))

(assert (=> start!174816 e!1129261))

(assert (=> start!174816 e!1129264))

(assert (=> start!174816 true))

(declare-fun e!1129285 () Bool)

(declare-fun inv!25228 (Token!6506) Bool)

(assert (=> start!174816 (and (inv!25228 token!523) e!1129285)))

(assert (=> start!174816 e!1129283))

(declare-fun b!1764758 () Bool)

(declare-fun e!1129267 () Bool)

(declare-fun e!1129265 () Bool)

(assert (=> b!1764758 (= e!1129267 e!1129265)))

(declare-fun res!794382 () Bool)

(assert (=> b!1764758 (=> res!794382 e!1129265)))

(declare-fun lt!682371 () List!19491)

(declare-datatypes ((Option!3962 0))(
  ( (None!3961) (Some!3961 (v!25428 tuple2!19032)) )
))
(declare-fun lt!682381 () Option!3962)

(assert (=> b!1764758 (= res!794382 (or (not (= lt!682371 (_2!10918 lt!682379))) (not (= lt!682381 (Some!3961 (tuple2!19033 (_1!10918 lt!682379) lt!682371))))))))

(assert (=> b!1764758 (= (_2!10918 lt!682379) lt!682371)))

(declare-fun lt!682385 () Unit!33610)

(declare-fun lt!682393 () List!19491)

(declare-fun lt!682376 () List!19491)

(declare-fun lemmaSamePrefixThenSameSuffix!821 (List!19491 List!19491 List!19491 List!19491 List!19491) Unit!33610)

(assert (=> b!1764758 (= lt!682385 (lemmaSamePrefixThenSameSuffix!821 lt!682393 (_2!10918 lt!682379) lt!682393 lt!682371 lt!682376))))

(declare-fun getSuffix!877 (List!19491 List!19491) List!19491)

(assert (=> b!1764758 (= lt!682371 (getSuffix!877 lt!682376 lt!682393))))

(declare-fun lt!682373 () TokenValue!3560)

(declare-fun lt!682383 () Int)

(assert (=> b!1764758 (= lt!682381 (Some!3961 (tuple2!19033 (Token!6507 lt!682373 (rule!5496 (_1!10918 lt!682379)) lt!682383 lt!682393) (_2!10918 lt!682379))))))

(declare-fun maxPrefixOneRule!1022 (LexerInterface!3099 Rule!6740 List!19491) Option!3962)

(assert (=> b!1764758 (= lt!682381 (maxPrefixOneRule!1022 thiss!24550 (rule!5496 (_1!10918 lt!682379)) lt!682376))))

(declare-fun size!15427 (List!19491) Int)

(assert (=> b!1764758 (= lt!682383 (size!15427 lt!682393))))

(declare-fun apply!5270 (TokenValueInjection!6780 BalanceConc!12864) TokenValue!3560)

(declare-fun seqFromList!2439 (List!19491) BalanceConc!12864)

(assert (=> b!1764758 (= lt!682373 (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) (seqFromList!2439 lt!682393)))))

(declare-fun lt!682390 () Unit!33610)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!400 (LexerInterface!3099 List!19492 List!19491 List!19491 List!19491 Rule!6740) Unit!33610)

(assert (=> b!1764758 (= lt!682390 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!400 thiss!24550 rules!3447 lt!682393 lt!682376 (_2!10918 lt!682379) (rule!5496 (_1!10918 lt!682379))))))

(declare-fun b!1764759 () Bool)

(declare-fun res!794371 () Bool)

(declare-fun e!1129266 () Bool)

(assert (=> b!1764759 (=> res!794371 e!1129266)))

(assert (=> b!1764759 (= res!794371 (not (matchR!2271 (regex!3470 (rule!5496 (_1!10918 lt!682379))) lt!682393)))))

(declare-fun b!1764760 () Bool)

(declare-fun e!1129273 () Bool)

(declare-fun e!1129270 () Bool)

(assert (=> b!1764760 (= e!1129273 e!1129270)))

(declare-fun res!794390 () Bool)

(assert (=> b!1764760 (=> (not res!794390) (not e!1129270))))

(declare-fun lt!682370 () Rule!6740)

(declare-fun list!7884 (BalanceConc!12864) List!19491)

(declare-fun charsOf!2119 (Token!6506) BalanceConc!12864)

(assert (=> b!1764760 (= res!794390 (matchR!2271 (regex!3470 lt!682370) (list!7884 (charsOf!2119 (_1!10918 lt!682379)))))))

(declare-datatypes ((Option!3963 0))(
  ( (None!3962) (Some!3962 (v!25429 Rule!6740)) )
))
(declare-fun lt!682380 () Option!3963)

(declare-fun get!5915 (Option!3963) Rule!6740)

(assert (=> b!1764760 (= lt!682370 (get!5915 lt!682380))))

(declare-fun b!1764761 () Bool)

(declare-fun res!794385 () Bool)

(assert (=> b!1764761 (=> (not res!794385) (not e!1129277))))

(declare-fun isEmpty!12259 (List!19492) Bool)

(assert (=> b!1764761 (= res!794385 (not (isEmpty!12259 rules!3447)))))

(declare-fun e!1129276 () Bool)

(declare-fun tp!500971 () Bool)

(declare-fun b!1764762 () Bool)

(assert (=> b!1764762 (= e!1129276 (and tp!500971 (inv!25224 (tag!3842 (rule!5496 token!523))) (inv!25227 (transformation!3470 (rule!5496 token!523))) e!1129286))))

(declare-fun b!1764763 () Bool)

(declare-fun res!794384 () Bool)

(assert (=> b!1764763 (=> (not res!794384) (not e!1129277))))

(declare-fun contains!3500 (List!19492 Rule!6740) Bool)

(assert (=> b!1764763 (= res!794384 (contains!3500 rules!3447 rule!422))))

(declare-fun b!1764764 () Bool)

(declare-fun res!794381 () Bool)

(declare-fun e!1129279 () Bool)

(assert (=> b!1764764 (=> res!794381 e!1129279)))

(declare-fun lt!682397 () BalanceConc!12864)

(declare-fun dynLambda!9379 (Int TokenValue!3560) BalanceConc!12864)

(assert (=> b!1764764 (= res!794381 (not (= lt!682397 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))))

(declare-fun b!1764765 () Bool)

(declare-fun e!1129278 () Bool)

(declare-fun lt!682375 () Option!3962)

(assert (=> b!1764765 (= e!1129278 (= lt!682375 (Some!3961 (tuple2!19033 (_1!10918 lt!682379) (_2!10918 lt!682379)))))))

(declare-fun b!1764766 () Bool)

(declare-fun tp!500966 () Bool)

(declare-fun inv!21 (TokenValue!3560) Bool)

(assert (=> b!1764766 (= e!1129285 (and (inv!21 (value!108569 token!523)) e!1129276 tp!500966))))

(declare-fun e!1129281 () Bool)

(assert (=> b!1764767 (= e!1129266 e!1129281)))

(declare-fun res!794383 () Bool)

(assert (=> b!1764767 (=> res!794383 e!1129281)))

(declare-fun Forall!837 (Int) Bool)

(assert (=> b!1764767 (= res!794383 (not (Forall!837 lambda!70263)))))

(declare-fun lt!682398 () Unit!33610)

(declare-fun lemmaInv!669 (TokenValueInjection!6780) Unit!33610)

(assert (=> b!1764767 (= lt!682398 (lemmaInv!669 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun b!1764768 () Bool)

(declare-fun e!1129263 () Bool)

(assert (=> b!1764768 (= e!1129268 e!1129263)))

(declare-fun res!794387 () Bool)

(assert (=> b!1764768 (=> res!794387 e!1129263)))

(declare-fun lt!682395 () Regex!4798)

(declare-fun prefixMatch!681 (Regex!4798 List!19491) Bool)

(declare-fun ++!5294 (List!19491 List!19491) List!19491)

(declare-fun head!4091 (List!19491) C!9770)

(assert (=> b!1764768 (= res!794387 (prefixMatch!681 lt!682395 (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421))))))

(declare-fun rulesRegex!826 (LexerInterface!3099 List!19492) Regex!4798)

(assert (=> b!1764768 (= lt!682395 (rulesRegex!826 thiss!24550 rules!3447))))

(declare-fun b!1764769 () Bool)

(assert (=> b!1764769 (= e!1129270 (= (rule!5496 (_1!10918 lt!682379)) lt!682370))))

(declare-fun b!1764770 () Bool)

(assert (=> b!1764770 (= e!1129279 e!1129267)))

(declare-fun res!794376 () Bool)

(assert (=> b!1764770 (=> res!794376 e!1129267)))

(declare-fun lt!682378 () TokenValue!3560)

(declare-fun lt!682392 () Int)

(assert (=> b!1764770 (= res!794376 (not (= lt!682375 (Some!3961 (tuple2!19033 (Token!6507 lt!682378 (rule!5496 (_1!10918 lt!682379)) lt!682392 lt!682393) (_2!10918 lt!682379))))))))

(declare-fun size!15428 (BalanceConc!12864) Int)

(assert (=> b!1764770 (= lt!682392 (size!15428 lt!682397))))

(assert (=> b!1764770 (= lt!682378 (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397))))

(declare-fun lt!682387 () Unit!33610)

(declare-fun lemmaCharactersSize!528 (Token!6506) Unit!33610)

(assert (=> b!1764770 (= lt!682387 (lemmaCharactersSize!528 (_1!10918 lt!682379)))))

(declare-fun lt!682374 () Unit!33610)

(declare-fun lemmaEqSameImage!381 (TokenValueInjection!6780 BalanceConc!12864 BalanceConc!12864) Unit!33610)

(assert (=> b!1764770 (= lt!682374 (lemmaEqSameImage!381 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397 (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379)))))))

(declare-fun b!1764771 () Bool)

(assert (=> b!1764771 (= e!1129265 e!1129278)))

(declare-fun res!794389 () Bool)

(assert (=> b!1764771 (=> res!794389 e!1129278)))

(declare-fun lt!682391 () BalanceConc!12864)

(assert (=> b!1764771 (= res!794389 (<= lt!682392 (size!15428 lt!682391)))))

(assert (=> b!1764771 (matchR!2271 lt!682395 lt!682389)))

(declare-fun lt!682394 () Unit!33610)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!177 (LexerInterface!3099 List!19492 List!19491 Token!6506 Rule!6740 List!19491) Unit!33610)

(assert (=> b!1764771 (= lt!682394 (lemmaMaxPrefixThenMatchesRulesRegex!177 thiss!24550 rules!3447 lt!682389 token!523 rule!422 Nil!19421))))

(declare-fun b!1764772 () Bool)

(declare-fun res!794375 () Bool)

(assert (=> b!1764772 (=> (not res!794375) (not e!1129277))))

(declare-fun rulesInvariant!2768 (LexerInterface!3099 List!19492) Bool)

(assert (=> b!1764772 (= res!794375 (rulesInvariant!2768 thiss!24550 rules!3447))))

(declare-fun e!1129282 () Bool)

(assert (=> b!1764773 (= e!1129282 (and tp!500972 tp!500970))))

(declare-fun b!1764774 () Bool)

(assert (=> b!1764774 (= e!1129263 e!1129266)))

(declare-fun res!794380 () Bool)

(assert (=> b!1764774 (=> res!794380 e!1129266)))

(declare-fun isPrefix!1710 (List!19491 List!19491) Bool)

(assert (=> b!1764774 (= res!794380 (not (isPrefix!1710 lt!682393 lt!682376)))))

(assert (=> b!1764774 (isPrefix!1710 lt!682393 (++!5294 lt!682393 (_2!10918 lt!682379)))))

(declare-fun lt!682377 () Unit!33610)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1219 (List!19491 List!19491) Unit!33610)

(assert (=> b!1764774 (= lt!682377 (lemmaConcatTwoListThenFirstIsPrefix!1219 lt!682393 (_2!10918 lt!682379)))))

(assert (=> b!1764774 (= lt!682393 (list!7884 lt!682397))))

(assert (=> b!1764774 (= lt!682397 (charsOf!2119 (_1!10918 lt!682379)))))

(assert (=> b!1764774 e!1129273))

(declare-fun res!794370 () Bool)

(assert (=> b!1764774 (=> (not res!794370) (not e!1129273))))

(declare-fun isDefined!3305 (Option!3963) Bool)

(assert (=> b!1764774 (= res!794370 (isDefined!3305 lt!682380))))

(declare-fun getRuleFromTag!518 (LexerInterface!3099 List!19492 String!22134) Option!3963)

(assert (=> b!1764774 (= lt!682380 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun lt!682372 () Unit!33610)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!518 (LexerInterface!3099 List!19492 List!19491 Token!6506) Unit!33610)

(assert (=> b!1764774 (= lt!682372 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!518 thiss!24550 rules!3447 lt!682376 (_1!10918 lt!682379)))))

(declare-fun get!5916 (Option!3962) tuple2!19032)

(assert (=> b!1764774 (= lt!682379 (get!5916 lt!682375))))

(declare-fun lt!682369 () Unit!33610)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!621 (LexerInterface!3099 List!19492 List!19491 List!19491) Unit!33610)

(assert (=> b!1764774 (= lt!682369 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!621 thiss!24550 rules!3447 lt!682389 suffix!1421))))

(declare-fun maxPrefix!1653 (LexerInterface!3099 List!19492 List!19491) Option!3962)

(assert (=> b!1764774 (= lt!682375 (maxPrefix!1653 thiss!24550 rules!3447 lt!682376))))

(assert (=> b!1764774 (isPrefix!1710 lt!682389 lt!682376)))

(declare-fun lt!682382 () Unit!33610)

(assert (=> b!1764774 (= lt!682382 (lemmaConcatTwoListThenFirstIsPrefix!1219 lt!682389 suffix!1421))))

(assert (=> b!1764774 (= lt!682376 (++!5294 lt!682389 suffix!1421))))

(declare-fun b!1764775 () Bool)

(assert (=> b!1764775 (= e!1129281 e!1129279)))

(declare-fun res!794386 () Bool)

(assert (=> b!1764775 (=> res!794386 e!1129279)))

(declare-fun dynLambda!9380 (Int BalanceConc!12864) TokenValue!3560)

(assert (=> b!1764775 (= res!794386 (not (= (list!7884 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))) lt!682393)))))

(declare-fun lt!682386 () Unit!33610)

(declare-fun lemmaSemiInverse!608 (TokenValueInjection!6780 BalanceConc!12864) Unit!33610)

(assert (=> b!1764775 (= lt!682386 (lemmaSemiInverse!608 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397))))

(declare-fun b!1764776 () Bool)

(declare-fun e!1129274 () Bool)

(assert (=> b!1764776 (= e!1129277 e!1129274)))

(declare-fun res!794378 () Bool)

(assert (=> b!1764776 (=> (not res!794378) (not e!1129274))))

(declare-fun lt!682384 () Option!3962)

(declare-fun isDefined!3306 (Option!3962) Bool)

(assert (=> b!1764776 (= res!794378 (isDefined!3306 lt!682384))))

(assert (=> b!1764776 (= lt!682384 (maxPrefix!1653 thiss!24550 rules!3447 lt!682389))))

(assert (=> b!1764776 (= lt!682389 (list!7884 lt!682391))))

(assert (=> b!1764776 (= lt!682391 (charsOf!2119 token!523))))

(declare-fun b!1764777 () Bool)

(declare-fun res!794374 () Bool)

(assert (=> b!1764777 (=> res!794374 e!1129278)))

(assert (=> b!1764777 (= res!794374 (not (contains!3500 rules!3447 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun b!1764778 () Bool)

(assert (=> b!1764778 (= e!1129274 e!1129280)))

(declare-fun res!794377 () Bool)

(assert (=> b!1764778 (=> (not res!794377) (not e!1129280))))

(assert (=> b!1764778 (= res!794377 (= (_1!10918 lt!682396) token!523))))

(assert (=> b!1764778 (= lt!682396 (get!5916 lt!682384))))

(declare-fun tp!500973 () Bool)

(declare-fun b!1764779 () Bool)

(assert (=> b!1764779 (= e!1129275 (and tp!500973 (inv!25224 (tag!3842 (h!24823 rules!3447))) (inv!25227 (transformation!3470 (h!24823 rules!3447))) e!1129282))))

(assert (= (and start!174816 res!794379) b!1764761))

(assert (= (and b!1764761 res!794385) b!1764772))

(assert (= (and b!1764772 res!794375) b!1764763))

(assert (= (and b!1764763 res!794384) b!1764776))

(assert (= (and b!1764776 res!794378) b!1764778))

(assert (= (and b!1764778 res!794377) b!1764757))

(assert (= (and b!1764757 res!794388) b!1764756))

(assert (= (and b!1764756 res!794373) b!1764750))

(assert (= (and b!1764750 (not res!794372)) b!1764755))

(assert (= (and b!1764755 (not res!794369)) b!1764768))

(assert (= (and b!1764768 (not res!794387)) b!1764774))

(assert (= (and b!1764774 res!794370) b!1764760))

(assert (= (and b!1764760 res!794390) b!1764769))

(assert (= (and b!1764774 (not res!794380)) b!1764759))

(assert (= (and b!1764759 (not res!794371)) b!1764767))

(assert (= (and b!1764767 (not res!794383)) b!1764775))

(assert (= (and b!1764775 (not res!794386)) b!1764764))

(assert (= (and b!1764764 (not res!794381)) b!1764770))

(assert (= (and b!1764770 (not res!794376)) b!1764758))

(assert (= (and b!1764758 (not res!794382)) b!1764771))

(assert (= (and b!1764771 (not res!794389)) b!1764777))

(assert (= (and b!1764777 (not res!794374)) b!1764765))

(assert (= (and start!174816 (is-Cons!19421 suffix!1421)) b!1764753))

(assert (= b!1764752 b!1764754))

(assert (= start!174816 b!1764752))

(assert (= b!1764762 b!1764749))

(assert (= b!1764766 b!1764762))

(assert (= start!174816 b!1764766))

(assert (= b!1764779 b!1764773))

(assert (= b!1764751 b!1764779))

(assert (= (and start!174816 (is-Cons!19422 rules!3447)) b!1764751))

(declare-fun b_lambda!57261 () Bool)

(assert (=> (not b_lambda!57261) (not b!1764764)))

(declare-fun tb!106497 () Bool)

(declare-fun t!164572 () Bool)

(assert (=> (and b!1764749 (= (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164572) tb!106497))

(declare-fun b!1764795 () Bool)

(declare-fun e!1129298 () Bool)

(declare-fun tp!500977 () Bool)

(declare-fun inv!25229 (Conc!6460) Bool)

(assert (=> b!1764795 (= e!1129298 (and (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))) tp!500977))))

(declare-fun result!128112 () Bool)

(declare-fun inv!25230 (BalanceConc!12864) Bool)

(assert (=> tb!106497 (= result!128112 (and (inv!25230 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))) e!1129298))))

(assert (= tb!106497 b!1764795))

(declare-fun m!2181853 () Bool)

(assert (=> b!1764795 m!2181853))

(declare-fun m!2181855 () Bool)

(assert (=> tb!106497 m!2181855))

(assert (=> b!1764764 t!164572))

(declare-fun b_and!133541 () Bool)

(assert (= b_and!133531 (and (=> t!164572 result!128112) b_and!133541)))

(declare-fun t!164574 () Bool)

(declare-fun tb!106499 () Bool)

(assert (=> (and b!1764754 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164574) tb!106499))

(declare-fun result!128116 () Bool)

(assert (= result!128116 result!128112))

(assert (=> b!1764764 t!164574))

(declare-fun b_and!133543 () Bool)

(assert (= b_and!133535 (and (=> t!164574 result!128116) b_and!133543)))

(declare-fun t!164576 () Bool)

(declare-fun tb!106501 () Bool)

(assert (=> (and b!1764773 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164576) tb!106501))

(declare-fun result!128118 () Bool)

(assert (= result!128118 result!128112))

(assert (=> b!1764764 t!164576))

(declare-fun b_and!133545 () Bool)

(assert (= b_and!133539 (and (=> t!164576 result!128118) b_and!133545)))

(declare-fun b_lambda!57263 () Bool)

(assert (=> (not b_lambda!57263) (not b!1764775)))

(declare-fun tb!106503 () Bool)

(declare-fun t!164578 () Bool)

(assert (=> (and b!1764749 (= (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164578) tb!106503))

(declare-fun e!1129299 () Bool)

(declare-fun tp!500978 () Bool)

(declare-fun b!1764796 () Bool)

(assert (=> b!1764796 (= e!1129299 (and (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))) tp!500978))))

(declare-fun result!128120 () Bool)

(assert (=> tb!106503 (= result!128120 (and (inv!25230 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))) e!1129299))))

(assert (= tb!106503 b!1764796))

(declare-fun m!2181857 () Bool)

(assert (=> b!1764796 m!2181857))

(declare-fun m!2181859 () Bool)

(assert (=> tb!106503 m!2181859))

(assert (=> b!1764775 t!164578))

(declare-fun b_and!133547 () Bool)

(assert (= b_and!133541 (and (=> t!164578 result!128120) b_and!133547)))

(declare-fun tb!106505 () Bool)

(declare-fun t!164580 () Bool)

(assert (=> (and b!1764754 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164580) tb!106505))

(declare-fun result!128122 () Bool)

(assert (= result!128122 result!128120))

(assert (=> b!1764775 t!164580))

(declare-fun b_and!133549 () Bool)

(assert (= b_and!133543 (and (=> t!164580 result!128122) b_and!133549)))

(declare-fun t!164582 () Bool)

(declare-fun tb!106507 () Bool)

(assert (=> (and b!1764773 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164582) tb!106507))

(declare-fun result!128124 () Bool)

(assert (= result!128124 result!128120))

(assert (=> b!1764775 t!164582))

(declare-fun b_and!133551 () Bool)

(assert (= b_and!133545 (and (=> t!164582 result!128124) b_and!133551)))

(declare-fun b_lambda!57265 () Bool)

(assert (=> (not b_lambda!57265) (not b!1764775)))

(declare-fun tb!106509 () Bool)

(declare-fun t!164584 () Bool)

(assert (=> (and b!1764749 (= (toValue!4993 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164584) tb!106509))

(declare-fun result!128126 () Bool)

(assert (=> tb!106509 (= result!128126 (inv!21 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(declare-fun m!2181861 () Bool)

(assert (=> tb!106509 m!2181861))

(assert (=> b!1764775 t!164584))

(declare-fun b_and!133553 () Bool)

(assert (= b_and!133529 (and (=> t!164584 result!128126) b_and!133553)))

(declare-fun t!164586 () Bool)

(declare-fun tb!106511 () Bool)

(assert (=> (and b!1764754 (= (toValue!4993 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164586) tb!106511))

(declare-fun result!128130 () Bool)

(assert (= result!128130 result!128126))

(assert (=> b!1764775 t!164586))

(declare-fun b_and!133555 () Bool)

(assert (= b_and!133533 (and (=> t!164586 result!128130) b_and!133555)))

(declare-fun t!164588 () Bool)

(declare-fun tb!106513 () Bool)

(assert (=> (and b!1764773 (= (toValue!4993 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164588) tb!106513))

(declare-fun result!128132 () Bool)

(assert (= result!128132 result!128126))

(assert (=> b!1764775 t!164588))

(declare-fun b_and!133557 () Bool)

(assert (= b_and!133537 (and (=> t!164588 result!128132) b_and!133557)))

(declare-fun m!2181863 () Bool)

(assert (=> b!1764763 m!2181863))

(declare-fun m!2181865 () Bool)

(assert (=> b!1764772 m!2181865))

(declare-fun m!2181867 () Bool)

(assert (=> b!1764777 m!2181867))

(declare-fun m!2181869 () Bool)

(assert (=> b!1764760 m!2181869))

(assert (=> b!1764760 m!2181869))

(declare-fun m!2181871 () Bool)

(assert (=> b!1764760 m!2181871))

(assert (=> b!1764760 m!2181871))

(declare-fun m!2181873 () Bool)

(assert (=> b!1764760 m!2181873))

(declare-fun m!2181875 () Bool)

(assert (=> b!1764760 m!2181875))

(declare-fun m!2181877 () Bool)

(assert (=> b!1764764 m!2181877))

(declare-fun m!2181879 () Bool)

(assert (=> b!1764771 m!2181879))

(declare-fun m!2181881 () Bool)

(assert (=> b!1764771 m!2181881))

(declare-fun m!2181883 () Bool)

(assert (=> b!1764771 m!2181883))

(declare-fun m!2181885 () Bool)

(assert (=> b!1764750 m!2181885))

(declare-fun m!2181887 () Bool)

(assert (=> b!1764750 m!2181887))

(declare-fun m!2181889 () Bool)

(assert (=> b!1764750 m!2181889))

(declare-fun m!2181891 () Bool)

(assert (=> b!1764766 m!2181891))

(declare-fun m!2181893 () Bool)

(assert (=> b!1764776 m!2181893))

(declare-fun m!2181895 () Bool)

(assert (=> b!1764776 m!2181895))

(declare-fun m!2181897 () Bool)

(assert (=> b!1764776 m!2181897))

(declare-fun m!2181899 () Bool)

(assert (=> b!1764776 m!2181899))

(declare-fun m!2181901 () Bool)

(assert (=> b!1764759 m!2181901))

(declare-fun m!2181903 () Bool)

(assert (=> b!1764775 m!2181903))

(assert (=> b!1764775 m!2181903))

(declare-fun m!2181905 () Bool)

(assert (=> b!1764775 m!2181905))

(assert (=> b!1764775 m!2181905))

(declare-fun m!2181907 () Bool)

(assert (=> b!1764775 m!2181907))

(declare-fun m!2181909 () Bool)

(assert (=> b!1764775 m!2181909))

(declare-fun m!2181911 () Bool)

(assert (=> b!1764758 m!2181911))

(declare-fun m!2181913 () Bool)

(assert (=> b!1764758 m!2181913))

(declare-fun m!2181915 () Bool)

(assert (=> b!1764758 m!2181915))

(declare-fun m!2181917 () Bool)

(assert (=> b!1764758 m!2181917))

(declare-fun m!2181919 () Bool)

(assert (=> b!1764758 m!2181919))

(assert (=> b!1764758 m!2181915))

(declare-fun m!2181921 () Bool)

(assert (=> b!1764758 m!2181921))

(declare-fun m!2181923 () Bool)

(assert (=> b!1764758 m!2181923))

(declare-fun m!2181925 () Bool)

(assert (=> b!1764778 m!2181925))

(declare-fun m!2181927 () Bool)

(assert (=> start!174816 m!2181927))

(declare-fun m!2181929 () Bool)

(assert (=> b!1764767 m!2181929))

(declare-fun m!2181931 () Bool)

(assert (=> b!1764767 m!2181931))

(declare-fun m!2181933 () Bool)

(assert (=> b!1764752 m!2181933))

(declare-fun m!2181935 () Bool)

(assert (=> b!1764752 m!2181935))

(declare-fun m!2181937 () Bool)

(assert (=> b!1764762 m!2181937))

(declare-fun m!2181939 () Bool)

(assert (=> b!1764762 m!2181939))

(declare-fun m!2181941 () Bool)

(assert (=> b!1764779 m!2181941))

(declare-fun m!2181943 () Bool)

(assert (=> b!1764779 m!2181943))

(declare-fun m!2181945 () Bool)

(assert (=> b!1764761 m!2181945))

(declare-fun m!2181947 () Bool)

(assert (=> b!1764768 m!2181947))

(declare-fun m!2181949 () Bool)

(assert (=> b!1764768 m!2181949))

(assert (=> b!1764768 m!2181949))

(declare-fun m!2181951 () Bool)

(assert (=> b!1764768 m!2181951))

(declare-fun m!2181953 () Bool)

(assert (=> b!1764768 m!2181953))

(declare-fun m!2181955 () Bool)

(assert (=> b!1764755 m!2181955))

(declare-fun m!2181957 () Bool)

(assert (=> b!1764770 m!2181957))

(declare-fun m!2181959 () Bool)

(assert (=> b!1764770 m!2181959))

(declare-fun m!2181961 () Bool)

(assert (=> b!1764770 m!2181961))

(declare-fun m!2181963 () Bool)

(assert (=> b!1764770 m!2181963))

(assert (=> b!1764770 m!2181959))

(declare-fun m!2181965 () Bool)

(assert (=> b!1764770 m!2181965))

(declare-fun m!2181967 () Bool)

(assert (=> b!1764774 m!2181967))

(declare-fun m!2181969 () Bool)

(assert (=> b!1764774 m!2181969))

(declare-fun m!2181971 () Bool)

(assert (=> b!1764774 m!2181971))

(declare-fun m!2181973 () Bool)

(assert (=> b!1764774 m!2181973))

(assert (=> b!1764774 m!2181869))

(declare-fun m!2181975 () Bool)

(assert (=> b!1764774 m!2181975))

(declare-fun m!2181977 () Bool)

(assert (=> b!1764774 m!2181977))

(declare-fun m!2181979 () Bool)

(assert (=> b!1764774 m!2181979))

(declare-fun m!2181981 () Bool)

(assert (=> b!1764774 m!2181981))

(declare-fun m!2181983 () Bool)

(assert (=> b!1764774 m!2181983))

(declare-fun m!2181985 () Bool)

(assert (=> b!1764774 m!2181985))

(declare-fun m!2181987 () Bool)

(assert (=> b!1764774 m!2181987))

(declare-fun m!2181989 () Bool)

(assert (=> b!1764774 m!2181989))

(declare-fun m!2181991 () Bool)

(assert (=> b!1764774 m!2181991))

(declare-fun m!2181993 () Bool)

(assert (=> b!1764774 m!2181993))

(assert (=> b!1764774 m!2181981))

(declare-fun m!2181995 () Bool)

(assert (=> b!1764757 m!2181995))

(push 1)

(assert (not b!1764774))

(assert (not b_next!49495))

(assert (not b!1764767))

(assert (not start!174816))

(assert (not b!1764762))

(assert b_and!133557)

(assert (not tb!106509))

(assert (not b!1764777))

(assert (not b!1764778))

(assert (not b!1764753))

(assert (not b!1764766))

(assert (not b_lambda!57261))

(assert (not b_next!49491))

(assert (not b!1764751))

(assert (not tb!106503))

(assert (not b!1764776))

(assert (not tb!106497))

(assert (not b!1764768))

(assert (not b!1764772))

(assert (not b!1764761))

(assert (not b!1764770))

(assert (not b_next!49501))

(assert tp_is_empty!7839)

(assert (not b!1764771))

(assert (not b!1764763))

(assert (not b_lambda!57263))

(assert b_and!133551)

(assert b_and!133555)

(assert (not b!1764779))

(assert (not b_next!49499))

(assert b_and!133549)

(assert b_and!133553)

(assert b_and!133547)

(assert (not b!1764775))

(assert (not b!1764757))

(assert (not b!1764752))

(assert (not b!1764759))

(assert (not b!1764755))

(assert (not b!1764795))

(assert (not b_lambda!57265))

(assert (not b!1764796))

(assert (not b!1764750))

(assert (not b_next!49497))

(assert (not b!1764758))

(assert (not b_next!49493))

(assert (not b!1764760))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49491))

(assert (not b_next!49495))

(assert (not b_next!49501))

(assert b_and!133551)

(assert b_and!133557)

(assert (not b_next!49497))

(assert (not b_next!49493))

(assert b_and!133555)

(assert (not b_next!49499))

(assert b_and!133549)

(assert b_and!133553)

(assert b_and!133547)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!539234 () Bool)

(assert (=> d!539234 (= (inv!25224 (tag!3842 (rule!5496 token!523))) (= (mod (str.len (value!108568 (tag!3842 (rule!5496 token!523)))) 2) 0))))

(assert (=> b!1764762 d!539234))

(declare-fun d!539236 () Bool)

(declare-fun res!794459 () Bool)

(declare-fun e!1129399 () Bool)

(assert (=> d!539236 (=> (not res!794459) (not e!1129399))))

(declare-fun semiInverseModEq!1381 (Int Int) Bool)

(assert (=> d!539236 (= res!794459 (semiInverseModEq!1381 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 token!523)))))))

(assert (=> d!539236 (= (inv!25227 (transformation!3470 (rule!5496 token!523))) e!1129399)))

(declare-fun b!1764913 () Bool)

(declare-fun equivClasses!1322 (Int Int) Bool)

(assert (=> b!1764913 (= e!1129399 (equivClasses!1322 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 token!523)))))))

(assert (= (and d!539236 res!794459) b!1764913))

(declare-fun m!2182141 () Bool)

(assert (=> d!539236 m!2182141))

(declare-fun m!2182143 () Bool)

(assert (=> b!1764913 m!2182143))

(assert (=> b!1764762 d!539236))

(declare-fun d!539238 () Bool)

(assert (=> d!539238 (= (isEmpty!12259 rules!3447) (is-Nil!19422 rules!3447))))

(assert (=> b!1764761 d!539238))

(declare-fun b!1764942 () Bool)

(declare-fun e!1129417 () Bool)

(declare-fun e!1129420 () Bool)

(assert (=> b!1764942 (= e!1129417 e!1129420)))

(declare-fun c!287534 () Bool)

(assert (=> b!1764942 (= c!287534 (is-EmptyLang!4798 (regex!3470 lt!682370)))))

(declare-fun b!1764943 () Bool)

(declare-fun e!1129416 () Bool)

(declare-fun nullable!1466 (Regex!4798) Bool)

(assert (=> b!1764943 (= e!1129416 (nullable!1466 (regex!3470 lt!682370)))))

(declare-fun b!1764944 () Bool)

(declare-fun lt!682491 () Bool)

(declare-fun call!110839 () Bool)

(assert (=> b!1764944 (= e!1129417 (= lt!682491 call!110839))))

(declare-fun b!1764945 () Bool)

(declare-fun res!794476 () Bool)

(declare-fun e!1129415 () Bool)

(assert (=> b!1764945 (=> res!794476 e!1129415)))

(assert (=> b!1764945 (= res!794476 (not (is-ElementMatch!4798 (regex!3470 lt!682370))))))

(assert (=> b!1764945 (= e!1129420 e!1129415)))

(declare-fun b!1764946 () Bool)

(declare-fun res!794481 () Bool)

(declare-fun e!1129414 () Bool)

(assert (=> b!1764946 (=> res!794481 e!1129414)))

(declare-fun tail!2640 (List!19491) List!19491)

(assert (=> b!1764946 (= res!794481 (not (isEmpty!12258 (tail!2640 (list!7884 (charsOf!2119 (_1!10918 lt!682379)))))))))

(declare-fun bm!110834 () Bool)

(assert (=> bm!110834 (= call!110839 (isEmpty!12258 (list!7884 (charsOf!2119 (_1!10918 lt!682379)))))))

(declare-fun d!539240 () Bool)

(assert (=> d!539240 e!1129417))

(declare-fun c!287533 () Bool)

(assert (=> d!539240 (= c!287533 (is-EmptyExpr!4798 (regex!3470 lt!682370)))))

(assert (=> d!539240 (= lt!682491 e!1129416)))

(declare-fun c!287532 () Bool)

(assert (=> d!539240 (= c!287532 (isEmpty!12258 (list!7884 (charsOf!2119 (_1!10918 lt!682379)))))))

(declare-fun validRegex!1940 (Regex!4798) Bool)

(assert (=> d!539240 (validRegex!1940 (regex!3470 lt!682370))))

(assert (=> d!539240 (= (matchR!2271 (regex!3470 lt!682370) (list!7884 (charsOf!2119 (_1!10918 lt!682379)))) lt!682491)))

(declare-fun b!1764947 () Bool)

(declare-fun e!1129418 () Bool)

(assert (=> b!1764947 (= e!1129415 e!1129418)))

(declare-fun res!794482 () Bool)

(assert (=> b!1764947 (=> (not res!794482) (not e!1129418))))

(assert (=> b!1764947 (= res!794482 (not lt!682491))))

(declare-fun b!1764948 () Bool)

(declare-fun res!794480 () Bool)

(declare-fun e!1129419 () Bool)

(assert (=> b!1764948 (=> (not res!794480) (not e!1129419))))

(assert (=> b!1764948 (= res!794480 (not call!110839))))

(declare-fun b!1764949 () Bool)

(assert (=> b!1764949 (= e!1129419 (= (head!4091 (list!7884 (charsOf!2119 (_1!10918 lt!682379)))) (c!287521 (regex!3470 lt!682370))))))

(declare-fun b!1764950 () Bool)

(assert (=> b!1764950 (= e!1129420 (not lt!682491))))

(declare-fun b!1764951 () Bool)

(declare-fun res!794483 () Bool)

(assert (=> b!1764951 (=> res!794483 e!1129415)))

(assert (=> b!1764951 (= res!794483 e!1129419)))

(declare-fun res!794479 () Bool)

(assert (=> b!1764951 (=> (not res!794479) (not e!1129419))))

(assert (=> b!1764951 (= res!794479 lt!682491)))

(declare-fun b!1764952 () Bool)

(assert (=> b!1764952 (= e!1129418 e!1129414)))

(declare-fun res!794478 () Bool)

(assert (=> b!1764952 (=> res!794478 e!1129414)))

(assert (=> b!1764952 (= res!794478 call!110839)))

(declare-fun b!1764953 () Bool)

(assert (=> b!1764953 (= e!1129414 (not (= (head!4091 (list!7884 (charsOf!2119 (_1!10918 lt!682379)))) (c!287521 (regex!3470 lt!682370)))))))

(declare-fun b!1764954 () Bool)

(declare-fun res!794477 () Bool)

(assert (=> b!1764954 (=> (not res!794477) (not e!1129419))))

(assert (=> b!1764954 (= res!794477 (isEmpty!12258 (tail!2640 (list!7884 (charsOf!2119 (_1!10918 lt!682379))))))))

(declare-fun b!1764955 () Bool)

(declare-fun derivativeStep!1235 (Regex!4798 C!9770) Regex!4798)

(assert (=> b!1764955 (= e!1129416 (matchR!2271 (derivativeStep!1235 (regex!3470 lt!682370) (head!4091 (list!7884 (charsOf!2119 (_1!10918 lt!682379))))) (tail!2640 (list!7884 (charsOf!2119 (_1!10918 lt!682379))))))))

(assert (= (and d!539240 c!287532) b!1764943))

(assert (= (and d!539240 (not c!287532)) b!1764955))

(assert (= (and d!539240 c!287533) b!1764944))

(assert (= (and d!539240 (not c!287533)) b!1764942))

(assert (= (and b!1764942 c!287534) b!1764950))

(assert (= (and b!1764942 (not c!287534)) b!1764945))

(assert (= (and b!1764945 (not res!794476)) b!1764951))

(assert (= (and b!1764951 res!794479) b!1764948))

(assert (= (and b!1764948 res!794480) b!1764954))

(assert (= (and b!1764954 res!794477) b!1764949))

(assert (= (and b!1764951 (not res!794483)) b!1764947))

(assert (= (and b!1764947 res!794482) b!1764952))

(assert (= (and b!1764952 (not res!794478)) b!1764946))

(assert (= (and b!1764946 (not res!794481)) b!1764953))

(assert (= (or b!1764944 b!1764948 b!1764952) bm!110834))

(assert (=> b!1764955 m!2181871))

(declare-fun m!2182145 () Bool)

(assert (=> b!1764955 m!2182145))

(assert (=> b!1764955 m!2182145))

(declare-fun m!2182147 () Bool)

(assert (=> b!1764955 m!2182147))

(assert (=> b!1764955 m!2181871))

(declare-fun m!2182149 () Bool)

(assert (=> b!1764955 m!2182149))

(assert (=> b!1764955 m!2182147))

(assert (=> b!1764955 m!2182149))

(declare-fun m!2182151 () Bool)

(assert (=> b!1764955 m!2182151))

(assert (=> bm!110834 m!2181871))

(declare-fun m!2182153 () Bool)

(assert (=> bm!110834 m!2182153))

(assert (=> b!1764946 m!2181871))

(assert (=> b!1764946 m!2182149))

(assert (=> b!1764946 m!2182149))

(declare-fun m!2182155 () Bool)

(assert (=> b!1764946 m!2182155))

(assert (=> b!1764953 m!2181871))

(assert (=> b!1764953 m!2182145))

(assert (=> b!1764954 m!2181871))

(assert (=> b!1764954 m!2182149))

(assert (=> b!1764954 m!2182149))

(assert (=> b!1764954 m!2182155))

(assert (=> d!539240 m!2181871))

(assert (=> d!539240 m!2182153))

(declare-fun m!2182157 () Bool)

(assert (=> d!539240 m!2182157))

(assert (=> b!1764949 m!2181871))

(assert (=> b!1764949 m!2182145))

(declare-fun m!2182159 () Bool)

(assert (=> b!1764943 m!2182159))

(assert (=> b!1764760 d!539240))

(declare-fun d!539242 () Bool)

(declare-fun list!7886 (Conc!6460) List!19491)

(assert (=> d!539242 (= (list!7884 (charsOf!2119 (_1!10918 lt!682379))) (list!7886 (c!287522 (charsOf!2119 (_1!10918 lt!682379)))))))

(declare-fun bs!404322 () Bool)

(assert (= bs!404322 d!539242))

(declare-fun m!2182161 () Bool)

(assert (=> bs!404322 m!2182161))

(assert (=> b!1764760 d!539242))

(declare-fun d!539244 () Bool)

(declare-fun lt!682494 () BalanceConc!12864)

(assert (=> d!539244 (= (list!7884 lt!682494) (originalCharacters!4284 (_1!10918 lt!682379)))))

(assert (=> d!539244 (= lt!682494 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))

(assert (=> d!539244 (= (charsOf!2119 (_1!10918 lt!682379)) lt!682494)))

(declare-fun b_lambda!57273 () Bool)

(assert (=> (not b_lambda!57273) (not d!539244)))

(assert (=> d!539244 t!164572))

(declare-fun b_and!133589 () Bool)

(assert (= b_and!133547 (and (=> t!164572 result!128112) b_and!133589)))

(assert (=> d!539244 t!164574))

(declare-fun b_and!133591 () Bool)

(assert (= b_and!133549 (and (=> t!164574 result!128116) b_and!133591)))

(assert (=> d!539244 t!164576))

(declare-fun b_and!133593 () Bool)

(assert (= b_and!133551 (and (=> t!164576 result!128118) b_and!133593)))

(declare-fun m!2182163 () Bool)

(assert (=> d!539244 m!2182163))

(assert (=> d!539244 m!2181877))

(assert (=> b!1764760 d!539244))

(declare-fun d!539246 () Bool)

(assert (=> d!539246 (= (get!5915 lt!682380) (v!25429 lt!682380))))

(assert (=> b!1764760 d!539246))

(declare-fun b!1764956 () Bool)

(declare-fun e!1129424 () Bool)

(declare-fun e!1129427 () Bool)

(assert (=> b!1764956 (= e!1129424 e!1129427)))

(declare-fun c!287537 () Bool)

(assert (=> b!1764956 (= c!287537 (is-EmptyLang!4798 (regex!3470 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun b!1764957 () Bool)

(declare-fun e!1129423 () Bool)

(assert (=> b!1764957 (= e!1129423 (nullable!1466 (regex!3470 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun b!1764958 () Bool)

(declare-fun lt!682495 () Bool)

(declare-fun call!110840 () Bool)

(assert (=> b!1764958 (= e!1129424 (= lt!682495 call!110840))))

(declare-fun b!1764959 () Bool)

(declare-fun res!794484 () Bool)

(declare-fun e!1129422 () Bool)

(assert (=> b!1764959 (=> res!794484 e!1129422)))

(assert (=> b!1764959 (= res!794484 (not (is-ElementMatch!4798 (regex!3470 (rule!5496 (_1!10918 lt!682379))))))))

(assert (=> b!1764959 (= e!1129427 e!1129422)))

(declare-fun b!1764960 () Bool)

(declare-fun res!794489 () Bool)

(declare-fun e!1129421 () Bool)

(assert (=> b!1764960 (=> res!794489 e!1129421)))

(assert (=> b!1764960 (= res!794489 (not (isEmpty!12258 (tail!2640 lt!682393))))))

(declare-fun bm!110835 () Bool)

(assert (=> bm!110835 (= call!110840 (isEmpty!12258 lt!682393))))

(declare-fun d!539248 () Bool)

(assert (=> d!539248 e!1129424))

(declare-fun c!287536 () Bool)

(assert (=> d!539248 (= c!287536 (is-EmptyExpr!4798 (regex!3470 (rule!5496 (_1!10918 lt!682379)))))))

(assert (=> d!539248 (= lt!682495 e!1129423)))

(declare-fun c!287535 () Bool)

(assert (=> d!539248 (= c!287535 (isEmpty!12258 lt!682393))))

(assert (=> d!539248 (validRegex!1940 (regex!3470 (rule!5496 (_1!10918 lt!682379))))))

(assert (=> d!539248 (= (matchR!2271 (regex!3470 (rule!5496 (_1!10918 lt!682379))) lt!682393) lt!682495)))

(declare-fun b!1764961 () Bool)

(declare-fun e!1129425 () Bool)

(assert (=> b!1764961 (= e!1129422 e!1129425)))

(declare-fun res!794490 () Bool)

(assert (=> b!1764961 (=> (not res!794490) (not e!1129425))))

(assert (=> b!1764961 (= res!794490 (not lt!682495))))

(declare-fun b!1764962 () Bool)

(declare-fun res!794488 () Bool)

(declare-fun e!1129426 () Bool)

(assert (=> b!1764962 (=> (not res!794488) (not e!1129426))))

(assert (=> b!1764962 (= res!794488 (not call!110840))))

(declare-fun b!1764963 () Bool)

(assert (=> b!1764963 (= e!1129426 (= (head!4091 lt!682393) (c!287521 (regex!3470 (rule!5496 (_1!10918 lt!682379))))))))

(declare-fun b!1764964 () Bool)

(assert (=> b!1764964 (= e!1129427 (not lt!682495))))

(declare-fun b!1764965 () Bool)

(declare-fun res!794491 () Bool)

(assert (=> b!1764965 (=> res!794491 e!1129422)))

(assert (=> b!1764965 (= res!794491 e!1129426)))

(declare-fun res!794487 () Bool)

(assert (=> b!1764965 (=> (not res!794487) (not e!1129426))))

(assert (=> b!1764965 (= res!794487 lt!682495)))

(declare-fun b!1764966 () Bool)

(assert (=> b!1764966 (= e!1129425 e!1129421)))

(declare-fun res!794486 () Bool)

(assert (=> b!1764966 (=> res!794486 e!1129421)))

(assert (=> b!1764966 (= res!794486 call!110840)))

(declare-fun b!1764967 () Bool)

(assert (=> b!1764967 (= e!1129421 (not (= (head!4091 lt!682393) (c!287521 (regex!3470 (rule!5496 (_1!10918 lt!682379)))))))))

(declare-fun b!1764968 () Bool)

(declare-fun res!794485 () Bool)

(assert (=> b!1764968 (=> (not res!794485) (not e!1129426))))

(assert (=> b!1764968 (= res!794485 (isEmpty!12258 (tail!2640 lt!682393)))))

(declare-fun b!1764969 () Bool)

(assert (=> b!1764969 (= e!1129423 (matchR!2271 (derivativeStep!1235 (regex!3470 (rule!5496 (_1!10918 lt!682379))) (head!4091 lt!682393)) (tail!2640 lt!682393)))))

(assert (= (and d!539248 c!287535) b!1764957))

(assert (= (and d!539248 (not c!287535)) b!1764969))

(assert (= (and d!539248 c!287536) b!1764958))

(assert (= (and d!539248 (not c!287536)) b!1764956))

(assert (= (and b!1764956 c!287537) b!1764964))

(assert (= (and b!1764956 (not c!287537)) b!1764959))

(assert (= (and b!1764959 (not res!794484)) b!1764965))

(assert (= (and b!1764965 res!794487) b!1764962))

(assert (= (and b!1764962 res!794488) b!1764968))

(assert (= (and b!1764968 res!794485) b!1764963))

(assert (= (and b!1764965 (not res!794491)) b!1764961))

(assert (= (and b!1764961 res!794490) b!1764966))

(assert (= (and b!1764966 (not res!794486)) b!1764960))

(assert (= (and b!1764960 (not res!794489)) b!1764967))

(assert (= (or b!1764958 b!1764962 b!1764966) bm!110835))

(declare-fun m!2182165 () Bool)

(assert (=> b!1764969 m!2182165))

(assert (=> b!1764969 m!2182165))

(declare-fun m!2182167 () Bool)

(assert (=> b!1764969 m!2182167))

(declare-fun m!2182169 () Bool)

(assert (=> b!1764969 m!2182169))

(assert (=> b!1764969 m!2182167))

(assert (=> b!1764969 m!2182169))

(declare-fun m!2182171 () Bool)

(assert (=> b!1764969 m!2182171))

(declare-fun m!2182173 () Bool)

(assert (=> bm!110835 m!2182173))

(assert (=> b!1764960 m!2182169))

(assert (=> b!1764960 m!2182169))

(declare-fun m!2182175 () Bool)

(assert (=> b!1764960 m!2182175))

(assert (=> b!1764967 m!2182165))

(assert (=> b!1764968 m!2182169))

(assert (=> b!1764968 m!2182169))

(assert (=> b!1764968 m!2182175))

(assert (=> d!539248 m!2182173))

(declare-fun m!2182177 () Bool)

(assert (=> d!539248 m!2182177))

(assert (=> b!1764963 m!2182165))

(declare-fun m!2182179 () Bool)

(assert (=> b!1764957 m!2182179))

(assert (=> b!1764759 d!539248))

(declare-fun d!539250 () Bool)

(assert (=> d!539250 (= (maxPrefixOneRule!1022 thiss!24550 (rule!5496 (_1!10918 lt!682379)) lt!682376) (Some!3961 (tuple2!19033 (Token!6507 (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) (seqFromList!2439 lt!682393)) (rule!5496 (_1!10918 lt!682379)) (size!15427 lt!682393) lt!682393) (_2!10918 lt!682379))))))

(declare-fun lt!682498 () Unit!33610)

(declare-fun choose!10947 (LexerInterface!3099 List!19492 List!19491 List!19491 List!19491 Rule!6740) Unit!33610)

(assert (=> d!539250 (= lt!682498 (choose!10947 thiss!24550 rules!3447 lt!682393 lt!682376 (_2!10918 lt!682379) (rule!5496 (_1!10918 lt!682379))))))

(assert (=> d!539250 (not (isEmpty!12259 rules!3447))))

(assert (=> d!539250 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!400 thiss!24550 rules!3447 lt!682393 lt!682376 (_2!10918 lt!682379) (rule!5496 (_1!10918 lt!682379))) lt!682498)))

(declare-fun bs!404323 () Bool)

(assert (= bs!404323 d!539250))

(assert (=> bs!404323 m!2181945))

(declare-fun m!2182181 () Bool)

(assert (=> bs!404323 m!2182181))

(assert (=> bs!404323 m!2181913))

(assert (=> bs!404323 m!2181915))

(assert (=> bs!404323 m!2181921))

(assert (=> bs!404323 m!2181915))

(assert (=> bs!404323 m!2181917))

(assert (=> b!1764758 d!539250))

(declare-fun b!1764988 () Bool)

(declare-fun res!794509 () Bool)

(declare-fun e!1129439 () Bool)

(assert (=> b!1764988 (=> (not res!794509) (not e!1129439))))

(declare-fun lt!682512 () Option!3962)

(assert (=> b!1764988 (= res!794509 (= (++!5294 (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682512)))) (_2!10918 (get!5916 lt!682512))) lt!682376))))

(declare-fun b!1764989 () Bool)

(declare-fun e!1129438 () Option!3962)

(declare-datatypes ((tuple2!19036 0))(
  ( (tuple2!19037 (_1!10920 List!19491) (_2!10920 List!19491)) )
))
(declare-fun lt!682513 () tuple2!19036)

(assert (=> b!1764989 (= e!1129438 (Some!3961 (tuple2!19033 (Token!6507 (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) (seqFromList!2439 (_1!10920 lt!682513))) (rule!5496 (_1!10918 lt!682379)) (size!15428 (seqFromList!2439 (_1!10920 lt!682513))) (_1!10920 lt!682513)) (_2!10920 lt!682513))))))

(declare-fun lt!682510 () Unit!33610)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!428 (Regex!4798 List!19491) Unit!33610)

(assert (=> b!1764989 (= lt!682510 (longestMatchIsAcceptedByMatchOrIsEmpty!428 (regex!3470 (rule!5496 (_1!10918 lt!682379))) lt!682376))))

(declare-fun res!794511 () Bool)

(declare-fun findLongestMatchInner!444 (Regex!4798 List!19491 Int List!19491 List!19491 Int) tuple2!19036)

(assert (=> b!1764989 (= res!794511 (isEmpty!12258 (_1!10920 (findLongestMatchInner!444 (regex!3470 (rule!5496 (_1!10918 lt!682379))) Nil!19421 (size!15427 Nil!19421) lt!682376 lt!682376 (size!15427 lt!682376)))))))

(declare-fun e!1129437 () Bool)

(assert (=> b!1764989 (=> res!794511 e!1129437)))

(assert (=> b!1764989 e!1129437))

(declare-fun lt!682509 () Unit!33610)

(assert (=> b!1764989 (= lt!682509 lt!682510)))

(declare-fun lt!682511 () Unit!33610)

(assert (=> b!1764989 (= lt!682511 (lemmaSemiInverse!608 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) (seqFromList!2439 (_1!10920 lt!682513))))))

(declare-fun b!1764990 () Bool)

(declare-fun res!794512 () Bool)

(assert (=> b!1764990 (=> (not res!794512) (not e!1129439))))

(assert (=> b!1764990 (= res!794512 (< (size!15427 (_2!10918 (get!5916 lt!682512))) (size!15427 lt!682376)))))

(declare-fun b!1764991 () Bool)

(declare-fun res!794510 () Bool)

(assert (=> b!1764991 (=> (not res!794510) (not e!1129439))))

(assert (=> b!1764991 (= res!794510 (= (value!108569 (_1!10918 (get!5916 lt!682512))) (apply!5270 (transformation!3470 (rule!5496 (_1!10918 (get!5916 lt!682512)))) (seqFromList!2439 (originalCharacters!4284 (_1!10918 (get!5916 lt!682512)))))))))

(declare-fun b!1764992 () Bool)

(declare-fun res!794507 () Bool)

(assert (=> b!1764992 (=> (not res!794507) (not e!1129439))))

(assert (=> b!1764992 (= res!794507 (= (rule!5496 (_1!10918 (get!5916 lt!682512))) (rule!5496 (_1!10918 lt!682379))))))

(declare-fun d!539252 () Bool)

(declare-fun e!1129436 () Bool)

(assert (=> d!539252 e!1129436))

(declare-fun res!794506 () Bool)

(assert (=> d!539252 (=> res!794506 e!1129436)))

(declare-fun isEmpty!12262 (Option!3962) Bool)

(assert (=> d!539252 (= res!794506 (isEmpty!12262 lt!682512))))

(assert (=> d!539252 (= lt!682512 e!1129438)))

(declare-fun c!287540 () Bool)

(assert (=> d!539252 (= c!287540 (isEmpty!12258 (_1!10920 lt!682513)))))

(declare-fun findLongestMatch!371 (Regex!4798 List!19491) tuple2!19036)

(assert (=> d!539252 (= lt!682513 (findLongestMatch!371 (regex!3470 (rule!5496 (_1!10918 lt!682379))) lt!682376))))

(assert (=> d!539252 (ruleValid!968 thiss!24550 (rule!5496 (_1!10918 lt!682379)))))

(assert (=> d!539252 (= (maxPrefixOneRule!1022 thiss!24550 (rule!5496 (_1!10918 lt!682379)) lt!682376) lt!682512)))

(declare-fun b!1764993 () Bool)

(assert (=> b!1764993 (= e!1129437 (matchR!2271 (regex!3470 (rule!5496 (_1!10918 lt!682379))) (_1!10920 (findLongestMatchInner!444 (regex!3470 (rule!5496 (_1!10918 lt!682379))) Nil!19421 (size!15427 Nil!19421) lt!682376 lt!682376 (size!15427 lt!682376)))))))

(declare-fun b!1764994 () Bool)

(assert (=> b!1764994 (= e!1129439 (= (size!15426 (_1!10918 (get!5916 lt!682512))) (size!15427 (originalCharacters!4284 (_1!10918 (get!5916 lt!682512))))))))

(declare-fun b!1764995 () Bool)

(assert (=> b!1764995 (= e!1129438 None!3961)))

(declare-fun b!1764996 () Bool)

(assert (=> b!1764996 (= e!1129436 e!1129439)))

(declare-fun res!794508 () Bool)

(assert (=> b!1764996 (=> (not res!794508) (not e!1129439))))

(assert (=> b!1764996 (= res!794508 (matchR!2271 (regex!3470 (rule!5496 (_1!10918 lt!682379))) (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682512))))))))

(assert (= (and d!539252 c!287540) b!1764995))

(assert (= (and d!539252 (not c!287540)) b!1764989))

(assert (= (and b!1764989 (not res!794511)) b!1764993))

(assert (= (and d!539252 (not res!794506)) b!1764996))

(assert (= (and b!1764996 res!794508) b!1764988))

(assert (= (and b!1764988 res!794509) b!1764990))

(assert (= (and b!1764990 res!794512) b!1764992))

(assert (= (and b!1764992 res!794507) b!1764991))

(assert (= (and b!1764991 res!794510) b!1764994))

(declare-fun m!2182183 () Bool)

(assert (=> b!1764992 m!2182183))

(declare-fun m!2182185 () Bool)

(assert (=> b!1764989 m!2182185))

(declare-fun m!2182187 () Bool)

(assert (=> b!1764989 m!2182187))

(declare-fun m!2182189 () Bool)

(assert (=> b!1764989 m!2182189))

(declare-fun m!2182191 () Bool)

(assert (=> b!1764989 m!2182191))

(assert (=> b!1764989 m!2182185))

(assert (=> b!1764989 m!2182187))

(declare-fun m!2182193 () Bool)

(assert (=> b!1764989 m!2182193))

(assert (=> b!1764989 m!2182189))

(declare-fun m!2182195 () Bool)

(assert (=> b!1764989 m!2182195))

(assert (=> b!1764989 m!2182189))

(declare-fun m!2182197 () Bool)

(assert (=> b!1764989 m!2182197))

(declare-fun m!2182199 () Bool)

(assert (=> b!1764989 m!2182199))

(assert (=> b!1764989 m!2182189))

(declare-fun m!2182201 () Bool)

(assert (=> b!1764989 m!2182201))

(assert (=> b!1764991 m!2182183))

(declare-fun m!2182203 () Bool)

(assert (=> b!1764991 m!2182203))

(assert (=> b!1764991 m!2182203))

(declare-fun m!2182205 () Bool)

(assert (=> b!1764991 m!2182205))

(assert (=> b!1764993 m!2182185))

(assert (=> b!1764993 m!2182187))

(assert (=> b!1764993 m!2182185))

(assert (=> b!1764993 m!2182187))

(assert (=> b!1764993 m!2182193))

(declare-fun m!2182207 () Bool)

(assert (=> b!1764993 m!2182207))

(declare-fun m!2182209 () Bool)

(assert (=> d!539252 m!2182209))

(declare-fun m!2182211 () Bool)

(assert (=> d!539252 m!2182211))

(declare-fun m!2182213 () Bool)

(assert (=> d!539252 m!2182213))

(declare-fun m!2182215 () Bool)

(assert (=> d!539252 m!2182215))

(assert (=> b!1764990 m!2182183))

(declare-fun m!2182217 () Bool)

(assert (=> b!1764990 m!2182217))

(assert (=> b!1764990 m!2182187))

(assert (=> b!1764994 m!2182183))

(declare-fun m!2182219 () Bool)

(assert (=> b!1764994 m!2182219))

(assert (=> b!1764996 m!2182183))

(declare-fun m!2182221 () Bool)

(assert (=> b!1764996 m!2182221))

(assert (=> b!1764996 m!2182221))

(declare-fun m!2182223 () Bool)

(assert (=> b!1764996 m!2182223))

(assert (=> b!1764996 m!2182223))

(declare-fun m!2182225 () Bool)

(assert (=> b!1764996 m!2182225))

(assert (=> b!1764988 m!2182183))

(assert (=> b!1764988 m!2182221))

(assert (=> b!1764988 m!2182221))

(assert (=> b!1764988 m!2182223))

(assert (=> b!1764988 m!2182223))

(declare-fun m!2182227 () Bool)

(assert (=> b!1764988 m!2182227))

(assert (=> b!1764758 d!539252))

(declare-fun d!539254 () Bool)

(declare-fun fromListB!1115 (List!19491) BalanceConc!12864)

(assert (=> d!539254 (= (seqFromList!2439 lt!682393) (fromListB!1115 lt!682393))))

(declare-fun bs!404324 () Bool)

(assert (= bs!404324 d!539254))

(declare-fun m!2182229 () Bool)

(assert (=> bs!404324 m!2182229))

(assert (=> b!1764758 d!539254))

(declare-fun d!539256 () Bool)

(declare-fun lt!682516 () List!19491)

(assert (=> d!539256 (= (++!5294 lt!682393 lt!682516) lt!682376)))

(declare-fun e!1129442 () List!19491)

(assert (=> d!539256 (= lt!682516 e!1129442)))

(declare-fun c!287543 () Bool)

(assert (=> d!539256 (= c!287543 (is-Cons!19421 lt!682393))))

(assert (=> d!539256 (>= (size!15427 lt!682376) (size!15427 lt!682393))))

(assert (=> d!539256 (= (getSuffix!877 lt!682376 lt!682393) lt!682516)))

(declare-fun b!1765001 () Bool)

(assert (=> b!1765001 (= e!1129442 (getSuffix!877 (tail!2640 lt!682376) (t!164590 lt!682393)))))

(declare-fun b!1765002 () Bool)

(assert (=> b!1765002 (= e!1129442 lt!682376)))

(assert (= (and d!539256 c!287543) b!1765001))

(assert (= (and d!539256 (not c!287543)) b!1765002))

(declare-fun m!2182231 () Bool)

(assert (=> d!539256 m!2182231))

(assert (=> d!539256 m!2182187))

(assert (=> d!539256 m!2181917))

(declare-fun m!2182233 () Bool)

(assert (=> b!1765001 m!2182233))

(assert (=> b!1765001 m!2182233))

(declare-fun m!2182235 () Bool)

(assert (=> b!1765001 m!2182235))

(assert (=> b!1764758 d!539256))

(declare-fun d!539258 () Bool)

(assert (=> d!539258 (= (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) (seqFromList!2439 lt!682393)) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (seqFromList!2439 lt!682393)))))

(declare-fun b_lambda!57275 () Bool)

(assert (=> (not b_lambda!57275) (not d!539258)))

(declare-fun tb!106533 () Bool)

(declare-fun t!164614 () Bool)

(assert (=> (and b!1764749 (= (toValue!4993 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164614) tb!106533))

(declare-fun result!128156 () Bool)

(assert (=> tb!106533 (= result!128156 (inv!21 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (seqFromList!2439 lt!682393))))))

(declare-fun m!2182237 () Bool)

(assert (=> tb!106533 m!2182237))

(assert (=> d!539258 t!164614))

(declare-fun b_and!133595 () Bool)

(assert (= b_and!133553 (and (=> t!164614 result!128156) b_and!133595)))

(declare-fun t!164616 () Bool)

(declare-fun tb!106535 () Bool)

(assert (=> (and b!1764754 (= (toValue!4993 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164616) tb!106535))

(declare-fun result!128158 () Bool)

(assert (= result!128158 result!128156))

(assert (=> d!539258 t!164616))

(declare-fun b_and!133597 () Bool)

(assert (= b_and!133555 (and (=> t!164616 result!128158) b_and!133597)))

(declare-fun t!164618 () Bool)

(declare-fun tb!106537 () Bool)

(assert (=> (and b!1764773 (= (toValue!4993 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164618) tb!106537))

(declare-fun result!128160 () Bool)

(assert (= result!128160 result!128156))

(assert (=> d!539258 t!164618))

(declare-fun b_and!133599 () Bool)

(assert (= b_and!133557 (and (=> t!164618 result!128160) b_and!133599)))

(assert (=> d!539258 m!2181915))

(declare-fun m!2182239 () Bool)

(assert (=> d!539258 m!2182239))

(assert (=> b!1764758 d!539258))

(declare-fun d!539260 () Bool)

(declare-fun lt!682519 () Int)

(assert (=> d!539260 (>= lt!682519 0)))

(declare-fun e!1129446 () Int)

(assert (=> d!539260 (= lt!682519 e!1129446)))

(declare-fun c!287546 () Bool)

(assert (=> d!539260 (= c!287546 (is-Nil!19421 lt!682393))))

(assert (=> d!539260 (= (size!15427 lt!682393) lt!682519)))

(declare-fun b!1765007 () Bool)

(assert (=> b!1765007 (= e!1129446 0)))

(declare-fun b!1765008 () Bool)

(assert (=> b!1765008 (= e!1129446 (+ 1 (size!15427 (t!164590 lt!682393))))))

(assert (= (and d!539260 c!287546) b!1765007))

(assert (= (and d!539260 (not c!287546)) b!1765008))

(declare-fun m!2182241 () Bool)

(assert (=> b!1765008 m!2182241))

(assert (=> b!1764758 d!539260))

(declare-fun d!539262 () Bool)

(assert (=> d!539262 (= (_2!10918 lt!682379) lt!682371)))

(declare-fun lt!682522 () Unit!33610)

(declare-fun choose!10948 (List!19491 List!19491 List!19491 List!19491 List!19491) Unit!33610)

(assert (=> d!539262 (= lt!682522 (choose!10948 lt!682393 (_2!10918 lt!682379) lt!682393 lt!682371 lt!682376))))

(assert (=> d!539262 (isPrefix!1710 lt!682393 lt!682376)))

(assert (=> d!539262 (= (lemmaSamePrefixThenSameSuffix!821 lt!682393 (_2!10918 lt!682379) lt!682393 lt!682371 lt!682376) lt!682522)))

(declare-fun bs!404325 () Bool)

(assert (= bs!404325 d!539262))

(declare-fun m!2182243 () Bool)

(assert (=> bs!404325 m!2182243))

(assert (=> bs!404325 m!2181977))

(assert (=> b!1764758 d!539262))

(declare-fun d!539264 () Bool)

(assert (=> d!539264 (= (inv!25224 (tag!3842 (h!24823 rules!3447))) (= (mod (str.len (value!108568 (tag!3842 (h!24823 rules!3447)))) 2) 0))))

(assert (=> b!1764779 d!539264))

(declare-fun d!539266 () Bool)

(declare-fun res!794513 () Bool)

(declare-fun e!1129447 () Bool)

(assert (=> d!539266 (=> (not res!794513) (not e!1129447))))

(assert (=> d!539266 (= res!794513 (semiInverseModEq!1381 (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (h!24823 rules!3447)))))))

(assert (=> d!539266 (= (inv!25227 (transformation!3470 (h!24823 rules!3447))) e!1129447)))

(declare-fun b!1765009 () Bool)

(assert (=> b!1765009 (= e!1129447 (equivClasses!1322 (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (h!24823 rules!3447)))))))

(assert (= (and d!539266 res!794513) b!1765009))

(declare-fun m!2182245 () Bool)

(assert (=> d!539266 m!2182245))

(declare-fun m!2182247 () Bool)

(assert (=> b!1765009 m!2182247))

(assert (=> b!1764779 d!539266))

(declare-fun d!539268 () Bool)

(declare-fun isBalanced!2019 (Conc!6460) Bool)

(assert (=> d!539268 (= (inv!25230 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))) (isBalanced!2019 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))))

(declare-fun bs!404326 () Bool)

(assert (= bs!404326 d!539268))

(declare-fun m!2182249 () Bool)

(assert (=> bs!404326 m!2182249))

(assert (=> tb!106503 d!539268))

(declare-fun d!539270 () Bool)

(assert (=> d!539270 (= (isEmpty!12258 (_2!10918 lt!682396)) (is-Nil!19421 (_2!10918 lt!682396)))))

(assert (=> b!1764757 d!539270))

(declare-fun d!539272 () Bool)

(assert (=> d!539272 (= (get!5916 lt!682384) (v!25428 lt!682384))))

(assert (=> b!1764778 d!539272))

(declare-fun d!539274 () Bool)

(declare-fun lt!682525 () Bool)

(declare-fun content!2809 (List!19492) (Set Rule!6740))

(assert (=> d!539274 (= lt!682525 (set.member (rule!5496 (_1!10918 lt!682379)) (content!2809 rules!3447)))))

(declare-fun e!1129453 () Bool)

(assert (=> d!539274 (= lt!682525 e!1129453)))

(declare-fun res!794518 () Bool)

(assert (=> d!539274 (=> (not res!794518) (not e!1129453))))

(assert (=> d!539274 (= res!794518 (is-Cons!19422 rules!3447))))

(assert (=> d!539274 (= (contains!3500 rules!3447 (rule!5496 (_1!10918 lt!682379))) lt!682525)))

(declare-fun b!1765014 () Bool)

(declare-fun e!1129452 () Bool)

(assert (=> b!1765014 (= e!1129453 e!1129452)))

(declare-fun res!794519 () Bool)

(assert (=> b!1765014 (=> res!794519 e!1129452)))

(assert (=> b!1765014 (= res!794519 (= (h!24823 rules!3447) (rule!5496 (_1!10918 lt!682379))))))

(declare-fun b!1765015 () Bool)

(assert (=> b!1765015 (= e!1129452 (contains!3500 (t!164591 rules!3447) (rule!5496 (_1!10918 lt!682379))))))

(assert (= (and d!539274 res!794518) b!1765014))

(assert (= (and b!1765014 (not res!794519)) b!1765015))

(declare-fun m!2182251 () Bool)

(assert (=> d!539274 m!2182251))

(declare-fun m!2182253 () Bool)

(assert (=> d!539274 m!2182253))

(declare-fun m!2182255 () Bool)

(assert (=> b!1765015 m!2182255))

(assert (=> b!1764777 d!539274))

(declare-fun d!539276 () Bool)

(assert (=> d!539276 (= (inv!25230 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))) (isBalanced!2019 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))))

(declare-fun bs!404327 () Bool)

(assert (= bs!404327 d!539276))

(declare-fun m!2182257 () Bool)

(assert (=> bs!404327 m!2182257))

(assert (=> tb!106497 d!539276))

(declare-fun d!539278 () Bool)

(assert (=> d!539278 (= (isEmpty!12258 suffix!1421) (is-Nil!19421 suffix!1421))))

(assert (=> b!1764755 d!539278))

(declare-fun d!539280 () Bool)

(assert (=> d!539280 (= (isDefined!3306 lt!682384) (not (isEmpty!12262 lt!682384)))))

(declare-fun bs!404328 () Bool)

(assert (= bs!404328 d!539280))

(declare-fun m!2182259 () Bool)

(assert (=> bs!404328 m!2182259))

(assert (=> b!1764776 d!539280))

(declare-fun b!1765044 () Bool)

(declare-fun res!794539 () Bool)

(declare-fun e!1129468 () Bool)

(assert (=> b!1765044 (=> (not res!794539) (not e!1129468))))

(declare-fun lt!682540 () Option!3962)

(assert (=> b!1765044 (= res!794539 (= (value!108569 (_1!10918 (get!5916 lt!682540))) (apply!5270 (transformation!3470 (rule!5496 (_1!10918 (get!5916 lt!682540)))) (seqFromList!2439 (originalCharacters!4284 (_1!10918 (get!5916 lt!682540)))))))))

(declare-fun b!1765045 () Bool)

(declare-fun e!1129466 () Option!3962)

(declare-fun lt!682539 () Option!3962)

(declare-fun lt!682537 () Option!3962)

(assert (=> b!1765045 (= e!1129466 (ite (and (is-None!3961 lt!682539) (is-None!3961 lt!682537)) None!3961 (ite (is-None!3961 lt!682537) lt!682539 (ite (is-None!3961 lt!682539) lt!682537 (ite (>= (size!15426 (_1!10918 (v!25428 lt!682539))) (size!15426 (_1!10918 (v!25428 lt!682537)))) lt!682539 lt!682537)))))))

(declare-fun call!110843 () Option!3962)

(assert (=> b!1765045 (= lt!682539 call!110843)))

(assert (=> b!1765045 (= lt!682537 (maxPrefix!1653 thiss!24550 (t!164591 rules!3447) lt!682389))))

(declare-fun b!1765046 () Bool)

(declare-fun res!794542 () Bool)

(assert (=> b!1765046 (=> (not res!794542) (not e!1129468))))

(assert (=> b!1765046 (= res!794542 (= (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682540)))) (originalCharacters!4284 (_1!10918 (get!5916 lt!682540)))))))

(declare-fun b!1765047 () Bool)

(declare-fun res!794540 () Bool)

(assert (=> b!1765047 (=> (not res!794540) (not e!1129468))))

(assert (=> b!1765047 (= res!794540 (< (size!15427 (_2!10918 (get!5916 lt!682540))) (size!15427 lt!682389)))))

(declare-fun b!1765048 () Bool)

(assert (=> b!1765048 (= e!1129466 call!110843)))

(declare-fun d!539282 () Bool)

(declare-fun e!1129467 () Bool)

(assert (=> d!539282 e!1129467))

(declare-fun res!794537 () Bool)

(assert (=> d!539282 (=> res!794537 e!1129467)))

(assert (=> d!539282 (= res!794537 (isEmpty!12262 lt!682540))))

(assert (=> d!539282 (= lt!682540 e!1129466)))

(declare-fun c!287553 () Bool)

(assert (=> d!539282 (= c!287553 (and (is-Cons!19422 rules!3447) (is-Nil!19422 (t!164591 rules!3447))))))

(declare-fun lt!682536 () Unit!33610)

(declare-fun lt!682538 () Unit!33610)

(assert (=> d!539282 (= lt!682536 lt!682538)))

(assert (=> d!539282 (isPrefix!1710 lt!682389 lt!682389)))

(declare-fun lemmaIsPrefixRefl!1133 (List!19491 List!19491) Unit!33610)

(assert (=> d!539282 (= lt!682538 (lemmaIsPrefixRefl!1133 lt!682389 lt!682389))))

(declare-fun rulesValidInductive!1171 (LexerInterface!3099 List!19492) Bool)

(assert (=> d!539282 (rulesValidInductive!1171 thiss!24550 rules!3447)))

(assert (=> d!539282 (= (maxPrefix!1653 thiss!24550 rules!3447 lt!682389) lt!682540)))

(declare-fun b!1765049 () Bool)

(declare-fun res!794541 () Bool)

(assert (=> b!1765049 (=> (not res!794541) (not e!1129468))))

(assert (=> b!1765049 (= res!794541 (= (++!5294 (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682540)))) (_2!10918 (get!5916 lt!682540))) lt!682389))))

(declare-fun b!1765050 () Bool)

(declare-fun res!794538 () Bool)

(assert (=> b!1765050 (=> (not res!794538) (not e!1129468))))

(assert (=> b!1765050 (= res!794538 (matchR!2271 (regex!3470 (rule!5496 (_1!10918 (get!5916 lt!682540)))) (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682540))))))))

(declare-fun bm!110838 () Bool)

(assert (=> bm!110838 (= call!110843 (maxPrefixOneRule!1022 thiss!24550 (h!24823 rules!3447) lt!682389))))

(declare-fun b!1765051 () Bool)

(assert (=> b!1765051 (= e!1129468 (contains!3500 rules!3447 (rule!5496 (_1!10918 (get!5916 lt!682540)))))))

(declare-fun b!1765052 () Bool)

(assert (=> b!1765052 (= e!1129467 e!1129468)))

(declare-fun res!794536 () Bool)

(assert (=> b!1765052 (=> (not res!794536) (not e!1129468))))

(assert (=> b!1765052 (= res!794536 (isDefined!3306 lt!682540))))

(assert (= (and d!539282 c!287553) b!1765048))

(assert (= (and d!539282 (not c!287553)) b!1765045))

(assert (= (or b!1765048 b!1765045) bm!110838))

(assert (= (and d!539282 (not res!794537)) b!1765052))

(assert (= (and b!1765052 res!794536) b!1765046))

(assert (= (and b!1765046 res!794542) b!1765047))

(assert (= (and b!1765047 res!794540) b!1765049))

(assert (= (and b!1765049 res!794541) b!1765044))

(assert (= (and b!1765044 res!794539) b!1765050))

(assert (= (and b!1765050 res!794538) b!1765051))

(declare-fun m!2182261 () Bool)

(assert (=> d!539282 m!2182261))

(declare-fun m!2182263 () Bool)

(assert (=> d!539282 m!2182263))

(declare-fun m!2182265 () Bool)

(assert (=> d!539282 m!2182265))

(declare-fun m!2182267 () Bool)

(assert (=> d!539282 m!2182267))

(declare-fun m!2182269 () Bool)

(assert (=> b!1765050 m!2182269))

(declare-fun m!2182271 () Bool)

(assert (=> b!1765050 m!2182271))

(assert (=> b!1765050 m!2182271))

(declare-fun m!2182273 () Bool)

(assert (=> b!1765050 m!2182273))

(assert (=> b!1765050 m!2182273))

(declare-fun m!2182275 () Bool)

(assert (=> b!1765050 m!2182275))

(assert (=> b!1765051 m!2182269))

(declare-fun m!2182277 () Bool)

(assert (=> b!1765051 m!2182277))

(assert (=> b!1765049 m!2182269))

(assert (=> b!1765049 m!2182271))

(assert (=> b!1765049 m!2182271))

(assert (=> b!1765049 m!2182273))

(assert (=> b!1765049 m!2182273))

(declare-fun m!2182279 () Bool)

(assert (=> b!1765049 m!2182279))

(assert (=> b!1765046 m!2182269))

(assert (=> b!1765046 m!2182271))

(assert (=> b!1765046 m!2182271))

(assert (=> b!1765046 m!2182273))

(assert (=> b!1765044 m!2182269))

(declare-fun m!2182281 () Bool)

(assert (=> b!1765044 m!2182281))

(assert (=> b!1765044 m!2182281))

(declare-fun m!2182283 () Bool)

(assert (=> b!1765044 m!2182283))

(declare-fun m!2182285 () Bool)

(assert (=> b!1765045 m!2182285))

(declare-fun m!2182287 () Bool)

(assert (=> bm!110838 m!2182287))

(assert (=> b!1765047 m!2182269))

(declare-fun m!2182289 () Bool)

(assert (=> b!1765047 m!2182289))

(declare-fun m!2182291 () Bool)

(assert (=> b!1765047 m!2182291))

(declare-fun m!2182293 () Bool)

(assert (=> b!1765052 m!2182293))

(assert (=> b!1764776 d!539282))

(declare-fun d!539286 () Bool)

(assert (=> d!539286 (= (list!7884 lt!682391) (list!7886 (c!287522 lt!682391)))))

(declare-fun bs!404329 () Bool)

(assert (= bs!404329 d!539286))

(declare-fun m!2182295 () Bool)

(assert (=> bs!404329 m!2182295))

(assert (=> b!1764776 d!539286))

(declare-fun d!539288 () Bool)

(declare-fun lt!682541 () BalanceConc!12864)

(assert (=> d!539288 (= (list!7884 lt!682541) (originalCharacters!4284 token!523))))

(assert (=> d!539288 (= lt!682541 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (value!108569 token!523)))))

(assert (=> d!539288 (= (charsOf!2119 token!523) lt!682541)))

(declare-fun b_lambda!57277 () Bool)

(assert (=> (not b_lambda!57277) (not d!539288)))

(declare-fun t!164620 () Bool)

(declare-fun tb!106539 () Bool)

(assert (=> (and b!1764749 (= (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toChars!4852 (transformation!3470 (rule!5496 token!523)))) t!164620) tb!106539))

(declare-fun b!1765053 () Bool)

(declare-fun e!1129469 () Bool)

(declare-fun tp!501019 () Bool)

(assert (=> b!1765053 (= e!1129469 (and (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (value!108569 token!523)))) tp!501019))))

(declare-fun result!128162 () Bool)

(assert (=> tb!106539 (= result!128162 (and (inv!25230 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (value!108569 token!523))) e!1129469))))

(assert (= tb!106539 b!1765053))

(declare-fun m!2182297 () Bool)

(assert (=> b!1765053 m!2182297))

(declare-fun m!2182299 () Bool)

(assert (=> tb!106539 m!2182299))

(assert (=> d!539288 t!164620))

(declare-fun b_and!133601 () Bool)

(assert (= b_and!133589 (and (=> t!164620 result!128162) b_and!133601)))

(declare-fun t!164622 () Bool)

(declare-fun tb!106541 () Bool)

(assert (=> (and b!1764754 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 token!523)))) t!164622) tb!106541))

(declare-fun result!128164 () Bool)

(assert (= result!128164 result!128162))

(assert (=> d!539288 t!164622))

(declare-fun b_and!133603 () Bool)

(assert (= b_and!133591 (and (=> t!164622 result!128164) b_and!133603)))

(declare-fun tb!106543 () Bool)

(declare-fun t!164624 () Bool)

(assert (=> (and b!1764773 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 token!523)))) t!164624) tb!106543))

(declare-fun result!128166 () Bool)

(assert (= result!128166 result!128162))

(assert (=> d!539288 t!164624))

(declare-fun b_and!133605 () Bool)

(assert (= b_and!133593 (and (=> t!164624 result!128166) b_and!133605)))

(declare-fun m!2182301 () Bool)

(assert (=> d!539288 m!2182301))

(declare-fun m!2182303 () Bool)

(assert (=> d!539288 m!2182303))

(assert (=> b!1764776 d!539288))

(declare-fun d!539290 () Bool)

(assert (=> d!539290 (= (list!7884 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))) (list!7886 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))))

(declare-fun bs!404330 () Bool)

(assert (= bs!404330 d!539290))

(declare-fun m!2182305 () Bool)

(assert (=> bs!404330 m!2182305))

(assert (=> b!1764775 d!539290))

(declare-fun bs!404331 () Bool)

(declare-fun d!539292 () Bool)

(assert (= bs!404331 (and d!539292 b!1764767)))

(declare-fun lambda!70269 () Int)

(assert (=> bs!404331 (= lambda!70269 lambda!70263)))

(declare-fun b!1765067 () Bool)

(declare-fun e!1129479 () Bool)

(assert (=> b!1765067 (= e!1129479 true)))

(assert (=> d!539292 e!1129479))

(assert (= d!539292 b!1765067))

(assert (=> b!1765067 (< (dynLambda!9376 order!12337 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9377 order!12339 lambda!70269))))

(assert (=> b!1765067 (< (dynLambda!9378 order!12341 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9377 order!12339 lambda!70269))))

(assert (=> d!539292 (= (list!7884 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))) (list!7884 lt!682397))))

(declare-fun lt!682546 () Unit!33610)

(declare-fun ForallOf!319 (Int BalanceConc!12864) Unit!33610)

(assert (=> d!539292 (= lt!682546 (ForallOf!319 lambda!70269 lt!682397))))

(assert (=> d!539292 (= (lemmaSemiInverse!608 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397) lt!682546)))

(declare-fun b_lambda!57279 () Bool)

(assert (=> (not b_lambda!57279) (not d!539292)))

(assert (=> d!539292 t!164578))

(declare-fun b_and!133607 () Bool)

(assert (= b_and!133601 (and (=> t!164578 result!128120) b_and!133607)))

(assert (=> d!539292 t!164580))

(declare-fun b_and!133609 () Bool)

(assert (= b_and!133603 (and (=> t!164580 result!128122) b_and!133609)))

(assert (=> d!539292 t!164582))

(declare-fun b_and!133611 () Bool)

(assert (= b_and!133605 (and (=> t!164582 result!128124) b_and!133611)))

(declare-fun b_lambda!57281 () Bool)

(assert (=> (not b_lambda!57281) (not d!539292)))

(assert (=> d!539292 t!164584))

(declare-fun b_and!133613 () Bool)

(assert (= b_and!133595 (and (=> t!164584 result!128126) b_and!133613)))

(assert (=> d!539292 t!164586))

(declare-fun b_and!133615 () Bool)

(assert (= b_and!133597 (and (=> t!164586 result!128130) b_and!133615)))

(assert (=> d!539292 t!164588))

(declare-fun b_and!133617 () Bool)

(assert (= b_and!133599 (and (=> t!164588 result!128132) b_and!133617)))

(assert (=> d!539292 m!2181905))

(assert (=> d!539292 m!2181907))

(declare-fun m!2182317 () Bool)

(assert (=> d!539292 m!2182317))

(assert (=> d!539292 m!2181903))

(assert (=> d!539292 m!2181905))

(assert (=> d!539292 m!2181903))

(assert (=> d!539292 m!2181987))

(assert (=> b!1764775 d!539292))

(declare-fun d!539298 () Bool)

(assert (=> d!539298 (= (list!7884 lt!682397) (list!7886 (c!287522 lt!682397)))))

(declare-fun bs!404332 () Bool)

(assert (= bs!404332 d!539298))

(declare-fun m!2182321 () Bool)

(assert (=> bs!404332 m!2182321))

(assert (=> b!1764774 d!539298))

(declare-fun d!539300 () Bool)

(declare-fun e!1129491 () Bool)

(assert (=> d!539300 e!1129491))

(declare-fun res!794556 () Bool)

(assert (=> d!539300 (=> (not res!794556) (not e!1129491))))

(declare-fun lt!682550 () List!19491)

(declare-fun content!2810 (List!19491) (Set C!9770))

(assert (=> d!539300 (= res!794556 (= (content!2810 lt!682550) (set.union (content!2810 lt!682389) (content!2810 suffix!1421))))))

(declare-fun e!1129490 () List!19491)

(assert (=> d!539300 (= lt!682550 e!1129490)))

(declare-fun c!287561 () Bool)

(assert (=> d!539300 (= c!287561 (is-Nil!19421 lt!682389))))

(assert (=> d!539300 (= (++!5294 lt!682389 suffix!1421) lt!682550)))

(declare-fun b!1765087 () Bool)

(assert (=> b!1765087 (= e!1129491 (or (not (= suffix!1421 Nil!19421)) (= lt!682550 lt!682389)))))

(declare-fun b!1765084 () Bool)

(assert (=> b!1765084 (= e!1129490 suffix!1421)))

(declare-fun b!1765085 () Bool)

(assert (=> b!1765085 (= e!1129490 (Cons!19421 (h!24822 lt!682389) (++!5294 (t!164590 lt!682389) suffix!1421)))))

(declare-fun b!1765086 () Bool)

(declare-fun res!794557 () Bool)

(assert (=> b!1765086 (=> (not res!794557) (not e!1129491))))

(assert (=> b!1765086 (= res!794557 (= (size!15427 lt!682550) (+ (size!15427 lt!682389) (size!15427 suffix!1421))))))

(assert (= (and d!539300 c!287561) b!1765084))

(assert (= (and d!539300 (not c!287561)) b!1765085))

(assert (= (and d!539300 res!794556) b!1765086))

(assert (= (and b!1765086 res!794557) b!1765087))

(declare-fun m!2182323 () Bool)

(assert (=> d!539300 m!2182323))

(declare-fun m!2182325 () Bool)

(assert (=> d!539300 m!2182325))

(declare-fun m!2182327 () Bool)

(assert (=> d!539300 m!2182327))

(declare-fun m!2182329 () Bool)

(assert (=> b!1765085 m!2182329))

(declare-fun m!2182331 () Bool)

(assert (=> b!1765086 m!2182331))

(assert (=> b!1765086 m!2182291))

(declare-fun m!2182333 () Bool)

(assert (=> b!1765086 m!2182333))

(assert (=> b!1764774 d!539300))

(declare-fun d!539302 () Bool)

(assert (=> d!539302 (isPrefix!1710 lt!682389 (++!5294 lt!682389 suffix!1421))))

(declare-fun lt!682553 () Unit!33610)

(declare-fun choose!10949 (List!19491 List!19491) Unit!33610)

(assert (=> d!539302 (= lt!682553 (choose!10949 lt!682389 suffix!1421))))

(assert (=> d!539302 (= (lemmaConcatTwoListThenFirstIsPrefix!1219 lt!682389 suffix!1421) lt!682553)))

(declare-fun bs!404333 () Bool)

(assert (= bs!404333 d!539302))

(assert (=> bs!404333 m!2181967))

(assert (=> bs!404333 m!2181967))

(declare-fun m!2182339 () Bool)

(assert (=> bs!404333 m!2182339))

(declare-fun m!2182341 () Bool)

(assert (=> bs!404333 m!2182341))

(assert (=> b!1764774 d!539302))

(declare-fun b!1765117 () Bool)

(declare-fun lt!682562 () Unit!33610)

(declare-fun lt!682563 () Unit!33610)

(assert (=> b!1765117 (= lt!682562 lt!682563)))

(assert (=> b!1765117 (rulesInvariant!2768 thiss!24550 (t!164591 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!195 (LexerInterface!3099 Rule!6740 List!19492) Unit!33610)

(assert (=> b!1765117 (= lt!682563 (lemmaInvariantOnRulesThenOnTail!195 thiss!24550 (h!24823 rules!3447) (t!164591 rules!3447)))))

(declare-fun e!1129508 () Option!3963)

(assert (=> b!1765117 (= e!1129508 (getRuleFromTag!518 thiss!24550 (t!164591 rules!3447) (tag!3842 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun d!539306 () Bool)

(declare-fun e!1129512 () Bool)

(assert (=> d!539306 e!1129512))

(declare-fun res!794563 () Bool)

(assert (=> d!539306 (=> res!794563 e!1129512)))

(declare-fun lt!682564 () Option!3963)

(declare-fun isEmpty!12263 (Option!3963) Bool)

(assert (=> d!539306 (= res!794563 (isEmpty!12263 lt!682564))))

(declare-fun e!1129513 () Option!3963)

(assert (=> d!539306 (= lt!682564 e!1129513)))

(declare-fun c!287574 () Bool)

(assert (=> d!539306 (= c!287574 (and (is-Cons!19422 rules!3447) (= (tag!3842 (h!24823 rules!3447)) (tag!3842 (rule!5496 (_1!10918 lt!682379))))))))

(assert (=> d!539306 (rulesInvariant!2768 thiss!24550 rules!3447)))

(assert (=> d!539306 (= (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 (_1!10918 lt!682379)))) lt!682564)))

(declare-fun b!1765118 () Bool)

(assert (=> b!1765118 (= e!1129513 (Some!3962 (h!24823 rules!3447)))))

(declare-fun b!1765119 () Bool)

(assert (=> b!1765119 (= e!1129508 None!3962)))

(declare-fun b!1765120 () Bool)

(assert (=> b!1765120 (= e!1129513 e!1129508)))

(declare-fun c!287573 () Bool)

(assert (=> b!1765120 (= c!287573 (and (is-Cons!19422 rules!3447) (not (= (tag!3842 (h!24823 rules!3447)) (tag!3842 (rule!5496 (_1!10918 lt!682379)))))))))

(declare-fun b!1765121 () Bool)

(declare-fun e!1129509 () Bool)

(assert (=> b!1765121 (= e!1129509 (= (tag!3842 (get!5915 lt!682564)) (tag!3842 (rule!5496 (_1!10918 lt!682379)))))))

(declare-fun b!1765122 () Bool)

(assert (=> b!1765122 (= e!1129512 e!1129509)))

(declare-fun res!794566 () Bool)

(assert (=> b!1765122 (=> (not res!794566) (not e!1129509))))

(assert (=> b!1765122 (= res!794566 (contains!3500 rules!3447 (get!5915 lt!682564)))))

(assert (= (and d!539306 c!287574) b!1765118))

(assert (= (and d!539306 (not c!287574)) b!1765120))

(assert (= (and b!1765120 c!287573) b!1765117))

(assert (= (and b!1765120 (not c!287573)) b!1765119))

(assert (= (and d!539306 (not res!794563)) b!1765122))

(assert (= (and b!1765122 res!794566) b!1765121))

(declare-fun m!2182343 () Bool)

(assert (=> b!1765117 m!2182343))

(declare-fun m!2182345 () Bool)

(assert (=> b!1765117 m!2182345))

(declare-fun m!2182347 () Bool)

(assert (=> b!1765117 m!2182347))

(declare-fun m!2182349 () Bool)

(assert (=> d!539306 m!2182349))

(assert (=> d!539306 m!2181865))

(declare-fun m!2182351 () Bool)

(assert (=> b!1765121 m!2182351))

(assert (=> b!1765122 m!2182351))

(assert (=> b!1765122 m!2182351))

(declare-fun m!2182353 () Bool)

(assert (=> b!1765122 m!2182353))

(assert (=> b!1764774 d!539306))

(declare-fun d!539308 () Bool)

(assert (=> d!539308 (= (isDefined!3305 lt!682380) (not (isEmpty!12263 lt!682380)))))

(declare-fun bs!404334 () Bool)

(assert (= bs!404334 d!539308))

(declare-fun m!2182355 () Bool)

(assert (=> bs!404334 m!2182355))

(assert (=> b!1764774 d!539308))

(declare-fun b!1765137 () Bool)

(declare-fun res!794584 () Bool)

(declare-fun e!1129522 () Bool)

(assert (=> b!1765137 (=> (not res!794584) (not e!1129522))))

(declare-fun lt!682569 () Option!3962)

(assert (=> b!1765137 (= res!794584 (= (value!108569 (_1!10918 (get!5916 lt!682569))) (apply!5270 (transformation!3470 (rule!5496 (_1!10918 (get!5916 lt!682569)))) (seqFromList!2439 (originalCharacters!4284 (_1!10918 (get!5916 lt!682569)))))))))

(declare-fun b!1765138 () Bool)

(declare-fun e!1129520 () Option!3962)

(declare-fun lt!682568 () Option!3962)

(declare-fun lt!682566 () Option!3962)

(assert (=> b!1765138 (= e!1129520 (ite (and (is-None!3961 lt!682568) (is-None!3961 lt!682566)) None!3961 (ite (is-None!3961 lt!682566) lt!682568 (ite (is-None!3961 lt!682568) lt!682566 (ite (>= (size!15426 (_1!10918 (v!25428 lt!682568))) (size!15426 (_1!10918 (v!25428 lt!682566)))) lt!682568 lt!682566)))))))

(declare-fun call!110844 () Option!3962)

(assert (=> b!1765138 (= lt!682568 call!110844)))

(assert (=> b!1765138 (= lt!682566 (maxPrefix!1653 thiss!24550 (t!164591 rules!3447) lt!682376))))

(declare-fun b!1765139 () Bool)

(declare-fun res!794587 () Bool)

(assert (=> b!1765139 (=> (not res!794587) (not e!1129522))))

(assert (=> b!1765139 (= res!794587 (= (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682569)))) (originalCharacters!4284 (_1!10918 (get!5916 lt!682569)))))))

(declare-fun b!1765140 () Bool)

(declare-fun res!794585 () Bool)

(assert (=> b!1765140 (=> (not res!794585) (not e!1129522))))

(assert (=> b!1765140 (= res!794585 (< (size!15427 (_2!10918 (get!5916 lt!682569))) (size!15427 lt!682376)))))

(declare-fun b!1765141 () Bool)

(assert (=> b!1765141 (= e!1129520 call!110844)))

(declare-fun d!539310 () Bool)

(declare-fun e!1129521 () Bool)

(assert (=> d!539310 e!1129521))

(declare-fun res!794582 () Bool)

(assert (=> d!539310 (=> res!794582 e!1129521)))

(assert (=> d!539310 (= res!794582 (isEmpty!12262 lt!682569))))

(assert (=> d!539310 (= lt!682569 e!1129520)))

(declare-fun c!287575 () Bool)

(assert (=> d!539310 (= c!287575 (and (is-Cons!19422 rules!3447) (is-Nil!19422 (t!164591 rules!3447))))))

(declare-fun lt!682565 () Unit!33610)

(declare-fun lt!682567 () Unit!33610)

(assert (=> d!539310 (= lt!682565 lt!682567)))

(assert (=> d!539310 (isPrefix!1710 lt!682376 lt!682376)))

(assert (=> d!539310 (= lt!682567 (lemmaIsPrefixRefl!1133 lt!682376 lt!682376))))

(assert (=> d!539310 (rulesValidInductive!1171 thiss!24550 rules!3447)))

(assert (=> d!539310 (= (maxPrefix!1653 thiss!24550 rules!3447 lt!682376) lt!682569)))

(declare-fun b!1765142 () Bool)

(declare-fun res!794586 () Bool)

(assert (=> b!1765142 (=> (not res!794586) (not e!1129522))))

(assert (=> b!1765142 (= res!794586 (= (++!5294 (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682569)))) (_2!10918 (get!5916 lt!682569))) lt!682376))))

(declare-fun b!1765143 () Bool)

(declare-fun res!794583 () Bool)

(assert (=> b!1765143 (=> (not res!794583) (not e!1129522))))

(assert (=> b!1765143 (= res!794583 (matchR!2271 (regex!3470 (rule!5496 (_1!10918 (get!5916 lt!682569)))) (list!7884 (charsOf!2119 (_1!10918 (get!5916 lt!682569))))))))

(declare-fun bm!110839 () Bool)

(assert (=> bm!110839 (= call!110844 (maxPrefixOneRule!1022 thiss!24550 (h!24823 rules!3447) lt!682376))))

(declare-fun b!1765144 () Bool)

(assert (=> b!1765144 (= e!1129522 (contains!3500 rules!3447 (rule!5496 (_1!10918 (get!5916 lt!682569)))))))

(declare-fun b!1765145 () Bool)

(assert (=> b!1765145 (= e!1129521 e!1129522)))

(declare-fun res!794581 () Bool)

(assert (=> b!1765145 (=> (not res!794581) (not e!1129522))))

(assert (=> b!1765145 (= res!794581 (isDefined!3306 lt!682569))))

(assert (= (and d!539310 c!287575) b!1765141))

(assert (= (and d!539310 (not c!287575)) b!1765138))

(assert (= (or b!1765141 b!1765138) bm!110839))

(assert (= (and d!539310 (not res!794582)) b!1765145))

(assert (= (and b!1765145 res!794581) b!1765139))

(assert (= (and b!1765139 res!794587) b!1765140))

(assert (= (and b!1765140 res!794585) b!1765142))

(assert (= (and b!1765142 res!794586) b!1765137))

(assert (= (and b!1765137 res!794584) b!1765143))

(assert (= (and b!1765143 res!794583) b!1765144))

(declare-fun m!2182357 () Bool)

(assert (=> d!539310 m!2182357))

(declare-fun m!2182359 () Bool)

(assert (=> d!539310 m!2182359))

(declare-fun m!2182361 () Bool)

(assert (=> d!539310 m!2182361))

(assert (=> d!539310 m!2182267))

(declare-fun m!2182363 () Bool)

(assert (=> b!1765143 m!2182363))

(declare-fun m!2182365 () Bool)

(assert (=> b!1765143 m!2182365))

(assert (=> b!1765143 m!2182365))

(declare-fun m!2182367 () Bool)

(assert (=> b!1765143 m!2182367))

(assert (=> b!1765143 m!2182367))

(declare-fun m!2182369 () Bool)

(assert (=> b!1765143 m!2182369))

(assert (=> b!1765144 m!2182363))

(declare-fun m!2182371 () Bool)

(assert (=> b!1765144 m!2182371))

(assert (=> b!1765142 m!2182363))

(assert (=> b!1765142 m!2182365))

(assert (=> b!1765142 m!2182365))

(assert (=> b!1765142 m!2182367))

(assert (=> b!1765142 m!2182367))

(declare-fun m!2182373 () Bool)

(assert (=> b!1765142 m!2182373))

(assert (=> b!1765139 m!2182363))

(assert (=> b!1765139 m!2182365))

(assert (=> b!1765139 m!2182365))

(assert (=> b!1765139 m!2182367))

(assert (=> b!1765137 m!2182363))

(declare-fun m!2182375 () Bool)

(assert (=> b!1765137 m!2182375))

(assert (=> b!1765137 m!2182375))

(declare-fun m!2182377 () Bool)

(assert (=> b!1765137 m!2182377))

(declare-fun m!2182379 () Bool)

(assert (=> b!1765138 m!2182379))

(declare-fun m!2182381 () Bool)

(assert (=> bm!110839 m!2182381))

(assert (=> b!1765140 m!2182363))

(declare-fun m!2182383 () Bool)

(assert (=> b!1765140 m!2182383))

(assert (=> b!1765140 m!2182187))

(declare-fun m!2182385 () Bool)

(assert (=> b!1765145 m!2182385))

(assert (=> b!1764774 d!539310))

(declare-fun b!1765155 () Bool)

(declare-fun res!794597 () Bool)

(declare-fun e!1129530 () Bool)

(assert (=> b!1765155 (=> (not res!794597) (not e!1129530))))

(assert (=> b!1765155 (= res!794597 (= (head!4091 lt!682393) (head!4091 (++!5294 lt!682393 (_2!10918 lt!682379)))))))

(declare-fun d!539312 () Bool)

(declare-fun e!1129529 () Bool)

(assert (=> d!539312 e!1129529))

(declare-fun res!794596 () Bool)

(assert (=> d!539312 (=> res!794596 e!1129529)))

(declare-fun lt!682572 () Bool)

(assert (=> d!539312 (= res!794596 (not lt!682572))))

(declare-fun e!1129531 () Bool)

(assert (=> d!539312 (= lt!682572 e!1129531)))

(declare-fun res!794598 () Bool)

(assert (=> d!539312 (=> res!794598 e!1129531)))

(assert (=> d!539312 (= res!794598 (is-Nil!19421 lt!682393))))

(assert (=> d!539312 (= (isPrefix!1710 lt!682393 (++!5294 lt!682393 (_2!10918 lt!682379))) lt!682572)))

(declare-fun b!1765157 () Bool)

(assert (=> b!1765157 (= e!1129529 (>= (size!15427 (++!5294 lt!682393 (_2!10918 lt!682379))) (size!15427 lt!682393)))))

(declare-fun b!1765154 () Bool)

(assert (=> b!1765154 (= e!1129531 e!1129530)))

(declare-fun res!794599 () Bool)

(assert (=> b!1765154 (=> (not res!794599) (not e!1129530))))

(assert (=> b!1765154 (= res!794599 (not (is-Nil!19421 (++!5294 lt!682393 (_2!10918 lt!682379)))))))

(declare-fun b!1765156 () Bool)

(assert (=> b!1765156 (= e!1129530 (isPrefix!1710 (tail!2640 lt!682393) (tail!2640 (++!5294 lt!682393 (_2!10918 lt!682379)))))))

(assert (= (and d!539312 (not res!794598)) b!1765154))

(assert (= (and b!1765154 res!794599) b!1765155))

(assert (= (and b!1765155 res!794597) b!1765156))

(assert (= (and d!539312 (not res!794596)) b!1765157))

(assert (=> b!1765155 m!2182165))

(assert (=> b!1765155 m!2181981))

(declare-fun m!2182387 () Bool)

(assert (=> b!1765155 m!2182387))

(assert (=> b!1765157 m!2181981))

(declare-fun m!2182389 () Bool)

(assert (=> b!1765157 m!2182389))

(assert (=> b!1765157 m!2181917))

(assert (=> b!1765156 m!2182169))

(assert (=> b!1765156 m!2181981))

(declare-fun m!2182391 () Bool)

(assert (=> b!1765156 m!2182391))

(assert (=> b!1765156 m!2182169))

(assert (=> b!1765156 m!2182391))

(declare-fun m!2182393 () Bool)

(assert (=> b!1765156 m!2182393))

(assert (=> b!1764774 d!539312))

(declare-fun d!539314 () Bool)

(assert (=> d!539314 (= (get!5916 lt!682375) (v!25428 lt!682375))))

(assert (=> b!1764774 d!539314))

(assert (=> b!1764774 d!539244))

(declare-fun b!1765173 () Bool)

(declare-fun res!794609 () Bool)

(declare-fun e!1129540 () Bool)

(assert (=> b!1765173 (=> (not res!794609) (not e!1129540))))

(assert (=> b!1765173 (= res!794609 (= (head!4091 lt!682393) (head!4091 lt!682376)))))

(declare-fun d!539316 () Bool)

(declare-fun e!1129539 () Bool)

(assert (=> d!539316 e!1129539))

(declare-fun res!794608 () Bool)

(assert (=> d!539316 (=> res!794608 e!1129539)))

(declare-fun lt!682574 () Bool)

(assert (=> d!539316 (= res!794608 (not lt!682574))))

(declare-fun e!1129541 () Bool)

(assert (=> d!539316 (= lt!682574 e!1129541)))

(declare-fun res!794610 () Bool)

(assert (=> d!539316 (=> res!794610 e!1129541)))

(assert (=> d!539316 (= res!794610 (is-Nil!19421 lt!682393))))

(assert (=> d!539316 (= (isPrefix!1710 lt!682393 lt!682376) lt!682574)))

(declare-fun b!1765175 () Bool)

(assert (=> b!1765175 (= e!1129539 (>= (size!15427 lt!682376) (size!15427 lt!682393)))))

(declare-fun b!1765172 () Bool)

(assert (=> b!1765172 (= e!1129541 e!1129540)))

(declare-fun res!794611 () Bool)

(assert (=> b!1765172 (=> (not res!794611) (not e!1129540))))

(assert (=> b!1765172 (= res!794611 (not (is-Nil!19421 lt!682376)))))

(declare-fun b!1765174 () Bool)

(assert (=> b!1765174 (= e!1129540 (isPrefix!1710 (tail!2640 lt!682393) (tail!2640 lt!682376)))))

(assert (= (and d!539316 (not res!794610)) b!1765172))

(assert (= (and b!1765172 res!794611) b!1765173))

(assert (= (and b!1765173 res!794609) b!1765174))

(assert (= (and d!539316 (not res!794608)) b!1765175))

(assert (=> b!1765173 m!2182165))

(declare-fun m!2182395 () Bool)

(assert (=> b!1765173 m!2182395))

(assert (=> b!1765175 m!2182187))

(assert (=> b!1765175 m!2181917))

(assert (=> b!1765174 m!2182169))

(assert (=> b!1765174 m!2182233))

(assert (=> b!1765174 m!2182169))

(assert (=> b!1765174 m!2182233))

(declare-fun m!2182397 () Bool)

(assert (=> b!1765174 m!2182397))

(assert (=> b!1764774 d!539316))

(declare-fun d!539318 () Bool)

(declare-fun e!1129547 () Bool)

(assert (=> d!539318 e!1129547))

(declare-fun res!794622 () Bool)

(assert (=> d!539318 (=> (not res!794622) (not e!1129547))))

(assert (=> d!539318 (= res!794622 (isDefined!3305 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 (_1!10918 lt!682379))))))))

(declare-fun lt!682577 () Unit!33610)

(declare-fun choose!10950 (LexerInterface!3099 List!19492 List!19491 Token!6506) Unit!33610)

(assert (=> d!539318 (= lt!682577 (choose!10950 thiss!24550 rules!3447 lt!682376 (_1!10918 lt!682379)))))

(assert (=> d!539318 (rulesInvariant!2768 thiss!24550 rules!3447)))

(assert (=> d!539318 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!518 thiss!24550 rules!3447 lt!682376 (_1!10918 lt!682379)) lt!682577)))

(declare-fun b!1765186 () Bool)

(declare-fun res!794623 () Bool)

(assert (=> b!1765186 (=> (not res!794623) (not e!1129547))))

(assert (=> b!1765186 (= res!794623 (matchR!2271 (regex!3470 (get!5915 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 (_1!10918 lt!682379)))))) (list!7884 (charsOf!2119 (_1!10918 lt!682379)))))))

(declare-fun b!1765187 () Bool)

(assert (=> b!1765187 (= e!1129547 (= (rule!5496 (_1!10918 lt!682379)) (get!5915 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 (_1!10918 lt!682379)))))))))

(assert (= (and d!539318 res!794622) b!1765186))

(assert (= (and b!1765186 res!794623) b!1765187))

(assert (=> d!539318 m!2181973))

(assert (=> d!539318 m!2181973))

(declare-fun m!2182415 () Bool)

(assert (=> d!539318 m!2182415))

(declare-fun m!2182417 () Bool)

(assert (=> d!539318 m!2182417))

(assert (=> d!539318 m!2181865))

(assert (=> b!1765186 m!2181973))

(assert (=> b!1765186 m!2181869))

(assert (=> b!1765186 m!2181869))

(assert (=> b!1765186 m!2181871))

(assert (=> b!1765186 m!2181973))

(declare-fun m!2182419 () Bool)

(assert (=> b!1765186 m!2182419))

(assert (=> b!1765186 m!2181871))

(declare-fun m!2182421 () Bool)

(assert (=> b!1765186 m!2182421))

(assert (=> b!1765187 m!2181973))

(assert (=> b!1765187 m!2181973))

(assert (=> b!1765187 m!2182419))

(assert (=> b!1764774 d!539318))

(declare-fun d!539324 () Bool)

(assert (=> d!539324 (isPrefix!1710 lt!682393 (++!5294 lt!682393 (_2!10918 lt!682379)))))

(declare-fun lt!682580 () Unit!33610)

(assert (=> d!539324 (= lt!682580 (choose!10949 lt!682393 (_2!10918 lt!682379)))))

(assert (=> d!539324 (= (lemmaConcatTwoListThenFirstIsPrefix!1219 lt!682393 (_2!10918 lt!682379)) lt!682580)))

(declare-fun bs!404335 () Bool)

(assert (= bs!404335 d!539324))

(assert (=> bs!404335 m!2181981))

(assert (=> bs!404335 m!2181981))

(assert (=> bs!404335 m!2181983))

(declare-fun m!2182423 () Bool)

(assert (=> bs!404335 m!2182423))

(assert (=> b!1764774 d!539324))

(declare-fun b!1765189 () Bool)

(declare-fun res!794625 () Bool)

(declare-fun e!1129549 () Bool)

(assert (=> b!1765189 (=> (not res!794625) (not e!1129549))))

(assert (=> b!1765189 (= res!794625 (= (head!4091 lt!682389) (head!4091 lt!682376)))))

(declare-fun d!539326 () Bool)

(declare-fun e!1129548 () Bool)

(assert (=> d!539326 e!1129548))

(declare-fun res!794624 () Bool)

(assert (=> d!539326 (=> res!794624 e!1129548)))

(declare-fun lt!682581 () Bool)

(assert (=> d!539326 (= res!794624 (not lt!682581))))

(declare-fun e!1129550 () Bool)

(assert (=> d!539326 (= lt!682581 e!1129550)))

(declare-fun res!794626 () Bool)

(assert (=> d!539326 (=> res!794626 e!1129550)))

(assert (=> d!539326 (= res!794626 (is-Nil!19421 lt!682389))))

(assert (=> d!539326 (= (isPrefix!1710 lt!682389 lt!682376) lt!682581)))

(declare-fun b!1765191 () Bool)

(assert (=> b!1765191 (= e!1129548 (>= (size!15427 lt!682376) (size!15427 lt!682389)))))

(declare-fun b!1765188 () Bool)

(assert (=> b!1765188 (= e!1129550 e!1129549)))

(declare-fun res!794627 () Bool)

(assert (=> b!1765188 (=> (not res!794627) (not e!1129549))))

(assert (=> b!1765188 (= res!794627 (not (is-Nil!19421 lt!682376)))))

(declare-fun b!1765190 () Bool)

(assert (=> b!1765190 (= e!1129549 (isPrefix!1710 (tail!2640 lt!682389) (tail!2640 lt!682376)))))

(assert (= (and d!539326 (not res!794626)) b!1765188))

(assert (= (and b!1765188 res!794627) b!1765189))

(assert (= (and b!1765189 res!794625) b!1765190))

(assert (= (and d!539326 (not res!794624)) b!1765191))

(declare-fun m!2182425 () Bool)

(assert (=> b!1765189 m!2182425))

(assert (=> b!1765189 m!2182395))

(assert (=> b!1765191 m!2182187))

(assert (=> b!1765191 m!2182291))

(declare-fun m!2182427 () Bool)

(assert (=> b!1765190 m!2182427))

(assert (=> b!1765190 m!2182233))

(assert (=> b!1765190 m!2182427))

(assert (=> b!1765190 m!2182233))

(declare-fun m!2182429 () Bool)

(assert (=> b!1765190 m!2182429))

(assert (=> b!1764774 d!539326))

(declare-fun b!1765275 () Bool)

(declare-fun e!1129596 () Unit!33610)

(declare-fun Unit!33615 () Unit!33610)

(assert (=> b!1765275 (= e!1129596 Unit!33615)))

(declare-fun b!1765272 () Bool)

(declare-fun res!794671 () Bool)

(declare-fun e!1129597 () Bool)

(assert (=> b!1765272 (=> (not res!794671) (not e!1129597))))

(declare-fun lt!682657 () Token!6506)

(assert (=> b!1765272 (= res!794671 (matchR!2271 (regex!3470 (get!5915 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 lt!682657))))) (list!7884 (charsOf!2119 lt!682657))))))

(declare-fun b!1765274 () Bool)

(declare-fun Unit!33616 () Unit!33610)

(assert (=> b!1765274 (= e!1129596 Unit!33616)))

(declare-fun lt!682653 () List!19491)

(assert (=> b!1765274 (= lt!682653 (++!5294 lt!682389 suffix!1421))))

(declare-fun lt!682656 () Unit!33610)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!324 (LexerInterface!3099 Rule!6740 List!19492 List!19491) Unit!33610)

(assert (=> b!1765274 (= lt!682656 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!324 thiss!24550 (rule!5496 lt!682657) rules!3447 lt!682653))))

(assert (=> b!1765274 (isEmpty!12262 (maxPrefixOneRule!1022 thiss!24550 (rule!5496 lt!682657) lt!682653))))

(declare-fun lt!682661 () Unit!33610)

(assert (=> b!1765274 (= lt!682661 lt!682656)))

(declare-fun lt!682665 () List!19491)

(assert (=> b!1765274 (= lt!682665 (list!7884 (charsOf!2119 lt!682657)))))

(declare-fun lt!682654 () Unit!33610)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!320 (LexerInterface!3099 Rule!6740 List!19491 List!19491) Unit!33610)

(assert (=> b!1765274 (= lt!682654 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!320 thiss!24550 (rule!5496 lt!682657) lt!682665 (++!5294 lt!682389 suffix!1421)))))

(assert (=> b!1765274 (not (matchR!2271 (regex!3470 (rule!5496 lt!682657)) lt!682665))))

(declare-fun lt!682651 () Unit!33610)

(assert (=> b!1765274 (= lt!682651 lt!682654)))

(assert (=> b!1765274 false))

(declare-fun b!1765273 () Bool)

(assert (=> b!1765273 (= e!1129597 (= (rule!5496 lt!682657) (get!5915 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 lt!682657))))))))

(declare-fun d!539328 () Bool)

(assert (=> d!539328 (isDefined!3306 (maxPrefix!1653 thiss!24550 rules!3447 (++!5294 lt!682389 suffix!1421)))))

(declare-fun lt!682658 () Unit!33610)

(assert (=> d!539328 (= lt!682658 e!1129596)))

(declare-fun c!287596 () Bool)

(assert (=> d!539328 (= c!287596 (isEmpty!12262 (maxPrefix!1653 thiss!24550 rules!3447 (++!5294 lt!682389 suffix!1421))))))

(declare-fun lt!682666 () Unit!33610)

(declare-fun lt!682667 () Unit!33610)

(assert (=> d!539328 (= lt!682666 lt!682667)))

(assert (=> d!539328 e!1129597))

(declare-fun res!794672 () Bool)

(assert (=> d!539328 (=> (not res!794672) (not e!1129597))))

(assert (=> d!539328 (= res!794672 (isDefined!3305 (getRuleFromTag!518 thiss!24550 rules!3447 (tag!3842 (rule!5496 lt!682657)))))))

(assert (=> d!539328 (= lt!682667 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!518 thiss!24550 rules!3447 lt!682389 lt!682657))))

(declare-fun lt!682655 () Unit!33610)

(declare-fun lt!682663 () Unit!33610)

(assert (=> d!539328 (= lt!682655 lt!682663)))

(declare-fun lt!682652 () List!19491)

(assert (=> d!539328 (isPrefix!1710 lt!682652 (++!5294 lt!682389 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!316 (List!19491 List!19491 List!19491) Unit!33610)

(assert (=> d!539328 (= lt!682663 (lemmaPrefixStaysPrefixWhenAddingToSuffix!316 lt!682652 lt!682389 suffix!1421))))

(assert (=> d!539328 (= lt!682652 (list!7884 (charsOf!2119 lt!682657)))))

(declare-fun lt!682660 () Unit!33610)

(declare-fun lt!682662 () Unit!33610)

(assert (=> d!539328 (= lt!682660 lt!682662)))

(declare-fun lt!682664 () List!19491)

(declare-fun lt!682659 () List!19491)

(assert (=> d!539328 (isPrefix!1710 lt!682664 (++!5294 lt!682664 lt!682659))))

(assert (=> d!539328 (= lt!682662 (lemmaConcatTwoListThenFirstIsPrefix!1219 lt!682664 lt!682659))))

(assert (=> d!539328 (= lt!682659 (_2!10918 (get!5916 (maxPrefix!1653 thiss!24550 rules!3447 lt!682389))))))

(assert (=> d!539328 (= lt!682664 (list!7884 (charsOf!2119 lt!682657)))))

(declare-datatypes ((List!19496 0))(
  ( (Nil!19426) (Cons!19426 (h!24827 Token!6506) (t!164661 List!19496)) )
))
(declare-fun head!4093 (List!19496) Token!6506)

(declare-datatypes ((IArray!12929 0))(
  ( (IArray!12930 (innerList!6522 List!19496)) )
))
(declare-datatypes ((Conc!6462 0))(
  ( (Node!6462 (left!15551 Conc!6462) (right!15881 Conc!6462) (csize!13154 Int) (cheight!6673 Int)) (Leaf!9418 (xs!9338 IArray!12929) (csize!13155 Int)) (Empty!6462) )
))
(declare-datatypes ((BalanceConc!12868 0))(
  ( (BalanceConc!12869 (c!287648 Conc!6462)) )
))
(declare-fun list!7887 (BalanceConc!12868) List!19496)

(declare-datatypes ((tuple2!19038 0))(
  ( (tuple2!19039 (_1!10921 BalanceConc!12868) (_2!10921 BalanceConc!12864)) )
))
(declare-fun lex!1455 (LexerInterface!3099 List!19492 BalanceConc!12864) tuple2!19038)

(assert (=> d!539328 (= lt!682657 (head!4093 (list!7887 (_1!10921 (lex!1455 thiss!24550 rules!3447 (seqFromList!2439 lt!682389))))))))

(assert (=> d!539328 (not (isEmpty!12259 rules!3447))))

(assert (=> d!539328 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!621 thiss!24550 rules!3447 lt!682389 suffix!1421) lt!682658)))

(assert (= (and d!539328 res!794672) b!1765272))

(assert (= (and b!1765272 res!794671) b!1765273))

(assert (= (and d!539328 c!287596) b!1765274))

(assert (= (and d!539328 (not c!287596)) b!1765275))

(declare-fun m!2182549 () Bool)

(assert (=> b!1765272 m!2182549))

(declare-fun m!2182551 () Bool)

(assert (=> b!1765272 m!2182551))

(declare-fun m!2182553 () Bool)

(assert (=> b!1765272 m!2182553))

(declare-fun m!2182555 () Bool)

(assert (=> b!1765272 m!2182555))

(declare-fun m!2182557 () Bool)

(assert (=> b!1765272 m!2182557))

(assert (=> b!1765272 m!2182549))

(assert (=> b!1765272 m!2182557))

(assert (=> b!1765272 m!2182553))

(declare-fun m!2182559 () Bool)

(assert (=> b!1765274 m!2182559))

(declare-fun m!2182561 () Bool)

(assert (=> b!1765274 m!2182561))

(assert (=> b!1765274 m!2182557))

(assert (=> b!1765274 m!2182553))

(assert (=> b!1765274 m!2181967))

(declare-fun m!2182563 () Bool)

(assert (=> b!1765274 m!2182563))

(declare-fun m!2182565 () Bool)

(assert (=> b!1765274 m!2182565))

(assert (=> b!1765274 m!2182557))

(assert (=> b!1765274 m!2181967))

(declare-fun m!2182567 () Bool)

(assert (=> b!1765274 m!2182567))

(assert (=> b!1765274 m!2182559))

(assert (=> b!1765273 m!2182549))

(assert (=> b!1765273 m!2182549))

(assert (=> b!1765273 m!2182551))

(declare-fun m!2182569 () Bool)

(assert (=> d!539328 m!2182569))

(declare-fun m!2182571 () Bool)

(assert (=> d!539328 m!2182571))

(assert (=> d!539328 m!2181967))

(declare-fun m!2182573 () Bool)

(assert (=> d!539328 m!2182573))

(assert (=> d!539328 m!2181967))

(declare-fun m!2182575 () Bool)

(assert (=> d!539328 m!2182575))

(declare-fun m!2182577 () Bool)

(assert (=> d!539328 m!2182577))

(assert (=> d!539328 m!2181945))

(declare-fun m!2182579 () Bool)

(assert (=> d!539328 m!2182579))

(assert (=> d!539328 m!2182549))

(declare-fun m!2182581 () Bool)

(assert (=> d!539328 m!2182581))

(assert (=> d!539328 m!2182573))

(declare-fun m!2182583 () Bool)

(assert (=> d!539328 m!2182583))

(assert (=> d!539328 m!2182577))

(declare-fun m!2182585 () Bool)

(assert (=> d!539328 m!2182585))

(assert (=> d!539328 m!2181967))

(declare-fun m!2182587 () Bool)

(assert (=> d!539328 m!2182587))

(assert (=> d!539328 m!2182549))

(assert (=> d!539328 m!2182557))

(assert (=> d!539328 m!2182553))

(declare-fun m!2182589 () Bool)

(assert (=> d!539328 m!2182589))

(declare-fun m!2182591 () Bool)

(assert (=> d!539328 m!2182591))

(assert (=> d!539328 m!2181895))

(assert (=> d!539328 m!2182573))

(declare-fun m!2182593 () Bool)

(assert (=> d!539328 m!2182593))

(assert (=> d!539328 m!2182557))

(assert (=> d!539328 m!2181895))

(declare-fun m!2182595 () Bool)

(assert (=> d!539328 m!2182595))

(assert (=> d!539328 m!2182589))

(assert (=> d!539328 m!2182569))

(declare-fun m!2182597 () Bool)

(assert (=> d!539328 m!2182597))

(assert (=> b!1764774 d!539328))

(declare-fun d!539378 () Bool)

(declare-fun e!1129601 () Bool)

(assert (=> d!539378 e!1129601))

(declare-fun res!794674 () Bool)

(assert (=> d!539378 (=> (not res!794674) (not e!1129601))))

(declare-fun lt!682668 () List!19491)

(assert (=> d!539378 (= res!794674 (= (content!2810 lt!682668) (set.union (content!2810 lt!682393) (content!2810 (_2!10918 lt!682379)))))))

(declare-fun e!1129600 () List!19491)

(assert (=> d!539378 (= lt!682668 e!1129600)))

(declare-fun c!287598 () Bool)

(assert (=> d!539378 (= c!287598 (is-Nil!19421 lt!682393))))

(assert (=> d!539378 (= (++!5294 lt!682393 (_2!10918 lt!682379)) lt!682668)))

(declare-fun b!1765282 () Bool)

(assert (=> b!1765282 (= e!1129601 (or (not (= (_2!10918 lt!682379) Nil!19421)) (= lt!682668 lt!682393)))))

(declare-fun b!1765279 () Bool)

(assert (=> b!1765279 (= e!1129600 (_2!10918 lt!682379))))

(declare-fun b!1765280 () Bool)

(assert (=> b!1765280 (= e!1129600 (Cons!19421 (h!24822 lt!682393) (++!5294 (t!164590 lt!682393) (_2!10918 lt!682379))))))

(declare-fun b!1765281 () Bool)

(declare-fun res!794675 () Bool)

(assert (=> b!1765281 (=> (not res!794675) (not e!1129601))))

(assert (=> b!1765281 (= res!794675 (= (size!15427 lt!682668) (+ (size!15427 lt!682393) (size!15427 (_2!10918 lt!682379)))))))

(assert (= (and d!539378 c!287598) b!1765279))

(assert (= (and d!539378 (not c!287598)) b!1765280))

(assert (= (and d!539378 res!794674) b!1765281))

(assert (= (and b!1765281 res!794675) b!1765282))

(declare-fun m!2182599 () Bool)

(assert (=> d!539378 m!2182599))

(declare-fun m!2182601 () Bool)

(assert (=> d!539378 m!2182601))

(declare-fun m!2182603 () Bool)

(assert (=> d!539378 m!2182603))

(declare-fun m!2182605 () Bool)

(assert (=> b!1765280 m!2182605))

(declare-fun m!2182607 () Bool)

(assert (=> b!1765281 m!2182607))

(assert (=> b!1765281 m!2181917))

(declare-fun m!2182609 () Bool)

(assert (=> b!1765281 m!2182609))

(assert (=> b!1764774 d!539378))

(declare-fun d!539380 () Bool)

(assert (=> d!539380 (= (inv!25224 (tag!3842 rule!422)) (= (mod (str.len (value!108568 (tag!3842 rule!422))) 2) 0))))

(assert (=> b!1764752 d!539380))

(declare-fun d!539382 () Bool)

(declare-fun res!794676 () Bool)

(declare-fun e!1129604 () Bool)

(assert (=> d!539382 (=> (not res!794676) (not e!1129604))))

(assert (=> d!539382 (= res!794676 (semiInverseModEq!1381 (toChars!4852 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 rule!422))))))

(assert (=> d!539382 (= (inv!25227 (transformation!3470 rule!422)) e!1129604)))

(declare-fun b!1765287 () Bool)

(assert (=> b!1765287 (= e!1129604 (equivClasses!1322 (toChars!4852 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 rule!422))))))

(assert (= (and d!539382 res!794676) b!1765287))

(declare-fun m!2182611 () Bool)

(assert (=> d!539382 m!2182611))

(declare-fun m!2182613 () Bool)

(assert (=> b!1765287 m!2182613))

(assert (=> b!1764752 d!539382))

(declare-fun d!539384 () Bool)

(declare-fun c!287606 () Bool)

(assert (=> d!539384 (= c!287606 (is-Node!6460 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))))

(declare-fun e!1129612 () Bool)

(assert (=> d!539384 (= (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))) e!1129612)))

(declare-fun b!1765300 () Bool)

(declare-fun inv!25235 (Conc!6460) Bool)

(assert (=> b!1765300 (= e!1129612 (inv!25235 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))))

(declare-fun b!1765301 () Bool)

(declare-fun e!1129613 () Bool)

(assert (=> b!1765301 (= e!1129612 e!1129613)))

(declare-fun res!794679 () Bool)

(assert (=> b!1765301 (= res!794679 (not (is-Leaf!9416 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))))))

(assert (=> b!1765301 (=> res!794679 e!1129613)))

(declare-fun b!1765302 () Bool)

(declare-fun inv!25236 (Conc!6460) Bool)

(assert (=> b!1765302 (= e!1129613 (inv!25236 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))))))

(assert (= (and d!539384 c!287606) b!1765300))

(assert (= (and d!539384 (not c!287606)) b!1765301))

(assert (= (and b!1765301 (not res!794679)) b!1765302))

(declare-fun m!2182627 () Bool)

(assert (=> b!1765300 m!2182627))

(declare-fun m!2182629 () Bool)

(assert (=> b!1765302 m!2182629))

(assert (=> b!1764795 d!539384))

(declare-fun d!539388 () Bool)

(declare-fun res!794688 () Bool)

(declare-fun e!1129620 () Bool)

(assert (=> d!539388 (=> (not res!794688) (not e!1129620))))

(declare-fun rulesValid!1307 (LexerInterface!3099 List!19492) Bool)

(assert (=> d!539388 (= res!794688 (rulesValid!1307 thiss!24550 rules!3447))))

(assert (=> d!539388 (= (rulesInvariant!2768 thiss!24550 rules!3447) e!1129620)))

(declare-fun b!1765313 () Bool)

(declare-datatypes ((List!19497 0))(
  ( (Nil!19427) (Cons!19427 (h!24828 String!22134) (t!164674 List!19497)) )
))
(declare-fun noDuplicateTag!1307 (LexerInterface!3099 List!19492 List!19497) Bool)

(assert (=> b!1765313 (= e!1129620 (noDuplicateTag!1307 thiss!24550 rules!3447 Nil!19427))))

(assert (= (and d!539388 res!794688) b!1765313))

(declare-fun m!2182645 () Bool)

(assert (=> d!539388 m!2182645))

(declare-fun m!2182647 () Bool)

(assert (=> b!1765313 m!2182647))

(assert (=> b!1764772 d!539388))

(declare-fun b!1765314 () Bool)

(declare-fun e!1129624 () Bool)

(declare-fun e!1129627 () Bool)

(assert (=> b!1765314 (= e!1129624 e!1129627)))

(declare-fun c!287610 () Bool)

(assert (=> b!1765314 (= c!287610 (is-EmptyLang!4798 (regex!3470 rule!422)))))

(declare-fun b!1765315 () Bool)

(declare-fun e!1129623 () Bool)

(assert (=> b!1765315 (= e!1129623 (nullable!1466 (regex!3470 rule!422)))))

(declare-fun b!1765316 () Bool)

(declare-fun lt!682672 () Bool)

(declare-fun call!110849 () Bool)

(assert (=> b!1765316 (= e!1129624 (= lt!682672 call!110849))))

(declare-fun b!1765317 () Bool)

(declare-fun res!794689 () Bool)

(declare-fun e!1129622 () Bool)

(assert (=> b!1765317 (=> res!794689 e!1129622)))

(assert (=> b!1765317 (= res!794689 (not (is-ElementMatch!4798 (regex!3470 rule!422))))))

(assert (=> b!1765317 (= e!1129627 e!1129622)))

(declare-fun b!1765318 () Bool)

(declare-fun res!794694 () Bool)

(declare-fun e!1129621 () Bool)

(assert (=> b!1765318 (=> res!794694 e!1129621)))

(assert (=> b!1765318 (= res!794694 (not (isEmpty!12258 (tail!2640 lt!682389))))))

(declare-fun bm!110844 () Bool)

(assert (=> bm!110844 (= call!110849 (isEmpty!12258 lt!682389))))

(declare-fun d!539392 () Bool)

(assert (=> d!539392 e!1129624))

(declare-fun c!287609 () Bool)

(assert (=> d!539392 (= c!287609 (is-EmptyExpr!4798 (regex!3470 rule!422)))))

(assert (=> d!539392 (= lt!682672 e!1129623)))

(declare-fun c!287608 () Bool)

(assert (=> d!539392 (= c!287608 (isEmpty!12258 lt!682389))))

(assert (=> d!539392 (validRegex!1940 (regex!3470 rule!422))))

(assert (=> d!539392 (= (matchR!2271 (regex!3470 rule!422) lt!682389) lt!682672)))

(declare-fun b!1765319 () Bool)

(declare-fun e!1129625 () Bool)

(assert (=> b!1765319 (= e!1129622 e!1129625)))

(declare-fun res!794695 () Bool)

(assert (=> b!1765319 (=> (not res!794695) (not e!1129625))))

(assert (=> b!1765319 (= res!794695 (not lt!682672))))

(declare-fun b!1765320 () Bool)

(declare-fun res!794693 () Bool)

(declare-fun e!1129626 () Bool)

(assert (=> b!1765320 (=> (not res!794693) (not e!1129626))))

(assert (=> b!1765320 (= res!794693 (not call!110849))))

(declare-fun b!1765321 () Bool)

(assert (=> b!1765321 (= e!1129626 (= (head!4091 lt!682389) (c!287521 (regex!3470 rule!422))))))

(declare-fun b!1765322 () Bool)

(assert (=> b!1765322 (= e!1129627 (not lt!682672))))

(declare-fun b!1765323 () Bool)

(declare-fun res!794696 () Bool)

(assert (=> b!1765323 (=> res!794696 e!1129622)))

(assert (=> b!1765323 (= res!794696 e!1129626)))

(declare-fun res!794692 () Bool)

(assert (=> b!1765323 (=> (not res!794692) (not e!1129626))))

(assert (=> b!1765323 (= res!794692 lt!682672)))

(declare-fun b!1765324 () Bool)

(assert (=> b!1765324 (= e!1129625 e!1129621)))

(declare-fun res!794691 () Bool)

(assert (=> b!1765324 (=> res!794691 e!1129621)))

(assert (=> b!1765324 (= res!794691 call!110849)))

(declare-fun b!1765325 () Bool)

(assert (=> b!1765325 (= e!1129621 (not (= (head!4091 lt!682389) (c!287521 (regex!3470 rule!422)))))))

(declare-fun b!1765326 () Bool)

(declare-fun res!794690 () Bool)

(assert (=> b!1765326 (=> (not res!794690) (not e!1129626))))

(assert (=> b!1765326 (= res!794690 (isEmpty!12258 (tail!2640 lt!682389)))))

(declare-fun b!1765327 () Bool)

(assert (=> b!1765327 (= e!1129623 (matchR!2271 (derivativeStep!1235 (regex!3470 rule!422) (head!4091 lt!682389)) (tail!2640 lt!682389)))))

(assert (= (and d!539392 c!287608) b!1765315))

(assert (= (and d!539392 (not c!287608)) b!1765327))

(assert (= (and d!539392 c!287609) b!1765316))

(assert (= (and d!539392 (not c!287609)) b!1765314))

(assert (= (and b!1765314 c!287610) b!1765322))

(assert (= (and b!1765314 (not c!287610)) b!1765317))

(assert (= (and b!1765317 (not res!794689)) b!1765323))

(assert (= (and b!1765323 res!794692) b!1765320))

(assert (= (and b!1765320 res!794693) b!1765326))

(assert (= (and b!1765326 res!794690) b!1765321))

(assert (= (and b!1765323 (not res!794696)) b!1765319))

(assert (= (and b!1765319 res!794695) b!1765324))

(assert (= (and b!1765324 (not res!794691)) b!1765318))

(assert (= (and b!1765318 (not res!794694)) b!1765325))

(assert (= (or b!1765316 b!1765320 b!1765324) bm!110844))

(assert (=> b!1765327 m!2182425))

(assert (=> b!1765327 m!2182425))

(declare-fun m!2182649 () Bool)

(assert (=> b!1765327 m!2182649))

(assert (=> b!1765327 m!2182427))

(assert (=> b!1765327 m!2182649))

(assert (=> b!1765327 m!2182427))

(declare-fun m!2182651 () Bool)

(assert (=> b!1765327 m!2182651))

(declare-fun m!2182653 () Bool)

(assert (=> bm!110844 m!2182653))

(assert (=> b!1765318 m!2182427))

(assert (=> b!1765318 m!2182427))

(declare-fun m!2182655 () Bool)

(assert (=> b!1765318 m!2182655))

(assert (=> b!1765325 m!2182425))

(assert (=> b!1765326 m!2182427))

(assert (=> b!1765326 m!2182427))

(assert (=> b!1765326 m!2182655))

(assert (=> d!539392 m!2182653))

(declare-fun m!2182657 () Bool)

(assert (=> d!539392 m!2182657))

(assert (=> b!1765321 m!2182425))

(declare-fun m!2182659 () Bool)

(assert (=> b!1765315 m!2182659))

(assert (=> b!1764750 d!539392))

(declare-fun d!539396 () Bool)

(declare-fun res!794701 () Bool)

(declare-fun e!1129630 () Bool)

(assert (=> d!539396 (=> (not res!794701) (not e!1129630))))

(assert (=> d!539396 (= res!794701 (validRegex!1940 (regex!3470 rule!422)))))

(assert (=> d!539396 (= (ruleValid!968 thiss!24550 rule!422) e!1129630)))

(declare-fun b!1765332 () Bool)

(declare-fun res!794702 () Bool)

(assert (=> b!1765332 (=> (not res!794702) (not e!1129630))))

(assert (=> b!1765332 (= res!794702 (not (nullable!1466 (regex!3470 rule!422))))))

(declare-fun b!1765333 () Bool)

(assert (=> b!1765333 (= e!1129630 (not (= (tag!3842 rule!422) (String!22135 ""))))))

(assert (= (and d!539396 res!794701) b!1765332))

(assert (= (and b!1765332 res!794702) b!1765333))

(assert (=> d!539396 m!2182657))

(assert (=> b!1765332 m!2182659))

(assert (=> b!1764750 d!539396))

(declare-fun d!539398 () Bool)

(assert (=> d!539398 (ruleValid!968 thiss!24550 rule!422)))

(declare-fun lt!682679 () Unit!33610)

(declare-fun choose!10951 (LexerInterface!3099 Rule!6740 List!19492) Unit!33610)

(assert (=> d!539398 (= lt!682679 (choose!10951 thiss!24550 rule!422 rules!3447))))

(assert (=> d!539398 (contains!3500 rules!3447 rule!422)))

(assert (=> d!539398 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!491 thiss!24550 rule!422 rules!3447) lt!682679)))

(declare-fun bs!404347 () Bool)

(assert (= bs!404347 d!539398))

(assert (=> bs!404347 m!2181887))

(declare-fun m!2182671 () Bool)

(assert (=> bs!404347 m!2182671))

(assert (=> bs!404347 m!2181863))

(assert (=> b!1764750 d!539398))

(declare-fun d!539404 () Bool)

(declare-fun lt!682684 () Int)

(assert (=> d!539404 (= lt!682684 (size!15427 (list!7884 lt!682391)))))

(declare-fun size!15432 (Conc!6460) Int)

(assert (=> d!539404 (= lt!682684 (size!15432 (c!287522 lt!682391)))))

(assert (=> d!539404 (= (size!15428 lt!682391) lt!682684)))

(declare-fun bs!404348 () Bool)

(assert (= bs!404348 d!539404))

(assert (=> bs!404348 m!2181897))

(assert (=> bs!404348 m!2181897))

(declare-fun m!2182673 () Bool)

(assert (=> bs!404348 m!2182673))

(declare-fun m!2182675 () Bool)

(assert (=> bs!404348 m!2182675))

(assert (=> b!1764771 d!539404))

(declare-fun b!1765344 () Bool)

(declare-fun e!1129642 () Bool)

(declare-fun e!1129645 () Bool)

(assert (=> b!1765344 (= e!1129642 e!1129645)))

(declare-fun c!287613 () Bool)

(assert (=> b!1765344 (= c!287613 (is-EmptyLang!4798 lt!682395))))

(declare-fun b!1765345 () Bool)

(declare-fun e!1129641 () Bool)

(assert (=> b!1765345 (= e!1129641 (nullable!1466 lt!682395))))

(declare-fun b!1765346 () Bool)

(declare-fun lt!682685 () Bool)

(declare-fun call!110850 () Bool)

(assert (=> b!1765346 (= e!1129642 (= lt!682685 call!110850))))

(declare-fun b!1765347 () Bool)

(declare-fun res!794713 () Bool)

(declare-fun e!1129640 () Bool)

(assert (=> b!1765347 (=> res!794713 e!1129640)))

(assert (=> b!1765347 (= res!794713 (not (is-ElementMatch!4798 lt!682395)))))

(assert (=> b!1765347 (= e!1129645 e!1129640)))

(declare-fun b!1765348 () Bool)

(declare-fun res!794718 () Bool)

(declare-fun e!1129639 () Bool)

(assert (=> b!1765348 (=> res!794718 e!1129639)))

(assert (=> b!1765348 (= res!794718 (not (isEmpty!12258 (tail!2640 lt!682389))))))

(declare-fun bm!110845 () Bool)

(assert (=> bm!110845 (= call!110850 (isEmpty!12258 lt!682389))))

(declare-fun d!539406 () Bool)

(assert (=> d!539406 e!1129642))

(declare-fun c!287612 () Bool)

(assert (=> d!539406 (= c!287612 (is-EmptyExpr!4798 lt!682395))))

(assert (=> d!539406 (= lt!682685 e!1129641)))

(declare-fun c!287611 () Bool)

(assert (=> d!539406 (= c!287611 (isEmpty!12258 lt!682389))))

(assert (=> d!539406 (validRegex!1940 lt!682395)))

(assert (=> d!539406 (= (matchR!2271 lt!682395 lt!682389) lt!682685)))

(declare-fun b!1765349 () Bool)

(declare-fun e!1129643 () Bool)

(assert (=> b!1765349 (= e!1129640 e!1129643)))

(declare-fun res!794719 () Bool)

(assert (=> b!1765349 (=> (not res!794719) (not e!1129643))))

(assert (=> b!1765349 (= res!794719 (not lt!682685))))

(declare-fun b!1765350 () Bool)

(declare-fun res!794717 () Bool)

(declare-fun e!1129644 () Bool)

(assert (=> b!1765350 (=> (not res!794717) (not e!1129644))))

(assert (=> b!1765350 (= res!794717 (not call!110850))))

(declare-fun b!1765351 () Bool)

(assert (=> b!1765351 (= e!1129644 (= (head!4091 lt!682389) (c!287521 lt!682395)))))

(declare-fun b!1765352 () Bool)

(assert (=> b!1765352 (= e!1129645 (not lt!682685))))

(declare-fun b!1765353 () Bool)

(declare-fun res!794720 () Bool)

(assert (=> b!1765353 (=> res!794720 e!1129640)))

(assert (=> b!1765353 (= res!794720 e!1129644)))

(declare-fun res!794716 () Bool)

(assert (=> b!1765353 (=> (not res!794716) (not e!1129644))))

(assert (=> b!1765353 (= res!794716 lt!682685)))

(declare-fun b!1765354 () Bool)

(assert (=> b!1765354 (= e!1129643 e!1129639)))

(declare-fun res!794715 () Bool)

(assert (=> b!1765354 (=> res!794715 e!1129639)))

(assert (=> b!1765354 (= res!794715 call!110850)))

(declare-fun b!1765355 () Bool)

(assert (=> b!1765355 (= e!1129639 (not (= (head!4091 lt!682389) (c!287521 lt!682395))))))

(declare-fun b!1765356 () Bool)

(declare-fun res!794714 () Bool)

(assert (=> b!1765356 (=> (not res!794714) (not e!1129644))))

(assert (=> b!1765356 (= res!794714 (isEmpty!12258 (tail!2640 lt!682389)))))

(declare-fun b!1765357 () Bool)

(assert (=> b!1765357 (= e!1129641 (matchR!2271 (derivativeStep!1235 lt!682395 (head!4091 lt!682389)) (tail!2640 lt!682389)))))

(assert (= (and d!539406 c!287611) b!1765345))

(assert (= (and d!539406 (not c!287611)) b!1765357))

(assert (= (and d!539406 c!287612) b!1765346))

(assert (= (and d!539406 (not c!287612)) b!1765344))

(assert (= (and b!1765344 c!287613) b!1765352))

(assert (= (and b!1765344 (not c!287613)) b!1765347))

(assert (= (and b!1765347 (not res!794713)) b!1765353))

(assert (= (and b!1765353 res!794716) b!1765350))

(assert (= (and b!1765350 res!794717) b!1765356))

(assert (= (and b!1765356 res!794714) b!1765351))

(assert (= (and b!1765353 (not res!794720)) b!1765349))

(assert (= (and b!1765349 res!794719) b!1765354))

(assert (= (and b!1765354 (not res!794715)) b!1765348))

(assert (= (and b!1765348 (not res!794718)) b!1765355))

(assert (= (or b!1765346 b!1765350 b!1765354) bm!110845))

(assert (=> b!1765357 m!2182425))

(assert (=> b!1765357 m!2182425))

(declare-fun m!2182689 () Bool)

(assert (=> b!1765357 m!2182689))

(assert (=> b!1765357 m!2182427))

(assert (=> b!1765357 m!2182689))

(assert (=> b!1765357 m!2182427))

(declare-fun m!2182691 () Bool)

(assert (=> b!1765357 m!2182691))

(assert (=> bm!110845 m!2182653))

(assert (=> b!1765348 m!2182427))

(assert (=> b!1765348 m!2182427))

(assert (=> b!1765348 m!2182655))

(assert (=> b!1765355 m!2182425))

(assert (=> b!1765356 m!2182427))

(assert (=> b!1765356 m!2182427))

(assert (=> b!1765356 m!2182655))

(assert (=> d!539406 m!2182653))

(declare-fun m!2182693 () Bool)

(assert (=> d!539406 m!2182693))

(assert (=> b!1765351 m!2182425))

(declare-fun m!2182695 () Bool)

(assert (=> b!1765345 m!2182695))

(assert (=> b!1764771 d!539406))

(declare-fun d!539410 () Bool)

(assert (=> d!539410 (matchR!2271 (rulesRegex!826 thiss!24550 rules!3447) (list!7884 (charsOf!2119 token!523)))))

(declare-fun lt!682690 () Unit!33610)

(declare-fun choose!10953 (LexerInterface!3099 List!19492 List!19491 Token!6506 Rule!6740 List!19491) Unit!33610)

(assert (=> d!539410 (= lt!682690 (choose!10953 thiss!24550 rules!3447 lt!682389 token!523 rule!422 Nil!19421))))

(assert (=> d!539410 (not (isEmpty!12259 rules!3447))))

(assert (=> d!539410 (= (lemmaMaxPrefixThenMatchesRulesRegex!177 thiss!24550 rules!3447 lt!682389 token!523 rule!422 Nil!19421) lt!682690)))

(declare-fun bs!404350 () Bool)

(assert (= bs!404350 d!539410))

(assert (=> bs!404350 m!2181953))

(assert (=> bs!404350 m!2181945))

(assert (=> bs!404350 m!2181953))

(declare-fun m!2182711 () Bool)

(assert (=> bs!404350 m!2182711))

(declare-fun m!2182713 () Bool)

(assert (=> bs!404350 m!2182713))

(declare-fun m!2182715 () Bool)

(assert (=> bs!404350 m!2182715))

(assert (=> bs!404350 m!2181899))

(assert (=> bs!404350 m!2182711))

(assert (=> bs!404350 m!2181899))

(assert (=> b!1764771 d!539410))

(declare-fun d!539416 () Bool)

(assert (=> d!539416 (= (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379))) (fromListB!1115 (originalCharacters!4284 (_1!10918 lt!682379))))))

(declare-fun bs!404351 () Bool)

(assert (= bs!404351 d!539416))

(declare-fun m!2182717 () Bool)

(assert (=> bs!404351 m!2182717))

(assert (=> b!1764770 d!539416))

(declare-fun b!1765390 () Bool)

(declare-fun e!1129667 () Bool)

(assert (=> b!1765390 (= e!1129667 true)))

(declare-fun d!539418 () Bool)

(assert (=> d!539418 e!1129667))

(assert (= d!539418 b!1765390))

(declare-fun order!12349 () Int)

(declare-fun lambda!70278 () Int)

(declare-fun dynLambda!9386 (Int Int) Int)

(assert (=> b!1765390 (< (dynLambda!9376 order!12337 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9386 order!12349 lambda!70278))))

(assert (=> b!1765390 (< (dynLambda!9378 order!12341 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) (dynLambda!9386 order!12349 lambda!70278))))

(assert (=> d!539418 (= (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379)))))))

(declare-fun lt!682702 () Unit!33610)

(declare-fun Forall2of!128 (Int BalanceConc!12864 BalanceConc!12864) Unit!33610)

(assert (=> d!539418 (= lt!682702 (Forall2of!128 lambda!70278 lt!682397 (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379)))))))

(assert (=> d!539418 (= (list!7884 lt!682397) (list!7884 (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379)))))))

(assert (=> d!539418 (= (lemmaEqSameImage!381 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397 (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379)))) lt!682702)))

(declare-fun b_lambda!57291 () Bool)

(assert (=> (not b_lambda!57291) (not d!539418)))

(assert (=> d!539418 t!164584))

(declare-fun b_and!133643 () Bool)

(assert (= b_and!133613 (and (=> t!164584 result!128126) b_and!133643)))

(assert (=> d!539418 t!164586))

(declare-fun b_and!133645 () Bool)

(assert (= b_and!133615 (and (=> t!164586 result!128130) b_and!133645)))

(assert (=> d!539418 t!164588))

(declare-fun b_and!133647 () Bool)

(assert (= b_and!133617 (and (=> t!164588 result!128132) b_and!133647)))

(declare-fun b_lambda!57293 () Bool)

(assert (=> (not b_lambda!57293) (not d!539418)))

(declare-fun t!164632 () Bool)

(declare-fun tb!106551 () Bool)

(assert (=> (and b!1764749 (= (toValue!4993 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164632) tb!106551))

(declare-fun result!128174 () Bool)

(assert (=> tb!106551 (= result!128174 (inv!21 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (seqFromList!2439 (originalCharacters!4284 (_1!10918 lt!682379))))))))

(declare-fun m!2182739 () Bool)

(assert (=> tb!106551 m!2182739))

(assert (=> d!539418 t!164632))

(declare-fun b_and!133649 () Bool)

(assert (= b_and!133643 (and (=> t!164632 result!128174) b_and!133649)))

(declare-fun t!164634 () Bool)

(declare-fun tb!106553 () Bool)

(assert (=> (and b!1764754 (= (toValue!4993 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164634) tb!106553))

(declare-fun result!128176 () Bool)

(assert (= result!128176 result!128174))

(assert (=> d!539418 t!164634))

(declare-fun b_and!133651 () Bool)

(assert (= b_and!133645 (and (=> t!164634 result!128176) b_and!133651)))

(declare-fun tb!106555 () Bool)

(declare-fun t!164636 () Bool)

(assert (=> (and b!1764773 (= (toValue!4993 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164636) tb!106555))

(declare-fun result!128178 () Bool)

(assert (= result!128178 result!128174))

(assert (=> d!539418 t!164636))

(declare-fun b_and!133653 () Bool)

(assert (= b_and!133647 (and (=> t!164636 result!128178) b_and!133653)))

(assert (=> d!539418 m!2181959))

(declare-fun m!2182745 () Bool)

(assert (=> d!539418 m!2182745))

(assert (=> d!539418 m!2181959))

(declare-fun m!2182747 () Bool)

(assert (=> d!539418 m!2182747))

(assert (=> d!539418 m!2181987))

(assert (=> d!539418 m!2181959))

(declare-fun m!2182749 () Bool)

(assert (=> d!539418 m!2182749))

(assert (=> d!539418 m!2181903))

(assert (=> b!1764770 d!539418))

(declare-fun d!539430 () Bool)

(declare-fun lt!682708 () Int)

(assert (=> d!539430 (= lt!682708 (size!15427 (list!7884 lt!682397)))))

(assert (=> d!539430 (= lt!682708 (size!15432 (c!287522 lt!682397)))))

(assert (=> d!539430 (= (size!15428 lt!682397) lt!682708)))

(declare-fun bs!404355 () Bool)

(assert (= bs!404355 d!539430))

(assert (=> bs!404355 m!2181987))

(assert (=> bs!404355 m!2181987))

(declare-fun m!2182751 () Bool)

(assert (=> bs!404355 m!2182751))

(declare-fun m!2182753 () Bool)

(assert (=> bs!404355 m!2182753))

(assert (=> b!1764770 d!539430))

(declare-fun d!539432 () Bool)

(assert (=> d!539432 (= (size!15426 (_1!10918 lt!682379)) (size!15427 (originalCharacters!4284 (_1!10918 lt!682379))))))

(declare-fun Unit!33617 () Unit!33610)

(assert (=> d!539432 (= (lemmaCharactersSize!528 (_1!10918 lt!682379)) Unit!33617)))

(declare-fun bs!404356 () Bool)

(assert (= bs!404356 d!539432))

(declare-fun m!2182755 () Bool)

(assert (=> bs!404356 m!2182755))

(assert (=> b!1764770 d!539432))

(declare-fun d!539434 () Bool)

(assert (=> d!539434 (= (apply!5270 (transformation!3470 (rule!5496 (_1!10918 lt!682379))) lt!682397) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))

(declare-fun b_lambda!57295 () Bool)

(assert (=> (not b_lambda!57295) (not d!539434)))

(assert (=> d!539434 t!164584))

(declare-fun b_and!133655 () Bool)

(assert (= b_and!133649 (and (=> t!164584 result!128126) b_and!133655)))

(assert (=> d!539434 t!164586))

(declare-fun b_and!133657 () Bool)

(assert (= b_and!133651 (and (=> t!164586 result!128130) b_and!133657)))

(assert (=> d!539434 t!164588))

(declare-fun b_and!133659 () Bool)

(assert (= b_and!133653 (and (=> t!164588 result!128132) b_and!133659)))

(assert (=> d!539434 m!2181903))

(assert (=> b!1764770 d!539434))

(declare-fun b!1765405 () Bool)

(declare-fun e!1129680 () Bool)

(declare-fun inv!16 (TokenValue!3560) Bool)

(assert (=> b!1765405 (= e!1129680 (inv!16 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(declare-fun b!1765406 () Bool)

(declare-fun e!1129678 () Bool)

(declare-fun inv!17 (TokenValue!3560) Bool)

(assert (=> b!1765406 (= e!1129678 (inv!17 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(declare-fun b!1765408 () Bool)

(declare-fun res!794741 () Bool)

(declare-fun e!1129679 () Bool)

(assert (=> b!1765408 (=> res!794741 e!1129679)))

(assert (=> b!1765408 (= res!794741 (not (is-IntegerValue!10682 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))))

(assert (=> b!1765408 (= e!1129678 e!1129679)))

(declare-fun b!1765409 () Bool)

(assert (=> b!1765409 (= e!1129680 e!1129678)))

(declare-fun c!287626 () Bool)

(assert (=> b!1765409 (= c!287626 (is-IntegerValue!10681 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(declare-fun b!1765407 () Bool)

(declare-fun inv!15 (TokenValue!3560) Bool)

(assert (=> b!1765407 (= e!1129679 (inv!15 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(declare-fun d!539436 () Bool)

(declare-fun c!287625 () Bool)

(assert (=> d!539436 (= c!287625 (is-IntegerValue!10680 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))

(assert (=> d!539436 (= (inv!21 (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)) e!1129680)))

(assert (= (and d!539436 c!287625) b!1765405))

(assert (= (and d!539436 (not c!287625)) b!1765409))

(assert (= (and b!1765409 c!287626) b!1765406))

(assert (= (and b!1765409 (not c!287626)) b!1765408))

(assert (= (and b!1765408 (not res!794741)) b!1765407))

(declare-fun m!2182757 () Bool)

(assert (=> b!1765405 m!2182757))

(declare-fun m!2182759 () Bool)

(assert (=> b!1765406 m!2182759))

(declare-fun m!2182761 () Bool)

(assert (=> b!1765407 m!2182761))

(assert (=> tb!106509 d!539436))

(declare-fun d!539438 () Bool)

(declare-fun c!287629 () Bool)

(assert (=> d!539438 (= c!287629 (isEmpty!12258 (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421))))))

(declare-fun e!1129683 () Bool)

(assert (=> d!539438 (= (prefixMatch!681 lt!682395 (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421))) e!1129683)))

(declare-fun b!1765414 () Bool)

(declare-fun lostCause!577 (Regex!4798) Bool)

(assert (=> b!1765414 (= e!1129683 (not (lostCause!577 lt!682395)))))

(declare-fun b!1765415 () Bool)

(assert (=> b!1765415 (= e!1129683 (prefixMatch!681 (derivativeStep!1235 lt!682395 (head!4091 (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421)))) (tail!2640 (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421)))))))

(assert (= (and d!539438 c!287629) b!1765414))

(assert (= (and d!539438 (not c!287629)) b!1765415))

(assert (=> d!539438 m!2181949))

(declare-fun m!2182763 () Bool)

(assert (=> d!539438 m!2182763))

(declare-fun m!2182765 () Bool)

(assert (=> b!1765414 m!2182765))

(assert (=> b!1765415 m!2181949))

(declare-fun m!2182767 () Bool)

(assert (=> b!1765415 m!2182767))

(assert (=> b!1765415 m!2182767))

(declare-fun m!2182769 () Bool)

(assert (=> b!1765415 m!2182769))

(assert (=> b!1765415 m!2181949))

(declare-fun m!2182771 () Bool)

(assert (=> b!1765415 m!2182771))

(assert (=> b!1765415 m!2182769))

(assert (=> b!1765415 m!2182771))

(declare-fun m!2182773 () Bool)

(assert (=> b!1765415 m!2182773))

(assert (=> b!1764768 d!539438))

(declare-fun d!539440 () Bool)

(declare-fun e!1129685 () Bool)

(assert (=> d!539440 e!1129685))

(declare-fun res!794742 () Bool)

(assert (=> d!539440 (=> (not res!794742) (not e!1129685))))

(declare-fun lt!682709 () List!19491)

(assert (=> d!539440 (= res!794742 (= (content!2810 lt!682709) (set.union (content!2810 lt!682389) (content!2810 (Cons!19421 (head!4091 suffix!1421) Nil!19421)))))))

(declare-fun e!1129684 () List!19491)

(assert (=> d!539440 (= lt!682709 e!1129684)))

(declare-fun c!287630 () Bool)

(assert (=> d!539440 (= c!287630 (is-Nil!19421 lt!682389))))

(assert (=> d!539440 (= (++!5294 lt!682389 (Cons!19421 (head!4091 suffix!1421) Nil!19421)) lt!682709)))

(declare-fun b!1765419 () Bool)

(assert (=> b!1765419 (= e!1129685 (or (not (= (Cons!19421 (head!4091 suffix!1421) Nil!19421) Nil!19421)) (= lt!682709 lt!682389)))))

(declare-fun b!1765416 () Bool)

(assert (=> b!1765416 (= e!1129684 (Cons!19421 (head!4091 suffix!1421) Nil!19421))))

(declare-fun b!1765417 () Bool)

(assert (=> b!1765417 (= e!1129684 (Cons!19421 (h!24822 lt!682389) (++!5294 (t!164590 lt!682389) (Cons!19421 (head!4091 suffix!1421) Nil!19421))))))

(declare-fun b!1765418 () Bool)

(declare-fun res!794743 () Bool)

(assert (=> b!1765418 (=> (not res!794743) (not e!1129685))))

(assert (=> b!1765418 (= res!794743 (= (size!15427 lt!682709) (+ (size!15427 lt!682389) (size!15427 (Cons!19421 (head!4091 suffix!1421) Nil!19421)))))))

(assert (= (and d!539440 c!287630) b!1765416))

(assert (= (and d!539440 (not c!287630)) b!1765417))

(assert (= (and d!539440 res!794742) b!1765418))

(assert (= (and b!1765418 res!794743) b!1765419))

(declare-fun m!2182775 () Bool)

(assert (=> d!539440 m!2182775))

(assert (=> d!539440 m!2182325))

(declare-fun m!2182777 () Bool)

(assert (=> d!539440 m!2182777))

(declare-fun m!2182779 () Bool)

(assert (=> b!1765417 m!2182779))

(declare-fun m!2182781 () Bool)

(assert (=> b!1765418 m!2182781))

(assert (=> b!1765418 m!2182291))

(declare-fun m!2182783 () Bool)

(assert (=> b!1765418 m!2182783))

(assert (=> b!1764768 d!539440))

(declare-fun d!539442 () Bool)

(assert (=> d!539442 (= (head!4091 suffix!1421) (h!24822 suffix!1421))))

(assert (=> b!1764768 d!539442))

(declare-fun d!539444 () Bool)

(declare-fun lt!682712 () Unit!33610)

(declare-fun lemma!390 (List!19492 LexerInterface!3099 List!19492) Unit!33610)

(assert (=> d!539444 (= lt!682712 (lemma!390 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70281 () Int)

(declare-datatypes ((List!19498 0))(
  ( (Nil!19428) (Cons!19428 (h!24829 Regex!4798) (t!164675 List!19498)) )
))
(declare-fun generalisedUnion!398 (List!19498) Regex!4798)

(declare-fun map!4005 (List!19492 Int) List!19498)

(assert (=> d!539444 (= (rulesRegex!826 thiss!24550 rules!3447) (generalisedUnion!398 (map!4005 rules!3447 lambda!70281)))))

(declare-fun bs!404357 () Bool)

(assert (= bs!404357 d!539444))

(declare-fun m!2182785 () Bool)

(assert (=> bs!404357 m!2182785))

(declare-fun m!2182787 () Bool)

(assert (=> bs!404357 m!2182787))

(assert (=> bs!404357 m!2182787))

(declare-fun m!2182789 () Bool)

(assert (=> bs!404357 m!2182789))

(assert (=> b!1764768 d!539444))

(declare-fun d!539446 () Bool)

(declare-fun choose!10955 (Int) Bool)

(assert (=> d!539446 (= (Forall!837 lambda!70263) (choose!10955 lambda!70263))))

(declare-fun bs!404358 () Bool)

(assert (= bs!404358 d!539446))

(declare-fun m!2182791 () Bool)

(assert (=> bs!404358 m!2182791))

(assert (=> b!1764767 d!539446))

(declare-fun d!539448 () Bool)

(declare-fun e!1129688 () Bool)

(assert (=> d!539448 e!1129688))

(declare-fun res!794746 () Bool)

(assert (=> d!539448 (=> (not res!794746) (not e!1129688))))

(assert (=> d!539448 (= res!794746 (semiInverseModEq!1381 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))))))

(declare-fun Unit!33618 () Unit!33610)

(assert (=> d!539448 (= (lemmaInv!669 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) Unit!33618)))

(declare-fun b!1765422 () Bool)

(assert (=> b!1765422 (= e!1129688 (equivClasses!1322 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))))))

(assert (= (and d!539448 res!794746) b!1765422))

(declare-fun m!2182793 () Bool)

(assert (=> d!539448 m!2182793))

(declare-fun m!2182795 () Bool)

(assert (=> b!1765422 m!2182795))

(assert (=> b!1764767 d!539448))

(declare-fun b!1765423 () Bool)

(declare-fun e!1129691 () Bool)

(assert (=> b!1765423 (= e!1129691 (inv!16 (value!108569 token!523)))))

(declare-fun b!1765424 () Bool)

(declare-fun e!1129689 () Bool)

(assert (=> b!1765424 (= e!1129689 (inv!17 (value!108569 token!523)))))

(declare-fun b!1765426 () Bool)

(declare-fun res!794747 () Bool)

(declare-fun e!1129690 () Bool)

(assert (=> b!1765426 (=> res!794747 e!1129690)))

(assert (=> b!1765426 (= res!794747 (not (is-IntegerValue!10682 (value!108569 token!523))))))

(assert (=> b!1765426 (= e!1129689 e!1129690)))

(declare-fun b!1765427 () Bool)

(assert (=> b!1765427 (= e!1129691 e!1129689)))

(declare-fun c!287632 () Bool)

(assert (=> b!1765427 (= c!287632 (is-IntegerValue!10681 (value!108569 token!523)))))

(declare-fun b!1765425 () Bool)

(assert (=> b!1765425 (= e!1129690 (inv!15 (value!108569 token!523)))))

(declare-fun d!539450 () Bool)

(declare-fun c!287631 () Bool)

(assert (=> d!539450 (= c!287631 (is-IntegerValue!10680 (value!108569 token!523)))))

(assert (=> d!539450 (= (inv!21 (value!108569 token!523)) e!1129691)))

(assert (= (and d!539450 c!287631) b!1765423))

(assert (= (and d!539450 (not c!287631)) b!1765427))

(assert (= (and b!1765427 c!287632) b!1765424))

(assert (= (and b!1765427 (not c!287632)) b!1765426))

(assert (= (and b!1765426 (not res!794747)) b!1765425))

(declare-fun m!2182797 () Bool)

(assert (=> b!1765423 m!2182797))

(declare-fun m!2182799 () Bool)

(assert (=> b!1765424 m!2182799))

(declare-fun m!2182801 () Bool)

(assert (=> b!1765425 m!2182801))

(assert (=> b!1764766 d!539450))

(declare-fun d!539452 () Bool)

(declare-fun res!794752 () Bool)

(declare-fun e!1129694 () Bool)

(assert (=> d!539452 (=> (not res!794752) (not e!1129694))))

(assert (=> d!539452 (= res!794752 (not (isEmpty!12258 (originalCharacters!4284 token!523))))))

(assert (=> d!539452 (= (inv!25228 token!523) e!1129694)))

(declare-fun b!1765432 () Bool)

(declare-fun res!794753 () Bool)

(assert (=> b!1765432 (=> (not res!794753) (not e!1129694))))

(assert (=> b!1765432 (= res!794753 (= (originalCharacters!4284 token!523) (list!7884 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 token!523))) (value!108569 token!523)))))))

(declare-fun b!1765433 () Bool)

(assert (=> b!1765433 (= e!1129694 (= (size!15426 token!523) (size!15427 (originalCharacters!4284 token!523))))))

(assert (= (and d!539452 res!794752) b!1765432))

(assert (= (and b!1765432 res!794753) b!1765433))

(declare-fun b_lambda!57297 () Bool)

(assert (=> (not b_lambda!57297) (not b!1765432)))

(assert (=> b!1765432 t!164620))

(declare-fun b_and!133661 () Bool)

(assert (= b_and!133607 (and (=> t!164620 result!128162) b_and!133661)))

(assert (=> b!1765432 t!164622))

(declare-fun b_and!133663 () Bool)

(assert (= b_and!133609 (and (=> t!164622 result!128164) b_and!133663)))

(assert (=> b!1765432 t!164624))

(declare-fun b_and!133665 () Bool)

(assert (= b_and!133611 (and (=> t!164624 result!128166) b_and!133665)))

(declare-fun m!2182803 () Bool)

(assert (=> d!539452 m!2182803))

(assert (=> b!1765432 m!2182303))

(assert (=> b!1765432 m!2182303))

(declare-fun m!2182805 () Bool)

(assert (=> b!1765432 m!2182805))

(declare-fun m!2182807 () Bool)

(assert (=> b!1765433 m!2182807))

(assert (=> start!174816 d!539452))

(declare-fun d!539454 () Bool)

(declare-fun lt!682713 () Bool)

(assert (=> d!539454 (= lt!682713 (set.member rule!422 (content!2809 rules!3447)))))

(declare-fun e!1129696 () Bool)

(assert (=> d!539454 (= lt!682713 e!1129696)))

(declare-fun res!794754 () Bool)

(assert (=> d!539454 (=> (not res!794754) (not e!1129696))))

(assert (=> d!539454 (= res!794754 (is-Cons!19422 rules!3447))))

(assert (=> d!539454 (= (contains!3500 rules!3447 rule!422) lt!682713)))

(declare-fun b!1765434 () Bool)

(declare-fun e!1129695 () Bool)

(assert (=> b!1765434 (= e!1129696 e!1129695)))

(declare-fun res!794755 () Bool)

(assert (=> b!1765434 (=> res!794755 e!1129695)))

(assert (=> b!1765434 (= res!794755 (= (h!24823 rules!3447) rule!422))))

(declare-fun b!1765435 () Bool)

(assert (=> b!1765435 (= e!1129695 (contains!3500 (t!164591 rules!3447) rule!422))))

(assert (= (and d!539454 res!794754) b!1765434))

(assert (= (and b!1765434 (not res!794755)) b!1765435))

(assert (=> d!539454 m!2182251))

(declare-fun m!2182809 () Bool)

(assert (=> d!539454 m!2182809))

(declare-fun m!2182811 () Bool)

(assert (=> b!1765435 m!2182811))

(assert (=> b!1764763 d!539454))

(declare-fun d!539456 () Bool)

(declare-fun c!287633 () Bool)

(assert (=> d!539456 (= c!287633 (is-Node!6460 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))))

(declare-fun e!1129697 () Bool)

(assert (=> d!539456 (= (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))) e!1129697)))

(declare-fun b!1765436 () Bool)

(assert (=> b!1765436 (= e!1129697 (inv!25235 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))))

(declare-fun b!1765437 () Bool)

(declare-fun e!1129698 () Bool)

(assert (=> b!1765437 (= e!1129697 e!1129698)))

(declare-fun res!794756 () Bool)

(assert (=> b!1765437 (= res!794756 (not (is-Leaf!9416 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))))))

(assert (=> b!1765437 (=> res!794756 e!1129698)))

(declare-fun b!1765438 () Bool)

(assert (=> b!1765438 (= e!1129698 (inv!25236 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))))))

(assert (= (and d!539456 c!287633) b!1765436))

(assert (= (and d!539456 (not c!287633)) b!1765437))

(assert (= (and b!1765437 (not res!794756)) b!1765438))

(declare-fun m!2182813 () Bool)

(assert (=> b!1765436 m!2182813))

(declare-fun m!2182815 () Bool)

(assert (=> b!1765438 m!2182815))

(assert (=> b!1764796 d!539456))

(declare-fun e!1129703 () Bool)

(assert (=> b!1764762 (= tp!500971 e!1129703)))

(declare-fun b!1765453 () Bool)

(assert (=> b!1765453 (= e!1129703 tp_is_empty!7839)))

(declare-fun b!1765454 () Bool)

(declare-fun tp!501032 () Bool)

(declare-fun tp!501030 () Bool)

(assert (=> b!1765454 (= e!1129703 (and tp!501032 tp!501030))))

(declare-fun b!1765455 () Bool)

(declare-fun tp!501033 () Bool)

(assert (=> b!1765455 (= e!1129703 tp!501033)))

(declare-fun b!1765456 () Bool)

(declare-fun tp!501031 () Bool)

(declare-fun tp!501034 () Bool)

(assert (=> b!1765456 (= e!1129703 (and tp!501031 tp!501034))))

(assert (= (and b!1764762 (is-ElementMatch!4798 (regex!3470 (rule!5496 token!523)))) b!1765453))

(assert (= (and b!1764762 (is-Concat!8359 (regex!3470 (rule!5496 token!523)))) b!1765454))

(assert (= (and b!1764762 (is-Star!4798 (regex!3470 (rule!5496 token!523)))) b!1765455))

(assert (= (and b!1764762 (is-Union!4798 (regex!3470 (rule!5496 token!523)))) b!1765456))

(declare-fun b!1765481 () Bool)

(declare-fun b_free!48811 () Bool)

(declare-fun b_next!49515 () Bool)

(assert (=> b!1765481 (= b_free!48811 (not b_next!49515))))

(declare-fun t!164638 () Bool)

(declare-fun tb!106557 () Bool)

(assert (=> (and b!1765481 (= (toValue!4993 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164638) tb!106557))

(declare-fun result!128184 () Bool)

(assert (= result!128184 result!128156))

(assert (=> d!539258 t!164638))

(declare-fun tb!106559 () Bool)

(declare-fun t!164640 () Bool)

(assert (=> (and b!1765481 (= (toValue!4993 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164640) tb!106559))

(declare-fun result!128186 () Bool)

(assert (= result!128186 result!128126))

(assert (=> b!1764775 t!164640))

(assert (=> d!539418 t!164640))

(declare-fun tb!106561 () Bool)

(declare-fun t!164642 () Bool)

(assert (=> (and b!1765481 (= (toValue!4993 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164642) tb!106561))

(declare-fun result!128188 () Bool)

(assert (= result!128188 result!128174))

(assert (=> d!539418 t!164642))

(assert (=> d!539434 t!164640))

(assert (=> d!539292 t!164640))

(declare-fun b_and!133667 () Bool)

(declare-fun tp!501044 () Bool)

(assert (=> b!1765481 (= tp!501044 (and (=> t!164640 result!128186) (=> t!164638 result!128184) (=> t!164642 result!128188) b_and!133667))))

(declare-fun b_free!48813 () Bool)

(declare-fun b_next!49517 () Bool)

(assert (=> b!1765481 (= b_free!48813 (not b_next!49517))))

(declare-fun t!164644 () Bool)

(declare-fun tb!106563 () Bool)

(assert (=> (and b!1765481 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 token!523)))) t!164644) tb!106563))

(declare-fun result!128190 () Bool)

(assert (= result!128190 result!128162))

(assert (=> d!539288 t!164644))

(declare-fun tb!106565 () Bool)

(declare-fun t!164646 () Bool)

(assert (=> (and b!1765481 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164646) tb!106565))

(declare-fun result!128192 () Bool)

(assert (= result!128192 result!128112))

(assert (=> d!539244 t!164646))

(assert (=> b!1765432 t!164644))

(declare-fun t!164648 () Bool)

(declare-fun tb!106567 () Bool)

(assert (=> (and b!1765481 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379))))) t!164648) tb!106567))

(declare-fun result!128194 () Bool)

(assert (= result!128194 result!128120))

(assert (=> b!1764775 t!164648))

(assert (=> d!539292 t!164648))

(assert (=> b!1764764 t!164646))

(declare-fun tp!501043 () Bool)

(declare-fun b_and!133669 () Bool)

(assert (=> b!1765481 (= tp!501043 (and (=> t!164646 result!128192) (=> t!164644 result!128190) (=> t!164648 result!128194) b_and!133669))))

(declare-fun e!1129716 () Bool)

(assert (=> b!1765481 (= e!1129716 (and tp!501044 tp!501043))))

(declare-fun b!1765480 () Bool)

(declare-fun tp!501045 () Bool)

(declare-fun e!1129719 () Bool)

(assert (=> b!1765480 (= e!1129719 (and tp!501045 (inv!25224 (tag!3842 (h!24823 (t!164591 rules!3447)))) (inv!25227 (transformation!3470 (h!24823 (t!164591 rules!3447)))) e!1129716))))

(declare-fun b!1765479 () Bool)

(declare-fun e!1129717 () Bool)

(declare-fun tp!501046 () Bool)

(assert (=> b!1765479 (= e!1129717 (and e!1129719 tp!501046))))

(assert (=> b!1764751 (= tp!500964 e!1129717)))

(assert (= b!1765480 b!1765481))

(assert (= b!1765479 b!1765480))

(assert (= (and b!1764751 (is-Cons!19422 (t!164591 rules!3447))) b!1765479))

(declare-fun m!2182817 () Bool)

(assert (=> b!1765480 m!2182817))

(declare-fun m!2182819 () Bool)

(assert (=> b!1765480 m!2182819))

(declare-fun tp!501055 () Bool)

(declare-fun b!1765490 () Bool)

(declare-fun tp!501053 () Bool)

(declare-fun e!1129724 () Bool)

(assert (=> b!1765490 (= e!1129724 (and (inv!25229 (left!15547 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))) tp!501053 (inv!25229 (right!15877 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))) tp!501055))))

(declare-fun b!1765492 () Bool)

(declare-fun e!1129725 () Bool)

(declare-fun tp!501054 () Bool)

(assert (=> b!1765492 (= e!1129725 tp!501054)))

(declare-fun b!1765491 () Bool)

(declare-fun inv!25239 (IArray!12925) Bool)

(assert (=> b!1765491 (= e!1129724 (and (inv!25239 (xs!9336 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))) e!1129725))))

(assert (=> b!1764795 (= tp!500977 (and (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379))))) e!1129724))))

(assert (= (and b!1764795 (is-Node!6460 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))) b!1765490))

(assert (= b!1765491 b!1765492))

(assert (= (and b!1764795 (is-Leaf!9416 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (value!108569 (_1!10918 lt!682379)))))) b!1765491))

(declare-fun m!2182821 () Bool)

(assert (=> b!1765490 m!2182821))

(declare-fun m!2182823 () Bool)

(assert (=> b!1765490 m!2182823))

(declare-fun m!2182825 () Bool)

(assert (=> b!1765491 m!2182825))

(assert (=> b!1764795 m!2181853))

(declare-fun b!1765497 () Bool)

(declare-fun e!1129728 () Bool)

(declare-fun tp!501058 () Bool)

(assert (=> b!1765497 (= e!1129728 (and tp_is_empty!7839 tp!501058))))

(assert (=> b!1764766 (= tp!500966 e!1129728)))

(assert (= (and b!1764766 (is-Cons!19421 (originalCharacters!4284 token!523))) b!1765497))

(declare-fun b!1765498 () Bool)

(declare-fun e!1129729 () Bool)

(declare-fun tp!501059 () Bool)

(assert (=> b!1765498 (= e!1129729 (and tp_is_empty!7839 tp!501059))))

(assert (=> b!1764753 (= tp!500963 e!1129729)))

(assert (= (and b!1764753 (is-Cons!19421 (t!164590 suffix!1421))) b!1765498))

(declare-fun e!1129733 () Bool)

(assert (=> b!1764779 (= tp!500973 e!1129733)))

(declare-fun b!1765508 () Bool)

(assert (=> b!1765508 (= e!1129733 tp_is_empty!7839)))

(declare-fun b!1765509 () Bool)

(declare-fun tp!501062 () Bool)

(declare-fun tp!501060 () Bool)

(assert (=> b!1765509 (= e!1129733 (and tp!501062 tp!501060))))

(declare-fun b!1765510 () Bool)

(declare-fun tp!501063 () Bool)

(assert (=> b!1765510 (= e!1129733 tp!501063)))

(declare-fun b!1765511 () Bool)

(declare-fun tp!501061 () Bool)

(declare-fun tp!501064 () Bool)

(assert (=> b!1765511 (= e!1129733 (and tp!501061 tp!501064))))

(assert (= (and b!1764779 (is-ElementMatch!4798 (regex!3470 (h!24823 rules!3447)))) b!1765508))

(assert (= (and b!1764779 (is-Concat!8359 (regex!3470 (h!24823 rules!3447)))) b!1765509))

(assert (= (and b!1764779 (is-Star!4798 (regex!3470 (h!24823 rules!3447)))) b!1765510))

(assert (= (and b!1764779 (is-Union!4798 (regex!3470 (h!24823 rules!3447)))) b!1765511))

(declare-fun e!1129734 () Bool)

(assert (=> b!1764752 (= tp!500968 e!1129734)))

(declare-fun b!1765512 () Bool)

(assert (=> b!1765512 (= e!1129734 tp_is_empty!7839)))

(declare-fun b!1765513 () Bool)

(declare-fun tp!501067 () Bool)

(declare-fun tp!501065 () Bool)

(assert (=> b!1765513 (= e!1129734 (and tp!501067 tp!501065))))

(declare-fun b!1765514 () Bool)

(declare-fun tp!501068 () Bool)

(assert (=> b!1765514 (= e!1129734 tp!501068)))

(declare-fun b!1765515 () Bool)

(declare-fun tp!501066 () Bool)

(declare-fun tp!501069 () Bool)

(assert (=> b!1765515 (= e!1129734 (and tp!501066 tp!501069))))

(assert (= (and b!1764752 (is-ElementMatch!4798 (regex!3470 rule!422))) b!1765512))

(assert (= (and b!1764752 (is-Concat!8359 (regex!3470 rule!422))) b!1765513))

(assert (= (and b!1764752 (is-Star!4798 (regex!3470 rule!422))) b!1765514))

(assert (= (and b!1764752 (is-Union!4798 (regex!3470 rule!422))) b!1765515))

(declare-fun tp!501070 () Bool)

(declare-fun tp!501072 () Bool)

(declare-fun b!1765516 () Bool)

(declare-fun e!1129735 () Bool)

(assert (=> b!1765516 (= e!1129735 (and (inv!25229 (left!15547 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))) tp!501070 (inv!25229 (right!15877 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))) tp!501072))))

(declare-fun b!1765518 () Bool)

(declare-fun e!1129736 () Bool)

(declare-fun tp!501071 () Bool)

(assert (=> b!1765518 (= e!1129736 tp!501071)))

(declare-fun b!1765517 () Bool)

(assert (=> b!1765517 (= e!1129735 (and (inv!25239 (xs!9336 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))) e!1129736))))

(assert (=> b!1764796 (= tp!500978 (and (inv!25229 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397)))) e!1129735))))

(assert (= (and b!1764796 (is-Node!6460 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))) b!1765516))

(assert (= b!1765517 b!1765518))

(assert (= (and b!1764796 (is-Leaf!9416 (c!287522 (dynLambda!9379 (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) (dynLambda!9380 (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))) lt!682397))))) b!1765517))

(declare-fun m!2182827 () Bool)

(assert (=> b!1765516 m!2182827))

(declare-fun m!2182829 () Bool)

(assert (=> b!1765516 m!2182829))

(declare-fun m!2182831 () Bool)

(assert (=> b!1765517 m!2182831))

(assert (=> b!1764796 m!2181857))

(declare-fun b_lambda!57299 () Bool)

(assert (= b_lambda!57297 (or (and b!1764749 b_free!48789) (and b!1764754 b_free!48793 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) (and b!1764773 b_free!48797 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) (and b!1765481 b_free!48813 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) b_lambda!57299)))

(declare-fun b_lambda!57301 () Bool)

(assert (= b_lambda!57277 (or (and b!1764749 b_free!48789) (and b!1764754 b_free!48793 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) (and b!1764773 b_free!48797 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) (and b!1765481 b_free!48813 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 token!523))))) b_lambda!57301)))

(declare-fun b_lambda!57303 () Bool)

(assert (= b_lambda!57265 (or (and b!1764749 b_free!48787 (= (toValue!4993 (transformation!3470 (rule!5496 token!523))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764754 b_free!48791 (= (toValue!4993 (transformation!3470 rule!422)) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764773 b_free!48795 (= (toValue!4993 (transformation!3470 (h!24823 rules!3447))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1765481 b_free!48811 (= (toValue!4993 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toValue!4993 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) b_lambda!57303)))

(declare-fun b_lambda!57305 () Bool)

(assert (= b_lambda!57263 (or (and b!1764749 b_free!48789 (= (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764754 b_free!48793 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764773 b_free!48797 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1765481 b_free!48813 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) b_lambda!57305)))

(declare-fun b_lambda!57307 () Bool)

(assert (= b_lambda!57261 (or (and b!1764749 b_free!48789 (= (toChars!4852 (transformation!3470 (rule!5496 token!523))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764754 b_free!48793 (= (toChars!4852 (transformation!3470 rule!422)) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1764773 b_free!48797 (= (toChars!4852 (transformation!3470 (h!24823 rules!3447))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) (and b!1765481 b_free!48813 (= (toChars!4852 (transformation!3470 (h!24823 (t!164591 rules!3447)))) (toChars!4852 (transformation!3470 (rule!5496 (_1!10918 lt!682379)))))) b_lambda!57307)))

(push 1)

(assert (not b_lambda!57305))

(assert (not b!1765155))

(assert (not b!1765355))

(assert (not b!1765509))

(assert (not d!539328))

(assert (not tb!106539))

(assert (not b_next!49491))

(assert (not d!539302))

(assert (not b!1764967))

(assert (not d!539306))

(assert (not b!1765280))

(assert (not b!1765321))

(assert (not b!1765139))

(assert (not d!539288))

(assert (not b!1765515))

(assert (not d!539416))

(assert (not b!1764991))

(assert (not b!1765051))

(assert (not b_next!49495))

(assert b_and!133669)

(assert (not b!1765015))

(assert (not b!1764988))

(assert (not b!1764990))

(assert (not d!539300))

(assert (not b_next!49517))

(assert (not b!1765424))

(assert (not d!539392))

(assert (not d!539252))

(assert (not b!1765273))

(assert (not b!1765085))

(assert (not b!1765514))

(assert (not b!1765175))

(assert (not b!1765332))

(assert (not b!1765326))

(assert (not b!1765405))

(assert (not b_lambda!57303))

(assert (not b!1765174))

(assert (not b!1765417))

(assert (not b!1764913))

(assert (not b!1765281))

(assert (not d!539406))

(assert (not d!539454))

(assert (not d!539268))

(assert (not b!1764992))

(assert (not b!1764996))

(assert (not b!1765049))

(assert (not d!539292))

(assert (not b!1765315))

(assert (not b_next!49501))

(assert (not d!539310))

(assert (not d!539396))

(assert (not b!1765046))

(assert (not b!1765414))

(assert (not b!1764968))

(assert (not b!1765191))

(assert (not b!1765345))

(assert (not b!1765510))

(assert (not d!539440))

(assert tp_is_empty!7839)

(assert (not bm!110838))

(assert (not b!1765436))

(assert (not d!539262))

(assert (not d!539266))

(assert (not b!1765047))

(assert (not b!1765318))

(assert (not b!1765325))

(assert (not b!1765122))

(assert (not b!1765187))

(assert (not d!539324))

(assert (not d!539438))

(assert (not b_lambda!57295))

(assert (not b_next!49515))

(assert (not d!539282))

(assert (not b_next!49499))

(assert (not d!539254))

(assert (not b!1765052))

(assert (not b!1765137))

(assert (not b!1765009))

(assert (not b!1764955))

(assert (not b!1765143))

(assert (not d!539286))

(assert (not b!1765287))

(assert (not d!539318))

(assert b_and!133663)

(assert (not d!539298))

(assert (not b!1765348))

(assert (not d!539404))

(assert (not b!1765302))

(assert (not b!1765511))

(assert (not bm!110839))

(assert (not b!1765406))

(assert (not b!1764949))

(assert (not b!1765438))

(assert (not d!539242))

(assert (not b!1765455))

(assert (not d!539446))

(assert (not b_lambda!57301))

(assert (not d!539308))

(assert (not b_lambda!57279))

(assert (not b!1764953))

(assert (not b!1765435))

(assert (not b!1765272))

(assert (not b!1765190))

(assert (not d!539378))

(assert (not d!539398))

(assert b_and!133657)

(assert (not b!1765156))

(assert (not d!539250))

(assert (not b!1765415))

(assert (not bm!110845))

(assert (not b!1765492))

(assert (not b!1765044))

(assert (not b!1765454))

(assert (not d!539244))

(assert (not b!1764993))

(assert (not b!1765300))

(assert (not b!1765050))

(assert (not d!539248))

(assert (not b!1765086))

(assert (not b!1765157))

(assert (not b!1765517))

(assert (not b!1765513))

(assert (not b!1764957))

(assert (not b!1765117))

(assert (not b!1764969))

(assert (not d!539276))

(assert (not d!539274))

(assert (not d!539290))

(assert (not b!1765356))

(assert (not d!539432))

(assert (not b!1765144))

(assert (not d!539382))

(assert (not b_lambda!57281))

(assert (not b!1765480))

(assert (not b!1765433))

(assert (not d!539388))

(assert (not b_lambda!57307))

(assert b_and!133665)

(assert (not b!1764963))

(assert (not b!1764795))

(assert (not b!1765189))

(assert (not b!1765327))

(assert b_and!133655)

(assert (not b_lambda!57293))

(assert (not d!539430))

(assert (not b!1765490))

(assert (not d!539256))

(assert (not b!1764796))

(assert (not tb!106551))

(assert (not d!539236))

(assert (not b!1765432))

(assert (not b!1765121))

(assert (not b!1765422))

(assert (not b!1765053))

(assert (not b_lambda!57299))

(assert b_and!133667)

(assert (not b!1765351))

(assert (not b!1765456))

(assert (not b!1765518))

(assert (not b!1765516))

(assert (not d!539444))

(assert (not bm!110834))

(assert (not b!1765001))

(assert (not b_next!49497))

(assert (not b!1765173))

(assert (not b!1765479))

(assert (not b!1765498))

(assert (not b!1765357))

(assert (not d!539280))

(assert (not b!1765423))

(assert (not d!539410))

(assert (not b!1765425))

(assert (not b!1764960))

(assert (not b!1765145))

(assert (not b!1765407))

(assert (not b!1764989))

(assert (not b!1764954))

(assert (not b!1765138))

(assert (not tb!106533))

(assert (not b_lambda!57275))

(assert (not bm!110835))

(assert b_and!133659)

(assert (not d!539418))

(assert (not b!1765313))

(assert (not b!1765140))

(assert (not b!1764946))

(assert (not b!1765274))

(assert (not d!539448))

(assert (not b!1765186))

(assert (not b!1765497))

(assert (not bm!110844))

(assert (not b_next!49493))

(assert (not b!1764943))

(assert (not b!1765045))

(assert b_and!133661)

(assert (not b!1764994))

(assert (not b!1765142))

(assert (not b!1765008))

(assert (not d!539452))

(assert (not b!1765418))

(assert (not b_lambda!57291))

(assert (not b_lambda!57273))

(assert (not d!539240))

(assert (not b!1765491))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49491))

(assert (not b_next!49517))

(assert (not b_next!49501))

(assert b_and!133663)

(assert b_and!133657)

(assert b_and!133665)

(assert b_and!133655)

(assert b_and!133667)

(assert (not b_next!49497))

(assert b_and!133659)

(assert (not b_next!49495))

(assert b_and!133669)

(assert (not b_next!49499))

(assert (not b_next!49515))

(assert (not b_next!49493))

(assert b_and!133661)

(check-sat)

(pop 1)

