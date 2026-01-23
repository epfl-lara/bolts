; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170722 () Bool)

(assert start!170722)

(declare-fun b!1735568 () Bool)

(declare-fun b_free!47595 () Bool)

(declare-fun b_next!48299 () Bool)

(assert (=> b!1735568 (= b_free!47595 (not b_next!48299))))

(declare-fun tp!494639 () Bool)

(declare-fun b_and!128475 () Bool)

(assert (=> b!1735568 (= tp!494639 b_and!128475)))

(declare-fun b_free!47597 () Bool)

(declare-fun b_next!48301 () Bool)

(assert (=> b!1735568 (= b_free!47597 (not b_next!48301))))

(declare-fun tp!494635 () Bool)

(declare-fun b_and!128477 () Bool)

(assert (=> b!1735568 (= tp!494635 b_and!128477)))

(declare-fun b!1735565 () Bool)

(declare-fun b_free!47599 () Bool)

(declare-fun b_next!48303 () Bool)

(assert (=> b!1735565 (= b_free!47599 (not b_next!48303))))

(declare-fun tp!494641 () Bool)

(declare-fun b_and!128479 () Bool)

(assert (=> b!1735565 (= tp!494641 b_and!128479)))

(declare-fun b_free!47601 () Bool)

(declare-fun b_next!48305 () Bool)

(assert (=> b!1735565 (= b_free!47601 (not b_next!48305))))

(declare-fun tp!494634 () Bool)

(declare-fun b_and!128481 () Bool)

(assert (=> b!1735565 (= tp!494634 b_and!128481)))

(declare-fun b!1735557 () Bool)

(declare-fun b_free!47603 () Bool)

(declare-fun b_next!48307 () Bool)

(assert (=> b!1735557 (= b_free!47603 (not b_next!48307))))

(declare-fun tp!494643 () Bool)

(declare-fun b_and!128483 () Bool)

(assert (=> b!1735557 (= tp!494643 b_and!128483)))

(declare-fun b_free!47605 () Bool)

(declare-fun b_next!48309 () Bool)

(assert (=> b!1735557 (= b_free!47605 (not b_next!48309))))

(declare-fun tp!494637 () Bool)

(declare-fun b_and!128485 () Bool)

(assert (=> b!1735557 (= tp!494637 b_and!128485)))

(declare-fun b!1735596 () Bool)

(declare-fun e!1110647 () Bool)

(assert (=> b!1735596 (= e!1110647 true)))

(declare-fun b!1735595 () Bool)

(declare-fun e!1110646 () Bool)

(assert (=> b!1735595 (= e!1110646 e!1110647)))

(declare-fun b!1735594 () Bool)

(declare-fun e!1110645 () Bool)

(assert (=> b!1735594 (= e!1110645 e!1110646)))

(declare-fun b!1735580 () Bool)

(assert (=> b!1735580 e!1110645))

(assert (= b!1735595 b!1735596))

(assert (= b!1735594 b!1735595))

(assert (= b!1735580 b!1735594))

(declare-fun order!11821 () Int)

(declare-fun order!11819 () Int)

(declare-datatypes ((List!19121 0))(
  ( (Nil!19051) (Cons!19051 (h!24452 (_ BitVec 16)) (t!161284 List!19121)) )
))
(declare-datatypes ((TokenValue!3477 0))(
  ( (FloatLiteralValue!6954 (text!24784 List!19121)) (TokenValueExt!3476 (__x!12256 Int)) (Broken!17385 (value!106176 List!19121)) (Object!3546) (End!3477) (Def!3477) (Underscore!3477) (Match!3477) (Else!3477) (Error!3477) (Case!3477) (If!3477) (Extends!3477) (Abstract!3477) (Class!3477) (Val!3477) (DelimiterValue!6954 (del!3537 List!19121)) (KeywordValue!3483 (value!106177 List!19121)) (CommentValue!6954 (value!106178 List!19121)) (WhitespaceValue!6954 (value!106179 List!19121)) (IndentationValue!3477 (value!106180 List!19121)) (String!21716) (Int32!3477) (Broken!17386 (value!106181 List!19121)) (Boolean!3478) (Unit!32954) (OperatorValue!3480 (op!3537 List!19121)) (IdentifierValue!6954 (value!106182 List!19121)) (IdentifierValue!6955 (value!106183 List!19121)) (WhitespaceValue!6955 (value!106184 List!19121)) (True!6954) (False!6954) (Broken!17387 (value!106185 List!19121)) (Broken!17388 (value!106186 List!19121)) (True!6955) (RightBrace!3477) (RightBracket!3477) (Colon!3477) (Null!3477) (Comma!3477) (LeftBracket!3477) (False!6955) (LeftBrace!3477) (ImaginaryLiteralValue!3477 (text!24785 List!19121)) (StringLiteralValue!10431 (value!106187 List!19121)) (EOFValue!3477 (value!106188 List!19121)) (IdentValue!3477 (value!106189 List!19121)) (DelimiterValue!6955 (value!106190 List!19121)) (DedentValue!3477 (value!106191 List!19121)) (NewLineValue!3477 (value!106192 List!19121)) (IntegerValue!10431 (value!106193 (_ BitVec 32)) (text!24786 List!19121)) (IntegerValue!10432 (value!106194 Int) (text!24787 List!19121)) (Times!3477) (Or!3477) (Equal!3477) (Minus!3477) (Broken!17389 (value!106195 List!19121)) (And!3477) (Div!3477) (LessEqual!3477) (Mod!3477) (Concat!8192) (Not!3477) (Plus!3477) (SpaceValue!3477 (value!106196 List!19121)) (IntegerValue!10433 (value!106197 Int) (text!24788 List!19121)) (StringLiteralValue!10432 (text!24789 List!19121)) (FloatLiteralValue!6955 (text!24790 List!19121)) (BytesLiteralValue!3477 (value!106198 List!19121)) (CommentValue!6955 (value!106199 List!19121)) (StringLiteralValue!10433 (value!106200 List!19121)) (ErrorTokenValue!3477 (msg!3538 List!19121)) )
))
(declare-datatypes ((C!9604 0))(
  ( (C!9605 (val!5398 Int)) )
))
(declare-datatypes ((List!19122 0))(
  ( (Nil!19052) (Cons!19052 (h!24453 C!9604) (t!161285 List!19122)) )
))
(declare-datatypes ((String!21717 0))(
  ( (String!21718 (value!106201 String)) )
))
(declare-datatypes ((Regex!4715 0))(
  ( (ElementMatch!4715 (c!283304 C!9604)) (Concat!8193 (regOne!9942 Regex!4715) (regTwo!9942 Regex!4715)) (EmptyExpr!4715) (Star!4715 (reg!5044 Regex!4715)) (EmptyLang!4715) (Union!4715 (regOne!9943 Regex!4715) (regTwo!9943 Regex!4715)) )
))
(declare-datatypes ((IArray!12679 0))(
  ( (IArray!12680 (innerList!6397 List!19122)) )
))
(declare-datatypes ((Conc!6337 0))(
  ( (Node!6337 (left!15228 Conc!6337) (right!15558 Conc!6337) (csize!12904 Int) (cheight!6548 Int)) (Leaf!9251 (xs!9213 IArray!12679) (csize!12905 Int)) (Empty!6337) )
))
(declare-datatypes ((BalanceConc!12618 0))(
  ( (BalanceConc!12619 (c!283305 Conc!6337)) )
))
(declare-datatypes ((TokenValueInjection!6614 0))(
  ( (TokenValueInjection!6615 (toValue!4894 Int) (toChars!4753 Int)) )
))
(declare-datatypes ((Rule!6574 0))(
  ( (Rule!6575 (regex!3387 Regex!4715) (tag!3719 String!21717) (isSeparator!3387 Bool) (transformation!3387 TokenValueInjection!6614)) )
))
(declare-datatypes ((Token!6340 0))(
  ( (Token!6341 (value!106202 TokenValue!3477) (rule!5377 Rule!6574) (size!15140 Int) (originalCharacters!4201 List!19122)) )
))
(declare-datatypes ((tuple2!18718 0))(
  ( (tuple2!18719 (_1!10761 Token!6340) (_2!10761 List!19122)) )
))
(declare-fun lt!667345 () tuple2!18718)

