; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570626 () Bool)

(assert start!570626)

(declare-fun b!5441683 () Bool)

(assert (=> b!5441683 true))

(assert (=> b!5441683 true))

(declare-fun lambda!286365 () Int)

(declare-fun lambda!286364 () Int)

(assert (=> b!5441683 (not (= lambda!286365 lambda!286364))))

(assert (=> b!5441683 true))

(assert (=> b!5441683 true))

(declare-fun b!5441660 () Bool)

(assert (=> b!5441660 true))

(declare-fun b!5441655 () Bool)

(declare-fun e!3370923 () Bool)

(declare-fun tp!1500288 () Bool)

(assert (=> b!5441655 (= e!3370923 tp!1500288)))

(declare-fun b!5441656 () Bool)

(declare-fun e!3370921 () Bool)

(declare-fun e!3370927 () Bool)

(assert (=> b!5441656 (= e!3370921 e!3370927)))

(declare-fun res!2316753 () Bool)

(assert (=> b!5441656 (=> res!2316753 e!3370927)))

(declare-fun lt!2219042 () Bool)

(declare-datatypes ((C!30792 0))(
  ( (C!30793 (val!25098 Int)) )
))
(declare-datatypes ((List!62082 0))(
  ( (Nil!61958) (Cons!61958 (h!68406 C!30792) (t!375309 List!62082)) )
))
(declare-fun s!2326 () List!62082)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15261 0))(
  ( (ElementMatch!15261 (c!949589 C!30792)) (Concat!24106 (regOne!31034 Regex!15261) (regTwo!31034 Regex!15261)) (EmptyExpr!15261) (Star!15261 (reg!15590 Regex!15261)) (EmptyLang!15261) (Union!15261 (regOne!31035 Regex!15261) (regTwo!31035 Regex!15261)) )
))
(declare-datatypes ((List!62083 0))(
  ( (Nil!61959) (Cons!61959 (h!68407 Regex!15261) (t!375310 List!62083)) )
))
(declare-datatypes ((Context!9290 0))(
  ( (Context!9291 (exprs!5145 List!62083)) )
))
(declare-fun z!1189 () (InoxSet Context!9290))

(declare-fun matchZipper!1505 ((InoxSet Context!9290) List!62082) Bool)

(assert (=> b!5441656 (= res!2316753 (not (= (matchZipper!1505 z!1189 s!2326) lt!2219042)))))

(declare-fun lt!2219039 () Bool)

(assert (=> b!5441656 (= lt!2219039 lt!2219042)))

(declare-fun lt!2219046 () (InoxSet Context!9290))

(assert (=> b!5441656 (= lt!2219042 (matchZipper!1505 lt!2219046 (t!375309 s!2326)))))

(declare-fun lt!2219040 () (InoxSet Context!9290))

(assert (=> b!5441656 (= lt!2219039 (matchZipper!1505 lt!2219040 (t!375309 s!2326)))))

(declare-datatypes ((Unit!154586 0))(
  ( (Unit!154587) )
))
(declare-fun lt!2219032 () Unit!154586)

(declare-fun lt!2219027 () (InoxSet Context!9290))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!498 ((InoxSet Context!9290) (InoxSet Context!9290) List!62082) Unit!154586)

(assert (=> b!5441656 (= lt!2219032 (lemmaZipperConcatMatchesSameAsBothZippers!498 lt!2219027 lt!2219046 (t!375309 s!2326)))))

(declare-fun b!5441657 () Bool)

(declare-fun res!2316765 () Bool)

(declare-fun e!3370931 () Bool)

(assert (=> b!5441657 (=> res!2316765 e!3370931)))

(declare-datatypes ((List!62084 0))(
  ( (Nil!61960) (Cons!61960 (h!68408 Context!9290) (t!375311 List!62084)) )
))
(declare-fun zl!343 () List!62084)

(declare-fun isEmpty!33942 (List!62083) Bool)

