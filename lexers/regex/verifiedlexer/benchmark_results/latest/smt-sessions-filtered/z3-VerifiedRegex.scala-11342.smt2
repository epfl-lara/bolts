; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!599692 () Bool)

(assert start!599692)

(declare-fun b!5863627 () Bool)

(assert (=> b!5863627 true))

(declare-fun b!5863614 () Bool)

(declare-fun res!2467018 () Bool)

(declare-fun e!3595068 () Bool)

(assert (=> b!5863614 (=> res!2467018 e!3595068)))

(declare-datatypes ((C!32132 0))(
  ( (C!32133 (val!25768 Int)) )
))
(declare-datatypes ((Regex!15931 0))(
  ( (ElementMatch!15931 (c!1040443 C!32132)) (Concat!24776 (regOne!32374 Regex!15931) (regTwo!32374 Regex!15931)) (EmptyExpr!15931) (Star!15931 (reg!16260 Regex!15931)) (EmptyLang!15931) (Union!15931 (regOne!32375 Regex!15931) (regTwo!32375 Regex!15931)) )
))
(declare-fun r!7292 () Regex!15931)

(get-info :version)

(assert (=> b!5863614 (= res!2467018 (or ((_ is EmptyExpr!15931) r!7292) ((_ is EmptyLang!15931) r!7292) ((_ is ElementMatch!15931) r!7292) (not ((_ is Union!15931) r!7292))))))

(declare-fun b!5863615 () Bool)

(declare-fun e!3595075 () Bool)

(declare-fun e!3595073 () Bool)

(assert (=> b!5863615 (= e!3595075 e!3595073)))

(declare-fun res!2467022 () Bool)

(assert (=> b!5863615 (=> res!2467022 e!3595073)))

(declare-fun lt!2305865 () Bool)

(declare-fun lt!2305858 () Bool)

(assert (=> b!5863615 (= res!2467022 (not (= lt!2305865 lt!2305858)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64092 0))(
  ( (Nil!63968) (Cons!63968 (h!70416 Regex!15931) (t!377467 List!64092)) )
))
(declare-datatypes ((Context!10630 0))(
  ( (Context!10631 (exprs!5815 List!64092)) )
))
(declare-fun lt!2305856 () (InoxSet Context!10630))

(declare-datatypes ((List!64093 0))(
  ( (Nil!63969) (Cons!63969 (h!70417 C!32132) (t!377468 List!64093)) )
))
(declare-fun s!2326 () List!64093)

(declare-fun matchZipper!1997 ((InoxSet Context!10630) List!64093) Bool)

(assert (=> b!5863615 (= lt!2305865 (matchZipper!1997 lt!2305856 s!2326))))

(declare-fun lt!2305875 () (InoxSet Context!10630))

(declare-fun lambda!320630 () Int)

(declare-fun lt!2305861 () Context!10630)

(declare-fun flatMap!1462 ((InoxSet Context!10630) Int) (InoxSet Context!10630))

(declare-fun derivationStepZipperUp!1123 (Context!10630 C!32132) (InoxSet Context!10630))

(assert (=> b!5863615 (= (flatMap!1462 lt!2305875 lambda!320630) (derivationStepZipperUp!1123 lt!2305861 (h!70417 s!2326)))))

(declare-datatypes ((Unit!157133 0))(
  ( (Unit!157134) )
))
(declare-fun lt!2305862 () Unit!157133)

(declare-fun lemmaFlatMapOnSingletonSet!990 ((InoxSet Context!10630) Context!10630 Int) Unit!157133)

(assert (=> b!5863615 (= lt!2305862 (lemmaFlatMapOnSingletonSet!990 lt!2305875 lt!2305861 lambda!320630))))

(declare-fun lt!2305873 () Context!10630)

(assert (=> b!5863615 (= (flatMap!1462 lt!2305856 lambda!320630) (derivationStepZipperUp!1123 lt!2305873 (h!70417 s!2326)))))

(declare-fun lt!2305854 () Unit!157133)

(assert (=> b!5863615 (= lt!2305854 (lemmaFlatMapOnSingletonSet!990 lt!2305856 lt!2305873 lambda!320630))))

(declare-fun lt!2305855 () (InoxSet Context!10630))

(assert (=> b!5863615 (= lt!2305855 (derivationStepZipperUp!1123 lt!2305861 (h!70417 s!2326)))))

(declare-fun lt!2305863 () (InoxSet Context!10630))

(assert (=> b!5863615 (= lt!2305863 (derivationStepZipperUp!1123 lt!2305873 (h!70417 s!2326)))))

(assert (=> b!5863615 (= lt!2305875 (store ((as const (Array Context!10630 Bool)) false) lt!2305861 true))))

(assert (=> b!5863615 (= lt!2305861 (Context!10631 (Cons!63968 (regTwo!32375 r!7292) Nil!63968)))))

(assert (=> b!5863615 (= lt!2305856 (store ((as const (Array Context!10630 Bool)) false) lt!2305873 true))))

(assert (=> b!5863615 (= lt!2305873 (Context!10631 (Cons!63968 (regOne!32375 r!7292) Nil!63968)))))

(declare-fun b!5863616 () Bool)

(declare-fun tp!1621928 () Bool)

(declare-fun e!3595072 () Bool)

(declare-datatypes ((List!64094 0))(
  ( (Nil!63970) (Cons!63970 (h!70418 Context!10630) (t!377469 List!64094)) )
))
(declare-fun zl!343 () List!64094)

(declare-fun e!3595063 () Bool)

(declare-fun inv!83074 (Context!10630) Bool)

(assert (=> b!5863616 (= e!3595063 (and (inv!83074 (h!70418 zl!343)) e!3595072 tp!1621928))))

(declare-fun b!5863617 () Bool)

(declare-fun e!3595069 () Bool)

(assert (=> b!5863617 (= e!3595068 e!3595069)))

(declare-fun res!2467025 () Bool)

(assert (=> b!5863617 (=> res!2467025 e!3595069)))

(declare-fun lt!2305853 () Bool)

(declare-fun lt!2305877 () Bool)

(declare-fun lt!2305879 () Bool)

(assert (=> b!5863617 (= res!2467025 (or (not (= lt!2305877 (or lt!2305853 lt!2305879))) ((_ is Nil!63969) s!2326)))))

(declare-fun matchRSpec!3032 (Regex!15931 List!64093) Bool)

(assert (=> b!5863617 (= lt!2305879 (matchRSpec!3032 (regTwo!32375 r!7292) s!2326))))

(declare-fun matchR!8114 (Regex!15931 List!64093) Bool)

(assert (=> b!5863617 (= lt!2305879 (matchR!8114 (regTwo!32375 r!7292) s!2326))))

(declare-fun lt!2305872 () Unit!157133)

(declare-fun mainMatchTheorem!3032 (Regex!15931 List!64093) Unit!157133)

(assert (=> b!5863617 (= lt!2305872 (mainMatchTheorem!3032 (regTwo!32375 r!7292) s!2326))))

(assert (=> b!5863617 (= lt!2305853 (matchRSpec!3032 (regOne!32375 r!7292) s!2326))))

(assert (=> b!5863617 (= lt!2305853 (matchR!8114 (regOne!32375 r!7292) s!2326))))

(declare-fun lt!2305880 () Unit!157133)

(assert (=> b!5863617 (= lt!2305880 (mainMatchTheorem!3032 (regOne!32375 r!7292) s!2326))))

(declare-fun b!5863618 () Bool)

(declare-fun e!3595076 () Bool)

(declare-fun tp!1621931 () Bool)

(assert (=> b!5863618 (= e!3595076 tp!1621931)))

(declare-fun b!5863619 () Bool)

(declare-fun e!3595074 () Bool)

(assert (=> b!5863619 (= e!3595074 e!3595075)))

(declare-fun res!2467015 () Bool)

(assert (=> b!5863619 (=> res!2467015 e!3595075)))

(declare-fun lt!2305866 () Bool)

(declare-fun lt!2305864 () Bool)

(declare-fun lt!2305871 () Bool)

(assert (=> b!5863619 (= res!2467015 (or (not (= lt!2305864 lt!2305871)) (not (= lt!2305864 lt!2305866))))))

(assert (=> b!5863619 (= lt!2305871 lt!2305864)))

(declare-fun e!3595070 () Bool)

(assert (=> b!5863619 (= lt!2305864 e!3595070)))

(declare-fun res!2467026 () Bool)

(assert (=> b!5863619 (=> res!2467026 e!3595070)))

(assert (=> b!5863619 (= res!2467026 lt!2305858)))

(declare-fun lt!2305876 () (InoxSet Context!10630))

(assert (=> b!5863619 (= lt!2305858 (matchZipper!1997 lt!2305876 (t!377468 s!2326)))))

(declare-fun lt!2305870 () (InoxSet Context!10630))

(declare-fun lt!2305874 () Unit!157133)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!832 ((InoxSet Context!10630) (InoxSet Context!10630) List!64093) Unit!157133)

(assert (=> b!5863619 (= lt!2305874 (lemmaZipperConcatMatchesSameAsBothZippers!832 lt!2305876 lt!2305870 (t!377468 s!2326)))))

(declare-fun b!5863620 () Bool)

(declare-fun e!3595077 () Bool)

(assert (=> b!5863620 (= e!3595073 e!3595077)))

(declare-fun res!2467028 () Bool)

(assert (=> b!5863620 (=> res!2467028 e!3595077)))

(declare-fun lt!2305867 () Bool)

(assert (=> b!5863620 (= res!2467028 (not (= lt!2305867 (matchZipper!1997 lt!2305870 (t!377468 s!2326)))))))

(assert (=> b!5863620 (= lt!2305867 (matchZipper!1997 lt!2305875 s!2326))))

(declare-fun b!5863621 () Bool)

(declare-fun e!3595062 () Bool)

(declare-fun e!3595065 () Bool)

(assert (=> b!5863621 (= e!3595062 e!3595065)))

(declare-fun res!2467016 () Bool)

(assert (=> b!5863621 (=> res!2467016 e!3595065)))

(declare-fun lt!2305868 () (InoxSet Context!10630))

(declare-fun lt!2305859 () (InoxSet Context!10630))

(assert (=> b!5863621 (= res!2467016 (not (= lt!2305868 lt!2305859)))))

(assert (=> b!5863621 (= lt!2305859 ((_ map or) lt!2305876 lt!2305870))))

(declare-fun lt!2305860 () Context!10630)

(declare-fun derivationStepZipperDown!1197 (Regex!15931 Context!10630 C!32132) (InoxSet Context!10630))

(assert (=> b!5863621 (= lt!2305870 (derivationStepZipperDown!1197 (regTwo!32375 r!7292) lt!2305860 (h!70417 s!2326)))))

(assert (=> b!5863621 (= lt!2305876 (derivationStepZipperDown!1197 (regOne!32375 r!7292) lt!2305860 (h!70417 s!2326)))))

(declare-fun res!2467029 () Bool)

(declare-fun e!3595064 () Bool)

(assert (=> start!599692 (=> (not res!2467029) (not e!3595064))))

(declare-fun validRegex!7667 (Regex!15931) Bool)

(assert (=> start!599692 (= res!2467029 (validRegex!7667 r!7292))))

(assert (=> start!599692 e!3595064))

(assert (=> start!599692 e!3595076))

(declare-fun condSetEmpty!39780 () Bool)

(declare-fun z!1189 () (InoxSet Context!10630))

(assert (=> start!599692 (= condSetEmpty!39780 (= z!1189 ((as const (Array Context!10630 Bool)) false)))))

(declare-fun setRes!39780 () Bool)

(assert (=> start!599692 setRes!39780))

(assert (=> start!599692 e!3595063))

(declare-fun e!3595071 () Bool)

(assert (=> start!599692 e!3595071))

(declare-fun setIsEmpty!39780 () Bool)

(assert (=> setIsEmpty!39780 setRes!39780))

(declare-fun e!3595066 () Bool)

(declare-fun setNonEmpty!39780 () Bool)

(declare-fun setElem!39780 () Context!10630)

(declare-fun tp!1621927 () Bool)

(assert (=> setNonEmpty!39780 (= setRes!39780 (and tp!1621927 (inv!83074 setElem!39780) e!3595066))))

(declare-fun setRest!39780 () (InoxSet Context!10630))

(assert (=> setNonEmpty!39780 (= z!1189 ((_ map or) (store ((as const (Array Context!10630 Bool)) false) setElem!39780 true) setRest!39780))))

(declare-fun b!5863622 () Bool)

(declare-fun tp_is_empty!41115 () Bool)

(declare-fun tp!1621930 () Bool)

(assert (=> b!5863622 (= e!3595071 (and tp_is_empty!41115 tp!1621930))))

(declare-fun b!5863623 () Bool)

(declare-fun tp!1621932 () Bool)

(declare-fun tp!1621924 () Bool)

(assert (=> b!5863623 (= e!3595076 (and tp!1621932 tp!1621924))))

(declare-fun b!5863624 () Bool)

(declare-fun res!2467019 () Bool)

(assert (=> b!5863624 (=> res!2467019 e!3595077)))

(assert (=> b!5863624 (= res!2467019 (not (= (or lt!2305865 lt!2305867) lt!2305866)))))

(declare-fun b!5863625 () Bool)

(declare-fun tp!1621925 () Bool)

(declare-fun tp!1621926 () Bool)

(assert (=> b!5863625 (= e!3595076 (and tp!1621925 tp!1621926))))

(declare-fun b!5863626 () Bool)

(assert (=> b!5863626 (= e!3595064 (not e!3595068))))

(declare-fun res!2467027 () Bool)

(assert (=> b!5863626 (=> res!2467027 e!3595068)))

(assert (=> b!5863626 (= res!2467027 (not ((_ is Cons!63970) zl!343)))))

(assert (=> b!5863626 (= lt!2305877 (matchRSpec!3032 r!7292 s!2326))))

(assert (=> b!5863626 (= lt!2305877 (matchR!8114 r!7292 s!2326))))

(declare-fun lt!2305869 () Unit!157133)

(assert (=> b!5863626 (= lt!2305869 (mainMatchTheorem!3032 r!7292 s!2326))))

(declare-fun e!3595067 () Bool)

(assert (=> b!5863627 (= e!3595065 e!3595067)))

(declare-fun res!2467023 () Bool)

(assert (=> b!5863627 (=> res!2467023 e!3595067)))

(declare-fun derivationStepZipper!1930 ((InoxSet Context!10630) C!32132) (InoxSet Context!10630))

(assert (=> b!5863627 (= res!2467023 (not (= (derivationStepZipper!1930 z!1189 (h!70417 s!2326)) lt!2305859)))))

(assert (=> b!5863627 (= (flatMap!1462 z!1189 lambda!320630) (derivationStepZipperUp!1123 (h!70418 zl!343) (h!70417 s!2326)))))

(declare-fun lt!2305857 () Unit!157133)

(assert (=> b!5863627 (= lt!2305857 (lemmaFlatMapOnSingletonSet!990 z!1189 (h!70418 zl!343) lambda!320630))))

(declare-fun b!5863628 () Bool)

(declare-fun res!2467024 () Bool)

(assert (=> b!5863628 (=> (not res!2467024) (not e!3595064))))

(declare-fun unfocusZipper!1673 (List!64094) Regex!15931)

(assert (=> b!5863628 (= res!2467024 (= r!7292 (unfocusZipper!1673 zl!343)))))

(declare-fun b!5863629 () Bool)

(assert (=> b!5863629 (= e!3595067 e!3595074)))

(declare-fun res!2467020 () Bool)

(assert (=> b!5863629 (=> res!2467020 e!3595074)))

(assert (=> b!5863629 (= res!2467020 (not (= lt!2305871 lt!2305866)))))

(assert (=> b!5863629 (= lt!2305866 (matchZipper!1997 z!1189 s!2326))))

(assert (=> b!5863629 (= lt!2305871 (matchZipper!1997 lt!2305859 (t!377468 s!2326)))))

(declare-fun b!5863630 () Bool)

(declare-fun res!2467017 () Bool)

(assert (=> b!5863630 (=> (not res!2467017) (not e!3595064))))

(declare-fun toList!9715 ((InoxSet Context!10630)) List!64094)

(assert (=> b!5863630 (= res!2467017 (= (toList!9715 z!1189) zl!343))))

(declare-fun b!5863631 () Bool)

(assert (=> b!5863631 (= e!3595076 tp_is_empty!41115)))

(declare-fun b!5863632 () Bool)

(assert (=> b!5863632 (= e!3595070 (matchZipper!1997 lt!2305870 (t!377468 s!2326)))))

(declare-fun b!5863633 () Bool)

(declare-fun tp!1621929 () Bool)

(assert (=> b!5863633 (= e!3595072 tp!1621929)))

(declare-fun b!5863634 () Bool)

(declare-fun res!2467014 () Bool)

(assert (=> b!5863634 (=> res!2467014 e!3595068)))

(declare-fun isEmpty!35826 (List!64094) Bool)

(assert (=> b!5863634 (= res!2467014 (not (isEmpty!35826 (t!377469 zl!343))))))

(declare-fun b!5863635 () Bool)

(assert (=> b!5863635 (= e!3595069 e!3595062)))

(declare-fun res!2467012 () Bool)

(assert (=> b!5863635 (=> res!2467012 e!3595062)))

(declare-fun lt!2305878 () (InoxSet Context!10630))

(assert (=> b!5863635 (= res!2467012 (not (= lt!2305878 lt!2305868)))))

(assert (=> b!5863635 (= lt!2305868 (derivationStepZipperDown!1197 r!7292 lt!2305860 (h!70417 s!2326)))))

(assert (=> b!5863635 (= lt!2305860 (Context!10631 Nil!63968))))

(assert (=> b!5863635 (= lt!2305878 (derivationStepZipperUp!1123 (Context!10631 (Cons!63968 r!7292 Nil!63968)) (h!70417 s!2326)))))

(declare-fun b!5863636 () Bool)

(assert (=> b!5863636 (= e!3595077 (validRegex!7667 (regOne!32375 r!7292)))))

(declare-fun b!5863637 () Bool)

(declare-fun tp!1621923 () Bool)

(assert (=> b!5863637 (= e!3595066 tp!1621923)))

(declare-fun b!5863638 () Bool)

(declare-fun res!2467030 () Bool)

(assert (=> b!5863638 (=> res!2467030 e!3595068)))

(declare-fun generalisedConcat!1528 (List!64092) Regex!15931)

(assert (=> b!5863638 (= res!2467030 (not (= r!7292 (generalisedConcat!1528 (exprs!5815 (h!70418 zl!343))))))))

(declare-fun b!5863639 () Bool)

(declare-fun res!2467013 () Bool)

(assert (=> b!5863639 (=> res!2467013 e!3595068)))

(assert (=> b!5863639 (= res!2467013 (not ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343)))))))

(declare-fun b!5863640 () Bool)

(declare-fun res!2467021 () Bool)

(assert (=> b!5863640 (=> res!2467021 e!3595068)))

(declare-fun generalisedUnion!1775 (List!64092) Regex!15931)

(declare-fun unfocusZipperList!1352 (List!64094) List!64092)

(assert (=> b!5863640 (= res!2467021 (not (= r!7292 (generalisedUnion!1775 (unfocusZipperList!1352 zl!343)))))))

(assert (= (and start!599692 res!2467029) b!5863630))

(assert (= (and b!5863630 res!2467017) b!5863628))

(assert (= (and b!5863628 res!2467024) b!5863626))

(assert (= (and b!5863626 (not res!2467027)) b!5863634))

(assert (= (and b!5863634 (not res!2467014)) b!5863638))

(assert (= (and b!5863638 (not res!2467030)) b!5863639))

