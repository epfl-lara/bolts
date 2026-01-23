; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572934 () Bool)

(assert start!572934)

(declare-fun b!5476568 () Bool)

(assert (=> b!5476568 true))

(assert (=> b!5476568 true))

(declare-fun lambda!291976 () Int)

(declare-fun lambda!291975 () Int)

(assert (=> b!5476568 (not (= lambda!291976 lambda!291975))))

(assert (=> b!5476568 true))

(assert (=> b!5476568 true))

(declare-fun lambda!291977 () Int)

(assert (=> b!5476568 (not (= lambda!291977 lambda!291975))))

(assert (=> b!5476568 (not (= lambda!291977 lambda!291976))))

(assert (=> b!5476568 true))

(assert (=> b!5476568 true))

(declare-fun b!5476570 () Bool)

(assert (=> b!5476570 true))

(declare-fun b!5476543 () Bool)

(declare-fun e!3389748 () Bool)

(declare-fun tp!1505382 () Bool)

(assert (=> b!5476543 (= e!3389748 tp!1505382)))

(declare-fun b!5476545 () Bool)

(declare-fun e!3389744 () Bool)

(declare-fun tp!1505381 () Bool)

(assert (=> b!5476545 (= e!3389744 tp!1505381)))

(declare-fun b!5476546 () Bool)

(declare-fun res!2334656 () Bool)

(declare-fun e!3389753 () Bool)

(assert (=> b!5476546 (=> res!2334656 e!3389753)))

(declare-datatypes ((C!30984 0))(
  ( (C!30985 (val!25194 Int)) )
))
(declare-datatypes ((Regex!15357 0))(
  ( (ElementMatch!15357 (c!956737 C!30984)) (Concat!24202 (regOne!31226 Regex!15357) (regTwo!31226 Regex!15357)) (EmptyExpr!15357) (Star!15357 (reg!15686 Regex!15357)) (EmptyLang!15357) (Union!15357 (regOne!31227 Regex!15357) (regTwo!31227 Regex!15357)) )
))
(declare-datatypes ((List!62370 0))(
  ( (Nil!62246) (Cons!62246 (h!68694 Regex!15357) (t!375599 List!62370)) )
))
(declare-datatypes ((Context!9482 0))(
  ( (Context!9483 (exprs!5241 List!62370)) )
))
(declare-datatypes ((List!62371 0))(
  ( (Nil!62247) (Cons!62247 (h!68695 Context!9482) (t!375600 List!62371)) )
))
(declare-fun zl!343 () List!62371)

(get-info :version)

(assert (=> b!5476546 (= res!2334656 (not ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343)))))))

(declare-fun setNonEmpty!35989 () Bool)

(declare-fun setElem!35989 () Context!9482)

(declare-fun tp!1505373 () Bool)

(declare-fun setRes!35989 () Bool)

(declare-fun inv!81639 (Context!9482) Bool)

(assert (=> setNonEmpty!35989 (= setRes!35989 (and tp!1505373 (inv!81639 setElem!35989) e!3389744))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9482))

(declare-fun setRest!35989 () (InoxSet Context!9482))

(assert (=> setNonEmpty!35989 (= z!1189 ((_ map or) (store ((as const (Array Context!9482 Bool)) false) setElem!35989 true) setRest!35989))))

(declare-fun b!5476547 () Bool)

(declare-fun res!2334642 () Bool)

(declare-fun e!3389758 () Bool)

(assert (=> b!5476547 (=> res!2334642 e!3389758)))

(declare-fun lt!2237279 () (InoxSet Context!9482))

(declare-datatypes ((List!62372 0))(
  ( (Nil!62248) (Cons!62248 (h!68696 C!30984) (t!375601 List!62372)) )
))
(declare-fun s!2326 () List!62372)

(declare-fun matchZipper!1575 ((InoxSet Context!9482) List!62372) Bool)

(declare-fun derivationStepZipper!1552 ((InoxSet Context!9482) C!30984) (InoxSet Context!9482))

(assert (=> b!5476547 (= res!2334642 (not (= (matchZipper!1575 lt!2237279 s!2326) (matchZipper!1575 (derivationStepZipper!1552 lt!2237279 (h!68696 s!2326)) (t!375601 s!2326)))))))

(declare-fun b!5476548 () Bool)

(declare-fun res!2334646 () Bool)

(assert (=> b!5476548 (=> res!2334646 e!3389753)))

(declare-fun isEmpty!34198 (List!62371) Bool)

(assert (=> b!5476548 (= res!2334646 (not (isEmpty!34198 (t!375600 zl!343))))))

(declare-fun b!5476549 () Bool)

(declare-fun e!3389754 () Bool)

(assert (=> b!5476549 (= e!3389754 e!3389758)))

(declare-fun res!2334660 () Bool)

(assert (=> b!5476549 (=> res!2334660 e!3389758)))

(declare-fun r!7292 () Regex!15357)

(declare-fun lt!2237276 () (InoxSet Context!9482))

(declare-fun lt!2237297 () Context!9482)

(declare-fun derivationStepZipperDown!783 (Regex!15357 Context!9482 C!30984) (InoxSet Context!9482))

(assert (=> b!5476549 (= res!2334660 (not (= lt!2237276 (derivationStepZipperDown!783 (reg!15686 r!7292) lt!2237297 (h!68696 s!2326)))))))

(declare-fun lt!2237283 () List!62370)

(assert (=> b!5476549 (= lt!2237297 (Context!9483 lt!2237283))))

(declare-fun lt!2237290 () Context!9482)

(declare-fun lambda!291978 () Int)

(declare-fun flatMap!1060 ((InoxSet Context!9482) Int) (InoxSet Context!9482))

(declare-fun derivationStepZipperUp!709 (Context!9482 C!30984) (InoxSet Context!9482))

(assert (=> b!5476549 (= (flatMap!1060 lt!2237279 lambda!291978) (derivationStepZipperUp!709 lt!2237290 (h!68696 s!2326)))))

(declare-datatypes ((Unit!155164 0))(
  ( (Unit!155165) )
))
(declare-fun lt!2237294 () Unit!155164)

(declare-fun lemmaFlatMapOnSingletonSet!592 ((InoxSet Context!9482) Context!9482 Int) Unit!155164)

(assert (=> b!5476549 (= lt!2237294 (lemmaFlatMapOnSingletonSet!592 lt!2237279 lt!2237290 lambda!291978))))

(declare-fun lt!2237287 () (InoxSet Context!9482))

(assert (=> b!5476549 (= lt!2237287 (derivationStepZipperUp!709 lt!2237290 (h!68696 s!2326)))))

(assert (=> b!5476549 (= lt!2237279 (store ((as const (Array Context!9482 Bool)) false) lt!2237290 true))))

(assert (=> b!5476549 (= lt!2237290 (Context!9483 (Cons!62246 (reg!15686 r!7292) lt!2237283)))))

(assert (=> b!5476549 (= lt!2237283 (Cons!62246 r!7292 Nil!62246))))

(declare-fun b!5476550 () Bool)

(declare-fun res!2334641 () Bool)

(declare-fun e!3389750 () Bool)

(assert (=> b!5476550 (=> res!2334641 e!3389750)))

(declare-fun unfocusZipper!1099 (List!62371) Regex!15357)

(assert (=> b!5476550 (= res!2334641 (not (= (unfocusZipper!1099 (Cons!62247 lt!2237297 Nil!62247)) r!7292)))))

(declare-fun b!5476551 () Bool)

(declare-fun e!3389749 () Bool)

(declare-fun tp!1505375 () Bool)

(declare-fun tp!1505383 () Bool)

(assert (=> b!5476551 (= e!3389749 (and tp!1505375 tp!1505383))))

(declare-fun b!5476552 () Bool)

(declare-fun res!2334651 () Bool)

(declare-fun e!3389742 () Bool)

(assert (=> b!5476552 (=> (not res!2334651) (not e!3389742))))

(declare-fun toList!9141 ((InoxSet Context!9482)) List!62371)

(assert (=> b!5476552 (= res!2334651 (= (toList!9141 z!1189) zl!343))))

(declare-fun b!5476553 () Bool)

(declare-fun e!3389752 () Bool)

(assert (=> b!5476553 (= e!3389758 e!3389752)))

(declare-fun res!2334654 () Bool)

(assert (=> b!5476553 (=> res!2334654 e!3389752)))

(declare-fun lt!2237274 () Regex!15357)

(assert (=> b!5476553 (= res!2334654 (not (= (unfocusZipper!1099 (Cons!62247 lt!2237290 Nil!62247)) lt!2237274)))))

(assert (=> b!5476553 (= lt!2237274 (Concat!24202 (reg!15686 r!7292) r!7292))))

(declare-fun res!2334648 () Bool)

(assert (=> start!572934 (=> (not res!2334648) (not e!3389742))))

(declare-fun validRegex!7093 (Regex!15357) Bool)

(assert (=> start!572934 (= res!2334648 (validRegex!7093 r!7292))))

(assert (=> start!572934 e!3389742))

(assert (=> start!572934 e!3389749))

(declare-fun e!3389743 () Bool)

(assert (=> start!572934 e!3389743))

(declare-fun c!332 () Context!9482)

(declare-fun e!3389745 () Bool)

(assert (=> start!572934 (and (inv!81639 c!332) e!3389745)))

(declare-fun condSetEmpty!35989 () Bool)

(assert (=> start!572934 (= condSetEmpty!35989 (= z!1189 ((as const (Array Context!9482 Bool)) false)))))

(assert (=> start!572934 setRes!35989))

(declare-fun e!3389751 () Bool)

(assert (=> start!572934 e!3389751))

(declare-fun b!5476544 () Bool)

(declare-fun e!3389757 () Bool)

(declare-fun lambda!291979 () Int)

(declare-fun forall!14614 (List!62370 Int) Bool)

(assert (=> b!5476544 (= e!3389757 (forall!14614 (exprs!5241 c!332) lambda!291979))))

(declare-fun b!5476554 () Bool)

(declare-fun tp!1505378 () Bool)

(declare-fun tp!1505379 () Bool)

(assert (=> b!5476554 (= e!3389749 (and tp!1505378 tp!1505379))))

(declare-fun b!5476555 () Bool)

(declare-fun res!2334658 () Bool)

(assert (=> b!5476555 (=> res!2334658 e!3389753)))

(assert (=> b!5476555 (= res!2334658 (or ((_ is EmptyExpr!15357) r!7292) ((_ is EmptyLang!15357) r!7292) ((_ is ElementMatch!15357) r!7292) ((_ is Union!15357) r!7292) ((_ is Concat!24202) r!7292)))))

(declare-fun b!5476556 () Bool)

(declare-fun tp!1505380 () Bool)

(assert (=> b!5476556 (= e!3389745 tp!1505380)))

(declare-fun b!5476557 () Bool)

(declare-fun res!2334640 () Bool)

(assert (=> b!5476557 (=> res!2334640 e!3389753)))

(declare-fun generalisedConcat!1026 (List!62370) Regex!15357)

(assert (=> b!5476557 (= res!2334640 (not (= r!7292 (generalisedConcat!1026 (exprs!5241 (h!68695 zl!343))))))))

(declare-fun b!5476558 () Bool)

(declare-fun tp!1505377 () Bool)

(assert (=> b!5476558 (= e!3389751 (and (inv!81639 (h!68695 zl!343)) e!3389748 tp!1505377))))

(declare-fun b!5476559 () Bool)

(declare-fun tp!1505376 () Bool)

(assert (=> b!5476559 (= e!3389749 tp!1505376)))

(declare-fun b!5476560 () Bool)

(declare-fun tp_is_empty!39967 () Bool)

(assert (=> b!5476560 (= e!3389749 tp_is_empty!39967)))

(declare-fun b!5476561 () Bool)

(declare-fun e!3389746 () Bool)

(declare-fun lt!2237275 () Bool)

(assert (=> b!5476561 (= e!3389746 lt!2237275)))

(declare-fun b!5476562 () Bool)

(declare-fun res!2334647 () Bool)

(declare-fun e!3389756 () Bool)

(assert (=> b!5476562 (=> res!2334647 e!3389756)))

(assert (=> b!5476562 (= res!2334647 ((_ is Nil!62248) s!2326))))

(declare-fun setIsEmpty!35989 () Bool)

(assert (=> setIsEmpty!35989 setRes!35989))

(declare-fun b!5476563 () Bool)

(declare-fun e!3389755 () Bool)

(assert (=> b!5476563 (= e!3389755 (not e!3389753))))

(declare-fun res!2334661 () Bool)

(assert (=> b!5476563 (=> res!2334661 e!3389753)))

(assert (=> b!5476563 (= res!2334661 (not ((_ is Cons!62247) zl!343)))))

(declare-fun lt!2237291 () Bool)

(declare-fun matchRSpec!2460 (Regex!15357 List!62372) Bool)

(assert (=> b!5476563 (= lt!2237291 (matchRSpec!2460 r!7292 s!2326))))

(declare-fun matchR!7542 (Regex!15357 List!62372) Bool)

(assert (=> b!5476563 (= lt!2237291 (matchR!7542 r!7292 s!2326))))

(declare-fun lt!2237281 () Unit!155164)

(declare-fun mainMatchTheorem!2460 (Regex!15357 List!62372) Unit!155164)

(assert (=> b!5476563 (= lt!2237281 (mainMatchTheorem!2460 r!7292 s!2326))))

(declare-fun b!5476564 () Bool)

(assert (=> b!5476564 (= e!3389752 e!3389750)))

(declare-fun res!2334655 () Bool)

(assert (=> b!5476564 (=> res!2334655 e!3389750)))

(declare-fun lt!2237292 () (InoxSet Context!9482))

(assert (=> b!5476564 (= res!2334655 (not (= lt!2237276 (derivationStepZipper!1552 lt!2237292 (h!68696 s!2326)))))))

(assert (=> b!5476564 (= (flatMap!1060 lt!2237292 lambda!291978) (derivationStepZipperUp!709 lt!2237297 (h!68696 s!2326)))))

(declare-fun lt!2237293 () Unit!155164)

(assert (=> b!5476564 (= lt!2237293 (lemmaFlatMapOnSingletonSet!592 lt!2237292 lt!2237297 lambda!291978))))

(declare-fun lt!2237286 () (InoxSet Context!9482))

(declare-fun lt!2237299 () Context!9482)

(assert (=> b!5476564 (= (flatMap!1060 lt!2237286 lambda!291978) (derivationStepZipperUp!709 lt!2237299 (h!68696 s!2326)))))

(declare-fun lt!2237273 () Unit!155164)

(assert (=> b!5476564 (= lt!2237273 (lemmaFlatMapOnSingletonSet!592 lt!2237286 lt!2237299 lambda!291978))))

(declare-fun lt!2237289 () (InoxSet Context!9482))

(assert (=> b!5476564 (= lt!2237289 (derivationStepZipperUp!709 lt!2237297 (h!68696 s!2326)))))

(declare-fun lt!2237288 () (InoxSet Context!9482))

(assert (=> b!5476564 (= lt!2237288 (derivationStepZipperUp!709 lt!2237299 (h!68696 s!2326)))))

(assert (=> b!5476564 (= lt!2237292 (store ((as const (Array Context!9482 Bool)) false) lt!2237297 true))))

(assert (=> b!5476564 (= lt!2237286 (store ((as const (Array Context!9482 Bool)) false) lt!2237299 true))))

(assert (=> b!5476564 (= lt!2237299 (Context!9483 (Cons!62246 (reg!15686 r!7292) Nil!62246)))))

(declare-fun b!5476565 () Bool)

(assert (=> b!5476565 (= e!3389750 e!3389757)))

(declare-fun res!2334659 () Bool)

(assert (=> b!5476565 (=> res!2334659 e!3389757)))

(declare-fun lt!2237284 () Bool)

(assert (=> b!5476565 (= res!2334659 lt!2237284)))

(assert (=> b!5476565 (= lt!2237284 (matchRSpec!2460 lt!2237274 s!2326))))

(assert (=> b!5476565 (= lt!2237284 (matchR!7542 lt!2237274 s!2326))))

(declare-fun lt!2237295 () Unit!155164)

(assert (=> b!5476565 (= lt!2237295 (mainMatchTheorem!2460 lt!2237274 s!2326))))

(declare-fun b!5476566 () Bool)

(declare-fun res!2334652 () Bool)

(assert (=> b!5476566 (=> res!2334652 e!3389757)))

(assert (=> b!5476566 (= res!2334652 (not (matchZipper!1575 z!1189 s!2326)))))

(declare-fun b!5476567 () Bool)

(assert (=> b!5476567 (= e!3389742 e!3389755)))

(declare-fun res!2334644 () Bool)

(assert (=> b!5476567 (=> (not res!2334644) (not e!3389755))))

(declare-fun lt!2237280 () Regex!15357)

(assert (=> b!5476567 (= res!2334644 (= r!7292 lt!2237280))))

(assert (=> b!5476567 (= lt!2237280 (unfocusZipper!1099 zl!343))))

(assert (=> b!5476568 (= e!3389753 e!3389756)))

(declare-fun res!2334650 () Bool)

(assert (=> b!5476568 (=> res!2334650 e!3389756)))

(assert (=> b!5476568 (= res!2334650 (not (= lt!2237291 e!3389746)))))

(declare-fun res!2334645 () Bool)

(assert (=> b!5476568 (=> res!2334645 e!3389746)))

(declare-fun isEmpty!34199 (List!62372) Bool)

(assert (=> b!5476568 (= res!2334645 (isEmpty!34199 s!2326))))

(declare-fun Exists!2536 (Int) Bool)

(assert (=> b!5476568 (= (Exists!2536 lambda!291975) (Exists!2536 lambda!291977))))

(declare-fun lt!2237282 () Unit!155164)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1186 (Regex!15357 Regex!15357 List!62372) Unit!155164)

(assert (=> b!5476568 (= lt!2237282 (lemmaExistCutMatchRandMatchRSpecEquivalent!1186 (reg!15686 r!7292) r!7292 s!2326))))

(assert (=> b!5476568 (= (Exists!2536 lambda!291975) (Exists!2536 lambda!291976))))

(declare-fun lt!2237298 () Unit!155164)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!510 (Regex!15357 List!62372) Unit!155164)

(assert (=> b!5476568 (= lt!2237298 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!510 (reg!15686 r!7292) s!2326))))

(assert (=> b!5476568 (= lt!2237275 (Exists!2536 lambda!291975))))

(declare-datatypes ((tuple2!65108 0))(
  ( (tuple2!65109 (_1!35857 List!62372) (_2!35857 List!62372)) )
))
(declare-datatypes ((Option!15466 0))(
  ( (None!15465) (Some!15465 (v!51494 tuple2!65108)) )
))
(declare-fun isDefined!12169 (Option!15466) Bool)

(declare-fun findConcatSeparation!1880 (Regex!15357 Regex!15357 List!62372 List!62372 List!62372) Option!15466)

(assert (=> b!5476568 (= lt!2237275 (isDefined!12169 (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 Nil!62248 s!2326 s!2326)))))

(declare-fun lt!2237277 () Unit!155164)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1644 (Regex!15357 Regex!15357 List!62372) Unit!155164)

(assert (=> b!5476568 (= lt!2237277 (lemmaFindConcatSeparationEquivalentToExists!1644 (reg!15686 r!7292) r!7292 s!2326))))

(declare-fun b!5476569 () Bool)

(declare-fun res!2334657 () Bool)

(assert (=> b!5476569 (=> res!2334657 e!3389753)))

(declare-fun generalisedUnion!1286 (List!62370) Regex!15357)

(declare-fun unfocusZipperList!799 (List!62371) List!62370)

(assert (=> b!5476569 (= res!2334657 (not (= r!7292 (generalisedUnion!1286 (unfocusZipperList!799 zl!343)))))))

(declare-fun e!3389747 () Bool)

(assert (=> b!5476570 (= e!3389747 e!3389754)))

(declare-fun res!2334662 () Bool)

(assert (=> b!5476570 (=> res!2334662 e!3389754)))

(declare-fun lt!2237296 () (InoxSet Context!9482))

(assert (=> b!5476570 (= res!2334662 (not (= lt!2237276 lt!2237296)))))

(assert (=> b!5476570 (= (flatMap!1060 z!1189 lambda!291978) (derivationStepZipperUp!709 (h!68695 zl!343) (h!68696 s!2326)))))