(declare-fun lambda!69482 () Int)

(declare-fun dynLambda!8944 (Int Int) Int)

(declare-fun dynLambda!8945 (Int Int) Int)

(assert (=> b!1735596 (< (dynLambda!8944 order!11819 (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) (dynLambda!8945 order!11821 lambda!69482))))

(declare-fun order!11823 () Int)

(declare-fun dynLambda!8946 (Int Int) Int)

(assert (=> b!1735596 (< (dynLambda!8946 order!11823 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) (dynLambda!8945 order!11821 lambda!69482))))

(declare-fun b!1735545 () Bool)

(declare-datatypes ((Unit!32955 0))(
  ( (Unit!32956) )
))
(declare-fun e!1110612 () Unit!32955)

(declare-fun Unit!32957 () Unit!32955)

(assert (=> b!1735545 (= e!1110612 Unit!32957)))

(declare-datatypes ((LexerInterface!3016 0))(
  ( (LexerInterfaceExt!3013 (__x!12257 Int)) (Lexer!3014) )
))
(declare-fun thiss!24550 () LexerInterface!3016)

(declare-fun lt!667326 () List!19122)

(declare-datatypes ((List!19123 0))(
  ( (Nil!19053) (Cons!19053 (h!24454 Rule!6574) (t!161286 List!19123)) )
))
(declare-fun rules!3447 () List!19123)

(declare-fun lt!667350 () Unit!32955)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!136 (LexerInterface!3016 List!19123 List!19122 Token!6340 Rule!6574 List!19122) Unit!32955)

(assert (=> b!1735545 (= lt!667350 (lemmaMaxPrefixThenMatchesRulesRegex!136 thiss!24550 rules!3447 lt!667326 (_1!10761 lt!667345) (rule!5377 (_1!10761 lt!667345)) (_2!10761 lt!667345)))))

(declare-fun lt!667349 () Regex!4715)

(declare-fun lt!667339 () List!19122)

(declare-fun matchR!2189 (Regex!4715 List!19122) Bool)

(assert (=> b!1735545 (matchR!2189 lt!667349 lt!667339)))

(declare-fun lt!667338 () List!19122)

(declare-fun lt!667352 () List!19122)

(declare-fun getSuffix!822 (List!19122 List!19122) List!19122)

(assert (=> b!1735545 (= lt!667338 (getSuffix!822 lt!667326 lt!667352))))

(declare-fun suffix!1421 () List!19122)

(declare-fun lt!667313 () Unit!32955)

(declare-fun lemmaSamePrefixThenSameSuffix!772 (List!19122 List!19122 List!19122 List!19122 List!19122) Unit!32955)

(assert (=> b!1735545 (= lt!667313 (lemmaSamePrefixThenSameSuffix!772 lt!667352 suffix!1421 lt!667352 lt!667338 lt!667326))))

(assert (=> b!1735545 (= suffix!1421 lt!667338)))

(declare-fun lt!667342 () Unit!32955)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!223 (List!19122 List!19122) Unit!32955)

(assert (=> b!1735545 (= lt!667342 (lemmaAddHeadSuffixToPrefixStillPrefix!223 lt!667352 lt!667326))))

(declare-fun isPrefix!1628 (List!19122 List!19122) Bool)

(declare-fun ++!5212 (List!19122 List!19122) List!19122)

(declare-fun head!3962 (List!19122) C!9604)

(assert (=> b!1735545 (isPrefix!1628 (++!5212 lt!667352 (Cons!19052 (head!3962 lt!667338) Nil!19052)) lt!667326)))

(declare-fun lt!667330 () List!19122)

(declare-fun lt!667335 () Unit!32955)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!103 (List!19122 List!19122 List!19122) Unit!32955)

(assert (=> b!1735545 (= lt!667335 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!103 lt!667339 lt!667330 lt!667326))))

(assert (=> b!1735545 (isPrefix!1628 lt!667330 lt!667339)))

(declare-fun lt!667343 () Unit!32955)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!96 (Regex!4715 List!19122 List!19122) Unit!32955)

(assert (=> b!1735545 (= lt!667343 (lemmaNotPrefixMatchThenCannotMatchLonger!96 lt!667349 lt!667330 lt!667339))))

(assert (=> b!1735545 false))

(declare-fun b!1735546 () Bool)

(declare-fun res!779885 () Bool)

(declare-fun e!1110620 () Bool)

(assert (=> b!1735546 (=> (not res!779885) (not e!1110620))))

(declare-fun isEmpty!11989 (List!19123) Bool)

(assert (=> b!1735546 (= res!779885 (not (isEmpty!11989 rules!3447)))))

(declare-fun b!1735548 () Bool)

(declare-fun e!1110638 () Unit!32955)

(declare-fun Unit!32958 () Unit!32955)

(assert (=> b!1735548 (= e!1110638 Unit!32958)))

(declare-fun b!1735549 () Bool)

(declare-fun e!1110625 () Bool)

(declare-fun e!1110613 () Bool)

(declare-fun tp!494640 () Bool)

(assert (=> b!1735549 (= e!1110625 (and e!1110613 tp!494640))))

(declare-fun b!1735550 () Bool)

(declare-fun e!1110627 () Bool)

(declare-fun e!1110615 () Bool)

(assert (=> b!1735550 (= e!1110627 e!1110615)))

(declare-fun res!779890 () Bool)

(assert (=> b!1735550 (=> res!779890 e!1110615)))

(declare-fun lt!667344 () Int)

(declare-fun lt!667329 () TokenValue!3477)

(declare-datatypes ((Option!3798 0))(
  ( (None!3797) (Some!3797 (v!25222 tuple2!18718)) )
))
(declare-fun lt!667311 () Option!3798)

(assert (=> b!1735550 (= res!779890 (not (= lt!667311 (Some!3797 (tuple2!18719 (Token!6341 lt!667329 (rule!5377 (_1!10761 lt!667345)) lt!667344 lt!667339) (_2!10761 lt!667345))))))))

