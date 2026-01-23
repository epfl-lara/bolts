; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591584 () Bool)

(assert start!591584)

(declare-fun b!5756736 () Bool)

(assert (=> b!5756736 true))

(assert (=> b!5756736 true))

(declare-fun lambda!312560 () Int)

(declare-fun lambda!312559 () Int)

(assert (=> b!5756736 (not (= lambda!312560 lambda!312559))))

(assert (=> b!5756736 true))

(assert (=> b!5756736 true))

(declare-fun b!5756728 () Bool)

(assert (=> b!5756728 true))

(declare-fun b!5756724 () Bool)

(declare-fun e!3537644 () Bool)

(declare-fun tp!1590672 () Bool)

(declare-fun tp!1590666 () Bool)

(assert (=> b!5756724 (= e!3537644 (and tp!1590672 tp!1590666))))

(declare-fun b!5756725 () Bool)

(declare-fun res!2430332 () Bool)

(declare-fun e!3537641 () Bool)

(assert (=> b!5756725 (=> res!2430332 e!3537641)))

(declare-datatypes ((C!31808 0))(
  ( (C!31809 (val!25606 Int)) )
))
(declare-datatypes ((Regex!15769 0))(
  ( (ElementMatch!15769 (c!1017281 C!31808)) (Concat!24614 (regOne!32050 Regex!15769) (regTwo!32050 Regex!15769)) (EmptyExpr!15769) (Star!15769 (reg!16098 Regex!15769)) (EmptyLang!15769) (Union!15769 (regOne!32051 Regex!15769) (regTwo!32051 Regex!15769)) )
))
(declare-fun r!7292 () Regex!15769)

(get-info :version)

(assert (=> b!5756725 (= res!2430332 (or ((_ is Concat!24614) (regOne!32050 r!7292)) ((_ is Star!15769) (regOne!32050 r!7292)) (not ((_ is EmptyExpr!15769) (regOne!32050 r!7292)))))))

(declare-fun b!5756726 () Bool)

(declare-datatypes ((Unit!156608 0))(
  ( (Unit!156609) )
))
(declare-fun e!3537646 () Unit!156608)

(declare-fun Unit!156610 () Unit!156608)

(assert (=> b!5756726 (= e!3537646 Unit!156610)))

(declare-fun b!5756727 () Bool)

(declare-fun res!2430333 () Bool)

(declare-fun e!3537639 () Bool)

(assert (=> b!5756727 (=> res!2430333 e!3537639)))

(declare-datatypes ((List!63606 0))(
  ( (Nil!63482) (Cons!63482 (h!69930 Regex!15769) (t!376938 List!63606)) )
))
(declare-datatypes ((Context!10306 0))(
  ( (Context!10307 (exprs!5653 List!63606)) )
))
(declare-datatypes ((List!63607 0))(
  ( (Nil!63483) (Cons!63483 (h!69931 Context!10306) (t!376939 List!63607)) )
))
(declare-fun zl!343 () List!63607)

(declare-fun generalisedConcat!1384 (List!63606) Regex!15769)

(assert (=> b!5756727 (= res!2430333 (not (= r!7292 (generalisedConcat!1384 (exprs!5653 (h!69931 zl!343))))))))

(declare-fun e!3537636 () Bool)

(assert (=> b!5756728 (= e!3537636 e!3537641)))

(declare-fun res!2430334 () Bool)

(assert (=> b!5756728 (=> res!2430334 e!3537641)))

(declare-datatypes ((List!63608 0))(
  ( (Nil!63484) (Cons!63484 (h!69932 C!31808) (t!376940 List!63608)) )
))
(declare-fun s!2326 () List!63608)

(assert (=> b!5756728 (= res!2430334 (or (and ((_ is ElementMatch!15769) (regOne!32050 r!7292)) (= (c!1017281 (regOne!32050 r!7292)) (h!69932 s!2326))) ((_ is Union!15769) (regOne!32050 r!7292))))))

