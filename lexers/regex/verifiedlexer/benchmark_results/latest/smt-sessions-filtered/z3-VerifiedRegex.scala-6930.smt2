; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366224 () Bool)

(assert start!366224)

(declare-fun b!3910275 () Bool)

(declare-fun b_free!106013 () Bool)

(declare-fun b_next!106717 () Bool)

(assert (=> b!3910275 (= b_free!106013 (not b_next!106717))))

(declare-fun tp!1190228 () Bool)

(declare-fun b_and!297347 () Bool)

(assert (=> b!3910275 (= tp!1190228 b_and!297347)))

(declare-fun b_free!106015 () Bool)

(declare-fun b_next!106719 () Bool)

(assert (=> b!3910275 (= b_free!106015 (not b_next!106719))))

(declare-fun tp!1190224 () Bool)

(declare-fun b_and!297349 () Bool)

(assert (=> b!3910275 (= tp!1190224 b_and!297349)))

(declare-fun b!3910271 () Bool)

(declare-fun b_free!106017 () Bool)

(declare-fun b_next!106721 () Bool)

(assert (=> b!3910271 (= b_free!106017 (not b_next!106721))))

(declare-fun tp!1190212 () Bool)

(declare-fun b_and!297351 () Bool)

(assert (=> b!3910271 (= tp!1190212 b_and!297351)))

(declare-fun b_free!106019 () Bool)

(declare-fun b_next!106723 () Bool)

(assert (=> b!3910271 (= b_free!106019 (not b_next!106723))))

(declare-fun tp!1190214 () Bool)

(declare-fun b_and!297353 () Bool)

(assert (=> b!3910271 (= tp!1190214 b_and!297353)))

(declare-fun b!3910286 () Bool)

(declare-fun b_free!106021 () Bool)

(declare-fun b_next!106725 () Bool)

(assert (=> b!3910286 (= b_free!106021 (not b_next!106725))))

(declare-fun tp!1190223 () Bool)

(declare-fun b_and!297355 () Bool)

(assert (=> b!3910286 (= tp!1190223 b_and!297355)))

(declare-fun b_free!106023 () Bool)

(declare-fun b_next!106727 () Bool)

(assert (=> b!3910286 (= b_free!106023 (not b_next!106727))))

(declare-fun tp!1190213 () Bool)

(declare-fun b_and!297357 () Bool)

(assert (=> b!3910286 (= tp!1190213 b_and!297357)))

(declare-fun e!2417476 () Bool)

