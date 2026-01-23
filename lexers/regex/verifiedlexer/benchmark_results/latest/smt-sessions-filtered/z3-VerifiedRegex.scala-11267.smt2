; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592500 () Bool)

(assert start!592500)

(declare-fun b!5768616 () Bool)

(assert (=> b!5768616 true))

(assert (=> b!5768616 true))

(declare-fun lambda!313352 () Int)

(declare-fun lambda!313351 () Int)

(assert (=> b!5768616 (not (= lambda!313352 lambda!313351))))

(assert (=> b!5768616 true))

(assert (=> b!5768616 true))

(declare-fun b!5768602 () Bool)

(assert (=> b!5768602 true))

(declare-fun b!5768592 () Bool)

(declare-fun res!2434360 () Bool)

(declare-fun e!3544000 () Bool)

(assert (=> b!5768592 (=> res!2434360 e!3544000)))

(declare-datatypes ((C!31832 0))(
  ( (C!31833 (val!25618 Int)) )
))
(declare-datatypes ((Regex!15781 0))(
  ( (ElementMatch!15781 (c!1019923 C!31832)) (Concat!24626 (regOne!32074 Regex!15781) (regTwo!32074 Regex!15781)) (EmptyExpr!15781) (Star!15781 (reg!16110 Regex!15781)) (EmptyLang!15781) (Union!15781 (regOne!32075 Regex!15781) (regTwo!32075 Regex!15781)) )
))
(declare-datatypes ((List!63642 0))(
  ( (Nil!63518) (Cons!63518 (h!69966 Regex!15781) (t!376980 List!63642)) )
))
(declare-datatypes ((Context!10330 0))(
  ( (Context!10331 (exprs!5665 List!63642)) )
))
(declare-datatypes ((List!63643 0))(
  ( (Nil!63519) (Cons!63519 (h!69967 Context!10330) (t!376981 List!63643)) )
))
(declare-fun zl!343 () List!63643)

(get-info :version)

(assert (=> b!5768592 (= res!2434360 (not ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343)))))))

(declare-fun b!5768593 () Bool)

(declare-fun e!3543997 () Bool)

(declare-fun tp!1594015 () Bool)

(assert (=> b!5768593 (= e!3543997 tp!1594015)))

(declare-fun b!5768594 () Bool)

(declare-fun res!2434358 () Bool)

(assert (=> b!5768594 (=> res!2434358 e!3544000)))

(declare-fun isEmpty!35413 (List!63643) Bool)

(assert (=> b!5768594 (= res!2434358 (not (isEmpty!35413 (t!376981 zl!343))))))

(declare-fun b!5768595 () Bool)

(declare-fun res!2434371 () Bool)

(assert (=> b!5768595 (=> res!2434371 e!3544000)))

(declare-fun r!7292 () Regex!15781)

(declare-fun generalisedConcat!1396 (List!63642) Regex!15781)

(assert (=> b!5768595 (= res!2434371 (not (= r!7292 (generalisedConcat!1396 (exprs!5665 (h!69967 zl!343))))))))

(declare-fun b!5768596 () Bool)

(declare-fun res!2434363 () Bool)

(declare-fun e!3543999 () Bool)

(assert (=> b!5768596 (=> (not res!2434363) (not e!3543999))))

(declare-fun unfocusZipper!1523 (List!63643) Regex!15781)

(assert (=> b!5768596 (= res!2434363 (= r!7292 (unfocusZipper!1523 zl!343)))))

(declare-fun b!5768597 () Bool)

(declare-fun e!3544008 () Bool)

(declare-fun tp!1594019 () Bool)

(declare-fun tp!1594017 () Bool)

(assert (=> b!5768597 (= e!3544008 (and tp!1594019 tp!1594017))))

(declare-fun b!5768598 () Bool)

(declare-fun res!2434369 () Bool)

(assert (=> b!5768598 (=> res!2434369 e!3544000)))

(assert (=> b!5768598 (= res!2434369 (or ((_ is EmptyExpr!15781) r!7292) ((_ is EmptyLang!15781) r!7292) ((_ is ElementMatch!15781) r!7292) ((_ is Union!15781) r!7292) (not ((_ is Concat!24626) r!7292))))))

(declare-fun b!5768599 () Bool)

(declare-fun e!3544001 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2289783 () (InoxSet Context!10330))

(assert (=> b!5768599 (= e!3544001 (= lt!2289783 ((as const (Array Context!10330 Bool)) false)))))

(declare-datatypes ((List!63644 0))(
  ( (Nil!63520) (Cons!63520 (h!69968 C!31832) (t!376982 List!63644)) )
))
(declare-fun s!2326 () List!63644)

(declare-fun matchZipper!1919 ((InoxSet Context!10330) List!63644) Bool)

(assert (=> b!5768599 (not (matchZipper!1919 lt!2289783 (t!376982 s!2326)))))

(declare-datatypes ((Unit!156656 0))(
  ( (Unit!156657) )
))
(declare-fun lt!2289784 () Unit!156656)

(declare-fun lemmaEmptyZipperMatchesNothing!66 ((InoxSet Context!10330) List!63644) Unit!156656)

(assert (=> b!5768599 (= lt!2289784 (lemmaEmptyZipperMatchesNothing!66 lt!2289783 (t!376982 s!2326)))))

(declare-fun b!5768600 () Bool)

(declare-fun e!3544003 () Bool)

(declare-fun nullable!5813 (Regex!15781) Bool)

(assert (=> b!5768600 (= e!3544003 (nullable!5813 (regOne!32074 (regOne!32074 r!7292))))))

(declare-fun b!5768601 () Bool)

(declare-fun tp!1594022 () Bool)

(declare-fun e!3544004 () Bool)

(declare-fun inv!82699 (Context!10330) Bool)

(assert (=> b!5768601 (= e!3544004 (and (inv!82699 (h!69967 zl!343)) e!3543997 tp!1594022))))

(declare-fun res!2434365 () Bool)

(assert (=> start!592500 (=> (not res!2434365) (not e!3543999))))

(declare-fun validRegex!7517 (Regex!15781) Bool)

(assert (=> start!592500 (= res!2434365 (validRegex!7517 r!7292))))

(assert (=> start!592500 e!3543999))

(assert (=> start!592500 e!3544008))

(declare-fun condSetEmpty!38763 () Bool)

(declare-fun z!1189 () (InoxSet Context!10330))

(assert (=> start!592500 (= condSetEmpty!38763 (= z!1189 ((as const (Array Context!10330 Bool)) false)))))

(declare-fun setRes!38763 () Bool)

(assert (=> start!592500 setRes!38763))

(assert (=> start!592500 e!3544004))

(declare-fun e!3544006 () Bool)

(assert (=> start!592500 e!3544006))

(declare-fun e!3544005 () Bool)

(assert (=> b!5768602 (= e!3544005 e!3544001)))

(declare-fun res!2434372 () Bool)

(assert (=> b!5768602 (=> res!2434372 e!3544001)))

(assert (=> b!5768602 (= res!2434372 (or (and ((_ is ElementMatch!15781) (regOne!32074 r!7292)) (= (c!1019923 (regOne!32074 r!7292)) (h!69968 s!2326))) ((_ is Union!15781) (regOne!32074 r!7292))))))

(declare-fun lt!2289787 () Unit!156656)

(declare-fun e!3543998 () Unit!156656)

(assert (=> b!5768602 (= lt!2289787 e!3543998)))

(declare-fun c!1019922 () Bool)