(assert (=> b!5441657 (= res!2316765 (isEmpty!33942 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5441658 () Bool)

(declare-fun e!3370929 () Bool)

(assert (=> b!5441658 (= e!3370929 e!3370921)))

(declare-fun res!2316764 () Bool)

(assert (=> b!5441658 (=> res!2316764 e!3370921)))

(declare-fun derivationStepZipper!1490 ((InoxSet Context!9290) C!30792) (InoxSet Context!9290))

(assert (=> b!5441658 (= res!2316764 (not (= (derivationStepZipper!1490 z!1189 (h!68406 s!2326)) lt!2219040)))))

(assert (=> b!5441658 (= lt!2219040 ((_ map or) lt!2219027 lt!2219046))))

(declare-fun b!5441659 () Bool)

(declare-fun res!2316754 () Bool)

(declare-fun e!3370932 () Bool)

(assert (=> b!5441659 (=> res!2316754 e!3370932)))

(declare-fun r!7292 () Regex!15261)

(declare-fun generalisedUnion!1190 (List!62083) Regex!15261)

(declare-fun unfocusZipperList!703 (List!62084) List!62083)

(assert (=> b!5441659 (= res!2316754 (not (= r!7292 (generalisedUnion!1190 (unfocusZipperList!703 zl!343)))))))

(declare-fun e!3370936 () Bool)

(assert (=> b!5441660 (= e!3370931 e!3370936)))

(declare-fun res!2316767 () Bool)

(assert (=> b!5441660 (=> res!2316767 e!3370936)))

(get-info :version)

(assert (=> b!5441660 (= res!2316767 (or (and ((_ is ElementMatch!15261) (regOne!31034 r!7292)) (= (c!949589 (regOne!31034 r!7292)) (h!68406 s!2326))) ((_ is Union!15261) (regOne!31034 r!7292))))))

(declare-fun lt!2219045 () Unit!154586)

(declare-fun e!3370926 () Unit!154586)

(assert (=> b!5441660 (= lt!2219045 e!3370926)))

(declare-fun c!949588 () Bool)

(declare-fun nullable!5430 (Regex!15261) Bool)

(assert (=> b!5441660 (= c!949588 (nullable!5430 (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun lambda!286366 () Int)

(declare-fun flatMap!988 ((InoxSet Context!9290) Int) (InoxSet Context!9290))

(declare-fun derivationStepZipperUp!633 (Context!9290 C!30792) (InoxSet Context!9290))

(assert (=> b!5441660 (= (flatMap!988 z!1189 lambda!286366) (derivationStepZipperUp!633 (h!68408 zl!343) (h!68406 s!2326)))))

(declare-fun lt!2219034 () Unit!154586)

(declare-fun lemmaFlatMapOnSingletonSet!520 ((InoxSet Context!9290) Context!9290 Int) Unit!154586)

(assert (=> b!5441660 (= lt!2219034 (lemmaFlatMapOnSingletonSet!520 z!1189 (h!68408 zl!343) lambda!286366))))

(declare-fun lt!2219035 () Context!9290)

(assert (=> b!5441660 (= lt!2219046 (derivationStepZipperUp!633 lt!2219035 (h!68406 s!2326)))))

(declare-fun derivationStepZipperDown!709 (Regex!15261 Context!9290 C!30792) (InoxSet Context!9290))

(assert (=> b!5441660 (= lt!2219027 (derivationStepZipperDown!709 (h!68407 (exprs!5145 (h!68408 zl!343))) lt!2219035 (h!68406 s!2326)))))

(assert (=> b!5441660 (= lt!2219035 (Context!9291 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun lt!2219030 () (InoxSet Context!9290))

(assert (=> b!5441660 (= lt!2219030 (derivationStepZipperUp!633 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343))))) (h!68406 s!2326)))))

(declare-fun b!5441661 () Bool)

(declare-fun Unit!154588 () Unit!154586)

(assert (=> b!5441661 (= e!3370926 Unit!154588)))

(declare-fun b!5441662 () Bool)

(declare-fun e!3370922 () Bool)

(declare-fun tp_is_empty!39775 () Bool)

(declare-fun tp!1500282 () Bool)

(assert (=> b!5441662 (= e!3370922 (and tp_is_empty!39775 tp!1500282))))

(declare-fun b!5441663 () Bool)

(declare-fun res!2316763 () Bool)

(assert (=> b!5441663 (=> res!2316763 e!3370932)))

(assert (=> b!5441663 (= res!2316763 (or ((_ is EmptyExpr!15261) r!7292) ((_ is EmptyLang!15261) r!7292) ((_ is ElementMatch!15261) r!7292) ((_ is Union!15261) r!7292) (not ((_ is Concat!24106) r!7292))))))

(declare-fun b!5441664 () Bool)

(declare-fun e!3370934 () Bool)

(assert (=> b!5441664 (= e!3370934 (matchZipper!1505 lt!2219046 (t!375309 s!2326)))))

(declare-fun b!5441665 () Bool)

(declare-fun e!3370930 () Bool)

(assert (=> b!5441665 (= e!3370936 e!3370930)))

(declare-fun res!2316761 () Bool)

(assert (=> b!5441665 (=> res!2316761 e!3370930)))

(assert (=> b!5441665 (= res!2316761 (or (not (= lt!2219027 ((as const (Array Context!9290 Bool)) false))) (not (= r!7292 (Concat!24106 (regOne!31034 r!7292) (regTwo!31034 r!7292)))) (not (= (regOne!31034 r!7292) EmptyExpr!15261))))))

(assert (=> b!5441665 (not (matchZipper!1505 lt!2219027 (t!375309 s!2326)))))

(declare-fun lt!2219041 () Unit!154586)

(declare-fun lemmaEmptyZipperMatchesNothing!16 ((InoxSet Context!9290) List!62082) Unit!154586)

(assert (=> b!5441665 (= lt!2219041 (lemmaEmptyZipperMatchesNothing!16 lt!2219027 (t!375309 s!2326)))))

(declare-fun setNonEmpty!35581 () Bool)

(declare-fun tp!1500286 () Bool)

(declare-fun setRes!35581 () Bool)

(declare-fun setElem!35581 () Context!9290)

(declare-fun inv!81399 (Context!9290) Bool)

(assert (=> setNonEmpty!35581 (= setRes!35581 (and tp!1500286 (inv!81399 setElem!35581) e!3370923))))

(declare-fun setRest!35581 () (InoxSet Context!9290))

(assert (=> setNonEmpty!35581 (= z!1189 ((_ map or) (store ((as const (Array Context!9290 Bool)) false) setElem!35581 true) setRest!35581))))

(declare-fun b!5441666 () Bool)

(declare-fun res!2316771 () Bool)

(declare-fun e!3370920 () Bool)

(assert (=> b!5441666 (=> (not res!2316771) (not e!3370920))))

(declare-fun toList!9045 ((InoxSet Context!9290)) List!62084)

(assert (=> b!5441666 (= res!2316771 (= (toList!9045 z!1189) zl!343))))

(declare-fun e!3370935 () Bool)

(declare-fun e!3370924 () Bool)

(declare-fun b!5441667 () Bool)

(declare-fun tp!1500287 () Bool)

(assert (=> b!5441667 (= e!3370935 (and (inv!81399 (h!68408 zl!343)) e!3370924 tp!1500287))))

(declare-fun res!2316769 () Bool)

(assert (=> start!570626 (=> (not res!2316769) (not e!3370920))))

(declare-fun validRegex!6997 (Regex!15261) Bool)

(assert (=> start!570626 (= res!2316769 (validRegex!6997 r!7292))))

(assert (=> start!570626 e!3370920))

(declare-fun e!3370933 () Bool)

(assert (=> start!570626 e!3370933))

(declare-fun condSetEmpty!35581 () Bool)

(assert (=> start!570626 (= condSetEmpty!35581 (= z!1189 ((as const (Array Context!9290 Bool)) false)))))

(assert (=> start!570626 setRes!35581))

(assert (=> start!570626 e!3370935))

(assert (=> start!570626 e!3370922))

(declare-fun b!5441668 () Bool)

(declare-fun tp!1500284 () Bool)

(declare-fun tp!1500285 () Bool)

(assert (=> b!5441668 (= e!3370933 (and tp!1500284 tp!1500285))))

(declare-fun b!5441669 () Bool)

(declare-fun res!2316770 () Bool)

(assert (=> b!5441669 (=> res!2316770 e!3370936)))

(declare-fun e!3370925 () Bool)

(assert (=> b!5441669 (= res!2316770 e!3370925)))

(declare-fun res!2316762 () Bool)

(assert (=> b!5441669 (=> (not res!2316762) (not e!3370925))))

(assert (=> b!5441669 (= res!2316762 ((_ is Concat!24106) (regOne!31034 r!7292)))))

(declare-fun b!5441670 () Bool)

(declare-fun e!3370928 () Bool)

(assert (=> b!5441670 (= e!3370930 e!3370928)))

(declare-fun res!2316751 () Bool)

(assert (=> b!5441670 (=> res!2316751 e!3370928)))

(declare-fun lt!2219050 () Bool)

(declare-fun lt!2219038 () Bool)

(assert (=> b!5441670 (= res!2316751 (not (= lt!2219050 lt!2219038)))))

(declare-fun matchRSpec!2364 (Regex!15261 List!62082) Bool)

(assert (=> b!5441670 (= lt!2219038 (matchRSpec!2364 (regTwo!31034 r!7292) s!2326))))

(declare-fun matchR!7446 (Regex!15261 List!62082) Bool)

(assert (=> b!5441670 (= lt!2219038 (matchR!7446 (regTwo!31034 r!7292) s!2326))))

(declare-fun lt!2219048 () Unit!154586)

(declare-fun mainMatchTheorem!2364 (Regex!15261 List!62082) Unit!154586)

(assert (=> b!5441670 (= lt!2219048 (mainMatchTheorem!2364 (regTwo!31034 r!7292) s!2326))))

(assert (=> b!5441670 (= (matchR!7446 (regOne!31034 r!7292) s!2326) (matchRSpec!2364 (regOne!31034 r!7292) s!2326))))

(declare-fun lt!2219028 () Unit!154586)

(assert (=> b!5441670 (= lt!2219028 (mainMatchTheorem!2364 (regOne!31034 r!7292) s!2326))))

(declare-fun b!5441671 () Bool)

(declare-fun res!2316758 () Bool)

(assert (=> b!5441671 (=> (not res!2316758) (not e!3370920))))

(declare-fun unfocusZipper!1003 (List!62084) Regex!15261)

(assert (=> b!5441671 (= res!2316758 (= r!7292 (unfocusZipper!1003 zl!343)))))

(declare-fun b!5441672 () Bool)

(assert (=> b!5441672 (= e!3370925 (nullable!5430 (regOne!31034 (regOne!31034 r!7292))))))

(declare-fun b!5441673 () Bool)

(assert (=> b!5441673 (= e!3370928 e!3370929)))

(declare-fun res!2316760 () Bool)

(assert (=> b!5441673 (=> res!2316760 e!3370929)))

(declare-fun lt!2219047 () (InoxSet Context!9290))

(assert (=> b!5441673 (= res!2316760 (not (= lt!2219046 (derivationStepZipper!1490 lt!2219047 (h!68406 s!2326)))))))

(assert (=> b!5441673 (= (flatMap!988 lt!2219047 lambda!286366) (derivationStepZipperUp!633 lt!2219035 (h!68406 s!2326)))))

(declare-fun lt!2219049 () Unit!154586)

(assert (=> b!5441673 (= lt!2219049 (lemmaFlatMapOnSingletonSet!520 lt!2219047 lt!2219035 lambda!286366))))

(assert (=> b!5441673 (= lt!2219047 (store ((as const (Array Context!9290 Bool)) false) lt!2219035 true))))

(declare-fun b!5441674 () Bool)

(declare-fun tp!1500283 () Bool)

(assert (=> b!5441674 (= e!3370924 tp!1500283)))

(declare-fun b!5441675 () Bool)

(assert (=> b!5441675 (= e!3370920 (not e!3370932))))

(declare-fun res!2316759 () Bool)

(assert (=> b!5441675 (=> res!2316759 e!3370932)))

(assert (=> b!5441675 (= res!2316759 (not ((_ is Cons!61960) zl!343)))))

(assert (=> b!5441675 (= lt!2219050 (matchRSpec!2364 r!7292 s!2326))))

(assert (=> b!5441675 (= lt!2219050 (matchR!7446 r!7292 s!2326))))

(declare-fun lt!2219037 () Unit!154586)

(assert (=> b!5441675 (= lt!2219037 (mainMatchTheorem!2364 r!7292 s!2326))))

(declare-fun b!5441676 () Bool)

(declare-fun Unit!154589 () Unit!154586)

(assert (=> b!5441676 (= e!3370926 Unit!154589)))

(declare-fun lt!2219043 () Unit!154586)

(assert (=> b!5441676 (= lt!2219043 (lemmaZipperConcatMatchesSameAsBothZippers!498 lt!2219027 lt!2219046 (t!375309 s!2326)))))

(declare-fun res!2316755 () Bool)

(assert (=> b!5441676 (= res!2316755 (matchZipper!1505 lt!2219027 (t!375309 s!2326)))))

(assert (=> b!5441676 (=> res!2316755 e!3370934)))

(assert (=> b!5441676 (= (matchZipper!1505 ((_ map or) lt!2219027 lt!2219046) (t!375309 s!2326)) e!3370934)))

(declare-fun b!5441677 () Bool)

(assert (=> b!5441677 (= e!3370933 tp_is_empty!39775)))

(declare-fun b!5441678 () Bool)

(declare-fun tp!1500280 () Bool)

(assert (=> b!5441678 (= e!3370933 tp!1500280)))

(declare-fun b!5441679 () Bool)

(declare-fun tp!1500289 () Bool)

(declare-fun tp!1500281 () Bool)

(assert (=> b!5441679 (= e!3370933 (and tp!1500289 tp!1500281))))

(declare-fun b!5441680 () Bool)

(declare-fun res!2316752 () Bool)

(assert (=> b!5441680 (=> res!2316752 e!3370932)))

(declare-fun isEmpty!33943 (List!62084) Bool)

(assert (=> b!5441680 (= res!2316752 (not (isEmpty!33943 (t!375311 zl!343))))))

(declare-fun b!5441681 () Bool)

(declare-fun lambda!286367 () Int)

(declare-fun forall!14576 (List!62083 Int) Bool)

(assert (=> b!5441681 (= e!3370927 (forall!14576 (t!375310 (exprs!5145 (h!68408 zl!343))) lambda!286367))))

(declare-fun lt!2219033 () Regex!15261)

(assert (=> b!5441681 (= (matchR!7446 lt!2219033 s!2326) (matchZipper!1505 lt!2219047 s!2326))))

(declare-fun lt!2219044 () Unit!154586)

(declare-fun theoremZipperRegexEquiv!549 ((InoxSet Context!9290) List!62084 Regex!15261 List!62082) Unit!154586)

(assert (=> b!5441681 (= lt!2219044 (theoremZipperRegexEquiv!549 lt!2219047 (Cons!61960 lt!2219035 Nil!61960) lt!2219033 s!2326))))

(declare-fun generalisedConcat!930 (List!62083) Regex!15261)

(assert (=> b!5441681 (= lt!2219033 (generalisedConcat!930 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5441682 () Bool)

(declare-fun res!2316757 () Bool)

(assert (=> b!5441682 (=> res!2316757 e!3370932)))

(assert (=> b!5441682 (= res!2316757 (not ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343)))))))

(assert (=> b!5441683 (= e!3370932 e!3370931)))

(declare-fun res!2316756 () Bool)

(assert (=> b!5441683 (=> res!2316756 e!3370931)))

(declare-fun lt!2219036 () Bool)

(assert (=> b!5441683 (= res!2316756 (or (not (= lt!2219050 lt!2219036)) ((_ is Nil!61958) s!2326)))))

(declare-fun Exists!2442 (Int) Bool)

(assert (=> b!5441683 (= (Exists!2442 lambda!286364) (Exists!2442 lambda!286365))))

(declare-fun lt!2219031 () Unit!154586)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1096 (Regex!15261 Regex!15261 List!62082) Unit!154586)

(assert (=> b!5441683 (= lt!2219031 (lemmaExistCutMatchRandMatchRSpecEquivalent!1096 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326))))

(assert (=> b!5441683 (= lt!2219036 (Exists!2442 lambda!286364))))

(declare-datatypes ((tuple2!64920 0))(
  ( (tuple2!64921 (_1!35763 List!62082) (_2!35763 List!62082)) )
))
(declare-datatypes ((Option!15372 0))(
  ( (None!15371) (Some!15371 (v!51400 tuple2!64920)) )
))
(declare-fun isDefined!12075 (Option!15372) Bool)

(declare-fun findConcatSeparation!1786 (Regex!15261 Regex!15261 List!62082 List!62082 List!62082) Option!15372)

(assert (=> b!5441683 (= lt!2219036 (isDefined!12075 (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) Nil!61958 s!2326 s!2326)))))

(declare-fun lt!2219029 () Unit!154586)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1550 (Regex!15261 Regex!15261 List!62082) Unit!154586)

(assert (=> b!5441683 (= lt!2219029 (lemmaFindConcatSeparationEquivalentToExists!1550 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326))))

(declare-fun b!5441684 () Bool)

(declare-fun res!2316766 () Bool)

(assert (=> b!5441684 (=> res!2316766 e!3370936)))

(assert (=> b!5441684 (= res!2316766 (or ((_ is Concat!24106) (regOne!31034 r!7292)) ((_ is Star!15261) (regOne!31034 r!7292)) (not ((_ is EmptyExpr!15261) (regOne!31034 r!7292)))))))

(declare-fun setIsEmpty!35581 () Bool)

(assert (=> setIsEmpty!35581 setRes!35581))

(declare-fun b!5441685 () Bool)

(declare-fun res!2316768 () Bool)

(assert (=> b!5441685 (=> res!2316768 e!3370932)))

(assert (=> b!5441685 (= res!2316768 (not (= r!7292 (generalisedConcat!930 (exprs!5145 (h!68408 zl!343))))))))

(assert (= (and start!570626 res!2316769) b!5441666))

(assert (= (and b!5441666 res!2316771) b!5441671))

(assert (= (and b!5441671 res!2316758) b!5441675))

(assert (= (and b!5441675 (not res!2316759)) b!5441680))

(assert (= (and b!5441680 (not res!2316752)) b!5441685))

(assert (= (and b!5441685 (not res!2316768)) b!5441682))

(assert (= (and b!5441682 (not res!2316757)) b!5441659))

(assert (= (and b!5441659 (not res!2316754)) b!5441663))

(assert (= (and b!5441663 (not res!2316763)) b!5441683))

(assert (= (and b!5441683 (not res!2316756)) b!5441657))

(assert (= (and b!5441657 (not res!2316765)) b!5441660))

(assert (= (and b!5441660 c!949588) b!5441676))

(assert (= (and b!5441660 (not c!949588)) b!5441661))

(assert (= (and b!5441676 (not res!2316755)) b!5441664))

(assert (= (and b!5441660 (not res!2316767)) b!5441669))

(assert (= (and b!5441669 res!2316762) b!5441672))

(assert (= (and b!5441669 (not res!2316770)) b!5441684))

(assert (= (and b!5441684 (not res!2316766)) b!5441665))

(assert (= (and b!5441665 (not res!2316761)) b!5441670))

(assert (= (and b!5441670 (not res!2316751)) b!5441673))

(assert (= (and b!5441673 (not res!2316760)) b!5441658))

(assert (= (and b!5441658 (not res!2316764)) b!5441656))

(assert (= (and b!5441656 (not res!2316753)) b!5441681))

(assert (= (and start!570626 ((_ is ElementMatch!15261) r!7292)) b!5441677))

(assert (= (and start!570626 ((_ is Concat!24106) r!7292)) b!5441679))

(assert (= (and start!570626 ((_ is Star!15261) r!7292)) b!5441678))

(assert (= (and start!570626 ((_ is Union!15261) r!7292)) b!5441668))

(assert (= (and start!570626 condSetEmpty!35581) setIsEmpty!35581))

(assert (= (and start!570626 (not condSetEmpty!35581)) setNonEmpty!35581))

(assert (= setNonEmpty!35581 b!5441655))

(assert (= b!5441667 b!5441674))

(assert (= (and start!570626 ((_ is Cons!61960) zl!343)) b!5441667))

(assert (= (and start!570626 ((_ is Cons!61958) s!2326)) b!5441662))

(declare-fun m!6462408 () Bool)

(assert (=> b!5441666 m!6462408))

(declare-fun m!6462410 () Bool)

(assert (=> b!5441665 m!6462410))

(declare-fun m!6462412 () Bool)

(assert (=> b!5441665 m!6462412))

(declare-fun m!6462414 () Bool)

(assert (=> b!5441685 m!6462414))

(declare-fun m!6462416 () Bool)

(assert (=> b!5441681 m!6462416))

(declare-fun m!6462418 () Bool)

(assert (=> b!5441681 m!6462418))

(declare-fun m!6462420 () Bool)

(assert (=> b!5441681 m!6462420))

(declare-fun m!6462422 () Bool)

(assert (=> b!5441681 m!6462422))

(declare-fun m!6462424 () Bool)

(assert (=> b!5441681 m!6462424))

(declare-fun m!6462426 () Bool)

(assert (=> b!5441676 m!6462426))

(assert (=> b!5441676 m!6462410))

(declare-fun m!6462428 () Bool)

(assert (=> b!5441676 m!6462428))

(declare-fun m!6462430 () Bool)

(assert (=> b!5441672 m!6462430))

(declare-fun m!6462432 () Bool)

(assert (=> b!5441675 m!6462432))

(declare-fun m!6462434 () Bool)

(assert (=> b!5441675 m!6462434))

(declare-fun m!6462436 () Bool)

(assert (=> b!5441675 m!6462436))

(declare-fun m!6462438 () Bool)

(assert (=> b!5441667 m!6462438))

(declare-fun m!6462440 () Bool)

(assert (=> b!5441658 m!6462440))

(declare-fun m!6462442 () Bool)

(assert (=> b!5441680 m!6462442))

(declare-fun m!6462444 () Bool)

(assert (=> b!5441670 m!6462444))

(declare-fun m!6462446 () Bool)

(assert (=> b!5441670 m!6462446))

(declare-fun m!6462448 () Bool)

(assert (=> b!5441670 m!6462448))

(declare-fun m!6462450 () Bool)

(assert (=> b!5441670 m!6462450))

(declare-fun m!6462452 () Bool)

(assert (=> b!5441670 m!6462452))

(declare-fun m!6462454 () Bool)

(assert (=> b!5441670 m!6462454))

(declare-fun m!6462456 () Bool)

(assert (=> b!5441659 m!6462456))

(assert (=> b!5441659 m!6462456))

(declare-fun m!6462458 () Bool)

(assert (=> b!5441659 m!6462458))

(declare-fun m!6462460 () Bool)

(assert (=> b!5441671 m!6462460))

(declare-fun m!6462462 () Bool)

(assert (=> b!5441657 m!6462462))

(declare-fun m!6462464 () Bool)

(assert (=> setNonEmpty!35581 m!6462464))

(declare-fun m!6462466 () Bool)

(assert (=> start!570626 m!6462466))

(declare-fun m!6462468 () Bool)

(assert (=> b!5441673 m!6462468))

(declare-fun m!6462470 () Bool)

(assert (=> b!5441673 m!6462470))

(declare-fun m!6462472 () Bool)

(assert (=> b!5441673 m!6462472))

(declare-fun m!6462474 () Bool)

(assert (=> b!5441673 m!6462474))

(declare-fun m!6462476 () Bool)

(assert (=> b!5441673 m!6462476))

(declare-fun m!6462478 () Bool)

(assert (=> b!5441660 m!6462478))

(assert (=> b!5441660 m!6462474))

(declare-fun m!6462480 () Bool)

(assert (=> b!5441660 m!6462480))

(declare-fun m!6462482 () Bool)

(assert (=> b!5441660 m!6462482))

(declare-fun m!6462484 () Bool)

(assert (=> b!5441660 m!6462484))

(declare-fun m!6462486 () Bool)

(assert (=> b!5441660 m!6462486))

(declare-fun m!6462488 () Bool)

(assert (=> b!5441660 m!6462488))

(declare-fun m!6462490 () Bool)

(assert (=> b!5441656 m!6462490))

(declare-fun m!6462492 () Bool)

(assert (=> b!5441656 m!6462492))

(declare-fun m!6462494 () Bool)

(assert (=> b!5441656 m!6462494))

(assert (=> b!5441656 m!6462426))

(assert (=> b!5441664 m!6462492))

(declare-fun m!6462496 () Bool)

(assert (=> b!5441683 m!6462496))

(declare-fun m!6462498 () Bool)

(assert (=> b!5441683 m!6462498))

(declare-fun m!6462500 () Bool)

(assert (=> b!5441683 m!6462500))

(declare-fun m!6462502 () Bool)

(assert (=> b!5441683 m!6462502))

(declare-fun m!6462504 () Bool)

(assert (=> b!5441683 m!6462504))

(assert (=> b!5441683 m!6462502))

(assert (=> b!5441683 m!6462498))

(declare-fun m!6462506 () Bool)

(assert (=> b!5441683 m!6462506))

(check-sat (not b!5441665) (not b!5441676) (not b!5441657) (not b!5441668) (not b!5441680) (not b!5441685) (not b!5441679) (not b!5441681) (not start!570626) (not b!5441667) (not b!5441672) (not b!5441660) (not setNonEmpty!35581) (not b!5441658) (not b!5441659) (not b!5441674) tp_is_empty!39775 (not b!5441656) (not b!5441666) (not b!5441655) (not b!5441673) (not b!5441675) (not b!5441664) (not b!5441662) (not b!5441670) (not b!5441671) (not b!5441678) (not b!5441683))
(check-sat)
(get-model)

(declare-fun bs!1255887 () Bool)

(declare-fun d!1733194 () Bool)

(assert (= bs!1255887 (and d!1733194 b!5441681)))

(declare-fun lambda!286370 () Int)

(assert (=> bs!1255887 (= lambda!286370 lambda!286367)))

(declare-fun b!5441712 () Bool)

(declare-fun e!3370951 () Bool)

(declare-fun e!3370950 () Bool)

(assert (=> b!5441712 (= e!3370951 e!3370950)))

(declare-fun c!949600 () Bool)

(assert (=> b!5441712 (= c!949600 (isEmpty!33942 (unfocusZipperList!703 zl!343)))))

(declare-fun b!5441713 () Bool)

(declare-fun e!3370953 () Bool)

(assert (=> b!5441713 (= e!3370950 e!3370953)))

(declare-fun c!949601 () Bool)

(declare-fun tail!10764 (List!62083) List!62083)

(assert (=> b!5441713 (= c!949601 (isEmpty!33942 (tail!10764 (unfocusZipperList!703 zl!343))))))

(declare-fun b!5441714 () Bool)

(declare-fun e!3370949 () Bool)

(assert (=> b!5441714 (= e!3370949 (isEmpty!33942 (t!375310 (unfocusZipperList!703 zl!343))))))

(declare-fun b!5441715 () Bool)

(declare-fun e!3370952 () Regex!15261)

(assert (=> b!5441715 (= e!3370952 (Union!15261 (h!68407 (unfocusZipperList!703 zl!343)) (generalisedUnion!1190 (t!375310 (unfocusZipperList!703 zl!343)))))))

(declare-fun b!5441716 () Bool)

(declare-fun lt!2219053 () Regex!15261)

(declare-fun head!11667 (List!62083) Regex!15261)

(assert (=> b!5441716 (= e!3370953 (= lt!2219053 (head!11667 (unfocusZipperList!703 zl!343))))))

(declare-fun b!5441717 () Bool)

(declare-fun e!3370954 () Regex!15261)

(assert (=> b!5441717 (= e!3370954 e!3370952)))

(declare-fun c!949599 () Bool)

(assert (=> b!5441717 (= c!949599 ((_ is Cons!61959) (unfocusZipperList!703 zl!343)))))

(declare-fun b!5441719 () Bool)

(declare-fun isUnion!449 (Regex!15261) Bool)

(assert (=> b!5441719 (= e!3370953 (isUnion!449 lt!2219053))))

(declare-fun b!5441720 () Bool)

(assert (=> b!5441720 (= e!3370952 EmptyLang!15261)))

(declare-fun b!5441721 () Bool)

(declare-fun isEmptyLang!1017 (Regex!15261) Bool)

(assert (=> b!5441721 (= e!3370950 (isEmptyLang!1017 lt!2219053))))

(assert (=> d!1733194 e!3370951))

(declare-fun res!2316776 () Bool)

(assert (=> d!1733194 (=> (not res!2316776) (not e!3370951))))

(assert (=> d!1733194 (= res!2316776 (validRegex!6997 lt!2219053))))

(assert (=> d!1733194 (= lt!2219053 e!3370954)))

(declare-fun c!949598 () Bool)

(assert (=> d!1733194 (= c!949598 e!3370949)))

(declare-fun res!2316777 () Bool)

(assert (=> d!1733194 (=> (not res!2316777) (not e!3370949))))

(assert (=> d!1733194 (= res!2316777 ((_ is Cons!61959) (unfocusZipperList!703 zl!343)))))

(assert (=> d!1733194 (forall!14576 (unfocusZipperList!703 zl!343) lambda!286370)))

(assert (=> d!1733194 (= (generalisedUnion!1190 (unfocusZipperList!703 zl!343)) lt!2219053)))

(declare-fun b!5441718 () Bool)

(assert (=> b!5441718 (= e!3370954 (h!68407 (unfocusZipperList!703 zl!343)))))

(assert (= (and d!1733194 res!2316777) b!5441714))

(assert (= (and d!1733194 c!949598) b!5441718))

(assert (= (and d!1733194 (not c!949598)) b!5441717))

(assert (= (and b!5441717 c!949599) b!5441715))

(assert (= (and b!5441717 (not c!949599)) b!5441720))

(assert (= (and d!1733194 res!2316776) b!5441712))

(assert (= (and b!5441712 c!949600) b!5441721))

(assert (= (and b!5441712 (not c!949600)) b!5441713))

(assert (= (and b!5441713 c!949601) b!5441716))

(assert (= (and b!5441713 (not c!949601)) b!5441719))

(declare-fun m!6462508 () Bool)

(assert (=> b!5441721 m!6462508))

(declare-fun m!6462510 () Bool)

(assert (=> d!1733194 m!6462510))

(assert (=> d!1733194 m!6462456))

(declare-fun m!6462512 () Bool)

(assert (=> d!1733194 m!6462512))

(assert (=> b!5441712 m!6462456))

(declare-fun m!6462514 () Bool)

(assert (=> b!5441712 m!6462514))

(declare-fun m!6462516 () Bool)

(assert (=> b!5441719 m!6462516))

(assert (=> b!5441716 m!6462456))

(declare-fun m!6462518 () Bool)

(assert (=> b!5441716 m!6462518))

(assert (=> b!5441713 m!6462456))

(declare-fun m!6462520 () Bool)

(assert (=> b!5441713 m!6462520))

(assert (=> b!5441713 m!6462520))

(declare-fun m!6462522 () Bool)

(assert (=> b!5441713 m!6462522))

(declare-fun m!6462524 () Bool)

(assert (=> b!5441715 m!6462524))

(declare-fun m!6462526 () Bool)

(assert (=> b!5441714 m!6462526))

(assert (=> b!5441659 d!1733194))

(declare-fun bs!1255890 () Bool)

(declare-fun d!1733196 () Bool)

(assert (= bs!1255890 (and d!1733196 b!5441681)))

(declare-fun lambda!286376 () Int)

(assert (=> bs!1255890 (= lambda!286376 lambda!286367)))

(declare-fun bs!1255891 () Bool)

(assert (= bs!1255891 (and d!1733196 d!1733194)))

(assert (=> bs!1255891 (= lambda!286376 lambda!286370)))

(declare-fun lt!2219056 () List!62083)

(assert (=> d!1733196 (forall!14576 lt!2219056 lambda!286376)))

(declare-fun e!3370963 () List!62083)

(assert (=> d!1733196 (= lt!2219056 e!3370963)))

(declare-fun c!949610 () Bool)

(assert (=> d!1733196 (= c!949610 ((_ is Cons!61960) zl!343))))

(assert (=> d!1733196 (= (unfocusZipperList!703 zl!343) lt!2219056)))

(declare-fun b!5441738 () Bool)

(assert (=> b!5441738 (= e!3370963 (Cons!61959 (generalisedConcat!930 (exprs!5145 (h!68408 zl!343))) (unfocusZipperList!703 (t!375311 zl!343))))))

(declare-fun b!5441739 () Bool)

(assert (=> b!5441739 (= e!3370963 Nil!61959)))

(assert (= (and d!1733196 c!949610) b!5441738))

(assert (= (and d!1733196 (not c!949610)) b!5441739))

(declare-fun m!6462530 () Bool)

(assert (=> d!1733196 m!6462530))

(assert (=> b!5441738 m!6462414))

(declare-fun m!6462532 () Bool)

(assert (=> b!5441738 m!6462532))

(assert (=> b!5441659 d!1733196))

(declare-fun bs!1255893 () Bool)

(declare-fun d!1733202 () Bool)

(assert (= bs!1255893 (and d!1733202 b!5441681)))

(declare-fun lambda!286379 () Int)

(assert (=> bs!1255893 (= lambda!286379 lambda!286367)))

(declare-fun bs!1255894 () Bool)

(assert (= bs!1255894 (and d!1733202 d!1733194)))

(assert (=> bs!1255894 (= lambda!286379 lambda!286370)))

(declare-fun bs!1255895 () Bool)

(assert (= bs!1255895 (and d!1733202 d!1733196)))

(assert (=> bs!1255895 (= lambda!286379 lambda!286376)))

(assert (=> d!1733202 (= (inv!81399 (h!68408 zl!343)) (forall!14576 (exprs!5145 (h!68408 zl!343)) lambda!286379))))

(declare-fun bs!1255896 () Bool)

(assert (= bs!1255896 d!1733202))

(declare-fun m!6462548 () Bool)

(assert (=> bs!1255896 m!6462548))

(assert (=> b!5441667 d!1733202))

(declare-fun d!1733210 () Bool)

(assert (=> d!1733210 (= (isEmpty!33942 (t!375310 (exprs!5145 (h!68408 zl!343)))) ((_ is Nil!61959) (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(assert (=> b!5441657 d!1733210))

(declare-fun bs!1255898 () Bool)

(declare-fun d!1733214 () Bool)

(assert (= bs!1255898 (and d!1733214 b!5441660)))

(declare-fun lambda!286382 () Int)

(assert (=> bs!1255898 (= lambda!286382 lambda!286366)))

(assert (=> d!1733214 true))

(assert (=> d!1733214 (= (derivationStepZipper!1490 z!1189 (h!68406 s!2326)) (flatMap!988 z!1189 lambda!286382))))

(declare-fun bs!1255899 () Bool)

(assert (= bs!1255899 d!1733214))

(declare-fun m!6462560 () Bool)

(assert (=> bs!1255899 m!6462560))

(assert (=> b!5441658 d!1733214))

(declare-fun d!1733218 () Bool)

(declare-fun c!949636 () Bool)

(declare-fun isEmpty!33945 (List!62082) Bool)

(assert (=> d!1733218 (= c!949636 (isEmpty!33945 s!2326))))

(declare-fun e!3370993 () Bool)

(assert (=> d!1733218 (= (matchZipper!1505 z!1189 s!2326) e!3370993)))

(declare-fun b!5441794 () Bool)

(declare-fun nullableZipper!1476 ((InoxSet Context!9290)) Bool)

(assert (=> b!5441794 (= e!3370993 (nullableZipper!1476 z!1189))))

(declare-fun b!5441795 () Bool)

(declare-fun head!11670 (List!62082) C!30792)

(declare-fun tail!10767 (List!62082) List!62082)

(assert (=> b!5441795 (= e!3370993 (matchZipper!1505 (derivationStepZipper!1490 z!1189 (head!11670 s!2326)) (tail!10767 s!2326)))))

(assert (= (and d!1733218 c!949636) b!5441794))

(assert (= (and d!1733218 (not c!949636)) b!5441795))

(declare-fun m!6462572 () Bool)

(assert (=> d!1733218 m!6462572))

(declare-fun m!6462574 () Bool)

(assert (=> b!5441794 m!6462574))

(declare-fun m!6462576 () Bool)

(assert (=> b!5441795 m!6462576))

(assert (=> b!5441795 m!6462576))

(declare-fun m!6462578 () Bool)

(assert (=> b!5441795 m!6462578))

(declare-fun m!6462580 () Bool)

(assert (=> b!5441795 m!6462580))

(assert (=> b!5441795 m!6462578))

(assert (=> b!5441795 m!6462580))

(declare-fun m!6462582 () Bool)

(assert (=> b!5441795 m!6462582))

(assert (=> b!5441656 d!1733218))

(declare-fun d!1733224 () Bool)

(declare-fun c!949637 () Bool)

(assert (=> d!1733224 (= c!949637 (isEmpty!33945 (t!375309 s!2326)))))

(declare-fun e!3370994 () Bool)

(assert (=> d!1733224 (= (matchZipper!1505 lt!2219046 (t!375309 s!2326)) e!3370994)))

(declare-fun b!5441796 () Bool)

(assert (=> b!5441796 (= e!3370994 (nullableZipper!1476 lt!2219046))))

(declare-fun b!5441797 () Bool)

(assert (=> b!5441797 (= e!3370994 (matchZipper!1505 (derivationStepZipper!1490 lt!2219046 (head!11670 (t!375309 s!2326))) (tail!10767 (t!375309 s!2326))))))

(assert (= (and d!1733224 c!949637) b!5441796))

(assert (= (and d!1733224 (not c!949637)) b!5441797))

(declare-fun m!6462584 () Bool)

(assert (=> d!1733224 m!6462584))

(declare-fun m!6462586 () Bool)

(assert (=> b!5441796 m!6462586))

(declare-fun m!6462588 () Bool)

(assert (=> b!5441797 m!6462588))

(assert (=> b!5441797 m!6462588))

(declare-fun m!6462590 () Bool)

(assert (=> b!5441797 m!6462590))

(declare-fun m!6462592 () Bool)

(assert (=> b!5441797 m!6462592))

(assert (=> b!5441797 m!6462590))

(assert (=> b!5441797 m!6462592))

(declare-fun m!6462594 () Bool)

(assert (=> b!5441797 m!6462594))

(assert (=> b!5441656 d!1733224))

(declare-fun d!1733226 () Bool)

(declare-fun c!949638 () Bool)

(assert (=> d!1733226 (= c!949638 (isEmpty!33945 (t!375309 s!2326)))))

(declare-fun e!3370995 () Bool)

(assert (=> d!1733226 (= (matchZipper!1505 lt!2219040 (t!375309 s!2326)) e!3370995)))

(declare-fun b!5441798 () Bool)

(assert (=> b!5441798 (= e!3370995 (nullableZipper!1476 lt!2219040))))

(declare-fun b!5441799 () Bool)

(assert (=> b!5441799 (= e!3370995 (matchZipper!1505 (derivationStepZipper!1490 lt!2219040 (head!11670 (t!375309 s!2326))) (tail!10767 (t!375309 s!2326))))))

(assert (= (and d!1733226 c!949638) b!5441798))

(assert (= (and d!1733226 (not c!949638)) b!5441799))

(assert (=> d!1733226 m!6462584))

(declare-fun m!6462598 () Bool)

(assert (=> b!5441798 m!6462598))

(assert (=> b!5441799 m!6462588))

(assert (=> b!5441799 m!6462588))

(declare-fun m!6462600 () Bool)

(assert (=> b!5441799 m!6462600))

(assert (=> b!5441799 m!6462592))

(assert (=> b!5441799 m!6462600))

(assert (=> b!5441799 m!6462592))

(declare-fun m!6462604 () Bool)

(assert (=> b!5441799 m!6462604))

(assert (=> b!5441656 d!1733226))

(declare-fun e!3371019 () Bool)

(declare-fun d!1733232 () Bool)

(assert (=> d!1733232 (= (matchZipper!1505 ((_ map or) lt!2219027 lt!2219046) (t!375309 s!2326)) e!3371019)))

(declare-fun res!2316803 () Bool)

(assert (=> d!1733232 (=> res!2316803 e!3371019)))

(assert (=> d!1733232 (= res!2316803 (matchZipper!1505 lt!2219027 (t!375309 s!2326)))))

(declare-fun lt!2219063 () Unit!154586)

(declare-fun choose!41276 ((InoxSet Context!9290) (InoxSet Context!9290) List!62082) Unit!154586)

(assert (=> d!1733232 (= lt!2219063 (choose!41276 lt!2219027 lt!2219046 (t!375309 s!2326)))))

(assert (=> d!1733232 (= (lemmaZipperConcatMatchesSameAsBothZippers!498 lt!2219027 lt!2219046 (t!375309 s!2326)) lt!2219063)))

(declare-fun b!5441829 () Bool)

(assert (=> b!5441829 (= e!3371019 (matchZipper!1505 lt!2219046 (t!375309 s!2326)))))

(assert (= (and d!1733232 (not res!2316803)) b!5441829))

(assert (=> d!1733232 m!6462428))

(assert (=> d!1733232 m!6462410))

(declare-fun m!6462618 () Bool)

(assert (=> d!1733232 m!6462618))

(assert (=> b!5441829 m!6462492))

(assert (=> b!5441656 d!1733232))

(assert (=> b!5441676 d!1733232))

(declare-fun d!1733242 () Bool)

(declare-fun c!949645 () Bool)

(assert (=> d!1733242 (= c!949645 (isEmpty!33945 (t!375309 s!2326)))))

(declare-fun e!3371020 () Bool)

(assert (=> d!1733242 (= (matchZipper!1505 lt!2219027 (t!375309 s!2326)) e!3371020)))

(declare-fun b!5441830 () Bool)

(assert (=> b!5441830 (= e!3371020 (nullableZipper!1476 lt!2219027))))

(declare-fun b!5441831 () Bool)

(assert (=> b!5441831 (= e!3371020 (matchZipper!1505 (derivationStepZipper!1490 lt!2219027 (head!11670 (t!375309 s!2326))) (tail!10767 (t!375309 s!2326))))))

(assert (= (and d!1733242 c!949645) b!5441830))

(assert (= (and d!1733242 (not c!949645)) b!5441831))

(assert (=> d!1733242 m!6462584))

(declare-fun m!6462620 () Bool)

(assert (=> b!5441830 m!6462620))

(assert (=> b!5441831 m!6462588))

(assert (=> b!5441831 m!6462588))

(declare-fun m!6462622 () Bool)

(assert (=> b!5441831 m!6462622))

(assert (=> b!5441831 m!6462592))

(assert (=> b!5441831 m!6462622))

(assert (=> b!5441831 m!6462592))

(declare-fun m!6462624 () Bool)

(assert (=> b!5441831 m!6462624))

(assert (=> b!5441676 d!1733242))

(declare-fun d!1733244 () Bool)

(declare-fun c!949646 () Bool)

(assert (=> d!1733244 (= c!949646 (isEmpty!33945 (t!375309 s!2326)))))

(declare-fun e!3371021 () Bool)

(assert (=> d!1733244 (= (matchZipper!1505 ((_ map or) lt!2219027 lt!2219046) (t!375309 s!2326)) e!3371021)))

(declare-fun b!5441832 () Bool)

(assert (=> b!5441832 (= e!3371021 (nullableZipper!1476 ((_ map or) lt!2219027 lt!2219046)))))

(declare-fun b!5441833 () Bool)

(assert (=> b!5441833 (= e!3371021 (matchZipper!1505 (derivationStepZipper!1490 ((_ map or) lt!2219027 lt!2219046) (head!11670 (t!375309 s!2326))) (tail!10767 (t!375309 s!2326))))))

(assert (= (and d!1733244 c!949646) b!5441832))

(assert (= (and d!1733244 (not c!949646)) b!5441833))

(assert (=> d!1733244 m!6462584))

(declare-fun m!6462626 () Bool)

(assert (=> b!5441832 m!6462626))

(assert (=> b!5441833 m!6462588))

(assert (=> b!5441833 m!6462588))

(declare-fun m!6462628 () Bool)

(assert (=> b!5441833 m!6462628))

(assert (=> b!5441833 m!6462592))

(assert (=> b!5441833 m!6462628))

(assert (=> b!5441833 m!6462592))

(declare-fun m!6462630 () Bool)

(assert (=> b!5441833 m!6462630))

(assert (=> b!5441676 d!1733244))

(declare-fun d!1733246 () Bool)

(declare-fun e!3371042 () Bool)

(assert (=> d!1733246 e!3371042))

(declare-fun res!2316812 () Bool)

(assert (=> d!1733246 (=> (not res!2316812) (not e!3371042))))

(declare-fun lt!2219069 () List!62084)

(declare-fun noDuplicate!1425 (List!62084) Bool)

(assert (=> d!1733246 (= res!2316812 (noDuplicate!1425 lt!2219069))))

(declare-fun choose!41277 ((InoxSet Context!9290)) List!62084)

(assert (=> d!1733246 (= lt!2219069 (choose!41277 z!1189))))

(assert (=> d!1733246 (= (toList!9045 z!1189) lt!2219069)))

(declare-fun b!5441866 () Bool)

(declare-fun content!11144 (List!62084) (InoxSet Context!9290))

(assert (=> b!5441866 (= e!3371042 (= (content!11144 lt!2219069) z!1189))))

(assert (= (and d!1733246 res!2316812) b!5441866))

(declare-fun m!6462632 () Bool)

(assert (=> d!1733246 m!6462632))

(declare-fun m!6462634 () Bool)

(assert (=> d!1733246 m!6462634))

(declare-fun m!6462636 () Bool)

(assert (=> b!5441866 m!6462636))

(assert (=> b!5441666 d!1733246))

(declare-fun bs!1255916 () Bool)

(declare-fun b!5441941 () Bool)

(assert (= bs!1255916 (and b!5441941 b!5441683)))

(declare-fun lambda!286397 () Int)

(assert (=> bs!1255916 (not (= lambda!286397 lambda!286364))))

(assert (=> bs!1255916 (not (= lambda!286397 lambda!286365))))

(assert (=> b!5441941 true))

(assert (=> b!5441941 true))

(declare-fun bs!1255917 () Bool)

(declare-fun b!5441942 () Bool)

(assert (= bs!1255917 (and b!5441942 b!5441683)))

(declare-fun lambda!286399 () Int)

(assert (=> bs!1255917 (not (= lambda!286399 lambda!286364))))

(assert (=> bs!1255917 (= lambda!286399 lambda!286365)))

(declare-fun bs!1255918 () Bool)

(assert (= bs!1255918 (and b!5441942 b!5441941)))

(assert (=> bs!1255918 (not (= lambda!286399 lambda!286397))))

(assert (=> b!5441942 true))

(assert (=> b!5441942 true))

(declare-fun b!5441938 () Bool)

(declare-fun e!3371083 () Bool)

(declare-fun e!3371088 () Bool)

(assert (=> b!5441938 (= e!3371083 e!3371088)))

(declare-fun c!949679 () Bool)

(assert (=> b!5441938 (= c!949679 ((_ is Star!15261) r!7292))))

(declare-fun b!5441939 () Bool)

(declare-fun e!3371085 () Bool)

(declare-fun call!390327 () Bool)

(assert (=> b!5441939 (= e!3371085 call!390327)))

(declare-fun bm!390322 () Bool)

(assert (=> bm!390322 (= call!390327 (isEmpty!33945 s!2326))))

(declare-fun b!5441940 () Bool)

(declare-fun res!2316845 () Bool)

(declare-fun e!3371087 () Bool)

(assert (=> b!5441940 (=> res!2316845 e!3371087)))

(assert (=> b!5441940 (= res!2316845 call!390327)))

(assert (=> b!5441940 (= e!3371088 e!3371087)))

(declare-fun call!390328 () Bool)

(assert (=> b!5441941 (= e!3371087 call!390328)))

(assert (=> b!5441942 (= e!3371088 call!390328)))

(declare-fun b!5441943 () Bool)

(declare-fun e!3371086 () Bool)

(assert (=> b!5441943 (= e!3371086 (matchRSpec!2364 (regTwo!31035 r!7292) s!2326))))

(declare-fun d!1733248 () Bool)

(declare-fun c!949680 () Bool)

(assert (=> d!1733248 (= c!949680 ((_ is EmptyExpr!15261) r!7292))))

(assert (=> d!1733248 (= (matchRSpec!2364 r!7292 s!2326) e!3371085)))

(declare-fun b!5441944 () Bool)

(declare-fun c!949681 () Bool)

(assert (=> b!5441944 (= c!949681 ((_ is ElementMatch!15261) r!7292))))

(declare-fun e!3371084 () Bool)

(declare-fun e!3371082 () Bool)

(assert (=> b!5441944 (= e!3371084 e!3371082)))

(declare-fun b!5441945 () Bool)

(declare-fun c!949682 () Bool)

(assert (=> b!5441945 (= c!949682 ((_ is Union!15261) r!7292))))

(assert (=> b!5441945 (= e!3371082 e!3371083)))

(declare-fun b!5441946 () Bool)

(assert (=> b!5441946 (= e!3371082 (= s!2326 (Cons!61958 (c!949589 r!7292) Nil!61958)))))

(declare-fun b!5441947 () Bool)

(assert (=> b!5441947 (= e!3371085 e!3371084)))

(declare-fun res!2316846 () Bool)

(assert (=> b!5441947 (= res!2316846 (not ((_ is EmptyLang!15261) r!7292)))))

(assert (=> b!5441947 (=> (not res!2316846) (not e!3371084))))

(declare-fun bm!390323 () Bool)

(assert (=> bm!390323 (= call!390328 (Exists!2442 (ite c!949679 lambda!286397 lambda!286399)))))

(declare-fun b!5441948 () Bool)

(assert (=> b!5441948 (= e!3371083 e!3371086)))

(declare-fun res!2316844 () Bool)

(assert (=> b!5441948 (= res!2316844 (matchRSpec!2364 (regOne!31035 r!7292) s!2326))))

(assert (=> b!5441948 (=> res!2316844 e!3371086)))

(assert (= (and d!1733248 c!949680) b!5441939))

(assert (= (and d!1733248 (not c!949680)) b!5441947))

(assert (= (and b!5441947 res!2316846) b!5441944))

(assert (= (and b!5441944 c!949681) b!5441946))

(assert (= (and b!5441944 (not c!949681)) b!5441945))

(assert (= (and b!5441945 c!949682) b!5441948))

(assert (= (and b!5441945 (not c!949682)) b!5441938))

(assert (= (and b!5441948 (not res!2316844)) b!5441943))

(assert (= (and b!5441938 c!949679) b!5441940))

(assert (= (and b!5441938 (not c!949679)) b!5441942))

(assert (= (and b!5441940 (not res!2316845)) b!5441941))

(assert (= (or b!5441941 b!5441942) bm!390323))

(assert (= (or b!5441939 b!5441940) bm!390322))

(assert (=> bm!390322 m!6462572))

(declare-fun m!6462702 () Bool)

(assert (=> b!5441943 m!6462702))

(declare-fun m!6462704 () Bool)

(assert (=> bm!390323 m!6462704))

(declare-fun m!6462706 () Bool)

(assert (=> b!5441948 m!6462706))

(assert (=> b!5441675 d!1733248))

(declare-fun b!5442009 () Bool)

(declare-fun res!2316880 () Bool)

(declare-fun e!3371125 () Bool)

(assert (=> b!5442009 (=> (not res!2316880) (not e!3371125))))

(declare-fun call!390331 () Bool)

(assert (=> b!5442009 (= res!2316880 (not call!390331))))

(declare-fun b!5442010 () Bool)

(declare-fun res!2316882 () Bool)

(declare-fun e!3371122 () Bool)

(assert (=> b!5442010 (=> res!2316882 e!3371122)))

(assert (=> b!5442010 (= res!2316882 e!3371125)))

(declare-fun res!2316879 () Bool)

(assert (=> b!5442010 (=> (not res!2316879) (not e!3371125))))

(declare-fun lt!2219095 () Bool)

(assert (=> b!5442010 (= res!2316879 lt!2219095)))

(declare-fun b!5442011 () Bool)

(declare-fun e!3371126 () Bool)

(assert (=> b!5442011 (= e!3371126 (= lt!2219095 call!390331))))

(declare-fun b!5442012 () Bool)

(declare-fun e!3371123 () Bool)

(assert (=> b!5442012 (= e!3371126 e!3371123)))

(declare-fun c!949696 () Bool)

(assert (=> b!5442012 (= c!949696 ((_ is EmptyLang!15261) r!7292))))

(declare-fun b!5442013 () Bool)

(declare-fun e!3371124 () Bool)

(declare-fun e!3371127 () Bool)

(assert (=> b!5442013 (= e!3371124 e!3371127)))

(declare-fun res!2316885 () Bool)

(assert (=> b!5442013 (=> res!2316885 e!3371127)))

(assert (=> b!5442013 (= res!2316885 call!390331)))

(declare-fun b!5442014 () Bool)

(assert (=> b!5442014 (= e!3371127 (not (= (head!11670 s!2326) (c!949589 r!7292))))))

(declare-fun b!5442015 () Bool)

(assert (=> b!5442015 (= e!3371123 (not lt!2219095))))

(declare-fun b!5442016 () Bool)

(declare-fun res!2316883 () Bool)

(assert (=> b!5442016 (=> res!2316883 e!3371127)))

(assert (=> b!5442016 (= res!2316883 (not (isEmpty!33945 (tail!10767 s!2326))))))

(declare-fun b!5442017 () Bool)

(declare-fun e!3371119 () Bool)

(assert (=> b!5442017 (= e!3371119 (nullable!5430 r!7292))))

(declare-fun b!5442018 () Bool)

(assert (=> b!5442018 (= e!3371125 (= (head!11670 s!2326) (c!949589 r!7292)))))

(declare-fun b!5442019 () Bool)

(declare-fun res!2316886 () Bool)

(assert (=> b!5442019 (=> res!2316886 e!3371122)))

(assert (=> b!5442019 (= res!2316886 (not ((_ is ElementMatch!15261) r!7292)))))

(assert (=> b!5442019 (= e!3371123 e!3371122)))

(declare-fun bm!390326 () Bool)

(assert (=> bm!390326 (= call!390331 (isEmpty!33945 s!2326))))

(declare-fun d!1733264 () Bool)

(assert (=> d!1733264 e!3371126))

(declare-fun c!949698 () Bool)

(assert (=> d!1733264 (= c!949698 ((_ is EmptyExpr!15261) r!7292))))

(assert (=> d!1733264 (= lt!2219095 e!3371119)))

(declare-fun c!949699 () Bool)

(assert (=> d!1733264 (= c!949699 (isEmpty!33945 s!2326))))

(assert (=> d!1733264 (validRegex!6997 r!7292)))

(assert (=> d!1733264 (= (matchR!7446 r!7292 s!2326) lt!2219095)))

(declare-fun b!5442020 () Bool)

(declare-fun derivativeStep!4296 (Regex!15261 C!30792) Regex!15261)

(assert (=> b!5442020 (= e!3371119 (matchR!7446 (derivativeStep!4296 r!7292 (head!11670 s!2326)) (tail!10767 s!2326)))))

(declare-fun b!5442021 () Bool)

(declare-fun res!2316884 () Bool)

(assert (=> b!5442021 (=> (not res!2316884) (not e!3371125))))

(assert (=> b!5442021 (= res!2316884 (isEmpty!33945 (tail!10767 s!2326)))))

(declare-fun b!5442022 () Bool)

(assert (=> b!5442022 (= e!3371122 e!3371124)))

(declare-fun res!2316881 () Bool)

(assert (=> b!5442022 (=> (not res!2316881) (not e!3371124))))

(assert (=> b!5442022 (= res!2316881 (not lt!2219095))))

(assert (= (and d!1733264 c!949699) b!5442017))

(assert (= (and d!1733264 (not c!949699)) b!5442020))

(assert (= (and d!1733264 c!949698) b!5442011))

(assert (= (and d!1733264 (not c!949698)) b!5442012))

(assert (= (and b!5442012 c!949696) b!5442015))

(assert (= (and b!5442012 (not c!949696)) b!5442019))

(assert (= (and b!5442019 (not res!2316886)) b!5442010))

(assert (= (and b!5442010 res!2316879) b!5442009))

(assert (= (and b!5442009 res!2316880) b!5442021))

(assert (= (and b!5442021 res!2316884) b!5442018))

(assert (= (and b!5442010 (not res!2316882)) b!5442022))

(assert (= (and b!5442022 res!2316881) b!5442013))

(assert (= (and b!5442013 (not res!2316885)) b!5442016))

(assert (= (and b!5442016 (not res!2316883)) b!5442014))

(assert (= (or b!5442011 b!5442009 b!5442013) bm!390326))

(assert (=> b!5442020 m!6462576))

(assert (=> b!5442020 m!6462576))

(declare-fun m!6462720 () Bool)

(assert (=> b!5442020 m!6462720))

(assert (=> b!5442020 m!6462580))

(assert (=> b!5442020 m!6462720))

(assert (=> b!5442020 m!6462580))

(declare-fun m!6462722 () Bool)

(assert (=> b!5442020 m!6462722))

(assert (=> b!5442016 m!6462580))

(assert (=> b!5442016 m!6462580))

(declare-fun m!6462724 () Bool)

(assert (=> b!5442016 m!6462724))

(assert (=> b!5442018 m!6462576))

(declare-fun m!6462726 () Bool)

(assert (=> b!5442017 m!6462726))

(assert (=> d!1733264 m!6462572))

(assert (=> d!1733264 m!6462466))

(assert (=> b!5442014 m!6462576))

(assert (=> b!5442021 m!6462580))

(assert (=> b!5442021 m!6462580))

(assert (=> b!5442021 m!6462724))

(assert (=> bm!390326 m!6462572))

(assert (=> b!5441675 d!1733264))

(declare-fun d!1733272 () Bool)

(assert (=> d!1733272 (= (matchR!7446 r!7292 s!2326) (matchRSpec!2364 r!7292 s!2326))))

(declare-fun lt!2219099 () Unit!154586)

(declare-fun choose!41281 (Regex!15261 List!62082) Unit!154586)

(assert (=> d!1733272 (= lt!2219099 (choose!41281 r!7292 s!2326))))

(assert (=> d!1733272 (validRegex!6997 r!7292)))

(assert (=> d!1733272 (= (mainMatchTheorem!2364 r!7292 s!2326) lt!2219099)))

(declare-fun bs!1255929 () Bool)

(assert (= bs!1255929 d!1733272))

(assert (=> bs!1255929 m!6462434))

(assert (=> bs!1255929 m!6462432))

(declare-fun m!6462762 () Bool)

(assert (=> bs!1255929 m!6462762))

(assert (=> bs!1255929 m!6462466))

(assert (=> b!5441675 d!1733272))

(assert (=> b!5441665 d!1733242))

(declare-fun d!1733280 () Bool)

(assert (=> d!1733280 (not (matchZipper!1505 lt!2219027 (t!375309 s!2326)))))

(declare-fun lt!2219104 () Unit!154586)

(declare-fun choose!41282 ((InoxSet Context!9290) List!62082) Unit!154586)

(assert (=> d!1733280 (= lt!2219104 (choose!41282 lt!2219027 (t!375309 s!2326)))))

(assert (=> d!1733280 (= lt!2219027 ((as const (Array Context!9290 Bool)) false))))

(assert (=> d!1733280 (= (lemmaEmptyZipperMatchesNothing!16 lt!2219027 (t!375309 s!2326)) lt!2219104)))

(declare-fun bs!1255930 () Bool)

(assert (= bs!1255930 d!1733280))

(assert (=> bs!1255930 m!6462410))

(declare-fun m!6462764 () Bool)

(assert (=> bs!1255930 m!6462764))

(assert (=> b!5441665 d!1733280))

(declare-fun bs!1255931 () Bool)

(declare-fun d!1733282 () Bool)

(assert (= bs!1255931 (and d!1733282 b!5441681)))

(declare-fun lambda!286411 () Int)

(assert (=> bs!1255931 (= lambda!286411 lambda!286367)))

(declare-fun bs!1255932 () Bool)

(assert (= bs!1255932 (and d!1733282 d!1733194)))

(assert (=> bs!1255932 (= lambda!286411 lambda!286370)))

(declare-fun bs!1255933 () Bool)

(assert (= bs!1255933 (and d!1733282 d!1733196)))

(assert (=> bs!1255933 (= lambda!286411 lambda!286376)))

(declare-fun bs!1255934 () Bool)

(assert (= bs!1255934 (and d!1733282 d!1733202)))

(assert (=> bs!1255934 (= lambda!286411 lambda!286379)))

(assert (=> d!1733282 (= (inv!81399 setElem!35581) (forall!14576 (exprs!5145 setElem!35581) lambda!286411))))

(declare-fun bs!1255935 () Bool)

(assert (= bs!1255935 d!1733282))

(declare-fun m!6462766 () Bool)

(assert (=> bs!1255935 m!6462766))

(assert (=> setNonEmpty!35581 d!1733282))

(declare-fun bs!1255943 () Bool)

(declare-fun d!1733284 () Bool)

(assert (= bs!1255943 (and d!1733284 d!1733282)))

(declare-fun lambda!286415 () Int)

(assert (=> bs!1255943 (= lambda!286415 lambda!286411)))

(declare-fun bs!1255944 () Bool)

(assert (= bs!1255944 (and d!1733284 d!1733202)))

(assert (=> bs!1255944 (= lambda!286415 lambda!286379)))

(declare-fun bs!1255945 () Bool)

(assert (= bs!1255945 (and d!1733284 d!1733194)))

(assert (=> bs!1255945 (= lambda!286415 lambda!286370)))

(declare-fun bs!1255946 () Bool)

(assert (= bs!1255946 (and d!1733284 d!1733196)))

(assert (=> bs!1255946 (= lambda!286415 lambda!286376)))

(declare-fun bs!1255947 () Bool)

(assert (= bs!1255947 (and d!1733284 b!5441681)))

(assert (=> bs!1255947 (= lambda!286415 lambda!286367)))

(declare-fun b!5442119 () Bool)

(declare-fun e!3371189 () Regex!15261)

(assert (=> b!5442119 (= e!3371189 EmptyExpr!15261)))

(declare-fun b!5442120 () Bool)

(declare-fun e!3371185 () Bool)

(declare-fun lt!2219112 () Regex!15261)

(declare-fun isEmptyExpr!1008 (Regex!15261) Bool)

(assert (=> b!5442120 (= e!3371185 (isEmptyExpr!1008 lt!2219112))))

(declare-fun b!5442121 () Bool)

(declare-fun e!3371184 () Bool)

(assert (=> b!5442121 (= e!3371184 e!3371185)))

(declare-fun c!949730 () Bool)

(assert (=> b!5442121 (= c!949730 (isEmpty!33942 (exprs!5145 (h!68408 zl!343))))))

(declare-fun b!5442122 () Bool)

(declare-fun e!3371188 () Regex!15261)

(assert (=> b!5442122 (= e!3371188 e!3371189)))

(declare-fun c!949731 () Bool)

(assert (=> b!5442122 (= c!949731 ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343))))))

(declare-fun b!5442123 () Bool)

(assert (=> b!5442123 (= e!3371188 (h!68407 (exprs!5145 (h!68408 zl!343))))))

(declare-fun b!5442124 () Bool)

(declare-fun e!3371183 () Bool)

(assert (=> b!5442124 (= e!3371183 (isEmpty!33942 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5442126 () Bool)

(declare-fun e!3371182 () Bool)

(declare-fun isConcat!531 (Regex!15261) Bool)

(assert (=> b!5442126 (= e!3371182 (isConcat!531 lt!2219112))))

(declare-fun b!5442125 () Bool)

(assert (=> b!5442125 (= e!3371182 (= lt!2219112 (head!11667 (exprs!5145 (h!68408 zl!343)))))))

(assert (=> d!1733284 e!3371184))

(declare-fun res!2316925 () Bool)

(assert (=> d!1733284 (=> (not res!2316925) (not e!3371184))))

(assert (=> d!1733284 (= res!2316925 (validRegex!6997 lt!2219112))))

(assert (=> d!1733284 (= lt!2219112 e!3371188)))

(declare-fun c!949728 () Bool)

(assert (=> d!1733284 (= c!949728 e!3371183)))

(declare-fun res!2316928 () Bool)

(assert (=> d!1733284 (=> (not res!2316928) (not e!3371183))))

(assert (=> d!1733284 (= res!2316928 ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343))))))

(assert (=> d!1733284 (forall!14576 (exprs!5145 (h!68408 zl!343)) lambda!286415)))

(assert (=> d!1733284 (= (generalisedConcat!930 (exprs!5145 (h!68408 zl!343))) lt!2219112)))

(declare-fun b!5442127 () Bool)

(assert (=> b!5442127 (= e!3371185 e!3371182)))

(declare-fun c!949729 () Bool)

(assert (=> b!5442127 (= c!949729 (isEmpty!33942 (tail!10764 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5442128 () Bool)

(assert (=> b!5442128 (= e!3371189 (Concat!24106 (h!68407 (exprs!5145 (h!68408 zl!343))) (generalisedConcat!930 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(assert (= (and d!1733284 res!2316928) b!5442124))

(assert (= (and d!1733284 c!949728) b!5442123))

(assert (= (and d!1733284 (not c!949728)) b!5442122))

(assert (= (and b!5442122 c!949731) b!5442128))

(assert (= (and b!5442122 (not c!949731)) b!5442119))

(assert (= (and d!1733284 res!2316925) b!5442121))

(assert (= (and b!5442121 c!949730) b!5442120))

(assert (= (and b!5442121 (not c!949730)) b!5442127))

(assert (= (and b!5442127 c!949729) b!5442125))

(assert (= (and b!5442127 (not c!949729)) b!5442126))

(declare-fun m!6462798 () Bool)

(assert (=> b!5442121 m!6462798))

(declare-fun m!6462800 () Bool)

(assert (=> b!5442120 m!6462800))

(assert (=> b!5442124 m!6462462))

(assert (=> b!5442128 m!6462420))

(declare-fun m!6462802 () Bool)

(assert (=> b!5442126 m!6462802))

(declare-fun m!6462804 () Bool)

(assert (=> b!5442127 m!6462804))

(assert (=> b!5442127 m!6462804))

(declare-fun m!6462806 () Bool)

(assert (=> b!5442127 m!6462806))

(declare-fun m!6462808 () Bool)

(assert (=> d!1733284 m!6462808))

(declare-fun m!6462810 () Bool)

(assert (=> d!1733284 m!6462810))

(declare-fun m!6462812 () Bool)

(assert (=> b!5442125 m!6462812))

(assert (=> b!5441685 d!1733284))

(assert (=> b!5441664 d!1733224))

(declare-fun b!5442200 () Bool)

(declare-fun res!2316965 () Bool)

(declare-fun e!3371232 () Bool)

(assert (=> b!5442200 (=> (not res!2316965) (not e!3371232))))

(declare-fun lt!2219125 () Option!15372)

(declare-fun get!21366 (Option!15372) tuple2!64920)

(assert (=> b!5442200 (= res!2316965 (matchR!7446 (regTwo!31034 r!7292) (_2!35763 (get!21366 lt!2219125))))))

(declare-fun b!5442202 () Bool)

(declare-fun ++!13624 (List!62082 List!62082) List!62082)

(assert (=> b!5442202 (= e!3371232 (= (++!13624 (_1!35763 (get!21366 lt!2219125)) (_2!35763 (get!21366 lt!2219125))) s!2326))))

(declare-fun b!5442203 () Bool)

(declare-fun e!3371233 () Bool)

(assert (=> b!5442203 (= e!3371233 (not (isDefined!12075 lt!2219125)))))

(declare-fun b!5442204 () Bool)

(declare-fun e!3371231 () Option!15372)

(assert (=> b!5442204 (= e!3371231 (Some!15371 (tuple2!64921 Nil!61958 s!2326)))))

(declare-fun b!5442205 () Bool)

(declare-fun lt!2219124 () Unit!154586)

(declare-fun lt!2219123 () Unit!154586)

(assert (=> b!5442205 (= lt!2219124 lt!2219123)))

(assert (=> b!5442205 (= (++!13624 (++!13624 Nil!61958 (Cons!61958 (h!68406 s!2326) Nil!61958)) (t!375309 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1871 (List!62082 C!30792 List!62082 List!62082) Unit!154586)

(assert (=> b!5442205 (= lt!2219123 (lemmaMoveElementToOtherListKeepsConcatEq!1871 Nil!61958 (h!68406 s!2326) (t!375309 s!2326) s!2326))))

(declare-fun e!3371229 () Option!15372)

(assert (=> b!5442205 (= e!3371229 (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) (++!13624 Nil!61958 (Cons!61958 (h!68406 s!2326) Nil!61958)) (t!375309 s!2326) s!2326))))

(declare-fun b!5442206 () Bool)

(declare-fun res!2316967 () Bool)

(assert (=> b!5442206 (=> (not res!2316967) (not e!3371232))))

(assert (=> b!5442206 (= res!2316967 (matchR!7446 (regOne!31034 r!7292) (_1!35763 (get!21366 lt!2219125))))))

(declare-fun b!5442207 () Bool)

(declare-fun e!3371230 () Bool)

(assert (=> b!5442207 (= e!3371230 (matchR!7446 (regTwo!31034 r!7292) s!2326))))

(declare-fun b!5442208 () Bool)

(assert (=> b!5442208 (= e!3371231 e!3371229)))

(declare-fun c!949751 () Bool)

(assert (=> b!5442208 (= c!949751 ((_ is Nil!61958) s!2326))))

(declare-fun b!5442201 () Bool)

(assert (=> b!5442201 (= e!3371229 None!15371)))

(declare-fun d!1733296 () Bool)

(assert (=> d!1733296 e!3371233))

(declare-fun res!2316966 () Bool)

(assert (=> d!1733296 (=> res!2316966 e!3371233)))

(assert (=> d!1733296 (= res!2316966 e!3371232)))

(declare-fun res!2316964 () Bool)

(assert (=> d!1733296 (=> (not res!2316964) (not e!3371232))))

(assert (=> d!1733296 (= res!2316964 (isDefined!12075 lt!2219125))))

(assert (=> d!1733296 (= lt!2219125 e!3371231)))

(declare-fun c!949750 () Bool)

(assert (=> d!1733296 (= c!949750 e!3371230)))

(declare-fun res!2316968 () Bool)

(assert (=> d!1733296 (=> (not res!2316968) (not e!3371230))))

(assert (=> d!1733296 (= res!2316968 (matchR!7446 (regOne!31034 r!7292) Nil!61958))))

(assert (=> d!1733296 (validRegex!6997 (regOne!31034 r!7292))))

(assert (=> d!1733296 (= (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) Nil!61958 s!2326 s!2326) lt!2219125)))

(assert (= (and d!1733296 res!2316968) b!5442207))

(assert (= (and d!1733296 c!949750) b!5442204))

(assert (= (and d!1733296 (not c!949750)) b!5442208))

(assert (= (and b!5442208 c!949751) b!5442201))

(assert (= (and b!5442208 (not c!949751)) b!5442205))

(assert (= (and d!1733296 res!2316964) b!5442206))

(assert (= (and b!5442206 res!2316967) b!5442200))

(assert (= (and b!5442200 res!2316965) b!5442202))

(assert (= (and d!1733296 (not res!2316966)) b!5442203))

(declare-fun m!6462834 () Bool)

(assert (=> b!5442202 m!6462834))

(declare-fun m!6462836 () Bool)

(assert (=> b!5442202 m!6462836))

(declare-fun m!6462838 () Bool)

(assert (=> d!1733296 m!6462838))

(declare-fun m!6462840 () Bool)

(assert (=> d!1733296 m!6462840))

(declare-fun m!6462842 () Bool)

(assert (=> d!1733296 m!6462842))

(declare-fun m!6462844 () Bool)

(assert (=> b!5442205 m!6462844))

(assert (=> b!5442205 m!6462844))

(declare-fun m!6462846 () Bool)

(assert (=> b!5442205 m!6462846))

(declare-fun m!6462848 () Bool)

(assert (=> b!5442205 m!6462848))

(assert (=> b!5442205 m!6462844))

(declare-fun m!6462850 () Bool)

(assert (=> b!5442205 m!6462850))

(assert (=> b!5442200 m!6462834))

(declare-fun m!6462852 () Bool)

(assert (=> b!5442200 m!6462852))

(assert (=> b!5442207 m!6462444))

(assert (=> b!5442203 m!6462838))

(assert (=> b!5442206 m!6462834))

(declare-fun m!6462854 () Bool)

(assert (=> b!5442206 m!6462854))

(assert (=> b!5441683 d!1733296))

(declare-fun d!1733306 () Bool)

(declare-fun choose!41283 (Int) Bool)

(assert (=> d!1733306 (= (Exists!2442 lambda!286364) (choose!41283 lambda!286364))))

(declare-fun bs!1255956 () Bool)

(assert (= bs!1255956 d!1733306))

(declare-fun m!6462856 () Bool)

(assert (=> bs!1255956 m!6462856))

(assert (=> b!5441683 d!1733306))

(declare-fun bs!1255975 () Bool)

(declare-fun d!1733308 () Bool)

(assert (= bs!1255975 (and d!1733308 b!5441683)))

(declare-fun lambda!286427 () Int)

(assert (=> bs!1255975 (= lambda!286427 lambda!286364)))

(assert (=> bs!1255975 (not (= lambda!286427 lambda!286365))))

(declare-fun bs!1255976 () Bool)

(assert (= bs!1255976 (and d!1733308 b!5441941)))

(assert (=> bs!1255976 (not (= lambda!286427 lambda!286397))))

(declare-fun bs!1255977 () Bool)

(assert (= bs!1255977 (and d!1733308 b!5441942)))

(assert (=> bs!1255977 (not (= lambda!286427 lambda!286399))))

(assert (=> d!1733308 true))

(assert (=> d!1733308 true))

(assert (=> d!1733308 true))

(assert (=> d!1733308 (= (isDefined!12075 (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) Nil!61958 s!2326 s!2326)) (Exists!2442 lambda!286427))))

(declare-fun lt!2219134 () Unit!154586)

(declare-fun choose!41284 (Regex!15261 Regex!15261 List!62082) Unit!154586)

(assert (=> d!1733308 (= lt!2219134 (choose!41284 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326))))

(assert (=> d!1733308 (validRegex!6997 (regOne!31034 r!7292))))

(assert (=> d!1733308 (= (lemmaFindConcatSeparationEquivalentToExists!1550 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326) lt!2219134)))

(declare-fun bs!1255979 () Bool)

(assert (= bs!1255979 d!1733308))

(declare-fun m!6462894 () Bool)

(assert (=> bs!1255979 m!6462894))

(assert (=> bs!1255979 m!6462498))

(assert (=> bs!1255979 m!6462500))

(assert (=> bs!1255979 m!6462498))

(declare-fun m!6462896 () Bool)

(assert (=> bs!1255979 m!6462896))

(assert (=> bs!1255979 m!6462842))

(assert (=> b!5441683 d!1733308))

(declare-fun bs!1255997 () Bool)

(declare-fun d!1733326 () Bool)

(assert (= bs!1255997 (and d!1733326 d!1733308)))

(declare-fun lambda!286434 () Int)

(assert (=> bs!1255997 (= lambda!286434 lambda!286427)))

(declare-fun bs!1255998 () Bool)

(assert (= bs!1255998 (and d!1733326 b!5441683)))

(assert (=> bs!1255998 (not (= lambda!286434 lambda!286365))))

(declare-fun bs!1255999 () Bool)

(assert (= bs!1255999 (and d!1733326 b!5441941)))

(assert (=> bs!1255999 (not (= lambda!286434 lambda!286397))))

(declare-fun bs!1256000 () Bool)

(assert (= bs!1256000 (and d!1733326 b!5441942)))

(assert (=> bs!1256000 (not (= lambda!286434 lambda!286399))))

(assert (=> bs!1255998 (= lambda!286434 lambda!286364)))

(assert (=> d!1733326 true))

(assert (=> d!1733326 true))

(assert (=> d!1733326 true))

(declare-fun lambda!286435 () Int)

(assert (=> bs!1255997 (not (= lambda!286435 lambda!286427))))

(assert (=> bs!1255998 (= lambda!286435 lambda!286365)))

(assert (=> bs!1255999 (not (= lambda!286435 lambda!286397))))

(declare-fun bs!1256001 () Bool)

(assert (= bs!1256001 d!1733326))

(assert (=> bs!1256001 (not (= lambda!286435 lambda!286434))))

(assert (=> bs!1256000 (= lambda!286435 lambda!286399)))

(assert (=> bs!1255998 (not (= lambda!286435 lambda!286364))))

(assert (=> d!1733326 true))

(assert (=> d!1733326 true))

(assert (=> d!1733326 true))

(assert (=> d!1733326 (= (Exists!2442 lambda!286434) (Exists!2442 lambda!286435))))

(declare-fun lt!2219144 () Unit!154586)

(declare-fun choose!41286 (Regex!15261 Regex!15261 List!62082) Unit!154586)

(assert (=> d!1733326 (= lt!2219144 (choose!41286 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326))))

(assert (=> d!1733326 (validRegex!6997 (regOne!31034 r!7292))))

(assert (=> d!1733326 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1096 (regOne!31034 r!7292) (regTwo!31034 r!7292) s!2326) lt!2219144)))

(declare-fun m!6462924 () Bool)

(assert (=> bs!1256001 m!6462924))

(declare-fun m!6462926 () Bool)

(assert (=> bs!1256001 m!6462926))

(declare-fun m!6462928 () Bool)

(assert (=> bs!1256001 m!6462928))

(assert (=> bs!1256001 m!6462842))

(assert (=> b!5441683 d!1733326))

(declare-fun d!1733336 () Bool)

(assert (=> d!1733336 (= (Exists!2442 lambda!286365) (choose!41283 lambda!286365))))

(declare-fun bs!1256002 () Bool)

(assert (= bs!1256002 d!1733336))

(declare-fun m!6462930 () Bool)

(assert (=> bs!1256002 m!6462930))

(assert (=> b!5441683 d!1733336))

(declare-fun d!1733338 () Bool)

(declare-fun isEmpty!33947 (Option!15372) Bool)

(assert (=> d!1733338 (= (isDefined!12075 (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) Nil!61958 s!2326 s!2326)) (not (isEmpty!33947 (findConcatSeparation!1786 (regOne!31034 r!7292) (regTwo!31034 r!7292) Nil!61958 s!2326 s!2326))))))

(declare-fun bs!1256003 () Bool)

(assert (= bs!1256003 d!1733338))

(assert (=> bs!1256003 m!6462498))

(declare-fun m!6462932 () Bool)

(assert (=> bs!1256003 m!6462932))

(assert (=> b!5441683 d!1733338))

(declare-fun d!1733340 () Bool)

(declare-fun nullableFct!1627 (Regex!15261) Bool)

(assert (=> d!1733340 (= (nullable!5430 (regOne!31034 (regOne!31034 r!7292))) (nullableFct!1627 (regOne!31034 (regOne!31034 r!7292))))))

(declare-fun bs!1256004 () Bool)

(assert (= bs!1256004 d!1733340))

(declare-fun m!6462934 () Bool)

(assert (=> bs!1256004 m!6462934))

(assert (=> b!5441672 d!1733340))

(declare-fun bs!1256005 () Bool)

(declare-fun d!1733342 () Bool)

(assert (= bs!1256005 (and d!1733342 b!5441660)))

(declare-fun lambda!286436 () Int)

(assert (=> bs!1256005 (= lambda!286436 lambda!286366)))

(declare-fun bs!1256006 () Bool)

(assert (= bs!1256006 (and d!1733342 d!1733214)))

(assert (=> bs!1256006 (= lambda!286436 lambda!286382)))

(assert (=> d!1733342 true))

(assert (=> d!1733342 (= (derivationStepZipper!1490 lt!2219047 (h!68406 s!2326)) (flatMap!988 lt!2219047 lambda!286436))))

(declare-fun bs!1256007 () Bool)

(assert (= bs!1256007 d!1733342))

(declare-fun m!6462938 () Bool)

(assert (=> bs!1256007 m!6462938))

(assert (=> b!5441673 d!1733342))

(declare-fun d!1733344 () Bool)

(declare-fun choose!41287 ((InoxSet Context!9290) Int) (InoxSet Context!9290))

(assert (=> d!1733344 (= (flatMap!988 lt!2219047 lambda!286366) (choose!41287 lt!2219047 lambda!286366))))

(declare-fun bs!1256011 () Bool)

(assert (= bs!1256011 d!1733344))

(declare-fun m!6462942 () Bool)

(assert (=> bs!1256011 m!6462942))

(assert (=> b!5441673 d!1733344))

(declare-fun d!1733352 () Bool)

(declare-fun c!949774 () Bool)

(declare-fun e!3371307 () Bool)

(assert (=> d!1733352 (= c!949774 e!3371307)))

(declare-fun res!2317011 () Bool)

(assert (=> d!1733352 (=> (not res!2317011) (not e!3371307))))

(assert (=> d!1733352 (= res!2317011 ((_ is Cons!61959) (exprs!5145 lt!2219035)))))

(declare-fun e!3371308 () (InoxSet Context!9290))

(assert (=> d!1733352 (= (derivationStepZipperUp!633 lt!2219035 (h!68406 s!2326)) e!3371308)))

(declare-fun call!390350 () (InoxSet Context!9290))

(declare-fun b!5442347 () Bool)

(assert (=> b!5442347 (= e!3371308 ((_ map or) call!390350 (derivationStepZipperUp!633 (Context!9291 (t!375310 (exprs!5145 lt!2219035))) (h!68406 s!2326))))))

(declare-fun b!5442348 () Bool)

(assert (=> b!5442348 (= e!3371307 (nullable!5430 (h!68407 (exprs!5145 lt!2219035))))))

(declare-fun bm!390345 () Bool)

(assert (=> bm!390345 (= call!390350 (derivationStepZipperDown!709 (h!68407 (exprs!5145 lt!2219035)) (Context!9291 (t!375310 (exprs!5145 lt!2219035))) (h!68406 s!2326)))))

(declare-fun b!5442349 () Bool)

(declare-fun e!3371306 () (InoxSet Context!9290))

(assert (=> b!5442349 (= e!3371306 ((as const (Array Context!9290 Bool)) false))))

(declare-fun b!5442350 () Bool)

(assert (=> b!5442350 (= e!3371308 e!3371306)))

(declare-fun c!949773 () Bool)

(assert (=> b!5442350 (= c!949773 ((_ is Cons!61959) (exprs!5145 lt!2219035)))))

(declare-fun b!5442351 () Bool)

(assert (=> b!5442351 (= e!3371306 call!390350)))

(assert (= (and d!1733352 res!2317011) b!5442348))

(assert (= (and d!1733352 c!949774) b!5442347))

(assert (= (and d!1733352 (not c!949774)) b!5442350))

(assert (= (and b!5442350 c!949773) b!5442351))

(assert (= (and b!5442350 (not c!949773)) b!5442349))

(assert (= (or b!5442347 b!5442351) bm!390345))

(declare-fun m!6462944 () Bool)

(assert (=> b!5442347 m!6462944))

(declare-fun m!6462946 () Bool)

(assert (=> b!5442348 m!6462946))

(declare-fun m!6462948 () Bool)

(assert (=> bm!390345 m!6462948))

(assert (=> b!5441673 d!1733352))

(declare-fun d!1733354 () Bool)

(declare-fun dynLambda!24384 (Int Context!9290) (InoxSet Context!9290))

(assert (=> d!1733354 (= (flatMap!988 lt!2219047 lambda!286366) (dynLambda!24384 lambda!286366 lt!2219035))))

(declare-fun lt!2219147 () Unit!154586)

(declare-fun choose!41288 ((InoxSet Context!9290) Context!9290 Int) Unit!154586)

(assert (=> d!1733354 (= lt!2219147 (choose!41288 lt!2219047 lt!2219035 lambda!286366))))

(assert (=> d!1733354 (= lt!2219047 (store ((as const (Array Context!9290 Bool)) false) lt!2219035 true))))

(assert (=> d!1733354 (= (lemmaFlatMapOnSingletonSet!520 lt!2219047 lt!2219035 lambda!286366) lt!2219147)))

(declare-fun b_lambda!207457 () Bool)

(assert (=> (not b_lambda!207457) (not d!1733354)))

(declare-fun bs!1256012 () Bool)

(assert (= bs!1256012 d!1733354))

(assert (=> bs!1256012 m!6462468))

(declare-fun m!6462950 () Bool)

(assert (=> bs!1256012 m!6462950))

(declare-fun m!6462952 () Bool)

(assert (=> bs!1256012 m!6462952))

(assert (=> bs!1256012 m!6462472))

(assert (=> b!5441673 d!1733354))

(declare-fun d!1733356 () Bool)

(declare-fun lt!2219150 () Regex!15261)

(assert (=> d!1733356 (validRegex!6997 lt!2219150)))

(assert (=> d!1733356 (= lt!2219150 (generalisedUnion!1190 (unfocusZipperList!703 zl!343)))))

(assert (=> d!1733356 (= (unfocusZipper!1003 zl!343) lt!2219150)))

(declare-fun bs!1256013 () Bool)

(assert (= bs!1256013 d!1733356))

(declare-fun m!6462954 () Bool)

(assert (=> bs!1256013 m!6462954))

(assert (=> bs!1256013 m!6462456))

(assert (=> bs!1256013 m!6462456))

(assert (=> bs!1256013 m!6462458))

(assert (=> b!5441671 d!1733356))

(declare-fun b!5442370 () Bool)

(declare-fun e!3371326 () Bool)

(declare-fun e!3371323 () Bool)

(assert (=> b!5442370 (= e!3371326 e!3371323)))

(declare-fun c!949779 () Bool)

(assert (=> b!5442370 (= c!949779 ((_ is Star!15261) r!7292))))

(declare-fun b!5442371 () Bool)

(declare-fun res!2317023 () Bool)

(declare-fun e!3371328 () Bool)

(assert (=> b!5442371 (=> (not res!2317023) (not e!3371328))))

(declare-fun call!390358 () Bool)

(assert (=> b!5442371 (= res!2317023 call!390358)))

(declare-fun e!3371327 () Bool)

(assert (=> b!5442371 (= e!3371327 e!3371328)))

(declare-fun b!5442372 () Bool)

(declare-fun e!3371324 () Bool)

(declare-fun e!3371329 () Bool)

(assert (=> b!5442372 (= e!3371324 e!3371329)))

(declare-fun res!2317022 () Bool)

(assert (=> b!5442372 (=> (not res!2317022) (not e!3371329))))

(assert (=> b!5442372 (= res!2317022 call!390358)))

(declare-fun c!949780 () Bool)

(declare-fun call!390359 () Bool)

(declare-fun bm!390352 () Bool)

(assert (=> bm!390352 (= call!390359 (validRegex!6997 (ite c!949779 (reg!15590 r!7292) (ite c!949780 (regTwo!31035 r!7292) (regTwo!31034 r!7292)))))))

(declare-fun b!5442373 () Bool)

(declare-fun call!390357 () Bool)

(assert (=> b!5442373 (= e!3371329 call!390357)))

(declare-fun d!1733358 () Bool)

(declare-fun res!2317024 () Bool)

(assert (=> d!1733358 (=> res!2317024 e!3371326)))

(assert (=> d!1733358 (= res!2317024 ((_ is ElementMatch!15261) r!7292))))

(assert (=> d!1733358 (= (validRegex!6997 r!7292) e!3371326)))

(declare-fun b!5442374 () Bool)

(declare-fun res!2317025 () Bool)

(assert (=> b!5442374 (=> res!2317025 e!3371324)))

(assert (=> b!5442374 (= res!2317025 (not ((_ is Concat!24106) r!7292)))))

(assert (=> b!5442374 (= e!3371327 e!3371324)))

(declare-fun b!5442375 () Bool)

(assert (=> b!5442375 (= e!3371323 e!3371327)))

(assert (=> b!5442375 (= c!949780 ((_ is Union!15261) r!7292))))

(declare-fun b!5442376 () Bool)

(assert (=> b!5442376 (= e!3371328 call!390357)))

(declare-fun b!5442377 () Bool)

(declare-fun e!3371325 () Bool)

(assert (=> b!5442377 (= e!3371323 e!3371325)))

(declare-fun res!2317026 () Bool)

(assert (=> b!5442377 (= res!2317026 (not (nullable!5430 (reg!15590 r!7292))))))

(assert (=> b!5442377 (=> (not res!2317026) (not e!3371325))))

(declare-fun b!5442378 () Bool)

(assert (=> b!5442378 (= e!3371325 call!390359)))

(declare-fun bm!390353 () Bool)

(assert (=> bm!390353 (= call!390357 call!390359)))

(declare-fun bm!390354 () Bool)

(assert (=> bm!390354 (= call!390358 (validRegex!6997 (ite c!949780 (regOne!31035 r!7292) (regOne!31034 r!7292))))))

(assert (= (and d!1733358 (not res!2317024)) b!5442370))

(assert (= (and b!5442370 c!949779) b!5442377))

(assert (= (and b!5442370 (not c!949779)) b!5442375))

(assert (= (and b!5442377 res!2317026) b!5442378))

(assert (= (and b!5442375 c!949780) b!5442371))

(assert (= (and b!5442375 (not c!949780)) b!5442374))

(assert (= (and b!5442371 res!2317023) b!5442376))

(assert (= (and b!5442374 (not res!2317025)) b!5442372))

(assert (= (and b!5442372 res!2317022) b!5442373))

(assert (= (or b!5442376 b!5442373) bm!390353))

(assert (= (or b!5442371 b!5442372) bm!390354))

(assert (= (or b!5442378 bm!390353) bm!390352))

(declare-fun m!6462956 () Bool)

(assert (=> bm!390352 m!6462956))

(declare-fun m!6462958 () Bool)

(assert (=> b!5442377 m!6462958))

(declare-fun m!6462960 () Bool)

(assert (=> bm!390354 m!6462960))

(assert (=> start!570626 d!1733358))

(declare-fun b!5442401 () Bool)

(declare-fun e!3371345 () (InoxSet Context!9290))

(declare-fun e!3371347 () (InoxSet Context!9290))

(assert (=> b!5442401 (= e!3371345 e!3371347)))

(declare-fun c!949795 () Bool)

(assert (=> b!5442401 (= c!949795 ((_ is Union!15261) (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun bm!390367 () Bool)

(declare-fun call!390373 () (InoxSet Context!9290))

(declare-fun call!390377 () (InoxSet Context!9290))

(assert (=> bm!390367 (= call!390373 call!390377)))

(declare-fun b!5442402 () Bool)

(declare-fun e!3371342 () Bool)

(assert (=> b!5442402 (= e!3371342 (nullable!5430 (regOne!31034 (h!68407 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun b!5442403 () Bool)

(declare-fun c!949792 () Bool)

(assert (=> b!5442403 (= c!949792 ((_ is Star!15261) (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun e!3371344 () (InoxSet Context!9290))

(declare-fun e!3371343 () (InoxSet Context!9290))

(assert (=> b!5442403 (= e!3371344 e!3371343)))

(declare-fun d!1733360 () Bool)

(declare-fun c!949794 () Bool)

(assert (=> d!1733360 (= c!949794 (and ((_ is ElementMatch!15261) (h!68407 (exprs!5145 (h!68408 zl!343)))) (= (c!949589 (h!68407 (exprs!5145 (h!68408 zl!343)))) (h!68406 s!2326))))))

(assert (=> d!1733360 (= (derivationStepZipperDown!709 (h!68407 (exprs!5145 (h!68408 zl!343))) lt!2219035 (h!68406 s!2326)) e!3371345)))

(declare-fun c!949791 () Bool)

(declare-fun c!949793 () Bool)

(declare-fun call!390374 () List!62083)

(declare-fun bm!390368 () Bool)

(declare-fun $colon$colon!1526 (List!62083 Regex!15261) List!62083)

(assert (=> bm!390368 (= call!390374 ($colon$colon!1526 (exprs!5145 lt!2219035) (ite (or c!949791 c!949793) (regTwo!31034 (h!68407 (exprs!5145 (h!68408 zl!343)))) (h!68407 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun bm!390369 () Bool)

(declare-fun call!390375 () List!62083)

(assert (=> bm!390369 (= call!390377 (derivationStepZipperDown!709 (ite c!949795 (regOne!31035 (h!68407 (exprs!5145 (h!68408 zl!343)))) (ite c!949791 (regTwo!31034 (h!68407 (exprs!5145 (h!68408 zl!343)))) (ite c!949793 (regOne!31034 (h!68407 (exprs!5145 (h!68408 zl!343)))) (reg!15590 (h!68407 (exprs!5145 (h!68408 zl!343))))))) (ite (or c!949795 c!949791) lt!2219035 (Context!9291 call!390375)) (h!68406 s!2326)))))

(declare-fun b!5442404 () Bool)

(declare-fun call!390372 () (InoxSet Context!9290))

(assert (=> b!5442404 (= e!3371344 call!390372)))

(declare-fun b!5442405 () Bool)

(declare-fun e!3371346 () (InoxSet Context!9290))

(assert (=> b!5442405 (= e!3371346 e!3371344)))

(assert (=> b!5442405 (= c!949793 ((_ is Concat!24106) (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun bm!390370 () Bool)

(assert (=> bm!390370 (= call!390375 call!390374)))

(declare-fun bm!390371 () Bool)

(declare-fun call!390376 () (InoxSet Context!9290))

(assert (=> bm!390371 (= call!390376 (derivationStepZipperDown!709 (ite c!949795 (regTwo!31035 (h!68407 (exprs!5145 (h!68408 zl!343)))) (regOne!31034 (h!68407 (exprs!5145 (h!68408 zl!343))))) (ite c!949795 lt!2219035 (Context!9291 call!390374)) (h!68406 s!2326)))))

(declare-fun bm!390372 () Bool)

(assert (=> bm!390372 (= call!390372 call!390373)))

(declare-fun b!5442406 () Bool)

(assert (=> b!5442406 (= e!3371343 ((as const (Array Context!9290 Bool)) false))))

(declare-fun b!5442407 () Bool)

(assert (=> b!5442407 (= e!3371346 ((_ map or) call!390376 call!390373))))

(declare-fun b!5442408 () Bool)

(assert (=> b!5442408 (= e!3371343 call!390372)))

(declare-fun b!5442409 () Bool)

(assert (=> b!5442409 (= e!3371345 (store ((as const (Array Context!9290 Bool)) false) lt!2219035 true))))

(declare-fun b!5442410 () Bool)

(assert (=> b!5442410 (= c!949791 e!3371342)))

(declare-fun res!2317029 () Bool)

(assert (=> b!5442410 (=> (not res!2317029) (not e!3371342))))

(assert (=> b!5442410 (= res!2317029 ((_ is Concat!24106) (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(assert (=> b!5442410 (= e!3371347 e!3371346)))

(declare-fun b!5442411 () Bool)

(assert (=> b!5442411 (= e!3371347 ((_ map or) call!390377 call!390376))))

(assert (= (and d!1733360 c!949794) b!5442409))

(assert (= (and d!1733360 (not c!949794)) b!5442401))

(assert (= (and b!5442401 c!949795) b!5442411))

(assert (= (and b!5442401 (not c!949795)) b!5442410))

(assert (= (and b!5442410 res!2317029) b!5442402))

(assert (= (and b!5442410 c!949791) b!5442407))

(assert (= (and b!5442410 (not c!949791)) b!5442405))

(assert (= (and b!5442405 c!949793) b!5442404))

(assert (= (and b!5442405 (not c!949793)) b!5442403))

(assert (= (and b!5442403 c!949792) b!5442408))

(assert (= (and b!5442403 (not c!949792)) b!5442406))

(assert (= (or b!5442404 b!5442408) bm!390370))

(assert (= (or b!5442404 b!5442408) bm!390372))

(assert (= (or b!5442407 bm!390370) bm!390368))

(assert (= (or b!5442407 bm!390372) bm!390367))

(assert (= (or b!5442411 b!5442407) bm!390371))

(assert (= (or b!5442411 bm!390367) bm!390369))

(assert (=> b!5442409 m!6462472))

(declare-fun m!6462962 () Bool)

(assert (=> bm!390369 m!6462962))

(declare-fun m!6462964 () Bool)

(assert (=> b!5442402 m!6462964))

(declare-fun m!6462966 () Bool)

(assert (=> bm!390371 m!6462966))

(declare-fun m!6462968 () Bool)

(assert (=> bm!390368 m!6462968))

(assert (=> b!5441660 d!1733360))

(declare-fun d!1733362 () Bool)

(assert (=> d!1733362 (= (flatMap!988 z!1189 lambda!286366) (choose!41287 z!1189 lambda!286366))))

(declare-fun bs!1256014 () Bool)

(assert (= bs!1256014 d!1733362))

(declare-fun m!6462970 () Bool)

(assert (=> bs!1256014 m!6462970))

(assert (=> b!5441660 d!1733362))

(declare-fun d!1733364 () Bool)

(declare-fun c!949797 () Bool)

(declare-fun e!3371349 () Bool)

(assert (=> d!1733364 (= c!949797 e!3371349)))

(declare-fun res!2317030 () Bool)

(assert (=> d!1733364 (=> (not res!2317030) (not e!3371349))))

(assert (=> d!1733364 (= res!2317030 ((_ is Cons!61959) (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343))))))))))

(declare-fun e!3371350 () (InoxSet Context!9290))

(assert (=> d!1733364 (= (derivationStepZipperUp!633 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343))))) (h!68406 s!2326)) e!3371350)))

(declare-fun call!390378 () (InoxSet Context!9290))

(declare-fun b!5442412 () Bool)

(assert (=> b!5442412 (= e!3371350 ((_ map or) call!390378 (derivationStepZipperUp!633 (Context!9291 (t!375310 (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343)))))))) (h!68406 s!2326))))))

(declare-fun b!5442413 () Bool)

(assert (=> b!5442413 (= e!3371349 (nullable!5430 (h!68407 (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343)))))))))))

(declare-fun bm!390373 () Bool)

(assert (=> bm!390373 (= call!390378 (derivationStepZipperDown!709 (h!68407 (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343))))))) (Context!9291 (t!375310 (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343)))))))) (h!68406 s!2326)))))

(declare-fun b!5442414 () Bool)

(declare-fun e!3371348 () (InoxSet Context!9290))

(assert (=> b!5442414 (= e!3371348 ((as const (Array Context!9290 Bool)) false))))

(declare-fun b!5442415 () Bool)

(assert (=> b!5442415 (= e!3371350 e!3371348)))

(declare-fun c!949796 () Bool)

(assert (=> b!5442415 (= c!949796 ((_ is Cons!61959) (exprs!5145 (Context!9291 (Cons!61959 (h!68407 (exprs!5145 (h!68408 zl!343))) (t!375310 (exprs!5145 (h!68408 zl!343))))))))))

(declare-fun b!5442416 () Bool)

(assert (=> b!5442416 (= e!3371348 call!390378)))

(assert (= (and d!1733364 res!2317030) b!5442413))

(assert (= (and d!1733364 c!949797) b!5442412))

(assert (= (and d!1733364 (not c!949797)) b!5442415))

(assert (= (and b!5442415 c!949796) b!5442416))

(assert (= (and b!5442415 (not c!949796)) b!5442414))

(assert (= (or b!5442412 b!5442416) bm!390373))

(declare-fun m!6462972 () Bool)

(assert (=> b!5442412 m!6462972))

(declare-fun m!6462974 () Bool)

(assert (=> b!5442413 m!6462974))

(declare-fun m!6462976 () Bool)

(assert (=> bm!390373 m!6462976))

(assert (=> b!5441660 d!1733364))

(declare-fun d!1733366 () Bool)

(assert (=> d!1733366 (= (nullable!5430 (h!68407 (exprs!5145 (h!68408 zl!343)))) (nullableFct!1627 (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun bs!1256015 () Bool)

(assert (= bs!1256015 d!1733366))

(declare-fun m!6462978 () Bool)

(assert (=> bs!1256015 m!6462978))

(assert (=> b!5441660 d!1733366))

(assert (=> b!5441660 d!1733352))

(declare-fun d!1733368 () Bool)

(assert (=> d!1733368 (= (flatMap!988 z!1189 lambda!286366) (dynLambda!24384 lambda!286366 (h!68408 zl!343)))))

(declare-fun lt!2219151 () Unit!154586)

(assert (=> d!1733368 (= lt!2219151 (choose!41288 z!1189 (h!68408 zl!343) lambda!286366))))

(assert (=> d!1733368 (= z!1189 (store ((as const (Array Context!9290 Bool)) false) (h!68408 zl!343) true))))

(assert (=> d!1733368 (= (lemmaFlatMapOnSingletonSet!520 z!1189 (h!68408 zl!343) lambda!286366) lt!2219151)))

(declare-fun b_lambda!207459 () Bool)

(assert (=> (not b_lambda!207459) (not d!1733368)))

(declare-fun bs!1256016 () Bool)

(assert (= bs!1256016 d!1733368))

(assert (=> bs!1256016 m!6462484))

(declare-fun m!6462980 () Bool)

(assert (=> bs!1256016 m!6462980))

(declare-fun m!6462982 () Bool)

(assert (=> bs!1256016 m!6462982))

(declare-fun m!6462984 () Bool)

(assert (=> bs!1256016 m!6462984))

(assert (=> b!5441660 d!1733368))

(declare-fun d!1733370 () Bool)

(declare-fun c!949799 () Bool)

(declare-fun e!3371352 () Bool)

(assert (=> d!1733370 (= c!949799 e!3371352)))

(declare-fun res!2317031 () Bool)

(assert (=> d!1733370 (=> (not res!2317031) (not e!3371352))))

(assert (=> d!1733370 (= res!2317031 ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343))))))

(declare-fun e!3371353 () (InoxSet Context!9290))

(assert (=> d!1733370 (= (derivationStepZipperUp!633 (h!68408 zl!343) (h!68406 s!2326)) e!3371353)))

(declare-fun b!5442417 () Bool)

(declare-fun call!390379 () (InoxSet Context!9290))

(assert (=> b!5442417 (= e!3371353 ((_ map or) call!390379 (derivationStepZipperUp!633 (Context!9291 (t!375310 (exprs!5145 (h!68408 zl!343)))) (h!68406 s!2326))))))

(declare-fun b!5442418 () Bool)

(assert (=> b!5442418 (= e!3371352 (nullable!5430 (h!68407 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun bm!390374 () Bool)

(assert (=> bm!390374 (= call!390379 (derivationStepZipperDown!709 (h!68407 (exprs!5145 (h!68408 zl!343))) (Context!9291 (t!375310 (exprs!5145 (h!68408 zl!343)))) (h!68406 s!2326)))))

(declare-fun b!5442419 () Bool)

(declare-fun e!3371351 () (InoxSet Context!9290))

(assert (=> b!5442419 (= e!3371351 ((as const (Array Context!9290 Bool)) false))))

(declare-fun b!5442420 () Bool)

(assert (=> b!5442420 (= e!3371353 e!3371351)))

(declare-fun c!949798 () Bool)

(assert (=> b!5442420 (= c!949798 ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343))))))

(declare-fun b!5442421 () Bool)

(assert (=> b!5442421 (= e!3371351 call!390379)))

(assert (= (and d!1733370 res!2317031) b!5442418))

(assert (= (and d!1733370 c!949799) b!5442417))

(assert (= (and d!1733370 (not c!949799)) b!5442420))

(assert (= (and b!5442420 c!949798) b!5442421))

(assert (= (and b!5442420 (not c!949798)) b!5442419))

(assert (= (or b!5442417 b!5442421) bm!390374))

(declare-fun m!6462986 () Bool)

(assert (=> b!5442417 m!6462986))

(assert (=> b!5442418 m!6462486))

(declare-fun m!6462988 () Bool)

(assert (=> bm!390374 m!6462988))

(assert (=> b!5441660 d!1733370))

(declare-fun d!1733372 () Bool)

(assert (=> d!1733372 (= (isEmpty!33943 (t!375311 zl!343)) ((_ is Nil!61960) (t!375311 zl!343)))))

(assert (=> b!5441680 d!1733372))

(declare-fun b!5442422 () Bool)

(declare-fun res!2317033 () Bool)

(declare-fun e!3371358 () Bool)

(assert (=> b!5442422 (=> (not res!2317033) (not e!3371358))))

(declare-fun call!390380 () Bool)

(assert (=> b!5442422 (= res!2317033 (not call!390380))))

(declare-fun b!5442423 () Bool)

(declare-fun res!2317035 () Bool)

(declare-fun e!3371355 () Bool)

(assert (=> b!5442423 (=> res!2317035 e!3371355)))

(assert (=> b!5442423 (= res!2317035 e!3371358)))

(declare-fun res!2317032 () Bool)

(assert (=> b!5442423 (=> (not res!2317032) (not e!3371358))))

(declare-fun lt!2219152 () Bool)

(assert (=> b!5442423 (= res!2317032 lt!2219152)))

(declare-fun b!5442424 () Bool)

(declare-fun e!3371359 () Bool)

(assert (=> b!5442424 (= e!3371359 (= lt!2219152 call!390380))))

(declare-fun b!5442425 () Bool)

(declare-fun e!3371356 () Bool)

(assert (=> b!5442425 (= e!3371359 e!3371356)))

(declare-fun c!949800 () Bool)

(assert (=> b!5442425 (= c!949800 ((_ is EmptyLang!15261) lt!2219033))))

(declare-fun b!5442426 () Bool)

(declare-fun e!3371357 () Bool)

(declare-fun e!3371360 () Bool)

(assert (=> b!5442426 (= e!3371357 e!3371360)))

(declare-fun res!2317038 () Bool)

(assert (=> b!5442426 (=> res!2317038 e!3371360)))

(assert (=> b!5442426 (= res!2317038 call!390380)))

(declare-fun b!5442427 () Bool)

(assert (=> b!5442427 (= e!3371360 (not (= (head!11670 s!2326) (c!949589 lt!2219033))))))

(declare-fun b!5442428 () Bool)

(assert (=> b!5442428 (= e!3371356 (not lt!2219152))))

(declare-fun b!5442429 () Bool)

(declare-fun res!2317036 () Bool)

(assert (=> b!5442429 (=> res!2317036 e!3371360)))

(assert (=> b!5442429 (= res!2317036 (not (isEmpty!33945 (tail!10767 s!2326))))))

(declare-fun b!5442430 () Bool)

(declare-fun e!3371354 () Bool)

(assert (=> b!5442430 (= e!3371354 (nullable!5430 lt!2219033))))

(declare-fun b!5442431 () Bool)

(assert (=> b!5442431 (= e!3371358 (= (head!11670 s!2326) (c!949589 lt!2219033)))))

(declare-fun b!5442432 () Bool)

(declare-fun res!2317039 () Bool)

(assert (=> b!5442432 (=> res!2317039 e!3371355)))

(assert (=> b!5442432 (= res!2317039 (not ((_ is ElementMatch!15261) lt!2219033)))))

(assert (=> b!5442432 (= e!3371356 e!3371355)))

(declare-fun bm!390375 () Bool)

(assert (=> bm!390375 (= call!390380 (isEmpty!33945 s!2326))))

(declare-fun d!1733374 () Bool)

(assert (=> d!1733374 e!3371359))

(declare-fun c!949801 () Bool)

(assert (=> d!1733374 (= c!949801 ((_ is EmptyExpr!15261) lt!2219033))))

(assert (=> d!1733374 (= lt!2219152 e!3371354)))

(declare-fun c!949802 () Bool)

(assert (=> d!1733374 (= c!949802 (isEmpty!33945 s!2326))))

(assert (=> d!1733374 (validRegex!6997 lt!2219033)))

(assert (=> d!1733374 (= (matchR!7446 lt!2219033 s!2326) lt!2219152)))

(declare-fun b!5442433 () Bool)

(assert (=> b!5442433 (= e!3371354 (matchR!7446 (derivativeStep!4296 lt!2219033 (head!11670 s!2326)) (tail!10767 s!2326)))))

(declare-fun b!5442434 () Bool)

(declare-fun res!2317037 () Bool)

(assert (=> b!5442434 (=> (not res!2317037) (not e!3371358))))

(assert (=> b!5442434 (= res!2317037 (isEmpty!33945 (tail!10767 s!2326)))))

(declare-fun b!5442435 () Bool)

(assert (=> b!5442435 (= e!3371355 e!3371357)))

(declare-fun res!2317034 () Bool)

(assert (=> b!5442435 (=> (not res!2317034) (not e!3371357))))

(assert (=> b!5442435 (= res!2317034 (not lt!2219152))))

(assert (= (and d!1733374 c!949802) b!5442430))

(assert (= (and d!1733374 (not c!949802)) b!5442433))

(assert (= (and d!1733374 c!949801) b!5442424))

(assert (= (and d!1733374 (not c!949801)) b!5442425))

(assert (= (and b!5442425 c!949800) b!5442428))

(assert (= (and b!5442425 (not c!949800)) b!5442432))

(assert (= (and b!5442432 (not res!2317039)) b!5442423))

(assert (= (and b!5442423 res!2317032) b!5442422))

(assert (= (and b!5442422 res!2317033) b!5442434))

(assert (= (and b!5442434 res!2317037) b!5442431))

(assert (= (and b!5442423 (not res!2317035)) b!5442435))

(assert (= (and b!5442435 res!2317034) b!5442426))

(assert (= (and b!5442426 (not res!2317038)) b!5442429))

(assert (= (and b!5442429 (not res!2317036)) b!5442427))

(assert (= (or b!5442424 b!5442422 b!5442426) bm!390375))

(assert (=> b!5442433 m!6462576))

(assert (=> b!5442433 m!6462576))

(declare-fun m!6462990 () Bool)

(assert (=> b!5442433 m!6462990))

(assert (=> b!5442433 m!6462580))

(assert (=> b!5442433 m!6462990))

(assert (=> b!5442433 m!6462580))

(declare-fun m!6462992 () Bool)

(assert (=> b!5442433 m!6462992))

(assert (=> b!5442429 m!6462580))

(assert (=> b!5442429 m!6462580))

(assert (=> b!5442429 m!6462724))

(assert (=> b!5442431 m!6462576))

(declare-fun m!6462994 () Bool)

(assert (=> b!5442430 m!6462994))

(assert (=> d!1733374 m!6462572))

(declare-fun m!6462996 () Bool)

(assert (=> d!1733374 m!6462996))

(assert (=> b!5442427 m!6462576))

(assert (=> b!5442434 m!6462580))

(assert (=> b!5442434 m!6462580))

(assert (=> b!5442434 m!6462724))

(assert (=> bm!390375 m!6462572))

(assert (=> b!5441681 d!1733374))

(declare-fun bs!1256017 () Bool)

(declare-fun d!1733376 () Bool)

(assert (= bs!1256017 (and d!1733376 d!1733282)))

(declare-fun lambda!286437 () Int)

(assert (=> bs!1256017 (= lambda!286437 lambda!286411)))

(declare-fun bs!1256018 () Bool)

(assert (= bs!1256018 (and d!1733376 d!1733202)))

(assert (=> bs!1256018 (= lambda!286437 lambda!286379)))

(declare-fun bs!1256019 () Bool)

(assert (= bs!1256019 (and d!1733376 d!1733284)))

(assert (=> bs!1256019 (= lambda!286437 lambda!286415)))

(declare-fun bs!1256020 () Bool)

(assert (= bs!1256020 (and d!1733376 d!1733194)))

(assert (=> bs!1256020 (= lambda!286437 lambda!286370)))

(declare-fun bs!1256021 () Bool)

(assert (= bs!1256021 (and d!1733376 d!1733196)))

(assert (=> bs!1256021 (= lambda!286437 lambda!286376)))

(declare-fun bs!1256022 () Bool)

(assert (= bs!1256022 (and d!1733376 b!5441681)))

(assert (=> bs!1256022 (= lambda!286437 lambda!286367)))

(declare-fun b!5442436 () Bool)

(declare-fun e!3371366 () Regex!15261)

(assert (=> b!5442436 (= e!3371366 EmptyExpr!15261)))

(declare-fun b!5442437 () Bool)

(declare-fun e!3371364 () Bool)

(declare-fun lt!2219153 () Regex!15261)

(assert (=> b!5442437 (= e!3371364 (isEmptyExpr!1008 lt!2219153))))

(declare-fun b!5442438 () Bool)

(declare-fun e!3371363 () Bool)

(assert (=> b!5442438 (= e!3371363 e!3371364)))

(declare-fun c!949805 () Bool)

(assert (=> b!5442438 (= c!949805 (isEmpty!33942 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5442439 () Bool)

(declare-fun e!3371365 () Regex!15261)

(assert (=> b!5442439 (= e!3371365 e!3371366)))

(declare-fun c!949806 () Bool)

(assert (=> b!5442439 (= c!949806 ((_ is Cons!61959) (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5442440 () Bool)

(assert (=> b!5442440 (= e!3371365 (h!68407 (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(declare-fun b!5442441 () Bool)

(declare-fun e!3371362 () Bool)

(assert (=> b!5442441 (= e!3371362 (isEmpty!33942 (t!375310 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun b!5442443 () Bool)

(declare-fun e!3371361 () Bool)

(assert (=> b!5442443 (= e!3371361 (isConcat!531 lt!2219153))))

(declare-fun b!5442442 () Bool)

(assert (=> b!5442442 (= e!3371361 (= lt!2219153 (head!11667 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(assert (=> d!1733376 e!3371363))

(declare-fun res!2317040 () Bool)

(assert (=> d!1733376 (=> (not res!2317040) (not e!3371363))))

(assert (=> d!1733376 (= res!2317040 (validRegex!6997 lt!2219153))))

(assert (=> d!1733376 (= lt!2219153 e!3371365)))

(declare-fun c!949803 () Bool)

(assert (=> d!1733376 (= c!949803 e!3371362)))

(declare-fun res!2317041 () Bool)

(assert (=> d!1733376 (=> (not res!2317041) (not e!3371362))))

(assert (=> d!1733376 (= res!2317041 ((_ is Cons!61959) (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(assert (=> d!1733376 (forall!14576 (t!375310 (exprs!5145 (h!68408 zl!343))) lambda!286437)))

(assert (=> d!1733376 (= (generalisedConcat!930 (t!375310 (exprs!5145 (h!68408 zl!343)))) lt!2219153)))

(declare-fun b!5442444 () Bool)

(assert (=> b!5442444 (= e!3371364 e!3371361)))

(declare-fun c!949804 () Bool)

(assert (=> b!5442444 (= c!949804 (isEmpty!33942 (tail!10764 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun b!5442445 () Bool)

(assert (=> b!5442445 (= e!3371366 (Concat!24106 (h!68407 (t!375310 (exprs!5145 (h!68408 zl!343)))) (generalisedConcat!930 (t!375310 (t!375310 (exprs!5145 (h!68408 zl!343)))))))))

(assert (= (and d!1733376 res!2317041) b!5442441))

(assert (= (and d!1733376 c!949803) b!5442440))

(assert (= (and d!1733376 (not c!949803)) b!5442439))

(assert (= (and b!5442439 c!949806) b!5442445))

(assert (= (and b!5442439 (not c!949806)) b!5442436))

(assert (= (and d!1733376 res!2317040) b!5442438))

(assert (= (and b!5442438 c!949805) b!5442437))

(assert (= (and b!5442438 (not c!949805)) b!5442444))

(assert (= (and b!5442444 c!949804) b!5442442))

(assert (= (and b!5442444 (not c!949804)) b!5442443))

(assert (=> b!5442438 m!6462462))

(declare-fun m!6462998 () Bool)

(assert (=> b!5442437 m!6462998))

(declare-fun m!6463000 () Bool)

(assert (=> b!5442441 m!6463000))

(declare-fun m!6463002 () Bool)

(assert (=> b!5442445 m!6463002))

(declare-fun m!6463004 () Bool)

(assert (=> b!5442443 m!6463004))

(declare-fun m!6463006 () Bool)

(assert (=> b!5442444 m!6463006))

(assert (=> b!5442444 m!6463006))

(declare-fun m!6463008 () Bool)

(assert (=> b!5442444 m!6463008))

(declare-fun m!6463010 () Bool)

(assert (=> d!1733376 m!6463010))

(declare-fun m!6463012 () Bool)

(assert (=> d!1733376 m!6463012))

(declare-fun m!6463014 () Bool)

(assert (=> b!5442442 m!6463014))

(assert (=> b!5441681 d!1733376))

(declare-fun d!1733378 () Bool)

(declare-fun c!949807 () Bool)

(assert (=> d!1733378 (= c!949807 (isEmpty!33945 s!2326))))

(declare-fun e!3371367 () Bool)

(assert (=> d!1733378 (= (matchZipper!1505 lt!2219047 s!2326) e!3371367)))

(declare-fun b!5442446 () Bool)

(assert (=> b!5442446 (= e!3371367 (nullableZipper!1476 lt!2219047))))

(declare-fun b!5442447 () Bool)

(assert (=> b!5442447 (= e!3371367 (matchZipper!1505 (derivationStepZipper!1490 lt!2219047 (head!11670 s!2326)) (tail!10767 s!2326)))))

(assert (= (and d!1733378 c!949807) b!5442446))

(assert (= (and d!1733378 (not c!949807)) b!5442447))

(assert (=> d!1733378 m!6462572))

(declare-fun m!6463016 () Bool)

(assert (=> b!5442446 m!6463016))

(assert (=> b!5442447 m!6462576))

(assert (=> b!5442447 m!6462576))

(declare-fun m!6463018 () Bool)

(assert (=> b!5442447 m!6463018))

(assert (=> b!5442447 m!6462580))

(assert (=> b!5442447 m!6463018))

(assert (=> b!5442447 m!6462580))

(declare-fun m!6463020 () Bool)

(assert (=> b!5442447 m!6463020))

(assert (=> b!5441681 d!1733378))

(declare-fun d!1733380 () Bool)

(assert (=> d!1733380 (= (matchR!7446 lt!2219033 s!2326) (matchZipper!1505 lt!2219047 s!2326))))

(declare-fun lt!2219156 () Unit!154586)

(declare-fun choose!41292 ((InoxSet Context!9290) List!62084 Regex!15261 List!62082) Unit!154586)

(assert (=> d!1733380 (= lt!2219156 (choose!41292 lt!2219047 (Cons!61960 lt!2219035 Nil!61960) lt!2219033 s!2326))))

(assert (=> d!1733380 (validRegex!6997 lt!2219033)))

(assert (=> d!1733380 (= (theoremZipperRegexEquiv!549 lt!2219047 (Cons!61960 lt!2219035 Nil!61960) lt!2219033 s!2326) lt!2219156)))

(declare-fun bs!1256023 () Bool)

(assert (= bs!1256023 d!1733380))

(assert (=> bs!1256023 m!6462424))

(assert (=> bs!1256023 m!6462416))

(declare-fun m!6463022 () Bool)

(assert (=> bs!1256023 m!6463022))

(assert (=> bs!1256023 m!6462996))

(assert (=> b!5441681 d!1733380))

(declare-fun d!1733382 () Bool)

(declare-fun res!2317046 () Bool)

(declare-fun e!3371372 () Bool)

(assert (=> d!1733382 (=> res!2317046 e!3371372)))

(assert (=> d!1733382 (= res!2317046 ((_ is Nil!61959) (t!375310 (exprs!5145 (h!68408 zl!343)))))))

(assert (=> d!1733382 (= (forall!14576 (t!375310 (exprs!5145 (h!68408 zl!343))) lambda!286367) e!3371372)))

(declare-fun b!5442452 () Bool)

(declare-fun e!3371373 () Bool)

(assert (=> b!5442452 (= e!3371372 e!3371373)))

(declare-fun res!2317047 () Bool)

(assert (=> b!5442452 (=> (not res!2317047) (not e!3371373))))

(declare-fun dynLambda!24385 (Int Regex!15261) Bool)

(assert (=> b!5442452 (= res!2317047 (dynLambda!24385 lambda!286367 (h!68407 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun b!5442453 () Bool)

(assert (=> b!5442453 (= e!3371373 (forall!14576 (t!375310 (t!375310 (exprs!5145 (h!68408 zl!343)))) lambda!286367))))

(assert (= (and d!1733382 (not res!2317046)) b!5442452))

(assert (= (and b!5442452 res!2317047) b!5442453))

(declare-fun b_lambda!207461 () Bool)

(assert (=> (not b_lambda!207461) (not b!5442452)))

(declare-fun m!6463024 () Bool)

(assert (=> b!5442452 m!6463024))

(declare-fun m!6463026 () Bool)

(assert (=> b!5442453 m!6463026))

(assert (=> b!5441681 d!1733382))

(declare-fun bs!1256024 () Bool)

(declare-fun b!5442457 () Bool)

(assert (= bs!1256024 (and b!5442457 d!1733308)))

(declare-fun lambda!286438 () Int)

(assert (=> bs!1256024 (not (= lambda!286438 lambda!286427))))

(declare-fun bs!1256025 () Bool)

(assert (= bs!1256025 (and b!5442457 d!1733326)))

(assert (=> bs!1256025 (not (= lambda!286438 lambda!286435))))

(declare-fun bs!1256026 () Bool)

(assert (= bs!1256026 (and b!5442457 b!5441683)))

(assert (=> bs!1256026 (not (= lambda!286438 lambda!286365))))

(declare-fun bs!1256027 () Bool)

(assert (= bs!1256027 (and b!5442457 b!5441941)))

(assert (=> bs!1256027 (= (and (= (reg!15590 (regOne!31034 r!7292)) (reg!15590 r!7292)) (= (regOne!31034 r!7292) r!7292)) (= lambda!286438 lambda!286397))))

(assert (=> bs!1256025 (not (= lambda!286438 lambda!286434))))

(declare-fun bs!1256028 () Bool)

(assert (= bs!1256028 (and b!5442457 b!5441942)))

(assert (=> bs!1256028 (not (= lambda!286438 lambda!286399))))

(assert (=> bs!1256026 (not (= lambda!286438 lambda!286364))))

(assert (=> b!5442457 true))

(assert (=> b!5442457 true))

(declare-fun bs!1256029 () Bool)

(declare-fun b!5442458 () Bool)

(assert (= bs!1256029 (and b!5442458 d!1733308)))

(declare-fun lambda!286439 () Int)

(assert (=> bs!1256029 (not (= lambda!286439 lambda!286427))))

(declare-fun bs!1256030 () Bool)

(assert (= bs!1256030 (and b!5442458 d!1733326)))

(assert (=> bs!1256030 (= (and (= (regOne!31034 (regOne!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regOne!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286439 lambda!286435))))

(declare-fun bs!1256031 () Bool)

(assert (= bs!1256031 (and b!5442458 b!5442457)))

(assert (=> bs!1256031 (not (= lambda!286439 lambda!286438))))

(declare-fun bs!1256032 () Bool)

(assert (= bs!1256032 (and b!5442458 b!5441683)))

(assert (=> bs!1256032 (= (and (= (regOne!31034 (regOne!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regOne!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286439 lambda!286365))))

(declare-fun bs!1256033 () Bool)

(assert (= bs!1256033 (and b!5442458 b!5441941)))

(assert (=> bs!1256033 (not (= lambda!286439 lambda!286397))))

(assert (=> bs!1256030 (not (= lambda!286439 lambda!286434))))

(declare-fun bs!1256034 () Bool)

(assert (= bs!1256034 (and b!5442458 b!5441942)))

(assert (=> bs!1256034 (= (and (= (regOne!31034 (regOne!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regOne!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286439 lambda!286399))))

(assert (=> bs!1256032 (not (= lambda!286439 lambda!286364))))

(assert (=> b!5442458 true))

(assert (=> b!5442458 true))

(declare-fun b!5442454 () Bool)

(declare-fun e!3371375 () Bool)

(declare-fun e!3371380 () Bool)

(assert (=> b!5442454 (= e!3371375 e!3371380)))

(declare-fun c!949808 () Bool)

(assert (=> b!5442454 (= c!949808 ((_ is Star!15261) (regOne!31034 r!7292)))))

(declare-fun b!5442455 () Bool)

(declare-fun e!3371377 () Bool)

(declare-fun call!390381 () Bool)

(assert (=> b!5442455 (= e!3371377 call!390381)))

(declare-fun bm!390376 () Bool)

(assert (=> bm!390376 (= call!390381 (isEmpty!33945 s!2326))))

(declare-fun b!5442456 () Bool)

(declare-fun res!2317049 () Bool)

(declare-fun e!3371379 () Bool)

(assert (=> b!5442456 (=> res!2317049 e!3371379)))

(assert (=> b!5442456 (= res!2317049 call!390381)))

(assert (=> b!5442456 (= e!3371380 e!3371379)))

(declare-fun call!390382 () Bool)

(assert (=> b!5442457 (= e!3371379 call!390382)))

(assert (=> b!5442458 (= e!3371380 call!390382)))

(declare-fun b!5442459 () Bool)

(declare-fun e!3371378 () Bool)

(assert (=> b!5442459 (= e!3371378 (matchRSpec!2364 (regTwo!31035 (regOne!31034 r!7292)) s!2326))))

(declare-fun d!1733384 () Bool)

(declare-fun c!949809 () Bool)

(assert (=> d!1733384 (= c!949809 ((_ is EmptyExpr!15261) (regOne!31034 r!7292)))))

(assert (=> d!1733384 (= (matchRSpec!2364 (regOne!31034 r!7292) s!2326) e!3371377)))

(declare-fun b!5442460 () Bool)

(declare-fun c!949810 () Bool)

(assert (=> b!5442460 (= c!949810 ((_ is ElementMatch!15261) (regOne!31034 r!7292)))))

(declare-fun e!3371376 () Bool)

(declare-fun e!3371374 () Bool)

(assert (=> b!5442460 (= e!3371376 e!3371374)))

(declare-fun b!5442461 () Bool)

(declare-fun c!949811 () Bool)

(assert (=> b!5442461 (= c!949811 ((_ is Union!15261) (regOne!31034 r!7292)))))

(assert (=> b!5442461 (= e!3371374 e!3371375)))

(declare-fun b!5442462 () Bool)

(assert (=> b!5442462 (= e!3371374 (= s!2326 (Cons!61958 (c!949589 (regOne!31034 r!7292)) Nil!61958)))))

(declare-fun b!5442463 () Bool)

(assert (=> b!5442463 (= e!3371377 e!3371376)))

(declare-fun res!2317050 () Bool)

(assert (=> b!5442463 (= res!2317050 (not ((_ is EmptyLang!15261) (regOne!31034 r!7292))))))

(assert (=> b!5442463 (=> (not res!2317050) (not e!3371376))))

(declare-fun bm!390377 () Bool)

(assert (=> bm!390377 (= call!390382 (Exists!2442 (ite c!949808 lambda!286438 lambda!286439)))))

(declare-fun b!5442464 () Bool)

(assert (=> b!5442464 (= e!3371375 e!3371378)))

(declare-fun res!2317048 () Bool)

(assert (=> b!5442464 (= res!2317048 (matchRSpec!2364 (regOne!31035 (regOne!31034 r!7292)) s!2326))))

(assert (=> b!5442464 (=> res!2317048 e!3371378)))

(assert (= (and d!1733384 c!949809) b!5442455))

(assert (= (and d!1733384 (not c!949809)) b!5442463))

(assert (= (and b!5442463 res!2317050) b!5442460))

(assert (= (and b!5442460 c!949810) b!5442462))

(assert (= (and b!5442460 (not c!949810)) b!5442461))

(assert (= (and b!5442461 c!949811) b!5442464))

(assert (= (and b!5442461 (not c!949811)) b!5442454))

(assert (= (and b!5442464 (not res!2317048)) b!5442459))

(assert (= (and b!5442454 c!949808) b!5442456))

(assert (= (and b!5442454 (not c!949808)) b!5442458))

(assert (= (and b!5442456 (not res!2317049)) b!5442457))

(assert (= (or b!5442457 b!5442458) bm!390377))

(assert (= (or b!5442455 b!5442456) bm!390376))

(assert (=> bm!390376 m!6462572))

(declare-fun m!6463028 () Bool)

(assert (=> b!5442459 m!6463028))

(declare-fun m!6463030 () Bool)

(assert (=> bm!390377 m!6463030))

(declare-fun m!6463032 () Bool)

(assert (=> b!5442464 m!6463032))

(assert (=> b!5441670 d!1733384))

(declare-fun d!1733386 () Bool)

(assert (=> d!1733386 (= (matchR!7446 (regOne!31034 r!7292) s!2326) (matchRSpec!2364 (regOne!31034 r!7292) s!2326))))

(declare-fun lt!2219157 () Unit!154586)

(assert (=> d!1733386 (= lt!2219157 (choose!41281 (regOne!31034 r!7292) s!2326))))

(assert (=> d!1733386 (validRegex!6997 (regOne!31034 r!7292))))

(assert (=> d!1733386 (= (mainMatchTheorem!2364 (regOne!31034 r!7292) s!2326) lt!2219157)))

(declare-fun bs!1256035 () Bool)

(assert (= bs!1256035 d!1733386))

(assert (=> bs!1256035 m!6462450))

(assert (=> bs!1256035 m!6462452))

(declare-fun m!6463034 () Bool)

(assert (=> bs!1256035 m!6463034))

(assert (=> bs!1256035 m!6462842))

(assert (=> b!5441670 d!1733386))

(declare-fun b!5442465 () Bool)

(declare-fun res!2317052 () Bool)

(declare-fun e!3371385 () Bool)

(assert (=> b!5442465 (=> (not res!2317052) (not e!3371385))))

(declare-fun call!390383 () Bool)

(assert (=> b!5442465 (= res!2317052 (not call!390383))))

(declare-fun b!5442466 () Bool)

(declare-fun res!2317054 () Bool)

(declare-fun e!3371382 () Bool)

(assert (=> b!5442466 (=> res!2317054 e!3371382)))

(assert (=> b!5442466 (= res!2317054 e!3371385)))

(declare-fun res!2317051 () Bool)

(assert (=> b!5442466 (=> (not res!2317051) (not e!3371385))))

(declare-fun lt!2219158 () Bool)

(assert (=> b!5442466 (= res!2317051 lt!2219158)))

(declare-fun b!5442467 () Bool)

(declare-fun e!3371386 () Bool)

(assert (=> b!5442467 (= e!3371386 (= lt!2219158 call!390383))))

(declare-fun b!5442468 () Bool)

(declare-fun e!3371383 () Bool)

(assert (=> b!5442468 (= e!3371386 e!3371383)))

(declare-fun c!949812 () Bool)

(assert (=> b!5442468 (= c!949812 ((_ is EmptyLang!15261) (regOne!31034 r!7292)))))

(declare-fun b!5442469 () Bool)

(declare-fun e!3371384 () Bool)

(declare-fun e!3371387 () Bool)

(assert (=> b!5442469 (= e!3371384 e!3371387)))

(declare-fun res!2317057 () Bool)

(assert (=> b!5442469 (=> res!2317057 e!3371387)))

(assert (=> b!5442469 (= res!2317057 call!390383)))

(declare-fun b!5442470 () Bool)

(assert (=> b!5442470 (= e!3371387 (not (= (head!11670 s!2326) (c!949589 (regOne!31034 r!7292)))))))

(declare-fun b!5442471 () Bool)

(assert (=> b!5442471 (= e!3371383 (not lt!2219158))))

(declare-fun b!5442472 () Bool)

(declare-fun res!2317055 () Bool)

(assert (=> b!5442472 (=> res!2317055 e!3371387)))

(assert (=> b!5442472 (= res!2317055 (not (isEmpty!33945 (tail!10767 s!2326))))))

(declare-fun b!5442473 () Bool)

(declare-fun e!3371381 () Bool)

(assert (=> b!5442473 (= e!3371381 (nullable!5430 (regOne!31034 r!7292)))))

(declare-fun b!5442474 () Bool)

(assert (=> b!5442474 (= e!3371385 (= (head!11670 s!2326) (c!949589 (regOne!31034 r!7292))))))

(declare-fun b!5442475 () Bool)

(declare-fun res!2317058 () Bool)

(assert (=> b!5442475 (=> res!2317058 e!3371382)))

(assert (=> b!5442475 (= res!2317058 (not ((_ is ElementMatch!15261) (regOne!31034 r!7292))))))

(assert (=> b!5442475 (= e!3371383 e!3371382)))

(declare-fun bm!390378 () Bool)

(assert (=> bm!390378 (= call!390383 (isEmpty!33945 s!2326))))

(declare-fun d!1733388 () Bool)

(assert (=> d!1733388 e!3371386))

(declare-fun c!949813 () Bool)

(assert (=> d!1733388 (= c!949813 ((_ is EmptyExpr!15261) (regOne!31034 r!7292)))))

(assert (=> d!1733388 (= lt!2219158 e!3371381)))

(declare-fun c!949814 () Bool)

(assert (=> d!1733388 (= c!949814 (isEmpty!33945 s!2326))))

(assert (=> d!1733388 (validRegex!6997 (regOne!31034 r!7292))))

(assert (=> d!1733388 (= (matchR!7446 (regOne!31034 r!7292) s!2326) lt!2219158)))

(declare-fun b!5442476 () Bool)

(assert (=> b!5442476 (= e!3371381 (matchR!7446 (derivativeStep!4296 (regOne!31034 r!7292) (head!11670 s!2326)) (tail!10767 s!2326)))))

(declare-fun b!5442477 () Bool)

(declare-fun res!2317056 () Bool)

(assert (=> b!5442477 (=> (not res!2317056) (not e!3371385))))

(assert (=> b!5442477 (= res!2317056 (isEmpty!33945 (tail!10767 s!2326)))))

(declare-fun b!5442478 () Bool)

(assert (=> b!5442478 (= e!3371382 e!3371384)))

(declare-fun res!2317053 () Bool)

(assert (=> b!5442478 (=> (not res!2317053) (not e!3371384))))

(assert (=> b!5442478 (= res!2317053 (not lt!2219158))))

(assert (= (and d!1733388 c!949814) b!5442473))

(assert (= (and d!1733388 (not c!949814)) b!5442476))

(assert (= (and d!1733388 c!949813) b!5442467))

(assert (= (and d!1733388 (not c!949813)) b!5442468))

(assert (= (and b!5442468 c!949812) b!5442471))

(assert (= (and b!5442468 (not c!949812)) b!5442475))

(assert (= (and b!5442475 (not res!2317058)) b!5442466))

(assert (= (and b!5442466 res!2317051) b!5442465))

(assert (= (and b!5442465 res!2317052) b!5442477))

(assert (= (and b!5442477 res!2317056) b!5442474))

(assert (= (and b!5442466 (not res!2317054)) b!5442478))

(assert (= (and b!5442478 res!2317053) b!5442469))

(assert (= (and b!5442469 (not res!2317057)) b!5442472))

(assert (= (and b!5442472 (not res!2317055)) b!5442470))

(assert (= (or b!5442467 b!5442465 b!5442469) bm!390378))

(assert (=> b!5442476 m!6462576))

(assert (=> b!5442476 m!6462576))

(declare-fun m!6463036 () Bool)

(assert (=> b!5442476 m!6463036))

(assert (=> b!5442476 m!6462580))

(assert (=> b!5442476 m!6463036))

(assert (=> b!5442476 m!6462580))

(declare-fun m!6463038 () Bool)

(assert (=> b!5442476 m!6463038))

(assert (=> b!5442472 m!6462580))

(assert (=> b!5442472 m!6462580))

(assert (=> b!5442472 m!6462724))

(assert (=> b!5442474 m!6462576))

(declare-fun m!6463040 () Bool)

(assert (=> b!5442473 m!6463040))

(assert (=> d!1733388 m!6462572))

(assert (=> d!1733388 m!6462842))

(assert (=> b!5442470 m!6462576))

(assert (=> b!5442477 m!6462580))

(assert (=> b!5442477 m!6462580))

(assert (=> b!5442477 m!6462724))

(assert (=> bm!390378 m!6462572))

(assert (=> b!5441670 d!1733388))

(declare-fun bs!1256036 () Bool)

(declare-fun b!5442482 () Bool)

(assert (= bs!1256036 (and b!5442482 d!1733308)))

(declare-fun lambda!286440 () Int)

(assert (=> bs!1256036 (not (= lambda!286440 lambda!286427))))

(declare-fun bs!1256037 () Bool)

(assert (= bs!1256037 (and b!5442482 d!1733326)))

(assert (=> bs!1256037 (not (= lambda!286440 lambda!286435))))

(declare-fun bs!1256038 () Bool)

(assert (= bs!1256038 (and b!5442482 b!5442457)))

(assert (=> bs!1256038 (= (and (= (reg!15590 (regTwo!31034 r!7292)) (reg!15590 (regOne!31034 r!7292))) (= (regTwo!31034 r!7292) (regOne!31034 r!7292))) (= lambda!286440 lambda!286438))))

(declare-fun bs!1256039 () Bool)

(assert (= bs!1256039 (and b!5442482 b!5441683)))

(assert (=> bs!1256039 (not (= lambda!286440 lambda!286365))))

(declare-fun bs!1256040 () Bool)

(assert (= bs!1256040 (and b!5442482 b!5441941)))

(assert (=> bs!1256040 (= (and (= (reg!15590 (regTwo!31034 r!7292)) (reg!15590 r!7292)) (= (regTwo!31034 r!7292) r!7292)) (= lambda!286440 lambda!286397))))

(declare-fun bs!1256041 () Bool)

(assert (= bs!1256041 (and b!5442482 b!5442458)))

(assert (=> bs!1256041 (not (= lambda!286440 lambda!286439))))

(assert (=> bs!1256037 (not (= lambda!286440 lambda!286434))))

(declare-fun bs!1256042 () Bool)

(assert (= bs!1256042 (and b!5442482 b!5441942)))

(assert (=> bs!1256042 (not (= lambda!286440 lambda!286399))))

(assert (=> bs!1256039 (not (= lambda!286440 lambda!286364))))

(assert (=> b!5442482 true))

(assert (=> b!5442482 true))

(declare-fun bs!1256043 () Bool)

(declare-fun b!5442483 () Bool)

(assert (= bs!1256043 (and b!5442483 d!1733308)))

(declare-fun lambda!286441 () Int)

(assert (=> bs!1256043 (not (= lambda!286441 lambda!286427))))

(declare-fun bs!1256044 () Bool)

(assert (= bs!1256044 (and b!5442483 d!1733326)))

(assert (=> bs!1256044 (= (and (= (regOne!31034 (regTwo!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regTwo!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286441 lambda!286435))))

(declare-fun bs!1256045 () Bool)

(assert (= bs!1256045 (and b!5442483 b!5442457)))

(assert (=> bs!1256045 (not (= lambda!286441 lambda!286438))))

(declare-fun bs!1256046 () Bool)

(assert (= bs!1256046 (and b!5442483 b!5441683)))

(assert (=> bs!1256046 (= (and (= (regOne!31034 (regTwo!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regTwo!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286441 lambda!286365))))

(declare-fun bs!1256047 () Bool)

(assert (= bs!1256047 (and b!5442483 b!5441941)))

(assert (=> bs!1256047 (not (= lambda!286441 lambda!286397))))

(declare-fun bs!1256048 () Bool)

(assert (= bs!1256048 (and b!5442483 b!5442458)))

(assert (=> bs!1256048 (= (and (= (regOne!31034 (regTwo!31034 r!7292)) (regOne!31034 (regOne!31034 r!7292))) (= (regTwo!31034 (regTwo!31034 r!7292)) (regTwo!31034 (regOne!31034 r!7292)))) (= lambda!286441 lambda!286439))))

(assert (=> bs!1256044 (not (= lambda!286441 lambda!286434))))

(declare-fun bs!1256049 () Bool)

(assert (= bs!1256049 (and b!5442483 b!5442482)))

(assert (=> bs!1256049 (not (= lambda!286441 lambda!286440))))

(declare-fun bs!1256050 () Bool)

(assert (= bs!1256050 (and b!5442483 b!5441942)))

(assert (=> bs!1256050 (= (and (= (regOne!31034 (regTwo!31034 r!7292)) (regOne!31034 r!7292)) (= (regTwo!31034 (regTwo!31034 r!7292)) (regTwo!31034 r!7292))) (= lambda!286441 lambda!286399))))

(assert (=> bs!1256046 (not (= lambda!286441 lambda!286364))))

(assert (=> b!5442483 true))

(assert (=> b!5442483 true))

(declare-fun b!5442479 () Bool)

(declare-fun e!3371389 () Bool)

(declare-fun e!3371394 () Bool)

(assert (=> b!5442479 (= e!3371389 e!3371394)))

(declare-fun c!949815 () Bool)

(assert (=> b!5442479 (= c!949815 ((_ is Star!15261) (regTwo!31034 r!7292)))))

(declare-fun b!5442480 () Bool)

(declare-fun e!3371391 () Bool)

(declare-fun call!390384 () Bool)

(assert (=> b!5442480 (= e!3371391 call!390384)))

(declare-fun bm!390379 () Bool)

(assert (=> bm!390379 (= call!390384 (isEmpty!33945 s!2326))))

(declare-fun b!5442481 () Bool)

(declare-fun res!2317060 () Bool)

(declare-fun e!3371393 () Bool)

(assert (=> b!5442481 (=> res!2317060 e!3371393)))

(assert (=> b!5442481 (= res!2317060 call!390384)))

(assert (=> b!5442481 (= e!3371394 e!3371393)))

(declare-fun call!390385 () Bool)

(assert (=> b!5442482 (= e!3371393 call!390385)))

(assert (=> b!5442483 (= e!3371394 call!390385)))

(declare-fun b!5442484 () Bool)

(declare-fun e!3371392 () Bool)

(assert (=> b!5442484 (= e!3371392 (matchRSpec!2364 (regTwo!31035 (regTwo!31034 r!7292)) s!2326))))

(declare-fun d!1733390 () Bool)

(declare-fun c!949816 () Bool)

(assert (=> d!1733390 (= c!949816 ((_ is EmptyExpr!15261) (regTwo!31034 r!7292)))))

(assert (=> d!1733390 (= (matchRSpec!2364 (regTwo!31034 r!7292) s!2326) e!3371391)))

(declare-fun b!5442485 () Bool)

(declare-fun c!949817 () Bool)

(assert (=> b!5442485 (= c!949817 ((_ is ElementMatch!15261) (regTwo!31034 r!7292)))))

(declare-fun e!3371390 () Bool)

(declare-fun e!3371388 () Bool)

(assert (=> b!5442485 (= e!3371390 e!3371388)))

(declare-fun b!5442486 () Bool)

(declare-fun c!949818 () Bool)

(assert (=> b!5442486 (= c!949818 ((_ is Union!15261) (regTwo!31034 r!7292)))))

(assert (=> b!5442486 (= e!3371388 e!3371389)))

(declare-fun b!5442487 () Bool)

(assert (=> b!5442487 (= e!3371388 (= s!2326 (Cons!61958 (c!949589 (regTwo!31034 r!7292)) Nil!61958)))))

(declare-fun b!5442488 () Bool)

(assert (=> b!5442488 (= e!3371391 e!3371390)))

(declare-fun res!2317061 () Bool)

(assert (=> b!5442488 (= res!2317061 (not ((_ is EmptyLang!15261) (regTwo!31034 r!7292))))))

(assert (=> b!5442488 (=> (not res!2317061) (not e!3371390))))

(declare-fun bm!390380 () Bool)

(assert (=> bm!390380 (= call!390385 (Exists!2442 (ite c!949815 lambda!286440 lambda!286441)))))

(declare-fun b!5442489 () Bool)

(assert (=> b!5442489 (= e!3371389 e!3371392)))

(declare-fun res!2317059 () Bool)

(assert (=> b!5442489 (= res!2317059 (matchRSpec!2364 (regOne!31035 (regTwo!31034 r!7292)) s!2326))))

(assert (=> b!5442489 (=> res!2317059 e!3371392)))

(assert (= (and d!1733390 c!949816) b!5442480))

(assert (= (and d!1733390 (not c!949816)) b!5442488))

(assert (= (and b!5442488 res!2317061) b!5442485))

(assert (= (and b!5442485 c!949817) b!5442487))

(assert (= (and b!5442485 (not c!949817)) b!5442486))

(assert (= (and b!5442486 c!949818) b!5442489))

(assert (= (and b!5442486 (not c!949818)) b!5442479))

(assert (= (and b!5442489 (not res!2317059)) b!5442484))

(assert (= (and b!5442479 c!949815) b!5442481))

(assert (= (and b!5442479 (not c!949815)) b!5442483))

(assert (= (and b!5442481 (not res!2317060)) b!5442482))

(assert (= (or b!5442482 b!5442483) bm!390380))

(assert (= (or b!5442480 b!5442481) bm!390379))

(assert (=> bm!390379 m!6462572))

(declare-fun m!6463042 () Bool)

(assert (=> b!5442484 m!6463042))

(declare-fun m!6463044 () Bool)

(assert (=> bm!390380 m!6463044))

(declare-fun m!6463046 () Bool)

(assert (=> b!5442489 m!6463046))

(assert (=> b!5441670 d!1733390))

(declare-fun b!5442490 () Bool)

(declare-fun res!2317063 () Bool)

(declare-fun e!3371399 () Bool)

(assert (=> b!5442490 (=> (not res!2317063) (not e!3371399))))

(declare-fun call!390386 () Bool)

(assert (=> b!5442490 (= res!2317063 (not call!390386))))

(declare-fun b!5442491 () Bool)

(declare-fun res!2317065 () Bool)

(declare-fun e!3371396 () Bool)

(assert (=> b!5442491 (=> res!2317065 e!3371396)))

(assert (=> b!5442491 (= res!2317065 e!3371399)))

(declare-fun res!2317062 () Bool)

(assert (=> b!5442491 (=> (not res!2317062) (not e!3371399))))

(declare-fun lt!2219159 () Bool)

(assert (=> b!5442491 (= res!2317062 lt!2219159)))

(declare-fun b!5442492 () Bool)

(declare-fun e!3371400 () Bool)

(assert (=> b!5442492 (= e!3371400 (= lt!2219159 call!390386))))

(declare-fun b!5442493 () Bool)

(declare-fun e!3371397 () Bool)

(assert (=> b!5442493 (= e!3371400 e!3371397)))

(declare-fun c!949819 () Bool)

(assert (=> b!5442493 (= c!949819 ((_ is EmptyLang!15261) (regTwo!31034 r!7292)))))

(declare-fun b!5442494 () Bool)

(declare-fun e!3371398 () Bool)

(declare-fun e!3371401 () Bool)

(assert (=> b!5442494 (= e!3371398 e!3371401)))

(declare-fun res!2317068 () Bool)

(assert (=> b!5442494 (=> res!2317068 e!3371401)))

(assert (=> b!5442494 (= res!2317068 call!390386)))

(declare-fun b!5442495 () Bool)

(assert (=> b!5442495 (= e!3371401 (not (= (head!11670 s!2326) (c!949589 (regTwo!31034 r!7292)))))))

(declare-fun b!5442496 () Bool)

(assert (=> b!5442496 (= e!3371397 (not lt!2219159))))

(declare-fun b!5442497 () Bool)

(declare-fun res!2317066 () Bool)

(assert (=> b!5442497 (=> res!2317066 e!3371401)))

(assert (=> b!5442497 (= res!2317066 (not (isEmpty!33945 (tail!10767 s!2326))))))

(declare-fun b!5442498 () Bool)

(declare-fun e!3371395 () Bool)

(assert (=> b!5442498 (= e!3371395 (nullable!5430 (regTwo!31034 r!7292)))))

(declare-fun b!5442499 () Bool)

(assert (=> b!5442499 (= e!3371399 (= (head!11670 s!2326) (c!949589 (regTwo!31034 r!7292))))))

(declare-fun b!5442500 () Bool)

(declare-fun res!2317069 () Bool)

(assert (=> b!5442500 (=> res!2317069 e!3371396)))

(assert (=> b!5442500 (= res!2317069 (not ((_ is ElementMatch!15261) (regTwo!31034 r!7292))))))

(assert (=> b!5442500 (= e!3371397 e!3371396)))

(declare-fun bm!390381 () Bool)

(assert (=> bm!390381 (= call!390386 (isEmpty!33945 s!2326))))

(declare-fun d!1733392 () Bool)

(assert (=> d!1733392 e!3371400))

(declare-fun c!949820 () Bool)

(assert (=> d!1733392 (= c!949820 ((_ is EmptyExpr!15261) (regTwo!31034 r!7292)))))

(assert (=> d!1733392 (= lt!2219159 e!3371395)))

(declare-fun c!949821 () Bool)

(assert (=> d!1733392 (= c!949821 (isEmpty!33945 s!2326))))

(assert (=> d!1733392 (validRegex!6997 (regTwo!31034 r!7292))))

(assert (=> d!1733392 (= (matchR!7446 (regTwo!31034 r!7292) s!2326) lt!2219159)))

(declare-fun b!5442501 () Bool)

(assert (=> b!5442501 (= e!3371395 (matchR!7446 (derivativeStep!4296 (regTwo!31034 r!7292) (head!11670 s!2326)) (tail!10767 s!2326)))))

(declare-fun b!5442502 () Bool)

(declare-fun res!2317067 () Bool)

(assert (=> b!5442502 (=> (not res!2317067) (not e!3371399))))

(assert (=> b!5442502 (= res!2317067 (isEmpty!33945 (tail!10767 s!2326)))))

(declare-fun b!5442503 () Bool)

(assert (=> b!5442503 (= e!3371396 e!3371398)))

(declare-fun res!2317064 () Bool)

(assert (=> b!5442503 (=> (not res!2317064) (not e!3371398))))

(assert (=> b!5442503 (= res!2317064 (not lt!2219159))))

(assert (= (and d!1733392 c!949821) b!5442498))

(assert (= (and d!1733392 (not c!949821)) b!5442501))

(assert (= (and d!1733392 c!949820) b!5442492))

(assert (= (and d!1733392 (not c!949820)) b!5442493))

(assert (= (and b!5442493 c!949819) b!5442496))

(assert (= (and b!5442493 (not c!949819)) b!5442500))

(assert (= (and b!5442500 (not res!2317069)) b!5442491))

(assert (= (and b!5442491 res!2317062) b!5442490))

(assert (= (and b!5442490 res!2317063) b!5442502))

(assert (= (and b!5442502 res!2317067) b!5442499))

(assert (= (and b!5442491 (not res!2317065)) b!5442503))

(assert (= (and b!5442503 res!2317064) b!5442494))

(assert (= (and b!5442494 (not res!2317068)) b!5442497))

(assert (= (and b!5442497 (not res!2317066)) b!5442495))

(assert (= (or b!5442492 b!5442490 b!5442494) bm!390381))

(assert (=> b!5442501 m!6462576))

(assert (=> b!5442501 m!6462576))

(declare-fun m!6463048 () Bool)

(assert (=> b!5442501 m!6463048))

(assert (=> b!5442501 m!6462580))

(assert (=> b!5442501 m!6463048))

(assert (=> b!5442501 m!6462580))

(declare-fun m!6463050 () Bool)

(assert (=> b!5442501 m!6463050))

(assert (=> b!5442497 m!6462580))

(assert (=> b!5442497 m!6462580))

(assert (=> b!5442497 m!6462724))

(assert (=> b!5442499 m!6462576))

(declare-fun m!6463052 () Bool)

(assert (=> b!5442498 m!6463052))

(assert (=> d!1733392 m!6462572))

(declare-fun m!6463054 () Bool)

(assert (=> d!1733392 m!6463054))

(assert (=> b!5442495 m!6462576))

(assert (=> b!5442502 m!6462580))

(assert (=> b!5442502 m!6462580))

(assert (=> b!5442502 m!6462724))

(assert (=> bm!390381 m!6462572))

(assert (=> b!5441670 d!1733392))

(declare-fun d!1733394 () Bool)

(assert (=> d!1733394 (= (matchR!7446 (regTwo!31034 r!7292) s!2326) (matchRSpec!2364 (regTwo!31034 r!7292) s!2326))))

(declare-fun lt!2219160 () Unit!154586)

(assert (=> d!1733394 (= lt!2219160 (choose!41281 (regTwo!31034 r!7292) s!2326))))

(assert (=> d!1733394 (validRegex!6997 (regTwo!31034 r!7292))))

(assert (=> d!1733394 (= (mainMatchTheorem!2364 (regTwo!31034 r!7292) s!2326) lt!2219160)))

(declare-fun bs!1256051 () Bool)

(assert (= bs!1256051 d!1733394))

(assert (=> bs!1256051 m!6462444))

(assert (=> bs!1256051 m!6462454))

(declare-fun m!6463056 () Bool)

(assert (=> bs!1256051 m!6463056))

(assert (=> bs!1256051 m!6463054))

(assert (=> b!5441670 d!1733394))

(declare-fun b!5442517 () Bool)

(declare-fun e!3371404 () Bool)

(declare-fun tp!1500359 () Bool)

(declare-fun tp!1500362 () Bool)

(assert (=> b!5442517 (= e!3371404 (and tp!1500359 tp!1500362))))

(declare-fun b!5442516 () Bool)

(declare-fun tp!1500360 () Bool)

(assert (=> b!5442516 (= e!3371404 tp!1500360)))

(declare-fun b!5442515 () Bool)

(declare-fun tp!1500361 () Bool)

(declare-fun tp!1500358 () Bool)

(assert (=> b!5442515 (= e!3371404 (and tp!1500361 tp!1500358))))

(declare-fun b!5442514 () Bool)

(assert (=> b!5442514 (= e!3371404 tp_is_empty!39775)))

(assert (=> b!5441679 (= tp!1500289 e!3371404)))

(assert (= (and b!5441679 ((_ is ElementMatch!15261) (regOne!31034 r!7292))) b!5442514))

(assert (= (and b!5441679 ((_ is Concat!24106) (regOne!31034 r!7292))) b!5442515))

(assert (= (and b!5441679 ((_ is Star!15261) (regOne!31034 r!7292))) b!5442516))

(assert (= (and b!5441679 ((_ is Union!15261) (regOne!31034 r!7292))) b!5442517))

(declare-fun b!5442521 () Bool)

(declare-fun e!3371405 () Bool)

(declare-fun tp!1500364 () Bool)

(declare-fun tp!1500367 () Bool)

(assert (=> b!5442521 (= e!3371405 (and tp!1500364 tp!1500367))))

(declare-fun b!5442520 () Bool)

(declare-fun tp!1500365 () Bool)

(assert (=> b!5442520 (= e!3371405 tp!1500365)))

(declare-fun b!5442519 () Bool)

(declare-fun tp!1500366 () Bool)

(declare-fun tp!1500363 () Bool)

(assert (=> b!5442519 (= e!3371405 (and tp!1500366 tp!1500363))))

(declare-fun b!5442518 () Bool)

(assert (=> b!5442518 (= e!3371405 tp_is_empty!39775)))

(assert (=> b!5441679 (= tp!1500281 e!3371405)))

(assert (= (and b!5441679 ((_ is ElementMatch!15261) (regTwo!31034 r!7292))) b!5442518))

(assert (= (and b!5441679 ((_ is Concat!24106) (regTwo!31034 r!7292))) b!5442519))

(assert (= (and b!5441679 ((_ is Star!15261) (regTwo!31034 r!7292))) b!5442520))

(assert (= (and b!5441679 ((_ is Union!15261) (regTwo!31034 r!7292))) b!5442521))

(declare-fun b!5442525 () Bool)

(declare-fun e!3371406 () Bool)

(declare-fun tp!1500369 () Bool)

(declare-fun tp!1500372 () Bool)

(assert (=> b!5442525 (= e!3371406 (and tp!1500369 tp!1500372))))

(declare-fun b!5442524 () Bool)

(declare-fun tp!1500370 () Bool)

(assert (=> b!5442524 (= e!3371406 tp!1500370)))

(declare-fun b!5442523 () Bool)

(declare-fun tp!1500371 () Bool)

(declare-fun tp!1500368 () Bool)

(assert (=> b!5442523 (= e!3371406 (and tp!1500371 tp!1500368))))

(declare-fun b!5442522 () Bool)

(assert (=> b!5442522 (= e!3371406 tp_is_empty!39775)))

(assert (=> b!5441668 (= tp!1500284 e!3371406)))

(assert (= (and b!5441668 ((_ is ElementMatch!15261) (regOne!31035 r!7292))) b!5442522))

(assert (= (and b!5441668 ((_ is Concat!24106) (regOne!31035 r!7292))) b!5442523))

(assert (= (and b!5441668 ((_ is Star!15261) (regOne!31035 r!7292))) b!5442524))

(assert (= (and b!5441668 ((_ is Union!15261) (regOne!31035 r!7292))) b!5442525))

(declare-fun b!5442529 () Bool)

(declare-fun e!3371407 () Bool)

(declare-fun tp!1500374 () Bool)

(declare-fun tp!1500377 () Bool)

(assert (=> b!5442529 (= e!3371407 (and tp!1500374 tp!1500377))))

(declare-fun b!5442528 () Bool)

(declare-fun tp!1500375 () Bool)

(assert (=> b!5442528 (= e!3371407 tp!1500375)))

(declare-fun b!5442527 () Bool)

(declare-fun tp!1500376 () Bool)

(declare-fun tp!1500373 () Bool)

(assert (=> b!5442527 (= e!3371407 (and tp!1500376 tp!1500373))))

(declare-fun b!5442526 () Bool)

(assert (=> b!5442526 (= e!3371407 tp_is_empty!39775)))

(assert (=> b!5441668 (= tp!1500285 e!3371407)))

(assert (= (and b!5441668 ((_ is ElementMatch!15261) (regTwo!31035 r!7292))) b!5442526))

(assert (= (and b!5441668 ((_ is Concat!24106) (regTwo!31035 r!7292))) b!5442527))

(assert (= (and b!5441668 ((_ is Star!15261) (regTwo!31035 r!7292))) b!5442528))

(assert (= (and b!5441668 ((_ is Union!15261) (regTwo!31035 r!7292))) b!5442529))

(declare-fun b!5442534 () Bool)

(declare-fun e!3371410 () Bool)

(declare-fun tp!1500382 () Bool)

(declare-fun tp!1500383 () Bool)

(assert (=> b!5442534 (= e!3371410 (and tp!1500382 tp!1500383))))

(assert (=> b!5441674 (= tp!1500283 e!3371410)))

(assert (= (and b!5441674 ((_ is Cons!61959) (exprs!5145 (h!68408 zl!343)))) b!5442534))

(declare-fun b!5442542 () Bool)

(declare-fun e!3371416 () Bool)

(declare-fun tp!1500388 () Bool)

(assert (=> b!5442542 (= e!3371416 tp!1500388)))

(declare-fun b!5442541 () Bool)

(declare-fun e!3371415 () Bool)

(declare-fun tp!1500389 () Bool)

(assert (=> b!5442541 (= e!3371415 (and (inv!81399 (h!68408 (t!375311 zl!343))) e!3371416 tp!1500389))))

(assert (=> b!5441667 (= tp!1500287 e!3371415)))

(assert (= b!5442541 b!5442542))

(assert (= (and b!5441667 ((_ is Cons!61960) (t!375311 zl!343))) b!5442541))

(declare-fun m!6463058 () Bool)

(assert (=> b!5442541 m!6463058))

(declare-fun b!5442546 () Bool)

(declare-fun e!3371417 () Bool)

(declare-fun tp!1500391 () Bool)

(declare-fun tp!1500394 () Bool)

(assert (=> b!5442546 (= e!3371417 (and tp!1500391 tp!1500394))))

(declare-fun b!5442545 () Bool)

(declare-fun tp!1500392 () Bool)

(assert (=> b!5442545 (= e!3371417 tp!1500392)))

(declare-fun b!5442544 () Bool)

(declare-fun tp!1500393 () Bool)

(declare-fun tp!1500390 () Bool)

(assert (=> b!5442544 (= e!3371417 (and tp!1500393 tp!1500390))))

(declare-fun b!5442543 () Bool)

(assert (=> b!5442543 (= e!3371417 tp_is_empty!39775)))

(assert (=> b!5441678 (= tp!1500280 e!3371417)))

(assert (= (and b!5441678 ((_ is ElementMatch!15261) (reg!15590 r!7292))) b!5442543))

(assert (= (and b!5441678 ((_ is Concat!24106) (reg!15590 r!7292))) b!5442544))

(assert (= (and b!5441678 ((_ is Star!15261) (reg!15590 r!7292))) b!5442545))

(assert (= (and b!5441678 ((_ is Union!15261) (reg!15590 r!7292))) b!5442546))

(declare-fun b!5442551 () Bool)

(declare-fun e!3371420 () Bool)

(declare-fun tp!1500397 () Bool)

(assert (=> b!5442551 (= e!3371420 (and tp_is_empty!39775 tp!1500397))))

(assert (=> b!5441662 (= tp!1500282 e!3371420)))

(assert (= (and b!5441662 ((_ is Cons!61958) (t!375309 s!2326))) b!5442551))

(declare-fun condSetEmpty!35587 () Bool)

(assert (=> setNonEmpty!35581 (= condSetEmpty!35587 (= setRest!35581 ((as const (Array Context!9290 Bool)) false)))))

(declare-fun setRes!35587 () Bool)

(assert (=> setNonEmpty!35581 (= tp!1500286 setRes!35587)))

(declare-fun setIsEmpty!35587 () Bool)

(assert (=> setIsEmpty!35587 setRes!35587))

(declare-fun e!3371423 () Bool)

(declare-fun setElem!35587 () Context!9290)

(declare-fun tp!1500403 () Bool)

(declare-fun setNonEmpty!35587 () Bool)

(assert (=> setNonEmpty!35587 (= setRes!35587 (and tp!1500403 (inv!81399 setElem!35587) e!3371423))))

(declare-fun setRest!35587 () (InoxSet Context!9290))

(assert (=> setNonEmpty!35587 (= setRest!35581 ((_ map or) (store ((as const (Array Context!9290 Bool)) false) setElem!35587 true) setRest!35587))))

(declare-fun b!5442556 () Bool)

(declare-fun tp!1500402 () Bool)

(assert (=> b!5442556 (= e!3371423 tp!1500402)))

(assert (= (and setNonEmpty!35581 condSetEmpty!35587) setIsEmpty!35587))

(assert (= (and setNonEmpty!35581 (not condSetEmpty!35587)) setNonEmpty!35587))

(assert (= setNonEmpty!35587 b!5442556))

(declare-fun m!6463060 () Bool)

(assert (=> setNonEmpty!35587 m!6463060))

(declare-fun b!5442557 () Bool)

(declare-fun e!3371424 () Bool)

(declare-fun tp!1500404 () Bool)

(declare-fun tp!1500405 () Bool)

(assert (=> b!5442557 (= e!3371424 (and tp!1500404 tp!1500405))))

(assert (=> b!5441655 (= tp!1500288 e!3371424)))

(assert (= (and b!5441655 ((_ is Cons!61959) (exprs!5145 setElem!35581))) b!5442557))

(declare-fun b_lambda!207463 () Bool)

(assert (= b_lambda!207461 (or b!5441681 b_lambda!207463)))

(declare-fun bs!1256052 () Bool)

(declare-fun d!1733396 () Bool)

(assert (= bs!1256052 (and d!1733396 b!5441681)))

(assert (=> bs!1256052 (= (dynLambda!24385 lambda!286367 (h!68407 (t!375310 (exprs!5145 (h!68408 zl!343))))) (validRegex!6997 (h!68407 (t!375310 (exprs!5145 (h!68408 zl!343))))))))

(declare-fun m!6463062 () Bool)

(assert (=> bs!1256052 m!6463062))

(assert (=> b!5442452 d!1733396))

(declare-fun b_lambda!207465 () Bool)

(assert (= b_lambda!207457 (or b!5441660 b_lambda!207465)))

(declare-fun bs!1256053 () Bool)

(declare-fun d!1733398 () Bool)

(assert (= bs!1256053 (and d!1733398 b!5441660)))

(assert (=> bs!1256053 (= (dynLambda!24384 lambda!286366 lt!2219035) (derivationStepZipperUp!633 lt!2219035 (h!68406 s!2326)))))

(assert (=> bs!1256053 m!6462474))

(assert (=> d!1733354 d!1733398))

(declare-fun b_lambda!207467 () Bool)

(assert (= b_lambda!207459 (or b!5441660 b_lambda!207467)))

(declare-fun bs!1256054 () Bool)

(declare-fun d!1733400 () Bool)

(assert (= bs!1256054 (and d!1733400 b!5441660)))

(assert (=> bs!1256054 (= (dynLambda!24384 lambda!286366 (h!68408 zl!343)) (derivationStepZipperUp!633 (h!68408 zl!343) (h!68406 s!2326)))))

(assert (=> bs!1256054 m!6462482))

(assert (=> d!1733368 d!1733400))

(check-sat (not d!1733376) (not d!1733214) (not b!5442523) (not b!5442444) (not b!5442473) tp_is_empty!39775 (not b!5442417) (not b!5442525) (not b!5442527) (not b!5442517) (not d!1733272) (not b!5441719) (not b!5442442) (not b!5442020) (not b!5441738) (not b!5442430) (not d!1733202) (not b!5442437) (not b!5441798) (not b!5442441) (not b!5442529) (not b!5442438) (not b!5442544) (not b!5442125) (not b!5442121) (not d!1733242) (not d!1733306) (not bm!390377) (not d!1733282) (not d!1733388) (not b!5442205) (not b!5442017) (not b!5441830) (not b!5442445) (not b!5442447) (not b_lambda!207463) (not b!5442128) (not b!5442203) (not setNonEmpty!35587) (not b!5442018) (not bm!390371) (not b!5442200) (not b!5442520) (not b_lambda!207467) (not b!5441796) (not b!5442470) (not bm!390323) (not b!5442120) (not bm!390326) (not b!5442453) (not d!1733344) (not b!5441832) (not d!1733232) (not d!1733296) (not b!5442459) (not bm!390375) (not b!5442126) (not b!5442495) (not b!5442377) (not b!5441799) (not b!5442541) (not b!5442551) (not b!5442477) (not b!5442412) (not bs!1256054) (not b!5442476) (not b!5442127) (not b!5442124) (not b!5442497) (not d!1733392) (not b!5442433) (not b!5441716) (not b!5442502) (not d!1733356) (not d!1733354) (not bm!390352) (not b!5442498) (not b!5442546) (not d!1733342) (not b!5442021) (not bs!1256052) (not d!1733280) (not b!5442516) (not b!5442474) (not b!5441948) (not b!5442528) (not bm!390380) (not bm!390322) (not d!1733326) (not b!5442499) (not b!5442557) (not d!1733196) (not d!1733366) (not b!5442542) (not b!5442519) (not bm!390373) (not b!5442016) (not bm!390379) (not b!5442348) (not d!1733362) (not b!5442413) (not bm!390369) (not b!5442014) (not b!5441829) (not d!1733338) (not b!5442501) (not b!5441795) (not d!1733194) (not bm!390345) (not b!5442418) (not b!5442434) (not b!5442207) (not b!5441714) (not d!1733394) (not b_lambda!207465) (not b!5442347) (not b!5442521) (not b!5442206) (not b!5442545) (not bm!390354) (not b!5441833) (not d!1733308) (not b!5442446) (not d!1733246) (not d!1733374) (not bm!390374) (not b!5442431) (not b!5441721) (not b!5441943) (not b!5441866) (not d!1733340) (not b!5441797) (not bm!390381) (not b!5441831) (not d!1733336) (not d!1733378) (not bm!390376) (not b!5442427) (not b!5441712) (not d!1733368) (not b!5442429) (not d!1733380) (not b!5441713) (not b!5441715) (not d!1733224) (not d!1733218) (not b!5442464) (not b!5442472) (not b!5442202) (not b!5442524) (not b!5442489) (not b!5442402) (not d!1733244) (not bm!390368) (not b!5442534) (not bm!390378) (not b!5441794) (not bs!1256053) (not b!5442556) (not d!1733386) (not d!1733226) (not b!5442443) (not b!5442515) (not d!1733264) (not d!1733284) (not b!5442484))
(check-sat)
