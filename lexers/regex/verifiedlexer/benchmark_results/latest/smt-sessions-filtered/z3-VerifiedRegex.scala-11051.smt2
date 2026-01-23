; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572822 () Bool)

(assert start!572822)

(declare-fun b!5474676 () Bool)

(assert (=> b!5474676 true))

(assert (=> b!5474676 true))

(declare-fun lambda!291677 () Int)

(declare-fun lambda!291676 () Int)

(assert (=> b!5474676 (not (= lambda!291677 lambda!291676))))

(assert (=> b!5474676 true))

(assert (=> b!5474676 true))

(declare-fun lambda!291678 () Int)

(assert (=> b!5474676 (not (= lambda!291678 lambda!291676))))

(assert (=> b!5474676 (not (= lambda!291678 lambda!291677))))

(assert (=> b!5474676 true))

(assert (=> b!5474676 true))

(declare-fun b!5474671 () Bool)

(assert (=> b!5474671 true))

(declare-fun b!5474641 () Bool)

(declare-fun e!3388726 () Bool)

(assert (=> b!5474641 (= e!3388726 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30968 0))(
  ( (C!30969 (val!25186 Int)) )
))
(declare-datatypes ((Regex!15349 0))(
  ( (ElementMatch!15349 (c!956439 C!30968)) (Concat!24194 (regOne!31210 Regex!15349) (regTwo!31210 Regex!15349)) (EmptyExpr!15349) (Star!15349 (reg!15678 Regex!15349)) (EmptyLang!15349) (Union!15349 (regOne!31211 Regex!15349) (regTwo!31211 Regex!15349)) )
))
(declare-datatypes ((List!62346 0))(
  ( (Nil!62222) (Cons!62222 (h!68670 Regex!15349) (t!375575 List!62346)) )
))
(declare-datatypes ((Context!9466 0))(
  ( (Context!9467 (exprs!5233 List!62346)) )
))
(declare-fun lt!2236396 () (InoxSet Context!9466))

(declare-datatypes ((List!62347 0))(
  ( (Nil!62223) (Cons!62223 (h!68671 C!30968) (t!375576 List!62347)) )
))
(declare-datatypes ((tuple2!65092 0))(
  ( (tuple2!65093 (_1!35849 List!62347) (_2!35849 List!62347)) )
))
(declare-fun lt!2236417 () tuple2!65092)

(declare-fun matchZipper!1567 ((InoxSet Context!9466) List!62347) Bool)

(assert (=> b!5474641 (matchZipper!1567 lt!2236396 (_2!35849 lt!2236417))))

(declare-fun r!7292 () Regex!15349)

(declare-datatypes ((List!62348 0))(
  ( (Nil!62224) (Cons!62224 (h!68672 Context!9466) (t!375577 List!62348)) )
))
(declare-fun lt!2236399 () List!62348)

(declare-datatypes ((Unit!155148 0))(
  ( (Unit!155149) )
))
(declare-fun lt!2236409 () Unit!155148)

(declare-fun theoremZipperRegexEquiv!575 ((InoxSet Context!9466) List!62348 Regex!15349 List!62347) Unit!155148)

(assert (=> b!5474641 (= lt!2236409 (theoremZipperRegexEquiv!575 lt!2236396 lt!2236399 r!7292 (_2!35849 lt!2236417)))))

(declare-fun lt!2236415 () (InoxSet Context!9466))

(assert (=> b!5474641 (matchZipper!1567 lt!2236415 (_1!35849 lt!2236417))))

(declare-fun lt!2236425 () List!62348)

(declare-fun lt!2236405 () Unit!155148)

(assert (=> b!5474641 (= lt!2236405 (theoremZipperRegexEquiv!575 lt!2236415 lt!2236425 (reg!15678 r!7292) (_1!35849 lt!2236417)))))

(declare-fun b!5474642 () Bool)

(declare-fun e!3388718 () Bool)

(declare-fun e!3388733 () Bool)

(assert (=> b!5474642 (= e!3388718 e!3388733)))

(declare-fun res!2333528 () Bool)

(assert (=> b!5474642 (=> res!2333528 e!3388733)))

(declare-fun lt!2236410 () (InoxSet Context!9466))

(declare-fun lt!2236414 () (InoxSet Context!9466))

(assert (=> b!5474642 (= res!2333528 (not (= lt!2236410 lt!2236414)))))

(declare-fun s!2326 () List!62347)

