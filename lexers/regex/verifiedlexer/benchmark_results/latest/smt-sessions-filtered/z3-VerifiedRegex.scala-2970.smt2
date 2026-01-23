; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176302 () Bool)

(assert start!176302)

(declare-fun b!1775559 () Bool)

(declare-fun b_free!49223 () Bool)

(declare-fun b_next!49927 () Bool)

(assert (=> b!1775559 (= b_free!49223 (not b_next!49927))))

(declare-fun tp!503185 () Bool)

(declare-fun b_and!135519 () Bool)

(assert (=> b!1775559 (= tp!503185 b_and!135519)))

(declare-fun b_free!49225 () Bool)

(declare-fun b_next!49929 () Bool)

(assert (=> b!1775559 (= b_free!49225 (not b_next!49929))))

(declare-fun tp!503177 () Bool)

(declare-fun b_and!135521 () Bool)

(assert (=> b!1775559 (= tp!503177 b_and!135521)))

(declare-fun b!1775578 () Bool)

(declare-fun b_free!49227 () Bool)

(declare-fun b_next!49931 () Bool)

(assert (=> b!1775578 (= b_free!49227 (not b_next!49931))))

(declare-fun tp!503175 () Bool)

(declare-fun b_and!135523 () Bool)

(assert (=> b!1775578 (= tp!503175 b_and!135523)))

(declare-fun b_free!49229 () Bool)

(declare-fun b_next!49933 () Bool)

(assert (=> b!1775578 (= b_free!49229 (not b_next!49933))))

(declare-fun tp!503178 () Bool)

(declare-fun b_and!135525 () Bool)

(assert (=> b!1775578 (= tp!503178 b_and!135525)))

(declare-fun b!1775555 () Bool)

(declare-fun b_free!49231 () Bool)

(declare-fun b_next!49935 () Bool)

(assert (=> b!1775555 (= b_free!49231 (not b_next!49935))))

(declare-fun tp!503179 () Bool)

(declare-fun b_and!135527 () Bool)

(assert (=> b!1775555 (= tp!503179 b_and!135527)))

(declare-fun b_free!49233 () Bool)

(declare-fun b_next!49937 () Bool)

(assert (=> b!1775555 (= b_free!49233 (not b_next!49937))))

(declare-fun tp!503184 () Bool)

(declare-fun b_and!135529 () Bool)

(assert (=> b!1775555 (= tp!503184 b_and!135529)))

(declare-fun b!1775590 () Bool)

(declare-fun e!1136315 () Bool)

(assert (=> b!1775590 (= e!1136315 true)))

(declare-fun b!1775589 () Bool)

(declare-fun e!1136314 () Bool)

(assert (=> b!1775589 (= e!1136314 e!1136315)))

(declare-fun b!1775588 () Bool)

(declare-fun e!1136313 () Bool)

(assert (=> b!1775588 (= e!1136313 e!1136314)))

(declare-fun b!1775563 () Bool)

(assert (=> b!1775563 e!1136313))

(assert (= b!1775589 b!1775590))

(assert (= b!1775588 b!1775589))

(assert (= b!1775563 b!1775588))

(declare-fun order!12553 () Int)

(declare-datatypes ((List!19625 0))(
  ( (Nil!19555) (Cons!19555 (h!24956 (_ BitVec 16)) (t!165912 List!19625)) )
))
(declare-datatypes ((TokenValue!3591 0))(
  ( (FloatLiteralValue!7182 (text!25582 List!19625)) (TokenValueExt!3590 (__x!12484 Int)) (Broken!17955 (value!109425 List!19625)) (Object!3660) (End!3591) (Def!3591) (Underscore!3591) (Match!3591) (Else!3591) (Error!3591) (Case!3591) (If!3591) (Extends!3591) (Abstract!3591) (Class!3591) (Val!3591) (DelimiterValue!7182 (del!3651 List!19625)) (KeywordValue!3597 (value!109426 List!19625)) (CommentValue!7182 (value!109427 List!19625)) (WhitespaceValue!7182 (value!109428 List!19625)) (IndentationValue!3591 (value!109429 List!19625)) (String!22286) (Int32!3591) (Broken!17956 (value!109430 List!19625)) (Boolean!3592) (Unit!33789) (OperatorValue!3594 (op!3651 List!19625)) (IdentifierValue!7182 (value!109431 List!19625)) (IdentifierValue!7183 (value!109432 List!19625)) (WhitespaceValue!7183 (value!109433 List!19625)) (True!7182) (False!7182) (Broken!17957 (value!109434 List!19625)) (Broken!17958 (value!109435 List!19625)) (True!7183) (RightBrace!3591) (RightBracket!3591) (Colon!3591) (Null!3591) (Comma!3591) (LeftBracket!3591) (False!7183) (LeftBrace!3591) (ImaginaryLiteralValue!3591 (text!25583 List!19625)) (StringLiteralValue!10773 (value!109436 List!19625)) (EOFValue!3591 (value!109437 List!19625)) (IdentValue!3591 (value!109438 List!19625)) (DelimiterValue!7183 (value!109439 List!19625)) (DedentValue!3591 (value!109440 List!19625)) (NewLineValue!3591 (value!109441 List!19625)) (IntegerValue!10773 (value!109442 (_ BitVec 32)) (text!25584 List!19625)) (IntegerValue!10774 (value!109443 Int) (text!25585 List!19625)) (Times!3591) (Or!3591) (Equal!3591) (Minus!3591) (Broken!17959 (value!109444 List!19625)) (And!3591) (Div!3591) (LessEqual!3591) (Mod!3591) (Concat!8420) (Not!3591) (Plus!3591) (SpaceValue!3591 (value!109445 List!19625)) (IntegerValue!10775 (value!109446 Int) (text!25586 List!19625)) (StringLiteralValue!10774 (text!25587 List!19625)) (FloatLiteralValue!7183 (text!25588 List!19625)) (BytesLiteralValue!3591 (value!109447 List!19625)) (CommentValue!7183 (value!109448 List!19625)) (StringLiteralValue!10775 (value!109449 List!19625)) (ErrorTokenValue!3591 (msg!3652 List!19625)) )
))
(declare-datatypes ((C!9832 0))(
  ( (C!9833 (val!5512 Int)) )
))
(declare-datatypes ((List!19626 0))(
  ( (Nil!19556) (Cons!19556 (h!24957 C!9832) (t!165913 List!19626)) )
))
(declare-datatypes ((Regex!4829 0))(
  ( (ElementMatch!4829 (c!289018 C!9832)) (Concat!8421 (regOne!10170 Regex!4829) (regTwo!10170 Regex!4829)) (EmptyExpr!4829) (Star!4829 (reg!5158 Regex!4829)) (EmptyLang!4829) (Union!4829 (regOne!10171 Regex!4829) (regTwo!10171 Regex!4829)) )
))
(declare-datatypes ((String!22287 0))(
  ( (String!22288 (value!109450 String)) )
))
(declare-datatypes ((IArray!13015 0))(
  ( (IArray!13016 (innerList!6565 List!19626)) )
))
(declare-datatypes ((Conc!6505 0))(
  ( (Node!6505 (left!15669 Conc!6505) (right!15999 Conc!6505) (csize!13240 Int) (cheight!6716 Int)) (Leaf!9476 (xs!9381 IArray!13015) (csize!13241 Int)) (Empty!6505) )
))
(declare-datatypes ((BalanceConc!12954 0))(
  ( (BalanceConc!12955 (c!289019 Conc!6505)) )
))
(declare-datatypes ((TokenValueInjection!6842 0))(
  ( (TokenValueInjection!6843 (toValue!5028 Int) (toChars!4887 Int)) )
))
(declare-datatypes ((Rule!6802 0))(
  ( (Rule!6803 (regex!3501 Regex!4829) (tag!3887 String!22287) (isSeparator!3501 Bool) (transformation!3501 TokenValueInjection!6842)) )
))
(declare-datatypes ((Token!6568 0))(
  ( (Token!6569 (value!109451 TokenValue!3591) (rule!5557 Rule!6802) (size!15538 Int) (originalCharacters!4315 List!19626)) )
))
(declare-datatypes ((tuple2!19154 0))(
  ( (tuple2!19155 (_1!10979 Token!6568) (_2!10979 List!19626)) )
))
(declare-fun lt!688600 () tuple2!19154)

(declare-fun lambda!70538 () Int)

(declare-fun order!12551 () Int)

(declare-fun dynLambda!9550 (Int Int) Int)

(declare-fun dynLambda!9551 (Int Int) Int)

(assert (=> b!1775590 (< (dynLambda!9550 order!12551 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70538))))

(declare-fun order!12555 () Int)

(declare-fun dynLambda!9552 (Int Int) Int)

(assert (=> b!1775590 (< (dynLambda!9552 order!12555 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70538))))

(declare-fun b!1775546 () Bool)

(declare-fun e!1136299 () Bool)

(declare-fun e!1136304 () Bool)

(assert (=> b!1775546 (= e!1136299 e!1136304)))

(declare-fun res!799908 () Bool)

(assert (=> b!1775546 (=> res!799908 e!1136304)))

(declare-fun lt!688607 () List!19626)

(declare-fun lt!688620 () List!19626)

(declare-fun isPrefix!1741 (List!19626 List!19626) Bool)

(assert (=> b!1775546 (= res!799908 (not (isPrefix!1741 lt!688607 lt!688620)))))

(declare-fun ++!5325 (List!19626 List!19626) List!19626)

(assert (=> b!1775546 (isPrefix!1741 lt!688607 (++!5325 lt!688607 (_2!10979 lt!688600)))))

(declare-datatypes ((Unit!33790 0))(
  ( (Unit!33791) )
))
(declare-fun lt!688604 () Unit!33790)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1250 (List!19626 List!19626) Unit!33790)

(assert (=> b!1775546 (= lt!688604 (lemmaConcatTwoListThenFirstIsPrefix!1250 lt!688607 (_2!10979 lt!688600)))))

(declare-fun lt!688591 () BalanceConc!12954)

(declare-fun list!7947 (BalanceConc!12954) List!19626)

(assert (=> b!1775546 (= lt!688607 (list!7947 lt!688591))))

(declare-fun charsOf!2150 (Token!6568) BalanceConc!12954)

(assert (=> b!1775546 (= lt!688591 (charsOf!2150 (_1!10979 lt!688600)))))

(declare-fun e!1136283 () Bool)

(assert (=> b!1775546 e!1136283))

(declare-fun res!799914 () Bool)

(assert (=> b!1775546 (=> (not res!799914) (not e!1136283))))

(declare-datatypes ((Option!4024 0))(
  ( (None!4023) (Some!4023 (v!25504 Rule!6802)) )
))
(declare-fun lt!688606 () Option!4024)

(declare-fun isDefined!3367 (Option!4024) Bool)

(assert (=> b!1775546 (= res!799914 (isDefined!3367 lt!688606))))

(declare-datatypes ((LexerInterface!3130 0))(
  ( (LexerInterfaceExt!3127 (__x!12485 Int)) (Lexer!3128) )
))
(declare-fun thiss!24550 () LexerInterface!3130)

(declare-datatypes ((List!19627 0))(
  ( (Nil!19557) (Cons!19557 (h!24958 Rule!6802) (t!165914 List!19627)) )
))
(declare-fun rules!3447 () List!19627)

(declare-fun getRuleFromTag!549 (LexerInterface!3130 List!19627 String!22287) Option!4024)

(assert (=> b!1775546 (= lt!688606 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun lt!688613 () Unit!33790)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!549 (LexerInterface!3130 List!19627 List!19626 Token!6568) Unit!33790)

(assert (=> b!1775546 (= lt!688613 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!549 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600)))))

(declare-datatypes ((Option!4025 0))(
  ( (None!4024) (Some!4024 (v!25505 tuple2!19154)) )
))
(declare-fun lt!688590 () Option!4025)

(declare-fun get!5992 (Option!4025) tuple2!19154)

(assert (=> b!1775546 (= lt!688600 (get!5992 lt!688590))))

(declare-fun suffix!1421 () List!19626)

(declare-fun lt!688584 () List!19626)

(declare-fun lt!688578 () Unit!33790)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!652 (LexerInterface!3130 List!19627 List!19626 List!19626) Unit!33790)

(assert (=> b!1775546 (= lt!688578 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!652 thiss!24550 rules!3447 lt!688584 suffix!1421))))

(declare-fun maxPrefix!1684 (LexerInterface!3130 List!19627 List!19626) Option!4025)

(assert (=> b!1775546 (= lt!688590 (maxPrefix!1684 thiss!24550 rules!3447 lt!688620))))

(assert (=> b!1775546 (isPrefix!1741 lt!688584 lt!688620)))

(declare-fun lt!688587 () Unit!33790)

(assert (=> b!1775546 (= lt!688587 (lemmaConcatTwoListThenFirstIsPrefix!1250 lt!688584 suffix!1421))))

(assert (=> b!1775546 (= lt!688620 (++!5325 lt!688584 suffix!1421))))

(declare-fun tp!503182 () Bool)

(declare-fun b!1775547 () Bool)

(declare-fun rule!422 () Rule!6802)

(declare-fun e!1136282 () Bool)

(declare-fun e!1136284 () Bool)

(declare-fun inv!25430 (String!22287) Bool)

(declare-fun inv!25435 (TokenValueInjection!6842) Bool)

(assert (=> b!1775547 (= e!1136282 (and tp!503182 (inv!25430 (tag!3887 rule!422)) (inv!25435 (transformation!3501 rule!422)) e!1136284))))

(declare-fun b!1775548 () Bool)

(declare-fun res!799920 () Bool)

(declare-fun e!1136289 () Bool)

(assert (=> b!1775548 (=> res!799920 e!1136289)))

(declare-fun isEmpty!12354 (List!19626) Bool)

(assert (=> b!1775548 (= res!799920 (isEmpty!12354 suffix!1421))))

(declare-fun b!1775549 () Bool)

(declare-fun e!1136300 () Bool)

(declare-fun lt!688602 () Rule!6802)

(assert (=> b!1775549 (= e!1136300 (= (rule!5557 (_1!10979 lt!688600)) lt!688602))))

(declare-fun b!1775550 () Bool)

(declare-fun res!799923 () Bool)

(declare-fun e!1136294 () Bool)

(assert (=> b!1775550 (=> (not res!799923) (not e!1136294))))

(declare-fun rulesInvariant!2799 (LexerInterface!3130 List!19627) Bool)

(assert (=> b!1775550 (= res!799923 (rulesInvariant!2799 thiss!24550 rules!3447))))

(declare-fun b!1775551 () Bool)

(declare-fun res!799915 () Bool)

(assert (=> b!1775551 (=> (not res!799915) (not e!1136294))))

(declare-fun contains!3533 (List!19627 Rule!6802) Bool)

(assert (=> b!1775551 (= res!799915 (contains!3533 rules!3447 rule!422))))

(declare-fun b!1775552 () Bool)

(declare-fun e!1136297 () Bool)

(assert (=> b!1775552 (= e!1136297 (not e!1136289))))

(declare-fun res!799910 () Bool)

(assert (=> b!1775552 (=> res!799910 e!1136289)))

(declare-fun matchR!2302 (Regex!4829 List!19626) Bool)

(assert (=> b!1775552 (= res!799910 (not (matchR!2302 (regex!3501 rule!422) lt!688584)))))

(declare-fun ruleValid!999 (LexerInterface!3130 Rule!6802) Bool)

(assert (=> b!1775552 (ruleValid!999 thiss!24550 rule!422)))

(declare-fun lt!688612 () Unit!33790)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!522 (LexerInterface!3130 Rule!6802 List!19627) Unit!33790)

(assert (=> b!1775552 (= lt!688612 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!522 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1775553 () Bool)

(declare-fun e!1136303 () Bool)

(declare-fun e!1136287 () Bool)

(assert (=> b!1775553 (= e!1136303 e!1136287)))

(declare-fun res!799913 () Bool)

(assert (=> b!1775553 (=> res!799913 e!1136287)))

(declare-fun lt!688579 () Int)

(declare-fun lt!688618 () Int)

(declare-fun lt!688592 () Bool)

(assert (=> b!1775553 (= res!799913 (or lt!688592 (>= lt!688579 lt!688618)))))

(declare-fun lt!688585 () Unit!33790)

(declare-fun e!1136296 () Unit!33790)

(assert (=> b!1775553 (= lt!688585 e!1136296)))

(declare-fun c!289017 () Bool)

(assert (=> b!1775553 (= c!289017 lt!688592)))

(assert (=> b!1775553 (= lt!688592 (> lt!688579 lt!688618))))

(declare-fun lt!688609 () BalanceConc!12954)

(declare-fun size!15539 (BalanceConc!12954) Int)

(assert (=> b!1775553 (= lt!688618 (size!15539 lt!688609))))

(declare-fun lt!688576 () Regex!4829)

(assert (=> b!1775553 (matchR!2302 lt!688576 lt!688584)))

(declare-fun token!523 () Token!6568)

(declare-fun lt!688586 () Unit!33790)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!208 (LexerInterface!3130 List!19627 List!19626 Token!6568 Rule!6802 List!19626) Unit!33790)

(assert (=> b!1775553 (= lt!688586 (lemmaMaxPrefixThenMatchesRulesRegex!208 thiss!24550 rules!3447 lt!688584 token!523 rule!422 Nil!19556))))

(declare-fun b!1775554 () Bool)

(declare-fun e!1136286 () Bool)

(declare-fun e!1136288 () Bool)

(declare-fun tp!503181 () Bool)

(assert (=> b!1775554 (= e!1136286 (and e!1136288 tp!503181))))

(assert (=> b!1775555 (= e!1136284 (and tp!503179 tp!503184))))

(declare-fun b!1775556 () Bool)

(declare-fun Unit!33792 () Unit!33790)

(assert (=> b!1775556 (= e!1136296 Unit!33792)))

(declare-fun lt!688577 () Unit!33790)

(assert (=> b!1775556 (= lt!688577 (lemmaMaxPrefixThenMatchesRulesRegex!208 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600) (rule!5557 (_1!10979 lt!688600)) (_2!10979 lt!688600)))))

(assert (=> b!1775556 (matchR!2302 lt!688576 lt!688607)))

(declare-fun lt!688588 () List!19626)

(declare-fun getSuffix!908 (List!19626 List!19626) List!19626)

(assert (=> b!1775556 (= lt!688588 (getSuffix!908 lt!688620 lt!688584))))

(declare-fun lt!688619 () Unit!33790)

(declare-fun lemmaSamePrefixThenSameSuffix!852 (List!19626 List!19626 List!19626 List!19626 List!19626) Unit!33790)

(assert (=> b!1775556 (= lt!688619 (lemmaSamePrefixThenSameSuffix!852 lt!688584 suffix!1421 lt!688584 lt!688588 lt!688620))))

(assert (=> b!1775556 (= suffix!1421 lt!688588)))

(declare-fun lt!688617 () Unit!33790)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!277 (List!19626 List!19626) Unit!33790)

(assert (=> b!1775556 (= lt!688617 (lemmaAddHeadSuffixToPrefixStillPrefix!277 lt!688584 lt!688620))))

(declare-fun head!4138 (List!19626) C!9832)

(assert (=> b!1775556 (isPrefix!1741 (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556)) lt!688620)))

(declare-fun lt!688595 () Unit!33790)

(declare-fun lt!688601 () List!19626)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!149 (List!19626 List!19626 List!19626) Unit!33790)

(assert (=> b!1775556 (= lt!688595 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!149 lt!688607 lt!688601 lt!688620))))

(assert (=> b!1775556 (isPrefix!1741 lt!688601 lt!688607)))

(declare-fun lt!688610 () Unit!33790)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!140 (Regex!4829 List!19626 List!19626) Unit!33790)

(assert (=> b!1775556 (= lt!688610 (lemmaNotPrefixMatchThenCannotMatchLonger!140 lt!688576 lt!688601 lt!688607))))

(assert (=> b!1775556 false))

(declare-fun e!1136291 () Bool)

(declare-fun b!1775557 () Bool)

(declare-fun tp!503180 () Bool)

(assert (=> b!1775557 (= e!1136288 (and tp!503180 (inv!25430 (tag!3887 (h!24958 rules!3447))) (inv!25435 (transformation!3501 (h!24958 rules!3447))) e!1136291))))

(declare-fun b!1775558 () Bool)

(declare-fun e!1136280 () Bool)

(declare-fun e!1136295 () Bool)

(assert (=> b!1775558 (= e!1136280 e!1136295)))

(declare-fun res!799906 () Bool)

(assert (=> b!1775558 (=> res!799906 e!1136295)))

(declare-fun dynLambda!9553 (Int TokenValue!3591) BalanceConc!12954)

(declare-fun dynLambda!9554 (Int BalanceConc!12954) TokenValue!3591)

(assert (=> b!1775558 (= res!799906 (not (= (list!7947 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))) lt!688607)))))

(declare-fun lt!688598 () Unit!33790)

(declare-fun lemmaSemiInverse!639 (TokenValueInjection!6842 BalanceConc!12954) Unit!33790)

(assert (=> b!1775558 (= lt!688598 (lemmaSemiInverse!639 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591))))

(assert (=> b!1775559 (= e!1136291 (and tp!503185 tp!503177))))

(declare-fun b!1775560 () Bool)

(declare-fun e!1136306 () Bool)

(declare-fun tp_is_empty!7901 () Bool)

(declare-fun tp!503186 () Bool)

(assert (=> b!1775560 (= e!1136306 (and tp_is_empty!7901 tp!503186))))

(declare-fun b!1775561 () Bool)

(declare-fun e!1136298 () Bool)

(declare-fun e!1136285 () Bool)

(declare-fun tp!503176 () Bool)

(assert (=> b!1775561 (= e!1136298 (and tp!503176 (inv!25430 (tag!3887 (rule!5557 token!523))) (inv!25435 (transformation!3501 (rule!5557 token!523))) e!1136285))))

(declare-fun b!1775562 () Bool)

(declare-fun e!1136302 () Bool)

(assert (=> b!1775562 (= e!1136287 e!1136302)))

(declare-fun res!799919 () Bool)

(assert (=> b!1775562 (=> res!799919 e!1136302)))

(declare-fun lt!688583 () List!19626)

(declare-fun lt!688597 () Token!6568)

(declare-fun lt!688582 () Option!4025)

(assert (=> b!1775562 (= res!799919 (not (= lt!688582 (Some!4024 (tuple2!19155 lt!688597 lt!688583)))))))

(assert (=> b!1775562 (isPrefix!1741 lt!688620 lt!688620)))

(declare-fun lt!688603 () Unit!33790)

(declare-fun lemmaIsPrefixRefl!1150 (List!19626 List!19626) Unit!33790)

(assert (=> b!1775562 (= lt!688603 (lemmaIsPrefixRefl!1150 lt!688620 lt!688620))))

(declare-fun lt!688596 () Unit!33790)

(declare-fun lt!688594 () BalanceConc!12954)

(assert (=> b!1775562 (= lt!688596 (lemmaSemiInverse!639 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688594))))

(assert (=> b!1775562 (ruleValid!999 thiss!24550 (rule!5557 (_1!10979 lt!688600)))))

(declare-fun lt!688614 () Unit!33790)

(assert (=> b!1775562 (= lt!688614 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!522 thiss!24550 (rule!5557 (_1!10979 lt!688600)) rules!3447))))

(assert (=> b!1775563 (= e!1136304 e!1136280)))

(declare-fun res!799921 () Bool)

(assert (=> b!1775563 (=> res!799921 e!1136280)))

(declare-fun Forall!868 (Int) Bool)

(assert (=> b!1775563 (= res!799921 (not (Forall!868 lambda!70538)))))

(declare-fun lt!688593 () Unit!33790)

(declare-fun lemmaInv!700 (TokenValueInjection!6842) Unit!33790)

(assert (=> b!1775563 (= lt!688593 (lemmaInv!700 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun b!1775564 () Bool)

(declare-fun e!1136281 () Bool)

(assert (=> b!1775564 (= e!1136295 e!1136281)))

(declare-fun res!799916 () Bool)

(assert (=> b!1775564 (=> res!799916 e!1136281)))

(declare-fun lt!688616 () TokenValue!3591)

(assert (=> b!1775564 (= res!799916 (not (= lt!688590 (Some!4024 (tuple2!19155 (Token!6569 lt!688616 (rule!5557 (_1!10979 lt!688600)) lt!688579 lt!688607) (_2!10979 lt!688600))))))))

(assert (=> b!1775564 (= lt!688579 (size!15539 lt!688591))))

(declare-fun apply!5301 (TokenValueInjection!6842 BalanceConc!12954) TokenValue!3591)

(assert (=> b!1775564 (= lt!688616 (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591))))

(declare-fun lt!688581 () Unit!33790)

(declare-fun lemmaCharactersSize!559 (Token!6568) Unit!33790)

(assert (=> b!1775564 (= lt!688581 (lemmaCharactersSize!559 (_1!10979 lt!688600)))))

(declare-fun lt!688615 () Unit!33790)

(declare-fun lemmaEqSameImage!412 (TokenValueInjection!6842 BalanceConc!12954 BalanceConc!12954) Unit!33790)

(declare-fun seqFromList!2470 (List!19626) BalanceConc!12954)

(assert (=> b!1775564 (= lt!688615 (lemmaEqSameImage!412 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591 (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600)))))))

(declare-fun b!1775565 () Bool)

(declare-fun e!1136301 () Bool)

(assert (=> b!1775565 (= e!1136301 e!1136297)))

(declare-fun res!799902 () Bool)

(assert (=> b!1775565 (=> (not res!799902) (not e!1136297))))

(declare-fun lt!688611 () tuple2!19154)

(assert (=> b!1775565 (= res!799902 (= (_1!10979 lt!688611) token!523))))

(declare-fun lt!688589 () Option!4025)

(assert (=> b!1775565 (= lt!688611 (get!5992 lt!688589))))

(declare-fun b!1775566 () Bool)

(declare-fun res!799912 () Bool)

(assert (=> b!1775566 (=> res!799912 e!1136295)))

(assert (=> b!1775566 (= res!799912 (not (= lt!688591 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))))

(declare-fun b!1775567 () Bool)

(assert (=> b!1775567 (= e!1136294 e!1136301)))

(declare-fun res!799922 () Bool)

(assert (=> b!1775567 (=> (not res!799922) (not e!1136301))))

(declare-fun isDefined!3368 (Option!4025) Bool)

(assert (=> b!1775567 (= res!799922 (isDefined!3368 lt!688589))))

(assert (=> b!1775567 (= lt!688589 (maxPrefix!1684 thiss!24550 rules!3447 lt!688584))))

(assert (=> b!1775567 (= lt!688584 (list!7947 lt!688609))))

(assert (=> b!1775567 (= lt!688609 (charsOf!2150 token!523))))

(declare-fun b!1775568 () Bool)

(assert (=> b!1775568 (= e!1136281 e!1136303)))

(declare-fun res!799905 () Bool)

(assert (=> b!1775568 (=> res!799905 e!1136303)))

(assert (=> b!1775568 (= res!799905 (or (not (= lt!688583 (_2!10979 lt!688600))) (not (= lt!688582 (Some!4024 (tuple2!19155 (_1!10979 lt!688600) lt!688583))))))))

(assert (=> b!1775568 (= (_2!10979 lt!688600) lt!688583)))

(declare-fun lt!688599 () Unit!33790)

(assert (=> b!1775568 (= lt!688599 (lemmaSamePrefixThenSameSuffix!852 lt!688607 (_2!10979 lt!688600) lt!688607 lt!688583 lt!688620))))

(assert (=> b!1775568 (= lt!688583 (getSuffix!908 lt!688620 lt!688607))))

(assert (=> b!1775568 (= lt!688582 (Some!4024 (tuple2!19155 lt!688597 (_2!10979 lt!688600))))))

(declare-fun maxPrefixOneRule!1053 (LexerInterface!3130 Rule!6802 List!19626) Option!4025)

(assert (=> b!1775568 (= lt!688582 (maxPrefixOneRule!1053 thiss!24550 (rule!5557 (_1!10979 lt!688600)) lt!688620))))

(declare-fun lt!688608 () TokenValue!3591)

(declare-fun lt!688580 () Int)

(assert (=> b!1775568 (= lt!688597 (Token!6569 lt!688608 (rule!5557 (_1!10979 lt!688600)) lt!688580 lt!688607))))

(declare-fun size!15540 (List!19626) Int)

(assert (=> b!1775568 (= lt!688580 (size!15540 lt!688607))))

(assert (=> b!1775568 (= lt!688608 (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688594))))

(assert (=> b!1775568 (= lt!688594 (seqFromList!2470 lt!688607))))

(declare-fun lt!688605 () Unit!33790)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!431 (LexerInterface!3130 List!19627 List!19626 List!19626 List!19626 Rule!6802) Unit!33790)

(assert (=> b!1775568 (= lt!688605 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!431 thiss!24550 rules!3447 lt!688607 lt!688620 (_2!10979 lt!688600) (rule!5557 (_1!10979 lt!688600))))))

(declare-fun b!1775569 () Bool)

(assert (=> b!1775569 (= e!1136283 e!1136300)))

(declare-fun res!799903 () Bool)

(assert (=> b!1775569 (=> (not res!799903) (not e!1136300))))

(assert (=> b!1775569 (= res!799903 (matchR!2302 (regex!3501 lt!688602) (list!7947 (charsOf!2150 (_1!10979 lt!688600)))))))

(declare-fun get!5993 (Option!4024) Rule!6802)

(assert (=> b!1775569 (= lt!688602 (get!5993 lt!688606))))

(declare-fun tp!503183 () Bool)

(declare-fun b!1775570 () Bool)

(declare-fun e!1136279 () Bool)

(declare-fun inv!21 (TokenValue!3591) Bool)