(declare-fun lt!2237285 () Unit!155164)

(assert (=> b!5476570 (= lt!2237285 (lemmaFlatMapOnSingletonSet!592 z!1189 (h!68695 zl!343) lambda!291978))))

(declare-fun b!5476571 () Bool)

(assert (=> b!5476571 (= e!3389756 e!3389747)))

(declare-fun res!2334649 () Bool)

(assert (=> b!5476571 (=> res!2334649 e!3389747)))

(declare-fun lt!2237278 () (InoxSet Context!9482))

(assert (=> b!5476571 (= res!2334649 (not (= lt!2237278 lt!2237296)))))

(assert (=> b!5476571 (= lt!2237296 (derivationStepZipperDown!783 r!7292 (Context!9483 Nil!62246) (h!68696 s!2326)))))

(assert (=> b!5476571 (= lt!2237278 (derivationStepZipperUp!709 (Context!9483 (Cons!62246 r!7292 Nil!62246)) (h!68696 s!2326)))))

(assert (=> b!5476571 (= lt!2237276 (derivationStepZipper!1552 z!1189 (h!68696 s!2326)))))

(declare-fun b!5476572 () Bool)

(declare-fun res!2334643 () Bool)

(assert (=> b!5476572 (=> res!2334643 e!3389750)))

(assert (=> b!5476572 (= res!2334643 (not (= (unfocusZipper!1099 (Cons!62247 lt!2237299 Nil!62247)) (reg!15686 r!7292))))))

(declare-fun b!5476573 () Bool)

(declare-fun tp!1505374 () Bool)

(assert (=> b!5476573 (= e!3389743 (and tp_is_empty!39967 tp!1505374))))

(declare-fun b!5476574 () Bool)

(declare-fun res!2334653 () Bool)

(assert (=> b!5476574 (=> res!2334653 e!3389758)))