(declare-fun lt!667307 () BalanceConc!12618)

(declare-fun size!15141 (BalanceConc!12618) Int)

(assert (=> b!1735550 (= lt!667344 (size!15141 lt!667307))))

(declare-fun apply!5192 (TokenValueInjection!6614 BalanceConc!12618) TokenValue!3477)

(assert (=> b!1735550 (= lt!667329 (apply!5192 (transformation!3387 (rule!5377 (_1!10761 lt!667345))) lt!667307))))

(declare-fun lt!667347 () Unit!32955)

(declare-fun lemmaCharactersSize!459 (Token!6340) Unit!32955)

(assert (=> b!1735550 (= lt!667347 (lemmaCharactersSize!459 (_1!10761 lt!667345)))))

(declare-fun lt!667337 () Unit!32955)

(declare-fun lemmaEqSameImage!312 (TokenValueInjection!6614 BalanceConc!12618 BalanceConc!12618) Unit!32955)

(declare-fun seqFromList!2361 (List!19122) BalanceConc!12618)

(assert (=> b!1735550 (= lt!667337 (lemmaEqSameImage!312 (transformation!3387 (rule!5377 (_1!10761 lt!667345))) lt!667307 (seqFromList!2361 (originalCharacters!4201 (_1!10761 lt!667345)))))))

(declare-fun b!1735551 () Bool)

(declare-fun e!1110631 () Bool)

(assert (=> b!1735551 (= e!1110631 e!1110627)))

(declare-fun res!779891 () Bool)

(assert (=> b!1735551 (=> res!779891 e!1110627)))

(declare-fun list!7704 (BalanceConc!12618) List!19122)

(declare-fun dynLambda!8947 (Int TokenValue!3477) BalanceConc!12618)

(declare-fun dynLambda!8948 (Int BalanceConc!12618) TokenValue!3477)

(assert (=> b!1735551 (= res!779891 (not (= (list!7704 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (dynLambda!8948 (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) lt!667307))) lt!667339)))))

(declare-fun lt!667340 () Unit!32955)

(declare-fun lemmaSemiInverse!533 (TokenValueInjection!6614 BalanceConc!12618) Unit!32955)

(assert (=> b!1735551 (= lt!667340 (lemmaSemiInverse!533 (transformation!3387 (rule!5377 (_1!10761 lt!667345))) lt!667307))))

(declare-fun b!1735552 () Bool)

(declare-fun res!779902 () Bool)

(assert (=> b!1735552 (=> (not res!779902) (not e!1110620))))

(declare-fun rulesInvariant!2685 (LexerInterface!3016 List!19123) Bool)

(assert (=> b!1735552 (= res!779902 (rulesInvariant!2685 thiss!24550 rules!3447))))

(declare-fun tp!494642 () Bool)

(declare-fun e!1110634 () Bool)

(declare-fun b!1735553 () Bool)

(declare-fun inv!24662 (String!21717) Bool)

(declare-fun inv!24667 (TokenValueInjection!6614) Bool)

(assert (=> b!1735553 (= e!1110613 (and tp!494642 (inv!24662 (tag!3719 (h!24454 rules!3447))) (inv!24667 (transformation!3387 (h!24454 rules!3447))) e!1110634))))

(declare-fun b!1735554 () Bool)

(declare-fun e!1110617 () Bool)

(declare-fun e!1110614 () Bool)

(assert (=> b!1735554 (= e!1110617 (not e!1110614))))

(declare-fun res!779883 () Bool)

(assert (=> b!1735554 (=> res!779883 e!1110614)))

(declare-fun rule!422 () Rule!6574)

(assert (=> b!1735554 (= res!779883 (not (matchR!2189 (regex!3387 rule!422) lt!667352)))))

(declare-fun ruleValid!886 (LexerInterface!3016 Rule!6574) Bool)

(assert (=> b!1735554 (ruleValid!886 thiss!24550 rule!422)))

(declare-fun lt!667315 () Unit!32955)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!410 (LexerInterface!3016 Rule!6574 List!19123) Unit!32955)

(assert (=> b!1735554 (= lt!667315 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!410 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1735555 () Bool)

(declare-fun e!1110629 () Bool)

(declare-fun e!1110635 () Bool)

(assert (=> b!1735555 (= e!1110629 e!1110635)))

(declare-fun res!779905 () Bool)

(assert (=> b!1735555 (=> res!779905 e!1110635)))

(declare-fun lt!667319 () Bool)

(assert (=> b!1735555 (= res!779905 lt!667319)))

(declare-fun lt!667312 () Unit!32955)

(assert (=> b!1735555 (= lt!667312 e!1110612)))

(declare-fun c!283302 () Bool)

(assert (=> b!1735555 (= c!283302 lt!667319)))

(declare-fun lt!667336 () Int)

(assert (=> b!1735555 (= lt!667319 (> lt!667344 lt!667336))))

(declare-fun lt!667328 () BalanceConc!12618)

(assert (=> b!1735555 (= lt!667336 (size!15141 lt!667328))))

(assert (=> b!1735555 (matchR!2189 lt!667349 lt!667352)))

(declare-fun token!523 () Token!6340)

(declare-fun lt!667314 () Unit!32955)

(assert (=> b!1735555 (= lt!667314 (lemmaMaxPrefixThenMatchesRulesRegex!136 thiss!24550 rules!3447 lt!667352 token!523 rule!422 Nil!19052))))

(declare-fun b!1735556 () Bool)

(assert (=> b!1735556 (= e!1110615 e!1110629)))

(declare-fun res!779901 () Bool)

(assert (=> b!1735556 (=> res!779901 e!1110629)))

(declare-fun lt!667346 () List!19122)

(declare-fun lt!667327 () Option!3798)

(assert (=> b!1735556 (= res!779901 (or (not (= lt!667346 (_2!10761 lt!667345))) (not (= lt!667327 (Some!3797 (tuple2!18719 (_1!10761 lt!667345) lt!667346))))))))

(assert (=> b!1735556 (= (_2!10761 lt!667345) lt!667346)))

(declare-fun lt!667332 () Unit!32955)

(assert (=> b!1735556 (= lt!667332 (lemmaSamePrefixThenSameSuffix!772 lt!667339 (_2!10761 lt!667345) lt!667339 lt!667346 lt!667326))))

(assert (=> b!1735556 (= lt!667346 (getSuffix!822 lt!667326 lt!667339))))

(declare-fun lt!667322 () Token!6340)

(assert (=> b!1735556 (= lt!667327 (Some!3797 (tuple2!18719 lt!667322 (_2!10761 lt!667345))))))

(declare-fun maxPrefixOneRule!946 (LexerInterface!3016 Rule!6574 List!19122) Option!3798)

(assert (=> b!1735556 (= lt!667327 (maxPrefixOneRule!946 thiss!24550 (rule!5377 (_1!10761 lt!667345)) lt!667326))))

(declare-fun lt!667321 () BalanceConc!12618)

(declare-fun size!15142 (List!19122) Int)

(assert (=> b!1735556 (= lt!667322 (Token!6341 (apply!5192 (transformation!3387 (rule!5377 (_1!10761 lt!667345))) lt!667321) (rule!5377 (_1!10761 lt!667345)) (size!15142 lt!667339) lt!667339))))

(assert (=> b!1735556 (= lt!667321 (seqFromList!2361 lt!667339))))

(declare-fun lt!667318 () Unit!32955)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!345 (LexerInterface!3016 List!19123 List!19122 List!19122 List!19122 Rule!6574) Unit!32955)

(assert (=> b!1735556 (= lt!667318 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!345 thiss!24550 rules!3447 lt!667339 lt!667326 (_2!10761 lt!667345) (rule!5377 (_1!10761 lt!667345))))))

