; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168134 () Bool)

(assert start!168134)

(declare-fun b!1717540 () Bool)

(declare-fun b_free!46715 () Bool)

(declare-fun b_next!47419 () Bool)

(assert (=> b!1717540 (= b_free!46715 (not b_next!47419))))

(declare-fun tp!490566 () Bool)

(declare-fun b_and!124931 () Bool)

(assert (=> b!1717540 (= tp!490566 b_and!124931)))

(declare-fun b_free!46717 () Bool)

(declare-fun b_next!47421 () Bool)

(assert (=> b!1717540 (= b_free!46717 (not b_next!47421))))

(declare-fun tp!490563 () Bool)

(declare-fun b_and!124933 () Bool)

(assert (=> b!1717540 (= tp!490563 b_and!124933)))

(declare-fun b!1717545 () Bool)

(declare-fun b_free!46719 () Bool)

(declare-fun b_next!47423 () Bool)

(assert (=> b!1717545 (= b_free!46719 (not b_next!47423))))

(declare-fun tp!490569 () Bool)

(declare-fun b_and!124935 () Bool)

(assert (=> b!1717545 (= tp!490569 b_and!124935)))

(declare-fun b_free!46721 () Bool)

(declare-fun b_next!47425 () Bool)

(assert (=> b!1717545 (= b_free!46721 (not b_next!47425))))

(declare-fun tp!490570 () Bool)

(declare-fun b_and!124937 () Bool)

(assert (=> b!1717545 (= tp!490570 b_and!124937)))

(declare-fun b!1717542 () Bool)

(declare-fun b_free!46723 () Bool)

(declare-fun b_next!47427 () Bool)

(assert (=> b!1717542 (= b_free!46723 (not b_next!47427))))

(declare-fun tp!490572 () Bool)

(declare-fun b_and!124939 () Bool)

(assert (=> b!1717542 (= tp!490572 b_and!124939)))

(declare-fun b_free!46725 () Bool)

(declare-fun b_next!47429 () Bool)

(assert (=> b!1717542 (= b_free!46725 (not b_next!47429))))

(declare-fun tp!490565 () Bool)

(declare-fun b_and!124941 () Bool)

(assert (=> b!1717542 (= tp!490565 b_and!124941)))

(declare-fun b!1717556 () Bool)

(declare-fun e!1098491 () Bool)

(assert (=> b!1717556 (= e!1098491 true)))

(declare-fun b!1717555 () Bool)

(declare-fun e!1098490 () Bool)

(assert (=> b!1717555 (= e!1098490 e!1098491)))

(declare-fun b!1717554 () Bool)

(declare-fun e!1098489 () Bool)

(assert (=> b!1717554 (= e!1098489 e!1098490)))

(declare-fun b!1717522 () Bool)

(assert (=> b!1717522 e!1098489))

(assert (= b!1717555 b!1717556))

(assert (= b!1717554 b!1717555))

(assert (= b!1717522 b!1717554))

(declare-fun lambda!69020 () Int)

(declare-datatypes ((List!18846 0))(
  ( (Nil!18776) (Cons!18776 (h!24177 (_ BitVec 16)) (t!159017 List!18846)) )
))
(declare-datatypes ((TokenValue!3413 0))(
  ( (FloatLiteralValue!6826 (text!24336 List!18846)) (TokenValueExt!3412 (__x!12128 Int)) (Broken!17065 (value!104352 List!18846)) (Object!3482) (End!3413) (Def!3413) (Underscore!3413) (Match!3413) (Else!3413) (Error!3413) (Case!3413) (If!3413) (Extends!3413) (Abstract!3413) (Class!3413) (Val!3413) (DelimiterValue!6826 (del!3473 List!18846)) (KeywordValue!3419 (value!104353 List!18846)) (CommentValue!6826 (value!104354 List!18846)) (WhitespaceValue!6826 (value!104355 List!18846)) (IndentationValue!3413 (value!104356 List!18846)) (String!21396) (Int32!3413) (Broken!17066 (value!104357 List!18846)) (Boolean!3414) (Unit!32610) (OperatorValue!3416 (op!3473 List!18846)) (IdentifierValue!6826 (value!104358 List!18846)) (IdentifierValue!6827 (value!104359 List!18846)) (WhitespaceValue!6827 (value!104360 List!18846)) (True!6826) (False!6826) (Broken!17067 (value!104361 List!18846)) (Broken!17068 (value!104362 List!18846)) (True!6827) (RightBrace!3413) (RightBracket!3413) (Colon!3413) (Null!3413) (Comma!3413) (LeftBracket!3413) (False!6827) (LeftBrace!3413) (ImaginaryLiteralValue!3413 (text!24337 List!18846)) (StringLiteralValue!10239 (value!104363 List!18846)) (EOFValue!3413 (value!104364 List!18846)) (IdentValue!3413 (value!104365 List!18846)) (DelimiterValue!6827 (value!104366 List!18846)) (DedentValue!3413 (value!104367 List!18846)) (NewLineValue!3413 (value!104368 List!18846)) (IntegerValue!10239 (value!104369 (_ BitVec 32)) (text!24338 List!18846)) (IntegerValue!10240 (value!104370 Int) (text!24339 List!18846)) (Times!3413) (Or!3413) (Equal!3413) (Minus!3413) (Broken!17069 (value!104371 List!18846)) (And!3413) (Div!3413) (LessEqual!3413) (Mod!3413) (Concat!8064) (Not!3413) (Plus!3413) (SpaceValue!3413 (value!104372 List!18846)) (IntegerValue!10241 (value!104373 Int) (text!24340 List!18846)) (StringLiteralValue!10240 (text!24341 List!18846)) (FloatLiteralValue!6827 (text!24342 List!18846)) (BytesLiteralValue!3413 (value!104374 List!18846)) (CommentValue!6827 (value!104375 List!18846)) (StringLiteralValue!10241 (value!104376 List!18846)) (ErrorTokenValue!3413 (msg!3474 List!18846)) )
))
(declare-datatypes ((C!9476 0))(
  ( (C!9477 (val!5334 Int)) )
))
(declare-datatypes ((List!18847 0))(
  ( (Nil!18777) (Cons!18777 (h!24178 C!9476) (t!159018 List!18847)) )
))
(declare-datatypes ((Regex!4651 0))(
  ( (ElementMatch!4651 (c!281216 C!9476)) (Concat!8065 (regOne!9814 Regex!4651) (regTwo!9814 Regex!4651)) (EmptyExpr!4651) (Star!4651 (reg!4980 Regex!4651)) (EmptyLang!4651) (Union!4651 (regOne!9815 Regex!4651) (regTwo!9815 Regex!4651)) )
))
(declare-datatypes ((String!21397 0))(
  ( (String!21398 (value!104377 String)) )
))
(declare-datatypes ((IArray!12495 0))(
  ( (IArray!12496 (innerList!6305 List!18847)) )
))
(declare-datatypes ((Conc!6245 0))(
  ( (Node!6245 (left!14976 Conc!6245) (right!15306 Conc!6245) (csize!12720 Int) (cheight!6456 Int)) (Leaf!9127 (xs!9121 IArray!12495) (csize!12721 Int)) (Empty!6245) )
))
(declare-datatypes ((BalanceConc!12434 0))(
  ( (BalanceConc!12435 (c!281217 Conc!6245)) )
))
(declare-datatypes ((TokenValueInjection!6486 0))(
  ( (TokenValueInjection!6487 (toValue!4830 Int) (toChars!4689 Int)) )
))
(declare-datatypes ((Rule!6446 0))(
  ( (Rule!6447 (regex!3323 Regex!4651) (tag!3627 String!21397) (isSeparator!3323 Bool) (transformation!3323 TokenValueInjection!6486)) )
))
(declare-datatypes ((Token!6212 0))(
  ( (Token!6213 (value!104378 TokenValue!3413) (rule!5263 Rule!6446) (size!14920 Int) (originalCharacters!4137 List!18847)) )
))
(declare-datatypes ((tuple2!18478 0))(
  ( (tuple2!18479 (_1!10641 Token!6212) (_2!10641 List!18847)) )
))
(declare-fun lt!656462 () tuple2!18478)

(declare-fun order!11381 () Int)

(declare-fun order!11379 () Int)

(declare-fun dynLambda!8596 (Int Int) Int)

(declare-fun dynLambda!8597 (Int Int) Int)

(assert (=> b!1717556 (< (dynLambda!8596 order!11379 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8597 order!11381 lambda!69020))))

(declare-fun order!11383 () Int)

(declare-fun dynLambda!8598 (Int Int) Int)

(assert (=> b!1717556 (< (dynLambda!8598 order!11383 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8597 order!11381 lambda!69020))))

(declare-fun b!1717518 () Bool)

(declare-fun res!770290 () Bool)

(declare-fun e!1098478 () Bool)

(assert (=> b!1717518 (=> res!770290 e!1098478)))

(declare-fun suffix!1421 () List!18847)

(declare-fun isEmpty!11805 (List!18847) Bool)

(assert (=> b!1717518 (= res!770290 (isEmpty!11805 suffix!1421))))

(declare-fun b!1717519 () Bool)

(declare-fun e!1098480 () Bool)

(declare-fun tp_is_empty!7545 () Bool)

(declare-fun tp!490562 () Bool)

(assert (=> b!1717519 (= e!1098480 (and tp_is_empty!7545 tp!490562))))

(declare-fun b!1717520 () Bool)

(declare-fun res!770287 () Bool)

(declare-fun e!1098474 () Bool)

(assert (=> b!1717520 (=> (not res!770287) (not e!1098474))))

(declare-fun token!523 () Token!6212)

(declare-fun rule!422 () Rule!6446)

(assert (=> b!1717520 (= res!770287 (= (rule!5263 token!523) rule!422))))

(declare-fun b!1717521 () Bool)

(declare-fun e!1098472 () Bool)

(declare-fun e!1098467 () Bool)

(declare-fun tp!490567 () Bool)

(assert (=> b!1717521 (= e!1098472 (and e!1098467 tp!490567))))

(declare-fun b!1717523 () Bool)

(declare-fun res!770291 () Bool)

(assert (=> b!1717523 (=> res!770291 e!1098478)))

(declare-fun lt!656464 () List!18847)

(declare-datatypes ((LexerInterface!2952 0))(
  ( (LexerInterfaceExt!2949 (__x!12129 Int)) (Lexer!2950) )
))
(declare-fun thiss!24550 () LexerInterface!2952)

(declare-datatypes ((List!18848 0))(
  ( (Nil!18778) (Cons!18778 (h!24179 Rule!6446) (t!159019 List!18848)) )
))
(declare-fun rules!3447 () List!18848)

(declare-fun prefixMatch!536 (Regex!4651 List!18847) Bool)

(declare-fun rulesRegex!681 (LexerInterface!2952 List!18848) Regex!4651)

(declare-fun ++!5148 (List!18847 List!18847) List!18847)

(declare-fun head!3870 (List!18847) C!9476)

(assert (=> b!1717523 (= res!770291 (prefixMatch!536 (rulesRegex!681 thiss!24550 rules!3447) (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777))))))

(declare-fun b!1717524 () Bool)

(declare-fun tp!490571 () Bool)

(declare-fun e!1098473 () Bool)

(declare-fun inv!24229 (String!21397) Bool)

(declare-fun inv!24234 (TokenValueInjection!6486) Bool)

(assert (=> b!1717524 (= e!1098467 (and tp!490571 (inv!24229 (tag!3627 (h!24179 rules!3447))) (inv!24234 (transformation!3323 (h!24179 rules!3447))) e!1098473))))

(declare-fun b!1717525 () Bool)

(declare-fun res!770280 () Bool)

(declare-fun e!1098468 () Bool)

(assert (=> b!1717525 (=> (not res!770280) (not e!1098468))))

(declare-fun isEmpty!11806 (List!18848) Bool)

(assert (=> b!1717525 (= res!770280 (not (isEmpty!11806 rules!3447)))))

(declare-fun b!1717526 () Bool)

(declare-fun res!770283 () Bool)

(assert (=> b!1717526 (=> (not res!770283) (not e!1098468))))

(declare-fun contains!3345 (List!18848 Rule!6446) Bool)

(assert (=> b!1717526 (= res!770283 (contains!3345 rules!3447 rule!422))))

(declare-fun b!1717527 () Bool)

(declare-fun e!1098462 () Bool)

(declare-fun e!1098482 () Bool)

(assert (=> b!1717527 (= e!1098462 e!1098482)))

(declare-fun res!770278 () Bool)

(assert (=> b!1717527 (=> res!770278 e!1098482)))

(declare-fun lt!656468 () BalanceConc!12434)

(declare-fun lt!656463 () List!18847)

(declare-fun list!7584 (BalanceConc!12434) List!18847)

(declare-fun dynLambda!8599 (Int TokenValue!3413) BalanceConc!12434)

(declare-fun dynLambda!8600 (Int BalanceConc!12434) TokenValue!3413)

(assert (=> b!1717527 (= res!770278 (not (= (list!7584 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))) lt!656463)))))

(declare-datatypes ((Unit!32611 0))(
  ( (Unit!32612) )
))
(declare-fun lt!656471 () Unit!32611)

(declare-fun lemmaSemiInverse!469 (TokenValueInjection!6486 BalanceConc!12434) Unit!32611)

(assert (=> b!1717527 (= lt!656471 (lemmaSemiInverse!469 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468))))

(declare-fun e!1098464 () Bool)

(declare-fun e!1098460 () Bool)

(declare-fun b!1717528 () Bool)

(declare-fun tp!490561 () Bool)

(assert (=> b!1717528 (= e!1098464 (and tp!490561 (inv!24229 (tag!3627 (rule!5263 token!523))) (inv!24234 (transformation!3323 (rule!5263 token!523))) e!1098460))))

(declare-fun b!1717529 () Bool)

(declare-fun res!770294 () Bool)

(assert (=> b!1717529 (=> (not res!770294) (not e!1098468))))

(declare-fun rulesInvariant!2621 (LexerInterface!2952 List!18848) Bool)

(assert (=> b!1717529 (= res!770294 (rulesInvariant!2621 thiss!24550 rules!3447))))

(declare-fun e!1098475 () Bool)

(declare-fun b!1717530 () Bool)

(declare-fun tp!490564 () Bool)

(declare-fun inv!21 (TokenValue!3413) Bool)

(assert (=> b!1717530 (= e!1098475 (and (inv!21 (value!104378 token!523)) e!1098464 tp!490564))))

(declare-fun b!1717531 () Bool)

(declare-fun e!1098465 () Bool)

(declare-fun lt!656451 () Rule!6446)

(assert (=> b!1717531 (= e!1098465 (= (rule!5263 (_1!10641 lt!656462)) lt!656451))))

(declare-fun b!1717532 () Bool)

(assert (=> b!1717532 (= e!1098474 (not e!1098478))))

(declare-fun res!770279 () Bool)

(assert (=> b!1717532 (=> res!770279 e!1098478)))

(declare-fun matchR!2125 (Regex!4651 List!18847) Bool)

(assert (=> b!1717532 (= res!770279 (not (matchR!2125 (regex!3323 rule!422) lt!656464)))))

(declare-fun ruleValid!822 (LexerInterface!2952 Rule!6446) Bool)

(assert (=> b!1717532 (ruleValid!822 thiss!24550 rule!422)))

(declare-fun lt!656465 () Unit!32611)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!346 (LexerInterface!2952 Rule!6446 List!18848) Unit!32611)

(assert (=> b!1717532 (= lt!656465 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!346 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1717533 () Bool)

(declare-fun res!770296 () Bool)

(assert (=> b!1717533 (=> res!770296 e!1098482)))

(assert (=> b!1717533 (= res!770296 (not (= lt!656468 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))))

(declare-fun res!770288 () Bool)

(assert (=> start!168134 (=> (not res!770288) (not e!1098468))))

(get-info :version)

(assert (=> start!168134 (= res!770288 ((_ is Lexer!2950) thiss!24550))))

(assert (=> start!168134 e!1098468))

(assert (=> start!168134 e!1098480))

(declare-fun e!1098481 () Bool)

(assert (=> start!168134 e!1098481))

(assert (=> start!168134 true))

(declare-fun inv!24235 (Token!6212) Bool)

(assert (=> start!168134 (and (inv!24235 token!523) e!1098475)))

(assert (=> start!168134 e!1098472))

(declare-fun e!1098466 () Bool)

(assert (=> b!1717522 (= e!1098466 e!1098462)))

(declare-fun res!770286 () Bool)

(assert (=> b!1717522 (=> res!770286 e!1098462)))

(declare-fun Forall!698 (Int) Bool)

(assert (=> b!1717522 (= res!770286 (not (Forall!698 lambda!69020)))))

(declare-fun lt!656449 () Unit!32611)

(declare-fun lemmaInv!530 (TokenValueInjection!6486) Unit!32611)

(assert (=> b!1717522 (= lt!656449 (lemmaInv!530 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))))

(declare-fun b!1717534 () Bool)

(declare-fun res!770289 () Bool)

(assert (=> b!1717534 (=> res!770289 e!1098466)))

(assert (=> b!1717534 (= res!770289 (not (matchR!2125 (regex!3323 (rule!5263 (_1!10641 lt!656462))) lt!656463)))))

(declare-fun b!1717535 () Bool)

(declare-fun res!770295 () Bool)

(assert (=> b!1717535 (=> (not res!770295) (not e!1098474))))

(declare-fun lt!656455 () tuple2!18478)

(assert (=> b!1717535 (= res!770295 (isEmpty!11805 (_2!10641 lt!656455)))))

(declare-fun b!1717536 () Bool)

(declare-fun e!1098479 () Bool)

(assert (=> b!1717536 (= e!1098482 e!1098479)))

(declare-fun res!770282 () Bool)

(assert (=> b!1717536 (=> res!770282 e!1098479)))

(declare-datatypes ((Option!3670 0))(
  ( (None!3669) (Some!3669 (v!25066 tuple2!18478)) )
))
(declare-fun lt!656453 () Option!3670)

(declare-fun apply!5128 (TokenValueInjection!6486 BalanceConc!12434) TokenValue!3413)

(declare-fun size!14921 (BalanceConc!12434) Int)

(assert (=> b!1717536 (= res!770282 (not (= lt!656453 (Some!3669 (tuple2!18479 (Token!6213 (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468) (rule!5263 (_1!10641 lt!656462)) (size!14921 lt!656468) lt!656463) (_2!10641 lt!656462))))))))

(declare-fun lt!656470 () Unit!32611)

(declare-fun lemmaCharactersSize!395 (Token!6212) Unit!32611)

(assert (=> b!1717536 (= lt!656470 (lemmaCharactersSize!395 (_1!10641 lt!656462)))))

(declare-fun lt!656467 () Unit!32611)

(declare-fun lemmaEqSameImage!248 (TokenValueInjection!6486 BalanceConc!12434 BalanceConc!12434) Unit!32611)

(declare-fun seqFromList!2297 (List!18847) BalanceConc!12434)

(assert (=> b!1717536 (= lt!656467 (lemmaEqSameImage!248 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468 (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462)))))))

(declare-fun b!1717537 () Bool)

(declare-fun e!1098470 () Bool)

(assert (=> b!1717537 (= e!1098470 e!1098465)))

(declare-fun res!770292 () Bool)

(assert (=> b!1717537 (=> (not res!770292) (not e!1098465))))

(declare-fun charsOf!1972 (Token!6212) BalanceConc!12434)

(assert (=> b!1717537 (= res!770292 (matchR!2125 (regex!3323 lt!656451) (list!7584 (charsOf!1972 (_1!10641 lt!656462)))))))

(declare-datatypes ((Option!3671 0))(
  ( (None!3670) (Some!3670 (v!25067 Rule!6446)) )
))
(declare-fun lt!656454 () Option!3671)

(declare-fun get!5549 (Option!3671) Rule!6446)

(assert (=> b!1717537 (= lt!656451 (get!5549 lt!656454))))

(declare-fun b!1717538 () Bool)

(declare-fun lt!656469 () List!18847)

(declare-fun lt!656457 () Int)

(declare-fun size!14922 (List!18847) Int)

(assert (=> b!1717538 (= e!1098479 (>= (size!14922 lt!656469) lt!656457))))

(declare-fun lt!656461 () List!18847)

(assert (=> b!1717538 (= (_2!10641 lt!656462) lt!656461)))

(declare-fun lt!656456 () Unit!32611)

(declare-fun lemmaSamePrefixThenSameSuffix!708 (List!18847 List!18847 List!18847 List!18847 List!18847) Unit!32611)

(assert (=> b!1717538 (= lt!656456 (lemmaSamePrefixThenSameSuffix!708 lt!656463 (_2!10641 lt!656462) lt!656463 lt!656461 lt!656469))))

(declare-fun getSuffix!758 (List!18847 List!18847) List!18847)

(assert (=> b!1717538 (= lt!656461 (getSuffix!758 lt!656469 lt!656463))))

(declare-fun lt!656472 () TokenValue!3413)

(declare-fun maxPrefixOneRule!882 (LexerInterface!2952 Rule!6446 List!18847) Option!3670)

(assert (=> b!1717538 (= (maxPrefixOneRule!882 thiss!24550 (rule!5263 (_1!10641 lt!656462)) lt!656469) (Some!3669 (tuple2!18479 (Token!6213 lt!656472 (rule!5263 (_1!10641 lt!656462)) lt!656457 lt!656463) (_2!10641 lt!656462))))))

(assert (=> b!1717538 (= lt!656457 (size!14922 lt!656463))))

(assert (=> b!1717538 (= lt!656472 (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) (seqFromList!2297 lt!656463)))))

(declare-fun lt!656458 () Unit!32611)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!281 (LexerInterface!2952 List!18848 List!18847 List!18847 List!18847 Rule!6446) Unit!32611)

(assert (=> b!1717538 (= lt!656458 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!281 thiss!24550 rules!3447 lt!656463 lt!656469 (_2!10641 lt!656462) (rule!5263 (_1!10641 lt!656462))))))

(declare-fun b!1717539 () Bool)

(declare-fun e!1098463 () Bool)

(declare-fun tp!490568 () Bool)

(assert (=> b!1717539 (= e!1098481 (and tp!490568 (inv!24229 (tag!3627 rule!422)) (inv!24234 (transformation!3323 rule!422)) e!1098463))))

(assert (=> b!1717540 (= e!1098460 (and tp!490566 tp!490563))))

(declare-fun b!1717541 () Bool)

(declare-fun e!1098476 () Bool)

(assert (=> b!1717541 (= e!1098468 e!1098476)))

(declare-fun res!770293 () Bool)

(assert (=> b!1717541 (=> (not res!770293) (not e!1098476))))

(declare-fun lt!656459 () Option!3670)

(declare-fun isDefined!3013 (Option!3670) Bool)

(assert (=> b!1717541 (= res!770293 (isDefined!3013 lt!656459))))

(declare-fun maxPrefix!1506 (LexerInterface!2952 List!18848 List!18847) Option!3670)

(assert (=> b!1717541 (= lt!656459 (maxPrefix!1506 thiss!24550 rules!3447 lt!656464))))

(assert (=> b!1717541 (= lt!656464 (list!7584 (charsOf!1972 token!523)))))

(assert (=> b!1717542 (= e!1098463 (and tp!490572 tp!490565))))

(declare-fun b!1717543 () Bool)

(assert (=> b!1717543 (= e!1098476 e!1098474)))

(declare-fun res!770284 () Bool)

(assert (=> b!1717543 (=> (not res!770284) (not e!1098474))))

(assert (=> b!1717543 (= res!770284 (= (_1!10641 lt!656455) token!523))))