(assert (=> b!5476574 (= res!2334653 (or (not (= lt!2237280 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!572934 res!2334648) b!5476552))

(assert (= (and b!5476552 res!2334651) b!5476567))

(assert (= (and b!5476567 res!2334644) b!5476563))

(assert (= (and b!5476563 (not res!2334661)) b!5476548))

(assert (= (and b!5476548 (not res!2334646)) b!5476557))

(assert (= (and b!5476557 (not res!2334640)) b!5476546))

(assert (= (and b!5476546 (not res!2334656)) b!5476569))

(assert (= (and b!5476569 (not res!2334657)) b!5476555))

(assert (= (and b!5476555 (not res!2334658)) b!5476568))

(assert (= (and b!5476568 (not res!2334645)) b!5476561))

(assert (= (and b!5476568 (not res!2334650)) b!5476562))

(assert (= (and b!5476562 (not res!2334647)) b!5476571))

(assert (= (and b!5476571 (not res!2334649)) b!5476570))

(assert (= (and b!5476570 (not res!2334662)) b!5476549))

(assert (= (and b!5476549 (not res!2334660)) b!5476547))

(assert (= (and b!5476547 (not res!2334642)) b!5476574))

(assert (= (and b!5476574 (not res!2334653)) b!5476553))

(assert (= (and b!5476553 (not res!2334654)) b!5476564))

(assert (= (and b!5476564 (not res!2334655)) b!5476572))

(assert (= (and b!5476572 (not res!2334643)) b!5476550))

(assert (= (and b!5476550 (not res!2334641)) b!5476565))

(assert (= (and b!5476565 (not res!2334659)) b!5476566))

(assert (= (and b!5476566 (not res!2334652)) b!5476544))

(assert (= (and start!572934 ((_ is ElementMatch!15357) r!7292)) b!5476560))

(assert (= (and start!572934 ((_ is Concat!24202) r!7292)) b!5476551))

(assert (= (and start!572934 ((_ is Star!15357) r!7292)) b!5476559))

(assert (= (and start!572934 ((_ is Union!15357) r!7292)) b!5476554))

(assert (= (and start!572934 ((_ is Cons!62248) s!2326)) b!5476573))

(assert (= start!572934 b!5476556))

(assert (= (and start!572934 condSetEmpty!35989) setIsEmpty!35989))

(assert (= (and start!572934 (not condSetEmpty!35989)) setNonEmpty!35989))

(assert (= setNonEmpty!35989 b!5476545))

(assert (= b!5476558 b!5476543))

(assert (= (and start!572934 ((_ is Cons!62247) zl!343)) b!5476558))

(declare-fun m!6493062 () Bool)

(assert (=> b!5476548 m!6493062))

(declare-fun m!6493064 () Bool)

(assert (=> b!5476552 m!6493064))

(declare-fun m!6493066 () Bool)

(assert (=> b!5476557 m!6493066))

(declare-fun m!6493068 () Bool)

(assert (=> b!5476572 m!6493068))

(declare-fun m!6493070 () Bool)

(assert (=> b!5476549 m!6493070))

(declare-fun m!6493072 () Bool)

(assert (=> b!5476549 m!6493072))

(declare-fun m!6493074 () Bool)

(assert (=> b!5476549 m!6493074))

(declare-fun m!6493076 () Bool)

(assert (=> b!5476549 m!6493076))

(declare-fun m!6493078 () Bool)

(assert (=> b!5476549 m!6493078))

(declare-fun m!6493080 () Bool)

(assert (=> b!5476550 m!6493080))

(declare-fun m!6493082 () Bool)

(assert (=> b!5476544 m!6493082))

(declare-fun m!6493084 () Bool)

(assert (=> b!5476565 m!6493084))

(declare-fun m!6493086 () Bool)

(assert (=> b!5476565 m!6493086))

(declare-fun m!6493088 () Bool)

(assert (=> b!5476565 m!6493088))

(declare-fun m!6493090 () Bool)

(assert (=> setNonEmpty!35989 m!6493090))

(declare-fun m!6493092 () Bool)

(assert (=> b!5476563 m!6493092))

(declare-fun m!6493094 () Bool)

(assert (=> b!5476563 m!6493094))

(declare-fun m!6493096 () Bool)

(assert (=> b!5476563 m!6493096))

(declare-fun m!6493098 () Bool)

(assert (=> b!5476571 m!6493098))

(declare-fun m!6493100 () Bool)

(assert (=> b!5476571 m!6493100))

(declare-fun m!6493102 () Bool)

(assert (=> b!5476571 m!6493102))

(declare-fun m!6493104 () Bool)

(assert (=> b!5476547 m!6493104))

(declare-fun m!6493106 () Bool)

(assert (=> b!5476547 m!6493106))

(assert (=> b!5476547 m!6493106))

(declare-fun m!6493108 () Bool)

(assert (=> b!5476547 m!6493108))

(declare-fun m!6493110 () Bool)

(assert (=> b!5476553 m!6493110))

(declare-fun m!6493112 () Bool)

(assert (=> b!5476558 m!6493112))

(declare-fun m!6493114 () Bool)

(assert (=> b!5476569 m!6493114))

(assert (=> b!5476569 m!6493114))

(declare-fun m!6493116 () Bool)

(assert (=> b!5476569 m!6493116))

(declare-fun m!6493118 () Bool)

(assert (=> b!5476567 m!6493118))

(declare-fun m!6493120 () Bool)

(assert (=> b!5476568 m!6493120))

(declare-fun m!6493122 () Bool)

(assert (=> b!5476568 m!6493122))

(declare-fun m!6493124 () Bool)

(assert (=> b!5476568 m!6493124))

(assert (=> b!5476568 m!6493124))

(declare-fun m!6493126 () Bool)

(assert (=> b!5476568 m!6493126))

(declare-fun m!6493128 () Bool)

(assert (=> b!5476568 m!6493128))

(declare-fun m!6493130 () Bool)

(assert (=> b!5476568 m!6493130))

(assert (=> b!5476568 m!6493124))

(declare-fun m!6493132 () Bool)

(assert (=> b!5476568 m!6493132))

(declare-fun m!6493134 () Bool)

(assert (=> b!5476568 m!6493134))

(assert (=> b!5476568 m!6493130))

(declare-fun m!6493136 () Bool)

(assert (=> b!5476568 m!6493136))

(declare-fun m!6493138 () Bool)

(assert (=> b!5476570 m!6493138))

(declare-fun m!6493140 () Bool)

(assert (=> b!5476570 m!6493140))

(declare-fun m!6493142 () Bool)

(assert (=> b!5476570 m!6493142))

(declare-fun m!6493144 () Bool)

(assert (=> b!5476566 m!6493144))

(declare-fun m!6493146 () Bool)

(assert (=> b!5476564 m!6493146))

(declare-fun m!6493148 () Bool)

(assert (=> b!5476564 m!6493148))

(declare-fun m!6493150 () Bool)

(assert (=> b!5476564 m!6493150))

(declare-fun m!6493152 () Bool)

(assert (=> b!5476564 m!6493152))

(declare-fun m!6493154 () Bool)

(assert (=> b!5476564 m!6493154))

(declare-fun m!6493156 () Bool)

(assert (=> b!5476564 m!6493156))

(declare-fun m!6493158 () Bool)

(assert (=> b!5476564 m!6493158))

(declare-fun m!6493160 () Bool)

(assert (=> b!5476564 m!6493160))

(declare-fun m!6493162 () Bool)

(assert (=> b!5476564 m!6493162))

(declare-fun m!6493164 () Bool)

(assert (=> start!572934 m!6493164))

(declare-fun m!6493166 () Bool)

(assert (=> start!572934 m!6493166))

(check-sat (not b!5476564) (not b!5476567) (not b!5476547) (not b!5476552) (not b!5476548) (not b!5476545) (not b!5476573) (not b!5476557) (not b!5476572) (not b!5476553) (not b!5476566) (not b!5476549) (not b!5476559) (not b!5476558) (not b!5476556) (not b!5476568) (not b!5476570) (not b!5476543) (not b!5476551) (not setNonEmpty!35989) (not b!5476554) (not b!5476565) (not b!5476544) tp_is_empty!39967 (not b!5476571) (not b!5476563) (not b!5476550) (not start!572934) (not b!5476569))
(check-sat)
(get-model)

(declare-fun bs!1265499 () Bool)

(declare-fun d!1739930 () Bool)

(assert (= bs!1265499 (and d!1739930 b!5476570)))

(declare-fun lambda!291982 () Int)

(assert (=> bs!1265499 (= lambda!291982 lambda!291978)))

(assert (=> d!1739930 true))

(assert (=> d!1739930 (= (derivationStepZipper!1552 lt!2237292 (h!68696 s!2326)) (flatMap!1060 lt!2237292 lambda!291982))))

(declare-fun bs!1265500 () Bool)

(assert (= bs!1265500 d!1739930))

(declare-fun m!6493168 () Bool)

(assert (=> bs!1265500 m!6493168))

(assert (=> b!5476564 d!1739930))

(declare-fun d!1739932 () Bool)

(declare-fun choose!41662 ((InoxSet Context!9482) Int) (InoxSet Context!9482))

(assert (=> d!1739932 (= (flatMap!1060 lt!2237286 lambda!291978) (choose!41662 lt!2237286 lambda!291978))))

(declare-fun bs!1265501 () Bool)

(assert (= bs!1265501 d!1739932))

(declare-fun m!6493170 () Bool)

(assert (=> bs!1265501 m!6493170))

(assert (=> b!5476564 d!1739932))

(declare-fun d!1739934 () Bool)

(assert (=> d!1739934 (= (flatMap!1060 lt!2237292 lambda!291978) (choose!41662 lt!2237292 lambda!291978))))

(declare-fun bs!1265502 () Bool)

(assert (= bs!1265502 d!1739934))

(declare-fun m!6493172 () Bool)

(assert (=> bs!1265502 m!6493172))

(assert (=> b!5476564 d!1739934))

(declare-fun b!5476593 () Bool)

(declare-fun e!3389765 () (InoxSet Context!9482))

(assert (=> b!5476593 (= e!3389765 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5476594 () Bool)

(declare-fun e!3389766 () Bool)

(declare-fun nullable!5484 (Regex!15357) Bool)

(assert (=> b!5476594 (= e!3389766 (nullable!5484 (h!68694 (exprs!5241 lt!2237299))))))

(declare-fun bm!404017 () Bool)

(declare-fun call!404022 () (InoxSet Context!9482))

(assert (=> bm!404017 (= call!404022 (derivationStepZipperDown!783 (h!68694 (exprs!5241 lt!2237299)) (Context!9483 (t!375599 (exprs!5241 lt!2237299))) (h!68696 s!2326)))))

(declare-fun d!1739936 () Bool)

(declare-fun c!956744 () Bool)

(assert (=> d!1739936 (= c!956744 e!3389766)))

(declare-fun res!2334665 () Bool)

(assert (=> d!1739936 (=> (not res!2334665) (not e!3389766))))

(assert (=> d!1739936 (= res!2334665 ((_ is Cons!62246) (exprs!5241 lt!2237299)))))

(declare-fun e!3389767 () (InoxSet Context!9482))

(assert (=> d!1739936 (= (derivationStepZipperUp!709 lt!2237299 (h!68696 s!2326)) e!3389767)))

(declare-fun b!5476595 () Bool)

(assert (=> b!5476595 (= e!3389767 e!3389765)))

(declare-fun c!956745 () Bool)

(assert (=> b!5476595 (= c!956745 ((_ is Cons!62246) (exprs!5241 lt!2237299)))))

(declare-fun b!5476596 () Bool)

(assert (=> b!5476596 (= e!3389765 call!404022)))

(declare-fun b!5476597 () Bool)

(assert (=> b!5476597 (= e!3389767 ((_ map or) call!404022 (derivationStepZipperUp!709 (Context!9483 (t!375599 (exprs!5241 lt!2237299))) (h!68696 s!2326))))))

(assert (= (and d!1739936 res!2334665) b!5476594))

(assert (= (and d!1739936 c!956744) b!5476597))

(assert (= (and d!1739936 (not c!956744)) b!5476595))

(assert (= (and b!5476595 c!956745) b!5476596))

(assert (= (and b!5476595 (not c!956745)) b!5476593))

(assert (= (or b!5476597 b!5476596) bm!404017))

(declare-fun m!6493178 () Bool)

(assert (=> b!5476594 m!6493178))

(declare-fun m!6493180 () Bool)

(assert (=> bm!404017 m!6493180))

(declare-fun m!6493182 () Bool)

(assert (=> b!5476597 m!6493182))

(assert (=> b!5476564 d!1739936))

(declare-fun b!5476598 () Bool)

(declare-fun e!3389768 () (InoxSet Context!9482))

(assert (=> b!5476598 (= e!3389768 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5476599 () Bool)

(declare-fun e!3389769 () Bool)

(assert (=> b!5476599 (= e!3389769 (nullable!5484 (h!68694 (exprs!5241 lt!2237297))))))

(declare-fun bm!404018 () Bool)

(declare-fun call!404023 () (InoxSet Context!9482))

(assert (=> bm!404018 (= call!404023 (derivationStepZipperDown!783 (h!68694 (exprs!5241 lt!2237297)) (Context!9483 (t!375599 (exprs!5241 lt!2237297))) (h!68696 s!2326)))))

(declare-fun d!1739944 () Bool)

(declare-fun c!956746 () Bool)

(assert (=> d!1739944 (= c!956746 e!3389769)))

(declare-fun res!2334666 () Bool)

(assert (=> d!1739944 (=> (not res!2334666) (not e!3389769))))

(assert (=> d!1739944 (= res!2334666 ((_ is Cons!62246) (exprs!5241 lt!2237297)))))

(declare-fun e!3389770 () (InoxSet Context!9482))

(assert (=> d!1739944 (= (derivationStepZipperUp!709 lt!2237297 (h!68696 s!2326)) e!3389770)))

(declare-fun b!5476600 () Bool)

(assert (=> b!5476600 (= e!3389770 e!3389768)))

(declare-fun c!956747 () Bool)

(assert (=> b!5476600 (= c!956747 ((_ is Cons!62246) (exprs!5241 lt!2237297)))))

(declare-fun b!5476601 () Bool)

(assert (=> b!5476601 (= e!3389768 call!404023)))

(declare-fun b!5476602 () Bool)

(assert (=> b!5476602 (= e!3389770 ((_ map or) call!404023 (derivationStepZipperUp!709 (Context!9483 (t!375599 (exprs!5241 lt!2237297))) (h!68696 s!2326))))))

(assert (= (and d!1739944 res!2334666) b!5476599))

(assert (= (and d!1739944 c!956746) b!5476602))

(assert (= (and d!1739944 (not c!956746)) b!5476600))

(assert (= (and b!5476600 c!956747) b!5476601))

(assert (= (and b!5476600 (not c!956747)) b!5476598))

(assert (= (or b!5476602 b!5476601) bm!404018))

(declare-fun m!6493184 () Bool)

(assert (=> b!5476599 m!6493184))

(declare-fun m!6493186 () Bool)

(assert (=> bm!404018 m!6493186))

(declare-fun m!6493188 () Bool)

(assert (=> b!5476602 m!6493188))

(assert (=> b!5476564 d!1739944))

(declare-fun d!1739946 () Bool)

(declare-fun dynLambda!24431 (Int Context!9482) (InoxSet Context!9482))

(assert (=> d!1739946 (= (flatMap!1060 lt!2237286 lambda!291978) (dynLambda!24431 lambda!291978 lt!2237299))))

(declare-fun lt!2237308 () Unit!155164)

(declare-fun choose!41664 ((InoxSet Context!9482) Context!9482 Int) Unit!155164)

(assert (=> d!1739946 (= lt!2237308 (choose!41664 lt!2237286 lt!2237299 lambda!291978))))

(assert (=> d!1739946 (= lt!2237286 (store ((as const (Array Context!9482 Bool)) false) lt!2237299 true))))

(assert (=> d!1739946 (= (lemmaFlatMapOnSingletonSet!592 lt!2237286 lt!2237299 lambda!291978) lt!2237308)))

(declare-fun b_lambda!208075 () Bool)

(assert (=> (not b_lambda!208075) (not d!1739946)))

(declare-fun bs!1265506 () Bool)

(assert (= bs!1265506 d!1739946))

(assert (=> bs!1265506 m!6493154))

(declare-fun m!6493218 () Bool)

(assert (=> bs!1265506 m!6493218))

(declare-fun m!6493220 () Bool)

(assert (=> bs!1265506 m!6493220))

(assert (=> bs!1265506 m!6493156))

(assert (=> b!5476564 d!1739946))

(declare-fun d!1739954 () Bool)

(assert (=> d!1739954 (= (flatMap!1060 lt!2237292 lambda!291978) (dynLambda!24431 lambda!291978 lt!2237297))))

(declare-fun lt!2237309 () Unit!155164)

(assert (=> d!1739954 (= lt!2237309 (choose!41664 lt!2237292 lt!2237297 lambda!291978))))

(assert (=> d!1739954 (= lt!2237292 (store ((as const (Array Context!9482 Bool)) false) lt!2237297 true))))

(assert (=> d!1739954 (= (lemmaFlatMapOnSingletonSet!592 lt!2237292 lt!2237297 lambda!291978) lt!2237309)))

(declare-fun b_lambda!208077 () Bool)

(assert (=> (not b_lambda!208077) (not d!1739954)))

(declare-fun bs!1265507 () Bool)

(assert (= bs!1265507 d!1739954))

(assert (=> bs!1265507 m!6493152))

(declare-fun m!6493222 () Bool)

(assert (=> bs!1265507 m!6493222))

(declare-fun m!6493224 () Bool)

(assert (=> bs!1265507 m!6493224))

(assert (=> bs!1265507 m!6493160))

(assert (=> b!5476564 d!1739954))

(declare-fun d!1739956 () Bool)

(declare-fun c!956766 () Bool)

(assert (=> d!1739956 (= c!956766 (isEmpty!34199 s!2326))))

(declare-fun e!3389792 () Bool)

(assert (=> d!1739956 (= (matchZipper!1575 z!1189 s!2326) e!3389792)))

(declare-fun b!5476642 () Bool)

(declare-fun nullableZipper!1505 ((InoxSet Context!9482)) Bool)

(assert (=> b!5476642 (= e!3389792 (nullableZipper!1505 z!1189))))

(declare-fun b!5476643 () Bool)

(declare-fun head!11733 (List!62372) C!30984)

(declare-fun tail!10830 (List!62372) List!62372)

(assert (=> b!5476643 (= e!3389792 (matchZipper!1575 (derivationStepZipper!1552 z!1189 (head!11733 s!2326)) (tail!10830 s!2326)))))

(assert (= (and d!1739956 c!956766) b!5476642))

(assert (= (and d!1739956 (not c!956766)) b!5476643))

(assert (=> d!1739956 m!6493120))

(declare-fun m!6493228 () Bool)

(assert (=> b!5476642 m!6493228))

(declare-fun m!6493230 () Bool)

(assert (=> b!5476643 m!6493230))

(assert (=> b!5476643 m!6493230))

(declare-fun m!6493232 () Bool)

(assert (=> b!5476643 m!6493232))

(declare-fun m!6493234 () Bool)

(assert (=> b!5476643 m!6493234))

(assert (=> b!5476643 m!6493232))

(assert (=> b!5476643 m!6493234))

(declare-fun m!6493236 () Bool)

(assert (=> b!5476643 m!6493236))

(assert (=> b!5476566 d!1739956))

(declare-fun bs!1265515 () Bool)

(declare-fun b!5476772 () Bool)

(assert (= bs!1265515 (and b!5476772 b!5476568)))

(declare-fun lambda!292000 () Int)

(assert (=> bs!1265515 (not (= lambda!292000 lambda!291975))))

(assert (=> bs!1265515 (= (and (= (reg!15686 lt!2237274) (reg!15686 r!7292)) (= lt!2237274 r!7292)) (= lambda!292000 lambda!291976))))

(assert (=> bs!1265515 (not (= lambda!292000 lambda!291977))))

(assert (=> b!5476772 true))

(assert (=> b!5476772 true))

(declare-fun bs!1265516 () Bool)

(declare-fun b!5476765 () Bool)

(assert (= bs!1265516 (and b!5476765 b!5476568)))

(declare-fun lambda!292001 () Int)

(assert (=> bs!1265516 (not (= lambda!292001 lambda!291975))))

(assert (=> bs!1265516 (not (= lambda!292001 lambda!291976))))

(assert (=> bs!1265516 (= (and (= (regOne!31226 lt!2237274) (reg!15686 r!7292)) (= (regTwo!31226 lt!2237274) r!7292)) (= lambda!292001 lambda!291977))))

(declare-fun bs!1265518 () Bool)

(assert (= bs!1265518 (and b!5476765 b!5476772)))

(assert (=> bs!1265518 (not (= lambda!292001 lambda!292000))))

(assert (=> b!5476765 true))

(assert (=> b!5476765 true))

(declare-fun b!5476764 () Bool)

(declare-fun e!3389866 () Bool)

(assert (=> b!5476764 (= e!3389866 (= s!2326 (Cons!62248 (c!956737 lt!2237274) Nil!62248)))))

(declare-fun d!1739960 () Bool)

(declare-fun c!956807 () Bool)

(assert (=> d!1739960 (= c!956807 ((_ is EmptyExpr!15357) lt!2237274))))

(declare-fun e!3389865 () Bool)

(assert (=> d!1739960 (= (matchRSpec!2460 lt!2237274 s!2326) e!3389865)))

(declare-fun e!3389867 () Bool)

(declare-fun call!404052 () Bool)

(assert (=> b!5476765 (= e!3389867 call!404052)))

(declare-fun b!5476766 () Bool)

(declare-fun e!3389864 () Bool)

(declare-fun e!3389868 () Bool)

(assert (=> b!5476766 (= e!3389864 e!3389868)))

(declare-fun res!2334715 () Bool)

(assert (=> b!5476766 (= res!2334715 (matchRSpec!2460 (regOne!31227 lt!2237274) s!2326))))

(assert (=> b!5476766 (=> res!2334715 e!3389868)))

(declare-fun b!5476767 () Bool)

(declare-fun e!3389863 () Bool)

(assert (=> b!5476767 (= e!3389865 e!3389863)))

(declare-fun res!2334716 () Bool)

(assert (=> b!5476767 (= res!2334716 (not ((_ is EmptyLang!15357) lt!2237274)))))

(assert (=> b!5476767 (=> (not res!2334716) (not e!3389863))))

(declare-fun b!5476768 () Bool)

(assert (=> b!5476768 (= e!3389864 e!3389867)))

(declare-fun c!956808 () Bool)

(assert (=> b!5476768 (= c!956808 ((_ is Star!15357) lt!2237274))))

(declare-fun b!5476769 () Bool)

(declare-fun c!956809 () Bool)

(assert (=> b!5476769 (= c!956809 ((_ is ElementMatch!15357) lt!2237274))))

(assert (=> b!5476769 (= e!3389863 e!3389866)))

(declare-fun b!5476770 () Bool)

(declare-fun c!956806 () Bool)

(assert (=> b!5476770 (= c!956806 ((_ is Union!15357) lt!2237274))))

(assert (=> b!5476770 (= e!3389866 e!3389864)))

(declare-fun bm!404046 () Bool)

(declare-fun call!404051 () Bool)

(assert (=> bm!404046 (= call!404051 (isEmpty!34199 s!2326))))

(declare-fun b!5476771 () Bool)

(declare-fun res!2334714 () Bool)

(declare-fun e!3389862 () Bool)

(assert (=> b!5476771 (=> res!2334714 e!3389862)))

(assert (=> b!5476771 (= res!2334714 call!404051)))

(assert (=> b!5476771 (= e!3389867 e!3389862)))

(assert (=> b!5476772 (= e!3389862 call!404052)))

(declare-fun b!5476773 () Bool)

(assert (=> b!5476773 (= e!3389868 (matchRSpec!2460 (regTwo!31227 lt!2237274) s!2326))))

(declare-fun b!5476774 () Bool)

(assert (=> b!5476774 (= e!3389865 call!404051)))

(declare-fun bm!404047 () Bool)

(assert (=> bm!404047 (= call!404052 (Exists!2536 (ite c!956808 lambda!292000 lambda!292001)))))

(assert (= (and d!1739960 c!956807) b!5476774))

(assert (= (and d!1739960 (not c!956807)) b!5476767))

(assert (= (and b!5476767 res!2334716) b!5476769))

(assert (= (and b!5476769 c!956809) b!5476764))

(assert (= (and b!5476769 (not c!956809)) b!5476770))

(assert (= (and b!5476770 c!956806) b!5476766))

(assert (= (and b!5476770 (not c!956806)) b!5476768))

(assert (= (and b!5476766 (not res!2334715)) b!5476773))

(assert (= (and b!5476768 c!956808) b!5476771))

(assert (= (and b!5476768 (not c!956808)) b!5476765))

(assert (= (and b!5476771 (not res!2334714)) b!5476772))

(assert (= (or b!5476772 b!5476765) bm!404047))

(assert (= (or b!5476774 b!5476771) bm!404046))

(declare-fun m!6493288 () Bool)

(assert (=> b!5476766 m!6493288))

(assert (=> bm!404046 m!6493120))

(declare-fun m!6493292 () Bool)

(assert (=> b!5476773 m!6493292))

(declare-fun m!6493294 () Bool)

(assert (=> bm!404047 m!6493294))

(assert (=> b!5476565 d!1739960))

(declare-fun b!5476863 () Bool)

(declare-fun e!3389918 () Bool)

(declare-fun e!3389917 () Bool)

(assert (=> b!5476863 (= e!3389918 e!3389917)))

(declare-fun c!956832 () Bool)

(assert (=> b!5476863 (= c!956832 ((_ is EmptyLang!15357) lt!2237274))))

(declare-fun b!5476865 () Bool)

(declare-fun lt!2237326 () Bool)

(declare-fun call!404063 () Bool)

(assert (=> b!5476865 (= e!3389918 (= lt!2237326 call!404063))))

(declare-fun b!5476866 () Bool)

(declare-fun e!3389916 () Bool)

(assert (=> b!5476866 (= e!3389916 (nullable!5484 lt!2237274))))

(declare-fun b!5476867 () Bool)

(declare-fun derivativeStep!4329 (Regex!15357 C!30984) Regex!15357)

(assert (=> b!5476867 (= e!3389916 (matchR!7542 (derivativeStep!4329 lt!2237274 (head!11733 s!2326)) (tail!10830 s!2326)))))

(declare-fun b!5476868 () Bool)

(declare-fun res!2334768 () Bool)

(declare-fun e!3389920 () Bool)

(assert (=> b!5476868 (=> res!2334768 e!3389920)))

(assert (=> b!5476868 (= res!2334768 (not ((_ is ElementMatch!15357) lt!2237274)))))

(assert (=> b!5476868 (= e!3389917 e!3389920)))

(declare-fun b!5476869 () Bool)

(declare-fun res!2334761 () Bool)

(declare-fun e!3389921 () Bool)

(assert (=> b!5476869 (=> res!2334761 e!3389921)))

(assert (=> b!5476869 (= res!2334761 (not (isEmpty!34199 (tail!10830 s!2326))))))

(declare-fun b!5476870 () Bool)

(declare-fun e!3389919 () Bool)

(assert (=> b!5476870 (= e!3389920 e!3389919)))

(declare-fun res!2334767 () Bool)

(assert (=> b!5476870 (=> (not res!2334767) (not e!3389919))))

(assert (=> b!5476870 (= res!2334767 (not lt!2237326))))

(declare-fun b!5476871 () Bool)

(assert (=> b!5476871 (= e!3389919 e!3389921)))

(declare-fun res!2334765 () Bool)

(assert (=> b!5476871 (=> res!2334765 e!3389921)))

(assert (=> b!5476871 (= res!2334765 call!404063)))

(declare-fun b!5476872 () Bool)

(declare-fun res!2334763 () Bool)

(assert (=> b!5476872 (=> res!2334763 e!3389920)))

(declare-fun e!3389915 () Bool)

(assert (=> b!5476872 (= res!2334763 e!3389915)))

(declare-fun res!2334766 () Bool)

(assert (=> b!5476872 (=> (not res!2334766) (not e!3389915))))

(assert (=> b!5476872 (= res!2334766 lt!2237326)))

(declare-fun b!5476873 () Bool)

(declare-fun res!2334764 () Bool)

(assert (=> b!5476873 (=> (not res!2334764) (not e!3389915))))

(assert (=> b!5476873 (= res!2334764 (not call!404063))))

(declare-fun b!5476864 () Bool)

(assert (=> b!5476864 (= e!3389915 (= (head!11733 s!2326) (c!956737 lt!2237274)))))

(declare-fun d!1739976 () Bool)

(assert (=> d!1739976 e!3389918))

(declare-fun c!956834 () Bool)

(assert (=> d!1739976 (= c!956834 ((_ is EmptyExpr!15357) lt!2237274))))

(assert (=> d!1739976 (= lt!2237326 e!3389916)))

(declare-fun c!956833 () Bool)

(assert (=> d!1739976 (= c!956833 (isEmpty!34199 s!2326))))

(assert (=> d!1739976 (validRegex!7093 lt!2237274)))

(assert (=> d!1739976 (= (matchR!7542 lt!2237274 s!2326) lt!2237326)))

(declare-fun bm!404058 () Bool)

(assert (=> bm!404058 (= call!404063 (isEmpty!34199 s!2326))))

(declare-fun b!5476874 () Bool)

(declare-fun res!2334762 () Bool)

(assert (=> b!5476874 (=> (not res!2334762) (not e!3389915))))

(assert (=> b!5476874 (= res!2334762 (isEmpty!34199 (tail!10830 s!2326)))))

(declare-fun b!5476875 () Bool)

(assert (=> b!5476875 (= e!3389921 (not (= (head!11733 s!2326) (c!956737 lt!2237274))))))

(declare-fun b!5476876 () Bool)

(assert (=> b!5476876 (= e!3389917 (not lt!2237326))))

(assert (= (and d!1739976 c!956833) b!5476866))

(assert (= (and d!1739976 (not c!956833)) b!5476867))

(assert (= (and d!1739976 c!956834) b!5476865))

(assert (= (and d!1739976 (not c!956834)) b!5476863))

(assert (= (and b!5476863 c!956832) b!5476876))

(assert (= (and b!5476863 (not c!956832)) b!5476868))

(assert (= (and b!5476868 (not res!2334768)) b!5476872))

(assert (= (and b!5476872 res!2334766) b!5476873))

(assert (= (and b!5476873 res!2334764) b!5476874))

(assert (= (and b!5476874 res!2334762) b!5476864))

(assert (= (and b!5476872 (not res!2334763)) b!5476870))

(assert (= (and b!5476870 res!2334767) b!5476871))

(assert (= (and b!5476871 (not res!2334765)) b!5476869))

(assert (= (and b!5476869 (not res!2334761)) b!5476875))

(assert (= (or b!5476865 b!5476871 b!5476873) bm!404058))

(assert (=> b!5476875 m!6493230))

(assert (=> b!5476867 m!6493230))

(assert (=> b!5476867 m!6493230))

(declare-fun m!6493332 () Bool)

(assert (=> b!5476867 m!6493332))

(assert (=> b!5476867 m!6493234))

(assert (=> b!5476867 m!6493332))

(assert (=> b!5476867 m!6493234))

(declare-fun m!6493334 () Bool)

(assert (=> b!5476867 m!6493334))

(assert (=> b!5476874 m!6493234))

(assert (=> b!5476874 m!6493234))

(declare-fun m!6493336 () Bool)

(assert (=> b!5476874 m!6493336))

(assert (=> d!1739976 m!6493120))

(declare-fun m!6493338 () Bool)

(assert (=> d!1739976 m!6493338))

(assert (=> bm!404058 m!6493120))

(assert (=> b!5476864 m!6493230))

(assert (=> b!5476869 m!6493234))

(assert (=> b!5476869 m!6493234))

(assert (=> b!5476869 m!6493336))

(declare-fun m!6493340 () Bool)

(assert (=> b!5476866 m!6493340))

(assert (=> b!5476565 d!1739976))

(declare-fun d!1739996 () Bool)

(assert (=> d!1739996 (= (matchR!7542 lt!2237274 s!2326) (matchRSpec!2460 lt!2237274 s!2326))))

(declare-fun lt!2237332 () Unit!155164)

(declare-fun choose!41668 (Regex!15357 List!62372) Unit!155164)

(assert (=> d!1739996 (= lt!2237332 (choose!41668 lt!2237274 s!2326))))

(assert (=> d!1739996 (validRegex!7093 lt!2237274)))

(assert (=> d!1739996 (= (mainMatchTheorem!2460 lt!2237274 s!2326) lt!2237332)))

(declare-fun bs!1265533 () Bool)

(assert (= bs!1265533 d!1739996))

(assert (=> bs!1265533 m!6493086))

(assert (=> bs!1265533 m!6493084))

(declare-fun m!6493342 () Bool)

(assert (=> bs!1265533 m!6493342))

(assert (=> bs!1265533 m!6493338))

(assert (=> b!5476565 d!1739996))

(declare-fun d!1739998 () Bool)

(declare-fun c!956835 () Bool)

(assert (=> d!1739998 (= c!956835 (isEmpty!34199 s!2326))))

(declare-fun e!3389926 () Bool)

(assert (=> d!1739998 (= (matchZipper!1575 lt!2237279 s!2326) e!3389926)))

(declare-fun b!5476887 () Bool)

(assert (=> b!5476887 (= e!3389926 (nullableZipper!1505 lt!2237279))))

(declare-fun b!5476888 () Bool)

(assert (=> b!5476888 (= e!3389926 (matchZipper!1575 (derivationStepZipper!1552 lt!2237279 (head!11733 s!2326)) (tail!10830 s!2326)))))

(assert (= (and d!1739998 c!956835) b!5476887))

(assert (= (and d!1739998 (not c!956835)) b!5476888))

(assert (=> d!1739998 m!6493120))

(declare-fun m!6493352 () Bool)

(assert (=> b!5476887 m!6493352))

(assert (=> b!5476888 m!6493230))

(assert (=> b!5476888 m!6493230))

(declare-fun m!6493354 () Bool)

(assert (=> b!5476888 m!6493354))

(assert (=> b!5476888 m!6493234))

(assert (=> b!5476888 m!6493354))

(assert (=> b!5476888 m!6493234))

(declare-fun m!6493356 () Bool)

(assert (=> b!5476888 m!6493356))

(assert (=> b!5476547 d!1739998))

(declare-fun d!1740004 () Bool)

(declare-fun c!956836 () Bool)

(assert (=> d!1740004 (= c!956836 (isEmpty!34199 (t!375601 s!2326)))))

(declare-fun e!3389927 () Bool)

(assert (=> d!1740004 (= (matchZipper!1575 (derivationStepZipper!1552 lt!2237279 (h!68696 s!2326)) (t!375601 s!2326)) e!3389927)))

(declare-fun b!5476889 () Bool)

(assert (=> b!5476889 (= e!3389927 (nullableZipper!1505 (derivationStepZipper!1552 lt!2237279 (h!68696 s!2326))))))

(declare-fun b!5476890 () Bool)

(assert (=> b!5476890 (= e!3389927 (matchZipper!1575 (derivationStepZipper!1552 (derivationStepZipper!1552 lt!2237279 (h!68696 s!2326)) (head!11733 (t!375601 s!2326))) (tail!10830 (t!375601 s!2326))))))

(assert (= (and d!1740004 c!956836) b!5476889))

(assert (= (and d!1740004 (not c!956836)) b!5476890))

(declare-fun m!6493362 () Bool)

(assert (=> d!1740004 m!6493362))

(assert (=> b!5476889 m!6493106))

(declare-fun m!6493364 () Bool)

(assert (=> b!5476889 m!6493364))

(declare-fun m!6493366 () Bool)

(assert (=> b!5476890 m!6493366))

(assert (=> b!5476890 m!6493106))

(assert (=> b!5476890 m!6493366))

(declare-fun m!6493368 () Bool)

(assert (=> b!5476890 m!6493368))

(declare-fun m!6493370 () Bool)

(assert (=> b!5476890 m!6493370))

(assert (=> b!5476890 m!6493368))

(assert (=> b!5476890 m!6493370))

(declare-fun m!6493372 () Bool)

(assert (=> b!5476890 m!6493372))

(assert (=> b!5476547 d!1740004))

(declare-fun bs!1265536 () Bool)

(declare-fun d!1740010 () Bool)

(assert (= bs!1265536 (and d!1740010 b!5476570)))

(declare-fun lambda!292011 () Int)

(assert (=> bs!1265536 (= lambda!292011 lambda!291978)))

(declare-fun bs!1265537 () Bool)

(assert (= bs!1265537 (and d!1740010 d!1739930)))

(assert (=> bs!1265537 (= lambda!292011 lambda!291982)))

(assert (=> d!1740010 true))

(assert (=> d!1740010 (= (derivationStepZipper!1552 lt!2237279 (h!68696 s!2326)) (flatMap!1060 lt!2237279 lambda!292011))))

(declare-fun bs!1265538 () Bool)

(assert (= bs!1265538 d!1740010))

(declare-fun m!6493374 () Bool)

(assert (=> bs!1265538 m!6493374))

(assert (=> b!5476547 d!1740010))

(declare-fun bm!404065 () Bool)

(declare-fun call!404072 () Bool)

(declare-fun call!404070 () Bool)

(assert (=> bm!404065 (= call!404072 call!404070)))

(declare-fun b!5476917 () Bool)

(declare-fun e!3389951 () Bool)

(declare-fun e!3389948 () Bool)

(assert (=> b!5476917 (= e!3389951 e!3389948)))

(declare-fun c!956841 () Bool)

(assert (=> b!5476917 (= c!956841 ((_ is Star!15357) r!7292))))

(declare-fun b!5476918 () Bool)

(declare-fun e!3389949 () Bool)

(declare-fun e!3389947 () Bool)

(assert (=> b!5476918 (= e!3389949 e!3389947)))

(declare-fun res!2334800 () Bool)

(assert (=> b!5476918 (=> (not res!2334800) (not e!3389947))))

(declare-fun call!404071 () Bool)

(assert (=> b!5476918 (= res!2334800 call!404071)))

(declare-fun d!1740012 () Bool)

(declare-fun res!2334798 () Bool)

(assert (=> d!1740012 (=> res!2334798 e!3389951)))

(assert (=> d!1740012 (= res!2334798 ((_ is ElementMatch!15357) r!7292))))

(assert (=> d!1740012 (= (validRegex!7093 r!7292) e!3389951)))

(declare-fun b!5476919 () Bool)

(declare-fun e!3389952 () Bool)

(assert (=> b!5476919 (= e!3389952 call!404070)))

(declare-fun b!5476920 () Bool)

(declare-fun res!2334799 () Bool)

(assert (=> b!5476920 (=> res!2334799 e!3389949)))

(assert (=> b!5476920 (= res!2334799 (not ((_ is Concat!24202) r!7292)))))

(declare-fun e!3389950 () Bool)

(assert (=> b!5476920 (= e!3389950 e!3389949)))

(declare-fun b!5476921 () Bool)

(declare-fun res!2334801 () Bool)

(declare-fun e!3389946 () Bool)

(assert (=> b!5476921 (=> (not res!2334801) (not e!3389946))))

(assert (=> b!5476921 (= res!2334801 call!404071)))

(assert (=> b!5476921 (= e!3389950 e!3389946)))

(declare-fun b!5476922 () Bool)

(assert (=> b!5476922 (= e!3389947 call!404072)))

(declare-fun b!5476923 () Bool)

(assert (=> b!5476923 (= e!3389948 e!3389950)))

(declare-fun c!956842 () Bool)

(assert (=> b!5476923 (= c!956842 ((_ is Union!15357) r!7292))))

(declare-fun b!5476924 () Bool)

(assert (=> b!5476924 (= e!3389946 call!404072)))

(declare-fun bm!404066 () Bool)

(assert (=> bm!404066 (= call!404070 (validRegex!7093 (ite c!956841 (reg!15686 r!7292) (ite c!956842 (regTwo!31227 r!7292) (regTwo!31226 r!7292)))))))

(declare-fun bm!404067 () Bool)

(assert (=> bm!404067 (= call!404071 (validRegex!7093 (ite c!956842 (regOne!31227 r!7292) (regOne!31226 r!7292))))))

(declare-fun b!5476925 () Bool)

(assert (=> b!5476925 (= e!3389948 e!3389952)))

(declare-fun res!2334797 () Bool)

(assert (=> b!5476925 (= res!2334797 (not (nullable!5484 (reg!15686 r!7292))))))

(assert (=> b!5476925 (=> (not res!2334797) (not e!3389952))))

(assert (= (and d!1740012 (not res!2334798)) b!5476917))

(assert (= (and b!5476917 c!956841) b!5476925))

(assert (= (and b!5476917 (not c!956841)) b!5476923))

(assert (= (and b!5476925 res!2334797) b!5476919))

(assert (= (and b!5476923 c!956842) b!5476921))

(assert (= (and b!5476923 (not c!956842)) b!5476920))

(assert (= (and b!5476921 res!2334801) b!5476924))

(assert (= (and b!5476920 (not res!2334799)) b!5476918))

(assert (= (and b!5476918 res!2334800) b!5476922))

(assert (= (or b!5476924 b!5476922) bm!404065))

(assert (= (or b!5476921 b!5476918) bm!404067))

(assert (= (or b!5476919 bm!404065) bm!404066))

(declare-fun m!6493384 () Bool)

(assert (=> bm!404066 m!6493384))

(declare-fun m!6493386 () Bool)

(assert (=> bm!404067 m!6493386))

(declare-fun m!6493388 () Bool)

(assert (=> b!5476925 m!6493388))

(assert (=> start!572934 d!1740012))

(declare-fun bs!1265545 () Bool)

(declare-fun d!1740018 () Bool)

(assert (= bs!1265545 (and d!1740018 b!5476544)))

(declare-fun lambda!292020 () Int)

(assert (=> bs!1265545 (= lambda!292020 lambda!291979)))

(assert (=> d!1740018 (= (inv!81639 c!332) (forall!14614 (exprs!5241 c!332) lambda!292020))))

(declare-fun bs!1265546 () Bool)

(assert (= bs!1265546 d!1740018))

(declare-fun m!6493390 () Bool)

(assert (=> bs!1265546 m!6493390))

(assert (=> start!572934 d!1740018))

(declare-fun d!1740020 () Bool)

(declare-fun lt!2237338 () Regex!15357)

(assert (=> d!1740020 (validRegex!7093 lt!2237338)))

(assert (=> d!1740020 (= lt!2237338 (generalisedUnion!1286 (unfocusZipperList!799 zl!343)))))

(assert (=> d!1740020 (= (unfocusZipper!1099 zl!343) lt!2237338)))

(declare-fun bs!1265547 () Bool)

(assert (= bs!1265547 d!1740020))

(declare-fun m!6493392 () Bool)

(assert (=> bs!1265547 m!6493392))

(assert (=> bs!1265547 m!6493114))

(assert (=> bs!1265547 m!6493114))

(assert (=> bs!1265547 m!6493116))

(assert (=> b!5476567 d!1740020))

(declare-fun bs!1265548 () Bool)

(declare-fun d!1740022 () Bool)

(assert (= bs!1265548 (and d!1740022 b!5476544)))

(declare-fun lambda!292025 () Int)

(assert (=> bs!1265548 (= lambda!292025 lambda!291979)))

(declare-fun bs!1265549 () Bool)

(assert (= bs!1265549 (and d!1740022 d!1740018)))

(assert (=> bs!1265549 (= lambda!292025 lambda!292020)))

(declare-fun b!5476977 () Bool)

(declare-fun e!3389985 () Regex!15357)

(assert (=> b!5476977 (= e!3389985 EmptyExpr!15357)))

(declare-fun b!5476978 () Bool)

(declare-fun e!3389983 () Bool)

(declare-fun lt!2237352 () Regex!15357)

(declare-fun isEmptyExpr!1040 (Regex!15357) Bool)

(assert (=> b!5476978 (= e!3389983 (isEmptyExpr!1040 lt!2237352))))

(declare-fun b!5476979 () Bool)

(assert (=> b!5476979 (= e!3389985 (Concat!24202 (h!68694 (exprs!5241 (h!68695 zl!343))) (generalisedConcat!1026 (t!375599 (exprs!5241 (h!68695 zl!343))))))))

(declare-fun b!5476980 () Bool)

(declare-fun e!3389986 () Regex!15357)

(assert (=> b!5476980 (= e!3389986 (h!68694 (exprs!5241 (h!68695 zl!343))))))

(declare-fun b!5476981 () Bool)

(declare-fun e!3389984 () Bool)

(assert (=> b!5476981 (= e!3389983 e!3389984)))

(declare-fun c!956859 () Bool)

(declare-fun isEmpty!34202 (List!62370) Bool)

(declare-fun tail!10831 (List!62370) List!62370)

(assert (=> b!5476981 (= c!956859 (isEmpty!34202 (tail!10831 (exprs!5241 (h!68695 zl!343)))))))

(declare-fun b!5476982 () Bool)

(assert (=> b!5476982 (= e!3389986 e!3389985)))

(declare-fun c!956860 () Bool)

(assert (=> b!5476982 (= c!956860 ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343))))))

(declare-fun b!5476983 () Bool)

(declare-fun head!11734 (List!62370) Regex!15357)

(assert (=> b!5476983 (= e!3389984 (= lt!2237352 (head!11734 (exprs!5241 (h!68695 zl!343)))))))

(declare-fun b!5476984 () Bool)

(declare-fun e!3389987 () Bool)

(assert (=> b!5476984 (= e!3389987 (isEmpty!34202 (t!375599 (exprs!5241 (h!68695 zl!343)))))))

(declare-fun e!3389982 () Bool)

(assert (=> d!1740022 e!3389982))

(declare-fun res!2334826 () Bool)

(assert (=> d!1740022 (=> (not res!2334826) (not e!3389982))))

(assert (=> d!1740022 (= res!2334826 (validRegex!7093 lt!2237352))))

(assert (=> d!1740022 (= lt!2237352 e!3389986)))

(declare-fun c!956858 () Bool)

(assert (=> d!1740022 (= c!956858 e!3389987)))

(declare-fun res!2334825 () Bool)

(assert (=> d!1740022 (=> (not res!2334825) (not e!3389987))))

(assert (=> d!1740022 (= res!2334825 ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343))))))

(assert (=> d!1740022 (forall!14614 (exprs!5241 (h!68695 zl!343)) lambda!292025)))

(assert (=> d!1740022 (= (generalisedConcat!1026 (exprs!5241 (h!68695 zl!343))) lt!2237352)))

(declare-fun b!5476985 () Bool)

(declare-fun isConcat!563 (Regex!15357) Bool)

(assert (=> b!5476985 (= e!3389984 (isConcat!563 lt!2237352))))

(declare-fun b!5476986 () Bool)

(assert (=> b!5476986 (= e!3389982 e!3389983)))

(declare-fun c!956857 () Bool)

(assert (=> b!5476986 (= c!956857 (isEmpty!34202 (exprs!5241 (h!68695 zl!343))))))

(assert (= (and d!1740022 res!2334825) b!5476984))

(assert (= (and d!1740022 c!956858) b!5476980))

(assert (= (and d!1740022 (not c!956858)) b!5476982))

(assert (= (and b!5476982 c!956860) b!5476979))

(assert (= (and b!5476982 (not c!956860)) b!5476977))

(assert (= (and d!1740022 res!2334826) b!5476986))

(assert (= (and b!5476986 c!956857) b!5476978))

(assert (= (and b!5476986 (not c!956857)) b!5476981))

(assert (= (and b!5476981 c!956859) b!5476983))

(assert (= (and b!5476981 (not c!956859)) b!5476985))

(declare-fun m!6493414 () Bool)

(assert (=> b!5476984 m!6493414))

(declare-fun m!6493416 () Bool)

(assert (=> b!5476986 m!6493416))

(declare-fun m!6493418 () Bool)

(assert (=> b!5476979 m!6493418))

(declare-fun m!6493420 () Bool)

(assert (=> b!5476978 m!6493420))

(declare-fun m!6493424 () Bool)

(assert (=> d!1740022 m!6493424))

(declare-fun m!6493426 () Bool)

(assert (=> d!1740022 m!6493426))

(declare-fun m!6493428 () Bool)

(assert (=> b!5476985 m!6493428))

(declare-fun m!6493432 () Bool)

(assert (=> b!5476981 m!6493432))

(assert (=> b!5476981 m!6493432))

(declare-fun m!6493434 () Bool)

(assert (=> b!5476981 m!6493434))

(declare-fun m!6493436 () Bool)

(assert (=> b!5476983 m!6493436))

(assert (=> b!5476557 d!1740022))

(declare-fun bs!1265556 () Bool)

(declare-fun d!1740028 () Bool)

(assert (= bs!1265556 (and d!1740028 b!5476544)))

(declare-fun lambda!292027 () Int)

(assert (=> bs!1265556 (= lambda!292027 lambda!291979)))

(declare-fun bs!1265557 () Bool)

(assert (= bs!1265557 (and d!1740028 d!1740018)))

(assert (=> bs!1265557 (= lambda!292027 lambda!292020)))

(declare-fun bs!1265558 () Bool)

(assert (= bs!1265558 (and d!1740028 d!1740022)))

(assert (=> bs!1265558 (= lambda!292027 lambda!292025)))

(assert (=> d!1740028 (= (inv!81639 setElem!35989) (forall!14614 (exprs!5241 setElem!35989) lambda!292027))))

(declare-fun bs!1265559 () Bool)

(assert (= bs!1265559 d!1740028))

(declare-fun m!6493438 () Bool)

(assert (=> bs!1265559 m!6493438))

(assert (=> setNonEmpty!35989 d!1740028))

(declare-fun d!1740030 () Bool)

(assert (=> d!1740030 (= (isEmpty!34198 (t!375600 zl!343)) ((_ is Nil!62247) (t!375600 zl!343)))))

(assert (=> b!5476548 d!1740030))

(declare-fun d!1740032 () Bool)

(declare-fun choose!41670 (Int) Bool)

(assert (=> d!1740032 (= (Exists!2536 lambda!291976) (choose!41670 lambda!291976))))

(declare-fun bs!1265560 () Bool)

(assert (= bs!1265560 d!1740032))

(declare-fun m!6493456 () Bool)

(assert (=> bs!1265560 m!6493456))

(assert (=> b!5476568 d!1740032))

(declare-fun d!1740038 () Bool)

(assert (=> d!1740038 (= (Exists!2536 lambda!291975) (choose!41670 lambda!291975))))

(declare-fun bs!1265563 () Bool)

(assert (= bs!1265563 d!1740038))

(declare-fun m!6493458 () Bool)

(assert (=> bs!1265563 m!6493458))

(assert (=> b!5476568 d!1740038))

(declare-fun d!1740040 () Bool)

(declare-fun isEmpty!34203 (Option!15466) Bool)

(assert (=> d!1740040 (= (isDefined!12169 (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 Nil!62248 s!2326 s!2326)) (not (isEmpty!34203 (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 Nil!62248 s!2326 s!2326))))))

(declare-fun bs!1265565 () Bool)

(assert (= bs!1265565 d!1740040))

(assert (=> bs!1265565 m!6493130))

(declare-fun m!6493462 () Bool)

(assert (=> bs!1265565 m!6493462))

(assert (=> b!5476568 d!1740040))

(declare-fun bs!1265586 () Bool)

(declare-fun d!1740044 () Bool)

(assert (= bs!1265586 (and d!1740044 b!5476772)))

(declare-fun lambda!292036 () Int)

(assert (=> bs!1265586 (not (= lambda!292036 lambda!292000))))

(declare-fun bs!1265588 () Bool)

(assert (= bs!1265588 (and d!1740044 b!5476568)))

(assert (=> bs!1265588 (= lambda!292036 lambda!291975)))

(declare-fun bs!1265590 () Bool)

(assert (= bs!1265590 (and d!1740044 b!5476765)))

(assert (=> bs!1265590 (not (= lambda!292036 lambda!292001))))

(assert (=> bs!1265588 (not (= lambda!292036 lambda!291976))))

(assert (=> bs!1265588 (not (= lambda!292036 lambda!291977))))

(assert (=> d!1740044 true))

(assert (=> d!1740044 true))

(assert (=> d!1740044 true))

(declare-fun lambda!292037 () Int)

(assert (=> bs!1265586 (not (= lambda!292037 lambda!292000))))

(assert (=> bs!1265588 (not (= lambda!292037 lambda!291975))))

(declare-fun bs!1265592 () Bool)

(assert (= bs!1265592 d!1740044))

(assert (=> bs!1265592 (not (= lambda!292037 lambda!292036))))

(assert (=> bs!1265590 (= (and (= (reg!15686 r!7292) (regOne!31226 lt!2237274)) (= r!7292 (regTwo!31226 lt!2237274))) (= lambda!292037 lambda!292001))))

(assert (=> bs!1265588 (not (= lambda!292037 lambda!291976))))

(assert (=> bs!1265588 (= lambda!292037 lambda!291977)))

(assert (=> d!1740044 true))

(assert (=> d!1740044 true))

(assert (=> d!1740044 true))

(assert (=> d!1740044 (= (Exists!2536 lambda!292036) (Exists!2536 lambda!292037))))

(declare-fun lt!2237359 () Unit!155164)

(declare-fun choose!41671 (Regex!15357 Regex!15357 List!62372) Unit!155164)

(assert (=> d!1740044 (= lt!2237359 (choose!41671 (reg!15686 r!7292) r!7292 s!2326))))

(assert (=> d!1740044 (validRegex!7093 (reg!15686 r!7292))))

(assert (=> d!1740044 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1186 (reg!15686 r!7292) r!7292 s!2326) lt!2237359)))

