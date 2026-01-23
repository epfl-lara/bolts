; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209614 () Bool)

(assert start!209614)

(declare-fun b!2160471 () Bool)

(declare-fun e!1382391 () Bool)

(declare-fun e!1382384 () Bool)

(assert (=> b!2160471 (= e!1382391 (not e!1382384))))

(declare-fun res!930931 () Bool)

(assert (=> b!2160471 (=> res!930931 e!1382384)))

(declare-fun e!1382383 () Bool)

(assert (=> b!2160471 (= res!930931 e!1382383)))

(declare-fun res!930922 () Bool)

(assert (=> b!2160471 (=> (not res!930922) (not e!1382383))))

(declare-fun lt!803459 () Bool)

(assert (=> b!2160471 (= res!930922 (not lt!803459))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12096 0))(
  ( (C!12097 (val!7034 Int)) )
))
(declare-datatypes ((Regex!5975 0))(
  ( (ElementMatch!5975 (c!341916 C!12096)) (Concat!10277 (regOne!12462 Regex!5975) (regTwo!12462 Regex!5975)) (EmptyExpr!5975) (Star!5975 (reg!6304 Regex!5975)) (EmptyLang!5975) (Union!5975 (regOne!12463 Regex!5975) (regTwo!12463 Regex!5975)) )
))
(declare-datatypes ((List!25138 0))(
  ( (Nil!25054) (Cons!25054 (h!30455 Regex!5975) (t!197686 List!25138)) )
))
(declare-datatypes ((Context!3090 0))(
  ( (Context!3091 (exprs!2045 List!25138)) )
))
(declare-fun z!4055 () (InoxSet Context!3090))

(declare-datatypes ((List!25139 0))(
  ( (Nil!25055) (Cons!25055 (h!30456 C!12096) (t!197687 List!25139)) )
))
(declare-fun lt!803476 () List!25139)

(declare-fun matchZipper!103 ((InoxSet Context!3090) List!25139) Bool)

(assert (=> b!2160471 (= lt!803459 (matchZipper!103 z!4055 lt!803476))))

(declare-fun e!1382377 () Bool)

(assert (=> b!2160471 e!1382377))

(declare-fun res!930920 () Bool)

(assert (=> b!2160471 (=> res!930920 e!1382377)))

(declare-datatypes ((tuple2!24766 0))(
  ( (tuple2!24767 (_1!14753 List!25139) (_2!14753 List!25139)) )
))
(declare-fun lt!803458 () tuple2!24766)

(declare-fun isEmpty!14365 (List!25139) Bool)

(assert (=> b!2160471 (= res!930920 (isEmpty!14365 (_1!14753 lt!803458)))))

(declare-fun r!12534 () Regex!5975)

(declare-fun lt!803470 () List!25139)

(declare-fun findLongestMatchInner!604 (Regex!5975 List!25139 Int List!25139 List!25139 Int) tuple2!24766)

(declare-fun size!19577 (List!25139) Int)

(assert (=> b!2160471 (= lt!803458 (findLongestMatchInner!604 r!12534 Nil!25055 (size!19577 Nil!25055) lt!803470 lt!803470 (size!19577 lt!803470)))))

(declare-datatypes ((Unit!38101 0))(
  ( (Unit!38102) )
))
(declare-fun lt!803468 () Unit!38101)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!585 (Regex!5975 List!25139) Unit!38101)

(assert (=> b!2160471 (= lt!803468 (longestMatchIsAcceptedByMatchOrIsEmpty!585 r!12534 lt!803470))))

(declare-fun e!1382389 () Bool)

(assert (=> b!2160471 e!1382389))

(declare-fun res!930928 () Bool)

(assert (=> b!2160471 (=> res!930928 e!1382389)))

(declare-fun lt!803464 () Int)

(assert (=> b!2160471 (= res!930928 (<= lt!803464 0))))

(declare-fun lt!803480 () Int)

(declare-fun lt!803457 () Int)

