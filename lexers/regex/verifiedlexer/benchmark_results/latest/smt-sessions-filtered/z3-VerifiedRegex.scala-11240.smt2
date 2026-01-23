; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589492 () Bool)

(assert start!589492)

(declare-fun b!5727667 () Bool)

(assert (=> b!5727667 true))

(assert (=> b!5727667 true))

(declare-fun lambda!309754 () Int)

(declare-fun lambda!309753 () Int)

(assert (=> b!5727667 (not (= lambda!309754 lambda!309753))))

(assert (=> b!5727667 true))

(assert (=> b!5727667 true))

(declare-fun b!5727690 () Bool)

(assert (=> b!5727690 true))

(declare-fun b!5727673 () Bool)

(assert (=> b!5727673 true))

(declare-fun b!5727656 () Bool)

(declare-fun res!2418099 () Bool)

(declare-fun e!3521721 () Bool)

(assert (=> b!5727656 (=> res!2418099 e!3521721)))

(declare-datatypes ((C!31724 0))(
  ( (C!31725 (val!25564 Int)) )
))
(declare-datatypes ((Regex!15727 0))(
  ( (ElementMatch!15727 (c!1010515 C!31724)) (Concat!24572 (regOne!31966 Regex!15727) (regTwo!31966 Regex!15727)) (EmptyExpr!15727) (Star!15727 (reg!16056 Regex!15727)) (EmptyLang!15727) (Union!15727 (regOne!31967 Regex!15727) (regTwo!31967 Regex!15727)) )
))
(declare-fun lt!2279745 () Regex!15727)

(declare-fun r!7292 () Regex!15727)

(assert (=> b!5727656 (= res!2418099 (not (= lt!2279745 r!7292)))))

(declare-fun b!5727657 () Bool)

(declare-fun res!2418088 () Bool)

(declare-fun e!3521737 () Bool)

(assert (=> b!5727657 (=> res!2418088 e!3521737)))

(declare-fun lt!2279733 () Bool)

(assert (=> b!5727657 (= res!2418088 (not lt!2279733))))

(declare-fun setIsEmpty!38413 () Bool)

(declare-fun setRes!38413 () Bool)

(assert (=> setIsEmpty!38413 setRes!38413))

(declare-fun b!5727658 () Bool)

(declare-fun e!3521738 () Bool)

(declare-fun e!3521736 () Bool)

(assert (=> b!5727658 (= e!3521738 e!3521736)))

(declare-fun res!2418092 () Bool)

(assert (=> b!5727658 (=> res!2418092 e!3521736)))

(declare-datatypes ((List!63480 0))(
  ( (Nil!63356) (Cons!63356 (h!69804 Regex!15727) (t!376808 List!63480)) )
))
(declare-datatypes ((Context!10222 0))(
  ( (Context!10223 (exprs!5611 List!63480)) )
))
(declare-fun lt!2279750 () Context!10222)

(declare-datatypes ((List!63481 0))(
  ( (Nil!63357) (Cons!63357 (h!69805 Context!10222) (t!376809 List!63481)) )
))
(declare-fun unfocusZipper!1469 (List!63481) Regex!15727)

(assert (=> b!5727658 (= res!2418092 (not (= (unfocusZipper!1469 (Cons!63357 lt!2279750 Nil!63357)) (reg!16056 (regOne!31966 r!7292)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2279760 () (InoxSet Context!10222))

(declare-datatypes ((List!63482 0))(
  ( (Nil!63358) (Cons!63358 (h!69806 C!31724) (t!376810 List!63482)) )
))
(declare-fun s!2326 () List!63482)

(declare-fun lt!2279725 () Context!10222)

(declare-fun lambda!309755 () Int)

(declare-fun flatMap!1340 ((InoxSet Context!10222) Int) (InoxSet Context!10222))

(declare-fun derivationStepZipperUp!995 (Context!10222 C!31724) (InoxSet Context!10222))

(assert (=> b!5727658 (= (flatMap!1340 lt!2279760 lambda!309755) (derivationStepZipperUp!995 lt!2279725 (h!69806 s!2326)))))

(declare-datatypes ((Unit!156440 0))(
  ( (Unit!156441) )
))
(declare-fun lt!2279746 () Unit!156440)

(declare-fun lemmaFlatMapOnSingletonSet!872 ((InoxSet Context!10222) Context!10222 Int) Unit!156440)

(assert (=> b!5727658 (= lt!2279746 (lemmaFlatMapOnSingletonSet!872 lt!2279760 lt!2279725 lambda!309755))))

(declare-fun lt!2279752 () (InoxSet Context!10222))

(assert (=> b!5727658 (= (flatMap!1340 lt!2279752 lambda!309755) (derivationStepZipperUp!995 lt!2279750 (h!69806 s!2326)))))

(declare-fun lt!2279737 () Unit!156440)

(assert (=> b!5727658 (= lt!2279737 (lemmaFlatMapOnSingletonSet!872 lt!2279752 lt!2279750 lambda!309755))))

(declare-fun lt!2279729 () (InoxSet Context!10222))

(assert (=> b!5727658 (= lt!2279729 (derivationStepZipperUp!995 lt!2279725 (h!69806 s!2326)))))

(declare-fun lt!2279728 () (InoxSet Context!10222))

(assert (=> b!5727658 (= lt!2279728 (derivationStepZipperUp!995 lt!2279750 (h!69806 s!2326)))))

(assert (=> b!5727658 (= lt!2279760 (store ((as const (Array Context!10222 Bool)) false) lt!2279725 true))))

(assert (=> b!5727658 (= lt!2279752 (store ((as const (Array Context!10222 Bool)) false) lt!2279750 true))))

(assert (=> b!5727658 (= lt!2279750 (Context!10223 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)))))

(declare-fun b!5727659 () Bool)

(declare-fun res!2418100 () Bool)

(declare-fun e!3521732 () Bool)

(assert (=> b!5727659 (=> res!2418100 e!3521732)))

(declare-fun zl!343 () List!63481)

(declare-fun isEmpty!35233 (List!63481) Bool)

(assert (=> b!5727659 (= res!2418100 (not (isEmpty!35233 (t!376809 zl!343))))))

(declare-fun b!5727660 () Bool)

(declare-fun e!3521734 () Unit!156440)

(declare-fun Unit!156442 () Unit!156440)

(assert (=> b!5727660 (= e!3521734 Unit!156442)))

(declare-fun lt!2279740 () (InoxSet Context!10222))

(declare-fun lt!2279758 () Unit!156440)

(declare-fun lt!2279727 () (InoxSet Context!10222))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!752 ((InoxSet Context!10222) (InoxSet Context!10222) List!63482) Unit!156440)

(assert (=> b!5727660 (= lt!2279758 (lemmaZipperConcatMatchesSameAsBothZippers!752 lt!2279727 lt!2279740 (t!376810 s!2326)))))

(declare-fun res!2418104 () Bool)

(declare-fun matchZipper!1865 ((InoxSet Context!10222) List!63482) Bool)

(assert (=> b!5727660 (= res!2418104 (matchZipper!1865 lt!2279727 (t!376810 s!2326)))))

(declare-fun e!3521715 () Bool)

(assert (=> b!5727660 (=> res!2418104 e!3521715)))

(assert (=> b!5727660 (= (matchZipper!1865 ((_ map or) lt!2279727 lt!2279740) (t!376810 s!2326)) e!3521715)))

(declare-fun b!5727661 () Bool)

(declare-fun res!2418078 () Bool)

(assert (=> b!5727661 (=> res!2418078 e!3521732)))

(get-info :version)

(assert (=> b!5727661 (= res!2418078 (or ((_ is EmptyExpr!15727) r!7292) ((_ is EmptyLang!15727) r!7292) ((_ is ElementMatch!15727) r!7292) ((_ is Union!15727) r!7292) (not ((_ is Concat!24572) r!7292))))))

(declare-fun e!3521718 () Bool)

(declare-fun e!3521719 () Bool)

(declare-fun b!5727663 () Bool)

(declare-fun tp!1585745 () Bool)

(declare-fun inv!82564 (Context!10222) Bool)

(assert (=> b!5727663 (= e!3521719 (and (inv!82564 (h!69805 zl!343)) e!3521718 tp!1585745))))

(declare-fun b!5727664 () Bool)

(declare-fun res!2418101 () Bool)

(declare-fun e!3521723 () Bool)

(assert (=> b!5727664 (=> res!2418101 e!3521723)))

(declare-fun isEmpty!35234 (List!63480) Bool)

(assert (=> b!5727664 (= res!2418101 (isEmpty!35234 (t!376808 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5727665 () Bool)

(declare-fun e!3521717 () Bool)

(declare-fun tp_is_empty!40707 () Bool)

(declare-fun tp!1585749 () Bool)

(assert (=> b!5727665 (= e!3521717 (and tp_is_empty!40707 tp!1585749))))

(declare-fun b!5727666 () Bool)

(declare-fun e!3521729 () Bool)

(assert (=> b!5727666 (= e!3521737 e!3521729)))

(declare-fun res!2418086 () Bool)

(assert (=> b!5727666 (=> res!2418086 e!3521729)))

(declare-fun e!3521731 () Bool)

(assert (=> b!5727666 (= res!2418086 e!3521731)))

(declare-fun res!2418083 () Bool)

(assert (=> b!5727666 (=> (not res!2418083) (not e!3521731))))

(declare-fun lt!2279723 () Bool)

(assert (=> b!5727666 (= res!2418083 (not lt!2279723))))

(assert (=> b!5727666 (= lt!2279723 (matchZipper!1865 lt!2279727 (t!376810 s!2326)))))

(assert (=> b!5727667 (= e!3521732 e!3521723)))

(declare-fun res!2418076 () Bool)

(assert (=> b!5727667 (=> res!2418076 e!3521723)))

(declare-fun lt!2279726 () Bool)

(declare-fun lt!2279751 () Bool)

(assert (=> b!5727667 (= res!2418076 (or (not (= lt!2279751 lt!2279726)) ((_ is Nil!63358) s!2326)))))

(declare-fun Exists!2827 (Int) Bool)

(assert (=> b!5727667 (= (Exists!2827 lambda!309753) (Exists!2827 lambda!309754))))

(declare-fun lt!2279744 () Unit!156440)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1456 (Regex!15727 Regex!15727 List!63482) Unit!156440)

(assert (=> b!5727667 (= lt!2279744 (lemmaExistCutMatchRandMatchRSpecEquivalent!1456 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326))))

(assert (=> b!5727667 (= lt!2279726 (Exists!2827 lambda!309753))))

(declare-datatypes ((tuple2!65648 0))(
  ( (tuple2!65649 (_1!36127 List!63482) (_2!36127 List!63482)) )
))
(declare-datatypes ((Option!15736 0))(
  ( (None!15735) (Some!15735 (v!51790 tuple2!65648)) )
))
(declare-fun isDefined!12439 (Option!15736) Bool)

(declare-fun findConcatSeparation!2150 (Regex!15727 Regex!15727 List!63482 List!63482 List!63482) Option!15736)

(assert (=> b!5727667 (= lt!2279726 (isDefined!12439 (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) Nil!63358 s!2326 s!2326)))))

(declare-fun lt!2279739 () Unit!156440)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1914 (Regex!15727 Regex!15727 List!63482) Unit!156440)

(assert (=> b!5727667 (= lt!2279739 (lemmaFindConcatSeparationEquivalentToExists!1914 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326))))

(declare-fun b!5727668 () Bool)

(declare-fun e!3521735 () Bool)

(declare-fun nullable!5759 (Regex!15727) Bool)

(assert (=> b!5727668 (= e!3521735 (nullable!5759 (regOne!31966 (regOne!31966 r!7292))))))

(declare-fun b!5727669 () Bool)

(declare-fun e!3521725 () Bool)

(assert (=> b!5727669 (= e!3521725 (not e!3521732))))

(declare-fun res!2418102 () Bool)

(assert (=> b!5727669 (=> res!2418102 e!3521732)))

(assert (=> b!5727669 (= res!2418102 (not ((_ is Cons!63357) zl!343)))))

(declare-fun matchRSpec!2830 (Regex!15727 List!63482) Bool)

(assert (=> b!5727669 (= lt!2279751 (matchRSpec!2830 r!7292 s!2326))))

(declare-fun matchR!7912 (Regex!15727 List!63482) Bool)

(assert (=> b!5727669 (= lt!2279751 (matchR!7912 r!7292 s!2326))))

(declare-fun lt!2279756 () Unit!156440)

(declare-fun mainMatchTheorem!2830 (Regex!15727 List!63482) Unit!156440)

(assert (=> b!5727669 (= lt!2279756 (mainMatchTheorem!2830 r!7292 s!2326))))

(declare-fun b!5727670 () Bool)

(declare-fun res!2418077 () Bool)

(declare-fun e!3521724 () Bool)

(assert (=> b!5727670 (=> res!2418077 e!3521724)))

(assert (=> b!5727670 (= res!2418077 (or ((_ is Concat!24572) (regOne!31966 r!7292)) (not ((_ is Star!15727) (regOne!31966 r!7292)))))))

(declare-fun b!5727671 () Bool)

(declare-fun res!2418084 () Bool)

(assert (=> b!5727671 (=> res!2418084 e!3521737)))

(declare-fun z!1189 () (InoxSet Context!10222))

(assert (=> b!5727671 (= res!2418084 (not (matchZipper!1865 z!1189 s!2326)))))

(declare-fun b!5727672 () Bool)

(declare-fun e!3521727 () Bool)

(declare-fun tp!1585752 () Bool)

(assert (=> b!5727672 (= e!3521727 tp!1585752)))

(declare-fun e!3521726 () Bool)

(assert (=> b!5727673 (= e!3521729 e!3521726)))

(declare-fun res!2418103 () Bool)

(assert (=> b!5727673 (=> res!2418103 e!3521726)))

(declare-fun lt!2279724 () (InoxSet Context!10222))

(declare-fun appendTo!106 ((InoxSet Context!10222) Context!10222) (InoxSet Context!10222))

(assert (=> b!5727673 (= res!2418103 (not (= (appendTo!106 lt!2279752 lt!2279725) lt!2279724)))))

(declare-fun lambda!309756 () Int)

(declare-fun lt!2279742 () List!63480)

(declare-fun map!14511 ((InoxSet Context!10222) Int) (InoxSet Context!10222))

(declare-fun ++!13926 (List!63480 List!63480) List!63480)

(assert (=> b!5727673 (= (map!14511 lt!2279752 lambda!309756) (store ((as const (Array Context!10222 Bool)) false) (Context!10223 (++!13926 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742)) true))))

(declare-fun lambda!309757 () Int)

(declare-fun lt!2279748 () Unit!156440)

(declare-fun lemmaConcatPreservesForall!296 (List!63480 List!63480 Int) Unit!156440)

(assert (=> b!5727673 (= lt!2279748 (lemmaConcatPreservesForall!296 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742 lambda!309757))))

(declare-fun lt!2279754 () Unit!156440)

(declare-fun lemmaMapOnSingletonSet!122 ((InoxSet Context!10222) Context!10222 Int) Unit!156440)

(assert (=> b!5727673 (= lt!2279754 (lemmaMapOnSingletonSet!122 lt!2279752 lt!2279750 lambda!309756))))

(declare-fun b!5727674 () Bool)

(assert (=> b!5727674 (= e!3521736 e!3521737)))

(declare-fun res!2418093 () Bool)

(assert (=> b!5727674 (=> res!2418093 e!3521737)))

(assert (=> b!5727674 (= res!2418093 lt!2279751)))

(declare-fun lt!2279762 () Regex!15727)

(assert (=> b!5727674 (= (matchR!7912 lt!2279762 s!2326) (matchRSpec!2830 lt!2279762 s!2326))))

(declare-fun lt!2279731 () Unit!156440)

(assert (=> b!5727674 (= lt!2279731 (mainMatchTheorem!2830 lt!2279762 s!2326))))

(declare-fun b!5727675 () Bool)

(declare-fun res!2418085 () Bool)

(assert (=> b!5727675 (=> res!2418085 e!3521732)))

(declare-fun generalisedUnion!1590 (List!63480) Regex!15727)

(declare-fun unfocusZipperList!1155 (List!63481) List!63480)

(assert (=> b!5727675 (= res!2418085 (not (= r!7292 (generalisedUnion!1590 (unfocusZipperList!1155 zl!343)))))))

(declare-fun b!5727676 () Bool)

(declare-fun res!2418090 () Bool)

(assert (=> b!5727676 (=> res!2418090 e!3521729)))

(declare-fun lt!2279743 () Bool)

(assert (=> b!5727676 (= res!2418090 (or (not lt!2279723) (not lt!2279743)))))

(declare-fun b!5727677 () Bool)

(declare-fun res!2418095 () Bool)

(assert (=> b!5727677 (=> res!2418095 e!3521736)))

(declare-fun lt!2279759 () Regex!15727)

(assert (=> b!5727677 (= res!2418095 (not (= (unfocusZipper!1469 (Cons!63357 lt!2279725 Nil!63357)) lt!2279759)))))

(declare-fun setElem!38413 () Context!10222)

(declare-fun tp!1585750 () Bool)

(declare-fun setNonEmpty!38413 () Bool)

(assert (=> setNonEmpty!38413 (= setRes!38413 (and tp!1585750 (inv!82564 setElem!38413) e!3521727))))

(declare-fun setRest!38413 () (InoxSet Context!10222))

(assert (=> setNonEmpty!38413 (= z!1189 ((_ map or) (store ((as const (Array Context!10222 Bool)) false) setElem!38413 true) setRest!38413))))

(declare-fun b!5727662 () Bool)

(declare-fun Unit!156443 () Unit!156440)

(assert (=> b!5727662 (= e!3521734 Unit!156443)))

(declare-fun res!2418087 () Bool)

(declare-fun e!3521722 () Bool)

(assert (=> start!589492 (=> (not res!2418087) (not e!3521722))))

(declare-fun validRegex!7463 (Regex!15727) Bool)

(assert (=> start!589492 (= res!2418087 (validRegex!7463 r!7292))))

(assert (=> start!589492 e!3521722))

(declare-fun e!3521733 () Bool)

(assert (=> start!589492 e!3521733))

(declare-fun condSetEmpty!38413 () Bool)

(assert (=> start!589492 (= condSetEmpty!38413 (= z!1189 ((as const (Array Context!10222 Bool)) false)))))

(assert (=> start!589492 setRes!38413))

(assert (=> start!589492 e!3521719))

(assert (=> start!589492 e!3521717))

(declare-fun b!5727678 () Bool)

(declare-fun tp!1585753 () Bool)

(declare-fun tp!1585754 () Bool)

(assert (=> b!5727678 (= e!3521733 (and tp!1585753 tp!1585754))))

(declare-fun b!5727679 () Bool)

(declare-fun e!3521728 () Bool)

(assert (=> b!5727679 (= e!3521724 e!3521728)))

(declare-fun res!2418094 () Bool)

(assert (=> b!5727679 (=> res!2418094 e!3521728)))

(declare-fun lt!2279736 () (InoxSet Context!10222))

(assert (=> b!5727679 (= res!2418094 (not (= lt!2279727 lt!2279736)))))

(declare-fun derivationStepZipperDown!1069 (Regex!15727 Context!10222 C!31724) (InoxSet Context!10222))

(assert (=> b!5727679 (= lt!2279736 (derivationStepZipperDown!1069 (reg!16056 (regOne!31966 r!7292)) lt!2279725 (h!69806 s!2326)))))

(assert (=> b!5727679 (= lt!2279725 (Context!10223 lt!2279742))))

(declare-fun lt!2279761 () Regex!15727)

(assert (=> b!5727679 (= lt!2279742 (Cons!63356 lt!2279761 (t!376808 (exprs!5611 (h!69805 zl!343)))))))

(assert (=> b!5727679 (= lt!2279761 (Star!15727 (reg!16056 (regOne!31966 r!7292))))))

(declare-fun b!5727680 () Bool)

(declare-fun e!3521720 () Bool)

(assert (=> b!5727680 (= e!3521720 e!3521721)))

(declare-fun res!2418098 () Bool)

(assert (=> b!5727680 (=> res!2418098 e!3521721)))

(declare-fun lt!2279734 () (InoxSet Context!10222))

(assert (=> b!5727680 (= res!2418098 (not (= lt!2279743 (matchZipper!1865 lt!2279734 (t!376810 s!2326)))))))

(assert (=> b!5727680 (= lt!2279743 (matchZipper!1865 lt!2279724 s!2326))))

(declare-fun b!5727681 () Bool)

(declare-fun res!2418105 () Bool)

(assert (=> b!5727681 (=> res!2418105 e!3521732)))

(declare-fun generalisedConcat!1342 (List!63480) Regex!15727)

(assert (=> b!5727681 (= res!2418105 (not (= r!7292 (generalisedConcat!1342 (exprs!5611 (h!69805 zl!343))))))))

(declare-fun b!5727682 () Bool)

(assert (=> b!5727682 (= e!3521733 tp_is_empty!40707)))

(declare-fun b!5727683 () Bool)

(assert (=> b!5727683 (= e!3521728 e!3521720)))

(declare-fun res!2418082 () Bool)

(assert (=> b!5727683 (=> res!2418082 e!3521720)))

(assert (=> b!5727683 (= res!2418082 (not (= lt!2279734 lt!2279736)))))

(declare-fun lt!2279753 () Context!10222)

(assert (=> b!5727683 (= (flatMap!1340 lt!2279724 lambda!309755) (derivationStepZipperUp!995 lt!2279753 (h!69806 s!2326)))))

(declare-fun lt!2279749 () Unit!156440)

(assert (=> b!5727683 (= lt!2279749 (lemmaFlatMapOnSingletonSet!872 lt!2279724 lt!2279753 lambda!309755))))

(declare-fun lt!2279732 () (InoxSet Context!10222))

(assert (=> b!5727683 (= lt!2279732 (derivationStepZipperUp!995 lt!2279753 (h!69806 s!2326)))))

(declare-fun derivationStepZipper!1810 ((InoxSet Context!10222) C!31724) (InoxSet Context!10222))

(assert (=> b!5727683 (= lt!2279734 (derivationStepZipper!1810 lt!2279724 (h!69806 s!2326)))))

(assert (=> b!5727683 (= lt!2279724 (store ((as const (Array Context!10222 Bool)) false) lt!2279753 true))))

(assert (=> b!5727683 (= lt!2279753 (Context!10223 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) lt!2279742)))))

(declare-fun b!5727684 () Bool)

(assert (=> b!5727684 (= e!3521715 (matchZipper!1865 lt!2279740 (t!376810 s!2326)))))

(declare-fun b!5727685 () Bool)

(declare-fun res!2418074 () Bool)

(assert (=> b!5727685 (=> res!2418074 e!3521732)))

(assert (=> b!5727685 (= res!2418074 (not ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5727686 () Bool)

(declare-fun e!3521716 () Bool)

(assert (=> b!5727686 (= e!3521726 e!3521716)))

(declare-fun res!2418075 () Bool)

(assert (=> b!5727686 (=> res!2418075 e!3521716)))

(declare-fun lt!2279747 () tuple2!65648)

(declare-fun ++!13927 (List!63482 List!63482) List!63482)

(assert (=> b!5727686 (= res!2418075 (not (= s!2326 (++!13927 (_1!36127 lt!2279747) (_2!36127 lt!2279747)))))))

(declare-fun lt!2279735 () Option!15736)

(declare-fun get!21846 (Option!15736) tuple2!65648)

(assert (=> b!5727686 (= lt!2279747 (get!21846 lt!2279735))))

(assert (=> b!5727686 (isDefined!12439 lt!2279735)))

(declare-fun findConcatSeparationZippers!114 ((InoxSet Context!10222) (InoxSet Context!10222) List!63482 List!63482 List!63482) Option!15736)

(assert (=> b!5727686 (= lt!2279735 (findConcatSeparationZippers!114 lt!2279752 lt!2279760 Nil!63358 s!2326 s!2326))))

(declare-fun lt!2279757 () Unit!156440)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!114 ((InoxSet Context!10222) Context!10222 List!63482) Unit!156440)

(assert (=> b!5727686 (= lt!2279757 (lemmaConcatZipperMatchesStringThenFindConcatDefined!114 lt!2279752 lt!2279725 s!2326))))

(declare-fun b!5727687 () Bool)

(declare-fun tp!1585748 () Bool)

(assert (=> b!5727687 (= e!3521718 tp!1585748)))

(declare-fun b!5727688 () Bool)

(assert (=> b!5727688 (= e!3521722 e!3521725)))

(declare-fun res!2418097 () Bool)

(assert (=> b!5727688 (=> (not res!2418097) (not e!3521725))))

(assert (=> b!5727688 (= res!2418097 (= r!7292 lt!2279745))))

(assert (=> b!5727688 (= lt!2279745 (unfocusZipper!1469 zl!343))))

(declare-fun b!5727689 () Bool)

(declare-fun res!2418096 () Bool)

(assert (=> b!5727689 (=> res!2418096 e!3521724)))

(assert (=> b!5727689 (= res!2418096 e!3521735)))

(declare-fun res!2418081 () Bool)

(assert (=> b!5727689 (=> (not res!2418081) (not e!3521735))))

(assert (=> b!5727689 (= res!2418081 ((_ is Concat!24572) (regOne!31966 r!7292)))))

(assert (=> b!5727690 (= e!3521723 e!3521724)))

(declare-fun res!2418080 () Bool)

(assert (=> b!5727690 (=> res!2418080 e!3521724)))

(assert (=> b!5727690 (= res!2418080 (or (and ((_ is ElementMatch!15727) (regOne!31966 r!7292)) (= (c!1010515 (regOne!31966 r!7292)) (h!69806 s!2326))) ((_ is Union!15727) (regOne!31966 r!7292))))))

(declare-fun lt!2279755 () Unit!156440)

(assert (=> b!5727690 (= lt!2279755 e!3521734)))

(declare-fun c!1010514 () Bool)

(assert (=> b!5727690 (= c!1010514 lt!2279733)))

(assert (=> b!5727690 (= lt!2279733 (nullable!5759 (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(assert (=> b!5727690 (= (flatMap!1340 z!1189 lambda!309755) (derivationStepZipperUp!995 (h!69805 zl!343) (h!69806 s!2326)))))

(declare-fun lt!2279738 () Unit!156440)

(assert (=> b!5727690 (= lt!2279738 (lemmaFlatMapOnSingletonSet!872 z!1189 (h!69805 zl!343) lambda!309755))))

(declare-fun lt!2279741 () Context!10222)

(assert (=> b!5727690 (= lt!2279740 (derivationStepZipperUp!995 lt!2279741 (h!69806 s!2326)))))

(assert (=> b!5727690 (= lt!2279727 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 (h!69805 zl!343))) lt!2279741 (h!69806 s!2326)))))

(assert (=> b!5727690 (= lt!2279741 (Context!10223 (t!376808 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun lt!2279730 () (InoxSet Context!10222))

(assert (=> b!5727690 (= lt!2279730 (derivationStepZipperUp!995 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343))))) (h!69806 s!2326)))))

(declare-fun b!5727691 () Bool)

(declare-fun e!3521730 () Bool)

(assert (=> b!5727691 (= e!3521721 e!3521730)))

(declare-fun res!2418079 () Bool)

(assert (=> b!5727691 (=> res!2418079 e!3521730)))

(assert (=> b!5727691 (= res!2418079 (not (= r!7292 lt!2279759)))))

(assert (=> b!5727691 (= lt!2279759 (Concat!24572 lt!2279761 (regTwo!31966 r!7292)))))

(declare-fun b!5727692 () Bool)

(assert (=> b!5727692 (= e!3521716 (matchZipper!1865 lt!2279752 (_1!36127 lt!2279747)))))

(declare-fun b!5727693 () Bool)

(assert (=> b!5727693 (= e!3521731 (not (matchZipper!1865 lt!2279740 (t!376810 s!2326))))))

(declare-fun b!5727694 () Bool)

(declare-fun tp!1585746 () Bool)

(assert (=> b!5727694 (= e!3521733 tp!1585746)))

(declare-fun b!5727695 () Bool)

(assert (=> b!5727695 (= e!3521730 e!3521738)))

(declare-fun res!2418091 () Bool)

(assert (=> b!5727695 (=> res!2418091 e!3521738)))

(assert (=> b!5727695 (= res!2418091 (not (= (unfocusZipper!1469 (Cons!63357 lt!2279753 Nil!63357)) lt!2279762)))))

(assert (=> b!5727695 (= lt!2279762 (Concat!24572 (reg!16056 (regOne!31966 r!7292)) lt!2279759))))

(declare-fun b!5727696 () Bool)

(declare-fun tp!1585751 () Bool)

(declare-fun tp!1585747 () Bool)

(assert (=> b!5727696 (= e!3521733 (and tp!1585751 tp!1585747))))

(declare-fun b!5727697 () Bool)

(declare-fun res!2418089 () Bool)

(assert (=> b!5727697 (=> (not res!2418089) (not e!3521722))))

(declare-fun toList!9511 ((InoxSet Context!10222)) List!63481)

(assert (=> b!5727697 (= res!2418089 (= (toList!9511 z!1189) zl!343))))

(assert (= (and start!589492 res!2418087) b!5727697))

(assert (= (and b!5727697 res!2418089) b!5727688))

(assert (= (and b!5727688 res!2418097) b!5727669))

(assert (= (and b!5727669 (not res!2418102)) b!5727659))

(assert (= (and b!5727659 (not res!2418100)) b!5727681))

(assert (= (and b!5727681 (not res!2418105)) b!5727685))

(assert (= (and b!5727685 (not res!2418074)) b!5727675))

(assert (= (and b!5727675 (not res!2418085)) b!5727661))

(assert (= (and b!5727661 (not res!2418078)) b!5727667))

(assert (= (and b!5727667 (not res!2418076)) b!5727664))

(assert (= (and b!5727664 (not res!2418101)) b!5727690))

(assert (= (and b!5727690 c!1010514) b!5727660))

(assert (= (and b!5727690 (not c!1010514)) b!5727662))

(assert (= (and b!5727660 (not res!2418104)) b!5727684))

(assert (= (and b!5727690 (not res!2418080)) b!5727689))

(assert (= (and b!5727689 res!2418081) b!5727668))

(assert (= (and b!5727689 (not res!2418096)) b!5727670))

(assert (= (and b!5727670 (not res!2418077)) b!5727679))

(assert (= (and b!5727679 (not res!2418094)) b!5727683))

(assert (= (and b!5727683 (not res!2418082)) b!5727680))

(assert (= (and b!5727680 (not res!2418098)) b!5727656))

(assert (= (and b!5727656 (not res!2418099)) b!5727691))

(assert (= (and b!5727691 (not res!2418079)) b!5727695))

(assert (= (and b!5727695 (not res!2418091)) b!5727658))

(assert (= (and b!5727658 (not res!2418092)) b!5727677))

(assert (= (and b!5727677 (not res!2418095)) b!5727674))

(assert (= (and b!5727674 (not res!2418093)) b!5727671))

(assert (= (and b!5727671 (not res!2418084)) b!5727657))

(assert (= (and b!5727657 (not res!2418088)) b!5727666))

(assert (= (and b!5727666 res!2418083) b!5727693))

(assert (= (and b!5727666 (not res!2418086)) b!5727676))

(assert (= (and b!5727676 (not res!2418090)) b!5727673))

(assert (= (and b!5727673 (not res!2418103)) b!5727686))

(assert (= (and b!5727686 (not res!2418075)) b!5727692))

(assert (= (and start!589492 ((_ is ElementMatch!15727) r!7292)) b!5727682))

(assert (= (and start!589492 ((_ is Concat!24572) r!7292)) b!5727678))

(assert (= (and start!589492 ((_ is Star!15727) r!7292)) b!5727694))

(assert (= (and start!589492 ((_ is Union!15727) r!7292)) b!5727696))

(assert (= (and start!589492 condSetEmpty!38413) setIsEmpty!38413))

(assert (= (and start!589492 (not condSetEmpty!38413)) setNonEmpty!38413))

(assert (= setNonEmpty!38413 b!5727672))

(assert (= b!5727663 b!5727687))

(assert (= (and start!589492 ((_ is Cons!63357) zl!343)) b!5727663))

(assert (= (and start!589492 ((_ is Cons!63358) s!2326)) b!5727665))

(declare-fun m!6679970 () Bool)

(assert (=> b!5727669 m!6679970))

(declare-fun m!6679972 () Bool)

(assert (=> b!5727669 m!6679972))

(declare-fun m!6679974 () Bool)

(assert (=> b!5727669 m!6679974))

(declare-fun m!6679976 () Bool)

(assert (=> b!5727681 m!6679976))

(declare-fun m!6679978 () Bool)

(assert (=> b!5727677 m!6679978))

(declare-fun m!6679980 () Bool)

(assert (=> b!5727668 m!6679980))

(declare-fun m!6679982 () Bool)

(assert (=> b!5727673 m!6679982))

(declare-fun m!6679984 () Bool)

(assert (=> b!5727673 m!6679984))

(declare-fun m!6679986 () Bool)

(assert (=> b!5727673 m!6679986))

(declare-fun m!6679988 () Bool)

(assert (=> b!5727673 m!6679988))

(declare-fun m!6679990 () Bool)

(assert (=> b!5727673 m!6679990))

(declare-fun m!6679992 () Bool)

(assert (=> b!5727673 m!6679992))

(declare-fun m!6679994 () Bool)

(assert (=> b!5727671 m!6679994))

(declare-fun m!6679996 () Bool)

(assert (=> b!5727686 m!6679996))

(declare-fun m!6679998 () Bool)

(assert (=> b!5727686 m!6679998))

(declare-fun m!6680000 () Bool)

(assert (=> b!5727686 m!6680000))

(declare-fun m!6680002 () Bool)

(assert (=> b!5727686 m!6680002))

(declare-fun m!6680004 () Bool)

(assert (=> b!5727686 m!6680004))

(declare-fun m!6680006 () Bool)

(assert (=> b!5727674 m!6680006))

(declare-fun m!6680008 () Bool)

(assert (=> b!5727674 m!6680008))

(declare-fun m!6680010 () Bool)

(assert (=> b!5727674 m!6680010))

(declare-fun m!6680012 () Bool)

(assert (=> b!5727695 m!6680012))

(declare-fun m!6680014 () Bool)

(assert (=> b!5727666 m!6680014))

(declare-fun m!6680016 () Bool)

(assert (=> b!5727697 m!6680016))

(declare-fun m!6680018 () Bool)

(assert (=> b!5727664 m!6680018))

(declare-fun m!6680020 () Bool)

(assert (=> b!5727663 m!6680020))

(declare-fun m!6680022 () Bool)

(assert (=> b!5727660 m!6680022))

(assert (=> b!5727660 m!6680014))

(declare-fun m!6680024 () Bool)

(assert (=> b!5727660 m!6680024))

(declare-fun m!6680026 () Bool)

(assert (=> b!5727680 m!6680026))

(declare-fun m!6680028 () Bool)

(assert (=> b!5727680 m!6680028))

(declare-fun m!6680030 () Bool)

(assert (=> b!5727667 m!6680030))

(declare-fun m!6680032 () Bool)

(assert (=> b!5727667 m!6680032))

(declare-fun m!6680034 () Bool)

(assert (=> b!5727667 m!6680034))

(assert (=> b!5727667 m!6680034))

(declare-fun m!6680036 () Bool)

(assert (=> b!5727667 m!6680036))

(declare-fun m!6680038 () Bool)

(assert (=> b!5727667 m!6680038))

(assert (=> b!5727667 m!6680030))

(declare-fun m!6680040 () Bool)

(assert (=> b!5727667 m!6680040))

(declare-fun m!6680042 () Bool)

(assert (=> b!5727690 m!6680042))

(declare-fun m!6680044 () Bool)

(assert (=> b!5727690 m!6680044))

(declare-fun m!6680046 () Bool)

(assert (=> b!5727690 m!6680046))

(declare-fun m!6680048 () Bool)

(assert (=> b!5727690 m!6680048))

(declare-fun m!6680050 () Bool)

(assert (=> b!5727690 m!6680050))

(declare-fun m!6680052 () Bool)

(assert (=> b!5727690 m!6680052))

(declare-fun m!6680054 () Bool)

(assert (=> b!5727690 m!6680054))

(declare-fun m!6680056 () Bool)

(assert (=> b!5727688 m!6680056))

(declare-fun m!6680058 () Bool)

(assert (=> b!5727693 m!6680058))

(declare-fun m!6680060 () Bool)

(assert (=> b!5727679 m!6680060))

(declare-fun m!6680062 () Bool)

(assert (=> b!5727692 m!6680062))

(declare-fun m!6680064 () Bool)

(assert (=> setNonEmpty!38413 m!6680064))

(assert (=> b!5727684 m!6680058))

(declare-fun m!6680066 () Bool)

(assert (=> start!589492 m!6680066))

(declare-fun m!6680068 () Bool)

(assert (=> b!5727675 m!6680068))

(assert (=> b!5727675 m!6680068))

(declare-fun m!6680070 () Bool)

(assert (=> b!5727675 m!6680070))

(declare-fun m!6680072 () Bool)

(assert (=> b!5727659 m!6680072))

(declare-fun m!6680074 () Bool)

(assert (=> b!5727683 m!6680074))

(declare-fun m!6680076 () Bool)

(assert (=> b!5727683 m!6680076))

(declare-fun m!6680078 () Bool)

(assert (=> b!5727683 m!6680078))

(declare-fun m!6680080 () Bool)

(assert (=> b!5727683 m!6680080))

(declare-fun m!6680082 () Bool)

(assert (=> b!5727683 m!6680082))

(declare-fun m!6680084 () Bool)

(assert (=> b!5727658 m!6680084))

(declare-fun m!6680086 () Bool)

(assert (=> b!5727658 m!6680086))

(declare-fun m!6680088 () Bool)

(assert (=> b!5727658 m!6680088))

(declare-fun m!6680090 () Bool)

(assert (=> b!5727658 m!6680090))

(declare-fun m!6680092 () Bool)

(assert (=> b!5727658 m!6680092))

(declare-fun m!6680094 () Bool)

(assert (=> b!5727658 m!6680094))

(declare-fun m!6680096 () Bool)

(assert (=> b!5727658 m!6680096))

(declare-fun m!6680098 () Bool)

(assert (=> b!5727658 m!6680098))

(declare-fun m!6680100 () Bool)

(assert (=> b!5727658 m!6680100))

(check-sat (not b!5727658) (not b!5727664) (not b!5727694) (not b!5727688) (not b!5727675) (not b!5727667) (not b!5727681) (not b!5727659) (not b!5727697) (not b!5727671) (not b!5727674) (not b!5727669) (not b!5727680) (not b!5727683) (not b!5727663) (not b!5727695) (not b!5727684) (not b!5727696) (not b!5727660) (not b!5727677) (not b!5727686) (not b!5727692) (not b!5727666) (not b!5727679) (not setNonEmpty!38413) (not b!5727678) (not b!5727690) (not b!5727668) (not start!589492) (not b!5727665) (not b!5727687) tp_is_empty!40707 (not b!5727693) (not b!5727673) (not b!5727672))
(check-sat)
(get-model)

(declare-fun d!1806711 () Bool)

(declare-fun c!1010602 () Bool)

(declare-fun isEmpty!35236 (List!63482) Bool)

(assert (=> d!1806711 (= c!1010602 (isEmpty!35236 s!2326))))

(declare-fun e!3521875 () Bool)

(assert (=> d!1806711 (= (matchZipper!1865 z!1189 s!2326) e!3521875)))

(declare-fun b!5727950 () Bool)

(declare-fun nullableZipper!1673 ((InoxSet Context!10222)) Bool)

(assert (=> b!5727950 (= e!3521875 (nullableZipper!1673 z!1189))))

(declare-fun b!5727951 () Bool)

(declare-fun head!12126 (List!63482) C!31724)

(declare-fun tail!11221 (List!63482) List!63482)

(assert (=> b!5727951 (= e!3521875 (matchZipper!1865 (derivationStepZipper!1810 z!1189 (head!12126 s!2326)) (tail!11221 s!2326)))))

(assert (= (and d!1806711 c!1010602) b!5727950))

(assert (= (and d!1806711 (not c!1010602)) b!5727951))

(declare-fun m!6680286 () Bool)

(assert (=> d!1806711 m!6680286))

(declare-fun m!6680290 () Bool)

(assert (=> b!5727950 m!6680290))

(declare-fun m!6680292 () Bool)

(assert (=> b!5727951 m!6680292))

(assert (=> b!5727951 m!6680292))

(declare-fun m!6680298 () Bool)

(assert (=> b!5727951 m!6680298))

(declare-fun m!6680300 () Bool)

(assert (=> b!5727951 m!6680300))

(assert (=> b!5727951 m!6680298))

(assert (=> b!5727951 m!6680300))

(declare-fun m!6680304 () Bool)

(assert (=> b!5727951 m!6680304))

(assert (=> b!5727671 d!1806711))

(declare-fun d!1806729 () Bool)

(declare-fun dynLambda!24795 (Int Context!10222) (InoxSet Context!10222))

(assert (=> d!1806729 (= (flatMap!1340 z!1189 lambda!309755) (dynLambda!24795 lambda!309755 (h!69805 zl!343)))))

(declare-fun lt!2279804 () Unit!156440)

(declare-fun choose!43323 ((InoxSet Context!10222) Context!10222 Int) Unit!156440)

(assert (=> d!1806729 (= lt!2279804 (choose!43323 z!1189 (h!69805 zl!343) lambda!309755))))

(assert (=> d!1806729 (= z!1189 (store ((as const (Array Context!10222 Bool)) false) (h!69805 zl!343) true))))

(assert (=> d!1806729 (= (lemmaFlatMapOnSingletonSet!872 z!1189 (h!69805 zl!343) lambda!309755) lt!2279804)))

(declare-fun b_lambda!216455 () Bool)

(assert (=> (not b_lambda!216455) (not d!1806729)))

(declare-fun bs!1339262 () Bool)

(assert (= bs!1339262 d!1806729))

(assert (=> bs!1339262 m!6680054))

(declare-fun m!6680328 () Bool)

(assert (=> bs!1339262 m!6680328))

(declare-fun m!6680330 () Bool)

(assert (=> bs!1339262 m!6680330))

(declare-fun m!6680332 () Bool)

(assert (=> bs!1339262 m!6680332))

(assert (=> b!5727690 d!1806729))

(declare-fun d!1806737 () Bool)

(declare-fun nullableFct!1819 (Regex!15727) Bool)

(assert (=> d!1806737 (= (nullable!5759 (h!69804 (exprs!5611 (h!69805 zl!343)))) (nullableFct!1819 (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun bs!1339263 () Bool)

(assert (= bs!1339263 d!1806737))

(declare-fun m!6680334 () Bool)

(assert (=> bs!1339263 m!6680334))

(assert (=> b!5727690 d!1806737))

(declare-fun bm!437944 () Bool)

(declare-fun call!437949 () (InoxSet Context!10222))

(assert (=> bm!437944 (= call!437949 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343))))))) (Context!10223 (t!376808 (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343)))))))) (h!69806 s!2326)))))

