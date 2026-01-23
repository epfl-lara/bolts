; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!599522 () Bool)

(assert start!599522)

(declare-fun b!5861545 () Bool)

(assert (=> b!5861545 true))

(declare-fun b!5861523 () Bool)

(declare-fun res!2466379 () Bool)

(declare-fun e!3593897 () Bool)

(assert (=> b!5861523 (=> res!2466379 e!3593897)))

(declare-datatypes ((C!32126 0))(
  ( (C!32127 (val!25765 Int)) )
))
(declare-datatypes ((Regex!15928 0))(
  ( (ElementMatch!15928 (c!1039903 C!32126)) (Concat!24773 (regOne!32368 Regex!15928) (regTwo!32368 Regex!15928)) (EmptyExpr!15928) (Star!15928 (reg!16257 Regex!15928)) (EmptyLang!15928) (Union!15928 (regOne!32369 Regex!15928) (regTwo!32369 Regex!15928)) )
))
(declare-datatypes ((List!64083 0))(
  ( (Nil!63959) (Cons!63959 (h!70407 Regex!15928) (t!377456 List!64083)) )
))
(declare-datatypes ((Context!10624 0))(
  ( (Context!10625 (exprs!5812 List!64083)) )
))
(declare-datatypes ((List!64084 0))(
  ( (Nil!63960) (Cons!63960 (h!70408 Context!10624) (t!377457 List!64084)) )
))
(declare-fun zl!343 () List!64084)

(assert (=> b!5861523 (= res!2466379 (not (is-Cons!63959 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun res!2466378 () Bool)

(declare-fun e!3593896 () Bool)

(assert (=> start!599522 (=> (not res!2466378) (not e!3593896))))

(declare-fun r!7292 () Regex!15928)

(declare-fun validRegex!7664 (Regex!15928) Bool)

(assert (=> start!599522 (= res!2466378 (validRegex!7664 r!7292))))

(assert (=> start!599522 e!3593896))

(declare-fun e!3593898 () Bool)

(assert (=> start!599522 e!3593898))

(declare-fun condSetEmpty!39753 () Bool)

(declare-fun z!1189 () (Set Context!10624))

(assert (=> start!599522 (= condSetEmpty!39753 (= z!1189 (as set.empty (Set Context!10624))))))

(declare-fun setRes!39753 () Bool)

(assert (=> start!599522 setRes!39753))

(declare-fun e!3593911 () Bool)

(assert (=> start!599522 e!3593911))

(declare-fun e!3593900 () Bool)

(assert (=> start!599522 e!3593900))

(declare-fun b!5861524 () Bool)

(declare-fun tp_is_empty!41109 () Bool)

(assert (=> b!5861524 (= e!3593898 tp_is_empty!41109)))

(declare-fun b!5861525 () Bool)

(declare-fun tp!1621391 () Bool)

(declare-fun tp!1621393 () Bool)

(assert (=> b!5861525 (= e!3593898 (and tp!1621391 tp!1621393))))

(declare-fun b!5861526 () Bool)

(declare-fun e!3593905 () Bool)

(assert (=> b!5861526 (= e!3593897 e!3593905)))

(declare-fun res!2466388 () Bool)

(assert (=> b!5861526 (=> res!2466388 e!3593905)))

(declare-datatypes ((List!64085 0))(
  ( (Nil!63961) (Cons!63961 (h!70409 C!32126) (t!377458 List!64085)) )
))
(declare-fun s!2326 () List!64085)

(declare-fun lt!2305517 () Bool)

(declare-fun lt!2305533 () Bool)

(declare-fun lt!2305519 () Bool)

(assert (=> b!5861526 (= res!2466388 (or (not (= lt!2305519 (or lt!2305533 lt!2305517))) (is-Nil!63961 s!2326)))))

(declare-fun matchRSpec!3029 (Regex!15928 List!64085) Bool)

(assert (=> b!5861526 (= lt!2305517 (matchRSpec!3029 (regTwo!32369 r!7292) s!2326))))

(declare-fun matchR!8111 (Regex!15928 List!64085) Bool)

(assert (=> b!5861526 (= lt!2305517 (matchR!8111 (regTwo!32369 r!7292) s!2326))))

(declare-datatypes ((Unit!157127 0))(
  ( (Unit!157128) )
))
(declare-fun lt!2305527 () Unit!157127)

(declare-fun mainMatchTheorem!3029 (Regex!15928 List!64085) Unit!157127)

(assert (=> b!5861526 (= lt!2305527 (mainMatchTheorem!3029 (regTwo!32369 r!7292) s!2326))))

(assert (=> b!5861526 (= lt!2305533 (matchRSpec!3029 (regOne!32369 r!7292) s!2326))))

(assert (=> b!5861526 (= lt!2305533 (matchR!8111 (regOne!32369 r!7292) s!2326))))

(declare-fun lt!2305538 () Unit!157127)

(assert (=> b!5861526 (= lt!2305538 (mainMatchTheorem!3029 (regOne!32369 r!7292) s!2326))))

(declare-fun b!5861527 () Bool)

(declare-fun e!3593906 () Bool)

(declare-fun e!3593904 () Bool)

(assert (=> b!5861527 (= e!3593906 e!3593904)))

(declare-fun res!2466387 () Bool)

(assert (=> b!5861527 (=> res!2466387 e!3593904)))

(declare-fun lt!2305532 () Bool)

(declare-fun lt!2305521 () Bool)

(declare-fun lt!2305524 () Bool)

(assert (=> b!5861527 (= res!2466387 (or (not (= lt!2305524 lt!2305521)) (not (= lt!2305524 lt!2305532))))))

(assert (=> b!5861527 (= lt!2305521 lt!2305524)))

(declare-fun e!3593902 () Bool)

(assert (=> b!5861527 (= lt!2305524 e!3593902)))

(declare-fun res!2466383 () Bool)

(assert (=> b!5861527 (=> res!2466383 e!3593902)))

(declare-fun lt!2305523 () Bool)

(assert (=> b!5861527 (= res!2466383 lt!2305523)))

(declare-fun lt!2305537 () (Set Context!10624))

(declare-fun matchZipper!1994 ((Set Context!10624) List!64085) Bool)

(assert (=> b!5861527 (= lt!2305523 (matchZipper!1994 lt!2305537 (t!377458 s!2326)))))

(declare-fun lt!2305534 () Unit!157127)

(declare-fun lt!2305528 () (Set Context!10624))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!829 ((Set Context!10624) (Set Context!10624) List!64085) Unit!157127)

(assert (=> b!5861527 (= lt!2305534 (lemmaZipperConcatMatchesSameAsBothZippers!829 lt!2305537 lt!2305528 (t!377458 s!2326)))))

(declare-fun b!5861528 () Bool)

(declare-fun res!2466380 () Bool)

(assert (=> b!5861528 (=> (not res!2466380) (not e!3593896))))

(declare-fun toList!9712 ((Set Context!10624)) List!64084)

(assert (=> b!5861528 (= res!2466380 (= (toList!9712 z!1189) zl!343))))

(declare-fun b!5861529 () Bool)

(declare-fun res!2466375 () Bool)

(assert (=> b!5861529 (=> res!2466375 e!3593897)))

(declare-fun generalisedConcat!1525 (List!64083) Regex!15928)

(assert (=> b!5861529 (= res!2466375 (not (= r!7292 (generalisedConcat!1525 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5861530 () Bool)

(declare-fun e!3593908 () Bool)

(assert (=> b!5861530 (= e!3593904 e!3593908)))

(declare-fun res!2466377 () Bool)

(assert (=> b!5861530 (=> res!2466377 e!3593908)))

(declare-fun lt!2305525 () Bool)

(assert (=> b!5861530 (= res!2466377 (not (= lt!2305525 lt!2305523)))))

(declare-fun lt!2305530 () (Set Context!10624))

(assert (=> b!5861530 (= lt!2305525 (matchZipper!1994 lt!2305530 s!2326))))

(declare-fun lt!2305529 () Context!10624)

(declare-fun lt!2305531 () (Set Context!10624))

(declare-fun lambda!320501 () Int)

(declare-fun flatMap!1459 ((Set Context!10624) Int) (Set Context!10624))

(declare-fun derivationStepZipperUp!1120 (Context!10624 C!32126) (Set Context!10624))

(assert (=> b!5861530 (= (flatMap!1459 lt!2305531 lambda!320501) (derivationStepZipperUp!1120 lt!2305529 (h!70409 s!2326)))))

(declare-fun lt!2305535 () Unit!157127)

(declare-fun lemmaFlatMapOnSingletonSet!987 ((Set Context!10624) Context!10624 Int) Unit!157127)

(assert (=> b!5861530 (= lt!2305535 (lemmaFlatMapOnSingletonSet!987 lt!2305531 lt!2305529 lambda!320501))))

(declare-fun lt!2305536 () Context!10624)

(assert (=> b!5861530 (= (flatMap!1459 lt!2305530 lambda!320501) (derivationStepZipperUp!1120 lt!2305536 (h!70409 s!2326)))))

(declare-fun lt!2305514 () Unit!157127)

(assert (=> b!5861530 (= lt!2305514 (lemmaFlatMapOnSingletonSet!987 lt!2305530 lt!2305536 lambda!320501))))

(declare-fun lt!2305516 () (Set Context!10624))

(assert (=> b!5861530 (= lt!2305516 (derivationStepZipperUp!1120 lt!2305529 (h!70409 s!2326)))))

(declare-fun lt!2305522 () (Set Context!10624))

(assert (=> b!5861530 (= lt!2305522 (derivationStepZipperUp!1120 lt!2305536 (h!70409 s!2326)))))

(assert (=> b!5861530 (= lt!2305531 (set.insert lt!2305529 (as set.empty (Set Context!10624))))))

(assert (=> b!5861530 (= lt!2305529 (Context!10625 (Cons!63959 (regTwo!32369 r!7292) Nil!63959)))))

(assert (=> b!5861530 (= lt!2305530 (set.insert lt!2305536 (as set.empty (Set Context!10624))))))

(assert (=> b!5861530 (= lt!2305536 (Context!10625 (Cons!63959 (regOne!32369 r!7292) Nil!63959)))))

(declare-fun b!5861531 () Bool)

(declare-fun e!3593910 () Bool)

(declare-fun tp!1621390 () Bool)

(assert (=> b!5861531 (= e!3593910 tp!1621390)))

(declare-fun b!5861532 () Bool)

(declare-fun e!3593907 () Bool)

(declare-fun e!3593901 () Bool)

(assert (=> b!5861532 (= e!3593907 e!3593901)))

(declare-fun res!2466376 () Bool)

(assert (=> b!5861532 (=> res!2466376 e!3593901)))

(declare-fun lt!2305526 () (Set Context!10624))

(declare-fun lt!2305518 () (Set Context!10624))

(assert (=> b!5861532 (= res!2466376 (not (= lt!2305526 lt!2305518)))))

(assert (=> b!5861532 (= lt!2305518 (set.union lt!2305537 lt!2305528))))

(declare-fun lt!2305515 () Context!10624)

(declare-fun derivationStepZipperDown!1194 (Regex!15928 Context!10624 C!32126) (Set Context!10624))

(assert (=> b!5861532 (= lt!2305528 (derivationStepZipperDown!1194 (regTwo!32369 r!7292) lt!2305515 (h!70409 s!2326)))))

(assert (=> b!5861532 (= lt!2305537 (derivationStepZipperDown!1194 (regOne!32369 r!7292) lt!2305515 (h!70409 s!2326)))))

(declare-fun b!5861533 () Bool)

(declare-fun tp!1621397 () Bool)

(assert (=> b!5861533 (= e!3593900 (and tp_is_empty!41109 tp!1621397))))

(declare-fun b!5861534 () Bool)

(assert (=> b!5861534 (= e!3593905 e!3593907)))

(declare-fun res!2466389 () Bool)

(assert (=> b!5861534 (=> res!2466389 e!3593907)))

(declare-fun lt!2305513 () (Set Context!10624))

(assert (=> b!5861534 (= res!2466389 (not (= lt!2305513 lt!2305526)))))

(assert (=> b!5861534 (= lt!2305526 (derivationStepZipperDown!1194 r!7292 lt!2305515 (h!70409 s!2326)))))

(assert (=> b!5861534 (= lt!2305515 (Context!10625 Nil!63959))))

(assert (=> b!5861534 (= lt!2305513 (derivationStepZipperUp!1120 (Context!10625 (Cons!63959 r!7292 Nil!63959)) (h!70409 s!2326)))))

(declare-fun b!5861535 () Bool)

(declare-fun tp!1621392 () Bool)

(assert (=> b!5861535 (= e!3593898 tp!1621392)))

(declare-fun b!5861536 () Bool)

(declare-fun e!3593899 () Bool)

(declare-fun tp!1621389 () Bool)

(declare-fun inv!83068 (Context!10624) Bool)

(assert (=> b!5861536 (= e!3593911 (and (inv!83068 (h!70408 zl!343)) e!3593899 tp!1621389))))

(declare-fun b!5861537 () Bool)

(declare-fun e!3593909 () Bool)

(assert (=> b!5861537 (= e!3593909 e!3593906)))

(declare-fun res!2466374 () Bool)

(assert (=> b!5861537 (=> res!2466374 e!3593906)))

(assert (=> b!5861537 (= res!2466374 (not (= lt!2305521 lt!2305532)))))

(assert (=> b!5861537 (= lt!2305532 (matchZipper!1994 z!1189 s!2326))))

(assert (=> b!5861537 (= lt!2305521 (matchZipper!1994 lt!2305518 (t!377458 s!2326)))))

(declare-fun b!5861538 () Bool)

(declare-fun res!2466384 () Bool)

(assert (=> b!5861538 (=> res!2466384 e!3593897)))

(assert (=> b!5861538 (= res!2466384 (or (is-EmptyExpr!15928 r!7292) (is-EmptyLang!15928 r!7292) (is-ElementMatch!15928 r!7292) (not (is-Union!15928 r!7292))))))

(declare-fun setIsEmpty!39753 () Bool)

(assert (=> setIsEmpty!39753 setRes!39753))

(declare-fun b!5861539 () Bool)

(assert (=> b!5861539 (= e!3593902 (matchZipper!1994 lt!2305528 (t!377458 s!2326)))))

(declare-fun b!5861540 () Bool)

(declare-fun e!3593903 () Bool)

(assert (=> b!5861540 (= e!3593908 e!3593903)))

(declare-fun res!2466391 () Bool)

(assert (=> b!5861540 (=> res!2466391 e!3593903)))

(declare-fun lt!2305520 () Bool)

(assert (=> b!5861540 (= res!2466391 (not (= lt!2305520 (matchZipper!1994 lt!2305528 (t!377458 s!2326)))))))

(assert (=> b!5861540 (= lt!2305520 (matchZipper!1994 lt!2305531 s!2326))))

(declare-fun b!5861541 () Bool)

(declare-fun res!2466373 () Bool)

(assert (=> b!5861541 (=> (not res!2466373) (not e!3593896))))

(declare-fun unfocusZipper!1670 (List!64084) Regex!15928)

(assert (=> b!5861541 (= res!2466373 (= r!7292 (unfocusZipper!1670 zl!343)))))

(declare-fun b!5861542 () Bool)

(declare-fun res!2466390 () Bool)

(assert (=> b!5861542 (=> res!2466390 e!3593897)))

(declare-fun generalisedUnion!1772 (List!64083) Regex!15928)

(declare-fun unfocusZipperList!1349 (List!64084) List!64083)

(assert (=> b!5861542 (= res!2466390 (not (= r!7292 (generalisedUnion!1772 (unfocusZipperList!1349 zl!343)))))))

(declare-fun b!5861543 () Bool)

(declare-fun tp!1621394 () Bool)

(assert (=> b!5861543 (= e!3593899 tp!1621394)))

(declare-fun b!5861544 () Bool)

(declare-fun res!2466382 () Bool)

(assert (=> b!5861544 (=> res!2466382 e!3593903)))

(assert (=> b!5861544 (= res!2466382 (not (= (or lt!2305525 lt!2305520) lt!2305532)))))

(assert (=> b!5861545 (= e!3593901 e!3593909)))

(declare-fun res!2466386 () Bool)

(assert (=> b!5861545 (=> res!2466386 e!3593909)))

(declare-fun derivationStepZipper!1927 ((Set Context!10624) C!32126) (Set Context!10624))

(assert (=> b!5861545 (= res!2466386 (not (= (derivationStepZipper!1927 z!1189 (h!70409 s!2326)) lt!2305518)))))

(assert (=> b!5861545 (= (flatMap!1459 z!1189 lambda!320501) (derivationStepZipperUp!1120 (h!70408 zl!343) (h!70409 s!2326)))))

(declare-fun lt!2305539 () Unit!157127)

(assert (=> b!5861545 (= lt!2305539 (lemmaFlatMapOnSingletonSet!987 z!1189 (h!70408 zl!343) lambda!320501))))

(declare-fun b!5861546 () Bool)

(declare-fun tp!1621396 () Bool)

(declare-fun tp!1621398 () Bool)

(assert (=> b!5861546 (= e!3593898 (and tp!1621396 tp!1621398))))

(declare-fun b!5861547 () Bool)

(assert (=> b!5861547 (= e!3593896 (not e!3593897))))

(declare-fun res!2466381 () Bool)

(assert (=> b!5861547 (=> res!2466381 e!3593897)))

(assert (=> b!5861547 (= res!2466381 (not (is-Cons!63960 zl!343)))))

(assert (=> b!5861547 (= lt!2305519 (matchRSpec!3029 r!7292 s!2326))))

(assert (=> b!5861547 (= lt!2305519 (matchR!8111 r!7292 s!2326))))

(declare-fun lt!2305540 () Unit!157127)

(assert (=> b!5861547 (= lt!2305540 (mainMatchTheorem!3029 r!7292 s!2326))))

(declare-fun b!5861548 () Bool)

(assert (=> b!5861548 (= e!3593903 (inv!83068 lt!2305536))))

(declare-fun setNonEmpty!39753 () Bool)

(declare-fun tp!1621395 () Bool)

(declare-fun setElem!39753 () Context!10624)

(assert (=> setNonEmpty!39753 (= setRes!39753 (and tp!1621395 (inv!83068 setElem!39753) e!3593910))))

(declare-fun setRest!39753 () (Set Context!10624))

(assert (=> setNonEmpty!39753 (= z!1189 (set.union (set.insert setElem!39753 (as set.empty (Set Context!10624))) setRest!39753))))

(declare-fun b!5861549 () Bool)

(declare-fun res!2466385 () Bool)

(assert (=> b!5861549 (=> res!2466385 e!3593897)))

(declare-fun isEmpty!35819 (List!64084) Bool)

(assert (=> b!5861549 (= res!2466385 (not (isEmpty!35819 (t!377457 zl!343))))))

(assert (= (and start!599522 res!2466378) b!5861528))

(assert (= (and b!5861528 res!2466380) b!5861541))

(assert (= (and b!5861541 res!2466373) b!5861547))

(assert (= (and b!5861547 (not res!2466381)) b!5861549))

(assert (= (and b!5861549 (not res!2466385)) b!5861529))

(assert (= (and b!5861529 (not res!2466375)) b!5861523))

(assert (= (and b!5861523 (not res!2466379)) b!5861542))

(assert (= (and b!5861542 (not res!2466390)) b!5861538))

(assert (= (and b!5861538 (not res!2466384)) b!5861526))

(assert (= (and b!5861526 (not res!2466388)) b!5861534))

(assert (= (and b!5861534 (not res!2466389)) b!5861532))

(assert (= (and b!5861532 (not res!2466376)) b!5861545))

(assert (= (and b!5861545 (not res!2466386)) b!5861537))

(assert (= (and b!5861537 (not res!2466374)) b!5861527))

(assert (= (and b!5861527 (not res!2466383)) b!5861539))

(assert (= (and b!5861527 (not res!2466387)) b!5861530))

(assert (= (and b!5861530 (not res!2466377)) b!5861540))

(assert (= (and b!5861540 (not res!2466391)) b!5861544))

(assert (= (and b!5861544 (not res!2466382)) b!5861548))

(assert (= (and start!599522 (is-ElementMatch!15928 r!7292)) b!5861524))

(assert (= (and start!599522 (is-Concat!24773 r!7292)) b!5861546))

(assert (= (and start!599522 (is-Star!15928 r!7292)) b!5861535))

(assert (= (and start!599522 (is-Union!15928 r!7292)) b!5861525))

(assert (= (and start!599522 condSetEmpty!39753) setIsEmpty!39753))

(assert (= (and start!599522 (not condSetEmpty!39753)) setNonEmpty!39753))

(assert (= setNonEmpty!39753 b!5861531))

(assert (= b!5861536 b!5861543))

(assert (= (and start!599522 (is-Cons!63960 zl!343)) b!5861536))

(assert (= (and start!599522 (is-Cons!63961 s!2326)) b!5861533))

(declare-fun m!6778396 () Bool)

(assert (=> b!5861530 m!6778396))

(declare-fun m!6778398 () Bool)

(assert (=> b!5861530 m!6778398))

(declare-fun m!6778400 () Bool)

(assert (=> b!5861530 m!6778400))

(declare-fun m!6778402 () Bool)

(assert (=> b!5861530 m!6778402))

(declare-fun m!6778404 () Bool)

(assert (=> b!5861530 m!6778404))

(declare-fun m!6778406 () Bool)

(assert (=> b!5861530 m!6778406))

(declare-fun m!6778408 () Bool)

(assert (=> b!5861530 m!6778408))

(declare-fun m!6778410 () Bool)

(assert (=> b!5861530 m!6778410))

(declare-fun m!6778412 () Bool)

(assert (=> b!5861530 m!6778412))

(declare-fun m!6778414 () Bool)

(assert (=> b!5861528 m!6778414))

(declare-fun m!6778416 () Bool)

(assert (=> b!5861542 m!6778416))

(assert (=> b!5861542 m!6778416))

(declare-fun m!6778418 () Bool)

(assert (=> b!5861542 m!6778418))

(declare-fun m!6778420 () Bool)

(assert (=> b!5861541 m!6778420))

(declare-fun m!6778422 () Bool)

(assert (=> b!5861547 m!6778422))

(declare-fun m!6778424 () Bool)

(assert (=> b!5861547 m!6778424))

(declare-fun m!6778426 () Bool)

(assert (=> b!5861547 m!6778426))

(declare-fun m!6778428 () Bool)

(assert (=> b!5861536 m!6778428))

(declare-fun m!6778430 () Bool)

(assert (=> b!5861545 m!6778430))

(declare-fun m!6778432 () Bool)

(assert (=> b!5861545 m!6778432))

(declare-fun m!6778434 () Bool)

(assert (=> b!5861545 m!6778434))

(declare-fun m!6778436 () Bool)

(assert (=> b!5861545 m!6778436))

(declare-fun m!6778438 () Bool)

(assert (=> b!5861548 m!6778438))

(declare-fun m!6778440 () Bool)

(assert (=> b!5861539 m!6778440))

(declare-fun m!6778442 () Bool)

(assert (=> setNonEmpty!39753 m!6778442))

(declare-fun m!6778444 () Bool)

(assert (=> b!5861527 m!6778444))

(declare-fun m!6778446 () Bool)

(assert (=> b!5861527 m!6778446))

(declare-fun m!6778448 () Bool)

(assert (=> b!5861549 m!6778448))

(declare-fun m!6778450 () Bool)

(assert (=> b!5861529 m!6778450))

(declare-fun m!6778452 () Bool)

(assert (=> b!5861532 m!6778452))

(declare-fun m!6778454 () Bool)

(assert (=> b!5861532 m!6778454))

(declare-fun m!6778456 () Bool)

(assert (=> b!5861537 m!6778456))

(declare-fun m!6778458 () Bool)

(assert (=> b!5861537 m!6778458))

(declare-fun m!6778460 () Bool)

(assert (=> b!5861534 m!6778460))

(declare-fun m!6778462 () Bool)

(assert (=> b!5861534 m!6778462))

(declare-fun m!6778464 () Bool)

(assert (=> start!599522 m!6778464))

(declare-fun m!6778466 () Bool)

(assert (=> b!5861526 m!6778466))

(declare-fun m!6778468 () Bool)

(assert (=> b!5861526 m!6778468))

(declare-fun m!6778470 () Bool)

(assert (=> b!5861526 m!6778470))

(declare-fun m!6778472 () Bool)

(assert (=> b!5861526 m!6778472))

(declare-fun m!6778474 () Bool)

(assert (=> b!5861526 m!6778474))

(declare-fun m!6778476 () Bool)

(assert (=> b!5861526 m!6778476))

(assert (=> b!5861540 m!6778440))

(declare-fun m!6778478 () Bool)

(assert (=> b!5861540 m!6778478))

(push 1)

(assert (not b!5861546))

(assert (not b!5861540))

(assert (not b!5861543))

(assert (not b!5861534))

(assert (not b!5861537))

(assert (not b!5861528))

(assert (not b!5861535))

(assert (not b!5861532))

(assert (not b!5861549))

(assert (not b!5861539))

(assert (not b!5861525))

(assert (not start!599522))

(assert (not setNonEmpty!39753))

(assert (not b!5861541))

(assert (not b!5861533))

(assert tp_is_empty!41109)

(assert (not b!5861536))

(assert (not b!5861531))

(assert (not b!5861527))

(assert (not b!5861526))

(assert (not b!5861529))

(assert (not b!5861530))

(assert (not b!5861548))

(assert (not b!5861545))

(assert (not b!5861542))

(assert (not b!5861547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1840808 () Bool)

(declare-fun lt!2305627 () Regex!15928)

(assert (=> d!1840808 (validRegex!7664 lt!2305627)))

(assert (=> d!1840808 (= lt!2305627 (generalisedUnion!1772 (unfocusZipperList!1349 zl!343)))))

(assert (=> d!1840808 (= (unfocusZipper!1670 zl!343) lt!2305627)))

(declare-fun bs!1381040 () Bool)

(assert (= bs!1381040 d!1840808))

(declare-fun m!6778564 () Bool)

(assert (=> bs!1381040 m!6778564))

(assert (=> bs!1381040 m!6778416))

(assert (=> bs!1381040 m!6778416))

(assert (=> bs!1381040 m!6778418))

(assert (=> b!5861541 d!1840808))

(declare-fun bm!459736 () Bool)

(declare-fun call!459743 () Bool)

(declare-fun c!1039917 () Bool)

(assert (=> bm!459736 (= call!459743 (validRegex!7664 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))

(declare-fun b!5861654 () Bool)

(declare-fun e!3593979 () Bool)

(assert (=> b!5861654 (= e!3593979 call!459743)))

(declare-fun b!5861655 () Bool)

(declare-fun res!2466463 () Bool)

(declare-fun e!3593974 () Bool)

(assert (=> b!5861655 (=> (not res!2466463) (not e!3593974))))

(declare-fun call!459741 () Bool)

(assert (=> b!5861655 (= res!2466463 call!459741)))

(declare-fun e!3593976 () Bool)

(assert (=> b!5861655 (= e!3593976 e!3593974)))

(declare-fun b!5861656 () Bool)

(declare-fun e!3593975 () Bool)

(declare-fun call!459742 () Bool)

(assert (=> b!5861656 (= e!3593975 call!459742)))

(declare-fun bm!459737 () Bool)

(declare-fun c!1039916 () Bool)

(assert (=> bm!459737 (= call!459742 (validRegex!7664 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))

(declare-fun bm!459738 () Bool)

(assert (=> bm!459738 (= call!459741 call!459742)))

(declare-fun b!5861657 () Bool)

(declare-fun e!3593980 () Bool)

(assert (=> b!5861657 (= e!3593980 e!3593975)))

(declare-fun res!2466460 () Bool)

(declare-fun nullable!5928 (Regex!15928) Bool)

(assert (=> b!5861657 (= res!2466460 (not (nullable!5928 (reg!16257 r!7292))))))

(assert (=> b!5861657 (=> (not res!2466460) (not e!3593975))))

(declare-fun b!5861658 () Bool)

(assert (=> b!5861658 (= e!3593974 call!459743)))

(declare-fun b!5861659 () Bool)

(assert (=> b!5861659 (= e!3593980 e!3593976)))

(assert (=> b!5861659 (= c!1039917 (is-Union!15928 r!7292))))

(declare-fun b!5861653 () Bool)

(declare-fun e!3593977 () Bool)

(assert (=> b!5861653 (= e!3593977 e!3593980)))

(assert (=> b!5861653 (= c!1039916 (is-Star!15928 r!7292))))

(declare-fun d!1840810 () Bool)

(declare-fun res!2466459 () Bool)

(assert (=> d!1840810 (=> res!2466459 e!3593977)))

(assert (=> d!1840810 (= res!2466459 (is-ElementMatch!15928 r!7292))))

(assert (=> d!1840810 (= (validRegex!7664 r!7292) e!3593977)))

(declare-fun b!5861660 () Bool)

(declare-fun res!2466461 () Bool)

(declare-fun e!3593978 () Bool)

(assert (=> b!5861660 (=> res!2466461 e!3593978)))

(assert (=> b!5861660 (= res!2466461 (not (is-Concat!24773 r!7292)))))

(assert (=> b!5861660 (= e!3593976 e!3593978)))

(declare-fun b!5861661 () Bool)

(assert (=> b!5861661 (= e!3593978 e!3593979)))

(declare-fun res!2466462 () Bool)

(assert (=> b!5861661 (=> (not res!2466462) (not e!3593979))))

(assert (=> b!5861661 (= res!2466462 call!459741)))

(assert (= (and d!1840810 (not res!2466459)) b!5861653))

(assert (= (and b!5861653 c!1039916) b!5861657))

(assert (= (and b!5861653 (not c!1039916)) b!5861659))

(assert (= (and b!5861657 res!2466460) b!5861656))

(assert (= (and b!5861659 c!1039917) b!5861655))

(assert (= (and b!5861659 (not c!1039917)) b!5861660))

(assert (= (and b!5861655 res!2466463) b!5861658))

(assert (= (and b!5861660 (not res!2466461)) b!5861661))

(assert (= (and b!5861661 res!2466462) b!5861654))

(assert (= (or b!5861658 b!5861654) bm!459736))

(assert (= (or b!5861655 b!5861661) bm!459738))

(assert (= (or b!5861656 bm!459738) bm!459737))

(declare-fun m!6778566 () Bool)

(assert (=> bm!459736 m!6778566))

(declare-fun m!6778568 () Bool)

(assert (=> bm!459737 m!6778568))

(declare-fun m!6778570 () Bool)

(assert (=> b!5861657 m!6778570))

(assert (=> start!599522 d!1840810))

(declare-fun d!1840812 () Bool)

(declare-fun c!1039929 () Bool)

(assert (=> d!1840812 (= c!1039929 (and (is-ElementMatch!15928 (regTwo!32369 r!7292)) (= (c!1039903 (regTwo!32369 r!7292)) (h!70409 s!2326))))))

(declare-fun e!3593995 () (Set Context!10624))

(assert (=> d!1840812 (= (derivationStepZipperDown!1194 (regTwo!32369 r!7292) lt!2305515 (h!70409 s!2326)) e!3593995)))

(declare-fun b!5861684 () Bool)

(declare-fun e!3593997 () (Set Context!10624))

(declare-fun e!3593996 () (Set Context!10624))

(assert (=> b!5861684 (= e!3593997 e!3593996)))

(declare-fun c!1039930 () Bool)

(assert (=> b!5861684 (= c!1039930 (is-Concat!24773 (regTwo!32369 r!7292)))))

(declare-fun bm!459751 () Bool)

(declare-fun call!459758 () (Set Context!10624))

(declare-fun call!459760 () (Set Context!10624))

(assert (=> bm!459751 (= call!459758 call!459760)))

(declare-fun b!5861685 () Bool)

(declare-fun c!1039928 () Bool)

(declare-fun e!3593994 () Bool)

(assert (=> b!5861685 (= c!1039928 e!3593994)))

(declare-fun res!2466466 () Bool)

(assert (=> b!5861685 (=> (not res!2466466) (not e!3593994))))

(assert (=> b!5861685 (= res!2466466 (is-Concat!24773 (regTwo!32369 r!7292)))))

(declare-fun e!3593993 () (Set Context!10624))

(assert (=> b!5861685 (= e!3593993 e!3593997)))

(declare-fun bm!459752 () Bool)

(declare-fun call!459759 () List!64083)

(declare-fun call!459761 () List!64083)

(assert (=> bm!459752 (= call!459759 call!459761)))

(declare-fun b!5861686 () Bool)

(declare-fun call!459757 () (Set Context!10624))

(assert (=> b!5861686 (= e!3593993 (set.union call!459760 call!459757))))

(declare-fun bm!459753 () Bool)

(declare-fun $colon$colon!1833 (List!64083 Regex!15928) List!64083)

(assert (=> bm!459753 (= call!459761 ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1039928 c!1039930) (regTwo!32368 (regTwo!32369 r!7292)) (regTwo!32369 r!7292))))))

(declare-fun b!5861687 () Bool)

(declare-fun e!3593998 () (Set Context!10624))

(assert (=> b!5861687 (= e!3593998 (as set.empty (Set Context!10624)))))

(declare-fun b!5861688 () Bool)

(declare-fun call!459756 () (Set Context!10624))

(assert (=> b!5861688 (= e!3593998 call!459756)))

(declare-fun c!1039932 () Bool)

(declare-fun bm!459754 () Bool)

(assert (=> bm!459754 (= call!459760 (derivationStepZipperDown!1194 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))) (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759)) (h!70409 s!2326)))))

(declare-fun b!5861689 () Bool)

(assert (=> b!5861689 (= e!3593995 (set.insert lt!2305515 (as set.empty (Set Context!10624))))))

(declare-fun b!5861690 () Bool)

(assert (=> b!5861690 (= e!3593995 e!3593993)))

(assert (=> b!5861690 (= c!1039932 (is-Union!15928 (regTwo!32369 r!7292)))))

(declare-fun bm!459755 () Bool)

(assert (=> bm!459755 (= call!459756 call!459758)))

(declare-fun bm!459756 () Bool)

(assert (=> bm!459756 (= call!459757 (derivationStepZipperDown!1194 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))) (ite c!1039932 lt!2305515 (Context!10625 call!459761)) (h!70409 s!2326)))))

(declare-fun b!5861691 () Bool)

(assert (=> b!5861691 (= e!3593997 (set.union call!459757 call!459758))))

(declare-fun b!5861692 () Bool)

(declare-fun c!1039931 () Bool)

(assert (=> b!5861692 (= c!1039931 (is-Star!15928 (regTwo!32369 r!7292)))))

(assert (=> b!5861692 (= e!3593996 e!3593998)))

(declare-fun b!5861693 () Bool)

(assert (=> b!5861693 (= e!3593994 (nullable!5928 (regOne!32368 (regTwo!32369 r!7292))))))

(declare-fun b!5861694 () Bool)

(assert (=> b!5861694 (= e!3593996 call!459756)))

(assert (= (and d!1840812 c!1039929) b!5861689))

(assert (= (and d!1840812 (not c!1039929)) b!5861690))

(assert (= (and b!5861690 c!1039932) b!5861686))

(assert (= (and b!5861690 (not c!1039932)) b!5861685))

(assert (= (and b!5861685 res!2466466) b!5861693))

(assert (= (and b!5861685 c!1039928) b!5861691))

(assert (= (and b!5861685 (not c!1039928)) b!5861684))

(assert (= (and b!5861684 c!1039930) b!5861694))

(assert (= (and b!5861684 (not c!1039930)) b!5861692))

(assert (= (and b!5861692 c!1039931) b!5861688))

(assert (= (and b!5861692 (not c!1039931)) b!5861687))

(assert (= (or b!5861694 b!5861688) bm!459752))

(assert (= (or b!5861694 b!5861688) bm!459755))

(assert (= (or b!5861691 bm!459752) bm!459753))

(assert (= (or b!5861691 bm!459755) bm!459751))

(assert (= (or b!5861686 b!5861691) bm!459756))

(assert (= (or b!5861686 bm!459751) bm!459754))

(declare-fun m!6778572 () Bool)

(assert (=> b!5861689 m!6778572))

(declare-fun m!6778574 () Bool)

(assert (=> b!5861693 m!6778574))

(declare-fun m!6778576 () Bool)

(assert (=> bm!459756 m!6778576))

(declare-fun m!6778578 () Bool)

(assert (=> bm!459753 m!6778578))

(declare-fun m!6778580 () Bool)

(assert (=> bm!459754 m!6778580))

(assert (=> b!5861532 d!1840812))

(declare-fun d!1840814 () Bool)

(declare-fun c!1039934 () Bool)

(assert (=> d!1840814 (= c!1039934 (and (is-ElementMatch!15928 (regOne!32369 r!7292)) (= (c!1039903 (regOne!32369 r!7292)) (h!70409 s!2326))))))

(declare-fun e!3594001 () (Set Context!10624))

(assert (=> d!1840814 (= (derivationStepZipperDown!1194 (regOne!32369 r!7292) lt!2305515 (h!70409 s!2326)) e!3594001)))

(declare-fun b!5861695 () Bool)

(declare-fun e!3594003 () (Set Context!10624))

(declare-fun e!3594002 () (Set Context!10624))

(assert (=> b!5861695 (= e!3594003 e!3594002)))

(declare-fun c!1039935 () Bool)

(assert (=> b!5861695 (= c!1039935 (is-Concat!24773 (regOne!32369 r!7292)))))

(declare-fun bm!459757 () Bool)

(declare-fun call!459764 () (Set Context!10624))

(declare-fun call!459766 () (Set Context!10624))

(assert (=> bm!459757 (= call!459764 call!459766)))

(declare-fun b!5861696 () Bool)

(declare-fun c!1039933 () Bool)

(declare-fun e!3594000 () Bool)

(assert (=> b!5861696 (= c!1039933 e!3594000)))

(declare-fun res!2466467 () Bool)

(assert (=> b!5861696 (=> (not res!2466467) (not e!3594000))))

(assert (=> b!5861696 (= res!2466467 (is-Concat!24773 (regOne!32369 r!7292)))))

(declare-fun e!3593999 () (Set Context!10624))

(assert (=> b!5861696 (= e!3593999 e!3594003)))

(declare-fun bm!459758 () Bool)

(declare-fun call!459765 () List!64083)

(declare-fun call!459767 () List!64083)

(assert (=> bm!459758 (= call!459765 call!459767)))

(declare-fun b!5861697 () Bool)

(declare-fun call!459763 () (Set Context!10624))

(assert (=> b!5861697 (= e!3593999 (set.union call!459766 call!459763))))

(declare-fun bm!459759 () Bool)

(assert (=> bm!459759 (= call!459767 ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1039933 c!1039935) (regTwo!32368 (regOne!32369 r!7292)) (regOne!32369 r!7292))))))

(declare-fun b!5861698 () Bool)

(declare-fun e!3594004 () (Set Context!10624))

(assert (=> b!5861698 (= e!3594004 (as set.empty (Set Context!10624)))))

(declare-fun b!5861699 () Bool)

(declare-fun call!459762 () (Set Context!10624))

(assert (=> b!5861699 (= e!3594004 call!459762)))

(declare-fun bm!459760 () Bool)

(declare-fun c!1039937 () Bool)

(assert (=> bm!459760 (= call!459766 (derivationStepZipperDown!1194 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))) (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765)) (h!70409 s!2326)))))

(declare-fun b!5861700 () Bool)

(assert (=> b!5861700 (= e!3594001 (set.insert lt!2305515 (as set.empty (Set Context!10624))))))

(declare-fun b!5861701 () Bool)

(assert (=> b!5861701 (= e!3594001 e!3593999)))

(assert (=> b!5861701 (= c!1039937 (is-Union!15928 (regOne!32369 r!7292)))))

(declare-fun bm!459761 () Bool)

(assert (=> bm!459761 (= call!459762 call!459764)))

(declare-fun bm!459762 () Bool)

(assert (=> bm!459762 (= call!459763 (derivationStepZipperDown!1194 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))) (ite c!1039937 lt!2305515 (Context!10625 call!459767)) (h!70409 s!2326)))))

(declare-fun b!5861702 () Bool)

(assert (=> b!5861702 (= e!3594003 (set.union call!459763 call!459764))))

(declare-fun b!5861703 () Bool)

(declare-fun c!1039936 () Bool)

(assert (=> b!5861703 (= c!1039936 (is-Star!15928 (regOne!32369 r!7292)))))

(assert (=> b!5861703 (= e!3594002 e!3594004)))

(declare-fun b!5861704 () Bool)

(assert (=> b!5861704 (= e!3594000 (nullable!5928 (regOne!32368 (regOne!32369 r!7292))))))

(declare-fun b!5861705 () Bool)

(assert (=> b!5861705 (= e!3594002 call!459762)))

(assert (= (and d!1840814 c!1039934) b!5861700))

(assert (= (and d!1840814 (not c!1039934)) b!5861701))

(assert (= (and b!5861701 c!1039937) b!5861697))

(assert (= (and b!5861701 (not c!1039937)) b!5861696))

(assert (= (and b!5861696 res!2466467) b!5861704))

(assert (= (and b!5861696 c!1039933) b!5861702))

(assert (= (and b!5861696 (not c!1039933)) b!5861695))

(assert (= (and b!5861695 c!1039935) b!5861705))

(assert (= (and b!5861695 (not c!1039935)) b!5861703))

(assert (= (and b!5861703 c!1039936) b!5861699))

(assert (= (and b!5861703 (not c!1039936)) b!5861698))

(assert (= (or b!5861705 b!5861699) bm!459758))

(assert (= (or b!5861705 b!5861699) bm!459761))

(assert (= (or b!5861702 bm!459758) bm!459759))

(assert (= (or b!5861702 bm!459761) bm!459757))

(assert (= (or b!5861697 b!5861702) bm!459762))

(assert (= (or b!5861697 bm!459757) bm!459760))

(assert (=> b!5861700 m!6778572))

(declare-fun m!6778582 () Bool)

(assert (=> b!5861704 m!6778582))

(declare-fun m!6778584 () Bool)

(assert (=> bm!459762 m!6778584))

(declare-fun m!6778586 () Bool)

(assert (=> bm!459759 m!6778586))

(declare-fun m!6778588 () Bool)

(assert (=> bm!459760 m!6778588))

(assert (=> b!5861532 d!1840814))

(declare-fun b!5861726 () Bool)

(declare-fun e!3594018 () Bool)

(declare-fun e!3594017 () Bool)

(assert (=> b!5861726 (= e!3594018 e!3594017)))

(declare-fun c!1039949 () Bool)

(declare-fun isEmpty!35821 (List!64083) Bool)

(assert (=> b!5861726 (= c!1039949 (isEmpty!35821 (unfocusZipperList!1349 zl!343)))))

(declare-fun b!5861728 () Bool)

(declare-fun lt!2305630 () Regex!15928)

(declare-fun isEmptyLang!1371 (Regex!15928) Bool)

(assert (=> b!5861728 (= e!3594017 (isEmptyLang!1371 lt!2305630))))

(declare-fun b!5861729 () Bool)

(declare-fun e!3594020 () Bool)

(assert (=> b!5861729 (= e!3594020 (isEmpty!35821 (t!377456 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5861730 () Bool)

(declare-fun e!3594022 () Bool)

(declare-fun head!12410 (List!64083) Regex!15928)

(assert (=> b!5861730 (= e!3594022 (= lt!2305630 (head!12410 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5861731 () Bool)

(declare-fun isUnion!801 (Regex!15928) Bool)

(assert (=> b!5861731 (= e!3594022 (isUnion!801 lt!2305630))))

(declare-fun d!1840816 () Bool)

(assert (=> d!1840816 e!3594018))

(declare-fun res!2466472 () Bool)

(assert (=> d!1840816 (=> (not res!2466472) (not e!3594018))))

(assert (=> d!1840816 (= res!2466472 (validRegex!7664 lt!2305630))))

(declare-fun e!3594021 () Regex!15928)

(assert (=> d!1840816 (= lt!2305630 e!3594021)))

(declare-fun c!1039946 () Bool)

(assert (=> d!1840816 (= c!1039946 e!3594020)))

(declare-fun res!2466473 () Bool)

(assert (=> d!1840816 (=> (not res!2466473) (not e!3594020))))

(assert (=> d!1840816 (= res!2466473 (is-Cons!63959 (unfocusZipperList!1349 zl!343)))))

(declare-fun lambda!320511 () Int)

(declare-fun forall!15015 (List!64083 Int) Bool)

(assert (=> d!1840816 (forall!15015 (unfocusZipperList!1349 zl!343) lambda!320511)))

(assert (=> d!1840816 (= (generalisedUnion!1772 (unfocusZipperList!1349 zl!343)) lt!2305630)))

(declare-fun b!5861727 () Bool)

(assert (=> b!5861727 (= e!3594017 e!3594022)))

(declare-fun c!1039947 () Bool)

(declare-fun tail!11495 (List!64083) List!64083)

(assert (=> b!5861727 (= c!1039947 (isEmpty!35821 (tail!11495 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5861732 () Bool)

(declare-fun e!3594019 () Regex!15928)

(assert (=> b!5861732 (= e!3594019 EmptyLang!15928)))

(declare-fun b!5861733 () Bool)

(assert (=> b!5861733 (= e!3594019 (Union!15928 (h!70407 (unfocusZipperList!1349 zl!343)) (generalisedUnion!1772 (t!377456 (unfocusZipperList!1349 zl!343)))))))

(declare-fun b!5861734 () Bool)

(assert (=> b!5861734 (= e!3594021 e!3594019)))

(declare-fun c!1039948 () Bool)

(assert (=> b!5861734 (= c!1039948 (is-Cons!63959 (unfocusZipperList!1349 zl!343)))))

(declare-fun b!5861735 () Bool)

(assert (=> b!5861735 (= e!3594021 (h!70407 (unfocusZipperList!1349 zl!343)))))

(assert (= (and d!1840816 res!2466473) b!5861729))

(assert (= (and d!1840816 c!1039946) b!5861735))

(assert (= (and d!1840816 (not c!1039946)) b!5861734))

(assert (= (and b!5861734 c!1039948) b!5861733))

(assert (= (and b!5861734 (not c!1039948)) b!5861732))

(assert (= (and d!1840816 res!2466472) b!5861726))

(assert (= (and b!5861726 c!1039949) b!5861728))

(assert (= (and b!5861726 (not c!1039949)) b!5861727))

(assert (= (and b!5861727 c!1039947) b!5861730))

(assert (= (and b!5861727 (not c!1039947)) b!5861731))

(assert (=> b!5861726 m!6778416))

(declare-fun m!6778590 () Bool)

(assert (=> b!5861726 m!6778590))

(assert (=> b!5861730 m!6778416))

(declare-fun m!6778592 () Bool)

(assert (=> b!5861730 m!6778592))

(declare-fun m!6778594 () Bool)

(assert (=> b!5861731 m!6778594))

(declare-fun m!6778596 () Bool)

(assert (=> d!1840816 m!6778596))

(assert (=> d!1840816 m!6778416))

(declare-fun m!6778598 () Bool)

(assert (=> d!1840816 m!6778598))

(declare-fun m!6778600 () Bool)

(assert (=> b!5861729 m!6778600))

(declare-fun m!6778602 () Bool)

(assert (=> b!5861733 m!6778602))

(assert (=> b!5861727 m!6778416))

(declare-fun m!6778604 () Bool)

(assert (=> b!5861727 m!6778604))

(assert (=> b!5861727 m!6778604))

(declare-fun m!6778606 () Bool)

(assert (=> b!5861727 m!6778606))

(declare-fun m!6778608 () Bool)

(assert (=> b!5861728 m!6778608))

(assert (=> b!5861542 d!1840816))

(declare-fun bs!1381041 () Bool)

(declare-fun d!1840818 () Bool)

(assert (= bs!1381041 (and d!1840818 d!1840816)))

(declare-fun lambda!320514 () Int)

(assert (=> bs!1381041 (= lambda!320514 lambda!320511)))

(declare-fun lt!2305633 () List!64083)

(assert (=> d!1840818 (forall!15015 lt!2305633 lambda!320514)))

(declare-fun e!3594025 () List!64083)

(assert (=> d!1840818 (= lt!2305633 e!3594025)))

(declare-fun c!1039952 () Bool)

(assert (=> d!1840818 (= c!1039952 (is-Cons!63960 zl!343))))

(assert (=> d!1840818 (= (unfocusZipperList!1349 zl!343) lt!2305633)))

(declare-fun b!5861740 () Bool)

(assert (=> b!5861740 (= e!3594025 (Cons!63959 (generalisedConcat!1525 (exprs!5812 (h!70408 zl!343))) (unfocusZipperList!1349 (t!377457 zl!343))))))

(declare-fun b!5861741 () Bool)

(assert (=> b!5861741 (= e!3594025 Nil!63959)))

(assert (= (and d!1840818 c!1039952) b!5861740))

(assert (= (and d!1840818 (not c!1039952)) b!5861741))

(declare-fun m!6778610 () Bool)

(assert (=> d!1840818 m!6778610))

(assert (=> b!5861740 m!6778450))

(declare-fun m!6778612 () Bool)

(assert (=> b!5861740 m!6778612))

(assert (=> b!5861542 d!1840818))

(declare-fun bs!1381042 () Bool)

(declare-fun d!1840820 () Bool)

(assert (= bs!1381042 (and d!1840820 d!1840816)))

(declare-fun lambda!320517 () Int)

(assert (=> bs!1381042 (= lambda!320517 lambda!320511)))

(declare-fun bs!1381043 () Bool)

(assert (= bs!1381043 (and d!1840820 d!1840818)))

(assert (=> bs!1381043 (= lambda!320517 lambda!320514)))

(assert (=> d!1840820 (= (inv!83068 setElem!39753) (forall!15015 (exprs!5812 setElem!39753) lambda!320517))))

(declare-fun bs!1381044 () Bool)

(assert (= bs!1381044 d!1840820))

(declare-fun m!6778614 () Bool)

(assert (=> bs!1381044 m!6778614))

(assert (=> setNonEmpty!39753 d!1840820))

(declare-fun d!1840822 () Bool)

(declare-fun c!1039955 () Bool)

(declare-fun isEmpty!35822 (List!64085) Bool)

(assert (=> d!1840822 (= c!1039955 (isEmpty!35822 (t!377458 s!2326)))))

(declare-fun e!3594028 () Bool)

(assert (=> d!1840822 (= (matchZipper!1994 lt!2305528 (t!377458 s!2326)) e!3594028)))

(declare-fun b!5861746 () Bool)

(declare-fun nullableZipper!1767 ((Set Context!10624)) Bool)

(assert (=> b!5861746 (= e!3594028 (nullableZipper!1767 lt!2305528))))

(declare-fun b!5861747 () Bool)

(declare-fun head!12411 (List!64085) C!32126)

(declare-fun tail!11496 (List!64085) List!64085)

(assert (=> b!5861747 (= e!3594028 (matchZipper!1994 (derivationStepZipper!1927 lt!2305528 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))))))

(assert (= (and d!1840822 c!1039955) b!5861746))

(assert (= (and d!1840822 (not c!1039955)) b!5861747))

(declare-fun m!6778616 () Bool)

(assert (=> d!1840822 m!6778616))

(declare-fun m!6778618 () Bool)

(assert (=> b!5861746 m!6778618))

(declare-fun m!6778620 () Bool)

(assert (=> b!5861747 m!6778620))

(assert (=> b!5861747 m!6778620))

(declare-fun m!6778622 () Bool)

(assert (=> b!5861747 m!6778622))

(declare-fun m!6778624 () Bool)

(assert (=> b!5861747 m!6778624))

(assert (=> b!5861747 m!6778622))

(assert (=> b!5861747 m!6778624))

(declare-fun m!6778626 () Bool)

(assert (=> b!5861747 m!6778626))

(assert (=> b!5861539 d!1840822))

(declare-fun bs!1381045 () Bool)

(declare-fun d!1840824 () Bool)

(assert (= bs!1381045 (and d!1840824 d!1840816)))

(declare-fun lambda!320520 () Int)

(assert (=> bs!1381045 (= lambda!320520 lambda!320511)))

(declare-fun bs!1381046 () Bool)

(assert (= bs!1381046 (and d!1840824 d!1840818)))

(assert (=> bs!1381046 (= lambda!320520 lambda!320514)))

(declare-fun bs!1381047 () Bool)

(assert (= bs!1381047 (and d!1840824 d!1840820)))

(assert (=> bs!1381047 (= lambda!320520 lambda!320517)))

(declare-fun b!5861768 () Bool)

(declare-fun e!3594043 () Bool)

(declare-fun lt!2305636 () Regex!15928)

(declare-fun isEmptyExpr!1363 (Regex!15928) Bool)

(assert (=> b!5861768 (= e!3594043 (isEmptyExpr!1363 lt!2305636))))

(declare-fun b!5861769 () Bool)

(declare-fun e!3594042 () Bool)

(assert (=> b!5861769 (= e!3594042 (isEmpty!35821 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5861770 () Bool)

(declare-fun e!3594041 () Bool)

(assert (=> b!5861770 (= e!3594043 e!3594041)))

(declare-fun c!1039966 () Bool)

(assert (=> b!5861770 (= c!1039966 (isEmpty!35821 (tail!11495 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5861771 () Bool)

(declare-fun e!3594045 () Bool)

(assert (=> b!5861771 (= e!3594045 e!3594043)))

(declare-fun c!1039964 () Bool)

(assert (=> b!5861771 (= c!1039964 (isEmpty!35821 (exprs!5812 (h!70408 zl!343))))))

(declare-fun b!5861772 () Bool)

(declare-fun e!3594046 () Regex!15928)

(declare-fun e!3594044 () Regex!15928)

(assert (=> b!5861772 (= e!3594046 e!3594044)))

(declare-fun c!1039965 () Bool)

(assert (=> b!5861772 (= c!1039965 (is-Cons!63959 (exprs!5812 (h!70408 zl!343))))))

(declare-fun b!5861773 () Bool)

(declare-fun isConcat!886 (Regex!15928) Bool)

(assert (=> b!5861773 (= e!3594041 (isConcat!886 lt!2305636))))

(declare-fun b!5861774 () Bool)

(assert (=> b!5861774 (= e!3594044 EmptyExpr!15928)))

(assert (=> d!1840824 e!3594045))

(declare-fun res!2466479 () Bool)

(assert (=> d!1840824 (=> (not res!2466479) (not e!3594045))))

(assert (=> d!1840824 (= res!2466479 (validRegex!7664 lt!2305636))))

(assert (=> d!1840824 (= lt!2305636 e!3594046)))

(declare-fun c!1039967 () Bool)

(assert (=> d!1840824 (= c!1039967 e!3594042)))

(declare-fun res!2466478 () Bool)

(assert (=> d!1840824 (=> (not res!2466478) (not e!3594042))))

(assert (=> d!1840824 (= res!2466478 (is-Cons!63959 (exprs!5812 (h!70408 zl!343))))))

(assert (=> d!1840824 (forall!15015 (exprs!5812 (h!70408 zl!343)) lambda!320520)))

(assert (=> d!1840824 (= (generalisedConcat!1525 (exprs!5812 (h!70408 zl!343))) lt!2305636)))

(declare-fun b!5861775 () Bool)

(assert (=> b!5861775 (= e!3594046 (h!70407 (exprs!5812 (h!70408 zl!343))))))

(declare-fun b!5861776 () Bool)

(assert (=> b!5861776 (= e!3594041 (= lt!2305636 (head!12410 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5861777 () Bool)

(assert (=> b!5861777 (= e!3594044 (Concat!24773 (h!70407 (exprs!5812 (h!70408 zl!343))) (generalisedConcat!1525 (t!377456 (exprs!5812 (h!70408 zl!343))))))))

(assert (= (and d!1840824 res!2466478) b!5861769))

(assert (= (and d!1840824 c!1039967) b!5861775))

(assert (= (and d!1840824 (not c!1039967)) b!5861772))

(assert (= (and b!5861772 c!1039965) b!5861777))

(assert (= (and b!5861772 (not c!1039965)) b!5861774))

(assert (= (and d!1840824 res!2466479) b!5861771))

(assert (= (and b!5861771 c!1039964) b!5861768))

(assert (= (and b!5861771 (not c!1039964)) b!5861770))

(assert (= (and b!5861770 c!1039966) b!5861776))

(assert (= (and b!5861770 (not c!1039966)) b!5861773))

(declare-fun m!6778628 () Bool)

(assert (=> b!5861777 m!6778628))

(declare-fun m!6778630 () Bool)

(assert (=> b!5861770 m!6778630))

(assert (=> b!5861770 m!6778630))

(declare-fun m!6778632 () Bool)

(assert (=> b!5861770 m!6778632))

(declare-fun m!6778634 () Bool)

(assert (=> b!5861776 m!6778634))

(declare-fun m!6778636 () Bool)

(assert (=> b!5861768 m!6778636))

(declare-fun m!6778638 () Bool)

(assert (=> b!5861771 m!6778638))

(declare-fun m!6778640 () Bool)

(assert (=> b!5861769 m!6778640))

(declare-fun m!6778642 () Bool)

(assert (=> d!1840824 m!6778642))

(declare-fun m!6778644 () Bool)

(assert (=> d!1840824 m!6778644))

(declare-fun m!6778646 () Bool)

(assert (=> b!5861773 m!6778646))

(assert (=> b!5861529 d!1840824))

(declare-fun d!1840826 () Bool)

(declare-fun dynLambda!25011 (Int Context!10624) (Set Context!10624))

(assert (=> d!1840826 (= (flatMap!1459 lt!2305530 lambda!320501) (dynLambda!25011 lambda!320501 lt!2305536))))

(declare-fun lt!2305639 () Unit!157127)

(declare-fun choose!44436 ((Set Context!10624) Context!10624 Int) Unit!157127)

(assert (=> d!1840826 (= lt!2305639 (choose!44436 lt!2305530 lt!2305536 lambda!320501))))

(assert (=> d!1840826 (= lt!2305530 (set.insert lt!2305536 (as set.empty (Set Context!10624))))))

(assert (=> d!1840826 (= (lemmaFlatMapOnSingletonSet!987 lt!2305530 lt!2305536 lambda!320501) lt!2305639)))

(declare-fun b_lambda!220653 () Bool)

(assert (=> (not b_lambda!220653) (not d!1840826)))

(declare-fun bs!1381048 () Bool)

(assert (= bs!1381048 d!1840826))

(assert (=> bs!1381048 m!6778400))

(declare-fun m!6778648 () Bool)

(assert (=> bs!1381048 m!6778648))

(declare-fun m!6778650 () Bool)

(assert (=> bs!1381048 m!6778650))

(assert (=> bs!1381048 m!6778406))

(assert (=> b!5861530 d!1840826))

(declare-fun b!5861788 () Bool)

(declare-fun e!3594055 () Bool)

(assert (=> b!5861788 (= e!3594055 (nullable!5928 (h!70407 (exprs!5812 lt!2305529))))))

(declare-fun b!5861789 () Bool)

(declare-fun e!3594054 () (Set Context!10624))

(assert (=> b!5861789 (= e!3594054 (as set.empty (Set Context!10624)))))

(declare-fun d!1840828 () Bool)

(declare-fun c!1039972 () Bool)

(assert (=> d!1840828 (= c!1039972 e!3594055)))

(declare-fun res!2466482 () Bool)

(assert (=> d!1840828 (=> (not res!2466482) (not e!3594055))))

(assert (=> d!1840828 (= res!2466482 (is-Cons!63959 (exprs!5812 lt!2305529)))))

(declare-fun e!3594053 () (Set Context!10624))

(assert (=> d!1840828 (= (derivationStepZipperUp!1120 lt!2305529 (h!70409 s!2326)) e!3594053)))

(declare-fun b!5861790 () Bool)

(assert (=> b!5861790 (= e!3594053 e!3594054)))

(declare-fun c!1039973 () Bool)

(assert (=> b!5861790 (= c!1039973 (is-Cons!63959 (exprs!5812 lt!2305529)))))

(declare-fun b!5861791 () Bool)

(declare-fun call!459770 () (Set Context!10624))

(assert (=> b!5861791 (= e!3594054 call!459770)))

(declare-fun b!5861792 () Bool)

(assert (=> b!5861792 (= e!3594053 (set.union call!459770 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (h!70409 s!2326))))))

(declare-fun bm!459765 () Bool)

(assert (=> bm!459765 (= call!459770 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 lt!2305529)) (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (h!70409 s!2326)))))

(assert (= (and d!1840828 res!2466482) b!5861788))

(assert (= (and d!1840828 c!1039972) b!5861792))

(assert (= (and d!1840828 (not c!1039972)) b!5861790))

(assert (= (and b!5861790 c!1039973) b!5861791))

(assert (= (and b!5861790 (not c!1039973)) b!5861789))

(assert (= (or b!5861792 b!5861791) bm!459765))

(declare-fun m!6778652 () Bool)

(assert (=> b!5861788 m!6778652))

(declare-fun m!6778654 () Bool)

(assert (=> b!5861792 m!6778654))

(declare-fun m!6778656 () Bool)

(assert (=> bm!459765 m!6778656))

(assert (=> b!5861530 d!1840828))

(declare-fun d!1840830 () Bool)

(assert (=> d!1840830 (= (flatMap!1459 lt!2305531 lambda!320501) (dynLambda!25011 lambda!320501 lt!2305529))))

(declare-fun lt!2305640 () Unit!157127)

(assert (=> d!1840830 (= lt!2305640 (choose!44436 lt!2305531 lt!2305529 lambda!320501))))

(assert (=> d!1840830 (= lt!2305531 (set.insert lt!2305529 (as set.empty (Set Context!10624))))))

(assert (=> d!1840830 (= (lemmaFlatMapOnSingletonSet!987 lt!2305531 lt!2305529 lambda!320501) lt!2305640)))

(declare-fun b_lambda!220655 () Bool)

(assert (=> (not b_lambda!220655) (not d!1840830)))

(declare-fun bs!1381049 () Bool)

(assert (= bs!1381049 d!1840830))

(assert (=> bs!1381049 m!6778410))

(declare-fun m!6778658 () Bool)

(assert (=> bs!1381049 m!6778658))

(declare-fun m!6778660 () Bool)

(assert (=> bs!1381049 m!6778660))

(assert (=> bs!1381049 m!6778412))

(assert (=> b!5861530 d!1840830))

(declare-fun d!1840832 () Bool)

(declare-fun choose!44437 ((Set Context!10624) Int) (Set Context!10624))

(assert (=> d!1840832 (= (flatMap!1459 lt!2305530 lambda!320501) (choose!44437 lt!2305530 lambda!320501))))

(declare-fun bs!1381050 () Bool)

(assert (= bs!1381050 d!1840832))

(declare-fun m!6778662 () Bool)

(assert (=> bs!1381050 m!6778662))

(assert (=> b!5861530 d!1840832))

(declare-fun d!1840834 () Bool)

(declare-fun c!1039974 () Bool)

(assert (=> d!1840834 (= c!1039974 (isEmpty!35822 s!2326))))

(declare-fun e!3594056 () Bool)

(assert (=> d!1840834 (= (matchZipper!1994 lt!2305530 s!2326) e!3594056)))

(declare-fun b!5861793 () Bool)

(assert (=> b!5861793 (= e!3594056 (nullableZipper!1767 lt!2305530))))

(declare-fun b!5861794 () Bool)

(assert (=> b!5861794 (= e!3594056 (matchZipper!1994 (derivationStepZipper!1927 lt!2305530 (head!12411 s!2326)) (tail!11496 s!2326)))))

(assert (= (and d!1840834 c!1039974) b!5861793))

(assert (= (and d!1840834 (not c!1039974)) b!5861794))

(declare-fun m!6778664 () Bool)

(assert (=> d!1840834 m!6778664))

(declare-fun m!6778666 () Bool)

(assert (=> b!5861793 m!6778666))

(declare-fun m!6778668 () Bool)

(assert (=> b!5861794 m!6778668))

(assert (=> b!5861794 m!6778668))

(declare-fun m!6778670 () Bool)

(assert (=> b!5861794 m!6778670))

(declare-fun m!6778672 () Bool)

(assert (=> b!5861794 m!6778672))

(assert (=> b!5861794 m!6778670))

(assert (=> b!5861794 m!6778672))

(declare-fun m!6778674 () Bool)

(assert (=> b!5861794 m!6778674))

(assert (=> b!5861530 d!1840834))

(declare-fun d!1840836 () Bool)

(assert (=> d!1840836 (= (flatMap!1459 lt!2305531 lambda!320501) (choose!44437 lt!2305531 lambda!320501))))

(declare-fun bs!1381051 () Bool)

(assert (= bs!1381051 d!1840836))

(declare-fun m!6778676 () Bool)

(assert (=> bs!1381051 m!6778676))

(assert (=> b!5861530 d!1840836))

(declare-fun b!5861795 () Bool)

(declare-fun e!3594059 () Bool)

(assert (=> b!5861795 (= e!3594059 (nullable!5928 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun b!5861796 () Bool)

(declare-fun e!3594058 () (Set Context!10624))

(assert (=> b!5861796 (= e!3594058 (as set.empty (Set Context!10624)))))

(declare-fun d!1840838 () Bool)

(declare-fun c!1039975 () Bool)

(assert (=> d!1840838 (= c!1039975 e!3594059)))

(declare-fun res!2466483 () Bool)

(assert (=> d!1840838 (=> (not res!2466483) (not e!3594059))))

(assert (=> d!1840838 (= res!2466483 (is-Cons!63959 (exprs!5812 lt!2305536)))))

(declare-fun e!3594057 () (Set Context!10624))

(assert (=> d!1840838 (= (derivationStepZipperUp!1120 lt!2305536 (h!70409 s!2326)) e!3594057)))

(declare-fun b!5861797 () Bool)

(assert (=> b!5861797 (= e!3594057 e!3594058)))

(declare-fun c!1039976 () Bool)

(assert (=> b!5861797 (= c!1039976 (is-Cons!63959 (exprs!5812 lt!2305536)))))

(declare-fun b!5861798 () Bool)

(declare-fun call!459771 () (Set Context!10624))

(assert (=> b!5861798 (= e!3594058 call!459771)))

(declare-fun b!5861799 () Bool)

(assert (=> b!5861799 (= e!3594057 (set.union call!459771 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (h!70409 s!2326))))))

(declare-fun bm!459766 () Bool)

(assert (=> bm!459766 (= call!459771 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 lt!2305536)) (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (h!70409 s!2326)))))

(assert (= (and d!1840838 res!2466483) b!5861795))

(assert (= (and d!1840838 c!1039975) b!5861799))

(assert (= (and d!1840838 (not c!1039975)) b!5861797))

(assert (= (and b!5861797 c!1039976) b!5861798))

(assert (= (and b!5861797 (not c!1039976)) b!5861796))

(assert (= (or b!5861799 b!5861798) bm!459766))

(declare-fun m!6778678 () Bool)

(assert (=> b!5861795 m!6778678))

(declare-fun m!6778680 () Bool)

(assert (=> b!5861799 m!6778680))

(declare-fun m!6778682 () Bool)

(assert (=> bm!459766 m!6778682))

(assert (=> b!5861530 d!1840838))

(declare-fun d!1840840 () Bool)

(assert (=> d!1840840 (= (isEmpty!35819 (t!377457 zl!343)) (is-Nil!63960 (t!377457 zl!343)))))

(assert (=> b!5861549 d!1840840))

(assert (=> b!5861540 d!1840822))

(declare-fun d!1840842 () Bool)

(declare-fun c!1039977 () Bool)

(assert (=> d!1840842 (= c!1039977 (isEmpty!35822 s!2326))))

(declare-fun e!3594060 () Bool)

(assert (=> d!1840842 (= (matchZipper!1994 lt!2305531 s!2326) e!3594060)))

(declare-fun b!5861800 () Bool)

(assert (=> b!5861800 (= e!3594060 (nullableZipper!1767 lt!2305531))))

(declare-fun b!5861801 () Bool)

(assert (=> b!5861801 (= e!3594060 (matchZipper!1994 (derivationStepZipper!1927 lt!2305531 (head!12411 s!2326)) (tail!11496 s!2326)))))

(assert (= (and d!1840842 c!1039977) b!5861800))

(assert (= (and d!1840842 (not c!1039977)) b!5861801))

(assert (=> d!1840842 m!6778664))

(declare-fun m!6778684 () Bool)

(assert (=> b!5861800 m!6778684))

(assert (=> b!5861801 m!6778668))

(assert (=> b!5861801 m!6778668))

(declare-fun m!6778686 () Bool)

(assert (=> b!5861801 m!6778686))

(assert (=> b!5861801 m!6778672))

(assert (=> b!5861801 m!6778686))

(assert (=> b!5861801 m!6778672))

(declare-fun m!6778688 () Bool)

(assert (=> b!5861801 m!6778688))

(assert (=> b!5861540 d!1840842))

(declare-fun b!5861838 () Bool)

(assert (=> b!5861838 true))

(assert (=> b!5861838 true))

(declare-fun bs!1381052 () Bool)

(declare-fun b!5861836 () Bool)

(assert (= bs!1381052 (and b!5861836 b!5861838)))

(declare-fun lambda!320526 () Int)

(declare-fun lambda!320525 () Int)

(assert (=> bs!1381052 (not (= lambda!320526 lambda!320525))))

(assert (=> b!5861836 true))

(assert (=> b!5861836 true))

(declare-fun b!5861834 () Bool)

(declare-fun e!3594082 () Bool)

(assert (=> b!5861834 (= e!3594082 (= s!2326 (Cons!63961 (c!1039903 (regTwo!32369 r!7292)) Nil!63961)))))

(declare-fun b!5861835 () Bool)

(declare-fun e!3594081 () Bool)

(declare-fun call!459777 () Bool)

(assert (=> b!5861835 (= e!3594081 call!459777)))

(declare-fun e!3594080 () Bool)

(declare-fun call!459776 () Bool)

(assert (=> b!5861836 (= e!3594080 call!459776)))

(declare-fun b!5861837 () Bool)

(declare-fun e!3594079 () Bool)

(declare-fun e!3594084 () Bool)

(assert (=> b!5861837 (= e!3594079 e!3594084)))

(declare-fun res!2466502 () Bool)

(assert (=> b!5861837 (= res!2466502 (matchRSpec!3029 (regOne!32369 (regTwo!32369 r!7292)) s!2326))))

(assert (=> b!5861837 (=> res!2466502 e!3594084)))

(declare-fun e!3594083 () Bool)

(assert (=> b!5861838 (= e!3594083 call!459776)))

(declare-fun b!5861839 () Bool)

(assert (=> b!5861839 (= e!3594079 e!3594080)))

(declare-fun c!1039988 () Bool)

(assert (=> b!5861839 (= c!1039988 (is-Star!15928 (regTwo!32369 r!7292)))))

(declare-fun b!5861840 () Bool)

(declare-fun e!3594085 () Bool)

(assert (=> b!5861840 (= e!3594081 e!3594085)))

(declare-fun res!2466501 () Bool)

(assert (=> b!5861840 (= res!2466501 (not (is-EmptyLang!15928 (regTwo!32369 r!7292))))))

(assert (=> b!5861840 (=> (not res!2466501) (not e!3594085))))

(declare-fun b!5861841 () Bool)

(declare-fun res!2466500 () Bool)

(assert (=> b!5861841 (=> res!2466500 e!3594083)))

(assert (=> b!5861841 (= res!2466500 call!459777)))

(assert (=> b!5861841 (= e!3594080 e!3594083)))

(declare-fun bm!459771 () Bool)

(declare-fun Exists!3000 (Int) Bool)

(assert (=> bm!459771 (= call!459776 (Exists!3000 (ite c!1039988 lambda!320525 lambda!320526)))))

(declare-fun b!5861842 () Bool)

(declare-fun c!1039989 () Bool)

(assert (=> b!5861842 (= c!1039989 (is-Union!15928 (regTwo!32369 r!7292)))))

(assert (=> b!5861842 (= e!3594082 e!3594079)))

(declare-fun bm!459772 () Bool)

(assert (=> bm!459772 (= call!459777 (isEmpty!35822 s!2326))))

(declare-fun d!1840844 () Bool)

(declare-fun c!1039987 () Bool)

(assert (=> d!1840844 (= c!1039987 (is-EmptyExpr!15928 (regTwo!32369 r!7292)))))

(assert (=> d!1840844 (= (matchRSpec!3029 (regTwo!32369 r!7292) s!2326) e!3594081)))

(declare-fun b!5861843 () Bool)

(declare-fun c!1039986 () Bool)

(assert (=> b!5861843 (= c!1039986 (is-ElementMatch!15928 (regTwo!32369 r!7292)))))

(assert (=> b!5861843 (= e!3594085 e!3594082)))

(declare-fun b!5861844 () Bool)

(assert (=> b!5861844 (= e!3594084 (matchRSpec!3029 (regTwo!32369 (regTwo!32369 r!7292)) s!2326))))

(assert (= (and d!1840844 c!1039987) b!5861835))

(assert (= (and d!1840844 (not c!1039987)) b!5861840))

(assert (= (and b!5861840 res!2466501) b!5861843))

(assert (= (and b!5861843 c!1039986) b!5861834))

(assert (= (and b!5861843 (not c!1039986)) b!5861842))

(assert (= (and b!5861842 c!1039989) b!5861837))

(assert (= (and b!5861842 (not c!1039989)) b!5861839))

(assert (= (and b!5861837 (not res!2466502)) b!5861844))

(assert (= (and b!5861839 c!1039988) b!5861841))

(assert (= (and b!5861839 (not c!1039988)) b!5861836))

(assert (= (and b!5861841 (not res!2466500)) b!5861838))

(assert (= (or b!5861838 b!5861836) bm!459771))

(assert (= (or b!5861835 b!5861841) bm!459772))

(declare-fun m!6778690 () Bool)

(assert (=> b!5861837 m!6778690))

(declare-fun m!6778692 () Bool)

(assert (=> bm!459771 m!6778692))

(assert (=> bm!459772 m!6778664))

(declare-fun m!6778694 () Bool)

(assert (=> b!5861844 m!6778694))

(assert (=> b!5861526 d!1840844))

(declare-fun d!1840846 () Bool)

(assert (=> d!1840846 (= (matchR!8111 (regOne!32369 r!7292) s!2326) (matchRSpec!3029 (regOne!32369 r!7292) s!2326))))

(declare-fun lt!2305643 () Unit!157127)

(declare-fun choose!44438 (Regex!15928 List!64085) Unit!157127)

(assert (=> d!1840846 (= lt!2305643 (choose!44438 (regOne!32369 r!7292) s!2326))))

(assert (=> d!1840846 (validRegex!7664 (regOne!32369 r!7292))))

(assert (=> d!1840846 (= (mainMatchTheorem!3029 (regOne!32369 r!7292) s!2326) lt!2305643)))

(declare-fun bs!1381053 () Bool)

(assert (= bs!1381053 d!1840846))

(assert (=> bs!1381053 m!6778476))

(assert (=> bs!1381053 m!6778472))

(declare-fun m!6778696 () Bool)

(assert (=> bs!1381053 m!6778696))

(declare-fun m!6778698 () Bool)

(assert (=> bs!1381053 m!6778698))

(assert (=> b!5861526 d!1840846))

(declare-fun b!5861877 () Bool)

(declare-fun e!3594101 () Bool)

(assert (=> b!5861877 (= e!3594101 (not (= (head!12411 s!2326) (c!1039903 (regTwo!32369 r!7292)))))))

(declare-fun b!5861878 () Bool)

(declare-fun res!2466525 () Bool)

(declare-fun e!3594100 () Bool)

(assert (=> b!5861878 (=> res!2466525 e!3594100)))

(assert (=> b!5861878 (= res!2466525 (not (is-ElementMatch!15928 (regTwo!32369 r!7292))))))

(declare-fun e!3594102 () Bool)

(assert (=> b!5861878 (= e!3594102 e!3594100)))

(declare-fun b!5861879 () Bool)

(declare-fun res!2466526 () Bool)

(assert (=> b!5861879 (=> res!2466526 e!3594101)))

(assert (=> b!5861879 (= res!2466526 (not (isEmpty!35822 (tail!11496 s!2326))))))

(declare-fun b!5861880 () Bool)

(declare-fun lt!2305646 () Bool)

(assert (=> b!5861880 (= e!3594102 (not lt!2305646))))

(declare-fun b!5861881 () Bool)

(declare-fun e!3594103 () Bool)

(declare-fun derivativeStep!4666 (Regex!15928 C!32126) Regex!15928)

(assert (=> b!5861881 (= e!3594103 (matchR!8111 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)) (tail!11496 s!2326)))))

(declare-fun b!5861882 () Bool)

(declare-fun e!3594105 () Bool)

(declare-fun call!459780 () Bool)

(assert (=> b!5861882 (= e!3594105 (= lt!2305646 call!459780))))

(declare-fun b!5861883 () Bool)

(declare-fun e!3594106 () Bool)

(assert (=> b!5861883 (= e!3594106 e!3594101)))

(declare-fun res!2466524 () Bool)

(assert (=> b!5861883 (=> res!2466524 e!3594101)))

(assert (=> b!5861883 (= res!2466524 call!459780)))

(declare-fun d!1840848 () Bool)

(assert (=> d!1840848 e!3594105))

(declare-fun c!1039998 () Bool)

(assert (=> d!1840848 (= c!1039998 (is-EmptyExpr!15928 (regTwo!32369 r!7292)))))

(assert (=> d!1840848 (= lt!2305646 e!3594103)))

(declare-fun c!1039996 () Bool)

(assert (=> d!1840848 (= c!1039996 (isEmpty!35822 s!2326))))

(assert (=> d!1840848 (validRegex!7664 (regTwo!32369 r!7292))))

(assert (=> d!1840848 (= (matchR!8111 (regTwo!32369 r!7292) s!2326) lt!2305646)))

(declare-fun bm!459775 () Bool)

(assert (=> bm!459775 (= call!459780 (isEmpty!35822 s!2326))))

(declare-fun b!5861884 () Bool)

(assert (=> b!5861884 (= e!3594105 e!3594102)))

(declare-fun c!1039997 () Bool)

(assert (=> b!5861884 (= c!1039997 (is-EmptyLang!15928 (regTwo!32369 r!7292)))))

(declare-fun b!5861885 () Bool)

(declare-fun e!3594104 () Bool)

(assert (=> b!5861885 (= e!3594104 (= (head!12411 s!2326) (c!1039903 (regTwo!32369 r!7292))))))

(declare-fun b!5861886 () Bool)

(assert (=> b!5861886 (= e!3594100 e!3594106)))

(declare-fun res!2466523 () Bool)

(assert (=> b!5861886 (=> (not res!2466523) (not e!3594106))))

(assert (=> b!5861886 (= res!2466523 (not lt!2305646))))

(declare-fun b!5861887 () Bool)

(declare-fun res!2466519 () Bool)

(assert (=> b!5861887 (=> res!2466519 e!3594100)))

(assert (=> b!5861887 (= res!2466519 e!3594104)))

(declare-fun res!2466522 () Bool)

(assert (=> b!5861887 (=> (not res!2466522) (not e!3594104))))

(assert (=> b!5861887 (= res!2466522 lt!2305646)))

(declare-fun b!5861888 () Bool)

(declare-fun res!2466521 () Bool)

(assert (=> b!5861888 (=> (not res!2466521) (not e!3594104))))

(assert (=> b!5861888 (= res!2466521 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5861889 () Bool)

(assert (=> b!5861889 (= e!3594103 (nullable!5928 (regTwo!32369 r!7292)))))

(declare-fun b!5861890 () Bool)

(declare-fun res!2466520 () Bool)

(assert (=> b!5861890 (=> (not res!2466520) (not e!3594104))))

(assert (=> b!5861890 (= res!2466520 (not call!459780))))

(assert (= (and d!1840848 c!1039996) b!5861889))

(assert (= (and d!1840848 (not c!1039996)) b!5861881))

(assert (= (and d!1840848 c!1039998) b!5861882))

(assert (= (and d!1840848 (not c!1039998)) b!5861884))

(assert (= (and b!5861884 c!1039997) b!5861880))

(assert (= (and b!5861884 (not c!1039997)) b!5861878))

(assert (= (and b!5861878 (not res!2466525)) b!5861887))

(assert (= (and b!5861887 res!2466522) b!5861890))

(assert (= (and b!5861890 res!2466520) b!5861888))

(assert (= (and b!5861888 res!2466521) b!5861885))

(assert (= (and b!5861887 (not res!2466519)) b!5861886))

(assert (= (and b!5861886 res!2466523) b!5861883))

(assert (= (and b!5861883 (not res!2466524)) b!5861879))

(assert (= (and b!5861879 (not res!2466526)) b!5861877))

(assert (= (or b!5861882 b!5861883 b!5861890) bm!459775))

(assert (=> b!5861888 m!6778672))

(assert (=> b!5861888 m!6778672))

(declare-fun m!6778700 () Bool)

(assert (=> b!5861888 m!6778700))

(assert (=> bm!459775 m!6778664))

(assert (=> b!5861881 m!6778668))

(assert (=> b!5861881 m!6778668))

(declare-fun m!6778702 () Bool)

(assert (=> b!5861881 m!6778702))

(assert (=> b!5861881 m!6778672))

(assert (=> b!5861881 m!6778702))

(assert (=> b!5861881 m!6778672))

(declare-fun m!6778704 () Bool)

(assert (=> b!5861881 m!6778704))

(assert (=> d!1840848 m!6778664))

(declare-fun m!6778706 () Bool)

(assert (=> d!1840848 m!6778706))

(declare-fun m!6778708 () Bool)

(assert (=> b!5861889 m!6778708))

(assert (=> b!5861877 m!6778668))

(assert (=> b!5861885 m!6778668))

(assert (=> b!5861879 m!6778672))

(assert (=> b!5861879 m!6778672))

(assert (=> b!5861879 m!6778700))

(assert (=> b!5861526 d!1840848))

(declare-fun d!1840850 () Bool)

(assert (=> d!1840850 (= (matchR!8111 (regTwo!32369 r!7292) s!2326) (matchRSpec!3029 (regTwo!32369 r!7292) s!2326))))

(declare-fun lt!2305647 () Unit!157127)

(assert (=> d!1840850 (= lt!2305647 (choose!44438 (regTwo!32369 r!7292) s!2326))))

(assert (=> d!1840850 (validRegex!7664 (regTwo!32369 r!7292))))

(assert (=> d!1840850 (= (mainMatchTheorem!3029 (regTwo!32369 r!7292) s!2326) lt!2305647)))

(declare-fun bs!1381054 () Bool)

(assert (= bs!1381054 d!1840850))

(assert (=> bs!1381054 m!6778470))

(assert (=> bs!1381054 m!6778466))

(declare-fun m!6778710 () Bool)

(assert (=> bs!1381054 m!6778710))

(assert (=> bs!1381054 m!6778706))

(assert (=> b!5861526 d!1840850))

(declare-fun bs!1381055 () Bool)

(declare-fun b!5861895 () Bool)

(assert (= bs!1381055 (and b!5861895 b!5861838)))

(declare-fun lambda!320527 () Int)

(assert (=> bs!1381055 (= (and (= (reg!16257 (regOne!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))) (= (regOne!32369 r!7292) (regTwo!32369 r!7292))) (= lambda!320527 lambda!320525))))

(declare-fun bs!1381056 () Bool)

(assert (= bs!1381056 (and b!5861895 b!5861836)))

(assert (=> bs!1381056 (not (= lambda!320527 lambda!320526))))

(assert (=> b!5861895 true))

(assert (=> b!5861895 true))

(declare-fun bs!1381057 () Bool)

(declare-fun b!5861893 () Bool)

(assert (= bs!1381057 (and b!5861893 b!5861838)))

(declare-fun lambda!320528 () Int)

(assert (=> bs!1381057 (not (= lambda!320528 lambda!320525))))

(declare-fun bs!1381058 () Bool)

(assert (= bs!1381058 (and b!5861893 b!5861836)))

(assert (=> bs!1381058 (= (and (= (regOne!32368 (regOne!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 (regOne!32369 r!7292)) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320528 lambda!320526))))

(declare-fun bs!1381059 () Bool)

(assert (= bs!1381059 (and b!5861893 b!5861895)))

(assert (=> bs!1381059 (not (= lambda!320528 lambda!320527))))

(assert (=> b!5861893 true))

(assert (=> b!5861893 true))

(declare-fun b!5861891 () Bool)

(declare-fun e!3594110 () Bool)

(assert (=> b!5861891 (= e!3594110 (= s!2326 (Cons!63961 (c!1039903 (regOne!32369 r!7292)) Nil!63961)))))

(declare-fun b!5861892 () Bool)

(declare-fun e!3594109 () Bool)

(declare-fun call!459782 () Bool)

(assert (=> b!5861892 (= e!3594109 call!459782)))

(declare-fun e!3594108 () Bool)

(declare-fun call!459781 () Bool)

(assert (=> b!5861893 (= e!3594108 call!459781)))

(declare-fun b!5861894 () Bool)

(declare-fun e!3594107 () Bool)

(declare-fun e!3594112 () Bool)

(assert (=> b!5861894 (= e!3594107 e!3594112)))

(declare-fun res!2466529 () Bool)

(assert (=> b!5861894 (= res!2466529 (matchRSpec!3029 (regOne!32369 (regOne!32369 r!7292)) s!2326))))

(assert (=> b!5861894 (=> res!2466529 e!3594112)))

(declare-fun e!3594111 () Bool)

(assert (=> b!5861895 (= e!3594111 call!459781)))

(declare-fun b!5861896 () Bool)

(assert (=> b!5861896 (= e!3594107 e!3594108)))

(declare-fun c!1040001 () Bool)

(assert (=> b!5861896 (= c!1040001 (is-Star!15928 (regOne!32369 r!7292)))))

(declare-fun b!5861897 () Bool)

(declare-fun e!3594113 () Bool)

(assert (=> b!5861897 (= e!3594109 e!3594113)))

(declare-fun res!2466528 () Bool)

(assert (=> b!5861897 (= res!2466528 (not (is-EmptyLang!15928 (regOne!32369 r!7292))))))

(assert (=> b!5861897 (=> (not res!2466528) (not e!3594113))))

(declare-fun b!5861898 () Bool)

(declare-fun res!2466527 () Bool)

(assert (=> b!5861898 (=> res!2466527 e!3594111)))

(assert (=> b!5861898 (= res!2466527 call!459782)))

(assert (=> b!5861898 (= e!3594108 e!3594111)))

(declare-fun bm!459776 () Bool)

(assert (=> bm!459776 (= call!459781 (Exists!3000 (ite c!1040001 lambda!320527 lambda!320528)))))

(declare-fun b!5861899 () Bool)

(declare-fun c!1040002 () Bool)

(assert (=> b!5861899 (= c!1040002 (is-Union!15928 (regOne!32369 r!7292)))))

(assert (=> b!5861899 (= e!3594110 e!3594107)))

(declare-fun bm!459777 () Bool)

(assert (=> bm!459777 (= call!459782 (isEmpty!35822 s!2326))))

(declare-fun d!1840852 () Bool)

(declare-fun c!1040000 () Bool)

(assert (=> d!1840852 (= c!1040000 (is-EmptyExpr!15928 (regOne!32369 r!7292)))))

(assert (=> d!1840852 (= (matchRSpec!3029 (regOne!32369 r!7292) s!2326) e!3594109)))

(declare-fun b!5861900 () Bool)

(declare-fun c!1039999 () Bool)

(assert (=> b!5861900 (= c!1039999 (is-ElementMatch!15928 (regOne!32369 r!7292)))))

(assert (=> b!5861900 (= e!3594113 e!3594110)))

(declare-fun b!5861901 () Bool)

(assert (=> b!5861901 (= e!3594112 (matchRSpec!3029 (regTwo!32369 (regOne!32369 r!7292)) s!2326))))

(assert (= (and d!1840852 c!1040000) b!5861892))

(assert (= (and d!1840852 (not c!1040000)) b!5861897))

(assert (= (and b!5861897 res!2466528) b!5861900))

(assert (= (and b!5861900 c!1039999) b!5861891))

(assert (= (and b!5861900 (not c!1039999)) b!5861899))

(assert (= (and b!5861899 c!1040002) b!5861894))

(assert (= (and b!5861899 (not c!1040002)) b!5861896))

(assert (= (and b!5861894 (not res!2466529)) b!5861901))

(assert (= (and b!5861896 c!1040001) b!5861898))

(assert (= (and b!5861896 (not c!1040001)) b!5861893))

(assert (= (and b!5861898 (not res!2466527)) b!5861895))

(assert (= (or b!5861895 b!5861893) bm!459776))

(assert (= (or b!5861892 b!5861898) bm!459777))

(declare-fun m!6778712 () Bool)

(assert (=> b!5861894 m!6778712))

(declare-fun m!6778714 () Bool)

(assert (=> bm!459776 m!6778714))

(assert (=> bm!459777 m!6778664))

(declare-fun m!6778716 () Bool)

(assert (=> b!5861901 m!6778716))

(assert (=> b!5861526 d!1840852))

(declare-fun b!5861902 () Bool)

(declare-fun e!3594115 () Bool)

(assert (=> b!5861902 (= e!3594115 (not (= (head!12411 s!2326) (c!1039903 (regOne!32369 r!7292)))))))

(declare-fun b!5861903 () Bool)

(declare-fun res!2466536 () Bool)

(declare-fun e!3594114 () Bool)

(assert (=> b!5861903 (=> res!2466536 e!3594114)))

(assert (=> b!5861903 (= res!2466536 (not (is-ElementMatch!15928 (regOne!32369 r!7292))))))

(declare-fun e!3594116 () Bool)

(assert (=> b!5861903 (= e!3594116 e!3594114)))

(declare-fun b!5861904 () Bool)

(declare-fun res!2466537 () Bool)

(assert (=> b!5861904 (=> res!2466537 e!3594115)))

(assert (=> b!5861904 (= res!2466537 (not (isEmpty!35822 (tail!11496 s!2326))))))

(declare-fun b!5861905 () Bool)

(declare-fun lt!2305648 () Bool)

(assert (=> b!5861905 (= e!3594116 (not lt!2305648))))

(declare-fun b!5861906 () Bool)

(declare-fun e!3594117 () Bool)

(assert (=> b!5861906 (= e!3594117 (matchR!8111 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)) (tail!11496 s!2326)))))

(declare-fun b!5861907 () Bool)

(declare-fun e!3594119 () Bool)

(declare-fun call!459783 () Bool)

(assert (=> b!5861907 (= e!3594119 (= lt!2305648 call!459783))))

(declare-fun b!5861908 () Bool)

(declare-fun e!3594120 () Bool)

(assert (=> b!5861908 (= e!3594120 e!3594115)))

(declare-fun res!2466535 () Bool)

(assert (=> b!5861908 (=> res!2466535 e!3594115)))

(assert (=> b!5861908 (= res!2466535 call!459783)))

(declare-fun d!1840854 () Bool)

(assert (=> d!1840854 e!3594119))

(declare-fun c!1040005 () Bool)

(assert (=> d!1840854 (= c!1040005 (is-EmptyExpr!15928 (regOne!32369 r!7292)))))

(assert (=> d!1840854 (= lt!2305648 e!3594117)))

(declare-fun c!1040003 () Bool)

(assert (=> d!1840854 (= c!1040003 (isEmpty!35822 s!2326))))

(assert (=> d!1840854 (validRegex!7664 (regOne!32369 r!7292))))

(assert (=> d!1840854 (= (matchR!8111 (regOne!32369 r!7292) s!2326) lt!2305648)))

(declare-fun bm!459778 () Bool)

(assert (=> bm!459778 (= call!459783 (isEmpty!35822 s!2326))))

(declare-fun b!5861909 () Bool)

(assert (=> b!5861909 (= e!3594119 e!3594116)))

(declare-fun c!1040004 () Bool)

(assert (=> b!5861909 (= c!1040004 (is-EmptyLang!15928 (regOne!32369 r!7292)))))

(declare-fun b!5861910 () Bool)

(declare-fun e!3594118 () Bool)

(assert (=> b!5861910 (= e!3594118 (= (head!12411 s!2326) (c!1039903 (regOne!32369 r!7292))))))

(declare-fun b!5861911 () Bool)

(assert (=> b!5861911 (= e!3594114 e!3594120)))

(declare-fun res!2466534 () Bool)

(assert (=> b!5861911 (=> (not res!2466534) (not e!3594120))))

(assert (=> b!5861911 (= res!2466534 (not lt!2305648))))

(declare-fun b!5861912 () Bool)

(declare-fun res!2466530 () Bool)

(assert (=> b!5861912 (=> res!2466530 e!3594114)))

(assert (=> b!5861912 (= res!2466530 e!3594118)))

(declare-fun res!2466533 () Bool)

(assert (=> b!5861912 (=> (not res!2466533) (not e!3594118))))

(assert (=> b!5861912 (= res!2466533 lt!2305648)))

(declare-fun b!5861913 () Bool)

(declare-fun res!2466532 () Bool)

(assert (=> b!5861913 (=> (not res!2466532) (not e!3594118))))

(assert (=> b!5861913 (= res!2466532 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5861914 () Bool)

(assert (=> b!5861914 (= e!3594117 (nullable!5928 (regOne!32369 r!7292)))))

(declare-fun b!5861915 () Bool)

(declare-fun res!2466531 () Bool)

(assert (=> b!5861915 (=> (not res!2466531) (not e!3594118))))

(assert (=> b!5861915 (= res!2466531 (not call!459783))))

(assert (= (and d!1840854 c!1040003) b!5861914))

(assert (= (and d!1840854 (not c!1040003)) b!5861906))

(assert (= (and d!1840854 c!1040005) b!5861907))

(assert (= (and d!1840854 (not c!1040005)) b!5861909))

(assert (= (and b!5861909 c!1040004) b!5861905))

(assert (= (and b!5861909 (not c!1040004)) b!5861903))

(assert (= (and b!5861903 (not res!2466536)) b!5861912))

(assert (= (and b!5861912 res!2466533) b!5861915))

(assert (= (and b!5861915 res!2466531) b!5861913))

(assert (= (and b!5861913 res!2466532) b!5861910))

(assert (= (and b!5861912 (not res!2466530)) b!5861911))

(assert (= (and b!5861911 res!2466534) b!5861908))

(assert (= (and b!5861908 (not res!2466535)) b!5861904))

(assert (= (and b!5861904 (not res!2466537)) b!5861902))

(assert (= (or b!5861907 b!5861908 b!5861915) bm!459778))

(assert (=> b!5861913 m!6778672))

(assert (=> b!5861913 m!6778672))

(assert (=> b!5861913 m!6778700))

(assert (=> bm!459778 m!6778664))

(assert (=> b!5861906 m!6778668))

(assert (=> b!5861906 m!6778668))

(declare-fun m!6778718 () Bool)

(assert (=> b!5861906 m!6778718))

(assert (=> b!5861906 m!6778672))

(assert (=> b!5861906 m!6778718))

(assert (=> b!5861906 m!6778672))

(declare-fun m!6778720 () Bool)

(assert (=> b!5861906 m!6778720))

(assert (=> d!1840854 m!6778664))

(assert (=> d!1840854 m!6778698))

(declare-fun m!6778722 () Bool)

(assert (=> b!5861914 m!6778722))

(assert (=> b!5861902 m!6778668))

(assert (=> b!5861910 m!6778668))

(assert (=> b!5861904 m!6778672))

(assert (=> b!5861904 m!6778672))

(assert (=> b!5861904 m!6778700))

(assert (=> b!5861526 d!1840854))

(declare-fun bs!1381060 () Bool)

(declare-fun b!5861920 () Bool)

(assert (= bs!1381060 (and b!5861920 b!5861838)))

(declare-fun lambda!320529 () Int)

(assert (=> bs!1381060 (= (and (= (reg!16257 r!7292) (reg!16257 (regTwo!32369 r!7292))) (= r!7292 (regTwo!32369 r!7292))) (= lambda!320529 lambda!320525))))

(declare-fun bs!1381061 () Bool)

(assert (= bs!1381061 (and b!5861920 b!5861836)))

(assert (=> bs!1381061 (not (= lambda!320529 lambda!320526))))

(declare-fun bs!1381062 () Bool)

(assert (= bs!1381062 (and b!5861920 b!5861895)))

(assert (=> bs!1381062 (= (and (= (reg!16257 r!7292) (reg!16257 (regOne!32369 r!7292))) (= r!7292 (regOne!32369 r!7292))) (= lambda!320529 lambda!320527))))

(declare-fun bs!1381063 () Bool)

(assert (= bs!1381063 (and b!5861920 b!5861893)))

(assert (=> bs!1381063 (not (= lambda!320529 lambda!320528))))

(assert (=> b!5861920 true))

(assert (=> b!5861920 true))

(declare-fun bs!1381064 () Bool)

(declare-fun b!5861918 () Bool)

(assert (= bs!1381064 (and b!5861918 b!5861838)))

(declare-fun lambda!320530 () Int)

(assert (=> bs!1381064 (not (= lambda!320530 lambda!320525))))

(declare-fun bs!1381065 () Bool)

(assert (= bs!1381065 (and b!5861918 b!5861836)))

(assert (=> bs!1381065 (= (and (= (regOne!32368 r!7292) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 r!7292) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320530 lambda!320526))))

(declare-fun bs!1381066 () Bool)

(assert (= bs!1381066 (and b!5861918 b!5861920)))

(assert (=> bs!1381066 (not (= lambda!320530 lambda!320529))))

(declare-fun bs!1381067 () Bool)

(assert (= bs!1381067 (and b!5861918 b!5861895)))

(assert (=> bs!1381067 (not (= lambda!320530 lambda!320527))))

(declare-fun bs!1381068 () Bool)

(assert (= bs!1381068 (and b!5861918 b!5861893)))

(assert (=> bs!1381068 (= (and (= (regOne!32368 r!7292) (regOne!32368 (regOne!32369 r!7292))) (= (regTwo!32368 r!7292) (regTwo!32368 (regOne!32369 r!7292)))) (= lambda!320530 lambda!320528))))

(assert (=> b!5861918 true))

(assert (=> b!5861918 true))

(declare-fun b!5861916 () Bool)

(declare-fun e!3594124 () Bool)

(assert (=> b!5861916 (= e!3594124 (= s!2326 (Cons!63961 (c!1039903 r!7292) Nil!63961)))))

(declare-fun b!5861917 () Bool)

(declare-fun e!3594123 () Bool)

(declare-fun call!459785 () Bool)

(assert (=> b!5861917 (= e!3594123 call!459785)))

(declare-fun e!3594122 () Bool)

(declare-fun call!459784 () Bool)

(assert (=> b!5861918 (= e!3594122 call!459784)))

(declare-fun b!5861919 () Bool)

(declare-fun e!3594121 () Bool)

(declare-fun e!3594126 () Bool)

(assert (=> b!5861919 (= e!3594121 e!3594126)))

(declare-fun res!2466540 () Bool)

(assert (=> b!5861919 (= res!2466540 (matchRSpec!3029 (regOne!32369 r!7292) s!2326))))

(assert (=> b!5861919 (=> res!2466540 e!3594126)))

(declare-fun e!3594125 () Bool)

(assert (=> b!5861920 (= e!3594125 call!459784)))

(declare-fun b!5861921 () Bool)

(assert (=> b!5861921 (= e!3594121 e!3594122)))

(declare-fun c!1040008 () Bool)

(assert (=> b!5861921 (= c!1040008 (is-Star!15928 r!7292))))

(declare-fun b!5861922 () Bool)

(declare-fun e!3594127 () Bool)

(assert (=> b!5861922 (= e!3594123 e!3594127)))

(declare-fun res!2466539 () Bool)

(assert (=> b!5861922 (= res!2466539 (not (is-EmptyLang!15928 r!7292)))))

(assert (=> b!5861922 (=> (not res!2466539) (not e!3594127))))

(declare-fun b!5861923 () Bool)

(declare-fun res!2466538 () Bool)

(assert (=> b!5861923 (=> res!2466538 e!3594125)))

(assert (=> b!5861923 (= res!2466538 call!459785)))

(assert (=> b!5861923 (= e!3594122 e!3594125)))

(declare-fun bm!459779 () Bool)

(assert (=> bm!459779 (= call!459784 (Exists!3000 (ite c!1040008 lambda!320529 lambda!320530)))))

(declare-fun b!5861924 () Bool)

(declare-fun c!1040009 () Bool)

(assert (=> b!5861924 (= c!1040009 (is-Union!15928 r!7292))))

(assert (=> b!5861924 (= e!3594124 e!3594121)))

(declare-fun bm!459780 () Bool)

(assert (=> bm!459780 (= call!459785 (isEmpty!35822 s!2326))))

(declare-fun d!1840856 () Bool)

(declare-fun c!1040007 () Bool)

(assert (=> d!1840856 (= c!1040007 (is-EmptyExpr!15928 r!7292))))

(assert (=> d!1840856 (= (matchRSpec!3029 r!7292 s!2326) e!3594123)))

(declare-fun b!5861925 () Bool)

(declare-fun c!1040006 () Bool)

(assert (=> b!5861925 (= c!1040006 (is-ElementMatch!15928 r!7292))))

(assert (=> b!5861925 (= e!3594127 e!3594124)))

(declare-fun b!5861926 () Bool)

(assert (=> b!5861926 (= e!3594126 (matchRSpec!3029 (regTwo!32369 r!7292) s!2326))))

(assert (= (and d!1840856 c!1040007) b!5861917))

(assert (= (and d!1840856 (not c!1040007)) b!5861922))

(assert (= (and b!5861922 res!2466539) b!5861925))

(assert (= (and b!5861925 c!1040006) b!5861916))

(assert (= (and b!5861925 (not c!1040006)) b!5861924))

(assert (= (and b!5861924 c!1040009) b!5861919))

(assert (= (and b!5861924 (not c!1040009)) b!5861921))

(assert (= (and b!5861919 (not res!2466540)) b!5861926))

(assert (= (and b!5861921 c!1040008) b!5861923))

(assert (= (and b!5861921 (not c!1040008)) b!5861918))

(assert (= (and b!5861923 (not res!2466538)) b!5861920))

(assert (= (or b!5861920 b!5861918) bm!459779))

(assert (= (or b!5861917 b!5861923) bm!459780))

(assert (=> b!5861919 m!6778472))

(declare-fun m!6778724 () Bool)

(assert (=> bm!459779 m!6778724))

(assert (=> bm!459780 m!6778664))

(assert (=> b!5861926 m!6778466))

(assert (=> b!5861547 d!1840856))

(declare-fun b!5861927 () Bool)

(declare-fun e!3594129 () Bool)

(assert (=> b!5861927 (= e!3594129 (not (= (head!12411 s!2326) (c!1039903 r!7292))))))

(declare-fun b!5861928 () Bool)

(declare-fun res!2466547 () Bool)

(declare-fun e!3594128 () Bool)

(assert (=> b!5861928 (=> res!2466547 e!3594128)))

(assert (=> b!5861928 (= res!2466547 (not (is-ElementMatch!15928 r!7292)))))

(declare-fun e!3594130 () Bool)

(assert (=> b!5861928 (= e!3594130 e!3594128)))

(declare-fun b!5861929 () Bool)

(declare-fun res!2466548 () Bool)

(assert (=> b!5861929 (=> res!2466548 e!3594129)))

(assert (=> b!5861929 (= res!2466548 (not (isEmpty!35822 (tail!11496 s!2326))))))

(declare-fun b!5861930 () Bool)

(declare-fun lt!2305649 () Bool)

(assert (=> b!5861930 (= e!3594130 (not lt!2305649))))

(declare-fun b!5861931 () Bool)

(declare-fun e!3594131 () Bool)

(assert (=> b!5861931 (= e!3594131 (matchR!8111 (derivativeStep!4666 r!7292 (head!12411 s!2326)) (tail!11496 s!2326)))))

(declare-fun b!5861932 () Bool)

(declare-fun e!3594133 () Bool)

(declare-fun call!459786 () Bool)

(assert (=> b!5861932 (= e!3594133 (= lt!2305649 call!459786))))

(declare-fun b!5861933 () Bool)

(declare-fun e!3594134 () Bool)

(assert (=> b!5861933 (= e!3594134 e!3594129)))

(declare-fun res!2466546 () Bool)

(assert (=> b!5861933 (=> res!2466546 e!3594129)))

(assert (=> b!5861933 (= res!2466546 call!459786)))

(declare-fun d!1840858 () Bool)

(assert (=> d!1840858 e!3594133))

(declare-fun c!1040012 () Bool)

(assert (=> d!1840858 (= c!1040012 (is-EmptyExpr!15928 r!7292))))

(assert (=> d!1840858 (= lt!2305649 e!3594131)))

(declare-fun c!1040010 () Bool)

(assert (=> d!1840858 (= c!1040010 (isEmpty!35822 s!2326))))

(assert (=> d!1840858 (validRegex!7664 r!7292)))

(assert (=> d!1840858 (= (matchR!8111 r!7292 s!2326) lt!2305649)))

(declare-fun bm!459781 () Bool)

(assert (=> bm!459781 (= call!459786 (isEmpty!35822 s!2326))))

(declare-fun b!5861934 () Bool)

(assert (=> b!5861934 (= e!3594133 e!3594130)))

(declare-fun c!1040011 () Bool)

(assert (=> b!5861934 (= c!1040011 (is-EmptyLang!15928 r!7292))))

(declare-fun b!5861935 () Bool)

(declare-fun e!3594132 () Bool)

(assert (=> b!5861935 (= e!3594132 (= (head!12411 s!2326) (c!1039903 r!7292)))))

(declare-fun b!5861936 () Bool)

(assert (=> b!5861936 (= e!3594128 e!3594134)))

(declare-fun res!2466545 () Bool)

(assert (=> b!5861936 (=> (not res!2466545) (not e!3594134))))

(assert (=> b!5861936 (= res!2466545 (not lt!2305649))))

(declare-fun b!5861937 () Bool)

(declare-fun res!2466541 () Bool)

(assert (=> b!5861937 (=> res!2466541 e!3594128)))

(assert (=> b!5861937 (= res!2466541 e!3594132)))

(declare-fun res!2466544 () Bool)

(assert (=> b!5861937 (=> (not res!2466544) (not e!3594132))))

(assert (=> b!5861937 (= res!2466544 lt!2305649)))

(declare-fun b!5861938 () Bool)

(declare-fun res!2466543 () Bool)

(assert (=> b!5861938 (=> (not res!2466543) (not e!3594132))))

(assert (=> b!5861938 (= res!2466543 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5861939 () Bool)

(assert (=> b!5861939 (= e!3594131 (nullable!5928 r!7292))))

(declare-fun b!5861940 () Bool)

(declare-fun res!2466542 () Bool)

(assert (=> b!5861940 (=> (not res!2466542) (not e!3594132))))

(assert (=> b!5861940 (= res!2466542 (not call!459786))))

(assert (= (and d!1840858 c!1040010) b!5861939))

(assert (= (and d!1840858 (not c!1040010)) b!5861931))

(assert (= (and d!1840858 c!1040012) b!5861932))

(assert (= (and d!1840858 (not c!1040012)) b!5861934))

(assert (= (and b!5861934 c!1040011) b!5861930))

(assert (= (and b!5861934 (not c!1040011)) b!5861928))

(assert (= (and b!5861928 (not res!2466547)) b!5861937))

(assert (= (and b!5861937 res!2466544) b!5861940))

(assert (= (and b!5861940 res!2466542) b!5861938))

(assert (= (and b!5861938 res!2466543) b!5861935))

(assert (= (and b!5861937 (not res!2466541)) b!5861936))

(assert (= (and b!5861936 res!2466545) b!5861933))

(assert (= (and b!5861933 (not res!2466546)) b!5861929))

(assert (= (and b!5861929 (not res!2466548)) b!5861927))

(assert (= (or b!5861932 b!5861933 b!5861940) bm!459781))

(assert (=> b!5861938 m!6778672))

(assert (=> b!5861938 m!6778672))

(assert (=> b!5861938 m!6778700))

(assert (=> bm!459781 m!6778664))

(assert (=> b!5861931 m!6778668))

(assert (=> b!5861931 m!6778668))

(declare-fun m!6778726 () Bool)

(assert (=> b!5861931 m!6778726))

(assert (=> b!5861931 m!6778672))

(assert (=> b!5861931 m!6778726))

(assert (=> b!5861931 m!6778672))

(declare-fun m!6778728 () Bool)

(assert (=> b!5861931 m!6778728))

(assert (=> d!1840858 m!6778664))

(assert (=> d!1840858 m!6778464))

(declare-fun m!6778730 () Bool)

(assert (=> b!5861939 m!6778730))

(assert (=> b!5861927 m!6778668))

(assert (=> b!5861935 m!6778668))

(assert (=> b!5861929 m!6778672))

(assert (=> b!5861929 m!6778672))

(assert (=> b!5861929 m!6778700))

(assert (=> b!5861547 d!1840858))

(declare-fun d!1840860 () Bool)

(assert (=> d!1840860 (= (matchR!8111 r!7292 s!2326) (matchRSpec!3029 r!7292 s!2326))))

(declare-fun lt!2305650 () Unit!157127)

(assert (=> d!1840860 (= lt!2305650 (choose!44438 r!7292 s!2326))))

(assert (=> d!1840860 (validRegex!7664 r!7292)))

(assert (=> d!1840860 (= (mainMatchTheorem!3029 r!7292 s!2326) lt!2305650)))

(declare-fun bs!1381069 () Bool)

(assert (= bs!1381069 d!1840860))

(assert (=> bs!1381069 m!6778424))

(assert (=> bs!1381069 m!6778422))

(declare-fun m!6778732 () Bool)

(assert (=> bs!1381069 m!6778732))

(assert (=> bs!1381069 m!6778464))

(assert (=> b!5861547 d!1840860))

(declare-fun d!1840862 () Bool)

(declare-fun c!1040013 () Bool)

(assert (=> d!1840862 (= c!1040013 (isEmpty!35822 s!2326))))

(declare-fun e!3594135 () Bool)

(assert (=> d!1840862 (= (matchZipper!1994 z!1189 s!2326) e!3594135)))

(declare-fun b!5861941 () Bool)

(assert (=> b!5861941 (= e!3594135 (nullableZipper!1767 z!1189))))

(declare-fun b!5861942 () Bool)

(assert (=> b!5861942 (= e!3594135 (matchZipper!1994 (derivationStepZipper!1927 z!1189 (head!12411 s!2326)) (tail!11496 s!2326)))))

(assert (= (and d!1840862 c!1040013) b!5861941))

(assert (= (and d!1840862 (not c!1040013)) b!5861942))

(assert (=> d!1840862 m!6778664))

(declare-fun m!6778734 () Bool)

(assert (=> b!5861941 m!6778734))

(assert (=> b!5861942 m!6778668))

(assert (=> b!5861942 m!6778668))

(declare-fun m!6778736 () Bool)

(assert (=> b!5861942 m!6778736))

(assert (=> b!5861942 m!6778672))

(assert (=> b!5861942 m!6778736))

(assert (=> b!5861942 m!6778672))

(declare-fun m!6778738 () Bool)

(assert (=> b!5861942 m!6778738))

(assert (=> b!5861537 d!1840862))

(declare-fun d!1840864 () Bool)

(declare-fun c!1040014 () Bool)

(assert (=> d!1840864 (= c!1040014 (isEmpty!35822 (t!377458 s!2326)))))

(declare-fun e!3594136 () Bool)

(assert (=> d!1840864 (= (matchZipper!1994 lt!2305518 (t!377458 s!2326)) e!3594136)))

(declare-fun b!5861943 () Bool)

(assert (=> b!5861943 (= e!3594136 (nullableZipper!1767 lt!2305518))))

(declare-fun b!5861944 () Bool)

(assert (=> b!5861944 (= e!3594136 (matchZipper!1994 (derivationStepZipper!1927 lt!2305518 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))))))

(assert (= (and d!1840864 c!1040014) b!5861943))

(assert (= (and d!1840864 (not c!1040014)) b!5861944))

(assert (=> d!1840864 m!6778616))

(declare-fun m!6778740 () Bool)

(assert (=> b!5861943 m!6778740))

(assert (=> b!5861944 m!6778620))

(assert (=> b!5861944 m!6778620))

(declare-fun m!6778742 () Bool)

(assert (=> b!5861944 m!6778742))

(assert (=> b!5861944 m!6778624))

(assert (=> b!5861944 m!6778742))

(assert (=> b!5861944 m!6778624))

(declare-fun m!6778744 () Bool)

(assert (=> b!5861944 m!6778744))

(assert (=> b!5861537 d!1840864))

(declare-fun d!1840866 () Bool)

(declare-fun c!1040015 () Bool)

(assert (=> d!1840866 (= c!1040015 (isEmpty!35822 (t!377458 s!2326)))))

(declare-fun e!3594137 () Bool)

(assert (=> d!1840866 (= (matchZipper!1994 lt!2305537 (t!377458 s!2326)) e!3594137)))

(declare-fun b!5861945 () Bool)

(assert (=> b!5861945 (= e!3594137 (nullableZipper!1767 lt!2305537))))

(declare-fun b!5861946 () Bool)

(assert (=> b!5861946 (= e!3594137 (matchZipper!1994 (derivationStepZipper!1927 lt!2305537 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))))))

(assert (= (and d!1840866 c!1040015) b!5861945))

(assert (= (and d!1840866 (not c!1040015)) b!5861946))

(assert (=> d!1840866 m!6778616))

(declare-fun m!6778746 () Bool)

(assert (=> b!5861945 m!6778746))

(assert (=> b!5861946 m!6778620))

(assert (=> b!5861946 m!6778620))

(declare-fun m!6778748 () Bool)

(assert (=> b!5861946 m!6778748))

(assert (=> b!5861946 m!6778624))

(assert (=> b!5861946 m!6778748))

(assert (=> b!5861946 m!6778624))

(declare-fun m!6778750 () Bool)

(assert (=> b!5861946 m!6778750))

(assert (=> b!5861527 d!1840866))

(declare-fun d!1840868 () Bool)

(declare-fun e!3594140 () Bool)

(assert (=> d!1840868 (= (matchZipper!1994 (set.union lt!2305537 lt!2305528) (t!377458 s!2326)) e!3594140)))

(declare-fun res!2466551 () Bool)

(assert (=> d!1840868 (=> res!2466551 e!3594140)))

(assert (=> d!1840868 (= res!2466551 (matchZipper!1994 lt!2305537 (t!377458 s!2326)))))

(declare-fun lt!2305653 () Unit!157127)

(declare-fun choose!44439 ((Set Context!10624) (Set Context!10624) List!64085) Unit!157127)

(assert (=> d!1840868 (= lt!2305653 (choose!44439 lt!2305537 lt!2305528 (t!377458 s!2326)))))

(assert (=> d!1840868 (= (lemmaZipperConcatMatchesSameAsBothZippers!829 lt!2305537 lt!2305528 (t!377458 s!2326)) lt!2305653)))

(declare-fun b!5861949 () Bool)

(assert (=> b!5861949 (= e!3594140 (matchZipper!1994 lt!2305528 (t!377458 s!2326)))))

(assert (= (and d!1840868 (not res!2466551)) b!5861949))

(declare-fun m!6778752 () Bool)

(assert (=> d!1840868 m!6778752))

(assert (=> d!1840868 m!6778444))

(declare-fun m!6778754 () Bool)

(assert (=> d!1840868 m!6778754))

(assert (=> b!5861949 m!6778440))

(assert (=> b!5861527 d!1840868))

(declare-fun d!1840870 () Bool)

(declare-fun e!3594143 () Bool)

(assert (=> d!1840870 e!3594143))

(declare-fun res!2466554 () Bool)

(assert (=> d!1840870 (=> (not res!2466554) (not e!3594143))))

(declare-fun lt!2305656 () List!64084)

(declare-fun noDuplicate!1793 (List!64084) Bool)

(assert (=> d!1840870 (= res!2466554 (noDuplicate!1793 lt!2305656))))

(declare-fun choose!44440 ((Set Context!10624)) List!64084)

(assert (=> d!1840870 (= lt!2305656 (choose!44440 z!1189))))

(assert (=> d!1840870 (= (toList!9712 z!1189) lt!2305656)))

(declare-fun b!5861952 () Bool)

(declare-fun content!11758 (List!64084) (Set Context!10624))

(assert (=> b!5861952 (= e!3594143 (= (content!11758 lt!2305656) z!1189))))

(assert (= (and d!1840870 res!2466554) b!5861952))

(declare-fun m!6778756 () Bool)

(assert (=> d!1840870 m!6778756))

(declare-fun m!6778758 () Bool)

(assert (=> d!1840870 m!6778758))

(declare-fun m!6778760 () Bool)

(assert (=> b!5861952 m!6778760))

(assert (=> b!5861528 d!1840870))

(declare-fun bs!1381070 () Bool)

(declare-fun d!1840872 () Bool)

(assert (= bs!1381070 (and d!1840872 d!1840816)))

(declare-fun lambda!320531 () Int)

(assert (=> bs!1381070 (= lambda!320531 lambda!320511)))

(declare-fun bs!1381071 () Bool)

(assert (= bs!1381071 (and d!1840872 d!1840818)))

(assert (=> bs!1381071 (= lambda!320531 lambda!320514)))

(declare-fun bs!1381072 () Bool)

(assert (= bs!1381072 (and d!1840872 d!1840820)))

(assert (=> bs!1381072 (= lambda!320531 lambda!320517)))

(declare-fun bs!1381073 () Bool)

(assert (= bs!1381073 (and d!1840872 d!1840824)))

(assert (=> bs!1381073 (= lambda!320531 lambda!320520)))

(assert (=> d!1840872 (= (inv!83068 lt!2305536) (forall!15015 (exprs!5812 lt!2305536) lambda!320531))))

(declare-fun bs!1381074 () Bool)

(assert (= bs!1381074 d!1840872))

(declare-fun m!6778762 () Bool)

(assert (=> bs!1381074 m!6778762))

(assert (=> b!5861548 d!1840872))

(declare-fun d!1840874 () Bool)

(declare-fun c!1040017 () Bool)

(assert (=> d!1840874 (= c!1040017 (and (is-ElementMatch!15928 r!7292) (= (c!1039903 r!7292) (h!70409 s!2326))))))

(declare-fun e!3594146 () (Set Context!10624))

(assert (=> d!1840874 (= (derivationStepZipperDown!1194 r!7292 lt!2305515 (h!70409 s!2326)) e!3594146)))

(declare-fun b!5861953 () Bool)

(declare-fun e!3594148 () (Set Context!10624))

(declare-fun e!3594147 () (Set Context!10624))

(assert (=> b!5861953 (= e!3594148 e!3594147)))

(declare-fun c!1040018 () Bool)

(assert (=> b!5861953 (= c!1040018 (is-Concat!24773 r!7292))))

(declare-fun bm!459782 () Bool)

(declare-fun call!459789 () (Set Context!10624))

(declare-fun call!459791 () (Set Context!10624))

(assert (=> bm!459782 (= call!459789 call!459791)))

(declare-fun b!5861954 () Bool)

(declare-fun c!1040016 () Bool)

(declare-fun e!3594145 () Bool)

(assert (=> b!5861954 (= c!1040016 e!3594145)))

(declare-fun res!2466555 () Bool)

(assert (=> b!5861954 (=> (not res!2466555) (not e!3594145))))

(assert (=> b!5861954 (= res!2466555 (is-Concat!24773 r!7292))))

(declare-fun e!3594144 () (Set Context!10624))

(assert (=> b!5861954 (= e!3594144 e!3594148)))

(declare-fun bm!459783 () Bool)

(declare-fun call!459790 () List!64083)

(declare-fun call!459792 () List!64083)

(assert (=> bm!459783 (= call!459790 call!459792)))

(declare-fun b!5861955 () Bool)

(declare-fun call!459788 () (Set Context!10624))

(assert (=> b!5861955 (= e!3594144 (set.union call!459791 call!459788))))

(declare-fun bm!459784 () Bool)

(assert (=> bm!459784 (= call!459792 ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1040016 c!1040018) (regTwo!32368 r!7292) r!7292)))))

(declare-fun b!5861956 () Bool)

(declare-fun e!3594149 () (Set Context!10624))

(assert (=> b!5861956 (= e!3594149 (as set.empty (Set Context!10624)))))

(declare-fun b!5861957 () Bool)

(declare-fun call!459787 () (Set Context!10624))

(assert (=> b!5861957 (= e!3594149 call!459787)))

(declare-fun c!1040020 () Bool)

(declare-fun bm!459785 () Bool)

(assert (=> bm!459785 (= call!459791 (derivationStepZipperDown!1194 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))) (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790)) (h!70409 s!2326)))))

(declare-fun b!5861958 () Bool)

(assert (=> b!5861958 (= e!3594146 (set.insert lt!2305515 (as set.empty (Set Context!10624))))))

(declare-fun b!5861959 () Bool)

(assert (=> b!5861959 (= e!3594146 e!3594144)))

(assert (=> b!5861959 (= c!1040020 (is-Union!15928 r!7292))))

(declare-fun bm!459786 () Bool)

(assert (=> bm!459786 (= call!459787 call!459789)))

(declare-fun bm!459787 () Bool)

(assert (=> bm!459787 (= call!459788 (derivationStepZipperDown!1194 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)) (ite c!1040020 lt!2305515 (Context!10625 call!459792)) (h!70409 s!2326)))))

(declare-fun b!5861960 () Bool)

(assert (=> b!5861960 (= e!3594148 (set.union call!459788 call!459789))))

(declare-fun b!5861961 () Bool)

(declare-fun c!1040019 () Bool)

(assert (=> b!5861961 (= c!1040019 (is-Star!15928 r!7292))))

(assert (=> b!5861961 (= e!3594147 e!3594149)))

(declare-fun b!5861962 () Bool)

(assert (=> b!5861962 (= e!3594145 (nullable!5928 (regOne!32368 r!7292)))))

(declare-fun b!5861963 () Bool)

(assert (=> b!5861963 (= e!3594147 call!459787)))

(assert (= (and d!1840874 c!1040017) b!5861958))

(assert (= (and d!1840874 (not c!1040017)) b!5861959))

(assert (= (and b!5861959 c!1040020) b!5861955))

(assert (= (and b!5861959 (not c!1040020)) b!5861954))

(assert (= (and b!5861954 res!2466555) b!5861962))

(assert (= (and b!5861954 c!1040016) b!5861960))

(assert (= (and b!5861954 (not c!1040016)) b!5861953))

(assert (= (and b!5861953 c!1040018) b!5861963))

(assert (= (and b!5861953 (not c!1040018)) b!5861961))

(assert (= (and b!5861961 c!1040019) b!5861957))

(assert (= (and b!5861961 (not c!1040019)) b!5861956))

(assert (= (or b!5861963 b!5861957) bm!459783))

(assert (= (or b!5861963 b!5861957) bm!459786))

(assert (= (or b!5861960 bm!459783) bm!459784))

(assert (= (or b!5861960 bm!459786) bm!459782))

(assert (= (or b!5861955 b!5861960) bm!459787))

(assert (= (or b!5861955 bm!459782) bm!459785))

(assert (=> b!5861958 m!6778572))

(declare-fun m!6778764 () Bool)

(assert (=> b!5861962 m!6778764))

(declare-fun m!6778766 () Bool)

(assert (=> bm!459787 m!6778766))

(declare-fun m!6778768 () Bool)

(assert (=> bm!459784 m!6778768))

(declare-fun m!6778770 () Bool)

(assert (=> bm!459785 m!6778770))

(assert (=> b!5861534 d!1840874))

(declare-fun b!5861964 () Bool)

(declare-fun e!3594152 () Bool)

(assert (=> b!5861964 (= e!3594152 (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(declare-fun b!5861965 () Bool)

(declare-fun e!3594151 () (Set Context!10624))

(assert (=> b!5861965 (= e!3594151 (as set.empty (Set Context!10624)))))

(declare-fun d!1840876 () Bool)

(declare-fun c!1040021 () Bool)

(assert (=> d!1840876 (= c!1040021 e!3594152)))

(declare-fun res!2466556 () Bool)

(assert (=> d!1840876 (=> (not res!2466556) (not e!3594152))))

(assert (=> d!1840876 (= res!2466556 (is-Cons!63959 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))

(declare-fun e!3594150 () (Set Context!10624))

(assert (=> d!1840876 (= (derivationStepZipperUp!1120 (Context!10625 (Cons!63959 r!7292 Nil!63959)) (h!70409 s!2326)) e!3594150)))

(declare-fun b!5861966 () Bool)

(assert (=> b!5861966 (= e!3594150 e!3594151)))

(declare-fun c!1040022 () Bool)

(assert (=> b!5861966 (= c!1040022 (is-Cons!63959 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))

(declare-fun b!5861967 () Bool)

(declare-fun call!459793 () (Set Context!10624))

(assert (=> b!5861967 (= e!3594151 call!459793)))

(declare-fun b!5861968 () Bool)

(assert (=> b!5861968 (= e!3594150 (set.union call!459793 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70409 s!2326))))))

(declare-fun bm!459788 () Bool)

(assert (=> bm!459788 (= call!459793 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70409 s!2326)))))

(assert (= (and d!1840876 res!2466556) b!5861964))

(assert (= (and d!1840876 c!1040021) b!5861968))

(assert (= (and d!1840876 (not c!1040021)) b!5861966))

(assert (= (and b!5861966 c!1040022) b!5861967))

(assert (= (and b!5861966 (not c!1040022)) b!5861965))

(assert (= (or b!5861968 b!5861967) bm!459788))

(declare-fun m!6778772 () Bool)

(assert (=> b!5861964 m!6778772))

(declare-fun m!6778774 () Bool)

(assert (=> b!5861968 m!6778774))

(declare-fun m!6778776 () Bool)

(assert (=> bm!459788 m!6778776))

(assert (=> b!5861534 d!1840876))

(declare-fun bs!1381075 () Bool)

(declare-fun d!1840878 () Bool)

(assert (= bs!1381075 (and d!1840878 b!5861545)))

(declare-fun lambda!320534 () Int)

(assert (=> bs!1381075 (= lambda!320534 lambda!320501)))

(assert (=> d!1840878 true))

(assert (=> d!1840878 (= (derivationStepZipper!1927 z!1189 (h!70409 s!2326)) (flatMap!1459 z!1189 lambda!320534))))

(declare-fun bs!1381076 () Bool)

(assert (= bs!1381076 d!1840878))

(declare-fun m!6778778 () Bool)

(assert (=> bs!1381076 m!6778778))

(assert (=> b!5861545 d!1840878))

(declare-fun d!1840880 () Bool)

(assert (=> d!1840880 (= (flatMap!1459 z!1189 lambda!320501) (choose!44437 z!1189 lambda!320501))))

(declare-fun bs!1381077 () Bool)

(assert (= bs!1381077 d!1840880))

(declare-fun m!6778780 () Bool)

(assert (=> bs!1381077 m!6778780))

(assert (=> b!5861545 d!1840880))

(declare-fun b!5861971 () Bool)

(declare-fun e!3594155 () Bool)

(assert (=> b!5861971 (= e!3594155 (nullable!5928 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5861972 () Bool)

(declare-fun e!3594154 () (Set Context!10624))

(assert (=> b!5861972 (= e!3594154 (as set.empty (Set Context!10624)))))

(declare-fun d!1840882 () Bool)

(declare-fun c!1040025 () Bool)

(assert (=> d!1840882 (= c!1040025 e!3594155)))

(declare-fun res!2466557 () Bool)

(assert (=> d!1840882 (=> (not res!2466557) (not e!3594155))))

(assert (=> d!1840882 (= res!2466557 (is-Cons!63959 (exprs!5812 (h!70408 zl!343))))))

(declare-fun e!3594153 () (Set Context!10624))

(assert (=> d!1840882 (= (derivationStepZipperUp!1120 (h!70408 zl!343) (h!70409 s!2326)) e!3594153)))

(declare-fun b!5861973 () Bool)

(assert (=> b!5861973 (= e!3594153 e!3594154)))

(declare-fun c!1040026 () Bool)

(assert (=> b!5861973 (= c!1040026 (is-Cons!63959 (exprs!5812 (h!70408 zl!343))))))

(declare-fun b!5861974 () Bool)

(declare-fun call!459794 () (Set Context!10624))

(assert (=> b!5861974 (= e!3594154 call!459794)))

(declare-fun b!5861975 () Bool)

(assert (=> b!5861975 (= e!3594153 (set.union call!459794 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (h!70409 s!2326))))))

(declare-fun bm!459789 () Bool)

(assert (=> bm!459789 (= call!459794 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (h!70408 zl!343))) (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (h!70409 s!2326)))))

(assert (= (and d!1840882 res!2466557) b!5861971))

(assert (= (and d!1840882 c!1040025) b!5861975))

(assert (= (and d!1840882 (not c!1040025)) b!5861973))

(assert (= (and b!5861973 c!1040026) b!5861974))

(assert (= (and b!5861973 (not c!1040026)) b!5861972))

(assert (= (or b!5861975 b!5861974) bm!459789))

(declare-fun m!6778782 () Bool)

(assert (=> b!5861971 m!6778782))

(declare-fun m!6778784 () Bool)

(assert (=> b!5861975 m!6778784))

(declare-fun m!6778786 () Bool)

(assert (=> bm!459789 m!6778786))

(assert (=> b!5861545 d!1840882))

(declare-fun d!1840886 () Bool)

(assert (=> d!1840886 (= (flatMap!1459 z!1189 lambda!320501) (dynLambda!25011 lambda!320501 (h!70408 zl!343)))))

(declare-fun lt!2305657 () Unit!157127)

(assert (=> d!1840886 (= lt!2305657 (choose!44436 z!1189 (h!70408 zl!343) lambda!320501))))

(assert (=> d!1840886 (= z!1189 (set.insert (h!70408 zl!343) (as set.empty (Set Context!10624))))))

(assert (=> d!1840886 (= (lemmaFlatMapOnSingletonSet!987 z!1189 (h!70408 zl!343) lambda!320501) lt!2305657)))

(declare-fun b_lambda!220657 () Bool)

(assert (=> (not b_lambda!220657) (not d!1840886)))

(declare-fun bs!1381078 () Bool)

(assert (= bs!1381078 d!1840886))

(assert (=> bs!1381078 m!6778432))

(declare-fun m!6778788 () Bool)

(assert (=> bs!1381078 m!6778788))

(declare-fun m!6778790 () Bool)

(assert (=> bs!1381078 m!6778790))

(declare-fun m!6778792 () Bool)

(assert (=> bs!1381078 m!6778792))

(assert (=> b!5861545 d!1840886))

(declare-fun bs!1381079 () Bool)

(declare-fun d!1840888 () Bool)

(assert (= bs!1381079 (and d!1840888 d!1840818)))

(declare-fun lambda!320535 () Int)

(assert (=> bs!1381079 (= lambda!320535 lambda!320514)))

(declare-fun bs!1381080 () Bool)

(assert (= bs!1381080 (and d!1840888 d!1840872)))

(assert (=> bs!1381080 (= lambda!320535 lambda!320531)))

(declare-fun bs!1381081 () Bool)

(assert (= bs!1381081 (and d!1840888 d!1840824)))

(assert (=> bs!1381081 (= lambda!320535 lambda!320520)))

(declare-fun bs!1381082 () Bool)

(assert (= bs!1381082 (and d!1840888 d!1840816)))

(assert (=> bs!1381082 (= lambda!320535 lambda!320511)))

(declare-fun bs!1381083 () Bool)

(assert (= bs!1381083 (and d!1840888 d!1840820)))

(assert (=> bs!1381083 (= lambda!320535 lambda!320517)))

(assert (=> d!1840888 (= (inv!83068 (h!70408 zl!343)) (forall!15015 (exprs!5812 (h!70408 zl!343)) lambda!320535))))

(declare-fun bs!1381084 () Bool)

(assert (= bs!1381084 d!1840888))

(declare-fun m!6778794 () Bool)

(assert (=> bs!1381084 m!6778794))

(assert (=> b!5861536 d!1840888))

(declare-fun e!3594158 () Bool)

(assert (=> b!5861546 (= tp!1621396 e!3594158)))

(declare-fun b!5861986 () Bool)

(assert (=> b!5861986 (= e!3594158 tp_is_empty!41109)))

(declare-fun b!5861987 () Bool)

(declare-fun tp!1621441 () Bool)

(declare-fun tp!1621439 () Bool)

(assert (=> b!5861987 (= e!3594158 (and tp!1621441 tp!1621439))))

(declare-fun b!5861989 () Bool)

(declare-fun tp!1621440 () Bool)

(declare-fun tp!1621443 () Bool)

(assert (=> b!5861989 (= e!3594158 (and tp!1621440 tp!1621443))))

(declare-fun b!5861988 () Bool)

(declare-fun tp!1621442 () Bool)

(assert (=> b!5861988 (= e!3594158 tp!1621442)))

(assert (= (and b!5861546 (is-ElementMatch!15928 (regOne!32368 r!7292))) b!5861986))

(assert (= (and b!5861546 (is-Concat!24773 (regOne!32368 r!7292))) b!5861987))

(assert (= (and b!5861546 (is-Star!15928 (regOne!32368 r!7292))) b!5861988))

(assert (= (and b!5861546 (is-Union!15928 (regOne!32368 r!7292))) b!5861989))

(declare-fun e!3594159 () Bool)

(assert (=> b!5861546 (= tp!1621398 e!3594159)))

(declare-fun b!5861990 () Bool)

(assert (=> b!5861990 (= e!3594159 tp_is_empty!41109)))

(declare-fun b!5861991 () Bool)

(declare-fun tp!1621446 () Bool)

(declare-fun tp!1621444 () Bool)

(assert (=> b!5861991 (= e!3594159 (and tp!1621446 tp!1621444))))

(declare-fun b!5861993 () Bool)

(declare-fun tp!1621445 () Bool)

(declare-fun tp!1621448 () Bool)

(assert (=> b!5861993 (= e!3594159 (and tp!1621445 tp!1621448))))

(declare-fun b!5861992 () Bool)

(declare-fun tp!1621447 () Bool)

(assert (=> b!5861992 (= e!3594159 tp!1621447)))

(assert (= (and b!5861546 (is-ElementMatch!15928 (regTwo!32368 r!7292))) b!5861990))

(assert (= (and b!5861546 (is-Concat!24773 (regTwo!32368 r!7292))) b!5861991))

(assert (= (and b!5861546 (is-Star!15928 (regTwo!32368 r!7292))) b!5861992))

(assert (= (and b!5861546 (is-Union!15928 (regTwo!32368 r!7292))) b!5861993))

(declare-fun b!5861998 () Bool)

(declare-fun e!3594162 () Bool)

(declare-fun tp!1621453 () Bool)

(declare-fun tp!1621454 () Bool)

(assert (=> b!5861998 (= e!3594162 (and tp!1621453 tp!1621454))))

(assert (=> b!5861531 (= tp!1621390 e!3594162)))

(assert (= (and b!5861531 (is-Cons!63959 (exprs!5812 setElem!39753))) b!5861998))

(declare-fun b!5861999 () Bool)

(declare-fun e!3594163 () Bool)

(declare-fun tp!1621455 () Bool)

(declare-fun tp!1621456 () Bool)

(assert (=> b!5861999 (= e!3594163 (and tp!1621455 tp!1621456))))

(assert (=> b!5861543 (= tp!1621394 e!3594163)))

(assert (= (and b!5861543 (is-Cons!63959 (exprs!5812 (h!70408 zl!343)))) b!5861999))

(declare-fun b!5862004 () Bool)

(declare-fun e!3594166 () Bool)

(declare-fun tp!1621459 () Bool)

(assert (=> b!5862004 (= e!3594166 (and tp_is_empty!41109 tp!1621459))))

(assert (=> b!5861533 (= tp!1621397 e!3594166)))

(assert (= (and b!5861533 (is-Cons!63961 (t!377458 s!2326))) b!5862004))

(declare-fun condSetEmpty!39759 () Bool)

(assert (=> setNonEmpty!39753 (= condSetEmpty!39759 (= setRest!39753 (as set.empty (Set Context!10624))))))

(declare-fun setRes!39759 () Bool)

(assert (=> setNonEmpty!39753 (= tp!1621395 setRes!39759)))

(declare-fun setIsEmpty!39759 () Bool)

(assert (=> setIsEmpty!39759 setRes!39759))

(declare-fun setNonEmpty!39759 () Bool)

(declare-fun tp!1621465 () Bool)

(declare-fun e!3594169 () Bool)

(declare-fun setElem!39759 () Context!10624)

(assert (=> setNonEmpty!39759 (= setRes!39759 (and tp!1621465 (inv!83068 setElem!39759) e!3594169))))

(declare-fun setRest!39759 () (Set Context!10624))

(assert (=> setNonEmpty!39759 (= setRest!39753 (set.union (set.insert setElem!39759 (as set.empty (Set Context!10624))) setRest!39759))))

(declare-fun b!5862009 () Bool)

(declare-fun tp!1621464 () Bool)

(assert (=> b!5862009 (= e!3594169 tp!1621464)))

(assert (= (and setNonEmpty!39753 condSetEmpty!39759) setIsEmpty!39759))

(assert (= (and setNonEmpty!39753 (not condSetEmpty!39759)) setNonEmpty!39759))

(assert (= setNonEmpty!39759 b!5862009))

(declare-fun m!6778796 () Bool)

(assert (=> setNonEmpty!39759 m!6778796))

(declare-fun e!3594170 () Bool)

(assert (=> b!5861535 (= tp!1621392 e!3594170)))

(declare-fun b!5862010 () Bool)

(assert (=> b!5862010 (= e!3594170 tp_is_empty!41109)))

(declare-fun b!5862011 () Bool)

(declare-fun tp!1621468 () Bool)

(declare-fun tp!1621466 () Bool)

(assert (=> b!5862011 (= e!3594170 (and tp!1621468 tp!1621466))))

(declare-fun b!5862013 () Bool)

(declare-fun tp!1621467 () Bool)

(declare-fun tp!1621470 () Bool)

(assert (=> b!5862013 (= e!3594170 (and tp!1621467 tp!1621470))))

(declare-fun b!5862012 () Bool)

(declare-fun tp!1621469 () Bool)

(assert (=> b!5862012 (= e!3594170 tp!1621469)))

(assert (= (and b!5861535 (is-ElementMatch!15928 (reg!16257 r!7292))) b!5862010))

(assert (= (and b!5861535 (is-Concat!24773 (reg!16257 r!7292))) b!5862011))

(assert (= (and b!5861535 (is-Star!15928 (reg!16257 r!7292))) b!5862012))

(assert (= (and b!5861535 (is-Union!15928 (reg!16257 r!7292))) b!5862013))

(declare-fun b!5862027 () Bool)

(declare-fun e!3594180 () Bool)

(declare-fun tp!1621475 () Bool)

(assert (=> b!5862027 (= e!3594180 tp!1621475)))

(declare-fun b!5862026 () Bool)

(declare-fun tp!1621476 () Bool)

(declare-fun e!3594179 () Bool)

(assert (=> b!5862026 (= e!3594179 (and (inv!83068 (h!70408 (t!377457 zl!343))) e!3594180 tp!1621476))))

(assert (=> b!5861536 (= tp!1621389 e!3594179)))

(assert (= b!5862026 b!5862027))

(assert (= (and b!5861536 (is-Cons!63960 (t!377457 zl!343))) b!5862026))

(declare-fun m!6778798 () Bool)

(assert (=> b!5862026 m!6778798))

(declare-fun e!3594183 () Bool)

(assert (=> b!5861525 (= tp!1621391 e!3594183)))

(declare-fun b!5862030 () Bool)

(assert (=> b!5862030 (= e!3594183 tp_is_empty!41109)))

(declare-fun b!5862031 () Bool)

(declare-fun tp!1621479 () Bool)

(declare-fun tp!1621477 () Bool)

(assert (=> b!5862031 (= e!3594183 (and tp!1621479 tp!1621477))))

(declare-fun b!5862033 () Bool)

(declare-fun tp!1621478 () Bool)

(declare-fun tp!1621481 () Bool)

(assert (=> b!5862033 (= e!3594183 (and tp!1621478 tp!1621481))))

(declare-fun b!5862032 () Bool)

(declare-fun tp!1621480 () Bool)

(assert (=> b!5862032 (= e!3594183 tp!1621480)))

(assert (= (and b!5861525 (is-ElementMatch!15928 (regOne!32369 r!7292))) b!5862030))

(assert (= (and b!5861525 (is-Concat!24773 (regOne!32369 r!7292))) b!5862031))

(assert (= (and b!5861525 (is-Star!15928 (regOne!32369 r!7292))) b!5862032))

(assert (= (and b!5861525 (is-Union!15928 (regOne!32369 r!7292))) b!5862033))

(declare-fun e!3594188 () Bool)

(assert (=> b!5861525 (= tp!1621393 e!3594188)))

(declare-fun b!5862040 () Bool)

(assert (=> b!5862040 (= e!3594188 tp_is_empty!41109)))

(declare-fun b!5862041 () Bool)

(declare-fun tp!1621484 () Bool)

(declare-fun tp!1621482 () Bool)

(assert (=> b!5862041 (= e!3594188 (and tp!1621484 tp!1621482))))

(declare-fun b!5862043 () Bool)

(declare-fun tp!1621483 () Bool)

(declare-fun tp!1621486 () Bool)

(assert (=> b!5862043 (= e!3594188 (and tp!1621483 tp!1621486))))

(declare-fun b!5862042 () Bool)

(declare-fun tp!1621485 () Bool)

(assert (=> b!5862042 (= e!3594188 tp!1621485)))

(assert (= (and b!5861525 (is-ElementMatch!15928 (regTwo!32369 r!7292))) b!5862040))

(assert (= (and b!5861525 (is-Concat!24773 (regTwo!32369 r!7292))) b!5862041))

(assert (= (and b!5861525 (is-Star!15928 (regTwo!32369 r!7292))) b!5862042))

(assert (= (and b!5861525 (is-Union!15928 (regTwo!32369 r!7292))) b!5862043))

(declare-fun b_lambda!220659 () Bool)

(assert (= b_lambda!220657 (or b!5861545 b_lambda!220659)))

(declare-fun bs!1381085 () Bool)

(declare-fun d!1840890 () Bool)

(assert (= bs!1381085 (and d!1840890 b!5861545)))

(assert (=> bs!1381085 (= (dynLambda!25011 lambda!320501 (h!70408 zl!343)) (derivationStepZipperUp!1120 (h!70408 zl!343) (h!70409 s!2326)))))

(assert (=> bs!1381085 m!6778434))

(assert (=> d!1840886 d!1840890))

(declare-fun b_lambda!220661 () Bool)

(assert (= b_lambda!220653 (or b!5861545 b_lambda!220661)))

(declare-fun bs!1381086 () Bool)

(declare-fun d!1840892 () Bool)

(assert (= bs!1381086 (and d!1840892 b!5861545)))

(assert (=> bs!1381086 (= (dynLambda!25011 lambda!320501 lt!2305536) (derivationStepZipperUp!1120 lt!2305536 (h!70409 s!2326)))))

(assert (=> bs!1381086 m!6778398))

(assert (=> d!1840826 d!1840892))

(declare-fun b_lambda!220663 () Bool)

(assert (= b_lambda!220655 (or b!5861545 b_lambda!220663)))

(declare-fun bs!1381087 () Bool)

(declare-fun d!1840894 () Bool)

(assert (= bs!1381087 (and d!1840894 b!5861545)))

(assert (=> bs!1381087 (= (dynLambda!25011 lambda!320501 lt!2305529) (derivationStepZipperUp!1120 lt!2305529 (h!70409 s!2326)))))

(assert (=> bs!1381087 m!6778408))

(assert (=> d!1840830 d!1840894))

(push 1)

(assert (not b!5861881))

(assert (not d!1840832))

(assert (not b!5861730))

(assert (not b!5861773))

(assert (not bm!459789))

(assert (not b!5861793))

(assert (not d!1840888))

(assert (not bm!459780))

(assert (not b!5861776))

(assert (not b!5861771))

(assert (not b_lambda!220661))

(assert (not d!1840820))

(assert (not b!5861927))

(assert (not b!5861794))

(assert (not d!1840860))

(assert (not d!1840858))

(assert (not b!5861989))

(assert (not d!1840872))

(assert (not d!1840846))

(assert (not bm!459772))

(assert (not d!1840870))

(assert (not b!5862026))

(assert (not d!1840850))

(assert (not bm!459787))

(assert (not b!5862027))

(assert (not b!5861999))

(assert (not d!1840862))

(assert (not d!1840854))

(assert (not b!5861943))

(assert (not b!5861894))

(assert (not bm!459759))

(assert (not b!5861728))

(assert (not b!5861931))

(assert (not b!5861942))

(assert (not b!5861946))

(assert (not b!5861910))

(assert tp_is_empty!41109)

(assert (not b!5862042))

(assert (not b!5861740))

(assert (not b!5861877))

(assert (not b!5861919))

(assert (not bm!459788))

(assert (not b!5861949))

(assert (not b!5861844))

(assert (not b!5861904))

(assert (not b!5861929))

(assert (not d!1840816))

(assert (not b!5861938))

(assert (not b!5861945))

(assert (not b!5861941))

(assert (not b!5862041))

(assert (not b_lambda!220663))

(assert (not d!1840834))

(assert (not b!5861726))

(assert (not d!1840878))

(assert (not b!5861768))

(assert (not b!5861902))

(assert (not d!1840826))

(assert (not bm!459756))

(assert (not b!5861888))

(assert (not b!5861992))

(assert (not b!5861801))

(assert (not bm!459784))

(assert (not setNonEmpty!39759))

(assert (not bm!459762))

(assert (not b!5861799))

(assert (not bm!459777))

(assert (not b!5861731))

(assert (not d!1840886))

(assert (not b!5862012))

(assert (not b!5861770))

(assert (not b!5862031))

(assert (not bm!459776))

(assert (not b!5862033))

(assert (not b!5861879))

(assert (not b!5862009))

(assert (not b!5862032))

(assert (not b!5862011))

(assert (not bm!459765))

(assert (not b!5861792))

(assert (not b!5861952))

(assert (not b!5861944))

(assert (not b!5861962))

(assert (not b!5861746))

(assert (not b!5861747))

(assert (not b!5861991))

(assert (not bs!1381087))

(assert (not d!1840866))

(assert (not bm!459771))

(assert (not b!5861988))

(assert (not b!5861926))

(assert (not b_lambda!220659))

(assert (not b!5861729))

(assert (not b!5861769))

(assert (not d!1840868))

(assert (not d!1840864))

(assert (not d!1840848))

(assert (not d!1840822))

(assert (not bm!459779))

(assert (not b!5861906))

(assert (not b!5861777))

(assert (not b!5861968))

(assert (not bm!459778))

(assert (not b!5861935))

(assert (not bm!459753))

(assert (not bm!459760))

(assert (not d!1840824))

(assert (not b!5861993))

(assert (not b!5861800))

(assert (not b!5861704))

(assert (not b!5861987))

(assert (not b!5861971))

(assert (not d!1840842))

(assert (not bm!459781))

(assert (not d!1840808))

(assert (not b!5861975))

(assert (not b!5861837))

(assert (not bm!459736))

(assert (not bm!459785))

(assert (not d!1840818))

(assert (not b!5862043))

(assert (not b!5861913))

(assert (not b!5862004))

(assert (not b!5861901))

(assert (not d!1840830))

(assert (not b!5861733))

(assert (not b!5861657))

(assert (not d!1840880))

(assert (not d!1840836))

(assert (not b!5861727))

(assert (not b!5861939))

(assert (not bs!1381085))

(assert (not b!5862013))

(assert (not b!5861914))

(assert (not b!5861795))

(assert (not b!5861885))

(assert (not b!5861693))

(assert (not bs!1381086))

(assert (not bm!459737))

(assert (not bm!459775))

(assert (not b!5861998))

(assert (not b!5861889))

(assert (not bm!459754))

(assert (not b!5861964))

(assert (not bm!459766))

(assert (not b!5861788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!459850 () Bool)

(declare-fun call!459857 () Bool)

(declare-fun c!1040143 () Bool)

(assert (=> bm!459850 (= call!459857 (validRegex!7664 (ite c!1040143 (regTwo!32369 lt!2305636) (regTwo!32368 lt!2305636))))))

(declare-fun b!5862426 () Bool)

(declare-fun e!3594403 () Bool)

(assert (=> b!5862426 (= e!3594403 call!459857)))

(declare-fun b!5862427 () Bool)

(declare-fun res!2466671 () Bool)

(declare-fun e!3594398 () Bool)

(assert (=> b!5862427 (=> (not res!2466671) (not e!3594398))))

(declare-fun call!459855 () Bool)

(assert (=> b!5862427 (= res!2466671 call!459855)))

(declare-fun e!3594400 () Bool)

(assert (=> b!5862427 (= e!3594400 e!3594398)))

(declare-fun b!5862428 () Bool)

(declare-fun e!3594399 () Bool)

(declare-fun call!459856 () Bool)

(assert (=> b!5862428 (= e!3594399 call!459856)))

(declare-fun bm!459851 () Bool)

(declare-fun c!1040142 () Bool)

(assert (=> bm!459851 (= call!459856 (validRegex!7664 (ite c!1040142 (reg!16257 lt!2305636) (ite c!1040143 (regOne!32369 lt!2305636) (regOne!32368 lt!2305636)))))))

(declare-fun bm!459852 () Bool)

(assert (=> bm!459852 (= call!459855 call!459856)))

(declare-fun b!5862429 () Bool)

(declare-fun e!3594404 () Bool)

(assert (=> b!5862429 (= e!3594404 e!3594399)))

(declare-fun res!2466668 () Bool)

(assert (=> b!5862429 (= res!2466668 (not (nullable!5928 (reg!16257 lt!2305636))))))

(assert (=> b!5862429 (=> (not res!2466668) (not e!3594399))))

(declare-fun b!5862430 () Bool)

(assert (=> b!5862430 (= e!3594398 call!459857)))

(declare-fun b!5862431 () Bool)

(assert (=> b!5862431 (= e!3594404 e!3594400)))

(assert (=> b!5862431 (= c!1040143 (is-Union!15928 lt!2305636))))

(declare-fun b!5862425 () Bool)

(declare-fun e!3594401 () Bool)

(assert (=> b!5862425 (= e!3594401 e!3594404)))

(assert (=> b!5862425 (= c!1040142 (is-Star!15928 lt!2305636))))

(declare-fun d!1840980 () Bool)

(declare-fun res!2466667 () Bool)

(assert (=> d!1840980 (=> res!2466667 e!3594401)))

(assert (=> d!1840980 (= res!2466667 (is-ElementMatch!15928 lt!2305636))))

(assert (=> d!1840980 (= (validRegex!7664 lt!2305636) e!3594401)))

(declare-fun b!5862432 () Bool)

(declare-fun res!2466669 () Bool)

(declare-fun e!3594402 () Bool)

(assert (=> b!5862432 (=> res!2466669 e!3594402)))

(assert (=> b!5862432 (= res!2466669 (not (is-Concat!24773 lt!2305636)))))

(assert (=> b!5862432 (= e!3594400 e!3594402)))

(declare-fun b!5862433 () Bool)

(assert (=> b!5862433 (= e!3594402 e!3594403)))

(declare-fun res!2466670 () Bool)

(assert (=> b!5862433 (=> (not res!2466670) (not e!3594403))))

(assert (=> b!5862433 (= res!2466670 call!459855)))

(assert (= (and d!1840980 (not res!2466667)) b!5862425))

(assert (= (and b!5862425 c!1040142) b!5862429))

(assert (= (and b!5862425 (not c!1040142)) b!5862431))

(assert (= (and b!5862429 res!2466668) b!5862428))

(assert (= (and b!5862431 c!1040143) b!5862427))

(assert (= (and b!5862431 (not c!1040143)) b!5862432))

(assert (= (and b!5862427 res!2466671) b!5862430))

(assert (= (and b!5862432 (not res!2466669)) b!5862433))

(assert (= (and b!5862433 res!2466670) b!5862426))

(assert (= (or b!5862430 b!5862426) bm!459850))

(assert (= (or b!5862427 b!5862433) bm!459852))

(assert (= (or b!5862428 bm!459852) bm!459851))

(declare-fun m!6779036 () Bool)

(assert (=> bm!459850 m!6779036))

(declare-fun m!6779038 () Bool)

(assert (=> bm!459851 m!6779038))

(declare-fun m!6779040 () Bool)

(assert (=> b!5862429 m!6779040))

(assert (=> d!1840824 d!1840980))

(declare-fun d!1840982 () Bool)

(declare-fun res!2466676 () Bool)

(declare-fun e!3594409 () Bool)

(assert (=> d!1840982 (=> res!2466676 e!3594409)))

(assert (=> d!1840982 (= res!2466676 (is-Nil!63959 (exprs!5812 (h!70408 zl!343))))))

(assert (=> d!1840982 (= (forall!15015 (exprs!5812 (h!70408 zl!343)) lambda!320520) e!3594409)))

(declare-fun b!5862438 () Bool)

(declare-fun e!3594410 () Bool)

(assert (=> b!5862438 (= e!3594409 e!3594410)))

(declare-fun res!2466677 () Bool)

(assert (=> b!5862438 (=> (not res!2466677) (not e!3594410))))

(declare-fun dynLambda!25013 (Int Regex!15928) Bool)

(assert (=> b!5862438 (= res!2466677 (dynLambda!25013 lambda!320520 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5862439 () Bool)

(assert (=> b!5862439 (= e!3594410 (forall!15015 (t!377456 (exprs!5812 (h!70408 zl!343))) lambda!320520))))

(assert (= (and d!1840982 (not res!2466676)) b!5862438))

(assert (= (and b!5862438 res!2466677) b!5862439))

(declare-fun b_lambda!220677 () Bool)

(assert (=> (not b_lambda!220677) (not b!5862438)))

(declare-fun m!6779042 () Bool)

(assert (=> b!5862438 m!6779042))

(declare-fun m!6779044 () Bool)

(assert (=> b!5862439 m!6779044))

(assert (=> d!1840824 d!1840982))

(declare-fun bs!1381136 () Bool)

(declare-fun b!5862444 () Bool)

(assert (= bs!1381136 (and b!5862444 b!5861838)))

(declare-fun lambda!320563 () Int)

(assert (=> bs!1381136 (= (and (= (reg!16257 (regOne!32369 (regOne!32369 r!7292))) (reg!16257 (regTwo!32369 r!7292))) (= (regOne!32369 (regOne!32369 r!7292)) (regTwo!32369 r!7292))) (= lambda!320563 lambda!320525))))

(declare-fun bs!1381137 () Bool)

(assert (= bs!1381137 (and b!5862444 b!5861836)))

(assert (=> bs!1381137 (not (= lambda!320563 lambda!320526))))

(declare-fun bs!1381138 () Bool)

(assert (= bs!1381138 (and b!5862444 b!5861920)))

(assert (=> bs!1381138 (= (and (= (reg!16257 (regOne!32369 (regOne!32369 r!7292))) (reg!16257 r!7292)) (= (regOne!32369 (regOne!32369 r!7292)) r!7292)) (= lambda!320563 lambda!320529))))

(declare-fun bs!1381139 () Bool)

(assert (= bs!1381139 (and b!5862444 b!5861893)))

(assert (=> bs!1381139 (not (= lambda!320563 lambda!320528))))

(declare-fun bs!1381140 () Bool)

(assert (= bs!1381140 (and b!5862444 b!5861918)))

(assert (=> bs!1381140 (not (= lambda!320563 lambda!320530))))

(declare-fun bs!1381141 () Bool)

(assert (= bs!1381141 (and b!5862444 b!5861895)))

(assert (=> bs!1381141 (= (and (= (reg!16257 (regOne!32369 (regOne!32369 r!7292))) (reg!16257 (regOne!32369 r!7292))) (= (regOne!32369 (regOne!32369 r!7292)) (regOne!32369 r!7292))) (= lambda!320563 lambda!320527))))

(assert (=> b!5862444 true))

(assert (=> b!5862444 true))

(declare-fun bs!1381142 () Bool)

(declare-fun b!5862442 () Bool)

(assert (= bs!1381142 (and b!5862442 b!5861838)))

(declare-fun lambda!320564 () Int)

(assert (=> bs!1381142 (not (= lambda!320564 lambda!320525))))

(declare-fun bs!1381143 () Bool)

(assert (= bs!1381143 (and b!5862442 b!5861836)))

(assert (=> bs!1381143 (= (and (= (regOne!32368 (regOne!32369 (regOne!32369 r!7292))) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320564 lambda!320526))))

(declare-fun bs!1381144 () Bool)

(assert (= bs!1381144 (and b!5862442 b!5862444)))

(assert (=> bs!1381144 (not (= lambda!320564 lambda!320563))))

(declare-fun bs!1381145 () Bool)

(assert (= bs!1381145 (and b!5862442 b!5861920)))

(assert (=> bs!1381145 (not (= lambda!320564 lambda!320529))))

(declare-fun bs!1381146 () Bool)

(assert (= bs!1381146 (and b!5862442 b!5861893)))

(assert (=> bs!1381146 (= (and (= (regOne!32368 (regOne!32369 (regOne!32369 r!7292))) (regOne!32368 (regOne!32369 r!7292))) (= (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))) (regTwo!32368 (regOne!32369 r!7292)))) (= lambda!320564 lambda!320528))))

(declare-fun bs!1381147 () Bool)

(assert (= bs!1381147 (and b!5862442 b!5861918)))

(assert (=> bs!1381147 (= (and (= (regOne!32368 (regOne!32369 (regOne!32369 r!7292))) (regOne!32368 r!7292)) (= (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))) (regTwo!32368 r!7292))) (= lambda!320564 lambda!320530))))

(declare-fun bs!1381148 () Bool)

(assert (= bs!1381148 (and b!5862442 b!5861895)))

(assert (=> bs!1381148 (not (= lambda!320564 lambda!320527))))

(assert (=> b!5862442 true))

(assert (=> b!5862442 true))

(declare-fun b!5862440 () Bool)

(declare-fun e!3594414 () Bool)

(assert (=> b!5862440 (= e!3594414 (= s!2326 (Cons!63961 (c!1039903 (regOne!32369 (regOne!32369 r!7292))) Nil!63961)))))

(declare-fun b!5862441 () Bool)

(declare-fun e!3594413 () Bool)

(declare-fun call!459859 () Bool)

(assert (=> b!5862441 (= e!3594413 call!459859)))

(declare-fun e!3594412 () Bool)

(declare-fun call!459858 () Bool)

(assert (=> b!5862442 (= e!3594412 call!459858)))

(declare-fun b!5862443 () Bool)

(declare-fun e!3594411 () Bool)

(declare-fun e!3594416 () Bool)

(assert (=> b!5862443 (= e!3594411 e!3594416)))

(declare-fun res!2466680 () Bool)

(assert (=> b!5862443 (= res!2466680 (matchRSpec!3029 (regOne!32369 (regOne!32369 (regOne!32369 r!7292))) s!2326))))

(assert (=> b!5862443 (=> res!2466680 e!3594416)))

(declare-fun e!3594415 () Bool)

(assert (=> b!5862444 (= e!3594415 call!459858)))

(declare-fun b!5862445 () Bool)

(assert (=> b!5862445 (= e!3594411 e!3594412)))

(declare-fun c!1040146 () Bool)

(assert (=> b!5862445 (= c!1040146 (is-Star!15928 (regOne!32369 (regOne!32369 r!7292))))))

(declare-fun b!5862446 () Bool)

(declare-fun e!3594417 () Bool)

(assert (=> b!5862446 (= e!3594413 e!3594417)))

(declare-fun res!2466679 () Bool)

(assert (=> b!5862446 (= res!2466679 (not (is-EmptyLang!15928 (regOne!32369 (regOne!32369 r!7292)))))))

(assert (=> b!5862446 (=> (not res!2466679) (not e!3594417))))

(declare-fun b!5862447 () Bool)

(declare-fun res!2466678 () Bool)

(assert (=> b!5862447 (=> res!2466678 e!3594415)))

(assert (=> b!5862447 (= res!2466678 call!459859)))

(assert (=> b!5862447 (= e!3594412 e!3594415)))

(declare-fun bm!459853 () Bool)

(assert (=> bm!459853 (= call!459858 (Exists!3000 (ite c!1040146 lambda!320563 lambda!320564)))))

(declare-fun b!5862448 () Bool)

(declare-fun c!1040147 () Bool)

(assert (=> b!5862448 (= c!1040147 (is-Union!15928 (regOne!32369 (regOne!32369 r!7292))))))

(assert (=> b!5862448 (= e!3594414 e!3594411)))

(declare-fun bm!459854 () Bool)

(assert (=> bm!459854 (= call!459859 (isEmpty!35822 s!2326))))

(declare-fun d!1840984 () Bool)

(declare-fun c!1040145 () Bool)

(assert (=> d!1840984 (= c!1040145 (is-EmptyExpr!15928 (regOne!32369 (regOne!32369 r!7292))))))

(assert (=> d!1840984 (= (matchRSpec!3029 (regOne!32369 (regOne!32369 r!7292)) s!2326) e!3594413)))

(declare-fun b!5862449 () Bool)

(declare-fun c!1040144 () Bool)

(assert (=> b!5862449 (= c!1040144 (is-ElementMatch!15928 (regOne!32369 (regOne!32369 r!7292))))))

(assert (=> b!5862449 (= e!3594417 e!3594414)))

(declare-fun b!5862450 () Bool)

(assert (=> b!5862450 (= e!3594416 (matchRSpec!3029 (regTwo!32369 (regOne!32369 (regOne!32369 r!7292))) s!2326))))

(assert (= (and d!1840984 c!1040145) b!5862441))

(assert (= (and d!1840984 (not c!1040145)) b!5862446))

(assert (= (and b!5862446 res!2466679) b!5862449))

(assert (= (and b!5862449 c!1040144) b!5862440))

(assert (= (and b!5862449 (not c!1040144)) b!5862448))

(assert (= (and b!5862448 c!1040147) b!5862443))

(assert (= (and b!5862448 (not c!1040147)) b!5862445))

(assert (= (and b!5862443 (not res!2466680)) b!5862450))

(assert (= (and b!5862445 c!1040146) b!5862447))

(assert (= (and b!5862445 (not c!1040146)) b!5862442))

(assert (= (and b!5862447 (not res!2466678)) b!5862444))

(assert (= (or b!5862444 b!5862442) bm!459853))

(assert (= (or b!5862441 b!5862447) bm!459854))

(declare-fun m!6779046 () Bool)

(assert (=> b!5862443 m!6779046))

(declare-fun m!6779048 () Bool)

(assert (=> bm!459853 m!6779048))

(assert (=> bm!459854 m!6778664))

(declare-fun m!6779050 () Bool)

(assert (=> b!5862450 m!6779050))

(assert (=> b!5861894 d!1840984))

(declare-fun d!1840986 () Bool)

(assert (=> d!1840986 (= (isEmptyLang!1371 lt!2305630) (is-EmptyLang!15928 lt!2305630))))

(assert (=> b!5861728 d!1840986))

(declare-fun d!1840988 () Bool)

(assert (=> d!1840988 true))

(declare-fun setRes!39765 () Bool)

(assert (=> d!1840988 setRes!39765))

(declare-fun condSetEmpty!39765 () Bool)

(declare-fun res!2466683 () (Set Context!10624))

(assert (=> d!1840988 (= condSetEmpty!39765 (= res!2466683 (as set.empty (Set Context!10624))))))

(assert (=> d!1840988 (= (choose!44437 z!1189 lambda!320501) res!2466683)))

(declare-fun setIsEmpty!39765 () Bool)

(assert (=> setIsEmpty!39765 setRes!39765))

(declare-fun e!3594420 () Bool)

(declare-fun tp!1621549 () Bool)

(declare-fun setNonEmpty!39765 () Bool)

(declare-fun setElem!39765 () Context!10624)

(assert (=> setNonEmpty!39765 (= setRes!39765 (and tp!1621549 (inv!83068 setElem!39765) e!3594420))))

(declare-fun setRest!39765 () (Set Context!10624))

(assert (=> setNonEmpty!39765 (= res!2466683 (set.union (set.insert setElem!39765 (as set.empty (Set Context!10624))) setRest!39765))))

(declare-fun b!5862453 () Bool)

(declare-fun tp!1621550 () Bool)

(assert (=> b!5862453 (= e!3594420 tp!1621550)))

(assert (= (and d!1840988 condSetEmpty!39765) setIsEmpty!39765))

(assert (= (and d!1840988 (not condSetEmpty!39765)) setNonEmpty!39765))

(assert (= setNonEmpty!39765 b!5862453))

(declare-fun m!6779052 () Bool)

(assert (=> setNonEmpty!39765 m!6779052))

(assert (=> d!1840880 d!1840988))

(declare-fun bs!1381149 () Bool)

(declare-fun b!5862458 () Bool)

(assert (= bs!1381149 (and b!5862458 b!5861838)))

(declare-fun lambda!320565 () Int)

(assert (=> bs!1381149 (= (and (= (reg!16257 (regOne!32369 (regTwo!32369 r!7292))) (reg!16257 (regTwo!32369 r!7292))) (= (regOne!32369 (regTwo!32369 r!7292)) (regTwo!32369 r!7292))) (= lambda!320565 lambda!320525))))

(declare-fun bs!1381150 () Bool)

(assert (= bs!1381150 (and b!5862458 b!5861836)))

(assert (=> bs!1381150 (not (= lambda!320565 lambda!320526))))

(declare-fun bs!1381151 () Bool)

(assert (= bs!1381151 (and b!5862458 b!5862444)))

(assert (=> bs!1381151 (= (and (= (reg!16257 (regOne!32369 (regTwo!32369 r!7292))) (reg!16257 (regOne!32369 (regOne!32369 r!7292)))) (= (regOne!32369 (regTwo!32369 r!7292)) (regOne!32369 (regOne!32369 r!7292)))) (= lambda!320565 lambda!320563))))

(declare-fun bs!1381152 () Bool)

(assert (= bs!1381152 (and b!5862458 b!5861920)))

(assert (=> bs!1381152 (= (and (= (reg!16257 (regOne!32369 (regTwo!32369 r!7292))) (reg!16257 r!7292)) (= (regOne!32369 (regTwo!32369 r!7292)) r!7292)) (= lambda!320565 lambda!320529))))

(declare-fun bs!1381153 () Bool)

(assert (= bs!1381153 (and b!5862458 b!5862442)))

(assert (=> bs!1381153 (not (= lambda!320565 lambda!320564))))

(declare-fun bs!1381154 () Bool)

(assert (= bs!1381154 (and b!5862458 b!5861893)))

(assert (=> bs!1381154 (not (= lambda!320565 lambda!320528))))

(declare-fun bs!1381155 () Bool)

(assert (= bs!1381155 (and b!5862458 b!5861918)))

(assert (=> bs!1381155 (not (= lambda!320565 lambda!320530))))

(declare-fun bs!1381156 () Bool)

(assert (= bs!1381156 (and b!5862458 b!5861895)))

(assert (=> bs!1381156 (= (and (= (reg!16257 (regOne!32369 (regTwo!32369 r!7292))) (reg!16257 (regOne!32369 r!7292))) (= (regOne!32369 (regTwo!32369 r!7292)) (regOne!32369 r!7292))) (= lambda!320565 lambda!320527))))

(assert (=> b!5862458 true))

(assert (=> b!5862458 true))

(declare-fun bs!1381157 () Bool)

(declare-fun b!5862456 () Bool)

(assert (= bs!1381157 (and b!5862456 b!5861838)))

(declare-fun lambda!320566 () Int)

(assert (=> bs!1381157 (not (= lambda!320566 lambda!320525))))

(declare-fun bs!1381158 () Bool)

(assert (= bs!1381158 (and b!5862456 b!5861836)))

(assert (=> bs!1381158 (= (and (= (regOne!32368 (regOne!32369 (regTwo!32369 r!7292))) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320566 lambda!320526))))

(declare-fun bs!1381159 () Bool)

(assert (= bs!1381159 (and b!5862456 b!5862444)))

(assert (=> bs!1381159 (not (= lambda!320566 lambda!320563))))

(declare-fun bs!1381160 () Bool)

(assert (= bs!1381160 (and b!5862456 b!5862458)))

(assert (=> bs!1381160 (not (= lambda!320566 lambda!320565))))

(declare-fun bs!1381161 () Bool)

(assert (= bs!1381161 (and b!5862456 b!5861920)))

(assert (=> bs!1381161 (not (= lambda!320566 lambda!320529))))

(declare-fun bs!1381162 () Bool)

(assert (= bs!1381162 (and b!5862456 b!5862442)))

(assert (=> bs!1381162 (= (and (= (regOne!32368 (regOne!32369 (regTwo!32369 r!7292))) (regOne!32368 (regOne!32369 (regOne!32369 r!7292)))) (= (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))))) (= lambda!320566 lambda!320564))))

(declare-fun bs!1381163 () Bool)

(assert (= bs!1381163 (and b!5862456 b!5861893)))

(assert (=> bs!1381163 (= (and (= (regOne!32368 (regOne!32369 (regTwo!32369 r!7292))) (regOne!32368 (regOne!32369 r!7292))) (= (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regOne!32369 r!7292)))) (= lambda!320566 lambda!320528))))

(declare-fun bs!1381164 () Bool)

(assert (= bs!1381164 (and b!5862456 b!5861918)))

(assert (=> bs!1381164 (= (and (= (regOne!32368 (regOne!32369 (regTwo!32369 r!7292))) (regOne!32368 r!7292)) (= (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))) (regTwo!32368 r!7292))) (= lambda!320566 lambda!320530))))

(declare-fun bs!1381165 () Bool)

(assert (= bs!1381165 (and b!5862456 b!5861895)))

(assert (=> bs!1381165 (not (= lambda!320566 lambda!320527))))

(assert (=> b!5862456 true))

(assert (=> b!5862456 true))

(declare-fun b!5862454 () Bool)

(declare-fun e!3594424 () Bool)

(assert (=> b!5862454 (= e!3594424 (= s!2326 (Cons!63961 (c!1039903 (regOne!32369 (regTwo!32369 r!7292))) Nil!63961)))))

(declare-fun b!5862455 () Bool)

(declare-fun e!3594423 () Bool)

(declare-fun call!459861 () Bool)

(assert (=> b!5862455 (= e!3594423 call!459861)))

(declare-fun e!3594422 () Bool)

(declare-fun call!459860 () Bool)

(assert (=> b!5862456 (= e!3594422 call!459860)))

(declare-fun b!5862457 () Bool)

(declare-fun e!3594421 () Bool)

(declare-fun e!3594426 () Bool)

(assert (=> b!5862457 (= e!3594421 e!3594426)))

(declare-fun res!2466686 () Bool)

(assert (=> b!5862457 (= res!2466686 (matchRSpec!3029 (regOne!32369 (regOne!32369 (regTwo!32369 r!7292))) s!2326))))

(assert (=> b!5862457 (=> res!2466686 e!3594426)))

(declare-fun e!3594425 () Bool)

(assert (=> b!5862458 (= e!3594425 call!459860)))

(declare-fun b!5862459 () Bool)

(assert (=> b!5862459 (= e!3594421 e!3594422)))

(declare-fun c!1040150 () Bool)

(assert (=> b!5862459 (= c!1040150 (is-Star!15928 (regOne!32369 (regTwo!32369 r!7292))))))

(declare-fun b!5862460 () Bool)

(declare-fun e!3594427 () Bool)

(assert (=> b!5862460 (= e!3594423 e!3594427)))

(declare-fun res!2466685 () Bool)

(assert (=> b!5862460 (= res!2466685 (not (is-EmptyLang!15928 (regOne!32369 (regTwo!32369 r!7292)))))))

(assert (=> b!5862460 (=> (not res!2466685) (not e!3594427))))

(declare-fun b!5862461 () Bool)

(declare-fun res!2466684 () Bool)

(assert (=> b!5862461 (=> res!2466684 e!3594425)))

(assert (=> b!5862461 (= res!2466684 call!459861)))

(assert (=> b!5862461 (= e!3594422 e!3594425)))

(declare-fun bm!459855 () Bool)

(assert (=> bm!459855 (= call!459860 (Exists!3000 (ite c!1040150 lambda!320565 lambda!320566)))))

(declare-fun b!5862462 () Bool)

(declare-fun c!1040151 () Bool)

(assert (=> b!5862462 (= c!1040151 (is-Union!15928 (regOne!32369 (regTwo!32369 r!7292))))))

(assert (=> b!5862462 (= e!3594424 e!3594421)))

(declare-fun bm!459856 () Bool)

(assert (=> bm!459856 (= call!459861 (isEmpty!35822 s!2326))))

(declare-fun d!1840990 () Bool)

(declare-fun c!1040149 () Bool)

(assert (=> d!1840990 (= c!1040149 (is-EmptyExpr!15928 (regOne!32369 (regTwo!32369 r!7292))))))

(assert (=> d!1840990 (= (matchRSpec!3029 (regOne!32369 (regTwo!32369 r!7292)) s!2326) e!3594423)))

(declare-fun b!5862463 () Bool)

(declare-fun c!1040148 () Bool)

(assert (=> b!5862463 (= c!1040148 (is-ElementMatch!15928 (regOne!32369 (regTwo!32369 r!7292))))))

(assert (=> b!5862463 (= e!3594427 e!3594424)))

(declare-fun b!5862464 () Bool)

(assert (=> b!5862464 (= e!3594426 (matchRSpec!3029 (regTwo!32369 (regOne!32369 (regTwo!32369 r!7292))) s!2326))))

(assert (= (and d!1840990 c!1040149) b!5862455))

(assert (= (and d!1840990 (not c!1040149)) b!5862460))

(assert (= (and b!5862460 res!2466685) b!5862463))

(assert (= (and b!5862463 c!1040148) b!5862454))

(assert (= (and b!5862463 (not c!1040148)) b!5862462))

(assert (= (and b!5862462 c!1040151) b!5862457))

(assert (= (and b!5862462 (not c!1040151)) b!5862459))

(assert (= (and b!5862457 (not res!2466686)) b!5862464))

(assert (= (and b!5862459 c!1040150) b!5862461))

(assert (= (and b!5862459 (not c!1040150)) b!5862456))

(assert (= (and b!5862461 (not res!2466684)) b!5862458))

(assert (= (or b!5862458 b!5862456) bm!459855))

(assert (= (or b!5862455 b!5862461) bm!459856))

(declare-fun m!6779054 () Bool)

(assert (=> b!5862457 m!6779054))

(declare-fun m!6779056 () Bool)

(assert (=> bm!459855 m!6779056))

(assert (=> bm!459856 m!6778664))

(declare-fun m!6779058 () Bool)

(assert (=> b!5862464 m!6779058))

(assert (=> b!5861837 d!1840990))

(declare-fun d!1840992 () Bool)

(assert (=> d!1840992 (= (isEmpty!35822 s!2326) (is-Nil!63961 s!2326))))

(assert (=> d!1840848 d!1840992))

(declare-fun bm!459857 () Bool)

(declare-fun call!459864 () Bool)

(declare-fun c!1040153 () Bool)

(assert (=> bm!459857 (= call!459864 (validRegex!7664 (ite c!1040153 (regTwo!32369 (regTwo!32369 r!7292)) (regTwo!32368 (regTwo!32369 r!7292)))))))

(declare-fun b!5862466 () Bool)

(declare-fun e!3594433 () Bool)

(assert (=> b!5862466 (= e!3594433 call!459864)))

(declare-fun b!5862467 () Bool)

(declare-fun res!2466691 () Bool)

(declare-fun e!3594428 () Bool)

(assert (=> b!5862467 (=> (not res!2466691) (not e!3594428))))

(declare-fun call!459862 () Bool)

(assert (=> b!5862467 (= res!2466691 call!459862)))

(declare-fun e!3594430 () Bool)

(assert (=> b!5862467 (= e!3594430 e!3594428)))

(declare-fun b!5862468 () Bool)

(declare-fun e!3594429 () Bool)

(declare-fun call!459863 () Bool)

(assert (=> b!5862468 (= e!3594429 call!459863)))

(declare-fun bm!459858 () Bool)

(declare-fun c!1040152 () Bool)

(assert (=> bm!459858 (= call!459863 (validRegex!7664 (ite c!1040152 (reg!16257 (regTwo!32369 r!7292)) (ite c!1040153 (regOne!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))))))

(declare-fun bm!459859 () Bool)

(assert (=> bm!459859 (= call!459862 call!459863)))

(declare-fun b!5862469 () Bool)

(declare-fun e!3594434 () Bool)

(assert (=> b!5862469 (= e!3594434 e!3594429)))

(declare-fun res!2466688 () Bool)

(assert (=> b!5862469 (= res!2466688 (not (nullable!5928 (reg!16257 (regTwo!32369 r!7292)))))))

(assert (=> b!5862469 (=> (not res!2466688) (not e!3594429))))

(declare-fun b!5862470 () Bool)

(assert (=> b!5862470 (= e!3594428 call!459864)))

(declare-fun b!5862471 () Bool)

(assert (=> b!5862471 (= e!3594434 e!3594430)))

(assert (=> b!5862471 (= c!1040153 (is-Union!15928 (regTwo!32369 r!7292)))))

(declare-fun b!5862465 () Bool)

(declare-fun e!3594431 () Bool)

(assert (=> b!5862465 (= e!3594431 e!3594434)))

(assert (=> b!5862465 (= c!1040152 (is-Star!15928 (regTwo!32369 r!7292)))))

(declare-fun d!1840994 () Bool)

(declare-fun res!2466687 () Bool)

(assert (=> d!1840994 (=> res!2466687 e!3594431)))

(assert (=> d!1840994 (= res!2466687 (is-ElementMatch!15928 (regTwo!32369 r!7292)))))

(assert (=> d!1840994 (= (validRegex!7664 (regTwo!32369 r!7292)) e!3594431)))

(declare-fun b!5862472 () Bool)

(declare-fun res!2466689 () Bool)

(declare-fun e!3594432 () Bool)

(assert (=> b!5862472 (=> res!2466689 e!3594432)))

(assert (=> b!5862472 (= res!2466689 (not (is-Concat!24773 (regTwo!32369 r!7292))))))

(assert (=> b!5862472 (= e!3594430 e!3594432)))

(declare-fun b!5862473 () Bool)

(assert (=> b!5862473 (= e!3594432 e!3594433)))

(declare-fun res!2466690 () Bool)

(assert (=> b!5862473 (=> (not res!2466690) (not e!3594433))))

(assert (=> b!5862473 (= res!2466690 call!459862)))

(assert (= (and d!1840994 (not res!2466687)) b!5862465))

(assert (= (and b!5862465 c!1040152) b!5862469))

(assert (= (and b!5862465 (not c!1040152)) b!5862471))

(assert (= (and b!5862469 res!2466688) b!5862468))

(assert (= (and b!5862471 c!1040153) b!5862467))

(assert (= (and b!5862471 (not c!1040153)) b!5862472))

(assert (= (and b!5862467 res!2466691) b!5862470))

(assert (= (and b!5862472 (not res!2466689)) b!5862473))

(assert (= (and b!5862473 res!2466690) b!5862466))

(assert (= (or b!5862470 b!5862466) bm!459857))

(assert (= (or b!5862467 b!5862473) bm!459859))

(assert (= (or b!5862468 bm!459859) bm!459858))

(declare-fun m!6779060 () Bool)

(assert (=> bm!459857 m!6779060))

(declare-fun m!6779062 () Bool)

(assert (=> bm!459858 m!6779062))

(declare-fun m!6779064 () Bool)

(assert (=> b!5862469 m!6779064))

(assert (=> d!1840848 d!1840994))

(declare-fun d!1840996 () Bool)

(assert (=> d!1840996 (= (isEmpty!35822 (t!377458 s!2326)) (is-Nil!63961 (t!377458 s!2326)))))

(assert (=> d!1840864 d!1840996))

(declare-fun bs!1381166 () Bool)

(declare-fun d!1840998 () Bool)

(assert (= bs!1381166 (and d!1840998 d!1840818)))

(declare-fun lambda!320567 () Int)

(assert (=> bs!1381166 (= lambda!320567 lambda!320514)))

(declare-fun bs!1381167 () Bool)

(assert (= bs!1381167 (and d!1840998 d!1840888)))

(assert (=> bs!1381167 (= lambda!320567 lambda!320535)))

(declare-fun bs!1381168 () Bool)

(assert (= bs!1381168 (and d!1840998 d!1840872)))

(assert (=> bs!1381168 (= lambda!320567 lambda!320531)))

(declare-fun bs!1381169 () Bool)

(assert (= bs!1381169 (and d!1840998 d!1840824)))

(assert (=> bs!1381169 (= lambda!320567 lambda!320520)))

(declare-fun bs!1381170 () Bool)

(assert (= bs!1381170 (and d!1840998 d!1840816)))

(assert (=> bs!1381170 (= lambda!320567 lambda!320511)))

(declare-fun bs!1381171 () Bool)

(assert (= bs!1381171 (and d!1840998 d!1840820)))

(assert (=> bs!1381171 (= lambda!320567 lambda!320517)))

(declare-fun b!5862474 () Bool)

(declare-fun e!3594437 () Bool)

(declare-fun lt!2305691 () Regex!15928)

(assert (=> b!5862474 (= e!3594437 (isEmptyExpr!1363 lt!2305691))))

(declare-fun b!5862475 () Bool)

(declare-fun e!3594436 () Bool)

(assert (=> b!5862475 (= e!3594436 (isEmpty!35821 (t!377456 (t!377456 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5862476 () Bool)

(declare-fun e!3594435 () Bool)

(assert (=> b!5862476 (= e!3594437 e!3594435)))

(declare-fun c!1040156 () Bool)

(assert (=> b!5862476 (= c!1040156 (isEmpty!35821 (tail!11495 (t!377456 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5862477 () Bool)

(declare-fun e!3594439 () Bool)

(assert (=> b!5862477 (= e!3594439 e!3594437)))

(declare-fun c!1040154 () Bool)

(assert (=> b!5862477 (= c!1040154 (isEmpty!35821 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5862478 () Bool)

(declare-fun e!3594440 () Regex!15928)

(declare-fun e!3594438 () Regex!15928)

(assert (=> b!5862478 (= e!3594440 e!3594438)))

(declare-fun c!1040155 () Bool)

(assert (=> b!5862478 (= c!1040155 (is-Cons!63959 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5862479 () Bool)

(assert (=> b!5862479 (= e!3594435 (isConcat!886 lt!2305691))))

(declare-fun b!5862480 () Bool)

(assert (=> b!5862480 (= e!3594438 EmptyExpr!15928)))

(assert (=> d!1840998 e!3594439))

(declare-fun res!2466693 () Bool)

(assert (=> d!1840998 (=> (not res!2466693) (not e!3594439))))

(assert (=> d!1840998 (= res!2466693 (validRegex!7664 lt!2305691))))

(assert (=> d!1840998 (= lt!2305691 e!3594440)))

(declare-fun c!1040157 () Bool)

(assert (=> d!1840998 (= c!1040157 e!3594436)))

(declare-fun res!2466692 () Bool)

(assert (=> d!1840998 (=> (not res!2466692) (not e!3594436))))

(assert (=> d!1840998 (= res!2466692 (is-Cons!63959 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(assert (=> d!1840998 (forall!15015 (t!377456 (exprs!5812 (h!70408 zl!343))) lambda!320567)))

(assert (=> d!1840998 (= (generalisedConcat!1525 (t!377456 (exprs!5812 (h!70408 zl!343)))) lt!2305691)))

(declare-fun b!5862481 () Bool)

(assert (=> b!5862481 (= e!3594440 (h!70407 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5862482 () Bool)

(assert (=> b!5862482 (= e!3594435 (= lt!2305691 (head!12410 (t!377456 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5862483 () Bool)

(assert (=> b!5862483 (= e!3594438 (Concat!24773 (h!70407 (t!377456 (exprs!5812 (h!70408 zl!343)))) (generalisedConcat!1525 (t!377456 (t!377456 (exprs!5812 (h!70408 zl!343)))))))))

(assert (= (and d!1840998 res!2466692) b!5862475))

(assert (= (and d!1840998 c!1040157) b!5862481))

(assert (= (and d!1840998 (not c!1040157)) b!5862478))

(assert (= (and b!5862478 c!1040155) b!5862483))

(assert (= (and b!5862478 (not c!1040155)) b!5862480))

(assert (= (and d!1840998 res!2466693) b!5862477))

(assert (= (and b!5862477 c!1040154) b!5862474))

(assert (= (and b!5862477 (not c!1040154)) b!5862476))

(assert (= (and b!5862476 c!1040156) b!5862482))

(assert (= (and b!5862476 (not c!1040156)) b!5862479))

(declare-fun m!6779066 () Bool)

(assert (=> b!5862483 m!6779066))

(declare-fun m!6779068 () Bool)

(assert (=> b!5862476 m!6779068))

(assert (=> b!5862476 m!6779068))

(declare-fun m!6779070 () Bool)

(assert (=> b!5862476 m!6779070))

(declare-fun m!6779072 () Bool)

(assert (=> b!5862482 m!6779072))

(declare-fun m!6779074 () Bool)

(assert (=> b!5862474 m!6779074))

(assert (=> b!5862477 m!6778640))

(declare-fun m!6779076 () Bool)

(assert (=> b!5862475 m!6779076))

(declare-fun m!6779078 () Bool)

(assert (=> d!1840998 m!6779078))

(declare-fun m!6779080 () Bool)

(assert (=> d!1840998 m!6779080))

(declare-fun m!6779082 () Bool)

(assert (=> b!5862479 m!6779082))

(assert (=> b!5861777 d!1840998))

(declare-fun d!1841000 () Bool)

(declare-fun c!1040159 () Bool)

(assert (=> d!1841000 (= c!1040159 (and (is-ElementMatch!15928 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (= (c!1039903 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (h!70409 s!2326))))))

(declare-fun e!3594443 () (Set Context!10624))

(assert (=> d!1841000 (= (derivationStepZipperDown!1194 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))) (ite c!1039932 lt!2305515 (Context!10625 call!459761)) (h!70409 s!2326)) e!3594443)))

(declare-fun b!5862484 () Bool)

(declare-fun e!3594445 () (Set Context!10624))

(declare-fun e!3594444 () (Set Context!10624))

(assert (=> b!5862484 (= e!3594445 e!3594444)))

(declare-fun c!1040160 () Bool)

(assert (=> b!5862484 (= c!1040160 (is-Concat!24773 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))))))

(declare-fun bm!459860 () Bool)

(declare-fun call!459867 () (Set Context!10624))

(declare-fun call!459869 () (Set Context!10624))

(assert (=> bm!459860 (= call!459867 call!459869)))

(declare-fun b!5862485 () Bool)

(declare-fun c!1040158 () Bool)

(declare-fun e!3594442 () Bool)

(assert (=> b!5862485 (= c!1040158 e!3594442)))

(declare-fun res!2466694 () Bool)

(assert (=> b!5862485 (=> (not res!2466694) (not e!3594442))))

(assert (=> b!5862485 (= res!2466694 (is-Concat!24773 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))))))

(declare-fun e!3594441 () (Set Context!10624))

(assert (=> b!5862485 (= e!3594441 e!3594445)))

(declare-fun bm!459861 () Bool)

(declare-fun call!459868 () List!64083)

(declare-fun call!459870 () List!64083)

(assert (=> bm!459861 (= call!459868 call!459870)))

(declare-fun b!5862486 () Bool)

(declare-fun call!459866 () (Set Context!10624))

(assert (=> b!5862486 (= e!3594441 (set.union call!459869 call!459866))))

(declare-fun bm!459862 () Bool)

(assert (=> bm!459862 (= call!459870 ($colon$colon!1833 (exprs!5812 (ite c!1039932 lt!2305515 (Context!10625 call!459761))) (ite (or c!1040158 c!1040160) (regTwo!32368 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))))))

(declare-fun b!5862487 () Bool)

(declare-fun e!3594446 () (Set Context!10624))

(assert (=> b!5862487 (= e!3594446 (as set.empty (Set Context!10624)))))

(declare-fun b!5862488 () Bool)

(declare-fun call!459865 () (Set Context!10624))

(assert (=> b!5862488 (= e!3594446 call!459865)))

(declare-fun c!1040162 () Bool)

(declare-fun bm!459863 () Bool)

(assert (=> bm!459863 (= call!459869 (derivationStepZipperDown!1194 (ite c!1040162 (regOne!32369 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (ite c!1040158 (regTwo!32368 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (ite c!1040160 (regOne!32368 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (reg!16257 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))))) (ite (or c!1040162 c!1040158) (ite c!1039932 lt!2305515 (Context!10625 call!459761)) (Context!10625 call!459868)) (h!70409 s!2326)))))

(declare-fun b!5862489 () Bool)

(assert (=> b!5862489 (= e!3594443 (set.insert (ite c!1039932 lt!2305515 (Context!10625 call!459761)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862490 () Bool)

(assert (=> b!5862490 (= e!3594443 e!3594441)))

(assert (=> b!5862490 (= c!1040162 (is-Union!15928 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))))))

(declare-fun bm!459864 () Bool)

(assert (=> bm!459864 (= call!459865 call!459867)))

(declare-fun bm!459865 () Bool)

(assert (=> bm!459865 (= call!459866 (derivationStepZipperDown!1194 (ite c!1040162 (regTwo!32369 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))) (regOne!32368 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))) (ite c!1040162 (ite c!1039932 lt!2305515 (Context!10625 call!459761)) (Context!10625 call!459870)) (h!70409 s!2326)))))

(declare-fun b!5862491 () Bool)

(assert (=> b!5862491 (= e!3594445 (set.union call!459866 call!459867))))

(declare-fun b!5862492 () Bool)

(declare-fun c!1040161 () Bool)

(assert (=> b!5862492 (= c!1040161 (is-Star!15928 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292)))))))

(assert (=> b!5862492 (= e!3594444 e!3594446)))

(declare-fun b!5862493 () Bool)

(assert (=> b!5862493 (= e!3594442 (nullable!5928 (regOne!32368 (ite c!1039932 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))))))

(declare-fun b!5862494 () Bool)

(assert (=> b!5862494 (= e!3594444 call!459865)))

(assert (= (and d!1841000 c!1040159) b!5862489))

(assert (= (and d!1841000 (not c!1040159)) b!5862490))

(assert (= (and b!5862490 c!1040162) b!5862486))

(assert (= (and b!5862490 (not c!1040162)) b!5862485))

(assert (= (and b!5862485 res!2466694) b!5862493))

(assert (= (and b!5862485 c!1040158) b!5862491))

(assert (= (and b!5862485 (not c!1040158)) b!5862484))

(assert (= (and b!5862484 c!1040160) b!5862494))

(assert (= (and b!5862484 (not c!1040160)) b!5862492))

(assert (= (and b!5862492 c!1040161) b!5862488))

(assert (= (and b!5862492 (not c!1040161)) b!5862487))

(assert (= (or b!5862494 b!5862488) bm!459861))

(assert (= (or b!5862494 b!5862488) bm!459864))

(assert (= (or b!5862491 bm!459861) bm!459862))

(assert (= (or b!5862491 bm!459864) bm!459860))

(assert (= (or b!5862486 b!5862491) bm!459865))

(assert (= (or b!5862486 bm!459860) bm!459863))

(declare-fun m!6779084 () Bool)

(assert (=> b!5862489 m!6779084))

(declare-fun m!6779086 () Bool)

(assert (=> b!5862493 m!6779086))

(declare-fun m!6779088 () Bool)

(assert (=> bm!459865 m!6779088))

(declare-fun m!6779090 () Bool)

(assert (=> bm!459862 m!6779090))

(declare-fun m!6779092 () Bool)

(assert (=> bm!459863 m!6779092))

(assert (=> bm!459756 d!1841000))

(declare-fun b!5862495 () Bool)

(declare-fun e!3594449 () Bool)

(assert (=> b!5862495 (= e!3594449 (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343))))))))))

(declare-fun b!5862496 () Bool)

(declare-fun e!3594448 () (Set Context!10624))

(assert (=> b!5862496 (= e!3594448 (as set.empty (Set Context!10624)))))

(declare-fun d!1841002 () Bool)

(declare-fun c!1040163 () Bool)

(assert (=> d!1841002 (= c!1040163 e!3594449)))

(declare-fun res!2466695 () Bool)

(assert (=> d!1841002 (=> (not res!2466695) (not e!3594449))))

(assert (=> d!1841002 (= res!2466695 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))))))))

(declare-fun e!3594447 () (Set Context!10624))

(assert (=> d!1841002 (= (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (h!70409 s!2326)) e!3594447)))

(declare-fun b!5862497 () Bool)

(assert (=> b!5862497 (= e!3594447 e!3594448)))

(declare-fun c!1040164 () Bool)

(assert (=> b!5862497 (= c!1040164 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))))))))

(declare-fun b!5862498 () Bool)

(declare-fun call!459871 () (Set Context!10624))

(assert (=> b!5862498 (= e!3594448 call!459871)))

(declare-fun b!5862499 () Bool)

(assert (=> b!5862499 (= e!3594447 (set.union call!459871 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343))))))) (h!70409 s!2326))))))

(declare-fun bm!459866 () Bool)

(assert (=> bm!459866 (= call!459871 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343))))))) (h!70409 s!2326)))))

(assert (= (and d!1841002 res!2466695) b!5862495))

(assert (= (and d!1841002 c!1040163) b!5862499))

(assert (= (and d!1841002 (not c!1040163)) b!5862497))

(assert (= (and b!5862497 c!1040164) b!5862498))

(assert (= (and b!5862497 (not c!1040164)) b!5862496))

(assert (= (or b!5862499 b!5862498) bm!459866))

(declare-fun m!6779094 () Bool)

(assert (=> b!5862495 m!6779094))

(declare-fun m!6779096 () Bool)

(assert (=> b!5862499 m!6779096))

(declare-fun m!6779098 () Bool)

(assert (=> bm!459866 m!6779098))

(assert (=> b!5861975 d!1841002))

(declare-fun d!1841004 () Bool)

(declare-fun c!1040165 () Bool)

(assert (=> d!1841004 (= c!1040165 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun e!3594450 () Bool)

(assert (=> d!1841004 (= (matchZipper!1994 (derivationStepZipper!1927 z!1189 (head!12411 s!2326)) (tail!11496 s!2326)) e!3594450)))

(declare-fun b!5862500 () Bool)

(assert (=> b!5862500 (= e!3594450 (nullableZipper!1767 (derivationStepZipper!1927 z!1189 (head!12411 s!2326))))))

(declare-fun b!5862501 () Bool)

(assert (=> b!5862501 (= e!3594450 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 z!1189 (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(assert (= (and d!1841004 c!1040165) b!5862500))

(assert (= (and d!1841004 (not c!1040165)) b!5862501))

(assert (=> d!1841004 m!6778672))

(assert (=> d!1841004 m!6778700))

(assert (=> b!5862500 m!6778736))

(declare-fun m!6779100 () Bool)

(assert (=> b!5862500 m!6779100))

(assert (=> b!5862501 m!6778672))

(declare-fun m!6779102 () Bool)

(assert (=> b!5862501 m!6779102))

(assert (=> b!5862501 m!6778736))

(assert (=> b!5862501 m!6779102))

(declare-fun m!6779104 () Bool)

(assert (=> b!5862501 m!6779104))

(assert (=> b!5862501 m!6778672))

(declare-fun m!6779106 () Bool)

(assert (=> b!5862501 m!6779106))

(assert (=> b!5862501 m!6779104))

(assert (=> b!5862501 m!6779106))

(declare-fun m!6779108 () Bool)

(assert (=> b!5862501 m!6779108))

(assert (=> b!5861942 d!1841004))

(declare-fun bs!1381172 () Bool)

(declare-fun d!1841006 () Bool)

(assert (= bs!1381172 (and d!1841006 b!5861545)))

(declare-fun lambda!320568 () Int)

(assert (=> bs!1381172 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320568 lambda!320501))))

(declare-fun bs!1381173 () Bool)

(assert (= bs!1381173 (and d!1841006 d!1840878)))

(assert (=> bs!1381173 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320568 lambda!320534))))

(assert (=> d!1841006 true))

(assert (=> d!1841006 (= (derivationStepZipper!1927 z!1189 (head!12411 s!2326)) (flatMap!1459 z!1189 lambda!320568))))

(declare-fun bs!1381174 () Bool)

(assert (= bs!1381174 d!1841006))

(declare-fun m!6779110 () Bool)

(assert (=> bs!1381174 m!6779110))

(assert (=> b!5861942 d!1841006))

(declare-fun d!1841008 () Bool)

(assert (=> d!1841008 (= (head!12411 s!2326) (h!70409 s!2326))))

(assert (=> b!5861942 d!1841008))

(declare-fun d!1841010 () Bool)

(assert (=> d!1841010 (= (tail!11496 s!2326) (t!377458 s!2326))))

(assert (=> b!5861942 d!1841010))

(assert (=> bs!1381087 d!1840828))

(assert (=> bm!459781 d!1840992))

(assert (=> d!1840862 d!1840992))

(declare-fun d!1841012 () Bool)

(assert (=> d!1841012 (= (isConcat!886 lt!2305636) (is-Concat!24773 lt!2305636))))

(assert (=> b!5861773 d!1841012))

(declare-fun d!1841014 () Bool)

(declare-fun c!1040167 () Bool)

(assert (=> d!1841014 (= c!1040167 (and (is-ElementMatch!15928 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (= (c!1039903 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (h!70409 s!2326))))))

(declare-fun e!3594453 () (Set Context!10624))

(assert (=> d!1841014 (= (derivationStepZipperDown!1194 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))) (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759)) (h!70409 s!2326)) e!3594453)))

(declare-fun b!5862502 () Bool)

(declare-fun e!3594455 () (Set Context!10624))

(declare-fun e!3594454 () (Set Context!10624))

(assert (=> b!5862502 (= e!3594455 e!3594454)))

(declare-fun c!1040168 () Bool)

(assert (=> b!5862502 (= c!1040168 (is-Concat!24773 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))))))

(declare-fun bm!459867 () Bool)

(declare-fun call!459874 () (Set Context!10624))

(declare-fun call!459876 () (Set Context!10624))

(assert (=> bm!459867 (= call!459874 call!459876)))

(declare-fun b!5862503 () Bool)

(declare-fun c!1040166 () Bool)

(declare-fun e!3594452 () Bool)

(assert (=> b!5862503 (= c!1040166 e!3594452)))

(declare-fun res!2466696 () Bool)

(assert (=> b!5862503 (=> (not res!2466696) (not e!3594452))))

(assert (=> b!5862503 (= res!2466696 (is-Concat!24773 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))))))

(declare-fun e!3594451 () (Set Context!10624))

(assert (=> b!5862503 (= e!3594451 e!3594455)))

(declare-fun bm!459868 () Bool)

(declare-fun call!459875 () List!64083)

(declare-fun call!459877 () List!64083)

(assert (=> bm!459868 (= call!459875 call!459877)))

(declare-fun b!5862504 () Bool)

(declare-fun call!459873 () (Set Context!10624))

(assert (=> b!5862504 (= e!3594451 (set.union call!459876 call!459873))))

(declare-fun bm!459869 () Bool)

(assert (=> bm!459869 (= call!459877 ($colon$colon!1833 (exprs!5812 (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759))) (ite (or c!1040166 c!1040168) (regTwo!32368 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))))))))

(declare-fun b!5862505 () Bool)

(declare-fun e!3594456 () (Set Context!10624))

(assert (=> b!5862505 (= e!3594456 (as set.empty (Set Context!10624)))))

(declare-fun b!5862506 () Bool)

(declare-fun call!459872 () (Set Context!10624))

(assert (=> b!5862506 (= e!3594456 call!459872)))

(declare-fun c!1040170 () Bool)

(declare-fun bm!459870 () Bool)

(assert (=> bm!459870 (= call!459876 (derivationStepZipperDown!1194 (ite c!1040170 (regOne!32369 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (ite c!1040166 (regTwo!32368 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (ite c!1040168 (regOne!32368 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (reg!16257 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))))))) (ite (or c!1040170 c!1040166) (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759)) (Context!10625 call!459875)) (h!70409 s!2326)))))

(declare-fun b!5862507 () Bool)

(assert (=> b!5862507 (= e!3594453 (set.insert (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862508 () Bool)

(assert (=> b!5862508 (= e!3594453 e!3594451)))

(assert (=> b!5862508 (= c!1040170 (is-Union!15928 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))))))

(declare-fun bm!459871 () Bool)

(assert (=> bm!459871 (= call!459872 call!459874)))

(declare-fun bm!459872 () Bool)

(assert (=> bm!459872 (= call!459873 (derivationStepZipperDown!1194 (ite c!1040170 (regTwo!32369 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))) (regOne!32368 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))))) (ite c!1040170 (ite (or c!1039932 c!1039928) lt!2305515 (Context!10625 call!459759)) (Context!10625 call!459877)) (h!70409 s!2326)))))

(declare-fun b!5862509 () Bool)

(assert (=> b!5862509 (= e!3594455 (set.union call!459873 call!459874))))

(declare-fun c!1040169 () Bool)

(declare-fun b!5862510 () Bool)

(assert (=> b!5862510 (= c!1040169 (is-Star!15928 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292)))))))))

(assert (=> b!5862510 (= e!3594454 e!3594456)))

(declare-fun b!5862511 () Bool)

(assert (=> b!5862511 (= e!3594452 (nullable!5928 (regOne!32368 (ite c!1039932 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1039928 (regTwo!32368 (regTwo!32369 r!7292)) (ite c!1039930 (regOne!32368 (regTwo!32369 r!7292)) (reg!16257 (regTwo!32369 r!7292))))))))))

(declare-fun b!5862512 () Bool)

(assert (=> b!5862512 (= e!3594454 call!459872)))

(assert (= (and d!1841014 c!1040167) b!5862507))

(assert (= (and d!1841014 (not c!1040167)) b!5862508))

(assert (= (and b!5862508 c!1040170) b!5862504))

(assert (= (and b!5862508 (not c!1040170)) b!5862503))

(assert (= (and b!5862503 res!2466696) b!5862511))

(assert (= (and b!5862503 c!1040166) b!5862509))

(assert (= (and b!5862503 (not c!1040166)) b!5862502))

(assert (= (and b!5862502 c!1040168) b!5862512))

(assert (= (and b!5862502 (not c!1040168)) b!5862510))

(assert (= (and b!5862510 c!1040169) b!5862506))

(assert (= (and b!5862510 (not c!1040169)) b!5862505))

(assert (= (or b!5862512 b!5862506) bm!459868))

(assert (= (or b!5862512 b!5862506) bm!459871))

(assert (= (or b!5862509 bm!459868) bm!459869))

(assert (= (or b!5862509 bm!459871) bm!459867))

(assert (= (or b!5862504 b!5862509) bm!459872))

(assert (= (or b!5862504 bm!459867) bm!459870))

(declare-fun m!6779112 () Bool)

(assert (=> b!5862507 m!6779112))

(declare-fun m!6779114 () Bool)

(assert (=> b!5862511 m!6779114))

(declare-fun m!6779116 () Bool)

(assert (=> bm!459872 m!6779116))

(declare-fun m!6779118 () Bool)

(assert (=> bm!459869 m!6779118))

(declare-fun m!6779120 () Bool)

(assert (=> bm!459870 m!6779120))

(assert (=> bm!459754 d!1841014))

(declare-fun bs!1381175 () Bool)

(declare-fun b!5862517 () Bool)

(assert (= bs!1381175 (and b!5862517 b!5862456)))

(declare-fun lambda!320569 () Int)

(assert (=> bs!1381175 (not (= lambda!320569 lambda!320566))))

(declare-fun bs!1381176 () Bool)

(assert (= bs!1381176 (and b!5862517 b!5861838)))

(assert (=> bs!1381176 (= (and (= (reg!16257 (regTwo!32369 (regOne!32369 r!7292))) (reg!16257 (regTwo!32369 r!7292))) (= (regTwo!32369 (regOne!32369 r!7292)) (regTwo!32369 r!7292))) (= lambda!320569 lambda!320525))))

(declare-fun bs!1381177 () Bool)

(assert (= bs!1381177 (and b!5862517 b!5861836)))

(assert (=> bs!1381177 (not (= lambda!320569 lambda!320526))))

(declare-fun bs!1381178 () Bool)

(assert (= bs!1381178 (and b!5862517 b!5862444)))

(assert (=> bs!1381178 (= (and (= (reg!16257 (regTwo!32369 (regOne!32369 r!7292))) (reg!16257 (regOne!32369 (regOne!32369 r!7292)))) (= (regTwo!32369 (regOne!32369 r!7292)) (regOne!32369 (regOne!32369 r!7292)))) (= lambda!320569 lambda!320563))))

(declare-fun bs!1381179 () Bool)

(assert (= bs!1381179 (and b!5862517 b!5862458)))

(assert (=> bs!1381179 (= (and (= (reg!16257 (regTwo!32369 (regOne!32369 r!7292))) (reg!16257 (regOne!32369 (regTwo!32369 r!7292)))) (= (regTwo!32369 (regOne!32369 r!7292)) (regOne!32369 (regTwo!32369 r!7292)))) (= lambda!320569 lambda!320565))))

(declare-fun bs!1381180 () Bool)

(assert (= bs!1381180 (and b!5862517 b!5861920)))

(assert (=> bs!1381180 (= (and (= (reg!16257 (regTwo!32369 (regOne!32369 r!7292))) (reg!16257 r!7292)) (= (regTwo!32369 (regOne!32369 r!7292)) r!7292)) (= lambda!320569 lambda!320529))))

(declare-fun bs!1381181 () Bool)

(assert (= bs!1381181 (and b!5862517 b!5862442)))

(assert (=> bs!1381181 (not (= lambda!320569 lambda!320564))))

(declare-fun bs!1381182 () Bool)

(assert (= bs!1381182 (and b!5862517 b!5861893)))

(assert (=> bs!1381182 (not (= lambda!320569 lambda!320528))))

(declare-fun bs!1381183 () Bool)

(assert (= bs!1381183 (and b!5862517 b!5861918)))

(assert (=> bs!1381183 (not (= lambda!320569 lambda!320530))))

(declare-fun bs!1381184 () Bool)

(assert (= bs!1381184 (and b!5862517 b!5861895)))

(assert (=> bs!1381184 (= (and (= (reg!16257 (regTwo!32369 (regOne!32369 r!7292))) (reg!16257 (regOne!32369 r!7292))) (= (regTwo!32369 (regOne!32369 r!7292)) (regOne!32369 r!7292))) (= lambda!320569 lambda!320527))))

(assert (=> b!5862517 true))

(assert (=> b!5862517 true))

(declare-fun bs!1381185 () Bool)

(declare-fun b!5862515 () Bool)

(assert (= bs!1381185 (and b!5862515 b!5862456)))

(declare-fun lambda!320570 () Int)

(assert (=> bs!1381185 (= (and (= (regOne!32368 (regTwo!32369 (regOne!32369 r!7292))) (regOne!32368 (regOne!32369 (regTwo!32369 r!7292)))) (= (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))) (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))))) (= lambda!320570 lambda!320566))))

(declare-fun bs!1381186 () Bool)

(assert (= bs!1381186 (and b!5862515 b!5861838)))

(assert (=> bs!1381186 (not (= lambda!320570 lambda!320525))))

(declare-fun bs!1381187 () Bool)

(assert (= bs!1381187 (and b!5862515 b!5861836)))

(assert (=> bs!1381187 (= (and (= (regOne!32368 (regTwo!32369 (regOne!32369 r!7292))) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320570 lambda!320526))))

(declare-fun bs!1381188 () Bool)

(assert (= bs!1381188 (and b!5862515 b!5862444)))

(assert (=> bs!1381188 (not (= lambda!320570 lambda!320563))))

(declare-fun bs!1381189 () Bool)

(assert (= bs!1381189 (and b!5862515 b!5862458)))

(assert (=> bs!1381189 (not (= lambda!320570 lambda!320565))))

(declare-fun bs!1381190 () Bool)

(assert (= bs!1381190 (and b!5862515 b!5861920)))

(assert (=> bs!1381190 (not (= lambda!320570 lambda!320529))))

(declare-fun bs!1381191 () Bool)

(assert (= bs!1381191 (and b!5862515 b!5862517)))

(assert (=> bs!1381191 (not (= lambda!320570 lambda!320569))))

(declare-fun bs!1381192 () Bool)

(assert (= bs!1381192 (and b!5862515 b!5862442)))

(assert (=> bs!1381192 (= (and (= (regOne!32368 (regTwo!32369 (regOne!32369 r!7292))) (regOne!32368 (regOne!32369 (regOne!32369 r!7292)))) (= (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))) (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))))) (= lambda!320570 lambda!320564))))

(declare-fun bs!1381193 () Bool)

(assert (= bs!1381193 (and b!5862515 b!5861893)))

(assert (=> bs!1381193 (= (and (= (regOne!32368 (regTwo!32369 (regOne!32369 r!7292))) (regOne!32368 (regOne!32369 r!7292))) (= (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))) (regTwo!32368 (regOne!32369 r!7292)))) (= lambda!320570 lambda!320528))))

(declare-fun bs!1381194 () Bool)

(assert (= bs!1381194 (and b!5862515 b!5861918)))

(assert (=> bs!1381194 (= (and (= (regOne!32368 (regTwo!32369 (regOne!32369 r!7292))) (regOne!32368 r!7292)) (= (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))) (regTwo!32368 r!7292))) (= lambda!320570 lambda!320530))))

(declare-fun bs!1381195 () Bool)

(assert (= bs!1381195 (and b!5862515 b!5861895)))

(assert (=> bs!1381195 (not (= lambda!320570 lambda!320527))))

(assert (=> b!5862515 true))

(assert (=> b!5862515 true))

(declare-fun b!5862513 () Bool)

(declare-fun e!3594460 () Bool)

(assert (=> b!5862513 (= e!3594460 (= s!2326 (Cons!63961 (c!1039903 (regTwo!32369 (regOne!32369 r!7292))) Nil!63961)))))

(declare-fun b!5862514 () Bool)

(declare-fun e!3594459 () Bool)

(declare-fun call!459879 () Bool)

(assert (=> b!5862514 (= e!3594459 call!459879)))

(declare-fun e!3594458 () Bool)

(declare-fun call!459878 () Bool)

(assert (=> b!5862515 (= e!3594458 call!459878)))

(declare-fun b!5862516 () Bool)

(declare-fun e!3594457 () Bool)

(declare-fun e!3594462 () Bool)

(assert (=> b!5862516 (= e!3594457 e!3594462)))

(declare-fun res!2466699 () Bool)

(assert (=> b!5862516 (= res!2466699 (matchRSpec!3029 (regOne!32369 (regTwo!32369 (regOne!32369 r!7292))) s!2326))))

(assert (=> b!5862516 (=> res!2466699 e!3594462)))

(declare-fun e!3594461 () Bool)

(assert (=> b!5862517 (= e!3594461 call!459878)))

(declare-fun b!5862518 () Bool)

(assert (=> b!5862518 (= e!3594457 e!3594458)))

(declare-fun c!1040173 () Bool)

(assert (=> b!5862518 (= c!1040173 (is-Star!15928 (regTwo!32369 (regOne!32369 r!7292))))))

(declare-fun b!5862519 () Bool)

(declare-fun e!3594463 () Bool)

(assert (=> b!5862519 (= e!3594459 e!3594463)))

(declare-fun res!2466698 () Bool)

(assert (=> b!5862519 (= res!2466698 (not (is-EmptyLang!15928 (regTwo!32369 (regOne!32369 r!7292)))))))

(assert (=> b!5862519 (=> (not res!2466698) (not e!3594463))))

(declare-fun b!5862520 () Bool)

(declare-fun res!2466697 () Bool)

(assert (=> b!5862520 (=> res!2466697 e!3594461)))

(assert (=> b!5862520 (= res!2466697 call!459879)))

(assert (=> b!5862520 (= e!3594458 e!3594461)))

(declare-fun bm!459873 () Bool)

(assert (=> bm!459873 (= call!459878 (Exists!3000 (ite c!1040173 lambda!320569 lambda!320570)))))

(declare-fun b!5862521 () Bool)

(declare-fun c!1040174 () Bool)

(assert (=> b!5862521 (= c!1040174 (is-Union!15928 (regTwo!32369 (regOne!32369 r!7292))))))

(assert (=> b!5862521 (= e!3594460 e!3594457)))

(declare-fun bm!459874 () Bool)

(assert (=> bm!459874 (= call!459879 (isEmpty!35822 s!2326))))

(declare-fun d!1841016 () Bool)

(declare-fun c!1040172 () Bool)

(assert (=> d!1841016 (= c!1040172 (is-EmptyExpr!15928 (regTwo!32369 (regOne!32369 r!7292))))))

(assert (=> d!1841016 (= (matchRSpec!3029 (regTwo!32369 (regOne!32369 r!7292)) s!2326) e!3594459)))

(declare-fun b!5862522 () Bool)

(declare-fun c!1040171 () Bool)

(assert (=> b!5862522 (= c!1040171 (is-ElementMatch!15928 (regTwo!32369 (regOne!32369 r!7292))))))

(assert (=> b!5862522 (= e!3594463 e!3594460)))

(declare-fun b!5862523 () Bool)

(assert (=> b!5862523 (= e!3594462 (matchRSpec!3029 (regTwo!32369 (regTwo!32369 (regOne!32369 r!7292))) s!2326))))

(assert (= (and d!1841016 c!1040172) b!5862514))

(assert (= (and d!1841016 (not c!1040172)) b!5862519))

(assert (= (and b!5862519 res!2466698) b!5862522))

(assert (= (and b!5862522 c!1040171) b!5862513))

(assert (= (and b!5862522 (not c!1040171)) b!5862521))

(assert (= (and b!5862521 c!1040174) b!5862516))

(assert (= (and b!5862521 (not c!1040174)) b!5862518))

(assert (= (and b!5862516 (not res!2466699)) b!5862523))

(assert (= (and b!5862518 c!1040173) b!5862520))

(assert (= (and b!5862518 (not c!1040173)) b!5862515))

(assert (= (and b!5862520 (not res!2466697)) b!5862517))

(assert (= (or b!5862517 b!5862515) bm!459873))

(assert (= (or b!5862514 b!5862520) bm!459874))

(declare-fun m!6779122 () Bool)

(assert (=> b!5862516 m!6779122))

(declare-fun m!6779124 () Bool)

(assert (=> bm!459873 m!6779124))

(assert (=> bm!459874 m!6778664))

(declare-fun m!6779126 () Bool)

(assert (=> b!5862523 m!6779126))

(assert (=> b!5861901 d!1841016))

(declare-fun d!1841018 () Bool)

(assert (=> d!1841018 (= (isEmpty!35821 (t!377456 (exprs!5812 (h!70408 zl!343)))) (is-Nil!63959 (t!377456 (exprs!5812 (h!70408 zl!343)))))))

(assert (=> b!5861769 d!1841018))

(declare-fun d!1841020 () Bool)

(assert (=> d!1841020 (= (isEmpty!35822 (tail!11496 s!2326)) (is-Nil!63961 (tail!11496 s!2326)))))

(assert (=> b!5861879 d!1841020))

(assert (=> b!5861879 d!1841010))

(assert (=> b!5861740 d!1840824))

(declare-fun bs!1381196 () Bool)

(declare-fun d!1841022 () Bool)

(assert (= bs!1381196 (and d!1841022 d!1840818)))

(declare-fun lambda!320571 () Int)

(assert (=> bs!1381196 (= lambda!320571 lambda!320514)))

(declare-fun bs!1381197 () Bool)

(assert (= bs!1381197 (and d!1841022 d!1840888)))

(assert (=> bs!1381197 (= lambda!320571 lambda!320535)))

(declare-fun bs!1381198 () Bool)

(assert (= bs!1381198 (and d!1841022 d!1840872)))

(assert (=> bs!1381198 (= lambda!320571 lambda!320531)))

(declare-fun bs!1381199 () Bool)

(assert (= bs!1381199 (and d!1841022 d!1840824)))

(assert (=> bs!1381199 (= lambda!320571 lambda!320520)))

(declare-fun bs!1381200 () Bool)

(assert (= bs!1381200 (and d!1841022 d!1840820)))

(assert (=> bs!1381200 (= lambda!320571 lambda!320517)))

(declare-fun bs!1381201 () Bool)

(assert (= bs!1381201 (and d!1841022 d!1840816)))

(assert (=> bs!1381201 (= lambda!320571 lambda!320511)))

(declare-fun bs!1381202 () Bool)

(assert (= bs!1381202 (and d!1841022 d!1840998)))

(assert (=> bs!1381202 (= lambda!320571 lambda!320567)))

(declare-fun lt!2305692 () List!64083)

(assert (=> d!1841022 (forall!15015 lt!2305692 lambda!320571)))

(declare-fun e!3594464 () List!64083)

(assert (=> d!1841022 (= lt!2305692 e!3594464)))

(declare-fun c!1040175 () Bool)

(assert (=> d!1841022 (= c!1040175 (is-Cons!63960 (t!377457 zl!343)))))

(assert (=> d!1841022 (= (unfocusZipperList!1349 (t!377457 zl!343)) lt!2305692)))

(declare-fun b!5862524 () Bool)

(assert (=> b!5862524 (= e!3594464 (Cons!63959 (generalisedConcat!1525 (exprs!5812 (h!70408 (t!377457 zl!343)))) (unfocusZipperList!1349 (t!377457 (t!377457 zl!343)))))))

(declare-fun b!5862525 () Bool)

(assert (=> b!5862525 (= e!3594464 Nil!63959)))

(assert (= (and d!1841022 c!1040175) b!5862524))

(assert (= (and d!1841022 (not c!1040175)) b!5862525))

(declare-fun m!6779128 () Bool)

(assert (=> d!1841022 m!6779128))

(declare-fun m!6779130 () Bool)

(assert (=> b!5862524 m!6779130))

(declare-fun m!6779132 () Bool)

(assert (=> b!5862524 m!6779132))

(assert (=> b!5861740 d!1841022))

(declare-fun d!1841024 () Bool)

(declare-fun res!2466700 () Bool)

(declare-fun e!3594465 () Bool)

(assert (=> d!1841024 (=> res!2466700 e!3594465)))

(assert (=> d!1841024 (= res!2466700 (is-Nil!63959 lt!2305633))))

(assert (=> d!1841024 (= (forall!15015 lt!2305633 lambda!320514) e!3594465)))

(declare-fun b!5862526 () Bool)

(declare-fun e!3594466 () Bool)

(assert (=> b!5862526 (= e!3594465 e!3594466)))

(declare-fun res!2466701 () Bool)

(assert (=> b!5862526 (=> (not res!2466701) (not e!3594466))))

(assert (=> b!5862526 (= res!2466701 (dynLambda!25013 lambda!320514 (h!70407 lt!2305633)))))

(declare-fun b!5862527 () Bool)

(assert (=> b!5862527 (= e!3594466 (forall!15015 (t!377456 lt!2305633) lambda!320514))))

(assert (= (and d!1841024 (not res!2466700)) b!5862526))

(assert (= (and b!5862526 res!2466701) b!5862527))

(declare-fun b_lambda!220679 () Bool)

(assert (=> (not b_lambda!220679) (not b!5862526)))

(declare-fun m!6779134 () Bool)

(assert (=> b!5862526 m!6779134))

(declare-fun m!6779136 () Bool)

(assert (=> b!5862527 m!6779136))

(assert (=> d!1840818 d!1841024))

(declare-fun d!1841026 () Bool)

(declare-fun nullableFct!1915 (Regex!15928) Bool)

(assert (=> d!1841026 (= (nullable!5928 (h!70407 (exprs!5812 (h!70408 zl!343)))) (nullableFct!1915 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun bs!1381203 () Bool)

(assert (= bs!1381203 d!1841026))

(declare-fun m!6779138 () Bool)

(assert (=> bs!1381203 m!6779138))

(assert (=> b!5861971 d!1841026))

(declare-fun d!1841028 () Bool)

(declare-fun res!2466706 () Bool)

(declare-fun e!3594471 () Bool)

(assert (=> d!1841028 (=> res!2466706 e!3594471)))

(assert (=> d!1841028 (= res!2466706 (is-Nil!63960 lt!2305656))))

(assert (=> d!1841028 (= (noDuplicate!1793 lt!2305656) e!3594471)))

(declare-fun b!5862532 () Bool)

(declare-fun e!3594472 () Bool)

(assert (=> b!5862532 (= e!3594471 e!3594472)))

(declare-fun res!2466707 () Bool)

(assert (=> b!5862532 (=> (not res!2466707) (not e!3594472))))

(declare-fun contains!19934 (List!64084 Context!10624) Bool)

(assert (=> b!5862532 (= res!2466707 (not (contains!19934 (t!377457 lt!2305656) (h!70408 lt!2305656))))))

(declare-fun b!5862533 () Bool)

(assert (=> b!5862533 (= e!3594472 (noDuplicate!1793 (t!377457 lt!2305656)))))

(assert (= (and d!1841028 (not res!2466706)) b!5862532))

(assert (= (and b!5862532 res!2466707) b!5862533))

(declare-fun m!6779140 () Bool)

(assert (=> b!5862532 m!6779140))

(declare-fun m!6779142 () Bool)

(assert (=> b!5862533 m!6779142))

(assert (=> d!1840870 d!1841028))

(declare-fun d!1841030 () Bool)

(declare-fun e!3594479 () Bool)

(assert (=> d!1841030 e!3594479))

(declare-fun res!2466712 () Bool)

(assert (=> d!1841030 (=> (not res!2466712) (not e!3594479))))

(declare-fun res!2466713 () List!64084)

(assert (=> d!1841030 (= res!2466712 (noDuplicate!1793 res!2466713))))

(declare-fun e!3594481 () Bool)

(assert (=> d!1841030 e!3594481))

(assert (=> d!1841030 (= (choose!44440 z!1189) res!2466713)))

(declare-fun b!5862541 () Bool)

(declare-fun e!3594480 () Bool)

(declare-fun tp!1621555 () Bool)

(assert (=> b!5862541 (= e!3594480 tp!1621555)))

(declare-fun b!5862540 () Bool)

(declare-fun tp!1621556 () Bool)

(assert (=> b!5862540 (= e!3594481 (and (inv!83068 (h!70408 res!2466713)) e!3594480 tp!1621556))))

(declare-fun b!5862542 () Bool)

(assert (=> b!5862542 (= e!3594479 (= (content!11758 res!2466713) z!1189))))

(assert (= b!5862540 b!5862541))

(assert (= (and d!1841030 (is-Cons!63960 res!2466713)) b!5862540))

(assert (= (and d!1841030 res!2466712) b!5862542))

(declare-fun m!6779144 () Bool)

(assert (=> d!1841030 m!6779144))

(declare-fun m!6779146 () Bool)

(assert (=> b!5862540 m!6779146))

(declare-fun m!6779148 () Bool)

(assert (=> b!5862542 m!6779148))

(assert (=> d!1840870 d!1841030))

(declare-fun d!1841032 () Bool)

(declare-fun choose!44446 (Int) Bool)

(assert (=> d!1841032 (= (Exists!3000 (ite c!1040001 lambda!320527 lambda!320528)) (choose!44446 (ite c!1040001 lambda!320527 lambda!320528)))))

(declare-fun bs!1381204 () Bool)

(assert (= bs!1381204 d!1841032))

(declare-fun m!6779150 () Bool)

(assert (=> bs!1381204 m!6779150))

(assert (=> bm!459776 d!1841032))

(declare-fun bs!1381205 () Bool)

(declare-fun d!1841034 () Bool)

(assert (= bs!1381205 (and d!1841034 d!1841022)))

(declare-fun lambda!320572 () Int)

(assert (=> bs!1381205 (= lambda!320572 lambda!320571)))

(declare-fun bs!1381206 () Bool)

(assert (= bs!1381206 (and d!1841034 d!1840818)))

(assert (=> bs!1381206 (= lambda!320572 lambda!320514)))

(declare-fun bs!1381207 () Bool)

(assert (= bs!1381207 (and d!1841034 d!1840888)))

(assert (=> bs!1381207 (= lambda!320572 lambda!320535)))

(declare-fun bs!1381208 () Bool)

(assert (= bs!1381208 (and d!1841034 d!1840872)))

(assert (=> bs!1381208 (= lambda!320572 lambda!320531)))

(declare-fun bs!1381209 () Bool)

(assert (= bs!1381209 (and d!1841034 d!1840824)))

(assert (=> bs!1381209 (= lambda!320572 lambda!320520)))

(declare-fun bs!1381210 () Bool)

(assert (= bs!1381210 (and d!1841034 d!1840820)))

(assert (=> bs!1381210 (= lambda!320572 lambda!320517)))

(declare-fun bs!1381211 () Bool)

(assert (= bs!1381211 (and d!1841034 d!1840816)))

(assert (=> bs!1381211 (= lambda!320572 lambda!320511)))

(declare-fun bs!1381212 () Bool)

(assert (= bs!1381212 (and d!1841034 d!1840998)))

(assert (=> bs!1381212 (= lambda!320572 lambda!320567)))

(declare-fun b!5862543 () Bool)

(declare-fun e!3594483 () Bool)

(declare-fun e!3594482 () Bool)

(assert (=> b!5862543 (= e!3594483 e!3594482)))

(declare-fun c!1040179 () Bool)

(assert (=> b!5862543 (= c!1040179 (isEmpty!35821 (t!377456 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5862545 () Bool)

(declare-fun lt!2305693 () Regex!15928)

(assert (=> b!5862545 (= e!3594482 (isEmptyLang!1371 lt!2305693))))

(declare-fun b!5862546 () Bool)

(declare-fun e!3594485 () Bool)

(assert (=> b!5862546 (= e!3594485 (isEmpty!35821 (t!377456 (t!377456 (unfocusZipperList!1349 zl!343)))))))

(declare-fun b!5862547 () Bool)

(declare-fun e!3594487 () Bool)

(assert (=> b!5862547 (= e!3594487 (= lt!2305693 (head!12410 (t!377456 (unfocusZipperList!1349 zl!343)))))))

(declare-fun b!5862548 () Bool)

(assert (=> b!5862548 (= e!3594487 (isUnion!801 lt!2305693))))

(assert (=> d!1841034 e!3594483))

(declare-fun res!2466714 () Bool)

(assert (=> d!1841034 (=> (not res!2466714) (not e!3594483))))

(assert (=> d!1841034 (= res!2466714 (validRegex!7664 lt!2305693))))

(declare-fun e!3594486 () Regex!15928)

(assert (=> d!1841034 (= lt!2305693 e!3594486)))

(declare-fun c!1040176 () Bool)

(assert (=> d!1841034 (= c!1040176 e!3594485)))

(declare-fun res!2466715 () Bool)

(assert (=> d!1841034 (=> (not res!2466715) (not e!3594485))))

(assert (=> d!1841034 (= res!2466715 (is-Cons!63959 (t!377456 (unfocusZipperList!1349 zl!343))))))

(assert (=> d!1841034 (forall!15015 (t!377456 (unfocusZipperList!1349 zl!343)) lambda!320572)))

(assert (=> d!1841034 (= (generalisedUnion!1772 (t!377456 (unfocusZipperList!1349 zl!343))) lt!2305693)))

(declare-fun b!5862544 () Bool)

(assert (=> b!5862544 (= e!3594482 e!3594487)))

(declare-fun c!1040177 () Bool)

(assert (=> b!5862544 (= c!1040177 (isEmpty!35821 (tail!11495 (t!377456 (unfocusZipperList!1349 zl!343)))))))

(declare-fun b!5862549 () Bool)

(declare-fun e!3594484 () Regex!15928)

(assert (=> b!5862549 (= e!3594484 EmptyLang!15928)))

(declare-fun b!5862550 () Bool)

(assert (=> b!5862550 (= e!3594484 (Union!15928 (h!70407 (t!377456 (unfocusZipperList!1349 zl!343))) (generalisedUnion!1772 (t!377456 (t!377456 (unfocusZipperList!1349 zl!343))))))))

(declare-fun b!5862551 () Bool)

(assert (=> b!5862551 (= e!3594486 e!3594484)))

(declare-fun c!1040178 () Bool)

(assert (=> b!5862551 (= c!1040178 (is-Cons!63959 (t!377456 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5862552 () Bool)

(assert (=> b!5862552 (= e!3594486 (h!70407 (t!377456 (unfocusZipperList!1349 zl!343))))))

(assert (= (and d!1841034 res!2466715) b!5862546))

(assert (= (and d!1841034 c!1040176) b!5862552))

(assert (= (and d!1841034 (not c!1040176)) b!5862551))

(assert (= (and b!5862551 c!1040178) b!5862550))

(assert (= (and b!5862551 (not c!1040178)) b!5862549))

(assert (= (and d!1841034 res!2466714) b!5862543))

(assert (= (and b!5862543 c!1040179) b!5862545))

(assert (= (and b!5862543 (not c!1040179)) b!5862544))

(assert (= (and b!5862544 c!1040177) b!5862547))

(assert (= (and b!5862544 (not c!1040177)) b!5862548))

(assert (=> b!5862543 m!6778600))

(declare-fun m!6779152 () Bool)

(assert (=> b!5862547 m!6779152))

(declare-fun m!6779154 () Bool)

(assert (=> b!5862548 m!6779154))

(declare-fun m!6779156 () Bool)

(assert (=> d!1841034 m!6779156))

(declare-fun m!6779158 () Bool)

(assert (=> d!1841034 m!6779158))

(declare-fun m!6779160 () Bool)

(assert (=> b!5862546 m!6779160))

(declare-fun m!6779162 () Bool)

(assert (=> b!5862550 m!6779162))

(declare-fun m!6779164 () Bool)

(assert (=> b!5862544 m!6779164))

(assert (=> b!5862544 m!6779164))

(declare-fun m!6779166 () Bool)

(assert (=> b!5862544 m!6779166))

(declare-fun m!6779168 () Bool)

(assert (=> b!5862545 m!6779168))

(assert (=> b!5861733 d!1841034))

(declare-fun bs!1381213 () Bool)

(declare-fun b!5862557 () Bool)

(assert (= bs!1381213 (and b!5862557 b!5862456)))

(declare-fun lambda!320573 () Int)

(assert (=> bs!1381213 (not (= lambda!320573 lambda!320566))))

(declare-fun bs!1381214 () Bool)

(assert (= bs!1381214 (and b!5862557 b!5861838)))

(assert (=> bs!1381214 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 (regTwo!32369 r!7292))) (= (regTwo!32369 (regTwo!32369 r!7292)) (regTwo!32369 r!7292))) (= lambda!320573 lambda!320525))))

(declare-fun bs!1381215 () Bool)

(assert (= bs!1381215 (and b!5862557 b!5862515)))

(assert (=> bs!1381215 (not (= lambda!320573 lambda!320570))))

(declare-fun bs!1381216 () Bool)

(assert (= bs!1381216 (and b!5862557 b!5861836)))

(assert (=> bs!1381216 (not (= lambda!320573 lambda!320526))))

(declare-fun bs!1381217 () Bool)

(assert (= bs!1381217 (and b!5862557 b!5862444)))

(assert (=> bs!1381217 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 (regOne!32369 (regOne!32369 r!7292)))) (= (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32369 (regOne!32369 r!7292)))) (= lambda!320573 lambda!320563))))

(declare-fun bs!1381218 () Bool)

(assert (= bs!1381218 (and b!5862557 b!5862458)))

(assert (=> bs!1381218 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 (regOne!32369 (regTwo!32369 r!7292)))) (= (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32369 (regTwo!32369 r!7292)))) (= lambda!320573 lambda!320565))))

(declare-fun bs!1381219 () Bool)

(assert (= bs!1381219 (and b!5862557 b!5861920)))

(assert (=> bs!1381219 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 r!7292)) (= (regTwo!32369 (regTwo!32369 r!7292)) r!7292)) (= lambda!320573 lambda!320529))))

(declare-fun bs!1381220 () Bool)

(assert (= bs!1381220 (and b!5862557 b!5862517)))

(assert (=> bs!1381220 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 (regTwo!32369 (regOne!32369 r!7292)))) (= (regTwo!32369 (regTwo!32369 r!7292)) (regTwo!32369 (regOne!32369 r!7292)))) (= lambda!320573 lambda!320569))))

(declare-fun bs!1381221 () Bool)

(assert (= bs!1381221 (and b!5862557 b!5862442)))

(assert (=> bs!1381221 (not (= lambda!320573 lambda!320564))))

(declare-fun bs!1381222 () Bool)

(assert (= bs!1381222 (and b!5862557 b!5861893)))

(assert (=> bs!1381222 (not (= lambda!320573 lambda!320528))))

(declare-fun bs!1381223 () Bool)

(assert (= bs!1381223 (and b!5862557 b!5861918)))

(assert (=> bs!1381223 (not (= lambda!320573 lambda!320530))))

(declare-fun bs!1381224 () Bool)

(assert (= bs!1381224 (and b!5862557 b!5861895)))

(assert (=> bs!1381224 (= (and (= (reg!16257 (regTwo!32369 (regTwo!32369 r!7292))) (reg!16257 (regOne!32369 r!7292))) (= (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32369 r!7292))) (= lambda!320573 lambda!320527))))

(assert (=> b!5862557 true))

(assert (=> b!5862557 true))

(declare-fun bs!1381225 () Bool)

(declare-fun b!5862555 () Bool)

(assert (= bs!1381225 (and b!5862555 b!5861838)))

(declare-fun lambda!320574 () Int)

(assert (=> bs!1381225 (not (= lambda!320574 lambda!320525))))

(declare-fun bs!1381226 () Bool)

(assert (= bs!1381226 (and b!5862555 b!5862515)))

(assert (=> bs!1381226 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 (regTwo!32369 (regOne!32369 r!7292)))) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regTwo!32369 (regOne!32369 r!7292))))) (= lambda!320574 lambda!320570))))

(declare-fun bs!1381227 () Bool)

(assert (= bs!1381227 (and b!5862555 b!5861836)))

(assert (=> bs!1381227 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 (regTwo!32369 r!7292))) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regTwo!32369 r!7292)))) (= lambda!320574 lambda!320526))))

(declare-fun bs!1381228 () Bool)

(assert (= bs!1381228 (and b!5862555 b!5862444)))

(assert (=> bs!1381228 (not (= lambda!320574 lambda!320563))))

(declare-fun bs!1381229 () Bool)

(assert (= bs!1381229 (and b!5862555 b!5862458)))

(assert (=> bs!1381229 (not (= lambda!320574 lambda!320565))))

(declare-fun bs!1381230 () Bool)

(assert (= bs!1381230 (and b!5862555 b!5861920)))

(assert (=> bs!1381230 (not (= lambda!320574 lambda!320529))))

(declare-fun bs!1381231 () Bool)

(assert (= bs!1381231 (and b!5862555 b!5862517)))

(assert (=> bs!1381231 (not (= lambda!320574 lambda!320569))))

(declare-fun bs!1381232 () Bool)

(assert (= bs!1381232 (and b!5862555 b!5862442)))

(assert (=> bs!1381232 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 (regOne!32369 (regOne!32369 r!7292)))) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regOne!32369 (regOne!32369 r!7292))))) (= lambda!320574 lambda!320564))))

(declare-fun bs!1381233 () Bool)

(assert (= bs!1381233 (and b!5862555 b!5861893)))

(assert (=> bs!1381233 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 (regOne!32369 r!7292))) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regOne!32369 r!7292)))) (= lambda!320574 lambda!320528))))

(declare-fun bs!1381234 () Bool)

(assert (= bs!1381234 (and b!5862555 b!5862456)))

(assert (=> bs!1381234 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 (regOne!32369 (regTwo!32369 r!7292)))) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 (regOne!32369 (regTwo!32369 r!7292))))) (= lambda!320574 lambda!320566))))

(declare-fun bs!1381235 () Bool)

(assert (= bs!1381235 (and b!5862555 b!5862557)))

(assert (=> bs!1381235 (not (= lambda!320574 lambda!320573))))

(declare-fun bs!1381236 () Bool)

(assert (= bs!1381236 (and b!5862555 b!5861918)))

(assert (=> bs!1381236 (= (and (= (regOne!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regOne!32368 r!7292)) (= (regTwo!32368 (regTwo!32369 (regTwo!32369 r!7292))) (regTwo!32368 r!7292))) (= lambda!320574 lambda!320530))))

(declare-fun bs!1381237 () Bool)

(assert (= bs!1381237 (and b!5862555 b!5861895)))

(assert (=> bs!1381237 (not (= lambda!320574 lambda!320527))))

(assert (=> b!5862555 true))

(assert (=> b!5862555 true))

(declare-fun b!5862553 () Bool)

(declare-fun e!3594491 () Bool)

(assert (=> b!5862553 (= e!3594491 (= s!2326 (Cons!63961 (c!1039903 (regTwo!32369 (regTwo!32369 r!7292))) Nil!63961)))))

(declare-fun b!5862554 () Bool)

(declare-fun e!3594490 () Bool)

(declare-fun call!459881 () Bool)

(assert (=> b!5862554 (= e!3594490 call!459881)))

(declare-fun e!3594489 () Bool)

(declare-fun call!459880 () Bool)

(assert (=> b!5862555 (= e!3594489 call!459880)))

(declare-fun b!5862556 () Bool)

(declare-fun e!3594488 () Bool)

(declare-fun e!3594493 () Bool)

(assert (=> b!5862556 (= e!3594488 e!3594493)))

(declare-fun res!2466718 () Bool)

(assert (=> b!5862556 (= res!2466718 (matchRSpec!3029 (regOne!32369 (regTwo!32369 (regTwo!32369 r!7292))) s!2326))))

(assert (=> b!5862556 (=> res!2466718 e!3594493)))

(declare-fun e!3594492 () Bool)

(assert (=> b!5862557 (= e!3594492 call!459880)))

(declare-fun b!5862558 () Bool)

(assert (=> b!5862558 (= e!3594488 e!3594489)))

(declare-fun c!1040182 () Bool)

(assert (=> b!5862558 (= c!1040182 (is-Star!15928 (regTwo!32369 (regTwo!32369 r!7292))))))

(declare-fun b!5862559 () Bool)

(declare-fun e!3594494 () Bool)

(assert (=> b!5862559 (= e!3594490 e!3594494)))

(declare-fun res!2466717 () Bool)

(assert (=> b!5862559 (= res!2466717 (not (is-EmptyLang!15928 (regTwo!32369 (regTwo!32369 r!7292)))))))

(assert (=> b!5862559 (=> (not res!2466717) (not e!3594494))))

(declare-fun b!5862560 () Bool)

(declare-fun res!2466716 () Bool)

(assert (=> b!5862560 (=> res!2466716 e!3594492)))

(assert (=> b!5862560 (= res!2466716 call!459881)))

(assert (=> b!5862560 (= e!3594489 e!3594492)))

(declare-fun bm!459875 () Bool)

(assert (=> bm!459875 (= call!459880 (Exists!3000 (ite c!1040182 lambda!320573 lambda!320574)))))

(declare-fun b!5862561 () Bool)

(declare-fun c!1040183 () Bool)

(assert (=> b!5862561 (= c!1040183 (is-Union!15928 (regTwo!32369 (regTwo!32369 r!7292))))))

(assert (=> b!5862561 (= e!3594491 e!3594488)))

(declare-fun bm!459876 () Bool)

(assert (=> bm!459876 (= call!459881 (isEmpty!35822 s!2326))))

(declare-fun d!1841036 () Bool)

(declare-fun c!1040181 () Bool)

(assert (=> d!1841036 (= c!1040181 (is-EmptyExpr!15928 (regTwo!32369 (regTwo!32369 r!7292))))))

(assert (=> d!1841036 (= (matchRSpec!3029 (regTwo!32369 (regTwo!32369 r!7292)) s!2326) e!3594490)))

(declare-fun b!5862562 () Bool)

(declare-fun c!1040180 () Bool)

(assert (=> b!5862562 (= c!1040180 (is-ElementMatch!15928 (regTwo!32369 (regTwo!32369 r!7292))))))

(assert (=> b!5862562 (= e!3594494 e!3594491)))

(declare-fun b!5862563 () Bool)

(assert (=> b!5862563 (= e!3594493 (matchRSpec!3029 (regTwo!32369 (regTwo!32369 (regTwo!32369 r!7292))) s!2326))))

(assert (= (and d!1841036 c!1040181) b!5862554))

(assert (= (and d!1841036 (not c!1040181)) b!5862559))

(assert (= (and b!5862559 res!2466717) b!5862562))

(assert (= (and b!5862562 c!1040180) b!5862553))

(assert (= (and b!5862562 (not c!1040180)) b!5862561))

(assert (= (and b!5862561 c!1040183) b!5862556))

(assert (= (and b!5862561 (not c!1040183)) b!5862558))

(assert (= (and b!5862556 (not res!2466718)) b!5862563))

(assert (= (and b!5862558 c!1040182) b!5862560))

(assert (= (and b!5862558 (not c!1040182)) b!5862555))

(assert (= (and b!5862560 (not res!2466716)) b!5862557))

(assert (= (or b!5862557 b!5862555) bm!459875))

(assert (= (or b!5862554 b!5862560) bm!459876))

(declare-fun m!6779170 () Bool)

(assert (=> b!5862556 m!6779170))

(declare-fun m!6779172 () Bool)

(assert (=> bm!459875 m!6779172))

(assert (=> bm!459876 m!6778664))

(declare-fun m!6779174 () Bool)

(assert (=> b!5862563 m!6779174))

(assert (=> b!5861844 d!1841036))

(assert (=> b!5861904 d!1841020))

(assert (=> b!5861904 d!1841010))

(declare-fun d!1841038 () Bool)

(assert (=> d!1841038 (= (isEmpty!35821 (t!377456 (unfocusZipperList!1349 zl!343))) (is-Nil!63959 (t!377456 (unfocusZipperList!1349 zl!343))))))

(assert (=> b!5861729 d!1841038))

(declare-fun d!1841040 () Bool)

(assert (=> d!1841040 (= (nullable!5928 (regOne!32368 r!7292)) (nullableFct!1915 (regOne!32368 r!7292)))))

(declare-fun bs!1381238 () Bool)

(assert (= bs!1381238 d!1841040))

(declare-fun m!6779176 () Bool)

(assert (=> bs!1381238 m!6779176))

(assert (=> b!5861962 d!1841040))

(declare-fun d!1841042 () Bool)

(assert (=> d!1841042 (= (Exists!3000 (ite c!1039988 lambda!320525 lambda!320526)) (choose!44446 (ite c!1039988 lambda!320525 lambda!320526)))))

(declare-fun bs!1381239 () Bool)

(assert (= bs!1381239 d!1841042))

(declare-fun m!6779178 () Bool)

(assert (=> bs!1381239 m!6779178))

(assert (=> bm!459771 d!1841042))

(declare-fun c!1040185 () Bool)

(declare-fun d!1841044 () Bool)

(assert (=> d!1841044 (= c!1040185 (and (is-ElementMatch!15928 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (= (c!1039903 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (h!70409 s!2326))))))

(declare-fun e!3594497 () (Set Context!10624))

(assert (=> d!1841044 (= (derivationStepZipperDown!1194 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))) (ite c!1039937 lt!2305515 (Context!10625 call!459767)) (h!70409 s!2326)) e!3594497)))

(declare-fun b!5862564 () Bool)

(declare-fun e!3594499 () (Set Context!10624))

(declare-fun e!3594498 () (Set Context!10624))

(assert (=> b!5862564 (= e!3594499 e!3594498)))

(declare-fun c!1040186 () Bool)

(assert (=> b!5862564 (= c!1040186 (is-Concat!24773 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))))))

(declare-fun bm!459877 () Bool)

(declare-fun call!459884 () (Set Context!10624))

(declare-fun call!459886 () (Set Context!10624))

(assert (=> bm!459877 (= call!459884 call!459886)))

(declare-fun b!5862565 () Bool)

(declare-fun c!1040184 () Bool)

(declare-fun e!3594496 () Bool)

(assert (=> b!5862565 (= c!1040184 e!3594496)))

(declare-fun res!2466719 () Bool)

(assert (=> b!5862565 (=> (not res!2466719) (not e!3594496))))

(assert (=> b!5862565 (= res!2466719 (is-Concat!24773 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))))))

(declare-fun e!3594495 () (Set Context!10624))

(assert (=> b!5862565 (= e!3594495 e!3594499)))

(declare-fun bm!459878 () Bool)

(declare-fun call!459885 () List!64083)

(declare-fun call!459887 () List!64083)

(assert (=> bm!459878 (= call!459885 call!459887)))

(declare-fun b!5862566 () Bool)

(declare-fun call!459883 () (Set Context!10624))

(assert (=> b!5862566 (= e!3594495 (set.union call!459886 call!459883))))

(declare-fun bm!459879 () Bool)

(assert (=> bm!459879 (= call!459887 ($colon$colon!1833 (exprs!5812 (ite c!1039937 lt!2305515 (Context!10625 call!459767))) (ite (or c!1040184 c!1040186) (regTwo!32368 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))))))

(declare-fun b!5862567 () Bool)

(declare-fun e!3594500 () (Set Context!10624))

(assert (=> b!5862567 (= e!3594500 (as set.empty (Set Context!10624)))))

(declare-fun b!5862568 () Bool)

(declare-fun call!459882 () (Set Context!10624))

(assert (=> b!5862568 (= e!3594500 call!459882)))

(declare-fun c!1040188 () Bool)

(declare-fun bm!459880 () Bool)

(assert (=> bm!459880 (= call!459886 (derivationStepZipperDown!1194 (ite c!1040188 (regOne!32369 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (ite c!1040184 (regTwo!32368 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (ite c!1040186 (regOne!32368 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (reg!16257 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))))) (ite (or c!1040188 c!1040184) (ite c!1039937 lt!2305515 (Context!10625 call!459767)) (Context!10625 call!459885)) (h!70409 s!2326)))))

(declare-fun b!5862569 () Bool)

(assert (=> b!5862569 (= e!3594497 (set.insert (ite c!1039937 lt!2305515 (Context!10625 call!459767)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862570 () Bool)

(assert (=> b!5862570 (= e!3594497 e!3594495)))

(assert (=> b!5862570 (= c!1040188 (is-Union!15928 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))))))

(declare-fun bm!459881 () Bool)

(assert (=> bm!459881 (= call!459882 call!459884)))

(declare-fun bm!459882 () Bool)

(assert (=> bm!459882 (= call!459883 (derivationStepZipperDown!1194 (ite c!1040188 (regTwo!32369 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))) (regOne!32368 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))) (ite c!1040188 (ite c!1039937 lt!2305515 (Context!10625 call!459767)) (Context!10625 call!459887)) (h!70409 s!2326)))))

(declare-fun b!5862571 () Bool)

(assert (=> b!5862571 (= e!3594499 (set.union call!459883 call!459884))))

(declare-fun b!5862572 () Bool)

(declare-fun c!1040187 () Bool)

(assert (=> b!5862572 (= c!1040187 (is-Star!15928 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292)))))))

(assert (=> b!5862572 (= e!3594498 e!3594500)))

(declare-fun b!5862573 () Bool)

(assert (=> b!5862573 (= e!3594496 (nullable!5928 (regOne!32368 (ite c!1039937 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))))))

(declare-fun b!5862574 () Bool)

(assert (=> b!5862574 (= e!3594498 call!459882)))

(assert (= (and d!1841044 c!1040185) b!5862569))

(assert (= (and d!1841044 (not c!1040185)) b!5862570))

(assert (= (and b!5862570 c!1040188) b!5862566))

(assert (= (and b!5862570 (not c!1040188)) b!5862565))

(assert (= (and b!5862565 res!2466719) b!5862573))

(assert (= (and b!5862565 c!1040184) b!5862571))

(assert (= (and b!5862565 (not c!1040184)) b!5862564))

(assert (= (and b!5862564 c!1040186) b!5862574))

(assert (= (and b!5862564 (not c!1040186)) b!5862572))

(assert (= (and b!5862572 c!1040187) b!5862568))

(assert (= (and b!5862572 (not c!1040187)) b!5862567))

(assert (= (or b!5862574 b!5862568) bm!459878))

(assert (= (or b!5862574 b!5862568) bm!459881))

(assert (= (or b!5862571 bm!459878) bm!459879))

(assert (= (or b!5862571 bm!459881) bm!459877))

(assert (= (or b!5862566 b!5862571) bm!459882))

(assert (= (or b!5862566 bm!459877) bm!459880))

(declare-fun m!6779180 () Bool)

(assert (=> b!5862569 m!6779180))

(declare-fun m!6779182 () Bool)

(assert (=> b!5862573 m!6779182))

(declare-fun m!6779184 () Bool)

(assert (=> bm!459882 m!6779184))

(declare-fun m!6779186 () Bool)

(assert (=> bm!459879 m!6779186))

(declare-fun m!6779188 () Bool)

(assert (=> bm!459880 m!6779188))

(assert (=> bm!459762 d!1841044))

(declare-fun d!1841046 () Bool)

(assert (=> d!1841046 true))

(declare-fun setRes!39766 () Bool)

(assert (=> d!1841046 setRes!39766))

(declare-fun condSetEmpty!39766 () Bool)

(declare-fun res!2466720 () (Set Context!10624))

(assert (=> d!1841046 (= condSetEmpty!39766 (= res!2466720 (as set.empty (Set Context!10624))))))

(assert (=> d!1841046 (= (choose!44437 lt!2305531 lambda!320501) res!2466720)))

(declare-fun setIsEmpty!39766 () Bool)

(assert (=> setIsEmpty!39766 setRes!39766))

(declare-fun e!3594501 () Bool)

(declare-fun tp!1621557 () Bool)

(declare-fun setElem!39766 () Context!10624)

(declare-fun setNonEmpty!39766 () Bool)

(assert (=> setNonEmpty!39766 (= setRes!39766 (and tp!1621557 (inv!83068 setElem!39766) e!3594501))))

(declare-fun setRest!39766 () (Set Context!10624))

(assert (=> setNonEmpty!39766 (= res!2466720 (set.union (set.insert setElem!39766 (as set.empty (Set Context!10624))) setRest!39766))))

(declare-fun b!5862575 () Bool)

(declare-fun tp!1621558 () Bool)

(assert (=> b!5862575 (= e!3594501 tp!1621558)))

(assert (= (and d!1841046 condSetEmpty!39766) setIsEmpty!39766))

(assert (= (and d!1841046 (not condSetEmpty!39766)) setNonEmpty!39766))

(assert (= setNonEmpty!39766 b!5862575))

(declare-fun m!6779190 () Bool)

(assert (=> setNonEmpty!39766 m!6779190))

(assert (=> d!1840836 d!1841046))

(declare-fun b!5862576 () Bool)

(declare-fun e!3594504 () Bool)

(assert (=> b!5862576 (= e!3594504 (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536)))))))))

(declare-fun b!5862577 () Bool)

(declare-fun e!3594503 () (Set Context!10624))

(assert (=> b!5862577 (= e!3594503 (as set.empty (Set Context!10624)))))

(declare-fun d!1841048 () Bool)

(declare-fun c!1040189 () Bool)

(assert (=> d!1841048 (= c!1040189 e!3594504)))

(declare-fun res!2466721 () Bool)

(assert (=> d!1841048 (=> (not res!2466721) (not e!3594504))))

(assert (=> d!1841048 (= res!2466721 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536))))))))

(declare-fun e!3594502 () (Set Context!10624))

(assert (=> d!1841048 (= (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (h!70409 s!2326)) e!3594502)))

(declare-fun b!5862578 () Bool)

(assert (=> b!5862578 (= e!3594502 e!3594503)))

(declare-fun c!1040190 () Bool)

(assert (=> b!5862578 (= c!1040190 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536))))))))

(declare-fun b!5862579 () Bool)

(declare-fun call!459888 () (Set Context!10624))

(assert (=> b!5862579 (= e!3594503 call!459888)))

(declare-fun b!5862580 () Bool)

(assert (=> b!5862580 (= e!3594502 (set.union call!459888 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536)))))) (h!70409 s!2326))))))

(declare-fun bm!459883 () Bool)

(assert (=> bm!459883 (= call!459888 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536))))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536)))))) (h!70409 s!2326)))))

(assert (= (and d!1841048 res!2466721) b!5862576))

(assert (= (and d!1841048 c!1040189) b!5862580))

(assert (= (and d!1841048 (not c!1040189)) b!5862578))

(assert (= (and b!5862578 c!1040190) b!5862579))

(assert (= (and b!5862578 (not c!1040190)) b!5862577))

(assert (= (or b!5862580 b!5862579) bm!459883))

(declare-fun m!6779192 () Bool)

(assert (=> b!5862576 m!6779192))

(declare-fun m!6779194 () Bool)

(assert (=> b!5862580 m!6779194))

(declare-fun m!6779196 () Bool)

(assert (=> bm!459883 m!6779196))

(assert (=> b!5861799 d!1841048))

(declare-fun d!1841050 () Bool)

(declare-fun res!2466722 () Bool)

(declare-fun e!3594505 () Bool)

(assert (=> d!1841050 (=> res!2466722 e!3594505)))

(assert (=> d!1841050 (= res!2466722 (is-Nil!63959 (exprs!5812 setElem!39753)))))

(assert (=> d!1841050 (= (forall!15015 (exprs!5812 setElem!39753) lambda!320517) e!3594505)))

(declare-fun b!5862581 () Bool)

(declare-fun e!3594506 () Bool)

(assert (=> b!5862581 (= e!3594505 e!3594506)))

(declare-fun res!2466723 () Bool)

(assert (=> b!5862581 (=> (not res!2466723) (not e!3594506))))

(assert (=> b!5862581 (= res!2466723 (dynLambda!25013 lambda!320517 (h!70407 (exprs!5812 setElem!39753))))))

(declare-fun b!5862582 () Bool)

(assert (=> b!5862582 (= e!3594506 (forall!15015 (t!377456 (exprs!5812 setElem!39753)) lambda!320517))))

(assert (= (and d!1841050 (not res!2466722)) b!5862581))

(assert (= (and b!5862581 res!2466723) b!5862582))

(declare-fun b_lambda!220681 () Bool)

(assert (=> (not b_lambda!220681) (not b!5862581)))

(declare-fun m!6779198 () Bool)

(assert (=> b!5862581 m!6779198))

(declare-fun m!6779200 () Bool)

(assert (=> b!5862582 m!6779200))

(assert (=> d!1840820 d!1841050))

(declare-fun b!5862583 () Bool)

(declare-fun e!3594509 () Bool)

(assert (=> b!5862583 (= e!3594509 (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529)))))))))

(declare-fun b!5862584 () Bool)

(declare-fun e!3594508 () (Set Context!10624))

(assert (=> b!5862584 (= e!3594508 (as set.empty (Set Context!10624)))))

(declare-fun d!1841052 () Bool)

(declare-fun c!1040191 () Bool)

(assert (=> d!1841052 (= c!1040191 e!3594509)))

(declare-fun res!2466724 () Bool)

(assert (=> d!1841052 (=> (not res!2466724) (not e!3594509))))

(assert (=> d!1841052 (= res!2466724 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529))))))))

(declare-fun e!3594507 () (Set Context!10624))

(assert (=> d!1841052 (= (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (h!70409 s!2326)) e!3594507)))

(declare-fun b!5862585 () Bool)

(assert (=> b!5862585 (= e!3594507 e!3594508)))

(declare-fun c!1040192 () Bool)

(assert (=> b!5862585 (= c!1040192 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529))))))))

(declare-fun b!5862586 () Bool)

(declare-fun call!459889 () (Set Context!10624))

(assert (=> b!5862586 (= e!3594508 call!459889)))

(declare-fun b!5862587 () Bool)

(assert (=> b!5862587 (= e!3594507 (set.union call!459889 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529)))))) (h!70409 s!2326))))))

(declare-fun bm!459884 () Bool)

(assert (=> bm!459884 (= call!459889 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529))))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529)))))) (h!70409 s!2326)))))

(assert (= (and d!1841052 res!2466724) b!5862583))

(assert (= (and d!1841052 c!1040191) b!5862587))

(assert (= (and d!1841052 (not c!1040191)) b!5862585))

(assert (= (and b!5862585 c!1040192) b!5862586))

(assert (= (and b!5862585 (not c!1040192)) b!5862584))

(assert (= (or b!5862587 b!5862586) bm!459884))

(declare-fun m!6779202 () Bool)

(assert (=> b!5862583 m!6779202))

(declare-fun m!6779204 () Bool)

(assert (=> b!5862587 m!6779204))

(declare-fun m!6779206 () Bool)

(assert (=> bm!459884 m!6779206))

(assert (=> b!5861792 d!1841052))

(declare-fun c!1040194 () Bool)

(declare-fun bm!459885 () Bool)

(declare-fun call!459892 () Bool)

(assert (=> bm!459885 (= call!459892 (validRegex!7664 (ite c!1040194 (regTwo!32369 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))) (regTwo!32368 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))))

(declare-fun b!5862589 () Bool)

(declare-fun e!3594515 () Bool)

(assert (=> b!5862589 (= e!3594515 call!459892)))

(declare-fun b!5862590 () Bool)

(declare-fun res!2466729 () Bool)

(declare-fun e!3594510 () Bool)

(assert (=> b!5862590 (=> (not res!2466729) (not e!3594510))))

(declare-fun call!459890 () Bool)

(assert (=> b!5862590 (= res!2466729 call!459890)))

(declare-fun e!3594512 () Bool)

(assert (=> b!5862590 (= e!3594512 e!3594510)))

(declare-fun b!5862591 () Bool)

(declare-fun e!3594511 () Bool)

(declare-fun call!459891 () Bool)

(assert (=> b!5862591 (= e!3594511 call!459891)))

(declare-fun c!1040193 () Bool)

(declare-fun bm!459886 () Bool)

(assert (=> bm!459886 (= call!459891 (validRegex!7664 (ite c!1040193 (reg!16257 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))) (ite c!1040194 (regOne!32369 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))) (regOne!32368 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292)))))))))

(declare-fun bm!459887 () Bool)

(assert (=> bm!459887 (= call!459890 call!459891)))

(declare-fun b!5862592 () Bool)

(declare-fun e!3594516 () Bool)

(assert (=> b!5862592 (= e!3594516 e!3594511)))

(declare-fun res!2466726 () Bool)

(assert (=> b!5862592 (= res!2466726 (not (nullable!5928 (reg!16257 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))))

(assert (=> b!5862592 (=> (not res!2466726) (not e!3594511))))

(declare-fun b!5862593 () Bool)

(assert (=> b!5862593 (= e!3594510 call!459892)))

(declare-fun b!5862594 () Bool)

(assert (=> b!5862594 (= e!3594516 e!3594512)))

(assert (=> b!5862594 (= c!1040194 (is-Union!15928 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))

(declare-fun b!5862588 () Bool)

(declare-fun e!3594513 () Bool)

(assert (=> b!5862588 (= e!3594513 e!3594516)))

(assert (=> b!5862588 (= c!1040193 (is-Star!15928 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))

(declare-fun d!1841054 () Bool)

(declare-fun res!2466725 () Bool)

(assert (=> d!1841054 (=> res!2466725 e!3594513)))

(assert (=> d!1841054 (= res!2466725 (is-ElementMatch!15928 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))))))

(assert (=> d!1841054 (= (validRegex!7664 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292))) e!3594513)))

(declare-fun b!5862595 () Bool)

(declare-fun res!2466727 () Bool)

(declare-fun e!3594514 () Bool)

(assert (=> b!5862595 (=> res!2466727 e!3594514)))

(assert (=> b!5862595 (= res!2466727 (not (is-Concat!24773 (ite c!1039917 (regTwo!32369 r!7292) (regTwo!32368 r!7292)))))))

(assert (=> b!5862595 (= e!3594512 e!3594514)))

(declare-fun b!5862596 () Bool)

(assert (=> b!5862596 (= e!3594514 e!3594515)))

(declare-fun res!2466728 () Bool)

(assert (=> b!5862596 (=> (not res!2466728) (not e!3594515))))

(assert (=> b!5862596 (= res!2466728 call!459890)))

(assert (= (and d!1841054 (not res!2466725)) b!5862588))

(assert (= (and b!5862588 c!1040193) b!5862592))

(assert (= (and b!5862588 (not c!1040193)) b!5862594))

(assert (= (and b!5862592 res!2466726) b!5862591))

(assert (= (and b!5862594 c!1040194) b!5862590))

(assert (= (and b!5862594 (not c!1040194)) b!5862595))

(assert (= (and b!5862590 res!2466729) b!5862593))

(assert (= (and b!5862595 (not res!2466727)) b!5862596))

(assert (= (and b!5862596 res!2466728) b!5862589))

(assert (= (or b!5862593 b!5862589) bm!459885))

(assert (= (or b!5862590 b!5862596) bm!459887))

(assert (= (or b!5862591 bm!459887) bm!459886))

(declare-fun m!6779208 () Bool)

(assert (=> bm!459885 m!6779208))

(declare-fun m!6779210 () Bool)

(assert (=> bm!459886 m!6779210))

(declare-fun m!6779212 () Bool)

(assert (=> b!5862592 m!6779212))

(assert (=> bm!459736 d!1841054))

(assert (=> d!1840826 d!1840832))

(declare-fun d!1841056 () Bool)

(assert (=> d!1841056 (= (flatMap!1459 lt!2305530 lambda!320501) (dynLambda!25011 lambda!320501 lt!2305536))))

(assert (=> d!1841056 true))

(declare-fun _$13!2592 () Unit!157127)

(assert (=> d!1841056 (= (choose!44436 lt!2305530 lt!2305536 lambda!320501) _$13!2592)))

(declare-fun b_lambda!220683 () Bool)

(assert (=> (not b_lambda!220683) (not d!1841056)))

(declare-fun bs!1381240 () Bool)

(assert (= bs!1381240 d!1841056))

(assert (=> bs!1381240 m!6778400))

(assert (=> bs!1381240 m!6778648))

(assert (=> d!1840826 d!1841056))

(declare-fun d!1841058 () Bool)

(declare-fun c!1040196 () Bool)

(assert (=> d!1841058 (= c!1040196 (and (is-ElementMatch!15928 (h!70407 (exprs!5812 (h!70408 zl!343)))) (= (c!1039903 (h!70407 (exprs!5812 (h!70408 zl!343)))) (h!70409 s!2326))))))

(declare-fun e!3594519 () (Set Context!10624))

(assert (=> d!1841058 (= (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (h!70408 zl!343))) (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (h!70409 s!2326)) e!3594519)))

(declare-fun b!5862597 () Bool)

(declare-fun e!3594521 () (Set Context!10624))

(declare-fun e!3594520 () (Set Context!10624))

(assert (=> b!5862597 (= e!3594521 e!3594520)))

(declare-fun c!1040197 () Bool)

(assert (=> b!5862597 (= c!1040197 (is-Concat!24773 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun bm!459888 () Bool)

(declare-fun call!459895 () (Set Context!10624))

(declare-fun call!459897 () (Set Context!10624))

(assert (=> bm!459888 (= call!459895 call!459897)))

(declare-fun b!5862598 () Bool)

(declare-fun c!1040195 () Bool)

(declare-fun e!3594518 () Bool)

(assert (=> b!5862598 (= c!1040195 e!3594518)))

(declare-fun res!2466730 () Bool)

(assert (=> b!5862598 (=> (not res!2466730) (not e!3594518))))

(assert (=> b!5862598 (= res!2466730 (is-Concat!24773 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun e!3594517 () (Set Context!10624))

(assert (=> b!5862598 (= e!3594517 e!3594521)))

(declare-fun bm!459889 () Bool)

(declare-fun call!459896 () List!64083)

(declare-fun call!459898 () List!64083)

(assert (=> bm!459889 (= call!459896 call!459898)))

(declare-fun b!5862599 () Bool)

(declare-fun call!459894 () (Set Context!10624))

(assert (=> b!5862599 (= e!3594517 (set.union call!459897 call!459894))))

(declare-fun bm!459890 () Bool)

(assert (=> bm!459890 (= call!459898 ($colon$colon!1833 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343))))) (ite (or c!1040195 c!1040197) (regTwo!32368 (h!70407 (exprs!5812 (h!70408 zl!343)))) (h!70407 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5862600 () Bool)

(declare-fun e!3594522 () (Set Context!10624))

(assert (=> b!5862600 (= e!3594522 (as set.empty (Set Context!10624)))))

(declare-fun b!5862601 () Bool)

(declare-fun call!459893 () (Set Context!10624))

(assert (=> b!5862601 (= e!3594522 call!459893)))

(declare-fun bm!459891 () Bool)

(declare-fun c!1040199 () Bool)

(assert (=> bm!459891 (= call!459897 (derivationStepZipperDown!1194 (ite c!1040199 (regOne!32369 (h!70407 (exprs!5812 (h!70408 zl!343)))) (ite c!1040195 (regTwo!32368 (h!70407 (exprs!5812 (h!70408 zl!343)))) (ite c!1040197 (regOne!32368 (h!70407 (exprs!5812 (h!70408 zl!343)))) (reg!16257 (h!70407 (exprs!5812 (h!70408 zl!343))))))) (ite (or c!1040199 c!1040195) (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (Context!10625 call!459896)) (h!70409 s!2326)))))

(declare-fun b!5862602 () Bool)

(assert (=> b!5862602 (= e!3594519 (set.insert (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (as set.empty (Set Context!10624))))))

(declare-fun b!5862603 () Bool)

(assert (=> b!5862603 (= e!3594519 e!3594517)))

(assert (=> b!5862603 (= c!1040199 (is-Union!15928 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun bm!459892 () Bool)

(assert (=> bm!459892 (= call!459893 call!459895)))

(declare-fun bm!459893 () Bool)

(assert (=> bm!459893 (= call!459894 (derivationStepZipperDown!1194 (ite c!1040199 (regTwo!32369 (h!70407 (exprs!5812 (h!70408 zl!343)))) (regOne!32368 (h!70407 (exprs!5812 (h!70408 zl!343))))) (ite c!1040199 (Context!10625 (t!377456 (exprs!5812 (h!70408 zl!343)))) (Context!10625 call!459898)) (h!70409 s!2326)))))

(declare-fun b!5862604 () Bool)

(assert (=> b!5862604 (= e!3594521 (set.union call!459894 call!459895))))

(declare-fun b!5862605 () Bool)

(declare-fun c!1040198 () Bool)

(assert (=> b!5862605 (= c!1040198 (is-Star!15928 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(assert (=> b!5862605 (= e!3594520 e!3594522)))

(declare-fun b!5862606 () Bool)

(assert (=> b!5862606 (= e!3594518 (nullable!5928 (regOne!32368 (h!70407 (exprs!5812 (h!70408 zl!343))))))))

(declare-fun b!5862607 () Bool)

(assert (=> b!5862607 (= e!3594520 call!459893)))

(assert (= (and d!1841058 c!1040196) b!5862602))

(assert (= (and d!1841058 (not c!1040196)) b!5862603))

(assert (= (and b!5862603 c!1040199) b!5862599))

(assert (= (and b!5862603 (not c!1040199)) b!5862598))

(assert (= (and b!5862598 res!2466730) b!5862606))

(assert (= (and b!5862598 c!1040195) b!5862604))

(assert (= (and b!5862598 (not c!1040195)) b!5862597))

(assert (= (and b!5862597 c!1040197) b!5862607))

(assert (= (and b!5862597 (not c!1040197)) b!5862605))

(assert (= (and b!5862605 c!1040198) b!5862601))

(assert (= (and b!5862605 (not c!1040198)) b!5862600))

(assert (= (or b!5862607 b!5862601) bm!459889))

(assert (= (or b!5862607 b!5862601) bm!459892))

(assert (= (or b!5862604 bm!459889) bm!459890))

(assert (= (or b!5862604 bm!459892) bm!459888))

(assert (= (or b!5862599 b!5862604) bm!459893))

(assert (= (or b!5862599 bm!459888) bm!459891))

(declare-fun m!6779214 () Bool)

(assert (=> b!5862602 m!6779214))

(declare-fun m!6779216 () Bool)

(assert (=> b!5862606 m!6779216))

(declare-fun m!6779218 () Bool)

(assert (=> bm!459893 m!6779218))

(declare-fun m!6779220 () Bool)

(assert (=> bm!459890 m!6779220))

(declare-fun m!6779222 () Bool)

(assert (=> bm!459891 m!6779222))

(assert (=> bm!459789 d!1841058))

(assert (=> b!5861938 d!1841020))

(assert (=> b!5861938 d!1841010))

(declare-fun d!1841060 () Bool)

(declare-fun c!1040201 () Bool)

(assert (=> d!1841060 (= c!1040201 (and (is-ElementMatch!15928 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (= (c!1039903 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (h!70409 s!2326))))))

(declare-fun e!3594525 () (Set Context!10624))

(assert (=> d!1841060 (= (derivationStepZipperDown!1194 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))) (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765)) (h!70409 s!2326)) e!3594525)))

(declare-fun b!5862608 () Bool)

(declare-fun e!3594527 () (Set Context!10624))

(declare-fun e!3594526 () (Set Context!10624))

(assert (=> b!5862608 (= e!3594527 e!3594526)))

(declare-fun c!1040202 () Bool)

(assert (=> b!5862608 (= c!1040202 (is-Concat!24773 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))))))

(declare-fun bm!459894 () Bool)

(declare-fun call!459901 () (Set Context!10624))

(declare-fun call!459903 () (Set Context!10624))

(assert (=> bm!459894 (= call!459901 call!459903)))

(declare-fun b!5862609 () Bool)

(declare-fun c!1040200 () Bool)

(declare-fun e!3594524 () Bool)

(assert (=> b!5862609 (= c!1040200 e!3594524)))

(declare-fun res!2466731 () Bool)

(assert (=> b!5862609 (=> (not res!2466731) (not e!3594524))))

(assert (=> b!5862609 (= res!2466731 (is-Concat!24773 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))))))

(declare-fun e!3594523 () (Set Context!10624))

(assert (=> b!5862609 (= e!3594523 e!3594527)))

(declare-fun bm!459895 () Bool)

(declare-fun call!459902 () List!64083)

(declare-fun call!459904 () List!64083)

(assert (=> bm!459895 (= call!459902 call!459904)))

(declare-fun b!5862610 () Bool)

(declare-fun call!459900 () (Set Context!10624))

(assert (=> b!5862610 (= e!3594523 (set.union call!459903 call!459900))))

(declare-fun bm!459896 () Bool)

(assert (=> bm!459896 (= call!459904 ($colon$colon!1833 (exprs!5812 (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765))) (ite (or c!1040200 c!1040202) (regTwo!32368 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))))))))

(declare-fun b!5862611 () Bool)

(declare-fun e!3594528 () (Set Context!10624))

(assert (=> b!5862611 (= e!3594528 (as set.empty (Set Context!10624)))))

(declare-fun b!5862612 () Bool)

(declare-fun call!459899 () (Set Context!10624))

(assert (=> b!5862612 (= e!3594528 call!459899)))

(declare-fun c!1040204 () Bool)

(declare-fun bm!459897 () Bool)

(assert (=> bm!459897 (= call!459903 (derivationStepZipperDown!1194 (ite c!1040204 (regOne!32369 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (ite c!1040200 (regTwo!32368 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (ite c!1040202 (regOne!32368 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (reg!16257 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))))))) (ite (or c!1040204 c!1040200) (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765)) (Context!10625 call!459902)) (h!70409 s!2326)))))

(declare-fun b!5862613 () Bool)

(assert (=> b!5862613 (= e!3594525 (set.insert (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862614 () Bool)

(assert (=> b!5862614 (= e!3594525 e!3594523)))

(assert (=> b!5862614 (= c!1040204 (is-Union!15928 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))))))

(declare-fun bm!459898 () Bool)

(assert (=> bm!459898 (= call!459899 call!459901)))

(declare-fun bm!459899 () Bool)

(assert (=> bm!459899 (= call!459900 (derivationStepZipperDown!1194 (ite c!1040204 (regTwo!32369 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))) (regOne!32368 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))))) (ite c!1040204 (ite (or c!1039937 c!1039933) lt!2305515 (Context!10625 call!459765)) (Context!10625 call!459904)) (h!70409 s!2326)))))

(declare-fun b!5862615 () Bool)

(assert (=> b!5862615 (= e!3594527 (set.union call!459900 call!459901))))

(declare-fun b!5862616 () Bool)

(declare-fun c!1040203 () Bool)

(assert (=> b!5862616 (= c!1040203 (is-Star!15928 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292)))))))))

(assert (=> b!5862616 (= e!3594526 e!3594528)))

(declare-fun b!5862617 () Bool)

(assert (=> b!5862617 (= e!3594524 (nullable!5928 (regOne!32368 (ite c!1039937 (regOne!32369 (regOne!32369 r!7292)) (ite c!1039933 (regTwo!32368 (regOne!32369 r!7292)) (ite c!1039935 (regOne!32368 (regOne!32369 r!7292)) (reg!16257 (regOne!32369 r!7292))))))))))

(declare-fun b!5862618 () Bool)

(assert (=> b!5862618 (= e!3594526 call!459899)))

(assert (= (and d!1841060 c!1040201) b!5862613))

(assert (= (and d!1841060 (not c!1040201)) b!5862614))

(assert (= (and b!5862614 c!1040204) b!5862610))

(assert (= (and b!5862614 (not c!1040204)) b!5862609))

(assert (= (and b!5862609 res!2466731) b!5862617))

(assert (= (and b!5862609 c!1040200) b!5862615))

(assert (= (and b!5862609 (not c!1040200)) b!5862608))

(assert (= (and b!5862608 c!1040202) b!5862618))

(assert (= (and b!5862608 (not c!1040202)) b!5862616))

(assert (= (and b!5862616 c!1040203) b!5862612))

(assert (= (and b!5862616 (not c!1040203)) b!5862611))

(assert (= (or b!5862618 b!5862612) bm!459895))

(assert (= (or b!5862618 b!5862612) bm!459898))

(assert (= (or b!5862615 bm!459895) bm!459896))

(assert (= (or b!5862615 bm!459898) bm!459894))

(assert (= (or b!5862610 b!5862615) bm!459899))

(assert (= (or b!5862610 bm!459894) bm!459897))

(declare-fun m!6779224 () Bool)

(assert (=> b!5862613 m!6779224))

(declare-fun m!6779226 () Bool)

(assert (=> b!5862617 m!6779226))

(declare-fun m!6779228 () Bool)

(assert (=> bm!459899 m!6779228))

(declare-fun m!6779230 () Bool)

(assert (=> bm!459896 m!6779230))

(declare-fun m!6779232 () Bool)

(assert (=> bm!459897 m!6779232))

(assert (=> bm!459760 d!1841060))

(assert (=> bm!459775 d!1840992))

(declare-fun d!1841062 () Bool)

(declare-fun lambda!320577 () Int)

(declare-fun exists!2312 ((Set Context!10624) Int) Bool)

(assert (=> d!1841062 (= (nullableZipper!1767 lt!2305531) (exists!2312 lt!2305531 lambda!320577))))

(declare-fun bs!1381241 () Bool)

(assert (= bs!1381241 d!1841062))

(declare-fun m!6779234 () Bool)

(assert (=> bs!1381241 m!6779234))

(assert (=> b!5861800 d!1841062))

(declare-fun d!1841064 () Bool)

(assert (=> d!1841064 (= (nullable!5928 (h!70407 (exprs!5812 lt!2305536))) (nullableFct!1915 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun bs!1381242 () Bool)

(assert (= bs!1381242 d!1841064))

(declare-fun m!6779236 () Bool)

(assert (=> bs!1381242 m!6779236))

(assert (=> b!5861795 d!1841064))

(declare-fun d!1841066 () Bool)

(assert (=> d!1841066 (= (nullable!5928 (h!70407 (exprs!5812 lt!2305529))) (nullableFct!1915 (h!70407 (exprs!5812 lt!2305529))))))

(declare-fun bs!1381243 () Bool)

(assert (= bs!1381243 d!1841066))

(declare-fun m!6779238 () Bool)

(assert (=> bs!1381243 m!6779238))

(assert (=> b!5861788 d!1841066))

(assert (=> bm!459778 d!1840992))

(declare-fun d!1841068 () Bool)

(assert (=> d!1841068 (= (isEmpty!35821 (tail!11495 (exprs!5812 (h!70408 zl!343)))) (is-Nil!63959 (tail!11495 (exprs!5812 (h!70408 zl!343)))))))

(assert (=> b!5861770 d!1841068))

(declare-fun d!1841070 () Bool)

(assert (=> d!1841070 (= (tail!11495 (exprs!5812 (h!70408 zl!343))) (t!377456 (exprs!5812 (h!70408 zl!343))))))

(assert (=> b!5861770 d!1841070))

(declare-fun d!1841072 () Bool)

(assert (=> d!1841072 (= ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1039928 c!1039930) (regTwo!32368 (regTwo!32369 r!7292)) (regTwo!32369 r!7292))) (Cons!63959 (ite (or c!1039928 c!1039930) (regTwo!32368 (regTwo!32369 r!7292)) (regTwo!32369 r!7292)) (exprs!5812 lt!2305515)))))

(assert (=> bm!459753 d!1841072))

(declare-fun c!1040208 () Bool)

(declare-fun d!1841074 () Bool)

(assert (=> d!1841074 (= c!1040208 (and (is-ElementMatch!15928 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (= (c!1039903 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (h!70409 s!2326))))))

(declare-fun e!3594531 () (Set Context!10624))

(assert (=> d!1841074 (= (derivationStepZipperDown!1194 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)) (ite c!1040020 lt!2305515 (Context!10625 call!459792)) (h!70409 s!2326)) e!3594531)))

(declare-fun b!5862619 () Bool)

(declare-fun e!3594533 () (Set Context!10624))

(declare-fun e!3594532 () (Set Context!10624))

(assert (=> b!5862619 (= e!3594533 e!3594532)))

(declare-fun c!1040209 () Bool)

(assert (=> b!5862619 (= c!1040209 (is-Concat!24773 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))))))

(declare-fun bm!459900 () Bool)

(declare-fun call!459907 () (Set Context!10624))

(declare-fun call!459909 () (Set Context!10624))

(assert (=> bm!459900 (= call!459907 call!459909)))

(declare-fun b!5862620 () Bool)

(declare-fun c!1040207 () Bool)

(declare-fun e!3594530 () Bool)

(assert (=> b!5862620 (= c!1040207 e!3594530)))

(declare-fun res!2466732 () Bool)

(assert (=> b!5862620 (=> (not res!2466732) (not e!3594530))))

(assert (=> b!5862620 (= res!2466732 (is-Concat!24773 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))))))

(declare-fun e!3594529 () (Set Context!10624))

(assert (=> b!5862620 (= e!3594529 e!3594533)))

(declare-fun bm!459901 () Bool)

(declare-fun call!459908 () List!64083)

(declare-fun call!459910 () List!64083)

(assert (=> bm!459901 (= call!459908 call!459910)))

(declare-fun b!5862621 () Bool)

(declare-fun call!459906 () (Set Context!10624))

(assert (=> b!5862621 (= e!3594529 (set.union call!459909 call!459906))))

(declare-fun bm!459902 () Bool)

(assert (=> bm!459902 (= call!459910 ($colon$colon!1833 (exprs!5812 (ite c!1040020 lt!2305515 (Context!10625 call!459792))) (ite (or c!1040207 c!1040209) (regTwo!32368 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)))))))

(declare-fun b!5862622 () Bool)

(declare-fun e!3594534 () (Set Context!10624))

(assert (=> b!5862622 (= e!3594534 (as set.empty (Set Context!10624)))))

(declare-fun b!5862623 () Bool)

(declare-fun call!459905 () (Set Context!10624))

(assert (=> b!5862623 (= e!3594534 call!459905)))

(declare-fun bm!459903 () Bool)

(declare-fun c!1040211 () Bool)

(assert (=> bm!459903 (= call!459909 (derivationStepZipperDown!1194 (ite c!1040211 (regOne!32369 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (ite c!1040207 (regTwo!32368 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (ite c!1040209 (regOne!32368 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (reg!16257 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)))))) (ite (or c!1040211 c!1040207) (ite c!1040020 lt!2305515 (Context!10625 call!459792)) (Context!10625 call!459908)) (h!70409 s!2326)))))

(declare-fun b!5862624 () Bool)

(assert (=> b!5862624 (= e!3594531 (set.insert (ite c!1040020 lt!2305515 (Context!10625 call!459792)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862625 () Bool)

(assert (=> b!5862625 (= e!3594531 e!3594529)))

(assert (=> b!5862625 (= c!1040211 (is-Union!15928 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))))))

(declare-fun bm!459904 () Bool)

(assert (=> bm!459904 (= call!459905 call!459907)))

(declare-fun bm!459905 () Bool)

(assert (=> bm!459905 (= call!459906 (derivationStepZipperDown!1194 (ite c!1040211 (regTwo!32369 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))) (regOne!32368 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)))) (ite c!1040211 (ite c!1040020 lt!2305515 (Context!10625 call!459792)) (Context!10625 call!459910)) (h!70409 s!2326)))))

(declare-fun b!5862626 () Bool)

(assert (=> b!5862626 (= e!3594533 (set.union call!459906 call!459907))))

(declare-fun b!5862627 () Bool)

(declare-fun c!1040210 () Bool)

(assert (=> b!5862627 (= c!1040210 (is-Star!15928 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292))))))

(assert (=> b!5862627 (= e!3594532 e!3594534)))

(declare-fun b!5862628 () Bool)

(assert (=> b!5862628 (= e!3594530 (nullable!5928 (regOne!32368 (ite c!1040020 (regTwo!32369 r!7292) (regOne!32368 r!7292)))))))

(declare-fun b!5862629 () Bool)

(assert (=> b!5862629 (= e!3594532 call!459905)))

(assert (= (and d!1841074 c!1040208) b!5862624))

(assert (= (and d!1841074 (not c!1040208)) b!5862625))

(assert (= (and b!5862625 c!1040211) b!5862621))

(assert (= (and b!5862625 (not c!1040211)) b!5862620))

(assert (= (and b!5862620 res!2466732) b!5862628))

(assert (= (and b!5862620 c!1040207) b!5862626))

(assert (= (and b!5862620 (not c!1040207)) b!5862619))

(assert (= (and b!5862619 c!1040209) b!5862629))

(assert (= (and b!5862619 (not c!1040209)) b!5862627))

(assert (= (and b!5862627 c!1040210) b!5862623))

(assert (= (and b!5862627 (not c!1040210)) b!5862622))

(assert (= (or b!5862629 b!5862623) bm!459901))

(assert (= (or b!5862629 b!5862623) bm!459904))

(assert (= (or b!5862626 bm!459901) bm!459902))

(assert (= (or b!5862626 bm!459904) bm!459900))

(assert (= (or b!5862621 b!5862626) bm!459905))

(assert (= (or b!5862621 bm!459900) bm!459903))

(declare-fun m!6779240 () Bool)

(assert (=> b!5862624 m!6779240))

(declare-fun m!6779242 () Bool)

(assert (=> b!5862628 m!6779242))

(declare-fun m!6779244 () Bool)

(assert (=> bm!459905 m!6779244))

(declare-fun m!6779246 () Bool)

(assert (=> bm!459902 m!6779246))

(declare-fun m!6779248 () Bool)

(assert (=> bm!459903 m!6779248))

(assert (=> bm!459787 d!1841074))

(declare-fun bs!1381244 () Bool)

(declare-fun d!1841076 () Bool)

(assert (= bs!1381244 (and d!1841076 d!1841022)))

(declare-fun lambda!320578 () Int)

(assert (=> bs!1381244 (= lambda!320578 lambda!320571)))

(declare-fun bs!1381245 () Bool)

(assert (= bs!1381245 (and d!1841076 d!1840818)))

(assert (=> bs!1381245 (= lambda!320578 lambda!320514)))

(declare-fun bs!1381246 () Bool)

(assert (= bs!1381246 (and d!1841076 d!1840888)))

(assert (=> bs!1381246 (= lambda!320578 lambda!320535)))

(declare-fun bs!1381247 () Bool)

(assert (= bs!1381247 (and d!1841076 d!1840872)))

(assert (=> bs!1381247 (= lambda!320578 lambda!320531)))

(declare-fun bs!1381248 () Bool)

(assert (= bs!1381248 (and d!1841076 d!1840824)))

(assert (=> bs!1381248 (= lambda!320578 lambda!320520)))

(declare-fun bs!1381249 () Bool)

(assert (= bs!1381249 (and d!1841076 d!1840820)))

(assert (=> bs!1381249 (= lambda!320578 lambda!320517)))

(declare-fun bs!1381250 () Bool)

(assert (= bs!1381250 (and d!1841076 d!1841034)))

(assert (=> bs!1381250 (= lambda!320578 lambda!320572)))

(declare-fun bs!1381251 () Bool)

(assert (= bs!1381251 (and d!1841076 d!1840816)))

(assert (=> bs!1381251 (= lambda!320578 lambda!320511)))

(declare-fun bs!1381252 () Bool)

(assert (= bs!1381252 (and d!1841076 d!1840998)))

(assert (=> bs!1381252 (= lambda!320578 lambda!320567)))

(assert (=> d!1841076 (= (inv!83068 (h!70408 (t!377457 zl!343))) (forall!15015 (exprs!5812 (h!70408 (t!377457 zl!343))) lambda!320578))))

(declare-fun bs!1381253 () Bool)

(assert (= bs!1381253 d!1841076))

(declare-fun m!6779250 () Bool)

(assert (=> bs!1381253 m!6779250))

(assert (=> b!5862026 d!1841076))

(declare-fun bs!1381254 () Bool)

(declare-fun d!1841078 () Bool)

(assert (= bs!1381254 (and d!1841078 d!1841062)))

(declare-fun lambda!320579 () Int)

(assert (=> bs!1381254 (= lambda!320579 lambda!320577)))

(assert (=> d!1841078 (= (nullableZipper!1767 lt!2305528) (exists!2312 lt!2305528 lambda!320579))))

(declare-fun bs!1381255 () Bool)

(assert (= bs!1381255 d!1841078))

(declare-fun m!6779252 () Bool)

(assert (=> bs!1381255 m!6779252))

(assert (=> b!5861746 d!1841078))

(assert (=> d!1840858 d!1840992))

(assert (=> d!1840858 d!1840810))

(assert (=> d!1840830 d!1840836))

(declare-fun d!1841080 () Bool)

(assert (=> d!1841080 (= (flatMap!1459 lt!2305531 lambda!320501) (dynLambda!25011 lambda!320501 lt!2305529))))

(assert (=> d!1841080 true))

(declare-fun _$13!2593 () Unit!157127)

(assert (=> d!1841080 (= (choose!44436 lt!2305531 lt!2305529 lambda!320501) _$13!2593)))

(declare-fun b_lambda!220685 () Bool)

(assert (=> (not b_lambda!220685) (not d!1841080)))

(declare-fun bs!1381256 () Bool)

(assert (= bs!1381256 d!1841080))

(assert (=> bs!1381256 m!6778410))

(assert (=> bs!1381256 m!6778658))

(assert (=> d!1840830 d!1841080))

(assert (=> b!5861927 d!1841008))

(assert (=> bm!459780 d!1840992))

(assert (=> bs!1381086 d!1840838))

(declare-fun b!5862630 () Bool)

(declare-fun e!3594536 () Bool)

(assert (=> b!5862630 (= e!3594536 (not (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 r!7292 (head!12411 s!2326))))))))

(declare-fun b!5862631 () Bool)

(declare-fun res!2466739 () Bool)

(declare-fun e!3594535 () Bool)

(assert (=> b!5862631 (=> res!2466739 e!3594535)))

(assert (=> b!5862631 (= res!2466739 (not (is-ElementMatch!15928 (derivativeStep!4666 r!7292 (head!12411 s!2326)))))))

(declare-fun e!3594537 () Bool)

(assert (=> b!5862631 (= e!3594537 e!3594535)))

(declare-fun b!5862632 () Bool)

(declare-fun res!2466740 () Bool)

(assert (=> b!5862632 (=> res!2466740 e!3594536)))

(assert (=> b!5862632 (= res!2466740 (not (isEmpty!35822 (tail!11496 (tail!11496 s!2326)))))))

(declare-fun b!5862633 () Bool)

(declare-fun lt!2305694 () Bool)

(assert (=> b!5862633 (= e!3594537 (not lt!2305694))))

(declare-fun b!5862634 () Bool)

(declare-fun e!3594538 () Bool)

(assert (=> b!5862634 (= e!3594538 (matchR!8111 (derivativeStep!4666 (derivativeStep!4666 r!7292 (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862635 () Bool)

(declare-fun e!3594540 () Bool)

(declare-fun call!459911 () Bool)

(assert (=> b!5862635 (= e!3594540 (= lt!2305694 call!459911))))

(declare-fun b!5862636 () Bool)

(declare-fun e!3594541 () Bool)

(assert (=> b!5862636 (= e!3594541 e!3594536)))

(declare-fun res!2466738 () Bool)

(assert (=> b!5862636 (=> res!2466738 e!3594536)))

(assert (=> b!5862636 (= res!2466738 call!459911)))

(declare-fun d!1841082 () Bool)

(assert (=> d!1841082 e!3594540))

(declare-fun c!1040214 () Bool)

(assert (=> d!1841082 (= c!1040214 (is-EmptyExpr!15928 (derivativeStep!4666 r!7292 (head!12411 s!2326))))))

(assert (=> d!1841082 (= lt!2305694 e!3594538)))

(declare-fun c!1040212 () Bool)

(assert (=> d!1841082 (= c!1040212 (isEmpty!35822 (tail!11496 s!2326)))))

(assert (=> d!1841082 (validRegex!7664 (derivativeStep!4666 r!7292 (head!12411 s!2326)))))

(assert (=> d!1841082 (= (matchR!8111 (derivativeStep!4666 r!7292 (head!12411 s!2326)) (tail!11496 s!2326)) lt!2305694)))

(declare-fun bm!459906 () Bool)

(assert (=> bm!459906 (= call!459911 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5862637 () Bool)

(assert (=> b!5862637 (= e!3594540 e!3594537)))

(declare-fun c!1040213 () Bool)

(assert (=> b!5862637 (= c!1040213 (is-EmptyLang!15928 (derivativeStep!4666 r!7292 (head!12411 s!2326))))))

(declare-fun b!5862638 () Bool)

(declare-fun e!3594539 () Bool)

(assert (=> b!5862638 (= e!3594539 (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 r!7292 (head!12411 s!2326)))))))

(declare-fun b!5862639 () Bool)

(assert (=> b!5862639 (= e!3594535 e!3594541)))

(declare-fun res!2466737 () Bool)

(assert (=> b!5862639 (=> (not res!2466737) (not e!3594541))))

(assert (=> b!5862639 (= res!2466737 (not lt!2305694))))

(declare-fun b!5862640 () Bool)

(declare-fun res!2466733 () Bool)

(assert (=> b!5862640 (=> res!2466733 e!3594535)))

(assert (=> b!5862640 (= res!2466733 e!3594539)))

(declare-fun res!2466736 () Bool)

(assert (=> b!5862640 (=> (not res!2466736) (not e!3594539))))

(assert (=> b!5862640 (= res!2466736 lt!2305694)))

(declare-fun b!5862641 () Bool)

(declare-fun res!2466735 () Bool)

(assert (=> b!5862641 (=> (not res!2466735) (not e!3594539))))

(assert (=> b!5862641 (= res!2466735 (isEmpty!35822 (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862642 () Bool)

(assert (=> b!5862642 (= e!3594538 (nullable!5928 (derivativeStep!4666 r!7292 (head!12411 s!2326))))))

(declare-fun b!5862643 () Bool)

(declare-fun res!2466734 () Bool)

(assert (=> b!5862643 (=> (not res!2466734) (not e!3594539))))

(assert (=> b!5862643 (= res!2466734 (not call!459911))))

(assert (= (and d!1841082 c!1040212) b!5862642))

(assert (= (and d!1841082 (not c!1040212)) b!5862634))

(assert (= (and d!1841082 c!1040214) b!5862635))

(assert (= (and d!1841082 (not c!1040214)) b!5862637))

(assert (= (and b!5862637 c!1040213) b!5862633))

(assert (= (and b!5862637 (not c!1040213)) b!5862631))

(assert (= (and b!5862631 (not res!2466739)) b!5862640))

(assert (= (and b!5862640 res!2466736) b!5862643))

(assert (= (and b!5862643 res!2466734) b!5862641))

(assert (= (and b!5862641 res!2466735) b!5862638))

(assert (= (and b!5862640 (not res!2466733)) b!5862639))

(assert (= (and b!5862639 res!2466737) b!5862636))

(assert (= (and b!5862636 (not res!2466738)) b!5862632))

(assert (= (and b!5862632 (not res!2466740)) b!5862630))

(assert (= (or b!5862635 b!5862636 b!5862643) bm!459906))

(assert (=> b!5862641 m!6778672))

(assert (=> b!5862641 m!6779106))

(assert (=> b!5862641 m!6779106))

(declare-fun m!6779254 () Bool)

(assert (=> b!5862641 m!6779254))

(assert (=> bm!459906 m!6778672))

(assert (=> bm!459906 m!6778700))

(assert (=> b!5862634 m!6778672))

(assert (=> b!5862634 m!6779102))

(assert (=> b!5862634 m!6778726))

(assert (=> b!5862634 m!6779102))

(declare-fun m!6779256 () Bool)

(assert (=> b!5862634 m!6779256))

(assert (=> b!5862634 m!6778672))

(assert (=> b!5862634 m!6779106))

(assert (=> b!5862634 m!6779256))

(assert (=> b!5862634 m!6779106))

(declare-fun m!6779258 () Bool)

(assert (=> b!5862634 m!6779258))

(assert (=> d!1841082 m!6778672))

(assert (=> d!1841082 m!6778700))

(assert (=> d!1841082 m!6778726))

(declare-fun m!6779260 () Bool)

(assert (=> d!1841082 m!6779260))

(assert (=> b!5862642 m!6778726))

(declare-fun m!6779262 () Bool)

(assert (=> b!5862642 m!6779262))

(assert (=> b!5862630 m!6778672))

(assert (=> b!5862630 m!6779102))

(assert (=> b!5862638 m!6778672))

(assert (=> b!5862638 m!6779102))

(assert (=> b!5862632 m!6778672))

(assert (=> b!5862632 m!6779106))

(assert (=> b!5862632 m!6779106))

(assert (=> b!5862632 m!6779254))

(assert (=> b!5861931 d!1841082))

(declare-fun b!5862664 () Bool)

(declare-fun e!3594554 () Regex!15928)

(declare-fun call!459921 () Regex!15928)

(declare-fun call!459922 () Regex!15928)

(assert (=> b!5862664 (= e!3594554 (Union!15928 call!459921 call!459922))))

(declare-fun bm!459915 () Bool)

(declare-fun call!459920 () Regex!15928)

(assert (=> bm!459915 (= call!459920 call!459921)))

(declare-fun b!5862665 () Bool)

(declare-fun e!3594553 () Regex!15928)

(declare-fun call!459923 () Regex!15928)

(assert (=> b!5862665 (= e!3594553 (Union!15928 (Concat!24773 call!459922 (regTwo!32368 r!7292)) call!459923))))

(declare-fun b!5862666 () Bool)

(declare-fun c!1040228 () Bool)

(assert (=> b!5862666 (= c!1040228 (is-Union!15928 r!7292))))

(declare-fun e!3594552 () Regex!15928)

(assert (=> b!5862666 (= e!3594552 e!3594554)))

(declare-fun d!1841084 () Bool)

(declare-fun lt!2305697 () Regex!15928)

(assert (=> d!1841084 (validRegex!7664 lt!2305697)))

(declare-fun e!3594556 () Regex!15928)

(assert (=> d!1841084 (= lt!2305697 e!3594556)))

(declare-fun c!1040227 () Bool)

(assert (=> d!1841084 (= c!1040227 (or (is-EmptyExpr!15928 r!7292) (is-EmptyLang!15928 r!7292)))))

(assert (=> d!1841084 (validRegex!7664 r!7292)))

(assert (=> d!1841084 (= (derivativeStep!4666 r!7292 (head!12411 s!2326)) lt!2305697)))

(declare-fun b!5862667 () Bool)

(assert (=> b!5862667 (= e!3594556 e!3594552)))

(declare-fun c!1040229 () Bool)

(assert (=> b!5862667 (= c!1040229 (is-ElementMatch!15928 r!7292))))

(declare-fun bm!459916 () Bool)

(assert (=> bm!459916 (= call!459923 call!459920)))

(declare-fun b!5862668 () Bool)

(assert (=> b!5862668 (= e!3594556 EmptyLang!15928)))

(declare-fun bm!459917 () Bool)

(declare-fun c!1040225 () Bool)

(declare-fun c!1040226 () Bool)

(assert (=> bm!459917 (= call!459921 (derivativeStep!4666 (ite c!1040228 (regOne!32369 r!7292) (ite c!1040225 (reg!16257 r!7292) (ite c!1040226 (regTwo!32368 r!7292) (regOne!32368 r!7292)))) (head!12411 s!2326)))))

(declare-fun b!5862669 () Bool)

(assert (=> b!5862669 (= e!3594552 (ite (= (head!12411 s!2326) (c!1039903 r!7292)) EmptyExpr!15928 EmptyLang!15928))))

(declare-fun b!5862670 () Bool)

(assert (=> b!5862670 (= c!1040226 (nullable!5928 (regOne!32368 r!7292)))))

(declare-fun e!3594555 () Regex!15928)

(assert (=> b!5862670 (= e!3594555 e!3594553)))

(declare-fun b!5862671 () Bool)

(assert (=> b!5862671 (= e!3594554 e!3594555)))

(assert (=> b!5862671 (= c!1040225 (is-Star!15928 r!7292))))

(declare-fun b!5862672 () Bool)

(assert (=> b!5862672 (= e!3594555 (Concat!24773 call!459920 r!7292))))

(declare-fun b!5862673 () Bool)

(assert (=> b!5862673 (= e!3594553 (Union!15928 (Concat!24773 call!459923 (regTwo!32368 r!7292)) EmptyLang!15928))))

(declare-fun bm!459918 () Bool)

(assert (=> bm!459918 (= call!459922 (derivativeStep!4666 (ite c!1040228 (regTwo!32369 r!7292) (regOne!32368 r!7292)) (head!12411 s!2326)))))

(assert (= (and d!1841084 c!1040227) b!5862668))

(assert (= (and d!1841084 (not c!1040227)) b!5862667))

(assert (= (and b!5862667 c!1040229) b!5862669))

(assert (= (and b!5862667 (not c!1040229)) b!5862666))

(assert (= (and b!5862666 c!1040228) b!5862664))

(assert (= (and b!5862666 (not c!1040228)) b!5862671))

(assert (= (and b!5862671 c!1040225) b!5862672))

(assert (= (and b!5862671 (not c!1040225)) b!5862670))

(assert (= (and b!5862670 c!1040226) b!5862665))

(assert (= (and b!5862670 (not c!1040226)) b!5862673))

(assert (= (or b!5862665 b!5862673) bm!459916))

(assert (= (or b!5862672 bm!459916) bm!459915))

(assert (= (or b!5862664 b!5862665) bm!459918))

(assert (= (or b!5862664 bm!459915) bm!459917))

(declare-fun m!6779264 () Bool)

(assert (=> d!1841084 m!6779264))

(assert (=> d!1841084 m!6778464))

(assert (=> bm!459917 m!6778668))

(declare-fun m!6779266 () Bool)

(assert (=> bm!459917 m!6779266))

(assert (=> b!5862670 m!6778764))

(assert (=> bm!459918 m!6778668))

(declare-fun m!6779268 () Bool)

(assert (=> bm!459918 m!6779268))

(assert (=> b!5861931 d!1841084))

(assert (=> b!5861931 d!1841008))

(assert (=> b!5861931 d!1841010))

(declare-fun c!1040231 () Bool)

(declare-fun call!459926 () Bool)

(declare-fun bm!459919 () Bool)

(assert (=> bm!459919 (= call!459926 (validRegex!7664 (ite c!1040231 (regTwo!32369 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))) (regTwo!32368 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))))

(declare-fun b!5862675 () Bool)

(declare-fun e!3594562 () Bool)

(assert (=> b!5862675 (= e!3594562 call!459926)))

(declare-fun b!5862676 () Bool)

(declare-fun res!2466745 () Bool)

(declare-fun e!3594557 () Bool)

(assert (=> b!5862676 (=> (not res!2466745) (not e!3594557))))

(declare-fun call!459924 () Bool)

(assert (=> b!5862676 (= res!2466745 call!459924)))

(declare-fun e!3594559 () Bool)

(assert (=> b!5862676 (= e!3594559 e!3594557)))

(declare-fun b!5862677 () Bool)

(declare-fun e!3594558 () Bool)

(declare-fun call!459925 () Bool)

(assert (=> b!5862677 (= e!3594558 call!459925)))

(declare-fun bm!459920 () Bool)

(declare-fun c!1040230 () Bool)

(assert (=> bm!459920 (= call!459925 (validRegex!7664 (ite c!1040230 (reg!16257 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))) (ite c!1040231 (regOne!32369 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))) (regOne!32368 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292))))))))))

(declare-fun bm!459921 () Bool)

(assert (=> bm!459921 (= call!459924 call!459925)))

(declare-fun b!5862678 () Bool)

(declare-fun e!3594563 () Bool)

(assert (=> b!5862678 (= e!3594563 e!3594558)))

(declare-fun res!2466742 () Bool)

(assert (=> b!5862678 (= res!2466742 (not (nullable!5928 (reg!16257 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))))

(assert (=> b!5862678 (=> (not res!2466742) (not e!3594558))))

(declare-fun b!5862679 () Bool)

(assert (=> b!5862679 (= e!3594557 call!459926)))

(declare-fun b!5862680 () Bool)

(assert (=> b!5862680 (= e!3594563 e!3594559)))

(assert (=> b!5862680 (= c!1040231 (is-Union!15928 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))

(declare-fun b!5862674 () Bool)

(declare-fun e!3594560 () Bool)

(assert (=> b!5862674 (= e!3594560 e!3594563)))

(assert (=> b!5862674 (= c!1040230 (is-Star!15928 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))

(declare-fun d!1841086 () Bool)

(declare-fun res!2466741 () Bool)

(assert (=> d!1841086 (=> res!2466741 e!3594560)))

(assert (=> d!1841086 (= res!2466741 (is-ElementMatch!15928 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))))))

(assert (=> d!1841086 (= (validRegex!7664 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292)))) e!3594560)))

(declare-fun b!5862681 () Bool)

(declare-fun res!2466743 () Bool)

(declare-fun e!3594561 () Bool)

(assert (=> b!5862681 (=> res!2466743 e!3594561)))

(assert (=> b!5862681 (= res!2466743 (not (is-Concat!24773 (ite c!1039916 (reg!16257 r!7292) (ite c!1039917 (regOne!32369 r!7292) (regOne!32368 r!7292))))))))

(assert (=> b!5862681 (= e!3594559 e!3594561)))

(declare-fun b!5862682 () Bool)

(assert (=> b!5862682 (= e!3594561 e!3594562)))

(declare-fun res!2466744 () Bool)

(assert (=> b!5862682 (=> (not res!2466744) (not e!3594562))))

(assert (=> b!5862682 (= res!2466744 call!459924)))

(assert (= (and d!1841086 (not res!2466741)) b!5862674))

(assert (= (and b!5862674 c!1040230) b!5862678))

(assert (= (and b!5862674 (not c!1040230)) b!5862680))

(assert (= (and b!5862678 res!2466742) b!5862677))

(assert (= (and b!5862680 c!1040231) b!5862676))

(assert (= (and b!5862680 (not c!1040231)) b!5862681))

(assert (= (and b!5862676 res!2466745) b!5862679))

(assert (= (and b!5862681 (not res!2466743)) b!5862682))

(assert (= (and b!5862682 res!2466744) b!5862675))

(assert (= (or b!5862679 b!5862675) bm!459919))

(assert (= (or b!5862676 b!5862682) bm!459921))

(assert (= (or b!5862677 bm!459921) bm!459920))

(declare-fun m!6779270 () Bool)

(assert (=> bm!459919 m!6779270))

(declare-fun m!6779272 () Bool)

(assert (=> bm!459920 m!6779272))

(declare-fun m!6779274 () Bool)

(assert (=> b!5862678 m!6779274))

(assert (=> bm!459737 d!1841086))

(declare-fun d!1841088 () Bool)

(assert (=> d!1841088 (= (head!12410 (unfocusZipperList!1349 zl!343)) (h!70407 (unfocusZipperList!1349 zl!343)))))

(assert (=> b!5861730 d!1841088))

(assert (=> b!5861888 d!1841020))

(assert (=> b!5861888 d!1841010))

(declare-fun d!1841090 () Bool)

(declare-fun c!1040233 () Bool)

(assert (=> d!1841090 (= c!1040233 (and (is-ElementMatch!15928 (h!70407 (exprs!5812 lt!2305536))) (= (c!1039903 (h!70407 (exprs!5812 lt!2305536))) (h!70409 s!2326))))))

(declare-fun e!3594566 () (Set Context!10624))

(assert (=> d!1841090 (= (derivationStepZipperDown!1194 (h!70407 (exprs!5812 lt!2305536)) (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (h!70409 s!2326)) e!3594566)))

(declare-fun b!5862683 () Bool)

(declare-fun e!3594568 () (Set Context!10624))

(declare-fun e!3594567 () (Set Context!10624))

(assert (=> b!5862683 (= e!3594568 e!3594567)))

(declare-fun c!1040234 () Bool)

(assert (=> b!5862683 (= c!1040234 (is-Concat!24773 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun bm!459922 () Bool)

(declare-fun call!459929 () (Set Context!10624))

(declare-fun call!459931 () (Set Context!10624))

(assert (=> bm!459922 (= call!459929 call!459931)))

(declare-fun b!5862684 () Bool)

(declare-fun c!1040232 () Bool)

(declare-fun e!3594565 () Bool)

(assert (=> b!5862684 (= c!1040232 e!3594565)))

(declare-fun res!2466746 () Bool)

(assert (=> b!5862684 (=> (not res!2466746) (not e!3594565))))

(assert (=> b!5862684 (= res!2466746 (is-Concat!24773 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun e!3594564 () (Set Context!10624))

(assert (=> b!5862684 (= e!3594564 e!3594568)))

(declare-fun bm!459923 () Bool)

(declare-fun call!459930 () List!64083)

(declare-fun call!459932 () List!64083)

(assert (=> bm!459923 (= call!459930 call!459932)))

(declare-fun b!5862685 () Bool)

(declare-fun call!459928 () (Set Context!10624))

(assert (=> b!5862685 (= e!3594564 (set.union call!459931 call!459928))))

(declare-fun bm!459924 () Bool)

(assert (=> bm!459924 (= call!459932 ($colon$colon!1833 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305536)))) (ite (or c!1040232 c!1040234) (regTwo!32368 (h!70407 (exprs!5812 lt!2305536))) (h!70407 (exprs!5812 lt!2305536)))))))

(declare-fun b!5862686 () Bool)

(declare-fun e!3594569 () (Set Context!10624))

(assert (=> b!5862686 (= e!3594569 (as set.empty (Set Context!10624)))))

(declare-fun b!5862687 () Bool)

(declare-fun call!459927 () (Set Context!10624))

(assert (=> b!5862687 (= e!3594569 call!459927)))

(declare-fun bm!459925 () Bool)

(declare-fun c!1040236 () Bool)

(assert (=> bm!459925 (= call!459931 (derivationStepZipperDown!1194 (ite c!1040236 (regOne!32369 (h!70407 (exprs!5812 lt!2305536))) (ite c!1040232 (regTwo!32368 (h!70407 (exprs!5812 lt!2305536))) (ite c!1040234 (regOne!32368 (h!70407 (exprs!5812 lt!2305536))) (reg!16257 (h!70407 (exprs!5812 lt!2305536)))))) (ite (or c!1040236 c!1040232) (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (Context!10625 call!459930)) (h!70409 s!2326)))))

(declare-fun b!5862688 () Bool)

(assert (=> b!5862688 (= e!3594566 (set.insert (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (as set.empty (Set Context!10624))))))

(declare-fun b!5862689 () Bool)

(assert (=> b!5862689 (= e!3594566 e!3594564)))

(assert (=> b!5862689 (= c!1040236 (is-Union!15928 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun bm!459926 () Bool)

(assert (=> bm!459926 (= call!459927 call!459929)))

(declare-fun bm!459927 () Bool)

(assert (=> bm!459927 (= call!459928 (derivationStepZipperDown!1194 (ite c!1040236 (regTwo!32369 (h!70407 (exprs!5812 lt!2305536))) (regOne!32368 (h!70407 (exprs!5812 lt!2305536)))) (ite c!1040236 (Context!10625 (t!377456 (exprs!5812 lt!2305536))) (Context!10625 call!459932)) (h!70409 s!2326)))))

(declare-fun b!5862690 () Bool)

(assert (=> b!5862690 (= e!3594568 (set.union call!459928 call!459929))))

(declare-fun b!5862691 () Bool)

(declare-fun c!1040235 () Bool)

(assert (=> b!5862691 (= c!1040235 (is-Star!15928 (h!70407 (exprs!5812 lt!2305536))))))

(assert (=> b!5862691 (= e!3594567 e!3594569)))

(declare-fun b!5862692 () Bool)

(assert (=> b!5862692 (= e!3594565 (nullable!5928 (regOne!32368 (h!70407 (exprs!5812 lt!2305536)))))))

(declare-fun b!5862693 () Bool)

(assert (=> b!5862693 (= e!3594567 call!459927)))

(assert (= (and d!1841090 c!1040233) b!5862688))

(assert (= (and d!1841090 (not c!1040233)) b!5862689))

(assert (= (and b!5862689 c!1040236) b!5862685))

(assert (= (and b!5862689 (not c!1040236)) b!5862684))

(assert (= (and b!5862684 res!2466746) b!5862692))

(assert (= (and b!5862684 c!1040232) b!5862690))

(assert (= (and b!5862684 (not c!1040232)) b!5862683))

(assert (= (and b!5862683 c!1040234) b!5862693))

(assert (= (and b!5862683 (not c!1040234)) b!5862691))

(assert (= (and b!5862691 c!1040235) b!5862687))

(assert (= (and b!5862691 (not c!1040235)) b!5862686))

(assert (= (or b!5862693 b!5862687) bm!459923))

(assert (= (or b!5862693 b!5862687) bm!459926))

(assert (= (or b!5862690 bm!459923) bm!459924))

(assert (= (or b!5862690 bm!459926) bm!459922))

(assert (= (or b!5862685 b!5862690) bm!459927))

(assert (= (or b!5862685 bm!459922) bm!459925))

(declare-fun m!6779276 () Bool)

(assert (=> b!5862688 m!6779276))

(declare-fun m!6779278 () Bool)

(assert (=> b!5862692 m!6779278))

(declare-fun m!6779280 () Bool)

(assert (=> bm!459927 m!6779280))

(declare-fun m!6779282 () Bool)

(assert (=> bm!459924 m!6779282))

(declare-fun m!6779284 () Bool)

(assert (=> bm!459925 m!6779284))

(assert (=> bm!459766 d!1841090))

(declare-fun d!1841092 () Bool)

(declare-fun c!1040238 () Bool)

(assert (=> d!1841092 (= c!1040238 (and (is-ElementMatch!15928 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (= (c!1039903 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (h!70409 s!2326))))))

(declare-fun e!3594572 () (Set Context!10624))

(assert (=> d!1841092 (= (derivationStepZipperDown!1194 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))) (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790)) (h!70409 s!2326)) e!3594572)))

(declare-fun b!5862694 () Bool)

(declare-fun e!3594574 () (Set Context!10624))

(declare-fun e!3594573 () (Set Context!10624))

(assert (=> b!5862694 (= e!3594574 e!3594573)))

(declare-fun c!1040239 () Bool)

(assert (=> b!5862694 (= c!1040239 (is-Concat!24773 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))))))

(declare-fun bm!459928 () Bool)

(declare-fun call!459935 () (Set Context!10624))

(declare-fun call!459937 () (Set Context!10624))

(assert (=> bm!459928 (= call!459935 call!459937)))

(declare-fun b!5862695 () Bool)

(declare-fun c!1040237 () Bool)

(declare-fun e!3594571 () Bool)

(assert (=> b!5862695 (= c!1040237 e!3594571)))

(declare-fun res!2466747 () Bool)

(assert (=> b!5862695 (=> (not res!2466747) (not e!3594571))))

(assert (=> b!5862695 (= res!2466747 (is-Concat!24773 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))))))

(declare-fun e!3594570 () (Set Context!10624))

(assert (=> b!5862695 (= e!3594570 e!3594574)))

(declare-fun bm!459929 () Bool)

(declare-fun call!459936 () List!64083)

(declare-fun call!459938 () List!64083)

(assert (=> bm!459929 (= call!459936 call!459938)))

(declare-fun b!5862696 () Bool)

(declare-fun call!459934 () (Set Context!10624))

(assert (=> b!5862696 (= e!3594570 (set.union call!459937 call!459934))))

(declare-fun bm!459930 () Bool)

(assert (=> bm!459930 (= call!459938 ($colon$colon!1833 (exprs!5812 (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790))) (ite (or c!1040237 c!1040239) (regTwo!32368 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))))))))

(declare-fun b!5862697 () Bool)

(declare-fun e!3594575 () (Set Context!10624))

(assert (=> b!5862697 (= e!3594575 (as set.empty (Set Context!10624)))))

(declare-fun b!5862698 () Bool)

(declare-fun call!459933 () (Set Context!10624))

(assert (=> b!5862698 (= e!3594575 call!459933)))

(declare-fun c!1040241 () Bool)

(declare-fun bm!459931 () Bool)

(assert (=> bm!459931 (= call!459937 (derivationStepZipperDown!1194 (ite c!1040241 (regOne!32369 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (ite c!1040237 (regTwo!32368 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (ite c!1040239 (regOne!32368 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (reg!16257 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))))))) (ite (or c!1040241 c!1040237) (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790)) (Context!10625 call!459936)) (h!70409 s!2326)))))

(declare-fun b!5862699 () Bool)

(assert (=> b!5862699 (= e!3594572 (set.insert (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790)) (as set.empty (Set Context!10624))))))

(declare-fun b!5862700 () Bool)

(assert (=> b!5862700 (= e!3594572 e!3594570)))

(assert (=> b!5862700 (= c!1040241 (is-Union!15928 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))))))

(declare-fun bm!459932 () Bool)

(assert (=> bm!459932 (= call!459933 call!459935)))

(declare-fun bm!459933 () Bool)

(assert (=> bm!459933 (= call!459934 (derivationStepZipperDown!1194 (ite c!1040241 (regTwo!32369 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))) (regOne!32368 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))))) (ite c!1040241 (ite (or c!1040020 c!1040016) lt!2305515 (Context!10625 call!459790)) (Context!10625 call!459938)) (h!70409 s!2326)))))

(declare-fun b!5862701 () Bool)

(assert (=> b!5862701 (= e!3594574 (set.union call!459934 call!459935))))

(declare-fun b!5862702 () Bool)

(declare-fun c!1040240 () Bool)

(assert (=> b!5862702 (= c!1040240 (is-Star!15928 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292))))))))

(assert (=> b!5862702 (= e!3594573 e!3594575)))

(declare-fun b!5862703 () Bool)

(assert (=> b!5862703 (= e!3594571 (nullable!5928 (regOne!32368 (ite c!1040020 (regOne!32369 r!7292) (ite c!1040016 (regTwo!32368 r!7292) (ite c!1040018 (regOne!32368 r!7292) (reg!16257 r!7292)))))))))

(declare-fun b!5862704 () Bool)

(assert (=> b!5862704 (= e!3594573 call!459933)))

(assert (= (and d!1841092 c!1040238) b!5862699))

(assert (= (and d!1841092 (not c!1040238)) b!5862700))

(assert (= (and b!5862700 c!1040241) b!5862696))

(assert (= (and b!5862700 (not c!1040241)) b!5862695))

(assert (= (and b!5862695 res!2466747) b!5862703))

(assert (= (and b!5862695 c!1040237) b!5862701))

(assert (= (and b!5862695 (not c!1040237)) b!5862694))

(assert (= (and b!5862694 c!1040239) b!5862704))

(assert (= (and b!5862694 (not c!1040239)) b!5862702))

(assert (= (and b!5862702 c!1040240) b!5862698))

(assert (= (and b!5862702 (not c!1040240)) b!5862697))

(assert (= (or b!5862704 b!5862698) bm!459929))

(assert (= (or b!5862704 b!5862698) bm!459932))

(assert (= (or b!5862701 bm!459929) bm!459930))

(assert (= (or b!5862701 bm!459932) bm!459928))

(assert (= (or b!5862696 b!5862701) bm!459933))

(assert (= (or b!5862696 bm!459928) bm!459931))

(declare-fun m!6779286 () Bool)

(assert (=> b!5862699 m!6779286))

(declare-fun m!6779288 () Bool)

(assert (=> b!5862703 m!6779288))

(declare-fun m!6779290 () Bool)

(assert (=> bm!459933 m!6779290))

(declare-fun m!6779292 () Bool)

(assert (=> bm!459930 m!6779292))

(declare-fun m!6779294 () Bool)

(assert (=> bm!459931 m!6779294))

(assert (=> bm!459785 d!1841092))

(declare-fun d!1841094 () Bool)

(declare-fun c!1040243 () Bool)

(assert (=> d!1841094 (= c!1040243 (and (is-ElementMatch!15928 (h!70407 (exprs!5812 lt!2305529))) (= (c!1039903 (h!70407 (exprs!5812 lt!2305529))) (h!70409 s!2326))))))

(declare-fun e!3594578 () (Set Context!10624))

(assert (=> d!1841094 (= (derivationStepZipperDown!1194 (h!70407 (exprs!5812 lt!2305529)) (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (h!70409 s!2326)) e!3594578)))

(declare-fun b!5862705 () Bool)

(declare-fun e!3594580 () (Set Context!10624))

(declare-fun e!3594579 () (Set Context!10624))

(assert (=> b!5862705 (= e!3594580 e!3594579)))

(declare-fun c!1040244 () Bool)

(assert (=> b!5862705 (= c!1040244 (is-Concat!24773 (h!70407 (exprs!5812 lt!2305529))))))

(declare-fun bm!459934 () Bool)

(declare-fun call!459941 () (Set Context!10624))

(declare-fun call!459943 () (Set Context!10624))

(assert (=> bm!459934 (= call!459941 call!459943)))

(declare-fun b!5862706 () Bool)

(declare-fun c!1040242 () Bool)

(declare-fun e!3594577 () Bool)

(assert (=> b!5862706 (= c!1040242 e!3594577)))

(declare-fun res!2466748 () Bool)

(assert (=> b!5862706 (=> (not res!2466748) (not e!3594577))))

(assert (=> b!5862706 (= res!2466748 (is-Concat!24773 (h!70407 (exprs!5812 lt!2305529))))))

(declare-fun e!3594576 () (Set Context!10624))

(assert (=> b!5862706 (= e!3594576 e!3594580)))

(declare-fun bm!459935 () Bool)

(declare-fun call!459942 () List!64083)

(declare-fun call!459944 () List!64083)

(assert (=> bm!459935 (= call!459942 call!459944)))

(declare-fun b!5862707 () Bool)

(declare-fun call!459940 () (Set Context!10624))

(assert (=> b!5862707 (= e!3594576 (set.union call!459943 call!459940))))

(declare-fun bm!459936 () Bool)

(assert (=> bm!459936 (= call!459944 ($colon$colon!1833 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 lt!2305529)))) (ite (or c!1040242 c!1040244) (regTwo!32368 (h!70407 (exprs!5812 lt!2305529))) (h!70407 (exprs!5812 lt!2305529)))))))

(declare-fun b!5862708 () Bool)

(declare-fun e!3594581 () (Set Context!10624))

(assert (=> b!5862708 (= e!3594581 (as set.empty (Set Context!10624)))))

(declare-fun b!5862709 () Bool)

(declare-fun call!459939 () (Set Context!10624))

(assert (=> b!5862709 (= e!3594581 call!459939)))

(declare-fun c!1040246 () Bool)

(declare-fun bm!459937 () Bool)

(assert (=> bm!459937 (= call!459943 (derivationStepZipperDown!1194 (ite c!1040246 (regOne!32369 (h!70407 (exprs!5812 lt!2305529))) (ite c!1040242 (regTwo!32368 (h!70407 (exprs!5812 lt!2305529))) (ite c!1040244 (regOne!32368 (h!70407 (exprs!5812 lt!2305529))) (reg!16257 (h!70407 (exprs!5812 lt!2305529)))))) (ite (or c!1040246 c!1040242) (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (Context!10625 call!459942)) (h!70409 s!2326)))))

(declare-fun b!5862710 () Bool)

(assert (=> b!5862710 (= e!3594578 (set.insert (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (as set.empty (Set Context!10624))))))

(declare-fun b!5862711 () Bool)

(assert (=> b!5862711 (= e!3594578 e!3594576)))

(assert (=> b!5862711 (= c!1040246 (is-Union!15928 (h!70407 (exprs!5812 lt!2305529))))))

(declare-fun bm!459938 () Bool)

(assert (=> bm!459938 (= call!459939 call!459941)))

(declare-fun bm!459939 () Bool)

(assert (=> bm!459939 (= call!459940 (derivationStepZipperDown!1194 (ite c!1040246 (regTwo!32369 (h!70407 (exprs!5812 lt!2305529))) (regOne!32368 (h!70407 (exprs!5812 lt!2305529)))) (ite c!1040246 (Context!10625 (t!377456 (exprs!5812 lt!2305529))) (Context!10625 call!459944)) (h!70409 s!2326)))))

(declare-fun b!5862712 () Bool)

(assert (=> b!5862712 (= e!3594580 (set.union call!459940 call!459941))))

(declare-fun b!5862713 () Bool)

(declare-fun c!1040245 () Bool)

(assert (=> b!5862713 (= c!1040245 (is-Star!15928 (h!70407 (exprs!5812 lt!2305529))))))

(assert (=> b!5862713 (= e!3594579 e!3594581)))

(declare-fun b!5862714 () Bool)

(assert (=> b!5862714 (= e!3594577 (nullable!5928 (regOne!32368 (h!70407 (exprs!5812 lt!2305529)))))))

(declare-fun b!5862715 () Bool)

(assert (=> b!5862715 (= e!3594579 call!459939)))

(assert (= (and d!1841094 c!1040243) b!5862710))

(assert (= (and d!1841094 (not c!1040243)) b!5862711))

(assert (= (and b!5862711 c!1040246) b!5862707))

(assert (= (and b!5862711 (not c!1040246)) b!5862706))

(assert (= (and b!5862706 res!2466748) b!5862714))

(assert (= (and b!5862706 c!1040242) b!5862712))

(assert (= (and b!5862706 (not c!1040242)) b!5862705))

(assert (= (and b!5862705 c!1040244) b!5862715))

(assert (= (and b!5862705 (not c!1040244)) b!5862713))

(assert (= (and b!5862713 c!1040245) b!5862709))

(assert (= (and b!5862713 (not c!1040245)) b!5862708))

(assert (= (or b!5862715 b!5862709) bm!459935))

(assert (= (or b!5862715 b!5862709) bm!459938))

(assert (= (or b!5862712 bm!459935) bm!459936))

(assert (= (or b!5862712 bm!459938) bm!459934))

(assert (= (or b!5862707 b!5862712) bm!459939))

(assert (= (or b!5862707 bm!459934) bm!459937))

(declare-fun m!6779296 () Bool)

(assert (=> b!5862710 m!6779296))

(declare-fun m!6779298 () Bool)

(assert (=> b!5862714 m!6779298))

(declare-fun m!6779300 () Bool)

(assert (=> bm!459939 m!6779300))

(declare-fun m!6779302 () Bool)

(assert (=> bm!459936 m!6779302))

(declare-fun m!6779304 () Bool)

(assert (=> bm!459937 m!6779304))

(assert (=> bm!459765 d!1841094))

(declare-fun d!1841096 () Bool)

(assert (=> d!1841096 (= (isEmpty!35821 (unfocusZipperList!1349 zl!343)) (is-Nil!63959 (unfocusZipperList!1349 zl!343)))))

(assert (=> b!5861726 d!1841096))

(declare-fun bs!1381257 () Bool)

(declare-fun d!1841098 () Bool)

(assert (= bs!1381257 (and d!1841098 d!1841062)))

(declare-fun lambda!320580 () Int)

(assert (=> bs!1381257 (= lambda!320580 lambda!320577)))

(declare-fun bs!1381258 () Bool)

(assert (= bs!1381258 (and d!1841098 d!1841078)))

(assert (=> bs!1381258 (= lambda!320580 lambda!320579)))

(assert (=> d!1841098 (= (nullableZipper!1767 lt!2305537) (exists!2312 lt!2305537 lambda!320580))))

(declare-fun bs!1381259 () Bool)

(assert (= bs!1381259 d!1841098))

(declare-fun m!6779306 () Bool)

(assert (=> bs!1381259 m!6779306))

(assert (=> b!5861945 d!1841098))

(declare-fun b!5862716 () Bool)

(declare-fun e!3594583 () Bool)

(assert (=> b!5862716 (= e!3594583 (not (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326))))))))

(declare-fun b!5862717 () Bool)

(declare-fun res!2466755 () Bool)

(declare-fun e!3594582 () Bool)

(assert (=> b!5862717 (=> res!2466755 e!3594582)))

(assert (=> b!5862717 (= res!2466755 (not (is-ElementMatch!15928 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)))))))

(declare-fun e!3594584 () Bool)

(assert (=> b!5862717 (= e!3594584 e!3594582)))

(declare-fun b!5862718 () Bool)

(declare-fun res!2466756 () Bool)

(assert (=> b!5862718 (=> res!2466756 e!3594583)))

(assert (=> b!5862718 (= res!2466756 (not (isEmpty!35822 (tail!11496 (tail!11496 s!2326)))))))

(declare-fun b!5862719 () Bool)

(declare-fun lt!2305698 () Bool)

(assert (=> b!5862719 (= e!3594584 (not lt!2305698))))

(declare-fun b!5862720 () Bool)

(declare-fun e!3594585 () Bool)

(assert (=> b!5862720 (= e!3594585 (matchR!8111 (derivativeStep!4666 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862721 () Bool)

(declare-fun e!3594587 () Bool)

(declare-fun call!459945 () Bool)

(assert (=> b!5862721 (= e!3594587 (= lt!2305698 call!459945))))

(declare-fun b!5862722 () Bool)

(declare-fun e!3594588 () Bool)

(assert (=> b!5862722 (= e!3594588 e!3594583)))

(declare-fun res!2466754 () Bool)

(assert (=> b!5862722 (=> res!2466754 e!3594583)))

(assert (=> b!5862722 (= res!2466754 call!459945)))

(declare-fun d!1841100 () Bool)

(assert (=> d!1841100 e!3594587))

(declare-fun c!1040249 () Bool)

(assert (=> d!1841100 (= c!1040249 (is-EmptyExpr!15928 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326))))))

(assert (=> d!1841100 (= lt!2305698 e!3594585)))

(declare-fun c!1040247 () Bool)

(assert (=> d!1841100 (= c!1040247 (isEmpty!35822 (tail!11496 s!2326)))))

(assert (=> d!1841100 (validRegex!7664 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)))))

(assert (=> d!1841100 (= (matchR!8111 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)) (tail!11496 s!2326)) lt!2305698)))

(declare-fun bm!459940 () Bool)

(assert (=> bm!459940 (= call!459945 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5862723 () Bool)

(assert (=> b!5862723 (= e!3594587 e!3594584)))

(declare-fun c!1040248 () Bool)

(assert (=> b!5862723 (= c!1040248 (is-EmptyLang!15928 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326))))))

(declare-fun b!5862724 () Bool)

(declare-fun e!3594586 () Bool)

(assert (=> b!5862724 (= e!3594586 (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)))))))

(declare-fun b!5862725 () Bool)

(assert (=> b!5862725 (= e!3594582 e!3594588)))

(declare-fun res!2466753 () Bool)

(assert (=> b!5862725 (=> (not res!2466753) (not e!3594588))))

(assert (=> b!5862725 (= res!2466753 (not lt!2305698))))

(declare-fun b!5862726 () Bool)

(declare-fun res!2466749 () Bool)

(assert (=> b!5862726 (=> res!2466749 e!3594582)))

(assert (=> b!5862726 (= res!2466749 e!3594586)))

(declare-fun res!2466752 () Bool)

(assert (=> b!5862726 (=> (not res!2466752) (not e!3594586))))

(assert (=> b!5862726 (= res!2466752 lt!2305698)))

(declare-fun b!5862727 () Bool)

(declare-fun res!2466751 () Bool)

(assert (=> b!5862727 (=> (not res!2466751) (not e!3594586))))

(assert (=> b!5862727 (= res!2466751 (isEmpty!35822 (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862728 () Bool)

(assert (=> b!5862728 (= e!3594585 (nullable!5928 (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326))))))

(declare-fun b!5862729 () Bool)

(declare-fun res!2466750 () Bool)

(assert (=> b!5862729 (=> (not res!2466750) (not e!3594586))))

(assert (=> b!5862729 (= res!2466750 (not call!459945))))

(assert (= (and d!1841100 c!1040247) b!5862728))

(assert (= (and d!1841100 (not c!1040247)) b!5862720))

(assert (= (and d!1841100 c!1040249) b!5862721))

(assert (= (and d!1841100 (not c!1040249)) b!5862723))

(assert (= (and b!5862723 c!1040248) b!5862719))

(assert (= (and b!5862723 (not c!1040248)) b!5862717))

(assert (= (and b!5862717 (not res!2466755)) b!5862726))

(assert (= (and b!5862726 res!2466752) b!5862729))

(assert (= (and b!5862729 res!2466750) b!5862727))

(assert (= (and b!5862727 res!2466751) b!5862724))

(assert (= (and b!5862726 (not res!2466749)) b!5862725))

(assert (= (and b!5862725 res!2466753) b!5862722))

(assert (= (and b!5862722 (not res!2466754)) b!5862718))

(assert (= (and b!5862718 (not res!2466756)) b!5862716))

(assert (= (or b!5862721 b!5862722 b!5862729) bm!459940))

(assert (=> b!5862727 m!6778672))

(assert (=> b!5862727 m!6779106))

(assert (=> b!5862727 m!6779106))

(assert (=> b!5862727 m!6779254))

(assert (=> bm!459940 m!6778672))

(assert (=> bm!459940 m!6778700))

(assert (=> b!5862720 m!6778672))

(assert (=> b!5862720 m!6779102))

(assert (=> b!5862720 m!6778702))

(assert (=> b!5862720 m!6779102))

(declare-fun m!6779308 () Bool)

(assert (=> b!5862720 m!6779308))

(assert (=> b!5862720 m!6778672))

(assert (=> b!5862720 m!6779106))

(assert (=> b!5862720 m!6779308))

(assert (=> b!5862720 m!6779106))

(declare-fun m!6779310 () Bool)

(assert (=> b!5862720 m!6779310))

(assert (=> d!1841100 m!6778672))

(assert (=> d!1841100 m!6778700))

(assert (=> d!1841100 m!6778702))

(declare-fun m!6779312 () Bool)

(assert (=> d!1841100 m!6779312))

(assert (=> b!5862728 m!6778702))

(declare-fun m!6779314 () Bool)

(assert (=> b!5862728 m!6779314))

(assert (=> b!5862716 m!6778672))

(assert (=> b!5862716 m!6779102))

(assert (=> b!5862724 m!6778672))

(assert (=> b!5862724 m!6779102))

(assert (=> b!5862718 m!6778672))

(assert (=> b!5862718 m!6779106))

(assert (=> b!5862718 m!6779106))

(assert (=> b!5862718 m!6779254))

(assert (=> b!5861881 d!1841100))

(declare-fun b!5862730 () Bool)

(declare-fun e!3594591 () Regex!15928)

(declare-fun call!459947 () Regex!15928)

(declare-fun call!459948 () Regex!15928)

(assert (=> b!5862730 (= e!3594591 (Union!15928 call!459947 call!459948))))

(declare-fun bm!459941 () Bool)

(declare-fun call!459946 () Regex!15928)

(assert (=> bm!459941 (= call!459946 call!459947)))

(declare-fun call!459949 () Regex!15928)

(declare-fun b!5862731 () Bool)

(declare-fun e!3594590 () Regex!15928)

(assert (=> b!5862731 (= e!3594590 (Union!15928 (Concat!24773 call!459948 (regTwo!32368 (regTwo!32369 r!7292))) call!459949))))

(declare-fun b!5862732 () Bool)

(declare-fun c!1040253 () Bool)

(assert (=> b!5862732 (= c!1040253 (is-Union!15928 (regTwo!32369 r!7292)))))

(declare-fun e!3594589 () Regex!15928)

(assert (=> b!5862732 (= e!3594589 e!3594591)))

(declare-fun d!1841102 () Bool)

(declare-fun lt!2305699 () Regex!15928)

(assert (=> d!1841102 (validRegex!7664 lt!2305699)))

(declare-fun e!3594593 () Regex!15928)

(assert (=> d!1841102 (= lt!2305699 e!3594593)))

(declare-fun c!1040252 () Bool)

(assert (=> d!1841102 (= c!1040252 (or (is-EmptyExpr!15928 (regTwo!32369 r!7292)) (is-EmptyLang!15928 (regTwo!32369 r!7292))))))

(assert (=> d!1841102 (validRegex!7664 (regTwo!32369 r!7292))))

(assert (=> d!1841102 (= (derivativeStep!4666 (regTwo!32369 r!7292) (head!12411 s!2326)) lt!2305699)))

(declare-fun b!5862733 () Bool)

(assert (=> b!5862733 (= e!3594593 e!3594589)))

(declare-fun c!1040254 () Bool)

(assert (=> b!5862733 (= c!1040254 (is-ElementMatch!15928 (regTwo!32369 r!7292)))))

(declare-fun bm!459942 () Bool)

(assert (=> bm!459942 (= call!459949 call!459946)))

(declare-fun b!5862734 () Bool)

(assert (=> b!5862734 (= e!3594593 EmptyLang!15928)))

(declare-fun c!1040250 () Bool)

(declare-fun bm!459943 () Bool)

(declare-fun c!1040251 () Bool)

(assert (=> bm!459943 (= call!459947 (derivativeStep!4666 (ite c!1040253 (regOne!32369 (regTwo!32369 r!7292)) (ite c!1040250 (reg!16257 (regTwo!32369 r!7292)) (ite c!1040251 (regTwo!32368 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))))) (head!12411 s!2326)))))

(declare-fun b!5862735 () Bool)

(assert (=> b!5862735 (= e!3594589 (ite (= (head!12411 s!2326) (c!1039903 (regTwo!32369 r!7292))) EmptyExpr!15928 EmptyLang!15928))))

(declare-fun b!5862736 () Bool)

(assert (=> b!5862736 (= c!1040251 (nullable!5928 (regOne!32368 (regTwo!32369 r!7292))))))

(declare-fun e!3594592 () Regex!15928)

(assert (=> b!5862736 (= e!3594592 e!3594590)))

(declare-fun b!5862737 () Bool)

(assert (=> b!5862737 (= e!3594591 e!3594592)))

(assert (=> b!5862737 (= c!1040250 (is-Star!15928 (regTwo!32369 r!7292)))))

(declare-fun b!5862738 () Bool)

(assert (=> b!5862738 (= e!3594592 (Concat!24773 call!459946 (regTwo!32369 r!7292)))))

(declare-fun b!5862739 () Bool)

(assert (=> b!5862739 (= e!3594590 (Union!15928 (Concat!24773 call!459949 (regTwo!32368 (regTwo!32369 r!7292))) EmptyLang!15928))))

(declare-fun bm!459944 () Bool)

(assert (=> bm!459944 (= call!459948 (derivativeStep!4666 (ite c!1040253 (regTwo!32369 (regTwo!32369 r!7292)) (regOne!32368 (regTwo!32369 r!7292))) (head!12411 s!2326)))))

(assert (= (and d!1841102 c!1040252) b!5862734))

(assert (= (and d!1841102 (not c!1040252)) b!5862733))

(assert (= (and b!5862733 c!1040254) b!5862735))

(assert (= (and b!5862733 (not c!1040254)) b!5862732))

(assert (= (and b!5862732 c!1040253) b!5862730))

(assert (= (and b!5862732 (not c!1040253)) b!5862737))

(assert (= (and b!5862737 c!1040250) b!5862738))

(assert (= (and b!5862737 (not c!1040250)) b!5862736))

(assert (= (and b!5862736 c!1040251) b!5862731))

(assert (= (and b!5862736 (not c!1040251)) b!5862739))

(assert (= (or b!5862731 b!5862739) bm!459942))

(assert (= (or b!5862738 bm!459942) bm!459941))

(assert (= (or b!5862730 b!5862731) bm!459944))

(assert (= (or b!5862730 bm!459941) bm!459943))

(declare-fun m!6779316 () Bool)

(assert (=> d!1841102 m!6779316))

(assert (=> d!1841102 m!6778706))

(assert (=> bm!459943 m!6778668))

(declare-fun m!6779318 () Bool)

(assert (=> bm!459943 m!6779318))

(assert (=> b!5862736 m!6778574))

(assert (=> bm!459944 m!6778668))

(declare-fun m!6779320 () Bool)

(assert (=> bm!459944 m!6779320))

(assert (=> b!5861881 d!1841102))

(assert (=> b!5861881 d!1841008))

(assert (=> b!5861881 d!1841010))

(assert (=> b!5861913 d!1841020))

(assert (=> b!5861913 d!1841010))

(declare-fun bm!459945 () Bool)

(declare-fun call!459952 () Bool)

(declare-fun c!1040256 () Bool)

(assert (=> bm!459945 (= call!459952 (validRegex!7664 (ite c!1040256 (regTwo!32369 lt!2305630) (regTwo!32368 lt!2305630))))))

(declare-fun b!5862741 () Bool)

(declare-fun e!3594599 () Bool)

(assert (=> b!5862741 (= e!3594599 call!459952)))

(declare-fun b!5862742 () Bool)

(declare-fun res!2466761 () Bool)

(declare-fun e!3594594 () Bool)

(assert (=> b!5862742 (=> (not res!2466761) (not e!3594594))))

(declare-fun call!459950 () Bool)

(assert (=> b!5862742 (= res!2466761 call!459950)))

(declare-fun e!3594596 () Bool)

(assert (=> b!5862742 (= e!3594596 e!3594594)))

(declare-fun b!5862743 () Bool)

(declare-fun e!3594595 () Bool)

(declare-fun call!459951 () Bool)

(assert (=> b!5862743 (= e!3594595 call!459951)))

(declare-fun c!1040255 () Bool)

(declare-fun bm!459946 () Bool)

(assert (=> bm!459946 (= call!459951 (validRegex!7664 (ite c!1040255 (reg!16257 lt!2305630) (ite c!1040256 (regOne!32369 lt!2305630) (regOne!32368 lt!2305630)))))))

(declare-fun bm!459947 () Bool)

(assert (=> bm!459947 (= call!459950 call!459951)))

(declare-fun b!5862744 () Bool)

(declare-fun e!3594600 () Bool)

(assert (=> b!5862744 (= e!3594600 e!3594595)))

(declare-fun res!2466758 () Bool)

(assert (=> b!5862744 (= res!2466758 (not (nullable!5928 (reg!16257 lt!2305630))))))

(assert (=> b!5862744 (=> (not res!2466758) (not e!3594595))))

(declare-fun b!5862745 () Bool)

(assert (=> b!5862745 (= e!3594594 call!459952)))

(declare-fun b!5862746 () Bool)

(assert (=> b!5862746 (= e!3594600 e!3594596)))

(assert (=> b!5862746 (= c!1040256 (is-Union!15928 lt!2305630))))

(declare-fun b!5862740 () Bool)

(declare-fun e!3594597 () Bool)

(assert (=> b!5862740 (= e!3594597 e!3594600)))

(assert (=> b!5862740 (= c!1040255 (is-Star!15928 lt!2305630))))

(declare-fun d!1841104 () Bool)

(declare-fun res!2466757 () Bool)

(assert (=> d!1841104 (=> res!2466757 e!3594597)))

(assert (=> d!1841104 (= res!2466757 (is-ElementMatch!15928 lt!2305630))))

(assert (=> d!1841104 (= (validRegex!7664 lt!2305630) e!3594597)))

(declare-fun b!5862747 () Bool)

(declare-fun res!2466759 () Bool)

(declare-fun e!3594598 () Bool)

(assert (=> b!5862747 (=> res!2466759 e!3594598)))

(assert (=> b!5862747 (= res!2466759 (not (is-Concat!24773 lt!2305630)))))

(assert (=> b!5862747 (= e!3594596 e!3594598)))

(declare-fun b!5862748 () Bool)

(assert (=> b!5862748 (= e!3594598 e!3594599)))

(declare-fun res!2466760 () Bool)

(assert (=> b!5862748 (=> (not res!2466760) (not e!3594599))))

(assert (=> b!5862748 (= res!2466760 call!459950)))

(assert (= (and d!1841104 (not res!2466757)) b!5862740))

(assert (= (and b!5862740 c!1040255) b!5862744))

(assert (= (and b!5862740 (not c!1040255)) b!5862746))

(assert (= (and b!5862744 res!2466758) b!5862743))

(assert (= (and b!5862746 c!1040256) b!5862742))

(assert (= (and b!5862746 (not c!1040256)) b!5862747))

(assert (= (and b!5862742 res!2466761) b!5862745))

(assert (= (and b!5862747 (not res!2466759)) b!5862748))

(assert (= (and b!5862748 res!2466760) b!5862741))

(assert (= (or b!5862745 b!5862741) bm!459945))

(assert (= (or b!5862742 b!5862748) bm!459947))

(assert (= (or b!5862743 bm!459947) bm!459946))

(declare-fun m!6779322 () Bool)

(assert (=> bm!459945 m!6779322))

(declare-fun m!6779324 () Bool)

(assert (=> bm!459946 m!6779324))

(declare-fun m!6779326 () Bool)

(assert (=> b!5862744 m!6779326))

(assert (=> d!1840816 d!1841104))

(declare-fun d!1841106 () Bool)

(declare-fun res!2466762 () Bool)

(declare-fun e!3594601 () Bool)

(assert (=> d!1841106 (=> res!2466762 e!3594601)))

(assert (=> d!1841106 (= res!2466762 (is-Nil!63959 (unfocusZipperList!1349 zl!343)))))

(assert (=> d!1841106 (= (forall!15015 (unfocusZipperList!1349 zl!343) lambda!320511) e!3594601)))

(declare-fun b!5862749 () Bool)

(declare-fun e!3594602 () Bool)

(assert (=> b!5862749 (= e!3594601 e!3594602)))

(declare-fun res!2466763 () Bool)

(assert (=> b!5862749 (=> (not res!2466763) (not e!3594602))))

(assert (=> b!5862749 (= res!2466763 (dynLambda!25013 lambda!320511 (h!70407 (unfocusZipperList!1349 zl!343))))))

(declare-fun b!5862750 () Bool)

(assert (=> b!5862750 (= e!3594602 (forall!15015 (t!377456 (unfocusZipperList!1349 zl!343)) lambda!320511))))

(assert (= (and d!1841106 (not res!2466762)) b!5862749))

(assert (= (and b!5862749 res!2466763) b!5862750))

(declare-fun b_lambda!220687 () Bool)

(assert (=> (not b_lambda!220687) (not b!5862749)))

(declare-fun m!6779328 () Bool)

(assert (=> b!5862749 m!6779328))

(declare-fun m!6779330 () Bool)

(assert (=> b!5862750 m!6779330))

(assert (=> d!1840816 d!1841106))

(declare-fun d!1841108 () Bool)

(assert (=> d!1841108 (= ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1039933 c!1039935) (regTwo!32368 (regOne!32369 r!7292)) (regOne!32369 r!7292))) (Cons!63959 (ite (or c!1039933 c!1039935) (regTwo!32368 (regOne!32369 r!7292)) (regOne!32369 r!7292)) (exprs!5812 lt!2305515)))))

(assert (=> bm!459759 d!1841108))

(declare-fun d!1841110 () Bool)

(declare-fun c!1040257 () Bool)

(assert (=> d!1841110 (= c!1040257 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun e!3594603 () Bool)

(assert (=> d!1841110 (= (matchZipper!1994 (derivationStepZipper!1927 lt!2305531 (head!12411 s!2326)) (tail!11496 s!2326)) e!3594603)))

(declare-fun b!5862751 () Bool)

(assert (=> b!5862751 (= e!3594603 (nullableZipper!1767 (derivationStepZipper!1927 lt!2305531 (head!12411 s!2326))))))

(declare-fun b!5862752 () Bool)

(assert (=> b!5862752 (= e!3594603 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 lt!2305531 (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(assert (= (and d!1841110 c!1040257) b!5862751))

(assert (= (and d!1841110 (not c!1040257)) b!5862752))

(assert (=> d!1841110 m!6778672))

(assert (=> d!1841110 m!6778700))

(assert (=> b!5862751 m!6778686))

(declare-fun m!6779332 () Bool)

(assert (=> b!5862751 m!6779332))

(assert (=> b!5862752 m!6778672))

(assert (=> b!5862752 m!6779102))

(assert (=> b!5862752 m!6778686))

(assert (=> b!5862752 m!6779102))

(declare-fun m!6779334 () Bool)

(assert (=> b!5862752 m!6779334))

(assert (=> b!5862752 m!6778672))

(assert (=> b!5862752 m!6779106))

(assert (=> b!5862752 m!6779334))

(assert (=> b!5862752 m!6779106))

(declare-fun m!6779336 () Bool)

(assert (=> b!5862752 m!6779336))

(assert (=> b!5861801 d!1841110))

(declare-fun bs!1381260 () Bool)

(declare-fun d!1841112 () Bool)

(assert (= bs!1381260 (and d!1841112 b!5861545)))

(declare-fun lambda!320581 () Int)

(assert (=> bs!1381260 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320581 lambda!320501))))

(declare-fun bs!1381261 () Bool)

(assert (= bs!1381261 (and d!1841112 d!1840878)))

(assert (=> bs!1381261 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320581 lambda!320534))))

(declare-fun bs!1381262 () Bool)

(assert (= bs!1381262 (and d!1841112 d!1841006)))

(assert (=> bs!1381262 (= lambda!320581 lambda!320568)))

(assert (=> d!1841112 true))

(assert (=> d!1841112 (= (derivationStepZipper!1927 lt!2305531 (head!12411 s!2326)) (flatMap!1459 lt!2305531 lambda!320581))))

(declare-fun bs!1381263 () Bool)

(assert (= bs!1381263 d!1841112))

(declare-fun m!6779338 () Bool)

(assert (=> bs!1381263 m!6779338))

(assert (=> b!5861801 d!1841112))

(assert (=> b!5861801 d!1841008))

(assert (=> b!5861801 d!1841010))

(declare-fun d!1841114 () Bool)

(declare-fun res!2466764 () Bool)

(declare-fun e!3594604 () Bool)

(assert (=> d!1841114 (=> res!2466764 e!3594604)))

(assert (=> d!1841114 (= res!2466764 (is-Nil!63959 (exprs!5812 (h!70408 zl!343))))))

(assert (=> d!1841114 (= (forall!15015 (exprs!5812 (h!70408 zl!343)) lambda!320535) e!3594604)))

(declare-fun b!5862753 () Bool)

(declare-fun e!3594605 () Bool)

(assert (=> b!5862753 (= e!3594604 e!3594605)))

(declare-fun res!2466765 () Bool)

(assert (=> b!5862753 (=> (not res!2466765) (not e!3594605))))

(assert (=> b!5862753 (= res!2466765 (dynLambda!25013 lambda!320535 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun b!5862754 () Bool)

(assert (=> b!5862754 (= e!3594605 (forall!15015 (t!377456 (exprs!5812 (h!70408 zl!343))) lambda!320535))))

(assert (= (and d!1841114 (not res!2466764)) b!5862753))

(assert (= (and b!5862753 res!2466765) b!5862754))

(declare-fun b_lambda!220689 () Bool)

(assert (=> (not b_lambda!220689) (not b!5862753)))

(declare-fun m!6779340 () Bool)

(assert (=> b!5862753 m!6779340))

(declare-fun m!6779342 () Bool)

(assert (=> b!5862754 m!6779342))

(assert (=> d!1840888 d!1841114))

(declare-fun d!1841116 () Bool)

(assert (=> d!1841116 (= (nullable!5928 r!7292) (nullableFct!1915 r!7292))))

(declare-fun bs!1381264 () Bool)

(assert (= bs!1381264 d!1841116))

(declare-fun m!6779344 () Bool)

(assert (=> bs!1381264 m!6779344))

(assert (=> b!5861939 d!1841116))

(assert (=> d!1840842 d!1840992))

(declare-fun b!5862755 () Bool)

(declare-fun e!3594608 () Bool)

(assert (=> b!5862755 (= e!3594608 (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))))))

(declare-fun b!5862756 () Bool)

(declare-fun e!3594607 () (Set Context!10624))

(assert (=> b!5862756 (= e!3594607 (as set.empty (Set Context!10624)))))

(declare-fun d!1841118 () Bool)

(declare-fun c!1040258 () Bool)

(assert (=> d!1841118 (= c!1040258 e!3594608)))

(declare-fun res!2466766 () Bool)

(assert (=> d!1841118 (=> (not res!2466766) (not e!3594608))))

(assert (=> d!1841118 (= res!2466766 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))))

(declare-fun e!3594606 () (Set Context!10624))

(assert (=> d!1841118 (= (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70409 s!2326)) e!3594606)))

(declare-fun b!5862757 () Bool)

(assert (=> b!5862757 (= e!3594606 e!3594607)))

(declare-fun c!1040259 () Bool)

(assert (=> b!5862757 (= c!1040259 (is-Cons!63959 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))))

(declare-fun b!5862758 () Bool)

(declare-fun call!459953 () (Set Context!10624))

(assert (=> b!5862758 (= e!3594607 call!459953)))

(declare-fun b!5862759 () Bool)

(assert (=> b!5862759 (= e!3594606 (set.union call!459953 (derivationStepZipperUp!1120 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))) (h!70409 s!2326))))))

(declare-fun bm!459948 () Bool)

(assert (=> bm!459948 (= call!459953 (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))) (h!70409 s!2326)))))

(assert (= (and d!1841118 res!2466766) b!5862755))

(assert (= (and d!1841118 c!1040258) b!5862759))

(assert (= (and d!1841118 (not c!1040258)) b!5862757))

(assert (= (and b!5862757 c!1040259) b!5862758))

(assert (= (and b!5862757 (not c!1040259)) b!5862756))

(assert (= (or b!5862759 b!5862758) bm!459948))

(declare-fun m!6779346 () Bool)

(assert (=> b!5862755 m!6779346))

(declare-fun m!6779348 () Bool)

(assert (=> b!5862759 m!6779348))

(declare-fun m!6779350 () Bool)

(assert (=> bm!459948 m!6779350))

(assert (=> b!5861968 d!1841118))

(declare-fun bs!1381265 () Bool)

(declare-fun d!1841120 () Bool)

(assert (= bs!1381265 (and d!1841120 d!1841062)))

(declare-fun lambda!320582 () Int)

(assert (=> bs!1381265 (= lambda!320582 lambda!320577)))

(declare-fun bs!1381266 () Bool)

(assert (= bs!1381266 (and d!1841120 d!1841078)))

(assert (=> bs!1381266 (= lambda!320582 lambda!320579)))

(declare-fun bs!1381267 () Bool)

(assert (= bs!1381267 (and d!1841120 d!1841098)))

(assert (=> bs!1381267 (= lambda!320582 lambda!320580)))

(assert (=> d!1841120 (= (nullableZipper!1767 lt!2305530) (exists!2312 lt!2305530 lambda!320582))))

(declare-fun bs!1381268 () Bool)

(assert (= bs!1381268 d!1841120))

(declare-fun m!6779352 () Bool)

(assert (=> bs!1381268 m!6779352))

(assert (=> b!5861793 d!1841120))

(assert (=> d!1840846 d!1840854))

(assert (=> d!1840846 d!1840852))

(declare-fun d!1841122 () Bool)

(assert (=> d!1841122 (= (matchR!8111 (regOne!32369 r!7292) s!2326) (matchRSpec!3029 (regOne!32369 r!7292) s!2326))))

(assert (=> d!1841122 true))

(declare-fun _$88!4303 () Unit!157127)

(assert (=> d!1841122 (= (choose!44438 (regOne!32369 r!7292) s!2326) _$88!4303)))

(declare-fun bs!1381269 () Bool)

(assert (= bs!1381269 d!1841122))

(assert (=> bs!1381269 m!6778476))

(assert (=> bs!1381269 m!6778472))

(assert (=> d!1840846 d!1841122))

(declare-fun bm!459949 () Bool)

(declare-fun call!459956 () Bool)

(declare-fun c!1040261 () Bool)

(assert (=> bm!459949 (= call!459956 (validRegex!7664 (ite c!1040261 (regTwo!32369 (regOne!32369 r!7292)) (regTwo!32368 (regOne!32369 r!7292)))))))

(declare-fun b!5862761 () Bool)

(declare-fun e!3594614 () Bool)

(assert (=> b!5862761 (= e!3594614 call!459956)))

(declare-fun b!5862762 () Bool)

(declare-fun res!2466771 () Bool)

(declare-fun e!3594609 () Bool)

(assert (=> b!5862762 (=> (not res!2466771) (not e!3594609))))

(declare-fun call!459954 () Bool)

(assert (=> b!5862762 (= res!2466771 call!459954)))

(declare-fun e!3594611 () Bool)

(assert (=> b!5862762 (= e!3594611 e!3594609)))

(declare-fun b!5862763 () Bool)

(declare-fun e!3594610 () Bool)

(declare-fun call!459955 () Bool)

(assert (=> b!5862763 (= e!3594610 call!459955)))

(declare-fun c!1040260 () Bool)

(declare-fun bm!459950 () Bool)

(assert (=> bm!459950 (= call!459955 (validRegex!7664 (ite c!1040260 (reg!16257 (regOne!32369 r!7292)) (ite c!1040261 (regOne!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))))))

(declare-fun bm!459951 () Bool)

(assert (=> bm!459951 (= call!459954 call!459955)))

(declare-fun b!5862764 () Bool)

(declare-fun e!3594615 () Bool)

(assert (=> b!5862764 (= e!3594615 e!3594610)))

(declare-fun res!2466768 () Bool)

(assert (=> b!5862764 (= res!2466768 (not (nullable!5928 (reg!16257 (regOne!32369 r!7292)))))))

(assert (=> b!5862764 (=> (not res!2466768) (not e!3594610))))

(declare-fun b!5862765 () Bool)

(assert (=> b!5862765 (= e!3594609 call!459956)))

(declare-fun b!5862766 () Bool)

(assert (=> b!5862766 (= e!3594615 e!3594611)))

(assert (=> b!5862766 (= c!1040261 (is-Union!15928 (regOne!32369 r!7292)))))

(declare-fun b!5862760 () Bool)

(declare-fun e!3594612 () Bool)

(assert (=> b!5862760 (= e!3594612 e!3594615)))

(assert (=> b!5862760 (= c!1040260 (is-Star!15928 (regOne!32369 r!7292)))))

(declare-fun d!1841124 () Bool)

(declare-fun res!2466767 () Bool)

(assert (=> d!1841124 (=> res!2466767 e!3594612)))

(assert (=> d!1841124 (= res!2466767 (is-ElementMatch!15928 (regOne!32369 r!7292)))))

(assert (=> d!1841124 (= (validRegex!7664 (regOne!32369 r!7292)) e!3594612)))

(declare-fun b!5862767 () Bool)

(declare-fun res!2466769 () Bool)

(declare-fun e!3594613 () Bool)

(assert (=> b!5862767 (=> res!2466769 e!3594613)))

(assert (=> b!5862767 (= res!2466769 (not (is-Concat!24773 (regOne!32369 r!7292))))))

(assert (=> b!5862767 (= e!3594611 e!3594613)))

(declare-fun b!5862768 () Bool)

(assert (=> b!5862768 (= e!3594613 e!3594614)))

(declare-fun res!2466770 () Bool)

(assert (=> b!5862768 (=> (not res!2466770) (not e!3594614))))

(assert (=> b!5862768 (= res!2466770 call!459954)))

(assert (= (and d!1841124 (not res!2466767)) b!5862760))

(assert (= (and b!5862760 c!1040260) b!5862764))

(assert (= (and b!5862760 (not c!1040260)) b!5862766))

(assert (= (and b!5862764 res!2466768) b!5862763))

(assert (= (and b!5862766 c!1040261) b!5862762))

(assert (= (and b!5862766 (not c!1040261)) b!5862767))

(assert (= (and b!5862762 res!2466771) b!5862765))

(assert (= (and b!5862767 (not res!2466769)) b!5862768))

(assert (= (and b!5862768 res!2466770) b!5862761))

(assert (= (or b!5862765 b!5862761) bm!459949))

(assert (= (or b!5862762 b!5862768) bm!459951))

(assert (= (or b!5862763 bm!459951) bm!459950))

(declare-fun m!6779354 () Bool)

(assert (=> bm!459949 m!6779354))

(declare-fun m!6779356 () Bool)

(assert (=> bm!459950 m!6779356))

(declare-fun m!6779358 () Bool)

(assert (=> b!5862764 m!6779358))

(assert (=> d!1840846 d!1841124))

(assert (=> b!5861935 d!1841008))

(declare-fun d!1841126 () Bool)

(assert (=> d!1841126 (= (isEmpty!35821 (exprs!5812 (h!70408 zl!343))) (is-Nil!63959 (exprs!5812 (h!70408 zl!343))))))

(assert (=> b!5861771 d!1841126))

(assert (=> b!5861877 d!1841008))

(assert (=> d!1840886 d!1840880))

(declare-fun d!1841128 () Bool)

(assert (=> d!1841128 (= (flatMap!1459 z!1189 lambda!320501) (dynLambda!25011 lambda!320501 (h!70408 zl!343)))))

(assert (=> d!1841128 true))

(declare-fun _$13!2594 () Unit!157127)

(assert (=> d!1841128 (= (choose!44436 z!1189 (h!70408 zl!343) lambda!320501) _$13!2594)))

(declare-fun b_lambda!220691 () Bool)

(assert (=> (not b_lambda!220691) (not d!1841128)))

(declare-fun bs!1381270 () Bool)

(assert (= bs!1381270 d!1841128))

(assert (=> bs!1381270 m!6778432))

(assert (=> bs!1381270 m!6778788))

(assert (=> d!1840886 d!1841128))

(assert (=> bs!1381085 d!1840882))

(assert (=> d!1840860 d!1840858))

(assert (=> d!1840860 d!1840856))

(declare-fun d!1841130 () Bool)

(assert (=> d!1841130 (= (matchR!8111 r!7292 s!2326) (matchRSpec!3029 r!7292 s!2326))))

(assert (=> d!1841130 true))

(declare-fun _$88!4304 () Unit!157127)

(assert (=> d!1841130 (= (choose!44438 r!7292 s!2326) _$88!4304)))

(declare-fun bs!1381271 () Bool)

(assert (= bs!1381271 d!1841130))

(assert (=> bs!1381271 m!6778424))

(assert (=> bs!1381271 m!6778422))

(assert (=> d!1840860 d!1841130))

(assert (=> d!1840860 d!1840810))

(declare-fun bs!1381272 () Bool)

(declare-fun d!1841132 () Bool)

(assert (= bs!1381272 (and d!1841132 d!1841062)))

(declare-fun lambda!320583 () Int)

(assert (=> bs!1381272 (= lambda!320583 lambda!320577)))

(declare-fun bs!1381273 () Bool)

(assert (= bs!1381273 (and d!1841132 d!1841078)))

(assert (=> bs!1381273 (= lambda!320583 lambda!320579)))

(declare-fun bs!1381274 () Bool)

(assert (= bs!1381274 (and d!1841132 d!1841098)))

(assert (=> bs!1381274 (= lambda!320583 lambda!320580)))

(declare-fun bs!1381275 () Bool)

(assert (= bs!1381275 (and d!1841132 d!1841120)))

(assert (=> bs!1381275 (= lambda!320583 lambda!320582)))

(assert (=> d!1841132 (= (nullableZipper!1767 lt!2305518) (exists!2312 lt!2305518 lambda!320583))))

(declare-fun bs!1381276 () Bool)

(assert (= bs!1381276 d!1841132))

(declare-fun m!6779360 () Bool)

(assert (=> bs!1381276 m!6779360))

(assert (=> b!5861943 d!1841132))

(declare-fun d!1841134 () Bool)

(declare-fun c!1040262 () Bool)

(assert (=> d!1841134 (= c!1040262 (isEmpty!35822 (tail!11496 (t!377458 s!2326))))))

(declare-fun e!3594616 () Bool)

(assert (=> d!1841134 (= (matchZipper!1994 (derivationStepZipper!1927 lt!2305528 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))) e!3594616)))

(declare-fun b!5862769 () Bool)

(assert (=> b!5862769 (= e!3594616 (nullableZipper!1767 (derivationStepZipper!1927 lt!2305528 (head!12411 (t!377458 s!2326)))))))

(declare-fun b!5862770 () Bool)

(assert (=> b!5862770 (= e!3594616 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 lt!2305528 (head!12411 (t!377458 s!2326))) (head!12411 (tail!11496 (t!377458 s!2326)))) (tail!11496 (tail!11496 (t!377458 s!2326)))))))

(assert (= (and d!1841134 c!1040262) b!5862769))

(assert (= (and d!1841134 (not c!1040262)) b!5862770))

(assert (=> d!1841134 m!6778624))

(declare-fun m!6779362 () Bool)

(assert (=> d!1841134 m!6779362))

(assert (=> b!5862769 m!6778622))

(declare-fun m!6779364 () Bool)

(assert (=> b!5862769 m!6779364))

(assert (=> b!5862770 m!6778624))

(declare-fun m!6779366 () Bool)

(assert (=> b!5862770 m!6779366))

(assert (=> b!5862770 m!6778622))

(assert (=> b!5862770 m!6779366))

(declare-fun m!6779368 () Bool)

(assert (=> b!5862770 m!6779368))

(assert (=> b!5862770 m!6778624))

(declare-fun m!6779370 () Bool)

(assert (=> b!5862770 m!6779370))

(assert (=> b!5862770 m!6779368))

(assert (=> b!5862770 m!6779370))

(declare-fun m!6779372 () Bool)

(assert (=> b!5862770 m!6779372))

(assert (=> b!5861747 d!1841134))

(declare-fun bs!1381277 () Bool)

(declare-fun d!1841136 () Bool)

(assert (= bs!1381277 (and d!1841136 b!5861545)))

(declare-fun lambda!320584 () Int)

(assert (=> bs!1381277 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320584 lambda!320501))))

(declare-fun bs!1381278 () Bool)

(assert (= bs!1381278 (and d!1841136 d!1840878)))

(assert (=> bs!1381278 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320584 lambda!320534))))

(declare-fun bs!1381279 () Bool)

(assert (= bs!1381279 (and d!1841136 d!1841006)))

(assert (=> bs!1381279 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320584 lambda!320568))))

(declare-fun bs!1381280 () Bool)

(assert (= bs!1381280 (and d!1841136 d!1841112)))

(assert (=> bs!1381280 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320584 lambda!320581))))

(assert (=> d!1841136 true))

(assert (=> d!1841136 (= (derivationStepZipper!1927 lt!2305528 (head!12411 (t!377458 s!2326))) (flatMap!1459 lt!2305528 lambda!320584))))

(declare-fun bs!1381281 () Bool)

(assert (= bs!1381281 d!1841136))

(declare-fun m!6779374 () Bool)

(assert (=> bs!1381281 m!6779374))

(assert (=> b!5861747 d!1841136))

(declare-fun d!1841138 () Bool)

(assert (=> d!1841138 (= (head!12411 (t!377458 s!2326)) (h!70409 (t!377458 s!2326)))))

(assert (=> b!5861747 d!1841138))

(declare-fun d!1841140 () Bool)

(assert (=> d!1841140 (= (tail!11496 (t!377458 s!2326)) (t!377458 (t!377458 s!2326)))))

(assert (=> b!5861747 d!1841140))

(declare-fun d!1841142 () Bool)

(declare-fun c!1040263 () Bool)

(assert (=> d!1841142 (= c!1040263 (isEmpty!35822 (t!377458 s!2326)))))

(declare-fun e!3594617 () Bool)

(assert (=> d!1841142 (= (matchZipper!1994 (set.union lt!2305537 lt!2305528) (t!377458 s!2326)) e!3594617)))

(declare-fun b!5862771 () Bool)

(assert (=> b!5862771 (= e!3594617 (nullableZipper!1767 (set.union lt!2305537 lt!2305528)))))

(declare-fun b!5862772 () Bool)

(assert (=> b!5862772 (= e!3594617 (matchZipper!1994 (derivationStepZipper!1927 (set.union lt!2305537 lt!2305528) (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))))))

(assert (= (and d!1841142 c!1040263) b!5862771))

(assert (= (and d!1841142 (not c!1040263)) b!5862772))

(assert (=> d!1841142 m!6778616))

(declare-fun m!6779376 () Bool)

(assert (=> b!5862771 m!6779376))

(assert (=> b!5862772 m!6778620))

(assert (=> b!5862772 m!6778620))

(declare-fun m!6779378 () Bool)

(assert (=> b!5862772 m!6779378))

(assert (=> b!5862772 m!6778624))

(assert (=> b!5862772 m!6779378))

(assert (=> b!5862772 m!6778624))

(declare-fun m!6779380 () Bool)

(assert (=> b!5862772 m!6779380))

(assert (=> d!1840868 d!1841142))

(assert (=> d!1840868 d!1840866))

(declare-fun e!3594620 () Bool)

(declare-fun d!1841144 () Bool)

(assert (=> d!1841144 (= (matchZipper!1994 (set.union lt!2305537 lt!2305528) (t!377458 s!2326)) e!3594620)))

(declare-fun res!2466774 () Bool)

(assert (=> d!1841144 (=> res!2466774 e!3594620)))

(assert (=> d!1841144 (= res!2466774 (matchZipper!1994 lt!2305537 (t!377458 s!2326)))))

(assert (=> d!1841144 true))

(declare-fun _$48!1440 () Unit!157127)

(assert (=> d!1841144 (= (choose!44439 lt!2305537 lt!2305528 (t!377458 s!2326)) _$48!1440)))

(declare-fun b!5862775 () Bool)

(assert (=> b!5862775 (= e!3594620 (matchZipper!1994 lt!2305528 (t!377458 s!2326)))))

(assert (= (and d!1841144 (not res!2466774)) b!5862775))

(assert (=> d!1841144 m!6778752))

(assert (=> d!1841144 m!6778444))

(assert (=> b!5862775 m!6778440))

(assert (=> d!1840868 d!1841144))

(declare-fun d!1841146 () Bool)

(assert (=> d!1841146 (= (nullable!5928 (regTwo!32369 r!7292)) (nullableFct!1915 (regTwo!32369 r!7292)))))

(declare-fun bs!1381282 () Bool)

(assert (= bs!1381282 d!1841146))

(declare-fun m!6779382 () Bool)

(assert (=> bs!1381282 m!6779382))

(assert (=> b!5861889 d!1841146))

(declare-fun d!1841148 () Bool)

(declare-fun res!2466775 () Bool)

(declare-fun e!3594621 () Bool)

(assert (=> d!1841148 (=> res!2466775 e!3594621)))

(assert (=> d!1841148 (= res!2466775 (is-Nil!63959 (exprs!5812 lt!2305536)))))

(assert (=> d!1841148 (= (forall!15015 (exprs!5812 lt!2305536) lambda!320531) e!3594621)))

(declare-fun b!5862776 () Bool)

(declare-fun e!3594622 () Bool)

(assert (=> b!5862776 (= e!3594621 e!3594622)))

(declare-fun res!2466776 () Bool)

(assert (=> b!5862776 (=> (not res!2466776) (not e!3594622))))

(assert (=> b!5862776 (= res!2466776 (dynLambda!25013 lambda!320531 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun b!5862777 () Bool)

(assert (=> b!5862777 (= e!3594622 (forall!15015 (t!377456 (exprs!5812 lt!2305536)) lambda!320531))))

(assert (= (and d!1841148 (not res!2466775)) b!5862776))

(assert (= (and b!5862776 res!2466776) b!5862777))

(declare-fun b_lambda!220693 () Bool)

(assert (=> (not b_lambda!220693) (not b!5862776)))

(declare-fun m!6779384 () Bool)

(assert (=> b!5862776 m!6779384))

(declare-fun m!6779386 () Bool)

(assert (=> b!5862777 m!6779386))

(assert (=> d!1840872 d!1841148))

(assert (=> bm!459777 d!1840992))

(declare-fun d!1841150 () Bool)

(assert (=> d!1841150 (= (isUnion!801 lt!2305630) (is-Union!15928 lt!2305630))))

(assert (=> b!5861731 d!1841150))

(assert (=> bm!459772 d!1840992))

(declare-fun d!1841152 () Bool)

(assert (=> d!1841152 (= (nullable!5928 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (nullableFct!1915 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(declare-fun bs!1381283 () Bool)

(assert (= bs!1381283 d!1841152))

(declare-fun m!6779388 () Bool)

(assert (=> bs!1381283 m!6779388))

(assert (=> b!5861964 d!1841152))

(declare-fun b!5862778 () Bool)

(declare-fun e!3594624 () Bool)

(assert (=> b!5862778 (= e!3594624 (not (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326))))))))

(declare-fun b!5862779 () Bool)

(declare-fun res!2466783 () Bool)

(declare-fun e!3594623 () Bool)

(assert (=> b!5862779 (=> res!2466783 e!3594623)))

(assert (=> b!5862779 (= res!2466783 (not (is-ElementMatch!15928 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)))))))

(declare-fun e!3594625 () Bool)

(assert (=> b!5862779 (= e!3594625 e!3594623)))

(declare-fun b!5862780 () Bool)

(declare-fun res!2466784 () Bool)

(assert (=> b!5862780 (=> res!2466784 e!3594624)))

(assert (=> b!5862780 (= res!2466784 (not (isEmpty!35822 (tail!11496 (tail!11496 s!2326)))))))

(declare-fun b!5862781 () Bool)

(declare-fun lt!2305700 () Bool)

(assert (=> b!5862781 (= e!3594625 (not lt!2305700))))

(declare-fun b!5862782 () Bool)

(declare-fun e!3594626 () Bool)

(assert (=> b!5862782 (= e!3594626 (matchR!8111 (derivativeStep!4666 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862783 () Bool)

(declare-fun e!3594628 () Bool)

(declare-fun call!459957 () Bool)

(assert (=> b!5862783 (= e!3594628 (= lt!2305700 call!459957))))

(declare-fun b!5862784 () Bool)

(declare-fun e!3594629 () Bool)

(assert (=> b!5862784 (= e!3594629 e!3594624)))

(declare-fun res!2466782 () Bool)

(assert (=> b!5862784 (=> res!2466782 e!3594624)))

(assert (=> b!5862784 (= res!2466782 call!459957)))

(declare-fun d!1841154 () Bool)

(assert (=> d!1841154 e!3594628))

(declare-fun c!1040266 () Bool)

(assert (=> d!1841154 (= c!1040266 (is-EmptyExpr!15928 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326))))))

(assert (=> d!1841154 (= lt!2305700 e!3594626)))

(declare-fun c!1040264 () Bool)

(assert (=> d!1841154 (= c!1040264 (isEmpty!35822 (tail!11496 s!2326)))))

(assert (=> d!1841154 (validRegex!7664 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)))))

(assert (=> d!1841154 (= (matchR!8111 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)) (tail!11496 s!2326)) lt!2305700)))

(declare-fun bm!459952 () Bool)

(assert (=> bm!459952 (= call!459957 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun b!5862785 () Bool)

(assert (=> b!5862785 (= e!3594628 e!3594625)))

(declare-fun c!1040265 () Bool)

(assert (=> b!5862785 (= c!1040265 (is-EmptyLang!15928 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326))))))

(declare-fun b!5862786 () Bool)

(declare-fun e!3594627 () Bool)

(assert (=> b!5862786 (= e!3594627 (= (head!12411 (tail!11496 s!2326)) (c!1039903 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)))))))

(declare-fun b!5862787 () Bool)

(assert (=> b!5862787 (= e!3594623 e!3594629)))

(declare-fun res!2466781 () Bool)

(assert (=> b!5862787 (=> (not res!2466781) (not e!3594629))))

(assert (=> b!5862787 (= res!2466781 (not lt!2305700))))

(declare-fun b!5862788 () Bool)

(declare-fun res!2466777 () Bool)

(assert (=> b!5862788 (=> res!2466777 e!3594623)))

(assert (=> b!5862788 (= res!2466777 e!3594627)))

(declare-fun res!2466780 () Bool)

(assert (=> b!5862788 (=> (not res!2466780) (not e!3594627))))

(assert (=> b!5862788 (= res!2466780 lt!2305700)))

(declare-fun b!5862789 () Bool)

(declare-fun res!2466779 () Bool)

(assert (=> b!5862789 (=> (not res!2466779) (not e!3594627))))

(assert (=> b!5862789 (= res!2466779 (isEmpty!35822 (tail!11496 (tail!11496 s!2326))))))

(declare-fun b!5862790 () Bool)

(assert (=> b!5862790 (= e!3594626 (nullable!5928 (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326))))))

(declare-fun b!5862791 () Bool)

(declare-fun res!2466778 () Bool)

(assert (=> b!5862791 (=> (not res!2466778) (not e!3594627))))

(assert (=> b!5862791 (= res!2466778 (not call!459957))))

(assert (= (and d!1841154 c!1040264) b!5862790))

(assert (= (and d!1841154 (not c!1040264)) b!5862782))

(assert (= (and d!1841154 c!1040266) b!5862783))

(assert (= (and d!1841154 (not c!1040266)) b!5862785))

(assert (= (and b!5862785 c!1040265) b!5862781))

(assert (= (and b!5862785 (not c!1040265)) b!5862779))

(assert (= (and b!5862779 (not res!2466783)) b!5862788))

(assert (= (and b!5862788 res!2466780) b!5862791))

(assert (= (and b!5862791 res!2466778) b!5862789))

(assert (= (and b!5862789 res!2466779) b!5862786))

(assert (= (and b!5862788 (not res!2466777)) b!5862787))

(assert (= (and b!5862787 res!2466781) b!5862784))

(assert (= (and b!5862784 (not res!2466782)) b!5862780))

(assert (= (and b!5862780 (not res!2466784)) b!5862778))

(assert (= (or b!5862783 b!5862784 b!5862791) bm!459952))

(assert (=> b!5862789 m!6778672))

(assert (=> b!5862789 m!6779106))

(assert (=> b!5862789 m!6779106))

(assert (=> b!5862789 m!6779254))

(assert (=> bm!459952 m!6778672))

(assert (=> bm!459952 m!6778700))

(assert (=> b!5862782 m!6778672))

(assert (=> b!5862782 m!6779102))

(assert (=> b!5862782 m!6778718))

(assert (=> b!5862782 m!6779102))

(declare-fun m!6779390 () Bool)

(assert (=> b!5862782 m!6779390))

(assert (=> b!5862782 m!6778672))

(assert (=> b!5862782 m!6779106))

(assert (=> b!5862782 m!6779390))

(assert (=> b!5862782 m!6779106))

(declare-fun m!6779392 () Bool)

(assert (=> b!5862782 m!6779392))

(assert (=> d!1841154 m!6778672))

(assert (=> d!1841154 m!6778700))

(assert (=> d!1841154 m!6778718))

(declare-fun m!6779394 () Bool)

(assert (=> d!1841154 m!6779394))

(assert (=> b!5862790 m!6778718))

(declare-fun m!6779396 () Bool)

(assert (=> b!5862790 m!6779396))

(assert (=> b!5862778 m!6778672))

(assert (=> b!5862778 m!6779102))

(assert (=> b!5862786 m!6778672))

(assert (=> b!5862786 m!6779102))

(assert (=> b!5862780 m!6778672))

(assert (=> b!5862780 m!6779106))

(assert (=> b!5862780 m!6779106))

(assert (=> b!5862780 m!6779254))

(assert (=> b!5861906 d!1841154))

(declare-fun b!5862792 () Bool)

(declare-fun e!3594632 () Regex!15928)

(declare-fun call!459959 () Regex!15928)

(declare-fun call!459960 () Regex!15928)

(assert (=> b!5862792 (= e!3594632 (Union!15928 call!459959 call!459960))))

(declare-fun bm!459953 () Bool)

(declare-fun call!459958 () Regex!15928)

(assert (=> bm!459953 (= call!459958 call!459959)))

(declare-fun call!459961 () Regex!15928)

(declare-fun b!5862793 () Bool)

(declare-fun e!3594631 () Regex!15928)

(assert (=> b!5862793 (= e!3594631 (Union!15928 (Concat!24773 call!459960 (regTwo!32368 (regOne!32369 r!7292))) call!459961))))

(declare-fun b!5862794 () Bool)

(declare-fun c!1040270 () Bool)

(assert (=> b!5862794 (= c!1040270 (is-Union!15928 (regOne!32369 r!7292)))))

(declare-fun e!3594630 () Regex!15928)

(assert (=> b!5862794 (= e!3594630 e!3594632)))

(declare-fun d!1841156 () Bool)

(declare-fun lt!2305701 () Regex!15928)

(assert (=> d!1841156 (validRegex!7664 lt!2305701)))

(declare-fun e!3594634 () Regex!15928)

(assert (=> d!1841156 (= lt!2305701 e!3594634)))

(declare-fun c!1040269 () Bool)

(assert (=> d!1841156 (= c!1040269 (or (is-EmptyExpr!15928 (regOne!32369 r!7292)) (is-EmptyLang!15928 (regOne!32369 r!7292))))))

(assert (=> d!1841156 (validRegex!7664 (regOne!32369 r!7292))))

(assert (=> d!1841156 (= (derivativeStep!4666 (regOne!32369 r!7292) (head!12411 s!2326)) lt!2305701)))

(declare-fun b!5862795 () Bool)

(assert (=> b!5862795 (= e!3594634 e!3594630)))

(declare-fun c!1040271 () Bool)

(assert (=> b!5862795 (= c!1040271 (is-ElementMatch!15928 (regOne!32369 r!7292)))))

(declare-fun bm!459954 () Bool)

(assert (=> bm!459954 (= call!459961 call!459958)))

(declare-fun b!5862796 () Bool)

(assert (=> b!5862796 (= e!3594634 EmptyLang!15928)))

(declare-fun bm!459955 () Bool)

(declare-fun c!1040268 () Bool)

(declare-fun c!1040267 () Bool)

(assert (=> bm!459955 (= call!459959 (derivativeStep!4666 (ite c!1040270 (regOne!32369 (regOne!32369 r!7292)) (ite c!1040267 (reg!16257 (regOne!32369 r!7292)) (ite c!1040268 (regTwo!32368 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))))) (head!12411 s!2326)))))

(declare-fun b!5862797 () Bool)

(assert (=> b!5862797 (= e!3594630 (ite (= (head!12411 s!2326) (c!1039903 (regOne!32369 r!7292))) EmptyExpr!15928 EmptyLang!15928))))

(declare-fun b!5862798 () Bool)

(assert (=> b!5862798 (= c!1040268 (nullable!5928 (regOne!32368 (regOne!32369 r!7292))))))

(declare-fun e!3594633 () Regex!15928)

(assert (=> b!5862798 (= e!3594633 e!3594631)))

(declare-fun b!5862799 () Bool)

(assert (=> b!5862799 (= e!3594632 e!3594633)))

(assert (=> b!5862799 (= c!1040267 (is-Star!15928 (regOne!32369 r!7292)))))

(declare-fun b!5862800 () Bool)

(assert (=> b!5862800 (= e!3594633 (Concat!24773 call!459958 (regOne!32369 r!7292)))))

(declare-fun b!5862801 () Bool)

(assert (=> b!5862801 (= e!3594631 (Union!15928 (Concat!24773 call!459961 (regTwo!32368 (regOne!32369 r!7292))) EmptyLang!15928))))

(declare-fun bm!459956 () Bool)

(assert (=> bm!459956 (= call!459960 (derivativeStep!4666 (ite c!1040270 (regTwo!32369 (regOne!32369 r!7292)) (regOne!32368 (regOne!32369 r!7292))) (head!12411 s!2326)))))

(assert (= (and d!1841156 c!1040269) b!5862796))

(assert (= (and d!1841156 (not c!1040269)) b!5862795))

(assert (= (and b!5862795 c!1040271) b!5862797))

(assert (= (and b!5862795 (not c!1040271)) b!5862794))

(assert (= (and b!5862794 c!1040270) b!5862792))

(assert (= (and b!5862794 (not c!1040270)) b!5862799))

(assert (= (and b!5862799 c!1040267) b!5862800))

(assert (= (and b!5862799 (not c!1040267)) b!5862798))

(assert (= (and b!5862798 c!1040268) b!5862793))

(assert (= (and b!5862798 (not c!1040268)) b!5862801))

(assert (= (or b!5862793 b!5862801) bm!459954))

(assert (= (or b!5862800 bm!459954) bm!459953))

(assert (= (or b!5862792 b!5862793) bm!459956))

(assert (= (or b!5862792 bm!459953) bm!459955))

(declare-fun m!6779398 () Bool)

(assert (=> d!1841156 m!6779398))

(assert (=> d!1841156 m!6778698))

(assert (=> bm!459955 m!6778668))

(declare-fun m!6779400 () Bool)

(assert (=> bm!459955 m!6779400))

(assert (=> b!5862798 m!6778582))

(assert (=> bm!459956 m!6778668))

(declare-fun m!6779402 () Bool)

(assert (=> bm!459956 m!6779402))

(assert (=> b!5861906 d!1841156))

(assert (=> b!5861906 d!1841008))

(assert (=> b!5861906 d!1841010))

(declare-fun d!1841158 () Bool)

(assert (=> d!1841158 (= (isEmpty!35821 (tail!11495 (unfocusZipperList!1349 zl!343))) (is-Nil!63959 (tail!11495 (unfocusZipperList!1349 zl!343))))))

(assert (=> b!5861727 d!1841158))

(declare-fun d!1841160 () Bool)

(assert (=> d!1841160 (= (tail!11495 (unfocusZipperList!1349 zl!343)) (t!377456 (unfocusZipperList!1349 zl!343)))))

(assert (=> b!5861727 d!1841160))

(assert (=> b!5861949 d!1840822))

(assert (=> b!5861885 d!1841008))

(declare-fun d!1841162 () Bool)

(declare-fun c!1040274 () Bool)

(assert (=> d!1841162 (= c!1040274 (is-Nil!63960 lt!2305656))))

(declare-fun e!3594637 () (Set Context!10624))

(assert (=> d!1841162 (= (content!11758 lt!2305656) e!3594637)))

(declare-fun b!5862806 () Bool)

(assert (=> b!5862806 (= e!3594637 (as set.empty (Set Context!10624)))))

(declare-fun b!5862807 () Bool)

(assert (=> b!5862807 (= e!3594637 (set.union (set.insert (h!70408 lt!2305656) (as set.empty (Set Context!10624))) (content!11758 (t!377457 lt!2305656))))))

(assert (= (and d!1841162 c!1040274) b!5862806))

(assert (= (and d!1841162 (not c!1040274)) b!5862807))

(declare-fun m!6779404 () Bool)

(assert (=> b!5862807 m!6779404))

(declare-fun m!6779406 () Bool)

(assert (=> b!5862807 m!6779406))

(assert (=> b!5861952 d!1841162))

(declare-fun d!1841164 () Bool)

(assert (=> d!1841164 (= ($colon$colon!1833 (exprs!5812 lt!2305515) (ite (or c!1040016 c!1040018) (regTwo!32368 r!7292) r!7292)) (Cons!63959 (ite (or c!1040016 c!1040018) (regTwo!32368 r!7292) r!7292) (exprs!5812 lt!2305515)))))

(assert (=> bm!459784 d!1841164))

(assert (=> d!1840854 d!1840992))

(assert (=> d!1840854 d!1841124))

(assert (=> b!5861902 d!1841008))

(declare-fun d!1841166 () Bool)

(assert (=> d!1841166 (= (nullable!5928 (regOne!32368 (regTwo!32369 r!7292))) (nullableFct!1915 (regOne!32368 (regTwo!32369 r!7292))))))

(declare-fun bs!1381284 () Bool)

(assert (= bs!1381284 d!1841166))

(declare-fun m!6779408 () Bool)

(assert (=> bs!1381284 m!6779408))

(assert (=> b!5861693 d!1841166))

(assert (=> b!5861919 d!1840852))

(assert (=> d!1840850 d!1840848))

(assert (=> d!1840850 d!1840844))

(declare-fun d!1841168 () Bool)

(assert (=> d!1841168 (= (matchR!8111 (regTwo!32369 r!7292) s!2326) (matchRSpec!3029 (regTwo!32369 r!7292) s!2326))))

(assert (=> d!1841168 true))

(declare-fun _$88!4305 () Unit!157127)

(assert (=> d!1841168 (= (choose!44438 (regTwo!32369 r!7292) s!2326) _$88!4305)))

(declare-fun bs!1381285 () Bool)

(assert (= bs!1381285 d!1841168))

(assert (=> bs!1381285 m!6778470))

(assert (=> bs!1381285 m!6778466))

(assert (=> d!1840850 d!1841168))

(assert (=> d!1840850 d!1840994))

(declare-fun bs!1381286 () Bool)

(declare-fun d!1841170 () Bool)

(assert (= bs!1381286 (and d!1841170 d!1841022)))

(declare-fun lambda!320585 () Int)

(assert (=> bs!1381286 (= lambda!320585 lambda!320571)))

(declare-fun bs!1381287 () Bool)

(assert (= bs!1381287 (and d!1841170 d!1840818)))

(assert (=> bs!1381287 (= lambda!320585 lambda!320514)))

(declare-fun bs!1381288 () Bool)

(assert (= bs!1381288 (and d!1841170 d!1840888)))

(assert (=> bs!1381288 (= lambda!320585 lambda!320535)))

(declare-fun bs!1381289 () Bool)

(assert (= bs!1381289 (and d!1841170 d!1840872)))

(assert (=> bs!1381289 (= lambda!320585 lambda!320531)))

(declare-fun bs!1381290 () Bool)

(assert (= bs!1381290 (and d!1841170 d!1840824)))

(assert (=> bs!1381290 (= lambda!320585 lambda!320520)))

(declare-fun bs!1381291 () Bool)

(assert (= bs!1381291 (and d!1841170 d!1841076)))

(assert (=> bs!1381291 (= lambda!320585 lambda!320578)))

(declare-fun bs!1381292 () Bool)

(assert (= bs!1381292 (and d!1841170 d!1840820)))

(assert (=> bs!1381292 (= lambda!320585 lambda!320517)))

(declare-fun bs!1381293 () Bool)

(assert (= bs!1381293 (and d!1841170 d!1841034)))

(assert (=> bs!1381293 (= lambda!320585 lambda!320572)))

(declare-fun bs!1381294 () Bool)

(assert (= bs!1381294 (and d!1841170 d!1840816)))

(assert (=> bs!1381294 (= lambda!320585 lambda!320511)))

(declare-fun bs!1381295 () Bool)

(assert (= bs!1381295 (and d!1841170 d!1840998)))

(assert (=> bs!1381295 (= lambda!320585 lambda!320567)))

(assert (=> d!1841170 (= (inv!83068 setElem!39759) (forall!15015 (exprs!5812 setElem!39759) lambda!320585))))

(declare-fun bs!1381296 () Bool)

(assert (= bs!1381296 d!1841170))

(declare-fun m!6779410 () Bool)

(assert (=> bs!1381296 m!6779410))

(assert (=> setNonEmpty!39759 d!1841170))

(declare-fun d!1841172 () Bool)

(assert (=> d!1841172 true))

(declare-fun setRes!39767 () Bool)

(assert (=> d!1841172 setRes!39767))

(declare-fun condSetEmpty!39767 () Bool)

(declare-fun res!2466785 () (Set Context!10624))

(assert (=> d!1841172 (= condSetEmpty!39767 (= res!2466785 (as set.empty (Set Context!10624))))))

(assert (=> d!1841172 (= (choose!44437 lt!2305530 lambda!320501) res!2466785)))

(declare-fun setIsEmpty!39767 () Bool)

(assert (=> setIsEmpty!39767 setRes!39767))

(declare-fun setNonEmpty!39767 () Bool)

(declare-fun setElem!39767 () Context!10624)

(declare-fun tp!1621559 () Bool)

(declare-fun e!3594638 () Bool)

(assert (=> setNonEmpty!39767 (= setRes!39767 (and tp!1621559 (inv!83068 setElem!39767) e!3594638))))

(declare-fun setRest!39767 () (Set Context!10624))

(assert (=> setNonEmpty!39767 (= res!2466785 (set.union (set.insert setElem!39767 (as set.empty (Set Context!10624))) setRest!39767))))

(declare-fun b!5862808 () Bool)

(declare-fun tp!1621560 () Bool)

(assert (=> b!5862808 (= e!3594638 tp!1621560)))

(assert (= (and d!1841172 condSetEmpty!39767) setIsEmpty!39767))

(assert (= (and d!1841172 (not condSetEmpty!39767)) setNonEmpty!39767))

(assert (= setNonEmpty!39767 b!5862808))

(declare-fun m!6779412 () Bool)

(assert (=> setNonEmpty!39767 m!6779412))

(assert (=> d!1840832 d!1841172))

(declare-fun d!1841174 () Bool)

(assert (=> d!1841174 (= (nullable!5928 (regOne!32369 r!7292)) (nullableFct!1915 (regOne!32369 r!7292)))))

(declare-fun bs!1381297 () Bool)

(assert (= bs!1381297 d!1841174))

(declare-fun m!6779414 () Bool)

(assert (=> bs!1381297 m!6779414))

(assert (=> b!5861914 d!1841174))

(declare-fun d!1841176 () Bool)

(assert (=> d!1841176 (= (flatMap!1459 z!1189 lambda!320534) (choose!44437 z!1189 lambda!320534))))

(declare-fun bs!1381298 () Bool)

(assert (= bs!1381298 d!1841176))

(declare-fun m!6779416 () Bool)

(assert (=> bs!1381298 m!6779416))

(assert (=> d!1840878 d!1841176))

(declare-fun d!1841178 () Bool)

(assert (=> d!1841178 (= (head!12410 (exprs!5812 (h!70408 zl!343))) (h!70407 (exprs!5812 (h!70408 zl!343))))))

(assert (=> b!5861776 d!1841178))

(declare-fun bm!459957 () Bool)

(declare-fun call!459964 () Bool)

(declare-fun c!1040276 () Bool)

(assert (=> bm!459957 (= call!459964 (validRegex!7664 (ite c!1040276 (regTwo!32369 lt!2305627) (regTwo!32368 lt!2305627))))))

(declare-fun b!5862810 () Bool)

(declare-fun e!3594644 () Bool)

(assert (=> b!5862810 (= e!3594644 call!459964)))

(declare-fun b!5862811 () Bool)

(declare-fun res!2466790 () Bool)

(declare-fun e!3594639 () Bool)

(assert (=> b!5862811 (=> (not res!2466790) (not e!3594639))))

(declare-fun call!459962 () Bool)

(assert (=> b!5862811 (= res!2466790 call!459962)))

(declare-fun e!3594641 () Bool)

(assert (=> b!5862811 (= e!3594641 e!3594639)))

(declare-fun b!5862812 () Bool)

(declare-fun e!3594640 () Bool)

(declare-fun call!459963 () Bool)

(assert (=> b!5862812 (= e!3594640 call!459963)))

(declare-fun c!1040275 () Bool)

(declare-fun bm!459958 () Bool)

(assert (=> bm!459958 (= call!459963 (validRegex!7664 (ite c!1040275 (reg!16257 lt!2305627) (ite c!1040276 (regOne!32369 lt!2305627) (regOne!32368 lt!2305627)))))))

(declare-fun bm!459959 () Bool)

(assert (=> bm!459959 (= call!459962 call!459963)))

(declare-fun b!5862813 () Bool)

(declare-fun e!3594645 () Bool)

(assert (=> b!5862813 (= e!3594645 e!3594640)))

(declare-fun res!2466787 () Bool)

(assert (=> b!5862813 (= res!2466787 (not (nullable!5928 (reg!16257 lt!2305627))))))

(assert (=> b!5862813 (=> (not res!2466787) (not e!3594640))))

(declare-fun b!5862814 () Bool)

(assert (=> b!5862814 (= e!3594639 call!459964)))

(declare-fun b!5862815 () Bool)

(assert (=> b!5862815 (= e!3594645 e!3594641)))

(assert (=> b!5862815 (= c!1040276 (is-Union!15928 lt!2305627))))

(declare-fun b!5862809 () Bool)

(declare-fun e!3594642 () Bool)

(assert (=> b!5862809 (= e!3594642 e!3594645)))

(assert (=> b!5862809 (= c!1040275 (is-Star!15928 lt!2305627))))

(declare-fun d!1841180 () Bool)

(declare-fun res!2466786 () Bool)

(assert (=> d!1841180 (=> res!2466786 e!3594642)))

(assert (=> d!1841180 (= res!2466786 (is-ElementMatch!15928 lt!2305627))))

(assert (=> d!1841180 (= (validRegex!7664 lt!2305627) e!3594642)))

(declare-fun b!5862816 () Bool)

(declare-fun res!2466788 () Bool)

(declare-fun e!3594643 () Bool)

(assert (=> b!5862816 (=> res!2466788 e!3594643)))

(assert (=> b!5862816 (= res!2466788 (not (is-Concat!24773 lt!2305627)))))

(assert (=> b!5862816 (= e!3594641 e!3594643)))

(declare-fun b!5862817 () Bool)

(assert (=> b!5862817 (= e!3594643 e!3594644)))

(declare-fun res!2466789 () Bool)

(assert (=> b!5862817 (=> (not res!2466789) (not e!3594644))))

(assert (=> b!5862817 (= res!2466789 call!459962)))

(assert (= (and d!1841180 (not res!2466786)) b!5862809))

(assert (= (and b!5862809 c!1040275) b!5862813))

(assert (= (and b!5862809 (not c!1040275)) b!5862815))

(assert (= (and b!5862813 res!2466787) b!5862812))

(assert (= (and b!5862815 c!1040276) b!5862811))

(assert (= (and b!5862815 (not c!1040276)) b!5862816))

(assert (= (and b!5862811 res!2466790) b!5862814))

(assert (= (and b!5862816 (not res!2466788)) b!5862817))

(assert (= (and b!5862817 res!2466789) b!5862810))

(assert (= (or b!5862814 b!5862810) bm!459957))

(assert (= (or b!5862811 b!5862817) bm!459959))

(assert (= (or b!5862812 bm!459959) bm!459958))

(declare-fun m!6779418 () Bool)

(assert (=> bm!459957 m!6779418))

(declare-fun m!6779420 () Bool)

(assert (=> bm!459958 m!6779420))

(declare-fun m!6779422 () Bool)

(assert (=> b!5862813 m!6779422))

(assert (=> d!1840808 d!1841180))

(assert (=> d!1840808 d!1840816))

(assert (=> d!1840808 d!1840818))

(declare-fun d!1841182 () Bool)

(declare-fun c!1040277 () Bool)

(assert (=> d!1841182 (= c!1040277 (isEmpty!35822 (tail!11496 (t!377458 s!2326))))))

(declare-fun e!3594646 () Bool)

(assert (=> d!1841182 (= (matchZipper!1994 (derivationStepZipper!1927 lt!2305537 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))) e!3594646)))

(declare-fun b!5862818 () Bool)

(assert (=> b!5862818 (= e!3594646 (nullableZipper!1767 (derivationStepZipper!1927 lt!2305537 (head!12411 (t!377458 s!2326)))))))

(declare-fun b!5862819 () Bool)

(assert (=> b!5862819 (= e!3594646 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 lt!2305537 (head!12411 (t!377458 s!2326))) (head!12411 (tail!11496 (t!377458 s!2326)))) (tail!11496 (tail!11496 (t!377458 s!2326)))))))

(assert (= (and d!1841182 c!1040277) b!5862818))

(assert (= (and d!1841182 (not c!1040277)) b!5862819))

(assert (=> d!1841182 m!6778624))

(assert (=> d!1841182 m!6779362))

(assert (=> b!5862818 m!6778748))

(declare-fun m!6779424 () Bool)

(assert (=> b!5862818 m!6779424))

(assert (=> b!5862819 m!6778624))

(assert (=> b!5862819 m!6779366))

(assert (=> b!5862819 m!6778748))

(assert (=> b!5862819 m!6779366))

(declare-fun m!6779426 () Bool)

(assert (=> b!5862819 m!6779426))

(assert (=> b!5862819 m!6778624))

(assert (=> b!5862819 m!6779370))

(assert (=> b!5862819 m!6779426))

(assert (=> b!5862819 m!6779370))

(declare-fun m!6779428 () Bool)

(assert (=> b!5862819 m!6779428))

(assert (=> b!5861946 d!1841182))

(declare-fun bs!1381299 () Bool)

(declare-fun d!1841184 () Bool)

(assert (= bs!1381299 (and d!1841184 d!1840878)))

(declare-fun lambda!320586 () Int)

(assert (=> bs!1381299 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320586 lambda!320534))))

(declare-fun bs!1381300 () Bool)

(assert (= bs!1381300 (and d!1841184 d!1841006)))

(assert (=> bs!1381300 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320586 lambda!320568))))

(declare-fun bs!1381301 () Bool)

(assert (= bs!1381301 (and d!1841184 b!5861545)))

(assert (=> bs!1381301 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320586 lambda!320501))))

(declare-fun bs!1381302 () Bool)

(assert (= bs!1381302 (and d!1841184 d!1841112)))

(assert (=> bs!1381302 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320586 lambda!320581))))

(declare-fun bs!1381303 () Bool)

(assert (= bs!1381303 (and d!1841184 d!1841136)))

(assert (=> bs!1381303 (= lambda!320586 lambda!320584)))

(assert (=> d!1841184 true))

(assert (=> d!1841184 (= (derivationStepZipper!1927 lt!2305537 (head!12411 (t!377458 s!2326))) (flatMap!1459 lt!2305537 lambda!320586))))

(declare-fun bs!1381304 () Bool)

(assert (= bs!1381304 d!1841184))

(declare-fun m!6779430 () Bool)

(assert (=> bs!1381304 m!6779430))

(assert (=> b!5861946 d!1841184))

(assert (=> b!5861946 d!1841138))

(assert (=> b!5861946 d!1841140))

(declare-fun d!1841186 () Bool)

(declare-fun c!1040279 () Bool)

(assert (=> d!1841186 (= c!1040279 (and (is-ElementMatch!15928 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (= (c!1039903 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70409 s!2326))))))

(declare-fun e!3594649 () (Set Context!10624))

(assert (=> d!1841186 (= (derivationStepZipperDown!1194 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70409 s!2326)) e!3594649)))

(declare-fun b!5862820 () Bool)

(declare-fun e!3594651 () (Set Context!10624))

(declare-fun e!3594650 () (Set Context!10624))

(assert (=> b!5862820 (= e!3594651 e!3594650)))

(declare-fun c!1040280 () Bool)

(assert (=> b!5862820 (= c!1040280 (is-Concat!24773 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(declare-fun bm!459960 () Bool)

(declare-fun call!459967 () (Set Context!10624))

(declare-fun call!459969 () (Set Context!10624))

(assert (=> bm!459960 (= call!459967 call!459969)))

(declare-fun b!5862821 () Bool)

(declare-fun c!1040278 () Bool)

(declare-fun e!3594648 () Bool)

(assert (=> b!5862821 (= c!1040278 e!3594648)))

(declare-fun res!2466791 () Bool)

(assert (=> b!5862821 (=> (not res!2466791) (not e!3594648))))

(assert (=> b!5862821 (= res!2466791 (is-Concat!24773 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(declare-fun e!3594647 () (Set Context!10624))

(assert (=> b!5862821 (= e!3594647 e!3594651)))

(declare-fun bm!459961 () Bool)

(declare-fun call!459968 () List!64083)

(declare-fun call!459970 () List!64083)

(assert (=> bm!459961 (= call!459968 call!459970)))

(declare-fun b!5862822 () Bool)

(declare-fun call!459966 () (Set Context!10624))

(assert (=> b!5862822 (= e!3594647 (set.union call!459969 call!459966))))

(declare-fun bm!459962 () Bool)

(assert (=> bm!459962 (= call!459970 ($colon$colon!1833 (exprs!5812 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))) (ite (or c!1040278 c!1040280) (regTwo!32368 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))))

(declare-fun b!5862823 () Bool)

(declare-fun e!3594652 () (Set Context!10624))

(assert (=> b!5862823 (= e!3594652 (as set.empty (Set Context!10624)))))

(declare-fun b!5862824 () Bool)

(declare-fun call!459965 () (Set Context!10624))

(assert (=> b!5862824 (= e!3594652 call!459965)))

(declare-fun c!1040282 () Bool)

(declare-fun bm!459963 () Bool)

(assert (=> bm!459963 (= call!459969 (derivationStepZipperDown!1194 (ite c!1040282 (regOne!32369 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (ite c!1040278 (regTwo!32368 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (ite c!1040280 (regOne!32368 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (reg!16257 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))) (ite (or c!1040282 c!1040278) (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (Context!10625 call!459968)) (h!70409 s!2326)))))

(declare-fun b!5862825 () Bool)

(assert (=> b!5862825 (= e!3594649 (set.insert (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (as set.empty (Set Context!10624))))))

(declare-fun b!5862826 () Bool)

(assert (=> b!5862826 (= e!3594649 e!3594647)))

(assert (=> b!5862826 (= c!1040282 (is-Union!15928 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(declare-fun bm!459964 () Bool)

(assert (=> bm!459964 (= call!459965 call!459967)))

(declare-fun bm!459965 () Bool)

(assert (=> bm!459965 (= call!459966 (derivationStepZipperDown!1194 (ite c!1040282 (regTwo!32369 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (regOne!32368 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))) (ite c!1040282 (Context!10625 (t!377456 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))) (Context!10625 call!459970)) (h!70409 s!2326)))))

(declare-fun b!5862827 () Bool)

(assert (=> b!5862827 (= e!3594651 (set.union call!459966 call!459967))))

(declare-fun b!5862828 () Bool)

(declare-fun c!1040281 () Bool)

(assert (=> b!5862828 (= c!1040281 (is-Star!15928 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959))))))))

(assert (=> b!5862828 (= e!3594650 e!3594652)))

(declare-fun b!5862829 () Bool)

(assert (=> b!5862829 (= e!3594648 (nullable!5928 (regOne!32368 (h!70407 (exprs!5812 (Context!10625 (Cons!63959 r!7292 Nil!63959)))))))))

(declare-fun b!5862830 () Bool)

(assert (=> b!5862830 (= e!3594650 call!459965)))

(assert (= (and d!1841186 c!1040279) b!5862825))

(assert (= (and d!1841186 (not c!1040279)) b!5862826))

(assert (= (and b!5862826 c!1040282) b!5862822))

(assert (= (and b!5862826 (not c!1040282)) b!5862821))

(assert (= (and b!5862821 res!2466791) b!5862829))

(assert (= (and b!5862821 c!1040278) b!5862827))

(assert (= (and b!5862821 (not c!1040278)) b!5862820))

(assert (= (and b!5862820 c!1040280) b!5862830))

(assert (= (and b!5862820 (not c!1040280)) b!5862828))

(assert (= (and b!5862828 c!1040281) b!5862824))

(assert (= (and b!5862828 (not c!1040281)) b!5862823))

(assert (= (or b!5862830 b!5862824) bm!459961))

(assert (= (or b!5862830 b!5862824) bm!459964))

(assert (= (or b!5862827 bm!459961) bm!459962))

(assert (= (or b!5862827 bm!459964) bm!459960))

(assert (= (or b!5862822 b!5862827) bm!459965))

(assert (= (or b!5862822 bm!459960) bm!459963))

(declare-fun m!6779432 () Bool)

(assert (=> b!5862825 m!6779432))

(declare-fun m!6779434 () Bool)

(assert (=> b!5862829 m!6779434))

(declare-fun m!6779436 () Bool)

(assert (=> bm!459965 m!6779436))

(declare-fun m!6779438 () Bool)

(assert (=> bm!459962 m!6779438))

(declare-fun m!6779440 () Bool)

(assert (=> bm!459963 m!6779440))

(assert (=> bm!459788 d!1841186))

(assert (=> b!5861910 d!1841008))

(assert (=> b!5861926 d!1840844))

(assert (=> d!1840822 d!1840996))

(declare-fun bs!1381305 () Bool)

(declare-fun d!1841188 () Bool)

(assert (= bs!1381305 (and d!1841188 d!1841062)))

(declare-fun lambda!320587 () Int)

(assert (=> bs!1381305 (= lambda!320587 lambda!320577)))

(declare-fun bs!1381306 () Bool)

(assert (= bs!1381306 (and d!1841188 d!1841098)))

(assert (=> bs!1381306 (= lambda!320587 lambda!320580)))

(declare-fun bs!1381307 () Bool)

(assert (= bs!1381307 (and d!1841188 d!1841132)))

(assert (=> bs!1381307 (= lambda!320587 lambda!320583)))

(declare-fun bs!1381308 () Bool)

(assert (= bs!1381308 (and d!1841188 d!1841120)))

(assert (=> bs!1381308 (= lambda!320587 lambda!320582)))

(declare-fun bs!1381309 () Bool)

(assert (= bs!1381309 (and d!1841188 d!1841078)))

(assert (=> bs!1381309 (= lambda!320587 lambda!320579)))

(assert (=> d!1841188 (= (nullableZipper!1767 z!1189) (exists!2312 z!1189 lambda!320587))))

(declare-fun bs!1381310 () Bool)

(assert (= bs!1381310 d!1841188))

(declare-fun m!6779442 () Bool)

(assert (=> bs!1381310 m!6779442))

(assert (=> b!5861941 d!1841188))

(assert (=> d!1840866 d!1840996))

(declare-fun d!1841190 () Bool)

(declare-fun c!1040283 () Bool)

(assert (=> d!1841190 (= c!1040283 (isEmpty!35822 (tail!11496 s!2326)))))

(declare-fun e!3594653 () Bool)

(assert (=> d!1841190 (= (matchZipper!1994 (derivationStepZipper!1927 lt!2305530 (head!12411 s!2326)) (tail!11496 s!2326)) e!3594653)))

(declare-fun b!5862831 () Bool)

(assert (=> b!5862831 (= e!3594653 (nullableZipper!1767 (derivationStepZipper!1927 lt!2305530 (head!12411 s!2326))))))

(declare-fun b!5862832 () Bool)

(assert (=> b!5862832 (= e!3594653 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 lt!2305530 (head!12411 s!2326)) (head!12411 (tail!11496 s!2326))) (tail!11496 (tail!11496 s!2326))))))

(assert (= (and d!1841190 c!1040283) b!5862831))

(assert (= (and d!1841190 (not c!1040283)) b!5862832))

(assert (=> d!1841190 m!6778672))

(assert (=> d!1841190 m!6778700))

(assert (=> b!5862831 m!6778670))

(declare-fun m!6779444 () Bool)

(assert (=> b!5862831 m!6779444))

(assert (=> b!5862832 m!6778672))

(assert (=> b!5862832 m!6779102))

(assert (=> b!5862832 m!6778670))

(assert (=> b!5862832 m!6779102))

(declare-fun m!6779446 () Bool)

(assert (=> b!5862832 m!6779446))

(assert (=> b!5862832 m!6778672))

(assert (=> b!5862832 m!6779106))

(assert (=> b!5862832 m!6779446))

(assert (=> b!5862832 m!6779106))

(declare-fun m!6779448 () Bool)

(assert (=> b!5862832 m!6779448))

(assert (=> b!5861794 d!1841190))

(declare-fun bs!1381311 () Bool)

(declare-fun d!1841192 () Bool)

(assert (= bs!1381311 (and d!1841192 d!1840878)))

(declare-fun lambda!320588 () Int)

(assert (=> bs!1381311 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320588 lambda!320534))))

(declare-fun bs!1381312 () Bool)

(assert (= bs!1381312 (and d!1841192 d!1841006)))

(assert (=> bs!1381312 (= lambda!320588 lambda!320568)))

(declare-fun bs!1381313 () Bool)

(assert (= bs!1381313 (and d!1841192 b!5861545)))

(assert (=> bs!1381313 (= (= (head!12411 s!2326) (h!70409 s!2326)) (= lambda!320588 lambda!320501))))

(declare-fun bs!1381314 () Bool)

(assert (= bs!1381314 (and d!1841192 d!1841112)))

(assert (=> bs!1381314 (= lambda!320588 lambda!320581)))

(declare-fun bs!1381315 () Bool)

(assert (= bs!1381315 (and d!1841192 d!1841136)))

(assert (=> bs!1381315 (= (= (head!12411 s!2326) (head!12411 (t!377458 s!2326))) (= lambda!320588 lambda!320584))))

(declare-fun bs!1381316 () Bool)

(assert (= bs!1381316 (and d!1841192 d!1841184)))

(assert (=> bs!1381316 (= (= (head!12411 s!2326) (head!12411 (t!377458 s!2326))) (= lambda!320588 lambda!320586))))

(assert (=> d!1841192 true))

(assert (=> d!1841192 (= (derivationStepZipper!1927 lt!2305530 (head!12411 s!2326)) (flatMap!1459 lt!2305530 lambda!320588))))

(declare-fun bs!1381317 () Bool)

(assert (= bs!1381317 d!1841192))

(declare-fun m!6779450 () Bool)

(assert (=> bs!1381317 m!6779450))

(assert (=> b!5861794 d!1841192))

(assert (=> b!5861794 d!1841008))

(assert (=> b!5861794 d!1841010))

(assert (=> b!5861929 d!1841020))

(assert (=> b!5861929 d!1841010))

(declare-fun d!1841194 () Bool)

(assert (=> d!1841194 (= (nullable!5928 (reg!16257 r!7292)) (nullableFct!1915 (reg!16257 r!7292)))))

(declare-fun bs!1381318 () Bool)

(assert (= bs!1381318 d!1841194))

(declare-fun m!6779452 () Bool)

(assert (=> bs!1381318 m!6779452))

(assert (=> b!5861657 d!1841194))

(declare-fun d!1841196 () Bool)

(declare-fun c!1040284 () Bool)

(assert (=> d!1841196 (= c!1040284 (isEmpty!35822 (tail!11496 (t!377458 s!2326))))))

(declare-fun e!3594654 () Bool)

(assert (=> d!1841196 (= (matchZipper!1994 (derivationStepZipper!1927 lt!2305518 (head!12411 (t!377458 s!2326))) (tail!11496 (t!377458 s!2326))) e!3594654)))

(declare-fun b!5862833 () Bool)

(assert (=> b!5862833 (= e!3594654 (nullableZipper!1767 (derivationStepZipper!1927 lt!2305518 (head!12411 (t!377458 s!2326)))))))

(declare-fun b!5862834 () Bool)

(assert (=> b!5862834 (= e!3594654 (matchZipper!1994 (derivationStepZipper!1927 (derivationStepZipper!1927 lt!2305518 (head!12411 (t!377458 s!2326))) (head!12411 (tail!11496 (t!377458 s!2326)))) (tail!11496 (tail!11496 (t!377458 s!2326)))))))

(assert (= (and d!1841196 c!1040284) b!5862833))

(assert (= (and d!1841196 (not c!1040284)) b!5862834))

(assert (=> d!1841196 m!6778624))

(assert (=> d!1841196 m!6779362))

(assert (=> b!5862833 m!6778742))

(declare-fun m!6779454 () Bool)

(assert (=> b!5862833 m!6779454))

(assert (=> b!5862834 m!6778624))

(assert (=> b!5862834 m!6779366))

(assert (=> b!5862834 m!6778742))

(assert (=> b!5862834 m!6779366))

(declare-fun m!6779456 () Bool)

(assert (=> b!5862834 m!6779456))

(assert (=> b!5862834 m!6778624))

(assert (=> b!5862834 m!6779370))

(assert (=> b!5862834 m!6779456))

(assert (=> b!5862834 m!6779370))

(declare-fun m!6779458 () Bool)

(assert (=> b!5862834 m!6779458))

(assert (=> b!5861944 d!1841196))

(declare-fun bs!1381319 () Bool)

(declare-fun d!1841198 () Bool)

(assert (= bs!1381319 (and d!1841198 d!1840878)))

(declare-fun lambda!320589 () Int)

(assert (=> bs!1381319 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320589 lambda!320534))))

(declare-fun bs!1381320 () Bool)

(assert (= bs!1381320 (and d!1841198 d!1841006)))

(assert (=> bs!1381320 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320589 lambda!320568))))

(declare-fun bs!1381321 () Bool)

(assert (= bs!1381321 (and d!1841198 b!5861545)))

(assert (=> bs!1381321 (= (= (head!12411 (t!377458 s!2326)) (h!70409 s!2326)) (= lambda!320589 lambda!320501))))

(declare-fun bs!1381322 () Bool)

(assert (= bs!1381322 (and d!1841198 d!1841112)))

(assert (=> bs!1381322 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320589 lambda!320581))))

(declare-fun bs!1381323 () Bool)

(assert (= bs!1381323 (and d!1841198 d!1841192)))

(assert (=> bs!1381323 (= (= (head!12411 (t!377458 s!2326)) (head!12411 s!2326)) (= lambda!320589 lambda!320588))))

(declare-fun bs!1381324 () Bool)

(assert (= bs!1381324 (and d!1841198 d!1841136)))

(assert (=> bs!1381324 (= lambda!320589 lambda!320584)))

(declare-fun bs!1381325 () Bool)

(assert (= bs!1381325 (and d!1841198 d!1841184)))

(assert (=> bs!1381325 (= lambda!320589 lambda!320586)))

(assert (=> d!1841198 true))

(assert (=> d!1841198 (= (derivationStepZipper!1927 lt!2305518 (head!12411 (t!377458 s!2326))) (flatMap!1459 lt!2305518 lambda!320589))))

(declare-fun bs!1381326 () Bool)

(assert (= bs!1381326 d!1841198))

(declare-fun m!6779460 () Bool)

(assert (=> bs!1381326 m!6779460))

(assert (=> b!5861944 d!1841198))

(assert (=> b!5861944 d!1841138))

(assert (=> b!5861944 d!1841140))

(declare-fun d!1841200 () Bool)

(assert (=> d!1841200 (= (isEmptyExpr!1363 lt!2305636) (is-EmptyExpr!15928 lt!2305636))))

(assert (=> b!5861768 d!1841200))

(declare-fun d!1841202 () Bool)

(assert (=> d!1841202 (= (nullable!5928 (regOne!32368 (regOne!32369 r!7292))) (nullableFct!1915 (regOne!32368 (regOne!32369 r!7292))))))

(declare-fun bs!1381327 () Bool)

(assert (= bs!1381327 d!1841202))

(declare-fun m!6779462 () Bool)

(assert (=> bs!1381327 m!6779462))

(assert (=> b!5861704 d!1841202))

(declare-fun d!1841204 () Bool)

(assert (=> d!1841204 (= (Exists!3000 (ite c!1040008 lambda!320529 lambda!320530)) (choose!44446 (ite c!1040008 lambda!320529 lambda!320530)))))

(declare-fun bs!1381328 () Bool)

(assert (= bs!1381328 d!1841204))

(declare-fun m!6779464 () Bool)

(assert (=> bs!1381328 m!6779464))

(assert (=> bm!459779 d!1841204))

(assert (=> d!1840834 d!1840992))

(declare-fun e!3594655 () Bool)

(assert (=> b!5861989 (= tp!1621440 e!3594655)))

(declare-fun b!5862835 () Bool)

(assert (=> b!5862835 (= e!3594655 tp_is_empty!41109)))

(declare-fun b!5862836 () Bool)

(declare-fun tp!1621563 () Bool)

(declare-fun tp!1621561 () Bool)

(assert (=> b!5862836 (= e!3594655 (and tp!1621563 tp!1621561))))

(declare-fun b!5862838 () Bool)

(declare-fun tp!1621562 () Bool)

(declare-fun tp!1621565 () Bool)

(assert (=> b!5862838 (= e!3594655 (and tp!1621562 tp!1621565))))

(declare-fun b!5862837 () Bool)

(declare-fun tp!1621564 () Bool)

(assert (=> b!5862837 (= e!3594655 tp!1621564)))

(assert (= (and b!5861989 (is-ElementMatch!15928 (regOne!32369 (regOne!32368 r!7292)))) b!5862835))

(assert (= (and b!5861989 (is-Concat!24773 (regOne!32369 (regOne!32368 r!7292)))) b!5862836))

(assert (= (and b!5861989 (is-Star!15928 (regOne!32369 (regOne!32368 r!7292)))) b!5862837))

(assert (= (and b!5861989 (is-Union!15928 (regOne!32369 (regOne!32368 r!7292)))) b!5862838))

(declare-fun e!3594656 () Bool)

(assert (=> b!5861989 (= tp!1621443 e!3594656)))

(declare-fun b!5862839 () Bool)

(assert (=> b!5862839 (= e!3594656 tp_is_empty!41109)))

(declare-fun b!5862840 () Bool)

(declare-fun tp!1621568 () Bool)

(declare-fun tp!1621566 () Bool)

(assert (=> b!5862840 (= e!3594656 (and tp!1621568 tp!1621566))))

(declare-fun b!5862842 () Bool)

(declare-fun tp!1621567 () Bool)

(declare-fun tp!1621570 () Bool)

(assert (=> b!5862842 (= e!3594656 (and tp!1621567 tp!1621570))))

(declare-fun b!5862841 () Bool)

(declare-fun tp!1621569 () Bool)

(assert (=> b!5862841 (= e!3594656 tp!1621569)))

(assert (= (and b!5861989 (is-ElementMatch!15928 (regTwo!32369 (regOne!32368 r!7292)))) b!5862839))

(assert (= (and b!5861989 (is-Concat!24773 (regTwo!32369 (regOne!32368 r!7292)))) b!5862840))

(assert (= (and b!5861989 (is-Star!15928 (regTwo!32369 (regOne!32368 r!7292)))) b!5862841))

(assert (= (and b!5861989 (is-Union!15928 (regTwo!32369 (regOne!32368 r!7292)))) b!5862842))

(declare-fun e!3594657 () Bool)

(assert (=> b!5862033 (= tp!1621478 e!3594657)))

(declare-fun b!5862843 () Bool)

(assert (=> b!5862843 (= e!3594657 tp_is_empty!41109)))

(declare-fun b!5862844 () Bool)

(declare-fun tp!1621573 () Bool)

(declare-fun tp!1621571 () Bool)

(assert (=> b!5862844 (= e!3594657 (and tp!1621573 tp!1621571))))

(declare-fun b!5862846 () Bool)

(declare-fun tp!1621572 () Bool)

(declare-fun tp!1621575 () Bool)

(assert (=> b!5862846 (= e!3594657 (and tp!1621572 tp!1621575))))

(declare-fun b!5862845 () Bool)

(declare-fun tp!1621574 () Bool)

(assert (=> b!5862845 (= e!3594657 tp!1621574)))

(assert (= (and b!5862033 (is-ElementMatch!15928 (regOne!32369 (regOne!32369 r!7292)))) b!5862843))

(assert (= (and b!5862033 (is-Concat!24773 (regOne!32369 (regOne!32369 r!7292)))) b!5862844))

(assert (= (and b!5862033 (is-Star!15928 (regOne!32369 (regOne!32369 r!7292)))) b!5862845))

(assert (= (and b!5862033 (is-Union!15928 (regOne!32369 (regOne!32369 r!7292)))) b!5862846))

(declare-fun e!3594658 () Bool)

(assert (=> b!5862033 (= tp!1621481 e!3594658)))

(declare-fun b!5862847 () Bool)

(assert (=> b!5862847 (= e!3594658 tp_is_empty!41109)))

(declare-fun b!5862848 () Bool)

(declare-fun tp!1621578 () Bool)

(declare-fun tp!1621576 () Bool)

(assert (=> b!5862848 (= e!3594658 (and tp!1621578 tp!1621576))))

(declare-fun b!5862850 () Bool)

(declare-fun tp!1621577 () Bool)

(declare-fun tp!1621580 () Bool)

(assert (=> b!5862850 (= e!3594658 (and tp!1621577 tp!1621580))))

(declare-fun b!5862849 () Bool)

(declare-fun tp!1621579 () Bool)

(assert (=> b!5862849 (= e!3594658 tp!1621579)))

(assert (= (and b!5862033 (is-ElementMatch!15928 (regTwo!32369 (regOne!32369 r!7292)))) b!5862847))

(assert (= (and b!5862033 (is-Concat!24773 (regTwo!32369 (regOne!32369 r!7292)))) b!5862848))

(assert (= (and b!5862033 (is-Star!15928 (regTwo!32369 (regOne!32369 r!7292)))) b!5862849))

(assert (= (and b!5862033 (is-Union!15928 (regTwo!32369 (regOne!32369 r!7292)))) b!5862850))

(declare-fun b!5862851 () Bool)

(declare-fun e!3594659 () Bool)

(declare-fun tp!1621581 () Bool)

(assert (=> b!5862851 (= e!3594659 (and tp_is_empty!41109 tp!1621581))))

(assert (=> b!5862004 (= tp!1621459 e!3594659)))

(assert (= (and b!5862004 (is-Cons!63961 (t!377458 (t!377458 s!2326)))) b!5862851))

(declare-fun e!3594660 () Bool)

(assert (=> b!5862032 (= tp!1621480 e!3594660)))

(declare-fun b!5862852 () Bool)

(assert (=> b!5862852 (= e!3594660 tp_is_empty!41109)))

(declare-fun b!5862853 () Bool)

(declare-fun tp!1621584 () Bool)

(declare-fun tp!1621582 () Bool)

(assert (=> b!5862853 (= e!3594660 (and tp!1621584 tp!1621582))))

(declare-fun b!5862855 () Bool)

(declare-fun tp!1621583 () Bool)

(declare-fun tp!1621586 () Bool)

(assert (=> b!5862855 (= e!3594660 (and tp!1621583 tp!1621586))))

(declare-fun b!5862854 () Bool)

(declare-fun tp!1621585 () Bool)

(assert (=> b!5862854 (= e!3594660 tp!1621585)))

(assert (= (and b!5862032 (is-ElementMatch!15928 (reg!16257 (regOne!32369 r!7292)))) b!5862852))

(assert (= (and b!5862032 (is-Concat!24773 (reg!16257 (regOne!32369 r!7292)))) b!5862853))

(assert (= (and b!5862032 (is-Star!15928 (reg!16257 (regOne!32369 r!7292)))) b!5862854))

(assert (= (and b!5862032 (is-Union!15928 (reg!16257 (regOne!32369 r!7292)))) b!5862855))

(declare-fun e!3594661 () Bool)

(assert (=> b!5862031 (= tp!1621479 e!3594661)))

(declare-fun b!5862856 () Bool)

(assert (=> b!5862856 (= e!3594661 tp_is_empty!41109)))

(declare-fun b!5862857 () Bool)

(declare-fun tp!1621589 () Bool)

(declare-fun tp!1621587 () Bool)

(assert (=> b!5862857 (= e!3594661 (and tp!1621589 tp!1621587))))

(declare-fun b!5862859 () Bool)

(declare-fun tp!1621588 () Bool)

(declare-fun tp!1621591 () Bool)

(assert (=> b!5862859 (= e!3594661 (and tp!1621588 tp!1621591))))

(declare-fun b!5862858 () Bool)

(declare-fun tp!1621590 () Bool)

(assert (=> b!5862858 (= e!3594661 tp!1621590)))

(assert (= (and b!5862031 (is-ElementMatch!15928 (regOne!32368 (regOne!32369 r!7292)))) b!5862856))

(assert (= (and b!5862031 (is-Concat!24773 (regOne!32368 (regOne!32369 r!7292)))) b!5862857))

(assert (= (and b!5862031 (is-Star!15928 (regOne!32368 (regOne!32369 r!7292)))) b!5862858))

(assert (= (and b!5862031 (is-Union!15928 (regOne!32368 (regOne!32369 r!7292)))) b!5862859))

(declare-fun e!3594662 () Bool)

(assert (=> b!5862031 (= tp!1621477 e!3594662)))

(declare-fun b!5862860 () Bool)

(assert (=> b!5862860 (= e!3594662 tp_is_empty!41109)))

(declare-fun b!5862861 () Bool)

(declare-fun tp!1621594 () Bool)

(declare-fun tp!1621592 () Bool)

(assert (=> b!5862861 (= e!3594662 (and tp!1621594 tp!1621592))))

(declare-fun b!5862863 () Bool)

(declare-fun tp!1621593 () Bool)

(declare-fun tp!1621596 () Bool)

(assert (=> b!5862863 (= e!3594662 (and tp!1621593 tp!1621596))))

(declare-fun b!5862862 () Bool)

(declare-fun tp!1621595 () Bool)

(assert (=> b!5862862 (= e!3594662 tp!1621595)))

(assert (= (and b!5862031 (is-ElementMatch!15928 (regTwo!32368 (regOne!32369 r!7292)))) b!5862860))

(assert (= (and b!5862031 (is-Concat!24773 (regTwo!32368 (regOne!32369 r!7292)))) b!5862861))

(assert (= (and b!5862031 (is-Star!15928 (regTwo!32368 (regOne!32369 r!7292)))) b!5862862))

(assert (= (and b!5862031 (is-Union!15928 (regTwo!32368 (regOne!32369 r!7292)))) b!5862863))

(declare-fun condSetEmpty!39768 () Bool)

(assert (=> setNonEmpty!39759 (= condSetEmpty!39768 (= setRest!39759 (as set.empty (Set Context!10624))))))

(declare-fun setRes!39768 () Bool)

(assert (=> setNonEmpty!39759 (= tp!1621465 setRes!39768)))

(declare-fun setIsEmpty!39768 () Bool)

(assert (=> setIsEmpty!39768 setRes!39768))

(declare-fun setNonEmpty!39768 () Bool)

(declare-fun e!3594663 () Bool)

(declare-fun setElem!39768 () Context!10624)

(declare-fun tp!1621598 () Bool)

(assert (=> setNonEmpty!39768 (= setRes!39768 (and tp!1621598 (inv!83068 setElem!39768) e!3594663))))

(declare-fun setRest!39768 () (Set Context!10624))

(assert (=> setNonEmpty!39768 (= setRest!39759 (set.union (set.insert setElem!39768 (as set.empty (Set Context!10624))) setRest!39768))))

(declare-fun b!5862864 () Bool)

(declare-fun tp!1621597 () Bool)

(assert (=> b!5862864 (= e!3594663 tp!1621597)))

(assert (= (and setNonEmpty!39759 condSetEmpty!39768) setIsEmpty!39768))

(assert (= (and setNonEmpty!39759 (not condSetEmpty!39768)) setNonEmpty!39768))

(assert (= setNonEmpty!39768 b!5862864))

(declare-fun m!6779466 () Bool)

(assert (=> setNonEmpty!39768 m!6779466))

(declare-fun e!3594664 () Bool)

(assert (=> b!5861988 (= tp!1621442 e!3594664)))

(declare-fun b!5862865 () Bool)

(assert (=> b!5862865 (= e!3594664 tp_is_empty!41109)))

(declare-fun b!5862866 () Bool)

(declare-fun tp!1621601 () Bool)

(declare-fun tp!1621599 () Bool)

(assert (=> b!5862866 (= e!3594664 (and tp!1621601 tp!1621599))))

(declare-fun b!5862868 () Bool)

(declare-fun tp!1621600 () Bool)

(declare-fun tp!1621603 () Bool)

(assert (=> b!5862868 (= e!3594664 (and tp!1621600 tp!1621603))))

(declare-fun b!5862867 () Bool)

(declare-fun tp!1621602 () Bool)

(assert (=> b!5862867 (= e!3594664 tp!1621602)))

(assert (= (and b!5861988 (is-ElementMatch!15928 (reg!16257 (regOne!32368 r!7292)))) b!5862865))

(assert (= (and b!5861988 (is-Concat!24773 (reg!16257 (regOne!32368 r!7292)))) b!5862866))

(assert (= (and b!5861988 (is-Star!15928 (reg!16257 (regOne!32368 r!7292)))) b!5862867))

(assert (= (and b!5861988 (is-Union!15928 (reg!16257 (regOne!32368 r!7292)))) b!5862868))

(declare-fun e!3594665 () Bool)

(assert (=> b!5861987 (= tp!1621441 e!3594665)))

(declare-fun b!5862869 () Bool)

(assert (=> b!5862869 (= e!3594665 tp_is_empty!41109)))

(declare-fun b!5862870 () Bool)

(declare-fun tp!1621606 () Bool)

(declare-fun tp!1621604 () Bool)

(assert (=> b!5862870 (= e!3594665 (and tp!1621606 tp!1621604))))

(declare-fun b!5862872 () Bool)

(declare-fun tp!1621605 () Bool)

(declare-fun tp!1621608 () Bool)

(assert (=> b!5862872 (= e!3594665 (and tp!1621605 tp!1621608))))

(declare-fun b!5862871 () Bool)

(declare-fun tp!1621607 () Bool)

(assert (=> b!5862871 (= e!3594665 tp!1621607)))

(assert (= (and b!5861987 (is-ElementMatch!15928 (regOne!32368 (regOne!32368 r!7292)))) b!5862869))

(assert (= (and b!5861987 (is-Concat!24773 (regOne!32368 (regOne!32368 r!7292)))) b!5862870))

(assert (= (and b!5861987 (is-Star!15928 (regOne!32368 (regOne!32368 r!7292)))) b!5862871))

(assert (= (and b!5861987 (is-Union!15928 (regOne!32368 (regOne!32368 r!7292)))) b!5862872))

(declare-fun e!3594666 () Bool)

(assert (=> b!5861987 (= tp!1621439 e!3594666)))

(declare-fun b!5862873 () Bool)

(assert (=> b!5862873 (= e!3594666 tp_is_empty!41109)))

(declare-fun b!5862874 () Bool)

(declare-fun tp!1621611 () Bool)

(declare-fun tp!1621609 () Bool)

(assert (=> b!5862874 (= e!3594666 (and tp!1621611 tp!1621609))))

(declare-fun b!5862876 () Bool)

(declare-fun tp!1621610 () Bool)

(declare-fun tp!1621613 () Bool)

(assert (=> b!5862876 (= e!3594666 (and tp!1621610 tp!1621613))))

(declare-fun b!5862875 () Bool)

(declare-fun tp!1621612 () Bool)

(assert (=> b!5862875 (= e!3594666 tp!1621612)))

(assert (= (and b!5861987 (is-ElementMatch!15928 (regTwo!32368 (regOne!32368 r!7292)))) b!5862873))

(assert (= (and b!5861987 (is-Concat!24773 (regTwo!32368 (regOne!32368 r!7292)))) b!5862874))

(assert (= (and b!5861987 (is-Star!15928 (regTwo!32368 (regOne!32368 r!7292)))) b!5862875))

(assert (= (and b!5861987 (is-Union!15928 (regTwo!32368 (regOne!32368 r!7292)))) b!5862876))

(declare-fun b!5862877 () Bool)

(declare-fun e!3594667 () Bool)

(declare-fun tp!1621614 () Bool)

(declare-fun tp!1621615 () Bool)

(assert (=> b!5862877 (= e!3594667 (and tp!1621614 tp!1621615))))

(assert (=> b!5862009 (= tp!1621464 e!3594667)))

(assert (= (and b!5862009 (is-Cons!63959 (exprs!5812 setElem!39759))) b!5862877))

(declare-fun e!3594668 () Bool)

(assert (=> b!5861999 (= tp!1621455 e!3594668)))

(declare-fun b!5862878 () Bool)

(assert (=> b!5862878 (= e!3594668 tp_is_empty!41109)))

(declare-fun b!5862879 () Bool)

(declare-fun tp!1621618 () Bool)

(declare-fun tp!1621616 () Bool)

(assert (=> b!5862879 (= e!3594668 (and tp!1621618 tp!1621616))))

(declare-fun b!5862881 () Bool)

(declare-fun tp!1621617 () Bool)

(declare-fun tp!1621620 () Bool)

(assert (=> b!5862881 (= e!3594668 (and tp!1621617 tp!1621620))))

(declare-fun b!5862880 () Bool)

(declare-fun tp!1621619 () Bool)

(assert (=> b!5862880 (= e!3594668 tp!1621619)))

(assert (= (and b!5861999 (is-ElementMatch!15928 (h!70407 (exprs!5812 (h!70408 zl!343))))) b!5862878))

(assert (= (and b!5861999 (is-Concat!24773 (h!70407 (exprs!5812 (h!70408 zl!343))))) b!5862879))

(assert (= (and b!5861999 (is-Star!15928 (h!70407 (exprs!5812 (h!70408 zl!343))))) b!5862880))

(assert (= (and b!5861999 (is-Union!15928 (h!70407 (exprs!5812 (h!70408 zl!343))))) b!5862881))

(declare-fun b!5862882 () Bool)

(declare-fun e!3594669 () Bool)

(declare-fun tp!1621621 () Bool)

(declare-fun tp!1621622 () Bool)

(assert (=> b!5862882 (= e!3594669 (and tp!1621621 tp!1621622))))

(assert (=> b!5861999 (= tp!1621456 e!3594669)))

(assert (= (and b!5861999 (is-Cons!63959 (t!377456 (exprs!5812 (h!70408 zl!343))))) b!5862882))

(declare-fun e!3594670 () Bool)

(assert (=> b!5862011 (= tp!1621468 e!3594670)))

(declare-fun b!5862883 () Bool)

(assert (=> b!5862883 (= e!3594670 tp_is_empty!41109)))

(declare-fun b!5862884 () Bool)

(declare-fun tp!1621625 () Bool)

(declare-fun tp!1621623 () Bool)

(assert (=> b!5862884 (= e!3594670 (and tp!1621625 tp!1621623))))

(declare-fun b!5862886 () Bool)

(declare-fun tp!1621624 () Bool)

(declare-fun tp!1621627 () Bool)

(assert (=> b!5862886 (= e!3594670 (and tp!1621624 tp!1621627))))

(declare-fun b!5862885 () Bool)

(declare-fun tp!1621626 () Bool)

(assert (=> b!5862885 (= e!3594670 tp!1621626)))

(assert (= (and b!5862011 (is-ElementMatch!15928 (regOne!32368 (reg!16257 r!7292)))) b!5862883))

(assert (= (and b!5862011 (is-Concat!24773 (regOne!32368 (reg!16257 r!7292)))) b!5862884))

(assert (= (and b!5862011 (is-Star!15928 (regOne!32368 (reg!16257 r!7292)))) b!5862885))

(assert (= (and b!5862011 (is-Union!15928 (regOne!32368 (reg!16257 r!7292)))) b!5862886))

(declare-fun e!3594671 () Bool)

(assert (=> b!5862011 (= tp!1621466 e!3594671)))

(declare-fun b!5862887 () Bool)

(assert (=> b!5862887 (= e!3594671 tp_is_empty!41109)))

(declare-fun b!5862888 () Bool)

(declare-fun tp!1621630 () Bool)

(declare-fun tp!1621628 () Bool)

(assert (=> b!5862888 (= e!3594671 (and tp!1621630 tp!1621628))))

(declare-fun b!5862890 () Bool)

(declare-fun tp!1621629 () Bool)

(declare-fun tp!1621632 () Bool)

(assert (=> b!5862890 (= e!3594671 (and tp!1621629 tp!1621632))))

(declare-fun b!5862889 () Bool)

(declare-fun tp!1621631 () Bool)

(assert (=> b!5862889 (= e!3594671 tp!1621631)))

(assert (= (and b!5862011 (is-ElementMatch!15928 (regTwo!32368 (reg!16257 r!7292)))) b!5862887))

(assert (= (and b!5862011 (is-Concat!24773 (regTwo!32368 (reg!16257 r!7292)))) b!5862888))

(assert (= (and b!5862011 (is-Star!15928 (regTwo!32368 (reg!16257 r!7292)))) b!5862889))

(assert (= (and b!5862011 (is-Union!15928 (regTwo!32368 (reg!16257 r!7292)))) b!5862890))

(declare-fun e!3594672 () Bool)

(assert (=> b!5862043 (= tp!1621483 e!3594672)))

(declare-fun b!5862891 () Bool)

(assert (=> b!5862891 (= e!3594672 tp_is_empty!41109)))

(declare-fun b!5862892 () Bool)

(declare-fun tp!1621635 () Bool)

(declare-fun tp!1621633 () Bool)

(assert (=> b!5862892 (= e!3594672 (and tp!1621635 tp!1621633))))

(declare-fun b!5862894 () Bool)

(declare-fun tp!1621634 () Bool)

(declare-fun tp!1621637 () Bool)

(assert (=> b!5862894 (= e!3594672 (and tp!1621634 tp!1621637))))

(declare-fun b!5862893 () Bool)

(declare-fun tp!1621636 () Bool)

(assert (=> b!5862893 (= e!3594672 tp!1621636)))

(assert (= (and b!5862043 (is-ElementMatch!15928 (regOne!32369 (regTwo!32369 r!7292)))) b!5862891))

(assert (= (and b!5862043 (is-Concat!24773 (regOne!32369 (regTwo!32369 r!7292)))) b!5862892))

(assert (= (and b!5862043 (is-Star!15928 (regOne!32369 (regTwo!32369 r!7292)))) b!5862893))

(assert (= (and b!5862043 (is-Union!15928 (regOne!32369 (regTwo!32369 r!7292)))) b!5862894))

(declare-fun e!3594673 () Bool)

(assert (=> b!5862043 (= tp!1621486 e!3594673)))

(declare-fun b!5862895 () Bool)

(assert (=> b!5862895 (= e!3594673 tp_is_empty!41109)))

(declare-fun b!5862896 () Bool)

(declare-fun tp!1621640 () Bool)

(declare-fun tp!1621638 () Bool)

(assert (=> b!5862896 (= e!3594673 (and tp!1621640 tp!1621638))))

(declare-fun b!5862898 () Bool)

(declare-fun tp!1621639 () Bool)

(declare-fun tp!1621642 () Bool)

(assert (=> b!5862898 (= e!3594673 (and tp!1621639 tp!1621642))))

(declare-fun b!5862897 () Bool)

(declare-fun tp!1621641 () Bool)

(assert (=> b!5862897 (= e!3594673 tp!1621641)))

(assert (= (and b!5862043 (is-ElementMatch!15928 (regTwo!32369 (regTwo!32369 r!7292)))) b!5862895))

(assert (= (and b!5862043 (is-Concat!24773 (regTwo!32369 (regTwo!32369 r!7292)))) b!5862896))

(assert (= (and b!5862043 (is-Star!15928 (regTwo!32369 (regTwo!32369 r!7292)))) b!5862897))

(assert (= (and b!5862043 (is-Union!15928 (regTwo!32369 (regTwo!32369 r!7292)))) b!5862898))

(declare-fun b!5862900 () Bool)

(declare-fun e!3594675 () Bool)

(declare-fun tp!1621643 () Bool)

(assert (=> b!5862900 (= e!3594675 tp!1621643)))

(declare-fun e!3594674 () Bool)

(declare-fun tp!1621644 () Bool)

(declare-fun b!5862899 () Bool)

(assert (=> b!5862899 (= e!3594674 (and (inv!83068 (h!70408 (t!377457 (t!377457 zl!343)))) e!3594675 tp!1621644))))

(assert (=> b!5862026 (= tp!1621476 e!3594674)))

(assert (= b!5862899 b!5862900))

(assert (= (and b!5862026 (is-Cons!63960 (t!377457 (t!377457 zl!343)))) b!5862899))

(declare-fun m!6779468 () Bool)

(assert (=> b!5862899 m!6779468))

(declare-fun e!3594676 () Bool)

(assert (=> b!5861998 (= tp!1621453 e!3594676)))

(declare-fun b!5862901 () Bool)

(assert (=> b!5862901 (= e!3594676 tp_is_empty!41109)))

(declare-fun b!5862902 () Bool)

(declare-fun tp!1621647 () Bool)

(declare-fun tp!1621645 () Bool)

(assert (=> b!5862902 (= e!3594676 (and tp!1621647 tp!1621645))))

(declare-fun b!5862904 () Bool)

(declare-fun tp!1621646 () Bool)

(declare-fun tp!1621649 () Bool)

(assert (=> b!5862904 (= e!3594676 (and tp!1621646 tp!1621649))))

(declare-fun b!5862903 () Bool)

(declare-fun tp!1621648 () Bool)

(assert (=> b!5862903 (= e!3594676 tp!1621648)))

(assert (= (and b!5861998 (is-ElementMatch!15928 (h!70407 (exprs!5812 setElem!39753)))) b!5862901))

(assert (= (and b!5861998 (is-Concat!24773 (h!70407 (exprs!5812 setElem!39753)))) b!5862902))

(assert (= (and b!5861998 (is-Star!15928 (h!70407 (exprs!5812 setElem!39753)))) b!5862903))

(assert (= (and b!5861998 (is-Union!15928 (h!70407 (exprs!5812 setElem!39753)))) b!5862904))

(declare-fun b!5862905 () Bool)

(declare-fun e!3594677 () Bool)

(declare-fun tp!1621650 () Bool)

(declare-fun tp!1621651 () Bool)

(assert (=> b!5862905 (= e!3594677 (and tp!1621650 tp!1621651))))

(assert (=> b!5861998 (= tp!1621454 e!3594677)))

(assert (= (and b!5861998 (is-Cons!63959 (t!377456 (exprs!5812 setElem!39753)))) b!5862905))

(declare-fun e!3594678 () Bool)

(assert (=> b!5862042 (= tp!1621485 e!3594678)))

(declare-fun b!5862906 () Bool)

(assert (=> b!5862906 (= e!3594678 tp_is_empty!41109)))

(declare-fun b!5862907 () Bool)

(declare-fun tp!1621654 () Bool)

(declare-fun tp!1621652 () Bool)

(assert (=> b!5862907 (= e!3594678 (and tp!1621654 tp!1621652))))

(declare-fun b!5862909 () Bool)

(declare-fun tp!1621653 () Bool)

(declare-fun tp!1621656 () Bool)

(assert (=> b!5862909 (= e!3594678 (and tp!1621653 tp!1621656))))

(declare-fun b!5862908 () Bool)

(declare-fun tp!1621655 () Bool)

(assert (=> b!5862908 (= e!3594678 tp!1621655)))

(assert (= (and b!5862042 (is-ElementMatch!15928 (reg!16257 (regTwo!32369 r!7292)))) b!5862906))

(assert (= (and b!5862042 (is-Concat!24773 (reg!16257 (regTwo!32369 r!7292)))) b!5862907))

(assert (= (and b!5862042 (is-Star!15928 (reg!16257 (regTwo!32369 r!7292)))) b!5862908))

(assert (= (and b!5862042 (is-Union!15928 (reg!16257 (regTwo!32369 r!7292)))) b!5862909))

(declare-fun e!3594679 () Bool)

(assert (=> b!5862041 (= tp!1621484 e!3594679)))

(declare-fun b!5862910 () Bool)

(assert (=> b!5862910 (= e!3594679 tp_is_empty!41109)))

(declare-fun b!5862911 () Bool)

(declare-fun tp!1621659 () Bool)

(declare-fun tp!1621657 () Bool)

(assert (=> b!5862911 (= e!3594679 (and tp!1621659 tp!1621657))))

(declare-fun b!5862913 () Bool)

(declare-fun tp!1621658 () Bool)

(declare-fun tp!1621661 () Bool)

(assert (=> b!5862913 (= e!3594679 (and tp!1621658 tp!1621661))))

(declare-fun b!5862912 () Bool)

(declare-fun tp!1621660 () Bool)

(assert (=> b!5862912 (= e!3594679 tp!1621660)))

(assert (= (and b!5862041 (is-ElementMatch!15928 (regOne!32368 (regTwo!32369 r!7292)))) b!5862910))

(assert (= (and b!5862041 (is-Concat!24773 (regOne!32368 (regTwo!32369 r!7292)))) b!5862911))

(assert (= (and b!5862041 (is-Star!15928 (regOne!32368 (regTwo!32369 r!7292)))) b!5862912))

(assert (= (and b!5862041 (is-Union!15928 (regOne!32368 (regTwo!32369 r!7292)))) b!5862913))

(declare-fun e!3594680 () Bool)

(assert (=> b!5862041 (= tp!1621482 e!3594680)))

(declare-fun b!5862914 () Bool)

(assert (=> b!5862914 (= e!3594680 tp_is_empty!41109)))

(declare-fun b!5862915 () Bool)

(declare-fun tp!1621664 () Bool)

(declare-fun tp!1621662 () Bool)

(assert (=> b!5862915 (= e!3594680 (and tp!1621664 tp!1621662))))

(declare-fun b!5862917 () Bool)

(declare-fun tp!1621663 () Bool)

(declare-fun tp!1621666 () Bool)

(assert (=> b!5862917 (= e!3594680 (and tp!1621663 tp!1621666))))

(declare-fun b!5862916 () Bool)

(declare-fun tp!1621665 () Bool)

(assert (=> b!5862916 (= e!3594680 tp!1621665)))

(assert (= (and b!5862041 (is-ElementMatch!15928 (regTwo!32368 (regTwo!32369 r!7292)))) b!5862914))

(assert (= (and b!5862041 (is-Concat!24773 (regTwo!32368 (regTwo!32369 r!7292)))) b!5862915))

(assert (= (and b!5862041 (is-Star!15928 (regTwo!32368 (regTwo!32369 r!7292)))) b!5862916))

(assert (= (and b!5862041 (is-Union!15928 (regTwo!32368 (regTwo!32369 r!7292)))) b!5862917))

(declare-fun e!3594681 () Bool)

(assert (=> b!5861993 (= tp!1621445 e!3594681)))

(declare-fun b!5862918 () Bool)

(assert (=> b!5862918 (= e!3594681 tp_is_empty!41109)))

(declare-fun b!5862919 () Bool)

(declare-fun tp!1621669 () Bool)

(declare-fun tp!1621667 () Bool)

(assert (=> b!5862919 (= e!3594681 (and tp!1621669 tp!1621667))))

(declare-fun b!5862921 () Bool)

(declare-fun tp!1621668 () Bool)

(declare-fun tp!1621671 () Bool)

(assert (=> b!5862921 (= e!3594681 (and tp!1621668 tp!1621671))))

(declare-fun b!5862920 () Bool)

(declare-fun tp!1621670 () Bool)

(assert (=> b!5862920 (= e!3594681 tp!1621670)))

(assert (= (and b!5861993 (is-ElementMatch!15928 (regOne!32369 (regTwo!32368 r!7292)))) b!5862918))

(assert (= (and b!5861993 (is-Concat!24773 (regOne!32369 (regTwo!32368 r!7292)))) b!5862919))

(assert (= (and b!5861993 (is-Star!15928 (regOne!32369 (regTwo!32368 r!7292)))) b!5862920))

(assert (= (and b!5861993 (is-Union!15928 (regOne!32369 (regTwo!32368 r!7292)))) b!5862921))

(declare-fun e!3594682 () Bool)

(assert (=> b!5861993 (= tp!1621448 e!3594682)))

(declare-fun b!5862922 () Bool)

(assert (=> b!5862922 (= e!3594682 tp_is_empty!41109)))

(declare-fun b!5862923 () Bool)

(declare-fun tp!1621674 () Bool)

(declare-fun tp!1621672 () Bool)

(assert (=> b!5862923 (= e!3594682 (and tp!1621674 tp!1621672))))

(declare-fun b!5862925 () Bool)

(declare-fun tp!1621673 () Bool)

(declare-fun tp!1621676 () Bool)

(assert (=> b!5862925 (= e!3594682 (and tp!1621673 tp!1621676))))

(declare-fun b!5862924 () Bool)

(declare-fun tp!1621675 () Bool)

(assert (=> b!5862924 (= e!3594682 tp!1621675)))

(assert (= (and b!5861993 (is-ElementMatch!15928 (regTwo!32369 (regTwo!32368 r!7292)))) b!5862922))

(assert (= (and b!5861993 (is-Concat!24773 (regTwo!32369 (regTwo!32368 r!7292)))) b!5862923))

(assert (= (and b!5861993 (is-Star!15928 (regTwo!32369 (regTwo!32368 r!7292)))) b!5862924))

(assert (= (and b!5861993 (is-Union!15928 (regTwo!32369 (regTwo!32368 r!7292)))) b!5862925))

(declare-fun e!3594683 () Bool)

(assert (=> b!5862013 (= tp!1621467 e!3594683)))

(declare-fun b!5862926 () Bool)

(assert (=> b!5862926 (= e!3594683 tp_is_empty!41109)))

(declare-fun b!5862927 () Bool)

(declare-fun tp!1621679 () Bool)

(declare-fun tp!1621677 () Bool)

(assert (=> b!5862927 (= e!3594683 (and tp!1621679 tp!1621677))))

(declare-fun b!5862929 () Bool)

(declare-fun tp!1621678 () Bool)

(declare-fun tp!1621681 () Bool)

(assert (=> b!5862929 (= e!3594683 (and tp!1621678 tp!1621681))))

(declare-fun b!5862928 () Bool)

(declare-fun tp!1621680 () Bool)

(assert (=> b!5862928 (= e!3594683 tp!1621680)))

(assert (= (and b!5862013 (is-ElementMatch!15928 (regOne!32369 (reg!16257 r!7292)))) b!5862926))

(assert (= (and b!5862013 (is-Concat!24773 (regOne!32369 (reg!16257 r!7292)))) b!5862927))

(assert (= (and b!5862013 (is-Star!15928 (regOne!32369 (reg!16257 r!7292)))) b!5862928))

(assert (= (and b!5862013 (is-Union!15928 (regOne!32369 (reg!16257 r!7292)))) b!5862929))

(declare-fun e!3594684 () Bool)

(assert (=> b!5862013 (= tp!1621470 e!3594684)))

(declare-fun b!5862930 () Bool)

(assert (=> b!5862930 (= e!3594684 tp_is_empty!41109)))

(declare-fun b!5862931 () Bool)

(declare-fun tp!1621684 () Bool)

(declare-fun tp!1621682 () Bool)

(assert (=> b!5862931 (= e!3594684 (and tp!1621684 tp!1621682))))

(declare-fun b!5862933 () Bool)

(declare-fun tp!1621683 () Bool)

(declare-fun tp!1621686 () Bool)

(assert (=> b!5862933 (= e!3594684 (and tp!1621683 tp!1621686))))

(declare-fun b!5862932 () Bool)

(declare-fun tp!1621685 () Bool)

(assert (=> b!5862932 (= e!3594684 tp!1621685)))

(assert (= (and b!5862013 (is-ElementMatch!15928 (regTwo!32369 (reg!16257 r!7292)))) b!5862930))

(assert (= (and b!5862013 (is-Concat!24773 (regTwo!32369 (reg!16257 r!7292)))) b!5862931))

(assert (= (and b!5862013 (is-Star!15928 (regTwo!32369 (reg!16257 r!7292)))) b!5862932))

(assert (= (and b!5862013 (is-Union!15928 (regTwo!32369 (reg!16257 r!7292)))) b!5862933))

(declare-fun e!3594685 () Bool)

(assert (=> b!5861992 (= tp!1621447 e!3594685)))

(declare-fun b!5862934 () Bool)

(assert (=> b!5862934 (= e!3594685 tp_is_empty!41109)))

(declare-fun b!5862935 () Bool)

(declare-fun tp!1621689 () Bool)

(declare-fun tp!1621687 () Bool)

(assert (=> b!5862935 (= e!3594685 (and tp!1621689 tp!1621687))))

(declare-fun b!5862937 () Bool)

(declare-fun tp!1621688 () Bool)

(declare-fun tp!1621691 () Bool)

(assert (=> b!5862937 (= e!3594685 (and tp!1621688 tp!1621691))))

(declare-fun b!5862936 () Bool)

(declare-fun tp!1621690 () Bool)

(assert (=> b!5862936 (= e!3594685 tp!1621690)))

(assert (= (and b!5861992 (is-ElementMatch!15928 (reg!16257 (regTwo!32368 r!7292)))) b!5862934))

(assert (= (and b!5861992 (is-Concat!24773 (reg!16257 (regTwo!32368 r!7292)))) b!5862935))

(assert (= (and b!5861992 (is-Star!15928 (reg!16257 (regTwo!32368 r!7292)))) b!5862936))

(assert (= (and b!5861992 (is-Union!15928 (reg!16257 (regTwo!32368 r!7292)))) b!5862937))

(declare-fun e!3594686 () Bool)

(assert (=> b!5862012 (= tp!1621469 e!3594686)))

(declare-fun b!5862938 () Bool)

(assert (=> b!5862938 (= e!3594686 tp_is_empty!41109)))

(declare-fun b!5862939 () Bool)

(declare-fun tp!1621694 () Bool)

(declare-fun tp!1621692 () Bool)

(assert (=> b!5862939 (= e!3594686 (and tp!1621694 tp!1621692))))

(declare-fun b!5862941 () Bool)

(declare-fun tp!1621693 () Bool)

(declare-fun tp!1621696 () Bool)

(assert (=> b!5862941 (= e!3594686 (and tp!1621693 tp!1621696))))

(declare-fun b!5862940 () Bool)

(declare-fun tp!1621695 () Bool)

(assert (=> b!5862940 (= e!3594686 tp!1621695)))

(assert (= (and b!5862012 (is-ElementMatch!15928 (reg!16257 (reg!16257 r!7292)))) b!5862938))

(assert (= (and b!5862012 (is-Concat!24773 (reg!16257 (reg!16257 r!7292)))) b!5862939))

(assert (= (and b!5862012 (is-Star!15928 (reg!16257 (reg!16257 r!7292)))) b!5862940))

(assert (= (and b!5862012 (is-Union!15928 (reg!16257 (reg!16257 r!7292)))) b!5862941))

(declare-fun b!5862942 () Bool)

(declare-fun e!3594687 () Bool)

(declare-fun tp!1621697 () Bool)

(declare-fun tp!1621698 () Bool)

(assert (=> b!5862942 (= e!3594687 (and tp!1621697 tp!1621698))))

(assert (=> b!5862027 (= tp!1621475 e!3594687)))

(assert (= (and b!5862027 (is-Cons!63959 (exprs!5812 (h!70408 (t!377457 zl!343))))) b!5862942))

(declare-fun e!3594688 () Bool)

(assert (=> b!5861991 (= tp!1621446 e!3594688)))

(declare-fun b!5862943 () Bool)

(assert (=> b!5862943 (= e!3594688 tp_is_empty!41109)))

(declare-fun b!5862944 () Bool)

(declare-fun tp!1621701 () Bool)

(declare-fun tp!1621699 () Bool)

(assert (=> b!5862944 (= e!3594688 (and tp!1621701 tp!1621699))))

(declare-fun b!5862946 () Bool)

(declare-fun tp!1621700 () Bool)

(declare-fun tp!1621703 () Bool)

(assert (=> b!5862946 (= e!3594688 (and tp!1621700 tp!1621703))))

(declare-fun b!5862945 () Bool)

(declare-fun tp!1621702 () Bool)

(assert (=> b!5862945 (= e!3594688 tp!1621702)))

(assert (= (and b!5861991 (is-ElementMatch!15928 (regOne!32368 (regTwo!32368 r!7292)))) b!5862943))

(assert (= (and b!5861991 (is-Concat!24773 (regOne!32368 (regTwo!32368 r!7292)))) b!5862944))

(assert (= (and b!5861991 (is-Star!15928 (regOne!32368 (regTwo!32368 r!7292)))) b!5862945))

(assert (= (and b!5861991 (is-Union!15928 (regOne!32368 (regTwo!32368 r!7292)))) b!5862946))

(declare-fun e!3594689 () Bool)

(assert (=> b!5861991 (= tp!1621444 e!3594689)))

(declare-fun b!5862947 () Bool)

(assert (=> b!5862947 (= e!3594689 tp_is_empty!41109)))

(declare-fun b!5862948 () Bool)

(declare-fun tp!1621706 () Bool)

(declare-fun tp!1621704 () Bool)

(assert (=> b!5862948 (= e!3594689 (and tp!1621706 tp!1621704))))

(declare-fun b!5862950 () Bool)

(declare-fun tp!1621705 () Bool)

(declare-fun tp!1621708 () Bool)

(assert (=> b!5862950 (= e!3594689 (and tp!1621705 tp!1621708))))

(declare-fun b!5862949 () Bool)

(declare-fun tp!1621707 () Bool)

(assert (=> b!5862949 (= e!3594689 tp!1621707)))

(assert (= (and b!5861991 (is-ElementMatch!15928 (regTwo!32368 (regTwo!32368 r!7292)))) b!5862947))

(assert (= (and b!5861991 (is-Concat!24773 (regTwo!32368 (regTwo!32368 r!7292)))) b!5862948))

(assert (= (and b!5861991 (is-Star!15928 (regTwo!32368 (regTwo!32368 r!7292)))) b!5862949))

(assert (= (and b!5861991 (is-Union!15928 (regTwo!32368 (regTwo!32368 r!7292)))) b!5862950))

(declare-fun b_lambda!220695 () Bool)

(assert (= b_lambda!220689 (or d!1840888 b_lambda!220695)))

(declare-fun bs!1381329 () Bool)

(declare-fun d!1841206 () Bool)

(assert (= bs!1381329 (and d!1841206 d!1840888)))

(assert (=> bs!1381329 (= (dynLambda!25013 lambda!320535 (h!70407 (exprs!5812 (h!70408 zl!343)))) (validRegex!7664 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(declare-fun m!6779470 () Bool)

(assert (=> bs!1381329 m!6779470))

(assert (=> b!5862753 d!1841206))

(declare-fun b_lambda!220697 () Bool)

(assert (= b_lambda!220677 (or d!1840824 b_lambda!220697)))

(declare-fun bs!1381330 () Bool)

(declare-fun d!1841208 () Bool)

(assert (= bs!1381330 (and d!1841208 d!1840824)))

(assert (=> bs!1381330 (= (dynLambda!25013 lambda!320520 (h!70407 (exprs!5812 (h!70408 zl!343)))) (validRegex!7664 (h!70407 (exprs!5812 (h!70408 zl!343)))))))

(assert (=> bs!1381330 m!6779470))

(assert (=> b!5862438 d!1841208))

(declare-fun b_lambda!220699 () Bool)

(assert (= b_lambda!220679 (or d!1840818 b_lambda!220699)))

(declare-fun bs!1381331 () Bool)

(declare-fun d!1841210 () Bool)

(assert (= bs!1381331 (and d!1841210 d!1840818)))

(assert (=> bs!1381331 (= (dynLambda!25013 lambda!320514 (h!70407 lt!2305633)) (validRegex!7664 (h!70407 lt!2305633)))))

(declare-fun m!6779472 () Bool)

(assert (=> bs!1381331 m!6779472))

(assert (=> b!5862526 d!1841210))

(declare-fun b_lambda!220701 () Bool)

(assert (= b_lambda!220683 (or b!5861545 b_lambda!220701)))

(assert (=> d!1841056 d!1840892))

(declare-fun b_lambda!220703 () Bool)

(assert (= b_lambda!220685 (or b!5861545 b_lambda!220703)))

(assert (=> d!1841080 d!1840894))

(declare-fun b_lambda!220705 () Bool)

(assert (= b_lambda!220691 (or b!5861545 b_lambda!220705)))

(assert (=> d!1841128 d!1840890))

(declare-fun b_lambda!220707 () Bool)

(assert (= b_lambda!220681 (or d!1840820 b_lambda!220707)))

(declare-fun bs!1381332 () Bool)

(declare-fun d!1841212 () Bool)

(assert (= bs!1381332 (and d!1841212 d!1840820)))

(assert (=> bs!1381332 (= (dynLambda!25013 lambda!320517 (h!70407 (exprs!5812 setElem!39753))) (validRegex!7664 (h!70407 (exprs!5812 setElem!39753))))))

(declare-fun m!6779474 () Bool)

(assert (=> bs!1381332 m!6779474))

(assert (=> b!5862581 d!1841212))

(declare-fun b_lambda!220709 () Bool)

(assert (= b_lambda!220693 (or d!1840872 b_lambda!220709)))

(declare-fun bs!1381333 () Bool)

(declare-fun d!1841214 () Bool)

(assert (= bs!1381333 (and d!1841214 d!1840872)))

(assert (=> bs!1381333 (= (dynLambda!25013 lambda!320531 (h!70407 (exprs!5812 lt!2305536))) (validRegex!7664 (h!70407 (exprs!5812 lt!2305536))))))

(declare-fun m!6779476 () Bool)

(assert (=> bs!1381333 m!6779476))

(assert (=> b!5862776 d!1841214))

(declare-fun b_lambda!220711 () Bool)

(assert (= b_lambda!220687 (or d!1840816 b_lambda!220711)))

(declare-fun bs!1381334 () Bool)

(declare-fun d!1841216 () Bool)

(assert (= bs!1381334 (and d!1841216 d!1840816)))

(assert (=> bs!1381334 (= (dynLambda!25013 lambda!320511 (h!70407 (unfocusZipperList!1349 zl!343))) (validRegex!7664 (h!70407 (unfocusZipperList!1349 zl!343))))))

(declare-fun m!6779478 () Bool)

(assert (=> bs!1381334 m!6779478))

(assert (=> b!5862749 d!1841216))

(push 1)

(assert (not d!1841192))

(assert (not b!5862482))

(assert (not bm!459939))

(assert (not b!5862501))

(assert (not bm!459883))

(assert (not b!5862834))

(assert (not b!5862678))

(assert (not d!1841034))

(assert (not b!5862920))

(assert (not b!5862880))

(assert (not bm!459865))

(assert (not b!5862703))

(assert (not b!5862864))

(assert (not d!1841042))

(assert (not b!5862840))

(assert (not b!5862872))

(assert (not b_lambda!220661))

(assert (not bm!459903))

(assert (not b!5862896))

(assert (not b!5862516))

(assert (not b!5862576))

(assert (not b!5862890))

(assert (not b!5862854))

(assert (not bm!459893))

(assert (not b!5862893))

(assert (not b!5862533))

(assert (not b!5862855))

(assert (not bs!1381330))

(assert (not bm!459957))

(assert (not d!1841156))

(assert (not b!5862777))

(assert (not d!1841130))

(assert (not b!5862532))

(assert (not b!5862759))

(assert (not d!1841146))

(assert (not bs!1381332))

(assert (not b!5862876))

(assert (not b!5862937))

(assert (not b!5862790))

(assert (not d!1841190))

(assert (not b!5862929))

(assert (not b_lambda!220699))

(assert (not b!5862499))

(assert (not b!5862927))

(assert (not b!5862897))

(assert (not bm!459873))

(assert (not bm!459948))

(assert (not b!5862634))

(assert (not b!5862829))

(assert (not b!5862476))

(assert (not d!1841128))

(assert (not d!1841202))

(assert (not bm!459856))

(assert (not b!5862606))

(assert (not b!5862728))

(assert (not bm!459950))

(assert (not b!5862718))

(assert (not bm!459949))

(assert (not b!5862751))

(assert (not b!5862692))

(assert (not bm!459879))

(assert (not bm!459962))

(assert (not b!5862789))

(assert (not bm!459885))

(assert (not bm!459956))

(assert (not bm!459850))

(assert (not bm!459955))

(assert (not d!1841004))

(assert (not bs!1381331))

(assert (not b!5862524))

(assert (not bm!459863))

(assert (not b!5862543))

(assert (not b!5862527))

(assert (not bm!459880))

(assert (not bm!459946))

(assert (not d!1841084))

(assert (not b!5862813))

(assert (not b!5862879))

(assert (not b!5862780))

(assert (not b!5862857))

(assert (not b!5862909))

(assert (not b!5862848))

(assert (not b!5862888))

(assert (not b!5862925))

(assert (not bm!459857))

(assert (not b!5862933))

(assert (not b!5862540))

(assert (not d!1841026))

(assert (not bs!1381334))

(assert (not d!1841170))

(assert tp_is_empty!41109)

(assert (not b!5862750))

(assert (not b!5862546))

(assert (not bm!459872))

(assert (not b!5862900))

(assert (not b!5862798))

(assert (not d!1841030))

(assert (not b!5862836))

(assert (not bm!459933))

(assert (not b!5862921))

(assert (not b!5862862))

(assert (not b!5862948))

(assert (not b!5862642))

(assert (not b!5862928))

(assert (not b!5862475))

(assert (not b_lambda!220705))

(assert (not b!5862894))

(assert (not b!5862831))

(assert (not b!5862764))

(assert (not b!5862935))

(assert (not b!5862905))

(assert (not b!5862670))

(assert (not b!5862932))

(assert (not bm!459890))

(assert (not d!1841184))

(assert (not d!1841182))

(assert (not b!5862832))

(assert (not b!5862474))

(assert (not b!5862727))

(assert (not b_lambda!220663))

(assert (not bm!459917))

(assert (not b!5862902))

(assert (not b!5862544))

(assert (not bm!459874))

(assert (not b!5862868))

(assert (not b!5862523))

(assert (not b!5862859))

(assert (not b!5862838))

(assert (not b!5862542))

(assert (not b!5862849))

(assert (not b!5862885))

(assert (not d!1841174))

(assert (not d!1841110))

(assert (not b!5862807))

(assert (not d!1841064))

(assert (not b!5862908))

(assert (not bm!459945))

(assert (not b!5862724))

(assert (not d!1841066))

(assert (not d!1841080))

(assert (not b!5862911))

(assert (not bm!459936))

(assert (not b!5862493))

(assert (not b!5862443))

(assert (not b!5862628))

(assert (not b_lambda!220709))

(assert (not b_lambda!220707))

(assert (not d!1841136))

(assert (not setNonEmpty!39765))

(assert (not b!5862720))

(assert (not setNonEmpty!39767))

(assert (not b!5862556))

(assert (not b!5862945))

(assert (not b!5862755))

(assert (not bm!459952))

(assert (not bm!459937))

(assert (not d!1840998))

(assert (not bm!459927))

(assert (not b!5862851))

(assert (not bm!459918))

(assert (not d!1841122))

(assert (not bm!459869))

(assert (not bm!459853))

(assert (not d!1841152))

(assert (not b!5862582))

(assert (not b!5862545))

(assert (not b!5862818))

(assert (not b!5862819))

(assert (not d!1841062))

(assert (not b!5862736))

(assert (not bm!459906))

(assert (not d!1841102))

(assert (not d!1841056))

(assert (not b!5862913))

(assert (not b!5862858))

(assert (not bs!1381329))

(assert (not bm!459963))

(assert (not d!1841022))

(assert (not d!1841154))

(assert (not b!5862450))

(assert (not bm!459930))

(assert (not b!5862495))

(assert (not d!1841132))

(assert (not bm!459897))

(assert (not d!1841144))

(assert (not b!5862808))

(assert (not b!5862936))

(assert (not b!5862641))

(assert (not b!5862942))

(assert (not d!1841032))

(assert (not b!5862782))

(assert (not bm!459925))

(assert (not bm!459965))

(assert (not b!5862630))

(assert (not bm!459958))

(assert (not b!5862904))

(assert (not setNonEmpty!39766))

(assert (not d!1841100))

(assert (not b!5862861))

(assert (not b_lambda!220659))

(assert (not b!5862931))

(assert (not d!1841134))

(assert (not b!5862870))

(assert (not b!5862863))

(assert (not d!1841196))

(assert (not b!5862457))

(assert (not d!1841076))

(assert (not b!5862464))

(assert (not b!5862500))

(assert (not b!5862617))

(assert (not d!1841204))

(assert (not b!5862923))

(assert (not b!5862881))

(assert (not bm!459882))

(assert (not d!1841142))

(assert (not b!5862871))

(assert (not b!5862714))

(assert (not b!5862846))

(assert (not b!5862867))

(assert (not d!1841188))

(assert (not b_lambda!220701))

(assert (not b!5862924))

(assert (not b!5862917))

(assert (not b!5862429))

(assert (not bm!459875))

(assert (not b_lambda!220695))

(assert (not b!5862944))

(assert (not b!5862770))

(assert (not b!5862632))

(assert (not b!5862483))

(assert (not b!5862841))

(assert (not d!1841166))

(assert (not d!1841082))

(assert (not b!5862874))

(assert (not bm!459899))

(assert (not b!5862775))

(assert (not bm!459924))

(assert (not b!5862940))

(assert (not b!5862949))

(assert (not bm!459854))

(assert (not bm!459870))

(assert (not b!5862907))

(assert (not b!5862469))

(assert (not bm!459884))

(assert (not bm!459858))

(assert (not b_lambda!220697))

(assert (not b!5862853))

(assert (not b!5862439))

(assert (not bm!459940))

(assert (not d!1841112))

(assert (not b!5862752))

(assert (not b!5862716))

(assert (not b!5862772))

(assert (not b!5862573))

(assert (not bm!459902))

(assert (not b!5862877))

(assert (not bm!459862))

(assert (not b!5862833))

(assert (not b!5862916))

(assert (not b!5862866))

(assert (not b!5862580))

(assert (not d!1841006))

(assert (not b!5862844))

(assert (not b!5862541))

(assert (not b!5862769))

(assert (not b!5862786))

(assert (not b!5862898))

(assert (not b!5862638))

(assert (not bm!459855))

(assert (not d!1841078))

(assert (not b!5862563))

(assert (not b!5862479))

(assert (not b!5862884))

(assert (not bm!459943))

(assert (not b_lambda!220703))

(assert (not d!1841040))

(assert (not bm!459866))

(assert (not b!5862583))

(assert (not b!5862548))

(assert (not b!5862511))

(assert (not b!5862889))

(assert (not setNonEmpty!39768))

(assert (not bm!459876))

(assert (not b!5862939))

(assert (not d!1841198))

(assert (not b!5862575))

(assert (not d!1841116))

(assert (not d!1841194))

(assert (not b!5862882))

(assert (not b!5862899))

(assert (not b!5862587))

(assert (not bm!459919))

(assert (not b_lambda!220711))

(assert (not b!5862915))

(assert (not d!1841098))

(assert (not d!1841168))

(assert (not d!1841176))

(assert (not bm!459891))

(assert (not bm!459896))

(assert (not bm!459886))

(assert (not b!5862845))

(assert (not b!5862778))

(assert (not bm!459920))

(assert (not b!5862850))

(assert (not b!5862941))

(assert (not b!5862592))

(assert (not b!5862903))

(assert (not b!5862477))

(assert (not b!5862754))

(assert (not b!5862771))

(assert (not b!5862547))

(assert (not bm!459931))

(assert (not bs!1381333))

(assert (not b!5862912))

(assert (not b!5862744))

(assert (not b!5862550))

(assert (not bm!459851))

(assert (not b!5862875))

(assert (not b!5862453))

(assert (not d!1841120))

(assert (not b!5862919))

(assert (not bm!459944))

(assert (not b!5862837))

(assert (not b!5862842))

(assert (not b!5862950))

(assert (not bm!459905))

(assert (not b!5862946))

(assert (not b!5862886))

(assert (not b!5862892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