(declare-fun get!5550 (Option!3670) tuple2!18478)

(assert (=> b!1717543 (= lt!656455 (get!5550 lt!656459))))

(declare-fun b!1717544 () Bool)

(assert (=> b!1717544 (= e!1098478 e!1098466)))

(declare-fun res!770281 () Bool)

(assert (=> b!1717544 (=> res!770281 e!1098466)))

(declare-fun isPrefix!1564 (List!18847 List!18847) Bool)

(assert (=> b!1717544 (= res!770281 (not (isPrefix!1564 lt!656463 lt!656469)))))

(assert (=> b!1717544 (isPrefix!1564 lt!656463 (++!5148 lt!656463 (_2!10641 lt!656462)))))

(declare-fun lt!656450 () Unit!32611)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1074 (List!18847 List!18847) Unit!32611)

(assert (=> b!1717544 (= lt!656450 (lemmaConcatTwoListThenFirstIsPrefix!1074 lt!656463 (_2!10641 lt!656462)))))

(assert (=> b!1717544 (= lt!656463 (list!7584 lt!656468))))

(assert (=> b!1717544 (= lt!656468 (charsOf!1972 (_1!10641 lt!656462)))))

(assert (=> b!1717544 e!1098470))

(declare-fun res!770285 () Bool)

(assert (=> b!1717544 (=> (not res!770285) (not e!1098470))))

(declare-fun isDefined!3014 (Option!3671) Bool)

(assert (=> b!1717544 (= res!770285 (isDefined!3014 lt!656454))))

(declare-fun getRuleFromTag!373 (LexerInterface!2952 List!18848 String!21397) Option!3671)

(assert (=> b!1717544 (= lt!656454 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 (_1!10641 lt!656462)))))))

(declare-fun lt!656452 () Unit!32611)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!373 (LexerInterface!2952 List!18848 List!18847 Token!6212) Unit!32611)

(assert (=> b!1717544 (= lt!656452 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!373 thiss!24550 rules!3447 lt!656469 (_1!10641 lt!656462)))))

(assert (=> b!1717544 (= lt!656462 (get!5550 lt!656453))))

(declare-fun lt!656466 () Unit!32611)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!476 (LexerInterface!2952 List!18848 List!18847 List!18847) Unit!32611)

(assert (=> b!1717544 (= lt!656466 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!476 thiss!24550 rules!3447 lt!656464 suffix!1421))))

(assert (=> b!1717544 (= lt!656453 (maxPrefix!1506 thiss!24550 rules!3447 lt!656469))))

(assert (=> b!1717544 (isPrefix!1564 lt!656464 lt!656469)))

(declare-fun lt!656460 () Unit!32611)

(assert (=> b!1717544 (= lt!656460 (lemmaConcatTwoListThenFirstIsPrefix!1074 lt!656464 suffix!1421))))

(assert (=> b!1717544 (= lt!656469 (++!5148 lt!656464 suffix!1421))))

(assert (=> b!1717545 (= e!1098473 (and tp!490569 tp!490570))))

(assert (= (and start!168134 res!770288) b!1717525))

(assert (= (and b!1717525 res!770280) b!1717529))

(assert (= (and b!1717529 res!770294) b!1717526))

(assert (= (and b!1717526 res!770283) b!1717541))

(assert (= (and b!1717541 res!770293) b!1717543))

(assert (= (and b!1717543 res!770284) b!1717535))

(assert (= (and b!1717535 res!770295) b!1717520))

(assert (= (and b!1717520 res!770287) b!1717532))

(assert (= (and b!1717532 (not res!770279)) b!1717518))

(assert (= (and b!1717518 (not res!770290)) b!1717523))

(assert (= (and b!1717523 (not res!770291)) b!1717544))

(assert (= (and b!1717544 res!770285) b!1717537))

(assert (= (and b!1717537 res!770292) b!1717531))

(assert (= (and b!1717544 (not res!770281)) b!1717534))

(assert (= (and b!1717534 (not res!770289)) b!1717522))

(assert (= (and b!1717522 (not res!770286)) b!1717527))

(assert (= (and b!1717527 (not res!770278)) b!1717533))

(assert (= (and b!1717533 (not res!770296)) b!1717536))

(assert (= (and b!1717536 (not res!770282)) b!1717538))

(assert (= (and start!168134 ((_ is Cons!18777) suffix!1421)) b!1717519))

(assert (= b!1717539 b!1717542))

(assert (= start!168134 b!1717539))

(assert (= b!1717528 b!1717540))

(assert (= b!1717530 b!1717528))

(assert (= start!168134 b!1717530))

(assert (= b!1717524 b!1717545))

(assert (= b!1717521 b!1717524))

(assert (= (and start!168134 ((_ is Cons!18778) rules!3447)) b!1717521))

(declare-fun b_lambda!54327 () Bool)

(assert (=> (not b_lambda!54327) (not b!1717527)))

(declare-fun t!159000 () Bool)

(declare-fun tb!101589 () Bool)

(assert (=> (and b!1717540 (= (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159000) tb!101589))

(declare-fun b!1717561 () Bool)

(declare-fun e!1098494 () Bool)

(declare-fun tp!490575 () Bool)

(declare-fun inv!24236 (Conc!6245) Bool)

(assert (=> b!1717561 (= e!1098494 (and (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))) tp!490575))))

(declare-fun result!122088 () Bool)

(declare-fun inv!24237 (BalanceConc!12434) Bool)

(assert (=> tb!101589 (= result!122088 (and (inv!24237 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))) e!1098494))))

(assert (= tb!101589 b!1717561))

(declare-fun m!2122239 () Bool)

(assert (=> b!1717561 m!2122239))

(declare-fun m!2122241 () Bool)

(assert (=> tb!101589 m!2122241))

(assert (=> b!1717527 t!159000))

(declare-fun b_and!124943 () Bool)

(assert (= b_and!124933 (and (=> t!159000 result!122088) b_and!124943)))

(declare-fun tb!101591 () Bool)

(declare-fun t!159002 () Bool)

(assert (=> (and b!1717545 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159002) tb!101591))

(declare-fun result!122092 () Bool)

(assert (= result!122092 result!122088))

(assert (=> b!1717527 t!159002))

(declare-fun b_and!124945 () Bool)

(assert (= b_and!124937 (and (=> t!159002 result!122092) b_and!124945)))

(declare-fun tb!101593 () Bool)

(declare-fun t!159004 () Bool)

(assert (=> (and b!1717542 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159004) tb!101593))

(declare-fun result!122094 () Bool)

(assert (= result!122094 result!122088))

(assert (=> b!1717527 t!159004))

(declare-fun b_and!124947 () Bool)

(assert (= b_and!124941 (and (=> t!159004 result!122094) b_and!124947)))

(declare-fun b_lambda!54329 () Bool)

(assert (=> (not b_lambda!54329) (not b!1717527)))

(declare-fun t!159006 () Bool)

(declare-fun tb!101595 () Bool)

(assert (=> (and b!1717540 (= (toValue!4830 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159006) tb!101595))

(declare-fun result!122096 () Bool)

(assert (=> tb!101595 (= result!122096 (inv!21 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(declare-fun m!2122243 () Bool)

(assert (=> tb!101595 m!2122243))

(assert (=> b!1717527 t!159006))

(declare-fun b_and!124949 () Bool)

(assert (= b_and!124931 (and (=> t!159006 result!122096) b_and!124949)))

(declare-fun tb!101597 () Bool)

(declare-fun t!159008 () Bool)

(assert (=> (and b!1717545 (= (toValue!4830 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159008) tb!101597))

(declare-fun result!122100 () Bool)

(assert (= result!122100 result!122096))

(assert (=> b!1717527 t!159008))

(declare-fun b_and!124951 () Bool)

(assert (= b_and!124935 (and (=> t!159008 result!122100) b_and!124951)))

(declare-fun tb!101599 () Bool)

(declare-fun t!159010 () Bool)

(assert (=> (and b!1717542 (= (toValue!4830 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159010) tb!101599))

(declare-fun result!122102 () Bool)

(assert (= result!122102 result!122096))

(assert (=> b!1717527 t!159010))

(declare-fun b_and!124953 () Bool)

(assert (= b_and!124939 (and (=> t!159010 result!122102) b_and!124953)))

(declare-fun b_lambda!54331 () Bool)

(assert (=> (not b_lambda!54331) (not b!1717533)))

(declare-fun t!159012 () Bool)

(declare-fun tb!101601 () Bool)

(assert (=> (and b!1717540 (= (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159012) tb!101601))

(declare-fun b!1717564 () Bool)

(declare-fun e!1098498 () Bool)

(declare-fun tp!490576 () Bool)

(assert (=> b!1717564 (= e!1098498 (and (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))) tp!490576))))

(declare-fun result!122104 () Bool)

(assert (=> tb!101601 (= result!122104 (and (inv!24237 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))) e!1098498))))

(assert (= tb!101601 b!1717564))

(declare-fun m!2122245 () Bool)

(assert (=> b!1717564 m!2122245))

(declare-fun m!2122247 () Bool)

(assert (=> tb!101601 m!2122247))

(assert (=> b!1717533 t!159012))

(declare-fun b_and!124955 () Bool)

(assert (= b_and!124943 (and (=> t!159012 result!122104) b_and!124955)))

(declare-fun tb!101603 () Bool)

(declare-fun t!159014 () Bool)

(assert (=> (and b!1717545 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159014) tb!101603))

(declare-fun result!122106 () Bool)

(assert (= result!122106 result!122104))

(assert (=> b!1717533 t!159014))

(declare-fun b_and!124957 () Bool)

(assert (= b_and!124945 (and (=> t!159014 result!122106) b_and!124957)))

(declare-fun t!159016 () Bool)

(declare-fun tb!101605 () Bool)

(assert (=> (and b!1717542 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159016) tb!101605))

(declare-fun result!122108 () Bool)

(assert (= result!122108 result!122104))

(assert (=> b!1717533 t!159016))

(declare-fun b_and!124959 () Bool)

(assert (= b_and!124947 (and (=> t!159016 result!122108) b_and!124959)))

(declare-fun m!2122249 () Bool)

(assert (=> b!1717533 m!2122249))

(declare-fun m!2122251 () Bool)

(assert (=> b!1717526 m!2122251))

(declare-fun m!2122253 () Bool)

(assert (=> b!1717522 m!2122253))

(declare-fun m!2122255 () Bool)

(assert (=> b!1717522 m!2122255))

(declare-fun m!2122257 () Bool)

(assert (=> b!1717535 m!2122257))

(declare-fun m!2122259 () Bool)

(assert (=> b!1717527 m!2122259))

(assert (=> b!1717527 m!2122259))

(declare-fun m!2122261 () Bool)

(assert (=> b!1717527 m!2122261))

(assert (=> b!1717527 m!2122261))

(declare-fun m!2122263 () Bool)

(assert (=> b!1717527 m!2122263))

(declare-fun m!2122265 () Bool)

(assert (=> b!1717527 m!2122265))

(declare-fun m!2122267 () Bool)

(assert (=> b!1717543 m!2122267))

(declare-fun m!2122269 () Bool)

(assert (=> b!1717524 m!2122269))

(declare-fun m!2122271 () Bool)

(assert (=> b!1717524 m!2122271))

(declare-fun m!2122273 () Bool)

(assert (=> b!1717532 m!2122273))

(declare-fun m!2122275 () Bool)

(assert (=> b!1717532 m!2122275))

(declare-fun m!2122277 () Bool)

(assert (=> b!1717532 m!2122277))

(declare-fun m!2122279 () Bool)

(assert (=> b!1717541 m!2122279))

(declare-fun m!2122281 () Bool)

(assert (=> b!1717541 m!2122281))

(declare-fun m!2122283 () Bool)

(assert (=> b!1717541 m!2122283))

(assert (=> b!1717541 m!2122283))

(declare-fun m!2122285 () Bool)

(assert (=> b!1717541 m!2122285))

(declare-fun m!2122287 () Bool)

(assert (=> b!1717536 m!2122287))

(declare-fun m!2122289 () Bool)

(assert (=> b!1717536 m!2122289))

(declare-fun m!2122291 () Bool)

(assert (=> b!1717536 m!2122291))

(assert (=> b!1717536 m!2122287))

(declare-fun m!2122293 () Bool)

(assert (=> b!1717536 m!2122293))

(declare-fun m!2122295 () Bool)

(assert (=> b!1717536 m!2122295))

(declare-fun m!2122297 () Bool)

(assert (=> b!1717525 m!2122297))

(declare-fun m!2122299 () Bool)

(assert (=> b!1717537 m!2122299))

(assert (=> b!1717537 m!2122299))

(declare-fun m!2122301 () Bool)

(assert (=> b!1717537 m!2122301))

(assert (=> b!1717537 m!2122301))

(declare-fun m!2122303 () Bool)

(assert (=> b!1717537 m!2122303))

(declare-fun m!2122305 () Bool)

(assert (=> b!1717537 m!2122305))

(declare-fun m!2122307 () Bool)

(assert (=> b!1717534 m!2122307))

(declare-fun m!2122309 () Bool)

(assert (=> b!1717530 m!2122309))

(declare-fun m!2122311 () Bool)

(assert (=> b!1717539 m!2122311))

(declare-fun m!2122313 () Bool)

(assert (=> b!1717539 m!2122313))

(declare-fun m!2122315 () Bool)

(assert (=> b!1717523 m!2122315))

(declare-fun m!2122317 () Bool)

(assert (=> b!1717523 m!2122317))

(declare-fun m!2122319 () Bool)

(assert (=> b!1717523 m!2122319))

(assert (=> b!1717523 m!2122315))

(assert (=> b!1717523 m!2122319))

(declare-fun m!2122321 () Bool)

(assert (=> b!1717523 m!2122321))

(declare-fun m!2122323 () Bool)

(assert (=> b!1717518 m!2122323))

(declare-fun m!2122325 () Bool)

(assert (=> start!168134 m!2122325))

(declare-fun m!2122327 () Bool)

(assert (=> b!1717529 m!2122327))

(declare-fun m!2122329 () Bool)

(assert (=> b!1717544 m!2122329))

(declare-fun m!2122331 () Bool)

(assert (=> b!1717544 m!2122331))

(declare-fun m!2122333 () Bool)

(assert (=> b!1717544 m!2122333))

(assert (=> b!1717544 m!2122299))

(declare-fun m!2122335 () Bool)

(assert (=> b!1717544 m!2122335))

(declare-fun m!2122337 () Bool)

(assert (=> b!1717544 m!2122337))

(declare-fun m!2122339 () Bool)

(assert (=> b!1717544 m!2122339))

(assert (=> b!1717544 m!2122335))

(declare-fun m!2122341 () Bool)

(assert (=> b!1717544 m!2122341))

(declare-fun m!2122343 () Bool)

(assert (=> b!1717544 m!2122343))

(declare-fun m!2122345 () Bool)

(assert (=> b!1717544 m!2122345))

(declare-fun m!2122347 () Bool)

(assert (=> b!1717544 m!2122347))

(declare-fun m!2122349 () Bool)

(assert (=> b!1717544 m!2122349))

(declare-fun m!2122351 () Bool)

(assert (=> b!1717544 m!2122351))

(declare-fun m!2122353 () Bool)

(assert (=> b!1717544 m!2122353))

(declare-fun m!2122355 () Bool)

(assert (=> b!1717544 m!2122355))

(declare-fun m!2122357 () Bool)

(assert (=> b!1717538 m!2122357))

(declare-fun m!2122359 () Bool)

(assert (=> b!1717538 m!2122359))

(assert (=> b!1717538 m!2122357))

(declare-fun m!2122361 () Bool)

(assert (=> b!1717538 m!2122361))

(declare-fun m!2122363 () Bool)

(assert (=> b!1717538 m!2122363))

(declare-fun m!2122365 () Bool)

(assert (=> b!1717538 m!2122365))

(declare-fun m!2122367 () Bool)

(assert (=> b!1717538 m!2122367))

(declare-fun m!2122369 () Bool)

(assert (=> b!1717538 m!2122369))

(declare-fun m!2122371 () Bool)

(assert (=> b!1717538 m!2122371))

(declare-fun m!2122373 () Bool)

(assert (=> b!1717528 m!2122373))

(declare-fun m!2122375 () Bool)

(assert (=> b!1717528 m!2122375))

(check-sat (not b_next!47421) (not b_next!47427) (not b!1717543) (not b!1717518) b_and!124959 (not b!1717524) (not b_next!47429) b_and!124949 (not tb!101589) (not b!1717544) (not b_lambda!54327) b_and!124957 (not start!168134) b_and!124951 (not b!1717521) (not b!1717528) (not b!1717537) (not b!1717527) (not b_next!47425) (not b!1717532) (not b!1717535) (not b!1717534) (not b!1717541) (not b!1717530) (not b!1717536) (not b!1717526) (not b!1717564) (not tb!101595) (not b!1717522) b_and!124953 (not b!1717538) (not b!1717561) (not tb!101601) (not b_lambda!54331) (not b!1717539) (not b!1717523) (not b_next!47419) (not b!1717519) (not b_lambda!54329) (not b!1717525) (not b!1717529) tp_is_empty!7545 b_and!124955 (not b_next!47423))
(check-sat (not b_next!47421) (not b_next!47427) b_and!124951 (not b_next!47425) b_and!124959 (not b_next!47429) b_and!124949 b_and!124953 b_and!124957 (not b_next!47419) b_and!124955 (not b_next!47423))
(get-model)

(declare-fun d!526790 () Bool)

(assert (=> d!526790 (= (size!14920 (_1!10641 lt!656462)) (size!14922 (originalCharacters!4137 (_1!10641 lt!656462))))))

(declare-fun Unit!32615 () Unit!32611)

(assert (=> d!526790 (= (lemmaCharactersSize!395 (_1!10641 lt!656462)) Unit!32615)))

(declare-fun bs!402080 () Bool)

(assert (= bs!402080 d!526790))

(declare-fun m!2122399 () Bool)

(assert (=> bs!402080 m!2122399))

(assert (=> b!1717536 d!526790))

(declare-fun b!1717626 () Bool)

(declare-fun e!1098529 () Bool)

(assert (=> b!1717626 (= e!1098529 true)))

(declare-fun d!526792 () Bool)

(assert (=> d!526792 e!1098529))

(assert (= d!526792 b!1717626))

(declare-fun lambda!69023 () Int)

(declare-fun order!11385 () Int)

(declare-fun dynLambda!8601 (Int Int) Int)

(assert (=> b!1717626 (< (dynLambda!8596 order!11379 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8601 order!11385 lambda!69023))))

(assert (=> b!1717626 (< (dynLambda!8598 order!11383 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8601 order!11385 lambda!69023))))

(assert (=> d!526792 (= (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462)))))))

(declare-fun lt!656500 () Unit!32611)

(declare-fun Forall2of!68 (Int BalanceConc!12434 BalanceConc!12434) Unit!32611)

(assert (=> d!526792 (= lt!656500 (Forall2of!68 lambda!69023 lt!656468 (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462)))))))

(assert (=> d!526792 (= (list!7584 lt!656468) (list!7584 (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462)))))))

(assert (=> d!526792 (= (lemmaEqSameImage!248 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468 (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462)))) lt!656500)))

(declare-fun b_lambda!54333 () Bool)

(assert (=> (not b_lambda!54333) (not d!526792)))

(assert (=> d!526792 t!159006))

(declare-fun b_and!124961 () Bool)

(assert (= b_and!124949 (and (=> t!159006 result!122096) b_and!124961)))

(assert (=> d!526792 t!159008))

(declare-fun b_and!124963 () Bool)

(assert (= b_and!124951 (and (=> t!159008 result!122100) b_and!124963)))

(assert (=> d!526792 t!159010))

(declare-fun b_and!124965 () Bool)

(assert (= b_and!124953 (and (=> t!159010 result!122102) b_and!124965)))

(declare-fun b_lambda!54335 () Bool)

(assert (=> (not b_lambda!54335) (not d!526792)))

(declare-fun t!159021 () Bool)

(declare-fun tb!101607 () Bool)

(assert (=> (and b!1717540 (= (toValue!4830 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159021) tb!101607))

(declare-fun result!122110 () Bool)

(assert (=> tb!101607 (= result!122110 (inv!21 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462))))))))

(declare-fun m!2122449 () Bool)

(assert (=> tb!101607 m!2122449))

(assert (=> d!526792 t!159021))

(declare-fun b_and!124967 () Bool)

(assert (= b_and!124961 (and (=> t!159021 result!122110) b_and!124967)))

(declare-fun t!159023 () Bool)

(declare-fun tb!101609 () Bool)