(declare-fun b!5727997 () Bool)

(declare-fun e!3521903 () Bool)

(assert (=> b!5727997 (= e!3521903 (nullable!5759 (h!69804 (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343)))))))))))

(declare-fun b!5727998 () Bool)

(declare-fun e!3521904 () (InoxSet Context!10222))

(assert (=> b!5727998 (= e!3521904 ((_ map or) call!437949 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343)))))))) (h!69806 s!2326))))))

(declare-fun d!1806739 () Bool)

(declare-fun c!1010619 () Bool)

(assert (=> d!1806739 (= c!1010619 e!3521903)))

(declare-fun res!2418195 () Bool)

(assert (=> d!1806739 (=> (not res!2418195) (not e!3521903))))

(assert (=> d!1806739 (= res!2418195 ((_ is Cons!63356) (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343))))))))))

(assert (=> d!1806739 (= (derivationStepZipperUp!995 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343))))) (h!69806 s!2326)) e!3521904)))

(declare-fun b!5727999 () Bool)

(declare-fun e!3521902 () (InoxSet Context!10222))

(assert (=> b!5727999 (= e!3521904 e!3521902)))

(declare-fun c!1010618 () Bool)

(assert (=> b!5727999 (= c!1010618 ((_ is Cons!63356) (exprs!5611 (Context!10223 (Cons!63356 (h!69804 (exprs!5611 (h!69805 zl!343))) (t!376808 (exprs!5611 (h!69805 zl!343))))))))))

(declare-fun b!5728000 () Bool)

(assert (=> b!5728000 (= e!3521902 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728001 () Bool)

(assert (=> b!5728001 (= e!3521902 call!437949)))

(assert (= (and d!1806739 res!2418195) b!5727997))

(assert (= (and d!1806739 c!1010619) b!5727998))

(assert (= (and d!1806739 (not c!1010619)) b!5727999))

(assert (= (and b!5727999 c!1010618) b!5728001))

(assert (= (and b!5727999 (not c!1010618)) b!5728000))

(assert (= (or b!5727998 b!5728001) bm!437944))

(declare-fun m!6680336 () Bool)

(assert (=> bm!437944 m!6680336))

(declare-fun m!6680338 () Bool)

(assert (=> b!5727997 m!6680338))

(declare-fun m!6680340 () Bool)

(assert (=> b!5727998 m!6680340))

(assert (=> b!5727690 d!1806739))

(declare-fun bm!437945 () Bool)

(declare-fun call!437950 () (InoxSet Context!10222))

(assert (=> bm!437945 (= call!437950 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 lt!2279741)) (Context!10223 (t!376808 (exprs!5611 lt!2279741))) (h!69806 s!2326)))))

(declare-fun b!5728011 () Bool)

(declare-fun e!3521911 () Bool)

(assert (=> b!5728011 (= e!3521911 (nullable!5759 (h!69804 (exprs!5611 lt!2279741))))))

(declare-fun b!5728012 () Bool)

(declare-fun e!3521912 () (InoxSet Context!10222))

(assert (=> b!5728012 (= e!3521912 ((_ map or) call!437950 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 lt!2279741))) (h!69806 s!2326))))))

(declare-fun d!1806741 () Bool)

(declare-fun c!1010623 () Bool)

(assert (=> d!1806741 (= c!1010623 e!3521911)))

(declare-fun res!2418201 () Bool)

(assert (=> d!1806741 (=> (not res!2418201) (not e!3521911))))

(assert (=> d!1806741 (= res!2418201 ((_ is Cons!63356) (exprs!5611 lt!2279741)))))

(assert (=> d!1806741 (= (derivationStepZipperUp!995 lt!2279741 (h!69806 s!2326)) e!3521912)))

(declare-fun b!5728013 () Bool)

(declare-fun e!3521910 () (InoxSet Context!10222))

(assert (=> b!5728013 (= e!3521912 e!3521910)))

(declare-fun c!1010622 () Bool)

(assert (=> b!5728013 (= c!1010622 ((_ is Cons!63356) (exprs!5611 lt!2279741)))))

(declare-fun b!5728014 () Bool)