(declare-fun m!6493520 () Bool)

(assert (=> bs!1265592 m!6493520))

(declare-fun m!6493522 () Bool)

(assert (=> bs!1265592 m!6493522))

(declare-fun m!6493524 () Bool)

(assert (=> bs!1265592 m!6493524))

(declare-fun m!6493526 () Bool)

(assert (=> bs!1265592 m!6493526))

(assert (=> b!5476568 d!1740044))

(declare-fun bs!1265603 () Bool)

(declare-fun d!1740072 () Bool)

(assert (= bs!1265603 (and d!1740072 b!5476772)))

(declare-fun lambda!292046 () Int)

(assert (=> bs!1265603 (not (= lambda!292046 lambda!292000))))

(declare-fun bs!1265604 () Bool)

(assert (= bs!1265604 (and d!1740072 d!1740044)))

(assert (=> bs!1265604 (not (= lambda!292046 lambda!292037))))

(declare-fun bs!1265605 () Bool)

(assert (= bs!1265605 (and d!1740072 b!5476568)))

(assert (=> bs!1265605 (= (= (Star!15357 (reg!15686 r!7292)) r!7292) (= lambda!292046 lambda!291975))))

(assert (=> bs!1265604 (= (= (Star!15357 (reg!15686 r!7292)) r!7292) (= lambda!292046 lambda!292036))))

(declare-fun bs!1265606 () Bool)

(assert (= bs!1265606 (and d!1740072 b!5476765)))

(assert (=> bs!1265606 (not (= lambda!292046 lambda!292001))))

(assert (=> bs!1265605 (not (= lambda!292046 lambda!291976))))

(assert (=> bs!1265605 (not (= lambda!292046 lambda!291977))))

(assert (=> d!1740072 true))

(assert (=> d!1740072 true))

(declare-fun lambda!292049 () Int)

(assert (=> bs!1265603 (= (and (= (reg!15686 r!7292) (reg!15686 lt!2237274)) (= (Star!15357 (reg!15686 r!7292)) lt!2237274)) (= lambda!292049 lambda!292000))))

(assert (=> bs!1265604 (not (= lambda!292049 lambda!292037))))

(declare-fun bs!1265607 () Bool)

(assert (= bs!1265607 d!1740072))

(assert (=> bs!1265607 (not (= lambda!292049 lambda!292046))))

(assert (=> bs!1265605 (not (= lambda!292049 lambda!291975))))

(assert (=> bs!1265604 (not (= lambda!292049 lambda!292036))))

(assert (=> bs!1265606 (not (= lambda!292049 lambda!292001))))

(assert (=> bs!1265605 (= (= (Star!15357 (reg!15686 r!7292)) r!7292) (= lambda!292049 lambda!291976))))

(assert (=> bs!1265605 (not (= lambda!292049 lambda!291977))))

(assert (=> d!1740072 true))

(assert (=> d!1740072 true))

(assert (=> d!1740072 (= (Exists!2536 lambda!292046) (Exists!2536 lambda!292049))))

(declare-fun lt!2237367 () Unit!155164)

(declare-fun choose!41672 (Regex!15357 List!62372) Unit!155164)

(assert (=> d!1740072 (= lt!2237367 (choose!41672 (reg!15686 r!7292) s!2326))))

(assert (=> d!1740072 (validRegex!7093 (reg!15686 r!7292))))

(assert (=> d!1740072 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!510 (reg!15686 r!7292) s!2326) lt!2237367)))

(declare-fun m!6493550 () Bool)

(assert (=> bs!1265607 m!6493550))

(declare-fun m!6493552 () Bool)

(assert (=> bs!1265607 m!6493552))

(declare-fun m!6493554 () Bool)

(assert (=> bs!1265607 m!6493554))

(assert (=> bs!1265607 m!6493526))

(assert (=> b!5476568 d!1740072))

(declare-fun d!1740078 () Bool)

(assert (=> d!1740078 (= (isEmpty!34199 s!2326) ((_ is Nil!62248) s!2326))))

(assert (=> b!5476568 d!1740078))

(declare-fun d!1740082 () Bool)

(assert (=> d!1740082 (= (Exists!2536 lambda!291977) (choose!41670 lambda!291977))))

(declare-fun bs!1265615 () Bool)

(assert (= bs!1265615 d!1740082))

(declare-fun m!6493562 () Bool)

(assert (=> bs!1265615 m!6493562))

(assert (=> b!5476568 d!1740082))

(declare-fun b!5477198 () Bool)

(declare-fun res!2334899 () Bool)

(declare-fun e!3390107 () Bool)

(assert (=> b!5477198 (=> (not res!2334899) (not e!3390107))))

(declare-fun lt!2237379 () Option!15466)

(declare-fun get!21466 (Option!15466) tuple2!65108)

(assert (=> b!5477198 (= res!2334899 (matchR!7542 r!7292 (_2!35857 (get!21466 lt!2237379))))))

(declare-fun b!5477199 () Bool)

(declare-fun e!3390109 () Option!15466)

(declare-fun e!3390110 () Option!15466)

(assert (=> b!5477199 (= e!3390109 e!3390110)))

(declare-fun c!956905 () Bool)