(assert (=> b!1775570 (= e!1136279 (and (inv!21 (value!109451 token!523)) e!1136298 tp!503183))))

(declare-fun b!1775571 () Bool)

(declare-fun res!799911 () Bool)

(assert (=> b!1775571 (=> (not res!799911) (not e!1136294))))

(declare-fun isEmpty!12355 (List!19627) Bool)

(assert (=> b!1775571 (= res!799911 (not (isEmpty!12355 rules!3447)))))

(declare-fun b!1775572 () Bool)

(declare-fun res!799918 () Bool)

(assert (=> b!1775572 (=> (not res!799918) (not e!1136297))))

(assert (=> b!1775572 (= res!799918 (= (rule!5557 token!523) rule!422))))

(declare-fun b!1775573 () Bool)

(declare-fun res!799917 () Bool)

(assert (=> b!1775573 (=> res!799917 e!1136304)))

(assert (=> b!1775573 (= res!799917 (not (matchR!2302 (regex!3501 (rule!5557 (_1!10979 lt!688600))) lt!688607)))))

(declare-fun b!1775574 () Bool)

(assert (=> b!1775574 (= e!1136289 e!1136299)))

(declare-fun res!799904 () Bool)

(assert (=> b!1775574 (=> res!799904 e!1136299)))

(declare-fun prefixMatch!712 (Regex!4829 List!19626) Bool)

(assert (=> b!1775574 (= res!799904 (prefixMatch!712 lt!688576 lt!688601))))

(assert (=> b!1775574 (= lt!688601 (++!5325 lt!688584 (Cons!19556 (head!4138 suffix!1421) Nil!19556)))))

(declare-fun rulesRegex!857 (LexerInterface!3130 List!19627) Regex!4829)

(assert (=> b!1775574 (= lt!688576 (rulesRegex!857 thiss!24550 rules!3447))))

(declare-fun b!1775575 () Bool)

(declare-fun Unit!33793 () Unit!33790)

(assert (=> b!1775575 (= e!1136296 Unit!33793)))

(declare-fun res!799909 () Bool)

(assert (=> start!176302 (=> (not res!799909) (not e!1136294))))

(get-info :version)

(assert (=> start!176302 (= res!799909 ((_ is Lexer!3128) thiss!24550))))

(assert (=> start!176302 e!1136294))

(assert (=> start!176302 e!1136306))

(assert (=> start!176302 e!1136282))

(assert (=> start!176302 true))

(declare-fun inv!25436 (Token!6568) Bool)

(assert (=> start!176302 (and (inv!25436 token!523) e!1136279)))

(assert (=> start!176302 e!1136286))

(declare-fun b!1775576 () Bool)

(declare-fun res!799907 () Bool)

(assert (=> b!1775576 (=> res!799907 e!1136287)))

(assert (=> b!1775576 (= res!799907 (not (contains!3533 rules!3447 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun b!1775577 () Bool)

(assert (=> b!1775577 (= e!1136302 (> (size!15540 lt!688584) lt!688580))))

(assert (=> b!1775578 (= e!1136285 (and tp!503175 tp!503178))))

(declare-fun b!1775579 () Bool)

(declare-fun res!799924 () Bool)

(assert (=> b!1775579 (=> (not res!799924) (not e!1136297))))

(assert (=> b!1775579 (= res!799924 (isEmpty!12354 (_2!10979 lt!688611)))))

(assert (= (and start!176302 res!799909) b!1775571))

(assert (= (and b!1775571 res!799911) b!1775550))

(assert (= (and b!1775550 res!799923) b!1775551))

(assert (= (and b!1775551 res!799915) b!1775567))

(assert (= (and b!1775567 res!799922) b!1775565))

(assert (= (and b!1775565 res!799902) b!1775579))

(assert (= (and b!1775579 res!799924) b!1775572))

(assert (= (and b!1775572 res!799918) b!1775552))

(assert (= (and b!1775552 (not res!799910)) b!1775548))

(assert (= (and b!1775548 (not res!799920)) b!1775574))

(assert (= (and b!1775574 (not res!799904)) b!1775546))

(assert (= (and b!1775546 res!799914) b!1775569))

(assert (= (and b!1775569 res!799903) b!1775549))

(assert (= (and b!1775546 (not res!799908)) b!1775573))

(assert (= (and b!1775573 (not res!799917)) b!1775563))

(assert (= (and b!1775563 (not res!799921)) b!1775558))

(assert (= (and b!1775558 (not res!799906)) b!1775566))

(assert (= (and b!1775566 (not res!799912)) b!1775564))

(assert (= (and b!1775564 (not res!799916)) b!1775568))

(assert (= (and b!1775568 (not res!799905)) b!1775553))

(assert (= (and b!1775553 c!289017) b!1775556))

(assert (= (and b!1775553 (not c!289017)) b!1775575))

(assert (= (and b!1775553 (not res!799913)) b!1775576))

(assert (= (and b!1775576 (not res!799907)) b!1775562))

(assert (= (and b!1775562 (not res!799919)) b!1775577))

(assert (= (and start!176302 ((_ is Cons!19556) suffix!1421)) b!1775560))

(assert (= b!1775547 b!1775555))

(assert (= start!176302 b!1775547))

(assert (= b!1775561 b!1775578))

(assert (= b!1775570 b!1775561))

(assert (= start!176302 b!1775570))

(assert (= b!1775557 b!1775559))

(assert (= b!1775554 b!1775557))

(assert (= (and start!176302 ((_ is Cons!19557) rules!3447)) b!1775554))

(declare-fun b_lambda!57947 () Bool)

(assert (=> (not b_lambda!57947) (not b!1775558)))

(declare-fun tb!107679 () Bool)

(declare-fun t!165895 () Bool)

(assert (=> (and b!1775559 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165895) tb!107679))

(declare-fun tp!503189 () Bool)

(declare-fun b!1775595 () Bool)

(declare-fun e!1136318 () Bool)

(declare-fun inv!25437 (Conc!6505) Bool)

(assert (=> b!1775595 (= e!1136318 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))) tp!503189))))

(declare-fun result!129530 () Bool)

(declare-fun inv!25438 (BalanceConc!12954) Bool)

(assert (=> tb!107679 (= result!129530 (and (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))) e!1136318))))

(assert (= tb!107679 b!1775595))

(declare-fun m!2195963 () Bool)

(assert (=> b!1775595 m!2195963))

(declare-fun m!2195965 () Bool)

(assert (=> tb!107679 m!2195965))

(assert (=> b!1775558 t!165895))

(declare-fun b_and!135531 () Bool)

(assert (= b_and!135521 (and (=> t!165895 result!129530) b_and!135531)))

(declare-fun t!165897 () Bool)

(declare-fun tb!107681 () Bool)

(assert (=> (and b!1775578 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165897) tb!107681))

(declare-fun result!129534 () Bool)

(assert (= result!129534 result!129530))

(assert (=> b!1775558 t!165897))

(declare-fun b_and!135533 () Bool)

(assert (= b_and!135525 (and (=> t!165897 result!129534) b_and!135533)))

(declare-fun tb!107683 () Bool)

(declare-fun t!165899 () Bool)

(assert (=> (and b!1775555 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165899) tb!107683))

(declare-fun result!129536 () Bool)

(assert (= result!129536 result!129530))

(assert (=> b!1775558 t!165899))

(declare-fun b_and!135535 () Bool)

(assert (= b_and!135529 (and (=> t!165899 result!129536) b_and!135535)))

(declare-fun b_lambda!57949 () Bool)

(assert (=> (not b_lambda!57949) (not b!1775558)))

(declare-fun tb!107685 () Bool)

(declare-fun t!165901 () Bool)

(assert (=> (and b!1775559 (= (toValue!5028 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165901) tb!107685))

(declare-fun result!129538 () Bool)

(assert (=> tb!107685 (= result!129538 (inv!21 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun m!2195967 () Bool)

(assert (=> tb!107685 m!2195967))

(assert (=> b!1775558 t!165901))

(declare-fun b_and!135537 () Bool)

(assert (= b_and!135519 (and (=> t!165901 result!129538) b_and!135537)))

(declare-fun t!165903 () Bool)

(declare-fun tb!107687 () Bool)

(assert (=> (and b!1775578 (= (toValue!5028 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165903) tb!107687))

(declare-fun result!129542 () Bool)

(assert (= result!129542 result!129538))

(assert (=> b!1775558 t!165903))

(declare-fun b_and!135539 () Bool)

(assert (= b_and!135523 (and (=> t!165903 result!129542) b_and!135539)))

(declare-fun tb!107689 () Bool)

(declare-fun t!165905 () Bool)

(assert (=> (and b!1775555 (= (toValue!5028 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165905) tb!107689))

(declare-fun result!129544 () Bool)

(assert (= result!129544 result!129538))

(assert (=> b!1775558 t!165905))

(declare-fun b_and!135541 () Bool)

(assert (= b_and!135527 (and (=> t!165905 result!129544) b_and!135541)))

(declare-fun b_lambda!57951 () Bool)

(assert (=> (not b_lambda!57951) (not b!1775566)))

(declare-fun t!165907 () Bool)

(declare-fun tb!107691 () Bool)

(assert (=> (and b!1775559 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165907) tb!107691))

(declare-fun b!1775598 () Bool)

(declare-fun e!1136322 () Bool)

(declare-fun tp!503190 () Bool)

(assert (=> b!1775598 (= e!1136322 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))) tp!503190))))

(declare-fun result!129546 () Bool)

(assert (=> tb!107691 (= result!129546 (and (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))) e!1136322))))

(assert (= tb!107691 b!1775598))

(declare-fun m!2195969 () Bool)

(assert (=> b!1775598 m!2195969))

(declare-fun m!2195971 () Bool)

(assert (=> tb!107691 m!2195971))

(assert (=> b!1775566 t!165907))

(declare-fun b_and!135543 () Bool)

(assert (= b_and!135531 (and (=> t!165907 result!129546) b_and!135543)))

(declare-fun tb!107693 () Bool)

(declare-fun t!165909 () Bool)

(assert (=> (and b!1775578 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165909) tb!107693))

(declare-fun result!129548 () Bool)

(assert (= result!129548 result!129546))

(assert (=> b!1775566 t!165909))

(declare-fun b_and!135545 () Bool)

(assert (= b_and!135533 (and (=> t!165909 result!129548) b_and!135545)))

(declare-fun tb!107695 () Bool)

(declare-fun t!165911 () Bool)

(assert (=> (and b!1775555 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165911) tb!107695))

(declare-fun result!129550 () Bool)

(assert (= result!129550 result!129546))

(assert (=> b!1775566 t!165911))

(declare-fun b_and!135547 () Bool)

(assert (= b_and!135535 (and (=> t!165911 result!129550) b_and!135547)))

(declare-fun m!2195973 () Bool)

(assert (=> b!1775571 m!2195973))

(declare-fun m!2195975 () Bool)

(assert (=> b!1775579 m!2195975))

(declare-fun m!2195977 () Bool)

(assert (=> b!1775565 m!2195977))

(declare-fun m!2195979 () Bool)

(assert (=> b!1775553 m!2195979))

(declare-fun m!2195981 () Bool)

(assert (=> b!1775553 m!2195981))

(declare-fun m!2195983 () Bool)

(assert (=> b!1775553 m!2195983))

(declare-fun m!2195985 () Bool)

(assert (=> b!1775568 m!2195985))

(declare-fun m!2195987 () Bool)

(assert (=> b!1775568 m!2195987))

(declare-fun m!2195989 () Bool)

(assert (=> b!1775568 m!2195989))

(declare-fun m!2195991 () Bool)

(assert (=> b!1775568 m!2195991))

(declare-fun m!2195993 () Bool)

(assert (=> b!1775568 m!2195993))

(declare-fun m!2195995 () Bool)

(assert (=> b!1775568 m!2195995))

(declare-fun m!2195997 () Bool)

(assert (=> b!1775568 m!2195997))

(declare-fun m!2195999 () Bool)

(assert (=> b!1775556 m!2195999))

(declare-fun m!2196001 () Bool)

(assert (=> b!1775556 m!2196001))

(declare-fun m!2196003 () Bool)

(assert (=> b!1775556 m!2196003))

(declare-fun m!2196005 () Bool)

(assert (=> b!1775556 m!2196005))

(declare-fun m!2196007 () Bool)

(assert (=> b!1775556 m!2196007))

(declare-fun m!2196009 () Bool)

(assert (=> b!1775556 m!2196009))

(declare-fun m!2196011 () Bool)

(assert (=> b!1775556 m!2196011))

(declare-fun m!2196013 () Bool)

(assert (=> b!1775556 m!2196013))

(declare-fun m!2196015 () Bool)

(assert (=> b!1775556 m!2196015))

(declare-fun m!2196017 () Bool)

(assert (=> b!1775556 m!2196017))

(assert (=> b!1775556 m!2196015))

(declare-fun m!2196019 () Bool)

(assert (=> b!1775556 m!2196019))

(declare-fun m!2196021 () Bool)

(assert (=> b!1775561 m!2196021))

(declare-fun m!2196023 () Bool)

(assert (=> b!1775561 m!2196023))

(declare-fun m!2196025 () Bool)

(assert (=> b!1775552 m!2196025))

(declare-fun m!2196027 () Bool)

(assert (=> b!1775552 m!2196027))

(declare-fun m!2196029 () Bool)

(assert (=> b!1775552 m!2196029))

(declare-fun m!2196031 () Bool)

(assert (=> b!1775563 m!2196031))

(declare-fun m!2196033 () Bool)

(assert (=> b!1775563 m!2196033))

(declare-fun m!2196035 () Bool)

(assert (=> b!1775546 m!2196035))

(declare-fun m!2196037 () Bool)

(assert (=> b!1775546 m!2196037))

(declare-fun m!2196039 () Bool)

(assert (=> b!1775546 m!2196039))

(declare-fun m!2196041 () Bool)

(assert (=> b!1775546 m!2196041))

(declare-fun m!2196043 () Bool)

(assert (=> b!1775546 m!2196043))

(declare-fun m!2196045 () Bool)

(assert (=> b!1775546 m!2196045))

(declare-fun m!2196047 () Bool)

(assert (=> b!1775546 m!2196047))

(declare-fun m!2196049 () Bool)

(assert (=> b!1775546 m!2196049))

(declare-fun m!2196051 () Bool)

(assert (=> b!1775546 m!2196051))

(declare-fun m!2196053 () Bool)

(assert (=> b!1775546 m!2196053))

(declare-fun m!2196055 () Bool)

(assert (=> b!1775546 m!2196055))

(declare-fun m!2196057 () Bool)

(assert (=> b!1775546 m!2196057))

(assert (=> b!1775546 m!2196053))

(declare-fun m!2196059 () Bool)

(assert (=> b!1775546 m!2196059))

(declare-fun m!2196061 () Bool)

(assert (=> b!1775546 m!2196061))

(declare-fun m!2196063 () Bool)

(assert (=> b!1775546 m!2196063))

(declare-fun m!2196065 () Bool)

(assert (=> start!176302 m!2196065))

(declare-fun m!2196067 () Bool)

(assert (=> b!1775557 m!2196067))

(declare-fun m!2196069 () Bool)

(assert (=> b!1775557 m!2196069))

(declare-fun m!2196071 () Bool)

(assert (=> b!1775551 m!2196071))

(declare-fun m!2196073 () Bool)

(assert (=> b!1775558 m!2196073))

(assert (=> b!1775558 m!2196073))

(declare-fun m!2196075 () Bool)

(assert (=> b!1775558 m!2196075))

(assert (=> b!1775558 m!2196075))

(declare-fun m!2196077 () Bool)

(assert (=> b!1775558 m!2196077))

(declare-fun m!2196079 () Bool)

(assert (=> b!1775558 m!2196079))

(declare-fun m!2196081 () Bool)

(assert (=> b!1775573 m!2196081))

(declare-fun m!2196083 () Bool)

(assert (=> b!1775576 m!2196083))

(declare-fun m!2196085 () Bool)

(assert (=> b!1775564 m!2196085))

(assert (=> b!1775564 m!2196085))

(declare-fun m!2196087 () Bool)

(assert (=> b!1775564 m!2196087))

(declare-fun m!2196089 () Bool)

(assert (=> b!1775564 m!2196089))

(declare-fun m!2196091 () Bool)

(assert (=> b!1775564 m!2196091))

(declare-fun m!2196093 () Bool)

(assert (=> b!1775564 m!2196093))

(declare-fun m!2196095 () Bool)

(assert (=> b!1775577 m!2196095))

(declare-fun m!2196097 () Bool)

(assert (=> b!1775570 m!2196097))

(assert (=> b!1775569 m!2196051))

(assert (=> b!1775569 m!2196051))

(declare-fun m!2196099 () Bool)

(assert (=> b!1775569 m!2196099))

(assert (=> b!1775569 m!2196099))

(declare-fun m!2196101 () Bool)

(assert (=> b!1775569 m!2196101))

(declare-fun m!2196103 () Bool)

(assert (=> b!1775569 m!2196103))

(declare-fun m!2196105 () Bool)

(assert (=> b!1775574 m!2196105))

(declare-fun m!2196107 () Bool)

(assert (=> b!1775574 m!2196107))

(declare-fun m!2196109 () Bool)

(assert (=> b!1775574 m!2196109))

(declare-fun m!2196111 () Bool)

(assert (=> b!1775574 m!2196111))

(declare-fun m!2196113 () Bool)

(assert (=> b!1775550 m!2196113))

(declare-fun m!2196115 () Bool)

(assert (=> b!1775548 m!2196115))

(declare-fun m!2196117 () Bool)

(assert (=> b!1775566 m!2196117))

(declare-fun m!2196119 () Bool)

(assert (=> b!1775562 m!2196119))

(declare-fun m!2196121 () Bool)

(assert (=> b!1775562 m!2196121))

(declare-fun m!2196123 () Bool)

(assert (=> b!1775562 m!2196123))

(declare-fun m!2196125 () Bool)

(assert (=> b!1775562 m!2196125))

(declare-fun m!2196127 () Bool)

(assert (=> b!1775562 m!2196127))

(declare-fun m!2196129 () Bool)

(assert (=> b!1775567 m!2196129))

(declare-fun m!2196131 () Bool)

(assert (=> b!1775567 m!2196131))

(declare-fun m!2196133 () Bool)

(assert (=> b!1775567 m!2196133))

(declare-fun m!2196135 () Bool)

(assert (=> b!1775567 m!2196135))

(declare-fun m!2196137 () Bool)

(assert (=> b!1775547 m!2196137))

(declare-fun m!2196139 () Bool)

(assert (=> b!1775547 m!2196139))

(check-sat (not b!1775557) (not b!1775550) (not b_next!49937) (not b_lambda!57951) (not b_lambda!57947) (not start!176302) (not tb!107691) (not b!1775571) b_and!135537 tp_is_empty!7901 (not b!1775560) (not b!1775556) (not b_lambda!57949) (not b!1775552) (not b!1775547) (not b!1775554) (not b!1775579) (not b_next!49927) (not b!1775548) (not b!1775598) b_and!135541 b_and!135545 (not b!1775553) (not b!1775570) (not b!1775568) (not b_next!49931) (not b!1775561) (not b!1775562) (not tb!107685) (not b!1775563) (not b!1775573) (not b_next!49929) (not b!1775577) (not b!1775595) (not b!1775558) (not b_next!49935) b_and!135547 (not b!1775574) (not b!1775551) (not tb!107679) (not b!1775567) (not b!1775576) (not b!1775565) (not b!1775569) (not b!1775546) (not b!1775564) (not b_next!49933) b_and!135539 b_and!135543)
(check-sat (not b_next!49937) b_and!135545 (not b_next!49931) b_and!135537 (not b_next!49929) (not b_next!49935) b_and!135547 (not b_next!49927) b_and!135541 (not b_next!49933) b_and!135539 b_and!135543)
(get-model)

(declare-fun d!542339 () Bool)

(assert (=> d!542339 (= (isEmpty!12355 rules!3447) ((_ is Nil!19557) rules!3447))))

(assert (=> b!1775571 d!542339))

(declare-fun d!542341 () Bool)

(declare-fun res!799948 () Bool)

(declare-fun e!1136341 () Bool)

(assert (=> d!542341 (=> (not res!799948) (not e!1136341))))

(declare-fun rulesValid!1321 (LexerInterface!3130 List!19627) Bool)

(assert (=> d!542341 (= res!799948 (rulesValid!1321 thiss!24550 rules!3447))))

(assert (=> d!542341 (= (rulesInvariant!2799 thiss!24550 rules!3447) e!1136341)))

(declare-fun b!1775634 () Bool)

(declare-datatypes ((List!19629 0))(
  ( (Nil!19559) (Cons!19559 (h!24960 String!22287) (t!165992 List!19629)) )
))
(declare-fun noDuplicateTag!1321 (LexerInterface!3130 List!19627 List!19629) Bool)

(assert (=> b!1775634 (= e!1136341 (noDuplicateTag!1321 thiss!24550 rules!3447 Nil!19559))))

(assert (= (and d!542341 res!799948) b!1775634))

(declare-fun m!2196203 () Bool)

(assert (=> d!542341 m!2196203))

(declare-fun m!2196205 () Bool)

(assert (=> b!1775634 m!2196205))

(assert (=> b!1775550 d!542341))

(declare-fun d!542345 () Bool)

(declare-fun c!289031 () Bool)

(assert (=> d!542345 (= c!289031 ((_ is Node!6505) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))))

(declare-fun e!1136355 () Bool)

(assert (=> d!542345 (= (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))) e!1136355)))

(declare-fun b!1775653 () Bool)

(declare-fun inv!25439 (Conc!6505) Bool)

(assert (=> b!1775653 (= e!1136355 (inv!25439 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))))

(declare-fun b!1775654 () Bool)

(declare-fun e!1136356 () Bool)

(assert (=> b!1775654 (= e!1136355 e!1136356)))

(declare-fun res!799957 () Bool)

(assert (=> b!1775654 (= res!799957 (not ((_ is Leaf!9476) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))))))

(assert (=> b!1775654 (=> res!799957 e!1136356)))

(declare-fun b!1775655 () Bool)

(declare-fun inv!25440 (Conc!6505) Bool)

(assert (=> b!1775655 (= e!1136356 (inv!25440 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))))

(assert (= (and d!542345 c!289031) b!1775653))

(assert (= (and d!542345 (not c!289031)) b!1775654))

(assert (= (and b!1775654 (not res!799957)) b!1775655))

(declare-fun m!2196215 () Bool)

(assert (=> b!1775653 m!2196215))

(declare-fun m!2196217 () Bool)

(assert (=> b!1775655 m!2196217))

(assert (=> b!1775595 d!542345))

(declare-fun d!542353 () Bool)

(declare-fun lt!688655 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2837 (List!19627) (InoxSet Rule!6802))

(assert (=> d!542353 (= lt!688655 (select (content!2837 rules!3447) rule!422))))

(declare-fun e!1136363 () Bool)

(assert (=> d!542353 (= lt!688655 e!1136363)))

(declare-fun res!799966 () Bool)

(assert (=> d!542353 (=> (not res!799966) (not e!1136363))))

(assert (=> d!542353 (= res!799966 ((_ is Cons!19557) rules!3447))))

(assert (=> d!542353 (= (contains!3533 rules!3447 rule!422) lt!688655)))

(declare-fun b!1775664 () Bool)

(declare-fun e!1136364 () Bool)

(assert (=> b!1775664 (= e!1136363 e!1136364)))

(declare-fun res!799967 () Bool)

(assert (=> b!1775664 (=> res!799967 e!1136364)))

(assert (=> b!1775664 (= res!799967 (= (h!24958 rules!3447) rule!422))))

(declare-fun b!1775665 () Bool)

(assert (=> b!1775665 (= e!1136364 (contains!3533 (t!165914 rules!3447) rule!422))))

(assert (= (and d!542353 res!799966) b!1775664))

(assert (= (and b!1775664 (not res!799967)) b!1775665))

(declare-fun m!2196219 () Bool)

(assert (=> d!542353 m!2196219))

(declare-fun m!2196221 () Bool)

(assert (=> d!542353 m!2196221))

(declare-fun m!2196223 () Bool)

(assert (=> b!1775665 m!2196223))

(assert (=> b!1775551 d!542353))

(declare-fun d!542355 () Bool)

(declare-fun lt!688659 () List!19626)

(assert (=> d!542355 (= (++!5325 lt!688607 lt!688659) lt!688620)))

(declare-fun e!1136368 () List!19626)

(assert (=> d!542355 (= lt!688659 e!1136368)))

(declare-fun c!289034 () Bool)

(assert (=> d!542355 (= c!289034 ((_ is Cons!19556) lt!688607))))

(assert (=> d!542355 (>= (size!15540 lt!688620) (size!15540 lt!688607))))

(assert (=> d!542355 (= (getSuffix!908 lt!688620 lt!688607) lt!688659)))

(declare-fun b!1775672 () Bool)

(declare-fun tail!2657 (List!19626) List!19626)

(assert (=> b!1775672 (= e!1136368 (getSuffix!908 (tail!2657 lt!688620) (t!165913 lt!688607)))))

(declare-fun b!1775673 () Bool)

(assert (=> b!1775673 (= e!1136368 lt!688620)))

(assert (= (and d!542355 c!289034) b!1775672))

(assert (= (and d!542355 (not c!289034)) b!1775673))

(declare-fun m!2196233 () Bool)

(assert (=> d!542355 m!2196233))

(declare-fun m!2196235 () Bool)

(assert (=> d!542355 m!2196235))

(assert (=> d!542355 m!2195995))

(declare-fun m!2196237 () Bool)

(assert (=> b!1775672 m!2196237))

(assert (=> b!1775672 m!2196237))

(declare-fun m!2196239 () Bool)

(assert (=> b!1775672 m!2196239))

(assert (=> b!1775568 d!542355))

(declare-fun d!542359 () Bool)

(assert (=> d!542359 (= (maxPrefixOneRule!1053 thiss!24550 (rule!5557 (_1!10979 lt!688600)) lt!688620) (Some!4024 (tuple2!19155 (Token!6569 (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) (seqFromList!2470 lt!688607)) (rule!5557 (_1!10979 lt!688600)) (size!15540 lt!688607) lt!688607) (_2!10979 lt!688600))))))

(declare-fun lt!688666 () Unit!33790)

(declare-fun choose!11076 (LexerInterface!3130 List!19627 List!19626 List!19626 List!19626 Rule!6802) Unit!33790)

(assert (=> d!542359 (= lt!688666 (choose!11076 thiss!24550 rules!3447 lt!688607 lt!688620 (_2!10979 lt!688600) (rule!5557 (_1!10979 lt!688600))))))

(assert (=> d!542359 (not (isEmpty!12355 rules!3447))))

(assert (=> d!542359 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!431 thiss!24550 rules!3447 lt!688607 lt!688620 (_2!10979 lt!688600) (rule!5557 (_1!10979 lt!688600))) lt!688666)))

(declare-fun bs!404893 () Bool)

(assert (= bs!404893 d!542359))

(assert (=> bs!404893 m!2195991))

(assert (=> bs!404893 m!2195995))

(assert (=> bs!404893 m!2195973))

(assert (=> bs!404893 m!2195987))

(declare-fun m!2196247 () Bool)

(assert (=> bs!404893 m!2196247))

(assert (=> bs!404893 m!2195987))

(declare-fun m!2196249 () Bool)

(assert (=> bs!404893 m!2196249))

(assert (=> b!1775568 d!542359))

(declare-fun d!542365 () Bool)

(assert (=> d!542365 (= (_2!10979 lt!688600) lt!688583)))

(declare-fun lt!688669 () Unit!33790)

(declare-fun choose!11077 (List!19626 List!19626 List!19626 List!19626 List!19626) Unit!33790)

(assert (=> d!542365 (= lt!688669 (choose!11077 lt!688607 (_2!10979 lt!688600) lt!688607 lt!688583 lt!688620))))

(assert (=> d!542365 (isPrefix!1741 lt!688607 lt!688620)))

(assert (=> d!542365 (= (lemmaSamePrefixThenSameSuffix!852 lt!688607 (_2!10979 lt!688600) lt!688607 lt!688583 lt!688620) lt!688669)))

(declare-fun bs!404894 () Bool)

(assert (= bs!404894 d!542365))

(declare-fun m!2196251 () Bool)

(assert (=> bs!404894 m!2196251))

(assert (=> bs!404894 m!2196037))

(assert (=> b!1775568 d!542365))

(declare-fun b!1775719 () Bool)

(declare-fun res!800010 () Bool)

(declare-fun e!1136388 () Bool)

(assert (=> b!1775719 (=> (not res!800010) (not e!1136388))))

(declare-fun lt!688697 () Option!4025)

(assert (=> b!1775719 (= res!800010 (= (rule!5557 (_1!10979 (get!5992 lt!688697))) (rule!5557 (_1!10979 lt!688600))))))

(declare-fun b!1775720 () Bool)

(declare-fun e!1136389 () Bool)

(assert (=> b!1775720 (= e!1136389 e!1136388)))

(declare-fun res!800005 () Bool)

(assert (=> b!1775720 (=> (not res!800005) (not e!1136388))))

(assert (=> b!1775720 (= res!800005 (matchR!2302 (regex!3501 (rule!5557 (_1!10979 lt!688600))) (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688697))))))))

(declare-fun d!542367 () Bool)

(assert (=> d!542367 e!1136389))

(declare-fun res!800007 () Bool)

(assert (=> d!542367 (=> res!800007 e!1136389)))

(declare-fun isEmpty!12358 (Option!4025) Bool)

(assert (=> d!542367 (= res!800007 (isEmpty!12358 lt!688697))))

(declare-fun e!1136387 () Option!4025)

(assert (=> d!542367 (= lt!688697 e!1136387)))

(declare-fun c!289040 () Bool)

