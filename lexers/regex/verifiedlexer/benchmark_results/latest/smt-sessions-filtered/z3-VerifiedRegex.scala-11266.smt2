; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592388 () Bool)

(assert start!592388)

(declare-fun b!5767564 () Bool)

(assert (=> b!5767564 true))

(assert (=> b!5767564 true))

(declare-fun lambda!313256 () Int)

(declare-fun lambda!313255 () Int)

(assert (=> b!5767564 (not (= lambda!313256 lambda!313255))))

(assert (=> b!5767564 true))

(assert (=> b!5767564 true))

(declare-fun b!5767549 () Bool)

(assert (=> b!5767549 true))

(declare-fun b!5767541 () Bool)

(declare-fun e!3543433 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31828 0))(
  ( (C!31829 (val!25616 Int)) )
))
(declare-datatypes ((Regex!15779 0))(
  ( (ElementMatch!15779 (c!1019677 C!31828)) (Concat!24624 (regOne!32070 Regex!15779) (regTwo!32070 Regex!15779)) (EmptyExpr!15779) (Star!15779 (reg!16108 Regex!15779)) (EmptyLang!15779) (Union!15779 (regOne!32071 Regex!15779) (regTwo!32071 Regex!15779)) )
))
(declare-datatypes ((List!63636 0))(
  ( (Nil!63512) (Cons!63512 (h!69960 Regex!15779) (t!376974 List!63636)) )
))
(declare-datatypes ((Context!10326 0))(
  ( (Context!10327 (exprs!5663 List!63636)) )
))
(declare-fun lt!2289590 () (InoxSet Context!10326))

(declare-datatypes ((List!63637 0))(
  ( (Nil!63513) (Cons!63513 (h!69961 C!31828) (t!376975 List!63637)) )
))
(declare-fun s!2326 () List!63637)

(declare-fun matchZipper!1917 ((InoxSet Context!10326) List!63637) Bool)

(assert (=> b!5767541 (= e!3543433 (matchZipper!1917 lt!2289590 (t!376975 s!2326)))))

(declare-fun b!5767542 () Bool)

(declare-fun res!2433962 () Bool)

(declare-fun e!3543447 () Bool)

(assert (=> b!5767542 (=> res!2433962 e!3543447)))

(declare-datatypes ((List!63638 0))(
  ( (Nil!63514) (Cons!63514 (h!69962 Context!10326) (t!376976 List!63638)) )
))
(declare-fun zl!343 () List!63638)

(declare-fun isEmpty!35405 (List!63636) Bool)