(assert (=> b!5477199 (= c!956905 ((_ is Nil!62248) s!2326))))

(declare-fun b!5477200 () Bool)

(declare-fun lt!2237378 () Unit!155164)

(declare-fun lt!2237380 () Unit!155164)

(assert (=> b!5477200 (= lt!2237378 lt!2237380)))

(declare-fun ++!13698 (List!62372 List!62372) List!62372)

(assert (=> b!5477200 (= (++!13698 (++!13698 Nil!62248 (Cons!62248 (h!68696 s!2326) Nil!62248)) (t!375601 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1903 (List!62372 C!30984 List!62372 List!62372) Unit!155164)

(assert (=> b!5477200 (= lt!2237380 (lemmaMoveElementToOtherListKeepsConcatEq!1903 Nil!62248 (h!68696 s!2326) (t!375601 s!2326) s!2326))))

(assert (=> b!5477200 (= e!3390110 (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 (++!13698 Nil!62248 (Cons!62248 (h!68696 s!2326) Nil!62248)) (t!375601 s!2326) s!2326))))

(declare-fun d!1740084 () Bool)

(declare-fun e!3390108 () Bool)

(assert (=> d!1740084 e!3390108))

(declare-fun res!2334900 () Bool)

(assert (=> d!1740084 (=> res!2334900 e!3390108)))

(assert (=> d!1740084 (= res!2334900 e!3390107)))

(declare-fun res!2334897 () Bool)

(assert (=> d!1740084 (=> (not res!2334897) (not e!3390107))))

(assert (=> d!1740084 (= res!2334897 (isDefined!12169 lt!2237379))))

(assert (=> d!1740084 (= lt!2237379 e!3390109)))

(declare-fun c!956904 () Bool)

(declare-fun e!3390111 () Bool)

(assert (=> d!1740084 (= c!956904 e!3390111)))

(declare-fun res!2334898 () Bool)

(assert (=> d!1740084 (=> (not res!2334898) (not e!3390111))))

(assert (=> d!1740084 (= res!2334898 (matchR!7542 (reg!15686 r!7292) Nil!62248))))

(assert (=> d!1740084 (validRegex!7093 (reg!15686 r!7292))))

(assert (=> d!1740084 (= (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 Nil!62248 s!2326 s!2326) lt!2237379)))

(declare-fun b!5477201 () Bool)

(assert (=> b!5477201 (= e!3390110 None!15465)))

(declare-fun b!5477202 () Bool)

(assert (=> b!5477202 (= e!3390109 (Some!15465 (tuple2!65109 Nil!62248 s!2326)))))

(declare-fun b!5477203 () Bool)

(assert (=> b!5477203 (= e!3390107 (= (++!13698 (_1!35857 (get!21466 lt!2237379)) (_2!35857 (get!21466 lt!2237379))) s!2326))))

(declare-fun b!5477204 () Bool)

(declare-fun res!2334901 () Bool)

(assert (=> b!5477204 (=> (not res!2334901) (not e!3390107))))

(assert (=> b!5477204 (= res!2334901 (matchR!7542 (reg!15686 r!7292) (_1!35857 (get!21466 lt!2237379))))))

(declare-fun b!5477205 () Bool)

(assert (=> b!5477205 (= e!3390111 (matchR!7542 r!7292 s!2326))))

(declare-fun b!5477206 () Bool)

(assert (=> b!5477206 (= e!3390108 (not (isDefined!12169 lt!2237379)))))

(assert (= (and d!1740084 res!2334898) b!5477205))

(assert (= (and d!1740084 c!956904) b!5477202))

(assert (= (and d!1740084 (not c!956904)) b!5477199))

(assert (= (and b!5477199 c!956905) b!5477201))

(assert (= (and b!5477199 (not c!956905)) b!5477200))

(assert (= (and d!1740084 res!2334897) b!5477204))

(assert (= (and b!5477204 res!2334901) b!5477198))

(assert (= (and b!5477198 res!2334899) b!5477203))

(assert (= (and d!1740084 (not res!2334900)) b!5477206))

(assert (=> b!5477205 m!6493094))

(declare-fun m!6493574 () Bool)

(assert (=> b!5477200 m!6493574))

(assert (=> b!5477200 m!6493574))

(declare-fun m!6493576 () Bool)

(assert (=> b!5477200 m!6493576))

(declare-fun m!6493578 () Bool)

(assert (=> b!5477200 m!6493578))

(assert (=> b!5477200 m!6493574))

(declare-fun m!6493580 () Bool)

(assert (=> b!5477200 m!6493580))

(declare-fun m!6493582 () Bool)

(assert (=> d!1740084 m!6493582))

(declare-fun m!6493584 () Bool)

(assert (=> d!1740084 m!6493584))

(assert (=> d!1740084 m!6493526))

(assert (=> b!5477206 m!6493582))

(declare-fun m!6493586 () Bool)

(assert (=> b!5477203 m!6493586))

(declare-fun m!6493588 () Bool)

(assert (=> b!5477203 m!6493588))

(assert (=> b!5477198 m!6493586))

(declare-fun m!6493590 () Bool)

(assert (=> b!5477198 m!6493590))

(assert (=> b!5477204 m!6493586))

(declare-fun m!6493592 () Bool)

(assert (=> b!5477204 m!6493592))

(assert (=> b!5476568 d!1740084))

(declare-fun bs!1265621 () Bool)

(declare-fun d!1740096 () Bool)

(assert (= bs!1265621 (and d!1740096 b!5476772)))

(declare-fun lambda!292053 () Int)

(assert (=> bs!1265621 (not (= lambda!292053 lambda!292000))))

(declare-fun bs!1265622 () Bool)

(assert (= bs!1265622 (and d!1740096 d!1740072)))

(assert (=> bs!1265622 (not (= lambda!292053 lambda!292049))))

(declare-fun bs!1265623 () Bool)

(assert (= bs!1265623 (and d!1740096 d!1740044)))

(assert (=> bs!1265623 (not (= lambda!292053 lambda!292037))))

(assert (=> bs!1265622 (= (= r!7292 (Star!15357 (reg!15686 r!7292))) (= lambda!292053 lambda!292046))))

(declare-fun bs!1265624 () Bool)

(assert (= bs!1265624 (and d!1740096 b!5476568)))

(assert (=> bs!1265624 (= lambda!292053 lambda!291975)))

(assert (=> bs!1265623 (= lambda!292053 lambda!292036)))

(declare-fun bs!1265625 () Bool)

(assert (= bs!1265625 (and d!1740096 b!5476765)))

(assert (=> bs!1265625 (not (= lambda!292053 lambda!292001))))

(assert (=> bs!1265624 (not (= lambda!292053 lambda!291976))))

(assert (=> bs!1265624 (not (= lambda!292053 lambda!291977))))

(assert (=> d!1740096 true))

(assert (=> d!1740096 true))

(assert (=> d!1740096 true))

(assert (=> d!1740096 (= (isDefined!12169 (findConcatSeparation!1880 (reg!15686 r!7292) r!7292 Nil!62248 s!2326 s!2326)) (Exists!2536 lambda!292053))))

(declare-fun lt!2237383 () Unit!155164)

(declare-fun choose!41673 (Regex!15357 Regex!15357 List!62372) Unit!155164)

(assert (=> d!1740096 (= lt!2237383 (choose!41673 (reg!15686 r!7292) r!7292 s!2326))))

(assert (=> d!1740096 (validRegex!7093 (reg!15686 r!7292))))

(assert (=> d!1740096 (= (lemmaFindConcatSeparationEquivalentToExists!1644 (reg!15686 r!7292) r!7292 s!2326) lt!2237383)))

(declare-fun bs!1265626 () Bool)

(assert (= bs!1265626 d!1740096))

(declare-fun m!6493594 () Bool)

(assert (=> bs!1265626 m!6493594))

(assert (=> bs!1265626 m!6493526))

(assert (=> bs!1265626 m!6493130))

(assert (=> bs!1265626 m!6493136))

(declare-fun m!6493596 () Bool)

(assert (=> bs!1265626 m!6493596))

(assert (=> bs!1265626 m!6493130))

(assert (=> b!5476568 d!1740096))

(declare-fun bs!1265627 () Bool)

(declare-fun d!1740098 () Bool)

(assert (= bs!1265627 (and d!1740098 b!5476544)))

(declare-fun lambda!292054 () Int)

(assert (=> bs!1265627 (= lambda!292054 lambda!291979)))

(declare-fun bs!1265628 () Bool)

(assert (= bs!1265628 (and d!1740098 d!1740018)))

(assert (=> bs!1265628 (= lambda!292054 lambda!292020)))

(declare-fun bs!1265629 () Bool)

(assert (= bs!1265629 (and d!1740098 d!1740022)))

(assert (=> bs!1265629 (= lambda!292054 lambda!292025)))

(declare-fun bs!1265630 () Bool)

(assert (= bs!1265630 (and d!1740098 d!1740028)))

(assert (=> bs!1265630 (= lambda!292054 lambda!292027)))

(assert (=> d!1740098 (= (inv!81639 (h!68695 zl!343)) (forall!14614 (exprs!5241 (h!68695 zl!343)) lambda!292054))))

(declare-fun bs!1265631 () Bool)

(assert (= bs!1265631 d!1740098))

(declare-fun m!6493598 () Bool)

(assert (=> bs!1265631 m!6493598))

(assert (=> b!5476558 d!1740098))

(declare-fun d!1740100 () Bool)

(assert (=> d!1740100 (= (flatMap!1060 z!1189 lambda!291978) (choose!41662 z!1189 lambda!291978))))

(declare-fun bs!1265632 () Bool)

(assert (= bs!1265632 d!1740100))

(declare-fun m!6493600 () Bool)

(assert (=> bs!1265632 m!6493600))

(assert (=> b!5476570 d!1740100))

(declare-fun b!5477211 () Bool)

(declare-fun e!3390114 () (InoxSet Context!9482))

(assert (=> b!5477211 (= e!3390114 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5477212 () Bool)

(declare-fun e!3390115 () Bool)

(assert (=> b!5477212 (= e!3390115 (nullable!5484 (h!68694 (exprs!5241 (h!68695 zl!343)))))))

(declare-fun bm!404089 () Bool)

(declare-fun call!404094 () (InoxSet Context!9482))

(assert (=> bm!404089 (= call!404094 (derivationStepZipperDown!783 (h!68694 (exprs!5241 (h!68695 zl!343))) (Context!9483 (t!375599 (exprs!5241 (h!68695 zl!343)))) (h!68696 s!2326)))))

(declare-fun d!1740102 () Bool)

(declare-fun c!956906 () Bool)

(assert (=> d!1740102 (= c!956906 e!3390115)))

(declare-fun res!2334906 () Bool)

(assert (=> d!1740102 (=> (not res!2334906) (not e!3390115))))

(assert (=> d!1740102 (= res!2334906 ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343))))))

(declare-fun e!3390116 () (InoxSet Context!9482))

(assert (=> d!1740102 (= (derivationStepZipperUp!709 (h!68695 zl!343) (h!68696 s!2326)) e!3390116)))

(declare-fun b!5477213 () Bool)

(assert (=> b!5477213 (= e!3390116 e!3390114)))

(declare-fun c!956907 () Bool)

(assert (=> b!5477213 (= c!956907 ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343))))))

(declare-fun b!5477214 () Bool)

(assert (=> b!5477214 (= e!3390114 call!404094)))

(declare-fun b!5477215 () Bool)

(assert (=> b!5477215 (= e!3390116 ((_ map or) call!404094 (derivationStepZipperUp!709 (Context!9483 (t!375599 (exprs!5241 (h!68695 zl!343)))) (h!68696 s!2326))))))

(assert (= (and d!1740102 res!2334906) b!5477212))

(assert (= (and d!1740102 c!956906) b!5477215))

(assert (= (and d!1740102 (not c!956906)) b!5477213))

(assert (= (and b!5477213 c!956907) b!5477214))

(assert (= (and b!5477213 (not c!956907)) b!5477211))

(assert (= (or b!5477215 b!5477214) bm!404089))

(declare-fun m!6493602 () Bool)

(assert (=> b!5477212 m!6493602))

(declare-fun m!6493604 () Bool)

(assert (=> bm!404089 m!6493604))

(declare-fun m!6493606 () Bool)

(assert (=> b!5477215 m!6493606))

(assert (=> b!5476570 d!1740102))

(declare-fun d!1740104 () Bool)

(assert (=> d!1740104 (= (flatMap!1060 z!1189 lambda!291978) (dynLambda!24431 lambda!291978 (h!68695 zl!343)))))

(declare-fun lt!2237384 () Unit!155164)

(assert (=> d!1740104 (= lt!2237384 (choose!41664 z!1189 (h!68695 zl!343) lambda!291978))))

(assert (=> d!1740104 (= z!1189 (store ((as const (Array Context!9482 Bool)) false) (h!68695 zl!343) true))))

(assert (=> d!1740104 (= (lemmaFlatMapOnSingletonSet!592 z!1189 (h!68695 zl!343) lambda!291978) lt!2237384)))

(declare-fun b_lambda!208099 () Bool)

(assert (=> (not b_lambda!208099) (not d!1740104)))

(declare-fun bs!1265633 () Bool)

(assert (= bs!1265633 d!1740104))

(assert (=> bs!1265633 m!6493138))

(declare-fun m!6493608 () Bool)

(assert (=> bs!1265633 m!6493608))

(declare-fun m!6493610 () Bool)

(assert (=> bs!1265633 m!6493610))

(declare-fun m!6493612 () Bool)

(assert (=> bs!1265633 m!6493612))

(assert (=> b!5476570 d!1740104))

(declare-fun b!5477238 () Bool)

(declare-fun e!3390131 () (InoxSet Context!9482))

(declare-fun e!3390130 () (InoxSet Context!9482))

(assert (=> b!5477238 (= e!3390131 e!3390130)))

(declare-fun c!956918 () Bool)

(assert (=> b!5477238 (= c!956918 ((_ is Union!15357) (reg!15686 r!7292)))))

(declare-fun bm!404102 () Bool)

(declare-fun call!404108 () (InoxSet Context!9482))

(declare-fun call!404112 () (InoxSet Context!9482))

(assert (=> bm!404102 (= call!404108 call!404112)))

(declare-fun b!5477239 () Bool)

(declare-fun e!3390129 () (InoxSet Context!9482))

(assert (=> b!5477239 (= e!3390129 call!404108)))

(declare-fun b!5477240 () Bool)

(declare-fun e!3390134 () Bool)

(assert (=> b!5477240 (= e!3390134 (nullable!5484 (regOne!31226 (reg!15686 r!7292))))))

(declare-fun d!1740106 () Bool)

(declare-fun c!956922 () Bool)

(assert (=> d!1740106 (= c!956922 (and ((_ is ElementMatch!15357) (reg!15686 r!7292)) (= (c!956737 (reg!15686 r!7292)) (h!68696 s!2326))))))

(assert (=> d!1740106 (= (derivationStepZipperDown!783 (reg!15686 r!7292) lt!2237297 (h!68696 s!2326)) e!3390131)))

(declare-fun bm!404103 () Bool)

(declare-fun call!404107 () (InoxSet Context!9482))

(assert (=> bm!404103 (= call!404112 call!404107)))

(declare-fun bm!404104 () Bool)

(declare-fun call!404109 () List!62370)

(declare-fun call!404110 () List!62370)

(assert (=> bm!404104 (= call!404109 call!404110)))

(declare-fun b!5477241 () Bool)

(declare-fun c!956921 () Bool)

(assert (=> b!5477241 (= c!956921 e!3390134)))

(declare-fun res!2334909 () Bool)

(assert (=> b!5477241 (=> (not res!2334909) (not e!3390134))))

(assert (=> b!5477241 (= res!2334909 ((_ is Concat!24202) (reg!15686 r!7292)))))

(declare-fun e!3390132 () (InoxSet Context!9482))

(assert (=> b!5477241 (= e!3390130 e!3390132)))

(declare-fun call!404111 () (InoxSet Context!9482))

(declare-fun bm!404105 () Bool)

(assert (=> bm!404105 (= call!404111 (derivationStepZipperDown!783 (ite c!956918 (regTwo!31227 (reg!15686 r!7292)) (regOne!31226 (reg!15686 r!7292))) (ite c!956918 lt!2237297 (Context!9483 call!404110)) (h!68696 s!2326)))))

(declare-fun b!5477242 () Bool)

(declare-fun e!3390133 () (InoxSet Context!9482))

