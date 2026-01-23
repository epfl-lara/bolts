; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676322 () Bool)

(assert start!676322)

(declare-fun b!7016764 () Bool)

(assert (=> b!7016764 true))

(declare-fun b!7016756 () Bool)

(assert (=> b!7016756 true))

(declare-fun b!7016763 () Bool)

(assert (=> b!7016763 true))

(declare-fun b!7016753 () Bool)

(declare-fun e!4217924 () Bool)

(declare-fun tp!1933330 () Bool)

(assert (=> b!7016753 (= e!4217924 tp!1933330)))

(declare-fun b!7016754 () Bool)

(declare-fun res!2863748 () Bool)

(declare-fun e!4217922 () Bool)

(assert (=> b!7016754 (=> res!2863748 e!4217922)))

(declare-datatypes ((C!34980 0))(
  ( (C!34981 (val!27192 Int)) )
))
(declare-datatypes ((Regex!17355 0))(
  ( (ElementMatch!17355 (c!1303722 C!34980)) (Concat!26200 (regOne!35222 Regex!17355) (regTwo!35222 Regex!17355)) (EmptyExpr!17355) (Star!17355 (reg!17684 Regex!17355)) (EmptyLang!17355) (Union!17355 (regOne!35223 Regex!17355) (regTwo!35223 Regex!17355)) )
))
(declare-datatypes ((List!67610 0))(
  ( (Nil!67486) (Cons!67486 (h!73934 Regex!17355) (t!381365 List!67610)) )
))
(declare-datatypes ((Context!12702 0))(
  ( (Context!12703 (exprs!6851 List!67610)) )
))
(declare-fun lt!2508669 () Context!12702)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2508681 () (InoxSet Context!12702))

(assert (=> b!7016754 (= res!2863748 (not (select lt!2508681 lt!2508669)))))

(declare-fun b!7016755 () Bool)

(declare-fun e!4217921 () Bool)

(declare-fun tp_is_empty!43935 () Bool)

(declare-fun tp!1933332 () Bool)

(assert (=> b!7016755 (= e!4217921 (and tp_is_empty!43935 tp!1933332))))

(declare-fun e!4217918 () Bool)

(assert (=> b!7016756 (= e!4217922 e!4217918)))

(declare-fun res!2863757 () Bool)

(assert (=> b!7016756 (=> res!2863757 e!4217918)))

(declare-fun z1!570 () (InoxSet Context!12702))

(declare-fun lt!2508675 () Context!12702)

(declare-fun lt!2508674 () Context!12702)

(assert (=> b!7016756 (= res!2863757 (or (not (= lt!2508675 lt!2508669)) (not (select z1!570 lt!2508674))))))

(declare-fun ct2!306 () Context!12702)

(declare-fun ++!15374 (List!67610 List!67610) List!67610)

(assert (=> b!7016756 (= lt!2508675 (Context!12703 (++!15374 (exprs!6851 lt!2508674) (exprs!6851 ct2!306))))))

(declare-fun lambda!410152 () Int)

(declare-datatypes ((Unit!161392 0))(
  ( (Unit!161393) )
))
(declare-fun lt!2508663 () Unit!161392)

(declare-fun lemmaConcatPreservesForall!691 (List!67610 List!67610 Int) Unit!161392)

(assert (=> b!7016756 (= lt!2508663 (lemmaConcatPreservesForall!691 (exprs!6851 lt!2508674) (exprs!6851 ct2!306) lambda!410152))))

(declare-fun lambda!410151 () Int)

(declare-fun mapPost2!210 ((InoxSet Context!12702) Int Context!12702) Context!12702)

(assert (=> b!7016756 (= lt!2508674 (mapPost2!210 z1!570 lambda!410151 lt!2508669))))

(declare-fun b!7016757 () Bool)

(declare-fun e!4217927 () Bool)

(declare-fun tp!1933331 () Bool)

(assert (=> b!7016757 (= e!4217927 tp!1933331)))

(declare-fun b!7016758 () Bool)

(declare-fun res!2863758 () Bool)

(declare-fun e!4217925 () Bool)

(assert (=> b!7016758 (=> res!2863758 e!4217925)))

(declare-datatypes ((List!67611 0))(
  ( (Nil!67487) (Cons!67487 (h!73935 C!34980) (t!381366 List!67611)) )
))
(declare-datatypes ((tuple2!67992 0))(
  ( (tuple2!67993 (_1!37299 List!67611) (_2!37299 List!67611)) )
))
(declare-fun lt!2508679 () tuple2!67992)