(assert (=> b!5768602 (= c!1019922 (nullable!5813 (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun lambda!313353 () Int)

(declare-fun flatMap!1394 ((InoxSet Context!10330) Int) (InoxSet Context!10330))

(declare-fun derivationStepZipperUp!1049 (Context!10330 C!31832) (InoxSet Context!10330))

(assert (=> b!5768602 (= (flatMap!1394 z!1189 lambda!313353) (derivationStepZipperUp!1049 (h!69967 zl!343) (h!69968 s!2326)))))

(declare-fun lt!2289782 () Unit!156656)

(declare-fun lemmaFlatMapOnSingletonSet!926 ((InoxSet Context!10330) Context!10330 Int) Unit!156656)

(assert (=> b!5768602 (= lt!2289782 (lemmaFlatMapOnSingletonSet!926 z!1189 (h!69967 zl!343) lambda!313353))))

(declare-fun lt!2289790 () (InoxSet Context!10330))

(declare-fun lt!2289786 () Context!10330)

(assert (=> b!5768602 (= lt!2289790 (derivationStepZipperUp!1049 lt!2289786 (h!69968 s!2326)))))

(declare-fun derivationStepZipperDown!1123 (Regex!15781 Context!10330 C!31832) (InoxSet Context!10330))

(assert (=> b!5768602 (= lt!2289783 (derivationStepZipperDown!1123 (h!69966 (exprs!5665 (h!69967 zl!343))) lt!2289786 (h!69968 s!2326)))))

(assert (=> b!5768602 (= lt!2289786 (Context!10331 (t!376980 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun lt!2289789 () (InoxSet Context!10330))

(assert (=> b!5768602 (= lt!2289789 (derivationStepZipperUp!1049 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343))))) (h!69968 s!2326)))))

(declare-fun b!5768603 () Bool)

(declare-fun e!3544007 () Bool)

(declare-fun tp!1594021 () Bool)

(assert (=> b!5768603 (= e!3544007 tp!1594021)))

(declare-fun b!5768604 () Bool)

(declare-fun res!2434359 () Bool)

(assert (=> b!5768604 (=> (not res!2434359) (not e!3543999))))

(declare-fun toList!9565 ((InoxSet Context!10330)) List!63643)

(assert (=> b!5768604 (= res!2434359 (= (toList!9565 z!1189) zl!343))))

(declare-fun b!5768605 () Bool)

(declare-fun res!2434370 () Bool)

(assert (=> b!5768605 (=> res!2434370 e!3544005)))

(declare-fun isEmpty!35414 (List!63642) Bool)

(assert (=> b!5768605 (= res!2434370 (isEmpty!35414 (t!376980 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun b!5768606 () Bool)

(declare-fun tp_is_empty!40815 () Bool)

(declare-fun tp!1594018 () Bool)

(assert (=> b!5768606 (= e!3544006 (and tp_is_empty!40815 tp!1594018))))

(declare-fun b!5768607 () Bool)

(declare-fun Unit!156658 () Unit!156656)

(assert (=> b!5768607 (= e!3543998 Unit!156658)))

(declare-fun lt!2289791 () Unit!156656)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!806 ((InoxSet Context!10330) (InoxSet Context!10330) List!63644) Unit!156656)

(assert (=> b!5768607 (= lt!2289791 (lemmaZipperConcatMatchesSameAsBothZippers!806 lt!2289783 lt!2289790 (t!376982 s!2326)))))

(declare-fun res!2434373 () Bool)

(assert (=> b!5768607 (= res!2434373 (matchZipper!1919 lt!2289783 (t!376982 s!2326)))))

(declare-fun e!3544002 () Bool)

(assert (=> b!5768607 (=> res!2434373 e!3544002)))

(assert (=> b!5768607 (= (matchZipper!1919 ((_ map or) lt!2289783 lt!2289790) (t!376982 s!2326)) e!3544002)))

(declare-fun b!5768608 () Bool)

(declare-fun tp!1594020 () Bool)

(declare-fun tp!1594013 () Bool)

(assert (=> b!5768608 (= e!3544008 (and tp!1594020 tp!1594013))))

(declare-fun b!5768609 () Bool)

(assert (=> b!5768609 (= e!3544002 (matchZipper!1919 lt!2289790 (t!376982 s!2326)))))

(declare-fun b!5768610 () Bool)

(assert (=> b!5768610 (= e!3544008 tp_is_empty!40815)))

(declare-fun b!5768611 () Bool)

(declare-fun res!2434362 () Bool)

(assert (=> b!5768611 (=> res!2434362 e!3544001)))

(assert (=> b!5768611 (= res!2434362 e!3544003)))

(declare-fun res!2434361 () Bool)

(assert (=> b!5768611 (=> (not res!2434361) (not e!3544003))))

(assert (=> b!5768611 (= res!2434361 ((_ is Concat!24626) (regOne!32074 r!7292)))))

(declare-fun b!5768612 () Bool)

(declare-fun Unit!156659 () Unit!156656)

(assert (=> b!5768612 (= e!3543998 Unit!156659)))

(declare-fun b!5768613 () Bool)

(declare-fun res!2434367 () Bool)

(assert (=> b!5768613 (=> res!2434367 e!3544000)))

(declare-fun generalisedUnion!1644 (List!63642) Regex!15781)

(declare-fun unfocusZipperList!1209 (List!63643) List!63642)

(assert (=> b!5768613 (= res!2434367 (not (= r!7292 (generalisedUnion!1644 (unfocusZipperList!1209 zl!343)))))))

(declare-fun b!5768614 () Bool)

(declare-fun tp!1594016 () Bool)

(assert (=> b!5768614 (= e!3544008 tp!1594016)))

(declare-fun setElem!38763 () Context!10330)

(declare-fun setNonEmpty!38763 () Bool)

(declare-fun tp!1594014 () Bool)

(assert (=> setNonEmpty!38763 (= setRes!38763 (and tp!1594014 (inv!82699 setElem!38763) e!3544007))))

(declare-fun setRest!38763 () (InoxSet Context!10330))

(assert (=> setNonEmpty!38763 (= z!1189 ((_ map or) (store ((as const (Array Context!10330 Bool)) false) setElem!38763 true) setRest!38763))))

(declare-fun b!5768615 () Bool)

(assert (=> b!5768615 (= e!3543999 (not e!3544000))))

(declare-fun res!2434364 () Bool)

(assert (=> b!5768615 (=> res!2434364 e!3544000)))

(assert (=> b!5768615 (= res!2434364 (not ((_ is Cons!63519) zl!343)))))

(declare-fun lt!2289793 () Bool)

(declare-fun matchRSpec!2884 (Regex!15781 List!63644) Bool)

(assert (=> b!5768615 (= lt!2289793 (matchRSpec!2884 r!7292 s!2326))))

(declare-fun matchR!7966 (Regex!15781 List!63644) Bool)

(assert (=> b!5768615 (= lt!2289793 (matchR!7966 r!7292 s!2326))))

(declare-fun lt!2289788 () Unit!156656)

(declare-fun mainMatchTheorem!2884 (Regex!15781 List!63644) Unit!156656)

(assert (=> b!5768615 (= lt!2289788 (mainMatchTheorem!2884 r!7292 s!2326))))

(assert (=> b!5768616 (= e!3544000 e!3544005)))

(declare-fun res!2434366 () Bool)

(assert (=> b!5768616 (=> res!2434366 e!3544005)))

(declare-fun lt!2289794 () Bool)

(assert (=> b!5768616 (= res!2434366 (or (not (= lt!2289793 lt!2289794)) ((_ is Nil!63520) s!2326)))))

(declare-fun Exists!2881 (Int) Bool)

(assert (=> b!5768616 (= (Exists!2881 lambda!313351) (Exists!2881 lambda!313352))))

(declare-fun lt!2289792 () Unit!156656)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1510 (Regex!15781 Regex!15781 List!63644) Unit!156656)

(assert (=> b!5768616 (= lt!2289792 (lemmaExistCutMatchRandMatchRSpecEquivalent!1510 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326))))

(assert (=> b!5768616 (= lt!2289794 (Exists!2881 lambda!313351))))

(declare-datatypes ((tuple2!65756 0))(
  ( (tuple2!65757 (_1!36181 List!63644) (_2!36181 List!63644)) )
))
(declare-datatypes ((Option!15790 0))(
  ( (None!15789) (Some!15789 (v!51848 tuple2!65756)) )
))
(declare-fun isDefined!12493 (Option!15790) Bool)

(declare-fun findConcatSeparation!2204 (Regex!15781 Regex!15781 List!63644 List!63644 List!63644) Option!15790)

(assert (=> b!5768616 (= lt!2289794 (isDefined!12493 (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) Nil!63520 s!2326 s!2326)))))

(declare-fun lt!2289785 () Unit!156656)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1968 (Regex!15781 Regex!15781 List!63644) Unit!156656)

(assert (=> b!5768616 (= lt!2289785 (lemmaFindConcatSeparationEquivalentToExists!1968 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326))))

(declare-fun b!5768617 () Bool)

(declare-fun res!2434368 () Bool)

(assert (=> b!5768617 (=> res!2434368 e!3544001)))

(assert (=> b!5768617 (= res!2434368 (or ((_ is Concat!24626) (regOne!32074 r!7292)) ((_ is Star!15781) (regOne!32074 r!7292)) ((_ is EmptyExpr!15781) (regOne!32074 r!7292))))))

(declare-fun setIsEmpty!38763 () Bool)

(assert (=> setIsEmpty!38763 setRes!38763))

(assert (= (and start!592500 res!2434365) b!5768604))

(assert (= (and b!5768604 res!2434359) b!5768596))

(assert (= (and b!5768596 res!2434363) b!5768615))

(assert (= (and b!5768615 (not res!2434364)) b!5768594))

(assert (= (and b!5768594 (not res!2434358)) b!5768595))

(assert (= (and b!5768595 (not res!2434371)) b!5768592))

(assert (= (and b!5768592 (not res!2434360)) b!5768613))

(assert (= (and b!5768613 (not res!2434367)) b!5768598))

(assert (= (and b!5768598 (not res!2434369)) b!5768616))

(assert (= (and b!5768616 (not res!2434366)) b!5768605))

(assert (= (and b!5768605 (not res!2434370)) b!5768602))

(assert (= (and b!5768602 c!1019922) b!5768607))

(assert (= (and b!5768602 (not c!1019922)) b!5768612))

(assert (= (and b!5768607 (not res!2434373)) b!5768609))

(assert (= (and b!5768602 (not res!2434372)) b!5768611))

(assert (= (and b!5768611 res!2434361) b!5768600))

(assert (= (and b!5768611 (not res!2434362)) b!5768617))

(assert (= (and b!5768617 (not res!2434368)) b!5768599))

(assert (= (and start!592500 ((_ is ElementMatch!15781) r!7292)) b!5768610))

(assert (= (and start!592500 ((_ is Concat!24626) r!7292)) b!5768608))

(assert (= (and start!592500 ((_ is Star!15781) r!7292)) b!5768614))

(assert (= (and start!592500 ((_ is Union!15781) r!7292)) b!5768597))

(assert (= (and start!592500 condSetEmpty!38763) setIsEmpty!38763))

(assert (= (and start!592500 (not condSetEmpty!38763)) setNonEmpty!38763))

(assert (= setNonEmpty!38763 b!5768603))

(assert (= b!5768601 b!5768593))

(assert (= (and start!592500 ((_ is Cons!63519) zl!343)) b!5768601))

(assert (= (and start!592500 ((_ is Cons!63520) s!2326)) b!5768606))

(declare-fun m!6713850 () Bool)

(assert (=> start!592500 m!6713850))

(declare-fun m!6713852 () Bool)

(assert (=> b!5768607 m!6713852))

(declare-fun m!6713854 () Bool)

(assert (=> b!5768607 m!6713854))

(declare-fun m!6713856 () Bool)

(assert (=> b!5768607 m!6713856))

(declare-fun m!6713858 () Bool)

(assert (=> b!5768601 m!6713858))

(declare-fun m!6713860 () Bool)

(assert (=> setNonEmpty!38763 m!6713860))

(declare-fun m!6713862 () Bool)

(assert (=> b!5768613 m!6713862))

(assert (=> b!5768613 m!6713862))

(declare-fun m!6713864 () Bool)

(assert (=> b!5768613 m!6713864))

(declare-fun m!6713866 () Bool)

(assert (=> b!5768594 m!6713866))

(declare-fun m!6713868 () Bool)

(assert (=> b!5768616 m!6713868))

(declare-fun m!6713870 () Bool)

(assert (=> b!5768616 m!6713870))

(declare-fun m!6713872 () Bool)

(assert (=> b!5768616 m!6713872))

(declare-fun m!6713874 () Bool)

(assert (=> b!5768616 m!6713874))

(declare-fun m!6713876 () Bool)

(assert (=> b!5768616 m!6713876))

(assert (=> b!5768616 m!6713874))

(assert (=> b!5768616 m!6713868))

(declare-fun m!6713878 () Bool)

(assert (=> b!5768616 m!6713878))

(declare-fun m!6713880 () Bool)

(assert (=> b!5768605 m!6713880))

(declare-fun m!6713882 () Bool)

(assert (=> b!5768615 m!6713882))

(declare-fun m!6713884 () Bool)

(assert (=> b!5768615 m!6713884))

(declare-fun m!6713886 () Bool)

(assert (=> b!5768615 m!6713886))

(assert (=> b!5768599 m!6713854))

(declare-fun m!6713888 () Bool)

(assert (=> b!5768599 m!6713888))

(declare-fun m!6713890 () Bool)

(assert (=> b!5768595 m!6713890))

(declare-fun m!6713892 () Bool)

(assert (=> b!5768596 m!6713892))

(declare-fun m!6713894 () Bool)

(assert (=> b!5768609 m!6713894))

(declare-fun m!6713896 () Bool)

(assert (=> b!5768602 m!6713896))

(declare-fun m!6713898 () Bool)

(assert (=> b!5768602 m!6713898))

(declare-fun m!6713900 () Bool)

(assert (=> b!5768602 m!6713900))

(declare-fun m!6713902 () Bool)

(assert (=> b!5768602 m!6713902))

(declare-fun m!6713904 () Bool)

(assert (=> b!5768602 m!6713904))

(declare-fun m!6713906 () Bool)

(assert (=> b!5768602 m!6713906))

(declare-fun m!6713908 () Bool)

(assert (=> b!5768602 m!6713908))

(declare-fun m!6713910 () Bool)

(assert (=> b!5768604 m!6713910))

(declare-fun m!6713912 () Bool)

(assert (=> b!5768600 m!6713912))

(check-sat (not b!5768594) (not b!5768614) (not b!5768605) (not start!592500) (not b!5768602) (not b!5768609) (not b!5768600) tp_is_empty!40815 (not b!5768608) (not b!5768607) (not b!5768599) (not b!5768595) (not b!5768613) (not b!5768601) (not b!5768615) (not b!5768606) (not b!5768604) (not setNonEmpty!38763) (not b!5768596) (not b!5768593) (not b!5768603) (not b!5768597) (not b!5768616))
(check-sat)
(get-model)

(declare-fun d!1817190 () Bool)

(declare-fun e!3544026 () Bool)

(assert (=> d!1817190 e!3544026))

(declare-fun res!2434378 () Bool)

(assert (=> d!1817190 (=> (not res!2434378) (not e!3544026))))

(declare-fun lt!2289797 () Regex!15781)

(assert (=> d!1817190 (= res!2434378 (validRegex!7517 lt!2289797))))

(declare-fun e!3544025 () Regex!15781)

(assert (=> d!1817190 (= lt!2289797 e!3544025)))

(declare-fun c!1019935 () Bool)

(declare-fun e!3544021 () Bool)

(assert (=> d!1817190 (= c!1019935 e!3544021)))

(declare-fun res!2434379 () Bool)

(assert (=> d!1817190 (=> (not res!2434379) (not e!3544021))))

(assert (=> d!1817190 (= res!2434379 ((_ is Cons!63518) (unfocusZipperList!1209 zl!343)))))

(declare-fun lambda!313356 () Int)

(declare-fun forall!14898 (List!63642 Int) Bool)

(assert (=> d!1817190 (forall!14898 (unfocusZipperList!1209 zl!343) lambda!313356)))

(assert (=> d!1817190 (= (generalisedUnion!1644 (unfocusZipperList!1209 zl!343)) lt!2289797)))

(declare-fun b!5768644 () Bool)

(declare-fun e!3544022 () Regex!15781)

(assert (=> b!5768644 (= e!3544022 (Union!15781 (h!69966 (unfocusZipperList!1209 zl!343)) (generalisedUnion!1644 (t!376980 (unfocusZipperList!1209 zl!343)))))))

(declare-fun b!5768645 () Bool)

(assert (=> b!5768645 (= e!3544021 (isEmpty!35414 (t!376980 (unfocusZipperList!1209 zl!343))))))

(declare-fun b!5768646 () Bool)

(declare-fun e!3544024 () Bool)

(declare-fun head!12196 (List!63642) Regex!15781)

(assert (=> b!5768646 (= e!3544024 (= lt!2289797 (head!12196 (unfocusZipperList!1209 zl!343))))))

(declare-fun b!5768647 () Bool)

(assert (=> b!5768647 (= e!3544025 e!3544022)))

(declare-fun c!1019934 () Bool)

(assert (=> b!5768647 (= c!1019934 ((_ is Cons!63518) (unfocusZipperList!1209 zl!343)))))

(declare-fun b!5768648 () Bool)

(declare-fun e!3544023 () Bool)

(declare-fun isEmptyLang!1276 (Regex!15781) Bool)

(assert (=> b!5768648 (= e!3544023 (isEmptyLang!1276 lt!2289797))))

(declare-fun b!5768649 () Bool)

(assert (=> b!5768649 (= e!3544022 EmptyLang!15781)))

(declare-fun b!5768650 () Bool)

(assert (=> b!5768650 (= e!3544023 e!3544024)))

(declare-fun c!1019933 () Bool)

(declare-fun tail!11291 (List!63642) List!63642)

(assert (=> b!5768650 (= c!1019933 (isEmpty!35414 (tail!11291 (unfocusZipperList!1209 zl!343))))))

(declare-fun b!5768651 () Bool)

(assert (=> b!5768651 (= e!3544025 (h!69966 (unfocusZipperList!1209 zl!343)))))

(declare-fun b!5768652 () Bool)

(declare-fun isUnion!706 (Regex!15781) Bool)

(assert (=> b!5768652 (= e!3544024 (isUnion!706 lt!2289797))))

(declare-fun b!5768653 () Bool)

(assert (=> b!5768653 (= e!3544026 e!3544023)))

(declare-fun c!1019932 () Bool)

(assert (=> b!5768653 (= c!1019932 (isEmpty!35414 (unfocusZipperList!1209 zl!343)))))

(assert (= (and d!1817190 res!2434379) b!5768645))

(assert (= (and d!1817190 c!1019935) b!5768651))

(assert (= (and d!1817190 (not c!1019935)) b!5768647))

(assert (= (and b!5768647 c!1019934) b!5768644))

(assert (= (and b!5768647 (not c!1019934)) b!5768649))

(assert (= (and d!1817190 res!2434378) b!5768653))

(assert (= (and b!5768653 c!1019932) b!5768648))

(assert (= (and b!5768653 (not c!1019932)) b!5768650))

(assert (= (and b!5768650 c!1019933) b!5768646))

(assert (= (and b!5768650 (not c!1019933)) b!5768652))

(assert (=> b!5768653 m!6713862))

(declare-fun m!6713914 () Bool)

(assert (=> b!5768653 m!6713914))

(declare-fun m!6713916 () Bool)

(assert (=> d!1817190 m!6713916))

(assert (=> d!1817190 m!6713862))

(declare-fun m!6713918 () Bool)

(assert (=> d!1817190 m!6713918))

(declare-fun m!6713920 () Bool)

(assert (=> b!5768644 m!6713920))

(assert (=> b!5768646 m!6713862))

(declare-fun m!6713922 () Bool)

(assert (=> b!5768646 m!6713922))

(declare-fun m!6713924 () Bool)

(assert (=> b!5768648 m!6713924))

(declare-fun m!6713926 () Bool)

(assert (=> b!5768652 m!6713926))

(assert (=> b!5768650 m!6713862))

(declare-fun m!6713928 () Bool)

(assert (=> b!5768650 m!6713928))

(assert (=> b!5768650 m!6713928))

(declare-fun m!6713930 () Bool)

(assert (=> b!5768650 m!6713930))

(declare-fun m!6713932 () Bool)

(assert (=> b!5768645 m!6713932))

(assert (=> b!5768613 d!1817190))

(declare-fun bs!1353359 () Bool)

(declare-fun d!1817192 () Bool)

(assert (= bs!1353359 (and d!1817192 d!1817190)))

(declare-fun lambda!313359 () Int)

(assert (=> bs!1353359 (= lambda!313359 lambda!313356)))

(declare-fun lt!2289800 () List!63642)

(assert (=> d!1817192 (forall!14898 lt!2289800 lambda!313359)))

(declare-fun e!3544029 () List!63642)

(assert (=> d!1817192 (= lt!2289800 e!3544029)))

(declare-fun c!1019938 () Bool)

(assert (=> d!1817192 (= c!1019938 ((_ is Cons!63519) zl!343))))

(assert (=> d!1817192 (= (unfocusZipperList!1209 zl!343) lt!2289800)))

(declare-fun b!5768658 () Bool)

(assert (=> b!5768658 (= e!3544029 (Cons!63518 (generalisedConcat!1396 (exprs!5665 (h!69967 zl!343))) (unfocusZipperList!1209 (t!376981 zl!343))))))

(declare-fun b!5768659 () Bool)

(assert (=> b!5768659 (= e!3544029 Nil!63518)))

(assert (= (and d!1817192 c!1019938) b!5768658))

(assert (= (and d!1817192 (not c!1019938)) b!5768659))

(declare-fun m!6713934 () Bool)

(assert (=> d!1817192 m!6713934))

(assert (=> b!5768658 m!6713890))

(declare-fun m!6713936 () Bool)

(assert (=> b!5768658 m!6713936))

(assert (=> b!5768613 d!1817192))

(declare-fun d!1817194 () Bool)

(declare-fun c!1019952 () Bool)

(assert (=> d!1817194 (= c!1019952 (and ((_ is ElementMatch!15781) (h!69966 (exprs!5665 (h!69967 zl!343)))) (= (c!1019923 (h!69966 (exprs!5665 (h!69967 zl!343)))) (h!69968 s!2326))))))

(declare-fun e!3544046 () (InoxSet Context!10330))

(assert (=> d!1817194 (= (derivationStepZipperDown!1123 (h!69966 (exprs!5665 (h!69967 zl!343))) lt!2289786 (h!69968 s!2326)) e!3544046)))

(declare-fun b!5768682 () Bool)

(declare-fun c!1019951 () Bool)

(assert (=> b!5768682 (= c!1019951 ((_ is Star!15781) (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun e!3544047 () (InoxSet Context!10330))

(declare-fun e!3544042 () (InoxSet Context!10330))

(assert (=> b!5768682 (= e!3544047 e!3544042)))

(declare-fun b!5768683 () Bool)

(assert (=> b!5768683 (= e!3544046 (store ((as const (Array Context!10330 Bool)) false) lt!2289786 true))))

(declare-fun b!5768684 () Bool)

(declare-fun e!3544043 () (InoxSet Context!10330))

(declare-fun call!443181 () (InoxSet Context!10330))

(declare-fun call!443185 () (InoxSet Context!10330))

(assert (=> b!5768684 (= e!3544043 ((_ map or) call!443181 call!443185))))

(declare-fun b!5768685 () Bool)

(assert (=> b!5768685 (= e!3544043 e!3544047)))

(declare-fun c!1019949 () Bool)

(assert (=> b!5768685 (= c!1019949 ((_ is Concat!24626) (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun bm!443176 () Bool)

(declare-fun call!443183 () (InoxSet Context!10330))

(assert (=> bm!443176 (= call!443185 call!443183)))

(declare-fun b!5768686 () Bool)

(declare-fun e!3544044 () (InoxSet Context!10330))

(assert (=> b!5768686 (= e!3544044 ((_ map or) call!443181 call!443183))))

(declare-fun b!5768687 () Bool)

(declare-fun call!443182 () (InoxSet Context!10330))

(assert (=> b!5768687 (= e!3544047 call!443182)))

(declare-fun bm!443177 () Bool)

(assert (=> bm!443177 (= call!443182 call!443185)))

(declare-fun b!5768688 () Bool)

(assert (=> b!5768688 (= e!3544042 ((as const (Array Context!10330 Bool)) false))))

(declare-fun call!443184 () List!63642)

(declare-fun c!1019950 () Bool)

(declare-fun bm!443178 () Bool)

(declare-fun $colon$colon!1775 (List!63642 Regex!15781) List!63642)

(assert (=> bm!443178 (= call!443184 ($colon$colon!1775 (exprs!5665 lt!2289786) (ite (or c!1019950 c!1019949) (regTwo!32074 (h!69966 (exprs!5665 (h!69967 zl!343)))) (h!69966 (exprs!5665 (h!69967 zl!343))))))))

(declare-fun c!1019953 () Bool)

(declare-fun bm!443179 () Bool)

(assert (=> bm!443179 (= call!443181 (derivationStepZipperDown!1123 (ite c!1019953 (regOne!32075 (h!69966 (exprs!5665 (h!69967 zl!343)))) (regOne!32074 (h!69966 (exprs!5665 (h!69967 zl!343))))) (ite c!1019953 lt!2289786 (Context!10331 call!443184)) (h!69968 s!2326)))))

(declare-fun b!5768689 () Bool)

(assert (=> b!5768689 (= e!3544042 call!443182)))

(declare-fun bm!443180 () Bool)

(declare-fun call!443186 () List!63642)

(assert (=> bm!443180 (= call!443186 call!443184)))

(declare-fun bm!443181 () Bool)

(assert (=> bm!443181 (= call!443183 (derivationStepZipperDown!1123 (ite c!1019953 (regTwo!32075 (h!69966 (exprs!5665 (h!69967 zl!343)))) (ite c!1019950 (regTwo!32074 (h!69966 (exprs!5665 (h!69967 zl!343)))) (ite c!1019949 (regOne!32074 (h!69966 (exprs!5665 (h!69967 zl!343)))) (reg!16110 (h!69966 (exprs!5665 (h!69967 zl!343))))))) (ite (or c!1019953 c!1019950) lt!2289786 (Context!10331 call!443186)) (h!69968 s!2326)))))

(declare-fun b!5768690 () Bool)

(declare-fun e!3544045 () Bool)

(assert (=> b!5768690 (= c!1019950 e!3544045)))

(declare-fun res!2434382 () Bool)

(assert (=> b!5768690 (=> (not res!2434382) (not e!3544045))))

(assert (=> b!5768690 (= res!2434382 ((_ is Concat!24626) (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(assert (=> b!5768690 (= e!3544044 e!3544043)))

(declare-fun b!5768691 () Bool)

(assert (=> b!5768691 (= e!3544045 (nullable!5813 (regOne!32074 (h!69966 (exprs!5665 (h!69967 zl!343))))))))

(declare-fun b!5768692 () Bool)

(assert (=> b!5768692 (= e!3544046 e!3544044)))

(assert (=> b!5768692 (= c!1019953 ((_ is Union!15781) (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(assert (= (and d!1817194 c!1019952) b!5768683))

(assert (= (and d!1817194 (not c!1019952)) b!5768692))

(assert (= (and b!5768692 c!1019953) b!5768686))

(assert (= (and b!5768692 (not c!1019953)) b!5768690))

(assert (= (and b!5768690 res!2434382) b!5768691))

(assert (= (and b!5768690 c!1019950) b!5768684))

(assert (= (and b!5768690 (not c!1019950)) b!5768685))

(assert (= (and b!5768685 c!1019949) b!5768687))

(assert (= (and b!5768685 (not c!1019949)) b!5768682))

(assert (= (and b!5768682 c!1019951) b!5768689))

(assert (= (and b!5768682 (not c!1019951)) b!5768688))

(assert (= (or b!5768687 b!5768689) bm!443180))

(assert (= (or b!5768687 b!5768689) bm!443177))

(assert (= (or b!5768684 bm!443180) bm!443178))

(assert (= (or b!5768684 bm!443177) bm!443176))

(assert (= (or b!5768686 bm!443176) bm!443181))

(assert (= (or b!5768686 b!5768684) bm!443179))

(declare-fun m!6713938 () Bool)

(assert (=> bm!443181 m!6713938))

(declare-fun m!6713940 () Bool)

(assert (=> b!5768691 m!6713940))

(declare-fun m!6713942 () Bool)

(assert (=> bm!443179 m!6713942))

(declare-fun m!6713944 () Bool)

(assert (=> b!5768683 m!6713944))

(declare-fun m!6713946 () Bool)

(assert (=> bm!443178 m!6713946))

(assert (=> b!5768602 d!1817194))

(declare-fun d!1817196 () Bool)

(declare-fun dynLambda!24866 (Int Context!10330) (InoxSet Context!10330))

(assert (=> d!1817196 (= (flatMap!1394 z!1189 lambda!313353) (dynLambda!24866 lambda!313353 (h!69967 zl!343)))))

(declare-fun lt!2289803 () Unit!156656)

(declare-fun choose!43759 ((InoxSet Context!10330) Context!10330 Int) Unit!156656)

(assert (=> d!1817196 (= lt!2289803 (choose!43759 z!1189 (h!69967 zl!343) lambda!313353))))

(assert (=> d!1817196 (= z!1189 (store ((as const (Array Context!10330 Bool)) false) (h!69967 zl!343) true))))

(assert (=> d!1817196 (= (lemmaFlatMapOnSingletonSet!926 z!1189 (h!69967 zl!343) lambda!313353) lt!2289803)))

(declare-fun b_lambda!217743 () Bool)

(assert (=> (not b_lambda!217743) (not d!1817196)))

(declare-fun bs!1353360 () Bool)

(assert (= bs!1353360 d!1817196))

(assert (=> bs!1353360 m!6713908))

(declare-fun m!6713948 () Bool)

(assert (=> bs!1353360 m!6713948))

(declare-fun m!6713950 () Bool)

(assert (=> bs!1353360 m!6713950))

(declare-fun m!6713952 () Bool)

(assert (=> bs!1353360 m!6713952))

(assert (=> b!5768602 d!1817196))

(declare-fun d!1817198 () Bool)

(declare-fun nullableFct!1853 (Regex!15781) Bool)

(assert (=> d!1817198 (= (nullable!5813 (h!69966 (exprs!5665 (h!69967 zl!343)))) (nullableFct!1853 (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun bs!1353361 () Bool)

(assert (= bs!1353361 d!1817198))

(declare-fun m!6713954 () Bool)

(assert (=> bs!1353361 m!6713954))

(assert (=> b!5768602 d!1817198))

(declare-fun b!5768703 () Bool)

(declare-fun e!3544056 () Bool)

(assert (=> b!5768703 (= e!3544056 (nullable!5813 (h!69966 (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343)))))))))))

(declare-fun bm!443184 () Bool)

(declare-fun call!443189 () (InoxSet Context!10330))

(assert (=> bm!443184 (= call!443189 (derivationStepZipperDown!1123 (h!69966 (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343))))))) (Context!10331 (t!376980 (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343)))))))) (h!69968 s!2326)))))

(declare-fun b!5768704 () Bool)

(declare-fun e!3544054 () (InoxSet Context!10330))

(assert (=> b!5768704 (= e!3544054 call!443189)))

(declare-fun b!5768705 () Bool)

(declare-fun e!3544055 () (InoxSet Context!10330))

(assert (=> b!5768705 (= e!3544055 ((_ map or) call!443189 (derivationStepZipperUp!1049 (Context!10331 (t!376980 (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343)))))))) (h!69968 s!2326))))))

(declare-fun b!5768706 () Bool)

(assert (=> b!5768706 (= e!3544054 ((as const (Array Context!10330 Bool)) false))))

(declare-fun d!1817200 () Bool)

(declare-fun c!1019958 () Bool)

(assert (=> d!1817200 (= c!1019958 e!3544056)))

(declare-fun res!2434385 () Bool)

(assert (=> d!1817200 (=> (not res!2434385) (not e!3544056))))

(assert (=> d!1817200 (= res!2434385 ((_ is Cons!63518) (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343))))))))))