(declare-fun lt!2288353 () Unit!156608)

(assert (=> b!5756728 (= lt!2288353 e!3537646)))

(declare-fun c!1017280 () Bool)

(declare-fun nullable!5801 (Regex!15769) Bool)

(assert (=> b!5756728 (= c!1017280 (nullable!5801 (h!69930 (exprs!5653 (h!69931 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10306))

(declare-fun lambda!312561 () Int)

(declare-fun flatMap!1382 ((InoxSet Context!10306) Int) (InoxSet Context!10306))

(declare-fun derivationStepZipperUp!1037 (Context!10306 C!31808) (InoxSet Context!10306))

(assert (=> b!5756728 (= (flatMap!1382 z!1189 lambda!312561) (derivationStepZipperUp!1037 (h!69931 zl!343) (h!69932 s!2326)))))

(declare-fun lt!2288362 () Unit!156608)

(declare-fun lemmaFlatMapOnSingletonSet!914 ((InoxSet Context!10306) Context!10306 Int) Unit!156608)

(assert (=> b!5756728 (= lt!2288362 (lemmaFlatMapOnSingletonSet!914 z!1189 (h!69931 zl!343) lambda!312561))))

(declare-fun lt!2288358 () (InoxSet Context!10306))

(declare-fun lt!2288363 () Context!10306)

(assert (=> b!5756728 (= lt!2288358 (derivationStepZipperUp!1037 lt!2288363 (h!69932 s!2326)))))

(declare-fun lt!2288359 () (InoxSet Context!10306))

(declare-fun derivationStepZipperDown!1111 (Regex!15769 Context!10306 C!31808) (InoxSet Context!10306))

(assert (=> b!5756728 (= lt!2288359 (derivationStepZipperDown!1111 (h!69930 (exprs!5653 (h!69931 zl!343))) lt!2288363 (h!69932 s!2326)))))

(assert (=> b!5756728 (= lt!2288363 (Context!10307 (t!376938 (exprs!5653 (h!69931 zl!343)))))))

(declare-fun lt!2288355 () (InoxSet Context!10306))

(assert (=> b!5756728 (= lt!2288355 (derivationStepZipperUp!1037 (Context!10307 (Cons!63482 (h!69930 (exprs!5653 (h!69931 zl!343))) (t!376938 (exprs!5653 (h!69931 zl!343))))) (h!69932 s!2326)))))

(declare-fun b!5756729 () Bool)

(declare-fun e!3537640 () Bool)

(assert (=> b!5756729 (= e!3537640 (not e!3537639))))

(declare-fun res!2430325 () Bool)

(assert (=> b!5756729 (=> res!2430325 e!3537639)))

(assert (=> b!5756729 (= res!2430325 (not ((_ is Cons!63483) zl!343)))))

(declare-fun lt!2288354 () Bool)

(declare-fun matchRSpec!2872 (Regex!15769 List!63608) Bool)

(assert (=> b!5756729 (= lt!2288354 (matchRSpec!2872 r!7292 s!2326))))

(declare-fun matchR!7954 (Regex!15769 List!63608) Bool)

(assert (=> b!5756729 (= lt!2288354 (matchR!7954 r!7292 s!2326))))

(declare-fun lt!2288352 () Unit!156608)

(declare-fun mainMatchTheorem!2872 (Regex!15769 List!63608) Unit!156608)

(assert (=> b!5756729 (= lt!2288352 (mainMatchTheorem!2872 r!7292 s!2326))))

(declare-fun b!5756730 () Bool)

(declare-fun tp!1590667 () Bool)

(assert (=> b!5756730 (= e!3537644 tp!1590667)))

(declare-fun tp!1590669 () Bool)

(declare-fun e!3537643 () Bool)

(declare-fun e!3537637 () Bool)

(declare-fun b!5756731 () Bool)

(declare-fun inv!82669 (Context!10306) Bool)

(assert (=> b!5756731 (= e!3537643 (and (inv!82669 (h!69931 zl!343)) e!3537637 tp!1590669))))

(declare-fun b!5756732 () Bool)

(declare-fun e!3537645 () Bool)

(assert (=> b!5756732 (= e!3537645 (nullable!5801 (regOne!32050 (regOne!32050 r!7292))))))

(declare-fun b!5756733 () Bool)

(declare-fun res!2430336 () Bool)

(assert (=> b!5756733 (=> (not res!2430336) (not e!3537640))))

(declare-fun unfocusZipper!1511 (List!63607) Regex!15769)

(assert (=> b!5756733 (= res!2430336 (= r!7292 (unfocusZipper!1511 zl!343)))))

(declare-fun b!5756734 () Bool)

(declare-fun res!2430337 () Bool)

(assert (=> b!5756734 (=> res!2430337 e!3537636)))

(declare-fun isEmpty!35369 (List!63606) Bool)

(assert (=> b!5756734 (= res!2430337 (isEmpty!35369 (t!376938 (exprs!5653 (h!69931 zl!343)))))))

(declare-fun b!5756735 () Bool)

(declare-fun res!2430328 () Bool)

(assert (=> b!5756735 (=> res!2430328 e!3537641)))

(assert (=> b!5756735 (= res!2430328 e!3537645)))

(declare-fun res!2430323 () Bool)

(assert (=> b!5756735 (=> (not res!2430323) (not e!3537645))))

(assert (=> b!5756735 (= res!2430323 ((_ is Concat!24614) (regOne!32050 r!7292)))))

(assert (=> b!5756736 (= e!3537639 e!3537636)))

(declare-fun res!2430335 () Bool)

(assert (=> b!5756736 (=> res!2430335 e!3537636)))

(declare-fun lt!2288361 () Bool)

(assert (=> b!5756736 (= res!2430335 (or (not (= lt!2288354 lt!2288361)) ((_ is Nil!63484) s!2326)))))

(declare-fun Exists!2869 (Int) Bool)

(assert (=> b!5756736 (= (Exists!2869 lambda!312559) (Exists!2869 lambda!312560))))

(declare-fun lt!2288364 () Unit!156608)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1498 (Regex!15769 Regex!15769 List!63608) Unit!156608)

(assert (=> b!5756736 (= lt!2288364 (lemmaExistCutMatchRandMatchRSpecEquivalent!1498 (regOne!32050 r!7292) (regTwo!32050 r!7292) s!2326))))

(assert (=> b!5756736 (= lt!2288361 (Exists!2869 lambda!312559))))

(declare-datatypes ((tuple2!65732 0))(
  ( (tuple2!65733 (_1!36169 List!63608) (_2!36169 List!63608)) )
))
(declare-datatypes ((Option!15778 0))(
  ( (None!15777) (Some!15777 (v!51834 tuple2!65732)) )
))
(declare-fun isDefined!12481 (Option!15778) Bool)

(declare-fun findConcatSeparation!2192 (Regex!15769 Regex!15769 List!63608 List!63608 List!63608) Option!15778)

(assert (=> b!5756736 (= lt!2288361 (isDefined!12481 (findConcatSeparation!2192 (regOne!32050 r!7292) (regTwo!32050 r!7292) Nil!63484 s!2326 s!2326)))))

(declare-fun lt!2288357 () Unit!156608)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1956 (Regex!15769 Regex!15769 List!63608) Unit!156608)

(assert (=> b!5756736 (= lt!2288357 (lemmaFindConcatSeparationEquivalentToExists!1956 (regOne!32050 r!7292) (regTwo!32050 r!7292) s!2326))))

(declare-fun b!5756737 () Bool)

(declare-fun tp!1590671 () Bool)

(declare-fun tp!1590670 () Bool)

(assert (=> b!5756737 (= e!3537644 (and tp!1590671 tp!1590670))))

(declare-fun setElem!38665 () Context!10306)

(declare-fun setRes!38665 () Bool)

(declare-fun tp!1590674 () Bool)

(declare-fun e!3537638 () Bool)

(declare-fun setNonEmpty!38665 () Bool)

(assert (=> setNonEmpty!38665 (= setRes!38665 (and tp!1590674 (inv!82669 setElem!38665) e!3537638))))

(declare-fun setRest!38665 () (InoxSet Context!10306))

(assert (=> setNonEmpty!38665 (= z!1189 ((_ map or) (store ((as const (Array Context!10306 Bool)) false) setElem!38665 true) setRest!38665))))

(declare-fun b!5756738 () Bool)

(declare-fun tp_is_empty!40791 () Bool)

(assert (=> b!5756738 (= e!3537644 tp_is_empty!40791)))

(declare-fun b!5756739 () Bool)

(declare-fun tp!1590673 () Bool)

(assert (=> b!5756739 (= e!3537638 tp!1590673)))

(declare-fun b!5756740 () Bool)

(declare-fun tp!1590668 () Bool)

(assert (=> b!5756740 (= e!3537637 tp!1590668)))

(declare-fun b!5756741 () Bool)

(declare-fun res!2430330 () Bool)

(assert (=> b!5756741 (=> res!2430330 e!3537639)))

(assert (=> b!5756741 (= res!2430330 (not ((_ is Cons!63482) (exprs!5653 (h!69931 zl!343)))))))

(declare-fun b!5756742 () Bool)

(declare-fun res!2430324 () Bool)

(assert (=> b!5756742 (=> res!2430324 e!3537639)))

(declare-fun isEmpty!35370 (List!63607) Bool)

(assert (=> b!5756742 (= res!2430324 (not (isEmpty!35370 (t!376939 zl!343))))))

(declare-fun b!5756743 () Bool)

(declare-fun Unit!156611 () Unit!156608)

(assert (=> b!5756743 (= e!3537646 Unit!156611)))

(declare-fun lt!2288360 () Unit!156608)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!794 ((InoxSet Context!10306) (InoxSet Context!10306) List!63608) Unit!156608)

(assert (=> b!5756743 (= lt!2288360 (lemmaZipperConcatMatchesSameAsBothZippers!794 lt!2288359 lt!2288358 (t!376940 s!2326)))))

(declare-fun res!2430327 () Bool)

(declare-fun matchZipper!1907 ((InoxSet Context!10306) List!63608) Bool)

(assert (=> b!5756743 (= res!2430327 (matchZipper!1907 lt!2288359 (t!376940 s!2326)))))

(declare-fun e!3537642 () Bool)

(assert (=> b!5756743 (=> res!2430327 e!3537642)))

(assert (=> b!5756743 (= (matchZipper!1907 ((_ map or) lt!2288359 lt!2288358) (t!376940 s!2326)) e!3537642)))

(declare-fun res!2430322 () Bool)

(assert (=> start!591584 (=> (not res!2430322) (not e!3537640))))

(declare-fun validRegex!7505 (Regex!15769) Bool)

(assert (=> start!591584 (= res!2430322 (validRegex!7505 r!7292))))

(assert (=> start!591584 e!3537640))

(assert (=> start!591584 e!3537644))

(declare-fun condSetEmpty!38665 () Bool)

(assert (=> start!591584 (= condSetEmpty!38665 (= z!1189 ((as const (Array Context!10306 Bool)) false)))))

(assert (=> start!591584 setRes!38665))

(assert (=> start!591584 e!3537643))

(declare-fun e!3537635 () Bool)

(assert (=> start!591584 e!3537635))

(declare-fun b!5756744 () Bool)

(declare-fun res!2430326 () Bool)

(assert (=> b!5756744 (=> res!2430326 e!3537639)))

(declare-fun generalisedUnion!1632 (List!63606) Regex!15769)

(declare-fun unfocusZipperList!1197 (List!63607) List!63606)

(assert (=> b!5756744 (= res!2430326 (not (= r!7292 (generalisedUnion!1632 (unfocusZipperList!1197 zl!343)))))))

(declare-fun b!5756745 () Bool)

(declare-fun res!2430331 () Bool)

(assert (=> b!5756745 (=> (not res!2430331) (not e!3537640))))

(declare-fun toList!9553 ((InoxSet Context!10306)) List!63607)

(assert (=> b!5756745 (= res!2430331 (= (toList!9553 z!1189) zl!343))))

(declare-fun b!5756746 () Bool)

(assert (=> b!5756746 (= e!3537642 (matchZipper!1907 lt!2288358 (t!376940 s!2326)))))

(declare-fun b!5756747 () Bool)

(assert (=> b!5756747 (= e!3537641 (or (not (= lt!2288359 ((as const (Array Context!10306 Bool)) false))) (not (= r!7292 (Concat!24614 (regOne!32050 r!7292) (regTwo!32050 r!7292)))) (= (regOne!32050 r!7292) EmptyExpr!15769)))))

(assert (=> b!5756747 (not (matchZipper!1907 lt!2288359 (t!376940 s!2326)))))

(declare-fun lt!2288356 () Unit!156608)

(declare-fun lemmaEmptyZipperMatchesNothing!54 ((InoxSet Context!10306) List!63608) Unit!156608)

(assert (=> b!5756747 (= lt!2288356 (lemmaEmptyZipperMatchesNothing!54 lt!2288359 (t!376940 s!2326)))))

(declare-fun setIsEmpty!38665 () Bool)

(assert (=> setIsEmpty!38665 setRes!38665))

(declare-fun b!5756748 () Bool)

(declare-fun res!2430329 () Bool)

(assert (=> b!5756748 (=> res!2430329 e!3537639)))

(assert (=> b!5756748 (= res!2430329 (or ((_ is EmptyExpr!15769) r!7292) ((_ is EmptyLang!15769) r!7292) ((_ is ElementMatch!15769) r!7292) ((_ is Union!15769) r!7292) (not ((_ is Concat!24614) r!7292))))))

(declare-fun b!5756749 () Bool)

(declare-fun tp!1590665 () Bool)

(assert (=> b!5756749 (= e!3537635 (and tp_is_empty!40791 tp!1590665))))

(assert (= (and start!591584 res!2430322) b!5756745))

(assert (= (and b!5756745 res!2430331) b!5756733))

(assert (= (and b!5756733 res!2430336) b!5756729))

(assert (= (and b!5756729 (not res!2430325)) b!5756742))

(assert (= (and b!5756742 (not res!2430324)) b!5756727))

(assert (= (and b!5756727 (not res!2430333)) b!5756741))

(assert (= (and b!5756741 (not res!2430330)) b!5756744))

(assert (= (and b!5756744 (not res!2430326)) b!5756748))

(assert (= (and b!5756748 (not res!2430329)) b!5756736))

(assert (= (and b!5756736 (not res!2430335)) b!5756734))

(assert (= (and b!5756734 (not res!2430337)) b!5756728))

(assert (= (and b!5756728 c!1017280) b!5756743))

(assert (= (and b!5756728 (not c!1017280)) b!5756726))

(assert (= (and b!5756743 (not res!2430327)) b!5756746))

(assert (= (and b!5756728 (not res!2430334)) b!5756735))

(assert (= (and b!5756735 res!2430323) b!5756732))

(assert (= (and b!5756735 (not res!2430328)) b!5756725))

(assert (= (and b!5756725 (not res!2430332)) b!5756747))

(assert (= (and start!591584 ((_ is ElementMatch!15769) r!7292)) b!5756738))

(assert (= (and start!591584 ((_ is Concat!24614) r!7292)) b!5756737))

(assert (= (and start!591584 ((_ is Star!15769) r!7292)) b!5756730))

(assert (= (and start!591584 ((_ is Union!15769) r!7292)) b!5756724))

(assert (= (and start!591584 condSetEmpty!38665) setIsEmpty!38665))

(assert (= (and start!591584 (not condSetEmpty!38665)) setNonEmpty!38665))

(assert (= setNonEmpty!38665 b!5756739))

(assert (= b!5756731 b!5756740))

(assert (= (and start!591584 ((_ is Cons!63483) zl!343)) b!5756731))

(assert (= (and start!591584 ((_ is Cons!63484) s!2326)) b!5756749))

(declare-fun m!6705586 () Bool)

(assert (=> start!591584 m!6705586))

(declare-fun m!6705588 () Bool)

(assert (=> b!5756744 m!6705588))

(assert (=> b!5756744 m!6705588))

(declare-fun m!6705590 () Bool)

(assert (=> b!5756744 m!6705590))

(declare-fun m!6705592 () Bool)

(assert (=> b!5756734 m!6705592))

(declare-fun m!6705594 () Bool)

(assert (=> b!5756733 m!6705594))

(declare-fun m!6705596 () Bool)

(assert (=> b!5756727 m!6705596))

(declare-fun m!6705598 () Bool)

(assert (=> b!5756745 m!6705598))

(declare-fun m!6705600 () Bool)

(assert (=> b!5756742 m!6705600))

(declare-fun m!6705602 () Bool)

(assert (=> b!5756729 m!6705602))

(declare-fun m!6705604 () Bool)

(assert (=> b!5756729 m!6705604))

(declare-fun m!6705606 () Bool)

(assert (=> b!5756729 m!6705606))

(declare-fun m!6705608 () Bool)

(assert (=> b!5756732 m!6705608))

(declare-fun m!6705610 () Bool)

(assert (=> b!5756746 m!6705610))

(declare-fun m!6705612 () Bool)

(assert (=> b!5756743 m!6705612))

(declare-fun m!6705614 () Bool)

(assert (=> b!5756743 m!6705614))

(declare-fun m!6705616 () Bool)

(assert (=> b!5756743 m!6705616))

(declare-fun m!6705618 () Bool)

(assert (=> b!5756728 m!6705618))

(declare-fun m!6705620 () Bool)

(assert (=> b!5756728 m!6705620))

(declare-fun m!6705622 () Bool)

(assert (=> b!5756728 m!6705622))

(declare-fun m!6705624 () Bool)

(assert (=> b!5756728 m!6705624))

(declare-fun m!6705626 () Bool)

(assert (=> b!5756728 m!6705626))

(declare-fun m!6705628 () Bool)

(assert (=> b!5756728 m!6705628))

(declare-fun m!6705630 () Bool)

(assert (=> b!5756728 m!6705630))

(declare-fun m!6705632 () Bool)

(assert (=> b!5756731 m!6705632))

(declare-fun m!6705634 () Bool)

(assert (=> setNonEmpty!38665 m!6705634))

(declare-fun m!6705636 () Bool)

(assert (=> b!5756736 m!6705636))

(declare-fun m!6705638 () Bool)

(assert (=> b!5756736 m!6705638))

(declare-fun m!6705640 () Bool)

(assert (=> b!5756736 m!6705640))

(declare-fun m!6705642 () Bool)

(assert (=> b!5756736 m!6705642))

(assert (=> b!5756736 m!6705636))

(declare-fun m!6705644 () Bool)

(assert (=> b!5756736 m!6705644))

(declare-fun m!6705646 () Bool)

(assert (=> b!5756736 m!6705646))

(assert (=> b!5756736 m!6705646))

(assert (=> b!5756747 m!6705614))

(declare-fun m!6705648 () Bool)

(assert (=> b!5756747 m!6705648))

(check-sat (not b!5756737) (not b!5756743) (not b!5756727) (not b!5756731) (not b!5756734) (not b!5756749) (not b!5756736) (not b!5756730) (not b!5756746) (not b!5756739) (not b!5756728) (not setNonEmpty!38665) (not b!5756729) (not b!5756742) (not b!5756745) (not b!5756732) tp_is_empty!40791 (not start!591584) (not b!5756733) (not b!5756744) (not b!5756747) (not b!5756740) (not b!5756724))
(check-sat)