(declare-fun e!1110626 () Bool)

(assert (=> b!1735557 (= e!1110626 (and tp!494643 tp!494637))))

(declare-fun b!1735558 () Bool)

(declare-fun res!779903 () Bool)

(declare-fun e!1110632 () Bool)

(assert (=> b!1735558 (=> res!779903 e!1110632)))

(declare-fun contains!3409 (List!19123 Rule!6574) Bool)

(assert (=> b!1735558 (= res!779903 (not (contains!3409 rules!3447 (rule!5377 (_1!10761 lt!667345)))))))

(declare-fun b!1735559 () Bool)

(declare-fun e!1110616 () Bool)

(declare-fun tp_is_empty!7673 () Bool)

(declare-fun tp!494636 () Bool)

(assert (=> b!1735559 (= e!1110616 (and tp_is_empty!7673 tp!494636))))

(declare-fun b!1735560 () Bool)

(declare-fun res!779884 () Bool)

(assert (=> b!1735560 (=> res!779884 e!1110614)))

(declare-fun isEmpty!11990 (List!19122) Bool)

(assert (=> b!1735560 (= res!779884 (isEmpty!11990 suffix!1421))))

(declare-fun b!1735561 () Bool)

(declare-fun e!1110628 () Bool)

(declare-fun e!1110611 () Bool)

(declare-fun tp!494638 () Bool)

(declare-fun inv!21 (TokenValue!3477) Bool)

(assert (=> b!1735561 (= e!1110611 (and (inv!21 (value!106202 token!523)) e!1110628 tp!494638))))

(declare-fun res!779906 () Bool)

(assert (=> start!170722 (=> (not res!779906) (not e!1110620))))

(get-info :version)

(assert (=> start!170722 (= res!779906 ((_ is Lexer!3014) thiss!24550))))

(assert (=> start!170722 e!1110620))

(assert (=> start!170722 e!1110616))

(declare-fun e!1110637 () Bool)

(assert (=> start!170722 e!1110637))

(assert (=> start!170722 true))

(declare-fun inv!24668 (Token!6340) Bool)

(assert (=> start!170722 (and (inv!24668 token!523) e!1110611)))

(assert (=> start!170722 e!1110625))

(declare-fun tp!494644 () Bool)

(declare-fun b!1735547 () Bool)

(declare-fun e!1110608 () Bool)

(assert (=> b!1735547 (= e!1110628 (and tp!494644 (inv!24662 (tag!3719 (rule!5377 token!523))) (inv!24667 (transformation!3387 (rule!5377 token!523))) e!1110608))))

(declare-fun b!1735562 () Bool)

(declare-fun e!1110610 () Bool)

(assert (=> b!1735562 (= e!1110610 true)))

(declare-fun lt!667316 () Bool)

(assert (=> b!1735562 (= lt!667316 (ruleValid!886 thiss!24550 (rule!5377 (_1!10761 lt!667345))))))

(declare-fun b!1735563 () Bool)

(declare-fun Unit!32959 () Unit!32955)

(assert (=> b!1735563 (= e!1110638 Unit!32959)))

(declare-fun lt!667317 () Unit!32955)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!184 (LexerInterface!3016 List!19123 Rule!6574 List!19122 List!19122 List!19122 Rule!6574) Unit!32955)

(assert (=> b!1735563 (= lt!667317 (lemmaMaxPrefixOutputsMaxPrefix!184 thiss!24550 rules!3447 (rule!5377 (_1!10761 lt!667345)) lt!667339 lt!667326 lt!667352 rule!422))))

(assert (=> b!1735563 false))

(declare-fun b!1735564 () Bool)

(declare-fun e!1110630 () Bool)

(assert (=> b!1735564 (= e!1110630 e!1110617)))

(declare-fun res!779887 () Bool)

(assert (=> b!1735564 (=> (not res!779887) (not e!1110617))))

(declare-fun lt!667324 () tuple2!18718)

(assert (=> b!1735564 (= res!779887 (= (_1!10761 lt!667324) token!523))))

(declare-fun lt!667320 () Option!3798)

(declare-fun get!5709 (Option!3798) tuple2!18718)

(assert (=> b!1735564 (= lt!667324 (get!5709 lt!667320))))

(assert (=> b!1735565 (= e!1110634 (and tp!494641 tp!494634))))

(declare-fun b!1735566 () Bool)

(declare-fun e!1110618 () Bool)

(declare-fun e!1110622 () Bool)

(assert (=> b!1735566 (= e!1110618 e!1110622)))

(declare-fun res!779897 () Bool)

(assert (=> b!1735566 (=> res!779897 e!1110622)))

(assert (=> b!1735566 (= res!779897 (not (isPrefix!1628 lt!667339 lt!667326)))))

(assert (=> b!1735566 (isPrefix!1628 lt!667339 (++!5212 lt!667339 (_2!10761 lt!667345)))))

(declare-fun lt!667334 () Unit!32955)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1138 (List!19122 List!19122) Unit!32955)

(assert (=> b!1735566 (= lt!667334 (lemmaConcatTwoListThenFirstIsPrefix!1138 lt!667339 (_2!10761 lt!667345)))))

(assert (=> b!1735566 (= lt!667339 (list!7704 lt!667307))))

(declare-fun charsOf!2036 (Token!6340) BalanceConc!12618)

(assert (=> b!1735566 (= lt!667307 (charsOf!2036 (_1!10761 lt!667345)))))

(declare-fun e!1110633 () Bool)

(assert (=> b!1735566 e!1110633))

(declare-fun res!779892 () Bool)

(assert (=> b!1735566 (=> (not res!779892) (not e!1110633))))

(declare-datatypes ((Option!3799 0))(
  ( (None!3798) (Some!3798 (v!25223 Rule!6574)) )
))
(declare-fun lt!667333 () Option!3799)

(declare-fun isDefined!3141 (Option!3799) Bool)

(assert (=> b!1735566 (= res!779892 (isDefined!3141 lt!667333))))

(declare-fun getRuleFromTag!437 (LexerInterface!3016 List!19123 String!21717) Option!3799)

(assert (=> b!1735566 (= lt!667333 (getRuleFromTag!437 thiss!24550 rules!3447 (tag!3719 (rule!5377 (_1!10761 lt!667345)))))))