(declare-datatypes ((tuple2!19160 0))(
  ( (tuple2!19161 (_1!10982 List!19626) (_2!10982 List!19626)) )
))
(declare-fun lt!688699 () tuple2!19160)

(assert (=> d!542367 (= c!289040 (isEmpty!12354 (_1!10982 lt!688699)))))

(declare-fun findLongestMatch!386 (Regex!4829 List!19626) tuple2!19160)

(assert (=> d!542367 (= lt!688699 (findLongestMatch!386 (regex!3501 (rule!5557 (_1!10979 lt!688600))) lt!688620))))

(assert (=> d!542367 (ruleValid!999 thiss!24550 (rule!5557 (_1!10979 lt!688600)))))

(assert (=> d!542367 (= (maxPrefixOneRule!1053 thiss!24550 (rule!5557 (_1!10979 lt!688600)) lt!688620) lt!688697)))

(declare-fun b!1775721 () Bool)

(assert (=> b!1775721 (= e!1136387 None!4024)))

(declare-fun b!1775722 () Bool)

(declare-fun e!1136386 () Bool)

(declare-fun findLongestMatchInner!459 (Regex!4829 List!19626 Int List!19626 List!19626 Int) tuple2!19160)

(assert (=> b!1775722 (= e!1136386 (matchR!2302 (regex!3501 (rule!5557 (_1!10979 lt!688600))) (_1!10982 (findLongestMatchInner!459 (regex!3501 (rule!5557 (_1!10979 lt!688600))) Nil!19556 (size!15540 Nil!19556) lt!688620 lt!688620 (size!15540 lt!688620)))))))

(declare-fun b!1775723 () Bool)

(declare-fun res!800011 () Bool)

(assert (=> b!1775723 (=> (not res!800011) (not e!1136388))))

(assert (=> b!1775723 (= res!800011 (= (++!5325 (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688697)))) (_2!10979 (get!5992 lt!688697))) lt!688620))))

(declare-fun b!1775724 () Bool)

(assert (=> b!1775724 (= e!1136388 (= (size!15538 (_1!10979 (get!5992 lt!688697))) (size!15540 (originalCharacters!4315 (_1!10979 (get!5992 lt!688697))))))))

(declare-fun b!1775725 () Bool)

(declare-fun res!800006 () Bool)

(assert (=> b!1775725 (=> (not res!800006) (not e!1136388))))

(assert (=> b!1775725 (= res!800006 (= (value!109451 (_1!10979 (get!5992 lt!688697))) (apply!5301 (transformation!3501 (rule!5557 (_1!10979 (get!5992 lt!688697)))) (seqFromList!2470 (originalCharacters!4315 (_1!10979 (get!5992 lt!688697)))))))))

(declare-fun b!1775726 () Bool)

(assert (=> b!1775726 (= e!1136387 (Some!4024 (tuple2!19155 (Token!6569 (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) (seqFromList!2470 (_1!10982 lt!688699))) (rule!5557 (_1!10979 lt!688600)) (size!15539 (seqFromList!2470 (_1!10982 lt!688699))) (_1!10982 lt!688699)) (_2!10982 lt!688699))))))

(declare-fun lt!688695 () Unit!33790)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!443 (Regex!4829 List!19626) Unit!33790)

(assert (=> b!1775726 (= lt!688695 (longestMatchIsAcceptedByMatchOrIsEmpty!443 (regex!3501 (rule!5557 (_1!10979 lt!688600))) lt!688620))))

(declare-fun res!800008 () Bool)

(assert (=> b!1775726 (= res!800008 (isEmpty!12354 (_1!10982 (findLongestMatchInner!459 (regex!3501 (rule!5557 (_1!10979 lt!688600))) Nil!19556 (size!15540 Nil!19556) lt!688620 lt!688620 (size!15540 lt!688620)))))))

(assert (=> b!1775726 (=> res!800008 e!1136386)))

(assert (=> b!1775726 e!1136386))

(declare-fun lt!688696 () Unit!33790)

(assert (=> b!1775726 (= lt!688696 lt!688695)))

(declare-fun lt!688698 () Unit!33790)

(assert (=> b!1775726 (= lt!688698 (lemmaSemiInverse!639 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) (seqFromList!2470 (_1!10982 lt!688699))))))

(declare-fun b!1775727 () Bool)

(declare-fun res!800009 () Bool)

(assert (=> b!1775727 (=> (not res!800009) (not e!1136388))))

(assert (=> b!1775727 (= res!800009 (< (size!15540 (_2!10979 (get!5992 lt!688697))) (size!15540 lt!688620)))))

(assert (= (and d!542367 c!289040) b!1775721))

(assert (= (and d!542367 (not c!289040)) b!1775726))

(assert (= (and b!1775726 (not res!800008)) b!1775722))

(assert (= (and d!542367 (not res!800007)) b!1775720))

(assert (= (and b!1775720 res!800005) b!1775723))

(assert (= (and b!1775723 res!800011) b!1775727))

(assert (= (and b!1775727 res!800009) b!1775719))

(assert (= (and b!1775719 res!800010) b!1775725))

(assert (= (and b!1775725 res!800006) b!1775724))

(declare-fun m!2196283 () Bool)

(assert (=> b!1775724 m!2196283))

(declare-fun m!2196285 () Bool)

(assert (=> b!1775724 m!2196285))

(declare-fun m!2196287 () Bool)

(assert (=> b!1775726 m!2196287))

(declare-fun m!2196289 () Bool)

(assert (=> b!1775726 m!2196289))

(declare-fun m!2196291 () Bool)

(assert (=> b!1775726 m!2196291))

(assert (=> b!1775726 m!2196235))

(assert (=> b!1775726 m!2196291))

(assert (=> b!1775726 m!2196235))

(declare-fun m!2196293 () Bool)

(assert (=> b!1775726 m!2196293))

(assert (=> b!1775726 m!2196287))

(declare-fun m!2196295 () Bool)

(assert (=> b!1775726 m!2196295))

(assert (=> b!1775726 m!2196287))

(declare-fun m!2196297 () Bool)

(assert (=> b!1775726 m!2196297))

(declare-fun m!2196299 () Bool)

(assert (=> b!1775726 m!2196299))

(declare-fun m!2196301 () Bool)

(assert (=> b!1775726 m!2196301))

(assert (=> b!1775726 m!2196287))

(assert (=> b!1775719 m!2196283))

(assert (=> b!1775722 m!2196291))

(assert (=> b!1775722 m!2196235))

(assert (=> b!1775722 m!2196291))

(assert (=> b!1775722 m!2196235))

(assert (=> b!1775722 m!2196293))

(declare-fun m!2196303 () Bool)

(assert (=> b!1775722 m!2196303))

(assert (=> b!1775723 m!2196283))

(declare-fun m!2196305 () Bool)

(assert (=> b!1775723 m!2196305))

(assert (=> b!1775723 m!2196305))

(declare-fun m!2196307 () Bool)

(assert (=> b!1775723 m!2196307))

(assert (=> b!1775723 m!2196307))

(declare-fun m!2196309 () Bool)

(assert (=> b!1775723 m!2196309))

(assert (=> b!1775720 m!2196283))

(assert (=> b!1775720 m!2196305))

(assert (=> b!1775720 m!2196305))

(assert (=> b!1775720 m!2196307))

(assert (=> b!1775720 m!2196307))

(declare-fun m!2196311 () Bool)

(assert (=> b!1775720 m!2196311))

(assert (=> b!1775727 m!2196283))

(declare-fun m!2196313 () Bool)

(assert (=> b!1775727 m!2196313))

(assert (=> b!1775727 m!2196235))

(assert (=> b!1775725 m!2196283))

(declare-fun m!2196315 () Bool)

(assert (=> b!1775725 m!2196315))

(assert (=> b!1775725 m!2196315))

(declare-fun m!2196317 () Bool)

(assert (=> b!1775725 m!2196317))

(declare-fun m!2196319 () Bool)

(assert (=> d!542367 m!2196319))

(declare-fun m!2196321 () Bool)

(assert (=> d!542367 m!2196321))

(declare-fun m!2196323 () Bool)

(assert (=> d!542367 m!2196323))

(assert (=> d!542367 m!2196123))

(assert (=> b!1775568 d!542367))

(declare-fun d!542373 () Bool)

(assert (=> d!542373 (= (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688594) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688594))))

(declare-fun b_lambda!57955 () Bool)

(assert (=> (not b_lambda!57955) (not d!542373)))

(declare-fun t!165922 () Bool)

(declare-fun tb!107703 () Bool)

(assert (=> (and b!1775559 (= (toValue!5028 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165922) tb!107703))

(declare-fun result!129558 () Bool)

(assert (=> tb!107703 (= result!129558 (inv!21 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688594)))))

(declare-fun m!2196325 () Bool)

(assert (=> tb!107703 m!2196325))

(assert (=> d!542373 t!165922))

(declare-fun b_and!135555 () Bool)

(assert (= b_and!135537 (and (=> t!165922 result!129558) b_and!135555)))

(declare-fun t!165924 () Bool)

(declare-fun tb!107705 () Bool)

(assert (=> (and b!1775578 (= (toValue!5028 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165924) tb!107705))

(declare-fun result!129560 () Bool)

(assert (= result!129560 result!129558))

(assert (=> d!542373 t!165924))

(declare-fun b_and!135557 () Bool)

(assert (= b_and!135539 (and (=> t!165924 result!129560) b_and!135557)))

(declare-fun t!165926 () Bool)

(declare-fun tb!107707 () Bool)

(assert (=> (and b!1775555 (= (toValue!5028 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165926) tb!107707))

(declare-fun result!129562 () Bool)

(assert (= result!129562 result!129558))

(assert (=> d!542373 t!165926))

(declare-fun b_and!135559 () Bool)

(assert (= b_and!135541 (and (=> t!165926 result!129562) b_and!135559)))

(declare-fun m!2196327 () Bool)

(assert (=> d!542373 m!2196327))

(assert (=> b!1775568 d!542373))

(declare-fun d!542375 () Bool)

(declare-fun fromListB!1130 (List!19626) BalanceConc!12954)

(assert (=> d!542375 (= (seqFromList!2470 lt!688607) (fromListB!1130 lt!688607))))

(declare-fun bs!404896 () Bool)

(assert (= bs!404896 d!542375))

(declare-fun m!2196329 () Bool)

(assert (=> bs!404896 m!2196329))

(assert (=> b!1775568 d!542375))

(declare-fun d!542377 () Bool)

(declare-fun lt!688702 () Int)

(assert (=> d!542377 (>= lt!688702 0)))

(declare-fun e!1136393 () Int)

(assert (=> d!542377 (= lt!688702 e!1136393)))

(declare-fun c!289043 () Bool)

(assert (=> d!542377 (= c!289043 ((_ is Nil!19556) lt!688607))))

(assert (=> d!542377 (= (size!15540 lt!688607) lt!688702)))

(declare-fun b!1775732 () Bool)

(assert (=> b!1775732 (= e!1136393 0)))

(declare-fun b!1775733 () Bool)

(assert (=> b!1775733 (= e!1136393 (+ 1 (size!15540 (t!165913 lt!688607))))))

(assert (= (and d!542377 c!289043) b!1775732))

(assert (= (and d!542377 (not c!289043)) b!1775733))

(declare-fun m!2196331 () Bool)

(assert (=> b!1775733 m!2196331))

(assert (=> b!1775568 d!542377))

(declare-fun d!542379 () Bool)

(assert (=> d!542379 (= (inv!25430 (tag!3887 rule!422)) (= (mod (str.len (value!109450 (tag!3887 rule!422))) 2) 0))))

(assert (=> b!1775547 d!542379))

(declare-fun d!542381 () Bool)

(declare-fun res!800014 () Bool)

(declare-fun e!1136396 () Bool)

(assert (=> d!542381 (=> (not res!800014) (not e!1136396))))

(declare-fun semiInverseModEq!1395 (Int Int) Bool)

(assert (=> d!542381 (= res!800014 (semiInverseModEq!1395 (toChars!4887 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 rule!422))))))

(assert (=> d!542381 (= (inv!25435 (transformation!3501 rule!422)) e!1136396)))

(declare-fun b!1775736 () Bool)

(declare-fun equivClasses!1336 (Int Int) Bool)

(assert (=> b!1775736 (= e!1136396 (equivClasses!1336 (toChars!4887 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 rule!422))))))

(assert (= (and d!542381 res!800014) b!1775736))

(declare-fun m!2196333 () Bool)

(assert (=> d!542381 m!2196333))

(declare-fun m!2196335 () Bool)

(assert (=> b!1775736 m!2196335))

(assert (=> b!1775547 d!542381))

(declare-fun b!1775765 () Bool)

(declare-fun e!1136411 () Bool)

(assert (=> b!1775765 (= e!1136411 (not (= (head!4138 (list!7947 (charsOf!2150 (_1!10979 lt!688600)))) (c!289018 (regex!3501 lt!688602)))))))

(declare-fun b!1775766 () Bool)

(declare-fun e!1136412 () Bool)

(declare-fun lt!688705 () Bool)

(assert (=> b!1775766 (= e!1136412 (not lt!688705))))

(declare-fun b!1775767 () Bool)

(declare-fun e!1136417 () Bool)

(assert (=> b!1775767 (= e!1136417 e!1136412)))

(declare-fun c!289052 () Bool)

(assert (=> b!1775767 (= c!289052 ((_ is EmptyLang!4829) (regex!3501 lt!688602)))))

(declare-fun bm!111187 () Bool)

(declare-fun call!111192 () Bool)

(assert (=> bm!111187 (= call!111192 (isEmpty!12354 (list!7947 (charsOf!2150 (_1!10979 lt!688600)))))))

(declare-fun b!1775769 () Bool)

(declare-fun res!800032 () Bool)

(assert (=> b!1775769 (=> res!800032 e!1136411)))

(assert (=> b!1775769 (= res!800032 (not (isEmpty!12354 (tail!2657 (list!7947 (charsOf!2150 (_1!10979 lt!688600)))))))))

(declare-fun b!1775770 () Bool)

(declare-fun e!1136416 () Bool)

(assert (=> b!1775770 (= e!1136416 (= (head!4138 (list!7947 (charsOf!2150 (_1!10979 lt!688600)))) (c!289018 (regex!3501 lt!688602))))))

(declare-fun b!1775771 () Bool)

(declare-fun res!800031 () Bool)

(declare-fun e!1136415 () Bool)

(assert (=> b!1775771 (=> res!800031 e!1136415)))

(assert (=> b!1775771 (= res!800031 e!1136416)))

(declare-fun res!800038 () Bool)

(assert (=> b!1775771 (=> (not res!800038) (not e!1136416))))

(assert (=> b!1775771 (= res!800038 lt!688705)))

(declare-fun b!1775772 () Bool)

(declare-fun e!1136413 () Bool)

(declare-fun nullable!1480 (Regex!4829) Bool)

(assert (=> b!1775772 (= e!1136413 (nullable!1480 (regex!3501 lt!688602)))))

(declare-fun b!1775773 () Bool)

(declare-fun derivativeStep!1249 (Regex!4829 C!9832) Regex!4829)

(assert (=> b!1775773 (= e!1136413 (matchR!2302 (derivativeStep!1249 (regex!3501 lt!688602) (head!4138 (list!7947 (charsOf!2150 (_1!10979 lt!688600))))) (tail!2657 (list!7947 (charsOf!2150 (_1!10979 lt!688600))))))))

(declare-fun b!1775774 () Bool)

(declare-fun e!1136414 () Bool)

(assert (=> b!1775774 (= e!1136415 e!1136414)))

(declare-fun res!800035 () Bool)

(assert (=> b!1775774 (=> (not res!800035) (not e!1136414))))

(assert (=> b!1775774 (= res!800035 (not lt!688705))))

(declare-fun b!1775768 () Bool)

(declare-fun res!800037 () Bool)

(assert (=> b!1775768 (=> (not res!800037) (not e!1136416))))

(assert (=> b!1775768 (= res!800037 (isEmpty!12354 (tail!2657 (list!7947 (charsOf!2150 (_1!10979 lt!688600))))))))

(declare-fun d!542383 () Bool)

(assert (=> d!542383 e!1136417))

(declare-fun c!289051 () Bool)

(assert (=> d!542383 (= c!289051 ((_ is EmptyExpr!4829) (regex!3501 lt!688602)))))

(assert (=> d!542383 (= lt!688705 e!1136413)))

(declare-fun c!289050 () Bool)

(assert (=> d!542383 (= c!289050 (isEmpty!12354 (list!7947 (charsOf!2150 (_1!10979 lt!688600)))))))

(declare-fun validRegex!1954 (Regex!4829) Bool)

(assert (=> d!542383 (validRegex!1954 (regex!3501 lt!688602))))

(assert (=> d!542383 (= (matchR!2302 (regex!3501 lt!688602) (list!7947 (charsOf!2150 (_1!10979 lt!688600)))) lt!688705)))

(declare-fun b!1775775 () Bool)

(assert (=> b!1775775 (= e!1136417 (= lt!688705 call!111192))))

(declare-fun b!1775776 () Bool)

(assert (=> b!1775776 (= e!1136414 e!1136411)))

(declare-fun res!800034 () Bool)

(assert (=> b!1775776 (=> res!800034 e!1136411)))

(assert (=> b!1775776 (= res!800034 call!111192)))

(declare-fun b!1775777 () Bool)

(declare-fun res!800036 () Bool)

(assert (=> b!1775777 (=> res!800036 e!1136415)))

(assert (=> b!1775777 (= res!800036 (not ((_ is ElementMatch!4829) (regex!3501 lt!688602))))))

(assert (=> b!1775777 (= e!1136412 e!1136415)))

(declare-fun b!1775778 () Bool)

(declare-fun res!800033 () Bool)

(assert (=> b!1775778 (=> (not res!800033) (not e!1136416))))

(assert (=> b!1775778 (= res!800033 (not call!111192))))

(assert (= (and d!542383 c!289050) b!1775772))

(assert (= (and d!542383 (not c!289050)) b!1775773))

(assert (= (and d!542383 c!289051) b!1775775))

(assert (= (and d!542383 (not c!289051)) b!1775767))

(assert (= (and b!1775767 c!289052) b!1775766))

(assert (= (and b!1775767 (not c!289052)) b!1775777))

(assert (= (and b!1775777 (not res!800036)) b!1775771))

(assert (= (and b!1775771 res!800038) b!1775778))

(assert (= (and b!1775778 res!800033) b!1775768))

(assert (= (and b!1775768 res!800037) b!1775770))

(assert (= (and b!1775771 (not res!800031)) b!1775774))

(assert (= (and b!1775774 res!800035) b!1775776))

(assert (= (and b!1775776 (not res!800034)) b!1775769))

(assert (= (and b!1775769 (not res!800032)) b!1775765))

(assert (= (or b!1775775 b!1775776 b!1775778) bm!111187))

(declare-fun m!2196337 () Bool)

(assert (=> b!1775772 m!2196337))

(assert (=> bm!111187 m!2196099))

(declare-fun m!2196339 () Bool)

(assert (=> bm!111187 m!2196339))

(assert (=> d!542383 m!2196099))

(assert (=> d!542383 m!2196339))

(declare-fun m!2196341 () Bool)

(assert (=> d!542383 m!2196341))

(assert (=> b!1775769 m!2196099))

(declare-fun m!2196343 () Bool)

(assert (=> b!1775769 m!2196343))

(assert (=> b!1775769 m!2196343))

(declare-fun m!2196345 () Bool)

(assert (=> b!1775769 m!2196345))

(assert (=> b!1775765 m!2196099))

(declare-fun m!2196347 () Bool)

(assert (=> b!1775765 m!2196347))

(assert (=> b!1775773 m!2196099))

(assert (=> b!1775773 m!2196347))

(assert (=> b!1775773 m!2196347))

(declare-fun m!2196349 () Bool)

(assert (=> b!1775773 m!2196349))

(assert (=> b!1775773 m!2196099))

(assert (=> b!1775773 m!2196343))

(assert (=> b!1775773 m!2196349))

(assert (=> b!1775773 m!2196343))

(declare-fun m!2196351 () Bool)

(assert (=> b!1775773 m!2196351))

(assert (=> b!1775768 m!2196099))

(assert (=> b!1775768 m!2196343))

(assert (=> b!1775768 m!2196343))

(assert (=> b!1775768 m!2196345))

(assert (=> b!1775770 m!2196099))

(assert (=> b!1775770 m!2196347))

(assert (=> b!1775569 d!542383))

(declare-fun d!542385 () Bool)

(declare-fun list!7950 (Conc!6505) List!19626)

(assert (=> d!542385 (= (list!7947 (charsOf!2150 (_1!10979 lt!688600))) (list!7950 (c!289019 (charsOf!2150 (_1!10979 lt!688600)))))))

(declare-fun bs!404897 () Bool)

(assert (= bs!404897 d!542385))

(declare-fun m!2196353 () Bool)

(assert (=> bs!404897 m!2196353))

(assert (=> b!1775569 d!542385))

(declare-fun d!542387 () Bool)

(declare-fun lt!688708 () BalanceConc!12954)

(assert (=> d!542387 (= (list!7947 lt!688708) (originalCharacters!4315 (_1!10979 lt!688600)))))

(assert (=> d!542387 (= lt!688708 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))

(assert (=> d!542387 (= (charsOf!2150 (_1!10979 lt!688600)) lt!688708)))

(declare-fun b_lambda!57957 () Bool)

(assert (=> (not b_lambda!57957) (not d!542387)))

(assert (=> d!542387 t!165907))

(declare-fun b_and!135561 () Bool)

(assert (= b_and!135543 (and (=> t!165907 result!129546) b_and!135561)))

(assert (=> d!542387 t!165909))

(declare-fun b_and!135563 () Bool)

(assert (= b_and!135545 (and (=> t!165909 result!129548) b_and!135563)))

(assert (=> d!542387 t!165911))

(declare-fun b_and!135565 () Bool)

(assert (= b_and!135547 (and (=> t!165911 result!129550) b_and!135565)))

(declare-fun m!2196355 () Bool)

(assert (=> d!542387 m!2196355))

(assert (=> d!542387 m!2196117))

(assert (=> b!1775569 d!542387))

(declare-fun d!542389 () Bool)

(assert (=> d!542389 (= (get!5993 lt!688606) (v!25504 lt!688606))))

(assert (=> b!1775569 d!542389))

(declare-fun d!542391 () Bool)

(assert (=> d!542391 (= (isEmpty!12354 suffix!1421) ((_ is Nil!19556) suffix!1421))))

(assert (=> b!1775548 d!542391))

(declare-fun b!1775789 () Bool)

(declare-fun e!1136425 () Bool)

(declare-fun inv!17 (TokenValue!3591) Bool)

(assert (=> b!1775789 (= e!1136425 (inv!17 (value!109451 token!523)))))

(declare-fun b!1775790 () Bool)

(declare-fun e!1136424 () Bool)

(declare-fun inv!15 (TokenValue!3591) Bool)

(assert (=> b!1775790 (= e!1136424 (inv!15 (value!109451 token!523)))))

(declare-fun d!542393 () Bool)

(declare-fun c!289057 () Bool)

(assert (=> d!542393 (= c!289057 ((_ is IntegerValue!10773) (value!109451 token!523)))))

(declare-fun e!1136426 () Bool)

(assert (=> d!542393 (= (inv!21 (value!109451 token!523)) e!1136426)))

(declare-fun b!1775791 () Bool)

(declare-fun inv!16 (TokenValue!3591) Bool)

(assert (=> b!1775791 (= e!1136426 (inv!16 (value!109451 token!523)))))

(declare-fun b!1775792 () Bool)

(assert (=> b!1775792 (= e!1136426 e!1136425)))

(declare-fun c!289058 () Bool)

(assert (=> b!1775792 (= c!289058 ((_ is IntegerValue!10774) (value!109451 token!523)))))

(declare-fun b!1775793 () Bool)

(declare-fun res!800041 () Bool)

(assert (=> b!1775793 (=> res!800041 e!1136424)))

(assert (=> b!1775793 (= res!800041 (not ((_ is IntegerValue!10775) (value!109451 token!523))))))

(assert (=> b!1775793 (= e!1136425 e!1136424)))

(assert (= (and d!542393 c!289057) b!1775791))

(assert (= (and d!542393 (not c!289057)) b!1775792))

(assert (= (and b!1775792 c!289058) b!1775789))

(assert (= (and b!1775792 (not c!289058)) b!1775793))

(assert (= (and b!1775793 (not res!800041)) b!1775790))

(declare-fun m!2196357 () Bool)

(assert (=> b!1775789 m!2196357))

(declare-fun m!2196359 () Bool)

(assert (=> b!1775790 m!2196359))

(declare-fun m!2196361 () Bool)

(assert (=> b!1775791 m!2196361))

(assert (=> b!1775570 d!542393))

(declare-fun d!542395 () Bool)

(assert (=> d!542395 (= (get!5992 lt!688589) (v!25505 lt!688589))))

(assert (=> b!1775565 d!542395))

(declare-fun d!542397 () Bool)

(assert (=> d!542397 (= (isDefined!3368 lt!688589) (not (isEmpty!12358 lt!688589)))))

(declare-fun bs!404898 () Bool)

(assert (= bs!404898 d!542397))

(declare-fun m!2196363 () Bool)

(assert (=> bs!404898 m!2196363))

(assert (=> b!1775567 d!542397))

(declare-fun b!1775812 () Bool)

(declare-fun res!800061 () Bool)

(declare-fun e!1136433 () Bool)

(assert (=> b!1775812 (=> (not res!800061) (not e!1136433))))

(declare-fun lt!688722 () Option!4025)

(assert (=> b!1775812 (= res!800061 (= (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688722)))) (originalCharacters!4315 (_1!10979 (get!5992 lt!688722)))))))

(declare-fun b!1775813 () Bool)

(declare-fun e!1136435 () Bool)

(assert (=> b!1775813 (= e!1136435 e!1136433)))

(declare-fun res!800059 () Bool)

(assert (=> b!1775813 (=> (not res!800059) (not e!1136433))))

(assert (=> b!1775813 (= res!800059 (isDefined!3368 lt!688722))))

(declare-fun b!1775814 () Bool)

(declare-fun res!800062 () Bool)

(assert (=> b!1775814 (=> (not res!800062) (not e!1136433))))

(assert (=> b!1775814 (= res!800062 (matchR!2302 (regex!3501 (rule!5557 (_1!10979 (get!5992 lt!688722)))) (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688722))))))))

(declare-fun b!1775815 () Bool)

(assert (=> b!1775815 (= e!1136433 (contains!3533 rules!3447 (rule!5557 (_1!10979 (get!5992 lt!688722)))))))

(declare-fun b!1775816 () Bool)

(declare-fun res!800056 () Bool)

(assert (=> b!1775816 (=> (not res!800056) (not e!1136433))))

(assert (=> b!1775816 (= res!800056 (= (value!109451 (_1!10979 (get!5992 lt!688722))) (apply!5301 (transformation!3501 (rule!5557 (_1!10979 (get!5992 lt!688722)))) (seqFromList!2470 (originalCharacters!4315 (_1!10979 (get!5992 lt!688722)))))))))

(declare-fun b!1775817 () Bool)

(declare-fun res!800058 () Bool)

(assert (=> b!1775817 (=> (not res!800058) (not e!1136433))))

(assert (=> b!1775817 (= res!800058 (= (++!5325 (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688722)))) (_2!10979 (get!5992 lt!688722))) lt!688584))))

(declare-fun b!1775818 () Bool)

(declare-fun res!800060 () Bool)

(assert (=> b!1775818 (=> (not res!800060) (not e!1136433))))

(assert (=> b!1775818 (= res!800060 (< (size!15540 (_2!10979 (get!5992 lt!688722))) (size!15540 lt!688584)))))

(declare-fun b!1775819 () Bool)

(declare-fun e!1136434 () Option!4025)

(declare-fun call!111195 () Option!4025)

(assert (=> b!1775819 (= e!1136434 call!111195)))

(declare-fun bm!111190 () Bool)

(assert (=> bm!111190 (= call!111195 (maxPrefixOneRule!1053 thiss!24550 (h!24958 rules!3447) lt!688584))))

(declare-fun b!1775820 () Bool)

(declare-fun lt!688721 () Option!4025)

(declare-fun lt!688719 () Option!4025)

(assert (=> b!1775820 (= e!1136434 (ite (and ((_ is None!4024) lt!688721) ((_ is None!4024) lt!688719)) None!4024 (ite ((_ is None!4024) lt!688719) lt!688721 (ite ((_ is None!4024) lt!688721) lt!688719 (ite (>= (size!15538 (_1!10979 (v!25505 lt!688721))) (size!15538 (_1!10979 (v!25505 lt!688719)))) lt!688721 lt!688719)))))))

(assert (=> b!1775820 (= lt!688721 call!111195)))

(assert (=> b!1775820 (= lt!688719 (maxPrefix!1684 thiss!24550 (t!165914 rules!3447) lt!688584))))

(declare-fun d!542399 () Bool)

(assert (=> d!542399 e!1136435))

(declare-fun res!800057 () Bool)

(assert (=> d!542399 (=> res!800057 e!1136435)))

(assert (=> d!542399 (= res!800057 (isEmpty!12358 lt!688722))))

(assert (=> d!542399 (= lt!688722 e!1136434)))

(declare-fun c!289061 () Bool)

(assert (=> d!542399 (= c!289061 (and ((_ is Cons!19557) rules!3447) ((_ is Nil!19557) (t!165914 rules!3447))))))

(declare-fun lt!688723 () Unit!33790)

(declare-fun lt!688720 () Unit!33790)

(assert (=> d!542399 (= lt!688723 lt!688720)))

(assert (=> d!542399 (isPrefix!1741 lt!688584 lt!688584)))

(assert (=> d!542399 (= lt!688720 (lemmaIsPrefixRefl!1150 lt!688584 lt!688584))))