(assert (= (and b!5863639 (not res!2467013)) b!5863640))

(assert (= (and b!5863640 (not res!2467021)) b!5863614))

(assert (= (and b!5863614 (not res!2467018)) b!5863617))

(assert (= (and b!5863617 (not res!2467025)) b!5863635))

(assert (= (and b!5863635 (not res!2467012)) b!5863621))

(assert (= (and b!5863621 (not res!2467016)) b!5863627))

(assert (= (and b!5863627 (not res!2467023)) b!5863629))

(assert (= (and b!5863629 (not res!2467020)) b!5863619))

(assert (= (and b!5863619 (not res!2467026)) b!5863632))

(assert (= (and b!5863619 (not res!2467015)) b!5863615))

(assert (= (and b!5863615 (not res!2467022)) b!5863620))

(assert (= (and b!5863620 (not res!2467028)) b!5863624))

(assert (= (and b!5863624 (not res!2467019)) b!5863636))

(assert (= (and start!599692 ((_ is ElementMatch!15931) r!7292)) b!5863631))

(assert (= (and start!599692 ((_ is Concat!24776) r!7292)) b!5863623))

(assert (= (and start!599692 ((_ is Star!15931) r!7292)) b!5863618))

(assert (= (and start!599692 ((_ is Union!15931) r!7292)) b!5863625))

(assert (= (and start!599692 condSetEmpty!39780) setIsEmpty!39780))

(assert (= (and start!599692 (not condSetEmpty!39780)) setNonEmpty!39780))

(assert (= setNonEmpty!39780 b!5863637))

(assert (= b!5863616 b!5863633))

(assert (= (and start!599692 ((_ is Cons!63970) zl!343)) b!5863616))

(assert (= (and start!599692 ((_ is Cons!63969) s!2326)) b!5863622))

(declare-fun m!6780008 () Bool)

(assert (=> b!5863615 m!6780008))

(declare-fun m!6780010 () Bool)

(assert (=> b!5863615 m!6780010))

(declare-fun m!6780012 () Bool)

(assert (=> b!5863615 m!6780012))

(declare-fun m!6780014 () Bool)

(assert (=> b!5863615 m!6780014))

(declare-fun m!6780016 () Bool)

(assert (=> b!5863615 m!6780016))

(declare-fun m!6780018 () Bool)

(assert (=> b!5863615 m!6780018))

(declare-fun m!6780020 () Bool)

(assert (=> b!5863615 m!6780020))

(declare-fun m!6780022 () Bool)

(assert (=> b!5863615 m!6780022))

(declare-fun m!6780024 () Bool)

(assert (=> b!5863615 m!6780024))

(declare-fun m!6780026 () Bool)

(assert (=> b!5863638 m!6780026))

(declare-fun m!6780028 () Bool)

(assert (=> setNonEmpty!39780 m!6780028))

(declare-fun m!6780030 () Bool)

(assert (=> b!5863634 m!6780030))

(declare-fun m!6780032 () Bool)

(assert (=> b!5863619 m!6780032))

(declare-fun m!6780034 () Bool)

(assert (=> b!5863619 m!6780034))

(declare-fun m!6780036 () Bool)

(assert (=> b!5863621 m!6780036))

(declare-fun m!6780038 () Bool)

(assert (=> b!5863621 m!6780038))

(declare-fun m!6780040 () Bool)

(assert (=> b!5863640 m!6780040))

(assert (=> b!5863640 m!6780040))

(declare-fun m!6780042 () Bool)

(assert (=> b!5863640 m!6780042))

(declare-fun m!6780044 () Bool)

(assert (=> b!5863632 m!6780044))

(declare-fun m!6780046 () Bool)

(assert (=> b!5863630 m!6780046))

(declare-fun m!6780048 () Bool)

(assert (=> b!5863628 m!6780048))

(declare-fun m!6780050 () Bool)

(assert (=> b!5863616 m!6780050))

(declare-fun m!6780052 () Bool)

(assert (=> b!5863626 m!6780052))

(declare-fun m!6780054 () Bool)

(assert (=> b!5863626 m!6780054))

(declare-fun m!6780056 () Bool)

(assert (=> b!5863626 m!6780056))

(declare-fun m!6780058 () Bool)

(assert (=> b!5863635 m!6780058))

(declare-fun m!6780060 () Bool)

(assert (=> b!5863635 m!6780060))

(declare-fun m!6780062 () Bool)

(assert (=> b!5863627 m!6780062))

(declare-fun m!6780064 () Bool)

(assert (=> b!5863627 m!6780064))

(declare-fun m!6780066 () Bool)

(assert (=> b!5863627 m!6780066))

(declare-fun m!6780068 () Bool)

(assert (=> b!5863627 m!6780068))

(declare-fun m!6780070 () Bool)

(assert (=> start!599692 m!6780070))

(declare-fun m!6780072 () Bool)

(assert (=> b!5863617 m!6780072))

(declare-fun m!6780074 () Bool)

(assert (=> b!5863617 m!6780074))

(declare-fun m!6780076 () Bool)

(assert (=> b!5863617 m!6780076))

(declare-fun m!6780078 () Bool)

(assert (=> b!5863617 m!6780078))

(declare-fun m!6780080 () Bool)

(assert (=> b!5863617 m!6780080))

(declare-fun m!6780082 () Bool)

(assert (=> b!5863617 m!6780082))

(declare-fun m!6780084 () Bool)

(assert (=> b!5863629 m!6780084))

(declare-fun m!6780086 () Bool)

(assert (=> b!5863629 m!6780086))

(assert (=> b!5863620 m!6780044))

(declare-fun m!6780088 () Bool)

(assert (=> b!5863620 m!6780088))

(declare-fun m!6780090 () Bool)

(assert (=> b!5863636 m!6780090))

(check-sat (not b!5863619) (not b!5863638) (not b!5863621) (not b!5863616) (not b!5863622) (not b!5863636) (not b!5863618) (not b!5863625) (not b!5863640) (not setNonEmpty!39780) (not b!5863620) (not b!5863628) (not b!5863626) (not b!5863629) (not b!5863617) (not b!5863615) tp_is_empty!41115 (not b!5863633) (not b!5863623) (not b!5863635) (not b!5863634) (not b!5863627) (not b!5863632) (not start!599692) (not b!5863637) (not b!5863630))
(check-sat)
(get-model)

(declare-fun d!1841457 () Bool)

(assert (=> d!1841457 (= (isEmpty!35826 (t!377469 zl!343)) ((_ is Nil!63970) (t!377469 zl!343)))))

(assert (=> b!5863634 d!1841457))

(declare-fun d!1841459 () Bool)

(declare-fun choose!44453 ((InoxSet Context!10630) Int) (InoxSet Context!10630))

(assert (=> d!1841459 (= (flatMap!1462 lt!2305875 lambda!320630) (choose!44453 lt!2305875 lambda!320630))))

(declare-fun bs!1381536 () Bool)

(assert (= bs!1381536 d!1841459))

(declare-fun m!6780092 () Bool)

(assert (=> bs!1381536 m!6780092))

(assert (=> b!5863615 d!1841459))

(declare-fun d!1841461 () Bool)

(assert (=> d!1841461 (= (flatMap!1462 lt!2305856 lambda!320630) (choose!44453 lt!2305856 lambda!320630))))

(declare-fun bs!1381537 () Bool)

(assert (= bs!1381537 d!1841461))

(declare-fun m!6780094 () Bool)

(assert (=> bs!1381537 m!6780094))

(assert (=> b!5863615 d!1841461))

(declare-fun d!1841463 () Bool)

(declare-fun dynLambda!25016 (Int Context!10630) (InoxSet Context!10630))

(assert (=> d!1841463 (= (flatMap!1462 lt!2305875 lambda!320630) (dynLambda!25016 lambda!320630 lt!2305861))))

(declare-fun lt!2305883 () Unit!157133)

(declare-fun choose!44454 ((InoxSet Context!10630) Context!10630 Int) Unit!157133)

(assert (=> d!1841463 (= lt!2305883 (choose!44454 lt!2305875 lt!2305861 lambda!320630))))

(assert (=> d!1841463 (= lt!2305875 (store ((as const (Array Context!10630 Bool)) false) lt!2305861 true))))

(assert (=> d!1841463 (= (lemmaFlatMapOnSingletonSet!990 lt!2305875 lt!2305861 lambda!320630) lt!2305883)))

(declare-fun b_lambda!220749 () Bool)

(assert (=> (not b_lambda!220749) (not d!1841463)))

(declare-fun bs!1381538 () Bool)

(assert (= bs!1381538 d!1841463))

(assert (=> bs!1381538 m!6780010))

(declare-fun m!6780096 () Bool)

(assert (=> bs!1381538 m!6780096))

(declare-fun m!6780098 () Bool)

(assert (=> bs!1381538 m!6780098))

(assert (=> bs!1381538 m!6780008))

(assert (=> b!5863615 d!1841463))

(declare-fun d!1841465 () Bool)

(assert (=> d!1841465 (= (flatMap!1462 lt!2305856 lambda!320630) (dynLambda!25016 lambda!320630 lt!2305873))))

(declare-fun lt!2305884 () Unit!157133)

(assert (=> d!1841465 (= lt!2305884 (choose!44454 lt!2305856 lt!2305873 lambda!320630))))

(assert (=> d!1841465 (= lt!2305856 (store ((as const (Array Context!10630 Bool)) false) lt!2305873 true))))

(assert (=> d!1841465 (= (lemmaFlatMapOnSingletonSet!990 lt!2305856 lt!2305873 lambda!320630) lt!2305884)))

(declare-fun b_lambda!220751 () Bool)

(assert (=> (not b_lambda!220751) (not d!1841465)))

(declare-fun bs!1381539 () Bool)

(assert (= bs!1381539 d!1841465))

(assert (=> bs!1381539 m!6780020))

(declare-fun m!6780100 () Bool)

(assert (=> bs!1381539 m!6780100))

(declare-fun m!6780102 () Bool)

(assert (=> bs!1381539 m!6780102))

(assert (=> bs!1381539 m!6780014))

(assert (=> b!5863615 d!1841465))

(declare-fun call!460089 () (InoxSet Context!10630))

(declare-fun b!5863653 () Bool)

(declare-fun e!3595084 () (InoxSet Context!10630))

(assert (=> b!5863653 (= e!3595084 ((_ map or) call!460089 (derivationStepZipperUp!1123 (Context!10631 (t!377467 (exprs!5815 lt!2305861))) (h!70417 s!2326))))))

(declare-fun b!5863654 () Bool)

(declare-fun e!3595085 () (InoxSet Context!10630))

(assert (=> b!5863654 (= e!3595084 e!3595085)))

(declare-fun c!1040449 () Bool)

(assert (=> b!5863654 (= c!1040449 ((_ is Cons!63968) (exprs!5815 lt!2305861)))))

(declare-fun d!1841467 () Bool)

(declare-fun c!1040448 () Bool)

(declare-fun e!3595086 () Bool)

(assert (=> d!1841467 (= c!1040448 e!3595086)))

(declare-fun res!2467033 () Bool)

(assert (=> d!1841467 (=> (not res!2467033) (not e!3595086))))

(assert (=> d!1841467 (= res!2467033 ((_ is Cons!63968) (exprs!5815 lt!2305861)))))

(assert (=> d!1841467 (= (derivationStepZipperUp!1123 lt!2305861 (h!70417 s!2326)) e!3595084)))

(declare-fun b!5863655 () Bool)

(assert (=> b!5863655 (= e!3595085 call!460089)))

(declare-fun b!5863656 () Bool)

(declare-fun nullable!5931 (Regex!15931) Bool)

(assert (=> b!5863656 (= e!3595086 (nullable!5931 (h!70416 (exprs!5815 lt!2305861))))))

(declare-fun bm!460084 () Bool)

(assert (=> bm!460084 (= call!460089 (derivationStepZipperDown!1197 (h!70416 (exprs!5815 lt!2305861)) (Context!10631 (t!377467 (exprs!5815 lt!2305861))) (h!70417 s!2326)))))

(declare-fun b!5863657 () Bool)

(assert (=> b!5863657 (= e!3595085 ((as const (Array Context!10630 Bool)) false))))

(assert (= (and d!1841467 res!2467033) b!5863656))

(assert (= (and d!1841467 c!1040448) b!5863653))

(assert (= (and d!1841467 (not c!1040448)) b!5863654))

(assert (= (and b!5863654 c!1040449) b!5863655))

(assert (= (and b!5863654 (not c!1040449)) b!5863657))

(assert (= (or b!5863653 b!5863655) bm!460084))

(declare-fun m!6780104 () Bool)

(assert (=> b!5863653 m!6780104))

(declare-fun m!6780106 () Bool)

(assert (=> b!5863656 m!6780106))

(declare-fun m!6780108 () Bool)

(assert (=> bm!460084 m!6780108))

(assert (=> b!5863615 d!1841467))

(declare-fun d!1841471 () Bool)

(declare-fun c!1040460 () Bool)

(declare-fun isEmpty!35829 (List!64093) Bool)

(assert (=> d!1841471 (= c!1040460 (isEmpty!35829 s!2326))))

(declare-fun e!3595107 () Bool)

(assert (=> d!1841471 (= (matchZipper!1997 lt!2305856 s!2326) e!3595107)))

(declare-fun b!5863694 () Bool)

(declare-fun nullableZipper!1770 ((InoxSet Context!10630)) Bool)

(assert (=> b!5863694 (= e!3595107 (nullableZipper!1770 lt!2305856))))

(declare-fun b!5863695 () Bool)

(declare-fun head!12416 (List!64093) C!32132)

(declare-fun tail!11501 (List!64093) List!64093)

(assert (=> b!5863695 (= e!3595107 (matchZipper!1997 (derivationStepZipper!1930 lt!2305856 (head!12416 s!2326)) (tail!11501 s!2326)))))

(assert (= (and d!1841471 c!1040460) b!5863694))

(assert (= (and d!1841471 (not c!1040460)) b!5863695))

(declare-fun m!6780110 () Bool)

(assert (=> d!1841471 m!6780110))

(declare-fun m!6780112 () Bool)

(assert (=> b!5863694 m!6780112))

(declare-fun m!6780114 () Bool)

(assert (=> b!5863695 m!6780114))

(assert (=> b!5863695 m!6780114))

(declare-fun m!6780116 () Bool)

(assert (=> b!5863695 m!6780116))

(declare-fun m!6780118 () Bool)

(assert (=> b!5863695 m!6780118))

(assert (=> b!5863695 m!6780116))

(assert (=> b!5863695 m!6780118))

(declare-fun m!6780120 () Bool)

(assert (=> b!5863695 m!6780120))

(assert (=> b!5863615 d!1841471))

(declare-fun b!5863696 () Bool)

(declare-fun e!3595108 () (InoxSet Context!10630))

(declare-fun call!460094 () (InoxSet Context!10630))

(assert (=> b!5863696 (= e!3595108 ((_ map or) call!460094 (derivationStepZipperUp!1123 (Context!10631 (t!377467 (exprs!5815 lt!2305873))) (h!70417 s!2326))))))

(declare-fun b!5863697 () Bool)

(declare-fun e!3595109 () (InoxSet Context!10630))

(assert (=> b!5863697 (= e!3595108 e!3595109)))

(declare-fun c!1040462 () Bool)

(assert (=> b!5863697 (= c!1040462 ((_ is Cons!63968) (exprs!5815 lt!2305873)))))

(declare-fun d!1841473 () Bool)

(declare-fun c!1040461 () Bool)

(declare-fun e!3595110 () Bool)

(assert (=> d!1841473 (= c!1040461 e!3595110)))

(declare-fun res!2467050 () Bool)

(assert (=> d!1841473 (=> (not res!2467050) (not e!3595110))))

(assert (=> d!1841473 (= res!2467050 ((_ is Cons!63968) (exprs!5815 lt!2305873)))))

(assert (=> d!1841473 (= (derivationStepZipperUp!1123 lt!2305873 (h!70417 s!2326)) e!3595108)))

(declare-fun b!5863698 () Bool)

(assert (=> b!5863698 (= e!3595109 call!460094)))

(declare-fun b!5863699 () Bool)

(assert (=> b!5863699 (= e!3595110 (nullable!5931 (h!70416 (exprs!5815 lt!2305873))))))

(declare-fun bm!460089 () Bool)

(assert (=> bm!460089 (= call!460094 (derivationStepZipperDown!1197 (h!70416 (exprs!5815 lt!2305873)) (Context!10631 (t!377467 (exprs!5815 lt!2305873))) (h!70417 s!2326)))))

(declare-fun b!5863700 () Bool)

(assert (=> b!5863700 (= e!3595109 ((as const (Array Context!10630 Bool)) false))))

(assert (= (and d!1841473 res!2467050) b!5863699))

(assert (= (and d!1841473 c!1040461) b!5863696))

(assert (= (and d!1841473 (not c!1040461)) b!5863697))

(assert (= (and b!5863697 c!1040462) b!5863698))

(assert (= (and b!5863697 (not c!1040462)) b!5863700))

(assert (= (or b!5863696 b!5863698) bm!460089))

(declare-fun m!6780122 () Bool)

(assert (=> b!5863696 m!6780122))

(declare-fun m!6780124 () Bool)

(assert (=> b!5863699 m!6780124))

(declare-fun m!6780126 () Bool)

(assert (=> bm!460089 m!6780126))

(assert (=> b!5863615 d!1841473))

(declare-fun bm!460119 () Bool)

(declare-fun call!460126 () (InoxSet Context!10630))

(declare-fun call!460125 () (InoxSet Context!10630))

(assert (=> bm!460119 (= call!460126 call!460125)))

(declare-fun b!5863802 () Bool)

(declare-fun e!3595165 () (InoxSet Context!10630))

(assert (=> b!5863802 (= e!3595165 call!460126)))

(declare-fun b!5863803 () Bool)

(declare-fun e!3595168 () (InoxSet Context!10630))

(assert (=> b!5863803 (= e!3595168 ((as const (Array Context!10630 Bool)) false))))

(declare-fun call!460127 () List!64092)

(declare-fun bm!460120 () Bool)

(declare-fun c!1040496 () Bool)

(declare-fun c!1040499 () Bool)

(declare-fun c!1040497 () Bool)

(declare-fun call!460129 () (InoxSet Context!10630))

(assert (=> bm!460120 (= call!460129 (derivationStepZipperDown!1197 (ite c!1040499 (regOne!32375 r!7292) (ite c!1040496 (regTwo!32374 r!7292) (ite c!1040497 (regOne!32374 r!7292) (reg!16260 r!7292)))) (ite (or c!1040499 c!1040496) lt!2305860 (Context!10631 call!460127)) (h!70417 s!2326)))))

(declare-fun b!5863804 () Bool)

(declare-fun e!3595167 () (InoxSet Context!10630))

(assert (=> b!5863804 (= e!3595167 (store ((as const (Array Context!10630 Bool)) false) lt!2305860 true))))

(declare-fun b!5863805 () Bool)

(declare-fun e!3595166 () Bool)

(assert (=> b!5863805 (= c!1040496 e!3595166)))

(declare-fun res!2467082 () Bool)

(assert (=> b!5863805 (=> (not res!2467082) (not e!3595166))))

(assert (=> b!5863805 (= res!2467082 ((_ is Concat!24776) r!7292))))

(declare-fun e!3595163 () (InoxSet Context!10630))

(declare-fun e!3595164 () (InoxSet Context!10630))

(assert (=> b!5863805 (= e!3595163 e!3595164)))

(declare-fun d!1841475 () Bool)

(declare-fun c!1040498 () Bool)