(declare-fun lt!667325 () Unit!32955)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!437 (LexerInterface!3016 List!19123 List!19122 Token!6340) Unit!32955)

(assert (=> b!1735566 (= lt!667325 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!437 thiss!24550 rules!3447 lt!667326 (_1!10761 lt!667345)))))

(assert (=> b!1735566 (= lt!667345 (get!5709 lt!667311))))

(declare-fun lt!667308 () Unit!32955)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!540 (LexerInterface!3016 List!19123 List!19122 List!19122) Unit!32955)

(assert (=> b!1735566 (= lt!667308 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!540 thiss!24550 rules!3447 lt!667352 suffix!1421))))

(declare-fun maxPrefix!1570 (LexerInterface!3016 List!19123 List!19122) Option!3798)

(assert (=> b!1735566 (= lt!667311 (maxPrefix!1570 thiss!24550 rules!3447 lt!667326))))

(assert (=> b!1735566 (isPrefix!1628 lt!667352 lt!667326)))

(declare-fun lt!667341 () Unit!32955)

(assert (=> b!1735566 (= lt!667341 (lemmaConcatTwoListThenFirstIsPrefix!1138 lt!667352 suffix!1421))))

(assert (=> b!1735566 (= lt!667326 (++!5212 lt!667352 suffix!1421))))

(declare-fun b!1735567 () Bool)

(declare-fun res!779888 () Bool)

(assert (=> b!1735567 (=> (not res!779888) (not e!1110620))))

(assert (=> b!1735567 (= res!779888 (contains!3409 rules!3447 rule!422))))

(assert (=> b!1735568 (= e!1110608 (and tp!494639 tp!494635))))

(declare-fun b!1735569 () Bool)

(declare-fun Unit!32960 () Unit!32955)

(assert (=> b!1735569 (= e!1110612 Unit!32960)))

(declare-fun b!1735570 () Bool)

(declare-fun e!1110619 () Bool)

(assert (=> b!1735570 (= e!1110635 e!1110619)))

(declare-fun res!779898 () Bool)

(assert (=> b!1735570 (=> res!779898 e!1110619)))

(assert (=> b!1735570 (= res!779898 (not (= lt!667344 lt!667336)))))

(declare-fun lt!667331 () Unit!32955)

(assert (=> b!1735570 (= lt!667331 e!1110638)))

(declare-fun c!283303 () Bool)

(assert (=> b!1735570 (= c!283303 (< lt!667344 lt!667336))))

(declare-fun b!1735571 () Bool)

(declare-fun res!779881 () Bool)

(assert (=> b!1735571 (=> (not res!779881) (not e!1110617))))

(assert (=> b!1735571 (= res!779881 (isEmpty!11990 (_2!10761 lt!667324)))))

(declare-fun b!1735572 () Bool)

(declare-fun res!779907 () Bool)

(assert (=> b!1735572 (=> res!779907 e!1110627)))

(assert (=> b!1735572 (= res!779907 (not (= lt!667307 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (value!106202 (_1!10761 lt!667345))))))))

(declare-fun b!1735573 () Bool)

(assert (=> b!1735573 (= e!1110619 e!1110632)))

(declare-fun res!779908 () Bool)

(assert (=> b!1735573 (=> res!779908 e!1110632)))

(assert (=> b!1735573 (= res!779908 (= (rule!5377 (_1!10761 lt!667345)) (rule!5377 token!523)))))

(assert (=> b!1735573 (= suffix!1421 (_2!10761 lt!667345))))

(declare-fun lt!667310 () Unit!32955)

(assert (=> b!1735573 (= lt!667310 (lemmaSamePrefixThenSameSuffix!772 lt!667352 suffix!1421 lt!667352 (_2!10761 lt!667345) lt!667326))))

(assert (=> b!1735573 (= lt!667339 lt!667352)))

(declare-fun lt!667309 () Unit!32955)

(declare-fun lemmaIsPrefixSameLengthThenSameList!215 (List!19122 List!19122 List!19122) Unit!32955)

(assert (=> b!1735573 (= lt!667309 (lemmaIsPrefixSameLengthThenSameList!215 lt!667339 lt!667352 lt!667326))))

(declare-fun b!1735574 () Bool)

(declare-fun e!1110624 () Bool)

(declare-fun lt!667351 () Rule!6574)

(assert (=> b!1735574 (= e!1110624 (= (rule!5377 (_1!10761 lt!667345)) lt!667351))))

(declare-fun b!1735575 () Bool)

(assert (=> b!1735575 (= e!1110614 e!1110618)))

(declare-fun res!779895 () Bool)

(assert (=> b!1735575 (=> res!779895 e!1110618)))

(declare-fun prefixMatch!600 (Regex!4715 List!19122) Bool)

(assert (=> b!1735575 (= res!779895 (prefixMatch!600 lt!667349 lt!667330))))

(assert (=> b!1735575 (= lt!667330 (++!5212 lt!667352 (Cons!19052 (head!3962 suffix!1421) Nil!19052)))))

(declare-fun rulesRegex!745 (LexerInterface!3016 List!19123) Regex!4715)

(assert (=> b!1735575 (= lt!667349 (rulesRegex!745 thiss!24550 rules!3447))))

(declare-fun b!1735576 () Bool)

(declare-fun res!779889 () Bool)

(assert (=> b!1735576 (=> res!779889 e!1110632)))

(declare-fun getIndex!154 (List!19123 Rule!6574) Int)

(assert (=> b!1735576 (= res!779889 (>= (getIndex!154 rules!3447 (rule!5377 token!523)) (getIndex!154 rules!3447 (rule!5377 (_1!10761 lt!667345)))))))

(declare-fun b!1735577 () Bool)

(declare-fun res!779886 () Bool)

(assert (=> b!1735577 (=> res!779886 e!1110632)))

(assert (=> b!1735577 (= res!779886 (isEmpty!11990 lt!667339))))

(declare-fun b!1735578 () Bool)

(declare-fun res!779882 () Bool)

(assert (=> b!1735578 (=> (not res!779882) (not e!1110617))))

(assert (=> b!1735578 (= res!779882 (= (rule!5377 token!523) rule!422))))

(declare-fun b!1735579 () Bool)

(declare-fun res!779904 () Bool)

(assert (=> b!1735579 (=> res!779904 e!1110632)))

(assert (=> b!1735579 (= res!779904 (not (contains!3409 rules!3447 (rule!5377 token!523))))))

(assert (=> b!1735580 (= e!1110622 e!1110631)))

(declare-fun res!779894 () Bool)

(assert (=> b!1735580 (=> res!779894 e!1110631)))

(declare-fun Forall!762 (Int) Bool)

(assert (=> b!1735580 (= res!779894 (not (Forall!762 lambda!69482)))))

(declare-fun lt!667348 () Unit!32955)

(declare-fun lemmaInv!594 (TokenValueInjection!6614) Unit!32955)

(assert (=> b!1735580 (= lt!667348 (lemmaInv!594 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))))))

(declare-fun b!1735581 () Bool)

(assert (=> b!1735581 (= e!1110620 e!1110630)))