(assert (=> d!1817200 (= (derivationStepZipperUp!1049 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343))))) (h!69968 s!2326)) e!3544055)))

(declare-fun b!5768707 () Bool)

(assert (=> b!5768707 (= e!3544055 e!3544054)))

(declare-fun c!1019959 () Bool)

(assert (=> b!5768707 (= c!1019959 ((_ is Cons!63518) (exprs!5665 (Context!10331 (Cons!63518 (h!69966 (exprs!5665 (h!69967 zl!343))) (t!376980 (exprs!5665 (h!69967 zl!343))))))))))

(assert (= (and d!1817200 res!2434385) b!5768703))

(assert (= (and d!1817200 c!1019958) b!5768705))

(assert (= (and d!1817200 (not c!1019958)) b!5768707))

(assert (= (and b!5768707 c!1019959) b!5768704))

(assert (= (and b!5768707 (not c!1019959)) b!5768706))

(assert (= (or b!5768705 b!5768704) bm!443184))

(declare-fun m!6713956 () Bool)

(assert (=> b!5768703 m!6713956))

(declare-fun m!6713958 () Bool)

(assert (=> bm!443184 m!6713958))

(declare-fun m!6713960 () Bool)

(assert (=> b!5768705 m!6713960))

(assert (=> b!5768602 d!1817200))

