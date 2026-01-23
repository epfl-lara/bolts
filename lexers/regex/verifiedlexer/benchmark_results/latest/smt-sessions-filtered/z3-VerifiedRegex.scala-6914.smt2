; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364268 () Bool)

(assert start!364268)

(declare-fun b!3880325 () Bool)

(declare-fun b_free!105133 () Bool)

(declare-fun b_next!105837 () Bool)

(assert (=> b!3880325 (= b_free!105133 (not b_next!105837))))

(declare-fun tp!1176550 () Bool)

(declare-fun b_and!291075 () Bool)

(assert (=> b!3880325 (= tp!1176550 b_and!291075)))

(declare-fun b_free!105135 () Bool)

(declare-fun b_next!105839 () Bool)

(assert (=> b!3880325 (= b_free!105135 (not b_next!105839))))

(declare-fun tp!1176557 () Bool)

(declare-fun b_and!291077 () Bool)

(assert (=> b!3880325 (= tp!1176557 b_and!291077)))

(declare-fun b!3880322 () Bool)

(declare-fun b_free!105137 () Bool)

(declare-fun b_next!105841 () Bool)

(assert (=> b!3880322 (= b_free!105137 (not b_next!105841))))

(declare-fun tp!1176556 () Bool)

(declare-fun b_and!291079 () Bool)

(assert (=> b!3880322 (= tp!1176556 b_and!291079)))

(declare-fun b_free!105139 () Bool)

(declare-fun b_next!105843 () Bool)

(assert (=> b!3880322 (= b_free!105139 (not b_next!105843))))

(declare-fun tp!1176549 () Bool)

(declare-fun b_and!291081 () Bool)

(assert (=> b!3880322 (= tp!1176549 b_and!291081)))

(declare-fun b!3880321 () Bool)

(declare-fun b_free!105141 () Bool)

(declare-fun b_next!105845 () Bool)

(assert (=> b!3880321 (= b_free!105141 (not b_next!105845))))

(declare-fun tp!1176551 () Bool)

(declare-fun b_and!291083 () Bool)

(assert (=> b!3880321 (= tp!1176551 b_and!291083)))

(declare-fun b_free!105143 () Bool)

(declare-fun b_next!105847 () Bool)

(assert (=> b!3880321 (= b_free!105143 (not b_next!105847))))

(declare-fun tp!1176555 () Bool)

(declare-fun b_and!291085 () Bool)

(assert (=> b!3880321 (= tp!1176555 b_and!291085)))

(declare-fun b!3880309 () Bool)

(declare-fun e!2401174 () Bool)

(declare-fun tp_is_empty!19613 () Bool)

(declare-fun tp!1176552 () Bool)

(assert (=> b!3880309 (= e!2401174 (and tp_is_empty!19613 tp!1176552))))

(declare-fun b!3880310 () Bool)

(declare-fun e!2401181 () Bool)

(declare-fun e!2401175 () Bool)

(declare-fun tp!1176558 () Bool)

(assert (=> b!3880310 (= e!2401181 (and e!2401175 tp!1176558))))

(declare-datatypes ((List!41410 0))(
  ( (Nil!41286) (Cons!41286 (h!46706 (_ BitVec 16)) (t!315245 List!41410)) )
))
(declare-datatypes ((TokenValue!6646 0))(
  ( (FloatLiteralValue!13292 (text!46967 List!41410)) (TokenValueExt!6645 (__x!25509 Int)) (Broken!33230 (value!203464 List!41410)) (Object!6769) (End!6646) (Def!6646) (Underscore!6646) (Match!6646) (Else!6646) (Error!6646) (Case!6646) (If!6646) (Extends!6646) (Abstract!6646) (Class!6646) (Val!6646) (DelimiterValue!13292 (del!6706 List!41410)) (KeywordValue!6652 (value!203465 List!41410)) (CommentValue!13292 (value!203466 List!41410)) (WhitespaceValue!13292 (value!203467 List!41410)) (IndentationValue!6646 (value!203468 List!41410)) (String!46947) (Int32!6646) (Broken!33231 (value!203469 List!41410)) (Boolean!6647) (Unit!59355) (OperatorValue!6649 (op!6706 List!41410)) (IdentifierValue!13292 (value!203470 List!41410)) (IdentifierValue!13293 (value!203471 List!41410)) (WhitespaceValue!13293 (value!203472 List!41410)) (True!13292) (False!13292) (Broken!33232 (value!203473 List!41410)) (Broken!33233 (value!203474 List!41410)) (True!13293) (RightBrace!6646) (RightBracket!6646) (Colon!6646) (Null!6646) (Comma!6646) (LeftBracket!6646) (False!13293) (LeftBrace!6646) (ImaginaryLiteralValue!6646 (text!46968 List!41410)) (StringLiteralValue!19938 (value!203475 List!41410)) (EOFValue!6646 (value!203476 List!41410)) (IdentValue!6646 (value!203477 List!41410)) (DelimiterValue!13293 (value!203478 List!41410)) (DedentValue!6646 (value!203479 List!41410)) (NewLineValue!6646 (value!203480 List!41410)) (IntegerValue!19938 (value!203481 (_ BitVec 32)) (text!46969 List!41410)) (IntegerValue!19939 (value!203482 Int) (text!46970 List!41410)) (Times!6646) (Or!6646) (Equal!6646) (Minus!6646) (Broken!33234 (value!203483 List!41410)) (And!6646) (Div!6646) (LessEqual!6646) (Mod!6646) (Concat!17967) (Not!6646) (Plus!6646) (SpaceValue!6646 (value!203484 List!41410)) (IntegerValue!19940 (value!203485 Int) (text!46971 List!41410)) (StringLiteralValue!19939 (text!46972 List!41410)) (FloatLiteralValue!13293 (text!46973 List!41410)) (BytesLiteralValue!6646 (value!203486 List!41410)) (CommentValue!13293 (value!203487 List!41410)) (StringLiteralValue!19940 (value!203488 List!41410)) (ErrorTokenValue!6646 (msg!6707 List!41410)) )
))
(declare-datatypes ((C!22828 0))(
  ( (C!22829 (val!13508 Int)) )
))
(declare-datatypes ((Regex!11321 0))(
  ( (ElementMatch!11321 (c!674920 C!22828)) (Concat!17968 (regOne!23154 Regex!11321) (regTwo!23154 Regex!11321)) (EmptyExpr!11321) (Star!11321 (reg!11650 Regex!11321)) (EmptyLang!11321) (Union!11321 (regOne!23155 Regex!11321) (regTwo!23155 Regex!11321)) )
))
(declare-datatypes ((String!46948 0))(
  ( (String!46949 (value!203489 String)) )
))
(declare-datatypes ((List!41411 0))(
  ( (Nil!41287) (Cons!41287 (h!46707 C!22828) (t!315246 List!41411)) )
))
(declare-datatypes ((IArray!25259 0))(
  ( (IArray!25260 (innerList!12687 List!41411)) )
))
(declare-datatypes ((Conc!12627 0))(
  ( (Node!12627 (left!31661 Conc!12627) (right!31991 Conc!12627) (csize!25484 Int) (cheight!12838 Int)) (Leaf!19542 (xs!15933 IArray!25259) (csize!25485 Int)) (Empty!12627) )
))
(declare-datatypes ((BalanceConc!24848 0))(
  ( (BalanceConc!24849 (c!674921 Conc!12627)) )
))
(declare-datatypes ((TokenValueInjection!12720 0))(
  ( (TokenValueInjection!12721 (toValue!8844 Int) (toChars!8703 Int)) )
))
(declare-datatypes ((Rule!12632 0))(
  ( (Rule!12633 (regex!6416 Regex!11321) (tag!7276 String!46948) (isSeparator!6416 Bool) (transformation!6416 TokenValueInjection!12720)) )
))
(declare-datatypes ((Token!11970 0))(
  ( (Token!11971 (value!203490 TokenValue!6646) (rule!9314 Rule!12632) (size!31003 Int) (originalCharacters!7016 List!41411)) )
))
(declare-datatypes ((List!41412 0))(
  ( (Nil!41288) (Cons!41288 (h!46708 Token!11970) (t!315247 List!41412)) )
))
(declare-fun prefixTokens!80 () List!41412)

(declare-fun b!3880311 () Bool)

(declare-fun tp!1176554 () Bool)

(declare-fun e!2401180 () Bool)

(declare-fun e!2401166 () Bool)

(declare-fun inv!55437 (String!46948) Bool)

(declare-fun inv!55440 (TokenValueInjection!12720) Bool)

(assert (=> b!3880311 (= e!2401166 (and tp!1176554 (inv!55437 (tag!7276 (rule!9314 (h!46708 prefixTokens!80)))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) e!2401180))))

(declare-fun b!3880312 () Bool)

(declare-fun res!1572388 () Bool)

(declare-fun e!2401186 () Bool)

(assert (=> b!3880312 (=> (not res!1572388) (not e!2401186))))

(declare-fun suffixResult!91 () List!41411)

(declare-datatypes ((LexerInterface!6005 0))(
  ( (LexerInterfaceExt!6002 (__x!25510 Int)) (Lexer!6003) )
))
(declare-fun thiss!20629 () LexerInterface!6005)

(declare-fun suffix!1176 () List!41411)

(declare-datatypes ((List!41413 0))(
  ( (Nil!41289) (Cons!41289 (h!46709 Rule!12632) (t!315248 List!41413)) )
))
(declare-fun rules!2768 () List!41413)

(declare-fun suffixTokens!72 () List!41412)

(declare-datatypes ((tuple2!40518 0))(
  ( (tuple2!40519 (_1!23393 List!41412) (_2!23393 List!41411)) )
))
(declare-fun lexList!1773 (LexerInterface!6005 List!41413 List!41411) tuple2!40518)

(assert (=> b!3880312 (= res!1572388 (= (lexList!1773 thiss!20629 rules!2768 suffix!1176) (tuple2!40519 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3880313 () Bool)

(declare-fun tp!1176562 () Bool)

(declare-fun e!2401176 () Bool)

(assert (=> b!3880313 (= e!2401175 (and tp!1176562 (inv!55437 (tag!7276 (h!46709 rules!2768))) (inv!55440 (transformation!6416 (h!46709 rules!2768))) e!2401176))))

(declare-fun b!3880314 () Bool)

(declare-fun e!2401184 () Bool)

(assert (=> b!3880314 (= e!2401186 e!2401184)))

(declare-fun res!1572392 () Bool)

(assert (=> b!3880314 (=> (not res!1572392) (not e!2401184))))

(declare-datatypes ((tuple2!40520 0))(
  ( (tuple2!40521 (_1!23394 Token!11970) (_2!23394 List!41411)) )
))
(declare-datatypes ((Option!8834 0))(
  ( (None!8833) (Some!8833 (v!39131 tuple2!40520)) )
))
(declare-fun lt!1354073 () Option!8834)

(get-info :version)

(assert (=> b!3880314 (= res!1572392 ((_ is Some!8833) lt!1354073))))

(declare-fun lt!1354072 () List!41411)

(declare-fun maxPrefix!3309 (LexerInterface!6005 List!41413 List!41411) Option!8834)

(assert (=> b!3880314 (= lt!1354073 (maxPrefix!3309 thiss!20629 rules!2768 lt!1354072))))

(declare-fun b!3880315 () Bool)

(declare-fun res!1572386 () Bool)

(declare-fun e!2401170 () Bool)

(assert (=> b!3880315 (=> (not res!1572386) (not e!2401170))))

(declare-fun isEmpty!24522 (List!41413) Bool)

(assert (=> b!3880315 (= res!1572386 (not (isEmpty!24522 rules!2768)))))

(declare-fun b!3880316 () Bool)

(declare-fun e!2401179 () Bool)

(declare-fun tp!1176561 () Bool)

(assert (=> b!3880316 (= e!2401179 (and tp_is_empty!19613 tp!1176561))))

(declare-fun tp!1176563 () Bool)

(declare-fun e!2401183 () Bool)

(declare-fun b!3880317 () Bool)

(declare-fun e!2401177 () Bool)

(assert (=> b!3880317 (= e!2401177 (and tp!1176563 (inv!55437 (tag!7276 (rule!9314 (h!46708 suffixTokens!72)))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) e!2401183))))

(declare-fun b!3880318 () Bool)

(declare-fun e!2401163 () Bool)

(declare-fun tp!1176559 () Bool)

(assert (=> b!3880318 (= e!2401163 (and tp_is_empty!19613 tp!1176559))))

(declare-fun b!3880319 () Bool)

(declare-fun tp!1176548 () Bool)

(declare-fun e!2401173 () Bool)

(declare-fun inv!21 (TokenValue!6646) Bool)

(assert (=> b!3880319 (= e!2401173 (and (inv!21 (value!203490 (h!46708 prefixTokens!80))) e!2401166 tp!1176548))))

(declare-fun b!3880320 () Bool)

(assert (=> b!3880320 (= e!2401170 e!2401186)))

(declare-fun res!1572391 () Bool)

(assert (=> b!3880320 (=> (not res!1572391) (not e!2401186))))

(declare-fun lt!1354079 () tuple2!40518)

(declare-fun lt!1354080 () List!41412)

(assert (=> b!3880320 (= res!1572391 (= lt!1354079 (tuple2!40519 lt!1354080 suffixResult!91)))))

(assert (=> b!3880320 (= lt!1354079 (lexList!1773 thiss!20629 rules!2768 lt!1354072))))

(declare-fun ++!10589 (List!41412 List!41412) List!41412)

(assert (=> b!3880320 (= lt!1354080 (++!10589 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41411)

(declare-fun ++!10590 (List!41411 List!41411) List!41411)

(assert (=> b!3880320 (= lt!1354072 (++!10590 prefix!426 suffix!1176))))

(assert (=> b!3880321 (= e!2401183 (and tp!1176551 tp!1176555))))

(assert (=> b!3880322 (= e!2401180 (and tp!1176556 tp!1176549))))

(declare-fun e!2401164 () Bool)

(declare-fun b!3880323 () Bool)

(declare-fun lt!1354074 () tuple2!40518)

(assert (=> b!3880323 (= e!2401164 (= lt!1354079 (tuple2!40519 (++!10589 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288) (_1!23393 lt!1354074)) (_2!23393 lt!1354074))))))

(declare-fun b!3880324 () Bool)

(declare-fun res!1572390 () Bool)

(assert (=> b!3880324 (=> (not res!1572390) (not e!2401170))))

(declare-fun isEmpty!24523 (List!41411) Bool)

(assert (=> b!3880324 (= res!1572390 (not (isEmpty!24523 prefix!426)))))

(assert (=> b!3880325 (= e!2401176 (and tp!1176550 tp!1176557))))

(declare-fun b!3880326 () Bool)

(declare-fun res!1572394 () Bool)

(assert (=> b!3880326 (=> (not res!1572394) (not e!2401170))))

(declare-fun rulesInvariant!5348 (LexerInterface!6005 List!41413) Bool)

(assert (=> b!3880326 (= res!1572394 (rulesInvariant!5348 thiss!20629 rules!2768))))

(declare-fun b!3880327 () Bool)

(declare-fun e!2401168 () Bool)

(declare-fun size!31004 (List!41411) Int)

(assert (=> b!3880327 (= e!2401168 (= (size!31003 (_1!23394 (v!39131 lt!1354073))) (size!31004 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun e!2401167 () Bool)

(declare-fun b!3880328 () Bool)

(declare-fun tp!1176560 () Bool)

(assert (=> b!3880328 (= e!2401167 (and (inv!21 (value!203490 (h!46708 suffixTokens!72))) e!2401177 tp!1176560))))

(declare-fun b!3880329 () Bool)

(assert (=> b!3880329 (= e!2401184 (not e!2401164))))

(declare-fun res!1572395 () Bool)

(assert (=> b!3880329 (=> res!1572395 e!2401164)))

(declare-fun lt!1354083 () List!41411)

(assert (=> b!3880329 (= res!1572395 (not (= lt!1354083 lt!1354072)))))

(assert (=> b!3880329 (= lt!1354074 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354073))))))

(declare-fun lt!1354081 () Int)

(declare-fun lt!1354075 () List!41411)

(declare-fun lt!1354082 () TokenValue!6646)

(declare-fun lt!1354076 () List!41411)

(assert (=> b!3880329 (and (= (size!31003 (_1!23394 (v!39131 lt!1354073))) lt!1354081) (= (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))) lt!1354075) (= (v!39131 lt!1354073) (tuple2!40521 (Token!11971 lt!1354082 (rule!9314 (_1!23394 (v!39131 lt!1354073))) lt!1354081 lt!1354075) lt!1354076)))))

(assert (=> b!3880329 (= lt!1354081 (size!31004 lt!1354075))))

(assert (=> b!3880329 e!2401168))

(declare-fun res!1572389 () Bool)

(assert (=> b!3880329 (=> (not res!1572389) (not e!2401168))))

(assert (=> b!3880329 (= res!1572389 (= (value!203490 (_1!23394 (v!39131 lt!1354073))) lt!1354082))))

(declare-fun apply!9655 (TokenValueInjection!12720 BalanceConc!24848) TokenValue!6646)

(declare-fun seqFromList!4683 (List!41411) BalanceConc!24848)

(assert (=> b!3880329 (= lt!1354082 (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))) (seqFromList!4683 lt!1354075)))))

(assert (=> b!3880329 (= (_2!23394 (v!39131 lt!1354073)) lt!1354076)))

(declare-datatypes ((Unit!59356 0))(
  ( (Unit!59357) )
))
(declare-fun lt!1354085 () Unit!59356)

(declare-fun lemmaSamePrefixThenSameSuffix!1732 (List!41411 List!41411 List!41411 List!41411 List!41411) Unit!59356)

(assert (=> b!3880329 (= lt!1354085 (lemmaSamePrefixThenSameSuffix!1732 lt!1354075 (_2!23394 (v!39131 lt!1354073)) lt!1354075 lt!1354076 lt!1354072))))

(declare-fun getSuffix!1966 (List!41411 List!41411) List!41411)

(assert (=> b!3880329 (= lt!1354076 (getSuffix!1966 lt!1354072 lt!1354075))))

(declare-fun isPrefix!3511 (List!41411 List!41411) Bool)

(assert (=> b!3880329 (isPrefix!3511 lt!1354075 lt!1354083)))

(assert (=> b!3880329 (= lt!1354083 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))

(declare-fun lt!1354084 () Unit!59356)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2374 (List!41411 List!41411) Unit!59356)

(assert (=> b!3880329 (= lt!1354084 (lemmaConcatTwoListThenFirstIsPrefix!2374 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))

(declare-fun list!15344 (BalanceConc!24848) List!41411)

(declare-fun charsOf!4240 (Token!11970) BalanceConc!24848)

(assert (=> b!3880329 (= lt!1354075 (list!15344 (charsOf!4240 (_1!23394 (v!39131 lt!1354073)))))))

(declare-fun ruleValid!2364 (LexerInterface!6005 Rule!12632) Bool)

(assert (=> b!3880329 (ruleValid!2364 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))

(declare-fun lt!1354077 () Unit!59356)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1444 (LexerInterface!6005 Rule!12632 List!41413) Unit!59356)

(assert (=> b!3880329 (= lt!1354077 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1444 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))) rules!2768))))

(declare-fun lt!1354078 () Unit!59356)

(declare-fun lemmaCharactersSize!1073 (Token!11970) Unit!59356)

(assert (=> b!3880329 (= lt!1354078 (lemmaCharactersSize!1073 (_1!23394 (v!39131 lt!1354073))))))

(declare-fun res!1572387 () Bool)

(assert (=> start!364268 (=> (not res!1572387) (not e!2401170))))

(assert (=> start!364268 (= res!1572387 ((_ is Lexer!6003) thiss!20629))))

(assert (=> start!364268 e!2401170))

(assert (=> start!364268 e!2401174))

(assert (=> start!364268 true))

(assert (=> start!364268 e!2401179))

(assert (=> start!364268 e!2401181))

(declare-fun e!2401185 () Bool)

(assert (=> start!364268 e!2401185))

(declare-fun e!2401182 () Bool)

(assert (=> start!364268 e!2401182))

(assert (=> start!364268 e!2401163))

(declare-fun tp!1176564 () Bool)

(declare-fun b!3880330 () Bool)

(declare-fun inv!55441 (Token!11970) Bool)

(assert (=> b!3880330 (= e!2401185 (and (inv!55441 (h!46708 prefixTokens!80)) e!2401173 tp!1176564))))

(declare-fun b!3880331 () Bool)

(declare-fun tp!1176553 () Bool)

(assert (=> b!3880331 (= e!2401182 (and (inv!55441 (h!46708 suffixTokens!72)) e!2401167 tp!1176553))))

(declare-fun b!3880332 () Bool)

(declare-fun res!1572393 () Bool)

(assert (=> b!3880332 (=> (not res!1572393) (not e!2401170))))

(declare-fun isEmpty!24524 (List!41412) Bool)

(assert (=> b!3880332 (= res!1572393 (not (isEmpty!24524 prefixTokens!80)))))

(assert (= (and start!364268 res!1572387) b!3880315))

(assert (= (and b!3880315 res!1572386) b!3880326))

(assert (= (and b!3880326 res!1572394) b!3880332))

(assert (= (and b!3880332 res!1572393) b!3880324))

(assert (= (and b!3880324 res!1572390) b!3880320))

(assert (= (and b!3880320 res!1572391) b!3880312))

(assert (= (and b!3880312 res!1572388) b!3880314))

(assert (= (and b!3880314 res!1572392) b!3880329))

(assert (= (and b!3880329 res!1572389) b!3880327))

(assert (= (and b!3880329 (not res!1572395)) b!3880323))

(assert (= (and start!364268 ((_ is Cons!41287) suffixResult!91)) b!3880309))

(assert (= (and start!364268 ((_ is Cons!41287) suffix!1176)) b!3880316))

(assert (= b!3880313 b!3880325))

(assert (= b!3880310 b!3880313))

(assert (= (and start!364268 ((_ is Cons!41289) rules!2768)) b!3880310))

(assert (= b!3880311 b!3880322))

(assert (= b!3880319 b!3880311))

(assert (= b!3880330 b!3880319))

(assert (= (and start!364268 ((_ is Cons!41288) prefixTokens!80)) b!3880330))

(assert (= b!3880317 b!3880321))

(assert (= b!3880328 b!3880317))

(assert (= b!3880331 b!3880328))

(assert (= (and start!364268 ((_ is Cons!41288) suffixTokens!72)) b!3880331))

(assert (= (and start!364268 ((_ is Cons!41287) prefix!426)) b!3880318))

(declare-fun m!4438751 () Bool)

(assert (=> b!3880324 m!4438751))

(declare-fun m!4438753 () Bool)

(assert (=> b!3880314 m!4438753))

(declare-fun m!4438755 () Bool)

(assert (=> b!3880332 m!4438755))

(declare-fun m!4438757 () Bool)

(assert (=> b!3880313 m!4438757))

(declare-fun m!4438759 () Bool)

(assert (=> b!3880313 m!4438759))

(declare-fun m!4438761 () Bool)

(assert (=> b!3880328 m!4438761))

(declare-fun m!4438763 () Bool)

(assert (=> b!3880315 m!4438763))

(declare-fun m!4438765 () Bool)

(assert (=> b!3880311 m!4438765))

(declare-fun m!4438767 () Bool)

(assert (=> b!3880311 m!4438767))

(declare-fun m!4438769 () Bool)

(assert (=> b!3880326 m!4438769))

(declare-fun m!4438771 () Bool)

(assert (=> b!3880323 m!4438771))

(declare-fun m!4438773 () Bool)

(assert (=> b!3880320 m!4438773))

(declare-fun m!4438775 () Bool)

(assert (=> b!3880320 m!4438775))

(declare-fun m!4438777 () Bool)

(assert (=> b!3880320 m!4438777))

(declare-fun m!4438779 () Bool)

(assert (=> b!3880312 m!4438779))

(declare-fun m!4438781 () Bool)

(assert (=> b!3880329 m!4438781))

(declare-fun m!4438783 () Bool)

(assert (=> b!3880329 m!4438783))

(declare-fun m!4438785 () Bool)

(assert (=> b!3880329 m!4438785))

(declare-fun m!4438787 () Bool)

(assert (=> b!3880329 m!4438787))

(declare-fun m!4438789 () Bool)

(assert (=> b!3880329 m!4438789))

(declare-fun m!4438791 () Bool)

(assert (=> b!3880329 m!4438791))

(declare-fun m!4438793 () Bool)

(assert (=> b!3880329 m!4438793))

(declare-fun m!4438795 () Bool)

(assert (=> b!3880329 m!4438795))

(declare-fun m!4438797 () Bool)

(assert (=> b!3880329 m!4438797))

(declare-fun m!4438799 () Bool)

(assert (=> b!3880329 m!4438799))

(assert (=> b!3880329 m!4438783))

(declare-fun m!4438801 () Bool)

(assert (=> b!3880329 m!4438801))

(declare-fun m!4438803 () Bool)

(assert (=> b!3880329 m!4438803))

(assert (=> b!3880329 m!4438785))

(declare-fun m!4438805 () Bool)

(assert (=> b!3880329 m!4438805))

(declare-fun m!4438807 () Bool)

(assert (=> b!3880329 m!4438807))

(declare-fun m!4438809 () Bool)

(assert (=> b!3880317 m!4438809))

(declare-fun m!4438811 () Bool)

(assert (=> b!3880317 m!4438811))

(declare-fun m!4438813 () Bool)

(assert (=> b!3880327 m!4438813))

(declare-fun m!4438815 () Bool)

(assert (=> b!3880330 m!4438815))

(declare-fun m!4438817 () Bool)

(assert (=> b!3880331 m!4438817))

(declare-fun m!4438819 () Bool)

(assert (=> b!3880319 m!4438819))

(check-sat (not b_next!105839) b_and!291077 (not b!3880313) (not b!3880323) (not b!3880309) (not b!3880310) (not b!3880319) (not b_next!105845) (not b!3880332) (not b!3880315) (not b!3880311) (not b!3880331) (not b!3880314) b_and!291083 (not b!3880329) b_and!291075 b_and!291079 b_and!291085 (not b_next!105843) (not b!3880318) (not b!3880320) (not b!3880330) b_and!291081 (not b!3880324) (not b_next!105837) tp_is_empty!19613 (not b_next!105841) (not b!3880326) (not b!3880316) (not b!3880328) (not b!3880312) (not b!3880327) (not b_next!105847) (not b!3880317))
(check-sat (not b_next!105839) (not b_next!105843) b_and!291077 b_and!291081 (not b_next!105845) (not b_next!105847) b_and!291083 b_and!291075 b_and!291079 b_and!291085 (not b_next!105837) (not b_next!105841))
(get-model)

(declare-fun b!3880343 () Bool)

(declare-fun res!1572405 () Bool)

(declare-fun e!2401192 () Bool)

(assert (=> b!3880343 (=> (not res!1572405) (not e!2401192))))

(declare-fun lt!1354088 () List!41412)

(declare-fun size!31006 (List!41412) Int)

(assert (=> b!3880343 (= res!1572405 (= (size!31006 lt!1354088) (+ (size!31006 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) (size!31006 (_1!23393 lt!1354074)))))))

(declare-fun d!1148355 () Bool)

(assert (=> d!1148355 e!2401192))

(declare-fun res!1572406 () Bool)

(assert (=> d!1148355 (=> (not res!1572406) (not e!2401192))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6168 (List!41412) (InoxSet Token!11970))

(assert (=> d!1148355 (= res!1572406 (= (content!6168 lt!1354088) ((_ map or) (content!6168 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) (content!6168 (_1!23393 lt!1354074)))))))

(declare-fun e!2401191 () List!41412)

(assert (=> d!1148355 (= lt!1354088 e!2401191)))

(declare-fun c!674924 () Bool)

(assert (=> d!1148355 (= c!674924 ((_ is Nil!41288) (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))

(assert (=> d!1148355 (= (++!10589 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288) (_1!23393 lt!1354074)) lt!1354088)))

(declare-fun b!3880341 () Bool)

(assert (=> b!3880341 (= e!2401191 (_1!23393 lt!1354074))))

(declare-fun b!3880344 () Bool)

(assert (=> b!3880344 (= e!2401192 (or (not (= (_1!23393 lt!1354074) Nil!41288)) (= lt!1354088 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))))))

(declare-fun b!3880342 () Bool)

(assert (=> b!3880342 (= e!2401191 (Cons!41288 (h!46708 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) (++!10589 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) (_1!23393 lt!1354074))))))

(assert (= (and d!1148355 c!674924) b!3880341))

(assert (= (and d!1148355 (not c!674924)) b!3880342))

(assert (= (and d!1148355 res!1572406) b!3880343))

(assert (= (and b!3880343 res!1572405) b!3880344))

(declare-fun m!4438821 () Bool)

(assert (=> b!3880343 m!4438821))

(declare-fun m!4438823 () Bool)

(assert (=> b!3880343 m!4438823))

(declare-fun m!4438825 () Bool)

(assert (=> b!3880343 m!4438825))

(declare-fun m!4438827 () Bool)

(assert (=> d!1148355 m!4438827))

(declare-fun m!4438829 () Bool)

(assert (=> d!1148355 m!4438829))

(declare-fun m!4438831 () Bool)

(assert (=> d!1148355 m!4438831))

(declare-fun m!4438833 () Bool)

(assert (=> b!3880342 m!4438833))

(assert (=> b!3880323 d!1148355))

(declare-fun d!1148361 () Bool)

(assert (=> d!1148361 (= (isEmpty!24523 prefix!426) ((_ is Nil!41287) prefix!426))))

(assert (=> b!3880324 d!1148361))

(declare-fun d!1148363 () Bool)

(assert (=> d!1148363 (= (inv!55437 (tag!7276 (h!46709 rules!2768))) (= (mod (str.len (value!203489 (tag!7276 (h!46709 rules!2768)))) 2) 0))))

(assert (=> b!3880313 d!1148363))

(declare-fun d!1148365 () Bool)

(declare-fun res!1572409 () Bool)

(declare-fun e!2401195 () Bool)

(assert (=> d!1148365 (=> (not res!1572409) (not e!2401195))))

(declare-fun semiInverseModEq!2748 (Int Int) Bool)

(assert (=> d!1148365 (= res!1572409 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (h!46709 rules!2768)))))))

(assert (=> d!1148365 (= (inv!55440 (transformation!6416 (h!46709 rules!2768))) e!2401195)))

(declare-fun b!3880347 () Bool)

(declare-fun equivClasses!2647 (Int Int) Bool)

(assert (=> b!3880347 (= e!2401195 (equivClasses!2647 (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (h!46709 rules!2768)))))))

(assert (= (and d!1148365 res!1572409) b!3880347))

(declare-fun m!4438835 () Bool)

(assert (=> d!1148365 m!4438835))

(declare-fun m!4438837 () Bool)

(assert (=> b!3880347 m!4438837))

(assert (=> b!3880313 d!1148365))

(declare-fun d!1148367 () Bool)

(assert (=> d!1148367 (= (inv!55437 (tag!7276 (rule!9314 (h!46708 prefixTokens!80)))) (= (mod (str.len (value!203489 (tag!7276 (rule!9314 (h!46708 prefixTokens!80))))) 2) 0))))

(assert (=> b!3880311 d!1148367))

(declare-fun d!1148369 () Bool)

(declare-fun res!1572410 () Bool)

(declare-fun e!2401196 () Bool)

(assert (=> d!1148369 (=> (not res!1572410) (not e!2401196))))

(assert (=> d!1148369 (= res!1572410 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))))))

(assert (=> d!1148369 (= (inv!55440 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) e!2401196)))

(declare-fun b!3880348 () Bool)

(assert (=> b!3880348 (= e!2401196 (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))))))

(assert (= (and d!1148369 res!1572410) b!3880348))

(declare-fun m!4438839 () Bool)

(assert (=> d!1148369 m!4438839))

(declare-fun m!4438841 () Bool)

(assert (=> b!3880348 m!4438841))

(assert (=> b!3880311 d!1148369))

(declare-fun d!1148371 () Bool)

(declare-fun e!2401254 () Bool)

(assert (=> d!1148371 e!2401254))

(declare-fun c!674950 () Bool)

(declare-fun lt!1354126 () tuple2!40518)

(assert (=> d!1148371 (= c!674950 (> (size!31006 (_1!23393 lt!1354126)) 0))))

(declare-fun e!2401253 () tuple2!40518)

(assert (=> d!1148371 (= lt!1354126 e!2401253)))

(declare-fun c!674949 () Bool)

(declare-fun lt!1354124 () Option!8834)

(assert (=> d!1148371 (= c!674949 ((_ is Some!8833) lt!1354124))))

(assert (=> d!1148371 (= lt!1354124 (maxPrefix!3309 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1148371 (= (lexList!1773 thiss!20629 rules!2768 suffix!1176) lt!1354126)))

(declare-fun b!3880440 () Bool)

(declare-fun lt!1354125 () tuple2!40518)

(assert (=> b!3880440 (= e!2401253 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354124)) (_1!23393 lt!1354125)) (_2!23393 lt!1354125)))))

(assert (=> b!3880440 (= lt!1354125 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354124))))))

(declare-fun b!3880441 () Bool)

(assert (=> b!3880441 (= e!2401253 (tuple2!40519 Nil!41288 suffix!1176))))

(declare-fun b!3880442 () Bool)

(assert (=> b!3880442 (= e!2401254 (= (_2!23393 lt!1354126) suffix!1176))))

(declare-fun b!3880443 () Bool)

(declare-fun e!2401252 () Bool)

(assert (=> b!3880443 (= e!2401254 e!2401252)))

(declare-fun res!1572447 () Bool)

(assert (=> b!3880443 (= res!1572447 (< (size!31004 (_2!23393 lt!1354126)) (size!31004 suffix!1176)))))

(assert (=> b!3880443 (=> (not res!1572447) (not e!2401252))))

(declare-fun b!3880444 () Bool)

(assert (=> b!3880444 (= e!2401252 (not (isEmpty!24524 (_1!23393 lt!1354126))))))

(assert (= (and d!1148371 c!674949) b!3880440))

(assert (= (and d!1148371 (not c!674949)) b!3880441))

(assert (= (and d!1148371 c!674950) b!3880443))

(assert (= (and d!1148371 (not c!674950)) b!3880442))

(assert (= (and b!3880443 res!1572447) b!3880444))

(declare-fun m!4438947 () Bool)

(assert (=> d!1148371 m!4438947))

(declare-fun m!4438949 () Bool)

(assert (=> d!1148371 m!4438949))

(declare-fun m!4438953 () Bool)

(assert (=> b!3880440 m!4438953))

(declare-fun m!4438955 () Bool)

(assert (=> b!3880443 m!4438955))

(declare-fun m!4438957 () Bool)

(assert (=> b!3880443 m!4438957))

(declare-fun m!4438959 () Bool)

(assert (=> b!3880444 m!4438959))

(assert (=> b!3880312 d!1148371))

(declare-fun d!1148403 () Bool)

(declare-fun res!1572458 () Bool)

(declare-fun e!2401266 () Bool)

(assert (=> d!1148403 (=> (not res!1572458) (not e!2401266))))

(assert (=> d!1148403 (= res!1572458 (not (isEmpty!24523 (originalCharacters!7016 (h!46708 suffixTokens!72)))))))

(assert (=> d!1148403 (= (inv!55441 (h!46708 suffixTokens!72)) e!2401266)))

(declare-fun b!3880467 () Bool)

(declare-fun res!1572459 () Bool)

(assert (=> b!3880467 (=> (not res!1572459) (not e!2401266))))

(declare-fun dynLambda!17721 (Int TokenValue!6646) BalanceConc!24848)

(assert (=> b!3880467 (= res!1572459 (= (originalCharacters!7016 (h!46708 suffixTokens!72)) (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(declare-fun b!3880468 () Bool)

(assert (=> b!3880468 (= e!2401266 (= (size!31003 (h!46708 suffixTokens!72)) (size!31004 (originalCharacters!7016 (h!46708 suffixTokens!72)))))))

(assert (= (and d!1148403 res!1572458) b!3880467))

(assert (= (and b!3880467 res!1572459) b!3880468))

(declare-fun b_lambda!113227 () Bool)

(assert (=> (not b_lambda!113227) (not b!3880467)))

(declare-fun tb!225149 () Bool)

(declare-fun t!315262 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315262) tb!225149))

(declare-fun b!3880483 () Bool)

(declare-fun e!2401275 () Bool)

(declare-fun tp!1176570 () Bool)

(declare-fun inv!55444 (Conc!12627) Bool)

(assert (=> b!3880483 (= e!2401275 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))) tp!1176570))))

(declare-fun result!274250 () Bool)

(declare-fun inv!55445 (BalanceConc!24848) Bool)

(assert (=> tb!225149 (= result!274250 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))) e!2401275))))

(assert (= tb!225149 b!3880483))

(declare-fun m!4438995 () Bool)

(assert (=> b!3880483 m!4438995))

(declare-fun m!4438997 () Bool)

(assert (=> tb!225149 m!4438997))

(assert (=> b!3880467 t!315262))

(declare-fun b_and!291099 () Bool)

(assert (= b_and!291077 (and (=> t!315262 result!274250) b_and!291099)))

(declare-fun tb!225151 () Bool)

(declare-fun t!315264 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315264) tb!225151))

(declare-fun result!274254 () Bool)

(assert (= result!274254 result!274250))

(assert (=> b!3880467 t!315264))

(declare-fun b_and!291101 () Bool)

(assert (= b_and!291081 (and (=> t!315264 result!274254) b_and!291101)))

(declare-fun t!315266 () Bool)

(declare-fun tb!225153 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315266) tb!225153))

(declare-fun result!274256 () Bool)

(assert (= result!274256 result!274250))

(assert (=> b!3880467 t!315266))

(declare-fun b_and!291103 () Bool)

(assert (= b_and!291085 (and (=> t!315266 result!274256) b_and!291103)))

(declare-fun m!4438999 () Bool)

(assert (=> d!1148403 m!4438999))

(declare-fun m!4439001 () Bool)

(assert (=> b!3880467 m!4439001))

(assert (=> b!3880467 m!4439001))

(declare-fun m!4439003 () Bool)

(assert (=> b!3880467 m!4439003))

(declare-fun m!4439005 () Bool)

(assert (=> b!3880468 m!4439005))

(assert (=> b!3880331 d!1148403))

(declare-fun d!1148423 () Bool)

(assert (=> d!1148423 (= (isEmpty!24524 prefixTokens!80) ((_ is Nil!41288) prefixTokens!80))))

(assert (=> b!3880332 d!1148423))

(declare-fun d!1148425 () Bool)

(declare-fun res!1572462 () Bool)

(declare-fun e!2401277 () Bool)

(assert (=> d!1148425 (=> (not res!1572462) (not e!2401277))))

(assert (=> d!1148425 (= res!1572462 (not (isEmpty!24523 (originalCharacters!7016 (h!46708 prefixTokens!80)))))))

(assert (=> d!1148425 (= (inv!55441 (h!46708 prefixTokens!80)) e!2401277)))

(declare-fun b!3880486 () Bool)

(declare-fun res!1572463 () Bool)

(assert (=> b!3880486 (=> (not res!1572463) (not e!2401277))))

(assert (=> b!3880486 (= res!1572463 (= (originalCharacters!7016 (h!46708 prefixTokens!80)) (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(declare-fun b!3880487 () Bool)

(assert (=> b!3880487 (= e!2401277 (= (size!31003 (h!46708 prefixTokens!80)) (size!31004 (originalCharacters!7016 (h!46708 prefixTokens!80)))))))

(assert (= (and d!1148425 res!1572462) b!3880486))

(assert (= (and b!3880486 res!1572463) b!3880487))

(declare-fun b_lambda!113229 () Bool)

(assert (=> (not b_lambda!113229) (not b!3880486)))

(declare-fun t!315268 () Bool)

(declare-fun tb!225155 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315268) tb!225155))

(declare-fun b!3880490 () Bool)

(declare-fun e!2401280 () Bool)

(declare-fun tp!1176571 () Bool)

(assert (=> b!3880490 (= e!2401280 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))) tp!1176571))))

(declare-fun result!274258 () Bool)

(assert (=> tb!225155 (= result!274258 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))) e!2401280))))

(assert (= tb!225155 b!3880490))

(declare-fun m!4439011 () Bool)

(assert (=> b!3880490 m!4439011))

(declare-fun m!4439013 () Bool)

(assert (=> tb!225155 m!4439013))

(assert (=> b!3880486 t!315268))

(declare-fun b_and!291105 () Bool)

(assert (= b_and!291099 (and (=> t!315268 result!274258) b_and!291105)))

(declare-fun t!315270 () Bool)

(declare-fun tb!225157 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315270) tb!225157))

(declare-fun result!274260 () Bool)

(assert (= result!274260 result!274258))

(assert (=> b!3880486 t!315270))

(declare-fun b_and!291107 () Bool)

(assert (= b_and!291101 (and (=> t!315270 result!274260) b_and!291107)))

(declare-fun t!315272 () Bool)

(declare-fun tb!225159 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315272) tb!225159))

(declare-fun result!274262 () Bool)

(assert (= result!274262 result!274258))

(assert (=> b!3880486 t!315272))

(declare-fun b_and!291109 () Bool)

(assert (= b_and!291103 (and (=> t!315272 result!274262) b_and!291109)))

(declare-fun m!4439015 () Bool)

(assert (=> d!1148425 m!4439015))

(declare-fun m!4439017 () Bool)

(assert (=> b!3880486 m!4439017))

(assert (=> b!3880486 m!4439017))

(declare-fun m!4439019 () Bool)

(assert (=> b!3880486 m!4439019))

(declare-fun m!4439021 () Bool)

(assert (=> b!3880487 m!4439021))

(assert (=> b!3880330 d!1148425))

(declare-fun b!3880512 () Bool)

(declare-fun e!2401297 () Bool)

(declare-fun inv!17 (TokenValue!6646) Bool)

(assert (=> b!3880512 (= e!2401297 (inv!17 (value!203490 (h!46708 prefixTokens!80))))))

(declare-fun b!3880513 () Bool)

(declare-fun e!2401295 () Bool)

(assert (=> b!3880513 (= e!2401295 e!2401297)))

(declare-fun c!674966 () Bool)

(assert (=> b!3880513 (= c!674966 ((_ is IntegerValue!19939) (value!203490 (h!46708 prefixTokens!80))))))

(declare-fun b!3880514 () Bool)

(declare-fun e!2401296 () Bool)

(declare-fun inv!15 (TokenValue!6646) Bool)

(assert (=> b!3880514 (= e!2401296 (inv!15 (value!203490 (h!46708 prefixTokens!80))))))

(declare-fun b!3880515 () Bool)

(declare-fun res!1572478 () Bool)

(assert (=> b!3880515 (=> res!1572478 e!2401296)))

(assert (=> b!3880515 (= res!1572478 (not ((_ is IntegerValue!19940) (value!203490 (h!46708 prefixTokens!80)))))))

(assert (=> b!3880515 (= e!2401297 e!2401296)))

(declare-fun b!3880516 () Bool)

(declare-fun inv!16 (TokenValue!6646) Bool)

(assert (=> b!3880516 (= e!2401295 (inv!16 (value!203490 (h!46708 prefixTokens!80))))))

(declare-fun d!1148429 () Bool)

(declare-fun c!674967 () Bool)

(assert (=> d!1148429 (= c!674967 ((_ is IntegerValue!19938) (value!203490 (h!46708 prefixTokens!80))))))

(assert (=> d!1148429 (= (inv!21 (value!203490 (h!46708 prefixTokens!80))) e!2401295)))

(assert (= (and d!1148429 c!674967) b!3880516))

(assert (= (and d!1148429 (not c!674967)) b!3880513))

(assert (= (and b!3880513 c!674966) b!3880512))

(assert (= (and b!3880513 (not c!674966)) b!3880515))

(assert (= (and b!3880515 (not res!1572478)) b!3880514))

(declare-fun m!4439039 () Bool)

(assert (=> b!3880512 m!4439039))

(declare-fun m!4439041 () Bool)

(assert (=> b!3880514 m!4439041))

(declare-fun m!4439043 () Bool)

(assert (=> b!3880516 m!4439043))

(assert (=> b!3880319 d!1148429))

(declare-fun d!1148435 () Bool)

(declare-fun e!2401300 () Bool)

(assert (=> d!1148435 e!2401300))

(declare-fun c!674969 () Bool)

(declare-fun lt!1354142 () tuple2!40518)

(assert (=> d!1148435 (= c!674969 (> (size!31006 (_1!23393 lt!1354142)) 0))))

(declare-fun e!2401299 () tuple2!40518)

(assert (=> d!1148435 (= lt!1354142 e!2401299)))

(declare-fun c!674968 () Bool)

(declare-fun lt!1354140 () Option!8834)

(assert (=> d!1148435 (= c!674968 ((_ is Some!8833) lt!1354140))))

(assert (=> d!1148435 (= lt!1354140 (maxPrefix!3309 thiss!20629 rules!2768 lt!1354072))))

(assert (=> d!1148435 (= (lexList!1773 thiss!20629 rules!2768 lt!1354072) lt!1354142)))

(declare-fun b!3880517 () Bool)

(declare-fun lt!1354141 () tuple2!40518)

(assert (=> b!3880517 (= e!2401299 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354140)) (_1!23393 lt!1354141)) (_2!23393 lt!1354141)))))

(assert (=> b!3880517 (= lt!1354141 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354140))))))

(declare-fun b!3880518 () Bool)

(assert (=> b!3880518 (= e!2401299 (tuple2!40519 Nil!41288 lt!1354072))))

(declare-fun b!3880519 () Bool)

(assert (=> b!3880519 (= e!2401300 (= (_2!23393 lt!1354142) lt!1354072))))

(declare-fun b!3880520 () Bool)

(declare-fun e!2401298 () Bool)

(assert (=> b!3880520 (= e!2401300 e!2401298)))

(declare-fun res!1572479 () Bool)

(assert (=> b!3880520 (= res!1572479 (< (size!31004 (_2!23393 lt!1354142)) (size!31004 lt!1354072)))))

(assert (=> b!3880520 (=> (not res!1572479) (not e!2401298))))

(declare-fun b!3880521 () Bool)

(assert (=> b!3880521 (= e!2401298 (not (isEmpty!24524 (_1!23393 lt!1354142))))))

(assert (= (and d!1148435 c!674968) b!3880517))

(assert (= (and d!1148435 (not c!674968)) b!3880518))

(assert (= (and d!1148435 c!674969) b!3880520))

(assert (= (and d!1148435 (not c!674969)) b!3880519))

(assert (= (and b!3880520 res!1572479) b!3880521))

(declare-fun m!4439045 () Bool)

(assert (=> d!1148435 m!4439045))

(assert (=> d!1148435 m!4438753))

(declare-fun m!4439047 () Bool)

(assert (=> b!3880517 m!4439047))

(declare-fun m!4439049 () Bool)

(assert (=> b!3880520 m!4439049))

(declare-fun m!4439051 () Bool)

(assert (=> b!3880520 m!4439051))

(declare-fun m!4439053 () Bool)

(assert (=> b!3880521 m!4439053))

(assert (=> b!3880320 d!1148435))

(declare-fun b!3880524 () Bool)

(declare-fun res!1572480 () Bool)

(declare-fun e!2401302 () Bool)

(assert (=> b!3880524 (=> (not res!1572480) (not e!2401302))))

(declare-fun lt!1354143 () List!41412)

(assert (=> b!3880524 (= res!1572480 (= (size!31006 lt!1354143) (+ (size!31006 prefixTokens!80) (size!31006 suffixTokens!72))))))

(declare-fun d!1148437 () Bool)

(assert (=> d!1148437 e!2401302))

(declare-fun res!1572481 () Bool)

(assert (=> d!1148437 (=> (not res!1572481) (not e!2401302))))

(assert (=> d!1148437 (= res!1572481 (= (content!6168 lt!1354143) ((_ map or) (content!6168 prefixTokens!80) (content!6168 suffixTokens!72))))))

(declare-fun e!2401301 () List!41412)

(assert (=> d!1148437 (= lt!1354143 e!2401301)))

(declare-fun c!674970 () Bool)

(assert (=> d!1148437 (= c!674970 ((_ is Nil!41288) prefixTokens!80))))

(assert (=> d!1148437 (= (++!10589 prefixTokens!80 suffixTokens!72) lt!1354143)))

(declare-fun b!3880522 () Bool)

(assert (=> b!3880522 (= e!2401301 suffixTokens!72)))

(declare-fun b!3880525 () Bool)

(assert (=> b!3880525 (= e!2401302 (or (not (= suffixTokens!72 Nil!41288)) (= lt!1354143 prefixTokens!80)))))

(declare-fun b!3880523 () Bool)

(assert (=> b!3880523 (= e!2401301 (Cons!41288 (h!46708 prefixTokens!80) (++!10589 (t!315247 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1148437 c!674970) b!3880522))

(assert (= (and d!1148437 (not c!674970)) b!3880523))

(assert (= (and d!1148437 res!1572481) b!3880524))

(assert (= (and b!3880524 res!1572480) b!3880525))

(declare-fun m!4439055 () Bool)

(assert (=> b!3880524 m!4439055))

(declare-fun m!4439057 () Bool)

(assert (=> b!3880524 m!4439057))

(declare-fun m!4439059 () Bool)

(assert (=> b!3880524 m!4439059))

(declare-fun m!4439061 () Bool)

(assert (=> d!1148437 m!4439061))

(declare-fun m!4439063 () Bool)

(assert (=> d!1148437 m!4439063))

(declare-fun m!4439065 () Bool)

(assert (=> d!1148437 m!4439065))

(declare-fun m!4439067 () Bool)

(assert (=> b!3880523 m!4439067))

(assert (=> b!3880320 d!1148437))

(declare-fun d!1148439 () Bool)

(declare-fun e!2401308 () Bool)

(assert (=> d!1148439 e!2401308))

(declare-fun res!1572486 () Bool)

(assert (=> d!1148439 (=> (not res!1572486) (not e!2401308))))

(declare-fun lt!1354146 () List!41411)

(declare-fun content!6169 (List!41411) (InoxSet C!22828))

(assert (=> d!1148439 (= res!1572486 (= (content!6169 lt!1354146) ((_ map or) (content!6169 prefix!426) (content!6169 suffix!1176))))))

(declare-fun e!2401307 () List!41411)

(assert (=> d!1148439 (= lt!1354146 e!2401307)))

(declare-fun c!674973 () Bool)

(assert (=> d!1148439 (= c!674973 ((_ is Nil!41287) prefix!426))))

(assert (=> d!1148439 (= (++!10590 prefix!426 suffix!1176) lt!1354146)))

(declare-fun b!3880535 () Bool)

(assert (=> b!3880535 (= e!2401307 (Cons!41287 (h!46707 prefix!426) (++!10590 (t!315246 prefix!426) suffix!1176)))))

(declare-fun b!3880536 () Bool)

(declare-fun res!1572487 () Bool)

(assert (=> b!3880536 (=> (not res!1572487) (not e!2401308))))

(assert (=> b!3880536 (= res!1572487 (= (size!31004 lt!1354146) (+ (size!31004 prefix!426) (size!31004 suffix!1176))))))

(declare-fun b!3880537 () Bool)

(assert (=> b!3880537 (= e!2401308 (or (not (= suffix!1176 Nil!41287)) (= lt!1354146 prefix!426)))))

(declare-fun b!3880534 () Bool)

(assert (=> b!3880534 (= e!2401307 suffix!1176)))

(assert (= (and d!1148439 c!674973) b!3880534))

(assert (= (and d!1148439 (not c!674973)) b!3880535))

(assert (= (and d!1148439 res!1572486) b!3880536))

(assert (= (and b!3880536 res!1572487) b!3880537))

(declare-fun m!4439069 () Bool)

(assert (=> d!1148439 m!4439069))

(declare-fun m!4439071 () Bool)

(assert (=> d!1148439 m!4439071))

(declare-fun m!4439073 () Bool)

(assert (=> d!1148439 m!4439073))

(declare-fun m!4439075 () Bool)

(assert (=> b!3880535 m!4439075))

(declare-fun m!4439077 () Bool)

(assert (=> b!3880536 m!4439077))

(declare-fun m!4439079 () Bool)

(assert (=> b!3880536 m!4439079))

(assert (=> b!3880536 m!4438957))

(assert (=> b!3880320 d!1148439))

(declare-fun d!1148441 () Bool)

(declare-fun dynLambda!17722 (Int BalanceConc!24848) TokenValue!6646)

(assert (=> d!1148441 (= (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))) (seqFromList!4683 lt!1354075)) (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075)))))

(declare-fun b_lambda!113233 () Bool)

(assert (=> (not b_lambda!113233) (not d!1148441)))

(declare-fun t!315280 () Bool)

(declare-fun tb!225167 () Bool)

(assert (=> (and b!3880325 (= (toValue!8844 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315280) tb!225167))

(declare-fun result!274270 () Bool)

(assert (=> tb!225167 (= result!274270 (inv!21 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(declare-fun m!4439081 () Bool)

(assert (=> tb!225167 m!4439081))

(assert (=> d!1148441 t!315280))

(declare-fun b_and!291117 () Bool)

(assert (= b_and!291075 (and (=> t!315280 result!274270) b_and!291117)))

(declare-fun tb!225169 () Bool)

(declare-fun t!315282 () Bool)

(assert (=> (and b!3880322 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315282) tb!225169))

(declare-fun result!274274 () Bool)

(assert (= result!274274 result!274270))

(assert (=> d!1148441 t!315282))

(declare-fun b_and!291119 () Bool)

(assert (= b_and!291079 (and (=> t!315282 result!274274) b_and!291119)))

(declare-fun tb!225171 () Bool)

(declare-fun t!315284 () Bool)

(assert (=> (and b!3880321 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315284) tb!225171))

(declare-fun result!274276 () Bool)

(assert (= result!274276 result!274270))

(assert (=> d!1148441 t!315284))

(declare-fun b_and!291121 () Bool)

(assert (= b_and!291083 (and (=> t!315284 result!274276) b_and!291121)))

(assert (=> d!1148441 m!4438785))

(declare-fun m!4439083 () Bool)

(assert (=> d!1148441 m!4439083))

(assert (=> b!3880329 d!1148441))

(declare-fun d!1148443 () Bool)

(declare-fun e!2401317 () Bool)

(assert (=> d!1148443 e!2401317))

(declare-fun res!1572490 () Bool)

(assert (=> d!1148443 (=> (not res!1572490) (not e!2401317))))

(declare-fun lt!1354157 () List!41411)

(assert (=> d!1148443 (= res!1572490 (= (content!6169 lt!1354157) ((_ map or) (content!6169 lt!1354075) (content!6169 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun e!2401316 () List!41411)

(assert (=> d!1148443 (= lt!1354157 e!2401316)))

(declare-fun c!674976 () Bool)

(assert (=> d!1148443 (= c!674976 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148443 (= (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))) lt!1354157)))

(declare-fun b!3880547 () Bool)

(assert (=> b!3880547 (= e!2401316 (Cons!41287 (h!46707 lt!1354075) (++!10590 (t!315246 lt!1354075) (_2!23394 (v!39131 lt!1354073)))))))

(declare-fun b!3880548 () Bool)

(declare-fun res!1572491 () Bool)

(assert (=> b!3880548 (=> (not res!1572491) (not e!2401317))))

(assert (=> b!3880548 (= res!1572491 (= (size!31004 lt!1354157) (+ (size!31004 lt!1354075) (size!31004 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3880549 () Bool)

(assert (=> b!3880549 (= e!2401317 (or (not (= (_2!23394 (v!39131 lt!1354073)) Nil!41287)) (= lt!1354157 lt!1354075)))))

(declare-fun b!3880546 () Bool)

(assert (=> b!3880546 (= e!2401316 (_2!23394 (v!39131 lt!1354073)))))

(assert (= (and d!1148443 c!674976) b!3880546))

(assert (= (and d!1148443 (not c!674976)) b!3880547))

(assert (= (and d!1148443 res!1572490) b!3880548))

(assert (= (and b!3880548 res!1572491) b!3880549))

(declare-fun m!4439085 () Bool)

(assert (=> d!1148443 m!4439085))

(declare-fun m!4439087 () Bool)

(assert (=> d!1148443 m!4439087))

(declare-fun m!4439089 () Bool)

(assert (=> d!1148443 m!4439089))

(declare-fun m!4439091 () Bool)

(assert (=> b!3880547 m!4439091))

(declare-fun m!4439093 () Bool)

(assert (=> b!3880548 m!4439093))

(assert (=> b!3880548 m!4438807))

(declare-fun m!4439095 () Bool)

(assert (=> b!3880548 m!4439095))

(assert (=> b!3880329 d!1148443))

(declare-fun d!1148445 () Bool)

(declare-fun lt!1354160 () Int)

(assert (=> d!1148445 (>= lt!1354160 0)))

(declare-fun e!2401322 () Int)

(assert (=> d!1148445 (= lt!1354160 e!2401322)))

(declare-fun c!674979 () Bool)

(assert (=> d!1148445 (= c!674979 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148445 (= (size!31004 lt!1354075) lt!1354160)))

(declare-fun b!3880566 () Bool)

(assert (=> b!3880566 (= e!2401322 0)))

(declare-fun b!3880567 () Bool)

(assert (=> b!3880567 (= e!2401322 (+ 1 (size!31004 (t!315246 lt!1354075))))))

(assert (= (and d!1148445 c!674979) b!3880566))

(assert (= (and d!1148445 (not c!674979)) b!3880567))

(declare-fun m!4439097 () Bool)

(assert (=> b!3880567 m!4439097))

(assert (=> b!3880329 d!1148445))

(declare-fun b!3880602 () Bool)

(declare-fun res!1572524 () Bool)

(declare-fun e!2401346 () Bool)

(assert (=> b!3880602 (=> (not res!1572524) (not e!2401346))))

(declare-fun head!8240 (List!41411) C!22828)

(assert (=> b!3880602 (= res!1572524 (= (head!8240 lt!1354075) (head!8240 lt!1354083)))))

(declare-fun b!3880604 () Bool)

(declare-fun e!2401345 () Bool)

(assert (=> b!3880604 (= e!2401345 (>= (size!31004 lt!1354083) (size!31004 lt!1354075)))))

(declare-fun d!1148447 () Bool)

(assert (=> d!1148447 e!2401345))

(declare-fun res!1572526 () Bool)

(assert (=> d!1148447 (=> res!1572526 e!2401345)))

(declare-fun lt!1354171 () Bool)

(assert (=> d!1148447 (= res!1572526 (not lt!1354171))))

(declare-fun e!2401347 () Bool)

(assert (=> d!1148447 (= lt!1354171 e!2401347)))

(declare-fun res!1572527 () Bool)

(assert (=> d!1148447 (=> res!1572527 e!2401347)))

(assert (=> d!1148447 (= res!1572527 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148447 (= (isPrefix!3511 lt!1354075 lt!1354083) lt!1354171)))

(declare-fun b!3880601 () Bool)

(assert (=> b!3880601 (= e!2401347 e!2401346)))

(declare-fun res!1572525 () Bool)

(assert (=> b!3880601 (=> (not res!1572525) (not e!2401346))))

(assert (=> b!3880601 (= res!1572525 (not ((_ is Nil!41287) lt!1354083)))))

(declare-fun b!3880603 () Bool)

(declare-fun tail!5957 (List!41411) List!41411)

(assert (=> b!3880603 (= e!2401346 (isPrefix!3511 (tail!5957 lt!1354075) (tail!5957 lt!1354083)))))

(assert (= (and d!1148447 (not res!1572527)) b!3880601))

(assert (= (and b!3880601 res!1572525) b!3880602))

(assert (= (and b!3880602 res!1572524) b!3880603))

(assert (= (and d!1148447 (not res!1572526)) b!3880604))

(declare-fun m!4439161 () Bool)

(assert (=> b!3880602 m!4439161))

(declare-fun m!4439163 () Bool)

(assert (=> b!3880602 m!4439163))

(declare-fun m!4439165 () Bool)

(assert (=> b!3880604 m!4439165))

(assert (=> b!3880604 m!4438807))

(declare-fun m!4439167 () Bool)

(assert (=> b!3880603 m!4439167))

(declare-fun m!4439169 () Bool)

(assert (=> b!3880603 m!4439169))

(assert (=> b!3880603 m!4439167))

(assert (=> b!3880603 m!4439169))

(declare-fun m!4439171 () Bool)

(assert (=> b!3880603 m!4439171))

(assert (=> b!3880329 d!1148447))

(declare-fun d!1148461 () Bool)

(assert (=> d!1148461 (= (_2!23394 (v!39131 lt!1354073)) lt!1354076)))

(declare-fun lt!1354174 () Unit!59356)

(declare-fun choose!23011 (List!41411 List!41411 List!41411 List!41411 List!41411) Unit!59356)

(assert (=> d!1148461 (= lt!1354174 (choose!23011 lt!1354075 (_2!23394 (v!39131 lt!1354073)) lt!1354075 lt!1354076 lt!1354072))))

(assert (=> d!1148461 (isPrefix!3511 lt!1354075 lt!1354072)))

(assert (=> d!1148461 (= (lemmaSamePrefixThenSameSuffix!1732 lt!1354075 (_2!23394 (v!39131 lt!1354073)) lt!1354075 lt!1354076 lt!1354072) lt!1354174)))

(declare-fun bs!583745 () Bool)

(assert (= bs!583745 d!1148461))

(declare-fun m!4439177 () Bool)

(assert (=> bs!583745 m!4439177))

(declare-fun m!4439179 () Bool)

(assert (=> bs!583745 m!4439179))

(assert (=> b!3880329 d!1148461))

(declare-fun d!1148463 () Bool)

(declare-fun res!1572532 () Bool)

(declare-fun e!2401390 () Bool)

(assert (=> d!1148463 (=> (not res!1572532) (not e!2401390))))

(declare-fun validRegex!5148 (Regex!11321) Bool)

(assert (=> d!1148463 (= res!1572532 (validRegex!5148 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))

(assert (=> d!1148463 (= (ruleValid!2364 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073)))) e!2401390)))

(declare-fun b!3880655 () Bool)

(declare-fun res!1572533 () Bool)

(assert (=> b!3880655 (=> (not res!1572533) (not e!2401390))))

(declare-fun nullable!3949 (Regex!11321) Bool)

(assert (=> b!3880655 (= res!1572533 (not (nullable!3949 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))))

(declare-fun b!3880656 () Bool)

(assert (=> b!3880656 (= e!2401390 (not (= (tag!7276 (rule!9314 (_1!23394 (v!39131 lt!1354073)))) (String!46949 ""))))))

(assert (= (and d!1148463 res!1572532) b!3880655))

(assert (= (and b!3880655 res!1572533) b!3880656))

(declare-fun m!4439197 () Bool)

(assert (=> d!1148463 m!4439197))

(declare-fun m!4439199 () Bool)

(assert (=> b!3880655 m!4439199))

(assert (=> b!3880329 d!1148463))

(declare-fun d!1148465 () Bool)

(assert (=> d!1148465 (ruleValid!2364 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))

(declare-fun lt!1354177 () Unit!59356)

(declare-fun choose!23012 (LexerInterface!6005 Rule!12632 List!41413) Unit!59356)

(assert (=> d!1148465 (= lt!1354177 (choose!23012 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))) rules!2768))))

(declare-fun contains!8301 (List!41413 Rule!12632) Bool)

(assert (=> d!1148465 (contains!8301 rules!2768 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148465 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1444 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))) rules!2768) lt!1354177)))

(declare-fun bs!583746 () Bool)

(assert (= bs!583746 d!1148465))

(assert (=> bs!583746 m!4438803))

(declare-fun m!4439201 () Bool)

(assert (=> bs!583746 m!4439201))

(declare-fun m!4439203 () Bool)

(assert (=> bs!583746 m!4439203))

(assert (=> b!3880329 d!1148465))

(declare-fun d!1148467 () Bool)

(declare-fun fromListB!2159 (List!41411) BalanceConc!24848)

(assert (=> d!1148467 (= (seqFromList!4683 lt!1354075) (fromListB!2159 lt!1354075))))

(declare-fun bs!583747 () Bool)

(assert (= bs!583747 d!1148467))

(declare-fun m!4439205 () Bool)

(assert (=> bs!583747 m!4439205))

(assert (=> b!3880329 d!1148467))

(declare-fun d!1148469 () Bool)

(declare-fun list!15346 (Conc!12627) List!41411)

(assert (=> d!1148469 (= (list!15344 (charsOf!4240 (_1!23394 (v!39131 lt!1354073)))) (list!15346 (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun bs!583748 () Bool)

(assert (= bs!583748 d!1148469))

(declare-fun m!4439207 () Bool)

(assert (=> bs!583748 m!4439207))

(assert (=> b!3880329 d!1148469))

(declare-fun d!1148471 () Bool)

(declare-fun lt!1354180 () List!41411)

(assert (=> d!1148471 (= (++!10590 lt!1354075 lt!1354180) lt!1354072)))

(declare-fun e!2401395 () List!41411)

(assert (=> d!1148471 (= lt!1354180 e!2401395)))

(declare-fun c!674985 () Bool)

(assert (=> d!1148471 (= c!674985 ((_ is Cons!41287) lt!1354075))))

(assert (=> d!1148471 (>= (size!31004 lt!1354072) (size!31004 lt!1354075))))

(assert (=> d!1148471 (= (getSuffix!1966 lt!1354072 lt!1354075) lt!1354180)))

(declare-fun b!3880669 () Bool)

(assert (=> b!3880669 (= e!2401395 (getSuffix!1966 (tail!5957 lt!1354072) (t!315246 lt!1354075)))))

(declare-fun b!3880670 () Bool)

(assert (=> b!3880670 (= e!2401395 lt!1354072)))

(assert (= (and d!1148471 c!674985) b!3880669))

(assert (= (and d!1148471 (not c!674985)) b!3880670))

(declare-fun m!4439209 () Bool)

(assert (=> d!1148471 m!4439209))

(assert (=> d!1148471 m!4439051))

(assert (=> d!1148471 m!4438807))

(declare-fun m!4439211 () Bool)

(assert (=> b!3880669 m!4439211))

(assert (=> b!3880669 m!4439211))

(declare-fun m!4439213 () Bool)

(assert (=> b!3880669 m!4439213))

(assert (=> b!3880329 d!1148471))

(declare-fun d!1148473 () Bool)

(assert (=> d!1148473 (isPrefix!3511 lt!1354075 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))

(declare-fun lt!1354183 () Unit!59356)

(declare-fun choose!23013 (List!41411 List!41411) Unit!59356)

(assert (=> d!1148473 (= lt!1354183 (choose!23013 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148473 (= (lemmaConcatTwoListThenFirstIsPrefix!2374 lt!1354075 (_2!23394 (v!39131 lt!1354073))) lt!1354183)))

(declare-fun bs!583749 () Bool)

(assert (= bs!583749 d!1148473))

(assert (=> bs!583749 m!4438795))

(assert (=> bs!583749 m!4438795))

(declare-fun m!4439215 () Bool)

(assert (=> bs!583749 m!4439215))

(declare-fun m!4439217 () Bool)

(assert (=> bs!583749 m!4439217))

(assert (=> b!3880329 d!1148473))

(declare-fun d!1148475 () Bool)

(declare-fun lt!1354186 () BalanceConc!24848)

(assert (=> d!1148475 (= (list!15344 lt!1354186) (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148475 (= lt!1354186 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))))

(assert (=> d!1148475 (= (charsOf!4240 (_1!23394 (v!39131 lt!1354073))) lt!1354186)))

(declare-fun b_lambda!113241 () Bool)

(assert (=> (not b_lambda!113241) (not d!1148475)))

(declare-fun tb!225203 () Bool)

(declare-fun t!315316 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315316) tb!225203))

(declare-fun b!3880671 () Bool)

(declare-fun e!2401396 () Bool)

(declare-fun tp!1176638 () Bool)

(assert (=> b!3880671 (= e!2401396 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))) tp!1176638))))

(declare-fun result!274316 () Bool)

(assert (=> tb!225203 (= result!274316 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))) e!2401396))))

(assert (= tb!225203 b!3880671))

(declare-fun m!4439219 () Bool)

(assert (=> b!3880671 m!4439219))

(declare-fun m!4439221 () Bool)

(assert (=> tb!225203 m!4439221))

(assert (=> d!1148475 t!315316))

(declare-fun b_and!291141 () Bool)

(assert (= b_and!291105 (and (=> t!315316 result!274316) b_and!291141)))

(declare-fun tb!225205 () Bool)

(declare-fun t!315318 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315318) tb!225205))

(declare-fun result!274318 () Bool)

(assert (= result!274318 result!274316))

(assert (=> d!1148475 t!315318))

(declare-fun b_and!291143 () Bool)

(assert (= b_and!291107 (and (=> t!315318 result!274318) b_and!291143)))

(declare-fun tb!225207 () Bool)

(declare-fun t!315320 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315320) tb!225207))

(declare-fun result!274320 () Bool)

(assert (= result!274320 result!274316))

(assert (=> d!1148475 t!315320))

(declare-fun b_and!291145 () Bool)

(assert (= b_and!291109 (and (=> t!315320 result!274320) b_and!291145)))

(declare-fun m!4439223 () Bool)

(assert (=> d!1148475 m!4439223))

(declare-fun m!4439225 () Bool)

(assert (=> d!1148475 m!4439225))

(assert (=> b!3880329 d!1148475))

(declare-fun d!1148477 () Bool)

(declare-fun e!2401399 () Bool)

(assert (=> d!1148477 e!2401399))

(declare-fun c!674987 () Bool)

(declare-fun lt!1354189 () tuple2!40518)

(assert (=> d!1148477 (= c!674987 (> (size!31006 (_1!23393 lt!1354189)) 0))))

(declare-fun e!2401398 () tuple2!40518)

(assert (=> d!1148477 (= lt!1354189 e!2401398)))

(declare-fun c!674986 () Bool)

(declare-fun lt!1354187 () Option!8834)

(assert (=> d!1148477 (= c!674986 ((_ is Some!8833) lt!1354187))))

(assert (=> d!1148477 (= lt!1354187 (maxPrefix!3309 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148477 (= (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354073))) lt!1354189)))

(declare-fun b!3880672 () Bool)

(declare-fun lt!1354188 () tuple2!40518)

(assert (=> b!3880672 (= e!2401398 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354187)) (_1!23393 lt!1354188)) (_2!23393 lt!1354188)))))

(assert (=> b!3880672 (= lt!1354188 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354187))))))

(declare-fun b!3880673 () Bool)

(assert (=> b!3880673 (= e!2401398 (tuple2!40519 Nil!41288 (_2!23394 (v!39131 lt!1354073))))))

(declare-fun b!3880674 () Bool)

(assert (=> b!3880674 (= e!2401399 (= (_2!23393 lt!1354189) (_2!23394 (v!39131 lt!1354073))))))

(declare-fun b!3880675 () Bool)

(declare-fun e!2401397 () Bool)

(assert (=> b!3880675 (= e!2401399 e!2401397)))

(declare-fun res!1572534 () Bool)

(assert (=> b!3880675 (= res!1572534 (< (size!31004 (_2!23393 lt!1354189)) (size!31004 (_2!23394 (v!39131 lt!1354073)))))))

(assert (=> b!3880675 (=> (not res!1572534) (not e!2401397))))

(declare-fun b!3880676 () Bool)

(assert (=> b!3880676 (= e!2401397 (not (isEmpty!24524 (_1!23393 lt!1354189))))))

(assert (= (and d!1148477 c!674986) b!3880672))

(assert (= (and d!1148477 (not c!674986)) b!3880673))

(assert (= (and d!1148477 c!674987) b!3880675))

(assert (= (and d!1148477 (not c!674987)) b!3880674))

(assert (= (and b!3880675 res!1572534) b!3880676))

(declare-fun m!4439227 () Bool)

(assert (=> d!1148477 m!4439227))

(declare-fun m!4439229 () Bool)

(assert (=> d!1148477 m!4439229))

(declare-fun m!4439231 () Bool)

(assert (=> b!3880672 m!4439231))

(declare-fun m!4439233 () Bool)

(assert (=> b!3880675 m!4439233))

(assert (=> b!3880675 m!4439095))

(declare-fun m!4439235 () Bool)

(assert (=> b!3880676 m!4439235))

(assert (=> b!3880329 d!1148477))

(declare-fun d!1148479 () Bool)

(assert (=> d!1148479 (= (size!31003 (_1!23394 (v!39131 lt!1354073))) (size!31004 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073)))))))

(declare-fun Unit!59359 () Unit!59356)

(assert (=> d!1148479 (= (lemmaCharactersSize!1073 (_1!23394 (v!39131 lt!1354073))) Unit!59359)))

(declare-fun bs!583750 () Bool)

(assert (= bs!583750 d!1148479))

(assert (=> bs!583750 m!4438813))

(assert (=> b!3880329 d!1148479))

(declare-fun d!1148481 () Bool)

(declare-fun lt!1354190 () Int)

(assert (=> d!1148481 (>= lt!1354190 0)))

(declare-fun e!2401400 () Int)

(assert (=> d!1148481 (= lt!1354190 e!2401400)))

(declare-fun c!674988 () Bool)

(assert (=> d!1148481 (= c!674988 ((_ is Nil!41287) (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073)))))))

(assert (=> d!1148481 (= (size!31004 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073)))) lt!1354190)))

(declare-fun b!3880677 () Bool)

(assert (=> b!3880677 (= e!2401400 0)))

(declare-fun b!3880678 () Bool)

(assert (=> b!3880678 (= e!2401400 (+ 1 (size!31004 (t!315246 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073)))))))))

(assert (= (and d!1148481 c!674988) b!3880677))

(assert (= (and d!1148481 (not c!674988)) b!3880678))

(declare-fun m!4439237 () Bool)

(assert (=> b!3880678 m!4439237))

(assert (=> b!3880327 d!1148481))

(declare-fun b!3880679 () Bool)

(declare-fun e!2401403 () Bool)

(assert (=> b!3880679 (= e!2401403 (inv!17 (value!203490 (h!46708 suffixTokens!72))))))

(declare-fun b!3880680 () Bool)

(declare-fun e!2401401 () Bool)

(assert (=> b!3880680 (= e!2401401 e!2401403)))

(declare-fun c!674989 () Bool)

(assert (=> b!3880680 (= c!674989 ((_ is IntegerValue!19939) (value!203490 (h!46708 suffixTokens!72))))))

(declare-fun b!3880681 () Bool)

(declare-fun e!2401402 () Bool)

(assert (=> b!3880681 (= e!2401402 (inv!15 (value!203490 (h!46708 suffixTokens!72))))))

(declare-fun b!3880682 () Bool)

(declare-fun res!1572535 () Bool)

(assert (=> b!3880682 (=> res!1572535 e!2401402)))

(assert (=> b!3880682 (= res!1572535 (not ((_ is IntegerValue!19940) (value!203490 (h!46708 suffixTokens!72)))))))

(assert (=> b!3880682 (= e!2401403 e!2401402)))

(declare-fun b!3880683 () Bool)

(assert (=> b!3880683 (= e!2401401 (inv!16 (value!203490 (h!46708 suffixTokens!72))))))

(declare-fun d!1148483 () Bool)

(declare-fun c!674990 () Bool)

(assert (=> d!1148483 (= c!674990 ((_ is IntegerValue!19938) (value!203490 (h!46708 suffixTokens!72))))))

(assert (=> d!1148483 (= (inv!21 (value!203490 (h!46708 suffixTokens!72))) e!2401401)))

(assert (= (and d!1148483 c!674990) b!3880683))

(assert (= (and d!1148483 (not c!674990)) b!3880680))

(assert (= (and b!3880680 c!674989) b!3880679))

(assert (= (and b!3880680 (not c!674989)) b!3880682))

(assert (= (and b!3880682 (not res!1572535)) b!3880681))

(declare-fun m!4439239 () Bool)

(assert (=> b!3880679 m!4439239))

(declare-fun m!4439241 () Bool)

(assert (=> b!3880681 m!4439241))

(declare-fun m!4439243 () Bool)

(assert (=> b!3880683 m!4439243))

(assert (=> b!3880328 d!1148483))

(declare-fun d!1148485 () Bool)

(assert (=> d!1148485 (= (inv!55437 (tag!7276 (rule!9314 (h!46708 suffixTokens!72)))) (= (mod (str.len (value!203489 (tag!7276 (rule!9314 (h!46708 suffixTokens!72))))) 2) 0))))

(assert (=> b!3880317 d!1148485))

(declare-fun d!1148487 () Bool)

(declare-fun res!1572536 () Bool)

(declare-fun e!2401404 () Bool)

(assert (=> d!1148487 (=> (not res!1572536) (not e!2401404))))

(assert (=> d!1148487 (= res!1572536 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))))))

(assert (=> d!1148487 (= (inv!55440 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) e!2401404)))

(declare-fun b!3880684 () Bool)

(assert (=> b!3880684 (= e!2401404 (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))))))

(assert (= (and d!1148487 res!1572536) b!3880684))

(declare-fun m!4439245 () Bool)

(assert (=> d!1148487 m!4439245))

(declare-fun m!4439247 () Bool)

(assert (=> b!3880684 m!4439247))

(assert (=> b!3880317 d!1148487))

(declare-fun d!1148489 () Bool)

(declare-fun res!1572539 () Bool)

(declare-fun e!2401407 () Bool)

(assert (=> d!1148489 (=> (not res!1572539) (not e!2401407))))

(declare-fun rulesValid!2484 (LexerInterface!6005 List!41413) Bool)

(assert (=> d!1148489 (= res!1572539 (rulesValid!2484 thiss!20629 rules!2768))))

(assert (=> d!1148489 (= (rulesInvariant!5348 thiss!20629 rules!2768) e!2401407)))

(declare-fun b!3880687 () Bool)

(declare-datatypes ((List!41415 0))(
  ( (Nil!41291) (Cons!41291 (h!46711 String!46948) (t!315346 List!41415)) )
))
(declare-fun noDuplicateTag!2485 (LexerInterface!6005 List!41413 List!41415) Bool)

(assert (=> b!3880687 (= e!2401407 (noDuplicateTag!2485 thiss!20629 rules!2768 Nil!41291))))

(assert (= (and d!1148489 res!1572539) b!3880687))

(declare-fun m!4439249 () Bool)

(assert (=> d!1148489 m!4439249))

(declare-fun m!4439251 () Bool)

(assert (=> b!3880687 m!4439251))

(assert (=> b!3880326 d!1148489))

(declare-fun d!1148491 () Bool)

(assert (=> d!1148491 (= (isEmpty!24522 rules!2768) ((_ is Nil!41289) rules!2768))))

(assert (=> b!3880315 d!1148491))

(declare-fun b!3880707 () Bool)

(declare-fun res!1572554 () Bool)

(declare-fun e!2401416 () Bool)

(assert (=> b!3880707 (=> (not res!1572554) (not e!2401416))))

(declare-fun lt!1354203 () Option!8834)

(declare-fun get!13660 (Option!8834) tuple2!40520)

(assert (=> b!3880707 (= res!1572554 (= (value!203490 (_1!23394 (get!13660 lt!1354203))) (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun b!3880708 () Bool)

(declare-fun e!2401414 () Bool)

(assert (=> b!3880708 (= e!2401414 e!2401416)))

(declare-fun res!1572559 () Bool)

(assert (=> b!3880708 (=> (not res!1572559) (not e!2401416))))

(declare-fun isDefined!6897 (Option!8834) Bool)

(assert (=> b!3880708 (= res!1572559 (isDefined!6897 lt!1354203))))

(declare-fun call!282866 () Option!8834)

(declare-fun bm!282861 () Bool)

(declare-fun maxPrefixOneRule!2387 (LexerInterface!6005 Rule!12632 List!41411) Option!8834)

(assert (=> bm!282861 (= call!282866 (maxPrefixOneRule!2387 thiss!20629 (h!46709 rules!2768) lt!1354072))))

(declare-fun b!3880709 () Bool)

(declare-fun res!1572557 () Bool)

(assert (=> b!3880709 (=> (not res!1572557) (not e!2401416))))

(assert (=> b!3880709 (= res!1572557 (= (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))) (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203)))))))

(declare-fun b!3880710 () Bool)

(declare-fun e!2401415 () Option!8834)

(assert (=> b!3880710 (= e!2401415 call!282866)))

(declare-fun b!3880711 () Bool)

(declare-fun res!1572556 () Bool)

(assert (=> b!3880711 (=> (not res!1572556) (not e!2401416))))

(assert (=> b!3880711 (= res!1572556 (< (size!31004 (_2!23394 (get!13660 lt!1354203))) (size!31004 lt!1354072)))))

(declare-fun d!1148493 () Bool)

(assert (=> d!1148493 e!2401414))

(declare-fun res!1572558 () Bool)

(assert (=> d!1148493 (=> res!1572558 e!2401414)))

(declare-fun isEmpty!24526 (Option!8834) Bool)

(assert (=> d!1148493 (= res!1572558 (isEmpty!24526 lt!1354203))))

(assert (=> d!1148493 (= lt!1354203 e!2401415)))

(declare-fun c!674993 () Bool)

(assert (=> d!1148493 (= c!674993 (and ((_ is Cons!41289) rules!2768) ((_ is Nil!41289) (t!315248 rules!2768))))))

(declare-fun lt!1354201 () Unit!59356)

(declare-fun lt!1354205 () Unit!59356)

(assert (=> d!1148493 (= lt!1354201 lt!1354205)))

(assert (=> d!1148493 (isPrefix!3511 lt!1354072 lt!1354072)))

(declare-fun lemmaIsPrefixRefl!2220 (List!41411 List!41411) Unit!59356)

(assert (=> d!1148493 (= lt!1354205 (lemmaIsPrefixRefl!2220 lt!1354072 lt!1354072))))

(declare-fun rulesValidInductive!2298 (LexerInterface!6005 List!41413) Bool)

(assert (=> d!1148493 (rulesValidInductive!2298 thiss!20629 rules!2768)))

(assert (=> d!1148493 (= (maxPrefix!3309 thiss!20629 rules!2768 lt!1354072) lt!1354203)))

(declare-fun b!3880706 () Bool)

(declare-fun res!1572555 () Bool)

(assert (=> b!3880706 (=> (not res!1572555) (not e!2401416))))

(assert (=> b!3880706 (= res!1572555 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))) (_2!23394 (get!13660 lt!1354203))) lt!1354072))))

(declare-fun b!3880712 () Bool)

(assert (=> b!3880712 (= e!2401416 (contains!8301 rules!2768 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))

(declare-fun b!3880713 () Bool)

(declare-fun lt!1354204 () Option!8834)

(declare-fun lt!1354202 () Option!8834)

(assert (=> b!3880713 (= e!2401415 (ite (and ((_ is None!8833) lt!1354204) ((_ is None!8833) lt!1354202)) None!8833 (ite ((_ is None!8833) lt!1354202) lt!1354204 (ite ((_ is None!8833) lt!1354204) lt!1354202 (ite (>= (size!31003 (_1!23394 (v!39131 lt!1354204))) (size!31003 (_1!23394 (v!39131 lt!1354202)))) lt!1354204 lt!1354202)))))))

(assert (=> b!3880713 (= lt!1354204 call!282866)))

(assert (=> b!3880713 (= lt!1354202 (maxPrefix!3309 thiss!20629 (t!315248 rules!2768) lt!1354072))))

(declare-fun b!3880714 () Bool)

(declare-fun res!1572560 () Bool)

(assert (=> b!3880714 (=> (not res!1572560) (not e!2401416))))

(declare-fun matchR!5426 (Regex!11321 List!41411) Bool)

(assert (=> b!3880714 (= res!1572560 (matchR!5426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))

(assert (= (and d!1148493 c!674993) b!3880710))

(assert (= (and d!1148493 (not c!674993)) b!3880713))

(assert (= (or b!3880710 b!3880713) bm!282861))

(assert (= (and d!1148493 (not res!1572558)) b!3880708))

(assert (= (and b!3880708 res!1572559) b!3880709))

(assert (= (and b!3880709 res!1572557) b!3880711))

(assert (= (and b!3880711 res!1572556) b!3880706))

(assert (= (and b!3880706 res!1572555) b!3880707))

(assert (= (and b!3880707 res!1572554) b!3880714))

(assert (= (and b!3880714 res!1572560) b!3880712))

(declare-fun m!4439253 () Bool)

(assert (=> b!3880706 m!4439253))

(declare-fun m!4439255 () Bool)

(assert (=> b!3880706 m!4439255))

(assert (=> b!3880706 m!4439255))

(declare-fun m!4439257 () Bool)

(assert (=> b!3880706 m!4439257))

(assert (=> b!3880706 m!4439257))

(declare-fun m!4439259 () Bool)

(assert (=> b!3880706 m!4439259))

(declare-fun m!4439261 () Bool)

(assert (=> b!3880708 m!4439261))

(declare-fun m!4439263 () Bool)

(assert (=> b!3880713 m!4439263))

(assert (=> b!3880711 m!4439253))

(declare-fun m!4439265 () Bool)

(assert (=> b!3880711 m!4439265))

(assert (=> b!3880711 m!4439051))

(declare-fun m!4439267 () Bool)

(assert (=> bm!282861 m!4439267))

(assert (=> b!3880712 m!4439253))

(declare-fun m!4439269 () Bool)

(assert (=> b!3880712 m!4439269))

(assert (=> b!3880714 m!4439253))

(assert (=> b!3880714 m!4439255))

(assert (=> b!3880714 m!4439255))

(assert (=> b!3880714 m!4439257))

(assert (=> b!3880714 m!4439257))

(declare-fun m!4439271 () Bool)

(assert (=> b!3880714 m!4439271))

(assert (=> b!3880707 m!4439253))

(declare-fun m!4439273 () Bool)

(assert (=> b!3880707 m!4439273))

(assert (=> b!3880707 m!4439273))

(declare-fun m!4439275 () Bool)

(assert (=> b!3880707 m!4439275))

(assert (=> b!3880709 m!4439253))

(assert (=> b!3880709 m!4439255))

(assert (=> b!3880709 m!4439255))

(assert (=> b!3880709 m!4439257))

(declare-fun m!4439277 () Bool)

(assert (=> d!1148493 m!4439277))

(declare-fun m!4439279 () Bool)

(assert (=> d!1148493 m!4439279))

(declare-fun m!4439281 () Bool)

(assert (=> d!1148493 m!4439281))

(declare-fun m!4439283 () Bool)

(assert (=> d!1148493 m!4439283))

(assert (=> b!3880314 d!1148493))

(declare-fun b!3880727 () Bool)

(declare-fun e!2401419 () Bool)

(declare-fun tp!1176649 () Bool)

(assert (=> b!3880727 (= e!2401419 tp!1176649)))

(assert (=> b!3880313 (= tp!1176562 e!2401419)))

(declare-fun b!3880728 () Bool)

(declare-fun tp!1176650 () Bool)

(declare-fun tp!1176651 () Bool)

(assert (=> b!3880728 (= e!2401419 (and tp!1176650 tp!1176651))))

(declare-fun b!3880725 () Bool)

(assert (=> b!3880725 (= e!2401419 tp_is_empty!19613)))

(declare-fun b!3880726 () Bool)

(declare-fun tp!1176652 () Bool)

(declare-fun tp!1176653 () Bool)

(assert (=> b!3880726 (= e!2401419 (and tp!1176652 tp!1176653))))

(assert (= (and b!3880313 ((_ is ElementMatch!11321) (regex!6416 (h!46709 rules!2768)))) b!3880725))

(assert (= (and b!3880313 ((_ is Concat!17968) (regex!6416 (h!46709 rules!2768)))) b!3880726))

(assert (= (and b!3880313 ((_ is Star!11321) (regex!6416 (h!46709 rules!2768)))) b!3880727))

(assert (= (and b!3880313 ((_ is Union!11321) (regex!6416 (h!46709 rules!2768)))) b!3880728))

(declare-fun b!3880731 () Bool)

(declare-fun e!2401420 () Bool)

(declare-fun tp!1176654 () Bool)

(assert (=> b!3880731 (= e!2401420 tp!1176654)))

(assert (=> b!3880311 (= tp!1176554 e!2401420)))

(declare-fun b!3880732 () Bool)

(declare-fun tp!1176655 () Bool)

(declare-fun tp!1176656 () Bool)

(assert (=> b!3880732 (= e!2401420 (and tp!1176655 tp!1176656))))

(declare-fun b!3880729 () Bool)

(assert (=> b!3880729 (= e!2401420 tp_is_empty!19613)))

(declare-fun b!3880730 () Bool)

(declare-fun tp!1176657 () Bool)

(declare-fun tp!1176658 () Bool)

(assert (=> b!3880730 (= e!2401420 (and tp!1176657 tp!1176658))))

(assert (= (and b!3880311 ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (h!46708 prefixTokens!80))))) b!3880729))

(assert (= (and b!3880311 ((_ is Concat!17968) (regex!6416 (rule!9314 (h!46708 prefixTokens!80))))) b!3880730))

(assert (= (and b!3880311 ((_ is Star!11321) (regex!6416 (rule!9314 (h!46708 prefixTokens!80))))) b!3880731))

(assert (= (and b!3880311 ((_ is Union!11321) (regex!6416 (rule!9314 (h!46708 prefixTokens!80))))) b!3880732))

(declare-fun b!3880743 () Bool)

(declare-fun b_free!105157 () Bool)

(declare-fun b_next!105861 () Bool)

(assert (=> b!3880743 (= b_free!105157 (not b_next!105861))))

(declare-fun t!315322 () Bool)

(declare-fun tb!225209 () Bool)

(assert (=> (and b!3880743 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315322) tb!225209))

(declare-fun result!274326 () Bool)

(assert (= result!274326 result!274270))

(assert (=> d!1148441 t!315322))

(declare-fun b_and!291147 () Bool)

(declare-fun tp!1176669 () Bool)

(assert (=> b!3880743 (= tp!1176669 (and (=> t!315322 result!274326) b_and!291147))))

(declare-fun b_free!105159 () Bool)

(declare-fun b_next!105863 () Bool)

(assert (=> b!3880743 (= b_free!105159 (not b_next!105863))))

(declare-fun tb!225211 () Bool)

(declare-fun t!315324 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315324) tb!225211))

(declare-fun result!274328 () Bool)

(assert (= result!274328 result!274250))

(assert (=> b!3880467 t!315324))

(declare-fun tb!225213 () Bool)

(declare-fun t!315326 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315326) tb!225213))

(declare-fun result!274330 () Bool)

(assert (= result!274330 result!274258))

(assert (=> b!3880486 t!315326))

(declare-fun t!315328 () Bool)

(declare-fun tb!225215 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315328) tb!225215))

(declare-fun result!274332 () Bool)

(assert (= result!274332 result!274316))

(assert (=> d!1148475 t!315328))

(declare-fun tp!1176670 () Bool)

(declare-fun b_and!291149 () Bool)

(assert (=> b!3880743 (= tp!1176670 (and (=> t!315324 result!274328) (=> t!315326 result!274330) (=> t!315328 result!274332) b_and!291149))))

(declare-fun e!2401430 () Bool)

(assert (=> b!3880743 (= e!2401430 (and tp!1176669 tp!1176670))))

(declare-fun b!3880742 () Bool)

(declare-fun e!2401432 () Bool)

(declare-fun tp!1176667 () Bool)

(assert (=> b!3880742 (= e!2401432 (and tp!1176667 (inv!55437 (tag!7276 (h!46709 (t!315248 rules!2768)))) (inv!55440 (transformation!6416 (h!46709 (t!315248 rules!2768)))) e!2401430))))

(declare-fun b!3880741 () Bool)

(declare-fun e!2401431 () Bool)

(declare-fun tp!1176668 () Bool)

(assert (=> b!3880741 (= e!2401431 (and e!2401432 tp!1176668))))

(assert (=> b!3880310 (= tp!1176558 e!2401431)))

(assert (= b!3880742 b!3880743))

(assert (= b!3880741 b!3880742))

(assert (= (and b!3880310 ((_ is Cons!41289) (t!315248 rules!2768))) b!3880741))

(declare-fun m!4439285 () Bool)

(assert (=> b!3880742 m!4439285))

(declare-fun m!4439287 () Bool)

(assert (=> b!3880742 m!4439287))

(declare-fun b!3880757 () Bool)

(declare-fun b_free!105161 () Bool)

(declare-fun b_next!105865 () Bool)

(assert (=> b!3880757 (= b_free!105161 (not b_next!105865))))

(declare-fun t!315330 () Bool)

(declare-fun tb!225217 () Bool)

(assert (=> (and b!3880757 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315330) tb!225217))

(declare-fun result!274336 () Bool)

(assert (= result!274336 result!274270))

(assert (=> d!1148441 t!315330))

(declare-fun tp!1176683 () Bool)

(declare-fun b_and!291151 () Bool)

(assert (=> b!3880757 (= tp!1176683 (and (=> t!315330 result!274336) b_and!291151))))

(declare-fun b_free!105163 () Bool)

(declare-fun b_next!105867 () Bool)

(assert (=> b!3880757 (= b_free!105163 (not b_next!105867))))

(declare-fun t!315332 () Bool)

(declare-fun tb!225219 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315332) tb!225219))

(declare-fun result!274338 () Bool)

(assert (= result!274338 result!274250))

(assert (=> b!3880467 t!315332))

(declare-fun t!315334 () Bool)

(declare-fun tb!225221 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315334) tb!225221))

(declare-fun result!274340 () Bool)

(assert (= result!274340 result!274258))

(assert (=> b!3880486 t!315334))

(declare-fun tb!225223 () Bool)

(declare-fun t!315336 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315336) tb!225223))

(declare-fun result!274342 () Bool)

(assert (= result!274342 result!274316))

(assert (=> d!1148475 t!315336))

(declare-fun tp!1176684 () Bool)

(declare-fun b_and!291153 () Bool)

(assert (=> b!3880757 (= tp!1176684 (and (=> t!315332 result!274338) (=> t!315334 result!274340) (=> t!315336 result!274342) b_and!291153))))

(declare-fun e!2401445 () Bool)

(declare-fun e!2401448 () Bool)

(declare-fun tp!1176681 () Bool)

(declare-fun b!3880756 () Bool)

(assert (=> b!3880756 (= e!2401445 (and tp!1176681 (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) e!2401448))))

(declare-fun tp!1176685 () Bool)

(declare-fun e!2401449 () Bool)

(declare-fun b!3880754 () Bool)

(declare-fun e!2401450 () Bool)

(assert (=> b!3880754 (= e!2401450 (and (inv!55441 (h!46708 (t!315247 suffixTokens!72))) e!2401449 tp!1176685))))

(declare-fun b!3880755 () Bool)

(declare-fun tp!1176682 () Bool)

(assert (=> b!3880755 (= e!2401449 (and (inv!21 (value!203490 (h!46708 (t!315247 suffixTokens!72)))) e!2401445 tp!1176682))))

(assert (=> b!3880331 (= tp!1176553 e!2401450)))

(assert (=> b!3880757 (= e!2401448 (and tp!1176683 tp!1176684))))

(assert (= b!3880756 b!3880757))

(assert (= b!3880755 b!3880756))

(assert (= b!3880754 b!3880755))

(assert (= (and b!3880331 ((_ is Cons!41288) (t!315247 suffixTokens!72))) b!3880754))

(declare-fun m!4439289 () Bool)

(assert (=> b!3880756 m!4439289))

(declare-fun m!4439291 () Bool)

(assert (=> b!3880756 m!4439291))

(declare-fun m!4439293 () Bool)

(assert (=> b!3880754 m!4439293))

(declare-fun m!4439295 () Bool)

(assert (=> b!3880755 m!4439295))

(declare-fun b!3880761 () Bool)

(declare-fun b_free!105165 () Bool)

(declare-fun b_next!105869 () Bool)

(assert (=> b!3880761 (= b_free!105165 (not b_next!105869))))

(declare-fun tb!225225 () Bool)

(declare-fun t!315338 () Bool)

(assert (=> (and b!3880761 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315338) tb!225225))

(declare-fun result!274344 () Bool)

(assert (= result!274344 result!274270))

(assert (=> d!1148441 t!315338))

(declare-fun b_and!291155 () Bool)

(declare-fun tp!1176688 () Bool)

(assert (=> b!3880761 (= tp!1176688 (and (=> t!315338 result!274344) b_and!291155))))

(declare-fun b_free!105167 () Bool)

(declare-fun b_next!105871 () Bool)

(assert (=> b!3880761 (= b_free!105167 (not b_next!105871))))

(declare-fun t!315340 () Bool)

(declare-fun tb!225227 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315340) tb!225227))

(declare-fun result!274346 () Bool)

(assert (= result!274346 result!274250))

(assert (=> b!3880467 t!315340))

(declare-fun t!315342 () Bool)

(declare-fun tb!225229 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315342) tb!225229))

(declare-fun result!274348 () Bool)

(assert (= result!274348 result!274258))

(assert (=> b!3880486 t!315342))

(declare-fun tb!225231 () Bool)

(declare-fun t!315344 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315344) tb!225231))

(declare-fun result!274350 () Bool)

(assert (= result!274350 result!274316))

(assert (=> d!1148475 t!315344))

(declare-fun b_and!291157 () Bool)

(declare-fun tp!1176689 () Bool)

(assert (=> b!3880761 (= tp!1176689 (and (=> t!315340 result!274346) (=> t!315342 result!274348) (=> t!315344 result!274350) b_and!291157))))

(declare-fun e!2401451 () Bool)

(declare-fun b!3880760 () Bool)

(declare-fun tp!1176686 () Bool)

(declare-fun e!2401454 () Bool)

(assert (=> b!3880760 (= e!2401451 (and tp!1176686 (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) e!2401454))))

(declare-fun e!2401455 () Bool)

(declare-fun b!3880758 () Bool)

(declare-fun tp!1176690 () Bool)

(declare-fun e!2401456 () Bool)

(assert (=> b!3880758 (= e!2401456 (and (inv!55441 (h!46708 (t!315247 prefixTokens!80))) e!2401455 tp!1176690))))

(declare-fun b!3880759 () Bool)

(declare-fun tp!1176687 () Bool)

(assert (=> b!3880759 (= e!2401455 (and (inv!21 (value!203490 (h!46708 (t!315247 prefixTokens!80)))) e!2401451 tp!1176687))))

(assert (=> b!3880330 (= tp!1176564 e!2401456)))

(assert (=> b!3880761 (= e!2401454 (and tp!1176688 tp!1176689))))

(assert (= b!3880760 b!3880761))

(assert (= b!3880759 b!3880760))

(assert (= b!3880758 b!3880759))

(assert (= (and b!3880330 ((_ is Cons!41288) (t!315247 prefixTokens!80))) b!3880758))

(declare-fun m!4439297 () Bool)

(assert (=> b!3880760 m!4439297))

(declare-fun m!4439299 () Bool)

(assert (=> b!3880760 m!4439299))

(declare-fun m!4439301 () Bool)

(assert (=> b!3880758 m!4439301))

(declare-fun m!4439303 () Bool)

(assert (=> b!3880759 m!4439303))

(declare-fun b!3880766 () Bool)

(declare-fun e!2401459 () Bool)

(declare-fun tp!1176693 () Bool)

(assert (=> b!3880766 (= e!2401459 (and tp_is_empty!19613 tp!1176693))))

(assert (=> b!3880319 (= tp!1176548 e!2401459)))

(assert (= (and b!3880319 ((_ is Cons!41287) (originalCharacters!7016 (h!46708 prefixTokens!80)))) b!3880766))

(declare-fun b!3880767 () Bool)

(declare-fun e!2401460 () Bool)

(declare-fun tp!1176694 () Bool)

(assert (=> b!3880767 (= e!2401460 (and tp_is_empty!19613 tp!1176694))))

(assert (=> b!3880309 (= tp!1176552 e!2401460)))

(assert (= (and b!3880309 ((_ is Cons!41287) (t!315246 suffixResult!91))) b!3880767))

(declare-fun b!3880768 () Bool)

(declare-fun e!2401461 () Bool)

(declare-fun tp!1176695 () Bool)

(assert (=> b!3880768 (= e!2401461 (and tp_is_empty!19613 tp!1176695))))

(assert (=> b!3880318 (= tp!1176559 e!2401461)))

(assert (= (and b!3880318 ((_ is Cons!41287) (t!315246 prefix!426))) b!3880768))

(declare-fun b!3880769 () Bool)

(declare-fun e!2401462 () Bool)

(declare-fun tp!1176696 () Bool)

(assert (=> b!3880769 (= e!2401462 (and tp_is_empty!19613 tp!1176696))))

(assert (=> b!3880328 (= tp!1176560 e!2401462)))

(assert (= (and b!3880328 ((_ is Cons!41287) (originalCharacters!7016 (h!46708 suffixTokens!72)))) b!3880769))

(declare-fun b!3880772 () Bool)

(declare-fun e!2401463 () Bool)

(declare-fun tp!1176697 () Bool)

(assert (=> b!3880772 (= e!2401463 tp!1176697)))

(assert (=> b!3880317 (= tp!1176563 e!2401463)))

(declare-fun b!3880773 () Bool)

(declare-fun tp!1176698 () Bool)

(declare-fun tp!1176699 () Bool)

(assert (=> b!3880773 (= e!2401463 (and tp!1176698 tp!1176699))))

(declare-fun b!3880770 () Bool)

(assert (=> b!3880770 (= e!2401463 tp_is_empty!19613)))

(declare-fun b!3880771 () Bool)

(declare-fun tp!1176700 () Bool)

(declare-fun tp!1176701 () Bool)

(assert (=> b!3880771 (= e!2401463 (and tp!1176700 tp!1176701))))

(assert (= (and b!3880317 ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (h!46708 suffixTokens!72))))) b!3880770))

(assert (= (and b!3880317 ((_ is Concat!17968) (regex!6416 (rule!9314 (h!46708 suffixTokens!72))))) b!3880771))

(assert (= (and b!3880317 ((_ is Star!11321) (regex!6416 (rule!9314 (h!46708 suffixTokens!72))))) b!3880772))

(assert (= (and b!3880317 ((_ is Union!11321) (regex!6416 (rule!9314 (h!46708 suffixTokens!72))))) b!3880773))

(declare-fun b!3880774 () Bool)

(declare-fun e!2401464 () Bool)

(declare-fun tp!1176702 () Bool)

(assert (=> b!3880774 (= e!2401464 (and tp_is_empty!19613 tp!1176702))))

(assert (=> b!3880316 (= tp!1176561 e!2401464)))

(assert (= (and b!3880316 ((_ is Cons!41287) (t!315246 suffix!1176))) b!3880774))

(declare-fun b_lambda!113243 () Bool)

(assert (= b_lambda!113227 (or (and b!3880757 b_free!105163 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (and b!3880743 b_free!105159 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (and b!3880322 b_free!105139 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (and b!3880325 b_free!105135 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (and b!3880761 b_free!105167 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (and b!3880321 b_free!105143) b_lambda!113243)))

(declare-fun b_lambda!113245 () Bool)

(assert (= b_lambda!113229 (or (and b!3880743 b_free!105159 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))))) (and b!3880761 b_free!105167 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))))) (and b!3880321 b_free!105143 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))))) (and b!3880757 b_free!105163 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))))) (and b!3880322 b_free!105139) (and b!3880325 b_free!105135 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b_lambda!113245)))

(check-sat (not d!1148461) (not b!3880728) (not b_lambda!113233) (not b!3880741) (not d!1148369) (not b!3880512) (not b_next!105839) (not b!3880486) (not b!3880758) (not b!3880754) (not d!1148425) (not d!1148487) b_and!291119 (not b!3880707) (not b!3880756) (not d!1148463) (not b!3880468) (not b!3880767) (not b!3880711) (not d!1148403) (not d!1148467) (not b!3880727) (not b!3880755) (not b_next!105843) (not b!3880521) (not b!3880524) (not b_lambda!113241) (not b!3880678) (not b!3880712) (not b!3880773) (not b!3880516) b_and!291147 (not b!3880467) (not b!3880669) (not d!1148355) (not d!1148439) (not b!3880675) (not b!3880684) (not b!3880732) b_and!291143 (not b!3880708) (not d!1148371) (not tb!225203) (not d!1148435) (not b_next!105865) (not b!3880679) (not tb!225155) (not b!3880602) (not b!3880681) (not b!3880440) (not b!3880547) (not b!3880726) (not b!3880769) (not b!3880768) (not b!3880759) (not b!3880483) (not d!1148477) (not d!1148443) (not b!3880760) (not b!3880490) (not b!3880342) (not b_next!105837) (not d!1148469) (not d!1148493) tp_is_empty!19613 (not b!3880683) (not tb!225149) (not b_next!105841) (not d!1148489) (not b!3880774) (not b!3880714) (not d!1148471) (not d!1148475) (not b!3880709) (not d!1148479) b_and!291149 (not b!3880520) (not b!3880444) (not b!3880517) (not b!3880443) b_and!291157 (not d!1148473) (not b!3880604) (not b!3880487) b_and!291141 b_and!291145 (not b!3880713) (not b!3880687) (not b_next!105845) b_and!291153 (not b!3880567) (not b_lambda!113245) b_and!291151 (not b!3880348) (not b!3880343) (not b_lambda!113243) (not b!3880671) (not b!3880731) (not b!3880514) (not b!3880706) b_and!291117 (not b_next!105871) (not b_next!105847) (not b!3880523) (not b!3880676) (not b_next!105867) (not d!1148365) (not b!3880772) (not b!3880672) (not tb!225167) (not b!3880766) (not d!1148465) (not b!3880771) (not b!3880548) b_and!291155 (not b_next!105869) (not b!3880536) (not b!3880603) (not b!3880347) (not b!3880655) (not b!3880742) (not b!3880535) b_and!291121 (not bm!282861) (not b_next!105863) (not b_next!105861) (not d!1148437) (not b!3880730))
(check-sat (not b_next!105839) b_and!291119 (not b_next!105843) b_and!291147 b_and!291143 (not b_next!105865) b_and!291149 b_and!291151 (not b_next!105867) b_and!291121 (not b_next!105837) (not b_next!105841) b_and!291157 b_and!291141 b_and!291145 (not b_next!105845) b_and!291153 b_and!291117 (not b_next!105871) (not b_next!105847) b_and!291155 (not b_next!105869) (not b_next!105863) (not b_next!105861))
(get-model)

(declare-fun d!1148523 () Bool)

(declare-fun e!2401473 () Bool)

(assert (=> d!1148523 e!2401473))

(declare-fun res!1572567 () Bool)

(assert (=> d!1148523 (=> (not res!1572567) (not e!2401473))))

(declare-fun lt!1354210 () List!41411)

(assert (=> d!1148523 (= res!1572567 (= (content!6169 lt!1354210) ((_ map or) (content!6169 (t!315246 prefix!426)) (content!6169 suffix!1176))))))

(declare-fun e!2401472 () List!41411)

(assert (=> d!1148523 (= lt!1354210 e!2401472)))

(declare-fun c!674996 () Bool)

(assert (=> d!1148523 (= c!674996 ((_ is Nil!41287) (t!315246 prefix!426)))))

(assert (=> d!1148523 (= (++!10590 (t!315246 prefix!426) suffix!1176) lt!1354210)))

(declare-fun b!3880787 () Bool)

(assert (=> b!3880787 (= e!2401472 (Cons!41287 (h!46707 (t!315246 prefix!426)) (++!10590 (t!315246 (t!315246 prefix!426)) suffix!1176)))))

(declare-fun b!3880788 () Bool)

(declare-fun res!1572568 () Bool)

(assert (=> b!3880788 (=> (not res!1572568) (not e!2401473))))

(assert (=> b!3880788 (= res!1572568 (= (size!31004 lt!1354210) (+ (size!31004 (t!315246 prefix!426)) (size!31004 suffix!1176))))))

(declare-fun b!3880789 () Bool)

(assert (=> b!3880789 (= e!2401473 (or (not (= suffix!1176 Nil!41287)) (= lt!1354210 (t!315246 prefix!426))))))

(declare-fun b!3880786 () Bool)

(assert (=> b!3880786 (= e!2401472 suffix!1176)))

(assert (= (and d!1148523 c!674996) b!3880786))

(assert (= (and d!1148523 (not c!674996)) b!3880787))

(assert (= (and d!1148523 res!1572567) b!3880788))

(assert (= (and b!3880788 res!1572568) b!3880789))

(declare-fun m!4439343 () Bool)

(assert (=> d!1148523 m!4439343))

(declare-fun m!4439345 () Bool)

(assert (=> d!1148523 m!4439345))

(assert (=> d!1148523 m!4439073))

(declare-fun m!4439347 () Bool)

(assert (=> b!3880787 m!4439347))

(declare-fun m!4439349 () Bool)

(assert (=> b!3880788 m!4439349))

(declare-fun m!4439351 () Bool)

(assert (=> b!3880788 m!4439351))

(assert (=> b!3880788 m!4438957))

(assert (=> b!3880535 d!1148523))

(declare-fun d!1148525 () Bool)

(declare-fun lt!1354213 () Int)

(assert (=> d!1148525 (>= lt!1354213 0)))

(declare-fun e!2401476 () Int)

(assert (=> d!1148525 (= lt!1354213 e!2401476)))

(declare-fun c!674999 () Bool)

(assert (=> d!1148525 (= c!674999 ((_ is Nil!41288) lt!1354088))))

(assert (=> d!1148525 (= (size!31006 lt!1354088) lt!1354213)))

(declare-fun b!3880794 () Bool)

(assert (=> b!3880794 (= e!2401476 0)))

(declare-fun b!3880795 () Bool)

(assert (=> b!3880795 (= e!2401476 (+ 1 (size!31006 (t!315247 lt!1354088))))))

(assert (= (and d!1148525 c!674999) b!3880794))

(assert (= (and d!1148525 (not c!674999)) b!3880795))

(declare-fun m!4439353 () Bool)

(assert (=> b!3880795 m!4439353))

(assert (=> b!3880343 d!1148525))

(declare-fun d!1148527 () Bool)

(declare-fun lt!1354214 () Int)

(assert (=> d!1148527 (>= lt!1354214 0)))

(declare-fun e!2401477 () Int)

(assert (=> d!1148527 (= lt!1354214 e!2401477)))

(declare-fun c!675000 () Bool)

(assert (=> d!1148527 (= c!675000 ((_ is Nil!41288) (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))

(assert (=> d!1148527 (= (size!31006 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) lt!1354214)))

(declare-fun b!3880796 () Bool)

(assert (=> b!3880796 (= e!2401477 0)))

(declare-fun b!3880797 () Bool)

(assert (=> b!3880797 (= e!2401477 (+ 1 (size!31006 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))))

(assert (= (and d!1148527 c!675000) b!3880796))

(assert (= (and d!1148527 (not c!675000)) b!3880797))

(declare-fun m!4439355 () Bool)

(assert (=> b!3880797 m!4439355))

(assert (=> b!3880343 d!1148527))

(declare-fun d!1148529 () Bool)

(declare-fun lt!1354215 () Int)

(assert (=> d!1148529 (>= lt!1354215 0)))

(declare-fun e!2401478 () Int)

(assert (=> d!1148529 (= lt!1354215 e!2401478)))

(declare-fun c!675001 () Bool)

(assert (=> d!1148529 (= c!675001 ((_ is Nil!41288) (_1!23393 lt!1354074)))))

(assert (=> d!1148529 (= (size!31006 (_1!23393 lt!1354074)) lt!1354215)))

(declare-fun b!3880798 () Bool)

(assert (=> b!3880798 (= e!2401478 0)))

(declare-fun b!3880799 () Bool)

(assert (=> b!3880799 (= e!2401478 (+ 1 (size!31006 (t!315247 (_1!23393 lt!1354074)))))))

(assert (= (and d!1148529 c!675001) b!3880798))

(assert (= (and d!1148529 (not c!675001)) b!3880799))

(declare-fun m!4439357 () Bool)

(assert (=> b!3880799 m!4439357))

(assert (=> b!3880343 d!1148529))

(declare-fun d!1148531 () Bool)

(assert (=> d!1148531 (= (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (= (mod (str.len (value!203489 (tag!7276 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3880756 d!1148531))

(declare-fun d!1148533 () Bool)

(declare-fun res!1572569 () Bool)

(declare-fun e!2401479 () Bool)

(assert (=> d!1148533 (=> (not res!1572569) (not e!2401479))))

(assert (=> d!1148533 (= res!1572569 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))))))

(assert (=> d!1148533 (= (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) e!2401479)))

(declare-fun b!3880800 () Bool)

(assert (=> b!3880800 (= e!2401479 (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))))))

(assert (= (and d!1148533 res!1572569) b!3880800))

(declare-fun m!4439359 () Bool)

(assert (=> d!1148533 m!4439359))

(declare-fun m!4439361 () Bool)

(assert (=> b!3880800 m!4439361))

(assert (=> b!3880756 d!1148533))

(declare-fun d!1148535 () Bool)

(declare-fun c!675004 () Bool)

(assert (=> d!1148535 (= c!675004 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))))))

(declare-fun e!2401484 () Bool)

(assert (=> d!1148535 (= (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))) e!2401484)))

(declare-fun b!3880807 () Bool)

(declare-fun inv!55448 (Conc!12627) Bool)

(assert (=> b!3880807 (= e!2401484 (inv!55448 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))))))

(declare-fun b!3880808 () Bool)

(declare-fun e!2401485 () Bool)

(assert (=> b!3880808 (= e!2401484 e!2401485)))

(declare-fun res!1572572 () Bool)

(assert (=> b!3880808 (= res!1572572 (not ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))))))

(assert (=> b!3880808 (=> res!1572572 e!2401485)))

(declare-fun b!3880809 () Bool)

(declare-fun inv!55449 (Conc!12627) Bool)

(assert (=> b!3880809 (= e!2401485 (inv!55449 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))))))

(assert (= (and d!1148535 c!675004) b!3880807))

(assert (= (and d!1148535 (not c!675004)) b!3880808))

(assert (= (and b!3880808 (not res!1572572)) b!3880809))

(declare-fun m!4439363 () Bool)

(assert (=> b!3880807 m!4439363))

(declare-fun m!4439365 () Bool)

(assert (=> b!3880809 m!4439365))

(assert (=> b!3880671 d!1148535))

(declare-fun d!1148537 () Bool)

(assert (=> d!1148537 (= (isEmpty!24524 (_1!23393 lt!1354189)) ((_ is Nil!41288) (_1!23393 lt!1354189)))))

(assert (=> b!3880676 d!1148537))

(declare-fun d!1148539 () Bool)

(declare-fun res!1572573 () Bool)

(declare-fun e!2401486 () Bool)

(assert (=> d!1148539 (=> (not res!1572573) (not e!2401486))))

(assert (=> d!1148539 (= res!1572573 (not (isEmpty!24523 (originalCharacters!7016 (h!46708 (t!315247 suffixTokens!72))))))))

(assert (=> d!1148539 (= (inv!55441 (h!46708 (t!315247 suffixTokens!72))) e!2401486)))

(declare-fun b!3880810 () Bool)

(declare-fun res!1572574 () Bool)

(assert (=> b!3880810 (=> (not res!1572574) (not e!2401486))))

(assert (=> b!3880810 (= res!1572574 (= (originalCharacters!7016 (h!46708 (t!315247 suffixTokens!72))) (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))))

(declare-fun b!3880811 () Bool)

(assert (=> b!3880811 (= e!2401486 (= (size!31003 (h!46708 (t!315247 suffixTokens!72))) (size!31004 (originalCharacters!7016 (h!46708 (t!315247 suffixTokens!72))))))))

(assert (= (and d!1148539 res!1572573) b!3880810))

(assert (= (and b!3880810 res!1572574) b!3880811))

(declare-fun b_lambda!113249 () Bool)

(assert (=> (not b_lambda!113249) (not b!3880810)))

(declare-fun t!315360 () Bool)

(declare-fun tb!225245 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315360) tb!225245))

(declare-fun b!3880812 () Bool)

(declare-fun e!2401487 () Bool)

(declare-fun tp!1176704 () Bool)

(assert (=> b!3880812 (= e!2401487 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (value!203490 (h!46708 (t!315247 suffixTokens!72)))))) tp!1176704))))

(declare-fun result!274366 () Bool)

(assert (=> tb!225245 (= result!274366 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (value!203490 (h!46708 (t!315247 suffixTokens!72))))) e!2401487))))

(assert (= tb!225245 b!3880812))

(declare-fun m!4439367 () Bool)

(assert (=> b!3880812 m!4439367))

(declare-fun m!4439369 () Bool)

(assert (=> tb!225245 m!4439369))

(assert (=> b!3880810 t!315360))

(declare-fun b_and!291171 () Bool)

(assert (= b_and!291149 (and (=> t!315360 result!274366) b_and!291171)))

(declare-fun tb!225247 () Bool)

(declare-fun t!315362 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315362) tb!225247))

(declare-fun result!274368 () Bool)

(assert (= result!274368 result!274366))

(assert (=> b!3880810 t!315362))

(declare-fun b_and!291173 () Bool)

(assert (= b_and!291141 (and (=> t!315362 result!274368) b_and!291173)))

(declare-fun t!315364 () Bool)

(declare-fun tb!225249 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315364) tb!225249))

(declare-fun result!274370 () Bool)

(assert (= result!274370 result!274366))

(assert (=> b!3880810 t!315364))

(declare-fun b_and!291175 () Bool)

(assert (= b_and!291153 (and (=> t!315364 result!274370) b_and!291175)))

(declare-fun tb!225251 () Bool)

(declare-fun t!315366 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315366) tb!225251))

(declare-fun result!274372 () Bool)

(assert (= result!274372 result!274366))

(assert (=> b!3880810 t!315366))

(declare-fun b_and!291177 () Bool)

(assert (= b_and!291157 (and (=> t!315366 result!274372) b_and!291177)))

(declare-fun t!315368 () Bool)

(declare-fun tb!225253 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315368) tb!225253))

(declare-fun result!274374 () Bool)

(assert (= result!274374 result!274366))

(assert (=> b!3880810 t!315368))

(declare-fun b_and!291179 () Bool)

(assert (= b_and!291145 (and (=> t!315368 result!274374) b_and!291179)))

(declare-fun t!315370 () Bool)

(declare-fun tb!225255 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315370) tb!225255))

(declare-fun result!274376 () Bool)

(assert (= result!274376 result!274366))

(assert (=> b!3880810 t!315370))

(declare-fun b_and!291181 () Bool)

(assert (= b_and!291143 (and (=> t!315370 result!274376) b_and!291181)))

(declare-fun m!4439371 () Bool)

(assert (=> d!1148539 m!4439371))

(declare-fun m!4439373 () Bool)

(assert (=> b!3880810 m!4439373))

(assert (=> b!3880810 m!4439373))

(declare-fun m!4439375 () Bool)

(assert (=> b!3880810 m!4439375))

(declare-fun m!4439377 () Bool)

(assert (=> b!3880811 m!4439377))

(assert (=> b!3880754 d!1148539))

(declare-fun d!1148541 () Bool)

(declare-fun lt!1354216 () Int)

(assert (=> d!1148541 (>= lt!1354216 0)))

(declare-fun e!2401488 () Int)

(assert (=> d!1148541 (= lt!1354216 e!2401488)))

(declare-fun c!675005 () Bool)

(assert (=> d!1148541 (= c!675005 ((_ is Nil!41287) lt!1354157))))

(assert (=> d!1148541 (= (size!31004 lt!1354157) lt!1354216)))

(declare-fun b!3880813 () Bool)

(assert (=> b!3880813 (= e!2401488 0)))

(declare-fun b!3880814 () Bool)

(assert (=> b!3880814 (= e!2401488 (+ 1 (size!31004 (t!315246 lt!1354157))))))

(assert (= (and d!1148541 c!675005) b!3880813))

(assert (= (and d!1148541 (not c!675005)) b!3880814))

(declare-fun m!4439379 () Bool)

(assert (=> b!3880814 m!4439379))

(assert (=> b!3880548 d!1148541))

(assert (=> b!3880548 d!1148445))

(declare-fun d!1148543 () Bool)

(declare-fun lt!1354217 () Int)

(assert (=> d!1148543 (>= lt!1354217 0)))

(declare-fun e!2401489 () Int)

(assert (=> d!1148543 (= lt!1354217 e!2401489)))

(declare-fun c!675006 () Bool)

(assert (=> d!1148543 (= c!675006 ((_ is Nil!41287) (_2!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148543 (= (size!31004 (_2!23394 (v!39131 lt!1354073))) lt!1354217)))

(declare-fun b!3880815 () Bool)

(assert (=> b!3880815 (= e!2401489 0)))

(declare-fun b!3880816 () Bool)

(assert (=> b!3880816 (= e!2401489 (+ 1 (size!31004 (t!315246 (_2!23394 (v!39131 lt!1354073))))))))

(assert (= (and d!1148543 c!675006) b!3880815))

(assert (= (and d!1148543 (not c!675006)) b!3880816))

(declare-fun m!4439381 () Bool)

(assert (=> b!3880816 m!4439381))

(assert (=> b!3880548 d!1148543))

(declare-fun d!1148545 () Bool)

(declare-fun lt!1354218 () Int)

(assert (=> d!1148545 (>= lt!1354218 0)))

(declare-fun e!2401490 () Int)

(assert (=> d!1148545 (= lt!1354218 e!2401490)))

(declare-fun c!675007 () Bool)

(assert (=> d!1148545 (= c!675007 ((_ is Nil!41287) (t!315246 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))))))))

(assert (=> d!1148545 (= (size!31004 (t!315246 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))))) lt!1354218)))

(declare-fun b!3880817 () Bool)

(assert (=> b!3880817 (= e!2401490 0)))

(declare-fun b!3880818 () Bool)

(assert (=> b!3880818 (= e!2401490 (+ 1 (size!31004 (t!315246 (t!315246 (originalCharacters!7016 (_1!23394 (v!39131 lt!1354073))))))))))

(assert (= (and d!1148545 c!675007) b!3880817))

(assert (= (and d!1148545 (not c!675007)) b!3880818))

(declare-fun m!4439383 () Bool)

(assert (=> b!3880818 m!4439383))

(assert (=> b!3880678 d!1148545))

(declare-fun d!1148547 () Bool)

(assert (=> d!1148547 (= (_2!23394 (v!39131 lt!1354073)) lt!1354076)))

(assert (=> d!1148547 true))

(declare-fun _$63!948 () Unit!59356)

(assert (=> d!1148547 (= (choose!23011 lt!1354075 (_2!23394 (v!39131 lt!1354073)) lt!1354075 lt!1354076 lt!1354072) _$63!948)))

(assert (=> d!1148461 d!1148547))

(declare-fun b!3880820 () Bool)

(declare-fun res!1572575 () Bool)

(declare-fun e!2401492 () Bool)

(assert (=> b!3880820 (=> (not res!1572575) (not e!2401492))))

(assert (=> b!3880820 (= res!1572575 (= (head!8240 lt!1354075) (head!8240 lt!1354072)))))

(declare-fun b!3880822 () Bool)

(declare-fun e!2401491 () Bool)

(assert (=> b!3880822 (= e!2401491 (>= (size!31004 lt!1354072) (size!31004 lt!1354075)))))

(declare-fun d!1148549 () Bool)

(assert (=> d!1148549 e!2401491))

(declare-fun res!1572577 () Bool)

(assert (=> d!1148549 (=> res!1572577 e!2401491)))

(declare-fun lt!1354219 () Bool)

(assert (=> d!1148549 (= res!1572577 (not lt!1354219))))

(declare-fun e!2401493 () Bool)

(assert (=> d!1148549 (= lt!1354219 e!2401493)))

(declare-fun res!1572578 () Bool)

(assert (=> d!1148549 (=> res!1572578 e!2401493)))

(assert (=> d!1148549 (= res!1572578 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148549 (= (isPrefix!3511 lt!1354075 lt!1354072) lt!1354219)))

(declare-fun b!3880819 () Bool)

(assert (=> b!3880819 (= e!2401493 e!2401492)))

(declare-fun res!1572576 () Bool)

(assert (=> b!3880819 (=> (not res!1572576) (not e!2401492))))

(assert (=> b!3880819 (= res!1572576 (not ((_ is Nil!41287) lt!1354072)))))

(declare-fun b!3880821 () Bool)

(assert (=> b!3880821 (= e!2401492 (isPrefix!3511 (tail!5957 lt!1354075) (tail!5957 lt!1354072)))))

(assert (= (and d!1148549 (not res!1572578)) b!3880819))

(assert (= (and b!3880819 res!1572576) b!3880820))

(assert (= (and b!3880820 res!1572575) b!3880821))

(assert (= (and d!1148549 (not res!1572577)) b!3880822))

(assert (=> b!3880820 m!4439161))

(declare-fun m!4439385 () Bool)

(assert (=> b!3880820 m!4439385))

(assert (=> b!3880822 m!4439051))

(assert (=> b!3880822 m!4438807))

(assert (=> b!3880821 m!4439167))

(assert (=> b!3880821 m!4439211))

(assert (=> b!3880821 m!4439167))

(assert (=> b!3880821 m!4439211))

(declare-fun m!4439387 () Bool)

(assert (=> b!3880821 m!4439387))

(assert (=> d!1148461 d!1148549))

(declare-fun b!3880950 () Bool)

(declare-fun e!2401564 () Bool)

(declare-fun e!2401566 () Bool)

(assert (=> b!3880950 (= e!2401564 e!2401566)))

(declare-fun res!1572639 () Bool)

(assert (=> b!3880950 (=> (not res!1572639) (not e!2401566))))

(declare-fun lt!1354252 () Option!8834)

(assert (=> b!3880950 (= res!1572639 (matchR!5426 (regex!6416 (h!46709 rules!2768)) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354252))))))))

(declare-fun b!3880951 () Bool)

(assert (=> b!3880951 (= e!2401566 (= (size!31003 (_1!23394 (get!13660 lt!1354252))) (size!31004 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354252))))))))

(declare-fun b!3880952 () Bool)

(declare-fun e!2401565 () Bool)

(declare-datatypes ((tuple2!40522 0))(
  ( (tuple2!40523 (_1!23395 List!41411) (_2!23395 List!41411)) )
))
(declare-fun findLongestMatchInner!1213 (Regex!11321 List!41411 Int List!41411 List!41411 Int) tuple2!40522)

(assert (=> b!3880952 (= e!2401565 (matchR!5426 (regex!6416 (h!46709 rules!2768)) (_1!23395 (findLongestMatchInner!1213 (regex!6416 (h!46709 rules!2768)) Nil!41287 (size!31004 Nil!41287) lt!1354072 lt!1354072 (size!31004 lt!1354072)))))))

(declare-fun b!3880953 () Bool)

(declare-fun res!1572637 () Bool)

(assert (=> b!3880953 (=> (not res!1572637) (not e!2401566))))

(assert (=> b!3880953 (= res!1572637 (< (size!31004 (_2!23394 (get!13660 lt!1354252))) (size!31004 lt!1354072)))))

(declare-fun d!1148551 () Bool)

(assert (=> d!1148551 e!2401564))

(declare-fun res!1572640 () Bool)

(assert (=> d!1148551 (=> res!1572640 e!2401564)))

(assert (=> d!1148551 (= res!1572640 (isEmpty!24526 lt!1354252))))

(declare-fun e!2401563 () Option!8834)

(assert (=> d!1148551 (= lt!1354252 e!2401563)))

(declare-fun c!675039 () Bool)

(declare-fun lt!1354248 () tuple2!40522)

(assert (=> d!1148551 (= c!675039 (isEmpty!24523 (_1!23395 lt!1354248)))))

(declare-fun findLongestMatch!1126 (Regex!11321 List!41411) tuple2!40522)

(assert (=> d!1148551 (= lt!1354248 (findLongestMatch!1126 (regex!6416 (h!46709 rules!2768)) lt!1354072))))

(assert (=> d!1148551 (ruleValid!2364 thiss!20629 (h!46709 rules!2768))))

(assert (=> d!1148551 (= (maxPrefixOneRule!2387 thiss!20629 (h!46709 rules!2768) lt!1354072) lt!1354252)))

(declare-fun b!3880954 () Bool)

(declare-fun size!31007 (BalanceConc!24848) Int)

(assert (=> b!3880954 (= e!2401563 (Some!8833 (tuple2!40521 (Token!11971 (apply!9655 (transformation!6416 (h!46709 rules!2768)) (seqFromList!4683 (_1!23395 lt!1354248))) (h!46709 rules!2768) (size!31007 (seqFromList!4683 (_1!23395 lt!1354248))) (_1!23395 lt!1354248)) (_2!23395 lt!1354248))))))

(declare-fun lt!1354250 () Unit!59356)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1186 (Regex!11321 List!41411) Unit!59356)

(assert (=> b!3880954 (= lt!1354250 (longestMatchIsAcceptedByMatchOrIsEmpty!1186 (regex!6416 (h!46709 rules!2768)) lt!1354072))))

(declare-fun res!1572638 () Bool)

(assert (=> b!3880954 (= res!1572638 (isEmpty!24523 (_1!23395 (findLongestMatchInner!1213 (regex!6416 (h!46709 rules!2768)) Nil!41287 (size!31004 Nil!41287) lt!1354072 lt!1354072 (size!31004 lt!1354072)))))))

(assert (=> b!3880954 (=> res!1572638 e!2401565)))

(assert (=> b!3880954 e!2401565))

(declare-fun lt!1354249 () Unit!59356)

(assert (=> b!3880954 (= lt!1354249 lt!1354250)))

(declare-fun lt!1354251 () Unit!59356)

(declare-fun lemmaSemiInverse!1719 (TokenValueInjection!12720 BalanceConc!24848) Unit!59356)

(assert (=> b!3880954 (= lt!1354251 (lemmaSemiInverse!1719 (transformation!6416 (h!46709 rules!2768)) (seqFromList!4683 (_1!23395 lt!1354248))))))

(declare-fun b!3880955 () Bool)

(declare-fun res!1572642 () Bool)

(assert (=> b!3880955 (=> (not res!1572642) (not e!2401566))))

(assert (=> b!3880955 (= res!1572642 (= (rule!9314 (_1!23394 (get!13660 lt!1354252))) (h!46709 rules!2768)))))

(declare-fun b!3880956 () Bool)

(declare-fun res!1572641 () Bool)

(assert (=> b!3880956 (=> (not res!1572641) (not e!2401566))))

(assert (=> b!3880956 (= res!1572641 (= (value!203490 (_1!23394 (get!13660 lt!1354252))) (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354252)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354252)))))))))

(declare-fun b!3880957 () Bool)

(declare-fun res!1572643 () Bool)

(assert (=> b!3880957 (=> (not res!1572643) (not e!2401566))))

(assert (=> b!3880957 (= res!1572643 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354252)))) (_2!23394 (get!13660 lt!1354252))) lt!1354072))))

(declare-fun b!3880958 () Bool)

(assert (=> b!3880958 (= e!2401563 None!8833)))

(assert (= (and d!1148551 c!675039) b!3880958))

(assert (= (and d!1148551 (not c!675039)) b!3880954))

(assert (= (and b!3880954 (not res!1572638)) b!3880952))

(assert (= (and d!1148551 (not res!1572640)) b!3880950))

(assert (= (and b!3880950 res!1572639) b!3880957))

(assert (= (and b!3880957 res!1572643) b!3880953))

(assert (= (and b!3880953 res!1572637) b!3880955))

(assert (= (and b!3880955 res!1572642) b!3880956))

(assert (= (and b!3880956 res!1572641) b!3880951))

(declare-fun m!4439515 () Bool)

(assert (=> b!3880950 m!4439515))

(declare-fun m!4439517 () Bool)

(assert (=> b!3880950 m!4439517))

(assert (=> b!3880950 m!4439517))

(declare-fun m!4439521 () Bool)

(assert (=> b!3880950 m!4439521))

(assert (=> b!3880950 m!4439521))

(declare-fun m!4439523 () Bool)

(assert (=> b!3880950 m!4439523))

(assert (=> b!3880956 m!4439515))

(declare-fun m!4439525 () Bool)

(assert (=> b!3880956 m!4439525))

(assert (=> b!3880956 m!4439525))

(declare-fun m!4439531 () Bool)

(assert (=> b!3880956 m!4439531))

(declare-fun m!4439533 () Bool)

(assert (=> b!3880952 m!4439533))

(assert (=> b!3880952 m!4439051))

(assert (=> b!3880952 m!4439533))

(assert (=> b!3880952 m!4439051))

(declare-fun m!4439537 () Bool)

(assert (=> b!3880952 m!4439537))

(declare-fun m!4439539 () Bool)

(assert (=> b!3880952 m!4439539))

(declare-fun m!4439541 () Bool)

(assert (=> b!3880954 m!4439541))

(assert (=> b!3880954 m!4439533))

(assert (=> b!3880954 m!4439533))

(assert (=> b!3880954 m!4439051))

(assert (=> b!3880954 m!4439537))

(declare-fun m!4439543 () Bool)

(assert (=> b!3880954 m!4439543))

(declare-fun m!4439545 () Bool)

(assert (=> b!3880954 m!4439545))

(assert (=> b!3880954 m!4439543))

(declare-fun m!4439547 () Bool)

(assert (=> b!3880954 m!4439547))

(assert (=> b!3880954 m!4439543))

(declare-fun m!4439549 () Bool)

(assert (=> b!3880954 m!4439549))

(assert (=> b!3880954 m!4439543))

(declare-fun m!4439555 () Bool)

(assert (=> b!3880954 m!4439555))

(assert (=> b!3880954 m!4439051))

(assert (=> b!3880957 m!4439515))

(assert (=> b!3880957 m!4439517))

(assert (=> b!3880957 m!4439517))

(assert (=> b!3880957 m!4439521))

(assert (=> b!3880957 m!4439521))

(declare-fun m!4439563 () Bool)

(assert (=> b!3880957 m!4439563))

(assert (=> b!3880953 m!4439515))

(declare-fun m!4439565 () Bool)

(assert (=> b!3880953 m!4439565))

(assert (=> b!3880953 m!4439051))

(assert (=> b!3880955 m!4439515))

(assert (=> b!3880951 m!4439515))

(declare-fun m!4439567 () Bool)

(assert (=> b!3880951 m!4439567))

(declare-fun m!4439569 () Bool)

(assert (=> d!1148551 m!4439569))

(declare-fun m!4439571 () Bool)

(assert (=> d!1148551 m!4439571))

(declare-fun m!4439573 () Bool)

(assert (=> d!1148551 m!4439573))

(declare-fun m!4439575 () Bool)

(assert (=> d!1148551 m!4439575))

(assert (=> bm!282861 d!1148551))

(declare-fun b!3880974 () Bool)

(declare-fun res!1572646 () Bool)

(declare-fun e!2401575 () Bool)

(assert (=> b!3880974 (=> (not res!1572646) (not e!2401575))))

(assert (=> b!3880974 (= res!1572646 (= (head!8240 (tail!5957 lt!1354075)) (head!8240 (tail!5957 lt!1354083))))))

(declare-fun b!3880976 () Bool)

(declare-fun e!2401574 () Bool)

(assert (=> b!3880976 (= e!2401574 (>= (size!31004 (tail!5957 lt!1354083)) (size!31004 (tail!5957 lt!1354075))))))

(declare-fun d!1148631 () Bool)

(assert (=> d!1148631 e!2401574))

(declare-fun res!1572648 () Bool)

(assert (=> d!1148631 (=> res!1572648 e!2401574)))

(declare-fun lt!1354254 () Bool)

(assert (=> d!1148631 (= res!1572648 (not lt!1354254))))

(declare-fun e!2401576 () Bool)

(assert (=> d!1148631 (= lt!1354254 e!2401576)))

(declare-fun res!1572649 () Bool)

(assert (=> d!1148631 (=> res!1572649 e!2401576)))

(assert (=> d!1148631 (= res!1572649 ((_ is Nil!41287) (tail!5957 lt!1354075)))))

(assert (=> d!1148631 (= (isPrefix!3511 (tail!5957 lt!1354075) (tail!5957 lt!1354083)) lt!1354254)))

(declare-fun b!3880973 () Bool)

(assert (=> b!3880973 (= e!2401576 e!2401575)))

(declare-fun res!1572647 () Bool)

(assert (=> b!3880973 (=> (not res!1572647) (not e!2401575))))

(assert (=> b!3880973 (= res!1572647 (not ((_ is Nil!41287) (tail!5957 lt!1354083))))))

(declare-fun b!3880975 () Bool)

(assert (=> b!3880975 (= e!2401575 (isPrefix!3511 (tail!5957 (tail!5957 lt!1354075)) (tail!5957 (tail!5957 lt!1354083))))))

(assert (= (and d!1148631 (not res!1572649)) b!3880973))

(assert (= (and b!3880973 res!1572647) b!3880974))

(assert (= (and b!3880974 res!1572646) b!3880975))

(assert (= (and d!1148631 (not res!1572648)) b!3880976))

(assert (=> b!3880974 m!4439167))

(declare-fun m!4439579 () Bool)

(assert (=> b!3880974 m!4439579))

(assert (=> b!3880974 m!4439169))

(declare-fun m!4439581 () Bool)

(assert (=> b!3880974 m!4439581))

(assert (=> b!3880976 m!4439169))

(declare-fun m!4439583 () Bool)

(assert (=> b!3880976 m!4439583))

(assert (=> b!3880976 m!4439167))

(declare-fun m!4439585 () Bool)

(assert (=> b!3880976 m!4439585))

(assert (=> b!3880975 m!4439167))

(declare-fun m!4439587 () Bool)

(assert (=> b!3880975 m!4439587))

(assert (=> b!3880975 m!4439169))

(declare-fun m!4439589 () Bool)

(assert (=> b!3880975 m!4439589))

(assert (=> b!3880975 m!4439587))

(assert (=> b!3880975 m!4439589))

(declare-fun m!4439591 () Bool)

(assert (=> b!3880975 m!4439591))

(assert (=> b!3880603 d!1148631))

(declare-fun d!1148637 () Bool)

(assert (=> d!1148637 (= (tail!5957 lt!1354075) (t!315246 lt!1354075))))

(assert (=> b!3880603 d!1148637))

(declare-fun d!1148641 () Bool)

(assert (=> d!1148641 (= (tail!5957 lt!1354083) (t!315246 lt!1354083))))

(assert (=> b!3880603 d!1148641))

(declare-fun d!1148643 () Bool)

(declare-fun res!1572654 () Bool)

(declare-fun e!2401580 () Bool)

(assert (=> d!1148643 (=> (not res!1572654) (not e!2401580))))

(assert (=> d!1148643 (= res!1572654 (not (isEmpty!24523 (originalCharacters!7016 (h!46708 (t!315247 prefixTokens!80))))))))

(assert (=> d!1148643 (= (inv!55441 (h!46708 (t!315247 prefixTokens!80))) e!2401580)))

(declare-fun b!3880981 () Bool)

(declare-fun res!1572655 () Bool)

(assert (=> b!3880981 (=> (not res!1572655) (not e!2401580))))

(assert (=> b!3880981 (= res!1572655 (= (originalCharacters!7016 (h!46708 (t!315247 prefixTokens!80))) (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))))

(declare-fun b!3880982 () Bool)

(assert (=> b!3880982 (= e!2401580 (= (size!31003 (h!46708 (t!315247 prefixTokens!80))) (size!31004 (originalCharacters!7016 (h!46708 (t!315247 prefixTokens!80))))))))

(assert (= (and d!1148643 res!1572654) b!3880981))

(assert (= (and b!3880981 res!1572655) b!3880982))

(declare-fun b_lambda!113255 () Bool)

(assert (=> (not b_lambda!113255) (not b!3880981)))

(declare-fun t!315396 () Bool)

(declare-fun tb!225281 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315396) tb!225281))

(declare-fun b!3880983 () Bool)

(declare-fun e!2401581 () Bool)

(declare-fun tp!1176706 () Bool)

(assert (=> b!3880983 (= e!2401581 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (value!203490 (h!46708 (t!315247 prefixTokens!80)))))) tp!1176706))))

(declare-fun result!274402 () Bool)

(assert (=> tb!225281 (= result!274402 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (value!203490 (h!46708 (t!315247 prefixTokens!80))))) e!2401581))))

(assert (= tb!225281 b!3880983))

(declare-fun m!4439597 () Bool)

(assert (=> b!3880983 m!4439597))

(declare-fun m!4439599 () Bool)

(assert (=> tb!225281 m!4439599))

(assert (=> b!3880981 t!315396))

(declare-fun b_and!291207 () Bool)

(assert (= b_and!291179 (and (=> t!315396 result!274402) b_and!291207)))

(declare-fun t!315398 () Bool)

(declare-fun tb!225283 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315398) tb!225283))

(declare-fun result!274404 () Bool)

(assert (= result!274404 result!274402))

(assert (=> b!3880981 t!315398))

(declare-fun b_and!291209 () Bool)

(assert (= b_and!291171 (and (=> t!315398 result!274404) b_and!291209)))

(declare-fun t!315400 () Bool)

(declare-fun tb!225285 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315400) tb!225285))

(declare-fun result!274406 () Bool)

(assert (= result!274406 result!274402))

(assert (=> b!3880981 t!315400))

(declare-fun b_and!291211 () Bool)

(assert (= b_and!291177 (and (=> t!315400 result!274406) b_and!291211)))

(declare-fun t!315402 () Bool)

(declare-fun tb!225287 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315402) tb!225287))

(declare-fun result!274408 () Bool)

(assert (= result!274408 result!274402))

(assert (=> b!3880981 t!315402))

(declare-fun b_and!291213 () Bool)

(assert (= b_and!291173 (and (=> t!315402 result!274408) b_and!291213)))

(declare-fun tb!225289 () Bool)

(declare-fun t!315404 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315404) tb!225289))

(declare-fun result!274410 () Bool)

(assert (= result!274410 result!274402))

(assert (=> b!3880981 t!315404))

(declare-fun b_and!291215 () Bool)

(assert (= b_and!291175 (and (=> t!315404 result!274410) b_and!291215)))

(declare-fun t!315406 () Bool)

(declare-fun tb!225291 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315406) tb!225291))

(declare-fun result!274412 () Bool)

(assert (= result!274412 result!274402))

(assert (=> b!3880981 t!315406))

(declare-fun b_and!291217 () Bool)

(assert (= b_and!291181 (and (=> t!315406 result!274412) b_and!291217)))

(declare-fun m!4439601 () Bool)

(assert (=> d!1148643 m!4439601))

(declare-fun m!4439603 () Bool)

(assert (=> b!3880981 m!4439603))

(assert (=> b!3880981 m!4439603))

(declare-fun m!4439605 () Bool)

(assert (=> b!3880981 m!4439605))

(declare-fun m!4439607 () Bool)

(assert (=> b!3880982 m!4439607))

(assert (=> b!3880758 d!1148643))

(declare-fun d!1148647 () Bool)

(declare-fun charsToInt!0 (List!41410) (_ BitVec 32))

(assert (=> d!1148647 (= (inv!16 (value!203490 (h!46708 prefixTokens!80))) (= (charsToInt!0 (text!46969 (value!203490 (h!46708 prefixTokens!80)))) (value!203481 (value!203490 (h!46708 prefixTokens!80)))))))

(declare-fun bs!583771 () Bool)

(assert (= bs!583771 d!1148647))

(declare-fun m!4439611 () Bool)

(assert (=> bs!583771 m!4439611))

(assert (=> b!3880516 d!1148647))

(declare-fun d!1148651 () Bool)

(assert (=> d!1148651 (= (get!13660 lt!1354203) (v!39131 lt!1354203))))

(assert (=> b!3880707 d!1148651))

(declare-fun d!1148653 () Bool)

(assert (=> d!1148653 (= (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203))))) (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203))))))))

(declare-fun b_lambda!113257 () Bool)

(assert (=> (not b_lambda!113257) (not d!1148653)))

(declare-fun t!315408 () Bool)

(declare-fun tb!225293 () Bool)

(assert (=> (and b!3880743 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315408) tb!225293))

(declare-fun result!274414 () Bool)

(assert (=> tb!225293 (= result!274414 (inv!21 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun m!4439613 () Bool)

(assert (=> tb!225293 m!4439613))

(assert (=> d!1148653 t!315408))

(declare-fun b_and!291219 () Bool)

(assert (= b_and!291147 (and (=> t!315408 result!274414) b_and!291219)))

(declare-fun tb!225295 () Bool)

(declare-fun t!315410 () Bool)

(assert (=> (and b!3880321 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315410) tb!225295))

(declare-fun result!274416 () Bool)

(assert (= result!274416 result!274414))

(assert (=> d!1148653 t!315410))

(declare-fun b_and!291221 () Bool)

(assert (= b_and!291121 (and (=> t!315410 result!274416) b_and!291221)))

(declare-fun tb!225297 () Bool)

(declare-fun t!315412 () Bool)

(assert (=> (and b!3880325 (= (toValue!8844 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315412) tb!225297))

(declare-fun result!274418 () Bool)

(assert (= result!274418 result!274414))

(assert (=> d!1148653 t!315412))

(declare-fun b_and!291223 () Bool)

(assert (= b_and!291117 (and (=> t!315412 result!274418) b_and!291223)))

(declare-fun t!315414 () Bool)

(declare-fun tb!225299 () Bool)

(assert (=> (and b!3880757 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315414) tb!225299))

(declare-fun result!274420 () Bool)

(assert (= result!274420 result!274414))

(assert (=> d!1148653 t!315414))

(declare-fun b_and!291225 () Bool)

(assert (= b_and!291151 (and (=> t!315414 result!274420) b_and!291225)))

(declare-fun tb!225301 () Bool)

(declare-fun t!315416 () Bool)

(assert (=> (and b!3880761 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315416) tb!225301))

(declare-fun result!274422 () Bool)

(assert (= result!274422 result!274414))

(assert (=> d!1148653 t!315416))

(declare-fun b_and!291227 () Bool)

(assert (= b_and!291155 (and (=> t!315416 result!274422) b_and!291227)))

(declare-fun tb!225303 () Bool)

(declare-fun t!315418 () Bool)

(assert (=> (and b!3880322 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315418) tb!225303))

(declare-fun result!274424 () Bool)

(assert (= result!274424 result!274414))

(assert (=> d!1148653 t!315418))

(declare-fun b_and!291229 () Bool)

(assert (= b_and!291119 (and (=> t!315418 result!274424) b_and!291229)))

(assert (=> d!1148653 m!4439273))

(declare-fun m!4439615 () Bool)

(assert (=> d!1148653 m!4439615))

(assert (=> b!3880707 d!1148653))

(declare-fun d!1148655 () Bool)

(assert (=> d!1148655 (= (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203)))) (fromListB!2159 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203)))))))

(declare-fun bs!583772 () Bool)

(assert (= bs!583772 d!1148655))

(declare-fun m!4439617 () Bool)

(assert (=> bs!583772 m!4439617))

(assert (=> b!3880707 d!1148655))

(declare-fun d!1148657 () Bool)

(assert (=> d!1148657 (= (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (= (mod (str.len (value!203489 (tag!7276 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3880760 d!1148657))

(declare-fun d!1148659 () Bool)

(declare-fun res!1572660 () Bool)

(declare-fun e!2401587 () Bool)

(assert (=> d!1148659 (=> (not res!1572660) (not e!2401587))))

(assert (=> d!1148659 (= res!1572660 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))))))

(assert (=> d!1148659 (= (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) e!2401587)))

(declare-fun b!3880988 () Bool)

(assert (=> b!3880988 (= e!2401587 (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))))))

(assert (= (and d!1148659 res!1572660) b!3880988))

(declare-fun m!4439619 () Bool)

(assert (=> d!1148659 m!4439619))

(declare-fun m!4439621 () Bool)

(assert (=> b!3880988 m!4439621))

(assert (=> b!3880760 d!1148659))

(declare-fun c!675056 () Bool)

(declare-fun call!282877 () Bool)

(declare-fun bm!282872 () Bool)

(declare-fun c!675057 () Bool)

(assert (=> bm!282872 (= call!282877 (validRegex!5148 (ite c!675057 (reg!11650 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (ite c!675056 (regTwo!23155 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (regOne!23154 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))))))

(declare-fun d!1148661 () Bool)

(declare-fun res!1572681 () Bool)

(declare-fun e!2401618 () Bool)

(assert (=> d!1148661 (=> res!1572681 e!2401618)))

(assert (=> d!1148661 (= res!1572681 ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))

(assert (=> d!1148661 (= (validRegex!5148 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) e!2401618)))

(declare-fun b!3881030 () Bool)

(declare-fun res!1572683 () Bool)

(declare-fun e!2401615 () Bool)

(assert (=> b!3881030 (=> res!1572683 e!2401615)))

(assert (=> b!3881030 (= res!1572683 (not ((_ is Concat!17968) (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))))

(declare-fun e!2401612 () Bool)

(assert (=> b!3881030 (= e!2401612 e!2401615)))

(declare-fun b!3881031 () Bool)

(declare-fun e!2401613 () Bool)

(declare-fun e!2401614 () Bool)

(assert (=> b!3881031 (= e!2401613 e!2401614)))

(declare-fun res!1572684 () Bool)

(assert (=> b!3881031 (= res!1572684 (not (nullable!3949 (reg!11650 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))))

(assert (=> b!3881031 (=> (not res!1572684) (not e!2401614))))

(declare-fun b!3881032 () Bool)

(assert (=> b!3881032 (= e!2401618 e!2401613)))

(assert (=> b!3881032 (= c!675057 ((_ is Star!11321) (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3881033 () Bool)

(declare-fun e!2401617 () Bool)

(declare-fun call!282879 () Bool)

(assert (=> b!3881033 (= e!2401617 call!282879)))

(declare-fun b!3881034 () Bool)

(declare-fun e!2401616 () Bool)

(assert (=> b!3881034 (= e!2401615 e!2401616)))

(declare-fun res!1572682 () Bool)

(assert (=> b!3881034 (=> (not res!1572682) (not e!2401616))))

(assert (=> b!3881034 (= res!1572682 call!282879)))

(declare-fun b!3881035 () Bool)

(assert (=> b!3881035 (= e!2401613 e!2401612)))

(assert (=> b!3881035 (= c!675056 ((_ is Union!11321) (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun bm!282873 () Bool)

(declare-fun call!282878 () Bool)

(assert (=> bm!282873 (= call!282878 (validRegex!5148 (ite c!675056 (regOne!23155 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (regTwo!23154 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))))

(declare-fun bm!282874 () Bool)

(assert (=> bm!282874 (= call!282879 call!282877)))

(declare-fun b!3881036 () Bool)

(assert (=> b!3881036 (= e!2401616 call!282878)))

(declare-fun b!3881037 () Bool)

(assert (=> b!3881037 (= e!2401614 call!282877)))

(declare-fun b!3881038 () Bool)

(declare-fun res!1572680 () Bool)

(assert (=> b!3881038 (=> (not res!1572680) (not e!2401617))))

(assert (=> b!3881038 (= res!1572680 call!282878)))

(assert (=> b!3881038 (= e!2401612 e!2401617)))

(assert (= (and d!1148661 (not res!1572681)) b!3881032))

(assert (= (and b!3881032 c!675057) b!3881031))

(assert (= (and b!3881032 (not c!675057)) b!3881035))

(assert (= (and b!3881031 res!1572684) b!3881037))

(assert (= (and b!3881035 c!675056) b!3881038))

(assert (= (and b!3881035 (not c!675056)) b!3881030))

(assert (= (and b!3881038 res!1572680) b!3881033))

(assert (= (and b!3881030 (not res!1572683)) b!3881034))

(assert (= (and b!3881034 res!1572682) b!3881036))

(assert (= (or b!3881033 b!3881034) bm!282874))

(assert (= (or b!3881038 b!3881036) bm!282873))

(assert (= (or b!3881037 bm!282874) bm!282872))

(declare-fun m!4439677 () Bool)

(assert (=> bm!282872 m!4439677))

(declare-fun m!4439681 () Bool)

(assert (=> b!3881031 m!4439681))

(declare-fun m!4439685 () Bool)

(assert (=> bm!282873 m!4439685))

(assert (=> d!1148463 d!1148661))

(declare-fun d!1148681 () Bool)

(assert (=> d!1148681 (= (inv!16 (value!203490 (h!46708 suffixTokens!72))) (= (charsToInt!0 (text!46969 (value!203490 (h!46708 suffixTokens!72)))) (value!203481 (value!203490 (h!46708 suffixTokens!72)))))))

(declare-fun bs!583774 () Bool)

(assert (= bs!583774 d!1148681))

(declare-fun m!4439687 () Bool)

(assert (=> bs!583774 m!4439687))

(assert (=> b!3880683 d!1148681))

(declare-fun b!3881051 () Bool)

(declare-fun res!1572689 () Bool)

(declare-fun e!2401626 () Bool)

(assert (=> b!3881051 (=> (not res!1572689) (not e!2401626))))

(declare-fun lt!1354268 () List!41412)

(assert (=> b!3881051 (= res!1572689 (= (size!31006 lt!1354268) (+ (size!31006 (t!315247 prefixTokens!80)) (size!31006 suffixTokens!72))))))

(declare-fun d!1148683 () Bool)

(assert (=> d!1148683 e!2401626))

(declare-fun res!1572690 () Bool)

(assert (=> d!1148683 (=> (not res!1572690) (not e!2401626))))

(assert (=> d!1148683 (= res!1572690 (= (content!6168 lt!1354268) ((_ map or) (content!6168 (t!315247 prefixTokens!80)) (content!6168 suffixTokens!72))))))

(declare-fun e!2401625 () List!41412)

(assert (=> d!1148683 (= lt!1354268 e!2401625)))

(declare-fun c!675061 () Bool)

(assert (=> d!1148683 (= c!675061 ((_ is Nil!41288) (t!315247 prefixTokens!80)))))

(assert (=> d!1148683 (= (++!10589 (t!315247 prefixTokens!80) suffixTokens!72) lt!1354268)))

(declare-fun b!3881049 () Bool)

(assert (=> b!3881049 (= e!2401625 suffixTokens!72)))

(declare-fun b!3881052 () Bool)

(assert (=> b!3881052 (= e!2401626 (or (not (= suffixTokens!72 Nil!41288)) (= lt!1354268 (t!315247 prefixTokens!80))))))

(declare-fun b!3881050 () Bool)

(assert (=> b!3881050 (= e!2401625 (Cons!41288 (h!46708 (t!315247 prefixTokens!80)) (++!10589 (t!315247 (t!315247 prefixTokens!80)) suffixTokens!72)))))

(assert (= (and d!1148683 c!675061) b!3881049))

(assert (= (and d!1148683 (not c!675061)) b!3881050))

(assert (= (and d!1148683 res!1572690) b!3881051))

(assert (= (and b!3881051 res!1572689) b!3881052))

(declare-fun m!4439703 () Bool)

(assert (=> b!3881051 m!4439703))

(declare-fun m!4439705 () Bool)

(assert (=> b!3881051 m!4439705))

(assert (=> b!3881051 m!4439059))

(declare-fun m!4439707 () Bool)

(assert (=> d!1148683 m!4439707))

(declare-fun m!4439709 () Bool)

(assert (=> d!1148683 m!4439709))

(assert (=> d!1148683 m!4439065))

(declare-fun m!4439711 () Bool)

(assert (=> b!3881050 m!4439711))

(assert (=> b!3880523 d!1148683))

(declare-fun d!1148691 () Bool)

(declare-fun lt!1354270 () Int)

(assert (=> d!1148691 (>= lt!1354270 0)))

(declare-fun e!2401628 () Int)

(assert (=> d!1148691 (= lt!1354270 e!2401628)))

(declare-fun c!675063 () Bool)

(assert (=> d!1148691 (= c!675063 ((_ is Nil!41287) (_2!23393 lt!1354142)))))

(assert (=> d!1148691 (= (size!31004 (_2!23393 lt!1354142)) lt!1354270)))

(declare-fun b!3881055 () Bool)

(assert (=> b!3881055 (= e!2401628 0)))

(declare-fun b!3881056 () Bool)

(assert (=> b!3881056 (= e!2401628 (+ 1 (size!31004 (t!315246 (_2!23393 lt!1354142)))))))

(assert (= (and d!1148691 c!675063) b!3881055))

(assert (= (and d!1148691 (not c!675063)) b!3881056))

(declare-fun m!4439715 () Bool)

(assert (=> b!3881056 m!4439715))

(assert (=> b!3880520 d!1148691))

(declare-fun d!1148695 () Bool)

(declare-fun lt!1354272 () Int)

(assert (=> d!1148695 (>= lt!1354272 0)))

(declare-fun e!2401630 () Int)

(assert (=> d!1148695 (= lt!1354272 e!2401630)))

(declare-fun c!675065 () Bool)

(assert (=> d!1148695 (= c!675065 ((_ is Nil!41287) lt!1354072))))

(assert (=> d!1148695 (= (size!31004 lt!1354072) lt!1354272)))

(declare-fun b!3881059 () Bool)

(assert (=> b!3881059 (= e!2401630 0)))

(declare-fun b!3881060 () Bool)

(assert (=> b!3881060 (= e!2401630 (+ 1 (size!31004 (t!315246 lt!1354072))))))

(assert (= (and d!1148695 c!675065) b!3881059))

(assert (= (and d!1148695 (not c!675065)) b!3881060))

(declare-fun m!4439719 () Bool)

(assert (=> b!3881060 m!4439719))

(assert (=> b!3880520 d!1148695))

(declare-fun d!1148699 () Bool)

(declare-fun lt!1354274 () Int)

(assert (=> d!1148699 (>= lt!1354274 0)))

(declare-fun e!2401632 () Int)

(assert (=> d!1148699 (= lt!1354274 e!2401632)))

(declare-fun c!675067 () Bool)

(assert (=> d!1148699 (= c!675067 ((_ is Nil!41287) (t!315246 lt!1354075)))))

(assert (=> d!1148699 (= (size!31004 (t!315246 lt!1354075)) lt!1354274)))

(declare-fun b!3881063 () Bool)

(assert (=> b!3881063 (= e!2401632 0)))

(declare-fun b!3881064 () Bool)

(assert (=> b!3881064 (= e!2401632 (+ 1 (size!31004 (t!315246 (t!315246 lt!1354075)))))))

(assert (= (and d!1148699 c!675067) b!3881063))

(assert (= (and d!1148699 (not c!675067)) b!3881064))

(declare-fun m!4439723 () Bool)

(assert (=> b!3881064 m!4439723))

(assert (=> b!3880567 d!1148699))

(declare-fun d!1148703 () Bool)

(declare-fun charsToBigInt!0 (List!41410 Int) Int)

(assert (=> d!1148703 (= (inv!15 (value!203490 (h!46708 prefixTokens!80))) (= (charsToBigInt!0 (text!46971 (value!203490 (h!46708 prefixTokens!80))) 0) (value!203485 (value!203490 (h!46708 prefixTokens!80)))))))

(declare-fun bs!583776 () Bool)

(assert (= bs!583776 d!1148703))

(declare-fun m!4439735 () Bool)

(assert (=> bs!583776 m!4439735))

(assert (=> b!3880514 d!1148703))

(declare-fun d!1148715 () Bool)

(declare-fun e!2401640 () Bool)

(assert (=> d!1148715 e!2401640))

(declare-fun c!675073 () Bool)

(declare-fun lt!1354280 () tuple2!40518)

(assert (=> d!1148715 (= c!675073 (> (size!31006 (_1!23393 lt!1354280)) 0))))

(declare-fun e!2401639 () tuple2!40518)

(assert (=> d!1148715 (= lt!1354280 e!2401639)))

(declare-fun c!675072 () Bool)

(declare-fun lt!1354278 () Option!8834)

(assert (=> d!1148715 (= c!675072 ((_ is Some!8833) lt!1354278))))

(assert (=> d!1148715 (= lt!1354278 (maxPrefix!3309 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354187))))))

(assert (=> d!1148715 (= (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354187))) lt!1354280)))

(declare-fun b!3881074 () Bool)

(declare-fun lt!1354279 () tuple2!40518)

(assert (=> b!3881074 (= e!2401639 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354278)) (_1!23393 lt!1354279)) (_2!23393 lt!1354279)))))

(assert (=> b!3881074 (= lt!1354279 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354278))))))

(declare-fun b!3881075 () Bool)

(assert (=> b!3881075 (= e!2401639 (tuple2!40519 Nil!41288 (_2!23394 (v!39131 lt!1354187))))))

(declare-fun b!3881076 () Bool)

(assert (=> b!3881076 (= e!2401640 (= (_2!23393 lt!1354280) (_2!23394 (v!39131 lt!1354187))))))

(declare-fun b!3881077 () Bool)

(declare-fun e!2401638 () Bool)

(assert (=> b!3881077 (= e!2401640 e!2401638)))

(declare-fun res!1572692 () Bool)

(assert (=> b!3881077 (= res!1572692 (< (size!31004 (_2!23393 lt!1354280)) (size!31004 (_2!23394 (v!39131 lt!1354187)))))))

(assert (=> b!3881077 (=> (not res!1572692) (not e!2401638))))

(declare-fun b!3881078 () Bool)

(assert (=> b!3881078 (= e!2401638 (not (isEmpty!24524 (_1!23393 lt!1354280))))))

(assert (= (and d!1148715 c!675072) b!3881074))

(assert (= (and d!1148715 (not c!675072)) b!3881075))

(assert (= (and d!1148715 c!675073) b!3881077))

(assert (= (and d!1148715 (not c!675073)) b!3881076))

(assert (= (and b!3881077 res!1572692) b!3881078))

(declare-fun m!4439737 () Bool)

(assert (=> d!1148715 m!4439737))

(declare-fun m!4439739 () Bool)

(assert (=> d!1148715 m!4439739))

(declare-fun m!4439741 () Bool)

(assert (=> b!3881074 m!4439741))

(declare-fun m!4439743 () Bool)

(assert (=> b!3881077 m!4439743))

(declare-fun m!4439745 () Bool)

(assert (=> b!3881077 m!4439745))

(declare-fun m!4439747 () Bool)

(assert (=> b!3881078 m!4439747))

(assert (=> b!3880672 d!1148715))

(declare-fun d!1148717 () Bool)

(declare-fun c!675078 () Bool)

(assert (=> d!1148717 (= c!675078 ((_ is Nil!41287) lt!1354146))))

(declare-fun e!2401647 () (InoxSet C!22828))

(assert (=> d!1148717 (= (content!6169 lt!1354146) e!2401647)))

(declare-fun b!3881094 () Bool)

(assert (=> b!3881094 (= e!2401647 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881095 () Bool)

(assert (=> b!3881095 (= e!2401647 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 lt!1354146) true) (content!6169 (t!315246 lt!1354146))))))

(assert (= (and d!1148717 c!675078) b!3881094))

(assert (= (and d!1148717 (not c!675078)) b!3881095))

(declare-fun m!4439755 () Bool)

(assert (=> b!3881095 m!4439755))

(declare-fun m!4439757 () Bool)

(assert (=> b!3881095 m!4439757))

(assert (=> d!1148439 d!1148717))

(declare-fun d!1148725 () Bool)

(declare-fun c!675079 () Bool)

(assert (=> d!1148725 (= c!675079 ((_ is Nil!41287) prefix!426))))

(declare-fun e!2401648 () (InoxSet C!22828))

(assert (=> d!1148725 (= (content!6169 prefix!426) e!2401648)))

(declare-fun b!3881096 () Bool)

(assert (=> b!3881096 (= e!2401648 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881097 () Bool)

(assert (=> b!3881097 (= e!2401648 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 prefix!426) true) (content!6169 (t!315246 prefix!426))))))

(assert (= (and d!1148725 c!675079) b!3881096))

(assert (= (and d!1148725 (not c!675079)) b!3881097))

(declare-fun m!4439759 () Bool)

(assert (=> b!3881097 m!4439759))

(assert (=> b!3881097 m!4439345))

(assert (=> d!1148439 d!1148725))

(declare-fun d!1148727 () Bool)

(declare-fun c!675080 () Bool)

(assert (=> d!1148727 (= c!675080 ((_ is Nil!41287) suffix!1176))))

(declare-fun e!2401649 () (InoxSet C!22828))

(assert (=> d!1148727 (= (content!6169 suffix!1176) e!2401649)))

(declare-fun b!3881098 () Bool)

(assert (=> b!3881098 (= e!2401649 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881099 () Bool)

(assert (=> b!3881099 (= e!2401649 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 suffix!1176) true) (content!6169 (t!315246 suffix!1176))))))

(assert (= (and d!1148727 c!675080) b!3881098))

(assert (= (and d!1148727 (not c!675080)) b!3881099))

(declare-fun m!4439761 () Bool)

(assert (=> b!3881099 m!4439761))

(declare-fun m!4439763 () Bool)

(assert (=> b!3881099 m!4439763))

(assert (=> d!1148439 d!1148727))

(declare-fun d!1148729 () Bool)

(declare-fun e!2401652 () Bool)

(assert (=> d!1148729 e!2401652))

(declare-fun c!675082 () Bool)

(declare-fun lt!1354292 () tuple2!40518)

(assert (=> d!1148729 (= c!675082 (> (size!31006 (_1!23393 lt!1354292)) 0))))

(declare-fun e!2401651 () tuple2!40518)

(assert (=> d!1148729 (= lt!1354292 e!2401651)))

(declare-fun c!675081 () Bool)

(declare-fun lt!1354290 () Option!8834)

(assert (=> d!1148729 (= c!675081 ((_ is Some!8833) lt!1354290))))

(assert (=> d!1148729 (= lt!1354290 (maxPrefix!3309 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354140))))))

(assert (=> d!1148729 (= (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354140))) lt!1354292)))

(declare-fun b!3881100 () Bool)

(declare-fun lt!1354291 () tuple2!40518)

(assert (=> b!3881100 (= e!2401651 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354290)) (_1!23393 lt!1354291)) (_2!23393 lt!1354291)))))

(assert (=> b!3881100 (= lt!1354291 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354290))))))

(declare-fun b!3881101 () Bool)

(assert (=> b!3881101 (= e!2401651 (tuple2!40519 Nil!41288 (_2!23394 (v!39131 lt!1354140))))))

(declare-fun b!3881102 () Bool)

(assert (=> b!3881102 (= e!2401652 (= (_2!23393 lt!1354292) (_2!23394 (v!39131 lt!1354140))))))

(declare-fun b!3881103 () Bool)

(declare-fun e!2401650 () Bool)

(assert (=> b!3881103 (= e!2401652 e!2401650)))

(declare-fun res!1572700 () Bool)

(assert (=> b!3881103 (= res!1572700 (< (size!31004 (_2!23393 lt!1354292)) (size!31004 (_2!23394 (v!39131 lt!1354140)))))))

(assert (=> b!3881103 (=> (not res!1572700) (not e!2401650))))

(declare-fun b!3881104 () Bool)

(assert (=> b!3881104 (= e!2401650 (not (isEmpty!24524 (_1!23393 lt!1354292))))))

(assert (= (and d!1148729 c!675081) b!3881100))

(assert (= (and d!1148729 (not c!675081)) b!3881101))

(assert (= (and d!1148729 c!675082) b!3881103))

(assert (= (and d!1148729 (not c!675082)) b!3881102))

(assert (= (and b!3881103 res!1572700) b!3881104))

(declare-fun m!4439767 () Bool)

(assert (=> d!1148729 m!4439767))

(declare-fun m!4439771 () Bool)

(assert (=> d!1148729 m!4439771))

(declare-fun m!4439773 () Bool)

(assert (=> b!3881100 m!4439773))

(declare-fun m!4439777 () Bool)

(assert (=> b!3881103 m!4439777))

(declare-fun m!4439779 () Bool)

(assert (=> b!3881103 m!4439779))

(declare-fun m!4439781 () Bool)

(assert (=> b!3881104 m!4439781))

(assert (=> b!3880517 d!1148729))

(declare-fun d!1148731 () Bool)

(assert (=> d!1148731 (= (isEmpty!24523 (originalCharacters!7016 (h!46708 suffixTokens!72))) ((_ is Nil!41287) (originalCharacters!7016 (h!46708 suffixTokens!72))))))

(assert (=> d!1148403 d!1148731))

(declare-fun b!3881106 () Bool)

(declare-fun res!1572701 () Bool)

(declare-fun e!2401654 () Bool)

(assert (=> b!3881106 (=> (not res!1572701) (not e!2401654))))

(assert (=> b!3881106 (= res!1572701 (= (head!8240 lt!1354075) (head!8240 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3881108 () Bool)

(declare-fun e!2401653 () Bool)

(assert (=> b!3881108 (= e!2401653 (>= (size!31004 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073)))) (size!31004 lt!1354075)))))

(declare-fun d!1148733 () Bool)

(assert (=> d!1148733 e!2401653))

(declare-fun res!1572703 () Bool)

(assert (=> d!1148733 (=> res!1572703 e!2401653)))

(declare-fun lt!1354293 () Bool)

(assert (=> d!1148733 (= res!1572703 (not lt!1354293))))

(declare-fun e!2401655 () Bool)

(assert (=> d!1148733 (= lt!1354293 e!2401655)))

(declare-fun res!1572704 () Bool)

(assert (=> d!1148733 (=> res!1572704 e!2401655)))

(assert (=> d!1148733 (= res!1572704 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148733 (= (isPrefix!3511 lt!1354075 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073)))) lt!1354293)))

(declare-fun b!3881105 () Bool)

(assert (=> b!3881105 (= e!2401655 e!2401654)))

(declare-fun res!1572702 () Bool)

(assert (=> b!3881105 (=> (not res!1572702) (not e!2401654))))

(assert (=> b!3881105 (= res!1572702 (not ((_ is Nil!41287) (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3881107 () Bool)

(assert (=> b!3881107 (= e!2401654 (isPrefix!3511 (tail!5957 lt!1354075) (tail!5957 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))))

(assert (= (and d!1148733 (not res!1572704)) b!3881105))

(assert (= (and b!3881105 res!1572702) b!3881106))

(assert (= (and b!3881106 res!1572701) b!3881107))

(assert (= (and d!1148733 (not res!1572703)) b!3881108))

(assert (=> b!3881106 m!4439161))

(assert (=> b!3881106 m!4438795))

(declare-fun m!4439795 () Bool)

(assert (=> b!3881106 m!4439795))

(assert (=> b!3881108 m!4438795))

(declare-fun m!4439797 () Bool)

(assert (=> b!3881108 m!4439797))

(assert (=> b!3881108 m!4438807))

(assert (=> b!3881107 m!4439167))

(assert (=> b!3881107 m!4438795))

(declare-fun m!4439799 () Bool)

(assert (=> b!3881107 m!4439799))

(assert (=> b!3881107 m!4439167))

(assert (=> b!3881107 m!4439799))

(declare-fun m!4439803 () Bool)

(assert (=> b!3881107 m!4439803))

(assert (=> d!1148473 d!1148733))

(assert (=> d!1148473 d!1148443))

(declare-fun d!1148735 () Bool)

(assert (=> d!1148735 (isPrefix!3511 lt!1354075 (++!10590 lt!1354075 (_2!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148735 true))

(declare-fun _$46!1529 () Unit!59356)

(assert (=> d!1148735 (= (choose!23013 lt!1354075 (_2!23394 (v!39131 lt!1354073))) _$46!1529)))

(declare-fun bs!583781 () Bool)

(assert (= bs!583781 d!1148735))

(assert (=> bs!583781 m!4438795))

(assert (=> bs!583781 m!4438795))

(assert (=> bs!583781 m!4439215))

(assert (=> d!1148473 d!1148735))

(declare-fun d!1148741 () Bool)

(declare-fun lt!1354294 () Int)

(assert (=> d!1148741 (>= lt!1354294 0)))

(declare-fun e!2401656 () Int)

(assert (=> d!1148741 (= lt!1354294 e!2401656)))

(declare-fun c!675083 () Bool)

(assert (=> d!1148741 (= c!675083 ((_ is Nil!41287) (originalCharacters!7016 (h!46708 prefixTokens!80))))))

(assert (=> d!1148741 (= (size!31004 (originalCharacters!7016 (h!46708 prefixTokens!80))) lt!1354294)))

(declare-fun b!3881109 () Bool)

(assert (=> b!3881109 (= e!2401656 0)))

(declare-fun b!3881110 () Bool)

(assert (=> b!3881110 (= e!2401656 (+ 1 (size!31004 (t!315246 (originalCharacters!7016 (h!46708 prefixTokens!80))))))))

(assert (= (and d!1148741 c!675083) b!3881109))

(assert (= (and d!1148741 (not c!675083)) b!3881110))

(declare-fun m!4439817 () Bool)

(assert (=> b!3881110 m!4439817))

(assert (=> b!3880487 d!1148741))

(declare-fun d!1148743 () Bool)

(declare-fun lt!1354295 () Int)

(assert (=> d!1148743 (>= lt!1354295 0)))

(declare-fun e!2401657 () Int)

(assert (=> d!1148743 (= lt!1354295 e!2401657)))

(declare-fun c!675084 () Bool)

(assert (=> d!1148743 (= c!675084 ((_ is Nil!41287) (originalCharacters!7016 (h!46708 suffixTokens!72))))))

(assert (=> d!1148743 (= (size!31004 (originalCharacters!7016 (h!46708 suffixTokens!72))) lt!1354295)))

(declare-fun b!3881111 () Bool)

(assert (=> b!3881111 (= e!2401657 0)))

(declare-fun b!3881112 () Bool)

(assert (=> b!3881112 (= e!2401657 (+ 1 (size!31004 (t!315246 (originalCharacters!7016 (h!46708 suffixTokens!72))))))))

(assert (= (and d!1148743 c!675084) b!3881111))

(assert (= (and d!1148743 (not c!675084)) b!3881112))

(declare-fun m!4439819 () Bool)

(assert (=> b!3881112 m!4439819))

(assert (=> b!3880468 d!1148743))

(assert (=> d!1148479 d!1148481))

(declare-fun d!1148745 () Bool)

(assert (=> d!1148745 true))

(declare-fun order!22201 () Int)

(declare-fun lambda!126276 () Int)

(declare-fun order!22199 () Int)

(declare-fun dynLambda!17727 (Int Int) Int)

(declare-fun dynLambda!17728 (Int Int) Int)

(assert (=> d!1148745 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (dynLambda!17728 order!22201 lambda!126276))))

(declare-fun Forall2!1036 (Int) Bool)

(assert (=> d!1148745 (= (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (Forall2!1036 lambda!126276))))

(declare-fun bs!583789 () Bool)

(assert (= bs!583789 d!1148745))

(declare-fun m!4440065 () Bool)

(assert (=> bs!583789 m!4440065))

(assert (=> b!3880348 d!1148745))

(declare-fun d!1148815 () Bool)

(declare-fun lt!1354341 () Int)

(assert (=> d!1148815 (>= lt!1354341 0)))

(declare-fun e!2401799 () Int)

(assert (=> d!1148815 (= lt!1354341 e!2401799)))

(declare-fun c!675124 () Bool)

(assert (=> d!1148815 (= c!675124 ((_ is Nil!41287) (_2!23393 lt!1354126)))))

(assert (=> d!1148815 (= (size!31004 (_2!23393 lt!1354126)) lt!1354341)))

(declare-fun b!3881372 () Bool)

(assert (=> b!3881372 (= e!2401799 0)))

(declare-fun b!3881373 () Bool)

(assert (=> b!3881373 (= e!2401799 (+ 1 (size!31004 (t!315246 (_2!23393 lt!1354126)))))))

(assert (= (and d!1148815 c!675124) b!3881372))

(assert (= (and d!1148815 (not c!675124)) b!3881373))

(declare-fun m!4440067 () Bool)

(assert (=> b!3881373 m!4440067))

(assert (=> b!3880443 d!1148815))

(declare-fun d!1148817 () Bool)

(declare-fun lt!1354342 () Int)

(assert (=> d!1148817 (>= lt!1354342 0)))

(declare-fun e!2401800 () Int)

(assert (=> d!1148817 (= lt!1354342 e!2401800)))

(declare-fun c!675125 () Bool)

(assert (=> d!1148817 (= c!675125 ((_ is Nil!41287) suffix!1176))))

(assert (=> d!1148817 (= (size!31004 suffix!1176) lt!1354342)))

(declare-fun b!3881374 () Bool)

(assert (=> b!3881374 (= e!2401800 0)))

(declare-fun b!3881375 () Bool)

(assert (=> b!3881375 (= e!2401800 (+ 1 (size!31004 (t!315246 suffix!1176))))))

(assert (= (and d!1148817 c!675125) b!3881374))

(assert (= (and d!1148817 (not c!675125)) b!3881375))

(declare-fun m!4440069 () Bool)

(assert (=> b!3881375 m!4440069))

(assert (=> b!3880443 d!1148817))

(declare-fun d!1148819 () Bool)

(declare-fun isBalanced!3628 (Conc!12627) Bool)

(assert (=> d!1148819 (= (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))) (isBalanced!3628 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(declare-fun bs!583790 () Bool)

(assert (= bs!583790 d!1148819))

(declare-fun m!4440071 () Bool)

(assert (=> bs!583790 m!4440071))

(assert (=> tb!225149 d!1148819))

(declare-fun d!1148821 () Bool)

(assert (=> d!1148821 true))

(declare-fun lambda!126279 () Int)

(declare-fun order!22205 () Int)

(declare-fun order!22203 () Int)

(declare-fun dynLambda!17729 (Int Int) Int)

(declare-fun dynLambda!17730 (Int Int) Int)

(assert (=> d!1148821 (< (dynLambda!17729 order!22203 (toChars!8703 (transformation!6416 (h!46709 rules!2768)))) (dynLambda!17730 order!22205 lambda!126279))))

(assert (=> d!1148821 true))

(assert (=> d!1148821 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (h!46709 rules!2768)))) (dynLambda!17730 order!22205 lambda!126279))))

(declare-fun Forall!1438 (Int) Bool)

(assert (=> d!1148821 (= (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (h!46709 rules!2768)))) (Forall!1438 lambda!126279))))

(declare-fun bs!583791 () Bool)

(assert (= bs!583791 d!1148821))

(declare-fun m!4440073 () Bool)

(assert (=> bs!583791 m!4440073))

(assert (=> d!1148365 d!1148821))

(declare-fun d!1148823 () Bool)

(declare-fun c!675126 () Bool)

(assert (=> d!1148823 (= c!675126 ((_ is Nil!41287) lt!1354157))))

(declare-fun e!2401801 () (InoxSet C!22828))

(assert (=> d!1148823 (= (content!6169 lt!1354157) e!2401801)))

(declare-fun b!3881380 () Bool)

(assert (=> b!3881380 (= e!2401801 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881381 () Bool)

(assert (=> b!3881381 (= e!2401801 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 lt!1354157) true) (content!6169 (t!315246 lt!1354157))))))

(assert (= (and d!1148823 c!675126) b!3881380))

(assert (= (and d!1148823 (not c!675126)) b!3881381))

(declare-fun m!4440075 () Bool)

(assert (=> b!3881381 m!4440075))

(declare-fun m!4440077 () Bool)

(assert (=> b!3881381 m!4440077))

(assert (=> d!1148443 d!1148823))

(declare-fun d!1148825 () Bool)

(declare-fun c!675127 () Bool)

(assert (=> d!1148825 (= c!675127 ((_ is Nil!41287) lt!1354075))))

(declare-fun e!2401802 () (InoxSet C!22828))

(assert (=> d!1148825 (= (content!6169 lt!1354075) e!2401802)))

(declare-fun b!3881382 () Bool)

(assert (=> b!3881382 (= e!2401802 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881383 () Bool)

(assert (=> b!3881383 (= e!2401802 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 lt!1354075) true) (content!6169 (t!315246 lt!1354075))))))

(assert (= (and d!1148825 c!675127) b!3881382))

(assert (= (and d!1148825 (not c!675127)) b!3881383))

(declare-fun m!4440079 () Bool)

(assert (=> b!3881383 m!4440079))

(declare-fun m!4440081 () Bool)

(assert (=> b!3881383 m!4440081))

(assert (=> d!1148443 d!1148825))

(declare-fun d!1148827 () Bool)

(declare-fun c!675128 () Bool)

(assert (=> d!1148827 (= c!675128 ((_ is Nil!41287) (_2!23394 (v!39131 lt!1354073))))))

(declare-fun e!2401803 () (InoxSet C!22828))

(assert (=> d!1148827 (= (content!6169 (_2!23394 (v!39131 lt!1354073))) e!2401803)))

(declare-fun b!3881384 () Bool)

(assert (=> b!3881384 (= e!2401803 ((as const (Array C!22828 Bool)) false))))

(declare-fun b!3881385 () Bool)

(assert (=> b!3881385 (= e!2401803 ((_ map or) (store ((as const (Array C!22828 Bool)) false) (h!46707 (_2!23394 (v!39131 lt!1354073))) true) (content!6169 (t!315246 (_2!23394 (v!39131 lt!1354073))))))))

(assert (= (and d!1148827 c!675128) b!3881384))

(assert (= (and d!1148827 (not c!675128)) b!3881385))

(declare-fun m!4440083 () Bool)

(assert (=> b!3881385 m!4440083))

(declare-fun m!4440085 () Bool)

(assert (=> b!3881385 m!4440085))

(assert (=> d!1148443 d!1148827))

(declare-fun d!1148829 () Bool)

(declare-fun c!675129 () Bool)

(assert (=> d!1148829 (= c!675129 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(declare-fun e!2401804 () Bool)

(assert (=> d!1148829 (= (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))) e!2401804)))

(declare-fun b!3881386 () Bool)

(assert (=> b!3881386 (= e!2401804 (inv!55448 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(declare-fun b!3881387 () Bool)

(declare-fun e!2401805 () Bool)

(assert (=> b!3881387 (= e!2401804 e!2401805)))

(declare-fun res!1572778 () Bool)

(assert (=> b!3881387 (= res!1572778 (not ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))))))

(assert (=> b!3881387 (=> res!1572778 e!2401805)))

(declare-fun b!3881388 () Bool)

(assert (=> b!3881388 (= e!2401805 (inv!55449 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(assert (= (and d!1148829 c!675129) b!3881386))

(assert (= (and d!1148829 (not c!675129)) b!3881387))

(assert (= (and b!3881387 (not res!1572778)) b!3881388))

(declare-fun m!4440087 () Bool)

(assert (=> b!3881386 m!4440087))

(declare-fun m!4440089 () Bool)

(assert (=> b!3881388 m!4440089))

(assert (=> b!3880483 d!1148829))

(declare-fun d!1148831 () Bool)

(declare-fun lt!1354345 () Bool)

(declare-fun content!6171 (List!41413) (InoxSet Rule!12632))

(assert (=> d!1148831 (= lt!1354345 (select (content!6171 rules!2768) (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))

(declare-fun e!2401811 () Bool)

(assert (=> d!1148831 (= lt!1354345 e!2401811)))

(declare-fun res!1572783 () Bool)

(assert (=> d!1148831 (=> (not res!1572783) (not e!2401811))))

(assert (=> d!1148831 (= res!1572783 ((_ is Cons!41289) rules!2768))))

(assert (=> d!1148831 (= (contains!8301 rules!2768 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) lt!1354345)))

(declare-fun b!3881393 () Bool)

(declare-fun e!2401810 () Bool)

(assert (=> b!3881393 (= e!2401811 e!2401810)))

(declare-fun res!1572784 () Bool)

(assert (=> b!3881393 (=> res!1572784 e!2401810)))

(assert (=> b!3881393 (= res!1572784 (= (h!46709 rules!2768) (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))

(declare-fun b!3881394 () Bool)

(assert (=> b!3881394 (= e!2401810 (contains!8301 (t!315248 rules!2768) (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))

(assert (= (and d!1148831 res!1572783) b!3881393))

(assert (= (and b!3881393 (not res!1572784)) b!3881394))

(declare-fun m!4440091 () Bool)

(assert (=> d!1148831 m!4440091))

(declare-fun m!4440093 () Bool)

(assert (=> d!1148831 m!4440093))

(declare-fun m!4440095 () Bool)

(assert (=> b!3881394 m!4440095))

(assert (=> b!3880712 d!1148831))

(assert (=> b!3880712 d!1148651))

(declare-fun bs!583792 () Bool)

(declare-fun d!1148833 () Bool)

(assert (= bs!583792 (and d!1148833 d!1148821)))

(declare-fun lambda!126280 () Int)

(assert (=> bs!583792 (= (and (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (h!46709 rules!2768)))) (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (h!46709 rules!2768))))) (= lambda!126280 lambda!126279))))

(assert (=> d!1148833 true))

(assert (=> d!1148833 (< (dynLambda!17729 order!22203 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (dynLambda!17730 order!22205 lambda!126280))))

(assert (=> d!1148833 true))

(assert (=> d!1148833 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (dynLambda!17730 order!22205 lambda!126280))))

(assert (=> d!1148833 (= (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (Forall!1438 lambda!126280))))

(declare-fun bs!583793 () Bool)

(assert (= bs!583793 d!1148833))

(declare-fun m!4440097 () Bool)

(assert (=> bs!583793 m!4440097))

(assert (=> d!1148487 d!1148833))

(declare-fun d!1148835 () Bool)

(assert (=> d!1148835 (= (list!15344 lt!1354186) (list!15346 (c!674921 lt!1354186)))))

(declare-fun bs!583794 () Bool)

(assert (= bs!583794 d!1148835))

(declare-fun m!4440099 () Bool)

(assert (=> bs!583794 m!4440099))

(assert (=> d!1148475 d!1148835))

(declare-fun d!1148837 () Bool)

(declare-fun c!675132 () Bool)

(assert (=> d!1148837 (= c!675132 ((_ is Nil!41288) lt!1354088))))

(declare-fun e!2401814 () (InoxSet Token!11970))

(assert (=> d!1148837 (= (content!6168 lt!1354088) e!2401814)))

(declare-fun b!3881399 () Bool)

(assert (=> b!3881399 (= e!2401814 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881400 () Bool)

(assert (=> b!3881400 (= e!2401814 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 lt!1354088) true) (content!6168 (t!315247 lt!1354088))))))

(assert (= (and d!1148837 c!675132) b!3881399))

(assert (= (and d!1148837 (not c!675132)) b!3881400))

(declare-fun m!4440101 () Bool)

(assert (=> b!3881400 m!4440101))

(declare-fun m!4440103 () Bool)

(assert (=> b!3881400 m!4440103))

(assert (=> d!1148355 d!1148837))

(declare-fun d!1148839 () Bool)

(declare-fun c!675133 () Bool)

(assert (=> d!1148839 (= c!675133 ((_ is Nil!41288) (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))

(declare-fun e!2401815 () (InoxSet Token!11970))

(assert (=> d!1148839 (= (content!6168 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) e!2401815)))

(declare-fun b!3881401 () Bool)

(assert (=> b!3881401 (= e!2401815 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881402 () Bool)

(assert (=> b!3881402 (= e!2401815 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) true) (content!6168 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))))

(assert (= (and d!1148839 c!675133) b!3881401))

(assert (= (and d!1148839 (not c!675133)) b!3881402))

(declare-fun m!4440105 () Bool)

(assert (=> b!3881402 m!4440105))

(declare-fun m!4440107 () Bool)

(assert (=> b!3881402 m!4440107))

(assert (=> d!1148355 d!1148839))

(declare-fun d!1148841 () Bool)

(declare-fun c!675134 () Bool)

(assert (=> d!1148841 (= c!675134 ((_ is Nil!41288) (_1!23393 lt!1354074)))))

(declare-fun e!2401816 () (InoxSet Token!11970))

(assert (=> d!1148841 (= (content!6168 (_1!23393 lt!1354074)) e!2401816)))

(declare-fun b!3881403 () Bool)

(assert (=> b!3881403 (= e!2401816 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881404 () Bool)

(assert (=> b!3881404 (= e!2401816 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 (_1!23393 lt!1354074)) true) (content!6168 (t!315247 (_1!23393 lt!1354074)))))))

(assert (= (and d!1148841 c!675134) b!3881403))

(assert (= (and d!1148841 (not c!675134)) b!3881404))

(declare-fun m!4440109 () Bool)

(assert (=> b!3881404 m!4440109))

(declare-fun m!4440111 () Bool)

(assert (=> b!3881404 m!4440111))

(assert (=> d!1148355 d!1148841))

(declare-fun d!1148843 () Bool)

(declare-fun lt!1354346 () Int)

(assert (=> d!1148843 (>= lt!1354346 0)))

(declare-fun e!2401817 () Int)

(assert (=> d!1148843 (= lt!1354346 e!2401817)))

(declare-fun c!675135 () Bool)

(assert (=> d!1148843 (= c!675135 ((_ is Nil!41288) (_1!23393 lt!1354142)))))

(assert (=> d!1148843 (= (size!31006 (_1!23393 lt!1354142)) lt!1354346)))

(declare-fun b!3881405 () Bool)

(assert (=> b!3881405 (= e!2401817 0)))

(declare-fun b!3881406 () Bool)

(assert (=> b!3881406 (= e!2401817 (+ 1 (size!31006 (t!315247 (_1!23393 lt!1354142)))))))

(assert (= (and d!1148843 c!675135) b!3881405))

(assert (= (and d!1148843 (not c!675135)) b!3881406))

(declare-fun m!4440113 () Bool)

(assert (=> b!3881406 m!4440113))

(assert (=> d!1148435 d!1148843))

(assert (=> d!1148435 d!1148493))

(declare-fun b!3881435 () Bool)

(declare-fun res!1572802 () Bool)

(declare-fun e!2401837 () Bool)

(assert (=> b!3881435 (=> (not res!1572802) (not e!2401837))))

(assert (=> b!3881435 (= res!1572802 (isEmpty!24523 (tail!5957 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun b!3881436 () Bool)

(declare-fun e!2401833 () Bool)

(declare-fun e!2401838 () Bool)

(assert (=> b!3881436 (= e!2401833 e!2401838)))

(declare-fun c!675142 () Bool)

(assert (=> b!3881436 (= c!675142 ((_ is EmptyLang!11321) (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))))))

(declare-fun b!3881437 () Bool)

(declare-fun lt!1354349 () Bool)

(assert (=> b!3881437 (= e!2401838 (not lt!1354349))))

(declare-fun b!3881438 () Bool)

(declare-fun res!1572808 () Bool)

(assert (=> b!3881438 (=> (not res!1572808) (not e!2401837))))

(declare-fun call!282893 () Bool)

(assert (=> b!3881438 (= res!1572808 (not call!282893))))

(declare-fun b!3881439 () Bool)

(declare-fun res!1572801 () Bool)

(declare-fun e!2401835 () Bool)

(assert (=> b!3881439 (=> res!1572801 e!2401835)))

(assert (=> b!3881439 (= res!1572801 (not ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))))

(assert (=> b!3881439 (= e!2401838 e!2401835)))

(declare-fun bm!282888 () Bool)

(assert (=> bm!282888 (= call!282893 (isEmpty!24523 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))

(declare-fun b!3881440 () Bool)

(declare-fun res!1572803 () Bool)

(declare-fun e!2401836 () Bool)

(assert (=> b!3881440 (=> res!1572803 e!2401836)))

(assert (=> b!3881440 (= res!1572803 (not (isEmpty!24523 (tail!5957 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))))

(declare-fun b!3881441 () Bool)

(declare-fun e!2401832 () Bool)

(assert (=> b!3881441 (= e!2401832 (nullable!3949 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))))))

(declare-fun b!3881442 () Bool)

(declare-fun e!2401834 () Bool)

(assert (=> b!3881442 (= e!2401834 e!2401836)))

(declare-fun res!1572806 () Bool)

(assert (=> b!3881442 (=> res!1572806 e!2401836)))

(assert (=> b!3881442 (= res!1572806 call!282893)))

(declare-fun b!3881443 () Bool)

(assert (=> b!3881443 (= e!2401837 (= (head!8240 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (c!674920 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun b!3881444 () Bool)

(assert (=> b!3881444 (= e!2401836 (not (= (head!8240 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (c!674920 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))))))))

(declare-fun b!3881445 () Bool)

(assert (=> b!3881445 (= e!2401833 (= lt!1354349 call!282893))))

(declare-fun b!3881447 () Bool)

(declare-fun res!1572805 () Bool)

(assert (=> b!3881447 (=> res!1572805 e!2401835)))

(assert (=> b!3881447 (= res!1572805 e!2401837)))

(declare-fun res!1572804 () Bool)

(assert (=> b!3881447 (=> (not res!1572804) (not e!2401837))))

(assert (=> b!3881447 (= res!1572804 lt!1354349)))

(declare-fun b!3881448 () Bool)

(declare-fun derivativeStep!3426 (Regex!11321 C!22828) Regex!11321)

(assert (=> b!3881448 (= e!2401832 (matchR!5426 (derivativeStep!3426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) (head!8240 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))))) (tail!5957 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun b!3881446 () Bool)

(assert (=> b!3881446 (= e!2401835 e!2401834)))

(declare-fun res!1572807 () Bool)

(assert (=> b!3881446 (=> (not res!1572807) (not e!2401834))))

(assert (=> b!3881446 (= res!1572807 (not lt!1354349))))

(declare-fun d!1148845 () Bool)

(assert (=> d!1148845 e!2401833))

(declare-fun c!675144 () Bool)

(assert (=> d!1148845 (= c!675144 ((_ is EmptyExpr!11321) (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))))))

(assert (=> d!1148845 (= lt!1354349 e!2401832)))

(declare-fun c!675143 () Bool)

(assert (=> d!1148845 (= c!675143 (isEmpty!24523 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))

(assert (=> d!1148845 (validRegex!5148 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))))

(assert (=> d!1148845 (= (matchR!5426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) lt!1354349)))

(assert (= (and d!1148845 c!675143) b!3881441))

(assert (= (and d!1148845 (not c!675143)) b!3881448))

(assert (= (and d!1148845 c!675144) b!3881445))

(assert (= (and d!1148845 (not c!675144)) b!3881436))

(assert (= (and b!3881436 c!675142) b!3881437))

(assert (= (and b!3881436 (not c!675142)) b!3881439))

(assert (= (and b!3881439 (not res!1572801)) b!3881447))

(assert (= (and b!3881447 res!1572804) b!3881438))

(assert (= (and b!3881438 res!1572808) b!3881435))

(assert (= (and b!3881435 res!1572802) b!3881443))

(assert (= (and b!3881447 (not res!1572805)) b!3881446))

(assert (= (and b!3881446 res!1572807) b!3881442))

(assert (= (and b!3881442 (not res!1572806)) b!3881440))

(assert (= (and b!3881440 (not res!1572803)) b!3881444))

(assert (= (or b!3881445 b!3881438 b!3881442) bm!282888))

(declare-fun m!4440115 () Bool)

(assert (=> b!3881441 m!4440115))

(assert (=> b!3881448 m!4439257))

(declare-fun m!4440117 () Bool)

(assert (=> b!3881448 m!4440117))

(assert (=> b!3881448 m!4440117))

(declare-fun m!4440119 () Bool)

(assert (=> b!3881448 m!4440119))

(assert (=> b!3881448 m!4439257))

(declare-fun m!4440121 () Bool)

(assert (=> b!3881448 m!4440121))

(assert (=> b!3881448 m!4440119))

(assert (=> b!3881448 m!4440121))

(declare-fun m!4440123 () Bool)

(assert (=> b!3881448 m!4440123))

(assert (=> b!3881435 m!4439257))

(assert (=> b!3881435 m!4440121))

(assert (=> b!3881435 m!4440121))

(declare-fun m!4440125 () Bool)

(assert (=> b!3881435 m!4440125))

(assert (=> b!3881443 m!4439257))

(assert (=> b!3881443 m!4440117))

(assert (=> bm!282888 m!4439257))

(declare-fun m!4440127 () Bool)

(assert (=> bm!282888 m!4440127))

(assert (=> b!3881440 m!4439257))

(assert (=> b!3881440 m!4440121))

(assert (=> b!3881440 m!4440121))

(assert (=> b!3881440 m!4440125))

(assert (=> d!1148845 m!4439257))

(assert (=> d!1148845 m!4440127))

(declare-fun m!4440129 () Bool)

(assert (=> d!1148845 m!4440129))

(assert (=> b!3881444 m!4439257))

(assert (=> b!3881444 m!4440117))

(assert (=> b!3880714 d!1148845))

(assert (=> b!3880714 d!1148651))

(declare-fun d!1148847 () Bool)

(assert (=> d!1148847 (= (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))) (list!15346 (c!674921 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))

(declare-fun bs!583795 () Bool)

(assert (= bs!583795 d!1148847))

(declare-fun m!4440131 () Bool)

(assert (=> bs!583795 m!4440131))

(assert (=> b!3880714 d!1148847))

(declare-fun d!1148849 () Bool)

(declare-fun lt!1354350 () BalanceConc!24848)

(assert (=> d!1148849 (= (list!15344 lt!1354350) (originalCharacters!7016 (_1!23394 (get!13660 lt!1354203))))))

(assert (=> d!1148849 (= lt!1354350 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))) (value!203490 (_1!23394 (get!13660 lt!1354203)))))))

(assert (=> d!1148849 (= (charsOf!4240 (_1!23394 (get!13660 lt!1354203))) lt!1354350)))

(declare-fun b_lambda!113269 () Bool)

(assert (=> (not b_lambda!113269) (not d!1148849)))

(declare-fun t!315481 () Bool)

(declare-fun tb!225365 () Bool)

(assert (=> (and b!3880761 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315481) tb!225365))

(declare-fun b!3881449 () Bool)

(declare-fun e!2401839 () Bool)

(declare-fun tp!1176834 () Bool)

(assert (=> b!3881449 (= e!2401839 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))) (value!203490 (_1!23394 (get!13660 lt!1354203)))))) tp!1176834))))

(declare-fun result!274488 () Bool)

(assert (=> tb!225365 (= result!274488 (and (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203))))) (value!203490 (_1!23394 (get!13660 lt!1354203))))) e!2401839))))

(assert (= tb!225365 b!3881449))

(declare-fun m!4440133 () Bool)

(assert (=> b!3881449 m!4440133))

(declare-fun m!4440135 () Bool)

(assert (=> tb!225365 m!4440135))

(assert (=> d!1148849 t!315481))

(declare-fun b_and!291255 () Bool)

(assert (= b_and!291211 (and (=> t!315481 result!274488) b_and!291255)))

(declare-fun tb!225367 () Bool)

(declare-fun t!315483 () Bool)

(assert (=> (and b!3880743 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315483) tb!225367))

(declare-fun result!274490 () Bool)

(assert (= result!274490 result!274488))

(assert (=> d!1148849 t!315483))

(declare-fun b_and!291257 () Bool)

(assert (= b_and!291209 (and (=> t!315483 result!274490) b_and!291257)))

(declare-fun t!315485 () Bool)

(declare-fun tb!225369 () Bool)

(assert (=> (and b!3880322 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315485) tb!225369))

(declare-fun result!274492 () Bool)

(assert (= result!274492 result!274488))

(assert (=> d!1148849 t!315485))

(declare-fun b_and!291259 () Bool)

(assert (= b_and!291217 (and (=> t!315485 result!274492) b_and!291259)))

(declare-fun tb!225371 () Bool)

(declare-fun t!315487 () Bool)

(assert (=> (and b!3880321 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315487) tb!225371))

(declare-fun result!274494 () Bool)

(assert (= result!274494 result!274488))

(assert (=> d!1148849 t!315487))

(declare-fun b_and!291261 () Bool)

(assert (= b_and!291207 (and (=> t!315487 result!274494) b_and!291261)))

(declare-fun tb!225373 () Bool)

(declare-fun t!315489 () Bool)

(assert (=> (and b!3880325 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315489) tb!225373))

(declare-fun result!274496 () Bool)

(assert (= result!274496 result!274488))

(assert (=> d!1148849 t!315489))

(declare-fun b_and!291263 () Bool)

(assert (= b_and!291213 (and (=> t!315489 result!274496) b_and!291263)))

(declare-fun tb!225375 () Bool)

(declare-fun t!315491 () Bool)

(assert (=> (and b!3880757 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315491) tb!225375))

(declare-fun result!274498 () Bool)

(assert (= result!274498 result!274488))

(assert (=> d!1148849 t!315491))

(declare-fun b_and!291265 () Bool)

(assert (= b_and!291215 (and (=> t!315491 result!274498) b_and!291265)))

(declare-fun m!4440137 () Bool)

(assert (=> d!1148849 m!4440137))

(declare-fun m!4440139 () Bool)

(assert (=> d!1148849 m!4440139))

(assert (=> b!3880714 d!1148849))

(declare-fun d!1148851 () Bool)

(assert (=> d!1148851 (= (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))) (isBalanced!3628 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(declare-fun bs!583796 () Bool)

(assert (= bs!583796 d!1148851))

(declare-fun m!4440141 () Bool)

(assert (=> bs!583796 m!4440141))

(assert (=> tb!225155 d!1148851))

(declare-fun b!3881450 () Bool)

(declare-fun e!2401842 () Bool)

(assert (=> b!3881450 (= e!2401842 (inv!17 (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))

(declare-fun b!3881451 () Bool)

(declare-fun e!2401840 () Bool)

(assert (=> b!3881451 (= e!2401840 e!2401842)))

(declare-fun c!675145 () Bool)

(assert (=> b!3881451 (= c!675145 ((_ is IntegerValue!19939) (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))

(declare-fun b!3881452 () Bool)

(declare-fun e!2401841 () Bool)

(assert (=> b!3881452 (= e!2401841 (inv!15 (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))

(declare-fun b!3881453 () Bool)

(declare-fun res!1572809 () Bool)

(assert (=> b!3881453 (=> res!1572809 e!2401841)))

(assert (=> b!3881453 (= res!1572809 (not ((_ is IntegerValue!19940) (value!203490 (h!46708 (t!315247 suffixTokens!72))))))))

(assert (=> b!3881453 (= e!2401842 e!2401841)))

(declare-fun b!3881454 () Bool)

(assert (=> b!3881454 (= e!2401840 (inv!16 (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))

(declare-fun d!1148853 () Bool)

(declare-fun c!675146 () Bool)

(assert (=> d!1148853 (= c!675146 ((_ is IntegerValue!19938) (value!203490 (h!46708 (t!315247 suffixTokens!72)))))))

(assert (=> d!1148853 (= (inv!21 (value!203490 (h!46708 (t!315247 suffixTokens!72)))) e!2401840)))

(assert (= (and d!1148853 c!675146) b!3881454))

(assert (= (and d!1148853 (not c!675146)) b!3881451))

(assert (= (and b!3881451 c!675145) b!3881450))

(assert (= (and b!3881451 (not c!675145)) b!3881453))

(assert (= (and b!3881453 (not res!1572809)) b!3881452))

(declare-fun m!4440143 () Bool)

(assert (=> b!3881450 m!4440143))

(declare-fun m!4440145 () Bool)

(assert (=> b!3881452 m!4440145))

(declare-fun m!4440147 () Bool)

(assert (=> b!3881454 m!4440147))

(assert (=> b!3880755 d!1148853))

(declare-fun d!1148855 () Bool)

(declare-fun lt!1354351 () Int)

(assert (=> d!1148855 (>= lt!1354351 0)))

(declare-fun e!2401843 () Int)

(assert (=> d!1148855 (= lt!1354351 e!2401843)))

(declare-fun c!675147 () Bool)

(assert (=> d!1148855 (= c!675147 ((_ is Nil!41287) lt!1354146))))

(assert (=> d!1148855 (= (size!31004 lt!1354146) lt!1354351)))

(declare-fun b!3881455 () Bool)

(assert (=> b!3881455 (= e!2401843 0)))

(declare-fun b!3881456 () Bool)

(assert (=> b!3881456 (= e!2401843 (+ 1 (size!31004 (t!315246 lt!1354146))))))

(assert (= (and d!1148855 c!675147) b!3881455))

(assert (= (and d!1148855 (not c!675147)) b!3881456))

(declare-fun m!4440149 () Bool)

(assert (=> b!3881456 m!4440149))

(assert (=> b!3880536 d!1148855))

(declare-fun d!1148857 () Bool)

(declare-fun lt!1354352 () Int)

(assert (=> d!1148857 (>= lt!1354352 0)))

(declare-fun e!2401844 () Int)

(assert (=> d!1148857 (= lt!1354352 e!2401844)))

(declare-fun c!675148 () Bool)

(assert (=> d!1148857 (= c!675148 ((_ is Nil!41287) prefix!426))))

(assert (=> d!1148857 (= (size!31004 prefix!426) lt!1354352)))

(declare-fun b!3881457 () Bool)

(assert (=> b!3881457 (= e!2401844 0)))

(declare-fun b!3881458 () Bool)

(assert (=> b!3881458 (= e!2401844 (+ 1 (size!31004 (t!315246 prefix!426))))))

(assert (= (and d!1148857 c!675148) b!3881457))

(assert (= (and d!1148857 (not c!675148)) b!3881458))

(assert (=> b!3881458 m!4439351))

(assert (=> b!3880536 d!1148857))

(assert (=> b!3880536 d!1148817))

(assert (=> b!3880709 d!1148847))

(assert (=> b!3880709 d!1148849))

(assert (=> b!3880709 d!1148651))

(declare-fun d!1148859 () Bool)

(declare-fun lt!1354353 () List!41411)

(assert (=> d!1148859 (= (++!10590 (t!315246 lt!1354075) lt!1354353) (tail!5957 lt!1354072))))

(declare-fun e!2401845 () List!41411)

(assert (=> d!1148859 (= lt!1354353 e!2401845)))

(declare-fun c!675149 () Bool)

(assert (=> d!1148859 (= c!675149 ((_ is Cons!41287) (t!315246 lt!1354075)))))

(assert (=> d!1148859 (>= (size!31004 (tail!5957 lt!1354072)) (size!31004 (t!315246 lt!1354075)))))

(assert (=> d!1148859 (= (getSuffix!1966 (tail!5957 lt!1354072) (t!315246 lt!1354075)) lt!1354353)))

(declare-fun b!3881459 () Bool)

(assert (=> b!3881459 (= e!2401845 (getSuffix!1966 (tail!5957 (tail!5957 lt!1354072)) (t!315246 (t!315246 lt!1354075))))))

(declare-fun b!3881460 () Bool)

(assert (=> b!3881460 (= e!2401845 (tail!5957 lt!1354072))))

(assert (= (and d!1148859 c!675149) b!3881459))

(assert (= (and d!1148859 (not c!675149)) b!3881460))

(declare-fun m!4440151 () Bool)

(assert (=> d!1148859 m!4440151))

(assert (=> d!1148859 m!4439211))

(declare-fun m!4440153 () Bool)

(assert (=> d!1148859 m!4440153))

(assert (=> d!1148859 m!4439097))

(assert (=> b!3881459 m!4439211))

(declare-fun m!4440155 () Bool)

(assert (=> b!3881459 m!4440155))

(assert (=> b!3881459 m!4440155))

(declare-fun m!4440157 () Bool)

(assert (=> b!3881459 m!4440157))

(assert (=> b!3880669 d!1148859))

(declare-fun d!1148861 () Bool)

(assert (=> d!1148861 (= (tail!5957 lt!1354072) (t!315246 lt!1354072))))

(assert (=> b!3880669 d!1148861))

(declare-fun d!1148863 () Bool)

(declare-fun e!2401847 () Bool)

(assert (=> d!1148863 e!2401847))

(declare-fun res!1572810 () Bool)

(assert (=> d!1148863 (=> (not res!1572810) (not e!2401847))))

(declare-fun lt!1354354 () List!41411)

(assert (=> d!1148863 (= res!1572810 (= (content!6169 lt!1354354) ((_ map or) (content!6169 lt!1354075) (content!6169 lt!1354180))))))

(declare-fun e!2401846 () List!41411)

(assert (=> d!1148863 (= lt!1354354 e!2401846)))

(declare-fun c!675150 () Bool)

(assert (=> d!1148863 (= c!675150 ((_ is Nil!41287) lt!1354075))))

(assert (=> d!1148863 (= (++!10590 lt!1354075 lt!1354180) lt!1354354)))

(declare-fun b!3881462 () Bool)

(assert (=> b!3881462 (= e!2401846 (Cons!41287 (h!46707 lt!1354075) (++!10590 (t!315246 lt!1354075) lt!1354180)))))

(declare-fun b!3881463 () Bool)

(declare-fun res!1572811 () Bool)

(assert (=> b!3881463 (=> (not res!1572811) (not e!2401847))))

(assert (=> b!3881463 (= res!1572811 (= (size!31004 lt!1354354) (+ (size!31004 lt!1354075) (size!31004 lt!1354180))))))

(declare-fun b!3881464 () Bool)

(assert (=> b!3881464 (= e!2401847 (or (not (= lt!1354180 Nil!41287)) (= lt!1354354 lt!1354075)))))

(declare-fun b!3881461 () Bool)

(assert (=> b!3881461 (= e!2401846 lt!1354180)))

(assert (= (and d!1148863 c!675150) b!3881461))

(assert (= (and d!1148863 (not c!675150)) b!3881462))

(assert (= (and d!1148863 res!1572810) b!3881463))

(assert (= (and b!3881463 res!1572811) b!3881464))

(declare-fun m!4440159 () Bool)

(assert (=> d!1148863 m!4440159))

(assert (=> d!1148863 m!4439087))

(declare-fun m!4440161 () Bool)

(assert (=> d!1148863 m!4440161))

(declare-fun m!4440163 () Bool)

(assert (=> b!3881462 m!4440163))

(declare-fun m!4440165 () Bool)

(assert (=> b!3881463 m!4440165))

(assert (=> b!3881463 m!4438807))

(declare-fun m!4440167 () Bool)

(assert (=> b!3881463 m!4440167))

(assert (=> d!1148471 d!1148863))

(assert (=> d!1148471 d!1148695))

(assert (=> d!1148471 d!1148445))

(declare-fun d!1148865 () Bool)

(declare-fun lt!1354355 () Int)

(assert (=> d!1148865 (>= lt!1354355 0)))

(declare-fun e!2401848 () Int)

(assert (=> d!1148865 (= lt!1354355 e!2401848)))

(declare-fun c!675151 () Bool)

(assert (=> d!1148865 (= c!675151 ((_ is Nil!41287) (_2!23394 (get!13660 lt!1354203))))))

(assert (=> d!1148865 (= (size!31004 (_2!23394 (get!13660 lt!1354203))) lt!1354355)))

(declare-fun b!3881465 () Bool)

(assert (=> b!3881465 (= e!2401848 0)))

(declare-fun b!3881466 () Bool)

(assert (=> b!3881466 (= e!2401848 (+ 1 (size!31004 (t!315246 (_2!23394 (get!13660 lt!1354203))))))))

(assert (= (and d!1148865 c!675151) b!3881465))

(assert (= (and d!1148865 (not c!675151)) b!3881466))

(declare-fun m!4440169 () Bool)

(assert (=> b!3881466 m!4440169))

(assert (=> b!3880711 d!1148865))

(assert (=> b!3880711 d!1148651))

(assert (=> b!3880711 d!1148695))

(declare-fun d!1148867 () Bool)

(assert (=> d!1148867 (= (isDefined!6897 lt!1354203) (not (isEmpty!24526 lt!1354203)))))

(declare-fun bs!583797 () Bool)

(assert (= bs!583797 d!1148867))

(assert (=> bs!583797 m!4439277))

(assert (=> b!3880708 d!1148867))

(declare-fun b!3881469 () Bool)

(declare-fun res!1572812 () Bool)

(declare-fun e!2401850 () Bool)

(assert (=> b!3881469 (=> (not res!1572812) (not e!2401850))))

(declare-fun lt!1354356 () List!41412)

(assert (=> b!3881469 (= res!1572812 (= (size!31006 lt!1354356) (+ (size!31006 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))) (size!31006 (_1!23393 lt!1354074)))))))

(declare-fun d!1148869 () Bool)

(assert (=> d!1148869 e!2401850))

(declare-fun res!1572813 () Bool)

(assert (=> d!1148869 (=> (not res!1572813) (not e!2401850))))

(assert (=> d!1148869 (= res!1572813 (= (content!6168 lt!1354356) ((_ map or) (content!6168 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))) (content!6168 (_1!23393 lt!1354074)))))))

(declare-fun e!2401849 () List!41412)

(assert (=> d!1148869 (= lt!1354356 e!2401849)))

(declare-fun c!675152 () Bool)

(assert (=> d!1148869 (= c!675152 ((_ is Nil!41288) (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))))))

(assert (=> d!1148869 (= (++!10589 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)) (_1!23393 lt!1354074)) lt!1354356)))

(declare-fun b!3881467 () Bool)

(assert (=> b!3881467 (= e!2401849 (_1!23393 lt!1354074))))

(declare-fun b!3881470 () Bool)

(assert (=> b!3881470 (= e!2401850 (or (not (= (_1!23393 lt!1354074) Nil!41288)) (= lt!1354356 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288)))))))

(declare-fun b!3881468 () Bool)

(assert (=> b!3881468 (= e!2401849 (Cons!41288 (h!46708 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))) (++!10589 (t!315247 (t!315247 (Cons!41288 (_1!23394 (v!39131 lt!1354073)) Nil!41288))) (_1!23393 lt!1354074))))))

(assert (= (and d!1148869 c!675152) b!3881467))

(assert (= (and d!1148869 (not c!675152)) b!3881468))

(assert (= (and d!1148869 res!1572813) b!3881469))

(assert (= (and b!3881469 res!1572812) b!3881470))

(declare-fun m!4440171 () Bool)

(assert (=> b!3881469 m!4440171))

(assert (=> b!3881469 m!4439355))

(assert (=> b!3881469 m!4438825))

(declare-fun m!4440173 () Bool)

(assert (=> d!1148869 m!4440173))

(assert (=> d!1148869 m!4440107))

(assert (=> d!1148869 m!4438831))

(declare-fun m!4440175 () Bool)

(assert (=> b!3881468 m!4440175))

(assert (=> b!3880342 d!1148869))

(assert (=> d!1148465 d!1148463))

(declare-fun d!1148871 () Bool)

(assert (=> d!1148871 (ruleValid!2364 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148871 true))

(declare-fun _$65!1338 () Unit!59356)

(assert (=> d!1148871 (= (choose!23012 thiss!20629 (rule!9314 (_1!23394 (v!39131 lt!1354073))) rules!2768) _$65!1338)))

(declare-fun bs!583798 () Bool)

(assert (= bs!583798 d!1148871))

(assert (=> bs!583798 m!4438803))

(assert (=> d!1148465 d!1148871))

(declare-fun d!1148873 () Bool)

(declare-fun lt!1354357 () Bool)

(assert (=> d!1148873 (= lt!1354357 (select (content!6171 rules!2768) (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))

(declare-fun e!2401852 () Bool)

(assert (=> d!1148873 (= lt!1354357 e!2401852)))

(declare-fun res!1572814 () Bool)

(assert (=> d!1148873 (=> (not res!1572814) (not e!2401852))))

(assert (=> d!1148873 (= res!1572814 ((_ is Cons!41289) rules!2768))))

(assert (=> d!1148873 (= (contains!8301 rules!2768 (rule!9314 (_1!23394 (v!39131 lt!1354073)))) lt!1354357)))

(declare-fun b!3881471 () Bool)

(declare-fun e!2401851 () Bool)

(assert (=> b!3881471 (= e!2401852 e!2401851)))

(declare-fun res!1572815 () Bool)

(assert (=> b!3881471 (=> res!1572815 e!2401851)))

(assert (=> b!3881471 (= res!1572815 (= (h!46709 rules!2768) (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))

(declare-fun b!3881472 () Bool)

(assert (=> b!3881472 (= e!2401851 (contains!8301 (t!315248 rules!2768) (rule!9314 (_1!23394 (v!39131 lt!1354073)))))))

(assert (= (and d!1148873 res!1572814) b!3881471))

(assert (= (and b!3881471 (not res!1572815)) b!3881472))

(assert (=> d!1148873 m!4440091))

(declare-fun m!4440177 () Bool)

(assert (=> d!1148873 m!4440177))

(declare-fun m!4440179 () Bool)

(assert (=> b!3881472 m!4440179))

(assert (=> d!1148465 d!1148873))

(declare-fun d!1148875 () Bool)

(declare-fun nullableFct!1118 (Regex!11321) Bool)

(assert (=> d!1148875 (= (nullable!3949 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (nullableFct!1118 (regex!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun bs!583799 () Bool)

(assert (= bs!583799 d!1148875))

(declare-fun m!4440181 () Bool)

(assert (=> bs!583799 m!4440181))

(assert (=> b!3880655 d!1148875))

(declare-fun b!3881473 () Bool)

(declare-fun e!2401855 () Bool)

(assert (=> b!3881473 (= e!2401855 (inv!17 (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))

(declare-fun b!3881474 () Bool)

(declare-fun e!2401853 () Bool)

(assert (=> b!3881474 (= e!2401853 e!2401855)))

(declare-fun c!675153 () Bool)

(assert (=> b!3881474 (= c!675153 ((_ is IntegerValue!19939) (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))

(declare-fun b!3881475 () Bool)

(declare-fun e!2401854 () Bool)

(assert (=> b!3881475 (= e!2401854 (inv!15 (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))

(declare-fun b!3881476 () Bool)

(declare-fun res!1572816 () Bool)

(assert (=> b!3881476 (=> res!1572816 e!2401854)))

(assert (=> b!3881476 (= res!1572816 (not ((_ is IntegerValue!19940) (value!203490 (h!46708 (t!315247 prefixTokens!80))))))))

(assert (=> b!3881476 (= e!2401855 e!2401854)))

(declare-fun b!3881477 () Bool)

(assert (=> b!3881477 (= e!2401853 (inv!16 (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))

(declare-fun d!1148877 () Bool)

(declare-fun c!675154 () Bool)

(assert (=> d!1148877 (= c!675154 ((_ is IntegerValue!19938) (value!203490 (h!46708 (t!315247 prefixTokens!80)))))))

(assert (=> d!1148877 (= (inv!21 (value!203490 (h!46708 (t!315247 prefixTokens!80)))) e!2401853)))

(assert (= (and d!1148877 c!675154) b!3881477))

(assert (= (and d!1148877 (not c!675154)) b!3881474))

(assert (= (and b!3881474 c!675153) b!3881473))

(assert (= (and b!3881474 (not c!675153)) b!3881476))

(assert (= (and b!3881476 (not res!1572816)) b!3881475))

(declare-fun m!4440183 () Bool)

(assert (=> b!3881473 m!4440183))

(declare-fun m!4440185 () Bool)

(assert (=> b!3881475 m!4440185))

(declare-fun m!4440187 () Bool)

(assert (=> b!3881477 m!4440187))

(assert (=> b!3880759 d!1148877))

(declare-fun d!1148879 () Bool)

(declare-fun e!2401857 () Bool)

(assert (=> d!1148879 e!2401857))

(declare-fun res!1572817 () Bool)

(assert (=> d!1148879 (=> (not res!1572817) (not e!2401857))))

(declare-fun lt!1354358 () List!41411)

(assert (=> d!1148879 (= res!1572817 (= (content!6169 lt!1354358) ((_ map or) (content!6169 (t!315246 lt!1354075)) (content!6169 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun e!2401856 () List!41411)

(assert (=> d!1148879 (= lt!1354358 e!2401856)))

(declare-fun c!675155 () Bool)

(assert (=> d!1148879 (= c!675155 ((_ is Nil!41287) (t!315246 lt!1354075)))))

(assert (=> d!1148879 (= (++!10590 (t!315246 lt!1354075) (_2!23394 (v!39131 lt!1354073))) lt!1354358)))

(declare-fun b!3881479 () Bool)

(assert (=> b!3881479 (= e!2401856 (Cons!41287 (h!46707 (t!315246 lt!1354075)) (++!10590 (t!315246 (t!315246 lt!1354075)) (_2!23394 (v!39131 lt!1354073)))))))

(declare-fun b!3881480 () Bool)

(declare-fun res!1572818 () Bool)

(assert (=> b!3881480 (=> (not res!1572818) (not e!2401857))))

(assert (=> b!3881480 (= res!1572818 (= (size!31004 lt!1354358) (+ (size!31004 (t!315246 lt!1354075)) (size!31004 (_2!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3881481 () Bool)

(assert (=> b!3881481 (= e!2401857 (or (not (= (_2!23394 (v!39131 lt!1354073)) Nil!41287)) (= lt!1354358 (t!315246 lt!1354075))))))

(declare-fun b!3881478 () Bool)

(assert (=> b!3881478 (= e!2401856 (_2!23394 (v!39131 lt!1354073)))))

(assert (= (and d!1148879 c!675155) b!3881478))

(assert (= (and d!1148879 (not c!675155)) b!3881479))

(assert (= (and d!1148879 res!1572817) b!3881480))

(assert (= (and b!3881480 res!1572818) b!3881481))

(declare-fun m!4440189 () Bool)

(assert (=> d!1148879 m!4440189))

(assert (=> d!1148879 m!4440081))

(assert (=> d!1148879 m!4439089))

(declare-fun m!4440191 () Bool)

(assert (=> b!3881479 m!4440191))

(declare-fun m!4440193 () Bool)

(assert (=> b!3881480 m!4440193))

(assert (=> b!3881480 m!4439097))

(assert (=> b!3881480 m!4439095))

(assert (=> b!3880547 d!1148879))

(declare-fun bs!583800 () Bool)

(declare-fun d!1148881 () Bool)

(assert (= bs!583800 (and d!1148881 d!1148745)))

(declare-fun lambda!126281 () Int)

(assert (=> bs!583800 (= (= (toValue!8844 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (= lambda!126281 lambda!126276))))

(assert (=> d!1148881 true))

(assert (=> d!1148881 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (h!46709 rules!2768)))) (dynLambda!17728 order!22201 lambda!126281))))

(assert (=> d!1148881 (= (equivClasses!2647 (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (h!46709 rules!2768)))) (Forall2!1036 lambda!126281))))

(declare-fun bs!583801 () Bool)

(assert (= bs!583801 d!1148881))

(declare-fun m!4440195 () Bool)

(assert (=> bs!583801 m!4440195))

(assert (=> b!3880347 d!1148881))

(declare-fun d!1148883 () Bool)

(declare-fun lt!1354359 () Int)

(assert (=> d!1148883 (>= lt!1354359 0)))

(declare-fun e!2401858 () Int)

(assert (=> d!1148883 (= lt!1354359 e!2401858)))

(declare-fun c!675156 () Bool)

(assert (=> d!1148883 (= c!675156 ((_ is Nil!41288) lt!1354143))))

(assert (=> d!1148883 (= (size!31006 lt!1354143) lt!1354359)))

(declare-fun b!3881482 () Bool)

(assert (=> b!3881482 (= e!2401858 0)))

(declare-fun b!3881483 () Bool)

(assert (=> b!3881483 (= e!2401858 (+ 1 (size!31006 (t!315247 lt!1354143))))))

(assert (= (and d!1148883 c!675156) b!3881482))

(assert (= (and d!1148883 (not c!675156)) b!3881483))

(declare-fun m!4440197 () Bool)

(assert (=> b!3881483 m!4440197))

(assert (=> b!3880524 d!1148883))

(declare-fun d!1148885 () Bool)

(declare-fun lt!1354360 () Int)

(assert (=> d!1148885 (>= lt!1354360 0)))

(declare-fun e!2401859 () Int)

(assert (=> d!1148885 (= lt!1354360 e!2401859)))

(declare-fun c!675157 () Bool)

(assert (=> d!1148885 (= c!675157 ((_ is Nil!41288) prefixTokens!80))))

(assert (=> d!1148885 (= (size!31006 prefixTokens!80) lt!1354360)))

(declare-fun b!3881484 () Bool)

(assert (=> b!3881484 (= e!2401859 0)))

(declare-fun b!3881485 () Bool)

(assert (=> b!3881485 (= e!2401859 (+ 1 (size!31006 (t!315247 prefixTokens!80))))))

(assert (= (and d!1148885 c!675157) b!3881484))

(assert (= (and d!1148885 (not c!675157)) b!3881485))

(assert (=> b!3881485 m!4439705))

(assert (=> b!3880524 d!1148885))

(declare-fun d!1148887 () Bool)

(declare-fun lt!1354361 () Int)

(assert (=> d!1148887 (>= lt!1354361 0)))

(declare-fun e!2401860 () Int)

(assert (=> d!1148887 (= lt!1354361 e!2401860)))

(declare-fun c!675158 () Bool)

(assert (=> d!1148887 (= c!675158 ((_ is Nil!41288) suffixTokens!72))))

(assert (=> d!1148887 (= (size!31006 suffixTokens!72) lt!1354361)))

(declare-fun b!3881486 () Bool)

(assert (=> b!3881486 (= e!2401860 0)))

(declare-fun b!3881487 () Bool)

(assert (=> b!3881487 (= e!2401860 (+ 1 (size!31006 (t!315247 suffixTokens!72))))))

(assert (= (and d!1148887 c!675158) b!3881486))

(assert (= (and d!1148887 (not c!675158)) b!3881487))

(declare-fun m!4440199 () Bool)

(assert (=> b!3881487 m!4440199))

(assert (=> b!3880524 d!1148887))

(declare-fun d!1148889 () Bool)

(declare-fun lt!1354362 () Int)

(assert (=> d!1148889 (>= lt!1354362 0)))

(declare-fun e!2401861 () Int)

(assert (=> d!1148889 (= lt!1354362 e!2401861)))

(declare-fun c!675159 () Bool)

(assert (=> d!1148889 (= c!675159 ((_ is Nil!41287) (_2!23393 lt!1354189)))))

(assert (=> d!1148889 (= (size!31004 (_2!23393 lt!1354189)) lt!1354362)))

(declare-fun b!3881488 () Bool)

(assert (=> b!3881488 (= e!2401861 0)))

(declare-fun b!3881489 () Bool)

(assert (=> b!3881489 (= e!2401861 (+ 1 (size!31004 (t!315246 (_2!23393 lt!1354189)))))))

(assert (= (and d!1148889 c!675159) b!3881488))

(assert (= (and d!1148889 (not c!675159)) b!3881489))

(declare-fun m!4440201 () Bool)

(assert (=> b!3881489 m!4440201))

(assert (=> b!3880675 d!1148889))

(assert (=> b!3880675 d!1148543))

(declare-fun d!1148891 () Bool)

(assert (=> d!1148891 (= (isEmpty!24524 (_1!23393 lt!1354142)) ((_ is Nil!41288) (_1!23393 lt!1354142)))))

(assert (=> b!3880521 d!1148891))

(declare-fun d!1148893 () Bool)

(declare-fun lt!1354363 () Int)

(assert (=> d!1148893 (>= lt!1354363 0)))

(declare-fun e!2401862 () Int)

(assert (=> d!1148893 (= lt!1354363 e!2401862)))

(declare-fun c!675160 () Bool)

(assert (=> d!1148893 (= c!675160 ((_ is Nil!41287) lt!1354083))))

(assert (=> d!1148893 (= (size!31004 lt!1354083) lt!1354363)))

(declare-fun b!3881490 () Bool)

(assert (=> b!3881490 (= e!2401862 0)))

(declare-fun b!3881491 () Bool)

(assert (=> b!3881491 (= e!2401862 (+ 1 (size!31004 (t!315246 lt!1354083))))))

(assert (= (and d!1148893 c!675160) b!3881490))

(assert (= (and d!1148893 (not c!675160)) b!3881491))

(declare-fun m!4440203 () Bool)

(assert (=> b!3881491 m!4440203))

(assert (=> b!3880604 d!1148893))

(assert (=> b!3880604 d!1148445))

(declare-fun d!1148895 () Bool)

(declare-fun e!2401864 () Bool)

(assert (=> d!1148895 e!2401864))

(declare-fun res!1572819 () Bool)

(assert (=> d!1148895 (=> (not res!1572819) (not e!2401864))))

(declare-fun lt!1354364 () List!41411)

(assert (=> d!1148895 (= res!1572819 (= (content!6169 lt!1354364) ((_ map or) (content!6169 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (content!6169 (_2!23394 (get!13660 lt!1354203))))))))

(declare-fun e!2401863 () List!41411)

(assert (=> d!1148895 (= lt!1354364 e!2401863)))

(declare-fun c!675161 () Bool)

(assert (=> d!1148895 (= c!675161 ((_ is Nil!41287) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))))))

(assert (=> d!1148895 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))) (_2!23394 (get!13660 lt!1354203))) lt!1354364)))

(declare-fun b!3881493 () Bool)

(assert (=> b!3881493 (= e!2401863 (Cons!41287 (h!46707 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (++!10590 (t!315246 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (_2!23394 (get!13660 lt!1354203)))))))

(declare-fun b!3881494 () Bool)

(declare-fun res!1572820 () Bool)

(assert (=> b!3881494 (=> (not res!1572820) (not e!2401864))))

(assert (=> b!3881494 (= res!1572820 (= (size!31004 lt!1354364) (+ (size!31004 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203))))) (size!31004 (_2!23394 (get!13660 lt!1354203))))))))

(declare-fun b!3881495 () Bool)

(assert (=> b!3881495 (= e!2401864 (or (not (= (_2!23394 (get!13660 lt!1354203)) Nil!41287)) (= lt!1354364 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354203)))))))))

(declare-fun b!3881492 () Bool)

(assert (=> b!3881492 (= e!2401863 (_2!23394 (get!13660 lt!1354203)))))

(assert (= (and d!1148895 c!675161) b!3881492))

(assert (= (and d!1148895 (not c!675161)) b!3881493))

(assert (= (and d!1148895 res!1572819) b!3881494))

(assert (= (and b!3881494 res!1572820) b!3881495))

(declare-fun m!4440205 () Bool)

(assert (=> d!1148895 m!4440205))

(assert (=> d!1148895 m!4439257))

(declare-fun m!4440207 () Bool)

(assert (=> d!1148895 m!4440207))

(declare-fun m!4440209 () Bool)

(assert (=> d!1148895 m!4440209))

(declare-fun m!4440211 () Bool)

(assert (=> b!3881493 m!4440211))

(declare-fun m!4440213 () Bool)

(assert (=> b!3881494 m!4440213))

(assert (=> b!3881494 m!4439257))

(declare-fun m!4440215 () Bool)

(assert (=> b!3881494 m!4440215))

(assert (=> b!3881494 m!4439265))

(assert (=> b!3880706 d!1148895))

(assert (=> b!3880706 d!1148847))

(assert (=> b!3880706 d!1148849))

(assert (=> b!3880706 d!1148651))

(declare-fun d!1148897 () Bool)

(declare-fun lt!1354365 () Int)

(assert (=> d!1148897 (>= lt!1354365 0)))

(declare-fun e!2401865 () Int)

(assert (=> d!1148897 (= lt!1354365 e!2401865)))

(declare-fun c!675162 () Bool)

(assert (=> d!1148897 (= c!675162 ((_ is Nil!41288) (_1!23393 lt!1354126)))))

(assert (=> d!1148897 (= (size!31006 (_1!23393 lt!1354126)) lt!1354365)))

(declare-fun b!3881496 () Bool)

(assert (=> b!3881496 (= e!2401865 0)))

(declare-fun b!3881497 () Bool)

(assert (=> b!3881497 (= e!2401865 (+ 1 (size!31006 (t!315247 (_1!23393 lt!1354126)))))))

(assert (= (and d!1148897 c!675162) b!3881496))

(assert (= (and d!1148897 (not c!675162)) b!3881497))

(declare-fun m!4440217 () Bool)

(assert (=> b!3881497 m!4440217))

(assert (=> d!1148371 d!1148897))

(declare-fun b!3881499 () Bool)

(declare-fun res!1572821 () Bool)

(declare-fun e!2401868 () Bool)

(assert (=> b!3881499 (=> (not res!1572821) (not e!2401868))))

(declare-fun lt!1354368 () Option!8834)

(assert (=> b!3881499 (= res!1572821 (= (value!203490 (_1!23394 (get!13660 lt!1354368))) (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354368)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354368)))))))))

(declare-fun b!3881500 () Bool)

(declare-fun e!2401866 () Bool)

(assert (=> b!3881500 (= e!2401866 e!2401868)))

(declare-fun res!1572826 () Bool)

(assert (=> b!3881500 (=> (not res!1572826) (not e!2401868))))

(assert (=> b!3881500 (= res!1572826 (isDefined!6897 lt!1354368))))

(declare-fun bm!282889 () Bool)

(declare-fun call!282894 () Option!8834)

(assert (=> bm!282889 (= call!282894 (maxPrefixOneRule!2387 thiss!20629 (h!46709 rules!2768) suffix!1176))))

(declare-fun b!3881501 () Bool)

(declare-fun res!1572824 () Bool)

(assert (=> b!3881501 (=> (not res!1572824) (not e!2401868))))

(assert (=> b!3881501 (= res!1572824 (= (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354368)))) (originalCharacters!7016 (_1!23394 (get!13660 lt!1354368)))))))

(declare-fun b!3881502 () Bool)

(declare-fun e!2401867 () Option!8834)

(assert (=> b!3881502 (= e!2401867 call!282894)))

(declare-fun b!3881503 () Bool)

(declare-fun res!1572823 () Bool)

(assert (=> b!3881503 (=> (not res!1572823) (not e!2401868))))

(assert (=> b!3881503 (= res!1572823 (< (size!31004 (_2!23394 (get!13660 lt!1354368))) (size!31004 suffix!1176)))))

(declare-fun d!1148899 () Bool)

(assert (=> d!1148899 e!2401866))

(declare-fun res!1572825 () Bool)

(assert (=> d!1148899 (=> res!1572825 e!2401866)))

(assert (=> d!1148899 (= res!1572825 (isEmpty!24526 lt!1354368))))

(assert (=> d!1148899 (= lt!1354368 e!2401867)))

(declare-fun c!675163 () Bool)

(assert (=> d!1148899 (= c!675163 (and ((_ is Cons!41289) rules!2768) ((_ is Nil!41289) (t!315248 rules!2768))))))

(declare-fun lt!1354366 () Unit!59356)

(declare-fun lt!1354370 () Unit!59356)

(assert (=> d!1148899 (= lt!1354366 lt!1354370)))

(assert (=> d!1148899 (isPrefix!3511 suffix!1176 suffix!1176)))

(assert (=> d!1148899 (= lt!1354370 (lemmaIsPrefixRefl!2220 suffix!1176 suffix!1176))))

(assert (=> d!1148899 (rulesValidInductive!2298 thiss!20629 rules!2768)))

(assert (=> d!1148899 (= (maxPrefix!3309 thiss!20629 rules!2768 suffix!1176) lt!1354368)))

(declare-fun b!3881498 () Bool)

(declare-fun res!1572822 () Bool)

(assert (=> b!3881498 (=> (not res!1572822) (not e!2401868))))

(assert (=> b!3881498 (= res!1572822 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354368)))) (_2!23394 (get!13660 lt!1354368))) suffix!1176))))

(declare-fun b!3881504 () Bool)

(assert (=> b!3881504 (= e!2401868 (contains!8301 rules!2768 (rule!9314 (_1!23394 (get!13660 lt!1354368)))))))

(declare-fun b!3881505 () Bool)

(declare-fun lt!1354369 () Option!8834)

(declare-fun lt!1354367 () Option!8834)

(assert (=> b!3881505 (= e!2401867 (ite (and ((_ is None!8833) lt!1354369) ((_ is None!8833) lt!1354367)) None!8833 (ite ((_ is None!8833) lt!1354367) lt!1354369 (ite ((_ is None!8833) lt!1354369) lt!1354367 (ite (>= (size!31003 (_1!23394 (v!39131 lt!1354369))) (size!31003 (_1!23394 (v!39131 lt!1354367)))) lt!1354369 lt!1354367)))))))

(assert (=> b!3881505 (= lt!1354369 call!282894)))

(assert (=> b!3881505 (= lt!1354367 (maxPrefix!3309 thiss!20629 (t!315248 rules!2768) suffix!1176))))

(declare-fun b!3881506 () Bool)

(declare-fun res!1572827 () Bool)

(assert (=> b!3881506 (=> (not res!1572827) (not e!2401868))))

(assert (=> b!3881506 (= res!1572827 (matchR!5426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354368)))) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354368))))))))

(assert (= (and d!1148899 c!675163) b!3881502))

(assert (= (and d!1148899 (not c!675163)) b!3881505))

(assert (= (or b!3881502 b!3881505) bm!282889))

(assert (= (and d!1148899 (not res!1572825)) b!3881500))

(assert (= (and b!3881500 res!1572826) b!3881501))

(assert (= (and b!3881501 res!1572824) b!3881503))

(assert (= (and b!3881503 res!1572823) b!3881498))

(assert (= (and b!3881498 res!1572822) b!3881499))

(assert (= (and b!3881499 res!1572821) b!3881506))

(assert (= (and b!3881506 res!1572827) b!3881504))

(declare-fun m!4440219 () Bool)

(assert (=> b!3881498 m!4440219))

(declare-fun m!4440221 () Bool)

(assert (=> b!3881498 m!4440221))

(assert (=> b!3881498 m!4440221))

(declare-fun m!4440223 () Bool)

(assert (=> b!3881498 m!4440223))

(assert (=> b!3881498 m!4440223))

(declare-fun m!4440225 () Bool)

(assert (=> b!3881498 m!4440225))

(declare-fun m!4440227 () Bool)

(assert (=> b!3881500 m!4440227))

(declare-fun m!4440229 () Bool)

(assert (=> b!3881505 m!4440229))

(assert (=> b!3881503 m!4440219))

(declare-fun m!4440231 () Bool)

(assert (=> b!3881503 m!4440231))

(assert (=> b!3881503 m!4438957))

(declare-fun m!4440233 () Bool)

(assert (=> bm!282889 m!4440233))

(assert (=> b!3881504 m!4440219))

(declare-fun m!4440235 () Bool)

(assert (=> b!3881504 m!4440235))

(assert (=> b!3881506 m!4440219))

(assert (=> b!3881506 m!4440221))

(assert (=> b!3881506 m!4440221))

(assert (=> b!3881506 m!4440223))

(assert (=> b!3881506 m!4440223))

(declare-fun m!4440237 () Bool)

(assert (=> b!3881506 m!4440237))

(assert (=> b!3881499 m!4440219))

(declare-fun m!4440239 () Bool)

(assert (=> b!3881499 m!4440239))

(assert (=> b!3881499 m!4440239))

(declare-fun m!4440241 () Bool)

(assert (=> b!3881499 m!4440241))

(assert (=> b!3881501 m!4440219))

(assert (=> b!3881501 m!4440221))

(assert (=> b!3881501 m!4440221))

(assert (=> b!3881501 m!4440223))

(declare-fun m!4440243 () Bool)

(assert (=> d!1148899 m!4440243))

(declare-fun m!4440245 () Bool)

(assert (=> d!1148899 m!4440245))

(declare-fun m!4440247 () Bool)

(assert (=> d!1148899 m!4440247))

(assert (=> d!1148899 m!4439283))

(assert (=> d!1148371 d!1148899))

(declare-fun d!1148901 () Bool)

(declare-fun c!675168 () Bool)

(assert (=> d!1148901 (= c!675168 ((_ is Empty!12627) (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun e!2401873 () List!41411)

(assert (=> d!1148901 (= (list!15346 (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073))))) e!2401873)))

(declare-fun b!3881516 () Bool)

(declare-fun e!2401874 () List!41411)

(assert (=> b!3881516 (= e!2401873 e!2401874)))

(declare-fun c!675169 () Bool)

(assert (=> b!3881516 (= c!675169 ((_ is Leaf!19542) (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073))))))))

(declare-fun b!3881518 () Bool)

(assert (=> b!3881518 (= e!2401874 (++!10590 (list!15346 (left!31661 (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073)))))) (list!15346 (right!31991 (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073))))))))))

(declare-fun b!3881515 () Bool)

(assert (=> b!3881515 (= e!2401873 Nil!41287)))

(declare-fun b!3881517 () Bool)

(declare-fun list!15348 (IArray!25259) List!41411)

(assert (=> b!3881517 (= e!2401874 (list!15348 (xs!15933 (c!674921 (charsOf!4240 (_1!23394 (v!39131 lt!1354073)))))))))

(assert (= (and d!1148901 c!675168) b!3881515))

(assert (= (and d!1148901 (not c!675168)) b!3881516))

(assert (= (and b!3881516 c!675169) b!3881517))

(assert (= (and b!3881516 (not c!675169)) b!3881518))

(declare-fun m!4440249 () Bool)

(assert (=> b!3881518 m!4440249))

(declare-fun m!4440251 () Bool)

(assert (=> b!3881518 m!4440251))

(assert (=> b!3881518 m!4440249))

(assert (=> b!3881518 m!4440251))

(declare-fun m!4440253 () Bool)

(assert (=> b!3881518 m!4440253))

(declare-fun m!4440255 () Bool)

(assert (=> b!3881517 m!4440255))

(assert (=> d!1148469 d!1148901))

(declare-fun d!1148903 () Bool)

(assert (=> d!1148903 (= (head!8240 lt!1354075) (h!46707 lt!1354075))))

(assert (=> b!3880602 d!1148903))

(declare-fun d!1148905 () Bool)

(assert (=> d!1148905 (= (head!8240 lt!1354083) (h!46707 lt!1354083))))

(assert (=> b!3880602 d!1148905))

(declare-fun d!1148907 () Bool)

(assert (=> d!1148907 (= (inv!55437 (tag!7276 (h!46709 (t!315248 rules!2768)))) (= (mod (str.len (value!203489 (tag!7276 (h!46709 (t!315248 rules!2768))))) 2) 0))))

(assert (=> b!3880742 d!1148907))

(declare-fun d!1148909 () Bool)

(declare-fun res!1572828 () Bool)

(declare-fun e!2401875 () Bool)

(assert (=> d!1148909 (=> (not res!1572828) (not e!2401875))))

(assert (=> d!1148909 (= res!1572828 (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toValue!8844 (transformation!6416 (h!46709 (t!315248 rules!2768))))))))

(assert (=> d!1148909 (= (inv!55440 (transformation!6416 (h!46709 (t!315248 rules!2768)))) e!2401875)))

(declare-fun b!3881519 () Bool)

(assert (=> b!3881519 (= e!2401875 (equivClasses!2647 (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toValue!8844 (transformation!6416 (h!46709 (t!315248 rules!2768))))))))

(assert (= (and d!1148909 res!1572828) b!3881519))

(declare-fun m!4440257 () Bool)

(assert (=> d!1148909 m!4440257))

(declare-fun m!4440259 () Bool)

(assert (=> b!3881519 m!4440259))

(assert (=> b!3880742 d!1148909))

(declare-fun d!1148911 () Bool)

(assert (=> d!1148911 (= (inv!55445 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))) (isBalanced!3628 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))))))

(declare-fun bs!583802 () Bool)

(assert (= bs!583802 d!1148911))

(declare-fun m!4440261 () Bool)

(assert (=> bs!583802 m!4440261))

(assert (=> tb!225203 d!1148911))

(declare-fun d!1148913 () Bool)

(assert (=> d!1148913 (= (isEmpty!24526 lt!1354203) (not ((_ is Some!8833) lt!1354203)))))

(assert (=> d!1148493 d!1148913))

(declare-fun b!3881521 () Bool)

(declare-fun res!1572829 () Bool)

(declare-fun e!2401877 () Bool)

(assert (=> b!3881521 (=> (not res!1572829) (not e!2401877))))

(assert (=> b!3881521 (= res!1572829 (= (head!8240 lt!1354072) (head!8240 lt!1354072)))))

(declare-fun b!3881523 () Bool)

(declare-fun e!2401876 () Bool)

(assert (=> b!3881523 (= e!2401876 (>= (size!31004 lt!1354072) (size!31004 lt!1354072)))))

(declare-fun d!1148915 () Bool)

(assert (=> d!1148915 e!2401876))

(declare-fun res!1572831 () Bool)

(assert (=> d!1148915 (=> res!1572831 e!2401876)))

(declare-fun lt!1354371 () Bool)

(assert (=> d!1148915 (= res!1572831 (not lt!1354371))))

(declare-fun e!2401878 () Bool)

(assert (=> d!1148915 (= lt!1354371 e!2401878)))

(declare-fun res!1572832 () Bool)

(assert (=> d!1148915 (=> res!1572832 e!2401878)))

(assert (=> d!1148915 (= res!1572832 ((_ is Nil!41287) lt!1354072))))

(assert (=> d!1148915 (= (isPrefix!3511 lt!1354072 lt!1354072) lt!1354371)))

(declare-fun b!3881520 () Bool)

(assert (=> b!3881520 (= e!2401878 e!2401877)))

(declare-fun res!1572830 () Bool)

(assert (=> b!3881520 (=> (not res!1572830) (not e!2401877))))

(assert (=> b!3881520 (= res!1572830 (not ((_ is Nil!41287) lt!1354072)))))

(declare-fun b!3881522 () Bool)

(assert (=> b!3881522 (= e!2401877 (isPrefix!3511 (tail!5957 lt!1354072) (tail!5957 lt!1354072)))))

(assert (= (and d!1148915 (not res!1572832)) b!3881520))

(assert (= (and b!3881520 res!1572830) b!3881521))

(assert (= (and b!3881521 res!1572829) b!3881522))

(assert (= (and d!1148915 (not res!1572831)) b!3881523))

(assert (=> b!3881521 m!4439385))

(assert (=> b!3881521 m!4439385))

(assert (=> b!3881523 m!4439051))

(assert (=> b!3881523 m!4439051))

(assert (=> b!3881522 m!4439211))

(assert (=> b!3881522 m!4439211))

(assert (=> b!3881522 m!4439211))

(assert (=> b!3881522 m!4439211))

(declare-fun m!4440263 () Bool)

(assert (=> b!3881522 m!4440263))

(assert (=> d!1148493 d!1148915))

(declare-fun d!1148917 () Bool)

(assert (=> d!1148917 (isPrefix!3511 lt!1354072 lt!1354072)))

(declare-fun lt!1354374 () Unit!59356)

(declare-fun choose!23015 (List!41411 List!41411) Unit!59356)

(assert (=> d!1148917 (= lt!1354374 (choose!23015 lt!1354072 lt!1354072))))

(assert (=> d!1148917 (= (lemmaIsPrefixRefl!2220 lt!1354072 lt!1354072) lt!1354374)))

(declare-fun bs!583803 () Bool)

(assert (= bs!583803 d!1148917))

(assert (=> bs!583803 m!4439279))

(declare-fun m!4440265 () Bool)

(assert (=> bs!583803 m!4440265))

(assert (=> d!1148493 d!1148917))

(declare-fun d!1148919 () Bool)

(assert (=> d!1148919 true))

(declare-fun lt!1354377 () Bool)

(declare-fun lambda!126284 () Int)

(declare-fun forall!8302 (List!41413 Int) Bool)

(assert (=> d!1148919 (= lt!1354377 (forall!8302 rules!2768 lambda!126284))))

(declare-fun e!2401884 () Bool)

(assert (=> d!1148919 (= lt!1354377 e!2401884)))

(declare-fun res!1572837 () Bool)

(assert (=> d!1148919 (=> res!1572837 e!2401884)))

(assert (=> d!1148919 (= res!1572837 (not ((_ is Cons!41289) rules!2768)))))

(assert (=> d!1148919 (= (rulesValidInductive!2298 thiss!20629 rules!2768) lt!1354377)))

(declare-fun b!3881528 () Bool)

(declare-fun e!2401883 () Bool)

(assert (=> b!3881528 (= e!2401884 e!2401883)))

(declare-fun res!1572838 () Bool)

(assert (=> b!3881528 (=> (not res!1572838) (not e!2401883))))

(assert (=> b!3881528 (= res!1572838 (ruleValid!2364 thiss!20629 (h!46709 rules!2768)))))

(declare-fun b!3881529 () Bool)

(assert (=> b!3881529 (= e!2401883 (rulesValidInductive!2298 thiss!20629 (t!315248 rules!2768)))))

(assert (= (and d!1148919 (not res!1572837)) b!3881528))

(assert (= (and b!3881528 res!1572838) b!3881529))

(declare-fun m!4440267 () Bool)

(assert (=> d!1148919 m!4440267))

(assert (=> b!3881528 m!4439575))

(declare-fun m!4440269 () Bool)

(assert (=> b!3881529 m!4440269))

(assert (=> d!1148493 d!1148919))

(declare-fun d!1148921 () Bool)

(declare-fun charsToBigInt!1 (List!41410) Int)

(assert (=> d!1148921 (= (inv!17 (value!203490 (h!46708 prefixTokens!80))) (= (charsToBigInt!1 (text!46970 (value!203490 (h!46708 prefixTokens!80)))) (value!203482 (value!203490 (h!46708 prefixTokens!80)))))))

(declare-fun bs!583804 () Bool)

(assert (= bs!583804 d!1148921))

(declare-fun m!4440271 () Bool)

(assert (=> bs!583804 m!4440271))

(assert (=> b!3880512 d!1148921))

(declare-fun d!1148923 () Bool)

(assert (=> d!1148923 (= (inv!15 (value!203490 (h!46708 suffixTokens!72))) (= (charsToBigInt!0 (text!46971 (value!203490 (h!46708 suffixTokens!72))) 0) (value!203485 (value!203490 (h!46708 suffixTokens!72)))))))

(declare-fun bs!583805 () Bool)

(assert (= bs!583805 d!1148923))

(declare-fun m!4440273 () Bool)

(assert (=> bs!583805 m!4440273))

(assert (=> b!3880681 d!1148923))

(declare-fun bs!583806 () Bool)

(declare-fun d!1148925 () Bool)

(assert (= bs!583806 (and d!1148925 d!1148919)))

(declare-fun lambda!126287 () Int)

(assert (=> bs!583806 (= lambda!126287 lambda!126284)))

(assert (=> d!1148925 true))

(declare-fun lt!1354380 () Bool)

(assert (=> d!1148925 (= lt!1354380 (rulesValidInductive!2298 thiss!20629 rules!2768))))

(assert (=> d!1148925 (= lt!1354380 (forall!8302 rules!2768 lambda!126287))))

(assert (=> d!1148925 (= (rulesValid!2484 thiss!20629 rules!2768) lt!1354380)))

(declare-fun bs!583807 () Bool)

(assert (= bs!583807 d!1148925))

(assert (=> bs!583807 m!4439283))

(declare-fun m!4440275 () Bool)

(assert (=> bs!583807 m!4440275))

(assert (=> d!1148489 d!1148925))

(declare-fun d!1148927 () Bool)

(assert (=> d!1148927 (= (inv!17 (value!203490 (h!46708 suffixTokens!72))) (= (charsToBigInt!1 (text!46970 (value!203490 (h!46708 suffixTokens!72)))) (value!203482 (value!203490 (h!46708 suffixTokens!72)))))))

(declare-fun bs!583808 () Bool)

(assert (= bs!583808 d!1148927))

(declare-fun m!4440277 () Bool)

(assert (=> bs!583808 m!4440277))

(assert (=> b!3880679 d!1148927))

(declare-fun d!1148929 () Bool)

(declare-fun c!675170 () Bool)

(assert (=> d!1148929 (= c!675170 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(declare-fun e!2401885 () Bool)

(assert (=> d!1148929 (= (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))) e!2401885)))

(declare-fun b!3881532 () Bool)

(assert (=> b!3881532 (= e!2401885 (inv!55448 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(declare-fun b!3881533 () Bool)

(declare-fun e!2401886 () Bool)

(assert (=> b!3881533 (= e!2401885 e!2401886)))

(declare-fun res!1572839 () Bool)

(assert (=> b!3881533 (= res!1572839 (not ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))))))

(assert (=> b!3881533 (=> res!1572839 e!2401886)))

(declare-fun b!3881534 () Bool)

(assert (=> b!3881534 (= e!2401886 (inv!55449 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(assert (= (and d!1148929 c!675170) b!3881532))

(assert (= (and d!1148929 (not c!675170)) b!3881533))

(assert (= (and b!3881533 (not res!1572839)) b!3881534))

(declare-fun m!4440279 () Bool)

(assert (=> b!3881532 m!4440279))

(declare-fun m!4440281 () Bool)

(assert (=> b!3881534 m!4440281))

(assert (=> b!3880490 d!1148929))

(declare-fun d!1148931 () Bool)

(assert (=> d!1148931 (= (isEmpty!24524 (_1!23393 lt!1354126)) ((_ is Nil!41288) (_1!23393 lt!1354126)))))

(assert (=> b!3880444 d!1148931))

(declare-fun d!1148933 () Bool)

(assert (=> d!1148933 (= (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))) (list!15346 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))))))

(declare-fun bs!583809 () Bool)

(assert (= bs!583809 d!1148933))

(declare-fun m!4440283 () Bool)

(assert (=> bs!583809 m!4440283))

(assert (=> b!3880486 d!1148933))

(declare-fun d!1148935 () Bool)

(assert (=> d!1148935 (= (list!15344 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))) (list!15346 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))))))

(declare-fun bs!583810 () Bool)

(assert (= bs!583810 d!1148935))

(declare-fun m!4440285 () Bool)

(assert (=> bs!583810 m!4440285))

(assert (=> b!3880467 d!1148935))

(declare-fun bs!583811 () Bool)

(declare-fun d!1148937 () Bool)

(assert (= bs!583811 (and d!1148937 d!1148745)))

(declare-fun lambda!126288 () Int)

(assert (=> bs!583811 (= (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (= lambda!126288 lambda!126276))))

(declare-fun bs!583812 () Bool)

(assert (= bs!583812 (and d!1148937 d!1148881)))

(assert (=> bs!583812 (= (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (h!46709 rules!2768)))) (= lambda!126288 lambda!126281))))

(assert (=> d!1148937 true))

(assert (=> d!1148937 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (dynLambda!17728 order!22201 lambda!126288))))

(assert (=> d!1148937 (= (equivClasses!2647 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (Forall2!1036 lambda!126288))))

(declare-fun bs!583813 () Bool)

(assert (= bs!583813 d!1148937))

(declare-fun m!4440287 () Bool)

(assert (=> bs!583813 m!4440287))

(assert (=> b!3880684 d!1148937))

(declare-fun d!1148939 () Bool)

(declare-fun c!675171 () Bool)

(assert (=> d!1148939 (= c!675171 ((_ is Nil!41288) lt!1354143))))

(declare-fun e!2401887 () (InoxSet Token!11970))

(assert (=> d!1148939 (= (content!6168 lt!1354143) e!2401887)))

(declare-fun b!3881535 () Bool)

(assert (=> b!3881535 (= e!2401887 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881536 () Bool)

(assert (=> b!3881536 (= e!2401887 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 lt!1354143) true) (content!6168 (t!315247 lt!1354143))))))

(assert (= (and d!1148939 c!675171) b!3881535))

(assert (= (and d!1148939 (not c!675171)) b!3881536))

(declare-fun m!4440289 () Bool)

(assert (=> b!3881536 m!4440289))

(declare-fun m!4440291 () Bool)

(assert (=> b!3881536 m!4440291))

(assert (=> d!1148437 d!1148939))

(declare-fun d!1148941 () Bool)

(declare-fun c!675172 () Bool)

(assert (=> d!1148941 (= c!675172 ((_ is Nil!41288) prefixTokens!80))))

(declare-fun e!2401888 () (InoxSet Token!11970))

(assert (=> d!1148941 (= (content!6168 prefixTokens!80) e!2401888)))

(declare-fun b!3881537 () Bool)

(assert (=> b!3881537 (= e!2401888 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881538 () Bool)

(assert (=> b!3881538 (= e!2401888 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 prefixTokens!80) true) (content!6168 (t!315247 prefixTokens!80))))))

(assert (= (and d!1148941 c!675172) b!3881537))

(assert (= (and d!1148941 (not c!675172)) b!3881538))

(declare-fun m!4440293 () Bool)

(assert (=> b!3881538 m!4440293))

(assert (=> b!3881538 m!4439709))

(assert (=> d!1148437 d!1148941))

(declare-fun d!1148943 () Bool)

(declare-fun c!675173 () Bool)

(assert (=> d!1148943 (= c!675173 ((_ is Nil!41288) suffixTokens!72))))

(declare-fun e!2401889 () (InoxSet Token!11970))

(assert (=> d!1148943 (= (content!6168 suffixTokens!72) e!2401889)))

(declare-fun b!3881539 () Bool)

(assert (=> b!3881539 (= e!2401889 ((as const (Array Token!11970 Bool)) false))))

(declare-fun b!3881540 () Bool)

(assert (=> b!3881540 (= e!2401889 ((_ map or) (store ((as const (Array Token!11970 Bool)) false) (h!46708 suffixTokens!72) true) (content!6168 (t!315247 suffixTokens!72))))))

(assert (= (and d!1148943 c!675173) b!3881539))

(assert (= (and d!1148943 (not c!675173)) b!3881540))

(declare-fun m!4440295 () Bool)

(assert (=> b!3881540 m!4440295))

(declare-fun m!4440297 () Bool)

(assert (=> b!3881540 m!4440297))

(assert (=> d!1148437 d!1148943))

(declare-fun b!3881541 () Bool)

(declare-fun e!2401892 () Bool)

(assert (=> b!3881541 (= e!2401892 (inv!17 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(declare-fun b!3881542 () Bool)

(declare-fun e!2401890 () Bool)

(assert (=> b!3881542 (= e!2401890 e!2401892)))

(declare-fun c!675174 () Bool)

(assert (=> b!3881542 (= c!675174 ((_ is IntegerValue!19939) (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(declare-fun b!3881543 () Bool)

(declare-fun e!2401891 () Bool)

(assert (=> b!3881543 (= e!2401891 (inv!15 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(declare-fun b!3881544 () Bool)

(declare-fun res!1572840 () Bool)

(assert (=> b!3881544 (=> res!1572840 e!2401891)))

(assert (=> b!3881544 (= res!1572840 (not ((_ is IntegerValue!19940) (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075)))))))

(assert (=> b!3881544 (= e!2401892 e!2401891)))

(declare-fun b!3881545 () Bool)

(assert (=> b!3881545 (= e!2401890 (inv!16 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(declare-fun d!1148945 () Bool)

(declare-fun c!675175 () Bool)

(assert (=> d!1148945 (= c!675175 ((_ is IntegerValue!19938) (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))))))

(assert (=> d!1148945 (= (inv!21 (dynLambda!17722 (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (seqFromList!4683 lt!1354075))) e!2401890)))

(assert (= (and d!1148945 c!675175) b!3881545))

(assert (= (and d!1148945 (not c!675175)) b!3881542))

(assert (= (and b!3881542 c!675174) b!3881541))

(assert (= (and b!3881542 (not c!675174)) b!3881544))

(assert (= (and b!3881544 (not res!1572840)) b!3881543))

(declare-fun m!4440299 () Bool)

(assert (=> b!3881541 m!4440299))

(declare-fun m!4440301 () Bool)

(assert (=> b!3881543 m!4440301))

(declare-fun m!4440303 () Bool)

(assert (=> b!3881545 m!4440303))

(assert (=> tb!225167 d!1148945))

(declare-fun d!1148947 () Bool)

(declare-fun e!2401895 () Bool)

(assert (=> d!1148947 e!2401895))

(declare-fun res!1572843 () Bool)

(assert (=> d!1148947 (=> (not res!1572843) (not e!2401895))))

(declare-fun lt!1354383 () BalanceConc!24848)

(assert (=> d!1148947 (= res!1572843 (= (list!15344 lt!1354383) lt!1354075))))

(declare-fun fromList!818 (List!41411) Conc!12627)

(assert (=> d!1148947 (= lt!1354383 (BalanceConc!24849 (fromList!818 lt!1354075)))))

(assert (=> d!1148947 (= (fromListB!2159 lt!1354075) lt!1354383)))

(declare-fun b!3881548 () Bool)

(assert (=> b!3881548 (= e!2401895 (isBalanced!3628 (fromList!818 lt!1354075)))))

(assert (= (and d!1148947 res!1572843) b!3881548))

(declare-fun m!4440305 () Bool)

(assert (=> d!1148947 m!4440305))

(declare-fun m!4440307 () Bool)

(assert (=> d!1148947 m!4440307))

(assert (=> b!3881548 m!4440307))

(assert (=> b!3881548 m!4440307))

(declare-fun m!4440309 () Bool)

(assert (=> b!3881548 m!4440309))

(assert (=> d!1148467 d!1148947))

(declare-fun d!1148949 () Bool)

(declare-fun res!1572848 () Bool)

(declare-fun e!2401900 () Bool)

(assert (=> d!1148949 (=> res!1572848 e!2401900)))

(assert (=> d!1148949 (= res!1572848 ((_ is Nil!41289) rules!2768))))

(assert (=> d!1148949 (= (noDuplicateTag!2485 thiss!20629 rules!2768 Nil!41291) e!2401900)))

(declare-fun b!3881553 () Bool)

(declare-fun e!2401901 () Bool)

(assert (=> b!3881553 (= e!2401900 e!2401901)))

(declare-fun res!1572849 () Bool)

(assert (=> b!3881553 (=> (not res!1572849) (not e!2401901))))

(declare-fun contains!8303 (List!41415 String!46948) Bool)

(assert (=> b!3881553 (= res!1572849 (not (contains!8303 Nil!41291 (tag!7276 (h!46709 rules!2768)))))))

(declare-fun b!3881554 () Bool)

(assert (=> b!3881554 (= e!2401901 (noDuplicateTag!2485 thiss!20629 (t!315248 rules!2768) (Cons!41291 (tag!7276 (h!46709 rules!2768)) Nil!41291)))))

(assert (= (and d!1148949 (not res!1572848)) b!3881553))

(assert (= (and b!3881553 res!1572849) b!3881554))

(declare-fun m!4440311 () Bool)

(assert (=> b!3881553 m!4440311))

(declare-fun m!4440313 () Bool)

(assert (=> b!3881554 m!4440313))

(assert (=> b!3880687 d!1148949))

(declare-fun d!1148951 () Bool)

(declare-fun e!2401904 () Bool)

(assert (=> d!1148951 e!2401904))

(declare-fun c!675178 () Bool)

(declare-fun lt!1354386 () tuple2!40518)

(assert (=> d!1148951 (= c!675178 (> (size!31006 (_1!23393 lt!1354386)) 0))))

(declare-fun e!2401903 () tuple2!40518)

(assert (=> d!1148951 (= lt!1354386 e!2401903)))

(declare-fun c!675177 () Bool)

(declare-fun lt!1354384 () Option!8834)

(assert (=> d!1148951 (= c!675177 ((_ is Some!8833) lt!1354384))))

(assert (=> d!1148951 (= lt!1354384 (maxPrefix!3309 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354124))))))

(assert (=> d!1148951 (= (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354124))) lt!1354386)))

(declare-fun b!3881555 () Bool)

(declare-fun lt!1354385 () tuple2!40518)

(assert (=> b!3881555 (= e!2401903 (tuple2!40519 (Cons!41288 (_1!23394 (v!39131 lt!1354384)) (_1!23393 lt!1354385)) (_2!23393 lt!1354385)))))

(assert (=> b!3881555 (= lt!1354385 (lexList!1773 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354384))))))

(declare-fun b!3881556 () Bool)

(assert (=> b!3881556 (= e!2401903 (tuple2!40519 Nil!41288 (_2!23394 (v!39131 lt!1354124))))))

(declare-fun b!3881557 () Bool)

(assert (=> b!3881557 (= e!2401904 (= (_2!23393 lt!1354386) (_2!23394 (v!39131 lt!1354124))))))

(declare-fun b!3881558 () Bool)

(declare-fun e!2401902 () Bool)

(assert (=> b!3881558 (= e!2401904 e!2401902)))

(declare-fun res!1572850 () Bool)

(assert (=> b!3881558 (= res!1572850 (< (size!31004 (_2!23393 lt!1354386)) (size!31004 (_2!23394 (v!39131 lt!1354124)))))))

(assert (=> b!3881558 (=> (not res!1572850) (not e!2401902))))

(declare-fun b!3881559 () Bool)

(assert (=> b!3881559 (= e!2401902 (not (isEmpty!24524 (_1!23393 lt!1354386))))))

(assert (= (and d!1148951 c!675177) b!3881555))

(assert (= (and d!1148951 (not c!675177)) b!3881556))

(assert (= (and d!1148951 c!675178) b!3881558))

(assert (= (and d!1148951 (not c!675178)) b!3881557))

(assert (= (and b!3881558 res!1572850) b!3881559))

(declare-fun m!4440315 () Bool)

(assert (=> d!1148951 m!4440315))

(declare-fun m!4440317 () Bool)

(assert (=> d!1148951 m!4440317))

(declare-fun m!4440319 () Bool)

(assert (=> b!3881555 m!4440319))

(declare-fun m!4440321 () Bool)

(assert (=> b!3881558 m!4440321))

(declare-fun m!4440323 () Bool)

(assert (=> b!3881558 m!4440323))

(declare-fun m!4440325 () Bool)

(assert (=> b!3881559 m!4440325))

(assert (=> b!3880440 d!1148951))

(declare-fun d!1148953 () Bool)

(assert (=> d!1148953 (= (isEmpty!24523 (originalCharacters!7016 (h!46708 prefixTokens!80))) ((_ is Nil!41287) (originalCharacters!7016 (h!46708 prefixTokens!80))))))

(assert (=> d!1148425 d!1148953))

(declare-fun bs!583814 () Bool)

(declare-fun d!1148955 () Bool)

(assert (= bs!583814 (and d!1148955 d!1148821)))

(declare-fun lambda!126289 () Int)

(assert (=> bs!583814 (= (and (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (h!46709 rules!2768)))) (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (h!46709 rules!2768))))) (= lambda!126289 lambda!126279))))

(declare-fun bs!583815 () Bool)

(assert (= bs!583815 (and d!1148955 d!1148833)))

(assert (=> bs!583815 (= (and (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))))) (= lambda!126289 lambda!126280))))

(assert (=> d!1148955 true))

(assert (=> d!1148955 (< (dynLambda!17729 order!22203 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (dynLambda!17730 order!22205 lambda!126289))))

(assert (=> d!1148955 true))

(assert (=> d!1148955 (< (dynLambda!17727 order!22199 (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (dynLambda!17730 order!22205 lambda!126289))))

(assert (=> d!1148955 (= (semiInverseModEq!2748 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) (Forall!1438 lambda!126289))))

(declare-fun bs!583816 () Bool)

(assert (= bs!583816 d!1148955))

(declare-fun m!4440327 () Bool)

(assert (=> bs!583816 m!4440327))

(assert (=> d!1148369 d!1148955))

(declare-fun d!1148957 () Bool)

(declare-fun lt!1354387 () Int)

(assert (=> d!1148957 (>= lt!1354387 0)))

(declare-fun e!2401905 () Int)

(assert (=> d!1148957 (= lt!1354387 e!2401905)))

(declare-fun c!675179 () Bool)

(assert (=> d!1148957 (= c!675179 ((_ is Nil!41288) (_1!23393 lt!1354189)))))

(assert (=> d!1148957 (= (size!31006 (_1!23393 lt!1354189)) lt!1354387)))

(declare-fun b!3881560 () Bool)

(assert (=> b!3881560 (= e!2401905 0)))

(declare-fun b!3881561 () Bool)

(assert (=> b!3881561 (= e!2401905 (+ 1 (size!31006 (t!315247 (_1!23393 lt!1354189)))))))

(assert (= (and d!1148957 c!675179) b!3881560))

(assert (= (and d!1148957 (not c!675179)) b!3881561))

(declare-fun m!4440329 () Bool)

(assert (=> b!3881561 m!4440329))

(assert (=> d!1148477 d!1148957))

(declare-fun b!3881563 () Bool)

(declare-fun res!1572851 () Bool)

(declare-fun e!2401908 () Bool)

(assert (=> b!3881563 (=> (not res!1572851) (not e!2401908))))

(declare-fun lt!1354390 () Option!8834)

(assert (=> b!3881563 (= res!1572851 (= (value!203490 (_1!23394 (get!13660 lt!1354390))) (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354390)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354390)))))))))

(declare-fun b!3881564 () Bool)

(declare-fun e!2401906 () Bool)

(assert (=> b!3881564 (= e!2401906 e!2401908)))

(declare-fun res!1572856 () Bool)

(assert (=> b!3881564 (=> (not res!1572856) (not e!2401908))))

(assert (=> b!3881564 (= res!1572856 (isDefined!6897 lt!1354390))))

(declare-fun call!282895 () Option!8834)

(declare-fun bm!282890 () Bool)

(assert (=> bm!282890 (= call!282895 (maxPrefixOneRule!2387 thiss!20629 (h!46709 rules!2768) (_2!23394 (v!39131 lt!1354073))))))

(declare-fun b!3881565 () Bool)

(declare-fun res!1572854 () Bool)

(assert (=> b!3881565 (=> (not res!1572854) (not e!2401908))))

(assert (=> b!3881565 (= res!1572854 (= (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354390)))) (originalCharacters!7016 (_1!23394 (get!13660 lt!1354390)))))))

(declare-fun b!3881566 () Bool)

(declare-fun e!2401907 () Option!8834)

(assert (=> b!3881566 (= e!2401907 call!282895)))

(declare-fun b!3881567 () Bool)

(declare-fun res!1572853 () Bool)

(assert (=> b!3881567 (=> (not res!1572853) (not e!2401908))))

(assert (=> b!3881567 (= res!1572853 (< (size!31004 (_2!23394 (get!13660 lt!1354390))) (size!31004 (_2!23394 (v!39131 lt!1354073)))))))

(declare-fun d!1148959 () Bool)

(assert (=> d!1148959 e!2401906))

(declare-fun res!1572855 () Bool)

(assert (=> d!1148959 (=> res!1572855 e!2401906)))

(assert (=> d!1148959 (= res!1572855 (isEmpty!24526 lt!1354390))))

(assert (=> d!1148959 (= lt!1354390 e!2401907)))

(declare-fun c!675180 () Bool)

(assert (=> d!1148959 (= c!675180 (and ((_ is Cons!41289) rules!2768) ((_ is Nil!41289) (t!315248 rules!2768))))))

(declare-fun lt!1354388 () Unit!59356)

(declare-fun lt!1354392 () Unit!59356)

(assert (=> d!1148959 (= lt!1354388 lt!1354392)))

(assert (=> d!1148959 (isPrefix!3511 (_2!23394 (v!39131 lt!1354073)) (_2!23394 (v!39131 lt!1354073)))))

(assert (=> d!1148959 (= lt!1354392 (lemmaIsPrefixRefl!2220 (_2!23394 (v!39131 lt!1354073)) (_2!23394 (v!39131 lt!1354073))))))

(assert (=> d!1148959 (rulesValidInductive!2298 thiss!20629 rules!2768)))

(assert (=> d!1148959 (= (maxPrefix!3309 thiss!20629 rules!2768 (_2!23394 (v!39131 lt!1354073))) lt!1354390)))

(declare-fun b!3881562 () Bool)

(declare-fun res!1572852 () Bool)

(assert (=> b!3881562 (=> (not res!1572852) (not e!2401908))))

(assert (=> b!3881562 (= res!1572852 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354390)))) (_2!23394 (get!13660 lt!1354390))) (_2!23394 (v!39131 lt!1354073))))))

(declare-fun b!3881568 () Bool)

(assert (=> b!3881568 (= e!2401908 (contains!8301 rules!2768 (rule!9314 (_1!23394 (get!13660 lt!1354390)))))))

(declare-fun b!3881569 () Bool)

(declare-fun lt!1354391 () Option!8834)

(declare-fun lt!1354389 () Option!8834)

(assert (=> b!3881569 (= e!2401907 (ite (and ((_ is None!8833) lt!1354391) ((_ is None!8833) lt!1354389)) None!8833 (ite ((_ is None!8833) lt!1354389) lt!1354391 (ite ((_ is None!8833) lt!1354391) lt!1354389 (ite (>= (size!31003 (_1!23394 (v!39131 lt!1354391))) (size!31003 (_1!23394 (v!39131 lt!1354389)))) lt!1354391 lt!1354389)))))))

(assert (=> b!3881569 (= lt!1354391 call!282895)))

(assert (=> b!3881569 (= lt!1354389 (maxPrefix!3309 thiss!20629 (t!315248 rules!2768) (_2!23394 (v!39131 lt!1354073))))))

(declare-fun b!3881570 () Bool)

(declare-fun res!1572857 () Bool)

(assert (=> b!3881570 (=> (not res!1572857) (not e!2401908))))

(assert (=> b!3881570 (= res!1572857 (matchR!5426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354390)))) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354390))))))))

(assert (= (and d!1148959 c!675180) b!3881566))

(assert (= (and d!1148959 (not c!675180)) b!3881569))

(assert (= (or b!3881566 b!3881569) bm!282890))

(assert (= (and d!1148959 (not res!1572855)) b!3881564))

(assert (= (and b!3881564 res!1572856) b!3881565))

(assert (= (and b!3881565 res!1572854) b!3881567))

(assert (= (and b!3881567 res!1572853) b!3881562))

(assert (= (and b!3881562 res!1572852) b!3881563))

(assert (= (and b!3881563 res!1572851) b!3881570))

(assert (= (and b!3881570 res!1572857) b!3881568))

(declare-fun m!4440331 () Bool)

(assert (=> b!3881562 m!4440331))

(declare-fun m!4440333 () Bool)

(assert (=> b!3881562 m!4440333))

(assert (=> b!3881562 m!4440333))

(declare-fun m!4440335 () Bool)

(assert (=> b!3881562 m!4440335))

(assert (=> b!3881562 m!4440335))

(declare-fun m!4440337 () Bool)

(assert (=> b!3881562 m!4440337))

(declare-fun m!4440339 () Bool)

(assert (=> b!3881564 m!4440339))

(declare-fun m!4440341 () Bool)

(assert (=> b!3881569 m!4440341))

(assert (=> b!3881567 m!4440331))

(declare-fun m!4440343 () Bool)

(assert (=> b!3881567 m!4440343))

(assert (=> b!3881567 m!4439095))

(declare-fun m!4440345 () Bool)

(assert (=> bm!282890 m!4440345))

(assert (=> b!3881568 m!4440331))

(declare-fun m!4440347 () Bool)

(assert (=> b!3881568 m!4440347))

(assert (=> b!3881570 m!4440331))

(assert (=> b!3881570 m!4440333))

(assert (=> b!3881570 m!4440333))

(assert (=> b!3881570 m!4440335))

(assert (=> b!3881570 m!4440335))

(declare-fun m!4440349 () Bool)

(assert (=> b!3881570 m!4440349))

(assert (=> b!3881563 m!4440331))

(declare-fun m!4440351 () Bool)

(assert (=> b!3881563 m!4440351))

(assert (=> b!3881563 m!4440351))

(declare-fun m!4440353 () Bool)

(assert (=> b!3881563 m!4440353))

(assert (=> b!3881565 m!4440331))

(assert (=> b!3881565 m!4440333))

(assert (=> b!3881565 m!4440333))

(assert (=> b!3881565 m!4440335))

(declare-fun m!4440355 () Bool)

(assert (=> d!1148959 m!4440355))

(declare-fun m!4440357 () Bool)

(assert (=> d!1148959 m!4440357))

(declare-fun m!4440359 () Bool)

(assert (=> d!1148959 m!4440359))

(assert (=> d!1148959 m!4439283))

(assert (=> d!1148477 d!1148959))

(declare-fun b!3881572 () Bool)

(declare-fun res!1572858 () Bool)

(declare-fun e!2401911 () Bool)

(assert (=> b!3881572 (=> (not res!1572858) (not e!2401911))))

(declare-fun lt!1354395 () Option!8834)

(assert (=> b!3881572 (= res!1572858 (= (value!203490 (_1!23394 (get!13660 lt!1354395))) (apply!9655 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354395)))) (seqFromList!4683 (originalCharacters!7016 (_1!23394 (get!13660 lt!1354395)))))))))

(declare-fun b!3881573 () Bool)

(declare-fun e!2401909 () Bool)

(assert (=> b!3881573 (= e!2401909 e!2401911)))

(declare-fun res!1572863 () Bool)

(assert (=> b!3881573 (=> (not res!1572863) (not e!2401911))))

(assert (=> b!3881573 (= res!1572863 (isDefined!6897 lt!1354395))))

(declare-fun bm!282891 () Bool)

(declare-fun call!282896 () Option!8834)

(assert (=> bm!282891 (= call!282896 (maxPrefixOneRule!2387 thiss!20629 (h!46709 (t!315248 rules!2768)) lt!1354072))))

(declare-fun b!3881574 () Bool)

(declare-fun res!1572861 () Bool)

(assert (=> b!3881574 (=> (not res!1572861) (not e!2401911))))

(assert (=> b!3881574 (= res!1572861 (= (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354395)))) (originalCharacters!7016 (_1!23394 (get!13660 lt!1354395)))))))

(declare-fun b!3881575 () Bool)

(declare-fun e!2401910 () Option!8834)

(assert (=> b!3881575 (= e!2401910 call!282896)))

(declare-fun b!3881576 () Bool)

(declare-fun res!1572860 () Bool)

(assert (=> b!3881576 (=> (not res!1572860) (not e!2401911))))

(assert (=> b!3881576 (= res!1572860 (< (size!31004 (_2!23394 (get!13660 lt!1354395))) (size!31004 lt!1354072)))))

(declare-fun d!1148961 () Bool)

(assert (=> d!1148961 e!2401909))

(declare-fun res!1572862 () Bool)

(assert (=> d!1148961 (=> res!1572862 e!2401909)))

(assert (=> d!1148961 (= res!1572862 (isEmpty!24526 lt!1354395))))

(assert (=> d!1148961 (= lt!1354395 e!2401910)))

(declare-fun c!675181 () Bool)

(assert (=> d!1148961 (= c!675181 (and ((_ is Cons!41289) (t!315248 rules!2768)) ((_ is Nil!41289) (t!315248 (t!315248 rules!2768)))))))

(declare-fun lt!1354393 () Unit!59356)

(declare-fun lt!1354397 () Unit!59356)

(assert (=> d!1148961 (= lt!1354393 lt!1354397)))

(assert (=> d!1148961 (isPrefix!3511 lt!1354072 lt!1354072)))

(assert (=> d!1148961 (= lt!1354397 (lemmaIsPrefixRefl!2220 lt!1354072 lt!1354072))))

(assert (=> d!1148961 (rulesValidInductive!2298 thiss!20629 (t!315248 rules!2768))))

(assert (=> d!1148961 (= (maxPrefix!3309 thiss!20629 (t!315248 rules!2768) lt!1354072) lt!1354395)))

(declare-fun b!3881571 () Bool)

(declare-fun res!1572859 () Bool)

(assert (=> b!3881571 (=> (not res!1572859) (not e!2401911))))

(assert (=> b!3881571 (= res!1572859 (= (++!10590 (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354395)))) (_2!23394 (get!13660 lt!1354395))) lt!1354072))))

(declare-fun b!3881577 () Bool)

(assert (=> b!3881577 (= e!2401911 (contains!8301 (t!315248 rules!2768) (rule!9314 (_1!23394 (get!13660 lt!1354395)))))))

(declare-fun b!3881578 () Bool)

(declare-fun lt!1354396 () Option!8834)

(declare-fun lt!1354394 () Option!8834)

(assert (=> b!3881578 (= e!2401910 (ite (and ((_ is None!8833) lt!1354396) ((_ is None!8833) lt!1354394)) None!8833 (ite ((_ is None!8833) lt!1354394) lt!1354396 (ite ((_ is None!8833) lt!1354396) lt!1354394 (ite (>= (size!31003 (_1!23394 (v!39131 lt!1354396))) (size!31003 (_1!23394 (v!39131 lt!1354394)))) lt!1354396 lt!1354394)))))))

(assert (=> b!3881578 (= lt!1354396 call!282896)))

(assert (=> b!3881578 (= lt!1354394 (maxPrefix!3309 thiss!20629 (t!315248 (t!315248 rules!2768)) lt!1354072))))

(declare-fun b!3881579 () Bool)

(declare-fun res!1572864 () Bool)

(assert (=> b!3881579 (=> (not res!1572864) (not e!2401911))))

(assert (=> b!3881579 (= res!1572864 (matchR!5426 (regex!6416 (rule!9314 (_1!23394 (get!13660 lt!1354395)))) (list!15344 (charsOf!4240 (_1!23394 (get!13660 lt!1354395))))))))

(assert (= (and d!1148961 c!675181) b!3881575))

(assert (= (and d!1148961 (not c!675181)) b!3881578))

(assert (= (or b!3881575 b!3881578) bm!282891))

(assert (= (and d!1148961 (not res!1572862)) b!3881573))

(assert (= (and b!3881573 res!1572863) b!3881574))

(assert (= (and b!3881574 res!1572861) b!3881576))

(assert (= (and b!3881576 res!1572860) b!3881571))

(assert (= (and b!3881571 res!1572859) b!3881572))

(assert (= (and b!3881572 res!1572858) b!3881579))

(assert (= (and b!3881579 res!1572864) b!3881577))

(declare-fun m!4440361 () Bool)

(assert (=> b!3881571 m!4440361))

(declare-fun m!4440363 () Bool)

(assert (=> b!3881571 m!4440363))

(assert (=> b!3881571 m!4440363))

(declare-fun m!4440365 () Bool)

(assert (=> b!3881571 m!4440365))

(assert (=> b!3881571 m!4440365))

(declare-fun m!4440367 () Bool)

(assert (=> b!3881571 m!4440367))

(declare-fun m!4440369 () Bool)

(assert (=> b!3881573 m!4440369))

(declare-fun m!4440371 () Bool)

(assert (=> b!3881578 m!4440371))

(assert (=> b!3881576 m!4440361))

(declare-fun m!4440373 () Bool)

(assert (=> b!3881576 m!4440373))

(assert (=> b!3881576 m!4439051))

(declare-fun m!4440375 () Bool)

(assert (=> bm!282891 m!4440375))

(assert (=> b!3881577 m!4440361))

(declare-fun m!4440377 () Bool)

(assert (=> b!3881577 m!4440377))

(assert (=> b!3881579 m!4440361))

(assert (=> b!3881579 m!4440363))

(assert (=> b!3881579 m!4440363))

(assert (=> b!3881579 m!4440365))

(assert (=> b!3881579 m!4440365))

(declare-fun m!4440379 () Bool)

(assert (=> b!3881579 m!4440379))

(assert (=> b!3881572 m!4440361))

(declare-fun m!4440381 () Bool)

(assert (=> b!3881572 m!4440381))

(assert (=> b!3881572 m!4440381))

(declare-fun m!4440383 () Bool)

(assert (=> b!3881572 m!4440383))

(assert (=> b!3881574 m!4440361))

(assert (=> b!3881574 m!4440363))

(assert (=> b!3881574 m!4440363))

(assert (=> b!3881574 m!4440365))

(declare-fun m!4440385 () Bool)

(assert (=> d!1148961 m!4440385))

(assert (=> d!1148961 m!4439279))

(assert (=> d!1148961 m!4439281))

(assert (=> d!1148961 m!4440269))

(assert (=> b!3880713 d!1148961))

(declare-fun b!3881580 () Bool)

(declare-fun e!2401912 () Bool)

(declare-fun tp!1176835 () Bool)

(assert (=> b!3881580 (= e!2401912 (and tp_is_empty!19613 tp!1176835))))

(assert (=> b!3880755 (= tp!1176682 e!2401912)))

(assert (= (and b!3880755 ((_ is Cons!41287) (originalCharacters!7016 (h!46708 (t!315247 suffixTokens!72))))) b!3881580))

(declare-fun b!3881583 () Bool)

(declare-fun e!2401913 () Bool)

(declare-fun tp!1176836 () Bool)

(assert (=> b!3881583 (= e!2401913 tp!1176836)))

(assert (=> b!3880756 (= tp!1176681 e!2401913)))

(declare-fun b!3881584 () Bool)

(declare-fun tp!1176837 () Bool)

(declare-fun tp!1176838 () Bool)

(assert (=> b!3881584 (= e!2401913 (and tp!1176837 tp!1176838))))

(declare-fun b!3881581 () Bool)

(assert (=> b!3881581 (= e!2401913 tp_is_empty!19613)))

(declare-fun b!3881582 () Bool)

(declare-fun tp!1176839 () Bool)

(declare-fun tp!1176840 () Bool)

(assert (=> b!3881582 (= e!2401913 (and tp!1176839 tp!1176840))))

(assert (= (and b!3880756 ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) b!3881581))

(assert (= (and b!3880756 ((_ is Concat!17968) (regex!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) b!3881582))

(assert (= (and b!3880756 ((_ is Star!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) b!3881583))

(assert (= (and b!3880756 ((_ is Union!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) b!3881584))

(declare-fun b!3881585 () Bool)

(declare-fun e!2401914 () Bool)

(declare-fun tp!1176841 () Bool)

(assert (=> b!3881585 (= e!2401914 (and tp_is_empty!19613 tp!1176841))))

(assert (=> b!3880769 (= tp!1176696 e!2401914)))

(assert (= (and b!3880769 ((_ is Cons!41287) (t!315246 (originalCharacters!7016 (h!46708 suffixTokens!72))))) b!3881585))

(declare-fun tp!1176850 () Bool)

(declare-fun e!2401919 () Bool)

(declare-fun tp!1176848 () Bool)

(declare-fun b!3881594 () Bool)

(assert (=> b!3881594 (= e!2401919 (and (inv!55444 (left!31661 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))) tp!1176848 (inv!55444 (right!31991 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))) tp!1176850))))

(declare-fun b!3881596 () Bool)

(declare-fun e!2401920 () Bool)

(declare-fun tp!1176849 () Bool)

(assert (=> b!3881596 (= e!2401920 tp!1176849)))

(declare-fun b!3881595 () Bool)

(declare-fun inv!55451 (IArray!25259) Bool)

(assert (=> b!3881595 (= e!2401919 (and (inv!55451 (xs!15933 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))) e!2401920))))

(assert (=> b!3880671 (= tp!1176638 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073)))))) e!2401919))))

(assert (= (and b!3880671 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))) b!3881594))

(assert (= b!3881595 b!3881596))

(assert (= (and b!3880671 ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))) (value!203490 (_1!23394 (v!39131 lt!1354073))))))) b!3881595))

(declare-fun m!4440387 () Bool)

(assert (=> b!3881594 m!4440387))

(declare-fun m!4440389 () Bool)

(assert (=> b!3881594 m!4440389))

(declare-fun m!4440391 () Bool)

(assert (=> b!3881595 m!4440391))

(assert (=> b!3880671 m!4439219))

(declare-fun b!3881599 () Bool)

(declare-fun e!2401921 () Bool)

(declare-fun tp!1176851 () Bool)

(assert (=> b!3881599 (= e!2401921 tp!1176851)))

(assert (=> b!3880731 (= tp!1176654 e!2401921)))

(declare-fun b!3881600 () Bool)

(declare-fun tp!1176852 () Bool)

(declare-fun tp!1176853 () Bool)

(assert (=> b!3881600 (= e!2401921 (and tp!1176852 tp!1176853))))

(declare-fun b!3881597 () Bool)

(assert (=> b!3881597 (= e!2401921 tp_is_empty!19613)))

(declare-fun b!3881598 () Bool)

(declare-fun tp!1176854 () Bool)

(declare-fun tp!1176855 () Bool)

(assert (=> b!3881598 (= e!2401921 (and tp!1176854 tp!1176855))))

(assert (= (and b!3880731 ((_ is ElementMatch!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881597))

(assert (= (and b!3880731 ((_ is Concat!17968) (reg!11650 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881598))

(assert (= (and b!3880731 ((_ is Star!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881599))

(assert (= (and b!3880731 ((_ is Union!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881600))

(declare-fun b!3881604 () Bool)

(declare-fun b_free!105181 () Bool)

(declare-fun b_next!105885 () Bool)

(assert (=> b!3881604 (= b_free!105181 (not b_next!105885))))

(declare-fun t!315494 () Bool)

(declare-fun tb!225377 () Bool)

(assert (=> (and b!3881604 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315494) tb!225377))

(declare-fun result!274502 () Bool)

(assert (= result!274502 result!274270))

(assert (=> d!1148441 t!315494))

(declare-fun tb!225379 () Bool)

(declare-fun t!315496 () Bool)

(assert (=> (and b!3881604 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315496) tb!225379))

(declare-fun result!274504 () Bool)

(assert (= result!274504 result!274414))

(assert (=> d!1148653 t!315496))

(declare-fun tp!1176858 () Bool)

(declare-fun b_and!291267 () Bool)

(assert (=> b!3881604 (= tp!1176858 (and (=> t!315494 result!274502) (=> t!315496 result!274504) b_and!291267))))

(declare-fun b_free!105183 () Bool)

(declare-fun b_next!105887 () Bool)

(assert (=> b!3881604 (= b_free!105183 (not b_next!105887))))

(declare-fun t!315498 () Bool)

(declare-fun tb!225381 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315498) tb!225381))

(declare-fun result!274506 () Bool)

(assert (= result!274506 result!274250))

(assert (=> b!3880467 t!315498))

(declare-fun tb!225383 () Bool)

(declare-fun t!315500 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315500) tb!225383))

(declare-fun result!274508 () Bool)

(assert (= result!274508 result!274316))

(assert (=> d!1148475 t!315500))

(declare-fun t!315502 () Bool)

(declare-fun tb!225385 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315502) tb!225385))

(declare-fun result!274510 () Bool)

(assert (= result!274510 result!274488))

(assert (=> d!1148849 t!315502))

(declare-fun t!315504 () Bool)

(declare-fun tb!225387 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315504) tb!225387))

(declare-fun result!274512 () Bool)

(assert (= result!274512 result!274402))

(assert (=> b!3880981 t!315504))

(declare-fun t!315506 () Bool)

(declare-fun tb!225389 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315506) tb!225389))

(declare-fun result!274514 () Bool)

(assert (= result!274514 result!274258))

(assert (=> b!3880486 t!315506))

(declare-fun t!315508 () Bool)

(declare-fun tb!225391 () Bool)

(assert (=> (and b!3881604 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315508) tb!225391))

(declare-fun result!274516 () Bool)

(assert (= result!274516 result!274366))

(assert (=> b!3880810 t!315508))

(declare-fun tp!1176859 () Bool)

(declare-fun b_and!291269 () Bool)

(assert (=> b!3881604 (= tp!1176859 (and (=> t!315502 result!274510) (=> t!315498 result!274506) (=> t!315506 result!274514) (=> t!315508 result!274516) (=> t!315504 result!274512) (=> t!315500 result!274508) b_and!291269))))

(declare-fun e!2401922 () Bool)

(declare-fun b!3881603 () Bool)

(declare-fun e!2401925 () Bool)

(declare-fun tp!1176856 () Bool)

(assert (=> b!3881603 (= e!2401922 (and tp!1176856 (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) e!2401925))))

(declare-fun e!2401927 () Bool)

(declare-fun b!3881601 () Bool)

(declare-fun e!2401926 () Bool)

(declare-fun tp!1176860 () Bool)

(assert (=> b!3881601 (= e!2401927 (and (inv!55441 (h!46708 (t!315247 (t!315247 suffixTokens!72)))) e!2401926 tp!1176860))))

(declare-fun tp!1176857 () Bool)

(declare-fun b!3881602 () Bool)

(assert (=> b!3881602 (= e!2401926 (and (inv!21 (value!203490 (h!46708 (t!315247 (t!315247 suffixTokens!72))))) e!2401922 tp!1176857))))

(assert (=> b!3880754 (= tp!1176685 e!2401927)))

(assert (=> b!3881604 (= e!2401925 (and tp!1176858 tp!1176859))))

(assert (= b!3881603 b!3881604))

(assert (= b!3881602 b!3881603))

(assert (= b!3881601 b!3881602))

(assert (= (and b!3880754 ((_ is Cons!41288) (t!315247 (t!315247 suffixTokens!72)))) b!3881601))

(declare-fun m!4440393 () Bool)

(assert (=> b!3881603 m!4440393))

(declare-fun m!4440395 () Bool)

(assert (=> b!3881603 m!4440395))

(declare-fun m!4440397 () Bool)

(assert (=> b!3881601 m!4440397))

(declare-fun m!4440399 () Bool)

(assert (=> b!3881602 m!4440399))

(declare-fun b!3881605 () Bool)

(declare-fun e!2401928 () Bool)

(declare-fun tp!1176861 () Bool)

(assert (=> b!3881605 (= e!2401928 (and tp_is_empty!19613 tp!1176861))))

(assert (=> b!3880768 (= tp!1176695 e!2401928)))

(assert (= (and b!3880768 ((_ is Cons!41287) (t!315246 (t!315246 prefix!426)))) b!3881605))

(declare-fun b!3881608 () Bool)

(declare-fun e!2401929 () Bool)

(declare-fun tp!1176862 () Bool)

(assert (=> b!3881608 (= e!2401929 tp!1176862)))

(assert (=> b!3880732 (= tp!1176655 e!2401929)))

(declare-fun b!3881609 () Bool)

(declare-fun tp!1176863 () Bool)

(declare-fun tp!1176864 () Bool)

(assert (=> b!3881609 (= e!2401929 (and tp!1176863 tp!1176864))))

(declare-fun b!3881606 () Bool)

(assert (=> b!3881606 (= e!2401929 tp_is_empty!19613)))

(declare-fun b!3881607 () Bool)

(declare-fun tp!1176865 () Bool)

(declare-fun tp!1176866 () Bool)

(assert (=> b!3881607 (= e!2401929 (and tp!1176865 tp!1176866))))

(assert (= (and b!3880732 ((_ is ElementMatch!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881606))

(assert (= (and b!3880732 ((_ is Concat!17968) (regOne!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881607))

(assert (= (and b!3880732 ((_ is Star!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881608))

(assert (= (and b!3880732 ((_ is Union!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881609))

(declare-fun b!3881612 () Bool)

(declare-fun e!2401930 () Bool)

(declare-fun tp!1176867 () Bool)

(assert (=> b!3881612 (= e!2401930 tp!1176867)))

(assert (=> b!3880732 (= tp!1176656 e!2401930)))

(declare-fun b!3881613 () Bool)

(declare-fun tp!1176868 () Bool)

(declare-fun tp!1176869 () Bool)

(assert (=> b!3881613 (= e!2401930 (and tp!1176868 tp!1176869))))

(declare-fun b!3881610 () Bool)

(assert (=> b!3881610 (= e!2401930 tp_is_empty!19613)))

(declare-fun b!3881611 () Bool)

(declare-fun tp!1176870 () Bool)

(declare-fun tp!1176871 () Bool)

(assert (=> b!3881611 (= e!2401930 (and tp!1176870 tp!1176871))))

(assert (= (and b!3880732 ((_ is ElementMatch!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881610))

(assert (= (and b!3880732 ((_ is Concat!17968) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881611))

(assert (= (and b!3880732 ((_ is Star!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881612))

(assert (= (and b!3880732 ((_ is Union!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881613))

(declare-fun b!3881614 () Bool)

(declare-fun e!2401931 () Bool)

(declare-fun tp!1176872 () Bool)

(assert (=> b!3881614 (= e!2401931 (and tp_is_empty!19613 tp!1176872))))

(assert (=> b!3880759 (= tp!1176687 e!2401931)))

(assert (= (and b!3880759 ((_ is Cons!41287) (originalCharacters!7016 (h!46708 (t!315247 prefixTokens!80))))) b!3881614))

(declare-fun b!3881615 () Bool)

(declare-fun e!2401932 () Bool)

(declare-fun tp!1176873 () Bool)

(assert (=> b!3881615 (= e!2401932 (and tp_is_empty!19613 tp!1176873))))

(assert (=> b!3880767 (= tp!1176694 e!2401932)))

(assert (= (and b!3880767 ((_ is Cons!41287) (t!315246 (t!315246 suffixResult!91)))) b!3881615))

(declare-fun b!3881619 () Bool)

(declare-fun b_free!105185 () Bool)

(declare-fun b_next!105889 () Bool)

(assert (=> b!3881619 (= b_free!105185 (not b_next!105889))))

(declare-fun tb!225393 () Bool)

(declare-fun t!315510 () Bool)

(assert (=> (and b!3881619 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315510) tb!225393))

(declare-fun result!274518 () Bool)

(assert (= result!274518 result!274270))

(assert (=> d!1148441 t!315510))

(declare-fun tb!225395 () Bool)

(declare-fun t!315512 () Bool)

(assert (=> (and b!3881619 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315512) tb!225395))

(declare-fun result!274520 () Bool)

(assert (= result!274520 result!274414))

(assert (=> d!1148653 t!315512))

(declare-fun tp!1176876 () Bool)

(declare-fun b_and!291271 () Bool)

(assert (=> b!3881619 (= tp!1176876 (and (=> t!315510 result!274518) (=> t!315512 result!274520) b_and!291271))))

(declare-fun b_free!105187 () Bool)

(declare-fun b_next!105891 () Bool)

(assert (=> b!3881619 (= b_free!105187 (not b_next!105891))))

(declare-fun t!315514 () Bool)

(declare-fun tb!225397 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315514) tb!225397))

(declare-fun result!274522 () Bool)

(assert (= result!274522 result!274250))

(assert (=> b!3880467 t!315514))

(declare-fun t!315516 () Bool)

(declare-fun tb!225399 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315516) tb!225399))

(declare-fun result!274524 () Bool)

(assert (= result!274524 result!274316))

(assert (=> d!1148475 t!315516))

(declare-fun t!315518 () Bool)

(declare-fun tb!225401 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315518) tb!225401))

(declare-fun result!274526 () Bool)

(assert (= result!274526 result!274488))

(assert (=> d!1148849 t!315518))

(declare-fun t!315520 () Bool)

(declare-fun tb!225403 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315520) tb!225403))

(declare-fun result!274528 () Bool)

(assert (= result!274528 result!274402))

(assert (=> b!3880981 t!315520))

(declare-fun t!315522 () Bool)

(declare-fun tb!225405 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315522) tb!225405))

(declare-fun result!274530 () Bool)

(assert (= result!274530 result!274258))

(assert (=> b!3880486 t!315522))

(declare-fun t!315524 () Bool)

(declare-fun tb!225407 () Bool)

(assert (=> (and b!3881619 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315524) tb!225407))

(declare-fun result!274532 () Bool)

(assert (= result!274532 result!274366))

(assert (=> b!3880810 t!315524))

(declare-fun b_and!291273 () Bool)

(declare-fun tp!1176877 () Bool)

(assert (=> b!3881619 (= tp!1176877 (and (=> t!315522 result!274530) (=> t!315516 result!274524) (=> t!315524 result!274532) (=> t!315520 result!274528) (=> t!315514 result!274522) (=> t!315518 result!274526) b_and!291273))))

(declare-fun b!3881618 () Bool)

(declare-fun e!2401936 () Bool)

(declare-fun tp!1176874 () Bool)

(declare-fun e!2401933 () Bool)

(assert (=> b!3881618 (= e!2401933 (and tp!1176874 (inv!55437 (tag!7276 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (inv!55440 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) e!2401936))))

(declare-fun b!3881616 () Bool)

(declare-fun tp!1176878 () Bool)

(declare-fun e!2401938 () Bool)

(declare-fun e!2401937 () Bool)

(assert (=> b!3881616 (= e!2401938 (and (inv!55441 (h!46708 (t!315247 (t!315247 prefixTokens!80)))) e!2401937 tp!1176878))))

(declare-fun b!3881617 () Bool)

(declare-fun tp!1176875 () Bool)

(assert (=> b!3881617 (= e!2401937 (and (inv!21 (value!203490 (h!46708 (t!315247 (t!315247 prefixTokens!80))))) e!2401933 tp!1176875))))

(assert (=> b!3880758 (= tp!1176690 e!2401938)))

(assert (=> b!3881619 (= e!2401936 (and tp!1176876 tp!1176877))))

(assert (= b!3881618 b!3881619))

(assert (= b!3881617 b!3881618))

(assert (= b!3881616 b!3881617))

(assert (= (and b!3880758 ((_ is Cons!41288) (t!315247 (t!315247 prefixTokens!80)))) b!3881616))

(declare-fun m!4440401 () Bool)

(assert (=> b!3881618 m!4440401))

(declare-fun m!4440403 () Bool)

(assert (=> b!3881618 m!4440403))

(declare-fun m!4440405 () Bool)

(assert (=> b!3881616 m!4440405))

(declare-fun m!4440407 () Bool)

(assert (=> b!3881617 m!4440407))

(declare-fun b!3881622 () Bool)

(declare-fun e!2401939 () Bool)

(declare-fun tp!1176879 () Bool)

(assert (=> b!3881622 (= e!2401939 tp!1176879)))

(assert (=> b!3880760 (= tp!1176686 e!2401939)))

(declare-fun b!3881623 () Bool)

(declare-fun tp!1176880 () Bool)

(declare-fun tp!1176881 () Bool)

(assert (=> b!3881623 (= e!2401939 (and tp!1176880 tp!1176881))))

(declare-fun b!3881620 () Bool)

(assert (=> b!3881620 (= e!2401939 tp_is_empty!19613)))

(declare-fun b!3881621 () Bool)

(declare-fun tp!1176882 () Bool)

(declare-fun tp!1176883 () Bool)

(assert (=> b!3881621 (= e!2401939 (and tp!1176882 tp!1176883))))

(assert (= (and b!3880760 ((_ is ElementMatch!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) b!3881620))

(assert (= (and b!3880760 ((_ is Concat!17968) (regex!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) b!3881621))

(assert (= (and b!3880760 ((_ is Star!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) b!3881622))

(assert (= (and b!3880760 ((_ is Union!11321) (regex!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) b!3881623))

(declare-fun b!3881626 () Bool)

(declare-fun e!2401940 () Bool)

(declare-fun tp!1176884 () Bool)

(assert (=> b!3881626 (= e!2401940 tp!1176884)))

(assert (=> b!3880730 (= tp!1176657 e!2401940)))

(declare-fun b!3881627 () Bool)

(declare-fun tp!1176885 () Bool)

(declare-fun tp!1176886 () Bool)

(assert (=> b!3881627 (= e!2401940 (and tp!1176885 tp!1176886))))

(declare-fun b!3881624 () Bool)

(assert (=> b!3881624 (= e!2401940 tp_is_empty!19613)))

(declare-fun b!3881625 () Bool)

(declare-fun tp!1176887 () Bool)

(declare-fun tp!1176888 () Bool)

(assert (=> b!3881625 (= e!2401940 (and tp!1176887 tp!1176888))))

(assert (= (and b!3880730 ((_ is ElementMatch!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881624))

(assert (= (and b!3880730 ((_ is Concat!17968) (regOne!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881625))

(assert (= (and b!3880730 ((_ is Star!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881626))

(assert (= (and b!3880730 ((_ is Union!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881627))

(declare-fun b!3881630 () Bool)

(declare-fun e!2401941 () Bool)

(declare-fun tp!1176889 () Bool)

(assert (=> b!3881630 (= e!2401941 tp!1176889)))

(assert (=> b!3880730 (= tp!1176658 e!2401941)))

(declare-fun b!3881631 () Bool)

(declare-fun tp!1176890 () Bool)

(declare-fun tp!1176891 () Bool)

(assert (=> b!3881631 (= e!2401941 (and tp!1176890 tp!1176891))))

(declare-fun b!3881628 () Bool)

(assert (=> b!3881628 (= e!2401941 tp_is_empty!19613)))

(declare-fun b!3881629 () Bool)

(declare-fun tp!1176892 () Bool)

(declare-fun tp!1176893 () Bool)

(assert (=> b!3881629 (= e!2401941 (and tp!1176892 tp!1176893))))

(assert (= (and b!3880730 ((_ is ElementMatch!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881628))

(assert (= (and b!3880730 ((_ is Concat!17968) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881629))

(assert (= (and b!3880730 ((_ is Star!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881630))

(assert (= (and b!3880730 ((_ is Union!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 prefixTokens!80)))))) b!3881631))

(declare-fun b!3881634 () Bool)

(declare-fun b_free!105189 () Bool)

(declare-fun b_next!105893 () Bool)

(assert (=> b!3881634 (= b_free!105189 (not b_next!105893))))

(declare-fun t!315526 () Bool)

(declare-fun tb!225409 () Bool)

(assert (=> (and b!3881634 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315526) tb!225409))

(declare-fun result!274534 () Bool)

(assert (= result!274534 result!274270))

(assert (=> d!1148441 t!315526))

(declare-fun t!315528 () Bool)

(declare-fun tb!225411 () Bool)

(assert (=> (and b!3881634 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315528) tb!225411))

(declare-fun result!274536 () Bool)

(assert (= result!274536 result!274414))

(assert (=> d!1148653 t!315528))

(declare-fun b_and!291275 () Bool)

(declare-fun tp!1176896 () Bool)

(assert (=> b!3881634 (= tp!1176896 (and (=> t!315526 result!274534) (=> t!315528 result!274536) b_and!291275))))

(declare-fun b_free!105191 () Bool)

(declare-fun b_next!105895 () Bool)

(assert (=> b!3881634 (= b_free!105191 (not b_next!105895))))

(declare-fun t!315530 () Bool)

(declare-fun tb!225413 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72))))) t!315530) tb!225413))

(declare-fun result!274538 () Bool)

(assert (= result!274538 result!274250))

(assert (=> b!3880467 t!315530))

(declare-fun t!315532 () Bool)

(declare-fun tb!225415 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073)))))) t!315532) tb!225415))

(declare-fun result!274540 () Bool)

(assert (= result!274540 result!274316))

(assert (=> d!1148475 t!315532))

(declare-fun t!315534 () Bool)

(declare-fun tb!225417 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (get!13660 lt!1354203)))))) t!315534) tb!225417))

(declare-fun result!274542 () Bool)

(assert (= result!274542 result!274488))

(assert (=> d!1148849 t!315534))

(declare-fun t!315536 () Bool)

(declare-fun tb!225419 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80)))))) t!315536) tb!225419))

(declare-fun result!274544 () Bool)

(assert (= result!274544 result!274402))

(assert (=> b!3880981 t!315536))

(declare-fun tb!225421 () Bool)

(declare-fun t!315538 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80))))) t!315538) tb!225421))

(declare-fun result!274546 () Bool)

(assert (= result!274546 result!274258))

(assert (=> b!3880486 t!315538))

(declare-fun tb!225423 () Bool)

(declare-fun t!315540 () Bool)

(assert (=> (and b!3881634 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72)))))) t!315540) tb!225423))

(declare-fun result!274548 () Bool)

(assert (= result!274548 result!274366))

(assert (=> b!3880810 t!315540))

(declare-fun tp!1176897 () Bool)

(declare-fun b_and!291277 () Bool)

(assert (=> b!3881634 (= tp!1176897 (and (=> t!315538 result!274546) (=> t!315540 result!274548) (=> t!315530 result!274538) (=> t!315536 result!274544) (=> t!315534 result!274542) (=> t!315532 result!274540) b_and!291277))))

(declare-fun e!2401943 () Bool)

(assert (=> b!3881634 (= e!2401943 (and tp!1176896 tp!1176897))))

(declare-fun e!2401945 () Bool)

(declare-fun b!3881633 () Bool)

(declare-fun tp!1176894 () Bool)

(assert (=> b!3881633 (= e!2401945 (and tp!1176894 (inv!55437 (tag!7276 (h!46709 (t!315248 (t!315248 rules!2768))))) (inv!55440 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) e!2401943))))

(declare-fun b!3881632 () Bool)

(declare-fun e!2401944 () Bool)

(declare-fun tp!1176895 () Bool)

(assert (=> b!3881632 (= e!2401944 (and e!2401945 tp!1176895))))

(assert (=> b!3880741 (= tp!1176668 e!2401944)))

(assert (= b!3881633 b!3881634))

(assert (= b!3881632 b!3881633))

(assert (= (and b!3880741 ((_ is Cons!41289) (t!315248 (t!315248 rules!2768)))) b!3881632))

(declare-fun m!4440409 () Bool)

(assert (=> b!3881633 m!4440409))

(declare-fun m!4440411 () Bool)

(assert (=> b!3881633 m!4440411))

(declare-fun b!3881635 () Bool)

(declare-fun e!2401946 () Bool)

(declare-fun tp!1176898 () Bool)

(assert (=> b!3881635 (= e!2401946 (and tp_is_empty!19613 tp!1176898))))

(assert (=> b!3880766 (= tp!1176693 e!2401946)))

(assert (= (and b!3880766 ((_ is Cons!41287) (t!315246 (originalCharacters!7016 (h!46708 prefixTokens!80))))) b!3881635))

(declare-fun b!3881638 () Bool)

(declare-fun e!2401947 () Bool)

(declare-fun tp!1176899 () Bool)

(assert (=> b!3881638 (= e!2401947 tp!1176899)))

(assert (=> b!3880742 (= tp!1176667 e!2401947)))

(declare-fun b!3881639 () Bool)

(declare-fun tp!1176900 () Bool)

(declare-fun tp!1176901 () Bool)

(assert (=> b!3881639 (= e!2401947 (and tp!1176900 tp!1176901))))

(declare-fun b!3881636 () Bool)

(assert (=> b!3881636 (= e!2401947 tp_is_empty!19613)))

(declare-fun b!3881637 () Bool)

(declare-fun tp!1176902 () Bool)

(declare-fun tp!1176903 () Bool)

(assert (=> b!3881637 (= e!2401947 (and tp!1176902 tp!1176903))))

(assert (= (and b!3880742 ((_ is ElementMatch!11321) (regex!6416 (h!46709 (t!315248 rules!2768))))) b!3881636))

(assert (= (and b!3880742 ((_ is Concat!17968) (regex!6416 (h!46709 (t!315248 rules!2768))))) b!3881637))

(assert (= (and b!3880742 ((_ is Star!11321) (regex!6416 (h!46709 (t!315248 rules!2768))))) b!3881638))

(assert (= (and b!3880742 ((_ is Union!11321) (regex!6416 (h!46709 (t!315248 rules!2768))))) b!3881639))

(declare-fun b!3881640 () Bool)

(declare-fun e!2401948 () Bool)

(declare-fun tp!1176904 () Bool)

(assert (=> b!3881640 (= e!2401948 (and tp_is_empty!19613 tp!1176904))))

(assert (=> b!3880774 (= tp!1176702 e!2401948)))

(assert (= (and b!3880774 ((_ is Cons!41287) (t!315246 (t!315246 suffix!1176)))) b!3881640))

(declare-fun b!3881643 () Bool)

(declare-fun e!2401949 () Bool)

(declare-fun tp!1176905 () Bool)

(assert (=> b!3881643 (= e!2401949 tp!1176905)))

(assert (=> b!3880773 (= tp!1176698 e!2401949)))

(declare-fun b!3881644 () Bool)

(declare-fun tp!1176906 () Bool)

(declare-fun tp!1176907 () Bool)

(assert (=> b!3881644 (= e!2401949 (and tp!1176906 tp!1176907))))

(declare-fun b!3881641 () Bool)

(assert (=> b!3881641 (= e!2401949 tp_is_empty!19613)))

(declare-fun b!3881642 () Bool)

(declare-fun tp!1176908 () Bool)

(declare-fun tp!1176909 () Bool)

(assert (=> b!3881642 (= e!2401949 (and tp!1176908 tp!1176909))))

(assert (= (and b!3880773 ((_ is ElementMatch!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881641))

(assert (= (and b!3880773 ((_ is Concat!17968) (regOne!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881642))

(assert (= (and b!3880773 ((_ is Star!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881643))

(assert (= (and b!3880773 ((_ is Union!11321) (regOne!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881644))

(declare-fun b!3881647 () Bool)

(declare-fun e!2401950 () Bool)

(declare-fun tp!1176910 () Bool)

(assert (=> b!3881647 (= e!2401950 tp!1176910)))

(assert (=> b!3880773 (= tp!1176699 e!2401950)))

(declare-fun b!3881648 () Bool)

(declare-fun tp!1176911 () Bool)

(declare-fun tp!1176912 () Bool)

(assert (=> b!3881648 (= e!2401950 (and tp!1176911 tp!1176912))))

(declare-fun b!3881645 () Bool)

(assert (=> b!3881645 (= e!2401950 tp_is_empty!19613)))

(declare-fun b!3881646 () Bool)

(declare-fun tp!1176913 () Bool)

(declare-fun tp!1176914 () Bool)

(assert (=> b!3881646 (= e!2401950 (and tp!1176913 tp!1176914))))

(assert (= (and b!3880773 ((_ is ElementMatch!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881645))

(assert (= (and b!3880773 ((_ is Concat!17968) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881646))

(assert (= (and b!3880773 ((_ is Star!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881647))

(assert (= (and b!3880773 ((_ is Union!11321) (regTwo!23155 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881648))

(declare-fun b!3881651 () Bool)

(declare-fun e!2401951 () Bool)

(declare-fun tp!1176915 () Bool)

(assert (=> b!3881651 (= e!2401951 tp!1176915)))

(assert (=> b!3880772 (= tp!1176697 e!2401951)))

(declare-fun b!3881652 () Bool)

(declare-fun tp!1176916 () Bool)

(declare-fun tp!1176917 () Bool)

(assert (=> b!3881652 (= e!2401951 (and tp!1176916 tp!1176917))))

(declare-fun b!3881649 () Bool)

(assert (=> b!3881649 (= e!2401951 tp_is_empty!19613)))

(declare-fun b!3881650 () Bool)

(declare-fun tp!1176918 () Bool)

(declare-fun tp!1176919 () Bool)

(assert (=> b!3881650 (= e!2401951 (and tp!1176918 tp!1176919))))

(assert (= (and b!3880772 ((_ is ElementMatch!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881649))

(assert (= (and b!3880772 ((_ is Concat!17968) (reg!11650 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881650))

(assert (= (and b!3880772 ((_ is Star!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881651))

(assert (= (and b!3880772 ((_ is Union!11321) (reg!11650 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881652))

(declare-fun b!3881655 () Bool)

(declare-fun e!2401952 () Bool)

(declare-fun tp!1176920 () Bool)

(assert (=> b!3881655 (= e!2401952 tp!1176920)))

(assert (=> b!3880727 (= tp!1176649 e!2401952)))

(declare-fun b!3881656 () Bool)

(declare-fun tp!1176921 () Bool)

(declare-fun tp!1176922 () Bool)

(assert (=> b!3881656 (= e!2401952 (and tp!1176921 tp!1176922))))

(declare-fun b!3881653 () Bool)

(assert (=> b!3881653 (= e!2401952 tp_is_empty!19613)))

(declare-fun b!3881654 () Bool)

(declare-fun tp!1176923 () Bool)

(declare-fun tp!1176924 () Bool)

(assert (=> b!3881654 (= e!2401952 (and tp!1176923 tp!1176924))))

(assert (= (and b!3880727 ((_ is ElementMatch!11321) (reg!11650 (regex!6416 (h!46709 rules!2768))))) b!3881653))

(assert (= (and b!3880727 ((_ is Concat!17968) (reg!11650 (regex!6416 (h!46709 rules!2768))))) b!3881654))

(assert (= (and b!3880727 ((_ is Star!11321) (reg!11650 (regex!6416 (h!46709 rules!2768))))) b!3881655))

(assert (= (and b!3880727 ((_ is Union!11321) (reg!11650 (regex!6416 (h!46709 rules!2768))))) b!3881656))

(declare-fun b!3881659 () Bool)

(declare-fun e!2401953 () Bool)

(declare-fun tp!1176925 () Bool)

(assert (=> b!3881659 (= e!2401953 tp!1176925)))

(assert (=> b!3880726 (= tp!1176652 e!2401953)))

(declare-fun b!3881660 () Bool)

(declare-fun tp!1176926 () Bool)

(declare-fun tp!1176927 () Bool)

(assert (=> b!3881660 (= e!2401953 (and tp!1176926 tp!1176927))))

(declare-fun b!3881657 () Bool)

(assert (=> b!3881657 (= e!2401953 tp_is_empty!19613)))

(declare-fun b!3881658 () Bool)

(declare-fun tp!1176928 () Bool)

(declare-fun tp!1176929 () Bool)

(assert (=> b!3881658 (= e!2401953 (and tp!1176928 tp!1176929))))

(assert (= (and b!3880726 ((_ is ElementMatch!11321) (regOne!23154 (regex!6416 (h!46709 rules!2768))))) b!3881657))

(assert (= (and b!3880726 ((_ is Concat!17968) (regOne!23154 (regex!6416 (h!46709 rules!2768))))) b!3881658))

(assert (= (and b!3880726 ((_ is Star!11321) (regOne!23154 (regex!6416 (h!46709 rules!2768))))) b!3881659))

(assert (= (and b!3880726 ((_ is Union!11321) (regOne!23154 (regex!6416 (h!46709 rules!2768))))) b!3881660))

(declare-fun b!3881663 () Bool)

(declare-fun e!2401954 () Bool)

(declare-fun tp!1176930 () Bool)

(assert (=> b!3881663 (= e!2401954 tp!1176930)))

(assert (=> b!3880726 (= tp!1176653 e!2401954)))

(declare-fun b!3881664 () Bool)

(declare-fun tp!1176931 () Bool)

(declare-fun tp!1176932 () Bool)

(assert (=> b!3881664 (= e!2401954 (and tp!1176931 tp!1176932))))

(declare-fun b!3881661 () Bool)

(assert (=> b!3881661 (= e!2401954 tp_is_empty!19613)))

(declare-fun b!3881662 () Bool)

(declare-fun tp!1176933 () Bool)

(declare-fun tp!1176934 () Bool)

(assert (=> b!3881662 (= e!2401954 (and tp!1176933 tp!1176934))))

(assert (= (and b!3880726 ((_ is ElementMatch!11321) (regTwo!23154 (regex!6416 (h!46709 rules!2768))))) b!3881661))

(assert (= (and b!3880726 ((_ is Concat!17968) (regTwo!23154 (regex!6416 (h!46709 rules!2768))))) b!3881662))

(assert (= (and b!3880726 ((_ is Star!11321) (regTwo!23154 (regex!6416 (h!46709 rules!2768))))) b!3881663))

(assert (= (and b!3880726 ((_ is Union!11321) (regTwo!23154 (regex!6416 (h!46709 rules!2768))))) b!3881664))

(declare-fun tp!1176935 () Bool)

(declare-fun e!2401955 () Bool)

(declare-fun b!3881665 () Bool)

(declare-fun tp!1176937 () Bool)

(assert (=> b!3881665 (= e!2401955 (and (inv!55444 (left!31661 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))) tp!1176935 (inv!55444 (right!31991 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))) tp!1176937))))

(declare-fun b!3881667 () Bool)

(declare-fun e!2401956 () Bool)

(declare-fun tp!1176936 () Bool)

(assert (=> b!3881667 (= e!2401956 tp!1176936)))

(declare-fun b!3881666 () Bool)

(assert (=> b!3881666 (= e!2401955 (and (inv!55451 (xs!15933 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))) e!2401956))))

(assert (=> b!3880490 (= tp!1176571 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80))))) e!2401955))))

(assert (= (and b!3880490 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))) b!3881665))

(assert (= b!3881666 b!3881667))

(assert (= (and b!3880490 ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (value!203490 (h!46708 prefixTokens!80)))))) b!3881666))

(declare-fun m!4440413 () Bool)

(assert (=> b!3881665 m!4440413))

(declare-fun m!4440415 () Bool)

(assert (=> b!3881665 m!4440415))

(declare-fun m!4440417 () Bool)

(assert (=> b!3881666 m!4440417))

(assert (=> b!3880490 m!4439011))

(declare-fun b!3881670 () Bool)

(declare-fun e!2401957 () Bool)

(declare-fun tp!1176938 () Bool)

(assert (=> b!3881670 (= e!2401957 tp!1176938)))

(assert (=> b!3880728 (= tp!1176650 e!2401957)))

(declare-fun b!3881671 () Bool)

(declare-fun tp!1176939 () Bool)

(declare-fun tp!1176940 () Bool)

(assert (=> b!3881671 (= e!2401957 (and tp!1176939 tp!1176940))))

(declare-fun b!3881668 () Bool)

(assert (=> b!3881668 (= e!2401957 tp_is_empty!19613)))

(declare-fun b!3881669 () Bool)

(declare-fun tp!1176941 () Bool)

(declare-fun tp!1176942 () Bool)

(assert (=> b!3881669 (= e!2401957 (and tp!1176941 tp!1176942))))

(assert (= (and b!3880728 ((_ is ElementMatch!11321) (regOne!23155 (regex!6416 (h!46709 rules!2768))))) b!3881668))

(assert (= (and b!3880728 ((_ is Concat!17968) (regOne!23155 (regex!6416 (h!46709 rules!2768))))) b!3881669))

(assert (= (and b!3880728 ((_ is Star!11321) (regOne!23155 (regex!6416 (h!46709 rules!2768))))) b!3881670))

(assert (= (and b!3880728 ((_ is Union!11321) (regOne!23155 (regex!6416 (h!46709 rules!2768))))) b!3881671))

(declare-fun b!3881674 () Bool)

(declare-fun e!2401958 () Bool)

(declare-fun tp!1176943 () Bool)

(assert (=> b!3881674 (= e!2401958 tp!1176943)))

(assert (=> b!3880728 (= tp!1176651 e!2401958)))

(declare-fun b!3881675 () Bool)

(declare-fun tp!1176944 () Bool)

(declare-fun tp!1176945 () Bool)

(assert (=> b!3881675 (= e!2401958 (and tp!1176944 tp!1176945))))

(declare-fun b!3881672 () Bool)

(assert (=> b!3881672 (= e!2401958 tp_is_empty!19613)))

(declare-fun b!3881673 () Bool)

(declare-fun tp!1176946 () Bool)

(declare-fun tp!1176947 () Bool)

(assert (=> b!3881673 (= e!2401958 (and tp!1176946 tp!1176947))))

(assert (= (and b!3880728 ((_ is ElementMatch!11321) (regTwo!23155 (regex!6416 (h!46709 rules!2768))))) b!3881672))

(assert (= (and b!3880728 ((_ is Concat!17968) (regTwo!23155 (regex!6416 (h!46709 rules!2768))))) b!3881673))

(assert (= (and b!3880728 ((_ is Star!11321) (regTwo!23155 (regex!6416 (h!46709 rules!2768))))) b!3881674))

(assert (= (and b!3880728 ((_ is Union!11321) (regTwo!23155 (regex!6416 (h!46709 rules!2768))))) b!3881675))

(declare-fun b!3881678 () Bool)

(declare-fun e!2401959 () Bool)

(declare-fun tp!1176948 () Bool)

(assert (=> b!3881678 (= e!2401959 tp!1176948)))

(assert (=> b!3880771 (= tp!1176700 e!2401959)))

(declare-fun b!3881679 () Bool)

(declare-fun tp!1176949 () Bool)

(declare-fun tp!1176950 () Bool)

(assert (=> b!3881679 (= e!2401959 (and tp!1176949 tp!1176950))))

(declare-fun b!3881676 () Bool)

(assert (=> b!3881676 (= e!2401959 tp_is_empty!19613)))

(declare-fun b!3881677 () Bool)

(declare-fun tp!1176951 () Bool)

(declare-fun tp!1176952 () Bool)

(assert (=> b!3881677 (= e!2401959 (and tp!1176951 tp!1176952))))

(assert (= (and b!3880771 ((_ is ElementMatch!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881676))

(assert (= (and b!3880771 ((_ is Concat!17968) (regOne!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881677))

(assert (= (and b!3880771 ((_ is Star!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881678))

(assert (= (and b!3880771 ((_ is Union!11321) (regOne!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881679))

(declare-fun b!3881682 () Bool)

(declare-fun e!2401960 () Bool)

(declare-fun tp!1176953 () Bool)

(assert (=> b!3881682 (= e!2401960 tp!1176953)))

(assert (=> b!3880771 (= tp!1176701 e!2401960)))

(declare-fun b!3881683 () Bool)

(declare-fun tp!1176954 () Bool)

(declare-fun tp!1176955 () Bool)

(assert (=> b!3881683 (= e!2401960 (and tp!1176954 tp!1176955))))

(declare-fun b!3881680 () Bool)

(assert (=> b!3881680 (= e!2401960 tp_is_empty!19613)))

(declare-fun b!3881681 () Bool)

(declare-fun tp!1176956 () Bool)

(declare-fun tp!1176957 () Bool)

(assert (=> b!3881681 (= e!2401960 (and tp!1176956 tp!1176957))))

(assert (= (and b!3880771 ((_ is ElementMatch!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881680))

(assert (= (and b!3880771 ((_ is Concat!17968) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881681))

(assert (= (and b!3880771 ((_ is Star!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881682))

(assert (= (and b!3880771 ((_ is Union!11321) (regTwo!23154 (regex!6416 (rule!9314 (h!46708 suffixTokens!72)))))) b!3881683))

(declare-fun tp!1176958 () Bool)

(declare-fun tp!1176960 () Bool)

(declare-fun b!3881684 () Bool)

(declare-fun e!2401961 () Bool)

(assert (=> b!3881684 (= e!2401961 (and (inv!55444 (left!31661 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))) tp!1176958 (inv!55444 (right!31991 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))) tp!1176960))))

(declare-fun b!3881686 () Bool)

(declare-fun e!2401962 () Bool)

(declare-fun tp!1176959 () Bool)

(assert (=> b!3881686 (= e!2401962 tp!1176959)))

(declare-fun b!3881685 () Bool)

(assert (=> b!3881685 (= e!2401961 (and (inv!55451 (xs!15933 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))) e!2401962))))

(assert (=> b!3880483 (= tp!1176570 (and (inv!55444 (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72))))) e!2401961))))

(assert (= (and b!3880483 ((_ is Node!12627) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))) b!3881684))

(assert (= b!3881685 b!3881686))

(assert (= (and b!3880483 ((_ is Leaf!19542) (c!674921 (dynLambda!17721 (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (value!203490 (h!46708 suffixTokens!72)))))) b!3881685))

(declare-fun m!4440419 () Bool)

(assert (=> b!3881684 m!4440419))

(declare-fun m!4440421 () Bool)

(assert (=> b!3881684 m!4440421))

(declare-fun m!4440423 () Bool)

(assert (=> b!3881685 m!4440423))

(assert (=> b!3880483 m!4438995))

(declare-fun b_lambda!113271 () Bool)

(assert (= b_lambda!113241 (or (and b!3880757 b_free!105163 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881604 b_free!105183 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880321 b_free!105143 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881634 b_free!105191 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881619 b_free!105187 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880322 b_free!105139 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880761 b_free!105167 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880743 b_free!105159 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880325 b_free!105135 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) b_lambda!113271)))

(declare-fun b_lambda!113273 () Bool)

(assert (= b_lambda!113233 (or (and b!3880322 b_free!105137 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880325 b_free!105133 (= (toValue!8844 (transformation!6416 (h!46709 rules!2768))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881604 b_free!105181 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881619 b_free!105185 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880743 b_free!105157 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880757 b_free!105161 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880761 b_free!105165 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3880321 b_free!105141 (= (toValue!8844 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) (and b!3881634 b_free!105189 (= (toValue!8844 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toValue!8844 (transformation!6416 (rule!9314 (_1!23394 (v!39131 lt!1354073))))))) b_lambda!113273)))

(declare-fun b_lambda!113275 () Bool)

(assert (= b_lambda!113249 (or (and b!3881604 b_free!105183 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3880757 b_free!105163) (and b!3880321 b_free!105143 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3880322 b_free!105139 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3881634 b_free!105191 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3881619 b_free!105187 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3880743 b_free!105159 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3880761 b_free!105167 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) (and b!3880325 b_free!105135 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))))) b_lambda!113275)))

(declare-fun b_lambda!113277 () Bool)

(assert (= b_lambda!113255 (or (and b!3880325 b_free!105135 (= (toChars!8703 (transformation!6416 (h!46709 rules!2768))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3881634 b_free!105191 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 (t!315248 rules!2768))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3880322 b_free!105139 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 prefixTokens!80)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3881604 b_free!105183 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 suffixTokens!72)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3881619 b_free!105187 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 (t!315247 prefixTokens!80)))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3880757 b_free!105163 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 suffixTokens!72))))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3880761 b_free!105167) (and b!3880321 b_free!105143 (= (toChars!8703 (transformation!6416 (rule!9314 (h!46708 suffixTokens!72)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) (and b!3880743 b_free!105159 (= (toChars!8703 (transformation!6416 (h!46709 (t!315248 rules!2768)))) (toChars!8703 (transformation!6416 (rule!9314 (h!46708 (t!315247 prefixTokens!80))))))) b_lambda!113277)))

(check-sat (not b!3880818) (not b!3881615) (not b!3881598) (not b!3881536) (not b!3881629) (not b!3881493) (not b!3881585) (not b!3881671) (not b_next!105839) b_and!291261 (not b!3881559) (not b!3880811) (not b!3880950) (not b!3881483) (not d!1148951) (not b!3881491) (not b!3881625) (not d!1148875) (not d!1148643) (not b!3881051) (not b!3881554) (not b!3881639) (not b!3881599) (not b!3881583) (not b!3881540) (not b!3881449) (not b!3881567) (not b_lambda!113271) (not b!3881614) (not b!3881572) (not b!3881050) (not b_next!105843) (not b!3881078) (not b!3880955) (not b!3881660) (not b!3881462) (not b_next!105887) (not b!3880788) (not b!3881506) (not b!3880975) (not b!3881499) (not b!3881473) (not d!1148871) (not b!3881613) (not b!3881534) (not b!3881652) (not b!3881448) (not d!1148533) (not b!3881666) (not b!3881489) (not d!1148845) (not b!3881443) b_and!291229 (not b!3881596) (not b!3881555) (not d!1148735) (not b!3880976) (not bm!282888) (not b!3881112) (not b!3881662) (not b!3881452) (not b!3881686) (not d!1148715) (not d!1148919) (not d!1148895) (not b!3881675) (not d!1148859) (not bm!282891) (not b!3881574) (not d!1148917) (not b!3881521) (not d!1148955) (not b_lambda!113275) (not b!3880810) (not b!3881545) (not b_next!105895) (not b!3881656) b_and!291269 (not b!3881558) (not b!3880787) (not b!3881060) (not d!1148879) (not b!3880800) (not d!1148933) (not b!3881503) (not d!1148923) b_and!291257 (not b!3881682) (not d!1148819) (not b!3881523) (not d!1148863) (not b!3881056) (not b!3881569) (not b!3881097) b_and!291265 (not d!1148909) (not b_next!105865) (not b!3881580) (not tb!225245) (not b_next!105893) (not b!3881685) (not b!3881031) (not b!3881383) (not b!3881099) (not b!3881595) (not b!3881570) (not b!3881441) b_and!291225 (not b!3881678) (not b!3881571) (not b!3881466) (not b!3880983) (not b!3881388) (not b!3880956) (not b!3881659) (not b_next!105889) (not b!3881528) (not d!1148927) (not b!3881532) (not d!1148935) (not b!3881107) (not b!3881440) (not b!3881548) (not b!3881500) (not b!3881498) (not b!3881601) (not b!3881608) (not b!3881622) (not b!3881400) (not b_next!105891) b_and!291221 (not d!1148961) (not d!1148911) (not b!3880483) (not b_lambda!113273) (not b!3881568) (not d!1148647) (not b!3881655) (not d!1148831) (not b!3881638) (not b!3881674) (not d!1148539) (not b!3881522) (not b!3880807) (not b!3881104) (not b!3880490) (not b!3881565) (not d!1148921) (not b!3880988) (not b_next!105837) (not b!3881563) (not b!3881386) (not b!3881665) b_and!291267 (not b!3881642) (not b!3881630) (not d!1148937) (not b!3881607) tp_is_empty!19613 (not b!3881677) (not b_next!105841) (not d!1148847) (not b!3881663) (not b!3881651) b_and!291227 b_and!291271 (not b!3881648) (not b!3881640) (not b!3881669) (not b!3881621) (not d!1148959) (not b!3881444) (not tb!225281) (not b!3881106) (not b!3881681) (not b!3881635) (not b!3880974) (not b!3881529) (not b!3881463) (not b!3881450) (not bm!282873) (not b!3880957) (not b!3881616) (not b!3881480) (not d!1148703) (not b!3881543) (not bm!282872) (not b!3881576) (not b!3881603) (not d!1148835) (not b!3881501) (not b!3881456) (not b!3881553) (not b!3881564) (not b!3881679) (not b_lambda!113269) (not b!3880812) (not b!3881582) (not d!1148821) (not d!1148551) (not b!3881454) (not b!3881573) (not b!3881626) (not b_next!105885) b_and!291255 (not b!3881505) (not b!3881103) (not b!3880809) (not b!3881479) (not b!3881435) (not b!3881459) (not b!3880951) (not tb!225365) (not b!3881494) (not b!3881404) b_and!291277 (not b_next!105845) (not b!3881664) (not b_lambda!113245) (not b!3881469) (not bm!282889) (not b!3881584) (not b_lambda!113243) (not b!3881381) (not b!3880795) (not b!3881487) (not b!3880671) (not b!3881519) (not b!3880954) (not b!3881472) (not b!3881654) (not b!3881631) (not d!1148655) (not b!3881577) (not b!3881373) (not b!3880953) (not b!3881108) (not b!3881375) (not b!3881637) (not b!3881538) (not b!3881578) (not d!1148925) b_and!291223 (not b!3881594) (not d!1148833) (not b!3881644) (not b!3881670) (not b!3881402) (not b!3881406) (not b_next!105871) (not b!3881100) (not b_next!105847) (not b!3881517) (not d!1148881) (not b_next!105867) (not b!3881579) (not d!1148745) (not b!3881605) (not b!3881623) (not d!1148851) (not b!3881477) b_and!291273 (not b!3881617) (not b_lambda!113277) b_and!291275 (not d!1148873) (not b!3881497) (not b!3880981) b_and!291259 (not b!3881518) (not d!1148947) (not b!3881468) (not b_next!105869) (not d!1148523) (not b!3880797) (not b!3881684) (not b!3881485) (not d!1148683) (not b!3881609) (not d!1148867) (not b!3881667) (not tb!225293) (not b!3881602) (not d!1148899) (not b!3881673) (not b!3881627) (not b!3881600) (not b!3881458) (not d!1148849) (not b!3880952) (not b!3880799) (not b!3881562) (not b!3881650) (not b!3881110) (not b!3880982) (not b!3881612) (not b!3881504) (not b!3881541) (not b!3880814) (not b_lambda!113257) (not b!3881643) (not b!3881658) (not b!3881095) (not b_next!105861) (not b!3881647) (not d!1148681) b_and!291219 (not d!1148869) (not b!3880816) (not b_next!105863) (not bm!282890) (not b!3880821) b_and!291263 (not b!3881683) (not b!3881618) (not b!3881394) (not d!1148729) (not b!3881611) (not b!3881385) (not b!3880820) (not b!3881561) (not b!3881475) (not b!3881632) (not b!3881064) (not b!3881633) (not b!3881646) (not d!1148659) (not b!3881077) (not b!3881074) (not b!3880822))
(check-sat b_and!291229 b_and!291257 (not b_next!105867) (not b_next!105869) (not b_next!105839) b_and!291261 (not b_next!105843) (not b_next!105887) b_and!291269 (not b_next!105895) b_and!291265 (not b_next!105865) (not b_next!105893) b_and!291225 (not b_next!105889) (not b_next!105891) b_and!291221 (not b_next!105837) (not b_next!105841) b_and!291267 b_and!291227 b_and!291271 (not b_next!105885) b_and!291255 b_and!291277 (not b_next!105845) (not b_next!105871) (not b_next!105847) b_and!291223 b_and!291275 b_and!291259 b_and!291273 (not b_next!105863) (not b_next!105861) b_and!291263 b_and!291219)