(declare-datatypes ((List!41557 0))(
  ( (Nil!41433) (Cons!41433 (h!46853 (_ BitVec 16)) (t!322840 List!41557)) )
))
(declare-datatypes ((TokenValue!6678 0))(
  ( (FloatLiteralValue!13356 (text!47191 List!41557)) (TokenValueExt!6677 (__x!25573 Int)) (Broken!33390 (value!204376 List!41557)) (Object!6801) (End!6678) (Def!6678) (Underscore!6678) (Match!6678) (Else!6678) (Error!6678) (Case!6678) (If!6678) (Extends!6678) (Abstract!6678) (Class!6678) (Val!6678) (DelimiterValue!13356 (del!6738 List!41557)) (KeywordValue!6684 (value!204377 List!41557)) (CommentValue!13356 (value!204378 List!41557)) (WhitespaceValue!13356 (value!204379 List!41557)) (IndentationValue!6678 (value!204380 List!41557)) (String!47107) (Int32!6678) (Broken!33391 (value!204381 List!41557)) (Boolean!6679) (Unit!59578) (OperatorValue!6681 (op!6738 List!41557)) (IdentifierValue!13356 (value!204382 List!41557)) (IdentifierValue!13357 (value!204383 List!41557)) (WhitespaceValue!13357 (value!204384 List!41557)) (True!13356) (False!13356) (Broken!33392 (value!204385 List!41557)) (Broken!33393 (value!204386 List!41557)) (True!13357) (RightBrace!6678) (RightBracket!6678) (Colon!6678) (Null!6678) (Comma!6678) (LeftBracket!6678) (False!13357) (LeftBrace!6678) (ImaginaryLiteralValue!6678 (text!47192 List!41557)) (StringLiteralValue!20034 (value!204387 List!41557)) (EOFValue!6678 (value!204388 List!41557)) (IdentValue!6678 (value!204389 List!41557)) (DelimiterValue!13357 (value!204390 List!41557)) (DedentValue!6678 (value!204391 List!41557)) (NewLineValue!6678 (value!204392 List!41557)) (IntegerValue!20034 (value!204393 (_ BitVec 32)) (text!47193 List!41557)) (IntegerValue!20035 (value!204394 Int) (text!47194 List!41557)) (Times!6678) (Or!6678) (Equal!6678) (Minus!6678) (Broken!33394 (value!204395 List!41557)) (And!6678) (Div!6678) (LessEqual!6678) (Mod!6678) (Concat!18031) (Not!6678) (Plus!6678) (SpaceValue!6678 (value!204396 List!41557)) (IntegerValue!20036 (value!204397 Int) (text!47195 List!41557)) (StringLiteralValue!20035 (text!47196 List!41557)) (FloatLiteralValue!13357 (text!47197 List!41557)) (BytesLiteralValue!6678 (value!204398 List!41557)) (CommentValue!13357 (value!204399 List!41557)) (StringLiteralValue!20036 (value!204400 List!41557)) (ErrorTokenValue!6678 (msg!6739 List!41557)) )
))
(declare-datatypes ((C!22892 0))(
  ( (C!22893 (val!13540 Int)) )
))
(declare-datatypes ((Regex!11353 0))(
  ( (ElementMatch!11353 (c!679716 C!22892)) (Concat!18032 (regOne!23218 Regex!11353) (regTwo!23218 Regex!11353)) (EmptyExpr!11353) (Star!11353 (reg!11682 Regex!11353)) (EmptyLang!11353) (Union!11353 (regOne!23219 Regex!11353) (regTwo!23219 Regex!11353)) )
))
(declare-datatypes ((String!47108 0))(
  ( (String!47109 (value!204401 String)) )
))
(declare-datatypes ((List!41558 0))(
  ( (Nil!41434) (Cons!41434 (h!46854 C!22892) (t!322841 List!41558)) )
))
(declare-datatypes ((IArray!25323 0))(
  ( (IArray!25324 (innerList!12719 List!41558)) )
))
(declare-datatypes ((Conc!12659 0))(
  ( (Node!12659 (left!31725 Conc!12659) (right!32055 Conc!12659) (csize!25548 Int) (cheight!12870 Int)) (Leaf!19590 (xs!15965 IArray!25323) (csize!25549 Int)) (Empty!12659) )
))
(declare-datatypes ((BalanceConc!24912 0))(
  ( (BalanceConc!24913 (c!679717 Conc!12659)) )
))
(declare-datatypes ((TokenValueInjection!12784 0))(
  ( (TokenValueInjection!12785 (toValue!8892 Int) (toChars!8751 Int)) )
))
(declare-datatypes ((Rule!12696 0))(
  ( (Rule!12697 (regex!6448 Regex!11353) (tag!7308 String!47108) (isSeparator!6448 Bool) (transformation!6448 TokenValueInjection!12784)) )
))
(declare-datatypes ((Token!12034 0))(
  ( (Token!12035 (value!204402 TokenValue!6678) (rule!9362 Rule!12696) (size!31109 Int) (originalCharacters!7048 List!41558)) )
))
(declare-datatypes ((List!41559 0))(
  ( (Nil!41435) (Cons!41435 (h!46855 Token!12034) (t!322842 List!41559)) )
))
(declare-fun suffixTokens!72 () List!41559)

(declare-fun e!2417468 () Bool)

(declare-fun b!3910265 () Bool)

(declare-fun tp!1190222 () Bool)

(declare-fun inv!21 (TokenValue!6678) Bool)

(assert (=> b!3910265 (= e!2417476 (and (inv!21 (value!204402 (h!46855 suffixTokens!72))) e!2417468 tp!1190222))))

(declare-fun b!3910266 () Bool)

(declare-fun e!2417478 () Bool)

(declare-fun tp_is_empty!19677 () Bool)

(declare-fun tp!1190215 () Bool)

(assert (=> b!3910266 (= e!2417478 (and tp_is_empty!19677 tp!1190215))))

(declare-fun b!3910267 () Bool)

(declare-fun res!1581547 () Bool)

(declare-fun e!2417481 () Bool)

(assert (=> b!3910267 (=> (not res!1581547) (not e!2417481))))

(declare-fun suffixResult!91 () List!41558)

(declare-datatypes ((LexerInterface!6037 0))(
  ( (LexerInterfaceExt!6034 (__x!25574 Int)) (Lexer!6035) )
))
(declare-fun thiss!20629 () LexerInterface!6037)