(assert (=> (and b!1717545 (= (toValue!4830 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159023) tb!101609))

(declare-fun result!122112 () Bool)

(assert (= result!122112 result!122110))

(assert (=> d!526792 t!159023))

(declare-fun b_and!124969 () Bool)

(assert (= b_and!124963 (and (=> t!159023 result!122112) b_and!124969)))

(declare-fun tb!101611 () Bool)

(declare-fun t!159025 () Bool)

(assert (=> (and b!1717542 (= (toValue!4830 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159025) tb!101611))

(declare-fun result!122114 () Bool)

(assert (= result!122114 result!122110))

(assert (=> d!526792 t!159025))

(declare-fun b_and!124971 () Bool)

(assert (= b_and!124965 (and (=> t!159025 result!122114) b_and!124971)))

(assert (=> d!526792 m!2122287))

(declare-fun m!2122451 () Bool)

(assert (=> d!526792 m!2122451))

(assert (=> d!526792 m!2122287))

(declare-fun m!2122453 () Bool)

(assert (=> d!526792 m!2122453))

(assert (=> d!526792 m!2122343))

(assert (=> d!526792 m!2122287))

(declare-fun m!2122455 () Bool)

(assert (=> d!526792 m!2122455))

(assert (=> d!526792 m!2122259))

(assert (=> b!1717536 d!526792))

(declare-fun d!526802 () Bool)

(declare-fun lt!656503 () Int)

(assert (=> d!526802 (= lt!656503 (size!14922 (list!7584 lt!656468)))))

(declare-fun size!14923 (Conc!6245) Int)

(assert (=> d!526802 (= lt!656503 (size!14923 (c!281217 lt!656468)))))

(assert (=> d!526802 (= (size!14921 lt!656468) lt!656503)))

(declare-fun bs!402082 () Bool)

(assert (= bs!402082 d!526802))

(assert (=> bs!402082 m!2122343))

(assert (=> bs!402082 m!2122343))

(declare-fun m!2122457 () Bool)

(assert (=> bs!402082 m!2122457))

(declare-fun m!2122459 () Bool)

(assert (=> bs!402082 m!2122459))

(assert (=> b!1717536 d!526802))

(declare-fun d!526804 () Bool)

(declare-fun fromListB!1053 (List!18847) BalanceConc!12434)

(assert (=> d!526804 (= (seqFromList!2297 (originalCharacters!4137 (_1!10641 lt!656462))) (fromListB!1053 (originalCharacters!4137 (_1!10641 lt!656462))))))

(declare-fun bs!402083 () Bool)

(assert (= bs!402083 d!526804))

(declare-fun m!2122461 () Bool)

(assert (=> bs!402083 m!2122461))

(assert (=> b!1717536 d!526804))

(declare-fun d!526806 () Bool)

(assert (=> d!526806 (= (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))

(declare-fun b_lambda!54337 () Bool)

(assert (=> (not b_lambda!54337) (not d!526806)))

(assert (=> d!526806 t!159006))

(declare-fun b_and!124973 () Bool)

(assert (= b_and!124967 (and (=> t!159006 result!122096) b_and!124973)))

(assert (=> d!526806 t!159008))

(declare-fun b_and!124975 () Bool)

(assert (= b_and!124969 (and (=> t!159008 result!122100) b_and!124975)))

(assert (=> d!526806 t!159010))

(declare-fun b_and!124977 () Bool)

(assert (= b_and!124971 (and (=> t!159010 result!122102) b_and!124977)))

(assert (=> d!526806 m!2122259))

(assert (=> b!1717536 d!526806))

(declare-fun d!526808 () Bool)

(assert (=> d!526808 (= (isEmpty!11805 (_2!10641 lt!656455)) ((_ is Nil!18777) (_2!10641 lt!656455)))))

(assert (=> b!1717535 d!526808))

(declare-fun d!526810 () Bool)

(declare-fun c!281227 () Bool)

(assert (=> d!526810 (= c!281227 ((_ is Node!6245) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))))

(declare-fun e!1098535 () Bool)

(assert (=> d!526810 (= (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))) e!1098535)))

(declare-fun b!1717633 () Bool)

(declare-fun inv!24238 (Conc!6245) Bool)

(assert (=> b!1717633 (= e!1098535 (inv!24238 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))))

(declare-fun b!1717634 () Bool)

(declare-fun e!1098536 () Bool)

(assert (=> b!1717634 (= e!1098535 e!1098536)))

(declare-fun res!770342 () Bool)

(assert (=> b!1717634 (= res!770342 (not ((_ is Leaf!9127) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))))))

(assert (=> b!1717634 (=> res!770342 e!1098536)))

(declare-fun b!1717635 () Bool)

(declare-fun inv!24239 (Conc!6245) Bool)

(assert (=> b!1717635 (= e!1098536 (inv!24239 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))))

(assert (= (and d!526810 c!281227) b!1717633))

(assert (= (and d!526810 (not c!281227)) b!1717634))

(assert (= (and b!1717634 (not res!770342)) b!1717635))

(declare-fun m!2122463 () Bool)

(assert (=> b!1717633 m!2122463))

(declare-fun m!2122465 () Bool)

(assert (=> b!1717635 m!2122465))

(assert (=> b!1717561 d!526810))

(declare-fun d!526812 () Bool)

(assert (=> d!526812 (= (isEmpty!11805 suffix!1421) ((_ is Nil!18777) suffix!1421))))

(assert (=> b!1717518 d!526812))

(declare-fun d!526814 () Bool)

(declare-fun isBalanced!1953 (Conc!6245) Bool)

(assert (=> d!526814 (= (inv!24237 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))) (isBalanced!1953 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))))

(declare-fun bs!402084 () Bool)

(assert (= bs!402084 d!526814))

(declare-fun m!2122467 () Bool)

(assert (=> bs!402084 m!2122467))

(assert (=> tb!101601 d!526814))

(declare-fun d!526816 () Bool)

(assert (=> d!526816 (= (inv!24229 (tag!3627 rule!422)) (= (mod (str.len (value!104377 (tag!3627 rule!422))) 2) 0))))

(assert (=> b!1717539 d!526816))

(declare-fun d!526818 () Bool)

(declare-fun res!770345 () Bool)

(declare-fun e!1098539 () Bool)

(assert (=> d!526818 (=> (not res!770345) (not e!1098539))))

(declare-fun semiInverseModEq!1312 (Int Int) Bool)

(assert (=> d!526818 (= res!770345 (semiInverseModEq!1312 (toChars!4689 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 rule!422))))))

(assert (=> d!526818 (= (inv!24234 (transformation!3323 rule!422)) e!1098539)))

(declare-fun b!1717638 () Bool)

(declare-fun equivClasses!1253 (Int Int) Bool)

(assert (=> b!1717638 (= e!1098539 (equivClasses!1253 (toChars!4689 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 rule!422))))))

(assert (= (and d!526818 res!770345) b!1717638))

(declare-fun m!2122469 () Bool)

(assert (=> d!526818 m!2122469))

(declare-fun m!2122471 () Bool)

(assert (=> b!1717638 m!2122471))

(assert (=> b!1717539 d!526818))

(declare-fun b!1717667 () Bool)

(declare-fun e!1098558 () Bool)

(assert (=> b!1717667 (= e!1098558 (not (= (head!3870 (list!7584 (charsOf!1972 (_1!10641 lt!656462)))) (c!281216 (regex!3323 lt!656451)))))))

(declare-fun b!1717668 () Bool)

(declare-fun res!770365 () Bool)

(declare-fun e!1098556 () Bool)

(assert (=> b!1717668 (=> (not res!770365) (not e!1098556))))

(declare-fun tail!2565 (List!18847) List!18847)

(assert (=> b!1717668 (= res!770365 (isEmpty!11805 (tail!2565 (list!7584 (charsOf!1972 (_1!10641 lt!656462))))))))

(declare-fun b!1717669 () Bool)

(declare-fun res!770362 () Bool)

(declare-fun e!1098554 () Bool)

(assert (=> b!1717669 (=> res!770362 e!1098554)))

(assert (=> b!1717669 (= res!770362 e!1098556)))

(declare-fun res!770368 () Bool)

(assert (=> b!1717669 (=> (not res!770368) (not e!1098556))))

(declare-fun lt!656506 () Bool)

(assert (=> b!1717669 (= res!770368 lt!656506)))

(declare-fun b!1717670 () Bool)

(declare-fun e!1098559 () Bool)

(declare-fun e!1098555 () Bool)

(assert (=> b!1717670 (= e!1098559 e!1098555)))

(declare-fun c!281234 () Bool)

(assert (=> b!1717670 (= c!281234 ((_ is EmptyLang!4651) (regex!3323 lt!656451)))))

(declare-fun b!1717671 () Bool)

(assert (=> b!1717671 (= e!1098555 (not lt!656506))))

(declare-fun b!1717672 () Bool)

(declare-fun e!1098560 () Bool)

(assert (=> b!1717672 (= e!1098554 e!1098560)))

(declare-fun res!770367 () Bool)

(assert (=> b!1717672 (=> (not res!770367) (not e!1098560))))

(assert (=> b!1717672 (= res!770367 (not lt!656506))))

(declare-fun b!1717673 () Bool)

(declare-fun e!1098557 () Bool)

(declare-fun derivativeStep!1167 (Regex!4651 C!9476) Regex!4651)

(assert (=> b!1717673 (= e!1098557 (matchR!2125 (derivativeStep!1167 (regex!3323 lt!656451) (head!3870 (list!7584 (charsOf!1972 (_1!10641 lt!656462))))) (tail!2565 (list!7584 (charsOf!1972 (_1!10641 lt!656462))))))))

(declare-fun b!1717674 () Bool)

(declare-fun nullable!1399 (Regex!4651) Bool)

(assert (=> b!1717674 (= e!1098557 (nullable!1399 (regex!3323 lt!656451)))))

(declare-fun b!1717675 () Bool)

(declare-fun res!770363 () Bool)

(assert (=> b!1717675 (=> (not res!770363) (not e!1098556))))

(declare-fun call!109666 () Bool)

(assert (=> b!1717675 (= res!770363 (not call!109666))))

(declare-fun b!1717676 () Bool)

(assert (=> b!1717676 (= e!1098559 (= lt!656506 call!109666))))

(declare-fun b!1717677 () Bool)

(declare-fun res!770366 () Bool)

(assert (=> b!1717677 (=> res!770366 e!1098554)))

(assert (=> b!1717677 (= res!770366 (not ((_ is ElementMatch!4651) (regex!3323 lt!656451))))))

(assert (=> b!1717677 (= e!1098555 e!1098554)))

(declare-fun b!1717678 () Bool)

(assert (=> b!1717678 (= e!1098560 e!1098558)))

(declare-fun res!770369 () Bool)

(assert (=> b!1717678 (=> res!770369 e!1098558)))

(assert (=> b!1717678 (= res!770369 call!109666)))

(declare-fun b!1717679 () Bool)

(declare-fun res!770364 () Bool)

(assert (=> b!1717679 (=> res!770364 e!1098558)))

(assert (=> b!1717679 (= res!770364 (not (isEmpty!11805 (tail!2565 (list!7584 (charsOf!1972 (_1!10641 lt!656462)))))))))

(declare-fun d!526820 () Bool)

(assert (=> d!526820 e!1098559))

(declare-fun c!281236 () Bool)

(assert (=> d!526820 (= c!281236 ((_ is EmptyExpr!4651) (regex!3323 lt!656451)))))

(assert (=> d!526820 (= lt!656506 e!1098557)))

(declare-fun c!281235 () Bool)

(assert (=> d!526820 (= c!281235 (isEmpty!11805 (list!7584 (charsOf!1972 (_1!10641 lt!656462)))))))

(declare-fun validRegex!1873 (Regex!4651) Bool)

(assert (=> d!526820 (validRegex!1873 (regex!3323 lt!656451))))

(assert (=> d!526820 (= (matchR!2125 (regex!3323 lt!656451) (list!7584 (charsOf!1972 (_1!10641 lt!656462)))) lt!656506)))

(declare-fun bm!109661 () Bool)

(assert (=> bm!109661 (= call!109666 (isEmpty!11805 (list!7584 (charsOf!1972 (_1!10641 lt!656462)))))))

(declare-fun b!1717680 () Bool)

(assert (=> b!1717680 (= e!1098556 (= (head!3870 (list!7584 (charsOf!1972 (_1!10641 lt!656462)))) (c!281216 (regex!3323 lt!656451))))))

(assert (= (and d!526820 c!281235) b!1717674))

(assert (= (and d!526820 (not c!281235)) b!1717673))

(assert (= (and d!526820 c!281236) b!1717676))

(assert (= (and d!526820 (not c!281236)) b!1717670))

(assert (= (and b!1717670 c!281234) b!1717671))

(assert (= (and b!1717670 (not c!281234)) b!1717677))

(assert (= (and b!1717677 (not res!770366)) b!1717669))

(assert (= (and b!1717669 res!770368) b!1717675))

(assert (= (and b!1717675 res!770363) b!1717668))

(assert (= (and b!1717668 res!770365) b!1717680))

(assert (= (and b!1717669 (not res!770362)) b!1717672))

(assert (= (and b!1717672 res!770367) b!1717678))

(assert (= (and b!1717678 (not res!770369)) b!1717679))

(assert (= (and b!1717679 (not res!770364)) b!1717667))

(assert (= (or b!1717676 b!1717675 b!1717678) bm!109661))

(assert (=> b!1717673 m!2122301))

(declare-fun m!2122473 () Bool)

(assert (=> b!1717673 m!2122473))

(assert (=> b!1717673 m!2122473))

(declare-fun m!2122475 () Bool)

(assert (=> b!1717673 m!2122475))

(assert (=> b!1717673 m!2122301))

(declare-fun m!2122477 () Bool)

(assert (=> b!1717673 m!2122477))

(assert (=> b!1717673 m!2122475))

(assert (=> b!1717673 m!2122477))

(declare-fun m!2122479 () Bool)

(assert (=> b!1717673 m!2122479))

(assert (=> b!1717680 m!2122301))

(assert (=> b!1717680 m!2122473))

(declare-fun m!2122481 () Bool)

(assert (=> b!1717674 m!2122481))

(assert (=> b!1717668 m!2122301))

(assert (=> b!1717668 m!2122477))

(assert (=> b!1717668 m!2122477))

(declare-fun m!2122483 () Bool)

(assert (=> b!1717668 m!2122483))

(assert (=> d!526820 m!2122301))

(declare-fun m!2122485 () Bool)

(assert (=> d!526820 m!2122485))

(declare-fun m!2122487 () Bool)

(assert (=> d!526820 m!2122487))

(assert (=> b!1717679 m!2122301))

(assert (=> b!1717679 m!2122477))

(assert (=> b!1717679 m!2122477))

(assert (=> b!1717679 m!2122483))

(assert (=> bm!109661 m!2122301))

(assert (=> bm!109661 m!2122485))

(assert (=> b!1717667 m!2122301))

(assert (=> b!1717667 m!2122473))

(assert (=> b!1717537 d!526820))

(declare-fun d!526822 () Bool)

(declare-fun list!7587 (Conc!6245) List!18847)

(assert (=> d!526822 (= (list!7584 (charsOf!1972 (_1!10641 lt!656462))) (list!7587 (c!281217 (charsOf!1972 (_1!10641 lt!656462)))))))

(declare-fun bs!402085 () Bool)

(assert (= bs!402085 d!526822))

(declare-fun m!2122489 () Bool)

(assert (=> bs!402085 m!2122489))

(assert (=> b!1717537 d!526822))

(declare-fun d!526824 () Bool)

(declare-fun lt!656509 () BalanceConc!12434)

(assert (=> d!526824 (= (list!7584 lt!656509) (originalCharacters!4137 (_1!10641 lt!656462)))))

(assert (=> d!526824 (= lt!656509 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))

(assert (=> d!526824 (= (charsOf!1972 (_1!10641 lt!656462)) lt!656509)))

(declare-fun b_lambda!54339 () Bool)

(assert (=> (not b_lambda!54339) (not d!526824)))

(assert (=> d!526824 t!159012))

(declare-fun b_and!124979 () Bool)

(assert (= b_and!124955 (and (=> t!159012 result!122104) b_and!124979)))

(assert (=> d!526824 t!159014))

(declare-fun b_and!124981 () Bool)

(assert (= b_and!124957 (and (=> t!159014 result!122106) b_and!124981)))

(assert (=> d!526824 t!159016))

(declare-fun b_and!124983 () Bool)

(assert (= b_and!124959 (and (=> t!159016 result!122108) b_and!124983)))

(declare-fun m!2122491 () Bool)

(assert (=> d!526824 m!2122491))

(assert (=> d!526824 m!2122249))

(assert (=> b!1717537 d!526824))

(declare-fun d!526826 () Bool)

(assert (=> d!526826 (= (get!5549 lt!656454) (v!25067 lt!656454))))

(assert (=> b!1717537 d!526826))

(declare-fun d!526828 () Bool)

(assert (=> d!526828 (= (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) (seqFromList!2297 lt!656463)) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (seqFromList!2297 lt!656463)))))

(declare-fun b_lambda!54341 () Bool)

(assert (=> (not b_lambda!54341) (not d!526828)))

(declare-fun tb!101613 () Bool)

(declare-fun t!159027 () Bool)

(assert (=> (and b!1717540 (= (toValue!4830 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159027) tb!101613))

(declare-fun result!122116 () Bool)

(assert (=> tb!101613 (= result!122116 (inv!21 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (seqFromList!2297 lt!656463))))))

(declare-fun m!2122493 () Bool)

(assert (=> tb!101613 m!2122493))

(assert (=> d!526828 t!159027))

(declare-fun b_and!124985 () Bool)

(assert (= b_and!124973 (and (=> t!159027 result!122116) b_and!124985)))

(declare-fun t!159029 () Bool)

(declare-fun tb!101615 () Bool)

(assert (=> (and b!1717545 (= (toValue!4830 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159029) tb!101615))

(declare-fun result!122118 () Bool)

(assert (= result!122118 result!122116))

(assert (=> d!526828 t!159029))

(declare-fun b_and!124987 () Bool)

(assert (= b_and!124975 (and (=> t!159029 result!122118) b_and!124987)))

(declare-fun tb!101617 () Bool)

(declare-fun t!159031 () Bool)

(assert (=> (and b!1717542 (= (toValue!4830 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159031) tb!101617))

(declare-fun result!122120 () Bool)

(assert (= result!122120 result!122116))

(assert (=> d!526828 t!159031))

(declare-fun b_and!124989 () Bool)

(assert (= b_and!124977 (and (=> t!159031 result!122120) b_and!124989)))

(assert (=> d!526828 m!2122357))

(declare-fun m!2122495 () Bool)

(assert (=> d!526828 m!2122495))

(assert (=> b!1717538 d!526828))

(declare-fun d!526830 () Bool)

(declare-fun e!1098587 () Bool)

(assert (=> d!526830 e!1098587))

(declare-fun res!770404 () Bool)

(assert (=> d!526830 (=> res!770404 e!1098587)))

(declare-fun lt!656583 () Option!3670)

(declare-fun isEmpty!11809 (Option!3670) Bool)

(assert (=> d!526830 (= res!770404 (isEmpty!11809 lt!656583))))

(declare-fun e!1098590 () Option!3670)

(assert (=> d!526830 (= lt!656583 e!1098590)))

(declare-fun c!281244 () Bool)

(declare-datatypes ((tuple2!18482 0))(
  ( (tuple2!18483 (_1!10643 List!18847) (_2!10643 List!18847)) )
))
(declare-fun lt!656584 () tuple2!18482)

(assert (=> d!526830 (= c!281244 (isEmpty!11805 (_1!10643 lt!656584)))))

(declare-fun findLongestMatch!317 (Regex!4651 List!18847) tuple2!18482)

(assert (=> d!526830 (= lt!656584 (findLongestMatch!317 (regex!3323 (rule!5263 (_1!10641 lt!656462))) lt!656469))))

(assert (=> d!526830 (ruleValid!822 thiss!24550 (rule!5263 (_1!10641 lt!656462)))))

(assert (=> d!526830 (= (maxPrefixOneRule!882 thiss!24550 (rule!5263 (_1!10641 lt!656462)) lt!656469) lt!656583)))

(declare-fun b!1717729 () Bool)

(declare-fun res!770410 () Bool)

(declare-fun e!1098588 () Bool)

(assert (=> b!1717729 (=> (not res!770410) (not e!1098588))))

(assert (=> b!1717729 (= res!770410 (= (value!104378 (_1!10641 (get!5550 lt!656583))) (apply!5128 (transformation!3323 (rule!5263 (_1!10641 (get!5550 lt!656583)))) (seqFromList!2297 (originalCharacters!4137 (_1!10641 (get!5550 lt!656583)))))))))

(declare-fun b!1717730 () Bool)

(declare-fun e!1098589 () Bool)

(declare-fun findLongestMatchInner!390 (Regex!4651 List!18847 Int List!18847 List!18847 Int) tuple2!18482)

(assert (=> b!1717730 (= e!1098589 (matchR!2125 (regex!3323 (rule!5263 (_1!10641 lt!656462))) (_1!10643 (findLongestMatchInner!390 (regex!3323 (rule!5263 (_1!10641 lt!656462))) Nil!18777 (size!14922 Nil!18777) lt!656469 lt!656469 (size!14922 lt!656469)))))))

(declare-fun b!1717731 () Bool)

(assert (=> b!1717731 (= e!1098590 (Some!3669 (tuple2!18479 (Token!6213 (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) (seqFromList!2297 (_1!10643 lt!656584))) (rule!5263 (_1!10641 lt!656462)) (size!14921 (seqFromList!2297 (_1!10643 lt!656584))) (_1!10643 lt!656584)) (_2!10643 lt!656584))))))

(declare-fun lt!656586 () Unit!32611)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!374 (Regex!4651 List!18847) Unit!32611)

(assert (=> b!1717731 (= lt!656586 (longestMatchIsAcceptedByMatchOrIsEmpty!374 (regex!3323 (rule!5263 (_1!10641 lt!656462))) lt!656469))))

(declare-fun res!770408 () Bool)

(assert (=> b!1717731 (= res!770408 (isEmpty!11805 (_1!10643 (findLongestMatchInner!390 (regex!3323 (rule!5263 (_1!10641 lt!656462))) Nil!18777 (size!14922 Nil!18777) lt!656469 lt!656469 (size!14922 lt!656469)))))))

(assert (=> b!1717731 (=> res!770408 e!1098589)))

(assert (=> b!1717731 e!1098589))

(declare-fun lt!656582 () Unit!32611)

(assert (=> b!1717731 (= lt!656582 lt!656586)))

(declare-fun lt!656585 () Unit!32611)

(assert (=> b!1717731 (= lt!656585 (lemmaSemiInverse!469 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) (seqFromList!2297 (_1!10643 lt!656584))))))

(declare-fun b!1717732 () Bool)

(assert (=> b!1717732 (= e!1098587 e!1098588)))

(declare-fun res!770407 () Bool)

(assert (=> b!1717732 (=> (not res!770407) (not e!1098588))))

(assert (=> b!1717732 (= res!770407 (matchR!2125 (regex!3323 (rule!5263 (_1!10641 lt!656462))) (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656583))))))))

(declare-fun b!1717733 () Bool)

(declare-fun res!770409 () Bool)

(assert (=> b!1717733 (=> (not res!770409) (not e!1098588))))

(assert (=> b!1717733 (= res!770409 (= (++!5148 (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656583)))) (_2!10641 (get!5550 lt!656583))) lt!656469))))

(declare-fun b!1717734 () Bool)

(assert (=> b!1717734 (= e!1098588 (= (size!14920 (_1!10641 (get!5550 lt!656583))) (size!14922 (originalCharacters!4137 (_1!10641 (get!5550 lt!656583))))))))

(declare-fun b!1717735 () Bool)

(assert (=> b!1717735 (= e!1098590 None!3669)))

(declare-fun b!1717736 () Bool)

(declare-fun res!770406 () Bool)

(assert (=> b!1717736 (=> (not res!770406) (not e!1098588))))

(assert (=> b!1717736 (= res!770406 (< (size!14922 (_2!10641 (get!5550 lt!656583))) (size!14922 lt!656469)))))

(declare-fun b!1717737 () Bool)

(declare-fun res!770405 () Bool)

(assert (=> b!1717737 (=> (not res!770405) (not e!1098588))))

(assert (=> b!1717737 (= res!770405 (= (rule!5263 (_1!10641 (get!5550 lt!656583))) (rule!5263 (_1!10641 lt!656462))))))

(assert (= (and d!526830 c!281244) b!1717735))

(assert (= (and d!526830 (not c!281244)) b!1717731))

(assert (= (and b!1717731 (not res!770408)) b!1717730))

(assert (= (and d!526830 (not res!770404)) b!1717732))

(assert (= (and b!1717732 res!770407) b!1717733))

(assert (= (and b!1717733 res!770409) b!1717736))

(assert (= (and b!1717736 res!770406) b!1717737))

(assert (= (and b!1717737 res!770405) b!1717729))

(assert (= (and b!1717729 res!770410) b!1717734))

(declare-fun m!2122579 () Bool)

(assert (=> b!1717730 m!2122579))

(assert (=> b!1717730 m!2122369))

(assert (=> b!1717730 m!2122579))

(assert (=> b!1717730 m!2122369))

(declare-fun m!2122581 () Bool)

(assert (=> b!1717730 m!2122581))

(declare-fun m!2122583 () Bool)

(assert (=> b!1717730 m!2122583))

(declare-fun m!2122585 () Bool)

(assert (=> b!1717733 m!2122585))

(declare-fun m!2122587 () Bool)

(assert (=> b!1717733 m!2122587))

(assert (=> b!1717733 m!2122587))

(declare-fun m!2122589 () Bool)

(assert (=> b!1717733 m!2122589))

(assert (=> b!1717733 m!2122589))

(declare-fun m!2122591 () Bool)

(assert (=> b!1717733 m!2122591))

(assert (=> b!1717729 m!2122585))

(declare-fun m!2122593 () Bool)

(assert (=> b!1717729 m!2122593))

(assert (=> b!1717729 m!2122593))

(declare-fun m!2122595 () Bool)

(assert (=> b!1717729 m!2122595))

(assert (=> b!1717736 m!2122585))

(declare-fun m!2122597 () Bool)

(assert (=> b!1717736 m!2122597))

(assert (=> b!1717736 m!2122369))

(declare-fun m!2122599 () Bool)

(assert (=> d!526830 m!2122599))

(declare-fun m!2122601 () Bool)