(assert (=> b!5477242 (= e!3390133 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5477243 () Bool)

(assert (=> b!5477243 (= e!3390130 ((_ map or) call!404107 call!404111))))

(declare-fun b!5477244 () Bool)

(assert (=> b!5477244 (= e!3390133 call!404108)))

(declare-fun b!5477245 () Bool)

(assert (=> b!5477245 (= e!3390132 ((_ map or) call!404111 call!404112))))

(declare-fun b!5477246 () Bool)

(declare-fun c!956919 () Bool)

(assert (=> b!5477246 (= c!956919 ((_ is Star!15357) (reg!15686 r!7292)))))

(assert (=> b!5477246 (= e!3390129 e!3390133)))

(declare-fun b!5477247 () Bool)

(assert (=> b!5477247 (= e!3390132 e!3390129)))

(declare-fun c!956920 () Bool)

(assert (=> b!5477247 (= c!956920 ((_ is Concat!24202) (reg!15686 r!7292)))))

(declare-fun bm!404106 () Bool)

(assert (=> bm!404106 (= call!404107 (derivationStepZipperDown!783 (ite c!956918 (regOne!31227 (reg!15686 r!7292)) (ite c!956921 (regTwo!31226 (reg!15686 r!7292)) (ite c!956920 (regOne!31226 (reg!15686 r!7292)) (reg!15686 (reg!15686 r!7292))))) (ite (or c!956918 c!956921) lt!2237297 (Context!9483 call!404109)) (h!68696 s!2326)))))

(declare-fun b!5477248 () Bool)

(assert (=> b!5477248 (= e!3390131 (store ((as const (Array Context!9482 Bool)) false) lt!2237297 true))))

(declare-fun bm!404107 () Bool)

(declare-fun $colon$colon!1554 (List!62370 Regex!15357) List!62370)

(assert (=> bm!404107 (= call!404110 ($colon$colon!1554 (exprs!5241 lt!2237297) (ite (or c!956921 c!956920) (regTwo!31226 (reg!15686 r!7292)) (reg!15686 r!7292))))))

(assert (= (and d!1740106 c!956922) b!5477248))

(assert (= (and d!1740106 (not c!956922)) b!5477238))

(assert (= (and b!5477238 c!956918) b!5477243))

(assert (= (and b!5477238 (not c!956918)) b!5477241))

(assert (= (and b!5477241 res!2334909) b!5477240))

(assert (= (and b!5477241 c!956921) b!5477245))

(assert (= (and b!5477241 (not c!956921)) b!5477247))

(assert (= (and b!5477247 c!956920) b!5477239))

(assert (= (and b!5477247 (not c!956920)) b!5477246))

(assert (= (and b!5477246 c!956919) b!5477244))

(assert (= (and b!5477246 (not c!956919)) b!5477242))

(assert (= (or b!5477239 b!5477244) bm!404104))

(assert (= (or b!5477239 b!5477244) bm!404102))

(assert (= (or b!5477245 bm!404104) bm!404107))

(assert (= (or b!5477245 bm!404102) bm!404103))

(assert (= (or b!5477243 b!5477245) bm!404105))

(assert (= (or b!5477243 bm!404103) bm!404106))

(declare-fun m!6493614 () Bool)

(assert (=> bm!404107 m!6493614))

(declare-fun m!6493616 () Bool)

(assert (=> bm!404106 m!6493616))

(assert (=> b!5477248 m!6493160))

(declare-fun m!6493618 () Bool)

(assert (=> b!5477240 m!6493618))

(declare-fun m!6493620 () Bool)

(assert (=> bm!404105 m!6493620))

(assert (=> b!5476549 d!1740106))

(declare-fun d!1740108 () Bool)

(assert (=> d!1740108 (= (flatMap!1060 lt!2237279 lambda!291978) (choose!41662 lt!2237279 lambda!291978))))

(declare-fun bs!1265634 () Bool)

(assert (= bs!1265634 d!1740108))

(declare-fun m!6493622 () Bool)

(assert (=> bs!1265634 m!6493622))

(assert (=> b!5476549 d!1740108))

(declare-fun b!5477249 () Bool)

(declare-fun e!3390135 () (InoxSet Context!9482))

(assert (=> b!5477249 (= e!3390135 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5477250 () Bool)

(declare-fun e!3390136 () Bool)

(assert (=> b!5477250 (= e!3390136 (nullable!5484 (h!68694 (exprs!5241 lt!2237290))))))

(declare-fun bm!404108 () Bool)

(declare-fun call!404113 () (InoxSet Context!9482))

(assert (=> bm!404108 (= call!404113 (derivationStepZipperDown!783 (h!68694 (exprs!5241 lt!2237290)) (Context!9483 (t!375599 (exprs!5241 lt!2237290))) (h!68696 s!2326)))))

(declare-fun d!1740110 () Bool)

(declare-fun c!956923 () Bool)

(assert (=> d!1740110 (= c!956923 e!3390136)))

(declare-fun res!2334910 () Bool)

(assert (=> d!1740110 (=> (not res!2334910) (not e!3390136))))

(assert (=> d!1740110 (= res!2334910 ((_ is Cons!62246) (exprs!5241 lt!2237290)))))

(declare-fun e!3390137 () (InoxSet Context!9482))

(assert (=> d!1740110 (= (derivationStepZipperUp!709 lt!2237290 (h!68696 s!2326)) e!3390137)))

(declare-fun b!5477251 () Bool)

(assert (=> b!5477251 (= e!3390137 e!3390135)))

(declare-fun c!956924 () Bool)

(assert (=> b!5477251 (= c!956924 ((_ is Cons!62246) (exprs!5241 lt!2237290)))))

(declare-fun b!5477252 () Bool)

(assert (=> b!5477252 (= e!3390135 call!404113)))

(declare-fun b!5477253 () Bool)

(assert (=> b!5477253 (= e!3390137 ((_ map or) call!404113 (derivationStepZipperUp!709 (Context!9483 (t!375599 (exprs!5241 lt!2237290))) (h!68696 s!2326))))))

(assert (= (and d!1740110 res!2334910) b!5477250))

(assert (= (and d!1740110 c!956923) b!5477253))

(assert (= (and d!1740110 (not c!956923)) b!5477251))

(assert (= (and b!5477251 c!956924) b!5477252))

(assert (= (and b!5477251 (not c!956924)) b!5477249))

(assert (= (or b!5477253 b!5477252) bm!404108))

(declare-fun m!6493624 () Bool)

(assert (=> b!5477250 m!6493624))

(declare-fun m!6493626 () Bool)

(assert (=> bm!404108 m!6493626))

(declare-fun m!6493628 () Bool)

(assert (=> b!5477253 m!6493628))

(assert (=> b!5476549 d!1740110))

(declare-fun d!1740112 () Bool)

(assert (=> d!1740112 (= (flatMap!1060 lt!2237279 lambda!291978) (dynLambda!24431 lambda!291978 lt!2237290))))

(declare-fun lt!2237385 () Unit!155164)

(assert (=> d!1740112 (= lt!2237385 (choose!41664 lt!2237279 lt!2237290 lambda!291978))))

(assert (=> d!1740112 (= lt!2237279 (store ((as const (Array Context!9482 Bool)) false) lt!2237290 true))))

(assert (=> d!1740112 (= (lemmaFlatMapOnSingletonSet!592 lt!2237279 lt!2237290 lambda!291978) lt!2237385)))

(declare-fun b_lambda!208101 () Bool)

(assert (=> (not b_lambda!208101) (not d!1740112)))

(declare-fun bs!1265635 () Bool)

(assert (= bs!1265635 d!1740112))

(assert (=> bs!1265635 m!6493070))

(declare-fun m!6493630 () Bool)

(assert (=> bs!1265635 m!6493630))

(declare-fun m!6493632 () Bool)

(assert (=> bs!1265635 m!6493632))

(assert (=> bs!1265635 m!6493078))

(assert (=> b!5476549 d!1740112))

(declare-fun bs!1265636 () Bool)

(declare-fun d!1740114 () Bool)

(assert (= bs!1265636 (and d!1740114 d!1740022)))

(declare-fun lambda!292057 () Int)

(assert (=> bs!1265636 (= lambda!292057 lambda!292025)))

(declare-fun bs!1265637 () Bool)

(assert (= bs!1265637 (and d!1740114 d!1740098)))

(assert (=> bs!1265637 (= lambda!292057 lambda!292054)))

(declare-fun bs!1265638 () Bool)

(assert (= bs!1265638 (and d!1740114 d!1740028)))

(assert (=> bs!1265638 (= lambda!292057 lambda!292027)))

(declare-fun bs!1265639 () Bool)

(assert (= bs!1265639 (and d!1740114 d!1740018)))

(assert (=> bs!1265639 (= lambda!292057 lambda!292020)))

(declare-fun bs!1265640 () Bool)

(assert (= bs!1265640 (and d!1740114 b!5476544)))

(assert (=> bs!1265640 (= lambda!292057 lambda!291979)))

(declare-fun e!3390150 () Bool)

(assert (=> d!1740114 e!3390150))

(declare-fun res!2334916 () Bool)

(assert (=> d!1740114 (=> (not res!2334916) (not e!3390150))))

(declare-fun lt!2237388 () Regex!15357)

(assert (=> d!1740114 (= res!2334916 (validRegex!7093 lt!2237388))))

(declare-fun e!3390153 () Regex!15357)

(assert (=> d!1740114 (= lt!2237388 e!3390153)))

(declare-fun c!956934 () Bool)

(declare-fun e!3390151 () Bool)

(assert (=> d!1740114 (= c!956934 e!3390151)))

(declare-fun res!2334915 () Bool)

(assert (=> d!1740114 (=> (not res!2334915) (not e!3390151))))

(assert (=> d!1740114 (= res!2334915 ((_ is Cons!62246) (unfocusZipperList!799 zl!343)))))

(assert (=> d!1740114 (forall!14614 (unfocusZipperList!799 zl!343) lambda!292057)))

(assert (=> d!1740114 (= (generalisedUnion!1286 (unfocusZipperList!799 zl!343)) lt!2237388)))

(declare-fun b!5477274 () Bool)

(declare-fun e!3390154 () Bool)

(declare-fun isUnion!480 (Regex!15357) Bool)

(assert (=> b!5477274 (= e!3390154 (isUnion!480 lt!2237388))))

(declare-fun b!5477275 () Bool)

(declare-fun e!3390152 () Regex!15357)

(assert (=> b!5477275 (= e!3390153 e!3390152)))

(declare-fun c!956933 () Bool)

(assert (=> b!5477275 (= c!956933 ((_ is Cons!62246) (unfocusZipperList!799 zl!343)))))

(declare-fun b!5477276 () Bool)

(declare-fun e!3390155 () Bool)

(assert (=> b!5477276 (= e!3390155 e!3390154)))

(declare-fun c!956936 () Bool)

(assert (=> b!5477276 (= c!956936 (isEmpty!34202 (tail!10831 (unfocusZipperList!799 zl!343))))))

(declare-fun b!5477277 () Bool)

(assert (=> b!5477277 (= e!3390152 (Union!15357 (h!68694 (unfocusZipperList!799 zl!343)) (generalisedUnion!1286 (t!375599 (unfocusZipperList!799 zl!343)))))))

(declare-fun b!5477278 () Bool)

(assert (=> b!5477278 (= e!3390154 (= lt!2237388 (head!11734 (unfocusZipperList!799 zl!343))))))

(declare-fun b!5477279 () Bool)

(assert (=> b!5477279 (= e!3390153 (h!68694 (unfocusZipperList!799 zl!343)))))

(declare-fun b!5477280 () Bool)

(declare-fun isEmptyLang!1048 (Regex!15357) Bool)

(assert (=> b!5477280 (= e!3390155 (isEmptyLang!1048 lt!2237388))))

(declare-fun b!5477281 () Bool)

(assert (=> b!5477281 (= e!3390150 e!3390155)))

(declare-fun c!956935 () Bool)

(assert (=> b!5477281 (= c!956935 (isEmpty!34202 (unfocusZipperList!799 zl!343)))))

(declare-fun b!5477282 () Bool)

(assert (=> b!5477282 (= e!3390152 EmptyLang!15357)))

(declare-fun b!5477283 () Bool)

(assert (=> b!5477283 (= e!3390151 (isEmpty!34202 (t!375599 (unfocusZipperList!799 zl!343))))))

(assert (= (and d!1740114 res!2334915) b!5477283))

(assert (= (and d!1740114 c!956934) b!5477279))

(assert (= (and d!1740114 (not c!956934)) b!5477275))

(assert (= (and b!5477275 c!956933) b!5477277))

(assert (= (and b!5477275 (not c!956933)) b!5477282))

(assert (= (and d!1740114 res!2334916) b!5477281))

(assert (= (and b!5477281 c!956935) b!5477280))

(assert (= (and b!5477281 (not c!956935)) b!5477276))

(assert (= (and b!5477276 c!956936) b!5477278))

(assert (= (and b!5477276 (not c!956936)) b!5477274))

(assert (=> b!5477281 m!6493114))

(declare-fun m!6493634 () Bool)

(assert (=> b!5477281 m!6493634))

(declare-fun m!6493636 () Bool)

(assert (=> b!5477280 m!6493636))

(declare-fun m!6493638 () Bool)

(assert (=> d!1740114 m!6493638))

(assert (=> d!1740114 m!6493114))

(declare-fun m!6493640 () Bool)

(assert (=> d!1740114 m!6493640))

(declare-fun m!6493642 () Bool)

(assert (=> b!5477274 m!6493642))

(declare-fun m!6493644 () Bool)

(assert (=> b!5477283 m!6493644))

(assert (=> b!5477278 m!6493114))

(declare-fun m!6493646 () Bool)

(assert (=> b!5477278 m!6493646))

(assert (=> b!5477276 m!6493114))

(declare-fun m!6493648 () Bool)

(assert (=> b!5477276 m!6493648))

(assert (=> b!5477276 m!6493648))

(declare-fun m!6493650 () Bool)

(assert (=> b!5477276 m!6493650))

(declare-fun m!6493652 () Bool)

(assert (=> b!5477277 m!6493652))

(assert (=> b!5476569 d!1740114))

(declare-fun bs!1265641 () Bool)

(declare-fun d!1740116 () Bool)

(assert (= bs!1265641 (and d!1740116 d!1740022)))

(declare-fun lambda!292060 () Int)

(assert (=> bs!1265641 (= lambda!292060 lambda!292025)))

(declare-fun bs!1265642 () Bool)

(assert (= bs!1265642 (and d!1740116 d!1740098)))

(assert (=> bs!1265642 (= lambda!292060 lambda!292054)))

(declare-fun bs!1265643 () Bool)

(assert (= bs!1265643 (and d!1740116 d!1740028)))

(assert (=> bs!1265643 (= lambda!292060 lambda!292027)))

(declare-fun bs!1265644 () Bool)

(assert (= bs!1265644 (and d!1740116 d!1740114)))

(assert (=> bs!1265644 (= lambda!292060 lambda!292057)))

(declare-fun bs!1265645 () Bool)

(assert (= bs!1265645 (and d!1740116 d!1740018)))

(assert (=> bs!1265645 (= lambda!292060 lambda!292020)))

(declare-fun bs!1265646 () Bool)

(assert (= bs!1265646 (and d!1740116 b!5476544)))

(assert (=> bs!1265646 (= lambda!292060 lambda!291979)))

(declare-fun lt!2237391 () List!62370)

(assert (=> d!1740116 (forall!14614 lt!2237391 lambda!292060)))

(declare-fun e!3390158 () List!62370)

(assert (=> d!1740116 (= lt!2237391 e!3390158)))

(declare-fun c!956939 () Bool)

(assert (=> d!1740116 (= c!956939 ((_ is Cons!62247) zl!343))))

(assert (=> d!1740116 (= (unfocusZipperList!799 zl!343) lt!2237391)))

(declare-fun b!5477288 () Bool)

(assert (=> b!5477288 (= e!3390158 (Cons!62246 (generalisedConcat!1026 (exprs!5241 (h!68695 zl!343))) (unfocusZipperList!799 (t!375600 zl!343))))))

(declare-fun b!5477289 () Bool)

(assert (=> b!5477289 (= e!3390158 Nil!62246)))

(assert (= (and d!1740116 c!956939) b!5477288))

(assert (= (and d!1740116 (not c!956939)) b!5477289))

(declare-fun m!6493654 () Bool)

(assert (=> d!1740116 m!6493654))

(assert (=> b!5477288 m!6493066))

(declare-fun m!6493656 () Bool)

(assert (=> b!5477288 m!6493656))

(assert (=> b!5476569 d!1740116))

(declare-fun b!5477290 () Bool)

(declare-fun e!3390161 () (InoxSet Context!9482))

(declare-fun e!3390160 () (InoxSet Context!9482))

(assert (=> b!5477290 (= e!3390161 e!3390160)))

(declare-fun c!956940 () Bool)

(assert (=> b!5477290 (= c!956940 ((_ is Union!15357) r!7292))))

(declare-fun bm!404109 () Bool)

(declare-fun call!404115 () (InoxSet Context!9482))

(declare-fun call!404119 () (InoxSet Context!9482))

(assert (=> bm!404109 (= call!404115 call!404119)))

(declare-fun b!5477291 () Bool)

(declare-fun e!3390159 () (InoxSet Context!9482))

(assert (=> b!5477291 (= e!3390159 call!404115)))

(declare-fun b!5477292 () Bool)

(declare-fun e!3390164 () Bool)

(assert (=> b!5477292 (= e!3390164 (nullable!5484 (regOne!31226 r!7292)))))

(declare-fun d!1740118 () Bool)

(declare-fun c!956944 () Bool)

(assert (=> d!1740118 (= c!956944 (and ((_ is ElementMatch!15357) r!7292) (= (c!956737 r!7292) (h!68696 s!2326))))))

(assert (=> d!1740118 (= (derivationStepZipperDown!783 r!7292 (Context!9483 Nil!62246) (h!68696 s!2326)) e!3390161)))

(declare-fun bm!404110 () Bool)

(declare-fun call!404114 () (InoxSet Context!9482))

(assert (=> bm!404110 (= call!404119 call!404114)))

(declare-fun bm!404111 () Bool)

(declare-fun call!404116 () List!62370)

(declare-fun call!404117 () List!62370)

(assert (=> bm!404111 (= call!404116 call!404117)))

(declare-fun b!5477293 () Bool)

(declare-fun c!956943 () Bool)

(assert (=> b!5477293 (= c!956943 e!3390164)))

(declare-fun res!2334917 () Bool)

(assert (=> b!5477293 (=> (not res!2334917) (not e!3390164))))

(assert (=> b!5477293 (= res!2334917 ((_ is Concat!24202) r!7292))))

(declare-fun e!3390162 () (InoxSet Context!9482))

(assert (=> b!5477293 (= e!3390160 e!3390162)))

(declare-fun bm!404112 () Bool)

(declare-fun call!404118 () (InoxSet Context!9482))

(assert (=> bm!404112 (= call!404118 (derivationStepZipperDown!783 (ite c!956940 (regTwo!31227 r!7292) (regOne!31226 r!7292)) (ite c!956940 (Context!9483 Nil!62246) (Context!9483 call!404117)) (h!68696 s!2326)))))

(declare-fun b!5477294 () Bool)

(declare-fun e!3390163 () (InoxSet Context!9482))

(assert (=> b!5477294 (= e!3390163 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5477295 () Bool)

(assert (=> b!5477295 (= e!3390160 ((_ map or) call!404114 call!404118))))

(declare-fun b!5477296 () Bool)

(assert (=> b!5477296 (= e!3390163 call!404115)))

(declare-fun b!5477297 () Bool)

(assert (=> b!5477297 (= e!3390162 ((_ map or) call!404118 call!404119))))

(declare-fun b!5477298 () Bool)

(declare-fun c!956941 () Bool)

(assert (=> b!5477298 (= c!956941 ((_ is Star!15357) r!7292))))

(assert (=> b!5477298 (= e!3390159 e!3390163)))

(declare-fun b!5477299 () Bool)

(assert (=> b!5477299 (= e!3390162 e!3390159)))

(declare-fun c!956942 () Bool)

(assert (=> b!5477299 (= c!956942 ((_ is Concat!24202) r!7292))))

(declare-fun bm!404113 () Bool)

(assert (=> bm!404113 (= call!404114 (derivationStepZipperDown!783 (ite c!956940 (regOne!31227 r!7292) (ite c!956943 (regTwo!31226 r!7292) (ite c!956942 (regOne!31226 r!7292) (reg!15686 r!7292)))) (ite (or c!956940 c!956943) (Context!9483 Nil!62246) (Context!9483 call!404116)) (h!68696 s!2326)))))

(declare-fun b!5477300 () Bool)

(assert (=> b!5477300 (= e!3390161 (store ((as const (Array Context!9482 Bool)) false) (Context!9483 Nil!62246) true))))

(declare-fun bm!404114 () Bool)

(assert (=> bm!404114 (= call!404117 ($colon$colon!1554 (exprs!5241 (Context!9483 Nil!62246)) (ite (or c!956943 c!956942) (regTwo!31226 r!7292) r!7292)))))

(assert (= (and d!1740118 c!956944) b!5477300))

(assert (= (and d!1740118 (not c!956944)) b!5477290))

(assert (= (and b!5477290 c!956940) b!5477295))

(assert (= (and b!5477290 (not c!956940)) b!5477293))

(assert (= (and b!5477293 res!2334917) b!5477292))

(assert (= (and b!5477293 c!956943) b!5477297))

(assert (= (and b!5477293 (not c!956943)) b!5477299))

(assert (= (and b!5477299 c!956942) b!5477291))

(assert (= (and b!5477299 (not c!956942)) b!5477298))

(assert (= (and b!5477298 c!956941) b!5477296))

(assert (= (and b!5477298 (not c!956941)) b!5477294))

(assert (= (or b!5477291 b!5477296) bm!404111))

(assert (= (or b!5477291 b!5477296) bm!404109))

(assert (= (or b!5477297 bm!404111) bm!404114))

(assert (= (or b!5477297 bm!404109) bm!404110))

(assert (= (or b!5477295 b!5477297) bm!404112))

(assert (= (or b!5477295 bm!404110) bm!404113))

(declare-fun m!6493658 () Bool)

(assert (=> bm!404114 m!6493658))

(declare-fun m!6493660 () Bool)

(assert (=> bm!404113 m!6493660))

(declare-fun m!6493662 () Bool)

(assert (=> b!5477300 m!6493662))

(declare-fun m!6493664 () Bool)

(assert (=> b!5477292 m!6493664))

(declare-fun m!6493666 () Bool)

(assert (=> bm!404112 m!6493666))

(assert (=> b!5476571 d!1740118))

(declare-fun b!5477301 () Bool)

(declare-fun e!3390165 () (InoxSet Context!9482))

(assert (=> b!5477301 (= e!3390165 ((as const (Array Context!9482 Bool)) false))))

(declare-fun b!5477302 () Bool)

(declare-fun e!3390166 () Bool)

(assert (=> b!5477302 (= e!3390166 (nullable!5484 (h!68694 (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246))))))))

(declare-fun bm!404115 () Bool)

(declare-fun call!404120 () (InoxSet Context!9482))

(assert (=> bm!404115 (= call!404120 (derivationStepZipperDown!783 (h!68694 (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246)))) (Context!9483 (t!375599 (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246))))) (h!68696 s!2326)))))

(declare-fun d!1740120 () Bool)

(declare-fun c!956945 () Bool)

(assert (=> d!1740120 (= c!956945 e!3390166)))

(declare-fun res!2334918 () Bool)

(assert (=> d!1740120 (=> (not res!2334918) (not e!3390166))))

(assert (=> d!1740120 (= res!2334918 ((_ is Cons!62246) (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246)))))))

(declare-fun e!3390167 () (InoxSet Context!9482))

(assert (=> d!1740120 (= (derivationStepZipperUp!709 (Context!9483 (Cons!62246 r!7292 Nil!62246)) (h!68696 s!2326)) e!3390167)))

(declare-fun b!5477303 () Bool)

(assert (=> b!5477303 (= e!3390167 e!3390165)))

(declare-fun c!956946 () Bool)

(assert (=> b!5477303 (= c!956946 ((_ is Cons!62246) (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246)))))))