(declare-fun derivationStepZipperDown!775 (Regex!15349 Context!9466 C!30968) (InoxSet Context!9466))

(assert (=> b!5474642 (= lt!2236414 (derivationStepZipperDown!775 r!7292 (Context!9467 Nil!62222) (h!68671 s!2326)))))

(declare-fun derivationStepZipperUp!701 (Context!9466 C!30968) (InoxSet Context!9466))

(assert (=> b!5474642 (= lt!2236410 (derivationStepZipperUp!701 (Context!9467 (Cons!62222 r!7292 Nil!62222)) (h!68671 s!2326)))))

(declare-fun lt!2236408 () (InoxSet Context!9466))

(declare-fun z!1189 () (InoxSet Context!9466))

(declare-fun derivationStepZipper!1544 ((InoxSet Context!9466) C!30968) (InoxSet Context!9466))

(assert (=> b!5474642 (= lt!2236408 (derivationStepZipper!1544 z!1189 (h!68671 s!2326)))))

(declare-fun b!5474643 () Bool)

(declare-fun res!2333548 () Bool)

(assert (=> b!5474643 (=> res!2333548 e!3388726)))

(declare-fun matchR!7534 (Regex!15349 List!62347) Bool)

(assert (=> b!5474643 (= res!2333548 (not (matchR!7534 (reg!15678 r!7292) (_1!35849 lt!2236417))))))

(declare-fun b!5474644 () Bool)

(declare-fun e!3388738 () Bool)

(assert (=> b!5474644 (= e!3388738 e!3388726)))

(declare-fun res!2333525 () Bool)

(assert (=> b!5474644 (=> res!2333525 e!3388726)))

(declare-fun ++!13686 (List!62347 List!62347) List!62347)

(assert (=> b!5474644 (= res!2333525 (not (= s!2326 (++!13686 (_1!35849 lt!2236417) (_2!35849 lt!2236417)))))))

(declare-datatypes ((Option!15458 0))(
  ( (None!15457) (Some!15457 (v!51486 tuple2!65092)) )
))
(declare-fun lt!2236413 () Option!15458)

(declare-fun get!21454 (Option!15458) tuple2!65092)

(assert (=> b!5474644 (= lt!2236417 (get!21454 lt!2236413))))

(declare-fun b!5474645 () Bool)

(declare-fun e!3388725 () Bool)

(assert (=> b!5474645 (= e!3388725 e!3388738)))

(declare-fun res!2333544 () Bool)

(assert (=> b!5474645 (=> res!2333544 e!3388738)))

(declare-fun lt!2236424 () Bool)

(assert (=> b!5474645 (= res!2333544 (not lt!2236424))))

(declare-fun e!3388721 () Bool)

(assert (=> b!5474645 e!3388721))

(declare-fun res!2333545 () Bool)

(assert (=> b!5474645 (=> (not res!2333545) (not e!3388721))))

(declare-fun lt!2236422 () Regex!15349)

(declare-fun matchRSpec!2452 (Regex!15349 List!62347) Bool)

(assert (=> b!5474645 (= res!2333545 (= lt!2236424 (matchRSpec!2452 lt!2236422 s!2326)))))

(assert (=> b!5474645 (= lt!2236424 (matchR!7534 lt!2236422 s!2326))))

(declare-fun lt!2236411 () Unit!155148)

(declare-fun mainMatchTheorem!2452 (Regex!15349 List!62347) Unit!155148)

(assert (=> b!5474645 (= lt!2236411 (mainMatchTheorem!2452 lt!2236422 s!2326))))

(declare-fun setElem!35959 () Context!9466)

(declare-fun tp!1505015 () Bool)

(declare-fun setNonEmpty!35959 () Bool)

(declare-fun e!3388728 () Bool)

(declare-fun setRes!35959 () Bool)

(declare-fun inv!81619 (Context!9466) Bool)

(assert (=> setNonEmpty!35959 (= setRes!35959 (and tp!1505015 (inv!81619 setElem!35959) e!3388728))))

(declare-fun setRest!35959 () (InoxSet Context!9466))

(assert (=> setNonEmpty!35959 (= z!1189 ((_ map or) (store ((as const (Array Context!9466 Bool)) false) setElem!35959 true) setRest!35959))))

(declare-fun b!5474646 () Bool)

(declare-fun res!2333538 () Bool)

(declare-fun e!3388737 () Bool)

(assert (=> b!5474646 (=> res!2333538 e!3388737)))

(declare-fun zl!343 () List!62348)