(assert (=> d!526830 m!2122601))

(declare-fun m!2122603 () Bool)

(assert (=> d!526830 m!2122603))

(declare-fun m!2122605 () Bool)

(assert (=> d!526830 m!2122605))

(assert (=> b!1717737 m!2122585))

(assert (=> b!1717731 m!2122579))

(declare-fun m!2122607 () Bool)

(assert (=> b!1717731 m!2122607))

(declare-fun m!2122609 () Bool)

(assert (=> b!1717731 m!2122609))

(assert (=> b!1717731 m!2122607))

(declare-fun m!2122611 () Bool)

(assert (=> b!1717731 m!2122611))

(declare-fun m!2122613 () Bool)

(assert (=> b!1717731 m!2122613))

(declare-fun m!2122615 () Bool)

(assert (=> b!1717731 m!2122615))

(assert (=> b!1717731 m!2122579))

(assert (=> b!1717731 m!2122369))

(assert (=> b!1717731 m!2122581))

(assert (=> b!1717731 m!2122607))

(assert (=> b!1717731 m!2122607))

(declare-fun m!2122617 () Bool)

(assert (=> b!1717731 m!2122617))

(assert (=> b!1717731 m!2122369))

(assert (=> b!1717732 m!2122585))

(assert (=> b!1717732 m!2122587))

(assert (=> b!1717732 m!2122587))

(assert (=> b!1717732 m!2122589))

(assert (=> b!1717732 m!2122589))

(declare-fun m!2122619 () Bool)

(assert (=> b!1717732 m!2122619))

(assert (=> b!1717734 m!2122585))

(declare-fun m!2122621 () Bool)

(assert (=> b!1717734 m!2122621))

(assert (=> b!1717538 d!526830))

(declare-fun d!526848 () Bool)

(assert (=> d!526848 (= (seqFromList!2297 lt!656463) (fromListB!1053 lt!656463))))

(declare-fun bs!402089 () Bool)

(assert (= bs!402089 d!526848))

(declare-fun m!2122627 () Bool)

(assert (=> bs!402089 m!2122627))

(assert (=> b!1717538 d!526848))

(declare-fun d!526850 () Bool)

(assert (=> d!526850 (= (maxPrefixOneRule!882 thiss!24550 (rule!5263 (_1!10641 lt!656462)) lt!656469) (Some!3669 (tuple2!18479 (Token!6213 (apply!5128 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) (seqFromList!2297 lt!656463)) (rule!5263 (_1!10641 lt!656462)) (size!14922 lt!656463) lt!656463) (_2!10641 lt!656462))))))

(declare-fun lt!656598 () Unit!32611)

(declare-fun choose!10431 (LexerInterface!2952 List!18848 List!18847 List!18847 List!18847 Rule!6446) Unit!32611)

(assert (=> d!526850 (= lt!656598 (choose!10431 thiss!24550 rules!3447 lt!656463 lt!656469 (_2!10641 lt!656462) (rule!5263 (_1!10641 lt!656462))))))

(assert (=> d!526850 (not (isEmpty!11806 rules!3447))))

(assert (=> d!526850 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!281 thiss!24550 rules!3447 lt!656463 lt!656469 (_2!10641 lt!656462) (rule!5263 (_1!10641 lt!656462))) lt!656598)))

(declare-fun bs!402090 () Bool)

(assert (= bs!402090 d!526850))

(declare-fun m!2122649 () Bool)

(assert (=> bs!402090 m!2122649))

(assert (=> bs!402090 m!2122371))

(assert (=> bs!402090 m!2122365))

(assert (=> bs!402090 m!2122357))

(assert (=> bs!402090 m!2122359))

(assert (=> bs!402090 m!2122357))

(assert (=> bs!402090 m!2122297))

(assert (=> b!1717538 d!526850))

(declare-fun d!526856 () Bool)

(declare-fun lt!656602 () List!18847)

(assert (=> d!526856 (= (++!5148 lt!656463 lt!656602) lt!656469)))

(declare-fun e!1098628 () List!18847)

(assert (=> d!526856 (= lt!656602 e!1098628)))

(declare-fun c!281260 () Bool)

(assert (=> d!526856 (= c!281260 ((_ is Cons!18777) lt!656463))))

(assert (=> d!526856 (>= (size!14922 lt!656469) (size!14922 lt!656463))))

(assert (=> d!526856 (= (getSuffix!758 lt!656469 lt!656463) lt!656602)))

(declare-fun b!1717805 () Bool)

(assert (=> b!1717805 (= e!1098628 (getSuffix!758 (tail!2565 lt!656469) (t!159018 lt!656463)))))

(declare-fun b!1717806 () Bool)

(assert (=> b!1717806 (= e!1098628 lt!656469)))

(assert (= (and d!526856 c!281260) b!1717805))

(assert (= (and d!526856 (not c!281260)) b!1717806))

(declare-fun m!2122667 () Bool)

(assert (=> d!526856 m!2122667))

(assert (=> d!526856 m!2122369))

(assert (=> d!526856 m!2122371))

(declare-fun m!2122669 () Bool)

(assert (=> b!1717805 m!2122669))

(assert (=> b!1717805 m!2122669))

(declare-fun m!2122671 () Bool)

(assert (=> b!1717805 m!2122671))

(assert (=> b!1717538 d!526856))

(declare-fun d!526860 () Bool)

(declare-fun lt!656605 () Int)

(assert (=> d!526860 (>= lt!656605 0)))

(declare-fun e!1098631 () Int)

(assert (=> d!526860 (= lt!656605 e!1098631)))

(declare-fun c!281263 () Bool)

(assert (=> d!526860 (= c!281263 ((_ is Nil!18777) lt!656463))))

(assert (=> d!526860 (= (size!14922 lt!656463) lt!656605)))

(declare-fun b!1717811 () Bool)

(assert (=> b!1717811 (= e!1098631 0)))

(declare-fun b!1717812 () Bool)

(assert (=> b!1717812 (= e!1098631 (+ 1 (size!14922 (t!159018 lt!656463))))))

(assert (= (and d!526860 c!281263) b!1717811))

(assert (= (and d!526860 (not c!281263)) b!1717812))

(declare-fun m!2122675 () Bool)

(assert (=> b!1717812 m!2122675))

(assert (=> b!1717538 d!526860))

(declare-fun d!526866 () Bool)

(assert (=> d!526866 (= (_2!10641 lt!656462) lt!656461)))

(declare-fun lt!656608 () Unit!32611)

(declare-fun choose!10432 (List!18847 List!18847 List!18847 List!18847 List!18847) Unit!32611)

(assert (=> d!526866 (= lt!656608 (choose!10432 lt!656463 (_2!10641 lt!656462) lt!656463 lt!656461 lt!656469))))

(assert (=> d!526866 (isPrefix!1564 lt!656463 lt!656469)))

(assert (=> d!526866 (= (lemmaSamePrefixThenSameSuffix!708 lt!656463 (_2!10641 lt!656462) lt!656463 lt!656461 lt!656469) lt!656608)))

(declare-fun bs!402092 () Bool)

(assert (= bs!402092 d!526866))

(declare-fun m!2122677 () Bool)

(assert (=> bs!402092 m!2122677))

(assert (=> bs!402092 m!2122353))

(assert (=> b!1717538 d!526866))

(declare-fun d!526868 () Bool)

(declare-fun lt!656609 () Int)

(assert (=> d!526868 (>= lt!656609 0)))

(declare-fun e!1098635 () Int)

(assert (=> d!526868 (= lt!656609 e!1098635)))

(declare-fun c!281267 () Bool)

(assert (=> d!526868 (= c!281267 ((_ is Nil!18777) lt!656469))))

(assert (=> d!526868 (= (size!14922 lt!656469) lt!656609)))

(declare-fun b!1717819 () Bool)

(assert (=> b!1717819 (= e!1098635 0)))

(declare-fun b!1717820 () Bool)

(assert (=> b!1717820 (= e!1098635 (+ 1 (size!14922 (t!159018 lt!656469))))))

(assert (= (and d!526868 c!281267) b!1717819))

(assert (= (and d!526868 (not c!281267)) b!1717820))

(declare-fun m!2122685 () Bool)

(assert (=> b!1717820 m!2122685))

(assert (=> b!1717538 d!526868))

(declare-fun d!526870 () Bool)

(declare-fun res!770449 () Bool)

(declare-fun e!1098638 () Bool)

(assert (=> d!526870 (=> (not res!770449) (not e!1098638))))

(declare-fun rulesValid!1239 (LexerInterface!2952 List!18848) Bool)

(assert (=> d!526870 (= res!770449 (rulesValid!1239 thiss!24550 rules!3447))))

(assert (=> d!526870 (= (rulesInvariant!2621 thiss!24550 rules!3447) e!1098638)))

(declare-fun b!1717823 () Bool)

(declare-datatypes ((List!18851 0))(
  ( (Nil!18781) (Cons!18781 (h!24182 String!21397) (t!159082 List!18851)) )
))
(declare-fun noDuplicateTag!1239 (LexerInterface!2952 List!18848 List!18851) Bool)

(assert (=> b!1717823 (= e!1098638 (noDuplicateTag!1239 thiss!24550 rules!3447 Nil!18781))))

(assert (= (and d!526870 res!770449) b!1717823))

(declare-fun m!2122693 () Bool)

(assert (=> d!526870 m!2122693))

(declare-fun m!2122695 () Bool)

(assert (=> b!1717823 m!2122695))

(assert (=> b!1717529 d!526870))

(declare-fun b!1717838 () Bool)

(declare-fun e!1098648 () Bool)

(declare-fun e!1098647 () Bool)

(assert (=> b!1717838 (= e!1098648 e!1098647)))

(declare-fun c!281274 () Bool)

(assert (=> b!1717838 (= c!281274 ((_ is IntegerValue!10240) (value!104378 token!523)))))

(declare-fun b!1717839 () Bool)

(declare-fun res!770454 () Bool)

(declare-fun e!1098649 () Bool)

(assert (=> b!1717839 (=> res!770454 e!1098649)))

(assert (=> b!1717839 (= res!770454 (not ((_ is IntegerValue!10241) (value!104378 token!523))))))

(assert (=> b!1717839 (= e!1098647 e!1098649)))

(declare-fun d!526874 () Bool)

(declare-fun c!281273 () Bool)

(assert (=> d!526874 (= c!281273 ((_ is IntegerValue!10239) (value!104378 token!523)))))

(assert (=> d!526874 (= (inv!21 (value!104378 token!523)) e!1098648)))

(declare-fun b!1717840 () Bool)

(declare-fun inv!16 (TokenValue!3413) Bool)

(assert (=> b!1717840 (= e!1098648 (inv!16 (value!104378 token!523)))))

(declare-fun b!1717841 () Bool)

(declare-fun inv!15 (TokenValue!3413) Bool)

(assert (=> b!1717841 (= e!1098649 (inv!15 (value!104378 token!523)))))

(declare-fun b!1717842 () Bool)

(declare-fun inv!17 (TokenValue!3413) Bool)

(assert (=> b!1717842 (= e!1098647 (inv!17 (value!104378 token!523)))))

(assert (= (and d!526874 c!281273) b!1717840))

(assert (= (and d!526874 (not c!281273)) b!1717838))

(assert (= (and b!1717838 c!281274) b!1717842))

(assert (= (and b!1717838 (not c!281274)) b!1717839))

(assert (= (and b!1717839 (not res!770454)) b!1717841))

(declare-fun m!2122713 () Bool)

(assert (=> b!1717840 m!2122713))

(declare-fun m!2122715 () Bool)

(assert (=> b!1717841 m!2122715))

(declare-fun m!2122717 () Bool)

(assert (=> b!1717842 m!2122717))

(assert (=> b!1717530 d!526874))

(declare-fun d!526884 () Bool)

(declare-fun res!770462 () Bool)

(declare-fun e!1098655 () Bool)

(assert (=> d!526884 (=> (not res!770462) (not e!1098655))))

(assert (=> d!526884 (= res!770462 (not (isEmpty!11805 (originalCharacters!4137 token!523))))))

(assert (=> d!526884 (= (inv!24235 token!523) e!1098655)))

(declare-fun b!1717850 () Bool)

(declare-fun res!770463 () Bool)

(assert (=> b!1717850 (=> (not res!770463) (not e!1098655))))

(assert (=> b!1717850 (= res!770463 (= (originalCharacters!4137 token!523) (list!7584 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (value!104378 token!523)))))))

(declare-fun b!1717851 () Bool)

(assert (=> b!1717851 (= e!1098655 (= (size!14920 token!523) (size!14922 (originalCharacters!4137 token!523))))))

(assert (= (and d!526884 res!770462) b!1717850))

(assert (= (and b!1717850 res!770463) b!1717851))

(declare-fun b_lambda!54347 () Bool)

(assert (=> (not b_lambda!54347) (not b!1717850)))

(declare-fun t!159039 () Bool)

(declare-fun tb!101625 () Bool)

(assert (=> (and b!1717540 (= (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toChars!4689 (transformation!3323 (rule!5263 token!523)))) t!159039) tb!101625))

(declare-fun b!1717852 () Bool)

(declare-fun e!1098656 () Bool)

(declare-fun tp!490578 () Bool)

(assert (=> b!1717852 (= e!1098656 (and (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (value!104378 token!523)))) tp!490578))))

(declare-fun result!122128 () Bool)

(assert (=> tb!101625 (= result!122128 (and (inv!24237 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (value!104378 token!523))) e!1098656))))

(assert (= tb!101625 b!1717852))

(declare-fun m!2122725 () Bool)

(assert (=> b!1717852 m!2122725))

(declare-fun m!2122727 () Bool)

(assert (=> tb!101625 m!2122727))

(assert (=> b!1717850 t!159039))

(declare-fun b_and!125003 () Bool)

(assert (= b_and!124979 (and (=> t!159039 result!122128) b_and!125003)))

(declare-fun tb!101627 () Bool)

(declare-fun t!159041 () Bool)

(assert (=> (and b!1717545 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 token!523)))) t!159041) tb!101627))

(declare-fun result!122130 () Bool)

(assert (= result!122130 result!122128))

(assert (=> b!1717850 t!159041))

(declare-fun b_and!125005 () Bool)

(assert (= b_and!124981 (and (=> t!159041 result!122130) b_and!125005)))

(declare-fun tb!101629 () Bool)

(declare-fun t!159043 () Bool)

(assert (=> (and b!1717542 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 token!523)))) t!159043) tb!101629))

(declare-fun result!122132 () Bool)

(assert (= result!122132 result!122128))

(assert (=> b!1717850 t!159043))

(declare-fun b_and!125007 () Bool)

(assert (= b_and!124983 (and (=> t!159043 result!122132) b_and!125007)))

(declare-fun m!2122729 () Bool)

(assert (=> d!526884 m!2122729))

(declare-fun m!2122731 () Bool)

(assert (=> b!1717850 m!2122731))

(assert (=> b!1717850 m!2122731))

(declare-fun m!2122733 () Bool)

(assert (=> b!1717850 m!2122733))

(declare-fun m!2122735 () Bool)

(assert (=> b!1717851 m!2122735))

(assert (=> start!168134 d!526884))

(declare-fun b!1717853 () Bool)

(declare-fun e!1098661 () Bool)

(assert (=> b!1717853 (= e!1098661 (not (= (head!3870 lt!656463) (c!281216 (regex!3323 (rule!5263 (_1!10641 lt!656462)))))))))

(declare-fun b!1717854 () Bool)

(declare-fun res!770467 () Bool)

(declare-fun e!1098659 () Bool)

(assert (=> b!1717854 (=> (not res!770467) (not e!1098659))))

(assert (=> b!1717854 (= res!770467 (isEmpty!11805 (tail!2565 lt!656463)))))

(declare-fun b!1717855 () Bool)

(declare-fun res!770464 () Bool)

(declare-fun e!1098657 () Bool)

(assert (=> b!1717855 (=> res!770464 e!1098657)))

(assert (=> b!1717855 (= res!770464 e!1098659)))

(declare-fun res!770470 () Bool)

(assert (=> b!1717855 (=> (not res!770470) (not e!1098659))))

(declare-fun lt!656614 () Bool)

(assert (=> b!1717855 (= res!770470 lt!656614)))

(declare-fun b!1717856 () Bool)

(declare-fun e!1098662 () Bool)

(declare-fun e!1098658 () Bool)

(assert (=> b!1717856 (= e!1098662 e!1098658)))

(declare-fun c!281275 () Bool)

(assert (=> b!1717856 (= c!281275 ((_ is EmptyLang!4651) (regex!3323 (rule!5263 (_1!10641 lt!656462)))))))

(declare-fun b!1717857 () Bool)

(assert (=> b!1717857 (= e!1098658 (not lt!656614))))

(declare-fun b!1717858 () Bool)

(declare-fun e!1098663 () Bool)

(assert (=> b!1717858 (= e!1098657 e!1098663)))

(declare-fun res!770469 () Bool)

(assert (=> b!1717858 (=> (not res!770469) (not e!1098663))))

(assert (=> b!1717858 (= res!770469 (not lt!656614))))

(declare-fun b!1717859 () Bool)

(declare-fun e!1098660 () Bool)

(assert (=> b!1717859 (= e!1098660 (matchR!2125 (derivativeStep!1167 (regex!3323 (rule!5263 (_1!10641 lt!656462))) (head!3870 lt!656463)) (tail!2565 lt!656463)))))

(declare-fun b!1717860 () Bool)

(assert (=> b!1717860 (= e!1098660 (nullable!1399 (regex!3323 (rule!5263 (_1!10641 lt!656462)))))))

(declare-fun b!1717861 () Bool)

(declare-fun res!770465 () Bool)

(assert (=> b!1717861 (=> (not res!770465) (not e!1098659))))

(declare-fun call!109670 () Bool)

(assert (=> b!1717861 (= res!770465 (not call!109670))))

(declare-fun b!1717862 () Bool)

(assert (=> b!1717862 (= e!1098662 (= lt!656614 call!109670))))

(declare-fun b!1717863 () Bool)

(declare-fun res!770468 () Bool)

(assert (=> b!1717863 (=> res!770468 e!1098657)))

(assert (=> b!1717863 (= res!770468 (not ((_ is ElementMatch!4651) (regex!3323 (rule!5263 (_1!10641 lt!656462))))))))

(assert (=> b!1717863 (= e!1098658 e!1098657)))

(declare-fun b!1717864 () Bool)

(assert (=> b!1717864 (= e!1098663 e!1098661)))

(declare-fun res!770471 () Bool)

(assert (=> b!1717864 (=> res!770471 e!1098661)))

(assert (=> b!1717864 (= res!770471 call!109670)))

(declare-fun b!1717865 () Bool)

(declare-fun res!770466 () Bool)

(assert (=> b!1717865 (=> res!770466 e!1098661)))

(assert (=> b!1717865 (= res!770466 (not (isEmpty!11805 (tail!2565 lt!656463))))))

(declare-fun d!526890 () Bool)

(assert (=> d!526890 e!1098662))

(declare-fun c!281277 () Bool)

(assert (=> d!526890 (= c!281277 ((_ is EmptyExpr!4651) (regex!3323 (rule!5263 (_1!10641 lt!656462)))))))

(assert (=> d!526890 (= lt!656614 e!1098660)))

(declare-fun c!281276 () Bool)

(assert (=> d!526890 (= c!281276 (isEmpty!11805 lt!656463))))

(assert (=> d!526890 (validRegex!1873 (regex!3323 (rule!5263 (_1!10641 lt!656462))))))

(assert (=> d!526890 (= (matchR!2125 (regex!3323 (rule!5263 (_1!10641 lt!656462))) lt!656463) lt!656614)))

(declare-fun bm!109665 () Bool)

(assert (=> bm!109665 (= call!109670 (isEmpty!11805 lt!656463))))

(declare-fun b!1717866 () Bool)

(assert (=> b!1717866 (= e!1098659 (= (head!3870 lt!656463) (c!281216 (regex!3323 (rule!5263 (_1!10641 lt!656462))))))))

(assert (= (and d!526890 c!281276) b!1717860))

(assert (= (and d!526890 (not c!281276)) b!1717859))

(assert (= (and d!526890 c!281277) b!1717862))

(assert (= (and d!526890 (not c!281277)) b!1717856))

(assert (= (and b!1717856 c!281275) b!1717857))

(assert (= (and b!1717856 (not c!281275)) b!1717863))

(assert (= (and b!1717863 (not res!770468)) b!1717855))

(assert (= (and b!1717855 res!770470) b!1717861))

(assert (= (and b!1717861 res!770465) b!1717854))

(assert (= (and b!1717854 res!770467) b!1717866))

(assert (= (and b!1717855 (not res!770464)) b!1717858))

(assert (= (and b!1717858 res!770469) b!1717864))

(assert (= (and b!1717864 (not res!770471)) b!1717865))

(assert (= (and b!1717865 (not res!770466)) b!1717853))

(assert (= (or b!1717862 b!1717861 b!1717864) bm!109665))

(declare-fun m!2122737 () Bool)

(assert (=> b!1717859 m!2122737))

(assert (=> b!1717859 m!2122737))

(declare-fun m!2122739 () Bool)

(assert (=> b!1717859 m!2122739))

(declare-fun m!2122741 () Bool)

(assert (=> b!1717859 m!2122741))

(assert (=> b!1717859 m!2122739))

(assert (=> b!1717859 m!2122741))

(declare-fun m!2122743 () Bool)

(assert (=> b!1717859 m!2122743))

(assert (=> b!1717866 m!2122737))

(declare-fun m!2122745 () Bool)

(assert (=> b!1717860 m!2122745))

(assert (=> b!1717854 m!2122741))

(assert (=> b!1717854 m!2122741))

(declare-fun m!2122747 () Bool)

(assert (=> b!1717854 m!2122747))

(declare-fun m!2122749 () Bool)

(assert (=> d!526890 m!2122749))

(declare-fun m!2122751 () Bool)

(assert (=> d!526890 m!2122751))

(assert (=> b!1717865 m!2122741))

(assert (=> b!1717865 m!2122741))

(assert (=> b!1717865 m!2122747))

(assert (=> bm!109665 m!2122749))

(assert (=> b!1717853 m!2122737))

(assert (=> b!1717534 d!526890))

(declare-fun b!1717870 () Bool)

(declare-fun e!1098671 () Bool)

(assert (=> b!1717870 (= e!1098671 (not (= (head!3870 lt!656464) (c!281216 (regex!3323 rule!422)))))))

(declare-fun b!1717871 () Bool)

(declare-fun res!770478 () Bool)

(declare-fun e!1098668 () Bool)

(assert (=> b!1717871 (=> (not res!770478) (not e!1098668))))

(assert (=> b!1717871 (= res!770478 (isEmpty!11805 (tail!2565 lt!656464)))))

(declare-fun b!1717872 () Bool)

(declare-fun res!770474 () Bool)

(declare-fun e!1098666 () Bool)

(assert (=> b!1717872 (=> res!770474 e!1098666)))

(assert (=> b!1717872 (= res!770474 e!1098668)))

(declare-fun res!770481 () Bool)

(assert (=> b!1717872 (=> (not res!770481) (not e!1098668))))

(declare-fun lt!656615 () Bool)

(assert (=> b!1717872 (= res!770481 lt!656615)))

(declare-fun b!1717873 () Bool)

(declare-fun e!1098672 () Bool)

(declare-fun e!1098667 () Bool)

(assert (=> b!1717873 (= e!1098672 e!1098667)))

(declare-fun c!281278 () Bool)

(assert (=> b!1717873 (= c!281278 ((_ is EmptyLang!4651) (regex!3323 rule!422)))))