(assert (=> b!5728014 (= e!3521910 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728015 () Bool)

(assert (=> b!5728015 (= e!3521910 call!437950)))

(assert (= (and d!1806741 res!2418201) b!5728011))

(assert (= (and d!1806741 c!1010623) b!5728012))

(assert (= (and d!1806741 (not c!1010623)) b!5728013))

(assert (= (and b!5728013 c!1010622) b!5728015))

(assert (= (and b!5728013 (not c!1010622)) b!5728014))

(assert (= (or b!5728012 b!5728015) bm!437945))

(declare-fun m!6680356 () Bool)

(assert (=> bm!437945 m!6680356))

(declare-fun m!6680360 () Bool)

(assert (=> b!5728011 m!6680360))

(declare-fun m!6680364 () Bool)

(assert (=> b!5728012 m!6680364))

(assert (=> b!5727690 d!1806741))

(declare-fun d!1806743 () Bool)

(declare-fun choose!43324 ((InoxSet Context!10222) Int) (InoxSet Context!10222))

(assert (=> d!1806743 (= (flatMap!1340 z!1189 lambda!309755) (choose!43324 z!1189 lambda!309755))))

(declare-fun bs!1339266 () Bool)

(assert (= bs!1339266 d!1806743))

(declare-fun m!6680376 () Bool)

(assert (=> bs!1339266 m!6680376))

(assert (=> b!5727690 d!1806743))

(declare-fun b!5728050 () Bool)

(declare-fun e!3521935 () Bool)

(assert (=> b!5728050 (= e!3521935 (nullable!5759 (regOne!31966 (h!69804 (exprs!5611 (h!69805 zl!343))))))))

(declare-fun b!5728051 () Bool)

(declare-fun e!3521934 () (InoxSet Context!10222))

(declare-fun call!437965 () (InoxSet Context!10222))

(declare-fun call!437964 () (InoxSet Context!10222))

(assert (=> b!5728051 (= e!3521934 ((_ map or) call!437965 call!437964))))

(declare-fun b!5728052 () Bool)

(declare-fun e!3521933 () (InoxSet Context!10222))

(declare-fun call!437963 () (InoxSet Context!10222))

(assert (=> b!5728052 (= e!3521933 call!437963)))

(declare-fun b!5728053 () Bool)

(declare-fun c!1010634 () Bool)

(assert (=> b!5728053 (= c!1010634 ((_ is Star!15727) (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun e!3521931 () (InoxSet Context!10222))

(assert (=> b!5728053 (= e!3521931 e!3521933)))

(declare-fun b!5728054 () Bool)

(assert (=> b!5728054 (= e!3521931 call!437963)))

(declare-fun b!5728055 () Bool)

(declare-fun e!3521936 () (InoxSet Context!10222))

(assert (=> b!5728055 (= e!3521936 (store ((as const (Array Context!10222 Bool)) false) lt!2279741 true))))

(declare-fun bm!437959 () Bool)

(declare-fun call!437966 () (InoxSet Context!10222))

(assert (=> bm!437959 (= call!437963 call!437966)))

(declare-fun b!5728056 () Bool)

(declare-fun c!1010636 () Bool)

(assert (=> b!5728056 (= c!1010636 e!3521935)))

(declare-fun res!2418216 () Bool)

(assert (=> b!5728056 (=> (not res!2418216) (not e!3521935))))

(assert (=> b!5728056 (= res!2418216 ((_ is Concat!24572) (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun e!3521932 () (InoxSet Context!10222))

(assert (=> b!5728056 (= e!3521934 e!3521932)))

(declare-fun bm!437960 () Bool)

(assert (=> bm!437960 (= call!437966 call!437964)))

(declare-fun b!5728057 () Bool)

(assert (=> b!5728057 (= e!3521932 e!3521931)))

(declare-fun c!1010637 () Bool)

(assert (=> b!5728057 (= c!1010637 ((_ is Concat!24572) (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun call!437968 () List!63480)

(declare-fun bm!437961 () Bool)

(declare-fun c!1010635 () Bool)

(assert (=> bm!437961 (= call!437965 (derivationStepZipperDown!1069 (ite c!1010635 (regOne!31967 (h!69804 (exprs!5611 (h!69805 zl!343)))) (regOne!31966 (h!69804 (exprs!5611 (h!69805 zl!343))))) (ite c!1010635 lt!2279741 (Context!10223 call!437968)) (h!69806 s!2326)))))

(declare-fun bm!437962 () Bool)

(declare-fun call!437967 () List!63480)

(assert (=> bm!437962 (= call!437964 (derivationStepZipperDown!1069 (ite c!1010635 (regTwo!31967 (h!69804 (exprs!5611 (h!69805 zl!343)))) (ite c!1010636 (regTwo!31966 (h!69804 (exprs!5611 (h!69805 zl!343)))) (ite c!1010637 (regOne!31966 (h!69804 (exprs!5611 (h!69805 zl!343)))) (reg!16056 (h!69804 (exprs!5611 (h!69805 zl!343))))))) (ite (or c!1010635 c!1010636) lt!2279741 (Context!10223 call!437967)) (h!69806 s!2326)))))

(declare-fun bm!437958 () Bool)

(declare-fun $colon$colon!1740 (List!63480 Regex!15727) List!63480)

(assert (=> bm!437958 (= call!437968 ($colon$colon!1740 (exprs!5611 lt!2279741) (ite (or c!1010636 c!1010637) (regTwo!31966 (h!69804 (exprs!5611 (h!69805 zl!343)))) (h!69804 (exprs!5611 (h!69805 zl!343))))))))

(declare-fun d!1806751 () Bool)

(declare-fun c!1010638 () Bool)

(assert (=> d!1806751 (= c!1010638 (and ((_ is ElementMatch!15727) (h!69804 (exprs!5611 (h!69805 zl!343)))) (= (c!1010515 (h!69804 (exprs!5611 (h!69805 zl!343)))) (h!69806 s!2326))))))

(assert (=> d!1806751 (= (derivationStepZipperDown!1069 (h!69804 (exprs!5611 (h!69805 zl!343))) lt!2279741 (h!69806 s!2326)) e!3521936)))

(declare-fun b!5728058 () Bool)

(assert (=> b!5728058 (= e!3521936 e!3521934)))

(assert (=> b!5728058 (= c!1010635 ((_ is Union!15727) (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5728059 () Bool)

(assert (=> b!5728059 (= e!3521933 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728060 () Bool)

(assert (=> b!5728060 (= e!3521932 ((_ map or) call!437965 call!437966))))

(declare-fun bm!437963 () Bool)

(assert (=> bm!437963 (= call!437967 call!437968)))

(assert (= (and d!1806751 c!1010638) b!5728055))

(assert (= (and d!1806751 (not c!1010638)) b!5728058))

(assert (= (and b!5728058 c!1010635) b!5728051))

(assert (= (and b!5728058 (not c!1010635)) b!5728056))

(assert (= (and b!5728056 res!2418216) b!5728050))

(assert (= (and b!5728056 c!1010636) b!5728060))

(assert (= (and b!5728056 (not c!1010636)) b!5728057))

(assert (= (and b!5728057 c!1010637) b!5728054))

(assert (= (and b!5728057 (not c!1010637)) b!5728053))

(assert (= (and b!5728053 c!1010634) b!5728052))

(assert (= (and b!5728053 (not c!1010634)) b!5728059))

(assert (= (or b!5728054 b!5728052) bm!437963))

(assert (= (or b!5728054 b!5728052) bm!437959))

(assert (= (or b!5728060 bm!437963) bm!437958))

(assert (= (or b!5728060 bm!437959) bm!437960))

(assert (= (or b!5728051 bm!437960) bm!437962))

(assert (= (or b!5728051 b!5728060) bm!437961))

(declare-fun m!6680396 () Bool)

(assert (=> bm!437962 m!6680396))

(declare-fun m!6680398 () Bool)

(assert (=> b!5728055 m!6680398))

(declare-fun m!6680400 () Bool)

(assert (=> b!5728050 m!6680400))

(declare-fun m!6680402 () Bool)

(assert (=> bm!437958 m!6680402))

(declare-fun m!6680404 () Bool)

(assert (=> bm!437961 m!6680404))

(assert (=> b!5727690 d!1806751))

(declare-fun bm!437964 () Bool)

(declare-fun call!437969 () (InoxSet Context!10222))

(assert (=> bm!437964 (= call!437969 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 (h!69805 zl!343))) (Context!10223 (t!376808 (exprs!5611 (h!69805 zl!343)))) (h!69806 s!2326)))))

(declare-fun b!5728063 () Bool)

(declare-fun e!3521939 () Bool)

(assert (=> b!5728063 (= e!3521939 (nullable!5759 (h!69804 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5728064 () Bool)

(declare-fun e!3521940 () (InoxSet Context!10222))

(assert (=> b!5728064 (= e!3521940 ((_ map or) call!437969 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 (h!69805 zl!343)))) (h!69806 s!2326))))))

(declare-fun d!1806761 () Bool)

(declare-fun c!1010641 () Bool)

(assert (=> d!1806761 (= c!1010641 e!3521939)))

(declare-fun res!2418217 () Bool)

(assert (=> d!1806761 (=> (not res!2418217) (not e!3521939))))

(assert (=> d!1806761 (= res!2418217 ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343))))))

(assert (=> d!1806761 (= (derivationStepZipperUp!995 (h!69805 zl!343) (h!69806 s!2326)) e!3521940)))

(declare-fun b!5728065 () Bool)

(declare-fun e!3521938 () (InoxSet Context!10222))

(assert (=> b!5728065 (= e!3521940 e!3521938)))

(declare-fun c!1010640 () Bool)

(assert (=> b!5728065 (= c!1010640 ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343))))))

(declare-fun b!5728066 () Bool)

(assert (=> b!5728066 (= e!3521938 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728067 () Bool)

(assert (=> b!5728067 (= e!3521938 call!437969)))

(assert (= (and d!1806761 res!2418217) b!5728063))

(assert (= (and d!1806761 c!1010641) b!5728064))

(assert (= (and d!1806761 (not c!1010641)) b!5728065))

(assert (= (and b!5728065 c!1010640) b!5728067))

(assert (= (and b!5728065 (not c!1010640)) b!5728066))

(assert (= (or b!5728064 b!5728067) bm!437964))

(declare-fun m!6680406 () Bool)

(assert (=> bm!437964 m!6680406))

(assert (=> b!5728063 m!6680052))

(declare-fun m!6680410 () Bool)

(assert (=> b!5728064 m!6680410))

(assert (=> b!5727690 d!1806761))

(declare-fun bs!1339296 () Bool)

(declare-fun b!5728137 () Bool)

(assert (= bs!1339296 (and b!5728137 b!5727667)))

(declare-fun lambda!309798 () Int)

(assert (=> bs!1339296 (not (= lambda!309798 lambda!309753))))

(assert (=> bs!1339296 (not (= lambda!309798 lambda!309754))))

(assert (=> b!5728137 true))

(assert (=> b!5728137 true))

(declare-fun bs!1339297 () Bool)

(declare-fun b!5728133 () Bool)

(assert (= bs!1339297 (and b!5728133 b!5727667)))

(declare-fun lambda!309799 () Int)

(assert (=> bs!1339297 (not (= lambda!309799 lambda!309753))))

(assert (=> bs!1339297 (= lambda!309799 lambda!309754)))

(declare-fun bs!1339298 () Bool)

(assert (= bs!1339298 (and b!5728133 b!5728137)))

(assert (=> bs!1339298 (not (= lambda!309799 lambda!309798))))

(assert (=> b!5728133 true))

(assert (=> b!5728133 true))

(declare-fun d!1806765 () Bool)

(declare-fun c!1010660 () Bool)

(assert (=> d!1806765 (= c!1010660 ((_ is EmptyExpr!15727) r!7292))))

(declare-fun e!3521977 () Bool)

(assert (=> d!1806765 (= (matchRSpec!2830 r!7292 s!2326) e!3521977)))

(declare-fun b!5728128 () Bool)

(declare-fun e!3521980 () Bool)

(assert (=> b!5728128 (= e!3521977 e!3521980)))

(declare-fun res!2418244 () Bool)

(assert (=> b!5728128 (= res!2418244 (not ((_ is EmptyLang!15727) r!7292)))))

(assert (=> b!5728128 (=> (not res!2418244) (not e!3521980))))

(declare-fun b!5728129 () Bool)

(declare-fun c!1010663 () Bool)

(assert (=> b!5728129 (= c!1010663 ((_ is Union!15727) r!7292))))

(declare-fun e!3521979 () Bool)

(declare-fun e!3521976 () Bool)

(assert (=> b!5728129 (= e!3521979 e!3521976)))

(declare-fun b!5728130 () Bool)

(assert (=> b!5728130 (= e!3521979 (= s!2326 (Cons!63358 (c!1010515 r!7292) Nil!63358)))))

(declare-fun b!5728131 () Bool)

(declare-fun res!2418246 () Bool)

(declare-fun e!3521974 () Bool)

(assert (=> b!5728131 (=> res!2418246 e!3521974)))

(declare-fun call!437975 () Bool)

(assert (=> b!5728131 (= res!2418246 call!437975)))

(declare-fun e!3521978 () Bool)

(assert (=> b!5728131 (= e!3521978 e!3521974)))

(declare-fun b!5728132 () Bool)

(assert (=> b!5728132 (= e!3521977 call!437975)))

(declare-fun call!437976 () Bool)

(assert (=> b!5728133 (= e!3521978 call!437976)))

(declare-fun b!5728134 () Bool)

(declare-fun e!3521975 () Bool)

(assert (=> b!5728134 (= e!3521975 (matchRSpec!2830 (regTwo!31967 r!7292) s!2326))))

(declare-fun b!5728135 () Bool)

(declare-fun c!1010662 () Bool)

(assert (=> b!5728135 (= c!1010662 ((_ is ElementMatch!15727) r!7292))))

(assert (=> b!5728135 (= e!3521980 e!3521979)))

(declare-fun bm!437970 () Bool)

(assert (=> bm!437970 (= call!437975 (isEmpty!35236 s!2326))))

(declare-fun b!5728136 () Bool)

(assert (=> b!5728136 (= e!3521976 e!3521975)))

(declare-fun res!2418245 () Bool)

(assert (=> b!5728136 (= res!2418245 (matchRSpec!2830 (regOne!31967 r!7292) s!2326))))

(assert (=> b!5728136 (=> res!2418245 e!3521975)))

(declare-fun c!1010661 () Bool)

(declare-fun bm!437971 () Bool)

(assert (=> bm!437971 (= call!437976 (Exists!2827 (ite c!1010661 lambda!309798 lambda!309799)))))

(assert (=> b!5728137 (= e!3521974 call!437976)))

(declare-fun b!5728138 () Bool)

(assert (=> b!5728138 (= e!3521976 e!3521978)))

(assert (=> b!5728138 (= c!1010661 ((_ is Star!15727) r!7292))))

(assert (= (and d!1806765 c!1010660) b!5728132))

(assert (= (and d!1806765 (not c!1010660)) b!5728128))

(assert (= (and b!5728128 res!2418244) b!5728135))

(assert (= (and b!5728135 c!1010662) b!5728130))

(assert (= (and b!5728135 (not c!1010662)) b!5728129))

(assert (= (and b!5728129 c!1010663) b!5728136))

(assert (= (and b!5728129 (not c!1010663)) b!5728138))

(assert (= (and b!5728136 (not res!2418245)) b!5728134))

(assert (= (and b!5728138 c!1010661) b!5728131))

(assert (= (and b!5728138 (not c!1010661)) b!5728133))

(assert (= (and b!5728131 (not res!2418246)) b!5728137))

(assert (= (or b!5728137 b!5728133) bm!437971))

(assert (= (or b!5728132 b!5728131) bm!437970))

(declare-fun m!6680480 () Bool)

(assert (=> b!5728134 m!6680480))

(assert (=> bm!437970 m!6680286))

(declare-fun m!6680482 () Bool)

(assert (=> b!5728136 m!6680482))

(declare-fun m!6680484 () Bool)

(assert (=> bm!437971 m!6680484))

(assert (=> b!5727669 d!1806765))

(declare-fun b!5728185 () Bool)

(declare-fun res!2418276 () Bool)

(declare-fun e!3522009 () Bool)

(assert (=> b!5728185 (=> (not res!2418276) (not e!3522009))))

(declare-fun call!437979 () Bool)

(assert (=> b!5728185 (= res!2418276 (not call!437979))))

(declare-fun b!5728186 () Bool)

(declare-fun e!3522008 () Bool)

(declare-fun lt!2279839 () Bool)

(assert (=> b!5728186 (= e!3522008 (= lt!2279839 call!437979))))

(declare-fun b!5728187 () Bool)

(declare-fun res!2418278 () Bool)

(declare-fun e!3522007 () Bool)

(assert (=> b!5728187 (=> res!2418278 e!3522007)))

(assert (=> b!5728187 (= res!2418278 (not (isEmpty!35236 (tail!11221 s!2326))))))

(declare-fun b!5728188 () Bool)

(declare-fun e!3522011 () Bool)

(declare-fun derivativeStep!4526 (Regex!15727 C!31724) Regex!15727)

(assert (=> b!5728188 (= e!3522011 (matchR!7912 (derivativeStep!4526 r!7292 (head!12126 s!2326)) (tail!11221 s!2326)))))

(declare-fun b!5728189 () Bool)

(declare-fun e!3522010 () Bool)

(declare-fun e!3522006 () Bool)

(assert (=> b!5728189 (= e!3522010 e!3522006)))

(declare-fun res!2418280 () Bool)

(assert (=> b!5728189 (=> (not res!2418280) (not e!3522006))))

(assert (=> b!5728189 (= res!2418280 (not lt!2279839))))

(declare-fun d!1806797 () Bool)

(assert (=> d!1806797 e!3522008))

(declare-fun c!1010676 () Bool)

(assert (=> d!1806797 (= c!1010676 ((_ is EmptyExpr!15727) r!7292))))

(assert (=> d!1806797 (= lt!2279839 e!3522011)))

(declare-fun c!1010674 () Bool)

(assert (=> d!1806797 (= c!1010674 (isEmpty!35236 s!2326))))

(assert (=> d!1806797 (validRegex!7463 r!7292)))

(assert (=> d!1806797 (= (matchR!7912 r!7292 s!2326) lt!2279839)))

(declare-fun b!5728190 () Bool)

(assert (=> b!5728190 (= e!3522007 (not (= (head!12126 s!2326) (c!1010515 r!7292))))))

(declare-fun b!5728191 () Bool)

(declare-fun e!3522005 () Bool)

(assert (=> b!5728191 (= e!3522008 e!3522005)))

(declare-fun c!1010675 () Bool)

(assert (=> b!5728191 (= c!1010675 ((_ is EmptyLang!15727) r!7292))))

(declare-fun b!5728192 () Bool)

(assert (=> b!5728192 (= e!3522006 e!3522007)))

(declare-fun res!2418277 () Bool)

(assert (=> b!5728192 (=> res!2418277 e!3522007)))

(assert (=> b!5728192 (= res!2418277 call!437979)))

(declare-fun bm!437974 () Bool)

(assert (=> bm!437974 (= call!437979 (isEmpty!35236 s!2326))))

(declare-fun b!5728193 () Bool)

(assert (=> b!5728193 (= e!3522011 (nullable!5759 r!7292))))

(declare-fun b!5728194 () Bool)

(declare-fun res!2418273 () Bool)

(assert (=> b!5728194 (=> (not res!2418273) (not e!3522009))))

(assert (=> b!5728194 (= res!2418273 (isEmpty!35236 (tail!11221 s!2326)))))

(declare-fun b!5728195 () Bool)

(assert (=> b!5728195 (= e!3522009 (= (head!12126 s!2326) (c!1010515 r!7292)))))

(declare-fun b!5728196 () Bool)

(declare-fun res!2418275 () Bool)

(assert (=> b!5728196 (=> res!2418275 e!3522010)))

(assert (=> b!5728196 (= res!2418275 (not ((_ is ElementMatch!15727) r!7292)))))

(assert (=> b!5728196 (= e!3522005 e!3522010)))

(declare-fun b!5728197 () Bool)

(assert (=> b!5728197 (= e!3522005 (not lt!2279839))))

(declare-fun b!5728198 () Bool)

(declare-fun res!2418279 () Bool)

(assert (=> b!5728198 (=> res!2418279 e!3522010)))

(assert (=> b!5728198 (= res!2418279 e!3522009)))

(declare-fun res!2418274 () Bool)

(assert (=> b!5728198 (=> (not res!2418274) (not e!3522009))))

(assert (=> b!5728198 (= res!2418274 lt!2279839)))

(assert (= (and d!1806797 c!1010674) b!5728193))

(assert (= (and d!1806797 (not c!1010674)) b!5728188))

(assert (= (and d!1806797 c!1010676) b!5728186))

(assert (= (and d!1806797 (not c!1010676)) b!5728191))

(assert (= (and b!5728191 c!1010675) b!5728197))

(assert (= (and b!5728191 (not c!1010675)) b!5728196))

(assert (= (and b!5728196 (not res!2418275)) b!5728198))

(assert (= (and b!5728198 res!2418274) b!5728185))

(assert (= (and b!5728185 res!2418276) b!5728194))

(assert (= (and b!5728194 res!2418273) b!5728195))

(assert (= (and b!5728198 (not res!2418279)) b!5728189))

(assert (= (and b!5728189 res!2418280) b!5728192))

(assert (= (and b!5728192 (not res!2418277)) b!5728187))

(assert (= (and b!5728187 (not res!2418278)) b!5728190))

(assert (= (or b!5728186 b!5728185 b!5728192) bm!437974))

(assert (=> d!1806797 m!6680286))

(assert (=> d!1806797 m!6680066))

(assert (=> b!5728188 m!6680292))

(assert (=> b!5728188 m!6680292))

(declare-fun m!6680486 () Bool)

(assert (=> b!5728188 m!6680486))

(assert (=> b!5728188 m!6680300))

(assert (=> b!5728188 m!6680486))

(assert (=> b!5728188 m!6680300))

(declare-fun m!6680488 () Bool)

(assert (=> b!5728188 m!6680488))

(assert (=> b!5728194 m!6680300))

(assert (=> b!5728194 m!6680300))

(declare-fun m!6680490 () Bool)

(assert (=> b!5728194 m!6680490))

(assert (=> b!5728187 m!6680300))

(assert (=> b!5728187 m!6680300))

(assert (=> b!5728187 m!6680490))

(declare-fun m!6680492 () Bool)

(assert (=> b!5728193 m!6680492))

(assert (=> b!5728190 m!6680292))

(assert (=> b!5728195 m!6680292))

(assert (=> bm!437974 m!6680286))

(assert (=> b!5727669 d!1806797))

(declare-fun d!1806799 () Bool)

(assert (=> d!1806799 (= (matchR!7912 r!7292 s!2326) (matchRSpec!2830 r!7292 s!2326))))

(declare-fun lt!2279845 () Unit!156440)

(declare-fun choose!43329 (Regex!15727 List!63482) Unit!156440)

(assert (=> d!1806799 (= lt!2279845 (choose!43329 r!7292 s!2326))))

(assert (=> d!1806799 (validRegex!7463 r!7292)))

(assert (=> d!1806799 (= (mainMatchTheorem!2830 r!7292 s!2326) lt!2279845)))

(declare-fun bs!1339307 () Bool)

(assert (= bs!1339307 d!1806799))

(assert (=> bs!1339307 m!6679972))

(assert (=> bs!1339307 m!6679970))

(declare-fun m!6680512 () Bool)

(assert (=> bs!1339307 m!6680512))

(assert (=> bs!1339307 m!6680066))

(assert (=> b!5727669 d!1806799))

(declare-fun d!1806803 () Bool)

(assert (=> d!1806803 (= (nullable!5759 (regOne!31966 (regOne!31966 r!7292))) (nullableFct!1819 (regOne!31966 (regOne!31966 r!7292))))))

(declare-fun bs!1339309 () Bool)

(assert (= bs!1339309 d!1806803))

(declare-fun m!6680514 () Bool)

(assert (=> bs!1339309 m!6680514))

(assert (=> b!5727668 d!1806803))

(declare-fun d!1806805 () Bool)

(declare-fun lt!2279849 () Regex!15727)

(assert (=> d!1806805 (validRegex!7463 lt!2279849)))

(assert (=> d!1806805 (= lt!2279849 (generalisedUnion!1590 (unfocusZipperList!1155 zl!343)))))

(assert (=> d!1806805 (= (unfocusZipper!1469 zl!343) lt!2279849)))

(declare-fun bs!1339312 () Bool)

(assert (= bs!1339312 d!1806805))

(declare-fun m!6680523 () Bool)

(assert (=> bs!1339312 m!6680523))

(assert (=> bs!1339312 m!6680068))

(assert (=> bs!1339312 m!6680068))

(assert (=> bs!1339312 m!6680070))

(assert (=> b!5727688 d!1806805))

(declare-fun b!5728332 () Bool)

(declare-fun res!2418326 () Bool)

(declare-fun e!3522086 () Bool)

(assert (=> b!5728332 (=> (not res!2418326) (not e!3522086))))

(declare-fun lt!2279858 () Option!15736)

(assert (=> b!5728332 (= res!2418326 (matchR!7912 (regOne!31966 r!7292) (_1!36127 (get!21846 lt!2279858))))))

(declare-fun b!5728333 () Bool)

(declare-fun e!3522085 () Option!15736)

(assert (=> b!5728333 (= e!3522085 None!15735)))

(declare-fun b!5728334 () Bool)

(declare-fun res!2418323 () Bool)

(assert (=> b!5728334 (=> (not res!2418323) (not e!3522086))))

(assert (=> b!5728334 (= res!2418323 (matchR!7912 (regTwo!31966 r!7292) (_2!36127 (get!21846 lt!2279858))))))

(declare-fun b!5728335 () Bool)

(declare-fun e!3522087 () Bool)

(assert (=> b!5728335 (= e!3522087 (matchR!7912 (regTwo!31966 r!7292) s!2326))))

(declare-fun d!1806809 () Bool)

(declare-fun e!3522089 () Bool)

(assert (=> d!1806809 e!3522089))

(declare-fun res!2418322 () Bool)

(assert (=> d!1806809 (=> res!2418322 e!3522089)))

(assert (=> d!1806809 (= res!2418322 e!3522086)))

(declare-fun res!2418325 () Bool)

(assert (=> d!1806809 (=> (not res!2418325) (not e!3522086))))

(assert (=> d!1806809 (= res!2418325 (isDefined!12439 lt!2279858))))

(declare-fun e!3522088 () Option!15736)

(assert (=> d!1806809 (= lt!2279858 e!3522088)))

(declare-fun c!1010697 () Bool)

(assert (=> d!1806809 (= c!1010697 e!3522087)))

(declare-fun res!2418324 () Bool)

(assert (=> d!1806809 (=> (not res!2418324) (not e!3522087))))

(assert (=> d!1806809 (= res!2418324 (matchR!7912 (regOne!31966 r!7292) Nil!63358))))

(assert (=> d!1806809 (validRegex!7463 (regOne!31966 r!7292))))

(assert (=> d!1806809 (= (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) Nil!63358 s!2326 s!2326) lt!2279858)))

(declare-fun b!5728336 () Bool)

(assert (=> b!5728336 (= e!3522088 e!3522085)))

(declare-fun c!1010696 () Bool)

(assert (=> b!5728336 (= c!1010696 ((_ is Nil!63358) s!2326))))

(declare-fun b!5728337 () Bool)

(declare-fun lt!2279860 () Unit!156440)

(declare-fun lt!2279859 () Unit!156440)

(assert (=> b!5728337 (= lt!2279860 lt!2279859)))

(assert (=> b!5728337 (= (++!13927 (++!13927 Nil!63358 (Cons!63358 (h!69806 s!2326) Nil!63358)) (t!376810 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2076 (List!63482 C!31724 List!63482 List!63482) Unit!156440)

(assert (=> b!5728337 (= lt!2279859 (lemmaMoveElementToOtherListKeepsConcatEq!2076 Nil!63358 (h!69806 s!2326) (t!376810 s!2326) s!2326))))

(assert (=> b!5728337 (= e!3522085 (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) (++!13927 Nil!63358 (Cons!63358 (h!69806 s!2326) Nil!63358)) (t!376810 s!2326) s!2326))))

(declare-fun b!5728338 () Bool)

(assert (=> b!5728338 (= e!3522089 (not (isDefined!12439 lt!2279858)))))

(declare-fun b!5728339 () Bool)

(assert (=> b!5728339 (= e!3522086 (= (++!13927 (_1!36127 (get!21846 lt!2279858)) (_2!36127 (get!21846 lt!2279858))) s!2326))))

(declare-fun b!5728340 () Bool)

(assert (=> b!5728340 (= e!3522088 (Some!15735 (tuple2!65649 Nil!63358 s!2326)))))

(assert (= (and d!1806809 res!2418324) b!5728335))

(assert (= (and d!1806809 c!1010697) b!5728340))

(assert (= (and d!1806809 (not c!1010697)) b!5728336))

(assert (= (and b!5728336 c!1010696) b!5728333))

(assert (= (and b!5728336 (not c!1010696)) b!5728337))

(assert (= (and d!1806809 res!2418325) b!5728332))

(assert (= (and b!5728332 res!2418326) b!5728334))

(assert (= (and b!5728334 res!2418323) b!5728339))

(assert (= (and d!1806809 (not res!2418322)) b!5728338))

(declare-fun m!6680546 () Bool)

(assert (=> d!1806809 m!6680546))

(declare-fun m!6680548 () Bool)

(assert (=> d!1806809 m!6680548))

(declare-fun m!6680550 () Bool)

(assert (=> d!1806809 m!6680550))

(declare-fun m!6680552 () Bool)

(assert (=> b!5728334 m!6680552))

(declare-fun m!6680554 () Bool)

(assert (=> b!5728334 m!6680554))

(assert (=> b!5728339 m!6680552))

(declare-fun m!6680556 () Bool)

(assert (=> b!5728339 m!6680556))

(assert (=> b!5728338 m!6680546))

(declare-fun m!6680558 () Bool)

(assert (=> b!5728337 m!6680558))

(assert (=> b!5728337 m!6680558))

(declare-fun m!6680560 () Bool)

(assert (=> b!5728337 m!6680560))

(declare-fun m!6680562 () Bool)

(assert (=> b!5728337 m!6680562))

(assert (=> b!5728337 m!6680558))

(declare-fun m!6680564 () Bool)

(assert (=> b!5728337 m!6680564))

(declare-fun m!6680566 () Bool)

(assert (=> b!5728335 m!6680566))

(assert (=> b!5728332 m!6680552))

(declare-fun m!6680568 () Bool)

(assert (=> b!5728332 m!6680568))

(assert (=> b!5727667 d!1806809))

(declare-fun d!1806825 () Bool)

(declare-fun choose!43331 (Int) Bool)

(assert (=> d!1806825 (= (Exists!2827 lambda!309753) (choose!43331 lambda!309753))))

(declare-fun bs!1339319 () Bool)

(assert (= bs!1339319 d!1806825))

(declare-fun m!6680570 () Bool)

(assert (=> bs!1339319 m!6680570))

(assert (=> b!5727667 d!1806825))

(declare-fun d!1806827 () Bool)

(assert (=> d!1806827 (= (Exists!2827 lambda!309754) (choose!43331 lambda!309754))))

(declare-fun bs!1339320 () Bool)

(assert (= bs!1339320 d!1806827))

(declare-fun m!6680572 () Bool)

(assert (=> bs!1339320 m!6680572))

(assert (=> b!5727667 d!1806827))

(declare-fun bs!1339321 () Bool)

(declare-fun d!1806829 () Bool)

(assert (= bs!1339321 (and d!1806829 b!5727667)))

(declare-fun lambda!309804 () Int)

(assert (=> bs!1339321 (= lambda!309804 lambda!309753)))

(assert (=> bs!1339321 (not (= lambda!309804 lambda!309754))))

(declare-fun bs!1339322 () Bool)

(assert (= bs!1339322 (and d!1806829 b!5728137)))

(assert (=> bs!1339322 (not (= lambda!309804 lambda!309798))))

(declare-fun bs!1339323 () Bool)

(assert (= bs!1339323 (and d!1806829 b!5728133)))

(assert (=> bs!1339323 (not (= lambda!309804 lambda!309799))))

(assert (=> d!1806829 true))

(assert (=> d!1806829 true))

(assert (=> d!1806829 true))

(assert (=> d!1806829 (= (isDefined!12439 (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) Nil!63358 s!2326 s!2326)) (Exists!2827 lambda!309804))))

(declare-fun lt!2279863 () Unit!156440)

(declare-fun choose!43332 (Regex!15727 Regex!15727 List!63482) Unit!156440)

(assert (=> d!1806829 (= lt!2279863 (choose!43332 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326))))

(assert (=> d!1806829 (validRegex!7463 (regOne!31966 r!7292))))

(assert (=> d!1806829 (= (lemmaFindConcatSeparationEquivalentToExists!1914 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326) lt!2279863)))

(declare-fun bs!1339324 () Bool)

(assert (= bs!1339324 d!1806829))

(assert (=> bs!1339324 m!6680030))

(assert (=> bs!1339324 m!6680032))

(assert (=> bs!1339324 m!6680030))

(declare-fun m!6680574 () Bool)

(assert (=> bs!1339324 m!6680574))

(assert (=> bs!1339324 m!6680550))

(declare-fun m!6680576 () Bool)

(assert (=> bs!1339324 m!6680576))

(assert (=> b!5727667 d!1806829))

(declare-fun bs!1339325 () Bool)

(declare-fun d!1806831 () Bool)

(assert (= bs!1339325 (and d!1806831 d!1806829)))

(declare-fun lambda!309809 () Int)

(assert (=> bs!1339325 (= lambda!309809 lambda!309804)))

(declare-fun bs!1339326 () Bool)

(assert (= bs!1339326 (and d!1806831 b!5728133)))

(assert (=> bs!1339326 (not (= lambda!309809 lambda!309799))))

(declare-fun bs!1339327 () Bool)

(assert (= bs!1339327 (and d!1806831 b!5727667)))

(assert (=> bs!1339327 (= lambda!309809 lambda!309753)))

(assert (=> bs!1339327 (not (= lambda!309809 lambda!309754))))

(declare-fun bs!1339328 () Bool)

(assert (= bs!1339328 (and d!1806831 b!5728137)))

(assert (=> bs!1339328 (not (= lambda!309809 lambda!309798))))

(assert (=> d!1806831 true))

(assert (=> d!1806831 true))

(assert (=> d!1806831 true))

(declare-fun bs!1339329 () Bool)

(assert (= bs!1339329 d!1806831))

(declare-fun lambda!309810 () Int)

(assert (=> bs!1339329 (not (= lambda!309810 lambda!309809))))

(assert (=> bs!1339325 (not (= lambda!309810 lambda!309804))))

(assert (=> bs!1339326 (= lambda!309810 lambda!309799)))

(assert (=> bs!1339327 (not (= lambda!309810 lambda!309753))))

(assert (=> bs!1339327 (= lambda!309810 lambda!309754)))

(assert (=> bs!1339328 (not (= lambda!309810 lambda!309798))))

(assert (=> d!1806831 true))

(assert (=> d!1806831 true))

(assert (=> d!1806831 true))

(assert (=> d!1806831 (= (Exists!2827 lambda!309809) (Exists!2827 lambda!309810))))

(declare-fun lt!2279866 () Unit!156440)

(declare-fun choose!43333 (Regex!15727 Regex!15727 List!63482) Unit!156440)

(assert (=> d!1806831 (= lt!2279866 (choose!43333 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326))))

(assert (=> d!1806831 (validRegex!7463 (regOne!31966 r!7292))))

(assert (=> d!1806831 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1456 (regOne!31966 r!7292) (regTwo!31966 r!7292) s!2326) lt!2279866)))

(declare-fun m!6680578 () Bool)

(assert (=> bs!1339329 m!6680578))

(declare-fun m!6680580 () Bool)

(assert (=> bs!1339329 m!6680580))

(declare-fun m!6680582 () Bool)

(assert (=> bs!1339329 m!6680582))

(assert (=> bs!1339329 m!6680550))

(assert (=> b!5727667 d!1806831))

(declare-fun d!1806833 () Bool)

(declare-fun isEmpty!35238 (Option!15736) Bool)

(assert (=> d!1806833 (= (isDefined!12439 (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) Nil!63358 s!2326 s!2326)) (not (isEmpty!35238 (findConcatSeparation!2150 (regOne!31966 r!7292) (regTwo!31966 r!7292) Nil!63358 s!2326 s!2326))))))

(declare-fun bs!1339330 () Bool)

(assert (= bs!1339330 d!1806833))

(assert (=> bs!1339330 m!6680030))

(declare-fun m!6680584 () Bool)

(assert (=> bs!1339330 m!6680584))

(assert (=> b!5727667 d!1806833))

(declare-fun d!1806835 () Bool)

(declare-fun c!1010698 () Bool)

(assert (=> d!1806835 (= c!1010698 (isEmpty!35236 (t!376810 s!2326)))))

(declare-fun e!3522096 () Bool)

(assert (=> d!1806835 (= (matchZipper!1865 lt!2279727 (t!376810 s!2326)) e!3522096)))

(declare-fun b!5728353 () Bool)

(assert (=> b!5728353 (= e!3522096 (nullableZipper!1673 lt!2279727))))

(declare-fun b!5728354 () Bool)

(assert (=> b!5728354 (= e!3522096 (matchZipper!1865 (derivationStepZipper!1810 lt!2279727 (head!12126 (t!376810 s!2326))) (tail!11221 (t!376810 s!2326))))))

(assert (= (and d!1806835 c!1010698) b!5728353))

(assert (= (and d!1806835 (not c!1010698)) b!5728354))

(declare-fun m!6680586 () Bool)

(assert (=> d!1806835 m!6680586))

(declare-fun m!6680588 () Bool)

(assert (=> b!5728353 m!6680588))

(declare-fun m!6680590 () Bool)

(assert (=> b!5728354 m!6680590))

(assert (=> b!5728354 m!6680590))

(declare-fun m!6680592 () Bool)

(assert (=> b!5728354 m!6680592))

(declare-fun m!6680594 () Bool)

(assert (=> b!5728354 m!6680594))

(assert (=> b!5728354 m!6680592))

(assert (=> b!5728354 m!6680594))

(declare-fun m!6680596 () Bool)

(assert (=> b!5728354 m!6680596))

(assert (=> b!5727666 d!1806835))

(declare-fun b!5728373 () Bool)

(declare-fun res!2418353 () Bool)

(declare-fun e!3522110 () Bool)

(assert (=> b!5728373 (=> (not res!2418353) (not e!3522110))))

(declare-fun lt!2279875 () Option!15736)

(assert (=> b!5728373 (= res!2418353 (matchZipper!1865 lt!2279752 (_1!36127 (get!21846 lt!2279875))))))

(declare-fun b!5728374 () Bool)

(declare-fun e!3522109 () Bool)

(assert (=> b!5728374 (= e!3522109 (not (isDefined!12439 lt!2279875)))))

(declare-fun d!1806837 () Bool)

(assert (=> d!1806837 e!3522109))

(declare-fun res!2418352 () Bool)

(assert (=> d!1806837 (=> res!2418352 e!3522109)))

(assert (=> d!1806837 (= res!2418352 e!3522110)))

(declare-fun res!2418349 () Bool)

(assert (=> d!1806837 (=> (not res!2418349) (not e!3522110))))

(assert (=> d!1806837 (= res!2418349 (isDefined!12439 lt!2279875))))

(declare-fun e!3522111 () Option!15736)

(assert (=> d!1806837 (= lt!2279875 e!3522111)))

(declare-fun c!1010703 () Bool)

(declare-fun e!3522108 () Bool)

(assert (=> d!1806837 (= c!1010703 e!3522108)))

(declare-fun res!2418351 () Bool)

(assert (=> d!1806837 (=> (not res!2418351) (not e!3522108))))

(assert (=> d!1806837 (= res!2418351 (matchZipper!1865 lt!2279752 Nil!63358))))

(assert (=> d!1806837 (= (++!13927 Nil!63358 s!2326) s!2326)))

(assert (=> d!1806837 (= (findConcatSeparationZippers!114 lt!2279752 lt!2279760 Nil!63358 s!2326 s!2326) lt!2279875)))

(declare-fun b!5728375 () Bool)

(declare-fun e!3522107 () Option!15736)

(assert (=> b!5728375 (= e!3522111 e!3522107)))

(declare-fun c!1010704 () Bool)

(assert (=> b!5728375 (= c!1010704 ((_ is Nil!63358) s!2326))))

(declare-fun b!5728376 () Bool)

(assert (=> b!5728376 (= e!3522107 None!15735)))

(declare-fun b!5728377 () Bool)

(assert (=> b!5728377 (= e!3522110 (= (++!13927 (_1!36127 (get!21846 lt!2279875)) (_2!36127 (get!21846 lt!2279875))) s!2326))))

(declare-fun b!5728378 () Bool)

(declare-fun res!2418350 () Bool)

(assert (=> b!5728378 (=> (not res!2418350) (not e!3522110))))

(assert (=> b!5728378 (= res!2418350 (matchZipper!1865 lt!2279760 (_2!36127 (get!21846 lt!2279875))))))

(declare-fun b!5728379 () Bool)

(declare-fun lt!2279874 () Unit!156440)

(declare-fun lt!2279873 () Unit!156440)

(assert (=> b!5728379 (= lt!2279874 lt!2279873)))

(assert (=> b!5728379 (= (++!13927 (++!13927 Nil!63358 (Cons!63358 (h!69806 s!2326) Nil!63358)) (t!376810 s!2326)) s!2326)))

(assert (=> b!5728379 (= lt!2279873 (lemmaMoveElementToOtherListKeepsConcatEq!2076 Nil!63358 (h!69806 s!2326) (t!376810 s!2326) s!2326))))

(assert (=> b!5728379 (= e!3522107 (findConcatSeparationZippers!114 lt!2279752 lt!2279760 (++!13927 Nil!63358 (Cons!63358 (h!69806 s!2326) Nil!63358)) (t!376810 s!2326) s!2326))))

(declare-fun b!5728380 () Bool)

(assert (=> b!5728380 (= e!3522108 (matchZipper!1865 lt!2279760 s!2326))))

(declare-fun b!5728381 () Bool)

(assert (=> b!5728381 (= e!3522111 (Some!15735 (tuple2!65649 Nil!63358 s!2326)))))

(assert (= (and d!1806837 res!2418351) b!5728380))

(assert (= (and d!1806837 c!1010703) b!5728381))

(assert (= (and d!1806837 (not c!1010703)) b!5728375))

(assert (= (and b!5728375 c!1010704) b!5728376))

(assert (= (and b!5728375 (not c!1010704)) b!5728379))

(assert (= (and d!1806837 res!2418349) b!5728373))

(assert (= (and b!5728373 res!2418353) b!5728378))

(assert (= (and b!5728378 res!2418350) b!5728377))

(assert (= (and d!1806837 (not res!2418352)) b!5728374))

(declare-fun m!6680598 () Bool)

(assert (=> b!5728373 m!6680598))

(declare-fun m!6680600 () Bool)

(assert (=> b!5728373 m!6680600))

(assert (=> b!5728378 m!6680598))

(declare-fun m!6680602 () Bool)

(assert (=> b!5728378 m!6680602))

(declare-fun m!6680604 () Bool)

(assert (=> d!1806837 m!6680604))

(declare-fun m!6680606 () Bool)

(assert (=> d!1806837 m!6680606))

(declare-fun m!6680608 () Bool)

(assert (=> d!1806837 m!6680608))

(assert (=> b!5728379 m!6680558))

(assert (=> b!5728379 m!6680558))

(assert (=> b!5728379 m!6680560))

(assert (=> b!5728379 m!6680562))

(assert (=> b!5728379 m!6680558))

(declare-fun m!6680610 () Bool)

(assert (=> b!5728379 m!6680610))

(declare-fun m!6680612 () Bool)

(assert (=> b!5728380 m!6680612))

(assert (=> b!5728377 m!6680598))

(declare-fun m!6680614 () Bool)

(assert (=> b!5728377 m!6680614))

(assert (=> b!5728374 m!6680604))

(assert (=> b!5727686 d!1806837))

(declare-fun d!1806839 () Bool)

(assert (=> d!1806839 (= (get!21846 lt!2279735) (v!51790 lt!2279735))))

(assert (=> b!5727686 d!1806839))

(declare-fun d!1806841 () Bool)

(assert (=> d!1806841 (= (isDefined!12439 lt!2279735) (not (isEmpty!35238 lt!2279735)))))

(declare-fun bs!1339331 () Bool)

(assert (= bs!1339331 d!1806841))

(declare-fun m!6680616 () Bool)

(assert (=> bs!1339331 m!6680616))

(assert (=> b!5727686 d!1806841))

(declare-fun d!1806843 () Bool)

(declare-fun e!3522116 () Bool)

(assert (=> d!1806843 e!3522116))

(declare-fun res!2418358 () Bool)

(assert (=> d!1806843 (=> (not res!2418358) (not e!3522116))))

(declare-fun lt!2279878 () List!63482)

(declare-fun content!11526 (List!63482) (InoxSet C!31724))

(assert (=> d!1806843 (= res!2418358 (= (content!11526 lt!2279878) ((_ map or) (content!11526 (_1!36127 lt!2279747)) (content!11526 (_2!36127 lt!2279747)))))))

(declare-fun e!3522117 () List!63482)

(assert (=> d!1806843 (= lt!2279878 e!3522117)))

(declare-fun c!1010707 () Bool)

(assert (=> d!1806843 (= c!1010707 ((_ is Nil!63358) (_1!36127 lt!2279747)))))

(assert (=> d!1806843 (= (++!13927 (_1!36127 lt!2279747) (_2!36127 lt!2279747)) lt!2279878)))

(declare-fun b!5728393 () Bool)

(assert (=> b!5728393 (= e!3522116 (or (not (= (_2!36127 lt!2279747) Nil!63358)) (= lt!2279878 (_1!36127 lt!2279747))))))

(declare-fun b!5728392 () Bool)

(declare-fun res!2418359 () Bool)

(assert (=> b!5728392 (=> (not res!2418359) (not e!3522116))))

(declare-fun size!40040 (List!63482) Int)

(assert (=> b!5728392 (= res!2418359 (= (size!40040 lt!2279878) (+ (size!40040 (_1!36127 lt!2279747)) (size!40040 (_2!36127 lt!2279747)))))))

(declare-fun b!5728391 () Bool)

(assert (=> b!5728391 (= e!3522117 (Cons!63358 (h!69806 (_1!36127 lt!2279747)) (++!13927 (t!376810 (_1!36127 lt!2279747)) (_2!36127 lt!2279747))))))

(declare-fun b!5728390 () Bool)

(assert (=> b!5728390 (= e!3522117 (_2!36127 lt!2279747))))

(assert (= (and d!1806843 c!1010707) b!5728390))

(assert (= (and d!1806843 (not c!1010707)) b!5728391))

(assert (= (and d!1806843 res!2418358) b!5728392))

(assert (= (and b!5728392 res!2418359) b!5728393))

(declare-fun m!6680618 () Bool)

(assert (=> d!1806843 m!6680618))

(declare-fun m!6680620 () Bool)

(assert (=> d!1806843 m!6680620))

(declare-fun m!6680622 () Bool)

(assert (=> d!1806843 m!6680622))

(declare-fun m!6680624 () Bool)

(assert (=> b!5728392 m!6680624))

(declare-fun m!6680626 () Bool)

(assert (=> b!5728392 m!6680626))

(declare-fun m!6680628 () Bool)

(assert (=> b!5728392 m!6680628))

(declare-fun m!6680630 () Bool)

(assert (=> b!5728391 m!6680630))

(assert (=> b!5727686 d!1806843))

(declare-fun d!1806845 () Bool)

(assert (=> d!1806845 (isDefined!12439 (findConcatSeparationZippers!114 lt!2279752 (store ((as const (Array Context!10222 Bool)) false) lt!2279725 true) Nil!63358 s!2326 s!2326))))

(declare-fun lt!2279881 () Unit!156440)

(declare-fun choose!43334 ((InoxSet Context!10222) Context!10222 List!63482) Unit!156440)

(assert (=> d!1806845 (= lt!2279881 (choose!43334 lt!2279752 lt!2279725 s!2326))))

(assert (=> d!1806845 (matchZipper!1865 (appendTo!106 lt!2279752 lt!2279725) s!2326)))

(assert (=> d!1806845 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!114 lt!2279752 lt!2279725 s!2326) lt!2279881)))

(declare-fun bs!1339332 () Bool)

(assert (= bs!1339332 d!1806845))

(declare-fun m!6680632 () Bool)

(assert (=> bs!1339332 m!6680632))

(declare-fun m!6680634 () Bool)

(assert (=> bs!1339332 m!6680634))

(declare-fun m!6680636 () Bool)

(assert (=> bs!1339332 m!6680636))

(assert (=> bs!1339332 m!6679984))

(assert (=> bs!1339332 m!6680088))

(assert (=> bs!1339332 m!6680088))

(assert (=> bs!1339332 m!6680632))

(assert (=> bs!1339332 m!6679984))

(declare-fun m!6680638 () Bool)

(assert (=> bs!1339332 m!6680638))

(assert (=> b!5727686 d!1806845))

(declare-fun d!1806847 () Bool)

(assert (=> d!1806847 (= (isEmpty!35234 (t!376808 (exprs!5611 (h!69805 zl!343)))) ((_ is Nil!63356) (t!376808 (exprs!5611 (h!69805 zl!343)))))))

(assert (=> b!5727664 d!1806847))

(declare-fun d!1806849 () Bool)

(declare-fun c!1010708 () Bool)

(assert (=> d!1806849 (= c!1010708 (isEmpty!35236 (t!376810 s!2326)))))

(declare-fun e!3522118 () Bool)

(assert (=> d!1806849 (= (matchZipper!1865 lt!2279740 (t!376810 s!2326)) e!3522118)))

(declare-fun b!5728394 () Bool)

(assert (=> b!5728394 (= e!3522118 (nullableZipper!1673 lt!2279740))))

(declare-fun b!5728395 () Bool)

(assert (=> b!5728395 (= e!3522118 (matchZipper!1865 (derivationStepZipper!1810 lt!2279740 (head!12126 (t!376810 s!2326))) (tail!11221 (t!376810 s!2326))))))

(assert (= (and d!1806849 c!1010708) b!5728394))

(assert (= (and d!1806849 (not c!1010708)) b!5728395))

(assert (=> d!1806849 m!6680586))

(declare-fun m!6680640 () Bool)

(assert (=> b!5728394 m!6680640))

(assert (=> b!5728395 m!6680590))

(assert (=> b!5728395 m!6680590))

(declare-fun m!6680642 () Bool)

(assert (=> b!5728395 m!6680642))

(assert (=> b!5728395 m!6680594))

(assert (=> b!5728395 m!6680642))

(assert (=> b!5728395 m!6680594))

(declare-fun m!6680644 () Bool)

(assert (=> b!5728395 m!6680644))

(assert (=> b!5727684 d!1806849))

(declare-fun b!5728415 () Bool)

(declare-fun e!3522134 () Bool)

(declare-fun e!3522133 () Bool)

(assert (=> b!5728415 (= e!3522134 e!3522133)))

(declare-fun c!1010714 () Bool)

(assert (=> b!5728415 (= c!1010714 ((_ is Star!15727) r!7292))))

(declare-fun b!5728416 () Bool)

(declare-fun e!3522139 () Bool)

(declare-fun call!438000 () Bool)

(assert (=> b!5728416 (= e!3522139 call!438000)))

(declare-fun b!5728417 () Bool)

(declare-fun res!2418373 () Bool)

(declare-fun e!3522137 () Bool)

(assert (=> b!5728417 (=> res!2418373 e!3522137)))

(assert (=> b!5728417 (= res!2418373 (not ((_ is Concat!24572) r!7292)))))

(declare-fun e!3522135 () Bool)

(assert (=> b!5728417 (= e!3522135 e!3522137)))

(declare-fun b!5728418 () Bool)

(declare-fun e!3522136 () Bool)

(declare-fun call!437998 () Bool)

(assert (=> b!5728418 (= e!3522136 call!437998)))

(declare-fun b!5728419 () Bool)

(declare-fun res!2418370 () Bool)

(declare-fun e!3522138 () Bool)

(assert (=> b!5728419 (=> (not res!2418370) (not e!3522138))))

(declare-fun call!437999 () Bool)

(assert (=> b!5728419 (= res!2418370 call!437999)))

(assert (=> b!5728419 (= e!3522135 e!3522138)))

(declare-fun b!5728420 () Bool)

(assert (=> b!5728420 (= e!3522133 e!3522135)))

(declare-fun c!1010713 () Bool)

(assert (=> b!5728420 (= c!1010713 ((_ is Union!15727) r!7292))))

(declare-fun bm!437993 () Bool)

(assert (=> bm!437993 (= call!437998 (validRegex!7463 (ite c!1010713 (regTwo!31967 r!7292) (regTwo!31966 r!7292))))))

(declare-fun b!5728414 () Bool)

(assert (=> b!5728414 (= e!3522137 e!3522136)))

(declare-fun res!2418372 () Bool)

(assert (=> b!5728414 (=> (not res!2418372) (not e!3522136))))

(assert (=> b!5728414 (= res!2418372 call!437999)))

(declare-fun d!1806851 () Bool)

(declare-fun res!2418371 () Bool)

(assert (=> d!1806851 (=> res!2418371 e!3522134)))

(assert (=> d!1806851 (= res!2418371 ((_ is ElementMatch!15727) r!7292))))

(assert (=> d!1806851 (= (validRegex!7463 r!7292) e!3522134)))

(declare-fun bm!437994 () Bool)

(assert (=> bm!437994 (= call!437999 call!438000)))

(declare-fun b!5728421 () Bool)

(assert (=> b!5728421 (= e!3522138 call!437998)))

(declare-fun bm!437995 () Bool)

(assert (=> bm!437995 (= call!438000 (validRegex!7463 (ite c!1010714 (reg!16056 r!7292) (ite c!1010713 (regOne!31967 r!7292) (regOne!31966 r!7292)))))))

(declare-fun b!5728422 () Bool)

(assert (=> b!5728422 (= e!3522133 e!3522139)))

(declare-fun res!2418374 () Bool)

(assert (=> b!5728422 (= res!2418374 (not (nullable!5759 (reg!16056 r!7292))))))

(assert (=> b!5728422 (=> (not res!2418374) (not e!3522139))))

(assert (= (and d!1806851 (not res!2418371)) b!5728415))

(assert (= (and b!5728415 c!1010714) b!5728422))

(assert (= (and b!5728415 (not c!1010714)) b!5728420))

(assert (= (and b!5728422 res!2418374) b!5728416))

(assert (= (and b!5728420 c!1010713) b!5728419))

(assert (= (and b!5728420 (not c!1010713)) b!5728417))

(assert (= (and b!5728419 res!2418370) b!5728421))

(assert (= (and b!5728417 (not res!2418373)) b!5728414))

(assert (= (and b!5728414 res!2418372) b!5728418))

(assert (= (or b!5728421 b!5728418) bm!437993))

(assert (= (or b!5728419 b!5728414) bm!437994))

(assert (= (or b!5728416 bm!437994) bm!437995))

(declare-fun m!6680646 () Bool)

(assert (=> bm!437993 m!6680646))

(declare-fun m!6680648 () Bool)

(assert (=> bm!437995 m!6680648))

(declare-fun m!6680650 () Bool)

(assert (=> b!5728422 m!6680650))

(assert (=> start!589492 d!1806851))

(declare-fun bs!1339333 () Bool)

(declare-fun d!1806853 () Bool)

(assert (= bs!1339333 (and d!1806853 b!5727673)))

(declare-fun lambda!309813 () Int)

(assert (=> bs!1339333 (= lambda!309813 lambda!309757)))

(declare-fun forall!14858 (List!63480 Int) Bool)

(assert (=> d!1806853 (= (inv!82564 (h!69805 zl!343)) (forall!14858 (exprs!5611 (h!69805 zl!343)) lambda!309813))))

(declare-fun bs!1339334 () Bool)

(assert (= bs!1339334 d!1806853))

(declare-fun m!6680652 () Bool)

(assert (=> bs!1339334 m!6680652))

(assert (=> b!5727663 d!1806853))

(declare-fun d!1806855 () Bool)

(assert (=> d!1806855 (= (flatMap!1340 lt!2279724 lambda!309755) (choose!43324 lt!2279724 lambda!309755))))

(declare-fun bs!1339335 () Bool)

(assert (= bs!1339335 d!1806855))

(declare-fun m!6680654 () Bool)

(assert (=> bs!1339335 m!6680654))

(assert (=> b!5727683 d!1806855))

(declare-fun bm!437996 () Bool)

(declare-fun call!438001 () (InoxSet Context!10222))

(assert (=> bm!437996 (= call!438001 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 lt!2279753)) (Context!10223 (t!376808 (exprs!5611 lt!2279753))) (h!69806 s!2326)))))

(declare-fun b!5728423 () Bool)

(declare-fun e!3522141 () Bool)

(assert (=> b!5728423 (= e!3522141 (nullable!5759 (h!69804 (exprs!5611 lt!2279753))))))

(declare-fun e!3522142 () (InoxSet Context!10222))

(declare-fun b!5728424 () Bool)

(assert (=> b!5728424 (= e!3522142 ((_ map or) call!438001 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 lt!2279753))) (h!69806 s!2326))))))

(declare-fun d!1806857 () Bool)

(declare-fun c!1010716 () Bool)

(assert (=> d!1806857 (= c!1010716 e!3522141)))

(declare-fun res!2418375 () Bool)

(assert (=> d!1806857 (=> (not res!2418375) (not e!3522141))))

(assert (=> d!1806857 (= res!2418375 ((_ is Cons!63356) (exprs!5611 lt!2279753)))))

(assert (=> d!1806857 (= (derivationStepZipperUp!995 lt!2279753 (h!69806 s!2326)) e!3522142)))

(declare-fun b!5728425 () Bool)

(declare-fun e!3522140 () (InoxSet Context!10222))

(assert (=> b!5728425 (= e!3522142 e!3522140)))

(declare-fun c!1010715 () Bool)

(assert (=> b!5728425 (= c!1010715 ((_ is Cons!63356) (exprs!5611 lt!2279753)))))

(declare-fun b!5728426 () Bool)

(assert (=> b!5728426 (= e!3522140 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728427 () Bool)

(assert (=> b!5728427 (= e!3522140 call!438001)))

(assert (= (and d!1806857 res!2418375) b!5728423))

(assert (= (and d!1806857 c!1010716) b!5728424))

(assert (= (and d!1806857 (not c!1010716)) b!5728425))

(assert (= (and b!5728425 c!1010715) b!5728427))

(assert (= (and b!5728425 (not c!1010715)) b!5728426))

(assert (= (or b!5728424 b!5728427) bm!437996))

(declare-fun m!6680656 () Bool)

(assert (=> bm!437996 m!6680656))

(declare-fun m!6680658 () Bool)

(assert (=> b!5728423 m!6680658))

(declare-fun m!6680660 () Bool)

(assert (=> b!5728424 m!6680660))

(assert (=> b!5727683 d!1806857))

(declare-fun d!1806859 () Bool)

(assert (=> d!1806859 (= (flatMap!1340 lt!2279724 lambda!309755) (dynLambda!24795 lambda!309755 lt!2279753))))

(declare-fun lt!2279882 () Unit!156440)

(assert (=> d!1806859 (= lt!2279882 (choose!43323 lt!2279724 lt!2279753 lambda!309755))))

(assert (=> d!1806859 (= lt!2279724 (store ((as const (Array Context!10222 Bool)) false) lt!2279753 true))))

(assert (=> d!1806859 (= (lemmaFlatMapOnSingletonSet!872 lt!2279724 lt!2279753 lambda!309755) lt!2279882)))

(declare-fun b_lambda!216469 () Bool)

(assert (=> (not b_lambda!216469) (not d!1806859)))

(declare-fun bs!1339336 () Bool)

(assert (= bs!1339336 d!1806859))

(assert (=> bs!1339336 m!6680080))

(declare-fun m!6680662 () Bool)

(assert (=> bs!1339336 m!6680662))

(declare-fun m!6680664 () Bool)

(assert (=> bs!1339336 m!6680664))

(assert (=> bs!1339336 m!6680076))

(assert (=> b!5727683 d!1806859))

(declare-fun bs!1339337 () Bool)

(declare-fun d!1806861 () Bool)

(assert (= bs!1339337 (and d!1806861 b!5727690)))

(declare-fun lambda!309816 () Int)

(assert (=> bs!1339337 (= lambda!309816 lambda!309755)))

(assert (=> d!1806861 true))

(assert (=> d!1806861 (= (derivationStepZipper!1810 lt!2279724 (h!69806 s!2326)) (flatMap!1340 lt!2279724 lambda!309816))))

(declare-fun bs!1339338 () Bool)

(assert (= bs!1339338 d!1806861))

(declare-fun m!6680666 () Bool)

(assert (=> bs!1339338 m!6680666))

(assert (=> b!5727683 d!1806861))

(declare-fun bs!1339339 () Bool)

(declare-fun d!1806863 () Bool)

(assert (= bs!1339339 (and d!1806863 b!5727673)))

(declare-fun lambda!309819 () Int)

(assert (=> bs!1339339 (= lambda!309819 lambda!309757)))

(declare-fun bs!1339340 () Bool)

(assert (= bs!1339340 (and d!1806863 d!1806853)))

(assert (=> bs!1339340 (= lambda!309819 lambda!309813)))

(declare-fun e!3522157 () Bool)

(assert (=> d!1806863 e!3522157))

(declare-fun res!2418381 () Bool)

(assert (=> d!1806863 (=> (not res!2418381) (not e!3522157))))

(declare-fun lt!2279885 () Regex!15727)

(assert (=> d!1806863 (= res!2418381 (validRegex!7463 lt!2279885))))

(declare-fun e!3522155 () Regex!15727)

(assert (=> d!1806863 (= lt!2279885 e!3522155)))

(declare-fun c!1010730 () Bool)

(declare-fun e!3522156 () Bool)

(assert (=> d!1806863 (= c!1010730 e!3522156)))

(declare-fun res!2418380 () Bool)

(assert (=> d!1806863 (=> (not res!2418380) (not e!3522156))))

(assert (=> d!1806863 (= res!2418380 ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343))))))

(assert (=> d!1806863 (forall!14858 (exprs!5611 (h!69805 zl!343)) lambda!309819)))

(assert (=> d!1806863 (= (generalisedConcat!1342 (exprs!5611 (h!69805 zl!343))) lt!2279885)))

(declare-fun b!5728450 () Bool)

(declare-fun e!3522160 () Bool)

(declare-fun e!3522158 () Bool)

(assert (=> b!5728450 (= e!3522160 e!3522158)))

(declare-fun c!1010727 () Bool)

(declare-fun tail!11222 (List!63480) List!63480)

(assert (=> b!5728450 (= c!1010727 (isEmpty!35234 (tail!11222 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5728451 () Bool)

(assert (=> b!5728451 (= e!3522157 e!3522160)))

(declare-fun c!1010728 () Bool)

(assert (=> b!5728451 (= c!1010728 (isEmpty!35234 (exprs!5611 (h!69805 zl!343))))))

(declare-fun b!5728452 () Bool)

(declare-fun isEmptyExpr!1231 (Regex!15727) Bool)

(assert (=> b!5728452 (= e!3522160 (isEmptyExpr!1231 lt!2279885))))

(declare-fun b!5728453 () Bool)

(declare-fun head!12127 (List!63480) Regex!15727)

(assert (=> b!5728453 (= e!3522158 (= lt!2279885 (head!12127 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5728454 () Bool)

(declare-fun e!3522159 () Regex!15727)

(assert (=> b!5728454 (= e!3522159 EmptyExpr!15727)))

(declare-fun b!5728455 () Bool)

(assert (=> b!5728455 (= e!3522159 (Concat!24572 (h!69804 (exprs!5611 (h!69805 zl!343))) (generalisedConcat!1342 (t!376808 (exprs!5611 (h!69805 zl!343))))))))

(declare-fun b!5728456 () Bool)

(assert (=> b!5728456 (= e!3522156 (isEmpty!35234 (t!376808 (exprs!5611 (h!69805 zl!343)))))))

(declare-fun b!5728457 () Bool)

(assert (=> b!5728457 (= e!3522155 e!3522159)))

(declare-fun c!1010729 () Bool)

(assert (=> b!5728457 (= c!1010729 ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343))))))

(declare-fun b!5728458 () Bool)

(declare-fun isConcat!754 (Regex!15727) Bool)

(assert (=> b!5728458 (= e!3522158 (isConcat!754 lt!2279885))))

(declare-fun b!5728459 () Bool)

(assert (=> b!5728459 (= e!3522155 (h!69804 (exprs!5611 (h!69805 zl!343))))))

(assert (= (and d!1806863 res!2418380) b!5728456))

(assert (= (and d!1806863 c!1010730) b!5728459))

(assert (= (and d!1806863 (not c!1010730)) b!5728457))

(assert (= (and b!5728457 c!1010729) b!5728455))

(assert (= (and b!5728457 (not c!1010729)) b!5728454))

(assert (= (and d!1806863 res!2418381) b!5728451))

(assert (= (and b!5728451 c!1010728) b!5728452))

(assert (= (and b!5728451 (not c!1010728)) b!5728450))

(assert (= (and b!5728450 c!1010727) b!5728453))

(assert (= (and b!5728450 (not c!1010727)) b!5728458))

(declare-fun m!6680668 () Bool)

(assert (=> b!5728452 m!6680668))

(declare-fun m!6680670 () Bool)

(assert (=> b!5728458 m!6680670))

(declare-fun m!6680672 () Bool)

(assert (=> b!5728453 m!6680672))

(assert (=> b!5728456 m!6680018))

(declare-fun m!6680674 () Bool)

(assert (=> b!5728451 m!6680674))

(declare-fun m!6680676 () Bool)

(assert (=> b!5728455 m!6680676))

(declare-fun m!6680678 () Bool)

(assert (=> b!5728450 m!6680678))

(assert (=> b!5728450 m!6680678))

(declare-fun m!6680680 () Bool)

(assert (=> b!5728450 m!6680680))

(declare-fun m!6680682 () Bool)

(assert (=> d!1806863 m!6680682))

(declare-fun m!6680684 () Bool)

(assert (=> d!1806863 m!6680684))

(assert (=> b!5727681 d!1806863))

(declare-fun d!1806865 () Bool)

(declare-fun e!3522163 () Bool)

(assert (=> d!1806865 (= (matchZipper!1865 ((_ map or) lt!2279727 lt!2279740) (t!376810 s!2326)) e!3522163)))

(declare-fun res!2418384 () Bool)

(assert (=> d!1806865 (=> res!2418384 e!3522163)))

(assert (=> d!1806865 (= res!2418384 (matchZipper!1865 lt!2279727 (t!376810 s!2326)))))

(declare-fun lt!2279888 () Unit!156440)

(declare-fun choose!43335 ((InoxSet Context!10222) (InoxSet Context!10222) List!63482) Unit!156440)

(assert (=> d!1806865 (= lt!2279888 (choose!43335 lt!2279727 lt!2279740 (t!376810 s!2326)))))

(assert (=> d!1806865 (= (lemmaZipperConcatMatchesSameAsBothZippers!752 lt!2279727 lt!2279740 (t!376810 s!2326)) lt!2279888)))

(declare-fun b!5728462 () Bool)

(assert (=> b!5728462 (= e!3522163 (matchZipper!1865 lt!2279740 (t!376810 s!2326)))))

(assert (= (and d!1806865 (not res!2418384)) b!5728462))

(assert (=> d!1806865 m!6680024))

(assert (=> d!1806865 m!6680014))

(declare-fun m!6680686 () Bool)

(assert (=> d!1806865 m!6680686))

(assert (=> b!5728462 m!6680058))

(assert (=> b!5727660 d!1806865))

(assert (=> b!5727660 d!1806835))

(declare-fun d!1806867 () Bool)

(declare-fun c!1010731 () Bool)

(assert (=> d!1806867 (= c!1010731 (isEmpty!35236 (t!376810 s!2326)))))

(declare-fun e!3522164 () Bool)

(assert (=> d!1806867 (= (matchZipper!1865 ((_ map or) lt!2279727 lt!2279740) (t!376810 s!2326)) e!3522164)))

(declare-fun b!5728463 () Bool)

(assert (=> b!5728463 (= e!3522164 (nullableZipper!1673 ((_ map or) lt!2279727 lt!2279740)))))

(declare-fun b!5728464 () Bool)

(assert (=> b!5728464 (= e!3522164 (matchZipper!1865 (derivationStepZipper!1810 ((_ map or) lt!2279727 lt!2279740) (head!12126 (t!376810 s!2326))) (tail!11221 (t!376810 s!2326))))))

(assert (= (and d!1806867 c!1010731) b!5728463))

(assert (= (and d!1806867 (not c!1010731)) b!5728464))

(assert (=> d!1806867 m!6680586))

(declare-fun m!6680688 () Bool)

(assert (=> b!5728463 m!6680688))

(assert (=> b!5728464 m!6680590))

(assert (=> b!5728464 m!6680590))

(declare-fun m!6680690 () Bool)

(assert (=> b!5728464 m!6680690))

(assert (=> b!5728464 m!6680594))

(assert (=> b!5728464 m!6680690))

(assert (=> b!5728464 m!6680594))

(declare-fun m!6680692 () Bool)

(assert (=> b!5728464 m!6680692))

(assert (=> b!5727660 d!1806867))

(declare-fun d!1806869 () Bool)

(declare-fun c!1010732 () Bool)

(assert (=> d!1806869 (= c!1010732 (isEmpty!35236 (t!376810 s!2326)))))

(declare-fun e!3522165 () Bool)

(assert (=> d!1806869 (= (matchZipper!1865 lt!2279734 (t!376810 s!2326)) e!3522165)))

(declare-fun b!5728465 () Bool)

(assert (=> b!5728465 (= e!3522165 (nullableZipper!1673 lt!2279734))))

(declare-fun b!5728466 () Bool)

(assert (=> b!5728466 (= e!3522165 (matchZipper!1865 (derivationStepZipper!1810 lt!2279734 (head!12126 (t!376810 s!2326))) (tail!11221 (t!376810 s!2326))))))

(assert (= (and d!1806869 c!1010732) b!5728465))

(assert (= (and d!1806869 (not c!1010732)) b!5728466))

(assert (=> d!1806869 m!6680586))

(declare-fun m!6680694 () Bool)

(assert (=> b!5728465 m!6680694))

(assert (=> b!5728466 m!6680590))

(assert (=> b!5728466 m!6680590))

(declare-fun m!6680696 () Bool)

(assert (=> b!5728466 m!6680696))

(assert (=> b!5728466 m!6680594))

(assert (=> b!5728466 m!6680696))

(assert (=> b!5728466 m!6680594))

(declare-fun m!6680698 () Bool)

(assert (=> b!5728466 m!6680698))

(assert (=> b!5727680 d!1806869))

(declare-fun d!1806871 () Bool)

(declare-fun c!1010733 () Bool)

(assert (=> d!1806871 (= c!1010733 (isEmpty!35236 s!2326))))

(declare-fun e!3522166 () Bool)

(assert (=> d!1806871 (= (matchZipper!1865 lt!2279724 s!2326) e!3522166)))

(declare-fun b!5728467 () Bool)

(assert (=> b!5728467 (= e!3522166 (nullableZipper!1673 lt!2279724))))

(declare-fun b!5728468 () Bool)

(assert (=> b!5728468 (= e!3522166 (matchZipper!1865 (derivationStepZipper!1810 lt!2279724 (head!12126 s!2326)) (tail!11221 s!2326)))))

(assert (= (and d!1806871 c!1010733) b!5728467))

(assert (= (and d!1806871 (not c!1010733)) b!5728468))

(assert (=> d!1806871 m!6680286))

(declare-fun m!6680700 () Bool)

(assert (=> b!5728467 m!6680700))

(assert (=> b!5728468 m!6680292))

(assert (=> b!5728468 m!6680292))

(declare-fun m!6680702 () Bool)

(assert (=> b!5728468 m!6680702))

(assert (=> b!5728468 m!6680300))

(assert (=> b!5728468 m!6680702))

(assert (=> b!5728468 m!6680300))

(declare-fun m!6680704 () Bool)

(assert (=> b!5728468 m!6680704))

(assert (=> b!5727680 d!1806871))

(declare-fun d!1806873 () Bool)

(assert (=> d!1806873 (= (isEmpty!35233 (t!376809 zl!343)) ((_ is Nil!63357) (t!376809 zl!343)))))

(assert (=> b!5727659 d!1806873))

(declare-fun b!5728469 () Bool)

(declare-fun e!3522171 () Bool)

(assert (=> b!5728469 (= e!3522171 (nullable!5759 (regOne!31966 (reg!16056 (regOne!31966 r!7292)))))))

(declare-fun b!5728470 () Bool)

(declare-fun e!3522170 () (InoxSet Context!10222))

(declare-fun call!438004 () (InoxSet Context!10222))

(declare-fun call!438003 () (InoxSet Context!10222))

(assert (=> b!5728470 (= e!3522170 ((_ map or) call!438004 call!438003))))

(declare-fun b!5728471 () Bool)

(declare-fun e!3522169 () (InoxSet Context!10222))

(declare-fun call!438002 () (InoxSet Context!10222))

(assert (=> b!5728471 (= e!3522169 call!438002)))

(declare-fun b!5728472 () Bool)

(declare-fun c!1010734 () Bool)

(assert (=> b!5728472 (= c!1010734 ((_ is Star!15727) (reg!16056 (regOne!31966 r!7292))))))

(declare-fun e!3522167 () (InoxSet Context!10222))

(assert (=> b!5728472 (= e!3522167 e!3522169)))

(declare-fun b!5728473 () Bool)

(assert (=> b!5728473 (= e!3522167 call!438002)))

(declare-fun b!5728474 () Bool)

(declare-fun e!3522172 () (InoxSet Context!10222))

(assert (=> b!5728474 (= e!3522172 (store ((as const (Array Context!10222 Bool)) false) lt!2279725 true))))

(declare-fun bm!437998 () Bool)

(declare-fun call!438005 () (InoxSet Context!10222))

(assert (=> bm!437998 (= call!438002 call!438005)))

(declare-fun b!5728475 () Bool)

(declare-fun c!1010736 () Bool)

(assert (=> b!5728475 (= c!1010736 e!3522171)))

(declare-fun res!2418385 () Bool)

(assert (=> b!5728475 (=> (not res!2418385) (not e!3522171))))

(assert (=> b!5728475 (= res!2418385 ((_ is Concat!24572) (reg!16056 (regOne!31966 r!7292))))))

(declare-fun e!3522168 () (InoxSet Context!10222))

(assert (=> b!5728475 (= e!3522170 e!3522168)))

(declare-fun bm!437999 () Bool)

(assert (=> bm!437999 (= call!438005 call!438003)))

(declare-fun b!5728476 () Bool)

(assert (=> b!5728476 (= e!3522168 e!3522167)))

(declare-fun c!1010737 () Bool)

(assert (=> b!5728476 (= c!1010737 ((_ is Concat!24572) (reg!16056 (regOne!31966 r!7292))))))

(declare-fun c!1010735 () Bool)

(declare-fun bm!438000 () Bool)

(declare-fun call!438007 () List!63480)

(assert (=> bm!438000 (= call!438004 (derivationStepZipperDown!1069 (ite c!1010735 (regOne!31967 (reg!16056 (regOne!31966 r!7292))) (regOne!31966 (reg!16056 (regOne!31966 r!7292)))) (ite c!1010735 lt!2279725 (Context!10223 call!438007)) (h!69806 s!2326)))))

(declare-fun call!438006 () List!63480)

(declare-fun bm!438001 () Bool)

(assert (=> bm!438001 (= call!438003 (derivationStepZipperDown!1069 (ite c!1010735 (regTwo!31967 (reg!16056 (regOne!31966 r!7292))) (ite c!1010736 (regTwo!31966 (reg!16056 (regOne!31966 r!7292))) (ite c!1010737 (regOne!31966 (reg!16056 (regOne!31966 r!7292))) (reg!16056 (reg!16056 (regOne!31966 r!7292)))))) (ite (or c!1010735 c!1010736) lt!2279725 (Context!10223 call!438006)) (h!69806 s!2326)))))

(declare-fun bm!437997 () Bool)

(assert (=> bm!437997 (= call!438007 ($colon$colon!1740 (exprs!5611 lt!2279725) (ite (or c!1010736 c!1010737) (regTwo!31966 (reg!16056 (regOne!31966 r!7292))) (reg!16056 (regOne!31966 r!7292)))))))

(declare-fun d!1806875 () Bool)

(declare-fun c!1010738 () Bool)

(assert (=> d!1806875 (= c!1010738 (and ((_ is ElementMatch!15727) (reg!16056 (regOne!31966 r!7292))) (= (c!1010515 (reg!16056 (regOne!31966 r!7292))) (h!69806 s!2326))))))

(assert (=> d!1806875 (= (derivationStepZipperDown!1069 (reg!16056 (regOne!31966 r!7292)) lt!2279725 (h!69806 s!2326)) e!3522172)))

(declare-fun b!5728477 () Bool)

(assert (=> b!5728477 (= e!3522172 e!3522170)))

(assert (=> b!5728477 (= c!1010735 ((_ is Union!15727) (reg!16056 (regOne!31966 r!7292))))))

(declare-fun b!5728478 () Bool)

(assert (=> b!5728478 (= e!3522169 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728479 () Bool)

(assert (=> b!5728479 (= e!3522168 ((_ map or) call!438004 call!438005))))

(declare-fun bm!438002 () Bool)

(assert (=> bm!438002 (= call!438006 call!438007)))

(assert (= (and d!1806875 c!1010738) b!5728474))

(assert (= (and d!1806875 (not c!1010738)) b!5728477))

(assert (= (and b!5728477 c!1010735) b!5728470))

(assert (= (and b!5728477 (not c!1010735)) b!5728475))

(assert (= (and b!5728475 res!2418385) b!5728469))

(assert (= (and b!5728475 c!1010736) b!5728479))

(assert (= (and b!5728475 (not c!1010736)) b!5728476))

(assert (= (and b!5728476 c!1010737) b!5728473))

(assert (= (and b!5728476 (not c!1010737)) b!5728472))

(assert (= (and b!5728472 c!1010734) b!5728471))

(assert (= (and b!5728472 (not c!1010734)) b!5728478))

(assert (= (or b!5728473 b!5728471) bm!438002))

(assert (= (or b!5728473 b!5728471) bm!437998))

(assert (= (or b!5728479 bm!438002) bm!437997))

(assert (= (or b!5728479 bm!437998) bm!437999))

(assert (= (or b!5728470 bm!437999) bm!438001))

(assert (= (or b!5728470 b!5728479) bm!438000))

(declare-fun m!6680706 () Bool)

(assert (=> bm!438001 m!6680706))

(assert (=> b!5728474 m!6680088))

(declare-fun m!6680708 () Bool)

(assert (=> b!5728469 m!6680708))

(declare-fun m!6680710 () Bool)

(assert (=> bm!437997 m!6680710))

(declare-fun m!6680712 () Bool)

(assert (=> bm!438000 m!6680712))

(assert (=> b!5727679 d!1806875))

(declare-fun bm!438003 () Bool)

(declare-fun call!438008 () (InoxSet Context!10222))

(assert (=> bm!438003 (= call!438008 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 lt!2279750)) (Context!10223 (t!376808 (exprs!5611 lt!2279750))) (h!69806 s!2326)))))

(declare-fun b!5728480 () Bool)

(declare-fun e!3522174 () Bool)

(assert (=> b!5728480 (= e!3522174 (nullable!5759 (h!69804 (exprs!5611 lt!2279750))))))

(declare-fun b!5728481 () Bool)

(declare-fun e!3522175 () (InoxSet Context!10222))

(assert (=> b!5728481 (= e!3522175 ((_ map or) call!438008 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 lt!2279750))) (h!69806 s!2326))))))

(declare-fun d!1806877 () Bool)

(declare-fun c!1010740 () Bool)

(assert (=> d!1806877 (= c!1010740 e!3522174)))

(declare-fun res!2418386 () Bool)

(assert (=> d!1806877 (=> (not res!2418386) (not e!3522174))))

(assert (=> d!1806877 (= res!2418386 ((_ is Cons!63356) (exprs!5611 lt!2279750)))))

(assert (=> d!1806877 (= (derivationStepZipperUp!995 lt!2279750 (h!69806 s!2326)) e!3522175)))

(declare-fun b!5728482 () Bool)

(declare-fun e!3522173 () (InoxSet Context!10222))

(assert (=> b!5728482 (= e!3522175 e!3522173)))

(declare-fun c!1010739 () Bool)

(assert (=> b!5728482 (= c!1010739 ((_ is Cons!63356) (exprs!5611 lt!2279750)))))

(declare-fun b!5728483 () Bool)

(assert (=> b!5728483 (= e!3522173 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728484 () Bool)

(assert (=> b!5728484 (= e!3522173 call!438008)))

(assert (= (and d!1806877 res!2418386) b!5728480))

(assert (= (and d!1806877 c!1010740) b!5728481))

(assert (= (and d!1806877 (not c!1010740)) b!5728482))

(assert (= (and b!5728482 c!1010739) b!5728484))

(assert (= (and b!5728482 (not c!1010739)) b!5728483))

(assert (= (or b!5728481 b!5728484) bm!438003))

(declare-fun m!6680714 () Bool)

(assert (=> bm!438003 m!6680714))

(declare-fun m!6680716 () Bool)

(assert (=> b!5728480 m!6680716))

(declare-fun m!6680718 () Bool)

(assert (=> b!5728481 m!6680718))

(assert (=> b!5727658 d!1806877))

(declare-fun d!1806879 () Bool)

(assert (=> d!1806879 (= (flatMap!1340 lt!2279760 lambda!309755) (dynLambda!24795 lambda!309755 lt!2279725))))

(declare-fun lt!2279889 () Unit!156440)

(assert (=> d!1806879 (= lt!2279889 (choose!43323 lt!2279760 lt!2279725 lambda!309755))))

(assert (=> d!1806879 (= lt!2279760 (store ((as const (Array Context!10222 Bool)) false) lt!2279725 true))))

(assert (=> d!1806879 (= (lemmaFlatMapOnSingletonSet!872 lt!2279760 lt!2279725 lambda!309755) lt!2279889)))

(declare-fun b_lambda!216471 () Bool)

(assert (=> (not b_lambda!216471) (not d!1806879)))

(declare-fun bs!1339341 () Bool)

(assert (= bs!1339341 d!1806879))

(assert (=> bs!1339341 m!6680086))

(declare-fun m!6680720 () Bool)

(assert (=> bs!1339341 m!6680720))

(declare-fun m!6680722 () Bool)

(assert (=> bs!1339341 m!6680722))

(assert (=> bs!1339341 m!6680088))

(assert (=> b!5727658 d!1806879))

(declare-fun bm!438004 () Bool)

(declare-fun call!438009 () (InoxSet Context!10222))

(assert (=> bm!438004 (= call!438009 (derivationStepZipperDown!1069 (h!69804 (exprs!5611 lt!2279725)) (Context!10223 (t!376808 (exprs!5611 lt!2279725))) (h!69806 s!2326)))))

(declare-fun b!5728485 () Bool)

(declare-fun e!3522177 () Bool)

(assert (=> b!5728485 (= e!3522177 (nullable!5759 (h!69804 (exprs!5611 lt!2279725))))))

(declare-fun b!5728486 () Bool)

(declare-fun e!3522178 () (InoxSet Context!10222))

(assert (=> b!5728486 (= e!3522178 ((_ map or) call!438009 (derivationStepZipperUp!995 (Context!10223 (t!376808 (exprs!5611 lt!2279725))) (h!69806 s!2326))))))

(declare-fun d!1806881 () Bool)

(declare-fun c!1010742 () Bool)

(assert (=> d!1806881 (= c!1010742 e!3522177)))

(declare-fun res!2418387 () Bool)

(assert (=> d!1806881 (=> (not res!2418387) (not e!3522177))))

(assert (=> d!1806881 (= res!2418387 ((_ is Cons!63356) (exprs!5611 lt!2279725)))))

(assert (=> d!1806881 (= (derivationStepZipperUp!995 lt!2279725 (h!69806 s!2326)) e!3522178)))

(declare-fun b!5728487 () Bool)

(declare-fun e!3522176 () (InoxSet Context!10222))

(assert (=> b!5728487 (= e!3522178 e!3522176)))

(declare-fun c!1010741 () Bool)

(assert (=> b!5728487 (= c!1010741 ((_ is Cons!63356) (exprs!5611 lt!2279725)))))

(declare-fun b!5728488 () Bool)

(assert (=> b!5728488 (= e!3522176 ((as const (Array Context!10222 Bool)) false))))

(declare-fun b!5728489 () Bool)

(assert (=> b!5728489 (= e!3522176 call!438009)))

(assert (= (and d!1806881 res!2418387) b!5728485))

(assert (= (and d!1806881 c!1010742) b!5728486))

(assert (= (and d!1806881 (not c!1010742)) b!5728487))

(assert (= (and b!5728487 c!1010741) b!5728489))

(assert (= (and b!5728487 (not c!1010741)) b!5728488))

(assert (= (or b!5728486 b!5728489) bm!438004))

(declare-fun m!6680724 () Bool)

(assert (=> bm!438004 m!6680724))

(declare-fun m!6680726 () Bool)

(assert (=> b!5728485 m!6680726))

(declare-fun m!6680728 () Bool)

(assert (=> b!5728486 m!6680728))

(assert (=> b!5727658 d!1806881))

(declare-fun d!1806883 () Bool)

(assert (=> d!1806883 (= (flatMap!1340 lt!2279752 lambda!309755) (dynLambda!24795 lambda!309755 lt!2279750))))

(declare-fun lt!2279890 () Unit!156440)

(assert (=> d!1806883 (= lt!2279890 (choose!43323 lt!2279752 lt!2279750 lambda!309755))))

(assert (=> d!1806883 (= lt!2279752 (store ((as const (Array Context!10222 Bool)) false) lt!2279750 true))))

(assert (=> d!1806883 (= (lemmaFlatMapOnSingletonSet!872 lt!2279752 lt!2279750 lambda!309755) lt!2279890)))

(declare-fun b_lambda!216473 () Bool)

(assert (=> (not b_lambda!216473) (not d!1806883)))

(declare-fun bs!1339342 () Bool)

(assert (= bs!1339342 d!1806883))

(assert (=> bs!1339342 m!6680090))

(declare-fun m!6680730 () Bool)

(assert (=> bs!1339342 m!6680730))

(declare-fun m!6680732 () Bool)

(assert (=> bs!1339342 m!6680732))

(assert (=> bs!1339342 m!6680084))

(assert (=> b!5727658 d!1806883))

(declare-fun d!1806885 () Bool)

(assert (=> d!1806885 (= (flatMap!1340 lt!2279752 lambda!309755) (choose!43324 lt!2279752 lambda!309755))))

(declare-fun bs!1339343 () Bool)

(assert (= bs!1339343 d!1806885))

(declare-fun m!6680734 () Bool)

(assert (=> bs!1339343 m!6680734))

(assert (=> b!5727658 d!1806885))

(declare-fun d!1806887 () Bool)

(declare-fun lt!2279891 () Regex!15727)

(assert (=> d!1806887 (validRegex!7463 lt!2279891)))

(assert (=> d!1806887 (= lt!2279891 (generalisedUnion!1590 (unfocusZipperList!1155 (Cons!63357 lt!2279750 Nil!63357))))))

(assert (=> d!1806887 (= (unfocusZipper!1469 (Cons!63357 lt!2279750 Nil!63357)) lt!2279891)))

(declare-fun bs!1339344 () Bool)

(assert (= bs!1339344 d!1806887))

(declare-fun m!6680736 () Bool)

(assert (=> bs!1339344 m!6680736))

(declare-fun m!6680738 () Bool)

(assert (=> bs!1339344 m!6680738))

(assert (=> bs!1339344 m!6680738))

(declare-fun m!6680740 () Bool)

(assert (=> bs!1339344 m!6680740))

(assert (=> b!5727658 d!1806887))

(declare-fun d!1806889 () Bool)

(assert (=> d!1806889 (= (flatMap!1340 lt!2279760 lambda!309755) (choose!43324 lt!2279760 lambda!309755))))

(declare-fun bs!1339345 () Bool)

(assert (= bs!1339345 d!1806889))

(declare-fun m!6680742 () Bool)

(assert (=> bs!1339345 m!6680742))

(assert (=> b!5727658 d!1806889))

(declare-fun bs!1339346 () Bool)

(declare-fun d!1806891 () Bool)

(assert (= bs!1339346 (and d!1806891 b!5727673)))

(declare-fun lambda!309820 () Int)

(assert (=> bs!1339346 (= lambda!309820 lambda!309757)))

(declare-fun bs!1339347 () Bool)

(assert (= bs!1339347 (and d!1806891 d!1806853)))

(assert (=> bs!1339347 (= lambda!309820 lambda!309813)))

(declare-fun bs!1339348 () Bool)

(assert (= bs!1339348 (and d!1806891 d!1806863)))

(assert (=> bs!1339348 (= lambda!309820 lambda!309819)))

(assert (=> d!1806891 (= (inv!82564 setElem!38413) (forall!14858 (exprs!5611 setElem!38413) lambda!309820))))

(declare-fun bs!1339349 () Bool)

(assert (= bs!1339349 d!1806891))

(declare-fun m!6680744 () Bool)

(assert (=> bs!1339349 m!6680744))

(assert (=> setNonEmpty!38413 d!1806891))

(declare-fun d!1806893 () Bool)

(declare-fun lt!2279892 () Regex!15727)

(assert (=> d!1806893 (validRegex!7463 lt!2279892)))

(assert (=> d!1806893 (= lt!2279892 (generalisedUnion!1590 (unfocusZipperList!1155 (Cons!63357 lt!2279725 Nil!63357))))))

(assert (=> d!1806893 (= (unfocusZipper!1469 (Cons!63357 lt!2279725 Nil!63357)) lt!2279892)))

(declare-fun bs!1339350 () Bool)

(assert (= bs!1339350 d!1806893))

(declare-fun m!6680746 () Bool)

(assert (=> bs!1339350 m!6680746))

(declare-fun m!6680748 () Bool)

(assert (=> bs!1339350 m!6680748))

(assert (=> bs!1339350 m!6680748))

(declare-fun m!6680750 () Bool)

(assert (=> bs!1339350 m!6680750))

(assert (=> b!5727677 d!1806893))

(declare-fun d!1806895 () Bool)

(declare-fun e!3522181 () Bool)

(assert (=> d!1806895 e!3522181))

(declare-fun res!2418390 () Bool)

(assert (=> d!1806895 (=> (not res!2418390) (not e!3522181))))

(declare-fun lt!2279895 () List!63481)

(declare-fun noDuplicate!1653 (List!63481) Bool)

(assert (=> d!1806895 (= res!2418390 (noDuplicate!1653 lt!2279895))))

(declare-fun choose!43336 ((InoxSet Context!10222)) List!63481)

(assert (=> d!1806895 (= lt!2279895 (choose!43336 z!1189))))

(assert (=> d!1806895 (= (toList!9511 z!1189) lt!2279895)))

(declare-fun b!5728492 () Bool)

(declare-fun content!11527 (List!63481) (InoxSet Context!10222))

(assert (=> b!5728492 (= e!3522181 (= (content!11527 lt!2279895) z!1189))))

(assert (= (and d!1806895 res!2418390) b!5728492))

(declare-fun m!6680752 () Bool)

(assert (=> d!1806895 m!6680752))

(declare-fun m!6680754 () Bool)

(assert (=> d!1806895 m!6680754))

(declare-fun m!6680756 () Bool)

(assert (=> b!5728492 m!6680756))

(assert (=> b!5727697 d!1806895))

(declare-fun bs!1339351 () Bool)

(declare-fun d!1806897 () Bool)

(assert (= bs!1339351 (and d!1806897 b!5727673)))

(declare-fun lambda!309823 () Int)

(assert (=> bs!1339351 (= lambda!309823 lambda!309757)))

(declare-fun bs!1339352 () Bool)

(assert (= bs!1339352 (and d!1806897 d!1806853)))

(assert (=> bs!1339352 (= lambda!309823 lambda!309813)))

(declare-fun bs!1339353 () Bool)

(assert (= bs!1339353 (and d!1806897 d!1806863)))

(assert (=> bs!1339353 (= lambda!309823 lambda!309819)))

(declare-fun bs!1339354 () Bool)

(assert (= bs!1339354 (and d!1806897 d!1806891)))

(assert (=> bs!1339354 (= lambda!309823 lambda!309820)))

(declare-fun b!5728513 () Bool)

(declare-fun e!3522199 () Bool)

(declare-fun lt!2279898 () Regex!15727)

(assert (=> b!5728513 (= e!3522199 (= lt!2279898 (head!12127 (unfocusZipperList!1155 zl!343))))))

(declare-fun b!5728514 () Bool)

(declare-fun e!3522194 () Bool)

(declare-fun e!3522198 () Bool)

(assert (=> b!5728514 (= e!3522194 e!3522198)))

(declare-fun c!1010752 () Bool)

(assert (=> b!5728514 (= c!1010752 (isEmpty!35234 (unfocusZipperList!1155 zl!343)))))

(declare-fun b!5728515 () Bool)

(declare-fun e!3522197 () Regex!15727)

(declare-fun e!3522196 () Regex!15727)

(assert (=> b!5728515 (= e!3522197 e!3522196)))

(declare-fun c!1010753 () Bool)

(assert (=> b!5728515 (= c!1010753 ((_ is Cons!63356) (unfocusZipperList!1155 zl!343)))))

(declare-fun b!5728516 () Bool)

(assert (=> b!5728516 (= e!3522198 e!3522199)))

(declare-fun c!1010751 () Bool)

(assert (=> b!5728516 (= c!1010751 (isEmpty!35234 (tail!11222 (unfocusZipperList!1155 zl!343))))))

(declare-fun b!5728517 () Bool)

(assert (=> b!5728517 (= e!3522196 (Union!15727 (h!69804 (unfocusZipperList!1155 zl!343)) (generalisedUnion!1590 (t!376808 (unfocusZipperList!1155 zl!343)))))))

(declare-fun b!5728518 () Bool)

(declare-fun isEmptyLang!1242 (Regex!15727) Bool)

(assert (=> b!5728518 (= e!3522198 (isEmptyLang!1242 lt!2279898))))

(assert (=> d!1806897 e!3522194))

(declare-fun res!2418395 () Bool)

(assert (=> d!1806897 (=> (not res!2418395) (not e!3522194))))

(assert (=> d!1806897 (= res!2418395 (validRegex!7463 lt!2279898))))

(assert (=> d!1806897 (= lt!2279898 e!3522197)))

(declare-fun c!1010754 () Bool)

(declare-fun e!3522195 () Bool)

(assert (=> d!1806897 (= c!1010754 e!3522195)))

(declare-fun res!2418396 () Bool)

(assert (=> d!1806897 (=> (not res!2418396) (not e!3522195))))

(assert (=> d!1806897 (= res!2418396 ((_ is Cons!63356) (unfocusZipperList!1155 zl!343)))))

(assert (=> d!1806897 (forall!14858 (unfocusZipperList!1155 zl!343) lambda!309823)))

(assert (=> d!1806897 (= (generalisedUnion!1590 (unfocusZipperList!1155 zl!343)) lt!2279898)))

(declare-fun b!5728519 () Bool)

(assert (=> b!5728519 (= e!3522195 (isEmpty!35234 (t!376808 (unfocusZipperList!1155 zl!343))))))

(declare-fun b!5728520 () Bool)

(declare-fun isUnion!672 (Regex!15727) Bool)

(assert (=> b!5728520 (= e!3522199 (isUnion!672 lt!2279898))))

(declare-fun b!5728521 () Bool)

(assert (=> b!5728521 (= e!3522196 EmptyLang!15727)))

(declare-fun b!5728522 () Bool)

(assert (=> b!5728522 (= e!3522197 (h!69804 (unfocusZipperList!1155 zl!343)))))

(assert (= (and d!1806897 res!2418396) b!5728519))

(assert (= (and d!1806897 c!1010754) b!5728522))

(assert (= (and d!1806897 (not c!1010754)) b!5728515))

(assert (= (and b!5728515 c!1010753) b!5728517))

(assert (= (and b!5728515 (not c!1010753)) b!5728521))

(assert (= (and d!1806897 res!2418395) b!5728514))

(assert (= (and b!5728514 c!1010752) b!5728518))

(assert (= (and b!5728514 (not c!1010752)) b!5728516))

(assert (= (and b!5728516 c!1010751) b!5728513))

(assert (= (and b!5728516 (not c!1010751)) b!5728520))

(declare-fun m!6680758 () Bool)

(assert (=> b!5728517 m!6680758))

(assert (=> b!5728514 m!6680068))

(declare-fun m!6680760 () Bool)

(assert (=> b!5728514 m!6680760))

(assert (=> b!5728516 m!6680068))

(declare-fun m!6680762 () Bool)

(assert (=> b!5728516 m!6680762))

(assert (=> b!5728516 m!6680762))

(declare-fun m!6680764 () Bool)

(assert (=> b!5728516 m!6680764))

(declare-fun m!6680766 () Bool)

(assert (=> b!5728518 m!6680766))

(declare-fun m!6680768 () Bool)

(assert (=> b!5728520 m!6680768))

(declare-fun m!6680770 () Bool)

(assert (=> d!1806897 m!6680770))

(assert (=> d!1806897 m!6680068))

(declare-fun m!6680772 () Bool)

(assert (=> d!1806897 m!6680772))

(assert (=> b!5728513 m!6680068))

(declare-fun m!6680774 () Bool)

(assert (=> b!5728513 m!6680774))

(declare-fun m!6680776 () Bool)

(assert (=> b!5728519 m!6680776))

(assert (=> b!5727675 d!1806897))

(declare-fun bs!1339355 () Bool)

(declare-fun d!1806899 () Bool)

(assert (= bs!1339355 (and d!1806899 d!1806891)))

(declare-fun lambda!309826 () Int)

(assert (=> bs!1339355 (= lambda!309826 lambda!309820)))

(declare-fun bs!1339356 () Bool)

(assert (= bs!1339356 (and d!1806899 d!1806853)))

(assert (=> bs!1339356 (= lambda!309826 lambda!309813)))

(declare-fun bs!1339357 () Bool)

(assert (= bs!1339357 (and d!1806899 d!1806897)))

(assert (=> bs!1339357 (= lambda!309826 lambda!309823)))

(declare-fun bs!1339358 () Bool)

(assert (= bs!1339358 (and d!1806899 d!1806863)))

(assert (=> bs!1339358 (= lambda!309826 lambda!309819)))

(declare-fun bs!1339359 () Bool)

(assert (= bs!1339359 (and d!1806899 b!5727673)))

(assert (=> bs!1339359 (= lambda!309826 lambda!309757)))

(declare-fun lt!2279901 () List!63480)

(assert (=> d!1806899 (forall!14858 lt!2279901 lambda!309826)))

(declare-fun e!3522202 () List!63480)

(assert (=> d!1806899 (= lt!2279901 e!3522202)))

(declare-fun c!1010757 () Bool)

(assert (=> d!1806899 (= c!1010757 ((_ is Cons!63357) zl!343))))

(assert (=> d!1806899 (= (unfocusZipperList!1155 zl!343) lt!2279901)))

(declare-fun b!5728527 () Bool)

(assert (=> b!5728527 (= e!3522202 (Cons!63356 (generalisedConcat!1342 (exprs!5611 (h!69805 zl!343))) (unfocusZipperList!1155 (t!376809 zl!343))))))

(declare-fun b!5728528 () Bool)

(assert (=> b!5728528 (= e!3522202 Nil!63356)))

(assert (= (and d!1806899 c!1010757) b!5728527))

(assert (= (and d!1806899 (not c!1010757)) b!5728528))

(declare-fun m!6680778 () Bool)

(assert (=> d!1806899 m!6680778))

(assert (=> b!5728527 m!6679976))

(declare-fun m!6680780 () Bool)

(assert (=> b!5728527 m!6680780))

(assert (=> b!5727675 d!1806899))

(declare-fun d!1806901 () Bool)

(declare-fun lt!2279902 () Regex!15727)

(assert (=> d!1806901 (validRegex!7463 lt!2279902)))

(assert (=> d!1806901 (= lt!2279902 (generalisedUnion!1590 (unfocusZipperList!1155 (Cons!63357 lt!2279753 Nil!63357))))))

(assert (=> d!1806901 (= (unfocusZipper!1469 (Cons!63357 lt!2279753 Nil!63357)) lt!2279902)))

(declare-fun bs!1339360 () Bool)

(assert (= bs!1339360 d!1806901))

(declare-fun m!6680782 () Bool)

(assert (=> bs!1339360 m!6680782))

(declare-fun m!6680784 () Bool)

(assert (=> bs!1339360 m!6680784))

(assert (=> bs!1339360 m!6680784))

(declare-fun m!6680786 () Bool)

(assert (=> bs!1339360 m!6680786))

(assert (=> b!5727695 d!1806901))

(declare-fun b!5728529 () Bool)

(declare-fun res!2418400 () Bool)

(declare-fun e!3522207 () Bool)

(assert (=> b!5728529 (=> (not res!2418400) (not e!3522207))))

(declare-fun call!438010 () Bool)

(assert (=> b!5728529 (= res!2418400 (not call!438010))))

(declare-fun b!5728530 () Bool)

(declare-fun e!3522206 () Bool)

(declare-fun lt!2279903 () Bool)

(assert (=> b!5728530 (= e!3522206 (= lt!2279903 call!438010))))

(declare-fun b!5728531 () Bool)

(declare-fun res!2418402 () Bool)

(declare-fun e!3522205 () Bool)

(assert (=> b!5728531 (=> res!2418402 e!3522205)))

(assert (=> b!5728531 (= res!2418402 (not (isEmpty!35236 (tail!11221 s!2326))))))

(declare-fun b!5728532 () Bool)

(declare-fun e!3522209 () Bool)

(assert (=> b!5728532 (= e!3522209 (matchR!7912 (derivativeStep!4526 lt!2279762 (head!12126 s!2326)) (tail!11221 s!2326)))))

(declare-fun b!5728533 () Bool)

(declare-fun e!3522208 () Bool)

(declare-fun e!3522204 () Bool)

(assert (=> b!5728533 (= e!3522208 e!3522204)))

(declare-fun res!2418404 () Bool)

(assert (=> b!5728533 (=> (not res!2418404) (not e!3522204))))

(assert (=> b!5728533 (= res!2418404 (not lt!2279903))))

(declare-fun d!1806903 () Bool)

(assert (=> d!1806903 e!3522206))

(declare-fun c!1010760 () Bool)

(assert (=> d!1806903 (= c!1010760 ((_ is EmptyExpr!15727) lt!2279762))))

(assert (=> d!1806903 (= lt!2279903 e!3522209)))

(declare-fun c!1010758 () Bool)

(assert (=> d!1806903 (= c!1010758 (isEmpty!35236 s!2326))))

(assert (=> d!1806903 (validRegex!7463 lt!2279762)))

(assert (=> d!1806903 (= (matchR!7912 lt!2279762 s!2326) lt!2279903)))

(declare-fun b!5728534 () Bool)

(assert (=> b!5728534 (= e!3522205 (not (= (head!12126 s!2326) (c!1010515 lt!2279762))))))

(declare-fun b!5728535 () Bool)

(declare-fun e!3522203 () Bool)

(assert (=> b!5728535 (= e!3522206 e!3522203)))

(declare-fun c!1010759 () Bool)

(assert (=> b!5728535 (= c!1010759 ((_ is EmptyLang!15727) lt!2279762))))

(declare-fun b!5728536 () Bool)

(assert (=> b!5728536 (= e!3522204 e!3522205)))

(declare-fun res!2418401 () Bool)

(assert (=> b!5728536 (=> res!2418401 e!3522205)))

(assert (=> b!5728536 (= res!2418401 call!438010)))

(declare-fun bm!438005 () Bool)

(assert (=> bm!438005 (= call!438010 (isEmpty!35236 s!2326))))

(declare-fun b!5728537 () Bool)

(assert (=> b!5728537 (= e!3522209 (nullable!5759 lt!2279762))))

(declare-fun b!5728538 () Bool)

(declare-fun res!2418397 () Bool)

(assert (=> b!5728538 (=> (not res!2418397) (not e!3522207))))

(assert (=> b!5728538 (= res!2418397 (isEmpty!35236 (tail!11221 s!2326)))))

(declare-fun b!5728539 () Bool)

(assert (=> b!5728539 (= e!3522207 (= (head!12126 s!2326) (c!1010515 lt!2279762)))))

(declare-fun b!5728540 () Bool)

(declare-fun res!2418399 () Bool)

(assert (=> b!5728540 (=> res!2418399 e!3522208)))

(assert (=> b!5728540 (= res!2418399 (not ((_ is ElementMatch!15727) lt!2279762)))))

(assert (=> b!5728540 (= e!3522203 e!3522208)))

(declare-fun b!5728541 () Bool)

(assert (=> b!5728541 (= e!3522203 (not lt!2279903))))

(declare-fun b!5728542 () Bool)

(declare-fun res!2418403 () Bool)

(assert (=> b!5728542 (=> res!2418403 e!3522208)))

(assert (=> b!5728542 (= res!2418403 e!3522207)))

(declare-fun res!2418398 () Bool)

(assert (=> b!5728542 (=> (not res!2418398) (not e!3522207))))

(assert (=> b!5728542 (= res!2418398 lt!2279903)))

(assert (= (and d!1806903 c!1010758) b!5728537))

(assert (= (and d!1806903 (not c!1010758)) b!5728532))

(assert (= (and d!1806903 c!1010760) b!5728530))

(assert (= (and d!1806903 (not c!1010760)) b!5728535))

(assert (= (and b!5728535 c!1010759) b!5728541))

(assert (= (and b!5728535 (not c!1010759)) b!5728540))

(assert (= (and b!5728540 (not res!2418399)) b!5728542))

(assert (= (and b!5728542 res!2418398) b!5728529))

(assert (= (and b!5728529 res!2418400) b!5728538))

(assert (= (and b!5728538 res!2418397) b!5728539))

(assert (= (and b!5728542 (not res!2418403)) b!5728533))

(assert (= (and b!5728533 res!2418404) b!5728536))

(assert (= (and b!5728536 (not res!2418401)) b!5728531))

(assert (= (and b!5728531 (not res!2418402)) b!5728534))

(assert (= (or b!5728530 b!5728529 b!5728536) bm!438005))

(assert (=> d!1806903 m!6680286))

(declare-fun m!6680788 () Bool)

(assert (=> d!1806903 m!6680788))

(assert (=> b!5728532 m!6680292))

(assert (=> b!5728532 m!6680292))

(declare-fun m!6680790 () Bool)

(assert (=> b!5728532 m!6680790))

(assert (=> b!5728532 m!6680300))

(assert (=> b!5728532 m!6680790))

(assert (=> b!5728532 m!6680300))

(declare-fun m!6680792 () Bool)

(assert (=> b!5728532 m!6680792))

(assert (=> b!5728538 m!6680300))

(assert (=> b!5728538 m!6680300))

(assert (=> b!5728538 m!6680490))

(assert (=> b!5728531 m!6680300))

(assert (=> b!5728531 m!6680300))

(assert (=> b!5728531 m!6680490))

(declare-fun m!6680794 () Bool)

(assert (=> b!5728537 m!6680794))

(assert (=> b!5728534 m!6680292))

(assert (=> b!5728539 m!6680292))

(assert (=> bm!438005 m!6680286))

(assert (=> b!5727674 d!1806903))

(declare-fun bs!1339361 () Bool)

(declare-fun b!5728552 () Bool)

(assert (= bs!1339361 (and b!5728552 d!1806831)))

(declare-fun lambda!309827 () Int)

(assert (=> bs!1339361 (not (= lambda!309827 lambda!309809))))

(declare-fun bs!1339362 () Bool)

(assert (= bs!1339362 (and b!5728552 d!1806829)))

(assert (=> bs!1339362 (not (= lambda!309827 lambda!309804))))

(assert (=> bs!1339361 (not (= lambda!309827 lambda!309810))))

(declare-fun bs!1339363 () Bool)

(assert (= bs!1339363 (and b!5728552 b!5728133)))

(assert (=> bs!1339363 (not (= lambda!309827 lambda!309799))))

(declare-fun bs!1339364 () Bool)

(assert (= bs!1339364 (and b!5728552 b!5727667)))

(assert (=> bs!1339364 (not (= lambda!309827 lambda!309753))))

(assert (=> bs!1339364 (not (= lambda!309827 lambda!309754))))

(declare-fun bs!1339365 () Bool)

(assert (= bs!1339365 (and b!5728552 b!5728137)))

(assert (=> bs!1339365 (= (and (= (reg!16056 lt!2279762) (reg!16056 r!7292)) (= lt!2279762 r!7292)) (= lambda!309827 lambda!309798))))

(assert (=> b!5728552 true))

(assert (=> b!5728552 true))

(declare-fun bs!1339366 () Bool)

(declare-fun b!5728548 () Bool)

(assert (= bs!1339366 (and b!5728548 d!1806831)))

(declare-fun lambda!309828 () Int)

(assert (=> bs!1339366 (not (= lambda!309828 lambda!309809))))

(declare-fun bs!1339367 () Bool)

(assert (= bs!1339367 (and b!5728548 d!1806829)))

(assert (=> bs!1339367 (not (= lambda!309828 lambda!309804))))

(assert (=> bs!1339366 (= (and (= (regOne!31966 lt!2279762) (regOne!31966 r!7292)) (= (regTwo!31966 lt!2279762) (regTwo!31966 r!7292))) (= lambda!309828 lambda!309810))))

(declare-fun bs!1339368 () Bool)

(assert (= bs!1339368 (and b!5728548 b!5728133)))

(assert (=> bs!1339368 (= (and (= (regOne!31966 lt!2279762) (regOne!31966 r!7292)) (= (regTwo!31966 lt!2279762) (regTwo!31966 r!7292))) (= lambda!309828 lambda!309799))))

(declare-fun bs!1339369 () Bool)

(assert (= bs!1339369 (and b!5728548 b!5727667)))

(assert (=> bs!1339369 (not (= lambda!309828 lambda!309753))))

(assert (=> bs!1339369 (= (and (= (regOne!31966 lt!2279762) (regOne!31966 r!7292)) (= (regTwo!31966 lt!2279762) (regTwo!31966 r!7292))) (= lambda!309828 lambda!309754))))

(declare-fun bs!1339370 () Bool)

(assert (= bs!1339370 (and b!5728548 b!5728137)))

(assert (=> bs!1339370 (not (= lambda!309828 lambda!309798))))

(declare-fun bs!1339371 () Bool)

(assert (= bs!1339371 (and b!5728548 b!5728552)))

(assert (=> bs!1339371 (not (= lambda!309828 lambda!309827))))

(assert (=> b!5728548 true))

(assert (=> b!5728548 true))

(declare-fun d!1806905 () Bool)

(declare-fun c!1010761 () Bool)

(assert (=> d!1806905 (= c!1010761 ((_ is EmptyExpr!15727) lt!2279762))))

(declare-fun e!3522213 () Bool)

(assert (=> d!1806905 (= (matchRSpec!2830 lt!2279762 s!2326) e!3522213)))

(declare-fun b!5728543 () Bool)

(declare-fun e!3522216 () Bool)

(assert (=> b!5728543 (= e!3522213 e!3522216)))

(declare-fun res!2418405 () Bool)

(assert (=> b!5728543 (= res!2418405 (not ((_ is EmptyLang!15727) lt!2279762)))))

(assert (=> b!5728543 (=> (not res!2418405) (not e!3522216))))

(declare-fun b!5728544 () Bool)

(declare-fun c!1010764 () Bool)

(assert (=> b!5728544 (= c!1010764 ((_ is Union!15727) lt!2279762))))

(declare-fun e!3522215 () Bool)

(declare-fun e!3522212 () Bool)

(assert (=> b!5728544 (= e!3522215 e!3522212)))

(declare-fun b!5728545 () Bool)

(assert (=> b!5728545 (= e!3522215 (= s!2326 (Cons!63358 (c!1010515 lt!2279762) Nil!63358)))))

(declare-fun b!5728546 () Bool)

(declare-fun res!2418407 () Bool)

(declare-fun e!3522210 () Bool)

(assert (=> b!5728546 (=> res!2418407 e!3522210)))

(declare-fun call!438011 () Bool)

(assert (=> b!5728546 (= res!2418407 call!438011)))

(declare-fun e!3522214 () Bool)

(assert (=> b!5728546 (= e!3522214 e!3522210)))

(declare-fun b!5728547 () Bool)

(assert (=> b!5728547 (= e!3522213 call!438011)))

(declare-fun call!438012 () Bool)

(assert (=> b!5728548 (= e!3522214 call!438012)))

(declare-fun b!5728549 () Bool)

(declare-fun e!3522211 () Bool)

(assert (=> b!5728549 (= e!3522211 (matchRSpec!2830 (regTwo!31967 lt!2279762) s!2326))))

(declare-fun b!5728550 () Bool)

(declare-fun c!1010763 () Bool)

(assert (=> b!5728550 (= c!1010763 ((_ is ElementMatch!15727) lt!2279762))))

(assert (=> b!5728550 (= e!3522216 e!3522215)))

(declare-fun bm!438006 () Bool)

(assert (=> bm!438006 (= call!438011 (isEmpty!35236 s!2326))))

(declare-fun b!5728551 () Bool)

(assert (=> b!5728551 (= e!3522212 e!3522211)))

(declare-fun res!2418406 () Bool)

(assert (=> b!5728551 (= res!2418406 (matchRSpec!2830 (regOne!31967 lt!2279762) s!2326))))

(assert (=> b!5728551 (=> res!2418406 e!3522211)))

(declare-fun c!1010762 () Bool)

(declare-fun bm!438007 () Bool)

(assert (=> bm!438007 (= call!438012 (Exists!2827 (ite c!1010762 lambda!309827 lambda!309828)))))

(assert (=> b!5728552 (= e!3522210 call!438012)))

(declare-fun b!5728553 () Bool)

(assert (=> b!5728553 (= e!3522212 e!3522214)))

(assert (=> b!5728553 (= c!1010762 ((_ is Star!15727) lt!2279762))))

(assert (= (and d!1806905 c!1010761) b!5728547))

(assert (= (and d!1806905 (not c!1010761)) b!5728543))

(assert (= (and b!5728543 res!2418405) b!5728550))

(assert (= (and b!5728550 c!1010763) b!5728545))

(assert (= (and b!5728550 (not c!1010763)) b!5728544))

(assert (= (and b!5728544 c!1010764) b!5728551))

(assert (= (and b!5728544 (not c!1010764)) b!5728553))

(assert (= (and b!5728551 (not res!2418406)) b!5728549))

(assert (= (and b!5728553 c!1010762) b!5728546))

(assert (= (and b!5728553 (not c!1010762)) b!5728548))

(assert (= (and b!5728546 (not res!2418407)) b!5728552))

(assert (= (or b!5728552 b!5728548) bm!438007))

(assert (= (or b!5728547 b!5728546) bm!438006))

(declare-fun m!6680796 () Bool)

(assert (=> b!5728549 m!6680796))

(assert (=> bm!438006 m!6680286))

(declare-fun m!6680798 () Bool)

(assert (=> b!5728551 m!6680798))

(declare-fun m!6680800 () Bool)

(assert (=> bm!438007 m!6680800))

(assert (=> b!5727674 d!1806905))

(declare-fun d!1806907 () Bool)

(assert (=> d!1806907 (= (matchR!7912 lt!2279762 s!2326) (matchRSpec!2830 lt!2279762 s!2326))))

(declare-fun lt!2279904 () Unit!156440)

(assert (=> d!1806907 (= lt!2279904 (choose!43329 lt!2279762 s!2326))))

(assert (=> d!1806907 (validRegex!7463 lt!2279762)))

(assert (=> d!1806907 (= (mainMatchTheorem!2830 lt!2279762 s!2326) lt!2279904)))

(declare-fun bs!1339372 () Bool)

(assert (= bs!1339372 d!1806907))

(assert (=> bs!1339372 m!6680006))

(assert (=> bs!1339372 m!6680008))

(declare-fun m!6680802 () Bool)

(assert (=> bs!1339372 m!6680802))

(assert (=> bs!1339372 m!6680788))

(assert (=> b!5727674 d!1806907))

(declare-fun d!1806909 () Bool)

(declare-fun choose!43337 ((InoxSet Context!10222) Int) (InoxSet Context!10222))

(assert (=> d!1806909 (= (map!14511 lt!2279752 lambda!309756) (choose!43337 lt!2279752 lambda!309756))))

(declare-fun bs!1339373 () Bool)

(assert (= bs!1339373 d!1806909))

(declare-fun m!6680804 () Bool)

(assert (=> bs!1339373 m!6680804))

(assert (=> b!5727673 d!1806909))

(declare-fun d!1806911 () Bool)

(assert (=> d!1806911 (forall!14858 (++!13926 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742) lambda!309757)))

(declare-fun lt!2279907 () Unit!156440)

(declare-fun choose!43338 (List!63480 List!63480 Int) Unit!156440)

(assert (=> d!1806911 (= lt!2279907 (choose!43338 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742 lambda!309757))))

(assert (=> d!1806911 (forall!14858 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lambda!309757)))

(assert (=> d!1806911 (= (lemmaConcatPreservesForall!296 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742 lambda!309757) lt!2279907)))

(declare-fun bs!1339374 () Bool)

(assert (= bs!1339374 d!1806911))

(assert (=> bs!1339374 m!6679990))

(assert (=> bs!1339374 m!6679990))

(declare-fun m!6680806 () Bool)

(assert (=> bs!1339374 m!6680806))

(declare-fun m!6680808 () Bool)

(assert (=> bs!1339374 m!6680808))

(declare-fun m!6680810 () Bool)

(assert (=> bs!1339374 m!6680810))

(assert (=> b!5727673 d!1806911))

(declare-fun d!1806913 () Bool)

(declare-fun dynLambda!24796 (Int Context!10222) Context!10222)

(assert (=> d!1806913 (= (map!14511 lt!2279752 lambda!309756) (store ((as const (Array Context!10222 Bool)) false) (dynLambda!24796 lambda!309756 lt!2279750) true))))

(declare-fun lt!2279910 () Unit!156440)

(declare-fun choose!43339 ((InoxSet Context!10222) Context!10222 Int) Unit!156440)

(assert (=> d!1806913 (= lt!2279910 (choose!43339 lt!2279752 lt!2279750 lambda!309756))))

(assert (=> d!1806913 (= lt!2279752 (store ((as const (Array Context!10222 Bool)) false) lt!2279750 true))))

(assert (=> d!1806913 (= (lemmaMapOnSingletonSet!122 lt!2279752 lt!2279750 lambda!309756) lt!2279910)))

(declare-fun b_lambda!216475 () Bool)

(assert (=> (not b_lambda!216475) (not d!1806913)))

(declare-fun bs!1339375 () Bool)

(assert (= bs!1339375 d!1806913))

(declare-fun m!6680812 () Bool)

(assert (=> bs!1339375 m!6680812))

(declare-fun m!6680814 () Bool)

(assert (=> bs!1339375 m!6680814))

(assert (=> bs!1339375 m!6680812))

(assert (=> bs!1339375 m!6680084))

(declare-fun m!6680816 () Bool)

(assert (=> bs!1339375 m!6680816))

(assert (=> bs!1339375 m!6679988))

(assert (=> b!5727673 d!1806913))

(declare-fun bs!1339376 () Bool)

(declare-fun d!1806915 () Bool)

(assert (= bs!1339376 (and d!1806915 b!5727673)))

(declare-fun lambda!309833 () Int)

(assert (=> bs!1339376 (= (= (exprs!5611 lt!2279725) lt!2279742) (= lambda!309833 lambda!309756))))

(assert (=> d!1806915 true))

(assert (=> d!1806915 (= (appendTo!106 lt!2279752 lt!2279725) (map!14511 lt!2279752 lambda!309833))))

(declare-fun bs!1339377 () Bool)

(assert (= bs!1339377 d!1806915))

(declare-fun m!6680818 () Bool)

(assert (=> bs!1339377 m!6680818))

(assert (=> b!5727673 d!1806915))

(declare-fun lt!2279915 () List!63480)

(declare-fun e!3522221 () Bool)

(declare-fun b!5728567 () Bool)

(assert (=> b!5728567 (= e!3522221 (or (not (= lt!2279742 Nil!63356)) (= lt!2279915 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356))))))

(declare-fun d!1806917 () Bool)

(assert (=> d!1806917 e!3522221))

(declare-fun res!2418413 () Bool)

(assert (=> d!1806917 (=> (not res!2418413) (not e!3522221))))

(declare-fun content!11528 (List!63480) (InoxSet Regex!15727))

(assert (=> d!1806917 (= res!2418413 (= (content!11528 lt!2279915) ((_ map or) (content!11528 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)) (content!11528 lt!2279742))))))

(declare-fun e!3522222 () List!63480)

(assert (=> d!1806917 (= lt!2279915 e!3522222)))

(declare-fun c!1010768 () Bool)

(assert (=> d!1806917 (= c!1010768 ((_ is Nil!63356) (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)))))

(assert (=> d!1806917 (= (++!13926 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356) lt!2279742) lt!2279915)))