(declare-datatypes ((IArray!16227 0))(
  ( (IArray!16228 (innerList!8171 List!25139)) )
))
(declare-datatypes ((Conc!8111 0))(
  ( (Node!8111 (left!19277 Conc!8111) (right!19607 Conc!8111) (csize!16452 Int) (cheight!8322 Int)) (Leaf!11866 (xs!11053 IArray!16227) (csize!16453 Int)) (Empty!8111) )
))
(declare-datatypes ((BalanceConc!15984 0))(
  ( (BalanceConc!15985 (c!341917 Conc!8111)) )
))
(declare-fun totalInput!977 () BalanceConc!15984)

(declare-fun lt!803463 () Int)

(declare-fun furthestNullablePosition!162 ((InoxSet Context!3090) Int BalanceConc!15984 Int Int) Int)

(assert (=> b!2160471 (= lt!803464 (+ 1 (- (furthestNullablePosition!162 z!4055 lt!803480 totalInput!977 lt!803457 lt!803463) lt!803480)))))

(declare-fun lt!803461 () Unit!38101)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!10 ((InoxSet Context!3090) Int BalanceConc!15984 Int) Unit!38101)

(assert (=> b!2160471 (= lt!803461 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!10 z!4055 lt!803480 totalInput!977 lt!803463))))

(declare-fun e!1382381 () Int)

(assert (=> b!2160471 (= lt!803463 e!1382381)))

(declare-fun c!341915 () Bool)

(declare-fun nullableZipper!256 ((InoxSet Context!3090)) Bool)

(assert (=> b!2160471 (= c!341915 (nullableZipper!256 z!4055))))

(declare-fun lt!803475 () List!25139)

(declare-fun isPrefix!2095 (List!25139 List!25139) Bool)

(declare-fun take!189 (List!25139 Int) List!25139)

(assert (=> b!2160471 (isPrefix!2095 (take!189 lt!803475 lt!803480) lt!803475)))

(declare-fun lt!803462 () Unit!38101)

(declare-fun lemmaTakeIsPrefix!12 (List!25139 Int) Unit!38101)

(assert (=> b!2160471 (= lt!803462 (lemmaTakeIsPrefix!12 lt!803475 lt!803480))))

(declare-fun lt!803477 () tuple2!24766)

(declare-fun lt!803472 () List!25139)

(assert (=> b!2160471 (isPrefix!2095 (_1!14753 lt!803477) lt!803472)))

(declare-fun lt!803479 () Unit!38101)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1378 (List!25139 List!25139) Unit!38101)

(assert (=> b!2160471 (= lt!803479 (lemmaConcatTwoListThenFirstIsPrefix!1378 (_1!14753 lt!803477) (_2!14753 lt!803477)))))

(declare-fun lt!803473 () List!25139)

(assert (=> b!2160471 (isPrefix!2095 lt!803476 lt!803473)))

(declare-fun lt!803478 () Unit!38101)

(declare-fun lt!803466 () List!25139)

(assert (=> b!2160471 (= lt!803478 (lemmaConcatTwoListThenFirstIsPrefix!1378 lt!803476 lt!803466))))

(declare-fun b!2160472 () Bool)

(declare-fun e!1382378 () Bool)

(declare-fun tp!673943 () Bool)

(declare-fun tp!673945 () Bool)

(assert (=> b!2160472 (= e!1382378 (and tp!673943 tp!673945))))

(declare-fun setElem!18034 () Context!3090)

(declare-fun tp!673941 () Bool)

(declare-fun setNonEmpty!18034 () Bool)

(declare-fun setRes!18034 () Bool)

(declare-fun e!1382380 () Bool)

(declare-fun inv!33190 (Context!3090) Bool)

(assert (=> setNonEmpty!18034 (= setRes!18034 (and tp!673941 (inv!33190 setElem!18034) e!1382380))))

(declare-fun setRest!18034 () (InoxSet Context!3090))

(assert (=> setNonEmpty!18034 (= z!4055 ((_ map or) (store ((as const (Array Context!3090 Bool)) false) setElem!18034 true) setRest!18034))))

(declare-fun b!2160473 () Bool)

(declare-fun e!1382385 () Bool)

(assert (=> b!2160473 (= e!1382385 true)))

(declare-fun lt!803469 () List!25139)