(declare-fun b!1717874 () Bool)

(assert (=> b!1717874 (= e!1098667 (not lt!656615))))

(declare-fun b!1717875 () Bool)

(declare-fun e!1098673 () Bool)

(assert (=> b!1717875 (= e!1098666 e!1098673)))

(declare-fun res!770480 () Bool)

(assert (=> b!1717875 (=> (not res!770480) (not e!1098673))))

(assert (=> b!1717875 (= res!770480 (not lt!656615))))

(declare-fun b!1717876 () Bool)

(declare-fun e!1098670 () Bool)

(assert (=> b!1717876 (= e!1098670 (matchR!2125 (derivativeStep!1167 (regex!3323 rule!422) (head!3870 lt!656464)) (tail!2565 lt!656464)))))

(declare-fun b!1717877 () Bool)

(assert (=> b!1717877 (= e!1098670 (nullable!1399 (regex!3323 rule!422)))))

(declare-fun b!1717878 () Bool)

(declare-fun res!770475 () Bool)

(assert (=> b!1717878 (=> (not res!770475) (not e!1098668))))

(declare-fun call!109671 () Bool)

(assert (=> b!1717878 (= res!770475 (not call!109671))))

(declare-fun b!1717879 () Bool)

(assert (=> b!1717879 (= e!1098672 (= lt!656615 call!109671))))

(declare-fun b!1717880 () Bool)

(declare-fun res!770479 () Bool)

(assert (=> b!1717880 (=> res!770479 e!1098666)))

(assert (=> b!1717880 (= res!770479 (not ((_ is ElementMatch!4651) (regex!3323 rule!422))))))

(assert (=> b!1717880 (= e!1098667 e!1098666)))

(declare-fun b!1717881 () Bool)

(assert (=> b!1717881 (= e!1098673 e!1098671)))

(declare-fun res!770482 () Bool)

(assert (=> b!1717881 (=> res!770482 e!1098671)))

(assert (=> b!1717881 (= res!770482 call!109671)))

(declare-fun b!1717882 () Bool)

(declare-fun res!770477 () Bool)

(assert (=> b!1717882 (=> res!770477 e!1098671)))

(assert (=> b!1717882 (= res!770477 (not (isEmpty!11805 (tail!2565 lt!656464))))))

(declare-fun d!526892 () Bool)

(assert (=> d!526892 e!1098672))

(declare-fun c!281280 () Bool)

(assert (=> d!526892 (= c!281280 ((_ is EmptyExpr!4651) (regex!3323 rule!422)))))

(assert (=> d!526892 (= lt!656615 e!1098670)))

(declare-fun c!281279 () Bool)

(assert (=> d!526892 (= c!281279 (isEmpty!11805 lt!656464))))

(assert (=> d!526892 (validRegex!1873 (regex!3323 rule!422))))

(assert (=> d!526892 (= (matchR!2125 (regex!3323 rule!422) lt!656464) lt!656615)))

(declare-fun bm!109666 () Bool)

(assert (=> bm!109666 (= call!109671 (isEmpty!11805 lt!656464))))

(declare-fun b!1717883 () Bool)

(assert (=> b!1717883 (= e!1098668 (= (head!3870 lt!656464) (c!281216 (regex!3323 rule!422))))))

(assert (= (and d!526892 c!281279) b!1717877))

(assert (= (and d!526892 (not c!281279)) b!1717876))

(assert (= (and d!526892 c!281280) b!1717879))

(assert (= (and d!526892 (not c!281280)) b!1717873))

(assert (= (and b!1717873 c!281278) b!1717874))

(assert (= (and b!1717873 (not c!281278)) b!1717880))

(assert (= (and b!1717880 (not res!770479)) b!1717872))

(assert (= (and b!1717872 res!770481) b!1717878))

(assert (= (and b!1717878 res!770475) b!1717871))

(assert (= (and b!1717871 res!770478) b!1717883))

(assert (= (and b!1717872 (not res!770474)) b!1717875))

(assert (= (and b!1717875 res!770480) b!1717881))

(assert (= (and b!1717881 (not res!770482)) b!1717882))

(assert (= (and b!1717882 (not res!770477)) b!1717870))

(assert (= (or b!1717879 b!1717878 b!1717881) bm!109666))

(declare-fun m!2122757 () Bool)

(assert (=> b!1717876 m!2122757))

(assert (=> b!1717876 m!2122757))

(declare-fun m!2122759 () Bool)

(assert (=> b!1717876 m!2122759))

(declare-fun m!2122761 () Bool)

(assert (=> b!1717876 m!2122761))

(assert (=> b!1717876 m!2122759))

(assert (=> b!1717876 m!2122761))

(declare-fun m!2122763 () Bool)

(assert (=> b!1717876 m!2122763))

(assert (=> b!1717883 m!2122757))

(declare-fun m!2122765 () Bool)

(assert (=> b!1717877 m!2122765))

(assert (=> b!1717871 m!2122761))

(assert (=> b!1717871 m!2122761))

(declare-fun m!2122767 () Bool)

(assert (=> b!1717871 m!2122767))

(declare-fun m!2122769 () Bool)

(assert (=> d!526892 m!2122769))

(declare-fun m!2122771 () Bool)

(assert (=> d!526892 m!2122771))

(assert (=> b!1717882 m!2122761))

(assert (=> b!1717882 m!2122761))

(assert (=> b!1717882 m!2122767))

(assert (=> bm!109666 m!2122769))

(assert (=> b!1717870 m!2122757))

(assert (=> b!1717532 d!526892))

(declare-fun d!526896 () Bool)

(declare-fun res!770489 () Bool)

(declare-fun e!1098682 () Bool)

(assert (=> d!526896 (=> (not res!770489) (not e!1098682))))

(assert (=> d!526896 (= res!770489 (validRegex!1873 (regex!3323 rule!422)))))

(assert (=> d!526896 (= (ruleValid!822 thiss!24550 rule!422) e!1098682)))

(declare-fun b!1717898 () Bool)

(declare-fun res!770490 () Bool)

(assert (=> b!1717898 (=> (not res!770490) (not e!1098682))))

(assert (=> b!1717898 (= res!770490 (not (nullable!1399 (regex!3323 rule!422))))))

(declare-fun b!1717899 () Bool)

(assert (=> b!1717899 (= e!1098682 (not (= (tag!3627 rule!422) (String!21398 ""))))))

(assert (= (and d!526896 res!770489) b!1717898))

(assert (= (and b!1717898 res!770490) b!1717899))

(assert (=> d!526896 m!2122771))

(assert (=> b!1717898 m!2122765))

(assert (=> b!1717532 d!526896))

(declare-fun d!526898 () Bool)

(assert (=> d!526898 (ruleValid!822 thiss!24550 rule!422)))

(declare-fun lt!656618 () Unit!32611)

(declare-fun choose!10433 (LexerInterface!2952 Rule!6446 List!18848) Unit!32611)

(assert (=> d!526898 (= lt!656618 (choose!10433 thiss!24550 rule!422 rules!3447))))

(assert (=> d!526898 (contains!3345 rules!3447 rule!422)))

(assert (=> d!526898 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!346 thiss!24550 rule!422 rules!3447) lt!656618)))

(declare-fun bs!402095 () Bool)

(assert (= bs!402095 d!526898))

(assert (=> bs!402095 m!2122275))

(declare-fun m!2122779 () Bool)

(assert (=> bs!402095 m!2122779))

(assert (=> bs!402095 m!2122251))

(assert (=> b!1717532 d!526898))

(declare-fun d!526902 () Bool)

(assert (=> d!526902 (= (isEmpty!11806 rules!3447) ((_ is Nil!18778) rules!3447))))

(assert (=> b!1717525 d!526902))

(declare-fun d!526904 () Bool)

(declare-fun lt!656626 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2675 (List!18848) (InoxSet Rule!6446))

(assert (=> d!526904 (= lt!656626 (select (content!2675 rules!3447) rule!422))))

(declare-fun e!1098700 () Bool)

(assert (=> d!526904 (= lt!656626 e!1098700)))

(declare-fun res!770507 () Bool)

(assert (=> d!526904 (=> (not res!770507) (not e!1098700))))

(assert (=> d!526904 (= res!770507 ((_ is Cons!18778) rules!3447))))

(assert (=> d!526904 (= (contains!3345 rules!3447 rule!422) lt!656626)))

(declare-fun b!1717927 () Bool)

(declare-fun e!1098699 () Bool)

(assert (=> b!1717927 (= e!1098700 e!1098699)))

(declare-fun res!770506 () Bool)

(assert (=> b!1717927 (=> res!770506 e!1098699)))

(assert (=> b!1717927 (= res!770506 (= (h!24179 rules!3447) rule!422))))

(declare-fun b!1717928 () Bool)

(assert (=> b!1717928 (= e!1098699 (contains!3345 (t!159019 rules!3447) rule!422))))

(assert (= (and d!526904 res!770507) b!1717927))

(assert (= (and b!1717927 (not res!770506)) b!1717928))

(declare-fun m!2122787 () Bool)

(assert (=> d!526904 m!2122787))

(declare-fun m!2122789 () Bool)

(assert (=> d!526904 m!2122789))

(declare-fun m!2122791 () Bool)

(assert (=> b!1717928 m!2122791))

(assert (=> b!1717526 d!526904))

(declare-fun d!526910 () Bool)

(assert (=> d!526910 (= (inv!24229 (tag!3627 (h!24179 rules!3447))) (= (mod (str.len (value!104377 (tag!3627 (h!24179 rules!3447)))) 2) 0))))

(assert (=> b!1717524 d!526910))

(declare-fun d!526912 () Bool)

(declare-fun res!770508 () Bool)

(declare-fun e!1098701 () Bool)

(assert (=> d!526912 (=> (not res!770508) (not e!1098701))))

(assert (=> d!526912 (= res!770508 (semiInverseModEq!1312 (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (h!24179 rules!3447)))))))

(assert (=> d!526912 (= (inv!24234 (transformation!3323 (h!24179 rules!3447))) e!1098701)))

(declare-fun b!1717929 () Bool)

(assert (=> b!1717929 (= e!1098701 (equivClasses!1253 (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (h!24179 rules!3447)))))))

(assert (= (and d!526912 res!770508) b!1717929))

(declare-fun m!2122793 () Bool)

(assert (=> d!526912 m!2122793))

(declare-fun m!2122795 () Bool)

(assert (=> b!1717929 m!2122795))

(assert (=> b!1717524 d!526912))

(declare-fun b!1717930 () Bool)

(declare-fun e!1098703 () Bool)

(declare-fun e!1098702 () Bool)

(assert (=> b!1717930 (= e!1098703 e!1098702)))

(declare-fun c!281292 () Bool)

(assert (=> b!1717930 (= c!281292 ((_ is IntegerValue!10240) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(declare-fun b!1717931 () Bool)

(declare-fun res!770509 () Bool)

(declare-fun e!1098704 () Bool)

(assert (=> b!1717931 (=> res!770509 e!1098704)))

(assert (=> b!1717931 (= res!770509 (not ((_ is IntegerValue!10241) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))))

(assert (=> b!1717931 (= e!1098702 e!1098704)))

(declare-fun d!526914 () Bool)

(declare-fun c!281291 () Bool)

(assert (=> d!526914 (= c!281291 ((_ is IntegerValue!10239) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(assert (=> d!526914 (= (inv!21 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)) e!1098703)))

(declare-fun b!1717932 () Bool)

(assert (=> b!1717932 (= e!1098703 (inv!16 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(declare-fun b!1717933 () Bool)

(assert (=> b!1717933 (= e!1098704 (inv!15 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(declare-fun b!1717934 () Bool)

(assert (=> b!1717934 (= e!1098702 (inv!17 (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))

(assert (= (and d!526914 c!281291) b!1717932))

(assert (= (and d!526914 (not c!281291)) b!1717930))

(assert (= (and b!1717930 c!281292) b!1717934))

(assert (= (and b!1717930 (not c!281292)) b!1717931))

(assert (= (and b!1717931 (not res!770509)) b!1717933))

(declare-fun m!2122797 () Bool)

(assert (=> b!1717932 m!2122797))

(declare-fun m!2122799 () Bool)

(assert (=> b!1717933 m!2122799))

(declare-fun m!2122801 () Bool)

(assert (=> b!1717934 m!2122801))

(assert (=> tb!101595 d!526914))

(declare-fun d!526916 () Bool)

(assert (=> d!526916 (= (inv!24229 (tag!3627 (rule!5263 token!523))) (= (mod (str.len (value!104377 (tag!3627 (rule!5263 token!523)))) 2) 0))))

(assert (=> b!1717528 d!526916))

(declare-fun d!526918 () Bool)

(declare-fun res!770510 () Bool)

(declare-fun e!1098705 () Bool)

(assert (=> d!526918 (=> (not res!770510) (not e!1098705))))

(assert (=> d!526918 (= res!770510 (semiInverseModEq!1312 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 token!523)))))))

(assert (=> d!526918 (= (inv!24234 (transformation!3323 (rule!5263 token!523))) e!1098705)))

(declare-fun b!1717935 () Bool)

(assert (=> b!1717935 (= e!1098705 (equivClasses!1253 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 token!523)))))))

(assert (= (and d!526918 res!770510) b!1717935))

(declare-fun m!2122803 () Bool)

(assert (=> d!526918 m!2122803))

(declare-fun m!2122805 () Bool)

(assert (=> b!1717935 m!2122805))

(assert (=> b!1717528 d!526918))

(declare-fun d!526920 () Bool)

(assert (=> d!526920 (= (list!7584 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))) (list!7587 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))))

(declare-fun bs!402097 () Bool)

(assert (= bs!402097 d!526920))

(declare-fun m!2122809 () Bool)

(assert (=> bs!402097 m!2122809))

(assert (=> b!1717527 d!526920))

(declare-fun bs!402099 () Bool)

(declare-fun d!526922 () Bool)

(assert (= bs!402099 (and d!526922 b!1717522)))

(declare-fun lambda!69029 () Int)

(assert (=> bs!402099 (= lambda!69029 lambda!69020)))

(declare-fun b!1717957 () Bool)

(declare-fun e!1098718 () Bool)

(assert (=> b!1717957 (= e!1098718 true)))

(assert (=> d!526922 e!1098718))

(assert (= d!526922 b!1717957))

(assert (=> b!1717957 (< (dynLambda!8596 order!11379 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8597 order!11381 lambda!69029))))

(assert (=> b!1717957 (< (dynLambda!8598 order!11383 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) (dynLambda!8597 order!11381 lambda!69029))))

(assert (=> d!526922 (= (list!7584 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))) (list!7584 lt!656468))))

(declare-fun lt!656630 () Unit!32611)

(declare-fun ForallOf!256 (Int BalanceConc!12434) Unit!32611)

(assert (=> d!526922 (= lt!656630 (ForallOf!256 lambda!69029 lt!656468))))

(assert (=> d!526922 (= (lemmaSemiInverse!469 (transformation!3323 (rule!5263 (_1!10641 lt!656462))) lt!656468) lt!656630)))

(declare-fun b_lambda!54351 () Bool)

(assert (=> (not b_lambda!54351) (not d!526922)))

(assert (=> d!526922 t!159000))

(declare-fun b_and!125015 () Bool)

(assert (= b_and!125003 (and (=> t!159000 result!122088) b_and!125015)))

(assert (=> d!526922 t!159002))

(declare-fun b_and!125017 () Bool)

(assert (= b_and!125005 (and (=> t!159002 result!122092) b_and!125017)))

(assert (=> d!526922 t!159004))

(declare-fun b_and!125019 () Bool)

(assert (= b_and!125007 (and (=> t!159004 result!122094) b_and!125019)))

(declare-fun b_lambda!54353 () Bool)

(assert (=> (not b_lambda!54353) (not d!526922)))

(assert (=> d!526922 t!159006))

(declare-fun b_and!125021 () Bool)

(assert (= b_and!124985 (and (=> t!159006 result!122096) b_and!125021)))

(assert (=> d!526922 t!159008))

(declare-fun b_and!125023 () Bool)

(assert (= b_and!124987 (and (=> t!159008 result!122100) b_and!125023)))

(assert (=> d!526922 t!159010))

(declare-fun b_and!125025 () Bool)

(assert (= b_and!124989 (and (=> t!159010 result!122102) b_and!125025)))

(declare-fun m!2122865 () Bool)

(assert (=> d!526922 m!2122865))

(assert (=> d!526922 m!2122259))

(assert (=> d!526922 m!2122261))

(assert (=> d!526922 m!2122261))

(assert (=> d!526922 m!2122263))

(assert (=> d!526922 m!2122343))

(assert (=> d!526922 m!2122259))

(assert (=> b!1717527 d!526922))

(declare-fun d!526942 () Bool)

(assert (=> d!526942 (= (isDefined!3013 lt!656459) (not (isEmpty!11809 lt!656459)))))

(declare-fun bs!402101 () Bool)

(assert (= bs!402101 d!526942))

(declare-fun m!2122867 () Bool)

(assert (=> bs!402101 m!2122867))

(assert (=> b!1717541 d!526942))

(declare-fun b!1718010 () Bool)

(declare-fun res!770556 () Bool)

(declare-fun e!1098748 () Bool)

(assert (=> b!1718010 (=> (not res!770556) (not e!1098748))))

(declare-fun lt!656659 () Option!3670)

(assert (=> b!1718010 (= res!770556 (= (value!104378 (_1!10641 (get!5550 lt!656659))) (apply!5128 (transformation!3323 (rule!5263 (_1!10641 (get!5550 lt!656659)))) (seqFromList!2297 (originalCharacters!4137 (_1!10641 (get!5550 lt!656659)))))))))

(declare-fun d!526944 () Bool)

(declare-fun e!1098747 () Bool)

(assert (=> d!526944 e!1098747))

(declare-fun res!770558 () Bool)

(assert (=> d!526944 (=> res!770558 e!1098747)))

(assert (=> d!526944 (= res!770558 (isEmpty!11809 lt!656659))))

(declare-fun e!1098746 () Option!3670)

(assert (=> d!526944 (= lt!656659 e!1098746)))

(declare-fun c!281303 () Bool)

(assert (=> d!526944 (= c!281303 (and ((_ is Cons!18778) rules!3447) ((_ is Nil!18778) (t!159019 rules!3447))))))

(declare-fun lt!656655 () Unit!32611)

(declare-fun lt!656658 () Unit!32611)

(assert (=> d!526944 (= lt!656655 lt!656658)))

(assert (=> d!526944 (isPrefix!1564 lt!656464 lt!656464)))

(declare-fun lemmaIsPrefixRefl!1063 (List!18847 List!18847) Unit!32611)

(assert (=> d!526944 (= lt!656658 (lemmaIsPrefixRefl!1063 lt!656464 lt!656464))))

(declare-fun rulesValidInductive!1100 (LexerInterface!2952 List!18848) Bool)

(assert (=> d!526944 (rulesValidInductive!1100 thiss!24550 rules!3447)))

(assert (=> d!526944 (= (maxPrefix!1506 thiss!24550 rules!3447 lt!656464) lt!656659)))

(declare-fun b!1718011 () Bool)

(declare-fun res!770554 () Bool)

(assert (=> b!1718011 (=> (not res!770554) (not e!1098748))))

(assert (=> b!1718011 (= res!770554 (matchR!2125 (regex!3323 (rule!5263 (_1!10641 (get!5550 lt!656659)))) (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656659))))))))

(declare-fun bm!109672 () Bool)

(declare-fun call!109677 () Option!3670)

(assert (=> bm!109672 (= call!109677 (maxPrefixOneRule!882 thiss!24550 (h!24179 rules!3447) lt!656464))))

(declare-fun b!1718012 () Bool)

(assert (=> b!1718012 (= e!1098747 e!1098748)))

(declare-fun res!770557 () Bool)

(assert (=> b!1718012 (=> (not res!770557) (not e!1098748))))

(assert (=> b!1718012 (= res!770557 (isDefined!3013 lt!656659))))

(declare-fun b!1718013 () Bool)

(declare-fun lt!656656 () Option!3670)

(declare-fun lt!656657 () Option!3670)

(assert (=> b!1718013 (= e!1098746 (ite (and ((_ is None!3669) lt!656656) ((_ is None!3669) lt!656657)) None!3669 (ite ((_ is None!3669) lt!656657) lt!656656 (ite ((_ is None!3669) lt!656656) lt!656657 (ite (>= (size!14920 (_1!10641 (v!25066 lt!656656))) (size!14920 (_1!10641 (v!25066 lt!656657)))) lt!656656 lt!656657)))))))

(assert (=> b!1718013 (= lt!656656 call!109677)))

(assert (=> b!1718013 (= lt!656657 (maxPrefix!1506 thiss!24550 (t!159019 rules!3447) lt!656464))))

(declare-fun b!1718014 () Bool)

(declare-fun res!770555 () Bool)

(assert (=> b!1718014 (=> (not res!770555) (not e!1098748))))

(assert (=> b!1718014 (= res!770555 (= (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656659)))) (originalCharacters!4137 (_1!10641 (get!5550 lt!656659)))))))

(declare-fun b!1718015 () Bool)

(declare-fun res!770559 () Bool)

(assert (=> b!1718015 (=> (not res!770559) (not e!1098748))))

(assert (=> b!1718015 (= res!770559 (= (++!5148 (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656659)))) (_2!10641 (get!5550 lt!656659))) lt!656464))))

(declare-fun b!1718016 () Bool)

(assert (=> b!1718016 (= e!1098748 (contains!3345 rules!3447 (rule!5263 (_1!10641 (get!5550 lt!656659)))))))

(declare-fun b!1718017 () Bool)

(assert (=> b!1718017 (= e!1098746 call!109677)))

(declare-fun b!1718018 () Bool)

(declare-fun res!770560 () Bool)

(assert (=> b!1718018 (=> (not res!770560) (not e!1098748))))

(assert (=> b!1718018 (= res!770560 (< (size!14922 (_2!10641 (get!5550 lt!656659))) (size!14922 lt!656464)))))

(assert (= (and d!526944 c!281303) b!1718017))

(assert (= (and d!526944 (not c!281303)) b!1718013))

(assert (= (or b!1718017 b!1718013) bm!109672))

(assert (= (and d!526944 (not res!770558)) b!1718012))

(assert (= (and b!1718012 res!770557) b!1718014))

(assert (= (and b!1718014 res!770555) b!1718018))

(assert (= (and b!1718018 res!770560) b!1718015))

(assert (= (and b!1718015 res!770559) b!1718010))

(assert (= (and b!1718010 res!770556) b!1718011))

(assert (= (and b!1718011 res!770554) b!1718016))

(declare-fun m!2122909 () Bool)

(assert (=> bm!109672 m!2122909))

(declare-fun m!2122911 () Bool)

(assert (=> b!1718016 m!2122911))

(declare-fun m!2122913 () Bool)

(assert (=> b!1718016 m!2122913))

(assert (=> b!1718010 m!2122911))

(declare-fun m!2122915 () Bool)

(assert (=> b!1718010 m!2122915))

(assert (=> b!1718010 m!2122915))

(declare-fun m!2122917 () Bool)

(assert (=> b!1718010 m!2122917))

(assert (=> b!1718015 m!2122911))

(declare-fun m!2122919 () Bool)

(assert (=> b!1718015 m!2122919))

(assert (=> b!1718015 m!2122919))

(declare-fun m!2122921 () Bool)

(assert (=> b!1718015 m!2122921))

(assert (=> b!1718015 m!2122921))

(declare-fun m!2122923 () Bool)

(assert (=> b!1718015 m!2122923))