(declare-fun b!5728564 () Bool)

(assert (=> b!5728564 (= e!3522222 lt!2279742)))

(declare-fun b!5728565 () Bool)

(assert (=> b!5728565 (= e!3522222 (Cons!63356 (h!69804 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)) (++!13926 (t!376808 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)) lt!2279742)))))

(declare-fun b!5728566 () Bool)

(declare-fun res!2418412 () Bool)

(assert (=> b!5728566 (=> (not res!2418412) (not e!3522221))))

(declare-fun size!40041 (List!63480) Int)

(assert (=> b!5728566 (= res!2418412 (= (size!40041 lt!2279915) (+ (size!40041 (Cons!63356 (reg!16056 (regOne!31966 r!7292)) Nil!63356)) (size!40041 lt!2279742))))))

(assert (= (and d!1806917 c!1010768) b!5728564))

(assert (= (and d!1806917 (not c!1010768)) b!5728565))

(assert (= (and d!1806917 res!2418413) b!5728566))

(assert (= (and b!5728566 res!2418412) b!5728567))

(declare-fun m!6680820 () Bool)

(assert (=> d!1806917 m!6680820))

(declare-fun m!6680822 () Bool)

(assert (=> d!1806917 m!6680822))

(declare-fun m!6680824 () Bool)