(declare-fun b!5768708 () Bool)

(declare-fun e!3544059 () Bool)

(assert (=> b!5768708 (= e!3544059 (nullable!5813 (h!69966 (exprs!5665 lt!2289786))))))

(declare-fun bm!443185 () Bool)

(declare-fun call!443190 () (InoxSet Context!10330))

(assert (=> bm!443185 (= call!443190 (derivationStepZipperDown!1123 (h!69966 (exprs!5665 lt!2289786)) (Context!10331 (t!376980 (exprs!5665 lt!2289786))) (h!69968 s!2326)))))

(declare-fun b!5768709 () Bool)

(declare-fun e!3544057 () (InoxSet Context!10330))

(assert (=> b!5768709 (= e!3544057 call!443190)))

(declare-fun e!3544058 () (InoxSet Context!10330))

(declare-fun b!5768710 () Bool)

(assert (=> b!5768710 (= e!3544058 ((_ map or) call!443190 (derivationStepZipperUp!1049 (Context!10331 (t!376980 (exprs!5665 lt!2289786))) (h!69968 s!2326))))))

(declare-fun b!5768711 () Bool)

(assert (=> b!5768711 (= e!3544057 ((as const (Array Context!10330 Bool)) false))))

(declare-fun d!1817202 () Bool)

(declare-fun c!1019960 () Bool)

(assert (=> d!1817202 (= c!1019960 e!3544059)))

(declare-fun res!2434386 () Bool)

(assert (=> d!1817202 (=> (not res!2434386) (not e!3544059))))

(assert (=> d!1817202 (= res!2434386 ((_ is Cons!63518) (exprs!5665 lt!2289786)))))

(assert (=> d!1817202 (= (derivationStepZipperUp!1049 lt!2289786 (h!69968 s!2326)) e!3544058)))

(declare-fun b!5768712 () Bool)

(assert (=> b!5768712 (= e!3544058 e!3544057)))

(declare-fun c!1019961 () Bool)

(assert (=> b!5768712 (= c!1019961 ((_ is Cons!63518) (exprs!5665 lt!2289786)))))

(assert (= (and d!1817202 res!2434386) b!5768708))

(assert (= (and d!1817202 c!1019960) b!5768710))

(assert (= (and d!1817202 (not c!1019960)) b!5768712))

(assert (= (and b!5768712 c!1019961) b!5768709))

(assert (= (and b!5768712 (not c!1019961)) b!5768711))

(assert (= (or b!5768710 b!5768709) bm!443185))

(declare-fun m!6713962 () Bool)

(assert (=> b!5768708 m!6713962))

(declare-fun m!6713964 () Bool)

(assert (=> bm!443185 m!6713964))

(declare-fun m!6713966 () Bool)

(assert (=> b!5768710 m!6713966))

(assert (=> b!5768602 d!1817202))

(declare-fun b!5768713 () Bool)

(declare-fun e!3544062 () Bool)

(assert (=> b!5768713 (= e!3544062 (nullable!5813 (h!69966 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun bm!443186 () Bool)

(declare-fun call!443191 () (InoxSet Context!10330))

(assert (=> bm!443186 (= call!443191 (derivationStepZipperDown!1123 (h!69966 (exprs!5665 (h!69967 zl!343))) (Context!10331 (t!376980 (exprs!5665 (h!69967 zl!343)))) (h!69968 s!2326)))))

(declare-fun b!5768714 () Bool)

(declare-fun e!3544060 () (InoxSet Context!10330))

(assert (=> b!5768714 (= e!3544060 call!443191)))

(declare-fun e!3544061 () (InoxSet Context!10330))

(declare-fun b!5768715 () Bool)

(assert (=> b!5768715 (= e!3544061 ((_ map or) call!443191 (derivationStepZipperUp!1049 (Context!10331 (t!376980 (exprs!5665 (h!69967 zl!343)))) (h!69968 s!2326))))))

(declare-fun b!5768716 () Bool)

(assert (=> b!5768716 (= e!3544060 ((as const (Array Context!10330 Bool)) false))))

(declare-fun d!1817204 () Bool)

(declare-fun c!1019962 () Bool)

(assert (=> d!1817204 (= c!1019962 e!3544062)))

(declare-fun res!2434387 () Bool)

(assert (=> d!1817204 (=> (not res!2434387) (not e!3544062))))

(assert (=> d!1817204 (= res!2434387 ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343))))))

(assert (=> d!1817204 (= (derivationStepZipperUp!1049 (h!69967 zl!343) (h!69968 s!2326)) e!3544061)))

(declare-fun b!5768717 () Bool)

(assert (=> b!5768717 (= e!3544061 e!3544060)))

(declare-fun c!1019963 () Bool)

(assert (=> b!5768717 (= c!1019963 ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343))))))

(assert (= (and d!1817204 res!2434387) b!5768713))

(assert (= (and d!1817204 c!1019962) b!5768715))

(assert (= (and d!1817204 (not c!1019962)) b!5768717))

(assert (= (and b!5768717 c!1019963) b!5768714))

(assert (= (and b!5768717 (not c!1019963)) b!5768716))

(assert (= (or b!5768715 b!5768714) bm!443186))

(assert (=> b!5768713 m!6713906))

(declare-fun m!6713968 () Bool)

(assert (=> bm!443186 m!6713968))

(declare-fun m!6713970 () Bool)

(assert (=> b!5768715 m!6713970))

(assert (=> b!5768602 d!1817204))

(declare-fun d!1817206 () Bool)

(declare-fun choose!43760 ((InoxSet Context!10330) Int) (InoxSet Context!10330))

(assert (=> d!1817206 (= (flatMap!1394 z!1189 lambda!313353) (choose!43760 z!1189 lambda!313353))))

(declare-fun bs!1353362 () Bool)

(assert (= bs!1353362 d!1817206))

(declare-fun m!6713972 () Bool)

(assert (=> bs!1353362 m!6713972))

(assert (=> b!5768602 d!1817206))

(declare-fun bs!1353363 () Bool)

(declare-fun d!1817208 () Bool)

(assert (= bs!1353363 (and d!1817208 d!1817190)))

(declare-fun lambda!313362 () Int)

(assert (=> bs!1353363 (= lambda!313362 lambda!313356)))

(declare-fun bs!1353364 () Bool)

(assert (= bs!1353364 (and d!1817208 d!1817192)))

(assert (=> bs!1353364 (= lambda!313362 lambda!313359)))

(assert (=> d!1817208 (= (inv!82699 (h!69967 zl!343)) (forall!14898 (exprs!5665 (h!69967 zl!343)) lambda!313362))))

(declare-fun bs!1353365 () Bool)

(assert (= bs!1353365 d!1817208))

(declare-fun m!6713974 () Bool)

(assert (=> bs!1353365 m!6713974))

(assert (=> b!5768601 d!1817208))

(declare-fun d!1817210 () Bool)

(assert (=> d!1817210 (= (nullable!5813 (regOne!32074 (regOne!32074 r!7292))) (nullableFct!1853 (regOne!32074 (regOne!32074 r!7292))))))

(declare-fun bs!1353366 () Bool)

(assert (= bs!1353366 d!1817210))

(declare-fun m!6713976 () Bool)

(assert (=> bs!1353366 m!6713976))

(assert (=> b!5768600 d!1817210))

(declare-fun d!1817212 () Bool)

(declare-fun c!1019966 () Bool)

(declare-fun isEmpty!35415 (List!63644) Bool)

(assert (=> d!1817212 (= c!1019966 (isEmpty!35415 (t!376982 s!2326)))))

(declare-fun e!3544065 () Bool)

(assert (=> d!1817212 (= (matchZipper!1919 lt!2289783 (t!376982 s!2326)) e!3544065)))

(declare-fun b!5768722 () Bool)

(declare-fun nullableZipper!1707 ((InoxSet Context!10330)) Bool)

(assert (=> b!5768722 (= e!3544065 (nullableZipper!1707 lt!2289783))))

(declare-fun b!5768723 () Bool)

(declare-fun derivationStepZipper!1859 ((InoxSet Context!10330) C!31832) (InoxSet Context!10330))

(declare-fun head!12197 (List!63644) C!31832)

(declare-fun tail!11292 (List!63644) List!63644)

(assert (=> b!5768723 (= e!3544065 (matchZipper!1919 (derivationStepZipper!1859 lt!2289783 (head!12197 (t!376982 s!2326))) (tail!11292 (t!376982 s!2326))))))

(assert (= (and d!1817212 c!1019966) b!5768722))

(assert (= (and d!1817212 (not c!1019966)) b!5768723))

(declare-fun m!6713978 () Bool)

(assert (=> d!1817212 m!6713978))

(declare-fun m!6713980 () Bool)

(assert (=> b!5768722 m!6713980))

(declare-fun m!6713982 () Bool)

(assert (=> b!5768723 m!6713982))

(assert (=> b!5768723 m!6713982))

(declare-fun m!6713984 () Bool)

(assert (=> b!5768723 m!6713984))

(declare-fun m!6713986 () Bool)

(assert (=> b!5768723 m!6713986))

(assert (=> b!5768723 m!6713984))

(assert (=> b!5768723 m!6713986))

(declare-fun m!6713988 () Bool)

(assert (=> b!5768723 m!6713988))

(assert (=> b!5768599 d!1817212))

(declare-fun d!1817214 () Bool)

(assert (=> d!1817214 (not (matchZipper!1919 lt!2289783 (t!376982 s!2326)))))

(declare-fun lt!2289806 () Unit!156656)

(declare-fun choose!43761 ((InoxSet Context!10330) List!63644) Unit!156656)

(assert (=> d!1817214 (= lt!2289806 (choose!43761 lt!2289783 (t!376982 s!2326)))))

(assert (=> d!1817214 (= lt!2289783 ((as const (Array Context!10330 Bool)) false))))

(assert (=> d!1817214 (= (lemmaEmptyZipperMatchesNothing!66 lt!2289783 (t!376982 s!2326)) lt!2289806)))

(declare-fun bs!1353367 () Bool)

(assert (= bs!1353367 d!1817214))

(assert (=> bs!1353367 m!6713854))

(declare-fun m!6713990 () Bool)

(assert (=> bs!1353367 m!6713990))

(assert (=> b!5768599 d!1817214))

(declare-fun b!5768762 () Bool)

(declare-fun res!2434402 () Bool)

(declare-fun e!3544092 () Bool)

(assert (=> b!5768762 (=> res!2434402 e!3544092)))

(assert (=> b!5768762 (= res!2434402 (not ((_ is Concat!24626) r!7292)))))

(declare-fun e!3544093 () Bool)

(assert (=> b!5768762 (= e!3544093 e!3544092)))

(declare-fun b!5768763 () Bool)

(declare-fun e!3544097 () Bool)

(declare-fun e!3544094 () Bool)

(assert (=> b!5768763 (= e!3544097 e!3544094)))

(declare-fun res!2434403 () Bool)

(assert (=> b!5768763 (= res!2434403 (not (nullable!5813 (reg!16110 r!7292))))))

(assert (=> b!5768763 (=> (not res!2434403) (not e!3544094))))

(declare-fun bm!443197 () Bool)

(declare-fun call!443202 () Bool)

(declare-fun call!443204 () Bool)

(assert (=> bm!443197 (= call!443202 call!443204)))

(declare-fun b!5768764 () Bool)

(declare-fun e!3544098 () Bool)

(assert (=> b!5768764 (= e!3544098 call!443202)))

(declare-fun b!5768765 () Bool)

(assert (=> b!5768765 (= e!3544097 e!3544093)))

(declare-fun c!1019980 () Bool)

(assert (=> b!5768765 (= c!1019980 ((_ is Union!15781) r!7292))))

(declare-fun b!5768766 () Bool)

(declare-fun res!2434404 () Bool)

(declare-fun e!3544096 () Bool)

(assert (=> b!5768766 (=> (not res!2434404) (not e!3544096))))

(declare-fun call!443203 () Bool)

(assert (=> b!5768766 (= res!2434404 call!443203)))

(assert (=> b!5768766 (= e!3544093 e!3544096)))

(declare-fun d!1817218 () Bool)

(declare-fun res!2434406 () Bool)

(declare-fun e!3544095 () Bool)

(assert (=> d!1817218 (=> res!2434406 e!3544095)))

(assert (=> d!1817218 (= res!2434406 ((_ is ElementMatch!15781) r!7292))))

(assert (=> d!1817218 (= (validRegex!7517 r!7292) e!3544095)))

(declare-fun bm!443198 () Bool)

(declare-fun c!1019979 () Bool)

(assert (=> bm!443198 (= call!443204 (validRegex!7517 (ite c!1019979 (reg!16110 r!7292) (ite c!1019980 (regTwo!32075 r!7292) (regTwo!32074 r!7292)))))))

(declare-fun b!5768767 () Bool)

(assert (=> b!5768767 (= e!3544096 call!443202)))

(declare-fun bm!443199 () Bool)

(assert (=> bm!443199 (= call!443203 (validRegex!7517 (ite c!1019980 (regOne!32075 r!7292) (regOne!32074 r!7292))))))

(declare-fun b!5768768 () Bool)

(assert (=> b!5768768 (= e!3544092 e!3544098)))

(declare-fun res!2434405 () Bool)