(assert (=> d!1841475 (= c!1040498 (and ((_ is ElementMatch!15931) r!7292) (= (c!1040443 r!7292) (h!70417 s!2326))))))

(assert (=> d!1841475 (= (derivationStepZipperDown!1197 r!7292 lt!2305860 (h!70417 s!2326)) e!3595167)))

(declare-fun b!5863806 () Bool)

(declare-fun call!460124 () (InoxSet Context!10630))

(assert (=> b!5863806 (= e!3595163 ((_ map or) call!460129 call!460124))))

(declare-fun bm!460121 () Bool)

(declare-fun call!460128 () List!64092)

(assert (=> bm!460121 (= call!460127 call!460128)))

(declare-fun bm!460122 () Bool)

(assert (=> bm!460122 (= call!460125 call!460129)))

(declare-fun b!5863807 () Bool)

(assert (=> b!5863807 (= e!3595168 call!460126)))

(declare-fun b!5863808 () Bool)

(assert (=> b!5863808 (= e!3595164 e!3595165)))

(assert (=> b!5863808 (= c!1040497 ((_ is Concat!24776) r!7292))))

(declare-fun bm!460123 () Bool)

(assert (=> bm!460123 (= call!460124 (derivationStepZipperDown!1197 (ite c!1040499 (regTwo!32375 r!7292) (regOne!32374 r!7292)) (ite c!1040499 lt!2305860 (Context!10631 call!460128)) (h!70417 s!2326)))))

(declare-fun b!5863809 () Bool)

(assert (=> b!5863809 (= e!3595166 (nullable!5931 (regOne!32374 r!7292)))))

(declare-fun bm!460124 () Bool)

(declare-fun $colon$colon!1836 (List!64092 Regex!15931) List!64092)

(assert (=> bm!460124 (= call!460128 ($colon$colon!1836 (exprs!5815 lt!2305860) (ite (or c!1040496 c!1040497) (regTwo!32374 r!7292) r!7292)))))

(declare-fun b!5863810 () Bool)

(declare-fun c!1040500 () Bool)

(assert (=> b!5863810 (= c!1040500 ((_ is Star!15931) r!7292))))

(assert (=> b!5863810 (= e!3595165 e!3595168)))

(declare-fun b!5863811 () Bool)

(assert (=> b!5863811 (= e!3595167 e!3595163)))

(assert (=> b!5863811 (= c!1040499 ((_ is Union!15931) r!7292))))

(declare-fun b!5863812 () Bool)

(assert (=> b!5863812 (= e!3595164 ((_ map or) call!460124 call!460125))))

(assert (= (and d!1841475 c!1040498) b!5863804))

(assert (= (and d!1841475 (not c!1040498)) b!5863811))

(assert (= (and b!5863811 c!1040499) b!5863806))

(assert (= (and b!5863811 (not c!1040499)) b!5863805))

(assert (= (and b!5863805 res!2467082) b!5863809))

(assert (= (and b!5863805 c!1040496) b!5863812))

(assert (= (and b!5863805 (not c!1040496)) b!5863808))

(assert (= (and b!5863808 c!1040497) b!5863802))

(assert (= (and b!5863808 (not c!1040497)) b!5863810))

(assert (= (and b!5863810 c!1040500) b!5863807))

(assert (= (and b!5863810 (not c!1040500)) b!5863803))

(assert (= (or b!5863802 b!5863807) bm!460121))

(assert (= (or b!5863802 b!5863807) bm!460119))

(assert (= (or b!5863812 bm!460121) bm!460124))

(assert (= (or b!5863812 bm!460119) bm!460122))

(assert (= (or b!5863806 b!5863812) bm!460123))

(assert (= (or b!5863806 bm!460122) bm!460120))

(declare-fun m!6780146 () Bool)

(assert (=> bm!460120 m!6780146))

(declare-fun m!6780148 () Bool)

(assert (=> b!5863809 m!6780148))

(declare-fun m!6780150 () Bool)

(assert (=> bm!460123 m!6780150))

(declare-fun m!6780152 () Bool)

(assert (=> b!5863804 m!6780152))

(declare-fun m!6780154 () Bool)

(assert (=> bm!460124 m!6780154))

(assert (=> b!5863635 d!1841475))

(declare-fun b!5863813 () Bool)

(declare-fun call!460130 () (InoxSet Context!10630))

(declare-fun e!3595169 () (InoxSet Context!10630))

(assert (=> b!5863813 (= e!3595169 ((_ map or) call!460130 (derivationStepZipperUp!1123 (Context!10631 (t!377467 (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968))))) (h!70417 s!2326))))))

(declare-fun b!5863814 () Bool)

(declare-fun e!3595170 () (InoxSet Context!10630))

(assert (=> b!5863814 (= e!3595169 e!3595170)))

(declare-fun c!1040502 () Bool)

(assert (=> b!5863814 (= c!1040502 ((_ is Cons!63968) (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968)))))))

(declare-fun d!1841483 () Bool)

(declare-fun c!1040501 () Bool)

(declare-fun e!3595171 () Bool)

(assert (=> d!1841483 (= c!1040501 e!3595171)))

(declare-fun res!2467083 () Bool)

(assert (=> d!1841483 (=> (not res!2467083) (not e!3595171))))

(assert (=> d!1841483 (= res!2467083 ((_ is Cons!63968) (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968)))))))

(assert (=> d!1841483 (= (derivationStepZipperUp!1123 (Context!10631 (Cons!63968 r!7292 Nil!63968)) (h!70417 s!2326)) e!3595169)))

(declare-fun b!5863815 () Bool)

(assert (=> b!5863815 (= e!3595170 call!460130)))

(declare-fun b!5863816 () Bool)

(assert (=> b!5863816 (= e!3595171 (nullable!5931 (h!70416 (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968))))))))

(declare-fun bm!460125 () Bool)

(assert (=> bm!460125 (= call!460130 (derivationStepZipperDown!1197 (h!70416 (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968)))) (Context!10631 (t!377467 (exprs!5815 (Context!10631 (Cons!63968 r!7292 Nil!63968))))) (h!70417 s!2326)))))

(declare-fun b!5863817 () Bool)

(assert (=> b!5863817 (= e!3595170 ((as const (Array Context!10630 Bool)) false))))

(assert (= (and d!1841483 res!2467083) b!5863816))

(assert (= (and d!1841483 c!1040501) b!5863813))

(assert (= (and d!1841483 (not c!1040501)) b!5863814))

(assert (= (and b!5863814 c!1040502) b!5863815))

(assert (= (and b!5863814 (not c!1040502)) b!5863817))

(assert (= (or b!5863813 b!5863815) bm!460125))

(declare-fun m!6780156 () Bool)

(assert (=> b!5863813 m!6780156))

(declare-fun m!6780158 () Bool)

(assert (=> b!5863816 m!6780158))

(declare-fun m!6780160 () Bool)

(assert (=> bm!460125 m!6780160))

(assert (=> b!5863635 d!1841483))

(declare-fun d!1841485 () Bool)

(declare-fun lambda!320639 () Int)

(declare-fun forall!15018 (List!64092 Int) Bool)

(assert (=> d!1841485 (= (inv!83074 (h!70418 zl!343)) (forall!15018 (exprs!5815 (h!70418 zl!343)) lambda!320639))))

(declare-fun bs!1381542 () Bool)

(assert (= bs!1381542 d!1841485))

(declare-fun m!6780172 () Bool)

(assert (=> bs!1381542 m!6780172))

(assert (=> b!5863616 d!1841485))

(declare-fun c!1040527 () Bool)

(declare-fun c!1040528 () Bool)

(declare-fun call!460148 () Bool)

(declare-fun bm!460143 () Bool)

(assert (=> bm!460143 (= call!460148 (validRegex!7667 (ite c!1040528 (reg!16260 (regOne!32375 r!7292)) (ite c!1040527 (regOne!32375 (regOne!32375 r!7292)) (regOne!32374 (regOne!32375 r!7292))))))))

(declare-fun b!5863888 () Bool)

(declare-fun res!2467106 () Bool)

(declare-fun e!3595224 () Bool)

(assert (=> b!5863888 (=> res!2467106 e!3595224)))

(assert (=> b!5863888 (= res!2467106 (not ((_ is Concat!24776) (regOne!32375 r!7292))))))

(declare-fun e!3595220 () Bool)

(assert (=> b!5863888 (= e!3595220 e!3595224)))

(declare-fun b!5863889 () Bool)

(declare-fun e!3595219 () Bool)

(declare-fun call!460149 () Bool)

(assert (=> b!5863889 (= e!3595219 call!460149)))

(declare-fun b!5863890 () Bool)

(declare-fun e!3595223 () Bool)

(assert (=> b!5863890 (= e!3595224 e!3595223)))

(declare-fun res!2467108 () Bool)

(assert (=> b!5863890 (=> (not res!2467108) (not e!3595223))))

(declare-fun call!460150 () Bool)

(assert (=> b!5863890 (= res!2467108 call!460150)))

(declare-fun b!5863891 () Bool)

(assert (=> b!5863891 (= e!3595223 call!460149)))

(declare-fun bm!460144 () Bool)

(assert (=> bm!460144 (= call!460149 (validRegex!7667 (ite c!1040527 (regTwo!32375 (regOne!32375 r!7292)) (regTwo!32374 (regOne!32375 r!7292)))))))

(declare-fun b!5863892 () Bool)

(declare-fun e!3595221 () Bool)

(assert (=> b!5863892 (= e!3595221 call!460148)))

(declare-fun d!1841489 () Bool)

(declare-fun res!2467110 () Bool)

(declare-fun e!3595222 () Bool)

(assert (=> d!1841489 (=> res!2467110 e!3595222)))

(assert (=> d!1841489 (= res!2467110 ((_ is ElementMatch!15931) (regOne!32375 r!7292)))))

(assert (=> d!1841489 (= (validRegex!7667 (regOne!32375 r!7292)) e!3595222)))

(declare-fun b!5863893 () Bool)

(declare-fun e!3595218 () Bool)

(assert (=> b!5863893 (= e!3595218 e!3595221)))

(declare-fun res!2467107 () Bool)

(assert (=> b!5863893 (= res!2467107 (not (nullable!5931 (reg!16260 (regOne!32375 r!7292)))))))

(assert (=> b!5863893 (=> (not res!2467107) (not e!3595221))))

(declare-fun b!5863894 () Bool)

(declare-fun res!2467109 () Bool)

(assert (=> b!5863894 (=> (not res!2467109) (not e!3595219))))

(assert (=> b!5863894 (= res!2467109 call!460150)))

(assert (=> b!5863894 (= e!3595220 e!3595219)))

(declare-fun b!5863895 () Bool)

(assert (=> b!5863895 (= e!3595218 e!3595220)))

(assert (=> b!5863895 (= c!1040527 ((_ is Union!15931) (regOne!32375 r!7292)))))

(declare-fun bm!460145 () Bool)

(assert (=> bm!460145 (= call!460150 call!460148)))

(declare-fun b!5863896 () Bool)

(assert (=> b!5863896 (= e!3595222 e!3595218)))

(assert (=> b!5863896 (= c!1040528 ((_ is Star!15931) (regOne!32375 r!7292)))))

(assert (= (and d!1841489 (not res!2467110)) b!5863896))

(assert (= (and b!5863896 c!1040528) b!5863893))

(assert (= (and b!5863896 (not c!1040528)) b!5863895))

(assert (= (and b!5863893 res!2467107) b!5863892))

(assert (= (and b!5863895 c!1040527) b!5863894))

(assert (= (and b!5863895 (not c!1040527)) b!5863888))

(assert (= (and b!5863894 res!2467109) b!5863889))

(assert (= (and b!5863888 (not res!2467106)) b!5863890))

(assert (= (and b!5863890 res!2467108) b!5863891))

(assert (= (or b!5863889 b!5863891) bm!460144))

(assert (= (or b!5863894 b!5863890) bm!460145))

(assert (= (or b!5863892 bm!460145) bm!460143))

(declare-fun m!6780230 () Bool)

(assert (=> bm!460143 m!6780230))

(declare-fun m!6780232 () Bool)

(assert (=> bm!460144 m!6780232))

(declare-fun m!6780234 () Bool)

(assert (=> b!5863893 m!6780234))

(assert (=> b!5863636 d!1841489))

(declare-fun b!5864045 () Bool)

(assert (=> b!5864045 true))

(assert (=> b!5864045 true))

(declare-fun bs!1381575 () Bool)

(declare-fun b!5864048 () Bool)

(assert (= bs!1381575 (and b!5864048 b!5864045)))

(declare-fun lambda!320662 () Int)

(declare-fun lambda!320660 () Int)

(assert (=> bs!1381575 (not (= lambda!320662 lambda!320660))))

(assert (=> b!5864048 true))

(assert (=> b!5864048 true))

(declare-fun b!5864044 () Bool)

(declare-fun e!3595309 () Bool)

(declare-fun e!3595313 () Bool)

(assert (=> b!5864044 (= e!3595309 e!3595313)))

(declare-fun res!2467154 () Bool)

(assert (=> b!5864044 (= res!2467154 (not ((_ is EmptyLang!15931) (regTwo!32375 r!7292))))))

(assert (=> b!5864044 (=> (not res!2467154) (not e!3595313))))

(declare-fun b!5864046 () Bool)

(declare-fun e!3595315 () Bool)

(declare-fun e!3595314 () Bool)

(assert (=> b!5864046 (= e!3595315 e!3595314)))

(declare-fun res!2467153 () Bool)

(assert (=> b!5864046 (= res!2467153 (matchRSpec!3032 (regOne!32375 (regTwo!32375 r!7292)) s!2326))))

(assert (=> b!5864046 (=> res!2467153 e!3595314)))

(declare-fun call!460170 () Bool)

(declare-fun bm!460165 () Bool)

(declare-fun c!1040585 () Bool)

(declare-fun Exists!3003 (Int) Bool)

(assert (=> bm!460165 (= call!460170 (Exists!3003 (ite c!1040585 lambda!320660 lambda!320662)))))

(declare-fun b!5864047 () Bool)

(declare-fun call!460171 () Bool)

(assert (=> b!5864047 (= e!3595309 call!460171)))

(declare-fun e!3595311 () Bool)

(assert (=> b!5864048 (= e!3595311 call!460170)))

(declare-fun b!5864049 () Bool)

(assert (=> b!5864049 (= e!3595314 (matchRSpec!3032 (regTwo!32375 (regTwo!32375 r!7292)) s!2326))))

(declare-fun b!5864050 () Bool)

(declare-fun e!3595312 () Bool)

(assert (=> b!5864050 (= e!3595312 (= s!2326 (Cons!63969 (c!1040443 (regTwo!32375 r!7292)) Nil!63969)))))

(declare-fun b!5864051 () Bool)

(assert (=> b!5864051 (= e!3595315 e!3595311)))

(assert (=> b!5864051 (= c!1040585 ((_ is Star!15931) (regTwo!32375 r!7292)))))

(declare-fun b!5864052 () Bool)

(declare-fun c!1040583 () Bool)

(assert (=> b!5864052 (= c!1040583 ((_ is ElementMatch!15931) (regTwo!32375 r!7292)))))

(assert (=> b!5864052 (= e!3595313 e!3595312)))

(declare-fun b!5864053 () Bool)

(declare-fun c!1040584 () Bool)

(assert (=> b!5864053 (= c!1040584 ((_ is Union!15931) (regTwo!32375 r!7292)))))

(assert (=> b!5864053 (= e!3595312 e!3595315)))

(declare-fun b!5864054 () Bool)

(declare-fun res!2467152 () Bool)

(declare-fun e!3595310 () Bool)

(assert (=> b!5864054 (=> res!2467152 e!3595310)))

(assert (=> b!5864054 (= res!2467152 call!460171)))

(assert (=> b!5864054 (= e!3595311 e!3595310)))

(declare-fun bm!460166 () Bool)

(assert (=> bm!460166 (= call!460171 (isEmpty!35829 s!2326))))

(declare-fun d!1841511 () Bool)

(declare-fun c!1040582 () Bool)

(assert (=> d!1841511 (= c!1040582 ((_ is EmptyExpr!15931) (regTwo!32375 r!7292)))))

(assert (=> d!1841511 (= (matchRSpec!3032 (regTwo!32375 r!7292) s!2326) e!3595309)))

(assert (=> b!5864045 (= e!3595310 call!460170)))

(assert (= (and d!1841511 c!1040582) b!5864047))

(assert (= (and d!1841511 (not c!1040582)) b!5864044))

(assert (= (and b!5864044 res!2467154) b!5864052))

(assert (= (and b!5864052 c!1040583) b!5864050))

(assert (= (and b!5864052 (not c!1040583)) b!5864053))

(assert (= (and b!5864053 c!1040584) b!5864046))

(assert (= (and b!5864053 (not c!1040584)) b!5864051))

(assert (= (and b!5864046 (not res!2467153)) b!5864049))

(assert (= (and b!5864051 c!1040585) b!5864054))

(assert (= (and b!5864051 (not c!1040585)) b!5864048))

(assert (= (and b!5864054 (not res!2467152)) b!5864045))

(assert (= (or b!5864045 b!5864048) bm!460165))

(assert (= (or b!5864047 b!5864054) bm!460166))

(declare-fun m!6780338 () Bool)

(assert (=> b!5864046 m!6780338))

(declare-fun m!6780340 () Bool)

(assert (=> bm!460165 m!6780340))

(declare-fun m!6780342 () Bool)

(assert (=> b!5864049 m!6780342))

(assert (=> bm!460166 m!6780110))

(assert (=> b!5863617 d!1841511))

(declare-fun d!1841543 () Bool)

(assert (=> d!1841543 (= (matchR!8114 (regOne!32375 r!7292) s!2326) (matchRSpec!3032 (regOne!32375 r!7292) s!2326))))

(declare-fun lt!2305916 () Unit!157133)

(declare-fun choose!44455 (Regex!15931 List!64093) Unit!157133)

(assert (=> d!1841543 (= lt!2305916 (choose!44455 (regOne!32375 r!7292) s!2326))))

(assert (=> d!1841543 (validRegex!7667 (regOne!32375 r!7292))))

(assert (=> d!1841543 (= (mainMatchTheorem!3032 (regOne!32375 r!7292) s!2326) lt!2305916)))

(declare-fun bs!1381576 () Bool)

(assert (= bs!1381576 d!1841543))

(assert (=> bs!1381576 m!6780082))

(assert (=> bs!1381576 m!6780078))

(declare-fun m!6780350 () Bool)

(assert (=> bs!1381576 m!6780350))

(assert (=> bs!1381576 m!6780090))

(assert (=> b!5863617 d!1841543))

(declare-fun b!5864213 () Bool)

(declare-fun e!3595402 () Bool)

(declare-fun e!3595401 () Bool)

(assert (=> b!5864213 (= e!3595402 e!3595401)))

(declare-fun res!2467210 () Bool)

(assert (=> b!5864213 (=> res!2467210 e!3595401)))

(declare-fun call!460190 () Bool)

(assert (=> b!5864213 (= res!2467210 call!460190)))

(declare-fun b!5864214 () Bool)

(declare-fun res!2467207 () Bool)

(declare-fun e!3595406 () Bool)

(assert (=> b!5864214 (=> res!2467207 e!3595406)))

(assert (=> b!5864214 (= res!2467207 (not ((_ is ElementMatch!15931) (regTwo!32375 r!7292))))))

(declare-fun e!3595403 () Bool)

(assert (=> b!5864214 (= e!3595403 e!3595406)))

(declare-fun b!5864215 () Bool)

(declare-fun e!3595405 () Bool)

(assert (=> b!5864215 (= e!3595405 (= (head!12416 s!2326) (c!1040443 (regTwo!32375 r!7292))))))