(declare-fun s!7408 () List!67611)

(declare-fun ++!15375 (List!67611 List!67611) List!67611)

(assert (=> b!7016758 (= res!2863758 (not (= (++!15375 (_1!37299 lt!2508679) (_2!37299 lt!2508679)) (t!381366 s!7408))))))

(declare-fun b!7016760 () Bool)

(assert (=> b!7016760 (= e!4217925 true)))

(declare-fun lt!2508667 () (InoxSet Context!12702))

(declare-fun derivationStepZipperUp!2005 (Context!12702 C!34980) (InoxSet Context!12702))

(assert (=> b!7016760 (= lt!2508667 (derivationStepZipperUp!2005 lt!2508674 (h!73935 s!7408)))))

(declare-fun b!7016761 () Bool)

(declare-fun res!2863751 () Bool)

(declare-fun e!4217926 () Bool)

(assert (=> b!7016761 (=> res!2863751 e!4217926)))

(get-info :version)

(assert (=> b!7016761 (= res!2863751 (not ((_ is Cons!67486) (exprs!6851 lt!2508674))))))

(declare-fun setIsEmpty!48546 () Bool)

(declare-fun setRes!48546 () Bool)

(assert (=> setIsEmpty!48546 setRes!48546))

(declare-fun b!7016762 () Bool)

(declare-fun e!4217928 () Bool)

(assert (=> b!7016762 (= e!4217918 e!4217928)))

(declare-fun res!2863750 () Bool)

(assert (=> b!7016762 (=> res!2863750 e!4217928)))

(declare-fun lt!2508686 () (InoxSet Context!12702))

(declare-fun lt!2508680 () (InoxSet Context!12702))

(assert (=> b!7016762 (= res!2863750 (not (= lt!2508686 lt!2508680)))))

(assert (=> b!7016762 (= lt!2508686 (store ((as const (Array Context!12702 Bool)) false) lt!2508675 true))))

(declare-fun lt!2508685 () Unit!161392)

(assert (=> b!7016762 (= lt!2508685 (lemmaConcatPreservesForall!691 (exprs!6851 lt!2508674) (exprs!6851 ct2!306) lambda!410152))))

(declare-fun setNonEmpty!48546 () Bool)

(declare-fun setElem!48546 () Context!12702)

(declare-fun tp!1933333 () Bool)

(declare-fun inv!86246 (Context!12702) Bool)

(assert (=> setNonEmpty!48546 (= setRes!48546 (and tp!1933333 (inv!86246 setElem!48546) e!4217924))))

(declare-fun setRest!48546 () (InoxSet Context!12702))

(assert (=> setNonEmpty!48546 (= z1!570 ((_ map or) (store ((as const (Array Context!12702 Bool)) false) setElem!48546 true) setRest!48546))))

(assert (=> b!7016763 (= e!4217928 e!4217926)))

(declare-fun res!2863747 () Bool)

(assert (=> b!7016763 (=> res!2863747 e!4217926)))

(declare-fun lt!2508678 () (InoxSet Context!12702))

(declare-fun derivationStepZipper!2835 ((InoxSet Context!12702) C!34980) (InoxSet Context!12702))

(assert (=> b!7016763 (= res!2863747 (not (= (derivationStepZipper!2835 lt!2508686 (h!73935 s!7408)) lt!2508678)))))

(declare-fun lambda!410153 () Int)

(declare-fun flatMap!2341 ((InoxSet Context!12702) Int) (InoxSet Context!12702))

(assert (=> b!7016763 (= (flatMap!2341 lt!2508686 lambda!410153) (derivationStepZipperUp!2005 lt!2508675 (h!73935 s!7408)))))

(declare-fun lt!2508673 () Unit!161392)

(declare-fun lemmaFlatMapOnSingletonSet!1856 ((InoxSet Context!12702) Context!12702 Int) Unit!161392)

(assert (=> b!7016763 (= lt!2508673 (lemmaFlatMapOnSingletonSet!1856 lt!2508686 lt!2508675 lambda!410153))))

(assert (=> b!7016763 (= lt!2508678 (derivationStepZipperUp!2005 lt!2508675 (h!73935 s!7408)))))

(declare-fun lt!2508684 () Unit!161392)

(assert (=> b!7016763 (= lt!2508684 (lemmaConcatPreservesForall!691 (exprs!6851 lt!2508674) (exprs!6851 ct2!306) lambda!410152))))

(declare-fun e!4217923 () Bool)

(assert (=> b!7016764 (= e!4217923 (not e!4217922))))