(declare-fun res!779899 () Bool)

(assert (=> b!1735581 (=> (not res!779899) (not e!1110630))))

(declare-fun isDefined!3142 (Option!3798) Bool)

(assert (=> b!1735581 (= res!779899 (isDefined!3142 lt!667320))))

(assert (=> b!1735581 (= lt!667320 (maxPrefix!1570 thiss!24550 rules!3447 lt!667352))))

(assert (=> b!1735581 (= lt!667352 (list!7704 lt!667328))))

(assert (=> b!1735581 (= lt!667328 (charsOf!2036 token!523))))

(declare-fun b!1735582 () Bool)

(declare-fun res!779900 () Bool)

(assert (=> b!1735582 (=> res!779900 e!1110622)))

(assert (=> b!1735582 (= res!779900 (not (matchR!2189 (regex!3387 (rule!5377 (_1!10761 lt!667345))) lt!667339)))))

(declare-fun b!1735583 () Bool)

(assert (=> b!1735583 (= e!1110632 e!1110610)))

(declare-fun res!779896 () Bool)

(assert (=> b!1735583 (=> res!779896 e!1110610)))

(assert (=> b!1735583 (= res!779896 (not (= lt!667311 (Some!3797 (tuple2!18719 lt!667322 lt!667346)))))))

(declare-fun lt!667323 () Unit!32955)

(assert (=> b!1735583 (= lt!667323 (lemmaSemiInverse!533 (transformation!3387 (rule!5377 (_1!10761 lt!667345))) lt!667321))))

(declare-fun b!1735584 () Bool)

(declare-fun tp!494633 () Bool)

(assert (=> b!1735584 (= e!1110637 (and tp!494633 (inv!24662 (tag!3719 rule!422)) (inv!24667 (transformation!3387 rule!422)) e!1110626))))

(declare-fun b!1735585 () Bool)

(assert (=> b!1735585 (= e!1110633 e!1110624)))

(declare-fun res!779893 () Bool)

(assert (=> b!1735585 (=> (not res!779893) (not e!1110624))))

(assert (=> b!1735585 (= res!779893 (matchR!2189 (regex!3387 lt!667351) (list!7704 (charsOf!2036 (_1!10761 lt!667345)))))))

(declare-fun get!5710 (Option!3799) Rule!6574)

(assert (=> b!1735585 (= lt!667351 (get!5710 lt!667333))))

(assert (= (and start!170722 res!779906) b!1735546))

(assert (= (and b!1735546 res!779885) b!1735552))

(assert (= (and b!1735552 res!779902) b!1735567))

(assert (= (and b!1735567 res!779888) b!1735581))

(assert (= (and b!1735581 res!779899) b!1735564))

(assert (= (and b!1735564 res!779887) b!1735571))

(assert (= (and b!1735571 res!779881) b!1735578))

(assert (= (and b!1735578 res!779882) b!1735554))

(assert (= (and b!1735554 (not res!779883)) b!1735560))

(assert (= (and b!1735560 (not res!779884)) b!1735575))

(assert (= (and b!1735575 (not res!779895)) b!1735566))

(assert (= (and b!1735566 res!779892) b!1735585))

(assert (= (and b!1735585 res!779893) b!1735574))

(assert (= (and b!1735566 (not res!779897)) b!1735582))

(assert (= (and b!1735582 (not res!779900)) b!1735580))

(assert (= (and b!1735580 (not res!779894)) b!1735551))

(assert (= (and b!1735551 (not res!779891)) b!1735572))

(assert (= (and b!1735572 (not res!779907)) b!1735550))

(assert (= (and b!1735550 (not res!779890)) b!1735556))

(assert (= (and b!1735556 (not res!779901)) b!1735555))

(assert (= (and b!1735555 c!283302) b!1735545))

(assert (= (and b!1735555 (not c!283302)) b!1735569))

(assert (= (and b!1735555 (not res!779905)) b!1735570))

(assert (= (and b!1735570 c!283303) b!1735563))

(assert (= (and b!1735570 (not c!283303)) b!1735548))

(assert (= (and b!1735570 (not res!779898)) b!1735573))

(assert (= (and b!1735573 (not res!779908)) b!1735576))

(assert (= (and b!1735576 (not res!779889)) b!1735558))

(assert (= (and b!1735558 (not res!779903)) b!1735579))

(assert (= (and b!1735579 (not res!779904)) b!1735577))

(assert (= (and b!1735577 (not res!779886)) b!1735583))

(assert (= (and b!1735583 (not res!779896)) b!1735562))

(assert (= (and start!170722 ((_ is Cons!19052) suffix!1421)) b!1735559))

(assert (= b!1735584 b!1735557))

(assert (= start!170722 b!1735584))

(assert (= b!1735547 b!1735568))

(assert (= b!1735561 b!1735547))

(assert (= start!170722 b!1735561))

(assert (= b!1735553 b!1735565))

(assert (= b!1735549 b!1735553))

(assert (= (and start!170722 ((_ is Cons!19053) rules!3447)) b!1735549))

(declare-fun b_lambda!55495 () Bool)

(assert (=> (not b_lambda!55495) (not b!1735551)))

(declare-fun t!161267 () Bool)

(declare-fun tb!103581 () Bool)

(assert (=> (and b!1735568 (= (toChars!4753 (transformation!3387 (rule!5377 token!523))) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161267) tb!103581))

(declare-fun tp!494647 () Bool)

(declare-fun b!1735601 () Bool)

(declare-fun e!1110650 () Bool)

(declare-fun inv!24669 (Conc!6337) Bool)

(assert (=> b!1735601 (= e!1110650 (and (inv!24669 (c!283305 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (dynLambda!8948 (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) lt!667307)))) tp!494647))))

(declare-fun result!124560 () Bool)

(declare-fun inv!24670 (BalanceConc!12618) Bool)

(assert (=> tb!103581 (= result!124560 (and (inv!24670 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (dynLambda!8948 (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) lt!667307))) e!1110650))))

(assert (= tb!103581 b!1735601))

(declare-fun m!2145173 () Bool)

(assert (=> b!1735601 m!2145173))

(declare-fun m!2145175 () Bool)

(assert (=> tb!103581 m!2145175))

(assert (=> b!1735551 t!161267))

(declare-fun b_and!128487 () Bool)

(assert (= b_and!128477 (and (=> t!161267 result!124560) b_and!128487)))

(declare-fun tb!103583 () Bool)

(declare-fun t!161269 () Bool)