(declare-fun b!5864216 () Bool)

(declare-fun e!3595404 () Bool)

(assert (=> b!5864216 (= e!3595404 (nullable!5931 (regTwo!32375 r!7292)))))

(declare-fun d!1841547 () Bool)

(declare-fun e!3595400 () Bool)

(assert (=> d!1841547 e!3595400))

(declare-fun c!1040613 () Bool)

(assert (=> d!1841547 (= c!1040613 ((_ is EmptyExpr!15931) (regTwo!32375 r!7292)))))

(declare-fun lt!2305923 () Bool)

(assert (=> d!1841547 (= lt!2305923 e!3595404)))

(declare-fun c!1040615 () Bool)

(assert (=> d!1841547 (= c!1040615 (isEmpty!35829 s!2326))))

(assert (=> d!1841547 (validRegex!7667 (regTwo!32375 r!7292))))

(assert (=> d!1841547 (= (matchR!8114 (regTwo!32375 r!7292) s!2326) lt!2305923)))

(declare-fun b!5864217 () Bool)

(declare-fun res!2467205 () Bool)

(assert (=> b!5864217 (=> res!2467205 e!3595401)))

(assert (=> b!5864217 (= res!2467205 (not (isEmpty!35829 (tail!11501 s!2326))))))

(declare-fun bm!460185 () Bool)

(assert (=> bm!460185 (= call!460190 (isEmpty!35829 s!2326))))

(declare-fun b!5864218 () Bool)

(declare-fun res!2467209 () Bool)

(assert (=> b!5864218 (=> res!2467209 e!3595406)))

(assert (=> b!5864218 (= res!2467209 e!3595405)))

(declare-fun res!2467203 () Bool)

(assert (=> b!5864218 (=> (not res!2467203) (not e!3595405))))

(assert (=> b!5864218 (= res!2467203 lt!2305923)))

(declare-fun b!5864219 () Bool)

(declare-fun res!2467204 () Bool)

(assert (=> b!5864219 (=> (not res!2467204) (not e!3595405))))

(assert (=> b!5864219 (= res!2467204 (isEmpty!35829 (tail!11501 s!2326)))))

(declare-fun b!5864220 () Bool)

(assert (=> b!5864220 (= e!3595403 (not lt!2305923))))

(declare-fun b!5864221 () Bool)

(assert (=> b!5864221 (= e!3595400 e!3595403)))

(declare-fun c!1040614 () Bool)

(assert (=> b!5864221 (= c!1040614 ((_ is EmptyLang!15931) (regTwo!32375 r!7292)))))

(declare-fun b!5864222 () Bool)

(assert (=> b!5864222 (= e!3595406 e!3595402)))

(declare-fun res!2467206 () Bool)

(assert (=> b!5864222 (=> (not res!2467206) (not e!3595402))))

(assert (=> b!5864222 (= res!2467206 (not lt!2305923))))

(declare-fun b!5864223 () Bool)

(assert (=> b!5864223 (= e!3595401 (not (= (head!12416 s!2326) (c!1040443 (regTwo!32375 r!7292)))))))

(declare-fun b!5864224 () Bool)

(declare-fun res!2467208 () Bool)

(assert (=> b!5864224 (=> (not res!2467208) (not e!3595405))))

(assert (=> b!5864224 (= res!2467208 (not call!460190))))

(declare-fun b!5864225 () Bool)

(declare-fun derivativeStep!4669 (Regex!15931 C!32132) Regex!15931)

(assert (=> b!5864225 (= e!3595404 (matchR!8114 (derivativeStep!4669 (regTwo!32375 r!7292) (head!12416 s!2326)) (tail!11501 s!2326)))))

(declare-fun b!5864226 () Bool)

(assert (=> b!5864226 (= e!3595400 (= lt!2305923 call!460190))))

(assert (= (and d!1841547 c!1040615) b!5864216))

(assert (= (and d!1841547 (not c!1040615)) b!5864225))

(assert (= (and d!1841547 c!1040613) b!5864226))

(assert (= (and d!1841547 (not c!1040613)) b!5864221))

(assert (= (and b!5864221 c!1040614) b!5864220))

(assert (= (and b!5864221 (not c!1040614)) b!5864214))

(assert (= (and b!5864214 (not res!2467207)) b!5864218))

(assert (= (and b!5864218 res!2467203) b!5864224))

(assert (= (and b!5864224 res!2467208) b!5864219))

(assert (= (and b!5864219 res!2467204) b!5864215))

(assert (= (and b!5864218 (not res!2467209)) b!5864222))

(assert (= (and b!5864222 res!2467206) b!5864213))

(assert (= (and b!5864213 (not res!2467210)) b!5864217))

(assert (= (and b!5864217 (not res!2467205)) b!5864223))

(assert (= (or b!5864226 b!5864213 b!5864224) bm!460185))

(assert (=> b!5864219 m!6780118))

(assert (=> b!5864219 m!6780118))

(declare-fun m!6780398 () Bool)

(assert (=> b!5864219 m!6780398))

(assert (=> b!5864223 m!6780114))

(assert (=> b!5864225 m!6780114))

(assert (=> b!5864225 m!6780114))

(declare-fun m!6780400 () Bool)

(assert (=> b!5864225 m!6780400))

(assert (=> b!5864225 m!6780118))

(assert (=> b!5864225 m!6780400))

(assert (=> b!5864225 m!6780118))

(declare-fun m!6780402 () Bool)

(assert (=> b!5864225 m!6780402))

(assert (=> b!5864215 m!6780114))

(assert (=> b!5864217 m!6780118))

(assert (=> b!5864217 m!6780118))

(assert (=> b!5864217 m!6780398))

(assert (=> bm!460185 m!6780110))

(assert (=> d!1841547 m!6780110))

(declare-fun m!6780404 () Bool)

(assert (=> d!1841547 m!6780404))

(declare-fun m!6780406 () Bool)

(assert (=> b!5864216 m!6780406))

(assert (=> b!5863617 d!1841547))

(declare-fun d!1841573 () Bool)

(assert (=> d!1841573 (= (matchR!8114 (regTwo!32375 r!7292) s!2326) (matchRSpec!3032 (regTwo!32375 r!7292) s!2326))))

(declare-fun lt!2305924 () Unit!157133)

(assert (=> d!1841573 (= lt!2305924 (choose!44455 (regTwo!32375 r!7292) s!2326))))

(assert (=> d!1841573 (validRegex!7667 (regTwo!32375 r!7292))))

(assert (=> d!1841573 (= (mainMatchTheorem!3032 (regTwo!32375 r!7292) s!2326) lt!2305924)))

(declare-fun bs!1381585 () Bool)

(assert (= bs!1381585 d!1841573))

(assert (=> bs!1381585 m!6780076))

(assert (=> bs!1381585 m!6780072))

(declare-fun m!6780408 () Bool)

(assert (=> bs!1381585 m!6780408))

(assert (=> bs!1381585 m!6780404))

(assert (=> b!5863617 d!1841573))

(declare-fun bs!1381586 () Bool)

(declare-fun b!5864228 () Bool)

(assert (= bs!1381586 (and b!5864228 b!5864045)))

(declare-fun lambda!320666 () Int)

(assert (=> bs!1381586 (= (and (= (reg!16260 (regOne!32375 r!7292)) (reg!16260 (regTwo!32375 r!7292))) (= (regOne!32375 r!7292) (regTwo!32375 r!7292))) (= lambda!320666 lambda!320660))))

(declare-fun bs!1381587 () Bool)

(assert (= bs!1381587 (and b!5864228 b!5864048)))

(assert (=> bs!1381587 (not (= lambda!320666 lambda!320662))))

(assert (=> b!5864228 true))

(assert (=> b!5864228 true))

(declare-fun bs!1381588 () Bool)

(declare-fun b!5864231 () Bool)

(assert (= bs!1381588 (and b!5864231 b!5864045)))

(declare-fun lambda!320667 () Int)

(assert (=> bs!1381588 (not (= lambda!320667 lambda!320660))))

(declare-fun bs!1381589 () Bool)

(assert (= bs!1381589 (and b!5864231 b!5864048)))

(assert (=> bs!1381589 (= (and (= (regOne!32374 (regOne!32375 r!7292)) (regOne!32374 (regTwo!32375 r!7292))) (= (regTwo!32374 (regOne!32375 r!7292)) (regTwo!32374 (regTwo!32375 r!7292)))) (= lambda!320667 lambda!320662))))

(declare-fun bs!1381590 () Bool)

(assert (= bs!1381590 (and b!5864231 b!5864228)))

(assert (=> bs!1381590 (not (= lambda!320667 lambda!320666))))

(assert (=> b!5864231 true))

(assert (=> b!5864231 true))

(declare-fun b!5864227 () Bool)

(declare-fun e!3595407 () Bool)

(declare-fun e!3595411 () Bool)

(assert (=> b!5864227 (= e!3595407 e!3595411)))

(declare-fun res!2467213 () Bool)

(assert (=> b!5864227 (= res!2467213 (not ((_ is EmptyLang!15931) (regOne!32375 r!7292))))))

(assert (=> b!5864227 (=> (not res!2467213) (not e!3595411))))

(declare-fun b!5864229 () Bool)

(declare-fun e!3595413 () Bool)

(declare-fun e!3595412 () Bool)

(assert (=> b!5864229 (= e!3595413 e!3595412)))

(declare-fun res!2467212 () Bool)

(assert (=> b!5864229 (= res!2467212 (matchRSpec!3032 (regOne!32375 (regOne!32375 r!7292)) s!2326))))

(assert (=> b!5864229 (=> res!2467212 e!3595412)))

(declare-fun bm!460186 () Bool)

(declare-fun call!460191 () Bool)

(declare-fun c!1040619 () Bool)

(assert (=> bm!460186 (= call!460191 (Exists!3003 (ite c!1040619 lambda!320666 lambda!320667)))))

(declare-fun b!5864230 () Bool)

(declare-fun call!460192 () Bool)

(assert (=> b!5864230 (= e!3595407 call!460192)))

(declare-fun e!3595409 () Bool)

(assert (=> b!5864231 (= e!3595409 call!460191)))

(declare-fun b!5864232 () Bool)

(assert (=> b!5864232 (= e!3595412 (matchRSpec!3032 (regTwo!32375 (regOne!32375 r!7292)) s!2326))))

(declare-fun b!5864233 () Bool)

(declare-fun e!3595410 () Bool)

(assert (=> b!5864233 (= e!3595410 (= s!2326 (Cons!63969 (c!1040443 (regOne!32375 r!7292)) Nil!63969)))))

(declare-fun b!5864234 () Bool)

(assert (=> b!5864234 (= e!3595413 e!3595409)))

(assert (=> b!5864234 (= c!1040619 ((_ is Star!15931) (regOne!32375 r!7292)))))

(declare-fun b!5864235 () Bool)

(declare-fun c!1040617 () Bool)

(assert (=> b!5864235 (= c!1040617 ((_ is ElementMatch!15931) (regOne!32375 r!7292)))))

(assert (=> b!5864235 (= e!3595411 e!3595410)))

(declare-fun b!5864236 () Bool)

(declare-fun c!1040618 () Bool)

(assert (=> b!5864236 (= c!1040618 ((_ is Union!15931) (regOne!32375 r!7292)))))

(assert (=> b!5864236 (= e!3595410 e!3595413)))

(declare-fun b!5864237 () Bool)

(declare-fun res!2467211 () Bool)

(declare-fun e!3595408 () Bool)

(assert (=> b!5864237 (=> res!2467211 e!3595408)))

(assert (=> b!5864237 (= res!2467211 call!460192)))

(assert (=> b!5864237 (= e!3595409 e!3595408)))

(declare-fun bm!460187 () Bool)

(assert (=> bm!460187 (= call!460192 (isEmpty!35829 s!2326))))

(declare-fun d!1841575 () Bool)

(declare-fun c!1040616 () Bool)

(assert (=> d!1841575 (= c!1040616 ((_ is EmptyExpr!15931) (regOne!32375 r!7292)))))

(assert (=> d!1841575 (= (matchRSpec!3032 (regOne!32375 r!7292) s!2326) e!3595407)))

(assert (=> b!5864228 (= e!3595408 call!460191)))

(assert (= (and d!1841575 c!1040616) b!5864230))

(assert (= (and d!1841575 (not c!1040616)) b!5864227))

(assert (= (and b!5864227 res!2467213) b!5864235))

(assert (= (and b!5864235 c!1040617) b!5864233))

(assert (= (and b!5864235 (not c!1040617)) b!5864236))

(assert (= (and b!5864236 c!1040618) b!5864229))

(assert (= (and b!5864236 (not c!1040618)) b!5864234))

(assert (= (and b!5864229 (not res!2467212)) b!5864232))

(assert (= (and b!5864234 c!1040619) b!5864237))

(assert (= (and b!5864234 (not c!1040619)) b!5864231))

(assert (= (and b!5864237 (not res!2467211)) b!5864228))

(assert (= (or b!5864228 b!5864231) bm!460186))

(assert (= (or b!5864230 b!5864237) bm!460187))

(declare-fun m!6780410 () Bool)

(assert (=> b!5864229 m!6780410))

(declare-fun m!6780412 () Bool)

(assert (=> bm!460186 m!6780412))

(declare-fun m!6780414 () Bool)

(assert (=> b!5864232 m!6780414))

(assert (=> bm!460187 m!6780110))

(assert (=> b!5863617 d!1841575))

(declare-fun b!5864238 () Bool)

(declare-fun e!3595416 () Bool)

(declare-fun e!3595415 () Bool)

(assert (=> b!5864238 (= e!3595416 e!3595415)))

(declare-fun res!2467221 () Bool)

(assert (=> b!5864238 (=> res!2467221 e!3595415)))

(declare-fun call!460193 () Bool)

(assert (=> b!5864238 (= res!2467221 call!460193)))

(declare-fun b!5864239 () Bool)

(declare-fun res!2467218 () Bool)

(declare-fun e!3595420 () Bool)

(assert (=> b!5864239 (=> res!2467218 e!3595420)))

(assert (=> b!5864239 (= res!2467218 (not ((_ is ElementMatch!15931) (regOne!32375 r!7292))))))

(declare-fun e!3595417 () Bool)

(assert (=> b!5864239 (= e!3595417 e!3595420)))

(declare-fun b!5864240 () Bool)

(declare-fun e!3595419 () Bool)

(assert (=> b!5864240 (= e!3595419 (= (head!12416 s!2326) (c!1040443 (regOne!32375 r!7292))))))

(declare-fun b!5864241 () Bool)

(declare-fun e!3595418 () Bool)

(assert (=> b!5864241 (= e!3595418 (nullable!5931 (regOne!32375 r!7292)))))

(declare-fun d!1841577 () Bool)

(declare-fun e!3595414 () Bool)

(assert (=> d!1841577 e!3595414))

(declare-fun c!1040620 () Bool)

(assert (=> d!1841577 (= c!1040620 ((_ is EmptyExpr!15931) (regOne!32375 r!7292)))))

(declare-fun lt!2305925 () Bool)

(assert (=> d!1841577 (= lt!2305925 e!3595418)))

(declare-fun c!1040622 () Bool)

(assert (=> d!1841577 (= c!1040622 (isEmpty!35829 s!2326))))

(assert (=> d!1841577 (validRegex!7667 (regOne!32375 r!7292))))

(assert (=> d!1841577 (= (matchR!8114 (regOne!32375 r!7292) s!2326) lt!2305925)))

(declare-fun b!5864242 () Bool)

(declare-fun res!2467216 () Bool)

(assert (=> b!5864242 (=> res!2467216 e!3595415)))

(assert (=> b!5864242 (= res!2467216 (not (isEmpty!35829 (tail!11501 s!2326))))))

(declare-fun bm!460188 () Bool)

(assert (=> bm!460188 (= call!460193 (isEmpty!35829 s!2326))))

(declare-fun b!5864243 () Bool)

(declare-fun res!2467220 () Bool)

(assert (=> b!5864243 (=> res!2467220 e!3595420)))

(assert (=> b!5864243 (= res!2467220 e!3595419)))

(declare-fun res!2467214 () Bool)

(assert (=> b!5864243 (=> (not res!2467214) (not e!3595419))))

(assert (=> b!5864243 (= res!2467214 lt!2305925)))

(declare-fun b!5864244 () Bool)

(declare-fun res!2467215 () Bool)

(assert (=> b!5864244 (=> (not res!2467215) (not e!3595419))))

(assert (=> b!5864244 (= res!2467215 (isEmpty!35829 (tail!11501 s!2326)))))

(declare-fun b!5864245 () Bool)

(assert (=> b!5864245 (= e!3595417 (not lt!2305925))))

(declare-fun b!5864246 () Bool)

(assert (=> b!5864246 (= e!3595414 e!3595417)))

(declare-fun c!1040621 () Bool)

(assert (=> b!5864246 (= c!1040621 ((_ is EmptyLang!15931) (regOne!32375 r!7292)))))

(declare-fun b!5864247 () Bool)

(assert (=> b!5864247 (= e!3595420 e!3595416)))

(declare-fun res!2467217 () Bool)

(assert (=> b!5864247 (=> (not res!2467217) (not e!3595416))))

(assert (=> b!5864247 (= res!2467217 (not lt!2305925))))

(declare-fun b!5864248 () Bool)

(assert (=> b!5864248 (= e!3595415 (not (= (head!12416 s!2326) (c!1040443 (regOne!32375 r!7292)))))))

(declare-fun b!5864249 () Bool)

(declare-fun res!2467219 () Bool)

(assert (=> b!5864249 (=> (not res!2467219) (not e!3595419))))

(assert (=> b!5864249 (= res!2467219 (not call!460193))))

(declare-fun b!5864250 () Bool)

(assert (=> b!5864250 (= e!3595418 (matchR!8114 (derivativeStep!4669 (regOne!32375 r!7292) (head!12416 s!2326)) (tail!11501 s!2326)))))

(declare-fun b!5864251 () Bool)

(assert (=> b!5864251 (= e!3595414 (= lt!2305925 call!460193))))

(assert (= (and d!1841577 c!1040622) b!5864241))

(assert (= (and d!1841577 (not c!1040622)) b!5864250))

(assert (= (and d!1841577 c!1040620) b!5864251))

(assert (= (and d!1841577 (not c!1040620)) b!5864246))

(assert (= (and b!5864246 c!1040621) b!5864245))

(assert (= (and b!5864246 (not c!1040621)) b!5864239))

(assert (= (and b!5864239 (not res!2467218)) b!5864243))

(assert (= (and b!5864243 res!2467214) b!5864249))

(assert (= (and b!5864249 res!2467219) b!5864244))

(assert (= (and b!5864244 res!2467215) b!5864240))

(assert (= (and b!5864243 (not res!2467220)) b!5864247))

(assert (= (and b!5864247 res!2467217) b!5864238))

(assert (= (and b!5864238 (not res!2467221)) b!5864242))

(assert (= (and b!5864242 (not res!2467216)) b!5864248))

(assert (= (or b!5864251 b!5864238 b!5864249) bm!460188))

(assert (=> b!5864244 m!6780118))

(assert (=> b!5864244 m!6780118))

(assert (=> b!5864244 m!6780398))

(assert (=> b!5864248 m!6780114))

(assert (=> b!5864250 m!6780114))

(assert (=> b!5864250 m!6780114))

(declare-fun m!6780416 () Bool)

(assert (=> b!5864250 m!6780416))

(assert (=> b!5864250 m!6780118))

(assert (=> b!5864250 m!6780416))

(assert (=> b!5864250 m!6780118))

(declare-fun m!6780418 () Bool)