(declare-fun rulesValidInductive!1186 (LexerInterface!3130 List!19627) Bool)

(assert (=> d!542399 (rulesValidInductive!1186 thiss!24550 rules!3447)))

(assert (=> d!542399 (= (maxPrefix!1684 thiss!24550 rules!3447 lt!688584) lt!688722)))

(assert (= (and d!542399 c!289061) b!1775819))

(assert (= (and d!542399 (not c!289061)) b!1775820))

(assert (= (or b!1775819 b!1775820) bm!111190))

(assert (= (and d!542399 (not res!800057)) b!1775813))

(assert (= (and b!1775813 res!800059) b!1775812))

(assert (= (and b!1775812 res!800061) b!1775818))

(assert (= (and b!1775818 res!800060) b!1775817))

(assert (= (and b!1775817 res!800058) b!1775816))

(assert (= (and b!1775816 res!800056) b!1775814))

(assert (= (and b!1775814 res!800062) b!1775815))

(declare-fun m!2196365 () Bool)

(assert (=> bm!111190 m!2196365))

(declare-fun m!2196367 () Bool)

(assert (=> b!1775816 m!2196367))

(declare-fun m!2196369 () Bool)

(assert (=> b!1775816 m!2196369))

(assert (=> b!1775816 m!2196369))

(declare-fun m!2196371 () Bool)

(assert (=> b!1775816 m!2196371))

(declare-fun m!2196373 () Bool)

(assert (=> d!542399 m!2196373))

(declare-fun m!2196375 () Bool)

(assert (=> d!542399 m!2196375))

(declare-fun m!2196377 () Bool)

(assert (=> d!542399 m!2196377))

(declare-fun m!2196379 () Bool)

(assert (=> d!542399 m!2196379))

(declare-fun m!2196381 () Bool)

(assert (=> b!1775820 m!2196381))

(assert (=> b!1775818 m!2196367))

(declare-fun m!2196383 () Bool)

(assert (=> b!1775818 m!2196383))

(assert (=> b!1775818 m!2196095))

(assert (=> b!1775812 m!2196367))

(declare-fun m!2196385 () Bool)

(assert (=> b!1775812 m!2196385))

(assert (=> b!1775812 m!2196385))

(declare-fun m!2196387 () Bool)

(assert (=> b!1775812 m!2196387))

(assert (=> b!1775815 m!2196367))

(declare-fun m!2196389 () Bool)

(assert (=> b!1775815 m!2196389))

(assert (=> b!1775814 m!2196367))

(assert (=> b!1775814 m!2196385))

(assert (=> b!1775814 m!2196385))

(assert (=> b!1775814 m!2196387))

(assert (=> b!1775814 m!2196387))

(declare-fun m!2196391 () Bool)

(assert (=> b!1775814 m!2196391))

(assert (=> b!1775817 m!2196367))

(assert (=> b!1775817 m!2196385))

(assert (=> b!1775817 m!2196385))

(assert (=> b!1775817 m!2196387))

(assert (=> b!1775817 m!2196387))

(declare-fun m!2196393 () Bool)

(assert (=> b!1775817 m!2196393))

(declare-fun m!2196395 () Bool)

(assert (=> b!1775813 m!2196395))

(assert (=> b!1775567 d!542399))

(declare-fun d!542401 () Bool)

(assert (=> d!542401 (= (list!7947 lt!688609) (list!7950 (c!289019 lt!688609)))))

(declare-fun bs!404899 () Bool)

(assert (= bs!404899 d!542401))

(declare-fun m!2196397 () Bool)

(assert (=> bs!404899 m!2196397))

(assert (=> b!1775567 d!542401))

(declare-fun d!542403 () Bool)

(declare-fun lt!688724 () BalanceConc!12954)

(assert (=> d!542403 (= (list!7947 lt!688724) (originalCharacters!4315 token!523))))

(assert (=> d!542403 (= lt!688724 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (value!109451 token!523)))))

(assert (=> d!542403 (= (charsOf!2150 token!523) lt!688724)))

(declare-fun b_lambda!57959 () Bool)

(assert (=> (not b_lambda!57959) (not d!542403)))

(declare-fun tb!107709 () Bool)

(declare-fun t!165928 () Bool)

(assert (=> (and b!1775559 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 token!523)))) t!165928) tb!107709))

(declare-fun b!1775821 () Bool)

(declare-fun e!1136436 () Bool)

(declare-fun tp!503191 () Bool)

(assert (=> b!1775821 (= e!1136436 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (value!109451 token!523)))) tp!503191))))

(declare-fun result!129564 () Bool)

(assert (=> tb!107709 (= result!129564 (and (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (value!109451 token!523))) e!1136436))))

(assert (= tb!107709 b!1775821))

(declare-fun m!2196399 () Bool)

(assert (=> b!1775821 m!2196399))

(declare-fun m!2196401 () Bool)

(assert (=> tb!107709 m!2196401))

(assert (=> d!542403 t!165928))

(declare-fun b_and!135567 () Bool)

(assert (= b_and!135561 (and (=> t!165928 result!129564) b_and!135567)))

(declare-fun t!165930 () Bool)

(declare-fun tb!107711 () Bool)

(assert (=> (and b!1775578 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 token!523)))) t!165930) tb!107711))

(declare-fun result!129566 () Bool)

(assert (= result!129566 result!129564))

(assert (=> d!542403 t!165930))

(declare-fun b_and!135569 () Bool)

(assert (= b_and!135563 (and (=> t!165930 result!129566) b_and!135569)))

(declare-fun tb!107713 () Bool)

(declare-fun t!165932 () Bool)

(assert (=> (and b!1775555 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 token!523)))) t!165932) tb!107713))

(declare-fun result!129568 () Bool)

(assert (= result!129568 result!129564))

(assert (=> d!542403 t!165932))

(declare-fun b_and!135571 () Bool)

(assert (= b_and!135565 (and (=> t!165932 result!129568) b_and!135571)))

(declare-fun m!2196403 () Bool)

(assert (=> d!542403 m!2196403))

(declare-fun m!2196405 () Bool)

(assert (=> d!542403 m!2196405))

(assert (=> b!1775567 d!542403))

(declare-fun b!1775840 () Bool)

(declare-fun res!800072 () Bool)

(declare-fun e!1136446 () Bool)

(assert (=> b!1775840 (=> (not res!800072) (not e!1136446))))

(declare-fun lt!688761 () List!19626)

(assert (=> b!1775840 (= res!800072 (= (size!15540 lt!688761) (+ (size!15540 lt!688584) (size!15540 suffix!1421))))))

(declare-fun b!1775838 () Bool)

(declare-fun e!1136445 () List!19626)

(assert (=> b!1775838 (= e!1136445 suffix!1421)))

(declare-fun d!542405 () Bool)

(assert (=> d!542405 e!1136446))

(declare-fun res!800071 () Bool)

(assert (=> d!542405 (=> (not res!800071) (not e!1136446))))

(declare-fun content!2839 (List!19626) (InoxSet C!9832))

(assert (=> d!542405 (= res!800071 (= (content!2839 lt!688761) ((_ map or) (content!2839 lt!688584) (content!2839 suffix!1421))))))

(assert (=> d!542405 (= lt!688761 e!1136445)))

(declare-fun c!289066 () Bool)

(assert (=> d!542405 (= c!289066 ((_ is Nil!19556) lt!688584))))

(assert (=> d!542405 (= (++!5325 lt!688584 suffix!1421) lt!688761)))

(declare-fun b!1775839 () Bool)

(assert (=> b!1775839 (= e!1136445 (Cons!19556 (h!24957 lt!688584) (++!5325 (t!165913 lt!688584) suffix!1421)))))

(declare-fun b!1775841 () Bool)

(assert (=> b!1775841 (= e!1136446 (or (not (= suffix!1421 Nil!19556)) (= lt!688761 lt!688584)))))

(assert (= (and d!542405 c!289066) b!1775838))

(assert (= (and d!542405 (not c!289066)) b!1775839))

(assert (= (and d!542405 res!800071) b!1775840))

(assert (= (and b!1775840 res!800072) b!1775841))

(declare-fun m!2196407 () Bool)

(assert (=> b!1775840 m!2196407))

(assert (=> b!1775840 m!2196095))

(declare-fun m!2196409 () Bool)

(assert (=> b!1775840 m!2196409))

(declare-fun m!2196411 () Bool)

(assert (=> d!542405 m!2196411))

(declare-fun m!2196413 () Bool)

(assert (=> d!542405 m!2196413))

(declare-fun m!2196415 () Bool)

(assert (=> d!542405 m!2196415))

(declare-fun m!2196417 () Bool)

(assert (=> b!1775839 m!2196417))

(assert (=> b!1775546 d!542405))

(declare-fun b!1775852 () Bool)

(declare-fun e!1136455 () Bool)

(assert (=> b!1775852 (= e!1136455 (isPrefix!1741 (tail!2657 lt!688607) (tail!2657 lt!688620)))))

(declare-fun b!1775850 () Bool)

(declare-fun e!1136453 () Bool)

(assert (=> b!1775850 (= e!1136453 e!1136455)))

(declare-fun res!800083 () Bool)

(assert (=> b!1775850 (=> (not res!800083) (not e!1136455))))

(assert (=> b!1775850 (= res!800083 (not ((_ is Nil!19556) lt!688620)))))

(declare-fun b!1775853 () Bool)

(declare-fun e!1136454 () Bool)

(assert (=> b!1775853 (= e!1136454 (>= (size!15540 lt!688620) (size!15540 lt!688607)))))

(declare-fun d!542407 () Bool)

(assert (=> d!542407 e!1136454))

(declare-fun res!800081 () Bool)

(assert (=> d!542407 (=> res!800081 e!1136454)))

(declare-fun lt!688764 () Bool)

(assert (=> d!542407 (= res!800081 (not lt!688764))))

(assert (=> d!542407 (= lt!688764 e!1136453)))

(declare-fun res!800082 () Bool)

(assert (=> d!542407 (=> res!800082 e!1136453)))

(assert (=> d!542407 (= res!800082 ((_ is Nil!19556) lt!688607))))

(assert (=> d!542407 (= (isPrefix!1741 lt!688607 lt!688620) lt!688764)))

(declare-fun b!1775851 () Bool)

(declare-fun res!800084 () Bool)

(assert (=> b!1775851 (=> (not res!800084) (not e!1136455))))

(assert (=> b!1775851 (= res!800084 (= (head!4138 lt!688607) (head!4138 lt!688620)))))

(assert (= (and d!542407 (not res!800082)) b!1775850))

(assert (= (and b!1775850 res!800083) b!1775851))

(assert (= (and b!1775851 res!800084) b!1775852))

(assert (= (and d!542407 (not res!800081)) b!1775853))

(declare-fun m!2196419 () Bool)

(assert (=> b!1775852 m!2196419))

(assert (=> b!1775852 m!2196237))

(assert (=> b!1775852 m!2196419))

(assert (=> b!1775852 m!2196237))

(declare-fun m!2196421 () Bool)

(assert (=> b!1775852 m!2196421))

(assert (=> b!1775853 m!2196235))

(assert (=> b!1775853 m!2195995))

(declare-fun m!2196423 () Bool)

(assert (=> b!1775851 m!2196423))

(declare-fun m!2196425 () Bool)

(assert (=> b!1775851 m!2196425))

(assert (=> b!1775546 d!542407))

(declare-fun b!1775854 () Bool)

(declare-fun res!800090 () Bool)

(declare-fun e!1136456 () Bool)

(assert (=> b!1775854 (=> (not res!800090) (not e!1136456))))

(declare-fun lt!688768 () Option!4025)

(assert (=> b!1775854 (= res!800090 (= (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688768)))) (originalCharacters!4315 (_1!10979 (get!5992 lt!688768)))))))

(declare-fun b!1775855 () Bool)

(declare-fun e!1136458 () Bool)

(assert (=> b!1775855 (= e!1136458 e!1136456)))

(declare-fun res!800088 () Bool)

(assert (=> b!1775855 (=> (not res!800088) (not e!1136456))))

(assert (=> b!1775855 (= res!800088 (isDefined!3368 lt!688768))))

(declare-fun b!1775856 () Bool)

(declare-fun res!800091 () Bool)

(assert (=> b!1775856 (=> (not res!800091) (not e!1136456))))

(assert (=> b!1775856 (= res!800091 (matchR!2302 (regex!3501 (rule!5557 (_1!10979 (get!5992 lt!688768)))) (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688768))))))))

(declare-fun b!1775857 () Bool)

(assert (=> b!1775857 (= e!1136456 (contains!3533 rules!3447 (rule!5557 (_1!10979 (get!5992 lt!688768)))))))

(declare-fun b!1775858 () Bool)

(declare-fun res!800085 () Bool)

(assert (=> b!1775858 (=> (not res!800085) (not e!1136456))))

(assert (=> b!1775858 (= res!800085 (= (value!109451 (_1!10979 (get!5992 lt!688768))) (apply!5301 (transformation!3501 (rule!5557 (_1!10979 (get!5992 lt!688768)))) (seqFromList!2470 (originalCharacters!4315 (_1!10979 (get!5992 lt!688768)))))))))

(declare-fun b!1775859 () Bool)

(declare-fun res!800087 () Bool)

(assert (=> b!1775859 (=> (not res!800087) (not e!1136456))))

(assert (=> b!1775859 (= res!800087 (= (++!5325 (list!7947 (charsOf!2150 (_1!10979 (get!5992 lt!688768)))) (_2!10979 (get!5992 lt!688768))) lt!688620))))

(declare-fun b!1775860 () Bool)

(declare-fun res!800089 () Bool)

(assert (=> b!1775860 (=> (not res!800089) (not e!1136456))))

(assert (=> b!1775860 (= res!800089 (< (size!15540 (_2!10979 (get!5992 lt!688768))) (size!15540 lt!688620)))))

(declare-fun b!1775861 () Bool)

(declare-fun e!1136457 () Option!4025)

(declare-fun call!111196 () Option!4025)

(assert (=> b!1775861 (= e!1136457 call!111196)))

(declare-fun bm!111191 () Bool)

(assert (=> bm!111191 (= call!111196 (maxPrefixOneRule!1053 thiss!24550 (h!24958 rules!3447) lt!688620))))

(declare-fun b!1775862 () Bool)

(declare-fun lt!688767 () Option!4025)

(declare-fun lt!688765 () Option!4025)

(assert (=> b!1775862 (= e!1136457 (ite (and ((_ is None!4024) lt!688767) ((_ is None!4024) lt!688765)) None!4024 (ite ((_ is None!4024) lt!688765) lt!688767 (ite ((_ is None!4024) lt!688767) lt!688765 (ite (>= (size!15538 (_1!10979 (v!25505 lt!688767))) (size!15538 (_1!10979 (v!25505 lt!688765)))) lt!688767 lt!688765)))))))

(assert (=> b!1775862 (= lt!688767 call!111196)))

(assert (=> b!1775862 (= lt!688765 (maxPrefix!1684 thiss!24550 (t!165914 rules!3447) lt!688620))))

(declare-fun d!542409 () Bool)

(assert (=> d!542409 e!1136458))

(declare-fun res!800086 () Bool)

(assert (=> d!542409 (=> res!800086 e!1136458)))

(assert (=> d!542409 (= res!800086 (isEmpty!12358 lt!688768))))

(assert (=> d!542409 (= lt!688768 e!1136457)))

(declare-fun c!289067 () Bool)

(assert (=> d!542409 (= c!289067 (and ((_ is Cons!19557) rules!3447) ((_ is Nil!19557) (t!165914 rules!3447))))))

(declare-fun lt!688769 () Unit!33790)

(declare-fun lt!688766 () Unit!33790)

(assert (=> d!542409 (= lt!688769 lt!688766)))

(assert (=> d!542409 (isPrefix!1741 lt!688620 lt!688620)))

(assert (=> d!542409 (= lt!688766 (lemmaIsPrefixRefl!1150 lt!688620 lt!688620))))

(assert (=> d!542409 (rulesValidInductive!1186 thiss!24550 rules!3447)))

(assert (=> d!542409 (= (maxPrefix!1684 thiss!24550 rules!3447 lt!688620) lt!688768)))

(assert (= (and d!542409 c!289067) b!1775861))

(assert (= (and d!542409 (not c!289067)) b!1775862))

(assert (= (or b!1775861 b!1775862) bm!111191))

(assert (= (and d!542409 (not res!800086)) b!1775855))

(assert (= (and b!1775855 res!800088) b!1775854))

(assert (= (and b!1775854 res!800090) b!1775860))

(assert (= (and b!1775860 res!800089) b!1775859))

(assert (= (and b!1775859 res!800087) b!1775858))

(assert (= (and b!1775858 res!800085) b!1775856))

(assert (= (and b!1775856 res!800091) b!1775857))

(declare-fun m!2196427 () Bool)

(assert (=> bm!111191 m!2196427))

(declare-fun m!2196429 () Bool)

(assert (=> b!1775858 m!2196429))

(declare-fun m!2196431 () Bool)

(assert (=> b!1775858 m!2196431))

(assert (=> b!1775858 m!2196431))

(declare-fun m!2196433 () Bool)

(assert (=> b!1775858 m!2196433))

(declare-fun m!2196435 () Bool)

(assert (=> d!542409 m!2196435))

(assert (=> d!542409 m!2196125))

(assert (=> d!542409 m!2196121))

(assert (=> d!542409 m!2196379))

(declare-fun m!2196437 () Bool)

(assert (=> b!1775862 m!2196437))

(assert (=> b!1775860 m!2196429))

(declare-fun m!2196441 () Bool)

(assert (=> b!1775860 m!2196441))

(assert (=> b!1775860 m!2196235))

(assert (=> b!1775854 m!2196429))

(declare-fun m!2196445 () Bool)

(assert (=> b!1775854 m!2196445))

(assert (=> b!1775854 m!2196445))

(declare-fun m!2196447 () Bool)

(assert (=> b!1775854 m!2196447))

(assert (=> b!1775857 m!2196429))

(declare-fun m!2196453 () Bool)

(assert (=> b!1775857 m!2196453))

(assert (=> b!1775856 m!2196429))

(assert (=> b!1775856 m!2196445))

(assert (=> b!1775856 m!2196445))

(assert (=> b!1775856 m!2196447))

(assert (=> b!1775856 m!2196447))

(declare-fun m!2196463 () Bool)

(assert (=> b!1775856 m!2196463))

(assert (=> b!1775859 m!2196429))

(assert (=> b!1775859 m!2196445))

(assert (=> b!1775859 m!2196445))

(assert (=> b!1775859 m!2196447))

(assert (=> b!1775859 m!2196447))

(declare-fun m!2196473 () Bool)

(assert (=> b!1775859 m!2196473))

(declare-fun m!2196475 () Bool)

(assert (=> b!1775855 m!2196475))

(assert (=> b!1775546 d!542409))

(declare-fun d!542411 () Bool)

(assert (=> d!542411 (isDefined!3368 (maxPrefix!1684 thiss!24550 rules!3447 (++!5325 lt!688584 suffix!1421)))))

(declare-fun lt!688890 () Unit!33790)

(declare-fun e!1136584 () Unit!33790)

(assert (=> d!542411 (= lt!688890 e!1136584)))

(declare-fun c!289111 () Bool)

(assert (=> d!542411 (= c!289111 (isEmpty!12358 (maxPrefix!1684 thiss!24550 rules!3447 (++!5325 lt!688584 suffix!1421))))))

(declare-fun lt!688886 () Unit!33790)

(declare-fun lt!688889 () Unit!33790)

(assert (=> d!542411 (= lt!688886 lt!688889)))

(declare-fun e!1136585 () Bool)

(assert (=> d!542411 e!1136585))

(declare-fun res!800207 () Bool)

(assert (=> d!542411 (=> (not res!800207) (not e!1136585))))

(declare-fun lt!688888 () Token!6568)

(assert (=> d!542411 (= res!800207 (isDefined!3367 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 lt!688888)))))))

(assert (=> d!542411 (= lt!688889 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!549 thiss!24550 rules!3447 lt!688584 lt!688888))))

(declare-fun lt!688883 () Unit!33790)

(declare-fun lt!688891 () Unit!33790)

(assert (=> d!542411 (= lt!688883 lt!688891)))

(declare-fun lt!688898 () List!19626)

(assert (=> d!542411 (isPrefix!1741 lt!688898 (++!5325 lt!688584 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!331 (List!19626 List!19626 List!19626) Unit!33790)

(assert (=> d!542411 (= lt!688891 (lemmaPrefixStaysPrefixWhenAddingToSuffix!331 lt!688898 lt!688584 suffix!1421))))

(assert (=> d!542411 (= lt!688898 (list!7947 (charsOf!2150 lt!688888)))))

(declare-fun lt!688895 () Unit!33790)

(declare-fun lt!688899 () Unit!33790)

(assert (=> d!542411 (= lt!688895 lt!688899)))

(declare-fun lt!688893 () List!19626)

(declare-fun lt!688884 () List!19626)

(assert (=> d!542411 (isPrefix!1741 lt!688893 (++!5325 lt!688893 lt!688884))))

(assert (=> d!542411 (= lt!688899 (lemmaConcatTwoListThenFirstIsPrefix!1250 lt!688893 lt!688884))))

(assert (=> d!542411 (= lt!688884 (_2!10979 (get!5992 (maxPrefix!1684 thiss!24550 rules!3447 lt!688584))))))

(assert (=> d!542411 (= lt!688893 (list!7947 (charsOf!2150 lt!688888)))))

(declare-datatypes ((List!19631 0))(
  ( (Nil!19561) (Cons!19561 (h!24962 Token!6568) (t!165994 List!19631)) )
))
(declare-fun head!4140 (List!19631) Token!6568)

(declare-datatypes ((IArray!13019 0))(
  ( (IArray!13020 (innerList!6567 List!19631)) )
))
(declare-datatypes ((Conc!6507 0))(
  ( (Node!6507 (left!15671 Conc!6507) (right!16001 Conc!6507) (csize!13244 Int) (cheight!6718 Int)) (Leaf!9478 (xs!9383 IArray!13019) (csize!13245 Int)) (Empty!6507) )
))
(declare-datatypes ((BalanceConc!12958 0))(
  ( (BalanceConc!12959 (c!289155 Conc!6507)) )
))
(declare-fun list!7951 (BalanceConc!12958) List!19631)

(declare-datatypes ((tuple2!19162 0))(
  ( (tuple2!19163 (_1!10983 BalanceConc!12958) (_2!10983 BalanceConc!12954)) )
))
(declare-fun lex!1470 (LexerInterface!3130 List!19627 BalanceConc!12954) tuple2!19162)

(assert (=> d!542411 (= lt!688888 (head!4140 (list!7951 (_1!10983 (lex!1470 thiss!24550 rules!3447 (seqFromList!2470 lt!688584))))))))

(assert (=> d!542411 (not (isEmpty!12355 rules!3447))))

(assert (=> d!542411 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!652 thiss!24550 rules!3447 lt!688584 suffix!1421) lt!688890)))

(declare-fun b!1776075 () Bool)

(declare-fun Unit!33798 () Unit!33790)

(assert (=> b!1776075 (= e!1136584 Unit!33798)))

(declare-fun lt!688887 () List!19626)

(assert (=> b!1776075 (= lt!688887 (++!5325 lt!688584 suffix!1421))))

(declare-fun lt!688896 () Unit!33790)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!339 (LexerInterface!3130 Rule!6802 List!19627 List!19626) Unit!33790)

(assert (=> b!1776075 (= lt!688896 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!339 thiss!24550 (rule!5557 lt!688888) rules!3447 lt!688887))))

(assert (=> b!1776075 (isEmpty!12358 (maxPrefixOneRule!1053 thiss!24550 (rule!5557 lt!688888) lt!688887))))

(declare-fun lt!688897 () Unit!33790)

(assert (=> b!1776075 (= lt!688897 lt!688896)))

(declare-fun lt!688894 () List!19626)

(assert (=> b!1776075 (= lt!688894 (list!7947 (charsOf!2150 lt!688888)))))

(declare-fun lt!688892 () Unit!33790)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!335 (LexerInterface!3130 Rule!6802 List!19626 List!19626) Unit!33790)

(assert (=> b!1776075 (= lt!688892 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!335 thiss!24550 (rule!5557 lt!688888) lt!688894 (++!5325 lt!688584 suffix!1421)))))

(assert (=> b!1776075 (not (matchR!2302 (regex!3501 (rule!5557 lt!688888)) lt!688894))))

(declare-fun lt!688885 () Unit!33790)

(assert (=> b!1776075 (= lt!688885 lt!688892)))

(assert (=> b!1776075 false))

(declare-fun b!1776073 () Bool)

(declare-fun res!800208 () Bool)

(assert (=> b!1776073 (=> (not res!800208) (not e!1136585))))

(assert (=> b!1776073 (= res!800208 (matchR!2302 (regex!3501 (get!5993 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 lt!688888))))) (list!7947 (charsOf!2150 lt!688888))))))

(declare-fun b!1776076 () Bool)

(declare-fun Unit!33799 () Unit!33790)

(assert (=> b!1776076 (= e!1136584 Unit!33799)))

(declare-fun b!1776074 () Bool)

(assert (=> b!1776074 (= e!1136585 (= (rule!5557 lt!688888) (get!5993 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 lt!688888))))))))

(assert (= (and d!542411 res!800207) b!1776073))

(assert (= (and b!1776073 res!800208) b!1776074))

(assert (= (and d!542411 c!289111) b!1776075))

(assert (= (and d!542411 (not c!289111)) b!1776076))

(declare-fun m!2196719 () Bool)

(assert (=> d!542411 m!2196719))

(declare-fun m!2196721 () Bool)

(assert (=> d!542411 m!2196721))

(declare-fun m!2196723 () Bool)

(assert (=> d!542411 m!2196723))

(assert (=> d!542411 m!2196131))

(declare-fun m!2196725 () Bool)

(assert (=> d!542411 m!2196725))

(declare-fun m!2196727 () Bool)

(assert (=> d!542411 m!2196727))

(declare-fun m!2196729 () Bool)

(assert (=> d!542411 m!2196729))

(declare-fun m!2196731 () Bool)

(assert (=> d!542411 m!2196731))

(declare-fun m!2196733 () Bool)

(assert (=> d!542411 m!2196733))

(declare-fun m!2196735 () Bool)

(assert (=> d!542411 m!2196735))

(assert (=> d!542411 m!2196733))

(declare-fun m!2196737 () Bool)

(assert (=> d!542411 m!2196737))

(assert (=> d!542411 m!2196131))

(declare-fun m!2196739 () Bool)

(assert (=> d!542411 m!2196739))

(declare-fun m!2196741 () Bool)

(assert (=> d!542411 m!2196741))

(declare-fun m!2196743 () Bool)

(assert (=> d!542411 m!2196743))

(declare-fun m!2196745 () Bool)

(assert (=> d!542411 m!2196745))

(assert (=> d!542411 m!2196061))

(assert (=> d!542411 m!2196725))

(assert (=> d!542411 m!2196061))

(declare-fun m!2196747 () Bool)

(assert (=> d!542411 m!2196747))

(assert (=> d!542411 m!2195973))

(assert (=> d!542411 m!2196719))

(assert (=> d!542411 m!2196725))

(declare-fun m!2196749 () Bool)

(assert (=> d!542411 m!2196749))

(assert (=> d!542411 m!2196729))

(assert (=> d!542411 m!2196061))

(assert (=> d!542411 m!2196741))

(declare-fun m!2196751 () Bool)

(assert (=> d!542411 m!2196751))

(assert (=> d!542411 m!2196735))

(declare-fun m!2196753 () Bool)

(assert (=> d!542411 m!2196753))

(assert (=> b!1776075 m!2196061))

(declare-fun m!2196755 () Bool)

(assert (=> b!1776075 m!2196755))

(declare-fun m!2196757 () Bool)

(assert (=> b!1776075 m!2196757))

(declare-fun m!2196759 () Bool)

(assert (=> b!1776075 m!2196759))

(assert (=> b!1776075 m!2196733))

(assert (=> b!1776075 m!2196733))

(assert (=> b!1776075 m!2196737))

(declare-fun m!2196761 () Bool)

(assert (=> b!1776075 m!2196761))

(assert (=> b!1776075 m!2196061))

(assert (=> b!1776075 m!2196757))

(declare-fun m!2196763 () Bool)

(assert (=> b!1776075 m!2196763))

(assert (=> b!1776073 m!2196733))

(assert (=> b!1776073 m!2196737))

(assert (=> b!1776073 m!2196741))

(assert (=> b!1776073 m!2196737))

(declare-fun m!2196767 () Bool)

(assert (=> b!1776073 m!2196767))

(assert (=> b!1776073 m!2196741))

(declare-fun m!2196769 () Bool)

(assert (=> b!1776073 m!2196769))

(assert (=> b!1776073 m!2196733))

(assert (=> b!1776074 m!2196741))

(assert (=> b!1776074 m!2196741))

(assert (=> b!1776074 m!2196769))

(assert (=> b!1775546 d!542411))

(declare-fun d!542501 () Bool)

(declare-fun isEmpty!12359 (Option!4024) Bool)

(assert (=> d!542501 (= (isDefined!3367 lt!688606) (not (isEmpty!12359 lt!688606)))))

(declare-fun bs!404917 () Bool)

(assert (= bs!404917 d!542501))

(declare-fun m!2196775 () Bool)

(assert (=> bs!404917 m!2196775))

(assert (=> b!1775546 d!542501))

(declare-fun d!542505 () Bool)

(assert (=> d!542505 (= (get!5992 lt!688590) (v!25505 lt!688590))))

(assert (=> b!1775546 d!542505))

(declare-fun d!542507 () Bool)

(assert (=> d!542507 (= (list!7947 lt!688591) (list!7950 (c!289019 lt!688591)))))