(assert (=> b!5768768 (=> (not res!2434405) (not e!3544098))))

(assert (=> b!5768768 (= res!2434405 call!443203)))

(declare-fun b!5768769 () Bool)

(assert (=> b!5768769 (= e!3544095 e!3544097)))

(assert (=> b!5768769 (= c!1019979 ((_ is Star!15781) r!7292))))

(declare-fun b!5768770 () Bool)

(assert (=> b!5768770 (= e!3544094 call!443204)))

(assert (= (and d!1817218 (not res!2434406)) b!5768769))

(assert (= (and b!5768769 c!1019979) b!5768763))

(assert (= (and b!5768769 (not c!1019979)) b!5768765))

(assert (= (and b!5768763 res!2434403) b!5768770))

(assert (= (and b!5768765 c!1019980) b!5768766))

(assert (= (and b!5768765 (not c!1019980)) b!5768762))

(assert (= (and b!5768766 res!2434404) b!5768767))

(assert (= (and b!5768762 (not res!2434402)) b!5768768))

(assert (= (and b!5768768 res!2434405) b!5768764))

(assert (= (or b!5768767 b!5768764) bm!443197))

(assert (= (or b!5768766 b!5768768) bm!443199))

(assert (= (or b!5768770 bm!443197) bm!443198))

(declare-fun m!6714006 () Bool)

(assert (=> b!5768763 m!6714006))

(declare-fun m!6714008 () Bool)

(assert (=> bm!443198 m!6714008))

(declare-fun m!6714010 () Bool)

(assert (=> bm!443199 m!6714010))

(assert (=> start!592500 d!1817218))

(declare-fun d!1817226 () Bool)

(declare-fun c!1019981 () Bool)

(assert (=> d!1817226 (= c!1019981 (isEmpty!35415 (t!376982 s!2326)))))

(declare-fun e!3544099 () Bool)

(assert (=> d!1817226 (= (matchZipper!1919 lt!2289790 (t!376982 s!2326)) e!3544099)))

(declare-fun b!5768771 () Bool)

(assert (=> b!5768771 (= e!3544099 (nullableZipper!1707 lt!2289790))))

(declare-fun b!5768772 () Bool)

(assert (=> b!5768772 (= e!3544099 (matchZipper!1919 (derivationStepZipper!1859 lt!2289790 (head!12197 (t!376982 s!2326))) (tail!11292 (t!376982 s!2326))))))

(assert (= (and d!1817226 c!1019981) b!5768771))

(assert (= (and d!1817226 (not c!1019981)) b!5768772))

(assert (=> d!1817226 m!6713978))

(declare-fun m!6714012 () Bool)

(assert (=> b!5768771 m!6714012))

(assert (=> b!5768772 m!6713982))

(assert (=> b!5768772 m!6713982))

(declare-fun m!6714014 () Bool)

(assert (=> b!5768772 m!6714014))

(assert (=> b!5768772 m!6713986))

(assert (=> b!5768772 m!6714014))

(assert (=> b!5768772 m!6713986))

(declare-fun m!6714016 () Bool)

(assert (=> b!5768772 m!6714016))

(assert (=> b!5768609 d!1817226))

(declare-fun e!3544114 () Bool)

(declare-fun d!1817228 () Bool)

(assert (=> d!1817228 (= (matchZipper!1919 ((_ map or) lt!2289783 lt!2289790) (t!376982 s!2326)) e!3544114)))

(declare-fun res!2434411 () Bool)

(assert (=> d!1817228 (=> res!2434411 e!3544114)))

(assert (=> d!1817228 (= res!2434411 (matchZipper!1919 lt!2289783 (t!376982 s!2326)))))

(declare-fun lt!2289809 () Unit!156656)

(declare-fun choose!43762 ((InoxSet Context!10330) (InoxSet Context!10330) List!63644) Unit!156656)

(assert (=> d!1817228 (= lt!2289809 (choose!43762 lt!2289783 lt!2289790 (t!376982 s!2326)))))

(assert (=> d!1817228 (= (lemmaZipperConcatMatchesSameAsBothZippers!806 lt!2289783 lt!2289790 (t!376982 s!2326)) lt!2289809)))

(declare-fun b!5768797 () Bool)

(assert (=> b!5768797 (= e!3544114 (matchZipper!1919 lt!2289790 (t!376982 s!2326)))))

(assert (= (and d!1817228 (not res!2434411)) b!5768797))

(assert (=> d!1817228 m!6713856))

(assert (=> d!1817228 m!6713854))

(declare-fun m!6714018 () Bool)

(assert (=> d!1817228 m!6714018))

(assert (=> b!5768797 m!6713894))

(assert (=> b!5768607 d!1817228))

(assert (=> b!5768607 d!1817212))

(declare-fun d!1817230 () Bool)

(declare-fun c!1019992 () Bool)

(assert (=> d!1817230 (= c!1019992 (isEmpty!35415 (t!376982 s!2326)))))

(declare-fun e!3544115 () Bool)

(assert (=> d!1817230 (= (matchZipper!1919 ((_ map or) lt!2289783 lt!2289790) (t!376982 s!2326)) e!3544115)))

(declare-fun b!5768798 () Bool)

(assert (=> b!5768798 (= e!3544115 (nullableZipper!1707 ((_ map or) lt!2289783 lt!2289790)))))

(declare-fun b!5768799 () Bool)

(assert (=> b!5768799 (= e!3544115 (matchZipper!1919 (derivationStepZipper!1859 ((_ map or) lt!2289783 lt!2289790) (head!12197 (t!376982 s!2326))) (tail!11292 (t!376982 s!2326))))))

(assert (= (and d!1817230 c!1019992) b!5768798))

(assert (= (and d!1817230 (not c!1019992)) b!5768799))

(assert (=> d!1817230 m!6713978))

(declare-fun m!6714020 () Bool)

(assert (=> b!5768798 m!6714020))

(assert (=> b!5768799 m!6713982))

(assert (=> b!5768799 m!6713982))

(declare-fun m!6714022 () Bool)

(assert (=> b!5768799 m!6714022))

(assert (=> b!5768799 m!6713986))

(assert (=> b!5768799 m!6714022))

(assert (=> b!5768799 m!6713986))

(declare-fun m!6714024 () Bool)

(assert (=> b!5768799 m!6714024))

(assert (=> b!5768607 d!1817230))

(declare-fun d!1817232 () Bool)

(declare-fun lt!2289812 () Regex!15781)

(assert (=> d!1817232 (validRegex!7517 lt!2289812)))

(assert (=> d!1817232 (= lt!2289812 (generalisedUnion!1644 (unfocusZipperList!1209 zl!343)))))

(assert (=> d!1817232 (= (unfocusZipper!1523 zl!343) lt!2289812)))

(declare-fun bs!1353369 () Bool)

(assert (= bs!1353369 d!1817232))

(declare-fun m!6714026 () Bool)

(assert (=> bs!1353369 m!6714026))

(assert (=> bs!1353369 m!6713862))

(assert (=> bs!1353369 m!6713862))

(assert (=> bs!1353369 m!6713864))

(assert (=> b!5768596 d!1817232))

(declare-fun d!1817234 () Bool)

(declare-fun e!3544138 () Bool)

(assert (=> d!1817234 e!3544138))

(declare-fun res!2434427 () Bool)

(assert (=> d!1817234 (=> res!2434427 e!3544138)))

(declare-fun e!3544140 () Bool)

(assert (=> d!1817234 (= res!2434427 e!3544140)))

(declare-fun res!2434430 () Bool)

(assert (=> d!1817234 (=> (not res!2434430) (not e!3544140))))

(declare-fun lt!2289827 () Option!15790)

(assert (=> d!1817234 (= res!2434430 (isDefined!12493 lt!2289827))))

(declare-fun e!3544141 () Option!15790)

(assert (=> d!1817234 (= lt!2289827 e!3544141)))

(declare-fun c!1020005 () Bool)

(declare-fun e!3544139 () Bool)

(assert (=> d!1817234 (= c!1020005 e!3544139)))

(declare-fun res!2434429 () Bool)

(assert (=> d!1817234 (=> (not res!2434429) (not e!3544139))))

(assert (=> d!1817234 (= res!2434429 (matchR!7966 (regOne!32074 r!7292) Nil!63520))))

(assert (=> d!1817234 (validRegex!7517 (regOne!32074 r!7292))))

(assert (=> d!1817234 (= (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) Nil!63520 s!2326 s!2326) lt!2289827)))

(declare-fun b!5768837 () Bool)

(declare-fun res!2434431 () Bool)

(assert (=> b!5768837 (=> (not res!2434431) (not e!3544140))))

(declare-fun get!21918 (Option!15790) tuple2!65756)

(assert (=> b!5768837 (= res!2434431 (matchR!7966 (regTwo!32074 r!7292) (_2!36181 (get!21918 lt!2289827))))))

(declare-fun b!5768838 () Bool)

(assert (=> b!5768838 (= e!3544139 (matchR!7966 (regTwo!32074 r!7292) s!2326))))

(declare-fun b!5768839 () Bool)

(declare-fun e!3544142 () Option!15790)

(assert (=> b!5768839 (= e!3544142 None!15789)))

(declare-fun b!5768840 () Bool)

(declare-fun lt!2289826 () Unit!156656)

(declare-fun lt!2289825 () Unit!156656)

(assert (=> b!5768840 (= lt!2289826 lt!2289825)))

(declare-fun ++!13994 (List!63644 List!63644) List!63644)

(assert (=> b!5768840 (= (++!13994 (++!13994 Nil!63520 (Cons!63520 (h!69968 s!2326) Nil!63520)) (t!376982 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2111 (List!63644 C!31832 List!63644 List!63644) Unit!156656)

(assert (=> b!5768840 (= lt!2289825 (lemmaMoveElementToOtherListKeepsConcatEq!2111 Nil!63520 (h!69968 s!2326) (t!376982 s!2326) s!2326))))

(assert (=> b!5768840 (= e!3544142 (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) (++!13994 Nil!63520 (Cons!63520 (h!69968 s!2326) Nil!63520)) (t!376982 s!2326) s!2326))))

(declare-fun b!5768841 () Bool)

(assert (=> b!5768841 (= e!3544141 e!3544142)))

(declare-fun c!1020004 () Bool)

(assert (=> b!5768841 (= c!1020004 ((_ is Nil!63520) s!2326))))

(declare-fun b!5768842 () Bool)

(assert (=> b!5768842 (= e!3544138 (not (isDefined!12493 lt!2289827)))))

(declare-fun b!5768843 () Bool)

(assert (=> b!5768843 (= e!3544141 (Some!15789 (tuple2!65757 Nil!63520 s!2326)))))

(declare-fun b!5768844 () Bool)

(declare-fun res!2434428 () Bool)

(assert (=> b!5768844 (=> (not res!2434428) (not e!3544140))))

(assert (=> b!5768844 (= res!2434428 (matchR!7966 (regOne!32074 r!7292) (_1!36181 (get!21918 lt!2289827))))))

(declare-fun b!5768845 () Bool)

(assert (=> b!5768845 (= e!3544140 (= (++!13994 (_1!36181 (get!21918 lt!2289827)) (_2!36181 (get!21918 lt!2289827))) s!2326))))

(assert (= (and d!1817234 res!2434429) b!5768838))

(assert (= (and d!1817234 c!1020005) b!5768843))

(assert (= (and d!1817234 (not c!1020005)) b!5768841))

(assert (= (and b!5768841 c!1020004) b!5768839))

(assert (= (and b!5768841 (not c!1020004)) b!5768840))

(assert (= (and d!1817234 res!2434430) b!5768844))

(assert (= (and b!5768844 res!2434428) b!5768837))

(assert (= (and b!5768837 res!2434431) b!5768845))

(assert (= (and d!1817234 (not res!2434427)) b!5768842))

(declare-fun m!6714056 () Bool)

(assert (=> b!5768845 m!6714056))

(declare-fun m!6714058 () Bool)

(assert (=> b!5768845 m!6714058))

(declare-fun m!6714060 () Bool)

(assert (=> d!1817234 m!6714060))

(declare-fun m!6714062 () Bool)

(assert (=> d!1817234 m!6714062))

(declare-fun m!6714064 () Bool)

(assert (=> d!1817234 m!6714064))

(assert (=> b!5768837 m!6714056))

(declare-fun m!6714066 () Bool)

(assert (=> b!5768837 m!6714066))

(declare-fun m!6714068 () Bool)

(assert (=> b!5768840 m!6714068))

(assert (=> b!5768840 m!6714068))

(declare-fun m!6714070 () Bool)

(assert (=> b!5768840 m!6714070))

(declare-fun m!6714072 () Bool)

(assert (=> b!5768840 m!6714072))

(assert (=> b!5768840 m!6714068))

(declare-fun m!6714074 () Bool)

(assert (=> b!5768840 m!6714074))

(assert (=> b!5768844 m!6714056))

(declare-fun m!6714076 () Bool)

(assert (=> b!5768844 m!6714076))

(declare-fun m!6714078 () Bool)

(assert (=> b!5768838 m!6714078))

(assert (=> b!5768842 m!6714060))

(assert (=> b!5768616 d!1817234))

(declare-fun d!1817248 () Bool)

(declare-fun choose!43766 (Int) Bool)

(assert (=> d!1817248 (= (Exists!2881 lambda!313352) (choose!43766 lambda!313352))))

(declare-fun bs!1353372 () Bool)

(assert (= bs!1353372 d!1817248))

(declare-fun m!6714080 () Bool)

(assert (=> bs!1353372 m!6714080))

(assert (=> b!5768616 d!1817248))

(declare-fun d!1817250 () Bool)

(assert (=> d!1817250 (= (Exists!2881 lambda!313351) (choose!43766 lambda!313351))))

(declare-fun bs!1353373 () Bool)

(assert (= bs!1353373 d!1817250))

(declare-fun m!6714082 () Bool)

(assert (=> bs!1353373 m!6714082))

(assert (=> b!5768616 d!1817250))

(declare-fun bs!1353374 () Bool)

(declare-fun d!1817252 () Bool)

(assert (= bs!1353374 (and d!1817252 b!5768616)))

(declare-fun lambda!313369 () Int)

(assert (=> bs!1353374 (= lambda!313369 lambda!313351)))

(assert (=> bs!1353374 (not (= lambda!313369 lambda!313352))))

(assert (=> d!1817252 true))

(assert (=> d!1817252 true))

(assert (=> d!1817252 true))

(assert (=> d!1817252 (= (isDefined!12493 (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) Nil!63520 s!2326 s!2326)) (Exists!2881 lambda!313369))))

(declare-fun lt!2289830 () Unit!156656)

(declare-fun choose!43767 (Regex!15781 Regex!15781 List!63644) Unit!156656)

(assert (=> d!1817252 (= lt!2289830 (choose!43767 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326))))

(assert (=> d!1817252 (validRegex!7517 (regOne!32074 r!7292))))

(assert (=> d!1817252 (= (lemmaFindConcatSeparationEquivalentToExists!1968 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326) lt!2289830)))

(declare-fun bs!1353375 () Bool)

(assert (= bs!1353375 d!1817252))

(declare-fun m!6714084 () Bool)

(assert (=> bs!1353375 m!6714084))

(declare-fun m!6714086 () Bool)

(assert (=> bs!1353375 m!6714086))

(assert (=> bs!1353375 m!6713868))

(assert (=> bs!1353375 m!6714064))

(assert (=> bs!1353375 m!6713868))

(assert (=> bs!1353375 m!6713870))

(assert (=> b!5768616 d!1817252))

(declare-fun bs!1353379 () Bool)

(declare-fun d!1817254 () Bool)

(assert (= bs!1353379 (and d!1817254 b!5768616)))

(declare-fun lambda!313376 () Int)

(assert (=> bs!1353379 (= lambda!313376 lambda!313351)))

(assert (=> bs!1353379 (not (= lambda!313376 lambda!313352))))

(declare-fun bs!1353380 () Bool)

(assert (= bs!1353380 (and d!1817254 d!1817252)))

(assert (=> bs!1353380 (= lambda!313376 lambda!313369)))

(assert (=> d!1817254 true))

(assert (=> d!1817254 true))

(assert (=> d!1817254 true))

(declare-fun lambda!313377 () Int)

(assert (=> bs!1353379 (not (= lambda!313377 lambda!313351))))

(assert (=> bs!1353379 (= lambda!313377 lambda!313352)))

(assert (=> bs!1353380 (not (= lambda!313377 lambda!313369))))

(declare-fun bs!1353381 () Bool)

(assert (= bs!1353381 d!1817254))

(assert (=> bs!1353381 (not (= lambda!313377 lambda!313376))))

(assert (=> d!1817254 true))

(assert (=> d!1817254 true))

(assert (=> d!1817254 true))

(assert (=> d!1817254 (= (Exists!2881 lambda!313376) (Exists!2881 lambda!313377))))

(declare-fun lt!2289835 () Unit!156656)

(declare-fun choose!43768 (Regex!15781 Regex!15781 List!63644) Unit!156656)

(assert (=> d!1817254 (= lt!2289835 (choose!43768 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326))))

(assert (=> d!1817254 (validRegex!7517 (regOne!32074 r!7292))))

(assert (=> d!1817254 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1510 (regOne!32074 r!7292) (regTwo!32074 r!7292) s!2326) lt!2289835)))