(assert (=> b!5864250 m!6780418))

(assert (=> b!5864240 m!6780114))

(assert (=> b!5864242 m!6780118))

(assert (=> b!5864242 m!6780118))

(assert (=> b!5864242 m!6780398))

(assert (=> bm!460188 m!6780110))

(assert (=> d!1841577 m!6780110))

(assert (=> d!1841577 m!6780090))

(declare-fun m!6780420 () Bool)

(assert (=> b!5864241 m!6780420))

(assert (=> b!5863617 d!1841577))

(declare-fun bs!1381591 () Bool)

(declare-fun b!5864253 () Bool)

(assert (= bs!1381591 (and b!5864253 b!5864045)))

(declare-fun lambda!320668 () Int)

(assert (=> bs!1381591 (= (and (= (reg!16260 r!7292) (reg!16260 (regTwo!32375 r!7292))) (= r!7292 (regTwo!32375 r!7292))) (= lambda!320668 lambda!320660))))

(declare-fun bs!1381592 () Bool)

(assert (= bs!1381592 (and b!5864253 b!5864048)))

(assert (=> bs!1381592 (not (= lambda!320668 lambda!320662))))

(declare-fun bs!1381593 () Bool)

(assert (= bs!1381593 (and b!5864253 b!5864228)))

(assert (=> bs!1381593 (= (and (= (reg!16260 r!7292) (reg!16260 (regOne!32375 r!7292))) (= r!7292 (regOne!32375 r!7292))) (= lambda!320668 lambda!320666))))

(declare-fun bs!1381594 () Bool)

(assert (= bs!1381594 (and b!5864253 b!5864231)))

(assert (=> bs!1381594 (not (= lambda!320668 lambda!320667))))

(assert (=> b!5864253 true))

(assert (=> b!5864253 true))

(declare-fun bs!1381595 () Bool)

(declare-fun b!5864256 () Bool)

(assert (= bs!1381595 (and b!5864256 b!5864228)))

(declare-fun lambda!320669 () Int)

(assert (=> bs!1381595 (not (= lambda!320669 lambda!320666))))

(declare-fun bs!1381596 () Bool)

(assert (= bs!1381596 (and b!5864256 b!5864231)))

(assert (=> bs!1381596 (= (and (= (regOne!32374 r!7292) (regOne!32374 (regOne!32375 r!7292))) (= (regTwo!32374 r!7292) (regTwo!32374 (regOne!32375 r!7292)))) (= lambda!320669 lambda!320667))))

(declare-fun bs!1381597 () Bool)

(assert (= bs!1381597 (and b!5864256 b!5864253)))

(assert (=> bs!1381597 (not (= lambda!320669 lambda!320668))))

(declare-fun bs!1381598 () Bool)

(assert (= bs!1381598 (and b!5864256 b!5864048)))

(assert (=> bs!1381598 (= (and (= (regOne!32374 r!7292) (regOne!32374 (regTwo!32375 r!7292))) (= (regTwo!32374 r!7292) (regTwo!32374 (regTwo!32375 r!7292)))) (= lambda!320669 lambda!320662))))

(declare-fun bs!1381599 () Bool)

(assert (= bs!1381599 (and b!5864256 b!5864045)))

(assert (=> bs!1381599 (not (= lambda!320669 lambda!320660))))

(assert (=> b!5864256 true))

(assert (=> b!5864256 true))

(declare-fun b!5864252 () Bool)

(declare-fun e!3595421 () Bool)

(declare-fun e!3595425 () Bool)

(assert (=> b!5864252 (= e!3595421 e!3595425)))

(declare-fun res!2467224 () Bool)

(assert (=> b!5864252 (= res!2467224 (not ((_ is EmptyLang!15931) r!7292)))))

(assert (=> b!5864252 (=> (not res!2467224) (not e!3595425))))

(declare-fun b!5864254 () Bool)

(declare-fun e!3595427 () Bool)

(declare-fun e!3595426 () Bool)

(assert (=> b!5864254 (= e!3595427 e!3595426)))

(declare-fun res!2467223 () Bool)

(assert (=> b!5864254 (= res!2467223 (matchRSpec!3032 (regOne!32375 r!7292) s!2326))))

(assert (=> b!5864254 (=> res!2467223 e!3595426)))

(declare-fun c!1040626 () Bool)

(declare-fun bm!460189 () Bool)

(declare-fun call!460194 () Bool)

(assert (=> bm!460189 (= call!460194 (Exists!3003 (ite c!1040626 lambda!320668 lambda!320669)))))

(declare-fun b!5864255 () Bool)

(declare-fun call!460195 () Bool)

(assert (=> b!5864255 (= e!3595421 call!460195)))

(declare-fun e!3595423 () Bool)

(assert (=> b!5864256 (= e!3595423 call!460194)))

(declare-fun b!5864257 () Bool)

(assert (=> b!5864257 (= e!3595426 (matchRSpec!3032 (regTwo!32375 r!7292) s!2326))))

(declare-fun b!5864258 () Bool)

(declare-fun e!3595424 () Bool)

(assert (=> b!5864258 (= e!3595424 (= s!2326 (Cons!63969 (c!1040443 r!7292) Nil!63969)))))

(declare-fun b!5864259 () Bool)

(assert (=> b!5864259 (= e!3595427 e!3595423)))

(assert (=> b!5864259 (= c!1040626 ((_ is Star!15931) r!7292))))

(declare-fun b!5864260 () Bool)

(declare-fun c!1040624 () Bool)

(assert (=> b!5864260 (= c!1040624 ((_ is ElementMatch!15931) r!7292))))

(assert (=> b!5864260 (= e!3595425 e!3595424)))

(declare-fun b!5864261 () Bool)

(declare-fun c!1040625 () Bool)

(assert (=> b!5864261 (= c!1040625 ((_ is Union!15931) r!7292))))

(assert (=> b!5864261 (= e!3595424 e!3595427)))

(declare-fun b!5864262 () Bool)

(declare-fun res!2467222 () Bool)

(declare-fun e!3595422 () Bool)

(assert (=> b!5864262 (=> res!2467222 e!3595422)))

(assert (=> b!5864262 (= res!2467222 call!460195)))

(assert (=> b!5864262 (= e!3595423 e!3595422)))

(declare-fun bm!460190 () Bool)

(assert (=> bm!460190 (= call!460195 (isEmpty!35829 s!2326))))

(declare-fun d!1841579 () Bool)

(declare-fun c!1040623 () Bool)

(assert (=> d!1841579 (= c!1040623 ((_ is EmptyExpr!15931) r!7292))))

(assert (=> d!1841579 (= (matchRSpec!3032 r!7292 s!2326) e!3595421)))

(assert (=> b!5864253 (= e!3595422 call!460194)))

(assert (= (and d!1841579 c!1040623) b!5864255))

(assert (= (and d!1841579 (not c!1040623)) b!5864252))

(assert (= (and b!5864252 res!2467224) b!5864260))

(assert (= (and b!5864260 c!1040624) b!5864258))

(assert (= (and b!5864260 (not c!1040624)) b!5864261))

(assert (= (and b!5864261 c!1040625) b!5864254))

(assert (= (and b!5864261 (not c!1040625)) b!5864259))

(assert (= (and b!5864254 (not res!2467223)) b!5864257))

(assert (= (and b!5864259 c!1040626) b!5864262))

(assert (= (and b!5864259 (not c!1040626)) b!5864256))

(assert (= (and b!5864262 (not res!2467222)) b!5864253))

(assert (= (or b!5864253 b!5864256) bm!460189))

(assert (= (or b!5864255 b!5864262) bm!460190))

(assert (=> b!5864254 m!6780078))

(declare-fun m!6780422 () Bool)

(assert (=> bm!460189 m!6780422))

(assert (=> b!5864257 m!6780072))

(assert (=> bm!460190 m!6780110))

(assert (=> b!5863626 d!1841579))

(declare-fun b!5864263 () Bool)

(declare-fun e!3595430 () Bool)

(declare-fun e!3595429 () Bool)

(assert (=> b!5864263 (= e!3595430 e!3595429)))

(declare-fun res!2467232 () Bool)

(assert (=> b!5864263 (=> res!2467232 e!3595429)))

(declare-fun call!460196 () Bool)

(assert (=> b!5864263 (= res!2467232 call!460196)))

(declare-fun b!5864264 () Bool)

(declare-fun res!2467229 () Bool)

(declare-fun e!3595434 () Bool)

(assert (=> b!5864264 (=> res!2467229 e!3595434)))

(assert (=> b!5864264 (= res!2467229 (not ((_ is ElementMatch!15931) r!7292)))))

(declare-fun e!3595431 () Bool)

(assert (=> b!5864264 (= e!3595431 e!3595434)))

(declare-fun b!5864265 () Bool)

(declare-fun e!3595433 () Bool)

(assert (=> b!5864265 (= e!3595433 (= (head!12416 s!2326) (c!1040443 r!7292)))))

(declare-fun b!5864266 () Bool)

(declare-fun e!3595432 () Bool)

(assert (=> b!5864266 (= e!3595432 (nullable!5931 r!7292))))

(declare-fun d!1841581 () Bool)

(declare-fun e!3595428 () Bool)

(assert (=> d!1841581 e!3595428))

(declare-fun c!1040627 () Bool)

(assert (=> d!1841581 (= c!1040627 ((_ is EmptyExpr!15931) r!7292))))

(declare-fun lt!2305926 () Bool)

(assert (=> d!1841581 (= lt!2305926 e!3595432)))

(declare-fun c!1040629 () Bool)

(assert (=> d!1841581 (= c!1040629 (isEmpty!35829 s!2326))))

(assert (=> d!1841581 (validRegex!7667 r!7292)))

(assert (=> d!1841581 (= (matchR!8114 r!7292 s!2326) lt!2305926)))

(declare-fun b!5864267 () Bool)

(declare-fun res!2467227 () Bool)

(assert (=> b!5864267 (=> res!2467227 e!3595429)))

(assert (=> b!5864267 (= res!2467227 (not (isEmpty!35829 (tail!11501 s!2326))))))

(declare-fun bm!460191 () Bool)

(assert (=> bm!460191 (= call!460196 (isEmpty!35829 s!2326))))

(declare-fun b!5864268 () Bool)

(declare-fun res!2467231 () Bool)

(assert (=> b!5864268 (=> res!2467231 e!3595434)))

(assert (=> b!5864268 (= res!2467231 e!3595433)))

(declare-fun res!2467225 () Bool)

(assert (=> b!5864268 (=> (not res!2467225) (not e!3595433))))

(assert (=> b!5864268 (= res!2467225 lt!2305926)))

(declare-fun b!5864269 () Bool)

(declare-fun res!2467226 () Bool)

(assert (=> b!5864269 (=> (not res!2467226) (not e!3595433))))

(assert (=> b!5864269 (= res!2467226 (isEmpty!35829 (tail!11501 s!2326)))))

(declare-fun b!5864270 () Bool)

(assert (=> b!5864270 (= e!3595431 (not lt!2305926))))

(declare-fun b!5864271 () Bool)

(assert (=> b!5864271 (= e!3595428 e!3595431)))

(declare-fun c!1040628 () Bool)

(assert (=> b!5864271 (= c!1040628 ((_ is EmptyLang!15931) r!7292))))

(declare-fun b!5864272 () Bool)

(assert (=> b!5864272 (= e!3595434 e!3595430)))

(declare-fun res!2467228 () Bool)

(assert (=> b!5864272 (=> (not res!2467228) (not e!3595430))))

(assert (=> b!5864272 (= res!2467228 (not lt!2305926))))

(declare-fun b!5864273 () Bool)

(assert (=> b!5864273 (= e!3595429 (not (= (head!12416 s!2326) (c!1040443 r!7292))))))

(declare-fun b!5864274 () Bool)

(declare-fun res!2467230 () Bool)

(assert (=> b!5864274 (=> (not res!2467230) (not e!3595433))))

(assert (=> b!5864274 (= res!2467230 (not call!460196))))

(declare-fun b!5864275 () Bool)

(assert (=> b!5864275 (= e!3595432 (matchR!8114 (derivativeStep!4669 r!7292 (head!12416 s!2326)) (tail!11501 s!2326)))))

(declare-fun b!5864276 () Bool)

(assert (=> b!5864276 (= e!3595428 (= lt!2305926 call!460196))))

(assert (= (and d!1841581 c!1040629) b!5864266))

(assert (= (and d!1841581 (not c!1040629)) b!5864275))

(assert (= (and d!1841581 c!1040627) b!5864276))

(assert (= (and d!1841581 (not c!1040627)) b!5864271))

(assert (= (and b!5864271 c!1040628) b!5864270))

(assert (= (and b!5864271 (not c!1040628)) b!5864264))

(assert (= (and b!5864264 (not res!2467229)) b!5864268))

(assert (= (and b!5864268 res!2467225) b!5864274))

(assert (= (and b!5864274 res!2467230) b!5864269))

(assert (= (and b!5864269 res!2467226) b!5864265))

(assert (= (and b!5864268 (not res!2467231)) b!5864272))

(assert (= (and b!5864272 res!2467228) b!5864263))

(assert (= (and b!5864263 (not res!2467232)) b!5864267))

(assert (= (and b!5864267 (not res!2467227)) b!5864273))

(assert (= (or b!5864276 b!5864263 b!5864274) bm!460191))

(assert (=> b!5864269 m!6780118))

(assert (=> b!5864269 m!6780118))

(assert (=> b!5864269 m!6780398))

(assert (=> b!5864273 m!6780114))

(assert (=> b!5864275 m!6780114))

(assert (=> b!5864275 m!6780114))

(declare-fun m!6780424 () Bool)

(assert (=> b!5864275 m!6780424))

(assert (=> b!5864275 m!6780118))

(assert (=> b!5864275 m!6780424))

(assert (=> b!5864275 m!6780118))

(declare-fun m!6780426 () Bool)

(assert (=> b!5864275 m!6780426))

(assert (=> b!5864265 m!6780114))

(assert (=> b!5864267 m!6780118))

(assert (=> b!5864267 m!6780118))

(assert (=> b!5864267 m!6780398))

(assert (=> bm!460191 m!6780110))

(assert (=> d!1841581 m!6780110))

(assert (=> d!1841581 m!6780070))

(declare-fun m!6780428 () Bool)

(assert (=> b!5864266 m!6780428))

(assert (=> b!5863626 d!1841581))

(declare-fun d!1841583 () Bool)

(assert (=> d!1841583 (= (matchR!8114 r!7292 s!2326) (matchRSpec!3032 r!7292 s!2326))))

(declare-fun lt!2305927 () Unit!157133)

(assert (=> d!1841583 (= lt!2305927 (choose!44455 r!7292 s!2326))))

(assert (=> d!1841583 (validRegex!7667 r!7292)))

(assert (=> d!1841583 (= (mainMatchTheorem!3032 r!7292 s!2326) lt!2305927)))

(declare-fun bs!1381600 () Bool)

(assert (= bs!1381600 d!1841583))

(assert (=> bs!1381600 m!6780054))

(assert (=> bs!1381600 m!6780052))

(declare-fun m!6780430 () Bool)

(assert (=> bs!1381600 m!6780430))

(assert (=> bs!1381600 m!6780070))

(assert (=> b!5863626 d!1841583))

(declare-fun bs!1381601 () Bool)

(declare-fun d!1841585 () Bool)

(assert (= bs!1381601 (and d!1841585 b!5863627)))

(declare-fun lambda!320672 () Int)

(assert (=> bs!1381601 (= lambda!320672 lambda!320630)))

(assert (=> d!1841585 true))

(assert (=> d!1841585 (= (derivationStepZipper!1930 z!1189 (h!70417 s!2326)) (flatMap!1462 z!1189 lambda!320672))))

(declare-fun bs!1381602 () Bool)

(assert (= bs!1381602 d!1841585))

(declare-fun m!6780432 () Bool)

(assert (=> bs!1381602 m!6780432))

(assert (=> b!5863627 d!1841585))

(declare-fun d!1841587 () Bool)

(assert (=> d!1841587 (= (flatMap!1462 z!1189 lambda!320630) (choose!44453 z!1189 lambda!320630))))

(declare-fun bs!1381603 () Bool)

(assert (= bs!1381603 d!1841587))

(declare-fun m!6780434 () Bool)

(assert (=> bs!1381603 m!6780434))

(assert (=> b!5863627 d!1841587))

(declare-fun call!460197 () (InoxSet Context!10630))

(declare-fun e!3595435 () (InoxSet Context!10630))

(declare-fun b!5864279 () Bool)

(assert (=> b!5864279 (= e!3595435 ((_ map or) call!460197 (derivationStepZipperUp!1123 (Context!10631 (t!377467 (exprs!5815 (h!70418 zl!343)))) (h!70417 s!2326))))))

(declare-fun b!5864280 () Bool)

(declare-fun e!3595436 () (InoxSet Context!10630))

(assert (=> b!5864280 (= e!3595435 e!3595436)))

(declare-fun c!1040633 () Bool)

(assert (=> b!5864280 (= c!1040633 ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343))))))

(declare-fun d!1841589 () Bool)

(declare-fun c!1040632 () Bool)

(declare-fun e!3595437 () Bool)

(assert (=> d!1841589 (= c!1040632 e!3595437)))

(declare-fun res!2467233 () Bool)

(assert (=> d!1841589 (=> (not res!2467233) (not e!3595437))))

(assert (=> d!1841589 (= res!2467233 ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343))))))

(assert (=> d!1841589 (= (derivationStepZipperUp!1123 (h!70418 zl!343) (h!70417 s!2326)) e!3595435)))

(declare-fun b!5864281 () Bool)

(assert (=> b!5864281 (= e!3595436 call!460197)))

(declare-fun b!5864282 () Bool)

(assert (=> b!5864282 (= e!3595437 (nullable!5931 (h!70416 (exprs!5815 (h!70418 zl!343)))))))

(declare-fun bm!460192 () Bool)

(assert (=> bm!460192 (= call!460197 (derivationStepZipperDown!1197 (h!70416 (exprs!5815 (h!70418 zl!343))) (Context!10631 (t!377467 (exprs!5815 (h!70418 zl!343)))) (h!70417 s!2326)))))

(declare-fun b!5864283 () Bool)

(assert (=> b!5864283 (= e!3595436 ((as const (Array Context!10630 Bool)) false))))

(assert (= (and d!1841589 res!2467233) b!5864282))

(assert (= (and d!1841589 c!1040632) b!5864279))

(assert (= (and d!1841589 (not c!1040632)) b!5864280))

(assert (= (and b!5864280 c!1040633) b!5864281))

(assert (= (and b!5864280 (not c!1040633)) b!5864283))

(assert (= (or b!5864279 b!5864281) bm!460192))

(declare-fun m!6780436 () Bool)

(assert (=> b!5864279 m!6780436))

(declare-fun m!6780438 () Bool)

(assert (=> b!5864282 m!6780438))

(declare-fun m!6780440 () Bool)

(assert (=> bm!460192 m!6780440))

(assert (=> b!5863627 d!1841589))

(declare-fun d!1841591 () Bool)

(assert (=> d!1841591 (= (flatMap!1462 z!1189 lambda!320630) (dynLambda!25016 lambda!320630 (h!70418 zl!343)))))

(declare-fun lt!2305928 () Unit!157133)

(assert (=> d!1841591 (= lt!2305928 (choose!44454 z!1189 (h!70418 zl!343) lambda!320630))))

(assert (=> d!1841591 (= z!1189 (store ((as const (Array Context!10630 Bool)) false) (h!70418 zl!343) true))))

(assert (=> d!1841591 (= (lemmaFlatMapOnSingletonSet!990 z!1189 (h!70418 zl!343) lambda!320630) lt!2305928)))