(assert (=> (and b!1735565 (= (toChars!4753 (transformation!3387 (h!24454 rules!3447))) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161269) tb!103583))

(declare-fun result!124564 () Bool)

(assert (= result!124564 result!124560))

(assert (=> b!1735551 t!161269))

(declare-fun b_and!128489 () Bool)

(assert (= b_and!128481 (and (=> t!161269 result!124564) b_and!128489)))

(declare-fun t!161271 () Bool)

(declare-fun tb!103585 () Bool)

(assert (=> (and b!1735557 (= (toChars!4753 (transformation!3387 rule!422)) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161271) tb!103585))

(declare-fun result!124566 () Bool)

(assert (= result!124566 result!124560))

(assert (=> b!1735551 t!161271))

(declare-fun b_and!128491 () Bool)

(assert (= b_and!128485 (and (=> t!161271 result!124566) b_and!128491)))

(declare-fun b_lambda!55497 () Bool)

(assert (=> (not b_lambda!55497) (not b!1735551)))

(declare-fun tb!103587 () Bool)

(declare-fun t!161273 () Bool)

(assert (=> (and b!1735568 (= (toValue!4894 (transformation!3387 (rule!5377 token!523))) (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161273) tb!103587))

(declare-fun result!124568 () Bool)

(assert (=> tb!103587 (= result!124568 (inv!21 (dynLambda!8948 (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) lt!667307)))))

(declare-fun m!2145177 () Bool)

(assert (=> tb!103587 m!2145177))

(assert (=> b!1735551 t!161273))

(declare-fun b_and!128493 () Bool)

(assert (= b_and!128475 (and (=> t!161273 result!124568) b_and!128493)))

(declare-fun t!161275 () Bool)

(declare-fun tb!103589 () Bool)

(assert (=> (and b!1735565 (= (toValue!4894 (transformation!3387 (h!24454 rules!3447))) (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161275) tb!103589))

(declare-fun result!124572 () Bool)

(assert (= result!124572 result!124568))

(assert (=> b!1735551 t!161275))

(declare-fun b_and!128495 () Bool)

(assert (= b_and!128479 (and (=> t!161275 result!124572) b_and!128495)))

(declare-fun tb!103591 () Bool)

(declare-fun t!161277 () Bool)

(assert (=> (and b!1735557 (= (toValue!4894 (transformation!3387 rule!422)) (toValue!4894 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161277) tb!103591))

(declare-fun result!124574 () Bool)

(assert (= result!124574 result!124568))

(assert (=> b!1735551 t!161277))

(declare-fun b_and!128497 () Bool)

(assert (= b_and!128483 (and (=> t!161277 result!124574) b_and!128497)))

(declare-fun b_lambda!55499 () Bool)

(assert (=> (not b_lambda!55499) (not b!1735572)))

(declare-fun tb!103593 () Bool)

(declare-fun t!161279 () Bool)

(assert (=> (and b!1735568 (= (toChars!4753 (transformation!3387 (rule!5377 token!523))) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161279) tb!103593))

(declare-fun b!1735604 () Bool)

(declare-fun e!1110654 () Bool)

(declare-fun tp!494648 () Bool)

(assert (=> b!1735604 (= e!1110654 (and (inv!24669 (c!283305 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (value!106202 (_1!10761 lt!667345))))) tp!494648))))

(declare-fun result!124576 () Bool)

(assert (=> tb!103593 (= result!124576 (and (inv!24670 (dynLambda!8947 (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345)))) (value!106202 (_1!10761 lt!667345)))) e!1110654))))

(assert (= tb!103593 b!1735604))

(declare-fun m!2145179 () Bool)

(assert (=> b!1735604 m!2145179))

(declare-fun m!2145181 () Bool)

(assert (=> tb!103593 m!2145181))

(assert (=> b!1735572 t!161279))

(declare-fun b_and!128499 () Bool)

(assert (= b_and!128487 (and (=> t!161279 result!124576) b_and!128499)))

(declare-fun tb!103595 () Bool)

(declare-fun t!161281 () Bool)

(assert (=> (and b!1735565 (= (toChars!4753 (transformation!3387 (h!24454 rules!3447))) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161281) tb!103595))

(declare-fun result!124578 () Bool)

(assert (= result!124578 result!124576))

(assert (=> b!1735572 t!161281))

(declare-fun b_and!128501 () Bool)

(assert (= b_and!128489 (and (=> t!161281 result!124578) b_and!128501)))

(declare-fun t!161283 () Bool)

(declare-fun tb!103597 () Bool)

(assert (=> (and b!1735557 (= (toChars!4753 (transformation!3387 rule!422)) (toChars!4753 (transformation!3387 (rule!5377 (_1!10761 lt!667345))))) t!161283) tb!103597))

(declare-fun result!124580 () Bool)

(assert (= result!124580 result!124576))

(assert (=> b!1735572 t!161283))

(declare-fun b_and!128503 () Bool)

(assert (= b_and!128491 (and (=> t!161283 result!124580) b_and!128503)))

(declare-fun m!2145183 () Bool)

(assert (=> b!1735575 m!2145183))

(declare-fun m!2145185 () Bool)

(assert (=> b!1735575 m!2145185))

(declare-fun m!2145187 () Bool)

(assert (=> b!1735575 m!2145187))

(declare-fun m!2145189 () Bool)

(assert (=> b!1735575 m!2145189))

(declare-fun m!2145191 () Bool)

(assert (=> b!1735585 m!2145191))

(assert (=> b!1735585 m!2145191))

(declare-fun m!2145193 () Bool)

(assert (=> b!1735585 m!2145193))

(assert (=> b!1735585 m!2145193))

(declare-fun m!2145195 () Bool)

(assert (=> b!1735585 m!2145195))

(declare-fun m!2145197 () Bool)

(assert (=> b!1735585 m!2145197))

(declare-fun m!2145199 () Bool)

(assert (=> b!1735584 m!2145199))

(declare-fun m!2145201 () Bool)

(assert (=> b!1735584 m!2145201))

(declare-fun m!2145203 () Bool)

(assert (=> b!1735563 m!2145203))

(declare-fun m!2145205 () Bool)

(assert (=> b!1735573 m!2145205))

(declare-fun m!2145207 () Bool)

(assert (=> b!1735573 m!2145207))

(declare-fun m!2145209 () Bool)

(assert (=> b!1735567 m!2145209))

(declare-fun m!2145211 () Bool)

(assert (=> start!170722 m!2145211))

(declare-fun m!2145213 () Bool)

(assert (=> b!1735577 m!2145213))

(declare-fun m!2145215 () Bool)

(assert (=> b!1735558 m!2145215))

(declare-fun m!2145217 () Bool)

(assert (=> b!1735545 m!2145217))

(declare-fun m!2145219 () Bool)

(assert (=> b!1735545 m!2145219))

(declare-fun m!2145221 () Bool)

(assert (=> b!1735545 m!2145221))

(declare-fun m!2145223 () Bool)

(assert (=> b!1735545 m!2145223))

(declare-fun m!2145225 () Bool)

(assert (=> b!1735545 m!2145225))

(declare-fun m!2145227 () Bool)

(assert (=> b!1735545 m!2145227))

(assert (=> b!1735545 m!2145221))

(declare-fun m!2145229 () Bool)

(assert (=> b!1735545 m!2145229))

(declare-fun m!2145231 () Bool)

(assert (=> b!1735545 m!2145231))

(declare-fun m!2145233 () Bool)

(assert (=> b!1735545 m!2145233))

(declare-fun m!2145235 () Bool)

(assert (=> b!1735545 m!2145235))

(declare-fun m!2145237 () Bool)

(assert (=> b!1735545 m!2145237))

(declare-fun m!2145239 () Bool)

(assert (=> b!1735581 m!2145239))

(declare-fun m!2145241 () Bool)

(assert (=> b!1735581 m!2145241))

(declare-fun m!2145243 () Bool)

(assert (=> b!1735581 m!2145243))

(declare-fun m!2145245 () Bool)

(assert (=> b!1735581 m!2145245))

(declare-fun m!2145247 () Bool)

(assert (=> b!1735572 m!2145247))

(declare-fun m!2145249 () Bool)

(assert (=> b!1735547 m!2145249))

(declare-fun m!2145251 () Bool)

(assert (=> b!1735547 m!2145251))

(declare-fun m!2145253 () Bool)

(assert (=> b!1735561 m!2145253))

(declare-fun m!2145255 () Bool)

(assert (=> b!1735576 m!2145255))

(declare-fun m!2145257 () Bool)

(assert (=> b!1735576 m!2145257))

(declare-fun m!2145259 () Bool)

(assert (=> b!1735553 m!2145259))

(declare-fun m!2145261 () Bool)

(assert (=> b!1735553 m!2145261))

(declare-fun m!2145263 () Bool)

(assert (=> b!1735566 m!2145263))

(declare-fun m!2145265 () Bool)

(assert (=> b!1735566 m!2145265))

(declare-fun m!2145267 () Bool)

(assert (=> b!1735566 m!2145267))

(declare-fun m!2145269 () Bool)

(assert (=> b!1735566 m!2145269))

(declare-fun m!2145271 () Bool)

(assert (=> b!1735566 m!2145271))

(declare-fun m!2145273 () Bool)

(assert (=> b!1735566 m!2145273))

(declare-fun m!2145275 () Bool)

(assert (=> b!1735566 m!2145275))

(declare-fun m!2145277 () Bool)

(assert (=> b!1735566 m!2145277))

(declare-fun m!2145279 () Bool)

(assert (=> b!1735566 m!2145279))

(declare-fun m!2145281 () Bool)

(assert (=> b!1735566 m!2145281))

(declare-fun m!2145283 () Bool)

(assert (=> b!1735566 m!2145283))

(assert (=> b!1735566 m!2145273))

(declare-fun m!2145285 () Bool)

(assert (=> b!1735566 m!2145285))

(declare-fun m!2145287 () Bool)

(assert (=> b!1735566 m!2145287))

(assert (=> b!1735566 m!2145191))

(declare-fun m!2145289 () Bool)

(assert (=> b!1735566 m!2145289))

(declare-fun m!2145291 () Bool)

(assert (=> b!1735546 m!2145291))

(declare-fun m!2145293 () Bool)

(assert (=> b!1735550 m!2145293))

(declare-fun m!2145295 () Bool)

(assert (=> b!1735550 m!2145295))

(declare-fun m!2145297 () Bool)

(assert (=> b!1735550 m!2145297))

(assert (=> b!1735550 m!2145293))

(declare-fun m!2145299 () Bool)

(assert (=> b!1735550 m!2145299))

(declare-fun m!2145301 () Bool)

(assert (=> b!1735550 m!2145301))

(declare-fun m!2145303 () Bool)

(assert (=> b!1735551 m!2145303))

(assert (=> b!1735551 m!2145303))

(declare-fun m!2145305 () Bool)

(assert (=> b!1735551 m!2145305))

(assert (=> b!1735551 m!2145305))

(declare-fun m!2145307 () Bool)

(assert (=> b!1735551 m!2145307))

(declare-fun m!2145309 () Bool)

(assert (=> b!1735551 m!2145309))

(declare-fun m!2145311 () Bool)

(assert (=> b!1735580 m!2145311))

(declare-fun m!2145313 () Bool)

(assert (=> b!1735580 m!2145313))

(declare-fun m!2145315 () Bool)

(assert (=> b!1735562 m!2145315))

(declare-fun m!2145317 () Bool)

(assert (=> b!1735583 m!2145317))

(declare-fun m!2145319 () Bool)

(assert (=> b!1735554 m!2145319))

(declare-fun m!2145321 () Bool)

(assert (=> b!1735554 m!2145321))

(declare-fun m!2145323 () Bool)

(assert (=> b!1735554 m!2145323))

(declare-fun m!2145325 () Bool)

(assert (=> b!1735571 m!2145325))

(declare-fun m!2145327 () Bool)

(assert (=> b!1735582 m!2145327))

(declare-fun m!2145329 () Bool)

(assert (=> b!1735552 m!2145329))

(declare-fun m!2145331 () Bool)

(assert (=> b!1735555 m!2145331))

(declare-fun m!2145333 () Bool)

(assert (=> b!1735555 m!2145333))

(declare-fun m!2145335 () Bool)

(assert (=> b!1735555 m!2145335))

(declare-fun m!2145337 () Bool)

(assert (=> b!1735560 m!2145337))

(declare-fun m!2145339 () Bool)

(assert (=> b!1735556 m!2145339))

(declare-fun m!2145341 () Bool)

(assert (=> b!1735556 m!2145341))

(declare-fun m!2145343 () Bool)

(assert (=> b!1735556 m!2145343))

(declare-fun m!2145345 () Bool)

(assert (=> b!1735556 m!2145345))

(declare-fun m!2145347 () Bool)

(assert (=> b!1735556 m!2145347))

(declare-fun m!2145349 () Bool)

(assert (=> b!1735556 m!2145349))

(declare-fun m!2145351 () Bool)

(assert (=> b!1735556 m!2145351))

(declare-fun m!2145353 () Bool)

(assert (=> b!1735564 m!2145353))

(declare-fun m!2145355 () Bool)

(assert (=> b!1735579 m!2145355))

(check-sat (not b!1735563) (not b!1735558) (not b!1735571) b_and!128497 (not b_next!48309) (not b!1735556) (not start!170722) (not b!1735584) b_and!128501 (not b!1735585) (not b!1735547) (not b!1735576) (not b!1735546) (not b!1735575) (not tb!103593) (not b!1735581) (not b_next!48303) b_and!128495 (not b!1735559) (not b!1735566) (not b!1735580) (not b!1735553) (not b!1735604) (not b_lambda!55495) (not b!1735550) (not b!1735555) (not b!1735583) (not b!1735552) b_and!128503 (not b_next!48301) (not b!1735573) (not b!1735582) (not tb!103587) (not b!1735562) (not b!1735579) (not tb!103581) tp_is_empty!7673 (not b_lambda!55497) (not b_next!48299) (not b!1735577) (not b_next!48305) b_and!128499 b_and!128493 (not b!1735561) (not b_lambda!55499) (not b!1735545) (not b!1735554) (not b!1735560) (not b!1735551) (not b!1735549) (not b_next!48307) (not b!1735564) (not b!1735567) (not b!1735601))
(check-sat (not b_next!48303) b_and!128495 b_and!128497 (not b_next!48309) (not b_next!48299) (not b_next!48305) b_and!128501 (not b_next!48307) b_and!128503 (not b_next!48301) b_and!128499 b_and!128493)
