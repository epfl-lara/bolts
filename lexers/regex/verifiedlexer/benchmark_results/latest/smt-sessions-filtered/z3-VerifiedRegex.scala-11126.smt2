; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575570 () Bool)

(assert start!575570)

(declare-fun b!5511697 () Bool)

(assert (=> b!5511697 true))

(assert (=> b!5511697 true))

(declare-fun lambda!295310 () Int)

(declare-fun lambda!295309 () Int)

(assert (=> b!5511697 (not (= lambda!295310 lambda!295309))))

(assert (=> b!5511697 true))

(assert (=> b!5511697 true))

(declare-fun b!5511703 () Bool)

(assert (=> b!5511703 true))

(declare-fun b!5511680 () Bool)

(declare-fun e!3408538 () Bool)

(declare-fun tp!1516436 () Bool)

(assert (=> b!5511680 (= e!3408538 tp!1516436)))

(declare-fun setIsEmpty!36609 () Bool)

(declare-fun setRes!36609 () Bool)

(assert (=> setIsEmpty!36609 setRes!36609))

(declare-fun res!2348642 () Bool)

(declare-fun e!3408544 () Bool)

(assert (=> start!575570 (=> (not res!2348642) (not e!3408544))))

(declare-datatypes ((C!31268 0))(
  ( (C!31269 (val!25336 Int)) )
))
(declare-datatypes ((Regex!15499 0))(
  ( (ElementMatch!15499 (c!963233 C!31268)) (Concat!24344 (regOne!31510 Regex!15499) (regTwo!31510 Regex!15499)) (EmptyExpr!15499) (Star!15499 (reg!15828 Regex!15499)) (EmptyLang!15499) (Union!15499 (regOne!31511 Regex!15499) (regTwo!31511 Regex!15499)) )
))
(declare-fun r!7292 () Regex!15499)

(declare-fun validRegex!7235 (Regex!15499) Bool)

(assert (=> start!575570 (= res!2348642 (validRegex!7235 r!7292))))

(assert (=> start!575570 e!3408544))

(assert (=> start!575570 e!3408538))

(declare-fun condSetEmpty!36609 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62796 0))(
  ( (Nil!62672) (Cons!62672 (h!69120 Regex!15499) (t!376041 List!62796)) )
))
(declare-datatypes ((Context!9766 0))(
  ( (Context!9767 (exprs!5383 List!62796)) )
))
(declare-fun z!1189 () (InoxSet Context!9766))

(assert (=> start!575570 (= condSetEmpty!36609 (= z!1189 ((as const (Array Context!9766 Bool)) false)))))

(assert (=> start!575570 setRes!36609))

(declare-fun e!3408548 () Bool)

(assert (=> start!575570 e!3408548))

(declare-fun e!3408543 () Bool)

(assert (=> start!575570 e!3408543))

(declare-fun b!5511681 () Bool)

(declare-fun e!3408550 () Bool)

(declare-fun e!3408549 () Bool)

(assert (=> b!5511681 (= e!3408550 e!3408549)))

(declare-fun res!2348638 () Bool)

(assert (=> b!5511681 (=> res!2348638 e!3408549)))

(declare-fun lt!2245404 () (InoxSet Context!9766))

(declare-fun lt!2245388 () (InoxSet Context!9766))

(assert (=> b!5511681 (= res!2348638 (not (= lt!2245404 lt!2245388)))))

(declare-datatypes ((List!62797 0))(
  ( (Nil!62673) (Cons!62673 (h!69121 C!31268) (t!376042 List!62797)) )
))
(declare-fun s!2326 () List!62797)

(declare-fun lt!2245398 () Context!9766)

(declare-fun derivationStepZipperDown!841 (Regex!15499 Context!9766 C!31268) (InoxSet Context!9766))

(assert (=> b!5511681 (= lt!2245388 (derivationStepZipperDown!841 r!7292 lt!2245398 (h!69121 s!2326)))))

(assert (=> b!5511681 (= lt!2245398 (Context!9767 Nil!62672))))

(declare-fun derivationStepZipperUp!767 (Context!9766 C!31268) (InoxSet Context!9766))

(assert (=> b!5511681 (= lt!2245404 (derivationStepZipperUp!767 (Context!9767 (Cons!62672 r!7292 Nil!62672)) (h!69121 s!2326)))))

(declare-fun lt!2245412 () (InoxSet Context!9766))

(declare-fun derivationStepZipper!1604 ((InoxSet Context!9766) C!31268) (InoxSet Context!9766))

(assert (=> b!5511681 (= lt!2245412 (derivationStepZipper!1604 z!1189 (h!69121 s!2326)))))

(declare-fun b!5511682 () Bool)

(declare-fun tp!1516442 () Bool)

(declare-fun tp!1516438 () Bool)

(assert (=> b!5511682 (= e!3408538 (and tp!1516442 tp!1516438))))

(declare-fun b!5511683 () Bool)

(declare-fun res!2348635 () Bool)

(declare-fun e!3408540 () Bool)

(assert (=> b!5511683 (=> res!2348635 e!3408540)))

(declare-datatypes ((List!62798 0))(
  ( (Nil!62674) (Cons!62674 (h!69122 Context!9766) (t!376043 List!62798)) )
))
(declare-fun zl!343 () List!62798)

(get-info :version)

(assert (=> b!5511683 (= res!2348635 (not ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5511684 () Bool)

(declare-fun e!3408541 () Bool)

(declare-fun lt!2245397 () (InoxSet Context!9766))

(declare-fun matchZipper!1657 ((InoxSet Context!9766) List!62797) Bool)

(assert (=> b!5511684 (= e!3408541 (matchZipper!1657 lt!2245397 (t!376042 s!2326)))))

(declare-fun b!5511685 () Bool)

(declare-fun e!3408537 () Bool)

(declare-fun e!3408546 () Bool)

(assert (=> b!5511685 (= e!3408537 e!3408546)))

(declare-fun res!2348639 () Bool)

(assert (=> b!5511685 (=> res!2348639 e!3408546)))

(declare-fun nullable!5533 (Regex!15499) Bool)

(assert (=> b!5511685 (= res!2348639 (not (nullable!5533 (regOne!31510 r!7292))))))

(assert (=> b!5511685 (= lt!2245397 (derivationStepZipperDown!841 (regTwo!31510 r!7292) lt!2245398 (h!69121 s!2326)))))

(declare-fun lt!2245392 () Context!9766)

(declare-fun lt!2245395 () (InoxSet Context!9766))

(assert (=> b!5511685 (= lt!2245395 (derivationStepZipperDown!841 (regOne!31510 r!7292) lt!2245392 (h!69121 s!2326)))))

(declare-fun lambda!295311 () Int)

(declare-fun lt!2245405 () (InoxSet Context!9766))

(declare-fun flatMap!1112 ((InoxSet Context!9766) Int) (InoxSet Context!9766))

(assert (=> b!5511685 (= (flatMap!1112 lt!2245405 lambda!295311) (derivationStepZipperUp!767 lt!2245392 (h!69121 s!2326)))))

(declare-datatypes ((Unit!155458 0))(
  ( (Unit!155459) )
))
(declare-fun lt!2245403 () Unit!155458)

(declare-fun lemmaFlatMapOnSingletonSet!644 ((InoxSet Context!9766) Context!9766 Int) Unit!155458)

(assert (=> b!5511685 (= lt!2245403 (lemmaFlatMapOnSingletonSet!644 lt!2245405 lt!2245392 lambda!295311))))

(declare-fun lt!2245401 () Context!9766)

(declare-fun lt!2245390 () (InoxSet Context!9766))

(assert (=> b!5511685 (= (flatMap!1112 lt!2245390 lambda!295311) (derivationStepZipperUp!767 lt!2245401 (h!69121 s!2326)))))

(declare-fun lt!2245409 () Unit!155458)

(assert (=> b!5511685 (= lt!2245409 (lemmaFlatMapOnSingletonSet!644 lt!2245390 lt!2245401 lambda!295311))))

(declare-fun lt!2245402 () (InoxSet Context!9766))

(assert (=> b!5511685 (= lt!2245402 (derivationStepZipperUp!767 lt!2245392 (h!69121 s!2326)))))

(declare-fun lt!2245399 () (InoxSet Context!9766))

(assert (=> b!5511685 (= lt!2245399 (derivationStepZipperUp!767 lt!2245401 (h!69121 s!2326)))))

(assert (=> b!5511685 (= lt!2245405 (store ((as const (Array Context!9766 Bool)) false) lt!2245392 true))))

(declare-fun lt!2245408 () List!62796)

(assert (=> b!5511685 (= lt!2245392 (Context!9767 lt!2245408))))

(assert (=> b!5511685 (= lt!2245390 (store ((as const (Array Context!9766 Bool)) false) lt!2245401 true))))

(assert (=> b!5511685 (= lt!2245401 (Context!9767 (Cons!62672 (regOne!31510 r!7292) lt!2245408)))))

(assert (=> b!5511685 (= lt!2245408 (Cons!62672 (regTwo!31510 r!7292) Nil!62672))))

(declare-fun b!5511686 () Bool)

(declare-fun tp_is_empty!40251 () Bool)

(declare-fun tp!1516435 () Bool)

(assert (=> b!5511686 (= e!3408543 (and tp_is_empty!40251 tp!1516435))))

(declare-fun b!5511687 () Bool)

(declare-fun res!2348644 () Bool)

(assert (=> b!5511687 (=> (not res!2348644) (not e!3408544))))

(declare-fun toList!9283 ((InoxSet Context!9766)) List!62798)

(assert (=> b!5511687 (= res!2348644 (= (toList!9283 z!1189) zl!343))))

(declare-fun b!5511688 () Bool)

(declare-fun res!2348645 () Bool)

(assert (=> b!5511688 (=> res!2348645 e!3408550)))

(declare-fun isEmpty!34453 (List!62796) Bool)

(assert (=> b!5511688 (= res!2348645 (not (isEmpty!34453 (t!376041 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5511689 () Bool)

(assert (=> b!5511689 (= e!3408544 (not e!3408540))))

(declare-fun res!2348637 () Bool)

(assert (=> b!5511689 (=> res!2348637 e!3408540)))

(assert (=> b!5511689 (= res!2348637 (not ((_ is Cons!62674) zl!343)))))

(declare-fun lt!2245391 () Bool)

(declare-fun matchRSpec!2602 (Regex!15499 List!62797) Bool)

(assert (=> b!5511689 (= lt!2245391 (matchRSpec!2602 r!7292 s!2326))))

(declare-fun matchR!7684 (Regex!15499 List!62797) Bool)

(assert (=> b!5511689 (= lt!2245391 (matchR!7684 r!7292 s!2326))))

(declare-fun lt!2245393 () Unit!155458)

(declare-fun mainMatchTheorem!2602 (Regex!15499 List!62797) Unit!155458)

(assert (=> b!5511689 (= lt!2245393 (mainMatchTheorem!2602 r!7292 s!2326))))

(declare-fun b!5511690 () Bool)

(declare-fun e!3408547 () Bool)

(assert (=> b!5511690 (= e!3408546 e!3408547)))

(declare-fun res!2348633 () Bool)

(assert (=> b!5511690 (=> res!2348633 e!3408547)))

(declare-fun lt!2245411 () (InoxSet Context!9766))

(assert (=> b!5511690 (= res!2348633 (not (= lt!2245412 lt!2245411)))))

(assert (=> b!5511690 (= lt!2245411 ((_ map or) lt!2245395 lt!2245397))))

(declare-fun e!3408539 () Bool)

(declare-fun b!5511691 () Bool)

(assert (=> b!5511691 (= e!3408539 (or (not (= lt!2245399 ((_ map or) lt!2245395 lt!2245402))) (= lt!2245399 lt!2245411)))))

(declare-fun b!5511692 () Bool)

(declare-fun res!2348647 () Bool)

(assert (=> b!5511692 (=> res!2348647 e!3408540)))

(declare-fun generalisedConcat!1114 (List!62796) Regex!15499)

(assert (=> b!5511692 (= res!2348647 (not (= r!7292 (generalisedConcat!1114 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5511693 () Bool)

(declare-fun res!2348640 () Bool)

(assert (=> b!5511693 (=> (not res!2348640) (not e!3408544))))

(declare-fun unfocusZipper!1241 (List!62798) Regex!15499)

(assert (=> b!5511693 (= res!2348640 (= r!7292 (unfocusZipper!1241 zl!343)))))

(declare-fun b!5511694 () Bool)

(declare-fun res!2348634 () Bool)

(assert (=> b!5511694 (=> res!2348634 e!3408540)))

(declare-fun generalisedUnion!1362 (List!62796) Regex!15499)

(declare-fun unfocusZipperList!927 (List!62798) List!62796)

(assert (=> b!5511694 (= res!2348634 (not (= r!7292 (generalisedUnion!1362 (unfocusZipperList!927 zl!343)))))))

(declare-fun b!5511695 () Bool)

(declare-fun res!2348632 () Bool)

(assert (=> b!5511695 (=> res!2348632 e!3408540)))

(declare-fun isEmpty!34454 (List!62798) Bool)

(assert (=> b!5511695 (= res!2348632 (not (isEmpty!34454 (t!376043 zl!343))))))

(declare-fun b!5511696 () Bool)

(assert (=> b!5511696 (= e!3408547 e!3408539)))

(declare-fun res!2348636 () Bool)

(assert (=> b!5511696 (=> res!2348636 e!3408539)))

(declare-fun lt!2245394 () Bool)

(assert (=> b!5511696 (= res!2348636 (not (= lt!2245394 (matchZipper!1657 lt!2245412 (t!376042 s!2326)))))))

(declare-fun lt!2245406 () Bool)

(assert (=> b!5511696 (= lt!2245406 lt!2245394)))

(assert (=> b!5511696 (= lt!2245394 e!3408541)))

(declare-fun res!2348646 () Bool)

(assert (=> b!5511696 (=> res!2348646 e!3408541)))

(declare-fun lt!2245413 () Bool)

(assert (=> b!5511696 (= res!2348646 lt!2245413)))

(assert (=> b!5511696 (= lt!2245406 (matchZipper!1657 lt!2245411 (t!376042 s!2326)))))

(assert (=> b!5511696 (= lt!2245413 (matchZipper!1657 lt!2245395 (t!376042 s!2326)))))

(declare-fun lt!2245400 () Unit!155458)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!546 ((InoxSet Context!9766) (InoxSet Context!9766) List!62797) Unit!155458)

(assert (=> b!5511696 (= lt!2245400 (lemmaZipperConcatMatchesSameAsBothZippers!546 lt!2245395 lt!2245397 (t!376042 s!2326)))))

(assert (=> b!5511697 (= e!3408540 e!3408550)))

(declare-fun res!2348641 () Bool)

(assert (=> b!5511697 (=> res!2348641 e!3408550)))

(declare-fun lt!2245396 () Bool)

(assert (=> b!5511697 (= res!2348641 (or (not (= lt!2245391 lt!2245396)) ((_ is Nil!62673) s!2326)))))

(declare-fun Exists!2599 (Int) Bool)

(assert (=> b!5511697 (= (Exists!2599 lambda!295309) (Exists!2599 lambda!295310))))

(declare-fun lt!2245410 () Unit!155458)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1228 (Regex!15499 Regex!15499 List!62797) Unit!155458)

(assert (=> b!5511697 (= lt!2245410 (lemmaExistCutMatchRandMatchRSpecEquivalent!1228 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326))))

(assert (=> b!5511697 (= lt!2245396 (Exists!2599 lambda!295309))))

(declare-datatypes ((tuple2!65192 0))(
  ( (tuple2!65193 (_1!35899 List!62797) (_2!35899 List!62797)) )
))
(declare-datatypes ((Option!15508 0))(
  ( (None!15507) (Some!15507 (v!51542 tuple2!65192)) )
))
(declare-fun isDefined!12211 (Option!15508) Bool)

(declare-fun findConcatSeparation!1922 (Regex!15499 Regex!15499 List!62797 List!62797 List!62797) Option!15508)

(assert (=> b!5511697 (= lt!2245396 (isDefined!12211 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326)))))

(declare-fun lt!2245407 () Unit!155458)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1686 (Regex!15499 Regex!15499 List!62797) Unit!155458)

(assert (=> b!5511697 (= lt!2245407 (lemmaFindConcatSeparationEquivalentToExists!1686 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326))))

(declare-fun b!5511698 () Bool)

(declare-fun tp!1516439 () Bool)

(declare-fun tp!1516443 () Bool)

(assert (=> b!5511698 (= e!3408538 (and tp!1516439 tp!1516443))))

(declare-fun b!5511699 () Bool)

(declare-fun e!3408545 () Bool)

(declare-fun tp!1516440 () Bool)

(assert (=> b!5511699 (= e!3408545 tp!1516440)))

(declare-fun b!5511700 () Bool)

(assert (=> b!5511700 (= e!3408538 tp_is_empty!40251)))

(declare-fun b!5511701 () Bool)

(declare-fun res!2348648 () Bool)

(assert (=> b!5511701 (=> res!2348648 e!3408540)))

(assert (=> b!5511701 (= res!2348648 (or ((_ is EmptyExpr!15499) r!7292) ((_ is EmptyLang!15499) r!7292) ((_ is ElementMatch!15499) r!7292) ((_ is Union!15499) r!7292) (not ((_ is Concat!24344) r!7292))))))

(declare-fun tp!1516434 () Bool)

(declare-fun setElem!36609 () Context!9766)

(declare-fun setNonEmpty!36609 () Bool)

(declare-fun inv!81994 (Context!9766) Bool)

(assert (=> setNonEmpty!36609 (= setRes!36609 (and tp!1516434 (inv!81994 setElem!36609) e!3408545))))

(declare-fun setRest!36609 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36609 (= z!1189 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36609 true) setRest!36609))))

(declare-fun b!5511702 () Bool)

(declare-fun e!3408542 () Bool)

(declare-fun tp!1516437 () Bool)

(assert (=> b!5511702 (= e!3408542 tp!1516437)))

(assert (=> b!5511703 (= e!3408549 e!3408537)))

(declare-fun res!2348643 () Bool)

(assert (=> b!5511703 (=> res!2348643 e!3408537)))

(assert (=> b!5511703 (= res!2348643 (not (= lt!2245412 lt!2245388)))))

(assert (=> b!5511703 (= (flatMap!1112 z!1189 lambda!295311) (derivationStepZipperUp!767 (h!69122 zl!343) (h!69121 s!2326)))))

(declare-fun lt!2245389 () Unit!155458)

(assert (=> b!5511703 (= lt!2245389 (lemmaFlatMapOnSingletonSet!644 z!1189 (h!69122 zl!343) lambda!295311))))

(declare-fun b!5511704 () Bool)

(declare-fun tp!1516441 () Bool)

(assert (=> b!5511704 (= e!3408548 (and (inv!81994 (h!69122 zl!343)) e!3408542 tp!1516441))))

(assert (= (and start!575570 res!2348642) b!5511687))

(assert (= (and b!5511687 res!2348644) b!5511693))

(assert (= (and b!5511693 res!2348640) b!5511689))

(assert (= (and b!5511689 (not res!2348637)) b!5511695))

(assert (= (and b!5511695 (not res!2348632)) b!5511692))

(assert (= (and b!5511692 (not res!2348647)) b!5511683))

(assert (= (and b!5511683 (not res!2348635)) b!5511694))

(assert (= (and b!5511694 (not res!2348634)) b!5511701))

(assert (= (and b!5511701 (not res!2348648)) b!5511697))

(assert (= (and b!5511697 (not res!2348641)) b!5511688))

(assert (= (and b!5511688 (not res!2348645)) b!5511681))

(assert (= (and b!5511681 (not res!2348638)) b!5511703))

(assert (= (and b!5511703 (not res!2348643)) b!5511685))

(assert (= (and b!5511685 (not res!2348639)) b!5511690))

(assert (= (and b!5511690 (not res!2348633)) b!5511696))

(assert (= (and b!5511696 (not res!2348646)) b!5511684))

(assert (= (and b!5511696 (not res!2348636)) b!5511691))

(assert (= (and start!575570 ((_ is ElementMatch!15499) r!7292)) b!5511700))

(assert (= (and start!575570 ((_ is Concat!24344) r!7292)) b!5511698))

(assert (= (and start!575570 ((_ is Star!15499) r!7292)) b!5511680))

(assert (= (and start!575570 ((_ is Union!15499) r!7292)) b!5511682))

(assert (= (and start!575570 condSetEmpty!36609) setIsEmpty!36609))

(assert (= (and start!575570 (not condSetEmpty!36609)) setNonEmpty!36609))

(assert (= setNonEmpty!36609 b!5511699))

(assert (= b!5511704 b!5511702))

(assert (= (and start!575570 ((_ is Cons!62674) zl!343)) b!5511704))

(assert (= (and start!575570 ((_ is Cons!62673) s!2326)) b!5511686))

(declare-fun m!6516474 () Bool)

(assert (=> setNonEmpty!36609 m!6516474))

(declare-fun m!6516476 () Bool)

(assert (=> b!5511684 m!6516476))

(declare-fun m!6516478 () Bool)

(assert (=> b!5511695 m!6516478))

(declare-fun m!6516480 () Bool)

(assert (=> b!5511697 m!6516480))

(declare-fun m!6516482 () Bool)

(assert (=> b!5511697 m!6516482))

(declare-fun m!6516484 () Bool)

(assert (=> b!5511697 m!6516484))

(declare-fun m!6516486 () Bool)

(assert (=> b!5511697 m!6516486))

(declare-fun m!6516488 () Bool)

(assert (=> b!5511697 m!6516488))

(assert (=> b!5511697 m!6516484))

(assert (=> b!5511697 m!6516480))

(declare-fun m!6516490 () Bool)

(assert (=> b!5511697 m!6516490))

(declare-fun m!6516492 () Bool)

(assert (=> b!5511685 m!6516492))

(declare-fun m!6516494 () Bool)

(assert (=> b!5511685 m!6516494))

(declare-fun m!6516496 () Bool)

(assert (=> b!5511685 m!6516496))

(declare-fun m!6516498 () Bool)

(assert (=> b!5511685 m!6516498))

(declare-fun m!6516500 () Bool)

(assert (=> b!5511685 m!6516500))

(declare-fun m!6516502 () Bool)

(assert (=> b!5511685 m!6516502))

(declare-fun m!6516504 () Bool)

(assert (=> b!5511685 m!6516504))

(declare-fun m!6516506 () Bool)

(assert (=> b!5511685 m!6516506))

(declare-fun m!6516508 () Bool)

(assert (=> b!5511685 m!6516508))

(declare-fun m!6516510 () Bool)

(assert (=> b!5511685 m!6516510))

(declare-fun m!6516512 () Bool)

(assert (=> b!5511685 m!6516512))

(declare-fun m!6516514 () Bool)

(assert (=> b!5511703 m!6516514))

(declare-fun m!6516516 () Bool)

(assert (=> b!5511703 m!6516516))

(declare-fun m!6516518 () Bool)

(assert (=> b!5511703 m!6516518))

(declare-fun m!6516520 () Bool)

(assert (=> b!5511693 m!6516520))

(declare-fun m!6516522 () Bool)

(assert (=> b!5511694 m!6516522))

(assert (=> b!5511694 m!6516522))

(declare-fun m!6516524 () Bool)

(assert (=> b!5511694 m!6516524))

(declare-fun m!6516526 () Bool)

(assert (=> b!5511692 m!6516526))

(declare-fun m!6516528 () Bool)

(assert (=> b!5511687 m!6516528))

(declare-fun m!6516530 () Bool)

(assert (=> b!5511689 m!6516530))

(declare-fun m!6516532 () Bool)

(assert (=> b!5511689 m!6516532))

(declare-fun m!6516534 () Bool)

(assert (=> b!5511689 m!6516534))

(declare-fun m!6516536 () Bool)

(assert (=> b!5511696 m!6516536))

(declare-fun m!6516538 () Bool)

(assert (=> b!5511696 m!6516538))

(declare-fun m!6516540 () Bool)

(assert (=> b!5511696 m!6516540))

(declare-fun m!6516542 () Bool)

(assert (=> b!5511696 m!6516542))

(declare-fun m!6516544 () Bool)

(assert (=> start!575570 m!6516544))

(declare-fun m!6516546 () Bool)

(assert (=> b!5511704 m!6516546))

(declare-fun m!6516548 () Bool)

(assert (=> b!5511688 m!6516548))

(declare-fun m!6516550 () Bool)

(assert (=> b!5511681 m!6516550))

(declare-fun m!6516552 () Bool)

(assert (=> b!5511681 m!6516552))

(declare-fun m!6516554 () Bool)

(assert (=> b!5511681 m!6516554))

(check-sat tp_is_empty!40251 (not b!5511702) (not b!5511684) (not b!5511695) (not b!5511696) (not b!5511680) (not b!5511697) (not b!5511685) (not b!5511692) (not b!5511698) (not b!5511703) (not b!5511681) (not b!5511693) (not b!5511686) (not setNonEmpty!36609) (not b!5511694) (not b!5511687) (not b!5511682) (not start!575570) (not b!5511688) (not b!5511689) (not b!5511699) (not b!5511704))
(check-sat)
(get-model)

(declare-fun b!5511837 () Bool)

(declare-fun e!3408635 () Bool)

(declare-fun e!3408636 () Bool)

(assert (=> b!5511837 (= e!3408635 e!3408636)))

(declare-fun c!963282 () Bool)

(assert (=> b!5511837 (= c!963282 (isEmpty!34453 (exprs!5383 (h!69122 zl!343))))))

(declare-fun b!5511838 () Bool)

(declare-fun e!3408633 () Bool)

(assert (=> b!5511838 (= e!3408633 (isEmpty!34453 (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5511839 () Bool)

(declare-fun lt!2245431 () Regex!15499)

(declare-fun isEmptyExpr!1075 (Regex!15499) Bool)

(assert (=> b!5511839 (= e!3408636 (isEmptyExpr!1075 lt!2245431))))

(declare-fun b!5511840 () Bool)

(declare-fun e!3408631 () Regex!15499)

(assert (=> b!5511840 (= e!3408631 (h!69120 (exprs!5383 (h!69122 zl!343))))))

(declare-fun d!1746267 () Bool)

(assert (=> d!1746267 e!3408635))

(declare-fun res!2348683 () Bool)

(assert (=> d!1746267 (=> (not res!2348683) (not e!3408635))))

(assert (=> d!1746267 (= res!2348683 (validRegex!7235 lt!2245431))))

(assert (=> d!1746267 (= lt!2245431 e!3408631)))

(declare-fun c!963283 () Bool)

(assert (=> d!1746267 (= c!963283 e!3408633)))

(declare-fun res!2348684 () Bool)

(assert (=> d!1746267 (=> (not res!2348684) (not e!3408633))))

(assert (=> d!1746267 (= res!2348684 ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343))))))

(declare-fun lambda!295323 () Int)

(declare-fun forall!14677 (List!62796 Int) Bool)

(assert (=> d!1746267 (forall!14677 (exprs!5383 (h!69122 zl!343)) lambda!295323)))

(assert (=> d!1746267 (= (generalisedConcat!1114 (exprs!5383 (h!69122 zl!343))) lt!2245431)))

(declare-fun b!5511841 () Bool)

(declare-fun e!3408632 () Regex!15499)

(assert (=> b!5511841 (= e!3408632 (Concat!24344 (h!69120 (exprs!5383 (h!69122 zl!343))) (generalisedConcat!1114 (t!376041 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5511842 () Bool)

(assert (=> b!5511842 (= e!3408631 e!3408632)))

(declare-fun c!963280 () Bool)

(assert (=> b!5511842 (= c!963280 ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343))))))

(declare-fun b!5511843 () Bool)

(declare-fun e!3408634 () Bool)

(assert (=> b!5511843 (= e!3408636 e!3408634)))

(declare-fun c!963281 () Bool)

(declare-fun tail!10904 (List!62796) List!62796)

(assert (=> b!5511843 (= c!963281 (isEmpty!34453 (tail!10904 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5511844 () Bool)

(assert (=> b!5511844 (= e!3408632 EmptyExpr!15499)))

(declare-fun b!5511845 () Bool)

(declare-fun head!11809 (List!62796) Regex!15499)

(assert (=> b!5511845 (= e!3408634 (= lt!2245431 (head!11809 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5511846 () Bool)

(declare-fun isConcat!598 (Regex!15499) Bool)

(assert (=> b!5511846 (= e!3408634 (isConcat!598 lt!2245431))))

(assert (= (and d!1746267 res!2348684) b!5511838))

(assert (= (and d!1746267 c!963283) b!5511840))

(assert (= (and d!1746267 (not c!963283)) b!5511842))

(assert (= (and b!5511842 c!963280) b!5511841))

(assert (= (and b!5511842 (not c!963280)) b!5511844))

(assert (= (and d!1746267 res!2348683) b!5511837))

(assert (= (and b!5511837 c!963282) b!5511839))

(assert (= (and b!5511837 (not c!963282)) b!5511843))

(assert (= (and b!5511843 c!963281) b!5511845))

(assert (= (and b!5511843 (not c!963281)) b!5511846))

(declare-fun m!6516634 () Bool)

(assert (=> b!5511845 m!6516634))

(declare-fun m!6516636 () Bool)

(assert (=> b!5511841 m!6516636))

(declare-fun m!6516638 () Bool)

(assert (=> d!1746267 m!6516638))

(declare-fun m!6516640 () Bool)

(assert (=> d!1746267 m!6516640))

(assert (=> b!5511838 m!6516548))

(declare-fun m!6516642 () Bool)

(assert (=> b!5511843 m!6516642))

(assert (=> b!5511843 m!6516642))

(declare-fun m!6516644 () Bool)

(assert (=> b!5511843 m!6516644))

(declare-fun m!6516646 () Bool)

(assert (=> b!5511837 m!6516646))

(declare-fun m!6516648 () Bool)

(assert (=> b!5511846 m!6516648))

(declare-fun m!6516650 () Bool)

(assert (=> b!5511839 m!6516650))

(assert (=> b!5511692 d!1746267))

(declare-fun bs!1270523 () Bool)

(declare-fun d!1746281 () Bool)

(assert (= bs!1270523 (and d!1746281 d!1746267)))

(declare-fun lambda!295326 () Int)

(assert (=> bs!1270523 (= lambda!295326 lambda!295323)))

(assert (=> d!1746281 (= (inv!81994 setElem!36609) (forall!14677 (exprs!5383 setElem!36609) lambda!295326))))

(declare-fun bs!1270524 () Bool)

(assert (= bs!1270524 d!1746281))

(declare-fun m!6516652 () Bool)

(assert (=> bs!1270524 m!6516652))

(assert (=> setNonEmpty!36609 d!1746281))

(declare-fun b!5511910 () Bool)

(declare-fun c!963301 () Bool)

(declare-fun e!3408672 () Bool)

(assert (=> b!5511910 (= c!963301 e!3408672)))

(declare-fun res!2348714 () Bool)

(assert (=> b!5511910 (=> (not res!2348714) (not e!3408672))))

(assert (=> b!5511910 (= res!2348714 ((_ is Concat!24344) r!7292))))

(declare-fun e!3408675 () (InoxSet Context!9766))

(declare-fun e!3408673 () (InoxSet Context!9766))

(assert (=> b!5511910 (= e!3408675 e!3408673)))

(declare-fun bm!407552 () Bool)

(declare-fun call!407557 () (InoxSet Context!9766))

(declare-fun call!407560 () (InoxSet Context!9766))

(assert (=> bm!407552 (= call!407557 call!407560)))

(declare-fun b!5511911 () Bool)

(declare-fun e!3408674 () (InoxSet Context!9766))

(assert (=> b!5511911 (= e!3408674 call!407557)))

(declare-fun b!5511912 () Bool)

(assert (=> b!5511912 (= e!3408672 (nullable!5533 (regOne!31510 r!7292)))))

(declare-fun bm!407553 () Bool)

(declare-fun call!407562 () List!62796)

(declare-fun c!963302 () Bool)

(declare-fun $colon$colon!1582 (List!62796 Regex!15499) List!62796)

(assert (=> bm!407553 (= call!407562 ($colon$colon!1582 (exprs!5383 lt!2245398) (ite (or c!963301 c!963302) (regTwo!31510 r!7292) r!7292)))))

(declare-fun b!5511913 () Bool)

(assert (=> b!5511913 (= e!3408674 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5511914 () Bool)

(declare-fun e!3408671 () (InoxSet Context!9766))

(assert (=> b!5511914 (= e!3408671 e!3408675)))

(declare-fun c!963304 () Bool)

(assert (=> b!5511914 (= c!963304 ((_ is Union!15499) r!7292))))

(declare-fun b!5511915 () Bool)

(declare-fun e!3408676 () (InoxSet Context!9766))

(assert (=> b!5511915 (= e!3408676 call!407557)))

(declare-fun b!5511916 () Bool)

(declare-fun call!407561 () (InoxSet Context!9766))

(declare-fun call!407558 () (InoxSet Context!9766))

(assert (=> b!5511916 (= e!3408675 ((_ map or) call!407561 call!407558))))

(declare-fun bm!407554 () Bool)

(assert (=> bm!407554 (= call!407561 (derivationStepZipperDown!841 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)) (ite c!963304 lt!2245398 (Context!9767 call!407562)) (h!69121 s!2326)))))

(declare-fun b!5511918 () Bool)

(assert (=> b!5511918 (= e!3408673 ((_ map or) call!407561 call!407560))))

(declare-fun b!5511919 () Bool)

(declare-fun c!963305 () Bool)

(assert (=> b!5511919 (= c!963305 ((_ is Star!15499) r!7292))))

(assert (=> b!5511919 (= e!3408676 e!3408674)))

(declare-fun bm!407555 () Bool)

(declare-fun call!407559 () List!62796)

(assert (=> bm!407555 (= call!407558 (derivationStepZipperDown!841 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))) (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559)) (h!69121 s!2326)))))

(declare-fun bm!407556 () Bool)

(assert (=> bm!407556 (= call!407559 call!407562)))

(declare-fun b!5511917 () Bool)

(assert (=> b!5511917 (= e!3408671 (store ((as const (Array Context!9766 Bool)) false) lt!2245398 true))))

(declare-fun d!1746283 () Bool)

(declare-fun c!963303 () Bool)

(assert (=> d!1746283 (= c!963303 (and ((_ is ElementMatch!15499) r!7292) (= (c!963233 r!7292) (h!69121 s!2326))))))

(assert (=> d!1746283 (= (derivationStepZipperDown!841 r!7292 lt!2245398 (h!69121 s!2326)) e!3408671)))

(declare-fun bm!407557 () Bool)

(assert (=> bm!407557 (= call!407560 call!407558)))

(declare-fun b!5511920 () Bool)

(assert (=> b!5511920 (= e!3408673 e!3408676)))

(assert (=> b!5511920 (= c!963302 ((_ is Concat!24344) r!7292))))

(assert (= (and d!1746283 c!963303) b!5511917))

(assert (= (and d!1746283 (not c!963303)) b!5511914))

(assert (= (and b!5511914 c!963304) b!5511916))

(assert (= (and b!5511914 (not c!963304)) b!5511910))

(assert (= (and b!5511910 res!2348714) b!5511912))

(assert (= (and b!5511910 c!963301) b!5511918))

(assert (= (and b!5511910 (not c!963301)) b!5511920))

(assert (= (and b!5511920 c!963302) b!5511915))

(assert (= (and b!5511920 (not c!963302)) b!5511919))

(assert (= (and b!5511919 c!963305) b!5511911))

(assert (= (and b!5511919 (not c!963305)) b!5511913))

(assert (= (or b!5511915 b!5511911) bm!407556))

(assert (= (or b!5511915 b!5511911) bm!407552))

(assert (= (or b!5511918 bm!407556) bm!407553))

(assert (= (or b!5511918 bm!407552) bm!407557))

(assert (= (or b!5511916 bm!407557) bm!407555))

(assert (= (or b!5511916 b!5511918) bm!407554))

(declare-fun m!6516702 () Bool)

(assert (=> b!5511917 m!6516702))

(declare-fun m!6516704 () Bool)

(assert (=> bm!407553 m!6516704))

(assert (=> b!5511912 m!6516504))

(declare-fun m!6516706 () Bool)

(assert (=> bm!407555 m!6516706))

(declare-fun m!6516708 () Bool)

(assert (=> bm!407554 m!6516708))

(assert (=> b!5511681 d!1746283))

(declare-fun b!5511985 () Bool)

(declare-fun e!3408714 () (InoxSet Context!9766))

(assert (=> b!5511985 (= e!3408714 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407586 () Bool)

(declare-fun call!407591 () (InoxSet Context!9766))

(assert (=> bm!407586 (= call!407591 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69121 s!2326)))))

(declare-fun b!5511986 () Bool)

(assert (=> b!5511986 (= e!3408714 call!407591)))

(declare-fun b!5511987 () Bool)

(declare-fun e!3408713 () Bool)

(assert (=> b!5511987 (= e!3408713 (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(declare-fun e!3408715 () (InoxSet Context!9766))

(declare-fun b!5511988 () Bool)

(assert (=> b!5511988 (= e!3408715 ((_ map or) call!407591 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69121 s!2326))))))

(declare-fun d!1746301 () Bool)

(declare-fun c!963334 () Bool)

(assert (=> d!1746301 (= c!963334 e!3408713)))

(declare-fun res!2348723 () Bool)

(assert (=> d!1746301 (=> (not res!2348723) (not e!3408713))))

(assert (=> d!1746301 (= res!2348723 ((_ is Cons!62672) (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))

(assert (=> d!1746301 (= (derivationStepZipperUp!767 (Context!9767 (Cons!62672 r!7292 Nil!62672)) (h!69121 s!2326)) e!3408715)))

(declare-fun b!5511989 () Bool)

(assert (=> b!5511989 (= e!3408715 e!3408714)))

(declare-fun c!963335 () Bool)

(assert (=> b!5511989 (= c!963335 ((_ is Cons!62672) (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))

(assert (= (and d!1746301 res!2348723) b!5511987))

(assert (= (and d!1746301 c!963334) b!5511988))

(assert (= (and d!1746301 (not c!963334)) b!5511989))

(assert (= (and b!5511989 c!963335) b!5511986))

(assert (= (and b!5511989 (not c!963335)) b!5511985))

(assert (= (or b!5511988 b!5511986) bm!407586))

(declare-fun m!6516734 () Bool)

(assert (=> bm!407586 m!6516734))

(declare-fun m!6516736 () Bool)

(assert (=> b!5511987 m!6516736))

(declare-fun m!6516738 () Bool)

(assert (=> b!5511988 m!6516738))

(assert (=> b!5511681 d!1746301))

(declare-fun bs!1270542 () Bool)

(declare-fun d!1746313 () Bool)

(assert (= bs!1270542 (and d!1746313 b!5511703)))

(declare-fun lambda!295341 () Int)

(assert (=> bs!1270542 (= lambda!295341 lambda!295311)))

(assert (=> d!1746313 true))

(assert (=> d!1746313 (= (derivationStepZipper!1604 z!1189 (h!69121 s!2326)) (flatMap!1112 z!1189 lambda!295341))))

(declare-fun bs!1270543 () Bool)

(assert (= bs!1270543 d!1746313))

(declare-fun m!6516760 () Bool)

(assert (=> bs!1270543 m!6516760))

(assert (=> b!5511681 d!1746313))

(declare-fun d!1746323 () Bool)

(declare-fun choose!41894 ((InoxSet Context!9766) Int) (InoxSet Context!9766))

(assert (=> d!1746323 (= (flatMap!1112 z!1189 lambda!295311) (choose!41894 z!1189 lambda!295311))))

(declare-fun bs!1270544 () Bool)

(assert (= bs!1270544 d!1746323))

(declare-fun m!6516762 () Bool)

(assert (=> bs!1270544 m!6516762))

(assert (=> b!5511703 d!1746323))

(declare-fun b!5512002 () Bool)

(declare-fun e!3408723 () (InoxSet Context!9766))

(assert (=> b!5512002 (= e!3408723 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407589 () Bool)

(declare-fun call!407594 () (InoxSet Context!9766))

(assert (=> bm!407589 (= call!407594 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (h!69122 zl!343))) (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (h!69121 s!2326)))))

(declare-fun b!5512003 () Bool)

(assert (=> b!5512003 (= e!3408723 call!407594)))

(declare-fun b!5512004 () Bool)

(declare-fun e!3408722 () Bool)

(assert (=> b!5512004 (= e!3408722 (nullable!5533 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun e!3408724 () (InoxSet Context!9766))

(declare-fun b!5512005 () Bool)

(assert (=> b!5512005 (= e!3408724 ((_ map or) call!407594 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (h!69121 s!2326))))))

(declare-fun d!1746325 () Bool)

(declare-fun c!963342 () Bool)

(assert (=> d!1746325 (= c!963342 e!3408722)))

(declare-fun res!2348726 () Bool)

(assert (=> d!1746325 (=> (not res!2348726) (not e!3408722))))

(assert (=> d!1746325 (= res!2348726 ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343))))))

(assert (=> d!1746325 (= (derivationStepZipperUp!767 (h!69122 zl!343) (h!69121 s!2326)) e!3408724)))

(declare-fun b!5512006 () Bool)

(assert (=> b!5512006 (= e!3408724 e!3408723)))

(declare-fun c!963343 () Bool)

(assert (=> b!5512006 (= c!963343 ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343))))))

(assert (= (and d!1746325 res!2348726) b!5512004))

(assert (= (and d!1746325 c!963342) b!5512005))

(assert (= (and d!1746325 (not c!963342)) b!5512006))

(assert (= (and b!5512006 c!963343) b!5512003))

(assert (= (and b!5512006 (not c!963343)) b!5512002))

(assert (= (or b!5512005 b!5512003) bm!407589))

(declare-fun m!6516764 () Bool)

(assert (=> bm!407589 m!6516764))

(declare-fun m!6516766 () Bool)

(assert (=> b!5512004 m!6516766))

(declare-fun m!6516768 () Bool)

(assert (=> b!5512005 m!6516768))

(assert (=> b!5511703 d!1746325))

(declare-fun d!1746327 () Bool)

(declare-fun dynLambda!24486 (Int Context!9766) (InoxSet Context!9766))

(assert (=> d!1746327 (= (flatMap!1112 z!1189 lambda!295311) (dynLambda!24486 lambda!295311 (h!69122 zl!343)))))

(declare-fun lt!2245453 () Unit!155458)

(declare-fun choose!41895 ((InoxSet Context!9766) Context!9766 Int) Unit!155458)

(assert (=> d!1746327 (= lt!2245453 (choose!41895 z!1189 (h!69122 zl!343) lambda!295311))))

(assert (=> d!1746327 (= z!1189 (store ((as const (Array Context!9766 Bool)) false) (h!69122 zl!343) true))))

(assert (=> d!1746327 (= (lemmaFlatMapOnSingletonSet!644 z!1189 (h!69122 zl!343) lambda!295311) lt!2245453)))

(declare-fun b_lambda!208967 () Bool)

(assert (=> (not b_lambda!208967) (not d!1746327)))

(declare-fun bs!1270545 () Bool)

(assert (= bs!1270545 d!1746327))

(assert (=> bs!1270545 m!6516514))

(declare-fun m!6516770 () Bool)

(assert (=> bs!1270545 m!6516770))

(declare-fun m!6516772 () Bool)

(assert (=> bs!1270545 m!6516772))

(declare-fun m!6516774 () Bool)

(assert (=> bs!1270545 m!6516774))

(assert (=> b!5511703 d!1746327))

(declare-fun d!1746329 () Bool)

(declare-fun lt!2245456 () Regex!15499)

(assert (=> d!1746329 (validRegex!7235 lt!2245456)))

(assert (=> d!1746329 (= lt!2245456 (generalisedUnion!1362 (unfocusZipperList!927 zl!343)))))

(assert (=> d!1746329 (= (unfocusZipper!1241 zl!343) lt!2245456)))

(declare-fun bs!1270553 () Bool)

(assert (= bs!1270553 d!1746329))

(declare-fun m!6516776 () Bool)

(assert (=> bs!1270553 m!6516776))

(assert (=> bs!1270553 m!6516522))

(assert (=> bs!1270553 m!6516522))

(assert (=> bs!1270553 m!6516524))

(assert (=> b!5511693 d!1746329))

(declare-fun d!1746331 () Bool)

(declare-fun c!963364 () Bool)

(declare-fun isEmpty!34457 (List!62797) Bool)

(assert (=> d!1746331 (= c!963364 (isEmpty!34457 (t!376042 s!2326)))))

(declare-fun e!3408766 () Bool)

(assert (=> d!1746331 (= (matchZipper!1657 lt!2245397 (t!376042 s!2326)) e!3408766)))

(declare-fun b!5512082 () Bool)

(declare-fun nullableZipper!1529 ((InoxSet Context!9766)) Bool)

(assert (=> b!5512082 (= e!3408766 (nullableZipper!1529 lt!2245397))))

(declare-fun b!5512083 () Bool)

(declare-fun head!11810 (List!62797) C!31268)

(declare-fun tail!10905 (List!62797) List!62797)

(assert (=> b!5512083 (= e!3408766 (matchZipper!1657 (derivationStepZipper!1604 lt!2245397 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))))))

(assert (= (and d!1746331 c!963364) b!5512082))

(assert (= (and d!1746331 (not c!963364)) b!5512083))

(declare-fun m!6516786 () Bool)

(assert (=> d!1746331 m!6516786))

(declare-fun m!6516788 () Bool)

(assert (=> b!5512082 m!6516788))

(declare-fun m!6516790 () Bool)

(assert (=> b!5512083 m!6516790))

(assert (=> b!5512083 m!6516790))

(declare-fun m!6516792 () Bool)

(assert (=> b!5512083 m!6516792))

(declare-fun m!6516794 () Bool)

(assert (=> b!5512083 m!6516794))

(assert (=> b!5512083 m!6516792))

(assert (=> b!5512083 m!6516794))

(declare-fun m!6516796 () Bool)

(assert (=> b!5512083 m!6516796))

(assert (=> b!5511684 d!1746331))

(declare-fun d!1746335 () Bool)

(assert (=> d!1746335 (= (isEmpty!34454 (t!376043 zl!343)) ((_ is Nil!62674) (t!376043 zl!343)))))

(assert (=> b!5511695 d!1746335))

(declare-fun bs!1270564 () Bool)

(declare-fun d!1746337 () Bool)

(assert (= bs!1270564 (and d!1746337 d!1746267)))

(declare-fun lambda!295354 () Int)

(assert (=> bs!1270564 (= lambda!295354 lambda!295323)))

(declare-fun bs!1270565 () Bool)

(assert (= bs!1270565 (and d!1746337 d!1746281)))

(assert (=> bs!1270565 (= lambda!295354 lambda!295326)))

(declare-fun b!5512178 () Bool)

(declare-fun e!3408815 () Bool)

(assert (=> b!5512178 (= e!3408815 (isEmpty!34453 (t!376041 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512179 () Bool)

(declare-fun e!3408817 () Regex!15499)

(assert (=> b!5512179 (= e!3408817 EmptyLang!15499)))

(declare-fun b!5512180 () Bool)

(declare-fun e!3408819 () Bool)

(declare-fun e!3408814 () Bool)

(assert (=> b!5512180 (= e!3408819 e!3408814)))

(declare-fun c!963389 () Bool)

(assert (=> b!5512180 (= c!963389 (isEmpty!34453 (tail!10904 (unfocusZipperList!927 zl!343))))))

(declare-fun e!3408818 () Bool)

(assert (=> d!1746337 e!3408818))

(declare-fun res!2348781 () Bool)

(assert (=> d!1746337 (=> (not res!2348781) (not e!3408818))))

(declare-fun lt!2245469 () Regex!15499)

(assert (=> d!1746337 (= res!2348781 (validRegex!7235 lt!2245469))))

(declare-fun e!3408816 () Regex!15499)

(assert (=> d!1746337 (= lt!2245469 e!3408816)))

(declare-fun c!963390 () Bool)

(assert (=> d!1746337 (= c!963390 e!3408815)))

(declare-fun res!2348780 () Bool)

(assert (=> d!1746337 (=> (not res!2348780) (not e!3408815))))

(assert (=> d!1746337 (= res!2348780 ((_ is Cons!62672) (unfocusZipperList!927 zl!343)))))

(assert (=> d!1746337 (forall!14677 (unfocusZipperList!927 zl!343) lambda!295354)))

(assert (=> d!1746337 (= (generalisedUnion!1362 (unfocusZipperList!927 zl!343)) lt!2245469)))

(declare-fun b!5512181 () Bool)

(assert (=> b!5512181 (= e!3408816 (h!69120 (unfocusZipperList!927 zl!343)))))

(declare-fun b!5512182 () Bool)

(assert (=> b!5512182 (= e!3408816 e!3408817)))

(declare-fun c!963388 () Bool)

(assert (=> b!5512182 (= c!963388 ((_ is Cons!62672) (unfocusZipperList!927 zl!343)))))

(declare-fun b!5512183 () Bool)

(assert (=> b!5512183 (= e!3408818 e!3408819)))

(declare-fun c!963387 () Bool)

(assert (=> b!5512183 (= c!963387 (isEmpty!34453 (unfocusZipperList!927 zl!343)))))

(declare-fun b!5512184 () Bool)

(assert (=> b!5512184 (= e!3408817 (Union!15499 (h!69120 (unfocusZipperList!927 zl!343)) (generalisedUnion!1362 (t!376041 (unfocusZipperList!927 zl!343)))))))

(declare-fun b!5512185 () Bool)

(declare-fun isUnion!516 (Regex!15499) Bool)

(assert (=> b!5512185 (= e!3408814 (isUnion!516 lt!2245469))))

(declare-fun b!5512186 () Bool)

(assert (=> b!5512186 (= e!3408814 (= lt!2245469 (head!11809 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512187 () Bool)

(declare-fun isEmptyLang!1086 (Regex!15499) Bool)

(assert (=> b!5512187 (= e!3408819 (isEmptyLang!1086 lt!2245469))))

(assert (= (and d!1746337 res!2348780) b!5512178))

(assert (= (and d!1746337 c!963390) b!5512181))

(assert (= (and d!1746337 (not c!963390)) b!5512182))

(assert (= (and b!5512182 c!963388) b!5512184))

(assert (= (and b!5512182 (not c!963388)) b!5512179))

(assert (= (and d!1746337 res!2348781) b!5512183))

(assert (= (and b!5512183 c!963387) b!5512187))

(assert (= (and b!5512183 (not c!963387)) b!5512180))

(assert (= (and b!5512180 c!963389) b!5512186))

(assert (= (and b!5512180 (not c!963389)) b!5512185))

(assert (=> b!5512180 m!6516522))

(declare-fun m!6516850 () Bool)

(assert (=> b!5512180 m!6516850))

(assert (=> b!5512180 m!6516850))

(declare-fun m!6516852 () Bool)

(assert (=> b!5512180 m!6516852))

(declare-fun m!6516854 () Bool)

(assert (=> d!1746337 m!6516854))

(assert (=> d!1746337 m!6516522))

(declare-fun m!6516856 () Bool)

(assert (=> d!1746337 m!6516856))

(assert (=> b!5512183 m!6516522))

(declare-fun m!6516858 () Bool)

(assert (=> b!5512183 m!6516858))

(declare-fun m!6516860 () Bool)

(assert (=> b!5512178 m!6516860))

(declare-fun m!6516864 () Bool)

(assert (=> b!5512184 m!6516864))

(declare-fun m!6516866 () Bool)

(assert (=> b!5512187 m!6516866))

(assert (=> b!5512186 m!6516522))

(declare-fun m!6516868 () Bool)

(assert (=> b!5512186 m!6516868))

(declare-fun m!6516870 () Bool)

(assert (=> b!5512185 m!6516870))

(assert (=> b!5511694 d!1746337))

(declare-fun bs!1270569 () Bool)

(declare-fun d!1746359 () Bool)

(assert (= bs!1270569 (and d!1746359 d!1746267)))

(declare-fun lambda!295357 () Int)

(assert (=> bs!1270569 (= lambda!295357 lambda!295323)))

(declare-fun bs!1270570 () Bool)

(assert (= bs!1270570 (and d!1746359 d!1746281)))

(assert (=> bs!1270570 (= lambda!295357 lambda!295326)))

(declare-fun bs!1270571 () Bool)

(assert (= bs!1270571 (and d!1746359 d!1746337)))

(assert (=> bs!1270571 (= lambda!295357 lambda!295354)))

(declare-fun lt!2245472 () List!62796)

(assert (=> d!1746359 (forall!14677 lt!2245472 lambda!295357)))

(declare-fun e!3408832 () List!62796)

(assert (=> d!1746359 (= lt!2245472 e!3408832)))

(declare-fun c!963393 () Bool)

(assert (=> d!1746359 (= c!963393 ((_ is Cons!62674) zl!343))))

(assert (=> d!1746359 (= (unfocusZipperList!927 zl!343) lt!2245472)))

(declare-fun b!5512212 () Bool)

(assert (=> b!5512212 (= e!3408832 (Cons!62672 (generalisedConcat!1114 (exprs!5383 (h!69122 zl!343))) (unfocusZipperList!927 (t!376043 zl!343))))))

(declare-fun b!5512213 () Bool)

(assert (=> b!5512213 (= e!3408832 Nil!62672)))

(assert (= (and d!1746359 c!963393) b!5512212))

(assert (= (and d!1746359 (not c!963393)) b!5512213))

(declare-fun m!6516872 () Bool)

(assert (=> d!1746359 m!6516872))

(assert (=> b!5512212 m!6516526))

(declare-fun m!6516874 () Bool)

(assert (=> b!5512212 m!6516874))

(assert (=> b!5511694 d!1746359))

(declare-fun bs!1270572 () Bool)

(declare-fun d!1746367 () Bool)

(assert (= bs!1270572 (and d!1746367 d!1746267)))

(declare-fun lambda!295358 () Int)

(assert (=> bs!1270572 (= lambda!295358 lambda!295323)))

(declare-fun bs!1270573 () Bool)

(assert (= bs!1270573 (and d!1746367 d!1746281)))

(assert (=> bs!1270573 (= lambda!295358 lambda!295326)))

(declare-fun bs!1270574 () Bool)

(assert (= bs!1270574 (and d!1746367 d!1746337)))

(assert (=> bs!1270574 (= lambda!295358 lambda!295354)))

(declare-fun bs!1270575 () Bool)

(assert (= bs!1270575 (and d!1746367 d!1746359)))

(assert (=> bs!1270575 (= lambda!295358 lambda!295357)))

(assert (=> d!1746367 (= (inv!81994 (h!69122 zl!343)) (forall!14677 (exprs!5383 (h!69122 zl!343)) lambda!295358))))

(declare-fun bs!1270576 () Bool)

(assert (= bs!1270576 d!1746367))

(declare-fun m!6516876 () Bool)

(assert (=> bs!1270576 m!6516876))

(assert (=> b!5511704 d!1746367))

(declare-fun d!1746369 () Bool)

(declare-fun c!963394 () Bool)

(assert (=> d!1746369 (= c!963394 (isEmpty!34457 (t!376042 s!2326)))))

(declare-fun e!3408833 () Bool)

(assert (=> d!1746369 (= (matchZipper!1657 lt!2245412 (t!376042 s!2326)) e!3408833)))

(declare-fun b!5512214 () Bool)

(assert (=> b!5512214 (= e!3408833 (nullableZipper!1529 lt!2245412))))

(declare-fun b!5512215 () Bool)

(assert (=> b!5512215 (= e!3408833 (matchZipper!1657 (derivationStepZipper!1604 lt!2245412 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))))))

(assert (= (and d!1746369 c!963394) b!5512214))

(assert (= (and d!1746369 (not c!963394)) b!5512215))

(assert (=> d!1746369 m!6516786))

(declare-fun m!6516878 () Bool)

(assert (=> b!5512214 m!6516878))

(assert (=> b!5512215 m!6516790))

(assert (=> b!5512215 m!6516790))

(declare-fun m!6516880 () Bool)

(assert (=> b!5512215 m!6516880))

(assert (=> b!5512215 m!6516794))

(assert (=> b!5512215 m!6516880))

(assert (=> b!5512215 m!6516794))

(declare-fun m!6516882 () Bool)

(assert (=> b!5512215 m!6516882))

(assert (=> b!5511696 d!1746369))

(declare-fun d!1746371 () Bool)

(declare-fun c!963395 () Bool)

(assert (=> d!1746371 (= c!963395 (isEmpty!34457 (t!376042 s!2326)))))

(declare-fun e!3408834 () Bool)

(assert (=> d!1746371 (= (matchZipper!1657 lt!2245411 (t!376042 s!2326)) e!3408834)))

(declare-fun b!5512216 () Bool)

(assert (=> b!5512216 (= e!3408834 (nullableZipper!1529 lt!2245411))))

(declare-fun b!5512217 () Bool)

(assert (=> b!5512217 (= e!3408834 (matchZipper!1657 (derivationStepZipper!1604 lt!2245411 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))))))

(assert (= (and d!1746371 c!963395) b!5512216))

(assert (= (and d!1746371 (not c!963395)) b!5512217))

(assert (=> d!1746371 m!6516786))

(declare-fun m!6516884 () Bool)

(assert (=> b!5512216 m!6516884))

(assert (=> b!5512217 m!6516790))

(assert (=> b!5512217 m!6516790))

(declare-fun m!6516886 () Bool)

(assert (=> b!5512217 m!6516886))

(assert (=> b!5512217 m!6516794))

(assert (=> b!5512217 m!6516886))

(assert (=> b!5512217 m!6516794))

(declare-fun m!6516888 () Bool)

(assert (=> b!5512217 m!6516888))

(assert (=> b!5511696 d!1746371))

(declare-fun d!1746373 () Bool)

(declare-fun c!963396 () Bool)

(assert (=> d!1746373 (= c!963396 (isEmpty!34457 (t!376042 s!2326)))))

(declare-fun e!3408835 () Bool)

(assert (=> d!1746373 (= (matchZipper!1657 lt!2245395 (t!376042 s!2326)) e!3408835)))

(declare-fun b!5512218 () Bool)

(assert (=> b!5512218 (= e!3408835 (nullableZipper!1529 lt!2245395))))

(declare-fun b!5512219 () Bool)

(assert (=> b!5512219 (= e!3408835 (matchZipper!1657 (derivationStepZipper!1604 lt!2245395 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))))))

(assert (= (and d!1746373 c!963396) b!5512218))

(assert (= (and d!1746373 (not c!963396)) b!5512219))

(assert (=> d!1746373 m!6516786))

(declare-fun m!6516890 () Bool)

(assert (=> b!5512218 m!6516890))

(assert (=> b!5512219 m!6516790))

(assert (=> b!5512219 m!6516790))

(declare-fun m!6516892 () Bool)

(assert (=> b!5512219 m!6516892))

(assert (=> b!5512219 m!6516794))

(assert (=> b!5512219 m!6516892))

(assert (=> b!5512219 m!6516794))

(declare-fun m!6516894 () Bool)

(assert (=> b!5512219 m!6516894))

(assert (=> b!5511696 d!1746373))

(declare-fun e!3408838 () Bool)

(declare-fun d!1746375 () Bool)

(assert (=> d!1746375 (= (matchZipper!1657 ((_ map or) lt!2245395 lt!2245397) (t!376042 s!2326)) e!3408838)))

(declare-fun res!2348784 () Bool)

(assert (=> d!1746375 (=> res!2348784 e!3408838)))

(assert (=> d!1746375 (= res!2348784 (matchZipper!1657 lt!2245395 (t!376042 s!2326)))))

(declare-fun lt!2245475 () Unit!155458)

(declare-fun choose!41898 ((InoxSet Context!9766) (InoxSet Context!9766) List!62797) Unit!155458)

(assert (=> d!1746375 (= lt!2245475 (choose!41898 lt!2245395 lt!2245397 (t!376042 s!2326)))))

(assert (=> d!1746375 (= (lemmaZipperConcatMatchesSameAsBothZippers!546 lt!2245395 lt!2245397 (t!376042 s!2326)) lt!2245475)))

(declare-fun b!5512222 () Bool)

(assert (=> b!5512222 (= e!3408838 (matchZipper!1657 lt!2245397 (t!376042 s!2326)))))

(assert (= (and d!1746375 (not res!2348784)) b!5512222))

(declare-fun m!6516896 () Bool)

(assert (=> d!1746375 m!6516896))

(assert (=> d!1746375 m!6516540))

(declare-fun m!6516898 () Bool)

(assert (=> d!1746375 m!6516898))

(assert (=> b!5512222 m!6516476))

(assert (=> b!5511696 d!1746375))

(declare-fun d!1746377 () Bool)

(assert (=> d!1746377 (= (flatMap!1112 lt!2245405 lambda!295311) (dynLambda!24486 lambda!295311 lt!2245392))))

(declare-fun lt!2245476 () Unit!155458)

(assert (=> d!1746377 (= lt!2245476 (choose!41895 lt!2245405 lt!2245392 lambda!295311))))

(assert (=> d!1746377 (= lt!2245405 (store ((as const (Array Context!9766 Bool)) false) lt!2245392 true))))

(assert (=> d!1746377 (= (lemmaFlatMapOnSingletonSet!644 lt!2245405 lt!2245392 lambda!295311) lt!2245476)))

(declare-fun b_lambda!208977 () Bool)

(assert (=> (not b_lambda!208977) (not d!1746377)))

(declare-fun bs!1270577 () Bool)

(assert (= bs!1270577 d!1746377))

(assert (=> bs!1270577 m!6516494))

(declare-fun m!6516900 () Bool)

(assert (=> bs!1270577 m!6516900))

(declare-fun m!6516902 () Bool)

(assert (=> bs!1270577 m!6516902))

(assert (=> bs!1270577 m!6516492))

(assert (=> b!5511685 d!1746377))

(declare-fun b!5512223 () Bool)

(declare-fun e!3408840 () (InoxSet Context!9766))

(assert (=> b!5512223 (= e!3408840 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407607 () Bool)

(declare-fun call!407612 () (InoxSet Context!9766))

(assert (=> bm!407607 (= call!407612 (derivationStepZipperDown!841 (h!69120 (exprs!5383 lt!2245401)) (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (h!69121 s!2326)))))

(declare-fun b!5512224 () Bool)

(assert (=> b!5512224 (= e!3408840 call!407612)))

(declare-fun b!5512225 () Bool)

(declare-fun e!3408839 () Bool)

(assert (=> b!5512225 (= e!3408839 (nullable!5533 (h!69120 (exprs!5383 lt!2245401))))))

(declare-fun e!3408841 () (InoxSet Context!9766))

(declare-fun b!5512226 () Bool)

(assert (=> b!5512226 (= e!3408841 ((_ map or) call!407612 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (h!69121 s!2326))))))

(declare-fun d!1746379 () Bool)

(declare-fun c!963397 () Bool)

(assert (=> d!1746379 (= c!963397 e!3408839)))

(declare-fun res!2348785 () Bool)

(assert (=> d!1746379 (=> (not res!2348785) (not e!3408839))))

(assert (=> d!1746379 (= res!2348785 ((_ is Cons!62672) (exprs!5383 lt!2245401)))))

(assert (=> d!1746379 (= (derivationStepZipperUp!767 lt!2245401 (h!69121 s!2326)) e!3408841)))

(declare-fun b!5512227 () Bool)

(assert (=> b!5512227 (= e!3408841 e!3408840)))

(declare-fun c!963398 () Bool)

(assert (=> b!5512227 (= c!963398 ((_ is Cons!62672) (exprs!5383 lt!2245401)))))

(assert (= (and d!1746379 res!2348785) b!5512225))

(assert (= (and d!1746379 c!963397) b!5512226))

(assert (= (and d!1746379 (not c!963397)) b!5512227))

(assert (= (and b!5512227 c!963398) b!5512224))

(assert (= (and b!5512227 (not c!963398)) b!5512223))

(assert (= (or b!5512226 b!5512224) bm!407607))

(declare-fun m!6516904 () Bool)

(assert (=> bm!407607 m!6516904))

(declare-fun m!6516906 () Bool)

(assert (=> b!5512225 m!6516906))

(declare-fun m!6516908 () Bool)

(assert (=> b!5512226 m!6516908))

(assert (=> b!5511685 d!1746379))

(declare-fun d!1746381 () Bool)

(declare-fun nullableFct!1661 (Regex!15499) Bool)

(assert (=> d!1746381 (= (nullable!5533 (regOne!31510 r!7292)) (nullableFct!1661 (regOne!31510 r!7292)))))

(declare-fun bs!1270578 () Bool)

(assert (= bs!1270578 d!1746381))

(declare-fun m!6516910 () Bool)

(assert (=> bs!1270578 m!6516910))

(assert (=> b!5511685 d!1746381))

(declare-fun d!1746383 () Bool)

(assert (=> d!1746383 (= (flatMap!1112 lt!2245390 lambda!295311) (dynLambda!24486 lambda!295311 lt!2245401))))

(declare-fun lt!2245477 () Unit!155458)

(assert (=> d!1746383 (= lt!2245477 (choose!41895 lt!2245390 lt!2245401 lambda!295311))))

(assert (=> d!1746383 (= lt!2245390 (store ((as const (Array Context!9766 Bool)) false) lt!2245401 true))))

(assert (=> d!1746383 (= (lemmaFlatMapOnSingletonSet!644 lt!2245390 lt!2245401 lambda!295311) lt!2245477)))

(declare-fun b_lambda!208979 () Bool)

(assert (=> (not b_lambda!208979) (not d!1746383)))

(declare-fun bs!1270579 () Bool)

(assert (= bs!1270579 d!1746383))

(assert (=> bs!1270579 m!6516498))

(declare-fun m!6516912 () Bool)

(assert (=> bs!1270579 m!6516912))

(declare-fun m!6516914 () Bool)

(assert (=> bs!1270579 m!6516914))

(assert (=> bs!1270579 m!6516510))

(assert (=> b!5511685 d!1746383))

(declare-fun d!1746385 () Bool)

(assert (=> d!1746385 (= (flatMap!1112 lt!2245405 lambda!295311) (choose!41894 lt!2245405 lambda!295311))))

(declare-fun bs!1270580 () Bool)

(assert (= bs!1270580 d!1746385))

(declare-fun m!6516916 () Bool)

(assert (=> bs!1270580 m!6516916))

(assert (=> b!5511685 d!1746385))

(declare-fun b!5512228 () Bool)

(declare-fun c!963399 () Bool)

(declare-fun e!3408843 () Bool)

(assert (=> b!5512228 (= c!963399 e!3408843)))

(declare-fun res!2348786 () Bool)

(assert (=> b!5512228 (=> (not res!2348786) (not e!3408843))))

(assert (=> b!5512228 (= res!2348786 ((_ is Concat!24344) (regTwo!31510 r!7292)))))

(declare-fun e!3408846 () (InoxSet Context!9766))

(declare-fun e!3408844 () (InoxSet Context!9766))

(assert (=> b!5512228 (= e!3408846 e!3408844)))

(declare-fun bm!407608 () Bool)

(declare-fun call!407613 () (InoxSet Context!9766))

(declare-fun call!407616 () (InoxSet Context!9766))

(assert (=> bm!407608 (= call!407613 call!407616)))

(declare-fun b!5512229 () Bool)

(declare-fun e!3408845 () (InoxSet Context!9766))

(assert (=> b!5512229 (= e!3408845 call!407613)))

(declare-fun b!5512230 () Bool)

(assert (=> b!5512230 (= e!3408843 (nullable!5533 (regOne!31510 (regTwo!31510 r!7292))))))

(declare-fun call!407618 () List!62796)

(declare-fun bm!407609 () Bool)

(declare-fun c!963400 () Bool)

(assert (=> bm!407609 (= call!407618 ($colon$colon!1582 (exprs!5383 lt!2245398) (ite (or c!963399 c!963400) (regTwo!31510 (regTwo!31510 r!7292)) (regTwo!31510 r!7292))))))

(declare-fun b!5512231 () Bool)

(assert (=> b!5512231 (= e!3408845 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512232 () Bool)

(declare-fun e!3408842 () (InoxSet Context!9766))

(assert (=> b!5512232 (= e!3408842 e!3408846)))

(declare-fun c!963402 () Bool)

(assert (=> b!5512232 (= c!963402 ((_ is Union!15499) (regTwo!31510 r!7292)))))

(declare-fun b!5512233 () Bool)

(declare-fun e!3408847 () (InoxSet Context!9766))

(assert (=> b!5512233 (= e!3408847 call!407613)))

(declare-fun b!5512234 () Bool)

(declare-fun call!407617 () (InoxSet Context!9766))

(declare-fun call!407614 () (InoxSet Context!9766))

(assert (=> b!5512234 (= e!3408846 ((_ map or) call!407617 call!407614))))

(declare-fun bm!407610 () Bool)

(assert (=> bm!407610 (= call!407617 (derivationStepZipperDown!841 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))) (ite c!963402 lt!2245398 (Context!9767 call!407618)) (h!69121 s!2326)))))

(declare-fun b!5512236 () Bool)

(assert (=> b!5512236 (= e!3408844 ((_ map or) call!407617 call!407616))))

(declare-fun b!5512237 () Bool)

(declare-fun c!963403 () Bool)

(assert (=> b!5512237 (= c!963403 ((_ is Star!15499) (regTwo!31510 r!7292)))))

(assert (=> b!5512237 (= e!3408847 e!3408845)))

(declare-fun call!407615 () List!62796)

(declare-fun bm!407611 () Bool)

(assert (=> bm!407611 (= call!407614 (derivationStepZipperDown!841 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))) (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615)) (h!69121 s!2326)))))

(declare-fun bm!407612 () Bool)

(assert (=> bm!407612 (= call!407615 call!407618)))

(declare-fun b!5512235 () Bool)

(assert (=> b!5512235 (= e!3408842 (store ((as const (Array Context!9766 Bool)) false) lt!2245398 true))))

(declare-fun d!1746387 () Bool)

(declare-fun c!963401 () Bool)

(assert (=> d!1746387 (= c!963401 (and ((_ is ElementMatch!15499) (regTwo!31510 r!7292)) (= (c!963233 (regTwo!31510 r!7292)) (h!69121 s!2326))))))

(assert (=> d!1746387 (= (derivationStepZipperDown!841 (regTwo!31510 r!7292) lt!2245398 (h!69121 s!2326)) e!3408842)))

(declare-fun bm!407613 () Bool)

(assert (=> bm!407613 (= call!407616 call!407614)))

(declare-fun b!5512238 () Bool)

(assert (=> b!5512238 (= e!3408844 e!3408847)))

(assert (=> b!5512238 (= c!963400 ((_ is Concat!24344) (regTwo!31510 r!7292)))))

(assert (= (and d!1746387 c!963401) b!5512235))

(assert (= (and d!1746387 (not c!963401)) b!5512232))

(assert (= (and b!5512232 c!963402) b!5512234))

(assert (= (and b!5512232 (not c!963402)) b!5512228))

(assert (= (and b!5512228 res!2348786) b!5512230))

(assert (= (and b!5512228 c!963399) b!5512236))

(assert (= (and b!5512228 (not c!963399)) b!5512238))

(assert (= (and b!5512238 c!963400) b!5512233))

(assert (= (and b!5512238 (not c!963400)) b!5512237))

(assert (= (and b!5512237 c!963403) b!5512229))

(assert (= (and b!5512237 (not c!963403)) b!5512231))

(assert (= (or b!5512233 b!5512229) bm!407612))

(assert (= (or b!5512233 b!5512229) bm!407608))

(assert (= (or b!5512236 bm!407612) bm!407609))

(assert (= (or b!5512236 bm!407608) bm!407613))

(assert (= (or b!5512234 bm!407613) bm!407611))

(assert (= (or b!5512234 b!5512236) bm!407610))

(assert (=> b!5512235 m!6516702))

(declare-fun m!6516918 () Bool)

(assert (=> bm!407609 m!6516918))

(declare-fun m!6516920 () Bool)

(assert (=> b!5512230 m!6516920))

(declare-fun m!6516922 () Bool)

(assert (=> bm!407611 m!6516922))

(declare-fun m!6516924 () Bool)

(assert (=> bm!407610 m!6516924))

(assert (=> b!5511685 d!1746387))

(declare-fun d!1746389 () Bool)

(assert (=> d!1746389 (= (flatMap!1112 lt!2245390 lambda!295311) (choose!41894 lt!2245390 lambda!295311))))

(declare-fun bs!1270581 () Bool)

(assert (= bs!1270581 d!1746389))

(declare-fun m!6516926 () Bool)

(assert (=> bs!1270581 m!6516926))

(assert (=> b!5511685 d!1746389))

(declare-fun b!5512239 () Bool)

(declare-fun e!3408849 () (InoxSet Context!9766))

(assert (=> b!5512239 (= e!3408849 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407614 () Bool)

(declare-fun call!407619 () (InoxSet Context!9766))

(assert (=> bm!407614 (= call!407619 (derivationStepZipperDown!841 (h!69120 (exprs!5383 lt!2245392)) (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (h!69121 s!2326)))))

(declare-fun b!5512240 () Bool)

(assert (=> b!5512240 (= e!3408849 call!407619)))

(declare-fun b!5512241 () Bool)

(declare-fun e!3408848 () Bool)

(assert (=> b!5512241 (= e!3408848 (nullable!5533 (h!69120 (exprs!5383 lt!2245392))))))

(declare-fun b!5512242 () Bool)

(declare-fun e!3408850 () (InoxSet Context!9766))

(assert (=> b!5512242 (= e!3408850 ((_ map or) call!407619 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (h!69121 s!2326))))))

(declare-fun d!1746391 () Bool)

(declare-fun c!963404 () Bool)

(assert (=> d!1746391 (= c!963404 e!3408848)))

(declare-fun res!2348787 () Bool)

(assert (=> d!1746391 (=> (not res!2348787) (not e!3408848))))

(assert (=> d!1746391 (= res!2348787 ((_ is Cons!62672) (exprs!5383 lt!2245392)))))

(assert (=> d!1746391 (= (derivationStepZipperUp!767 lt!2245392 (h!69121 s!2326)) e!3408850)))

(declare-fun b!5512243 () Bool)

(assert (=> b!5512243 (= e!3408850 e!3408849)))

(declare-fun c!963405 () Bool)

(assert (=> b!5512243 (= c!963405 ((_ is Cons!62672) (exprs!5383 lt!2245392)))))

(assert (= (and d!1746391 res!2348787) b!5512241))

(assert (= (and d!1746391 c!963404) b!5512242))

(assert (= (and d!1746391 (not c!963404)) b!5512243))

(assert (= (and b!5512243 c!963405) b!5512240))

(assert (= (and b!5512243 (not c!963405)) b!5512239))

(assert (= (or b!5512242 b!5512240) bm!407614))

(declare-fun m!6516928 () Bool)

(assert (=> bm!407614 m!6516928))

(declare-fun m!6516930 () Bool)

(assert (=> b!5512241 m!6516930))

(declare-fun m!6516932 () Bool)

(assert (=> b!5512242 m!6516932))

(assert (=> b!5511685 d!1746391))

(declare-fun b!5512244 () Bool)

(declare-fun c!963406 () Bool)

(declare-fun e!3408852 () Bool)

(assert (=> b!5512244 (= c!963406 e!3408852)))

(declare-fun res!2348788 () Bool)

(assert (=> b!5512244 (=> (not res!2348788) (not e!3408852))))

(assert (=> b!5512244 (= res!2348788 ((_ is Concat!24344) (regOne!31510 r!7292)))))

(declare-fun e!3408855 () (InoxSet Context!9766))

(declare-fun e!3408853 () (InoxSet Context!9766))

(assert (=> b!5512244 (= e!3408855 e!3408853)))

(declare-fun bm!407615 () Bool)

(declare-fun call!407620 () (InoxSet Context!9766))

(declare-fun call!407623 () (InoxSet Context!9766))

(assert (=> bm!407615 (= call!407620 call!407623)))

(declare-fun b!5512245 () Bool)

(declare-fun e!3408854 () (InoxSet Context!9766))

(assert (=> b!5512245 (= e!3408854 call!407620)))

(declare-fun b!5512246 () Bool)

(assert (=> b!5512246 (= e!3408852 (nullable!5533 (regOne!31510 (regOne!31510 r!7292))))))

(declare-fun c!963407 () Bool)

(declare-fun call!407625 () List!62796)

(declare-fun bm!407616 () Bool)

(assert (=> bm!407616 (= call!407625 ($colon$colon!1582 (exprs!5383 lt!2245392) (ite (or c!963406 c!963407) (regTwo!31510 (regOne!31510 r!7292)) (regOne!31510 r!7292))))))

(declare-fun b!5512247 () Bool)

(assert (=> b!5512247 (= e!3408854 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512248 () Bool)

(declare-fun e!3408851 () (InoxSet Context!9766))

(assert (=> b!5512248 (= e!3408851 e!3408855)))

(declare-fun c!963409 () Bool)

(assert (=> b!5512248 (= c!963409 ((_ is Union!15499) (regOne!31510 r!7292)))))

(declare-fun b!5512249 () Bool)

(declare-fun e!3408856 () (InoxSet Context!9766))

(assert (=> b!5512249 (= e!3408856 call!407620)))

(declare-fun b!5512250 () Bool)

(declare-fun call!407624 () (InoxSet Context!9766))

(declare-fun call!407621 () (InoxSet Context!9766))

(assert (=> b!5512250 (= e!3408855 ((_ map or) call!407624 call!407621))))

(declare-fun bm!407617 () Bool)

(assert (=> bm!407617 (= call!407624 (derivationStepZipperDown!841 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))) (ite c!963409 lt!2245392 (Context!9767 call!407625)) (h!69121 s!2326)))))

(declare-fun b!5512252 () Bool)

(assert (=> b!5512252 (= e!3408853 ((_ map or) call!407624 call!407623))))

(declare-fun b!5512253 () Bool)

(declare-fun c!963410 () Bool)

(assert (=> b!5512253 (= c!963410 ((_ is Star!15499) (regOne!31510 r!7292)))))

(assert (=> b!5512253 (= e!3408856 e!3408854)))

(declare-fun call!407622 () List!62796)

(declare-fun bm!407618 () Bool)

(assert (=> bm!407618 (= call!407621 (derivationStepZipperDown!841 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))) (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622)) (h!69121 s!2326)))))

(declare-fun bm!407619 () Bool)

(assert (=> bm!407619 (= call!407622 call!407625)))

(declare-fun b!5512251 () Bool)

(assert (=> b!5512251 (= e!3408851 (store ((as const (Array Context!9766 Bool)) false) lt!2245392 true))))

(declare-fun d!1746393 () Bool)

(declare-fun c!963408 () Bool)

(assert (=> d!1746393 (= c!963408 (and ((_ is ElementMatch!15499) (regOne!31510 r!7292)) (= (c!963233 (regOne!31510 r!7292)) (h!69121 s!2326))))))

(assert (=> d!1746393 (= (derivationStepZipperDown!841 (regOne!31510 r!7292) lt!2245392 (h!69121 s!2326)) e!3408851)))

(declare-fun bm!407620 () Bool)

(assert (=> bm!407620 (= call!407623 call!407621)))

(declare-fun b!5512254 () Bool)

(assert (=> b!5512254 (= e!3408853 e!3408856)))

(assert (=> b!5512254 (= c!963407 ((_ is Concat!24344) (regOne!31510 r!7292)))))

(assert (= (and d!1746393 c!963408) b!5512251))

(assert (= (and d!1746393 (not c!963408)) b!5512248))

(assert (= (and b!5512248 c!963409) b!5512250))

(assert (= (and b!5512248 (not c!963409)) b!5512244))

(assert (= (and b!5512244 res!2348788) b!5512246))

(assert (= (and b!5512244 c!963406) b!5512252))

(assert (= (and b!5512244 (not c!963406)) b!5512254))

(assert (= (and b!5512254 c!963407) b!5512249))

(assert (= (and b!5512254 (not c!963407)) b!5512253))

(assert (= (and b!5512253 c!963410) b!5512245))

(assert (= (and b!5512253 (not c!963410)) b!5512247))

(assert (= (or b!5512249 b!5512245) bm!407619))

(assert (= (or b!5512249 b!5512245) bm!407615))

(assert (= (or b!5512252 bm!407619) bm!407616))

(assert (= (or b!5512252 bm!407615) bm!407620))

(assert (= (or b!5512250 bm!407620) bm!407618))

(assert (= (or b!5512250 b!5512252) bm!407617))

(assert (=> b!5512251 m!6516492))

(declare-fun m!6516934 () Bool)

(assert (=> bm!407616 m!6516934))

(declare-fun m!6516936 () Bool)

(assert (=> b!5512246 m!6516936))

(declare-fun m!6516938 () Bool)

(assert (=> bm!407618 m!6516938))

(declare-fun m!6516940 () Bool)

(assert (=> bm!407617 m!6516940))

(assert (=> b!5511685 d!1746393))

(declare-fun d!1746395 () Bool)

(declare-fun e!3408859 () Bool)

(assert (=> d!1746395 e!3408859))

(declare-fun res!2348791 () Bool)

(assert (=> d!1746395 (=> (not res!2348791) (not e!3408859))))

(declare-fun lt!2245480 () List!62798)

(declare-fun noDuplicate!1496 (List!62798) Bool)

(assert (=> d!1746395 (= res!2348791 (noDuplicate!1496 lt!2245480))))

(declare-fun choose!41899 ((InoxSet Context!9766)) List!62798)

(assert (=> d!1746395 (= lt!2245480 (choose!41899 z!1189))))

(assert (=> d!1746395 (= (toList!9283 z!1189) lt!2245480)))

(declare-fun b!5512257 () Bool)

(declare-fun content!11261 (List!62798) (InoxSet Context!9766))

(assert (=> b!5512257 (= e!3408859 (= (content!11261 lt!2245480) z!1189))))

(assert (= (and d!1746395 res!2348791) b!5512257))

(declare-fun m!6516942 () Bool)

(assert (=> d!1746395 m!6516942))

(declare-fun m!6516944 () Bool)

(assert (=> d!1746395 m!6516944))

(declare-fun m!6516946 () Bool)

(assert (=> b!5512257 m!6516946))

(assert (=> b!5511687 d!1746395))

(declare-fun b!5512276 () Bool)

(declare-fun e!3408876 () Bool)

(declare-fun call!407632 () Bool)

(assert (=> b!5512276 (= e!3408876 call!407632)))

(declare-fun b!5512277 () Bool)

(declare-fun e!3408879 () Bool)

(declare-fun e!3408880 () Bool)

(assert (=> b!5512277 (= e!3408879 e!3408880)))

(declare-fun res!2348806 () Bool)

(assert (=> b!5512277 (= res!2348806 (not (nullable!5533 (reg!15828 r!7292))))))

(assert (=> b!5512277 (=> (not res!2348806) (not e!3408880))))

(declare-fun b!5512278 () Bool)

(declare-fun res!2348805 () Bool)

(declare-fun e!3408875 () Bool)

(assert (=> b!5512278 (=> res!2348805 e!3408875)))

(assert (=> b!5512278 (= res!2348805 (not ((_ is Concat!24344) r!7292)))))

(declare-fun e!3408874 () Bool)

(assert (=> b!5512278 (= e!3408874 e!3408875)))

(declare-fun b!5512279 () Bool)

(declare-fun call!407633 () Bool)

(assert (=> b!5512279 (= e!3408880 call!407633)))

(declare-fun b!5512280 () Bool)

(declare-fun res!2348802 () Bool)

(declare-fun e!3408878 () Bool)

(assert (=> b!5512280 (=> (not res!2348802) (not e!3408878))))

(declare-fun call!407634 () Bool)

(assert (=> b!5512280 (= res!2348802 call!407634)))

(assert (=> b!5512280 (= e!3408874 e!3408878)))

(declare-fun b!5512281 () Bool)

(assert (=> b!5512281 (= e!3408875 e!3408876)))

(declare-fun res!2348804 () Bool)

(assert (=> b!5512281 (=> (not res!2348804) (not e!3408876))))

(assert (=> b!5512281 (= res!2348804 call!407634)))

(declare-fun bm!407628 () Bool)

(assert (=> bm!407628 (= call!407632 call!407633)))

(declare-fun bm!407627 () Bool)

(declare-fun c!963416 () Bool)

(assert (=> bm!407627 (= call!407634 (validRegex!7235 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(declare-fun d!1746397 () Bool)

(declare-fun res!2348803 () Bool)

(declare-fun e!3408877 () Bool)

(assert (=> d!1746397 (=> res!2348803 e!3408877)))

(assert (=> d!1746397 (= res!2348803 ((_ is ElementMatch!15499) r!7292))))

(assert (=> d!1746397 (= (validRegex!7235 r!7292) e!3408877)))

(declare-fun b!5512282 () Bool)

(assert (=> b!5512282 (= e!3408879 e!3408874)))

(assert (=> b!5512282 (= c!963416 ((_ is Union!15499) r!7292))))

(declare-fun bm!407629 () Bool)

(declare-fun c!963415 () Bool)

(assert (=> bm!407629 (= call!407633 (validRegex!7235 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))

(declare-fun b!5512283 () Bool)

(assert (=> b!5512283 (= e!3408877 e!3408879)))

(assert (=> b!5512283 (= c!963415 ((_ is Star!15499) r!7292))))

(declare-fun b!5512284 () Bool)

(assert (=> b!5512284 (= e!3408878 call!407632)))

(assert (= (and d!1746397 (not res!2348803)) b!5512283))

(assert (= (and b!5512283 c!963415) b!5512277))

(assert (= (and b!5512283 (not c!963415)) b!5512282))

(assert (= (and b!5512277 res!2348806) b!5512279))

(assert (= (and b!5512282 c!963416) b!5512280))

(assert (= (and b!5512282 (not c!963416)) b!5512278))

(assert (= (and b!5512280 res!2348802) b!5512284))

(assert (= (and b!5512278 (not res!2348805)) b!5512281))

(assert (= (and b!5512281 res!2348804) b!5512276))

(assert (= (or b!5512284 b!5512276) bm!407628))

(assert (= (or b!5512280 b!5512281) bm!407627))

(assert (= (or b!5512279 bm!407628) bm!407629))

(declare-fun m!6516948 () Bool)

(assert (=> b!5512277 m!6516948))

(declare-fun m!6516950 () Bool)

(assert (=> bm!407627 m!6516950))

(declare-fun m!6516952 () Bool)

(assert (=> bm!407629 m!6516952))

(assert (=> start!575570 d!1746397))

(declare-fun d!1746399 () Bool)

(declare-fun e!3408892 () Bool)

(assert (=> d!1746399 e!3408892))

(declare-fun res!2348820 () Bool)

(assert (=> d!1746399 (=> res!2348820 e!3408892)))

(declare-fun e!3408894 () Bool)

(assert (=> d!1746399 (= res!2348820 e!3408894)))

(declare-fun res!2348818 () Bool)

(assert (=> d!1746399 (=> (not res!2348818) (not e!3408894))))

(declare-fun lt!2245489 () Option!15508)

(assert (=> d!1746399 (= res!2348818 (isDefined!12211 lt!2245489))))

(declare-fun e!3408893 () Option!15508)

(assert (=> d!1746399 (= lt!2245489 e!3408893)))

(declare-fun c!963421 () Bool)

(declare-fun e!3408891 () Bool)

(assert (=> d!1746399 (= c!963421 e!3408891)))

(declare-fun res!2348821 () Bool)

(assert (=> d!1746399 (=> (not res!2348821) (not e!3408891))))

(assert (=> d!1746399 (= res!2348821 (matchR!7684 (regOne!31510 r!7292) Nil!62673))))

(assert (=> d!1746399 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746399 (= (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326) lt!2245489)))

(declare-fun b!5512303 () Bool)

(declare-fun ++!13751 (List!62797 List!62797) List!62797)

(declare-fun get!21568 (Option!15508) tuple2!65192)

(assert (=> b!5512303 (= e!3408894 (= (++!13751 (_1!35899 (get!21568 lt!2245489)) (_2!35899 (get!21568 lt!2245489))) s!2326))))

(declare-fun b!5512304 () Bool)

(declare-fun lt!2245487 () Unit!155458)

(declare-fun lt!2245488 () Unit!155458)

(assert (=> b!5512304 (= lt!2245487 lt!2245488)))

(assert (=> b!5512304 (= (++!13751 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1920 (List!62797 C!31268 List!62797 List!62797) Unit!155458)

(assert (=> b!5512304 (= lt!2245488 (lemmaMoveElementToOtherListKeepsConcatEq!1920 Nil!62673 (h!69121 s!2326) (t!376042 s!2326) s!2326))))

(declare-fun e!3408895 () Option!15508)

(assert (=> b!5512304 (= e!3408895 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326) s!2326))))

(declare-fun b!5512305 () Bool)

(assert (=> b!5512305 (= e!3408892 (not (isDefined!12211 lt!2245489)))))

(declare-fun b!5512306 () Bool)

(assert (=> b!5512306 (= e!3408893 (Some!15507 (tuple2!65193 Nil!62673 s!2326)))))

(declare-fun b!5512307 () Bool)

(assert (=> b!5512307 (= e!3408895 None!15507)))

(declare-fun b!5512308 () Bool)

(assert (=> b!5512308 (= e!3408893 e!3408895)))

(declare-fun c!963422 () Bool)

(assert (=> b!5512308 (= c!963422 ((_ is Nil!62673) s!2326))))

(declare-fun b!5512309 () Bool)

(declare-fun res!2348817 () Bool)

(assert (=> b!5512309 (=> (not res!2348817) (not e!3408894))))

(assert (=> b!5512309 (= res!2348817 (matchR!7684 (regTwo!31510 r!7292) (_2!35899 (get!21568 lt!2245489))))))

(declare-fun b!5512310 () Bool)

(assert (=> b!5512310 (= e!3408891 (matchR!7684 (regTwo!31510 r!7292) s!2326))))

(declare-fun b!5512311 () Bool)

(declare-fun res!2348819 () Bool)

(assert (=> b!5512311 (=> (not res!2348819) (not e!3408894))))

(assert (=> b!5512311 (= res!2348819 (matchR!7684 (regOne!31510 r!7292) (_1!35899 (get!21568 lt!2245489))))))

(assert (= (and d!1746399 res!2348821) b!5512310))

(assert (= (and d!1746399 c!963421) b!5512306))

(assert (= (and d!1746399 (not c!963421)) b!5512308))

(assert (= (and b!5512308 c!963422) b!5512307))

(assert (= (and b!5512308 (not c!963422)) b!5512304))

(assert (= (and d!1746399 res!2348818) b!5512311))

(assert (= (and b!5512311 res!2348819) b!5512309))

(assert (= (and b!5512309 res!2348817) b!5512303))

(assert (= (and d!1746399 (not res!2348820)) b!5512305))

(declare-fun m!6516954 () Bool)

(assert (=> b!5512309 m!6516954))

(declare-fun m!6516956 () Bool)

(assert (=> b!5512309 m!6516956))

(declare-fun m!6516958 () Bool)

(assert (=> b!5512310 m!6516958))

(assert (=> b!5512311 m!6516954))

(declare-fun m!6516960 () Bool)

(assert (=> b!5512311 m!6516960))

(assert (=> b!5512303 m!6516954))

(declare-fun m!6516962 () Bool)

(assert (=> b!5512303 m!6516962))

(declare-fun m!6516964 () Bool)

(assert (=> b!5512305 m!6516964))

(assert (=> d!1746399 m!6516964))

(declare-fun m!6516966 () Bool)

(assert (=> d!1746399 m!6516966))

(declare-fun m!6516968 () Bool)

(assert (=> d!1746399 m!6516968))

(declare-fun m!6516970 () Bool)

(assert (=> b!5512304 m!6516970))

(assert (=> b!5512304 m!6516970))

(declare-fun m!6516972 () Bool)

(assert (=> b!5512304 m!6516972))

(declare-fun m!6516974 () Bool)

(assert (=> b!5512304 m!6516974))

(assert (=> b!5512304 m!6516970))

(declare-fun m!6516976 () Bool)

(assert (=> b!5512304 m!6516976))

(assert (=> b!5511697 d!1746399))

(declare-fun d!1746401 () Bool)

(declare-fun choose!41900 (Int) Bool)

(assert (=> d!1746401 (= (Exists!2599 lambda!295310) (choose!41900 lambda!295310))))

(declare-fun bs!1270582 () Bool)

(assert (= bs!1270582 d!1746401))

(declare-fun m!6516978 () Bool)

(assert (=> bs!1270582 m!6516978))

(assert (=> b!5511697 d!1746401))

(declare-fun d!1746403 () Bool)

(assert (=> d!1746403 (= (Exists!2599 lambda!295309) (choose!41900 lambda!295309))))

(declare-fun bs!1270583 () Bool)

(assert (= bs!1270583 d!1746403))

(declare-fun m!6516980 () Bool)

(assert (=> bs!1270583 m!6516980))

(assert (=> b!5511697 d!1746403))

(declare-fun bs!1270584 () Bool)

(declare-fun d!1746405 () Bool)

(assert (= bs!1270584 (and d!1746405 b!5511697)))

(declare-fun lambda!295361 () Int)

(assert (=> bs!1270584 (= lambda!295361 lambda!295309)))

(assert (=> bs!1270584 (not (= lambda!295361 lambda!295310))))

(assert (=> d!1746405 true))

(assert (=> d!1746405 true))

(assert (=> d!1746405 true))

(assert (=> d!1746405 (= (isDefined!12211 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326)) (Exists!2599 lambda!295361))))

(declare-fun lt!2245492 () Unit!155458)

(declare-fun choose!41901 (Regex!15499 Regex!15499 List!62797) Unit!155458)

(assert (=> d!1746405 (= lt!2245492 (choose!41901 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326))))

(assert (=> d!1746405 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746405 (= (lemmaFindConcatSeparationEquivalentToExists!1686 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326) lt!2245492)))

(declare-fun bs!1270585 () Bool)

(assert (= bs!1270585 d!1746405))

(assert (=> bs!1270585 m!6516480))

(assert (=> bs!1270585 m!6516482))

(declare-fun m!6516982 () Bool)

(assert (=> bs!1270585 m!6516982))

(declare-fun m!6516984 () Bool)

(assert (=> bs!1270585 m!6516984))

(assert (=> bs!1270585 m!6516968))

(assert (=> bs!1270585 m!6516480))

(assert (=> b!5511697 d!1746405))

(declare-fun bs!1270586 () Bool)

(declare-fun d!1746407 () Bool)

(assert (= bs!1270586 (and d!1746407 b!5511697)))

(declare-fun lambda!295366 () Int)

(assert (=> bs!1270586 (= lambda!295366 lambda!295309)))

(assert (=> bs!1270586 (not (= lambda!295366 lambda!295310))))

(declare-fun bs!1270587 () Bool)

(assert (= bs!1270587 (and d!1746407 d!1746405)))

(assert (=> bs!1270587 (= lambda!295366 lambda!295361)))

(assert (=> d!1746407 true))

(assert (=> d!1746407 true))

(assert (=> d!1746407 true))

(declare-fun lambda!295367 () Int)

(assert (=> bs!1270586 (not (= lambda!295367 lambda!295309))))

(assert (=> bs!1270586 (= lambda!295367 lambda!295310)))

(assert (=> bs!1270587 (not (= lambda!295367 lambda!295361))))

(declare-fun bs!1270588 () Bool)

(assert (= bs!1270588 d!1746407))

(assert (=> bs!1270588 (not (= lambda!295367 lambda!295366))))

(assert (=> d!1746407 true))

(assert (=> d!1746407 true))

(assert (=> d!1746407 true))

(assert (=> d!1746407 (= (Exists!2599 lambda!295366) (Exists!2599 lambda!295367))))

(declare-fun lt!2245495 () Unit!155458)

(declare-fun choose!41902 (Regex!15499 Regex!15499 List!62797) Unit!155458)

(assert (=> d!1746407 (= lt!2245495 (choose!41902 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326))))

(assert (=> d!1746407 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746407 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1228 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326) lt!2245495)))

(declare-fun m!6516986 () Bool)

(assert (=> bs!1270588 m!6516986))

(declare-fun m!6516988 () Bool)

(assert (=> bs!1270588 m!6516988))

(declare-fun m!6516990 () Bool)

(assert (=> bs!1270588 m!6516990))

(assert (=> bs!1270588 m!6516968))

(assert (=> b!5511697 d!1746407))

(declare-fun d!1746409 () Bool)

(declare-fun isEmpty!34458 (Option!15508) Bool)

(assert (=> d!1746409 (= (isDefined!12211 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326)) (not (isEmpty!34458 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326))))))

(declare-fun bs!1270589 () Bool)

(assert (= bs!1270589 d!1746409))

(assert (=> bs!1270589 m!6516480))

(declare-fun m!6516992 () Bool)

(assert (=> bs!1270589 m!6516992))

(assert (=> b!5511697 d!1746409))

(declare-fun d!1746411 () Bool)

(assert (=> d!1746411 (= (isEmpty!34453 (t!376041 (exprs!5383 (h!69122 zl!343)))) ((_ is Nil!62672) (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> b!5511688 d!1746411))

(declare-fun bs!1270590 () Bool)

(declare-fun b!5512364 () Bool)

(assert (= bs!1270590 (and b!5512364 d!1746405)))

(declare-fun lambda!295372 () Int)

(assert (=> bs!1270590 (not (= lambda!295372 lambda!295361))))

(declare-fun bs!1270591 () Bool)

(assert (= bs!1270591 (and b!5512364 d!1746407)))

(assert (=> bs!1270591 (not (= lambda!295372 lambda!295367))))

(declare-fun bs!1270592 () Bool)

(assert (= bs!1270592 (and b!5512364 b!5511697)))

(assert (=> bs!1270592 (not (= lambda!295372 lambda!295309))))

(assert (=> bs!1270591 (not (= lambda!295372 lambda!295366))))

(assert (=> bs!1270592 (not (= lambda!295372 lambda!295310))))

(assert (=> b!5512364 true))

(assert (=> b!5512364 true))

(declare-fun bs!1270593 () Bool)

(declare-fun b!5512356 () Bool)

(assert (= bs!1270593 (and b!5512356 d!1746405)))

(declare-fun lambda!295373 () Int)

(assert (=> bs!1270593 (not (= lambda!295373 lambda!295361))))

(declare-fun bs!1270594 () Bool)

(assert (= bs!1270594 (and b!5512356 d!1746407)))

(assert (=> bs!1270594 (= lambda!295373 lambda!295367)))

(declare-fun bs!1270595 () Bool)

(assert (= bs!1270595 (and b!5512356 b!5511697)))

(assert (=> bs!1270595 (not (= lambda!295373 lambda!295309))))

(declare-fun bs!1270596 () Bool)

(assert (= bs!1270596 (and b!5512356 b!5512364)))

(assert (=> bs!1270596 (not (= lambda!295373 lambda!295372))))

(assert (=> bs!1270594 (not (= lambda!295373 lambda!295366))))

(assert (=> bs!1270595 (= lambda!295373 lambda!295310)))

(assert (=> b!5512356 true))

(assert (=> b!5512356 true))

(declare-fun e!3408924 () Bool)

(declare-fun call!407639 () Bool)

(assert (=> b!5512356 (= e!3408924 call!407639)))

(declare-fun b!5512357 () Bool)

(declare-fun e!3408921 () Bool)

(declare-fun call!407640 () Bool)

(assert (=> b!5512357 (= e!3408921 call!407640)))

(declare-fun b!5512358 () Bool)

(declare-fun res!2348852 () Bool)

(declare-fun e!3408920 () Bool)

(assert (=> b!5512358 (=> res!2348852 e!3408920)))

(assert (=> b!5512358 (= res!2348852 call!407640)))

(assert (=> b!5512358 (= e!3408924 e!3408920)))

(declare-fun b!5512360 () Bool)

(declare-fun e!3408922 () Bool)

(assert (=> b!5512360 (= e!3408921 e!3408922)))

(declare-fun res!2348850 () Bool)

(assert (=> b!5512360 (= res!2348850 (not ((_ is EmptyLang!15499) r!7292)))))

(assert (=> b!5512360 (=> (not res!2348850) (not e!3408922))))

(declare-fun bm!407634 () Bool)

(assert (=> bm!407634 (= call!407640 (isEmpty!34457 s!2326))))

(declare-fun c!963434 () Bool)

(declare-fun bm!407635 () Bool)

(assert (=> bm!407635 (= call!407639 (Exists!2599 (ite c!963434 lambda!295372 lambda!295373)))))

(declare-fun b!5512361 () Bool)

(declare-fun e!3408923 () Bool)

(assert (=> b!5512361 (= e!3408923 e!3408924)))

(assert (=> b!5512361 (= c!963434 ((_ is Star!15499) r!7292))))

(declare-fun b!5512362 () Bool)

(declare-fun e!3408925 () Bool)

(assert (=> b!5512362 (= e!3408923 e!3408925)))

(declare-fun res!2348851 () Bool)

(assert (=> b!5512362 (= res!2348851 (matchRSpec!2602 (regOne!31511 r!7292) s!2326))))

(assert (=> b!5512362 (=> res!2348851 e!3408925)))

(declare-fun b!5512363 () Bool)

(assert (=> b!5512363 (= e!3408925 (matchRSpec!2602 (regTwo!31511 r!7292) s!2326))))

(assert (=> b!5512364 (= e!3408920 call!407639)))

(declare-fun b!5512365 () Bool)

(declare-fun c!963431 () Bool)

(assert (=> b!5512365 (= c!963431 ((_ is Union!15499) r!7292))))

(declare-fun e!3408926 () Bool)

(assert (=> b!5512365 (= e!3408926 e!3408923)))

(declare-fun b!5512366 () Bool)

(assert (=> b!5512366 (= e!3408926 (= s!2326 (Cons!62673 (c!963233 r!7292) Nil!62673)))))

(declare-fun d!1746413 () Bool)

(declare-fun c!963432 () Bool)

(assert (=> d!1746413 (= c!963432 ((_ is EmptyExpr!15499) r!7292))))

(assert (=> d!1746413 (= (matchRSpec!2602 r!7292 s!2326) e!3408921)))

(declare-fun b!5512359 () Bool)

(declare-fun c!963433 () Bool)

(assert (=> b!5512359 (= c!963433 ((_ is ElementMatch!15499) r!7292))))

(assert (=> b!5512359 (= e!3408922 e!3408926)))

(assert (= (and d!1746413 c!963432) b!5512357))

(assert (= (and d!1746413 (not c!963432)) b!5512360))

(assert (= (and b!5512360 res!2348850) b!5512359))

(assert (= (and b!5512359 c!963433) b!5512366))

(assert (= (and b!5512359 (not c!963433)) b!5512365))

(assert (= (and b!5512365 c!963431) b!5512362))

(assert (= (and b!5512365 (not c!963431)) b!5512361))

(assert (= (and b!5512362 (not res!2348851)) b!5512363))

(assert (= (and b!5512361 c!963434) b!5512358))

(assert (= (and b!5512361 (not c!963434)) b!5512356))

(assert (= (and b!5512358 (not res!2348852)) b!5512364))

(assert (= (or b!5512364 b!5512356) bm!407635))

(assert (= (or b!5512357 b!5512358) bm!407634))

(declare-fun m!6516994 () Bool)

(assert (=> bm!407634 m!6516994))

(declare-fun m!6516996 () Bool)

(assert (=> bm!407635 m!6516996))

(declare-fun m!6516998 () Bool)

(assert (=> b!5512362 m!6516998))

(declare-fun m!6517000 () Bool)

(assert (=> b!5512363 m!6517000))

(assert (=> b!5511689 d!1746413))

(declare-fun b!5512395 () Bool)

(declare-fun res!2348872 () Bool)

(declare-fun e!3408946 () Bool)

(assert (=> b!5512395 (=> res!2348872 e!3408946)))

(declare-fun e!3408945 () Bool)

(assert (=> b!5512395 (= res!2348872 e!3408945)))

(declare-fun res!2348876 () Bool)

(assert (=> b!5512395 (=> (not res!2348876) (not e!3408945))))

(declare-fun lt!2245498 () Bool)

(assert (=> b!5512395 (= res!2348876 lt!2245498)))

(declare-fun b!5512396 () Bool)

(assert (=> b!5512396 (= e!3408945 (= (head!11810 s!2326) (c!963233 r!7292)))))

(declare-fun b!5512397 () Bool)

(declare-fun res!2348871 () Bool)

(assert (=> b!5512397 (=> (not res!2348871) (not e!3408945))))

(assert (=> b!5512397 (= res!2348871 (isEmpty!34457 (tail!10905 s!2326)))))

(declare-fun b!5512398 () Bool)

(declare-fun e!3408947 () Bool)

(assert (=> b!5512398 (= e!3408946 e!3408947)))

(declare-fun res!2348869 () Bool)

(assert (=> b!5512398 (=> (not res!2348869) (not e!3408947))))

(assert (=> b!5512398 (= res!2348869 (not lt!2245498))))

(declare-fun b!5512399 () Bool)

(declare-fun e!3408941 () Bool)

(declare-fun derivativeStep!4368 (Regex!15499 C!31268) Regex!15499)

(assert (=> b!5512399 (= e!3408941 (matchR!7684 (derivativeStep!4368 r!7292 (head!11810 s!2326)) (tail!10905 s!2326)))))

(declare-fun b!5512400 () Bool)

(declare-fun e!3408944 () Bool)

(declare-fun e!3408942 () Bool)

(assert (=> b!5512400 (= e!3408944 e!3408942)))

(declare-fun c!963443 () Bool)

(assert (=> b!5512400 (= c!963443 ((_ is EmptyLang!15499) r!7292))))

(declare-fun d!1746415 () Bool)

(assert (=> d!1746415 e!3408944))

(declare-fun c!963442 () Bool)

(assert (=> d!1746415 (= c!963442 ((_ is EmptyExpr!15499) r!7292))))

(assert (=> d!1746415 (= lt!2245498 e!3408941)))

(declare-fun c!963441 () Bool)

(assert (=> d!1746415 (= c!963441 (isEmpty!34457 s!2326))))

(assert (=> d!1746415 (validRegex!7235 r!7292)))

(assert (=> d!1746415 (= (matchR!7684 r!7292 s!2326) lt!2245498)))

(declare-fun b!5512401 () Bool)

(assert (=> b!5512401 (= e!3408942 (not lt!2245498))))

(declare-fun bm!407638 () Bool)

(declare-fun call!407643 () Bool)

(assert (=> bm!407638 (= call!407643 (isEmpty!34457 s!2326))))

(declare-fun b!5512402 () Bool)

(declare-fun e!3408943 () Bool)

(assert (=> b!5512402 (= e!3408943 (not (= (head!11810 s!2326) (c!963233 r!7292))))))

(declare-fun b!5512403 () Bool)

(declare-fun res!2348873 () Bool)

(assert (=> b!5512403 (=> res!2348873 e!3408943)))

(assert (=> b!5512403 (= res!2348873 (not (isEmpty!34457 (tail!10905 s!2326))))))

(declare-fun b!5512404 () Bool)

(assert (=> b!5512404 (= e!3408947 e!3408943)))

(declare-fun res!2348875 () Bool)

(assert (=> b!5512404 (=> res!2348875 e!3408943)))

(assert (=> b!5512404 (= res!2348875 call!407643)))

(declare-fun b!5512405 () Bool)

(assert (=> b!5512405 (= e!3408941 (nullable!5533 r!7292))))

(declare-fun b!5512406 () Bool)

(assert (=> b!5512406 (= e!3408944 (= lt!2245498 call!407643))))

(declare-fun b!5512407 () Bool)

(declare-fun res!2348874 () Bool)

(assert (=> b!5512407 (=> res!2348874 e!3408946)))

(assert (=> b!5512407 (= res!2348874 (not ((_ is ElementMatch!15499) r!7292)))))

(assert (=> b!5512407 (= e!3408942 e!3408946)))

(declare-fun b!5512408 () Bool)

(declare-fun res!2348870 () Bool)

(assert (=> b!5512408 (=> (not res!2348870) (not e!3408945))))

(assert (=> b!5512408 (= res!2348870 (not call!407643))))

(assert (= (and d!1746415 c!963441) b!5512405))

(assert (= (and d!1746415 (not c!963441)) b!5512399))

(assert (= (and d!1746415 c!963442) b!5512406))

(assert (= (and d!1746415 (not c!963442)) b!5512400))

(assert (= (and b!5512400 c!963443) b!5512401))

(assert (= (and b!5512400 (not c!963443)) b!5512407))

(assert (= (and b!5512407 (not res!2348874)) b!5512395))

(assert (= (and b!5512395 res!2348876) b!5512408))

(assert (= (and b!5512408 res!2348870) b!5512397))

(assert (= (and b!5512397 res!2348871) b!5512396))

(assert (= (and b!5512395 (not res!2348872)) b!5512398))

(assert (= (and b!5512398 res!2348869) b!5512404))

(assert (= (and b!5512404 (not res!2348875)) b!5512403))

(assert (= (and b!5512403 (not res!2348873)) b!5512402))

(assert (= (or b!5512406 b!5512404 b!5512408) bm!407638))

(declare-fun m!6517002 () Bool)

(assert (=> b!5512399 m!6517002))

(assert (=> b!5512399 m!6517002))

(declare-fun m!6517004 () Bool)

(assert (=> b!5512399 m!6517004))

(declare-fun m!6517006 () Bool)

(assert (=> b!5512399 m!6517006))

(assert (=> b!5512399 m!6517004))

(assert (=> b!5512399 m!6517006))

(declare-fun m!6517008 () Bool)

(assert (=> b!5512399 m!6517008))

(assert (=> d!1746415 m!6516994))

(assert (=> d!1746415 m!6516544))

(assert (=> b!5512403 m!6517006))

(assert (=> b!5512403 m!6517006))

(declare-fun m!6517010 () Bool)

(assert (=> b!5512403 m!6517010))

(assert (=> b!5512402 m!6517002))

(assert (=> b!5512396 m!6517002))

(assert (=> b!5512397 m!6517006))

(assert (=> b!5512397 m!6517006))

(assert (=> b!5512397 m!6517010))

(declare-fun m!6517012 () Bool)

(assert (=> b!5512405 m!6517012))

(assert (=> bm!407638 m!6516994))

(assert (=> b!5511689 d!1746415))

(declare-fun d!1746417 () Bool)

(assert (=> d!1746417 (= (matchR!7684 r!7292 s!2326) (matchRSpec!2602 r!7292 s!2326))))

(declare-fun lt!2245501 () Unit!155458)

(declare-fun choose!41903 (Regex!15499 List!62797) Unit!155458)

(assert (=> d!1746417 (= lt!2245501 (choose!41903 r!7292 s!2326))))

(assert (=> d!1746417 (validRegex!7235 r!7292)))

(assert (=> d!1746417 (= (mainMatchTheorem!2602 r!7292 s!2326) lt!2245501)))

(declare-fun bs!1270597 () Bool)

(assert (= bs!1270597 d!1746417))

(assert (=> bs!1270597 m!6516532))

(assert (=> bs!1270597 m!6516530))

(declare-fun m!6517014 () Bool)

(assert (=> bs!1270597 m!6517014))

(assert (=> bs!1270597 m!6516544))

(assert (=> b!5511689 d!1746417))

(declare-fun b!5512413 () Bool)

(declare-fun e!3408950 () Bool)

(declare-fun tp!1516506 () Bool)

(declare-fun tp!1516507 () Bool)

(assert (=> b!5512413 (= e!3408950 (and tp!1516506 tp!1516507))))

(assert (=> b!5511702 (= tp!1516437 e!3408950)))

(assert (= (and b!5511702 ((_ is Cons!62672) (exprs!5383 (h!69122 zl!343)))) b!5512413))

(declare-fun condSetEmpty!36615 () Bool)

(assert (=> setNonEmpty!36609 (= condSetEmpty!36615 (= setRest!36609 ((as const (Array Context!9766 Bool)) false)))))

(declare-fun setRes!36615 () Bool)

(assert (=> setNonEmpty!36609 (= tp!1516434 setRes!36615)))

(declare-fun setIsEmpty!36615 () Bool)

(assert (=> setIsEmpty!36615 setRes!36615))

(declare-fun setElem!36615 () Context!9766)

(declare-fun setNonEmpty!36615 () Bool)

(declare-fun tp!1516513 () Bool)

(declare-fun e!3408953 () Bool)

(assert (=> setNonEmpty!36615 (= setRes!36615 (and tp!1516513 (inv!81994 setElem!36615) e!3408953))))

(declare-fun setRest!36615 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36615 (= setRest!36609 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36615 true) setRest!36615))))

(declare-fun b!5512418 () Bool)

(declare-fun tp!1516512 () Bool)

(assert (=> b!5512418 (= e!3408953 tp!1516512)))

(assert (= (and setNonEmpty!36609 condSetEmpty!36615) setIsEmpty!36615))

(assert (= (and setNonEmpty!36609 (not condSetEmpty!36615)) setNonEmpty!36615))

(assert (= setNonEmpty!36615 b!5512418))

(declare-fun m!6517016 () Bool)

(assert (=> setNonEmpty!36615 m!6517016))

(declare-fun b!5512423 () Bool)

(declare-fun e!3408956 () Bool)

(declare-fun tp!1516516 () Bool)

(assert (=> b!5512423 (= e!3408956 (and tp_is_empty!40251 tp!1516516))))

(assert (=> b!5511686 (= tp!1516435 e!3408956)))

(assert (= (and b!5511686 ((_ is Cons!62673) (t!376042 s!2326))) b!5512423))

(declare-fun b!5512424 () Bool)

(declare-fun e!3408957 () Bool)

(declare-fun tp!1516517 () Bool)

(declare-fun tp!1516518 () Bool)

(assert (=> b!5512424 (= e!3408957 (and tp!1516517 tp!1516518))))

(assert (=> b!5511699 (= tp!1516440 e!3408957)))

(assert (= (and b!5511699 ((_ is Cons!62672) (exprs!5383 setElem!36609))) b!5512424))

(declare-fun e!3408960 () Bool)

(assert (=> b!5511698 (= tp!1516439 e!3408960)))

(declare-fun b!5512437 () Bool)

(declare-fun tp!1516530 () Bool)

(assert (=> b!5512437 (= e!3408960 tp!1516530)))

(declare-fun b!5512435 () Bool)

(assert (=> b!5512435 (= e!3408960 tp_is_empty!40251)))

(declare-fun b!5512438 () Bool)

(declare-fun tp!1516532 () Bool)

(declare-fun tp!1516533 () Bool)

(assert (=> b!5512438 (= e!3408960 (and tp!1516532 tp!1516533))))

(declare-fun b!5512436 () Bool)

(declare-fun tp!1516531 () Bool)

(declare-fun tp!1516529 () Bool)

(assert (=> b!5512436 (= e!3408960 (and tp!1516531 tp!1516529))))

(assert (= (and b!5511698 ((_ is ElementMatch!15499) (regOne!31510 r!7292))) b!5512435))

(assert (= (and b!5511698 ((_ is Concat!24344) (regOne!31510 r!7292))) b!5512436))

(assert (= (and b!5511698 ((_ is Star!15499) (regOne!31510 r!7292))) b!5512437))

(assert (= (and b!5511698 ((_ is Union!15499) (regOne!31510 r!7292))) b!5512438))

(declare-fun e!3408961 () Bool)

(assert (=> b!5511698 (= tp!1516443 e!3408961)))

(declare-fun b!5512441 () Bool)

(declare-fun tp!1516535 () Bool)

(assert (=> b!5512441 (= e!3408961 tp!1516535)))

(declare-fun b!5512439 () Bool)

(assert (=> b!5512439 (= e!3408961 tp_is_empty!40251)))

(declare-fun b!5512442 () Bool)

(declare-fun tp!1516537 () Bool)

(declare-fun tp!1516538 () Bool)

(assert (=> b!5512442 (= e!3408961 (and tp!1516537 tp!1516538))))

(declare-fun b!5512440 () Bool)

(declare-fun tp!1516536 () Bool)

(declare-fun tp!1516534 () Bool)

(assert (=> b!5512440 (= e!3408961 (and tp!1516536 tp!1516534))))

(assert (= (and b!5511698 ((_ is ElementMatch!15499) (regTwo!31510 r!7292))) b!5512439))

(assert (= (and b!5511698 ((_ is Concat!24344) (regTwo!31510 r!7292))) b!5512440))

(assert (= (and b!5511698 ((_ is Star!15499) (regTwo!31510 r!7292))) b!5512441))

(assert (= (and b!5511698 ((_ is Union!15499) (regTwo!31510 r!7292))) b!5512442))

(declare-fun e!3408962 () Bool)

(assert (=> b!5511682 (= tp!1516442 e!3408962)))

(declare-fun b!5512445 () Bool)

(declare-fun tp!1516540 () Bool)

(assert (=> b!5512445 (= e!3408962 tp!1516540)))

(declare-fun b!5512443 () Bool)

(assert (=> b!5512443 (= e!3408962 tp_is_empty!40251)))

(declare-fun b!5512446 () Bool)

(declare-fun tp!1516542 () Bool)

(declare-fun tp!1516543 () Bool)

(assert (=> b!5512446 (= e!3408962 (and tp!1516542 tp!1516543))))

(declare-fun b!5512444 () Bool)

(declare-fun tp!1516541 () Bool)

(declare-fun tp!1516539 () Bool)

(assert (=> b!5512444 (= e!3408962 (and tp!1516541 tp!1516539))))

(assert (= (and b!5511682 ((_ is ElementMatch!15499) (regOne!31511 r!7292))) b!5512443))

(assert (= (and b!5511682 ((_ is Concat!24344) (regOne!31511 r!7292))) b!5512444))

(assert (= (and b!5511682 ((_ is Star!15499) (regOne!31511 r!7292))) b!5512445))

(assert (= (and b!5511682 ((_ is Union!15499) (regOne!31511 r!7292))) b!5512446))

(declare-fun e!3408963 () Bool)

(assert (=> b!5511682 (= tp!1516438 e!3408963)))

(declare-fun b!5512449 () Bool)

(declare-fun tp!1516545 () Bool)

(assert (=> b!5512449 (= e!3408963 tp!1516545)))

(declare-fun b!5512447 () Bool)

(assert (=> b!5512447 (= e!3408963 tp_is_empty!40251)))

(declare-fun b!5512450 () Bool)

(declare-fun tp!1516547 () Bool)

(declare-fun tp!1516548 () Bool)

(assert (=> b!5512450 (= e!3408963 (and tp!1516547 tp!1516548))))

(declare-fun b!5512448 () Bool)

(declare-fun tp!1516546 () Bool)

(declare-fun tp!1516544 () Bool)

(assert (=> b!5512448 (= e!3408963 (and tp!1516546 tp!1516544))))

(assert (= (and b!5511682 ((_ is ElementMatch!15499) (regTwo!31511 r!7292))) b!5512447))

(assert (= (and b!5511682 ((_ is Concat!24344) (regTwo!31511 r!7292))) b!5512448))

(assert (= (and b!5511682 ((_ is Star!15499) (regTwo!31511 r!7292))) b!5512449))

(assert (= (and b!5511682 ((_ is Union!15499) (regTwo!31511 r!7292))) b!5512450))

(declare-fun e!3408964 () Bool)

(assert (=> b!5511680 (= tp!1516436 e!3408964)))

(declare-fun b!5512453 () Bool)

(declare-fun tp!1516550 () Bool)

(assert (=> b!5512453 (= e!3408964 tp!1516550)))

(declare-fun b!5512451 () Bool)

(assert (=> b!5512451 (= e!3408964 tp_is_empty!40251)))

(declare-fun b!5512454 () Bool)

(declare-fun tp!1516552 () Bool)

(declare-fun tp!1516553 () Bool)

(assert (=> b!5512454 (= e!3408964 (and tp!1516552 tp!1516553))))

(declare-fun b!5512452 () Bool)

(declare-fun tp!1516551 () Bool)

(declare-fun tp!1516549 () Bool)

(assert (=> b!5512452 (= e!3408964 (and tp!1516551 tp!1516549))))

(assert (= (and b!5511680 ((_ is ElementMatch!15499) (reg!15828 r!7292))) b!5512451))

(assert (= (and b!5511680 ((_ is Concat!24344) (reg!15828 r!7292))) b!5512452))

(assert (= (and b!5511680 ((_ is Star!15499) (reg!15828 r!7292))) b!5512453))

(assert (= (and b!5511680 ((_ is Union!15499) (reg!15828 r!7292))) b!5512454))

(declare-fun b!5512462 () Bool)

(declare-fun e!3408970 () Bool)

(declare-fun tp!1516558 () Bool)

(assert (=> b!5512462 (= e!3408970 tp!1516558)))

(declare-fun b!5512461 () Bool)

(declare-fun tp!1516559 () Bool)

(declare-fun e!3408969 () Bool)

(assert (=> b!5512461 (= e!3408969 (and (inv!81994 (h!69122 (t!376043 zl!343))) e!3408970 tp!1516559))))

(assert (=> b!5511704 (= tp!1516441 e!3408969)))

(assert (= b!5512461 b!5512462))

(assert (= (and b!5511704 ((_ is Cons!62674) (t!376043 zl!343))) b!5512461))

(declare-fun m!6517018 () Bool)

(assert (=> b!5512461 m!6517018))

(declare-fun b_lambda!208981 () Bool)

(assert (= b_lambda!208979 (or b!5511703 b_lambda!208981)))

(declare-fun bs!1270598 () Bool)

(declare-fun d!1746419 () Bool)

(assert (= bs!1270598 (and d!1746419 b!5511703)))

(assert (=> bs!1270598 (= (dynLambda!24486 lambda!295311 lt!2245401) (derivationStepZipperUp!767 lt!2245401 (h!69121 s!2326)))))

(assert (=> bs!1270598 m!6516502))

(assert (=> d!1746383 d!1746419))

(declare-fun b_lambda!208983 () Bool)

(assert (= b_lambda!208967 (or b!5511703 b_lambda!208983)))

(declare-fun bs!1270599 () Bool)

(declare-fun d!1746421 () Bool)

(assert (= bs!1270599 (and d!1746421 b!5511703)))

(assert (=> bs!1270599 (= (dynLambda!24486 lambda!295311 (h!69122 zl!343)) (derivationStepZipperUp!767 (h!69122 zl!343) (h!69121 s!2326)))))

(assert (=> bs!1270599 m!6516516))

(assert (=> d!1746327 d!1746421))

(declare-fun b_lambda!208985 () Bool)

(assert (= b_lambda!208977 (or b!5511703 b_lambda!208985)))

(declare-fun bs!1270600 () Bool)

(declare-fun d!1746423 () Bool)

(assert (= bs!1270600 (and d!1746423 b!5511703)))

(assert (=> bs!1270600 (= (dynLambda!24486 lambda!295311 lt!2245392) (derivationStepZipperUp!767 lt!2245392 (h!69121 s!2326)))))

(assert (=> bs!1270600 m!6516512))

(assert (=> d!1746377 d!1746423))

(check-sat (not b_lambda!208985) (not b!5512217) (not b!5512438) (not bm!407589) (not d!1746337) (not d!1746377) (not b!5512225) (not b!5512437) (not b!5512226) (not d!1746359) (not bm!407627) (not d!1746407) (not d!1746395) (not b!5511987) (not bm!407611) (not d!1746281) (not b!5512449) (not bm!407614) tp_is_empty!40251 (not b!5512277) (not d!1746417) (not b!5512215) (not b!5512436) (not b!5511846) (not bm!407553) (not b!5512363) (not b!5512214) (not b!5512450) (not b!5512184) (not b!5512403) (not b!5511843) (not d!1746313) (not b!5512440) (not bm!407554) (not b!5512446) (not b!5512454) (not b!5512399) (not b!5512405) (not b!5512305) (not bm!407634) (not d!1746323) (not d!1746405) (not bs!1270598) (not b!5512310) (not b!5512452) (not setNonEmpty!36615) (not b!5512186) (not b!5512461) (not b!5512448) (not b!5512218) (not b!5512185) (not b!5512005) (not b!5511841) (not b!5512083) (not d!1746385) (not d!1746401) (not d!1746375) (not bm!407607) (not b!5512424) (not b!5512397) (not b!5512311) (not bm!407617) (not b!5512222) (not b!5512082) (not b!5511838) (not d!1746381) (not b!5512442) (not b!5512413) (not d!1746267) (not b!5512241) (not b!5512418) (not b!5512212) (not d!1746327) (not d!1746369) (not b!5512230) (not bm!407609) (not b_lambda!208981) (not bm!407635) (not d!1746399) (not b_lambda!208983) (not d!1746409) (not b!5512309) (not d!1746373) (not bm!407586) (not b!5512445) (not b!5511839) (not d!1746403) (not b!5512453) (not b!5512246) (not bm!407638) (not bm!407616) (not b!5511837) (not b!5512216) (not bm!407629) (not b!5512180) (not b!5512004) (not b!5511988) (not bm!407610) (not bm!407555) (not b!5512444) (not b!5512242) (not d!1746367) (not bm!407618) (not b!5512257) (not b!5512423) (not d!1746331) (not bs!1270599) (not bs!1270600) (not b!5512402) (not b!5512362) (not b!5512178) (not d!1746329) (not b!5511912) (not b!5512441) (not b!5512219) (not b!5511845) (not b!5512303) (not d!1746415) (not d!1746383) (not b!5512187) (not b!5512183) (not b!5512304) (not b!5512462) (not d!1746389) (not b!5512396) (not d!1746371))
(check-sat)
(get-model)

(declare-fun bs!1270616 () Bool)

(declare-fun d!1746457 () Bool)

(assert (= bs!1270616 (and d!1746457 d!1746367)))

(declare-fun lambda!295377 () Int)

(assert (=> bs!1270616 (= lambda!295377 lambda!295358)))

(declare-fun bs!1270617 () Bool)

(assert (= bs!1270617 (and d!1746457 d!1746337)))

(assert (=> bs!1270617 (= lambda!295377 lambda!295354)))

(declare-fun bs!1270618 () Bool)

(assert (= bs!1270618 (and d!1746457 d!1746359)))

(assert (=> bs!1270618 (= lambda!295377 lambda!295357)))

(declare-fun bs!1270619 () Bool)

(assert (= bs!1270619 (and d!1746457 d!1746267)))

(assert (=> bs!1270619 (= lambda!295377 lambda!295323)))

(declare-fun bs!1270620 () Bool)

(assert (= bs!1270620 (and d!1746457 d!1746281)))

(assert (=> bs!1270620 (= lambda!295377 lambda!295326)))

(assert (=> d!1746457 (= (inv!81994 (h!69122 (t!376043 zl!343))) (forall!14677 (exprs!5383 (h!69122 (t!376043 zl!343))) lambda!295377))))

(declare-fun bs!1270621 () Bool)

(assert (= bs!1270621 d!1746457))

(declare-fun m!6517078 () Bool)

(assert (=> bs!1270621 m!6517078))

(assert (=> b!5512461 d!1746457))

(declare-fun d!1746461 () Bool)

(assert (=> d!1746461 (= (nullable!5533 (reg!15828 r!7292)) (nullableFct!1661 (reg!15828 r!7292)))))

(declare-fun bs!1270622 () Bool)

(assert (= bs!1270622 d!1746461))

(declare-fun m!6517080 () Bool)

(assert (=> bs!1270622 m!6517080))

(assert (=> b!5512277 d!1746461))

(declare-fun d!1746463 () Bool)

(assert (=> d!1746463 (= (isEmptyExpr!1075 lt!2245431) ((_ is EmptyExpr!15499) lt!2245431))))

(assert (=> b!5511839 d!1746463))

(declare-fun d!1746469 () Bool)

(assert (=> d!1746469 (= (head!11809 (unfocusZipperList!927 zl!343)) (h!69120 (unfocusZipperList!927 zl!343)))))

(assert (=> b!5512186 d!1746469))

(declare-fun b!5512533 () Bool)

(declare-fun c!963467 () Bool)

(declare-fun e!3409015 () Bool)

(assert (=> b!5512533 (= c!963467 e!3409015)))

(declare-fun res!2348904 () Bool)

(assert (=> b!5512533 (=> (not res!2348904) (not e!3409015))))

(assert (=> b!5512533 (= res!2348904 ((_ is Concat!24344) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(declare-fun e!3409018 () (InoxSet Context!9766))

(declare-fun e!3409016 () (InoxSet Context!9766))

(assert (=> b!5512533 (= e!3409018 e!3409016)))

(declare-fun bm!407655 () Bool)

(declare-fun call!407660 () (InoxSet Context!9766))

(declare-fun call!407663 () (InoxSet Context!9766))

(assert (=> bm!407655 (= call!407660 call!407663)))

(declare-fun b!5512534 () Bool)

(declare-fun e!3409017 () (InoxSet Context!9766))

(assert (=> b!5512534 (= e!3409017 call!407660)))

(declare-fun b!5512535 () Bool)

(assert (=> b!5512535 (= e!3409015 (nullable!5533 (regOne!31510 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))))

(declare-fun bm!407656 () Bool)

(declare-fun call!407665 () List!62796)

(declare-fun c!963468 () Bool)

(assert (=> bm!407656 (= call!407665 ($colon$colon!1582 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))) (ite (or c!963467 c!963468) (regTwo!31510 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))))

(declare-fun b!5512536 () Bool)

(assert (=> b!5512536 (= e!3409017 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512537 () Bool)

(declare-fun e!3409014 () (InoxSet Context!9766))

(assert (=> b!5512537 (= e!3409014 e!3409018)))

(declare-fun c!963470 () Bool)

(assert (=> b!5512537 (= c!963470 ((_ is Union!15499) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(declare-fun b!5512538 () Bool)

(declare-fun e!3409019 () (InoxSet Context!9766))

(assert (=> b!5512538 (= e!3409019 call!407660)))

(declare-fun b!5512539 () Bool)

(declare-fun call!407664 () (InoxSet Context!9766))

(declare-fun call!407661 () (InoxSet Context!9766))

(assert (=> b!5512539 (= e!3409018 ((_ map or) call!407664 call!407661))))

(declare-fun bm!407657 () Bool)

(assert (=> bm!407657 (= call!407664 (derivationStepZipperDown!841 (ite c!963470 (regOne!31511 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (regOne!31510 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))) (ite c!963470 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (Context!9767 call!407665)) (h!69121 s!2326)))))

(declare-fun b!5512541 () Bool)

(assert (=> b!5512541 (= e!3409016 ((_ map or) call!407664 call!407663))))

(declare-fun b!5512542 () Bool)

(declare-fun c!963471 () Bool)

(assert (=> b!5512542 (= c!963471 ((_ is Star!15499) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(assert (=> b!5512542 (= e!3409019 e!3409017)))

(declare-fun bm!407658 () Bool)

(declare-fun call!407662 () List!62796)

(assert (=> bm!407658 (= call!407661 (derivationStepZipperDown!841 (ite c!963470 (regTwo!31511 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (ite c!963467 (regTwo!31510 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (ite c!963468 (regOne!31510 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (reg!15828 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))) (ite (or c!963470 c!963467) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (Context!9767 call!407662)) (h!69121 s!2326)))))

(declare-fun bm!407659 () Bool)

(assert (=> bm!407659 (= call!407662 call!407665)))

(declare-fun b!5512540 () Bool)

(assert (=> b!5512540 (= e!3409014 (store ((as const (Array Context!9766 Bool)) false) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) true))))

(declare-fun d!1746471 () Bool)

(declare-fun c!963469 () Bool)

(assert (=> d!1746471 (= c!963469 (and ((_ is ElementMatch!15499) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (= (c!963233 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69121 s!2326))))))

(assert (=> d!1746471 (= (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69121 s!2326)) e!3409014)))

(declare-fun bm!407660 () Bool)

(assert (=> bm!407660 (= call!407663 call!407661)))

(declare-fun b!5512543 () Bool)

(assert (=> b!5512543 (= e!3409016 e!3409019)))

(assert (=> b!5512543 (= c!963468 ((_ is Concat!24344) (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(assert (= (and d!1746471 c!963469) b!5512540))

(assert (= (and d!1746471 (not c!963469)) b!5512537))

(assert (= (and b!5512537 c!963470) b!5512539))

(assert (= (and b!5512537 (not c!963470)) b!5512533))

(assert (= (and b!5512533 res!2348904) b!5512535))

(assert (= (and b!5512533 c!963467) b!5512541))

(assert (= (and b!5512533 (not c!963467)) b!5512543))

(assert (= (and b!5512543 c!963468) b!5512538))

(assert (= (and b!5512543 (not c!963468)) b!5512542))

(assert (= (and b!5512542 c!963471) b!5512534))

(assert (= (and b!5512542 (not c!963471)) b!5512536))

(assert (= (or b!5512538 b!5512534) bm!407659))

(assert (= (or b!5512538 b!5512534) bm!407655))

(assert (= (or b!5512541 bm!407659) bm!407656))

(assert (= (or b!5512541 bm!407655) bm!407660))

(assert (= (or b!5512539 bm!407660) bm!407658))

(assert (= (or b!5512539 b!5512541) bm!407657))

(declare-fun m!6517088 () Bool)

(assert (=> b!5512540 m!6517088))

(declare-fun m!6517090 () Bool)

(assert (=> bm!407656 m!6517090))

(declare-fun m!6517092 () Bool)

(assert (=> b!5512535 m!6517092))

(declare-fun m!6517094 () Bool)

(assert (=> bm!407658 m!6517094))

(declare-fun m!6517096 () Bool)

(assert (=> bm!407657 m!6517096))

(assert (=> bm!407586 d!1746471))

(assert (=> d!1746327 d!1746323))

(declare-fun d!1746475 () Bool)

(assert (=> d!1746475 (= (flatMap!1112 z!1189 lambda!295311) (dynLambda!24486 lambda!295311 (h!69122 zl!343)))))

(assert (=> d!1746475 true))

(declare-fun _$13!2037 () Unit!155458)

(assert (=> d!1746475 (= (choose!41895 z!1189 (h!69122 zl!343) lambda!295311) _$13!2037)))

(declare-fun b_lambda!208991 () Bool)

(assert (=> (not b_lambda!208991) (not d!1746475)))

(declare-fun bs!1270623 () Bool)

(assert (= bs!1270623 d!1746475))

(assert (=> bs!1270623 m!6516514))

(assert (=> bs!1270623 m!6516770))

(assert (=> d!1746327 d!1746475))

(declare-fun d!1746477 () Bool)

(assert (=> d!1746477 (= (isEmpty!34453 (tail!10904 (exprs!5383 (h!69122 zl!343)))) ((_ is Nil!62672) (tail!10904 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> b!5511843 d!1746477))

(declare-fun d!1746479 () Bool)

(assert (=> d!1746479 (= (tail!10904 (exprs!5383 (h!69122 zl!343))) (t!376041 (exprs!5383 (h!69122 zl!343))))))

(assert (=> b!5511843 d!1746479))

(declare-fun d!1746481 () Bool)

(assert (=> d!1746481 (= (flatMap!1112 z!1189 lambda!295341) (choose!41894 z!1189 lambda!295341))))

(declare-fun bs!1270624 () Bool)

(assert (= bs!1270624 d!1746481))

(declare-fun m!6517098 () Bool)

(assert (=> bs!1270624 m!6517098))

(assert (=> d!1746313 d!1746481))

(declare-fun b!5512544 () Bool)

(declare-fun res!2348908 () Bool)

(declare-fun e!3409025 () Bool)

(assert (=> b!5512544 (=> res!2348908 e!3409025)))

(declare-fun e!3409024 () Bool)

(assert (=> b!5512544 (= res!2348908 e!3409024)))

(declare-fun res!2348912 () Bool)

(assert (=> b!5512544 (=> (not res!2348912) (not e!3409024))))

(declare-fun lt!2245507 () Bool)

(assert (=> b!5512544 (= res!2348912 lt!2245507)))

(declare-fun b!5512545 () Bool)

(assert (=> b!5512545 (= e!3409024 (= (head!11810 (_1!35899 (get!21568 lt!2245489))) (c!963233 (regOne!31510 r!7292))))))

(declare-fun b!5512546 () Bool)

(declare-fun res!2348907 () Bool)

(assert (=> b!5512546 (=> (not res!2348907) (not e!3409024))))

(assert (=> b!5512546 (= res!2348907 (isEmpty!34457 (tail!10905 (_1!35899 (get!21568 lt!2245489)))))))

(declare-fun b!5512547 () Bool)

(declare-fun e!3409026 () Bool)

(assert (=> b!5512547 (= e!3409025 e!3409026)))

(declare-fun res!2348905 () Bool)

(assert (=> b!5512547 (=> (not res!2348905) (not e!3409026))))

(assert (=> b!5512547 (= res!2348905 (not lt!2245507))))

(declare-fun b!5512548 () Bool)

(declare-fun e!3409020 () Bool)

(assert (=> b!5512548 (= e!3409020 (matchR!7684 (derivativeStep!4368 (regOne!31510 r!7292) (head!11810 (_1!35899 (get!21568 lt!2245489)))) (tail!10905 (_1!35899 (get!21568 lt!2245489)))))))

(declare-fun b!5512549 () Bool)

(declare-fun e!3409023 () Bool)

(declare-fun e!3409021 () Bool)

(assert (=> b!5512549 (= e!3409023 e!3409021)))

(declare-fun c!963474 () Bool)

(assert (=> b!5512549 (= c!963474 ((_ is EmptyLang!15499) (regOne!31510 r!7292)))))

(declare-fun d!1746483 () Bool)

(assert (=> d!1746483 e!3409023))

(declare-fun c!963473 () Bool)

(assert (=> d!1746483 (= c!963473 ((_ is EmptyExpr!15499) (regOne!31510 r!7292)))))

(assert (=> d!1746483 (= lt!2245507 e!3409020)))

(declare-fun c!963472 () Bool)

(assert (=> d!1746483 (= c!963472 (isEmpty!34457 (_1!35899 (get!21568 lt!2245489))))))

(assert (=> d!1746483 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746483 (= (matchR!7684 (regOne!31510 r!7292) (_1!35899 (get!21568 lt!2245489))) lt!2245507)))

(declare-fun b!5512550 () Bool)

(assert (=> b!5512550 (= e!3409021 (not lt!2245507))))

(declare-fun bm!407661 () Bool)

(declare-fun call!407666 () Bool)

(assert (=> bm!407661 (= call!407666 (isEmpty!34457 (_1!35899 (get!21568 lt!2245489))))))

(declare-fun b!5512551 () Bool)

(declare-fun e!3409022 () Bool)

(assert (=> b!5512551 (= e!3409022 (not (= (head!11810 (_1!35899 (get!21568 lt!2245489))) (c!963233 (regOne!31510 r!7292)))))))

(declare-fun b!5512552 () Bool)

(declare-fun res!2348909 () Bool)

(assert (=> b!5512552 (=> res!2348909 e!3409022)))

(assert (=> b!5512552 (= res!2348909 (not (isEmpty!34457 (tail!10905 (_1!35899 (get!21568 lt!2245489))))))))

(declare-fun b!5512553 () Bool)

(assert (=> b!5512553 (= e!3409026 e!3409022)))

(declare-fun res!2348911 () Bool)

(assert (=> b!5512553 (=> res!2348911 e!3409022)))

(assert (=> b!5512553 (= res!2348911 call!407666)))

(declare-fun b!5512554 () Bool)

(assert (=> b!5512554 (= e!3409020 (nullable!5533 (regOne!31510 r!7292)))))

(declare-fun b!5512555 () Bool)

(assert (=> b!5512555 (= e!3409023 (= lt!2245507 call!407666))))

(declare-fun b!5512556 () Bool)

(declare-fun res!2348910 () Bool)

(assert (=> b!5512556 (=> res!2348910 e!3409025)))

(assert (=> b!5512556 (= res!2348910 (not ((_ is ElementMatch!15499) (regOne!31510 r!7292))))))

(assert (=> b!5512556 (= e!3409021 e!3409025)))

(declare-fun b!5512557 () Bool)

(declare-fun res!2348906 () Bool)

(assert (=> b!5512557 (=> (not res!2348906) (not e!3409024))))

(assert (=> b!5512557 (= res!2348906 (not call!407666))))

(assert (= (and d!1746483 c!963472) b!5512554))

(assert (= (and d!1746483 (not c!963472)) b!5512548))

(assert (= (and d!1746483 c!963473) b!5512555))

(assert (= (and d!1746483 (not c!963473)) b!5512549))

(assert (= (and b!5512549 c!963474) b!5512550))

(assert (= (and b!5512549 (not c!963474)) b!5512556))

(assert (= (and b!5512556 (not res!2348910)) b!5512544))

(assert (= (and b!5512544 res!2348912) b!5512557))

(assert (= (and b!5512557 res!2348906) b!5512546))

(assert (= (and b!5512546 res!2348907) b!5512545))

(assert (= (and b!5512544 (not res!2348908)) b!5512547))

(assert (= (and b!5512547 res!2348905) b!5512553))

(assert (= (and b!5512553 (not res!2348911)) b!5512552))

(assert (= (and b!5512552 (not res!2348909)) b!5512551))

(assert (= (or b!5512555 b!5512553 b!5512557) bm!407661))

(declare-fun m!6517100 () Bool)

(assert (=> b!5512548 m!6517100))

(assert (=> b!5512548 m!6517100))

(declare-fun m!6517102 () Bool)

(assert (=> b!5512548 m!6517102))

(declare-fun m!6517104 () Bool)

(assert (=> b!5512548 m!6517104))

(assert (=> b!5512548 m!6517102))

(assert (=> b!5512548 m!6517104))

(declare-fun m!6517106 () Bool)

(assert (=> b!5512548 m!6517106))

(declare-fun m!6517108 () Bool)

(assert (=> d!1746483 m!6517108))

(assert (=> d!1746483 m!6516968))

(assert (=> b!5512552 m!6517104))

(assert (=> b!5512552 m!6517104))

(declare-fun m!6517110 () Bool)

(assert (=> b!5512552 m!6517110))

(assert (=> b!5512551 m!6517100))

(assert (=> b!5512545 m!6517100))

(assert (=> b!5512546 m!6517104))

(assert (=> b!5512546 m!6517104))

(assert (=> b!5512546 m!6517110))

(assert (=> b!5512554 m!6516504))

(assert (=> bm!407661 m!6517108))

(assert (=> b!5512311 d!1746483))

(declare-fun d!1746485 () Bool)

(assert (=> d!1746485 (= (get!21568 lt!2245489) (v!51542 lt!2245489))))

(assert (=> b!5512311 d!1746485))

(declare-fun d!1746487 () Bool)

(assert (=> d!1746487 (= (nullable!5533 (regOne!31510 (regTwo!31510 r!7292))) (nullableFct!1661 (regOne!31510 (regTwo!31510 r!7292))))))

(declare-fun bs!1270625 () Bool)

(assert (= bs!1270625 d!1746487))

(declare-fun m!6517112 () Bool)

(assert (=> bs!1270625 m!6517112))

(assert (=> b!5512230 d!1746487))

(declare-fun d!1746489 () Bool)

(assert (=> d!1746489 (= ($colon$colon!1582 (exprs!5383 lt!2245398) (ite (or c!963399 c!963400) (regTwo!31510 (regTwo!31510 r!7292)) (regTwo!31510 r!7292))) (Cons!62672 (ite (or c!963399 c!963400) (regTwo!31510 (regTwo!31510 r!7292)) (regTwo!31510 r!7292)) (exprs!5383 lt!2245398)))))

(assert (=> bm!407609 d!1746489))

(declare-fun bs!1270626 () Bool)

(declare-fun b!5512569 () Bool)

(assert (= bs!1270626 (and b!5512569 d!1746405)))

(declare-fun lambda!295378 () Int)

(assert (=> bs!1270626 (not (= lambda!295378 lambda!295361))))

(declare-fun bs!1270627 () Bool)

(assert (= bs!1270627 (and b!5512569 d!1746407)))

(assert (=> bs!1270627 (not (= lambda!295378 lambda!295367))))

(declare-fun bs!1270628 () Bool)

(assert (= bs!1270628 (and b!5512569 b!5511697)))

(assert (=> bs!1270628 (not (= lambda!295378 lambda!295309))))

(declare-fun bs!1270629 () Bool)

(assert (= bs!1270629 (and b!5512569 b!5512364)))

(assert (=> bs!1270629 (= (and (= (reg!15828 (regOne!31511 r!7292)) (reg!15828 r!7292)) (= (regOne!31511 r!7292) r!7292)) (= lambda!295378 lambda!295372))))

(assert (=> bs!1270627 (not (= lambda!295378 lambda!295366))))

(assert (=> bs!1270628 (not (= lambda!295378 lambda!295310))))

(declare-fun bs!1270630 () Bool)

(assert (= bs!1270630 (and b!5512569 b!5512356)))

(assert (=> bs!1270630 (not (= lambda!295378 lambda!295373))))

(assert (=> b!5512569 true))

(assert (=> b!5512569 true))

(declare-fun bs!1270631 () Bool)

(declare-fun b!5512561 () Bool)

(assert (= bs!1270631 (and b!5512561 d!1746405)))

(declare-fun lambda!295379 () Int)

(assert (=> bs!1270631 (not (= lambda!295379 lambda!295361))))

(declare-fun bs!1270632 () Bool)

(assert (= bs!1270632 (and b!5512561 d!1746407)))

(assert (=> bs!1270632 (= (and (= (regOne!31510 (regOne!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regOne!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295379 lambda!295367))))

(declare-fun bs!1270633 () Bool)

(assert (= bs!1270633 (and b!5512561 b!5511697)))

(assert (=> bs!1270633 (not (= lambda!295379 lambda!295309))))

(declare-fun bs!1270634 () Bool)

(assert (= bs!1270634 (and b!5512561 b!5512364)))

(assert (=> bs!1270634 (not (= lambda!295379 lambda!295372))))

(assert (=> bs!1270632 (not (= lambda!295379 lambda!295366))))

(declare-fun bs!1270635 () Bool)

(assert (= bs!1270635 (and b!5512561 b!5512569)))

(assert (=> bs!1270635 (not (= lambda!295379 lambda!295378))))

(assert (=> bs!1270633 (= (and (= (regOne!31510 (regOne!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regOne!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295379 lambda!295310))))

(declare-fun bs!1270636 () Bool)

(assert (= bs!1270636 (and b!5512561 b!5512356)))

(assert (=> bs!1270636 (= (and (= (regOne!31510 (regOne!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regOne!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295379 lambda!295373))))

(assert (=> b!5512561 true))

(assert (=> b!5512561 true))

(declare-fun e!3409034 () Bool)

(declare-fun call!407667 () Bool)

(assert (=> b!5512561 (= e!3409034 call!407667)))

(declare-fun b!5512562 () Bool)

(declare-fun e!3409031 () Bool)

(declare-fun call!407668 () Bool)

(assert (=> b!5512562 (= e!3409031 call!407668)))

(declare-fun b!5512563 () Bool)

(declare-fun res!2348918 () Bool)

(declare-fun e!3409030 () Bool)

(assert (=> b!5512563 (=> res!2348918 e!3409030)))

(assert (=> b!5512563 (= res!2348918 call!407668)))

(assert (=> b!5512563 (= e!3409034 e!3409030)))

(declare-fun b!5512565 () Bool)

(declare-fun e!3409032 () Bool)

(assert (=> b!5512565 (= e!3409031 e!3409032)))

(declare-fun res!2348916 () Bool)

(assert (=> b!5512565 (= res!2348916 (not ((_ is EmptyLang!15499) (regOne!31511 r!7292))))))

(assert (=> b!5512565 (=> (not res!2348916) (not e!3409032))))

(declare-fun bm!407662 () Bool)

(assert (=> bm!407662 (= call!407668 (isEmpty!34457 s!2326))))

(declare-fun bm!407663 () Bool)

(declare-fun c!963478 () Bool)

(assert (=> bm!407663 (= call!407667 (Exists!2599 (ite c!963478 lambda!295378 lambda!295379)))))

(declare-fun b!5512566 () Bool)

(declare-fun e!3409033 () Bool)

(assert (=> b!5512566 (= e!3409033 e!3409034)))

(assert (=> b!5512566 (= c!963478 ((_ is Star!15499) (regOne!31511 r!7292)))))

(declare-fun b!5512567 () Bool)

(declare-fun e!3409035 () Bool)

(assert (=> b!5512567 (= e!3409033 e!3409035)))

(declare-fun res!2348917 () Bool)

(assert (=> b!5512567 (= res!2348917 (matchRSpec!2602 (regOne!31511 (regOne!31511 r!7292)) s!2326))))

(assert (=> b!5512567 (=> res!2348917 e!3409035)))

(declare-fun b!5512568 () Bool)

(assert (=> b!5512568 (= e!3409035 (matchRSpec!2602 (regTwo!31511 (regOne!31511 r!7292)) s!2326))))

(assert (=> b!5512569 (= e!3409030 call!407667)))

(declare-fun b!5512570 () Bool)

(declare-fun c!963475 () Bool)

(assert (=> b!5512570 (= c!963475 ((_ is Union!15499) (regOne!31511 r!7292)))))

(declare-fun e!3409036 () Bool)

(assert (=> b!5512570 (= e!3409036 e!3409033)))

(declare-fun b!5512571 () Bool)

(assert (=> b!5512571 (= e!3409036 (= s!2326 (Cons!62673 (c!963233 (regOne!31511 r!7292)) Nil!62673)))))

(declare-fun d!1746491 () Bool)

(declare-fun c!963476 () Bool)

(assert (=> d!1746491 (= c!963476 ((_ is EmptyExpr!15499) (regOne!31511 r!7292)))))

(assert (=> d!1746491 (= (matchRSpec!2602 (regOne!31511 r!7292) s!2326) e!3409031)))

(declare-fun b!5512564 () Bool)

(declare-fun c!963477 () Bool)

(assert (=> b!5512564 (= c!963477 ((_ is ElementMatch!15499) (regOne!31511 r!7292)))))

(assert (=> b!5512564 (= e!3409032 e!3409036)))

(assert (= (and d!1746491 c!963476) b!5512562))

(assert (= (and d!1746491 (not c!963476)) b!5512565))

(assert (= (and b!5512565 res!2348916) b!5512564))

(assert (= (and b!5512564 c!963477) b!5512571))

(assert (= (and b!5512564 (not c!963477)) b!5512570))

(assert (= (and b!5512570 c!963475) b!5512567))

(assert (= (and b!5512570 (not c!963475)) b!5512566))

(assert (= (and b!5512567 (not res!2348917)) b!5512568))

(assert (= (and b!5512566 c!963478) b!5512563))

(assert (= (and b!5512566 (not c!963478)) b!5512561))

(assert (= (and b!5512563 (not res!2348918)) b!5512569))

(assert (= (or b!5512569 b!5512561) bm!407663))

(assert (= (or b!5512562 b!5512563) bm!407662))

(assert (=> bm!407662 m!6516994))

(declare-fun m!6517116 () Bool)

(assert (=> bm!407663 m!6517116))

(declare-fun m!6517118 () Bool)

(assert (=> b!5512567 m!6517118))

(declare-fun m!6517122 () Bool)

(assert (=> b!5512568 m!6517122))

(assert (=> b!5512362 d!1746491))

(declare-fun d!1746497 () Bool)

(assert (=> d!1746497 (= (head!11810 s!2326) (h!69121 s!2326))))

(assert (=> b!5512402 d!1746497))

(declare-fun b!5512578 () Bool)

(declare-fun e!3409045 () Bool)

(declare-fun call!407669 () Bool)

(assert (=> b!5512578 (= e!3409045 call!407669)))

(declare-fun b!5512579 () Bool)

(declare-fun e!3409048 () Bool)

(declare-fun e!3409049 () Bool)

(assert (=> b!5512579 (= e!3409048 e!3409049)))

(declare-fun res!2348929 () Bool)

(assert (=> b!5512579 (= res!2348929 (not (nullable!5533 (reg!15828 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))))

(assert (=> b!5512579 (=> (not res!2348929) (not e!3409049))))

(declare-fun b!5512580 () Bool)

(declare-fun res!2348928 () Bool)

(declare-fun e!3409044 () Bool)

(assert (=> b!5512580 (=> res!2348928 e!3409044)))

(assert (=> b!5512580 (= res!2348928 (not ((_ is Concat!24344) (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292))))))))

(declare-fun e!3409043 () Bool)

(assert (=> b!5512580 (= e!3409043 e!3409044)))

(declare-fun b!5512581 () Bool)

(declare-fun call!407670 () Bool)

(assert (=> b!5512581 (= e!3409049 call!407670)))

(declare-fun b!5512582 () Bool)

(declare-fun res!2348925 () Bool)

(declare-fun e!3409047 () Bool)

(assert (=> b!5512582 (=> (not res!2348925) (not e!3409047))))

(declare-fun call!407671 () Bool)

(assert (=> b!5512582 (= res!2348925 call!407671)))

(assert (=> b!5512582 (= e!3409043 e!3409047)))

(declare-fun b!5512583 () Bool)

(assert (=> b!5512583 (= e!3409044 e!3409045)))

(declare-fun res!2348927 () Bool)

(assert (=> b!5512583 (=> (not res!2348927) (not e!3409045))))

(assert (=> b!5512583 (= res!2348927 call!407671)))

(declare-fun bm!407665 () Bool)

(assert (=> bm!407665 (= call!407669 call!407670)))

(declare-fun c!963480 () Bool)

(declare-fun bm!407664 () Bool)

(assert (=> bm!407664 (= call!407671 (validRegex!7235 (ite c!963480 (regOne!31511 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))) (regOne!31510 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))))

(declare-fun d!1746499 () Bool)

(declare-fun res!2348926 () Bool)

(declare-fun e!3409046 () Bool)

(assert (=> d!1746499 (=> res!2348926 e!3409046)))

(assert (=> d!1746499 (= res!2348926 ((_ is ElementMatch!15499) (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))

(assert (=> d!1746499 (= (validRegex!7235 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))) e!3409046)))

(declare-fun b!5512584 () Bool)

(assert (=> b!5512584 (= e!3409048 e!3409043)))

(assert (=> b!5512584 (= c!963480 ((_ is Union!15499) (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))

(declare-fun c!963479 () Bool)

(declare-fun bm!407666 () Bool)

(assert (=> bm!407666 (= call!407670 (validRegex!7235 (ite c!963479 (reg!15828 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))) (ite c!963480 (regTwo!31511 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))) (regTwo!31510 (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292))))))))))

(declare-fun b!5512585 () Bool)

(assert (=> b!5512585 (= e!3409046 e!3409048)))

(assert (=> b!5512585 (= c!963479 ((_ is Star!15499) (ite c!963415 (reg!15828 r!7292) (ite c!963416 (regTwo!31511 r!7292) (regTwo!31510 r!7292)))))))

(declare-fun b!5512586 () Bool)

(assert (=> b!5512586 (= e!3409047 call!407669)))

(assert (= (and d!1746499 (not res!2348926)) b!5512585))

(assert (= (and b!5512585 c!963479) b!5512579))

(assert (= (and b!5512585 (not c!963479)) b!5512584))

(assert (= (and b!5512579 res!2348929) b!5512581))

(assert (= (and b!5512584 c!963480) b!5512582))

(assert (= (and b!5512584 (not c!963480)) b!5512580))

(assert (= (and b!5512582 res!2348925) b!5512586))

(assert (= (and b!5512580 (not res!2348928)) b!5512583))

(assert (= (and b!5512583 res!2348927) b!5512578))

(assert (= (or b!5512586 b!5512578) bm!407665))

(assert (= (or b!5512582 b!5512583) bm!407664))

(assert (= (or b!5512581 bm!407665) bm!407666))

(declare-fun m!6517124 () Bool)

(assert (=> b!5512579 m!6517124))

(declare-fun m!6517126 () Bool)

(assert (=> bm!407664 m!6517126))

(declare-fun m!6517128 () Bool)

(assert (=> bm!407666 m!6517128))

(assert (=> bm!407629 d!1746499))

(assert (=> d!1746383 d!1746389))

(declare-fun d!1746501 () Bool)

(assert (=> d!1746501 (= (flatMap!1112 lt!2245390 lambda!295311) (dynLambda!24486 lambda!295311 lt!2245401))))

(assert (=> d!1746501 true))

(declare-fun _$13!2038 () Unit!155458)

(assert (=> d!1746501 (= (choose!41895 lt!2245390 lt!2245401 lambda!295311) _$13!2038)))

(declare-fun b_lambda!208993 () Bool)

(assert (=> (not b_lambda!208993) (not d!1746501)))

(declare-fun bs!1270637 () Bool)

(assert (= bs!1270637 d!1746501))

(assert (=> bs!1270637 m!6516498))

(assert (=> bs!1270637 m!6516912))

(assert (=> d!1746383 d!1746501))

(declare-fun d!1746503 () Bool)

(assert (=> d!1746503 (= (isEmpty!34453 (t!376041 (unfocusZipperList!927 zl!343))) ((_ is Nil!62672) (t!376041 (unfocusZipperList!927 zl!343))))))

(assert (=> b!5512178 d!1746503))

(declare-fun d!1746505 () Bool)

(assert (=> d!1746505 (= (Exists!2599 lambda!295366) (choose!41900 lambda!295366))))

(declare-fun bs!1270638 () Bool)

(assert (= bs!1270638 d!1746505))

(declare-fun m!6517130 () Bool)

(assert (=> bs!1270638 m!6517130))

(assert (=> d!1746407 d!1746505))

(declare-fun d!1746507 () Bool)

(assert (=> d!1746507 (= (Exists!2599 lambda!295367) (choose!41900 lambda!295367))))

(declare-fun bs!1270639 () Bool)

(assert (= bs!1270639 d!1746507))

(declare-fun m!6517132 () Bool)

(assert (=> bs!1270639 m!6517132))

(assert (=> d!1746407 d!1746507))

(declare-fun bs!1270641 () Bool)

(declare-fun d!1746509 () Bool)

(assert (= bs!1270641 (and d!1746509 d!1746405)))

(declare-fun lambda!295387 () Int)

(assert (=> bs!1270641 (= lambda!295387 lambda!295361)))

(declare-fun bs!1270642 () Bool)

(assert (= bs!1270642 (and d!1746509 d!1746407)))

(assert (=> bs!1270642 (not (= lambda!295387 lambda!295367))))

(declare-fun bs!1270643 () Bool)

(assert (= bs!1270643 (and d!1746509 b!5511697)))

(assert (=> bs!1270643 (= lambda!295387 lambda!295309)))

(declare-fun bs!1270644 () Bool)

(assert (= bs!1270644 (and d!1746509 b!5512364)))

(assert (=> bs!1270644 (not (= lambda!295387 lambda!295372))))

(assert (=> bs!1270642 (= lambda!295387 lambda!295366)))

(declare-fun bs!1270645 () Bool)

(assert (= bs!1270645 (and d!1746509 b!5512569)))

(assert (=> bs!1270645 (not (= lambda!295387 lambda!295378))))

(assert (=> bs!1270643 (not (= lambda!295387 lambda!295310))))

(declare-fun bs!1270646 () Bool)

(assert (= bs!1270646 (and d!1746509 b!5512356)))

(assert (=> bs!1270646 (not (= lambda!295387 lambda!295373))))

(declare-fun bs!1270647 () Bool)

(assert (= bs!1270647 (and d!1746509 b!5512561)))

(assert (=> bs!1270647 (not (= lambda!295387 lambda!295379))))

(assert (=> d!1746509 true))

(assert (=> d!1746509 true))

(assert (=> d!1746509 true))

(declare-fun lambda!295389 () Int)

(assert (=> bs!1270641 (not (= lambda!295389 lambda!295361))))

(assert (=> bs!1270642 (= lambda!295389 lambda!295367)))

(declare-fun bs!1270650 () Bool)

(assert (= bs!1270650 d!1746509))

(assert (=> bs!1270650 (not (= lambda!295389 lambda!295387))))

(assert (=> bs!1270643 (not (= lambda!295389 lambda!295309))))

(assert (=> bs!1270644 (not (= lambda!295389 lambda!295372))))

(assert (=> bs!1270642 (not (= lambda!295389 lambda!295366))))

(assert (=> bs!1270645 (not (= lambda!295389 lambda!295378))))

(assert (=> bs!1270643 (= lambda!295389 lambda!295310)))

(assert (=> bs!1270646 (= lambda!295389 lambda!295373)))

(assert (=> bs!1270647 (= (and (= (regOne!31510 r!7292) (regOne!31510 (regOne!31511 r!7292))) (= (regTwo!31510 r!7292) (regTwo!31510 (regOne!31511 r!7292)))) (= lambda!295389 lambda!295379))))

(assert (=> d!1746509 true))

(assert (=> d!1746509 true))

(assert (=> d!1746509 true))

(assert (=> d!1746509 (= (Exists!2599 lambda!295387) (Exists!2599 lambda!295389))))

(assert (=> d!1746509 true))

(declare-fun _$90!1223 () Unit!155458)

(assert (=> d!1746509 (= (choose!41902 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326) _$90!1223)))

(declare-fun m!6517156 () Bool)

(assert (=> bs!1270650 m!6517156))

(declare-fun m!6517158 () Bool)

(assert (=> bs!1270650 m!6517158))

(assert (=> d!1746407 d!1746509))

(declare-fun b!5512624 () Bool)

(declare-fun e!3409078 () Bool)

(declare-fun call!407681 () Bool)

(assert (=> b!5512624 (= e!3409078 call!407681)))

(declare-fun b!5512625 () Bool)

(declare-fun e!3409081 () Bool)

(declare-fun e!3409082 () Bool)

(assert (=> b!5512625 (= e!3409081 e!3409082)))

(declare-fun res!2348954 () Bool)

(assert (=> b!5512625 (= res!2348954 (not (nullable!5533 (reg!15828 (regOne!31510 r!7292)))))))

(assert (=> b!5512625 (=> (not res!2348954) (not e!3409082))))

(declare-fun b!5512626 () Bool)

(declare-fun res!2348953 () Bool)

(declare-fun e!3409077 () Bool)

(assert (=> b!5512626 (=> res!2348953 e!3409077)))

(assert (=> b!5512626 (= res!2348953 (not ((_ is Concat!24344) (regOne!31510 r!7292))))))

(declare-fun e!3409076 () Bool)

(assert (=> b!5512626 (= e!3409076 e!3409077)))

(declare-fun b!5512627 () Bool)

(declare-fun call!407682 () Bool)

(assert (=> b!5512627 (= e!3409082 call!407682)))

(declare-fun b!5512628 () Bool)

(declare-fun res!2348950 () Bool)

(declare-fun e!3409080 () Bool)

(assert (=> b!5512628 (=> (not res!2348950) (not e!3409080))))

(declare-fun call!407683 () Bool)

(assert (=> b!5512628 (= res!2348950 call!407683)))

(assert (=> b!5512628 (= e!3409076 e!3409080)))

(declare-fun b!5512629 () Bool)

(assert (=> b!5512629 (= e!3409077 e!3409078)))

(declare-fun res!2348952 () Bool)

(assert (=> b!5512629 (=> (not res!2348952) (not e!3409078))))

(assert (=> b!5512629 (= res!2348952 call!407683)))

(declare-fun bm!407677 () Bool)

(assert (=> bm!407677 (= call!407681 call!407682)))

(declare-fun bm!407676 () Bool)

(declare-fun c!963491 () Bool)

(assert (=> bm!407676 (= call!407683 (validRegex!7235 (ite c!963491 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(declare-fun d!1746521 () Bool)

(declare-fun res!2348951 () Bool)

(declare-fun e!3409079 () Bool)

(assert (=> d!1746521 (=> res!2348951 e!3409079)))

(assert (=> d!1746521 (= res!2348951 ((_ is ElementMatch!15499) (regOne!31510 r!7292)))))

(assert (=> d!1746521 (= (validRegex!7235 (regOne!31510 r!7292)) e!3409079)))

(declare-fun b!5512630 () Bool)

(assert (=> b!5512630 (= e!3409081 e!3409076)))

(assert (=> b!5512630 (= c!963491 ((_ is Union!15499) (regOne!31510 r!7292)))))

(declare-fun c!963490 () Bool)

(declare-fun bm!407678 () Bool)

(assert (=> bm!407678 (= call!407682 (validRegex!7235 (ite c!963490 (reg!15828 (regOne!31510 r!7292)) (ite c!963491 (regTwo!31511 (regOne!31510 r!7292)) (regTwo!31510 (regOne!31510 r!7292))))))))

(declare-fun b!5512631 () Bool)

(assert (=> b!5512631 (= e!3409079 e!3409081)))

(assert (=> b!5512631 (= c!963490 ((_ is Star!15499) (regOne!31510 r!7292)))))

(declare-fun b!5512632 () Bool)

(assert (=> b!5512632 (= e!3409080 call!407681)))

(assert (= (and d!1746521 (not res!2348951)) b!5512631))

(assert (= (and b!5512631 c!963490) b!5512625))

(assert (= (and b!5512631 (not c!963490)) b!5512630))

(assert (= (and b!5512625 res!2348954) b!5512627))

(assert (= (and b!5512630 c!963491) b!5512628))

(assert (= (and b!5512630 (not c!963491)) b!5512626))

(assert (= (and b!5512628 res!2348950) b!5512632))

(assert (= (and b!5512626 (not res!2348953)) b!5512629))

(assert (= (and b!5512629 res!2348952) b!5512624))

(assert (= (or b!5512632 b!5512624) bm!407677))

(assert (= (or b!5512628 b!5512629) bm!407676))

(assert (= (or b!5512627 bm!407677) bm!407678))

(declare-fun m!6517166 () Bool)

(assert (=> b!5512625 m!6517166))

(declare-fun m!6517168 () Bool)

(assert (=> bm!407676 m!6517168))

(declare-fun m!6517170 () Bool)

(assert (=> bm!407678 m!6517170))

(assert (=> d!1746407 d!1746521))

(declare-fun d!1746525 () Bool)

(assert (=> d!1746525 (= ($colon$colon!1582 (exprs!5383 lt!2245392) (ite (or c!963406 c!963407) (regTwo!31510 (regOne!31510 r!7292)) (regOne!31510 r!7292))) (Cons!62672 (ite (or c!963406 c!963407) (regTwo!31510 (regOne!31510 r!7292)) (regOne!31510 r!7292)) (exprs!5383 lt!2245392)))))

(assert (=> bm!407616 d!1746525))

(declare-fun b!5512633 () Bool)

(declare-fun res!2348958 () Bool)

(declare-fun e!3409088 () Bool)

(assert (=> b!5512633 (=> res!2348958 e!3409088)))

(declare-fun e!3409087 () Bool)

(assert (=> b!5512633 (= res!2348958 e!3409087)))

(declare-fun res!2348962 () Bool)

(assert (=> b!5512633 (=> (not res!2348962) (not e!3409087))))

(declare-fun lt!2245508 () Bool)

(assert (=> b!5512633 (= res!2348962 lt!2245508)))

(declare-fun b!5512634 () Bool)

(assert (=> b!5512634 (= e!3409087 (= (head!11810 (tail!10905 s!2326)) (c!963233 (derivativeStep!4368 r!7292 (head!11810 s!2326)))))))

(declare-fun b!5512635 () Bool)

(declare-fun res!2348957 () Bool)

(assert (=> b!5512635 (=> (not res!2348957) (not e!3409087))))

(assert (=> b!5512635 (= res!2348957 (isEmpty!34457 (tail!10905 (tail!10905 s!2326))))))

(declare-fun b!5512636 () Bool)

(declare-fun e!3409089 () Bool)

(assert (=> b!5512636 (= e!3409088 e!3409089)))

(declare-fun res!2348955 () Bool)

(assert (=> b!5512636 (=> (not res!2348955) (not e!3409089))))

(assert (=> b!5512636 (= res!2348955 (not lt!2245508))))

(declare-fun b!5512637 () Bool)

(declare-fun e!3409083 () Bool)

(assert (=> b!5512637 (= e!3409083 (matchR!7684 (derivativeStep!4368 (derivativeStep!4368 r!7292 (head!11810 s!2326)) (head!11810 (tail!10905 s!2326))) (tail!10905 (tail!10905 s!2326))))))

(declare-fun b!5512638 () Bool)

(declare-fun e!3409086 () Bool)

(declare-fun e!3409084 () Bool)

(assert (=> b!5512638 (= e!3409086 e!3409084)))

(declare-fun c!963494 () Bool)

(assert (=> b!5512638 (= c!963494 ((_ is EmptyLang!15499) (derivativeStep!4368 r!7292 (head!11810 s!2326))))))

(declare-fun d!1746527 () Bool)

(assert (=> d!1746527 e!3409086))

(declare-fun c!963493 () Bool)

(assert (=> d!1746527 (= c!963493 ((_ is EmptyExpr!15499) (derivativeStep!4368 r!7292 (head!11810 s!2326))))))

(assert (=> d!1746527 (= lt!2245508 e!3409083)))

(declare-fun c!963492 () Bool)

(assert (=> d!1746527 (= c!963492 (isEmpty!34457 (tail!10905 s!2326)))))

(assert (=> d!1746527 (validRegex!7235 (derivativeStep!4368 r!7292 (head!11810 s!2326)))))

(assert (=> d!1746527 (= (matchR!7684 (derivativeStep!4368 r!7292 (head!11810 s!2326)) (tail!10905 s!2326)) lt!2245508)))

(declare-fun b!5512639 () Bool)

(assert (=> b!5512639 (= e!3409084 (not lt!2245508))))

(declare-fun bm!407679 () Bool)

(declare-fun call!407684 () Bool)

(assert (=> bm!407679 (= call!407684 (isEmpty!34457 (tail!10905 s!2326)))))

(declare-fun b!5512640 () Bool)

(declare-fun e!3409085 () Bool)

(assert (=> b!5512640 (= e!3409085 (not (= (head!11810 (tail!10905 s!2326)) (c!963233 (derivativeStep!4368 r!7292 (head!11810 s!2326))))))))

(declare-fun b!5512641 () Bool)

(declare-fun res!2348959 () Bool)

(assert (=> b!5512641 (=> res!2348959 e!3409085)))

(assert (=> b!5512641 (= res!2348959 (not (isEmpty!34457 (tail!10905 (tail!10905 s!2326)))))))

(declare-fun b!5512642 () Bool)

(assert (=> b!5512642 (= e!3409089 e!3409085)))

(declare-fun res!2348961 () Bool)

(assert (=> b!5512642 (=> res!2348961 e!3409085)))

(assert (=> b!5512642 (= res!2348961 call!407684)))

(declare-fun b!5512643 () Bool)

(assert (=> b!5512643 (= e!3409083 (nullable!5533 (derivativeStep!4368 r!7292 (head!11810 s!2326))))))

(declare-fun b!5512644 () Bool)

(assert (=> b!5512644 (= e!3409086 (= lt!2245508 call!407684))))

(declare-fun b!5512645 () Bool)

(declare-fun res!2348960 () Bool)

(assert (=> b!5512645 (=> res!2348960 e!3409088)))

(assert (=> b!5512645 (= res!2348960 (not ((_ is ElementMatch!15499) (derivativeStep!4368 r!7292 (head!11810 s!2326)))))))

(assert (=> b!5512645 (= e!3409084 e!3409088)))

(declare-fun b!5512646 () Bool)

(declare-fun res!2348956 () Bool)

(assert (=> b!5512646 (=> (not res!2348956) (not e!3409087))))

(assert (=> b!5512646 (= res!2348956 (not call!407684))))

(assert (= (and d!1746527 c!963492) b!5512643))

(assert (= (and d!1746527 (not c!963492)) b!5512637))

(assert (= (and d!1746527 c!963493) b!5512644))

(assert (= (and d!1746527 (not c!963493)) b!5512638))

(assert (= (and b!5512638 c!963494) b!5512639))

(assert (= (and b!5512638 (not c!963494)) b!5512645))

(assert (= (and b!5512645 (not res!2348960)) b!5512633))

(assert (= (and b!5512633 res!2348962) b!5512646))

(assert (= (and b!5512646 res!2348956) b!5512635))

(assert (= (and b!5512635 res!2348957) b!5512634))

(assert (= (and b!5512633 (not res!2348958)) b!5512636))

(assert (= (and b!5512636 res!2348955) b!5512642))

(assert (= (and b!5512642 (not res!2348961)) b!5512641))

(assert (= (and b!5512641 (not res!2348959)) b!5512640))

(assert (= (or b!5512644 b!5512642 b!5512646) bm!407679))

(assert (=> b!5512637 m!6517006))

(declare-fun m!6517172 () Bool)

(assert (=> b!5512637 m!6517172))

(assert (=> b!5512637 m!6517004))

(assert (=> b!5512637 m!6517172))

(declare-fun m!6517174 () Bool)

(assert (=> b!5512637 m!6517174))

(assert (=> b!5512637 m!6517006))

(declare-fun m!6517176 () Bool)

(assert (=> b!5512637 m!6517176))

(assert (=> b!5512637 m!6517174))

(assert (=> b!5512637 m!6517176))

(declare-fun m!6517178 () Bool)

(assert (=> b!5512637 m!6517178))

(assert (=> d!1746527 m!6517006))

(assert (=> d!1746527 m!6517010))

(assert (=> d!1746527 m!6517004))

(declare-fun m!6517180 () Bool)

(assert (=> d!1746527 m!6517180))

(assert (=> b!5512641 m!6517006))

(assert (=> b!5512641 m!6517176))

(assert (=> b!5512641 m!6517176))

(declare-fun m!6517182 () Bool)

(assert (=> b!5512641 m!6517182))

(assert (=> b!5512640 m!6517006))

(assert (=> b!5512640 m!6517172))

(assert (=> b!5512634 m!6517006))

(assert (=> b!5512634 m!6517172))

(assert (=> b!5512635 m!6517006))

(assert (=> b!5512635 m!6517176))

(assert (=> b!5512635 m!6517176))

(assert (=> b!5512635 m!6517182))

(assert (=> b!5512643 m!6517004))

(declare-fun m!6517184 () Bool)

(assert (=> b!5512643 m!6517184))

(assert (=> bm!407679 m!6517006))

(assert (=> bm!407679 m!6517010))

(assert (=> b!5512399 d!1746527))

(declare-fun b!5512671 () Bool)

(declare-fun e!3409105 () Regex!15499)

(assert (=> b!5512671 (= e!3409105 EmptyLang!15499)))

(declare-fun b!5512672 () Bool)

(declare-fun c!963508 () Bool)

(assert (=> b!5512672 (= c!963508 (nullable!5533 (regOne!31510 r!7292)))))

(declare-fun e!3409102 () Regex!15499)

(declare-fun e!3409103 () Regex!15499)

(assert (=> b!5512672 (= e!3409102 e!3409103)))

(declare-fun d!1746529 () Bool)

(declare-fun lt!2245511 () Regex!15499)

(assert (=> d!1746529 (validRegex!7235 lt!2245511)))

(assert (=> d!1746529 (= lt!2245511 e!3409105)))

(declare-fun c!963505 () Bool)

(assert (=> d!1746529 (= c!963505 (or ((_ is EmptyExpr!15499) r!7292) ((_ is EmptyLang!15499) r!7292)))))

(assert (=> d!1746529 (validRegex!7235 r!7292)))

(assert (=> d!1746529 (= (derivativeStep!4368 r!7292 (head!11810 s!2326)) lt!2245511)))

(declare-fun call!407694 () Regex!15499)

(declare-fun call!407693 () Regex!15499)

(declare-fun b!5512673 () Bool)

(assert (=> b!5512673 (= e!3409103 (Union!15499 (Concat!24344 call!407694 (regTwo!31510 r!7292)) call!407693))))

(declare-fun b!5512674 () Bool)

(declare-fun e!3409104 () Regex!15499)

(assert (=> b!5512674 (= e!3409104 (ite (= (head!11810 s!2326) (c!963233 r!7292)) EmptyExpr!15499 EmptyLang!15499))))

(declare-fun b!5512675 () Bool)

(declare-fun e!3409106 () Regex!15499)

(assert (=> b!5512675 (= e!3409106 e!3409102)))

(declare-fun c!963507 () Bool)

(assert (=> b!5512675 (= c!963507 ((_ is Star!15499) r!7292))))

(declare-fun b!5512676 () Bool)

(declare-fun c!963509 () Bool)

(assert (=> b!5512676 (= c!963509 ((_ is Union!15499) r!7292))))

(assert (=> b!5512676 (= e!3409104 e!3409106)))

(declare-fun b!5512677 () Bool)

(assert (=> b!5512677 (= e!3409103 (Union!15499 (Concat!24344 call!407693 (regTwo!31510 r!7292)) EmptyLang!15499))))

(declare-fun call!407695 () Regex!15499)

(declare-fun bm!407688 () Bool)

(assert (=> bm!407688 (= call!407695 (derivativeStep!4368 (ite c!963509 (regTwo!31511 r!7292) (ite c!963507 (reg!15828 r!7292) (regOne!31510 r!7292))) (head!11810 s!2326)))))

(declare-fun bm!407689 () Bool)

(declare-fun call!407696 () Regex!15499)

(assert (=> bm!407689 (= call!407696 (derivativeStep!4368 (ite c!963509 (regOne!31511 r!7292) (ite c!963508 (regTwo!31510 r!7292) (regOne!31510 r!7292))) (head!11810 s!2326)))))

(declare-fun bm!407690 () Bool)

(assert (=> bm!407690 (= call!407694 call!407695)))

(declare-fun bm!407691 () Bool)

(assert (=> bm!407691 (= call!407693 call!407696)))

(declare-fun b!5512678 () Bool)

(assert (=> b!5512678 (= e!3409105 e!3409104)))

(declare-fun c!963506 () Bool)

(assert (=> b!5512678 (= c!963506 ((_ is ElementMatch!15499) r!7292))))

(declare-fun b!5512679 () Bool)

(assert (=> b!5512679 (= e!3409102 (Concat!24344 call!407694 r!7292))))

(declare-fun b!5512680 () Bool)

(assert (=> b!5512680 (= e!3409106 (Union!15499 call!407696 call!407695))))

(assert (= (and d!1746529 c!963505) b!5512671))

(assert (= (and d!1746529 (not c!963505)) b!5512678))

(assert (= (and b!5512678 c!963506) b!5512674))

(assert (= (and b!5512678 (not c!963506)) b!5512676))

(assert (= (and b!5512676 c!963509) b!5512680))

(assert (= (and b!5512676 (not c!963509)) b!5512675))

(assert (= (and b!5512675 c!963507) b!5512679))

(assert (= (and b!5512675 (not c!963507)) b!5512672))

(assert (= (and b!5512672 c!963508) b!5512673))

(assert (= (and b!5512672 (not c!963508)) b!5512677))

(assert (= (or b!5512673 b!5512677) bm!407691))

(assert (= (or b!5512679 b!5512673) bm!407690))

(assert (= (or b!5512680 bm!407690) bm!407688))

(assert (= (or b!5512680 bm!407691) bm!407689))

(assert (=> b!5512672 m!6516504))

(declare-fun m!6517186 () Bool)

(assert (=> d!1746529 m!6517186))

(assert (=> d!1746529 m!6516544))

(assert (=> bm!407688 m!6517002))

(declare-fun m!6517188 () Bool)

(assert (=> bm!407688 m!6517188))

(assert (=> bm!407689 m!6517002))

(declare-fun m!6517190 () Bool)

(assert (=> bm!407689 m!6517190))

(assert (=> b!5512399 d!1746529))

(assert (=> b!5512399 d!1746497))

(declare-fun d!1746531 () Bool)

(assert (=> d!1746531 (= (tail!10905 s!2326) (t!376042 s!2326))))

(assert (=> b!5512399 d!1746531))

(declare-fun b!5512681 () Bool)

(declare-fun e!3409108 () (InoxSet Context!9766))

(assert (=> b!5512681 (= e!3409108 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407692 () Bool)

(declare-fun call!407697 () (InoxSet Context!9766))

(assert (=> bm!407692 (= call!407697 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401))))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401)))))) (h!69121 s!2326)))))

(declare-fun b!5512682 () Bool)

(assert (=> b!5512682 (= e!3409108 call!407697)))

(declare-fun b!5512683 () Bool)

(declare-fun e!3409107 () Bool)

(assert (=> b!5512683 (= e!3409107 (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401)))))))))

(declare-fun e!3409109 () (InoxSet Context!9766))

(declare-fun b!5512684 () Bool)

(assert (=> b!5512684 (= e!3409109 ((_ map or) call!407697 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401)))))) (h!69121 s!2326))))))

(declare-fun d!1746533 () Bool)

(declare-fun c!963510 () Bool)

(assert (=> d!1746533 (= c!963510 e!3409107)))

(declare-fun res!2348967 () Bool)

(assert (=> d!1746533 (=> (not res!2348967) (not e!3409107))))

(assert (=> d!1746533 (= res!2348967 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401))))))))

(assert (=> d!1746533 (= (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (h!69121 s!2326)) e!3409109)))

(declare-fun b!5512685 () Bool)

(assert (=> b!5512685 (= e!3409109 e!3409108)))

(declare-fun c!963511 () Bool)

(assert (=> b!5512685 (= c!963511 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401))))))))

(assert (= (and d!1746533 res!2348967) b!5512683))

(assert (= (and d!1746533 c!963510) b!5512684))

(assert (= (and d!1746533 (not c!963510)) b!5512685))

(assert (= (and b!5512685 c!963511) b!5512682))

(assert (= (and b!5512685 (not c!963511)) b!5512681))

(assert (= (or b!5512684 b!5512682) bm!407692))

(declare-fun m!6517196 () Bool)

(assert (=> bm!407692 m!6517196))

(declare-fun m!6517198 () Bool)

(assert (=> b!5512683 m!6517198))

(declare-fun m!6517200 () Bool)

(assert (=> b!5512684 m!6517200))

(assert (=> b!5512226 d!1746533))

(assert (=> b!5511912 d!1746381))

(declare-fun b!5512686 () Bool)

(declare-fun e!3409112 () Bool)

(declare-fun call!407698 () Bool)

(assert (=> b!5512686 (= e!3409112 call!407698)))

(declare-fun b!5512687 () Bool)

(declare-fun e!3409115 () Bool)

(declare-fun e!3409116 () Bool)

(assert (=> b!5512687 (= e!3409115 e!3409116)))

(declare-fun res!2348972 () Bool)

(assert (=> b!5512687 (= res!2348972 (not (nullable!5533 (reg!15828 lt!2245456))))))

(assert (=> b!5512687 (=> (not res!2348972) (not e!3409116))))

(declare-fun b!5512688 () Bool)

(declare-fun res!2348971 () Bool)

(declare-fun e!3409111 () Bool)

(assert (=> b!5512688 (=> res!2348971 e!3409111)))

(assert (=> b!5512688 (= res!2348971 (not ((_ is Concat!24344) lt!2245456)))))

(declare-fun e!3409110 () Bool)

(assert (=> b!5512688 (= e!3409110 e!3409111)))

(declare-fun b!5512689 () Bool)

(declare-fun call!407699 () Bool)

(assert (=> b!5512689 (= e!3409116 call!407699)))

(declare-fun b!5512690 () Bool)

(declare-fun res!2348968 () Bool)

(declare-fun e!3409114 () Bool)

(assert (=> b!5512690 (=> (not res!2348968) (not e!3409114))))

(declare-fun call!407700 () Bool)

(assert (=> b!5512690 (= res!2348968 call!407700)))

(assert (=> b!5512690 (= e!3409110 e!3409114)))

(declare-fun b!5512691 () Bool)

(assert (=> b!5512691 (= e!3409111 e!3409112)))

(declare-fun res!2348970 () Bool)

(assert (=> b!5512691 (=> (not res!2348970) (not e!3409112))))

(assert (=> b!5512691 (= res!2348970 call!407700)))

(declare-fun bm!407694 () Bool)

(assert (=> bm!407694 (= call!407698 call!407699)))

(declare-fun bm!407693 () Bool)

(declare-fun c!963513 () Bool)

(assert (=> bm!407693 (= call!407700 (validRegex!7235 (ite c!963513 (regOne!31511 lt!2245456) (regOne!31510 lt!2245456))))))

(declare-fun d!1746539 () Bool)

(declare-fun res!2348969 () Bool)

(declare-fun e!3409113 () Bool)

(assert (=> d!1746539 (=> res!2348969 e!3409113)))

(assert (=> d!1746539 (= res!2348969 ((_ is ElementMatch!15499) lt!2245456))))

(assert (=> d!1746539 (= (validRegex!7235 lt!2245456) e!3409113)))

(declare-fun b!5512692 () Bool)

(assert (=> b!5512692 (= e!3409115 e!3409110)))

(assert (=> b!5512692 (= c!963513 ((_ is Union!15499) lt!2245456))))

(declare-fun c!963512 () Bool)

(declare-fun bm!407695 () Bool)

(assert (=> bm!407695 (= call!407699 (validRegex!7235 (ite c!963512 (reg!15828 lt!2245456) (ite c!963513 (regTwo!31511 lt!2245456) (regTwo!31510 lt!2245456)))))))

(declare-fun b!5512693 () Bool)

(assert (=> b!5512693 (= e!3409113 e!3409115)))

(assert (=> b!5512693 (= c!963512 ((_ is Star!15499) lt!2245456))))

(declare-fun b!5512694 () Bool)

(assert (=> b!5512694 (= e!3409114 call!407698)))

(assert (= (and d!1746539 (not res!2348969)) b!5512693))

(assert (= (and b!5512693 c!963512) b!5512687))

(assert (= (and b!5512693 (not c!963512)) b!5512692))

(assert (= (and b!5512687 res!2348972) b!5512689))

(assert (= (and b!5512692 c!963513) b!5512690))

(assert (= (and b!5512692 (not c!963513)) b!5512688))

(assert (= (and b!5512690 res!2348968) b!5512694))

(assert (= (and b!5512688 (not res!2348971)) b!5512691))

(assert (= (and b!5512691 res!2348970) b!5512686))

(assert (= (or b!5512694 b!5512686) bm!407694))

(assert (= (or b!5512690 b!5512691) bm!407693))

(assert (= (or b!5512689 bm!407694) bm!407695))

(declare-fun m!6517202 () Bool)

(assert (=> b!5512687 m!6517202))

(declare-fun m!6517204 () Bool)

(assert (=> bm!407693 m!6517204))

(declare-fun m!6517206 () Bool)

(assert (=> bm!407695 m!6517206))

(assert (=> d!1746329 d!1746539))

(assert (=> d!1746329 d!1746337))

(assert (=> d!1746329 d!1746359))

(assert (=> b!5511838 d!1746411))

(declare-fun d!1746541 () Bool)

(assert (=> d!1746541 (= (isUnion!516 lt!2245469) ((_ is Union!15499) lt!2245469))))

(assert (=> b!5512185 d!1746541))

(declare-fun d!1746543 () Bool)

(assert (=> d!1746543 (= (isEmpty!34458 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326)) (not ((_ is Some!15507) (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326))))))

(assert (=> d!1746409 d!1746543))

(declare-fun d!1746545 () Bool)

(assert (=> d!1746545 (= (isEmpty!34457 (t!376042 s!2326)) ((_ is Nil!62673) (t!376042 s!2326)))))

(assert (=> d!1746369 d!1746545))

(declare-fun b!5512695 () Bool)

(declare-fun c!963514 () Bool)

(declare-fun e!3409118 () Bool)

(assert (=> b!5512695 (= c!963514 e!3409118)))

(declare-fun res!2348973 () Bool)

(assert (=> b!5512695 (=> (not res!2348973) (not e!3409118))))

(assert (=> b!5512695 (= res!2348973 ((_ is Concat!24344) (h!69120 (exprs!5383 lt!2245392))))))

(declare-fun e!3409121 () (InoxSet Context!9766))

(declare-fun e!3409119 () (InoxSet Context!9766))

(assert (=> b!5512695 (= e!3409121 e!3409119)))

(declare-fun bm!407696 () Bool)

(declare-fun call!407701 () (InoxSet Context!9766))

(declare-fun call!407704 () (InoxSet Context!9766))

(assert (=> bm!407696 (= call!407701 call!407704)))

(declare-fun b!5512696 () Bool)

(declare-fun e!3409120 () (InoxSet Context!9766))

(assert (=> b!5512696 (= e!3409120 call!407701)))

(declare-fun b!5512697 () Bool)

(assert (=> b!5512697 (= e!3409118 (nullable!5533 (regOne!31510 (h!69120 (exprs!5383 lt!2245392)))))))

(declare-fun call!407706 () List!62796)

(declare-fun bm!407697 () Bool)

(declare-fun c!963515 () Bool)

(assert (=> bm!407697 (= call!407706 ($colon$colon!1582 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392)))) (ite (or c!963514 c!963515) (regTwo!31510 (h!69120 (exprs!5383 lt!2245392))) (h!69120 (exprs!5383 lt!2245392)))))))

(declare-fun b!5512698 () Bool)

(assert (=> b!5512698 (= e!3409120 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512699 () Bool)

(declare-fun e!3409117 () (InoxSet Context!9766))

(assert (=> b!5512699 (= e!3409117 e!3409121)))

(declare-fun c!963517 () Bool)

(assert (=> b!5512699 (= c!963517 ((_ is Union!15499) (h!69120 (exprs!5383 lt!2245392))))))

(declare-fun b!5512700 () Bool)

(declare-fun e!3409122 () (InoxSet Context!9766))

(assert (=> b!5512700 (= e!3409122 call!407701)))

(declare-fun b!5512701 () Bool)

(declare-fun call!407705 () (InoxSet Context!9766))

(declare-fun call!407702 () (InoxSet Context!9766))

(assert (=> b!5512701 (= e!3409121 ((_ map or) call!407705 call!407702))))

(declare-fun bm!407698 () Bool)

(assert (=> bm!407698 (= call!407705 (derivationStepZipperDown!841 (ite c!963517 (regOne!31511 (h!69120 (exprs!5383 lt!2245392))) (regOne!31510 (h!69120 (exprs!5383 lt!2245392)))) (ite c!963517 (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (Context!9767 call!407706)) (h!69121 s!2326)))))

(declare-fun b!5512703 () Bool)

(assert (=> b!5512703 (= e!3409119 ((_ map or) call!407705 call!407704))))

(declare-fun b!5512704 () Bool)

(declare-fun c!963518 () Bool)

(assert (=> b!5512704 (= c!963518 ((_ is Star!15499) (h!69120 (exprs!5383 lt!2245392))))))

(assert (=> b!5512704 (= e!3409122 e!3409120)))

(declare-fun bm!407699 () Bool)

(declare-fun call!407703 () List!62796)

(assert (=> bm!407699 (= call!407702 (derivationStepZipperDown!841 (ite c!963517 (regTwo!31511 (h!69120 (exprs!5383 lt!2245392))) (ite c!963514 (regTwo!31510 (h!69120 (exprs!5383 lt!2245392))) (ite c!963515 (regOne!31510 (h!69120 (exprs!5383 lt!2245392))) (reg!15828 (h!69120 (exprs!5383 lt!2245392)))))) (ite (or c!963517 c!963514) (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (Context!9767 call!407703)) (h!69121 s!2326)))))

(declare-fun bm!407700 () Bool)

(assert (=> bm!407700 (= call!407703 call!407706)))

(declare-fun b!5512702 () Bool)

(assert (=> b!5512702 (= e!3409117 (store ((as const (Array Context!9766 Bool)) false) (Context!9767 (t!376041 (exprs!5383 lt!2245392))) true))))

(declare-fun d!1746547 () Bool)

(declare-fun c!963516 () Bool)

(assert (=> d!1746547 (= c!963516 (and ((_ is ElementMatch!15499) (h!69120 (exprs!5383 lt!2245392))) (= (c!963233 (h!69120 (exprs!5383 lt!2245392))) (h!69121 s!2326))))))

(assert (=> d!1746547 (= (derivationStepZipperDown!841 (h!69120 (exprs!5383 lt!2245392)) (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (h!69121 s!2326)) e!3409117)))

(declare-fun bm!407701 () Bool)

(assert (=> bm!407701 (= call!407704 call!407702)))

(declare-fun b!5512705 () Bool)

(assert (=> b!5512705 (= e!3409119 e!3409122)))

(assert (=> b!5512705 (= c!963515 ((_ is Concat!24344) (h!69120 (exprs!5383 lt!2245392))))))

(assert (= (and d!1746547 c!963516) b!5512702))

(assert (= (and d!1746547 (not c!963516)) b!5512699))

(assert (= (and b!5512699 c!963517) b!5512701))

(assert (= (and b!5512699 (not c!963517)) b!5512695))

(assert (= (and b!5512695 res!2348973) b!5512697))

(assert (= (and b!5512695 c!963514) b!5512703))

(assert (= (and b!5512695 (not c!963514)) b!5512705))

(assert (= (and b!5512705 c!963515) b!5512700))

(assert (= (and b!5512705 (not c!963515)) b!5512704))

(assert (= (and b!5512704 c!963518) b!5512696))

(assert (= (and b!5512704 (not c!963518)) b!5512698))

(assert (= (or b!5512700 b!5512696) bm!407700))

(assert (= (or b!5512700 b!5512696) bm!407696))

(assert (= (or b!5512703 bm!407700) bm!407697))

(assert (= (or b!5512703 bm!407696) bm!407701))

(assert (= (or b!5512701 bm!407701) bm!407699))

(assert (= (or b!5512701 b!5512703) bm!407698))

(declare-fun m!6517208 () Bool)

(assert (=> b!5512702 m!6517208))

(declare-fun m!6517210 () Bool)

(assert (=> bm!407697 m!6517210))

(declare-fun m!6517212 () Bool)

(assert (=> b!5512697 m!6517212))

(declare-fun m!6517214 () Bool)

(assert (=> bm!407699 m!6517214))

(declare-fun m!6517216 () Bool)

(assert (=> bm!407698 m!6517216))

(assert (=> bm!407614 d!1746547))

(declare-fun d!1746549 () Bool)

(declare-fun c!963523 () Bool)

(assert (=> d!1746549 (= c!963523 ((_ is Nil!62674) lt!2245480))))

(declare-fun e!3409127 () (InoxSet Context!9766))

(assert (=> d!1746549 (= (content!11261 lt!2245480) e!3409127)))

(declare-fun b!5512714 () Bool)

(assert (=> b!5512714 (= e!3409127 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512715 () Bool)

(assert (=> b!5512715 (= e!3409127 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) (h!69122 lt!2245480) true) (content!11261 (t!376043 lt!2245480))))))

(assert (= (and d!1746549 c!963523) b!5512714))

(assert (= (and d!1746549 (not c!963523)) b!5512715))

(declare-fun m!6517218 () Bool)

(assert (=> b!5512715 m!6517218))

(declare-fun m!6517220 () Bool)

(assert (=> b!5512715 m!6517220))

(assert (=> b!5512257 d!1746549))

(assert (=> d!1746331 d!1746545))

(declare-fun b!5512720 () Bool)

(declare-fun e!3409131 () (InoxSet Context!9766))

(assert (=> b!5512720 (= e!3409131 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407702 () Bool)

(declare-fun call!407707 () (InoxSet Context!9766))

(assert (=> bm!407702 (= call!407707 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))) (h!69121 s!2326)))))

(declare-fun b!5512721 () Bool)

(assert (=> b!5512721 (= e!3409131 call!407707)))

(declare-fun b!5512722 () Bool)

(declare-fun e!3409130 () Bool)

(assert (=> b!5512722 (= e!3409130 (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))))))

(declare-fun e!3409132 () (InoxSet Context!9766))

(declare-fun b!5512723 () Bool)

(assert (=> b!5512723 (= e!3409132 ((_ map or) call!407707 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672)))))))) (h!69121 s!2326))))))

(declare-fun d!1746551 () Bool)

(declare-fun c!963524 () Bool)

(assert (=> d!1746551 (= c!963524 e!3409130)))

(declare-fun res!2348978 () Bool)

(assert (=> d!1746551 (=> (not res!2348978) (not e!3409130))))

(assert (=> d!1746551 (= res!2348978 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))))

(assert (=> d!1746551 (= (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (h!69121 s!2326)) e!3409132)))

(declare-fun b!5512724 () Bool)

(assert (=> b!5512724 (= e!3409132 e!3409131)))

(declare-fun c!963525 () Bool)

(assert (=> b!5512724 (= c!963525 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))))

(assert (= (and d!1746551 res!2348978) b!5512722))

(assert (= (and d!1746551 c!963524) b!5512723))

(assert (= (and d!1746551 (not c!963524)) b!5512724))

(assert (= (and b!5512724 c!963525) b!5512721))

(assert (= (and b!5512724 (not c!963525)) b!5512720))

(assert (= (or b!5512723 b!5512721) bm!407702))

(declare-fun m!6517222 () Bool)

(assert (=> bm!407702 m!6517222))

(declare-fun m!6517224 () Bool)

(assert (=> b!5512722 m!6517224))

(declare-fun m!6517226 () Bool)

(assert (=> b!5512723 m!6517226))

(assert (=> b!5511988 d!1746551))

(declare-fun d!1746553 () Bool)

(declare-fun c!963526 () Bool)

(assert (=> d!1746553 (= c!963526 (isEmpty!34457 (tail!10905 (t!376042 s!2326))))))

(declare-fun e!3409133 () Bool)

(assert (=> d!1746553 (= (matchZipper!1657 (derivationStepZipper!1604 lt!2245412 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))) e!3409133)))

(declare-fun b!5512725 () Bool)

(assert (=> b!5512725 (= e!3409133 (nullableZipper!1529 (derivationStepZipper!1604 lt!2245412 (head!11810 (t!376042 s!2326)))))))

(declare-fun b!5512726 () Bool)

(assert (=> b!5512726 (= e!3409133 (matchZipper!1657 (derivationStepZipper!1604 (derivationStepZipper!1604 lt!2245412 (head!11810 (t!376042 s!2326))) (head!11810 (tail!10905 (t!376042 s!2326)))) (tail!10905 (tail!10905 (t!376042 s!2326)))))))

(assert (= (and d!1746553 c!963526) b!5512725))

(assert (= (and d!1746553 (not c!963526)) b!5512726))

(assert (=> d!1746553 m!6516794))

(declare-fun m!6517228 () Bool)

(assert (=> d!1746553 m!6517228))

(assert (=> b!5512725 m!6516880))

(declare-fun m!6517230 () Bool)

(assert (=> b!5512725 m!6517230))

(assert (=> b!5512726 m!6516794))

(declare-fun m!6517232 () Bool)

(assert (=> b!5512726 m!6517232))

(assert (=> b!5512726 m!6516880))

(assert (=> b!5512726 m!6517232))

(declare-fun m!6517234 () Bool)

(assert (=> b!5512726 m!6517234))

(assert (=> b!5512726 m!6516794))

(declare-fun m!6517236 () Bool)

(assert (=> b!5512726 m!6517236))

(assert (=> b!5512726 m!6517234))

(assert (=> b!5512726 m!6517236))

(declare-fun m!6517238 () Bool)

(assert (=> b!5512726 m!6517238))

(assert (=> b!5512215 d!1746553))

(declare-fun bs!1270659 () Bool)

(declare-fun d!1746555 () Bool)

(assert (= bs!1270659 (and d!1746555 b!5511703)))

(declare-fun lambda!295393 () Int)

(assert (=> bs!1270659 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295393 lambda!295311))))

(declare-fun bs!1270660 () Bool)

(assert (= bs!1270660 (and d!1746555 d!1746313)))

(assert (=> bs!1270660 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295393 lambda!295341))))

(assert (=> d!1746555 true))

(assert (=> d!1746555 (= (derivationStepZipper!1604 lt!2245412 (head!11810 (t!376042 s!2326))) (flatMap!1112 lt!2245412 lambda!295393))))

(declare-fun bs!1270661 () Bool)

(assert (= bs!1270661 d!1746555))

(declare-fun m!6517240 () Bool)

(assert (=> bs!1270661 m!6517240))

(assert (=> b!5512215 d!1746555))

(declare-fun d!1746557 () Bool)

(assert (=> d!1746557 (= (head!11810 (t!376042 s!2326)) (h!69121 (t!376042 s!2326)))))

(assert (=> b!5512215 d!1746557))

(declare-fun d!1746559 () Bool)

(assert (=> d!1746559 (= (tail!10905 (t!376042 s!2326)) (t!376042 (t!376042 s!2326)))))

(assert (=> b!5512215 d!1746559))

(declare-fun b!5512727 () Bool)

(declare-fun res!2348982 () Bool)

(declare-fun e!3409139 () Bool)

(assert (=> b!5512727 (=> res!2348982 e!3409139)))

(declare-fun e!3409138 () Bool)

(assert (=> b!5512727 (= res!2348982 e!3409138)))

(declare-fun res!2348986 () Bool)

(assert (=> b!5512727 (=> (not res!2348986) (not e!3409138))))

(declare-fun lt!2245514 () Bool)

(assert (=> b!5512727 (= res!2348986 lt!2245514)))

(declare-fun b!5512728 () Bool)

(assert (=> b!5512728 (= e!3409138 (= (head!11810 s!2326) (c!963233 (regTwo!31510 r!7292))))))

(declare-fun b!5512729 () Bool)

(declare-fun res!2348981 () Bool)

(assert (=> b!5512729 (=> (not res!2348981) (not e!3409138))))

(assert (=> b!5512729 (= res!2348981 (isEmpty!34457 (tail!10905 s!2326)))))

(declare-fun b!5512730 () Bool)

(declare-fun e!3409140 () Bool)

(assert (=> b!5512730 (= e!3409139 e!3409140)))

(declare-fun res!2348979 () Bool)

(assert (=> b!5512730 (=> (not res!2348979) (not e!3409140))))

(assert (=> b!5512730 (= res!2348979 (not lt!2245514))))

(declare-fun b!5512731 () Bool)

(declare-fun e!3409134 () Bool)

(assert (=> b!5512731 (= e!3409134 (matchR!7684 (derivativeStep!4368 (regTwo!31510 r!7292) (head!11810 s!2326)) (tail!10905 s!2326)))))

(declare-fun b!5512732 () Bool)

(declare-fun e!3409137 () Bool)

(declare-fun e!3409135 () Bool)

(assert (=> b!5512732 (= e!3409137 e!3409135)))

(declare-fun c!963529 () Bool)

(assert (=> b!5512732 (= c!963529 ((_ is EmptyLang!15499) (regTwo!31510 r!7292)))))

(declare-fun d!1746561 () Bool)

(assert (=> d!1746561 e!3409137))

(declare-fun c!963528 () Bool)

(assert (=> d!1746561 (= c!963528 ((_ is EmptyExpr!15499) (regTwo!31510 r!7292)))))

(assert (=> d!1746561 (= lt!2245514 e!3409134)))

(declare-fun c!963527 () Bool)

(assert (=> d!1746561 (= c!963527 (isEmpty!34457 s!2326))))

(assert (=> d!1746561 (validRegex!7235 (regTwo!31510 r!7292))))

(assert (=> d!1746561 (= (matchR!7684 (regTwo!31510 r!7292) s!2326) lt!2245514)))

(declare-fun b!5512733 () Bool)

(assert (=> b!5512733 (= e!3409135 (not lt!2245514))))

(declare-fun bm!407703 () Bool)

(declare-fun call!407708 () Bool)

(assert (=> bm!407703 (= call!407708 (isEmpty!34457 s!2326))))

(declare-fun b!5512734 () Bool)

(declare-fun e!3409136 () Bool)

(assert (=> b!5512734 (= e!3409136 (not (= (head!11810 s!2326) (c!963233 (regTwo!31510 r!7292)))))))

(declare-fun b!5512735 () Bool)

(declare-fun res!2348983 () Bool)

(assert (=> b!5512735 (=> res!2348983 e!3409136)))

(assert (=> b!5512735 (= res!2348983 (not (isEmpty!34457 (tail!10905 s!2326))))))

(declare-fun b!5512736 () Bool)

(assert (=> b!5512736 (= e!3409140 e!3409136)))

(declare-fun res!2348985 () Bool)

(assert (=> b!5512736 (=> res!2348985 e!3409136)))

(assert (=> b!5512736 (= res!2348985 call!407708)))

(declare-fun b!5512737 () Bool)

(assert (=> b!5512737 (= e!3409134 (nullable!5533 (regTwo!31510 r!7292)))))

(declare-fun b!5512738 () Bool)

(assert (=> b!5512738 (= e!3409137 (= lt!2245514 call!407708))))

(declare-fun b!5512739 () Bool)

(declare-fun res!2348984 () Bool)

(assert (=> b!5512739 (=> res!2348984 e!3409139)))

(assert (=> b!5512739 (= res!2348984 (not ((_ is ElementMatch!15499) (regTwo!31510 r!7292))))))

(assert (=> b!5512739 (= e!3409135 e!3409139)))

(declare-fun b!5512740 () Bool)

(declare-fun res!2348980 () Bool)

(assert (=> b!5512740 (=> (not res!2348980) (not e!3409138))))

(assert (=> b!5512740 (= res!2348980 (not call!407708))))

(assert (= (and d!1746561 c!963527) b!5512737))

(assert (= (and d!1746561 (not c!963527)) b!5512731))

(assert (= (and d!1746561 c!963528) b!5512738))

(assert (= (and d!1746561 (not c!963528)) b!5512732))

(assert (= (and b!5512732 c!963529) b!5512733))

(assert (= (and b!5512732 (not c!963529)) b!5512739))

(assert (= (and b!5512739 (not res!2348984)) b!5512727))

(assert (= (and b!5512727 res!2348986) b!5512740))

(assert (= (and b!5512740 res!2348980) b!5512729))

(assert (= (and b!5512729 res!2348981) b!5512728))

(assert (= (and b!5512727 (not res!2348982)) b!5512730))

(assert (= (and b!5512730 res!2348979) b!5512736))

(assert (= (and b!5512736 (not res!2348985)) b!5512735))

(assert (= (and b!5512735 (not res!2348983)) b!5512734))

(assert (= (or b!5512738 b!5512736 b!5512740) bm!407703))

(assert (=> b!5512731 m!6517002))

(assert (=> b!5512731 m!6517002))

(declare-fun m!6517242 () Bool)

(assert (=> b!5512731 m!6517242))

(assert (=> b!5512731 m!6517006))

(assert (=> b!5512731 m!6517242))

(assert (=> b!5512731 m!6517006))

(declare-fun m!6517244 () Bool)

(assert (=> b!5512731 m!6517244))

(assert (=> d!1746561 m!6516994))

(declare-fun m!6517246 () Bool)

(assert (=> d!1746561 m!6517246))

(assert (=> b!5512735 m!6517006))

(assert (=> b!5512735 m!6517006))

(assert (=> b!5512735 m!6517010))

(assert (=> b!5512734 m!6517002))

(assert (=> b!5512728 m!6517002))

(assert (=> b!5512729 m!6517006))

(assert (=> b!5512729 m!6517006))

(assert (=> b!5512729 m!6517010))

(declare-fun m!6517248 () Bool)

(assert (=> b!5512737 m!6517248))

(assert (=> bm!407703 m!6516994))

(assert (=> b!5512310 d!1746561))

(declare-fun d!1746563 () Bool)

(assert (=> d!1746563 (= (isConcat!598 lt!2245431) ((_ is Concat!24344) lt!2245431))))

(assert (=> b!5511846 d!1746563))

(assert (=> bs!1270598 d!1746379))

(declare-fun d!1746565 () Bool)

(assert (=> d!1746565 (= (nullable!5533 r!7292) (nullableFct!1661 r!7292))))

(declare-fun bs!1270662 () Bool)

(assert (= bs!1270662 d!1746565))

(declare-fun m!6517252 () Bool)

(assert (=> bs!1270662 m!6517252))

(assert (=> b!5512405 d!1746565))

(declare-fun d!1746567 () Bool)

(assert (=> d!1746567 (= (isDefined!12211 lt!2245489) (not (isEmpty!34458 lt!2245489)))))

(declare-fun bs!1270663 () Bool)

(assert (= bs!1270663 d!1746567))

(declare-fun m!6517258 () Bool)

(assert (=> bs!1270663 m!6517258))

(assert (=> b!5512305 d!1746567))

(declare-fun d!1746569 () Bool)

(assert (=> d!1746569 (= (isEmpty!34457 s!2326) ((_ is Nil!62673) s!2326))))

(assert (=> bm!407638 d!1746569))

(assert (=> d!1746417 d!1746415))

(assert (=> d!1746417 d!1746413))

(declare-fun d!1746571 () Bool)

(assert (=> d!1746571 (= (matchR!7684 r!7292 s!2326) (matchRSpec!2602 r!7292 s!2326))))

(assert (=> d!1746571 true))

(declare-fun _$88!3769 () Unit!155458)

(assert (=> d!1746571 (= (choose!41903 r!7292 s!2326) _$88!3769)))

(declare-fun bs!1270665 () Bool)

(assert (= bs!1270665 d!1746571))

(assert (=> bs!1270665 m!6516532))

(assert (=> bs!1270665 m!6516530))

(assert (=> d!1746417 d!1746571))

(assert (=> d!1746417 d!1746397))

(declare-fun d!1746581 () Bool)

(assert (=> d!1746581 (= (nullable!5533 (regOne!31510 (regOne!31510 r!7292))) (nullableFct!1661 (regOne!31510 (regOne!31510 r!7292))))))

(declare-fun bs!1270666 () Bool)

(assert (= bs!1270666 d!1746581))

(declare-fun m!6517274 () Bool)

(assert (=> bs!1270666 m!6517274))

(assert (=> b!5512246 d!1746581))

(declare-fun b!5512757 () Bool)

(declare-fun c!963535 () Bool)

(declare-fun e!3409152 () Bool)

(assert (=> b!5512757 (= c!963535 e!3409152)))

(declare-fun res!2348993 () Bool)

(assert (=> b!5512757 (=> (not res!2348993) (not e!3409152))))

(assert (=> b!5512757 (= res!2348993 ((_ is Concat!24344) (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun e!3409155 () (InoxSet Context!9766))

(declare-fun e!3409153 () (InoxSet Context!9766))

(assert (=> b!5512757 (= e!3409155 e!3409153)))

(declare-fun bm!407704 () Bool)

(declare-fun call!407709 () (InoxSet Context!9766))

(declare-fun call!407712 () (InoxSet Context!9766))

(assert (=> bm!407704 (= call!407709 call!407712)))

(declare-fun b!5512758 () Bool)

(declare-fun e!3409154 () (InoxSet Context!9766))

(assert (=> b!5512758 (= e!3409154 call!407709)))

(declare-fun b!5512759 () Bool)

(assert (=> b!5512759 (= e!3409152 (nullable!5533 (regOne!31510 (h!69120 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun call!407714 () List!62796)

(declare-fun c!963536 () Bool)

(declare-fun bm!407705 () Bool)

(assert (=> bm!407705 (= call!407714 ($colon$colon!1582 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343))))) (ite (or c!963535 c!963536) (regTwo!31510 (h!69120 (exprs!5383 (h!69122 zl!343)))) (h!69120 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5512760 () Bool)

(assert (=> b!5512760 (= e!3409154 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512761 () Bool)

(declare-fun e!3409151 () (InoxSet Context!9766))

(assert (=> b!5512761 (= e!3409151 e!3409155)))

(declare-fun c!963538 () Bool)

(assert (=> b!5512761 (= c!963538 ((_ is Union!15499) (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5512762 () Bool)

(declare-fun e!3409156 () (InoxSet Context!9766))

(assert (=> b!5512762 (= e!3409156 call!407709)))

(declare-fun b!5512763 () Bool)

(declare-fun call!407713 () (InoxSet Context!9766))

(declare-fun call!407710 () (InoxSet Context!9766))

(assert (=> b!5512763 (= e!3409155 ((_ map or) call!407713 call!407710))))

(declare-fun bm!407706 () Bool)

(assert (=> bm!407706 (= call!407713 (derivationStepZipperDown!841 (ite c!963538 (regOne!31511 (h!69120 (exprs!5383 (h!69122 zl!343)))) (regOne!31510 (h!69120 (exprs!5383 (h!69122 zl!343))))) (ite c!963538 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (Context!9767 call!407714)) (h!69121 s!2326)))))

(declare-fun b!5512765 () Bool)

(assert (=> b!5512765 (= e!3409153 ((_ map or) call!407713 call!407712))))

(declare-fun b!5512766 () Bool)

(declare-fun c!963539 () Bool)

(assert (=> b!5512766 (= c!963539 ((_ is Star!15499) (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> b!5512766 (= e!3409156 e!3409154)))

(declare-fun bm!407707 () Bool)

(declare-fun call!407711 () List!62796)

(assert (=> bm!407707 (= call!407710 (derivationStepZipperDown!841 (ite c!963538 (regTwo!31511 (h!69120 (exprs!5383 (h!69122 zl!343)))) (ite c!963535 (regTwo!31510 (h!69120 (exprs!5383 (h!69122 zl!343)))) (ite c!963536 (regOne!31510 (h!69120 (exprs!5383 (h!69122 zl!343)))) (reg!15828 (h!69120 (exprs!5383 (h!69122 zl!343))))))) (ite (or c!963538 c!963535) (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (Context!9767 call!407711)) (h!69121 s!2326)))))

(declare-fun bm!407708 () Bool)

(assert (=> bm!407708 (= call!407711 call!407714)))

(declare-fun b!5512764 () Bool)

(assert (=> b!5512764 (= e!3409151 (store ((as const (Array Context!9766 Bool)) false) (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) true))))

(declare-fun d!1746583 () Bool)

(declare-fun c!963537 () Bool)

(assert (=> d!1746583 (= c!963537 (and ((_ is ElementMatch!15499) (h!69120 (exprs!5383 (h!69122 zl!343)))) (= (c!963233 (h!69120 (exprs!5383 (h!69122 zl!343)))) (h!69121 s!2326))))))

(assert (=> d!1746583 (= (derivationStepZipperDown!841 (h!69120 (exprs!5383 (h!69122 zl!343))) (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (h!69121 s!2326)) e!3409151)))

(declare-fun bm!407709 () Bool)

(assert (=> bm!407709 (= call!407712 call!407710)))

(declare-fun b!5512767 () Bool)

(assert (=> b!5512767 (= e!3409153 e!3409156)))

(assert (=> b!5512767 (= c!963536 ((_ is Concat!24344) (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(assert (= (and d!1746583 c!963537) b!5512764))

(assert (= (and d!1746583 (not c!963537)) b!5512761))

(assert (= (and b!5512761 c!963538) b!5512763))

(assert (= (and b!5512761 (not c!963538)) b!5512757))

(assert (= (and b!5512757 res!2348993) b!5512759))

(assert (= (and b!5512757 c!963535) b!5512765))

(assert (= (and b!5512757 (not c!963535)) b!5512767))

(assert (= (and b!5512767 c!963536) b!5512762))

(assert (= (and b!5512767 (not c!963536)) b!5512766))

(assert (= (and b!5512766 c!963539) b!5512758))

(assert (= (and b!5512766 (not c!963539)) b!5512760))

(assert (= (or b!5512762 b!5512758) bm!407708))

(assert (= (or b!5512762 b!5512758) bm!407704))

(assert (= (or b!5512765 bm!407708) bm!407705))

(assert (= (or b!5512765 bm!407704) bm!407709))

(assert (= (or b!5512763 bm!407709) bm!407707))

(assert (= (or b!5512763 b!5512765) bm!407706))

(declare-fun m!6517276 () Bool)

(assert (=> b!5512764 m!6517276))

(declare-fun m!6517278 () Bool)

(assert (=> bm!407705 m!6517278))

(declare-fun m!6517280 () Bool)

(assert (=> b!5512759 m!6517280))

(declare-fun m!6517282 () Bool)

(assert (=> bm!407707 m!6517282))

(declare-fun m!6517284 () Bool)

(assert (=> bm!407706 m!6517284))

(assert (=> bm!407589 d!1746583))

(declare-fun d!1746585 () Bool)

(assert (=> d!1746585 (= (nullable!5533 (h!69120 (exprs!5383 lt!2245401))) (nullableFct!1661 (h!69120 (exprs!5383 lt!2245401))))))

(declare-fun bs!1270674 () Bool)

(assert (= bs!1270674 d!1746585))

(declare-fun m!6517286 () Bool)

(assert (=> bs!1270674 m!6517286))

(assert (=> b!5512225 d!1746585))

(assert (=> d!1746377 d!1746385))

(declare-fun d!1746587 () Bool)

(assert (=> d!1746587 (= (flatMap!1112 lt!2245405 lambda!295311) (dynLambda!24486 lambda!295311 lt!2245392))))

(assert (=> d!1746587 true))

(declare-fun _$13!2039 () Unit!155458)

(assert (=> d!1746587 (= (choose!41895 lt!2245405 lt!2245392 lambda!295311) _$13!2039)))

(declare-fun b_lambda!208997 () Bool)

(assert (=> (not b_lambda!208997) (not d!1746587)))

(declare-fun bs!1270675 () Bool)

(assert (= bs!1270675 d!1746587))

(assert (=> bs!1270675 m!6516494))

(assert (=> bs!1270675 m!6516900))

(assert (=> d!1746377 d!1746587))

(declare-fun bs!1270676 () Bool)

(declare-fun d!1746589 () Bool)

(assert (= bs!1270676 (and d!1746589 d!1746367)))

(declare-fun lambda!295395 () Int)

(assert (=> bs!1270676 (= lambda!295395 lambda!295358)))

(declare-fun bs!1270677 () Bool)

(assert (= bs!1270677 (and d!1746589 d!1746337)))

(assert (=> bs!1270677 (= lambda!295395 lambda!295354)))

(declare-fun bs!1270678 () Bool)

(assert (= bs!1270678 (and d!1746589 d!1746359)))

(assert (=> bs!1270678 (= lambda!295395 lambda!295357)))

(declare-fun bs!1270679 () Bool)

(assert (= bs!1270679 (and d!1746589 d!1746267)))

(assert (=> bs!1270679 (= lambda!295395 lambda!295323)))

(declare-fun bs!1270680 () Bool)

(assert (= bs!1270680 (and d!1746589 d!1746281)))

(assert (=> bs!1270680 (= lambda!295395 lambda!295326)))

(declare-fun bs!1270681 () Bool)

(assert (= bs!1270681 (and d!1746589 d!1746457)))

(assert (=> bs!1270681 (= lambda!295395 lambda!295377)))

(declare-fun b!5512768 () Bool)

(declare-fun e!3409158 () Bool)

(assert (=> b!5512768 (= e!3409158 (isEmpty!34453 (t!376041 (t!376041 (unfocusZipperList!927 zl!343)))))))

(declare-fun b!5512769 () Bool)

(declare-fun e!3409160 () Regex!15499)

(assert (=> b!5512769 (= e!3409160 EmptyLang!15499)))

(declare-fun b!5512770 () Bool)

(declare-fun e!3409162 () Bool)

(declare-fun e!3409157 () Bool)

(assert (=> b!5512770 (= e!3409162 e!3409157)))

(declare-fun c!963542 () Bool)

(assert (=> b!5512770 (= c!963542 (isEmpty!34453 (tail!10904 (t!376041 (unfocusZipperList!927 zl!343)))))))

(declare-fun e!3409161 () Bool)

(assert (=> d!1746589 e!3409161))

(declare-fun res!2348995 () Bool)

(assert (=> d!1746589 (=> (not res!2348995) (not e!3409161))))

(declare-fun lt!2245517 () Regex!15499)

(assert (=> d!1746589 (= res!2348995 (validRegex!7235 lt!2245517))))

(declare-fun e!3409159 () Regex!15499)

(assert (=> d!1746589 (= lt!2245517 e!3409159)))

(declare-fun c!963543 () Bool)

(assert (=> d!1746589 (= c!963543 e!3409158)))

(declare-fun res!2348994 () Bool)

(assert (=> d!1746589 (=> (not res!2348994) (not e!3409158))))

(assert (=> d!1746589 (= res!2348994 ((_ is Cons!62672) (t!376041 (unfocusZipperList!927 zl!343))))))

(assert (=> d!1746589 (forall!14677 (t!376041 (unfocusZipperList!927 zl!343)) lambda!295395)))

(assert (=> d!1746589 (= (generalisedUnion!1362 (t!376041 (unfocusZipperList!927 zl!343))) lt!2245517)))

(declare-fun b!5512771 () Bool)

(assert (=> b!5512771 (= e!3409159 (h!69120 (t!376041 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512772 () Bool)

(assert (=> b!5512772 (= e!3409159 e!3409160)))

(declare-fun c!963541 () Bool)

(assert (=> b!5512772 (= c!963541 ((_ is Cons!62672) (t!376041 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512773 () Bool)

(assert (=> b!5512773 (= e!3409161 e!3409162)))

(declare-fun c!963540 () Bool)

(assert (=> b!5512773 (= c!963540 (isEmpty!34453 (t!376041 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512774 () Bool)

(assert (=> b!5512774 (= e!3409160 (Union!15499 (h!69120 (t!376041 (unfocusZipperList!927 zl!343))) (generalisedUnion!1362 (t!376041 (t!376041 (unfocusZipperList!927 zl!343))))))))

(declare-fun b!5512775 () Bool)

(assert (=> b!5512775 (= e!3409157 (isUnion!516 lt!2245517))))

(declare-fun b!5512776 () Bool)

(assert (=> b!5512776 (= e!3409157 (= lt!2245517 (head!11809 (t!376041 (unfocusZipperList!927 zl!343)))))))

(declare-fun b!5512777 () Bool)

(assert (=> b!5512777 (= e!3409162 (isEmptyLang!1086 lt!2245517))))

(assert (= (and d!1746589 res!2348994) b!5512768))

(assert (= (and d!1746589 c!963543) b!5512771))

(assert (= (and d!1746589 (not c!963543)) b!5512772))

(assert (= (and b!5512772 c!963541) b!5512774))

(assert (= (and b!5512772 (not c!963541)) b!5512769))

(assert (= (and d!1746589 res!2348995) b!5512773))

(assert (= (and b!5512773 c!963540) b!5512777))

(assert (= (and b!5512773 (not c!963540)) b!5512770))

(assert (= (and b!5512770 c!963542) b!5512776))

(assert (= (and b!5512770 (not c!963542)) b!5512775))

(declare-fun m!6517306 () Bool)

(assert (=> b!5512770 m!6517306))

(assert (=> b!5512770 m!6517306))

(declare-fun m!6517308 () Bool)

(assert (=> b!5512770 m!6517308))

(declare-fun m!6517310 () Bool)

(assert (=> d!1746589 m!6517310))

(declare-fun m!6517312 () Bool)

(assert (=> d!1746589 m!6517312))

(assert (=> b!5512773 m!6516860))

(declare-fun m!6517314 () Bool)

(assert (=> b!5512768 m!6517314))

(declare-fun m!6517316 () Bool)

(assert (=> b!5512774 m!6517316))

(declare-fun m!6517318 () Bool)

(assert (=> b!5512777 m!6517318))

(declare-fun m!6517320 () Bool)

(assert (=> b!5512776 m!6517320))

(declare-fun m!6517322 () Bool)

(assert (=> b!5512775 m!6517322))

(assert (=> b!5512184 d!1746589))

(declare-fun bs!1270682 () Bool)

(declare-fun d!1746593 () Bool)

(assert (= bs!1270682 (and d!1746593 d!1746367)))

(declare-fun lambda!295396 () Int)

(assert (=> bs!1270682 (= lambda!295396 lambda!295358)))

(declare-fun bs!1270683 () Bool)

(assert (= bs!1270683 (and d!1746593 d!1746337)))

(assert (=> bs!1270683 (= lambda!295396 lambda!295354)))

(declare-fun bs!1270684 () Bool)

(assert (= bs!1270684 (and d!1746593 d!1746359)))

(assert (=> bs!1270684 (= lambda!295396 lambda!295357)))

(declare-fun bs!1270685 () Bool)

(assert (= bs!1270685 (and d!1746593 d!1746589)))

(assert (=> bs!1270685 (= lambda!295396 lambda!295395)))

(declare-fun bs!1270686 () Bool)

(assert (= bs!1270686 (and d!1746593 d!1746267)))

(assert (=> bs!1270686 (= lambda!295396 lambda!295323)))

(declare-fun bs!1270687 () Bool)

(assert (= bs!1270687 (and d!1746593 d!1746281)))

(assert (=> bs!1270687 (= lambda!295396 lambda!295326)))

(declare-fun bs!1270688 () Bool)

(assert (= bs!1270688 (and d!1746593 d!1746457)))

(assert (=> bs!1270688 (= lambda!295396 lambda!295377)))

(declare-fun b!5512787 () Bool)

(declare-fun e!3409174 () Bool)

(declare-fun e!3409175 () Bool)

(assert (=> b!5512787 (= e!3409174 e!3409175)))

(declare-fun c!963548 () Bool)

(assert (=> b!5512787 (= c!963548 (isEmpty!34453 (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5512788 () Bool)

(declare-fun e!3409172 () Bool)

(assert (=> b!5512788 (= e!3409172 (isEmpty!34453 (t!376041 (t!376041 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5512789 () Bool)

(declare-fun lt!2245518 () Regex!15499)

(assert (=> b!5512789 (= e!3409175 (isEmptyExpr!1075 lt!2245518))))

(declare-fun b!5512790 () Bool)

(declare-fun e!3409170 () Regex!15499)

(assert (=> b!5512790 (= e!3409170 (h!69120 (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> d!1746593 e!3409174))

(declare-fun res!2349001 () Bool)

(assert (=> d!1746593 (=> (not res!2349001) (not e!3409174))))

(assert (=> d!1746593 (= res!2349001 (validRegex!7235 lt!2245518))))

(assert (=> d!1746593 (= lt!2245518 e!3409170)))

(declare-fun c!963549 () Bool)

(assert (=> d!1746593 (= c!963549 e!3409172)))

(declare-fun res!2349002 () Bool)

(assert (=> d!1746593 (=> (not res!2349002) (not e!3409172))))

(assert (=> d!1746593 (= res!2349002 ((_ is Cons!62672) (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> d!1746593 (forall!14677 (t!376041 (exprs!5383 (h!69122 zl!343))) lambda!295396)))

(assert (=> d!1746593 (= (generalisedConcat!1114 (t!376041 (exprs!5383 (h!69122 zl!343)))) lt!2245518)))

(declare-fun b!5512791 () Bool)

(declare-fun e!3409171 () Regex!15499)

(assert (=> b!5512791 (= e!3409171 (Concat!24344 (h!69120 (t!376041 (exprs!5383 (h!69122 zl!343)))) (generalisedConcat!1114 (t!376041 (t!376041 (exprs!5383 (h!69122 zl!343)))))))))

(declare-fun b!5512792 () Bool)

(assert (=> b!5512792 (= e!3409170 e!3409171)))

(declare-fun c!963546 () Bool)

(assert (=> b!5512792 (= c!963546 ((_ is Cons!62672) (t!376041 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5512793 () Bool)

(declare-fun e!3409173 () Bool)

(assert (=> b!5512793 (= e!3409175 e!3409173)))

(declare-fun c!963547 () Bool)

(assert (=> b!5512793 (= c!963547 (isEmpty!34453 (tail!10904 (t!376041 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5512794 () Bool)

(assert (=> b!5512794 (= e!3409171 EmptyExpr!15499)))

(declare-fun b!5512795 () Bool)

(assert (=> b!5512795 (= e!3409173 (= lt!2245518 (head!11809 (t!376041 (exprs!5383 (h!69122 zl!343))))))))

(declare-fun b!5512796 () Bool)

(assert (=> b!5512796 (= e!3409173 (isConcat!598 lt!2245518))))

(assert (= (and d!1746593 res!2349002) b!5512788))

(assert (= (and d!1746593 c!963549) b!5512790))

(assert (= (and d!1746593 (not c!963549)) b!5512792))

(assert (= (and b!5512792 c!963546) b!5512791))

(assert (= (and b!5512792 (not c!963546)) b!5512794))

(assert (= (and d!1746593 res!2349001) b!5512787))

(assert (= (and b!5512787 c!963548) b!5512789))

(assert (= (and b!5512787 (not c!963548)) b!5512793))

(assert (= (and b!5512793 c!963547) b!5512795))

(assert (= (and b!5512793 (not c!963547)) b!5512796))

(declare-fun m!6517330 () Bool)

(assert (=> b!5512795 m!6517330))

(declare-fun m!6517332 () Bool)

(assert (=> b!5512791 m!6517332))

(declare-fun m!6517334 () Bool)

(assert (=> d!1746593 m!6517334))

(declare-fun m!6517336 () Bool)

(assert (=> d!1746593 m!6517336))

(declare-fun m!6517338 () Bool)

(assert (=> b!5512788 m!6517338))

(declare-fun m!6517340 () Bool)

(assert (=> b!5512793 m!6517340))

(assert (=> b!5512793 m!6517340))

(declare-fun m!6517342 () Bool)

(assert (=> b!5512793 m!6517342))

(assert (=> b!5512787 m!6516548))

(declare-fun m!6517344 () Bool)

(assert (=> b!5512796 m!6517344))

(declare-fun m!6517346 () Bool)

(assert (=> b!5512789 m!6517346))

(assert (=> b!5511841 d!1746593))

(declare-fun d!1746597 () Bool)

(assert (=> d!1746597 true))

(declare-fun setRes!36621 () Bool)

(assert (=> d!1746597 setRes!36621))

(declare-fun condSetEmpty!36621 () Bool)

(declare-fun res!2349006 () (InoxSet Context!9766))

(assert (=> d!1746597 (= condSetEmpty!36621 (= res!2349006 ((as const (Array Context!9766 Bool)) false)))))

(assert (=> d!1746597 (= (choose!41894 lt!2245405 lambda!295311) res!2349006)))

(declare-fun setIsEmpty!36621 () Bool)

(assert (=> setIsEmpty!36621 setRes!36621))

(declare-fun tp!1516577 () Bool)

(declare-fun setElem!36621 () Context!9766)

(declare-fun setNonEmpty!36621 () Bool)

(declare-fun e!3409181 () Bool)

(assert (=> setNonEmpty!36621 (= setRes!36621 (and tp!1516577 (inv!81994 setElem!36621) e!3409181))))

(declare-fun setRest!36621 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36621 (= res!2349006 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36621 true) setRest!36621))))

(declare-fun b!5512804 () Bool)

(declare-fun tp!1516576 () Bool)

(assert (=> b!5512804 (= e!3409181 tp!1516576)))

(assert (= (and d!1746597 condSetEmpty!36621) setIsEmpty!36621))

(assert (= (and d!1746597 (not condSetEmpty!36621)) setNonEmpty!36621))

(assert (= setNonEmpty!36621 b!5512804))

(declare-fun m!6517348 () Bool)

(assert (=> setNonEmpty!36621 m!6517348))

(assert (=> d!1746385 d!1746597))

(declare-fun b!5512805 () Bool)

(declare-fun c!963552 () Bool)

(declare-fun e!3409183 () Bool)

(assert (=> b!5512805 (= c!963552 e!3409183)))

(declare-fun res!2349007 () Bool)

(assert (=> b!5512805 (=> (not res!2349007) (not e!3409183))))

(assert (=> b!5512805 (= res!2349007 ((_ is Concat!24344) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(declare-fun e!3409186 () (InoxSet Context!9766))

(declare-fun e!3409184 () (InoxSet Context!9766))

(assert (=> b!5512805 (= e!3409186 e!3409184)))

(declare-fun bm!407714 () Bool)

(declare-fun call!407719 () (InoxSet Context!9766))

(declare-fun call!407722 () (InoxSet Context!9766))

(assert (=> bm!407714 (= call!407719 call!407722)))

(declare-fun b!5512806 () Bool)

(declare-fun e!3409185 () (InoxSet Context!9766))

(assert (=> b!5512806 (= e!3409185 call!407719)))

(declare-fun b!5512807 () Bool)

(assert (=> b!5512807 (= e!3409183 (nullable!5533 (regOne!31510 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)))))))

(declare-fun c!963553 () Bool)

(declare-fun bm!407715 () Bool)

(declare-fun call!407724 () List!62796)

(assert (=> bm!407715 (= call!407724 ($colon$colon!1582 (exprs!5383 (ite c!963304 lt!2245398 (Context!9767 call!407562))) (ite (or c!963552 c!963553) (regTwo!31510 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)))))))

(declare-fun b!5512808 () Bool)

(assert (=> b!5512808 (= e!3409185 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512809 () Bool)

(declare-fun e!3409182 () (InoxSet Context!9766))

(assert (=> b!5512809 (= e!3409182 e!3409186)))

(declare-fun c!963555 () Bool)

(assert (=> b!5512809 (= c!963555 ((_ is Union!15499) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(declare-fun b!5512810 () Bool)

(declare-fun e!3409187 () (InoxSet Context!9766))

(assert (=> b!5512810 (= e!3409187 call!407719)))

(declare-fun b!5512811 () Bool)

(declare-fun call!407723 () (InoxSet Context!9766))

(declare-fun call!407720 () (InoxSet Context!9766))

(assert (=> b!5512811 (= e!3409186 ((_ map or) call!407723 call!407720))))

(declare-fun bm!407716 () Bool)

(assert (=> bm!407716 (= call!407723 (derivationStepZipperDown!841 (ite c!963555 (regOne!31511 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (regOne!31510 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)))) (ite c!963555 (ite c!963304 lt!2245398 (Context!9767 call!407562)) (Context!9767 call!407724)) (h!69121 s!2326)))))

(declare-fun b!5512813 () Bool)

(assert (=> b!5512813 (= e!3409184 ((_ map or) call!407723 call!407722))))

(declare-fun b!5512814 () Bool)

(declare-fun c!963556 () Bool)

(assert (=> b!5512814 (= c!963556 ((_ is Star!15499) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(assert (=> b!5512814 (= e!3409187 e!3409185)))

(declare-fun call!407721 () List!62796)

(declare-fun bm!407717 () Bool)

(assert (=> bm!407717 (= call!407720 (derivationStepZipperDown!841 (ite c!963555 (regTwo!31511 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (ite c!963552 (regTwo!31510 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (ite c!963553 (regOne!31510 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (reg!15828 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)))))) (ite (or c!963555 c!963552) (ite c!963304 lt!2245398 (Context!9767 call!407562)) (Context!9767 call!407721)) (h!69121 s!2326)))))

(declare-fun bm!407718 () Bool)

(assert (=> bm!407718 (= call!407721 call!407724)))

(declare-fun b!5512812 () Bool)

(assert (=> b!5512812 (= e!3409182 (store ((as const (Array Context!9766 Bool)) false) (ite c!963304 lt!2245398 (Context!9767 call!407562)) true))))

(declare-fun d!1746601 () Bool)

(declare-fun c!963554 () Bool)

(assert (=> d!1746601 (= c!963554 (and ((_ is ElementMatch!15499) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (= (c!963233 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))) (h!69121 s!2326))))))

(assert (=> d!1746601 (= (derivationStepZipperDown!841 (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292)) (ite c!963304 lt!2245398 (Context!9767 call!407562)) (h!69121 s!2326)) e!3409182)))

(declare-fun bm!407719 () Bool)

(assert (=> bm!407719 (= call!407722 call!407720)))

(declare-fun b!5512815 () Bool)

(assert (=> b!5512815 (= e!3409184 e!3409187)))

(assert (=> b!5512815 (= c!963553 ((_ is Concat!24344) (ite c!963304 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(assert (= (and d!1746601 c!963554) b!5512812))

(assert (= (and d!1746601 (not c!963554)) b!5512809))

(assert (= (and b!5512809 c!963555) b!5512811))

(assert (= (and b!5512809 (not c!963555)) b!5512805))

(assert (= (and b!5512805 res!2349007) b!5512807))

(assert (= (and b!5512805 c!963552) b!5512813))

(assert (= (and b!5512805 (not c!963552)) b!5512815))

(assert (= (and b!5512815 c!963553) b!5512810))

(assert (= (and b!5512815 (not c!963553)) b!5512814))

(assert (= (and b!5512814 c!963556) b!5512806))

(assert (= (and b!5512814 (not c!963556)) b!5512808))

(assert (= (or b!5512810 b!5512806) bm!407718))

(assert (= (or b!5512810 b!5512806) bm!407714))

(assert (= (or b!5512813 bm!407718) bm!407715))

(assert (= (or b!5512813 bm!407714) bm!407719))

(assert (= (or b!5512811 bm!407719) bm!407717))

(assert (= (or b!5512811 b!5512813) bm!407716))

(declare-fun m!6517356 () Bool)

(assert (=> b!5512812 m!6517356))

(declare-fun m!6517358 () Bool)

(assert (=> bm!407715 m!6517358))

(declare-fun m!6517360 () Bool)

(assert (=> b!5512807 m!6517360))

(declare-fun m!6517362 () Bool)

(assert (=> bm!407717 m!6517362))

(declare-fun m!6517364 () Bool)

(assert (=> bm!407716 m!6517364))

(assert (=> bm!407554 d!1746601))

(declare-fun d!1746605 () Bool)

(assert (=> d!1746605 (= (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))) (nullableFct!1661 (h!69120 (exprs!5383 (Context!9767 (Cons!62672 r!7292 Nil!62672))))))))

(declare-fun bs!1270690 () Bool)

(assert (= bs!1270690 d!1746605))

(declare-fun m!6517366 () Bool)

(assert (=> bs!1270690 m!6517366))

(assert (=> b!5511987 d!1746605))

(assert (=> d!1746373 d!1746545))

(declare-fun d!1746607 () Bool)

(declare-fun lambda!295399 () Int)

(declare-fun exists!2135 ((InoxSet Context!9766) Int) Bool)

(assert (=> d!1746607 (= (nullableZipper!1529 lt!2245412) (exists!2135 lt!2245412 lambda!295399))))

(declare-fun bs!1270691 () Bool)

(assert (= bs!1270691 d!1746607))

(declare-fun m!6517378 () Bool)

(assert (=> bs!1270691 m!6517378))

(assert (=> b!5512214 d!1746607))

(assert (=> bs!1270599 d!1746325))

(declare-fun d!1746611 () Bool)

(assert (=> d!1746611 (= (head!11809 (exprs!5383 (h!69122 zl!343))) (h!69120 (exprs!5383 (h!69122 zl!343))))))

(assert (=> b!5511845 d!1746611))

(declare-fun b!5512838 () Bool)

(declare-fun e!3409202 () (InoxSet Context!9766))

(assert (=> b!5512838 (= e!3409202 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407728 () Bool)

(declare-fun call!407733 () (InoxSet Context!9766))

(assert (=> bm!407728 (= call!407733 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392))))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392)))))) (h!69121 s!2326)))))

(declare-fun b!5512839 () Bool)

(assert (=> b!5512839 (= e!3409202 call!407733)))

(declare-fun b!5512840 () Bool)

(declare-fun e!3409201 () Bool)

(assert (=> b!5512840 (= e!3409201 (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392)))))))))

(declare-fun b!5512841 () Bool)

(declare-fun e!3409203 () (InoxSet Context!9766))

(assert (=> b!5512841 (= e!3409203 ((_ map or) call!407733 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392)))))) (h!69121 s!2326))))))

(declare-fun d!1746613 () Bool)

(declare-fun c!963568 () Bool)

(assert (=> d!1746613 (= c!963568 e!3409201)))

(declare-fun res!2349012 () Bool)

(assert (=> d!1746613 (=> (not res!2349012) (not e!3409201))))

(assert (=> d!1746613 (= res!2349012 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392))))))))

(assert (=> d!1746613 (= (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 lt!2245392))) (h!69121 s!2326)) e!3409203)))

(declare-fun b!5512842 () Bool)

(assert (=> b!5512842 (= e!3409203 e!3409202)))

(declare-fun c!963569 () Bool)

(assert (=> b!5512842 (= c!963569 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245392))))))))

(assert (= (and d!1746613 res!2349012) b!5512840))

(assert (= (and d!1746613 c!963568) b!5512841))

(assert (= (and d!1746613 (not c!963568)) b!5512842))

(assert (= (and b!5512842 c!963569) b!5512839))

(assert (= (and b!5512842 (not c!963569)) b!5512838))

(assert (= (or b!5512841 b!5512839) bm!407728))

(declare-fun m!6517380 () Bool)

(assert (=> bm!407728 m!6517380))

(declare-fun m!6517382 () Bool)

(assert (=> b!5512840 m!6517382))

(declare-fun m!6517384 () Bool)

(assert (=> b!5512841 m!6517384))

(assert (=> b!5512242 d!1746613))

(declare-fun b!5512843 () Bool)

(declare-fun res!2349016 () Bool)

(declare-fun e!3409209 () Bool)

(assert (=> b!5512843 (=> res!2349016 e!3409209)))

(declare-fun e!3409208 () Bool)

(assert (=> b!5512843 (= res!2349016 e!3409208)))

(declare-fun res!2349020 () Bool)

(assert (=> b!5512843 (=> (not res!2349020) (not e!3409208))))

(declare-fun lt!2245519 () Bool)

(assert (=> b!5512843 (= res!2349020 lt!2245519)))

(declare-fun b!5512844 () Bool)

(assert (=> b!5512844 (= e!3409208 (= (head!11810 (_2!35899 (get!21568 lt!2245489))) (c!963233 (regTwo!31510 r!7292))))))

(declare-fun b!5512845 () Bool)

(declare-fun res!2349015 () Bool)

(assert (=> b!5512845 (=> (not res!2349015) (not e!3409208))))

(assert (=> b!5512845 (= res!2349015 (isEmpty!34457 (tail!10905 (_2!35899 (get!21568 lt!2245489)))))))

(declare-fun b!5512846 () Bool)

(declare-fun e!3409210 () Bool)

(assert (=> b!5512846 (= e!3409209 e!3409210)))

(declare-fun res!2349013 () Bool)

(assert (=> b!5512846 (=> (not res!2349013) (not e!3409210))))

(assert (=> b!5512846 (= res!2349013 (not lt!2245519))))

(declare-fun b!5512847 () Bool)

(declare-fun e!3409204 () Bool)

(assert (=> b!5512847 (= e!3409204 (matchR!7684 (derivativeStep!4368 (regTwo!31510 r!7292) (head!11810 (_2!35899 (get!21568 lt!2245489)))) (tail!10905 (_2!35899 (get!21568 lt!2245489)))))))

(declare-fun b!5512848 () Bool)

(declare-fun e!3409207 () Bool)

(declare-fun e!3409205 () Bool)

(assert (=> b!5512848 (= e!3409207 e!3409205)))

(declare-fun c!963572 () Bool)

(assert (=> b!5512848 (= c!963572 ((_ is EmptyLang!15499) (regTwo!31510 r!7292)))))

(declare-fun d!1746615 () Bool)

(assert (=> d!1746615 e!3409207))

(declare-fun c!963571 () Bool)

(assert (=> d!1746615 (= c!963571 ((_ is EmptyExpr!15499) (regTwo!31510 r!7292)))))

(assert (=> d!1746615 (= lt!2245519 e!3409204)))

(declare-fun c!963570 () Bool)

(assert (=> d!1746615 (= c!963570 (isEmpty!34457 (_2!35899 (get!21568 lt!2245489))))))

(assert (=> d!1746615 (validRegex!7235 (regTwo!31510 r!7292))))

(assert (=> d!1746615 (= (matchR!7684 (regTwo!31510 r!7292) (_2!35899 (get!21568 lt!2245489))) lt!2245519)))

(declare-fun b!5512849 () Bool)

(assert (=> b!5512849 (= e!3409205 (not lt!2245519))))

(declare-fun bm!407729 () Bool)

(declare-fun call!407734 () Bool)

(assert (=> bm!407729 (= call!407734 (isEmpty!34457 (_2!35899 (get!21568 lt!2245489))))))

(declare-fun b!5512850 () Bool)

(declare-fun e!3409206 () Bool)

(assert (=> b!5512850 (= e!3409206 (not (= (head!11810 (_2!35899 (get!21568 lt!2245489))) (c!963233 (regTwo!31510 r!7292)))))))

(declare-fun b!5512851 () Bool)

(declare-fun res!2349017 () Bool)

(assert (=> b!5512851 (=> res!2349017 e!3409206)))

(assert (=> b!5512851 (= res!2349017 (not (isEmpty!34457 (tail!10905 (_2!35899 (get!21568 lt!2245489))))))))

(declare-fun b!5512852 () Bool)

(assert (=> b!5512852 (= e!3409210 e!3409206)))

(declare-fun res!2349019 () Bool)

(assert (=> b!5512852 (=> res!2349019 e!3409206)))

(assert (=> b!5512852 (= res!2349019 call!407734)))

(declare-fun b!5512853 () Bool)

(assert (=> b!5512853 (= e!3409204 (nullable!5533 (regTwo!31510 r!7292)))))

(declare-fun b!5512854 () Bool)

(assert (=> b!5512854 (= e!3409207 (= lt!2245519 call!407734))))

(declare-fun b!5512855 () Bool)

(declare-fun res!2349018 () Bool)

(assert (=> b!5512855 (=> res!2349018 e!3409209)))

(assert (=> b!5512855 (= res!2349018 (not ((_ is ElementMatch!15499) (regTwo!31510 r!7292))))))

(assert (=> b!5512855 (= e!3409205 e!3409209)))

(declare-fun b!5512856 () Bool)

(declare-fun res!2349014 () Bool)

(assert (=> b!5512856 (=> (not res!2349014) (not e!3409208))))

(assert (=> b!5512856 (= res!2349014 (not call!407734))))

(assert (= (and d!1746615 c!963570) b!5512853))

(assert (= (and d!1746615 (not c!963570)) b!5512847))

(assert (= (and d!1746615 c!963571) b!5512854))

(assert (= (and d!1746615 (not c!963571)) b!5512848))

(assert (= (and b!5512848 c!963572) b!5512849))

(assert (= (and b!5512848 (not c!963572)) b!5512855))

(assert (= (and b!5512855 (not res!2349018)) b!5512843))

(assert (= (and b!5512843 res!2349020) b!5512856))

(assert (= (and b!5512856 res!2349014) b!5512845))

(assert (= (and b!5512845 res!2349015) b!5512844))

(assert (= (and b!5512843 (not res!2349016)) b!5512846))

(assert (= (and b!5512846 res!2349013) b!5512852))

(assert (= (and b!5512852 (not res!2349019)) b!5512851))

(assert (= (and b!5512851 (not res!2349017)) b!5512850))

(assert (= (or b!5512854 b!5512852 b!5512856) bm!407729))

(declare-fun m!6517386 () Bool)

(assert (=> b!5512847 m!6517386))

(assert (=> b!5512847 m!6517386))

(declare-fun m!6517388 () Bool)

(assert (=> b!5512847 m!6517388))

(declare-fun m!6517390 () Bool)

(assert (=> b!5512847 m!6517390))

(assert (=> b!5512847 m!6517388))

(assert (=> b!5512847 m!6517390))

(declare-fun m!6517392 () Bool)

(assert (=> b!5512847 m!6517392))

(declare-fun m!6517394 () Bool)

(assert (=> d!1746615 m!6517394))

(assert (=> d!1746615 m!6517246))

(assert (=> b!5512851 m!6517390))

(assert (=> b!5512851 m!6517390))

(declare-fun m!6517396 () Bool)

(assert (=> b!5512851 m!6517396))

(assert (=> b!5512850 m!6517386))

(assert (=> b!5512844 m!6517386))

(assert (=> b!5512845 m!6517390))

(assert (=> b!5512845 m!6517390))

(assert (=> b!5512845 m!6517396))

(assert (=> b!5512853 m!6517248))

(assert (=> bm!407729 m!6517394))

(assert (=> b!5512309 d!1746615))

(assert (=> b!5512309 d!1746485))

(declare-fun b!5512857 () Bool)

(declare-fun c!963573 () Bool)

(declare-fun e!3409212 () Bool)

(assert (=> b!5512857 (= c!963573 e!3409212)))

(declare-fun res!2349021 () Bool)

(assert (=> b!5512857 (=> (not res!2349021) (not e!3409212))))

(assert (=> b!5512857 (= res!2349021 ((_ is Concat!24344) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))))))

(declare-fun e!3409215 () (InoxSet Context!9766))

(declare-fun e!3409213 () (InoxSet Context!9766))

(assert (=> b!5512857 (= e!3409215 e!3409213)))

(declare-fun bm!407730 () Bool)

(declare-fun call!407735 () (InoxSet Context!9766))

(declare-fun call!407738 () (InoxSet Context!9766))

(assert (=> bm!407730 (= call!407735 call!407738)))

(declare-fun b!5512858 () Bool)

(declare-fun e!3409214 () (InoxSet Context!9766))

(assert (=> b!5512858 (= e!3409214 call!407735)))

(declare-fun b!5512859 () Bool)

(assert (=> b!5512859 (= e!3409212 (nullable!5533 (regOne!31510 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))))))))

(declare-fun bm!407731 () Bool)

(declare-fun c!963574 () Bool)

(declare-fun call!407740 () List!62796)

(assert (=> bm!407731 (= call!407740 ($colon$colon!1582 (exprs!5383 (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559))) (ite (or c!963573 c!963574) (regTwo!31510 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))))))))

(declare-fun b!5512860 () Bool)

(assert (=> b!5512860 (= e!3409214 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5512861 () Bool)

(declare-fun e!3409211 () (InoxSet Context!9766))

(assert (=> b!5512861 (= e!3409211 e!3409215)))

(declare-fun c!963576 () Bool)

(assert (=> b!5512861 (= c!963576 ((_ is Union!15499) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))))))

(declare-fun b!5512862 () Bool)

(declare-fun e!3409216 () (InoxSet Context!9766))

(assert (=> b!5512862 (= e!3409216 call!407735)))

(declare-fun b!5512863 () Bool)

(declare-fun call!407739 () (InoxSet Context!9766))

(declare-fun call!407736 () (InoxSet Context!9766))

(assert (=> b!5512863 (= e!3409215 ((_ map or) call!407739 call!407736))))

(declare-fun bm!407732 () Bool)

(assert (=> bm!407732 (= call!407739 (derivationStepZipperDown!841 (ite c!963576 (regOne!31511 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (regOne!31510 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))))) (ite c!963576 (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559)) (Context!9767 call!407740)) (h!69121 s!2326)))))

(declare-fun b!5512865 () Bool)

(assert (=> b!5512865 (= e!3409213 ((_ map or) call!407739 call!407738))))

(declare-fun b!5512866 () Bool)

(declare-fun c!963577 () Bool)

(assert (=> b!5512866 (= c!963577 ((_ is Star!15499) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))))))

(assert (=> b!5512866 (= e!3409216 e!3409214)))

(declare-fun call!407737 () List!62796)

(declare-fun bm!407733 () Bool)

(assert (=> bm!407733 (= call!407736 (derivationStepZipperDown!841 (ite c!963576 (regTwo!31511 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (ite c!963573 (regTwo!31510 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (ite c!963574 (regOne!31510 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (reg!15828 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))))))) (ite (or c!963576 c!963573) (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559)) (Context!9767 call!407737)) (h!69121 s!2326)))))

(declare-fun bm!407734 () Bool)

(assert (=> bm!407734 (= call!407737 call!407740)))

(declare-fun b!5512864 () Bool)

(assert (=> b!5512864 (= e!3409211 (store ((as const (Array Context!9766 Bool)) false) (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559)) true))))

(declare-fun d!1746617 () Bool)

(declare-fun c!963575 () Bool)

(assert (=> d!1746617 (= c!963575 (and ((_ is ElementMatch!15499) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (= (c!963233 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))) (h!69121 s!2326))))))

(assert (=> d!1746617 (= (derivationStepZipperDown!841 (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292)))) (ite (or c!963304 c!963301) lt!2245398 (Context!9767 call!407559)) (h!69121 s!2326)) e!3409211)))

(declare-fun bm!407735 () Bool)

(assert (=> bm!407735 (= call!407738 call!407736)))

(declare-fun b!5512867 () Bool)

(assert (=> b!5512867 (= e!3409213 e!3409216)))

(assert (=> b!5512867 (= c!963574 ((_ is Concat!24344) (ite c!963304 (regTwo!31511 r!7292) (ite c!963301 (regTwo!31510 r!7292) (ite c!963302 (regOne!31510 r!7292) (reg!15828 r!7292))))))))

(assert (= (and d!1746617 c!963575) b!5512864))

(assert (= (and d!1746617 (not c!963575)) b!5512861))

(assert (= (and b!5512861 c!963576) b!5512863))

(assert (= (and b!5512861 (not c!963576)) b!5512857))

(assert (= (and b!5512857 res!2349021) b!5512859))

(assert (= (and b!5512857 c!963573) b!5512865))

(assert (= (and b!5512857 (not c!963573)) b!5512867))

(assert (= (and b!5512867 c!963574) b!5512862))

(assert (= (and b!5512867 (not c!963574)) b!5512866))

(assert (= (and b!5512866 c!963577) b!5512858))

(assert (= (and b!5512866 (not c!963577)) b!5512860))

(assert (= (or b!5512862 b!5512858) bm!407734))

(assert (= (or b!5512862 b!5512858) bm!407730))

(assert (= (or b!5512865 bm!407734) bm!407731))

(assert (= (or b!5512865 bm!407730) bm!407735))

(assert (= (or b!5512863 bm!407735) bm!407733))

(assert (= (or b!5512863 b!5512865) bm!407732))

(declare-fun m!6517398 () Bool)

(assert (=> b!5512864 m!6517398))

(declare-fun m!6517400 () Bool)

(assert (=> bm!407731 m!6517400))

(declare-fun m!6517402 () Bool)

(assert (=> b!5512859 m!6517402))

(declare-fun m!6517404 () Bool)

(assert (=> bm!407733 m!6517404))

(declare-fun m!6517406 () Bool)

(assert (=> bm!407732 m!6517406))

(assert (=> bm!407555 d!1746617))

(assert (=> d!1746405 d!1746399))

(assert (=> d!1746405 d!1746521))

(assert (=> d!1746405 d!1746409))

(declare-fun d!1746619 () Bool)

(assert (=> d!1746619 (= (Exists!2599 lambda!295361) (choose!41900 lambda!295361))))

(declare-fun bs!1270705 () Bool)

(assert (= bs!1270705 d!1746619))

(declare-fun m!6517408 () Bool)

(assert (=> bs!1270705 m!6517408))

(assert (=> d!1746405 d!1746619))

(declare-fun bs!1270712 () Bool)

(declare-fun d!1746621 () Bool)

(assert (= bs!1270712 (and d!1746621 d!1746405)))

(declare-fun lambda!295405 () Int)

(assert (=> bs!1270712 (= lambda!295405 lambda!295361)))

(declare-fun bs!1270714 () Bool)

(assert (= bs!1270714 (and d!1746621 d!1746407)))

(assert (=> bs!1270714 (not (= lambda!295405 lambda!295367))))

(declare-fun bs!1270715 () Bool)

(assert (= bs!1270715 (and d!1746621 d!1746509)))

(assert (=> bs!1270715 (not (= lambda!295405 lambda!295389))))

(assert (=> bs!1270715 (= lambda!295405 lambda!295387)))

(declare-fun bs!1270716 () Bool)

(assert (= bs!1270716 (and d!1746621 b!5511697)))

(assert (=> bs!1270716 (= lambda!295405 lambda!295309)))

(declare-fun bs!1270717 () Bool)

(assert (= bs!1270717 (and d!1746621 b!5512364)))

(assert (=> bs!1270717 (not (= lambda!295405 lambda!295372))))

(assert (=> bs!1270714 (= lambda!295405 lambda!295366)))

(declare-fun bs!1270718 () Bool)

(assert (= bs!1270718 (and d!1746621 b!5512569)))

(assert (=> bs!1270718 (not (= lambda!295405 lambda!295378))))

(assert (=> bs!1270716 (not (= lambda!295405 lambda!295310))))

(declare-fun bs!1270719 () Bool)

(assert (= bs!1270719 (and d!1746621 b!5512356)))

(assert (=> bs!1270719 (not (= lambda!295405 lambda!295373))))

(declare-fun bs!1270720 () Bool)

(assert (= bs!1270720 (and d!1746621 b!5512561)))

(assert (=> bs!1270720 (not (= lambda!295405 lambda!295379))))

(assert (=> d!1746621 true))

(assert (=> d!1746621 true))

(assert (=> d!1746621 true))

(assert (=> d!1746621 (= (isDefined!12211 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) Nil!62673 s!2326 s!2326)) (Exists!2599 lambda!295405))))

(assert (=> d!1746621 true))

(declare-fun _$89!1602 () Unit!155458)

(assert (=> d!1746621 (= (choose!41901 (regOne!31510 r!7292) (regTwo!31510 r!7292) s!2326) _$89!1602)))

(declare-fun bs!1270721 () Bool)

(assert (= bs!1270721 d!1746621))

(assert (=> bs!1270721 m!6516480))

(assert (=> bs!1270721 m!6516480))

(assert (=> bs!1270721 m!6516482))

(declare-fun m!6517434 () Bool)

(assert (=> bs!1270721 m!6517434))

(assert (=> d!1746405 d!1746621))

(declare-fun d!1746647 () Bool)

(declare-fun c!963588 () Bool)

(assert (=> d!1746647 (= c!963588 (isEmpty!34457 (tail!10905 (t!376042 s!2326))))))

(declare-fun e!3409231 () Bool)

(assert (=> d!1746647 (= (matchZipper!1657 (derivationStepZipper!1604 lt!2245395 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))) e!3409231)))

(declare-fun b!5512894 () Bool)

(assert (=> b!5512894 (= e!3409231 (nullableZipper!1529 (derivationStepZipper!1604 lt!2245395 (head!11810 (t!376042 s!2326)))))))

(declare-fun b!5512895 () Bool)

(assert (=> b!5512895 (= e!3409231 (matchZipper!1657 (derivationStepZipper!1604 (derivationStepZipper!1604 lt!2245395 (head!11810 (t!376042 s!2326))) (head!11810 (tail!10905 (t!376042 s!2326)))) (tail!10905 (tail!10905 (t!376042 s!2326)))))))

(assert (= (and d!1746647 c!963588) b!5512894))

(assert (= (and d!1746647 (not c!963588)) b!5512895))

(assert (=> d!1746647 m!6516794))

(assert (=> d!1746647 m!6517228))

(assert (=> b!5512894 m!6516892))

(declare-fun m!6517440 () Bool)

(assert (=> b!5512894 m!6517440))

(assert (=> b!5512895 m!6516794))

(assert (=> b!5512895 m!6517232))

(assert (=> b!5512895 m!6516892))

(assert (=> b!5512895 m!6517232))

(declare-fun m!6517444 () Bool)

(assert (=> b!5512895 m!6517444))

(assert (=> b!5512895 m!6516794))

(assert (=> b!5512895 m!6517236))

(assert (=> b!5512895 m!6517444))

(assert (=> b!5512895 m!6517236))

(declare-fun m!6517450 () Bool)

(assert (=> b!5512895 m!6517450))

(assert (=> b!5512219 d!1746647))

(declare-fun bs!1270722 () Bool)

(declare-fun d!1746651 () Bool)

(assert (= bs!1270722 (and d!1746651 b!5511703)))

(declare-fun lambda!295406 () Int)

(assert (=> bs!1270722 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295406 lambda!295311))))

(declare-fun bs!1270723 () Bool)

(assert (= bs!1270723 (and d!1746651 d!1746313)))

(assert (=> bs!1270723 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295406 lambda!295341))))

(declare-fun bs!1270724 () Bool)

(assert (= bs!1270724 (and d!1746651 d!1746555)))

(assert (=> bs!1270724 (= lambda!295406 lambda!295393)))

(assert (=> d!1746651 true))

(assert (=> d!1746651 (= (derivationStepZipper!1604 lt!2245395 (head!11810 (t!376042 s!2326))) (flatMap!1112 lt!2245395 lambda!295406))))

(declare-fun bs!1270725 () Bool)

(assert (= bs!1270725 d!1746651))

(declare-fun m!6517452 () Bool)

(assert (=> bs!1270725 m!6517452))

(assert (=> b!5512219 d!1746651))

(assert (=> b!5512219 d!1746557))

(assert (=> b!5512219 d!1746559))

(declare-fun b!5512898 () Bool)

(declare-fun e!3409235 () Bool)

(declare-fun call!407748 () Bool)

(assert (=> b!5512898 (= e!3409235 call!407748)))

(declare-fun b!5512899 () Bool)

(declare-fun e!3409238 () Bool)

(declare-fun e!3409239 () Bool)

(assert (=> b!5512899 (= e!3409238 e!3409239)))

(declare-fun res!2349033 () Bool)

(assert (=> b!5512899 (= res!2349033 (not (nullable!5533 (reg!15828 lt!2245469))))))

(assert (=> b!5512899 (=> (not res!2349033) (not e!3409239))))

(declare-fun b!5512900 () Bool)

(declare-fun res!2349032 () Bool)

(declare-fun e!3409234 () Bool)

(assert (=> b!5512900 (=> res!2349032 e!3409234)))

(assert (=> b!5512900 (= res!2349032 (not ((_ is Concat!24344) lt!2245469)))))

(declare-fun e!3409233 () Bool)

(assert (=> b!5512900 (= e!3409233 e!3409234)))

(declare-fun b!5512901 () Bool)

(declare-fun call!407749 () Bool)

(assert (=> b!5512901 (= e!3409239 call!407749)))

(declare-fun b!5512902 () Bool)

(declare-fun res!2349029 () Bool)

(declare-fun e!3409237 () Bool)

(assert (=> b!5512902 (=> (not res!2349029) (not e!3409237))))

(declare-fun call!407750 () Bool)

(assert (=> b!5512902 (= res!2349029 call!407750)))

(assert (=> b!5512902 (= e!3409233 e!3409237)))

(declare-fun b!5512903 () Bool)

(assert (=> b!5512903 (= e!3409234 e!3409235)))

(declare-fun res!2349031 () Bool)

(assert (=> b!5512903 (=> (not res!2349031) (not e!3409235))))

(assert (=> b!5512903 (= res!2349031 call!407750)))

(declare-fun bm!407744 () Bool)

(assert (=> bm!407744 (= call!407748 call!407749)))

(declare-fun bm!407743 () Bool)

(declare-fun c!963591 () Bool)

(assert (=> bm!407743 (= call!407750 (validRegex!7235 (ite c!963591 (regOne!31511 lt!2245469) (regOne!31510 lt!2245469))))))

(declare-fun d!1746655 () Bool)

(declare-fun res!2349030 () Bool)

(declare-fun e!3409236 () Bool)

(assert (=> d!1746655 (=> res!2349030 e!3409236)))

(assert (=> d!1746655 (= res!2349030 ((_ is ElementMatch!15499) lt!2245469))))

(assert (=> d!1746655 (= (validRegex!7235 lt!2245469) e!3409236)))

(declare-fun b!5512904 () Bool)

(assert (=> b!5512904 (= e!3409238 e!3409233)))

(assert (=> b!5512904 (= c!963591 ((_ is Union!15499) lt!2245469))))

(declare-fun bm!407745 () Bool)

(declare-fun c!963590 () Bool)

(assert (=> bm!407745 (= call!407749 (validRegex!7235 (ite c!963590 (reg!15828 lt!2245469) (ite c!963591 (regTwo!31511 lt!2245469) (regTwo!31510 lt!2245469)))))))

(declare-fun b!5512905 () Bool)

(assert (=> b!5512905 (= e!3409236 e!3409238)))

(assert (=> b!5512905 (= c!963590 ((_ is Star!15499) lt!2245469))))

(declare-fun b!5512906 () Bool)

(assert (=> b!5512906 (= e!3409237 call!407748)))

(assert (= (and d!1746655 (not res!2349030)) b!5512905))

(assert (= (and b!5512905 c!963590) b!5512899))

(assert (= (and b!5512905 (not c!963590)) b!5512904))

(assert (= (and b!5512899 res!2349033) b!5512901))

(assert (= (and b!5512904 c!963591) b!5512902))

(assert (= (and b!5512904 (not c!963591)) b!5512900))

(assert (= (and b!5512902 res!2349029) b!5512906))

(assert (= (and b!5512900 (not res!2349032)) b!5512903))

(assert (= (and b!5512903 res!2349031) b!5512898))

(assert (= (or b!5512906 b!5512898) bm!407744))

(assert (= (or b!5512902 b!5512903) bm!407743))

(assert (= (or b!5512901 bm!407744) bm!407745))

(declare-fun m!6517460 () Bool)

(assert (=> b!5512899 m!6517460))

(declare-fun m!6517462 () Bool)

(assert (=> bm!407743 m!6517462))

(declare-fun m!6517464 () Bool)

(assert (=> bm!407745 m!6517464))

(assert (=> d!1746337 d!1746655))

(declare-fun d!1746659 () Bool)

(declare-fun res!2349042 () Bool)

(declare-fun e!3409248 () Bool)

(assert (=> d!1746659 (=> res!2349042 e!3409248)))

(assert (=> d!1746659 (= res!2349042 ((_ is Nil!62672) (unfocusZipperList!927 zl!343)))))

(assert (=> d!1746659 (= (forall!14677 (unfocusZipperList!927 zl!343) lambda!295354) e!3409248)))

(declare-fun b!5512919 () Bool)

(declare-fun e!3409249 () Bool)

(assert (=> b!5512919 (= e!3409248 e!3409249)))

(declare-fun res!2349043 () Bool)

(assert (=> b!5512919 (=> (not res!2349043) (not e!3409249))))

(declare-fun dynLambda!24488 (Int Regex!15499) Bool)

(assert (=> b!5512919 (= res!2349043 (dynLambda!24488 lambda!295354 (h!69120 (unfocusZipperList!927 zl!343))))))

(declare-fun b!5512920 () Bool)

(assert (=> b!5512920 (= e!3409249 (forall!14677 (t!376041 (unfocusZipperList!927 zl!343)) lambda!295354))))

(assert (= (and d!1746659 (not res!2349042)) b!5512919))

(assert (= (and b!5512919 res!2349043) b!5512920))

(declare-fun b_lambda!209003 () Bool)

(assert (=> (not b_lambda!209003) (not b!5512919)))

(declare-fun m!6517496 () Bool)

(assert (=> b!5512919 m!6517496))

(declare-fun m!6517498 () Bool)

(assert (=> b!5512920 m!6517498))

(assert (=> d!1746337 d!1746659))

(declare-fun b!5512939 () Bool)

(declare-fun e!3409259 () List!62797)

(assert (=> b!5512939 (= e!3409259 (Cons!62673 (h!69121 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))) (++!13751 (t!376042 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))) (t!376042 s!2326))))))

(declare-fun b!5512940 () Bool)

(declare-fun res!2349054 () Bool)

(declare-fun e!3409260 () Bool)

(assert (=> b!5512940 (=> (not res!2349054) (not e!3409260))))

(declare-fun lt!2245530 () List!62797)

(declare-fun size!39933 (List!62797) Int)

(assert (=> b!5512940 (= res!2349054 (= (size!39933 lt!2245530) (+ (size!39933 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))) (size!39933 (t!376042 s!2326)))))))

(declare-fun d!1746671 () Bool)

(assert (=> d!1746671 e!3409260))

(declare-fun res!2349053 () Bool)

(assert (=> d!1746671 (=> (not res!2349053) (not e!3409260))))

(declare-fun content!11263 (List!62797) (InoxSet C!31268))

(assert (=> d!1746671 (= res!2349053 (= (content!11263 lt!2245530) ((_ map or) (content!11263 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))) (content!11263 (t!376042 s!2326)))))))

(assert (=> d!1746671 (= lt!2245530 e!3409259)))

(declare-fun c!963598 () Bool)

(assert (=> d!1746671 (= c!963598 ((_ is Nil!62673) (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))))))

(assert (=> d!1746671 (= (++!13751 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326)) lt!2245530)))

(declare-fun b!5512938 () Bool)

(assert (=> b!5512938 (= e!3409259 (t!376042 s!2326))))

(declare-fun b!5512941 () Bool)

(assert (=> b!5512941 (= e!3409260 (or (not (= (t!376042 s!2326) Nil!62673)) (= lt!2245530 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)))))))

(assert (= (and d!1746671 c!963598) b!5512938))

(assert (= (and d!1746671 (not c!963598)) b!5512939))

(assert (= (and d!1746671 res!2349053) b!5512940))

(assert (= (and b!5512940 res!2349054) b!5512941))

(declare-fun m!6517518 () Bool)

(assert (=> b!5512939 m!6517518))

(declare-fun m!6517522 () Bool)

(assert (=> b!5512940 m!6517522))

(assert (=> b!5512940 m!6516970))

(declare-fun m!6517524 () Bool)

(assert (=> b!5512940 m!6517524))

(declare-fun m!6517526 () Bool)

(assert (=> b!5512940 m!6517526))

(declare-fun m!6517528 () Bool)

(assert (=> d!1746671 m!6517528))

(assert (=> d!1746671 m!6516970))

(declare-fun m!6517532 () Bool)

(assert (=> d!1746671 m!6517532))

(declare-fun m!6517536 () Bool)

(assert (=> d!1746671 m!6517536))

(assert (=> b!5512304 d!1746671))

(declare-fun b!5512943 () Bool)

(declare-fun e!3409261 () List!62797)

(assert (=> b!5512943 (= e!3409261 (Cons!62673 (h!69121 Nil!62673) (++!13751 (t!376042 Nil!62673) (Cons!62673 (h!69121 s!2326) Nil!62673))))))

(declare-fun b!5512944 () Bool)

(declare-fun res!2349056 () Bool)

(declare-fun e!3409262 () Bool)

(assert (=> b!5512944 (=> (not res!2349056) (not e!3409262))))

(declare-fun lt!2245531 () List!62797)

(assert (=> b!5512944 (= res!2349056 (= (size!39933 lt!2245531) (+ (size!39933 Nil!62673) (size!39933 (Cons!62673 (h!69121 s!2326) Nil!62673)))))))

(declare-fun d!1746675 () Bool)

(assert (=> d!1746675 e!3409262))

(declare-fun res!2349055 () Bool)

(assert (=> d!1746675 (=> (not res!2349055) (not e!3409262))))

(assert (=> d!1746675 (= res!2349055 (= (content!11263 lt!2245531) ((_ map or) (content!11263 Nil!62673) (content!11263 (Cons!62673 (h!69121 s!2326) Nil!62673)))))))

(assert (=> d!1746675 (= lt!2245531 e!3409261)))

(declare-fun c!963599 () Bool)

(assert (=> d!1746675 (= c!963599 ((_ is Nil!62673) Nil!62673))))

(assert (=> d!1746675 (= (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) lt!2245531)))

(declare-fun b!5512942 () Bool)

(assert (=> b!5512942 (= e!3409261 (Cons!62673 (h!69121 s!2326) Nil!62673))))

(declare-fun b!5512945 () Bool)

(assert (=> b!5512945 (= e!3409262 (or (not (= (Cons!62673 (h!69121 s!2326) Nil!62673) Nil!62673)) (= lt!2245531 Nil!62673)))))

(assert (= (and d!1746675 c!963599) b!5512942))

(assert (= (and d!1746675 (not c!963599)) b!5512943))

(assert (= (and d!1746675 res!2349055) b!5512944))

(assert (= (and b!5512944 res!2349056) b!5512945))

(declare-fun m!6517540 () Bool)

(assert (=> b!5512943 m!6517540))

(declare-fun m!6517542 () Bool)

(assert (=> b!5512944 m!6517542))

(declare-fun m!6517544 () Bool)

(assert (=> b!5512944 m!6517544))

(declare-fun m!6517546 () Bool)

(assert (=> b!5512944 m!6517546))

(declare-fun m!6517548 () Bool)

(assert (=> d!1746675 m!6517548))

(declare-fun m!6517550 () Bool)

(assert (=> d!1746675 m!6517550))

(declare-fun m!6517552 () Bool)

(assert (=> d!1746675 m!6517552))

(assert (=> b!5512304 d!1746675))

(declare-fun d!1746679 () Bool)

(assert (=> d!1746679 (= (++!13751 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326)) s!2326)))

(declare-fun lt!2245534 () Unit!155458)

(declare-fun choose!41905 (List!62797 C!31268 List!62797 List!62797) Unit!155458)

(assert (=> d!1746679 (= lt!2245534 (choose!41905 Nil!62673 (h!69121 s!2326) (t!376042 s!2326) s!2326))))

(assert (=> d!1746679 (= (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) (t!376042 s!2326))) s!2326)))

(assert (=> d!1746679 (= (lemmaMoveElementToOtherListKeepsConcatEq!1920 Nil!62673 (h!69121 s!2326) (t!376042 s!2326) s!2326) lt!2245534)))

(declare-fun bs!1270742 () Bool)

(assert (= bs!1270742 d!1746679))

(assert (=> bs!1270742 m!6516970))

(assert (=> bs!1270742 m!6516970))

(assert (=> bs!1270742 m!6516972))

(declare-fun m!6517576 () Bool)

(assert (=> bs!1270742 m!6517576))

(declare-fun m!6517578 () Bool)

(assert (=> bs!1270742 m!6517578))

(assert (=> b!5512304 d!1746679))

(declare-fun d!1746691 () Bool)

(declare-fun e!3409285 () Bool)

(assert (=> d!1746691 e!3409285))

(declare-fun res!2349072 () Bool)

(assert (=> d!1746691 (=> res!2349072 e!3409285)))

(declare-fun e!3409287 () Bool)

(assert (=> d!1746691 (= res!2349072 e!3409287)))

(declare-fun res!2349070 () Bool)

(assert (=> d!1746691 (=> (not res!2349070) (not e!3409287))))

(declare-fun lt!2245537 () Option!15508)

(assert (=> d!1746691 (= res!2349070 (isDefined!12211 lt!2245537))))

(declare-fun e!3409286 () Option!15508)

(assert (=> d!1746691 (= lt!2245537 e!3409286)))

(declare-fun c!963609 () Bool)

(declare-fun e!3409284 () Bool)

(assert (=> d!1746691 (= c!963609 e!3409284)))

(declare-fun res!2349073 () Bool)

(assert (=> d!1746691 (=> (not res!2349073) (not e!3409284))))

(assert (=> d!1746691 (= res!2349073 (matchR!7684 (regOne!31510 r!7292) (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673))))))

(assert (=> d!1746691 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746691 (= (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326) s!2326) lt!2245537)))

(declare-fun b!5512976 () Bool)

(assert (=> b!5512976 (= e!3409287 (= (++!13751 (_1!35899 (get!21568 lt!2245537)) (_2!35899 (get!21568 lt!2245537))) s!2326))))

(declare-fun b!5512977 () Bool)

(declare-fun lt!2245535 () Unit!155458)

(declare-fun lt!2245536 () Unit!155458)

(assert (=> b!5512977 (= lt!2245535 lt!2245536)))

(assert (=> b!5512977 (= (++!13751 (++!13751 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (Cons!62673 (h!69121 (t!376042 s!2326)) Nil!62673)) (t!376042 (t!376042 s!2326))) s!2326)))

(assert (=> b!5512977 (= lt!2245536 (lemmaMoveElementToOtherListKeepsConcatEq!1920 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (h!69121 (t!376042 s!2326)) (t!376042 (t!376042 s!2326)) s!2326))))

(declare-fun e!3409288 () Option!15508)

(assert (=> b!5512977 (= e!3409288 (findConcatSeparation!1922 (regOne!31510 r!7292) (regTwo!31510 r!7292) (++!13751 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (Cons!62673 (h!69121 (t!376042 s!2326)) Nil!62673)) (t!376042 (t!376042 s!2326)) s!2326))))

(declare-fun b!5512978 () Bool)

(assert (=> b!5512978 (= e!3409285 (not (isDefined!12211 lt!2245537)))))

(declare-fun b!5512979 () Bool)

(assert (=> b!5512979 (= e!3409286 (Some!15507 (tuple2!65193 (++!13751 Nil!62673 (Cons!62673 (h!69121 s!2326) Nil!62673)) (t!376042 s!2326))))))

(declare-fun b!5512980 () Bool)

(assert (=> b!5512980 (= e!3409288 None!15507)))

(declare-fun b!5512981 () Bool)

(assert (=> b!5512981 (= e!3409286 e!3409288)))

(declare-fun c!963610 () Bool)

(assert (=> b!5512981 (= c!963610 ((_ is Nil!62673) (t!376042 s!2326)))))

(declare-fun b!5512982 () Bool)

(declare-fun res!2349069 () Bool)

(assert (=> b!5512982 (=> (not res!2349069) (not e!3409287))))

(assert (=> b!5512982 (= res!2349069 (matchR!7684 (regTwo!31510 r!7292) (_2!35899 (get!21568 lt!2245537))))))

(declare-fun b!5512983 () Bool)

(assert (=> b!5512983 (= e!3409284 (matchR!7684 (regTwo!31510 r!7292) (t!376042 s!2326)))))

(declare-fun b!5512984 () Bool)

(declare-fun res!2349071 () Bool)

(assert (=> b!5512984 (=> (not res!2349071) (not e!3409287))))

(assert (=> b!5512984 (= res!2349071 (matchR!7684 (regOne!31510 r!7292) (_1!35899 (get!21568 lt!2245537))))))

(assert (= (and d!1746691 res!2349073) b!5512983))

(assert (= (and d!1746691 c!963609) b!5512979))

(assert (= (and d!1746691 (not c!963609)) b!5512981))

(assert (= (and b!5512981 c!963610) b!5512980))

(assert (= (and b!5512981 (not c!963610)) b!5512977))

(assert (= (and d!1746691 res!2349070) b!5512984))

(assert (= (and b!5512984 res!2349071) b!5512982))

(assert (= (and b!5512982 res!2349069) b!5512976))

(assert (= (and d!1746691 (not res!2349072)) b!5512978))

(declare-fun m!6517590 () Bool)

(assert (=> b!5512982 m!6517590))

(declare-fun m!6517592 () Bool)

(assert (=> b!5512982 m!6517592))

(declare-fun m!6517594 () Bool)

(assert (=> b!5512983 m!6517594))

(assert (=> b!5512984 m!6517590))

(declare-fun m!6517596 () Bool)

(assert (=> b!5512984 m!6517596))

(assert (=> b!5512976 m!6517590))

(declare-fun m!6517598 () Bool)

(assert (=> b!5512976 m!6517598))

(declare-fun m!6517600 () Bool)

(assert (=> b!5512978 m!6517600))

(assert (=> d!1746691 m!6517600))

(assert (=> d!1746691 m!6516970))

(declare-fun m!6517602 () Bool)

(assert (=> d!1746691 m!6517602))

(assert (=> d!1746691 m!6516968))

(assert (=> b!5512977 m!6516970))

(declare-fun m!6517604 () Bool)

(assert (=> b!5512977 m!6517604))

(assert (=> b!5512977 m!6517604))

(declare-fun m!6517606 () Bool)

(assert (=> b!5512977 m!6517606))

(assert (=> b!5512977 m!6516970))

(declare-fun m!6517608 () Bool)

(assert (=> b!5512977 m!6517608))

(assert (=> b!5512977 m!6517604))

(declare-fun m!6517610 () Bool)

(assert (=> b!5512977 m!6517610))

(assert (=> b!5512304 d!1746691))

(declare-fun d!1746697 () Bool)

(assert (=> d!1746697 (= (Exists!2599 (ite c!963434 lambda!295372 lambda!295373)) (choose!41900 (ite c!963434 lambda!295372 lambda!295373)))))

(declare-fun bs!1270752 () Bool)

(assert (= bs!1270752 d!1746697))

(declare-fun m!6517612 () Bool)

(assert (=> bs!1270752 m!6517612))

(assert (=> bm!407635 d!1746697))

(declare-fun d!1746699 () Bool)

(assert (=> d!1746699 true))

(assert (=> d!1746699 true))

(declare-fun res!2349083 () Bool)

(assert (=> d!1746699 (= (choose!41900 lambda!295309) res!2349083)))

(assert (=> d!1746403 d!1746699))

(assert (=> d!1746371 d!1746545))

(declare-fun d!1746703 () Bool)

(assert (=> d!1746703 (= (isEmpty!34453 (tail!10904 (unfocusZipperList!927 zl!343))) ((_ is Nil!62672) (tail!10904 (unfocusZipperList!927 zl!343))))))

(assert (=> b!5512180 d!1746703))

(declare-fun d!1746705 () Bool)

(assert (=> d!1746705 (= (tail!10904 (unfocusZipperList!927 zl!343)) (t!376041 (unfocusZipperList!927 zl!343)))))

(assert (=> b!5512180 d!1746705))

(declare-fun d!1746707 () Bool)

(declare-fun c!963619 () Bool)

(assert (=> d!1746707 (= c!963619 (isEmpty!34457 (tail!10905 (t!376042 s!2326))))))

(declare-fun e!3409304 () Bool)

(assert (=> d!1746707 (= (matchZipper!1657 (derivationStepZipper!1604 lt!2245411 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))) e!3409304)))

(declare-fun b!5513008 () Bool)

(assert (=> b!5513008 (= e!3409304 (nullableZipper!1529 (derivationStepZipper!1604 lt!2245411 (head!11810 (t!376042 s!2326)))))))

(declare-fun b!5513009 () Bool)

(assert (=> b!5513009 (= e!3409304 (matchZipper!1657 (derivationStepZipper!1604 (derivationStepZipper!1604 lt!2245411 (head!11810 (t!376042 s!2326))) (head!11810 (tail!10905 (t!376042 s!2326)))) (tail!10905 (tail!10905 (t!376042 s!2326)))))))

(assert (= (and d!1746707 c!963619) b!5513008))

(assert (= (and d!1746707 (not c!963619)) b!5513009))

(assert (=> d!1746707 m!6516794))

(assert (=> d!1746707 m!6517228))

(assert (=> b!5513008 m!6516886))

(declare-fun m!6517632 () Bool)

(assert (=> b!5513008 m!6517632))

(assert (=> b!5513009 m!6516794))

(assert (=> b!5513009 m!6517232))

(assert (=> b!5513009 m!6516886))

(assert (=> b!5513009 m!6517232))

(declare-fun m!6517634 () Bool)

(assert (=> b!5513009 m!6517634))

(assert (=> b!5513009 m!6516794))

(assert (=> b!5513009 m!6517236))

(assert (=> b!5513009 m!6517634))

(assert (=> b!5513009 m!6517236))

(declare-fun m!6517636 () Bool)

(assert (=> b!5513009 m!6517636))

(assert (=> b!5512217 d!1746707))

(declare-fun bs!1270755 () Bool)

(declare-fun d!1746709 () Bool)

(assert (= bs!1270755 (and d!1746709 b!5511703)))

(declare-fun lambda!295411 () Int)

(assert (=> bs!1270755 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295411 lambda!295311))))

(declare-fun bs!1270757 () Bool)

(assert (= bs!1270757 (and d!1746709 d!1746313)))

(assert (=> bs!1270757 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295411 lambda!295341))))

(declare-fun bs!1270758 () Bool)

(assert (= bs!1270758 (and d!1746709 d!1746555)))

(assert (=> bs!1270758 (= lambda!295411 lambda!295393)))

(declare-fun bs!1270760 () Bool)

(assert (= bs!1270760 (and d!1746709 d!1746651)))

(assert (=> bs!1270760 (= lambda!295411 lambda!295406)))

(assert (=> d!1746709 true))

(assert (=> d!1746709 (= (derivationStepZipper!1604 lt!2245411 (head!11810 (t!376042 s!2326))) (flatMap!1112 lt!2245411 lambda!295411))))

(declare-fun bs!1270762 () Bool)

(assert (= bs!1270762 d!1746709))

(declare-fun m!6517638 () Bool)

(assert (=> bs!1270762 m!6517638))

(assert (=> b!5512217 d!1746709))

(assert (=> b!5512217 d!1746557))

(assert (=> b!5512217 d!1746559))

(declare-fun d!1746711 () Bool)

(assert (=> d!1746711 (= (isEmpty!34457 (tail!10905 s!2326)) ((_ is Nil!62673) (tail!10905 s!2326)))))

(assert (=> b!5512397 d!1746711))

(assert (=> b!5512397 d!1746531))

(declare-fun d!1746713 () Bool)

(declare-fun c!963620 () Bool)

(assert (=> d!1746713 (= c!963620 (isEmpty!34457 (tail!10905 (t!376042 s!2326))))))

(declare-fun e!3409305 () Bool)

(assert (=> d!1746713 (= (matchZipper!1657 (derivationStepZipper!1604 lt!2245397 (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))) e!3409305)))

(declare-fun b!5513010 () Bool)

(assert (=> b!5513010 (= e!3409305 (nullableZipper!1529 (derivationStepZipper!1604 lt!2245397 (head!11810 (t!376042 s!2326)))))))

(declare-fun b!5513011 () Bool)

(assert (=> b!5513011 (= e!3409305 (matchZipper!1657 (derivationStepZipper!1604 (derivationStepZipper!1604 lt!2245397 (head!11810 (t!376042 s!2326))) (head!11810 (tail!10905 (t!376042 s!2326)))) (tail!10905 (tail!10905 (t!376042 s!2326)))))))

(assert (= (and d!1746713 c!963620) b!5513010))

(assert (= (and d!1746713 (not c!963620)) b!5513011))

(assert (=> d!1746713 m!6516794))

(assert (=> d!1746713 m!6517228))

(assert (=> b!5513010 m!6516792))

(declare-fun m!6517640 () Bool)

(assert (=> b!5513010 m!6517640))

(assert (=> b!5513011 m!6516794))

(assert (=> b!5513011 m!6517232))

(assert (=> b!5513011 m!6516792))

(assert (=> b!5513011 m!6517232))

(declare-fun m!6517642 () Bool)

(assert (=> b!5513011 m!6517642))

(assert (=> b!5513011 m!6516794))

(assert (=> b!5513011 m!6517236))

(assert (=> b!5513011 m!6517642))

(assert (=> b!5513011 m!6517236))

(declare-fun m!6517644 () Bool)

(assert (=> b!5513011 m!6517644))

(assert (=> b!5512083 d!1746713))

(declare-fun bs!1270766 () Bool)

(declare-fun d!1746715 () Bool)

(assert (= bs!1270766 (and d!1746715 d!1746313)))

(declare-fun lambda!295412 () Int)

(assert (=> bs!1270766 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295412 lambda!295341))))

(declare-fun bs!1270767 () Bool)

(assert (= bs!1270767 (and d!1746715 b!5511703)))

(assert (=> bs!1270767 (= (= (head!11810 (t!376042 s!2326)) (h!69121 s!2326)) (= lambda!295412 lambda!295311))))

(declare-fun bs!1270768 () Bool)

(assert (= bs!1270768 (and d!1746715 d!1746555)))

(assert (=> bs!1270768 (= lambda!295412 lambda!295393)))

(declare-fun bs!1270770 () Bool)

(assert (= bs!1270770 (and d!1746715 d!1746651)))

(assert (=> bs!1270770 (= lambda!295412 lambda!295406)))

(declare-fun bs!1270771 () Bool)

(assert (= bs!1270771 (and d!1746715 d!1746709)))

(assert (=> bs!1270771 (= lambda!295412 lambda!295411)))

(assert (=> d!1746715 true))

(assert (=> d!1746715 (= (derivationStepZipper!1604 lt!2245397 (head!11810 (t!376042 s!2326))) (flatMap!1112 lt!2245397 lambda!295412))))

(declare-fun bs!1270773 () Bool)

(assert (= bs!1270773 d!1746715))

(declare-fun m!6517646 () Bool)

(assert (=> bs!1270773 m!6517646))

(assert (=> b!5512083 d!1746715))

(assert (=> b!5512083 d!1746557))

(assert (=> b!5512083 d!1746559))

(declare-fun b!5513012 () Bool)

(declare-fun e!3409308 () Bool)

(declare-fun call!407765 () Bool)

(assert (=> b!5513012 (= e!3409308 call!407765)))

(declare-fun b!5513013 () Bool)

(declare-fun e!3409311 () Bool)

(declare-fun e!3409312 () Bool)

(assert (=> b!5513013 (= e!3409311 e!3409312)))

(declare-fun res!2349088 () Bool)

(assert (=> b!5513013 (= res!2349088 (not (nullable!5533 (reg!15828 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))))

(assert (=> b!5513013 (=> (not res!2349088) (not e!3409312))))

(declare-fun b!5513014 () Bool)

(declare-fun res!2349087 () Bool)

(declare-fun e!3409307 () Bool)

(assert (=> b!5513014 (=> res!2349087 e!3409307)))

(assert (=> b!5513014 (= res!2349087 (not ((_ is Concat!24344) (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292)))))))

(declare-fun e!3409306 () Bool)

(assert (=> b!5513014 (= e!3409306 e!3409307)))

(declare-fun b!5513015 () Bool)

(declare-fun call!407766 () Bool)

(assert (=> b!5513015 (= e!3409312 call!407766)))

(declare-fun b!5513016 () Bool)

(declare-fun res!2349084 () Bool)

(declare-fun e!3409310 () Bool)

(assert (=> b!5513016 (=> (not res!2349084) (not e!3409310))))

(declare-fun call!407767 () Bool)

(assert (=> b!5513016 (= res!2349084 call!407767)))

(assert (=> b!5513016 (= e!3409306 e!3409310)))

(declare-fun b!5513017 () Bool)

(assert (=> b!5513017 (= e!3409307 e!3409308)))

(declare-fun res!2349086 () Bool)

(assert (=> b!5513017 (=> (not res!2349086) (not e!3409308))))

(assert (=> b!5513017 (= res!2349086 call!407767)))

(declare-fun bm!407761 () Bool)

(assert (=> bm!407761 (= call!407765 call!407766)))

(declare-fun c!963622 () Bool)

(declare-fun bm!407760 () Bool)

(assert (=> bm!407760 (= call!407767 (validRegex!7235 (ite c!963622 (regOne!31511 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))) (regOne!31510 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))))

(declare-fun d!1746717 () Bool)

(declare-fun res!2349085 () Bool)

(declare-fun e!3409309 () Bool)

(assert (=> d!1746717 (=> res!2349085 e!3409309)))

(assert (=> d!1746717 (= res!2349085 ((_ is ElementMatch!15499) (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(assert (=> d!1746717 (= (validRegex!7235 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))) e!3409309)))

(declare-fun b!5513018 () Bool)

(assert (=> b!5513018 (= e!3409311 e!3409306)))

(assert (=> b!5513018 (= c!963622 ((_ is Union!15499) (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(declare-fun c!963621 () Bool)

(declare-fun bm!407762 () Bool)

(assert (=> bm!407762 (= call!407766 (validRegex!7235 (ite c!963621 (reg!15828 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))) (ite c!963622 (regTwo!31511 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))) (regTwo!31510 (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292)))))))))

(declare-fun b!5513019 () Bool)

(assert (=> b!5513019 (= e!3409309 e!3409311)))

(assert (=> b!5513019 (= c!963621 ((_ is Star!15499) (ite c!963416 (regOne!31511 r!7292) (regOne!31510 r!7292))))))

(declare-fun b!5513020 () Bool)

(assert (=> b!5513020 (= e!3409310 call!407765)))

(assert (= (and d!1746717 (not res!2349085)) b!5513019))

(assert (= (and b!5513019 c!963621) b!5513013))

(assert (= (and b!5513019 (not c!963621)) b!5513018))

(assert (= (and b!5513013 res!2349088) b!5513015))

(assert (= (and b!5513018 c!963622) b!5513016))

(assert (= (and b!5513018 (not c!963622)) b!5513014))

(assert (= (and b!5513016 res!2349084) b!5513020))

(assert (= (and b!5513014 (not res!2349087)) b!5513017))

(assert (= (and b!5513017 res!2349086) b!5513012))

(assert (= (or b!5513020 b!5513012) bm!407761))

(assert (= (or b!5513016 b!5513017) bm!407760))

(assert (= (or b!5513015 bm!407761) bm!407762))

(declare-fun m!6517648 () Bool)

(assert (=> b!5513013 m!6517648))

(declare-fun m!6517650 () Bool)

(assert (=> bm!407760 m!6517650))

(declare-fun m!6517652 () Bool)

(assert (=> bm!407762 m!6517652))

(assert (=> bm!407627 d!1746717))

(declare-fun d!1746719 () Bool)

(assert (=> d!1746719 (= (isEmpty!34453 (exprs!5383 (h!69122 zl!343))) ((_ is Nil!62672) (exprs!5383 (h!69122 zl!343))))))

(assert (=> b!5511837 d!1746719))

(declare-fun d!1746721 () Bool)

(assert (=> d!1746721 true))

(declare-fun setRes!36623 () Bool)

(assert (=> d!1746721 setRes!36623))

(declare-fun condSetEmpty!36623 () Bool)

(declare-fun res!2349089 () (InoxSet Context!9766))

(assert (=> d!1746721 (= condSetEmpty!36623 (= res!2349089 ((as const (Array Context!9766 Bool)) false)))))

(assert (=> d!1746721 (= (choose!41894 z!1189 lambda!295311) res!2349089)))

(declare-fun setIsEmpty!36623 () Bool)

(assert (=> setIsEmpty!36623 setRes!36623))

(declare-fun tp!1516581 () Bool)

(declare-fun e!3409313 () Bool)

(declare-fun setNonEmpty!36623 () Bool)

(declare-fun setElem!36623 () Context!9766)

(assert (=> setNonEmpty!36623 (= setRes!36623 (and tp!1516581 (inv!81994 setElem!36623) e!3409313))))

(declare-fun setRest!36623 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36623 (= res!2349089 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36623 true) setRest!36623))))

(declare-fun b!5513021 () Bool)

(declare-fun tp!1516580 () Bool)

(assert (=> b!5513021 (= e!3409313 tp!1516580)))

(assert (= (and d!1746721 condSetEmpty!36623) setIsEmpty!36623))

(assert (= (and d!1746721 (not condSetEmpty!36623)) setNonEmpty!36623))

(assert (= setNonEmpty!36623 b!5513021))

(declare-fun m!6517654 () Bool)

(assert (=> setNonEmpty!36623 m!6517654))

(assert (=> d!1746323 d!1746721))

(declare-fun b!5513022 () Bool)

(declare-fun e!3409315 () (InoxSet Context!9766))

(assert (=> b!5513022 (= e!3409315 ((as const (Array Context!9766 Bool)) false))))

(declare-fun bm!407763 () Bool)

(declare-fun call!407768 () (InoxSet Context!9766))

(assert (=> bm!407763 (= call!407768 (derivationStepZipperDown!841 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))))) (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343))))))) (h!69121 s!2326)))))

(declare-fun b!5513023 () Bool)

(assert (=> b!5513023 (= e!3409315 call!407768)))

(declare-fun b!5513024 () Bool)

(declare-fun e!3409314 () Bool)

(assert (=> b!5513024 (= e!3409314 (nullable!5533 (h!69120 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343))))))))))

(declare-fun b!5513025 () Bool)

(declare-fun e!3409316 () (InoxSet Context!9766))

(assert (=> b!5513025 (= e!3409316 ((_ map or) call!407768 (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343))))))) (h!69121 s!2326))))))

(declare-fun d!1746723 () Bool)

(declare-fun c!963623 () Bool)

(assert (=> d!1746723 (= c!963623 e!3409314)))

(declare-fun res!2349090 () Bool)

(assert (=> d!1746723 (=> (not res!2349090) (not e!3409314))))

(assert (=> d!1746723 (= res!2349090 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))))))))

(assert (=> d!1746723 (= (derivationStepZipperUp!767 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))) (h!69121 s!2326)) e!3409316)))

(declare-fun b!5513026 () Bool)

(assert (=> b!5513026 (= e!3409316 e!3409315)))

(declare-fun c!963624 () Bool)

(assert (=> b!5513026 (= c!963624 ((_ is Cons!62672) (exprs!5383 (Context!9767 (t!376041 (exprs!5383 (h!69122 zl!343)))))))))

(assert (= (and d!1746723 res!2349090) b!5513024))

(assert (= (and d!1746723 c!963623) b!5513025))

(assert (= (and d!1746723 (not c!963623)) b!5513026))

(assert (= (and b!5513026 c!963624) b!5513023))

(assert (= (and b!5513026 (not c!963624)) b!5513022))

(assert (= (or b!5513025 b!5513023) bm!407763))

(declare-fun m!6517662 () Bool)

(assert (=> bm!407763 m!6517662))

(declare-fun m!6517664 () Bool)

(assert (=> b!5513024 m!6517664))

(declare-fun m!6517666 () Bool)

(assert (=> b!5513025 m!6517666))

(assert (=> b!5512005 d!1746723))

(declare-fun d!1746727 () Bool)

(assert (=> d!1746727 (= ($colon$colon!1582 (exprs!5383 lt!2245398) (ite (or c!963301 c!963302) (regTwo!31510 r!7292) r!7292)) (Cons!62672 (ite (or c!963301 c!963302) (regTwo!31510 r!7292) r!7292) (exprs!5383 lt!2245398)))))

(assert (=> bm!407553 d!1746727))

(assert (=> b!5512212 d!1746267))

(declare-fun bs!1270783 () Bool)

(declare-fun d!1746730 () Bool)

(assert (= bs!1270783 (and d!1746730 d!1746593)))

(declare-fun lambda!295414 () Int)

(assert (=> bs!1270783 (= lambda!295414 lambda!295396)))

(declare-fun bs!1270784 () Bool)

(assert (= bs!1270784 (and d!1746730 d!1746367)))

(assert (=> bs!1270784 (= lambda!295414 lambda!295358)))

(declare-fun bs!1270786 () Bool)

(assert (= bs!1270786 (and d!1746730 d!1746337)))

(assert (=> bs!1270786 (= lambda!295414 lambda!295354)))

(declare-fun bs!1270788 () Bool)

(assert (= bs!1270788 (and d!1746730 d!1746359)))

(assert (=> bs!1270788 (= lambda!295414 lambda!295357)))

(declare-fun bs!1270790 () Bool)

(assert (= bs!1270790 (and d!1746730 d!1746589)))

(assert (=> bs!1270790 (= lambda!295414 lambda!295395)))

(declare-fun bs!1270791 () Bool)

(assert (= bs!1270791 (and d!1746730 d!1746267)))

(assert (=> bs!1270791 (= lambda!295414 lambda!295323)))

(declare-fun bs!1270793 () Bool)

(assert (= bs!1270793 (and d!1746730 d!1746281)))

(assert (=> bs!1270793 (= lambda!295414 lambda!295326)))

(declare-fun bs!1270794 () Bool)

(assert (= bs!1270794 (and d!1746730 d!1746457)))

(assert (=> bs!1270794 (= lambda!295414 lambda!295377)))

(declare-fun lt!2245539 () List!62796)

(assert (=> d!1746730 (forall!14677 lt!2245539 lambda!295414)))

(declare-fun e!3409318 () List!62796)

(assert (=> d!1746730 (= lt!2245539 e!3409318)))

(declare-fun c!963625 () Bool)

(assert (=> d!1746730 (= c!963625 ((_ is Cons!62674) (t!376043 zl!343)))))

(assert (=> d!1746730 (= (unfocusZipperList!927 (t!376043 zl!343)) lt!2245539)))

(declare-fun b!5513028 () Bool)

(assert (=> b!5513028 (= e!3409318 (Cons!62672 (generalisedConcat!1114 (exprs!5383 (h!69122 (t!376043 zl!343)))) (unfocusZipperList!927 (t!376043 (t!376043 zl!343)))))))

(declare-fun b!5513029 () Bool)

(assert (=> b!5513029 (= e!3409318 Nil!62672)))

(assert (= (and d!1746730 c!963625) b!5513028))

(assert (= (and d!1746730 (not c!963625)) b!5513029))

(declare-fun m!6517676 () Bool)

(assert (=> d!1746730 m!6517676))

(declare-fun m!6517678 () Bool)

(assert (=> b!5513028 m!6517678))

(declare-fun m!6517680 () Bool)

(assert (=> b!5513028 m!6517680))

(assert (=> b!5512212 d!1746730))

(declare-fun b!5513030 () Bool)

(declare-fun c!963626 () Bool)

(declare-fun e!3409320 () Bool)

(assert (=> b!5513030 (= c!963626 e!3409320)))

(declare-fun res!2349092 () Bool)

(assert (=> b!5513030 (=> (not res!2349092) (not e!3409320))))

(assert (=> b!5513030 (= res!2349092 ((_ is Concat!24344) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(declare-fun e!3409323 () (InoxSet Context!9766))

(declare-fun e!3409321 () (InoxSet Context!9766))

(assert (=> b!5513030 (= e!3409323 e!3409321)))

(declare-fun bm!407764 () Bool)

(declare-fun call!407769 () (InoxSet Context!9766))

(declare-fun call!407772 () (InoxSet Context!9766))

(assert (=> bm!407764 (= call!407769 call!407772)))

(declare-fun b!5513031 () Bool)

(declare-fun e!3409322 () (InoxSet Context!9766))

(assert (=> b!5513031 (= e!3409322 call!407769)))

(declare-fun b!5513032 () Bool)

(assert (=> b!5513032 (= e!3409320 (nullable!5533 (regOne!31510 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))))))))

(declare-fun call!407774 () List!62796)

(declare-fun bm!407765 () Bool)

(declare-fun c!963627 () Bool)

(assert (=> bm!407765 (= call!407774 ($colon$colon!1582 (exprs!5383 (ite c!963409 lt!2245392 (Context!9767 call!407625))) (ite (or c!963626 c!963627) (regTwo!31510 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))))))))

(declare-fun b!5513033 () Bool)

(assert (=> b!5513033 (= e!3409322 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5513034 () Bool)

(declare-fun e!3409319 () (InoxSet Context!9766))

(assert (=> b!5513034 (= e!3409319 e!3409323)))

(declare-fun c!963629 () Bool)

(assert (=> b!5513034 (= c!963629 ((_ is Union!15499) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(declare-fun b!5513035 () Bool)

(declare-fun e!3409324 () (InoxSet Context!9766))

(assert (=> b!5513035 (= e!3409324 call!407769)))

(declare-fun b!5513036 () Bool)

(declare-fun call!407773 () (InoxSet Context!9766))

(declare-fun call!407770 () (InoxSet Context!9766))

(assert (=> b!5513036 (= e!3409323 ((_ map or) call!407773 call!407770))))

(declare-fun bm!407766 () Bool)

(assert (=> bm!407766 (= call!407773 (derivationStepZipperDown!841 (ite c!963629 (regOne!31511 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (regOne!31510 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))))) (ite c!963629 (ite c!963409 lt!2245392 (Context!9767 call!407625)) (Context!9767 call!407774)) (h!69121 s!2326)))))

(declare-fun b!5513038 () Bool)

(assert (=> b!5513038 (= e!3409321 ((_ map or) call!407773 call!407772))))

(declare-fun b!5513039 () Bool)

(declare-fun c!963630 () Bool)

(assert (=> b!5513039 (= c!963630 ((_ is Star!15499) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(assert (=> b!5513039 (= e!3409324 e!3409322)))

(declare-fun call!407771 () List!62796)

(declare-fun bm!407767 () Bool)

(assert (=> bm!407767 (= call!407770 (derivationStepZipperDown!841 (ite c!963629 (regTwo!31511 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (ite c!963626 (regTwo!31510 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (ite c!963627 (regOne!31510 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (reg!15828 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))))))) (ite (or c!963629 c!963626) (ite c!963409 lt!2245392 (Context!9767 call!407625)) (Context!9767 call!407771)) (h!69121 s!2326)))))

(declare-fun bm!407768 () Bool)

(assert (=> bm!407768 (= call!407771 call!407774)))

(declare-fun b!5513037 () Bool)

(assert (=> b!5513037 (= e!3409319 (store ((as const (Array Context!9766 Bool)) false) (ite c!963409 lt!2245392 (Context!9767 call!407625)) true))))

(declare-fun d!1746739 () Bool)

(declare-fun c!963628 () Bool)

(assert (=> d!1746739 (= c!963628 (and ((_ is ElementMatch!15499) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (= (c!963233 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))) (h!69121 s!2326))))))

(assert (=> d!1746739 (= (derivationStepZipperDown!841 (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292))) (ite c!963409 lt!2245392 (Context!9767 call!407625)) (h!69121 s!2326)) e!3409319)))

(declare-fun bm!407769 () Bool)

(assert (=> bm!407769 (= call!407772 call!407770)))

(declare-fun b!5513040 () Bool)

(assert (=> b!5513040 (= e!3409321 e!3409324)))

(assert (=> b!5513040 (= c!963627 ((_ is Concat!24344) (ite c!963409 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(assert (= (and d!1746739 c!963628) b!5513037))

(assert (= (and d!1746739 (not c!963628)) b!5513034))

(assert (= (and b!5513034 c!963629) b!5513036))

(assert (= (and b!5513034 (not c!963629)) b!5513030))

(assert (= (and b!5513030 res!2349092) b!5513032))

(assert (= (and b!5513030 c!963626) b!5513038))

(assert (= (and b!5513030 (not c!963626)) b!5513040))

(assert (= (and b!5513040 c!963627) b!5513035))

(assert (= (and b!5513040 (not c!963627)) b!5513039))

(assert (= (and b!5513039 c!963630) b!5513031))

(assert (= (and b!5513039 (not c!963630)) b!5513033))

(assert (= (or b!5513035 b!5513031) bm!407768))

(assert (= (or b!5513035 b!5513031) bm!407764))

(assert (= (or b!5513038 bm!407768) bm!407765))

(assert (= (or b!5513038 bm!407764) bm!407769))

(assert (= (or b!5513036 bm!407769) bm!407767))

(assert (= (or b!5513036 b!5513038) bm!407766))

(declare-fun m!6517682 () Bool)

(assert (=> b!5513037 m!6517682))

(declare-fun m!6517684 () Bool)

(assert (=> bm!407765 m!6517684))

(declare-fun m!6517686 () Bool)

(assert (=> b!5513032 m!6517686))

(declare-fun m!6517692 () Bool)

(assert (=> bm!407767 m!6517692))

(declare-fun m!6517696 () Bool)

(assert (=> bm!407766 m!6517696))

(assert (=> bm!407617 d!1746739))

(declare-fun b!5513055 () Bool)

(declare-fun e!3409334 () Bool)

(declare-fun call!407776 () Bool)

(assert (=> b!5513055 (= e!3409334 call!407776)))

(declare-fun b!5513056 () Bool)

(declare-fun e!3409337 () Bool)

(declare-fun e!3409338 () Bool)

(assert (=> b!5513056 (= e!3409337 e!3409338)))

(declare-fun res!2349105 () Bool)

(assert (=> b!5513056 (= res!2349105 (not (nullable!5533 (reg!15828 lt!2245431))))))

(assert (=> b!5513056 (=> (not res!2349105) (not e!3409338))))

(declare-fun b!5513057 () Bool)

(declare-fun res!2349104 () Bool)

(declare-fun e!3409333 () Bool)

(assert (=> b!5513057 (=> res!2349104 e!3409333)))

(assert (=> b!5513057 (= res!2349104 (not ((_ is Concat!24344) lt!2245431)))))

(declare-fun e!3409332 () Bool)

(assert (=> b!5513057 (= e!3409332 e!3409333)))

(declare-fun b!5513058 () Bool)

(declare-fun call!407777 () Bool)

(assert (=> b!5513058 (= e!3409338 call!407777)))

(declare-fun b!5513059 () Bool)

(declare-fun res!2349101 () Bool)

(declare-fun e!3409336 () Bool)

(assert (=> b!5513059 (=> (not res!2349101) (not e!3409336))))

(declare-fun call!407778 () Bool)

(assert (=> b!5513059 (= res!2349101 call!407778)))

(assert (=> b!5513059 (= e!3409332 e!3409336)))

(declare-fun b!5513060 () Bool)

(assert (=> b!5513060 (= e!3409333 e!3409334)))

(declare-fun res!2349103 () Bool)

(assert (=> b!5513060 (=> (not res!2349103) (not e!3409334))))

(assert (=> b!5513060 (= res!2349103 call!407778)))

(declare-fun bm!407772 () Bool)

(assert (=> bm!407772 (= call!407776 call!407777)))

(declare-fun bm!407771 () Bool)

(declare-fun c!963635 () Bool)

(assert (=> bm!407771 (= call!407778 (validRegex!7235 (ite c!963635 (regOne!31511 lt!2245431) (regOne!31510 lt!2245431))))))

(declare-fun d!1746743 () Bool)

(declare-fun res!2349102 () Bool)

(declare-fun e!3409335 () Bool)

(assert (=> d!1746743 (=> res!2349102 e!3409335)))

(assert (=> d!1746743 (= res!2349102 ((_ is ElementMatch!15499) lt!2245431))))

(assert (=> d!1746743 (= (validRegex!7235 lt!2245431) e!3409335)))

(declare-fun b!5513061 () Bool)

(assert (=> b!5513061 (= e!3409337 e!3409332)))

(assert (=> b!5513061 (= c!963635 ((_ is Union!15499) lt!2245431))))

(declare-fun c!963634 () Bool)

(declare-fun bm!407773 () Bool)

(assert (=> bm!407773 (= call!407777 (validRegex!7235 (ite c!963634 (reg!15828 lt!2245431) (ite c!963635 (regTwo!31511 lt!2245431) (regTwo!31510 lt!2245431)))))))

(declare-fun b!5513062 () Bool)

(assert (=> b!5513062 (= e!3409335 e!3409337)))

(assert (=> b!5513062 (= c!963634 ((_ is Star!15499) lt!2245431))))

(declare-fun b!5513063 () Bool)

(assert (=> b!5513063 (= e!3409336 call!407776)))

(assert (= (and d!1746743 (not res!2349102)) b!5513062))

(assert (= (and b!5513062 c!963634) b!5513056))

(assert (= (and b!5513062 (not c!963634)) b!5513061))

(assert (= (and b!5513056 res!2349105) b!5513058))

(assert (= (and b!5513061 c!963635) b!5513059))

(assert (= (and b!5513061 (not c!963635)) b!5513057))

(assert (= (and b!5513059 res!2349101) b!5513063))

(assert (= (and b!5513057 (not res!2349104)) b!5513060))

(assert (= (and b!5513060 res!2349103) b!5513055))

(assert (= (or b!5513063 b!5513055) bm!407772))

(assert (= (or b!5513059 b!5513060) bm!407771))

(assert (= (or b!5513058 bm!407772) bm!407773))

(declare-fun m!6517704 () Bool)

(assert (=> b!5513056 m!6517704))

(declare-fun m!6517706 () Bool)

(assert (=> bm!407771 m!6517706))

(declare-fun m!6517708 () Bool)

(assert (=> bm!407773 m!6517708))

(assert (=> d!1746267 d!1746743))

(declare-fun d!1746749 () Bool)

(declare-fun res!2349108 () Bool)

(declare-fun e!3409341 () Bool)

(assert (=> d!1746749 (=> res!2349108 e!3409341)))

(assert (=> d!1746749 (= res!2349108 ((_ is Nil!62672) (exprs!5383 (h!69122 zl!343))))))

(assert (=> d!1746749 (= (forall!14677 (exprs!5383 (h!69122 zl!343)) lambda!295323) e!3409341)))

(declare-fun b!5513066 () Bool)

(declare-fun e!3409342 () Bool)

(assert (=> b!5513066 (= e!3409341 e!3409342)))

(declare-fun res!2349109 () Bool)

(assert (=> b!5513066 (=> (not res!2349109) (not e!3409342))))

(assert (=> b!5513066 (= res!2349109 (dynLambda!24488 lambda!295323 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5513067 () Bool)

(assert (=> b!5513067 (= e!3409342 (forall!14677 (t!376041 (exprs!5383 (h!69122 zl!343))) lambda!295323))))

(assert (= (and d!1746749 (not res!2349108)) b!5513066))

(assert (= (and b!5513066 res!2349109) b!5513067))

(declare-fun b_lambda!209009 () Bool)

(assert (=> (not b_lambda!209009) (not b!5513066)))

(declare-fun m!6517714 () Bool)

(assert (=> b!5513066 m!6517714))

(declare-fun m!6517716 () Bool)

(assert (=> b!5513067 m!6517716))

(assert (=> d!1746267 d!1746749))

(declare-fun d!1746753 () Bool)

(assert (=> d!1746753 true))

(assert (=> d!1746753 true))

(declare-fun res!2349110 () Bool)

(assert (=> d!1746753 (= (choose!41900 lambda!295310) res!2349110)))

(assert (=> d!1746401 d!1746753))

(declare-fun d!1746755 () Bool)

(declare-fun res!2349125 () Bool)

(declare-fun e!3409359 () Bool)

(assert (=> d!1746755 (=> res!2349125 e!3409359)))

(assert (=> d!1746755 (= res!2349125 ((_ is Nil!62674) lt!2245480))))

(assert (=> d!1746755 (= (noDuplicate!1496 lt!2245480) e!3409359)))

(declare-fun b!5513086 () Bool)

(declare-fun e!3409360 () Bool)

(assert (=> b!5513086 (= e!3409359 e!3409360)))

(declare-fun res!2349126 () Bool)

(assert (=> b!5513086 (=> (not res!2349126) (not e!3409360))))

(declare-fun contains!19780 (List!62798 Context!9766) Bool)

(assert (=> b!5513086 (= res!2349126 (not (contains!19780 (t!376043 lt!2245480) (h!69122 lt!2245480))))))

(declare-fun b!5513087 () Bool)

(assert (=> b!5513087 (= e!3409360 (noDuplicate!1496 (t!376043 lt!2245480)))))

(assert (= (and d!1746755 (not res!2349125)) b!5513086))

(assert (= (and b!5513086 res!2349126) b!5513087))

(declare-fun m!6517718 () Bool)

(assert (=> b!5513086 m!6517718))

(declare-fun m!6517720 () Bool)

(assert (=> b!5513087 m!6517720))

(assert (=> d!1746395 d!1746755))

(declare-fun d!1746757 () Bool)

(declare-fun e!3409373 () Bool)

(assert (=> d!1746757 e!3409373))

(declare-fun res!2349136 () Bool)

(assert (=> d!1746757 (=> (not res!2349136) (not e!3409373))))

(declare-fun res!2349135 () List!62798)

(assert (=> d!1746757 (= res!2349136 (noDuplicate!1496 res!2349135))))

(declare-fun e!3409369 () Bool)

(assert (=> d!1746757 e!3409369))

(assert (=> d!1746757 (= (choose!41899 z!1189) res!2349135)))

(declare-fun b!5513095 () Bool)

(declare-fun e!3409371 () Bool)

(declare-fun tp!1516588 () Bool)

(assert (=> b!5513095 (= e!3409371 tp!1516588)))

(declare-fun b!5513094 () Bool)

(declare-fun tp!1516589 () Bool)

(assert (=> b!5513094 (= e!3409369 (and (inv!81994 (h!69122 res!2349135)) e!3409371 tp!1516589))))

(declare-fun b!5513096 () Bool)

(assert (=> b!5513096 (= e!3409373 (= (content!11261 res!2349135) z!1189))))

(assert (= b!5513094 b!5513095))

(assert (= (and d!1746757 ((_ is Cons!62674) res!2349135)) b!5513094))

(assert (= (and d!1746757 res!2349136) b!5513096))

(declare-fun m!6517722 () Bool)

(assert (=> d!1746757 m!6517722))

(declare-fun m!6517724 () Bool)

(assert (=> b!5513094 m!6517724))

(declare-fun m!6517726 () Bool)

(assert (=> b!5513096 m!6517726))

(assert (=> d!1746395 d!1746757))

(assert (=> bs!1270600 d!1746391))

(declare-fun d!1746759 () Bool)

(assert (=> d!1746759 (= (isEmptyLang!1086 lt!2245469) ((_ is EmptyLang!15499) lt!2245469))))

(assert (=> b!5512187 d!1746759))

(assert (=> d!1746399 d!1746567))

(declare-fun b!5513115 () Bool)

(declare-fun res!2349142 () Bool)

(declare-fun e!3409387 () Bool)

(assert (=> b!5513115 (=> res!2349142 e!3409387)))

(declare-fun e!3409386 () Bool)

(assert (=> b!5513115 (= res!2349142 e!3409386)))

(declare-fun res!2349146 () Bool)

(assert (=> b!5513115 (=> (not res!2349146) (not e!3409386))))

(declare-fun lt!2245541 () Bool)

(assert (=> b!5513115 (= res!2349146 lt!2245541)))

(declare-fun b!5513116 () Bool)

(assert (=> b!5513116 (= e!3409386 (= (head!11810 Nil!62673) (c!963233 (regOne!31510 r!7292))))))

(declare-fun b!5513117 () Bool)

(declare-fun res!2349141 () Bool)

(assert (=> b!5513117 (=> (not res!2349141) (not e!3409386))))

(assert (=> b!5513117 (= res!2349141 (isEmpty!34457 (tail!10905 Nil!62673)))))

(declare-fun b!5513118 () Bool)

(declare-fun e!3409388 () Bool)

(assert (=> b!5513118 (= e!3409387 e!3409388)))

(declare-fun res!2349139 () Bool)

(assert (=> b!5513118 (=> (not res!2349139) (not e!3409388))))

(assert (=> b!5513118 (= res!2349139 (not lt!2245541))))

(declare-fun b!5513119 () Bool)

(declare-fun e!3409382 () Bool)

(assert (=> b!5513119 (= e!3409382 (matchR!7684 (derivativeStep!4368 (regOne!31510 r!7292) (head!11810 Nil!62673)) (tail!10905 Nil!62673)))))

(declare-fun b!5513120 () Bool)

(declare-fun e!3409385 () Bool)

(declare-fun e!3409383 () Bool)

(assert (=> b!5513120 (= e!3409385 e!3409383)))

(declare-fun c!963646 () Bool)

(assert (=> b!5513120 (= c!963646 ((_ is EmptyLang!15499) (regOne!31510 r!7292)))))

(declare-fun d!1746763 () Bool)

(assert (=> d!1746763 e!3409385))

(declare-fun c!963645 () Bool)

(assert (=> d!1746763 (= c!963645 ((_ is EmptyExpr!15499) (regOne!31510 r!7292)))))

(assert (=> d!1746763 (= lt!2245541 e!3409382)))

(declare-fun c!963644 () Bool)

(assert (=> d!1746763 (= c!963644 (isEmpty!34457 Nil!62673))))

(assert (=> d!1746763 (validRegex!7235 (regOne!31510 r!7292))))

(assert (=> d!1746763 (= (matchR!7684 (regOne!31510 r!7292) Nil!62673) lt!2245541)))

(declare-fun b!5513121 () Bool)

(assert (=> b!5513121 (= e!3409383 (not lt!2245541))))

(declare-fun bm!407786 () Bool)

(declare-fun call!407791 () Bool)

(assert (=> bm!407786 (= call!407791 (isEmpty!34457 Nil!62673))))

(declare-fun b!5513122 () Bool)

(declare-fun e!3409384 () Bool)

(assert (=> b!5513122 (= e!3409384 (not (= (head!11810 Nil!62673) (c!963233 (regOne!31510 r!7292)))))))

(declare-fun b!5513123 () Bool)

(declare-fun res!2349143 () Bool)

(assert (=> b!5513123 (=> res!2349143 e!3409384)))

(assert (=> b!5513123 (= res!2349143 (not (isEmpty!34457 (tail!10905 Nil!62673))))))

(declare-fun b!5513124 () Bool)

(assert (=> b!5513124 (= e!3409388 e!3409384)))

(declare-fun res!2349145 () Bool)

(assert (=> b!5513124 (=> res!2349145 e!3409384)))

(assert (=> b!5513124 (= res!2349145 call!407791)))

(declare-fun b!5513125 () Bool)

(assert (=> b!5513125 (= e!3409382 (nullable!5533 (regOne!31510 r!7292)))))

(declare-fun b!5513126 () Bool)

(assert (=> b!5513126 (= e!3409385 (= lt!2245541 call!407791))))

(declare-fun b!5513127 () Bool)

(declare-fun res!2349144 () Bool)

(assert (=> b!5513127 (=> res!2349144 e!3409387)))

(assert (=> b!5513127 (= res!2349144 (not ((_ is ElementMatch!15499) (regOne!31510 r!7292))))))

(assert (=> b!5513127 (= e!3409383 e!3409387)))

(declare-fun b!5513128 () Bool)

(declare-fun res!2349140 () Bool)

(assert (=> b!5513128 (=> (not res!2349140) (not e!3409386))))

(assert (=> b!5513128 (= res!2349140 (not call!407791))))

(assert (= (and d!1746763 c!963644) b!5513125))

(assert (= (and d!1746763 (not c!963644)) b!5513119))

(assert (= (and d!1746763 c!963645) b!5513126))

(assert (= (and d!1746763 (not c!963645)) b!5513120))

(assert (= (and b!5513120 c!963646) b!5513121))

(assert (= (and b!5513120 (not c!963646)) b!5513127))

(assert (= (and b!5513127 (not res!2349144)) b!5513115))

(assert (= (and b!5513115 res!2349146) b!5513128))

(assert (= (and b!5513128 res!2349140) b!5513117))

(assert (= (and b!5513117 res!2349141) b!5513116))

(assert (= (and b!5513115 (not res!2349142)) b!5513118))

(assert (= (and b!5513118 res!2349139) b!5513124))

(assert (= (and b!5513124 (not res!2349145)) b!5513123))

(assert (= (and b!5513123 (not res!2349143)) b!5513122))

(assert (= (or b!5513126 b!5513124 b!5513128) bm!407786))

(declare-fun m!6517740 () Bool)

(assert (=> b!5513119 m!6517740))

(assert (=> b!5513119 m!6517740))

(declare-fun m!6517744 () Bool)

(assert (=> b!5513119 m!6517744))

(declare-fun m!6517746 () Bool)

(assert (=> b!5513119 m!6517746))

(assert (=> b!5513119 m!6517744))

(assert (=> b!5513119 m!6517746))

(declare-fun m!6517748 () Bool)

(assert (=> b!5513119 m!6517748))

(declare-fun m!6517750 () Bool)

(assert (=> d!1746763 m!6517750))

(assert (=> d!1746763 m!6516968))

(assert (=> b!5513123 m!6517746))

(assert (=> b!5513123 m!6517746))

(declare-fun m!6517752 () Bool)

(assert (=> b!5513123 m!6517752))

(assert (=> b!5513122 m!6517740))

(assert (=> b!5513116 m!6517740))

(assert (=> b!5513117 m!6517746))

(assert (=> b!5513117 m!6517746))

(assert (=> b!5513117 m!6517752))

(assert (=> b!5513125 m!6516504))

(assert (=> bm!407786 m!6517750))

(assert (=> d!1746399 d!1746763))

(assert (=> d!1746399 d!1746521))

(declare-fun b!5513134 () Bool)

(declare-fun c!963649 () Bool)

(declare-fun e!3409393 () Bool)

(assert (=> b!5513134 (= c!963649 e!3409393)))

(declare-fun res!2349148 () Bool)

(assert (=> b!5513134 (=> (not res!2349148) (not e!3409393))))

(assert (=> b!5513134 (= res!2349148 ((_ is Concat!24344) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))))))

(declare-fun e!3409396 () (InoxSet Context!9766))

(declare-fun e!3409394 () (InoxSet Context!9766))

(assert (=> b!5513134 (= e!3409396 e!3409394)))

(declare-fun bm!407788 () Bool)

(declare-fun call!407793 () (InoxSet Context!9766))

(declare-fun call!407796 () (InoxSet Context!9766))

(assert (=> bm!407788 (= call!407793 call!407796)))

(declare-fun b!5513135 () Bool)

(declare-fun e!3409395 () (InoxSet Context!9766))

(assert (=> b!5513135 (= e!3409395 call!407793)))

(declare-fun b!5513136 () Bool)

(assert (=> b!5513136 (= e!3409393 (nullable!5533 (regOne!31510 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))))))))

(declare-fun bm!407789 () Bool)

(declare-fun call!407798 () List!62796)

(declare-fun c!963650 () Bool)

(assert (=> bm!407789 (= call!407798 ($colon$colon!1582 (exprs!5383 (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622))) (ite (or c!963649 c!963650) (regTwo!31510 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))))))))

(declare-fun b!5513137 () Bool)

(assert (=> b!5513137 (= e!3409395 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5513138 () Bool)

(declare-fun e!3409392 () (InoxSet Context!9766))

(assert (=> b!5513138 (= e!3409392 e!3409396)))

(declare-fun c!963652 () Bool)

(assert (=> b!5513138 (= c!963652 ((_ is Union!15499) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))))))

(declare-fun b!5513139 () Bool)

(declare-fun e!3409397 () (InoxSet Context!9766))

(assert (=> b!5513139 (= e!3409397 call!407793)))

(declare-fun b!5513140 () Bool)

(declare-fun call!407797 () (InoxSet Context!9766))

(declare-fun call!407794 () (InoxSet Context!9766))

(assert (=> b!5513140 (= e!3409396 ((_ map or) call!407797 call!407794))))

(declare-fun bm!407790 () Bool)

(assert (=> bm!407790 (= call!407797 (derivationStepZipperDown!841 (ite c!963652 (regOne!31511 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (regOne!31510 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))))) (ite c!963652 (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622)) (Context!9767 call!407798)) (h!69121 s!2326)))))

(declare-fun b!5513142 () Bool)

(assert (=> b!5513142 (= e!3409394 ((_ map or) call!407797 call!407796))))

(declare-fun b!5513143 () Bool)

(declare-fun c!963653 () Bool)

(assert (=> b!5513143 (= c!963653 ((_ is Star!15499) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))))))

(assert (=> b!5513143 (= e!3409397 e!3409395)))

(declare-fun bm!407791 () Bool)

(declare-fun call!407795 () List!62796)

(assert (=> bm!407791 (= call!407794 (derivationStepZipperDown!841 (ite c!963652 (regTwo!31511 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (ite c!963649 (regTwo!31510 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (ite c!963650 (regOne!31510 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (reg!15828 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))))))) (ite (or c!963652 c!963649) (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622)) (Context!9767 call!407795)) (h!69121 s!2326)))))

(declare-fun bm!407792 () Bool)

(assert (=> bm!407792 (= call!407795 call!407798)))

(declare-fun b!5513141 () Bool)

(assert (=> b!5513141 (= e!3409392 (store ((as const (Array Context!9766 Bool)) false) (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622)) true))))

(declare-fun c!963651 () Bool)

(declare-fun d!1746769 () Bool)

(assert (=> d!1746769 (= c!963651 (and ((_ is ElementMatch!15499) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (= (c!963233 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))) (h!69121 s!2326))))))

(assert (=> d!1746769 (= (derivationStepZipperDown!841 (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292))))) (ite (or c!963409 c!963406) lt!2245392 (Context!9767 call!407622)) (h!69121 s!2326)) e!3409392)))

(declare-fun bm!407793 () Bool)

(assert (=> bm!407793 (= call!407796 call!407794)))

(declare-fun b!5513144 () Bool)

(assert (=> b!5513144 (= e!3409394 e!3409397)))

(assert (=> b!5513144 (= c!963650 ((_ is Concat!24344) (ite c!963409 (regTwo!31511 (regOne!31510 r!7292)) (ite c!963406 (regTwo!31510 (regOne!31510 r!7292)) (ite c!963407 (regOne!31510 (regOne!31510 r!7292)) (reg!15828 (regOne!31510 r!7292)))))))))

(assert (= (and d!1746769 c!963651) b!5513141))

(assert (= (and d!1746769 (not c!963651)) b!5513138))

(assert (= (and b!5513138 c!963652) b!5513140))

(assert (= (and b!5513138 (not c!963652)) b!5513134))

(assert (= (and b!5513134 res!2349148) b!5513136))

(assert (= (and b!5513134 c!963649) b!5513142))

(assert (= (and b!5513134 (not c!963649)) b!5513144))

(assert (= (and b!5513144 c!963650) b!5513139))

(assert (= (and b!5513144 (not c!963650)) b!5513143))

(assert (= (and b!5513143 c!963653) b!5513135))

(assert (= (and b!5513143 (not c!963653)) b!5513137))

(assert (= (or b!5513139 b!5513135) bm!407792))

(assert (= (or b!5513139 b!5513135) bm!407788))

(assert (= (or b!5513142 bm!407792) bm!407789))

(assert (= (or b!5513142 bm!407788) bm!407793))

(assert (= (or b!5513140 bm!407793) bm!407791))

(assert (= (or b!5513140 b!5513142) bm!407790))

(declare-fun m!6517760 () Bool)

(assert (=> b!5513141 m!6517760))

(declare-fun m!6517762 () Bool)

(assert (=> bm!407789 m!6517762))

(declare-fun m!6517764 () Bool)

(assert (=> b!5513136 m!6517764))

(declare-fun m!6517766 () Bool)

(assert (=> bm!407791 m!6517766))

(declare-fun m!6517768 () Bool)

(assert (=> bm!407790 m!6517768))

(assert (=> bm!407618 d!1746769))

(declare-fun d!1746773 () Bool)

(assert (=> d!1746773 (= (nullable!5533 (h!69120 (exprs!5383 lt!2245392))) (nullableFct!1661 (h!69120 (exprs!5383 lt!2245392))))))

(declare-fun bs!1270795 () Bool)

(assert (= bs!1270795 d!1746773))

(declare-fun m!6517770 () Bool)

(assert (=> bs!1270795 m!6517770))

(assert (=> b!5512241 d!1746773))

(declare-fun b!5513195 () Bool)

(declare-fun e!3409434 () Bool)

(declare-fun e!3409430 () Bool)

(assert (=> b!5513195 (= e!3409434 e!3409430)))

(declare-fun res!2349173 () Bool)

(declare-fun call!407816 () Bool)

(assert (=> b!5513195 (= res!2349173 call!407816)))

(assert (=> b!5513195 (=> res!2349173 e!3409430)))

(declare-fun b!5513196 () Bool)

(declare-fun e!3409432 () Bool)

(declare-fun e!3409429 () Bool)

(assert (=> b!5513196 (= e!3409432 e!3409429)))

(declare-fun res!2349169 () Bool)

(assert (=> b!5513196 (=> (not res!2349169) (not e!3409429))))

(assert (=> b!5513196 (= res!2349169 (and (not ((_ is EmptyLang!15499) (regOne!31510 r!7292))) (not ((_ is ElementMatch!15499) (regOne!31510 r!7292)))))))

(declare-fun d!1746775 () Bool)

(declare-fun res!2349171 () Bool)

(assert (=> d!1746775 (=> res!2349171 e!3409432)))

(assert (=> d!1746775 (= res!2349171 ((_ is EmptyExpr!15499) (regOne!31510 r!7292)))))

(assert (=> d!1746775 (= (nullableFct!1661 (regOne!31510 r!7292)) e!3409432)))

(declare-fun b!5513197 () Bool)

(declare-fun e!3409431 () Bool)

(declare-fun call!407817 () Bool)

(assert (=> b!5513197 (= e!3409431 call!407817)))

(declare-fun bm!407811 () Bool)

(declare-fun c!963669 () Bool)

(assert (=> bm!407811 (= call!407817 (nullable!5533 (ite c!963669 (regTwo!31511 (regOne!31510 r!7292)) (regTwo!31510 (regOne!31510 r!7292)))))))

(declare-fun b!5513198 () Bool)

(assert (=> b!5513198 (= e!3409430 call!407817)))

(declare-fun bm!407812 () Bool)

(assert (=> bm!407812 (= call!407816 (nullable!5533 (ite c!963669 (regOne!31511 (regOne!31510 r!7292)) (regOne!31510 (regOne!31510 r!7292)))))))

(declare-fun b!5513199 () Bool)

(declare-fun e!3409433 () Bool)

(assert (=> b!5513199 (= e!3409429 e!3409433)))

(declare-fun res!2349170 () Bool)

(assert (=> b!5513199 (=> res!2349170 e!3409433)))

(assert (=> b!5513199 (= res!2349170 ((_ is Star!15499) (regOne!31510 r!7292)))))

(declare-fun b!5513200 () Bool)

(assert (=> b!5513200 (= e!3409433 e!3409434)))

(assert (=> b!5513200 (= c!963669 ((_ is Union!15499) (regOne!31510 r!7292)))))

(declare-fun b!5513201 () Bool)

(assert (=> b!5513201 (= e!3409434 e!3409431)))

(declare-fun res!2349172 () Bool)

(assert (=> b!5513201 (= res!2349172 call!407816)))

(assert (=> b!5513201 (=> (not res!2349172) (not e!3409431))))

(assert (= (and d!1746775 (not res!2349171)) b!5513196))

(assert (= (and b!5513196 res!2349169) b!5513199))

(assert (= (and b!5513199 (not res!2349170)) b!5513200))

(assert (= (and b!5513200 c!963669) b!5513195))

(assert (= (and b!5513200 (not c!963669)) b!5513201))

(assert (= (and b!5513195 (not res!2349173)) b!5513198))

(assert (= (and b!5513201 res!2349172) b!5513197))

(assert (= (or b!5513198 b!5513197) bm!407811))

(assert (= (or b!5513195 b!5513201) bm!407812))

(declare-fun m!6517806 () Bool)

(assert (=> bm!407811 m!6517806))

(declare-fun m!6517808 () Bool)

(assert (=> bm!407812 m!6517808))

(assert (=> d!1746381 d!1746775))

(declare-fun bs!1270798 () Bool)

(declare-fun d!1746791 () Bool)

(assert (= bs!1270798 (and d!1746791 d!1746607)))

(declare-fun lambda!295416 () Int)

(assert (=> bs!1270798 (= lambda!295416 lambda!295399)))

(assert (=> d!1746791 (= (nullableZipper!1529 lt!2245395) (exists!2135 lt!2245395 lambda!295416))))

(declare-fun bs!1270799 () Bool)

(assert (= bs!1270799 d!1746791))

(declare-fun m!6517812 () Bool)

(assert (=> bs!1270799 m!6517812))

(assert (=> b!5512218 d!1746791))

(assert (=> d!1746415 d!1746569))

(assert (=> d!1746415 d!1746397))

(declare-fun d!1746793 () Bool)

(declare-fun res!2349182 () Bool)

(declare-fun e!3409442 () Bool)

(assert (=> d!1746793 (=> res!2349182 e!3409442)))

(assert (=> d!1746793 (= res!2349182 ((_ is Nil!62672) lt!2245472))))

(assert (=> d!1746793 (= (forall!14677 lt!2245472 lambda!295357) e!3409442)))

(declare-fun b!5513216 () Bool)

(declare-fun e!3409443 () Bool)

(assert (=> b!5513216 (= e!3409442 e!3409443)))

(declare-fun res!2349183 () Bool)

(assert (=> b!5513216 (=> (not res!2349183) (not e!3409443))))

(assert (=> b!5513216 (= res!2349183 (dynLambda!24488 lambda!295357 (h!69120 lt!2245472)))))

(declare-fun b!5513217 () Bool)

(assert (=> b!5513217 (= e!3409443 (forall!14677 (t!376041 lt!2245472) lambda!295357))))

(assert (= (and d!1746793 (not res!2349182)) b!5513216))

(assert (= (and b!5513216 res!2349183) b!5513217))

(declare-fun b_lambda!209013 () Bool)

(assert (=> (not b_lambda!209013) (not b!5513216)))

(declare-fun m!6517826 () Bool)

(assert (=> b!5513216 m!6517826))

(declare-fun m!6517830 () Bool)

(assert (=> b!5513217 m!6517830))

(assert (=> d!1746359 d!1746793))

(declare-fun bs!1270800 () Bool)

(declare-fun b!5513226 () Bool)

(assert (= bs!1270800 (and b!5513226 d!1746405)))

(declare-fun lambda!295417 () Int)

(assert (=> bs!1270800 (not (= lambda!295417 lambda!295361))))

(declare-fun bs!1270801 () Bool)

(assert (= bs!1270801 (and b!5513226 d!1746407)))

(assert (=> bs!1270801 (not (= lambda!295417 lambda!295367))))

(declare-fun bs!1270802 () Bool)

(assert (= bs!1270802 (and b!5513226 d!1746509)))

(assert (=> bs!1270802 (not (= lambda!295417 lambda!295389))))

(assert (=> bs!1270802 (not (= lambda!295417 lambda!295387))))

(declare-fun bs!1270803 () Bool)

(assert (= bs!1270803 (and b!5513226 b!5511697)))

(assert (=> bs!1270803 (not (= lambda!295417 lambda!295309))))

(declare-fun bs!1270804 () Bool)

(assert (= bs!1270804 (and b!5513226 b!5512364)))

(assert (=> bs!1270804 (= (and (= (reg!15828 (regTwo!31511 r!7292)) (reg!15828 r!7292)) (= (regTwo!31511 r!7292) r!7292)) (= lambda!295417 lambda!295372))))

(assert (=> bs!1270801 (not (= lambda!295417 lambda!295366))))

(assert (=> bs!1270803 (not (= lambda!295417 lambda!295310))))

(declare-fun bs!1270805 () Bool)

(assert (= bs!1270805 (and b!5513226 b!5512356)))

(assert (=> bs!1270805 (not (= lambda!295417 lambda!295373))))

(declare-fun bs!1270806 () Bool)

(assert (= bs!1270806 (and b!5513226 b!5512561)))

(assert (=> bs!1270806 (not (= lambda!295417 lambda!295379))))

(declare-fun bs!1270807 () Bool)

(assert (= bs!1270807 (and b!5513226 d!1746621)))

(assert (=> bs!1270807 (not (= lambda!295417 lambda!295405))))

(declare-fun bs!1270808 () Bool)

(assert (= bs!1270808 (and b!5513226 b!5512569)))

(assert (=> bs!1270808 (= (and (= (reg!15828 (regTwo!31511 r!7292)) (reg!15828 (regOne!31511 r!7292))) (= (regTwo!31511 r!7292) (regOne!31511 r!7292))) (= lambda!295417 lambda!295378))))

(assert (=> b!5513226 true))

(assert (=> b!5513226 true))

(declare-fun bs!1270814 () Bool)

(declare-fun b!5513218 () Bool)

(assert (= bs!1270814 (and b!5513218 d!1746405)))

(declare-fun lambda!295419 () Int)

(assert (=> bs!1270814 (not (= lambda!295419 lambda!295361))))

(declare-fun bs!1270815 () Bool)

(assert (= bs!1270815 (and b!5513218 b!5513226)))

(assert (=> bs!1270815 (not (= lambda!295419 lambda!295417))))

(declare-fun bs!1270816 () Bool)

(assert (= bs!1270816 (and b!5513218 d!1746407)))

(assert (=> bs!1270816 (= (and (= (regOne!31510 (regTwo!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regTwo!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295419 lambda!295367))))

(declare-fun bs!1270817 () Bool)

(assert (= bs!1270817 (and b!5513218 d!1746509)))

(assert (=> bs!1270817 (= (and (= (regOne!31510 (regTwo!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regTwo!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295419 lambda!295389))))

(assert (=> bs!1270817 (not (= lambda!295419 lambda!295387))))

(declare-fun bs!1270818 () Bool)

(assert (= bs!1270818 (and b!5513218 b!5511697)))

(assert (=> bs!1270818 (not (= lambda!295419 lambda!295309))))

(declare-fun bs!1270819 () Bool)

(assert (= bs!1270819 (and b!5513218 b!5512364)))

(assert (=> bs!1270819 (not (= lambda!295419 lambda!295372))))

(assert (=> bs!1270816 (not (= lambda!295419 lambda!295366))))

(assert (=> bs!1270818 (= (and (= (regOne!31510 (regTwo!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regTwo!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295419 lambda!295310))))

(declare-fun bs!1270820 () Bool)

(assert (= bs!1270820 (and b!5513218 b!5512356)))

(assert (=> bs!1270820 (= (and (= (regOne!31510 (regTwo!31511 r!7292)) (regOne!31510 r!7292)) (= (regTwo!31510 (regTwo!31511 r!7292)) (regTwo!31510 r!7292))) (= lambda!295419 lambda!295373))))

(declare-fun bs!1270821 () Bool)

(assert (= bs!1270821 (and b!5513218 b!5512561)))

(assert (=> bs!1270821 (= (and (= (regOne!31510 (regTwo!31511 r!7292)) (regOne!31510 (regOne!31511 r!7292))) (= (regTwo!31510 (regTwo!31511 r!7292)) (regTwo!31510 (regOne!31511 r!7292)))) (= lambda!295419 lambda!295379))))

(declare-fun bs!1270822 () Bool)

(assert (= bs!1270822 (and b!5513218 d!1746621)))

(assert (=> bs!1270822 (not (= lambda!295419 lambda!295405))))

(declare-fun bs!1270823 () Bool)

(assert (= bs!1270823 (and b!5513218 b!5512569)))

(assert (=> bs!1270823 (not (= lambda!295419 lambda!295378))))

(assert (=> b!5513218 true))

(assert (=> b!5513218 true))

(declare-fun e!3409448 () Bool)

(declare-fun call!407819 () Bool)

(assert (=> b!5513218 (= e!3409448 call!407819)))

(declare-fun b!5513219 () Bool)

(declare-fun e!3409445 () Bool)

(declare-fun call!407820 () Bool)

(assert (=> b!5513219 (= e!3409445 call!407820)))

(declare-fun b!5513220 () Bool)

(declare-fun res!2349186 () Bool)

(declare-fun e!3409444 () Bool)

(assert (=> b!5513220 (=> res!2349186 e!3409444)))

(assert (=> b!5513220 (= res!2349186 call!407820)))

(assert (=> b!5513220 (= e!3409448 e!3409444)))

(declare-fun b!5513222 () Bool)

(declare-fun e!3409446 () Bool)

(assert (=> b!5513222 (= e!3409445 e!3409446)))

(declare-fun res!2349184 () Bool)

(assert (=> b!5513222 (= res!2349184 (not ((_ is EmptyLang!15499) (regTwo!31511 r!7292))))))

(assert (=> b!5513222 (=> (not res!2349184) (not e!3409446))))

(declare-fun bm!407814 () Bool)

(assert (=> bm!407814 (= call!407820 (isEmpty!34457 s!2326))))

(declare-fun c!963676 () Bool)

(declare-fun bm!407815 () Bool)

(assert (=> bm!407815 (= call!407819 (Exists!2599 (ite c!963676 lambda!295417 lambda!295419)))))

(declare-fun b!5513223 () Bool)

(declare-fun e!3409447 () Bool)

(assert (=> b!5513223 (= e!3409447 e!3409448)))

(assert (=> b!5513223 (= c!963676 ((_ is Star!15499) (regTwo!31511 r!7292)))))

(declare-fun b!5513224 () Bool)

(declare-fun e!3409449 () Bool)

(assert (=> b!5513224 (= e!3409447 e!3409449)))

(declare-fun res!2349185 () Bool)

(assert (=> b!5513224 (= res!2349185 (matchRSpec!2602 (regOne!31511 (regTwo!31511 r!7292)) s!2326))))

(assert (=> b!5513224 (=> res!2349185 e!3409449)))

(declare-fun b!5513225 () Bool)

(assert (=> b!5513225 (= e!3409449 (matchRSpec!2602 (regTwo!31511 (regTwo!31511 r!7292)) s!2326))))

(assert (=> b!5513226 (= e!3409444 call!407819)))

(declare-fun b!5513227 () Bool)

(declare-fun c!963673 () Bool)

(assert (=> b!5513227 (= c!963673 ((_ is Union!15499) (regTwo!31511 r!7292)))))

(declare-fun e!3409450 () Bool)

(assert (=> b!5513227 (= e!3409450 e!3409447)))

(declare-fun b!5513228 () Bool)

(assert (=> b!5513228 (= e!3409450 (= s!2326 (Cons!62673 (c!963233 (regTwo!31511 r!7292)) Nil!62673)))))

(declare-fun d!1746797 () Bool)

(declare-fun c!963674 () Bool)

(assert (=> d!1746797 (= c!963674 ((_ is EmptyExpr!15499) (regTwo!31511 r!7292)))))

(assert (=> d!1746797 (= (matchRSpec!2602 (regTwo!31511 r!7292) s!2326) e!3409445)))

(declare-fun b!5513221 () Bool)

(declare-fun c!963675 () Bool)

(assert (=> b!5513221 (= c!963675 ((_ is ElementMatch!15499) (regTwo!31511 r!7292)))))

(assert (=> b!5513221 (= e!3409446 e!3409450)))

(assert (= (and d!1746797 c!963674) b!5513219))

(assert (= (and d!1746797 (not c!963674)) b!5513222))

(assert (= (and b!5513222 res!2349184) b!5513221))

(assert (= (and b!5513221 c!963675) b!5513228))

(assert (= (and b!5513221 (not c!963675)) b!5513227))

(assert (= (and b!5513227 c!963673) b!5513224))

(assert (= (and b!5513227 (not c!963673)) b!5513223))

(assert (= (and b!5513224 (not res!2349185)) b!5513225))

(assert (= (and b!5513223 c!963676) b!5513220))

(assert (= (and b!5513223 (not c!963676)) b!5513218))

(assert (= (and b!5513220 (not res!2349186)) b!5513226))

(assert (= (or b!5513226 b!5513218) bm!407815))

(assert (= (or b!5513219 b!5513220) bm!407814))

(assert (=> bm!407814 m!6516994))

(declare-fun m!6517862 () Bool)

(assert (=> bm!407815 m!6517862))

(declare-fun m!6517864 () Bool)

(assert (=> b!5513224 m!6517864))

(declare-fun m!6517866 () Bool)

(assert (=> b!5513225 m!6517866))

(assert (=> b!5512363 d!1746797))

(declare-fun d!1746811 () Bool)

(assert (=> d!1746811 true))

(declare-fun setRes!36625 () Bool)

(assert (=> d!1746811 setRes!36625))

(declare-fun condSetEmpty!36625 () Bool)

(declare-fun res!2349193 () (InoxSet Context!9766))

(assert (=> d!1746811 (= condSetEmpty!36625 (= res!2349193 ((as const (Array Context!9766 Bool)) false)))))

(assert (=> d!1746811 (= (choose!41894 lt!2245390 lambda!295311) res!2349193)))

(declare-fun setIsEmpty!36625 () Bool)

(assert (=> setIsEmpty!36625 setRes!36625))

(declare-fun setNonEmpty!36625 () Bool)

(declare-fun tp!1516591 () Bool)

(declare-fun setElem!36625 () Context!9766)

(declare-fun e!3409466 () Bool)

(assert (=> setNonEmpty!36625 (= setRes!36625 (and tp!1516591 (inv!81994 setElem!36625) e!3409466))))

(declare-fun setRest!36625 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36625 (= res!2349193 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36625 true) setRest!36625))))

(declare-fun b!5513253 () Bool)

(declare-fun tp!1516590 () Bool)

(assert (=> b!5513253 (= e!3409466 tp!1516590)))

(assert (= (and d!1746811 condSetEmpty!36625) setIsEmpty!36625))

(assert (= (and d!1746811 (not condSetEmpty!36625)) setNonEmpty!36625))

(assert (= setNonEmpty!36625 b!5513253))

(declare-fun m!6517870 () Bool)

(assert (=> setNonEmpty!36625 m!6517870))

(assert (=> d!1746389 d!1746811))

(assert (=> b!5512403 d!1746711))

(assert (=> b!5512403 d!1746531))

(assert (=> b!5512222 d!1746331))

(declare-fun d!1746815 () Bool)

(declare-fun res!2349194 () Bool)

(declare-fun e!3409467 () Bool)

(assert (=> d!1746815 (=> res!2349194 e!3409467)))

(assert (=> d!1746815 (= res!2349194 ((_ is Nil!62672) (exprs!5383 (h!69122 zl!343))))))

(assert (=> d!1746815 (= (forall!14677 (exprs!5383 (h!69122 zl!343)) lambda!295358) e!3409467)))

(declare-fun b!5513254 () Bool)

(declare-fun e!3409468 () Bool)

(assert (=> b!5513254 (= e!3409467 e!3409468)))

(declare-fun res!2349195 () Bool)

(assert (=> b!5513254 (=> (not res!2349195) (not e!3409468))))

(assert (=> b!5513254 (= res!2349195 (dynLambda!24488 lambda!295358 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun b!5513255 () Bool)

(assert (=> b!5513255 (= e!3409468 (forall!14677 (t!376041 (exprs!5383 (h!69122 zl!343))) lambda!295358))))

(assert (= (and d!1746815 (not res!2349194)) b!5513254))

(assert (= (and b!5513254 res!2349195) b!5513255))

(declare-fun b_lambda!209015 () Bool)

(assert (=> (not b_lambda!209015) (not b!5513254)))

(declare-fun m!6517876 () Bool)

(assert (=> b!5513254 m!6517876))

(declare-fun m!6517878 () Bool)

(assert (=> b!5513255 m!6517878))

(assert (=> d!1746367 d!1746815))

(declare-fun bs!1270832 () Bool)

(declare-fun d!1746821 () Bool)

(assert (= bs!1270832 (and d!1746821 d!1746593)))

(declare-fun lambda!295421 () Int)

(assert (=> bs!1270832 (= lambda!295421 lambda!295396)))

(declare-fun bs!1270833 () Bool)

(assert (= bs!1270833 (and d!1746821 d!1746367)))

(assert (=> bs!1270833 (= lambda!295421 lambda!295358)))

(declare-fun bs!1270834 () Bool)

(assert (= bs!1270834 (and d!1746821 d!1746730)))

(assert (=> bs!1270834 (= lambda!295421 lambda!295414)))

(declare-fun bs!1270835 () Bool)

(assert (= bs!1270835 (and d!1746821 d!1746337)))

(assert (=> bs!1270835 (= lambda!295421 lambda!295354)))

(declare-fun bs!1270836 () Bool)

(assert (= bs!1270836 (and d!1746821 d!1746359)))

(assert (=> bs!1270836 (= lambda!295421 lambda!295357)))

(declare-fun bs!1270837 () Bool)

(assert (= bs!1270837 (and d!1746821 d!1746589)))

(assert (=> bs!1270837 (= lambda!295421 lambda!295395)))

(declare-fun bs!1270838 () Bool)

(assert (= bs!1270838 (and d!1746821 d!1746267)))

(assert (=> bs!1270838 (= lambda!295421 lambda!295323)))

(declare-fun bs!1270839 () Bool)

(assert (= bs!1270839 (and d!1746821 d!1746281)))

(assert (=> bs!1270839 (= lambda!295421 lambda!295326)))

(declare-fun bs!1270840 () Bool)

(assert (= bs!1270840 (and d!1746821 d!1746457)))

(assert (=> bs!1270840 (= lambda!295421 lambda!295377)))

(assert (=> d!1746821 (= (inv!81994 setElem!36615) (forall!14677 (exprs!5383 setElem!36615) lambda!295421))))

(declare-fun bs!1270841 () Bool)

(assert (= bs!1270841 d!1746821))

(declare-fun m!6517880 () Bool)

(assert (=> bs!1270841 m!6517880))

(assert (=> setNonEmpty!36615 d!1746821))

(declare-fun b!5513257 () Bool)

(declare-fun e!3409469 () List!62797)

(assert (=> b!5513257 (= e!3409469 (Cons!62673 (h!69121 (_1!35899 (get!21568 lt!2245489))) (++!13751 (t!376042 (_1!35899 (get!21568 lt!2245489))) (_2!35899 (get!21568 lt!2245489)))))))

(declare-fun b!5513258 () Bool)

(declare-fun res!2349197 () Bool)

(declare-fun e!3409470 () Bool)

(assert (=> b!5513258 (=> (not res!2349197) (not e!3409470))))

(declare-fun lt!2245544 () List!62797)

(assert (=> b!5513258 (= res!2349197 (= (size!39933 lt!2245544) (+ (size!39933 (_1!35899 (get!21568 lt!2245489))) (size!39933 (_2!35899 (get!21568 lt!2245489))))))))

(declare-fun d!1746823 () Bool)

(assert (=> d!1746823 e!3409470))

(declare-fun res!2349196 () Bool)

(assert (=> d!1746823 (=> (not res!2349196) (not e!3409470))))

(assert (=> d!1746823 (= res!2349196 (= (content!11263 lt!2245544) ((_ map or) (content!11263 (_1!35899 (get!21568 lt!2245489))) (content!11263 (_2!35899 (get!21568 lt!2245489))))))))

(assert (=> d!1746823 (= lt!2245544 e!3409469)))

(declare-fun c!963686 () Bool)

(assert (=> d!1746823 (= c!963686 ((_ is Nil!62673) (_1!35899 (get!21568 lt!2245489))))))

(assert (=> d!1746823 (= (++!13751 (_1!35899 (get!21568 lt!2245489)) (_2!35899 (get!21568 lt!2245489))) lt!2245544)))

(declare-fun b!5513256 () Bool)

(assert (=> b!5513256 (= e!3409469 (_2!35899 (get!21568 lt!2245489)))))

(declare-fun b!5513259 () Bool)

(assert (=> b!5513259 (= e!3409470 (or (not (= (_2!35899 (get!21568 lt!2245489)) Nil!62673)) (= lt!2245544 (_1!35899 (get!21568 lt!2245489)))))))

(assert (= (and d!1746823 c!963686) b!5513256))

(assert (= (and d!1746823 (not c!963686)) b!5513257))

(assert (= (and d!1746823 res!2349196) b!5513258))

(assert (= (and b!5513258 res!2349197) b!5513259))

(declare-fun m!6517882 () Bool)

(assert (=> b!5513257 m!6517882))

(declare-fun m!6517884 () Bool)

(assert (=> b!5513258 m!6517884))

(declare-fun m!6517886 () Bool)

(assert (=> b!5513258 m!6517886))

(declare-fun m!6517888 () Bool)

(assert (=> b!5513258 m!6517888))

(declare-fun m!6517890 () Bool)

(assert (=> d!1746823 m!6517890))

(declare-fun m!6517892 () Bool)

(assert (=> d!1746823 m!6517892))

(declare-fun m!6517894 () Bool)

(assert (=> d!1746823 m!6517894))

(assert (=> b!5512303 d!1746823))

(assert (=> b!5512303 d!1746485))

(assert (=> bm!407634 d!1746569))

(declare-fun b!5513260 () Bool)

(declare-fun c!963687 () Bool)

(declare-fun e!3409472 () Bool)

(assert (=> b!5513260 (= c!963687 e!3409472)))

(declare-fun res!2349198 () Bool)

(assert (=> b!5513260 (=> (not res!2349198) (not e!3409472))))

(assert (=> b!5513260 (= res!2349198 ((_ is Concat!24344) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))))))

(declare-fun e!3409475 () (InoxSet Context!9766))

(declare-fun e!3409473 () (InoxSet Context!9766))

(assert (=> b!5513260 (= e!3409475 e!3409473)))

(declare-fun bm!407825 () Bool)

(declare-fun call!407830 () (InoxSet Context!9766))

(declare-fun call!407833 () (InoxSet Context!9766))

(assert (=> bm!407825 (= call!407830 call!407833)))

(declare-fun b!5513261 () Bool)

(declare-fun e!3409474 () (InoxSet Context!9766))

(assert (=> b!5513261 (= e!3409474 call!407830)))

(declare-fun b!5513262 () Bool)

(assert (=> b!5513262 (= e!3409472 (nullable!5533 (regOne!31510 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))))))))

(declare-fun bm!407826 () Bool)

(declare-fun call!407835 () List!62796)

(declare-fun c!963688 () Bool)

(assert (=> bm!407826 (= call!407835 ($colon$colon!1582 (exprs!5383 (ite c!963402 lt!2245398 (Context!9767 call!407618))) (ite (or c!963687 c!963688) (regTwo!31510 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))))))))

(declare-fun b!5513263 () Bool)

(assert (=> b!5513263 (= e!3409474 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5513264 () Bool)

(declare-fun e!3409471 () (InoxSet Context!9766))

(assert (=> b!5513264 (= e!3409471 e!3409475)))

(declare-fun c!963690 () Bool)

(assert (=> b!5513264 (= c!963690 ((_ is Union!15499) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))))))

(declare-fun b!5513265 () Bool)

(declare-fun e!3409476 () (InoxSet Context!9766))

(assert (=> b!5513265 (= e!3409476 call!407830)))

(declare-fun b!5513266 () Bool)

(declare-fun call!407834 () (InoxSet Context!9766))

(declare-fun call!407831 () (InoxSet Context!9766))

(assert (=> b!5513266 (= e!3409475 ((_ map or) call!407834 call!407831))))

(declare-fun bm!407827 () Bool)

(assert (=> bm!407827 (= call!407834 (derivationStepZipperDown!841 (ite c!963690 (regOne!31511 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (regOne!31510 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))))) (ite c!963690 (ite c!963402 lt!2245398 (Context!9767 call!407618)) (Context!9767 call!407835)) (h!69121 s!2326)))))

(declare-fun b!5513268 () Bool)

(assert (=> b!5513268 (= e!3409473 ((_ map or) call!407834 call!407833))))

(declare-fun b!5513269 () Bool)

(declare-fun c!963691 () Bool)

(assert (=> b!5513269 (= c!963691 ((_ is Star!15499) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))))))

(assert (=> b!5513269 (= e!3409476 e!3409474)))

(declare-fun bm!407828 () Bool)

(declare-fun call!407832 () List!62796)

(assert (=> bm!407828 (= call!407831 (derivationStepZipperDown!841 (ite c!963690 (regTwo!31511 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (ite c!963687 (regTwo!31510 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (ite c!963688 (regOne!31510 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (reg!15828 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))))))) (ite (or c!963690 c!963687) (ite c!963402 lt!2245398 (Context!9767 call!407618)) (Context!9767 call!407832)) (h!69121 s!2326)))))

(declare-fun bm!407829 () Bool)

(assert (=> bm!407829 (= call!407832 call!407835)))

(declare-fun b!5513267 () Bool)

(assert (=> b!5513267 (= e!3409471 (store ((as const (Array Context!9766 Bool)) false) (ite c!963402 lt!2245398 (Context!9767 call!407618)) true))))

(declare-fun d!1746825 () Bool)

(declare-fun c!963689 () Bool)

(assert (=> d!1746825 (= c!963689 (and ((_ is ElementMatch!15499) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (= (c!963233 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))) (h!69121 s!2326))))))

(assert (=> d!1746825 (= (derivationStepZipperDown!841 (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292))) (ite c!963402 lt!2245398 (Context!9767 call!407618)) (h!69121 s!2326)) e!3409471)))

(declare-fun bm!407830 () Bool)

(assert (=> bm!407830 (= call!407833 call!407831)))

(declare-fun b!5513270 () Bool)

(assert (=> b!5513270 (= e!3409473 e!3409476)))

(assert (=> b!5513270 (= c!963688 ((_ is Concat!24344) (ite c!963402 (regOne!31511 (regTwo!31510 r!7292)) (regOne!31510 (regTwo!31510 r!7292)))))))

(assert (= (and d!1746825 c!963689) b!5513267))

(assert (= (and d!1746825 (not c!963689)) b!5513264))

(assert (= (and b!5513264 c!963690) b!5513266))

(assert (= (and b!5513264 (not c!963690)) b!5513260))

(assert (= (and b!5513260 res!2349198) b!5513262))

(assert (= (and b!5513260 c!963687) b!5513268))

(assert (= (and b!5513260 (not c!963687)) b!5513270))

(assert (= (and b!5513270 c!963688) b!5513265))

(assert (= (and b!5513270 (not c!963688)) b!5513269))

(assert (= (and b!5513269 c!963691) b!5513261))

(assert (= (and b!5513269 (not c!963691)) b!5513263))

(assert (= (or b!5513265 b!5513261) bm!407829))

(assert (= (or b!5513265 b!5513261) bm!407825))

(assert (= (or b!5513268 bm!407829) bm!407826))

(assert (= (or b!5513268 bm!407825) bm!407830))

(assert (= (or b!5513266 bm!407830) bm!407828))

(assert (= (or b!5513266 b!5513268) bm!407827))

(declare-fun m!6517896 () Bool)

(assert (=> b!5513267 m!6517896))

(declare-fun m!6517898 () Bool)

(assert (=> bm!407826 m!6517898))

(declare-fun m!6517900 () Bool)

(assert (=> b!5513262 m!6517900))

(declare-fun m!6517902 () Bool)

(assert (=> bm!407828 m!6517902))

(declare-fun m!6517904 () Bool)

(assert (=> bm!407827 m!6517904))

(assert (=> bm!407610 d!1746825))

(declare-fun b!5513271 () Bool)

(declare-fun c!963692 () Bool)

(declare-fun e!3409478 () Bool)

(assert (=> b!5513271 (= c!963692 e!3409478)))

(declare-fun res!2349199 () Bool)

(assert (=> b!5513271 (=> (not res!2349199) (not e!3409478))))

(assert (=> b!5513271 (= res!2349199 ((_ is Concat!24344) (h!69120 (exprs!5383 lt!2245401))))))

(declare-fun e!3409481 () (InoxSet Context!9766))

(declare-fun e!3409479 () (InoxSet Context!9766))

(assert (=> b!5513271 (= e!3409481 e!3409479)))

(declare-fun bm!407831 () Bool)

(declare-fun call!407836 () (InoxSet Context!9766))

(declare-fun call!407839 () (InoxSet Context!9766))

(assert (=> bm!407831 (= call!407836 call!407839)))

(declare-fun b!5513272 () Bool)

(declare-fun e!3409480 () (InoxSet Context!9766))

(assert (=> b!5513272 (= e!3409480 call!407836)))

(declare-fun b!5513273 () Bool)

(assert (=> b!5513273 (= e!3409478 (nullable!5533 (regOne!31510 (h!69120 (exprs!5383 lt!2245401)))))))

(declare-fun c!963693 () Bool)

(declare-fun bm!407832 () Bool)

(declare-fun call!407841 () List!62796)

(assert (=> bm!407832 (= call!407841 ($colon$colon!1582 (exprs!5383 (Context!9767 (t!376041 (exprs!5383 lt!2245401)))) (ite (or c!963692 c!963693) (regTwo!31510 (h!69120 (exprs!5383 lt!2245401))) (h!69120 (exprs!5383 lt!2245401)))))))

(declare-fun b!5513274 () Bool)

(assert (=> b!5513274 (= e!3409480 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5513275 () Bool)

(declare-fun e!3409477 () (InoxSet Context!9766))

(assert (=> b!5513275 (= e!3409477 e!3409481)))

(declare-fun c!963695 () Bool)

(assert (=> b!5513275 (= c!963695 ((_ is Union!15499) (h!69120 (exprs!5383 lt!2245401))))))

(declare-fun b!5513276 () Bool)

(declare-fun e!3409482 () (InoxSet Context!9766))

(assert (=> b!5513276 (= e!3409482 call!407836)))

(declare-fun b!5513277 () Bool)

(declare-fun call!407840 () (InoxSet Context!9766))

(declare-fun call!407837 () (InoxSet Context!9766))

(assert (=> b!5513277 (= e!3409481 ((_ map or) call!407840 call!407837))))

(declare-fun bm!407833 () Bool)

(assert (=> bm!407833 (= call!407840 (derivationStepZipperDown!841 (ite c!963695 (regOne!31511 (h!69120 (exprs!5383 lt!2245401))) (regOne!31510 (h!69120 (exprs!5383 lt!2245401)))) (ite c!963695 (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (Context!9767 call!407841)) (h!69121 s!2326)))))

(declare-fun b!5513279 () Bool)

(assert (=> b!5513279 (= e!3409479 ((_ map or) call!407840 call!407839))))

(declare-fun b!5513280 () Bool)

(declare-fun c!963696 () Bool)

(assert (=> b!5513280 (= c!963696 ((_ is Star!15499) (h!69120 (exprs!5383 lt!2245401))))))

(assert (=> b!5513280 (= e!3409482 e!3409480)))

(declare-fun call!407838 () List!62796)

(declare-fun bm!407834 () Bool)

(assert (=> bm!407834 (= call!407837 (derivationStepZipperDown!841 (ite c!963695 (regTwo!31511 (h!69120 (exprs!5383 lt!2245401))) (ite c!963692 (regTwo!31510 (h!69120 (exprs!5383 lt!2245401))) (ite c!963693 (regOne!31510 (h!69120 (exprs!5383 lt!2245401))) (reg!15828 (h!69120 (exprs!5383 lt!2245401)))))) (ite (or c!963695 c!963692) (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (Context!9767 call!407838)) (h!69121 s!2326)))))

(declare-fun bm!407835 () Bool)

(assert (=> bm!407835 (= call!407838 call!407841)))

(declare-fun b!5513278 () Bool)

(assert (=> b!5513278 (= e!3409477 (store ((as const (Array Context!9766 Bool)) false) (Context!9767 (t!376041 (exprs!5383 lt!2245401))) true))))

(declare-fun d!1746827 () Bool)

(declare-fun c!963694 () Bool)

(assert (=> d!1746827 (= c!963694 (and ((_ is ElementMatch!15499) (h!69120 (exprs!5383 lt!2245401))) (= (c!963233 (h!69120 (exprs!5383 lt!2245401))) (h!69121 s!2326))))))

(assert (=> d!1746827 (= (derivationStepZipperDown!841 (h!69120 (exprs!5383 lt!2245401)) (Context!9767 (t!376041 (exprs!5383 lt!2245401))) (h!69121 s!2326)) e!3409477)))

(declare-fun bm!407836 () Bool)

(assert (=> bm!407836 (= call!407839 call!407837)))

(declare-fun b!5513281 () Bool)

(assert (=> b!5513281 (= e!3409479 e!3409482)))

(assert (=> b!5513281 (= c!963693 ((_ is Concat!24344) (h!69120 (exprs!5383 lt!2245401))))))

(assert (= (and d!1746827 c!963694) b!5513278))

(assert (= (and d!1746827 (not c!963694)) b!5513275))

(assert (= (and b!5513275 c!963695) b!5513277))

(assert (= (and b!5513275 (not c!963695)) b!5513271))

(assert (= (and b!5513271 res!2349199) b!5513273))

(assert (= (and b!5513271 c!963692) b!5513279))

(assert (= (and b!5513271 (not c!963692)) b!5513281))

(assert (= (and b!5513281 c!963693) b!5513276))

(assert (= (and b!5513281 (not c!963693)) b!5513280))

(assert (= (and b!5513280 c!963696) b!5513272))

(assert (= (and b!5513280 (not c!963696)) b!5513274))

(assert (= (or b!5513276 b!5513272) bm!407835))

(assert (= (or b!5513276 b!5513272) bm!407831))

(assert (= (or b!5513279 bm!407835) bm!407832))

(assert (= (or b!5513279 bm!407831) bm!407836))

(assert (= (or b!5513277 bm!407836) bm!407834))

(assert (= (or b!5513277 b!5513279) bm!407833))

(declare-fun m!6517906 () Bool)

(assert (=> b!5513278 m!6517906))

(declare-fun m!6517908 () Bool)

(assert (=> bm!407832 m!6517908))

(declare-fun m!6517910 () Bool)

(assert (=> b!5513273 m!6517910))

(declare-fun m!6517912 () Bool)

(assert (=> bm!407834 m!6517912))

(declare-fun m!6517914 () Bool)

(assert (=> bm!407833 m!6517914))

(assert (=> bm!407607 d!1746827))

(declare-fun d!1746829 () Bool)

(declare-fun c!963697 () Bool)

(assert (=> d!1746829 (= c!963697 (isEmpty!34457 (t!376042 s!2326)))))

(declare-fun e!3409485 () Bool)

(assert (=> d!1746829 (= (matchZipper!1657 ((_ map or) lt!2245395 lt!2245397) (t!376042 s!2326)) e!3409485)))

(declare-fun b!5513286 () Bool)

(assert (=> b!5513286 (= e!3409485 (nullableZipper!1529 ((_ map or) lt!2245395 lt!2245397)))))

(declare-fun b!5513287 () Bool)

(assert (=> b!5513287 (= e!3409485 (matchZipper!1657 (derivationStepZipper!1604 ((_ map or) lt!2245395 lt!2245397) (head!11810 (t!376042 s!2326))) (tail!10905 (t!376042 s!2326))))))

(assert (= (and d!1746829 c!963697) b!5513286))

(assert (= (and d!1746829 (not c!963697)) b!5513287))

(assert (=> d!1746829 m!6516786))

(declare-fun m!6517916 () Bool)

(assert (=> b!5513286 m!6517916))

(assert (=> b!5513287 m!6516790))

(assert (=> b!5513287 m!6516790))

(declare-fun m!6517918 () Bool)

(assert (=> b!5513287 m!6517918))

(assert (=> b!5513287 m!6516794))

(assert (=> b!5513287 m!6517918))

(assert (=> b!5513287 m!6516794))

(declare-fun m!6517920 () Bool)

(assert (=> b!5513287 m!6517920))

(assert (=> d!1746375 d!1746829))

(assert (=> d!1746375 d!1746373))

(declare-fun e!3409490 () Bool)

(declare-fun d!1746831 () Bool)

(assert (=> d!1746831 (= (matchZipper!1657 ((_ map or) lt!2245395 lt!2245397) (t!376042 s!2326)) e!3409490)))

(declare-fun res!2349210 () Bool)

(assert (=> d!1746831 (=> res!2349210 e!3409490)))

(assert (=> d!1746831 (= res!2349210 (matchZipper!1657 lt!2245395 (t!376042 s!2326)))))

(assert (=> d!1746831 true))

(declare-fun _$48!1072 () Unit!155458)

(assert (=> d!1746831 (= (choose!41898 lt!2245395 lt!2245397 (t!376042 s!2326)) _$48!1072)))

(declare-fun b!5513294 () Bool)

(assert (=> b!5513294 (= e!3409490 (matchZipper!1657 lt!2245397 (t!376042 s!2326)))))

(assert (= (and d!1746831 (not res!2349210)) b!5513294))

(assert (=> d!1746831 m!6516896))

(assert (=> d!1746831 m!6516540))

(assert (=> b!5513294 m!6516476))

(assert (=> d!1746375 d!1746831))

(declare-fun bs!1270846 () Bool)

(declare-fun d!1746833 () Bool)

(assert (= bs!1270846 (and d!1746833 d!1746607)))

(declare-fun lambda!295427 () Int)

(assert (=> bs!1270846 (= lambda!295427 lambda!295399)))

(declare-fun bs!1270848 () Bool)

(assert (= bs!1270848 (and d!1746833 d!1746791)))

(assert (=> bs!1270848 (= lambda!295427 lambda!295416)))

(assert (=> d!1746833 (= (nullableZipper!1529 lt!2245411) (exists!2135 lt!2245411 lambda!295427))))

(declare-fun bs!1270850 () Bool)

(assert (= bs!1270850 d!1746833))

(declare-fun m!6517922 () Bool)

(assert (=> bs!1270850 m!6517922))

(assert (=> b!5512216 d!1746833))

(declare-fun d!1746835 () Bool)

(assert (=> d!1746835 (= (nullable!5533 (h!69120 (exprs!5383 (h!69122 zl!343)))) (nullableFct!1661 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun bs!1270852 () Bool)

(assert (= bs!1270852 d!1746835))

(declare-fun m!6517924 () Bool)

(assert (=> bs!1270852 m!6517924))

(assert (=> b!5512004 d!1746835))

(declare-fun bs!1270854 () Bool)

(declare-fun d!1746837 () Bool)

(assert (= bs!1270854 (and d!1746837 d!1746607)))

(declare-fun lambda!295428 () Int)

(assert (=> bs!1270854 (= lambda!295428 lambda!295399)))

(declare-fun bs!1270855 () Bool)

(assert (= bs!1270855 (and d!1746837 d!1746791)))

(assert (=> bs!1270855 (= lambda!295428 lambda!295416)))

(declare-fun bs!1270857 () Bool)

(assert (= bs!1270857 (and d!1746837 d!1746833)))

(assert (=> bs!1270857 (= lambda!295428 lambda!295427)))

(assert (=> d!1746837 (= (nullableZipper!1529 lt!2245397) (exists!2135 lt!2245397 lambda!295428))))

(declare-fun bs!1270859 () Bool)

(assert (= bs!1270859 d!1746837))

(declare-fun m!6517926 () Bool)

(assert (=> bs!1270859 m!6517926))

(assert (=> b!5512082 d!1746837))

(declare-fun d!1746839 () Bool)

(declare-fun res!2349211 () Bool)

(declare-fun e!3409491 () Bool)

(assert (=> d!1746839 (=> res!2349211 e!3409491)))

(assert (=> d!1746839 (= res!2349211 ((_ is Nil!62672) (exprs!5383 setElem!36609)))))

(assert (=> d!1746839 (= (forall!14677 (exprs!5383 setElem!36609) lambda!295326) e!3409491)))

(declare-fun b!5513295 () Bool)

(declare-fun e!3409492 () Bool)

(assert (=> b!5513295 (= e!3409491 e!3409492)))

(declare-fun res!2349212 () Bool)

(assert (=> b!5513295 (=> (not res!2349212) (not e!3409492))))

(assert (=> b!5513295 (= res!2349212 (dynLambda!24488 lambda!295326 (h!69120 (exprs!5383 setElem!36609))))))

(declare-fun b!5513296 () Bool)

(assert (=> b!5513296 (= e!3409492 (forall!14677 (t!376041 (exprs!5383 setElem!36609)) lambda!295326))))

(assert (= (and d!1746839 (not res!2349211)) b!5513295))

(assert (= (and b!5513295 res!2349212) b!5513296))

(declare-fun b_lambda!209017 () Bool)

(assert (=> (not b_lambda!209017) (not b!5513295)))

(declare-fun m!6517928 () Bool)

(assert (=> b!5513295 m!6517928))

(declare-fun m!6517930 () Bool)

(assert (=> b!5513296 m!6517930))

(assert (=> d!1746281 d!1746839))

(declare-fun b!5513297 () Bool)

(declare-fun c!963698 () Bool)

(declare-fun e!3409494 () Bool)

(assert (=> b!5513297 (= c!963698 e!3409494)))

(declare-fun res!2349213 () Bool)

(assert (=> b!5513297 (=> (not res!2349213) (not e!3409494))))

(assert (=> b!5513297 (= res!2349213 ((_ is Concat!24344) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))))))

(declare-fun e!3409497 () (InoxSet Context!9766))

(declare-fun e!3409495 () (InoxSet Context!9766))

(assert (=> b!5513297 (= e!3409497 e!3409495)))

(declare-fun bm!407837 () Bool)

(declare-fun call!407842 () (InoxSet Context!9766))

(declare-fun call!407845 () (InoxSet Context!9766))

(assert (=> bm!407837 (= call!407842 call!407845)))

(declare-fun b!5513298 () Bool)

(declare-fun e!3409496 () (InoxSet Context!9766))

(assert (=> b!5513298 (= e!3409496 call!407842)))

(declare-fun b!5513299 () Bool)

(assert (=> b!5513299 (= e!3409494 (nullable!5533 (regOne!31510 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))))))))

(declare-fun bm!407838 () Bool)

(declare-fun call!407847 () List!62796)

(declare-fun c!963699 () Bool)

(assert (=> bm!407838 (= call!407847 ($colon$colon!1582 (exprs!5383 (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615))) (ite (or c!963698 c!963699) (regTwo!31510 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))))))))

(declare-fun b!5513300 () Bool)

(assert (=> b!5513300 (= e!3409496 ((as const (Array Context!9766 Bool)) false))))

(declare-fun b!5513301 () Bool)

(declare-fun e!3409493 () (InoxSet Context!9766))

(assert (=> b!5513301 (= e!3409493 e!3409497)))

(declare-fun c!963701 () Bool)

(assert (=> b!5513301 (= c!963701 ((_ is Union!15499) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))))))

(declare-fun b!5513302 () Bool)

(declare-fun e!3409498 () (InoxSet Context!9766))

(assert (=> b!5513302 (= e!3409498 call!407842)))

(declare-fun b!5513303 () Bool)

(declare-fun call!407846 () (InoxSet Context!9766))

(declare-fun call!407843 () (InoxSet Context!9766))

(assert (=> b!5513303 (= e!3409497 ((_ map or) call!407846 call!407843))))

(declare-fun bm!407839 () Bool)

(assert (=> bm!407839 (= call!407846 (derivationStepZipperDown!841 (ite c!963701 (regOne!31511 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (regOne!31510 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))))) (ite c!963701 (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615)) (Context!9767 call!407847)) (h!69121 s!2326)))))

(declare-fun b!5513305 () Bool)

(assert (=> b!5513305 (= e!3409495 ((_ map or) call!407846 call!407845))))

(declare-fun b!5513306 () Bool)

(declare-fun c!963702 () Bool)

(assert (=> b!5513306 (= c!963702 ((_ is Star!15499) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))))))

(assert (=> b!5513306 (= e!3409498 e!3409496)))

(declare-fun call!407844 () List!62796)

(declare-fun bm!407840 () Bool)

(assert (=> bm!407840 (= call!407843 (derivationStepZipperDown!841 (ite c!963701 (regTwo!31511 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (ite c!963698 (regTwo!31510 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (ite c!963699 (regOne!31510 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (reg!15828 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))))))) (ite (or c!963701 c!963698) (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615)) (Context!9767 call!407844)) (h!69121 s!2326)))))

(declare-fun bm!407841 () Bool)

(assert (=> bm!407841 (= call!407844 call!407847)))

(declare-fun b!5513304 () Bool)

(assert (=> b!5513304 (= e!3409493 (store ((as const (Array Context!9766 Bool)) false) (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615)) true))))

(declare-fun d!1746841 () Bool)

(declare-fun c!963700 () Bool)

(assert (=> d!1746841 (= c!963700 (and ((_ is ElementMatch!15499) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (= (c!963233 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))) (h!69121 s!2326))))))

(assert (=> d!1746841 (= (derivationStepZipperDown!841 (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292))))) (ite (or c!963402 c!963399) lt!2245398 (Context!9767 call!407615)) (h!69121 s!2326)) e!3409493)))

(declare-fun bm!407842 () Bool)

(assert (=> bm!407842 (= call!407845 call!407843)))

(declare-fun b!5513307 () Bool)

(assert (=> b!5513307 (= e!3409495 e!3409498)))

(assert (=> b!5513307 (= c!963699 ((_ is Concat!24344) (ite c!963402 (regTwo!31511 (regTwo!31510 r!7292)) (ite c!963399 (regTwo!31510 (regTwo!31510 r!7292)) (ite c!963400 (regOne!31510 (regTwo!31510 r!7292)) (reg!15828 (regTwo!31510 r!7292)))))))))

(assert (= (and d!1746841 c!963700) b!5513304))

(assert (= (and d!1746841 (not c!963700)) b!5513301))

(assert (= (and b!5513301 c!963701) b!5513303))

(assert (= (and b!5513301 (not c!963701)) b!5513297))

(assert (= (and b!5513297 res!2349213) b!5513299))

(assert (= (and b!5513297 c!963698) b!5513305))

(assert (= (and b!5513297 (not c!963698)) b!5513307))

(assert (= (and b!5513307 c!963699) b!5513302))

(assert (= (and b!5513307 (not c!963699)) b!5513306))

(assert (= (and b!5513306 c!963702) b!5513298))

(assert (= (and b!5513306 (not c!963702)) b!5513300))

(assert (= (or b!5513302 b!5513298) bm!407841))

(assert (= (or b!5513302 b!5513298) bm!407837))

(assert (= (or b!5513305 bm!407841) bm!407838))

(assert (= (or b!5513305 bm!407837) bm!407842))

(assert (= (or b!5513303 bm!407842) bm!407840))

(assert (= (or b!5513303 b!5513305) bm!407839))

(declare-fun m!6517932 () Bool)

(assert (=> b!5513304 m!6517932))

(declare-fun m!6517934 () Bool)

(assert (=> bm!407838 m!6517934))

(declare-fun m!6517936 () Bool)

(assert (=> b!5513299 m!6517936))

(declare-fun m!6517938 () Bool)

(assert (=> bm!407840 m!6517938))

(declare-fun m!6517940 () Bool)

(assert (=> bm!407839 m!6517940))

(assert (=> bm!407611 d!1746841))

(declare-fun d!1746843 () Bool)

(assert (=> d!1746843 (= (isEmpty!34453 (unfocusZipperList!927 zl!343)) ((_ is Nil!62672) (unfocusZipperList!927 zl!343)))))

(assert (=> b!5512183 d!1746843))

(assert (=> b!5512396 d!1746497))

(declare-fun b!5513309 () Bool)

(declare-fun e!3409500 () Bool)

(declare-fun tp!1516592 () Bool)

(assert (=> b!5513309 (= e!3409500 tp!1516592)))

(declare-fun e!3409499 () Bool)

(declare-fun tp!1516593 () Bool)

(declare-fun b!5513308 () Bool)

(assert (=> b!5513308 (= e!3409499 (and (inv!81994 (h!69122 (t!376043 (t!376043 zl!343)))) e!3409500 tp!1516593))))

(assert (=> b!5512461 (= tp!1516559 e!3409499)))

(assert (= b!5513308 b!5513309))

(assert (= (and b!5512461 ((_ is Cons!62674) (t!376043 (t!376043 zl!343)))) b!5513308))

(declare-fun m!6517946 () Bool)

(assert (=> b!5513308 m!6517946))

(declare-fun e!3409507 () Bool)

(assert (=> b!5512437 (= tp!1516530 e!3409507)))

(declare-fun b!5513323 () Bool)

(declare-fun tp!1516595 () Bool)

(assert (=> b!5513323 (= e!3409507 tp!1516595)))

(declare-fun b!5513321 () Bool)

(assert (=> b!5513321 (= e!3409507 tp_is_empty!40251)))

(declare-fun b!5513324 () Bool)

(declare-fun tp!1516597 () Bool)

(declare-fun tp!1516598 () Bool)

(assert (=> b!5513324 (= e!3409507 (and tp!1516597 tp!1516598))))

(declare-fun b!5513322 () Bool)

(declare-fun tp!1516596 () Bool)

(declare-fun tp!1516594 () Bool)

(assert (=> b!5513322 (= e!3409507 (and tp!1516596 tp!1516594))))

(assert (= (and b!5512437 ((_ is ElementMatch!15499) (reg!15828 (regOne!31510 r!7292)))) b!5513321))

(assert (= (and b!5512437 ((_ is Concat!24344) (reg!15828 (regOne!31510 r!7292)))) b!5513322))

(assert (= (and b!5512437 ((_ is Star!15499) (reg!15828 (regOne!31510 r!7292)))) b!5513323))

(assert (= (and b!5512437 ((_ is Union!15499) (reg!15828 (regOne!31510 r!7292)))) b!5513324))

(declare-fun e!3409508 () Bool)

(assert (=> b!5512446 (= tp!1516542 e!3409508)))

(declare-fun b!5513327 () Bool)

(declare-fun tp!1516600 () Bool)

(assert (=> b!5513327 (= e!3409508 tp!1516600)))

(declare-fun b!5513325 () Bool)

(assert (=> b!5513325 (= e!3409508 tp_is_empty!40251)))

(declare-fun b!5513328 () Bool)

(declare-fun tp!1516602 () Bool)

(declare-fun tp!1516603 () Bool)

(assert (=> b!5513328 (= e!3409508 (and tp!1516602 tp!1516603))))

(declare-fun b!5513326 () Bool)

(declare-fun tp!1516601 () Bool)

(declare-fun tp!1516599 () Bool)

(assert (=> b!5513326 (= e!3409508 (and tp!1516601 tp!1516599))))

(assert (= (and b!5512446 ((_ is ElementMatch!15499) (regOne!31511 (regOne!31511 r!7292)))) b!5513325))

(assert (= (and b!5512446 ((_ is Concat!24344) (regOne!31511 (regOne!31511 r!7292)))) b!5513326))

(assert (= (and b!5512446 ((_ is Star!15499) (regOne!31511 (regOne!31511 r!7292)))) b!5513327))

(assert (= (and b!5512446 ((_ is Union!15499) (regOne!31511 (regOne!31511 r!7292)))) b!5513328))

(declare-fun e!3409509 () Bool)

(assert (=> b!5512446 (= tp!1516543 e!3409509)))

(declare-fun b!5513331 () Bool)

(declare-fun tp!1516605 () Bool)

(assert (=> b!5513331 (= e!3409509 tp!1516605)))

(declare-fun b!5513329 () Bool)

(assert (=> b!5513329 (= e!3409509 tp_is_empty!40251)))

(declare-fun b!5513332 () Bool)

(declare-fun tp!1516607 () Bool)

(declare-fun tp!1516608 () Bool)

(assert (=> b!5513332 (= e!3409509 (and tp!1516607 tp!1516608))))

(declare-fun b!5513330 () Bool)

(declare-fun tp!1516606 () Bool)

(declare-fun tp!1516604 () Bool)

(assert (=> b!5513330 (= e!3409509 (and tp!1516606 tp!1516604))))

(assert (= (and b!5512446 ((_ is ElementMatch!15499) (regTwo!31511 (regOne!31511 r!7292)))) b!5513329))

(assert (= (and b!5512446 ((_ is Concat!24344) (regTwo!31511 (regOne!31511 r!7292)))) b!5513330))

(assert (= (and b!5512446 ((_ is Star!15499) (regTwo!31511 (regOne!31511 r!7292)))) b!5513331))

(assert (= (and b!5512446 ((_ is Union!15499) (regTwo!31511 (regOne!31511 r!7292)))) b!5513332))

(declare-fun e!3409510 () Bool)

(assert (=> b!5512436 (= tp!1516531 e!3409510)))

(declare-fun b!5513335 () Bool)

(declare-fun tp!1516610 () Bool)

(assert (=> b!5513335 (= e!3409510 tp!1516610)))

(declare-fun b!5513333 () Bool)

(assert (=> b!5513333 (= e!3409510 tp_is_empty!40251)))

(declare-fun b!5513336 () Bool)

(declare-fun tp!1516612 () Bool)

(declare-fun tp!1516613 () Bool)

(assert (=> b!5513336 (= e!3409510 (and tp!1516612 tp!1516613))))

(declare-fun b!5513334 () Bool)

(declare-fun tp!1516611 () Bool)

(declare-fun tp!1516609 () Bool)

(assert (=> b!5513334 (= e!3409510 (and tp!1516611 tp!1516609))))

(assert (= (and b!5512436 ((_ is ElementMatch!15499) (regOne!31510 (regOne!31510 r!7292)))) b!5513333))

(assert (= (and b!5512436 ((_ is Concat!24344) (regOne!31510 (regOne!31510 r!7292)))) b!5513334))

(assert (= (and b!5512436 ((_ is Star!15499) (regOne!31510 (regOne!31510 r!7292)))) b!5513335))

(assert (= (and b!5512436 ((_ is Union!15499) (regOne!31510 (regOne!31510 r!7292)))) b!5513336))

(declare-fun e!3409511 () Bool)

(assert (=> b!5512436 (= tp!1516529 e!3409511)))

(declare-fun b!5513339 () Bool)

(declare-fun tp!1516615 () Bool)

(assert (=> b!5513339 (= e!3409511 tp!1516615)))

(declare-fun b!5513337 () Bool)

(assert (=> b!5513337 (= e!3409511 tp_is_empty!40251)))

(declare-fun b!5513340 () Bool)

(declare-fun tp!1516617 () Bool)

(declare-fun tp!1516618 () Bool)

(assert (=> b!5513340 (= e!3409511 (and tp!1516617 tp!1516618))))

(declare-fun b!5513338 () Bool)

(declare-fun tp!1516616 () Bool)

(declare-fun tp!1516614 () Bool)

(assert (=> b!5513338 (= e!3409511 (and tp!1516616 tp!1516614))))

(assert (= (and b!5512436 ((_ is ElementMatch!15499) (regTwo!31510 (regOne!31510 r!7292)))) b!5513337))

(assert (= (and b!5512436 ((_ is Concat!24344) (regTwo!31510 (regOne!31510 r!7292)))) b!5513338))

(assert (= (and b!5512436 ((_ is Star!15499) (regTwo!31510 (regOne!31510 r!7292)))) b!5513339))

(assert (= (and b!5512436 ((_ is Union!15499) (regTwo!31510 (regOne!31510 r!7292)))) b!5513340))

(declare-fun e!3409512 () Bool)

(assert (=> b!5512445 (= tp!1516540 e!3409512)))

(declare-fun b!5513343 () Bool)

(declare-fun tp!1516620 () Bool)

(assert (=> b!5513343 (= e!3409512 tp!1516620)))

(declare-fun b!5513341 () Bool)

(assert (=> b!5513341 (= e!3409512 tp_is_empty!40251)))

(declare-fun b!5513344 () Bool)

(declare-fun tp!1516622 () Bool)

(declare-fun tp!1516623 () Bool)

(assert (=> b!5513344 (= e!3409512 (and tp!1516622 tp!1516623))))

(declare-fun b!5513342 () Bool)

(declare-fun tp!1516621 () Bool)

(declare-fun tp!1516619 () Bool)

(assert (=> b!5513342 (= e!3409512 (and tp!1516621 tp!1516619))))

(assert (= (and b!5512445 ((_ is ElementMatch!15499) (reg!15828 (regOne!31511 r!7292)))) b!5513341))

(assert (= (and b!5512445 ((_ is Concat!24344) (reg!15828 (regOne!31511 r!7292)))) b!5513342))

(assert (= (and b!5512445 ((_ is Star!15499) (reg!15828 (regOne!31511 r!7292)))) b!5513343))

(assert (= (and b!5512445 ((_ is Union!15499) (reg!15828 (regOne!31511 r!7292)))) b!5513344))

(declare-fun e!3409513 () Bool)

(assert (=> b!5512454 (= tp!1516552 e!3409513)))

(declare-fun b!5513347 () Bool)

(declare-fun tp!1516625 () Bool)

(assert (=> b!5513347 (= e!3409513 tp!1516625)))

(declare-fun b!5513345 () Bool)

(assert (=> b!5513345 (= e!3409513 tp_is_empty!40251)))

(declare-fun b!5513348 () Bool)

(declare-fun tp!1516627 () Bool)

(declare-fun tp!1516628 () Bool)

(assert (=> b!5513348 (= e!3409513 (and tp!1516627 tp!1516628))))

(declare-fun b!5513346 () Bool)

(declare-fun tp!1516626 () Bool)

(declare-fun tp!1516624 () Bool)

(assert (=> b!5513346 (= e!3409513 (and tp!1516626 tp!1516624))))

(assert (= (and b!5512454 ((_ is ElementMatch!15499) (regOne!31511 (reg!15828 r!7292)))) b!5513345))

(assert (= (and b!5512454 ((_ is Concat!24344) (regOne!31511 (reg!15828 r!7292)))) b!5513346))

(assert (= (and b!5512454 ((_ is Star!15499) (regOne!31511 (reg!15828 r!7292)))) b!5513347))

(assert (= (and b!5512454 ((_ is Union!15499) (regOne!31511 (reg!15828 r!7292)))) b!5513348))

(declare-fun e!3409517 () Bool)

(assert (=> b!5512454 (= tp!1516553 e!3409517)))

(declare-fun b!5513356 () Bool)

(declare-fun tp!1516630 () Bool)

(assert (=> b!5513356 (= e!3409517 tp!1516630)))

(declare-fun b!5513354 () Bool)

(assert (=> b!5513354 (= e!3409517 tp_is_empty!40251)))

(declare-fun b!5513357 () Bool)

(declare-fun tp!1516632 () Bool)

(declare-fun tp!1516633 () Bool)

(assert (=> b!5513357 (= e!3409517 (and tp!1516632 tp!1516633))))

(declare-fun b!5513355 () Bool)

(declare-fun tp!1516631 () Bool)

(declare-fun tp!1516629 () Bool)

(assert (=> b!5513355 (= e!3409517 (and tp!1516631 tp!1516629))))

(assert (= (and b!5512454 ((_ is ElementMatch!15499) (regTwo!31511 (reg!15828 r!7292)))) b!5513354))

(assert (= (and b!5512454 ((_ is Concat!24344) (regTwo!31511 (reg!15828 r!7292)))) b!5513355))

(assert (= (and b!5512454 ((_ is Star!15499) (regTwo!31511 (reg!15828 r!7292)))) b!5513356))

(assert (= (and b!5512454 ((_ is Union!15499) (regTwo!31511 (reg!15828 r!7292)))) b!5513357))

(declare-fun e!3409518 () Bool)

(assert (=> b!5512444 (= tp!1516541 e!3409518)))

(declare-fun b!5513360 () Bool)

(declare-fun tp!1516635 () Bool)

(assert (=> b!5513360 (= e!3409518 tp!1516635)))

(declare-fun b!5513358 () Bool)

(assert (=> b!5513358 (= e!3409518 tp_is_empty!40251)))

(declare-fun b!5513361 () Bool)

(declare-fun tp!1516637 () Bool)

(declare-fun tp!1516638 () Bool)

(assert (=> b!5513361 (= e!3409518 (and tp!1516637 tp!1516638))))

(declare-fun b!5513359 () Bool)

(declare-fun tp!1516636 () Bool)

(declare-fun tp!1516634 () Bool)

(assert (=> b!5513359 (= e!3409518 (and tp!1516636 tp!1516634))))

(assert (= (and b!5512444 ((_ is ElementMatch!15499) (regOne!31510 (regOne!31511 r!7292)))) b!5513358))

(assert (= (and b!5512444 ((_ is Concat!24344) (regOne!31510 (regOne!31511 r!7292)))) b!5513359))

(assert (= (and b!5512444 ((_ is Star!15499) (regOne!31510 (regOne!31511 r!7292)))) b!5513360))

(assert (= (and b!5512444 ((_ is Union!15499) (regOne!31510 (regOne!31511 r!7292)))) b!5513361))

(declare-fun e!3409519 () Bool)

(assert (=> b!5512444 (= tp!1516539 e!3409519)))

(declare-fun b!5513364 () Bool)

(declare-fun tp!1516640 () Bool)

(assert (=> b!5513364 (= e!3409519 tp!1516640)))

(declare-fun b!5513362 () Bool)

(assert (=> b!5513362 (= e!3409519 tp_is_empty!40251)))

(declare-fun b!5513365 () Bool)

(declare-fun tp!1516642 () Bool)

(declare-fun tp!1516643 () Bool)

(assert (=> b!5513365 (= e!3409519 (and tp!1516642 tp!1516643))))

(declare-fun b!5513363 () Bool)

(declare-fun tp!1516641 () Bool)

(declare-fun tp!1516639 () Bool)

(assert (=> b!5513363 (= e!3409519 (and tp!1516641 tp!1516639))))

(assert (= (and b!5512444 ((_ is ElementMatch!15499) (regTwo!31510 (regOne!31511 r!7292)))) b!5513362))

(assert (= (and b!5512444 ((_ is Concat!24344) (regTwo!31510 (regOne!31511 r!7292)))) b!5513363))

(assert (= (and b!5512444 ((_ is Star!15499) (regTwo!31510 (regOne!31511 r!7292)))) b!5513364))

(assert (= (and b!5512444 ((_ is Union!15499) (regTwo!31510 (regOne!31511 r!7292)))) b!5513365))

(declare-fun e!3409520 () Bool)

(assert (=> b!5512453 (= tp!1516550 e!3409520)))

(declare-fun b!5513368 () Bool)

(declare-fun tp!1516645 () Bool)

(assert (=> b!5513368 (= e!3409520 tp!1516645)))

(declare-fun b!5513366 () Bool)

(assert (=> b!5513366 (= e!3409520 tp_is_empty!40251)))

(declare-fun b!5513369 () Bool)

(declare-fun tp!1516647 () Bool)

(declare-fun tp!1516648 () Bool)

(assert (=> b!5513369 (= e!3409520 (and tp!1516647 tp!1516648))))

(declare-fun b!5513367 () Bool)

(declare-fun tp!1516646 () Bool)

(declare-fun tp!1516644 () Bool)

(assert (=> b!5513367 (= e!3409520 (and tp!1516646 tp!1516644))))

(assert (= (and b!5512453 ((_ is ElementMatch!15499) (reg!15828 (reg!15828 r!7292)))) b!5513366))

(assert (= (and b!5512453 ((_ is Concat!24344) (reg!15828 (reg!15828 r!7292)))) b!5513367))

(assert (= (and b!5512453 ((_ is Star!15499) (reg!15828 (reg!15828 r!7292)))) b!5513368))

(assert (= (and b!5512453 ((_ is Union!15499) (reg!15828 (reg!15828 r!7292)))) b!5513369))

(declare-fun e!3409528 () Bool)

(assert (=> b!5512452 (= tp!1516551 e!3409528)))

(declare-fun b!5513386 () Bool)

(declare-fun tp!1516650 () Bool)

(assert (=> b!5513386 (= e!3409528 tp!1516650)))

(declare-fun b!5513384 () Bool)

(assert (=> b!5513384 (= e!3409528 tp_is_empty!40251)))

(declare-fun b!5513387 () Bool)

(declare-fun tp!1516652 () Bool)

(declare-fun tp!1516653 () Bool)

(assert (=> b!5513387 (= e!3409528 (and tp!1516652 tp!1516653))))

(declare-fun b!5513385 () Bool)

(declare-fun tp!1516651 () Bool)

(declare-fun tp!1516649 () Bool)

(assert (=> b!5513385 (= e!3409528 (and tp!1516651 tp!1516649))))

(assert (= (and b!5512452 ((_ is ElementMatch!15499) (regOne!31510 (reg!15828 r!7292)))) b!5513384))

(assert (= (and b!5512452 ((_ is Concat!24344) (regOne!31510 (reg!15828 r!7292)))) b!5513385))

(assert (= (and b!5512452 ((_ is Star!15499) (regOne!31510 (reg!15828 r!7292)))) b!5513386))

(assert (= (and b!5512452 ((_ is Union!15499) (regOne!31510 (reg!15828 r!7292)))) b!5513387))

(declare-fun e!3409529 () Bool)

(assert (=> b!5512452 (= tp!1516549 e!3409529)))

(declare-fun b!5513390 () Bool)

(declare-fun tp!1516655 () Bool)

(assert (=> b!5513390 (= e!3409529 tp!1516655)))

(declare-fun b!5513388 () Bool)

(assert (=> b!5513388 (= e!3409529 tp_is_empty!40251)))

(declare-fun b!5513391 () Bool)

(declare-fun tp!1516657 () Bool)

(declare-fun tp!1516658 () Bool)

(assert (=> b!5513391 (= e!3409529 (and tp!1516657 tp!1516658))))

(declare-fun b!5513389 () Bool)

(declare-fun tp!1516656 () Bool)

(declare-fun tp!1516654 () Bool)

(assert (=> b!5513389 (= e!3409529 (and tp!1516656 tp!1516654))))

(assert (= (and b!5512452 ((_ is ElementMatch!15499) (regTwo!31510 (reg!15828 r!7292)))) b!5513388))

(assert (= (and b!5512452 ((_ is Concat!24344) (regTwo!31510 (reg!15828 r!7292)))) b!5513389))

(assert (= (and b!5512452 ((_ is Star!15499) (regTwo!31510 (reg!15828 r!7292)))) b!5513390))

(assert (= (and b!5512452 ((_ is Union!15499) (regTwo!31510 (reg!15828 r!7292)))) b!5513391))

(declare-fun e!3409530 () Bool)

(assert (=> b!5512413 (= tp!1516506 e!3409530)))

(declare-fun b!5513394 () Bool)

(declare-fun tp!1516660 () Bool)

(assert (=> b!5513394 (= e!3409530 tp!1516660)))

(declare-fun b!5513392 () Bool)

(assert (=> b!5513392 (= e!3409530 tp_is_empty!40251)))

(declare-fun b!5513395 () Bool)

(declare-fun tp!1516662 () Bool)

(declare-fun tp!1516663 () Bool)

(assert (=> b!5513395 (= e!3409530 (and tp!1516662 tp!1516663))))

(declare-fun b!5513393 () Bool)

(declare-fun tp!1516661 () Bool)

(declare-fun tp!1516659 () Bool)

(assert (=> b!5513393 (= e!3409530 (and tp!1516661 tp!1516659))))

(assert (= (and b!5512413 ((_ is ElementMatch!15499) (h!69120 (exprs!5383 (h!69122 zl!343))))) b!5513392))

(assert (= (and b!5512413 ((_ is Concat!24344) (h!69120 (exprs!5383 (h!69122 zl!343))))) b!5513393))

(assert (= (and b!5512413 ((_ is Star!15499) (h!69120 (exprs!5383 (h!69122 zl!343))))) b!5513394))

(assert (= (and b!5512413 ((_ is Union!15499) (h!69120 (exprs!5383 (h!69122 zl!343))))) b!5513395))

(declare-fun b!5513396 () Bool)

(declare-fun e!3409531 () Bool)

(declare-fun tp!1516664 () Bool)

(declare-fun tp!1516665 () Bool)

(assert (=> b!5513396 (= e!3409531 (and tp!1516664 tp!1516665))))

(assert (=> b!5512413 (= tp!1516507 e!3409531)))

(assert (= (and b!5512413 ((_ is Cons!62672) (t!376041 (exprs!5383 (h!69122 zl!343))))) b!5513396))

(declare-fun e!3409532 () Bool)

(assert (=> b!5512442 (= tp!1516537 e!3409532)))

(declare-fun b!5513399 () Bool)

(declare-fun tp!1516667 () Bool)

(assert (=> b!5513399 (= e!3409532 tp!1516667)))

(declare-fun b!5513397 () Bool)

(assert (=> b!5513397 (= e!3409532 tp_is_empty!40251)))

(declare-fun b!5513400 () Bool)

(declare-fun tp!1516669 () Bool)

(declare-fun tp!1516670 () Bool)

(assert (=> b!5513400 (= e!3409532 (and tp!1516669 tp!1516670))))

(declare-fun b!5513398 () Bool)

(declare-fun tp!1516668 () Bool)

(declare-fun tp!1516666 () Bool)

(assert (=> b!5513398 (= e!3409532 (and tp!1516668 tp!1516666))))

(assert (= (and b!5512442 ((_ is ElementMatch!15499) (regOne!31511 (regTwo!31510 r!7292)))) b!5513397))

(assert (= (and b!5512442 ((_ is Concat!24344) (regOne!31511 (regTwo!31510 r!7292)))) b!5513398))

(assert (= (and b!5512442 ((_ is Star!15499) (regOne!31511 (regTwo!31510 r!7292)))) b!5513399))

(assert (= (and b!5512442 ((_ is Union!15499) (regOne!31511 (regTwo!31510 r!7292)))) b!5513400))

(declare-fun e!3409533 () Bool)

(assert (=> b!5512442 (= tp!1516538 e!3409533)))

(declare-fun b!5513403 () Bool)

(declare-fun tp!1516672 () Bool)

(assert (=> b!5513403 (= e!3409533 tp!1516672)))

(declare-fun b!5513401 () Bool)

(assert (=> b!5513401 (= e!3409533 tp_is_empty!40251)))

(declare-fun b!5513404 () Bool)

(declare-fun tp!1516674 () Bool)

(declare-fun tp!1516675 () Bool)

(assert (=> b!5513404 (= e!3409533 (and tp!1516674 tp!1516675))))

(declare-fun b!5513402 () Bool)

(declare-fun tp!1516673 () Bool)

(declare-fun tp!1516671 () Bool)

(assert (=> b!5513402 (= e!3409533 (and tp!1516673 tp!1516671))))

(assert (= (and b!5512442 ((_ is ElementMatch!15499) (regTwo!31511 (regTwo!31510 r!7292)))) b!5513401))

(assert (= (and b!5512442 ((_ is Concat!24344) (regTwo!31511 (regTwo!31510 r!7292)))) b!5513402))

(assert (= (and b!5512442 ((_ is Star!15499) (regTwo!31511 (regTwo!31510 r!7292)))) b!5513403))

(assert (= (and b!5512442 ((_ is Union!15499) (regTwo!31511 (regTwo!31510 r!7292)))) b!5513404))

(declare-fun e!3409534 () Bool)

(assert (=> b!5512441 (= tp!1516535 e!3409534)))

(declare-fun b!5513407 () Bool)

(declare-fun tp!1516677 () Bool)

(assert (=> b!5513407 (= e!3409534 tp!1516677)))

(declare-fun b!5513405 () Bool)

(assert (=> b!5513405 (= e!3409534 tp_is_empty!40251)))

(declare-fun b!5513408 () Bool)

(declare-fun tp!1516679 () Bool)

(declare-fun tp!1516680 () Bool)

(assert (=> b!5513408 (= e!3409534 (and tp!1516679 tp!1516680))))

(declare-fun b!5513406 () Bool)

(declare-fun tp!1516678 () Bool)

(declare-fun tp!1516676 () Bool)

(assert (=> b!5513406 (= e!3409534 (and tp!1516678 tp!1516676))))

(assert (= (and b!5512441 ((_ is ElementMatch!15499) (reg!15828 (regTwo!31510 r!7292)))) b!5513405))

(assert (= (and b!5512441 ((_ is Concat!24344) (reg!15828 (regTwo!31510 r!7292)))) b!5513406))

(assert (= (and b!5512441 ((_ is Star!15499) (reg!15828 (regTwo!31510 r!7292)))) b!5513407))

(assert (= (and b!5512441 ((_ is Union!15499) (reg!15828 (regTwo!31510 r!7292)))) b!5513408))

(declare-fun e!3409535 () Bool)

(assert (=> b!5512450 (= tp!1516547 e!3409535)))

(declare-fun b!5513411 () Bool)

(declare-fun tp!1516682 () Bool)

(assert (=> b!5513411 (= e!3409535 tp!1516682)))

(declare-fun b!5513409 () Bool)

(assert (=> b!5513409 (= e!3409535 tp_is_empty!40251)))

(declare-fun b!5513412 () Bool)

(declare-fun tp!1516684 () Bool)

(declare-fun tp!1516685 () Bool)

(assert (=> b!5513412 (= e!3409535 (and tp!1516684 tp!1516685))))

(declare-fun b!5513410 () Bool)

(declare-fun tp!1516683 () Bool)

(declare-fun tp!1516681 () Bool)

(assert (=> b!5513410 (= e!3409535 (and tp!1516683 tp!1516681))))

(assert (= (and b!5512450 ((_ is ElementMatch!15499) (regOne!31511 (regTwo!31511 r!7292)))) b!5513409))

(assert (= (and b!5512450 ((_ is Concat!24344) (regOne!31511 (regTwo!31511 r!7292)))) b!5513410))

(assert (= (and b!5512450 ((_ is Star!15499) (regOne!31511 (regTwo!31511 r!7292)))) b!5513411))

(assert (= (and b!5512450 ((_ is Union!15499) (regOne!31511 (regTwo!31511 r!7292)))) b!5513412))

(declare-fun e!3409536 () Bool)

(assert (=> b!5512450 (= tp!1516548 e!3409536)))

(declare-fun b!5513415 () Bool)

(declare-fun tp!1516687 () Bool)

(assert (=> b!5513415 (= e!3409536 tp!1516687)))

(declare-fun b!5513413 () Bool)

(assert (=> b!5513413 (= e!3409536 tp_is_empty!40251)))

(declare-fun b!5513416 () Bool)

(declare-fun tp!1516689 () Bool)

(declare-fun tp!1516690 () Bool)

(assert (=> b!5513416 (= e!3409536 (and tp!1516689 tp!1516690))))

(declare-fun b!5513414 () Bool)

(declare-fun tp!1516688 () Bool)

(declare-fun tp!1516686 () Bool)

(assert (=> b!5513414 (= e!3409536 (and tp!1516688 tp!1516686))))

(assert (= (and b!5512450 ((_ is ElementMatch!15499) (regTwo!31511 (regTwo!31511 r!7292)))) b!5513413))

(assert (= (and b!5512450 ((_ is Concat!24344) (regTwo!31511 (regTwo!31511 r!7292)))) b!5513414))

(assert (= (and b!5512450 ((_ is Star!15499) (regTwo!31511 (regTwo!31511 r!7292)))) b!5513415))

(assert (= (and b!5512450 ((_ is Union!15499) (regTwo!31511 (regTwo!31511 r!7292)))) b!5513416))

(declare-fun e!3409537 () Bool)

(assert (=> b!5512440 (= tp!1516536 e!3409537)))

(declare-fun b!5513419 () Bool)

(declare-fun tp!1516692 () Bool)

(assert (=> b!5513419 (= e!3409537 tp!1516692)))

(declare-fun b!5513417 () Bool)

(assert (=> b!5513417 (= e!3409537 tp_is_empty!40251)))

(declare-fun b!5513420 () Bool)

(declare-fun tp!1516694 () Bool)

(declare-fun tp!1516695 () Bool)

(assert (=> b!5513420 (= e!3409537 (and tp!1516694 tp!1516695))))

(declare-fun b!5513418 () Bool)

(declare-fun tp!1516693 () Bool)

(declare-fun tp!1516691 () Bool)

(assert (=> b!5513418 (= e!3409537 (and tp!1516693 tp!1516691))))

(assert (= (and b!5512440 ((_ is ElementMatch!15499) (regOne!31510 (regTwo!31510 r!7292)))) b!5513417))

(assert (= (and b!5512440 ((_ is Concat!24344) (regOne!31510 (regTwo!31510 r!7292)))) b!5513418))

(assert (= (and b!5512440 ((_ is Star!15499) (regOne!31510 (regTwo!31510 r!7292)))) b!5513419))

(assert (= (and b!5512440 ((_ is Union!15499) (regOne!31510 (regTwo!31510 r!7292)))) b!5513420))

(declare-fun e!3409538 () Bool)

(assert (=> b!5512440 (= tp!1516534 e!3409538)))

(declare-fun b!5513423 () Bool)

(declare-fun tp!1516697 () Bool)

(assert (=> b!5513423 (= e!3409538 tp!1516697)))

(declare-fun b!5513421 () Bool)

(assert (=> b!5513421 (= e!3409538 tp_is_empty!40251)))

(declare-fun b!5513424 () Bool)

(declare-fun tp!1516699 () Bool)

(declare-fun tp!1516700 () Bool)

(assert (=> b!5513424 (= e!3409538 (and tp!1516699 tp!1516700))))

(declare-fun b!5513422 () Bool)

(declare-fun tp!1516698 () Bool)

(declare-fun tp!1516696 () Bool)

(assert (=> b!5513422 (= e!3409538 (and tp!1516698 tp!1516696))))

(assert (= (and b!5512440 ((_ is ElementMatch!15499) (regTwo!31510 (regTwo!31510 r!7292)))) b!5513421))

(assert (= (and b!5512440 ((_ is Concat!24344) (regTwo!31510 (regTwo!31510 r!7292)))) b!5513422))

(assert (= (and b!5512440 ((_ is Star!15499) (regTwo!31510 (regTwo!31510 r!7292)))) b!5513423))

(assert (= (and b!5512440 ((_ is Union!15499) (regTwo!31510 (regTwo!31510 r!7292)))) b!5513424))

(declare-fun e!3409542 () Bool)

(assert (=> b!5512449 (= tp!1516545 e!3409542)))

(declare-fun b!5513427 () Bool)

(declare-fun tp!1516702 () Bool)

(assert (=> b!5513427 (= e!3409542 tp!1516702)))

(declare-fun b!5513425 () Bool)

(assert (=> b!5513425 (= e!3409542 tp_is_empty!40251)))

(declare-fun b!5513428 () Bool)

(declare-fun tp!1516704 () Bool)

(declare-fun tp!1516705 () Bool)

(assert (=> b!5513428 (= e!3409542 (and tp!1516704 tp!1516705))))

(declare-fun b!5513426 () Bool)

(declare-fun tp!1516703 () Bool)

(declare-fun tp!1516701 () Bool)

(assert (=> b!5513426 (= e!3409542 (and tp!1516703 tp!1516701))))

(assert (= (and b!5512449 ((_ is ElementMatch!15499) (reg!15828 (regTwo!31511 r!7292)))) b!5513425))

(assert (= (and b!5512449 ((_ is Concat!24344) (reg!15828 (regTwo!31511 r!7292)))) b!5513426))

(assert (= (and b!5512449 ((_ is Star!15499) (reg!15828 (regTwo!31511 r!7292)))) b!5513427))

(assert (= (and b!5512449 ((_ is Union!15499) (reg!15828 (regTwo!31511 r!7292)))) b!5513428))

(declare-fun b!5513440 () Bool)

(declare-fun e!3409546 () Bool)

(declare-fun tp!1516706 () Bool)

(declare-fun tp!1516707 () Bool)

(assert (=> b!5513440 (= e!3409546 (and tp!1516706 tp!1516707))))

(assert (=> b!5512418 (= tp!1516512 e!3409546)))

(assert (= (and b!5512418 ((_ is Cons!62672) (exprs!5383 setElem!36615))) b!5513440))

(declare-fun e!3409547 () Bool)

(assert (=> b!5512424 (= tp!1516517 e!3409547)))

(declare-fun b!5513443 () Bool)

(declare-fun tp!1516709 () Bool)

(assert (=> b!5513443 (= e!3409547 tp!1516709)))

(declare-fun b!5513441 () Bool)

(assert (=> b!5513441 (= e!3409547 tp_is_empty!40251)))

(declare-fun b!5513444 () Bool)

(declare-fun tp!1516711 () Bool)

(declare-fun tp!1516712 () Bool)

(assert (=> b!5513444 (= e!3409547 (and tp!1516711 tp!1516712))))

(declare-fun b!5513442 () Bool)

(declare-fun tp!1516710 () Bool)

(declare-fun tp!1516708 () Bool)

(assert (=> b!5513442 (= e!3409547 (and tp!1516710 tp!1516708))))

(assert (= (and b!5512424 ((_ is ElementMatch!15499) (h!69120 (exprs!5383 setElem!36609)))) b!5513441))

(assert (= (and b!5512424 ((_ is Concat!24344) (h!69120 (exprs!5383 setElem!36609)))) b!5513442))

(assert (= (and b!5512424 ((_ is Star!15499) (h!69120 (exprs!5383 setElem!36609)))) b!5513443))

(assert (= (and b!5512424 ((_ is Union!15499) (h!69120 (exprs!5383 setElem!36609)))) b!5513444))

(declare-fun b!5513445 () Bool)

(declare-fun e!3409548 () Bool)

(declare-fun tp!1516713 () Bool)

(declare-fun tp!1516714 () Bool)

(assert (=> b!5513445 (= e!3409548 (and tp!1516713 tp!1516714))))

(assert (=> b!5512424 (= tp!1516518 e!3409548)))

(assert (= (and b!5512424 ((_ is Cons!62672) (t!376041 (exprs!5383 setElem!36609)))) b!5513445))

(declare-fun e!3409549 () Bool)

(assert (=> b!5512448 (= tp!1516546 e!3409549)))

(declare-fun b!5513448 () Bool)

(declare-fun tp!1516716 () Bool)

(assert (=> b!5513448 (= e!3409549 tp!1516716)))

(declare-fun b!5513446 () Bool)

(assert (=> b!5513446 (= e!3409549 tp_is_empty!40251)))

(declare-fun b!5513449 () Bool)

(declare-fun tp!1516718 () Bool)

(declare-fun tp!1516719 () Bool)

(assert (=> b!5513449 (= e!3409549 (and tp!1516718 tp!1516719))))

(declare-fun b!5513447 () Bool)

(declare-fun tp!1516717 () Bool)

(declare-fun tp!1516715 () Bool)

(assert (=> b!5513447 (= e!3409549 (and tp!1516717 tp!1516715))))

(assert (= (and b!5512448 ((_ is ElementMatch!15499) (regOne!31510 (regTwo!31511 r!7292)))) b!5513446))

(assert (= (and b!5512448 ((_ is Concat!24344) (regOne!31510 (regTwo!31511 r!7292)))) b!5513447))

(assert (= (and b!5512448 ((_ is Star!15499) (regOne!31510 (regTwo!31511 r!7292)))) b!5513448))

(assert (= (and b!5512448 ((_ is Union!15499) (regOne!31510 (regTwo!31511 r!7292)))) b!5513449))

(declare-fun e!3409550 () Bool)

(assert (=> b!5512448 (= tp!1516544 e!3409550)))

(declare-fun b!5513452 () Bool)

(declare-fun tp!1516721 () Bool)

(assert (=> b!5513452 (= e!3409550 tp!1516721)))

(declare-fun b!5513450 () Bool)

(assert (=> b!5513450 (= e!3409550 tp_is_empty!40251)))

(declare-fun b!5513453 () Bool)

(declare-fun tp!1516723 () Bool)

(declare-fun tp!1516724 () Bool)

(assert (=> b!5513453 (= e!3409550 (and tp!1516723 tp!1516724))))

(declare-fun b!5513451 () Bool)

(declare-fun tp!1516722 () Bool)

(declare-fun tp!1516720 () Bool)

(assert (=> b!5513451 (= e!3409550 (and tp!1516722 tp!1516720))))

(assert (= (and b!5512448 ((_ is ElementMatch!15499) (regTwo!31510 (regTwo!31511 r!7292)))) b!5513450))

(assert (= (and b!5512448 ((_ is Concat!24344) (regTwo!31510 (regTwo!31511 r!7292)))) b!5513451))

(assert (= (and b!5512448 ((_ is Star!15499) (regTwo!31510 (regTwo!31511 r!7292)))) b!5513452))

(assert (= (and b!5512448 ((_ is Union!15499) (regTwo!31510 (regTwo!31511 r!7292)))) b!5513453))

(declare-fun condSetEmpty!36626 () Bool)

(assert (=> setNonEmpty!36615 (= condSetEmpty!36626 (= setRest!36615 ((as const (Array Context!9766 Bool)) false)))))

(declare-fun setRes!36626 () Bool)

(assert (=> setNonEmpty!36615 (= tp!1516513 setRes!36626)))

(declare-fun setIsEmpty!36626 () Bool)

(assert (=> setIsEmpty!36626 setRes!36626))

(declare-fun setNonEmpty!36626 () Bool)

(declare-fun setElem!36626 () Context!9766)

(declare-fun e!3409551 () Bool)

(declare-fun tp!1516726 () Bool)

(assert (=> setNonEmpty!36626 (= setRes!36626 (and tp!1516726 (inv!81994 setElem!36626) e!3409551))))

(declare-fun setRest!36626 () (InoxSet Context!9766))

(assert (=> setNonEmpty!36626 (= setRest!36615 ((_ map or) (store ((as const (Array Context!9766 Bool)) false) setElem!36626 true) setRest!36626))))

(declare-fun b!5513454 () Bool)

(declare-fun tp!1516725 () Bool)

(assert (=> b!5513454 (= e!3409551 tp!1516725)))

(assert (= (and setNonEmpty!36615 condSetEmpty!36626) setIsEmpty!36626))

(assert (= (and setNonEmpty!36615 (not condSetEmpty!36626)) setNonEmpty!36626))

(assert (= setNonEmpty!36626 b!5513454))

(declare-fun m!6517974 () Bool)

(assert (=> setNonEmpty!36626 m!6517974))

(declare-fun b!5513455 () Bool)

(declare-fun e!3409552 () Bool)

(declare-fun tp!1516727 () Bool)

(assert (=> b!5513455 (= e!3409552 (and tp_is_empty!40251 tp!1516727))))

(assert (=> b!5512423 (= tp!1516516 e!3409552)))

(assert (= (and b!5512423 ((_ is Cons!62673) (t!376042 (t!376042 s!2326)))) b!5513455))

(declare-fun b!5513456 () Bool)

(declare-fun e!3409553 () Bool)

(declare-fun tp!1516728 () Bool)

(declare-fun tp!1516729 () Bool)

(assert (=> b!5513456 (= e!3409553 (and tp!1516728 tp!1516729))))

(assert (=> b!5512462 (= tp!1516558 e!3409553)))

(assert (= (and b!5512462 ((_ is Cons!62672) (exprs!5383 (h!69122 (t!376043 zl!343))))) b!5513456))

(declare-fun e!3409554 () Bool)

(assert (=> b!5512438 (= tp!1516532 e!3409554)))

(declare-fun b!5513459 () Bool)

(declare-fun tp!1516731 () Bool)

(assert (=> b!5513459 (= e!3409554 tp!1516731)))

(declare-fun b!5513457 () Bool)

(assert (=> b!5513457 (= e!3409554 tp_is_empty!40251)))

(declare-fun b!5513460 () Bool)

(declare-fun tp!1516733 () Bool)

(declare-fun tp!1516734 () Bool)

(assert (=> b!5513460 (= e!3409554 (and tp!1516733 tp!1516734))))

(declare-fun b!5513458 () Bool)

(declare-fun tp!1516732 () Bool)

(declare-fun tp!1516730 () Bool)

(assert (=> b!5513458 (= e!3409554 (and tp!1516732 tp!1516730))))

(assert (= (and b!5512438 ((_ is ElementMatch!15499) (regOne!31511 (regOne!31510 r!7292)))) b!5513457))

(assert (= (and b!5512438 ((_ is Concat!24344) (regOne!31511 (regOne!31510 r!7292)))) b!5513458))

(assert (= (and b!5512438 ((_ is Star!15499) (regOne!31511 (regOne!31510 r!7292)))) b!5513459))

(assert (= (and b!5512438 ((_ is Union!15499) (regOne!31511 (regOne!31510 r!7292)))) b!5513460))

(declare-fun e!3409555 () Bool)

(assert (=> b!5512438 (= tp!1516533 e!3409555)))

(declare-fun b!5513463 () Bool)

(declare-fun tp!1516736 () Bool)

(assert (=> b!5513463 (= e!3409555 tp!1516736)))

(declare-fun b!5513461 () Bool)

(assert (=> b!5513461 (= e!3409555 tp_is_empty!40251)))

(declare-fun b!5513464 () Bool)

(declare-fun tp!1516738 () Bool)

(declare-fun tp!1516739 () Bool)

(assert (=> b!5513464 (= e!3409555 (and tp!1516738 tp!1516739))))

(declare-fun b!5513462 () Bool)

(declare-fun tp!1516737 () Bool)

(declare-fun tp!1516735 () Bool)

(assert (=> b!5513462 (= e!3409555 (and tp!1516737 tp!1516735))))

(assert (= (and b!5512438 ((_ is ElementMatch!15499) (regTwo!31511 (regOne!31510 r!7292)))) b!5513461))

(assert (= (and b!5512438 ((_ is Concat!24344) (regTwo!31511 (regOne!31510 r!7292)))) b!5513462))

(assert (= (and b!5512438 ((_ is Star!15499) (regTwo!31511 (regOne!31510 r!7292)))) b!5513463))

(assert (= (and b!5512438 ((_ is Union!15499) (regTwo!31511 (regOne!31510 r!7292)))) b!5513464))

(declare-fun b_lambda!209019 () Bool)

(assert (= b_lambda!209015 (or d!1746367 b_lambda!209019)))

(declare-fun bs!1270863 () Bool)

(declare-fun d!1746869 () Bool)

(assert (= bs!1270863 (and d!1746869 d!1746367)))

(assert (=> bs!1270863 (= (dynLambda!24488 lambda!295358 (h!69120 (exprs!5383 (h!69122 zl!343)))) (validRegex!7235 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(declare-fun m!6517984 () Bool)

(assert (=> bs!1270863 m!6517984))

(assert (=> b!5513254 d!1746869))

(declare-fun b_lambda!209021 () Bool)

(assert (= b_lambda!209017 (or d!1746281 b_lambda!209021)))

(declare-fun bs!1270864 () Bool)

(declare-fun d!1746871 () Bool)

(assert (= bs!1270864 (and d!1746871 d!1746281)))

(assert (=> bs!1270864 (= (dynLambda!24488 lambda!295326 (h!69120 (exprs!5383 setElem!36609))) (validRegex!7235 (h!69120 (exprs!5383 setElem!36609))))))

(declare-fun m!6517986 () Bool)

(assert (=> bs!1270864 m!6517986))

(assert (=> b!5513295 d!1746871))

(declare-fun b_lambda!209023 () Bool)

(assert (= b_lambda!208993 (or b!5511703 b_lambda!209023)))

(assert (=> d!1746501 d!1746419))

(declare-fun b_lambda!209025 () Bool)

(assert (= b_lambda!209013 (or d!1746359 b_lambda!209025)))

(declare-fun bs!1270865 () Bool)

(declare-fun d!1746873 () Bool)

(assert (= bs!1270865 (and d!1746873 d!1746359)))

(assert (=> bs!1270865 (= (dynLambda!24488 lambda!295357 (h!69120 lt!2245472)) (validRegex!7235 (h!69120 lt!2245472)))))

(declare-fun m!6517988 () Bool)

(assert (=> bs!1270865 m!6517988))

(assert (=> b!5513216 d!1746873))

(declare-fun b_lambda!209027 () Bool)

(assert (= b_lambda!208991 (or b!5511703 b_lambda!209027)))

(assert (=> d!1746475 d!1746421))

(declare-fun b_lambda!209029 () Bool)

(assert (= b_lambda!208997 (or b!5511703 b_lambda!209029)))

(assert (=> d!1746587 d!1746423))

(declare-fun b_lambda!209031 () Bool)

(assert (= b_lambda!209003 (or d!1746337 b_lambda!209031)))

(declare-fun bs!1270866 () Bool)

(declare-fun d!1746875 () Bool)

(assert (= bs!1270866 (and d!1746875 d!1746337)))

(assert (=> bs!1270866 (= (dynLambda!24488 lambda!295354 (h!69120 (unfocusZipperList!927 zl!343))) (validRegex!7235 (h!69120 (unfocusZipperList!927 zl!343))))))

(declare-fun m!6517990 () Bool)

(assert (=> bs!1270866 m!6517990))

(assert (=> b!5512919 d!1746875))

(declare-fun b_lambda!209033 () Bool)

(assert (= b_lambda!209009 (or d!1746267 b_lambda!209033)))

(declare-fun bs!1270867 () Bool)

(declare-fun d!1746877 () Bool)

(assert (= bs!1270867 (and d!1746877 d!1746267)))

(assert (=> bs!1270867 (= (dynLambda!24488 lambda!295323 (h!69120 (exprs!5383 (h!69122 zl!343)))) (validRegex!7235 (h!69120 (exprs!5383 (h!69122 zl!343)))))))

(assert (=> bs!1270867 m!6517984))

(assert (=> b!5513066 d!1746877))

(check-sat (not b!5513117) (not setNonEmpty!36621) (not bm!407689) (not bm!407828) (not b!5513028) (not b!5512554) (not b!5512551) (not b!5513400) (not b!5513011) (not bm!407840) (not d!1746707) (not d!1746831) (not d!1746585) (not d!1746481) (not b!5513225) (not b!5513095) (not b!5513410) (not bm!407676) (not d!1746605) (not bs!1270866) (not b!5512796) (not b!5513387) (not b!5513342) (not d!1746773) (not b!5513447) (not bm!407702) (not b!5513296) (not b!5513287) (not b!5513411) (not b!5512729) (not b!5512728) tp_is_empty!40251 (not b!5513443) (not b!5512567) (not d!1746837) (not b!5513116) (not b!5513258) (not b_lambda!209023) (not b!5512920) (not b!5513094) (not b!5513123) (not b!5513426) (not d!1746763) (not bm!407706) (not b!5512545) (not b!5512851) (not b!5512637) (not b!5513394) (not b!5513217) (not b!5513455) (not b!5512940) (not bm!407717) (not b!5513444) (not b!5513339) (not b!5512807) (not b!5512552) (not bm!407765) (not b!5512634) (not b!5512770) (not b!5512850) (not d!1746553) (not b!5512722) (not b!5513416) (not d!1746757) (not b!5513402) (not b!5513396) (not b!5513356) (not d!1746621) (not d!1746567) (not bm!407732) (not b!5512939) (not d!1746589) (not bm!407705) (not b!5513440) (not bm!407656) (not b!5513369) (not bm!407663) (not bm!407688) (not d!1746483) (not b_lambda!209025) (not b!5513255) (not d!1746581) (not bm!407763) (not d!1746647) (not b!5512640) (not b_lambda!209027) (not bm!407697) (not d!1746561) (not bm!407786) (not bm!407833) (not bm!407791) (not bm!407679) (not d!1746505) (not bm!407815) (not d!1746791) (not b!5513463) (not d!1746487) (not b!5513403) (not b!5513309) (not b!5513336) (not b!5513390) (not bm!407839) (not bm!407832) (not bm!407814) (not d!1746607) (not bm!407731) (not bm!407729) (not b!5513364) (not b!5512759) (not b!5512894) (not b!5513286) (not b!5512773) (not b!5513257) (not b!5513399) (not bm!407766) (not b!5513453) (not bm!407715) (not b!5513056) (not bs!1270867) (not b!5513406) (not d!1746835) (not b!5513385) (not d!1746709) (not b!5513391) (not d!1746713) (not b!5512982) (not setNonEmpty!36625) (not bm!407745) (not b!5513452) (not b!5513386) (not bm!407698) (not b!5513359) (not b!5512899) (not d!1746555) (not b!5513332) (not b!5513136) (not d!1746587) (not b!5513398) (not b!5513393) (not b_lambda!209029) (not bm!407695) (not b!5512859) (not b!5513323) (not b!5512774) (not b!5512641) (not b!5512943) (not d!1746691) (not d!1746833) (not b!5512697) (not d!1746679) (not b_lambda!208985) (not bm!407812) (not b!5512791) (not b!5513328) (not b!5512726) (not d!1746821) (not d!1746697) (not bm!407699) (not b!5513464) (not b!5512795) (not bm!407707) (not b!5512983) (not bm!407790) (not b!5513412) (not d!1746571) (not b!5512847) (not b!5512977) (not d!1746715) (not b!5513395) (not b!5513067) (not b!5513367) (not b!5513462) (not b!5512789) (not b!5512535) (not b!5513423) (not d!1746651) (not bm!407760) (not b!5513348) (not b!5513294) (not b!5513458) (not b!5512635) (not bs!1270864) (not bm!407811) (not bm!407728) (not b!5512793) (not bs!1270865) (not b!5513096) (not b_lambda!208983) (not bm!407771) (not b!5512787) (not bm!407693) (not setNonEmpty!36626) (not b!5513324) (not bm!407662) (not b_lambda!208981) (not b!5513368) (not d!1746675) (not b!5513445) (not bs!1270863) (not b!5513330) (not bm!407733) (not bm!407716) (not b!5513008) (not b!5512643) (not b!5512895) (not b!5513262) (not b!5513322) (not b!5513427) (not b!5513024) (not b!5513454) (not b!5512944) (not b!5513419) (not b!5513365) (not b!5513119) (not b!5513389) (not bm!407789) (not bm!407838) (not b!5512776) (not bm!407767) (not b!5513334) (not b!5512687) (not b!5513338) (not b!5513360) (not bm!407658) (not b!5513449) (not d!1746565) (not bm!407703) (not b!5513361) (not b!5513087) (not b!5512841) (not b!5513344) (not b!5513340) (not b!5512804) (not b!5513363) (not b!5512579) (not b!5513125) (not b!5512546) (not b!5512775) (not b!5512845) (not b!5512725) (not bm!407678) (not b!5513032) (not b!5513460) (not b!5512978) (not d!1746509) (not bm!407773) (not b!5513308) (not b!5513025) (not b_lambda!209021) (not b!5513122) (not bm!407692) (not b!5512735) (not d!1746461) (not b!5513010) (not b!5513327) (not b!5512777) (not d!1746593) (not b!5513335) (not d!1746823) (not b!5513418) (not b!5513331) (not b!5513357) (not bm!407661) (not b!5513326) (not d!1746730) (not b!5513448) (not b!5513422) (not b!5513408) (not b!5512723) (not b!5512672) (not d!1746475) (not b!5513013) (not setNonEmpty!36623) (not b!5512768) (not b!5512734) (not b!5513459) (not b!5513347) (not b!5513299) (not b!5512976) (not b!5512788) (not bm!407666) (not b!5513415) (not bm!407826) (not d!1746615) (not b!5513224) (not b!5513273) (not b!5512737) (not b_lambda!209033) (not d!1746507) (not d!1746501) (not bm!407834) (not b!5513424) (not b!5513404) (not b!5512715) (not d!1746527) (not b!5513253) (not b!5513407) (not bm!407743) (not d!1746529) (not b!5512684) (not bm!407664) (not b_lambda!209019) (not b!5513414) (not b!5512683) (not b!5513346) (not b!5512548) (not b!5513343) (not b!5513451) (not bm!407827) (not d!1746829) (not b_lambda!209031) (not d!1746671) (not b!5513021) (not bm!407762) (not b!5513086) (not b!5512984) (not b!5512568) (not b!5512625) (not d!1746619) (not b!5513420) (not b!5512731) (not d!1746457) (not b!5512840) (not b!5513355) (not b!5513428) (not b!5512853) (not b!5513456) (not bm!407657) (not b!5512844) (not b!5513442) (not b!5513009))
(check-sat)