(declare-fun bs!404918 () Bool)

(assert (= bs!404918 d!542507))

(declare-fun m!2196777 () Bool)

(assert (=> bs!404918 m!2196777))

(assert (=> b!1775546 d!542507))

(declare-fun b!1776083 () Bool)

(declare-fun e!1136590 () Bool)

(assert (=> b!1776083 (= e!1136590 (isPrefix!1741 (tail!2657 lt!688584) (tail!2657 lt!688620)))))

(declare-fun b!1776081 () Bool)

(declare-fun e!1136588 () Bool)

(assert (=> b!1776081 (= e!1136588 e!1136590)))

(declare-fun res!800213 () Bool)

(assert (=> b!1776081 (=> (not res!800213) (not e!1136590))))

(assert (=> b!1776081 (= res!800213 (not ((_ is Nil!19556) lt!688620)))))

(declare-fun b!1776084 () Bool)

(declare-fun e!1136589 () Bool)

(assert (=> b!1776084 (= e!1136589 (>= (size!15540 lt!688620) (size!15540 lt!688584)))))

(declare-fun d!542509 () Bool)

(assert (=> d!542509 e!1136589))

(declare-fun res!800211 () Bool)

(assert (=> d!542509 (=> res!800211 e!1136589)))

(declare-fun lt!688905 () Bool)

(assert (=> d!542509 (= res!800211 (not lt!688905))))

(assert (=> d!542509 (= lt!688905 e!1136588)))

(declare-fun res!800212 () Bool)

(assert (=> d!542509 (=> res!800212 e!1136588)))

(assert (=> d!542509 (= res!800212 ((_ is Nil!19556) lt!688584))))

(assert (=> d!542509 (= (isPrefix!1741 lt!688584 lt!688620) lt!688905)))

(declare-fun b!1776082 () Bool)

(declare-fun res!800214 () Bool)

(assert (=> b!1776082 (=> (not res!800214) (not e!1136590))))

(assert (=> b!1776082 (= res!800214 (= (head!4138 lt!688584) (head!4138 lt!688620)))))

(assert (= (and d!542509 (not res!800212)) b!1776081))

(assert (= (and b!1776081 res!800213) b!1776082))

(assert (= (and b!1776082 res!800214) b!1776083))

(assert (= (and d!542509 (not res!800211)) b!1776084))

(declare-fun m!2196789 () Bool)

(assert (=> b!1776083 m!2196789))

(assert (=> b!1776083 m!2196237))

(assert (=> b!1776083 m!2196789))

(assert (=> b!1776083 m!2196237))

(declare-fun m!2196791 () Bool)

(assert (=> b!1776083 m!2196791))

(assert (=> b!1776084 m!2196235))

(assert (=> b!1776084 m!2196095))

(declare-fun m!2196793 () Bool)

(assert (=> b!1776082 m!2196793))

(assert (=> b!1776082 m!2196425))

(assert (=> b!1775546 d!542509))

(declare-fun d!542515 () Bool)

(declare-fun e!1136614 () Bool)

(assert (=> d!542515 e!1136614))

(declare-fun res!800248 () Bool)

(assert (=> d!542515 (=> (not res!800248) (not e!1136614))))

(assert (=> d!542515 (= res!800248 (isDefined!3367 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 (_1!10979 lt!688600))))))))

(declare-fun lt!688915 () Unit!33790)

(declare-fun choose!11082 (LexerInterface!3130 List!19627 List!19626 Token!6568) Unit!33790)

(assert (=> d!542515 (= lt!688915 (choose!11082 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600)))))

(assert (=> d!542515 (rulesInvariant!2799 thiss!24550 rules!3447)))

(assert (=> d!542515 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!549 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600)) lt!688915)))

(declare-fun b!1776133 () Bool)

(declare-fun res!800249 () Bool)

(assert (=> b!1776133 (=> (not res!800249) (not e!1136614))))

(assert (=> b!1776133 (= res!800249 (matchR!2302 (regex!3501 (get!5993 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 (_1!10979 lt!688600)))))) (list!7947 (charsOf!2150 (_1!10979 lt!688600)))))))

(declare-fun b!1776134 () Bool)

(assert (=> b!1776134 (= e!1136614 (= (rule!5557 (_1!10979 lt!688600)) (get!5993 (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 (_1!10979 lt!688600)))))))))

(assert (= (and d!542515 res!800248) b!1776133))

(assert (= (and b!1776133 res!800249) b!1776134))

(assert (=> d!542515 m!2196059))

(assert (=> d!542515 m!2196059))

(declare-fun m!2196831 () Bool)

(assert (=> d!542515 m!2196831))

(declare-fun m!2196833 () Bool)

(assert (=> d!542515 m!2196833))

(assert (=> d!542515 m!2196113))

(assert (=> b!1776133 m!2196051))

(assert (=> b!1776133 m!2196099))

(assert (=> b!1776133 m!2196099))

(declare-fun m!2196835 () Bool)

(assert (=> b!1776133 m!2196835))

(assert (=> b!1776133 m!2196059))

(assert (=> b!1776133 m!2196059))

(declare-fun m!2196839 () Bool)

(assert (=> b!1776133 m!2196839))

(assert (=> b!1776133 m!2196051))

(assert (=> b!1776134 m!2196059))

(assert (=> b!1776134 m!2196059))

(assert (=> b!1776134 m!2196839))

(assert (=> b!1775546 d!542515))

(declare-fun b!1776164 () Bool)

(declare-fun e!1136637 () Bool)

(declare-fun e!1136636 () Bool)

(assert (=> b!1776164 (= e!1136637 e!1136636)))

(declare-fun res!800263 () Bool)

(assert (=> b!1776164 (=> (not res!800263) (not e!1136636))))

(declare-fun lt!688926 () Option!4024)

(assert (=> b!1776164 (= res!800263 (contains!3533 rules!3447 (get!5993 lt!688926)))))

(declare-fun b!1776165 () Bool)

(declare-fun e!1136638 () Option!4024)

(assert (=> b!1776165 (= e!1136638 None!4023)))

(declare-fun b!1776166 () Bool)

(assert (=> b!1776166 (= e!1136636 (= (tag!3887 (get!5993 lt!688926)) (tag!3887 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun b!1776167 () Bool)

(declare-fun e!1136639 () Option!4024)

(assert (=> b!1776167 (= e!1136639 e!1136638)))

(declare-fun c!289129 () Bool)

(assert (=> b!1776167 (= c!289129 (and ((_ is Cons!19557) rules!3447) (not (= (tag!3887 (h!24958 rules!3447)) (tag!3887 (rule!5557 (_1!10979 lt!688600)))))))))

(declare-fun b!1776168 () Bool)

(assert (=> b!1776168 (= e!1136639 (Some!4023 (h!24958 rules!3447)))))

(declare-fun b!1776169 () Bool)

(declare-fun lt!688927 () Unit!33790)

(declare-fun lt!688925 () Unit!33790)

(assert (=> b!1776169 (= lt!688927 lt!688925)))

(assert (=> b!1776169 (rulesInvariant!2799 thiss!24550 (t!165914 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!210 (LexerInterface!3130 Rule!6802 List!19627) Unit!33790)

(assert (=> b!1776169 (= lt!688925 (lemmaInvariantOnRulesThenOnTail!210 thiss!24550 (h!24958 rules!3447) (t!165914 rules!3447)))))

(assert (=> b!1776169 (= e!1136638 (getRuleFromTag!549 thiss!24550 (t!165914 rules!3447) (tag!3887 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun d!542529 () Bool)

(assert (=> d!542529 e!1136637))

(declare-fun res!800262 () Bool)

(assert (=> d!542529 (=> res!800262 e!1136637)))

(assert (=> d!542529 (= res!800262 (isEmpty!12359 lt!688926))))

(assert (=> d!542529 (= lt!688926 e!1136639)))

(declare-fun c!289128 () Bool)

(assert (=> d!542529 (= c!289128 (and ((_ is Cons!19557) rules!3447) (= (tag!3887 (h!24958 rules!3447)) (tag!3887 (rule!5557 (_1!10979 lt!688600))))))))

(assert (=> d!542529 (rulesInvariant!2799 thiss!24550 rules!3447)))

(assert (=> d!542529 (= (getRuleFromTag!549 thiss!24550 rules!3447 (tag!3887 (rule!5557 (_1!10979 lt!688600)))) lt!688926)))

(assert (= (and d!542529 c!289128) b!1776168))

(assert (= (and d!542529 (not c!289128)) b!1776167))

(assert (= (and b!1776167 c!289129) b!1776169))

(assert (= (and b!1776167 (not c!289129)) b!1776165))

(assert (= (and d!542529 (not res!800262)) b!1776164))

(assert (= (and b!1776164 res!800263) b!1776166))

(declare-fun m!2196897 () Bool)

(assert (=> b!1776164 m!2196897))

(assert (=> b!1776164 m!2196897))

(declare-fun m!2196901 () Bool)

(assert (=> b!1776164 m!2196901))

(assert (=> b!1776166 m!2196897))

(declare-fun m!2196903 () Bool)

(assert (=> b!1776169 m!2196903))

(declare-fun m!2196905 () Bool)

(assert (=> b!1776169 m!2196905))

(declare-fun m!2196907 () Bool)

(assert (=> b!1776169 m!2196907))

(declare-fun m!2196909 () Bool)

(assert (=> d!542529 m!2196909))

(assert (=> d!542529 m!2196113))

(assert (=> b!1775546 d!542529))

(declare-fun b!1776173 () Bool)

(declare-fun e!1136643 () Bool)

(assert (=> b!1776173 (= e!1136643 (isPrefix!1741 (tail!2657 lt!688607) (tail!2657 (++!5325 lt!688607 (_2!10979 lt!688600)))))))

(declare-fun b!1776171 () Bool)

(declare-fun e!1136641 () Bool)

(assert (=> b!1776171 (= e!1136641 e!1136643)))

(declare-fun res!800267 () Bool)

(assert (=> b!1776171 (=> (not res!800267) (not e!1136643))))

(assert (=> b!1776171 (= res!800267 (not ((_ is Nil!19556) (++!5325 lt!688607 (_2!10979 lt!688600)))))))

(declare-fun b!1776174 () Bool)

(declare-fun e!1136642 () Bool)

(assert (=> b!1776174 (= e!1136642 (>= (size!15540 (++!5325 lt!688607 (_2!10979 lt!688600))) (size!15540 lt!688607)))))

(declare-fun d!542559 () Bool)

(assert (=> d!542559 e!1136642))

(declare-fun res!800265 () Bool)

(assert (=> d!542559 (=> res!800265 e!1136642)))

(declare-fun lt!688928 () Bool)

(assert (=> d!542559 (= res!800265 (not lt!688928))))

(assert (=> d!542559 (= lt!688928 e!1136641)))

(declare-fun res!800266 () Bool)

(assert (=> d!542559 (=> res!800266 e!1136641)))

(assert (=> d!542559 (= res!800266 ((_ is Nil!19556) lt!688607))))

(assert (=> d!542559 (= (isPrefix!1741 lt!688607 (++!5325 lt!688607 (_2!10979 lt!688600))) lt!688928)))

(declare-fun b!1776172 () Bool)

(declare-fun res!800268 () Bool)

(assert (=> b!1776172 (=> (not res!800268) (not e!1136643))))

(assert (=> b!1776172 (= res!800268 (= (head!4138 lt!688607) (head!4138 (++!5325 lt!688607 (_2!10979 lt!688600)))))))

(assert (= (and d!542559 (not res!800266)) b!1776171))

(assert (= (and b!1776171 res!800267) b!1776172))

(assert (= (and b!1776172 res!800268) b!1776173))

(assert (= (and d!542559 (not res!800265)) b!1776174))

(assert (=> b!1776173 m!2196419))

(assert (=> b!1776173 m!2196053))

(declare-fun m!2196915 () Bool)

(assert (=> b!1776173 m!2196915))

(assert (=> b!1776173 m!2196419))

(assert (=> b!1776173 m!2196915))

(declare-fun m!2196917 () Bool)

(assert (=> b!1776173 m!2196917))

(assert (=> b!1776174 m!2196053))

(declare-fun m!2196921 () Bool)

(assert (=> b!1776174 m!2196921))

(assert (=> b!1776174 m!2195995))

(assert (=> b!1776172 m!2196423))

(assert (=> b!1776172 m!2196053))

(declare-fun m!2196925 () Bool)

(assert (=> b!1776172 m!2196925))

(assert (=> b!1775546 d!542559))

(declare-fun d!542567 () Bool)

(assert (=> d!542567 (isPrefix!1741 lt!688607 (++!5325 lt!688607 (_2!10979 lt!688600)))))

(declare-fun lt!688931 () Unit!33790)

(declare-fun choose!11085 (List!19626 List!19626) Unit!33790)

(assert (=> d!542567 (= lt!688931 (choose!11085 lt!688607 (_2!10979 lt!688600)))))

(assert (=> d!542567 (= (lemmaConcatTwoListThenFirstIsPrefix!1250 lt!688607 (_2!10979 lt!688600)) lt!688931)))

(declare-fun bs!404927 () Bool)

(assert (= bs!404927 d!542567))

(assert (=> bs!404927 m!2196053))

(assert (=> bs!404927 m!2196053))

(assert (=> bs!404927 m!2196055))

(declare-fun m!2196929 () Bool)

(assert (=> bs!404927 m!2196929))

(assert (=> b!1775546 d!542567))

(declare-fun b!1776197 () Bool)

(declare-fun res!800271 () Bool)

(declare-fun e!1136652 () Bool)

(assert (=> b!1776197 (=> (not res!800271) (not e!1136652))))

(declare-fun lt!688932 () List!19626)

(assert (=> b!1776197 (= res!800271 (= (size!15540 lt!688932) (+ (size!15540 lt!688607) (size!15540 (_2!10979 lt!688600)))))))

(declare-fun b!1776195 () Bool)

(declare-fun e!1136651 () List!19626)

(assert (=> b!1776195 (= e!1136651 (_2!10979 lt!688600))))

(declare-fun d!542569 () Bool)

(assert (=> d!542569 e!1136652))

(declare-fun res!800270 () Bool)

(assert (=> d!542569 (=> (not res!800270) (not e!1136652))))

(assert (=> d!542569 (= res!800270 (= (content!2839 lt!688932) ((_ map or) (content!2839 lt!688607) (content!2839 (_2!10979 lt!688600)))))))

(assert (=> d!542569 (= lt!688932 e!1136651)))

(declare-fun c!289130 () Bool)

(assert (=> d!542569 (= c!289130 ((_ is Nil!19556) lt!688607))))

(assert (=> d!542569 (= (++!5325 lt!688607 (_2!10979 lt!688600)) lt!688932)))

(declare-fun b!1776196 () Bool)

(assert (=> b!1776196 (= e!1136651 (Cons!19556 (h!24957 lt!688607) (++!5325 (t!165913 lt!688607) (_2!10979 lt!688600))))))

(declare-fun b!1776198 () Bool)

(assert (=> b!1776198 (= e!1136652 (or (not (= (_2!10979 lt!688600) Nil!19556)) (= lt!688932 lt!688607)))))

(assert (= (and d!542569 c!289130) b!1776195))

(assert (= (and d!542569 (not c!289130)) b!1776196))

(assert (= (and d!542569 res!800270) b!1776197))

(assert (= (and b!1776197 res!800271) b!1776198))

(declare-fun m!2196931 () Bool)

(assert (=> b!1776197 m!2196931))

(assert (=> b!1776197 m!2195995))

(declare-fun m!2196933 () Bool)

(assert (=> b!1776197 m!2196933))

(declare-fun m!2196935 () Bool)

(assert (=> d!542569 m!2196935))

(declare-fun m!2196937 () Bool)

(assert (=> d!542569 m!2196937))

(declare-fun m!2196939 () Bool)

(assert (=> d!542569 m!2196939))

(declare-fun m!2196941 () Bool)

(assert (=> b!1776196 m!2196941))

(assert (=> b!1775546 d!542569))

(assert (=> b!1775546 d!542387))

(declare-fun d!542571 () Bool)

(assert (=> d!542571 (isPrefix!1741 lt!688584 (++!5325 lt!688584 suffix!1421))))

(declare-fun lt!688933 () Unit!33790)

(assert (=> d!542571 (= lt!688933 (choose!11085 lt!688584 suffix!1421))))

(assert (=> d!542571 (= (lemmaConcatTwoListThenFirstIsPrefix!1250 lt!688584 suffix!1421) lt!688933)))

(declare-fun bs!404928 () Bool)

(assert (= bs!404928 d!542571))

(assert (=> bs!404928 m!2196061))

(assert (=> bs!404928 m!2196061))

(declare-fun m!2196943 () Bool)

(assert (=> bs!404928 m!2196943))

(declare-fun m!2196945 () Bool)

(assert (=> bs!404928 m!2196945))

(assert (=> b!1775546 d!542571))

(declare-fun d!542573 () Bool)

(declare-fun choose!11086 (Int) Bool)

(assert (=> d!542573 (= (Forall!868 lambda!70538) (choose!11086 lambda!70538))))

(declare-fun bs!404929 () Bool)

(assert (= bs!404929 d!542573))

(declare-fun m!2196947 () Bool)

(assert (=> bs!404929 m!2196947))

(assert (=> b!1775563 d!542573))

(declare-fun d!542575 () Bool)

(declare-fun e!1136670 () Bool)

(assert (=> d!542575 e!1136670))

(declare-fun res!800274 () Bool)

(assert (=> d!542575 (=> (not res!800274) (not e!1136670))))

(assert (=> d!542575 (= res!800274 (semiInverseModEq!1395 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))))))

(declare-fun Unit!33800 () Unit!33790)

(assert (=> d!542575 (= (lemmaInv!700 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) Unit!33800)))

(declare-fun b!1776224 () Bool)

(assert (=> b!1776224 (= e!1136670 (equivClasses!1336 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))))))

(assert (= (and d!542575 res!800274) b!1776224))

(declare-fun m!2196955 () Bool)

(assert (=> d!542575 m!2196955))

(declare-fun m!2196957 () Bool)

(assert (=> b!1776224 m!2196957))

(assert (=> b!1775563 d!542575))

(declare-fun d!542577 () Bool)

(declare-fun res!800279 () Bool)

(declare-fun e!1136681 () Bool)

(assert (=> d!542577 (=> (not res!800279) (not e!1136681))))

(assert (=> d!542577 (= res!800279 (not (isEmpty!12354 (originalCharacters!4315 token!523))))))

(assert (=> d!542577 (= (inv!25436 token!523) e!1136681)))

(declare-fun b!1776240 () Bool)

(declare-fun res!800280 () Bool)

(assert (=> b!1776240 (=> (not res!800280) (not e!1136681))))

(assert (=> b!1776240 (= res!800280 (= (originalCharacters!4315 token!523) (list!7947 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (value!109451 token!523)))))))

(declare-fun b!1776241 () Bool)

(assert (=> b!1776241 (= e!1136681 (= (size!15538 token!523) (size!15540 (originalCharacters!4315 token!523))))))

(assert (= (and d!542577 res!800279) b!1776240))

(assert (= (and b!1776240 res!800280) b!1776241))

(declare-fun b_lambda!57991 () Bool)

(assert (=> (not b_lambda!57991) (not b!1776240)))

(assert (=> b!1776240 t!165928))

(declare-fun b_and!135637 () Bool)

(assert (= b_and!135567 (and (=> t!165928 result!129564) b_and!135637)))

(assert (=> b!1776240 t!165930))

(declare-fun b_and!135639 () Bool)

(assert (= b_and!135569 (and (=> t!165930 result!129566) b_and!135639)))

(assert (=> b!1776240 t!165932))

(declare-fun b_and!135641 () Bool)

(assert (= b_and!135571 (and (=> t!165932 result!129568) b_and!135641)))

(declare-fun m!2196969 () Bool)

(assert (=> d!542577 m!2196969))

(assert (=> b!1776240 m!2196405))

(assert (=> b!1776240 m!2196405))

(declare-fun m!2196971 () Bool)

(assert (=> b!1776240 m!2196971))

(declare-fun m!2196973 () Bool)

(assert (=> b!1776241 m!2196973))

(assert (=> start!176302 d!542577))

(declare-fun b!1776248 () Bool)

(declare-fun e!1136686 () Bool)

(assert (=> b!1776248 (= e!1136686 true)))

(declare-fun d!542579 () Bool)

(assert (=> d!542579 e!1136686))

(assert (= d!542579 b!1776248))

(declare-fun order!12559 () Int)

(declare-fun lambda!70551 () Int)

(declare-fun dynLambda!9556 (Int Int) Int)

(assert (=> b!1776248 (< (dynLambda!9550 order!12551 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9556 order!12559 lambda!70551))))

(assert (=> b!1776248 (< (dynLambda!9552 order!12555 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9556 order!12559 lambda!70551))))

(assert (=> d!542579 (= (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600)))))))

(declare-fun lt!688936 () Unit!33790)

(declare-fun Forall2of!142 (Int BalanceConc!12954 BalanceConc!12954) Unit!33790)

(assert (=> d!542579 (= lt!688936 (Forall2of!142 lambda!70551 lt!688591 (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600)))))))

(assert (=> d!542579 (= (list!7947 lt!688591) (list!7947 (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600)))))))

(assert (=> d!542579 (= (lemmaEqSameImage!412 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591 (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600)))) lt!688936)))

(declare-fun b_lambda!57993 () Bool)

(assert (=> (not b_lambda!57993) (not d!542579)))

(assert (=> d!542579 t!165901))

(declare-fun b_and!135643 () Bool)

(assert (= b_and!135555 (and (=> t!165901 result!129538) b_and!135643)))

(assert (=> d!542579 t!165903))

(declare-fun b_and!135645 () Bool)

(assert (= b_and!135557 (and (=> t!165903 result!129542) b_and!135645)))

(assert (=> d!542579 t!165905))

(declare-fun b_and!135647 () Bool)

(assert (= b_and!135559 (and (=> t!165905 result!129544) b_and!135647)))

(declare-fun b_lambda!57995 () Bool)

(assert (=> (not b_lambda!57995) (not d!542579)))

(declare-fun t!165966 () Bool)

(declare-fun tb!107747 () Bool)

(assert (=> (and b!1775559 (= (toValue!5028 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165966) tb!107747))

(declare-fun result!129610 () Bool)

(assert (=> tb!107747 (= result!129610 (inv!21 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600))))))))

(declare-fun m!2196975 () Bool)

(assert (=> tb!107747 m!2196975))

(assert (=> d!542579 t!165966))

(declare-fun b_and!135649 () Bool)

(assert (= b_and!135643 (and (=> t!165966 result!129610) b_and!135649)))

(declare-fun t!165968 () Bool)

(declare-fun tb!107749 () Bool)

(assert (=> (and b!1775578 (= (toValue!5028 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165968) tb!107749))

(declare-fun result!129612 () Bool)

(assert (= result!129612 result!129610))

(assert (=> d!542579 t!165968))

(declare-fun b_and!135651 () Bool)

(assert (= b_and!135645 (and (=> t!165968 result!129612) b_and!135651)))

(declare-fun tb!107751 () Bool)

(declare-fun t!165970 () Bool)

(assert (=> (and b!1775555 (= (toValue!5028 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165970) tb!107751))

(declare-fun result!129614 () Bool)

(assert (= result!129614 result!129610))

(assert (=> d!542579 t!165970))

(declare-fun b_and!135653 () Bool)

(assert (= b_and!135647 (and (=> t!165970 result!129614) b_and!135653)))

(assert (=> d!542579 m!2196085))

(declare-fun m!2196977 () Bool)

(assert (=> d!542579 m!2196977))

(assert (=> d!542579 m!2196085))

(declare-fun m!2196979 () Bool)

(assert (=> d!542579 m!2196979))

(assert (=> d!542579 m!2196035))

(assert (=> d!542579 m!2196073))

(assert (=> d!542579 m!2196085))

(declare-fun m!2196981 () Bool)

(assert (=> d!542579 m!2196981))

(assert (=> b!1775564 d!542579))

(declare-fun d!542581 () Bool)

(assert (=> d!542581 (= (apply!5301 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))

(declare-fun b_lambda!57997 () Bool)

(assert (=> (not b_lambda!57997) (not d!542581)))

(assert (=> d!542581 t!165901))

(declare-fun b_and!135655 () Bool)

(assert (= b_and!135649 (and (=> t!165901 result!129538) b_and!135655)))

(assert (=> d!542581 t!165903))

(declare-fun b_and!135657 () Bool)

(assert (= b_and!135651 (and (=> t!165903 result!129542) b_and!135657)))

(assert (=> d!542581 t!165905))

(declare-fun b_and!135659 () Bool)

(assert (= b_and!135653 (and (=> t!165905 result!129544) b_and!135659)))

(assert (=> d!542581 m!2196073))

(assert (=> b!1775564 d!542581))

(declare-fun d!542583 () Bool)

(assert (=> d!542583 (= (size!15538 (_1!10979 lt!688600)) (size!15540 (originalCharacters!4315 (_1!10979 lt!688600))))))

(declare-fun Unit!33801 () Unit!33790)

(assert (=> d!542583 (= (lemmaCharactersSize!559 (_1!10979 lt!688600)) Unit!33801)))

(declare-fun bs!404930 () Bool)

(assert (= bs!404930 d!542583))

(declare-fun m!2196983 () Bool)

(assert (=> bs!404930 m!2196983))

(assert (=> b!1775564 d!542583))

(declare-fun d!542585 () Bool)

(assert (=> d!542585 (= (seqFromList!2470 (originalCharacters!4315 (_1!10979 lt!688600))) (fromListB!1130 (originalCharacters!4315 (_1!10979 lt!688600))))))

(declare-fun bs!404931 () Bool)

(assert (= bs!404931 d!542585))

(declare-fun m!2196985 () Bool)

(assert (=> bs!404931 m!2196985))

(assert (=> b!1775564 d!542585))

(declare-fun d!542587 () Bool)

(declare-fun lt!688939 () Int)

(assert (=> d!542587 (= lt!688939 (size!15540 (list!7947 lt!688591)))))

(declare-fun size!15542 (Conc!6505) Int)

(assert (=> d!542587 (= lt!688939 (size!15542 (c!289019 lt!688591)))))

(assert (=> d!542587 (= (size!15539 lt!688591) lt!688939)))

(declare-fun bs!404932 () Bool)

(assert (= bs!404932 d!542587))

(assert (=> bs!404932 m!2196035))

(assert (=> bs!404932 m!2196035))

(declare-fun m!2196987 () Bool)

(assert (=> bs!404932 m!2196987))

(declare-fun m!2196989 () Bool)

(assert (=> bs!404932 m!2196989))

(assert (=> b!1775564 d!542587))

(declare-fun d!542589 () Bool)

(assert (=> d!542589 (= (inv!25430 (tag!3887 (rule!5557 token!523))) (= (mod (str.len (value!109450 (tag!3887 (rule!5557 token!523)))) 2) 0))))

(assert (=> b!1775561 d!542589))

(declare-fun d!542591 () Bool)

(declare-fun res!800283 () Bool)

(declare-fun e!1136688 () Bool)

(assert (=> d!542591 (=> (not res!800283) (not e!1136688))))

(assert (=> d!542591 (= res!800283 (semiInverseModEq!1395 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 token!523)))))))

(assert (=> d!542591 (= (inv!25435 (transformation!3501 (rule!5557 token!523))) e!1136688)))

(declare-fun b!1776249 () Bool)

(assert (=> b!1776249 (= e!1136688 (equivClasses!1336 (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 token!523)))))))

(assert (= (and d!542591 res!800283) b!1776249))

(declare-fun m!2196991 () Bool)

(assert (=> d!542591 m!2196991))

(declare-fun m!2196993 () Bool)

(assert (=> b!1776249 m!2196993))

(assert (=> b!1775561 d!542591))

(declare-fun d!542593 () Bool)

(declare-fun res!800288 () Bool)

(declare-fun e!1136691 () Bool)

(assert (=> d!542593 (=> (not res!800288) (not e!1136691))))

(assert (=> d!542593 (= res!800288 (validRegex!1954 (regex!3501 (rule!5557 (_1!10979 lt!688600)))))))

(assert (=> d!542593 (= (ruleValid!999 thiss!24550 (rule!5557 (_1!10979 lt!688600))) e!1136691)))

(declare-fun b!1776254 () Bool)

(declare-fun res!800289 () Bool)

(assert (=> b!1776254 (=> (not res!800289) (not e!1136691))))

(assert (=> b!1776254 (= res!800289 (not (nullable!1480 (regex!3501 (rule!5557 (_1!10979 lt!688600))))))))

(declare-fun b!1776255 () Bool)

(assert (=> b!1776255 (= e!1136691 (not (= (tag!3887 (rule!5557 (_1!10979 lt!688600))) (String!22288 ""))))))

(assert (= (and d!542593 res!800288) b!1776254))

(assert (= (and b!1776254 res!800289) b!1776255))

(declare-fun m!2196995 () Bool)

(assert (=> d!542593 m!2196995))

(declare-fun m!2196997 () Bool)

(assert (=> b!1776254 m!2196997))

(assert (=> b!1775562 d!542593))

(declare-fun b!1776258 () Bool)

(declare-fun e!1136694 () Bool)

(assert (=> b!1776258 (= e!1136694 (isPrefix!1741 (tail!2657 lt!688620) (tail!2657 lt!688620)))))

(declare-fun b!1776256 () Bool)

(declare-fun e!1136692 () Bool)

(assert (=> b!1776256 (= e!1136692 e!1136694)))

(declare-fun res!800292 () Bool)

(assert (=> b!1776256 (=> (not res!800292) (not e!1136694))))

(assert (=> b!1776256 (= res!800292 (not ((_ is Nil!19556) lt!688620)))))

(declare-fun b!1776259 () Bool)

(declare-fun e!1136693 () Bool)

(assert (=> b!1776259 (= e!1136693 (>= (size!15540 lt!688620) (size!15540 lt!688620)))))

(declare-fun d!542595 () Bool)

(assert (=> d!542595 e!1136693))

(declare-fun res!800290 () Bool)

(assert (=> d!542595 (=> res!800290 e!1136693)))

(declare-fun lt!688940 () Bool)

(assert (=> d!542595 (= res!800290 (not lt!688940))))

(assert (=> d!542595 (= lt!688940 e!1136692)))

(declare-fun res!800291 () Bool)

(assert (=> d!542595 (=> res!800291 e!1136692)))

(assert (=> d!542595 (= res!800291 ((_ is Nil!19556) lt!688620))))

(assert (=> d!542595 (= (isPrefix!1741 lt!688620 lt!688620) lt!688940)))

(declare-fun b!1776257 () Bool)

(declare-fun res!800293 () Bool)

(assert (=> b!1776257 (=> (not res!800293) (not e!1136694))))

(assert (=> b!1776257 (= res!800293 (= (head!4138 lt!688620) (head!4138 lt!688620)))))

(assert (= (and d!542595 (not res!800291)) b!1776256))

(assert (= (and b!1776256 res!800292) b!1776257))

(assert (= (and b!1776257 res!800293) b!1776258))

(assert (= (and d!542595 (not res!800290)) b!1776259))

(assert (=> b!1776258 m!2196237))

(assert (=> b!1776258 m!2196237))

(assert (=> b!1776258 m!2196237))

(assert (=> b!1776258 m!2196237))

(declare-fun m!2196999 () Bool)

(assert (=> b!1776258 m!2196999))

(assert (=> b!1776259 m!2196235))

(assert (=> b!1776259 m!2196235))

(assert (=> b!1776257 m!2196425))

(assert (=> b!1776257 m!2196425))

(assert (=> b!1775562 d!542595))

(declare-fun d!542597 () Bool)

(assert (=> d!542597 (ruleValid!999 thiss!24550 (rule!5557 (_1!10979 lt!688600)))))

(declare-fun lt!688943 () Unit!33790)

(declare-fun choose!11088 (LexerInterface!3130 Rule!6802 List!19627) Unit!33790)

(assert (=> d!542597 (= lt!688943 (choose!11088 thiss!24550 (rule!5557 (_1!10979 lt!688600)) rules!3447))))

(assert (=> d!542597 (contains!3533 rules!3447 (rule!5557 (_1!10979 lt!688600)))))

(assert (=> d!542597 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!522 thiss!24550 (rule!5557 (_1!10979 lt!688600)) rules!3447) lt!688943)))