(declare-fun b!5477304 () Bool)

(assert (=> b!5477304 (= e!3390165 call!404120)))

(declare-fun b!5477305 () Bool)

(assert (=> b!5477305 (= e!3390167 ((_ map or) call!404120 (derivationStepZipperUp!709 (Context!9483 (t!375599 (exprs!5241 (Context!9483 (Cons!62246 r!7292 Nil!62246))))) (h!68696 s!2326))))))

(assert (= (and d!1740120 res!2334918) b!5477302))

(assert (= (and d!1740120 c!956945) b!5477305))

(assert (= (and d!1740120 (not c!956945)) b!5477303))

(assert (= (and b!5477303 c!956946) b!5477304))

(assert (= (and b!5477303 (not c!956946)) b!5477301))

(assert (= (or b!5477305 b!5477304) bm!404115))

(declare-fun m!6493668 () Bool)

(assert (=> b!5477302 m!6493668))

(declare-fun m!6493670 () Bool)

(assert (=> bm!404115 m!6493670))

(declare-fun m!6493672 () Bool)

(assert (=> b!5477305 m!6493672))

(assert (=> b!5476571 d!1740120))

(declare-fun bs!1265647 () Bool)

(declare-fun d!1740122 () Bool)

(assert (= bs!1265647 (and d!1740122 b!5476570)))

(declare-fun lambda!292061 () Int)

(assert (=> bs!1265647 (= lambda!292061 lambda!291978)))

(declare-fun bs!1265648 () Bool)

(assert (= bs!1265648 (and d!1740122 d!1739930)))

(assert (=> bs!1265648 (= lambda!292061 lambda!291982)))

(declare-fun bs!1265649 () Bool)

(assert (= bs!1265649 (and d!1740122 d!1740010)))

(assert (=> bs!1265649 (= lambda!292061 lambda!292011)))

(assert (=> d!1740122 true))

(assert (=> d!1740122 (= (derivationStepZipper!1552 z!1189 (h!68696 s!2326)) (flatMap!1060 z!1189 lambda!292061))))

(declare-fun bs!1265650 () Bool)

(assert (= bs!1265650 d!1740122))

(declare-fun m!6493674 () Bool)

(assert (=> bs!1265650 m!6493674))

(assert (=> b!5476571 d!1740122))

(declare-fun d!1740124 () Bool)

(declare-fun lt!2237392 () Regex!15357)

(assert (=> d!1740124 (validRegex!7093 lt!2237392)))

(assert (=> d!1740124 (= lt!2237392 (generalisedUnion!1286 (unfocusZipperList!799 (Cons!62247 lt!2237297 Nil!62247))))))

(assert (=> d!1740124 (= (unfocusZipper!1099 (Cons!62247 lt!2237297 Nil!62247)) lt!2237392)))

(declare-fun bs!1265651 () Bool)

(assert (= bs!1265651 d!1740124))

(declare-fun m!6493676 () Bool)

(assert (=> bs!1265651 m!6493676))

(declare-fun m!6493678 () Bool)

(assert (=> bs!1265651 m!6493678))

(assert (=> bs!1265651 m!6493678))

(declare-fun m!6493680 () Bool)

(assert (=> bs!1265651 m!6493680))

(assert (=> b!5476550 d!1740124))

(declare-fun d!1740126 () Bool)

(declare-fun e!3390170 () Bool)

(assert (=> d!1740126 e!3390170))

(declare-fun res!2334921 () Bool)

(assert (=> d!1740126 (=> (not res!2334921) (not e!3390170))))

(declare-fun lt!2237395 () List!62371)

(declare-fun noDuplicate!1458 (List!62371) Bool)

(assert (=> d!1740126 (= res!2334921 (noDuplicate!1458 lt!2237395))))

(declare-fun choose!41674 ((InoxSet Context!9482)) List!62371)

(assert (=> d!1740126 (= lt!2237395 (choose!41674 z!1189))))

(assert (=> d!1740126 (= (toList!9141 z!1189) lt!2237395)))

(declare-fun b!5477308 () Bool)

(declare-fun content!11202 (List!62371) (InoxSet Context!9482))

(assert (=> b!5477308 (= e!3390170 (= (content!11202 lt!2237395) z!1189))))

(assert (= (and d!1740126 res!2334921) b!5477308))

(declare-fun m!6493682 () Bool)

(assert (=> d!1740126 m!6493682))

(declare-fun m!6493684 () Bool)

(assert (=> d!1740126 m!6493684))

(declare-fun m!6493686 () Bool)

(assert (=> b!5477308 m!6493686))

(assert (=> b!5476552 d!1740126))

(declare-fun d!1740128 () Bool)

(declare-fun lt!2237396 () Regex!15357)

(assert (=> d!1740128 (validRegex!7093 lt!2237396)))

(assert (=> d!1740128 (= lt!2237396 (generalisedUnion!1286 (unfocusZipperList!799 (Cons!62247 lt!2237299 Nil!62247))))))

(assert (=> d!1740128 (= (unfocusZipper!1099 (Cons!62247 lt!2237299 Nil!62247)) lt!2237396)))

(declare-fun bs!1265652 () Bool)

(assert (= bs!1265652 d!1740128))

(declare-fun m!6493688 () Bool)

(assert (=> bs!1265652 m!6493688))

(declare-fun m!6493690 () Bool)

(assert (=> bs!1265652 m!6493690))

(assert (=> bs!1265652 m!6493690))

(declare-fun m!6493692 () Bool)

(assert (=> bs!1265652 m!6493692))

(assert (=> b!5476572 d!1740128))

(declare-fun d!1740130 () Bool)

(declare-fun res!2334926 () Bool)

(declare-fun e!3390175 () Bool)

(assert (=> d!1740130 (=> res!2334926 e!3390175)))

(assert (=> d!1740130 (= res!2334926 ((_ is Nil!62246) (exprs!5241 c!332)))))

(assert (=> d!1740130 (= (forall!14614 (exprs!5241 c!332) lambda!291979) e!3390175)))

(declare-fun b!5477313 () Bool)

(declare-fun e!3390176 () Bool)

(assert (=> b!5477313 (= e!3390175 e!3390176)))

(declare-fun res!2334927 () Bool)

(assert (=> b!5477313 (=> (not res!2334927) (not e!3390176))))

(declare-fun dynLambda!24433 (Int Regex!15357) Bool)

(assert (=> b!5477313 (= res!2334927 (dynLambda!24433 lambda!291979 (h!68694 (exprs!5241 c!332))))))

(declare-fun b!5477314 () Bool)

(assert (=> b!5477314 (= e!3390176 (forall!14614 (t!375599 (exprs!5241 c!332)) lambda!291979))))

(assert (= (and d!1740130 (not res!2334926)) b!5477313))

(assert (= (and b!5477313 res!2334927) b!5477314))

(declare-fun b_lambda!208103 () Bool)

(assert (=> (not b_lambda!208103) (not b!5477313)))

(declare-fun m!6493694 () Bool)

(assert (=> b!5477313 m!6493694))

(declare-fun m!6493696 () Bool)

(assert (=> b!5477314 m!6493696))

(assert (=> b!5476544 d!1740130))

(declare-fun bs!1265653 () Bool)

(declare-fun b!5477323 () Bool)

(assert (= bs!1265653 (and b!5477323 d!1740096)))

(declare-fun lambda!292062 () Int)

(assert (=> bs!1265653 (not (= lambda!292062 lambda!292053))))

(declare-fun bs!1265654 () Bool)

(assert (= bs!1265654 (and b!5477323 b!5476772)))

(assert (=> bs!1265654 (= (and (= (reg!15686 r!7292) (reg!15686 lt!2237274)) (= r!7292 lt!2237274)) (= lambda!292062 lambda!292000))))

(declare-fun bs!1265655 () Bool)

(assert (= bs!1265655 (and b!5477323 d!1740072)))

(assert (=> bs!1265655 (= (= r!7292 (Star!15357 (reg!15686 r!7292))) (= lambda!292062 lambda!292049))))

(declare-fun bs!1265656 () Bool)

(assert (= bs!1265656 (and b!5477323 d!1740044)))

(assert (=> bs!1265656 (not (= lambda!292062 lambda!292037))))

(assert (=> bs!1265655 (not (= lambda!292062 lambda!292046))))

(declare-fun bs!1265657 () Bool)

(assert (= bs!1265657 (and b!5477323 b!5476568)))

(assert (=> bs!1265657 (not (= lambda!292062 lambda!291975))))

(assert (=> bs!1265656 (not (= lambda!292062 lambda!292036))))

(declare-fun bs!1265658 () Bool)

(assert (= bs!1265658 (and b!5477323 b!5476765)))

(assert (=> bs!1265658 (not (= lambda!292062 lambda!292001))))

(assert (=> bs!1265657 (= lambda!292062 lambda!291976)))

(assert (=> bs!1265657 (not (= lambda!292062 lambda!291977))))

(assert (=> b!5477323 true))

(assert (=> b!5477323 true))

(declare-fun bs!1265659 () Bool)

(declare-fun b!5477316 () Bool)

(assert (= bs!1265659 (and b!5477316 d!1740096)))

(declare-fun lambda!292063 () Int)

(assert (=> bs!1265659 (not (= lambda!292063 lambda!292053))))

(declare-fun bs!1265660 () Bool)

(assert (= bs!1265660 (and b!5477316 b!5476772)))

(assert (=> bs!1265660 (not (= lambda!292063 lambda!292000))))

(declare-fun bs!1265661 () Bool)

(assert (= bs!1265661 (and b!5477316 d!1740072)))

(assert (=> bs!1265661 (not (= lambda!292063 lambda!292049))))

(declare-fun bs!1265662 () Bool)

(assert (= bs!1265662 (and b!5477316 d!1740044)))

(assert (=> bs!1265662 (= (and (= (regOne!31226 r!7292) (reg!15686 r!7292)) (= (regTwo!31226 r!7292) r!7292)) (= lambda!292063 lambda!292037))))

(assert (=> bs!1265661 (not (= lambda!292063 lambda!292046))))

(assert (=> bs!1265662 (not (= lambda!292063 lambda!292036))))

(declare-fun bs!1265663 () Bool)

(assert (= bs!1265663 (and b!5477316 b!5476765)))

(assert (=> bs!1265663 (= (and (= (regOne!31226 r!7292) (regOne!31226 lt!2237274)) (= (regTwo!31226 r!7292) (regTwo!31226 lt!2237274))) (= lambda!292063 lambda!292001))))

(declare-fun bs!1265664 () Bool)

(assert (= bs!1265664 (and b!5477316 b!5476568)))

(assert (=> bs!1265664 (not (= lambda!292063 lambda!291975))))

(declare-fun bs!1265665 () Bool)

(assert (= bs!1265665 (and b!5477316 b!5477323)))

(assert (=> bs!1265665 (not (= lambda!292063 lambda!292062))))

(assert (=> bs!1265664 (not (= lambda!292063 lambda!291976))))

(assert (=> bs!1265664 (= (and (= (regOne!31226 r!7292) (reg!15686 r!7292)) (= (regTwo!31226 r!7292) r!7292)) (= lambda!292063 lambda!291977))))

(assert (=> b!5477316 true))

(assert (=> b!5477316 true))

(declare-fun b!5477315 () Bool)

(declare-fun e!3390181 () Bool)

(assert (=> b!5477315 (= e!3390181 (= s!2326 (Cons!62248 (c!956737 r!7292) Nil!62248)))))

(declare-fun d!1740132 () Bool)

(declare-fun c!956948 () Bool)

(assert (=> d!1740132 (= c!956948 ((_ is EmptyExpr!15357) r!7292))))

(declare-fun e!3390180 () Bool)

(assert (=> d!1740132 (= (matchRSpec!2460 r!7292 s!2326) e!3390180)))

(declare-fun e!3390182 () Bool)

(declare-fun call!404122 () Bool)

(assert (=> b!5477316 (= e!3390182 call!404122)))

(declare-fun b!5477317 () Bool)

(declare-fun e!3390179 () Bool)

(declare-fun e!3390183 () Bool)

(assert (=> b!5477317 (= e!3390179 e!3390183)))

(declare-fun res!2334929 () Bool)

(assert (=> b!5477317 (= res!2334929 (matchRSpec!2460 (regOne!31227 r!7292) s!2326))))

(assert (=> b!5477317 (=> res!2334929 e!3390183)))

(declare-fun b!5477318 () Bool)

(declare-fun e!3390178 () Bool)

(assert (=> b!5477318 (= e!3390180 e!3390178)))

(declare-fun res!2334930 () Bool)

(assert (=> b!5477318 (= res!2334930 (not ((_ is EmptyLang!15357) r!7292)))))

(assert (=> b!5477318 (=> (not res!2334930) (not e!3390178))))

(declare-fun b!5477319 () Bool)

(assert (=> b!5477319 (= e!3390179 e!3390182)))

(declare-fun c!956949 () Bool)

(assert (=> b!5477319 (= c!956949 ((_ is Star!15357) r!7292))))

(declare-fun b!5477320 () Bool)

(declare-fun c!956950 () Bool)

(assert (=> b!5477320 (= c!956950 ((_ is ElementMatch!15357) r!7292))))

(assert (=> b!5477320 (= e!3390178 e!3390181)))

(declare-fun b!5477321 () Bool)

(declare-fun c!956947 () Bool)

(assert (=> b!5477321 (= c!956947 ((_ is Union!15357) r!7292))))

(assert (=> b!5477321 (= e!3390181 e!3390179)))

(declare-fun bm!404116 () Bool)

(declare-fun call!404121 () Bool)

(assert (=> bm!404116 (= call!404121 (isEmpty!34199 s!2326))))

(declare-fun b!5477322 () Bool)

(declare-fun res!2334928 () Bool)

(declare-fun e!3390177 () Bool)

(assert (=> b!5477322 (=> res!2334928 e!3390177)))

(assert (=> b!5477322 (= res!2334928 call!404121)))

(assert (=> b!5477322 (= e!3390182 e!3390177)))

(assert (=> b!5477323 (= e!3390177 call!404122)))

(declare-fun b!5477324 () Bool)

(assert (=> b!5477324 (= e!3390183 (matchRSpec!2460 (regTwo!31227 r!7292) s!2326))))

(declare-fun b!5477325 () Bool)

(assert (=> b!5477325 (= e!3390180 call!404121)))

(declare-fun bm!404117 () Bool)

(assert (=> bm!404117 (= call!404122 (Exists!2536 (ite c!956949 lambda!292062 lambda!292063)))))

(assert (= (and d!1740132 c!956948) b!5477325))

(assert (= (and d!1740132 (not c!956948)) b!5477318))

(assert (= (and b!5477318 res!2334930) b!5477320))

(assert (= (and b!5477320 c!956950) b!5477315))

(assert (= (and b!5477320 (not c!956950)) b!5477321))

(assert (= (and b!5477321 c!956947) b!5477317))

(assert (= (and b!5477321 (not c!956947)) b!5477319))

(assert (= (and b!5477317 (not res!2334929)) b!5477324))

(assert (= (and b!5477319 c!956949) b!5477322))

(assert (= (and b!5477319 (not c!956949)) b!5477316))

(assert (= (and b!5477322 (not res!2334928)) b!5477323))

(assert (= (or b!5477323 b!5477316) bm!404117))

(assert (= (or b!5477325 b!5477322) bm!404116))

(declare-fun m!6493698 () Bool)

(assert (=> b!5477317 m!6493698))

(assert (=> bm!404116 m!6493120))

(declare-fun m!6493700 () Bool)

(assert (=> b!5477324 m!6493700))

(declare-fun m!6493702 () Bool)

(assert (=> bm!404117 m!6493702))

(assert (=> b!5476563 d!1740132))

(declare-fun b!5477326 () Bool)

(declare-fun e!3390187 () Bool)

(declare-fun e!3390186 () Bool)

(assert (=> b!5477326 (= e!3390187 e!3390186)))

(declare-fun c!956951 () Bool)

(assert (=> b!5477326 (= c!956951 ((_ is EmptyLang!15357) r!7292))))

(declare-fun b!5477328 () Bool)

(declare-fun lt!2237397 () Bool)

(declare-fun call!404123 () Bool)

(assert (=> b!5477328 (= e!3390187 (= lt!2237397 call!404123))))

(declare-fun b!5477329 () Bool)

(declare-fun e!3390185 () Bool)

(assert (=> b!5477329 (= e!3390185 (nullable!5484 r!7292))))

(declare-fun b!5477330 () Bool)

(assert (=> b!5477330 (= e!3390185 (matchR!7542 (derivativeStep!4329 r!7292 (head!11733 s!2326)) (tail!10830 s!2326)))))

(declare-fun b!5477331 () Bool)

(declare-fun res!2334938 () Bool)

(declare-fun e!3390189 () Bool)

(assert (=> b!5477331 (=> res!2334938 e!3390189)))

(assert (=> b!5477331 (= res!2334938 (not ((_ is ElementMatch!15357) r!7292)))))

(assert (=> b!5477331 (= e!3390186 e!3390189)))

(declare-fun b!5477332 () Bool)

(declare-fun res!2334931 () Bool)

(declare-fun e!3390190 () Bool)

(assert (=> b!5477332 (=> res!2334931 e!3390190)))

(assert (=> b!5477332 (= res!2334931 (not (isEmpty!34199 (tail!10830 s!2326))))))

(declare-fun b!5477333 () Bool)

(declare-fun e!3390188 () Bool)

(assert (=> b!5477333 (= e!3390189 e!3390188)))

(declare-fun res!2334937 () Bool)

(assert (=> b!5477333 (=> (not res!2334937) (not e!3390188))))

(assert (=> b!5477333 (= res!2334937 (not lt!2237397))))

(declare-fun b!5477334 () Bool)

(assert (=> b!5477334 (= e!3390188 e!3390190)))

(declare-fun res!2334935 () Bool)

(assert (=> b!5477334 (=> res!2334935 e!3390190)))

(assert (=> b!5477334 (= res!2334935 call!404123)))

(declare-fun b!5477335 () Bool)

(declare-fun res!2334933 () Bool)

(assert (=> b!5477335 (=> res!2334933 e!3390189)))

(declare-fun e!3390184 () Bool)

(assert (=> b!5477335 (= res!2334933 e!3390184)))

(declare-fun res!2334936 () Bool)

(assert (=> b!5477335 (=> (not res!2334936) (not e!3390184))))

(assert (=> b!5477335 (= res!2334936 lt!2237397)))

(declare-fun b!5477336 () Bool)

(declare-fun res!2334934 () Bool)

(assert (=> b!5477336 (=> (not res!2334934) (not e!3390184))))

(assert (=> b!5477336 (= res!2334934 (not call!404123))))

(declare-fun b!5477327 () Bool)

(assert (=> b!5477327 (= e!3390184 (= (head!11733 s!2326) (c!956737 r!7292)))))

(declare-fun d!1740134 () Bool)

(assert (=> d!1740134 e!3390187))

(declare-fun c!956953 () Bool)

(assert (=> d!1740134 (= c!956953 ((_ is EmptyExpr!15357) r!7292))))

(assert (=> d!1740134 (= lt!2237397 e!3390185)))

(declare-fun c!956952 () Bool)

(assert (=> d!1740134 (= c!956952 (isEmpty!34199 s!2326))))

(assert (=> d!1740134 (validRegex!7093 r!7292)))

(assert (=> d!1740134 (= (matchR!7542 r!7292 s!2326) lt!2237397)))

(declare-fun bm!404118 () Bool)

(assert (=> bm!404118 (= call!404123 (isEmpty!34199 s!2326))))

(declare-fun b!5477337 () Bool)

(declare-fun res!2334932 () Bool)

(assert (=> b!5477337 (=> (not res!2334932) (not e!3390184))))

(assert (=> b!5477337 (= res!2334932 (isEmpty!34199 (tail!10830 s!2326)))))

(declare-fun b!5477338 () Bool)

(assert (=> b!5477338 (= e!3390190 (not (= (head!11733 s!2326) (c!956737 r!7292))))))

(declare-fun b!5477339 () Bool)

(assert (=> b!5477339 (= e!3390186 (not lt!2237397))))

(assert (= (and d!1740134 c!956952) b!5477329))

(assert (= (and d!1740134 (not c!956952)) b!5477330))

(assert (= (and d!1740134 c!956953) b!5477328))