(declare-fun b_lambda!220765 () Bool)

(assert (=> (not b_lambda!220765) (not d!1841591)))

(declare-fun bs!1381604 () Bool)

(assert (= bs!1381604 d!1841591))

(assert (=> bs!1381604 m!6780064))

(declare-fun m!6780442 () Bool)

(assert (=> bs!1381604 m!6780442))

(declare-fun m!6780444 () Bool)

(assert (=> bs!1381604 m!6780444))

(declare-fun m!6780446 () Bool)

(assert (=> bs!1381604 m!6780446))

(assert (=> b!5863627 d!1841591))

(declare-fun bs!1381605 () Bool)

(declare-fun d!1841593 () Bool)

(assert (= bs!1381605 (and d!1841593 d!1841485)))

(declare-fun lambda!320675 () Int)

(assert (=> bs!1381605 (= lambda!320675 lambda!320639)))

(declare-fun b!5864304 () Bool)

(declare-fun e!3595454 () Bool)

(declare-fun isEmpty!35830 (List!64092) Bool)

(assert (=> b!5864304 (= e!3595454 (isEmpty!35830 (t!377467 (exprs!5815 (h!70418 zl!343)))))))

(declare-fun b!5864305 () Bool)

(declare-fun e!3595453 () Regex!15931)

(assert (=> b!5864305 (= e!3595453 (Concat!24776 (h!70416 (exprs!5815 (h!70418 zl!343))) (generalisedConcat!1528 (t!377467 (exprs!5815 (h!70418 zl!343))))))))

(declare-fun b!5864307 () Bool)

(declare-fun e!3595451 () Bool)

(declare-fun lt!2305931 () Regex!15931)

(declare-fun isEmptyExpr!1366 (Regex!15931) Bool)

(assert (=> b!5864307 (= e!3595451 (isEmptyExpr!1366 lt!2305931))))

(declare-fun b!5864308 () Bool)

(declare-fun e!3595455 () Bool)

(declare-fun head!12417 (List!64092) Regex!15931)

(assert (=> b!5864308 (= e!3595455 (= lt!2305931 (head!12417 (exprs!5815 (h!70418 zl!343)))))))

(declare-fun b!5864309 () Bool)

(declare-fun e!3595452 () Regex!15931)

(assert (=> b!5864309 (= e!3595452 (h!70416 (exprs!5815 (h!70418 zl!343))))))

(declare-fun b!5864310 () Bool)

(assert (=> b!5864310 (= e!3595453 EmptyExpr!15931)))

(declare-fun b!5864311 () Bool)

(assert (=> b!5864311 (= e!3595452 e!3595453)))

(declare-fun c!1040645 () Bool)

(assert (=> b!5864311 (= c!1040645 ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343))))))

(declare-fun b!5864312 () Bool)

(assert (=> b!5864312 (= e!3595451 e!3595455)))

(declare-fun c!1040644 () Bool)

(declare-fun tail!11502 (List!64092) List!64092)

(assert (=> b!5864312 (= c!1040644 (isEmpty!35830 (tail!11502 (exprs!5815 (h!70418 zl!343)))))))

(declare-fun b!5864313 () Bool)

(declare-fun e!3595450 () Bool)

(assert (=> b!5864313 (= e!3595450 e!3595451)))

(declare-fun c!1040642 () Bool)

(assert (=> b!5864313 (= c!1040642 (isEmpty!35830 (exprs!5815 (h!70418 zl!343))))))

(assert (=> d!1841593 e!3595450))

(declare-fun res!2467238 () Bool)

(assert (=> d!1841593 (=> (not res!2467238) (not e!3595450))))

(assert (=> d!1841593 (= res!2467238 (validRegex!7667 lt!2305931))))

(assert (=> d!1841593 (= lt!2305931 e!3595452)))

(declare-fun c!1040643 () Bool)

(assert (=> d!1841593 (= c!1040643 e!3595454)))

(declare-fun res!2467239 () Bool)

(assert (=> d!1841593 (=> (not res!2467239) (not e!3595454))))

(assert (=> d!1841593 (= res!2467239 ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343))))))

(assert (=> d!1841593 (forall!15018 (exprs!5815 (h!70418 zl!343)) lambda!320675)))

(assert (=> d!1841593 (= (generalisedConcat!1528 (exprs!5815 (h!70418 zl!343))) lt!2305931)))

(declare-fun b!5864306 () Bool)

(declare-fun isConcat!889 (Regex!15931) Bool)

(assert (=> b!5864306 (= e!3595455 (isConcat!889 lt!2305931))))

(assert (= (and d!1841593 res!2467239) b!5864304))

(assert (= (and d!1841593 c!1040643) b!5864309))

(assert (= (and d!1841593 (not c!1040643)) b!5864311))

(assert (= (and b!5864311 c!1040645) b!5864305))

(assert (= (and b!5864311 (not c!1040645)) b!5864310))

(assert (= (and d!1841593 res!2467238) b!5864313))

(assert (= (and b!5864313 c!1040642) b!5864307))

(assert (= (and b!5864313 (not c!1040642)) b!5864312))

(assert (= (and b!5864312 c!1040644) b!5864308))

(assert (= (and b!5864312 (not c!1040644)) b!5864306))

(declare-fun m!6780448 () Bool)

(assert (=> b!5864313 m!6780448))

(declare-fun m!6780450 () Bool)

(assert (=> d!1841593 m!6780450))

(declare-fun m!6780452 () Bool)

(assert (=> d!1841593 m!6780452))

(declare-fun m!6780454 () Bool)

(assert (=> b!5864307 m!6780454))

(declare-fun m!6780456 () Bool)

(assert (=> b!5864312 m!6780456))

(assert (=> b!5864312 m!6780456))

(declare-fun m!6780458 () Bool)

(assert (=> b!5864312 m!6780458))

(declare-fun m!6780460 () Bool)

(assert (=> b!5864305 m!6780460))

(declare-fun m!6780462 () Bool)

(assert (=> b!5864308 m!6780462))

(declare-fun m!6780464 () Bool)

(assert (=> b!5864306 m!6780464))

(declare-fun m!6780466 () Bool)

(assert (=> b!5864304 m!6780466))

(assert (=> b!5863638 d!1841593))

(declare-fun d!1841595 () Bool)

(declare-fun c!1040646 () Bool)

(assert (=> d!1841595 (= c!1040646 (isEmpty!35829 (t!377468 s!2326)))))

(declare-fun e!3595456 () Bool)

(assert (=> d!1841595 (= (matchZipper!1997 lt!2305876 (t!377468 s!2326)) e!3595456)))

(declare-fun b!5864314 () Bool)

(assert (=> b!5864314 (= e!3595456 (nullableZipper!1770 lt!2305876))))

(declare-fun b!5864315 () Bool)

(assert (=> b!5864315 (= e!3595456 (matchZipper!1997 (derivationStepZipper!1930 lt!2305876 (head!12416 (t!377468 s!2326))) (tail!11501 (t!377468 s!2326))))))

(assert (= (and d!1841595 c!1040646) b!5864314))

(assert (= (and d!1841595 (not c!1040646)) b!5864315))

(declare-fun m!6780468 () Bool)

(assert (=> d!1841595 m!6780468))

(declare-fun m!6780470 () Bool)

(assert (=> b!5864314 m!6780470))

(declare-fun m!6780472 () Bool)

(assert (=> b!5864315 m!6780472))

(assert (=> b!5864315 m!6780472))

(declare-fun m!6780474 () Bool)

(assert (=> b!5864315 m!6780474))

(declare-fun m!6780476 () Bool)

(assert (=> b!5864315 m!6780476))

(assert (=> b!5864315 m!6780474))

(assert (=> b!5864315 m!6780476))

(declare-fun m!6780478 () Bool)

(assert (=> b!5864315 m!6780478))

(assert (=> b!5863619 d!1841595))

(declare-fun e!3595459 () Bool)

(declare-fun d!1841597 () Bool)

(assert (=> d!1841597 (= (matchZipper!1997 ((_ map or) lt!2305876 lt!2305870) (t!377468 s!2326)) e!3595459)))

(declare-fun res!2467242 () Bool)

(assert (=> d!1841597 (=> res!2467242 e!3595459)))

(assert (=> d!1841597 (= res!2467242 (matchZipper!1997 lt!2305876 (t!377468 s!2326)))))

(declare-fun lt!2305934 () Unit!157133)

(declare-fun choose!44456 ((InoxSet Context!10630) (InoxSet Context!10630) List!64093) Unit!157133)

(assert (=> d!1841597 (= lt!2305934 (choose!44456 lt!2305876 lt!2305870 (t!377468 s!2326)))))

(assert (=> d!1841597 (= (lemmaZipperConcatMatchesSameAsBothZippers!832 lt!2305876 lt!2305870 (t!377468 s!2326)) lt!2305934)))

(declare-fun b!5864318 () Bool)

(assert (=> b!5864318 (= e!3595459 (matchZipper!1997 lt!2305870 (t!377468 s!2326)))))

(assert (= (and d!1841597 (not res!2467242)) b!5864318))

(declare-fun m!6780480 () Bool)

(assert (=> d!1841597 m!6780480))

(assert (=> d!1841597 m!6780032))

(declare-fun m!6780482 () Bool)

(assert (=> d!1841597 m!6780482))

(assert (=> b!5864318 m!6780044))

(assert (=> b!5863619 d!1841597))

(declare-fun d!1841599 () Bool)

(declare-fun lt!2305937 () Regex!15931)

(assert (=> d!1841599 (validRegex!7667 lt!2305937)))

(assert (=> d!1841599 (= lt!2305937 (generalisedUnion!1775 (unfocusZipperList!1352 zl!343)))))

(assert (=> d!1841599 (= (unfocusZipper!1673 zl!343) lt!2305937)))

(declare-fun bs!1381606 () Bool)

(assert (= bs!1381606 d!1841599))

(declare-fun m!6780484 () Bool)

(assert (=> bs!1381606 m!6780484))

(assert (=> bs!1381606 m!6780040))

(assert (=> bs!1381606 m!6780040))

(assert (=> bs!1381606 m!6780042))

(assert (=> b!5863628 d!1841599))

(declare-fun d!1841601 () Bool)

(declare-fun c!1040647 () Bool)

(assert (=> d!1841601 (= c!1040647 (isEmpty!35829 (t!377468 s!2326)))))

(declare-fun e!3595460 () Bool)

(assert (=> d!1841601 (= (matchZipper!1997 lt!2305870 (t!377468 s!2326)) e!3595460)))

(declare-fun b!5864319 () Bool)

(assert (=> b!5864319 (= e!3595460 (nullableZipper!1770 lt!2305870))))

(declare-fun b!5864320 () Bool)

(assert (=> b!5864320 (= e!3595460 (matchZipper!1997 (derivationStepZipper!1930 lt!2305870 (head!12416 (t!377468 s!2326))) (tail!11501 (t!377468 s!2326))))))

(assert (= (and d!1841601 c!1040647) b!5864319))

(assert (= (and d!1841601 (not c!1040647)) b!5864320))

(assert (=> d!1841601 m!6780468))

(declare-fun m!6780486 () Bool)

(assert (=> b!5864319 m!6780486))

(assert (=> b!5864320 m!6780472))

(assert (=> b!5864320 m!6780472))

(declare-fun m!6780488 () Bool)

(assert (=> b!5864320 m!6780488))

(assert (=> b!5864320 m!6780476))

(assert (=> b!5864320 m!6780488))

(assert (=> b!5864320 m!6780476))

(declare-fun m!6780490 () Bool)

(assert (=> b!5864320 m!6780490))

(assert (=> b!5863620 d!1841601))

(declare-fun d!1841603 () Bool)

(declare-fun c!1040648 () Bool)

(assert (=> d!1841603 (= c!1040648 (isEmpty!35829 s!2326))))

(declare-fun e!3595461 () Bool)

(assert (=> d!1841603 (= (matchZipper!1997 lt!2305875 s!2326) e!3595461)))

(declare-fun b!5864321 () Bool)

(assert (=> b!5864321 (= e!3595461 (nullableZipper!1770 lt!2305875))))

(declare-fun b!5864322 () Bool)

(assert (=> b!5864322 (= e!3595461 (matchZipper!1997 (derivationStepZipper!1930 lt!2305875 (head!12416 s!2326)) (tail!11501 s!2326)))))

(assert (= (and d!1841603 c!1040648) b!5864321))

(assert (= (and d!1841603 (not c!1040648)) b!5864322))

(assert (=> d!1841603 m!6780110))

(declare-fun m!6780492 () Bool)

(assert (=> b!5864321 m!6780492))

(assert (=> b!5864322 m!6780114))

(assert (=> b!5864322 m!6780114))

(declare-fun m!6780494 () Bool)

(assert (=> b!5864322 m!6780494))

(assert (=> b!5864322 m!6780118))

(assert (=> b!5864322 m!6780494))

(assert (=> b!5864322 m!6780118))

(declare-fun m!6780496 () Bool)

(assert (=> b!5864322 m!6780496))

(assert (=> b!5863620 d!1841603))

(declare-fun d!1841605 () Bool)

(declare-fun c!1040649 () Bool)

(assert (=> d!1841605 (= c!1040649 (isEmpty!35829 s!2326))))

(declare-fun e!3595462 () Bool)

(assert (=> d!1841605 (= (matchZipper!1997 z!1189 s!2326) e!3595462)))

(declare-fun b!5864323 () Bool)

(assert (=> b!5864323 (= e!3595462 (nullableZipper!1770 z!1189))))

(declare-fun b!5864324 () Bool)

(assert (=> b!5864324 (= e!3595462 (matchZipper!1997 (derivationStepZipper!1930 z!1189 (head!12416 s!2326)) (tail!11501 s!2326)))))

(assert (= (and d!1841605 c!1040649) b!5864323))

(assert (= (and d!1841605 (not c!1040649)) b!5864324))

(assert (=> d!1841605 m!6780110))

(declare-fun m!6780498 () Bool)

(assert (=> b!5864323 m!6780498))

(assert (=> b!5864324 m!6780114))

(assert (=> b!5864324 m!6780114))

(declare-fun m!6780500 () Bool)

(assert (=> b!5864324 m!6780500))

(assert (=> b!5864324 m!6780118))

(assert (=> b!5864324 m!6780500))

(assert (=> b!5864324 m!6780118))

(declare-fun m!6780502 () Bool)

(assert (=> b!5864324 m!6780502))

(assert (=> b!5863629 d!1841605))

(declare-fun d!1841607 () Bool)

(declare-fun c!1040650 () Bool)

(assert (=> d!1841607 (= c!1040650 (isEmpty!35829 (t!377468 s!2326)))))

(declare-fun e!3595463 () Bool)

(assert (=> d!1841607 (= (matchZipper!1997 lt!2305859 (t!377468 s!2326)) e!3595463)))

(declare-fun b!5864325 () Bool)

(assert (=> b!5864325 (= e!3595463 (nullableZipper!1770 lt!2305859))))

(declare-fun b!5864326 () Bool)

(assert (=> b!5864326 (= e!3595463 (matchZipper!1997 (derivationStepZipper!1930 lt!2305859 (head!12416 (t!377468 s!2326))) (tail!11501 (t!377468 s!2326))))))

(assert (= (and d!1841607 c!1040650) b!5864325))

(assert (= (and d!1841607 (not c!1040650)) b!5864326))

(assert (=> d!1841607 m!6780468))

(declare-fun m!6780504 () Bool)

(assert (=> b!5864325 m!6780504))

(assert (=> b!5864326 m!6780472))

(assert (=> b!5864326 m!6780472))

(declare-fun m!6780506 () Bool)

(assert (=> b!5864326 m!6780506))

(assert (=> b!5864326 m!6780476))

(assert (=> b!5864326 m!6780506))

(assert (=> b!5864326 m!6780476))

(declare-fun m!6780508 () Bool)

(assert (=> b!5864326 m!6780508))

(assert (=> b!5863629 d!1841607))

(declare-fun bs!1381607 () Bool)

(declare-fun d!1841609 () Bool)

(assert (= bs!1381607 (and d!1841609 d!1841485)))

(declare-fun lambda!320678 () Int)

(assert (=> bs!1381607 (= lambda!320678 lambda!320639)))

(declare-fun bs!1381608 () Bool)

(assert (= bs!1381608 (and d!1841609 d!1841593)))

(assert (=> bs!1381608 (= lambda!320678 lambda!320675)))

(declare-fun b!5864347 () Bool)

(declare-fun e!3595477 () Bool)

(assert (=> b!5864347 (= e!3595477 (isEmpty!35830 (t!377467 (unfocusZipperList!1352 zl!343))))))

(declare-fun b!5864348 () Bool)

(declare-fun e!3595481 () Bool)

(declare-fun e!3595476 () Bool)

(assert (=> b!5864348 (= e!3595481 e!3595476)))

(declare-fun c!1040661 () Bool)

(assert (=> b!5864348 (= c!1040661 (isEmpty!35830 (tail!11502 (unfocusZipperList!1352 zl!343))))))

(declare-fun b!5864349 () Bool)

(declare-fun e!3595479 () Regex!15931)

(assert (=> b!5864349 (= e!3595479 EmptyLang!15931)))

(declare-fun e!3595480 () Bool)

(assert (=> d!1841609 e!3595480))

(declare-fun res!2467247 () Bool)

(assert (=> d!1841609 (=> (not res!2467247) (not e!3595480))))

(declare-fun lt!2305940 () Regex!15931)

(assert (=> d!1841609 (= res!2467247 (validRegex!7667 lt!2305940))))

(declare-fun e!3595478 () Regex!15931)

(assert (=> d!1841609 (= lt!2305940 e!3595478)))

(declare-fun c!1040659 () Bool)

(assert (=> d!1841609 (= c!1040659 e!3595477)))

(declare-fun res!2467248 () Bool)

(assert (=> d!1841609 (=> (not res!2467248) (not e!3595477))))

(assert (=> d!1841609 (= res!2467248 ((_ is Cons!63968) (unfocusZipperList!1352 zl!343)))))

(assert (=> d!1841609 (forall!15018 (unfocusZipperList!1352 zl!343) lambda!320678)))

(assert (=> d!1841609 (= (generalisedUnion!1775 (unfocusZipperList!1352 zl!343)) lt!2305940)))

(declare-fun b!5864350 () Bool)

(assert (=> b!5864350 (= e!3595479 (Union!15931 (h!70416 (unfocusZipperList!1352 zl!343)) (generalisedUnion!1775 (t!377467 (unfocusZipperList!1352 zl!343)))))))

(declare-fun b!5864351 () Bool)

(declare-fun isUnion!804 (Regex!15931) Bool)

(assert (=> b!5864351 (= e!3595476 (isUnion!804 lt!2305940))))

(declare-fun b!5864352 () Bool)

(assert (=> b!5864352 (= e!3595478 e!3595479)))

(declare-fun c!1040660 () Bool)

(assert (=> b!5864352 (= c!1040660 ((_ is Cons!63968) (unfocusZipperList!1352 zl!343)))))

(declare-fun b!5864353 () Bool)

(declare-fun isEmptyLang!1374 (Regex!15931) Bool)

(assert (=> b!5864353 (= e!3595481 (isEmptyLang!1374 lt!2305940))))

(declare-fun b!5864354 () Bool)

(assert (=> b!5864354 (= e!3595478 (h!70416 (unfocusZipperList!1352 zl!343)))))

(declare-fun b!5864355 () Bool)

(assert (=> b!5864355 (= e!3595476 (= lt!2305940 (head!12417 (unfocusZipperList!1352 zl!343))))))

(declare-fun b!5864356 () Bool)