(declare-fun bs!404933 () Bool)

(assert (= bs!404933 d!542597))

(assert (=> bs!404933 m!2196123))

(declare-fun m!2197001 () Bool)

(assert (=> bs!404933 m!2197001))

(assert (=> bs!404933 m!2196083))

(assert (=> b!1775562 d!542597))

(declare-fun d!542599 () Bool)

(assert (=> d!542599 (isPrefix!1741 lt!688620 lt!688620)))

(declare-fun lt!688946 () Unit!33790)

(declare-fun choose!11089 (List!19626 List!19626) Unit!33790)

(assert (=> d!542599 (= lt!688946 (choose!11089 lt!688620 lt!688620))))

(assert (=> d!542599 (= (lemmaIsPrefixRefl!1150 lt!688620 lt!688620) lt!688946)))

(declare-fun bs!404934 () Bool)

(assert (= bs!404934 d!542599))

(assert (=> bs!404934 m!2196125))

(declare-fun m!2197003 () Bool)

(assert (=> bs!404934 m!2197003))

(assert (=> b!1775562 d!542599))

(declare-fun bs!404935 () Bool)

(declare-fun d!542601 () Bool)

(assert (= bs!404935 (and d!542601 b!1775563)))

(declare-fun lambda!70554 () Int)

(assert (=> bs!404935 (= lambda!70554 lambda!70538)))

(declare-fun b!1776264 () Bool)

(declare-fun e!1136697 () Bool)

(assert (=> b!1776264 (= e!1136697 true)))

(assert (=> d!542601 e!1136697))

(assert (= d!542601 b!1776264))

(assert (=> b!1776264 (< (dynLambda!9550 order!12551 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70554))))

(assert (=> b!1776264 (< (dynLambda!9552 order!12555 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70554))))

(assert (=> d!542601 (= (list!7947 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688594))) (list!7947 lt!688594))))

(declare-fun lt!688949 () Unit!33790)

(declare-fun ForallOf!333 (Int BalanceConc!12954) Unit!33790)

(assert (=> d!542601 (= lt!688949 (ForallOf!333 lambda!70554 lt!688594))))

(assert (=> d!542601 (= (lemmaSemiInverse!639 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688594) lt!688949)))

(declare-fun b_lambda!57999 () Bool)

(assert (=> (not b_lambda!57999) (not d!542601)))

(declare-fun tb!107753 () Bool)

(declare-fun t!165972 () Bool)

(assert (=> (and b!1775559 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165972) tb!107753))

(declare-fun tp!503247 () Bool)

(declare-fun e!1136698 () Bool)

(declare-fun b!1776265 () Bool)

(assert (=> b!1776265 (= e!1136698 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688594)))) tp!503247))))

(declare-fun result!129616 () Bool)

(assert (=> tb!107753 (= result!129616 (and (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688594))) e!1136698))))

(assert (= tb!107753 b!1776265))

(declare-fun m!2197005 () Bool)

(assert (=> b!1776265 m!2197005))

(declare-fun m!2197007 () Bool)

(assert (=> tb!107753 m!2197007))

(assert (=> d!542601 t!165972))

(declare-fun b_and!135661 () Bool)

(assert (= b_and!135637 (and (=> t!165972 result!129616) b_and!135661)))

(declare-fun t!165974 () Bool)

(declare-fun tb!107755 () Bool)

(assert (=> (and b!1775578 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165974) tb!107755))

(declare-fun result!129618 () Bool)

(assert (= result!129618 result!129616))

(assert (=> d!542601 t!165974))

(declare-fun b_and!135663 () Bool)

(assert (= b_and!135639 (and (=> t!165974 result!129618) b_and!135663)))

(declare-fun tb!107757 () Bool)

(declare-fun t!165976 () Bool)

(assert (=> (and b!1775555 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165976) tb!107757))

(declare-fun result!129620 () Bool)

(assert (= result!129620 result!129616))

(assert (=> d!542601 t!165976))

(declare-fun b_and!135665 () Bool)

(assert (= b_and!135641 (and (=> t!165976 result!129620) b_and!135665)))

(declare-fun b_lambda!58001 () Bool)

(assert (=> (not b_lambda!58001) (not d!542601)))

(assert (=> d!542601 t!165922))

(declare-fun b_and!135667 () Bool)

(assert (= b_and!135655 (and (=> t!165922 result!129558) b_and!135667)))

(assert (=> d!542601 t!165924))

(declare-fun b_and!135669 () Bool)

(assert (= b_and!135657 (and (=> t!165924 result!129560) b_and!135669)))

(assert (=> d!542601 t!165926))

(declare-fun b_and!135671 () Bool)

(assert (= b_and!135659 (and (=> t!165926 result!129562) b_and!135671)))

(assert (=> d!542601 m!2196327))

(declare-fun m!2197009 () Bool)

(assert (=> d!542601 m!2197009))

(declare-fun m!2197011 () Bool)

(assert (=> d!542601 m!2197011))

(declare-fun m!2197013 () Bool)

(assert (=> d!542601 m!2197013))

(declare-fun m!2197015 () Bool)

(assert (=> d!542601 m!2197015))

(assert (=> d!542601 m!2196327))

(assert (=> d!542601 m!2197009))

(assert (=> b!1775562 d!542601))

(declare-fun d!542603 () Bool)

(assert (=> d!542603 (= (inv!25430 (tag!3887 (h!24958 rules!3447))) (= (mod (str.len (value!109450 (tag!3887 (h!24958 rules!3447)))) 2) 0))))

(assert (=> b!1775557 d!542603))

(declare-fun d!542605 () Bool)

(declare-fun res!800294 () Bool)

(declare-fun e!1136699 () Bool)

(assert (=> d!542605 (=> (not res!800294) (not e!1136699))))

(assert (=> d!542605 (= res!800294 (semiInverseModEq!1395 (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (h!24958 rules!3447)))))))

(assert (=> d!542605 (= (inv!25435 (transformation!3501 (h!24958 rules!3447))) e!1136699)))

(declare-fun b!1776266 () Bool)

(assert (=> b!1776266 (= e!1136699 (equivClasses!1336 (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (h!24958 rules!3447)))))))

(assert (= (and d!542605 res!800294) b!1776266))

(declare-fun m!2197017 () Bool)

(assert (=> d!542605 m!2197017))

(declare-fun m!2197019 () Bool)

(assert (=> b!1776266 m!2197019))

(assert (=> b!1775557 d!542605))

(declare-fun d!542607 () Bool)

(declare-fun c!289132 () Bool)

(assert (=> d!542607 (= c!289132 ((_ is Node!6505) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))))

(declare-fun e!1136700 () Bool)

(assert (=> d!542607 (= (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))) e!1136700)))

(declare-fun b!1776267 () Bool)

(assert (=> b!1776267 (= e!1136700 (inv!25439 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))))

(declare-fun b!1776268 () Bool)

(declare-fun e!1136701 () Bool)

(assert (=> b!1776268 (= e!1136700 e!1136701)))

(declare-fun res!800295 () Bool)

(assert (=> b!1776268 (= res!800295 (not ((_ is Leaf!9476) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))))))

(assert (=> b!1776268 (=> res!800295 e!1136701)))

(declare-fun b!1776269 () Bool)

(assert (=> b!1776269 (= e!1136701 (inv!25440 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))))

(assert (= (and d!542607 c!289132) b!1776267))

(assert (= (and d!542607 (not c!289132)) b!1776268))

(assert (= (and b!1776268 (not res!800295)) b!1776269))

(declare-fun m!2197021 () Bool)

(assert (=> b!1776267 m!2197021))

(declare-fun m!2197023 () Bool)

(assert (=> b!1776269 m!2197023))

(assert (=> b!1775598 d!542607))

(declare-fun d!542609 () Bool)

(assert (=> d!542609 (= (isEmpty!12354 (_2!10979 lt!688611)) ((_ is Nil!19556) (_2!10979 lt!688611)))))

(assert (=> b!1775579 d!542609))

(declare-fun b!1776270 () Bool)

(declare-fun e!1136703 () Bool)

(assert (=> b!1776270 (= e!1136703 (inv!17 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun b!1776271 () Bool)

(declare-fun e!1136702 () Bool)

(assert (=> b!1776271 (= e!1136702 (inv!15 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun d!542611 () Bool)

(declare-fun c!289133 () Bool)

(assert (=> d!542611 (= c!289133 ((_ is IntegerValue!10773) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun e!1136704 () Bool)

(assert (=> d!542611 (= (inv!21 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)) e!1136704)))

(declare-fun b!1776272 () Bool)

(assert (=> b!1776272 (= e!1136704 (inv!16 (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun b!1776273 () Bool)

(assert (=> b!1776273 (= e!1136704 e!1136703)))

(declare-fun c!289134 () Bool)

(assert (=> b!1776273 (= c!289134 ((_ is IntegerValue!10774) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))

(declare-fun b!1776274 () Bool)

(declare-fun res!800296 () Bool)

(assert (=> b!1776274 (=> res!800296 e!1136702)))

(assert (=> b!1776274 (= res!800296 (not ((_ is IntegerValue!10775) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))))

(assert (=> b!1776274 (= e!1136703 e!1136702)))

(assert (= (and d!542611 c!289133) b!1776272))

(assert (= (and d!542611 (not c!289133)) b!1776273))

(assert (= (and b!1776273 c!289134) b!1776270))

(assert (= (and b!1776273 (not c!289134)) b!1776274))

(assert (= (and b!1776274 (not res!800296)) b!1776271))

(declare-fun m!2197025 () Bool)

(assert (=> b!1776270 m!2197025))

(declare-fun m!2197027 () Bool)

(assert (=> b!1776271 m!2197027))

(declare-fun m!2197029 () Bool)

(assert (=> b!1776272 m!2197029))

(assert (=> tb!107685 d!542611))

(declare-fun d!542613 () Bool)

(assert (=> d!542613 (= (list!7947 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))) (list!7950 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))))

(declare-fun bs!404936 () Bool)

(assert (= bs!404936 d!542613))

(declare-fun m!2197031 () Bool)

(assert (=> bs!404936 m!2197031))

(assert (=> b!1775558 d!542613))

(declare-fun bs!404937 () Bool)

(declare-fun d!542615 () Bool)

(assert (= bs!404937 (and d!542615 b!1775563)))

(declare-fun lambda!70555 () Int)

(assert (=> bs!404937 (= lambda!70555 lambda!70538)))

(declare-fun bs!404938 () Bool)

(assert (= bs!404938 (and d!542615 d!542601)))

(assert (=> bs!404938 (= lambda!70555 lambda!70554)))

(declare-fun b!1776275 () Bool)

(declare-fun e!1136705 () Bool)

(assert (=> b!1776275 (= e!1136705 true)))

(assert (=> d!542615 e!1136705))

(assert (= d!542615 b!1776275))

(assert (=> b!1776275 (< (dynLambda!9550 order!12551 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70555))))

(assert (=> b!1776275 (< (dynLambda!9552 order!12555 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) (dynLambda!9551 order!12553 lambda!70555))))

(assert (=> d!542615 (= (list!7947 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))) (list!7947 lt!688591))))

(declare-fun lt!688950 () Unit!33790)

(assert (=> d!542615 (= lt!688950 (ForallOf!333 lambda!70555 lt!688591))))

(assert (=> d!542615 (= (lemmaSemiInverse!639 (transformation!3501 (rule!5557 (_1!10979 lt!688600))) lt!688591) lt!688950)))

(declare-fun b_lambda!58003 () Bool)

(assert (=> (not b_lambda!58003) (not d!542615)))

(assert (=> d!542615 t!165895))

(declare-fun b_and!135673 () Bool)

(assert (= b_and!135661 (and (=> t!165895 result!129530) b_and!135673)))

(assert (=> d!542615 t!165897))

(declare-fun b_and!135675 () Bool)

(assert (= b_and!135663 (and (=> t!165897 result!129534) b_and!135675)))

(assert (=> d!542615 t!165899))

(declare-fun b_and!135677 () Bool)

(assert (= b_and!135665 (and (=> t!165899 result!129536) b_and!135677)))

(declare-fun b_lambda!58005 () Bool)

(assert (=> (not b_lambda!58005) (not d!542615)))

(assert (=> d!542615 t!165901))

(declare-fun b_and!135679 () Bool)

(assert (= b_and!135667 (and (=> t!165901 result!129538) b_and!135679)))

(assert (=> d!542615 t!165903))

(declare-fun b_and!135681 () Bool)

(assert (= b_and!135669 (and (=> t!165903 result!129542) b_and!135681)))

(assert (=> d!542615 t!165905))

(declare-fun b_and!135683 () Bool)

(assert (= b_and!135671 (and (=> t!165905 result!129544) b_and!135683)))

(assert (=> d!542615 m!2196073))

(assert (=> d!542615 m!2196075))

(assert (=> d!542615 m!2196077))

(declare-fun m!2197033 () Bool)

(assert (=> d!542615 m!2197033))

(assert (=> d!542615 m!2196035))

(assert (=> d!542615 m!2196073))

(assert (=> d!542615 m!2196075))

(assert (=> b!1775558 d!542615))

(declare-fun d!542617 () Bool)

(declare-fun lt!688951 () Bool)

(assert (=> d!542617 (= lt!688951 (select (content!2837 rules!3447) (rule!5557 (_1!10979 lt!688600))))))

(declare-fun e!1136706 () Bool)

(assert (=> d!542617 (= lt!688951 e!1136706)))

(declare-fun res!800297 () Bool)

(assert (=> d!542617 (=> (not res!800297) (not e!1136706))))

(assert (=> d!542617 (= res!800297 ((_ is Cons!19557) rules!3447))))

(assert (=> d!542617 (= (contains!3533 rules!3447 (rule!5557 (_1!10979 lt!688600))) lt!688951)))

(declare-fun b!1776276 () Bool)

(declare-fun e!1136707 () Bool)

(assert (=> b!1776276 (= e!1136706 e!1136707)))

(declare-fun res!800298 () Bool)

(assert (=> b!1776276 (=> res!800298 e!1136707)))

(assert (=> b!1776276 (= res!800298 (= (h!24958 rules!3447) (rule!5557 (_1!10979 lt!688600))))))

(declare-fun b!1776277 () Bool)

(assert (=> b!1776277 (= e!1136707 (contains!3533 (t!165914 rules!3447) (rule!5557 (_1!10979 lt!688600))))))

(assert (= (and d!542617 res!800297) b!1776276))

(assert (= (and b!1776276 (not res!800298)) b!1776277))

(assert (=> d!542617 m!2196219))

(declare-fun m!2197035 () Bool)

(assert (=> d!542617 m!2197035))

(declare-fun m!2197037 () Bool)

(assert (=> b!1776277 m!2197037))

(assert (=> b!1775576 d!542617))

(declare-fun d!542619 () Bool)

(declare-fun isBalanced!2033 (Conc!6505) Bool)

(assert (=> d!542619 (= (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))) (isBalanced!2033 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))))))

(declare-fun bs!404939 () Bool)

(assert (= bs!404939 d!542619))

(declare-fun m!2197039 () Bool)

(assert (=> bs!404939 m!2197039))

(assert (=> tb!107679 d!542619))

(declare-fun d!542621 () Bool)

(declare-fun lt!688952 () Int)

(assert (=> d!542621 (>= lt!688952 0)))

(declare-fun e!1136708 () Int)

(assert (=> d!542621 (= lt!688952 e!1136708)))

(declare-fun c!289135 () Bool)

(assert (=> d!542621 (= c!289135 ((_ is Nil!19556) lt!688584))))

(assert (=> d!542621 (= (size!15540 lt!688584) lt!688952)))

(declare-fun b!1776278 () Bool)

(assert (=> b!1776278 (= e!1136708 0)))

(declare-fun b!1776279 () Bool)

(assert (=> b!1776279 (= e!1136708 (+ 1 (size!15540 (t!165913 lt!688584))))))

(assert (= (and d!542621 c!289135) b!1776278))

(assert (= (and d!542621 (not c!289135)) b!1776279))

(declare-fun m!2197041 () Bool)

(assert (=> b!1776279 m!2197041))

(assert (=> b!1775577 d!542621))

(declare-fun b!1776282 () Bool)

(declare-fun res!800300 () Bool)

(declare-fun e!1136710 () Bool)

(assert (=> b!1776282 (=> (not res!800300) (not e!1136710))))

(declare-fun lt!688953 () List!19626)

(assert (=> b!1776282 (= res!800300 (= (size!15540 lt!688953) (+ (size!15540 lt!688584) (size!15540 (Cons!19556 (head!4138 lt!688588) Nil!19556)))))))

(declare-fun b!1776280 () Bool)

(declare-fun e!1136709 () List!19626)

(assert (=> b!1776280 (= e!1136709 (Cons!19556 (head!4138 lt!688588) Nil!19556))))

(declare-fun d!542623 () Bool)

(assert (=> d!542623 e!1136710))

(declare-fun res!800299 () Bool)

(assert (=> d!542623 (=> (not res!800299) (not e!1136710))))

(assert (=> d!542623 (= res!800299 (= (content!2839 lt!688953) ((_ map or) (content!2839 lt!688584) (content!2839 (Cons!19556 (head!4138 lt!688588) Nil!19556)))))))

(assert (=> d!542623 (= lt!688953 e!1136709)))

(declare-fun c!289136 () Bool)

(assert (=> d!542623 (= c!289136 ((_ is Nil!19556) lt!688584))))

(assert (=> d!542623 (= (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556)) lt!688953)))

(declare-fun b!1776281 () Bool)

(assert (=> b!1776281 (= e!1136709 (Cons!19556 (h!24957 lt!688584) (++!5325 (t!165913 lt!688584) (Cons!19556 (head!4138 lt!688588) Nil!19556))))))

(declare-fun b!1776283 () Bool)

(assert (=> b!1776283 (= e!1136710 (or (not (= (Cons!19556 (head!4138 lt!688588) Nil!19556) Nil!19556)) (= lt!688953 lt!688584)))))

(assert (= (and d!542623 c!289136) b!1776280))

(assert (= (and d!542623 (not c!289136)) b!1776281))

(assert (= (and d!542623 res!800299) b!1776282))

(assert (= (and b!1776282 res!800300) b!1776283))

(declare-fun m!2197043 () Bool)

(assert (=> b!1776282 m!2197043))

(assert (=> b!1776282 m!2196095))

(declare-fun m!2197045 () Bool)

(assert (=> b!1776282 m!2197045))

(declare-fun m!2197047 () Bool)

(assert (=> d!542623 m!2197047))

(assert (=> d!542623 m!2196413))

(declare-fun m!2197049 () Bool)

(assert (=> d!542623 m!2197049))

(declare-fun m!2197051 () Bool)

(assert (=> b!1776281 m!2197051))

(assert (=> b!1775556 d!542623))

(declare-fun b!1776284 () Bool)

(declare-fun e!1136711 () Bool)

(assert (=> b!1776284 (= e!1136711 (not (= (head!4138 lt!688607) (c!289018 lt!688576))))))

(declare-fun b!1776285 () Bool)

(declare-fun e!1136712 () Bool)

(declare-fun lt!688954 () Bool)

(assert (=> b!1776285 (= e!1136712 (not lt!688954))))

(declare-fun b!1776286 () Bool)

(declare-fun e!1136717 () Bool)

(assert (=> b!1776286 (= e!1136717 e!1136712)))

(declare-fun c!289139 () Bool)

(assert (=> b!1776286 (= c!289139 ((_ is EmptyLang!4829) lt!688576))))

(declare-fun bm!111200 () Bool)

(declare-fun call!111205 () Bool)

(assert (=> bm!111200 (= call!111205 (isEmpty!12354 lt!688607))))

(declare-fun b!1776288 () Bool)

(declare-fun res!800302 () Bool)

(assert (=> b!1776288 (=> res!800302 e!1136711)))

(assert (=> b!1776288 (= res!800302 (not (isEmpty!12354 (tail!2657 lt!688607))))))

(declare-fun b!1776289 () Bool)

(declare-fun e!1136716 () Bool)

(assert (=> b!1776289 (= e!1136716 (= (head!4138 lt!688607) (c!289018 lt!688576)))))

(declare-fun b!1776290 () Bool)

(declare-fun res!800301 () Bool)

(declare-fun e!1136715 () Bool)

(assert (=> b!1776290 (=> res!800301 e!1136715)))

(assert (=> b!1776290 (= res!800301 e!1136716)))

(declare-fun res!800308 () Bool)

(assert (=> b!1776290 (=> (not res!800308) (not e!1136716))))

(assert (=> b!1776290 (= res!800308 lt!688954)))

(declare-fun b!1776291 () Bool)

(declare-fun e!1136713 () Bool)

(assert (=> b!1776291 (= e!1136713 (nullable!1480 lt!688576))))

(declare-fun b!1776292 () Bool)

(assert (=> b!1776292 (= e!1136713 (matchR!2302 (derivativeStep!1249 lt!688576 (head!4138 lt!688607)) (tail!2657 lt!688607)))))

(declare-fun b!1776293 () Bool)

(declare-fun e!1136714 () Bool)

(assert (=> b!1776293 (= e!1136715 e!1136714)))

(declare-fun res!800305 () Bool)

(assert (=> b!1776293 (=> (not res!800305) (not e!1136714))))

(assert (=> b!1776293 (= res!800305 (not lt!688954))))

(declare-fun b!1776287 () Bool)

(declare-fun res!800307 () Bool)

(assert (=> b!1776287 (=> (not res!800307) (not e!1136716))))

(assert (=> b!1776287 (= res!800307 (isEmpty!12354 (tail!2657 lt!688607)))))

(declare-fun d!542625 () Bool)

(assert (=> d!542625 e!1136717))

(declare-fun c!289138 () Bool)

(assert (=> d!542625 (= c!289138 ((_ is EmptyExpr!4829) lt!688576))))

(assert (=> d!542625 (= lt!688954 e!1136713)))

(declare-fun c!289137 () Bool)

(assert (=> d!542625 (= c!289137 (isEmpty!12354 lt!688607))))

(assert (=> d!542625 (validRegex!1954 lt!688576)))

(assert (=> d!542625 (= (matchR!2302 lt!688576 lt!688607) lt!688954)))

(declare-fun b!1776294 () Bool)

(assert (=> b!1776294 (= e!1136717 (= lt!688954 call!111205))))

(declare-fun b!1776295 () Bool)

(assert (=> b!1776295 (= e!1136714 e!1136711)))

(declare-fun res!800304 () Bool)

(assert (=> b!1776295 (=> res!800304 e!1136711)))

(assert (=> b!1776295 (= res!800304 call!111205)))

(declare-fun b!1776296 () Bool)

(declare-fun res!800306 () Bool)

(assert (=> b!1776296 (=> res!800306 e!1136715)))

(assert (=> b!1776296 (= res!800306 (not ((_ is ElementMatch!4829) lt!688576)))))

(assert (=> b!1776296 (= e!1136712 e!1136715)))

(declare-fun b!1776297 () Bool)

(declare-fun res!800303 () Bool)

(assert (=> b!1776297 (=> (not res!800303) (not e!1136716))))

(assert (=> b!1776297 (= res!800303 (not call!111205))))

(assert (= (and d!542625 c!289137) b!1776291))

(assert (= (and d!542625 (not c!289137)) b!1776292))

(assert (= (and d!542625 c!289138) b!1776294))

(assert (= (and d!542625 (not c!289138)) b!1776286))

(assert (= (and b!1776286 c!289139) b!1776285))

(assert (= (and b!1776286 (not c!289139)) b!1776296))

(assert (= (and b!1776296 (not res!800306)) b!1776290))

(assert (= (and b!1776290 res!800308) b!1776297))

(assert (= (and b!1776297 res!800303) b!1776287))

(assert (= (and b!1776287 res!800307) b!1776289))

(assert (= (and b!1776290 (not res!800301)) b!1776293))

(assert (= (and b!1776293 res!800305) b!1776295))

(assert (= (and b!1776295 (not res!800304)) b!1776288))

(assert (= (and b!1776288 (not res!800302)) b!1776284))

(assert (= (or b!1776294 b!1776295 b!1776297) bm!111200))

(declare-fun m!2197053 () Bool)

(assert (=> b!1776291 m!2197053))

(declare-fun m!2197055 () Bool)

(assert (=> bm!111200 m!2197055))

(assert (=> d!542625 m!2197055))

(declare-fun m!2197057 () Bool)

(assert (=> d!542625 m!2197057))

(assert (=> b!1776288 m!2196419))

(assert (=> b!1776288 m!2196419))

(declare-fun m!2197059 () Bool)

(assert (=> b!1776288 m!2197059))

(assert (=> b!1776284 m!2196423))

(assert (=> b!1776292 m!2196423))

(assert (=> b!1776292 m!2196423))

(declare-fun m!2197061 () Bool)

(assert (=> b!1776292 m!2197061))

(assert (=> b!1776292 m!2196419))

(assert (=> b!1776292 m!2197061))

(assert (=> b!1776292 m!2196419))

(declare-fun m!2197063 () Bool)

(assert (=> b!1776292 m!2197063))

(assert (=> b!1776287 m!2196419))

(assert (=> b!1776287 m!2196419))

(assert (=> b!1776287 m!2197059))

(assert (=> b!1776289 m!2196423))

(assert (=> b!1775556 d!542625))

(declare-fun d!542627 () Bool)

(assert (=> d!542627 (= (head!4138 lt!688588) (h!24957 lt!688588))))

(assert (=> b!1775556 d!542627))

(declare-fun b!1776300 () Bool)

(declare-fun e!1136720 () Bool)

(assert (=> b!1776300 (= e!1136720 (isPrefix!1741 (tail!2657 (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556))) (tail!2657 lt!688620)))))

(declare-fun b!1776298 () Bool)

(declare-fun e!1136718 () Bool)

(assert (=> b!1776298 (= e!1136718 e!1136720)))

(declare-fun res!800311 () Bool)

(assert (=> b!1776298 (=> (not res!800311) (not e!1136720))))

(assert (=> b!1776298 (= res!800311 (not ((_ is Nil!19556) lt!688620)))))

(declare-fun b!1776301 () Bool)

(declare-fun e!1136719 () Bool)

(assert (=> b!1776301 (= e!1136719 (>= (size!15540 lt!688620) (size!15540 (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556)))))))

(declare-fun d!542629 () Bool)

(assert (=> d!542629 e!1136719))

(declare-fun res!800309 () Bool)

(assert (=> d!542629 (=> res!800309 e!1136719)))

(declare-fun lt!688955 () Bool)

(assert (=> d!542629 (= res!800309 (not lt!688955))))

(assert (=> d!542629 (= lt!688955 e!1136718)))

(declare-fun res!800310 () Bool)

(assert (=> d!542629 (=> res!800310 e!1136718)))

(assert (=> d!542629 (= res!800310 ((_ is Nil!19556) (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556))))))

(assert (=> d!542629 (= (isPrefix!1741 (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556)) lt!688620) lt!688955)))

(declare-fun b!1776299 () Bool)

(declare-fun res!800312 () Bool)

(assert (=> b!1776299 (=> (not res!800312) (not e!1136720))))

(assert (=> b!1776299 (= res!800312 (= (head!4138 (++!5325 lt!688584 (Cons!19556 (head!4138 lt!688588) Nil!19556))) (head!4138 lt!688620)))))

(assert (= (and d!542629 (not res!800310)) b!1776298))

(assert (= (and b!1776298 res!800311) b!1776299))

(assert (= (and b!1776299 res!800312) b!1776300))

(assert (= (and d!542629 (not res!800309)) b!1776301))

(assert (=> b!1776300 m!2196015))

(declare-fun m!2197065 () Bool)

(assert (=> b!1776300 m!2197065))

(assert (=> b!1776300 m!2196237))

(assert (=> b!1776300 m!2197065))

(assert (=> b!1776300 m!2196237))

(declare-fun m!2197067 () Bool)

(assert (=> b!1776300 m!2197067))

(assert (=> b!1776301 m!2196235))

(assert (=> b!1776301 m!2196015))

(declare-fun m!2197069 () Bool)

(assert (=> b!1776301 m!2197069))

(assert (=> b!1776299 m!2196015))

(declare-fun m!2197071 () Bool)

(assert (=> b!1776299 m!2197071))

(assert (=> b!1776299 m!2196425))

(assert (=> b!1775556 d!542629))

(declare-fun d!542631 () Bool)

(assert (=> d!542631 (not (matchR!2302 lt!688576 lt!688607))))

(declare-fun lt!688958 () Unit!33790)

(declare-fun choose!11090 (Regex!4829 List!19626 List!19626) Unit!33790)

(assert (=> d!542631 (= lt!688958 (choose!11090 lt!688576 lt!688601 lt!688607))))

(assert (=> d!542631 (validRegex!1954 lt!688576)))

(assert (=> d!542631 (= (lemmaNotPrefixMatchThenCannotMatchLonger!140 lt!688576 lt!688601 lt!688607) lt!688958)))

(declare-fun bs!404940 () Bool)

(assert (= bs!404940 d!542631))

(assert (=> bs!404940 m!2195999))

(declare-fun m!2197073 () Bool)

(assert (=> bs!404940 m!2197073))

(assert (=> bs!404940 m!2197057))

(assert (=> b!1775556 d!542631))

(declare-fun d!542633 () Bool)

(assert (=> d!542633 (isPrefix!1741 (++!5325 lt!688584 (Cons!19556 (head!4138 (getSuffix!908 lt!688620 lt!688584)) Nil!19556)) lt!688620)))

(declare-fun lt!688961 () Unit!33790)

(declare-fun choose!11091 (List!19626 List!19626) Unit!33790)

(assert (=> d!542633 (= lt!688961 (choose!11091 lt!688584 lt!688620))))

(assert (=> d!542633 (isPrefix!1741 lt!688584 lt!688620)))

(assert (=> d!542633 (= (lemmaAddHeadSuffixToPrefixStillPrefix!277 lt!688584 lt!688620) lt!688961)))

(declare-fun bs!404941 () Bool)

(assert (= bs!404941 d!542633))

(assert (=> bs!404941 m!2196017))

(declare-fun m!2197075 () Bool)

(assert (=> bs!404941 m!2197075))

(declare-fun m!2197077 () Bool)

(assert (=> bs!404941 m!2197077))

(assert (=> bs!404941 m!2196041))

(assert (=> bs!404941 m!2196017))

(declare-fun m!2197079 () Bool)

(assert (=> bs!404941 m!2197079))

(assert (=> bs!404941 m!2197077))

(declare-fun m!2197081 () Bool)

(assert (=> bs!404941 m!2197081))

(assert (=> b!1775556 d!542633))

(declare-fun d!542635 () Bool)

(declare-fun lt!688962 () List!19626)

(assert (=> d!542635 (= (++!5325 lt!688584 lt!688962) lt!688620)))

(declare-fun e!1136721 () List!19626)

(assert (=> d!542635 (= lt!688962 e!1136721)))

(declare-fun c!289140 () Bool)

(assert (=> d!542635 (= c!289140 ((_ is Cons!19556) lt!688584))))

(assert (=> d!542635 (>= (size!15540 lt!688620) (size!15540 lt!688584))))

(assert (=> d!542635 (= (getSuffix!908 lt!688620 lt!688584) lt!688962)))

(declare-fun b!1776302 () Bool)

(assert (=> b!1776302 (= e!1136721 (getSuffix!908 (tail!2657 lt!688620) (t!165913 lt!688584)))))

(declare-fun b!1776303 () Bool)

(assert (=> b!1776303 (= e!1136721 lt!688620)))

(assert (= (and d!542635 c!289140) b!1776302))

(assert (= (and d!542635 (not c!289140)) b!1776303))

(declare-fun m!2197083 () Bool)

(assert (=> d!542635 m!2197083))

(assert (=> d!542635 m!2196235))

(assert (=> d!542635 m!2196095))

(assert (=> b!1776302 m!2196237))

(assert (=> b!1776302 m!2196237))

(declare-fun m!2197085 () Bool)

(assert (=> b!1776302 m!2197085))

(assert (=> b!1775556 d!542635))

(declare-fun d!542637 () Bool)

(assert (=> d!542637 (= suffix!1421 lt!688588)))

(declare-fun lt!688963 () Unit!33790)

(assert (=> d!542637 (= lt!688963 (choose!11077 lt!688584 suffix!1421 lt!688584 lt!688588 lt!688620))))

(assert (=> d!542637 (isPrefix!1741 lt!688584 lt!688620)))

(assert (=> d!542637 (= (lemmaSamePrefixThenSameSuffix!852 lt!688584 suffix!1421 lt!688584 lt!688588 lt!688620) lt!688963)))

(declare-fun bs!404942 () Bool)

(assert (= bs!404942 d!542637))

(declare-fun m!2197087 () Bool)

(assert (=> bs!404942 m!2197087))

(assert (=> bs!404942 m!2196041))

(assert (=> b!1775556 d!542637))

(declare-fun b!1776306 () Bool)

(declare-fun e!1136724 () Bool)

(assert (=> b!1776306 (= e!1136724 (isPrefix!1741 (tail!2657 lt!688601) (tail!2657 lt!688607)))))

(declare-fun b!1776304 () Bool)

(declare-fun e!1136722 () Bool)

(assert (=> b!1776304 (= e!1136722 e!1136724)))

(declare-fun res!800315 () Bool)

(assert (=> b!1776304 (=> (not res!800315) (not e!1136724))))

(assert (=> b!1776304 (= res!800315 (not ((_ is Nil!19556) lt!688607)))))

(declare-fun b!1776307 () Bool)

(declare-fun e!1136723 () Bool)

(assert (=> b!1776307 (= e!1136723 (>= (size!15540 lt!688607) (size!15540 lt!688601)))))

(declare-fun d!542639 () Bool)

(assert (=> d!542639 e!1136723))

(declare-fun res!800313 () Bool)

(assert (=> d!542639 (=> res!800313 e!1136723)))

(declare-fun lt!688964 () Bool)

(assert (=> d!542639 (= res!800313 (not lt!688964))))

(assert (=> d!542639 (= lt!688964 e!1136722)))

(declare-fun res!800314 () Bool)

(assert (=> d!542639 (=> res!800314 e!1136722)))

(assert (=> d!542639 (= res!800314 ((_ is Nil!19556) lt!688601))))

(assert (=> d!542639 (= (isPrefix!1741 lt!688601 lt!688607) lt!688964)))

(declare-fun b!1776305 () Bool)

(declare-fun res!800316 () Bool)

(assert (=> b!1776305 (=> (not res!800316) (not e!1136724))))

(assert (=> b!1776305 (= res!800316 (= (head!4138 lt!688601) (head!4138 lt!688607)))))

(assert (= (and d!542639 (not res!800314)) b!1776304))

(assert (= (and b!1776304 res!800315) b!1776305))

(assert (= (and b!1776305 res!800316) b!1776306))

(assert (= (and d!542639 (not res!800313)) b!1776307))

(declare-fun m!2197089 () Bool)

(assert (=> b!1776306 m!2197089))

(assert (=> b!1776306 m!2196419))

(assert (=> b!1776306 m!2197089))

(assert (=> b!1776306 m!2196419))

(declare-fun m!2197091 () Bool)

(assert (=> b!1776306 m!2197091))

(assert (=> b!1776307 m!2195995))

(declare-fun m!2197093 () Bool)

(assert (=> b!1776307 m!2197093))

(declare-fun m!2197095 () Bool)

(assert (=> b!1776305 m!2197095))

(assert (=> b!1776305 m!2196423))

(assert (=> b!1775556 d!542639))

(declare-fun d!542641 () Bool)

(assert (=> d!542641 (matchR!2302 (rulesRegex!857 thiss!24550 rules!3447) (list!7947 (charsOf!2150 (_1!10979 lt!688600))))))

(declare-fun lt!688967 () Unit!33790)

(declare-fun choose!11092 (LexerInterface!3130 List!19627 List!19626 Token!6568 Rule!6802 List!19626) Unit!33790)

(assert (=> d!542641 (= lt!688967 (choose!11092 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600) (rule!5557 (_1!10979 lt!688600)) (_2!10979 lt!688600)))))

(assert (=> d!542641 (not (isEmpty!12355 rules!3447))))

(assert (=> d!542641 (= (lemmaMaxPrefixThenMatchesRulesRegex!208 thiss!24550 rules!3447 lt!688620 (_1!10979 lt!688600) (rule!5557 (_1!10979 lt!688600)) (_2!10979 lt!688600)) lt!688967)))

(declare-fun bs!404943 () Bool)

(assert (= bs!404943 d!542641))

(assert (=> bs!404943 m!2196051))

(declare-fun m!2197097 () Bool)

(assert (=> bs!404943 m!2197097))

(assert (=> bs!404943 m!2196111))

(assert (=> bs!404943 m!2196099))

(declare-fun m!2197099 () Bool)

(assert (=> bs!404943 m!2197099))

(assert (=> bs!404943 m!2196051))

(assert (=> bs!404943 m!2196099))

(assert (=> bs!404943 m!2195973))

(assert (=> bs!404943 m!2196111))

(assert (=> b!1775556 d!542641))

(declare-fun d!542643 () Bool)

(assert (=> d!542643 (isPrefix!1741 lt!688601 lt!688607)))

(declare-fun lt!688970 () Unit!33790)

(declare-fun choose!11093 (List!19626 List!19626 List!19626) Unit!33790)

(assert (=> d!542643 (= lt!688970 (choose!11093 lt!688607 lt!688601 lt!688620))))

(assert (=> d!542643 (isPrefix!1741 lt!688607 lt!688620)))

(assert (=> d!542643 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!149 lt!688607 lt!688601 lt!688620) lt!688970)))