(declare-fun lt!803471 () Int)

(declare-fun drop!1198 (List!25139 Int) List!25139)

(assert (=> b!2160473 (= lt!803469 (take!189 (drop!1198 lt!803475 lt!803480) lt!803471))))

(declare-fun b!2160474 () Bool)

(declare-datatypes ((tuple2!24768 0))(
  ( (tuple2!24769 (_1!14754 BalanceConc!15984) (_2!14754 BalanceConc!15984)) )
))
(declare-fun lt!803465 () tuple2!24768)

(declare-fun isEmpty!14366 (BalanceConc!15984) Bool)

(assert (=> b!2160474 (= e!1382383 (not (isEmpty!14366 (_1!14754 lt!803465))))))

(declare-fun b!2160475 () Bool)

(declare-fun e!1382387 () Bool)

(declare-fun tp!673940 () Bool)

(declare-fun inv!33191 (Conc!8111) Bool)

(assert (=> b!2160475 (= e!1382387 (and (inv!33191 (c!341917 totalInput!977)) tp!673940))))

(declare-fun b!2160476 () Bool)

(declare-fun e!1382390 () Bool)

(assert (=> b!2160476 (= e!1382390 (not (isEmpty!14365 (_1!14753 lt!803477))))))

(declare-fun b!2160477 () Bool)

(declare-fun e!1382386 () Bool)

(declare-fun input!5540 () BalanceConc!15984)

(declare-fun tp!673939 () Bool)

(assert (=> b!2160477 (= e!1382386 (and (inv!33191 (c!341917 input!5540)) tp!673939))))

(declare-fun b!2160478 () Bool)

(declare-fun tp_is_empty!9557 () Bool)

(assert (=> b!2160478 (= e!1382378 tp_is_empty!9557)))

(declare-fun setIsEmpty!18034 () Bool)

(assert (=> setIsEmpty!18034 setRes!18034))

(declare-fun b!2160479 () Bool)

(declare-fun matchR!2736 (Regex!5975 List!25139) Bool)

(assert (=> b!2160479 (= e!1382377 (matchR!2736 r!12534 (_1!14753 lt!803458)))))

(declare-fun b!2160480 () Bool)

(declare-fun e!1382388 () Bool)

(declare-fun e!1382382 () Bool)

(assert (=> b!2160480 (= e!1382388 e!1382382)))

(declare-fun res!930921 () Bool)

(assert (=> b!2160480 (=> (not res!930921) (not e!1382382))))

(declare-datatypes ((List!25140 0))(
  ( (Nil!25056) (Cons!25056 (h!30457 Context!3090) (t!197688 List!25140)) )
))
(declare-fun lt!803460 () List!25140)

(declare-fun unfocusZipper!82 (List!25140) Regex!5975)

(assert (=> b!2160480 (= res!930921 (= (unfocusZipper!82 lt!803460) r!12534))))

(declare-fun toList!1158 ((InoxSet Context!3090)) List!25140)

(assert (=> b!2160480 (= lt!803460 (toList!1158 z!4055))))

(declare-fun b!2160481 () Bool)

(assert (=> b!2160481 (= e!1382381 (- lt!803480 1))))

(declare-fun b!2160482 () Bool)

(assert (=> b!2160482 (= e!1382381 (- 1))))

(declare-fun res!930925 () Bool)

(assert (=> start!209614 (=> (not res!930925) (not e!1382388))))

(declare-fun validRegex!2251 (Regex!5975) Bool)

(assert (=> start!209614 (= res!930925 (validRegex!2251 r!12534))))

(assert (=> start!209614 e!1382388))

(assert (=> start!209614 e!1382378))

(declare-fun inv!33192 (BalanceConc!15984) Bool)

(assert (=> start!209614 (and (inv!33192 totalInput!977) e!1382387)))

(assert (=> start!209614 (and (inv!33192 input!5540) e!1382386)))

(declare-fun condSetEmpty!18034 () Bool)

(assert (=> start!209614 (= condSetEmpty!18034 (= z!4055 ((as const (Array Context!3090 Bool)) false)))))

(assert (=> start!209614 setRes!18034))