(declare-fun m!2122927 () Bool)

(assert (=> b!1718013 m!2122927))

(assert (=> b!1718018 m!2122911))

(declare-fun m!2122931 () Bool)

(assert (=> b!1718018 m!2122931))

(declare-fun m!2122935 () Bool)

(assert (=> b!1718018 m!2122935))

(assert (=> b!1718011 m!2122911))

(assert (=> b!1718011 m!2122919))

(assert (=> b!1718011 m!2122919))

(assert (=> b!1718011 m!2122921))

(assert (=> b!1718011 m!2122921))

(declare-fun m!2122937 () Bool)

(assert (=> b!1718011 m!2122937))

(assert (=> b!1718014 m!2122911))

(assert (=> b!1718014 m!2122919))

(assert (=> b!1718014 m!2122919))

(assert (=> b!1718014 m!2122921))

(declare-fun m!2122939 () Bool)

(assert (=> d!526944 m!2122939))

(declare-fun m!2122941 () Bool)

(assert (=> d!526944 m!2122941))

(declare-fun m!2122943 () Bool)

(assert (=> d!526944 m!2122943))

(declare-fun m!2122945 () Bool)

(assert (=> d!526944 m!2122945))

(declare-fun m!2122947 () Bool)

(assert (=> b!1718012 m!2122947))

(assert (=> b!1717541 d!526944))

(declare-fun d!526976 () Bool)

(assert (=> d!526976 (= (list!7584 (charsOf!1972 token!523)) (list!7587 (c!281217 (charsOf!1972 token!523))))))

(declare-fun bs!402109 () Bool)

(assert (= bs!402109 d!526976))

(declare-fun m!2122949 () Bool)

(assert (=> bs!402109 m!2122949))

(assert (=> b!1717541 d!526976))

(declare-fun d!526978 () Bool)

(declare-fun lt!656663 () BalanceConc!12434)

(assert (=> d!526978 (= (list!7584 lt!656663) (originalCharacters!4137 token!523))))

(assert (=> d!526978 (= lt!656663 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 token!523))) (value!104378 token!523)))))

(assert (=> d!526978 (= (charsOf!1972 token!523) lt!656663)))

(declare-fun b_lambda!54365 () Bool)

(assert (=> (not b_lambda!54365) (not d!526978)))

(assert (=> d!526978 t!159039))

(declare-fun b_and!125057 () Bool)

(assert (= b_and!125015 (and (=> t!159039 result!122128) b_and!125057)))

(assert (=> d!526978 t!159041))

(declare-fun b_and!125059 () Bool)

(assert (= b_and!125017 (and (=> t!159041 result!122130) b_and!125059)))

(assert (=> d!526978 t!159043))

(declare-fun b_and!125061 () Bool)

(assert (= b_and!125019 (and (=> t!159043 result!122132) b_and!125061)))

(declare-fun m!2122951 () Bool)

(assert (=> d!526978 m!2122951))

(assert (=> d!526978 m!2122731))

(assert (=> b!1717541 d!526978))

(declare-fun b!1718043 () Bool)

(declare-fun res!770572 () Bool)

(declare-fun e!1098764 () Bool)

(assert (=> b!1718043 (=> (not res!770572) (not e!1098764))))

(declare-fun lt!656670 () List!18847)

(assert (=> b!1718043 (= res!770572 (= (size!14922 lt!656670) (+ (size!14922 lt!656463) (size!14922 (_2!10641 lt!656462)))))))

(declare-fun b!1718041 () Bool)

(declare-fun e!1098763 () List!18847)

(assert (=> b!1718041 (= e!1098763 (_2!10641 lt!656462))))

(declare-fun b!1718044 () Bool)

(assert (=> b!1718044 (= e!1098764 (or (not (= (_2!10641 lt!656462) Nil!18777)) (= lt!656670 lt!656463)))))

(declare-fun d!526980 () Bool)

(assert (=> d!526980 e!1098764))

(declare-fun res!770571 () Bool)

(assert (=> d!526980 (=> (not res!770571) (not e!1098764))))

(declare-fun content!2677 (List!18847) (InoxSet C!9476))

(assert (=> d!526980 (= res!770571 (= (content!2677 lt!656670) ((_ map or) (content!2677 lt!656463) (content!2677 (_2!10641 lt!656462)))))))

(assert (=> d!526980 (= lt!656670 e!1098763)))

(declare-fun c!281310 () Bool)

(assert (=> d!526980 (= c!281310 ((_ is Nil!18777) lt!656463))))

(assert (=> d!526980 (= (++!5148 lt!656463 (_2!10641 lt!656462)) lt!656670)))

(declare-fun b!1718042 () Bool)

(assert (=> b!1718042 (= e!1098763 (Cons!18777 (h!24178 lt!656463) (++!5148 (t!159018 lt!656463) (_2!10641 lt!656462))))))

(assert (= (and d!526980 c!281310) b!1718041))

(assert (= (and d!526980 (not c!281310)) b!1718042))

(assert (= (and d!526980 res!770571) b!1718043))

(assert (= (and b!1718043 res!770572) b!1718044))

(declare-fun m!2122959 () Bool)

(assert (=> b!1718043 m!2122959))

(assert (=> b!1718043 m!2122371))

(declare-fun m!2122961 () Bool)

(assert (=> b!1718043 m!2122961))

(declare-fun m!2122963 () Bool)

(assert (=> d!526980 m!2122963))

(declare-fun m!2122965 () Bool)

(assert (=> d!526980 m!2122965))

(declare-fun m!2122967 () Bool)

(assert (=> d!526980 m!2122967))

(declare-fun m!2122969 () Bool)

(assert (=> b!1718042 m!2122969))

(assert (=> b!1717544 d!526980))

(declare-fun d!526988 () Bool)

(assert (=> d!526988 (isPrefix!1564 lt!656464 (++!5148 lt!656464 suffix!1421))))

(declare-fun lt!656673 () Unit!32611)

(declare-fun choose!10435 (List!18847 List!18847) Unit!32611)

(assert (=> d!526988 (= lt!656673 (choose!10435 lt!656464 suffix!1421))))

(assert (=> d!526988 (= (lemmaConcatTwoListThenFirstIsPrefix!1074 lt!656464 suffix!1421) lt!656673)))

(declare-fun bs!402111 () Bool)

(assert (= bs!402111 d!526988))

(assert (=> bs!402111 m!2122347))

(assert (=> bs!402111 m!2122347))

(declare-fun m!2122971 () Bool)

(assert (=> bs!402111 m!2122971))

(declare-fun m!2122973 () Bool)

(assert (=> bs!402111 m!2122973))

(assert (=> b!1717544 d!526988))

(declare-fun d!526990 () Bool)

(assert (=> d!526990 (= (list!7584 lt!656468) (list!7587 (c!281217 lt!656468)))))

(declare-fun bs!402112 () Bool)

(assert (= bs!402112 d!526990))

(declare-fun m!2122975 () Bool)

(assert (=> bs!402112 m!2122975))

(assert (=> b!1717544 d!526990))

(declare-fun b!1718061 () Bool)

(declare-fun e!1098777 () Bool)

(declare-fun e!1098776 () Bool)

(assert (=> b!1718061 (= e!1098777 e!1098776)))

(declare-fun res!770577 () Bool)

(assert (=> b!1718061 (=> (not res!770577) (not e!1098776))))

(declare-fun lt!656687 () Option!3671)

(assert (=> b!1718061 (= res!770577 (contains!3345 rules!3447 (get!5549 lt!656687)))))

(declare-fun b!1718062 () Bool)

(declare-fun e!1098778 () Option!3671)

(declare-fun e!1098775 () Option!3671)

(assert (=> b!1718062 (= e!1098778 e!1098775)))

(declare-fun c!281318 () Bool)

(assert (=> b!1718062 (= c!281318 (and ((_ is Cons!18778) rules!3447) (not (= (tag!3627 (h!24179 rules!3447)) (tag!3627 (rule!5263 (_1!10641 lt!656462)))))))))

(declare-fun b!1718063 () Bool)

(assert (=> b!1718063 (= e!1098778 (Some!3670 (h!24179 rules!3447)))))

(declare-fun d!526992 () Bool)

(assert (=> d!526992 e!1098777))

(declare-fun res!770578 () Bool)

(assert (=> d!526992 (=> res!770578 e!1098777)))

(declare-fun isEmpty!11810 (Option!3671) Bool)

(assert (=> d!526992 (= res!770578 (isEmpty!11810 lt!656687))))

(assert (=> d!526992 (= lt!656687 e!1098778)))

(declare-fun c!281317 () Bool)

(assert (=> d!526992 (= c!281317 (and ((_ is Cons!18778) rules!3447) (= (tag!3627 (h!24179 rules!3447)) (tag!3627 (rule!5263 (_1!10641 lt!656462))))))))

(assert (=> d!526992 (rulesInvariant!2621 thiss!24550 rules!3447)))

(assert (=> d!526992 (= (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 (_1!10641 lt!656462)))) lt!656687)))

(declare-fun b!1718064 () Bool)

(assert (=> b!1718064 (= e!1098775 None!3670)))

(declare-fun b!1718065 () Bool)

(assert (=> b!1718065 (= e!1098776 (= (tag!3627 (get!5549 lt!656687)) (tag!3627 (rule!5263 (_1!10641 lt!656462)))))))

(declare-fun b!1718066 () Bool)

(declare-fun lt!656685 () Unit!32611)

(declare-fun lt!656686 () Unit!32611)

(assert (=> b!1718066 (= lt!656685 lt!656686)))

(assert (=> b!1718066 (rulesInvariant!2621 thiss!24550 (t!159019 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!128 (LexerInterface!2952 Rule!6446 List!18848) Unit!32611)

(assert (=> b!1718066 (= lt!656686 (lemmaInvariantOnRulesThenOnTail!128 thiss!24550 (h!24179 rules!3447) (t!159019 rules!3447)))))

(assert (=> b!1718066 (= e!1098775 (getRuleFromTag!373 thiss!24550 (t!159019 rules!3447) (tag!3627 (rule!5263 (_1!10641 lt!656462)))))))

(assert (= (and d!526992 c!281317) b!1718063))

(assert (= (and d!526992 (not c!281317)) b!1718062))

(assert (= (and b!1718062 c!281318) b!1718066))

(assert (= (and b!1718062 (not c!281318)) b!1718064))

(assert (= (and d!526992 (not res!770578)) b!1718061))

(assert (= (and b!1718061 res!770577) b!1718065))

(declare-fun m!2122981 () Bool)

(assert (=> b!1718061 m!2122981))

(assert (=> b!1718061 m!2122981))

(declare-fun m!2122985 () Bool)

(assert (=> b!1718061 m!2122985))

(declare-fun m!2122987 () Bool)

(assert (=> d!526992 m!2122987))

(assert (=> d!526992 m!2122327))

(assert (=> b!1718065 m!2122981))

(declare-fun m!2122989 () Bool)

(assert (=> b!1718066 m!2122989))

(declare-fun m!2122991 () Bool)

(assert (=> b!1718066 m!2122991))

(declare-fun m!2122993 () Bool)

(assert (=> b!1718066 m!2122993))

(assert (=> b!1717544 d!526992))

(declare-fun b!1718080 () Bool)

(declare-fun e!1098787 () Bool)

(assert (=> b!1718080 (= e!1098787 (>= (size!14922 (++!5148 lt!656463 (_2!10641 lt!656462))) (size!14922 lt!656463)))))

(declare-fun b!1718078 () Bool)

(declare-fun res!770588 () Bool)

(declare-fun e!1098788 () Bool)

(assert (=> b!1718078 (=> (not res!770588) (not e!1098788))))

(assert (=> b!1718078 (= res!770588 (= (head!3870 lt!656463) (head!3870 (++!5148 lt!656463 (_2!10641 lt!656462)))))))

(declare-fun b!1718079 () Bool)

(assert (=> b!1718079 (= e!1098788 (isPrefix!1564 (tail!2565 lt!656463) (tail!2565 (++!5148 lt!656463 (_2!10641 lt!656462)))))))

(declare-fun b!1718077 () Bool)

(declare-fun e!1098789 () Bool)

(assert (=> b!1718077 (= e!1098789 e!1098788)))

(declare-fun res!770587 () Bool)

(assert (=> b!1718077 (=> (not res!770587) (not e!1098788))))

(assert (=> b!1718077 (= res!770587 (not ((_ is Nil!18777) (++!5148 lt!656463 (_2!10641 lt!656462)))))))

(declare-fun d!526998 () Bool)

(assert (=> d!526998 e!1098787))

(declare-fun res!770589 () Bool)

(assert (=> d!526998 (=> res!770589 e!1098787)))

(declare-fun lt!656694 () Bool)

(assert (=> d!526998 (= res!770589 (not lt!656694))))

(assert (=> d!526998 (= lt!656694 e!1098789)))

(declare-fun res!770590 () Bool)

(assert (=> d!526998 (=> res!770590 e!1098789)))

(assert (=> d!526998 (= res!770590 ((_ is Nil!18777) lt!656463))))

(assert (=> d!526998 (= (isPrefix!1564 lt!656463 (++!5148 lt!656463 (_2!10641 lt!656462))) lt!656694)))

(assert (= (and d!526998 (not res!770590)) b!1718077))

(assert (= (and b!1718077 res!770587) b!1718078))

(assert (= (and b!1718078 res!770588) b!1718079))

(assert (= (and d!526998 (not res!770589)) b!1718080))

(assert (=> b!1718080 m!2122335))

(declare-fun m!2123001 () Bool)

(assert (=> b!1718080 m!2123001))

(assert (=> b!1718080 m!2122371))

(assert (=> b!1718078 m!2122737))

(assert (=> b!1718078 m!2122335))

(declare-fun m!2123003 () Bool)

(assert (=> b!1718078 m!2123003))

(assert (=> b!1718079 m!2122741))

(assert (=> b!1718079 m!2122335))

(declare-fun m!2123005 () Bool)

(assert (=> b!1718079 m!2123005))

(assert (=> b!1718079 m!2122741))

(assert (=> b!1718079 m!2123005))

(declare-fun m!2123007 () Bool)

(assert (=> b!1718079 m!2123007))

(assert (=> b!1717544 d!526998))

(declare-fun b!1718084 () Bool)

(declare-fun e!1098790 () Bool)

(assert (=> b!1718084 (= e!1098790 (>= (size!14922 lt!656469) (size!14922 lt!656464)))))

(declare-fun b!1718082 () Bool)

(declare-fun res!770592 () Bool)

(declare-fun e!1098791 () Bool)

(assert (=> b!1718082 (=> (not res!770592) (not e!1098791))))

(assert (=> b!1718082 (= res!770592 (= (head!3870 lt!656464) (head!3870 lt!656469)))))

(declare-fun b!1718083 () Bool)

(assert (=> b!1718083 (= e!1098791 (isPrefix!1564 (tail!2565 lt!656464) (tail!2565 lt!656469)))))

(declare-fun b!1718081 () Bool)

(declare-fun e!1098792 () Bool)

(assert (=> b!1718081 (= e!1098792 e!1098791)))

(declare-fun res!770591 () Bool)

(assert (=> b!1718081 (=> (not res!770591) (not e!1098791))))

(assert (=> b!1718081 (= res!770591 (not ((_ is Nil!18777) lt!656469)))))

(declare-fun d!527004 () Bool)

(assert (=> d!527004 e!1098790))

(declare-fun res!770593 () Bool)

(assert (=> d!527004 (=> res!770593 e!1098790)))

(declare-fun lt!656695 () Bool)

(assert (=> d!527004 (= res!770593 (not lt!656695))))

(assert (=> d!527004 (= lt!656695 e!1098792)))

(declare-fun res!770594 () Bool)

(assert (=> d!527004 (=> res!770594 e!1098792)))

(assert (=> d!527004 (= res!770594 ((_ is Nil!18777) lt!656464))))

(assert (=> d!527004 (= (isPrefix!1564 lt!656464 lt!656469) lt!656695)))

(assert (= (and d!527004 (not res!770594)) b!1718081))

(assert (= (and b!1718081 res!770591) b!1718082))

(assert (= (and b!1718082 res!770592) b!1718083))

(assert (= (and d!527004 (not res!770593)) b!1718084))

(assert (=> b!1718084 m!2122369))

(assert (=> b!1718084 m!2122935))

(assert (=> b!1718082 m!2122757))

(declare-fun m!2123009 () Bool)

(assert (=> b!1718082 m!2123009))

(assert (=> b!1718083 m!2122761))

(assert (=> b!1718083 m!2122669))

(assert (=> b!1718083 m!2122761))

(assert (=> b!1718083 m!2122669))

(declare-fun m!2123011 () Bool)

(assert (=> b!1718083 m!2123011))

(assert (=> b!1717544 d!527004))

(declare-fun b!1718085 () Bool)

(declare-fun res!770597 () Bool)

(declare-fun e!1098795 () Bool)

(assert (=> b!1718085 (=> (not res!770597) (not e!1098795))))

(declare-fun lt!656700 () Option!3670)

(assert (=> b!1718085 (= res!770597 (= (value!104378 (_1!10641 (get!5550 lt!656700))) (apply!5128 (transformation!3323 (rule!5263 (_1!10641 (get!5550 lt!656700)))) (seqFromList!2297 (originalCharacters!4137 (_1!10641 (get!5550 lt!656700)))))))))

(declare-fun d!527006 () Bool)

(declare-fun e!1098794 () Bool)

(assert (=> d!527006 e!1098794))

(declare-fun res!770599 () Bool)

(assert (=> d!527006 (=> res!770599 e!1098794)))

(assert (=> d!527006 (= res!770599 (isEmpty!11809 lt!656700))))

(declare-fun e!1098793 () Option!3670)

(assert (=> d!527006 (= lt!656700 e!1098793)))

(declare-fun c!281320 () Bool)

(assert (=> d!527006 (= c!281320 (and ((_ is Cons!18778) rules!3447) ((_ is Nil!18778) (t!159019 rules!3447))))))

(declare-fun lt!656696 () Unit!32611)

(declare-fun lt!656699 () Unit!32611)

(assert (=> d!527006 (= lt!656696 lt!656699)))

(assert (=> d!527006 (isPrefix!1564 lt!656469 lt!656469)))

(assert (=> d!527006 (= lt!656699 (lemmaIsPrefixRefl!1063 lt!656469 lt!656469))))

(assert (=> d!527006 (rulesValidInductive!1100 thiss!24550 rules!3447)))

(assert (=> d!527006 (= (maxPrefix!1506 thiss!24550 rules!3447 lt!656469) lt!656700)))

(declare-fun b!1718086 () Bool)

(declare-fun res!770595 () Bool)

(assert (=> b!1718086 (=> (not res!770595) (not e!1098795))))

(assert (=> b!1718086 (= res!770595 (matchR!2125 (regex!3323 (rule!5263 (_1!10641 (get!5550 lt!656700)))) (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656700))))))))

(declare-fun bm!109673 () Bool)

(declare-fun call!109678 () Option!3670)

(assert (=> bm!109673 (= call!109678 (maxPrefixOneRule!882 thiss!24550 (h!24179 rules!3447) lt!656469))))

(declare-fun b!1718087 () Bool)

(assert (=> b!1718087 (= e!1098794 e!1098795)))

(declare-fun res!770598 () Bool)

(assert (=> b!1718087 (=> (not res!770598) (not e!1098795))))

(assert (=> b!1718087 (= res!770598 (isDefined!3013 lt!656700))))

(declare-fun b!1718088 () Bool)

(declare-fun lt!656697 () Option!3670)

(declare-fun lt!656698 () Option!3670)

(assert (=> b!1718088 (= e!1098793 (ite (and ((_ is None!3669) lt!656697) ((_ is None!3669) lt!656698)) None!3669 (ite ((_ is None!3669) lt!656698) lt!656697 (ite ((_ is None!3669) lt!656697) lt!656698 (ite (>= (size!14920 (_1!10641 (v!25066 lt!656697))) (size!14920 (_1!10641 (v!25066 lt!656698)))) lt!656697 lt!656698)))))))

(assert (=> b!1718088 (= lt!656697 call!109678)))

(assert (=> b!1718088 (= lt!656698 (maxPrefix!1506 thiss!24550 (t!159019 rules!3447) lt!656469))))

(declare-fun b!1718089 () Bool)

(declare-fun res!770596 () Bool)

(assert (=> b!1718089 (=> (not res!770596) (not e!1098795))))

(assert (=> b!1718089 (= res!770596 (= (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656700)))) (originalCharacters!4137 (_1!10641 (get!5550 lt!656700)))))))

(declare-fun b!1718090 () Bool)

(declare-fun res!770600 () Bool)

(assert (=> b!1718090 (=> (not res!770600) (not e!1098795))))

(assert (=> b!1718090 (= res!770600 (= (++!5148 (list!7584 (charsOf!1972 (_1!10641 (get!5550 lt!656700)))) (_2!10641 (get!5550 lt!656700))) lt!656469))))

(declare-fun b!1718091 () Bool)

(assert (=> b!1718091 (= e!1098795 (contains!3345 rules!3447 (rule!5263 (_1!10641 (get!5550 lt!656700)))))))

(declare-fun b!1718092 () Bool)

(assert (=> b!1718092 (= e!1098793 call!109678)))

(declare-fun b!1718093 () Bool)

(declare-fun res!770601 () Bool)

(assert (=> b!1718093 (=> (not res!770601) (not e!1098795))))

(assert (=> b!1718093 (= res!770601 (< (size!14922 (_2!10641 (get!5550 lt!656700))) (size!14922 lt!656469)))))

(assert (= (and d!527006 c!281320) b!1718092))

(assert (= (and d!527006 (not c!281320)) b!1718088))

(assert (= (or b!1718092 b!1718088) bm!109673))

(assert (= (and d!527006 (not res!770599)) b!1718087))

(assert (= (and b!1718087 res!770598) b!1718089))

(assert (= (and b!1718089 res!770596) b!1718093))

(assert (= (and b!1718093 res!770601) b!1718090))

(assert (= (and b!1718090 res!770600) b!1718085))

(assert (= (and b!1718085 res!770597) b!1718086))

(assert (= (and b!1718086 res!770595) b!1718091))

(declare-fun m!2123013 () Bool)

(assert (=> bm!109673 m!2123013))

(declare-fun m!2123015 () Bool)

(assert (=> b!1718091 m!2123015))

(declare-fun m!2123017 () Bool)

(assert (=> b!1718091 m!2123017))

(assert (=> b!1718085 m!2123015))

(declare-fun m!2123019 () Bool)

(assert (=> b!1718085 m!2123019))

(assert (=> b!1718085 m!2123019))

(declare-fun m!2123021 () Bool)

(assert (=> b!1718085 m!2123021))

(assert (=> b!1718090 m!2123015))

(declare-fun m!2123023 () Bool)

(assert (=> b!1718090 m!2123023))

(assert (=> b!1718090 m!2123023))

(declare-fun m!2123025 () Bool)

(assert (=> b!1718090 m!2123025))

(assert (=> b!1718090 m!2123025))

(declare-fun m!2123027 () Bool)

(assert (=> b!1718090 m!2123027))

(declare-fun m!2123029 () Bool)

(assert (=> b!1718088 m!2123029))

(assert (=> b!1718093 m!2123015))

(declare-fun m!2123031 () Bool)

(assert (=> b!1718093 m!2123031))

(assert (=> b!1718093 m!2122369))

(assert (=> b!1718086 m!2123015))

(assert (=> b!1718086 m!2123023))

(assert (=> b!1718086 m!2123023))

(assert (=> b!1718086 m!2123025))