(declare-fun generalisedConcat!1018 (List!62346) Regex!15349)

(assert (=> b!5474646 (= res!2333538 (not (= r!7292 (generalisedConcat!1018 (exprs!5233 (h!68672 zl!343))))))))

(declare-fun b!5474647 () Bool)

(declare-fun e!3388717 () Bool)

(assert (=> b!5474647 (= e!3388717 e!3388725)))

(declare-fun res!2333531 () Bool)

(assert (=> b!5474647 (=> res!2333531 e!3388725)))

(declare-fun unfocusZipper!1091 (List!62348) Regex!15349)

(assert (=> b!5474647 (= res!2333531 (not (= (unfocusZipper!1091 lt!2236399) r!7292)))))

(declare-fun lt!2236395 () Context!9466)

(assert (=> b!5474647 (= lt!2236399 (Cons!62224 lt!2236395 Nil!62224))))

(declare-fun b!5474648 () Bool)

(declare-fun res!2333534 () Bool)

(declare-fun e!3388720 () Bool)

(assert (=> b!5474648 (=> res!2333534 e!3388720)))

(declare-fun lt!2236402 () (InoxSet Context!9466))

(assert (=> b!5474648 (= res!2333534 (not (= (matchZipper!1567 lt!2236402 s!2326) (matchZipper!1567 (derivationStepZipper!1544 lt!2236402 (h!68671 s!2326)) (t!375576 s!2326)))))))

(declare-fun setIsEmpty!35959 () Bool)

(assert (=> setIsEmpty!35959 setRes!35959))

(declare-fun b!5474649 () Bool)

(declare-fun e!3388736 () Bool)

(declare-fun e!3388727 () Bool)

(assert (=> b!5474649 (= e!3388736 e!3388727)))

(declare-fun res!2333536 () Bool)

(assert (=> b!5474649 (=> res!2333536 e!3388727)))

(assert (=> b!5474649 (= res!2333536 (not (= lt!2236408 (derivationStepZipper!1544 lt!2236396 (h!68671 s!2326)))))))

(declare-fun lambda!291679 () Int)

(declare-fun flatMap!1052 ((InoxSet Context!9466) Int) (InoxSet Context!9466))

(assert (=> b!5474649 (= (flatMap!1052 lt!2236396 lambda!291679) (derivationStepZipperUp!701 lt!2236395 (h!68671 s!2326)))))

(declare-fun lt!2236421 () Unit!155148)

(declare-fun lemmaFlatMapOnSingletonSet!584 ((InoxSet Context!9466) Context!9466 Int) Unit!155148)

(assert (=> b!5474649 (= lt!2236421 (lemmaFlatMapOnSingletonSet!584 lt!2236396 lt!2236395 lambda!291679))))

(declare-fun lt!2236412 () Context!9466)

(assert (=> b!5474649 (= (flatMap!1052 lt!2236415 lambda!291679) (derivationStepZipperUp!701 lt!2236412 (h!68671 s!2326)))))

(declare-fun lt!2236418 () Unit!155148)

(assert (=> b!5474649 (= lt!2236418 (lemmaFlatMapOnSingletonSet!584 lt!2236415 lt!2236412 lambda!291679))))

(declare-fun lt!2236401 () (InoxSet Context!9466))

(assert (=> b!5474649 (= lt!2236401 (derivationStepZipperUp!701 lt!2236395 (h!68671 s!2326)))))

(declare-fun lt!2236400 () (InoxSet Context!9466))

(assert (=> b!5474649 (= lt!2236400 (derivationStepZipperUp!701 lt!2236412 (h!68671 s!2326)))))

(assert (=> b!5474649 (= lt!2236396 (store ((as const (Array Context!9466 Bool)) false) lt!2236395 true))))

(assert (=> b!5474649 (= lt!2236415 (store ((as const (Array Context!9466 Bool)) false) lt!2236412 true))))

(assert (=> b!5474649 (= lt!2236412 (Context!9467 (Cons!62222 (reg!15678 r!7292) Nil!62222)))))

(declare-fun b!5474650 () Bool)

(declare-fun res!2333523 () Bool)

(assert (=> b!5474650 (=> res!2333523 e!3388737)))

(get-info :version)

(assert (=> b!5474650 (= res!2333523 (or ((_ is EmptyExpr!15349) r!7292) ((_ is EmptyLang!15349) r!7292) ((_ is ElementMatch!15349) r!7292) ((_ is Union!15349) r!7292) ((_ is Concat!24194) r!7292)))))