(assert (=> d!1806917 m!6680824))

(declare-fun m!6680826 () Bool)

(assert (=> b!5728565 m!6680826))

(declare-fun m!6680828 () Bool)

(assert (=> b!5728566 m!6680828))

(declare-fun m!6680830 () Bool)

(assert (=> b!5728566 m!6680830))

(declare-fun m!6680832 () Bool)

(assert (=> b!5728566 m!6680832))

(assert (=> b!5727673 d!1806917))

(assert (=> b!5727693 d!1806849))

(declare-fun d!1806919 () Bool)

(declare-fun c!1010769 () Bool)

(assert (=> d!1806919 (= c!1010769 (isEmpty!35236 (_1!36127 lt!2279747)))))

(declare-fun e!3522223 () Bool)

(assert (=> d!1806919 (= (matchZipper!1865 lt!2279752 (_1!36127 lt!2279747)) e!3522223)))

(declare-fun b!5728568 () Bool)

(assert (=> b!5728568 (= e!3522223 (nullableZipper!1673 lt!2279752))))

(declare-fun b!5728569 () Bool)

(assert (=> b!5728569 (= e!3522223 (matchZipper!1865 (derivationStepZipper!1810 lt!2279752 (head!12126 (_1!36127 lt!2279747))) (tail!11221 (_1!36127 lt!2279747))))))