(declare-fun m!6714096 () Bool)

(assert (=> bs!1353381 m!6714096))

(declare-fun m!6714098 () Bool)

(assert (=> bs!1353381 m!6714098))

(declare-fun m!6714100 () Bool)

(assert (=> bs!1353381 m!6714100))

(assert (=> bs!1353381 m!6714064))

(assert (=> b!5768616 d!1817254))

(declare-fun d!1817258 () Bool)

(declare-fun isEmpty!35417 (Option!15790) Bool)

(assert (=> d!1817258 (= (isDefined!12493 (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) Nil!63520 s!2326 s!2326)) (not (isEmpty!35417 (findConcatSeparation!2204 (regOne!32074 r!7292) (regTwo!32074 r!7292) Nil!63520 s!2326 s!2326))))))

(declare-fun bs!1353382 () Bool)

(assert (= bs!1353382 d!1817258))

(assert (=> bs!1353382 m!6713868))

(declare-fun m!6714102 () Bool)

(assert (=> bs!1353382 m!6714102))

(assert (=> b!5768616 d!1817258))

(declare-fun bs!1353384 () Bool)

(declare-fun d!1817260 () Bool)

(assert (= bs!1353384 (and d!1817260 d!1817190)))

(declare-fun lambda!313380 () Int)

(assert (=> bs!1353384 (= lambda!313380 lambda!313356)))

(declare-fun bs!1353385 () Bool)

(assert (= bs!1353385 (and d!1817260 d!1817192)))

(assert (=> bs!1353385 (= lambda!313380 lambda!313359)))

(declare-fun bs!1353386 () Bool)

(assert (= bs!1353386 (and d!1817260 d!1817208)))

(assert (=> bs!1353386 (= lambda!313380 lambda!313362)))

(declare-fun b!5768963 () Bool)

(declare-fun e!3544212 () Bool)

(declare-fun e!3544210 () Bool)

(assert (=> b!5768963 (= e!3544212 e!3544210)))

(declare-fun c!1020037 () Bool)