(declare-fun bs!404944 () Bool)

(assert (= bs!404944 d!542643))

(assert (=> bs!404944 m!2196013))

(declare-fun m!2197101 () Bool)

(assert (=> bs!404944 m!2197101))

(assert (=> bs!404944 m!2196037))

(assert (=> b!1775556 d!542643))

(declare-fun b!1776308 () Bool)

(declare-fun e!1136725 () Bool)

(assert (=> b!1776308 (= e!1136725 (not (= (head!4138 lt!688607) (c!289018 (regex!3501 (rule!5557 (_1!10979 lt!688600)))))))))

(declare-fun b!1776309 () Bool)

(declare-fun e!1136726 () Bool)

(declare-fun lt!688971 () Bool)

(assert (=> b!1776309 (= e!1136726 (not lt!688971))))

(declare-fun b!1776310 () Bool)

(declare-fun e!1136731 () Bool)

(assert (=> b!1776310 (= e!1136731 e!1136726)))

(declare-fun c!289143 () Bool)

(assert (=> b!1776310 (= c!289143 ((_ is EmptyLang!4829) (regex!3501 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun bm!111201 () Bool)

(declare-fun call!111206 () Bool)

(assert (=> bm!111201 (= call!111206 (isEmpty!12354 lt!688607))))

(declare-fun b!1776312 () Bool)

(declare-fun res!800318 () Bool)

(assert (=> b!1776312 (=> res!800318 e!1136725)))

(assert (=> b!1776312 (= res!800318 (not (isEmpty!12354 (tail!2657 lt!688607))))))

(declare-fun b!1776313 () Bool)

(declare-fun e!1136730 () Bool)

(assert (=> b!1776313 (= e!1136730 (= (head!4138 lt!688607) (c!289018 (regex!3501 (rule!5557 (_1!10979 lt!688600))))))))

(declare-fun b!1776314 () Bool)

(declare-fun res!800317 () Bool)

(declare-fun e!1136729 () Bool)

(assert (=> b!1776314 (=> res!800317 e!1136729)))

(assert (=> b!1776314 (= res!800317 e!1136730)))

(declare-fun res!800324 () Bool)

(assert (=> b!1776314 (=> (not res!800324) (not e!1136730))))

(assert (=> b!1776314 (= res!800324 lt!688971)))

(declare-fun b!1776315 () Bool)

(declare-fun e!1136727 () Bool)

(assert (=> b!1776315 (= e!1136727 (nullable!1480 (regex!3501 (rule!5557 (_1!10979 lt!688600)))))))

(declare-fun b!1776316 () Bool)

(assert (=> b!1776316 (= e!1136727 (matchR!2302 (derivativeStep!1249 (regex!3501 (rule!5557 (_1!10979 lt!688600))) (head!4138 lt!688607)) (tail!2657 lt!688607)))))

(declare-fun b!1776317 () Bool)

(declare-fun e!1136728 () Bool)

(assert (=> b!1776317 (= e!1136729 e!1136728)))

(declare-fun res!800321 () Bool)

(assert (=> b!1776317 (=> (not res!800321) (not e!1136728))))

(assert (=> b!1776317 (= res!800321 (not lt!688971))))

(declare-fun b!1776311 () Bool)

(declare-fun res!800323 () Bool)

(assert (=> b!1776311 (=> (not res!800323) (not e!1136730))))

(assert (=> b!1776311 (= res!800323 (isEmpty!12354 (tail!2657 lt!688607)))))

(declare-fun d!542645 () Bool)

(assert (=> d!542645 e!1136731))

(declare-fun c!289142 () Bool)

(assert (=> d!542645 (= c!289142 ((_ is EmptyExpr!4829) (regex!3501 (rule!5557 (_1!10979 lt!688600)))))))

(assert (=> d!542645 (= lt!688971 e!1136727)))

(declare-fun c!289141 () Bool)

(assert (=> d!542645 (= c!289141 (isEmpty!12354 lt!688607))))

(assert (=> d!542645 (validRegex!1954 (regex!3501 (rule!5557 (_1!10979 lt!688600))))))

(assert (=> d!542645 (= (matchR!2302 (regex!3501 (rule!5557 (_1!10979 lt!688600))) lt!688607) lt!688971)))

(declare-fun b!1776318 () Bool)

(assert (=> b!1776318 (= e!1136731 (= lt!688971 call!111206))))

(declare-fun b!1776319 () Bool)

(assert (=> b!1776319 (= e!1136728 e!1136725)))

(declare-fun res!800320 () Bool)

(assert (=> b!1776319 (=> res!800320 e!1136725)))

(assert (=> b!1776319 (= res!800320 call!111206)))

(declare-fun b!1776320 () Bool)

(declare-fun res!800322 () Bool)

(assert (=> b!1776320 (=> res!800322 e!1136729)))

(assert (=> b!1776320 (= res!800322 (not ((_ is ElementMatch!4829) (regex!3501 (rule!5557 (_1!10979 lt!688600))))))))

(assert (=> b!1776320 (= e!1136726 e!1136729)))

(declare-fun b!1776321 () Bool)

(declare-fun res!800319 () Bool)

(assert (=> b!1776321 (=> (not res!800319) (not e!1136730))))

(assert (=> b!1776321 (= res!800319 (not call!111206))))

(assert (= (and d!542645 c!289141) b!1776315))

(assert (= (and d!542645 (not c!289141)) b!1776316))

(assert (= (and d!542645 c!289142) b!1776318))

(assert (= (and d!542645 (not c!289142)) b!1776310))

(assert (= (and b!1776310 c!289143) b!1776309))

(assert (= (and b!1776310 (not c!289143)) b!1776320))

(assert (= (and b!1776320 (not res!800322)) b!1776314))

(assert (= (and b!1776314 res!800324) b!1776321))

(assert (= (and b!1776321 res!800319) b!1776311))

(assert (= (and b!1776311 res!800323) b!1776313))

(assert (= (and b!1776314 (not res!800317)) b!1776317))

(assert (= (and b!1776317 res!800321) b!1776319))

(assert (= (and b!1776319 (not res!800320)) b!1776312))

(assert (= (and b!1776312 (not res!800318)) b!1776308))

(assert (= (or b!1776318 b!1776319 b!1776321) bm!111201))

(assert (=> b!1776315 m!2196997))

(assert (=> bm!111201 m!2197055))

(assert (=> d!542645 m!2197055))

(assert (=> d!542645 m!2196995))

(assert (=> b!1776312 m!2196419))

(assert (=> b!1776312 m!2196419))

(assert (=> b!1776312 m!2197059))

(assert (=> b!1776308 m!2196423))

(assert (=> b!1776316 m!2196423))

(assert (=> b!1776316 m!2196423))

(declare-fun m!2197103 () Bool)

(assert (=> b!1776316 m!2197103))

(assert (=> b!1776316 m!2196419))

(assert (=> b!1776316 m!2197103))

(assert (=> b!1776316 m!2196419))

(declare-fun m!2197105 () Bool)

(assert (=> b!1776316 m!2197105))

(assert (=> b!1776311 m!2196419))

(assert (=> b!1776311 m!2196419))

(assert (=> b!1776311 m!2197059))

(assert (=> b!1776313 m!2196423))

(assert (=> b!1775573 d!542645))

(declare-fun b!1776322 () Bool)

(declare-fun e!1136732 () Bool)

(assert (=> b!1776322 (= e!1136732 (not (= (head!4138 lt!688584) (c!289018 (regex!3501 rule!422)))))))

(declare-fun b!1776323 () Bool)

(declare-fun e!1136733 () Bool)

(declare-fun lt!688972 () Bool)

(assert (=> b!1776323 (= e!1136733 (not lt!688972))))

(declare-fun b!1776324 () Bool)

(declare-fun e!1136738 () Bool)

(assert (=> b!1776324 (= e!1136738 e!1136733)))

(declare-fun c!289146 () Bool)

(assert (=> b!1776324 (= c!289146 ((_ is EmptyLang!4829) (regex!3501 rule!422)))))

(declare-fun bm!111202 () Bool)

(declare-fun call!111207 () Bool)

(assert (=> bm!111202 (= call!111207 (isEmpty!12354 lt!688584))))

(declare-fun b!1776326 () Bool)

(declare-fun res!800326 () Bool)

(assert (=> b!1776326 (=> res!800326 e!1136732)))

(assert (=> b!1776326 (= res!800326 (not (isEmpty!12354 (tail!2657 lt!688584))))))

(declare-fun b!1776327 () Bool)

(declare-fun e!1136737 () Bool)

(assert (=> b!1776327 (= e!1136737 (= (head!4138 lt!688584) (c!289018 (regex!3501 rule!422))))))

(declare-fun b!1776328 () Bool)

(declare-fun res!800325 () Bool)

(declare-fun e!1136736 () Bool)

(assert (=> b!1776328 (=> res!800325 e!1136736)))

(assert (=> b!1776328 (= res!800325 e!1136737)))

(declare-fun res!800332 () Bool)

(assert (=> b!1776328 (=> (not res!800332) (not e!1136737))))

(assert (=> b!1776328 (= res!800332 lt!688972)))

(declare-fun b!1776329 () Bool)

(declare-fun e!1136734 () Bool)

(assert (=> b!1776329 (= e!1136734 (nullable!1480 (regex!3501 rule!422)))))

(declare-fun b!1776330 () Bool)

(assert (=> b!1776330 (= e!1136734 (matchR!2302 (derivativeStep!1249 (regex!3501 rule!422) (head!4138 lt!688584)) (tail!2657 lt!688584)))))

(declare-fun b!1776331 () Bool)

(declare-fun e!1136735 () Bool)

(assert (=> b!1776331 (= e!1136736 e!1136735)))

(declare-fun res!800329 () Bool)

(assert (=> b!1776331 (=> (not res!800329) (not e!1136735))))

(assert (=> b!1776331 (= res!800329 (not lt!688972))))

(declare-fun b!1776325 () Bool)

(declare-fun res!800331 () Bool)

(assert (=> b!1776325 (=> (not res!800331) (not e!1136737))))

(assert (=> b!1776325 (= res!800331 (isEmpty!12354 (tail!2657 lt!688584)))))

(declare-fun d!542647 () Bool)

(assert (=> d!542647 e!1136738))

(declare-fun c!289145 () Bool)

(assert (=> d!542647 (= c!289145 ((_ is EmptyExpr!4829) (regex!3501 rule!422)))))

(assert (=> d!542647 (= lt!688972 e!1136734)))

(declare-fun c!289144 () Bool)

(assert (=> d!542647 (= c!289144 (isEmpty!12354 lt!688584))))

(assert (=> d!542647 (validRegex!1954 (regex!3501 rule!422))))

(assert (=> d!542647 (= (matchR!2302 (regex!3501 rule!422) lt!688584) lt!688972)))

(declare-fun b!1776332 () Bool)

(assert (=> b!1776332 (= e!1136738 (= lt!688972 call!111207))))

(declare-fun b!1776333 () Bool)

(assert (=> b!1776333 (= e!1136735 e!1136732)))

(declare-fun res!800328 () Bool)

(assert (=> b!1776333 (=> res!800328 e!1136732)))

(assert (=> b!1776333 (= res!800328 call!111207)))

(declare-fun b!1776334 () Bool)

(declare-fun res!800330 () Bool)

(assert (=> b!1776334 (=> res!800330 e!1136736)))

(assert (=> b!1776334 (= res!800330 (not ((_ is ElementMatch!4829) (regex!3501 rule!422))))))

(assert (=> b!1776334 (= e!1136733 e!1136736)))

(declare-fun b!1776335 () Bool)

(declare-fun res!800327 () Bool)

(assert (=> b!1776335 (=> (not res!800327) (not e!1136737))))

(assert (=> b!1776335 (= res!800327 (not call!111207))))

(assert (= (and d!542647 c!289144) b!1776329))

(assert (= (and d!542647 (not c!289144)) b!1776330))

(assert (= (and d!542647 c!289145) b!1776332))

(assert (= (and d!542647 (not c!289145)) b!1776324))

(assert (= (and b!1776324 c!289146) b!1776323))

(assert (= (and b!1776324 (not c!289146)) b!1776334))

(assert (= (and b!1776334 (not res!800330)) b!1776328))

(assert (= (and b!1776328 res!800332) b!1776335))

(assert (= (and b!1776335 res!800327) b!1776325))

(assert (= (and b!1776325 res!800331) b!1776327))

(assert (= (and b!1776328 (not res!800325)) b!1776331))

(assert (= (and b!1776331 res!800329) b!1776333))

(assert (= (and b!1776333 (not res!800328)) b!1776326))

(assert (= (and b!1776326 (not res!800326)) b!1776322))

(assert (= (or b!1776332 b!1776333 b!1776335) bm!111202))

(declare-fun m!2197107 () Bool)

(assert (=> b!1776329 m!2197107))

(declare-fun m!2197109 () Bool)

(assert (=> bm!111202 m!2197109))

(assert (=> d!542647 m!2197109))

(declare-fun m!2197111 () Bool)

(assert (=> d!542647 m!2197111))

(assert (=> b!1776326 m!2196789))

(assert (=> b!1776326 m!2196789))

(declare-fun m!2197113 () Bool)

(assert (=> b!1776326 m!2197113))

(assert (=> b!1776322 m!2196793))

(assert (=> b!1776330 m!2196793))

(assert (=> b!1776330 m!2196793))

(declare-fun m!2197115 () Bool)

(assert (=> b!1776330 m!2197115))

(assert (=> b!1776330 m!2196789))

(assert (=> b!1776330 m!2197115))

(assert (=> b!1776330 m!2196789))

(declare-fun m!2197117 () Bool)

(assert (=> b!1776330 m!2197117))

(assert (=> b!1776325 m!2196789))

(assert (=> b!1776325 m!2196789))

(assert (=> b!1776325 m!2197113))

(assert (=> b!1776327 m!2196793))

(assert (=> b!1775552 d!542647))

(declare-fun d!542649 () Bool)

(declare-fun res!800333 () Bool)

(declare-fun e!1136739 () Bool)

(assert (=> d!542649 (=> (not res!800333) (not e!1136739))))

(assert (=> d!542649 (= res!800333 (validRegex!1954 (regex!3501 rule!422)))))

(assert (=> d!542649 (= (ruleValid!999 thiss!24550 rule!422) e!1136739)))

(declare-fun b!1776336 () Bool)

(declare-fun res!800334 () Bool)

(assert (=> b!1776336 (=> (not res!800334) (not e!1136739))))

(assert (=> b!1776336 (= res!800334 (not (nullable!1480 (regex!3501 rule!422))))))

(declare-fun b!1776337 () Bool)

(assert (=> b!1776337 (= e!1136739 (not (= (tag!3887 rule!422) (String!22288 ""))))))

(assert (= (and d!542649 res!800333) b!1776336))

(assert (= (and b!1776336 res!800334) b!1776337))

(assert (=> d!542649 m!2197111))

(assert (=> b!1776336 m!2197107))

(assert (=> b!1775552 d!542649))

(declare-fun d!542651 () Bool)

(assert (=> d!542651 (ruleValid!999 thiss!24550 rule!422)))

(declare-fun lt!688973 () Unit!33790)

(assert (=> d!542651 (= lt!688973 (choose!11088 thiss!24550 rule!422 rules!3447))))

(assert (=> d!542651 (contains!3533 rules!3447 rule!422)))

(assert (=> d!542651 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!522 thiss!24550 rule!422 rules!3447) lt!688973)))

(declare-fun bs!404945 () Bool)

(assert (= bs!404945 d!542651))

(assert (=> bs!404945 m!2196027))

(declare-fun m!2197119 () Bool)

(assert (=> bs!404945 m!2197119))

(assert (=> bs!404945 m!2196071))

(assert (=> b!1775552 d!542651))

(declare-fun d!542653 () Bool)

(assert (=> d!542653 (= (inv!25438 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))) (isBalanced!2033 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))))))

(declare-fun bs!404946 () Bool)

(assert (= bs!404946 d!542653))

(declare-fun m!2197121 () Bool)

(assert (=> bs!404946 m!2197121))

(assert (=> tb!107691 d!542653))

(declare-fun d!542655 () Bool)

(declare-fun c!289149 () Bool)

(assert (=> d!542655 (= c!289149 (isEmpty!12354 lt!688601))))

(declare-fun e!1136742 () Bool)

(assert (=> d!542655 (= (prefixMatch!712 lt!688576 lt!688601) e!1136742)))

(declare-fun b!1776342 () Bool)

(declare-fun lostCause!592 (Regex!4829) Bool)

(assert (=> b!1776342 (= e!1136742 (not (lostCause!592 lt!688576)))))

(declare-fun b!1776343 () Bool)

(assert (=> b!1776343 (= e!1136742 (prefixMatch!712 (derivativeStep!1249 lt!688576 (head!4138 lt!688601)) (tail!2657 lt!688601)))))

(assert (= (and d!542655 c!289149) b!1776342))

(assert (= (and d!542655 (not c!289149)) b!1776343))

(declare-fun m!2197123 () Bool)

(assert (=> d!542655 m!2197123))

(declare-fun m!2197125 () Bool)

(assert (=> b!1776342 m!2197125))

(assert (=> b!1776343 m!2197095))

(assert (=> b!1776343 m!2197095))

(declare-fun m!2197127 () Bool)

(assert (=> b!1776343 m!2197127))

(assert (=> b!1776343 m!2197089))

(assert (=> b!1776343 m!2197127))

(assert (=> b!1776343 m!2197089))

(declare-fun m!2197129 () Bool)

(assert (=> b!1776343 m!2197129))

(assert (=> b!1775574 d!542655))

(declare-fun b!1776346 () Bool)

(declare-fun res!800336 () Bool)

(declare-fun e!1136744 () Bool)

(assert (=> b!1776346 (=> (not res!800336) (not e!1136744))))

(declare-fun lt!688974 () List!19626)

(assert (=> b!1776346 (= res!800336 (= (size!15540 lt!688974) (+ (size!15540 lt!688584) (size!15540 (Cons!19556 (head!4138 suffix!1421) Nil!19556)))))))

(declare-fun b!1776344 () Bool)

(declare-fun e!1136743 () List!19626)

(assert (=> b!1776344 (= e!1136743 (Cons!19556 (head!4138 suffix!1421) Nil!19556))))

(declare-fun d!542657 () Bool)

(assert (=> d!542657 e!1136744))

(declare-fun res!800335 () Bool)

(assert (=> d!542657 (=> (not res!800335) (not e!1136744))))

(assert (=> d!542657 (= res!800335 (= (content!2839 lt!688974) ((_ map or) (content!2839 lt!688584) (content!2839 (Cons!19556 (head!4138 suffix!1421) Nil!19556)))))))

(assert (=> d!542657 (= lt!688974 e!1136743)))

(declare-fun c!289150 () Bool)

(assert (=> d!542657 (= c!289150 ((_ is Nil!19556) lt!688584))))

(assert (=> d!542657 (= (++!5325 lt!688584 (Cons!19556 (head!4138 suffix!1421) Nil!19556)) lt!688974)))

(declare-fun b!1776345 () Bool)

(assert (=> b!1776345 (= e!1136743 (Cons!19556 (h!24957 lt!688584) (++!5325 (t!165913 lt!688584) (Cons!19556 (head!4138 suffix!1421) Nil!19556))))))

(declare-fun b!1776347 () Bool)