(assert (=> b!1718086 m!2123025))

(declare-fun m!2123033 () Bool)

(assert (=> b!1718086 m!2123033))

(assert (=> b!1718089 m!2123015))

(assert (=> b!1718089 m!2123023))

(assert (=> b!1718089 m!2123023))

(assert (=> b!1718089 m!2123025))

(declare-fun m!2123035 () Bool)

(assert (=> d!527006 m!2123035))

(declare-fun m!2123037 () Bool)

(assert (=> d!527006 m!2123037))

(declare-fun m!2123039 () Bool)

(assert (=> d!527006 m!2123039))

(assert (=> d!527006 m!2122945))

(declare-fun m!2123041 () Bool)

(assert (=> b!1718087 m!2123041))

(assert (=> b!1717544 d!527006))

(declare-fun b!1718190 () Bool)

(declare-fun res!770630 () Bool)

(declare-fun e!1098846 () Bool)

(assert (=> b!1718190 (=> (not res!770630) (not e!1098846))))

(declare-fun lt!656761 () Token!6212)

(assert (=> b!1718190 (= res!770630 (matchR!2125 (regex!3323 (get!5549 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 lt!656761))))) (list!7584 (charsOf!1972 lt!656761))))))

(declare-fun d!527008 () Bool)

(assert (=> d!527008 (isDefined!3013 (maxPrefix!1506 thiss!24550 rules!3447 (++!5148 lt!656464 suffix!1421)))))

(declare-fun lt!656765 () Unit!32611)

(declare-fun e!1098847 () Unit!32611)

(assert (=> d!527008 (= lt!656765 e!1098847)))

(declare-fun c!281329 () Bool)

(assert (=> d!527008 (= c!281329 (isEmpty!11809 (maxPrefix!1506 thiss!24550 rules!3447 (++!5148 lt!656464 suffix!1421))))))

(declare-fun lt!656762 () Unit!32611)

(declare-fun lt!656755 () Unit!32611)

(assert (=> d!527008 (= lt!656762 lt!656755)))

(assert (=> d!527008 e!1098846))

(declare-fun res!770629 () Bool)

(assert (=> d!527008 (=> (not res!770629) (not e!1098846))))

(assert (=> d!527008 (= res!770629 (isDefined!3014 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 lt!656761)))))))

(assert (=> d!527008 (= lt!656755 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!373 thiss!24550 rules!3447 lt!656464 lt!656761))))

(declare-fun lt!656752 () Unit!32611)

(declare-fun lt!656763 () Unit!32611)

(assert (=> d!527008 (= lt!656752 lt!656763)))

(declare-fun lt!656756 () List!18847)

(assert (=> d!527008 (isPrefix!1564 lt!656756 (++!5148 lt!656464 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!249 (List!18847 List!18847 List!18847) Unit!32611)

(assert (=> d!527008 (= lt!656763 (lemmaPrefixStaysPrefixWhenAddingToSuffix!249 lt!656756 lt!656464 suffix!1421))))

(assert (=> d!527008 (= lt!656756 (list!7584 (charsOf!1972 lt!656761)))))

(declare-fun lt!656753 () Unit!32611)

(declare-fun lt!656754 () Unit!32611)

(assert (=> d!527008 (= lt!656753 lt!656754)))

(declare-fun lt!656766 () List!18847)

(declare-fun lt!656760 () List!18847)

(assert (=> d!527008 (isPrefix!1564 lt!656766 (++!5148 lt!656766 lt!656760))))

(assert (=> d!527008 (= lt!656754 (lemmaConcatTwoListThenFirstIsPrefix!1074 lt!656766 lt!656760))))

(assert (=> d!527008 (= lt!656760 (_2!10641 (get!5550 (maxPrefix!1506 thiss!24550 rules!3447 lt!656464))))))

(assert (=> d!527008 (= lt!656766 (list!7584 (charsOf!1972 lt!656761)))))

(declare-datatypes ((List!18853 0))(
  ( (Nil!18783) (Cons!18783 (h!24184 Token!6212) (t!159084 List!18853)) )
))
(declare-fun head!3872 (List!18853) Token!6212)

(declare-datatypes ((IArray!12499 0))(
  ( (IArray!12500 (innerList!6307 List!18853)) )
))
(declare-datatypes ((Conc!6247 0))(
  ( (Node!6247 (left!14978 Conc!6247) (right!15308 Conc!6247) (csize!12724 Int) (cheight!6458 Int)) (Leaf!9129 (xs!9123 IArray!12499) (csize!12725 Int)) (Empty!6247) )
))
(declare-datatypes ((BalanceConc!12438 0))(
  ( (BalanceConc!12439 (c!281337 Conc!6247)) )
))
(declare-fun list!7588 (BalanceConc!12438) List!18853)

(declare-datatypes ((tuple2!18486 0))(
  ( (tuple2!18487 (_1!10645 BalanceConc!12438) (_2!10645 BalanceConc!12434)) )
))
(declare-fun lex!1388 (LexerInterface!2952 List!18848 BalanceConc!12434) tuple2!18486)

(assert (=> d!527008 (= lt!656761 (head!3872 (list!7588 (_1!10645 (lex!1388 thiss!24550 rules!3447 (seqFromList!2297 lt!656464))))))))

(assert (=> d!527008 (not (isEmpty!11806 rules!3447))))

(assert (=> d!527008 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!476 thiss!24550 rules!3447 lt!656464 suffix!1421) lt!656765)))

(declare-fun b!1718192 () Bool)

(declare-fun Unit!32618 () Unit!32611)

(assert (=> b!1718192 (= e!1098847 Unit!32618)))

(declare-fun lt!656759 () List!18847)

(assert (=> b!1718192 (= lt!656759 (++!5148 lt!656464 suffix!1421))))

(declare-fun lt!656758 () Unit!32611)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!257 (LexerInterface!2952 Rule!6446 List!18848 List!18847) Unit!32611)

(assert (=> b!1718192 (= lt!656758 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!257 thiss!24550 (rule!5263 lt!656761) rules!3447 lt!656759))))

(assert (=> b!1718192 (isEmpty!11809 (maxPrefixOneRule!882 thiss!24550 (rule!5263 lt!656761) lt!656759))))

(declare-fun lt!656757 () Unit!32611)

(assert (=> b!1718192 (= lt!656757 lt!656758)))

(declare-fun lt!656751 () List!18847)

(assert (=> b!1718192 (= lt!656751 (list!7584 (charsOf!1972 lt!656761)))))

(declare-fun lt!656764 () Unit!32611)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!253 (LexerInterface!2952 Rule!6446 List!18847 List!18847) Unit!32611)

(assert (=> b!1718192 (= lt!656764 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!253 thiss!24550 (rule!5263 lt!656761) lt!656751 (++!5148 lt!656464 suffix!1421)))))

(assert (=> b!1718192 (not (matchR!2125 (regex!3323 (rule!5263 lt!656761)) lt!656751))))

(declare-fun lt!656750 () Unit!32611)

(assert (=> b!1718192 (= lt!656750 lt!656764)))

(assert (=> b!1718192 false))

(declare-fun b!1718191 () Bool)

(assert (=> b!1718191 (= e!1098846 (= (rule!5263 lt!656761) (get!5549 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 lt!656761))))))))

(declare-fun b!1718193 () Bool)

(declare-fun Unit!32619 () Unit!32611)

(assert (=> b!1718193 (= e!1098847 Unit!32619)))

(assert (= (and d!527008 res!770629) b!1718190))

(assert (= (and b!1718190 res!770630) b!1718191))

(assert (= (and d!527008 c!281329) b!1718192))

(assert (= (and d!527008 (not c!281329)) b!1718193))

(declare-fun m!2123113 () Bool)

(assert (=> b!1718190 m!2123113))

(declare-fun m!2123115 () Bool)

(assert (=> b!1718190 m!2123115))

(declare-fun m!2123117 () Bool)

(assert (=> b!1718190 m!2123117))

(assert (=> b!1718190 m!2123117))

(assert (=> b!1718190 m!2123113))

(declare-fun m!2123119 () Bool)

(assert (=> b!1718190 m!2123119))

(declare-fun m!2123121 () Bool)

(assert (=> b!1718190 m!2123121))

(assert (=> b!1718190 m!2123119))

(assert (=> d!527008 m!2122347))

(assert (=> d!527008 m!2122297))

(assert (=> d!527008 m!2123117))

(assert (=> d!527008 m!2122281))

(declare-fun m!2123123 () Bool)

(assert (=> d!527008 m!2123123))

(assert (=> d!527008 m!2123119))

(declare-fun m!2123125 () Bool)

(assert (=> d!527008 m!2123125))

(assert (=> d!527008 m!2123117))

(assert (=> d!527008 m!2123113))

(declare-fun m!2123127 () Bool)

(assert (=> d!527008 m!2123127))

(declare-fun m!2123129 () Bool)

(assert (=> d!527008 m!2123129))

(declare-fun m!2123131 () Bool)

(assert (=> d!527008 m!2123131))

(assert (=> d!527008 m!2123131))

(declare-fun m!2123133 () Bool)

(assert (=> d!527008 m!2123133))

(declare-fun m!2123135 () Bool)

(assert (=> d!527008 m!2123135))

(assert (=> d!527008 m!2122347))

(assert (=> d!527008 m!2123127))

(declare-fun m!2123137 () Bool)

(assert (=> d!527008 m!2123137))

(declare-fun m!2123139 () Bool)

(assert (=> d!527008 m!2123139))

(declare-fun m!2123141 () Bool)

(assert (=> d!527008 m!2123141))

(assert (=> d!527008 m!2122281))

(assert (=> d!527008 m!2122347))

(declare-fun m!2123143 () Bool)

(assert (=> d!527008 m!2123143))

(assert (=> d!527008 m!2123127))

(declare-fun m!2123145 () Bool)

(assert (=> d!527008 m!2123145))

(assert (=> d!527008 m!2123137))

(declare-fun m!2123147 () Bool)

(assert (=> d!527008 m!2123147))

(declare-fun m!2123149 () Bool)

(assert (=> d!527008 m!2123149))

(assert (=> d!527008 m!2123139))

(declare-fun m!2123151 () Bool)

(assert (=> d!527008 m!2123151))

(assert (=> d!527008 m!2123119))

(assert (=> b!1718192 m!2122347))

(declare-fun m!2123153 () Bool)

(assert (=> b!1718192 m!2123153))

(declare-fun m!2123155 () Bool)

(assert (=> b!1718192 m!2123155))

(assert (=> b!1718192 m!2123117))

(declare-fun m!2123157 () Bool)

(assert (=> b!1718192 m!2123157))

(assert (=> b!1718192 m!2123117))

(assert (=> b!1718192 m!2123113))

(assert (=> b!1718192 m!2122347))

(declare-fun m!2123159 () Bool)

(assert (=> b!1718192 m!2123159))

(assert (=> b!1718192 m!2123155))

(declare-fun m!2123161 () Bool)

(assert (=> b!1718192 m!2123161))

(assert (=> b!1718191 m!2123119))

(assert (=> b!1718191 m!2123119))

(assert (=> b!1718191 m!2123121))

(assert (=> b!1717544 d!527008))

(declare-fun d!527018 () Bool)

(declare-fun e!1098850 () Bool)

(assert (=> d!527018 e!1098850))

(declare-fun res!770635 () Bool)

(assert (=> d!527018 (=> (not res!770635) (not e!1098850))))

(assert (=> d!527018 (= res!770635 (isDefined!3014 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 (_1!10641 lt!656462))))))))

(declare-fun lt!656769 () Unit!32611)

(declare-fun choose!10438 (LexerInterface!2952 List!18848 List!18847 Token!6212) Unit!32611)

(assert (=> d!527018 (= lt!656769 (choose!10438 thiss!24550 rules!3447 lt!656469 (_1!10641 lt!656462)))))

(assert (=> d!527018 (rulesInvariant!2621 thiss!24550 rules!3447)))

(assert (=> d!527018 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!373 thiss!24550 rules!3447 lt!656469 (_1!10641 lt!656462)) lt!656769)))

(declare-fun b!1718198 () Bool)

(declare-fun res!770636 () Bool)

(assert (=> b!1718198 (=> (not res!770636) (not e!1098850))))

(assert (=> b!1718198 (= res!770636 (matchR!2125 (regex!3323 (get!5549 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 (_1!10641 lt!656462)))))) (list!7584 (charsOf!1972 (_1!10641 lt!656462)))))))

(declare-fun b!1718199 () Bool)

(assert (=> b!1718199 (= e!1098850 (= (rule!5263 (_1!10641 lt!656462)) (get!5549 (getRuleFromTag!373 thiss!24550 rules!3447 (tag!3627 (rule!5263 (_1!10641 lt!656462)))))))))

(assert (= (and d!527018 res!770635) b!1718198))

(assert (= (and b!1718198 res!770636) b!1718199))

(assert (=> d!527018 m!2122339))

(assert (=> d!527018 m!2122339))

(declare-fun m!2123163 () Bool)

(assert (=> d!527018 m!2123163))

(declare-fun m!2123165 () Bool)

(assert (=> d!527018 m!2123165))

(assert (=> d!527018 m!2122327))

(assert (=> b!1718198 m!2122339))

(assert (=> b!1718198 m!2122299))

(assert (=> b!1718198 m!2122301))

(assert (=> b!1718198 m!2122299))

(assert (=> b!1718198 m!2122301))

(declare-fun m!2123167 () Bool)

(assert (=> b!1718198 m!2123167))

(assert (=> b!1718198 m!2122339))

(declare-fun m!2123169 () Bool)

(assert (=> b!1718198 m!2123169))

(assert (=> b!1718199 m!2122339))

(assert (=> b!1718199 m!2122339))

(assert (=> b!1718199 m!2123169))

(assert (=> b!1717544 d!527018))

(declare-fun d!527020 () Bool)

(assert (=> d!527020 (= (isDefined!3014 lt!656454) (not (isEmpty!11810 lt!656454)))))

(declare-fun bs!402115 () Bool)

(assert (= bs!402115 d!527020))

(declare-fun m!2123171 () Bool)

(assert (=> bs!402115 m!2123171))

(assert (=> b!1717544 d!527020))

(declare-fun d!527022 () Bool)

(assert (=> d!527022 (= (get!5550 lt!656453) (v!25066 lt!656453))))

(assert (=> b!1717544 d!527022))

(declare-fun b!1718202 () Bool)

(declare-fun res!770638 () Bool)

(declare-fun e!1098852 () Bool)

(assert (=> b!1718202 (=> (not res!770638) (not e!1098852))))

(declare-fun lt!656770 () List!18847)

(assert (=> b!1718202 (= res!770638 (= (size!14922 lt!656770) (+ (size!14922 lt!656464) (size!14922 suffix!1421))))))

(declare-fun b!1718200 () Bool)

(declare-fun e!1098851 () List!18847)

(assert (=> b!1718200 (= e!1098851 suffix!1421)))

(declare-fun b!1718203 () Bool)

(assert (=> b!1718203 (= e!1098852 (or (not (= suffix!1421 Nil!18777)) (= lt!656770 lt!656464)))))

(declare-fun d!527024 () Bool)

(assert (=> d!527024 e!1098852))

(declare-fun res!770637 () Bool)

(assert (=> d!527024 (=> (not res!770637) (not e!1098852))))

(assert (=> d!527024 (= res!770637 (= (content!2677 lt!656770) ((_ map or) (content!2677 lt!656464) (content!2677 suffix!1421))))))

(assert (=> d!527024 (= lt!656770 e!1098851)))

(declare-fun c!281331 () Bool)

(assert (=> d!527024 (= c!281331 ((_ is Nil!18777) lt!656464))))

(assert (=> d!527024 (= (++!5148 lt!656464 suffix!1421) lt!656770)))

(declare-fun b!1718201 () Bool)

(assert (=> b!1718201 (= e!1098851 (Cons!18777 (h!24178 lt!656464) (++!5148 (t!159018 lt!656464) suffix!1421)))))

(assert (= (and d!527024 c!281331) b!1718200))

(assert (= (and d!527024 (not c!281331)) b!1718201))

(assert (= (and d!527024 res!770637) b!1718202))

(assert (= (and b!1718202 res!770638) b!1718203))

(declare-fun m!2123173 () Bool)

(assert (=> b!1718202 m!2123173))

(assert (=> b!1718202 m!2122935))

(declare-fun m!2123175 () Bool)

(assert (=> b!1718202 m!2123175))

(declare-fun m!2123177 () Bool)

(assert (=> d!527024 m!2123177))

(declare-fun m!2123179 () Bool)

(assert (=> d!527024 m!2123179))

(declare-fun m!2123181 () Bool)

(assert (=> d!527024 m!2123181))

(declare-fun m!2123183 () Bool)

(assert (=> b!1718201 m!2123183))

(assert (=> b!1717544 d!527024))

(assert (=> b!1717544 d!526824))

(declare-fun b!1718207 () Bool)

(declare-fun e!1098853 () Bool)

(assert (=> b!1718207 (= e!1098853 (>= (size!14922 lt!656469) (size!14922 lt!656463)))))

(declare-fun b!1718205 () Bool)

(declare-fun res!770640 () Bool)

(declare-fun e!1098854 () Bool)

(assert (=> b!1718205 (=> (not res!770640) (not e!1098854))))

(assert (=> b!1718205 (= res!770640 (= (head!3870 lt!656463) (head!3870 lt!656469)))))

(declare-fun b!1718206 () Bool)

(assert (=> b!1718206 (= e!1098854 (isPrefix!1564 (tail!2565 lt!656463) (tail!2565 lt!656469)))))

(declare-fun b!1718204 () Bool)

(declare-fun e!1098855 () Bool)

(assert (=> b!1718204 (= e!1098855 e!1098854)))

(declare-fun res!770639 () Bool)

(assert (=> b!1718204 (=> (not res!770639) (not e!1098854))))

(assert (=> b!1718204 (= res!770639 (not ((_ is Nil!18777) lt!656469)))))

(declare-fun d!527026 () Bool)

(assert (=> d!527026 e!1098853))

(declare-fun res!770641 () Bool)

(assert (=> d!527026 (=> res!770641 e!1098853)))

(declare-fun lt!656771 () Bool)

(assert (=> d!527026 (= res!770641 (not lt!656771))))

(assert (=> d!527026 (= lt!656771 e!1098855)))

(declare-fun res!770642 () Bool)

(assert (=> d!527026 (=> res!770642 e!1098855)))

(assert (=> d!527026 (= res!770642 ((_ is Nil!18777) lt!656463))))

(assert (=> d!527026 (= (isPrefix!1564 lt!656463 lt!656469) lt!656771)))

(assert (= (and d!527026 (not res!770642)) b!1718204))

(assert (= (and b!1718204 res!770639) b!1718205))

(assert (= (and b!1718205 res!770640) b!1718206))

(assert (= (and d!527026 (not res!770641)) b!1718207))

(assert (=> b!1718207 m!2122369))

(assert (=> b!1718207 m!2122371))

(assert (=> b!1718205 m!2122737))

(assert (=> b!1718205 m!2123009))

(assert (=> b!1718206 m!2122741))

(assert (=> b!1718206 m!2122669))

(assert (=> b!1718206 m!2122741))

(assert (=> b!1718206 m!2122669))

(declare-fun m!2123185 () Bool)

(assert (=> b!1718206 m!2123185))

(assert (=> b!1717544 d!527026))

(declare-fun d!527028 () Bool)

(assert (=> d!527028 (isPrefix!1564 lt!656463 (++!5148 lt!656463 (_2!10641 lt!656462)))))

(declare-fun lt!656772 () Unit!32611)

(assert (=> d!527028 (= lt!656772 (choose!10435 lt!656463 (_2!10641 lt!656462)))))

(assert (=> d!527028 (= (lemmaConcatTwoListThenFirstIsPrefix!1074 lt!656463 (_2!10641 lt!656462)) lt!656772)))

(declare-fun bs!402116 () Bool)

(assert (= bs!402116 d!527028))

(assert (=> bs!402116 m!2122335))

(assert (=> bs!402116 m!2122335))

(assert (=> bs!402116 m!2122341))

(declare-fun m!2123187 () Bool)

(assert (=> bs!402116 m!2123187))

(assert (=> b!1717544 d!527028))

(declare-fun d!527030 () Bool)

(declare-fun c!281334 () Bool)

(assert (=> d!527030 (= c!281334 (isEmpty!11805 (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777))))))

(declare-fun e!1098858 () Bool)

(assert (=> d!527030 (= (prefixMatch!536 (rulesRegex!681 thiss!24550 rules!3447) (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777))) e!1098858)))

(declare-fun b!1718212 () Bool)

(declare-fun lostCause!510 (Regex!4651) Bool)

(assert (=> b!1718212 (= e!1098858 (not (lostCause!510 (rulesRegex!681 thiss!24550 rules!3447))))))

(declare-fun b!1718213 () Bool)

(assert (=> b!1718213 (= e!1098858 (prefixMatch!536 (derivativeStep!1167 (rulesRegex!681 thiss!24550 rules!3447) (head!3870 (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777)))) (tail!2565 (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777)))))))

(assert (= (and d!527030 c!281334) b!1718212))

(assert (= (and d!527030 (not c!281334)) b!1718213))

(assert (=> d!527030 m!2122319))

(declare-fun m!2123189 () Bool)

(assert (=> d!527030 m!2123189))

(assert (=> b!1718212 m!2122315))

(declare-fun m!2123191 () Bool)

(assert (=> b!1718212 m!2123191))

(assert (=> b!1718213 m!2122319))

(declare-fun m!2123193 () Bool)

(assert (=> b!1718213 m!2123193))

(assert (=> b!1718213 m!2122315))

(assert (=> b!1718213 m!2123193))

(declare-fun m!2123195 () Bool)

(assert (=> b!1718213 m!2123195))

(assert (=> b!1718213 m!2122319))

(declare-fun m!2123197 () Bool)

(assert (=> b!1718213 m!2123197))

(assert (=> b!1718213 m!2123195))

(assert (=> b!1718213 m!2123197))

(declare-fun m!2123199 () Bool)

(assert (=> b!1718213 m!2123199))

(assert (=> b!1717523 d!527030))

(declare-fun d!527032 () Bool)

(declare-fun lt!656775 () Unit!32611)

(declare-fun lemma!324 (List!18848 LexerInterface!2952 List!18848) Unit!32611)