(declare-fun b!5474651 () Bool)

(declare-fun res!2333540 () Bool)

(assert (=> b!5474651 (=> res!2333540 e!3388720)))

(declare-fun lt!2236423 () Regex!15349)

(assert (=> b!5474651 (= res!2333540 (or (not (= lt!2236423 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5474652 () Bool)

(declare-fun res!2333550 () Bool)

(assert (=> b!5474652 (=> res!2333550 e!3388726)))

(assert (=> b!5474652 (= res!2333550 (not (matchR!7534 r!7292 (_2!35849 lt!2236417))))))

(declare-fun b!5474653 () Bool)

(declare-fun e!3388735 () Bool)

(declare-fun lt!2236393 () Bool)

(assert (=> b!5474653 (= e!3388735 lt!2236393)))

(declare-fun b!5474654 () Bool)

(declare-fun e!3388732 () Bool)

(declare-fun Exists!2528 (Int) Bool)

(assert (=> b!5474654 (= e!3388732 (= lt!2236393 (Exists!2528 lambda!291676)))))

(declare-fun b!5474655 () Bool)

(declare-fun tp!1505019 () Bool)

(assert (=> b!5474655 (= e!3388728 tp!1505019)))

(declare-fun e!3388722 () Bool)

(declare-fun e!3388719 () Bool)

(declare-fun tp!1505014 () Bool)

(declare-fun b!5474656 () Bool)

(assert (=> b!5474656 (= e!3388719 (and (inv!81619 (h!68672 zl!343)) e!3388722 tp!1505014))))

(declare-fun b!5474657 () Bool)

(declare-fun e!3388731 () Bool)

(declare-fun tp!1505018 () Bool)

(declare-fun tp!1505013 () Bool)

(assert (=> b!5474657 (= e!3388731 (and tp!1505018 tp!1505013))))

(declare-fun b!5474658 () Bool)

(declare-fun tp_is_empty!39951 () Bool)

(assert (=> b!5474658 (= e!3388731 tp_is_empty!39951)))

(declare-fun b!5474659 () Bool)

(declare-fun e!3388730 () Bool)

(assert (=> b!5474659 (= e!3388721 e!3388730)))

(declare-fun res!2333533 () Bool)

(assert (=> b!5474659 (=> res!2333533 e!3388730)))

(assert (=> b!5474659 (= res!2333533 (not lt!2236424))))

(declare-fun b!5474660 () Bool)

(declare-fun tp!1505016 () Bool)

(assert (=> b!5474660 (= e!3388731 tp!1505016)))

(declare-fun b!5474661 () Bool)

(declare-fun e!3388724 () Bool)

(declare-fun tp!1505020 () Bool)

(assert (=> b!5474661 (= e!3388724 (and tp_is_empty!39951 tp!1505020))))

(declare-fun b!5474662 () Bool)

(declare-fun tp!1505021 () Bool)

(assert (=> b!5474662 (= e!3388722 tp!1505021)))

(declare-fun res!2333543 () Bool)

(declare-fun e!3388723 () Bool)

(assert (=> start!572822 (=> (not res!2333543) (not e!3388723))))

(declare-fun validRegex!7085 (Regex!15349) Bool)

(assert (=> start!572822 (= res!2333543 (validRegex!7085 r!7292))))

(assert (=> start!572822 e!3388723))

(assert (=> start!572822 e!3388731))

(declare-fun condSetEmpty!35959 () Bool)

(assert (=> start!572822 (= condSetEmpty!35959 (= z!1189 ((as const (Array Context!9466 Bool)) false)))))

(assert (=> start!572822 setRes!35959))

(assert (=> start!572822 e!3388719))

(assert (=> start!572822 e!3388724))

(declare-fun b!5474663 () Bool)

(declare-fun e!3388734 () Bool)

(assert (=> b!5474663 (= e!3388734 (not e!3388737))))

(declare-fun res!2333549 () Bool)

(assert (=> b!5474663 (=> res!2333549 e!3388737)))

(assert (=> b!5474663 (= res!2333549 (not ((_ is Cons!62224) zl!343)))))

(declare-fun lt!2236420 () Bool)

(assert (=> b!5474663 (= lt!2236420 (matchRSpec!2452 r!7292 s!2326))))

(assert (=> b!5474663 (= lt!2236420 (matchR!7534 r!7292 s!2326))))

(declare-fun lt!2236394 () Unit!155148)

(assert (=> b!5474663 (= lt!2236394 (mainMatchTheorem!2452 r!7292 s!2326))))

(declare-fun b!5474664 () Bool)

(declare-fun e!3388729 () Bool)

(assert (=> b!5474664 (= e!3388729 e!3388720)))

(declare-fun res!2333546 () Bool)

(assert (=> b!5474664 (=> res!2333546 e!3388720)))

(assert (=> b!5474664 (= res!2333546 (not (= lt!2236408 (derivationStepZipperDown!775 (reg!15678 r!7292) lt!2236395 (h!68671 s!2326)))))))

(declare-fun lt!2236397 () List!62346)

(assert (=> b!5474664 (= lt!2236395 (Context!9467 lt!2236397))))

(declare-fun lt!2236406 () Context!9466)

(assert (=> b!5474664 (= (flatMap!1052 lt!2236402 lambda!291679) (derivationStepZipperUp!701 lt!2236406 (h!68671 s!2326)))))

(declare-fun lt!2236403 () Unit!155148)

(assert (=> b!5474664 (= lt!2236403 (lemmaFlatMapOnSingletonSet!584 lt!2236402 lt!2236406 lambda!291679))))

(declare-fun lt!2236404 () (InoxSet Context!9466))

(assert (=> b!5474664 (= lt!2236404 (derivationStepZipperUp!701 lt!2236406 (h!68671 s!2326)))))

(assert (=> b!5474664 (= lt!2236402 (store ((as const (Array Context!9466 Bool)) false) lt!2236406 true))))

(assert (=> b!5474664 (= lt!2236406 (Context!9467 (Cons!62222 (reg!15678 r!7292) lt!2236397)))))

(assert (=> b!5474664 (= lt!2236397 (Cons!62222 r!7292 Nil!62222))))

(declare-fun b!5474665 () Bool)

(assert (=> b!5474665 (= e!3388723 e!3388734)))

(declare-fun res!2333529 () Bool)

(assert (=> b!5474665 (=> (not res!2333529) (not e!3388734))))

(assert (=> b!5474665 (= res!2333529 (= r!7292 lt!2236423))))

(assert (=> b!5474665 (= lt!2236423 (unfocusZipper!1091 zl!343))))

(declare-fun b!5474666 () Bool)

(assert (=> b!5474666 (= e!3388727 e!3388717)))

(declare-fun res!2333539 () Bool)

(assert (=> b!5474666 (=> res!2333539 e!3388717)))

(assert (=> b!5474666 (= res!2333539 (not (= (unfocusZipper!1091 lt!2236425) (reg!15678 r!7292))))))

(assert (=> b!5474666 (= lt!2236425 (Cons!62224 lt!2236412 Nil!62224))))

(declare-fun b!5474667 () Bool)

(declare-fun tp!1505017 () Bool)

(declare-fun tp!1505012 () Bool)

(assert (=> b!5474667 (= e!3388731 (and tp!1505017 tp!1505012))))

(declare-fun b!5474668 () Bool)

(declare-fun res!2333524 () Bool)

(assert (=> b!5474668 (=> res!2333524 e!3388718)))

(assert (=> b!5474668 (= res!2333524 ((_ is Nil!62223) s!2326))))

(declare-fun b!5474669 () Bool)

(declare-fun res!2333526 () Bool)

(assert (=> b!5474669 (=> (not res!2333526) (not e!3388723))))

(declare-fun toList!9133 ((InoxSet Context!9466)) List!62348)

(assert (=> b!5474669 (= res!2333526 (= (toList!9133 z!1189) zl!343))))

(declare-fun b!5474670 () Bool)

(declare-fun res!2333535 () Bool)

(assert (=> b!5474670 (=> res!2333535 e!3388737)))

(assert (=> b!5474670 (= res!2333535 (not ((_ is Cons!62222) (exprs!5233 (h!68672 zl!343)))))))

(assert (=> b!5474671 (= e!3388733 e!3388729)))

(declare-fun res!2333542 () Bool)

(assert (=> b!5474671 (=> res!2333542 e!3388729)))

(assert (=> b!5474671 (= res!2333542 (not (= lt!2236408 lt!2236414)))))

(assert (=> b!5474671 (= (flatMap!1052 z!1189 lambda!291679) (derivationStepZipperUp!701 (h!68672 zl!343) (h!68671 s!2326)))))

(declare-fun lt!2236398 () Unit!155148)

(assert (=> b!5474671 (= lt!2236398 (lemmaFlatMapOnSingletonSet!584 z!1189 (h!68672 zl!343) lambda!291679))))

(declare-fun b!5474672 () Bool)

(declare-fun res!2333530 () Bool)

(assert (=> b!5474672 (=> res!2333530 e!3388737)))

(declare-fun generalisedUnion!1278 (List!62346) Regex!15349)

(declare-fun unfocusZipperList!791 (List!62348) List!62346)

(assert (=> b!5474672 (= res!2333530 (not (= r!7292 (generalisedUnion!1278 (unfocusZipperList!791 zl!343)))))))

(declare-fun b!5474673 () Bool)

(declare-fun res!2333537 () Bool)

(assert (=> b!5474673 (=> res!2333537 e!3388737)))

(declare-fun isEmpty!34178 (List!62348) Bool)

(assert (=> b!5474673 (= res!2333537 (not (isEmpty!34178 (t!375577 zl!343))))))

(declare-fun b!5474674 () Bool)

(assert (=> b!5474674 (= e!3388720 e!3388736)))

(declare-fun res!2333527 () Bool)

(assert (=> b!5474674 (=> res!2333527 e!3388736)))

(assert (=> b!5474674 (= res!2333527 (not (= (unfocusZipper!1091 (Cons!62224 lt!2236406 Nil!62224)) lt!2236422)))))

(assert (=> b!5474674 (= lt!2236422 (Concat!24194 (reg!15678 r!7292) r!7292))))

(declare-fun b!5474675 () Bool)

(assert (=> b!5474675 (= e!3388730 e!3388732)))

(declare-fun res!2333532 () Bool)

(assert (=> b!5474675 (=> (not res!2333532) (not e!3388732))))

(assert (=> b!5474675 (= res!2333532 (= (Exists!2528 lambda!291676) (Exists!2528 lambda!291677)))))

(assert (=> b!5474676 (= e!3388737 e!3388718)))

(declare-fun res!2333541 () Bool)

(assert (=> b!5474676 (=> res!2333541 e!3388718)))

(assert (=> b!5474676 (= res!2333541 (not (= lt!2236420 e!3388735)))))

(declare-fun res!2333547 () Bool)

(assert (=> b!5474676 (=> res!2333547 e!3388735)))

(declare-fun isEmpty!34179 (List!62347) Bool)

(assert (=> b!5474676 (= res!2333547 (isEmpty!34179 s!2326))))

(assert (=> b!5474676 (= (Exists!2528 lambda!291676) (Exists!2528 lambda!291678))))

(declare-fun lt!2236419 () Unit!155148)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1178 (Regex!15349 Regex!15349 List!62347) Unit!155148)

(assert (=> b!5474676 (= lt!2236419 (lemmaExistCutMatchRandMatchRSpecEquivalent!1178 (reg!15678 r!7292) r!7292 s!2326))))

(assert (=> b!5474676 (= (Exists!2528 lambda!291676) (Exists!2528 lambda!291677))))

(declare-fun lt!2236407 () Unit!155148)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!502 (Regex!15349 List!62347) Unit!155148)

(assert (=> b!5474676 (= lt!2236407 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!502 (reg!15678 r!7292) s!2326))))

(assert (=> b!5474676 (= lt!2236393 (Exists!2528 lambda!291676))))

(declare-fun isDefined!12161 (Option!15458) Bool)

(assert (=> b!5474676 (= lt!2236393 (isDefined!12161 lt!2236413))))

(declare-fun findConcatSeparation!1872 (Regex!15349 Regex!15349 List!62347 List!62347 List!62347) Option!15458)

(assert (=> b!5474676 (= lt!2236413 (findConcatSeparation!1872 (reg!15678 r!7292) r!7292 Nil!62223 s!2326 s!2326))))

(declare-fun lt!2236416 () Unit!155148)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1636 (Regex!15349 Regex!15349 List!62347) Unit!155148)

(assert (=> b!5474676 (= lt!2236416 (lemmaFindConcatSeparationEquivalentToExists!1636 (reg!15678 r!7292) r!7292 s!2326))))

(assert (= (and start!572822 res!2333543) b!5474669))

(assert (= (and b!5474669 res!2333526) b!5474665))

(assert (= (and b!5474665 res!2333529) b!5474663))

(assert (= (and b!5474663 (not res!2333549)) b!5474673))

(assert (= (and b!5474673 (not res!2333537)) b!5474646))

(assert (= (and b!5474646 (not res!2333538)) b!5474670))

(assert (= (and b!5474670 (not res!2333535)) b!5474672))

(assert (= (and b!5474672 (not res!2333530)) b!5474650))

(assert (= (and b!5474650 (not res!2333523)) b!5474676))

(assert (= (and b!5474676 (not res!2333547)) b!5474653))

(assert (= (and b!5474676 (not res!2333541)) b!5474668))

(assert (= (and b!5474668 (not res!2333524)) b!5474642))

(assert (= (and b!5474642 (not res!2333528)) b!5474671))

(assert (= (and b!5474671 (not res!2333542)) b!5474664))

(assert (= (and b!5474664 (not res!2333546)) b!5474648))

(assert (= (and b!5474648 (not res!2333534)) b!5474651))

(assert (= (and b!5474651 (not res!2333540)) b!5474674))

(assert (= (and b!5474674 (not res!2333527)) b!5474649))

(assert (= (and b!5474649 (not res!2333536)) b!5474666))

(assert (= (and b!5474666 (not res!2333539)) b!5474647))

(assert (= (and b!5474647 (not res!2333531)) b!5474645))

(assert (= (and b!5474645 res!2333545) b!5474659))

(assert (= (and b!5474659 (not res!2333533)) b!5474675))

(assert (= (and b!5474675 res!2333532) b!5474654))

(assert (= (and b!5474645 (not res!2333544)) b!5474644))

(assert (= (and b!5474644 (not res!2333525)) b!5474643))

(assert (= (and b!5474643 (not res!2333548)) b!5474652))

(assert (= (and b!5474652 (not res!2333550)) b!5474641))

(assert (= (and start!572822 ((_ is ElementMatch!15349) r!7292)) b!5474658))

(assert (= (and start!572822 ((_ is Concat!24194) r!7292)) b!5474667))

(assert (= (and start!572822 ((_ is Star!15349) r!7292)) b!5474660))

(assert (= (and start!572822 ((_ is Union!15349) r!7292)) b!5474657))

(assert (= (and start!572822 condSetEmpty!35959) setIsEmpty!35959))

(assert (= (and start!572822 (not condSetEmpty!35959)) setNonEmpty!35959))

(assert (= setNonEmpty!35959 b!5474655))

(assert (= b!5474656 b!5474662))

(assert (= (and start!572822 ((_ is Cons!62224) zl!343)) b!5474656))

(assert (= (and start!572822 ((_ is Cons!62223) s!2326)) b!5474661))

(declare-fun m!6491592 () Bool)

(assert (=> b!5474676 m!6491592))

(declare-fun m!6491594 () Bool)

(assert (=> b!5474676 m!6491594))

(declare-fun m!6491596 () Bool)

(assert (=> b!5474676 m!6491596))

(declare-fun m!6491598 () Bool)

(assert (=> b!5474676 m!6491598))

(declare-fun m!6491600 () Bool)

(assert (=> b!5474676 m!6491600))

(declare-fun m!6491602 () Bool)

(assert (=> b!5474676 m!6491602))

(declare-fun m!6491604 () Bool)

(assert (=> b!5474676 m!6491604))

(declare-fun m!6491606 () Bool)

(assert (=> b!5474676 m!6491606))

(assert (=> b!5474676 m!6491606))

(assert (=> b!5474676 m!6491606))

(declare-fun m!6491608 () Bool)

(assert (=> b!5474676 m!6491608))

(declare-fun m!6491610 () Bool)

(assert (=> b!5474646 m!6491610))

(declare-fun m!6491612 () Bool)

(assert (=> b!5474645 m!6491612))

(declare-fun m!6491614 () Bool)

(assert (=> b!5474645 m!6491614))

(declare-fun m!6491616 () Bool)

(assert (=> b!5474645 m!6491616))

(declare-fun m!6491618 () Bool)

(assert (=> b!5474664 m!6491618))

(declare-fun m!6491620 () Bool)

(assert (=> b!5474664 m!6491620))

(declare-fun m!6491622 () Bool)

(assert (=> b!5474664 m!6491622))

(declare-fun m!6491624 () Bool)

(assert (=> b!5474664 m!6491624))

(declare-fun m!6491626 () Bool)

(assert (=> b!5474664 m!6491626))

(declare-fun m!6491628 () Bool)

(assert (=> b!5474648 m!6491628))

(declare-fun m!6491630 () Bool)

(assert (=> b!5474648 m!6491630))

(assert (=> b!5474648 m!6491630))

(declare-fun m!6491632 () Bool)

(assert (=> b!5474648 m!6491632))

(declare-fun m!6491634 () Bool)

(assert (=> b!5474649 m!6491634))

(declare-fun m!6491636 () Bool)

(assert (=> b!5474649 m!6491636))

(declare-fun m!6491638 () Bool)

(assert (=> b!5474649 m!6491638))

(declare-fun m!6491640 () Bool)

(assert (=> b!5474649 m!6491640))

(declare-fun m!6491642 () Bool)

(assert (=> b!5474649 m!6491642))

(declare-fun m!6491644 () Bool)

(assert (=> b!5474649 m!6491644))

(declare-fun m!6491646 () Bool)

(assert (=> b!5474649 m!6491646))

(declare-fun m!6491648 () Bool)

(assert (=> b!5474649 m!6491648))

(declare-fun m!6491650 () Bool)

(assert (=> b!5474649 m!6491650))

(declare-fun m!6491652 () Bool)

(assert (=> b!5474641 m!6491652))

(declare-fun m!6491654 () Bool)

(assert (=> b!5474641 m!6491654))

(declare-fun m!6491656 () Bool)

(assert (=> b!5474641 m!6491656))

(declare-fun m!6491658 () Bool)

(assert (=> b!5474641 m!6491658))

(declare-fun m!6491660 () Bool)

(assert (=> b!5474665 m!6491660))

(declare-fun m!6491662 () Bool)

(assert (=> b!5474674 m!6491662))

(assert (=> b!5474654 m!6491606))

(declare-fun m!6491664 () Bool)

(assert (=> b!5474672 m!6491664))

(assert (=> b!5474672 m!6491664))

(declare-fun m!6491666 () Bool)

(assert (=> b!5474672 m!6491666))

(declare-fun m!6491668 () Bool)

(assert (=> b!5474652 m!6491668))

(declare-fun m!6491670 () Bool)

(assert (=> b!5474671 m!6491670))

(declare-fun m!6491672 () Bool)

(assert (=> b!5474671 m!6491672))

(declare-fun m!6491674 () Bool)

(assert (=> b!5474671 m!6491674))

(declare-fun m!6491676 () Bool)

(assert (=> start!572822 m!6491676))

(declare-fun m!6491678 () Bool)

(assert (=> b!5474666 m!6491678))

(declare-fun m!6491680 () Bool)

(assert (=> b!5474669 m!6491680))

(declare-fun m!6491682 () Bool)

(assert (=> b!5474644 m!6491682))

(declare-fun m!6491684 () Bool)

(assert (=> b!5474644 m!6491684))

(declare-fun m!6491686 () Bool)

(assert (=> b!5474642 m!6491686))

(declare-fun m!6491688 () Bool)

(assert (=> b!5474642 m!6491688))

(declare-fun m!6491690 () Bool)

(assert (=> b!5474642 m!6491690))

(declare-fun m!6491692 () Bool)

(assert (=> b!5474643 m!6491692))

(declare-fun m!6491694 () Bool)

(assert (=> b!5474656 m!6491694))

(declare-fun m!6491696 () Bool)

(assert (=> b!5474673 m!6491696))

(declare-fun m!6491698 () Bool)

(assert (=> setNonEmpty!35959 m!6491698))

(declare-fun m!6491700 () Bool)

(assert (=> b!5474663 m!6491700))

(declare-fun m!6491702 () Bool)

(assert (=> b!5474663 m!6491702))

(declare-fun m!6491704 () Bool)

(assert (=> b!5474663 m!6491704))

(declare-fun m!6491706 () Bool)

(assert (=> b!5474647 m!6491706))

(assert (=> b!5474675 m!6491606))

(assert (=> b!5474675 m!6491594))

(check-sat (not b!5474666) (not b!5474648) (not b!5474657) (not b!5474672) (not b!5474671) (not b!5474656) (not b!5474645) (not b!5474655) (not b!5474673) (not b!5474665) (not b!5474675) (not b!5474641) (not b!5474669) (not b!5474674) (not b!5474643) (not b!5474646) (not b!5474642) (not b!5474663) (not b!5474660) (not b!5474652) (not b!5474667) (not start!572822) (not b!5474647) (not b!5474644) (not b!5474662) (not b!5474649) (not b!5474654) (not b!5474676) (not setNonEmpty!35959) (not b!5474661) (not b!5474664) tp_is_empty!39951)
(check-sat)