(assert (=> b!1776347 (= e!1136744 (or (not (= (Cons!19556 (head!4138 suffix!1421) Nil!19556) Nil!19556)) (= lt!688974 lt!688584)))))

(assert (= (and d!542657 c!289150) b!1776344))

(assert (= (and d!542657 (not c!289150)) b!1776345))

(assert (= (and d!542657 res!800335) b!1776346))

(assert (= (and b!1776346 res!800336) b!1776347))

(declare-fun m!2197131 () Bool)

(assert (=> b!1776346 m!2197131))

(assert (=> b!1776346 m!2196095))

(declare-fun m!2197133 () Bool)

(assert (=> b!1776346 m!2197133))

(declare-fun m!2197135 () Bool)

(assert (=> d!542657 m!2197135))

(assert (=> d!542657 m!2196413))

(declare-fun m!2197137 () Bool)

(assert (=> d!542657 m!2197137))

(declare-fun m!2197139 () Bool)

(assert (=> b!1776345 m!2197139))

(assert (=> b!1775574 d!542657))

(declare-fun d!542659 () Bool)

(assert (=> d!542659 (= (head!4138 suffix!1421) (h!24957 suffix!1421))))

(assert (=> b!1775574 d!542659))

(declare-fun d!542661 () Bool)

(declare-fun lt!688977 () Unit!33790)

(declare-fun lemma!405 (List!19627 LexerInterface!3130 List!19627) Unit!33790)

(assert (=> d!542661 (= lt!688977 (lemma!405 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70558 () Int)

(declare-datatypes ((List!19633 0))(
  ( (Nil!19563) (Cons!19563 (h!24964 Regex!4829) (t!165996 List!19633)) )
))
(declare-fun generalisedUnion!413 (List!19633) Regex!4829)

(declare-fun map!4035 (List!19627 Int) List!19633)

(assert (=> d!542661 (= (rulesRegex!857 thiss!24550 rules!3447) (generalisedUnion!413 (map!4035 rules!3447 lambda!70558)))))

(declare-fun bs!404947 () Bool)

(assert (= bs!404947 d!542661))

(declare-fun m!2197141 () Bool)

(assert (=> bs!404947 m!2197141))

(declare-fun m!2197143 () Bool)

(assert (=> bs!404947 m!2197143))

(assert (=> bs!404947 m!2197143))

(declare-fun m!2197145 () Bool)

(assert (=> bs!404947 m!2197145))

(assert (=> b!1775574 d!542661))

(declare-fun d!542663 () Bool)

(declare-fun lt!688978 () Int)

(assert (=> d!542663 (= lt!688978 (size!15540 (list!7947 lt!688609)))))

(assert (=> d!542663 (= lt!688978 (size!15542 (c!289019 lt!688609)))))

(assert (=> d!542663 (= (size!15539 lt!688609) lt!688978)))

(declare-fun bs!404948 () Bool)

(assert (= bs!404948 d!542663))

(assert (=> bs!404948 m!2196133))

(assert (=> bs!404948 m!2196133))

(declare-fun m!2197147 () Bool)

(assert (=> bs!404948 m!2197147))

(declare-fun m!2197149 () Bool)

(assert (=> bs!404948 m!2197149))

(assert (=> b!1775553 d!542663))

(declare-fun b!1776348 () Bool)

(declare-fun e!1136745 () Bool)

(assert (=> b!1776348 (= e!1136745 (not (= (head!4138 lt!688584) (c!289018 lt!688576))))))

(declare-fun b!1776349 () Bool)

(declare-fun e!1136746 () Bool)

(declare-fun lt!688979 () Bool)

(assert (=> b!1776349 (= e!1136746 (not lt!688979))))

(declare-fun b!1776350 () Bool)

(declare-fun e!1136751 () Bool)

(assert (=> b!1776350 (= e!1136751 e!1136746)))

(declare-fun c!289154 () Bool)

(assert (=> b!1776350 (= c!289154 ((_ is EmptyLang!4829) lt!688576))))

(declare-fun bm!111203 () Bool)

(declare-fun call!111208 () Bool)

(assert (=> bm!111203 (= call!111208 (isEmpty!12354 lt!688584))))

(declare-fun b!1776352 () Bool)

(declare-fun res!800338 () Bool)

(assert (=> b!1776352 (=> res!800338 e!1136745)))

(assert (=> b!1776352 (= res!800338 (not (isEmpty!12354 (tail!2657 lt!688584))))))

(declare-fun b!1776353 () Bool)

(declare-fun e!1136750 () Bool)

(assert (=> b!1776353 (= e!1136750 (= (head!4138 lt!688584) (c!289018 lt!688576)))))

(declare-fun b!1776354 () Bool)

(declare-fun res!800337 () Bool)

(declare-fun e!1136749 () Bool)

(assert (=> b!1776354 (=> res!800337 e!1136749)))

(assert (=> b!1776354 (= res!800337 e!1136750)))

(declare-fun res!800344 () Bool)

(assert (=> b!1776354 (=> (not res!800344) (not e!1136750))))

(assert (=> b!1776354 (= res!800344 lt!688979)))

(declare-fun b!1776355 () Bool)

(declare-fun e!1136747 () Bool)

(assert (=> b!1776355 (= e!1136747 (nullable!1480 lt!688576))))

(declare-fun b!1776356 () Bool)

(assert (=> b!1776356 (= e!1136747 (matchR!2302 (derivativeStep!1249 lt!688576 (head!4138 lt!688584)) (tail!2657 lt!688584)))))

(declare-fun b!1776357 () Bool)

(declare-fun e!1136748 () Bool)

(assert (=> b!1776357 (= e!1136749 e!1136748)))

(declare-fun res!800341 () Bool)

(assert (=> b!1776357 (=> (not res!800341) (not e!1136748))))

(assert (=> b!1776357 (= res!800341 (not lt!688979))))

(declare-fun b!1776351 () Bool)

(declare-fun res!800343 () Bool)

(assert (=> b!1776351 (=> (not res!800343) (not e!1136750))))

(assert (=> b!1776351 (= res!800343 (isEmpty!12354 (tail!2657 lt!688584)))))

(declare-fun d!542665 () Bool)

(assert (=> d!542665 e!1136751))

(declare-fun c!289153 () Bool)

(assert (=> d!542665 (= c!289153 ((_ is EmptyExpr!4829) lt!688576))))

(assert (=> d!542665 (= lt!688979 e!1136747)))

(declare-fun c!289152 () Bool)

(assert (=> d!542665 (= c!289152 (isEmpty!12354 lt!688584))))

(assert (=> d!542665 (validRegex!1954 lt!688576)))

(assert (=> d!542665 (= (matchR!2302 lt!688576 lt!688584) lt!688979)))

(declare-fun b!1776358 () Bool)

(assert (=> b!1776358 (= e!1136751 (= lt!688979 call!111208))))

(declare-fun b!1776359 () Bool)

(assert (=> b!1776359 (= e!1136748 e!1136745)))

(declare-fun res!800340 () Bool)

(assert (=> b!1776359 (=> res!800340 e!1136745)))

(assert (=> b!1776359 (= res!800340 call!111208)))

(declare-fun b!1776360 () Bool)

(declare-fun res!800342 () Bool)

(assert (=> b!1776360 (=> res!800342 e!1136749)))

(assert (=> b!1776360 (= res!800342 (not ((_ is ElementMatch!4829) lt!688576)))))

(assert (=> b!1776360 (= e!1136746 e!1136749)))

(declare-fun b!1776361 () Bool)

(declare-fun res!800339 () Bool)

(assert (=> b!1776361 (=> (not res!800339) (not e!1136750))))

(assert (=> b!1776361 (= res!800339 (not call!111208))))

(assert (= (and d!542665 c!289152) b!1776355))

(assert (= (and d!542665 (not c!289152)) b!1776356))

(assert (= (and d!542665 c!289153) b!1776358))

(assert (= (and d!542665 (not c!289153)) b!1776350))

(assert (= (and b!1776350 c!289154) b!1776349))

(assert (= (and b!1776350 (not c!289154)) b!1776360))

(assert (= (and b!1776360 (not res!800342)) b!1776354))

(assert (= (and b!1776354 res!800344) b!1776361))

(assert (= (and b!1776361 res!800339) b!1776351))

(assert (= (and b!1776351 res!800343) b!1776353))

(assert (= (and b!1776354 (not res!800337)) b!1776357))

(assert (= (and b!1776357 res!800341) b!1776359))

(assert (= (and b!1776359 (not res!800340)) b!1776352))

(assert (= (and b!1776352 (not res!800338)) b!1776348))

(assert (= (or b!1776358 b!1776359 b!1776361) bm!111203))

(assert (=> b!1776355 m!2197053))

(assert (=> bm!111203 m!2197109))

(assert (=> d!542665 m!2197109))

(assert (=> d!542665 m!2197057))

(assert (=> b!1776352 m!2196789))

(assert (=> b!1776352 m!2196789))

(assert (=> b!1776352 m!2197113))

(assert (=> b!1776348 m!2196793))

(assert (=> b!1776356 m!2196793))

(assert (=> b!1776356 m!2196793))

(declare-fun m!2197151 () Bool)

(assert (=> b!1776356 m!2197151))

(assert (=> b!1776356 m!2196789))

(assert (=> b!1776356 m!2197151))

(assert (=> b!1776356 m!2196789))

(declare-fun m!2197153 () Bool)

(assert (=> b!1776356 m!2197153))

(assert (=> b!1776351 m!2196789))

(assert (=> b!1776351 m!2196789))

(assert (=> b!1776351 m!2197113))

(assert (=> b!1776353 m!2196793))

(assert (=> b!1775553 d!542665))

(declare-fun d!542667 () Bool)

(assert (=> d!542667 (matchR!2302 (rulesRegex!857 thiss!24550 rules!3447) (list!7947 (charsOf!2150 token!523)))))

(declare-fun lt!688980 () Unit!33790)

(assert (=> d!542667 (= lt!688980 (choose!11092 thiss!24550 rules!3447 lt!688584 token!523 rule!422 Nil!19556))))

(assert (=> d!542667 (not (isEmpty!12355 rules!3447))))

(assert (=> d!542667 (= (lemmaMaxPrefixThenMatchesRulesRegex!208 thiss!24550 rules!3447 lt!688584 token!523 rule!422 Nil!19556) lt!688980)))

(declare-fun bs!404949 () Bool)

(assert (= bs!404949 d!542667))

(assert (=> bs!404949 m!2196135))

(declare-fun m!2197155 () Bool)

(assert (=> bs!404949 m!2197155))

(assert (=> bs!404949 m!2196111))

(declare-fun m!2197157 () Bool)

(assert (=> bs!404949 m!2197157))

(declare-fun m!2197159 () Bool)

(assert (=> bs!404949 m!2197159))

(assert (=> bs!404949 m!2196135))

(assert (=> bs!404949 m!2197157))

(assert (=> bs!404949 m!2195973))

(assert (=> bs!404949 m!2196111))

(assert (=> b!1775553 d!542667))

(declare-fun b!1776366 () Bool)

(declare-fun e!1136754 () Bool)

(declare-fun tp!503250 () Bool)

(assert (=> b!1776366 (= e!1136754 (and tp_is_empty!7901 tp!503250))))

(assert (=> b!1775560 (= tp!503186 e!1136754)))

(assert (= (and b!1775560 ((_ is Cons!19556) (t!165913 suffix!1421))) b!1776366))

(declare-fun b!1776379 () Bool)

(declare-fun e!1136757 () Bool)

(declare-fun tp!503265 () Bool)

(assert (=> b!1776379 (= e!1136757 tp!503265)))

(assert (=> b!1775561 (= tp!503176 e!1136757)))

(declare-fun b!1776378 () Bool)

(declare-fun tp!503264 () Bool)

(declare-fun tp!503261 () Bool)

(assert (=> b!1776378 (= e!1136757 (and tp!503264 tp!503261))))

(declare-fun b!1776380 () Bool)

(declare-fun tp!503262 () Bool)

(declare-fun tp!503263 () Bool)

(assert (=> b!1776380 (= e!1136757 (and tp!503262 tp!503263))))

(declare-fun b!1776377 () Bool)

(assert (=> b!1776377 (= e!1136757 tp_is_empty!7901)))

(assert (= (and b!1775561 ((_ is ElementMatch!4829) (regex!3501 (rule!5557 token!523)))) b!1776377))

(assert (= (and b!1775561 ((_ is Concat!8421) (regex!3501 (rule!5557 token!523)))) b!1776378))

(assert (= (and b!1775561 ((_ is Star!4829) (regex!3501 (rule!5557 token!523)))) b!1776379))

(assert (= (and b!1775561 ((_ is Union!4829) (regex!3501 (rule!5557 token!523)))) b!1776380))

(declare-fun b!1776389 () Bool)

(declare-fun tp!503272 () Bool)

(declare-fun tp!503274 () Bool)

(declare-fun e!1136763 () Bool)

(assert (=> b!1776389 (= e!1136763 (and (inv!25437 (left!15669 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))) tp!503272 (inv!25437 (right!15999 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))) tp!503274))))

(declare-fun b!1776391 () Bool)

(declare-fun e!1136762 () Bool)

(declare-fun tp!503273 () Bool)

(assert (=> b!1776391 (= e!1136762 tp!503273)))

(declare-fun b!1776390 () Bool)

(declare-fun inv!25444 (IArray!13015) Bool)

(assert (=> b!1776390 (= e!1136763 (and (inv!25444 (xs!9381 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))) e!1136762))))

(assert (=> b!1775595 (= tp!503189 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591)))) e!1136763))))

(assert (= (and b!1775595 ((_ is Node!6505) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))) b!1776389))

(assert (= b!1776390 b!1776391))

(assert (= (and b!1775595 ((_ is Leaf!9476) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (dynLambda!9554 (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) lt!688591))))) b!1776390))

(declare-fun m!2197161 () Bool)

(assert (=> b!1776389 m!2197161))

(declare-fun m!2197163 () Bool)

(assert (=> b!1776389 m!2197163))

(declare-fun m!2197165 () Bool)

(assert (=> b!1776390 m!2197165))

(assert (=> b!1775595 m!2195963))

(declare-fun b!1776394 () Bool)

(declare-fun e!1136764 () Bool)

(declare-fun tp!503279 () Bool)

(assert (=> b!1776394 (= e!1136764 tp!503279)))

(assert (=> b!1775557 (= tp!503180 e!1136764)))

(declare-fun b!1776393 () Bool)

(declare-fun tp!503278 () Bool)

(declare-fun tp!503275 () Bool)

(assert (=> b!1776393 (= e!1136764 (and tp!503278 tp!503275))))

(declare-fun b!1776395 () Bool)

(declare-fun tp!503276 () Bool)

(declare-fun tp!503277 () Bool)

(assert (=> b!1776395 (= e!1136764 (and tp!503276 tp!503277))))

(declare-fun b!1776392 () Bool)

(assert (=> b!1776392 (= e!1136764 tp_is_empty!7901)))

(assert (= (and b!1775557 ((_ is ElementMatch!4829) (regex!3501 (h!24958 rules!3447)))) b!1776392))

(assert (= (and b!1775557 ((_ is Concat!8421) (regex!3501 (h!24958 rules!3447)))) b!1776393))

(assert (= (and b!1775557 ((_ is Star!4829) (regex!3501 (h!24958 rules!3447)))) b!1776394))

(assert (= (and b!1775557 ((_ is Union!4829) (regex!3501 (h!24958 rules!3447)))) b!1776395))

(declare-fun tp!503280 () Bool)

(declare-fun e!1136766 () Bool)

(declare-fun b!1776396 () Bool)

(declare-fun tp!503282 () Bool)

(assert (=> b!1776396 (= e!1136766 (and (inv!25437 (left!15669 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))) tp!503280 (inv!25437 (right!15999 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))) tp!503282))))

(declare-fun b!1776398 () Bool)

(declare-fun e!1136765 () Bool)

(declare-fun tp!503281 () Bool)

(assert (=> b!1776398 (= e!1136765 tp!503281)))

(declare-fun b!1776397 () Bool)

(assert (=> b!1776397 (= e!1136766 (and (inv!25444 (xs!9381 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))) e!1136765))))

(assert (=> b!1775598 (= tp!503190 (and (inv!25437 (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600))))) e!1136766))))

(assert (= (and b!1775598 ((_ is Node!6505) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))) b!1776396))

(assert (= b!1776397 b!1776398))

(assert (= (and b!1775598 ((_ is Leaf!9476) (c!289019 (dynLambda!9553 (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))) (value!109451 (_1!10979 lt!688600)))))) b!1776397))

(declare-fun m!2197167 () Bool)

(assert (=> b!1776396 m!2197167))

(declare-fun m!2197169 () Bool)

(assert (=> b!1776396 m!2197169))

(declare-fun m!2197171 () Bool)

(assert (=> b!1776397 m!2197171))

(assert (=> b!1775598 m!2195969))

(declare-fun b!1776401 () Bool)

(declare-fun e!1136767 () Bool)

(declare-fun tp!503287 () Bool)

(assert (=> b!1776401 (= e!1136767 tp!503287)))

(assert (=> b!1775547 (= tp!503182 e!1136767)))

(declare-fun b!1776400 () Bool)

(declare-fun tp!503286 () Bool)

(declare-fun tp!503283 () Bool)

(assert (=> b!1776400 (= e!1136767 (and tp!503286 tp!503283))))

(declare-fun b!1776402 () Bool)

(declare-fun tp!503284 () Bool)

(declare-fun tp!503285 () Bool)

(assert (=> b!1776402 (= e!1136767 (and tp!503284 tp!503285))))

(declare-fun b!1776399 () Bool)

(assert (=> b!1776399 (= e!1136767 tp_is_empty!7901)))

(assert (= (and b!1775547 ((_ is ElementMatch!4829) (regex!3501 rule!422))) b!1776399))

(assert (= (and b!1775547 ((_ is Concat!8421) (regex!3501 rule!422))) b!1776400))

(assert (= (and b!1775547 ((_ is Star!4829) (regex!3501 rule!422))) b!1776401))

(assert (= (and b!1775547 ((_ is Union!4829) (regex!3501 rule!422))) b!1776402))

(declare-fun b!1776403 () Bool)

(declare-fun e!1136768 () Bool)

(declare-fun tp!503288 () Bool)

(assert (=> b!1776403 (= e!1136768 (and tp_is_empty!7901 tp!503288))))

(assert (=> b!1775570 (= tp!503183 e!1136768)))

(assert (= (and b!1775570 ((_ is Cons!19556) (originalCharacters!4315 token!523))) b!1776403))

(declare-fun b!1776414 () Bool)

(declare-fun b_free!49239 () Bool)

(declare-fun b_next!49943 () Bool)

(assert (=> b!1776414 (= b_free!49239 (not b_next!49943))))

(declare-fun tb!107759 () Bool)

(declare-fun t!165979 () Bool)

(assert (=> (and b!1776414 (= (toValue!5028 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165979) tb!107759))

(declare-fun result!129630 () Bool)

(assert (= result!129630 result!129558))

(assert (=> d!542601 t!165979))

(declare-fun t!165981 () Bool)

(declare-fun tb!107761 () Bool)

(assert (=> (and b!1776414 (= (toValue!5028 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165981) tb!107761))

(declare-fun result!129632 () Bool)

(assert (= result!129632 result!129538))

(assert (=> d!542579 t!165981))

(declare-fun t!165983 () Bool)

(declare-fun tb!107763 () Bool)

(assert (=> (and b!1776414 (= (toValue!5028 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165983) tb!107763))

(declare-fun result!129634 () Bool)

(assert (= result!129634 result!129610))

(assert (=> d!542579 t!165983))

(assert (=> d!542373 t!165979))

(assert (=> d!542581 t!165981))

(assert (=> d!542615 t!165981))

(assert (=> b!1775558 t!165981))

(declare-fun b_and!135685 () Bool)

(declare-fun tp!503300 () Bool)

(assert (=> b!1776414 (= tp!503300 (and (=> t!165981 result!129632) (=> t!165983 result!129634) (=> t!165979 result!129630) b_and!135685))))

(declare-fun b_free!49241 () Bool)

(declare-fun b_next!49945 () Bool)

(assert (=> b!1776414 (= b_free!49241 (not b_next!49945))))

(declare-fun tb!107765 () Bool)

(declare-fun t!165985 () Bool)

(assert (=> (and b!1776414 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165985) tb!107765))

(declare-fun result!129636 () Bool)

(assert (= result!129636 result!129530))

(assert (=> b!1775558 t!165985))

(assert (=> d!542615 t!165985))

(declare-fun t!165987 () Bool)

(declare-fun tb!107767 () Bool)

(assert (=> (and b!1776414 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165987) tb!107767))

(declare-fun result!129638 () Bool)

(assert (= result!129638 result!129616))

(assert (=> d!542601 t!165987))

(declare-fun tb!107769 () Bool)

(declare-fun t!165989 () Bool)

(assert (=> (and b!1776414 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600))))) t!165989) tb!107769))

(declare-fun result!129640 () Bool)

(assert (= result!129640 result!129546))

(assert (=> d!542387 t!165989))

(declare-fun t!165991 () Bool)

(declare-fun tb!107771 () Bool)

(assert (=> (and b!1776414 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 token!523)))) t!165991) tb!107771))

(declare-fun result!129642 () Bool)

(assert (= result!129642 result!129564))

(assert (=> d!542403 t!165991))

(assert (=> b!1775566 t!165989))

(assert (=> b!1776240 t!165991))

(declare-fun b_and!135687 () Bool)

(declare-fun tp!503298 () Bool)

(assert (=> b!1776414 (= tp!503298 (and (=> t!165989 result!129640) (=> t!165985 result!129636) (=> t!165987 result!129638) (=> t!165991 result!129642) b_and!135687))))

(declare-fun e!1136780 () Bool)

(assert (=> b!1776414 (= e!1136780 (and tp!503300 tp!503298))))

(declare-fun tp!503297 () Bool)

(declare-fun b!1776413 () Bool)

(declare-fun e!1136777 () Bool)

(assert (=> b!1776413 (= e!1136777 (and tp!503297 (inv!25430 (tag!3887 (h!24958 (t!165914 rules!3447)))) (inv!25435 (transformation!3501 (h!24958 (t!165914 rules!3447)))) e!1136780))))

(declare-fun b!1776412 () Bool)

(declare-fun e!1136779 () Bool)

(declare-fun tp!503299 () Bool)

(assert (=> b!1776412 (= e!1136779 (and e!1136777 tp!503299))))

(assert (=> b!1775554 (= tp!503181 e!1136779)))

(assert (= b!1776413 b!1776414))

(assert (= b!1776412 b!1776413))

(assert (= (and b!1775554 ((_ is Cons!19557) (t!165914 rules!3447))) b!1776412))

(declare-fun m!2197173 () Bool)

(assert (=> b!1776413 m!2197173))

(declare-fun m!2197175 () Bool)

(assert (=> b!1776413 m!2197175))

(declare-fun b_lambda!58007 () Bool)

(assert (= b_lambda!57991 (or (and b!1775559 b_free!49225 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) (and b!1775578 b_free!49229) (and b!1775555 b_free!49233 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) (and b!1776414 b_free!49241 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) b_lambda!58007)))

(declare-fun b_lambda!58009 () Bool)

(assert (= b_lambda!57951 (or (and b!1775559 b_free!49225 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775578 b_free!49229 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775555 b_free!49233 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1776414 b_free!49241 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) b_lambda!58009)))

(declare-fun b_lambda!58011 () Bool)

(assert (= b_lambda!57947 (or (and b!1775559 b_free!49225 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775578 b_free!49229 (= (toChars!4887 (transformation!3501 (rule!5557 token!523))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775555 b_free!49233 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1776414 b_free!49241 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) b_lambda!58011)))

(declare-fun b_lambda!58013 () Bool)

(assert (= b_lambda!57959 (or (and b!1775559 b_free!49225 (= (toChars!4887 (transformation!3501 (h!24958 rules!3447))) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) (and b!1775578 b_free!49229) (and b!1775555 b_free!49233 (= (toChars!4887 (transformation!3501 rule!422)) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) (and b!1776414 b_free!49241 (= (toChars!4887 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toChars!4887 (transformation!3501 (rule!5557 token!523))))) b_lambda!58013)))

(declare-fun b_lambda!58015 () Bool)

(assert (= b_lambda!57949 (or (and b!1775559 b_free!49223 (= (toValue!5028 (transformation!3501 (h!24958 rules!3447))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775578 b_free!49227 (= (toValue!5028 (transformation!3501 (rule!5557 token!523))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1775555 b_free!49231 (= (toValue!5028 (transformation!3501 rule!422)) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) (and b!1776414 b_free!49239 (= (toValue!5028 (transformation!3501 (h!24958 (t!165914 rules!3447)))) (toValue!5028 (transformation!3501 (rule!5557 (_1!10979 lt!688600)))))) b_lambda!58015)))

(check-sat (not d!542381) (not b!1776279) (not b!1776413) (not d!542579) (not b!1776396) (not b!1776073) (not b!1775653) (not b!1776302) (not tb!107747) (not d!542645) (not b!1775719) (not b!1776348) (not b_lambda!57957) (not b!1776224) (not b!1776380) (not bm!111202) (not b!1775862) (not b!1776342) (not b!1776327) b_and!135687 (not b!1776259) (not b!1776271) (not b!1775791) (not d!542567) b_and!135673 (not bm!111191) (not b!1776400) (not b!1776316) (not bm!111200) (not d!542367) (not b!1775722) (not d!542617) (not b!1776270) (not d!542405) (not d!542653) (not d!542365) (not d!542401) (not b_next!49937) (not d!542397) (not b!1776082) (not d!542635) (not b!1775820) (not d!542383) (not b_lambda!58015) (not b!1776330) (not tb!107709) (not b!1776313) (not b_lambda!58011) (not d!542507) (not d!542385) (not b_lambda!57955) (not d!542587) (not d!542585) (not b!1775857) (not b!1775812) (not b!1776240) (not b!1775598) (not b!1775773) (not b!1775851) (not b_next!49927) (not b!1776311) (not b!1775727) (not b!1775860) b_and!135679 (not b!1776390) (not d!542355) (not b!1776301) (not b!1775855) (not b!1775655) b_and!135677 (not d!542341) (not d!542631) (not d!542583) (not d!542375) (not d!542359) (not d!542597) (not b!1775772) b_and!135681 (not b!1775814) (not b!1776166) (not b!1776258) (not b!1775859) (not d!542569) (not b!1776172) (not b!1776343) (not b!1776308) (not b!1775856) (not b_next!49943) (not d!542575) (not d!542625) (not tb!107703) (not b!1776401) (not b!1776299) (not b!1776398) (not b!1775818) (not b!1776412) (not b_next!49931) (not b!1776169) (not d!542619) (not b_lambda!57999) (not b!1775672) (not b!1776403) (not b!1775816) (not b!1775726) (not b_lambda!58009) (not b!1776379) (not d!542665) (not b!1776083) (not b!1776366) (not b!1776265) (not b!1776378) (not b!1776288) (not d!542591) (not bm!111201) (not b!1776266) (not b_lambda!58001) (not b_next!49929) (not d!542403) (not b!1776269) (not b!1776289) (not b!1776356) (not b!1775854) (not b_lambda!58013) (not b!1776322) (not d!542599) (not d!542613) (not b!1776391) (not d!542605) (not b!1775815) (not b!1776353) (not d!542633) (not d!542641) (not d!542515) (not b!1775723) (not b!1775821) (not b!1775839) (not b!1776282) (not b!1775853) (not d!542663) b_and!135685 (not b!1775770) tp_is_empty!7901 (not b!1776300) (not b!1775724) (not b!1776312) (not b!1775595) (not b!1776174) (not b!1776277) (not b_next!49935) (not b!1776134) b_and!135675 (not b!1775789) (not b!1776315) (not b!1776336) (not d!542601) (not b!1775768) (not d!542651) (not b_lambda!57997) (not b_lambda!57993) (not b!1776346) (not d!542399) (not b!1775813) (not d!542649) (not bm!111190) (not b!1776267) (not d!542647) (not b!1775634) (not b!1775733) (not b!1776355) (not b!1775817) (not b!1775852) (not d!542501) (not d!542353) (not b_lambda!58003) (not b!1776075) (not b!1776352) (not d!542643) (not b_next!49945) (not b!1776133) (not d!542593) (not b!1776254) (not b!1776084) (not b!1776249) (not bm!111187) (not b!1776351) (not b!1775769) (not b!1776291) (not b_lambda!58005) (not d!542657) (not b!1776173) (not b!1776272) (not b!1776329) (not tb!107753) (not b!1776306) (not b!1775725) (not d!542637) (not b!1776305) (not b!1776281) (not d!542573) (not b!1776397) (not d!542577) b_and!135683 (not b_lambda!57995) (not b!1776394) (not b!1776196) (not b!1776292) (not b!1776402) (not d!542387) (not d!542623) (not b!1775840) (not b!1776389) (not b!1775790) (not b!1776074) (not b!1775665) (not d!542655) (not b!1776326) (not b!1776287) (not b!1776257) (not b!1775720) (not b!1776197) (not b!1775765) (not b!1776284) (not b_lambda!58007) (not d!542529) (not d!542571) (not b!1776345) (not b!1775736) (not d!542411) (not d!542615) (not b!1776393) (not d!542661) (not b!1776307) (not b_next!49933) (not b!1776164) (not b!1776325) (not b!1775858) (not bm!111203) (not d!542409) (not b!1776395) (not d!542667) (not b!1776241))
(check-sat (not b_next!49937) b_and!135677 b_and!135681 (not b_next!49943) (not b_next!49931) (not b_next!49929) b_and!135685 (not b_next!49945) b_and!135683 (not b_next!49933) b_and!135687 b_and!135673 (not b_next!49927) b_and!135679 b_and!135675 (not b_next!49935))