(assert (=> d!527032 (= lt!656775 (lemma!324 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69038 () Int)

(declare-datatypes ((List!18854 0))(
  ( (Nil!18784) (Cons!18784 (h!24185 Regex!4651) (t!159085 List!18854)) )
))
(declare-fun generalisedUnion!332 (List!18854) Regex!4651)

(declare-fun map!3865 (List!18848 Int) List!18854)

(assert (=> d!527032 (= (rulesRegex!681 thiss!24550 rules!3447) (generalisedUnion!332 (map!3865 rules!3447 lambda!69038)))))

(declare-fun bs!402117 () Bool)

(assert (= bs!402117 d!527032))

(declare-fun m!2123201 () Bool)

(assert (=> bs!402117 m!2123201))

(declare-fun m!2123203 () Bool)

(assert (=> bs!402117 m!2123203))

(assert (=> bs!402117 m!2123203))

(declare-fun m!2123205 () Bool)

(assert (=> bs!402117 m!2123205))

(assert (=> b!1717523 d!527032))

(declare-fun b!1718216 () Bool)

(declare-fun res!770644 () Bool)

(declare-fun e!1098860 () Bool)

(assert (=> b!1718216 (=> (not res!770644) (not e!1098860))))

(declare-fun lt!656776 () List!18847)

(assert (=> b!1718216 (= res!770644 (= (size!14922 lt!656776) (+ (size!14922 lt!656464) (size!14922 (Cons!18777 (head!3870 suffix!1421) Nil!18777)))))))

(declare-fun b!1718214 () Bool)

(declare-fun e!1098859 () List!18847)

(assert (=> b!1718214 (= e!1098859 (Cons!18777 (head!3870 suffix!1421) Nil!18777))))

(declare-fun b!1718217 () Bool)

(assert (=> b!1718217 (= e!1098860 (or (not (= (Cons!18777 (head!3870 suffix!1421) Nil!18777) Nil!18777)) (= lt!656776 lt!656464)))))

(declare-fun d!527034 () Bool)

(assert (=> d!527034 e!1098860))

(declare-fun res!770643 () Bool)

(assert (=> d!527034 (=> (not res!770643) (not e!1098860))))

(assert (=> d!527034 (= res!770643 (= (content!2677 lt!656776) ((_ map or) (content!2677 lt!656464) (content!2677 (Cons!18777 (head!3870 suffix!1421) Nil!18777)))))))

(assert (=> d!527034 (= lt!656776 e!1098859)))

(declare-fun c!281335 () Bool)

(assert (=> d!527034 (= c!281335 ((_ is Nil!18777) lt!656464))))

(assert (=> d!527034 (= (++!5148 lt!656464 (Cons!18777 (head!3870 suffix!1421) Nil!18777)) lt!656776)))

(declare-fun b!1718215 () Bool)

(assert (=> b!1718215 (= e!1098859 (Cons!18777 (h!24178 lt!656464) (++!5148 (t!159018 lt!656464) (Cons!18777 (head!3870 suffix!1421) Nil!18777))))))

(assert (= (and d!527034 c!281335) b!1718214))

(assert (= (and d!527034 (not c!281335)) b!1718215))

(assert (= (and d!527034 res!770643) b!1718216))

(assert (= (and b!1718216 res!770644) b!1718217))

(declare-fun m!2123207 () Bool)

(assert (=> b!1718216 m!2123207))

(assert (=> b!1718216 m!2122935))

(declare-fun m!2123209 () Bool)

(assert (=> b!1718216 m!2123209))

(declare-fun m!2123211 () Bool)

(assert (=> d!527034 m!2123211))

(assert (=> d!527034 m!2123179))

(declare-fun m!2123213 () Bool)

(assert (=> d!527034 m!2123213))

(declare-fun m!2123215 () Bool)

(assert (=> b!1718215 m!2123215))

(assert (=> b!1717523 d!527034))

(declare-fun d!527036 () Bool)

(assert (=> d!527036 (= (head!3870 suffix!1421) (h!24178 suffix!1421))))

(assert (=> b!1717523 d!527036))

(declare-fun d!527038 () Bool)

(declare-fun c!281336 () Bool)

(assert (=> d!527038 (= c!281336 ((_ is Node!6245) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))))

(declare-fun e!1098861 () Bool)

(assert (=> d!527038 (= (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))) e!1098861)))

(declare-fun b!1718218 () Bool)

(assert (=> b!1718218 (= e!1098861 (inv!24238 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))))

(declare-fun b!1718219 () Bool)

(declare-fun e!1098862 () Bool)

(assert (=> b!1718219 (= e!1098861 e!1098862)))

(declare-fun res!770645 () Bool)

(assert (=> b!1718219 (= res!770645 (not ((_ is Leaf!9127) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))))))

(assert (=> b!1718219 (=> res!770645 e!1098862)))

(declare-fun b!1718220 () Bool)

(assert (=> b!1718220 (= e!1098862 (inv!24239 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))))))

(assert (= (and d!527038 c!281336) b!1718218))

(assert (= (and d!527038 (not c!281336)) b!1718219))

(assert (= (and b!1718219 (not res!770645)) b!1718220))

(declare-fun m!2123217 () Bool)

(assert (=> b!1718218 m!2123217))

(declare-fun m!2123219 () Bool)

(assert (=> b!1718220 m!2123219))

(assert (=> b!1717564 d!527038))

(declare-fun d!527040 () Bool)

(assert (=> d!527040 (= (inv!24237 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))) (isBalanced!1953 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))))))

(declare-fun bs!402118 () Bool)

(assert (= bs!402118 d!527040))

(declare-fun m!2123221 () Bool)

(assert (=> bs!402118 m!2123221))

(assert (=> tb!101589 d!527040))

(declare-fun d!527042 () Bool)

(declare-fun choose!10439 (Int) Bool)

(assert (=> d!527042 (= (Forall!698 lambda!69020) (choose!10439 lambda!69020))))

(declare-fun bs!402119 () Bool)

(assert (= bs!402119 d!527042))

(declare-fun m!2123223 () Bool)

(assert (=> bs!402119 m!2123223))

(assert (=> b!1717522 d!527042))

(declare-fun d!527044 () Bool)

(declare-fun e!1098865 () Bool)

(assert (=> d!527044 e!1098865))

(declare-fun res!770648 () Bool)

(assert (=> d!527044 (=> (not res!770648) (not e!1098865))))

(assert (=> d!527044 (= res!770648 (semiInverseModEq!1312 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))))))

(declare-fun Unit!32620 () Unit!32611)

(assert (=> d!527044 (= (lemmaInv!530 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) Unit!32620)))

(declare-fun b!1718223 () Bool)

(assert (=> b!1718223 (= e!1098865 (equivClasses!1253 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))))))

(assert (= (and d!527044 res!770648) b!1718223))

(declare-fun m!2123225 () Bool)

(assert (=> d!527044 m!2123225))

(declare-fun m!2123227 () Bool)

(assert (=> b!1718223 m!2123227))

(assert (=> b!1717522 d!527044))

(declare-fun d!527046 () Bool)

(assert (=> d!527046 (= (get!5550 lt!656459) (v!25066 lt!656459))))

(assert (=> b!1717543 d!527046))

(declare-fun b!1718235 () Bool)

(declare-fun e!1098868 () Bool)

(declare-fun tp!490642 () Bool)

(declare-fun tp!490644 () Bool)

(assert (=> b!1718235 (= e!1098868 (and tp!490642 tp!490644))))

(declare-fun b!1718236 () Bool)

(declare-fun tp!490643 () Bool)

(assert (=> b!1718236 (= e!1098868 tp!490643)))

(assert (=> b!1717524 (= tp!490571 e!1098868)))

(declare-fun b!1718237 () Bool)

(declare-fun tp!490645 () Bool)

(declare-fun tp!490646 () Bool)

(assert (=> b!1718237 (= e!1098868 (and tp!490645 tp!490646))))

(declare-fun b!1718234 () Bool)

(assert (=> b!1718234 (= e!1098868 tp_is_empty!7545)))

(assert (= (and b!1717524 ((_ is ElementMatch!4651) (regex!3323 (h!24179 rules!3447)))) b!1718234))

(assert (= (and b!1717524 ((_ is Concat!8065) (regex!3323 (h!24179 rules!3447)))) b!1718235))

(assert (= (and b!1717524 ((_ is Star!4651) (regex!3323 (h!24179 rules!3447)))) b!1718236))

(assert (= (and b!1717524 ((_ is Union!4651) (regex!3323 (h!24179 rules!3447)))) b!1718237))

(declare-fun b!1718242 () Bool)

(declare-fun e!1098871 () Bool)

(declare-fun tp!490649 () Bool)

(assert (=> b!1718242 (= e!1098871 (and tp_is_empty!7545 tp!490649))))

(assert (=> b!1717530 (= tp!490564 e!1098871)))

(assert (= (and b!1717530 ((_ is Cons!18777) (originalCharacters!4137 token!523))) b!1718242))

(declare-fun b!1718243 () Bool)

(declare-fun e!1098872 () Bool)

(declare-fun tp!490650 () Bool)

(assert (=> b!1718243 (= e!1098872 (and tp_is_empty!7545 tp!490650))))

(assert (=> b!1717519 (= tp!490562 e!1098872)))

(assert (= (and b!1717519 ((_ is Cons!18777) (t!159018 suffix!1421))) b!1718243))

(declare-fun b!1718245 () Bool)

(declare-fun e!1098873 () Bool)

(declare-fun tp!490651 () Bool)

(declare-fun tp!490653 () Bool)

(assert (=> b!1718245 (= e!1098873 (and tp!490651 tp!490653))))

(declare-fun b!1718246 () Bool)

(declare-fun tp!490652 () Bool)

(assert (=> b!1718246 (= e!1098873 tp!490652)))

(assert (=> b!1717528 (= tp!490561 e!1098873)))

(declare-fun b!1718247 () Bool)

(declare-fun tp!490654 () Bool)

(declare-fun tp!490655 () Bool)

(assert (=> b!1718247 (= e!1098873 (and tp!490654 tp!490655))))

(declare-fun b!1718244 () Bool)

(assert (=> b!1718244 (= e!1098873 tp_is_empty!7545)))

(assert (= (and b!1717528 ((_ is ElementMatch!4651) (regex!3323 (rule!5263 token!523)))) b!1718244))

(assert (= (and b!1717528 ((_ is Concat!8065) (regex!3323 (rule!5263 token!523)))) b!1718245))

(assert (= (and b!1717528 ((_ is Star!4651) (regex!3323 (rule!5263 token!523)))) b!1718246))

(assert (= (and b!1717528 ((_ is Union!4651) (regex!3323 (rule!5263 token!523)))) b!1718247))

(declare-fun b!1718256 () Bool)

(declare-fun tp!490663 () Bool)

(declare-fun tp!490664 () Bool)

(declare-fun e!1098878 () Bool)

(assert (=> b!1718256 (= e!1098878 (and (inv!24236 (left!14976 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))) tp!490664 (inv!24236 (right!15306 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))) tp!490663))))

(declare-fun b!1718258 () Bool)

(declare-fun e!1098879 () Bool)

(declare-fun tp!490662 () Bool)

(assert (=> b!1718258 (= e!1098879 tp!490662)))

(declare-fun b!1718257 () Bool)

(declare-fun inv!24243 (IArray!12495) Bool)

(assert (=> b!1718257 (= e!1098878 (and (inv!24243 (xs!9121 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))) e!1098879))))

(assert (=> b!1717561 (= tp!490575 (and (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468)))) e!1098878))))

(assert (= (and b!1717561 ((_ is Node!6245) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))) b!1718256))

(assert (= b!1718257 b!1718258))

(assert (= (and b!1717561 ((_ is Leaf!9127) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (dynLambda!8600 (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) lt!656468))))) b!1718257))

(declare-fun m!2123229 () Bool)

(assert (=> b!1718256 m!2123229))

(declare-fun m!2123231 () Bool)

(assert (=> b!1718256 m!2123231))

(declare-fun m!2123233 () Bool)

(assert (=> b!1718257 m!2123233))

(assert (=> b!1717561 m!2122239))

(declare-fun b!1718260 () Bool)

(declare-fun e!1098880 () Bool)

(declare-fun tp!490665 () Bool)

(declare-fun tp!490667 () Bool)

(assert (=> b!1718260 (= e!1098880 (and tp!490665 tp!490667))))

(declare-fun b!1718261 () Bool)

(declare-fun tp!490666 () Bool)

(assert (=> b!1718261 (= e!1098880 tp!490666)))

(assert (=> b!1717539 (= tp!490568 e!1098880)))

(declare-fun b!1718262 () Bool)

(declare-fun tp!490668 () Bool)

(declare-fun tp!490669 () Bool)

(assert (=> b!1718262 (= e!1098880 (and tp!490668 tp!490669))))

(declare-fun b!1718259 () Bool)

(assert (=> b!1718259 (= e!1098880 tp_is_empty!7545)))

(assert (= (and b!1717539 ((_ is ElementMatch!4651) (regex!3323 rule!422))) b!1718259))

(assert (= (and b!1717539 ((_ is Concat!8065) (regex!3323 rule!422))) b!1718260))

(assert (= (and b!1717539 ((_ is Star!4651) (regex!3323 rule!422))) b!1718261))

(assert (= (and b!1717539 ((_ is Union!4651) (regex!3323 rule!422))) b!1718262))

(declare-fun tp!490672 () Bool)

(declare-fun tp!490671 () Bool)

(declare-fun b!1718263 () Bool)

(declare-fun e!1098881 () Bool)

(assert (=> b!1718263 (= e!1098881 (and (inv!24236 (left!14976 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))) tp!490672 (inv!24236 (right!15306 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))) tp!490671))))

(declare-fun b!1718265 () Bool)

(declare-fun e!1098882 () Bool)

(declare-fun tp!490670 () Bool)

(assert (=> b!1718265 (= e!1098882 tp!490670)))

(declare-fun b!1718264 () Bool)

(assert (=> b!1718264 (= e!1098881 (and (inv!24243 (xs!9121 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))) e!1098882))))

(assert (=> b!1717564 (= tp!490576 (and (inv!24236 (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462))))) e!1098881))))

(assert (= (and b!1717564 ((_ is Node!6245) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))) b!1718263))

(assert (= b!1718264 b!1718265))

(assert (= (and b!1717564 ((_ is Leaf!9127) (c!281217 (dynLambda!8599 (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))) (value!104378 (_1!10641 lt!656462)))))) b!1718264))

(declare-fun m!2123235 () Bool)

(assert (=> b!1718263 m!2123235))

(declare-fun m!2123237 () Bool)

(assert (=> b!1718263 m!2123237))

(declare-fun m!2123239 () Bool)

(assert (=> b!1718264 m!2123239))

(assert (=> b!1717564 m!2122245))

(declare-fun b!1718276 () Bool)

(declare-fun b_free!46731 () Bool)

(declare-fun b_next!47435 () Bool)

(assert (=> b!1718276 (= b_free!46731 (not b_next!47435))))

(declare-fun tb!101655 () Bool)

(declare-fun t!159070 () Bool)

(assert (=> (and b!1718276 (= (toValue!4830 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159070) tb!101655))

(declare-fun result!122174 () Bool)

(assert (= result!122174 result!122096))

(assert (=> d!526922 t!159070))

(assert (=> d!526806 t!159070))

(assert (=> b!1717527 t!159070))

(declare-fun t!159072 () Bool)

(declare-fun tb!101657 () Bool)

(assert (=> (and b!1718276 (= (toValue!4830 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159072) tb!101657))

(declare-fun result!122176 () Bool)

(assert (= result!122176 result!122110))

(assert (=> d!526792 t!159072))

(declare-fun tb!101659 () Bool)

(declare-fun t!159074 () Bool)

(assert (=> (and b!1718276 (= (toValue!4830 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159074) tb!101659))

(declare-fun result!122178 () Bool)

(assert (= result!122178 result!122116))

(assert (=> d!526828 t!159074))

(assert (=> d!526792 t!159070))

(declare-fun b_and!125073 () Bool)

(declare-fun tp!490684 () Bool)

(assert (=> b!1718276 (= tp!490684 (and (=> t!159070 result!122174) (=> t!159074 result!122178) (=> t!159072 result!122176) b_and!125073))))

(declare-fun b_free!46733 () Bool)

(declare-fun b_next!47437 () Bool)

(assert (=> b!1718276 (= b_free!46733 (not b_next!47437))))

(declare-fun tb!101661 () Bool)

(declare-fun t!159076 () Bool)

(assert (=> (and b!1718276 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 token!523)))) t!159076) tb!101661))

(declare-fun result!122180 () Bool)

(assert (= result!122180 result!122128))

(assert (=> b!1717850 t!159076))

(declare-fun tb!101663 () Bool)

(declare-fun t!159078 () Bool)

(assert (=> (and b!1718276 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159078) tb!101663))

(declare-fun result!122182 () Bool)

(assert (= result!122182 result!122088))

(assert (=> d!526922 t!159078))

(assert (=> d!526978 t!159076))

(declare-fun t!159080 () Bool)

(declare-fun tb!101665 () Bool)

(assert (=> (and b!1718276 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462))))) t!159080) tb!101665))

(declare-fun result!122184 () Bool)

(assert (= result!122184 result!122104))

(assert (=> d!526824 t!159080))

(assert (=> b!1717527 t!159078))

(assert (=> b!1717533 t!159080))

(declare-fun b_and!125075 () Bool)

(declare-fun tp!490681 () Bool)

(assert (=> b!1718276 (= tp!490681 (and (=> t!159076 result!122180) (=> t!159078 result!122182) (=> t!159080 result!122184) b_and!125075))))

(declare-fun e!1098891 () Bool)

(assert (=> b!1718276 (= e!1098891 (and tp!490684 tp!490681))))

(declare-fun tp!490682 () Bool)

(declare-fun b!1718275 () Bool)

(declare-fun e!1098894 () Bool)

(assert (=> b!1718275 (= e!1098894 (and tp!490682 (inv!24229 (tag!3627 (h!24179 (t!159019 rules!3447)))) (inv!24234 (transformation!3323 (h!24179 (t!159019 rules!3447)))) e!1098891))))

(declare-fun b!1718274 () Bool)

(declare-fun e!1098892 () Bool)

(declare-fun tp!490683 () Bool)

(assert (=> b!1718274 (= e!1098892 (and e!1098894 tp!490683))))

(assert (=> b!1717521 (= tp!490567 e!1098892)))

(assert (= b!1718275 b!1718276))

(assert (= b!1718274 b!1718275))

(assert (= (and b!1717521 ((_ is Cons!18778) (t!159019 rules!3447))) b!1718274))

(declare-fun m!2123241 () Bool)

(assert (=> b!1718275 m!2123241))

(declare-fun m!2123243 () Bool)

(assert (=> b!1718275 m!2123243))

(declare-fun b_lambda!54379 () Bool)

(assert (= b_lambda!54347 (or (and b!1717540 b_free!46717) (and b!1717545 b_free!46721 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) (and b!1717542 b_free!46725 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) (and b!1718276 b_free!46733 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) b_lambda!54379)))

(declare-fun b_lambda!54381 () Bool)

(assert (= b_lambda!54331 (or (and b!1717540 b_free!46717 (= (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717545 b_free!46721 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717542 b_free!46725 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1718276 b_free!46733 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) b_lambda!54381)))

(declare-fun b_lambda!54383 () Bool)

(assert (= b_lambda!54329 (or (and b!1717540 b_free!46715 (= (toValue!4830 (transformation!3323 (rule!5263 token!523))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717545 b_free!46719 (= (toValue!4830 (transformation!3323 (h!24179 rules!3447))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717542 b_free!46723 (= (toValue!4830 (transformation!3323 rule!422)) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1718276 b_free!46731 (= (toValue!4830 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toValue!4830 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) b_lambda!54383)))

(declare-fun b_lambda!54385 () Bool)

(assert (= b_lambda!54365 (or (and b!1717540 b_free!46717) (and b!1717545 b_free!46721 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) (and b!1717542 b_free!46725 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) (and b!1718276 b_free!46733 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 token!523))))) b_lambda!54385)))

(declare-fun b_lambda!54387 () Bool)

(assert (= b_lambda!54327 (or (and b!1717540 b_free!46717 (= (toChars!4689 (transformation!3323 (rule!5263 token!523))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717545 b_free!46721 (= (toChars!4689 (transformation!3323 (h!24179 rules!3447))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1717542 b_free!46725 (= (toChars!4689 (transformation!3323 rule!422)) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) (and b!1718276 b_free!46733 (= (toChars!4689 (transformation!3323 (h!24179 (t!159019 rules!3447)))) (toChars!4689 (transformation!3323 (rule!5263 (_1!10641 lt!656462)))))) b_lambda!54387)))

(check-sat (not b!1717736) (not bm!109672) (not b_next!47421) (not b!1717850) (not d!527024) (not d!526896) (not b!1718243) (not d!526944) (not b!1718043) (not b!1717667) (not b!1718065) (not b!1718263) (not bm!109665) (not b!1718256) b_and!125025 (not bm!109673) (not b_next!47427) (not b_lambda!54333) (not b!1717805) (not b!1718218) (not d!526822) (not b_lambda!54341) (not b!1718091) (not b!1718086) (not b!1717859) (not b!1717820) (not b_next!47435) (not b!1718275) (not d!526988) (not b_lambda!54383) (not d!526942) (not b!1717638) (not b!1717866) (not b!1718260) (not b!1718199) b_and!125059 (not d!527032) (not b!1717854) b_and!125057 (not b_lambda!54379) (not b!1718018) (not b!1718205) (not d!526978) (not b_next!47425) (not b!1718083) (not b_lambda!54353) (not b!1718264) (not b!1718245) (not b!1718265) (not b!1718082) (not b!1718093) (not b!1717730) (not d!526976) (not b!1718236) (not b_lambda!54335) (not d!526912) (not b!1717674) (not bm!109666) (not d!526814) (not b!1717853) (not b!1717871) (not d!527044) (not b_lambda!54351) (not b!1717929) (not b!1717842) (not b!1717729) (not d!526820) (not b!1718215) (not d!527008) (not d!527006) (not d!526802) (not b!1717928) (not d!527034) (not b!1717935) (not b!1718206) (not b!1717851) (not d!527042) (not b!1718237) (not b!1718011) (not b!1717680) b_and!125061 (not b!1717841) b_and!125021 (not b!1717737) (not d!526870) (not b!1718191) (not b_next!47429) b_and!125075 (not d!526990) (not b!1717733) (not d!526922) (not d!527030) (not b!1717934) (not d!526898) (not tb!101613) (not d!526918) (not b!1717732) (not b!1717870) (not b!1718212) (not b!1717883) (not d!526884) (not b!1717564) (not b!1718016) (not b!1717876) (not d!526790) b_and!125073 (not d!526892) (not d!526890) (not b!1718235) (not tb!101625) (not b!1717731) (not b!1717734) b_and!125023 (not b!1718213) (not b!1717635) (not b!1718261) (not b!1718085) (not b!1718078) (not b!1718274) (not d!526904) (not b!1718013) (not b_lambda!54385) (not b!1718080) (not b!1718084) (not b!1718192) (not d!526792) (not b!1717812) (not b!1718061) (not d!527040) (not b!1718201) (not b!1718066) (not bm!109661) (not b!1718087) (not b!1718088) (not b_lambda!54381) (not d!526980) (not b!1717561) (not b!1717882) (not d!526848) (not b!1718015) (not b_lambda!54387) (not d!526856) (not b!1717877) (not b!1718257) (not b!1717673) (not b!1717668) (not b!1718223) (not d!526920) (not b!1718089) (not d!526992) (not b!1717679) (not b!1718207) (not b!1718010) (not b_lambda!54337) (not b!1718216) (not b!1718012) (not d!526830) (not b!1717823) (not b!1717898) (not b!1718258) (not b!1717852) (not d!526818) (not b!1718202) (not b!1717633) (not tb!101607) (not b!1717840) (not b_next!47419) (not b_lambda!54339) (not b!1718246) (not b!1718262) (not b!1718220) (not b!1717933) (not d!527028) (not d!527018) (not b!1717932) (not b!1718190) (not b!1718042) (not b!1717865) (not b!1718247) tp_is_empty!7545 (not b!1717860) (not b!1718014) (not d!527020) (not d!526850) (not b!1718242) (not d!526824) (not b!1718090) (not b!1718079) (not b_next!47423) (not b!1718198) (not d!526804) (not d!526866) (not b_next!47437))
(check-sat (not b_next!47421) (not b_next!47435) b_and!125059 b_and!125057 (not b_next!47425) b_and!125073 b_and!125023 (not b_next!47419) b_and!125025 (not b_next!47427) b_and!125061 b_and!125021 (not b_next!47429) b_and!125075 (not b_next!47423) (not b_next!47437))