(assert (=> b!5768963 (= c!1020037 (isEmpty!35414 (tail!11291 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun b!5768964 () Bool)

(declare-fun lt!2289842 () Regex!15781)

(assert (=> b!5768964 (= e!3544210 (= lt!2289842 (head!12196 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun b!5768965 () Bool)

(declare-fun e!3544207 () Bool)

(assert (=> b!5768965 (= e!3544207 e!3544212)))

(declare-fun c!1020036 () Bool)

(assert (=> b!5768965 (= c!1020036 (isEmpty!35414 (exprs!5665 (h!69967 zl!343))))))

(declare-fun b!5768966 () Bool)

(declare-fun e!3544208 () Regex!15781)

(assert (=> b!5768966 (= e!3544208 (Concat!24626 (h!69966 (exprs!5665 (h!69967 zl!343))) (generalisedConcat!1396 (t!376980 (exprs!5665 (h!69967 zl!343))))))))

(declare-fun b!5768967 () Bool)

(assert (=> b!5768967 (= e!3544208 EmptyExpr!15781)))

(declare-fun b!5768968 () Bool)

(declare-fun e!3544209 () Bool)

(assert (=> b!5768968 (= e!3544209 (isEmpty!35414 (t!376980 (exprs!5665 (h!69967 zl!343)))))))

(declare-fun b!5768969 () Bool)

(declare-fun isEmptyExpr!1266 (Regex!15781) Bool)

(assert (=> b!5768969 (= e!3544212 (isEmptyExpr!1266 lt!2289842))))

(assert (=> d!1817260 e!3544207))

(declare-fun res!2434491 () Bool)

(assert (=> d!1817260 (=> (not res!2434491) (not e!3544207))))

(assert (=> d!1817260 (= res!2434491 (validRegex!7517 lt!2289842))))

(declare-fun e!3544211 () Regex!15781)

(assert (=> d!1817260 (= lt!2289842 e!3544211)))

(declare-fun c!1020035 () Bool)

(assert (=> d!1817260 (= c!1020035 e!3544209)))

(declare-fun res!2434492 () Bool)

(assert (=> d!1817260 (=> (not res!2434492) (not e!3544209))))

(assert (=> d!1817260 (= res!2434492 ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343))))))

(assert (=> d!1817260 (forall!14898 (exprs!5665 (h!69967 zl!343)) lambda!313380)))

(assert (=> d!1817260 (= (generalisedConcat!1396 (exprs!5665 (h!69967 zl!343))) lt!2289842)))

(declare-fun b!5768970 () Bool)

(assert (=> b!5768970 (= e!3544211 e!3544208)))

(declare-fun c!1020038 () Bool)

(assert (=> b!5768970 (= c!1020038 ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343))))))

(declare-fun b!5768971 () Bool)

(assert (=> b!5768971 (= e!3544211 (h!69966 (exprs!5665 (h!69967 zl!343))))))

(declare-fun b!5768972 () Bool)

(declare-fun isConcat!789 (Regex!15781) Bool)

(assert (=> b!5768972 (= e!3544210 (isConcat!789 lt!2289842))))

(assert (= (and d!1817260 res!2434492) b!5768968))

(assert (= (and d!1817260 c!1020035) b!5768971))

(assert (= (and d!1817260 (not c!1020035)) b!5768970))

(assert (= (and b!5768970 c!1020038) b!5768966))

(assert (= (and b!5768970 (not c!1020038)) b!5768967))

(assert (= (and d!1817260 res!2434491) b!5768965))

(assert (= (and b!5768965 c!1020036) b!5768969))

(assert (= (and b!5768965 (not c!1020036)) b!5768963))

(assert (= (and b!5768963 c!1020037) b!5768964))

(assert (= (and b!5768963 (not c!1020037)) b!5768972))

(declare-fun m!6714118 () Bool)

(assert (=> b!5768969 m!6714118))

(declare-fun m!6714120 () Bool)

(assert (=> b!5768963 m!6714120))

(assert (=> b!5768963 m!6714120))

(declare-fun m!6714122 () Bool)

(assert (=> b!5768963 m!6714122))

(declare-fun m!6714124 () Bool)

(assert (=> b!5768966 m!6714124))

(assert (=> b!5768968 m!6713880))

(declare-fun m!6714126 () Bool)

(assert (=> b!5768972 m!6714126))

(declare-fun m!6714128 () Bool)

(assert (=> b!5768964 m!6714128))

(declare-fun m!6714130 () Bool)

(assert (=> b!5768965 m!6714130))

(declare-fun m!6714132 () Bool)

(assert (=> d!1817260 m!6714132))

(declare-fun m!6714134 () Bool)

(assert (=> d!1817260 m!6714134))

(assert (=> b!5768595 d!1817260))

(declare-fun bs!1353389 () Bool)

(declare-fun b!5769041 () Bool)

(assert (= bs!1353389 (and b!5769041 d!1817254)))

(declare-fun lambda!313385 () Int)

(assert (=> bs!1353389 (not (= lambda!313385 lambda!313377))))

(declare-fun bs!1353390 () Bool)

(assert (= bs!1353390 (and b!5769041 b!5768616)))

(assert (=> bs!1353390 (not (= lambda!313385 lambda!313351))))

(declare-fun bs!1353391 () Bool)

(assert (= bs!1353391 (and b!5769041 d!1817252)))

(assert (=> bs!1353391 (not (= lambda!313385 lambda!313369))))

(assert (=> bs!1353390 (not (= lambda!313385 lambda!313352))))

(assert (=> bs!1353389 (not (= lambda!313385 lambda!313376))))

(assert (=> b!5769041 true))

(assert (=> b!5769041 true))

(declare-fun bs!1353392 () Bool)

(declare-fun b!5769039 () Bool)

(assert (= bs!1353392 (and b!5769039 d!1817254)))

(declare-fun lambda!313386 () Int)

(assert (=> bs!1353392 (= lambda!313386 lambda!313377)))

(declare-fun bs!1353393 () Bool)

(assert (= bs!1353393 (and b!5769039 b!5768616)))

(assert (=> bs!1353393 (not (= lambda!313386 lambda!313351))))

(declare-fun bs!1353394 () Bool)

(assert (= bs!1353394 (and b!5769039 d!1817252)))

(assert (=> bs!1353394 (not (= lambda!313386 lambda!313369))))

(assert (=> bs!1353393 (= lambda!313386 lambda!313352)))

(declare-fun bs!1353395 () Bool)

(assert (= bs!1353395 (and b!5769039 b!5769041)))

(assert (=> bs!1353395 (not (= lambda!313386 lambda!313385))))

(assert (=> bs!1353392 (not (= lambda!313386 lambda!313376))))

(assert (=> b!5769039 true))

(assert (=> b!5769039 true))

(declare-fun d!1817266 () Bool)

(declare-fun c!1020053 () Bool)

(assert (=> d!1817266 (= c!1020053 ((_ is EmptyExpr!15781) r!7292))))

(declare-fun e!3544246 () Bool)

(assert (=> d!1817266 (= (matchRSpec!2884 r!7292 s!2326) e!3544246)))

(declare-fun b!5769032 () Bool)

(declare-fun res!2434525 () Bool)

(declare-fun e!3544251 () Bool)

(assert (=> b!5769032 (=> res!2434525 e!3544251)))

(declare-fun call!443237 () Bool)

(assert (=> b!5769032 (= res!2434525 call!443237)))

(declare-fun e!3544252 () Bool)

(assert (=> b!5769032 (= e!3544252 e!3544251)))

(declare-fun b!5769033 () Bool)

(assert (=> b!5769033 (= e!3544246 call!443237)))

(declare-fun b!5769034 () Bool)

(declare-fun e!3544248 () Bool)

(assert (=> b!5769034 (= e!3544246 e!3544248)))

(declare-fun res!2434524 () Bool)

(assert (=> b!5769034 (= res!2434524 (not ((_ is EmptyLang!15781) r!7292)))))

(assert (=> b!5769034 (=> (not res!2434524) (not e!3544248))))

(declare-fun bm!443232 () Bool)

(assert (=> bm!443232 (= call!443237 (isEmpty!35415 s!2326))))

(declare-fun b!5769035 () Bool)

(declare-fun c!1020056 () Bool)

(assert (=> b!5769035 (= c!1020056 ((_ is Union!15781) r!7292))))

(declare-fun e!3544247 () Bool)

(declare-fun e!3544249 () Bool)

(assert (=> b!5769035 (= e!3544247 e!3544249)))

(declare-fun b!5769036 () Bool)

(declare-fun e!3544250 () Bool)

(assert (=> b!5769036 (= e!3544250 (matchRSpec!2884 (regTwo!32075 r!7292) s!2326))))

(declare-fun b!5769037 () Bool)

(assert (=> b!5769037 (= e!3544249 e!3544250)))

(declare-fun res!2434526 () Bool)

(assert (=> b!5769037 (= res!2434526 (matchRSpec!2884 (regOne!32075 r!7292) s!2326))))

(assert (=> b!5769037 (=> res!2434526 e!3544250)))

(declare-fun b!5769038 () Bool)

(assert (=> b!5769038 (= e!3544249 e!3544252)))

(declare-fun c!1020054 () Bool)

(assert (=> b!5769038 (= c!1020054 ((_ is Star!15781) r!7292))))

(declare-fun call!443238 () Bool)

(assert (=> b!5769039 (= e!3544252 call!443238)))

(declare-fun bm!443233 () Bool)

(assert (=> bm!443233 (= call!443238 (Exists!2881 (ite c!1020054 lambda!313385 lambda!313386)))))

(declare-fun b!5769040 () Bool)

(declare-fun c!1020055 () Bool)

(assert (=> b!5769040 (= c!1020055 ((_ is ElementMatch!15781) r!7292))))

(assert (=> b!5769040 (= e!3544248 e!3544247)))

(assert (=> b!5769041 (= e!3544251 call!443238)))

(declare-fun b!5769042 () Bool)

(assert (=> b!5769042 (= e!3544247 (= s!2326 (Cons!63520 (c!1019923 r!7292) Nil!63520)))))

(assert (= (and d!1817266 c!1020053) b!5769033))

(assert (= (and d!1817266 (not c!1020053)) b!5769034))

(assert (= (and b!5769034 res!2434524) b!5769040))

(assert (= (and b!5769040 c!1020055) b!5769042))

(assert (= (and b!5769040 (not c!1020055)) b!5769035))

(assert (= (and b!5769035 c!1020056) b!5769037))

(assert (= (and b!5769035 (not c!1020056)) b!5769038))

(assert (= (and b!5769037 (not res!2434526)) b!5769036))

(assert (= (and b!5769038 c!1020054) b!5769032))

(assert (= (and b!5769038 (not c!1020054)) b!5769039))

(assert (= (and b!5769032 (not res!2434525)) b!5769041))

(assert (= (or b!5769041 b!5769039) bm!443233))

(assert (= (or b!5769033 b!5769032) bm!443232))

(declare-fun m!6714164 () Bool)

(assert (=> bm!443232 m!6714164))

(declare-fun m!6714166 () Bool)

(assert (=> b!5769036 m!6714166))

(declare-fun m!6714168 () Bool)

(assert (=> b!5769037 m!6714168))

(declare-fun m!6714170 () Bool)

(assert (=> bm!443233 m!6714170))

(assert (=> b!5768615 d!1817266))

(declare-fun b!5769079 () Bool)

(declare-fun res!2434555 () Bool)

(declare-fun e!3544272 () Bool)

(assert (=> b!5769079 (=> res!2434555 e!3544272)))

(assert (=> b!5769079 (= res!2434555 (not ((_ is ElementMatch!15781) r!7292)))))

(declare-fun e!3544274 () Bool)

(assert (=> b!5769079 (= e!3544274 e!3544272)))

(declare-fun b!5769080 () Bool)

(declare-fun e!3544273 () Bool)

(declare-fun e!3544277 () Bool)

(assert (=> b!5769080 (= e!3544273 e!3544277)))

(declare-fun res!2434558 () Bool)

(assert (=> b!5769080 (=> res!2434558 e!3544277)))

(declare-fun call!443241 () Bool)

(assert (=> b!5769080 (= res!2434558 call!443241)))

(declare-fun d!1817274 () Bool)

(declare-fun e!3544271 () Bool)

(assert (=> d!1817274 e!3544271))

(declare-fun c!1020063 () Bool)

(assert (=> d!1817274 (= c!1020063 ((_ is EmptyExpr!15781) r!7292))))

(declare-fun lt!2289859 () Bool)

(declare-fun e!3544276 () Bool)

(assert (=> d!1817274 (= lt!2289859 e!3544276)))

(declare-fun c!1020065 () Bool)

(assert (=> d!1817274 (= c!1020065 (isEmpty!35415 s!2326))))

(assert (=> d!1817274 (validRegex!7517 r!7292)))

(assert (=> d!1817274 (= (matchR!7966 r!7292 s!2326) lt!2289859)))

(declare-fun b!5769081 () Bool)

(declare-fun res!2434551 () Bool)

(declare-fun e!3544275 () Bool)

(assert (=> b!5769081 (=> (not res!2434551) (not e!3544275))))

(assert (=> b!5769081 (= res!2434551 (not call!443241))))

(declare-fun b!5769082 () Bool)

(assert (=> b!5769082 (= e!3544274 (not lt!2289859))))

(declare-fun b!5769083 () Bool)

(declare-fun res!2434556 () Bool)

(assert (=> b!5769083 (=> res!2434556 e!3544277)))

(assert (=> b!5769083 (= res!2434556 (not (isEmpty!35415 (tail!11292 s!2326))))))

(declare-fun b!5769084 () Bool)

(declare-fun res!2434553 () Bool)

(assert (=> b!5769084 (=> res!2434553 e!3544272)))

(assert (=> b!5769084 (= res!2434553 e!3544275)))

(declare-fun res!2434554 () Bool)

(assert (=> b!5769084 (=> (not res!2434554) (not e!3544275))))

(assert (=> b!5769084 (= res!2434554 lt!2289859)))

(declare-fun bm!443236 () Bool)

(assert (=> bm!443236 (= call!443241 (isEmpty!35415 s!2326))))

(declare-fun b!5769085 () Bool)

(declare-fun derivativeStep!4562 (Regex!15781 C!31832) Regex!15781)

(assert (=> b!5769085 (= e!3544276 (matchR!7966 (derivativeStep!4562 r!7292 (head!12197 s!2326)) (tail!11292 s!2326)))))

(declare-fun b!5769086 () Bool)

(assert (=> b!5769086 (= e!3544276 (nullable!5813 r!7292))))

(declare-fun b!5769087 () Bool)

(assert (=> b!5769087 (= e!3544277 (not (= (head!12197 s!2326) (c!1019923 r!7292))))))

(declare-fun b!5769088 () Bool)

(assert (=> b!5769088 (= e!3544272 e!3544273)))

(declare-fun res!2434552 () Bool)

(assert (=> b!5769088 (=> (not res!2434552) (not e!3544273))))

(assert (=> b!5769088 (= res!2434552 (not lt!2289859))))

(declare-fun b!5769089 () Bool)

(assert (=> b!5769089 (= e!3544275 (= (head!12197 s!2326) (c!1019923 r!7292)))))

(declare-fun b!5769090 () Bool)

(declare-fun res!2434557 () Bool)

(assert (=> b!5769090 (=> (not res!2434557) (not e!3544275))))

(assert (=> b!5769090 (= res!2434557 (isEmpty!35415 (tail!11292 s!2326)))))

(declare-fun b!5769091 () Bool)

(assert (=> b!5769091 (= e!3544271 (= lt!2289859 call!443241))))

(declare-fun b!5769092 () Bool)

(assert (=> b!5769092 (= e!3544271 e!3544274)))

(declare-fun c!1020064 () Bool)

(assert (=> b!5769092 (= c!1020064 ((_ is EmptyLang!15781) r!7292))))

(assert (= (and d!1817274 c!1020065) b!5769086))

(assert (= (and d!1817274 (not c!1020065)) b!5769085))

(assert (= (and d!1817274 c!1020063) b!5769091))

(assert (= (and d!1817274 (not c!1020063)) b!5769092))

(assert (= (and b!5769092 c!1020064) b!5769082))

(assert (= (and b!5769092 (not c!1020064)) b!5769079))

(assert (= (and b!5769079 (not res!2434555)) b!5769084))

(assert (= (and b!5769084 res!2434554) b!5769081))

(assert (= (and b!5769081 res!2434551) b!5769090))

(assert (= (and b!5769090 res!2434557) b!5769089))

(assert (= (and b!5769084 (not res!2434553)) b!5769088))

(assert (= (and b!5769088 res!2434552) b!5769080))

(assert (= (and b!5769080 (not res!2434558)) b!5769083))

(assert (= (and b!5769083 (not res!2434556)) b!5769087))

(assert (= (or b!5769091 b!5769080 b!5769081) bm!443236))

(declare-fun m!6714176 () Bool)

(assert (=> b!5769090 m!6714176))

(assert (=> b!5769090 m!6714176))

(declare-fun m!6714178 () Bool)

(assert (=> b!5769090 m!6714178))

(assert (=> bm!443236 m!6714164))

(declare-fun m!6714180 () Bool)

(assert (=> b!5769089 m!6714180))

(assert (=> b!5769083 m!6714176))

(assert (=> b!5769083 m!6714176))

(assert (=> b!5769083 m!6714178))

(assert (=> b!5769087 m!6714180))

(assert (=> d!1817274 m!6714164))

(assert (=> d!1817274 m!6713850))

(declare-fun m!6714182 () Bool)

(assert (=> b!5769086 m!6714182))

(assert (=> b!5769085 m!6714180))

(assert (=> b!5769085 m!6714180))

(declare-fun m!6714184 () Bool)

(assert (=> b!5769085 m!6714184))

(assert (=> b!5769085 m!6714176))

(assert (=> b!5769085 m!6714184))

(assert (=> b!5769085 m!6714176))

(declare-fun m!6714186 () Bool)

(assert (=> b!5769085 m!6714186))

(assert (=> b!5768615 d!1817274))

(declare-fun d!1817278 () Bool)

(assert (=> d!1817278 (= (matchR!7966 r!7292 s!2326) (matchRSpec!2884 r!7292 s!2326))))

(declare-fun lt!2289863 () Unit!156656)

(declare-fun choose!43772 (Regex!15781 List!63644) Unit!156656)

(assert (=> d!1817278 (= lt!2289863 (choose!43772 r!7292 s!2326))))

(assert (=> d!1817278 (validRegex!7517 r!7292)))

(assert (=> d!1817278 (= (mainMatchTheorem!2884 r!7292 s!2326) lt!2289863)))

(declare-fun bs!1353405 () Bool)

(assert (= bs!1353405 d!1817278))

(assert (=> bs!1353405 m!6713884))

(assert (=> bs!1353405 m!6713882))

(declare-fun m!6714188 () Bool)

(assert (=> bs!1353405 m!6714188))

(assert (=> bs!1353405 m!6713850))

(assert (=> b!5768615 d!1817278))

(declare-fun d!1817280 () Bool)

(assert (=> d!1817280 (= (isEmpty!35414 (t!376980 (exprs!5665 (h!69967 zl!343)))) ((_ is Nil!63518) (t!376980 (exprs!5665 (h!69967 zl!343)))))))

(assert (=> b!5768605 d!1817280))

(declare-fun d!1817282 () Bool)

(assert (=> d!1817282 (= (isEmpty!35413 (t!376981 zl!343)) ((_ is Nil!63519) (t!376981 zl!343)))))

(assert (=> b!5768594 d!1817282))

(declare-fun bs!1353406 () Bool)

(declare-fun d!1817286 () Bool)

(assert (= bs!1353406 (and d!1817286 d!1817190)))

(declare-fun lambda!313396 () Int)

(assert (=> bs!1353406 (= lambda!313396 lambda!313356)))

(declare-fun bs!1353407 () Bool)

(assert (= bs!1353407 (and d!1817286 d!1817192)))

(assert (=> bs!1353407 (= lambda!313396 lambda!313359)))

(declare-fun bs!1353408 () Bool)

(assert (= bs!1353408 (and d!1817286 d!1817208)))

(assert (=> bs!1353408 (= lambda!313396 lambda!313362)))

(declare-fun bs!1353409 () Bool)

(assert (= bs!1353409 (and d!1817286 d!1817260)))

(assert (=> bs!1353409 (= lambda!313396 lambda!313380)))

(assert (=> d!1817286 (= (inv!82699 setElem!38763) (forall!14898 (exprs!5665 setElem!38763) lambda!313396))))

(declare-fun bs!1353411 () Bool)

(assert (= bs!1353411 d!1817286))

(declare-fun m!6714198 () Bool)

(assert (=> bs!1353411 m!6714198))

(assert (=> setNonEmpty!38763 d!1817286))

(declare-fun d!1817290 () Bool)

(declare-fun e!3544282 () Bool)

(assert (=> d!1817290 e!3544282))

(declare-fun res!2434565 () Bool)

(assert (=> d!1817290 (=> (not res!2434565) (not e!3544282))))

(declare-fun lt!2289866 () List!63643)

(declare-fun noDuplicate!1688 (List!63643) Bool)

(assert (=> d!1817290 (= res!2434565 (noDuplicate!1688 lt!2289866))))

(declare-fun choose!43775 ((InoxSet Context!10330)) List!63643)

(assert (=> d!1817290 (= lt!2289866 (choose!43775 z!1189))))

(assert (=> d!1817290 (= (toList!9565 z!1189) lt!2289866)))

(declare-fun b!5769099 () Bool)

(declare-fun content!11599 (List!63643) (InoxSet Context!10330))

(assert (=> b!5769099 (= e!3544282 (= (content!11599 lt!2289866) z!1189))))

(assert (= (and d!1817290 res!2434565) b!5769099))

(declare-fun m!6714200 () Bool)

(assert (=> d!1817290 m!6714200))

(declare-fun m!6714202 () Bool)

(assert (=> d!1817290 m!6714202))

(declare-fun m!6714204 () Bool)

(assert (=> b!5769099 m!6714204))

(assert (=> b!5768604 d!1817290))

(declare-fun b!5769104 () Bool)

(declare-fun e!3544285 () Bool)

(declare-fun tp!1594027 () Bool)

(declare-fun tp!1594028 () Bool)

(assert (=> b!5769104 (= e!3544285 (and tp!1594027 tp!1594028))))

(assert (=> b!5768603 (= tp!1594021 e!3544285)))

(assert (= (and b!5768603 ((_ is Cons!63518) (exprs!5665 setElem!38763))) b!5769104))

(declare-fun b!5769120 () Bool)

(declare-fun e!3544290 () Bool)

(declare-fun tp!1594041 () Bool)

(declare-fun tp!1594042 () Bool)

(assert (=> b!5769120 (= e!3544290 (and tp!1594041 tp!1594042))))

(declare-fun b!5769117 () Bool)

(assert (=> b!5769117 (= e!3544290 tp_is_empty!40815)))

(assert (=> b!5768608 (= tp!1594020 e!3544290)))

(declare-fun b!5769118 () Bool)

(declare-fun tp!1594040 () Bool)

(declare-fun tp!1594043 () Bool)

(assert (=> b!5769118 (= e!3544290 (and tp!1594040 tp!1594043))))

(declare-fun b!5769119 () Bool)

(declare-fun tp!1594039 () Bool)

(assert (=> b!5769119 (= e!3544290 tp!1594039)))

(assert (= (and b!5768608 ((_ is ElementMatch!15781) (regOne!32074 r!7292))) b!5769117))

(assert (= (and b!5768608 ((_ is Concat!24626) (regOne!32074 r!7292))) b!5769118))

(assert (= (and b!5768608 ((_ is Star!15781) (regOne!32074 r!7292))) b!5769119))

(assert (= (and b!5768608 ((_ is Union!15781) (regOne!32074 r!7292))) b!5769120))

(declare-fun b!5769125 () Bool)

(declare-fun e!3544292 () Bool)

(declare-fun tp!1594046 () Bool)

(declare-fun tp!1594047 () Bool)

(assert (=> b!5769125 (= e!3544292 (and tp!1594046 tp!1594047))))

(declare-fun b!5769122 () Bool)

(assert (=> b!5769122 (= e!3544292 tp_is_empty!40815)))

(assert (=> b!5768608 (= tp!1594013 e!3544292)))

(declare-fun b!5769123 () Bool)

(declare-fun tp!1594045 () Bool)

(declare-fun tp!1594048 () Bool)

(assert (=> b!5769123 (= e!3544292 (and tp!1594045 tp!1594048))))

(declare-fun b!5769124 () Bool)

(declare-fun tp!1594044 () Bool)

(assert (=> b!5769124 (= e!3544292 tp!1594044)))

(assert (= (and b!5768608 ((_ is ElementMatch!15781) (regTwo!32074 r!7292))) b!5769122))

(assert (= (and b!5768608 ((_ is Concat!24626) (regTwo!32074 r!7292))) b!5769123))

(assert (= (and b!5768608 ((_ is Star!15781) (regTwo!32074 r!7292))) b!5769124))

(assert (= (and b!5768608 ((_ is Union!15781) (regTwo!32074 r!7292))) b!5769125))

(declare-fun b!5769129 () Bool)

(declare-fun e!3544293 () Bool)

(declare-fun tp!1594051 () Bool)

(declare-fun tp!1594052 () Bool)

(assert (=> b!5769129 (= e!3544293 (and tp!1594051 tp!1594052))))

(declare-fun b!5769126 () Bool)

(assert (=> b!5769126 (= e!3544293 tp_is_empty!40815)))

(assert (=> b!5768597 (= tp!1594019 e!3544293)))

(declare-fun b!5769127 () Bool)

(declare-fun tp!1594050 () Bool)

(declare-fun tp!1594053 () Bool)

(assert (=> b!5769127 (= e!3544293 (and tp!1594050 tp!1594053))))

(declare-fun b!5769128 () Bool)

(declare-fun tp!1594049 () Bool)

(assert (=> b!5769128 (= e!3544293 tp!1594049)))

(assert (= (and b!5768597 ((_ is ElementMatch!15781) (regOne!32075 r!7292))) b!5769126))

(assert (= (and b!5768597 ((_ is Concat!24626) (regOne!32075 r!7292))) b!5769127))

(assert (= (and b!5768597 ((_ is Star!15781) (regOne!32075 r!7292))) b!5769128))

(assert (= (and b!5768597 ((_ is Union!15781) (regOne!32075 r!7292))) b!5769129))

(declare-fun b!5769133 () Bool)

(declare-fun e!3544294 () Bool)

(declare-fun tp!1594056 () Bool)

(declare-fun tp!1594057 () Bool)

(assert (=> b!5769133 (= e!3544294 (and tp!1594056 tp!1594057))))

(declare-fun b!5769130 () Bool)

(assert (=> b!5769130 (= e!3544294 tp_is_empty!40815)))

(assert (=> b!5768597 (= tp!1594017 e!3544294)))

(declare-fun b!5769131 () Bool)

(declare-fun tp!1594055 () Bool)

(declare-fun tp!1594058 () Bool)

(assert (=> b!5769131 (= e!3544294 (and tp!1594055 tp!1594058))))

(declare-fun b!5769132 () Bool)

(declare-fun tp!1594054 () Bool)

(assert (=> b!5769132 (= e!3544294 tp!1594054)))

(assert (= (and b!5768597 ((_ is ElementMatch!15781) (regTwo!32075 r!7292))) b!5769130))

(assert (= (and b!5768597 ((_ is Concat!24626) (regTwo!32075 r!7292))) b!5769131))

(assert (= (and b!5768597 ((_ is Star!15781) (regTwo!32075 r!7292))) b!5769132))

(assert (= (and b!5768597 ((_ is Union!15781) (regTwo!32075 r!7292))) b!5769133))

(declare-fun b!5769141 () Bool)

(declare-fun e!3544300 () Bool)

(declare-fun tp!1594063 () Bool)

(assert (=> b!5769141 (= e!3544300 tp!1594063)))

(declare-fun b!5769140 () Bool)

(declare-fun e!3544299 () Bool)

(declare-fun tp!1594064 () Bool)

(assert (=> b!5769140 (= e!3544299 (and (inv!82699 (h!69967 (t!376981 zl!343))) e!3544300 tp!1594064))))

(assert (=> b!5768601 (= tp!1594022 e!3544299)))

(assert (= b!5769140 b!5769141))

(assert (= (and b!5768601 ((_ is Cons!63519) (t!376981 zl!343))) b!5769140))

(declare-fun m!6714208 () Bool)

(assert (=> b!5769140 m!6714208))

(declare-fun b!5769146 () Bool)

(declare-fun e!3544303 () Bool)

(declare-fun tp!1594067 () Bool)

(assert (=> b!5769146 (= e!3544303 (and tp_is_empty!40815 tp!1594067))))

(assert (=> b!5768606 (= tp!1594018 e!3544303)))

(assert (= (and b!5768606 ((_ is Cons!63520) (t!376982 s!2326))) b!5769146))

(declare-fun condSetEmpty!38766 () Bool)

(assert (=> setNonEmpty!38763 (= condSetEmpty!38766 (= setRest!38763 ((as const (Array Context!10330 Bool)) false)))))

(declare-fun setRes!38766 () Bool)

(assert (=> setNonEmpty!38763 (= tp!1594014 setRes!38766)))

(declare-fun setIsEmpty!38766 () Bool)

(assert (=> setIsEmpty!38766 setRes!38766))

(declare-fun setNonEmpty!38766 () Bool)

(declare-fun tp!1594073 () Bool)

(declare-fun setElem!38766 () Context!10330)

(declare-fun e!3544308 () Bool)

(assert (=> setNonEmpty!38766 (= setRes!38766 (and tp!1594073 (inv!82699 setElem!38766) e!3544308))))

(declare-fun setRest!38766 () (InoxSet Context!10330))

(assert (=> setNonEmpty!38766 (= setRest!38763 ((_ map or) (store ((as const (Array Context!10330 Bool)) false) setElem!38766 true) setRest!38766))))

(declare-fun b!5769155 () Bool)

(declare-fun tp!1594072 () Bool)

(assert (=> b!5769155 (= e!3544308 tp!1594072)))

(assert (= (and setNonEmpty!38763 condSetEmpty!38766) setIsEmpty!38766))

(assert (= (and setNonEmpty!38763 (not condSetEmpty!38766)) setNonEmpty!38766))

(assert (= setNonEmpty!38766 b!5769155))

(declare-fun m!6714210 () Bool)

(assert (=> setNonEmpty!38766 m!6714210))

(declare-fun b!5769156 () Bool)

(declare-fun e!3544309 () Bool)

(declare-fun tp!1594074 () Bool)

(declare-fun tp!1594075 () Bool)

(assert (=> b!5769156 (= e!3544309 (and tp!1594074 tp!1594075))))

(assert (=> b!5768593 (= tp!1594015 e!3544309)))

(assert (= (and b!5768593 ((_ is Cons!63518) (exprs!5665 (h!69967 zl!343)))) b!5769156))

(declare-fun b!5769160 () Bool)

(declare-fun e!3544310 () Bool)

(declare-fun tp!1594078 () Bool)

(declare-fun tp!1594079 () Bool)

(assert (=> b!5769160 (= e!3544310 (and tp!1594078 tp!1594079))))

(declare-fun b!5769157 () Bool)

(assert (=> b!5769157 (= e!3544310 tp_is_empty!40815)))

(assert (=> b!5768614 (= tp!1594016 e!3544310)))

(declare-fun b!5769158 () Bool)

(declare-fun tp!1594077 () Bool)

(declare-fun tp!1594080 () Bool)

(assert (=> b!5769158 (= e!3544310 (and tp!1594077 tp!1594080))))

(declare-fun b!5769159 () Bool)

(declare-fun tp!1594076 () Bool)

(assert (=> b!5769159 (= e!3544310 tp!1594076)))

(assert (= (and b!5768614 ((_ is ElementMatch!15781) (reg!16110 r!7292))) b!5769157))

(assert (= (and b!5768614 ((_ is Concat!24626) (reg!16110 r!7292))) b!5769158))

(assert (= (and b!5768614 ((_ is Star!15781) (reg!16110 r!7292))) b!5769159))

(assert (= (and b!5768614 ((_ is Union!15781) (reg!16110 r!7292))) b!5769160))

(declare-fun b_lambda!217747 () Bool)

(assert (= b_lambda!217743 (or b!5768602 b_lambda!217747)))

(declare-fun bs!1353412 () Bool)

(declare-fun d!1817294 () Bool)

(assert (= bs!1353412 (and d!1817294 b!5768602)))

(assert (=> bs!1353412 (= (dynLambda!24866 lambda!313353 (h!69967 zl!343)) (derivationStepZipperUp!1049 (h!69967 zl!343) (h!69968 s!2326)))))

(assert (=> bs!1353412 m!6713900))

(assert (=> d!1817196 d!1817294))

(check-sat (not b!5768838) (not d!1817226) (not d!1817234) (not d!1817248) (not d!1817228) (not b!5768798) (not d!1817274) (not b!5768844) (not d!1817286) (not b!5768799) (not b!5768840) (not b!5769128) (not d!1817278) (not b!5768650) (not bm!443178) (not b!5768969) (not bm!443185) (not b!5768722) (not d!1817230) (not b!5768658) (not b!5769083) (not d!1817252) (not d!1817198) (not b!5768653) (not b!5769141) (not b!5769104) (not b!5769085) (not b!5768837) (not b!5768772) (not b!5768648) (not b!5768968) (not bm!443236) (not b!5769140) (not b!5769087) (not b!5768703) (not b!5768713) (not b!5769160) (not d!1817212) (not b_lambda!217747) (not bm!443199) (not b!5768652) (not b!5768710) (not b!5768645) (not b!5769156) (not b!5768705) (not d!1817208) (not d!1817192) (not b!5769129) (not b!5769131) (not d!1817250) (not b!5768845) (not b!5769090) (not b!5769099) tp_is_empty!40815 (not d!1817232) (not d!1817258) (not b!5768691) (not d!1817206) (not b!5769127) (not bm!443233) (not b!5768963) (not d!1817260) (not b!5768644) (not b!5769132) (not b!5768771) (not b!5769089) (not b!5769155) (not b!5769146) (not d!1817254) (not b!5769124) (not d!1817214) (not bm!443198) (not bm!443179) (not bm!443232) (not b!5769158) (not b!5769086) (not b!5768646) (not b!5768723) (not b!5769133) (not b!5768964) (not b!5768763) (not bm!443186) (not b!5769118) (not b!5769159) (not d!1817196) (not b!5769037) (not d!1817290) (not d!1817190) (not b!5768966) (not bs!1353412) (not b!5769123) (not setNonEmpty!38766) (not b!5769120) (not bm!443184) (not bm!443181) (not b!5769125) (not b!5769119) (not b!5768715) (not b!5768842) (not b!5768972) (not b!5768965) (not b!5769036) (not d!1817210) (not b!5768797) (not b!5768708))
(check-sat)