(assert (= (and d!1740134 (not c!956953)) b!5477326))

(assert (= (and b!5477326 c!956951) b!5477339))

(assert (= (and b!5477326 (not c!956951)) b!5477331))

(assert (= (and b!5477331 (not res!2334938)) b!5477335))

(assert (= (and b!5477335 res!2334936) b!5477336))

(assert (= (and b!5477336 res!2334934) b!5477337))

(assert (= (and b!5477337 res!2334932) b!5477327))

(assert (= (and b!5477335 (not res!2334933)) b!5477333))

(assert (= (and b!5477333 res!2334937) b!5477334))

(assert (= (and b!5477334 (not res!2334935)) b!5477332))

(assert (= (and b!5477332 (not res!2334931)) b!5477338))

(assert (= (or b!5477328 b!5477334 b!5477336) bm!404118))

(assert (=> b!5477338 m!6493230))

(assert (=> b!5477330 m!6493230))

(assert (=> b!5477330 m!6493230))

(declare-fun m!6493704 () Bool)

(assert (=> b!5477330 m!6493704))

(assert (=> b!5477330 m!6493234))

(assert (=> b!5477330 m!6493704))

(assert (=> b!5477330 m!6493234))

(declare-fun m!6493706 () Bool)

(assert (=> b!5477330 m!6493706))

(assert (=> b!5477337 m!6493234))

(assert (=> b!5477337 m!6493234))

(assert (=> b!5477337 m!6493336))

(assert (=> d!1740134 m!6493120))

(assert (=> d!1740134 m!6493164))

(assert (=> bm!404118 m!6493120))

(assert (=> b!5477327 m!6493230))

(assert (=> b!5477332 m!6493234))

(assert (=> b!5477332 m!6493234))

(assert (=> b!5477332 m!6493336))

(declare-fun m!6493708 () Bool)

(assert (=> b!5477329 m!6493708))

(assert (=> b!5476563 d!1740134))

(declare-fun d!1740136 () Bool)

(assert (=> d!1740136 (= (matchR!7542 r!7292 s!2326) (matchRSpec!2460 r!7292 s!2326))))

(declare-fun lt!2237398 () Unit!155164)

(assert (=> d!1740136 (= lt!2237398 (choose!41668 r!7292 s!2326))))

(assert (=> d!1740136 (validRegex!7093 r!7292)))

(assert (=> d!1740136 (= (mainMatchTheorem!2460 r!7292 s!2326) lt!2237398)))

(declare-fun bs!1265666 () Bool)

(assert (= bs!1265666 d!1740136))

(assert (=> bs!1265666 m!6493094))

(assert (=> bs!1265666 m!6493092))

(declare-fun m!6493710 () Bool)

(assert (=> bs!1265666 m!6493710))

(assert (=> bs!1265666 m!6493164))

(assert (=> b!5476563 d!1740136))

(declare-fun d!1740138 () Bool)

(declare-fun lt!2237399 () Regex!15357)

(assert (=> d!1740138 (validRegex!7093 lt!2237399)))

(assert (=> d!1740138 (= lt!2237399 (generalisedUnion!1286 (unfocusZipperList!799 (Cons!62247 lt!2237290 Nil!62247))))))

(assert (=> d!1740138 (= (unfocusZipper!1099 (Cons!62247 lt!2237290 Nil!62247)) lt!2237399)))

(declare-fun bs!1265667 () Bool)

(assert (= bs!1265667 d!1740138))

(declare-fun m!6493712 () Bool)

(assert (=> bs!1265667 m!6493712))

(declare-fun m!6493714 () Bool)

(assert (=> bs!1265667 m!6493714))

(assert (=> bs!1265667 m!6493714))

(declare-fun m!6493716 () Bool)

(assert (=> bs!1265667 m!6493716))

(assert (=> b!5476553 d!1740138))

(declare-fun b!5477344 () Bool)

(declare-fun e!3390193 () Bool)

(declare-fun tp!1505448 () Bool)

(declare-fun tp!1505449 () Bool)

(assert (=> b!5477344 (= e!3390193 (and tp!1505448 tp!1505449))))

(assert (=> b!5476545 (= tp!1505381 e!3390193)))

(assert (= (and b!5476545 ((_ is Cons!62246) (exprs!5241 setElem!35989))) b!5477344))

(declare-fun b!5477357 () Bool)

(declare-fun e!3390196 () Bool)

(declare-fun tp!1505462 () Bool)

(assert (=> b!5477357 (= e!3390196 tp!1505462)))

(declare-fun b!5477356 () Bool)

(declare-fun tp!1505463 () Bool)

(declare-fun tp!1505461 () Bool)

(assert (=> b!5477356 (= e!3390196 (and tp!1505463 tp!1505461))))

(assert (=> b!5476554 (= tp!1505378 e!3390196)))

(declare-fun b!5477355 () Bool)

(assert (=> b!5477355 (= e!3390196 tp_is_empty!39967)))

(declare-fun b!5477358 () Bool)

(declare-fun tp!1505460 () Bool)

(declare-fun tp!1505464 () Bool)

(assert (=> b!5477358 (= e!3390196 (and tp!1505460 tp!1505464))))

(assert (= (and b!5476554 ((_ is ElementMatch!15357) (regOne!31227 r!7292))) b!5477355))

(assert (= (and b!5476554 ((_ is Concat!24202) (regOne!31227 r!7292))) b!5477356))

(assert (= (and b!5476554 ((_ is Star!15357) (regOne!31227 r!7292))) b!5477357))

(assert (= (and b!5476554 ((_ is Union!15357) (regOne!31227 r!7292))) b!5477358))

(declare-fun b!5477361 () Bool)

(declare-fun e!3390197 () Bool)

(declare-fun tp!1505467 () Bool)

(assert (=> b!5477361 (= e!3390197 tp!1505467)))

(declare-fun b!5477360 () Bool)

(declare-fun tp!1505468 () Bool)

(declare-fun tp!1505466 () Bool)

(assert (=> b!5477360 (= e!3390197 (and tp!1505468 tp!1505466))))

(assert (=> b!5476554 (= tp!1505379 e!3390197)))

(declare-fun b!5477359 () Bool)

(assert (=> b!5477359 (= e!3390197 tp_is_empty!39967)))

(declare-fun b!5477362 () Bool)

(declare-fun tp!1505465 () Bool)

(declare-fun tp!1505469 () Bool)

(assert (=> b!5477362 (= e!3390197 (and tp!1505465 tp!1505469))))

(assert (= (and b!5476554 ((_ is ElementMatch!15357) (regTwo!31227 r!7292))) b!5477359))

(assert (= (and b!5476554 ((_ is Concat!24202) (regTwo!31227 r!7292))) b!5477360))

(assert (= (and b!5476554 ((_ is Star!15357) (regTwo!31227 r!7292))) b!5477361))

(assert (= (and b!5476554 ((_ is Union!15357) (regTwo!31227 r!7292))) b!5477362))

(declare-fun b!5477365 () Bool)

(declare-fun e!3390198 () Bool)

(declare-fun tp!1505472 () Bool)

(assert (=> b!5477365 (= e!3390198 tp!1505472)))

(declare-fun b!5477364 () Bool)

(declare-fun tp!1505473 () Bool)

(declare-fun tp!1505471 () Bool)

(assert (=> b!5477364 (= e!3390198 (and tp!1505473 tp!1505471))))

(assert (=> b!5476551 (= tp!1505375 e!3390198)))

(declare-fun b!5477363 () Bool)

(assert (=> b!5477363 (= e!3390198 tp_is_empty!39967)))

(declare-fun b!5477366 () Bool)

(declare-fun tp!1505470 () Bool)

(declare-fun tp!1505474 () Bool)

(assert (=> b!5477366 (= e!3390198 (and tp!1505470 tp!1505474))))

(assert (= (and b!5476551 ((_ is ElementMatch!15357) (regOne!31226 r!7292))) b!5477363))

(assert (= (and b!5476551 ((_ is Concat!24202) (regOne!31226 r!7292))) b!5477364))

(assert (= (and b!5476551 ((_ is Star!15357) (regOne!31226 r!7292))) b!5477365))

(assert (= (and b!5476551 ((_ is Union!15357) (regOne!31226 r!7292))) b!5477366))

(declare-fun b!5477369 () Bool)

(declare-fun e!3390199 () Bool)

(declare-fun tp!1505477 () Bool)

(assert (=> b!5477369 (= e!3390199 tp!1505477)))

(declare-fun b!5477368 () Bool)

(declare-fun tp!1505478 () Bool)

(declare-fun tp!1505476 () Bool)

(assert (=> b!5477368 (= e!3390199 (and tp!1505478 tp!1505476))))

(assert (=> b!5476551 (= tp!1505383 e!3390199)))

(declare-fun b!5477367 () Bool)

(assert (=> b!5477367 (= e!3390199 tp_is_empty!39967)))

(declare-fun b!5477370 () Bool)

(declare-fun tp!1505475 () Bool)

(declare-fun tp!1505479 () Bool)

(assert (=> b!5477370 (= e!3390199 (and tp!1505475 tp!1505479))))

(assert (= (and b!5476551 ((_ is ElementMatch!15357) (regTwo!31226 r!7292))) b!5477367))

(assert (= (and b!5476551 ((_ is Concat!24202) (regTwo!31226 r!7292))) b!5477368))

(assert (= (and b!5476551 ((_ is Star!15357) (regTwo!31226 r!7292))) b!5477369))

(assert (= (and b!5476551 ((_ is Union!15357) (regTwo!31226 r!7292))) b!5477370))

(declare-fun b!5477371 () Bool)

(declare-fun e!3390200 () Bool)

(declare-fun tp!1505480 () Bool)

(declare-fun tp!1505481 () Bool)

(assert (=> b!5477371 (= e!3390200 (and tp!1505480 tp!1505481))))

(assert (=> b!5476556 (= tp!1505380 e!3390200)))

(assert (= (and b!5476556 ((_ is Cons!62246) (exprs!5241 c!332))) b!5477371))

(declare-fun condSetEmpty!35995 () Bool)

(assert (=> setNonEmpty!35989 (= condSetEmpty!35995 (= setRest!35989 ((as const (Array Context!9482 Bool)) false)))))

(declare-fun setRes!35995 () Bool)

(assert (=> setNonEmpty!35989 (= tp!1505373 setRes!35995)))

(declare-fun setIsEmpty!35995 () Bool)

(assert (=> setIsEmpty!35995 setRes!35995))

(declare-fun tp!1505486 () Bool)

(declare-fun setNonEmpty!35995 () Bool)

(declare-fun setElem!35995 () Context!9482)

(declare-fun e!3390203 () Bool)

(assert (=> setNonEmpty!35995 (= setRes!35995 (and tp!1505486 (inv!81639 setElem!35995) e!3390203))))

(declare-fun setRest!35995 () (InoxSet Context!9482))

(assert (=> setNonEmpty!35995 (= setRest!35989 ((_ map or) (store ((as const (Array Context!9482 Bool)) false) setElem!35995 true) setRest!35995))))

(declare-fun b!5477376 () Bool)

(declare-fun tp!1505487 () Bool)

(assert (=> b!5477376 (= e!3390203 tp!1505487)))

(assert (= (and setNonEmpty!35989 condSetEmpty!35995) setIsEmpty!35995))

(assert (= (and setNonEmpty!35989 (not condSetEmpty!35995)) setNonEmpty!35995))

(assert (= setNonEmpty!35995 b!5477376))

(declare-fun m!6493718 () Bool)

(assert (=> setNonEmpty!35995 m!6493718))

(declare-fun b!5477379 () Bool)

(declare-fun e!3390204 () Bool)

(declare-fun tp!1505490 () Bool)

(assert (=> b!5477379 (= e!3390204 tp!1505490)))

(declare-fun b!5477378 () Bool)

(declare-fun tp!1505491 () Bool)

(declare-fun tp!1505489 () Bool)

(assert (=> b!5477378 (= e!3390204 (and tp!1505491 tp!1505489))))

(assert (=> b!5476559 (= tp!1505376 e!3390204)))

(declare-fun b!5477377 () Bool)

(assert (=> b!5477377 (= e!3390204 tp_is_empty!39967)))

(declare-fun b!5477380 () Bool)

(declare-fun tp!1505488 () Bool)

(declare-fun tp!1505492 () Bool)

(assert (=> b!5477380 (= e!3390204 (and tp!1505488 tp!1505492))))

(assert (= (and b!5476559 ((_ is ElementMatch!15357) (reg!15686 r!7292))) b!5477377))

(assert (= (and b!5476559 ((_ is Concat!24202) (reg!15686 r!7292))) b!5477378))

(assert (= (and b!5476559 ((_ is Star!15357) (reg!15686 r!7292))) b!5477379))

(assert (= (and b!5476559 ((_ is Union!15357) (reg!15686 r!7292))) b!5477380))

(declare-fun b!5477385 () Bool)

(declare-fun e!3390207 () Bool)

(declare-fun tp!1505495 () Bool)

(assert (=> b!5477385 (= e!3390207 (and tp_is_empty!39967 tp!1505495))))

(assert (=> b!5476573 (= tp!1505374 e!3390207)))

(assert (= (and b!5476573 ((_ is Cons!62248) (t!375601 s!2326))) b!5477385))

(declare-fun b!5477386 () Bool)

(declare-fun e!3390208 () Bool)

(declare-fun tp!1505496 () Bool)

(declare-fun tp!1505497 () Bool)

(assert (=> b!5477386 (= e!3390208 (and tp!1505496 tp!1505497))))

(assert (=> b!5476543 (= tp!1505382 e!3390208)))

(assert (= (and b!5476543 ((_ is Cons!62246) (exprs!5241 (h!68695 zl!343)))) b!5477386))

(declare-fun b!5477394 () Bool)

(declare-fun e!3390214 () Bool)

(declare-fun tp!1505502 () Bool)

(assert (=> b!5477394 (= e!3390214 tp!1505502)))

(declare-fun e!3390213 () Bool)

(declare-fun b!5477393 () Bool)

(declare-fun tp!1505503 () Bool)

(assert (=> b!5477393 (= e!3390213 (and (inv!81639 (h!68695 (t!375600 zl!343))) e!3390214 tp!1505503))))

(assert (=> b!5476558 (= tp!1505377 e!3390213)))

(assert (= b!5477393 b!5477394))

(assert (= (and b!5476558 ((_ is Cons!62247) (t!375600 zl!343))) b!5477393))

(declare-fun m!6493720 () Bool)

(assert (=> b!5477393 m!6493720))

(declare-fun b_lambda!208105 () Bool)

(assert (= b_lambda!208101 (or b!5476570 b_lambda!208105)))

(declare-fun bs!1265668 () Bool)

(declare-fun d!1740140 () Bool)

(assert (= bs!1265668 (and d!1740140 b!5476570)))

(assert (=> bs!1265668 (= (dynLambda!24431 lambda!291978 lt!2237290) (derivationStepZipperUp!709 lt!2237290 (h!68696 s!2326)))))

(assert (=> bs!1265668 m!6493072))

(assert (=> d!1740112 d!1740140))

(declare-fun b_lambda!208107 () Bool)

(assert (= b_lambda!208099 (or b!5476570 b_lambda!208107)))

(declare-fun bs!1265669 () Bool)

(declare-fun d!1740142 () Bool)

(assert (= bs!1265669 (and d!1740142 b!5476570)))

(assert (=> bs!1265669 (= (dynLambda!24431 lambda!291978 (h!68695 zl!343)) (derivationStepZipperUp!709 (h!68695 zl!343) (h!68696 s!2326)))))

(assert (=> bs!1265669 m!6493140))

(assert (=> d!1740104 d!1740142))

(declare-fun b_lambda!208109 () Bool)

(assert (= b_lambda!208075 (or b!5476570 b_lambda!208109)))

(declare-fun bs!1265670 () Bool)

(declare-fun d!1740144 () Bool)

(assert (= bs!1265670 (and d!1740144 b!5476570)))

(assert (=> bs!1265670 (= (dynLambda!24431 lambda!291978 lt!2237299) (derivationStepZipperUp!709 lt!2237299 (h!68696 s!2326)))))

(assert (=> bs!1265670 m!6493158))

(assert (=> d!1739946 d!1740144))

(declare-fun b_lambda!208111 () Bool)

(assert (= b_lambda!208103 (or b!5476544 b_lambda!208111)))

(declare-fun bs!1265671 () Bool)

(declare-fun d!1740146 () Bool)

(assert (= bs!1265671 (and d!1740146 b!5476544)))

(assert (=> bs!1265671 (= (dynLambda!24433 lambda!291979 (h!68694 (exprs!5241 c!332))) (validRegex!7093 (h!68694 (exprs!5241 c!332))))))

(declare-fun m!6493722 () Bool)

(assert (=> bs!1265671 m!6493722))

(assert (=> b!5477313 d!1740146))

(declare-fun b_lambda!208113 () Bool)

(assert (= b_lambda!208077 (or b!5476570 b_lambda!208113)))

(declare-fun bs!1265672 () Bool)

(declare-fun d!1740148 () Bool)

(assert (= bs!1265672 (and d!1740148 b!5476570)))

(assert (=> bs!1265672 (= (dynLambda!24431 lambda!291978 lt!2237297) (derivationStepZipperUp!709 lt!2237297 (h!68696 s!2326)))))

(assert (=> bs!1265672 m!6493148))

(assert (=> d!1739954 d!1740148))

(check-sat (not b_lambda!208111) tp_is_empty!39967 (not b!5477200) (not bs!1265670) (not bm!404116) (not bm!404089) (not b!5476597) (not bm!404114) (not b!5477393) (not d!1740098) (not d!1740108) (not bm!404115) (not d!1740044) (not d!1740072) (not b!5476984) (not b!5476867) (not b!5476766) (not b!5477212) (not b!5477378) (not b!5476869) (not d!1740128) (not d!1739976) (not b!5477274) (not d!1739934) (not bs!1265672) (not bm!404106) (not b!5477361) (not b!5477283) (not b!5477360) (not d!1740104) (not b!5476925) (not b_lambda!208107) (not d!1740084) (not b!5477379) (not b!5477324) (not bm!404017) (not b!5477240) (not b!5477281) (not b!5477371) (not bm!404046) (not bm!404118) (not d!1740138) (not bm!404058) (not d!1740100) (not b!5476643) (not b!5477357) (not b!5477376) (not b!5477314) (not b!5476594) (not b!5477394) (not bm!404067) (not bs!1265669) (not b!5477215) (not b!5477308) (not bm!404066) (not bm!404047) (not d!1739932) (not b!5476981) (not b!5477288) (not b!5476890) (not b!5476887) (not b!5477329) (not d!1739954) (not b!5477365) (not d!1740022) (not b!5476888) (not b!5476866) (not b_lambda!208113) (not b_lambda!208105) (not d!1740020) (not b!5477276) (not b!5477206) (not d!1740096) (not b!5476889) (not bm!404107) (not b!5476983) (not b!5476602) (not bm!404018) (not b!5476979) (not d!1740122) (not d!1740136) (not bs!1265671) (not d!1739930) (not b!5477358) (not b!5477280) (not b!5476773) (not b!5477305) (not bm!404105) (not d!1740126) (not b_lambda!208109) (not d!1740032) (not d!1740018) (not b!5477344) (not b!5477198) (not b!5477368) (not b!5477278) (not b!5477330) (not b!5477204) (not d!1740040) (not b!5477386) (not b!5477380) (not b!5477362) (not bs!1265668) (not b!5477203) (not bm!404108) (not b!5477337) (not b!5477277) (not d!1740114) (not d!1739956) (not b!5476985) (not bm!404112) (not b!5476986) (not b!5476978) (not b!5477317) (not b!5476874) (not b!5477327) (not d!1740134) (not b!5477302) (not d!1740116) (not b!5477370) (not d!1740004) (not d!1739946) (not b!5477338) (not b!5477356) (not b!5477332) (not d!1740124) (not b!5477205) (not b!5477385) (not b!5477366) (not b!5477364) (not b!5477292) (not d!1740028) (not b!5477369) (not bm!404113) (not b!5476599) (not d!1740038) (not setNonEmpty!35995) (not d!1739996) (not d!1740082) (not bm!404117) (not b!5477250) (not d!1740010) (not d!1740112) (not b!5476642) (not b!5476864) (not d!1739998) (not b!5477253) (not b!5476875))
(check-sat)