(assert (=> b!5864356 (= e!3595480 e!3595481)))

(declare-fun c!1040662 () Bool)

(assert (=> b!5864356 (= c!1040662 (isEmpty!35830 (unfocusZipperList!1352 zl!343)))))

(assert (= (and d!1841609 res!2467248) b!5864347))

(assert (= (and d!1841609 c!1040659) b!5864354))

(assert (= (and d!1841609 (not c!1040659)) b!5864352))

(assert (= (and b!5864352 c!1040660) b!5864350))

(assert (= (and b!5864352 (not c!1040660)) b!5864349))

(assert (= (and d!1841609 res!2467247) b!5864356))

(assert (= (and b!5864356 c!1040662) b!5864353))

(assert (= (and b!5864356 (not c!1040662)) b!5864348))

(assert (= (and b!5864348 c!1040661) b!5864355))

(assert (= (and b!5864348 (not c!1040661)) b!5864351))

(declare-fun m!6780510 () Bool)

(assert (=> d!1841609 m!6780510))

(assert (=> d!1841609 m!6780040))

(declare-fun m!6780512 () Bool)

(assert (=> d!1841609 m!6780512))

(declare-fun m!6780514 () Bool)

(assert (=> b!5864347 m!6780514))

(declare-fun m!6780516 () Bool)

(assert (=> b!5864351 m!6780516))

(assert (=> b!5864356 m!6780040))

(declare-fun m!6780518 () Bool)

(assert (=> b!5864356 m!6780518))

(declare-fun m!6780520 () Bool)

(assert (=> b!5864353 m!6780520))

(declare-fun m!6780522 () Bool)

(assert (=> b!5864350 m!6780522))

(assert (=> b!5864348 m!6780040))

(declare-fun m!6780524 () Bool)

(assert (=> b!5864348 m!6780524))

(assert (=> b!5864348 m!6780524))

(declare-fun m!6780526 () Bool)

(assert (=> b!5864348 m!6780526))

(assert (=> b!5864355 m!6780040))

(declare-fun m!6780528 () Bool)

(assert (=> b!5864355 m!6780528))

(assert (=> b!5863640 d!1841609))

(declare-fun bs!1381609 () Bool)

(declare-fun d!1841611 () Bool)

(assert (= bs!1381609 (and d!1841611 d!1841485)))

(declare-fun lambda!320681 () Int)

(assert (=> bs!1381609 (= lambda!320681 lambda!320639)))

(declare-fun bs!1381610 () Bool)

(assert (= bs!1381610 (and d!1841611 d!1841593)))

(assert (=> bs!1381610 (= lambda!320681 lambda!320675)))

(declare-fun bs!1381611 () Bool)

(assert (= bs!1381611 (and d!1841611 d!1841609)))

(assert (=> bs!1381611 (= lambda!320681 lambda!320678)))

(declare-fun lt!2305943 () List!64092)

(assert (=> d!1841611 (forall!15018 lt!2305943 lambda!320681)))

(declare-fun e!3595484 () List!64092)

(assert (=> d!1841611 (= lt!2305943 e!3595484)))

(declare-fun c!1040665 () Bool)

(assert (=> d!1841611 (= c!1040665 ((_ is Cons!63970) zl!343))))

(assert (=> d!1841611 (= (unfocusZipperList!1352 zl!343) lt!2305943)))

(declare-fun b!5864361 () Bool)

(assert (=> b!5864361 (= e!3595484 (Cons!63968 (generalisedConcat!1528 (exprs!5815 (h!70418 zl!343))) (unfocusZipperList!1352 (t!377469 zl!343))))))

(declare-fun b!5864362 () Bool)

(assert (=> b!5864362 (= e!3595484 Nil!63968)))

(assert (= (and d!1841611 c!1040665) b!5864361))

(assert (= (and d!1841611 (not c!1040665)) b!5864362))

(declare-fun m!6780530 () Bool)

(assert (=> d!1841611 m!6780530))

(assert (=> b!5864361 m!6780026))

(declare-fun m!6780532 () Bool)

(assert (=> b!5864361 m!6780532))

(assert (=> b!5863640 d!1841611))

(declare-fun bm!460193 () Bool)

(declare-fun call!460200 () (InoxSet Context!10630))

(declare-fun call!460199 () (InoxSet Context!10630))

(assert (=> bm!460193 (= call!460200 call!460199)))

(declare-fun b!5864363 () Bool)

(declare-fun e!3595487 () (InoxSet Context!10630))

(assert (=> b!5864363 (= e!3595487 call!460200)))

(declare-fun b!5864364 () Bool)

(declare-fun e!3595490 () (InoxSet Context!10630))

(assert (=> b!5864364 (= e!3595490 ((as const (Array Context!10630 Bool)) false))))

(declare-fun call!460203 () (InoxSet Context!10630))

(declare-fun c!1040666 () Bool)

(declare-fun c!1040667 () Bool)

(declare-fun call!460201 () List!64092)

(declare-fun c!1040669 () Bool)

(declare-fun bm!460194 () Bool)

(assert (=> bm!460194 (= call!460203 (derivationStepZipperDown!1197 (ite c!1040669 (regOne!32375 (regTwo!32375 r!7292)) (ite c!1040666 (regTwo!32374 (regTwo!32375 r!7292)) (ite c!1040667 (regOne!32374 (regTwo!32375 r!7292)) (reg!16260 (regTwo!32375 r!7292))))) (ite (or c!1040669 c!1040666) lt!2305860 (Context!10631 call!460201)) (h!70417 s!2326)))))

(declare-fun b!5864365 () Bool)

(declare-fun e!3595489 () (InoxSet Context!10630))

(assert (=> b!5864365 (= e!3595489 (store ((as const (Array Context!10630 Bool)) false) lt!2305860 true))))

(declare-fun b!5864366 () Bool)

(declare-fun e!3595488 () Bool)

(assert (=> b!5864366 (= c!1040666 e!3595488)))

(declare-fun res!2467249 () Bool)

(assert (=> b!5864366 (=> (not res!2467249) (not e!3595488))))

(assert (=> b!5864366 (= res!2467249 ((_ is Concat!24776) (regTwo!32375 r!7292)))))

(declare-fun e!3595485 () (InoxSet Context!10630))

(declare-fun e!3595486 () (InoxSet Context!10630))

(assert (=> b!5864366 (= e!3595485 e!3595486)))

(declare-fun d!1841613 () Bool)

(declare-fun c!1040668 () Bool)

(assert (=> d!1841613 (= c!1040668 (and ((_ is ElementMatch!15931) (regTwo!32375 r!7292)) (= (c!1040443 (regTwo!32375 r!7292)) (h!70417 s!2326))))))

(assert (=> d!1841613 (= (derivationStepZipperDown!1197 (regTwo!32375 r!7292) lt!2305860 (h!70417 s!2326)) e!3595489)))

(declare-fun b!5864367 () Bool)

(declare-fun call!460198 () (InoxSet Context!10630))

(assert (=> b!5864367 (= e!3595485 ((_ map or) call!460203 call!460198))))

(declare-fun bm!460195 () Bool)

(declare-fun call!460202 () List!64092)

(assert (=> bm!460195 (= call!460201 call!460202)))

(declare-fun bm!460196 () Bool)

(assert (=> bm!460196 (= call!460199 call!460203)))

(declare-fun b!5864368 () Bool)

(assert (=> b!5864368 (= e!3595490 call!460200)))

(declare-fun b!5864369 () Bool)

(assert (=> b!5864369 (= e!3595486 e!3595487)))

(assert (=> b!5864369 (= c!1040667 ((_ is Concat!24776) (regTwo!32375 r!7292)))))

(declare-fun bm!460197 () Bool)

(assert (=> bm!460197 (= call!460198 (derivationStepZipperDown!1197 (ite c!1040669 (regTwo!32375 (regTwo!32375 r!7292)) (regOne!32374 (regTwo!32375 r!7292))) (ite c!1040669 lt!2305860 (Context!10631 call!460202)) (h!70417 s!2326)))))

(declare-fun b!5864370 () Bool)

(assert (=> b!5864370 (= e!3595488 (nullable!5931 (regOne!32374 (regTwo!32375 r!7292))))))

(declare-fun bm!460198 () Bool)

(assert (=> bm!460198 (= call!460202 ($colon$colon!1836 (exprs!5815 lt!2305860) (ite (or c!1040666 c!1040667) (regTwo!32374 (regTwo!32375 r!7292)) (regTwo!32375 r!7292))))))

(declare-fun b!5864371 () Bool)

(declare-fun c!1040670 () Bool)

(assert (=> b!5864371 (= c!1040670 ((_ is Star!15931) (regTwo!32375 r!7292)))))

(assert (=> b!5864371 (= e!3595487 e!3595490)))

(declare-fun b!5864372 () Bool)

(assert (=> b!5864372 (= e!3595489 e!3595485)))

(assert (=> b!5864372 (= c!1040669 ((_ is Union!15931) (regTwo!32375 r!7292)))))

(declare-fun b!5864373 () Bool)

(assert (=> b!5864373 (= e!3595486 ((_ map or) call!460198 call!460199))))

(assert (= (and d!1841613 c!1040668) b!5864365))

(assert (= (and d!1841613 (not c!1040668)) b!5864372))

(assert (= (and b!5864372 c!1040669) b!5864367))

(assert (= (and b!5864372 (not c!1040669)) b!5864366))

(assert (= (and b!5864366 res!2467249) b!5864370))

(assert (= (and b!5864366 c!1040666) b!5864373))

(assert (= (and b!5864366 (not c!1040666)) b!5864369))

(assert (= (and b!5864369 c!1040667) b!5864363))

(assert (= (and b!5864369 (not c!1040667)) b!5864371))

(assert (= (and b!5864371 c!1040670) b!5864368))

(assert (= (and b!5864371 (not c!1040670)) b!5864364))

(assert (= (or b!5864363 b!5864368) bm!460195))

(assert (= (or b!5864363 b!5864368) bm!460193))

(assert (= (or b!5864373 bm!460195) bm!460198))

(assert (= (or b!5864373 bm!460193) bm!460196))

(assert (= (or b!5864367 b!5864373) bm!460197))

(assert (= (or b!5864367 bm!460196) bm!460194))

(declare-fun m!6780534 () Bool)

(assert (=> bm!460194 m!6780534))

(declare-fun m!6780536 () Bool)

(assert (=> b!5864370 m!6780536))

(declare-fun m!6780538 () Bool)

(assert (=> bm!460197 m!6780538))

(assert (=> b!5864365 m!6780152))

(declare-fun m!6780540 () Bool)

(assert (=> bm!460198 m!6780540))

(assert (=> b!5863621 d!1841613))

(declare-fun bm!460199 () Bool)

(declare-fun call!460206 () (InoxSet Context!10630))

(declare-fun call!460205 () (InoxSet Context!10630))

(assert (=> bm!460199 (= call!460206 call!460205)))

(declare-fun b!5864374 () Bool)

(declare-fun e!3595493 () (InoxSet Context!10630))

(assert (=> b!5864374 (= e!3595493 call!460206)))

(declare-fun b!5864375 () Bool)

(declare-fun e!3595496 () (InoxSet Context!10630))

(assert (=> b!5864375 (= e!3595496 ((as const (Array Context!10630 Bool)) false))))

(declare-fun c!1040674 () Bool)

(declare-fun c!1040672 () Bool)

(declare-fun bm!460200 () Bool)

(declare-fun call!460209 () (InoxSet Context!10630))

(declare-fun call!460207 () List!64092)

(declare-fun c!1040671 () Bool)

(assert (=> bm!460200 (= call!460209 (derivationStepZipperDown!1197 (ite c!1040674 (regOne!32375 (regOne!32375 r!7292)) (ite c!1040671 (regTwo!32374 (regOne!32375 r!7292)) (ite c!1040672 (regOne!32374 (regOne!32375 r!7292)) (reg!16260 (regOne!32375 r!7292))))) (ite (or c!1040674 c!1040671) lt!2305860 (Context!10631 call!460207)) (h!70417 s!2326)))))

(declare-fun b!5864376 () Bool)

(declare-fun e!3595495 () (InoxSet Context!10630))

(assert (=> b!5864376 (= e!3595495 (store ((as const (Array Context!10630 Bool)) false) lt!2305860 true))))

(declare-fun b!5864377 () Bool)

(declare-fun e!3595494 () Bool)

(assert (=> b!5864377 (= c!1040671 e!3595494)))

(declare-fun res!2467250 () Bool)

(assert (=> b!5864377 (=> (not res!2467250) (not e!3595494))))

(assert (=> b!5864377 (= res!2467250 ((_ is Concat!24776) (regOne!32375 r!7292)))))

(declare-fun e!3595491 () (InoxSet Context!10630))

(declare-fun e!3595492 () (InoxSet Context!10630))

(assert (=> b!5864377 (= e!3595491 e!3595492)))

(declare-fun d!1841615 () Bool)

(declare-fun c!1040673 () Bool)

(assert (=> d!1841615 (= c!1040673 (and ((_ is ElementMatch!15931) (regOne!32375 r!7292)) (= (c!1040443 (regOne!32375 r!7292)) (h!70417 s!2326))))))

(assert (=> d!1841615 (= (derivationStepZipperDown!1197 (regOne!32375 r!7292) lt!2305860 (h!70417 s!2326)) e!3595495)))

(declare-fun b!5864378 () Bool)

(declare-fun call!460204 () (InoxSet Context!10630))

(assert (=> b!5864378 (= e!3595491 ((_ map or) call!460209 call!460204))))

(declare-fun bm!460201 () Bool)

(declare-fun call!460208 () List!64092)

(assert (=> bm!460201 (= call!460207 call!460208)))

(declare-fun bm!460202 () Bool)

(assert (=> bm!460202 (= call!460205 call!460209)))

(declare-fun b!5864379 () Bool)

(assert (=> b!5864379 (= e!3595496 call!460206)))

(declare-fun b!5864380 () Bool)

(assert (=> b!5864380 (= e!3595492 e!3595493)))

(assert (=> b!5864380 (= c!1040672 ((_ is Concat!24776) (regOne!32375 r!7292)))))

(declare-fun bm!460203 () Bool)

(assert (=> bm!460203 (= call!460204 (derivationStepZipperDown!1197 (ite c!1040674 (regTwo!32375 (regOne!32375 r!7292)) (regOne!32374 (regOne!32375 r!7292))) (ite c!1040674 lt!2305860 (Context!10631 call!460208)) (h!70417 s!2326)))))

(declare-fun b!5864381 () Bool)

(assert (=> b!5864381 (= e!3595494 (nullable!5931 (regOne!32374 (regOne!32375 r!7292))))))

(declare-fun bm!460204 () Bool)

(assert (=> bm!460204 (= call!460208 ($colon$colon!1836 (exprs!5815 lt!2305860) (ite (or c!1040671 c!1040672) (regTwo!32374 (regOne!32375 r!7292)) (regOne!32375 r!7292))))))

(declare-fun b!5864382 () Bool)

(declare-fun c!1040675 () Bool)

(assert (=> b!5864382 (= c!1040675 ((_ is Star!15931) (regOne!32375 r!7292)))))

(assert (=> b!5864382 (= e!3595493 e!3595496)))

(declare-fun b!5864383 () Bool)

(assert (=> b!5864383 (= e!3595495 e!3595491)))

(assert (=> b!5864383 (= c!1040674 ((_ is Union!15931) (regOne!32375 r!7292)))))

(declare-fun b!5864384 () Bool)

(assert (=> b!5864384 (= e!3595492 ((_ map or) call!460204 call!460205))))

(assert (= (and d!1841615 c!1040673) b!5864376))

(assert (= (and d!1841615 (not c!1040673)) b!5864383))

(assert (= (and b!5864383 c!1040674) b!5864378))

(assert (= (and b!5864383 (not c!1040674)) b!5864377))

(assert (= (and b!5864377 res!2467250) b!5864381))

(assert (= (and b!5864377 c!1040671) b!5864384))

(assert (= (and b!5864377 (not c!1040671)) b!5864380))

(assert (= (and b!5864380 c!1040672) b!5864374))

(assert (= (and b!5864380 (not c!1040672)) b!5864382))

(assert (= (and b!5864382 c!1040675) b!5864379))

(assert (= (and b!5864382 (not c!1040675)) b!5864375))

(assert (= (or b!5864374 b!5864379) bm!460201))

(assert (= (or b!5864374 b!5864379) bm!460199))

(assert (= (or b!5864384 bm!460201) bm!460204))

(assert (= (or b!5864384 bm!460199) bm!460202))

(assert (= (or b!5864378 b!5864384) bm!460203))

(assert (= (or b!5864378 bm!460202) bm!460200))

(declare-fun m!6780542 () Bool)

(assert (=> bm!460200 m!6780542))

(declare-fun m!6780544 () Bool)

(assert (=> b!5864381 m!6780544))

(declare-fun m!6780546 () Bool)

(assert (=> bm!460203 m!6780546))

(assert (=> b!5864376 m!6780152))

(declare-fun m!6780548 () Bool)

(assert (=> bm!460204 m!6780548))

(assert (=> b!5863621 d!1841615))

(declare-fun d!1841617 () Bool)

(declare-fun e!3595499 () Bool)

(assert (=> d!1841617 e!3595499))

(declare-fun res!2467253 () Bool)

(assert (=> d!1841617 (=> (not res!2467253) (not e!3595499))))

(declare-fun lt!2305946 () List!64094)

(declare-fun noDuplicate!1796 (List!64094) Bool)

(assert (=> d!1841617 (= res!2467253 (noDuplicate!1796 lt!2305946))))

(declare-fun choose!44457 ((InoxSet Context!10630)) List!64094)

(assert (=> d!1841617 (= lt!2305946 (choose!44457 z!1189))))

(assert (=> d!1841617 (= (toList!9715 z!1189) lt!2305946)))

(declare-fun b!5864387 () Bool)

(declare-fun content!11761 (List!64094) (InoxSet Context!10630))

(assert (=> b!5864387 (= e!3595499 (= (content!11761 lt!2305946) z!1189))))

(assert (= (and d!1841617 res!2467253) b!5864387))

(declare-fun m!6780550 () Bool)

(assert (=> d!1841617 m!6780550))

(declare-fun m!6780552 () Bool)

(assert (=> d!1841617 m!6780552))

(declare-fun m!6780554 () Bool)

(assert (=> b!5864387 m!6780554))

(assert (=> b!5863630 d!1841617))

(declare-fun bm!460205 () Bool)

(declare-fun call!460210 () Bool)

(declare-fun c!1040676 () Bool)

(declare-fun c!1040677 () Bool)

(assert (=> bm!460205 (= call!460210 (validRegex!7667 (ite c!1040677 (reg!16260 r!7292) (ite c!1040676 (regOne!32375 r!7292) (regOne!32374 r!7292)))))))

(declare-fun b!5864388 () Bool)

(declare-fun res!2467254 () Bool)

(declare-fun e!3595506 () Bool)

(assert (=> b!5864388 (=> res!2467254 e!3595506)))

(assert (=> b!5864388 (= res!2467254 (not ((_ is Concat!24776) r!7292)))))

(declare-fun e!3595502 () Bool)

(assert (=> b!5864388 (= e!3595502 e!3595506)))

(declare-fun b!5864389 () Bool)

(declare-fun e!3595501 () Bool)

(declare-fun call!460211 () Bool)

(assert (=> b!5864389 (= e!3595501 call!460211)))

(declare-fun b!5864390 () Bool)

(declare-fun e!3595505 () Bool)

(assert (=> b!5864390 (= e!3595506 e!3595505)))

(declare-fun res!2467256 () Bool)