(declare-fun b!2160483 () Bool)

(declare-fun tp!673942 () Bool)

(assert (=> b!2160483 (= e!1382378 tp!673942)))

(declare-fun b!2160484 () Bool)

(declare-fun tp!673944 () Bool)

(declare-fun tp!673938 () Bool)

(assert (=> b!2160484 (= e!1382378 (and tp!673944 tp!673938))))

(declare-fun b!2160485 () Bool)

(declare-fun e!1382376 () Bool)

(assert (=> b!2160485 (= e!1382382 e!1382376)))

(declare-fun res!930924 () Bool)

(assert (=> b!2160485 (=> (not res!930924) (not e!1382376))))

(declare-fun isSuffix!642 (List!25139 List!25139) Bool)

(assert (=> b!2160485 (= res!930924 (isSuffix!642 lt!803470 lt!803475))))

(declare-fun list!9594 (BalanceConc!15984) List!25139)

(assert (=> b!2160485 (= lt!803475 (list!9594 totalInput!977))))

(assert (=> b!2160485 (= lt!803470 (list!9594 input!5540))))

(declare-fun b!2160486 () Bool)

(declare-fun e!1382375 () Bool)

(assert (=> b!2160486 (= e!1382384 e!1382375)))

(declare-fun res!930930 () Bool)

(assert (=> b!2160486 (=> res!930930 e!1382375)))

(assert (=> b!2160486 (= res!930930 e!1382390)))

(declare-fun res!930926 () Bool)

(assert (=> b!2160486 (=> (not res!930926) (not e!1382390))))

(declare-fun lt!803474 () Bool)

(assert (=> b!2160486 (= res!930926 (not lt!803474))))

(assert (=> b!2160486 (= lt!803474 (matchR!2736 r!12534 (_1!14753 lt!803477)))))

(declare-fun b!2160487 () Bool)

(declare-fun e!1382379 () Bool)

(assert (=> b!2160487 (= e!1382376 e!1382379)))

(declare-fun res!930929 () Bool)

(assert (=> b!2160487 (=> (not res!930929) (not e!1382379))))

(assert (=> b!2160487 (= res!930929 (= lt!803473 lt!803470))))

(declare-fun ++!6332 (List!25139 List!25139) List!25139)

(assert (=> b!2160487 (= lt!803473 (++!6332 lt!803476 lt!803466))))

(assert (=> b!2160487 (= lt!803466 (list!9594 (_2!14754 lt!803465)))))

(assert (=> b!2160487 (= lt!803476 (list!9594 (_1!14754 lt!803465)))))

(declare-fun findLongestMatch!529 (Regex!5975 List!25139) tuple2!24766)

(assert (=> b!2160487 (= lt!803477 (findLongestMatch!529 r!12534 lt!803470))))

(declare-fun size!19578 (BalanceConc!15984) Int)

(assert (=> b!2160487 (= lt!803480 (- lt!803457 (size!19578 input!5540)))))