(assert (= (and d!1806919 c!1010769) b!5728568))

(assert (= (and d!1806919 (not c!1010769)) b!5728569))

(declare-fun m!6680834 () Bool)

(assert (=> d!1806919 m!6680834))

(declare-fun m!6680836 () Bool)

(assert (=> b!5728568 m!6680836))

(declare-fun m!6680838 () Bool)

(assert (=> b!5728569 m!6680838))

(assert (=> b!5728569 m!6680838))

(declare-fun m!6680840 () Bool)

(assert (=> b!5728569 m!6680840))

(declare-fun m!6680842 () Bool)

(assert (=> b!5728569 m!6680842))

(assert (=> b!5728569 m!6680840))

(assert (=> b!5728569 m!6680842))

(declare-fun m!6680844 () Bool)

(assert (=> b!5728569 m!6680844))

(assert (=> b!5727692 d!1806919))

(declare-fun b!5728574 () Bool)

(declare-fun e!3522226 () Bool)

(declare-fun tp!1585815 () Bool)

(assert (=> b!5728574 (= e!3522226 (and tp_is_empty!40707 tp!1585815))))

(assert (=> b!5727665 (= tp!1585749 e!3522226)))

(assert (= (and b!5727665 ((_ is Cons!63358) (t!376810 s!2326))) b!5728574))