(assert (=> b!5864390 (=> (not res!2467256) (not e!3595505))))

(declare-fun call!460212 () Bool)

(assert (=> b!5864390 (= res!2467256 call!460212)))

(declare-fun b!5864391 () Bool)

(assert (=> b!5864391 (= e!3595505 call!460211)))

(declare-fun bm!460206 () Bool)

(assert (=> bm!460206 (= call!460211 (validRegex!7667 (ite c!1040676 (regTwo!32375 r!7292) (regTwo!32374 r!7292))))))

(declare-fun b!5864392 () Bool)

(declare-fun e!3595503 () Bool)

(assert (=> b!5864392 (= e!3595503 call!460210)))

(declare-fun d!1841619 () Bool)

(declare-fun res!2467258 () Bool)

(declare-fun e!3595504 () Bool)

(assert (=> d!1841619 (=> res!2467258 e!3595504)))

(assert (=> d!1841619 (= res!2467258 ((_ is ElementMatch!15931) r!7292))))

(assert (=> d!1841619 (= (validRegex!7667 r!7292) e!3595504)))

(declare-fun b!5864393 () Bool)

(declare-fun e!3595500 () Bool)

(assert (=> b!5864393 (= e!3595500 e!3595503)))

(declare-fun res!2467255 () Bool)

(assert (=> b!5864393 (= res!2467255 (not (nullable!5931 (reg!16260 r!7292))))))

(assert (=> b!5864393 (=> (not res!2467255) (not e!3595503))))

(declare-fun b!5864394 () Bool)

(declare-fun res!2467257 () Bool)

(assert (=> b!5864394 (=> (not res!2467257) (not e!3595501))))

(assert (=> b!5864394 (= res!2467257 call!460212)))

(assert (=> b!5864394 (= e!3595502 e!3595501)))

(declare-fun b!5864395 () Bool)

(assert (=> b!5864395 (= e!3595500 e!3595502)))

(assert (=> b!5864395 (= c!1040676 ((_ is Union!15931) r!7292))))

(declare-fun bm!460207 () Bool)

(assert (=> bm!460207 (= call!460212 call!460210)))

(declare-fun b!5864396 () Bool)

(assert (=> b!5864396 (= e!3595504 e!3595500)))

(assert (=> b!5864396 (= c!1040677 ((_ is Star!15931) r!7292))))

(assert (= (and d!1841619 (not res!2467258)) b!5864396))

(assert (= (and b!5864396 c!1040677) b!5864393))

(assert (= (and b!5864396 (not c!1040677)) b!5864395))

(assert (= (and b!5864393 res!2467255) b!5864392))

(assert (= (and b!5864395 c!1040676) b!5864394))

(assert (= (and b!5864395 (not c!1040676)) b!5864388))

(assert (= (and b!5864394 res!2467257) b!5864389))

(assert (= (and b!5864388 (not res!2467254)) b!5864390))

(assert (= (and b!5864390 res!2467256) b!5864391))

(assert (= (or b!5864389 b!5864391) bm!460206))

(assert (= (or b!5864394 b!5864390) bm!460207))

(assert (= (or b!5864392 bm!460207) bm!460205))

(declare-fun m!6780556 () Bool)

(assert (=> bm!460205 m!6780556))

(declare-fun m!6780558 () Bool)

(assert (=> bm!460206 m!6780558))

(declare-fun m!6780560 () Bool)

(assert (=> b!5864393 m!6780560))

(assert (=> start!599692 d!1841619))

(declare-fun bs!1381612 () Bool)

(declare-fun d!1841621 () Bool)

(assert (= bs!1381612 (and d!1841621 d!1841485)))

(declare-fun lambda!320682 () Int)

(assert (=> bs!1381612 (= lambda!320682 lambda!320639)))

(declare-fun bs!1381613 () Bool)

(assert (= bs!1381613 (and d!1841621 d!1841593)))

(assert (=> bs!1381613 (= lambda!320682 lambda!320675)))

(declare-fun bs!1381614 () Bool)

(assert (= bs!1381614 (and d!1841621 d!1841609)))

(assert (=> bs!1381614 (= lambda!320682 lambda!320678)))

(declare-fun bs!1381615 () Bool)

(assert (= bs!1381615 (and d!1841621 d!1841611)))

(assert (=> bs!1381615 (= lambda!320682 lambda!320681)))

(assert (=> d!1841621 (= (inv!83074 setElem!39780) (forall!15018 (exprs!5815 setElem!39780) lambda!320682))))

(declare-fun bs!1381616 () Bool)

(assert (= bs!1381616 d!1841621))

(declare-fun m!6780562 () Bool)

(assert (=> bs!1381616 m!6780562))

(assert (=> setNonEmpty!39780 d!1841621))

(assert (=> b!5863632 d!1841601))

(declare-fun b!5864404 () Bool)

(declare-fun e!3595512 () Bool)

(declare-fun tp!1621995 () Bool)

(assert (=> b!5864404 (= e!3595512 tp!1621995)))

(declare-fun tp!1621996 () Bool)

(declare-fun e!3595511 () Bool)

(declare-fun b!5864403 () Bool)

(assert (=> b!5864403 (= e!3595511 (and (inv!83074 (h!70418 (t!377469 zl!343))) e!3595512 tp!1621996))))

(assert (=> b!5863616 (= tp!1621928 e!3595511)))

(assert (= b!5864403 b!5864404))

(assert (= (and b!5863616 ((_ is Cons!63970) (t!377469 zl!343))) b!5864403))

(declare-fun m!6780564 () Bool)

(assert (=> b!5864403 m!6780564))

(declare-fun b!5864417 () Bool)

(declare-fun e!3595515 () Bool)

(declare-fun tp!1622009 () Bool)

(assert (=> b!5864417 (= e!3595515 tp!1622009)))

(declare-fun b!5864418 () Bool)

(declare-fun tp!1622008 () Bool)

(declare-fun tp!1622010 () Bool)

(assert (=> b!5864418 (= e!3595515 (and tp!1622008 tp!1622010))))

(declare-fun b!5864415 () Bool)

(assert (=> b!5864415 (= e!3595515 tp_is_empty!41115)))

(assert (=> b!5863625 (= tp!1621925 e!3595515)))

(declare-fun b!5864416 () Bool)

(declare-fun tp!1622011 () Bool)

(declare-fun tp!1622007 () Bool)

(assert (=> b!5864416 (= e!3595515 (and tp!1622011 tp!1622007))))

(assert (= (and b!5863625 ((_ is ElementMatch!15931) (regOne!32375 r!7292))) b!5864415))

(assert (= (and b!5863625 ((_ is Concat!24776) (regOne!32375 r!7292))) b!5864416))

(assert (= (and b!5863625 ((_ is Star!15931) (regOne!32375 r!7292))) b!5864417))

(assert (= (and b!5863625 ((_ is Union!15931) (regOne!32375 r!7292))) b!5864418))

(declare-fun b!5864421 () Bool)

(declare-fun e!3595516 () Bool)

(declare-fun tp!1622014 () Bool)

(assert (=> b!5864421 (= e!3595516 tp!1622014)))

(declare-fun b!5864422 () Bool)

(declare-fun tp!1622013 () Bool)

(declare-fun tp!1622015 () Bool)

(assert (=> b!5864422 (= e!3595516 (and tp!1622013 tp!1622015))))

(declare-fun b!5864419 () Bool)

(assert (=> b!5864419 (= e!3595516 tp_is_empty!41115)))

(assert (=> b!5863625 (= tp!1621926 e!3595516)))

(declare-fun b!5864420 () Bool)

(declare-fun tp!1622016 () Bool)

(declare-fun tp!1622012 () Bool)

(assert (=> b!5864420 (= e!3595516 (and tp!1622016 tp!1622012))))

(assert (= (and b!5863625 ((_ is ElementMatch!15931) (regTwo!32375 r!7292))) b!5864419))

(assert (= (and b!5863625 ((_ is Concat!24776) (regTwo!32375 r!7292))) b!5864420))

(assert (= (and b!5863625 ((_ is Star!15931) (regTwo!32375 r!7292))) b!5864421))

(assert (= (and b!5863625 ((_ is Union!15931) (regTwo!32375 r!7292))) b!5864422))

(declare-fun condSetEmpty!39786 () Bool)

(assert (=> setNonEmpty!39780 (= condSetEmpty!39786 (= setRest!39780 ((as const (Array Context!10630 Bool)) false)))))

(declare-fun setRes!39786 () Bool)

(assert (=> setNonEmpty!39780 (= tp!1621927 setRes!39786)))

(declare-fun setIsEmpty!39786 () Bool)

(assert (=> setIsEmpty!39786 setRes!39786))

(declare-fun setNonEmpty!39786 () Bool)

(declare-fun e!3595519 () Bool)

(declare-fun tp!1622021 () Bool)

(declare-fun setElem!39786 () Context!10630)

(assert (=> setNonEmpty!39786 (= setRes!39786 (and tp!1622021 (inv!83074 setElem!39786) e!3595519))))

(declare-fun setRest!39786 () (InoxSet Context!10630))

(assert (=> setNonEmpty!39786 (= setRest!39780 ((_ map or) (store ((as const (Array Context!10630 Bool)) false) setElem!39786 true) setRest!39786))))

(declare-fun b!5864427 () Bool)

(declare-fun tp!1622022 () Bool)

(assert (=> b!5864427 (= e!3595519 tp!1622022)))

(assert (= (and setNonEmpty!39780 condSetEmpty!39786) setIsEmpty!39786))

(assert (= (and setNonEmpty!39780 (not condSetEmpty!39786)) setNonEmpty!39786))

(assert (= setNonEmpty!39786 b!5864427))

(declare-fun m!6780566 () Bool)

(assert (=> setNonEmpty!39786 m!6780566))

(declare-fun b!5864432 () Bool)

(declare-fun e!3595522 () Bool)

(declare-fun tp!1622027 () Bool)

(declare-fun tp!1622028 () Bool)

(assert (=> b!5864432 (= e!3595522 (and tp!1622027 tp!1622028))))

(assert (=> b!5863637 (= tp!1621923 e!3595522)))

(assert (= (and b!5863637 ((_ is Cons!63968) (exprs!5815 setElem!39780))) b!5864432))

(declare-fun b!5864435 () Bool)

(declare-fun e!3595523 () Bool)

(declare-fun tp!1622031 () Bool)

(assert (=> b!5864435 (= e!3595523 tp!1622031)))

(declare-fun b!5864436 () Bool)

(declare-fun tp!1622030 () Bool)

(declare-fun tp!1622032 () Bool)

(assert (=> b!5864436 (= e!3595523 (and tp!1622030 tp!1622032))))

(declare-fun b!5864433 () Bool)

(assert (=> b!5864433 (= e!3595523 tp_is_empty!41115)))

(assert (=> b!5863618 (= tp!1621931 e!3595523)))

(declare-fun b!5864434 () Bool)

(declare-fun tp!1622033 () Bool)

(declare-fun tp!1622029 () Bool)

(assert (=> b!5864434 (= e!3595523 (and tp!1622033 tp!1622029))))

(assert (= (and b!5863618 ((_ is ElementMatch!15931) (reg!16260 r!7292))) b!5864433))

(assert (= (and b!5863618 ((_ is Concat!24776) (reg!16260 r!7292))) b!5864434))

(assert (= (and b!5863618 ((_ is Star!15931) (reg!16260 r!7292))) b!5864435))

(assert (= (and b!5863618 ((_ is Union!15931) (reg!16260 r!7292))) b!5864436))

(declare-fun b!5864441 () Bool)

(declare-fun e!3595526 () Bool)

(declare-fun tp!1622036 () Bool)

(assert (=> b!5864441 (= e!3595526 (and tp_is_empty!41115 tp!1622036))))

(assert (=> b!5863622 (= tp!1621930 e!3595526)))

(assert (= (and b!5863622 ((_ is Cons!63969) (t!377468 s!2326))) b!5864441))

(declare-fun b!5864442 () Bool)

(declare-fun e!3595527 () Bool)

(declare-fun tp!1622037 () Bool)

(declare-fun tp!1622038 () Bool)

(assert (=> b!5864442 (= e!3595527 (and tp!1622037 tp!1622038))))

(assert (=> b!5863633 (= tp!1621929 e!3595527)))

(assert (= (and b!5863633 ((_ is Cons!63968) (exprs!5815 (h!70418 zl!343)))) b!5864442))

(declare-fun b!5864445 () Bool)

(declare-fun e!3595528 () Bool)

(declare-fun tp!1622041 () Bool)

(assert (=> b!5864445 (= e!3595528 tp!1622041)))

(declare-fun b!5864446 () Bool)

(declare-fun tp!1622040 () Bool)

(declare-fun tp!1622042 () Bool)

(assert (=> b!5864446 (= e!3595528 (and tp!1622040 tp!1622042))))

(declare-fun b!5864443 () Bool)

(assert (=> b!5864443 (= e!3595528 tp_is_empty!41115)))

(assert (=> b!5863623 (= tp!1621932 e!3595528)))

(declare-fun b!5864444 () Bool)

(declare-fun tp!1622043 () Bool)

(declare-fun tp!1622039 () Bool)

(assert (=> b!5864444 (= e!3595528 (and tp!1622043 tp!1622039))))

(assert (= (and b!5863623 ((_ is ElementMatch!15931) (regOne!32374 r!7292))) b!5864443))

(assert (= (and b!5863623 ((_ is Concat!24776) (regOne!32374 r!7292))) b!5864444))

(assert (= (and b!5863623 ((_ is Star!15931) (regOne!32374 r!7292))) b!5864445))

(assert (= (and b!5863623 ((_ is Union!15931) (regOne!32374 r!7292))) b!5864446))

(declare-fun b!5864449 () Bool)

(declare-fun e!3595529 () Bool)

(declare-fun tp!1622046 () Bool)

(assert (=> b!5864449 (= e!3595529 tp!1622046)))

(declare-fun b!5864450 () Bool)

(declare-fun tp!1622045 () Bool)

(declare-fun tp!1622047 () Bool)

(assert (=> b!5864450 (= e!3595529 (and tp!1622045 tp!1622047))))

(declare-fun b!5864447 () Bool)

(assert (=> b!5864447 (= e!3595529 tp_is_empty!41115)))

(assert (=> b!5863623 (= tp!1621924 e!3595529)))

(declare-fun b!5864448 () Bool)

(declare-fun tp!1622048 () Bool)

(declare-fun tp!1622044 () Bool)

(assert (=> b!5864448 (= e!3595529 (and tp!1622048 tp!1622044))))

(assert (= (and b!5863623 ((_ is ElementMatch!15931) (regTwo!32374 r!7292))) b!5864447))

(assert (= (and b!5863623 ((_ is Concat!24776) (regTwo!32374 r!7292))) b!5864448))

(assert (= (and b!5863623 ((_ is Star!15931) (regTwo!32374 r!7292))) b!5864449))

(assert (= (and b!5863623 ((_ is Union!15931) (regTwo!32374 r!7292))) b!5864450))

(declare-fun b_lambda!220767 () Bool)

(assert (= b_lambda!220765 (or b!5863627 b_lambda!220767)))

(declare-fun bs!1381617 () Bool)

(declare-fun d!1841623 () Bool)

(assert (= bs!1381617 (and d!1841623 b!5863627)))

(assert (=> bs!1381617 (= (dynLambda!25016 lambda!320630 (h!70418 zl!343)) (derivationStepZipperUp!1123 (h!70418 zl!343) (h!70417 s!2326)))))

(assert (=> bs!1381617 m!6780066))

(assert (=> d!1841591 d!1841623))

(declare-fun b_lambda!220769 () Bool)

(assert (= b_lambda!220749 (or b!5863627 b_lambda!220769)))

(declare-fun bs!1381618 () Bool)

(declare-fun d!1841625 () Bool)

(assert (= bs!1381618 (and d!1841625 b!5863627)))

(assert (=> bs!1381618 (= (dynLambda!25016 lambda!320630 lt!2305861) (derivationStepZipperUp!1123 lt!2305861 (h!70417 s!2326)))))

(assert (=> bs!1381618 m!6780016))

(assert (=> d!1841463 d!1841625))

(declare-fun b_lambda!220771 () Bool)

(assert (= b_lambda!220751 (or b!5863627 b_lambda!220771)))

(declare-fun bs!1381619 () Bool)

(declare-fun d!1841627 () Bool)

(assert (= bs!1381619 (and d!1841627 b!5863627)))

(assert (=> bs!1381619 (= (dynLambda!25016 lambda!320630 lt!2305873) (derivationStepZipperUp!1123 lt!2305873 (h!70417 s!2326)))))

(assert (=> bs!1381619 m!6780024))

(assert (=> d!1841465 d!1841627))

(check-sat (not bm!460191) (not b!5864436) (not bm!460206) (not d!1841617) (not bm!460187) (not d!1841465) (not b!5864370) (not b!5864321) (not b!5864265) (not bm!460200) (not bm!460124) (not b!5864305) (not b!5864348) (not b!5864393) (not b!5864326) tp_is_empty!41115 (not d!1841609) (not b!5864240) (not b!5864307) (not b!5863694) (not d!1841603) (not b!5864282) (not b!5864314) (not bm!460123) (not b!5864046) (not b!5864217) (not b!5864219) (not b!5864232) (not b!5864273) (not d!1841611) (not b!5864355) (not b_lambda!220769) (not b!5864216) (not d!1841471) (not bm!460165) (not b!5864315) (not bs!1381618) (not bs!1381619) (not d!1841581) (not b!5864318) (not b!5864403) (not b!5864417) (not b!5864353) (not bm!460194) (not b!5864242) (not bm!460188) (not b!5864304) (not bm!460197) (not b!5864229) (not d!1841607) (not b!5864361) (not b!5864324) (not b!5864323) (not b!5864450) (not d!1841485) (not b!5864306) (not b!5864267) (not b!5864319) (not b!5864420) (not b!5864435) (not b!5864421) (not d!1841577) (not b!5864322) (not b!5863696) (not b!5863695) (not b!5864448) (not b!5863699) (not b!5864225) (not b!5864223) (not b_lambda!220771) (not b!5864422) (not b!5864244) (not bm!460205) (not b!5864320) (not b!5864418) (not b!5864381) (not b!5863653) (not bm!460084) (not b!5864356) (not bm!460125) (not bs!1381617) (not d!1841593) (not b!5864446) (not bm!460189) (not b!5864308) (not bm!460166) (not bm!460204) (not b!5864445) (not bm!460120) (not d!1841543) (not d!1841573) (not b!5864427) (not b!5863816) (not b!5864442) (not d!1841463) (not d!1841585) (not bm!460186) (not b!5864449) (not b!5864254) (not d!1841583) (not b!5864325) (not bm!460144) (not b!5864350) (not b!5863809) (not b!5864269) (not b!5864434) (not bm!460203) (not b!5863813) (not d!1841601) (not b!5864387) (not b!5864404) (not b!5864313) (not d!1841597) (not setNonEmpty!39786) (not b!5864351) (not b!5863893) (not b!5864312) (not d!1841621) (not b!5864441) (not b!5864215) (not b!5864266) (not bm!460143) (not d!1841587) (not d!1841459) (not bm!460192) (not d!1841547) (not b!5864432) (not b!5864416) (not b!5864257) (not b!5864275) (not bm!460198) (not bm!460089) (not d!1841599) (not b_lambda!220767) (not d!1841595) (not b!5864049) (not b!5864248) (not b!5864279) (not bm!460190) (not d!1841605) (not b!5864347) (not b!5864444) (not d!1841461) (not b!5864241) (not bm!460185) (not b!5863656) (not b!5864250) (not d!1841591))
(check-sat)