(assert (=> b!2160487 (= lt!803457 (size!19578 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!24 ((InoxSet Context!3090) BalanceConc!15984 BalanceConc!15984) tuple2!24768)

(assert (=> b!2160487 (= lt!803465 (findLongestMatchZipperSequenceV3!24 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160488 () Bool)

(assert (=> b!2160488 (= e!1382389 (matchZipper!103 z!4055 (take!189 (drop!1198 lt!803475 lt!803480) lt!803464)))))

(declare-fun b!2160489 () Bool)

(assert (=> b!2160489 (= e!1382379 e!1382391)))

(declare-fun res!930927 () Bool)

(assert (=> b!2160489 (=> (not res!930927) (not e!1382391))))

(assert (=> b!2160489 (= res!930927 (= lt!803472 lt!803470))))

(assert (=> b!2160489 (= lt!803472 (++!6332 (_1!14753 lt!803477) (_2!14753 lt!803477)))))

(declare-fun b!2160490 () Bool)

(assert (=> b!2160490 (= e!1382375 e!1382385)))

(declare-fun res!930923 () Bool)

(assert (=> b!2160490 (=> res!930923 e!1382385)))

(assert (=> b!2160490 (= res!930923 (<= lt!803471 (size!19578 (_1!14754 lt!803465))))))

(assert (=> b!2160490 (= lt!803471 (size!19577 (_1!14753 lt!803477)))))

(assert (=> b!2160490 (= (matchR!2736 r!12534 lt!803476) lt!803459)))

(declare-fun lt!803467 () Unit!38101)

(declare-fun theoremZipperRegexEquiv!19 ((InoxSet Context!3090) List!25140 Regex!5975 List!25139) Unit!38101)

(assert (=> b!2160490 (= lt!803467 (theoremZipperRegexEquiv!19 z!4055 lt!803460 r!12534 lt!803476))))

(assert (=> b!2160490 (= lt!803474 (matchZipper!103 z!4055 (_1!14753 lt!803477)))))

(declare-fun lt!803456 () Unit!38101)

(assert (=> b!2160490 (= lt!803456 (theoremZipperRegexEquiv!19 z!4055 lt!803460 r!12534 (_1!14753 lt!803477)))))

(declare-fun b!2160491 () Bool)

(declare-fun tp!673946 () Bool)

(assert (=> b!2160491 (= e!1382380 tp!673946)))

(assert (= (and start!209614 res!930925) b!2160480))

(assert (= (and b!2160480 res!930921) b!2160485))

(assert (= (and b!2160485 res!930924) b!2160487))

(assert (= (and b!2160487 res!930929) b!2160489))

(assert (= (and b!2160489 res!930927) b!2160471))

(assert (= (and b!2160471 c!341915) b!2160481))

(assert (= (and b!2160471 (not c!341915)) b!2160482))

(assert (= (and b!2160471 (not res!930928)) b!2160488))

(assert (= (and b!2160471 (not res!930920)) b!2160479))

(assert (= (and b!2160471 res!930922) b!2160474))

(assert (= (and b!2160471 (not res!930931)) b!2160486))

(assert (= (and b!2160486 res!930926) b!2160476))

(assert (= (and b!2160486 (not res!930930)) b!2160490))

(assert (= (and b!2160490 (not res!930923)) b!2160473))

(get-info :version)

(assert (= (and start!209614 ((_ is ElementMatch!5975) r!12534)) b!2160478))

(assert (= (and start!209614 ((_ is Concat!10277) r!12534)) b!2160472))

(assert (= (and start!209614 ((_ is Star!5975) r!12534)) b!2160483))

(assert (= (and start!209614 ((_ is Union!5975) r!12534)) b!2160484))

(assert (= start!209614 b!2160475))

(assert (= start!209614 b!2160477))

(assert (= (and start!209614 condSetEmpty!18034) setIsEmpty!18034))

(assert (= (and start!209614 (not condSetEmpty!18034)) setNonEmpty!18034))

(assert (= setNonEmpty!18034 b!2160491))

(declare-fun m!2600473 () Bool)

(assert (=> b!2160474 m!2600473))

(declare-fun m!2600475 () Bool)

(assert (=> start!209614 m!2600475))

(declare-fun m!2600477 () Bool)

(assert (=> start!209614 m!2600477))

(declare-fun m!2600479 () Bool)

(assert (=> start!209614 m!2600479))

(declare-fun m!2600481 () Bool)

(assert (=> b!2160485 m!2600481))

(declare-fun m!2600483 () Bool)

(assert (=> b!2160485 m!2600483))

(declare-fun m!2600485 () Bool)

(assert (=> b!2160485 m!2600485))

(declare-fun m!2600487 () Bool)

(assert (=> b!2160471 m!2600487))

(declare-fun m!2600489 () Bool)

(assert (=> b!2160471 m!2600489))

(declare-fun m!2600491 () Bool)

(assert (=> b!2160471 m!2600491))

(declare-fun m!2600493 () Bool)

(assert (=> b!2160471 m!2600493))

(declare-fun m!2600495 () Bool)

(assert (=> b!2160471 m!2600495))

(assert (=> b!2160471 m!2600489))

(declare-fun m!2600497 () Bool)

(assert (=> b!2160471 m!2600497))

(declare-fun m!2600499 () Bool)

(assert (=> b!2160471 m!2600499))

(declare-fun m!2600501 () Bool)

(assert (=> b!2160471 m!2600501))

(assert (=> b!2160471 m!2600501))

(declare-fun m!2600503 () Bool)

(assert (=> b!2160471 m!2600503))

(declare-fun m!2600505 () Bool)

(assert (=> b!2160471 m!2600505))

(declare-fun m!2600507 () Bool)

(assert (=> b!2160471 m!2600507))

(declare-fun m!2600509 () Bool)

(assert (=> b!2160471 m!2600509))

(declare-fun m!2600511 () Bool)

(assert (=> b!2160471 m!2600511))

(assert (=> b!2160471 m!2600503))

(declare-fun m!2600513 () Bool)

(assert (=> b!2160471 m!2600513))

(declare-fun m!2600515 () Bool)

(assert (=> b!2160471 m!2600515))

(declare-fun m!2600517 () Bool)

(assert (=> b!2160471 m!2600517))

(declare-fun m!2600519 () Bool)

(assert (=> setNonEmpty!18034 m!2600519))

(declare-fun m!2600521 () Bool)

(assert (=> b!2160479 m!2600521))

(declare-fun m!2600523 () Bool)

(assert (=> b!2160475 m!2600523))

(declare-fun m!2600525 () Bool)

(assert (=> b!2160480 m!2600525))

(declare-fun m!2600527 () Bool)

(assert (=> b!2160480 m!2600527))

(declare-fun m!2600529 () Bool)

(assert (=> b!2160486 m!2600529))

(declare-fun m!2600531 () Bool)

(assert (=> b!2160476 m!2600531))

(declare-fun m!2600533 () Bool)

(assert (=> b!2160477 m!2600533))

(declare-fun m!2600535 () Bool)

(assert (=> b!2160488 m!2600535))

(assert (=> b!2160488 m!2600535))

(declare-fun m!2600537 () Bool)

(assert (=> b!2160488 m!2600537))

(assert (=> b!2160488 m!2600537))

(declare-fun m!2600539 () Bool)

(assert (=> b!2160488 m!2600539))

(declare-fun m!2600541 () Bool)

(assert (=> b!2160490 m!2600541))

(declare-fun m!2600543 () Bool)

(assert (=> b!2160490 m!2600543))

(declare-fun m!2600545 () Bool)

(assert (=> b!2160490 m!2600545))

(declare-fun m!2600547 () Bool)

(assert (=> b!2160490 m!2600547))

(declare-fun m!2600549 () Bool)

(assert (=> b!2160490 m!2600549))

(declare-fun m!2600551 () Bool)

(assert (=> b!2160490 m!2600551))

(declare-fun m!2600553 () Bool)

(assert (=> b!2160489 m!2600553))

(assert (=> b!2160473 m!2600535))

(assert (=> b!2160473 m!2600535))

(declare-fun m!2600555 () Bool)

(assert (=> b!2160473 m!2600555))

(declare-fun m!2600557 () Bool)

(assert (=> b!2160487 m!2600557))

(declare-fun m!2600559 () Bool)

(assert (=> b!2160487 m!2600559))

(declare-fun m!2600561 () Bool)

(assert (=> b!2160487 m!2600561))

(declare-fun m!2600563 () Bool)

(assert (=> b!2160487 m!2600563))

(declare-fun m!2600565 () Bool)

(assert (=> b!2160487 m!2600565))

(declare-fun m!2600567 () Bool)

(assert (=> b!2160487 m!2600567))

(declare-fun m!2600569 () Bool)

(assert (=> b!2160487 m!2600569))

(check-sat (not b!2160489) (not b!2160475) tp_is_empty!9557 (not b!2160484) (not b!2160472) (not b!2160477) (not b!2160488) (not b!2160471) (not b!2160491) (not start!209614) (not b!2160487) (not b!2160474) (not b!2160485) (not b!2160486) (not setNonEmpty!18034) (not b!2160473) (not b!2160483) (not b!2160490) (not b!2160480) (not b!2160479) (not b!2160476))
(check-sat)