(declare-fun b!5728587 () Bool)

(declare-fun e!3522229 () Bool)

(declare-fun tp!1585829 () Bool)

(assert (=> b!5728587 (= e!3522229 tp!1585829)))

(declare-fun b!5728586 () Bool)

(declare-fun tp!1585827 () Bool)

(declare-fun tp!1585830 () Bool)

(assert (=> b!5728586 (= e!3522229 (and tp!1585827 tp!1585830))))

(assert (=> b!5727696 (= tp!1585751 e!3522229)))

(declare-fun b!5728585 () Bool)

(assert (=> b!5728585 (= e!3522229 tp_is_empty!40707)))

(declare-fun b!5728588 () Bool)

(declare-fun tp!1585826 () Bool)

(declare-fun tp!1585828 () Bool)

(assert (=> b!5728588 (= e!3522229 (and tp!1585826 tp!1585828))))

(assert (= (and b!5727696 ((_ is ElementMatch!15727) (regOne!31967 r!7292))) b!5728585))

(assert (= (and b!5727696 ((_ is Concat!24572) (regOne!31967 r!7292))) b!5728586))

(assert (= (and b!5727696 ((_ is Star!15727) (regOne!31967 r!7292))) b!5728587))

(assert (= (and b!5727696 ((_ is Union!15727) (regOne!31967 r!7292))) b!5728588))