(declare-fun res!2863749 () Bool)

(assert (=> b!7016764 (=> res!2863749 e!4217922)))

(declare-fun matchZipper!2895 ((InoxSet Context!12702) List!67611) Bool)

(assert (=> b!7016764 (= res!2863749 (not (matchZipper!2895 lt!2508680 s!7408)))))

(assert (=> b!7016764 (= lt!2508680 (store ((as const (Array Context!12702 Bool)) false) lt!2508669 true))))

(declare-fun lambda!410150 () Int)

(declare-fun getWitness!1314 ((InoxSet Context!12702) Int) Context!12702)

(assert (=> b!7016764 (= lt!2508669 (getWitness!1314 lt!2508681 lambda!410150))))

(declare-datatypes ((List!67612 0))(
  ( (Nil!67488) (Cons!67488 (h!73936 Context!12702) (t!381367 List!67612)) )
))
(declare-fun lt!2508666 () List!67612)

(declare-fun exists!3221 (List!67612 Int) Bool)

(assert (=> b!7016764 (exists!3221 lt!2508666 lambda!410150)))

(declare-fun lt!2508662 () Unit!161392)

(declare-fun lemmaZipperMatchesExistsMatchingContext!324 (List!67612 List!67611) Unit!161392)

(assert (=> b!7016764 (= lt!2508662 (lemmaZipperMatchesExistsMatchingContext!324 lt!2508666 s!7408))))

(declare-fun toList!10715 ((InoxSet Context!12702)) List!67612)

(assert (=> b!7016764 (= lt!2508666 (toList!10715 lt!2508681))))

(declare-fun b!7016765 () Bool)

(declare-fun res!2863752 () Bool)

(assert (=> b!7016765 (=> res!2863752 e!4217925)))

(declare-fun lt!2508664 () (InoxSet Context!12702))

(assert (=> b!7016765 (= res!2863752 (not (matchZipper!2895 lt!2508664 (_2!37299 lt!2508679))))))

(declare-fun b!7016766 () Bool)

(declare-fun res!2863754 () Bool)

(assert (=> b!7016766 (=> (not res!2863754) (not e!4217923))))

(assert (=> b!7016766 (= res!2863754 ((_ is Cons!67487) s!7408))))

(declare-fun b!7016767 () Bool)

(declare-fun e!4217919 () Bool)

(assert (=> b!7016767 (= e!4217926 e!4217919)))

(declare-fun res!2863755 () Bool)

(assert (=> b!7016767 (=> res!2863755 e!4217919)))

(declare-fun nullable!7115 (Regex!17355) Bool)

(assert (=> b!7016767 (= res!2863755 (nullable!7115 (h!73934 (exprs!6851 lt!2508674))))))

(declare-fun lt!2508665 () Context!12702)

(declare-fun lt!2508668 () List!67610)

(assert (=> b!7016767 (= lt!2508665 (Context!12703 lt!2508668))))

(declare-fun tail!13447 (List!67610) List!67610)

(assert (=> b!7016767 (= lt!2508668 (tail!13447 (exprs!6851 lt!2508674)))))

(declare-fun b!7016768 () Bool)

(declare-fun res!2863756 () Bool)

(assert (=> b!7016768 (=> res!2863756 e!4217926)))

(declare-fun isEmpty!39414 (List!67610) Bool)

(assert (=> b!7016768 (= res!2863756 (isEmpty!39414 (exprs!6851 lt!2508674)))))

(declare-fun b!7016769 () Bool)

(declare-fun e!4217920 () Bool)

(assert (=> b!7016769 (= e!4217920 e!4217925)))

(declare-fun res!2863753 () Bool)

(assert (=> b!7016769 (=> res!2863753 e!4217925)))

(declare-fun lt!2508676 () (InoxSet Context!12702))

(assert (=> b!7016769 (= res!2863753 (not (matchZipper!2895 lt!2508676 (_1!37299 lt!2508679))))))

(declare-datatypes ((Option!16828 0))(
  ( (None!16827) (Some!16827 (v!53105 tuple2!67992)) )
))
(declare-fun lt!2508672 () Option!16828)

(declare-fun get!23664 (Option!16828) tuple2!67992)

(assert (=> b!7016769 (= lt!2508679 (get!23664 lt!2508672))))

(declare-fun isDefined!13529 (Option!16828) Bool)

(assert (=> b!7016769 (isDefined!13529 lt!2508672)))

(declare-fun findConcatSeparationZippers!344 ((InoxSet Context!12702) (InoxSet Context!12702) List!67611 List!67611 List!67611) Option!16828)