(assert (=> b!5767542 (= res!2433962 (isEmpty!35405 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767543 () Bool)

(declare-fun e!3543432 () Bool)

(declare-fun tp_is_empty!40811 () Bool)

(declare-fun tp!1593842 () Bool)

(assert (=> b!5767543 (= e!3543432 (and tp_is_empty!40811 tp!1593842))))

(declare-fun b!5767544 () Bool)

(declare-fun res!2433956 () Bool)

(declare-fun e!3543448 () Bool)

(assert (=> b!5767544 (=> res!2433956 e!3543448)))

(declare-fun r!7292 () Regex!15779)

(declare-fun generalisedUnion!1642 (List!63636) Regex!15779)

(declare-fun unfocusZipperList!1207 (List!63638) List!63636)

(assert (=> b!5767544 (= res!2433956 (not (= r!7292 (generalisedUnion!1642 (unfocusZipperList!1207 zl!343)))))))

(declare-fun b!5767545 () Bool)

(declare-fun res!2433963 () Bool)

(assert (=> b!5767545 (=> res!2433963 e!3543448)))

(declare-fun generalisedConcat!1394 (List!63636) Regex!15779)

(assert (=> b!5767545 (= res!2433963 (not (= r!7292 (generalisedConcat!1394 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun b!5767547 () Bool)

(declare-fun e!3543444 () Bool)

(declare-fun tp!1593838 () Bool)

(assert (=> b!5767547 (= e!3543444 tp!1593838)))

(declare-fun b!5767548 () Bool)

(declare-fun e!3543442 () Bool)

(declare-fun e!3543434 () Bool)

(assert (=> b!5767548 (= e!3543442 e!3543434)))

(declare-fun res!2433954 () Bool)

(assert (=> b!5767548 (=> res!2433954 e!3543434)))

(declare-fun z!1189 () (InoxSet Context!10326))

(declare-fun lt!2289597 () Bool)

(assert (=> b!5767548 (= res!2433954 (not (= (matchZipper!1917 z!1189 s!2326) lt!2289597)))))

(declare-fun lt!2289586 () Bool)

(assert (=> b!5767548 (= lt!2289586 lt!2289597)))

(assert (=> b!5767548 (= lt!2289597 (matchZipper!1917 lt!2289590 (t!376975 s!2326)))))

(declare-fun lt!2289605 () (InoxSet Context!10326))

(assert (=> b!5767548 (= lt!2289586 (matchZipper!1917 lt!2289605 (t!376975 s!2326)))))

(declare-fun lt!2289596 () (InoxSet Context!10326))

(declare-datatypes ((Unit!156648 0))(
  ( (Unit!156649) )
))
(declare-fun lt!2289584 () Unit!156648)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!804 ((InoxSet Context!10326) (InoxSet Context!10326) List!63637) Unit!156648)

(assert (=> b!5767548 (= lt!2289584 (lemmaZipperConcatMatchesSameAsBothZippers!804 lt!2289596 lt!2289590 (t!376975 s!2326)))))

(declare-fun e!3543435 () Bool)

(assert (=> b!5767549 (= e!3543447 e!3543435)))

(declare-fun res!2433950 () Bool)

(assert (=> b!5767549 (=> res!2433950 e!3543435)))

(get-info :version)

(assert (=> b!5767549 (= res!2433950 (or (and ((_ is ElementMatch!15779) (regOne!32070 r!7292)) (= (c!1019677 (regOne!32070 r!7292)) (h!69961 s!2326))) ((_ is Union!15779) (regOne!32070 r!7292))))))

(declare-fun lt!2289593 () Unit!156648)

(declare-fun e!3543443 () Unit!156648)

(assert (=> b!5767549 (= lt!2289593 e!3543443)))

(declare-fun c!1019676 () Bool)

(declare-fun nullable!5811 (Regex!15779) Bool)

(assert (=> b!5767549 (= c!1019676 (nullable!5811 (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun lambda!313257 () Int)

(declare-fun flatMap!1392 ((InoxSet Context!10326) Int) (InoxSet Context!10326))

(declare-fun derivationStepZipperUp!1047 (Context!10326 C!31828) (InoxSet Context!10326))

(assert (=> b!5767549 (= (flatMap!1392 z!1189 lambda!313257) (derivationStepZipperUp!1047 (h!69962 zl!343) (h!69961 s!2326)))))

(declare-fun lt!2289604 () Unit!156648)

(declare-fun lemmaFlatMapOnSingletonSet!924 ((InoxSet Context!10326) Context!10326 Int) Unit!156648)

(assert (=> b!5767549 (= lt!2289604 (lemmaFlatMapOnSingletonSet!924 z!1189 (h!69962 zl!343) lambda!313257))))

(declare-fun lt!2289585 () Context!10326)

(assert (=> b!5767549 (= lt!2289590 (derivationStepZipperUp!1047 lt!2289585 (h!69961 s!2326)))))

(declare-fun derivationStepZipperDown!1121 (Regex!15779 Context!10326 C!31828) (InoxSet Context!10326))

(assert (=> b!5767549 (= lt!2289596 (derivationStepZipperDown!1121 (h!69960 (exprs!5663 (h!69962 zl!343))) lt!2289585 (h!69961 s!2326)))))

(assert (=> b!5767549 (= lt!2289585 (Context!10327 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun lt!2289600 () (InoxSet Context!10326))

(assert (=> b!5767549 (= lt!2289600 (derivationStepZipperUp!1047 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343))))) (h!69961 s!2326)))))

(declare-fun b!5767550 () Bool)

(declare-fun e!3543438 () Bool)

(declare-fun tp!1593846 () Bool)

(declare-fun tp!1593844 () Bool)

(assert (=> b!5767550 (= e!3543438 (and tp!1593846 tp!1593844))))

(declare-fun b!5767551 () Bool)

(declare-fun e!3543437 () Bool)

(assert (=> b!5767551 (= e!3543435 e!3543437)))

(declare-fun res!2433958 () Bool)

(assert (=> b!5767551 (=> res!2433958 e!3543437)))

(assert (=> b!5767551 (= res!2433958 (or (not (= lt!2289596 ((as const (Array Context!10326 Bool)) false))) (not (= r!7292 (Concat!24624 (regOne!32070 r!7292) (regTwo!32070 r!7292)))) (not (= (regOne!32070 r!7292) EmptyExpr!15779))))))

(assert (=> b!5767551 (not (matchZipper!1917 lt!2289596 (t!376975 s!2326)))))

(declare-fun lt!2289588 () Unit!156648)

(declare-fun lemmaEmptyZipperMatchesNothing!64 ((InoxSet Context!10326) List!63637) Unit!156648)

(assert (=> b!5767551 (= lt!2289588 (lemmaEmptyZipperMatchesNothing!64 lt!2289596 (t!376975 s!2326)))))

(declare-fun b!5767552 () Bool)

(declare-fun res!2433966 () Bool)

(assert (=> b!5767552 (=> res!2433966 e!3543448)))

(declare-fun isEmpty!35406 (List!63638) Bool)

(assert (=> b!5767552 (= res!2433966 (not (isEmpty!35406 (t!376976 zl!343))))))

(declare-fun b!5767553 () Bool)

(declare-fun res!2433964 () Bool)

(declare-fun e!3543439 () Bool)

(assert (=> b!5767553 (=> (not res!2433964) (not e!3543439))))

(declare-fun toList!9563 ((InoxSet Context!10326)) List!63638)

(assert (=> b!5767553 (= res!2433964 (= (toList!9563 z!1189) zl!343))))

(declare-fun b!5767554 () Bool)

(assert (=> b!5767554 (= e!3543438 tp_is_empty!40811)))

(declare-fun b!5767555 () Bool)

(declare-fun res!2433959 () Bool)

(assert (=> b!5767555 (=> res!2433959 e!3543448)))

(assert (=> b!5767555 (= res!2433959 (or ((_ is EmptyExpr!15779) r!7292) ((_ is EmptyLang!15779) r!7292) ((_ is ElementMatch!15779) r!7292) ((_ is Union!15779) r!7292) (not ((_ is Concat!24624) r!7292))))))

(declare-fun b!5767556 () Bool)

(declare-fun res!2433955 () Bool)

(assert (=> b!5767556 (=> res!2433955 e!3543435)))

(assert (=> b!5767556 (= res!2433955 (or ((_ is Concat!24624) (regOne!32070 r!7292)) ((_ is Star!15779) (regOne!32070 r!7292)) (not ((_ is EmptyExpr!15779) (regOne!32070 r!7292)))))))

(declare-fun b!5767557 () Bool)

(declare-fun e!3543446 () Bool)

(declare-fun tp!1593840 () Bool)

(assert (=> b!5767557 (= e!3543446 tp!1593840)))

(declare-fun b!5767558 () Bool)

(declare-fun Unit!156650 () Unit!156648)

(assert (=> b!5767558 (= e!3543443 Unit!156650)))

(declare-fun lt!2289583 () Unit!156648)

(assert (=> b!5767558 (= lt!2289583 (lemmaZipperConcatMatchesSameAsBothZippers!804 lt!2289596 lt!2289590 (t!376975 s!2326)))))

(declare-fun res!2433953 () Bool)

(assert (=> b!5767558 (= res!2433953 (matchZipper!1917 lt!2289596 (t!376975 s!2326)))))

(assert (=> b!5767558 (=> res!2433953 e!3543433)))

(assert (=> b!5767558 (= (matchZipper!1917 ((_ map or) lt!2289596 lt!2289590) (t!376975 s!2326)) e!3543433)))

(declare-fun res!2433947 () Bool)

(assert (=> start!592388 (=> (not res!2433947) (not e!3543439))))

(declare-fun validRegex!7515 (Regex!15779) Bool)

(assert (=> start!592388 (= res!2433947 (validRegex!7515 r!7292))))

(assert (=> start!592388 e!3543439))

(assert (=> start!592388 e!3543438))

(declare-fun condSetEmpty!38751 () Bool)

(assert (=> start!592388 (= condSetEmpty!38751 (= z!1189 ((as const (Array Context!10326 Bool)) false)))))

(declare-fun setRes!38751 () Bool)

(assert (=> start!592388 setRes!38751))

(declare-fun e!3543441 () Bool)

(assert (=> start!592388 e!3543441))

(assert (=> start!592388 e!3543432))

(declare-fun tp!1593843 () Bool)

(declare-fun b!5767546 () Bool)

(declare-fun inv!82694 (Context!10326) Bool)

(assert (=> b!5767546 (= e!3543441 (and (inv!82694 (h!69962 zl!343)) e!3543446 tp!1593843))))

(declare-fun b!5767559 () Bool)

(assert (=> b!5767559 (= e!3543439 (not e!3543448))))

(declare-fun res!2433960 () Bool)

(assert (=> b!5767559 (=> res!2433960 e!3543448)))

(assert (=> b!5767559 (= res!2433960 (not ((_ is Cons!63514) zl!343)))))

(declare-fun lt!2289606 () Bool)

(declare-fun matchRSpec!2882 (Regex!15779 List!63637) Bool)

(assert (=> b!5767559 (= lt!2289606 (matchRSpec!2882 r!7292 s!2326))))

(declare-fun matchR!7964 (Regex!15779 List!63637) Bool)

(assert (=> b!5767559 (= lt!2289606 (matchR!7964 r!7292 s!2326))))

(declare-fun lt!2289599 () Unit!156648)

(declare-fun mainMatchTheorem!2882 (Regex!15779 List!63637) Unit!156648)

(assert (=> b!5767559 (= lt!2289599 (mainMatchTheorem!2882 r!7292 s!2326))))

(declare-fun tp!1593841 () Bool)

(declare-fun setNonEmpty!38751 () Bool)

(declare-fun setElem!38751 () Context!10326)

(assert (=> setNonEmpty!38751 (= setRes!38751 (and tp!1593841 (inv!82694 setElem!38751) e!3543444))))

(declare-fun setRest!38751 () (InoxSet Context!10326))

(assert (=> setNonEmpty!38751 (= z!1189 ((_ map or) (store ((as const (Array Context!10326 Bool)) false) setElem!38751 true) setRest!38751))))

(declare-fun b!5767560 () Bool)

(declare-fun e!3543445 () Bool)

(assert (=> b!5767560 (= e!3543437 e!3543445)))

(declare-fun res!2433967 () Bool)

(assert (=> b!5767560 (=> res!2433967 e!3543445)))

(declare-fun lt!2289592 () Bool)

(assert (=> b!5767560 (= res!2433967 (not (= lt!2289606 lt!2289592)))))

(assert (=> b!5767560 (= lt!2289592 (matchRSpec!2882 (regTwo!32070 r!7292) s!2326))))

(assert (=> b!5767560 (= lt!2289592 (matchR!7964 (regTwo!32070 r!7292) s!2326))))

(declare-fun lt!2289598 () Unit!156648)

(assert (=> b!5767560 (= lt!2289598 (mainMatchTheorem!2882 (regTwo!32070 r!7292) s!2326))))

(assert (=> b!5767560 (= (matchR!7964 (regOne!32070 r!7292) s!2326) (matchRSpec!2882 (regOne!32070 r!7292) s!2326))))

(declare-fun lt!2289587 () Unit!156648)

(assert (=> b!5767560 (= lt!2289587 (mainMatchTheorem!2882 (regOne!32070 r!7292) s!2326))))

(declare-fun b!5767561 () Bool)

(declare-fun e!3543440 () Bool)

(assert (=> b!5767561 (= e!3543445 e!3543440)))

(declare-fun res!2433961 () Bool)

(assert (=> b!5767561 (=> res!2433961 e!3543440)))

(declare-fun lt!2289591 () (InoxSet Context!10326))

(declare-fun derivationStepZipper!1858 ((InoxSet Context!10326) C!31828) (InoxSet Context!10326))

(assert (=> b!5767561 (= res!2433961 (not (= lt!2289590 (derivationStepZipper!1858 lt!2289591 (h!69961 s!2326)))))))

(assert (=> b!5767561 (= (flatMap!1392 lt!2289591 lambda!313257) (derivationStepZipperUp!1047 lt!2289585 (h!69961 s!2326)))))

(declare-fun lt!2289595 () Unit!156648)

(assert (=> b!5767561 (= lt!2289595 (lemmaFlatMapOnSingletonSet!924 lt!2289591 lt!2289585 lambda!313257))))

(assert (=> b!5767561 (= lt!2289591 (store ((as const (Array Context!10326 Bool)) false) lt!2289585 true))))

(declare-fun b!5767562 () Bool)

(declare-fun res!2433952 () Bool)

(assert (=> b!5767562 (=> (not res!2433952) (not e!3543439))))

(declare-fun unfocusZipper!1521 (List!63638) Regex!15779)

(assert (=> b!5767562 (= res!2433952 (= r!7292 (unfocusZipper!1521 zl!343)))))

(declare-fun b!5767563 () Bool)

(declare-fun e!3543436 () Bool)

(assert (=> b!5767563 (= e!3543436 (nullable!5811 (regOne!32070 (regOne!32070 r!7292))))))

(assert (=> b!5767564 (= e!3543448 e!3543447)))

(declare-fun res!2433948 () Bool)

(assert (=> b!5767564 (=> res!2433948 e!3543447)))

(declare-fun lt!2289594 () Bool)

(assert (=> b!5767564 (= res!2433948 (or (not (= lt!2289606 lt!2289594)) ((_ is Nil!63513) s!2326)))))

(declare-fun Exists!2879 (Int) Bool)

(assert (=> b!5767564 (= (Exists!2879 lambda!313255) (Exists!2879 lambda!313256))))

(declare-fun lt!2289603 () Unit!156648)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1508 (Regex!15779 Regex!15779 List!63637) Unit!156648)

(assert (=> b!5767564 (= lt!2289603 (lemmaExistCutMatchRandMatchRSpecEquivalent!1508 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326))))

(assert (=> b!5767564 (= lt!2289594 (Exists!2879 lambda!313255))))

(declare-datatypes ((tuple2!65752 0))(
  ( (tuple2!65753 (_1!36179 List!63637) (_2!36179 List!63637)) )
))
(declare-datatypes ((Option!15788 0))(
  ( (None!15787) (Some!15787 (v!51846 tuple2!65752)) )
))
(declare-fun isDefined!12491 (Option!15788) Bool)

(declare-fun findConcatSeparation!2202 (Regex!15779 Regex!15779 List!63637 List!63637 List!63637) Option!15788)

(assert (=> b!5767564 (= lt!2289594 (isDefined!12491 (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) Nil!63513 s!2326 s!2326)))))

(declare-fun lt!2289589 () Unit!156648)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1966 (Regex!15779 Regex!15779 List!63637) Unit!156648)

(assert (=> b!5767564 (= lt!2289589 (lemmaFindConcatSeparationEquivalentToExists!1966 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326))))

(declare-fun b!5767565 () Bool)

(declare-fun tp!1593839 () Bool)

(declare-fun tp!1593845 () Bool)

(assert (=> b!5767565 (= e!3543438 (and tp!1593839 tp!1593845))))

(declare-fun b!5767566 () Bool)

(declare-fun tp!1593837 () Bool)

(assert (=> b!5767566 (= e!3543438 tp!1593837)))

(declare-fun b!5767567 () Bool)

(declare-fun Unit!156651 () Unit!156648)

(assert (=> b!5767567 (= e!3543443 Unit!156651)))

(declare-fun b!5767568 () Bool)

(declare-fun lt!2289602 () Regex!15779)

(assert (=> b!5767568 (= e!3543434 (= (regTwo!32070 r!7292) lt!2289602))))

(assert (=> b!5767568 (= (matchR!7964 lt!2289602 s!2326) (matchZipper!1917 lt!2289591 s!2326))))

(declare-fun lt!2289601 () Unit!156648)

(declare-fun theoremZipperRegexEquiv!677 ((InoxSet Context!10326) List!63638 Regex!15779 List!63637) Unit!156648)

(assert (=> b!5767568 (= lt!2289601 (theoremZipperRegexEquiv!677 lt!2289591 (Cons!63514 lt!2289585 Nil!63514) lt!2289602 s!2326))))

(assert (=> b!5767568 (= lt!2289602 (generalisedConcat!1394 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767569 () Bool)

(assert (=> b!5767569 (= e!3543440 e!3543442)))

(declare-fun res!2433949 () Bool)

(assert (=> b!5767569 (=> res!2433949 e!3543442)))

(assert (=> b!5767569 (= res!2433949 (not (= (derivationStepZipper!1858 z!1189 (h!69961 s!2326)) lt!2289605)))))

(assert (=> b!5767569 (= lt!2289605 ((_ map or) lt!2289596 lt!2289590))))

(declare-fun setIsEmpty!38751 () Bool)

(assert (=> setIsEmpty!38751 setRes!38751))

(declare-fun b!5767570 () Bool)

(declare-fun res!2433957 () Bool)

(assert (=> b!5767570 (=> res!2433957 e!3543435)))

(assert (=> b!5767570 (= res!2433957 e!3543436)))

(declare-fun res!2433965 () Bool)

(assert (=> b!5767570 (=> (not res!2433965) (not e!3543436))))

(assert (=> b!5767570 (= res!2433965 ((_ is Concat!24624) (regOne!32070 r!7292)))))

(declare-fun b!5767571 () Bool)

(declare-fun res!2433951 () Bool)

(assert (=> b!5767571 (=> res!2433951 e!3543448)))

(assert (=> b!5767571 (= res!2433951 (not ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343)))))))

(assert (= (and start!592388 res!2433947) b!5767553))

(assert (= (and b!5767553 res!2433964) b!5767562))

(assert (= (and b!5767562 res!2433952) b!5767559))

(assert (= (and b!5767559 (not res!2433960)) b!5767552))

(assert (= (and b!5767552 (not res!2433966)) b!5767545))

(assert (= (and b!5767545 (not res!2433963)) b!5767571))

(assert (= (and b!5767571 (not res!2433951)) b!5767544))

(assert (= (and b!5767544 (not res!2433956)) b!5767555))

(assert (= (and b!5767555 (not res!2433959)) b!5767564))

(assert (= (and b!5767564 (not res!2433948)) b!5767542))

(assert (= (and b!5767542 (not res!2433962)) b!5767549))

(assert (= (and b!5767549 c!1019676) b!5767558))

(assert (= (and b!5767549 (not c!1019676)) b!5767567))

(assert (= (and b!5767558 (not res!2433953)) b!5767541))

(assert (= (and b!5767549 (not res!2433950)) b!5767570))

(assert (= (and b!5767570 res!2433965) b!5767563))

(assert (= (and b!5767570 (not res!2433957)) b!5767556))

(assert (= (and b!5767556 (not res!2433955)) b!5767551))

(assert (= (and b!5767551 (not res!2433958)) b!5767560))

(assert (= (and b!5767560 (not res!2433967)) b!5767561))

(assert (= (and b!5767561 (not res!2433961)) b!5767569))

(assert (= (and b!5767569 (not res!2433949)) b!5767548))

(assert (= (and b!5767548 (not res!2433954)) b!5767568))

(assert (= (and start!592388 ((_ is ElementMatch!15779) r!7292)) b!5767554))

(assert (= (and start!592388 ((_ is Concat!24624) r!7292)) b!5767565))

(assert (= (and start!592388 ((_ is Star!15779) r!7292)) b!5767566))

(assert (= (and start!592388 ((_ is Union!15779) r!7292)) b!5767550))

(assert (= (and start!592388 condSetEmpty!38751) setIsEmpty!38751))

(assert (= (and start!592388 (not condSetEmpty!38751)) setNonEmpty!38751))

(assert (= setNonEmpty!38751 b!5767547))

(assert (= b!5767546 b!5767557))

(assert (= (and start!592388 ((_ is Cons!63514) zl!343)) b!5767546))

(assert (= (and start!592388 ((_ is Cons!63513) s!2326)) b!5767543))

(declare-fun m!6713144 () Bool)

(assert (=> b!5767569 m!6713144))

(declare-fun m!6713146 () Bool)

(assert (=> b!5767548 m!6713146))

(declare-fun m!6713148 () Bool)

(assert (=> b!5767548 m!6713148))

(declare-fun m!6713150 () Bool)

(assert (=> b!5767548 m!6713150))

(declare-fun m!6713152 () Bool)

(assert (=> b!5767548 m!6713152))

(declare-fun m!6713154 () Bool)

(assert (=> b!5767551 m!6713154))

(declare-fun m!6713156 () Bool)

(assert (=> b!5767551 m!6713156))

(declare-fun m!6713158 () Bool)

(assert (=> b!5767542 m!6713158))

(declare-fun m!6713160 () Bool)

(assert (=> setNonEmpty!38751 m!6713160))

(assert (=> b!5767541 m!6713148))

(declare-fun m!6713162 () Bool)

(assert (=> b!5767568 m!6713162))

(declare-fun m!6713164 () Bool)

(assert (=> b!5767568 m!6713164))

(declare-fun m!6713166 () Bool)

(assert (=> b!5767568 m!6713166))

(declare-fun m!6713168 () Bool)

(assert (=> b!5767568 m!6713168))

(declare-fun m!6713170 () Bool)

(assert (=> b!5767544 m!6713170))

(assert (=> b!5767544 m!6713170))

(declare-fun m!6713172 () Bool)

(assert (=> b!5767544 m!6713172))

(declare-fun m!6713174 () Bool)

(assert (=> start!592388 m!6713174))

(declare-fun m!6713176 () Bool)

(assert (=> b!5767545 m!6713176))

(declare-fun m!6713178 () Bool)

(assert (=> b!5767560 m!6713178))

(declare-fun m!6713180 () Bool)

(assert (=> b!5767560 m!6713180))

(declare-fun m!6713182 () Bool)

(assert (=> b!5767560 m!6713182))

(declare-fun m!6713184 () Bool)

(assert (=> b!5767560 m!6713184))

(declare-fun m!6713186 () Bool)

(assert (=> b!5767560 m!6713186))

(declare-fun m!6713188 () Bool)

(assert (=> b!5767560 m!6713188))

(declare-fun m!6713190 () Bool)

(assert (=> b!5767563 m!6713190))

(declare-fun m!6713192 () Bool)

(assert (=> b!5767552 m!6713192))

(declare-fun m!6713194 () Bool)

(assert (=> b!5767553 m!6713194))

(declare-fun m!6713196 () Bool)

(assert (=> b!5767562 m!6713196))

(declare-fun m!6713198 () Bool)

(assert (=> b!5767564 m!6713198))

(declare-fun m!6713200 () Bool)

(assert (=> b!5767564 m!6713200))

(declare-fun m!6713202 () Bool)

(assert (=> b!5767564 m!6713202))

(declare-fun m!6713204 () Bool)

(assert (=> b!5767564 m!6713204))

(assert (=> b!5767564 m!6713198))

(declare-fun m!6713206 () Bool)

(assert (=> b!5767564 m!6713206))

(assert (=> b!5767564 m!6713200))

(declare-fun m!6713208 () Bool)

(assert (=> b!5767564 m!6713208))

(declare-fun m!6713210 () Bool)

(assert (=> b!5767561 m!6713210))

(declare-fun m!6713212 () Bool)

(assert (=> b!5767561 m!6713212))

(declare-fun m!6713214 () Bool)

(assert (=> b!5767561 m!6713214))

(declare-fun m!6713216 () Bool)

(assert (=> b!5767561 m!6713216))

(declare-fun m!6713218 () Bool)

(assert (=> b!5767561 m!6713218))

(declare-fun m!6713220 () Bool)

(assert (=> b!5767546 m!6713220))

(declare-fun m!6713222 () Bool)

(assert (=> b!5767549 m!6713222))

(declare-fun m!6713224 () Bool)

(assert (=> b!5767549 m!6713224))

(declare-fun m!6713226 () Bool)

(assert (=> b!5767549 m!6713226))

(declare-fun m!6713228 () Bool)

(assert (=> b!5767549 m!6713228))

(declare-fun m!6713230 () Bool)

(assert (=> b!5767549 m!6713230))

(declare-fun m!6713232 () Bool)

(assert (=> b!5767549 m!6713232))

(assert (=> b!5767549 m!6713214))

(assert (=> b!5767558 m!6713152))

(assert (=> b!5767558 m!6713154))

(declare-fun m!6713234 () Bool)

(assert (=> b!5767558 m!6713234))

(declare-fun m!6713236 () Bool)

(assert (=> b!5767559 m!6713236))

(declare-fun m!6713238 () Bool)

(assert (=> b!5767559 m!6713238))

(declare-fun m!6713240 () Bool)

(assert (=> b!5767559 m!6713240))

(check-sat (not b!5767566) (not b!5767549) (not b!5767560) (not b!5767553) (not b!5767552) tp_is_empty!40811 (not b!5767558) (not b!5767544) (not b!5767547) (not b!5767559) (not b!5767541) (not b!5767546) (not start!592388) (not setNonEmpty!38751) (not b!5767545) (not b!5767562) (not b!5767543) (not b!5767568) (not b!5767565) (not b!5767561) (not b!5767548) (not b!5767563) (not b!5767551) (not b!5767569) (not b!5767542) (not b!5767550) (not b!5767557) (not b!5767564))
(check-sat)
(get-model)

(declare-fun b!5767598 () Bool)

(declare-fun e!3543465 () Bool)

(declare-fun lt!2289609 () Regex!15779)

(declare-fun isEmptyExpr!1265 (Regex!15779) Bool)

(assert (=> b!5767598 (= e!3543465 (isEmptyExpr!1265 lt!2289609))))

(declare-fun b!5767599 () Bool)

(declare-fun e!3543462 () Regex!15779)

(assert (=> b!5767599 (= e!3543462 (h!69960 (exprs!5663 (h!69962 zl!343))))))

(declare-fun d!1816989 () Bool)

(declare-fun e!3543464 () Bool)

(assert (=> d!1816989 e!3543464))

(declare-fun res!2433973 () Bool)

(assert (=> d!1816989 (=> (not res!2433973) (not e!3543464))))

(assert (=> d!1816989 (= res!2433973 (validRegex!7515 lt!2289609))))

(assert (=> d!1816989 (= lt!2289609 e!3543462)))

(declare-fun c!1019688 () Bool)

(declare-fun e!3543466 () Bool)

(assert (=> d!1816989 (= c!1019688 e!3543466)))

(declare-fun res!2433972 () Bool)

(assert (=> d!1816989 (=> (not res!2433972) (not e!3543466))))

(assert (=> d!1816989 (= res!2433972 ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343))))))

(declare-fun lambda!313260 () Int)

(declare-fun forall!14897 (List!63636 Int) Bool)

(assert (=> d!1816989 (forall!14897 (exprs!5663 (h!69962 zl!343)) lambda!313260)))

(assert (=> d!1816989 (= (generalisedConcat!1394 (exprs!5663 (h!69962 zl!343))) lt!2289609)))

(declare-fun b!5767600 () Bool)

(declare-fun e!3543463 () Bool)

(declare-fun isConcat!788 (Regex!15779) Bool)

(assert (=> b!5767600 (= e!3543463 (isConcat!788 lt!2289609))))

(declare-fun b!5767601 () Bool)

(declare-fun e!3543461 () Regex!15779)

(assert (=> b!5767601 (= e!3543461 EmptyExpr!15779)))

(declare-fun b!5767602 () Bool)

(assert (=> b!5767602 (= e!3543461 (Concat!24624 (h!69960 (exprs!5663 (h!69962 zl!343))) (generalisedConcat!1394 (t!376974 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun b!5767603 () Bool)

(assert (=> b!5767603 (= e!3543464 e!3543465)))

(declare-fun c!1019686 () Bool)

(assert (=> b!5767603 (= c!1019686 (isEmpty!35405 (exprs!5663 (h!69962 zl!343))))))

(declare-fun b!5767604 () Bool)

(assert (=> b!5767604 (= e!3543462 e!3543461)))

(declare-fun c!1019687 () Bool)

(assert (=> b!5767604 (= c!1019687 ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343))))))

(declare-fun b!5767605 () Bool)

(assert (=> b!5767605 (= e!3543466 (isEmpty!35405 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767606 () Bool)

(assert (=> b!5767606 (= e!3543465 e!3543463)))

(declare-fun c!1019689 () Bool)

(declare-fun tail!11289 (List!63636) List!63636)

(assert (=> b!5767606 (= c!1019689 (isEmpty!35405 (tail!11289 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767607 () Bool)

(declare-fun head!12194 (List!63636) Regex!15779)

(assert (=> b!5767607 (= e!3543463 (= lt!2289609 (head!12194 (exprs!5663 (h!69962 zl!343)))))))

(assert (= (and d!1816989 res!2433972) b!5767605))

(assert (= (and d!1816989 c!1019688) b!5767599))

(assert (= (and d!1816989 (not c!1019688)) b!5767604))

(assert (= (and b!5767604 c!1019687) b!5767602))

(assert (= (and b!5767604 (not c!1019687)) b!5767601))

(assert (= (and d!1816989 res!2433973) b!5767603))

(assert (= (and b!5767603 c!1019686) b!5767598))

(assert (= (and b!5767603 (not c!1019686)) b!5767606))

(assert (= (and b!5767606 c!1019689) b!5767607))

(assert (= (and b!5767606 (not c!1019689)) b!5767600))

(declare-fun m!6713242 () Bool)

(assert (=> b!5767598 m!6713242))

(declare-fun m!6713244 () Bool)

(assert (=> b!5767600 m!6713244))

(declare-fun m!6713246 () Bool)

(assert (=> b!5767603 m!6713246))

(declare-fun m!6713248 () Bool)

(assert (=> b!5767606 m!6713248))

(assert (=> b!5767606 m!6713248))

(declare-fun m!6713250 () Bool)

(assert (=> b!5767606 m!6713250))

(assert (=> b!5767602 m!6713168))

(declare-fun m!6713252 () Bool)

(assert (=> b!5767607 m!6713252))

(declare-fun m!6713254 () Bool)

(assert (=> d!1816989 m!6713254))

(declare-fun m!6713256 () Bool)

(assert (=> d!1816989 m!6713256))

(assert (=> b!5767605 m!6713158))

(assert (=> b!5767545 d!1816989))

(declare-fun b!5767643 () Bool)

(declare-fun e!3543492 () Bool)

(declare-fun e!3543491 () Bool)

(assert (=> b!5767643 (= e!3543492 e!3543491)))

(declare-fun c!1019702 () Bool)

(assert (=> b!5767643 (= c!1019702 ((_ is Union!15779) r!7292))))

(declare-fun c!1019703 () Bool)

(declare-fun call!443084 () Bool)

(declare-fun bm!443077 () Bool)

(assert (=> bm!443077 (= call!443084 (validRegex!7515 (ite c!1019703 (reg!16108 r!7292) (ite c!1019702 (regTwo!32071 r!7292) (regTwo!32070 r!7292)))))))

(declare-fun bm!443078 () Bool)

(declare-fun call!443083 () Bool)

(assert (=> bm!443078 (= call!443083 (validRegex!7515 (ite c!1019702 (regOne!32071 r!7292) (regOne!32070 r!7292))))))

(declare-fun b!5767644 () Bool)

(declare-fun e!3543493 () Bool)

(assert (=> b!5767644 (= e!3543493 e!3543492)))

(assert (=> b!5767644 (= c!1019703 ((_ is Star!15779) r!7292))))

(declare-fun b!5767645 () Bool)

(declare-fun e!3543494 () Bool)

(assert (=> b!5767645 (= e!3543492 e!3543494)))

(declare-fun res!2433991 () Bool)

(assert (=> b!5767645 (= res!2433991 (not (nullable!5811 (reg!16108 r!7292))))))

(assert (=> b!5767645 (=> (not res!2433991) (not e!3543494))))

(declare-fun b!5767647 () Bool)

(declare-fun res!2433989 () Bool)

(declare-fun e!3543490 () Bool)

(assert (=> b!5767647 (=> res!2433989 e!3543490)))

(assert (=> b!5767647 (= res!2433989 (not ((_ is Concat!24624) r!7292)))))

(assert (=> b!5767647 (= e!3543491 e!3543490)))

(declare-fun b!5767648 () Bool)

(declare-fun e!3543496 () Bool)

(declare-fun call!443082 () Bool)

(assert (=> b!5767648 (= e!3543496 call!443082)))

(declare-fun b!5767649 () Bool)

(assert (=> b!5767649 (= e!3543494 call!443084)))

(declare-fun b!5767650 () Bool)

(declare-fun e!3543495 () Bool)

(assert (=> b!5767650 (= e!3543495 call!443082)))

(declare-fun b!5767646 () Bool)

(assert (=> b!5767646 (= e!3543490 e!3543496)))

(declare-fun res!2433988 () Bool)

(assert (=> b!5767646 (=> (not res!2433988) (not e!3543496))))

(assert (=> b!5767646 (= res!2433988 call!443083)))

(declare-fun d!1816991 () Bool)

(declare-fun res!2433987 () Bool)

(assert (=> d!1816991 (=> res!2433987 e!3543493)))

(assert (=> d!1816991 (= res!2433987 ((_ is ElementMatch!15779) r!7292))))

(assert (=> d!1816991 (= (validRegex!7515 r!7292) e!3543493)))

(declare-fun b!5767651 () Bool)

(declare-fun res!2433990 () Bool)

(assert (=> b!5767651 (=> (not res!2433990) (not e!3543495))))

(assert (=> b!5767651 (= res!2433990 call!443083)))

(assert (=> b!5767651 (= e!3543491 e!3543495)))

(declare-fun bm!443079 () Bool)

(assert (=> bm!443079 (= call!443082 call!443084)))

(assert (= (and d!1816991 (not res!2433987)) b!5767644))

(assert (= (and b!5767644 c!1019703) b!5767645))

(assert (= (and b!5767644 (not c!1019703)) b!5767643))

(assert (= (and b!5767645 res!2433991) b!5767649))

(assert (= (and b!5767643 c!1019702) b!5767651))

(assert (= (and b!5767643 (not c!1019702)) b!5767647))

(assert (= (and b!5767651 res!2433990) b!5767650))

(assert (= (and b!5767647 (not res!2433989)) b!5767646))

(assert (= (and b!5767646 res!2433988) b!5767648))

(assert (= (or b!5767650 b!5767648) bm!443079))

(assert (= (or b!5767651 b!5767646) bm!443078))

(assert (= (or b!5767649 bm!443079) bm!443077))

(declare-fun m!6713268 () Bool)

(assert (=> bm!443077 m!6713268))

(declare-fun m!6713270 () Bool)

(assert (=> bm!443078 m!6713270))

(declare-fun m!6713272 () Bool)

(assert (=> b!5767645 m!6713272))

(assert (=> start!592388 d!1816991))

(declare-fun bs!1353207 () Bool)

(declare-fun d!1817001 () Bool)

(assert (= bs!1353207 (and d!1817001 d!1816989)))

(declare-fun lambda!313273 () Int)

(assert (=> bs!1353207 (= lambda!313273 lambda!313260)))

(declare-fun b!5767732 () Bool)

(declare-fun e!3543546 () Bool)

(assert (=> b!5767732 (= e!3543546 (isEmpty!35405 (t!376974 (unfocusZipperList!1207 zl!343))))))

(declare-fun b!5767733 () Bool)

(declare-fun e!3543543 () Bool)

(declare-fun lt!2289618 () Regex!15779)

(declare-fun isUnion!704 (Regex!15779) Bool)

(assert (=> b!5767733 (= e!3543543 (isUnion!704 lt!2289618))))

(declare-fun b!5767734 () Bool)

(assert (=> b!5767734 (= e!3543543 (= lt!2289618 (head!12194 (unfocusZipperList!1207 zl!343))))))

(declare-fun b!5767735 () Bool)

(declare-fun e!3543547 () Regex!15779)

(assert (=> b!5767735 (= e!3543547 (Union!15779 (h!69960 (unfocusZipperList!1207 zl!343)) (generalisedUnion!1642 (t!376974 (unfocusZipperList!1207 zl!343)))))))

(declare-fun e!3543548 () Bool)

(assert (=> d!1817001 e!3543548))

(declare-fun res!2434014 () Bool)

(assert (=> d!1817001 (=> (not res!2434014) (not e!3543548))))

(assert (=> d!1817001 (= res!2434014 (validRegex!7515 lt!2289618))))

(declare-fun e!3543549 () Regex!15779)

(assert (=> d!1817001 (= lt!2289618 e!3543549)))

(declare-fun c!1019732 () Bool)

(assert (=> d!1817001 (= c!1019732 e!3543546)))

(declare-fun res!2434017 () Bool)

(assert (=> d!1817001 (=> (not res!2434017) (not e!3543546))))

(assert (=> d!1817001 (= res!2434017 ((_ is Cons!63512) (unfocusZipperList!1207 zl!343)))))

(assert (=> d!1817001 (forall!14897 (unfocusZipperList!1207 zl!343) lambda!313273)))

(assert (=> d!1817001 (= (generalisedUnion!1642 (unfocusZipperList!1207 zl!343)) lt!2289618)))

(declare-fun b!5767736 () Bool)

(assert (=> b!5767736 (= e!3543549 (h!69960 (unfocusZipperList!1207 zl!343)))))

(declare-fun b!5767737 () Bool)

(declare-fun e!3543550 () Bool)

(assert (=> b!5767737 (= e!3543548 e!3543550)))

(declare-fun c!1019734 () Bool)

(assert (=> b!5767737 (= c!1019734 (isEmpty!35405 (unfocusZipperList!1207 zl!343)))))

(declare-fun b!5767738 () Bool)

(assert (=> b!5767738 (= e!3543547 EmptyLang!15779)))

(declare-fun b!5767739 () Bool)

(declare-fun isEmptyLang!1274 (Regex!15779) Bool)

(assert (=> b!5767739 (= e!3543550 (isEmptyLang!1274 lt!2289618))))

(declare-fun b!5767740 () Bool)

(assert (=> b!5767740 (= e!3543550 e!3543543)))

(declare-fun c!1019733 () Bool)

(assert (=> b!5767740 (= c!1019733 (isEmpty!35405 (tail!11289 (unfocusZipperList!1207 zl!343))))))

(declare-fun b!5767741 () Bool)

(assert (=> b!5767741 (= e!3543549 e!3543547)))

(declare-fun c!1019735 () Bool)

(assert (=> b!5767741 (= c!1019735 ((_ is Cons!63512) (unfocusZipperList!1207 zl!343)))))

(assert (= (and d!1817001 res!2434017) b!5767732))

(assert (= (and d!1817001 c!1019732) b!5767736))

(assert (= (and d!1817001 (not c!1019732)) b!5767741))

(assert (= (and b!5767741 c!1019735) b!5767735))

(assert (= (and b!5767741 (not c!1019735)) b!5767738))

(assert (= (and d!1817001 res!2434014) b!5767737))

(assert (= (and b!5767737 c!1019734) b!5767739))

(assert (= (and b!5767737 (not c!1019734)) b!5767740))

(assert (= (and b!5767740 c!1019733) b!5767734))

(assert (= (and b!5767740 (not c!1019733)) b!5767733))

(declare-fun m!6713294 () Bool)

(assert (=> b!5767739 m!6713294))

(declare-fun m!6713296 () Bool)

(assert (=> b!5767735 m!6713296))

(declare-fun m!6713298 () Bool)

(assert (=> b!5767733 m!6713298))

(assert (=> b!5767737 m!6713170))

(declare-fun m!6713300 () Bool)

(assert (=> b!5767737 m!6713300))

(assert (=> b!5767740 m!6713170))

(declare-fun m!6713302 () Bool)

(assert (=> b!5767740 m!6713302))

(assert (=> b!5767740 m!6713302))

(declare-fun m!6713304 () Bool)

(assert (=> b!5767740 m!6713304))

(declare-fun m!6713306 () Bool)

(assert (=> d!1817001 m!6713306))

(assert (=> d!1817001 m!6713170))

(declare-fun m!6713308 () Bool)

(assert (=> d!1817001 m!6713308))

(declare-fun m!6713310 () Bool)

(assert (=> b!5767732 m!6713310))

(assert (=> b!5767734 m!6713170))

(declare-fun m!6713312 () Bool)

(assert (=> b!5767734 m!6713312))

(assert (=> b!5767544 d!1817001))

(declare-fun bs!1353211 () Bool)

(declare-fun d!1817007 () Bool)

(assert (= bs!1353211 (and d!1817007 d!1816989)))

(declare-fun lambda!313278 () Int)

(assert (=> bs!1353211 (= lambda!313278 lambda!313260)))

(declare-fun bs!1353212 () Bool)

(assert (= bs!1353212 (and d!1817007 d!1817001)))

(assert (=> bs!1353212 (= lambda!313278 lambda!313273)))

(declare-fun lt!2289621 () List!63636)

(assert (=> d!1817007 (forall!14897 lt!2289621 lambda!313278)))

(declare-fun e!3543560 () List!63636)

(assert (=> d!1817007 (= lt!2289621 e!3543560)))

(declare-fun c!1019742 () Bool)

(assert (=> d!1817007 (= c!1019742 ((_ is Cons!63514) zl!343))))

(assert (=> d!1817007 (= (unfocusZipperList!1207 zl!343) lt!2289621)))

(declare-fun b!5767759 () Bool)

(assert (=> b!5767759 (= e!3543560 (Cons!63512 (generalisedConcat!1394 (exprs!5663 (h!69962 zl!343))) (unfocusZipperList!1207 (t!376976 zl!343))))))

(declare-fun b!5767760 () Bool)

(assert (=> b!5767760 (= e!3543560 Nil!63512)))

(assert (= (and d!1817007 c!1019742) b!5767759))

(assert (= (and d!1817007 (not c!1019742)) b!5767760))

(declare-fun m!6713322 () Bool)

(assert (=> d!1817007 m!6713322))

(assert (=> b!5767759 m!6713176))

(declare-fun m!6713324 () Bool)

(assert (=> b!5767759 m!6713324))

(assert (=> b!5767544 d!1817007))

(declare-fun bs!1353213 () Bool)

(declare-fun d!1817011 () Bool)

(assert (= bs!1353213 (and d!1817011 d!1816989)))

(declare-fun lambda!313281 () Int)

(assert (=> bs!1353213 (= lambda!313281 lambda!313260)))

(declare-fun bs!1353214 () Bool)

(assert (= bs!1353214 (and d!1817011 d!1817001)))

(assert (=> bs!1353214 (= lambda!313281 lambda!313273)))

(declare-fun bs!1353215 () Bool)

(assert (= bs!1353215 (and d!1817011 d!1817007)))

(assert (=> bs!1353215 (= lambda!313281 lambda!313278)))

(assert (=> d!1817011 (= (inv!82694 (h!69962 zl!343)) (forall!14897 (exprs!5663 (h!69962 zl!343)) lambda!313281))))

(declare-fun bs!1353216 () Bool)

(assert (= bs!1353216 d!1817011))

(declare-fun m!6713326 () Bool)

(assert (=> bs!1353216 m!6713326))

(assert (=> b!5767546 d!1817011))

(declare-fun d!1817013 () Bool)

(declare-fun e!3543618 () Bool)

(assert (=> d!1817013 e!3543618))

(declare-fun c!1019768 () Bool)

(assert (=> d!1817013 (= c!1019768 ((_ is EmptyExpr!15779) lt!2289602))))

(declare-fun lt!2289637 () Bool)

(declare-fun e!3543617 () Bool)

(assert (=> d!1817013 (= lt!2289637 e!3543617)))

(declare-fun c!1019770 () Bool)

(declare-fun isEmpty!35408 (List!63637) Bool)

(assert (=> d!1817013 (= c!1019770 (isEmpty!35408 s!2326))))

(assert (=> d!1817013 (validRegex!7515 lt!2289602)))

(assert (=> d!1817013 (= (matchR!7964 lt!2289602 s!2326) lt!2289637)))

(declare-fun b!5767862 () Bool)

(declare-fun res!2434076 () Bool)

(declare-fun e!3543615 () Bool)

(assert (=> b!5767862 (=> res!2434076 e!3543615)))

(assert (=> b!5767862 (= res!2434076 (not ((_ is ElementMatch!15779) lt!2289602)))))

(declare-fun e!3543619 () Bool)

(assert (=> b!5767862 (= e!3543619 e!3543615)))

(declare-fun bm!443092 () Bool)

(declare-fun call!443097 () Bool)

(assert (=> bm!443092 (= call!443097 (isEmpty!35408 s!2326))))

(declare-fun b!5767863 () Bool)

(declare-fun e!3543614 () Bool)

(assert (=> b!5767863 (= e!3543615 e!3543614)))

(declare-fun res!2434078 () Bool)

(assert (=> b!5767863 (=> (not res!2434078) (not e!3543614))))

(assert (=> b!5767863 (= res!2434078 (not lt!2289637))))

(declare-fun b!5767864 () Bool)

(assert (=> b!5767864 (= e!3543618 e!3543619)))

(declare-fun c!1019769 () Bool)

(assert (=> b!5767864 (= c!1019769 ((_ is EmptyLang!15779) lt!2289602))))

(declare-fun b!5767865 () Bool)

(declare-fun res!2434074 () Bool)

(assert (=> b!5767865 (=> res!2434074 e!3543615)))

(declare-fun e!3543616 () Bool)

(assert (=> b!5767865 (= res!2434074 e!3543616)))

(declare-fun res!2434075 () Bool)

(assert (=> b!5767865 (=> (not res!2434075) (not e!3543616))))

(assert (=> b!5767865 (= res!2434075 lt!2289637)))

(declare-fun b!5767866 () Bool)

(assert (=> b!5767866 (= e!3543617 (nullable!5811 lt!2289602))))

(declare-fun b!5767867 () Bool)

(declare-fun e!3543613 () Bool)

(assert (=> b!5767867 (= e!3543614 e!3543613)))

(declare-fun res!2434077 () Bool)

(assert (=> b!5767867 (=> res!2434077 e!3543613)))

(assert (=> b!5767867 (= res!2434077 call!443097)))

(declare-fun b!5767868 () Bool)

(assert (=> b!5767868 (= e!3543618 (= lt!2289637 call!443097))))

(declare-fun b!5767869 () Bool)

(declare-fun res!2434080 () Bool)

(assert (=> b!5767869 (=> (not res!2434080) (not e!3543616))))

(assert (=> b!5767869 (= res!2434080 (not call!443097))))

(declare-fun b!5767870 () Bool)

(assert (=> b!5767870 (= e!3543619 (not lt!2289637))))

(declare-fun b!5767871 () Bool)

(declare-fun head!12195 (List!63637) C!31828)

(assert (=> b!5767871 (= e!3543613 (not (= (head!12195 s!2326) (c!1019677 lt!2289602))))))

(declare-fun b!5767872 () Bool)

(assert (=> b!5767872 (= e!3543616 (= (head!12195 s!2326) (c!1019677 lt!2289602)))))

(declare-fun b!5767873 () Bool)

(declare-fun res!2434079 () Bool)

(assert (=> b!5767873 (=> res!2434079 e!3543613)))

(declare-fun tail!11290 (List!63637) List!63637)

(assert (=> b!5767873 (= res!2434079 (not (isEmpty!35408 (tail!11290 s!2326))))))

(declare-fun b!5767874 () Bool)

(declare-fun derivativeStep!4560 (Regex!15779 C!31828) Regex!15779)

(assert (=> b!5767874 (= e!3543617 (matchR!7964 (derivativeStep!4560 lt!2289602 (head!12195 s!2326)) (tail!11290 s!2326)))))

(declare-fun b!5767875 () Bool)

(declare-fun res!2434081 () Bool)

(assert (=> b!5767875 (=> (not res!2434081) (not e!3543616))))

(assert (=> b!5767875 (= res!2434081 (isEmpty!35408 (tail!11290 s!2326)))))

(assert (= (and d!1817013 c!1019770) b!5767866))

(assert (= (and d!1817013 (not c!1019770)) b!5767874))

(assert (= (and d!1817013 c!1019768) b!5767868))

(assert (= (and d!1817013 (not c!1019768)) b!5767864))

(assert (= (and b!5767864 c!1019769) b!5767870))

(assert (= (and b!5767864 (not c!1019769)) b!5767862))

(assert (= (and b!5767862 (not res!2434076)) b!5767865))

(assert (= (and b!5767865 res!2434075) b!5767869))

(assert (= (and b!5767869 res!2434080) b!5767875))

(assert (= (and b!5767875 res!2434081) b!5767872))

(assert (= (and b!5767865 (not res!2434074)) b!5767863))

(assert (= (and b!5767863 res!2434078) b!5767867))

(assert (= (and b!5767867 (not res!2434077)) b!5767873))

(assert (= (and b!5767873 (not res!2434079)) b!5767871))

(assert (= (or b!5767868 b!5767867 b!5767869) bm!443092))

(declare-fun m!6713396 () Bool)

(assert (=> b!5767866 m!6713396))

(declare-fun m!6713398 () Bool)

(assert (=> b!5767871 m!6713398))

(assert (=> b!5767872 m!6713398))

(declare-fun m!6713400 () Bool)

(assert (=> bm!443092 m!6713400))

(assert (=> d!1817013 m!6713400))

(declare-fun m!6713402 () Bool)

(assert (=> d!1817013 m!6713402))

(assert (=> b!5767874 m!6713398))

(assert (=> b!5767874 m!6713398))

(declare-fun m!6713404 () Bool)

(assert (=> b!5767874 m!6713404))

(declare-fun m!6713406 () Bool)

(assert (=> b!5767874 m!6713406))

(assert (=> b!5767874 m!6713404))

(assert (=> b!5767874 m!6713406))

(declare-fun m!6713408 () Bool)

(assert (=> b!5767874 m!6713408))

(assert (=> b!5767875 m!6713406))

(assert (=> b!5767875 m!6713406))

(declare-fun m!6713410 () Bool)

(assert (=> b!5767875 m!6713410))

(assert (=> b!5767873 m!6713406))

(assert (=> b!5767873 m!6713406))

(assert (=> b!5767873 m!6713410))

(assert (=> b!5767568 d!1817013))

(declare-fun d!1817043 () Bool)

(declare-fun c!1019789 () Bool)

(assert (=> d!1817043 (= c!1019789 (isEmpty!35408 s!2326))))

(declare-fun e!3543650 () Bool)

(assert (=> d!1817043 (= (matchZipper!1917 lt!2289591 s!2326) e!3543650)))

(declare-fun b!5767928 () Bool)

(declare-fun nullableZipper!1706 ((InoxSet Context!10326)) Bool)

(assert (=> b!5767928 (= e!3543650 (nullableZipper!1706 lt!2289591))))

(declare-fun b!5767929 () Bool)

(assert (=> b!5767929 (= e!3543650 (matchZipper!1917 (derivationStepZipper!1858 lt!2289591 (head!12195 s!2326)) (tail!11290 s!2326)))))

(assert (= (and d!1817043 c!1019789) b!5767928))

(assert (= (and d!1817043 (not c!1019789)) b!5767929))

(assert (=> d!1817043 m!6713400))

(declare-fun m!6713454 () Bool)

(assert (=> b!5767928 m!6713454))

(assert (=> b!5767929 m!6713398))

(assert (=> b!5767929 m!6713398))

(declare-fun m!6713456 () Bool)

(assert (=> b!5767929 m!6713456))

(assert (=> b!5767929 m!6713406))

(assert (=> b!5767929 m!6713456))

(assert (=> b!5767929 m!6713406))

(declare-fun m!6713458 () Bool)

(assert (=> b!5767929 m!6713458))

(assert (=> b!5767568 d!1817043))

(declare-fun d!1817057 () Bool)

(assert (=> d!1817057 (= (matchR!7964 lt!2289602 s!2326) (matchZipper!1917 lt!2289591 s!2326))))

(declare-fun lt!2289651 () Unit!156648)

(declare-fun choose!43745 ((InoxSet Context!10326) List!63638 Regex!15779 List!63637) Unit!156648)

(assert (=> d!1817057 (= lt!2289651 (choose!43745 lt!2289591 (Cons!63514 lt!2289585 Nil!63514) lt!2289602 s!2326))))

(assert (=> d!1817057 (validRegex!7515 lt!2289602)))

(assert (=> d!1817057 (= (theoremZipperRegexEquiv!677 lt!2289591 (Cons!63514 lt!2289585 Nil!63514) lt!2289602 s!2326) lt!2289651)))

(declare-fun bs!1353248 () Bool)

(assert (= bs!1353248 d!1817057))

(assert (=> bs!1353248 m!6713162))

(assert (=> bs!1353248 m!6713164))

(declare-fun m!6713476 () Bool)

(assert (=> bs!1353248 m!6713476))

(assert (=> bs!1353248 m!6713402))

(assert (=> b!5767568 d!1817057))

(declare-fun bs!1353249 () Bool)

(declare-fun d!1817065 () Bool)

(assert (= bs!1353249 (and d!1817065 d!1816989)))

(declare-fun lambda!313291 () Int)

(assert (=> bs!1353249 (= lambda!313291 lambda!313260)))

(declare-fun bs!1353250 () Bool)

(assert (= bs!1353250 (and d!1817065 d!1817001)))

(assert (=> bs!1353250 (= lambda!313291 lambda!313273)))

(declare-fun bs!1353251 () Bool)

(assert (= bs!1353251 (and d!1817065 d!1817007)))

(assert (=> bs!1353251 (= lambda!313291 lambda!313278)))

(declare-fun bs!1353252 () Bool)

(assert (= bs!1353252 (and d!1817065 d!1817011)))

(assert (=> bs!1353252 (= lambda!313291 lambda!313281)))

(declare-fun b!5767966 () Bool)

(declare-fun e!3543674 () Bool)

(declare-fun lt!2289652 () Regex!15779)

(assert (=> b!5767966 (= e!3543674 (isEmptyExpr!1265 lt!2289652))))

(declare-fun b!5767967 () Bool)

(declare-fun e!3543671 () Regex!15779)

(assert (=> b!5767967 (= e!3543671 (h!69960 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun e!3543673 () Bool)

(assert (=> d!1817065 e!3543673))

(declare-fun res!2434109 () Bool)

(assert (=> d!1817065 (=> (not res!2434109) (not e!3543673))))

(assert (=> d!1817065 (= res!2434109 (validRegex!7515 lt!2289652))))

(assert (=> d!1817065 (= lt!2289652 e!3543671)))

(declare-fun c!1019805 () Bool)

(declare-fun e!3543675 () Bool)

(assert (=> d!1817065 (= c!1019805 e!3543675)))

(declare-fun res!2434108 () Bool)

(assert (=> d!1817065 (=> (not res!2434108) (not e!3543675))))

(assert (=> d!1817065 (= res!2434108 ((_ is Cons!63512) (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(assert (=> d!1817065 (forall!14897 (t!376974 (exprs!5663 (h!69962 zl!343))) lambda!313291)))

(assert (=> d!1817065 (= (generalisedConcat!1394 (t!376974 (exprs!5663 (h!69962 zl!343)))) lt!2289652)))

(declare-fun b!5767968 () Bool)

(declare-fun e!3543672 () Bool)

(assert (=> b!5767968 (= e!3543672 (isConcat!788 lt!2289652))))

(declare-fun b!5767969 () Bool)

(declare-fun e!3543670 () Regex!15779)

(assert (=> b!5767969 (= e!3543670 EmptyExpr!15779)))

(declare-fun b!5767970 () Bool)

(assert (=> b!5767970 (= e!3543670 (Concat!24624 (h!69960 (t!376974 (exprs!5663 (h!69962 zl!343)))) (generalisedConcat!1394 (t!376974 (t!376974 (exprs!5663 (h!69962 zl!343)))))))))

(declare-fun b!5767971 () Bool)

(assert (=> b!5767971 (= e!3543673 e!3543674)))

(declare-fun c!1019803 () Bool)

(assert (=> b!5767971 (= c!1019803 (isEmpty!35405 (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767972 () Bool)

(assert (=> b!5767972 (= e!3543671 e!3543670)))

(declare-fun c!1019804 () Bool)

(assert (=> b!5767972 (= c!1019804 ((_ is Cons!63512) (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5767973 () Bool)

(assert (=> b!5767973 (= e!3543675 (isEmpty!35405 (t!376974 (t!376974 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun b!5767974 () Bool)

(assert (=> b!5767974 (= e!3543674 e!3543672)))

(declare-fun c!1019806 () Bool)

(assert (=> b!5767974 (= c!1019806 (isEmpty!35405 (tail!11289 (t!376974 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun b!5767975 () Bool)

(assert (=> b!5767975 (= e!3543672 (= lt!2289652 (head!12194 (t!376974 (exprs!5663 (h!69962 zl!343))))))))

(assert (= (and d!1817065 res!2434108) b!5767973))

(assert (= (and d!1817065 c!1019805) b!5767967))

(assert (= (and d!1817065 (not c!1019805)) b!5767972))

(assert (= (and b!5767972 c!1019804) b!5767970))

(assert (= (and b!5767972 (not c!1019804)) b!5767969))

(assert (= (and d!1817065 res!2434109) b!5767971))

(assert (= (and b!5767971 c!1019803) b!5767966))

(assert (= (and b!5767971 (not c!1019803)) b!5767974))

(assert (= (and b!5767974 c!1019806) b!5767975))

(assert (= (and b!5767974 (not c!1019806)) b!5767968))

(declare-fun m!6713478 () Bool)

(assert (=> b!5767966 m!6713478))

(declare-fun m!6713480 () Bool)

(assert (=> b!5767968 m!6713480))

(assert (=> b!5767971 m!6713158))

(declare-fun m!6713482 () Bool)

(assert (=> b!5767974 m!6713482))

(assert (=> b!5767974 m!6713482))

(declare-fun m!6713484 () Bool)

(assert (=> b!5767974 m!6713484))

(declare-fun m!6713486 () Bool)

(assert (=> b!5767970 m!6713486))

(declare-fun m!6713488 () Bool)

(assert (=> b!5767975 m!6713488))

(declare-fun m!6713490 () Bool)

(assert (=> d!1817065 m!6713490))

(declare-fun m!6713492 () Bool)

(assert (=> d!1817065 m!6713492))

(declare-fun m!6713494 () Bool)

(assert (=> b!5767973 m!6713494))

(assert (=> b!5767568 d!1817065))

(declare-fun d!1817067 () Bool)

(declare-fun e!3543690 () Bool)

(assert (=> d!1817067 (= (matchZipper!1917 ((_ map or) lt!2289596 lt!2289590) (t!376975 s!2326)) e!3543690)))

(declare-fun res!2434115 () Bool)

(assert (=> d!1817067 (=> res!2434115 e!3543690)))

(assert (=> d!1817067 (= res!2434115 (matchZipper!1917 lt!2289596 (t!376975 s!2326)))))

(declare-fun lt!2289656 () Unit!156648)

(declare-fun choose!43746 ((InoxSet Context!10326) (InoxSet Context!10326) List!63637) Unit!156648)

(assert (=> d!1817067 (= lt!2289656 (choose!43746 lt!2289596 lt!2289590 (t!376975 s!2326)))))

(assert (=> d!1817067 (= (lemmaZipperConcatMatchesSameAsBothZippers!804 lt!2289596 lt!2289590 (t!376975 s!2326)) lt!2289656)))

(declare-fun b!5767999 () Bool)

(assert (=> b!5767999 (= e!3543690 (matchZipper!1917 lt!2289590 (t!376975 s!2326)))))

(assert (= (and d!1817067 (not res!2434115)) b!5767999))

(assert (=> d!1817067 m!6713234))

(assert (=> d!1817067 m!6713154))

(declare-fun m!6713524 () Bool)

(assert (=> d!1817067 m!6713524))

(assert (=> b!5767999 m!6713148))

(assert (=> b!5767558 d!1817067))

(declare-fun d!1817081 () Bool)

(declare-fun c!1019816 () Bool)

(assert (=> d!1817081 (= c!1019816 (isEmpty!35408 (t!376975 s!2326)))))

(declare-fun e!3543691 () Bool)

(assert (=> d!1817081 (= (matchZipper!1917 lt!2289596 (t!376975 s!2326)) e!3543691)))

(declare-fun b!5768000 () Bool)

(assert (=> b!5768000 (= e!3543691 (nullableZipper!1706 lt!2289596))))

(declare-fun b!5768001 () Bool)

(assert (=> b!5768001 (= e!3543691 (matchZipper!1917 (derivationStepZipper!1858 lt!2289596 (head!12195 (t!376975 s!2326))) (tail!11290 (t!376975 s!2326))))))

(assert (= (and d!1817081 c!1019816) b!5768000))

(assert (= (and d!1817081 (not c!1019816)) b!5768001))

(declare-fun m!6713526 () Bool)

(assert (=> d!1817081 m!6713526))

(declare-fun m!6713528 () Bool)

(assert (=> b!5768000 m!6713528))

(declare-fun m!6713530 () Bool)

(assert (=> b!5768001 m!6713530))

(assert (=> b!5768001 m!6713530))

(declare-fun m!6713532 () Bool)

(assert (=> b!5768001 m!6713532))

(declare-fun m!6713534 () Bool)

(assert (=> b!5768001 m!6713534))

(assert (=> b!5768001 m!6713532))

(assert (=> b!5768001 m!6713534))

(declare-fun m!6713536 () Bool)

(assert (=> b!5768001 m!6713536))

(assert (=> b!5767558 d!1817081))

(declare-fun d!1817083 () Bool)

(declare-fun c!1019817 () Bool)

(assert (=> d!1817083 (= c!1019817 (isEmpty!35408 (t!376975 s!2326)))))

(declare-fun e!3543692 () Bool)

(assert (=> d!1817083 (= (matchZipper!1917 ((_ map or) lt!2289596 lt!2289590) (t!376975 s!2326)) e!3543692)))

(declare-fun b!5768002 () Bool)

(assert (=> b!5768002 (= e!3543692 (nullableZipper!1706 ((_ map or) lt!2289596 lt!2289590)))))

(declare-fun b!5768003 () Bool)

(assert (=> b!5768003 (= e!3543692 (matchZipper!1917 (derivationStepZipper!1858 ((_ map or) lt!2289596 lt!2289590) (head!12195 (t!376975 s!2326))) (tail!11290 (t!376975 s!2326))))))

(assert (= (and d!1817083 c!1019817) b!5768002))

(assert (= (and d!1817083 (not c!1019817)) b!5768003))

(assert (=> d!1817083 m!6713526))

(declare-fun m!6713538 () Bool)

(assert (=> b!5768002 m!6713538))

(assert (=> b!5768003 m!6713530))

(assert (=> b!5768003 m!6713530))

(declare-fun m!6713540 () Bool)

(assert (=> b!5768003 m!6713540))

(assert (=> b!5768003 m!6713534))

(assert (=> b!5768003 m!6713540))

(assert (=> b!5768003 m!6713534))

(declare-fun m!6713542 () Bool)

(assert (=> b!5768003 m!6713542))

(assert (=> b!5767558 d!1817083))

(declare-fun c!1019837 () Bool)

(declare-fun call!443141 () List!63636)

(declare-fun c!1019836 () Bool)

(declare-fun call!443138 () (InoxSet Context!10326))

(declare-fun bm!443131 () Bool)

(declare-fun c!1019835 () Bool)

(assert (=> bm!443131 (= call!443138 (derivationStepZipperDown!1121 (ite c!1019835 (regTwo!32071 (h!69960 (exprs!5663 (h!69962 zl!343)))) (ite c!1019836 (regTwo!32070 (h!69960 (exprs!5663 (h!69962 zl!343)))) (ite c!1019837 (regOne!32070 (h!69960 (exprs!5663 (h!69962 zl!343)))) (reg!16108 (h!69960 (exprs!5663 (h!69962 zl!343))))))) (ite (or c!1019835 c!1019836) lt!2289585 (Context!10327 call!443141)) (h!69961 s!2326)))))

(declare-fun bm!443132 () Bool)

(declare-fun call!443140 () (InoxSet Context!10326))

(declare-fun call!443136 () List!63636)

(assert (=> bm!443132 (= call!443140 (derivationStepZipperDown!1121 (ite c!1019835 (regOne!32071 (h!69960 (exprs!5663 (h!69962 zl!343)))) (regOne!32070 (h!69960 (exprs!5663 (h!69962 zl!343))))) (ite c!1019835 lt!2289585 (Context!10327 call!443136)) (h!69961 s!2326)))))

(declare-fun b!5768057 () Bool)

(declare-fun e!3543723 () (InoxSet Context!10326))

(assert (=> b!5768057 (= e!3543723 (store ((as const (Array Context!10326 Bool)) false) lt!2289585 true))))

(declare-fun b!5768058 () Bool)

(declare-fun e!3543724 () (InoxSet Context!10326))

(declare-fun e!3543726 () (InoxSet Context!10326))

(assert (=> b!5768058 (= e!3543724 e!3543726)))

(assert (=> b!5768058 (= c!1019837 ((_ is Concat!24624) (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun bm!443133 () Bool)

(declare-fun call!443137 () (InoxSet Context!10326))

(declare-fun call!443139 () (InoxSet Context!10326))

(assert (=> bm!443133 (= call!443137 call!443139)))

(declare-fun b!5768059 () Bool)

(assert (=> b!5768059 (= e!3543724 ((_ map or) call!443140 call!443139))))

(declare-fun bm!443134 () Bool)

(declare-fun $colon$colon!1773 (List!63636 Regex!15779) List!63636)

(assert (=> bm!443134 (= call!443136 ($colon$colon!1773 (exprs!5663 lt!2289585) (ite (or c!1019836 c!1019837) (regTwo!32070 (h!69960 (exprs!5663 (h!69962 zl!343)))) (h!69960 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun d!1817085 () Bool)

(declare-fun c!1019838 () Bool)

(assert (=> d!1817085 (= c!1019838 (and ((_ is ElementMatch!15779) (h!69960 (exprs!5663 (h!69962 zl!343)))) (= (c!1019677 (h!69960 (exprs!5663 (h!69962 zl!343)))) (h!69961 s!2326))))))

(assert (=> d!1817085 (= (derivationStepZipperDown!1121 (h!69960 (exprs!5663 (h!69962 zl!343))) lt!2289585 (h!69961 s!2326)) e!3543723)))

(declare-fun bm!443135 () Bool)

(assert (=> bm!443135 (= call!443141 call!443136)))

(declare-fun b!5768060 () Bool)

(assert (=> b!5768060 (= e!3543726 call!443137)))

(declare-fun b!5768061 () Bool)

(declare-fun e!3543725 () Bool)

(assert (=> b!5768061 (= c!1019836 e!3543725)))

(declare-fun res!2434137 () Bool)

(assert (=> b!5768061 (=> (not res!2434137) (not e!3543725))))

(assert (=> b!5768061 (= res!2434137 ((_ is Concat!24624) (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun e!3543727 () (InoxSet Context!10326))

(assert (=> b!5768061 (= e!3543727 e!3543724)))

(declare-fun b!5768062 () Bool)

(assert (=> b!5768062 (= e!3543725 (nullable!5811 (regOne!32070 (h!69960 (exprs!5663 (h!69962 zl!343))))))))

(declare-fun b!5768063 () Bool)

(assert (=> b!5768063 (= e!3543727 ((_ map or) call!443140 call!443138))))

(declare-fun bm!443136 () Bool)

(assert (=> bm!443136 (= call!443139 call!443138)))

(declare-fun b!5768064 () Bool)

(assert (=> b!5768064 (= e!3543723 e!3543727)))

(assert (=> b!5768064 (= c!1019835 ((_ is Union!15779) (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun b!5768065 () Bool)

(declare-fun e!3543722 () (InoxSet Context!10326))

(assert (=> b!5768065 (= e!3543722 ((as const (Array Context!10326 Bool)) false))))

(declare-fun b!5768066 () Bool)

(assert (=> b!5768066 (= e!3543722 call!443137)))

(declare-fun b!5768067 () Bool)

(declare-fun c!1019834 () Bool)

(assert (=> b!5768067 (= c!1019834 ((_ is Star!15779) (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(assert (=> b!5768067 (= e!3543726 e!3543722)))

(assert (= (and d!1817085 c!1019838) b!5768057))

(assert (= (and d!1817085 (not c!1019838)) b!5768064))

(assert (= (and b!5768064 c!1019835) b!5768063))

(assert (= (and b!5768064 (not c!1019835)) b!5768061))

(assert (= (and b!5768061 res!2434137) b!5768062))

(assert (= (and b!5768061 c!1019836) b!5768059))

(assert (= (and b!5768061 (not c!1019836)) b!5768058))

(assert (= (and b!5768058 c!1019837) b!5768060))

(assert (= (and b!5768058 (not c!1019837)) b!5768067))

(assert (= (and b!5768067 c!1019834) b!5768066))

(assert (= (and b!5768067 (not c!1019834)) b!5768065))

(assert (= (or b!5768060 b!5768066) bm!443135))

(assert (= (or b!5768060 b!5768066) bm!443133))

(assert (= (or b!5768059 bm!443135) bm!443134))

(assert (= (or b!5768059 bm!443133) bm!443136))

(assert (= (or b!5768063 bm!443136) bm!443131))

(assert (= (or b!5768063 b!5768059) bm!443132))

(declare-fun m!6713572 () Bool)

(assert (=> bm!443131 m!6713572))

(assert (=> b!5768057 m!6713210))

(declare-fun m!6713574 () Bool)

(assert (=> b!5768062 m!6713574))

(declare-fun m!6713576 () Bool)

(assert (=> bm!443134 m!6713576))

(declare-fun m!6713578 () Bool)

(assert (=> bm!443132 m!6713578))

(assert (=> b!5767549 d!1817085))

(declare-fun b!5768086 () Bool)

(declare-fun e!3543738 () (InoxSet Context!10326))

(declare-fun call!443144 () (InoxSet Context!10326))

(assert (=> b!5768086 (= e!3543738 call!443144)))

(declare-fun b!5768087 () Bool)

(declare-fun e!3543739 () Bool)

(assert (=> b!5768087 (= e!3543739 (nullable!5811 (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun bm!443139 () Bool)

(assert (=> bm!443139 (= call!443144 (derivationStepZipperDown!1121 (h!69960 (exprs!5663 (h!69962 zl!343))) (Context!10327 (t!376974 (exprs!5663 (h!69962 zl!343)))) (h!69961 s!2326)))))

(declare-fun b!5768088 () Bool)

(declare-fun e!3543740 () (InoxSet Context!10326))

(assert (=> b!5768088 (= e!3543740 e!3543738)))

(declare-fun c!1019843 () Bool)

(assert (=> b!5768088 (= c!1019843 ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343))))))

(declare-fun b!5768089 () Bool)

(assert (=> b!5768089 (= e!3543740 ((_ map or) call!443144 (derivationStepZipperUp!1047 (Context!10327 (t!376974 (exprs!5663 (h!69962 zl!343)))) (h!69961 s!2326))))))

(declare-fun d!1817095 () Bool)

(declare-fun c!1019844 () Bool)

(assert (=> d!1817095 (= c!1019844 e!3543739)))

(declare-fun res!2434148 () Bool)

(assert (=> d!1817095 (=> (not res!2434148) (not e!3543739))))

(assert (=> d!1817095 (= res!2434148 ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343))))))

(assert (=> d!1817095 (= (derivationStepZipperUp!1047 (h!69962 zl!343) (h!69961 s!2326)) e!3543740)))

(declare-fun b!5768090 () Bool)

(assert (=> b!5768090 (= e!3543738 ((as const (Array Context!10326 Bool)) false))))

(assert (= (and d!1817095 res!2434148) b!5768087))

(assert (= (and d!1817095 c!1019844) b!5768089))

(assert (= (and d!1817095 (not c!1019844)) b!5768088))

(assert (= (and b!5768088 c!1019843) b!5768086))

(assert (= (and b!5768088 (not c!1019843)) b!5768090))

(assert (= (or b!5768089 b!5768086) bm!443139))

(assert (=> b!5768087 m!6713230))

(declare-fun m!6713580 () Bool)

(assert (=> bm!443139 m!6713580))

(declare-fun m!6713582 () Bool)

(assert (=> b!5768089 m!6713582))

(assert (=> b!5767549 d!1817095))

(declare-fun b!5768091 () Bool)

(declare-fun e!3543741 () (InoxSet Context!10326))

(declare-fun call!443145 () (InoxSet Context!10326))

(assert (=> b!5768091 (= e!3543741 call!443145)))

(declare-fun b!5768092 () Bool)

(declare-fun e!3543742 () Bool)

(assert (=> b!5768092 (= e!3543742 (nullable!5811 (h!69960 (exprs!5663 lt!2289585))))))

(declare-fun bm!443140 () Bool)

(assert (=> bm!443140 (= call!443145 (derivationStepZipperDown!1121 (h!69960 (exprs!5663 lt!2289585)) (Context!10327 (t!376974 (exprs!5663 lt!2289585))) (h!69961 s!2326)))))

(declare-fun b!5768093 () Bool)

(declare-fun e!3543743 () (InoxSet Context!10326))

(assert (=> b!5768093 (= e!3543743 e!3543741)))

(declare-fun c!1019845 () Bool)

(assert (=> b!5768093 (= c!1019845 ((_ is Cons!63512) (exprs!5663 lt!2289585)))))

(declare-fun b!5768094 () Bool)

(assert (=> b!5768094 (= e!3543743 ((_ map or) call!443145 (derivationStepZipperUp!1047 (Context!10327 (t!376974 (exprs!5663 lt!2289585))) (h!69961 s!2326))))))

(declare-fun d!1817097 () Bool)

(declare-fun c!1019846 () Bool)

(assert (=> d!1817097 (= c!1019846 e!3543742)))

(declare-fun res!2434149 () Bool)

(assert (=> d!1817097 (=> (not res!2434149) (not e!3543742))))

(assert (=> d!1817097 (= res!2434149 ((_ is Cons!63512) (exprs!5663 lt!2289585)))))

(assert (=> d!1817097 (= (derivationStepZipperUp!1047 lt!2289585 (h!69961 s!2326)) e!3543743)))

(declare-fun b!5768095 () Bool)

(assert (=> b!5768095 (= e!3543741 ((as const (Array Context!10326 Bool)) false))))

(assert (= (and d!1817097 res!2434149) b!5768092))

(assert (= (and d!1817097 c!1019846) b!5768094))

(assert (= (and d!1817097 (not c!1019846)) b!5768093))

(assert (= (and b!5768093 c!1019845) b!5768091))

(assert (= (and b!5768093 (not c!1019845)) b!5768095))

(assert (= (or b!5768094 b!5768091) bm!443140))

(declare-fun m!6713584 () Bool)

(assert (=> b!5768092 m!6713584))

(declare-fun m!6713586 () Bool)

(assert (=> bm!443140 m!6713586))

(declare-fun m!6713588 () Bool)

(assert (=> b!5768094 m!6713588))

(assert (=> b!5767549 d!1817097))

(declare-fun d!1817099 () Bool)

(declare-fun choose!43747 ((InoxSet Context!10326) Int) (InoxSet Context!10326))

(assert (=> d!1817099 (= (flatMap!1392 z!1189 lambda!313257) (choose!43747 z!1189 lambda!313257))))

(declare-fun bs!1353275 () Bool)

(assert (= bs!1353275 d!1817099))

(declare-fun m!6713590 () Bool)

(assert (=> bs!1353275 m!6713590))

(assert (=> b!5767549 d!1817099))

(declare-fun d!1817101 () Bool)

(declare-fun nullableFct!1851 (Regex!15779) Bool)

(assert (=> d!1817101 (= (nullable!5811 (h!69960 (exprs!5663 (h!69962 zl!343)))) (nullableFct!1851 (h!69960 (exprs!5663 (h!69962 zl!343)))))))

(declare-fun bs!1353276 () Bool)

(assert (= bs!1353276 d!1817101))

(declare-fun m!6713598 () Bool)

(assert (=> bs!1353276 m!6713598))

(assert (=> b!5767549 d!1817101))

(declare-fun d!1817105 () Bool)

(declare-fun dynLambda!24865 (Int Context!10326) (InoxSet Context!10326))

(assert (=> d!1817105 (= (flatMap!1392 z!1189 lambda!313257) (dynLambda!24865 lambda!313257 (h!69962 zl!343)))))

(declare-fun lt!2289677 () Unit!156648)

(declare-fun choose!43748 ((InoxSet Context!10326) Context!10326 Int) Unit!156648)

(assert (=> d!1817105 (= lt!2289677 (choose!43748 z!1189 (h!69962 zl!343) lambda!313257))))

(assert (=> d!1817105 (= z!1189 (store ((as const (Array Context!10326 Bool)) false) (h!69962 zl!343) true))))

(assert (=> d!1817105 (= (lemmaFlatMapOnSingletonSet!924 z!1189 (h!69962 zl!343) lambda!313257) lt!2289677)))

(declare-fun b_lambda!217731 () Bool)

(assert (=> (not b_lambda!217731) (not d!1817105)))

(declare-fun bs!1353283 () Bool)

(assert (= bs!1353283 d!1817105))

(assert (=> bs!1353283 m!6713224))

(declare-fun m!6713612 () Bool)

(assert (=> bs!1353283 m!6713612))

(declare-fun m!6713614 () Bool)

(assert (=> bs!1353283 m!6713614))

(declare-fun m!6713616 () Bool)

(assert (=> bs!1353283 m!6713616))

(assert (=> b!5767549 d!1817105))

(declare-fun b!5768099 () Bool)

(declare-fun e!3543747 () (InoxSet Context!10326))

(declare-fun call!443146 () (InoxSet Context!10326))

(assert (=> b!5768099 (= e!3543747 call!443146)))

(declare-fun b!5768100 () Bool)

(declare-fun e!3543748 () Bool)

(assert (=> b!5768100 (= e!3543748 (nullable!5811 (h!69960 (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343)))))))))))

(declare-fun bm!443141 () Bool)

(assert (=> bm!443141 (= call!443146 (derivationStepZipperDown!1121 (h!69960 (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343))))))) (Context!10327 (t!376974 (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343)))))))) (h!69961 s!2326)))))

(declare-fun b!5768101 () Bool)

(declare-fun e!3543749 () (InoxSet Context!10326))

(assert (=> b!5768101 (= e!3543749 e!3543747)))

(declare-fun c!1019847 () Bool)

(assert (=> b!5768101 (= c!1019847 ((_ is Cons!63512) (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343))))))))))

(declare-fun b!5768102 () Bool)

(assert (=> b!5768102 (= e!3543749 ((_ map or) call!443146 (derivationStepZipperUp!1047 (Context!10327 (t!376974 (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343)))))))) (h!69961 s!2326))))))

(declare-fun d!1817117 () Bool)

(declare-fun c!1019848 () Bool)

(assert (=> d!1817117 (= c!1019848 e!3543748)))

(declare-fun res!2434153 () Bool)

(assert (=> d!1817117 (=> (not res!2434153) (not e!3543748))))

(assert (=> d!1817117 (= res!2434153 ((_ is Cons!63512) (exprs!5663 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343))))))))))

(assert (=> d!1817117 (= (derivationStepZipperUp!1047 (Context!10327 (Cons!63512 (h!69960 (exprs!5663 (h!69962 zl!343))) (t!376974 (exprs!5663 (h!69962 zl!343))))) (h!69961 s!2326)) e!3543749)))

(declare-fun b!5768103 () Bool)

(assert (=> b!5768103 (= e!3543747 ((as const (Array Context!10326 Bool)) false))))

(assert (= (and d!1817117 res!2434153) b!5768100))

(assert (= (and d!1817117 c!1019848) b!5768102))

(assert (= (and d!1817117 (not c!1019848)) b!5768101))

(assert (= (and b!5768101 c!1019847) b!5768099))

(assert (= (and b!5768101 (not c!1019847)) b!5768103))

(assert (= (or b!5768102 b!5768099) bm!443141))

(declare-fun m!6713618 () Bool)

(assert (=> b!5768100 m!6713618))

(declare-fun m!6713620 () Bool)

(assert (=> bm!443141 m!6713620))

(declare-fun m!6713622 () Bool)

(assert (=> b!5768102 m!6713622))

(assert (=> b!5767549 d!1817117))

(declare-fun bs!1353284 () Bool)

(declare-fun d!1817119 () Bool)

(assert (= bs!1353284 (and d!1817119 b!5767549)))

(declare-fun lambda!313304 () Int)

(assert (=> bs!1353284 (= lambda!313304 lambda!313257)))

(assert (=> d!1817119 true))

(assert (=> d!1817119 (= (derivationStepZipper!1858 z!1189 (h!69961 s!2326)) (flatMap!1392 z!1189 lambda!313304))))

(declare-fun bs!1353285 () Bool)

(assert (= bs!1353285 d!1817119))

(declare-fun m!6713630 () Bool)

(assert (=> bs!1353285 m!6713630))

(assert (=> b!5767569 d!1817119))

(declare-fun bs!1353295 () Bool)

(declare-fun b!5768231 () Bool)

(assert (= bs!1353295 (and b!5768231 b!5767564)))

(declare-fun lambda!313315 () Int)

(assert (=> bs!1353295 (not (= lambda!313315 lambda!313255))))

(assert (=> bs!1353295 (not (= lambda!313315 lambda!313256))))

(assert (=> b!5768231 true))

(assert (=> b!5768231 true))

(declare-fun bs!1353296 () Bool)

(declare-fun b!5768229 () Bool)

(assert (= bs!1353296 (and b!5768229 b!5767564)))

(declare-fun lambda!313316 () Int)

(assert (=> bs!1353296 (not (= lambda!313316 lambda!313255))))

(assert (=> bs!1353296 (= lambda!313316 lambda!313256)))

(declare-fun bs!1353297 () Bool)

(assert (= bs!1353297 (and b!5768229 b!5768231)))

(assert (=> bs!1353297 (not (= lambda!313316 lambda!313315))))

(assert (=> b!5768229 true))

(assert (=> b!5768229 true))

(declare-fun e!3543825 () Bool)

(declare-fun call!443160 () Bool)

(assert (=> b!5768229 (= e!3543825 call!443160)))

(declare-fun d!1817123 () Bool)

(declare-fun c!1019883 () Bool)

(assert (=> d!1817123 (= c!1019883 ((_ is EmptyExpr!15779) r!7292))))

(declare-fun e!3543823 () Bool)

(assert (=> d!1817123 (= (matchRSpec!2882 r!7292 s!2326) e!3543823)))

(declare-fun b!5768230 () Bool)

(declare-fun e!3543826 () Bool)

(assert (=> b!5768230 (= e!3543826 (matchRSpec!2882 (regTwo!32071 r!7292) s!2326))))

(declare-fun e!3543822 () Bool)

(assert (=> b!5768231 (= e!3543822 call!443160)))

(declare-fun b!5768232 () Bool)

(declare-fun c!1019881 () Bool)

(assert (=> b!5768232 (= c!1019881 ((_ is Union!15779) r!7292))))

(declare-fun e!3543820 () Bool)

(declare-fun e!3543824 () Bool)

(assert (=> b!5768232 (= e!3543820 e!3543824)))

(declare-fun b!5768233 () Bool)

(assert (=> b!5768233 (= e!3543824 e!3543825)))

(declare-fun c!1019882 () Bool)

(assert (=> b!5768233 (= c!1019882 ((_ is Star!15779) r!7292))))

(declare-fun b!5768234 () Bool)

(assert (=> b!5768234 (= e!3543824 e!3543826)))

(declare-fun res!2434192 () Bool)

(assert (=> b!5768234 (= res!2434192 (matchRSpec!2882 (regOne!32071 r!7292) s!2326))))

(assert (=> b!5768234 (=> res!2434192 e!3543826)))

(declare-fun b!5768235 () Bool)

(assert (=> b!5768235 (= e!3543820 (= s!2326 (Cons!63513 (c!1019677 r!7292) Nil!63513)))))

(declare-fun b!5768236 () Bool)

(declare-fun e!3543821 () Bool)

(assert (=> b!5768236 (= e!3543823 e!3543821)))

(declare-fun res!2434193 () Bool)

(assert (=> b!5768236 (= res!2434193 (not ((_ is EmptyLang!15779) r!7292)))))

(assert (=> b!5768236 (=> (not res!2434193) (not e!3543821))))

(declare-fun b!5768237 () Bool)

(declare-fun c!1019880 () Bool)

(assert (=> b!5768237 (= c!1019880 ((_ is ElementMatch!15779) r!7292))))

(assert (=> b!5768237 (= e!3543821 e!3543820)))

(declare-fun bm!443155 () Bool)

(declare-fun call!443161 () Bool)

(assert (=> bm!443155 (= call!443161 (isEmpty!35408 s!2326))))

(declare-fun b!5768238 () Bool)

(declare-fun res!2434191 () Bool)

(assert (=> b!5768238 (=> res!2434191 e!3543822)))

(assert (=> b!5768238 (= res!2434191 call!443161)))

(assert (=> b!5768238 (= e!3543825 e!3543822)))

(declare-fun b!5768239 () Bool)

(assert (=> b!5768239 (= e!3543823 call!443161)))

(declare-fun bm!443156 () Bool)

(assert (=> bm!443156 (= call!443160 (Exists!2879 (ite c!1019882 lambda!313315 lambda!313316)))))

(assert (= (and d!1817123 c!1019883) b!5768239))

(assert (= (and d!1817123 (not c!1019883)) b!5768236))

(assert (= (and b!5768236 res!2434193) b!5768237))

(assert (= (and b!5768237 c!1019880) b!5768235))

(assert (= (and b!5768237 (not c!1019880)) b!5768232))

(assert (= (and b!5768232 c!1019881) b!5768234))

(assert (= (and b!5768232 (not c!1019881)) b!5768233))

(assert (= (and b!5768234 (not res!2434192)) b!5768230))

(assert (= (and b!5768233 c!1019882) b!5768238))

(assert (= (and b!5768233 (not c!1019882)) b!5768229))

(assert (= (and b!5768238 (not res!2434191)) b!5768231))

(assert (= (or b!5768231 b!5768229) bm!443156))

(assert (= (or b!5768239 b!5768238) bm!443155))

(declare-fun m!6713660 () Bool)

(assert (=> b!5768230 m!6713660))

(declare-fun m!6713662 () Bool)

(assert (=> b!5768234 m!6713662))

(assert (=> bm!443155 m!6713400))

(declare-fun m!6713664 () Bool)

(assert (=> bm!443156 m!6713664))

(assert (=> b!5767559 d!1817123))

(declare-fun d!1817127 () Bool)

(declare-fun e!3543845 () Bool)

(assert (=> d!1817127 e!3543845))

(declare-fun c!1019884 () Bool)

(assert (=> d!1817127 (= c!1019884 ((_ is EmptyExpr!15779) r!7292))))

(declare-fun lt!2289684 () Bool)

(declare-fun e!3543844 () Bool)

(assert (=> d!1817127 (= lt!2289684 e!3543844)))

(declare-fun c!1019886 () Bool)

(assert (=> d!1817127 (= c!1019886 (isEmpty!35408 s!2326))))

(assert (=> d!1817127 (validRegex!7515 r!7292)))

(assert (=> d!1817127 (= (matchR!7964 r!7292 s!2326) lt!2289684)))

(declare-fun b!5768266 () Bool)

(declare-fun res!2434196 () Bool)

(declare-fun e!3543842 () Bool)

(assert (=> b!5768266 (=> res!2434196 e!3543842)))

(assert (=> b!5768266 (= res!2434196 (not ((_ is ElementMatch!15779) r!7292)))))

(declare-fun e!3543846 () Bool)

(assert (=> b!5768266 (= e!3543846 e!3543842)))

(declare-fun bm!443157 () Bool)

(declare-fun call!443162 () Bool)

(assert (=> bm!443157 (= call!443162 (isEmpty!35408 s!2326))))

(declare-fun b!5768267 () Bool)

(declare-fun e!3543841 () Bool)

(assert (=> b!5768267 (= e!3543842 e!3543841)))

(declare-fun res!2434198 () Bool)

(assert (=> b!5768267 (=> (not res!2434198) (not e!3543841))))

(assert (=> b!5768267 (= res!2434198 (not lt!2289684))))

(declare-fun b!5768268 () Bool)

(assert (=> b!5768268 (= e!3543845 e!3543846)))

(declare-fun c!1019885 () Bool)

(assert (=> b!5768268 (= c!1019885 ((_ is EmptyLang!15779) r!7292))))

(declare-fun b!5768269 () Bool)

(declare-fun res!2434194 () Bool)

(assert (=> b!5768269 (=> res!2434194 e!3543842)))

(declare-fun e!3543843 () Bool)

(assert (=> b!5768269 (= res!2434194 e!3543843)))

(declare-fun res!2434195 () Bool)

(assert (=> b!5768269 (=> (not res!2434195) (not e!3543843))))

(assert (=> b!5768269 (= res!2434195 lt!2289684)))

(declare-fun b!5768270 () Bool)

(assert (=> b!5768270 (= e!3543844 (nullable!5811 r!7292))))

(declare-fun b!5768271 () Bool)

(declare-fun e!3543840 () Bool)

(assert (=> b!5768271 (= e!3543841 e!3543840)))

(declare-fun res!2434197 () Bool)

(assert (=> b!5768271 (=> res!2434197 e!3543840)))

(assert (=> b!5768271 (= res!2434197 call!443162)))

(declare-fun b!5768272 () Bool)

(assert (=> b!5768272 (= e!3543845 (= lt!2289684 call!443162))))

(declare-fun b!5768273 () Bool)

(declare-fun res!2434200 () Bool)

(assert (=> b!5768273 (=> (not res!2434200) (not e!3543843))))

(assert (=> b!5768273 (= res!2434200 (not call!443162))))

(declare-fun b!5768274 () Bool)

(assert (=> b!5768274 (= e!3543846 (not lt!2289684))))

(declare-fun b!5768275 () Bool)

(assert (=> b!5768275 (= e!3543840 (not (= (head!12195 s!2326) (c!1019677 r!7292))))))

(declare-fun b!5768276 () Bool)

(assert (=> b!5768276 (= e!3543843 (= (head!12195 s!2326) (c!1019677 r!7292)))))

(declare-fun b!5768277 () Bool)

(declare-fun res!2434199 () Bool)

(assert (=> b!5768277 (=> res!2434199 e!3543840)))

(assert (=> b!5768277 (= res!2434199 (not (isEmpty!35408 (tail!11290 s!2326))))))

(declare-fun b!5768278 () Bool)

(assert (=> b!5768278 (= e!3543844 (matchR!7964 (derivativeStep!4560 r!7292 (head!12195 s!2326)) (tail!11290 s!2326)))))

(declare-fun b!5768279 () Bool)

(declare-fun res!2434201 () Bool)

(assert (=> b!5768279 (=> (not res!2434201) (not e!3543843))))

(assert (=> b!5768279 (= res!2434201 (isEmpty!35408 (tail!11290 s!2326)))))

(assert (= (and d!1817127 c!1019886) b!5768270))

(assert (= (and d!1817127 (not c!1019886)) b!5768278))

(assert (= (and d!1817127 c!1019884) b!5768272))

(assert (= (and d!1817127 (not c!1019884)) b!5768268))

(assert (= (and b!5768268 c!1019885) b!5768274))

(assert (= (and b!5768268 (not c!1019885)) b!5768266))

(assert (= (and b!5768266 (not res!2434196)) b!5768269))

(assert (= (and b!5768269 res!2434195) b!5768273))

(assert (= (and b!5768273 res!2434200) b!5768279))

(assert (= (and b!5768279 res!2434201) b!5768276))

(assert (= (and b!5768269 (not res!2434194)) b!5768267))

(assert (= (and b!5768267 res!2434198) b!5768271))

(assert (= (and b!5768271 (not res!2434197)) b!5768277))

(assert (= (and b!5768277 (not res!2434199)) b!5768275))

(assert (= (or b!5768272 b!5768271 b!5768273) bm!443157))

(declare-fun m!6713666 () Bool)

(assert (=> b!5768270 m!6713666))

(assert (=> b!5768275 m!6713398))

(assert (=> b!5768276 m!6713398))

(assert (=> bm!443157 m!6713400))

(assert (=> d!1817127 m!6713400))

(assert (=> d!1817127 m!6713174))

(assert (=> b!5768278 m!6713398))

(assert (=> b!5768278 m!6713398))

(declare-fun m!6713668 () Bool)

(assert (=> b!5768278 m!6713668))

(assert (=> b!5768278 m!6713406))

(assert (=> b!5768278 m!6713668))

(assert (=> b!5768278 m!6713406))

(declare-fun m!6713670 () Bool)

(assert (=> b!5768278 m!6713670))

(assert (=> b!5768279 m!6713406))

(assert (=> b!5768279 m!6713406))

(assert (=> b!5768279 m!6713410))

(assert (=> b!5768277 m!6713406))

(assert (=> b!5768277 m!6713406))

(assert (=> b!5768277 m!6713410))

(assert (=> b!5767559 d!1817127))

(declare-fun d!1817133 () Bool)

(assert (=> d!1817133 (= (matchR!7964 r!7292 s!2326) (matchRSpec!2882 r!7292 s!2326))))

(declare-fun lt!2289687 () Unit!156648)

(declare-fun choose!43749 (Regex!15779 List!63637) Unit!156648)

(assert (=> d!1817133 (= lt!2289687 (choose!43749 r!7292 s!2326))))

(assert (=> d!1817133 (validRegex!7515 r!7292)))

(assert (=> d!1817133 (= (mainMatchTheorem!2882 r!7292 s!2326) lt!2289687)))

(declare-fun bs!1353300 () Bool)

(assert (= bs!1353300 d!1817133))

(assert (=> bs!1353300 m!6713238))

(assert (=> bs!1353300 m!6713236))

(declare-fun m!6713672 () Bool)

(assert (=> bs!1353300 m!6713672))

(assert (=> bs!1353300 m!6713174))

(assert (=> b!5767559 d!1817133))

(declare-fun d!1817135 () Bool)

(declare-fun c!1019887 () Bool)

(assert (=> d!1817135 (= c!1019887 (isEmpty!35408 s!2326))))

(declare-fun e!3543847 () Bool)

(assert (=> d!1817135 (= (matchZipper!1917 z!1189 s!2326) e!3543847)))

(declare-fun b!5768280 () Bool)

(assert (=> b!5768280 (= e!3543847 (nullableZipper!1706 z!1189))))

(declare-fun b!5768281 () Bool)

(assert (=> b!5768281 (= e!3543847 (matchZipper!1917 (derivationStepZipper!1858 z!1189 (head!12195 s!2326)) (tail!11290 s!2326)))))

(assert (= (and d!1817135 c!1019887) b!5768280))

(assert (= (and d!1817135 (not c!1019887)) b!5768281))

(assert (=> d!1817135 m!6713400))

(declare-fun m!6713674 () Bool)

(assert (=> b!5768280 m!6713674))

(assert (=> b!5768281 m!6713398))

(assert (=> b!5768281 m!6713398))

(declare-fun m!6713676 () Bool)

(assert (=> b!5768281 m!6713676))

(assert (=> b!5768281 m!6713406))

(assert (=> b!5768281 m!6713676))

(assert (=> b!5768281 m!6713406))

(declare-fun m!6713678 () Bool)

(assert (=> b!5768281 m!6713678))

(assert (=> b!5767548 d!1817135))

(declare-fun d!1817137 () Bool)

(declare-fun c!1019888 () Bool)

(assert (=> d!1817137 (= c!1019888 (isEmpty!35408 (t!376975 s!2326)))))

(declare-fun e!3543848 () Bool)

(assert (=> d!1817137 (= (matchZipper!1917 lt!2289590 (t!376975 s!2326)) e!3543848)))

(declare-fun b!5768282 () Bool)

(assert (=> b!5768282 (= e!3543848 (nullableZipper!1706 lt!2289590))))

(declare-fun b!5768283 () Bool)

(assert (=> b!5768283 (= e!3543848 (matchZipper!1917 (derivationStepZipper!1858 lt!2289590 (head!12195 (t!376975 s!2326))) (tail!11290 (t!376975 s!2326))))))

(assert (= (and d!1817137 c!1019888) b!5768282))

(assert (= (and d!1817137 (not c!1019888)) b!5768283))

(assert (=> d!1817137 m!6713526))

(declare-fun m!6713680 () Bool)

(assert (=> b!5768282 m!6713680))

(assert (=> b!5768283 m!6713530))

(assert (=> b!5768283 m!6713530))

(declare-fun m!6713682 () Bool)

(assert (=> b!5768283 m!6713682))

(assert (=> b!5768283 m!6713534))

(assert (=> b!5768283 m!6713682))

(assert (=> b!5768283 m!6713534))

(declare-fun m!6713684 () Bool)

(assert (=> b!5768283 m!6713684))

(assert (=> b!5767548 d!1817137))

(declare-fun d!1817139 () Bool)

(declare-fun c!1019889 () Bool)

(assert (=> d!1817139 (= c!1019889 (isEmpty!35408 (t!376975 s!2326)))))

(declare-fun e!3543849 () Bool)

(assert (=> d!1817139 (= (matchZipper!1917 lt!2289605 (t!376975 s!2326)) e!3543849)))

(declare-fun b!5768284 () Bool)

(assert (=> b!5768284 (= e!3543849 (nullableZipper!1706 lt!2289605))))

(declare-fun b!5768285 () Bool)

(assert (=> b!5768285 (= e!3543849 (matchZipper!1917 (derivationStepZipper!1858 lt!2289605 (head!12195 (t!376975 s!2326))) (tail!11290 (t!376975 s!2326))))))

(assert (= (and d!1817139 c!1019889) b!5768284))

(assert (= (and d!1817139 (not c!1019889)) b!5768285))

(assert (=> d!1817139 m!6713526))

(declare-fun m!6713686 () Bool)

(assert (=> b!5768284 m!6713686))

(assert (=> b!5768285 m!6713530))

(assert (=> b!5768285 m!6713530))

(declare-fun m!6713688 () Bool)

(assert (=> b!5768285 m!6713688))

(assert (=> b!5768285 m!6713534))

(assert (=> b!5768285 m!6713688))

(assert (=> b!5768285 m!6713534))

(declare-fun m!6713690 () Bool)

(assert (=> b!5768285 m!6713690))

(assert (=> b!5767548 d!1817139))

(assert (=> b!5767548 d!1817067))

(declare-fun bs!1353301 () Bool)

(declare-fun b!5768288 () Bool)

(assert (= bs!1353301 (and b!5768288 b!5767564)))

(declare-fun lambda!313317 () Int)

(assert (=> bs!1353301 (not (= lambda!313317 lambda!313255))))

(assert (=> bs!1353301 (not (= lambda!313317 lambda!313256))))

(declare-fun bs!1353302 () Bool)

(assert (= bs!1353302 (and b!5768288 b!5768231)))

(assert (=> bs!1353302 (= (and (= (reg!16108 (regOne!32070 r!7292)) (reg!16108 r!7292)) (= (regOne!32070 r!7292) r!7292)) (= lambda!313317 lambda!313315))))

(declare-fun bs!1353303 () Bool)

(assert (= bs!1353303 (and b!5768288 b!5768229)))

(assert (=> bs!1353303 (not (= lambda!313317 lambda!313316))))

(assert (=> b!5768288 true))

(assert (=> b!5768288 true))

(declare-fun bs!1353304 () Bool)

(declare-fun b!5768286 () Bool)

(assert (= bs!1353304 (and b!5768286 b!5767564)))

(declare-fun lambda!313318 () Int)

(assert (=> bs!1353304 (not (= lambda!313318 lambda!313255))))

(declare-fun bs!1353305 () Bool)

(assert (= bs!1353305 (and b!5768286 b!5768229)))

(assert (=> bs!1353305 (= (and (= (regOne!32070 (regOne!32070 r!7292)) (regOne!32070 r!7292)) (= (regTwo!32070 (regOne!32070 r!7292)) (regTwo!32070 r!7292))) (= lambda!313318 lambda!313316))))

(assert (=> bs!1353304 (= (and (= (regOne!32070 (regOne!32070 r!7292)) (regOne!32070 r!7292)) (= (regTwo!32070 (regOne!32070 r!7292)) (regTwo!32070 r!7292))) (= lambda!313318 lambda!313256))))

(declare-fun bs!1353306 () Bool)

(assert (= bs!1353306 (and b!5768286 b!5768231)))

(assert (=> bs!1353306 (not (= lambda!313318 lambda!313315))))

(declare-fun bs!1353307 () Bool)

(assert (= bs!1353307 (and b!5768286 b!5768288)))

(assert (=> bs!1353307 (not (= lambda!313318 lambda!313317))))

(assert (=> b!5768286 true))

(assert (=> b!5768286 true))

(declare-fun e!3543855 () Bool)

(declare-fun call!443163 () Bool)

(assert (=> b!5768286 (= e!3543855 call!443163)))

(declare-fun d!1817141 () Bool)

(declare-fun c!1019893 () Bool)

(assert (=> d!1817141 (= c!1019893 ((_ is EmptyExpr!15779) (regOne!32070 r!7292)))))

(declare-fun e!3543853 () Bool)

(assert (=> d!1817141 (= (matchRSpec!2882 (regOne!32070 r!7292) s!2326) e!3543853)))

(declare-fun b!5768287 () Bool)

(declare-fun e!3543856 () Bool)

(assert (=> b!5768287 (= e!3543856 (matchRSpec!2882 (regTwo!32071 (regOne!32070 r!7292)) s!2326))))

(declare-fun e!3543852 () Bool)

(assert (=> b!5768288 (= e!3543852 call!443163)))

(declare-fun b!5768289 () Bool)

(declare-fun c!1019891 () Bool)

(assert (=> b!5768289 (= c!1019891 ((_ is Union!15779) (regOne!32070 r!7292)))))

(declare-fun e!3543850 () Bool)

(declare-fun e!3543854 () Bool)

(assert (=> b!5768289 (= e!3543850 e!3543854)))

(declare-fun b!5768290 () Bool)

(assert (=> b!5768290 (= e!3543854 e!3543855)))

(declare-fun c!1019892 () Bool)

(assert (=> b!5768290 (= c!1019892 ((_ is Star!15779) (regOne!32070 r!7292)))))

(declare-fun b!5768291 () Bool)

(assert (=> b!5768291 (= e!3543854 e!3543856)))

(declare-fun res!2434203 () Bool)

(assert (=> b!5768291 (= res!2434203 (matchRSpec!2882 (regOne!32071 (regOne!32070 r!7292)) s!2326))))

(assert (=> b!5768291 (=> res!2434203 e!3543856)))

(declare-fun b!5768292 () Bool)

(assert (=> b!5768292 (= e!3543850 (= s!2326 (Cons!63513 (c!1019677 (regOne!32070 r!7292)) Nil!63513)))))

(declare-fun b!5768293 () Bool)

(declare-fun e!3543851 () Bool)

(assert (=> b!5768293 (= e!3543853 e!3543851)))

(declare-fun res!2434204 () Bool)

(assert (=> b!5768293 (= res!2434204 (not ((_ is EmptyLang!15779) (regOne!32070 r!7292))))))

(assert (=> b!5768293 (=> (not res!2434204) (not e!3543851))))

(declare-fun b!5768294 () Bool)

(declare-fun c!1019890 () Bool)

(assert (=> b!5768294 (= c!1019890 ((_ is ElementMatch!15779) (regOne!32070 r!7292)))))

(assert (=> b!5768294 (= e!3543851 e!3543850)))

(declare-fun bm!443158 () Bool)

(declare-fun call!443164 () Bool)

(assert (=> bm!443158 (= call!443164 (isEmpty!35408 s!2326))))

(declare-fun b!5768295 () Bool)

(declare-fun res!2434202 () Bool)

(assert (=> b!5768295 (=> res!2434202 e!3543852)))

(assert (=> b!5768295 (= res!2434202 call!443164)))

(assert (=> b!5768295 (= e!3543855 e!3543852)))

(declare-fun b!5768296 () Bool)

(assert (=> b!5768296 (= e!3543853 call!443164)))

(declare-fun bm!443159 () Bool)

(assert (=> bm!443159 (= call!443163 (Exists!2879 (ite c!1019892 lambda!313317 lambda!313318)))))

(assert (= (and d!1817141 c!1019893) b!5768296))

(assert (= (and d!1817141 (not c!1019893)) b!5768293))

(assert (= (and b!5768293 res!2434204) b!5768294))

(assert (= (and b!5768294 c!1019890) b!5768292))

(assert (= (and b!5768294 (not c!1019890)) b!5768289))

(assert (= (and b!5768289 c!1019891) b!5768291))

(assert (= (and b!5768289 (not c!1019891)) b!5768290))

(assert (= (and b!5768291 (not res!2434203)) b!5768287))

(assert (= (and b!5768290 c!1019892) b!5768295))

(assert (= (and b!5768290 (not c!1019892)) b!5768286))

(assert (= (and b!5768295 (not res!2434202)) b!5768288))

(assert (= (or b!5768288 b!5768286) bm!443159))

(assert (= (or b!5768296 b!5768295) bm!443158))

(declare-fun m!6713692 () Bool)

(assert (=> b!5768287 m!6713692))

(declare-fun m!6713694 () Bool)

(assert (=> b!5768291 m!6713694))

(assert (=> bm!443158 m!6713400))

(declare-fun m!6713696 () Bool)

(assert (=> bm!443159 m!6713696))

(assert (=> b!5767560 d!1817141))

(declare-fun d!1817143 () Bool)

(assert (=> d!1817143 (= (matchR!7964 (regOne!32070 r!7292) s!2326) (matchRSpec!2882 (regOne!32070 r!7292) s!2326))))

(declare-fun lt!2289688 () Unit!156648)

(assert (=> d!1817143 (= lt!2289688 (choose!43749 (regOne!32070 r!7292) s!2326))))

(assert (=> d!1817143 (validRegex!7515 (regOne!32070 r!7292))))

(assert (=> d!1817143 (= (mainMatchTheorem!2882 (regOne!32070 r!7292) s!2326) lt!2289688)))

(declare-fun bs!1353308 () Bool)

(assert (= bs!1353308 d!1817143))

(assert (=> bs!1353308 m!6713184))

(assert (=> bs!1353308 m!6713186))

(declare-fun m!6713698 () Bool)

(assert (=> bs!1353308 m!6713698))

(declare-fun m!6713700 () Bool)

(assert (=> bs!1353308 m!6713700))

(assert (=> b!5767560 d!1817143))

(declare-fun d!1817145 () Bool)

(declare-fun e!3543862 () Bool)

(assert (=> d!1817145 e!3543862))

(declare-fun c!1019894 () Bool)

(assert (=> d!1817145 (= c!1019894 ((_ is EmptyExpr!15779) (regOne!32070 r!7292)))))

(declare-fun lt!2289689 () Bool)

(declare-fun e!3543861 () Bool)

(assert (=> d!1817145 (= lt!2289689 e!3543861)))

(declare-fun c!1019896 () Bool)

(assert (=> d!1817145 (= c!1019896 (isEmpty!35408 s!2326))))

(assert (=> d!1817145 (validRegex!7515 (regOne!32070 r!7292))))

(assert (=> d!1817145 (= (matchR!7964 (regOne!32070 r!7292) s!2326) lt!2289689)))

(declare-fun b!5768297 () Bool)

(declare-fun res!2434207 () Bool)

(declare-fun e!3543859 () Bool)

(assert (=> b!5768297 (=> res!2434207 e!3543859)))

(assert (=> b!5768297 (= res!2434207 (not ((_ is ElementMatch!15779) (regOne!32070 r!7292))))))

(declare-fun e!3543863 () Bool)

(assert (=> b!5768297 (= e!3543863 e!3543859)))

(declare-fun bm!443160 () Bool)

(declare-fun call!443165 () Bool)

(assert (=> bm!443160 (= call!443165 (isEmpty!35408 s!2326))))

(declare-fun b!5768298 () Bool)

(declare-fun e!3543858 () Bool)

(assert (=> b!5768298 (= e!3543859 e!3543858)))

(declare-fun res!2434209 () Bool)

(assert (=> b!5768298 (=> (not res!2434209) (not e!3543858))))

(assert (=> b!5768298 (= res!2434209 (not lt!2289689))))

(declare-fun b!5768299 () Bool)

(assert (=> b!5768299 (= e!3543862 e!3543863)))

(declare-fun c!1019895 () Bool)

(assert (=> b!5768299 (= c!1019895 ((_ is EmptyLang!15779) (regOne!32070 r!7292)))))

(declare-fun b!5768300 () Bool)

(declare-fun res!2434205 () Bool)

(assert (=> b!5768300 (=> res!2434205 e!3543859)))

(declare-fun e!3543860 () Bool)

(assert (=> b!5768300 (= res!2434205 e!3543860)))

(declare-fun res!2434206 () Bool)

(assert (=> b!5768300 (=> (not res!2434206) (not e!3543860))))

(assert (=> b!5768300 (= res!2434206 lt!2289689)))

(declare-fun b!5768301 () Bool)

(assert (=> b!5768301 (= e!3543861 (nullable!5811 (regOne!32070 r!7292)))))

(declare-fun b!5768302 () Bool)

(declare-fun e!3543857 () Bool)

(assert (=> b!5768302 (= e!3543858 e!3543857)))

(declare-fun res!2434208 () Bool)

(assert (=> b!5768302 (=> res!2434208 e!3543857)))

(assert (=> b!5768302 (= res!2434208 call!443165)))

(declare-fun b!5768303 () Bool)

(assert (=> b!5768303 (= e!3543862 (= lt!2289689 call!443165))))

(declare-fun b!5768304 () Bool)

(declare-fun res!2434211 () Bool)

(assert (=> b!5768304 (=> (not res!2434211) (not e!3543860))))

(assert (=> b!5768304 (= res!2434211 (not call!443165))))

(declare-fun b!5768305 () Bool)

(assert (=> b!5768305 (= e!3543863 (not lt!2289689))))

(declare-fun b!5768306 () Bool)

(assert (=> b!5768306 (= e!3543857 (not (= (head!12195 s!2326) (c!1019677 (regOne!32070 r!7292)))))))

(declare-fun b!5768307 () Bool)

(assert (=> b!5768307 (= e!3543860 (= (head!12195 s!2326) (c!1019677 (regOne!32070 r!7292))))))

(declare-fun b!5768308 () Bool)

(declare-fun res!2434210 () Bool)

(assert (=> b!5768308 (=> res!2434210 e!3543857)))

(assert (=> b!5768308 (= res!2434210 (not (isEmpty!35408 (tail!11290 s!2326))))))

(declare-fun b!5768309 () Bool)

(assert (=> b!5768309 (= e!3543861 (matchR!7964 (derivativeStep!4560 (regOne!32070 r!7292) (head!12195 s!2326)) (tail!11290 s!2326)))))

(declare-fun b!5768310 () Bool)

(declare-fun res!2434212 () Bool)

(assert (=> b!5768310 (=> (not res!2434212) (not e!3543860))))

(assert (=> b!5768310 (= res!2434212 (isEmpty!35408 (tail!11290 s!2326)))))

(assert (= (and d!1817145 c!1019896) b!5768301))

(assert (= (and d!1817145 (not c!1019896)) b!5768309))

(assert (= (and d!1817145 c!1019894) b!5768303))

(assert (= (and d!1817145 (not c!1019894)) b!5768299))

(assert (= (and b!5768299 c!1019895) b!5768305))

(assert (= (and b!5768299 (not c!1019895)) b!5768297))

(assert (= (and b!5768297 (not res!2434207)) b!5768300))

(assert (= (and b!5768300 res!2434206) b!5768304))

(assert (= (and b!5768304 res!2434211) b!5768310))

(assert (= (and b!5768310 res!2434212) b!5768307))

(assert (= (and b!5768300 (not res!2434205)) b!5768298))

(assert (= (and b!5768298 res!2434209) b!5768302))

(assert (= (and b!5768302 (not res!2434208)) b!5768308))

(assert (= (and b!5768308 (not res!2434210)) b!5768306))

(assert (= (or b!5768303 b!5768302 b!5768304) bm!443160))

(declare-fun m!6713702 () Bool)

(assert (=> b!5768301 m!6713702))

(assert (=> b!5768306 m!6713398))

(assert (=> b!5768307 m!6713398))

(assert (=> bm!443160 m!6713400))

(assert (=> d!1817145 m!6713400))

(assert (=> d!1817145 m!6713700))

(assert (=> b!5768309 m!6713398))

(assert (=> b!5768309 m!6713398))

(declare-fun m!6713704 () Bool)

(assert (=> b!5768309 m!6713704))

(assert (=> b!5768309 m!6713406))

(assert (=> b!5768309 m!6713704))

(assert (=> b!5768309 m!6713406))

(declare-fun m!6713706 () Bool)

(assert (=> b!5768309 m!6713706))

(assert (=> b!5768310 m!6713406))

(assert (=> b!5768310 m!6713406))

(assert (=> b!5768310 m!6713410))

(assert (=> b!5768308 m!6713406))

(assert (=> b!5768308 m!6713406))

(assert (=> b!5768308 m!6713410))

(assert (=> b!5767560 d!1817145))

(declare-fun bs!1353309 () Bool)

(declare-fun b!5768313 () Bool)

(assert (= bs!1353309 (and b!5768313 b!5767564)))

(declare-fun lambda!313319 () Int)

(assert (=> bs!1353309 (not (= lambda!313319 lambda!313255))))

(declare-fun bs!1353310 () Bool)

(assert (= bs!1353310 (and b!5768313 b!5768229)))

(assert (=> bs!1353310 (not (= lambda!313319 lambda!313316))))

(assert (=> bs!1353309 (not (= lambda!313319 lambda!313256))))

(declare-fun bs!1353311 () Bool)

(assert (= bs!1353311 (and b!5768313 b!5768286)))

(assert (=> bs!1353311 (not (= lambda!313319 lambda!313318))))

(declare-fun bs!1353312 () Bool)

(assert (= bs!1353312 (and b!5768313 b!5768231)))

(assert (=> bs!1353312 (= (and (= (reg!16108 (regTwo!32070 r!7292)) (reg!16108 r!7292)) (= (regTwo!32070 r!7292) r!7292)) (= lambda!313319 lambda!313315))))

(declare-fun bs!1353313 () Bool)

(assert (= bs!1353313 (and b!5768313 b!5768288)))

(assert (=> bs!1353313 (= (and (= (reg!16108 (regTwo!32070 r!7292)) (reg!16108 (regOne!32070 r!7292))) (= (regTwo!32070 r!7292) (regOne!32070 r!7292))) (= lambda!313319 lambda!313317))))

(assert (=> b!5768313 true))

(assert (=> b!5768313 true))

(declare-fun bs!1353314 () Bool)

(declare-fun b!5768311 () Bool)

(assert (= bs!1353314 (and b!5768311 b!5767564)))

(declare-fun lambda!313320 () Int)

(assert (=> bs!1353314 (not (= lambda!313320 lambda!313255))))

(declare-fun bs!1353315 () Bool)

(assert (= bs!1353315 (and b!5768311 b!5768229)))

(assert (=> bs!1353315 (= (and (= (regOne!32070 (regTwo!32070 r!7292)) (regOne!32070 r!7292)) (= (regTwo!32070 (regTwo!32070 r!7292)) (regTwo!32070 r!7292))) (= lambda!313320 lambda!313316))))

(assert (=> bs!1353314 (= (and (= (regOne!32070 (regTwo!32070 r!7292)) (regOne!32070 r!7292)) (= (regTwo!32070 (regTwo!32070 r!7292)) (regTwo!32070 r!7292))) (= lambda!313320 lambda!313256))))

(declare-fun bs!1353316 () Bool)

(assert (= bs!1353316 (and b!5768311 b!5768286)))

(assert (=> bs!1353316 (= (and (= (regOne!32070 (regTwo!32070 r!7292)) (regOne!32070 (regOne!32070 r!7292))) (= (regTwo!32070 (regTwo!32070 r!7292)) (regTwo!32070 (regOne!32070 r!7292)))) (= lambda!313320 lambda!313318))))

(declare-fun bs!1353317 () Bool)

(assert (= bs!1353317 (and b!5768311 b!5768313)))

(assert (=> bs!1353317 (not (= lambda!313320 lambda!313319))))

(declare-fun bs!1353318 () Bool)

(assert (= bs!1353318 (and b!5768311 b!5768231)))

(assert (=> bs!1353318 (not (= lambda!313320 lambda!313315))))

(declare-fun bs!1353319 () Bool)

(assert (= bs!1353319 (and b!5768311 b!5768288)))

(assert (=> bs!1353319 (not (= lambda!313320 lambda!313317))))

(assert (=> b!5768311 true))

(assert (=> b!5768311 true))

(declare-fun e!3543869 () Bool)

(declare-fun call!443166 () Bool)

(assert (=> b!5768311 (= e!3543869 call!443166)))

(declare-fun d!1817147 () Bool)

(declare-fun c!1019900 () Bool)

(assert (=> d!1817147 (= c!1019900 ((_ is EmptyExpr!15779) (regTwo!32070 r!7292)))))

(declare-fun e!3543867 () Bool)

(assert (=> d!1817147 (= (matchRSpec!2882 (regTwo!32070 r!7292) s!2326) e!3543867)))

(declare-fun b!5768312 () Bool)

(declare-fun e!3543870 () Bool)

(assert (=> b!5768312 (= e!3543870 (matchRSpec!2882 (regTwo!32071 (regTwo!32070 r!7292)) s!2326))))

(declare-fun e!3543866 () Bool)

(assert (=> b!5768313 (= e!3543866 call!443166)))

(declare-fun b!5768314 () Bool)

(declare-fun c!1019898 () Bool)

(assert (=> b!5768314 (= c!1019898 ((_ is Union!15779) (regTwo!32070 r!7292)))))

(declare-fun e!3543864 () Bool)

(declare-fun e!3543868 () Bool)

(assert (=> b!5768314 (= e!3543864 e!3543868)))

(declare-fun b!5768315 () Bool)

(assert (=> b!5768315 (= e!3543868 e!3543869)))

(declare-fun c!1019899 () Bool)

(assert (=> b!5768315 (= c!1019899 ((_ is Star!15779) (regTwo!32070 r!7292)))))

(declare-fun b!5768316 () Bool)

(assert (=> b!5768316 (= e!3543868 e!3543870)))

(declare-fun res!2434214 () Bool)

(assert (=> b!5768316 (= res!2434214 (matchRSpec!2882 (regOne!32071 (regTwo!32070 r!7292)) s!2326))))

(assert (=> b!5768316 (=> res!2434214 e!3543870)))

(declare-fun b!5768317 () Bool)

(assert (=> b!5768317 (= e!3543864 (= s!2326 (Cons!63513 (c!1019677 (regTwo!32070 r!7292)) Nil!63513)))))

(declare-fun b!5768318 () Bool)

(declare-fun e!3543865 () Bool)

(assert (=> b!5768318 (= e!3543867 e!3543865)))

(declare-fun res!2434215 () Bool)

(assert (=> b!5768318 (= res!2434215 (not ((_ is EmptyLang!15779) (regTwo!32070 r!7292))))))

(assert (=> b!5768318 (=> (not res!2434215) (not e!3543865))))

(declare-fun b!5768319 () Bool)

(declare-fun c!1019897 () Bool)

(assert (=> b!5768319 (= c!1019897 ((_ is ElementMatch!15779) (regTwo!32070 r!7292)))))

(assert (=> b!5768319 (= e!3543865 e!3543864)))

(declare-fun bm!443161 () Bool)

(declare-fun call!443167 () Bool)

(assert (=> bm!443161 (= call!443167 (isEmpty!35408 s!2326))))

(declare-fun b!5768320 () Bool)

(declare-fun res!2434213 () Bool)

(assert (=> b!5768320 (=> res!2434213 e!3543866)))

(assert (=> b!5768320 (= res!2434213 call!443167)))

(assert (=> b!5768320 (= e!3543869 e!3543866)))

(declare-fun b!5768321 () Bool)

(assert (=> b!5768321 (= e!3543867 call!443167)))

(declare-fun bm!443162 () Bool)

(assert (=> bm!443162 (= call!443166 (Exists!2879 (ite c!1019899 lambda!313319 lambda!313320)))))

(assert (= (and d!1817147 c!1019900) b!5768321))

(assert (= (and d!1817147 (not c!1019900)) b!5768318))

(assert (= (and b!5768318 res!2434215) b!5768319))

(assert (= (and b!5768319 c!1019897) b!5768317))

(assert (= (and b!5768319 (not c!1019897)) b!5768314))

(assert (= (and b!5768314 c!1019898) b!5768316))

(assert (= (and b!5768314 (not c!1019898)) b!5768315))

(assert (= (and b!5768316 (not res!2434214)) b!5768312))

(assert (= (and b!5768315 c!1019899) b!5768320))

(assert (= (and b!5768315 (not c!1019899)) b!5768311))

(assert (= (and b!5768320 (not res!2434213)) b!5768313))

(assert (= (or b!5768313 b!5768311) bm!443162))

(assert (= (or b!5768321 b!5768320) bm!443161))

(declare-fun m!6713708 () Bool)

(assert (=> b!5768312 m!6713708))

(declare-fun m!6713710 () Bool)

(assert (=> b!5768316 m!6713710))

(assert (=> bm!443161 m!6713400))

(declare-fun m!6713712 () Bool)

(assert (=> bm!443162 m!6713712))

(assert (=> b!5767560 d!1817147))

(declare-fun d!1817149 () Bool)

(declare-fun e!3543876 () Bool)

(assert (=> d!1817149 e!3543876))

(declare-fun c!1019901 () Bool)

(assert (=> d!1817149 (= c!1019901 ((_ is EmptyExpr!15779) (regTwo!32070 r!7292)))))

(declare-fun lt!2289690 () Bool)

(declare-fun e!3543875 () Bool)

(assert (=> d!1817149 (= lt!2289690 e!3543875)))

(declare-fun c!1019903 () Bool)

(assert (=> d!1817149 (= c!1019903 (isEmpty!35408 s!2326))))

(assert (=> d!1817149 (validRegex!7515 (regTwo!32070 r!7292))))

(assert (=> d!1817149 (= (matchR!7964 (regTwo!32070 r!7292) s!2326) lt!2289690)))

(declare-fun b!5768322 () Bool)

(declare-fun res!2434218 () Bool)

(declare-fun e!3543873 () Bool)

(assert (=> b!5768322 (=> res!2434218 e!3543873)))

(assert (=> b!5768322 (= res!2434218 (not ((_ is ElementMatch!15779) (regTwo!32070 r!7292))))))

(declare-fun e!3543877 () Bool)

(assert (=> b!5768322 (= e!3543877 e!3543873)))

(declare-fun bm!443163 () Bool)

(declare-fun call!443168 () Bool)

(assert (=> bm!443163 (= call!443168 (isEmpty!35408 s!2326))))

(declare-fun b!5768323 () Bool)

(declare-fun e!3543872 () Bool)

(assert (=> b!5768323 (= e!3543873 e!3543872)))

(declare-fun res!2434220 () Bool)

(assert (=> b!5768323 (=> (not res!2434220) (not e!3543872))))

(assert (=> b!5768323 (= res!2434220 (not lt!2289690))))

(declare-fun b!5768324 () Bool)

(assert (=> b!5768324 (= e!3543876 e!3543877)))

(declare-fun c!1019902 () Bool)

(assert (=> b!5768324 (= c!1019902 ((_ is EmptyLang!15779) (regTwo!32070 r!7292)))))

(declare-fun b!5768325 () Bool)

(declare-fun res!2434216 () Bool)

(assert (=> b!5768325 (=> res!2434216 e!3543873)))

(declare-fun e!3543874 () Bool)

(assert (=> b!5768325 (= res!2434216 e!3543874)))

(declare-fun res!2434217 () Bool)

(assert (=> b!5768325 (=> (not res!2434217) (not e!3543874))))

(assert (=> b!5768325 (= res!2434217 lt!2289690)))

(declare-fun b!5768326 () Bool)

(assert (=> b!5768326 (= e!3543875 (nullable!5811 (regTwo!32070 r!7292)))))

(declare-fun b!5768327 () Bool)

(declare-fun e!3543871 () Bool)

(assert (=> b!5768327 (= e!3543872 e!3543871)))

(declare-fun res!2434219 () Bool)

(assert (=> b!5768327 (=> res!2434219 e!3543871)))

(assert (=> b!5768327 (= res!2434219 call!443168)))

(declare-fun b!5768328 () Bool)

(assert (=> b!5768328 (= e!3543876 (= lt!2289690 call!443168))))

(declare-fun b!5768329 () Bool)

(declare-fun res!2434222 () Bool)

(assert (=> b!5768329 (=> (not res!2434222) (not e!3543874))))

(assert (=> b!5768329 (= res!2434222 (not call!443168))))

(declare-fun b!5768330 () Bool)

(assert (=> b!5768330 (= e!3543877 (not lt!2289690))))

(declare-fun b!5768331 () Bool)

(assert (=> b!5768331 (= e!3543871 (not (= (head!12195 s!2326) (c!1019677 (regTwo!32070 r!7292)))))))

(declare-fun b!5768332 () Bool)

(assert (=> b!5768332 (= e!3543874 (= (head!12195 s!2326) (c!1019677 (regTwo!32070 r!7292))))))

(declare-fun b!5768333 () Bool)

(declare-fun res!2434221 () Bool)

(assert (=> b!5768333 (=> res!2434221 e!3543871)))

(assert (=> b!5768333 (= res!2434221 (not (isEmpty!35408 (tail!11290 s!2326))))))

(declare-fun b!5768334 () Bool)

(assert (=> b!5768334 (= e!3543875 (matchR!7964 (derivativeStep!4560 (regTwo!32070 r!7292) (head!12195 s!2326)) (tail!11290 s!2326)))))

(declare-fun b!5768335 () Bool)

(declare-fun res!2434223 () Bool)

(assert (=> b!5768335 (=> (not res!2434223) (not e!3543874))))

(assert (=> b!5768335 (= res!2434223 (isEmpty!35408 (tail!11290 s!2326)))))

(assert (= (and d!1817149 c!1019903) b!5768326))

(assert (= (and d!1817149 (not c!1019903)) b!5768334))

(assert (= (and d!1817149 c!1019901) b!5768328))

(assert (= (and d!1817149 (not c!1019901)) b!5768324))

(assert (= (and b!5768324 c!1019902) b!5768330))

(assert (= (and b!5768324 (not c!1019902)) b!5768322))

(assert (= (and b!5768322 (not res!2434218)) b!5768325))

(assert (= (and b!5768325 res!2434217) b!5768329))

(assert (= (and b!5768329 res!2434222) b!5768335))

(assert (= (and b!5768335 res!2434223) b!5768332))

(assert (= (and b!5768325 (not res!2434216)) b!5768323))

(assert (= (and b!5768323 res!2434220) b!5768327))

(assert (= (and b!5768327 (not res!2434219)) b!5768333))

(assert (= (and b!5768333 (not res!2434221)) b!5768331))

(assert (= (or b!5768328 b!5768327 b!5768329) bm!443163))

(declare-fun m!6713714 () Bool)

(assert (=> b!5768326 m!6713714))

(assert (=> b!5768331 m!6713398))

(assert (=> b!5768332 m!6713398))

(assert (=> bm!443163 m!6713400))

(assert (=> d!1817149 m!6713400))

(declare-fun m!6713716 () Bool)

(assert (=> d!1817149 m!6713716))

(assert (=> b!5768334 m!6713398))

(assert (=> b!5768334 m!6713398))

(declare-fun m!6713718 () Bool)

(assert (=> b!5768334 m!6713718))

(assert (=> b!5768334 m!6713406))

(assert (=> b!5768334 m!6713718))

(assert (=> b!5768334 m!6713406))

(declare-fun m!6713720 () Bool)

(assert (=> b!5768334 m!6713720))

(assert (=> b!5768335 m!6713406))

(assert (=> b!5768335 m!6713406))

(assert (=> b!5768335 m!6713410))

(assert (=> b!5768333 m!6713406))

(assert (=> b!5768333 m!6713406))

(assert (=> b!5768333 m!6713410))

(assert (=> b!5767560 d!1817149))

(declare-fun d!1817151 () Bool)

(assert (=> d!1817151 (= (matchR!7964 (regTwo!32070 r!7292) s!2326) (matchRSpec!2882 (regTwo!32070 r!7292) s!2326))))

(declare-fun lt!2289691 () Unit!156648)

(assert (=> d!1817151 (= lt!2289691 (choose!43749 (regTwo!32070 r!7292) s!2326))))

(assert (=> d!1817151 (validRegex!7515 (regTwo!32070 r!7292))))

(assert (=> d!1817151 (= (mainMatchTheorem!2882 (regTwo!32070 r!7292) s!2326) lt!2289691)))

(declare-fun bs!1353320 () Bool)

(assert (= bs!1353320 d!1817151))

(assert (=> bs!1353320 m!6713178))

(assert (=> bs!1353320 m!6713188))

(declare-fun m!6713722 () Bool)

(assert (=> bs!1353320 m!6713722))

(assert (=> bs!1353320 m!6713716))

(assert (=> b!5767560 d!1817151))

(declare-fun bs!1353321 () Bool)

(declare-fun d!1817153 () Bool)

(assert (= bs!1353321 (and d!1817153 d!1817001)))

(declare-fun lambda!313321 () Int)

(assert (=> bs!1353321 (= lambda!313321 lambda!313273)))

(declare-fun bs!1353322 () Bool)

(assert (= bs!1353322 (and d!1817153 d!1816989)))

(assert (=> bs!1353322 (= lambda!313321 lambda!313260)))

(declare-fun bs!1353323 () Bool)

(assert (= bs!1353323 (and d!1817153 d!1817011)))

(assert (=> bs!1353323 (= lambda!313321 lambda!313281)))

(declare-fun bs!1353324 () Bool)

(assert (= bs!1353324 (and d!1817153 d!1817007)))

(assert (=> bs!1353324 (= lambda!313321 lambda!313278)))

(declare-fun bs!1353325 () Bool)

(assert (= bs!1353325 (and d!1817153 d!1817065)))

(assert (=> bs!1353325 (= lambda!313321 lambda!313291)))

(assert (=> d!1817153 (= (inv!82694 setElem!38751) (forall!14897 (exprs!5663 setElem!38751) lambda!313321))))

(declare-fun bs!1353326 () Bool)

(assert (= bs!1353326 d!1817153))

(declare-fun m!6713724 () Bool)

(assert (=> bs!1353326 m!6713724))

(assert (=> setNonEmpty!38751 d!1817153))

(assert (=> b!5767541 d!1817137))

(declare-fun bs!1353327 () Bool)

(declare-fun d!1817155 () Bool)

(assert (= bs!1353327 (and d!1817155 b!5767549)))

(declare-fun lambda!313322 () Int)

(assert (=> bs!1353327 (= lambda!313322 lambda!313257)))

(declare-fun bs!1353328 () Bool)

(assert (= bs!1353328 (and d!1817155 d!1817119)))

(assert (=> bs!1353328 (= lambda!313322 lambda!313304)))

(assert (=> d!1817155 true))

(assert (=> d!1817155 (= (derivationStepZipper!1858 lt!2289591 (h!69961 s!2326)) (flatMap!1392 lt!2289591 lambda!313322))))

(declare-fun bs!1353329 () Bool)

(assert (= bs!1353329 d!1817155))

(declare-fun m!6713726 () Bool)

(assert (=> bs!1353329 m!6713726))

(assert (=> b!5767561 d!1817155))

(declare-fun d!1817157 () Bool)

(assert (=> d!1817157 (= (flatMap!1392 lt!2289591 lambda!313257) (choose!43747 lt!2289591 lambda!313257))))

(declare-fun bs!1353330 () Bool)

(assert (= bs!1353330 d!1817157))

(declare-fun m!6713728 () Bool)

(assert (=> bs!1353330 m!6713728))

(assert (=> b!5767561 d!1817157))

(assert (=> b!5767561 d!1817097))

(declare-fun d!1817159 () Bool)

(assert (=> d!1817159 (= (flatMap!1392 lt!2289591 lambda!313257) (dynLambda!24865 lambda!313257 lt!2289585))))

(declare-fun lt!2289692 () Unit!156648)

(assert (=> d!1817159 (= lt!2289692 (choose!43748 lt!2289591 lt!2289585 lambda!313257))))

(assert (=> d!1817159 (= lt!2289591 (store ((as const (Array Context!10326 Bool)) false) lt!2289585 true))))

(assert (=> d!1817159 (= (lemmaFlatMapOnSingletonSet!924 lt!2289591 lt!2289585 lambda!313257) lt!2289692)))

(declare-fun b_lambda!217737 () Bool)

(assert (=> (not b_lambda!217737) (not d!1817159)))

(declare-fun bs!1353331 () Bool)

(assert (= bs!1353331 d!1817159))

(assert (=> bs!1353331 m!6713212))

(declare-fun m!6713730 () Bool)

(assert (=> bs!1353331 m!6713730))

(declare-fun m!6713732 () Bool)

(assert (=> bs!1353331 m!6713732))

(assert (=> bs!1353331 m!6713210))

(assert (=> b!5767561 d!1817159))

(assert (=> b!5767551 d!1817081))

(declare-fun d!1817161 () Bool)

(assert (=> d!1817161 (not (matchZipper!1917 lt!2289596 (t!376975 s!2326)))))

(declare-fun lt!2289695 () Unit!156648)

(declare-fun choose!43754 ((InoxSet Context!10326) List!63637) Unit!156648)

(assert (=> d!1817161 (= lt!2289695 (choose!43754 lt!2289596 (t!376975 s!2326)))))

(assert (=> d!1817161 (= lt!2289596 ((as const (Array Context!10326 Bool)) false))))

(assert (=> d!1817161 (= (lemmaEmptyZipperMatchesNothing!64 lt!2289596 (t!376975 s!2326)) lt!2289695)))

(declare-fun bs!1353332 () Bool)

(assert (= bs!1353332 d!1817161))

(assert (=> bs!1353332 m!6713154))

(declare-fun m!6713734 () Bool)

(assert (=> bs!1353332 m!6713734))

(assert (=> b!5767551 d!1817161))

(declare-fun d!1817163 () Bool)

(declare-fun e!3543880 () Bool)

(assert (=> d!1817163 e!3543880))

(declare-fun res!2434226 () Bool)

(assert (=> d!1817163 (=> (not res!2434226) (not e!3543880))))

(declare-fun lt!2289698 () List!63638)

(declare-fun noDuplicate!1686 (List!63638) Bool)

(assert (=> d!1817163 (= res!2434226 (noDuplicate!1686 lt!2289698))))

(declare-fun choose!43755 ((InoxSet Context!10326)) List!63638)

(assert (=> d!1817163 (= lt!2289698 (choose!43755 z!1189))))

(assert (=> d!1817163 (= (toList!9563 z!1189) lt!2289698)))

(declare-fun b!5768338 () Bool)

(declare-fun content!11597 (List!63638) (InoxSet Context!10326))

(assert (=> b!5768338 (= e!3543880 (= (content!11597 lt!2289698) z!1189))))

(assert (= (and d!1817163 res!2434226) b!5768338))

(declare-fun m!6713736 () Bool)

(assert (=> d!1817163 m!6713736))

(declare-fun m!6713738 () Bool)

(assert (=> d!1817163 m!6713738))

(declare-fun m!6713740 () Bool)

(assert (=> b!5768338 m!6713740))

(assert (=> b!5767553 d!1817163))

(declare-fun d!1817165 () Bool)

(assert (=> d!1817165 (= (isEmpty!35405 (t!376974 (exprs!5663 (h!69962 zl!343)))) ((_ is Nil!63512) (t!376974 (exprs!5663 (h!69962 zl!343)))))))

(assert (=> b!5767542 d!1817165))

(declare-fun d!1817167 () Bool)

(declare-fun lt!2289701 () Regex!15779)

(assert (=> d!1817167 (validRegex!7515 lt!2289701)))

(assert (=> d!1817167 (= lt!2289701 (generalisedUnion!1642 (unfocusZipperList!1207 zl!343)))))

(assert (=> d!1817167 (= (unfocusZipper!1521 zl!343) lt!2289701)))

(declare-fun bs!1353333 () Bool)

(assert (= bs!1353333 d!1817167))

(declare-fun m!6713742 () Bool)

(assert (=> bs!1353333 m!6713742))

(assert (=> bs!1353333 m!6713170))

(assert (=> bs!1353333 m!6713170))

(assert (=> bs!1353333 m!6713172))

(assert (=> b!5767562 d!1817167))

(declare-fun d!1817169 () Bool)

(assert (=> d!1817169 (= (isEmpty!35406 (t!376976 zl!343)) ((_ is Nil!63514) (t!376976 zl!343)))))

(assert (=> b!5767552 d!1817169))

(declare-fun d!1817171 () Bool)

(declare-fun e!3543892 () Bool)

(assert (=> d!1817171 e!3543892))

(declare-fun res!2434241 () Bool)

(assert (=> d!1817171 (=> res!2434241 e!3543892)))

(declare-fun e!3543895 () Bool)

(assert (=> d!1817171 (= res!2434241 e!3543895)))

(declare-fun res!2434237 () Bool)

(assert (=> d!1817171 (=> (not res!2434237) (not e!3543895))))

(declare-fun lt!2289710 () Option!15788)

(assert (=> d!1817171 (= res!2434237 (isDefined!12491 lt!2289710))))

(declare-fun e!3543891 () Option!15788)

(assert (=> d!1817171 (= lt!2289710 e!3543891)))

(declare-fun c!1019909 () Bool)

(declare-fun e!3543893 () Bool)

(assert (=> d!1817171 (= c!1019909 e!3543893)))

(declare-fun res!2434240 () Bool)

(assert (=> d!1817171 (=> (not res!2434240) (not e!3543893))))

(assert (=> d!1817171 (= res!2434240 (matchR!7964 (regOne!32070 r!7292) Nil!63513))))

(assert (=> d!1817171 (validRegex!7515 (regOne!32070 r!7292))))

(assert (=> d!1817171 (= (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) Nil!63513 s!2326 s!2326) lt!2289710)))

(declare-fun b!5768357 () Bool)

(assert (=> b!5768357 (= e!3543893 (matchR!7964 (regTwo!32070 r!7292) s!2326))))

(declare-fun b!5768358 () Bool)

(declare-fun e!3543894 () Option!15788)

(assert (=> b!5768358 (= e!3543891 e!3543894)))

(declare-fun c!1019908 () Bool)

(assert (=> b!5768358 (= c!1019908 ((_ is Nil!63513) s!2326))))

(declare-fun b!5768359 () Bool)

(assert (=> b!5768359 (= e!3543892 (not (isDefined!12491 lt!2289710)))))

(declare-fun b!5768360 () Bool)

(declare-fun ++!13993 (List!63637 List!63637) List!63637)

(declare-fun get!21916 (Option!15788) tuple2!65752)

(assert (=> b!5768360 (= e!3543895 (= (++!13993 (_1!36179 (get!21916 lt!2289710)) (_2!36179 (get!21916 lt!2289710))) s!2326))))

(declare-fun b!5768361 () Bool)

(assert (=> b!5768361 (= e!3543891 (Some!15787 (tuple2!65753 Nil!63513 s!2326)))))

(declare-fun b!5768362 () Bool)

(assert (=> b!5768362 (= e!3543894 None!15787)))

(declare-fun b!5768363 () Bool)

(declare-fun res!2434238 () Bool)

(assert (=> b!5768363 (=> (not res!2434238) (not e!3543895))))

(assert (=> b!5768363 (= res!2434238 (matchR!7964 (regOne!32070 r!7292) (_1!36179 (get!21916 lt!2289710))))))

(declare-fun b!5768364 () Bool)

(declare-fun lt!2289708 () Unit!156648)

(declare-fun lt!2289709 () Unit!156648)

(assert (=> b!5768364 (= lt!2289708 lt!2289709)))

(assert (=> b!5768364 (= (++!13993 (++!13993 Nil!63513 (Cons!63513 (h!69961 s!2326) Nil!63513)) (t!376975 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2110 (List!63637 C!31828 List!63637 List!63637) Unit!156648)

(assert (=> b!5768364 (= lt!2289709 (lemmaMoveElementToOtherListKeepsConcatEq!2110 Nil!63513 (h!69961 s!2326) (t!376975 s!2326) s!2326))))

(assert (=> b!5768364 (= e!3543894 (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) (++!13993 Nil!63513 (Cons!63513 (h!69961 s!2326) Nil!63513)) (t!376975 s!2326) s!2326))))

(declare-fun b!5768365 () Bool)

(declare-fun res!2434239 () Bool)

(assert (=> b!5768365 (=> (not res!2434239) (not e!3543895))))

(assert (=> b!5768365 (= res!2434239 (matchR!7964 (regTwo!32070 r!7292) (_2!36179 (get!21916 lt!2289710))))))

(assert (= (and d!1817171 res!2434240) b!5768357))

(assert (= (and d!1817171 c!1019909) b!5768361))

(assert (= (and d!1817171 (not c!1019909)) b!5768358))

(assert (= (and b!5768358 c!1019908) b!5768362))

(assert (= (and b!5768358 (not c!1019908)) b!5768364))

(assert (= (and d!1817171 res!2434237) b!5768363))

(assert (= (and b!5768363 res!2434238) b!5768365))

(assert (= (and b!5768365 res!2434239) b!5768360))

(assert (= (and d!1817171 (not res!2434241)) b!5768359))

(declare-fun m!6713744 () Bool)

(assert (=> b!5768363 m!6713744))

(declare-fun m!6713746 () Bool)

(assert (=> b!5768363 m!6713746))

(assert (=> b!5768365 m!6713744))

(declare-fun m!6713748 () Bool)

(assert (=> b!5768365 m!6713748))

(declare-fun m!6713750 () Bool)

(assert (=> b!5768359 m!6713750))

(assert (=> b!5768360 m!6713744))

(declare-fun m!6713752 () Bool)

(assert (=> b!5768360 m!6713752))

(assert (=> d!1817171 m!6713750))

(declare-fun m!6713754 () Bool)

(assert (=> d!1817171 m!6713754))

(assert (=> d!1817171 m!6713700))

(declare-fun m!6713756 () Bool)

(assert (=> b!5768364 m!6713756))

(assert (=> b!5768364 m!6713756))

(declare-fun m!6713758 () Bool)

(assert (=> b!5768364 m!6713758))

(declare-fun m!6713760 () Bool)

(assert (=> b!5768364 m!6713760))

(assert (=> b!5768364 m!6713756))

(declare-fun m!6713762 () Bool)

(assert (=> b!5768364 m!6713762))

(assert (=> b!5768357 m!6713178))

(assert (=> b!5767564 d!1817171))

(declare-fun d!1817173 () Bool)

(declare-fun choose!43756 (Int) Bool)

(assert (=> d!1817173 (= (Exists!2879 lambda!313255) (choose!43756 lambda!313255))))

(declare-fun bs!1353334 () Bool)

(assert (= bs!1353334 d!1817173))

(declare-fun m!6713764 () Bool)

(assert (=> bs!1353334 m!6713764))

(assert (=> b!5767564 d!1817173))

(declare-fun d!1817175 () Bool)

(assert (=> d!1817175 (= (Exists!2879 lambda!313256) (choose!43756 lambda!313256))))

(declare-fun bs!1353335 () Bool)

(assert (= bs!1353335 d!1817175))

(declare-fun m!6713766 () Bool)

(assert (=> bs!1353335 m!6713766))

(assert (=> b!5767564 d!1817175))

(declare-fun bs!1353336 () Bool)

(declare-fun d!1817177 () Bool)

(assert (= bs!1353336 (and d!1817177 b!5767564)))

(declare-fun lambda!313325 () Int)

(assert (=> bs!1353336 (= lambda!313325 lambda!313255)))

(declare-fun bs!1353337 () Bool)

(assert (= bs!1353337 (and d!1817177 b!5768229)))

(assert (=> bs!1353337 (not (= lambda!313325 lambda!313316))))

(assert (=> bs!1353336 (not (= lambda!313325 lambda!313256))))

(declare-fun bs!1353338 () Bool)

(assert (= bs!1353338 (and d!1817177 b!5768286)))

(assert (=> bs!1353338 (not (= lambda!313325 lambda!313318))))

(declare-fun bs!1353339 () Bool)

(assert (= bs!1353339 (and d!1817177 b!5768313)))

(assert (=> bs!1353339 (not (= lambda!313325 lambda!313319))))

(declare-fun bs!1353340 () Bool)

(assert (= bs!1353340 (and d!1817177 b!5768311)))

(assert (=> bs!1353340 (not (= lambda!313325 lambda!313320))))

(declare-fun bs!1353341 () Bool)

(assert (= bs!1353341 (and d!1817177 b!5768231)))

(assert (=> bs!1353341 (not (= lambda!313325 lambda!313315))))

(declare-fun bs!1353342 () Bool)

(assert (= bs!1353342 (and d!1817177 b!5768288)))

(assert (=> bs!1353342 (not (= lambda!313325 lambda!313317))))

(assert (=> d!1817177 true))

(assert (=> d!1817177 true))

(assert (=> d!1817177 true))

(assert (=> d!1817177 (= (isDefined!12491 (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) Nil!63513 s!2326 s!2326)) (Exists!2879 lambda!313325))))

(declare-fun lt!2289713 () Unit!156648)

(declare-fun choose!43757 (Regex!15779 Regex!15779 List!63637) Unit!156648)

(assert (=> d!1817177 (= lt!2289713 (choose!43757 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326))))

(assert (=> d!1817177 (validRegex!7515 (regOne!32070 r!7292))))

(assert (=> d!1817177 (= (lemmaFindConcatSeparationEquivalentToExists!1966 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326) lt!2289713)))

(declare-fun bs!1353343 () Bool)

(assert (= bs!1353343 d!1817177))

(declare-fun m!6713768 () Bool)

(assert (=> bs!1353343 m!6713768))

(assert (=> bs!1353343 m!6713200))

(assert (=> bs!1353343 m!6713200))

(assert (=> bs!1353343 m!6713202))

(declare-fun m!6713770 () Bool)

(assert (=> bs!1353343 m!6713770))

(assert (=> bs!1353343 m!6713700))

(assert (=> b!5767564 d!1817177))

(declare-fun bs!1353344 () Bool)

(declare-fun d!1817179 () Bool)

(assert (= bs!1353344 (and d!1817179 b!5767564)))

(declare-fun lambda!313330 () Int)

(assert (=> bs!1353344 (= lambda!313330 lambda!313255)))

(declare-fun bs!1353345 () Bool)

(assert (= bs!1353345 (and d!1817179 b!5768229)))

(assert (=> bs!1353345 (not (= lambda!313330 lambda!313316))))

(assert (=> bs!1353344 (not (= lambda!313330 lambda!313256))))

(declare-fun bs!1353346 () Bool)

(assert (= bs!1353346 (and d!1817179 b!5768286)))

(assert (=> bs!1353346 (not (= lambda!313330 lambda!313318))))

(declare-fun bs!1353347 () Bool)

(assert (= bs!1353347 (and d!1817179 b!5768313)))

(assert (=> bs!1353347 (not (= lambda!313330 lambda!313319))))

(declare-fun bs!1353348 () Bool)

(assert (= bs!1353348 (and d!1817179 d!1817177)))

(assert (=> bs!1353348 (= lambda!313330 lambda!313325)))

(declare-fun bs!1353349 () Bool)

(assert (= bs!1353349 (and d!1817179 b!5768311)))

(assert (=> bs!1353349 (not (= lambda!313330 lambda!313320))))

(declare-fun bs!1353350 () Bool)

(assert (= bs!1353350 (and d!1817179 b!5768231)))

(assert (=> bs!1353350 (not (= lambda!313330 lambda!313315))))

(declare-fun bs!1353351 () Bool)

(assert (= bs!1353351 (and d!1817179 b!5768288)))

(assert (=> bs!1353351 (not (= lambda!313330 lambda!313317))))

(assert (=> d!1817179 true))

(assert (=> d!1817179 true))

(assert (=> d!1817179 true))

(declare-fun lambda!313331 () Int)

(assert (=> bs!1353344 (not (= lambda!313331 lambda!313255))))

(declare-fun bs!1353352 () Bool)

(assert (= bs!1353352 d!1817179))

(assert (=> bs!1353352 (not (= lambda!313331 lambda!313330))))

(assert (=> bs!1353345 (= lambda!313331 lambda!313316)))

(assert (=> bs!1353344 (= lambda!313331 lambda!313256)))

(assert (=> bs!1353346 (= (and (= (regOne!32070 r!7292) (regOne!32070 (regOne!32070 r!7292))) (= (regTwo!32070 r!7292) (regTwo!32070 (regOne!32070 r!7292)))) (= lambda!313331 lambda!313318))))

(assert (=> bs!1353347 (not (= lambda!313331 lambda!313319))))

(assert (=> bs!1353348 (not (= lambda!313331 lambda!313325))))

(assert (=> bs!1353349 (= (and (= (regOne!32070 r!7292) (regOne!32070 (regTwo!32070 r!7292))) (= (regTwo!32070 r!7292) (regTwo!32070 (regTwo!32070 r!7292)))) (= lambda!313331 lambda!313320))))

(assert (=> bs!1353350 (not (= lambda!313331 lambda!313315))))

(assert (=> bs!1353351 (not (= lambda!313331 lambda!313317))))

(assert (=> d!1817179 true))

(assert (=> d!1817179 true))

(assert (=> d!1817179 true))

(assert (=> d!1817179 (= (Exists!2879 lambda!313330) (Exists!2879 lambda!313331))))

(declare-fun lt!2289716 () Unit!156648)

(declare-fun choose!43758 (Regex!15779 Regex!15779 List!63637) Unit!156648)

(assert (=> d!1817179 (= lt!2289716 (choose!43758 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326))))

(assert (=> d!1817179 (validRegex!7515 (regOne!32070 r!7292))))

(assert (=> d!1817179 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1508 (regOne!32070 r!7292) (regTwo!32070 r!7292) s!2326) lt!2289716)))

(declare-fun m!6713772 () Bool)

(assert (=> bs!1353352 m!6713772))

(declare-fun m!6713774 () Bool)

(assert (=> bs!1353352 m!6713774))

(declare-fun m!6713776 () Bool)

(assert (=> bs!1353352 m!6713776))

(assert (=> bs!1353352 m!6713700))

(assert (=> b!5767564 d!1817179))

(declare-fun d!1817181 () Bool)

(declare-fun isEmpty!35410 (Option!15788) Bool)

(assert (=> d!1817181 (= (isDefined!12491 (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) Nil!63513 s!2326 s!2326)) (not (isEmpty!35410 (findConcatSeparation!2202 (regOne!32070 r!7292) (regTwo!32070 r!7292) Nil!63513 s!2326 s!2326))))))

(declare-fun bs!1353353 () Bool)

(assert (= bs!1353353 d!1817181))

(assert (=> bs!1353353 m!6713200))

(declare-fun m!6713778 () Bool)

(assert (=> bs!1353353 m!6713778))

(assert (=> b!5767564 d!1817181))

(declare-fun d!1817183 () Bool)

(assert (=> d!1817183 (= (nullable!5811 (regOne!32070 (regOne!32070 r!7292))) (nullableFct!1851 (regOne!32070 (regOne!32070 r!7292))))))

(declare-fun bs!1353354 () Bool)

(assert (= bs!1353354 d!1817183))

(declare-fun m!6713780 () Bool)

(assert (=> bs!1353354 m!6713780))

(assert (=> b!5767563 d!1817183))

(declare-fun b!5768391 () Bool)

(declare-fun e!3543904 () Bool)

(declare-fun tp!1593918 () Bool)

(declare-fun tp!1593919 () Bool)

(assert (=> b!5768391 (= e!3543904 (and tp!1593918 tp!1593919))))

(declare-fun b!5768390 () Bool)

(declare-fun tp!1593915 () Bool)

(assert (=> b!5768390 (= e!3543904 tp!1593915)))

(declare-fun b!5768389 () Bool)

(declare-fun tp!1593916 () Bool)

(declare-fun tp!1593917 () Bool)

(assert (=> b!5768389 (= e!3543904 (and tp!1593916 tp!1593917))))

(assert (=> b!5767565 (= tp!1593839 e!3543904)))

(declare-fun b!5768388 () Bool)

(assert (=> b!5768388 (= e!3543904 tp_is_empty!40811)))

(assert (= (and b!5767565 ((_ is ElementMatch!15779) (regOne!32070 r!7292))) b!5768388))

(assert (= (and b!5767565 ((_ is Concat!24624) (regOne!32070 r!7292))) b!5768389))

(assert (= (and b!5767565 ((_ is Star!15779) (regOne!32070 r!7292))) b!5768390))

(assert (= (and b!5767565 ((_ is Union!15779) (regOne!32070 r!7292))) b!5768391))

(declare-fun b!5768395 () Bool)

(declare-fun e!3543905 () Bool)

(declare-fun tp!1593923 () Bool)

(declare-fun tp!1593924 () Bool)

(assert (=> b!5768395 (= e!3543905 (and tp!1593923 tp!1593924))))

(declare-fun b!5768394 () Bool)

(declare-fun tp!1593920 () Bool)

(assert (=> b!5768394 (= e!3543905 tp!1593920)))

(declare-fun b!5768393 () Bool)

(declare-fun tp!1593921 () Bool)

(declare-fun tp!1593922 () Bool)

(assert (=> b!5768393 (= e!3543905 (and tp!1593921 tp!1593922))))

(assert (=> b!5767565 (= tp!1593845 e!3543905)))

(declare-fun b!5768392 () Bool)

(assert (=> b!5768392 (= e!3543905 tp_is_empty!40811)))

(assert (= (and b!5767565 ((_ is ElementMatch!15779) (regTwo!32070 r!7292))) b!5768392))

(assert (= (and b!5767565 ((_ is Concat!24624) (regTwo!32070 r!7292))) b!5768393))

(assert (= (and b!5767565 ((_ is Star!15779) (regTwo!32070 r!7292))) b!5768394))

(assert (= (and b!5767565 ((_ is Union!15779) (regTwo!32070 r!7292))) b!5768395))

(declare-fun b!5768399 () Bool)

(declare-fun e!3543906 () Bool)

(declare-fun tp!1593928 () Bool)

(declare-fun tp!1593929 () Bool)

(assert (=> b!5768399 (= e!3543906 (and tp!1593928 tp!1593929))))

(declare-fun b!5768398 () Bool)

(declare-fun tp!1593925 () Bool)

(assert (=> b!5768398 (= e!3543906 tp!1593925)))

(declare-fun b!5768397 () Bool)

(declare-fun tp!1593926 () Bool)

(declare-fun tp!1593927 () Bool)

(assert (=> b!5768397 (= e!3543906 (and tp!1593926 tp!1593927))))

(assert (=> b!5767550 (= tp!1593846 e!3543906)))

(declare-fun b!5768396 () Bool)

(assert (=> b!5768396 (= e!3543906 tp_is_empty!40811)))

(assert (= (and b!5767550 ((_ is ElementMatch!15779) (regOne!32071 r!7292))) b!5768396))

(assert (= (and b!5767550 ((_ is Concat!24624) (regOne!32071 r!7292))) b!5768397))

(assert (= (and b!5767550 ((_ is Star!15779) (regOne!32071 r!7292))) b!5768398))

(assert (= (and b!5767550 ((_ is Union!15779) (regOne!32071 r!7292))) b!5768399))

(declare-fun b!5768403 () Bool)

(declare-fun e!3543907 () Bool)

(declare-fun tp!1593933 () Bool)

(declare-fun tp!1593934 () Bool)

(assert (=> b!5768403 (= e!3543907 (and tp!1593933 tp!1593934))))

(declare-fun b!5768402 () Bool)

(declare-fun tp!1593930 () Bool)

(assert (=> b!5768402 (= e!3543907 tp!1593930)))

(declare-fun b!5768401 () Bool)

(declare-fun tp!1593931 () Bool)

(declare-fun tp!1593932 () Bool)

(assert (=> b!5768401 (= e!3543907 (and tp!1593931 tp!1593932))))

(assert (=> b!5767550 (= tp!1593844 e!3543907)))

(declare-fun b!5768400 () Bool)

(assert (=> b!5768400 (= e!3543907 tp_is_empty!40811)))

(assert (= (and b!5767550 ((_ is ElementMatch!15779) (regTwo!32071 r!7292))) b!5768400))

(assert (= (and b!5767550 ((_ is Concat!24624) (regTwo!32071 r!7292))) b!5768401))

(assert (= (and b!5767550 ((_ is Star!15779) (regTwo!32071 r!7292))) b!5768402))

(assert (= (and b!5767550 ((_ is Union!15779) (regTwo!32071 r!7292))) b!5768403))

(declare-fun condSetEmpty!38757 () Bool)

(assert (=> setNonEmpty!38751 (= condSetEmpty!38757 (= setRest!38751 ((as const (Array Context!10326 Bool)) false)))))

(declare-fun setRes!38757 () Bool)

(assert (=> setNonEmpty!38751 (= tp!1593841 setRes!38757)))

(declare-fun setIsEmpty!38757 () Bool)

(assert (=> setIsEmpty!38757 setRes!38757))

(declare-fun e!3543910 () Bool)

(declare-fun setElem!38757 () Context!10326)

(declare-fun tp!1593940 () Bool)

(declare-fun setNonEmpty!38757 () Bool)

(assert (=> setNonEmpty!38757 (= setRes!38757 (and tp!1593940 (inv!82694 setElem!38757) e!3543910))))

(declare-fun setRest!38757 () (InoxSet Context!10326))

(assert (=> setNonEmpty!38757 (= setRest!38751 ((_ map or) (store ((as const (Array Context!10326 Bool)) false) setElem!38757 true) setRest!38757))))

(declare-fun b!5768408 () Bool)

(declare-fun tp!1593939 () Bool)

(assert (=> b!5768408 (= e!3543910 tp!1593939)))

(assert (= (and setNonEmpty!38751 condSetEmpty!38757) setIsEmpty!38757))

(assert (= (and setNonEmpty!38751 (not condSetEmpty!38757)) setNonEmpty!38757))

(assert (= setNonEmpty!38757 b!5768408))

(declare-fun m!6713782 () Bool)

(assert (=> setNonEmpty!38757 m!6713782))

(declare-fun b!5768413 () Bool)

(declare-fun e!3543913 () Bool)

(declare-fun tp!1593945 () Bool)

(declare-fun tp!1593946 () Bool)

(assert (=> b!5768413 (= e!3543913 (and tp!1593945 tp!1593946))))

(assert (=> b!5767557 (= tp!1593840 e!3543913)))

(assert (= (and b!5767557 ((_ is Cons!63512) (exprs!5663 (h!69962 zl!343)))) b!5768413))

(declare-fun b!5768421 () Bool)

(declare-fun e!3543919 () Bool)

(declare-fun tp!1593951 () Bool)

(assert (=> b!5768421 (= e!3543919 tp!1593951)))

(declare-fun e!3543918 () Bool)

(declare-fun b!5768420 () Bool)

(declare-fun tp!1593952 () Bool)

(assert (=> b!5768420 (= e!3543918 (and (inv!82694 (h!69962 (t!376976 zl!343))) e!3543919 tp!1593952))))

(assert (=> b!5767546 (= tp!1593843 e!3543918)))

(assert (= b!5768420 b!5768421))

(assert (= (and b!5767546 ((_ is Cons!63514) (t!376976 zl!343))) b!5768420))

(declare-fun m!6713784 () Bool)

(assert (=> b!5768420 m!6713784))

(declare-fun b!5768425 () Bool)

(declare-fun e!3543920 () Bool)

(declare-fun tp!1593956 () Bool)

(declare-fun tp!1593957 () Bool)

(assert (=> b!5768425 (= e!3543920 (and tp!1593956 tp!1593957))))

(declare-fun b!5768424 () Bool)

(declare-fun tp!1593953 () Bool)

(assert (=> b!5768424 (= e!3543920 tp!1593953)))

(declare-fun b!5768423 () Bool)

(declare-fun tp!1593954 () Bool)

(declare-fun tp!1593955 () Bool)

(assert (=> b!5768423 (= e!3543920 (and tp!1593954 tp!1593955))))

(assert (=> b!5767566 (= tp!1593837 e!3543920)))

(declare-fun b!5768422 () Bool)

(assert (=> b!5768422 (= e!3543920 tp_is_empty!40811)))

(assert (= (and b!5767566 ((_ is ElementMatch!15779) (reg!16108 r!7292))) b!5768422))

(assert (= (and b!5767566 ((_ is Concat!24624) (reg!16108 r!7292))) b!5768423))

(assert (= (and b!5767566 ((_ is Star!15779) (reg!16108 r!7292))) b!5768424))

(assert (= (and b!5767566 ((_ is Union!15779) (reg!16108 r!7292))) b!5768425))

(declare-fun b!5768426 () Bool)

(declare-fun e!3543921 () Bool)

(declare-fun tp!1593958 () Bool)

(declare-fun tp!1593959 () Bool)

(assert (=> b!5768426 (= e!3543921 (and tp!1593958 tp!1593959))))

(assert (=> b!5767547 (= tp!1593838 e!3543921)))

(assert (= (and b!5767547 ((_ is Cons!63512) (exprs!5663 setElem!38751))) b!5768426))

(declare-fun b!5768431 () Bool)

(declare-fun e!3543924 () Bool)

(declare-fun tp!1593962 () Bool)

(assert (=> b!5768431 (= e!3543924 (and tp_is_empty!40811 tp!1593962))))

(assert (=> b!5767543 (= tp!1593842 e!3543924)))

(assert (= (and b!5767543 ((_ is Cons!63513) (t!376975 s!2326))) b!5768431))

(declare-fun b_lambda!217739 () Bool)

(assert (= b_lambda!217737 (or b!5767549 b_lambda!217739)))

(declare-fun bs!1353355 () Bool)

(declare-fun d!1817185 () Bool)

(assert (= bs!1353355 (and d!1817185 b!5767549)))

(assert (=> bs!1353355 (= (dynLambda!24865 lambda!313257 lt!2289585) (derivationStepZipperUp!1047 lt!2289585 (h!69961 s!2326)))))

(assert (=> bs!1353355 m!6713214))

(assert (=> d!1817159 d!1817185))

(declare-fun b_lambda!217741 () Bool)

(assert (= b_lambda!217731 (or b!5767549 b_lambda!217741)))

(declare-fun bs!1353356 () Bool)

(declare-fun d!1817187 () Bool)

(assert (= bs!1353356 (and d!1817187 b!5767549)))

(assert (=> bs!1353356 (= (dynLambda!24865 lambda!313257 (h!69962 zl!343)) (derivationStepZipperUp!1047 (h!69962 zl!343) (h!69961 s!2326)))))

(assert (=> bs!1353356 m!6713226))

(assert (=> d!1817105 d!1817187))

(check-sat (not bm!443134) (not b!5767872) (not bm!443158) (not b!5768003) (not d!1817057) (not b!5768431) (not b!5767874) (not b!5767974) (not b!5767737) (not b!5768335) (not b!5768000) (not b!5767733) (not b!5768279) (not b!5768234) (not b!5768338) (not bm!443139) (not b!5768281) (not d!1817167) (not b!5768283) (not b!5768100) (not bm!443092) (not b!5768309) (not bm!443156) (not d!1817119) (not d!1817013) (not b!5768359) (not b!5767739) (not bm!443140) (not d!1817011) (not b!5768230) (not b!5767645) (not b!5768357) (not b!5767975) (not b!5767971) (not b!5768312) (not b!5768403) (not bm!443162) (not d!1817099) (not d!1817083) (not bm!443078) (not b!5767928) (not b!5768402) (not b!5768087) (not b!5768278) (not b!5767734) (not b!5767602) (not b!5768389) (not b!5768420) (not d!1817175) (not b!5767735) (not b!5767873) (not b!5768425) (not b!5767759) (not bm!443161) (not b!5767603) (not d!1817133) (not d!1817163) (not bm!443141) (not bm!443132) (not bm!443159) (not b!5767598) (not d!1817171) (not b_lambda!217741) (not b!5768089) (not d!1817143) (not b!5768282) (not b!5768280) (not d!1817081) (not b!5768277) (not b!5768307) (not d!1817161) (not d!1817105) (not b!5768284) (not setNonEmpty!38757) (not d!1817179) (not b!5768399) (not d!1817137) (not b_lambda!217739) (not b!5768331) (not bm!443131) (not b!5768391) (not b!5768002) (not bm!443157) (not b!5768326) (not d!1816989) (not b!5768306) (not d!1817157) tp_is_empty!40811 (not d!1817181) (not d!1817153) (not b!5768397) (not d!1817173) (not b!5768094) (not b!5767607) (not b!5768062) (not b!5767968) (not b!5768333) (not b!5768360) (not d!1817067) (not b!5767999) (not b!5767973) (not d!1817159) (not b!5768390) (not d!1817155) (not b!5768287) (not b!5768421) (not d!1817007) (not b!5767605) (not d!1817151) (not bm!443155) (not b!5768423) (not b!5768424) (not bm!443163) (not b!5768308) (not d!1817139) (not b!5768285) (not b!5768398) (not b!5768310) (not b!5768426) (not b!5768092) (not b!5767970) (not b!5768332) (not b!5768363) (not b!5767871) (not b!5768365) (not b!5768275) (not d!1817065) (not d!1817127) (not b!5768334) (not d!1817135) (not bs!1353355) (not d!1817149) (not bm!443077) (not b!5767929) (not b!5768401) (not b!5768413) (not d!1817043) (not b!5767732) (not b!5768301) (not b!5768102) (not b!5767866) (not b!5768364) (not b!5768001) (not b!5768316) (not bm!443160) (not b!5768395) (not b!5767606) (not b!5768291) (not b!5768408) (not b!5768276) (not b!5768394) (not b!5767875) (not d!1817177) (not d!1817183) (not d!1817001) (not b!5767740) (not d!1817145) (not bs!1353356) (not d!1817101) (not b!5768270) (not b!5768393) (not b!5767966) (not b!5767600))
(check-sat)