(declare-fun b!5728591 () Bool)

(declare-fun e!3522230 () Bool)

(declare-fun tp!1585834 () Bool)

(assert (=> b!5728591 (= e!3522230 tp!1585834)))

(declare-fun b!5728590 () Bool)

(declare-fun tp!1585832 () Bool)

(declare-fun tp!1585835 () Bool)

(assert (=> b!5728590 (= e!3522230 (and tp!1585832 tp!1585835))))

(assert (=> b!5727696 (= tp!1585747 e!3522230)))

(declare-fun b!5728589 () Bool)

(assert (=> b!5728589 (= e!3522230 tp_is_empty!40707)))

(declare-fun b!5728592 () Bool)

(declare-fun tp!1585831 () Bool)

(declare-fun tp!1585833 () Bool)

(assert (=> b!5728592 (= e!3522230 (and tp!1585831 tp!1585833))))

(assert (= (and b!5727696 ((_ is ElementMatch!15727) (regTwo!31967 r!7292))) b!5728589))

(assert (= (and b!5727696 ((_ is Concat!24572) (regTwo!31967 r!7292))) b!5728590))

(assert (= (and b!5727696 ((_ is Star!15727) (regTwo!31967 r!7292))) b!5728591))

(assert (= (and b!5727696 ((_ is Union!15727) (regTwo!31967 r!7292))) b!5728592))

(declare-fun b!5728600 () Bool)

(declare-fun e!3522236 () Bool)

(declare-fun tp!1585840 () Bool)

(assert (=> b!5728600 (= e!3522236 tp!1585840)))

(declare-fun e!3522235 () Bool)

(declare-fun b!5728599 () Bool)

(declare-fun tp!1585841 () Bool)

(assert (=> b!5728599 (= e!3522235 (and (inv!82564 (h!69805 (t!376809 zl!343))) e!3522236 tp!1585841))))

(assert (=> b!5727663 (= tp!1585745 e!3522235)))

(assert (= b!5728599 b!5728600))

(assert (= (and b!5727663 ((_ is Cons!63357) (t!376809 zl!343))) b!5728599))

(declare-fun m!6680846 () Bool)

(assert (=> b!5728599 m!6680846))

(declare-fun b!5728603 () Bool)

(declare-fun e!3522237 () Bool)

(declare-fun tp!1585845 () Bool)

(assert (=> b!5728603 (= e!3522237 tp!1585845)))

(declare-fun b!5728602 () Bool)

(declare-fun tp!1585843 () Bool)

(declare-fun tp!1585846 () Bool)

(assert (=> b!5728602 (= e!3522237 (and tp!1585843 tp!1585846))))

(assert (=> b!5727678 (= tp!1585753 e!3522237)))

(declare-fun b!5728601 () Bool)

(assert (=> b!5728601 (= e!3522237 tp_is_empty!40707)))

(declare-fun b!5728604 () Bool)

(declare-fun tp!1585842 () Bool)

(declare-fun tp!1585844 () Bool)

(assert (=> b!5728604 (= e!3522237 (and tp!1585842 tp!1585844))))

(assert (= (and b!5727678 ((_ is ElementMatch!15727) (regOne!31966 r!7292))) b!5728601))

(assert (= (and b!5727678 ((_ is Concat!24572) (regOne!31966 r!7292))) b!5728602))

(assert (= (and b!5727678 ((_ is Star!15727) (regOne!31966 r!7292))) b!5728603))

(assert (= (and b!5727678 ((_ is Union!15727) (regOne!31966 r!7292))) b!5728604))

(declare-fun b!5728607 () Bool)

(declare-fun e!3522238 () Bool)

(declare-fun tp!1585850 () Bool)

(assert (=> b!5728607 (= e!3522238 tp!1585850)))

(declare-fun b!5728606 () Bool)

(declare-fun tp!1585848 () Bool)

(declare-fun tp!1585851 () Bool)

(assert (=> b!5728606 (= e!3522238 (and tp!1585848 tp!1585851))))

(assert (=> b!5727678 (= tp!1585754 e!3522238)))

(declare-fun b!5728605 () Bool)

(assert (=> b!5728605 (= e!3522238 tp_is_empty!40707)))

(declare-fun b!5728608 () Bool)

(declare-fun tp!1585847 () Bool)

(declare-fun tp!1585849 () Bool)

(assert (=> b!5728608 (= e!3522238 (and tp!1585847 tp!1585849))))

(assert (= (and b!5727678 ((_ is ElementMatch!15727) (regTwo!31966 r!7292))) b!5728605))

(assert (= (and b!5727678 ((_ is Concat!24572) (regTwo!31966 r!7292))) b!5728606))

(assert (= (and b!5727678 ((_ is Star!15727) (regTwo!31966 r!7292))) b!5728607))

(assert (= (and b!5727678 ((_ is Union!15727) (regTwo!31966 r!7292))) b!5728608))

(declare-fun b!5728611 () Bool)

(declare-fun e!3522239 () Bool)

(declare-fun tp!1585855 () Bool)

(assert (=> b!5728611 (= e!3522239 tp!1585855)))

(declare-fun b!5728610 () Bool)

(declare-fun tp!1585853 () Bool)

(declare-fun tp!1585856 () Bool)

(assert (=> b!5728610 (= e!3522239 (and tp!1585853 tp!1585856))))

(assert (=> b!5727694 (= tp!1585746 e!3522239)))

(declare-fun b!5728609 () Bool)

(assert (=> b!5728609 (= e!3522239 tp_is_empty!40707)))

(declare-fun b!5728612 () Bool)

(declare-fun tp!1585852 () Bool)

(declare-fun tp!1585854 () Bool)

(assert (=> b!5728612 (= e!3522239 (and tp!1585852 tp!1585854))))

(assert (= (and b!5727694 ((_ is ElementMatch!15727) (reg!16056 r!7292))) b!5728609))

(assert (= (and b!5727694 ((_ is Concat!24572) (reg!16056 r!7292))) b!5728610))

(assert (= (and b!5727694 ((_ is Star!15727) (reg!16056 r!7292))) b!5728611))

(assert (= (and b!5727694 ((_ is Union!15727) (reg!16056 r!7292))) b!5728612))

(declare-fun condSetEmpty!38419 () Bool)

(assert (=> setNonEmpty!38413 (= condSetEmpty!38419 (= setRest!38413 ((as const (Array Context!10222 Bool)) false)))))

(declare-fun setRes!38419 () Bool)

(assert (=> setNonEmpty!38413 (= tp!1585750 setRes!38419)))

(declare-fun setIsEmpty!38419 () Bool)

(assert (=> setIsEmpty!38419 setRes!38419))

(declare-fun tp!1585862 () Bool)

(declare-fun setNonEmpty!38419 () Bool)

(declare-fun e!3522242 () Bool)

(declare-fun setElem!38419 () Context!10222)

(assert (=> setNonEmpty!38419 (= setRes!38419 (and tp!1585862 (inv!82564 setElem!38419) e!3522242))))

(declare-fun setRest!38419 () (InoxSet Context!10222))

(assert (=> setNonEmpty!38419 (= setRest!38413 ((_ map or) (store ((as const (Array Context!10222 Bool)) false) setElem!38419 true) setRest!38419))))

(declare-fun b!5728617 () Bool)

(declare-fun tp!1585861 () Bool)

(assert (=> b!5728617 (= e!3522242 tp!1585861)))

(assert (= (and setNonEmpty!38413 condSetEmpty!38419) setIsEmpty!38419))

(assert (= (and setNonEmpty!38413 (not condSetEmpty!38419)) setNonEmpty!38419))

(assert (= setNonEmpty!38419 b!5728617))

(declare-fun m!6680848 () Bool)

(assert (=> setNonEmpty!38419 m!6680848))

(declare-fun b!5728622 () Bool)

(declare-fun e!3522245 () Bool)

(declare-fun tp!1585867 () Bool)

(declare-fun tp!1585868 () Bool)

(assert (=> b!5728622 (= e!3522245 (and tp!1585867 tp!1585868))))

(assert (=> b!5727672 (= tp!1585752 e!3522245)))

(assert (= (and b!5727672 ((_ is Cons!63356) (exprs!5611 setElem!38413))) b!5728622))

(declare-fun b!5728623 () Bool)

(declare-fun e!3522246 () Bool)

(declare-fun tp!1585869 () Bool)

(declare-fun tp!1585870 () Bool)

(assert (=> b!5728623 (= e!3522246 (and tp!1585869 tp!1585870))))

(assert (=> b!5727687 (= tp!1585748 e!3522246)))

(assert (= (and b!5727687 ((_ is Cons!63356) (exprs!5611 (h!69805 zl!343)))) b!5728623))

(declare-fun b_lambda!216477 () Bool)

(assert (= b_lambda!216455 (or b!5727690 b_lambda!216477)))

(declare-fun bs!1339378 () Bool)

(declare-fun d!1806921 () Bool)

(assert (= bs!1339378 (and d!1806921 b!5727690)))

(assert (=> bs!1339378 (= (dynLambda!24795 lambda!309755 (h!69805 zl!343)) (derivationStepZipperUp!995 (h!69805 zl!343) (h!69806 s!2326)))))

(assert (=> bs!1339378 m!6680046))

(assert (=> d!1806729 d!1806921))

(declare-fun b_lambda!216479 () Bool)

(assert (= b_lambda!216473 (or b!5727690 b_lambda!216479)))

(declare-fun bs!1339379 () Bool)

(declare-fun d!1806923 () Bool)

(assert (= bs!1339379 (and d!1806923 b!5727690)))

(assert (=> bs!1339379 (= (dynLambda!24795 lambda!309755 lt!2279750) (derivationStepZipperUp!995 lt!2279750 (h!69806 s!2326)))))

(assert (=> bs!1339379 m!6680100))

(assert (=> d!1806883 d!1806923))

(declare-fun b_lambda!216481 () Bool)

(assert (= b_lambda!216475 (or b!5727673 b_lambda!216481)))

(declare-fun bs!1339380 () Bool)

(declare-fun d!1806925 () Bool)

(assert (= bs!1339380 (and d!1806925 b!5727673)))

(declare-fun lt!2279916 () Unit!156440)

(assert (=> bs!1339380 (= lt!2279916 (lemmaConcatPreservesForall!296 (exprs!5611 lt!2279750) lt!2279742 lambda!309757))))

(assert (=> bs!1339380 (= (dynLambda!24796 lambda!309756 lt!2279750) (Context!10223 (++!13926 (exprs!5611 lt!2279750) lt!2279742)))))

(declare-fun m!6680850 () Bool)

(assert (=> bs!1339380 m!6680850))

(declare-fun m!6680852 () Bool)

(assert (=> bs!1339380 m!6680852))

(assert (=> d!1806913 d!1806925))

(declare-fun b_lambda!216483 () Bool)

(assert (= b_lambda!216469 (or b!5727690 b_lambda!216483)))

(declare-fun bs!1339381 () Bool)

(declare-fun d!1806927 () Bool)

(assert (= bs!1339381 (and d!1806927 b!5727690)))

(assert (=> bs!1339381 (= (dynLambda!24795 lambda!309755 lt!2279753) (derivationStepZipperUp!995 lt!2279753 (h!69806 s!2326)))))

(assert (=> bs!1339381 m!6680074))

(assert (=> d!1806859 d!1806927))

(declare-fun b_lambda!216485 () Bool)

(assert (= b_lambda!216471 (or b!5727690 b_lambda!216485)))

(declare-fun bs!1339382 () Bool)

(declare-fun d!1806929 () Bool)

(assert (= bs!1339382 (and d!1806929 b!5727690)))

(assert (=> bs!1339382 (= (dynLambda!24795 lambda!309755 lt!2279725) (derivationStepZipperUp!995 lt!2279725 (h!69806 s!2326)))))

(assert (=> bs!1339382 m!6680094))

(assert (=> d!1806879 d!1806929))

(check-sat (not b!5728481) (not b!5728612) (not d!1806809) (not d!1806737) (not b!5728463) (not bm!437995) (not d!1806855) (not b!5728063) (not bs!1339381) (not bm!438000) (not b!5728188) (not b!5728565) (not b!5728462) (not b!5728194) (not d!1806803) (not d!1806711) (not d!1806897) (not d!1806843) (not b!5728190) (not b!5728549) (not b!5728617) (not b!5728604) (not b!5728392) (not b!5728195) (not d!1806845) (not bs!1339380) (not b!5728391) (not bm!437945) (not setNonEmpty!38419) (not b!5728480) (not b!5728588) (not bm!438003) (not b!5728193) (not d!1806797) (not b!5728334) (not b!5728539) (not bs!1339382) (not b!5728551) (not d!1806903) (not d!1806899) (not d!1806841) (not b!5728468) (not d!1806919) (not b!5728520) (not b!5728519) (not b!5728527) (not bm!437962) (not b!5728378) (not d!1806849) (not b!5727998) (not d!1806895) (not d!1806907) (not b_lambda!216483) (not b!5728599) (not bm!437971) (not b!5728465) (not b!5728513) (not d!1806835) (not b!5728050) (not b!5728187) (not bm!438005) (not bm!437961) (not d!1806833) (not b!5728353) (not bm!437944) (not d!1806901) (not b!5728011) (not b!5728485) (not b!5728517) (not b!5728354) (not d!1806805) (not d!1806743) (not b!5728332) (not d!1806871) (not b!5728531) (not b!5728012) (not b!5728592) (not d!1806825) (not d!1806913) (not bm!437958) (not b!5728600) (not b!5728422) (not d!1806867) (not b!5728532) (not d!1806887) (not d!1806831) (not b!5728451) (not b!5728534) (not b!5728458) (not b!5728486) (not d!1806865) (not b!5727950) (not d!1806891) (not d!1806799) (not d!1806893) (not b!5728064) (not b!5728379) (not b!5728590) (not b!5728569) (not bm!437996) (not b!5728607) (not d!1806879) (not b!5728574) (not b!5728373) (not b!5728610) (not bs!1339379) (not b!5728338) (not b!5728538) (not b!5728136) (not b!5728394) (not d!1806729) (not b!5727951) (not d!1806909) (not d!1806917) (not bm!438004) (not b!5728568) (not b!5728456) (not b!5728467) (not d!1806859) (not d!1806863) (not d!1806829) (not b!5728464) (not d!1806889) (not d!1806885) (not b!5728606) (not bm!437993) (not bm!438006) (not b!5728603) (not bm!438007) (not b_lambda!216481) (not d!1806861) (not d!1806837) (not b!5728591) (not b!5728423) (not b!5728335) (not bs!1339378) (not d!1806869) (not b!5728586) (not b_lambda!216485) (not b!5728587) (not d!1806883) (not b_lambda!216477) (not b!5728469) (not b!5728134) (not b!5728450) (not b!5728452) (not b!5728339) (not b!5728537) (not bm!437964) (not b!5728623) (not b!5728453) (not bm!437970) (not b!5728424) (not b!5728377) (not b!5728337) (not b!5728602) (not d!1806915) (not b!5728466) (not b!5727997) (not b!5728611) (not b!5728622) (not b!5728514) (not b!5728518) (not b!5728455) (not b!5728516) (not bm!438001) (not bm!437974) (not b!5728492) (not b!5728566) (not b!5728374) (not b!5728395) tp_is_empty!40707 (not d!1806911) (not b!5728380) (not bm!437997) (not b!5728608) (not d!1806853) (not b_lambda!216479) (not d!1806827))
(check-sat)