(assert (=> b!7016769 (= lt!2508672 (findConcatSeparationZippers!344 lt!2508676 lt!2508664 Nil!67487 (t!381366 s!7408) (t!381366 s!7408)))))

(assert (=> b!7016769 (= lt!2508664 (store ((as const (Array Context!12702 Bool)) false) ct2!306 true))))

(declare-fun lt!2508682 () Unit!161392)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!344 ((InoxSet Context!12702) Context!12702 List!67611) Unit!161392)

(assert (=> b!7016769 (= lt!2508682 (lemmaConcatZipperMatchesStringThenFindConcatDefined!344 lt!2508676 ct2!306 (t!381366 s!7408)))))

(declare-fun lt!2508683 () (InoxSet Context!12702))

(declare-fun appendTo!476 ((InoxSet Context!12702) Context!12702) (InoxSet Context!12702))

(assert (=> b!7016769 (= lt!2508683 (appendTo!476 lt!2508676 ct2!306))))

(declare-fun derivationStepZipperDown!2073 (Regex!17355 Context!12702 C!34980) (InoxSet Context!12702))

(assert (=> b!7016769 (= lt!2508676 (derivationStepZipperDown!2073 (h!73934 (exprs!6851 lt!2508674)) lt!2508665 (h!73935 s!7408)))))

(declare-fun lt!2508670 () Unit!161392)

(assert (=> b!7016769 (= lt!2508670 (lemmaConcatPreservesForall!691 lt!2508668 (exprs!6851 ct2!306) lambda!410152))))

(declare-fun lt!2508671 () Unit!161392)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!46 (Context!12702 Regex!17355 C!34980 Context!12702) Unit!161392)

(assert (=> b!7016769 (= lt!2508671 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!46 lt!2508665 (h!73934 (exprs!6851 lt!2508674)) (h!73935 s!7408) ct2!306))))

(declare-fun res!2863746 () Bool)

(assert (=> start!676322 (=> (not res!2863746) (not e!4217923))))

(assert (=> start!676322 (= res!2863746 (matchZipper!2895 lt!2508681 s!7408))))

(assert (=> start!676322 (= lt!2508681 (appendTo!476 z1!570 ct2!306))))

(assert (=> start!676322 e!4217923))

(declare-fun condSetEmpty!48546 () Bool)

(assert (=> start!676322 (= condSetEmpty!48546 (= z1!570 ((as const (Array Context!12702 Bool)) false)))))

(assert (=> start!676322 setRes!48546))

(assert (=> start!676322 (and (inv!86246 ct2!306) e!4217927)))

(assert (=> start!676322 e!4217921))

(declare-fun b!7016759 () Bool)

(assert (=> b!7016759 (= e!4217919 e!4217920)))

(declare-fun res!2863759 () Bool)

(assert (=> b!7016759 (=> res!2863759 e!4217920)))

(assert (=> b!7016759 (= res!2863759 (not (matchZipper!2895 lt!2508683 (t!381366 s!7408))))))

(assert (=> b!7016759 (= lt!2508683 (derivationStepZipperDown!2073 (h!73934 (exprs!6851 lt!2508674)) (Context!12703 (++!15374 lt!2508668 (exprs!6851 ct2!306))) (h!73935 s!7408)))))

(declare-fun lt!2508677 () Unit!161392)

(assert (=> b!7016759 (= lt!2508677 (lemmaConcatPreservesForall!691 lt!2508668 (exprs!6851 ct2!306) lambda!410152))))

(assert (= (and start!676322 res!2863746) b!7016766))

(assert (= (and b!7016766 res!2863754) b!7016764))

(assert (= (and b!7016764 (not res!2863749)) b!7016754))

(assert (= (and b!7016754 (not res!2863748)) b!7016756))

(assert (= (and b!7016756 (not res!2863757)) b!7016762))

(assert (= (and b!7016762 (not res!2863750)) b!7016763))

(assert (= (and b!7016763 (not res!2863747)) b!7016761))

(assert (= (and b!7016761 (not res!2863751)) b!7016768))

(assert (= (and b!7016768 (not res!2863756)) b!7016767))

(assert (= (and b!7016767 (not res!2863755)) b!7016759))

(assert (= (and b!7016759 (not res!2863759)) b!7016769))

(assert (= (and b!7016769 (not res!2863753)) b!7016765))

(assert (= (and b!7016765 (not res!2863752)) b!7016758))

(assert (= (and b!7016758 (not res!2863758)) b!7016760))