(declare-fun suffix!1176 () List!41558)

(declare-datatypes ((List!41560 0))(
  ( (Nil!41436) (Cons!41436 (h!46856 Rule!12696) (t!322843 List!41560)) )
))
(declare-fun rules!2768 () List!41560)

(declare-datatypes ((tuple2!40678 0))(
  ( (tuple2!40679 (_1!23473 List!41559) (_2!23473 List!41558)) )
))
(declare-fun lexList!1805 (LexerInterface!6037 List!41560 List!41558) tuple2!40678)

(assert (=> b!3910267 (= res!1581547 (= (lexList!1805 thiss!20629 rules!2768 suffix!1176) (tuple2!40679 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3910268 () Bool)

(declare-fun e!2417482 () Bool)

(declare-fun e!2417460 () Bool)

(assert (=> b!3910268 (= e!2417482 (not e!2417460))))

(declare-fun res!1581554 () Bool)

(assert (=> b!3910268 (=> res!1581554 e!2417460)))

(declare-fun lt!1362100 () List!41558)

(declare-fun lt!1362106 () List!41558)

(assert (=> b!3910268 (= res!1581554 (not (= lt!1362100 lt!1362106)))))

(declare-fun lt!1362103 () tuple2!40678)

(declare-datatypes ((tuple2!40680 0))(
  ( (tuple2!40681 (_1!23474 Token!12034) (_2!23474 List!41558)) )
))
(declare-datatypes ((Option!8868 0))(
  ( (None!8867) (Some!8867 (v!39189 tuple2!40680)) )
))
(declare-fun lt!1362109 () Option!8868)

(assert (=> b!3910268 (= lt!1362103 (lexList!1805 thiss!20629 rules!2768 (_2!23474 (v!39189 lt!1362109))))))

(declare-fun lt!1362112 () List!41558)

(declare-fun lt!1362101 () TokenValue!6678)

(declare-fun lt!1362108 () Int)

(declare-fun lt!1362113 () List!41558)

(assert (=> b!3910268 (and (= (size!31109 (_1!23474 (v!39189 lt!1362109))) lt!1362108) (= (originalCharacters!7048 (_1!23474 (v!39189 lt!1362109))) lt!1362112) (= (v!39189 lt!1362109) (tuple2!40681 (Token!12035 lt!1362101 (rule!9362 (_1!23474 (v!39189 lt!1362109))) lt!1362108 lt!1362112) lt!1362113)))))

(declare-fun size!31110 (List!41558) Int)

(assert (=> b!3910268 (= lt!1362108 (size!31110 lt!1362112))))

(declare-fun e!2417483 () Bool)

(assert (=> b!3910268 e!2417483))

(declare-fun res!1581542 () Bool)

(assert (=> b!3910268 (=> (not res!1581542) (not e!2417483))))

(assert (=> b!3910268 (= res!1581542 (= (value!204402 (_1!23474 (v!39189 lt!1362109))) lt!1362101))))

(declare-fun apply!9687 (TokenValueInjection!12784 BalanceConc!24912) TokenValue!6678)

(declare-fun seqFromList!4715 (List!41558) BalanceConc!24912)

(assert (=> b!3910268 (= lt!1362101 (apply!9687 (transformation!6448 (rule!9362 (_1!23474 (v!39189 lt!1362109)))) (seqFromList!4715 lt!1362112)))))

(assert (=> b!3910268 (= (_2!23474 (v!39189 lt!1362109)) lt!1362113)))

(declare-datatypes ((Unit!59579 0))(
  ( (Unit!59580) )
))
(declare-fun lt!1362110 () Unit!59579)

(declare-fun lemmaSamePrefixThenSameSuffix!1764 (List!41558 List!41558 List!41558 List!41558 List!41558) Unit!59579)

(assert (=> b!3910268 (= lt!1362110 (lemmaSamePrefixThenSameSuffix!1764 lt!1362112 (_2!23474 (v!39189 lt!1362109)) lt!1362112 lt!1362113 lt!1362106))))

(declare-fun getSuffix!1998 (List!41558 List!41558) List!41558)

(assert (=> b!3910268 (= lt!1362113 (getSuffix!1998 lt!1362106 lt!1362112))))

(declare-fun isPrefix!3543 (List!41558 List!41558) Bool)

(assert (=> b!3910268 (isPrefix!3543 lt!1362112 lt!1362100)))

(declare-fun ++!10653 (List!41558 List!41558) List!41558)

(assert (=> b!3910268 (= lt!1362100 (++!10653 lt!1362112 (_2!23474 (v!39189 lt!1362109))))))

(declare-fun lt!1362102 () Unit!59579)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2406 (List!41558 List!41558) Unit!59579)

(assert (=> b!3910268 (= lt!1362102 (lemmaConcatTwoListThenFirstIsPrefix!2406 lt!1362112 (_2!23474 (v!39189 lt!1362109))))))

(declare-fun list!15403 (BalanceConc!24912) List!41558)

(declare-fun charsOf!4272 (Token!12034) BalanceConc!24912)

(assert (=> b!3910268 (= lt!1362112 (list!15403 (charsOf!4272 (_1!23474 (v!39189 lt!1362109)))))))

(declare-fun ruleValid!2396 (LexerInterface!6037 Rule!12696) Bool)

(assert (=> b!3910268 (ruleValid!2396 thiss!20629 (rule!9362 (_1!23474 (v!39189 lt!1362109))))))

(declare-fun lt!1362099 () Unit!59579)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1476 (LexerInterface!6037 Rule!12696 List!41560) Unit!59579)

(assert (=> b!3910268 (= lt!1362099 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1476 thiss!20629 (rule!9362 (_1!23474 (v!39189 lt!1362109))) rules!2768))))

(declare-fun lt!1362098 () Unit!59579)

(declare-fun lemmaCharactersSize!1105 (Token!12034) Unit!59579)

(assert (=> b!3910268 (= lt!1362098 (lemmaCharactersSize!1105 (_1!23474 (v!39189 lt!1362109))))))

(declare-fun e!2417473 () Bool)

(declare-fun b!3910269 () Bool)

(declare-fun tp!1190217 () Bool)

(declare-fun inv!55613 (String!47108) Bool)

(declare-fun inv!55616 (TokenValueInjection!12784) Bool)

(assert (=> b!3910269 (= e!2417468 (and tp!1190217 (inv!55613 (tag!7308 (rule!9362 (h!46855 suffixTokens!72)))) (inv!55616 (transformation!6448 (rule!9362 (h!46855 suffixTokens!72)))) e!2417473))))

(declare-fun b!3910270 () Bool)

(declare-fun e!2417463 () Bool)

(declare-fun tp!1190227 () Bool)

(declare-fun e!2417474 () Bool)

(assert (=> b!3910270 (= e!2417474 (and tp!1190227 (inv!55613 (tag!7308 (h!46856 rules!2768))) (inv!55616 (transformation!6448 (h!46856 rules!2768))) e!2417463))))

(assert (=> b!3910271 (= e!2417463 (and tp!1190212 tp!1190214))))

(declare-fun b!3910272 () Bool)

(declare-fun tp!1190218 () Bool)

(declare-fun e!2417462 () Bool)

(declare-fun inv!55617 (Token!12034) Bool)

(assert (=> b!3910272 (= e!2417462 (and (inv!55617 (h!46855 suffixTokens!72)) e!2417476 tp!1190218))))

(declare-fun res!1581549 () Bool)

(declare-fun e!2417472 () Bool)

(assert (=> start!366224 (=> (not res!1581549) (not e!2417472))))

(get-info :version)

(assert (=> start!366224 (= res!1581549 ((_ is Lexer!6035) thiss!20629))))

(assert (=> start!366224 e!2417472))

(assert (=> start!366224 e!2417478))

(assert (=> start!366224 true))

(declare-fun e!2417467 () Bool)

(assert (=> start!366224 e!2417467))

(declare-fun e!2417461 () Bool)

(assert (=> start!366224 e!2417461))

(declare-fun e!2417464 () Bool)

(assert (=> start!366224 e!2417464))

(assert (=> start!366224 e!2417462))

(declare-fun e!2417465 () Bool)

(assert (=> start!366224 e!2417465))

(declare-fun b!3910273 () Bool)

(declare-fun tp!1190219 () Bool)

(assert (=> b!3910273 (= e!2417467 (and tp_is_empty!19677 tp!1190219))))

(declare-fun b!3910274 () Bool)

(declare-fun res!1581551 () Bool)

(assert (=> b!3910274 (=> res!1581551 e!2417460)))

(declare-fun lt!1362107 () tuple2!40678)

(declare-fun ++!10654 (List!41559 List!41559) List!41559)

(assert (=> b!3910274 (= res!1581551 (not (= lt!1362107 (tuple2!40679 (++!10654 (Cons!41435 (_1!23474 (v!39189 lt!1362109)) Nil!41435) (_1!23473 lt!1362103)) (_2!23473 lt!1362103)))))))

(assert (=> b!3910275 (= e!2417473 (and tp!1190228 tp!1190224))))

(declare-fun b!3910276 () Bool)

(declare-fun res!1581548 () Bool)

(assert (=> b!3910276 (=> (not res!1581548) (not e!2417472))))

(declare-fun isEmpty!24644 (List!41560) Bool)

(assert (=> b!3910276 (= res!1581548 (not (isEmpty!24644 rules!2768)))))

(declare-fun e!2417470 () Bool)

(declare-fun tp!1190221 () Bool)

(declare-fun prefixTokens!80 () List!41559)

(declare-fun b!3910277 () Bool)

(assert (=> b!3910277 (= e!2417464 (and (inv!55617 (h!46855 prefixTokens!80)) e!2417470 tp!1190221))))

(declare-fun b!3910278 () Bool)

(assert (=> b!3910278 (= e!2417483 (= (size!31109 (_1!23474 (v!39189 lt!1362109))) (size!31110 (originalCharacters!7048 (_1!23474 (v!39189 lt!1362109))))))))

(declare-fun b!3910279 () Bool)

(declare-fun res!1581545 () Bool)

(assert (=> b!3910279 (=> (not res!1581545) (not e!2417472))))

(declare-fun isEmpty!24645 (List!41559) Bool)

(assert (=> b!3910279 (= res!1581545 (not (isEmpty!24645 prefixTokens!80)))))

(declare-fun b!3910280 () Bool)

(declare-fun res!1581546 () Bool)

(declare-fun e!2417469 () Bool)

(assert (=> b!3910280 (=> res!1581546 e!2417469)))

(declare-fun lt!1362104 () Int)

(assert (=> b!3910280 (= res!1581546 (not (= (+ lt!1362108 lt!1362104) (size!31110 lt!1362106))))))

(declare-fun b!3910281 () Bool)

(assert (=> b!3910281 (= e!2417481 e!2417482)))

(declare-fun res!1581553 () Bool)

(assert (=> b!3910281 (=> (not res!1581553) (not e!2417482))))

(assert (=> b!3910281 (= res!1581553 ((_ is Some!8867) lt!1362109))))

(declare-fun maxPrefix!3341 (LexerInterface!6037 List!41560 List!41558) Option!8868)

(assert (=> b!3910281 (= lt!1362109 (maxPrefix!3341 thiss!20629 rules!2768 lt!1362106))))

(declare-fun b!3910282 () Bool)

(assert (=> b!3910282 (= e!2417472 e!2417481)))

(declare-fun res!1581555 () Bool)

(assert (=> b!3910282 (=> (not res!1581555) (not e!2417481))))

(declare-fun lt!1362111 () List!41559)

(assert (=> b!3910282 (= res!1581555 (= lt!1362107 (tuple2!40679 lt!1362111 suffixResult!91)))))

(assert (=> b!3910282 (= lt!1362107 (lexList!1805 thiss!20629 rules!2768 lt!1362106))))

(assert (=> b!3910282 (= lt!1362111 (++!10654 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41558)

(assert (=> b!3910282 (= lt!1362106 (++!10653 prefix!426 suffix!1176))))

(declare-fun b!3910283 () Bool)

(declare-fun res!1581552 () Bool)

(assert (=> b!3910283 (=> (not res!1581552) (not e!2417472))))

(declare-fun isEmpty!24646 (List!41558) Bool)

(assert (=> b!3910283 (= res!1581552 (not (isEmpty!24646 prefix!426)))))

(declare-fun e!2417471 () Bool)

(declare-fun b!3910284 () Bool)

(declare-fun tp!1190225 () Bool)

(declare-fun e!2417484 () Bool)

(assert (=> b!3910284 (= e!2417484 (and tp!1190225 (inv!55613 (tag!7308 (rule!9362 (h!46855 prefixTokens!80)))) (inv!55616 (transformation!6448 (rule!9362 (h!46855 prefixTokens!80)))) e!2417471))))

(declare-fun b!3910285 () Bool)

(declare-fun res!1581550 () Bool)

(assert (=> b!3910285 (=> (not res!1581550) (not e!2417472))))

(declare-fun rulesInvariant!5380 (LexerInterface!6037 List!41560) Bool)

(assert (=> b!3910285 (= res!1581550 (rulesInvariant!5380 thiss!20629 rules!2768))))

(assert (=> b!3910286 (= e!2417471 (and tp!1190223 tp!1190213))))

(declare-fun b!3910287 () Bool)

(assert (=> b!3910287 (= e!2417469 true)))

(declare-fun lt!1362105 () Int)

(assert (=> b!3910287 (= lt!1362105 (size!31110 prefix!426))))

(declare-fun b!3910288 () Bool)

(declare-fun tp!1190226 () Bool)

(assert (=> b!3910288 (= e!2417461 (and e!2417474 tp!1190226))))

(declare-fun b!3910289 () Bool)

(declare-fun tp!1190216 () Bool)

(assert (=> b!3910289 (= e!2417465 (and tp_is_empty!19677 tp!1190216))))

(declare-fun b!3910290 () Bool)

(declare-fun tp!1190220 () Bool)

(assert (=> b!3910290 (= e!2417470 (and (inv!21 (value!204402 (h!46855 prefixTokens!80))) e!2417484 tp!1190220))))

(declare-fun b!3910291 () Bool)

(declare-fun res!1581543 () Bool)

(assert (=> b!3910291 (=> res!1581543 e!2417460)))

(assert (=> b!3910291 (= res!1581543 (or (not (= lt!1362103 (tuple2!40679 (_1!23473 lt!1362103) (_2!23473 lt!1362103)))) (= (_2!23474 (v!39189 lt!1362109)) suffix!1176)))))

(declare-fun b!3910292 () Bool)

(assert (=> b!3910292 (= e!2417460 e!2417469)))

(declare-fun res!1581544 () Bool)

(assert (=> b!3910292 (=> res!1581544 e!2417469)))

(assert (=> b!3910292 (= res!1581544 (>= lt!1362104 (size!31110 suffix!1176)))))

(assert (=> b!3910292 (= lt!1362104 (size!31110 (_2!23474 (v!39189 lt!1362109))))))

(assert (= (and start!366224 res!1581549) b!3910276))

(assert (= (and b!3910276 res!1581548) b!3910285))

(assert (= (and b!3910285 res!1581550) b!3910279))

(assert (= (and b!3910279 res!1581545) b!3910283))

(assert (= (and b!3910283 res!1581552) b!3910282))

(assert (= (and b!3910282 res!1581555) b!3910267))

(assert (= (and b!3910267 res!1581547) b!3910281))

(assert (= (and b!3910281 res!1581553) b!3910268))

(assert (= (and b!3910268 res!1581542) b!3910278))

(assert (= (and b!3910268 (not res!1581554)) b!3910274))

(assert (= (and b!3910274 (not res!1581551)) b!3910291))

(assert (= (and b!3910291 (not res!1581543)) b!3910292))

(assert (= (and b!3910292 (not res!1581544)) b!3910280))

(assert (= (and b!3910280 (not res!1581546)) b!3910287))

(assert (= (and start!366224 ((_ is Cons!41434) suffixResult!91)) b!3910266))

(assert (= (and start!366224 ((_ is Cons!41434) suffix!1176)) b!3910273))

(assert (= b!3910270 b!3910271))

(assert (= b!3910288 b!3910270))

(assert (= (and start!366224 ((_ is Cons!41436) rules!2768)) b!3910288))

(assert (= b!3910284 b!3910286))

(assert (= b!3910290 b!3910284))

(assert (= b!3910277 b!3910290))

(assert (= (and start!366224 ((_ is Cons!41435) prefixTokens!80)) b!3910277))

(assert (= b!3910269 b!3910275))

(assert (= b!3910265 b!3910269))

(assert (= b!3910272 b!3910265))

(assert (= (and start!366224 ((_ is Cons!41435) suffixTokens!72)) b!3910272))

(assert (= (and start!366224 ((_ is Cons!41434) prefix!426)) b!3910289))

(declare-fun m!4473351 () Bool)

(assert (=> b!3910283 m!4473351))

(declare-fun m!4473353 () Bool)

(assert (=> b!3910281 m!4473353))

(declare-fun m!4473355 () Bool)

(assert (=> b!3910278 m!4473355))

(declare-fun m!4473357 () Bool)

(assert (=> b!3910276 m!4473357))

(declare-fun m!4473359 () Bool)

(assert (=> b!3910282 m!4473359))

(declare-fun m!4473361 () Bool)

(assert (=> b!3910282 m!4473361))

(declare-fun m!4473363 () Bool)

(assert (=> b!3910282 m!4473363))

(declare-fun m!4473365 () Bool)

(assert (=> b!3910280 m!4473365))

(declare-fun m!4473367 () Bool)

(assert (=> b!3910268 m!4473367))

(declare-fun m!4473369 () Bool)

(assert (=> b!3910268 m!4473369))

(declare-fun m!4473371 () Bool)

(assert (=> b!3910268 m!4473371))

(declare-fun m!4473373 () Bool)

(assert (=> b!3910268 m!4473373))

(declare-fun m!4473375 () Bool)

(assert (=> b!3910268 m!4473375))

(assert (=> b!3910268 m!4473369))

(declare-fun m!4473377 () Bool)

(assert (=> b!3910268 m!4473377))

(declare-fun m!4473379 () Bool)

(assert (=> b!3910268 m!4473379))

(declare-fun m!4473381 () Bool)

(assert (=> b!3910268 m!4473381))

(declare-fun m!4473383 () Bool)

(assert (=> b!3910268 m!4473383))

(declare-fun m!4473385 () Bool)

(assert (=> b!3910268 m!4473385))

(declare-fun m!4473387 () Bool)

(assert (=> b!3910268 m!4473387))

(declare-fun m!4473389 () Bool)

(assert (=> b!3910268 m!4473389))

(assert (=> b!3910268 m!4473373))

(declare-fun m!4473391 () Bool)

(assert (=> b!3910268 m!4473391))

(declare-fun m!4473393 () Bool)

(assert (=> b!3910268 m!4473393))

(declare-fun m!4473395 () Bool)

(assert (=> b!3910290 m!4473395))

(declare-fun m!4473397 () Bool)

(assert (=> b!3910267 m!4473397))

(declare-fun m!4473399 () Bool)

(assert (=> b!3910287 m!4473399))

(declare-fun m!4473401 () Bool)

(assert (=> b!3910270 m!4473401))

(declare-fun m!4473403 () Bool)

(assert (=> b!3910270 m!4473403))

(declare-fun m!4473405 () Bool)

(assert (=> b!3910272 m!4473405))

(declare-fun m!4473407 () Bool)

(assert (=> b!3910279 m!4473407))

(declare-fun m!4473409 () Bool)

(assert (=> b!3910274 m!4473409))

(declare-fun m!4473411 () Bool)

(assert (=> b!3910292 m!4473411))

(declare-fun m!4473413 () Bool)

(assert (=> b!3910292 m!4473413))

(declare-fun m!4473415 () Bool)

(assert (=> b!3910277 m!4473415))

(declare-fun m!4473417 () Bool)

(assert (=> b!3910285 m!4473417))

(declare-fun m!4473419 () Bool)

(assert (=> b!3910284 m!4473419))

(declare-fun m!4473421 () Bool)

(assert (=> b!3910284 m!4473421))

(declare-fun m!4473423 () Bool)

(assert (=> b!3910269 m!4473423))

(declare-fun m!4473425 () Bool)

(assert (=> b!3910269 m!4473425))

(declare-fun m!4473427 () Bool)

(assert (=> b!3910265 m!4473427))

(check-sat (not b!3910270) (not b_next!106719) (not b!3910285) b_and!297353 (not b!3910280) (not b!3910287) (not b!3910279) (not b!3910273) (not b!3910278) (not b!3910288) (not b!3910265) b_and!297347 (not b!3910269) (not b!3910283) (not b!3910277) (not b!3910274) (not b!3910281) tp_is_empty!19677 b_and!297351 (not b_next!106723) (not b!3910268) (not b!3910282) (not b_next!106727) (not b!3910272) (not b!3910266) (not b!3910284) (not b!3910290) b_and!297355 (not b_next!106717) (not b_next!106721) b_and!297357 (not b!3910267) b_and!297349 (not b!3910292) (not b!3910289) (not b_next!106725) (not b!3910276))
(check-sat (not b_next!106719) b_and!297353 (not b_next!106727) b_and!297355 b_and!297357 b_and!297349 (not b_next!106725) b_and!297347 b_and!297351 (not b_next!106723) (not b_next!106717) (not b_next!106721))
