; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!598852 () Bool)

(assert start!598852)

(declare-fun b!5853752 () Bool)

(assert (=> b!5853752 true))

(declare-fun tp!1619432 () Bool)

(declare-fun b!5853747 () Bool)

(declare-datatypes ((C!32112 0))(
  ( (C!32113 (val!25758 Int)) )
))
(declare-datatypes ((Regex!15921 0))(
  ( (ElementMatch!15921 (c!1037845 C!32112)) (Concat!24766 (regOne!32354 Regex!15921) (regTwo!32354 Regex!15921)) (EmptyExpr!15921) (Star!15921 (reg!16250 Regex!15921)) (EmptyLang!15921) (Union!15921 (regOne!32355 Regex!15921) (regTwo!32355 Regex!15921)) )
))
(declare-datatypes ((List!64062 0))(
  ( (Nil!63938) (Cons!63938 (h!70386 Regex!15921) (t!377427 List!64062)) )
))
(declare-datatypes ((Context!10610 0))(
  ( (Context!10611 (exprs!5805 List!64062)) )
))
(declare-datatypes ((List!64063 0))(
  ( (Nil!63939) (Cons!63939 (h!70387 Context!10610) (t!377428 List!64063)) )
))
(declare-fun zl!343 () List!64063)

(declare-fun e!3589580 () Bool)

(declare-fun e!3589583 () Bool)

(declare-fun inv!83049 (Context!10610) Bool)

(assert (=> b!5853747 (= e!3589580 (and (inv!83049 (h!70387 zl!343)) e!3589583 tp!1619432))))

(declare-fun b!5853748 () Bool)

(declare-fun e!3589578 () Bool)

(declare-fun tp_is_empty!41095 () Bool)

(declare-fun tp!1619429 () Bool)

(assert (=> b!5853748 (= e!3589578 (and tp_is_empty!41095 tp!1619429))))

(declare-fun b!5853749 () Bool)

(declare-fun tp!1619428 () Bool)

(assert (=> b!5853749 (= e!3589583 tp!1619428)))

(declare-fun setElem!39670 () Context!10610)

(declare-fun e!3589586 () Bool)

(declare-fun tp!1619431 () Bool)

(declare-fun setRes!39670 () Bool)

(declare-fun setNonEmpty!39670 () Bool)

(assert (=> setNonEmpty!39670 (= setRes!39670 (and tp!1619431 (inv!83049 setElem!39670) e!3589586))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10610))

(declare-fun setRest!39670 () (InoxSet Context!10610))

(assert (=> setNonEmpty!39670 (= z!1189 ((_ map or) (store ((as const (Array Context!10610 Bool)) false) setElem!39670 true) setRest!39670))))

(declare-fun b!5853751 () Bool)

(declare-fun res!2464182 () Bool)

(declare-fun e!3589577 () Bool)

(assert (=> b!5853751 (=> (not res!2464182) (not e!3589577))))

(declare-fun toList!9705 ((InoxSet Context!10610)) List!64063)

(assert (=> b!5853751 (= res!2464182 (= (toList!9705 z!1189) zl!343))))

(declare-fun e!3589589 () Bool)

(declare-fun e!3589576 () Bool)

(assert (=> b!5853752 (= e!3589589 e!3589576)))

(declare-fun res!2464185 () Bool)

(assert (=> b!5853752 (=> res!2464185 e!3589576)))

(declare-datatypes ((List!64064 0))(
  ( (Nil!63940) (Cons!63940 (h!70388 C!32112) (t!377429 List!64064)) )
))
(declare-fun s!2326 () List!64064)

(declare-fun lt!2304701 () (InoxSet Context!10610))

(declare-fun derivationStepZipper!1920 ((InoxSet Context!10610) C!32112) (InoxSet Context!10610))

(assert (=> b!5853752 (= res!2464185 (not (= (derivationStepZipper!1920 z!1189 (h!70388 s!2326)) lt!2304701)))))

(declare-fun lambda!320064 () Int)

(declare-fun flatMap!1452 ((InoxSet Context!10610) Int) (InoxSet Context!10610))

(declare-fun derivationStepZipperUp!1113 (Context!10610 C!32112) (InoxSet Context!10610))

(assert (=> b!5853752 (= (flatMap!1452 z!1189 lambda!320064) (derivationStepZipperUp!1113 (h!70387 zl!343) (h!70388 s!2326)))))

(declare-datatypes ((Unit!157113 0))(
  ( (Unit!157114) )
))
(declare-fun lt!2304693 () Unit!157113)

(declare-fun lemmaFlatMapOnSingletonSet!980 ((InoxSet Context!10610) Context!10610 Int) Unit!157113)

(assert (=> b!5853752 (= lt!2304693 (lemmaFlatMapOnSingletonSet!980 z!1189 (h!70387 zl!343) lambda!320064))))

(declare-fun b!5853753 () Bool)

(declare-fun res!2464188 () Bool)

(declare-fun e!3589587 () Bool)

(assert (=> b!5853753 (=> res!2464188 e!3589587)))

(declare-fun r!7292 () Regex!15921)

(get-info :version)

(assert (=> b!5853753 (= res!2464188 (or ((_ is EmptyExpr!15921) r!7292) ((_ is EmptyLang!15921) r!7292) ((_ is ElementMatch!15921) r!7292) (not ((_ is Union!15921) r!7292))))))

(declare-fun b!5853754 () Bool)

(declare-fun e!3589582 () Bool)

(assert (=> b!5853754 (= e!3589582 (inv!83049 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))))))

(declare-fun lt!2304695 () (InoxSet Context!10610))

(assert (=> b!5853754 (= lt!2304695 (derivationStepZipperUp!1113 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)) (h!70388 s!2326)))))

(declare-fun b!5853755 () Bool)

(declare-fun res!2464190 () Bool)

(assert (=> b!5853755 (=> res!2464190 e!3589587)))

(assert (=> b!5853755 (= res!2464190 (not ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5853756 () Bool)

(declare-fun e!3589584 () Bool)

(declare-fun tp!1619426 () Bool)

(assert (=> b!5853756 (= e!3589584 tp!1619426)))

(declare-fun b!5853757 () Bool)

(declare-fun e!3589588 () Bool)

(assert (=> b!5853757 (= e!3589576 e!3589588)))

(declare-fun res!2464189 () Bool)

(assert (=> b!5853757 (=> res!2464189 e!3589588)))

(declare-fun lt!2304696 () Bool)

(declare-fun lt!2304705 () Bool)

(assert (=> b!5853757 (= res!2464189 (not (= lt!2304696 lt!2304705)))))

(declare-fun matchZipper!1987 ((InoxSet Context!10610) List!64064) Bool)

(assert (=> b!5853757 (= lt!2304705 (matchZipper!1987 z!1189 s!2326))))

(assert (=> b!5853757 (= lt!2304696 (matchZipper!1987 lt!2304701 (t!377429 s!2326)))))

(declare-fun b!5853758 () Bool)

(declare-fun e!3589585 () Bool)

(assert (=> b!5853758 (= e!3589587 e!3589585)))

(declare-fun res!2464181 () Bool)

(assert (=> b!5853758 (=> res!2464181 e!3589585)))

(declare-fun lt!2304703 () Bool)

(declare-fun lt!2304691 () Bool)

(declare-fun lt!2304700 () Bool)

(assert (=> b!5853758 (= res!2464181 (or (not (= lt!2304703 (or lt!2304691 lt!2304700))) ((_ is Nil!63940) s!2326)))))

(declare-fun matchRSpec!3022 (Regex!15921 List!64064) Bool)

(assert (=> b!5853758 (= lt!2304700 (matchRSpec!3022 (regTwo!32355 r!7292) s!2326))))

(declare-fun matchR!8104 (Regex!15921 List!64064) Bool)

(assert (=> b!5853758 (= lt!2304700 (matchR!8104 (regTwo!32355 r!7292) s!2326))))

(declare-fun lt!2304704 () Unit!157113)

(declare-fun mainMatchTheorem!3022 (Regex!15921 List!64064) Unit!157113)

(assert (=> b!5853758 (= lt!2304704 (mainMatchTheorem!3022 (regTwo!32355 r!7292) s!2326))))

(assert (=> b!5853758 (= lt!2304691 (matchRSpec!3022 (regOne!32355 r!7292) s!2326))))

(assert (=> b!5853758 (= lt!2304691 (matchR!8104 (regOne!32355 r!7292) s!2326))))

(declare-fun lt!2304702 () Unit!157113)

(assert (=> b!5853758 (= lt!2304702 (mainMatchTheorem!3022 (regOne!32355 r!7292) s!2326))))

(declare-fun b!5853759 () Bool)

(declare-fun res!2464187 () Bool)

(assert (=> b!5853759 (=> res!2464187 e!3589587)))

(declare-fun generalisedConcat!1518 (List!64062) Regex!15921)

(assert (=> b!5853759 (= res!2464187 (not (= r!7292 (generalisedConcat!1518 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun b!5853760 () Bool)

(declare-fun tp!1619423 () Bool)

(declare-fun tp!1619425 () Bool)

(assert (=> b!5853760 (= e!3589584 (and tp!1619423 tp!1619425))))

(declare-fun b!5853761 () Bool)

(declare-fun e!3589579 () Bool)

(assert (=> b!5853761 (= e!3589585 e!3589579)))

(declare-fun res!2464178 () Bool)

(assert (=> b!5853761 (=> res!2464178 e!3589579)))

(declare-fun lt!2304699 () (InoxSet Context!10610))

(declare-fun lt!2304698 () (InoxSet Context!10610))

(assert (=> b!5853761 (= res!2464178 (not (= lt!2304699 lt!2304698)))))

(declare-fun lt!2304692 () Context!10610)

(declare-fun derivationStepZipperDown!1187 (Regex!15921 Context!10610 C!32112) (InoxSet Context!10610))

(assert (=> b!5853761 (= lt!2304698 (derivationStepZipperDown!1187 r!7292 lt!2304692 (h!70388 s!2326)))))

(assert (=> b!5853761 (= lt!2304692 (Context!10611 Nil!63938))))

(assert (=> b!5853761 (= lt!2304699 (derivationStepZipperUp!1113 (Context!10611 (Cons!63938 r!7292 Nil!63938)) (h!70388 s!2326)))))

(declare-fun b!5853762 () Bool)

(declare-fun tp!1619427 () Bool)

(declare-fun tp!1619430 () Bool)

(assert (=> b!5853762 (= e!3589584 (and tp!1619427 tp!1619430))))

(declare-fun b!5853750 () Bool)

(declare-fun res!2464176 () Bool)

(assert (=> b!5853750 (=> res!2464176 e!3589587)))

(declare-fun generalisedUnion!1765 (List!64062) Regex!15921)

(declare-fun unfocusZipperList!1342 (List!64063) List!64062)

(assert (=> b!5853750 (= res!2464176 (not (= r!7292 (generalisedUnion!1765 (unfocusZipperList!1342 zl!343)))))))

(declare-fun res!2464175 () Bool)

(assert (=> start!598852 (=> (not res!2464175) (not e!3589577))))

(declare-fun validRegex!7657 (Regex!15921) Bool)

(assert (=> start!598852 (= res!2464175 (validRegex!7657 r!7292))))

(assert (=> start!598852 e!3589577))

(assert (=> start!598852 e!3589584))

(declare-fun condSetEmpty!39670 () Bool)

(assert (=> start!598852 (= condSetEmpty!39670 (= z!1189 ((as const (Array Context!10610 Bool)) false)))))

(assert (=> start!598852 setRes!39670))

(assert (=> start!598852 e!3589580))

(assert (=> start!598852 e!3589578))

(declare-fun b!5853763 () Bool)

(declare-fun e!3589581 () Bool)

(declare-fun lt!2304694 () (InoxSet Context!10610))

(assert (=> b!5853763 (= e!3589581 (matchZipper!1987 lt!2304694 (t!377429 s!2326)))))

(declare-fun b!5853764 () Bool)

(declare-fun tp!1619424 () Bool)

(assert (=> b!5853764 (= e!3589586 tp!1619424)))

(declare-fun b!5853765 () Bool)

(assert (=> b!5853765 (= e!3589577 (not e!3589587))))

(declare-fun res!2464179 () Bool)

(assert (=> b!5853765 (=> res!2464179 e!3589587)))

(assert (=> b!5853765 (= res!2464179 (not ((_ is Cons!63939) zl!343)))))

(assert (=> b!5853765 (= lt!2304703 (matchRSpec!3022 r!7292 s!2326))))

(assert (=> b!5853765 (= lt!2304703 (matchR!8104 r!7292 s!2326))))

(declare-fun lt!2304706 () Unit!157113)

(assert (=> b!5853765 (= lt!2304706 (mainMatchTheorem!3022 r!7292 s!2326))))

(declare-fun setIsEmpty!39670 () Bool)

(assert (=> setIsEmpty!39670 setRes!39670))

(declare-fun b!5853766 () Bool)

(assert (=> b!5853766 (= e!3589584 tp_is_empty!41095)))

(declare-fun b!5853767 () Bool)

(assert (=> b!5853767 (= e!3589588 e!3589582)))

(declare-fun res!2464186 () Bool)

(assert (=> b!5853767 (=> res!2464186 e!3589582)))

(declare-fun lt!2304689 () Bool)

(assert (=> b!5853767 (= res!2464186 (or (not (= lt!2304689 lt!2304696)) (not (= lt!2304689 lt!2304705))))))

(assert (=> b!5853767 (= lt!2304696 lt!2304689)))

(assert (=> b!5853767 (= lt!2304689 e!3589581)))

(declare-fun res!2464180 () Bool)

(assert (=> b!5853767 (=> res!2464180 e!3589581)))

(declare-fun lt!2304690 () (InoxSet Context!10610))

(assert (=> b!5853767 (= res!2464180 (matchZipper!1987 lt!2304690 (t!377429 s!2326)))))

(declare-fun lt!2304697 () Unit!157113)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!822 ((InoxSet Context!10610) (InoxSet Context!10610) List!64064) Unit!157113)

(assert (=> b!5853767 (= lt!2304697 (lemmaZipperConcatMatchesSameAsBothZippers!822 lt!2304690 lt!2304694 (t!377429 s!2326)))))

(declare-fun b!5853768 () Bool)

(assert (=> b!5853768 (= e!3589579 e!3589589)))

(declare-fun res!2464183 () Bool)

(assert (=> b!5853768 (=> res!2464183 e!3589589)))

(assert (=> b!5853768 (= res!2464183 (not (= lt!2304698 lt!2304701)))))

(assert (=> b!5853768 (= lt!2304701 ((_ map or) lt!2304690 lt!2304694))))

(assert (=> b!5853768 (= lt!2304694 (derivationStepZipperDown!1187 (regTwo!32355 r!7292) lt!2304692 (h!70388 s!2326)))))

(assert (=> b!5853768 (= lt!2304690 (derivationStepZipperDown!1187 (regOne!32355 r!7292) lt!2304692 (h!70388 s!2326)))))

(declare-fun b!5853769 () Bool)

(declare-fun res!2464184 () Bool)

(assert (=> b!5853769 (=> (not res!2464184) (not e!3589577))))

(declare-fun unfocusZipper!1663 (List!64063) Regex!15921)

(assert (=> b!5853769 (= res!2464184 (= r!7292 (unfocusZipper!1663 zl!343)))))

(declare-fun b!5853770 () Bool)

(declare-fun res!2464177 () Bool)

(assert (=> b!5853770 (=> res!2464177 e!3589587)))

(declare-fun isEmpty!35796 (List!64063) Bool)

(assert (=> b!5853770 (= res!2464177 (not (isEmpty!35796 (t!377428 zl!343))))))

(assert (= (and start!598852 res!2464175) b!5853751))

(assert (= (and b!5853751 res!2464182) b!5853769))

(assert (= (and b!5853769 res!2464184) b!5853765))

(assert (= (and b!5853765 (not res!2464179)) b!5853770))

(assert (= (and b!5853770 (not res!2464177)) b!5853759))

(assert (= (and b!5853759 (not res!2464187)) b!5853755))

(assert (= (and b!5853755 (not res!2464190)) b!5853750))

(assert (= (and b!5853750 (not res!2464176)) b!5853753))

(assert (= (and b!5853753 (not res!2464188)) b!5853758))

(assert (= (and b!5853758 (not res!2464181)) b!5853761))

(assert (= (and b!5853761 (not res!2464178)) b!5853768))

(assert (= (and b!5853768 (not res!2464183)) b!5853752))

(assert (= (and b!5853752 (not res!2464185)) b!5853757))

(assert (= (and b!5853757 (not res!2464189)) b!5853767))

(assert (= (and b!5853767 (not res!2464180)) b!5853763))

(assert (= (and b!5853767 (not res!2464186)) b!5853754))

(assert (= (and start!598852 ((_ is ElementMatch!15921) r!7292)) b!5853766))

(assert (= (and start!598852 ((_ is Concat!24766) r!7292)) b!5853760))

(assert (= (and start!598852 ((_ is Star!15921) r!7292)) b!5853756))

(assert (= (and start!598852 ((_ is Union!15921) r!7292)) b!5853762))

(assert (= (and start!598852 condSetEmpty!39670) setIsEmpty!39670))

(assert (= (and start!598852 (not condSetEmpty!39670)) setNonEmpty!39670))

(assert (= setNonEmpty!39670 b!5853764))

(assert (= b!5853747 b!5853749))

(assert (= (and start!598852 ((_ is Cons!63939) zl!343)) b!5853747))

(assert (= (and start!598852 ((_ is Cons!63940) s!2326)) b!5853748))

(declare-fun m!6772830 () Bool)

(assert (=> b!5853769 m!6772830))

(declare-fun m!6772832 () Bool)

(assert (=> setNonEmpty!39670 m!6772832))

(declare-fun m!6772834 () Bool)

(assert (=> b!5853752 m!6772834))

(declare-fun m!6772836 () Bool)

(assert (=> b!5853752 m!6772836))

(declare-fun m!6772838 () Bool)

(assert (=> b!5853752 m!6772838))

(declare-fun m!6772840 () Bool)

(assert (=> b!5853752 m!6772840))

(declare-fun m!6772842 () Bool)

(assert (=> b!5853759 m!6772842))

(declare-fun m!6772844 () Bool)

(assert (=> b!5853754 m!6772844))

(declare-fun m!6772846 () Bool)

(assert (=> b!5853754 m!6772846))

(declare-fun m!6772848 () Bool)

(assert (=> b!5853770 m!6772848))

(declare-fun m!6772850 () Bool)

(assert (=> b!5853763 m!6772850))

(declare-fun m!6772852 () Bool)

(assert (=> start!598852 m!6772852))

(declare-fun m!6772854 () Bool)

(assert (=> b!5853751 m!6772854))

(declare-fun m!6772856 () Bool)

(assert (=> b!5853761 m!6772856))

(declare-fun m!6772858 () Bool)

(assert (=> b!5853761 m!6772858))

(declare-fun m!6772860 () Bool)

(assert (=> b!5853758 m!6772860))

(declare-fun m!6772862 () Bool)

(assert (=> b!5853758 m!6772862))

(declare-fun m!6772864 () Bool)

(assert (=> b!5853758 m!6772864))

(declare-fun m!6772866 () Bool)

(assert (=> b!5853758 m!6772866))

(declare-fun m!6772868 () Bool)

(assert (=> b!5853758 m!6772868))

(declare-fun m!6772870 () Bool)

(assert (=> b!5853758 m!6772870))

(declare-fun m!6772872 () Bool)

(assert (=> b!5853757 m!6772872))

(declare-fun m!6772874 () Bool)

(assert (=> b!5853757 m!6772874))

(declare-fun m!6772876 () Bool)

(assert (=> b!5853765 m!6772876))

(declare-fun m!6772878 () Bool)

(assert (=> b!5853765 m!6772878))

(declare-fun m!6772880 () Bool)

(assert (=> b!5853765 m!6772880))

(declare-fun m!6772882 () Bool)

(assert (=> b!5853747 m!6772882))

(declare-fun m!6772884 () Bool)

(assert (=> b!5853750 m!6772884))

(assert (=> b!5853750 m!6772884))

(declare-fun m!6772886 () Bool)

(assert (=> b!5853750 m!6772886))

(declare-fun m!6772888 () Bool)

(assert (=> b!5853767 m!6772888))

(declare-fun m!6772890 () Bool)

(assert (=> b!5853767 m!6772890))

(declare-fun m!6772892 () Bool)

(assert (=> b!5853768 m!6772892))

(declare-fun m!6772894 () Bool)

(assert (=> b!5853768 m!6772894))

(check-sat (not b!5853756) (not b!5853770) (not b!5853760) (not b!5853762) (not b!5853758) (not b!5853757) (not start!598852) (not b!5853769) (not b!5853750) (not b!5853748) (not b!5853768) (not b!5853764) (not b!5853761) (not b!5853747) (not b!5853767) (not setNonEmpty!39670) (not b!5853765) (not b!5853749) (not b!5853754) (not b!5853763) (not b!5853752) (not b!5853759) (not b!5853751) tp_is_empty!41095)
(check-sat)
(get-model)

(declare-fun b!5854057 () Bool)

(assert (=> b!5854057 true))

(assert (=> b!5854057 true))

(declare-fun bs!1379334 () Bool)

(declare-fun b!5854053 () Bool)

(assert (= bs!1379334 (and b!5854053 b!5854057)))

(declare-fun lambda!320090 () Int)

(declare-fun lambda!320089 () Int)

(assert (=> bs!1379334 (not (= lambda!320090 lambda!320089))))

(assert (=> b!5854053 true))

(assert (=> b!5854053 true))

(declare-fun b!5854047 () Bool)

(declare-fun c!1037935 () Bool)

(assert (=> b!5854047 (= c!1037935 ((_ is Union!15921) r!7292))))

(declare-fun e!3589741 () Bool)

(declare-fun e!3589746 () Bool)

(assert (=> b!5854047 (= e!3589741 e!3589746)))

(declare-fun bm!458380 () Bool)

(declare-fun call!458385 () Bool)

(declare-fun isEmpty!35798 (List!64064) Bool)

(assert (=> bm!458380 (= call!458385 (isEmpty!35798 s!2326))))

(declare-fun b!5854049 () Bool)

(declare-fun e!3589742 () Bool)

(assert (=> b!5854049 (= e!3589746 e!3589742)))

(declare-fun res!2464290 () Bool)

(assert (=> b!5854049 (= res!2464290 (matchRSpec!3022 (regOne!32355 r!7292) s!2326))))

(assert (=> b!5854049 (=> res!2464290 e!3589742)))

(declare-fun b!5854050 () Bool)

(assert (=> b!5854050 (= e!3589741 (= s!2326 (Cons!63940 (c!1037845 r!7292) Nil!63940)))))

(declare-fun b!5854051 () Bool)

(assert (=> b!5854051 (= e!3589742 (matchRSpec!3022 (regTwo!32355 r!7292) s!2326))))

(declare-fun b!5854052 () Bool)

(declare-fun c!1037936 () Bool)

(assert (=> b!5854052 (= c!1037936 ((_ is ElementMatch!15921) r!7292))))

(declare-fun e!3589744 () Bool)

(assert (=> b!5854052 (= e!3589744 e!3589741)))

(declare-fun e!3589745 () Bool)

(declare-fun call!458386 () Bool)

(assert (=> b!5854053 (= e!3589745 call!458386)))

(declare-fun b!5854054 () Bool)

(assert (=> b!5854054 (= e!3589746 e!3589745)))

(declare-fun c!1037934 () Bool)

(assert (=> b!5854054 (= c!1037934 ((_ is Star!15921) r!7292))))

(declare-fun b!5854055 () Bool)

(declare-fun e!3589743 () Bool)

(assert (=> b!5854055 (= e!3589743 call!458385)))

(declare-fun b!5854056 () Bool)

(assert (=> b!5854056 (= e!3589743 e!3589744)))

(declare-fun res!2464291 () Bool)

(assert (=> b!5854056 (= res!2464291 (not ((_ is EmptyLang!15921) r!7292)))))

(assert (=> b!5854056 (=> (not res!2464291) (not e!3589744))))

(declare-fun e!3589747 () Bool)

(assert (=> b!5854057 (= e!3589747 call!458386)))

(declare-fun bm!458381 () Bool)

(declare-fun Exists!2993 (Int) Bool)

(assert (=> bm!458381 (= call!458386 (Exists!2993 (ite c!1037934 lambda!320089 lambda!320090)))))

(declare-fun b!5854048 () Bool)

(declare-fun res!2464289 () Bool)

(assert (=> b!5854048 (=> res!2464289 e!3589747)))

(assert (=> b!5854048 (= res!2464289 call!458385)))

(assert (=> b!5854048 (= e!3589745 e!3589747)))

(declare-fun d!1838496 () Bool)

(declare-fun c!1037933 () Bool)

(assert (=> d!1838496 (= c!1037933 ((_ is EmptyExpr!15921) r!7292))))

(assert (=> d!1838496 (= (matchRSpec!3022 r!7292 s!2326) e!3589743)))

(assert (= (and d!1838496 c!1037933) b!5854055))

(assert (= (and d!1838496 (not c!1037933)) b!5854056))

(assert (= (and b!5854056 res!2464291) b!5854052))

(assert (= (and b!5854052 c!1037936) b!5854050))

(assert (= (and b!5854052 (not c!1037936)) b!5854047))

(assert (= (and b!5854047 c!1037935) b!5854049))

(assert (= (and b!5854047 (not c!1037935)) b!5854054))

(assert (= (and b!5854049 (not res!2464290)) b!5854051))

(assert (= (and b!5854054 c!1037934) b!5854048))

(assert (= (and b!5854054 (not c!1037934)) b!5854053))

(assert (= (and b!5854048 (not res!2464289)) b!5854057))

(assert (= (or b!5854057 b!5854053) bm!458381))

(assert (= (or b!5854055 b!5854048) bm!458380))

(declare-fun m!6773046 () Bool)

(assert (=> bm!458380 m!6773046))

(assert (=> b!5854049 m!6772866))

(assert (=> b!5854051 m!6772860))

(declare-fun m!6773048 () Bool)

(assert (=> bm!458381 m!6773048))

(assert (=> b!5853765 d!1838496))

(declare-fun bm!458384 () Bool)

(declare-fun call!458389 () Bool)

(assert (=> bm!458384 (= call!458389 (isEmpty!35798 s!2326))))

(declare-fun b!5854125 () Bool)

(declare-fun e!3589784 () Bool)

(declare-fun e!3589790 () Bool)

(assert (=> b!5854125 (= e!3589784 e!3589790)))

(declare-fun res!2464318 () Bool)

(assert (=> b!5854125 (=> res!2464318 e!3589790)))

(assert (=> b!5854125 (= res!2464318 call!458389)))

(declare-fun b!5854126 () Bool)

(declare-fun e!3589788 () Bool)

(declare-fun head!12395 (List!64064) C!32112)

(assert (=> b!5854126 (= e!3589788 (= (head!12395 s!2326) (c!1037845 r!7292)))))

(declare-fun b!5854127 () Bool)

(declare-fun res!2464321 () Bool)

(declare-fun e!3589786 () Bool)

(assert (=> b!5854127 (=> res!2464321 e!3589786)))

(assert (=> b!5854127 (= res!2464321 (not ((_ is ElementMatch!15921) r!7292)))))

(declare-fun e!3589785 () Bool)

(assert (=> b!5854127 (= e!3589785 e!3589786)))

(declare-fun b!5854128 () Bool)

(declare-fun res!2464319 () Bool)

(assert (=> b!5854128 (=> res!2464319 e!3589790)))

(declare-fun tail!11480 (List!64064) List!64064)

(assert (=> b!5854128 (= res!2464319 (not (isEmpty!35798 (tail!11480 s!2326))))))

(declare-fun b!5854129 () Bool)

(assert (=> b!5854129 (= e!3589786 e!3589784)))

(declare-fun res!2464323 () Bool)

(assert (=> b!5854129 (=> (not res!2464323) (not e!3589784))))

(declare-fun lt!2304737 () Bool)

(assert (=> b!5854129 (= res!2464323 (not lt!2304737))))

(declare-fun b!5854130 () Bool)

(declare-fun e!3589789 () Bool)

(assert (=> b!5854130 (= e!3589789 e!3589785)))

(declare-fun c!1037956 () Bool)

(assert (=> b!5854130 (= c!1037956 ((_ is EmptyLang!15921) r!7292))))

(declare-fun b!5854131 () Bool)

(assert (=> b!5854131 (= e!3589789 (= lt!2304737 call!458389))))

(declare-fun b!5854132 () Bool)

(declare-fun e!3589787 () Bool)

(declare-fun nullable!5921 (Regex!15921) Bool)

(assert (=> b!5854132 (= e!3589787 (nullable!5921 r!7292))))

(declare-fun b!5854133 () Bool)

(assert (=> b!5854133 (= e!3589790 (not (= (head!12395 s!2326) (c!1037845 r!7292))))))

(declare-fun b!5854134 () Bool)

(declare-fun derivativeStep!4659 (Regex!15921 C!32112) Regex!15921)

(assert (=> b!5854134 (= e!3589787 (matchR!8104 (derivativeStep!4659 r!7292 (head!12395 s!2326)) (tail!11480 s!2326)))))

(declare-fun b!5854135 () Bool)

(declare-fun res!2464322 () Bool)

(assert (=> b!5854135 (=> (not res!2464322) (not e!3589788))))

(assert (=> b!5854135 (= res!2464322 (not call!458389))))

(declare-fun b!5854136 () Bool)

(declare-fun res!2464320 () Bool)

(assert (=> b!5854136 (=> res!2464320 e!3589786)))

(assert (=> b!5854136 (= res!2464320 e!3589788)))

(declare-fun res!2464317 () Bool)

(assert (=> b!5854136 (=> (not res!2464317) (not e!3589788))))

(assert (=> b!5854136 (= res!2464317 lt!2304737)))

(declare-fun d!1838512 () Bool)

(assert (=> d!1838512 e!3589789))

(declare-fun c!1037958 () Bool)

(assert (=> d!1838512 (= c!1037958 ((_ is EmptyExpr!15921) r!7292))))

(assert (=> d!1838512 (= lt!2304737 e!3589787)))

(declare-fun c!1037957 () Bool)

(assert (=> d!1838512 (= c!1037957 (isEmpty!35798 s!2326))))

(assert (=> d!1838512 (validRegex!7657 r!7292)))

(assert (=> d!1838512 (= (matchR!8104 r!7292 s!2326) lt!2304737)))

(declare-fun b!5854137 () Bool)

(declare-fun res!2464324 () Bool)

(assert (=> b!5854137 (=> (not res!2464324) (not e!3589788))))

(assert (=> b!5854137 (= res!2464324 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5854138 () Bool)

(assert (=> b!5854138 (= e!3589785 (not lt!2304737))))

(assert (= (and d!1838512 c!1037957) b!5854132))

(assert (= (and d!1838512 (not c!1037957)) b!5854134))

(assert (= (and d!1838512 c!1037958) b!5854131))

(assert (= (and d!1838512 (not c!1037958)) b!5854130))

(assert (= (and b!5854130 c!1037956) b!5854138))

(assert (= (and b!5854130 (not c!1037956)) b!5854127))

(assert (= (and b!5854127 (not res!2464321)) b!5854136))

(assert (= (and b!5854136 res!2464317) b!5854135))

(assert (= (and b!5854135 res!2464322) b!5854137))

(assert (= (and b!5854137 res!2464324) b!5854126))

(assert (= (and b!5854136 (not res!2464320)) b!5854129))

(assert (= (and b!5854129 res!2464323) b!5854125))

(assert (= (and b!5854125 (not res!2464318)) b!5854128))

(assert (= (and b!5854128 (not res!2464319)) b!5854133))

(assert (= (or b!5854131 b!5854125 b!5854135) bm!458384))

(assert (=> d!1838512 m!6773046))

(assert (=> d!1838512 m!6772852))

(declare-fun m!6773054 () Bool)

(assert (=> b!5854132 m!6773054))

(assert (=> bm!458384 m!6773046))

(declare-fun m!6773056 () Bool)

(assert (=> b!5854137 m!6773056))

(assert (=> b!5854137 m!6773056))

(declare-fun m!6773060 () Bool)

(assert (=> b!5854137 m!6773060))

(declare-fun m!6773062 () Bool)

(assert (=> b!5854134 m!6773062))

(assert (=> b!5854134 m!6773062))

(declare-fun m!6773066 () Bool)

(assert (=> b!5854134 m!6773066))

(assert (=> b!5854134 m!6773056))

(assert (=> b!5854134 m!6773066))

(assert (=> b!5854134 m!6773056))

(declare-fun m!6773074 () Bool)

(assert (=> b!5854134 m!6773074))

(assert (=> b!5854133 m!6773062))

(assert (=> b!5854128 m!6773056))

(assert (=> b!5854128 m!6773056))

(assert (=> b!5854128 m!6773060))

(assert (=> b!5854126 m!6773062))

(assert (=> b!5853765 d!1838512))

(declare-fun d!1838516 () Bool)

(assert (=> d!1838516 (= (matchR!8104 r!7292 s!2326) (matchRSpec!3022 r!7292 s!2326))))

(declare-fun lt!2304742 () Unit!157113)

(declare-fun choose!44389 (Regex!15921 List!64064) Unit!157113)

(assert (=> d!1838516 (= lt!2304742 (choose!44389 r!7292 s!2326))))

(assert (=> d!1838516 (validRegex!7657 r!7292)))

(assert (=> d!1838516 (= (mainMatchTheorem!3022 r!7292 s!2326) lt!2304742)))

(declare-fun bs!1379338 () Bool)

(assert (= bs!1379338 d!1838516))

(assert (=> bs!1379338 m!6772878))

(assert (=> bs!1379338 m!6772876))

(declare-fun m!6773086 () Bool)

(assert (=> bs!1379338 m!6773086))

(assert (=> bs!1379338 m!6772852))

(assert (=> b!5853765 d!1838516))

(declare-fun d!1838520 () Bool)

(declare-fun lambda!320099 () Int)

(declare-fun forall!15008 (List!64062 Int) Bool)

(assert (=> d!1838520 (= (inv!83049 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))) (forall!15008 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))) lambda!320099))))

(declare-fun bs!1379343 () Bool)

(assert (= bs!1379343 d!1838520))

(declare-fun m!6773092 () Bool)

(assert (=> bs!1379343 m!6773092))

(assert (=> b!5853754 d!1838520))

(declare-fun b!5854195 () Bool)

(declare-fun e!3589826 () (InoxSet Context!10610))

(declare-fun call!458408 () (InoxSet Context!10610))

(assert (=> b!5854195 (= e!3589826 call!458408)))

(declare-fun d!1838524 () Bool)

(declare-fun c!1037980 () Bool)

(declare-fun e!3589828 () Bool)

(assert (=> d!1838524 (= c!1037980 e!3589828)))

(declare-fun res!2464339 () Bool)

(assert (=> d!1838524 (=> (not res!2464339) (not e!3589828))))

(assert (=> d!1838524 (= res!2464339 ((_ is Cons!63938) (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))

(declare-fun e!3589827 () (InoxSet Context!10610))

(assert (=> d!1838524 (= (derivationStepZipperUp!1113 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)) (h!70388 s!2326)) e!3589827)))

(declare-fun b!5854196 () Bool)

(assert (=> b!5854196 (= e!3589826 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458403 () Bool)

(assert (=> bm!458403 (= call!458408 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70388 s!2326)))))

(declare-fun b!5854197 () Bool)

(assert (=> b!5854197 (= e!3589827 ((_ map or) call!458408 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70388 s!2326))))))

(declare-fun b!5854198 () Bool)

(assert (=> b!5854198 (= e!3589827 e!3589826)))

(declare-fun c!1037981 () Bool)

(assert (=> b!5854198 (= c!1037981 ((_ is Cons!63938) (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))

(declare-fun b!5854199 () Bool)

(assert (=> b!5854199 (= e!3589828 (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(assert (= (and d!1838524 res!2464339) b!5854199))

(assert (= (and d!1838524 c!1037980) b!5854197))

(assert (= (and d!1838524 (not c!1037980)) b!5854198))

(assert (= (and b!5854198 c!1037981) b!5854195))

(assert (= (and b!5854198 (not c!1037981)) b!5854196))

(assert (= (or b!5854197 b!5854195) bm!458403))

(declare-fun m!6773110 () Bool)

(assert (=> bm!458403 m!6773110))

(declare-fun m!6773112 () Bool)

(assert (=> b!5854197 m!6773112))

(declare-fun m!6773114 () Bool)

(assert (=> b!5854199 m!6773114))

(assert (=> b!5853754 d!1838524))

(declare-fun bs!1379344 () Bool)

(declare-fun d!1838530 () Bool)

(assert (= bs!1379344 (and d!1838530 b!5853752)))

(declare-fun lambda!320102 () Int)

(assert (=> bs!1379344 (= lambda!320102 lambda!320064)))

(assert (=> d!1838530 true))

(assert (=> d!1838530 (= (derivationStepZipper!1920 z!1189 (h!70388 s!2326)) (flatMap!1452 z!1189 lambda!320102))))

(declare-fun bs!1379345 () Bool)

(assert (= bs!1379345 d!1838530))

(declare-fun m!6773116 () Bool)

(assert (=> bs!1379345 m!6773116))

(assert (=> b!5853752 d!1838530))

(declare-fun d!1838532 () Bool)

(declare-fun choose!44390 ((InoxSet Context!10610) Int) (InoxSet Context!10610))

(assert (=> d!1838532 (= (flatMap!1452 z!1189 lambda!320064) (choose!44390 z!1189 lambda!320064))))

(declare-fun bs!1379346 () Bool)

(assert (= bs!1379346 d!1838532))

(declare-fun m!6773118 () Bool)

(assert (=> bs!1379346 m!6773118))

(assert (=> b!5853752 d!1838532))

(declare-fun b!5854211 () Bool)

(declare-fun e!3589836 () (InoxSet Context!10610))

(declare-fun call!458414 () (InoxSet Context!10610))

(assert (=> b!5854211 (= e!3589836 call!458414)))

(declare-fun d!1838534 () Bool)

(declare-fun c!1037986 () Bool)

(declare-fun e!3589838 () Bool)

(assert (=> d!1838534 (= c!1037986 e!3589838)))

(declare-fun res!2464345 () Bool)

(assert (=> d!1838534 (=> (not res!2464345) (not e!3589838))))

(assert (=> d!1838534 (= res!2464345 ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343))))))

(declare-fun e!3589837 () (InoxSet Context!10610))

(assert (=> d!1838534 (= (derivationStepZipperUp!1113 (h!70387 zl!343) (h!70388 s!2326)) e!3589837)))

(declare-fun b!5854212 () Bool)

(assert (=> b!5854212 (= e!3589836 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458409 () Bool)

(assert (=> bm!458409 (= call!458414 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (h!70387 zl!343))) (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (h!70388 s!2326)))))

(declare-fun b!5854213 () Bool)

(assert (=> b!5854213 (= e!3589837 ((_ map or) call!458414 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (h!70388 s!2326))))))

(declare-fun b!5854214 () Bool)

(assert (=> b!5854214 (= e!3589837 e!3589836)))

(declare-fun c!1037987 () Bool)

(assert (=> b!5854214 (= c!1037987 ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343))))))

(declare-fun b!5854215 () Bool)

(assert (=> b!5854215 (= e!3589838 (nullable!5921 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(assert (= (and d!1838534 res!2464345) b!5854215))

(assert (= (and d!1838534 c!1037986) b!5854213))

(assert (= (and d!1838534 (not c!1037986)) b!5854214))

(assert (= (and b!5854214 c!1037987) b!5854211))

(assert (= (and b!5854214 (not c!1037987)) b!5854212))

(assert (= (or b!5854213 b!5854211) bm!458409))

(declare-fun m!6773126 () Bool)

(assert (=> bm!458409 m!6773126))

(declare-fun m!6773128 () Bool)

(assert (=> b!5854213 m!6773128))

(declare-fun m!6773130 () Bool)

(assert (=> b!5854215 m!6773130))

(assert (=> b!5853752 d!1838534))

(declare-fun d!1838538 () Bool)

(declare-fun dynLambda!24995 (Int Context!10610) (InoxSet Context!10610))

(assert (=> d!1838538 (= (flatMap!1452 z!1189 lambda!320064) (dynLambda!24995 lambda!320064 (h!70387 zl!343)))))

(declare-fun lt!2304746 () Unit!157113)

(declare-fun choose!44392 ((InoxSet Context!10610) Context!10610 Int) Unit!157113)

(assert (=> d!1838538 (= lt!2304746 (choose!44392 z!1189 (h!70387 zl!343) lambda!320064))))

(assert (=> d!1838538 (= z!1189 (store ((as const (Array Context!10610 Bool)) false) (h!70387 zl!343) true))))

(assert (=> d!1838538 (= (lemmaFlatMapOnSingletonSet!980 z!1189 (h!70387 zl!343) lambda!320064) lt!2304746)))

(declare-fun b_lambda!220351 () Bool)

(assert (=> (not b_lambda!220351) (not d!1838538)))

(declare-fun bs!1379353 () Bool)

(assert (= bs!1379353 d!1838538))

(assert (=> bs!1379353 m!6772836))

(declare-fun m!6773134 () Bool)

(assert (=> bs!1379353 m!6773134))

(declare-fun m!6773136 () Bool)

(assert (=> bs!1379353 m!6773136))

(declare-fun m!6773138 () Bool)

(assert (=> bs!1379353 m!6773138))

(assert (=> b!5853752 d!1838538))

(declare-fun d!1838540 () Bool)

(declare-fun e!3589862 () Bool)

(assert (=> d!1838540 e!3589862))

(declare-fun res!2464348 () Bool)

(assert (=> d!1838540 (=> (not res!2464348) (not e!3589862))))

(declare-fun lt!2304749 () List!64063)

(declare-fun noDuplicate!1786 (List!64063) Bool)

(assert (=> d!1838540 (= res!2464348 (noDuplicate!1786 lt!2304749))))

(declare-fun choose!44393 ((InoxSet Context!10610)) List!64063)

(assert (=> d!1838540 (= lt!2304749 (choose!44393 z!1189))))

(assert (=> d!1838540 (= (toList!9705 z!1189) lt!2304749)))

(declare-fun b!5854270 () Bool)

(declare-fun content!11751 (List!64063) (InoxSet Context!10610))

(assert (=> b!5854270 (= e!3589862 (= (content!11751 lt!2304749) z!1189))))

(assert (= (and d!1838540 res!2464348) b!5854270))

(declare-fun m!6773142 () Bool)

(assert (=> d!1838540 m!6773142))

(declare-fun m!6773144 () Bool)

(assert (=> d!1838540 m!6773144))

(declare-fun m!6773146 () Bool)

(assert (=> b!5854270 m!6773146))

(assert (=> b!5853751 d!1838540))

(declare-fun bm!458416 () Bool)

(declare-fun call!458423 () Bool)

(declare-fun call!458421 () Bool)

(assert (=> bm!458416 (= call!458423 call!458421)))

(declare-fun d!1838542 () Bool)

(declare-fun res!2464359 () Bool)

(declare-fun e!3589880 () Bool)

(assert (=> d!1838542 (=> res!2464359 e!3589880)))

(assert (=> d!1838542 (= res!2464359 ((_ is ElementMatch!15921) r!7292))))

(assert (=> d!1838542 (= (validRegex!7657 r!7292) e!3589880)))

(declare-fun c!1037993 () Bool)

(declare-fun bm!458417 () Bool)

(declare-fun c!1037992 () Bool)

(assert (=> bm!458417 (= call!458421 (validRegex!7657 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))

(declare-fun b!5854291 () Bool)

(declare-fun e!3589881 () Bool)

(assert (=> b!5854291 (= e!3589881 call!458423)))

(declare-fun b!5854292 () Bool)

(declare-fun res!2464362 () Bool)

(declare-fun e!3589882 () Bool)

(assert (=> b!5854292 (=> res!2464362 e!3589882)))

(assert (=> b!5854292 (= res!2464362 (not ((_ is Concat!24766) r!7292)))))

(declare-fun e!3589885 () Bool)

(assert (=> b!5854292 (= e!3589885 e!3589882)))

(declare-fun b!5854293 () Bool)

(declare-fun e!3589883 () Bool)

(assert (=> b!5854293 (= e!3589883 call!458421)))

(declare-fun b!5854294 () Bool)

(declare-fun e!3589879 () Bool)

(assert (=> b!5854294 (= e!3589879 call!458423)))

(declare-fun b!5854295 () Bool)

(assert (=> b!5854295 (= e!3589882 e!3589881)))

(declare-fun res!2464363 () Bool)

(assert (=> b!5854295 (=> (not res!2464363) (not e!3589881))))

(declare-fun call!458422 () Bool)

(assert (=> b!5854295 (= res!2464363 call!458422)))

(declare-fun bm!458418 () Bool)

(assert (=> bm!458418 (= call!458422 (validRegex!7657 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(declare-fun b!5854296 () Bool)

(declare-fun e!3589884 () Bool)

(assert (=> b!5854296 (= e!3589880 e!3589884)))

(assert (=> b!5854296 (= c!1037992 ((_ is Star!15921) r!7292))))

(declare-fun b!5854297 () Bool)

(declare-fun res!2464361 () Bool)

(assert (=> b!5854297 (=> (not res!2464361) (not e!3589879))))

(assert (=> b!5854297 (= res!2464361 call!458422)))

(assert (=> b!5854297 (= e!3589885 e!3589879)))

(declare-fun b!5854298 () Bool)

(assert (=> b!5854298 (= e!3589884 e!3589883)))

(declare-fun res!2464360 () Bool)

(assert (=> b!5854298 (= res!2464360 (not (nullable!5921 (reg!16250 r!7292))))))

(assert (=> b!5854298 (=> (not res!2464360) (not e!3589883))))

(declare-fun b!5854299 () Bool)

(assert (=> b!5854299 (= e!3589884 e!3589885)))

(assert (=> b!5854299 (= c!1037993 ((_ is Union!15921) r!7292))))

(assert (= (and d!1838542 (not res!2464359)) b!5854296))

(assert (= (and b!5854296 c!1037992) b!5854298))

(assert (= (and b!5854296 (not c!1037992)) b!5854299))

(assert (= (and b!5854298 res!2464360) b!5854293))

(assert (= (and b!5854299 c!1037993) b!5854297))

(assert (= (and b!5854299 (not c!1037993)) b!5854292))

(assert (= (and b!5854297 res!2464361) b!5854294))

(assert (= (and b!5854292 (not res!2464362)) b!5854295))

(assert (= (and b!5854295 res!2464363) b!5854291))

(assert (= (or b!5854294 b!5854291) bm!458416))

(assert (= (or b!5854297 b!5854295) bm!458418))

(assert (= (or b!5854293 bm!458416) bm!458417))

(declare-fun m!6773150 () Bool)

(assert (=> bm!458417 m!6773150))

(declare-fun m!6773152 () Bool)

(assert (=> bm!458418 m!6773152))

(declare-fun m!6773154 () Bool)

(assert (=> b!5854298 m!6773154))

(assert (=> start!598852 d!1838542))

(declare-fun d!1838546 () Bool)

(declare-fun c!1037996 () Bool)

(assert (=> d!1838546 (= c!1037996 (isEmpty!35798 (t!377429 s!2326)))))

(declare-fun e!3589888 () Bool)

(assert (=> d!1838546 (= (matchZipper!1987 lt!2304694 (t!377429 s!2326)) e!3589888)))

(declare-fun b!5854304 () Bool)

(declare-fun nullableZipper!1760 ((InoxSet Context!10610)) Bool)

(assert (=> b!5854304 (= e!3589888 (nullableZipper!1760 lt!2304694))))

(declare-fun b!5854305 () Bool)

(assert (=> b!5854305 (= e!3589888 (matchZipper!1987 (derivationStepZipper!1920 lt!2304694 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))))))

(assert (= (and d!1838546 c!1037996) b!5854304))

(assert (= (and d!1838546 (not c!1037996)) b!5854305))

(declare-fun m!6773156 () Bool)

(assert (=> d!1838546 m!6773156))

(declare-fun m!6773158 () Bool)

(assert (=> b!5854304 m!6773158))

(declare-fun m!6773160 () Bool)

(assert (=> b!5854305 m!6773160))

(assert (=> b!5854305 m!6773160))

(declare-fun m!6773162 () Bool)

(assert (=> b!5854305 m!6773162))

(declare-fun m!6773164 () Bool)

(assert (=> b!5854305 m!6773164))

(assert (=> b!5854305 m!6773162))

(assert (=> b!5854305 m!6773164))

(declare-fun m!6773166 () Bool)

(assert (=> b!5854305 m!6773166))

(assert (=> b!5853763 d!1838546))

(declare-fun bs!1379355 () Bool)

(declare-fun d!1838548 () Bool)

(assert (= bs!1379355 (and d!1838548 d!1838520)))

(declare-fun lambda!320106 () Int)

(assert (=> bs!1379355 (= lambda!320106 lambda!320099)))

(declare-fun b!5854326 () Bool)

(declare-fun e!3589902 () Regex!15921)

(declare-fun e!3589903 () Regex!15921)

(assert (=> b!5854326 (= e!3589902 e!3589903)))

(declare-fun c!1038006 () Bool)

(assert (=> b!5854326 (= c!1038006 ((_ is Cons!63938) (unfocusZipperList!1342 zl!343)))))

(declare-fun b!5854327 () Bool)

(assert (=> b!5854327 (= e!3589903 (Union!15921 (h!70386 (unfocusZipperList!1342 zl!343)) (generalisedUnion!1765 (t!377427 (unfocusZipperList!1342 zl!343)))))))

(declare-fun e!3589906 () Bool)

(assert (=> d!1838548 e!3589906))

(declare-fun res!2464369 () Bool)

(assert (=> d!1838548 (=> (not res!2464369) (not e!3589906))))

(declare-fun lt!2304752 () Regex!15921)

(assert (=> d!1838548 (= res!2464369 (validRegex!7657 lt!2304752))))

(assert (=> d!1838548 (= lt!2304752 e!3589902)))

(declare-fun c!1038005 () Bool)

(declare-fun e!3589904 () Bool)

(assert (=> d!1838548 (= c!1038005 e!3589904)))

(declare-fun res!2464368 () Bool)

(assert (=> d!1838548 (=> (not res!2464368) (not e!3589904))))

(assert (=> d!1838548 (= res!2464368 ((_ is Cons!63938) (unfocusZipperList!1342 zl!343)))))

(assert (=> d!1838548 (forall!15008 (unfocusZipperList!1342 zl!343) lambda!320106)))

(assert (=> d!1838548 (= (generalisedUnion!1765 (unfocusZipperList!1342 zl!343)) lt!2304752)))

(declare-fun b!5854328 () Bool)

(declare-fun e!3589905 () Bool)

(declare-fun head!12396 (List!64062) Regex!15921)

(assert (=> b!5854328 (= e!3589905 (= lt!2304752 (head!12396 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5854329 () Bool)

(declare-fun isUnion!793 (Regex!15921) Bool)

(assert (=> b!5854329 (= e!3589905 (isUnion!793 lt!2304752))))

(declare-fun b!5854330 () Bool)

(declare-fun e!3589901 () Bool)

(assert (=> b!5854330 (= e!3589906 e!3589901)))

(declare-fun c!1038007 () Bool)

(declare-fun isEmpty!35799 (List!64062) Bool)

(assert (=> b!5854330 (= c!1038007 (isEmpty!35799 (unfocusZipperList!1342 zl!343)))))

(declare-fun b!5854331 () Bool)

(assert (=> b!5854331 (= e!3589904 (isEmpty!35799 (t!377427 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5854332 () Bool)

(assert (=> b!5854332 (= e!3589901 e!3589905)))

(declare-fun c!1038008 () Bool)

(declare-fun tail!11481 (List!64062) List!64062)

(assert (=> b!5854332 (= c!1038008 (isEmpty!35799 (tail!11481 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5854333 () Bool)

(declare-fun isEmptyLang!1363 (Regex!15921) Bool)

(assert (=> b!5854333 (= e!3589901 (isEmptyLang!1363 lt!2304752))))

(declare-fun b!5854334 () Bool)

(assert (=> b!5854334 (= e!3589903 EmptyLang!15921)))

(declare-fun b!5854335 () Bool)

(assert (=> b!5854335 (= e!3589902 (h!70386 (unfocusZipperList!1342 zl!343)))))

(assert (= (and d!1838548 res!2464368) b!5854331))

(assert (= (and d!1838548 c!1038005) b!5854335))

(assert (= (and d!1838548 (not c!1038005)) b!5854326))

(assert (= (and b!5854326 c!1038006) b!5854327))

(assert (= (and b!5854326 (not c!1038006)) b!5854334))

(assert (= (and d!1838548 res!2464369) b!5854330))

(assert (= (and b!5854330 c!1038007) b!5854333))

(assert (= (and b!5854330 (not c!1038007)) b!5854332))

(assert (= (and b!5854332 c!1038008) b!5854328))

(assert (= (and b!5854332 (not c!1038008)) b!5854329))

(declare-fun m!6773168 () Bool)

(assert (=> b!5854329 m!6773168))

(declare-fun m!6773170 () Bool)

(assert (=> d!1838548 m!6773170))

(assert (=> d!1838548 m!6772884))

(declare-fun m!6773172 () Bool)

(assert (=> d!1838548 m!6773172))

(declare-fun m!6773174 () Bool)

(assert (=> b!5854327 m!6773174))

(assert (=> b!5854332 m!6772884))

(declare-fun m!6773176 () Bool)

(assert (=> b!5854332 m!6773176))

(assert (=> b!5854332 m!6773176))

(declare-fun m!6773178 () Bool)

(assert (=> b!5854332 m!6773178))

(declare-fun m!6773180 () Bool)

(assert (=> b!5854333 m!6773180))

(assert (=> b!5854330 m!6772884))

(declare-fun m!6773182 () Bool)

(assert (=> b!5854330 m!6773182))

(assert (=> b!5854328 m!6772884))

(declare-fun m!6773184 () Bool)

(assert (=> b!5854328 m!6773184))

(declare-fun m!6773186 () Bool)

(assert (=> b!5854331 m!6773186))

(assert (=> b!5853750 d!1838548))

(declare-fun bs!1379356 () Bool)

(declare-fun d!1838550 () Bool)

(assert (= bs!1379356 (and d!1838550 d!1838520)))

(declare-fun lambda!320109 () Int)

(assert (=> bs!1379356 (= lambda!320109 lambda!320099)))

(declare-fun bs!1379357 () Bool)

(assert (= bs!1379357 (and d!1838550 d!1838548)))

(assert (=> bs!1379357 (= lambda!320109 lambda!320106)))

(declare-fun lt!2304755 () List!64062)

(assert (=> d!1838550 (forall!15008 lt!2304755 lambda!320109)))

(declare-fun e!3589909 () List!64062)

(assert (=> d!1838550 (= lt!2304755 e!3589909)))

(declare-fun c!1038011 () Bool)

(assert (=> d!1838550 (= c!1038011 ((_ is Cons!63939) zl!343))))

(assert (=> d!1838550 (= (unfocusZipperList!1342 zl!343) lt!2304755)))

(declare-fun b!5854340 () Bool)

(assert (=> b!5854340 (= e!3589909 (Cons!63938 (generalisedConcat!1518 (exprs!5805 (h!70387 zl!343))) (unfocusZipperList!1342 (t!377428 zl!343))))))

(declare-fun b!5854341 () Bool)

(assert (=> b!5854341 (= e!3589909 Nil!63938)))

(assert (= (and d!1838550 c!1038011) b!5854340))

(assert (= (and d!1838550 (not c!1038011)) b!5854341))

(declare-fun m!6773188 () Bool)

(assert (=> d!1838550 m!6773188))

(assert (=> b!5854340 m!6772842))

(declare-fun m!6773190 () Bool)

(assert (=> b!5854340 m!6773190))

(assert (=> b!5853750 d!1838550))

(declare-fun d!1838552 () Bool)

(declare-fun lt!2304758 () Regex!15921)

(assert (=> d!1838552 (validRegex!7657 lt!2304758)))

(assert (=> d!1838552 (= lt!2304758 (generalisedUnion!1765 (unfocusZipperList!1342 zl!343)))))

(assert (=> d!1838552 (= (unfocusZipper!1663 zl!343) lt!2304758)))

(declare-fun bs!1379358 () Bool)

(assert (= bs!1379358 d!1838552))

(declare-fun m!6773192 () Bool)

(assert (=> bs!1379358 m!6773192))

(assert (=> bs!1379358 m!6772884))

(assert (=> bs!1379358 m!6772884))

(assert (=> bs!1379358 m!6772886))

(assert (=> b!5853769 d!1838552))

(declare-fun bs!1379359 () Bool)

(declare-fun d!1838554 () Bool)

(assert (= bs!1379359 (and d!1838554 d!1838520)))

(declare-fun lambda!320112 () Int)

(assert (=> bs!1379359 (= lambda!320112 lambda!320099)))

(declare-fun bs!1379360 () Bool)

(assert (= bs!1379360 (and d!1838554 d!1838548)))

(assert (=> bs!1379360 (= lambda!320112 lambda!320106)))

(declare-fun bs!1379361 () Bool)

(assert (= bs!1379361 (and d!1838554 d!1838550)))

(assert (=> bs!1379361 (= lambda!320112 lambda!320109)))

(declare-fun b!5854362 () Bool)

(declare-fun e!3589925 () Bool)

(assert (=> b!5854362 (= e!3589925 (isEmpty!35799 (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5854363 () Bool)

(declare-fun e!3589923 () Bool)

(declare-fun lt!2304761 () Regex!15921)

(declare-fun isEmptyExpr!1356 (Regex!15921) Bool)

(assert (=> b!5854363 (= e!3589923 (isEmptyExpr!1356 lt!2304761))))

(declare-fun b!5854364 () Bool)

(declare-fun e!3589922 () Bool)

(assert (=> b!5854364 (= e!3589922 e!3589923)))

(declare-fun c!1038020 () Bool)

(assert (=> b!5854364 (= c!1038020 (isEmpty!35799 (exprs!5805 (h!70387 zl!343))))))

(declare-fun b!5854365 () Bool)

(declare-fun e!3589927 () Regex!15921)

(assert (=> b!5854365 (= e!3589927 EmptyExpr!15921)))

(declare-fun b!5854367 () Bool)

(assert (=> b!5854367 (= e!3589927 (Concat!24766 (h!70386 (exprs!5805 (h!70387 zl!343))) (generalisedConcat!1518 (t!377427 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun b!5854368 () Bool)

(declare-fun e!3589924 () Bool)

(assert (=> b!5854368 (= e!3589924 (= lt!2304761 (head!12396 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5854369 () Bool)

(declare-fun e!3589926 () Regex!15921)

(assert (=> b!5854369 (= e!3589926 e!3589927)))

(declare-fun c!1038022 () Bool)

(assert (=> b!5854369 (= c!1038022 ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343))))))

(declare-fun b!5854366 () Bool)

(assert (=> b!5854366 (= e!3589926 (h!70386 (exprs!5805 (h!70387 zl!343))))))

(assert (=> d!1838554 e!3589922))

(declare-fun res!2464375 () Bool)

(assert (=> d!1838554 (=> (not res!2464375) (not e!3589922))))

(assert (=> d!1838554 (= res!2464375 (validRegex!7657 lt!2304761))))

(assert (=> d!1838554 (= lt!2304761 e!3589926)))

(declare-fun c!1038021 () Bool)

(assert (=> d!1838554 (= c!1038021 e!3589925)))

(declare-fun res!2464374 () Bool)

(assert (=> d!1838554 (=> (not res!2464374) (not e!3589925))))

(assert (=> d!1838554 (= res!2464374 ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343))))))

(assert (=> d!1838554 (forall!15008 (exprs!5805 (h!70387 zl!343)) lambda!320112)))

(assert (=> d!1838554 (= (generalisedConcat!1518 (exprs!5805 (h!70387 zl!343))) lt!2304761)))

(declare-fun b!5854370 () Bool)

(declare-fun isConcat!879 (Regex!15921) Bool)

(assert (=> b!5854370 (= e!3589924 (isConcat!879 lt!2304761))))

(declare-fun b!5854371 () Bool)

(assert (=> b!5854371 (= e!3589923 e!3589924)))

(declare-fun c!1038023 () Bool)

(assert (=> b!5854371 (= c!1038023 (isEmpty!35799 (tail!11481 (exprs!5805 (h!70387 zl!343)))))))

(assert (= (and d!1838554 res!2464374) b!5854362))

(assert (= (and d!1838554 c!1038021) b!5854366))

(assert (= (and d!1838554 (not c!1038021)) b!5854369))

(assert (= (and b!5854369 c!1038022) b!5854367))

(assert (= (and b!5854369 (not c!1038022)) b!5854365))

(assert (= (and d!1838554 res!2464375) b!5854364))

(assert (= (and b!5854364 c!1038020) b!5854363))

(assert (= (and b!5854364 (not c!1038020)) b!5854371))

(assert (= (and b!5854371 c!1038023) b!5854368))

(assert (= (and b!5854371 (not c!1038023)) b!5854370))

(declare-fun m!6773194 () Bool)

(assert (=> d!1838554 m!6773194))

(declare-fun m!6773196 () Bool)

(assert (=> d!1838554 m!6773196))

(declare-fun m!6773198 () Bool)

(assert (=> b!5854363 m!6773198))

(declare-fun m!6773200 () Bool)

(assert (=> b!5854368 m!6773200))

(declare-fun m!6773202 () Bool)

(assert (=> b!5854371 m!6773202))

(assert (=> b!5854371 m!6773202))

(declare-fun m!6773204 () Bool)

(assert (=> b!5854371 m!6773204))

(declare-fun m!6773206 () Bool)

(assert (=> b!5854367 m!6773206))

(declare-fun m!6773208 () Bool)

(assert (=> b!5854370 m!6773208))

(declare-fun m!6773210 () Bool)

(assert (=> b!5854362 m!6773210))

(declare-fun m!6773212 () Bool)

(assert (=> b!5854364 m!6773212))

(assert (=> b!5853759 d!1838554))

(declare-fun b!5854394 () Bool)

(declare-fun e!3589943 () (InoxSet Context!10610))

(declare-fun call!458439 () (InoxSet Context!10610))

(declare-fun call!458437 () (InoxSet Context!10610))

(assert (=> b!5854394 (= e!3589943 ((_ map or) call!458439 call!458437))))

(declare-fun b!5854395 () Bool)

(declare-fun e!3589945 () (InoxSet Context!10610))

(declare-fun call!458436 () (InoxSet Context!10610))

(assert (=> b!5854395 (= e!3589945 call!458436)))

(declare-fun b!5854396 () Bool)

(declare-fun e!3589940 () Bool)

(assert (=> b!5854396 (= e!3589940 (nullable!5921 (regOne!32354 r!7292)))))

(declare-fun d!1838556 () Bool)

(declare-fun c!1038035 () Bool)

(assert (=> d!1838556 (= c!1038035 (and ((_ is ElementMatch!15921) r!7292) (= (c!1037845 r!7292) (h!70388 s!2326))))))

(declare-fun e!3589942 () (InoxSet Context!10610))

(assert (=> d!1838556 (= (derivationStepZipperDown!1187 r!7292 lt!2304692 (h!70388 s!2326)) e!3589942)))

(declare-fun b!5854397 () Bool)

(declare-fun e!3589941 () (InoxSet Context!10610))

(assert (=> b!5854397 (= e!3589942 e!3589941)))

(declare-fun c!1038034 () Bool)

(assert (=> b!5854397 (= c!1038034 ((_ is Union!15921) r!7292))))

(declare-fun b!5854398 () Bool)

(declare-fun e!3589944 () (InoxSet Context!10610))

(assert (=> b!5854398 (= e!3589943 e!3589944)))

(declare-fun c!1038038 () Bool)

(assert (=> b!5854398 (= c!1038038 ((_ is Concat!24766) r!7292))))

(declare-fun b!5854399 () Bool)

(declare-fun c!1038036 () Bool)

(assert (=> b!5854399 (= c!1038036 ((_ is Star!15921) r!7292))))

(assert (=> b!5854399 (= e!3589944 e!3589945)))

(declare-fun c!1038037 () Bool)

(declare-fun bm!458431 () Bool)

(declare-fun call!458438 () List!64062)

(declare-fun call!458441 () (InoxSet Context!10610))

(assert (=> bm!458431 (= call!458441 (derivationStepZipperDown!1187 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))) (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438)) (h!70388 s!2326)))))

(declare-fun b!5854400 () Bool)

(assert (=> b!5854400 (= e!3589945 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458432 () Bool)

(declare-fun call!458440 () List!64062)

(assert (=> bm!458432 (= call!458438 call!458440)))

(declare-fun bm!458433 () Bool)

(assert (=> bm!458433 (= call!458437 call!458441)))

(declare-fun b!5854401 () Bool)

(assert (=> b!5854401 (= c!1038037 e!3589940)))

(declare-fun res!2464378 () Bool)

(assert (=> b!5854401 (=> (not res!2464378) (not e!3589940))))

(assert (=> b!5854401 (= res!2464378 ((_ is Concat!24766) r!7292))))

(assert (=> b!5854401 (= e!3589941 e!3589943)))

(declare-fun b!5854402 () Bool)

(assert (=> b!5854402 (= e!3589941 ((_ map or) call!458439 call!458441))))

(declare-fun bm!458434 () Bool)

(assert (=> bm!458434 (= call!458436 call!458437)))

(declare-fun b!5854403 () Bool)

(assert (=> b!5854403 (= e!3589942 (store ((as const (Array Context!10610 Bool)) false) lt!2304692 true))))

(declare-fun bm!458435 () Bool)

(assert (=> bm!458435 (= call!458439 (derivationStepZipperDown!1187 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)) (ite c!1038034 lt!2304692 (Context!10611 call!458440)) (h!70388 s!2326)))))

(declare-fun bm!458436 () Bool)

(declare-fun $colon$colon!1826 (List!64062 Regex!15921) List!64062)

(assert (=> bm!458436 (= call!458440 ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038037 c!1038038) (regTwo!32354 r!7292) r!7292)))))

(declare-fun b!5854404 () Bool)

(assert (=> b!5854404 (= e!3589944 call!458436)))

(assert (= (and d!1838556 c!1038035) b!5854403))

(assert (= (and d!1838556 (not c!1038035)) b!5854397))

(assert (= (and b!5854397 c!1038034) b!5854402))

(assert (= (and b!5854397 (not c!1038034)) b!5854401))

(assert (= (and b!5854401 res!2464378) b!5854396))

(assert (= (and b!5854401 c!1038037) b!5854394))

(assert (= (and b!5854401 (not c!1038037)) b!5854398))

(assert (= (and b!5854398 c!1038038) b!5854404))

(assert (= (and b!5854398 (not c!1038038)) b!5854399))

(assert (= (and b!5854399 c!1038036) b!5854395))

(assert (= (and b!5854399 (not c!1038036)) b!5854400))

(assert (= (or b!5854404 b!5854395) bm!458432))

(assert (= (or b!5854404 b!5854395) bm!458434))

(assert (= (or b!5854394 bm!458432) bm!458436))

(assert (= (or b!5854394 bm!458434) bm!458433))

(assert (= (or b!5854402 bm!458433) bm!458431))

(assert (= (or b!5854402 b!5854394) bm!458435))

(declare-fun m!6773214 () Bool)

(assert (=> b!5854396 m!6773214))

(declare-fun m!6773216 () Bool)

(assert (=> bm!458435 m!6773216))

(declare-fun m!6773218 () Bool)

(assert (=> bm!458436 m!6773218))

(declare-fun m!6773220 () Bool)

(assert (=> bm!458431 m!6773220))

(declare-fun m!6773222 () Bool)

(assert (=> b!5854403 m!6773222))

(assert (=> b!5853761 d!1838556))

(declare-fun b!5854405 () Bool)

(declare-fun e!3589946 () (InoxSet Context!10610))

(declare-fun call!458442 () (InoxSet Context!10610))

(assert (=> b!5854405 (= e!3589946 call!458442)))

(declare-fun d!1838558 () Bool)

(declare-fun c!1038039 () Bool)

(declare-fun e!3589948 () Bool)

(assert (=> d!1838558 (= c!1038039 e!3589948)))

(declare-fun res!2464379 () Bool)

(assert (=> d!1838558 (=> (not res!2464379) (not e!3589948))))

(assert (=> d!1838558 (= res!2464379 ((_ is Cons!63938) (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))

(declare-fun e!3589947 () (InoxSet Context!10610))

(assert (=> d!1838558 (= (derivationStepZipperUp!1113 (Context!10611 (Cons!63938 r!7292 Nil!63938)) (h!70388 s!2326)) e!3589947)))

(declare-fun b!5854406 () Bool)

(assert (=> b!5854406 (= e!3589946 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458437 () Bool)

(assert (=> bm!458437 (= call!458442 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70388 s!2326)))))

(declare-fun b!5854407 () Bool)

(assert (=> b!5854407 (= e!3589947 ((_ map or) call!458442 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70388 s!2326))))))

(declare-fun b!5854408 () Bool)

(assert (=> b!5854408 (= e!3589947 e!3589946)))

(declare-fun c!1038040 () Bool)

(assert (=> b!5854408 (= c!1038040 ((_ is Cons!63938) (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))

(declare-fun b!5854409 () Bool)

(assert (=> b!5854409 (= e!3589948 (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(assert (= (and d!1838558 res!2464379) b!5854409))

(assert (= (and d!1838558 c!1038039) b!5854407))

(assert (= (and d!1838558 (not c!1038039)) b!5854408))

(assert (= (and b!5854408 c!1038040) b!5854405))

(assert (= (and b!5854408 (not c!1038040)) b!5854406))

(assert (= (or b!5854407 b!5854405) bm!458437))

(declare-fun m!6773224 () Bool)

(assert (=> bm!458437 m!6773224))

(declare-fun m!6773226 () Bool)

(assert (=> b!5854407 m!6773226))

(declare-fun m!6773228 () Bool)

(assert (=> b!5854409 m!6773228))

(assert (=> b!5853761 d!1838558))

(declare-fun bs!1379362 () Bool)

(declare-fun d!1838560 () Bool)

(assert (= bs!1379362 (and d!1838560 d!1838520)))

(declare-fun lambda!320113 () Int)

(assert (=> bs!1379362 (= lambda!320113 lambda!320099)))

(declare-fun bs!1379363 () Bool)

(assert (= bs!1379363 (and d!1838560 d!1838548)))

(assert (=> bs!1379363 (= lambda!320113 lambda!320106)))

(declare-fun bs!1379364 () Bool)

(assert (= bs!1379364 (and d!1838560 d!1838550)))

(assert (=> bs!1379364 (= lambda!320113 lambda!320109)))

(declare-fun bs!1379365 () Bool)

(assert (= bs!1379365 (and d!1838560 d!1838554)))

(assert (=> bs!1379365 (= lambda!320113 lambda!320112)))

(assert (=> d!1838560 (= (inv!83049 setElem!39670) (forall!15008 (exprs!5805 setElem!39670) lambda!320113))))

(declare-fun bs!1379366 () Bool)

(assert (= bs!1379366 d!1838560))

(declare-fun m!6773230 () Bool)

(assert (=> bs!1379366 m!6773230))

(assert (=> setNonEmpty!39670 d!1838560))

(declare-fun d!1838562 () Bool)

(assert (=> d!1838562 (= (isEmpty!35796 (t!377428 zl!343)) ((_ is Nil!63939) (t!377428 zl!343)))))

(assert (=> b!5853770 d!1838562))

(declare-fun d!1838564 () Bool)

(declare-fun c!1038041 () Bool)

(assert (=> d!1838564 (= c!1038041 (isEmpty!35798 (t!377429 s!2326)))))

(declare-fun e!3589949 () Bool)

(assert (=> d!1838564 (= (matchZipper!1987 lt!2304690 (t!377429 s!2326)) e!3589949)))

(declare-fun b!5854410 () Bool)

(assert (=> b!5854410 (= e!3589949 (nullableZipper!1760 lt!2304690))))

(declare-fun b!5854411 () Bool)

(assert (=> b!5854411 (= e!3589949 (matchZipper!1987 (derivationStepZipper!1920 lt!2304690 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))))))

(assert (= (and d!1838564 c!1038041) b!5854410))

(assert (= (and d!1838564 (not c!1038041)) b!5854411))

(assert (=> d!1838564 m!6773156))

(declare-fun m!6773232 () Bool)

(assert (=> b!5854410 m!6773232))

(assert (=> b!5854411 m!6773160))

(assert (=> b!5854411 m!6773160))

(declare-fun m!6773234 () Bool)

(assert (=> b!5854411 m!6773234))

(assert (=> b!5854411 m!6773164))

(assert (=> b!5854411 m!6773234))

(assert (=> b!5854411 m!6773164))

(declare-fun m!6773236 () Bool)

(assert (=> b!5854411 m!6773236))

(assert (=> b!5853767 d!1838564))

(declare-fun e!3589952 () Bool)

(declare-fun d!1838566 () Bool)

(assert (=> d!1838566 (= (matchZipper!1987 ((_ map or) lt!2304690 lt!2304694) (t!377429 s!2326)) e!3589952)))

(declare-fun res!2464382 () Bool)

(assert (=> d!1838566 (=> res!2464382 e!3589952)))

(assert (=> d!1838566 (= res!2464382 (matchZipper!1987 lt!2304690 (t!377429 s!2326)))))

(declare-fun lt!2304764 () Unit!157113)

(declare-fun choose!44397 ((InoxSet Context!10610) (InoxSet Context!10610) List!64064) Unit!157113)

(assert (=> d!1838566 (= lt!2304764 (choose!44397 lt!2304690 lt!2304694 (t!377429 s!2326)))))

(assert (=> d!1838566 (= (lemmaZipperConcatMatchesSameAsBothZippers!822 lt!2304690 lt!2304694 (t!377429 s!2326)) lt!2304764)))

(declare-fun b!5854414 () Bool)

(assert (=> b!5854414 (= e!3589952 (matchZipper!1987 lt!2304694 (t!377429 s!2326)))))

(assert (= (and d!1838566 (not res!2464382)) b!5854414))

(declare-fun m!6773238 () Bool)

(assert (=> d!1838566 m!6773238))

(assert (=> d!1838566 m!6772888))

(declare-fun m!6773240 () Bool)

(assert (=> d!1838566 m!6773240))

(assert (=> b!5854414 m!6772850))

(assert (=> b!5853767 d!1838566))

(declare-fun d!1838568 () Bool)

(declare-fun c!1038042 () Bool)

(assert (=> d!1838568 (= c!1038042 (isEmpty!35798 s!2326))))

(declare-fun e!3589953 () Bool)

(assert (=> d!1838568 (= (matchZipper!1987 z!1189 s!2326) e!3589953)))

(declare-fun b!5854415 () Bool)

(assert (=> b!5854415 (= e!3589953 (nullableZipper!1760 z!1189))))

(declare-fun b!5854416 () Bool)

(assert (=> b!5854416 (= e!3589953 (matchZipper!1987 (derivationStepZipper!1920 z!1189 (head!12395 s!2326)) (tail!11480 s!2326)))))

(assert (= (and d!1838568 c!1038042) b!5854415))

(assert (= (and d!1838568 (not c!1038042)) b!5854416))

(assert (=> d!1838568 m!6773046))

(declare-fun m!6773242 () Bool)

(assert (=> b!5854415 m!6773242))

(assert (=> b!5854416 m!6773062))

(assert (=> b!5854416 m!6773062))

(declare-fun m!6773244 () Bool)

(assert (=> b!5854416 m!6773244))

(assert (=> b!5854416 m!6773056))

(assert (=> b!5854416 m!6773244))

(assert (=> b!5854416 m!6773056))

(declare-fun m!6773246 () Bool)

(assert (=> b!5854416 m!6773246))

(assert (=> b!5853757 d!1838568))

(declare-fun d!1838570 () Bool)

(declare-fun c!1038043 () Bool)

(assert (=> d!1838570 (= c!1038043 (isEmpty!35798 (t!377429 s!2326)))))

(declare-fun e!3589954 () Bool)

(assert (=> d!1838570 (= (matchZipper!1987 lt!2304701 (t!377429 s!2326)) e!3589954)))

(declare-fun b!5854417 () Bool)

(assert (=> b!5854417 (= e!3589954 (nullableZipper!1760 lt!2304701))))

(declare-fun b!5854418 () Bool)

(assert (=> b!5854418 (= e!3589954 (matchZipper!1987 (derivationStepZipper!1920 lt!2304701 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))))))

(assert (= (and d!1838570 c!1038043) b!5854417))

(assert (= (and d!1838570 (not c!1038043)) b!5854418))

(assert (=> d!1838570 m!6773156))

(declare-fun m!6773248 () Bool)

(assert (=> b!5854417 m!6773248))

(assert (=> b!5854418 m!6773160))

(assert (=> b!5854418 m!6773160))

(declare-fun m!6773250 () Bool)

(assert (=> b!5854418 m!6773250))

(assert (=> b!5854418 m!6773164))

(assert (=> b!5854418 m!6773250))

(assert (=> b!5854418 m!6773164))

(declare-fun m!6773252 () Bool)

(assert (=> b!5854418 m!6773252))

(assert (=> b!5853757 d!1838570))

(declare-fun bs!1379367 () Bool)

(declare-fun d!1838572 () Bool)

(assert (= bs!1379367 (and d!1838572 d!1838520)))

(declare-fun lambda!320114 () Int)

(assert (=> bs!1379367 (= lambda!320114 lambda!320099)))

(declare-fun bs!1379368 () Bool)

(assert (= bs!1379368 (and d!1838572 d!1838554)))

(assert (=> bs!1379368 (= lambda!320114 lambda!320112)))

(declare-fun bs!1379369 () Bool)

(assert (= bs!1379369 (and d!1838572 d!1838548)))

(assert (=> bs!1379369 (= lambda!320114 lambda!320106)))

(declare-fun bs!1379370 () Bool)

(assert (= bs!1379370 (and d!1838572 d!1838550)))

(assert (=> bs!1379370 (= lambda!320114 lambda!320109)))

(declare-fun bs!1379371 () Bool)

(assert (= bs!1379371 (and d!1838572 d!1838560)))

(assert (=> bs!1379371 (= lambda!320114 lambda!320113)))

(assert (=> d!1838572 (= (inv!83049 (h!70387 zl!343)) (forall!15008 (exprs!5805 (h!70387 zl!343)) lambda!320114))))

(declare-fun bs!1379372 () Bool)

(assert (= bs!1379372 d!1838572))

(declare-fun m!6773254 () Bool)

(assert (=> bs!1379372 m!6773254))

(assert (=> b!5853747 d!1838572))

(declare-fun b!5854419 () Bool)

(declare-fun e!3589958 () (InoxSet Context!10610))

(declare-fun call!458446 () (InoxSet Context!10610))

(declare-fun call!458444 () (InoxSet Context!10610))

(assert (=> b!5854419 (= e!3589958 ((_ map or) call!458446 call!458444))))

(declare-fun b!5854420 () Bool)

(declare-fun e!3589960 () (InoxSet Context!10610))

(declare-fun call!458443 () (InoxSet Context!10610))

(assert (=> b!5854420 (= e!3589960 call!458443)))

(declare-fun b!5854421 () Bool)

(declare-fun e!3589955 () Bool)

(assert (=> b!5854421 (= e!3589955 (nullable!5921 (regOne!32354 (regTwo!32355 r!7292))))))

(declare-fun d!1838574 () Bool)

(declare-fun c!1038045 () Bool)

(assert (=> d!1838574 (= c!1038045 (and ((_ is ElementMatch!15921) (regTwo!32355 r!7292)) (= (c!1037845 (regTwo!32355 r!7292)) (h!70388 s!2326))))))

(declare-fun e!3589957 () (InoxSet Context!10610))

(assert (=> d!1838574 (= (derivationStepZipperDown!1187 (regTwo!32355 r!7292) lt!2304692 (h!70388 s!2326)) e!3589957)))

(declare-fun b!5854422 () Bool)

(declare-fun e!3589956 () (InoxSet Context!10610))

(assert (=> b!5854422 (= e!3589957 e!3589956)))

(declare-fun c!1038044 () Bool)

(assert (=> b!5854422 (= c!1038044 ((_ is Union!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5854423 () Bool)

(declare-fun e!3589959 () (InoxSet Context!10610))

(assert (=> b!5854423 (= e!3589958 e!3589959)))

(declare-fun c!1038048 () Bool)

(assert (=> b!5854423 (= c!1038048 ((_ is Concat!24766) (regTwo!32355 r!7292)))))

(declare-fun b!5854424 () Bool)

(declare-fun c!1038046 () Bool)

(assert (=> b!5854424 (= c!1038046 ((_ is Star!15921) (regTwo!32355 r!7292)))))

(assert (=> b!5854424 (= e!3589959 e!3589960)))

(declare-fun bm!458438 () Bool)

(declare-fun call!458448 () (InoxSet Context!10610))

(declare-fun c!1038047 () Bool)

(declare-fun call!458445 () List!64062)

(assert (=> bm!458438 (= call!458448 (derivationStepZipperDown!1187 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))) (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445)) (h!70388 s!2326)))))

(declare-fun b!5854425 () Bool)

(assert (=> b!5854425 (= e!3589960 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458439 () Bool)

(declare-fun call!458447 () List!64062)

(assert (=> bm!458439 (= call!458445 call!458447)))

(declare-fun bm!458440 () Bool)

(assert (=> bm!458440 (= call!458444 call!458448)))

(declare-fun b!5854426 () Bool)

(assert (=> b!5854426 (= c!1038047 e!3589955)))

(declare-fun res!2464383 () Bool)

(assert (=> b!5854426 (=> (not res!2464383) (not e!3589955))))

(assert (=> b!5854426 (= res!2464383 ((_ is Concat!24766) (regTwo!32355 r!7292)))))

(assert (=> b!5854426 (= e!3589956 e!3589958)))

(declare-fun b!5854427 () Bool)

(assert (=> b!5854427 (= e!3589956 ((_ map or) call!458446 call!458448))))

(declare-fun bm!458441 () Bool)

(assert (=> bm!458441 (= call!458443 call!458444)))

(declare-fun b!5854428 () Bool)

(assert (=> b!5854428 (= e!3589957 (store ((as const (Array Context!10610 Bool)) false) lt!2304692 true))))

(declare-fun bm!458442 () Bool)

(assert (=> bm!458442 (= call!458446 (derivationStepZipperDown!1187 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))) (ite c!1038044 lt!2304692 (Context!10611 call!458447)) (h!70388 s!2326)))))

(declare-fun bm!458443 () Bool)

(assert (=> bm!458443 (= call!458447 ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038047 c!1038048) (regTwo!32354 (regTwo!32355 r!7292)) (regTwo!32355 r!7292))))))

(declare-fun b!5854429 () Bool)

(assert (=> b!5854429 (= e!3589959 call!458443)))

(assert (= (and d!1838574 c!1038045) b!5854428))

(assert (= (and d!1838574 (not c!1038045)) b!5854422))

(assert (= (and b!5854422 c!1038044) b!5854427))

(assert (= (and b!5854422 (not c!1038044)) b!5854426))

(assert (= (and b!5854426 res!2464383) b!5854421))

(assert (= (and b!5854426 c!1038047) b!5854419))

(assert (= (and b!5854426 (not c!1038047)) b!5854423))

(assert (= (and b!5854423 c!1038048) b!5854429))

(assert (= (and b!5854423 (not c!1038048)) b!5854424))

(assert (= (and b!5854424 c!1038046) b!5854420))

(assert (= (and b!5854424 (not c!1038046)) b!5854425))

(assert (= (or b!5854429 b!5854420) bm!458439))

(assert (= (or b!5854429 b!5854420) bm!458441))

(assert (= (or b!5854419 bm!458439) bm!458443))

(assert (= (or b!5854419 bm!458441) bm!458440))

(assert (= (or b!5854427 bm!458440) bm!458438))

(assert (= (or b!5854427 b!5854419) bm!458442))

(declare-fun m!6773256 () Bool)

(assert (=> b!5854421 m!6773256))

(declare-fun m!6773258 () Bool)

(assert (=> bm!458442 m!6773258))

(declare-fun m!6773260 () Bool)

(assert (=> bm!458443 m!6773260))

(declare-fun m!6773262 () Bool)

(assert (=> bm!458438 m!6773262))

(assert (=> b!5854428 m!6773222))

(assert (=> b!5853768 d!1838574))

(declare-fun b!5854430 () Bool)

(declare-fun e!3589964 () (InoxSet Context!10610))

(declare-fun call!458452 () (InoxSet Context!10610))

(declare-fun call!458450 () (InoxSet Context!10610))

(assert (=> b!5854430 (= e!3589964 ((_ map or) call!458452 call!458450))))

(declare-fun b!5854431 () Bool)

(declare-fun e!3589966 () (InoxSet Context!10610))

(declare-fun call!458449 () (InoxSet Context!10610))

(assert (=> b!5854431 (= e!3589966 call!458449)))

(declare-fun b!5854432 () Bool)

(declare-fun e!3589961 () Bool)

(assert (=> b!5854432 (= e!3589961 (nullable!5921 (regOne!32354 (regOne!32355 r!7292))))))

(declare-fun d!1838576 () Bool)

(declare-fun c!1038050 () Bool)

(assert (=> d!1838576 (= c!1038050 (and ((_ is ElementMatch!15921) (regOne!32355 r!7292)) (= (c!1037845 (regOne!32355 r!7292)) (h!70388 s!2326))))))

(declare-fun e!3589963 () (InoxSet Context!10610))

(assert (=> d!1838576 (= (derivationStepZipperDown!1187 (regOne!32355 r!7292) lt!2304692 (h!70388 s!2326)) e!3589963)))

(declare-fun b!5854433 () Bool)

(declare-fun e!3589962 () (InoxSet Context!10610))

(assert (=> b!5854433 (= e!3589963 e!3589962)))

(declare-fun c!1038049 () Bool)

(assert (=> b!5854433 (= c!1038049 ((_ is Union!15921) (regOne!32355 r!7292)))))

(declare-fun b!5854434 () Bool)

(declare-fun e!3589965 () (InoxSet Context!10610))

(assert (=> b!5854434 (= e!3589964 e!3589965)))

(declare-fun c!1038053 () Bool)

(assert (=> b!5854434 (= c!1038053 ((_ is Concat!24766) (regOne!32355 r!7292)))))

(declare-fun b!5854435 () Bool)

(declare-fun c!1038051 () Bool)

(assert (=> b!5854435 (= c!1038051 ((_ is Star!15921) (regOne!32355 r!7292)))))

(assert (=> b!5854435 (= e!3589965 e!3589966)))

(declare-fun call!458451 () List!64062)

(declare-fun call!458454 () (InoxSet Context!10610))

(declare-fun bm!458444 () Bool)

(declare-fun c!1038052 () Bool)

(assert (=> bm!458444 (= call!458454 (derivationStepZipperDown!1187 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))) (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451)) (h!70388 s!2326)))))

(declare-fun b!5854436 () Bool)

(assert (=> b!5854436 (= e!3589966 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458445 () Bool)

(declare-fun call!458453 () List!64062)

(assert (=> bm!458445 (= call!458451 call!458453)))

(declare-fun bm!458446 () Bool)

(assert (=> bm!458446 (= call!458450 call!458454)))

(declare-fun b!5854437 () Bool)

(assert (=> b!5854437 (= c!1038052 e!3589961)))

(declare-fun res!2464384 () Bool)

(assert (=> b!5854437 (=> (not res!2464384) (not e!3589961))))

(assert (=> b!5854437 (= res!2464384 ((_ is Concat!24766) (regOne!32355 r!7292)))))

(assert (=> b!5854437 (= e!3589962 e!3589964)))

(declare-fun b!5854438 () Bool)

(assert (=> b!5854438 (= e!3589962 ((_ map or) call!458452 call!458454))))

(declare-fun bm!458447 () Bool)

(assert (=> bm!458447 (= call!458449 call!458450)))

(declare-fun b!5854439 () Bool)

(assert (=> b!5854439 (= e!3589963 (store ((as const (Array Context!10610 Bool)) false) lt!2304692 true))))

(declare-fun bm!458448 () Bool)

(assert (=> bm!458448 (= call!458452 (derivationStepZipperDown!1187 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))) (ite c!1038049 lt!2304692 (Context!10611 call!458453)) (h!70388 s!2326)))))

(declare-fun bm!458449 () Bool)

(assert (=> bm!458449 (= call!458453 ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038052 c!1038053) (regTwo!32354 (regOne!32355 r!7292)) (regOne!32355 r!7292))))))

(declare-fun b!5854440 () Bool)

(assert (=> b!5854440 (= e!3589965 call!458449)))

(assert (= (and d!1838576 c!1038050) b!5854439))

(assert (= (and d!1838576 (not c!1038050)) b!5854433))

(assert (= (and b!5854433 c!1038049) b!5854438))

(assert (= (and b!5854433 (not c!1038049)) b!5854437))

(assert (= (and b!5854437 res!2464384) b!5854432))

(assert (= (and b!5854437 c!1038052) b!5854430))

(assert (= (and b!5854437 (not c!1038052)) b!5854434))

(assert (= (and b!5854434 c!1038053) b!5854440))

(assert (= (and b!5854434 (not c!1038053)) b!5854435))

(assert (= (and b!5854435 c!1038051) b!5854431))

(assert (= (and b!5854435 (not c!1038051)) b!5854436))

(assert (= (or b!5854440 b!5854431) bm!458445))

(assert (= (or b!5854440 b!5854431) bm!458447))

(assert (= (or b!5854430 bm!458445) bm!458449))

(assert (= (or b!5854430 bm!458447) bm!458446))

(assert (= (or b!5854438 bm!458446) bm!458444))

(assert (= (or b!5854438 b!5854430) bm!458448))

(declare-fun m!6773264 () Bool)

(assert (=> b!5854432 m!6773264))

(declare-fun m!6773266 () Bool)

(assert (=> bm!458448 m!6773266))

(declare-fun m!6773268 () Bool)

(assert (=> bm!458449 m!6773268))

(declare-fun m!6773270 () Bool)

(assert (=> bm!458444 m!6773270))

(assert (=> b!5854439 m!6773222))

(assert (=> b!5853768 d!1838576))

(declare-fun bs!1379373 () Bool)

(declare-fun b!5854451 () Bool)

(assert (= bs!1379373 (and b!5854451 b!5854057)))

(declare-fun lambda!320115 () Int)

(assert (=> bs!1379373 (= (and (= (reg!16250 (regTwo!32355 r!7292)) (reg!16250 r!7292)) (= (regTwo!32355 r!7292) r!7292)) (= lambda!320115 lambda!320089))))

(declare-fun bs!1379374 () Bool)

(assert (= bs!1379374 (and b!5854451 b!5854053)))

(assert (=> bs!1379374 (not (= lambda!320115 lambda!320090))))

(assert (=> b!5854451 true))

(assert (=> b!5854451 true))

(declare-fun bs!1379375 () Bool)

(declare-fun b!5854447 () Bool)

(assert (= bs!1379375 (and b!5854447 b!5854057)))

(declare-fun lambda!320116 () Int)

(assert (=> bs!1379375 (not (= lambda!320116 lambda!320089))))

(declare-fun bs!1379376 () Bool)

(assert (= bs!1379376 (and b!5854447 b!5854053)))

(assert (=> bs!1379376 (= (and (= (regOne!32354 (regTwo!32355 r!7292)) (regOne!32354 r!7292)) (= (regTwo!32354 (regTwo!32355 r!7292)) (regTwo!32354 r!7292))) (= lambda!320116 lambda!320090))))

(declare-fun bs!1379377 () Bool)

(assert (= bs!1379377 (and b!5854447 b!5854451)))

(assert (=> bs!1379377 (not (= lambda!320116 lambda!320115))))

(assert (=> b!5854447 true))

(assert (=> b!5854447 true))

(declare-fun b!5854441 () Bool)

(declare-fun c!1038056 () Bool)

(assert (=> b!5854441 (= c!1038056 ((_ is Union!15921) (regTwo!32355 r!7292)))))

(declare-fun e!3589967 () Bool)

(declare-fun e!3589972 () Bool)

(assert (=> b!5854441 (= e!3589967 e!3589972)))

(declare-fun bm!458450 () Bool)

(declare-fun call!458455 () Bool)

(assert (=> bm!458450 (= call!458455 (isEmpty!35798 s!2326))))

(declare-fun b!5854443 () Bool)

(declare-fun e!3589968 () Bool)

(assert (=> b!5854443 (= e!3589972 e!3589968)))

(declare-fun res!2464386 () Bool)

(assert (=> b!5854443 (= res!2464386 (matchRSpec!3022 (regOne!32355 (regTwo!32355 r!7292)) s!2326))))

(assert (=> b!5854443 (=> res!2464386 e!3589968)))

(declare-fun b!5854444 () Bool)

(assert (=> b!5854444 (= e!3589967 (= s!2326 (Cons!63940 (c!1037845 (regTwo!32355 r!7292)) Nil!63940)))))

(declare-fun b!5854445 () Bool)

(assert (=> b!5854445 (= e!3589968 (matchRSpec!3022 (regTwo!32355 (regTwo!32355 r!7292)) s!2326))))

(declare-fun b!5854446 () Bool)

(declare-fun c!1038057 () Bool)

(assert (=> b!5854446 (= c!1038057 ((_ is ElementMatch!15921) (regTwo!32355 r!7292)))))

(declare-fun e!3589970 () Bool)

(assert (=> b!5854446 (= e!3589970 e!3589967)))

(declare-fun e!3589971 () Bool)

(declare-fun call!458456 () Bool)

(assert (=> b!5854447 (= e!3589971 call!458456)))

(declare-fun b!5854448 () Bool)

(assert (=> b!5854448 (= e!3589972 e!3589971)))

(declare-fun c!1038055 () Bool)

(assert (=> b!5854448 (= c!1038055 ((_ is Star!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5854449 () Bool)

(declare-fun e!3589969 () Bool)

(assert (=> b!5854449 (= e!3589969 call!458455)))

(declare-fun b!5854450 () Bool)

(assert (=> b!5854450 (= e!3589969 e!3589970)))

(declare-fun res!2464387 () Bool)

(assert (=> b!5854450 (= res!2464387 (not ((_ is EmptyLang!15921) (regTwo!32355 r!7292))))))

(assert (=> b!5854450 (=> (not res!2464387) (not e!3589970))))

(declare-fun e!3589973 () Bool)

(assert (=> b!5854451 (= e!3589973 call!458456)))

(declare-fun bm!458451 () Bool)

(assert (=> bm!458451 (= call!458456 (Exists!2993 (ite c!1038055 lambda!320115 lambda!320116)))))

(declare-fun b!5854442 () Bool)

(declare-fun res!2464385 () Bool)

(assert (=> b!5854442 (=> res!2464385 e!3589973)))

(assert (=> b!5854442 (= res!2464385 call!458455)))

(assert (=> b!5854442 (= e!3589971 e!3589973)))

(declare-fun d!1838578 () Bool)

(declare-fun c!1038054 () Bool)

(assert (=> d!1838578 (= c!1038054 ((_ is EmptyExpr!15921) (regTwo!32355 r!7292)))))

(assert (=> d!1838578 (= (matchRSpec!3022 (regTwo!32355 r!7292) s!2326) e!3589969)))

(assert (= (and d!1838578 c!1038054) b!5854449))

(assert (= (and d!1838578 (not c!1038054)) b!5854450))

(assert (= (and b!5854450 res!2464387) b!5854446))

(assert (= (and b!5854446 c!1038057) b!5854444))

(assert (= (and b!5854446 (not c!1038057)) b!5854441))

(assert (= (and b!5854441 c!1038056) b!5854443))

(assert (= (and b!5854441 (not c!1038056)) b!5854448))

(assert (= (and b!5854443 (not res!2464386)) b!5854445))

(assert (= (and b!5854448 c!1038055) b!5854442))

(assert (= (and b!5854448 (not c!1038055)) b!5854447))

(assert (= (and b!5854442 (not res!2464385)) b!5854451))

(assert (= (or b!5854451 b!5854447) bm!458451))

(assert (= (or b!5854449 b!5854442) bm!458450))

(assert (=> bm!458450 m!6773046))

(declare-fun m!6773272 () Bool)

(assert (=> b!5854443 m!6773272))

(declare-fun m!6773274 () Bool)

(assert (=> b!5854445 m!6773274))

(declare-fun m!6773276 () Bool)

(assert (=> bm!458451 m!6773276))

(assert (=> b!5853758 d!1838578))

(declare-fun d!1838580 () Bool)

(assert (=> d!1838580 (= (matchR!8104 (regOne!32355 r!7292) s!2326) (matchRSpec!3022 (regOne!32355 r!7292) s!2326))))

(declare-fun lt!2304765 () Unit!157113)

(assert (=> d!1838580 (= lt!2304765 (choose!44389 (regOne!32355 r!7292) s!2326))))

(assert (=> d!1838580 (validRegex!7657 (regOne!32355 r!7292))))

(assert (=> d!1838580 (= (mainMatchTheorem!3022 (regOne!32355 r!7292) s!2326) lt!2304765)))

(declare-fun bs!1379378 () Bool)

(assert (= bs!1379378 d!1838580))

(assert (=> bs!1379378 m!6772870))

(assert (=> bs!1379378 m!6772866))

(declare-fun m!6773278 () Bool)

(assert (=> bs!1379378 m!6773278))

(declare-fun m!6773280 () Bool)

(assert (=> bs!1379378 m!6773280))

(assert (=> b!5853758 d!1838580))

(declare-fun bm!458452 () Bool)

(declare-fun call!458457 () Bool)

(assert (=> bm!458452 (= call!458457 (isEmpty!35798 s!2326))))

(declare-fun b!5854452 () Bool)

(declare-fun e!3589974 () Bool)

(declare-fun e!3589980 () Bool)

(assert (=> b!5854452 (= e!3589974 e!3589980)))

(declare-fun res!2464389 () Bool)

(assert (=> b!5854452 (=> res!2464389 e!3589980)))

(assert (=> b!5854452 (= res!2464389 call!458457)))

(declare-fun b!5854453 () Bool)

(declare-fun e!3589978 () Bool)

(assert (=> b!5854453 (= e!3589978 (= (head!12395 s!2326) (c!1037845 (regTwo!32355 r!7292))))))

(declare-fun b!5854454 () Bool)

(declare-fun res!2464392 () Bool)

(declare-fun e!3589976 () Bool)

(assert (=> b!5854454 (=> res!2464392 e!3589976)))

(assert (=> b!5854454 (= res!2464392 (not ((_ is ElementMatch!15921) (regTwo!32355 r!7292))))))

(declare-fun e!3589975 () Bool)

(assert (=> b!5854454 (= e!3589975 e!3589976)))

(declare-fun b!5854455 () Bool)

(declare-fun res!2464390 () Bool)

(assert (=> b!5854455 (=> res!2464390 e!3589980)))

(assert (=> b!5854455 (= res!2464390 (not (isEmpty!35798 (tail!11480 s!2326))))))

(declare-fun b!5854456 () Bool)

(assert (=> b!5854456 (= e!3589976 e!3589974)))

(declare-fun res!2464394 () Bool)

(assert (=> b!5854456 (=> (not res!2464394) (not e!3589974))))

(declare-fun lt!2304766 () Bool)

(assert (=> b!5854456 (= res!2464394 (not lt!2304766))))

(declare-fun b!5854457 () Bool)

(declare-fun e!3589979 () Bool)

(assert (=> b!5854457 (= e!3589979 e!3589975)))

(declare-fun c!1038058 () Bool)

(assert (=> b!5854457 (= c!1038058 ((_ is EmptyLang!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5854458 () Bool)

(assert (=> b!5854458 (= e!3589979 (= lt!2304766 call!458457))))

(declare-fun b!5854459 () Bool)

(declare-fun e!3589977 () Bool)

(assert (=> b!5854459 (= e!3589977 (nullable!5921 (regTwo!32355 r!7292)))))

(declare-fun b!5854460 () Bool)

(assert (=> b!5854460 (= e!3589980 (not (= (head!12395 s!2326) (c!1037845 (regTwo!32355 r!7292)))))))

(declare-fun b!5854461 () Bool)

(assert (=> b!5854461 (= e!3589977 (matchR!8104 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)) (tail!11480 s!2326)))))

(declare-fun b!5854462 () Bool)

(declare-fun res!2464393 () Bool)

(assert (=> b!5854462 (=> (not res!2464393) (not e!3589978))))

(assert (=> b!5854462 (= res!2464393 (not call!458457))))

(declare-fun b!5854463 () Bool)

(declare-fun res!2464391 () Bool)

(assert (=> b!5854463 (=> res!2464391 e!3589976)))

(assert (=> b!5854463 (= res!2464391 e!3589978)))

(declare-fun res!2464388 () Bool)

(assert (=> b!5854463 (=> (not res!2464388) (not e!3589978))))

(assert (=> b!5854463 (= res!2464388 lt!2304766)))

(declare-fun d!1838582 () Bool)

(assert (=> d!1838582 e!3589979))

(declare-fun c!1038060 () Bool)

(assert (=> d!1838582 (= c!1038060 ((_ is EmptyExpr!15921) (regTwo!32355 r!7292)))))

(assert (=> d!1838582 (= lt!2304766 e!3589977)))

(declare-fun c!1038059 () Bool)

(assert (=> d!1838582 (= c!1038059 (isEmpty!35798 s!2326))))

(assert (=> d!1838582 (validRegex!7657 (regTwo!32355 r!7292))))

(assert (=> d!1838582 (= (matchR!8104 (regTwo!32355 r!7292) s!2326) lt!2304766)))

(declare-fun b!5854464 () Bool)

(declare-fun res!2464395 () Bool)

(assert (=> b!5854464 (=> (not res!2464395) (not e!3589978))))

(assert (=> b!5854464 (= res!2464395 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5854465 () Bool)

(assert (=> b!5854465 (= e!3589975 (not lt!2304766))))

(assert (= (and d!1838582 c!1038059) b!5854459))

(assert (= (and d!1838582 (not c!1038059)) b!5854461))

(assert (= (and d!1838582 c!1038060) b!5854458))

(assert (= (and d!1838582 (not c!1038060)) b!5854457))

(assert (= (and b!5854457 c!1038058) b!5854465))

(assert (= (and b!5854457 (not c!1038058)) b!5854454))

(assert (= (and b!5854454 (not res!2464392)) b!5854463))

(assert (= (and b!5854463 res!2464388) b!5854462))

(assert (= (and b!5854462 res!2464393) b!5854464))

(assert (= (and b!5854464 res!2464395) b!5854453))

(assert (= (and b!5854463 (not res!2464391)) b!5854456))

(assert (= (and b!5854456 res!2464394) b!5854452))

(assert (= (and b!5854452 (not res!2464389)) b!5854455))

(assert (= (and b!5854455 (not res!2464390)) b!5854460))

(assert (= (or b!5854458 b!5854452 b!5854462) bm!458452))

(assert (=> d!1838582 m!6773046))

(declare-fun m!6773282 () Bool)

(assert (=> d!1838582 m!6773282))

(declare-fun m!6773284 () Bool)

(assert (=> b!5854459 m!6773284))

(assert (=> bm!458452 m!6773046))

(assert (=> b!5854464 m!6773056))

(assert (=> b!5854464 m!6773056))

(assert (=> b!5854464 m!6773060))

(assert (=> b!5854461 m!6773062))

(assert (=> b!5854461 m!6773062))

(declare-fun m!6773286 () Bool)

(assert (=> b!5854461 m!6773286))

(assert (=> b!5854461 m!6773056))

(assert (=> b!5854461 m!6773286))

(assert (=> b!5854461 m!6773056))

(declare-fun m!6773288 () Bool)

(assert (=> b!5854461 m!6773288))

(assert (=> b!5854460 m!6773062))

(assert (=> b!5854455 m!6773056))

(assert (=> b!5854455 m!6773056))

(assert (=> b!5854455 m!6773060))

(assert (=> b!5854453 m!6773062))

(assert (=> b!5853758 d!1838582))

(declare-fun d!1838584 () Bool)

(assert (=> d!1838584 (= (matchR!8104 (regTwo!32355 r!7292) s!2326) (matchRSpec!3022 (regTwo!32355 r!7292) s!2326))))

(declare-fun lt!2304767 () Unit!157113)

(assert (=> d!1838584 (= lt!2304767 (choose!44389 (regTwo!32355 r!7292) s!2326))))

(assert (=> d!1838584 (validRegex!7657 (regTwo!32355 r!7292))))

(assert (=> d!1838584 (= (mainMatchTheorem!3022 (regTwo!32355 r!7292) s!2326) lt!2304767)))

(declare-fun bs!1379379 () Bool)

(assert (= bs!1379379 d!1838584))

(assert (=> bs!1379379 m!6772864))

(assert (=> bs!1379379 m!6772860))

(declare-fun m!6773290 () Bool)

(assert (=> bs!1379379 m!6773290))

(assert (=> bs!1379379 m!6773282))

(assert (=> b!5853758 d!1838584))

(declare-fun bs!1379380 () Bool)

(declare-fun b!5854476 () Bool)

(assert (= bs!1379380 (and b!5854476 b!5854057)))

(declare-fun lambda!320117 () Int)

(assert (=> bs!1379380 (= (and (= (reg!16250 (regOne!32355 r!7292)) (reg!16250 r!7292)) (= (regOne!32355 r!7292) r!7292)) (= lambda!320117 lambda!320089))))

(declare-fun bs!1379381 () Bool)

(assert (= bs!1379381 (and b!5854476 b!5854053)))

(assert (=> bs!1379381 (not (= lambda!320117 lambda!320090))))

(declare-fun bs!1379382 () Bool)

(assert (= bs!1379382 (and b!5854476 b!5854451)))

(assert (=> bs!1379382 (= (and (= (reg!16250 (regOne!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))) (= (regOne!32355 r!7292) (regTwo!32355 r!7292))) (= lambda!320117 lambda!320115))))

(declare-fun bs!1379383 () Bool)

(assert (= bs!1379383 (and b!5854476 b!5854447)))

(assert (=> bs!1379383 (not (= lambda!320117 lambda!320116))))

(assert (=> b!5854476 true))

(assert (=> b!5854476 true))

(declare-fun bs!1379384 () Bool)

(declare-fun b!5854472 () Bool)

(assert (= bs!1379384 (and b!5854472 b!5854057)))

(declare-fun lambda!320118 () Int)

(assert (=> bs!1379384 (not (= lambda!320118 lambda!320089))))

(declare-fun bs!1379385 () Bool)

(assert (= bs!1379385 (and b!5854472 b!5854053)))

(assert (=> bs!1379385 (= (and (= (regOne!32354 (regOne!32355 r!7292)) (regOne!32354 r!7292)) (= (regTwo!32354 (regOne!32355 r!7292)) (regTwo!32354 r!7292))) (= lambda!320118 lambda!320090))))

(declare-fun bs!1379386 () Bool)

(assert (= bs!1379386 (and b!5854472 b!5854476)))

(assert (=> bs!1379386 (not (= lambda!320118 lambda!320117))))

(declare-fun bs!1379387 () Bool)

(assert (= bs!1379387 (and b!5854472 b!5854447)))

(assert (=> bs!1379387 (= (and (= (regOne!32354 (regOne!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))) (= (regTwo!32354 (regOne!32355 r!7292)) (regTwo!32354 (regTwo!32355 r!7292)))) (= lambda!320118 lambda!320116))))

(declare-fun bs!1379388 () Bool)

(assert (= bs!1379388 (and b!5854472 b!5854451)))

(assert (=> bs!1379388 (not (= lambda!320118 lambda!320115))))

(assert (=> b!5854472 true))

(assert (=> b!5854472 true))

(declare-fun b!5854466 () Bool)

(declare-fun c!1038063 () Bool)

(assert (=> b!5854466 (= c!1038063 ((_ is Union!15921) (regOne!32355 r!7292)))))

(declare-fun e!3589981 () Bool)

(declare-fun e!3589986 () Bool)

(assert (=> b!5854466 (= e!3589981 e!3589986)))

(declare-fun bm!458453 () Bool)

(declare-fun call!458458 () Bool)

(assert (=> bm!458453 (= call!458458 (isEmpty!35798 s!2326))))

(declare-fun b!5854468 () Bool)

(declare-fun e!3589982 () Bool)

(assert (=> b!5854468 (= e!3589986 e!3589982)))

(declare-fun res!2464397 () Bool)

(assert (=> b!5854468 (= res!2464397 (matchRSpec!3022 (regOne!32355 (regOne!32355 r!7292)) s!2326))))

(assert (=> b!5854468 (=> res!2464397 e!3589982)))

(declare-fun b!5854469 () Bool)

(assert (=> b!5854469 (= e!3589981 (= s!2326 (Cons!63940 (c!1037845 (regOne!32355 r!7292)) Nil!63940)))))

(declare-fun b!5854470 () Bool)

(assert (=> b!5854470 (= e!3589982 (matchRSpec!3022 (regTwo!32355 (regOne!32355 r!7292)) s!2326))))

(declare-fun b!5854471 () Bool)

(declare-fun c!1038064 () Bool)

(assert (=> b!5854471 (= c!1038064 ((_ is ElementMatch!15921) (regOne!32355 r!7292)))))

(declare-fun e!3589984 () Bool)

(assert (=> b!5854471 (= e!3589984 e!3589981)))

(declare-fun e!3589985 () Bool)

(declare-fun call!458459 () Bool)

(assert (=> b!5854472 (= e!3589985 call!458459)))

(declare-fun b!5854473 () Bool)

(assert (=> b!5854473 (= e!3589986 e!3589985)))

(declare-fun c!1038062 () Bool)

(assert (=> b!5854473 (= c!1038062 ((_ is Star!15921) (regOne!32355 r!7292)))))

(declare-fun b!5854474 () Bool)

(declare-fun e!3589983 () Bool)

(assert (=> b!5854474 (= e!3589983 call!458458)))

(declare-fun b!5854475 () Bool)

(assert (=> b!5854475 (= e!3589983 e!3589984)))

(declare-fun res!2464398 () Bool)

(assert (=> b!5854475 (= res!2464398 (not ((_ is EmptyLang!15921) (regOne!32355 r!7292))))))

(assert (=> b!5854475 (=> (not res!2464398) (not e!3589984))))

(declare-fun e!3589987 () Bool)

(assert (=> b!5854476 (= e!3589987 call!458459)))

(declare-fun bm!458454 () Bool)

(assert (=> bm!458454 (= call!458459 (Exists!2993 (ite c!1038062 lambda!320117 lambda!320118)))))

(declare-fun b!5854467 () Bool)

(declare-fun res!2464396 () Bool)

(assert (=> b!5854467 (=> res!2464396 e!3589987)))

(assert (=> b!5854467 (= res!2464396 call!458458)))

(assert (=> b!5854467 (= e!3589985 e!3589987)))

(declare-fun d!1838586 () Bool)

(declare-fun c!1038061 () Bool)

(assert (=> d!1838586 (= c!1038061 ((_ is EmptyExpr!15921) (regOne!32355 r!7292)))))

(assert (=> d!1838586 (= (matchRSpec!3022 (regOne!32355 r!7292) s!2326) e!3589983)))

(assert (= (and d!1838586 c!1038061) b!5854474))

(assert (= (and d!1838586 (not c!1038061)) b!5854475))

(assert (= (and b!5854475 res!2464398) b!5854471))

(assert (= (and b!5854471 c!1038064) b!5854469))

(assert (= (and b!5854471 (not c!1038064)) b!5854466))

(assert (= (and b!5854466 c!1038063) b!5854468))

(assert (= (and b!5854466 (not c!1038063)) b!5854473))

(assert (= (and b!5854468 (not res!2464397)) b!5854470))

(assert (= (and b!5854473 c!1038062) b!5854467))

(assert (= (and b!5854473 (not c!1038062)) b!5854472))

(assert (= (and b!5854467 (not res!2464396)) b!5854476))

(assert (= (or b!5854476 b!5854472) bm!458454))

(assert (= (or b!5854474 b!5854467) bm!458453))

(assert (=> bm!458453 m!6773046))

(declare-fun m!6773292 () Bool)

(assert (=> b!5854468 m!6773292))

(declare-fun m!6773294 () Bool)

(assert (=> b!5854470 m!6773294))

(declare-fun m!6773296 () Bool)

(assert (=> bm!458454 m!6773296))

(assert (=> b!5853758 d!1838586))

(declare-fun bm!458455 () Bool)

(declare-fun call!458460 () Bool)

(assert (=> bm!458455 (= call!458460 (isEmpty!35798 s!2326))))

(declare-fun b!5854477 () Bool)

(declare-fun e!3589988 () Bool)

(declare-fun e!3589994 () Bool)

(assert (=> b!5854477 (= e!3589988 e!3589994)))

(declare-fun res!2464400 () Bool)

(assert (=> b!5854477 (=> res!2464400 e!3589994)))

(assert (=> b!5854477 (= res!2464400 call!458460)))

(declare-fun b!5854478 () Bool)

(declare-fun e!3589992 () Bool)

(assert (=> b!5854478 (= e!3589992 (= (head!12395 s!2326) (c!1037845 (regOne!32355 r!7292))))))

(declare-fun b!5854479 () Bool)

(declare-fun res!2464403 () Bool)

(declare-fun e!3589990 () Bool)

(assert (=> b!5854479 (=> res!2464403 e!3589990)))

(assert (=> b!5854479 (= res!2464403 (not ((_ is ElementMatch!15921) (regOne!32355 r!7292))))))

(declare-fun e!3589989 () Bool)

(assert (=> b!5854479 (= e!3589989 e!3589990)))

(declare-fun b!5854480 () Bool)

(declare-fun res!2464401 () Bool)

(assert (=> b!5854480 (=> res!2464401 e!3589994)))

(assert (=> b!5854480 (= res!2464401 (not (isEmpty!35798 (tail!11480 s!2326))))))

(declare-fun b!5854481 () Bool)

(assert (=> b!5854481 (= e!3589990 e!3589988)))

(declare-fun res!2464405 () Bool)

(assert (=> b!5854481 (=> (not res!2464405) (not e!3589988))))

(declare-fun lt!2304768 () Bool)

(assert (=> b!5854481 (= res!2464405 (not lt!2304768))))

(declare-fun b!5854482 () Bool)

(declare-fun e!3589993 () Bool)

(assert (=> b!5854482 (= e!3589993 e!3589989)))

(declare-fun c!1038065 () Bool)

(assert (=> b!5854482 (= c!1038065 ((_ is EmptyLang!15921) (regOne!32355 r!7292)))))

(declare-fun b!5854483 () Bool)

(assert (=> b!5854483 (= e!3589993 (= lt!2304768 call!458460))))

(declare-fun b!5854484 () Bool)

(declare-fun e!3589991 () Bool)

(assert (=> b!5854484 (= e!3589991 (nullable!5921 (regOne!32355 r!7292)))))

(declare-fun b!5854485 () Bool)

(assert (=> b!5854485 (= e!3589994 (not (= (head!12395 s!2326) (c!1037845 (regOne!32355 r!7292)))))))

(declare-fun b!5854486 () Bool)

(assert (=> b!5854486 (= e!3589991 (matchR!8104 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)) (tail!11480 s!2326)))))

(declare-fun b!5854487 () Bool)

(declare-fun res!2464404 () Bool)

(assert (=> b!5854487 (=> (not res!2464404) (not e!3589992))))

(assert (=> b!5854487 (= res!2464404 (not call!458460))))

(declare-fun b!5854488 () Bool)

(declare-fun res!2464402 () Bool)

(assert (=> b!5854488 (=> res!2464402 e!3589990)))

(assert (=> b!5854488 (= res!2464402 e!3589992)))

(declare-fun res!2464399 () Bool)

(assert (=> b!5854488 (=> (not res!2464399) (not e!3589992))))

(assert (=> b!5854488 (= res!2464399 lt!2304768)))

(declare-fun d!1838588 () Bool)

(assert (=> d!1838588 e!3589993))

(declare-fun c!1038067 () Bool)

(assert (=> d!1838588 (= c!1038067 ((_ is EmptyExpr!15921) (regOne!32355 r!7292)))))

(assert (=> d!1838588 (= lt!2304768 e!3589991)))

(declare-fun c!1038066 () Bool)

(assert (=> d!1838588 (= c!1038066 (isEmpty!35798 s!2326))))

(assert (=> d!1838588 (validRegex!7657 (regOne!32355 r!7292))))

(assert (=> d!1838588 (= (matchR!8104 (regOne!32355 r!7292) s!2326) lt!2304768)))

(declare-fun b!5854489 () Bool)

(declare-fun res!2464406 () Bool)

(assert (=> b!5854489 (=> (not res!2464406) (not e!3589992))))

(assert (=> b!5854489 (= res!2464406 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5854490 () Bool)

(assert (=> b!5854490 (= e!3589989 (not lt!2304768))))

(assert (= (and d!1838588 c!1038066) b!5854484))

(assert (= (and d!1838588 (not c!1038066)) b!5854486))

(assert (= (and d!1838588 c!1038067) b!5854483))

(assert (= (and d!1838588 (not c!1038067)) b!5854482))

(assert (= (and b!5854482 c!1038065) b!5854490))

(assert (= (and b!5854482 (not c!1038065)) b!5854479))

(assert (= (and b!5854479 (not res!2464403)) b!5854488))

(assert (= (and b!5854488 res!2464399) b!5854487))

(assert (= (and b!5854487 res!2464404) b!5854489))

(assert (= (and b!5854489 res!2464406) b!5854478))

(assert (= (and b!5854488 (not res!2464402)) b!5854481))

(assert (= (and b!5854481 res!2464405) b!5854477))

(assert (= (and b!5854477 (not res!2464400)) b!5854480))

(assert (= (and b!5854480 (not res!2464401)) b!5854485))

(assert (= (or b!5854483 b!5854477 b!5854487) bm!458455))

(assert (=> d!1838588 m!6773046))

(assert (=> d!1838588 m!6773280))

(declare-fun m!6773298 () Bool)

(assert (=> b!5854484 m!6773298))

(assert (=> bm!458455 m!6773046))

(assert (=> b!5854489 m!6773056))

(assert (=> b!5854489 m!6773056))

(assert (=> b!5854489 m!6773060))

(assert (=> b!5854486 m!6773062))

(assert (=> b!5854486 m!6773062))

(declare-fun m!6773300 () Bool)

(assert (=> b!5854486 m!6773300))

(assert (=> b!5854486 m!6773056))

(assert (=> b!5854486 m!6773300))

(assert (=> b!5854486 m!6773056))

(declare-fun m!6773302 () Bool)

(assert (=> b!5854486 m!6773302))

(assert (=> b!5854485 m!6773062))

(assert (=> b!5854480 m!6773056))

(assert (=> b!5854480 m!6773056))

(assert (=> b!5854480 m!6773060))

(assert (=> b!5854478 m!6773062))

(assert (=> b!5853758 d!1838588))

(declare-fun e!3589997 () Bool)

(assert (=> b!5853760 (= tp!1619423 e!3589997)))

(declare-fun b!5854502 () Bool)

(declare-fun tp!1619501 () Bool)

(declare-fun tp!1619504 () Bool)

(assert (=> b!5854502 (= e!3589997 (and tp!1619501 tp!1619504))))

(declare-fun b!5854504 () Bool)

(declare-fun tp!1619505 () Bool)

(declare-fun tp!1619503 () Bool)

(assert (=> b!5854504 (= e!3589997 (and tp!1619505 tp!1619503))))

(declare-fun b!5854501 () Bool)

(assert (=> b!5854501 (= e!3589997 tp_is_empty!41095)))

(declare-fun b!5854503 () Bool)

(declare-fun tp!1619502 () Bool)

(assert (=> b!5854503 (= e!3589997 tp!1619502)))

(assert (= (and b!5853760 ((_ is ElementMatch!15921) (regOne!32354 r!7292))) b!5854501))

(assert (= (and b!5853760 ((_ is Concat!24766) (regOne!32354 r!7292))) b!5854502))

(assert (= (and b!5853760 ((_ is Star!15921) (regOne!32354 r!7292))) b!5854503))

(assert (= (and b!5853760 ((_ is Union!15921) (regOne!32354 r!7292))) b!5854504))

(declare-fun e!3589998 () Bool)

(assert (=> b!5853760 (= tp!1619425 e!3589998)))

(declare-fun b!5854506 () Bool)

(declare-fun tp!1619506 () Bool)

(declare-fun tp!1619509 () Bool)

(assert (=> b!5854506 (= e!3589998 (and tp!1619506 tp!1619509))))

(declare-fun b!5854508 () Bool)

(declare-fun tp!1619510 () Bool)

(declare-fun tp!1619508 () Bool)

(assert (=> b!5854508 (= e!3589998 (and tp!1619510 tp!1619508))))

(declare-fun b!5854505 () Bool)

(assert (=> b!5854505 (= e!3589998 tp_is_empty!41095)))

(declare-fun b!5854507 () Bool)

(declare-fun tp!1619507 () Bool)

(assert (=> b!5854507 (= e!3589998 tp!1619507)))

(assert (= (and b!5853760 ((_ is ElementMatch!15921) (regTwo!32354 r!7292))) b!5854505))

(assert (= (and b!5853760 ((_ is Concat!24766) (regTwo!32354 r!7292))) b!5854506))

(assert (= (and b!5853760 ((_ is Star!15921) (regTwo!32354 r!7292))) b!5854507))

(assert (= (and b!5853760 ((_ is Union!15921) (regTwo!32354 r!7292))) b!5854508))

(declare-fun e!3589999 () Bool)

(assert (=> b!5853756 (= tp!1619426 e!3589999)))

(declare-fun b!5854510 () Bool)

(declare-fun tp!1619511 () Bool)

(declare-fun tp!1619514 () Bool)

(assert (=> b!5854510 (= e!3589999 (and tp!1619511 tp!1619514))))

(declare-fun b!5854512 () Bool)

(declare-fun tp!1619515 () Bool)

(declare-fun tp!1619513 () Bool)

(assert (=> b!5854512 (= e!3589999 (and tp!1619515 tp!1619513))))

(declare-fun b!5854509 () Bool)

(assert (=> b!5854509 (= e!3589999 tp_is_empty!41095)))

(declare-fun b!5854511 () Bool)

(declare-fun tp!1619512 () Bool)

(assert (=> b!5854511 (= e!3589999 tp!1619512)))

(assert (= (and b!5853756 ((_ is ElementMatch!15921) (reg!16250 r!7292))) b!5854509))

(assert (= (and b!5853756 ((_ is Concat!24766) (reg!16250 r!7292))) b!5854510))

(assert (= (and b!5853756 ((_ is Star!15921) (reg!16250 r!7292))) b!5854511))

(assert (= (and b!5853756 ((_ is Union!15921) (reg!16250 r!7292))) b!5854512))

(declare-fun condSetEmpty!39676 () Bool)

(assert (=> setNonEmpty!39670 (= condSetEmpty!39676 (= setRest!39670 ((as const (Array Context!10610 Bool)) false)))))

(declare-fun setRes!39676 () Bool)

(assert (=> setNonEmpty!39670 (= tp!1619431 setRes!39676)))

(declare-fun setIsEmpty!39676 () Bool)

(assert (=> setIsEmpty!39676 setRes!39676))

(declare-fun tp!1619521 () Bool)

(declare-fun e!3590002 () Bool)

(declare-fun setNonEmpty!39676 () Bool)

(declare-fun setElem!39676 () Context!10610)

(assert (=> setNonEmpty!39676 (= setRes!39676 (and tp!1619521 (inv!83049 setElem!39676) e!3590002))))

(declare-fun setRest!39676 () (InoxSet Context!10610))

(assert (=> setNonEmpty!39676 (= setRest!39670 ((_ map or) (store ((as const (Array Context!10610 Bool)) false) setElem!39676 true) setRest!39676))))

(declare-fun b!5854517 () Bool)

(declare-fun tp!1619520 () Bool)

(assert (=> b!5854517 (= e!3590002 tp!1619520)))

(assert (= (and setNonEmpty!39670 condSetEmpty!39676) setIsEmpty!39676))

(assert (= (and setNonEmpty!39670 (not condSetEmpty!39676)) setNonEmpty!39676))

(assert (= setNonEmpty!39676 b!5854517))

(declare-fun m!6773304 () Bool)

(assert (=> setNonEmpty!39676 m!6773304))

(declare-fun b!5854525 () Bool)

(declare-fun e!3590008 () Bool)

(declare-fun tp!1619526 () Bool)

(assert (=> b!5854525 (= e!3590008 tp!1619526)))

(declare-fun e!3590007 () Bool)

(declare-fun tp!1619527 () Bool)

(declare-fun b!5854524 () Bool)

(assert (=> b!5854524 (= e!3590007 (and (inv!83049 (h!70387 (t!377428 zl!343))) e!3590008 tp!1619527))))

(assert (=> b!5853747 (= tp!1619432 e!3590007)))

(assert (= b!5854524 b!5854525))

(assert (= (and b!5853747 ((_ is Cons!63939) (t!377428 zl!343))) b!5854524))

(declare-fun m!6773306 () Bool)

(assert (=> b!5854524 m!6773306))

(declare-fun e!3590009 () Bool)

(assert (=> b!5853762 (= tp!1619427 e!3590009)))

(declare-fun b!5854527 () Bool)

(declare-fun tp!1619528 () Bool)

(declare-fun tp!1619531 () Bool)

(assert (=> b!5854527 (= e!3590009 (and tp!1619528 tp!1619531))))

(declare-fun b!5854529 () Bool)

(declare-fun tp!1619532 () Bool)

(declare-fun tp!1619530 () Bool)

(assert (=> b!5854529 (= e!3590009 (and tp!1619532 tp!1619530))))

(declare-fun b!5854526 () Bool)

(assert (=> b!5854526 (= e!3590009 tp_is_empty!41095)))

(declare-fun b!5854528 () Bool)

(declare-fun tp!1619529 () Bool)

(assert (=> b!5854528 (= e!3590009 tp!1619529)))

(assert (= (and b!5853762 ((_ is ElementMatch!15921) (regOne!32355 r!7292))) b!5854526))

(assert (= (and b!5853762 ((_ is Concat!24766) (regOne!32355 r!7292))) b!5854527))

(assert (= (and b!5853762 ((_ is Star!15921) (regOne!32355 r!7292))) b!5854528))

(assert (= (and b!5853762 ((_ is Union!15921) (regOne!32355 r!7292))) b!5854529))

(declare-fun e!3590010 () Bool)

(assert (=> b!5853762 (= tp!1619430 e!3590010)))

(declare-fun b!5854531 () Bool)

(declare-fun tp!1619533 () Bool)

(declare-fun tp!1619536 () Bool)

(assert (=> b!5854531 (= e!3590010 (and tp!1619533 tp!1619536))))

(declare-fun b!5854533 () Bool)

(declare-fun tp!1619537 () Bool)

(declare-fun tp!1619535 () Bool)

(assert (=> b!5854533 (= e!3590010 (and tp!1619537 tp!1619535))))

(declare-fun b!5854530 () Bool)

(assert (=> b!5854530 (= e!3590010 tp_is_empty!41095)))

(declare-fun b!5854532 () Bool)

(declare-fun tp!1619534 () Bool)

(assert (=> b!5854532 (= e!3590010 tp!1619534)))

(assert (= (and b!5853762 ((_ is ElementMatch!15921) (regTwo!32355 r!7292))) b!5854530))

(assert (= (and b!5853762 ((_ is Concat!24766) (regTwo!32355 r!7292))) b!5854531))

(assert (= (and b!5853762 ((_ is Star!15921) (regTwo!32355 r!7292))) b!5854532))

(assert (= (and b!5853762 ((_ is Union!15921) (regTwo!32355 r!7292))) b!5854533))

(declare-fun b!5854538 () Bool)

(declare-fun e!3590013 () Bool)

(declare-fun tp!1619542 () Bool)

(declare-fun tp!1619543 () Bool)

(assert (=> b!5854538 (= e!3590013 (and tp!1619542 tp!1619543))))

(assert (=> b!5853749 (= tp!1619428 e!3590013)))

(assert (= (and b!5853749 ((_ is Cons!63938) (exprs!5805 (h!70387 zl!343)))) b!5854538))

(declare-fun b!5854539 () Bool)

(declare-fun e!3590014 () Bool)

(declare-fun tp!1619544 () Bool)

(declare-fun tp!1619545 () Bool)

(assert (=> b!5854539 (= e!3590014 (and tp!1619544 tp!1619545))))

(assert (=> b!5853764 (= tp!1619424 e!3590014)))

(assert (= (and b!5853764 ((_ is Cons!63938) (exprs!5805 setElem!39670))) b!5854539))

(declare-fun b!5854544 () Bool)

(declare-fun e!3590017 () Bool)

(declare-fun tp!1619548 () Bool)

(assert (=> b!5854544 (= e!3590017 (and tp_is_empty!41095 tp!1619548))))

(assert (=> b!5853748 (= tp!1619429 e!3590017)))

(assert (= (and b!5853748 ((_ is Cons!63940) (t!377429 s!2326))) b!5854544))

(declare-fun b_lambda!220355 () Bool)

(assert (= b_lambda!220351 (or b!5853752 b_lambda!220355)))

(declare-fun bs!1379389 () Bool)

(declare-fun d!1838590 () Bool)

(assert (= bs!1379389 (and d!1838590 b!5853752)))

(assert (=> bs!1379389 (= (dynLambda!24995 lambda!320064 (h!70387 zl!343)) (derivationStepZipperUp!1113 (h!70387 zl!343) (h!70388 s!2326)))))

(assert (=> bs!1379389 m!6772838))

(assert (=> d!1838538 d!1838590))

(check-sat (not b!5854134) (not bm!458380) (not bm!458443) (not d!1838546) (not d!1838580) (not b!5854128) (not setNonEmpty!39676) (not b!5854443) (not b!5854410) (not b!5854504) (not d!1838554) (not b!5854270) (not bm!458455) (not bm!458381) (not b!5854411) (not d!1838588) (not b!5854051) (not bm!458435) (not bm!458418) (not b!5854215) (not b!5854364) (not b!5854132) (not b!5854407) (not b!5854539) (not b!5854370) (not b!5854485) (not bm!458431) (not b!5854489) (not d!1838516) (not bm!458442) (not b!5854396) (not b!5854368) (not b!5854517) (not b!5854049) (not d!1838540) (not b!5854298) (not b!5854506) (not b!5854484) (not b!5854417) (not b!5854464) (not b!5854524) (not b!5854197) (not b!5854362) (not b!5854332) (not b!5854418) (not d!1838582) (not b!5854460) (not d!1838538) (not b!5854503) (not bm!458438) (not d!1838568) (not d!1838584) (not bm!458451) (not b!5854538) (not b!5854416) (not bm!458453) (not b!5854525) (not b!5854363) (not b!5854328) (not bm!458403) (not b!5854340) (not d!1838530) (not b!5854459) (not b!5854532) (not d!1838532) (not bm!458450) (not b!5854371) (not b!5854470) (not d!1838550) (not b!5854510) (not b!5854528) (not bm!458409) (not b!5854533) (not b!5854199) (not b!5854544) (not b!5854468) (not b!5854331) (not bs!1379389) (not bm!458417) (not b!5854367) (not b!5854502) (not b!5854531) (not bm!458444) (not d!1838512) (not b!5854529) (not b!5854455) (not d!1838566) (not d!1838572) (not b!5854330) (not b!5854126) (not bm!458436) (not b!5854333) (not d!1838548) (not d!1838560) (not b!5854432) (not d!1838564) (not d!1838552) (not bm!458384) (not b!5854453) (not b!5854327) (not b!5854507) (not b_lambda!220355) (not bm!458454) (not b!5854409) (not b!5854415) (not b!5854414) (not bm!458437) (not b!5854512) (not b!5854527) (not b!5854478) (not b!5854329) (not d!1838520) (not d!1838570) (not b!5854304) (not b!5854508) (not bm!458452) (not b!5854421) (not b!5854445) (not b!5854511) (not bm!458448) tp_is_empty!41095 (not b!5854486) (not b!5854137) (not bm!458449) (not b!5854461) (not b!5854480) (not b!5854213) (not b!5854133) (not b!5854305))
(check-sat)
(get-model)

(assert (=> b!5854049 d!1838586))

(declare-fun d!1838804 () Bool)

(assert (=> d!1838804 (= (isEmpty!35798 (t!377429 s!2326)) ((_ is Nil!63940) (t!377429 s!2326)))))

(assert (=> d!1838546 d!1838804))

(declare-fun b!5855049 () Bool)

(declare-fun e!3590300 () (InoxSet Context!10610))

(declare-fun call!458573 () (InoxSet Context!10610))

(declare-fun call!458571 () (InoxSet Context!10610))

(assert (=> b!5855049 (= e!3590300 ((_ map or) call!458573 call!458571))))

(declare-fun b!5855050 () Bool)

(declare-fun e!3590302 () (InoxSet Context!10610))

(declare-fun call!458570 () (InoxSet Context!10610))

(assert (=> b!5855050 (= e!3590302 call!458570)))

(declare-fun e!3590297 () Bool)

(declare-fun b!5855051 () Bool)

(assert (=> b!5855051 (= e!3590297 (nullable!5921 (regOne!32354 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))))))))

(declare-fun c!1038203 () Bool)

(declare-fun d!1838806 () Bool)

(assert (=> d!1838806 (= c!1038203 (and ((_ is ElementMatch!15921) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (= (c!1037845 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (h!70388 s!2326))))))

(declare-fun e!3590299 () (InoxSet Context!10610))

(assert (=> d!1838806 (= (derivationStepZipperDown!1187 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))) (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445)) (h!70388 s!2326)) e!3590299)))

(declare-fun b!5855052 () Bool)

(declare-fun e!3590298 () (InoxSet Context!10610))

(assert (=> b!5855052 (= e!3590299 e!3590298)))

(declare-fun c!1038202 () Bool)

(assert (=> b!5855052 (= c!1038202 ((_ is Union!15921) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))))))

(declare-fun b!5855053 () Bool)

(declare-fun e!3590301 () (InoxSet Context!10610))

(assert (=> b!5855053 (= e!3590300 e!3590301)))

(declare-fun c!1038206 () Bool)

(assert (=> b!5855053 (= c!1038206 ((_ is Concat!24766) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))))))

(declare-fun b!5855054 () Bool)

(declare-fun c!1038204 () Bool)

(assert (=> b!5855054 (= c!1038204 ((_ is Star!15921) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))))))

(assert (=> b!5855054 (= e!3590301 e!3590302)))

(declare-fun call!458572 () List!64062)

(declare-fun c!1038205 () Bool)

(declare-fun call!458575 () (InoxSet Context!10610))

(declare-fun bm!458565 () Bool)

(assert (=> bm!458565 (= call!458575 (derivationStepZipperDown!1187 (ite c!1038202 (regTwo!32355 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (ite c!1038205 (regTwo!32354 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (ite c!1038206 (regOne!32354 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (reg!16250 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))))))) (ite (or c!1038202 c!1038205) (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445)) (Context!10611 call!458572)) (h!70388 s!2326)))))

(declare-fun b!5855055 () Bool)

(assert (=> b!5855055 (= e!3590302 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458566 () Bool)

(declare-fun call!458574 () List!64062)

(assert (=> bm!458566 (= call!458572 call!458574)))

(declare-fun bm!458567 () Bool)

(assert (=> bm!458567 (= call!458571 call!458575)))

(declare-fun b!5855056 () Bool)

(assert (=> b!5855056 (= c!1038205 e!3590297)))

(declare-fun res!2464528 () Bool)

(assert (=> b!5855056 (=> (not res!2464528) (not e!3590297))))

(assert (=> b!5855056 (= res!2464528 ((_ is Concat!24766) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))))))

(assert (=> b!5855056 (= e!3590298 e!3590300)))

(declare-fun b!5855057 () Bool)

(assert (=> b!5855057 (= e!3590298 ((_ map or) call!458573 call!458575))))

(declare-fun bm!458568 () Bool)

(assert (=> bm!458568 (= call!458570 call!458571)))

(declare-fun b!5855058 () Bool)

(assert (=> b!5855058 (= e!3590299 (store ((as const (Array Context!10610 Bool)) false) (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445)) true))))

(declare-fun bm!458569 () Bool)

(assert (=> bm!458569 (= call!458573 (derivationStepZipperDown!1187 (ite c!1038202 (regOne!32355 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (regOne!32354 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))))) (ite c!1038202 (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445)) (Context!10611 call!458574)) (h!70388 s!2326)))))

(declare-fun bm!458570 () Bool)

(assert (=> bm!458570 (= call!458574 ($colon$colon!1826 (exprs!5805 (ite (or c!1038044 c!1038047) lt!2304692 (Context!10611 call!458445))) (ite (or c!1038205 c!1038206) (regTwo!32354 (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292)))))) (ite c!1038044 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038047 (regTwo!32354 (regTwo!32355 r!7292)) (ite c!1038048 (regOne!32354 (regTwo!32355 r!7292)) (reg!16250 (regTwo!32355 r!7292))))))))))

(declare-fun b!5855059 () Bool)

(assert (=> b!5855059 (= e!3590301 call!458570)))

(assert (= (and d!1838806 c!1038203) b!5855058))

(assert (= (and d!1838806 (not c!1038203)) b!5855052))

(assert (= (and b!5855052 c!1038202) b!5855057))

(assert (= (and b!5855052 (not c!1038202)) b!5855056))

(assert (= (and b!5855056 res!2464528) b!5855051))

(assert (= (and b!5855056 c!1038205) b!5855049))

(assert (= (and b!5855056 (not c!1038205)) b!5855053))

(assert (= (and b!5855053 c!1038206) b!5855059))

(assert (= (and b!5855053 (not c!1038206)) b!5855054))

(assert (= (and b!5855054 c!1038204) b!5855050))

(assert (= (and b!5855054 (not c!1038204)) b!5855055))

(assert (= (or b!5855059 b!5855050) bm!458566))

(assert (= (or b!5855059 b!5855050) bm!458568))

(assert (= (or b!5855049 bm!458566) bm!458570))

(assert (= (or b!5855049 bm!458568) bm!458567))

(assert (= (or b!5855057 bm!458567) bm!458565))

(assert (= (or b!5855057 b!5855049) bm!458569))

(declare-fun m!6773710 () Bool)

(assert (=> b!5855051 m!6773710))

(declare-fun m!6773712 () Bool)

(assert (=> bm!458569 m!6773712))

(declare-fun m!6773714 () Bool)

(assert (=> bm!458570 m!6773714))

(declare-fun m!6773716 () Bool)

(assert (=> bm!458565 m!6773716))

(declare-fun m!6773718 () Bool)

(assert (=> b!5855058 m!6773718))

(assert (=> bm!458438 d!1838806))

(declare-fun d!1838808 () Bool)

(assert (=> d!1838808 (= (isEmpty!35798 (tail!11480 s!2326)) ((_ is Nil!63940) (tail!11480 s!2326)))))

(assert (=> b!5854464 d!1838808))

(declare-fun d!1838810 () Bool)

(assert (=> d!1838810 (= (tail!11480 s!2326) (t!377429 s!2326))))

(assert (=> b!5854464 d!1838810))

(declare-fun d!1838812 () Bool)

(assert (=> d!1838812 (= (head!12395 s!2326) (h!70388 s!2326))))

(assert (=> b!5854460 d!1838812))

(declare-fun d!1838814 () Bool)

(assert (=> d!1838814 (= (isEmpty!35799 (tail!11481 (unfocusZipperList!1342 zl!343))) ((_ is Nil!63938) (tail!11481 (unfocusZipperList!1342 zl!343))))))

(assert (=> b!5854332 d!1838814))

(declare-fun d!1838816 () Bool)

(assert (=> d!1838816 (= (tail!11481 (unfocusZipperList!1342 zl!343)) (t!377427 (unfocusZipperList!1342 zl!343)))))

(assert (=> b!5854332 d!1838816))

(declare-fun d!1838818 () Bool)

(assert (=> d!1838818 (= (isEmpty!35798 s!2326) ((_ is Nil!63940) s!2326))))

(assert (=> bm!458450 d!1838818))

(declare-fun d!1838820 () Bool)

(assert (=> d!1838820 (= (head!12396 (unfocusZipperList!1342 zl!343)) (h!70386 (unfocusZipperList!1342 zl!343)))))

(assert (=> b!5854328 d!1838820))

(declare-fun bm!458571 () Bool)

(declare-fun call!458576 () Bool)

(assert (=> bm!458571 (= call!458576 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5855060 () Bool)

(declare-fun e!3590303 () Bool)

(declare-fun e!3590309 () Bool)

(assert (=> b!5855060 (= e!3590303 e!3590309)))

(declare-fun res!2464530 () Bool)

(assert (=> b!5855060 (=> res!2464530 e!3590309)))

(assert (=> b!5855060 (= res!2464530 call!458576)))

(declare-fun b!5855061 () Bool)

(declare-fun e!3590307 () Bool)

(assert (=> b!5855061 (= e!3590307 (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 r!7292 (head!12395 s!2326)))))))

(declare-fun b!5855062 () Bool)

(declare-fun res!2464533 () Bool)

(declare-fun e!3590305 () Bool)

(assert (=> b!5855062 (=> res!2464533 e!3590305)))

(assert (=> b!5855062 (= res!2464533 (not ((_ is ElementMatch!15921) (derivativeStep!4659 r!7292 (head!12395 s!2326)))))))

(declare-fun e!3590304 () Bool)

(assert (=> b!5855062 (= e!3590304 e!3590305)))

(declare-fun b!5855063 () Bool)

(declare-fun res!2464531 () Bool)

(assert (=> b!5855063 (=> res!2464531 e!3590309)))

(assert (=> b!5855063 (= res!2464531 (not (isEmpty!35798 (tail!11480 (tail!11480 s!2326)))))))

(declare-fun b!5855064 () Bool)

(assert (=> b!5855064 (= e!3590305 e!3590303)))

(declare-fun res!2464535 () Bool)

(assert (=> b!5855064 (=> (not res!2464535) (not e!3590303))))

(declare-fun lt!2304780 () Bool)

(assert (=> b!5855064 (= res!2464535 (not lt!2304780))))

(declare-fun b!5855065 () Bool)

(declare-fun e!3590308 () Bool)

(assert (=> b!5855065 (= e!3590308 e!3590304)))

(declare-fun c!1038207 () Bool)

(assert (=> b!5855065 (= c!1038207 ((_ is EmptyLang!15921) (derivativeStep!4659 r!7292 (head!12395 s!2326))))))

(declare-fun b!5855066 () Bool)

(assert (=> b!5855066 (= e!3590308 (= lt!2304780 call!458576))))

(declare-fun b!5855067 () Bool)

(declare-fun e!3590306 () Bool)

(assert (=> b!5855067 (= e!3590306 (nullable!5921 (derivativeStep!4659 r!7292 (head!12395 s!2326))))))

(declare-fun b!5855068 () Bool)

(assert (=> b!5855068 (= e!3590309 (not (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 r!7292 (head!12395 s!2326))))))))

(declare-fun b!5855069 () Bool)

(assert (=> b!5855069 (= e!3590306 (matchR!8104 (derivativeStep!4659 (derivativeStep!4659 r!7292 (head!12395 s!2326)) (head!12395 (tail!11480 s!2326))) (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855070 () Bool)

(declare-fun res!2464534 () Bool)

(assert (=> b!5855070 (=> (not res!2464534) (not e!3590307))))

(assert (=> b!5855070 (= res!2464534 (not call!458576))))

(declare-fun b!5855071 () Bool)

(declare-fun res!2464532 () Bool)

(assert (=> b!5855071 (=> res!2464532 e!3590305)))

(assert (=> b!5855071 (= res!2464532 e!3590307)))

(declare-fun res!2464529 () Bool)

(assert (=> b!5855071 (=> (not res!2464529) (not e!3590307))))

(assert (=> b!5855071 (= res!2464529 lt!2304780)))

(declare-fun d!1838822 () Bool)

(assert (=> d!1838822 e!3590308))

(declare-fun c!1038209 () Bool)

(assert (=> d!1838822 (= c!1038209 ((_ is EmptyExpr!15921) (derivativeStep!4659 r!7292 (head!12395 s!2326))))))

(assert (=> d!1838822 (= lt!2304780 e!3590306)))

(declare-fun c!1038208 () Bool)

(assert (=> d!1838822 (= c!1038208 (isEmpty!35798 (tail!11480 s!2326)))))

(assert (=> d!1838822 (validRegex!7657 (derivativeStep!4659 r!7292 (head!12395 s!2326)))))

(assert (=> d!1838822 (= (matchR!8104 (derivativeStep!4659 r!7292 (head!12395 s!2326)) (tail!11480 s!2326)) lt!2304780)))

(declare-fun b!5855072 () Bool)

(declare-fun res!2464536 () Bool)

(assert (=> b!5855072 (=> (not res!2464536) (not e!3590307))))

(assert (=> b!5855072 (= res!2464536 (isEmpty!35798 (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855073 () Bool)

(assert (=> b!5855073 (= e!3590304 (not lt!2304780))))

(assert (= (and d!1838822 c!1038208) b!5855067))

(assert (= (and d!1838822 (not c!1038208)) b!5855069))

(assert (= (and d!1838822 c!1038209) b!5855066))

(assert (= (and d!1838822 (not c!1038209)) b!5855065))

(assert (= (and b!5855065 c!1038207) b!5855073))

(assert (= (and b!5855065 (not c!1038207)) b!5855062))

(assert (= (and b!5855062 (not res!2464533)) b!5855071))

(assert (= (and b!5855071 res!2464529) b!5855070))

(assert (= (and b!5855070 res!2464534) b!5855072))

(assert (= (and b!5855072 res!2464536) b!5855061))

(assert (= (and b!5855071 (not res!2464532)) b!5855064))

(assert (= (and b!5855064 res!2464535) b!5855060))

(assert (= (and b!5855060 (not res!2464530)) b!5855063))

(assert (= (and b!5855063 (not res!2464531)) b!5855068))

(assert (= (or b!5855066 b!5855060 b!5855070) bm!458571))

(assert (=> d!1838822 m!6773056))

(assert (=> d!1838822 m!6773060))

(assert (=> d!1838822 m!6773066))

(declare-fun m!6773720 () Bool)

(assert (=> d!1838822 m!6773720))

(assert (=> b!5855067 m!6773066))

(declare-fun m!6773722 () Bool)

(assert (=> b!5855067 m!6773722))

(assert (=> bm!458571 m!6773056))

(assert (=> bm!458571 m!6773060))

(assert (=> b!5855072 m!6773056))

(declare-fun m!6773724 () Bool)

(assert (=> b!5855072 m!6773724))

(assert (=> b!5855072 m!6773724))

(declare-fun m!6773726 () Bool)

(assert (=> b!5855072 m!6773726))

(assert (=> b!5855069 m!6773056))

(declare-fun m!6773728 () Bool)

(assert (=> b!5855069 m!6773728))

(assert (=> b!5855069 m!6773066))

(assert (=> b!5855069 m!6773728))

(declare-fun m!6773730 () Bool)

(assert (=> b!5855069 m!6773730))

(assert (=> b!5855069 m!6773056))

(assert (=> b!5855069 m!6773724))

(assert (=> b!5855069 m!6773730))

(assert (=> b!5855069 m!6773724))

(declare-fun m!6773732 () Bool)

(assert (=> b!5855069 m!6773732))

(assert (=> b!5855068 m!6773056))

(assert (=> b!5855068 m!6773728))

(assert (=> b!5855063 m!6773056))

(assert (=> b!5855063 m!6773724))

(assert (=> b!5855063 m!6773724))

(assert (=> b!5855063 m!6773726))

(assert (=> b!5855061 m!6773056))

(assert (=> b!5855061 m!6773728))

(assert (=> b!5854134 d!1838822))

(declare-fun b!5855094 () Bool)

(declare-fun c!1038224 () Bool)

(assert (=> b!5855094 (= c!1038224 ((_ is Union!15921) r!7292))))

(declare-fun e!3590322 () Regex!15921)

(declare-fun e!3590321 () Regex!15921)

(assert (=> b!5855094 (= e!3590322 e!3590321)))

(declare-fun b!5855095 () Bool)

(declare-fun call!458588 () Regex!15921)

(declare-fun call!458585 () Regex!15921)

(assert (=> b!5855095 (= e!3590321 (Union!15921 call!458588 call!458585))))

(declare-fun bm!458580 () Bool)

(declare-fun c!1038223 () Bool)

(assert (=> bm!458580 (= call!458588 (derivativeStep!4659 (ite c!1038224 (regOne!32355 r!7292) (ite c!1038223 (reg!16250 r!7292) (regOne!32354 r!7292))) (head!12395 s!2326)))))

(declare-fun bm!458581 () Bool)

(declare-fun call!458587 () Regex!15921)

(assert (=> bm!458581 (= call!458587 call!458585)))

(declare-fun d!1838824 () Bool)

(declare-fun lt!2304783 () Regex!15921)

(assert (=> d!1838824 (validRegex!7657 lt!2304783)))

(declare-fun e!3590320 () Regex!15921)

(assert (=> d!1838824 (= lt!2304783 e!3590320)))

(declare-fun c!1038220 () Bool)

(assert (=> d!1838824 (= c!1038220 (or ((_ is EmptyExpr!15921) r!7292) ((_ is EmptyLang!15921) r!7292)))))

(assert (=> d!1838824 (validRegex!7657 r!7292)))

(assert (=> d!1838824 (= (derivativeStep!4659 r!7292 (head!12395 s!2326)) lt!2304783)))

(declare-fun b!5855096 () Bool)

(assert (=> b!5855096 (= e!3590322 (ite (= (head!12395 s!2326) (c!1037845 r!7292)) EmptyExpr!15921 EmptyLang!15921))))

(declare-fun b!5855097 () Bool)

(assert (=> b!5855097 (= e!3590320 EmptyLang!15921)))

(declare-fun c!1038222 () Bool)

(declare-fun bm!458582 () Bool)

(assert (=> bm!458582 (= call!458585 (derivativeStep!4659 (ite c!1038224 (regTwo!32355 r!7292) (ite c!1038222 (regTwo!32354 r!7292) (regOne!32354 r!7292))) (head!12395 s!2326)))))

(declare-fun b!5855098 () Bool)

(assert (=> b!5855098 (= e!3590320 e!3590322)))

(declare-fun c!1038221 () Bool)

(assert (=> b!5855098 (= c!1038221 ((_ is ElementMatch!15921) r!7292))))

(declare-fun b!5855099 () Bool)

(declare-fun e!3590323 () Regex!15921)

(assert (=> b!5855099 (= e!3590323 (Union!15921 (Concat!24766 call!458587 (regTwo!32354 r!7292)) EmptyLang!15921))))

(declare-fun b!5855100 () Bool)

(declare-fun e!3590324 () Regex!15921)

(declare-fun call!458586 () Regex!15921)

(assert (=> b!5855100 (= e!3590324 (Concat!24766 call!458586 r!7292))))

(declare-fun b!5855101 () Bool)

(assert (=> b!5855101 (= e!3590323 (Union!15921 (Concat!24766 call!458586 (regTwo!32354 r!7292)) call!458587))))

(declare-fun bm!458583 () Bool)

(assert (=> bm!458583 (= call!458586 call!458588)))

(declare-fun b!5855102 () Bool)

(assert (=> b!5855102 (= e!3590321 e!3590324)))

(assert (=> b!5855102 (= c!1038223 ((_ is Star!15921) r!7292))))

(declare-fun b!5855103 () Bool)

(assert (=> b!5855103 (= c!1038222 (nullable!5921 (regOne!32354 r!7292)))))

(assert (=> b!5855103 (= e!3590324 e!3590323)))

(assert (= (and d!1838824 c!1038220) b!5855097))

(assert (= (and d!1838824 (not c!1038220)) b!5855098))

(assert (= (and b!5855098 c!1038221) b!5855096))

(assert (= (and b!5855098 (not c!1038221)) b!5855094))

(assert (= (and b!5855094 c!1038224) b!5855095))

(assert (= (and b!5855094 (not c!1038224)) b!5855102))

(assert (= (and b!5855102 c!1038223) b!5855100))

(assert (= (and b!5855102 (not c!1038223)) b!5855103))

(assert (= (and b!5855103 c!1038222) b!5855101))

(assert (= (and b!5855103 (not c!1038222)) b!5855099))

(assert (= (or b!5855101 b!5855099) bm!458581))

(assert (= (or b!5855100 b!5855101) bm!458583))

(assert (= (or b!5855095 bm!458581) bm!458582))

(assert (= (or b!5855095 bm!458583) bm!458580))

(assert (=> bm!458580 m!6773062))

(declare-fun m!6773734 () Bool)

(assert (=> bm!458580 m!6773734))

(declare-fun m!6773736 () Bool)

(assert (=> d!1838824 m!6773736))

(assert (=> d!1838824 m!6772852))

(assert (=> bm!458582 m!6773062))

(declare-fun m!6773738 () Bool)

(assert (=> bm!458582 m!6773738))

(assert (=> b!5855103 m!6773214))

(assert (=> b!5854134 d!1838824))

(assert (=> b!5854134 d!1838812))

(assert (=> b!5854134 d!1838810))

(declare-fun d!1838826 () Bool)

(declare-fun res!2464541 () Bool)

(declare-fun e!3590329 () Bool)

(assert (=> d!1838826 (=> res!2464541 e!3590329)))

(assert (=> d!1838826 (= res!2464541 ((_ is Nil!63939) lt!2304749))))

(assert (=> d!1838826 (= (noDuplicate!1786 lt!2304749) e!3590329)))

(declare-fun b!5855108 () Bool)

(declare-fun e!3590330 () Bool)

(assert (=> b!5855108 (= e!3590329 e!3590330)))

(declare-fun res!2464542 () Bool)

(assert (=> b!5855108 (=> (not res!2464542) (not e!3590330))))

(declare-fun contains!19927 (List!64063 Context!10610) Bool)

(assert (=> b!5855108 (= res!2464542 (not (contains!19927 (t!377428 lt!2304749) (h!70387 lt!2304749))))))

(declare-fun b!5855109 () Bool)

(assert (=> b!5855109 (= e!3590330 (noDuplicate!1786 (t!377428 lt!2304749)))))

(assert (= (and d!1838826 (not res!2464541)) b!5855108))

(assert (= (and b!5855108 res!2464542) b!5855109))

(declare-fun m!6773740 () Bool)

(assert (=> b!5855108 m!6773740))

(declare-fun m!6773742 () Bool)

(assert (=> b!5855109 m!6773742))

(assert (=> d!1838540 d!1838826))

(declare-fun d!1838828 () Bool)

(declare-fun e!3590339 () Bool)

(assert (=> d!1838828 e!3590339))

(declare-fun res!2464547 () Bool)

(assert (=> d!1838828 (=> (not res!2464547) (not e!3590339))))

(declare-fun res!2464548 () List!64063)

(assert (=> d!1838828 (= res!2464547 (noDuplicate!1786 res!2464548))))

(declare-fun e!3590338 () Bool)

(assert (=> d!1838828 e!3590338))

(assert (=> d!1838828 (= (choose!44393 z!1189) res!2464548)))

(declare-fun b!5855117 () Bool)

(declare-fun e!3590337 () Bool)

(declare-fun tp!1619713 () Bool)

(assert (=> b!5855117 (= e!3590337 tp!1619713)))

(declare-fun tp!1619714 () Bool)

(declare-fun b!5855116 () Bool)

(assert (=> b!5855116 (= e!3590338 (and (inv!83049 (h!70387 res!2464548)) e!3590337 tp!1619714))))

(declare-fun b!5855118 () Bool)

(assert (=> b!5855118 (= e!3590339 (= (content!11751 res!2464548) z!1189))))

(assert (= b!5855116 b!5855117))

(assert (= (and d!1838828 ((_ is Cons!63939) res!2464548)) b!5855116))

(assert (= (and d!1838828 res!2464547) b!5855118))

(declare-fun m!6773744 () Bool)

(assert (=> d!1838828 m!6773744))

(declare-fun m!6773746 () Bool)

(assert (=> b!5855116 m!6773746))

(declare-fun m!6773748 () Bool)

(assert (=> b!5855118 m!6773748))

(assert (=> d!1838540 d!1838828))

(declare-fun d!1838830 () Bool)

(declare-fun nullableFct!1908 (Regex!15921) Bool)

(assert (=> d!1838830 (= (nullable!5921 (regOne!32354 (regTwo!32355 r!7292))) (nullableFct!1908 (regOne!32354 (regTwo!32355 r!7292))))))

(declare-fun bs!1379560 () Bool)

(assert (= bs!1379560 d!1838830))

(declare-fun m!6773750 () Bool)

(assert (=> bs!1379560 m!6773750))

(assert (=> b!5854421 d!1838830))

(declare-fun d!1838832 () Bool)

(declare-fun lambda!320144 () Int)

(declare-fun exists!2305 ((InoxSet Context!10610) Int) Bool)

(assert (=> d!1838832 (= (nullableZipper!1760 lt!2304690) (exists!2305 lt!2304690 lambda!320144))))

(declare-fun bs!1379561 () Bool)

(assert (= bs!1379561 d!1838832))

(declare-fun m!6773752 () Bool)

(assert (=> bs!1379561 m!6773752))

(assert (=> b!5854410 d!1838832))

(assert (=> d!1838538 d!1838532))

(declare-fun d!1838834 () Bool)

(assert (=> d!1838834 (= (flatMap!1452 z!1189 lambda!320064) (dynLambda!24995 lambda!320064 (h!70387 zl!343)))))

(assert (=> d!1838834 true))

(declare-fun _$13!2565 () Unit!157113)

(assert (=> d!1838834 (= (choose!44392 z!1189 (h!70387 zl!343) lambda!320064) _$13!2565)))

(declare-fun b_lambda!220385 () Bool)

(assert (=> (not b_lambda!220385) (not d!1838834)))

(declare-fun bs!1379562 () Bool)

(assert (= bs!1379562 d!1838834))

(assert (=> bs!1379562 m!6772836))

(assert (=> bs!1379562 m!6773134))

(assert (=> d!1838538 d!1838834))

(declare-fun bm!458584 () Bool)

(declare-fun call!458591 () Bool)

(declare-fun call!458589 () Bool)

(assert (=> bm!458584 (= call!458591 call!458589)))

(declare-fun d!1838836 () Bool)

(declare-fun res!2464549 () Bool)

(declare-fun e!3590341 () Bool)

(assert (=> d!1838836 (=> res!2464549 e!3590341)))

(assert (=> d!1838836 (= res!2464549 ((_ is ElementMatch!15921) lt!2304758))))

(assert (=> d!1838836 (= (validRegex!7657 lt!2304758) e!3590341)))

(declare-fun c!1038227 () Bool)

(declare-fun bm!458585 () Bool)

(declare-fun c!1038228 () Bool)

(assert (=> bm!458585 (= call!458589 (validRegex!7657 (ite c!1038227 (reg!16250 lt!2304758) (ite c!1038228 (regTwo!32355 lt!2304758) (regTwo!32354 lt!2304758)))))))

(declare-fun b!5855119 () Bool)

(declare-fun e!3590342 () Bool)

(assert (=> b!5855119 (= e!3590342 call!458591)))

(declare-fun b!5855120 () Bool)

(declare-fun res!2464552 () Bool)

(declare-fun e!3590343 () Bool)

(assert (=> b!5855120 (=> res!2464552 e!3590343)))

(assert (=> b!5855120 (= res!2464552 (not ((_ is Concat!24766) lt!2304758)))))

(declare-fun e!3590346 () Bool)

(assert (=> b!5855120 (= e!3590346 e!3590343)))

(declare-fun b!5855121 () Bool)

(declare-fun e!3590344 () Bool)

(assert (=> b!5855121 (= e!3590344 call!458589)))

(declare-fun b!5855122 () Bool)

(declare-fun e!3590340 () Bool)

(assert (=> b!5855122 (= e!3590340 call!458591)))

(declare-fun b!5855123 () Bool)

(assert (=> b!5855123 (= e!3590343 e!3590342)))

(declare-fun res!2464553 () Bool)

(assert (=> b!5855123 (=> (not res!2464553) (not e!3590342))))

(declare-fun call!458590 () Bool)

(assert (=> b!5855123 (= res!2464553 call!458590)))

(declare-fun bm!458586 () Bool)

(assert (=> bm!458586 (= call!458590 (validRegex!7657 (ite c!1038228 (regOne!32355 lt!2304758) (regOne!32354 lt!2304758))))))

(declare-fun b!5855124 () Bool)

(declare-fun e!3590345 () Bool)

(assert (=> b!5855124 (= e!3590341 e!3590345)))

(assert (=> b!5855124 (= c!1038227 ((_ is Star!15921) lt!2304758))))

(declare-fun b!5855125 () Bool)

(declare-fun res!2464551 () Bool)

(assert (=> b!5855125 (=> (not res!2464551) (not e!3590340))))

(assert (=> b!5855125 (= res!2464551 call!458590)))

(assert (=> b!5855125 (= e!3590346 e!3590340)))

(declare-fun b!5855126 () Bool)

(assert (=> b!5855126 (= e!3590345 e!3590344)))

(declare-fun res!2464550 () Bool)

(assert (=> b!5855126 (= res!2464550 (not (nullable!5921 (reg!16250 lt!2304758))))))

(assert (=> b!5855126 (=> (not res!2464550) (not e!3590344))))

(declare-fun b!5855127 () Bool)

(assert (=> b!5855127 (= e!3590345 e!3590346)))

(assert (=> b!5855127 (= c!1038228 ((_ is Union!15921) lt!2304758))))

(assert (= (and d!1838836 (not res!2464549)) b!5855124))

(assert (= (and b!5855124 c!1038227) b!5855126))

(assert (= (and b!5855124 (not c!1038227)) b!5855127))

(assert (= (and b!5855126 res!2464550) b!5855121))

(assert (= (and b!5855127 c!1038228) b!5855125))

(assert (= (and b!5855127 (not c!1038228)) b!5855120))

(assert (= (and b!5855125 res!2464551) b!5855122))

(assert (= (and b!5855120 (not res!2464552)) b!5855123))

(assert (= (and b!5855123 res!2464553) b!5855119))

(assert (= (or b!5855122 b!5855119) bm!458584))

(assert (= (or b!5855125 b!5855123) bm!458586))

(assert (= (or b!5855121 bm!458584) bm!458585))

(declare-fun m!6773754 () Bool)

(assert (=> bm!458585 m!6773754))

(declare-fun m!6773756 () Bool)

(assert (=> bm!458586 m!6773756))

(declare-fun m!6773758 () Bool)

(assert (=> b!5855126 m!6773758))

(assert (=> d!1838552 d!1838836))

(assert (=> d!1838552 d!1838548))

(assert (=> d!1838552 d!1838550))

(declare-fun d!1838838 () Bool)

(assert (=> d!1838838 (= (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (nullableFct!1908 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(declare-fun bs!1379563 () Bool)

(assert (= bs!1379563 d!1838838))

(declare-fun m!6773760 () Bool)

(assert (=> bs!1379563 m!6773760))

(assert (=> b!5854409 d!1838838))

(assert (=> bm!458452 d!1838818))

(assert (=> d!1838582 d!1838818))

(declare-fun bm!458587 () Bool)

(declare-fun call!458594 () Bool)

(declare-fun call!458592 () Bool)

(assert (=> bm!458587 (= call!458594 call!458592)))

(declare-fun d!1838840 () Bool)

(declare-fun res!2464554 () Bool)

(declare-fun e!3590348 () Bool)

(assert (=> d!1838840 (=> res!2464554 e!3590348)))

(assert (=> d!1838840 (= res!2464554 ((_ is ElementMatch!15921) (regTwo!32355 r!7292)))))

(assert (=> d!1838840 (= (validRegex!7657 (regTwo!32355 r!7292)) e!3590348)))

(declare-fun bm!458588 () Bool)

(declare-fun c!1038229 () Bool)

(declare-fun c!1038230 () Bool)

(assert (=> bm!458588 (= call!458592 (validRegex!7657 (ite c!1038229 (reg!16250 (regTwo!32355 r!7292)) (ite c!1038230 (regTwo!32355 (regTwo!32355 r!7292)) (regTwo!32354 (regTwo!32355 r!7292))))))))

(declare-fun b!5855128 () Bool)

(declare-fun e!3590349 () Bool)

(assert (=> b!5855128 (= e!3590349 call!458594)))

(declare-fun b!5855129 () Bool)

(declare-fun res!2464557 () Bool)

(declare-fun e!3590350 () Bool)

(assert (=> b!5855129 (=> res!2464557 e!3590350)))

(assert (=> b!5855129 (= res!2464557 (not ((_ is Concat!24766) (regTwo!32355 r!7292))))))

(declare-fun e!3590353 () Bool)

(assert (=> b!5855129 (= e!3590353 e!3590350)))

(declare-fun b!5855130 () Bool)

(declare-fun e!3590351 () Bool)

(assert (=> b!5855130 (= e!3590351 call!458592)))

(declare-fun b!5855131 () Bool)

(declare-fun e!3590347 () Bool)

(assert (=> b!5855131 (= e!3590347 call!458594)))

(declare-fun b!5855132 () Bool)

(assert (=> b!5855132 (= e!3590350 e!3590349)))

(declare-fun res!2464558 () Bool)

(assert (=> b!5855132 (=> (not res!2464558) (not e!3590349))))

(declare-fun call!458593 () Bool)

(assert (=> b!5855132 (= res!2464558 call!458593)))

(declare-fun bm!458589 () Bool)

(assert (=> bm!458589 (= call!458593 (validRegex!7657 (ite c!1038230 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))))))

(declare-fun b!5855133 () Bool)

(declare-fun e!3590352 () Bool)

(assert (=> b!5855133 (= e!3590348 e!3590352)))

(assert (=> b!5855133 (= c!1038229 ((_ is Star!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5855134 () Bool)

(declare-fun res!2464556 () Bool)

(assert (=> b!5855134 (=> (not res!2464556) (not e!3590347))))

(assert (=> b!5855134 (= res!2464556 call!458593)))

(assert (=> b!5855134 (= e!3590353 e!3590347)))

(declare-fun b!5855135 () Bool)

(assert (=> b!5855135 (= e!3590352 e!3590351)))

(declare-fun res!2464555 () Bool)

(assert (=> b!5855135 (= res!2464555 (not (nullable!5921 (reg!16250 (regTwo!32355 r!7292)))))))

(assert (=> b!5855135 (=> (not res!2464555) (not e!3590351))))

(declare-fun b!5855136 () Bool)

(assert (=> b!5855136 (= e!3590352 e!3590353)))

(assert (=> b!5855136 (= c!1038230 ((_ is Union!15921) (regTwo!32355 r!7292)))))

(assert (= (and d!1838840 (not res!2464554)) b!5855133))

(assert (= (and b!5855133 c!1038229) b!5855135))

(assert (= (and b!5855133 (not c!1038229)) b!5855136))

(assert (= (and b!5855135 res!2464555) b!5855130))

(assert (= (and b!5855136 c!1038230) b!5855134))

(assert (= (and b!5855136 (not c!1038230)) b!5855129))

(assert (= (and b!5855134 res!2464556) b!5855131))

(assert (= (and b!5855129 (not res!2464557)) b!5855132))

(assert (= (and b!5855132 res!2464558) b!5855128))

(assert (= (or b!5855131 b!5855128) bm!458587))

(assert (= (or b!5855134 b!5855132) bm!458589))

(assert (= (or b!5855130 bm!458587) bm!458588))

(declare-fun m!6773762 () Bool)

(assert (=> bm!458588 m!6773762))

(declare-fun m!6773764 () Bool)

(assert (=> bm!458589 m!6773764))

(declare-fun m!6773766 () Bool)

(assert (=> b!5855135 m!6773766))

(assert (=> d!1838582 d!1838840))

(declare-fun d!1838842 () Bool)

(assert (=> d!1838842 (= ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038052 c!1038053) (regTwo!32354 (regOne!32355 r!7292)) (regOne!32355 r!7292))) (Cons!63938 (ite (or c!1038052 c!1038053) (regTwo!32354 (regOne!32355 r!7292)) (regOne!32355 r!7292)) (exprs!5805 lt!2304692)))))

(assert (=> bm!458449 d!1838842))

(declare-fun b!5855137 () Bool)

(declare-fun e!3590357 () (InoxSet Context!10610))

(declare-fun call!458598 () (InoxSet Context!10610))

(declare-fun call!458596 () (InoxSet Context!10610))

(assert (=> b!5855137 (= e!3590357 ((_ map or) call!458598 call!458596))))

(declare-fun b!5855138 () Bool)

(declare-fun e!3590359 () (InoxSet Context!10610))

(declare-fun call!458595 () (InoxSet Context!10610))

(assert (=> b!5855138 (= e!3590359 call!458595)))

(declare-fun b!5855139 () Bool)

(declare-fun e!3590354 () Bool)

(assert (=> b!5855139 (= e!3590354 (nullable!5921 (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))))

(declare-fun d!1838844 () Bool)

(declare-fun c!1038232 () Bool)

(assert (=> d!1838844 (= c!1038232 (and ((_ is ElementMatch!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (= (c!1037845 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70388 s!2326))))))

(declare-fun e!3590356 () (InoxSet Context!10610))

(assert (=> d!1838844 (= (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70388 s!2326)) e!3590356)))

(declare-fun b!5855140 () Bool)

(declare-fun e!3590355 () (InoxSet Context!10610))

(assert (=> b!5855140 (= e!3590356 e!3590355)))

(declare-fun c!1038231 () Bool)

(assert (=> b!5855140 (= c!1038231 ((_ is Union!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(declare-fun b!5855141 () Bool)

(declare-fun e!3590358 () (InoxSet Context!10610))

(assert (=> b!5855141 (= e!3590357 e!3590358)))

(declare-fun c!1038235 () Bool)

(assert (=> b!5855141 (= c!1038235 ((_ is Concat!24766) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(declare-fun b!5855142 () Bool)

(declare-fun c!1038233 () Bool)

(assert (=> b!5855142 (= c!1038233 ((_ is Star!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(assert (=> b!5855142 (= e!3590358 e!3590359)))

(declare-fun call!458597 () List!64062)

(declare-fun bm!458590 () Bool)

(declare-fun c!1038234 () Bool)

(declare-fun call!458600 () (InoxSet Context!10610))

(assert (=> bm!458590 (= call!458600 (derivationStepZipperDown!1187 (ite c!1038231 (regTwo!32355 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (ite c!1038234 (regTwo!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (ite c!1038235 (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (reg!16250 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))) (ite (or c!1038231 c!1038234) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (Context!10611 call!458597)) (h!70388 s!2326)))))

(declare-fun b!5855143 () Bool)

(assert (=> b!5855143 (= e!3590359 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458591 () Bool)

(declare-fun call!458599 () List!64062)

(assert (=> bm!458591 (= call!458597 call!458599)))

(declare-fun bm!458592 () Bool)

(assert (=> bm!458592 (= call!458596 call!458600)))

(declare-fun b!5855144 () Bool)

(assert (=> b!5855144 (= c!1038234 e!3590354)))

(declare-fun res!2464559 () Bool)

(assert (=> b!5855144 (=> (not res!2464559) (not e!3590354))))

(assert (=> b!5855144 (= res!2464559 ((_ is Concat!24766) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(assert (=> b!5855144 (= e!3590355 e!3590357)))

(declare-fun b!5855145 () Bool)

(assert (=> b!5855145 (= e!3590355 ((_ map or) call!458598 call!458600))))

(declare-fun bm!458593 () Bool)

(assert (=> bm!458593 (= call!458595 call!458596)))

(declare-fun b!5855146 () Bool)

(assert (=> b!5855146 (= e!3590356 (store ((as const (Array Context!10610 Bool)) false) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) true))))

(declare-fun bm!458594 () Bool)

(assert (=> bm!458594 (= call!458598 (derivationStepZipperDown!1187 (ite c!1038231 (regOne!32355 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))) (ite c!1038231 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (Context!10611 call!458599)) (h!70388 s!2326)))))

(declare-fun bm!458595 () Bool)

(assert (=> bm!458595 (= call!458599 ($colon$colon!1826 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))) (ite (or c!1038234 c!1038235) (regTwo!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))))

(declare-fun b!5855147 () Bool)

(assert (=> b!5855147 (= e!3590358 call!458595)))

(assert (= (and d!1838844 c!1038232) b!5855146))

(assert (= (and d!1838844 (not c!1038232)) b!5855140))

(assert (= (and b!5855140 c!1038231) b!5855145))

(assert (= (and b!5855140 (not c!1038231)) b!5855144))

(assert (= (and b!5855144 res!2464559) b!5855139))

(assert (= (and b!5855144 c!1038234) b!5855137))

(assert (= (and b!5855144 (not c!1038234)) b!5855141))

(assert (= (and b!5855141 c!1038235) b!5855147))

(assert (= (and b!5855141 (not c!1038235)) b!5855142))

(assert (= (and b!5855142 c!1038233) b!5855138))

(assert (= (and b!5855142 (not c!1038233)) b!5855143))

(assert (= (or b!5855147 b!5855138) bm!458591))

(assert (= (or b!5855147 b!5855138) bm!458593))

(assert (= (or b!5855137 bm!458591) bm!458595))

(assert (= (or b!5855137 bm!458593) bm!458592))

(assert (= (or b!5855145 bm!458592) bm!458590))

(assert (= (or b!5855145 b!5855137) bm!458594))

(declare-fun m!6773768 () Bool)

(assert (=> b!5855139 m!6773768))

(declare-fun m!6773770 () Bool)

(assert (=> bm!458594 m!6773770))

(declare-fun m!6773772 () Bool)

(assert (=> bm!458595 m!6773772))

(declare-fun m!6773774 () Bool)

(assert (=> bm!458590 m!6773774))

(declare-fun m!6773776 () Bool)

(assert (=> b!5855146 m!6773776))

(assert (=> bm!458403 d!1838844))

(declare-fun bm!458596 () Bool)

(declare-fun call!458601 () Bool)

(assert (=> bm!458596 (= call!458601 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5855148 () Bool)

(declare-fun e!3590360 () Bool)

(declare-fun e!3590366 () Bool)

(assert (=> b!5855148 (= e!3590360 e!3590366)))

(declare-fun res!2464561 () Bool)

(assert (=> b!5855148 (=> res!2464561 e!3590366)))

(assert (=> b!5855148 (= res!2464561 call!458601)))

(declare-fun b!5855149 () Bool)

(declare-fun e!3590364 () Bool)

(assert (=> b!5855149 (= e!3590364 (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)))))))

(declare-fun b!5855150 () Bool)

(declare-fun res!2464564 () Bool)

(declare-fun e!3590362 () Bool)

(assert (=> b!5855150 (=> res!2464564 e!3590362)))

(assert (=> b!5855150 (= res!2464564 (not ((_ is ElementMatch!15921) (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)))))))

(declare-fun e!3590361 () Bool)

(assert (=> b!5855150 (= e!3590361 e!3590362)))

(declare-fun b!5855151 () Bool)

(declare-fun res!2464562 () Bool)

(assert (=> b!5855151 (=> res!2464562 e!3590366)))

(assert (=> b!5855151 (= res!2464562 (not (isEmpty!35798 (tail!11480 (tail!11480 s!2326)))))))

(declare-fun b!5855152 () Bool)

(assert (=> b!5855152 (= e!3590362 e!3590360)))

(declare-fun res!2464566 () Bool)

(assert (=> b!5855152 (=> (not res!2464566) (not e!3590360))))

(declare-fun lt!2304784 () Bool)

(assert (=> b!5855152 (= res!2464566 (not lt!2304784))))

(declare-fun b!5855153 () Bool)

(declare-fun e!3590365 () Bool)

(assert (=> b!5855153 (= e!3590365 e!3590361)))

(declare-fun c!1038236 () Bool)

(assert (=> b!5855153 (= c!1038236 ((_ is EmptyLang!15921) (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326))))))

(declare-fun b!5855154 () Bool)

(assert (=> b!5855154 (= e!3590365 (= lt!2304784 call!458601))))

(declare-fun b!5855155 () Bool)

(declare-fun e!3590363 () Bool)

(assert (=> b!5855155 (= e!3590363 (nullable!5921 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326))))))

(declare-fun b!5855156 () Bool)

(assert (=> b!5855156 (= e!3590366 (not (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326))))))))

(declare-fun b!5855157 () Bool)

(assert (=> b!5855157 (= e!3590363 (matchR!8104 (derivativeStep!4659 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)) (head!12395 (tail!11480 s!2326))) (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855158 () Bool)

(declare-fun res!2464565 () Bool)

(assert (=> b!5855158 (=> (not res!2464565) (not e!3590364))))

(assert (=> b!5855158 (= res!2464565 (not call!458601))))

(declare-fun b!5855159 () Bool)

(declare-fun res!2464563 () Bool)

(assert (=> b!5855159 (=> res!2464563 e!3590362)))

(assert (=> b!5855159 (= res!2464563 e!3590364)))

(declare-fun res!2464560 () Bool)

(assert (=> b!5855159 (=> (not res!2464560) (not e!3590364))))

(assert (=> b!5855159 (= res!2464560 lt!2304784)))

(declare-fun d!1838846 () Bool)

(assert (=> d!1838846 e!3590365))

(declare-fun c!1038238 () Bool)

(assert (=> d!1838846 (= c!1038238 ((_ is EmptyExpr!15921) (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326))))))

(assert (=> d!1838846 (= lt!2304784 e!3590363)))

(declare-fun c!1038237 () Bool)

(assert (=> d!1838846 (= c!1038237 (isEmpty!35798 (tail!11480 s!2326)))))

(assert (=> d!1838846 (validRegex!7657 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)))))

(assert (=> d!1838846 (= (matchR!8104 (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)) (tail!11480 s!2326)) lt!2304784)))

(declare-fun b!5855160 () Bool)

(declare-fun res!2464567 () Bool)

(assert (=> b!5855160 (=> (not res!2464567) (not e!3590364))))

(assert (=> b!5855160 (= res!2464567 (isEmpty!35798 (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855161 () Bool)

(assert (=> b!5855161 (= e!3590361 (not lt!2304784))))

(assert (= (and d!1838846 c!1038237) b!5855155))

(assert (= (and d!1838846 (not c!1038237)) b!5855157))

(assert (= (and d!1838846 c!1038238) b!5855154))

(assert (= (and d!1838846 (not c!1038238)) b!5855153))

(assert (= (and b!5855153 c!1038236) b!5855161))

(assert (= (and b!5855153 (not c!1038236)) b!5855150))

(assert (= (and b!5855150 (not res!2464564)) b!5855159))

(assert (= (and b!5855159 res!2464560) b!5855158))

(assert (= (and b!5855158 res!2464565) b!5855160))

(assert (= (and b!5855160 res!2464567) b!5855149))

(assert (= (and b!5855159 (not res!2464563)) b!5855152))

(assert (= (and b!5855152 res!2464566) b!5855148))

(assert (= (and b!5855148 (not res!2464561)) b!5855151))

(assert (= (and b!5855151 (not res!2464562)) b!5855156))

(assert (= (or b!5855154 b!5855148 b!5855158) bm!458596))

(assert (=> d!1838846 m!6773056))

(assert (=> d!1838846 m!6773060))

(assert (=> d!1838846 m!6773300))

(declare-fun m!6773778 () Bool)

(assert (=> d!1838846 m!6773778))

(assert (=> b!5855155 m!6773300))

(declare-fun m!6773780 () Bool)

(assert (=> b!5855155 m!6773780))

(assert (=> bm!458596 m!6773056))

(assert (=> bm!458596 m!6773060))

(assert (=> b!5855160 m!6773056))

(assert (=> b!5855160 m!6773724))

(assert (=> b!5855160 m!6773724))

(assert (=> b!5855160 m!6773726))

(assert (=> b!5855157 m!6773056))

(assert (=> b!5855157 m!6773728))

(assert (=> b!5855157 m!6773300))

(assert (=> b!5855157 m!6773728))

(declare-fun m!6773782 () Bool)

(assert (=> b!5855157 m!6773782))

(assert (=> b!5855157 m!6773056))

(assert (=> b!5855157 m!6773724))

(assert (=> b!5855157 m!6773782))

(assert (=> b!5855157 m!6773724))

(declare-fun m!6773784 () Bool)

(assert (=> b!5855157 m!6773784))

(assert (=> b!5855156 m!6773056))

(assert (=> b!5855156 m!6773728))

(assert (=> b!5855151 m!6773056))

(assert (=> b!5855151 m!6773724))

(assert (=> b!5855151 m!6773724))

(assert (=> b!5855151 m!6773726))

(assert (=> b!5855149 m!6773056))

(assert (=> b!5855149 m!6773728))

(assert (=> b!5854486 d!1838846))

(declare-fun b!5855162 () Bool)

(declare-fun c!1038243 () Bool)

(assert (=> b!5855162 (= c!1038243 ((_ is Union!15921) (regOne!32355 r!7292)))))

(declare-fun e!3590369 () Regex!15921)

(declare-fun e!3590368 () Regex!15921)

(assert (=> b!5855162 (= e!3590369 e!3590368)))

(declare-fun b!5855163 () Bool)

(declare-fun call!458605 () Regex!15921)

(declare-fun call!458602 () Regex!15921)

(assert (=> b!5855163 (= e!3590368 (Union!15921 call!458605 call!458602))))

(declare-fun c!1038242 () Bool)

(declare-fun bm!458597 () Bool)

(assert (=> bm!458597 (= call!458605 (derivativeStep!4659 (ite c!1038243 (regOne!32355 (regOne!32355 r!7292)) (ite c!1038242 (reg!16250 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (head!12395 s!2326)))))

(declare-fun bm!458598 () Bool)

(declare-fun call!458604 () Regex!15921)

(assert (=> bm!458598 (= call!458604 call!458602)))

(declare-fun d!1838848 () Bool)

(declare-fun lt!2304785 () Regex!15921)

(assert (=> d!1838848 (validRegex!7657 lt!2304785)))

(declare-fun e!3590367 () Regex!15921)

(assert (=> d!1838848 (= lt!2304785 e!3590367)))

(declare-fun c!1038239 () Bool)

(assert (=> d!1838848 (= c!1038239 (or ((_ is EmptyExpr!15921) (regOne!32355 r!7292)) ((_ is EmptyLang!15921) (regOne!32355 r!7292))))))

(assert (=> d!1838848 (validRegex!7657 (regOne!32355 r!7292))))

(assert (=> d!1838848 (= (derivativeStep!4659 (regOne!32355 r!7292) (head!12395 s!2326)) lt!2304785)))

(declare-fun b!5855164 () Bool)

(assert (=> b!5855164 (= e!3590369 (ite (= (head!12395 s!2326) (c!1037845 (regOne!32355 r!7292))) EmptyExpr!15921 EmptyLang!15921))))

(declare-fun b!5855165 () Bool)

(assert (=> b!5855165 (= e!3590367 EmptyLang!15921)))

(declare-fun bm!458599 () Bool)

(declare-fun c!1038241 () Bool)

(assert (=> bm!458599 (= call!458602 (derivativeStep!4659 (ite c!1038243 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038241 (regTwo!32354 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (head!12395 s!2326)))))

(declare-fun b!5855166 () Bool)

(assert (=> b!5855166 (= e!3590367 e!3590369)))

(declare-fun c!1038240 () Bool)

(assert (=> b!5855166 (= c!1038240 ((_ is ElementMatch!15921) (regOne!32355 r!7292)))))

(declare-fun b!5855167 () Bool)

(declare-fun e!3590370 () Regex!15921)

(assert (=> b!5855167 (= e!3590370 (Union!15921 (Concat!24766 call!458604 (regTwo!32354 (regOne!32355 r!7292))) EmptyLang!15921))))

(declare-fun b!5855168 () Bool)

(declare-fun e!3590371 () Regex!15921)

(declare-fun call!458603 () Regex!15921)

(assert (=> b!5855168 (= e!3590371 (Concat!24766 call!458603 (regOne!32355 r!7292)))))

(declare-fun b!5855169 () Bool)

(assert (=> b!5855169 (= e!3590370 (Union!15921 (Concat!24766 call!458603 (regTwo!32354 (regOne!32355 r!7292))) call!458604))))

(declare-fun bm!458600 () Bool)

(assert (=> bm!458600 (= call!458603 call!458605)))

(declare-fun b!5855170 () Bool)

(assert (=> b!5855170 (= e!3590368 e!3590371)))

(assert (=> b!5855170 (= c!1038242 ((_ is Star!15921) (regOne!32355 r!7292)))))

(declare-fun b!5855171 () Bool)

(assert (=> b!5855171 (= c!1038241 (nullable!5921 (regOne!32354 (regOne!32355 r!7292))))))

(assert (=> b!5855171 (= e!3590371 e!3590370)))

(assert (= (and d!1838848 c!1038239) b!5855165))

(assert (= (and d!1838848 (not c!1038239)) b!5855166))

(assert (= (and b!5855166 c!1038240) b!5855164))

(assert (= (and b!5855166 (not c!1038240)) b!5855162))

(assert (= (and b!5855162 c!1038243) b!5855163))

(assert (= (and b!5855162 (not c!1038243)) b!5855170))

(assert (= (and b!5855170 c!1038242) b!5855168))

(assert (= (and b!5855170 (not c!1038242)) b!5855171))

(assert (= (and b!5855171 c!1038241) b!5855169))

(assert (= (and b!5855171 (not c!1038241)) b!5855167))

(assert (= (or b!5855169 b!5855167) bm!458598))

(assert (= (or b!5855168 b!5855169) bm!458600))

(assert (= (or b!5855163 bm!458598) bm!458599))

(assert (= (or b!5855163 bm!458600) bm!458597))

(assert (=> bm!458597 m!6773062))

(declare-fun m!6773786 () Bool)

(assert (=> bm!458597 m!6773786))

(declare-fun m!6773788 () Bool)

(assert (=> d!1838848 m!6773788))

(assert (=> d!1838848 m!6773280))

(assert (=> bm!458599 m!6773062))

(declare-fun m!6773790 () Bool)

(assert (=> bm!458599 m!6773790))

(assert (=> b!5855171 m!6773264))

(assert (=> b!5854486 d!1838848))

(assert (=> b!5854486 d!1838812))

(assert (=> b!5854486 d!1838810))

(declare-fun b!5855172 () Bool)

(declare-fun e!3590375 () (InoxSet Context!10610))

(declare-fun call!458609 () (InoxSet Context!10610))

(declare-fun call!458607 () (InoxSet Context!10610))

(assert (=> b!5855172 (= e!3590375 ((_ map or) call!458609 call!458607))))

(declare-fun b!5855173 () Bool)

(declare-fun e!3590377 () (InoxSet Context!10610))

(declare-fun call!458606 () (InoxSet Context!10610))

(assert (=> b!5855173 (= e!3590377 call!458606)))

(declare-fun b!5855174 () Bool)

(declare-fun e!3590372 () Bool)

(assert (=> b!5855174 (= e!3590372 (nullable!5921 (regOne!32354 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))))))))

(declare-fun d!1838850 () Bool)

(declare-fun c!1038245 () Bool)

(assert (=> d!1838850 (= c!1038245 (and ((_ is ElementMatch!15921) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (= (c!1037845 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (h!70388 s!2326))))))

(declare-fun e!3590374 () (InoxSet Context!10610))

(assert (=> d!1838850 (= (derivationStepZipperDown!1187 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))) (ite c!1038044 lt!2304692 (Context!10611 call!458447)) (h!70388 s!2326)) e!3590374)))

(declare-fun b!5855175 () Bool)

(declare-fun e!3590373 () (InoxSet Context!10610))

(assert (=> b!5855175 (= e!3590374 e!3590373)))

(declare-fun c!1038244 () Bool)

(assert (=> b!5855175 (= c!1038244 ((_ is Union!15921) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))))))

(declare-fun b!5855176 () Bool)

(declare-fun e!3590376 () (InoxSet Context!10610))

(assert (=> b!5855176 (= e!3590375 e!3590376)))

(declare-fun c!1038248 () Bool)

(assert (=> b!5855176 (= c!1038248 ((_ is Concat!24766) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))))))

(declare-fun b!5855177 () Bool)

(declare-fun c!1038246 () Bool)

(assert (=> b!5855177 (= c!1038246 ((_ is Star!15921) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))))))

(assert (=> b!5855177 (= e!3590376 e!3590377)))

(declare-fun call!458611 () (InoxSet Context!10610))

(declare-fun call!458608 () List!64062)

(declare-fun c!1038247 () Bool)

(declare-fun bm!458601 () Bool)

(assert (=> bm!458601 (= call!458611 (derivationStepZipperDown!1187 (ite c!1038244 (regTwo!32355 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (ite c!1038247 (regTwo!32354 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (ite c!1038248 (regOne!32354 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (reg!16250 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))))))) (ite (or c!1038244 c!1038247) (ite c!1038044 lt!2304692 (Context!10611 call!458447)) (Context!10611 call!458608)) (h!70388 s!2326)))))

(declare-fun b!5855178 () Bool)

(assert (=> b!5855178 (= e!3590377 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458602 () Bool)

(declare-fun call!458610 () List!64062)

(assert (=> bm!458602 (= call!458608 call!458610)))

(declare-fun bm!458603 () Bool)

(assert (=> bm!458603 (= call!458607 call!458611)))

(declare-fun b!5855179 () Bool)

(assert (=> b!5855179 (= c!1038247 e!3590372)))

(declare-fun res!2464568 () Bool)

(assert (=> b!5855179 (=> (not res!2464568) (not e!3590372))))

(assert (=> b!5855179 (= res!2464568 ((_ is Concat!24766) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))))))

(assert (=> b!5855179 (= e!3590373 e!3590375)))

(declare-fun b!5855180 () Bool)

(assert (=> b!5855180 (= e!3590373 ((_ map or) call!458609 call!458611))))

(declare-fun bm!458604 () Bool)

(assert (=> bm!458604 (= call!458606 call!458607)))

(declare-fun b!5855181 () Bool)

(assert (=> b!5855181 (= e!3590374 (store ((as const (Array Context!10610 Bool)) false) (ite c!1038044 lt!2304692 (Context!10611 call!458447)) true))))

(declare-fun bm!458605 () Bool)

(assert (=> bm!458605 (= call!458609 (derivationStepZipperDown!1187 (ite c!1038244 (regOne!32355 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (regOne!32354 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))))) (ite c!1038244 (ite c!1038044 lt!2304692 (Context!10611 call!458447)) (Context!10611 call!458610)) (h!70388 s!2326)))))

(declare-fun bm!458606 () Bool)

(assert (=> bm!458606 (= call!458610 ($colon$colon!1826 (exprs!5805 (ite c!1038044 lt!2304692 (Context!10611 call!458447))) (ite (or c!1038247 c!1038248) (regTwo!32354 (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (ite c!1038044 (regOne!32355 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292))))))))

(declare-fun b!5855182 () Bool)

(assert (=> b!5855182 (= e!3590376 call!458606)))

(assert (= (and d!1838850 c!1038245) b!5855181))

(assert (= (and d!1838850 (not c!1038245)) b!5855175))

(assert (= (and b!5855175 c!1038244) b!5855180))

(assert (= (and b!5855175 (not c!1038244)) b!5855179))

(assert (= (and b!5855179 res!2464568) b!5855174))

(assert (= (and b!5855179 c!1038247) b!5855172))

(assert (= (and b!5855179 (not c!1038247)) b!5855176))

(assert (= (and b!5855176 c!1038248) b!5855182))

(assert (= (and b!5855176 (not c!1038248)) b!5855177))

(assert (= (and b!5855177 c!1038246) b!5855173))

(assert (= (and b!5855177 (not c!1038246)) b!5855178))

(assert (= (or b!5855182 b!5855173) bm!458602))

(assert (= (or b!5855182 b!5855173) bm!458604))

(assert (= (or b!5855172 bm!458602) bm!458606))

(assert (= (or b!5855172 bm!458604) bm!458603))

(assert (= (or b!5855180 bm!458603) bm!458601))

(assert (= (or b!5855180 b!5855172) bm!458605))

(declare-fun m!6773792 () Bool)

(assert (=> b!5855174 m!6773792))

(declare-fun m!6773794 () Bool)

(assert (=> bm!458605 m!6773794))

(declare-fun m!6773796 () Bool)

(assert (=> bm!458606 m!6773796))

(declare-fun m!6773798 () Bool)

(assert (=> bm!458601 m!6773798))

(declare-fun m!6773800 () Bool)

(assert (=> b!5855181 m!6773800))

(assert (=> bm!458442 d!1838850))

(declare-fun d!1838852 () Bool)

(declare-fun choose!44399 (Int) Bool)

(assert (=> d!1838852 (= (Exists!2993 (ite c!1038062 lambda!320117 lambda!320118)) (choose!44399 (ite c!1038062 lambda!320117 lambda!320118)))))

(declare-fun bs!1379564 () Bool)

(assert (= bs!1379564 d!1838852))

(declare-fun m!6773802 () Bool)

(assert (=> bs!1379564 m!6773802))

(assert (=> bm!458454 d!1838852))

(declare-fun bm!458607 () Bool)

(declare-fun call!458614 () Bool)

(declare-fun call!458612 () Bool)

(assert (=> bm!458607 (= call!458614 call!458612)))

(declare-fun d!1838854 () Bool)

(declare-fun res!2464569 () Bool)

(declare-fun e!3590379 () Bool)

(assert (=> d!1838854 (=> res!2464569 e!3590379)))

(assert (=> d!1838854 (= res!2464569 ((_ is ElementMatch!15921) lt!2304761))))

(assert (=> d!1838854 (= (validRegex!7657 lt!2304761) e!3590379)))

(declare-fun bm!458608 () Bool)

(declare-fun c!1038249 () Bool)

(declare-fun c!1038250 () Bool)

(assert (=> bm!458608 (= call!458612 (validRegex!7657 (ite c!1038249 (reg!16250 lt!2304761) (ite c!1038250 (regTwo!32355 lt!2304761) (regTwo!32354 lt!2304761)))))))

(declare-fun b!5855183 () Bool)

(declare-fun e!3590380 () Bool)

(assert (=> b!5855183 (= e!3590380 call!458614)))

(declare-fun b!5855184 () Bool)

(declare-fun res!2464572 () Bool)

(declare-fun e!3590381 () Bool)

(assert (=> b!5855184 (=> res!2464572 e!3590381)))

(assert (=> b!5855184 (= res!2464572 (not ((_ is Concat!24766) lt!2304761)))))

(declare-fun e!3590384 () Bool)

(assert (=> b!5855184 (= e!3590384 e!3590381)))

(declare-fun b!5855185 () Bool)

(declare-fun e!3590382 () Bool)

(assert (=> b!5855185 (= e!3590382 call!458612)))

(declare-fun b!5855186 () Bool)

(declare-fun e!3590378 () Bool)

(assert (=> b!5855186 (= e!3590378 call!458614)))

(declare-fun b!5855187 () Bool)

(assert (=> b!5855187 (= e!3590381 e!3590380)))

(declare-fun res!2464573 () Bool)

(assert (=> b!5855187 (=> (not res!2464573) (not e!3590380))))

(declare-fun call!458613 () Bool)

(assert (=> b!5855187 (= res!2464573 call!458613)))

(declare-fun bm!458609 () Bool)

(assert (=> bm!458609 (= call!458613 (validRegex!7657 (ite c!1038250 (regOne!32355 lt!2304761) (regOne!32354 lt!2304761))))))

(declare-fun b!5855188 () Bool)

(declare-fun e!3590383 () Bool)

(assert (=> b!5855188 (= e!3590379 e!3590383)))

(assert (=> b!5855188 (= c!1038249 ((_ is Star!15921) lt!2304761))))

(declare-fun b!5855189 () Bool)

(declare-fun res!2464571 () Bool)

(assert (=> b!5855189 (=> (not res!2464571) (not e!3590378))))

(assert (=> b!5855189 (= res!2464571 call!458613)))

(assert (=> b!5855189 (= e!3590384 e!3590378)))

(declare-fun b!5855190 () Bool)

(assert (=> b!5855190 (= e!3590383 e!3590382)))

(declare-fun res!2464570 () Bool)

(assert (=> b!5855190 (= res!2464570 (not (nullable!5921 (reg!16250 lt!2304761))))))

(assert (=> b!5855190 (=> (not res!2464570) (not e!3590382))))

(declare-fun b!5855191 () Bool)

(assert (=> b!5855191 (= e!3590383 e!3590384)))

(assert (=> b!5855191 (= c!1038250 ((_ is Union!15921) lt!2304761))))

(assert (= (and d!1838854 (not res!2464569)) b!5855188))

(assert (= (and b!5855188 c!1038249) b!5855190))

(assert (= (and b!5855188 (not c!1038249)) b!5855191))

(assert (= (and b!5855190 res!2464570) b!5855185))

(assert (= (and b!5855191 c!1038250) b!5855189))

(assert (= (and b!5855191 (not c!1038250)) b!5855184))

(assert (= (and b!5855189 res!2464571) b!5855186))

(assert (= (and b!5855184 (not res!2464572)) b!5855187))

(assert (= (and b!5855187 res!2464573) b!5855183))

(assert (= (or b!5855186 b!5855183) bm!458607))

(assert (= (or b!5855189 b!5855187) bm!458609))

(assert (= (or b!5855185 bm!458607) bm!458608))

(declare-fun m!6773804 () Bool)

(assert (=> bm!458608 m!6773804))

(declare-fun m!6773806 () Bool)

(assert (=> bm!458609 m!6773806))

(declare-fun m!6773808 () Bool)

(assert (=> b!5855190 m!6773808))

(assert (=> d!1838554 d!1838854))

(declare-fun d!1838856 () Bool)

(declare-fun res!2464578 () Bool)

(declare-fun e!3590389 () Bool)

(assert (=> d!1838856 (=> res!2464578 e!3590389)))

(assert (=> d!1838856 (= res!2464578 ((_ is Nil!63938) (exprs!5805 (h!70387 zl!343))))))

(assert (=> d!1838856 (= (forall!15008 (exprs!5805 (h!70387 zl!343)) lambda!320112) e!3590389)))

(declare-fun b!5855196 () Bool)

(declare-fun e!3590390 () Bool)

(assert (=> b!5855196 (= e!3590389 e!3590390)))

(declare-fun res!2464579 () Bool)

(assert (=> b!5855196 (=> (not res!2464579) (not e!3590390))))

(declare-fun dynLambda!24998 (Int Regex!15921) Bool)

(assert (=> b!5855196 (= res!2464579 (dynLambda!24998 lambda!320112 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855197 () Bool)

(assert (=> b!5855197 (= e!3590390 (forall!15008 (t!377427 (exprs!5805 (h!70387 zl!343))) lambda!320112))))

(assert (= (and d!1838856 (not res!2464578)) b!5855196))

(assert (= (and b!5855196 res!2464579) b!5855197))

(declare-fun b_lambda!220387 () Bool)

(assert (=> (not b_lambda!220387) (not b!5855196)))

(declare-fun m!6773810 () Bool)

(assert (=> b!5855196 m!6773810))

(declare-fun m!6773812 () Bool)

(assert (=> b!5855197 m!6773812))

(assert (=> d!1838554 d!1838856))

(declare-fun bs!1379565 () Bool)

(declare-fun d!1838858 () Bool)

(assert (= bs!1379565 (and d!1838858 d!1838520)))

(declare-fun lambda!320145 () Int)

(assert (=> bs!1379565 (= lambda!320145 lambda!320099)))

(declare-fun bs!1379566 () Bool)

(assert (= bs!1379566 (and d!1838858 d!1838554)))

(assert (=> bs!1379566 (= lambda!320145 lambda!320112)))

(declare-fun bs!1379567 () Bool)

(assert (= bs!1379567 (and d!1838858 d!1838548)))

(assert (=> bs!1379567 (= lambda!320145 lambda!320106)))

(declare-fun bs!1379568 () Bool)

(assert (= bs!1379568 (and d!1838858 d!1838560)))

(assert (=> bs!1379568 (= lambda!320145 lambda!320113)))

(declare-fun bs!1379569 () Bool)

(assert (= bs!1379569 (and d!1838858 d!1838572)))

(assert (=> bs!1379569 (= lambda!320145 lambda!320114)))

(declare-fun bs!1379570 () Bool)

(assert (= bs!1379570 (and d!1838858 d!1838550)))

(assert (=> bs!1379570 (= lambda!320145 lambda!320109)))

(assert (=> d!1838858 (= (inv!83049 setElem!39676) (forall!15008 (exprs!5805 setElem!39676) lambda!320145))))

(declare-fun bs!1379571 () Bool)

(assert (= bs!1379571 d!1838858))

(declare-fun m!6773814 () Bool)

(assert (=> bs!1379571 m!6773814))

(assert (=> setNonEmpty!39676 d!1838858))

(assert (=> d!1838580 d!1838588))

(assert (=> d!1838580 d!1838586))

(declare-fun d!1838860 () Bool)

(assert (=> d!1838860 (= (matchR!8104 (regOne!32355 r!7292) s!2326) (matchRSpec!3022 (regOne!32355 r!7292) s!2326))))

(assert (=> d!1838860 true))

(declare-fun _$88!4268 () Unit!157113)

(assert (=> d!1838860 (= (choose!44389 (regOne!32355 r!7292) s!2326) _$88!4268)))

(declare-fun bs!1379572 () Bool)

(assert (= bs!1379572 d!1838860))

(assert (=> bs!1379572 m!6772870))

(assert (=> bs!1379572 m!6772866))

(assert (=> d!1838580 d!1838860))

(declare-fun bm!458610 () Bool)

(declare-fun call!458617 () Bool)

(declare-fun call!458615 () Bool)

(assert (=> bm!458610 (= call!458617 call!458615)))

(declare-fun d!1838862 () Bool)

(declare-fun res!2464580 () Bool)

(declare-fun e!3590392 () Bool)

(assert (=> d!1838862 (=> res!2464580 e!3590392)))

(assert (=> d!1838862 (= res!2464580 ((_ is ElementMatch!15921) (regOne!32355 r!7292)))))

(assert (=> d!1838862 (= (validRegex!7657 (regOne!32355 r!7292)) e!3590392)))

(declare-fun bm!458611 () Bool)

(declare-fun c!1038251 () Bool)

(declare-fun c!1038252 () Bool)

(assert (=> bm!458611 (= call!458615 (validRegex!7657 (ite c!1038251 (reg!16250 (regOne!32355 r!7292)) (ite c!1038252 (regTwo!32355 (regOne!32355 r!7292)) (regTwo!32354 (regOne!32355 r!7292))))))))

(declare-fun b!5855198 () Bool)

(declare-fun e!3590393 () Bool)

(assert (=> b!5855198 (= e!3590393 call!458617)))

(declare-fun b!5855199 () Bool)

(declare-fun res!2464583 () Bool)

(declare-fun e!3590394 () Bool)

(assert (=> b!5855199 (=> res!2464583 e!3590394)))

(assert (=> b!5855199 (= res!2464583 (not ((_ is Concat!24766) (regOne!32355 r!7292))))))

(declare-fun e!3590397 () Bool)

(assert (=> b!5855199 (= e!3590397 e!3590394)))

(declare-fun b!5855200 () Bool)

(declare-fun e!3590395 () Bool)

(assert (=> b!5855200 (= e!3590395 call!458615)))

(declare-fun b!5855201 () Bool)

(declare-fun e!3590391 () Bool)

(assert (=> b!5855201 (= e!3590391 call!458617)))

(declare-fun b!5855202 () Bool)

(assert (=> b!5855202 (= e!3590394 e!3590393)))

(declare-fun res!2464584 () Bool)

(assert (=> b!5855202 (=> (not res!2464584) (not e!3590393))))

(declare-fun call!458616 () Bool)

(assert (=> b!5855202 (= res!2464584 call!458616)))

(declare-fun bm!458612 () Bool)

(assert (=> bm!458612 (= call!458616 (validRegex!7657 (ite c!1038252 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))))))

(declare-fun b!5855203 () Bool)

(declare-fun e!3590396 () Bool)

(assert (=> b!5855203 (= e!3590392 e!3590396)))

(assert (=> b!5855203 (= c!1038251 ((_ is Star!15921) (regOne!32355 r!7292)))))

(declare-fun b!5855204 () Bool)

(declare-fun res!2464582 () Bool)

(assert (=> b!5855204 (=> (not res!2464582) (not e!3590391))))

(assert (=> b!5855204 (= res!2464582 call!458616)))

(assert (=> b!5855204 (= e!3590397 e!3590391)))

(declare-fun b!5855205 () Bool)

(assert (=> b!5855205 (= e!3590396 e!3590395)))

(declare-fun res!2464581 () Bool)

(assert (=> b!5855205 (= res!2464581 (not (nullable!5921 (reg!16250 (regOne!32355 r!7292)))))))

(assert (=> b!5855205 (=> (not res!2464581) (not e!3590395))))

(declare-fun b!5855206 () Bool)

(assert (=> b!5855206 (= e!3590396 e!3590397)))

(assert (=> b!5855206 (= c!1038252 ((_ is Union!15921) (regOne!32355 r!7292)))))

(assert (= (and d!1838862 (not res!2464580)) b!5855203))

(assert (= (and b!5855203 c!1038251) b!5855205))

(assert (= (and b!5855203 (not c!1038251)) b!5855206))

(assert (= (and b!5855205 res!2464581) b!5855200))

(assert (= (and b!5855206 c!1038252) b!5855204))

(assert (= (and b!5855206 (not c!1038252)) b!5855199))

(assert (= (and b!5855204 res!2464582) b!5855201))

(assert (= (and b!5855199 (not res!2464583)) b!5855202))

(assert (= (and b!5855202 res!2464584) b!5855198))

(assert (= (or b!5855201 b!5855198) bm!458610))

(assert (= (or b!5855204 b!5855202) bm!458612))

(assert (= (or b!5855200 bm!458610) bm!458611))

(declare-fun m!6773816 () Bool)

(assert (=> bm!458611 m!6773816))

(declare-fun m!6773818 () Bool)

(assert (=> bm!458612 m!6773818))

(declare-fun m!6773820 () Bool)

(assert (=> b!5855205 m!6773820))

(assert (=> d!1838580 d!1838862))

(assert (=> b!5854478 d!1838812))

(declare-fun bs!1379573 () Bool)

(declare-fun b!5855217 () Bool)

(assert (= bs!1379573 (and b!5855217 b!5854057)))

(declare-fun lambda!320146 () Int)

(assert (=> bs!1379573 (= (and (= (reg!16250 (regTwo!32355 (regTwo!32355 r!7292))) (reg!16250 r!7292)) (= (regTwo!32355 (regTwo!32355 r!7292)) r!7292)) (= lambda!320146 lambda!320089))))

(declare-fun bs!1379574 () Bool)

(assert (= bs!1379574 (and b!5855217 b!5854053)))

(assert (=> bs!1379574 (not (= lambda!320146 lambda!320090))))

(declare-fun bs!1379575 () Bool)

(assert (= bs!1379575 (and b!5855217 b!5854476)))

(assert (=> bs!1379575 (= (and (= (reg!16250 (regTwo!32355 (regTwo!32355 r!7292))) (reg!16250 (regOne!32355 r!7292))) (= (regTwo!32355 (regTwo!32355 r!7292)) (regOne!32355 r!7292))) (= lambda!320146 lambda!320117))))

(declare-fun bs!1379576 () Bool)

(assert (= bs!1379576 (and b!5855217 b!5854472)))

(assert (=> bs!1379576 (not (= lambda!320146 lambda!320118))))

(declare-fun bs!1379577 () Bool)

(assert (= bs!1379577 (and b!5855217 b!5854447)))

(assert (=> bs!1379577 (not (= lambda!320146 lambda!320116))))

(declare-fun bs!1379578 () Bool)

(assert (= bs!1379578 (and b!5855217 b!5854451)))

(assert (=> bs!1379578 (= (and (= (reg!16250 (regTwo!32355 (regTwo!32355 r!7292))) (reg!16250 (regTwo!32355 r!7292))) (= (regTwo!32355 (regTwo!32355 r!7292)) (regTwo!32355 r!7292))) (= lambda!320146 lambda!320115))))

(assert (=> b!5855217 true))

(assert (=> b!5855217 true))

(declare-fun bs!1379579 () Bool)

(declare-fun b!5855213 () Bool)

(assert (= bs!1379579 (and b!5855213 b!5854057)))

(declare-fun lambda!320147 () Int)

(assert (=> bs!1379579 (not (= lambda!320147 lambda!320089))))

(declare-fun bs!1379580 () Bool)

(assert (= bs!1379580 (and b!5855213 b!5855217)))

(assert (=> bs!1379580 (not (= lambda!320147 lambda!320146))))

(declare-fun bs!1379581 () Bool)

(assert (= bs!1379581 (and b!5855213 b!5854053)))

(assert (=> bs!1379581 (= (and (= (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regOne!32354 r!7292)) (= (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regTwo!32354 r!7292))) (= lambda!320147 lambda!320090))))

(declare-fun bs!1379582 () Bool)

(assert (= bs!1379582 (and b!5855213 b!5854476)))

(assert (=> bs!1379582 (not (= lambda!320147 lambda!320117))))

(declare-fun bs!1379583 () Bool)

(assert (= bs!1379583 (and b!5855213 b!5854472)))

(assert (=> bs!1379583 (= (and (= (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regOne!32354 (regOne!32355 r!7292))) (= (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regOne!32355 r!7292)))) (= lambda!320147 lambda!320118))))

(declare-fun bs!1379584 () Bool)

(assert (= bs!1379584 (and b!5855213 b!5854447)))

(assert (=> bs!1379584 (= (and (= (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regOne!32354 (regTwo!32355 r!7292))) (= (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regTwo!32355 r!7292)))) (= lambda!320147 lambda!320116))))

(declare-fun bs!1379585 () Bool)

(assert (= bs!1379585 (and b!5855213 b!5854451)))

(assert (=> bs!1379585 (not (= lambda!320147 lambda!320115))))

(assert (=> b!5855213 true))

(assert (=> b!5855213 true))

(declare-fun b!5855207 () Bool)

(declare-fun c!1038255 () Bool)

(assert (=> b!5855207 (= c!1038255 ((_ is Union!15921) (regTwo!32355 (regTwo!32355 r!7292))))))

(declare-fun e!3590398 () Bool)

(declare-fun e!3590403 () Bool)

(assert (=> b!5855207 (= e!3590398 e!3590403)))

(declare-fun bm!458613 () Bool)

(declare-fun call!458618 () Bool)

(assert (=> bm!458613 (= call!458618 (isEmpty!35798 s!2326))))

(declare-fun b!5855209 () Bool)

(declare-fun e!3590399 () Bool)

(assert (=> b!5855209 (= e!3590403 e!3590399)))

(declare-fun res!2464586 () Bool)

(assert (=> b!5855209 (= res!2464586 (matchRSpec!3022 (regOne!32355 (regTwo!32355 (regTwo!32355 r!7292))) s!2326))))

(assert (=> b!5855209 (=> res!2464586 e!3590399)))

(declare-fun b!5855210 () Bool)

(assert (=> b!5855210 (= e!3590398 (= s!2326 (Cons!63940 (c!1037845 (regTwo!32355 (regTwo!32355 r!7292))) Nil!63940)))))

(declare-fun b!5855211 () Bool)

(assert (=> b!5855211 (= e!3590399 (matchRSpec!3022 (regTwo!32355 (regTwo!32355 (regTwo!32355 r!7292))) s!2326))))

(declare-fun b!5855212 () Bool)

(declare-fun c!1038256 () Bool)

(assert (=> b!5855212 (= c!1038256 ((_ is ElementMatch!15921) (regTwo!32355 (regTwo!32355 r!7292))))))

(declare-fun e!3590401 () Bool)

(assert (=> b!5855212 (= e!3590401 e!3590398)))

(declare-fun e!3590402 () Bool)

(declare-fun call!458619 () Bool)

(assert (=> b!5855213 (= e!3590402 call!458619)))

(declare-fun b!5855214 () Bool)

(assert (=> b!5855214 (= e!3590403 e!3590402)))

(declare-fun c!1038254 () Bool)

(assert (=> b!5855214 (= c!1038254 ((_ is Star!15921) (regTwo!32355 (regTwo!32355 r!7292))))))

(declare-fun b!5855215 () Bool)

(declare-fun e!3590400 () Bool)

(assert (=> b!5855215 (= e!3590400 call!458618)))

(declare-fun b!5855216 () Bool)

(assert (=> b!5855216 (= e!3590400 e!3590401)))

(declare-fun res!2464587 () Bool)

(assert (=> b!5855216 (= res!2464587 (not ((_ is EmptyLang!15921) (regTwo!32355 (regTwo!32355 r!7292)))))))

(assert (=> b!5855216 (=> (not res!2464587) (not e!3590401))))

(declare-fun e!3590404 () Bool)

(assert (=> b!5855217 (= e!3590404 call!458619)))

(declare-fun bm!458614 () Bool)

(assert (=> bm!458614 (= call!458619 (Exists!2993 (ite c!1038254 lambda!320146 lambda!320147)))))

(declare-fun b!5855208 () Bool)

(declare-fun res!2464585 () Bool)

(assert (=> b!5855208 (=> res!2464585 e!3590404)))

(assert (=> b!5855208 (= res!2464585 call!458618)))

(assert (=> b!5855208 (= e!3590402 e!3590404)))

(declare-fun d!1838864 () Bool)

(declare-fun c!1038253 () Bool)

(assert (=> d!1838864 (= c!1038253 ((_ is EmptyExpr!15921) (regTwo!32355 (regTwo!32355 r!7292))))))

(assert (=> d!1838864 (= (matchRSpec!3022 (regTwo!32355 (regTwo!32355 r!7292)) s!2326) e!3590400)))

(assert (= (and d!1838864 c!1038253) b!5855215))

(assert (= (and d!1838864 (not c!1038253)) b!5855216))

(assert (= (and b!5855216 res!2464587) b!5855212))

(assert (= (and b!5855212 c!1038256) b!5855210))

(assert (= (and b!5855212 (not c!1038256)) b!5855207))

(assert (= (and b!5855207 c!1038255) b!5855209))

(assert (= (and b!5855207 (not c!1038255)) b!5855214))

(assert (= (and b!5855209 (not res!2464586)) b!5855211))

(assert (= (and b!5855214 c!1038254) b!5855208))

(assert (= (and b!5855214 (not c!1038254)) b!5855213))

(assert (= (and b!5855208 (not res!2464585)) b!5855217))

(assert (= (or b!5855217 b!5855213) bm!458614))

(assert (= (or b!5855215 b!5855208) bm!458613))

(assert (=> bm!458613 m!6773046))

(declare-fun m!6773822 () Bool)

(assert (=> b!5855209 m!6773822))

(declare-fun m!6773824 () Bool)

(assert (=> b!5855211 m!6773824))

(declare-fun m!6773826 () Bool)

(assert (=> bm!458614 m!6773826))

(assert (=> b!5854445 d!1838864))

(declare-fun d!1838866 () Bool)

(declare-fun res!2464588 () Bool)

(declare-fun e!3590405 () Bool)

(assert (=> d!1838866 (=> res!2464588 e!3590405)))

(assert (=> d!1838866 (= res!2464588 ((_ is Nil!63938) (exprs!5805 setElem!39670)))))

(assert (=> d!1838866 (= (forall!15008 (exprs!5805 setElem!39670) lambda!320113) e!3590405)))

(declare-fun b!5855218 () Bool)

(declare-fun e!3590406 () Bool)

(assert (=> b!5855218 (= e!3590405 e!3590406)))

(declare-fun res!2464589 () Bool)

(assert (=> b!5855218 (=> (not res!2464589) (not e!3590406))))

(assert (=> b!5855218 (= res!2464589 (dynLambda!24998 lambda!320113 (h!70386 (exprs!5805 setElem!39670))))))

(declare-fun b!5855219 () Bool)

(assert (=> b!5855219 (= e!3590406 (forall!15008 (t!377427 (exprs!5805 setElem!39670)) lambda!320113))))

(assert (= (and d!1838866 (not res!2464588)) b!5855218))

(assert (= (and b!5855218 res!2464589) b!5855219))

(declare-fun b_lambda!220389 () Bool)

(assert (=> (not b_lambda!220389) (not b!5855218)))

(declare-fun m!6773828 () Bool)

(assert (=> b!5855218 m!6773828))

(declare-fun m!6773830 () Bool)

(assert (=> b!5855219 m!6773830))

(assert (=> d!1838560 d!1838866))

(declare-fun d!1838868 () Bool)

(assert (=> d!1838868 (= (nullable!5921 (regTwo!32355 r!7292)) (nullableFct!1908 (regTwo!32355 r!7292)))))

(declare-fun bs!1379586 () Bool)

(assert (= bs!1379586 d!1838868))

(declare-fun m!6773832 () Bool)

(assert (=> bs!1379586 m!6773832))

(assert (=> b!5854459 d!1838868))

(declare-fun b!5855220 () Bool)

(declare-fun e!3590407 () (InoxSet Context!10610))

(declare-fun call!458620 () (InoxSet Context!10610))

(assert (=> b!5855220 (= e!3590407 call!458620)))

(declare-fun d!1838870 () Bool)

(declare-fun c!1038257 () Bool)

(declare-fun e!3590409 () Bool)

(assert (=> d!1838870 (= c!1038257 e!3590409)))

(declare-fun res!2464590 () Bool)

(assert (=> d!1838870 (=> (not res!2464590) (not e!3590409))))

(assert (=> d!1838870 (= res!2464590 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))))))))

(declare-fun e!3590408 () (InoxSet Context!10610))

(assert (=> d!1838870 (= (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (h!70388 s!2326)) e!3590408)))

(declare-fun b!5855221 () Bool)

(assert (=> b!5855221 (= e!3590407 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458615 () Bool)

(assert (=> bm!458615 (= call!458620 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343))))))) (h!70388 s!2326)))))

(declare-fun b!5855222 () Bool)

(assert (=> b!5855222 (= e!3590408 ((_ map or) call!458620 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343))))))) (h!70388 s!2326))))))

(declare-fun b!5855223 () Bool)

(assert (=> b!5855223 (= e!3590408 e!3590407)))

(declare-fun c!1038258 () Bool)

(assert (=> b!5855223 (= c!1038258 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))))))))

(declare-fun b!5855224 () Bool)

(assert (=> b!5855224 (= e!3590409 (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343))))))))))

(assert (= (and d!1838870 res!2464590) b!5855224))

(assert (= (and d!1838870 c!1038257) b!5855222))

(assert (= (and d!1838870 (not c!1038257)) b!5855223))

(assert (= (and b!5855223 c!1038258) b!5855220))

(assert (= (and b!5855223 (not c!1038258)) b!5855221))

(assert (= (or b!5855222 b!5855220) bm!458615))

(declare-fun m!6773834 () Bool)

(assert (=> bm!458615 m!6773834))

(declare-fun m!6773836 () Bool)

(assert (=> b!5855222 m!6773836))

(declare-fun m!6773838 () Bool)

(assert (=> b!5855224 m!6773838))

(assert (=> b!5854213 d!1838870))

(declare-fun d!1838872 () Bool)

(assert (=> d!1838872 (= (isEmpty!35799 (t!377427 (unfocusZipperList!1342 zl!343))) ((_ is Nil!63938) (t!377427 (unfocusZipperList!1342 zl!343))))))

(assert (=> b!5854331 d!1838872))

(declare-fun d!1838874 () Bool)

(assert (=> d!1838874 (= (nullable!5921 (regOne!32354 (regOne!32355 r!7292))) (nullableFct!1908 (regOne!32354 (regOne!32355 r!7292))))))

(declare-fun bs!1379587 () Bool)

(assert (= bs!1379587 d!1838874))

(declare-fun m!6773840 () Bool)

(assert (=> bs!1379587 m!6773840))

(assert (=> b!5854432 d!1838874))

(assert (=> b!5854137 d!1838808))

(assert (=> b!5854137 d!1838810))

(assert (=> bm!458380 d!1838818))

(assert (=> b!5854133 d!1838812))

(declare-fun d!1838876 () Bool)

(declare-fun c!1038259 () Bool)

(assert (=> d!1838876 (= c!1038259 (isEmpty!35798 (tail!11480 (t!377429 s!2326))))))

(declare-fun e!3590410 () Bool)

(assert (=> d!1838876 (= (matchZipper!1987 (derivationStepZipper!1920 lt!2304694 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))) e!3590410)))

(declare-fun b!5855225 () Bool)

(assert (=> b!5855225 (= e!3590410 (nullableZipper!1760 (derivationStepZipper!1920 lt!2304694 (head!12395 (t!377429 s!2326)))))))

(declare-fun b!5855226 () Bool)

(assert (=> b!5855226 (= e!3590410 (matchZipper!1987 (derivationStepZipper!1920 (derivationStepZipper!1920 lt!2304694 (head!12395 (t!377429 s!2326))) (head!12395 (tail!11480 (t!377429 s!2326)))) (tail!11480 (tail!11480 (t!377429 s!2326)))))))

(assert (= (and d!1838876 c!1038259) b!5855225))

(assert (= (and d!1838876 (not c!1038259)) b!5855226))

(assert (=> d!1838876 m!6773164))

(declare-fun m!6773842 () Bool)

(assert (=> d!1838876 m!6773842))

(assert (=> b!5855225 m!6773162))

(declare-fun m!6773844 () Bool)

(assert (=> b!5855225 m!6773844))

(assert (=> b!5855226 m!6773164))

(declare-fun m!6773846 () Bool)

(assert (=> b!5855226 m!6773846))

(assert (=> b!5855226 m!6773162))

(assert (=> b!5855226 m!6773846))

(declare-fun m!6773848 () Bool)

(assert (=> b!5855226 m!6773848))

(assert (=> b!5855226 m!6773164))

(declare-fun m!6773850 () Bool)

(assert (=> b!5855226 m!6773850))

(assert (=> b!5855226 m!6773848))

(assert (=> b!5855226 m!6773850))

(declare-fun m!6773852 () Bool)

(assert (=> b!5855226 m!6773852))

(assert (=> b!5854305 d!1838876))

(declare-fun bs!1379588 () Bool)

(declare-fun d!1838878 () Bool)

(assert (= bs!1379588 (and d!1838878 b!5853752)))

(declare-fun lambda!320148 () Int)

(assert (=> bs!1379588 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320148 lambda!320064))))

(declare-fun bs!1379589 () Bool)

(assert (= bs!1379589 (and d!1838878 d!1838530)))

(assert (=> bs!1379589 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320148 lambda!320102))))

(assert (=> d!1838878 true))

(assert (=> d!1838878 (= (derivationStepZipper!1920 lt!2304694 (head!12395 (t!377429 s!2326))) (flatMap!1452 lt!2304694 lambda!320148))))

(declare-fun bs!1379590 () Bool)

(assert (= bs!1379590 d!1838878))

(declare-fun m!6773854 () Bool)

(assert (=> bs!1379590 m!6773854))

(assert (=> b!5854305 d!1838878))

(declare-fun d!1838880 () Bool)

(assert (=> d!1838880 (= (head!12395 (t!377429 s!2326)) (h!70388 (t!377429 s!2326)))))

(assert (=> b!5854305 d!1838880))

(declare-fun d!1838882 () Bool)

(assert (=> d!1838882 (= (tail!11480 (t!377429 s!2326)) (t!377429 (t!377429 s!2326)))))

(assert (=> b!5854305 d!1838882))

(declare-fun d!1838884 () Bool)

(assert (=> d!1838884 (= (head!12396 (exprs!5805 (h!70387 zl!343))) (h!70386 (exprs!5805 (h!70387 zl!343))))))

(assert (=> b!5854368 d!1838884))

(declare-fun bs!1379591 () Bool)

(declare-fun b!5855237 () Bool)

(assert (= bs!1379591 (and b!5855237 b!5854057)))

(declare-fun lambda!320149 () Int)

(assert (=> bs!1379591 (= (and (= (reg!16250 (regOne!32355 (regOne!32355 r!7292))) (reg!16250 r!7292)) (= (regOne!32355 (regOne!32355 r!7292)) r!7292)) (= lambda!320149 lambda!320089))))

(declare-fun bs!1379592 () Bool)

(assert (= bs!1379592 (and b!5855237 b!5855217)))

(assert (=> bs!1379592 (= (and (= (reg!16250 (regOne!32355 (regOne!32355 r!7292))) (reg!16250 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regOne!32355 (regOne!32355 r!7292)) (regTwo!32355 (regTwo!32355 r!7292)))) (= lambda!320149 lambda!320146))))

(declare-fun bs!1379593 () Bool)

(assert (= bs!1379593 (and b!5855237 b!5854053)))

(assert (=> bs!1379593 (not (= lambda!320149 lambda!320090))))

(declare-fun bs!1379594 () Bool)

(assert (= bs!1379594 (and b!5855237 b!5854476)))

(assert (=> bs!1379594 (= (and (= (reg!16250 (regOne!32355 (regOne!32355 r!7292))) (reg!16250 (regOne!32355 r!7292))) (= (regOne!32355 (regOne!32355 r!7292)) (regOne!32355 r!7292))) (= lambda!320149 lambda!320117))))

(declare-fun bs!1379595 () Bool)

(assert (= bs!1379595 (and b!5855237 b!5854472)))

(assert (=> bs!1379595 (not (= lambda!320149 lambda!320118))))

(declare-fun bs!1379596 () Bool)

(assert (= bs!1379596 (and b!5855237 b!5854447)))

(assert (=> bs!1379596 (not (= lambda!320149 lambda!320116))))

(declare-fun bs!1379597 () Bool)

(assert (= bs!1379597 (and b!5855237 b!5854451)))

(assert (=> bs!1379597 (= (and (= (reg!16250 (regOne!32355 (regOne!32355 r!7292))) (reg!16250 (regTwo!32355 r!7292))) (= (regOne!32355 (regOne!32355 r!7292)) (regTwo!32355 r!7292))) (= lambda!320149 lambda!320115))))

(declare-fun bs!1379598 () Bool)

(assert (= bs!1379598 (and b!5855237 b!5855213)))

(assert (=> bs!1379598 (not (= lambda!320149 lambda!320147))))

(assert (=> b!5855237 true))

(assert (=> b!5855237 true))

(declare-fun bs!1379599 () Bool)

(declare-fun b!5855233 () Bool)

(assert (= bs!1379599 (and b!5855233 b!5854057)))

(declare-fun lambda!320150 () Int)

(assert (=> bs!1379599 (not (= lambda!320150 lambda!320089))))

(declare-fun bs!1379600 () Bool)

(assert (= bs!1379600 (and b!5855233 b!5855217)))

(assert (=> bs!1379600 (not (= lambda!320150 lambda!320146))))

(declare-fun bs!1379601 () Bool)

(assert (= bs!1379601 (and b!5855233 b!5854053)))

(assert (=> bs!1379601 (= (and (= (regOne!32354 (regOne!32355 (regOne!32355 r!7292))) (regOne!32354 r!7292)) (= (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))) (regTwo!32354 r!7292))) (= lambda!320150 lambda!320090))))

(declare-fun bs!1379602 () Bool)

(assert (= bs!1379602 (and b!5855233 b!5854476)))

(assert (=> bs!1379602 (not (= lambda!320150 lambda!320117))))

(declare-fun bs!1379603 () Bool)

(assert (= bs!1379603 (and b!5855233 b!5854472)))

(assert (=> bs!1379603 (= (and (= (regOne!32354 (regOne!32355 (regOne!32355 r!7292))) (regOne!32354 (regOne!32355 r!7292))) (= (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))) (regTwo!32354 (regOne!32355 r!7292)))) (= lambda!320150 lambda!320118))))

(declare-fun bs!1379604 () Bool)

(assert (= bs!1379604 (and b!5855233 b!5854447)))

(assert (=> bs!1379604 (= (and (= (regOne!32354 (regOne!32355 (regOne!32355 r!7292))) (regOne!32354 (regTwo!32355 r!7292))) (= (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))) (regTwo!32354 (regTwo!32355 r!7292)))) (= lambda!320150 lambda!320116))))

(declare-fun bs!1379605 () Bool)

(assert (= bs!1379605 (and b!5855233 b!5855237)))

(assert (=> bs!1379605 (not (= lambda!320150 lambda!320149))))

(declare-fun bs!1379606 () Bool)

(assert (= bs!1379606 (and b!5855233 b!5854451)))

(assert (=> bs!1379606 (not (= lambda!320150 lambda!320115))))

(declare-fun bs!1379607 () Bool)

(assert (= bs!1379607 (and b!5855233 b!5855213)))

(assert (=> bs!1379607 (= (and (= (regOne!32354 (regOne!32355 (regOne!32355 r!7292))) (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))) (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))))) (= lambda!320150 lambda!320147))))

(assert (=> b!5855233 true))

(assert (=> b!5855233 true))

(declare-fun b!5855227 () Bool)

(declare-fun c!1038262 () Bool)

(assert (=> b!5855227 (= c!1038262 ((_ is Union!15921) (regOne!32355 (regOne!32355 r!7292))))))

(declare-fun e!3590411 () Bool)

(declare-fun e!3590416 () Bool)

(assert (=> b!5855227 (= e!3590411 e!3590416)))

(declare-fun bm!458616 () Bool)

(declare-fun call!458621 () Bool)

(assert (=> bm!458616 (= call!458621 (isEmpty!35798 s!2326))))

(declare-fun b!5855229 () Bool)

(declare-fun e!3590412 () Bool)

(assert (=> b!5855229 (= e!3590416 e!3590412)))

(declare-fun res!2464592 () Bool)

(assert (=> b!5855229 (= res!2464592 (matchRSpec!3022 (regOne!32355 (regOne!32355 (regOne!32355 r!7292))) s!2326))))

(assert (=> b!5855229 (=> res!2464592 e!3590412)))

(declare-fun b!5855230 () Bool)

(assert (=> b!5855230 (= e!3590411 (= s!2326 (Cons!63940 (c!1037845 (regOne!32355 (regOne!32355 r!7292))) Nil!63940)))))

(declare-fun b!5855231 () Bool)

(assert (=> b!5855231 (= e!3590412 (matchRSpec!3022 (regTwo!32355 (regOne!32355 (regOne!32355 r!7292))) s!2326))))

(declare-fun b!5855232 () Bool)

(declare-fun c!1038263 () Bool)

(assert (=> b!5855232 (= c!1038263 ((_ is ElementMatch!15921) (regOne!32355 (regOne!32355 r!7292))))))

(declare-fun e!3590414 () Bool)

(assert (=> b!5855232 (= e!3590414 e!3590411)))

(declare-fun e!3590415 () Bool)

(declare-fun call!458622 () Bool)

(assert (=> b!5855233 (= e!3590415 call!458622)))

(declare-fun b!5855234 () Bool)

(assert (=> b!5855234 (= e!3590416 e!3590415)))

(declare-fun c!1038261 () Bool)

(assert (=> b!5855234 (= c!1038261 ((_ is Star!15921) (regOne!32355 (regOne!32355 r!7292))))))

(declare-fun b!5855235 () Bool)

(declare-fun e!3590413 () Bool)

(assert (=> b!5855235 (= e!3590413 call!458621)))

(declare-fun b!5855236 () Bool)

(assert (=> b!5855236 (= e!3590413 e!3590414)))

(declare-fun res!2464593 () Bool)

(assert (=> b!5855236 (= res!2464593 (not ((_ is EmptyLang!15921) (regOne!32355 (regOne!32355 r!7292)))))))

(assert (=> b!5855236 (=> (not res!2464593) (not e!3590414))))

(declare-fun e!3590417 () Bool)

(assert (=> b!5855237 (= e!3590417 call!458622)))

(declare-fun bm!458617 () Bool)

(assert (=> bm!458617 (= call!458622 (Exists!2993 (ite c!1038261 lambda!320149 lambda!320150)))))

(declare-fun b!5855228 () Bool)

(declare-fun res!2464591 () Bool)

(assert (=> b!5855228 (=> res!2464591 e!3590417)))

(assert (=> b!5855228 (= res!2464591 call!458621)))

(assert (=> b!5855228 (= e!3590415 e!3590417)))

(declare-fun d!1838886 () Bool)

(declare-fun c!1038260 () Bool)

(assert (=> d!1838886 (= c!1038260 ((_ is EmptyExpr!15921) (regOne!32355 (regOne!32355 r!7292))))))

(assert (=> d!1838886 (= (matchRSpec!3022 (regOne!32355 (regOne!32355 r!7292)) s!2326) e!3590413)))

(assert (= (and d!1838886 c!1038260) b!5855235))

(assert (= (and d!1838886 (not c!1038260)) b!5855236))

(assert (= (and b!5855236 res!2464593) b!5855232))

(assert (= (and b!5855232 c!1038263) b!5855230))

(assert (= (and b!5855232 (not c!1038263)) b!5855227))

(assert (= (and b!5855227 c!1038262) b!5855229))

(assert (= (and b!5855227 (not c!1038262)) b!5855234))

(assert (= (and b!5855229 (not res!2464592)) b!5855231))

(assert (= (and b!5855234 c!1038261) b!5855228))

(assert (= (and b!5855234 (not c!1038261)) b!5855233))

(assert (= (and b!5855228 (not res!2464591)) b!5855237))

(assert (= (or b!5855237 b!5855233) bm!458617))

(assert (= (or b!5855235 b!5855228) bm!458616))

(assert (=> bm!458616 m!6773046))

(declare-fun m!6773856 () Bool)

(assert (=> b!5855229 m!6773856))

(declare-fun m!6773858 () Bool)

(assert (=> b!5855231 m!6773858))

(declare-fun m!6773860 () Bool)

(assert (=> bm!458617 m!6773860))

(assert (=> b!5854468 d!1838886))

(declare-fun d!1838888 () Bool)

(assert (=> d!1838888 (= (isEmpty!35799 (exprs!5805 (h!70387 zl!343))) ((_ is Nil!63938) (exprs!5805 (h!70387 zl!343))))))

(assert (=> b!5854364 d!1838888))

(declare-fun d!1838890 () Bool)

(assert (=> d!1838890 (= (nullable!5921 (reg!16250 r!7292)) (nullableFct!1908 (reg!16250 r!7292)))))

(declare-fun bs!1379608 () Bool)

(assert (= bs!1379608 d!1838890))

(declare-fun m!6773862 () Bool)

(assert (=> bs!1379608 m!6773862))

(assert (=> b!5854298 d!1838890))

(assert (=> b!5854455 d!1838808))

(assert (=> b!5854455 d!1838810))

(declare-fun bs!1379609 () Bool)

(declare-fun d!1838892 () Bool)

(assert (= bs!1379609 (and d!1838892 d!1838520)))

(declare-fun lambda!320151 () Int)

(assert (=> bs!1379609 (= lambda!320151 lambda!320099)))

(declare-fun bs!1379610 () Bool)

(assert (= bs!1379610 (and d!1838892 d!1838554)))

(assert (=> bs!1379610 (= lambda!320151 lambda!320112)))

(declare-fun bs!1379611 () Bool)

(assert (= bs!1379611 (and d!1838892 d!1838548)))

(assert (=> bs!1379611 (= lambda!320151 lambda!320106)))

(declare-fun bs!1379612 () Bool)

(assert (= bs!1379612 (and d!1838892 d!1838858)))

(assert (=> bs!1379612 (= lambda!320151 lambda!320145)))

(declare-fun bs!1379613 () Bool)

(assert (= bs!1379613 (and d!1838892 d!1838560)))

(assert (=> bs!1379613 (= lambda!320151 lambda!320113)))

(declare-fun bs!1379614 () Bool)

(assert (= bs!1379614 (and d!1838892 d!1838572)))

(assert (=> bs!1379614 (= lambda!320151 lambda!320114)))

(declare-fun bs!1379615 () Bool)

(assert (= bs!1379615 (and d!1838892 d!1838550)))

(assert (=> bs!1379615 (= lambda!320151 lambda!320109)))

(declare-fun b!5855238 () Bool)

(declare-fun e!3590419 () Regex!15921)

(declare-fun e!3590420 () Regex!15921)

(assert (=> b!5855238 (= e!3590419 e!3590420)))

(declare-fun c!1038265 () Bool)

(assert (=> b!5855238 (= c!1038265 ((_ is Cons!63938) (t!377427 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5855239 () Bool)

(assert (=> b!5855239 (= e!3590420 (Union!15921 (h!70386 (t!377427 (unfocusZipperList!1342 zl!343))) (generalisedUnion!1765 (t!377427 (t!377427 (unfocusZipperList!1342 zl!343))))))))

(declare-fun e!3590423 () Bool)

(assert (=> d!1838892 e!3590423))

(declare-fun res!2464595 () Bool)

(assert (=> d!1838892 (=> (not res!2464595) (not e!3590423))))

(declare-fun lt!2304786 () Regex!15921)

(assert (=> d!1838892 (= res!2464595 (validRegex!7657 lt!2304786))))

(assert (=> d!1838892 (= lt!2304786 e!3590419)))

(declare-fun c!1038264 () Bool)

(declare-fun e!3590421 () Bool)

(assert (=> d!1838892 (= c!1038264 e!3590421)))

(declare-fun res!2464594 () Bool)

(assert (=> d!1838892 (=> (not res!2464594) (not e!3590421))))

(assert (=> d!1838892 (= res!2464594 ((_ is Cons!63938) (t!377427 (unfocusZipperList!1342 zl!343))))))

(assert (=> d!1838892 (forall!15008 (t!377427 (unfocusZipperList!1342 zl!343)) lambda!320151)))

(assert (=> d!1838892 (= (generalisedUnion!1765 (t!377427 (unfocusZipperList!1342 zl!343))) lt!2304786)))

(declare-fun b!5855240 () Bool)

(declare-fun e!3590422 () Bool)

(assert (=> b!5855240 (= e!3590422 (= lt!2304786 (head!12396 (t!377427 (unfocusZipperList!1342 zl!343)))))))

(declare-fun b!5855241 () Bool)

(assert (=> b!5855241 (= e!3590422 (isUnion!793 lt!2304786))))

(declare-fun b!5855242 () Bool)

(declare-fun e!3590418 () Bool)

(assert (=> b!5855242 (= e!3590423 e!3590418)))

(declare-fun c!1038266 () Bool)

(assert (=> b!5855242 (= c!1038266 (isEmpty!35799 (t!377427 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5855243 () Bool)

(assert (=> b!5855243 (= e!3590421 (isEmpty!35799 (t!377427 (t!377427 (unfocusZipperList!1342 zl!343)))))))

(declare-fun b!5855244 () Bool)

(assert (=> b!5855244 (= e!3590418 e!3590422)))

(declare-fun c!1038267 () Bool)

(assert (=> b!5855244 (= c!1038267 (isEmpty!35799 (tail!11481 (t!377427 (unfocusZipperList!1342 zl!343)))))))

(declare-fun b!5855245 () Bool)

(assert (=> b!5855245 (= e!3590418 (isEmptyLang!1363 lt!2304786))))

(declare-fun b!5855246 () Bool)

(assert (=> b!5855246 (= e!3590420 EmptyLang!15921)))

(declare-fun b!5855247 () Bool)

(assert (=> b!5855247 (= e!3590419 (h!70386 (t!377427 (unfocusZipperList!1342 zl!343))))))

(assert (= (and d!1838892 res!2464594) b!5855243))

(assert (= (and d!1838892 c!1038264) b!5855247))

(assert (= (and d!1838892 (not c!1038264)) b!5855238))

(assert (= (and b!5855238 c!1038265) b!5855239))

(assert (= (and b!5855238 (not c!1038265)) b!5855246))

(assert (= (and d!1838892 res!2464595) b!5855242))

(assert (= (and b!5855242 c!1038266) b!5855245))

(assert (= (and b!5855242 (not c!1038266)) b!5855244))

(assert (= (and b!5855244 c!1038267) b!5855240))

(assert (= (and b!5855244 (not c!1038267)) b!5855241))

(declare-fun m!6773864 () Bool)

(assert (=> b!5855241 m!6773864))

(declare-fun m!6773866 () Bool)

(assert (=> d!1838892 m!6773866))

(declare-fun m!6773868 () Bool)

(assert (=> d!1838892 m!6773868))

(declare-fun m!6773870 () Bool)

(assert (=> b!5855239 m!6773870))

(declare-fun m!6773872 () Bool)

(assert (=> b!5855244 m!6773872))

(assert (=> b!5855244 m!6773872))

(declare-fun m!6773874 () Bool)

(assert (=> b!5855244 m!6773874))

(declare-fun m!6773876 () Bool)

(assert (=> b!5855245 m!6773876))

(assert (=> b!5855242 m!6773186))

(declare-fun m!6773878 () Bool)

(assert (=> b!5855240 m!6773878))

(declare-fun m!6773880 () Bool)

(assert (=> b!5855243 m!6773880))

(assert (=> b!5854327 d!1838892))

(declare-fun b!5855248 () Bool)

(declare-fun e!3590427 () (InoxSet Context!10610))

(declare-fun call!458626 () (InoxSet Context!10610))

(declare-fun call!458624 () (InoxSet Context!10610))

(assert (=> b!5855248 (= e!3590427 ((_ map or) call!458626 call!458624))))

(declare-fun b!5855249 () Bool)

(declare-fun e!3590429 () (InoxSet Context!10610))

(declare-fun call!458623 () (InoxSet Context!10610))

(assert (=> b!5855249 (= e!3590429 call!458623)))

(declare-fun b!5855250 () Bool)

(declare-fun e!3590424 () Bool)

(assert (=> b!5855250 (= e!3590424 (nullable!5921 (regOne!32354 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))))))))

(declare-fun c!1038269 () Bool)

(declare-fun d!1838894 () Bool)

(assert (=> d!1838894 (= c!1038269 (and ((_ is ElementMatch!15921) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (= (c!1037845 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (h!70388 s!2326))))))

(declare-fun e!3590426 () (InoxSet Context!10610))

(assert (=> d!1838894 (= (derivationStepZipperDown!1187 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))) (ite c!1038049 lt!2304692 (Context!10611 call!458453)) (h!70388 s!2326)) e!3590426)))

(declare-fun b!5855251 () Bool)

(declare-fun e!3590425 () (InoxSet Context!10610))

(assert (=> b!5855251 (= e!3590426 e!3590425)))

(declare-fun c!1038268 () Bool)

(assert (=> b!5855251 (= c!1038268 ((_ is Union!15921) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))))))

(declare-fun b!5855252 () Bool)

(declare-fun e!3590428 () (InoxSet Context!10610))

(assert (=> b!5855252 (= e!3590427 e!3590428)))

(declare-fun c!1038272 () Bool)

(assert (=> b!5855252 (= c!1038272 ((_ is Concat!24766) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))))))

(declare-fun b!5855253 () Bool)

(declare-fun c!1038270 () Bool)

(assert (=> b!5855253 (= c!1038270 ((_ is Star!15921) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))))))

(assert (=> b!5855253 (= e!3590428 e!3590429)))

(declare-fun call!458625 () List!64062)

(declare-fun call!458628 () (InoxSet Context!10610))

(declare-fun c!1038271 () Bool)

(declare-fun bm!458618 () Bool)

(assert (=> bm!458618 (= call!458628 (derivationStepZipperDown!1187 (ite c!1038268 (regTwo!32355 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (ite c!1038271 (regTwo!32354 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (ite c!1038272 (regOne!32354 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (reg!16250 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))))))) (ite (or c!1038268 c!1038271) (ite c!1038049 lt!2304692 (Context!10611 call!458453)) (Context!10611 call!458625)) (h!70388 s!2326)))))

(declare-fun b!5855254 () Bool)

(assert (=> b!5855254 (= e!3590429 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458619 () Bool)

(declare-fun call!458627 () List!64062)

(assert (=> bm!458619 (= call!458625 call!458627)))

(declare-fun bm!458620 () Bool)

(assert (=> bm!458620 (= call!458624 call!458628)))

(declare-fun b!5855255 () Bool)

(assert (=> b!5855255 (= c!1038271 e!3590424)))

(declare-fun res!2464596 () Bool)

(assert (=> b!5855255 (=> (not res!2464596) (not e!3590424))))

(assert (=> b!5855255 (= res!2464596 ((_ is Concat!24766) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))))))

(assert (=> b!5855255 (= e!3590425 e!3590427)))

(declare-fun b!5855256 () Bool)

(assert (=> b!5855256 (= e!3590425 ((_ map or) call!458626 call!458628))))

(declare-fun bm!458621 () Bool)

(assert (=> bm!458621 (= call!458623 call!458624)))

(declare-fun b!5855257 () Bool)

(assert (=> b!5855257 (= e!3590426 (store ((as const (Array Context!10610 Bool)) false) (ite c!1038049 lt!2304692 (Context!10611 call!458453)) true))))

(declare-fun bm!458622 () Bool)

(assert (=> bm!458622 (= call!458626 (derivationStepZipperDown!1187 (ite c!1038268 (regOne!32355 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (regOne!32354 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))))) (ite c!1038268 (ite c!1038049 lt!2304692 (Context!10611 call!458453)) (Context!10611 call!458627)) (h!70388 s!2326)))))

(declare-fun bm!458623 () Bool)

(assert (=> bm!458623 (= call!458627 ($colon$colon!1826 (exprs!5805 (ite c!1038049 lt!2304692 (Context!10611 call!458453))) (ite (or c!1038271 c!1038272) (regTwo!32354 (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292)))) (ite c!1038049 (regOne!32355 (regOne!32355 r!7292)) (regOne!32354 (regOne!32355 r!7292))))))))

(declare-fun b!5855258 () Bool)

(assert (=> b!5855258 (= e!3590428 call!458623)))

(assert (= (and d!1838894 c!1038269) b!5855257))

(assert (= (and d!1838894 (not c!1038269)) b!5855251))

(assert (= (and b!5855251 c!1038268) b!5855256))

(assert (= (and b!5855251 (not c!1038268)) b!5855255))

(assert (= (and b!5855255 res!2464596) b!5855250))

(assert (= (and b!5855255 c!1038271) b!5855248))

(assert (= (and b!5855255 (not c!1038271)) b!5855252))

(assert (= (and b!5855252 c!1038272) b!5855258))

(assert (= (and b!5855252 (not c!1038272)) b!5855253))

(assert (= (and b!5855253 c!1038270) b!5855249))

(assert (= (and b!5855253 (not c!1038270)) b!5855254))

(assert (= (or b!5855258 b!5855249) bm!458619))

(assert (= (or b!5855258 b!5855249) bm!458621))

(assert (= (or b!5855248 bm!458619) bm!458623))

(assert (= (or b!5855248 bm!458621) bm!458620))

(assert (= (or b!5855256 bm!458620) bm!458618))

(assert (= (or b!5855256 b!5855248) bm!458622))

(declare-fun m!6773882 () Bool)

(assert (=> b!5855250 m!6773882))

(declare-fun m!6773884 () Bool)

(assert (=> bm!458622 m!6773884))

(declare-fun m!6773886 () Bool)

(assert (=> bm!458623 m!6773886))

(declare-fun m!6773888 () Bool)

(assert (=> bm!458618 m!6773888))

(declare-fun m!6773890 () Bool)

(assert (=> b!5855257 m!6773890))

(assert (=> bm!458448 d!1838894))

(assert (=> b!5854128 d!1838808))

(assert (=> b!5854128 d!1838810))

(assert (=> b!5854485 d!1838812))

(declare-fun d!1838896 () Bool)

(assert (=> d!1838896 (= (isEmptyExpr!1356 lt!2304761) ((_ is EmptyExpr!15921) lt!2304761))))

(assert (=> b!5854363 d!1838896))

(assert (=> bs!1379389 d!1838534))

(declare-fun d!1838898 () Bool)

(declare-fun c!1038273 () Bool)

(assert (=> d!1838898 (= c!1038273 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun e!3590430 () Bool)

(assert (=> d!1838898 (= (matchZipper!1987 (derivationStepZipper!1920 z!1189 (head!12395 s!2326)) (tail!11480 s!2326)) e!3590430)))

(declare-fun b!5855259 () Bool)

(assert (=> b!5855259 (= e!3590430 (nullableZipper!1760 (derivationStepZipper!1920 z!1189 (head!12395 s!2326))))))

(declare-fun b!5855260 () Bool)

(assert (=> b!5855260 (= e!3590430 (matchZipper!1987 (derivationStepZipper!1920 (derivationStepZipper!1920 z!1189 (head!12395 s!2326)) (head!12395 (tail!11480 s!2326))) (tail!11480 (tail!11480 s!2326))))))

(assert (= (and d!1838898 c!1038273) b!5855259))

(assert (= (and d!1838898 (not c!1038273)) b!5855260))

(assert (=> d!1838898 m!6773056))

(assert (=> d!1838898 m!6773060))

(assert (=> b!5855259 m!6773244))

(declare-fun m!6773892 () Bool)

(assert (=> b!5855259 m!6773892))

(assert (=> b!5855260 m!6773056))

(assert (=> b!5855260 m!6773728))

(assert (=> b!5855260 m!6773244))

(assert (=> b!5855260 m!6773728))

(declare-fun m!6773894 () Bool)

(assert (=> b!5855260 m!6773894))

(assert (=> b!5855260 m!6773056))

(assert (=> b!5855260 m!6773724))

(assert (=> b!5855260 m!6773894))

(assert (=> b!5855260 m!6773724))

(declare-fun m!6773896 () Bool)

(assert (=> b!5855260 m!6773896))

(assert (=> b!5854416 d!1838898))

(declare-fun bs!1379616 () Bool)

(declare-fun d!1838900 () Bool)

(assert (= bs!1379616 (and d!1838900 b!5853752)))

(declare-fun lambda!320152 () Int)

(assert (=> bs!1379616 (= (= (head!12395 s!2326) (h!70388 s!2326)) (= lambda!320152 lambda!320064))))

(declare-fun bs!1379617 () Bool)

(assert (= bs!1379617 (and d!1838900 d!1838530)))

(assert (=> bs!1379617 (= (= (head!12395 s!2326) (h!70388 s!2326)) (= lambda!320152 lambda!320102))))

(declare-fun bs!1379618 () Bool)

(assert (= bs!1379618 (and d!1838900 d!1838878)))

(assert (=> bs!1379618 (= (= (head!12395 s!2326) (head!12395 (t!377429 s!2326))) (= lambda!320152 lambda!320148))))

(assert (=> d!1838900 true))

(assert (=> d!1838900 (= (derivationStepZipper!1920 z!1189 (head!12395 s!2326)) (flatMap!1452 z!1189 lambda!320152))))

(declare-fun bs!1379619 () Bool)

(assert (= bs!1379619 d!1838900))

(declare-fun m!6773898 () Bool)

(assert (=> bs!1379619 m!6773898))

(assert (=> b!5854416 d!1838900))

(assert (=> b!5854416 d!1838812))

(assert (=> b!5854416 d!1838810))

(assert (=> b!5854340 d!1838554))

(declare-fun bs!1379620 () Bool)

(declare-fun d!1838902 () Bool)

(assert (= bs!1379620 (and d!1838902 d!1838520)))

(declare-fun lambda!320153 () Int)

(assert (=> bs!1379620 (= lambda!320153 lambda!320099)))

(declare-fun bs!1379621 () Bool)

(assert (= bs!1379621 (and d!1838902 d!1838554)))

(assert (=> bs!1379621 (= lambda!320153 lambda!320112)))

(declare-fun bs!1379622 () Bool)

(assert (= bs!1379622 (and d!1838902 d!1838548)))

(assert (=> bs!1379622 (= lambda!320153 lambda!320106)))

(declare-fun bs!1379623 () Bool)

(assert (= bs!1379623 (and d!1838902 d!1838858)))

(assert (=> bs!1379623 (= lambda!320153 lambda!320145)))

(declare-fun bs!1379624 () Bool)

(assert (= bs!1379624 (and d!1838902 d!1838892)))

(assert (=> bs!1379624 (= lambda!320153 lambda!320151)))

(declare-fun bs!1379625 () Bool)

(assert (= bs!1379625 (and d!1838902 d!1838560)))

(assert (=> bs!1379625 (= lambda!320153 lambda!320113)))

(declare-fun bs!1379626 () Bool)

(assert (= bs!1379626 (and d!1838902 d!1838572)))

(assert (=> bs!1379626 (= lambda!320153 lambda!320114)))

(declare-fun bs!1379627 () Bool)

(assert (= bs!1379627 (and d!1838902 d!1838550)))

(assert (=> bs!1379627 (= lambda!320153 lambda!320109)))

(declare-fun lt!2304787 () List!64062)

(assert (=> d!1838902 (forall!15008 lt!2304787 lambda!320153)))

(declare-fun e!3590431 () List!64062)

(assert (=> d!1838902 (= lt!2304787 e!3590431)))

(declare-fun c!1038274 () Bool)

(assert (=> d!1838902 (= c!1038274 ((_ is Cons!63939) (t!377428 zl!343)))))

(assert (=> d!1838902 (= (unfocusZipperList!1342 (t!377428 zl!343)) lt!2304787)))

(declare-fun b!5855261 () Bool)

(assert (=> b!5855261 (= e!3590431 (Cons!63938 (generalisedConcat!1518 (exprs!5805 (h!70387 (t!377428 zl!343)))) (unfocusZipperList!1342 (t!377428 (t!377428 zl!343)))))))

(declare-fun b!5855262 () Bool)

(assert (=> b!5855262 (= e!3590431 Nil!63938)))

(assert (= (and d!1838902 c!1038274) b!5855261))

(assert (= (and d!1838902 (not c!1038274)) b!5855262))

(declare-fun m!6773900 () Bool)

(assert (=> d!1838902 m!6773900))

(declare-fun m!6773902 () Bool)

(assert (=> b!5855261 m!6773902))

(declare-fun m!6773904 () Bool)

(assert (=> b!5855261 m!6773904))

(assert (=> b!5854340 d!1838902))

(declare-fun d!1838904 () Bool)

(assert (=> d!1838904 (= ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038037 c!1038038) (regTwo!32354 r!7292) r!7292)) (Cons!63938 (ite (or c!1038037 c!1038038) (regTwo!32354 r!7292) r!7292) (exprs!5805 lt!2304692)))))

(assert (=> bm!458436 d!1838904))

(assert (=> bm!458384 d!1838818))

(declare-fun b!5855263 () Bool)

(declare-fun e!3590435 () (InoxSet Context!10610))

(declare-fun call!458632 () (InoxSet Context!10610))

(declare-fun call!458630 () (InoxSet Context!10610))

(assert (=> b!5855263 (= e!3590435 ((_ map or) call!458632 call!458630))))

(declare-fun b!5855264 () Bool)

(declare-fun e!3590437 () (InoxSet Context!10610))

(declare-fun call!458629 () (InoxSet Context!10610))

(assert (=> b!5855264 (= e!3590437 call!458629)))

(declare-fun e!3590432 () Bool)

(declare-fun b!5855265 () Bool)

(assert (=> b!5855265 (= e!3590432 (nullable!5921 (regOne!32354 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))))))))

(declare-fun d!1838906 () Bool)

(declare-fun c!1038276 () Bool)

(assert (=> d!1838906 (= c!1038276 (and ((_ is ElementMatch!15921) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (= (c!1037845 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (h!70388 s!2326))))))

(declare-fun e!3590434 () (InoxSet Context!10610))

(assert (=> d!1838906 (= (derivationStepZipperDown!1187 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))) (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451)) (h!70388 s!2326)) e!3590434)))

(declare-fun b!5855266 () Bool)

(declare-fun e!3590433 () (InoxSet Context!10610))

(assert (=> b!5855266 (= e!3590434 e!3590433)))

(declare-fun c!1038275 () Bool)

(assert (=> b!5855266 (= c!1038275 ((_ is Union!15921) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))))))

(declare-fun b!5855267 () Bool)

(declare-fun e!3590436 () (InoxSet Context!10610))

(assert (=> b!5855267 (= e!3590435 e!3590436)))

(declare-fun c!1038279 () Bool)

(assert (=> b!5855267 (= c!1038279 ((_ is Concat!24766) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))))))

(declare-fun c!1038277 () Bool)

(declare-fun b!5855268 () Bool)

(assert (=> b!5855268 (= c!1038277 ((_ is Star!15921) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))))))

(assert (=> b!5855268 (= e!3590436 e!3590437)))

(declare-fun call!458631 () List!64062)

(declare-fun c!1038278 () Bool)

(declare-fun bm!458624 () Bool)

(declare-fun call!458634 () (InoxSet Context!10610))

(assert (=> bm!458624 (= call!458634 (derivationStepZipperDown!1187 (ite c!1038275 (regTwo!32355 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (ite c!1038278 (regTwo!32354 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (ite c!1038279 (regOne!32354 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (reg!16250 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))))))) (ite (or c!1038275 c!1038278) (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451)) (Context!10611 call!458631)) (h!70388 s!2326)))))

(declare-fun b!5855269 () Bool)

(assert (=> b!5855269 (= e!3590437 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458625 () Bool)

(declare-fun call!458633 () List!64062)

(assert (=> bm!458625 (= call!458631 call!458633)))

(declare-fun bm!458626 () Bool)

(assert (=> bm!458626 (= call!458630 call!458634)))

(declare-fun b!5855270 () Bool)

(assert (=> b!5855270 (= c!1038278 e!3590432)))

(declare-fun res!2464597 () Bool)

(assert (=> b!5855270 (=> (not res!2464597) (not e!3590432))))

(assert (=> b!5855270 (= res!2464597 ((_ is Concat!24766) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))))))

(assert (=> b!5855270 (= e!3590433 e!3590435)))

(declare-fun b!5855271 () Bool)

(assert (=> b!5855271 (= e!3590433 ((_ map or) call!458632 call!458634))))

(declare-fun bm!458627 () Bool)

(assert (=> bm!458627 (= call!458629 call!458630)))

(declare-fun b!5855272 () Bool)

(assert (=> b!5855272 (= e!3590434 (store ((as const (Array Context!10610 Bool)) false) (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451)) true))))

(declare-fun bm!458628 () Bool)

(assert (=> bm!458628 (= call!458632 (derivationStepZipperDown!1187 (ite c!1038275 (regOne!32355 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (regOne!32354 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))))) (ite c!1038275 (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451)) (Context!10611 call!458633)) (h!70388 s!2326)))))

(declare-fun bm!458629 () Bool)

(assert (=> bm!458629 (= call!458633 ($colon$colon!1826 (exprs!5805 (ite (or c!1038049 c!1038052) lt!2304692 (Context!10611 call!458451))) (ite (or c!1038278 c!1038279) (regTwo!32354 (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292)))))) (ite c!1038049 (regTwo!32355 (regOne!32355 r!7292)) (ite c!1038052 (regTwo!32354 (regOne!32355 r!7292)) (ite c!1038053 (regOne!32354 (regOne!32355 r!7292)) (reg!16250 (regOne!32355 r!7292))))))))))

(declare-fun b!5855273 () Bool)

(assert (=> b!5855273 (= e!3590436 call!458629)))

(assert (= (and d!1838906 c!1038276) b!5855272))

(assert (= (and d!1838906 (not c!1038276)) b!5855266))

(assert (= (and b!5855266 c!1038275) b!5855271))

(assert (= (and b!5855266 (not c!1038275)) b!5855270))

(assert (= (and b!5855270 res!2464597) b!5855265))

(assert (= (and b!5855270 c!1038278) b!5855263))

(assert (= (and b!5855270 (not c!1038278)) b!5855267))

(assert (= (and b!5855267 c!1038279) b!5855273))

(assert (= (and b!5855267 (not c!1038279)) b!5855268))

(assert (= (and b!5855268 c!1038277) b!5855264))

(assert (= (and b!5855268 (not c!1038277)) b!5855269))

(assert (= (or b!5855273 b!5855264) bm!458625))

(assert (= (or b!5855273 b!5855264) bm!458627))

(assert (= (or b!5855263 bm!458625) bm!458629))

(assert (= (or b!5855263 bm!458627) bm!458626))

(assert (= (or b!5855271 bm!458626) bm!458624))

(assert (= (or b!5855271 b!5855263) bm!458628))

(declare-fun m!6773906 () Bool)

(assert (=> b!5855265 m!6773906))

(declare-fun m!6773908 () Bool)

(assert (=> bm!458628 m!6773908))

(declare-fun m!6773910 () Bool)

(assert (=> bm!458629 m!6773910))

(declare-fun m!6773912 () Bool)

(assert (=> bm!458624 m!6773912))

(declare-fun m!6773914 () Bool)

(assert (=> b!5855272 m!6773914))

(assert (=> bm!458444 d!1838906))

(declare-fun bm!458630 () Bool)

(declare-fun call!458637 () Bool)

(declare-fun call!458635 () Bool)

(assert (=> bm!458630 (= call!458637 call!458635)))

(declare-fun d!1838908 () Bool)

(declare-fun res!2464598 () Bool)

(declare-fun e!3590439 () Bool)

(assert (=> d!1838908 (=> res!2464598 e!3590439)))

(assert (=> d!1838908 (= res!2464598 ((_ is ElementMatch!15921) (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))

(assert (=> d!1838908 (= (validRegex!7657 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))) e!3590439)))

(declare-fun c!1038281 () Bool)

(declare-fun bm!458631 () Bool)

(declare-fun c!1038280 () Bool)

(assert (=> bm!458631 (= call!458635 (validRegex!7657 (ite c!1038280 (reg!16250 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))) (ite c!1038281 (regTwo!32355 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))) (regTwo!32354 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292))))))))))

(declare-fun b!5855274 () Bool)

(declare-fun e!3590440 () Bool)

(assert (=> b!5855274 (= e!3590440 call!458637)))

(declare-fun b!5855275 () Bool)

(declare-fun res!2464601 () Bool)

(declare-fun e!3590441 () Bool)

(assert (=> b!5855275 (=> res!2464601 e!3590441)))

(assert (=> b!5855275 (= res!2464601 (not ((_ is Concat!24766) (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292))))))))

(declare-fun e!3590444 () Bool)

(assert (=> b!5855275 (= e!3590444 e!3590441)))

(declare-fun b!5855276 () Bool)

(declare-fun e!3590442 () Bool)

(assert (=> b!5855276 (= e!3590442 call!458635)))

(declare-fun b!5855277 () Bool)

(declare-fun e!3590438 () Bool)

(assert (=> b!5855277 (= e!3590438 call!458637)))

(declare-fun b!5855278 () Bool)

(assert (=> b!5855278 (= e!3590441 e!3590440)))

(declare-fun res!2464602 () Bool)

(assert (=> b!5855278 (=> (not res!2464602) (not e!3590440))))

(declare-fun call!458636 () Bool)

(assert (=> b!5855278 (= res!2464602 call!458636)))

(declare-fun bm!458632 () Bool)

(assert (=> bm!458632 (= call!458636 (validRegex!7657 (ite c!1038281 (regOne!32355 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))) (regOne!32354 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))))

(declare-fun b!5855279 () Bool)

(declare-fun e!3590443 () Bool)

(assert (=> b!5855279 (= e!3590439 e!3590443)))

(assert (=> b!5855279 (= c!1038280 ((_ is Star!15921) (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))

(declare-fun b!5855280 () Bool)

(declare-fun res!2464600 () Bool)

(assert (=> b!5855280 (=> (not res!2464600) (not e!3590438))))

(assert (=> b!5855280 (= res!2464600 call!458636)))

(assert (=> b!5855280 (= e!3590444 e!3590438)))

(declare-fun b!5855281 () Bool)

(assert (=> b!5855281 (= e!3590443 e!3590442)))

(declare-fun res!2464599 () Bool)

(assert (=> b!5855281 (= res!2464599 (not (nullable!5921 (reg!16250 (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))))

(assert (=> b!5855281 (=> (not res!2464599) (not e!3590442))))

(declare-fun b!5855282 () Bool)

(assert (=> b!5855282 (= e!3590443 e!3590444)))

(assert (=> b!5855282 (= c!1038281 ((_ is Union!15921) (ite c!1037992 (reg!16250 r!7292) (ite c!1037993 (regTwo!32355 r!7292) (regTwo!32354 r!7292)))))))

(assert (= (and d!1838908 (not res!2464598)) b!5855279))

(assert (= (and b!5855279 c!1038280) b!5855281))

(assert (= (and b!5855279 (not c!1038280)) b!5855282))

(assert (= (and b!5855281 res!2464599) b!5855276))

(assert (= (and b!5855282 c!1038281) b!5855280))

(assert (= (and b!5855282 (not c!1038281)) b!5855275))

(assert (= (and b!5855280 res!2464600) b!5855277))

(assert (= (and b!5855275 (not res!2464601)) b!5855278))

(assert (= (and b!5855278 res!2464602) b!5855274))

(assert (= (or b!5855277 b!5855274) bm!458630))

(assert (= (or b!5855280 b!5855278) bm!458632))

(assert (= (or b!5855276 bm!458630) bm!458631))

(declare-fun m!6773916 () Bool)

(assert (=> bm!458631 m!6773916))

(declare-fun m!6773918 () Bool)

(assert (=> bm!458632 m!6773918))

(declare-fun m!6773920 () Bool)

(assert (=> b!5855281 m!6773920))

(assert (=> bm!458417 d!1838908))

(assert (=> d!1838568 d!1838818))

(assert (=> b!5854051 d!1838578))

(declare-fun d!1838910 () Bool)

(assert (=> d!1838910 (= (isEmpty!35799 (unfocusZipperList!1342 zl!343)) ((_ is Nil!63938) (unfocusZipperList!1342 zl!343)))))

(assert (=> b!5854330 d!1838910))

(declare-fun d!1838912 () Bool)

(assert (=> d!1838912 (= (isEmpty!35799 (tail!11481 (exprs!5805 (h!70387 zl!343)))) ((_ is Nil!63938) (tail!11481 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> b!5854371 d!1838912))

(declare-fun d!1838914 () Bool)

(assert (=> d!1838914 (= (tail!11481 (exprs!5805 (h!70387 zl!343))) (t!377427 (exprs!5805 (h!70387 zl!343))))))

(assert (=> b!5854371 d!1838914))

(declare-fun d!1838916 () Bool)

(declare-fun c!1038282 () Bool)

(assert (=> d!1838916 (= c!1038282 (isEmpty!35798 (tail!11480 (t!377429 s!2326))))))

(declare-fun e!3590445 () Bool)

(assert (=> d!1838916 (= (matchZipper!1987 (derivationStepZipper!1920 lt!2304701 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))) e!3590445)))

(declare-fun b!5855283 () Bool)

(assert (=> b!5855283 (= e!3590445 (nullableZipper!1760 (derivationStepZipper!1920 lt!2304701 (head!12395 (t!377429 s!2326)))))))

(declare-fun b!5855284 () Bool)

(assert (=> b!5855284 (= e!3590445 (matchZipper!1987 (derivationStepZipper!1920 (derivationStepZipper!1920 lt!2304701 (head!12395 (t!377429 s!2326))) (head!12395 (tail!11480 (t!377429 s!2326)))) (tail!11480 (tail!11480 (t!377429 s!2326)))))))

(assert (= (and d!1838916 c!1038282) b!5855283))

(assert (= (and d!1838916 (not c!1038282)) b!5855284))

(assert (=> d!1838916 m!6773164))

(assert (=> d!1838916 m!6773842))

(assert (=> b!5855283 m!6773250))

(declare-fun m!6773922 () Bool)

(assert (=> b!5855283 m!6773922))

(assert (=> b!5855284 m!6773164))

(assert (=> b!5855284 m!6773846))

(assert (=> b!5855284 m!6773250))

(assert (=> b!5855284 m!6773846))

(declare-fun m!6773924 () Bool)

(assert (=> b!5855284 m!6773924))

(assert (=> b!5855284 m!6773164))

(assert (=> b!5855284 m!6773850))

(assert (=> b!5855284 m!6773924))

(assert (=> b!5855284 m!6773850))

(declare-fun m!6773926 () Bool)

(assert (=> b!5855284 m!6773926))

(assert (=> b!5854418 d!1838916))

(declare-fun bs!1379628 () Bool)

(declare-fun d!1838918 () Bool)

(assert (= bs!1379628 (and d!1838918 b!5853752)))

(declare-fun lambda!320154 () Int)

(assert (=> bs!1379628 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320154 lambda!320064))))

(declare-fun bs!1379629 () Bool)

(assert (= bs!1379629 (and d!1838918 d!1838530)))

(assert (=> bs!1379629 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320154 lambda!320102))))

(declare-fun bs!1379630 () Bool)

(assert (= bs!1379630 (and d!1838918 d!1838878)))

(assert (=> bs!1379630 (= lambda!320154 lambda!320148)))

(declare-fun bs!1379631 () Bool)

(assert (= bs!1379631 (and d!1838918 d!1838900)))

(assert (=> bs!1379631 (= (= (head!12395 (t!377429 s!2326)) (head!12395 s!2326)) (= lambda!320154 lambda!320152))))

(assert (=> d!1838918 true))

(assert (=> d!1838918 (= (derivationStepZipper!1920 lt!2304701 (head!12395 (t!377429 s!2326))) (flatMap!1452 lt!2304701 lambda!320154))))

(declare-fun bs!1379632 () Bool)

(assert (= bs!1379632 d!1838918))

(declare-fun m!6773928 () Bool)

(assert (=> bs!1379632 m!6773928))

(assert (=> b!5854418 d!1838918))

(assert (=> b!5854418 d!1838880))

(assert (=> b!5854418 d!1838882))

(declare-fun bs!1379633 () Bool)

(declare-fun d!1838920 () Bool)

(assert (= bs!1379633 (and d!1838920 d!1838832)))

(declare-fun lambda!320155 () Int)

(assert (=> bs!1379633 (= lambda!320155 lambda!320144)))

(assert (=> d!1838920 (= (nullableZipper!1760 lt!2304694) (exists!2305 lt!2304694 lambda!320155))))

(declare-fun bs!1379634 () Bool)

(assert (= bs!1379634 d!1838920))

(declare-fun m!6773930 () Bool)

(assert (=> bs!1379634 m!6773930))

(assert (=> b!5854304 d!1838920))

(assert (=> b!5854489 d!1838808))

(assert (=> b!5854489 d!1838810))

(declare-fun bs!1379635 () Bool)

(declare-fun d!1838922 () Bool)

(assert (= bs!1379635 (and d!1838922 d!1838520)))

(declare-fun lambda!320156 () Int)

(assert (=> bs!1379635 (= lambda!320156 lambda!320099)))

(declare-fun bs!1379636 () Bool)

(assert (= bs!1379636 (and d!1838922 d!1838554)))

(assert (=> bs!1379636 (= lambda!320156 lambda!320112)))

(declare-fun bs!1379637 () Bool)

(assert (= bs!1379637 (and d!1838922 d!1838548)))

(assert (=> bs!1379637 (= lambda!320156 lambda!320106)))

(declare-fun bs!1379638 () Bool)

(assert (= bs!1379638 (and d!1838922 d!1838858)))

(assert (=> bs!1379638 (= lambda!320156 lambda!320145)))

(declare-fun bs!1379639 () Bool)

(assert (= bs!1379639 (and d!1838922 d!1838892)))

(assert (=> bs!1379639 (= lambda!320156 lambda!320151)))

(declare-fun bs!1379640 () Bool)

(assert (= bs!1379640 (and d!1838922 d!1838560)))

(assert (=> bs!1379640 (= lambda!320156 lambda!320113)))

(declare-fun bs!1379641 () Bool)

(assert (= bs!1379641 (and d!1838922 d!1838572)))

(assert (=> bs!1379641 (= lambda!320156 lambda!320114)))

(declare-fun bs!1379642 () Bool)

(assert (= bs!1379642 (and d!1838922 d!1838550)))

(assert (=> bs!1379642 (= lambda!320156 lambda!320109)))

(declare-fun bs!1379643 () Bool)

(assert (= bs!1379643 (and d!1838922 d!1838902)))

(assert (=> bs!1379643 (= lambda!320156 lambda!320153)))

(declare-fun b!5855285 () Bool)

(declare-fun e!3590449 () Bool)

(assert (=> b!5855285 (= e!3590449 (isEmpty!35799 (t!377427 (t!377427 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun b!5855286 () Bool)

(declare-fun e!3590447 () Bool)

(declare-fun lt!2304788 () Regex!15921)

(assert (=> b!5855286 (= e!3590447 (isEmptyExpr!1356 lt!2304788))))

(declare-fun b!5855287 () Bool)

(declare-fun e!3590446 () Bool)

(assert (=> b!5855287 (= e!3590446 e!3590447)))

(declare-fun c!1038283 () Bool)

(assert (=> b!5855287 (= c!1038283 (isEmpty!35799 (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855288 () Bool)

(declare-fun e!3590451 () Regex!15921)

(assert (=> b!5855288 (= e!3590451 EmptyExpr!15921)))

(declare-fun b!5855290 () Bool)

(assert (=> b!5855290 (= e!3590451 (Concat!24766 (h!70386 (t!377427 (exprs!5805 (h!70387 zl!343)))) (generalisedConcat!1518 (t!377427 (t!377427 (exprs!5805 (h!70387 zl!343)))))))))

(declare-fun b!5855291 () Bool)

(declare-fun e!3590448 () Bool)

(assert (=> b!5855291 (= e!3590448 (= lt!2304788 (head!12396 (t!377427 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun b!5855292 () Bool)

(declare-fun e!3590450 () Regex!15921)

(assert (=> b!5855292 (= e!3590450 e!3590451)))

(declare-fun c!1038285 () Bool)

(assert (=> b!5855292 (= c!1038285 ((_ is Cons!63938) (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855289 () Bool)

(assert (=> b!5855289 (= e!3590450 (h!70386 (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> d!1838922 e!3590446))

(declare-fun res!2464604 () Bool)

(assert (=> d!1838922 (=> (not res!2464604) (not e!3590446))))

(assert (=> d!1838922 (= res!2464604 (validRegex!7657 lt!2304788))))

(assert (=> d!1838922 (= lt!2304788 e!3590450)))

(declare-fun c!1038284 () Bool)

(assert (=> d!1838922 (= c!1038284 e!3590449)))

(declare-fun res!2464603 () Bool)

(assert (=> d!1838922 (=> (not res!2464603) (not e!3590449))))

(assert (=> d!1838922 (= res!2464603 ((_ is Cons!63938) (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> d!1838922 (forall!15008 (t!377427 (exprs!5805 (h!70387 zl!343))) lambda!320156)))

(assert (=> d!1838922 (= (generalisedConcat!1518 (t!377427 (exprs!5805 (h!70387 zl!343)))) lt!2304788)))

(declare-fun b!5855293 () Bool)

(assert (=> b!5855293 (= e!3590448 (isConcat!879 lt!2304788))))

(declare-fun b!5855294 () Bool)

(assert (=> b!5855294 (= e!3590447 e!3590448)))

(declare-fun c!1038286 () Bool)

(assert (=> b!5855294 (= c!1038286 (isEmpty!35799 (tail!11481 (t!377427 (exprs!5805 (h!70387 zl!343))))))))

(assert (= (and d!1838922 res!2464603) b!5855285))

(assert (= (and d!1838922 c!1038284) b!5855289))

(assert (= (and d!1838922 (not c!1038284)) b!5855292))

(assert (= (and b!5855292 c!1038285) b!5855290))

(assert (= (and b!5855292 (not c!1038285)) b!5855288))

(assert (= (and d!1838922 res!2464604) b!5855287))

(assert (= (and b!5855287 c!1038283) b!5855286))

(assert (= (and b!5855287 (not c!1038283)) b!5855294))

(assert (= (and b!5855294 c!1038286) b!5855291))

(assert (= (and b!5855294 (not c!1038286)) b!5855293))

(declare-fun m!6773932 () Bool)

(assert (=> d!1838922 m!6773932))

(declare-fun m!6773934 () Bool)

(assert (=> d!1838922 m!6773934))

(declare-fun m!6773936 () Bool)

(assert (=> b!5855286 m!6773936))

(declare-fun m!6773938 () Bool)

(assert (=> b!5855291 m!6773938))

(declare-fun m!6773940 () Bool)

(assert (=> b!5855294 m!6773940))

(assert (=> b!5855294 m!6773940))

(declare-fun m!6773942 () Bool)

(assert (=> b!5855294 m!6773942))

(declare-fun m!6773944 () Bool)

(assert (=> b!5855290 m!6773944))

(declare-fun m!6773946 () Bool)

(assert (=> b!5855293 m!6773946))

(declare-fun m!6773948 () Bool)

(assert (=> b!5855285 m!6773948))

(assert (=> b!5855287 m!6773210))

(assert (=> b!5854367 d!1838922))

(assert (=> d!1838570 d!1838804))

(assert (=> bm!458453 d!1838818))

(declare-fun b!5855295 () Bool)

(declare-fun e!3590455 () (InoxSet Context!10610))

(declare-fun call!458641 () (InoxSet Context!10610))

(declare-fun call!458639 () (InoxSet Context!10610))

(assert (=> b!5855295 (= e!3590455 ((_ map or) call!458641 call!458639))))

(declare-fun b!5855296 () Bool)

(declare-fun e!3590457 () (InoxSet Context!10610))

(declare-fun call!458638 () (InoxSet Context!10610))

(assert (=> b!5855296 (= e!3590457 call!458638)))

(declare-fun b!5855297 () Bool)

(declare-fun e!3590452 () Bool)

(assert (=> b!5855297 (= e!3590452 (nullable!5921 (regOne!32354 (h!70386 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun d!1838924 () Bool)

(declare-fun c!1038288 () Bool)

(assert (=> d!1838924 (= c!1038288 (and ((_ is ElementMatch!15921) (h!70386 (exprs!5805 (h!70387 zl!343)))) (= (c!1037845 (h!70386 (exprs!5805 (h!70387 zl!343)))) (h!70388 s!2326))))))

(declare-fun e!3590454 () (InoxSet Context!10610))

(assert (=> d!1838924 (= (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (h!70387 zl!343))) (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (h!70388 s!2326)) e!3590454)))

(declare-fun b!5855298 () Bool)

(declare-fun e!3590453 () (InoxSet Context!10610))

(assert (=> b!5855298 (= e!3590454 e!3590453)))

(declare-fun c!1038287 () Bool)

(assert (=> b!5855298 (= c!1038287 ((_ is Union!15921) (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855299 () Bool)

(declare-fun e!3590456 () (InoxSet Context!10610))

(assert (=> b!5855299 (= e!3590455 e!3590456)))

(declare-fun c!1038291 () Bool)

(assert (=> b!5855299 (= c!1038291 ((_ is Concat!24766) (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855300 () Bool)

(declare-fun c!1038289 () Bool)

(assert (=> b!5855300 (= c!1038289 ((_ is Star!15921) (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> b!5855300 (= e!3590456 e!3590457)))

(declare-fun bm!458633 () Bool)

(declare-fun c!1038290 () Bool)

(declare-fun call!458640 () List!64062)

(declare-fun call!458643 () (InoxSet Context!10610))

(assert (=> bm!458633 (= call!458643 (derivationStepZipperDown!1187 (ite c!1038287 (regTwo!32355 (h!70386 (exprs!5805 (h!70387 zl!343)))) (ite c!1038290 (regTwo!32354 (h!70386 (exprs!5805 (h!70387 zl!343)))) (ite c!1038291 (regOne!32354 (h!70386 (exprs!5805 (h!70387 zl!343)))) (reg!16250 (h!70386 (exprs!5805 (h!70387 zl!343))))))) (ite (or c!1038287 c!1038290) (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (Context!10611 call!458640)) (h!70388 s!2326)))))

(declare-fun b!5855301 () Bool)

(assert (=> b!5855301 (= e!3590457 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458634 () Bool)

(declare-fun call!458642 () List!64062)

(assert (=> bm!458634 (= call!458640 call!458642)))

(declare-fun bm!458635 () Bool)

(assert (=> bm!458635 (= call!458639 call!458643)))

(declare-fun b!5855302 () Bool)

(assert (=> b!5855302 (= c!1038290 e!3590452)))

(declare-fun res!2464605 () Bool)

(assert (=> b!5855302 (=> (not res!2464605) (not e!3590452))))

(assert (=> b!5855302 (= res!2464605 ((_ is Concat!24766) (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> b!5855302 (= e!3590453 e!3590455)))

(declare-fun b!5855303 () Bool)

(assert (=> b!5855303 (= e!3590453 ((_ map or) call!458641 call!458643))))

(declare-fun bm!458636 () Bool)

(assert (=> bm!458636 (= call!458638 call!458639)))

(declare-fun b!5855304 () Bool)

(assert (=> b!5855304 (= e!3590454 (store ((as const (Array Context!10610 Bool)) false) (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) true))))

(declare-fun bm!458637 () Bool)

(assert (=> bm!458637 (= call!458641 (derivationStepZipperDown!1187 (ite c!1038287 (regOne!32355 (h!70386 (exprs!5805 (h!70387 zl!343)))) (regOne!32354 (h!70386 (exprs!5805 (h!70387 zl!343))))) (ite c!1038287 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343)))) (Context!10611 call!458642)) (h!70388 s!2326)))))

(declare-fun bm!458638 () Bool)

(assert (=> bm!458638 (= call!458642 ($colon$colon!1826 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (h!70387 zl!343))))) (ite (or c!1038290 c!1038291) (regTwo!32354 (h!70386 (exprs!5805 (h!70387 zl!343)))) (h!70386 (exprs!5805 (h!70387 zl!343))))))))

(declare-fun b!5855305 () Bool)

(assert (=> b!5855305 (= e!3590456 call!458638)))

(assert (= (and d!1838924 c!1038288) b!5855304))

(assert (= (and d!1838924 (not c!1038288)) b!5855298))

(assert (= (and b!5855298 c!1038287) b!5855303))

(assert (= (and b!5855298 (not c!1038287)) b!5855302))

(assert (= (and b!5855302 res!2464605) b!5855297))

(assert (= (and b!5855302 c!1038290) b!5855295))

(assert (= (and b!5855302 (not c!1038290)) b!5855299))

(assert (= (and b!5855299 c!1038291) b!5855305))

(assert (= (and b!5855299 (not c!1038291)) b!5855300))

(assert (= (and b!5855300 c!1038289) b!5855296))

(assert (= (and b!5855300 (not c!1038289)) b!5855301))

(assert (= (or b!5855305 b!5855296) bm!458634))

(assert (= (or b!5855305 b!5855296) bm!458636))

(assert (= (or b!5855295 bm!458634) bm!458638))

(assert (= (or b!5855295 bm!458636) bm!458635))

(assert (= (or b!5855303 bm!458635) bm!458633))

(assert (= (or b!5855303 b!5855295) bm!458637))

(declare-fun m!6773950 () Bool)

(assert (=> b!5855297 m!6773950))

(declare-fun m!6773952 () Bool)

(assert (=> bm!458637 m!6773952))

(declare-fun m!6773954 () Bool)

(assert (=> bm!458638 m!6773954))

(declare-fun m!6773956 () Bool)

(assert (=> bm!458633 m!6773956))

(declare-fun m!6773958 () Bool)

(assert (=> b!5855304 m!6773958))

(assert (=> bm!458409 d!1838924))

(declare-fun b!5855306 () Bool)

(declare-fun e!3590461 () (InoxSet Context!10610))

(declare-fun call!458647 () (InoxSet Context!10610))

(declare-fun call!458645 () (InoxSet Context!10610))

(assert (=> b!5855306 (= e!3590461 ((_ map or) call!458647 call!458645))))

(declare-fun b!5855307 () Bool)

(declare-fun e!3590463 () (InoxSet Context!10610))

(declare-fun call!458644 () (InoxSet Context!10610))

(assert (=> b!5855307 (= e!3590463 call!458644)))

(declare-fun b!5855308 () Bool)

(declare-fun e!3590458 () Bool)

(assert (=> b!5855308 (= e!3590458 (nullable!5921 (regOne!32354 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))))))))

(declare-fun c!1038293 () Bool)

(declare-fun d!1838926 () Bool)

(assert (=> d!1838926 (= c!1038293 (and ((_ is ElementMatch!15921) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (= (c!1037845 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (h!70388 s!2326))))))

(declare-fun e!3590460 () (InoxSet Context!10610))

(assert (=> d!1838926 (= (derivationStepZipperDown!1187 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))) (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438)) (h!70388 s!2326)) e!3590460)))

(declare-fun b!5855309 () Bool)

(declare-fun e!3590459 () (InoxSet Context!10610))

(assert (=> b!5855309 (= e!3590460 e!3590459)))

(declare-fun c!1038292 () Bool)

(assert (=> b!5855309 (= c!1038292 ((_ is Union!15921) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))))))

(declare-fun b!5855310 () Bool)

(declare-fun e!3590462 () (InoxSet Context!10610))

(assert (=> b!5855310 (= e!3590461 e!3590462)))

(declare-fun c!1038296 () Bool)

(assert (=> b!5855310 (= c!1038296 ((_ is Concat!24766) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))))))

(declare-fun c!1038294 () Bool)

(declare-fun b!5855311 () Bool)

(assert (=> b!5855311 (= c!1038294 ((_ is Star!15921) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))))))

(assert (=> b!5855311 (= e!3590462 e!3590463)))

(declare-fun call!458646 () List!64062)

(declare-fun call!458649 () (InoxSet Context!10610))

(declare-fun c!1038295 () Bool)

(declare-fun bm!458639 () Bool)

(assert (=> bm!458639 (= call!458649 (derivationStepZipperDown!1187 (ite c!1038292 (regTwo!32355 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (ite c!1038295 (regTwo!32354 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (ite c!1038296 (regOne!32354 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (reg!16250 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))))))) (ite (or c!1038292 c!1038295) (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438)) (Context!10611 call!458646)) (h!70388 s!2326)))))

(declare-fun b!5855312 () Bool)

(assert (=> b!5855312 (= e!3590463 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458640 () Bool)

(declare-fun call!458648 () List!64062)

(assert (=> bm!458640 (= call!458646 call!458648)))

(declare-fun bm!458641 () Bool)

(assert (=> bm!458641 (= call!458645 call!458649)))

(declare-fun b!5855313 () Bool)

(assert (=> b!5855313 (= c!1038295 e!3590458)))

(declare-fun res!2464606 () Bool)

(assert (=> b!5855313 (=> (not res!2464606) (not e!3590458))))

(assert (=> b!5855313 (= res!2464606 ((_ is Concat!24766) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))))))

(assert (=> b!5855313 (= e!3590459 e!3590461)))

(declare-fun b!5855314 () Bool)

(assert (=> b!5855314 (= e!3590459 ((_ map or) call!458647 call!458649))))

(declare-fun bm!458642 () Bool)

(assert (=> bm!458642 (= call!458644 call!458645)))

(declare-fun b!5855315 () Bool)

(assert (=> b!5855315 (= e!3590460 (store ((as const (Array Context!10610 Bool)) false) (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438)) true))))

(declare-fun bm!458643 () Bool)

(assert (=> bm!458643 (= call!458647 (derivationStepZipperDown!1187 (ite c!1038292 (regOne!32355 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (regOne!32354 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))))) (ite c!1038292 (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438)) (Context!10611 call!458648)) (h!70388 s!2326)))))

(declare-fun bm!458644 () Bool)

(assert (=> bm!458644 (= call!458648 ($colon$colon!1826 (exprs!5805 (ite (or c!1038034 c!1038037) lt!2304692 (Context!10611 call!458438))) (ite (or c!1038295 c!1038296) (regTwo!32354 (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292))))) (ite c!1038034 (regTwo!32355 r!7292) (ite c!1038037 (regTwo!32354 r!7292) (ite c!1038038 (regOne!32354 r!7292) (reg!16250 r!7292)))))))))

(declare-fun b!5855316 () Bool)

(assert (=> b!5855316 (= e!3590462 call!458644)))

(assert (= (and d!1838926 c!1038293) b!5855315))

(assert (= (and d!1838926 (not c!1038293)) b!5855309))

(assert (= (and b!5855309 c!1038292) b!5855314))

(assert (= (and b!5855309 (not c!1038292)) b!5855313))

(assert (= (and b!5855313 res!2464606) b!5855308))

(assert (= (and b!5855313 c!1038295) b!5855306))

(assert (= (and b!5855313 (not c!1038295)) b!5855310))

(assert (= (and b!5855310 c!1038296) b!5855316))

(assert (= (and b!5855310 (not c!1038296)) b!5855311))

(assert (= (and b!5855311 c!1038294) b!5855307))

(assert (= (and b!5855311 (not c!1038294)) b!5855312))

(assert (= (or b!5855316 b!5855307) bm!458640))

(assert (= (or b!5855316 b!5855307) bm!458642))

(assert (= (or b!5855306 bm!458640) bm!458644))

(assert (= (or b!5855306 bm!458642) bm!458641))

(assert (= (or b!5855314 bm!458641) bm!458639))

(assert (= (or b!5855314 b!5855306) bm!458643))

(declare-fun m!6773960 () Bool)

(assert (=> b!5855308 m!6773960))

(declare-fun m!6773962 () Bool)

(assert (=> bm!458643 m!6773962))

(declare-fun m!6773964 () Bool)

(assert (=> bm!458644 m!6773964))

(declare-fun m!6773966 () Bool)

(assert (=> bm!458639 m!6773966))

(declare-fun m!6773968 () Bool)

(assert (=> b!5855315 m!6773968))

(assert (=> bm!458431 d!1838926))

(assert (=> d!1838584 d!1838582))

(assert (=> d!1838584 d!1838578))

(declare-fun d!1838928 () Bool)

(assert (=> d!1838928 (= (matchR!8104 (regTwo!32355 r!7292) s!2326) (matchRSpec!3022 (regTwo!32355 r!7292) s!2326))))

(assert (=> d!1838928 true))

(declare-fun _$88!4269 () Unit!157113)

(assert (=> d!1838928 (= (choose!44389 (regTwo!32355 r!7292) s!2326) _$88!4269)))

(declare-fun bs!1379644 () Bool)

(assert (= bs!1379644 d!1838928))

(assert (=> bs!1379644 m!6772864))

(assert (=> bs!1379644 m!6772860))

(assert (=> d!1838584 d!1838928))

(assert (=> d!1838584 d!1838840))

(declare-fun d!1838930 () Bool)

(assert (=> d!1838930 (= (nullable!5921 (regOne!32354 r!7292)) (nullableFct!1908 (regOne!32354 r!7292)))))

(declare-fun bs!1379645 () Bool)

(assert (= bs!1379645 d!1838930))

(declare-fun m!6773970 () Bool)

(assert (=> bs!1379645 m!6773970))

(assert (=> b!5854396 d!1838930))

(declare-fun d!1838932 () Bool)

(assert (=> d!1838932 (= (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (nullableFct!1908 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))

(declare-fun bs!1379646 () Bool)

(assert (= bs!1379646 d!1838932))

(declare-fun m!6773972 () Bool)

(assert (=> bs!1379646 m!6773972))

(assert (=> b!5854199 d!1838932))

(declare-fun d!1838934 () Bool)

(assert (=> d!1838934 (= (nullable!5921 r!7292) (nullableFct!1908 r!7292))))

(declare-fun bs!1379647 () Bool)

(assert (= bs!1379647 d!1838934))

(declare-fun m!6773974 () Bool)

(assert (=> bs!1379647 m!6773974))

(assert (=> b!5854132 d!1838934))

(declare-fun d!1838936 () Bool)

(assert (=> d!1838936 (= (nullable!5921 (regOne!32355 r!7292)) (nullableFct!1908 (regOne!32355 r!7292)))))

(declare-fun bs!1379648 () Bool)

(assert (= bs!1379648 d!1838936))

(declare-fun m!6773976 () Bool)

(assert (=> bs!1379648 m!6773976))

(assert (=> b!5854484 d!1838936))

(declare-fun d!1838938 () Bool)

(assert (=> d!1838938 (= (isEmpty!35799 (t!377427 (exprs!5805 (h!70387 zl!343)))) ((_ is Nil!63938) (t!377427 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> b!5854362 d!1838938))

(assert (=> d!1838564 d!1838804))

(assert (=> b!5854453 d!1838812))

(declare-fun b!5855317 () Bool)

(declare-fun e!3590464 () (InoxSet Context!10610))

(declare-fun call!458650 () (InoxSet Context!10610))

(assert (=> b!5855317 (= e!3590464 call!458650)))

(declare-fun d!1838940 () Bool)

(declare-fun c!1038297 () Bool)

(declare-fun e!3590466 () Bool)

(assert (=> d!1838940 (= c!1038297 e!3590466)))

(declare-fun res!2464607 () Bool)

(assert (=> d!1838940 (=> (not res!2464607) (not e!3590466))))

(assert (=> d!1838940 (= res!2464607 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))))

(declare-fun e!3590465 () (InoxSet Context!10610))

(assert (=> d!1838940 (= (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70388 s!2326)) e!3590465)))

(declare-fun b!5855318 () Bool)

(assert (=> b!5855318 (= e!3590464 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458645 () Bool)

(assert (=> bm!458645 (= call!458650 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))) (h!70388 s!2326)))))

(declare-fun b!5855319 () Bool)

(assert (=> b!5855319 (= e!3590465 ((_ map or) call!458650 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))) (h!70388 s!2326))))))

(declare-fun b!5855320 () Bool)

(assert (=> b!5855320 (= e!3590465 e!3590464)))

(declare-fun c!1038298 () Bool)

(assert (=> b!5855320 (= c!1038298 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))))

(declare-fun b!5855321 () Bool)

(assert (=> b!5855321 (= e!3590466 (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))))))

(assert (= (and d!1838940 res!2464607) b!5855321))

(assert (= (and d!1838940 c!1038297) b!5855319))

(assert (= (and d!1838940 (not c!1038297)) b!5855320))

(assert (= (and b!5855320 c!1038298) b!5855317))

(assert (= (and b!5855320 (not c!1038298)) b!5855318))

(assert (= (or b!5855319 b!5855317) bm!458645))

(declare-fun m!6773978 () Bool)

(assert (=> bm!458645 m!6773978))

(declare-fun m!6773980 () Bool)

(assert (=> b!5855319 m!6773980))

(declare-fun m!6773982 () Bool)

(assert (=> b!5855321 m!6773982))

(assert (=> b!5854407 d!1838940))

(declare-fun d!1838942 () Bool)

(assert (=> d!1838942 (= (Exists!2993 (ite c!1038055 lambda!320115 lambda!320116)) (choose!44399 (ite c!1038055 lambda!320115 lambda!320116)))))

(declare-fun bs!1379649 () Bool)

(assert (= bs!1379649 d!1838942))

(declare-fun m!6773984 () Bool)

(assert (=> bs!1379649 m!6773984))

(assert (=> bm!458451 d!1838942))

(assert (=> d!1838512 d!1838818))

(assert (=> d!1838512 d!1838542))

(declare-fun d!1838944 () Bool)

(assert (=> d!1838944 (= (flatMap!1452 z!1189 lambda!320102) (choose!44390 z!1189 lambda!320102))))

(declare-fun bs!1379650 () Bool)

(assert (= bs!1379650 d!1838944))

(declare-fun m!6773986 () Bool)

(assert (=> bs!1379650 m!6773986))

(assert (=> d!1838530 d!1838944))

(declare-fun d!1838946 () Bool)

(declare-fun res!2464608 () Bool)

(declare-fun e!3590467 () Bool)

(assert (=> d!1838946 (=> res!2464608 e!3590467)))

(assert (=> d!1838946 (= res!2464608 ((_ is Nil!63938) (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938)))))))

(assert (=> d!1838946 (= (forall!15008 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))) lambda!320099) e!3590467)))

(declare-fun b!5855322 () Bool)

(declare-fun e!3590468 () Bool)

(assert (=> b!5855322 (= e!3590467 e!3590468)))

(declare-fun res!2464609 () Bool)

(assert (=> b!5855322 (=> (not res!2464609) (not e!3590468))))

(assert (=> b!5855322 (= res!2464609 (dynLambda!24998 lambda!320099 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))))))))

(declare-fun b!5855323 () Bool)

(assert (=> b!5855323 (= e!3590468 (forall!15008 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938)))) lambda!320099))))

(assert (= (and d!1838946 (not res!2464608)) b!5855322))

(assert (= (and b!5855322 res!2464609) b!5855323))

(declare-fun b_lambda!220391 () Bool)

(assert (=> (not b_lambda!220391) (not b!5855322)))

(declare-fun m!6773988 () Bool)

(assert (=> b!5855322 m!6773988))

(declare-fun m!6773990 () Bool)

(assert (=> b!5855323 m!6773990))

(assert (=> d!1838520 d!1838946))

(assert (=> b!5854480 d!1838808))

(assert (=> b!5854480 d!1838810))

(declare-fun d!1838948 () Bool)

(declare-fun res!2464610 () Bool)

(declare-fun e!3590469 () Bool)

(assert (=> d!1838948 (=> res!2464610 e!3590469)))

(assert (=> d!1838948 (= res!2464610 ((_ is Nil!63938) (exprs!5805 (h!70387 zl!343))))))

(assert (=> d!1838948 (= (forall!15008 (exprs!5805 (h!70387 zl!343)) lambda!320114) e!3590469)))

(declare-fun b!5855324 () Bool)

(declare-fun e!3590470 () Bool)

(assert (=> b!5855324 (= e!3590469 e!3590470)))

(declare-fun res!2464611 () Bool)

(assert (=> b!5855324 (=> (not res!2464611) (not e!3590470))))

(assert (=> b!5855324 (= res!2464611 (dynLambda!24998 lambda!320114 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun b!5855325 () Bool)

(assert (=> b!5855325 (= e!3590470 (forall!15008 (t!377427 (exprs!5805 (h!70387 zl!343))) lambda!320114))))

(assert (= (and d!1838948 (not res!2464610)) b!5855324))

(assert (= (and b!5855324 res!2464611) b!5855325))

(declare-fun b_lambda!220393 () Bool)

(assert (=> (not b_lambda!220393) (not b!5855324)))

(declare-fun m!6773992 () Bool)

(assert (=> b!5855324 m!6773992))

(declare-fun m!6773994 () Bool)

(assert (=> b!5855325 m!6773994))

(assert (=> d!1838572 d!1838948))

(declare-fun bs!1379651 () Bool)

(declare-fun d!1838950 () Bool)

(assert (= bs!1379651 (and d!1838950 d!1838832)))

(declare-fun lambda!320157 () Int)

(assert (=> bs!1379651 (= lambda!320157 lambda!320144)))

(declare-fun bs!1379652 () Bool)

(assert (= bs!1379652 (and d!1838950 d!1838920)))

(assert (=> bs!1379652 (= lambda!320157 lambda!320155)))

(assert (=> d!1838950 (= (nullableZipper!1760 z!1189) (exists!2305 z!1189 lambda!320157))))

(declare-fun bs!1379653 () Bool)

(assert (= bs!1379653 d!1838950))

(declare-fun m!6773996 () Bool)

(assert (=> bs!1379653 m!6773996))

(assert (=> b!5854415 d!1838950))

(assert (=> bm!458455 d!1838818))

(assert (=> d!1838588 d!1838818))

(assert (=> d!1838588 d!1838862))

(declare-fun b!5855326 () Bool)

(declare-fun e!3590474 () (InoxSet Context!10610))

(declare-fun call!458654 () (InoxSet Context!10610))

(declare-fun call!458652 () (InoxSet Context!10610))

(assert (=> b!5855326 (= e!3590474 ((_ map or) call!458654 call!458652))))

(declare-fun b!5855327 () Bool)

(declare-fun e!3590476 () (InoxSet Context!10610))

(declare-fun call!458651 () (InoxSet Context!10610))

(assert (=> b!5855327 (= e!3590476 call!458651)))

(declare-fun b!5855328 () Bool)

(declare-fun e!3590471 () Bool)

(assert (=> b!5855328 (= e!3590471 (nullable!5921 (regOne!32354 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)))))))

(declare-fun c!1038300 () Bool)

(declare-fun d!1838952 () Bool)

(assert (=> d!1838952 (= c!1038300 (and ((_ is ElementMatch!15921) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (= (c!1037845 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (h!70388 s!2326))))))

(declare-fun e!3590473 () (InoxSet Context!10610))

(assert (=> d!1838952 (= (derivationStepZipperDown!1187 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)) (ite c!1038034 lt!2304692 (Context!10611 call!458440)) (h!70388 s!2326)) e!3590473)))

(declare-fun b!5855329 () Bool)

(declare-fun e!3590472 () (InoxSet Context!10610))

(assert (=> b!5855329 (= e!3590473 e!3590472)))

(declare-fun c!1038299 () Bool)

(assert (=> b!5855329 (= c!1038299 ((_ is Union!15921) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(declare-fun b!5855330 () Bool)

(declare-fun e!3590475 () (InoxSet Context!10610))

(assert (=> b!5855330 (= e!3590474 e!3590475)))

(declare-fun c!1038303 () Bool)

(assert (=> b!5855330 (= c!1038303 ((_ is Concat!24766) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(declare-fun b!5855331 () Bool)

(declare-fun c!1038301 () Bool)

(assert (=> b!5855331 (= c!1038301 ((_ is Star!15921) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(assert (=> b!5855331 (= e!3590475 e!3590476)))

(declare-fun call!458656 () (InoxSet Context!10610))

(declare-fun c!1038302 () Bool)

(declare-fun call!458653 () List!64062)

(declare-fun bm!458646 () Bool)

(assert (=> bm!458646 (= call!458656 (derivationStepZipperDown!1187 (ite c!1038299 (regTwo!32355 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (ite c!1038302 (regTwo!32354 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (ite c!1038303 (regOne!32354 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (reg!16250 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)))))) (ite (or c!1038299 c!1038302) (ite c!1038034 lt!2304692 (Context!10611 call!458440)) (Context!10611 call!458653)) (h!70388 s!2326)))))

(declare-fun b!5855332 () Bool)

(assert (=> b!5855332 (= e!3590476 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458647 () Bool)

(declare-fun call!458655 () List!64062)

(assert (=> bm!458647 (= call!458653 call!458655)))

(declare-fun bm!458648 () Bool)

(assert (=> bm!458648 (= call!458652 call!458656)))

(declare-fun b!5855333 () Bool)

(assert (=> b!5855333 (= c!1038302 e!3590471)))

(declare-fun res!2464612 () Bool)

(assert (=> b!5855333 (=> (not res!2464612) (not e!3590471))))

(assert (=> b!5855333 (= res!2464612 ((_ is Concat!24766) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(assert (=> b!5855333 (= e!3590472 e!3590474)))

(declare-fun b!5855334 () Bool)

(assert (=> b!5855334 (= e!3590472 ((_ map or) call!458654 call!458656))))

(declare-fun bm!458649 () Bool)

(assert (=> bm!458649 (= call!458651 call!458652)))

(declare-fun b!5855335 () Bool)

(assert (=> b!5855335 (= e!3590473 (store ((as const (Array Context!10610 Bool)) false) (ite c!1038034 lt!2304692 (Context!10611 call!458440)) true))))

(declare-fun bm!458650 () Bool)

(assert (=> bm!458650 (= call!458654 (derivationStepZipperDown!1187 (ite c!1038299 (regOne!32355 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (regOne!32354 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)))) (ite c!1038299 (ite c!1038034 lt!2304692 (Context!10611 call!458440)) (Context!10611 call!458655)) (h!70388 s!2326)))))

(declare-fun bm!458651 () Bool)

(assert (=> bm!458651 (= call!458655 ($colon$colon!1826 (exprs!5805 (ite c!1038034 lt!2304692 (Context!10611 call!458440))) (ite (or c!1038302 c!1038303) (regTwo!32354 (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292))) (ite c!1038034 (regOne!32355 r!7292) (regOne!32354 r!7292)))))))

(declare-fun b!5855336 () Bool)

(assert (=> b!5855336 (= e!3590475 call!458651)))

(assert (= (and d!1838952 c!1038300) b!5855335))

(assert (= (and d!1838952 (not c!1038300)) b!5855329))

(assert (= (and b!5855329 c!1038299) b!5855334))

(assert (= (and b!5855329 (not c!1038299)) b!5855333))

(assert (= (and b!5855333 res!2464612) b!5855328))

(assert (= (and b!5855333 c!1038302) b!5855326))

(assert (= (and b!5855333 (not c!1038302)) b!5855330))

(assert (= (and b!5855330 c!1038303) b!5855336))

(assert (= (and b!5855330 (not c!1038303)) b!5855331))

(assert (= (and b!5855331 c!1038301) b!5855327))

(assert (= (and b!5855331 (not c!1038301)) b!5855332))

(assert (= (or b!5855336 b!5855327) bm!458647))

(assert (= (or b!5855336 b!5855327) bm!458649))

(assert (= (or b!5855326 bm!458647) bm!458651))

(assert (= (or b!5855326 bm!458649) bm!458648))

(assert (= (or b!5855334 bm!458648) bm!458646))

(assert (= (or b!5855334 b!5855326) bm!458650))

(declare-fun m!6773998 () Bool)

(assert (=> b!5855328 m!6773998))

(declare-fun m!6774000 () Bool)

(assert (=> bm!458650 m!6774000))

(declare-fun m!6774002 () Bool)

(assert (=> bm!458651 m!6774002))

(declare-fun m!6774004 () Bool)

(assert (=> bm!458646 m!6774004))

(declare-fun m!6774006 () Bool)

(assert (=> b!5855335 m!6774006))

(assert (=> bm!458435 d!1838952))

(declare-fun d!1838954 () Bool)

(declare-fun res!2464613 () Bool)

(declare-fun e!3590477 () Bool)

(assert (=> d!1838954 (=> res!2464613 e!3590477)))

(assert (=> d!1838954 (= res!2464613 ((_ is Nil!63938) lt!2304755))))

(assert (=> d!1838954 (= (forall!15008 lt!2304755 lambda!320109) e!3590477)))

(declare-fun b!5855337 () Bool)

(declare-fun e!3590478 () Bool)

(assert (=> b!5855337 (= e!3590477 e!3590478)))

(declare-fun res!2464614 () Bool)

(assert (=> b!5855337 (=> (not res!2464614) (not e!3590478))))

(assert (=> b!5855337 (= res!2464614 (dynLambda!24998 lambda!320109 (h!70386 lt!2304755)))))

(declare-fun b!5855338 () Bool)

(assert (=> b!5855338 (= e!3590478 (forall!15008 (t!377427 lt!2304755) lambda!320109))))

(assert (= (and d!1838954 (not res!2464613)) b!5855337))

(assert (= (and b!5855337 res!2464614) b!5855338))

(declare-fun b_lambda!220395 () Bool)

(assert (=> (not b_lambda!220395) (not b!5855337)))

(declare-fun m!6774008 () Bool)

(assert (=> b!5855337 m!6774008))

(declare-fun m!6774010 () Bool)

(assert (=> b!5855338 m!6774010))

(assert (=> d!1838550 d!1838954))

(declare-fun d!1838956 () Bool)

(assert (=> d!1838956 (= (isEmptyLang!1363 lt!2304752) ((_ is EmptyLang!15921) lt!2304752))))

(assert (=> b!5854333 d!1838956))

(declare-fun bs!1379654 () Bool)

(declare-fun b!5855349 () Bool)

(assert (= bs!1379654 (and b!5855349 b!5854057)))

(declare-fun lambda!320158 () Int)

(assert (=> bs!1379654 (= (and (= (reg!16250 (regOne!32355 (regTwo!32355 r!7292))) (reg!16250 r!7292)) (= (regOne!32355 (regTwo!32355 r!7292)) r!7292)) (= lambda!320158 lambda!320089))))

(declare-fun bs!1379655 () Bool)

(assert (= bs!1379655 (and b!5855349 b!5855217)))

(assert (=> bs!1379655 (= (and (= (reg!16250 (regOne!32355 (regTwo!32355 r!7292))) (reg!16250 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regOne!32355 (regTwo!32355 r!7292)) (regTwo!32355 (regTwo!32355 r!7292)))) (= lambda!320158 lambda!320146))))

(declare-fun bs!1379656 () Bool)

(assert (= bs!1379656 (and b!5855349 b!5854053)))

(assert (=> bs!1379656 (not (= lambda!320158 lambda!320090))))

(declare-fun bs!1379657 () Bool)

(assert (= bs!1379657 (and b!5855349 b!5854476)))

(assert (=> bs!1379657 (= (and (= (reg!16250 (regOne!32355 (regTwo!32355 r!7292))) (reg!16250 (regOne!32355 r!7292))) (= (regOne!32355 (regTwo!32355 r!7292)) (regOne!32355 r!7292))) (= lambda!320158 lambda!320117))))

(declare-fun bs!1379658 () Bool)

(assert (= bs!1379658 (and b!5855349 b!5854472)))

(assert (=> bs!1379658 (not (= lambda!320158 lambda!320118))))

(declare-fun bs!1379659 () Bool)

(assert (= bs!1379659 (and b!5855349 b!5855233)))

(assert (=> bs!1379659 (not (= lambda!320158 lambda!320150))))

(declare-fun bs!1379660 () Bool)

(assert (= bs!1379660 (and b!5855349 b!5854447)))

(assert (=> bs!1379660 (not (= lambda!320158 lambda!320116))))

(declare-fun bs!1379661 () Bool)

(assert (= bs!1379661 (and b!5855349 b!5855237)))

(assert (=> bs!1379661 (= (and (= (reg!16250 (regOne!32355 (regTwo!32355 r!7292))) (reg!16250 (regOne!32355 (regOne!32355 r!7292)))) (= (regOne!32355 (regTwo!32355 r!7292)) (regOne!32355 (regOne!32355 r!7292)))) (= lambda!320158 lambda!320149))))

(declare-fun bs!1379662 () Bool)

(assert (= bs!1379662 (and b!5855349 b!5854451)))

(assert (=> bs!1379662 (= (and (= (reg!16250 (regOne!32355 (regTwo!32355 r!7292))) (reg!16250 (regTwo!32355 r!7292))) (= (regOne!32355 (regTwo!32355 r!7292)) (regTwo!32355 r!7292))) (= lambda!320158 lambda!320115))))

(declare-fun bs!1379663 () Bool)

(assert (= bs!1379663 (and b!5855349 b!5855213)))

(assert (=> bs!1379663 (not (= lambda!320158 lambda!320147))))

(assert (=> b!5855349 true))

(assert (=> b!5855349 true))

(declare-fun bs!1379664 () Bool)

(declare-fun b!5855345 () Bool)

(assert (= bs!1379664 (and b!5855345 b!5854057)))

(declare-fun lambda!320159 () Int)

(assert (=> bs!1379664 (not (= lambda!320159 lambda!320089))))

(declare-fun bs!1379665 () Bool)

(assert (= bs!1379665 (and b!5855345 b!5855349)))

(assert (=> bs!1379665 (not (= lambda!320159 lambda!320158))))

(declare-fun bs!1379666 () Bool)

(assert (= bs!1379666 (and b!5855345 b!5855217)))

(assert (=> bs!1379666 (not (= lambda!320159 lambda!320146))))

(declare-fun bs!1379667 () Bool)

(assert (= bs!1379667 (and b!5855345 b!5854053)))

(assert (=> bs!1379667 (= (and (= (regOne!32354 (regOne!32355 (regTwo!32355 r!7292))) (regOne!32354 r!7292)) (= (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))) (regTwo!32354 r!7292))) (= lambda!320159 lambda!320090))))

(declare-fun bs!1379668 () Bool)

(assert (= bs!1379668 (and b!5855345 b!5854476)))

(assert (=> bs!1379668 (not (= lambda!320159 lambda!320117))))

(declare-fun bs!1379669 () Bool)

(assert (= bs!1379669 (and b!5855345 b!5854472)))

(assert (=> bs!1379669 (= (and (= (regOne!32354 (regOne!32355 (regTwo!32355 r!7292))) (regOne!32354 (regOne!32355 r!7292))) (= (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regOne!32355 r!7292)))) (= lambda!320159 lambda!320118))))

(declare-fun bs!1379670 () Bool)

(assert (= bs!1379670 (and b!5855345 b!5855233)))

(assert (=> bs!1379670 (= (and (= (regOne!32354 (regOne!32355 (regTwo!32355 r!7292))) (regOne!32354 (regOne!32355 (regOne!32355 r!7292)))) (= (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))))) (= lambda!320159 lambda!320150))))

(declare-fun bs!1379671 () Bool)

(assert (= bs!1379671 (and b!5855345 b!5854447)))

(assert (=> bs!1379671 (= (and (= (regOne!32354 (regOne!32355 (regTwo!32355 r!7292))) (regOne!32354 (regTwo!32355 r!7292))) (= (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regTwo!32355 r!7292)))) (= lambda!320159 lambda!320116))))

(declare-fun bs!1379672 () Bool)

(assert (= bs!1379672 (and b!5855345 b!5855237)))

(assert (=> bs!1379672 (not (= lambda!320159 lambda!320149))))

(declare-fun bs!1379673 () Bool)

(assert (= bs!1379673 (and b!5855345 b!5854451)))

(assert (=> bs!1379673 (not (= lambda!320159 lambda!320115))))

(declare-fun bs!1379674 () Bool)

(assert (= bs!1379674 (and b!5855345 b!5855213)))

(assert (=> bs!1379674 (= (and (= (regOne!32354 (regOne!32355 (regTwo!32355 r!7292))) (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))) (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))))) (= lambda!320159 lambda!320147))))

(assert (=> b!5855345 true))

(assert (=> b!5855345 true))

(declare-fun b!5855339 () Bool)

(declare-fun c!1038306 () Bool)

(assert (=> b!5855339 (= c!1038306 ((_ is Union!15921) (regOne!32355 (regTwo!32355 r!7292))))))

(declare-fun e!3590479 () Bool)

(declare-fun e!3590484 () Bool)

(assert (=> b!5855339 (= e!3590479 e!3590484)))

(declare-fun bm!458652 () Bool)

(declare-fun call!458657 () Bool)

(assert (=> bm!458652 (= call!458657 (isEmpty!35798 s!2326))))

(declare-fun b!5855341 () Bool)

(declare-fun e!3590480 () Bool)

(assert (=> b!5855341 (= e!3590484 e!3590480)))

(declare-fun res!2464616 () Bool)

(assert (=> b!5855341 (= res!2464616 (matchRSpec!3022 (regOne!32355 (regOne!32355 (regTwo!32355 r!7292))) s!2326))))

(assert (=> b!5855341 (=> res!2464616 e!3590480)))

(declare-fun b!5855342 () Bool)

(assert (=> b!5855342 (= e!3590479 (= s!2326 (Cons!63940 (c!1037845 (regOne!32355 (regTwo!32355 r!7292))) Nil!63940)))))

(declare-fun b!5855343 () Bool)

(assert (=> b!5855343 (= e!3590480 (matchRSpec!3022 (regTwo!32355 (regOne!32355 (regTwo!32355 r!7292))) s!2326))))

(declare-fun b!5855344 () Bool)

(declare-fun c!1038307 () Bool)

(assert (=> b!5855344 (= c!1038307 ((_ is ElementMatch!15921) (regOne!32355 (regTwo!32355 r!7292))))))

(declare-fun e!3590482 () Bool)

(assert (=> b!5855344 (= e!3590482 e!3590479)))

(declare-fun e!3590483 () Bool)

(declare-fun call!458658 () Bool)

(assert (=> b!5855345 (= e!3590483 call!458658)))

(declare-fun b!5855346 () Bool)

(assert (=> b!5855346 (= e!3590484 e!3590483)))

(declare-fun c!1038305 () Bool)

(assert (=> b!5855346 (= c!1038305 ((_ is Star!15921) (regOne!32355 (regTwo!32355 r!7292))))))

(declare-fun b!5855347 () Bool)

(declare-fun e!3590481 () Bool)

(assert (=> b!5855347 (= e!3590481 call!458657)))

(declare-fun b!5855348 () Bool)

(assert (=> b!5855348 (= e!3590481 e!3590482)))

(declare-fun res!2464617 () Bool)

(assert (=> b!5855348 (= res!2464617 (not ((_ is EmptyLang!15921) (regOne!32355 (regTwo!32355 r!7292)))))))

(assert (=> b!5855348 (=> (not res!2464617) (not e!3590482))))

(declare-fun e!3590485 () Bool)

(assert (=> b!5855349 (= e!3590485 call!458658)))

(declare-fun bm!458653 () Bool)

(assert (=> bm!458653 (= call!458658 (Exists!2993 (ite c!1038305 lambda!320158 lambda!320159)))))

(declare-fun b!5855340 () Bool)

(declare-fun res!2464615 () Bool)

(assert (=> b!5855340 (=> res!2464615 e!3590485)))

(assert (=> b!5855340 (= res!2464615 call!458657)))

(assert (=> b!5855340 (= e!3590483 e!3590485)))

(declare-fun d!1838958 () Bool)

(declare-fun c!1038304 () Bool)

(assert (=> d!1838958 (= c!1038304 ((_ is EmptyExpr!15921) (regOne!32355 (regTwo!32355 r!7292))))))

(assert (=> d!1838958 (= (matchRSpec!3022 (regOne!32355 (regTwo!32355 r!7292)) s!2326) e!3590481)))

(assert (= (and d!1838958 c!1038304) b!5855347))

(assert (= (and d!1838958 (not c!1038304)) b!5855348))

(assert (= (and b!5855348 res!2464617) b!5855344))

(assert (= (and b!5855344 c!1038307) b!5855342))

(assert (= (and b!5855344 (not c!1038307)) b!5855339))

(assert (= (and b!5855339 c!1038306) b!5855341))

(assert (= (and b!5855339 (not c!1038306)) b!5855346))

(assert (= (and b!5855341 (not res!2464616)) b!5855343))

(assert (= (and b!5855346 c!1038305) b!5855340))

(assert (= (and b!5855346 (not c!1038305)) b!5855345))

(assert (= (and b!5855340 (not res!2464615)) b!5855349))

(assert (= (or b!5855349 b!5855345) bm!458653))

(assert (= (or b!5855347 b!5855340) bm!458652))

(assert (=> bm!458652 m!6773046))

(declare-fun m!6774012 () Bool)

(assert (=> b!5855341 m!6774012))

(declare-fun m!6774014 () Bool)

(assert (=> b!5855343 m!6774014))

(declare-fun m!6774016 () Bool)

(assert (=> bm!458653 m!6774016))

(assert (=> b!5854443 d!1838958))

(declare-fun d!1838960 () Bool)

(assert (=> d!1838960 (= (isConcat!879 lt!2304761) ((_ is Concat!24766) lt!2304761))))

(assert (=> b!5854370 d!1838960))

(declare-fun bs!1379675 () Bool)

(declare-fun d!1838962 () Bool)

(assert (= bs!1379675 (and d!1838962 d!1838832)))

(declare-fun lambda!320160 () Int)

(assert (=> bs!1379675 (= lambda!320160 lambda!320144)))

(declare-fun bs!1379676 () Bool)

(assert (= bs!1379676 (and d!1838962 d!1838920)))

(assert (=> bs!1379676 (= lambda!320160 lambda!320155)))

(declare-fun bs!1379677 () Bool)

(assert (= bs!1379677 (and d!1838962 d!1838950)))

(assert (=> bs!1379677 (= lambda!320160 lambda!320157)))

(assert (=> d!1838962 (= (nullableZipper!1760 lt!2304701) (exists!2305 lt!2304701 lambda!320160))))

(declare-fun bs!1379678 () Bool)

(assert (= bs!1379678 d!1838962))

(declare-fun m!6774018 () Bool)

(assert (=> bs!1379678 m!6774018))

(assert (=> b!5854417 d!1838962))

(assert (=> b!5854414 d!1838546))

(declare-fun bs!1379679 () Bool)

(declare-fun b!5855360 () Bool)

(assert (= bs!1379679 (and b!5855360 b!5854057)))

(declare-fun lambda!320161 () Int)

(assert (=> bs!1379679 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 r!7292)) (= (regTwo!32355 (regOne!32355 r!7292)) r!7292)) (= lambda!320161 lambda!320089))))

(declare-fun bs!1379680 () Bool)

(assert (= bs!1379680 (and b!5855360 b!5855349)))

(assert (=> bs!1379680 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 (regOne!32355 (regTwo!32355 r!7292)))) (= (regTwo!32355 (regOne!32355 r!7292)) (regOne!32355 (regTwo!32355 r!7292)))) (= lambda!320161 lambda!320158))))

(declare-fun bs!1379681 () Bool)

(assert (= bs!1379681 (and b!5855360 b!5855345)))

(assert (=> bs!1379681 (not (= lambda!320161 lambda!320159))))

(declare-fun bs!1379682 () Bool)

(assert (= bs!1379682 (and b!5855360 b!5855217)))

(assert (=> bs!1379682 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regTwo!32355 (regOne!32355 r!7292)) (regTwo!32355 (regTwo!32355 r!7292)))) (= lambda!320161 lambda!320146))))

(declare-fun bs!1379683 () Bool)

(assert (= bs!1379683 (and b!5855360 b!5854053)))

(assert (=> bs!1379683 (not (= lambda!320161 lambda!320090))))

(declare-fun bs!1379684 () Bool)

(assert (= bs!1379684 (and b!5855360 b!5854476)))

(assert (=> bs!1379684 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 (regOne!32355 r!7292))) (= (regTwo!32355 (regOne!32355 r!7292)) (regOne!32355 r!7292))) (= lambda!320161 lambda!320117))))

(declare-fun bs!1379685 () Bool)

(assert (= bs!1379685 (and b!5855360 b!5854472)))

(assert (=> bs!1379685 (not (= lambda!320161 lambda!320118))))

(declare-fun bs!1379686 () Bool)

(assert (= bs!1379686 (and b!5855360 b!5855233)))

(assert (=> bs!1379686 (not (= lambda!320161 lambda!320150))))

(declare-fun bs!1379687 () Bool)

(assert (= bs!1379687 (and b!5855360 b!5854447)))

(assert (=> bs!1379687 (not (= lambda!320161 lambda!320116))))

(declare-fun bs!1379688 () Bool)

(assert (= bs!1379688 (and b!5855360 b!5855237)))

(assert (=> bs!1379688 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 (regOne!32355 (regOne!32355 r!7292)))) (= (regTwo!32355 (regOne!32355 r!7292)) (regOne!32355 (regOne!32355 r!7292)))) (= lambda!320161 lambda!320149))))

(declare-fun bs!1379689 () Bool)

(assert (= bs!1379689 (and b!5855360 b!5854451)))

(assert (=> bs!1379689 (= (and (= (reg!16250 (regTwo!32355 (regOne!32355 r!7292))) (reg!16250 (regTwo!32355 r!7292))) (= (regTwo!32355 (regOne!32355 r!7292)) (regTwo!32355 r!7292))) (= lambda!320161 lambda!320115))))

(declare-fun bs!1379690 () Bool)

(assert (= bs!1379690 (and b!5855360 b!5855213)))

(assert (=> bs!1379690 (not (= lambda!320161 lambda!320147))))

(assert (=> b!5855360 true))

(assert (=> b!5855360 true))

(declare-fun bs!1379691 () Bool)

(declare-fun b!5855356 () Bool)

(assert (= bs!1379691 (and b!5855356 b!5854057)))

(declare-fun lambda!320162 () Int)

(assert (=> bs!1379691 (not (= lambda!320162 lambda!320089))))

(declare-fun bs!1379692 () Bool)

(assert (= bs!1379692 (and b!5855356 b!5855349)))

(assert (=> bs!1379692 (not (= lambda!320162 lambda!320158))))

(declare-fun bs!1379693 () Bool)

(assert (= bs!1379693 (and b!5855356 b!5855345)))

(assert (=> bs!1379693 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 (regOne!32355 (regTwo!32355 r!7292)))) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 (regOne!32355 (regTwo!32355 r!7292))))) (= lambda!320162 lambda!320159))))

(declare-fun bs!1379694 () Bool)

(assert (= bs!1379694 (and b!5855356 b!5855217)))

(assert (=> bs!1379694 (not (= lambda!320162 lambda!320146))))

(declare-fun bs!1379695 () Bool)

(assert (= bs!1379695 (and b!5855356 b!5855360)))

(assert (=> bs!1379695 (not (= lambda!320162 lambda!320161))))

(declare-fun bs!1379696 () Bool)

(assert (= bs!1379696 (and b!5855356 b!5854053)))

(assert (=> bs!1379696 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 r!7292)) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 r!7292))) (= lambda!320162 lambda!320090))))

(declare-fun bs!1379697 () Bool)

(assert (= bs!1379697 (and b!5855356 b!5854476)))

(assert (=> bs!1379697 (not (= lambda!320162 lambda!320117))))

(declare-fun bs!1379698 () Bool)

(assert (= bs!1379698 (and b!5855356 b!5854472)))

(assert (=> bs!1379698 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 (regOne!32355 r!7292))) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 (regOne!32355 r!7292)))) (= lambda!320162 lambda!320118))))

(declare-fun bs!1379699 () Bool)

(assert (= bs!1379699 (and b!5855356 b!5855233)))

(assert (=> bs!1379699 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 (regOne!32355 (regOne!32355 r!7292)))) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 (regOne!32355 (regOne!32355 r!7292))))) (= lambda!320162 lambda!320150))))

(declare-fun bs!1379700 () Bool)

(assert (= bs!1379700 (and b!5855356 b!5854447)))

(assert (=> bs!1379700 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 (regTwo!32355 r!7292))) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 (regTwo!32355 r!7292)))) (= lambda!320162 lambda!320116))))

(declare-fun bs!1379701 () Bool)

(assert (= bs!1379701 (and b!5855356 b!5855237)))

(assert (=> bs!1379701 (not (= lambda!320162 lambda!320149))))

(declare-fun bs!1379702 () Bool)

(assert (= bs!1379702 (and b!5855356 b!5854451)))

(assert (=> bs!1379702 (not (= lambda!320162 lambda!320115))))

(declare-fun bs!1379703 () Bool)

(assert (= bs!1379703 (and b!5855356 b!5855213)))

(assert (=> bs!1379703 (= (and (= (regOne!32354 (regTwo!32355 (regOne!32355 r!7292))) (regOne!32354 (regTwo!32355 (regTwo!32355 r!7292)))) (= (regTwo!32354 (regTwo!32355 (regOne!32355 r!7292))) (regTwo!32354 (regTwo!32355 (regTwo!32355 r!7292))))) (= lambda!320162 lambda!320147))))

(assert (=> b!5855356 true))

(assert (=> b!5855356 true))

(declare-fun b!5855350 () Bool)

(declare-fun c!1038310 () Bool)

(assert (=> b!5855350 (= c!1038310 ((_ is Union!15921) (regTwo!32355 (regOne!32355 r!7292))))))

(declare-fun e!3590486 () Bool)

(declare-fun e!3590491 () Bool)

(assert (=> b!5855350 (= e!3590486 e!3590491)))

(declare-fun bm!458654 () Bool)

(declare-fun call!458659 () Bool)

(assert (=> bm!458654 (= call!458659 (isEmpty!35798 s!2326))))

(declare-fun b!5855352 () Bool)

(declare-fun e!3590487 () Bool)

(assert (=> b!5855352 (= e!3590491 e!3590487)))

(declare-fun res!2464619 () Bool)

(assert (=> b!5855352 (= res!2464619 (matchRSpec!3022 (regOne!32355 (regTwo!32355 (regOne!32355 r!7292))) s!2326))))

(assert (=> b!5855352 (=> res!2464619 e!3590487)))

(declare-fun b!5855353 () Bool)

(assert (=> b!5855353 (= e!3590486 (= s!2326 (Cons!63940 (c!1037845 (regTwo!32355 (regOne!32355 r!7292))) Nil!63940)))))

(declare-fun b!5855354 () Bool)

(assert (=> b!5855354 (= e!3590487 (matchRSpec!3022 (regTwo!32355 (regTwo!32355 (regOne!32355 r!7292))) s!2326))))

(declare-fun b!5855355 () Bool)

(declare-fun c!1038311 () Bool)

(assert (=> b!5855355 (= c!1038311 ((_ is ElementMatch!15921) (regTwo!32355 (regOne!32355 r!7292))))))

(declare-fun e!3590489 () Bool)

(assert (=> b!5855355 (= e!3590489 e!3590486)))

(declare-fun e!3590490 () Bool)

(declare-fun call!458660 () Bool)

(assert (=> b!5855356 (= e!3590490 call!458660)))

(declare-fun b!5855357 () Bool)

(assert (=> b!5855357 (= e!3590491 e!3590490)))

(declare-fun c!1038309 () Bool)

(assert (=> b!5855357 (= c!1038309 ((_ is Star!15921) (regTwo!32355 (regOne!32355 r!7292))))))

(declare-fun b!5855358 () Bool)

(declare-fun e!3590488 () Bool)

(assert (=> b!5855358 (= e!3590488 call!458659)))

(declare-fun b!5855359 () Bool)

(assert (=> b!5855359 (= e!3590488 e!3590489)))

(declare-fun res!2464620 () Bool)

(assert (=> b!5855359 (= res!2464620 (not ((_ is EmptyLang!15921) (regTwo!32355 (regOne!32355 r!7292)))))))

(assert (=> b!5855359 (=> (not res!2464620) (not e!3590489))))

(declare-fun e!3590492 () Bool)

(assert (=> b!5855360 (= e!3590492 call!458660)))

(declare-fun bm!458655 () Bool)

(assert (=> bm!458655 (= call!458660 (Exists!2993 (ite c!1038309 lambda!320161 lambda!320162)))))

(declare-fun b!5855351 () Bool)

(declare-fun res!2464618 () Bool)

(assert (=> b!5855351 (=> res!2464618 e!3590492)))

(assert (=> b!5855351 (= res!2464618 call!458659)))

(assert (=> b!5855351 (= e!3590490 e!3590492)))

(declare-fun d!1838964 () Bool)

(declare-fun c!1038308 () Bool)

(assert (=> d!1838964 (= c!1038308 ((_ is EmptyExpr!15921) (regTwo!32355 (regOne!32355 r!7292))))))

(assert (=> d!1838964 (= (matchRSpec!3022 (regTwo!32355 (regOne!32355 r!7292)) s!2326) e!3590488)))

(assert (= (and d!1838964 c!1038308) b!5855358))

(assert (= (and d!1838964 (not c!1038308)) b!5855359))

(assert (= (and b!5855359 res!2464620) b!5855355))

(assert (= (and b!5855355 c!1038311) b!5855353))

(assert (= (and b!5855355 (not c!1038311)) b!5855350))

(assert (= (and b!5855350 c!1038310) b!5855352))

(assert (= (and b!5855350 (not c!1038310)) b!5855357))

(assert (= (and b!5855352 (not res!2464619)) b!5855354))

(assert (= (and b!5855357 c!1038309) b!5855351))

(assert (= (and b!5855357 (not c!1038309)) b!5855356))

(assert (= (and b!5855351 (not res!2464618)) b!5855360))

(assert (= (or b!5855360 b!5855356) bm!458655))

(assert (= (or b!5855358 b!5855351) bm!458654))

(assert (=> bm!458654 m!6773046))

(declare-fun m!6774020 () Bool)

(assert (=> b!5855352 m!6774020))

(declare-fun m!6774022 () Bool)

(assert (=> b!5855354 m!6774022))

(declare-fun m!6774024 () Bool)

(assert (=> bm!458655 m!6774024))

(assert (=> b!5854470 d!1838964))

(declare-fun bm!458656 () Bool)

(declare-fun call!458661 () Bool)

(assert (=> bm!458656 (= call!458661 (isEmpty!35798 (tail!11480 s!2326)))))

(declare-fun b!5855361 () Bool)

(declare-fun e!3590493 () Bool)

(declare-fun e!3590499 () Bool)

(assert (=> b!5855361 (= e!3590493 e!3590499)))

(declare-fun res!2464622 () Bool)

(assert (=> b!5855361 (=> res!2464622 e!3590499)))

(assert (=> b!5855361 (= res!2464622 call!458661)))

(declare-fun b!5855362 () Bool)

(declare-fun e!3590497 () Bool)

(assert (=> b!5855362 (= e!3590497 (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)))))))

(declare-fun b!5855363 () Bool)

(declare-fun res!2464625 () Bool)

(declare-fun e!3590495 () Bool)

(assert (=> b!5855363 (=> res!2464625 e!3590495)))

(assert (=> b!5855363 (= res!2464625 (not ((_ is ElementMatch!15921) (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)))))))

(declare-fun e!3590494 () Bool)

(assert (=> b!5855363 (= e!3590494 e!3590495)))

(declare-fun b!5855364 () Bool)

(declare-fun res!2464623 () Bool)

(assert (=> b!5855364 (=> res!2464623 e!3590499)))

(assert (=> b!5855364 (= res!2464623 (not (isEmpty!35798 (tail!11480 (tail!11480 s!2326)))))))

(declare-fun b!5855365 () Bool)

(assert (=> b!5855365 (= e!3590495 e!3590493)))

(declare-fun res!2464627 () Bool)

(assert (=> b!5855365 (=> (not res!2464627) (not e!3590493))))

(declare-fun lt!2304789 () Bool)

(assert (=> b!5855365 (= res!2464627 (not lt!2304789))))

(declare-fun b!5855366 () Bool)

(declare-fun e!3590498 () Bool)

(assert (=> b!5855366 (= e!3590498 e!3590494)))

(declare-fun c!1038312 () Bool)

(assert (=> b!5855366 (= c!1038312 ((_ is EmptyLang!15921) (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326))))))

(declare-fun b!5855367 () Bool)

(assert (=> b!5855367 (= e!3590498 (= lt!2304789 call!458661))))

(declare-fun b!5855368 () Bool)

(declare-fun e!3590496 () Bool)

(assert (=> b!5855368 (= e!3590496 (nullable!5921 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326))))))

(declare-fun b!5855369 () Bool)

(assert (=> b!5855369 (= e!3590499 (not (= (head!12395 (tail!11480 s!2326)) (c!1037845 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326))))))))

(declare-fun b!5855370 () Bool)

(assert (=> b!5855370 (= e!3590496 (matchR!8104 (derivativeStep!4659 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)) (head!12395 (tail!11480 s!2326))) (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855371 () Bool)

(declare-fun res!2464626 () Bool)

(assert (=> b!5855371 (=> (not res!2464626) (not e!3590497))))

(assert (=> b!5855371 (= res!2464626 (not call!458661))))

(declare-fun b!5855372 () Bool)

(declare-fun res!2464624 () Bool)

(assert (=> b!5855372 (=> res!2464624 e!3590495)))

(assert (=> b!5855372 (= res!2464624 e!3590497)))

(declare-fun res!2464621 () Bool)

(assert (=> b!5855372 (=> (not res!2464621) (not e!3590497))))

(assert (=> b!5855372 (= res!2464621 lt!2304789)))

(declare-fun d!1838966 () Bool)

(assert (=> d!1838966 e!3590498))

(declare-fun c!1038314 () Bool)

(assert (=> d!1838966 (= c!1038314 ((_ is EmptyExpr!15921) (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326))))))

(assert (=> d!1838966 (= lt!2304789 e!3590496)))

(declare-fun c!1038313 () Bool)

(assert (=> d!1838966 (= c!1038313 (isEmpty!35798 (tail!11480 s!2326)))))

(assert (=> d!1838966 (validRegex!7657 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)))))

(assert (=> d!1838966 (= (matchR!8104 (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)) (tail!11480 s!2326)) lt!2304789)))

(declare-fun b!5855373 () Bool)

(declare-fun res!2464628 () Bool)

(assert (=> b!5855373 (=> (not res!2464628) (not e!3590497))))

(assert (=> b!5855373 (= res!2464628 (isEmpty!35798 (tail!11480 (tail!11480 s!2326))))))

(declare-fun b!5855374 () Bool)

(assert (=> b!5855374 (= e!3590494 (not lt!2304789))))

(assert (= (and d!1838966 c!1038313) b!5855368))

(assert (= (and d!1838966 (not c!1038313)) b!5855370))

(assert (= (and d!1838966 c!1038314) b!5855367))

(assert (= (and d!1838966 (not c!1038314)) b!5855366))

(assert (= (and b!5855366 c!1038312) b!5855374))

(assert (= (and b!5855366 (not c!1038312)) b!5855363))

(assert (= (and b!5855363 (not res!2464625)) b!5855372))

(assert (= (and b!5855372 res!2464621) b!5855371))

(assert (= (and b!5855371 res!2464626) b!5855373))

(assert (= (and b!5855373 res!2464628) b!5855362))

(assert (= (and b!5855372 (not res!2464624)) b!5855365))

(assert (= (and b!5855365 res!2464627) b!5855361))

(assert (= (and b!5855361 (not res!2464622)) b!5855364))

(assert (= (and b!5855364 (not res!2464623)) b!5855369))

(assert (= (or b!5855367 b!5855361 b!5855371) bm!458656))

(assert (=> d!1838966 m!6773056))

(assert (=> d!1838966 m!6773060))

(assert (=> d!1838966 m!6773286))

(declare-fun m!6774026 () Bool)

(assert (=> d!1838966 m!6774026))

(assert (=> b!5855368 m!6773286))

(declare-fun m!6774028 () Bool)

(assert (=> b!5855368 m!6774028))

(assert (=> bm!458656 m!6773056))

(assert (=> bm!458656 m!6773060))

(assert (=> b!5855373 m!6773056))

(assert (=> b!5855373 m!6773724))

(assert (=> b!5855373 m!6773724))

(assert (=> b!5855373 m!6773726))

(assert (=> b!5855370 m!6773056))

(assert (=> b!5855370 m!6773728))

(assert (=> b!5855370 m!6773286))

(assert (=> b!5855370 m!6773728))

(declare-fun m!6774030 () Bool)

(assert (=> b!5855370 m!6774030))

(assert (=> b!5855370 m!6773056))

(assert (=> b!5855370 m!6773724))

(assert (=> b!5855370 m!6774030))

(assert (=> b!5855370 m!6773724))

(declare-fun m!6774032 () Bool)

(assert (=> b!5855370 m!6774032))

(assert (=> b!5855369 m!6773056))

(assert (=> b!5855369 m!6773728))

(assert (=> b!5855364 m!6773056))

(assert (=> b!5855364 m!6773724))

(assert (=> b!5855364 m!6773724))

(assert (=> b!5855364 m!6773726))

(assert (=> b!5855362 m!6773056))

(assert (=> b!5855362 m!6773728))

(assert (=> b!5854461 d!1838966))

(declare-fun b!5855375 () Bool)

(declare-fun c!1038319 () Bool)

(assert (=> b!5855375 (= c!1038319 ((_ is Union!15921) (regTwo!32355 r!7292)))))

(declare-fun e!3590502 () Regex!15921)

(declare-fun e!3590501 () Regex!15921)

(assert (=> b!5855375 (= e!3590502 e!3590501)))

(declare-fun b!5855376 () Bool)

(declare-fun call!458665 () Regex!15921)

(declare-fun call!458662 () Regex!15921)

(assert (=> b!5855376 (= e!3590501 (Union!15921 call!458665 call!458662))))

(declare-fun bm!458657 () Bool)

(declare-fun c!1038318 () Bool)

(assert (=> bm!458657 (= call!458665 (derivativeStep!4659 (ite c!1038319 (regOne!32355 (regTwo!32355 r!7292)) (ite c!1038318 (reg!16250 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (head!12395 s!2326)))))

(declare-fun bm!458658 () Bool)

(declare-fun call!458664 () Regex!15921)

(assert (=> bm!458658 (= call!458664 call!458662)))

(declare-fun d!1838968 () Bool)

(declare-fun lt!2304790 () Regex!15921)

(assert (=> d!1838968 (validRegex!7657 lt!2304790)))

(declare-fun e!3590500 () Regex!15921)

(assert (=> d!1838968 (= lt!2304790 e!3590500)))

(declare-fun c!1038315 () Bool)

(assert (=> d!1838968 (= c!1038315 (or ((_ is EmptyExpr!15921) (regTwo!32355 r!7292)) ((_ is EmptyLang!15921) (regTwo!32355 r!7292))))))

(assert (=> d!1838968 (validRegex!7657 (regTwo!32355 r!7292))))

(assert (=> d!1838968 (= (derivativeStep!4659 (regTwo!32355 r!7292) (head!12395 s!2326)) lt!2304790)))

(declare-fun b!5855377 () Bool)

(assert (=> b!5855377 (= e!3590502 (ite (= (head!12395 s!2326) (c!1037845 (regTwo!32355 r!7292))) EmptyExpr!15921 EmptyLang!15921))))

(declare-fun b!5855378 () Bool)

(assert (=> b!5855378 (= e!3590500 EmptyLang!15921)))

(declare-fun c!1038317 () Bool)

(declare-fun bm!458659 () Bool)

(assert (=> bm!458659 (= call!458662 (derivativeStep!4659 (ite c!1038319 (regTwo!32355 (regTwo!32355 r!7292)) (ite c!1038317 (regTwo!32354 (regTwo!32355 r!7292)) (regOne!32354 (regTwo!32355 r!7292)))) (head!12395 s!2326)))))

(declare-fun b!5855379 () Bool)

(assert (=> b!5855379 (= e!3590500 e!3590502)))

(declare-fun c!1038316 () Bool)

(assert (=> b!5855379 (= c!1038316 ((_ is ElementMatch!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5855380 () Bool)

(declare-fun e!3590503 () Regex!15921)

(assert (=> b!5855380 (= e!3590503 (Union!15921 (Concat!24766 call!458664 (regTwo!32354 (regTwo!32355 r!7292))) EmptyLang!15921))))

(declare-fun b!5855381 () Bool)

(declare-fun e!3590504 () Regex!15921)

(declare-fun call!458663 () Regex!15921)

(assert (=> b!5855381 (= e!3590504 (Concat!24766 call!458663 (regTwo!32355 r!7292)))))

(declare-fun b!5855382 () Bool)

(assert (=> b!5855382 (= e!3590503 (Union!15921 (Concat!24766 call!458663 (regTwo!32354 (regTwo!32355 r!7292))) call!458664))))

(declare-fun bm!458660 () Bool)

(assert (=> bm!458660 (= call!458663 call!458665)))

(declare-fun b!5855383 () Bool)

(assert (=> b!5855383 (= e!3590501 e!3590504)))

(assert (=> b!5855383 (= c!1038318 ((_ is Star!15921) (regTwo!32355 r!7292)))))

(declare-fun b!5855384 () Bool)

(assert (=> b!5855384 (= c!1038317 (nullable!5921 (regOne!32354 (regTwo!32355 r!7292))))))

(assert (=> b!5855384 (= e!3590504 e!3590503)))

(assert (= (and d!1838968 c!1038315) b!5855378))

(assert (= (and d!1838968 (not c!1038315)) b!5855379))

(assert (= (and b!5855379 c!1038316) b!5855377))

(assert (= (and b!5855379 (not c!1038316)) b!5855375))

(assert (= (and b!5855375 c!1038319) b!5855376))

(assert (= (and b!5855375 (not c!1038319)) b!5855383))

(assert (= (and b!5855383 c!1038318) b!5855381))

(assert (= (and b!5855383 (not c!1038318)) b!5855384))

(assert (= (and b!5855384 c!1038317) b!5855382))

(assert (= (and b!5855384 (not c!1038317)) b!5855380))

(assert (= (or b!5855382 b!5855380) bm!458658))

(assert (= (or b!5855381 b!5855382) bm!458660))

(assert (= (or b!5855376 bm!458658) bm!458659))

(assert (= (or b!5855376 bm!458660) bm!458657))

(assert (=> bm!458657 m!6773062))

(declare-fun m!6774034 () Bool)

(assert (=> bm!458657 m!6774034))

(declare-fun m!6774036 () Bool)

(assert (=> d!1838968 m!6774036))

(assert (=> d!1838968 m!6773282))

(assert (=> bm!458659 m!6773062))

(declare-fun m!6774038 () Bool)

(assert (=> bm!458659 m!6774038))

(assert (=> b!5855384 m!6773256))

(assert (=> b!5854461 d!1838968))

(assert (=> b!5854461 d!1838812))

(assert (=> b!5854461 d!1838810))

(declare-fun d!1838970 () Bool)

(assert (=> d!1838970 (= (nullable!5921 (h!70386 (exprs!5805 (h!70387 zl!343)))) (nullableFct!1908 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun bs!1379704 () Bool)

(assert (= bs!1379704 d!1838970))

(declare-fun m!6774040 () Bool)

(assert (=> bs!1379704 m!6774040))

(assert (=> b!5854215 d!1838970))

(declare-fun d!1838972 () Bool)

(declare-fun c!1038320 () Bool)

(assert (=> d!1838972 (= c!1038320 (isEmpty!35798 (tail!11480 (t!377429 s!2326))))))

(declare-fun e!3590505 () Bool)

(assert (=> d!1838972 (= (matchZipper!1987 (derivationStepZipper!1920 lt!2304690 (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))) e!3590505)))

(declare-fun b!5855385 () Bool)

(assert (=> b!5855385 (= e!3590505 (nullableZipper!1760 (derivationStepZipper!1920 lt!2304690 (head!12395 (t!377429 s!2326)))))))

(declare-fun b!5855386 () Bool)

(assert (=> b!5855386 (= e!3590505 (matchZipper!1987 (derivationStepZipper!1920 (derivationStepZipper!1920 lt!2304690 (head!12395 (t!377429 s!2326))) (head!12395 (tail!11480 (t!377429 s!2326)))) (tail!11480 (tail!11480 (t!377429 s!2326)))))))

(assert (= (and d!1838972 c!1038320) b!5855385))

(assert (= (and d!1838972 (not c!1038320)) b!5855386))

(assert (=> d!1838972 m!6773164))

(assert (=> d!1838972 m!6773842))

(assert (=> b!5855385 m!6773234))

(declare-fun m!6774042 () Bool)

(assert (=> b!5855385 m!6774042))

(assert (=> b!5855386 m!6773164))

(assert (=> b!5855386 m!6773846))

(assert (=> b!5855386 m!6773234))

(assert (=> b!5855386 m!6773846))

(declare-fun m!6774044 () Bool)

(assert (=> b!5855386 m!6774044))

(assert (=> b!5855386 m!6773164))

(assert (=> b!5855386 m!6773850))

(assert (=> b!5855386 m!6774044))

(assert (=> b!5855386 m!6773850))

(declare-fun m!6774046 () Bool)

(assert (=> b!5855386 m!6774046))

(assert (=> b!5854411 d!1838972))

(declare-fun bs!1379705 () Bool)

(declare-fun d!1838974 () Bool)

(assert (= bs!1379705 (and d!1838974 d!1838900)))

(declare-fun lambda!320163 () Int)

(assert (=> bs!1379705 (= (= (head!12395 (t!377429 s!2326)) (head!12395 s!2326)) (= lambda!320163 lambda!320152))))

(declare-fun bs!1379706 () Bool)

(assert (= bs!1379706 (and d!1838974 d!1838918)))

(assert (=> bs!1379706 (= lambda!320163 lambda!320154)))

(declare-fun bs!1379707 () Bool)

(assert (= bs!1379707 (and d!1838974 d!1838530)))

(assert (=> bs!1379707 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320163 lambda!320102))))

(declare-fun bs!1379708 () Bool)

(assert (= bs!1379708 (and d!1838974 d!1838878)))

(assert (=> bs!1379708 (= lambda!320163 lambda!320148)))

(declare-fun bs!1379709 () Bool)

(assert (= bs!1379709 (and d!1838974 b!5853752)))

(assert (=> bs!1379709 (= (= (head!12395 (t!377429 s!2326)) (h!70388 s!2326)) (= lambda!320163 lambda!320064))))

(assert (=> d!1838974 true))

(assert (=> d!1838974 (= (derivationStepZipper!1920 lt!2304690 (head!12395 (t!377429 s!2326))) (flatMap!1452 lt!2304690 lambda!320163))))

(declare-fun bs!1379710 () Bool)

(assert (= bs!1379710 d!1838974))

(declare-fun m!6774048 () Bool)

(assert (=> bs!1379710 m!6774048))

(assert (=> b!5854411 d!1838974))

(assert (=> b!5854411 d!1838880))

(assert (=> b!5854411 d!1838882))

(declare-fun d!1838976 () Bool)

(assert (=> d!1838976 (= (isUnion!793 lt!2304752) ((_ is Union!15921) lt!2304752))))

(assert (=> b!5854329 d!1838976))

(declare-fun d!1838978 () Bool)

(assert (=> d!1838978 true))

(declare-fun setRes!39683 () Bool)

(assert (=> d!1838978 setRes!39683))

(declare-fun condSetEmpty!39683 () Bool)

(declare-fun res!2464631 () (InoxSet Context!10610))

(assert (=> d!1838978 (= condSetEmpty!39683 (= res!2464631 ((as const (Array Context!10610 Bool)) false)))))

(assert (=> d!1838978 (= (choose!44390 z!1189 lambda!320064) res!2464631)))

(declare-fun setIsEmpty!39683 () Bool)

(assert (=> setIsEmpty!39683 setRes!39683))

(declare-fun tp!1619720 () Bool)

(declare-fun e!3590508 () Bool)

(declare-fun setNonEmpty!39683 () Bool)

(declare-fun setElem!39683 () Context!10610)

(assert (=> setNonEmpty!39683 (= setRes!39683 (and tp!1619720 (inv!83049 setElem!39683) e!3590508))))

(declare-fun setRest!39683 () (InoxSet Context!10610))

(assert (=> setNonEmpty!39683 (= res!2464631 ((_ map or) (store ((as const (Array Context!10610 Bool)) false) setElem!39683 true) setRest!39683))))

(declare-fun b!5855389 () Bool)

(declare-fun tp!1619719 () Bool)

(assert (=> b!5855389 (= e!3590508 tp!1619719)))

(assert (= (and d!1838978 condSetEmpty!39683) setIsEmpty!39683))

(assert (= (and d!1838978 (not condSetEmpty!39683)) setNonEmpty!39683))

(assert (= setNonEmpty!39683 b!5855389))

(declare-fun m!6774050 () Bool)

(assert (=> setNonEmpty!39683 m!6774050))

(assert (=> d!1838532 d!1838978))

(declare-fun bs!1379711 () Bool)

(declare-fun d!1838980 () Bool)

(assert (= bs!1379711 (and d!1838980 d!1838520)))

(declare-fun lambda!320164 () Int)

(assert (=> bs!1379711 (= lambda!320164 lambda!320099)))

(declare-fun bs!1379712 () Bool)

(assert (= bs!1379712 (and d!1838980 d!1838554)))

(assert (=> bs!1379712 (= lambda!320164 lambda!320112)))

(declare-fun bs!1379713 () Bool)

(assert (= bs!1379713 (and d!1838980 d!1838548)))

(assert (=> bs!1379713 (= lambda!320164 lambda!320106)))

(declare-fun bs!1379714 () Bool)

(assert (= bs!1379714 (and d!1838980 d!1838858)))

(assert (=> bs!1379714 (= lambda!320164 lambda!320145)))

(declare-fun bs!1379715 () Bool)

(assert (= bs!1379715 (and d!1838980 d!1838922)))

(assert (=> bs!1379715 (= lambda!320164 lambda!320156)))

(declare-fun bs!1379716 () Bool)

(assert (= bs!1379716 (and d!1838980 d!1838892)))

(assert (=> bs!1379716 (= lambda!320164 lambda!320151)))

(declare-fun bs!1379717 () Bool)

(assert (= bs!1379717 (and d!1838980 d!1838560)))

(assert (=> bs!1379717 (= lambda!320164 lambda!320113)))

(declare-fun bs!1379718 () Bool)

(assert (= bs!1379718 (and d!1838980 d!1838572)))

(assert (=> bs!1379718 (= lambda!320164 lambda!320114)))

(declare-fun bs!1379719 () Bool)

(assert (= bs!1379719 (and d!1838980 d!1838550)))

(assert (=> bs!1379719 (= lambda!320164 lambda!320109)))

(declare-fun bs!1379720 () Bool)

(assert (= bs!1379720 (and d!1838980 d!1838902)))

(assert (=> bs!1379720 (= lambda!320164 lambda!320153)))

(assert (=> d!1838980 (= (inv!83049 (h!70387 (t!377428 zl!343))) (forall!15008 (exprs!5805 (h!70387 (t!377428 zl!343))) lambda!320164))))

(declare-fun bs!1379721 () Bool)

(assert (= bs!1379721 d!1838980))

(declare-fun m!6774052 () Bool)

(assert (=> bs!1379721 m!6774052))

(assert (=> b!5854524 d!1838980))

(assert (=> d!1838516 d!1838512))

(assert (=> d!1838516 d!1838496))

(declare-fun d!1838982 () Bool)

(assert (=> d!1838982 (= (matchR!8104 r!7292 s!2326) (matchRSpec!3022 r!7292 s!2326))))

(assert (=> d!1838982 true))

(declare-fun _$88!4270 () Unit!157113)

(assert (=> d!1838982 (= (choose!44389 r!7292 s!2326) _$88!4270)))

(declare-fun bs!1379722 () Bool)

(assert (= bs!1379722 d!1838982))

(assert (=> bs!1379722 m!6772878))

(assert (=> bs!1379722 m!6772876))

(assert (=> d!1838516 d!1838982))

(assert (=> d!1838516 d!1838542))

(declare-fun b!5855390 () Bool)

(declare-fun e!3590509 () (InoxSet Context!10610))

(declare-fun call!458666 () (InoxSet Context!10610))

(assert (=> b!5855390 (= e!3590509 call!458666)))

(declare-fun d!1838984 () Bool)

(declare-fun c!1038321 () Bool)

(declare-fun e!3590511 () Bool)

(assert (=> d!1838984 (= c!1038321 e!3590511)))

(declare-fun res!2464632 () Bool)

(assert (=> d!1838984 (=> (not res!2464632) (not e!3590511))))

(assert (=> d!1838984 (= res!2464632 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))))

(declare-fun e!3590510 () (InoxSet Context!10610))

(assert (=> d!1838984 (= (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))) (h!70388 s!2326)) e!3590510)))

(declare-fun b!5855391 () Bool)

(assert (=> b!5855391 (= e!3590509 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458661 () Bool)

(assert (=> bm!458661 (= call!458666 (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))) (h!70388 s!2326)))))

(declare-fun b!5855392 () Bool)

(assert (=> b!5855392 (= e!3590510 ((_ map or) call!458666 (derivationStepZipperUp!1113 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))) (h!70388 s!2326))))))

(declare-fun b!5855393 () Bool)

(assert (=> b!5855393 (= e!3590510 e!3590509)))

(declare-fun c!1038322 () Bool)

(assert (=> b!5855393 (= c!1038322 ((_ is Cons!63938) (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938))))))))))

(declare-fun b!5855394 () Bool)

(assert (=> b!5855394 (= e!3590511 (nullable!5921 (h!70386 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 (regOne!32355 r!7292) Nil!63938)))))))))))

(assert (= (and d!1838984 res!2464632) b!5855394))

(assert (= (and d!1838984 c!1038321) b!5855392))

(assert (= (and d!1838984 (not c!1038321)) b!5855393))

(assert (= (and b!5855393 c!1038322) b!5855390))

(assert (= (and b!5855393 (not c!1038322)) b!5855391))

(assert (= (or b!5855392 b!5855390) bm!458661))

(declare-fun m!6774054 () Bool)

(assert (=> bm!458661 m!6774054))

(declare-fun m!6774056 () Bool)

(assert (=> b!5855392 m!6774056))

(declare-fun m!6774058 () Bool)

(assert (=> b!5855394 m!6774058))

(assert (=> b!5854197 d!1838984))

(declare-fun d!1838986 () Bool)

(declare-fun c!1038325 () Bool)

(assert (=> d!1838986 (= c!1038325 ((_ is Nil!63939) lt!2304749))))

(declare-fun e!3590514 () (InoxSet Context!10610))

(assert (=> d!1838986 (= (content!11751 lt!2304749) e!3590514)))

(declare-fun b!5855399 () Bool)

(assert (=> b!5855399 (= e!3590514 ((as const (Array Context!10610 Bool)) false))))

(declare-fun b!5855400 () Bool)

(assert (=> b!5855400 (= e!3590514 ((_ map or) (store ((as const (Array Context!10610 Bool)) false) (h!70387 lt!2304749) true) (content!11751 (t!377428 lt!2304749))))))

(assert (= (and d!1838986 c!1038325) b!5855399))

(assert (= (and d!1838986 (not c!1038325)) b!5855400))

(declare-fun m!6774060 () Bool)

(assert (=> b!5855400 m!6774060))

(declare-fun m!6774062 () Bool)

(assert (=> b!5855400 m!6774062))

(assert (=> b!5854270 d!1838986))

(assert (=> b!5854126 d!1838812))

(declare-fun d!1838988 () Bool)

(assert (=> d!1838988 (= (Exists!2993 (ite c!1037934 lambda!320089 lambda!320090)) (choose!44399 (ite c!1037934 lambda!320089 lambda!320090)))))

(declare-fun bs!1379723 () Bool)

(assert (= bs!1379723 d!1838988))

(declare-fun m!6774064 () Bool)

(assert (=> bs!1379723 m!6774064))

(assert (=> bm!458381 d!1838988))

(declare-fun d!1838990 () Bool)

(assert (=> d!1838990 (= ($colon$colon!1826 (exprs!5805 lt!2304692) (ite (or c!1038047 c!1038048) (regTwo!32354 (regTwo!32355 r!7292)) (regTwo!32355 r!7292))) (Cons!63938 (ite (or c!1038047 c!1038048) (regTwo!32354 (regTwo!32355 r!7292)) (regTwo!32355 r!7292)) (exprs!5805 lt!2304692)))))

(assert (=> bm!458443 d!1838990))

(declare-fun bm!458662 () Bool)

(declare-fun call!458669 () Bool)

(declare-fun call!458667 () Bool)

(assert (=> bm!458662 (= call!458669 call!458667)))

(declare-fun d!1838992 () Bool)

(declare-fun res!2464633 () Bool)

(declare-fun e!3590516 () Bool)

(assert (=> d!1838992 (=> res!2464633 e!3590516)))

(assert (=> d!1838992 (= res!2464633 ((_ is ElementMatch!15921) lt!2304752))))

(assert (=> d!1838992 (= (validRegex!7657 lt!2304752) e!3590516)))

(declare-fun c!1038326 () Bool)

(declare-fun bm!458663 () Bool)

(declare-fun c!1038327 () Bool)

(assert (=> bm!458663 (= call!458667 (validRegex!7657 (ite c!1038326 (reg!16250 lt!2304752) (ite c!1038327 (regTwo!32355 lt!2304752) (regTwo!32354 lt!2304752)))))))

(declare-fun b!5855401 () Bool)

(declare-fun e!3590517 () Bool)

(assert (=> b!5855401 (= e!3590517 call!458669)))

(declare-fun b!5855402 () Bool)

(declare-fun res!2464636 () Bool)

(declare-fun e!3590518 () Bool)

(assert (=> b!5855402 (=> res!2464636 e!3590518)))

(assert (=> b!5855402 (= res!2464636 (not ((_ is Concat!24766) lt!2304752)))))

(declare-fun e!3590521 () Bool)

(assert (=> b!5855402 (= e!3590521 e!3590518)))

(declare-fun b!5855403 () Bool)

(declare-fun e!3590519 () Bool)

(assert (=> b!5855403 (= e!3590519 call!458667)))

(declare-fun b!5855404 () Bool)

(declare-fun e!3590515 () Bool)

(assert (=> b!5855404 (= e!3590515 call!458669)))

(declare-fun b!5855405 () Bool)

(assert (=> b!5855405 (= e!3590518 e!3590517)))

(declare-fun res!2464637 () Bool)

(assert (=> b!5855405 (=> (not res!2464637) (not e!3590517))))

(declare-fun call!458668 () Bool)

(assert (=> b!5855405 (= res!2464637 call!458668)))

(declare-fun bm!458664 () Bool)

(assert (=> bm!458664 (= call!458668 (validRegex!7657 (ite c!1038327 (regOne!32355 lt!2304752) (regOne!32354 lt!2304752))))))

(declare-fun b!5855406 () Bool)

(declare-fun e!3590520 () Bool)

(assert (=> b!5855406 (= e!3590516 e!3590520)))

(assert (=> b!5855406 (= c!1038326 ((_ is Star!15921) lt!2304752))))

(declare-fun b!5855407 () Bool)

(declare-fun res!2464635 () Bool)

(assert (=> b!5855407 (=> (not res!2464635) (not e!3590515))))

(assert (=> b!5855407 (= res!2464635 call!458668)))

(assert (=> b!5855407 (= e!3590521 e!3590515)))

(declare-fun b!5855408 () Bool)

(assert (=> b!5855408 (= e!3590520 e!3590519)))

(declare-fun res!2464634 () Bool)

(assert (=> b!5855408 (= res!2464634 (not (nullable!5921 (reg!16250 lt!2304752))))))

(assert (=> b!5855408 (=> (not res!2464634) (not e!3590519))))

(declare-fun b!5855409 () Bool)

(assert (=> b!5855409 (= e!3590520 e!3590521)))

(assert (=> b!5855409 (= c!1038327 ((_ is Union!15921) lt!2304752))))

(assert (= (and d!1838992 (not res!2464633)) b!5855406))

(assert (= (and b!5855406 c!1038326) b!5855408))

(assert (= (and b!5855406 (not c!1038326)) b!5855409))

(assert (= (and b!5855408 res!2464634) b!5855403))

(assert (= (and b!5855409 c!1038327) b!5855407))

(assert (= (and b!5855409 (not c!1038327)) b!5855402))

(assert (= (and b!5855407 res!2464635) b!5855404))

(assert (= (and b!5855402 (not res!2464636)) b!5855405))

(assert (= (and b!5855405 res!2464637) b!5855401))

(assert (= (or b!5855404 b!5855401) bm!458662))

(assert (= (or b!5855407 b!5855405) bm!458664))

(assert (= (or b!5855403 bm!458662) bm!458663))

(declare-fun m!6774066 () Bool)

(assert (=> bm!458663 m!6774066))

(declare-fun m!6774068 () Bool)

(assert (=> bm!458664 m!6774068))

(declare-fun m!6774070 () Bool)

(assert (=> b!5855408 m!6774070))

(assert (=> d!1838548 d!1838992))

(declare-fun d!1838994 () Bool)

(declare-fun res!2464638 () Bool)

(declare-fun e!3590522 () Bool)

(assert (=> d!1838994 (=> res!2464638 e!3590522)))

(assert (=> d!1838994 (= res!2464638 ((_ is Nil!63938) (unfocusZipperList!1342 zl!343)))))

(assert (=> d!1838994 (= (forall!15008 (unfocusZipperList!1342 zl!343) lambda!320106) e!3590522)))

(declare-fun b!5855410 () Bool)

(declare-fun e!3590523 () Bool)

(assert (=> b!5855410 (= e!3590522 e!3590523)))

(declare-fun res!2464639 () Bool)

(assert (=> b!5855410 (=> (not res!2464639) (not e!3590523))))

(assert (=> b!5855410 (= res!2464639 (dynLambda!24998 lambda!320106 (h!70386 (unfocusZipperList!1342 zl!343))))))

(declare-fun b!5855411 () Bool)

(assert (=> b!5855411 (= e!3590523 (forall!15008 (t!377427 (unfocusZipperList!1342 zl!343)) lambda!320106))))

(assert (= (and d!1838994 (not res!2464638)) b!5855410))

(assert (= (and b!5855410 res!2464639) b!5855411))

(declare-fun b_lambda!220397 () Bool)

(assert (=> (not b_lambda!220397) (not b!5855410)))

(declare-fun m!6774072 () Bool)

(assert (=> b!5855410 m!6774072))

(declare-fun m!6774074 () Bool)

(assert (=> b!5855411 m!6774074))

(assert (=> d!1838548 d!1838994))

(declare-fun bm!458665 () Bool)

(declare-fun call!458672 () Bool)

(declare-fun call!458670 () Bool)

(assert (=> bm!458665 (= call!458672 call!458670)))

(declare-fun d!1838996 () Bool)

(declare-fun res!2464640 () Bool)

(declare-fun e!3590525 () Bool)

(assert (=> d!1838996 (=> res!2464640 e!3590525)))

(assert (=> d!1838996 (= res!2464640 ((_ is ElementMatch!15921) (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(assert (=> d!1838996 (= (validRegex!7657 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))) e!3590525)))

(declare-fun bm!458666 () Bool)

(declare-fun c!1038328 () Bool)

(declare-fun c!1038329 () Bool)

(assert (=> bm!458666 (= call!458670 (validRegex!7657 (ite c!1038328 (reg!16250 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))) (ite c!1038329 (regTwo!32355 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))) (regTwo!32354 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292)))))))))

(declare-fun b!5855412 () Bool)

(declare-fun e!3590526 () Bool)

(assert (=> b!5855412 (= e!3590526 call!458672)))

(declare-fun b!5855413 () Bool)

(declare-fun res!2464643 () Bool)

(declare-fun e!3590527 () Bool)

(assert (=> b!5855413 (=> res!2464643 e!3590527)))

(assert (=> b!5855413 (= res!2464643 (not ((_ is Concat!24766) (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292)))))))

(declare-fun e!3590530 () Bool)

(assert (=> b!5855413 (= e!3590530 e!3590527)))

(declare-fun b!5855414 () Bool)

(declare-fun e!3590528 () Bool)

(assert (=> b!5855414 (= e!3590528 call!458670)))

(declare-fun b!5855415 () Bool)

(declare-fun e!3590524 () Bool)

(assert (=> b!5855415 (= e!3590524 call!458672)))

(declare-fun b!5855416 () Bool)

(assert (=> b!5855416 (= e!3590527 e!3590526)))

(declare-fun res!2464644 () Bool)

(assert (=> b!5855416 (=> (not res!2464644) (not e!3590526))))

(declare-fun call!458671 () Bool)

(assert (=> b!5855416 (= res!2464644 call!458671)))

(declare-fun bm!458667 () Bool)

(assert (=> bm!458667 (= call!458671 (validRegex!7657 (ite c!1038329 (regOne!32355 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))) (regOne!32354 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))))

(declare-fun b!5855417 () Bool)

(declare-fun e!3590529 () Bool)

(assert (=> b!5855417 (= e!3590525 e!3590529)))

(assert (=> b!5855417 (= c!1038328 ((_ is Star!15921) (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(declare-fun b!5855418 () Bool)

(declare-fun res!2464642 () Bool)

(assert (=> b!5855418 (=> (not res!2464642) (not e!3590524))))

(assert (=> b!5855418 (= res!2464642 call!458671)))

(assert (=> b!5855418 (= e!3590530 e!3590524)))

(declare-fun b!5855419 () Bool)

(assert (=> b!5855419 (= e!3590529 e!3590528)))

(declare-fun res!2464641 () Bool)

(assert (=> b!5855419 (= res!2464641 (not (nullable!5921 (reg!16250 (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))))

(assert (=> b!5855419 (=> (not res!2464641) (not e!3590528))))

(declare-fun b!5855420 () Bool)

(assert (=> b!5855420 (= e!3590529 e!3590530)))

(assert (=> b!5855420 (= c!1038329 ((_ is Union!15921) (ite c!1037993 (regOne!32355 r!7292) (regOne!32354 r!7292))))))

(assert (= (and d!1838996 (not res!2464640)) b!5855417))

(assert (= (and b!5855417 c!1038328) b!5855419))

(assert (= (and b!5855417 (not c!1038328)) b!5855420))

(assert (= (and b!5855419 res!2464641) b!5855414))

(assert (= (and b!5855420 c!1038329) b!5855418))

(assert (= (and b!5855420 (not c!1038329)) b!5855413))

(assert (= (and b!5855418 res!2464642) b!5855415))

(assert (= (and b!5855413 (not res!2464643)) b!5855416))

(assert (= (and b!5855416 res!2464644) b!5855412))

(assert (= (or b!5855415 b!5855412) bm!458665))

(assert (= (or b!5855418 b!5855416) bm!458667))

(assert (= (or b!5855414 bm!458665) bm!458666))

(declare-fun m!6774076 () Bool)

(assert (=> bm!458666 m!6774076))

(declare-fun m!6774078 () Bool)

(assert (=> bm!458667 m!6774078))

(declare-fun m!6774080 () Bool)

(assert (=> b!5855419 m!6774080))

(assert (=> bm!458418 d!1838996))

(declare-fun b!5855421 () Bool)

(declare-fun e!3590534 () (InoxSet Context!10610))

(declare-fun call!458676 () (InoxSet Context!10610))

(declare-fun call!458674 () (InoxSet Context!10610))

(assert (=> b!5855421 (= e!3590534 ((_ map or) call!458676 call!458674))))

(declare-fun b!5855422 () Bool)

(declare-fun e!3590536 () (InoxSet Context!10610))

(declare-fun call!458673 () (InoxSet Context!10610))

(assert (=> b!5855422 (= e!3590536 call!458673)))

(declare-fun b!5855423 () Bool)

(declare-fun e!3590531 () Bool)

(assert (=> b!5855423 (= e!3590531 (nullable!5921 (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))))

(declare-fun d!1838998 () Bool)

(declare-fun c!1038331 () Bool)

(assert (=> d!1838998 (= c!1038331 (and ((_ is ElementMatch!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (= (c!1037845 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70388 s!2326))))))

(declare-fun e!3590533 () (InoxSet Context!10610))

(assert (=> d!1838998 (= (derivationStepZipperDown!1187 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70388 s!2326)) e!3590533)))

(declare-fun b!5855424 () Bool)

(declare-fun e!3590532 () (InoxSet Context!10610))

(assert (=> b!5855424 (= e!3590533 e!3590532)))

(declare-fun c!1038330 () Bool)

(assert (=> b!5855424 (= c!1038330 ((_ is Union!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(declare-fun b!5855425 () Bool)

(declare-fun e!3590535 () (InoxSet Context!10610))

(assert (=> b!5855425 (= e!3590534 e!3590535)))

(declare-fun c!1038334 () Bool)

(assert (=> b!5855425 (= c!1038334 ((_ is Concat!24766) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(declare-fun b!5855426 () Bool)

(declare-fun c!1038332 () Bool)

(assert (=> b!5855426 (= c!1038332 ((_ is Star!15921) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(assert (=> b!5855426 (= e!3590535 e!3590536)))

(declare-fun bm!458668 () Bool)

(declare-fun c!1038333 () Bool)

(declare-fun call!458675 () List!64062)

(declare-fun call!458678 () (InoxSet Context!10610))

(assert (=> bm!458668 (= call!458678 (derivationStepZipperDown!1187 (ite c!1038330 (regTwo!32355 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (ite c!1038333 (regTwo!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (ite c!1038334 (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (reg!16250 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))) (ite (or c!1038330 c!1038333) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (Context!10611 call!458675)) (h!70388 s!2326)))))

(declare-fun b!5855427 () Bool)

(assert (=> b!5855427 (= e!3590536 ((as const (Array Context!10610 Bool)) false))))

(declare-fun bm!458669 () Bool)

(declare-fun call!458677 () List!64062)

(assert (=> bm!458669 (= call!458675 call!458677)))

(declare-fun bm!458670 () Bool)

(assert (=> bm!458670 (= call!458674 call!458678)))

(declare-fun b!5855428 () Bool)

(assert (=> b!5855428 (= c!1038333 e!3590531)))

(declare-fun res!2464645 () Bool)

(assert (=> b!5855428 (=> (not res!2464645) (not e!3590531))))

(assert (=> b!5855428 (= res!2464645 ((_ is Concat!24766) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))))))

(assert (=> b!5855428 (= e!3590532 e!3590534)))

(declare-fun b!5855429 () Bool)

(assert (=> b!5855429 (= e!3590532 ((_ map or) call!458676 call!458678))))

(declare-fun bm!458671 () Bool)

(assert (=> bm!458671 (= call!458673 call!458674)))

(declare-fun b!5855430 () Bool)

(assert (=> b!5855430 (= e!3590533 (store ((as const (Array Context!10610 Bool)) false) (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) true))))

(declare-fun bm!458672 () Bool)

(assert (=> bm!458672 (= call!458676 (derivationStepZipperDown!1187 (ite c!1038330 (regOne!32355 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (regOne!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))) (ite c!1038330 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (Context!10611 call!458677)) (h!70388 s!2326)))))

(declare-fun bm!458673 () Bool)

(assert (=> bm!458673 (= call!458677 ($colon$colon!1826 (exprs!5805 (Context!10611 (t!377427 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))) (ite (or c!1038333 c!1038334) (regTwo!32354 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938))))) (h!70386 (exprs!5805 (Context!10611 (Cons!63938 r!7292 Nil!63938)))))))))

(declare-fun b!5855431 () Bool)

(assert (=> b!5855431 (= e!3590535 call!458673)))

(assert (= (and d!1838998 c!1038331) b!5855430))

(assert (= (and d!1838998 (not c!1038331)) b!5855424))

(assert (= (and b!5855424 c!1038330) b!5855429))

(assert (= (and b!5855424 (not c!1038330)) b!5855428))

(assert (= (and b!5855428 res!2464645) b!5855423))

(assert (= (and b!5855428 c!1038333) b!5855421))

(assert (= (and b!5855428 (not c!1038333)) b!5855425))

(assert (= (and b!5855425 c!1038334) b!5855431))

(assert (= (and b!5855425 (not c!1038334)) b!5855426))

(assert (= (and b!5855426 c!1038332) b!5855422))

(assert (= (and b!5855426 (not c!1038332)) b!5855427))

(assert (= (or b!5855431 b!5855422) bm!458669))

(assert (= (or b!5855431 b!5855422) bm!458671))

(assert (= (or b!5855421 bm!458669) bm!458673))

(assert (= (or b!5855421 bm!458671) bm!458670))

(assert (= (or b!5855429 bm!458670) bm!458668))

(assert (= (or b!5855429 b!5855421) bm!458672))

(declare-fun m!6774082 () Bool)

(assert (=> b!5855423 m!6774082))

(declare-fun m!6774084 () Bool)

(assert (=> bm!458672 m!6774084))

(declare-fun m!6774086 () Bool)

(assert (=> bm!458673 m!6774086))

(declare-fun m!6774088 () Bool)

(assert (=> bm!458668 m!6774088))

(declare-fun m!6774090 () Bool)

(assert (=> b!5855430 m!6774090))

(assert (=> bm!458437 d!1838998))

(declare-fun d!1839000 () Bool)

(declare-fun c!1038335 () Bool)

(assert (=> d!1839000 (= c!1038335 (isEmpty!35798 (t!377429 s!2326)))))

(declare-fun e!3590537 () Bool)

(assert (=> d!1839000 (= (matchZipper!1987 ((_ map or) lt!2304690 lt!2304694) (t!377429 s!2326)) e!3590537)))

(declare-fun b!5855432 () Bool)

(assert (=> b!5855432 (= e!3590537 (nullableZipper!1760 ((_ map or) lt!2304690 lt!2304694)))))

(declare-fun b!5855433 () Bool)

(assert (=> b!5855433 (= e!3590537 (matchZipper!1987 (derivationStepZipper!1920 ((_ map or) lt!2304690 lt!2304694) (head!12395 (t!377429 s!2326))) (tail!11480 (t!377429 s!2326))))))

(assert (= (and d!1839000 c!1038335) b!5855432))

(assert (= (and d!1839000 (not c!1038335)) b!5855433))

(assert (=> d!1839000 m!6773156))

(declare-fun m!6774092 () Bool)

(assert (=> b!5855432 m!6774092))

(assert (=> b!5855433 m!6773160))

(assert (=> b!5855433 m!6773160))

(declare-fun m!6774094 () Bool)

(assert (=> b!5855433 m!6774094))

(assert (=> b!5855433 m!6773164))

(assert (=> b!5855433 m!6774094))

(assert (=> b!5855433 m!6773164))

(declare-fun m!6774096 () Bool)

(assert (=> b!5855433 m!6774096))

(assert (=> d!1838566 d!1839000))

(assert (=> d!1838566 d!1838564))

(declare-fun d!1839002 () Bool)

(declare-fun e!3590540 () Bool)

(assert (=> d!1839002 (= (matchZipper!1987 ((_ map or) lt!2304690 lt!2304694) (t!377429 s!2326)) e!3590540)))

(declare-fun res!2464648 () Bool)

(assert (=> d!1839002 (=> res!2464648 e!3590540)))

(assert (=> d!1839002 (= res!2464648 (matchZipper!1987 lt!2304690 (t!377429 s!2326)))))

(assert (=> d!1839002 true))

(declare-fun _$48!1419 () Unit!157113)

(assert (=> d!1839002 (= (choose!44397 lt!2304690 lt!2304694 (t!377429 s!2326)) _$48!1419)))

(declare-fun b!5855436 () Bool)

(assert (=> b!5855436 (= e!3590540 (matchZipper!1987 lt!2304694 (t!377429 s!2326)))))

(assert (= (and d!1839002 (not res!2464648)) b!5855436))

(assert (=> d!1839002 m!6773238))

(assert (=> d!1839002 m!6772888))

(assert (=> b!5855436 m!6772850))

(assert (=> d!1838566 d!1839002))

(declare-fun e!3590541 () Bool)

(assert (=> b!5854527 (= tp!1619528 e!3590541)))

(declare-fun b!5855438 () Bool)

(declare-fun tp!1619721 () Bool)

(declare-fun tp!1619724 () Bool)

(assert (=> b!5855438 (= e!3590541 (and tp!1619721 tp!1619724))))

(declare-fun b!5855440 () Bool)

(declare-fun tp!1619725 () Bool)

(declare-fun tp!1619723 () Bool)

(assert (=> b!5855440 (= e!3590541 (and tp!1619725 tp!1619723))))

(declare-fun b!5855437 () Bool)

(assert (=> b!5855437 (= e!3590541 tp_is_empty!41095)))

(declare-fun b!5855439 () Bool)

(declare-fun tp!1619722 () Bool)

(assert (=> b!5855439 (= e!3590541 tp!1619722)))

(assert (= (and b!5854527 ((_ is ElementMatch!15921) (regOne!32354 (regOne!32355 r!7292)))) b!5855437))

(assert (= (and b!5854527 ((_ is Concat!24766) (regOne!32354 (regOne!32355 r!7292)))) b!5855438))

(assert (= (and b!5854527 ((_ is Star!15921) (regOne!32354 (regOne!32355 r!7292)))) b!5855439))

(assert (= (and b!5854527 ((_ is Union!15921) (regOne!32354 (regOne!32355 r!7292)))) b!5855440))

(declare-fun e!3590542 () Bool)

(assert (=> b!5854527 (= tp!1619531 e!3590542)))

(declare-fun b!5855442 () Bool)

(declare-fun tp!1619726 () Bool)

(declare-fun tp!1619729 () Bool)

(assert (=> b!5855442 (= e!3590542 (and tp!1619726 tp!1619729))))

(declare-fun b!5855444 () Bool)

(declare-fun tp!1619730 () Bool)

(declare-fun tp!1619728 () Bool)

(assert (=> b!5855444 (= e!3590542 (and tp!1619730 tp!1619728))))

(declare-fun b!5855441 () Bool)

(assert (=> b!5855441 (= e!3590542 tp_is_empty!41095)))

(declare-fun b!5855443 () Bool)

(declare-fun tp!1619727 () Bool)

(assert (=> b!5855443 (= e!3590542 tp!1619727)))

(assert (= (and b!5854527 ((_ is ElementMatch!15921) (regTwo!32354 (regOne!32355 r!7292)))) b!5855441))

(assert (= (and b!5854527 ((_ is Concat!24766) (regTwo!32354 (regOne!32355 r!7292)))) b!5855442))

(assert (= (and b!5854527 ((_ is Star!15921) (regTwo!32354 (regOne!32355 r!7292)))) b!5855443))

(assert (= (and b!5854527 ((_ is Union!15921) (regTwo!32354 (regOne!32355 r!7292)))) b!5855444))

(declare-fun e!3590543 () Bool)

(assert (=> b!5854504 (= tp!1619505 e!3590543)))

(declare-fun b!5855446 () Bool)

(declare-fun tp!1619731 () Bool)

(declare-fun tp!1619734 () Bool)

(assert (=> b!5855446 (= e!3590543 (and tp!1619731 tp!1619734))))

(declare-fun b!5855448 () Bool)

(declare-fun tp!1619735 () Bool)

(declare-fun tp!1619733 () Bool)

(assert (=> b!5855448 (= e!3590543 (and tp!1619735 tp!1619733))))

(declare-fun b!5855445 () Bool)

(assert (=> b!5855445 (= e!3590543 tp_is_empty!41095)))

(declare-fun b!5855447 () Bool)

(declare-fun tp!1619732 () Bool)

(assert (=> b!5855447 (= e!3590543 tp!1619732)))

(assert (= (and b!5854504 ((_ is ElementMatch!15921) (regOne!32355 (regOne!32354 r!7292)))) b!5855445))

(assert (= (and b!5854504 ((_ is Concat!24766) (regOne!32355 (regOne!32354 r!7292)))) b!5855446))

(assert (= (and b!5854504 ((_ is Star!15921) (regOne!32355 (regOne!32354 r!7292)))) b!5855447))

(assert (= (and b!5854504 ((_ is Union!15921) (regOne!32355 (regOne!32354 r!7292)))) b!5855448))

(declare-fun e!3590544 () Bool)

(assert (=> b!5854504 (= tp!1619503 e!3590544)))

(declare-fun b!5855450 () Bool)

(declare-fun tp!1619736 () Bool)

(declare-fun tp!1619739 () Bool)

(assert (=> b!5855450 (= e!3590544 (and tp!1619736 tp!1619739))))

(declare-fun b!5855452 () Bool)

(declare-fun tp!1619740 () Bool)

(declare-fun tp!1619738 () Bool)

(assert (=> b!5855452 (= e!3590544 (and tp!1619740 tp!1619738))))

(declare-fun b!5855449 () Bool)

(assert (=> b!5855449 (= e!3590544 tp_is_empty!41095)))

(declare-fun b!5855451 () Bool)

(declare-fun tp!1619737 () Bool)

(assert (=> b!5855451 (= e!3590544 tp!1619737)))

(assert (= (and b!5854504 ((_ is ElementMatch!15921) (regTwo!32355 (regOne!32354 r!7292)))) b!5855449))

(assert (= (and b!5854504 ((_ is Concat!24766) (regTwo!32355 (regOne!32354 r!7292)))) b!5855450))

(assert (= (and b!5854504 ((_ is Star!15921) (regTwo!32355 (regOne!32354 r!7292)))) b!5855451))

(assert (= (and b!5854504 ((_ is Union!15921) (regTwo!32355 (regOne!32354 r!7292)))) b!5855452))

(declare-fun e!3590545 () Bool)

(assert (=> b!5854533 (= tp!1619537 e!3590545)))

(declare-fun b!5855454 () Bool)

(declare-fun tp!1619741 () Bool)

(declare-fun tp!1619744 () Bool)

(assert (=> b!5855454 (= e!3590545 (and tp!1619741 tp!1619744))))

(declare-fun b!5855456 () Bool)

(declare-fun tp!1619745 () Bool)

(declare-fun tp!1619743 () Bool)

(assert (=> b!5855456 (= e!3590545 (and tp!1619745 tp!1619743))))

(declare-fun b!5855453 () Bool)

(assert (=> b!5855453 (= e!3590545 tp_is_empty!41095)))

(declare-fun b!5855455 () Bool)

(declare-fun tp!1619742 () Bool)

(assert (=> b!5855455 (= e!3590545 tp!1619742)))

(assert (= (and b!5854533 ((_ is ElementMatch!15921) (regOne!32355 (regTwo!32355 r!7292)))) b!5855453))

(assert (= (and b!5854533 ((_ is Concat!24766) (regOne!32355 (regTwo!32355 r!7292)))) b!5855454))

(assert (= (and b!5854533 ((_ is Star!15921) (regOne!32355 (regTwo!32355 r!7292)))) b!5855455))

(assert (= (and b!5854533 ((_ is Union!15921) (regOne!32355 (regTwo!32355 r!7292)))) b!5855456))

(declare-fun e!3590546 () Bool)

(assert (=> b!5854533 (= tp!1619535 e!3590546)))

(declare-fun b!5855458 () Bool)

(declare-fun tp!1619746 () Bool)

(declare-fun tp!1619749 () Bool)

(assert (=> b!5855458 (= e!3590546 (and tp!1619746 tp!1619749))))

(declare-fun b!5855460 () Bool)

(declare-fun tp!1619750 () Bool)

(declare-fun tp!1619748 () Bool)

(assert (=> b!5855460 (= e!3590546 (and tp!1619750 tp!1619748))))

(declare-fun b!5855457 () Bool)

(assert (=> b!5855457 (= e!3590546 tp_is_empty!41095)))

(declare-fun b!5855459 () Bool)

(declare-fun tp!1619747 () Bool)

(assert (=> b!5855459 (= e!3590546 tp!1619747)))

(assert (= (and b!5854533 ((_ is ElementMatch!15921) (regTwo!32355 (regTwo!32355 r!7292)))) b!5855457))

(assert (= (and b!5854533 ((_ is Concat!24766) (regTwo!32355 (regTwo!32355 r!7292)))) b!5855458))

(assert (= (and b!5854533 ((_ is Star!15921) (regTwo!32355 (regTwo!32355 r!7292)))) b!5855459))

(assert (= (and b!5854533 ((_ is Union!15921) (regTwo!32355 (regTwo!32355 r!7292)))) b!5855460))

(declare-fun e!3590547 () Bool)

(assert (=> b!5854511 (= tp!1619512 e!3590547)))

(declare-fun b!5855462 () Bool)

(declare-fun tp!1619751 () Bool)

(declare-fun tp!1619754 () Bool)

(assert (=> b!5855462 (= e!3590547 (and tp!1619751 tp!1619754))))

(declare-fun b!5855464 () Bool)

(declare-fun tp!1619755 () Bool)

(declare-fun tp!1619753 () Bool)

(assert (=> b!5855464 (= e!3590547 (and tp!1619755 tp!1619753))))

(declare-fun b!5855461 () Bool)

(assert (=> b!5855461 (= e!3590547 tp_is_empty!41095)))

(declare-fun b!5855463 () Bool)

(declare-fun tp!1619752 () Bool)

(assert (=> b!5855463 (= e!3590547 tp!1619752)))

(assert (= (and b!5854511 ((_ is ElementMatch!15921) (reg!16250 (reg!16250 r!7292)))) b!5855461))

(assert (= (and b!5854511 ((_ is Concat!24766) (reg!16250 (reg!16250 r!7292)))) b!5855462))

(assert (= (and b!5854511 ((_ is Star!15921) (reg!16250 (reg!16250 r!7292)))) b!5855463))

(assert (= (and b!5854511 ((_ is Union!15921) (reg!16250 (reg!16250 r!7292)))) b!5855464))

(declare-fun e!3590548 () Bool)

(assert (=> b!5854539 (= tp!1619544 e!3590548)))

(declare-fun b!5855466 () Bool)

(declare-fun tp!1619756 () Bool)

(declare-fun tp!1619759 () Bool)

(assert (=> b!5855466 (= e!3590548 (and tp!1619756 tp!1619759))))

(declare-fun b!5855468 () Bool)

(declare-fun tp!1619760 () Bool)

(declare-fun tp!1619758 () Bool)

(assert (=> b!5855468 (= e!3590548 (and tp!1619760 tp!1619758))))

(declare-fun b!5855465 () Bool)

(assert (=> b!5855465 (= e!3590548 tp_is_empty!41095)))

(declare-fun b!5855467 () Bool)

(declare-fun tp!1619757 () Bool)

(assert (=> b!5855467 (= e!3590548 tp!1619757)))

(assert (= (and b!5854539 ((_ is ElementMatch!15921) (h!70386 (exprs!5805 setElem!39670)))) b!5855465))

(assert (= (and b!5854539 ((_ is Concat!24766) (h!70386 (exprs!5805 setElem!39670)))) b!5855466))

(assert (= (and b!5854539 ((_ is Star!15921) (h!70386 (exprs!5805 setElem!39670)))) b!5855467))

(assert (= (and b!5854539 ((_ is Union!15921) (h!70386 (exprs!5805 setElem!39670)))) b!5855468))

(declare-fun b!5855469 () Bool)

(declare-fun e!3590549 () Bool)

(declare-fun tp!1619761 () Bool)

(declare-fun tp!1619762 () Bool)

(assert (=> b!5855469 (= e!3590549 (and tp!1619761 tp!1619762))))

(assert (=> b!5854539 (= tp!1619545 e!3590549)))

(assert (= (and b!5854539 ((_ is Cons!63938) (t!377427 (exprs!5805 setElem!39670)))) b!5855469))

(declare-fun e!3590550 () Bool)

(assert (=> b!5854502 (= tp!1619501 e!3590550)))

(declare-fun b!5855471 () Bool)

(declare-fun tp!1619763 () Bool)

(declare-fun tp!1619766 () Bool)

(assert (=> b!5855471 (= e!3590550 (and tp!1619763 tp!1619766))))

(declare-fun b!5855473 () Bool)

(declare-fun tp!1619767 () Bool)

(declare-fun tp!1619765 () Bool)

(assert (=> b!5855473 (= e!3590550 (and tp!1619767 tp!1619765))))

(declare-fun b!5855470 () Bool)

(assert (=> b!5855470 (= e!3590550 tp_is_empty!41095)))

(declare-fun b!5855472 () Bool)

(declare-fun tp!1619764 () Bool)

(assert (=> b!5855472 (= e!3590550 tp!1619764)))

(assert (= (and b!5854502 ((_ is ElementMatch!15921) (regOne!32354 (regOne!32354 r!7292)))) b!5855470))

(assert (= (and b!5854502 ((_ is Concat!24766) (regOne!32354 (regOne!32354 r!7292)))) b!5855471))

(assert (= (and b!5854502 ((_ is Star!15921) (regOne!32354 (regOne!32354 r!7292)))) b!5855472))

(assert (= (and b!5854502 ((_ is Union!15921) (regOne!32354 (regOne!32354 r!7292)))) b!5855473))

(declare-fun e!3590551 () Bool)

(assert (=> b!5854502 (= tp!1619504 e!3590551)))

(declare-fun b!5855475 () Bool)

(declare-fun tp!1619768 () Bool)

(declare-fun tp!1619771 () Bool)

(assert (=> b!5855475 (= e!3590551 (and tp!1619768 tp!1619771))))

(declare-fun b!5855477 () Bool)

(declare-fun tp!1619772 () Bool)

(declare-fun tp!1619770 () Bool)

(assert (=> b!5855477 (= e!3590551 (and tp!1619772 tp!1619770))))

(declare-fun b!5855474 () Bool)

(assert (=> b!5855474 (= e!3590551 tp_is_empty!41095)))

(declare-fun b!5855476 () Bool)

(declare-fun tp!1619769 () Bool)

(assert (=> b!5855476 (= e!3590551 tp!1619769)))

(assert (= (and b!5854502 ((_ is ElementMatch!15921) (regTwo!32354 (regOne!32354 r!7292)))) b!5855474))

(assert (= (and b!5854502 ((_ is Concat!24766) (regTwo!32354 (regOne!32354 r!7292)))) b!5855475))

(assert (= (and b!5854502 ((_ is Star!15921) (regTwo!32354 (regOne!32354 r!7292)))) b!5855476))

(assert (= (and b!5854502 ((_ is Union!15921) (regTwo!32354 (regOne!32354 r!7292)))) b!5855477))

(declare-fun e!3590552 () Bool)

(assert (=> b!5854512 (= tp!1619515 e!3590552)))

(declare-fun b!5855479 () Bool)

(declare-fun tp!1619773 () Bool)

(declare-fun tp!1619776 () Bool)

(assert (=> b!5855479 (= e!3590552 (and tp!1619773 tp!1619776))))

(declare-fun b!5855481 () Bool)

(declare-fun tp!1619777 () Bool)

(declare-fun tp!1619775 () Bool)

(assert (=> b!5855481 (= e!3590552 (and tp!1619777 tp!1619775))))

(declare-fun b!5855478 () Bool)

(assert (=> b!5855478 (= e!3590552 tp_is_empty!41095)))

(declare-fun b!5855480 () Bool)

(declare-fun tp!1619774 () Bool)

(assert (=> b!5855480 (= e!3590552 tp!1619774)))

(assert (= (and b!5854512 ((_ is ElementMatch!15921) (regOne!32355 (reg!16250 r!7292)))) b!5855478))

(assert (= (and b!5854512 ((_ is Concat!24766) (regOne!32355 (reg!16250 r!7292)))) b!5855479))

(assert (= (and b!5854512 ((_ is Star!15921) (regOne!32355 (reg!16250 r!7292)))) b!5855480))

(assert (= (and b!5854512 ((_ is Union!15921) (regOne!32355 (reg!16250 r!7292)))) b!5855481))

(declare-fun e!3590553 () Bool)

(assert (=> b!5854512 (= tp!1619513 e!3590553)))

(declare-fun b!5855483 () Bool)

(declare-fun tp!1619778 () Bool)

(declare-fun tp!1619781 () Bool)

(assert (=> b!5855483 (= e!3590553 (and tp!1619778 tp!1619781))))

(declare-fun b!5855485 () Bool)

(declare-fun tp!1619782 () Bool)

(declare-fun tp!1619780 () Bool)

(assert (=> b!5855485 (= e!3590553 (and tp!1619782 tp!1619780))))

(declare-fun b!5855482 () Bool)

(assert (=> b!5855482 (= e!3590553 tp_is_empty!41095)))

(declare-fun b!5855484 () Bool)

(declare-fun tp!1619779 () Bool)

(assert (=> b!5855484 (= e!3590553 tp!1619779)))

(assert (= (and b!5854512 ((_ is ElementMatch!15921) (regTwo!32355 (reg!16250 r!7292)))) b!5855482))

(assert (= (and b!5854512 ((_ is Concat!24766) (regTwo!32355 (reg!16250 r!7292)))) b!5855483))

(assert (= (and b!5854512 ((_ is Star!15921) (regTwo!32355 (reg!16250 r!7292)))) b!5855484))

(assert (= (and b!5854512 ((_ is Union!15921) (regTwo!32355 (reg!16250 r!7292)))) b!5855485))

(declare-fun e!3590554 () Bool)

(assert (=> b!5854503 (= tp!1619502 e!3590554)))

(declare-fun b!5855487 () Bool)

(declare-fun tp!1619783 () Bool)

(declare-fun tp!1619786 () Bool)

(assert (=> b!5855487 (= e!3590554 (and tp!1619783 tp!1619786))))

(declare-fun b!5855489 () Bool)

(declare-fun tp!1619787 () Bool)

(declare-fun tp!1619785 () Bool)

(assert (=> b!5855489 (= e!3590554 (and tp!1619787 tp!1619785))))

(declare-fun b!5855486 () Bool)

(assert (=> b!5855486 (= e!3590554 tp_is_empty!41095)))

(declare-fun b!5855488 () Bool)

(declare-fun tp!1619784 () Bool)

(assert (=> b!5855488 (= e!3590554 tp!1619784)))

(assert (= (and b!5854503 ((_ is ElementMatch!15921) (reg!16250 (regOne!32354 r!7292)))) b!5855486))

(assert (= (and b!5854503 ((_ is Concat!24766) (reg!16250 (regOne!32354 r!7292)))) b!5855487))

(assert (= (and b!5854503 ((_ is Star!15921) (reg!16250 (regOne!32354 r!7292)))) b!5855488))

(assert (= (and b!5854503 ((_ is Union!15921) (reg!16250 (regOne!32354 r!7292)))) b!5855489))

(declare-fun e!3590555 () Bool)

(assert (=> b!5854531 (= tp!1619533 e!3590555)))

(declare-fun b!5855491 () Bool)

(declare-fun tp!1619788 () Bool)

(declare-fun tp!1619791 () Bool)

(assert (=> b!5855491 (= e!3590555 (and tp!1619788 tp!1619791))))

(declare-fun b!5855493 () Bool)

(declare-fun tp!1619792 () Bool)

(declare-fun tp!1619790 () Bool)

(assert (=> b!5855493 (= e!3590555 (and tp!1619792 tp!1619790))))

(declare-fun b!5855490 () Bool)

(assert (=> b!5855490 (= e!3590555 tp_is_empty!41095)))

(declare-fun b!5855492 () Bool)

(declare-fun tp!1619789 () Bool)

(assert (=> b!5855492 (= e!3590555 tp!1619789)))

(assert (= (and b!5854531 ((_ is ElementMatch!15921) (regOne!32354 (regTwo!32355 r!7292)))) b!5855490))

(assert (= (and b!5854531 ((_ is Concat!24766) (regOne!32354 (regTwo!32355 r!7292)))) b!5855491))

(assert (= (and b!5854531 ((_ is Star!15921) (regOne!32354 (regTwo!32355 r!7292)))) b!5855492))

(assert (= (and b!5854531 ((_ is Union!15921) (regOne!32354 (regTwo!32355 r!7292)))) b!5855493))

(declare-fun e!3590556 () Bool)

(assert (=> b!5854531 (= tp!1619536 e!3590556)))

(declare-fun b!5855495 () Bool)

(declare-fun tp!1619793 () Bool)

(declare-fun tp!1619796 () Bool)

(assert (=> b!5855495 (= e!3590556 (and tp!1619793 tp!1619796))))

(declare-fun b!5855497 () Bool)

(declare-fun tp!1619797 () Bool)

(declare-fun tp!1619795 () Bool)

(assert (=> b!5855497 (= e!3590556 (and tp!1619797 tp!1619795))))

(declare-fun b!5855494 () Bool)

(assert (=> b!5855494 (= e!3590556 tp_is_empty!41095)))

(declare-fun b!5855496 () Bool)

(declare-fun tp!1619794 () Bool)

(assert (=> b!5855496 (= e!3590556 tp!1619794)))

(assert (= (and b!5854531 ((_ is ElementMatch!15921) (regTwo!32354 (regTwo!32355 r!7292)))) b!5855494))

(assert (= (and b!5854531 ((_ is Concat!24766) (regTwo!32354 (regTwo!32355 r!7292)))) b!5855495))

(assert (= (and b!5854531 ((_ is Star!15921) (regTwo!32354 (regTwo!32355 r!7292)))) b!5855496))

(assert (= (and b!5854531 ((_ is Union!15921) (regTwo!32354 (regTwo!32355 r!7292)))) b!5855497))

(declare-fun b!5855499 () Bool)

(declare-fun e!3590558 () Bool)

(declare-fun tp!1619798 () Bool)

(assert (=> b!5855499 (= e!3590558 tp!1619798)))

(declare-fun tp!1619799 () Bool)

(declare-fun e!3590557 () Bool)

(declare-fun b!5855498 () Bool)

(assert (=> b!5855498 (= e!3590557 (and (inv!83049 (h!70387 (t!377428 (t!377428 zl!343)))) e!3590558 tp!1619799))))

(assert (=> b!5854524 (= tp!1619527 e!3590557)))

(assert (= b!5855498 b!5855499))

(assert (= (and b!5854524 ((_ is Cons!63939) (t!377428 (t!377428 zl!343)))) b!5855498))

(declare-fun m!6774098 () Bool)

(assert (=> b!5855498 m!6774098))

(declare-fun e!3590559 () Bool)

(assert (=> b!5854532 (= tp!1619534 e!3590559)))

(declare-fun b!5855501 () Bool)

(declare-fun tp!1619800 () Bool)

(declare-fun tp!1619803 () Bool)

(assert (=> b!5855501 (= e!3590559 (and tp!1619800 tp!1619803))))

(declare-fun b!5855503 () Bool)

(declare-fun tp!1619804 () Bool)

(declare-fun tp!1619802 () Bool)

(assert (=> b!5855503 (= e!3590559 (and tp!1619804 tp!1619802))))

(declare-fun b!5855500 () Bool)

(assert (=> b!5855500 (= e!3590559 tp_is_empty!41095)))

(declare-fun b!5855502 () Bool)

(declare-fun tp!1619801 () Bool)

(assert (=> b!5855502 (= e!3590559 tp!1619801)))

(assert (= (and b!5854532 ((_ is ElementMatch!15921) (reg!16250 (regTwo!32355 r!7292)))) b!5855500))

(assert (= (and b!5854532 ((_ is Concat!24766) (reg!16250 (regTwo!32355 r!7292)))) b!5855501))

(assert (= (and b!5854532 ((_ is Star!15921) (reg!16250 (regTwo!32355 r!7292)))) b!5855502))

(assert (= (and b!5854532 ((_ is Union!15921) (reg!16250 (regTwo!32355 r!7292)))) b!5855503))

(declare-fun b!5855504 () Bool)

(declare-fun e!3590560 () Bool)

(declare-fun tp!1619805 () Bool)

(declare-fun tp!1619806 () Bool)

(assert (=> b!5855504 (= e!3590560 (and tp!1619805 tp!1619806))))

(assert (=> b!5854525 (= tp!1619526 e!3590560)))

(assert (= (and b!5854525 ((_ is Cons!63938) (exprs!5805 (h!70387 (t!377428 zl!343))))) b!5855504))

(declare-fun e!3590561 () Bool)

(assert (=> b!5854510 (= tp!1619511 e!3590561)))

(declare-fun b!5855506 () Bool)

(declare-fun tp!1619807 () Bool)

(declare-fun tp!1619810 () Bool)

(assert (=> b!5855506 (= e!3590561 (and tp!1619807 tp!1619810))))

(declare-fun b!5855508 () Bool)

(declare-fun tp!1619811 () Bool)

(declare-fun tp!1619809 () Bool)

(assert (=> b!5855508 (= e!3590561 (and tp!1619811 tp!1619809))))

(declare-fun b!5855505 () Bool)

(assert (=> b!5855505 (= e!3590561 tp_is_empty!41095)))

(declare-fun b!5855507 () Bool)

(declare-fun tp!1619808 () Bool)

(assert (=> b!5855507 (= e!3590561 tp!1619808)))

(assert (= (and b!5854510 ((_ is ElementMatch!15921) (regOne!32354 (reg!16250 r!7292)))) b!5855505))

(assert (= (and b!5854510 ((_ is Concat!24766) (regOne!32354 (reg!16250 r!7292)))) b!5855506))

(assert (= (and b!5854510 ((_ is Star!15921) (regOne!32354 (reg!16250 r!7292)))) b!5855507))

(assert (= (and b!5854510 ((_ is Union!15921) (regOne!32354 (reg!16250 r!7292)))) b!5855508))

(declare-fun e!3590562 () Bool)

(assert (=> b!5854510 (= tp!1619514 e!3590562)))

(declare-fun b!5855510 () Bool)

(declare-fun tp!1619812 () Bool)

(declare-fun tp!1619815 () Bool)

(assert (=> b!5855510 (= e!3590562 (and tp!1619812 tp!1619815))))

(declare-fun b!5855512 () Bool)

(declare-fun tp!1619816 () Bool)

(declare-fun tp!1619814 () Bool)

(assert (=> b!5855512 (= e!3590562 (and tp!1619816 tp!1619814))))

(declare-fun b!5855509 () Bool)

(assert (=> b!5855509 (= e!3590562 tp_is_empty!41095)))

(declare-fun b!5855511 () Bool)

(declare-fun tp!1619813 () Bool)

(assert (=> b!5855511 (= e!3590562 tp!1619813)))

(assert (= (and b!5854510 ((_ is ElementMatch!15921) (regTwo!32354 (reg!16250 r!7292)))) b!5855509))

(assert (= (and b!5854510 ((_ is Concat!24766) (regTwo!32354 (reg!16250 r!7292)))) b!5855510))

(assert (= (and b!5854510 ((_ is Star!15921) (regTwo!32354 (reg!16250 r!7292)))) b!5855511))

(assert (= (and b!5854510 ((_ is Union!15921) (regTwo!32354 (reg!16250 r!7292)))) b!5855512))

(declare-fun b!5855513 () Bool)

(declare-fun e!3590563 () Bool)

(declare-fun tp!1619817 () Bool)

(assert (=> b!5855513 (= e!3590563 (and tp_is_empty!41095 tp!1619817))))

(assert (=> b!5854544 (= tp!1619548 e!3590563)))

(assert (= (and b!5854544 ((_ is Cons!63940) (t!377429 (t!377429 s!2326)))) b!5855513))

(declare-fun b!5855514 () Bool)

(declare-fun e!3590564 () Bool)

(declare-fun tp!1619818 () Bool)

(declare-fun tp!1619819 () Bool)

(assert (=> b!5855514 (= e!3590564 (and tp!1619818 tp!1619819))))

(assert (=> b!5854517 (= tp!1619520 e!3590564)))

(assert (= (and b!5854517 ((_ is Cons!63938) (exprs!5805 setElem!39676))) b!5855514))

(declare-fun e!3590565 () Bool)

(assert (=> b!5854538 (= tp!1619542 e!3590565)))

(declare-fun b!5855516 () Bool)

(declare-fun tp!1619820 () Bool)

(declare-fun tp!1619823 () Bool)

(assert (=> b!5855516 (= e!3590565 (and tp!1619820 tp!1619823))))

(declare-fun b!5855518 () Bool)

(declare-fun tp!1619824 () Bool)

(declare-fun tp!1619822 () Bool)

(assert (=> b!5855518 (= e!3590565 (and tp!1619824 tp!1619822))))

(declare-fun b!5855515 () Bool)

(assert (=> b!5855515 (= e!3590565 tp_is_empty!41095)))

(declare-fun b!5855517 () Bool)

(declare-fun tp!1619821 () Bool)

(assert (=> b!5855517 (= e!3590565 tp!1619821)))

(assert (= (and b!5854538 ((_ is ElementMatch!15921) (h!70386 (exprs!5805 (h!70387 zl!343))))) b!5855515))

(assert (= (and b!5854538 ((_ is Concat!24766) (h!70386 (exprs!5805 (h!70387 zl!343))))) b!5855516))

(assert (= (and b!5854538 ((_ is Star!15921) (h!70386 (exprs!5805 (h!70387 zl!343))))) b!5855517))

(assert (= (and b!5854538 ((_ is Union!15921) (h!70386 (exprs!5805 (h!70387 zl!343))))) b!5855518))

(declare-fun b!5855519 () Bool)

(declare-fun e!3590566 () Bool)

(declare-fun tp!1619825 () Bool)

(declare-fun tp!1619826 () Bool)

(assert (=> b!5855519 (= e!3590566 (and tp!1619825 tp!1619826))))

(assert (=> b!5854538 (= tp!1619543 e!3590566)))

(assert (= (and b!5854538 ((_ is Cons!63938) (t!377427 (exprs!5805 (h!70387 zl!343))))) b!5855519))

(declare-fun condSetEmpty!39684 () Bool)

(assert (=> setNonEmpty!39676 (= condSetEmpty!39684 (= setRest!39676 ((as const (Array Context!10610 Bool)) false)))))

(declare-fun setRes!39684 () Bool)

(assert (=> setNonEmpty!39676 (= tp!1619521 setRes!39684)))

(declare-fun setIsEmpty!39684 () Bool)

(assert (=> setIsEmpty!39684 setRes!39684))

(declare-fun tp!1619828 () Bool)

(declare-fun setNonEmpty!39684 () Bool)

(declare-fun e!3590567 () Bool)

(declare-fun setElem!39684 () Context!10610)

(assert (=> setNonEmpty!39684 (= setRes!39684 (and tp!1619828 (inv!83049 setElem!39684) e!3590567))))

(declare-fun setRest!39684 () (InoxSet Context!10610))

(assert (=> setNonEmpty!39684 (= setRest!39676 ((_ map or) (store ((as const (Array Context!10610 Bool)) false) setElem!39684 true) setRest!39684))))

(declare-fun b!5855520 () Bool)

(declare-fun tp!1619827 () Bool)

(assert (=> b!5855520 (= e!3590567 tp!1619827)))

(assert (= (and setNonEmpty!39676 condSetEmpty!39684) setIsEmpty!39684))

(assert (= (and setNonEmpty!39676 (not condSetEmpty!39684)) setNonEmpty!39684))

(assert (= setNonEmpty!39684 b!5855520))

(declare-fun m!6774100 () Bool)

(assert (=> setNonEmpty!39684 m!6774100))

(declare-fun e!3590568 () Bool)

(assert (=> b!5854528 (= tp!1619529 e!3590568)))

(declare-fun b!5855522 () Bool)

(declare-fun tp!1619829 () Bool)

(declare-fun tp!1619832 () Bool)

(assert (=> b!5855522 (= e!3590568 (and tp!1619829 tp!1619832))))

(declare-fun b!5855524 () Bool)

(declare-fun tp!1619833 () Bool)

(declare-fun tp!1619831 () Bool)

(assert (=> b!5855524 (= e!3590568 (and tp!1619833 tp!1619831))))

(declare-fun b!5855521 () Bool)

(assert (=> b!5855521 (= e!3590568 tp_is_empty!41095)))

(declare-fun b!5855523 () Bool)

(declare-fun tp!1619830 () Bool)

(assert (=> b!5855523 (= e!3590568 tp!1619830)))

(assert (= (and b!5854528 ((_ is ElementMatch!15921) (reg!16250 (regOne!32355 r!7292)))) b!5855521))

(assert (= (and b!5854528 ((_ is Concat!24766) (reg!16250 (regOne!32355 r!7292)))) b!5855522))

(assert (= (and b!5854528 ((_ is Star!15921) (reg!16250 (regOne!32355 r!7292)))) b!5855523))

(assert (= (and b!5854528 ((_ is Union!15921) (reg!16250 (regOne!32355 r!7292)))) b!5855524))

(declare-fun e!3590569 () Bool)

(assert (=> b!5854506 (= tp!1619506 e!3590569)))

(declare-fun b!5855526 () Bool)

(declare-fun tp!1619834 () Bool)

(declare-fun tp!1619837 () Bool)

(assert (=> b!5855526 (= e!3590569 (and tp!1619834 tp!1619837))))

(declare-fun b!5855528 () Bool)

(declare-fun tp!1619838 () Bool)

(declare-fun tp!1619836 () Bool)

(assert (=> b!5855528 (= e!3590569 (and tp!1619838 tp!1619836))))

(declare-fun b!5855525 () Bool)

(assert (=> b!5855525 (= e!3590569 tp_is_empty!41095)))

(declare-fun b!5855527 () Bool)

(declare-fun tp!1619835 () Bool)

(assert (=> b!5855527 (= e!3590569 tp!1619835)))

(assert (= (and b!5854506 ((_ is ElementMatch!15921) (regOne!32354 (regTwo!32354 r!7292)))) b!5855525))

(assert (= (and b!5854506 ((_ is Concat!24766) (regOne!32354 (regTwo!32354 r!7292)))) b!5855526))

(assert (= (and b!5854506 ((_ is Star!15921) (regOne!32354 (regTwo!32354 r!7292)))) b!5855527))

(assert (= (and b!5854506 ((_ is Union!15921) (regOne!32354 (regTwo!32354 r!7292)))) b!5855528))

(declare-fun e!3590570 () Bool)

(assert (=> b!5854506 (= tp!1619509 e!3590570)))

(declare-fun b!5855530 () Bool)

(declare-fun tp!1619839 () Bool)

(declare-fun tp!1619842 () Bool)

(assert (=> b!5855530 (= e!3590570 (and tp!1619839 tp!1619842))))

(declare-fun b!5855532 () Bool)

(declare-fun tp!1619843 () Bool)

(declare-fun tp!1619841 () Bool)

(assert (=> b!5855532 (= e!3590570 (and tp!1619843 tp!1619841))))

(declare-fun b!5855529 () Bool)

(assert (=> b!5855529 (= e!3590570 tp_is_empty!41095)))

(declare-fun b!5855531 () Bool)

(declare-fun tp!1619840 () Bool)

(assert (=> b!5855531 (= e!3590570 tp!1619840)))

(assert (= (and b!5854506 ((_ is ElementMatch!15921) (regTwo!32354 (regTwo!32354 r!7292)))) b!5855529))

(assert (= (and b!5854506 ((_ is Concat!24766) (regTwo!32354 (regTwo!32354 r!7292)))) b!5855530))

(assert (= (and b!5854506 ((_ is Star!15921) (regTwo!32354 (regTwo!32354 r!7292)))) b!5855531))

(assert (= (and b!5854506 ((_ is Union!15921) (regTwo!32354 (regTwo!32354 r!7292)))) b!5855532))

(declare-fun e!3590571 () Bool)

(assert (=> b!5854529 (= tp!1619532 e!3590571)))

(declare-fun b!5855534 () Bool)

(declare-fun tp!1619844 () Bool)

(declare-fun tp!1619847 () Bool)

(assert (=> b!5855534 (= e!3590571 (and tp!1619844 tp!1619847))))

(declare-fun b!5855536 () Bool)

(declare-fun tp!1619848 () Bool)

(declare-fun tp!1619846 () Bool)

(assert (=> b!5855536 (= e!3590571 (and tp!1619848 tp!1619846))))

(declare-fun b!5855533 () Bool)

(assert (=> b!5855533 (= e!3590571 tp_is_empty!41095)))

(declare-fun b!5855535 () Bool)

(declare-fun tp!1619845 () Bool)

(assert (=> b!5855535 (= e!3590571 tp!1619845)))

(assert (= (and b!5854529 ((_ is ElementMatch!15921) (regOne!32355 (regOne!32355 r!7292)))) b!5855533))

(assert (= (and b!5854529 ((_ is Concat!24766) (regOne!32355 (regOne!32355 r!7292)))) b!5855534))

(assert (= (and b!5854529 ((_ is Star!15921) (regOne!32355 (regOne!32355 r!7292)))) b!5855535))

(assert (= (and b!5854529 ((_ is Union!15921) (regOne!32355 (regOne!32355 r!7292)))) b!5855536))

(declare-fun e!3590572 () Bool)

(assert (=> b!5854529 (= tp!1619530 e!3590572)))

(declare-fun b!5855538 () Bool)

(declare-fun tp!1619849 () Bool)

(declare-fun tp!1619852 () Bool)

(assert (=> b!5855538 (= e!3590572 (and tp!1619849 tp!1619852))))

(declare-fun b!5855540 () Bool)

(declare-fun tp!1619853 () Bool)

(declare-fun tp!1619851 () Bool)

(assert (=> b!5855540 (= e!3590572 (and tp!1619853 tp!1619851))))

(declare-fun b!5855537 () Bool)

(assert (=> b!5855537 (= e!3590572 tp_is_empty!41095)))

(declare-fun b!5855539 () Bool)

(declare-fun tp!1619850 () Bool)

(assert (=> b!5855539 (= e!3590572 tp!1619850)))

(assert (= (and b!5854529 ((_ is ElementMatch!15921) (regTwo!32355 (regOne!32355 r!7292)))) b!5855537))

(assert (= (and b!5854529 ((_ is Concat!24766) (regTwo!32355 (regOne!32355 r!7292)))) b!5855538))

(assert (= (and b!5854529 ((_ is Star!15921) (regTwo!32355 (regOne!32355 r!7292)))) b!5855539))

(assert (= (and b!5854529 ((_ is Union!15921) (regTwo!32355 (regOne!32355 r!7292)))) b!5855540))

(declare-fun e!3590573 () Bool)

(assert (=> b!5854507 (= tp!1619507 e!3590573)))

(declare-fun b!5855542 () Bool)

(declare-fun tp!1619854 () Bool)

(declare-fun tp!1619857 () Bool)

(assert (=> b!5855542 (= e!3590573 (and tp!1619854 tp!1619857))))

(declare-fun b!5855544 () Bool)

(declare-fun tp!1619858 () Bool)

(declare-fun tp!1619856 () Bool)

(assert (=> b!5855544 (= e!3590573 (and tp!1619858 tp!1619856))))

(declare-fun b!5855541 () Bool)

(assert (=> b!5855541 (= e!3590573 tp_is_empty!41095)))

(declare-fun b!5855543 () Bool)

(declare-fun tp!1619855 () Bool)

(assert (=> b!5855543 (= e!3590573 tp!1619855)))

(assert (= (and b!5854507 ((_ is ElementMatch!15921) (reg!16250 (regTwo!32354 r!7292)))) b!5855541))

(assert (= (and b!5854507 ((_ is Concat!24766) (reg!16250 (regTwo!32354 r!7292)))) b!5855542))

(assert (= (and b!5854507 ((_ is Star!15921) (reg!16250 (regTwo!32354 r!7292)))) b!5855543))

(assert (= (and b!5854507 ((_ is Union!15921) (reg!16250 (regTwo!32354 r!7292)))) b!5855544))

(declare-fun e!3590574 () Bool)

(assert (=> b!5854508 (= tp!1619510 e!3590574)))

(declare-fun b!5855546 () Bool)

(declare-fun tp!1619859 () Bool)

(declare-fun tp!1619862 () Bool)

(assert (=> b!5855546 (= e!3590574 (and tp!1619859 tp!1619862))))

(declare-fun b!5855548 () Bool)

(declare-fun tp!1619863 () Bool)

(declare-fun tp!1619861 () Bool)

(assert (=> b!5855548 (= e!3590574 (and tp!1619863 tp!1619861))))

(declare-fun b!5855545 () Bool)

(assert (=> b!5855545 (= e!3590574 tp_is_empty!41095)))

(declare-fun b!5855547 () Bool)

(declare-fun tp!1619860 () Bool)

(assert (=> b!5855547 (= e!3590574 tp!1619860)))

(assert (= (and b!5854508 ((_ is ElementMatch!15921) (regOne!32355 (regTwo!32354 r!7292)))) b!5855545))

(assert (= (and b!5854508 ((_ is Concat!24766) (regOne!32355 (regTwo!32354 r!7292)))) b!5855546))

(assert (= (and b!5854508 ((_ is Star!15921) (regOne!32355 (regTwo!32354 r!7292)))) b!5855547))

(assert (= (and b!5854508 ((_ is Union!15921) (regOne!32355 (regTwo!32354 r!7292)))) b!5855548))

(declare-fun e!3590575 () Bool)

(assert (=> b!5854508 (= tp!1619508 e!3590575)))

(declare-fun b!5855550 () Bool)

(declare-fun tp!1619864 () Bool)

(declare-fun tp!1619867 () Bool)

(assert (=> b!5855550 (= e!3590575 (and tp!1619864 tp!1619867))))

(declare-fun b!5855552 () Bool)

(declare-fun tp!1619868 () Bool)

(declare-fun tp!1619866 () Bool)

(assert (=> b!5855552 (= e!3590575 (and tp!1619868 tp!1619866))))

(declare-fun b!5855549 () Bool)

(assert (=> b!5855549 (= e!3590575 tp_is_empty!41095)))

(declare-fun b!5855551 () Bool)

(declare-fun tp!1619865 () Bool)

(assert (=> b!5855551 (= e!3590575 tp!1619865)))

(assert (= (and b!5854508 ((_ is ElementMatch!15921) (regTwo!32355 (regTwo!32354 r!7292)))) b!5855549))

(assert (= (and b!5854508 ((_ is Concat!24766) (regTwo!32355 (regTwo!32354 r!7292)))) b!5855550))

(assert (= (and b!5854508 ((_ is Star!15921) (regTwo!32355 (regTwo!32354 r!7292)))) b!5855551))

(assert (= (and b!5854508 ((_ is Union!15921) (regTwo!32355 (regTwo!32354 r!7292)))) b!5855552))

(declare-fun b_lambda!220399 () Bool)

(assert (= b_lambda!220395 (or d!1838550 b_lambda!220399)))

(declare-fun bs!1379724 () Bool)

(declare-fun d!1839004 () Bool)

(assert (= bs!1379724 (and d!1839004 d!1838550)))

(assert (=> bs!1379724 (= (dynLambda!24998 lambda!320109 (h!70386 lt!2304755)) (validRegex!7657 (h!70386 lt!2304755)))))

(declare-fun m!6774102 () Bool)

(assert (=> bs!1379724 m!6774102))

(assert (=> b!5855337 d!1839004))

(declare-fun b_lambda!220401 () Bool)

(assert (= b_lambda!220393 (or d!1838572 b_lambda!220401)))

(declare-fun bs!1379725 () Bool)

(declare-fun d!1839006 () Bool)

(assert (= bs!1379725 (and d!1839006 d!1838572)))

(assert (=> bs!1379725 (= (dynLambda!24998 lambda!320114 (h!70386 (exprs!5805 (h!70387 zl!343)))) (validRegex!7657 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(declare-fun m!6774104 () Bool)

(assert (=> bs!1379725 m!6774104))

(assert (=> b!5855324 d!1839006))

(declare-fun b_lambda!220403 () Bool)

(assert (= b_lambda!220385 (or b!5853752 b_lambda!220403)))

(assert (=> d!1838834 d!1838590))

(declare-fun b_lambda!220405 () Bool)

(assert (= b_lambda!220391 (or d!1838520 b_lambda!220405)))

(declare-fun bs!1379726 () Bool)

(declare-fun d!1839008 () Bool)

(assert (= bs!1379726 (and d!1839008 d!1838520)))

(assert (=> bs!1379726 (= (dynLambda!24998 lambda!320099 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))))) (validRegex!7657 (h!70386 (exprs!5805 (Context!10611 (Cons!63938 (regTwo!32355 r!7292) Nil!63938))))))))

(declare-fun m!6774106 () Bool)

(assert (=> bs!1379726 m!6774106))

(assert (=> b!5855322 d!1839008))

(declare-fun b_lambda!220407 () Bool)

(assert (= b_lambda!220397 (or d!1838548 b_lambda!220407)))

(declare-fun bs!1379727 () Bool)

(declare-fun d!1839010 () Bool)

(assert (= bs!1379727 (and d!1839010 d!1838548)))

(assert (=> bs!1379727 (= (dynLambda!24998 lambda!320106 (h!70386 (unfocusZipperList!1342 zl!343))) (validRegex!7657 (h!70386 (unfocusZipperList!1342 zl!343))))))

(declare-fun m!6774108 () Bool)

(assert (=> bs!1379727 m!6774108))

(assert (=> b!5855410 d!1839010))

(declare-fun b_lambda!220409 () Bool)

(assert (= b_lambda!220387 (or d!1838554 b_lambda!220409)))

(declare-fun bs!1379728 () Bool)

(declare-fun d!1839012 () Bool)

(assert (= bs!1379728 (and d!1839012 d!1838554)))

(assert (=> bs!1379728 (= (dynLambda!24998 lambda!320112 (h!70386 (exprs!5805 (h!70387 zl!343)))) (validRegex!7657 (h!70386 (exprs!5805 (h!70387 zl!343)))))))

(assert (=> bs!1379728 m!6774104))

(assert (=> b!5855196 d!1839012))

(declare-fun b_lambda!220411 () Bool)

(assert (= b_lambda!220389 (or d!1838560 b_lambda!220411)))

(declare-fun bs!1379729 () Bool)

(declare-fun d!1839014 () Bool)

(assert (= bs!1379729 (and d!1839014 d!1838560)))

(assert (=> bs!1379729 (= (dynLambda!24998 lambda!320113 (h!70386 (exprs!5805 setElem!39670))) (validRegex!7657 (h!70386 (exprs!5805 setElem!39670))))))

(declare-fun m!6774110 () Bool)

(assert (=> bs!1379729 m!6774110))

(assert (=> b!5855218 d!1839014))

(check-sat (not b!5855160) (not b!5855526) (not bm!458608) (not bm!458652) (not d!1838920) (not b!5855481) (not bm!458645) (not bm!458611) (not b!5855512) (not b!5855209) (not d!1838930) (not d!1838830) (not d!1838944) (not b_lambda!220405) (not bm!458661) (not b!5855439) (not bm!458624) (not b!5855507) (not b!5855491) (not d!1838874) (not b_lambda!220411) (not b!5855354) (not bm!458617) (not b!5855291) (not b!5855323) (not b!5855171) (not b!5855542) (not bm!458655) (not b!5855544) (not b!5855459) (not b!5855283) (not b!5855438) (not d!1838918) (not d!1838968) (not d!1838860) (not d!1838950) (not b!5855265) (not d!1838898) (not b!5855502) (not b!5855362) (not b!5855205) (not d!1838942) (not b!5855454) (not bs!1379728) (not bm!458588) (not b!5855385) (not b!5855540) (not b!5855520) (not bm!458622) (not bm!458664) (not bm!458657) (not b!5855463) (not b!5855285) (not b!5855497) (not bm!458639) (not b!5855116) (not b!5855072) (not b!5855539) (not b!5855468) (not b!5855467) (not b!5855386) (not b!5855458) (not b!5855370) (not b!5855389) (not d!1838962) (not d!1838838) (not d!1838922) (not d!1838900) (not b!5855462) (not bm!458629) (not b!5855450) (not d!1839000) (not b!5855477) (not bm!458646) (not b!5855503) (not b_lambda!220401) (not bm!458623) (not b!5855546) (not b!5855244) (not bm!458637) (not bm!458673) (not b!5855522) (not bm!458613) (not d!1838824) (not b!5855211) (not b!5855479) (not b!5855499) (not b!5855498) (not bm!458590) (not b!5855224) (not bm!458615) (not b!5855338) (not b!5855538) (not b!5855341) (not b!5855325) (not b!5855513) (not b!5855139) (not b!5855156) (not b!5855284) (not b_lambda!220409) (not bm!458663) (not setNonEmpty!39684) (not bm!458585) (not d!1838822) (not b!5855436) (not d!1838858) (not b!5855493) (not b!5855411) (not bm!458659) (not bm!458614) (not b!5855157) (not b!5855328) (not d!1838902) (not b!5855151) (not b_lambda!220403) (not b_lambda!220407) (not b!5855239) (not bm!458644) (not bm!458666) (not b!5855530) (not b!5855286) (not b!5855543) (not b!5855261) (not bm!458571) (not d!1838928) (not b!5855222) (not b!5855488) (not b!5855069) (not d!1838878) (not b!5855452) (not b!5855384) (not b!5855443) (not b!5855290) (not b!5855352) (not bm!458667) (not b!5855400) (not b!5855063) (not b!5855514) (not d!1838988) (not b!5855508) (not b!5855531) (not b!5855524) (not bm!458616) (not b!5855466) (not bm!458612) (not bm!458606) (not bs!1379726) (not b!5855343) (not b!5855373) (not bm!458586) (not b!5855442) (not b!5855149) (not d!1838982) (not d!1838832) (not bm!458632) (not b!5855245) (not b!5855446) (not b!5855510) (not d!1838846) (not b!5855550) (not b!5855534) (not b!5855260) (not b!5855484) (not b!5855155) (not bs!1379727) (not b!5855118) (not d!1838828) (not b!5855174) (not bm!458650) (not d!1838974) (not bm!458599) (not bs!1379729) (not b!5855455) (not b!5855226) (not d!1838848) (not b!5855241) (not b!5855117) (not b!5855551) (not b!5855483) (not b!5855432) (not bm!458618) (not b!5855108) (not d!1838868) (not b!5855219) (not b!5855231) (not b!5855552) (not d!1838970) (not b!5855281) (not b!5855190) (not d!1838972) (not bm!458654) (not d!1838852) (not b!5855240) (not b!5855528) (not b!5855135) (not b!5855243) (not b!5855448) (not b!5855061) (not bm!458628) (not d!1838966) (not b!5855447) (not bm!458589) (not b!5855506) (not d!1839002) (not d!1838934) (not b!5855523) (not b!5855297) (not b!5855250) (not b!5855518) (not b!5855225) (not b!5855516) (not bm!458582) (not b!5855369) (not bm!458643) (not b!5855480) (not bm!458601) (not b!5855511) (not b!5855433) (not b!5855517) (not b!5855364) (not b!5855485) (not b!5855423) (not b!5855456) (not b!5855067) (not b!5855444) (not d!1838932) (not bm!458595) (not bm!458605) (not b!5855229) (not bm!458638) (not b!5855392) (not b!5855489) (not b!5855103) (not b!5855460) (not b!5855519) (not b!5855471) (not b!5855408) (not d!1838980) (not b!5855451) (not b!5855492) (not b!5855473) (not b!5855547) (not b!5855475) (not b!5855394) (not bm!458569) (not b!5855527) (not bm!458580) (not b!5855495) (not b!5855242) (not b!5855548) (not bm!458597) (not b_lambda!220355) (not setNonEmpty!39683) (not bm!458570) (not d!1838936) (not b!5855259) (not bm!458651) (not b!5855464) (not b!5855501) (not b!5855440) (not bs!1379724) (not d!1838834) (not d!1838916) (not b!5855472) (not b!5855293) (not b!5855504) (not d!1838892) (not b!5855536) (not d!1838876) (not b!5855321) (not bm!458633) tp_is_empty!41095 (not b!5855109) (not b!5855532) (not b!5855419) (not bm!458609) (not b!5855535) (not b!5855368) (not b!5855051) (not bs!1379725) (not b!5855319) (not b_lambda!220399) (not b!5855476) (not bm!458631) (not b!5855308) (not b!5855294) (not b!5855068) (not bm!458656) (not d!1838890) (not bm!458672) (not bm!458594) (not b!5855469) (not bm!458668) (not bm!458565) (not b!5855487) (not b!5855496) (not bm!458596) (not b!5855126) (not b!5855197) (not bm!458653) (not b!5855287))
(check-sat)