(assert (= (and start!676322 condSetEmpty!48546) setIsEmpty!48546))

(assert (= (and start!676322 (not condSetEmpty!48546)) setNonEmpty!48546))

(assert (= setNonEmpty!48546 b!7016753))

(assert (= start!676322 b!7016757))

(assert (= (and start!676322 ((_ is Cons!67487) s!7408)) b!7016755))

(declare-fun m!7716566 () Bool)

(assert (=> b!7016763 m!7716566))

(declare-fun m!7716568 () Bool)

(assert (=> b!7016763 m!7716568))

(declare-fun m!7716570 () Bool)

(assert (=> b!7016763 m!7716570))

(declare-fun m!7716572 () Bool)

(assert (=> b!7016763 m!7716572))

(declare-fun m!7716574 () Bool)

(assert (=> b!7016763 m!7716574))

(declare-fun m!7716576 () Bool)

(assert (=> b!7016765 m!7716576))

(declare-fun m!7716578 () Bool)

(assert (=> b!7016769 m!7716578))

(declare-fun m!7716580 () Bool)

(assert (=> b!7016769 m!7716580))

(declare-fun m!7716582 () Bool)

(assert (=> b!7016769 m!7716582))

(declare-fun m!7716584 () Bool)

(assert (=> b!7016769 m!7716584))

(declare-fun m!7716586 () Bool)

(assert (=> b!7016769 m!7716586))

(declare-fun m!7716588 () Bool)

(assert (=> b!7016769 m!7716588))

(declare-fun m!7716590 () Bool)

(assert (=> b!7016769 m!7716590))

(declare-fun m!7716592 () Bool)

(assert (=> b!7016769 m!7716592))

(declare-fun m!7716594 () Bool)

(assert (=> b!7016769 m!7716594))

(declare-fun m!7716596 () Bool)

(assert (=> b!7016769 m!7716596))

(declare-fun m!7716598 () Bool)

(assert (=> b!7016760 m!7716598))

(declare-fun m!7716600 () Bool)

(assert (=> b!7016758 m!7716600))

(declare-fun m!7716602 () Bool)

(assert (=> b!7016759 m!7716602))

(declare-fun m!7716604 () Bool)

(assert (=> b!7016759 m!7716604))

(declare-fun m!7716606 () Bool)

(assert (=> b!7016759 m!7716606))

(assert (=> b!7016759 m!7716590))

(declare-fun m!7716608 () Bool)

(assert (=> b!7016762 m!7716608))

(assert (=> b!7016762 m!7716568))

(declare-fun m!7716610 () Bool)

(assert (=> b!7016768 m!7716610))

(declare-fun m!7716612 () Bool)

(assert (=> setNonEmpty!48546 m!7716612))

(declare-fun m!7716614 () Bool)

(assert (=> b!7016756 m!7716614))

(declare-fun m!7716616 () Bool)

(assert (=> b!7016756 m!7716616))

(assert (=> b!7016756 m!7716568))

(declare-fun m!7716618 () Bool)

(assert (=> b!7016756 m!7716618))

(declare-fun m!7716620 () Bool)

(assert (=> b!7016767 m!7716620))

(declare-fun m!7716622 () Bool)

(assert (=> b!7016767 m!7716622))

(declare-fun m!7716624 () Bool)

(assert (=> b!7016754 m!7716624))

(declare-fun m!7716626 () Bool)

(assert (=> b!7016764 m!7716626))

(declare-fun m!7716628 () Bool)

(assert (=> b!7016764 m!7716628))

(declare-fun m!7716630 () Bool)

(assert (=> b!7016764 m!7716630))

(declare-fun m!7716632 () Bool)

(assert (=> b!7016764 m!7716632))

(declare-fun m!7716634 () Bool)

(assert (=> b!7016764 m!7716634))

(declare-fun m!7716636 () Bool)

(assert (=> b!7016764 m!7716636))

(declare-fun m!7716638 () Bool)

(assert (=> start!676322 m!7716638))

(declare-fun m!7716640 () Bool)

(assert (=> start!676322 m!7716640))

(declare-fun m!7716642 () Bool)

(assert (=> start!676322 m!7716642))

(check-sat (not b!7016760) (not b!7016758) (not b!7016756) (not b!7016765) (not b!7016757) (not b!7016753) (not b!7016763) (not b!7016755) (not start!676322) (not setNonEmpty!48546) (not b!7016769) tp_is_empty!43935 (not b!7016768) (not b!7016764) (not b!7016767) (not b!7016762) (not b!7016759))
(check-sat)
