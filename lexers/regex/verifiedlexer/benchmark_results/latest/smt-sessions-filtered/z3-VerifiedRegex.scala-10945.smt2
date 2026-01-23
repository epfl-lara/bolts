; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566474 () Bool)

(assert start!566474)

(declare-fun b!5390893 () Bool)

(assert (=> b!5390893 true))

(assert (=> b!5390893 true))

(declare-fun lambda!280015 () Int)

(declare-fun lambda!280014 () Int)

(assert (=> b!5390893 (not (= lambda!280015 lambda!280014))))

(assert (=> b!5390893 true))

(assert (=> b!5390893 true))

(declare-fun b!5390897 () Bool)

(assert (=> b!5390897 true))

(declare-fun b!5390865 () Bool)

(declare-fun e!3343249 () Bool)

(declare-fun tp_is_empty!39527 () Bool)

(assert (=> b!5390865 (= e!3343249 tp_is_empty!39527)))

(declare-fun b!5390866 () Bool)

(declare-fun e!3343253 () Bool)

(declare-fun e!3343259 () Bool)

(assert (=> b!5390866 (= e!3343253 e!3343259)))

(declare-fun res!2290755 () Bool)

(assert (=> b!5390866 (=> res!2290755 e!3343259)))

(declare-fun lt!2196621 () Bool)

(assert (=> b!5390866 (= res!2290755 lt!2196621)))

(declare-datatypes ((C!30544 0))(
  ( (C!30545 (val!24974 Int)) )
))
(declare-datatypes ((Regex!15137 0))(
  ( (ElementMatch!15137 (c!939381 C!30544)) (Concat!23982 (regOne!30786 Regex!15137) (regTwo!30786 Regex!15137)) (EmptyExpr!15137) (Star!15137 (reg!15466 Regex!15137)) (EmptyLang!15137) (Union!15137 (regOne!30787 Regex!15137) (regTwo!30787 Regex!15137)) )
))
(declare-fun lt!2196634 () Regex!15137)

(declare-datatypes ((List!61710 0))(
  ( (Nil!61586) (Cons!61586 (h!68034 C!30544) (t!374933 List!61710)) )
))
(declare-fun s!2326 () List!61710)

(declare-fun matchR!7322 (Regex!15137 List!61710) Bool)

(declare-fun matchRSpec!2240 (Regex!15137 List!61710) Bool)

(assert (=> b!5390866 (= (matchR!7322 lt!2196634 s!2326) (matchRSpec!2240 lt!2196634 s!2326))))

(declare-datatypes ((Unit!154070 0))(
  ( (Unit!154071) )
))
(declare-fun lt!2196632 () Unit!154070)

(declare-fun mainMatchTheorem!2240 (Regex!15137 List!61710) Unit!154070)

(assert (=> b!5390866 (= lt!2196632 (mainMatchTheorem!2240 lt!2196634 s!2326))))

(declare-fun setIsEmpty!35021 () Bool)

(declare-fun setRes!35021 () Bool)

(assert (=> setIsEmpty!35021 setRes!35021))

(declare-fun b!5390867 () Bool)

(declare-fun res!2290762 () Bool)

(declare-fun e!3343258 () Bool)

(assert (=> b!5390867 (=> res!2290762 e!3343258)))

(declare-fun r!7292 () Regex!15137)

(declare-datatypes ((List!61711 0))(
  ( (Nil!61587) (Cons!61587 (h!68035 Regex!15137) (t!374934 List!61711)) )
))
(declare-datatypes ((Context!9042 0))(
  ( (Context!9043 (exprs!5021 List!61711)) )
))
(declare-datatypes ((List!61712 0))(
  ( (Nil!61588) (Cons!61588 (h!68036 Context!9042) (t!374935 List!61712)) )
))
(declare-fun zl!343 () List!61712)

(declare-fun generalisedConcat!806 (List!61711) Regex!15137)

(assert (=> b!5390867 (= res!2290762 (not (= r!7292 (generalisedConcat!806 (exprs!5021 (h!68036 zl!343))))))))

(declare-fun b!5390868 () Bool)

(declare-fun res!2290757 () Bool)

(declare-fun e!3343240 () Bool)

(assert (=> b!5390868 (=> res!2290757 e!3343240)))

(declare-fun lt!2196640 () Bool)

(declare-fun lt!2196639 () Bool)

(assert (=> b!5390868 (= res!2290757 (or (not lt!2196640) (not lt!2196639)))))

(declare-fun b!5390869 () Bool)

(declare-fun e!3343246 () Unit!154070)

(declare-fun Unit!154072 () Unit!154070)

(assert (=> b!5390869 (= e!3343246 Unit!154072)))

(declare-fun b!5390870 () Bool)

(declare-fun e!3343242 () Bool)

(declare-fun e!3343262 () Bool)

(assert (=> b!5390870 (= e!3343242 e!3343262)))

(declare-fun res!2290770 () Bool)

(assert (=> b!5390870 (=> res!2290770 e!3343262)))

(declare-fun lt!2196635 () Regex!15137)

(assert (=> b!5390870 (= res!2290770 (not (= r!7292 lt!2196635)))))

(declare-fun lt!2196638 () Regex!15137)

(assert (=> b!5390870 (= lt!2196635 (Concat!23982 lt!2196638 (regTwo!30786 r!7292)))))

(declare-fun tp!1492757 () Bool)

(declare-fun setNonEmpty!35021 () Bool)

(declare-fun e!3343245 () Bool)

(declare-fun setElem!35021 () Context!9042)

(declare-fun inv!81089 (Context!9042) Bool)

(assert (=> setNonEmpty!35021 (= setRes!35021 (and tp!1492757 (inv!81089 setElem!35021) e!3343245))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9042))

(declare-fun setRest!35021 () (InoxSet Context!9042))

(assert (=> setNonEmpty!35021 (= z!1189 ((_ map or) (store ((as const (Array Context!9042 Bool)) false) setElem!35021 true) setRest!35021))))

(declare-fun b!5390871 () Bool)

(declare-fun res!2290775 () Bool)

(assert (=> b!5390871 (=> res!2290775 e!3343258)))

(get-info :version)

(assert (=> b!5390871 (= res!2290775 (or ((_ is EmptyExpr!15137) r!7292) ((_ is EmptyLang!15137) r!7292) ((_ is ElementMatch!15137) r!7292) ((_ is Union!15137) r!7292) (not ((_ is Concat!23982) r!7292))))))

(declare-fun b!5390872 () Bool)

(declare-fun e!3343248 () Bool)

(declare-fun tp!1492758 () Bool)

(assert (=> b!5390872 (= e!3343248 (and tp_is_empty!39527 tp!1492758))))

(declare-fun b!5390873 () Bool)

(declare-fun e!3343244 () Bool)

(assert (=> b!5390873 (= e!3343262 e!3343244)))

(declare-fun res!2290763 () Bool)

(assert (=> b!5390873 (=> res!2290763 e!3343244)))

(declare-fun lt!2196636 () Context!9042)

(declare-fun unfocusZipper!879 (List!61712) Regex!15137)

(assert (=> b!5390873 (= res!2290763 (not (= (unfocusZipper!879 (Cons!61588 lt!2196636 Nil!61588)) lt!2196634)))))

(assert (=> b!5390873 (= lt!2196634 (Concat!23982 (reg!15466 (regOne!30786 r!7292)) lt!2196635))))

(declare-fun b!5390874 () Bool)

(declare-fun res!2290751 () Bool)

(assert (=> b!5390874 (=> res!2290751 e!3343258)))

(declare-fun isEmpty!33585 (List!61712) Bool)

(assert (=> b!5390874 (= res!2290751 (not (isEmpty!33585 (t!374935 zl!343))))))

(declare-fun b!5390875 () Bool)

(declare-fun res!2290768 () Bool)

(assert (=> b!5390875 (=> res!2290768 e!3343259)))

(declare-fun matchZipper!1381 ((InoxSet Context!9042) List!61710) Bool)

(assert (=> b!5390875 (= res!2290768 (not (matchZipper!1381 z!1189 s!2326)))))

(declare-fun b!5390876 () Bool)

(declare-fun res!2290747 () Bool)

(assert (=> b!5390876 (=> res!2290747 e!3343258)))

(assert (=> b!5390876 (= res!2290747 (not ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5390877 () Bool)

(assert (=> b!5390877 (= e!3343259 e!3343240)))

(declare-fun res!2290749 () Bool)

(assert (=> b!5390877 (=> res!2290749 e!3343240)))

(declare-fun e!3343251 () Bool)

(assert (=> b!5390877 (= res!2290749 e!3343251)))

(declare-fun res!2290759 () Bool)

(assert (=> b!5390877 (=> (not res!2290759) (not e!3343251))))

(assert (=> b!5390877 (= res!2290759 (not lt!2196640))))

(declare-fun lt!2196627 () (InoxSet Context!9042))

(assert (=> b!5390877 (= lt!2196640 (matchZipper!1381 lt!2196627 (t!374933 s!2326)))))

(declare-fun b!5390878 () Bool)

(declare-fun e!3343243 () Bool)

(declare-fun e!3343255 () Bool)

(assert (=> b!5390878 (= e!3343243 e!3343255)))

(declare-fun res!2290758 () Bool)

(assert (=> b!5390878 (=> res!2290758 e!3343255)))

(declare-fun lt!2196637 () (InoxSet Context!9042))

(declare-fun lt!2196620 () (InoxSet Context!9042))

(assert (=> b!5390878 (= res!2290758 (not (= lt!2196637 lt!2196620)))))

(declare-fun lt!2196633 () (InoxSet Context!9042))

(declare-fun lambda!280016 () Int)

(declare-fun flatMap!864 ((InoxSet Context!9042) Int) (InoxSet Context!9042))

(declare-fun derivationStepZipperUp!509 (Context!9042 C!30544) (InoxSet Context!9042))

(assert (=> b!5390878 (= (flatMap!864 lt!2196633 lambda!280016) (derivationStepZipperUp!509 lt!2196636 (h!68034 s!2326)))))

(declare-fun lt!2196647 () Unit!154070)

(declare-fun lemmaFlatMapOnSingletonSet!396 ((InoxSet Context!9042) Context!9042 Int) Unit!154070)

(assert (=> b!5390878 (= lt!2196647 (lemmaFlatMapOnSingletonSet!396 lt!2196633 lt!2196636 lambda!280016))))

(declare-fun lt!2196623 () (InoxSet Context!9042))

(assert (=> b!5390878 (= lt!2196623 (derivationStepZipperUp!509 lt!2196636 (h!68034 s!2326)))))

(declare-fun derivationStepZipper!1376 ((InoxSet Context!9042) C!30544) (InoxSet Context!9042))

(assert (=> b!5390878 (= lt!2196637 (derivationStepZipper!1376 lt!2196633 (h!68034 s!2326)))))

(assert (=> b!5390878 (= lt!2196633 (store ((as const (Array Context!9042 Bool)) false) lt!2196636 true))))

(declare-fun lt!2196618 () List!61711)

(assert (=> b!5390878 (= lt!2196636 (Context!9043 (Cons!61587 (reg!15466 (regOne!30786 r!7292)) lt!2196618)))))

(declare-fun b!5390879 () Bool)

(declare-fun res!2290767 () Bool)

(declare-fun e!3343241 () Bool)

(assert (=> b!5390879 (=> res!2290767 e!3343241)))

(declare-fun isEmpty!33586 (List!61711) Bool)

(assert (=> b!5390879 (= res!2290767 (isEmpty!33586 (t!374934 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5390880 () Bool)

(declare-fun tp!1492759 () Bool)

(assert (=> b!5390880 (= e!3343245 tp!1492759)))

(declare-fun b!5390881 () Bool)

(assert (=> b!5390881 (= e!3343255 e!3343242)))

(declare-fun res!2290752 () Bool)

(assert (=> b!5390881 (=> res!2290752 e!3343242)))

(assert (=> b!5390881 (= res!2290752 (not (= lt!2196639 (matchZipper!1381 lt!2196637 (t!374933 s!2326)))))))

(assert (=> b!5390881 (= lt!2196639 (matchZipper!1381 lt!2196633 s!2326))))

(declare-fun b!5390882 () Bool)

(declare-fun res!2290756 () Bool)

(declare-fun e!3343252 () Bool)

(assert (=> b!5390882 (=> (not res!2290756) (not e!3343252))))

(declare-fun toList!8921 ((InoxSet Context!9042)) List!61712)

(assert (=> b!5390882 (= res!2290756 (= (toList!8921 z!1189) zl!343))))

(declare-fun b!5390883 () Bool)

(declare-fun res!2290773 () Bool)

(assert (=> b!5390883 (=> res!2290773 e!3343242)))

(declare-fun lt!2196648 () Regex!15137)

(assert (=> b!5390883 (= res!2290773 (not (= lt!2196648 r!7292)))))

(declare-fun b!5390884 () Bool)

(declare-fun Unit!154073 () Unit!154070)

(assert (=> b!5390884 (= e!3343246 Unit!154073)))

(declare-fun lt!2196616 () Unit!154070)

(declare-fun lt!2196617 () (InoxSet Context!9042))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!374 ((InoxSet Context!9042) (InoxSet Context!9042) List!61710) Unit!154070)

(assert (=> b!5390884 (= lt!2196616 (lemmaZipperConcatMatchesSameAsBothZippers!374 lt!2196627 lt!2196617 (t!374933 s!2326)))))

(declare-fun res!2290748 () Bool)

(assert (=> b!5390884 (= res!2290748 (matchZipper!1381 lt!2196627 (t!374933 s!2326)))))

(declare-fun e!3343250 () Bool)

(assert (=> b!5390884 (=> res!2290748 e!3343250)))

(assert (=> b!5390884 (= (matchZipper!1381 ((_ map or) lt!2196627 lt!2196617) (t!374933 s!2326)) e!3343250)))

(declare-fun b!5390885 () Bool)

(declare-fun res!2290771 () Bool)

(assert (=> b!5390885 (=> res!2290771 e!3343258)))

(declare-fun generalisedUnion!1066 (List!61711) Regex!15137)

(declare-fun unfocusZipperList!579 (List!61712) List!61711)

(assert (=> b!5390885 (= res!2290771 (not (= r!7292 (generalisedUnion!1066 (unfocusZipperList!579 zl!343)))))))

(declare-fun b!5390886 () Bool)

(declare-fun tp!1492761 () Bool)

(declare-fun tp!1492760 () Bool)

(assert (=> b!5390886 (= e!3343249 (and tp!1492761 tp!1492760))))

(declare-fun res!2290764 () Bool)

(assert (=> start!566474 (=> (not res!2290764) (not e!3343252))))

(declare-fun validRegex!6873 (Regex!15137) Bool)

(assert (=> start!566474 (= res!2290764 (validRegex!6873 r!7292))))

(assert (=> start!566474 e!3343252))

(declare-fun c!324 () Context!9042)

(declare-fun e!3343247 () Bool)

(assert (=> start!566474 (and (inv!81089 c!324) e!3343247)))

(assert (=> start!566474 e!3343249))

(assert (=> start!566474 e!3343248))

(declare-fun condSetEmpty!35021 () Bool)

(assert (=> start!566474 (= condSetEmpty!35021 (= z!1189 ((as const (Array Context!9042 Bool)) false)))))

(assert (=> start!566474 setRes!35021))

(declare-fun e!3343254 () Bool)

(assert (=> start!566474 e!3343254))

(declare-fun b!5390887 () Bool)

(assert (=> b!5390887 (= e!3343251 (not (matchZipper!1381 lt!2196617 (t!374933 s!2326))))))

(declare-fun b!5390888 () Bool)

(declare-fun tp!1492753 () Bool)

(assert (=> b!5390888 (= e!3343249 tp!1492753)))

(declare-fun b!5390889 () Bool)

(declare-fun res!2290769 () Bool)

(declare-fun e!3343257 () Bool)

(assert (=> b!5390889 (=> res!2290769 e!3343257)))

(declare-fun e!3343260 () Bool)

(assert (=> b!5390889 (= res!2290769 e!3343260)))

(declare-fun res!2290753 () Bool)

(assert (=> b!5390889 (=> (not res!2290753) (not e!3343260))))

(assert (=> b!5390889 (= res!2290753 ((_ is Concat!23982) (regOne!30786 r!7292)))))

(declare-fun b!5390890 () Bool)

(declare-fun e!3343256 () Bool)

(assert (=> b!5390890 (= e!3343252 e!3343256)))

(declare-fun res!2290765 () Bool)

(assert (=> b!5390890 (=> (not res!2290765) (not e!3343256))))

(assert (=> b!5390890 (= res!2290765 (= r!7292 lt!2196648))))

(assert (=> b!5390890 (= lt!2196648 (unfocusZipper!879 zl!343))))

(declare-fun b!5390891 () Bool)

(assert (=> b!5390891 (= e!3343244 e!3343253)))

(declare-fun res!2290746 () Bool)

(assert (=> b!5390891 (=> res!2290746 e!3343253)))

(declare-fun lt!2196645 () Context!9042)

(assert (=> b!5390891 (= res!2290746 (not (= (unfocusZipper!879 (Cons!61588 lt!2196645 Nil!61588)) (reg!15466 (regOne!30786 r!7292)))))))

(declare-fun lt!2196628 () Context!9042)

(declare-fun lt!2196631 () (InoxSet Context!9042))

(assert (=> b!5390891 (= (flatMap!864 lt!2196631 lambda!280016) (derivationStepZipperUp!509 lt!2196628 (h!68034 s!2326)))))

(declare-fun lt!2196619 () Unit!154070)

(assert (=> b!5390891 (= lt!2196619 (lemmaFlatMapOnSingletonSet!396 lt!2196631 lt!2196628 lambda!280016))))

(declare-fun lt!2196626 () (InoxSet Context!9042))

(assert (=> b!5390891 (= (flatMap!864 lt!2196626 lambda!280016) (derivationStepZipperUp!509 lt!2196645 (h!68034 s!2326)))))

(declare-fun lt!2196624 () Unit!154070)

(assert (=> b!5390891 (= lt!2196624 (lemmaFlatMapOnSingletonSet!396 lt!2196626 lt!2196645 lambda!280016))))

(declare-fun lt!2196646 () (InoxSet Context!9042))

(assert (=> b!5390891 (= lt!2196646 (derivationStepZipperUp!509 lt!2196628 (h!68034 s!2326)))))

(declare-fun lt!2196641 () (InoxSet Context!9042))

(assert (=> b!5390891 (= lt!2196641 (derivationStepZipperUp!509 lt!2196645 (h!68034 s!2326)))))

(assert (=> b!5390891 (= lt!2196631 (store ((as const (Array Context!9042 Bool)) false) lt!2196628 true))))

(assert (=> b!5390891 (= lt!2196626 (store ((as const (Array Context!9042 Bool)) false) lt!2196645 true))))

(assert (=> b!5390891 (= lt!2196645 (Context!9043 (Cons!61587 (reg!15466 (regOne!30786 r!7292)) Nil!61587)))))

(declare-fun b!5390892 () Bool)

(declare-fun res!2290750 () Bool)

(assert (=> b!5390892 (=> res!2290750 e!3343253)))

(assert (=> b!5390892 (= res!2290750 (not (= (unfocusZipper!879 (Cons!61588 lt!2196628 Nil!61588)) lt!2196635)))))

(assert (=> b!5390893 (= e!3343258 e!3343241)))

(declare-fun res!2290761 () Bool)

(assert (=> b!5390893 (=> res!2290761 e!3343241)))

(declare-fun lt!2196625 () Bool)

(assert (=> b!5390893 (= res!2290761 (or (not (= lt!2196621 lt!2196625)) ((_ is Nil!61586) s!2326)))))

(declare-fun Exists!2318 (Int) Bool)

(assert (=> b!5390893 (= (Exists!2318 lambda!280014) (Exists!2318 lambda!280015))))

(declare-fun lt!2196642 () Unit!154070)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!972 (Regex!15137 Regex!15137 List!61710) Unit!154070)

(assert (=> b!5390893 (= lt!2196642 (lemmaExistCutMatchRandMatchRSpecEquivalent!972 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326))))

(assert (=> b!5390893 (= lt!2196625 (Exists!2318 lambda!280014))))

(declare-datatypes ((tuple2!64672 0))(
  ( (tuple2!64673 (_1!35639 List!61710) (_2!35639 List!61710)) )
))
(declare-datatypes ((Option!15248 0))(
  ( (None!15247) (Some!15247 (v!51276 tuple2!64672)) )
))
(declare-fun isDefined!11951 (Option!15248) Bool)

(declare-fun findConcatSeparation!1662 (Regex!15137 Regex!15137 List!61710 List!61710 List!61710) Option!15248)

(assert (=> b!5390893 (= lt!2196625 (isDefined!11951 (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) Nil!61586 s!2326 s!2326)))))

(declare-fun lt!2196629 () Unit!154070)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1426 (Regex!15137 Regex!15137 List!61710) Unit!154070)

(assert (=> b!5390893 (= lt!2196629 (lemmaFindConcatSeparationEquivalentToExists!1426 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326))))

(declare-fun b!5390894 () Bool)

(declare-fun e!3343261 () Bool)

(declare-fun tp!1492762 () Bool)

(assert (=> b!5390894 (= e!3343261 tp!1492762)))

(declare-fun tp!1492756 () Bool)

(declare-fun b!5390895 () Bool)

(assert (=> b!5390895 (= e!3343254 (and (inv!81089 (h!68036 zl!343)) e!3343261 tp!1492756))))

(declare-fun b!5390896 () Bool)

(declare-fun lambda!280017 () Int)

(declare-fun forall!14515 (List!61711 Int) Bool)

(assert (=> b!5390896 (= e!3343240 (forall!14515 (exprs!5021 c!324) lambda!280017))))

(assert (=> b!5390897 (= e!3343241 e!3343257)))

(declare-fun res!2290766 () Bool)

(assert (=> b!5390897 (=> res!2290766 e!3343257)))

(assert (=> b!5390897 (= res!2290766 (or (and ((_ is ElementMatch!15137) (regOne!30786 r!7292)) (= (c!939381 (regOne!30786 r!7292)) (h!68034 s!2326))) ((_ is Union!15137) (regOne!30786 r!7292))))))

(declare-fun lt!2196630 () Unit!154070)

(assert (=> b!5390897 (= lt!2196630 e!3343246)))

(declare-fun c!939380 () Bool)

(declare-fun lt!2196622 () Bool)

(assert (=> b!5390897 (= c!939380 lt!2196622)))

(declare-fun nullable!5306 (Regex!15137) Bool)

(assert (=> b!5390897 (= lt!2196622 (nullable!5306 (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(assert (=> b!5390897 (= (flatMap!864 z!1189 lambda!280016) (derivationStepZipperUp!509 (h!68036 zl!343) (h!68034 s!2326)))))

(declare-fun lt!2196649 () Unit!154070)

(assert (=> b!5390897 (= lt!2196649 (lemmaFlatMapOnSingletonSet!396 z!1189 (h!68036 zl!343) lambda!280016))))

(declare-fun lt!2196650 () Context!9042)

(assert (=> b!5390897 (= lt!2196617 (derivationStepZipperUp!509 lt!2196650 (h!68034 s!2326)))))

(declare-fun derivationStepZipperDown!585 (Regex!15137 Context!9042 C!30544) (InoxSet Context!9042))

(assert (=> b!5390897 (= lt!2196627 (derivationStepZipperDown!585 (h!68035 (exprs!5021 (h!68036 zl!343))) lt!2196650 (h!68034 s!2326)))))

(assert (=> b!5390897 (= lt!2196650 (Context!9043 (t!374934 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun lt!2196644 () (InoxSet Context!9042))

(assert (=> b!5390897 (= lt!2196644 (derivationStepZipperUp!509 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343))))) (h!68034 s!2326)))))

(declare-fun b!5390898 () Bool)

(assert (=> b!5390898 (= e!3343256 (not e!3343258))))

(declare-fun res!2290754 () Bool)

(assert (=> b!5390898 (=> res!2290754 e!3343258)))

(assert (=> b!5390898 (= res!2290754 (not ((_ is Cons!61588) zl!343)))))

(assert (=> b!5390898 (= lt!2196621 (matchRSpec!2240 r!7292 s!2326))))

(assert (=> b!5390898 (= lt!2196621 (matchR!7322 r!7292 s!2326))))

(declare-fun lt!2196643 () Unit!154070)

(assert (=> b!5390898 (= lt!2196643 (mainMatchTheorem!2240 r!7292 s!2326))))

(declare-fun b!5390899 () Bool)

(declare-fun res!2290774 () Bool)

(assert (=> b!5390899 (=> res!2290774 e!3343257)))

(assert (=> b!5390899 (= res!2290774 (or ((_ is Concat!23982) (regOne!30786 r!7292)) (not ((_ is Star!15137) (regOne!30786 r!7292)))))))

(declare-fun b!5390900 () Bool)

(assert (=> b!5390900 (= e!3343250 (matchZipper!1381 lt!2196617 (t!374933 s!2326)))))

(declare-fun b!5390901 () Bool)

(declare-fun tp!1492755 () Bool)

(assert (=> b!5390901 (= e!3343247 tp!1492755)))

(declare-fun b!5390902 () Bool)

(declare-fun res!2290760 () Bool)

(assert (=> b!5390902 (=> res!2290760 e!3343259)))

(assert (=> b!5390902 (= res!2290760 (not lt!2196622))))

(declare-fun b!5390903 () Bool)

(assert (=> b!5390903 (= e!3343260 (nullable!5306 (regOne!30786 (regOne!30786 r!7292))))))

(declare-fun b!5390904 () Bool)

(assert (=> b!5390904 (= e!3343257 e!3343243)))

(declare-fun res!2290772 () Bool)

(assert (=> b!5390904 (=> res!2290772 e!3343243)))

(assert (=> b!5390904 (= res!2290772 (not (= lt!2196627 lt!2196620)))))

(assert (=> b!5390904 (= lt!2196620 (derivationStepZipperDown!585 (reg!15466 (regOne!30786 r!7292)) lt!2196628 (h!68034 s!2326)))))

(assert (=> b!5390904 (= lt!2196628 (Context!9043 lt!2196618))))

(assert (=> b!5390904 (= lt!2196618 (Cons!61587 lt!2196638 (t!374934 (exprs!5021 (h!68036 zl!343)))))))

(assert (=> b!5390904 (= lt!2196638 (Star!15137 (reg!15466 (regOne!30786 r!7292))))))

(declare-fun b!5390905 () Bool)

(declare-fun tp!1492763 () Bool)

(declare-fun tp!1492754 () Bool)

(assert (=> b!5390905 (= e!3343249 (and tp!1492763 tp!1492754))))

(assert (= (and start!566474 res!2290764) b!5390882))

(assert (= (and b!5390882 res!2290756) b!5390890))

(assert (= (and b!5390890 res!2290765) b!5390898))

(assert (= (and b!5390898 (not res!2290754)) b!5390874))

(assert (= (and b!5390874 (not res!2290751)) b!5390867))

(assert (= (and b!5390867 (not res!2290762)) b!5390876))

(assert (= (and b!5390876 (not res!2290747)) b!5390885))

(assert (= (and b!5390885 (not res!2290771)) b!5390871))

(assert (= (and b!5390871 (not res!2290775)) b!5390893))

(assert (= (and b!5390893 (not res!2290761)) b!5390879))

(assert (= (and b!5390879 (not res!2290767)) b!5390897))

(assert (= (and b!5390897 c!939380) b!5390884))

(assert (= (and b!5390897 (not c!939380)) b!5390869))

(assert (= (and b!5390884 (not res!2290748)) b!5390900))

(assert (= (and b!5390897 (not res!2290766)) b!5390889))

(assert (= (and b!5390889 res!2290753) b!5390903))

(assert (= (and b!5390889 (not res!2290769)) b!5390899))

(assert (= (and b!5390899 (not res!2290774)) b!5390904))

(assert (= (and b!5390904 (not res!2290772)) b!5390878))

(assert (= (and b!5390878 (not res!2290758)) b!5390881))

(assert (= (and b!5390881 (not res!2290752)) b!5390883))

(assert (= (and b!5390883 (not res!2290773)) b!5390870))

(assert (= (and b!5390870 (not res!2290770)) b!5390873))

(assert (= (and b!5390873 (not res!2290763)) b!5390891))

(assert (= (and b!5390891 (not res!2290746)) b!5390892))

(assert (= (and b!5390892 (not res!2290750)) b!5390866))

(assert (= (and b!5390866 (not res!2290755)) b!5390875))

(assert (= (and b!5390875 (not res!2290768)) b!5390902))

(assert (= (and b!5390902 (not res!2290760)) b!5390877))

(assert (= (and b!5390877 res!2290759) b!5390887))

(assert (= (and b!5390877 (not res!2290749)) b!5390868))

(assert (= (and b!5390868 (not res!2290757)) b!5390896))

(assert (= start!566474 b!5390901))

(assert (= (and start!566474 ((_ is ElementMatch!15137) r!7292)) b!5390865))

(assert (= (and start!566474 ((_ is Concat!23982) r!7292)) b!5390886))

(assert (= (and start!566474 ((_ is Star!15137) r!7292)) b!5390888))

(assert (= (and start!566474 ((_ is Union!15137) r!7292)) b!5390905))

(assert (= (and start!566474 ((_ is Cons!61586) s!2326)) b!5390872))

(assert (= (and start!566474 condSetEmpty!35021) setIsEmpty!35021))

(assert (= (and start!566474 (not condSetEmpty!35021)) setNonEmpty!35021))

(assert (= setNonEmpty!35021 b!5390880))

(assert (= b!5390895 b!5390894))

(assert (= (and start!566474 ((_ is Cons!61588) zl!343)) b!5390895))

(declare-fun m!6416744 () Bool)

(assert (=> setNonEmpty!35021 m!6416744))

(declare-fun m!6416746 () Bool)

(assert (=> b!5390892 m!6416746))

(declare-fun m!6416748 () Bool)

(assert (=> b!5390890 m!6416748))

(declare-fun m!6416750 () Bool)

(assert (=> b!5390866 m!6416750))

(declare-fun m!6416752 () Bool)

(assert (=> b!5390866 m!6416752))

(declare-fun m!6416754 () Bool)

(assert (=> b!5390866 m!6416754))

(declare-fun m!6416756 () Bool)

(assert (=> start!566474 m!6416756))

(declare-fun m!6416758 () Bool)

(assert (=> start!566474 m!6416758))

(declare-fun m!6416760 () Bool)

(assert (=> b!5390904 m!6416760))

(declare-fun m!6416762 () Bool)

(assert (=> b!5390897 m!6416762))

(declare-fun m!6416764 () Bool)

(assert (=> b!5390897 m!6416764))

(declare-fun m!6416766 () Bool)

(assert (=> b!5390897 m!6416766))

(declare-fun m!6416768 () Bool)

(assert (=> b!5390897 m!6416768))

(declare-fun m!6416770 () Bool)

(assert (=> b!5390897 m!6416770))

(declare-fun m!6416772 () Bool)

(assert (=> b!5390897 m!6416772))

(declare-fun m!6416774 () Bool)

(assert (=> b!5390897 m!6416774))

(declare-fun m!6416776 () Bool)

(assert (=> b!5390874 m!6416776))

(declare-fun m!6416778 () Bool)

(assert (=> b!5390900 m!6416778))

(declare-fun m!6416780 () Bool)

(assert (=> b!5390885 m!6416780))

(assert (=> b!5390885 m!6416780))

(declare-fun m!6416782 () Bool)

(assert (=> b!5390885 m!6416782))

(declare-fun m!6416784 () Bool)

(assert (=> b!5390873 m!6416784))

(declare-fun m!6416786 () Bool)

(assert (=> b!5390893 m!6416786))

(declare-fun m!6416788 () Bool)

(assert (=> b!5390893 m!6416788))

(declare-fun m!6416790 () Bool)

(assert (=> b!5390893 m!6416790))

(declare-fun m!6416792 () Bool)

(assert (=> b!5390893 m!6416792))

(declare-fun m!6416794 () Bool)

(assert (=> b!5390893 m!6416794))

(assert (=> b!5390893 m!6416788))

(assert (=> b!5390893 m!6416792))

(declare-fun m!6416796 () Bool)

(assert (=> b!5390893 m!6416796))

(declare-fun m!6416798 () Bool)

(assert (=> b!5390882 m!6416798))

(declare-fun m!6416800 () Bool)

(assert (=> b!5390895 m!6416800))

(declare-fun m!6416802 () Bool)

(assert (=> b!5390903 m!6416802))

(declare-fun m!6416804 () Bool)

(assert (=> b!5390891 m!6416804))

(declare-fun m!6416806 () Bool)

(assert (=> b!5390891 m!6416806))

(declare-fun m!6416808 () Bool)

(assert (=> b!5390891 m!6416808))

(declare-fun m!6416810 () Bool)

(assert (=> b!5390891 m!6416810))

(declare-fun m!6416812 () Bool)

(assert (=> b!5390891 m!6416812))

(declare-fun m!6416814 () Bool)

(assert (=> b!5390891 m!6416814))

(declare-fun m!6416816 () Bool)

(assert (=> b!5390891 m!6416816))

(declare-fun m!6416818 () Bool)

(assert (=> b!5390891 m!6416818))

(declare-fun m!6416820 () Bool)

(assert (=> b!5390891 m!6416820))

(declare-fun m!6416822 () Bool)

(assert (=> b!5390881 m!6416822))

(declare-fun m!6416824 () Bool)

(assert (=> b!5390881 m!6416824))

(declare-fun m!6416826 () Bool)

(assert (=> b!5390898 m!6416826))

(declare-fun m!6416828 () Bool)

(assert (=> b!5390898 m!6416828))

(declare-fun m!6416830 () Bool)

(assert (=> b!5390898 m!6416830))

(declare-fun m!6416832 () Bool)

(assert (=> b!5390884 m!6416832))

(declare-fun m!6416834 () Bool)

(assert (=> b!5390884 m!6416834))

(declare-fun m!6416836 () Bool)

(assert (=> b!5390884 m!6416836))

(declare-fun m!6416838 () Bool)

(assert (=> b!5390867 m!6416838))

(assert (=> b!5390887 m!6416778))

(assert (=> b!5390877 m!6416834))

(declare-fun m!6416840 () Bool)

(assert (=> b!5390896 m!6416840))

(declare-fun m!6416842 () Bool)

(assert (=> b!5390875 m!6416842))

(declare-fun m!6416844 () Bool)

(assert (=> b!5390878 m!6416844))

(declare-fun m!6416846 () Bool)

(assert (=> b!5390878 m!6416846))

(declare-fun m!6416848 () Bool)

(assert (=> b!5390878 m!6416848))

(declare-fun m!6416850 () Bool)

(assert (=> b!5390878 m!6416850))

(declare-fun m!6416852 () Bool)

(assert (=> b!5390878 m!6416852))

(declare-fun m!6416854 () Bool)

(assert (=> b!5390879 m!6416854))

(check-sat (not b!5390896) (not b!5390903) tp_is_empty!39527 (not b!5390888) (not b!5390877) (not b!5390874) (not b!5390885) (not b!5390905) (not b!5390890) (not b!5390886) (not setNonEmpty!35021) (not b!5390897) (not b!5390904) (not b!5390901) (not b!5390879) (not b!5390895) (not b!5390898) (not b!5390875) (not b!5390880) (not b!5390900) (not b!5390893) (not b!5390878) (not b!5390873) (not b!5390884) (not b!5390887) (not start!566474) (not b!5390867) (not b!5390891) (not b!5390882) (not b!5390866) (not b!5390894) (not b!5390892) (not b!5390881) (not b!5390872))
(check-sat)
(get-model)

(declare-fun d!1723432 () Bool)

(assert (=> d!1723432 (= (isEmpty!33585 (t!374935 zl!343)) ((_ is Nil!61588) (t!374935 zl!343)))))

(assert (=> b!5390874 d!1723432))

(declare-fun bs!1247321 () Bool)

(declare-fun d!1723434 () Bool)

(assert (= bs!1247321 (and d!1723434 b!5390896)))

(declare-fun lambda!280020 () Int)

(assert (=> bs!1247321 (= lambda!280020 lambda!280017)))

(assert (=> d!1723434 (= (inv!81089 (h!68036 zl!343)) (forall!14515 (exprs!5021 (h!68036 zl!343)) lambda!280020))))

(declare-fun bs!1247322 () Bool)

(assert (= bs!1247322 d!1723434))

(declare-fun m!6416856 () Bool)

(assert (=> bs!1247322 m!6416856))

(assert (=> b!5390895 d!1723434))

(declare-fun d!1723436 () Bool)

(declare-fun lt!2196653 () Regex!15137)

(assert (=> d!1723436 (validRegex!6873 lt!2196653)))

(assert (=> d!1723436 (= lt!2196653 (generalisedUnion!1066 (unfocusZipperList!579 (Cons!61588 lt!2196636 Nil!61588))))))

(assert (=> d!1723436 (= (unfocusZipper!879 (Cons!61588 lt!2196636 Nil!61588)) lt!2196653)))

(declare-fun bs!1247323 () Bool)

(assert (= bs!1247323 d!1723436))

(declare-fun m!6416858 () Bool)

(assert (=> bs!1247323 m!6416858))

(declare-fun m!6416860 () Bool)

(assert (=> bs!1247323 m!6416860))

(assert (=> bs!1247323 m!6416860))

(declare-fun m!6416862 () Bool)

(assert (=> bs!1247323 m!6416862))

(assert (=> b!5390873 d!1723436))

(declare-fun d!1723438 () Bool)

(declare-fun c!939384 () Bool)

(declare-fun isEmpty!33588 (List!61710) Bool)

(assert (=> d!1723438 (= c!939384 (isEmpty!33588 s!2326))))

(declare-fun e!3343265 () Bool)

(assert (=> d!1723438 (= (matchZipper!1381 z!1189 s!2326) e!3343265)))

(declare-fun b!5390916 () Bool)

(declare-fun nullableZipper!1421 ((InoxSet Context!9042)) Bool)

(assert (=> b!5390916 (= e!3343265 (nullableZipper!1421 z!1189))))

(declare-fun b!5390917 () Bool)

(declare-fun head!11561 (List!61710) C!30544)

(declare-fun tail!10658 (List!61710) List!61710)

(assert (=> b!5390917 (= e!3343265 (matchZipper!1381 (derivationStepZipper!1376 z!1189 (head!11561 s!2326)) (tail!10658 s!2326)))))

(assert (= (and d!1723438 c!939384) b!5390916))

(assert (= (and d!1723438 (not c!939384)) b!5390917))

(declare-fun m!6416864 () Bool)

(assert (=> d!1723438 m!6416864))

(declare-fun m!6416866 () Bool)

(assert (=> b!5390916 m!6416866))

(declare-fun m!6416868 () Bool)

(assert (=> b!5390917 m!6416868))

(assert (=> b!5390917 m!6416868))

(declare-fun m!6416870 () Bool)

(assert (=> b!5390917 m!6416870))

(declare-fun m!6416872 () Bool)

(assert (=> b!5390917 m!6416872))

(assert (=> b!5390917 m!6416870))

(assert (=> b!5390917 m!6416872))

(declare-fun m!6416874 () Bool)

(assert (=> b!5390917 m!6416874))

(assert (=> b!5390875 d!1723438))

(declare-fun d!1723440 () Bool)

(declare-fun res!2290780 () Bool)

(declare-fun e!3343270 () Bool)

(assert (=> d!1723440 (=> res!2290780 e!3343270)))

(assert (=> d!1723440 (= res!2290780 ((_ is Nil!61587) (exprs!5021 c!324)))))

(assert (=> d!1723440 (= (forall!14515 (exprs!5021 c!324) lambda!280017) e!3343270)))

(declare-fun b!5390922 () Bool)

(declare-fun e!3343271 () Bool)

(assert (=> b!5390922 (= e!3343270 e!3343271)))

(declare-fun res!2290781 () Bool)

(assert (=> b!5390922 (=> (not res!2290781) (not e!3343271))))

(declare-fun dynLambda!24282 (Int Regex!15137) Bool)

(assert (=> b!5390922 (= res!2290781 (dynLambda!24282 lambda!280017 (h!68035 (exprs!5021 c!324))))))

(declare-fun b!5390923 () Bool)

(assert (=> b!5390923 (= e!3343271 (forall!14515 (t!374934 (exprs!5021 c!324)) lambda!280017))))

(assert (= (and d!1723440 (not res!2290780)) b!5390922))

(assert (= (and b!5390922 res!2290781) b!5390923))

(declare-fun b_lambda!206221 () Bool)

(assert (=> (not b_lambda!206221) (not b!5390922)))

(declare-fun m!6416876 () Bool)

(assert (=> b!5390922 m!6416876))

(declare-fun m!6416878 () Bool)

(assert (=> b!5390923 m!6416878))

(assert (=> b!5390896 d!1723440))

(declare-fun d!1723442 () Bool)

(declare-fun lt!2196654 () Regex!15137)

(assert (=> d!1723442 (validRegex!6873 lt!2196654)))

(assert (=> d!1723442 (= lt!2196654 (generalisedUnion!1066 (unfocusZipperList!579 (Cons!61588 lt!2196628 Nil!61588))))))

(assert (=> d!1723442 (= (unfocusZipper!879 (Cons!61588 lt!2196628 Nil!61588)) lt!2196654)))

(declare-fun bs!1247324 () Bool)

(assert (= bs!1247324 d!1723442))

(declare-fun m!6416880 () Bool)

(assert (=> bs!1247324 m!6416880))

(declare-fun m!6416882 () Bool)

(assert (=> bs!1247324 m!6416882))

(assert (=> bs!1247324 m!6416882))

(declare-fun m!6416884 () Bool)

(assert (=> bs!1247324 m!6416884))

(assert (=> b!5390892 d!1723442))

(declare-fun b!5390984 () Bool)

(declare-fun res!2290819 () Bool)

(declare-fun e!3343306 () Bool)

(assert (=> b!5390984 (=> (not res!2290819) (not e!3343306))))

(declare-fun lt!2196666 () Option!15248)

(declare-fun get!21213 (Option!15248) tuple2!64672)

(assert (=> b!5390984 (= res!2290819 (matchR!7322 (regTwo!30786 r!7292) (_2!35639 (get!21213 lt!2196666))))))

(declare-fun b!5390985 () Bool)

(declare-fun lt!2196665 () Unit!154070)

(declare-fun lt!2196664 () Unit!154070)

(assert (=> b!5390985 (= lt!2196665 lt!2196664)))

(declare-fun ++!13457 (List!61710 List!61710) List!61710)

(assert (=> b!5390985 (= (++!13457 (++!13457 Nil!61586 (Cons!61586 (h!68034 s!2326) Nil!61586)) (t!374933 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1816 (List!61710 C!30544 List!61710 List!61710) Unit!154070)

(assert (=> b!5390985 (= lt!2196664 (lemmaMoveElementToOtherListKeepsConcatEq!1816 Nil!61586 (h!68034 s!2326) (t!374933 s!2326) s!2326))))

(declare-fun e!3343303 () Option!15248)

(assert (=> b!5390985 (= e!3343303 (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) (++!13457 Nil!61586 (Cons!61586 (h!68034 s!2326) Nil!61586)) (t!374933 s!2326) s!2326))))

(declare-fun b!5390986 () Bool)

(assert (=> b!5390986 (= e!3343306 (= (++!13457 (_1!35639 (get!21213 lt!2196666)) (_2!35639 (get!21213 lt!2196666))) s!2326))))

(declare-fun d!1723444 () Bool)

(declare-fun e!3343305 () Bool)

(assert (=> d!1723444 e!3343305))

(declare-fun res!2290816 () Bool)

(assert (=> d!1723444 (=> res!2290816 e!3343305)))

(assert (=> d!1723444 (= res!2290816 e!3343306)))

(declare-fun res!2290818 () Bool)

(assert (=> d!1723444 (=> (not res!2290818) (not e!3343306))))

(assert (=> d!1723444 (= res!2290818 (isDefined!11951 lt!2196666))))

(declare-fun e!3343307 () Option!15248)

(assert (=> d!1723444 (= lt!2196666 e!3343307)))

(declare-fun c!939398 () Bool)

(declare-fun e!3343304 () Bool)

(assert (=> d!1723444 (= c!939398 e!3343304)))

(declare-fun res!2290820 () Bool)

(assert (=> d!1723444 (=> (not res!2290820) (not e!3343304))))

(assert (=> d!1723444 (= res!2290820 (matchR!7322 (regOne!30786 r!7292) Nil!61586))))

(assert (=> d!1723444 (validRegex!6873 (regOne!30786 r!7292))))

(assert (=> d!1723444 (= (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) Nil!61586 s!2326 s!2326) lt!2196666)))

(declare-fun b!5390987 () Bool)

(assert (=> b!5390987 (= e!3343307 (Some!15247 (tuple2!64673 Nil!61586 s!2326)))))

(declare-fun b!5390988 () Bool)

(assert (=> b!5390988 (= e!3343304 (matchR!7322 (regTwo!30786 r!7292) s!2326))))

(declare-fun b!5390989 () Bool)

(declare-fun res!2290817 () Bool)

(assert (=> b!5390989 (=> (not res!2290817) (not e!3343306))))

(assert (=> b!5390989 (= res!2290817 (matchR!7322 (regOne!30786 r!7292) (_1!35639 (get!21213 lt!2196666))))))

(declare-fun b!5390990 () Bool)

(assert (=> b!5390990 (= e!3343307 e!3343303)))

(declare-fun c!939399 () Bool)

(assert (=> b!5390990 (= c!939399 ((_ is Nil!61586) s!2326))))

(declare-fun b!5390991 () Bool)

(assert (=> b!5390991 (= e!3343305 (not (isDefined!11951 lt!2196666)))))

(declare-fun b!5390992 () Bool)

(assert (=> b!5390992 (= e!3343303 None!15247)))

(assert (= (and d!1723444 res!2290820) b!5390988))

(assert (= (and d!1723444 c!939398) b!5390987))

(assert (= (and d!1723444 (not c!939398)) b!5390990))

(assert (= (and b!5390990 c!939399) b!5390992))

(assert (= (and b!5390990 (not c!939399)) b!5390985))

(assert (= (and d!1723444 res!2290818) b!5390989))

(assert (= (and b!5390989 res!2290817) b!5390984))

(assert (= (and b!5390984 res!2290819) b!5390986))

(assert (= (and d!1723444 (not res!2290816)) b!5390991))

(declare-fun m!6416902 () Bool)

(assert (=> b!5390988 m!6416902))

(declare-fun m!6416904 () Bool)

(assert (=> b!5390984 m!6416904))

(declare-fun m!6416906 () Bool)

(assert (=> b!5390984 m!6416906))

(declare-fun m!6416908 () Bool)

(assert (=> b!5390985 m!6416908))

(assert (=> b!5390985 m!6416908))

(declare-fun m!6416910 () Bool)

(assert (=> b!5390985 m!6416910))

(declare-fun m!6416912 () Bool)

(assert (=> b!5390985 m!6416912))

(assert (=> b!5390985 m!6416908))

(declare-fun m!6416914 () Bool)

(assert (=> b!5390985 m!6416914))

(declare-fun m!6416916 () Bool)

(assert (=> b!5390991 m!6416916))

(assert (=> b!5390989 m!6416904))

(declare-fun m!6416918 () Bool)

(assert (=> b!5390989 m!6416918))

(assert (=> d!1723444 m!6416916))

(declare-fun m!6416920 () Bool)

(assert (=> d!1723444 m!6416920))

(declare-fun m!6416922 () Bool)

(assert (=> d!1723444 m!6416922))

(assert (=> b!5390986 m!6416904))

(declare-fun m!6416924 () Bool)

(assert (=> b!5390986 m!6416924))

(assert (=> b!5390893 d!1723444))

(declare-fun d!1723450 () Bool)

(declare-fun choose!40552 (Int) Bool)

(assert (=> d!1723450 (= (Exists!2318 lambda!280015) (choose!40552 lambda!280015))))

(declare-fun bs!1247325 () Bool)

(assert (= bs!1247325 d!1723450))

(declare-fun m!6416926 () Bool)

(assert (=> bs!1247325 m!6416926))

(assert (=> b!5390893 d!1723450))

(declare-fun d!1723452 () Bool)

(assert (=> d!1723452 (= (Exists!2318 lambda!280014) (choose!40552 lambda!280014))))

(declare-fun bs!1247326 () Bool)

(assert (= bs!1247326 d!1723452))

(declare-fun m!6416928 () Bool)

(assert (=> bs!1247326 m!6416928))

(assert (=> b!5390893 d!1723452))

(declare-fun bs!1247330 () Bool)

(declare-fun d!1723454 () Bool)

(assert (= bs!1247330 (and d!1723454 b!5390893)))

(declare-fun lambda!280029 () Int)

(assert (=> bs!1247330 (= lambda!280029 lambda!280014)))

(assert (=> bs!1247330 (not (= lambda!280029 lambda!280015))))

(assert (=> d!1723454 true))

(assert (=> d!1723454 true))

(assert (=> d!1723454 true))

(assert (=> d!1723454 (= (isDefined!11951 (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) Nil!61586 s!2326 s!2326)) (Exists!2318 lambda!280029))))

(declare-fun lt!2196669 () Unit!154070)

(declare-fun choose!40554 (Regex!15137 Regex!15137 List!61710) Unit!154070)

(assert (=> d!1723454 (= lt!2196669 (choose!40554 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326))))

(assert (=> d!1723454 (validRegex!6873 (regOne!30786 r!7292))))

(assert (=> d!1723454 (= (lemmaFindConcatSeparationEquivalentToExists!1426 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326) lt!2196669)))

(declare-fun bs!1247331 () Bool)

(assert (= bs!1247331 d!1723454))

(declare-fun m!6416936 () Bool)

(assert (=> bs!1247331 m!6416936))

(assert (=> bs!1247331 m!6416788))

(assert (=> bs!1247331 m!6416788))

(assert (=> bs!1247331 m!6416790))

(declare-fun m!6416938 () Bool)

(assert (=> bs!1247331 m!6416938))

(assert (=> bs!1247331 m!6416922))

(assert (=> b!5390893 d!1723454))

(declare-fun bs!1247346 () Bool)

(declare-fun d!1723458 () Bool)

(assert (= bs!1247346 (and d!1723458 b!5390893)))

(declare-fun lambda!280036 () Int)

(assert (=> bs!1247346 (= lambda!280036 lambda!280014)))

(assert (=> bs!1247346 (not (= lambda!280036 lambda!280015))))

(declare-fun bs!1247347 () Bool)

(assert (= bs!1247347 (and d!1723458 d!1723454)))

(assert (=> bs!1247347 (= lambda!280036 lambda!280029)))

(assert (=> d!1723458 true))

(assert (=> d!1723458 true))

(assert (=> d!1723458 true))

(declare-fun lambda!280037 () Int)

(assert (=> bs!1247346 (not (= lambda!280037 lambda!280014))))

(assert (=> bs!1247346 (= lambda!280037 lambda!280015)))

(assert (=> bs!1247347 (not (= lambda!280037 lambda!280029))))

(declare-fun bs!1247348 () Bool)

(assert (= bs!1247348 d!1723458))

(assert (=> bs!1247348 (not (= lambda!280037 lambda!280036))))

(assert (=> d!1723458 true))

(assert (=> d!1723458 true))

(assert (=> d!1723458 true))

(assert (=> d!1723458 (= (Exists!2318 lambda!280036) (Exists!2318 lambda!280037))))

(declare-fun lt!2196684 () Unit!154070)

(declare-fun choose!40555 (Regex!15137 Regex!15137 List!61710) Unit!154070)

(assert (=> d!1723458 (= lt!2196684 (choose!40555 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326))))

(assert (=> d!1723458 (validRegex!6873 (regOne!30786 r!7292))))

(assert (=> d!1723458 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!972 (regOne!30786 r!7292) (regTwo!30786 r!7292) s!2326) lt!2196684)))

(declare-fun m!6416998 () Bool)

(assert (=> bs!1247348 m!6416998))

(declare-fun m!6417000 () Bool)

(assert (=> bs!1247348 m!6417000))

(declare-fun m!6417002 () Bool)

(assert (=> bs!1247348 m!6417002))

(assert (=> bs!1247348 m!6416922))

(assert (=> b!5390893 d!1723458))

(declare-fun d!1723486 () Bool)

(declare-fun isEmpty!33589 (Option!15248) Bool)

(assert (=> d!1723486 (= (isDefined!11951 (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) Nil!61586 s!2326 s!2326)) (not (isEmpty!33589 (findConcatSeparation!1662 (regOne!30786 r!7292) (regTwo!30786 r!7292) Nil!61586 s!2326 s!2326))))))

(declare-fun bs!1247349 () Bool)

(assert (= bs!1247349 d!1723486))

(assert (=> bs!1247349 m!6416788))

(declare-fun m!6417004 () Bool)

(assert (=> bs!1247349 m!6417004))

(assert (=> b!5390893 d!1723486))

(declare-fun d!1723488 () Bool)

(assert (=> d!1723488 (= (isEmpty!33586 (t!374934 (exprs!5021 (h!68036 zl!343)))) ((_ is Nil!61587) (t!374934 (exprs!5021 (h!68036 zl!343)))))))

(assert (=> b!5390879 d!1723488))

(declare-fun d!1723490 () Bool)

(declare-fun c!939430 () Bool)

(assert (=> d!1723490 (= c!939430 (isEmpty!33588 (t!374933 s!2326)))))

(declare-fun e!3343368 () Bool)

(assert (=> d!1723490 (= (matchZipper!1381 lt!2196617 (t!374933 s!2326)) e!3343368)))

(declare-fun b!5391099 () Bool)

(assert (=> b!5391099 (= e!3343368 (nullableZipper!1421 lt!2196617))))

(declare-fun b!5391100 () Bool)

(assert (=> b!5391100 (= e!3343368 (matchZipper!1381 (derivationStepZipper!1376 lt!2196617 (head!11561 (t!374933 s!2326))) (tail!10658 (t!374933 s!2326))))))

(assert (= (and d!1723490 c!939430) b!5391099))

(assert (= (and d!1723490 (not c!939430)) b!5391100))

(declare-fun m!6417006 () Bool)

(assert (=> d!1723490 m!6417006))

(declare-fun m!6417008 () Bool)

(assert (=> b!5391099 m!6417008))

(declare-fun m!6417010 () Bool)

(assert (=> b!5391100 m!6417010))

(assert (=> b!5391100 m!6417010))

(declare-fun m!6417012 () Bool)

(assert (=> b!5391100 m!6417012))

(declare-fun m!6417014 () Bool)

(assert (=> b!5391100 m!6417014))

(assert (=> b!5391100 m!6417012))

(assert (=> b!5391100 m!6417014))

(declare-fun m!6417016 () Bool)

(assert (=> b!5391100 m!6417016))

(assert (=> b!5390900 d!1723490))

(declare-fun bs!1247358 () Bool)

(declare-fun b!5391216 () Bool)

(assert (= bs!1247358 (and b!5391216 d!1723458)))

(declare-fun lambda!280047 () Int)

(assert (=> bs!1247358 (not (= lambda!280047 lambda!280036))))

(declare-fun bs!1247359 () Bool)

(assert (= bs!1247359 (and b!5391216 d!1723454)))

(assert (=> bs!1247359 (not (= lambda!280047 lambda!280029))))

(assert (=> bs!1247358 (not (= lambda!280047 lambda!280037))))

(declare-fun bs!1247361 () Bool)

(assert (= bs!1247361 (and b!5391216 b!5390893)))

(assert (=> bs!1247361 (not (= lambda!280047 lambda!280015))))

(assert (=> bs!1247361 (not (= lambda!280047 lambda!280014))))

(assert (=> b!5391216 true))

(assert (=> b!5391216 true))

(declare-fun bs!1247362 () Bool)

(declare-fun b!5391224 () Bool)

(assert (= bs!1247362 (and b!5391224 b!5391216)))

(declare-fun lambda!280049 () Int)

(assert (=> bs!1247362 (not (= lambda!280049 lambda!280047))))

(declare-fun bs!1247363 () Bool)

(assert (= bs!1247363 (and b!5391224 d!1723458)))

(assert (=> bs!1247363 (not (= lambda!280049 lambda!280036))))

(declare-fun bs!1247364 () Bool)

(assert (= bs!1247364 (and b!5391224 d!1723454)))

(assert (=> bs!1247364 (not (= lambda!280049 lambda!280029))))

(assert (=> bs!1247363 (= lambda!280049 lambda!280037)))

(declare-fun bs!1247366 () Bool)

(assert (= bs!1247366 (and b!5391224 b!5390893)))

(assert (=> bs!1247366 (= lambda!280049 lambda!280015)))

(assert (=> bs!1247366 (not (= lambda!280049 lambda!280014))))

(assert (=> b!5391224 true))

(assert (=> b!5391224 true))

(declare-fun b!5391215 () Bool)

(declare-fun res!2290898 () Bool)

(declare-fun e!3343437 () Bool)

(assert (=> b!5391215 (=> res!2290898 e!3343437)))

(declare-fun call!385887 () Bool)

(assert (=> b!5391215 (= res!2290898 call!385887)))

(declare-fun e!3343436 () Bool)

(assert (=> b!5391215 (= e!3343436 e!3343437)))

(declare-fun call!385888 () Bool)

(assert (=> b!5391216 (= e!3343437 call!385888)))

(declare-fun b!5391217 () Bool)

(declare-fun e!3343435 () Bool)

(declare-fun e!3343434 () Bool)

(assert (=> b!5391217 (= e!3343435 e!3343434)))

(declare-fun res!2290899 () Bool)

(assert (=> b!5391217 (= res!2290899 (not ((_ is EmptyLang!15137) r!7292)))))

(assert (=> b!5391217 (=> (not res!2290899) (not e!3343434))))

(declare-fun b!5391218 () Bool)

(declare-fun e!3343438 () Bool)

(assert (=> b!5391218 (= e!3343438 (= s!2326 (Cons!61586 (c!939381 r!7292) Nil!61586)))))

(declare-fun b!5391219 () Bool)

(assert (=> b!5391219 (= e!3343435 call!385887)))

(declare-fun b!5391220 () Bool)

(declare-fun c!939474 () Bool)

(assert (=> b!5391220 (= c!939474 ((_ is Union!15137) r!7292))))

(declare-fun e!3343439 () Bool)

(assert (=> b!5391220 (= e!3343438 e!3343439)))

(declare-fun d!1723492 () Bool)

(declare-fun c!939475 () Bool)

(assert (=> d!1723492 (= c!939475 ((_ is EmptyExpr!15137) r!7292))))

(assert (=> d!1723492 (= (matchRSpec!2240 r!7292 s!2326) e!3343435)))

(declare-fun b!5391221 () Bool)

(declare-fun e!3343440 () Bool)

(assert (=> b!5391221 (= e!3343439 e!3343440)))

(declare-fun res!2290897 () Bool)

(assert (=> b!5391221 (= res!2290897 (matchRSpec!2240 (regOne!30787 r!7292) s!2326))))

(assert (=> b!5391221 (=> res!2290897 e!3343440)))

(declare-fun bm!385882 () Bool)

(assert (=> bm!385882 (= call!385887 (isEmpty!33588 s!2326))))

(declare-fun b!5391222 () Bool)

(assert (=> b!5391222 (= e!3343440 (matchRSpec!2240 (regTwo!30787 r!7292) s!2326))))

(declare-fun b!5391223 () Bool)

(assert (=> b!5391223 (= e!3343439 e!3343436)))

(declare-fun c!939477 () Bool)

(assert (=> b!5391223 (= c!939477 ((_ is Star!15137) r!7292))))

(assert (=> b!5391224 (= e!3343436 call!385888)))

(declare-fun bm!385883 () Bool)

(assert (=> bm!385883 (= call!385888 (Exists!2318 (ite c!939477 lambda!280047 lambda!280049)))))

(declare-fun b!5391225 () Bool)

(declare-fun c!939476 () Bool)

(assert (=> b!5391225 (= c!939476 ((_ is ElementMatch!15137) r!7292))))

(assert (=> b!5391225 (= e!3343434 e!3343438)))

(assert (= (and d!1723492 c!939475) b!5391219))

(assert (= (and d!1723492 (not c!939475)) b!5391217))

(assert (= (and b!5391217 res!2290899) b!5391225))

(assert (= (and b!5391225 c!939476) b!5391218))

(assert (= (and b!5391225 (not c!939476)) b!5391220))

(assert (= (and b!5391220 c!939474) b!5391221))

(assert (= (and b!5391220 (not c!939474)) b!5391223))

(assert (= (and b!5391221 (not res!2290897)) b!5391222))

(assert (= (and b!5391223 c!939477) b!5391215))

(assert (= (and b!5391223 (not c!939477)) b!5391224))

(assert (= (and b!5391215 (not res!2290898)) b!5391216))

(assert (= (or b!5391216 b!5391224) bm!385883))

(assert (= (or b!5391219 b!5391215) bm!385882))

(declare-fun m!6417116 () Bool)

(assert (=> b!5391221 m!6417116))

(assert (=> bm!385882 m!6416864))

(declare-fun m!6417118 () Bool)

(assert (=> b!5391222 m!6417118))

(declare-fun m!6417120 () Bool)

(assert (=> bm!385883 m!6417120))

(assert (=> b!5390898 d!1723492))

(declare-fun b!5391311 () Bool)

(declare-fun e!3343490 () Bool)

(declare-fun derivativeStep!4243 (Regex!15137 C!30544) Regex!15137)

(assert (=> b!5391311 (= e!3343490 (matchR!7322 (derivativeStep!4243 r!7292 (head!11561 s!2326)) (tail!10658 s!2326)))))

(declare-fun b!5391312 () Bool)

(declare-fun e!3343489 () Bool)

(assert (=> b!5391312 (= e!3343489 (= (head!11561 s!2326) (c!939381 r!7292)))))

(declare-fun b!5391313 () Bool)

(declare-fun e!3343492 () Bool)

(declare-fun e!3343493 () Bool)

(assert (=> b!5391313 (= e!3343492 e!3343493)))

(declare-fun c!939509 () Bool)

(assert (=> b!5391313 (= c!939509 ((_ is EmptyLang!15137) r!7292))))

(declare-fun b!5391314 () Bool)

(declare-fun e!3343488 () Bool)

(declare-fun e!3343494 () Bool)

(assert (=> b!5391314 (= e!3343488 e!3343494)))

(declare-fun res!2290932 () Bool)

(assert (=> b!5391314 (=> (not res!2290932) (not e!3343494))))

(declare-fun lt!2196702 () Bool)

(assert (=> b!5391314 (= res!2290932 (not lt!2196702))))

(declare-fun b!5391315 () Bool)

(declare-fun res!2290926 () Bool)

(declare-fun e!3343491 () Bool)

(assert (=> b!5391315 (=> res!2290926 e!3343491)))

(assert (=> b!5391315 (= res!2290926 (not (isEmpty!33588 (tail!10658 s!2326))))))

(declare-fun b!5391316 () Bool)

(declare-fun res!2290931 () Bool)

(assert (=> b!5391316 (=> (not res!2290931) (not e!3343489))))

(assert (=> b!5391316 (= res!2290931 (isEmpty!33588 (tail!10658 s!2326)))))

(declare-fun b!5391317 () Bool)

(declare-fun call!385897 () Bool)

(assert (=> b!5391317 (= e!3343492 (= lt!2196702 call!385897))))

(declare-fun b!5391318 () Bool)

(assert (=> b!5391318 (= e!3343493 (not lt!2196702))))

(declare-fun d!1723530 () Bool)

(assert (=> d!1723530 e!3343492))

(declare-fun c!939508 () Bool)

(assert (=> d!1723530 (= c!939508 ((_ is EmptyExpr!15137) r!7292))))

(assert (=> d!1723530 (= lt!2196702 e!3343490)))

(declare-fun c!939510 () Bool)

(assert (=> d!1723530 (= c!939510 (isEmpty!33588 s!2326))))

(assert (=> d!1723530 (validRegex!6873 r!7292)))

(assert (=> d!1723530 (= (matchR!7322 r!7292 s!2326) lt!2196702)))

(declare-fun b!5391319 () Bool)

(declare-fun res!2290930 () Bool)

(assert (=> b!5391319 (=> res!2290930 e!3343488)))

(assert (=> b!5391319 (= res!2290930 (not ((_ is ElementMatch!15137) r!7292)))))

(assert (=> b!5391319 (= e!3343493 e!3343488)))

(declare-fun b!5391320 () Bool)

(assert (=> b!5391320 (= e!3343490 (nullable!5306 r!7292))))

(declare-fun bm!385892 () Bool)

(assert (=> bm!385892 (= call!385897 (isEmpty!33588 s!2326))))

(declare-fun b!5391321 () Bool)

(assert (=> b!5391321 (= e!3343494 e!3343491)))

(declare-fun res!2290927 () Bool)

(assert (=> b!5391321 (=> res!2290927 e!3343491)))

(assert (=> b!5391321 (= res!2290927 call!385897)))

(declare-fun b!5391322 () Bool)

(declare-fun res!2290929 () Bool)

(assert (=> b!5391322 (=> res!2290929 e!3343488)))

(assert (=> b!5391322 (= res!2290929 e!3343489)))

(declare-fun res!2290925 () Bool)

(assert (=> b!5391322 (=> (not res!2290925) (not e!3343489))))

(assert (=> b!5391322 (= res!2290925 lt!2196702)))

(declare-fun b!5391323 () Bool)

(declare-fun res!2290928 () Bool)

(assert (=> b!5391323 (=> (not res!2290928) (not e!3343489))))

(assert (=> b!5391323 (= res!2290928 (not call!385897))))

(declare-fun b!5391324 () Bool)

(assert (=> b!5391324 (= e!3343491 (not (= (head!11561 s!2326) (c!939381 r!7292))))))

(assert (= (and d!1723530 c!939510) b!5391320))

(assert (= (and d!1723530 (not c!939510)) b!5391311))

(assert (= (and d!1723530 c!939508) b!5391317))

(assert (= (and d!1723530 (not c!939508)) b!5391313))

(assert (= (and b!5391313 c!939509) b!5391318))

(assert (= (and b!5391313 (not c!939509)) b!5391319))

(assert (= (and b!5391319 (not res!2290930)) b!5391322))

(assert (= (and b!5391322 res!2290925) b!5391323))

(assert (= (and b!5391323 res!2290928) b!5391316))

(assert (= (and b!5391316 res!2290931) b!5391312))

(assert (= (and b!5391322 (not res!2290929)) b!5391314))

(assert (= (and b!5391314 res!2290932) b!5391321))

(assert (= (and b!5391321 (not res!2290927)) b!5391315))

(assert (= (and b!5391315 (not res!2290926)) b!5391324))

(assert (= (or b!5391317 b!5391321 b!5391323) bm!385892))

(assert (=> b!5391324 m!6416868))

(assert (=> bm!385892 m!6416864))

(declare-fun m!6417150 () Bool)

(assert (=> b!5391320 m!6417150))

(assert (=> b!5391316 m!6416872))

(assert (=> b!5391316 m!6416872))

(declare-fun m!6417154 () Bool)

(assert (=> b!5391316 m!6417154))

(assert (=> b!5391312 m!6416868))

(assert (=> b!5391311 m!6416868))

(assert (=> b!5391311 m!6416868))

(declare-fun m!6417156 () Bool)

(assert (=> b!5391311 m!6417156))

(assert (=> b!5391311 m!6416872))

(assert (=> b!5391311 m!6417156))

(assert (=> b!5391311 m!6416872))

(declare-fun m!6417158 () Bool)

(assert (=> b!5391311 m!6417158))

(assert (=> b!5391315 m!6416872))

(assert (=> b!5391315 m!6416872))

(assert (=> b!5391315 m!6417154))

(assert (=> d!1723530 m!6416864))

(assert (=> d!1723530 m!6416756))

(assert (=> b!5390898 d!1723530))

(declare-fun d!1723538 () Bool)

(assert (=> d!1723538 (= (matchR!7322 r!7292 s!2326) (matchRSpec!2240 r!7292 s!2326))))

(declare-fun lt!2196705 () Unit!154070)

(declare-fun choose!40557 (Regex!15137 List!61710) Unit!154070)

(assert (=> d!1723538 (= lt!2196705 (choose!40557 r!7292 s!2326))))

(assert (=> d!1723538 (validRegex!6873 r!7292)))

(assert (=> d!1723538 (= (mainMatchTheorem!2240 r!7292 s!2326) lt!2196705)))

(declare-fun bs!1247378 () Bool)

(assert (= bs!1247378 d!1723538))

(assert (=> bs!1247378 m!6416828))

(assert (=> bs!1247378 m!6416826))

(declare-fun m!6417170 () Bool)

(assert (=> bs!1247378 m!6417170))

(assert (=> bs!1247378 m!6416756))

(assert (=> b!5390898 d!1723538))

(declare-fun d!1723546 () Bool)

(declare-fun c!939517 () Bool)

(declare-fun e!3343503 () Bool)

(assert (=> d!1723546 (= c!939517 e!3343503)))

(declare-fun res!2290935 () Bool)

(assert (=> d!1723546 (=> (not res!2290935) (not e!3343503))))

(assert (=> d!1723546 (= res!2290935 ((_ is Cons!61587) (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343))))))))))

(declare-fun e!3343504 () (InoxSet Context!9042))

(assert (=> d!1723546 (= (derivationStepZipperUp!509 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343))))) (h!68034 s!2326)) e!3343504)))

(declare-fun bm!385895 () Bool)

(declare-fun call!385900 () (InoxSet Context!9042))

(assert (=> bm!385895 (= call!385900 (derivationStepZipperDown!585 (h!68035 (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343))))))) (Context!9043 (t!374934 (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343)))))))) (h!68034 s!2326)))))

(declare-fun b!5391339 () Bool)

(assert (=> b!5391339 (= e!3343504 ((_ map or) call!385900 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343)))))))) (h!68034 s!2326))))))

(declare-fun b!5391340 () Bool)

(assert (=> b!5391340 (= e!3343503 (nullable!5306 (h!68035 (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343)))))))))))

(declare-fun b!5391341 () Bool)

(declare-fun e!3343505 () (InoxSet Context!9042))

(assert (=> b!5391341 (= e!3343504 e!3343505)))

(declare-fun c!939518 () Bool)

(assert (=> b!5391341 (= c!939518 ((_ is Cons!61587) (exprs!5021 (Context!9043 (Cons!61587 (h!68035 (exprs!5021 (h!68036 zl!343))) (t!374934 (exprs!5021 (h!68036 zl!343))))))))))

(declare-fun b!5391342 () Bool)

(assert (=> b!5391342 (= e!3343505 call!385900)))

(declare-fun b!5391343 () Bool)

(assert (=> b!5391343 (= e!3343505 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723546 res!2290935) b!5391340))

(assert (= (and d!1723546 c!939517) b!5391339))

(assert (= (and d!1723546 (not c!939517)) b!5391341))

(assert (= (and b!5391341 c!939518) b!5391342))

(assert (= (and b!5391341 (not c!939518)) b!5391343))

(assert (= (or b!5391339 b!5391342) bm!385895))

(declare-fun m!6417172 () Bool)

(assert (=> bm!385895 m!6417172))

(declare-fun m!6417174 () Bool)

(assert (=> b!5391339 m!6417174))

(declare-fun m!6417176 () Bool)

(assert (=> b!5391340 m!6417176))

(assert (=> b!5390897 d!1723546))

(declare-fun d!1723548 () Bool)

(declare-fun choose!40558 ((InoxSet Context!9042) Int) (InoxSet Context!9042))

(assert (=> d!1723548 (= (flatMap!864 z!1189 lambda!280016) (choose!40558 z!1189 lambda!280016))))

(declare-fun bs!1247379 () Bool)

(assert (= bs!1247379 d!1723548))

(declare-fun m!6417178 () Bool)

(assert (=> bs!1247379 m!6417178))

(assert (=> b!5390897 d!1723548))

(declare-fun d!1723550 () Bool)

(declare-fun c!939519 () Bool)

(declare-fun e!3343506 () Bool)

(assert (=> d!1723550 (= c!939519 e!3343506)))

(declare-fun res!2290936 () Bool)

(assert (=> d!1723550 (=> (not res!2290936) (not e!3343506))))

(assert (=> d!1723550 (= res!2290936 ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343))))))

(declare-fun e!3343507 () (InoxSet Context!9042))

(assert (=> d!1723550 (= (derivationStepZipperUp!509 (h!68036 zl!343) (h!68034 s!2326)) e!3343507)))

(declare-fun bm!385896 () Bool)

(declare-fun call!385901 () (InoxSet Context!9042))

(assert (=> bm!385896 (= call!385901 (derivationStepZipperDown!585 (h!68035 (exprs!5021 (h!68036 zl!343))) (Context!9043 (t!374934 (exprs!5021 (h!68036 zl!343)))) (h!68034 s!2326)))))

(declare-fun b!5391344 () Bool)

(assert (=> b!5391344 (= e!3343507 ((_ map or) call!385901 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 (h!68036 zl!343)))) (h!68034 s!2326))))))

(declare-fun b!5391345 () Bool)

(assert (=> b!5391345 (= e!3343506 (nullable!5306 (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5391346 () Bool)

(declare-fun e!3343508 () (InoxSet Context!9042))

(assert (=> b!5391346 (= e!3343507 e!3343508)))

(declare-fun c!939520 () Bool)

(assert (=> b!5391346 (= c!939520 ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343))))))

(declare-fun b!5391347 () Bool)

(assert (=> b!5391347 (= e!3343508 call!385901)))

(declare-fun b!5391348 () Bool)

(assert (=> b!5391348 (= e!3343508 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723550 res!2290936) b!5391345))

(assert (= (and d!1723550 c!939519) b!5391344))

(assert (= (and d!1723550 (not c!939519)) b!5391346))

(assert (= (and b!5391346 c!939520) b!5391347))

(assert (= (and b!5391346 (not c!939520)) b!5391348))

(assert (= (or b!5391344 b!5391347) bm!385896))

(declare-fun m!6417180 () Bool)

(assert (=> bm!385896 m!6417180))

(declare-fun m!6417182 () Bool)

(assert (=> b!5391344 m!6417182))

(assert (=> b!5391345 m!6416772))

(assert (=> b!5390897 d!1723550))

(declare-fun c!939541 () Bool)

(declare-fun call!385915 () List!61711)

(declare-fun bm!385909 () Bool)

(declare-fun c!939540 () Bool)

(declare-fun $colon$colon!1471 (List!61711 Regex!15137) List!61711)

(assert (=> bm!385909 (= call!385915 ($colon$colon!1471 (exprs!5021 lt!2196650) (ite (or c!939540 c!939541) (regTwo!30786 (h!68035 (exprs!5021 (h!68036 zl!343)))) (h!68035 (exprs!5021 (h!68036 zl!343))))))))

(declare-fun b!5391398 () Bool)

(declare-fun e!3343539 () (InoxSet Context!9042))

(declare-fun e!3343540 () (InoxSet Context!9042))

(assert (=> b!5391398 (= e!3343539 e!3343540)))

(declare-fun c!939537 () Bool)

(assert (=> b!5391398 (= c!939537 ((_ is Union!15137) (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5391399 () Bool)

(declare-fun e!3343536 () (InoxSet Context!9042))

(declare-fun call!385918 () (InoxSet Context!9042))

(declare-fun call!385916 () (InoxSet Context!9042))

(assert (=> b!5391399 (= e!3343536 ((_ map or) call!385918 call!385916))))

(declare-fun d!1723552 () Bool)

(declare-fun c!939538 () Bool)

(assert (=> d!1723552 (= c!939538 (and ((_ is ElementMatch!15137) (h!68035 (exprs!5021 (h!68036 zl!343)))) (= (c!939381 (h!68035 (exprs!5021 (h!68036 zl!343)))) (h!68034 s!2326))))))

(assert (=> d!1723552 (= (derivationStepZipperDown!585 (h!68035 (exprs!5021 (h!68036 zl!343))) lt!2196650 (h!68034 s!2326)) e!3343539)))

(declare-fun b!5391400 () Bool)

(declare-fun c!939539 () Bool)

(assert (=> b!5391400 (= c!939539 ((_ is Star!15137) (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun e!3343538 () (InoxSet Context!9042))

(declare-fun e!3343537 () (InoxSet Context!9042))

(assert (=> b!5391400 (= e!3343538 e!3343537)))

(declare-fun call!385917 () List!61711)

(declare-fun call!385919 () (InoxSet Context!9042))

(declare-fun bm!385910 () Bool)

(assert (=> bm!385910 (= call!385919 (derivationStepZipperDown!585 (ite c!939537 (regOne!30787 (h!68035 (exprs!5021 (h!68036 zl!343)))) (ite c!939540 (regTwo!30786 (h!68035 (exprs!5021 (h!68036 zl!343)))) (ite c!939541 (regOne!30786 (h!68035 (exprs!5021 (h!68036 zl!343)))) (reg!15466 (h!68035 (exprs!5021 (h!68036 zl!343))))))) (ite (or c!939537 c!939540) lt!2196650 (Context!9043 call!385917)) (h!68034 s!2326)))))

(declare-fun bm!385911 () Bool)

(assert (=> bm!385911 (= call!385918 (derivationStepZipperDown!585 (ite c!939537 (regTwo!30787 (h!68035 (exprs!5021 (h!68036 zl!343)))) (regOne!30786 (h!68035 (exprs!5021 (h!68036 zl!343))))) (ite c!939537 lt!2196650 (Context!9043 call!385915)) (h!68034 s!2326)))))

(declare-fun b!5391401 () Bool)

(declare-fun call!385914 () (InoxSet Context!9042))

(assert (=> b!5391401 (= e!3343537 call!385914)))

(declare-fun bm!385912 () Bool)

(assert (=> bm!385912 (= call!385914 call!385916)))

(declare-fun b!5391402 () Bool)

(assert (=> b!5391402 (= e!3343536 e!3343538)))

(assert (=> b!5391402 (= c!939541 ((_ is Concat!23982) (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5391403 () Bool)

(assert (=> b!5391403 (= e!3343538 call!385914)))

(declare-fun bm!385913 () Bool)

(assert (=> bm!385913 (= call!385917 call!385915)))

(declare-fun b!5391404 () Bool)

(assert (=> b!5391404 (= e!3343540 ((_ map or) call!385919 call!385918))))

(declare-fun b!5391405 () Bool)

(assert (=> b!5391405 (= e!3343537 ((as const (Array Context!9042 Bool)) false))))

(declare-fun b!5391406 () Bool)

(declare-fun e!3343541 () Bool)

(assert (=> b!5391406 (= e!3343541 (nullable!5306 (regOne!30786 (h!68035 (exprs!5021 (h!68036 zl!343))))))))

(declare-fun b!5391407 () Bool)

(assert (=> b!5391407 (= c!939540 e!3343541)))

(declare-fun res!2290954 () Bool)

(assert (=> b!5391407 (=> (not res!2290954) (not e!3343541))))

(assert (=> b!5391407 (= res!2290954 ((_ is Concat!23982) (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(assert (=> b!5391407 (= e!3343540 e!3343536)))

(declare-fun bm!385914 () Bool)

(assert (=> bm!385914 (= call!385916 call!385919)))

(declare-fun b!5391408 () Bool)

(assert (=> b!5391408 (= e!3343539 (store ((as const (Array Context!9042 Bool)) false) lt!2196650 true))))

(assert (= (and d!1723552 c!939538) b!5391408))

(assert (= (and d!1723552 (not c!939538)) b!5391398))

(assert (= (and b!5391398 c!939537) b!5391404))

(assert (= (and b!5391398 (not c!939537)) b!5391407))

(assert (= (and b!5391407 res!2290954) b!5391406))

(assert (= (and b!5391407 c!939540) b!5391399))

(assert (= (and b!5391407 (not c!939540)) b!5391402))

(assert (= (and b!5391402 c!939541) b!5391403))

(assert (= (and b!5391402 (not c!939541)) b!5391400))

(assert (= (and b!5391400 c!939539) b!5391401))

(assert (= (and b!5391400 (not c!939539)) b!5391405))

(assert (= (or b!5391403 b!5391401) bm!385913))

(assert (= (or b!5391403 b!5391401) bm!385912))

(assert (= (or b!5391399 bm!385913) bm!385909))

(assert (= (or b!5391399 bm!385912) bm!385914))

(assert (= (or b!5391404 b!5391399) bm!385911))

(assert (= (or b!5391404 bm!385914) bm!385910))

(declare-fun m!6417210 () Bool)

(assert (=> bm!385911 m!6417210))

(declare-fun m!6417212 () Bool)

(assert (=> bm!385909 m!6417212))

(declare-fun m!6417214 () Bool)

(assert (=> b!5391408 m!6417214))

(declare-fun m!6417216 () Bool)

(assert (=> b!5391406 m!6417216))

(declare-fun m!6417218 () Bool)

(assert (=> bm!385910 m!6417218))

(assert (=> b!5390897 d!1723552))

(declare-fun d!1723558 () Bool)

(declare-fun c!939542 () Bool)

(declare-fun e!3343542 () Bool)

(assert (=> d!1723558 (= c!939542 e!3343542)))

(declare-fun res!2290955 () Bool)

(assert (=> d!1723558 (=> (not res!2290955) (not e!3343542))))

(assert (=> d!1723558 (= res!2290955 ((_ is Cons!61587) (exprs!5021 lt!2196650)))))

(declare-fun e!3343543 () (InoxSet Context!9042))

(assert (=> d!1723558 (= (derivationStepZipperUp!509 lt!2196650 (h!68034 s!2326)) e!3343543)))

(declare-fun bm!385915 () Bool)

(declare-fun call!385920 () (InoxSet Context!9042))

(assert (=> bm!385915 (= call!385920 (derivationStepZipperDown!585 (h!68035 (exprs!5021 lt!2196650)) (Context!9043 (t!374934 (exprs!5021 lt!2196650))) (h!68034 s!2326)))))

(declare-fun b!5391409 () Bool)

(assert (=> b!5391409 (= e!3343543 ((_ map or) call!385920 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 lt!2196650))) (h!68034 s!2326))))))

(declare-fun b!5391410 () Bool)

(assert (=> b!5391410 (= e!3343542 (nullable!5306 (h!68035 (exprs!5021 lt!2196650))))))

(declare-fun b!5391411 () Bool)

(declare-fun e!3343544 () (InoxSet Context!9042))

(assert (=> b!5391411 (= e!3343543 e!3343544)))

(declare-fun c!939543 () Bool)

(assert (=> b!5391411 (= c!939543 ((_ is Cons!61587) (exprs!5021 lt!2196650)))))

(declare-fun b!5391412 () Bool)

(assert (=> b!5391412 (= e!3343544 call!385920)))

(declare-fun b!5391413 () Bool)

(assert (=> b!5391413 (= e!3343544 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723558 res!2290955) b!5391410))

(assert (= (and d!1723558 c!939542) b!5391409))

(assert (= (and d!1723558 (not c!939542)) b!5391411))

(assert (= (and b!5391411 c!939543) b!5391412))

(assert (= (and b!5391411 (not c!939543)) b!5391413))

(assert (= (or b!5391409 b!5391412) bm!385915))

(declare-fun m!6417220 () Bool)

(assert (=> bm!385915 m!6417220))

(declare-fun m!6417222 () Bool)

(assert (=> b!5391409 m!6417222))

(declare-fun m!6417224 () Bool)

(assert (=> b!5391410 m!6417224))

(assert (=> b!5390897 d!1723558))

(declare-fun d!1723560 () Bool)

(declare-fun nullableFct!1573 (Regex!15137) Bool)

(assert (=> d!1723560 (= (nullable!5306 (h!68035 (exprs!5021 (h!68036 zl!343)))) (nullableFct!1573 (h!68035 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun bs!1247381 () Bool)

(assert (= bs!1247381 d!1723560))

(declare-fun m!6417226 () Bool)

(assert (=> bs!1247381 m!6417226))

(assert (=> b!5390897 d!1723560))

(declare-fun d!1723562 () Bool)

(declare-fun dynLambda!24284 (Int Context!9042) (InoxSet Context!9042))

(assert (=> d!1723562 (= (flatMap!864 z!1189 lambda!280016) (dynLambda!24284 lambda!280016 (h!68036 zl!343)))))

(declare-fun lt!2196719 () Unit!154070)

(declare-fun choose!40560 ((InoxSet Context!9042) Context!9042 Int) Unit!154070)

(assert (=> d!1723562 (= lt!2196719 (choose!40560 z!1189 (h!68036 zl!343) lambda!280016))))

(assert (=> d!1723562 (= z!1189 (store ((as const (Array Context!9042 Bool)) false) (h!68036 zl!343) true))))

(assert (=> d!1723562 (= (lemmaFlatMapOnSingletonSet!396 z!1189 (h!68036 zl!343) lambda!280016) lt!2196719)))

(declare-fun b_lambda!206231 () Bool)

(assert (=> (not b_lambda!206231) (not d!1723562)))

(declare-fun bs!1247382 () Bool)

(assert (= bs!1247382 d!1723562))

(assert (=> bs!1247382 m!6416774))

(declare-fun m!6417228 () Bool)

(assert (=> bs!1247382 m!6417228))

(declare-fun m!6417230 () Bool)

(assert (=> bs!1247382 m!6417230))

(declare-fun m!6417232 () Bool)

(assert (=> bs!1247382 m!6417232))

(assert (=> b!5390897 d!1723562))

(declare-fun d!1723564 () Bool)

(assert (=> d!1723564 (= (flatMap!864 lt!2196633 lambda!280016) (choose!40558 lt!2196633 lambda!280016))))

(declare-fun bs!1247383 () Bool)

(assert (= bs!1247383 d!1723564))

(declare-fun m!6417234 () Bool)

(assert (=> bs!1247383 m!6417234))

(assert (=> b!5390878 d!1723564))

(declare-fun d!1723566 () Bool)

(declare-fun c!939544 () Bool)

(declare-fun e!3343547 () Bool)

(assert (=> d!1723566 (= c!939544 e!3343547)))

(declare-fun res!2290960 () Bool)

(assert (=> d!1723566 (=> (not res!2290960) (not e!3343547))))

(assert (=> d!1723566 (= res!2290960 ((_ is Cons!61587) (exprs!5021 lt!2196636)))))

(declare-fun e!3343548 () (InoxSet Context!9042))

(assert (=> d!1723566 (= (derivationStepZipperUp!509 lt!2196636 (h!68034 s!2326)) e!3343548)))

(declare-fun bm!385916 () Bool)

(declare-fun call!385921 () (InoxSet Context!9042))

(assert (=> bm!385916 (= call!385921 (derivationStepZipperDown!585 (h!68035 (exprs!5021 lt!2196636)) (Context!9043 (t!374934 (exprs!5021 lt!2196636))) (h!68034 s!2326)))))

(declare-fun b!5391418 () Bool)

(assert (=> b!5391418 (= e!3343548 ((_ map or) call!385921 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 lt!2196636))) (h!68034 s!2326))))))

(declare-fun b!5391419 () Bool)

(assert (=> b!5391419 (= e!3343547 (nullable!5306 (h!68035 (exprs!5021 lt!2196636))))))

(declare-fun b!5391420 () Bool)

(declare-fun e!3343549 () (InoxSet Context!9042))

(assert (=> b!5391420 (= e!3343548 e!3343549)))

(declare-fun c!939545 () Bool)

(assert (=> b!5391420 (= c!939545 ((_ is Cons!61587) (exprs!5021 lt!2196636)))))

(declare-fun b!5391421 () Bool)

(assert (=> b!5391421 (= e!3343549 call!385921)))

(declare-fun b!5391422 () Bool)

(assert (=> b!5391422 (= e!3343549 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723566 res!2290960) b!5391419))

(assert (= (and d!1723566 c!939544) b!5391418))

(assert (= (and d!1723566 (not c!939544)) b!5391420))

(assert (= (and b!5391420 c!939545) b!5391421))

(assert (= (and b!5391420 (not c!939545)) b!5391422))

(assert (= (or b!5391418 b!5391421) bm!385916))

(declare-fun m!6417236 () Bool)

(assert (=> bm!385916 m!6417236))

(declare-fun m!6417238 () Bool)

(assert (=> b!5391418 m!6417238))

(declare-fun m!6417240 () Bool)

(assert (=> b!5391419 m!6417240))

(assert (=> b!5390878 d!1723566))

(declare-fun d!1723568 () Bool)

(assert (=> d!1723568 (= (flatMap!864 lt!2196633 lambda!280016) (dynLambda!24284 lambda!280016 lt!2196636))))

(declare-fun lt!2196721 () Unit!154070)

(assert (=> d!1723568 (= lt!2196721 (choose!40560 lt!2196633 lt!2196636 lambda!280016))))

(assert (=> d!1723568 (= lt!2196633 (store ((as const (Array Context!9042 Bool)) false) lt!2196636 true))))

(assert (=> d!1723568 (= (lemmaFlatMapOnSingletonSet!396 lt!2196633 lt!2196636 lambda!280016) lt!2196721)))

(declare-fun b_lambda!206233 () Bool)

(assert (=> (not b_lambda!206233) (not d!1723568)))

(declare-fun bs!1247384 () Bool)

(assert (= bs!1247384 d!1723568))

(assert (=> bs!1247384 m!6416844))

(declare-fun m!6417242 () Bool)

(assert (=> bs!1247384 m!6417242))

(declare-fun m!6417244 () Bool)

(assert (=> bs!1247384 m!6417244))

(assert (=> bs!1247384 m!6416846))

(assert (=> b!5390878 d!1723568))

(declare-fun bs!1247391 () Bool)

(declare-fun d!1723570 () Bool)

(assert (= bs!1247391 (and d!1723570 b!5390897)))

(declare-fun lambda!280064 () Int)

(assert (=> bs!1247391 (= lambda!280064 lambda!280016)))

(assert (=> d!1723570 true))

(assert (=> d!1723570 (= (derivationStepZipper!1376 lt!2196633 (h!68034 s!2326)) (flatMap!864 lt!2196633 lambda!280064))))

(declare-fun bs!1247392 () Bool)

(assert (= bs!1247392 d!1723570))

(declare-fun m!6417250 () Bool)

(assert (=> bs!1247392 m!6417250))

(assert (=> b!5390878 d!1723570))

(declare-fun d!1723574 () Bool)

(declare-fun c!939548 () Bool)

(assert (=> d!1723574 (= c!939548 (isEmpty!33588 (t!374933 s!2326)))))

(declare-fun e!3343550 () Bool)

(assert (=> d!1723574 (= (matchZipper!1381 lt!2196627 (t!374933 s!2326)) e!3343550)))

(declare-fun b!5391425 () Bool)

(assert (=> b!5391425 (= e!3343550 (nullableZipper!1421 lt!2196627))))

(declare-fun b!5391426 () Bool)

(assert (=> b!5391426 (= e!3343550 (matchZipper!1381 (derivationStepZipper!1376 lt!2196627 (head!11561 (t!374933 s!2326))) (tail!10658 (t!374933 s!2326))))))

(assert (= (and d!1723574 c!939548) b!5391425))

(assert (= (and d!1723574 (not c!939548)) b!5391426))

(assert (=> d!1723574 m!6417006))

(declare-fun m!6417252 () Bool)

(assert (=> b!5391425 m!6417252))

(assert (=> b!5391426 m!6417010))

(assert (=> b!5391426 m!6417010))

(declare-fun m!6417254 () Bool)

(assert (=> b!5391426 m!6417254))

(assert (=> b!5391426 m!6417014))

(assert (=> b!5391426 m!6417254))

(assert (=> b!5391426 m!6417014))

(declare-fun m!6417256 () Bool)

(assert (=> b!5391426 m!6417256))

(assert (=> b!5390877 d!1723574))

(declare-fun e!3343553 () Bool)

(declare-fun d!1723576 () Bool)

(assert (=> d!1723576 (= (matchZipper!1381 ((_ map or) lt!2196627 lt!2196617) (t!374933 s!2326)) e!3343553)))

(declare-fun res!2290963 () Bool)

(assert (=> d!1723576 (=> res!2290963 e!3343553)))

(assert (=> d!1723576 (= res!2290963 (matchZipper!1381 lt!2196627 (t!374933 s!2326)))))

(declare-fun lt!2196726 () Unit!154070)

(declare-fun choose!40561 ((InoxSet Context!9042) (InoxSet Context!9042) List!61710) Unit!154070)

(assert (=> d!1723576 (= lt!2196726 (choose!40561 lt!2196627 lt!2196617 (t!374933 s!2326)))))

(assert (=> d!1723576 (= (lemmaZipperConcatMatchesSameAsBothZippers!374 lt!2196627 lt!2196617 (t!374933 s!2326)) lt!2196726)))

(declare-fun b!5391429 () Bool)

(assert (=> b!5391429 (= e!3343553 (matchZipper!1381 lt!2196617 (t!374933 s!2326)))))

(assert (= (and d!1723576 (not res!2290963)) b!5391429))

(assert (=> d!1723576 m!6416836))

(assert (=> d!1723576 m!6416834))

(declare-fun m!6417258 () Bool)

(assert (=> d!1723576 m!6417258))

(assert (=> b!5391429 m!6416778))

(assert (=> b!5390884 d!1723576))

(assert (=> b!5390884 d!1723574))

(declare-fun d!1723578 () Bool)

(declare-fun c!939549 () Bool)

(assert (=> d!1723578 (= c!939549 (isEmpty!33588 (t!374933 s!2326)))))

(declare-fun e!3343554 () Bool)

(assert (=> d!1723578 (= (matchZipper!1381 ((_ map or) lt!2196627 lt!2196617) (t!374933 s!2326)) e!3343554)))

(declare-fun b!5391430 () Bool)

(assert (=> b!5391430 (= e!3343554 (nullableZipper!1421 ((_ map or) lt!2196627 lt!2196617)))))

(declare-fun b!5391431 () Bool)

(assert (=> b!5391431 (= e!3343554 (matchZipper!1381 (derivationStepZipper!1376 ((_ map or) lt!2196627 lt!2196617) (head!11561 (t!374933 s!2326))) (tail!10658 (t!374933 s!2326))))))

(assert (= (and d!1723578 c!939549) b!5391430))

(assert (= (and d!1723578 (not c!939549)) b!5391431))

(assert (=> d!1723578 m!6417006))

(declare-fun m!6417260 () Bool)

(assert (=> b!5391430 m!6417260))

(assert (=> b!5391431 m!6417010))

(assert (=> b!5391431 m!6417010))

(declare-fun m!6417262 () Bool)

(assert (=> b!5391431 m!6417262))

(assert (=> b!5391431 m!6417014))

(assert (=> b!5391431 m!6417262))

(assert (=> b!5391431 m!6417014))

(declare-fun m!6417264 () Bool)

(assert (=> b!5391431 m!6417264))

(assert (=> b!5390884 d!1723578))

(declare-fun c!939555 () Bool)

(declare-fun bm!385923 () Bool)

(declare-fun c!939554 () Bool)

(declare-fun call!385930 () Bool)

(assert (=> bm!385923 (= call!385930 (validRegex!6873 (ite c!939555 (reg!15466 r!7292) (ite c!939554 (regOne!30787 r!7292) (regOne!30786 r!7292)))))))

(declare-fun bm!385924 () Bool)

(declare-fun call!385928 () Bool)

(assert (=> bm!385924 (= call!385928 (validRegex!6873 (ite c!939554 (regTwo!30787 r!7292) (regTwo!30786 r!7292))))))

(declare-fun b!5391458 () Bool)

(declare-fun e!3343574 () Bool)

(assert (=> b!5391458 (= e!3343574 call!385928)))

(declare-fun b!5391459 () Bool)

(declare-fun e!3343576 () Bool)

(assert (=> b!5391459 (= e!3343576 call!385930)))

(declare-fun b!5391460 () Bool)

(declare-fun res!2290986 () Bool)

(declare-fun e!3343575 () Bool)

(assert (=> b!5391460 (=> res!2290986 e!3343575)))

(assert (=> b!5391460 (= res!2290986 (not ((_ is Concat!23982) r!7292)))))

(declare-fun e!3343577 () Bool)

(assert (=> b!5391460 (= e!3343577 e!3343575)))

(declare-fun b!5391461 () Bool)

(declare-fun e!3343579 () Bool)

(assert (=> b!5391461 (= e!3343579 call!385928)))

(declare-fun b!5391462 () Bool)

(declare-fun e!3343578 () Bool)

(assert (=> b!5391462 (= e!3343578 e!3343576)))

(declare-fun res!2290982 () Bool)

(assert (=> b!5391462 (= res!2290982 (not (nullable!5306 (reg!15466 r!7292))))))

(assert (=> b!5391462 (=> (not res!2290982) (not e!3343576))))

(declare-fun b!5391463 () Bool)

(declare-fun res!2290983 () Bool)

(assert (=> b!5391463 (=> (not res!2290983) (not e!3343579))))

(declare-fun call!385929 () Bool)

(assert (=> b!5391463 (= res!2290983 call!385929)))

(assert (=> b!5391463 (= e!3343577 e!3343579)))

(declare-fun bm!385925 () Bool)

(assert (=> bm!385925 (= call!385929 call!385930)))

(declare-fun d!1723580 () Bool)

(declare-fun res!2290985 () Bool)

(declare-fun e!3343573 () Bool)

(assert (=> d!1723580 (=> res!2290985 e!3343573)))

(assert (=> d!1723580 (= res!2290985 ((_ is ElementMatch!15137) r!7292))))

(assert (=> d!1723580 (= (validRegex!6873 r!7292) e!3343573)))

(declare-fun b!5391464 () Bool)

(assert (=> b!5391464 (= e!3343578 e!3343577)))

(assert (=> b!5391464 (= c!939554 ((_ is Union!15137) r!7292))))

(declare-fun b!5391465 () Bool)

(assert (=> b!5391465 (= e!3343575 e!3343574)))

(declare-fun res!2290984 () Bool)

(assert (=> b!5391465 (=> (not res!2290984) (not e!3343574))))

(assert (=> b!5391465 (= res!2290984 call!385929)))

(declare-fun b!5391466 () Bool)

(assert (=> b!5391466 (= e!3343573 e!3343578)))

(assert (=> b!5391466 (= c!939555 ((_ is Star!15137) r!7292))))

(assert (= (and d!1723580 (not res!2290985)) b!5391466))

(assert (= (and b!5391466 c!939555) b!5391462))

(assert (= (and b!5391466 (not c!939555)) b!5391464))

(assert (= (and b!5391462 res!2290982) b!5391459))

(assert (= (and b!5391464 c!939554) b!5391463))

(assert (= (and b!5391464 (not c!939554)) b!5391460))

(assert (= (and b!5391463 res!2290983) b!5391461))

(assert (= (and b!5391460 (not res!2290986)) b!5391465))

(assert (= (and b!5391465 res!2290984) b!5391458))

(assert (= (or b!5391461 b!5391458) bm!385924))

(assert (= (or b!5391463 b!5391465) bm!385925))

(assert (= (or b!5391459 bm!385925) bm!385923))

(declare-fun m!6417268 () Bool)

(assert (=> bm!385923 m!6417268))

(declare-fun m!6417274 () Bool)

(assert (=> bm!385924 m!6417274))

(declare-fun m!6417276 () Bool)

(assert (=> b!5391462 m!6417276))

(assert (=> start!566474 d!1723580))

(declare-fun bs!1247400 () Bool)

(declare-fun d!1723584 () Bool)

(assert (= bs!1247400 (and d!1723584 b!5390896)))

(declare-fun lambda!280071 () Int)

(assert (=> bs!1247400 (= lambda!280071 lambda!280017)))

(declare-fun bs!1247401 () Bool)

(assert (= bs!1247401 (and d!1723584 d!1723434)))

(assert (=> bs!1247401 (= lambda!280071 lambda!280020)))

(assert (=> d!1723584 (= (inv!81089 c!324) (forall!14515 (exprs!5021 c!324) lambda!280071))))

(declare-fun bs!1247402 () Bool)

(assert (= bs!1247402 d!1723584))

(declare-fun m!6417278 () Bool)

(assert (=> bs!1247402 m!6417278))

(assert (=> start!566474 d!1723584))

(declare-fun b!5391467 () Bool)

(declare-fun e!3343582 () Bool)

(assert (=> b!5391467 (= e!3343582 (matchR!7322 (derivativeStep!4243 lt!2196634 (head!11561 s!2326)) (tail!10658 s!2326)))))

(declare-fun b!5391468 () Bool)

(declare-fun e!3343581 () Bool)

(assert (=> b!5391468 (= e!3343581 (= (head!11561 s!2326) (c!939381 lt!2196634)))))

(declare-fun b!5391469 () Bool)

(declare-fun e!3343584 () Bool)

(declare-fun e!3343585 () Bool)

(assert (=> b!5391469 (= e!3343584 e!3343585)))

(declare-fun c!939557 () Bool)

(assert (=> b!5391469 (= c!939557 ((_ is EmptyLang!15137) lt!2196634))))

(declare-fun b!5391470 () Bool)

(declare-fun e!3343580 () Bool)

(declare-fun e!3343586 () Bool)

(assert (=> b!5391470 (= e!3343580 e!3343586)))

(declare-fun res!2290994 () Bool)

(assert (=> b!5391470 (=> (not res!2290994) (not e!3343586))))

(declare-fun lt!2196728 () Bool)

(assert (=> b!5391470 (= res!2290994 (not lt!2196728))))

(declare-fun b!5391471 () Bool)

(declare-fun res!2290988 () Bool)

(declare-fun e!3343583 () Bool)

(assert (=> b!5391471 (=> res!2290988 e!3343583)))

(assert (=> b!5391471 (= res!2290988 (not (isEmpty!33588 (tail!10658 s!2326))))))

(declare-fun b!5391472 () Bool)

(declare-fun res!2290993 () Bool)

(assert (=> b!5391472 (=> (not res!2290993) (not e!3343581))))

(assert (=> b!5391472 (= res!2290993 (isEmpty!33588 (tail!10658 s!2326)))))

(declare-fun b!5391473 () Bool)

(declare-fun call!385931 () Bool)

(assert (=> b!5391473 (= e!3343584 (= lt!2196728 call!385931))))

(declare-fun b!5391474 () Bool)

(assert (=> b!5391474 (= e!3343585 (not lt!2196728))))

(declare-fun d!1723586 () Bool)

(assert (=> d!1723586 e!3343584))

(declare-fun c!939556 () Bool)

(assert (=> d!1723586 (= c!939556 ((_ is EmptyExpr!15137) lt!2196634))))

(assert (=> d!1723586 (= lt!2196728 e!3343582)))

(declare-fun c!939558 () Bool)

(assert (=> d!1723586 (= c!939558 (isEmpty!33588 s!2326))))

(assert (=> d!1723586 (validRegex!6873 lt!2196634)))

(assert (=> d!1723586 (= (matchR!7322 lt!2196634 s!2326) lt!2196728)))

(declare-fun b!5391475 () Bool)

(declare-fun res!2290992 () Bool)

(assert (=> b!5391475 (=> res!2290992 e!3343580)))

(assert (=> b!5391475 (= res!2290992 (not ((_ is ElementMatch!15137) lt!2196634)))))

(assert (=> b!5391475 (= e!3343585 e!3343580)))

(declare-fun b!5391476 () Bool)

(assert (=> b!5391476 (= e!3343582 (nullable!5306 lt!2196634))))

(declare-fun bm!385926 () Bool)

(assert (=> bm!385926 (= call!385931 (isEmpty!33588 s!2326))))

(declare-fun b!5391477 () Bool)

(assert (=> b!5391477 (= e!3343586 e!3343583)))

(declare-fun res!2290989 () Bool)

(assert (=> b!5391477 (=> res!2290989 e!3343583)))

(assert (=> b!5391477 (= res!2290989 call!385931)))

(declare-fun b!5391478 () Bool)

(declare-fun res!2290991 () Bool)

(assert (=> b!5391478 (=> res!2290991 e!3343580)))

(assert (=> b!5391478 (= res!2290991 e!3343581)))

(declare-fun res!2290987 () Bool)

(assert (=> b!5391478 (=> (not res!2290987) (not e!3343581))))

(assert (=> b!5391478 (= res!2290987 lt!2196728)))

(declare-fun b!5391479 () Bool)

(declare-fun res!2290990 () Bool)

(assert (=> b!5391479 (=> (not res!2290990) (not e!3343581))))

(assert (=> b!5391479 (= res!2290990 (not call!385931))))

(declare-fun b!5391480 () Bool)

(assert (=> b!5391480 (= e!3343583 (not (= (head!11561 s!2326) (c!939381 lt!2196634))))))

(assert (= (and d!1723586 c!939558) b!5391476))

(assert (= (and d!1723586 (not c!939558)) b!5391467))

(assert (= (and d!1723586 c!939556) b!5391473))

(assert (= (and d!1723586 (not c!939556)) b!5391469))

(assert (= (and b!5391469 c!939557) b!5391474))

(assert (= (and b!5391469 (not c!939557)) b!5391475))

(assert (= (and b!5391475 (not res!2290992)) b!5391478))

(assert (= (and b!5391478 res!2290987) b!5391479))

(assert (= (and b!5391479 res!2290990) b!5391472))

(assert (= (and b!5391472 res!2290993) b!5391468))

(assert (= (and b!5391478 (not res!2290991)) b!5391470))

(assert (= (and b!5391470 res!2290994) b!5391477))

(assert (= (and b!5391477 (not res!2290989)) b!5391471))

(assert (= (and b!5391471 (not res!2290988)) b!5391480))

(assert (= (or b!5391473 b!5391477 b!5391479) bm!385926))

(assert (=> b!5391480 m!6416868))

(assert (=> bm!385926 m!6416864))

(declare-fun m!6417282 () Bool)

(assert (=> b!5391476 m!6417282))

(assert (=> b!5391472 m!6416872))

(assert (=> b!5391472 m!6416872))

(assert (=> b!5391472 m!6417154))

(assert (=> b!5391468 m!6416868))

(assert (=> b!5391467 m!6416868))

(assert (=> b!5391467 m!6416868))

(declare-fun m!6417284 () Bool)

(assert (=> b!5391467 m!6417284))

(assert (=> b!5391467 m!6416872))

(assert (=> b!5391467 m!6417284))

(assert (=> b!5391467 m!6416872))

(declare-fun m!6417286 () Bool)

(assert (=> b!5391467 m!6417286))

(assert (=> b!5391471 m!6416872))

(assert (=> b!5391471 m!6416872))

(assert (=> b!5391471 m!6417154))

(assert (=> d!1723586 m!6416864))

(declare-fun m!6417288 () Bool)

(assert (=> d!1723586 m!6417288))

(assert (=> b!5390866 d!1723586))

(declare-fun bs!1247404 () Bool)

(declare-fun b!5391482 () Bool)

(assert (= bs!1247404 (and b!5391482 b!5391216)))

(declare-fun lambda!280072 () Int)

(assert (=> bs!1247404 (= (and (= (reg!15466 lt!2196634) (reg!15466 r!7292)) (= lt!2196634 r!7292)) (= lambda!280072 lambda!280047))))

(declare-fun bs!1247405 () Bool)

(assert (= bs!1247405 (and b!5391482 d!1723458)))

(assert (=> bs!1247405 (not (= lambda!280072 lambda!280036))))

(declare-fun bs!1247406 () Bool)

(assert (= bs!1247406 (and b!5391482 d!1723454)))

(assert (=> bs!1247406 (not (= lambda!280072 lambda!280029))))

(assert (=> bs!1247405 (not (= lambda!280072 lambda!280037))))

(declare-fun bs!1247407 () Bool)

(assert (= bs!1247407 (and b!5391482 b!5390893)))

(assert (=> bs!1247407 (not (= lambda!280072 lambda!280015))))

(assert (=> bs!1247407 (not (= lambda!280072 lambda!280014))))

(declare-fun bs!1247408 () Bool)

(assert (= bs!1247408 (and b!5391482 b!5391224)))

(assert (=> bs!1247408 (not (= lambda!280072 lambda!280049))))

(assert (=> b!5391482 true))

(assert (=> b!5391482 true))

(declare-fun bs!1247409 () Bool)

(declare-fun b!5391490 () Bool)

(assert (= bs!1247409 (and b!5391490 b!5391216)))

(declare-fun lambda!280073 () Int)

(assert (=> bs!1247409 (not (= lambda!280073 lambda!280047))))

(declare-fun bs!1247410 () Bool)

(assert (= bs!1247410 (and b!5391490 d!1723458)))

(assert (=> bs!1247410 (not (= lambda!280073 lambda!280036))))

(declare-fun bs!1247411 () Bool)

(assert (= bs!1247411 (and b!5391490 d!1723454)))

(assert (=> bs!1247411 (not (= lambda!280073 lambda!280029))))

(assert (=> bs!1247410 (= (and (= (regOne!30786 lt!2196634) (regOne!30786 r!7292)) (= (regTwo!30786 lt!2196634) (regTwo!30786 r!7292))) (= lambda!280073 lambda!280037))))

(declare-fun bs!1247412 () Bool)

(assert (= bs!1247412 (and b!5391490 b!5390893)))

(assert (=> bs!1247412 (= (and (= (regOne!30786 lt!2196634) (regOne!30786 r!7292)) (= (regTwo!30786 lt!2196634) (regTwo!30786 r!7292))) (= lambda!280073 lambda!280015))))

(declare-fun bs!1247413 () Bool)

(assert (= bs!1247413 (and b!5391490 b!5391482)))

(assert (=> bs!1247413 (not (= lambda!280073 lambda!280072))))

(assert (=> bs!1247412 (not (= lambda!280073 lambda!280014))))

(declare-fun bs!1247414 () Bool)

(assert (= bs!1247414 (and b!5391490 b!5391224)))

(assert (=> bs!1247414 (= (and (= (regOne!30786 lt!2196634) (regOne!30786 r!7292)) (= (regTwo!30786 lt!2196634) (regTwo!30786 r!7292))) (= lambda!280073 lambda!280049))))

(assert (=> b!5391490 true))

(assert (=> b!5391490 true))

(declare-fun b!5391481 () Bool)

(declare-fun res!2290996 () Bool)

(declare-fun e!3343590 () Bool)

(assert (=> b!5391481 (=> res!2290996 e!3343590)))

(declare-fun call!385932 () Bool)

(assert (=> b!5391481 (= res!2290996 call!385932)))

(declare-fun e!3343589 () Bool)

(assert (=> b!5391481 (= e!3343589 e!3343590)))

(declare-fun call!385933 () Bool)

(assert (=> b!5391482 (= e!3343590 call!385933)))

(declare-fun b!5391483 () Bool)

(declare-fun e!3343588 () Bool)

(declare-fun e!3343587 () Bool)

(assert (=> b!5391483 (= e!3343588 e!3343587)))

(declare-fun res!2290997 () Bool)

(assert (=> b!5391483 (= res!2290997 (not ((_ is EmptyLang!15137) lt!2196634)))))

(assert (=> b!5391483 (=> (not res!2290997) (not e!3343587))))

(declare-fun b!5391484 () Bool)

(declare-fun e!3343591 () Bool)

(assert (=> b!5391484 (= e!3343591 (= s!2326 (Cons!61586 (c!939381 lt!2196634) Nil!61586)))))

(declare-fun b!5391485 () Bool)

(assert (=> b!5391485 (= e!3343588 call!385932)))

(declare-fun b!5391486 () Bool)

(declare-fun c!939559 () Bool)

(assert (=> b!5391486 (= c!939559 ((_ is Union!15137) lt!2196634))))

(declare-fun e!3343592 () Bool)

(assert (=> b!5391486 (= e!3343591 e!3343592)))

(declare-fun d!1723590 () Bool)

(declare-fun c!939560 () Bool)

(assert (=> d!1723590 (= c!939560 ((_ is EmptyExpr!15137) lt!2196634))))

(assert (=> d!1723590 (= (matchRSpec!2240 lt!2196634 s!2326) e!3343588)))

(declare-fun b!5391487 () Bool)

(declare-fun e!3343593 () Bool)

(assert (=> b!5391487 (= e!3343592 e!3343593)))

(declare-fun res!2290995 () Bool)

(assert (=> b!5391487 (= res!2290995 (matchRSpec!2240 (regOne!30787 lt!2196634) s!2326))))

(assert (=> b!5391487 (=> res!2290995 e!3343593)))

(declare-fun bm!385927 () Bool)

(assert (=> bm!385927 (= call!385932 (isEmpty!33588 s!2326))))

(declare-fun b!5391488 () Bool)

(assert (=> b!5391488 (= e!3343593 (matchRSpec!2240 (regTwo!30787 lt!2196634) s!2326))))

(declare-fun b!5391489 () Bool)

(assert (=> b!5391489 (= e!3343592 e!3343589)))

(declare-fun c!939562 () Bool)

(assert (=> b!5391489 (= c!939562 ((_ is Star!15137) lt!2196634))))

(assert (=> b!5391490 (= e!3343589 call!385933)))

(declare-fun bm!385928 () Bool)

(assert (=> bm!385928 (= call!385933 (Exists!2318 (ite c!939562 lambda!280072 lambda!280073)))))

(declare-fun b!5391491 () Bool)

(declare-fun c!939561 () Bool)

(assert (=> b!5391491 (= c!939561 ((_ is ElementMatch!15137) lt!2196634))))

(assert (=> b!5391491 (= e!3343587 e!3343591)))

(assert (= (and d!1723590 c!939560) b!5391485))

(assert (= (and d!1723590 (not c!939560)) b!5391483))

(assert (= (and b!5391483 res!2290997) b!5391491))

(assert (= (and b!5391491 c!939561) b!5391484))

(assert (= (and b!5391491 (not c!939561)) b!5391486))

(assert (= (and b!5391486 c!939559) b!5391487))

(assert (= (and b!5391486 (not c!939559)) b!5391489))

(assert (= (and b!5391487 (not res!2290995)) b!5391488))

(assert (= (and b!5391489 c!939562) b!5391481))

(assert (= (and b!5391489 (not c!939562)) b!5391490))

(assert (= (and b!5391481 (not res!2290996)) b!5391482))

(assert (= (or b!5391482 b!5391490) bm!385928))

(assert (= (or b!5391485 b!5391481) bm!385927))

(declare-fun m!6417290 () Bool)

(assert (=> b!5391487 m!6417290))

(assert (=> bm!385927 m!6416864))

(declare-fun m!6417292 () Bool)

(assert (=> b!5391488 m!6417292))

(declare-fun m!6417294 () Bool)

(assert (=> bm!385928 m!6417294))

(assert (=> b!5390866 d!1723590))

(declare-fun d!1723592 () Bool)

(assert (=> d!1723592 (= (matchR!7322 lt!2196634 s!2326) (matchRSpec!2240 lt!2196634 s!2326))))

(declare-fun lt!2196729 () Unit!154070)

(assert (=> d!1723592 (= lt!2196729 (choose!40557 lt!2196634 s!2326))))

(assert (=> d!1723592 (validRegex!6873 lt!2196634)))

(assert (=> d!1723592 (= (mainMatchTheorem!2240 lt!2196634 s!2326) lt!2196729)))

(declare-fun bs!1247415 () Bool)

(assert (= bs!1247415 d!1723592))

(assert (=> bs!1247415 m!6416750))

(assert (=> bs!1247415 m!6416752))

(declare-fun m!6417296 () Bool)

(assert (=> bs!1247415 m!6417296))

(assert (=> bs!1247415 m!6417288))

(assert (=> b!5390866 d!1723592))

(declare-fun bs!1247429 () Bool)

(declare-fun d!1723594 () Bool)

(assert (= bs!1247429 (and d!1723594 b!5390896)))

(declare-fun lambda!280078 () Int)

(assert (=> bs!1247429 (= lambda!280078 lambda!280017)))

(declare-fun bs!1247431 () Bool)

(assert (= bs!1247431 (and d!1723594 d!1723434)))

(assert (=> bs!1247431 (= lambda!280078 lambda!280020)))

(declare-fun bs!1247432 () Bool)

(assert (= bs!1247432 (and d!1723594 d!1723584)))

(assert (=> bs!1247432 (= lambda!280078 lambda!280071)))

(declare-fun b!5391550 () Bool)

(declare-fun e!3343641 () Bool)

(declare-fun e!3343639 () Bool)

(assert (=> b!5391550 (= e!3343641 e!3343639)))

(declare-fun c!939580 () Bool)

(assert (=> b!5391550 (= c!939580 (isEmpty!33586 (unfocusZipperList!579 zl!343)))))

(declare-fun b!5391551 () Bool)

(declare-fun e!3343637 () Regex!15137)

(assert (=> b!5391551 (= e!3343637 EmptyLang!15137)))

(declare-fun b!5391552 () Bool)

(declare-fun e!3343642 () Bool)

(assert (=> b!5391552 (= e!3343639 e!3343642)))

(declare-fun c!939579 () Bool)

(declare-fun tail!10659 (List!61711) List!61711)

(assert (=> b!5391552 (= c!939579 (isEmpty!33586 (tail!10659 (unfocusZipperList!579 zl!343))))))

(declare-fun b!5391553 () Bool)

(assert (=> b!5391553 (= e!3343637 (Union!15137 (h!68035 (unfocusZipperList!579 zl!343)) (generalisedUnion!1066 (t!374934 (unfocusZipperList!579 zl!343)))))))

(declare-fun b!5391554 () Bool)

(declare-fun e!3343638 () Regex!15137)

(assert (=> b!5391554 (= e!3343638 (h!68035 (unfocusZipperList!579 zl!343)))))

(assert (=> d!1723594 e!3343641))

(declare-fun res!2291027 () Bool)

(assert (=> d!1723594 (=> (not res!2291027) (not e!3343641))))

(declare-fun lt!2196736 () Regex!15137)

(assert (=> d!1723594 (= res!2291027 (validRegex!6873 lt!2196736))))

(assert (=> d!1723594 (= lt!2196736 e!3343638)))

(declare-fun c!939578 () Bool)

(declare-fun e!3343640 () Bool)

(assert (=> d!1723594 (= c!939578 e!3343640)))

(declare-fun res!2291026 () Bool)

(assert (=> d!1723594 (=> (not res!2291026) (not e!3343640))))

(assert (=> d!1723594 (= res!2291026 ((_ is Cons!61587) (unfocusZipperList!579 zl!343)))))

(assert (=> d!1723594 (forall!14515 (unfocusZipperList!579 zl!343) lambda!280078)))

(assert (=> d!1723594 (= (generalisedUnion!1066 (unfocusZipperList!579 zl!343)) lt!2196736)))

(declare-fun b!5391555 () Bool)

(declare-fun isEmptyLang!964 (Regex!15137) Bool)

(assert (=> b!5391555 (= e!3343639 (isEmptyLang!964 lt!2196736))))

(declare-fun b!5391556 () Bool)

(declare-fun isUnion!396 (Regex!15137) Bool)

(assert (=> b!5391556 (= e!3343642 (isUnion!396 lt!2196736))))

(declare-fun b!5391557 () Bool)

(assert (=> b!5391557 (= e!3343638 e!3343637)))

(declare-fun c!939581 () Bool)

(assert (=> b!5391557 (= c!939581 ((_ is Cons!61587) (unfocusZipperList!579 zl!343)))))

(declare-fun b!5391558 () Bool)

(declare-fun head!11562 (List!61711) Regex!15137)

(assert (=> b!5391558 (= e!3343642 (= lt!2196736 (head!11562 (unfocusZipperList!579 zl!343))))))

(declare-fun b!5391559 () Bool)

(assert (=> b!5391559 (= e!3343640 (isEmpty!33586 (t!374934 (unfocusZipperList!579 zl!343))))))

(assert (= (and d!1723594 res!2291026) b!5391559))

(assert (= (and d!1723594 c!939578) b!5391554))

(assert (= (and d!1723594 (not c!939578)) b!5391557))

(assert (= (and b!5391557 c!939581) b!5391553))

(assert (= (and b!5391557 (not c!939581)) b!5391551))

(assert (= (and d!1723594 res!2291027) b!5391550))

(assert (= (and b!5391550 c!939580) b!5391555))

(assert (= (and b!5391550 (not c!939580)) b!5391552))

(assert (= (and b!5391552 c!939579) b!5391558))

(assert (= (and b!5391552 (not c!939579)) b!5391556))

(declare-fun m!6417332 () Bool)

(assert (=> d!1723594 m!6417332))

(assert (=> d!1723594 m!6416780))

(declare-fun m!6417334 () Bool)

(assert (=> d!1723594 m!6417334))

(assert (=> b!5391552 m!6416780))

(declare-fun m!6417336 () Bool)

(assert (=> b!5391552 m!6417336))

(assert (=> b!5391552 m!6417336))

(declare-fun m!6417338 () Bool)

(assert (=> b!5391552 m!6417338))

(declare-fun m!6417340 () Bool)

(assert (=> b!5391559 m!6417340))

(declare-fun m!6417342 () Bool)

(assert (=> b!5391556 m!6417342))

(assert (=> b!5391558 m!6416780))

(declare-fun m!6417344 () Bool)

(assert (=> b!5391558 m!6417344))

(declare-fun m!6417346 () Bool)

(assert (=> b!5391555 m!6417346))

(assert (=> b!5391550 m!6416780))

(declare-fun m!6417348 () Bool)

(assert (=> b!5391550 m!6417348))

(declare-fun m!6417350 () Bool)

(assert (=> b!5391553 m!6417350))

(assert (=> b!5390885 d!1723594))

(declare-fun bs!1247434 () Bool)

(declare-fun d!1723612 () Bool)

(assert (= bs!1247434 (and d!1723612 b!5390896)))

(declare-fun lambda!280081 () Int)

(assert (=> bs!1247434 (= lambda!280081 lambda!280017)))

(declare-fun bs!1247435 () Bool)

(assert (= bs!1247435 (and d!1723612 d!1723434)))

(assert (=> bs!1247435 (= lambda!280081 lambda!280020)))

(declare-fun bs!1247436 () Bool)

(assert (= bs!1247436 (and d!1723612 d!1723584)))

(assert (=> bs!1247436 (= lambda!280081 lambda!280071)))

(declare-fun bs!1247437 () Bool)

(assert (= bs!1247437 (and d!1723612 d!1723594)))

(assert (=> bs!1247437 (= lambda!280081 lambda!280078)))

(declare-fun lt!2196740 () List!61711)

(assert (=> d!1723612 (forall!14515 lt!2196740 lambda!280081)))

(declare-fun e!3343667 () List!61711)

(assert (=> d!1723612 (= lt!2196740 e!3343667)))

(declare-fun c!939584 () Bool)

(assert (=> d!1723612 (= c!939584 ((_ is Cons!61588) zl!343))))

(assert (=> d!1723612 (= (unfocusZipperList!579 zl!343) lt!2196740)))

(declare-fun b!5391617 () Bool)

(assert (=> b!5391617 (= e!3343667 (Cons!61587 (generalisedConcat!806 (exprs!5021 (h!68036 zl!343))) (unfocusZipperList!579 (t!374935 zl!343))))))

(declare-fun b!5391618 () Bool)

(assert (=> b!5391618 (= e!3343667 Nil!61587)))

(assert (= (and d!1723612 c!939584) b!5391617))

(assert (= (and d!1723612 (not c!939584)) b!5391618))

(declare-fun m!6417356 () Bool)

(assert (=> d!1723612 m!6417356))

(assert (=> b!5391617 m!6416838))

(declare-fun m!6417358 () Bool)

(assert (=> b!5391617 m!6417358))

(assert (=> b!5390885 d!1723612))

(declare-fun d!1723614 () Bool)

(declare-fun e!3343672 () Bool)

(assert (=> d!1723614 e!3343672))

(declare-fun res!2291030 () Bool)

(assert (=> d!1723614 (=> (not res!2291030) (not e!3343672))))

(declare-fun lt!2196743 () List!61712)

(declare-fun noDuplicate!1374 (List!61712) Bool)

(assert (=> d!1723614 (= res!2291030 (noDuplicate!1374 lt!2196743))))

(declare-fun choose!40562 ((InoxSet Context!9042)) List!61712)

(assert (=> d!1723614 (= lt!2196743 (choose!40562 z!1189))))

(assert (=> d!1723614 (= (toList!8921 z!1189) lt!2196743)))

(declare-fun b!5391623 () Bool)

(declare-fun content!11022 (List!61712) (InoxSet Context!9042))

(assert (=> b!5391623 (= e!3343672 (= (content!11022 lt!2196743) z!1189))))

(assert (= (and d!1723614 res!2291030) b!5391623))

(declare-fun m!6417362 () Bool)

(assert (=> d!1723614 m!6417362))

(declare-fun m!6417364 () Bool)

(assert (=> d!1723614 m!6417364))

(declare-fun m!6417366 () Bool)

(assert (=> b!5391623 m!6417366))

(assert (=> b!5390882 d!1723614))

(declare-fun d!1723626 () Bool)

(assert (=> d!1723626 (= (nullable!5306 (regOne!30786 (regOne!30786 r!7292))) (nullableFct!1573 (regOne!30786 (regOne!30786 r!7292))))))

(declare-fun bs!1247443 () Bool)

(assert (= bs!1247443 d!1723626))

(declare-fun m!6417368 () Bool)

(assert (=> bs!1247443 m!6417368))

(assert (=> b!5390903 d!1723626))

(declare-fun d!1723628 () Bool)

(declare-fun c!939585 () Bool)

(assert (=> d!1723628 (= c!939585 (isEmpty!33588 (t!374933 s!2326)))))

(declare-fun e!3343673 () Bool)

(assert (=> d!1723628 (= (matchZipper!1381 lt!2196637 (t!374933 s!2326)) e!3343673)))

(declare-fun b!5391624 () Bool)

(assert (=> b!5391624 (= e!3343673 (nullableZipper!1421 lt!2196637))))

(declare-fun b!5391625 () Bool)

(assert (=> b!5391625 (= e!3343673 (matchZipper!1381 (derivationStepZipper!1376 lt!2196637 (head!11561 (t!374933 s!2326))) (tail!10658 (t!374933 s!2326))))))

(assert (= (and d!1723628 c!939585) b!5391624))

(assert (= (and d!1723628 (not c!939585)) b!5391625))

(assert (=> d!1723628 m!6417006))

(declare-fun m!6417370 () Bool)

(assert (=> b!5391624 m!6417370))

(assert (=> b!5391625 m!6417010))

(assert (=> b!5391625 m!6417010))

(declare-fun m!6417372 () Bool)

(assert (=> b!5391625 m!6417372))

(assert (=> b!5391625 m!6417014))

(assert (=> b!5391625 m!6417372))

(assert (=> b!5391625 m!6417014))

(declare-fun m!6417374 () Bool)

(assert (=> b!5391625 m!6417374))

(assert (=> b!5390881 d!1723628))

(declare-fun d!1723630 () Bool)

(declare-fun c!939586 () Bool)

(assert (=> d!1723630 (= c!939586 (isEmpty!33588 s!2326))))

(declare-fun e!3343674 () Bool)

(assert (=> d!1723630 (= (matchZipper!1381 lt!2196633 s!2326) e!3343674)))

(declare-fun b!5391626 () Bool)

(assert (=> b!5391626 (= e!3343674 (nullableZipper!1421 lt!2196633))))

(declare-fun b!5391627 () Bool)

(assert (=> b!5391627 (= e!3343674 (matchZipper!1381 (derivationStepZipper!1376 lt!2196633 (head!11561 s!2326)) (tail!10658 s!2326)))))

(assert (= (and d!1723630 c!939586) b!5391626))

(assert (= (and d!1723630 (not c!939586)) b!5391627))

(assert (=> d!1723630 m!6416864))

(declare-fun m!6417376 () Bool)

(assert (=> b!5391626 m!6417376))

(assert (=> b!5391627 m!6416868))

(assert (=> b!5391627 m!6416868))

(declare-fun m!6417378 () Bool)

(assert (=> b!5391627 m!6417378))

(assert (=> b!5391627 m!6416872))

(assert (=> b!5391627 m!6417378))

(assert (=> b!5391627 m!6416872))

(declare-fun m!6417380 () Bool)

(assert (=> b!5391627 m!6417380))

(assert (=> b!5390881 d!1723630))

(declare-fun c!939590 () Bool)

(declare-fun c!939591 () Bool)

(declare-fun bm!385938 () Bool)

(declare-fun call!385944 () List!61711)

(assert (=> bm!385938 (= call!385944 ($colon$colon!1471 (exprs!5021 lt!2196628) (ite (or c!939590 c!939591) (regTwo!30786 (reg!15466 (regOne!30786 r!7292))) (reg!15466 (regOne!30786 r!7292)))))))

(declare-fun b!5391628 () Bool)

(declare-fun e!3343678 () (InoxSet Context!9042))

(declare-fun e!3343679 () (InoxSet Context!9042))

(assert (=> b!5391628 (= e!3343678 e!3343679)))

(declare-fun c!939587 () Bool)

(assert (=> b!5391628 (= c!939587 ((_ is Union!15137) (reg!15466 (regOne!30786 r!7292))))))

(declare-fun b!5391629 () Bool)

(declare-fun e!3343675 () (InoxSet Context!9042))

(declare-fun call!385947 () (InoxSet Context!9042))

(declare-fun call!385945 () (InoxSet Context!9042))

(assert (=> b!5391629 (= e!3343675 ((_ map or) call!385947 call!385945))))

(declare-fun d!1723632 () Bool)

(declare-fun c!939588 () Bool)

(assert (=> d!1723632 (= c!939588 (and ((_ is ElementMatch!15137) (reg!15466 (regOne!30786 r!7292))) (= (c!939381 (reg!15466 (regOne!30786 r!7292))) (h!68034 s!2326))))))

(assert (=> d!1723632 (= (derivationStepZipperDown!585 (reg!15466 (regOne!30786 r!7292)) lt!2196628 (h!68034 s!2326)) e!3343678)))

(declare-fun b!5391630 () Bool)

(declare-fun c!939589 () Bool)

(assert (=> b!5391630 (= c!939589 ((_ is Star!15137) (reg!15466 (regOne!30786 r!7292))))))

(declare-fun e!3343677 () (InoxSet Context!9042))

(declare-fun e!3343676 () (InoxSet Context!9042))

(assert (=> b!5391630 (= e!3343677 e!3343676)))

(declare-fun call!385946 () List!61711)

(declare-fun call!385948 () (InoxSet Context!9042))

(declare-fun bm!385939 () Bool)

(assert (=> bm!385939 (= call!385948 (derivationStepZipperDown!585 (ite c!939587 (regOne!30787 (reg!15466 (regOne!30786 r!7292))) (ite c!939590 (regTwo!30786 (reg!15466 (regOne!30786 r!7292))) (ite c!939591 (regOne!30786 (reg!15466 (regOne!30786 r!7292))) (reg!15466 (reg!15466 (regOne!30786 r!7292)))))) (ite (or c!939587 c!939590) lt!2196628 (Context!9043 call!385946)) (h!68034 s!2326)))))

(declare-fun bm!385940 () Bool)

(assert (=> bm!385940 (= call!385947 (derivationStepZipperDown!585 (ite c!939587 (regTwo!30787 (reg!15466 (regOne!30786 r!7292))) (regOne!30786 (reg!15466 (regOne!30786 r!7292)))) (ite c!939587 lt!2196628 (Context!9043 call!385944)) (h!68034 s!2326)))))

(declare-fun b!5391631 () Bool)

(declare-fun call!385943 () (InoxSet Context!9042))

(assert (=> b!5391631 (= e!3343676 call!385943)))

(declare-fun bm!385941 () Bool)

(assert (=> bm!385941 (= call!385943 call!385945)))

(declare-fun b!5391632 () Bool)

(assert (=> b!5391632 (= e!3343675 e!3343677)))

(assert (=> b!5391632 (= c!939591 ((_ is Concat!23982) (reg!15466 (regOne!30786 r!7292))))))

(declare-fun b!5391633 () Bool)

(assert (=> b!5391633 (= e!3343677 call!385943)))

(declare-fun bm!385942 () Bool)

(assert (=> bm!385942 (= call!385946 call!385944)))

(declare-fun b!5391634 () Bool)

(assert (=> b!5391634 (= e!3343679 ((_ map or) call!385948 call!385947))))

(declare-fun b!5391635 () Bool)

(assert (=> b!5391635 (= e!3343676 ((as const (Array Context!9042 Bool)) false))))

(declare-fun b!5391636 () Bool)

(declare-fun e!3343680 () Bool)

(assert (=> b!5391636 (= e!3343680 (nullable!5306 (regOne!30786 (reg!15466 (regOne!30786 r!7292)))))))

(declare-fun b!5391637 () Bool)

(assert (=> b!5391637 (= c!939590 e!3343680)))

(declare-fun res!2291031 () Bool)

(assert (=> b!5391637 (=> (not res!2291031) (not e!3343680))))

(assert (=> b!5391637 (= res!2291031 ((_ is Concat!23982) (reg!15466 (regOne!30786 r!7292))))))

(assert (=> b!5391637 (= e!3343679 e!3343675)))

(declare-fun bm!385943 () Bool)

(assert (=> bm!385943 (= call!385945 call!385948)))

(declare-fun b!5391638 () Bool)

(assert (=> b!5391638 (= e!3343678 (store ((as const (Array Context!9042 Bool)) false) lt!2196628 true))))

(assert (= (and d!1723632 c!939588) b!5391638))

(assert (= (and d!1723632 (not c!939588)) b!5391628))

(assert (= (and b!5391628 c!939587) b!5391634))

(assert (= (and b!5391628 (not c!939587)) b!5391637))

(assert (= (and b!5391637 res!2291031) b!5391636))

(assert (= (and b!5391637 c!939590) b!5391629))

(assert (= (and b!5391637 (not c!939590)) b!5391632))

(assert (= (and b!5391632 c!939591) b!5391633))

(assert (= (and b!5391632 (not c!939591)) b!5391630))

(assert (= (and b!5391630 c!939589) b!5391631))

(assert (= (and b!5391630 (not c!939589)) b!5391635))

(assert (= (or b!5391633 b!5391631) bm!385942))

(assert (= (or b!5391633 b!5391631) bm!385941))

(assert (= (or b!5391629 bm!385942) bm!385938))

(assert (= (or b!5391629 bm!385941) bm!385943))

(assert (= (or b!5391634 b!5391629) bm!385940))

(assert (= (or b!5391634 bm!385943) bm!385939))

(declare-fun m!6417382 () Bool)

(assert (=> bm!385940 m!6417382))

(declare-fun m!6417384 () Bool)

(assert (=> bm!385938 m!6417384))

(assert (=> b!5391638 m!6416816))

(declare-fun m!6417386 () Bool)

(assert (=> b!5391636 m!6417386))

(declare-fun m!6417388 () Bool)

(assert (=> bm!385939 m!6417388))

(assert (=> b!5390904 d!1723632))

(declare-fun d!1723634 () Bool)

(declare-fun lt!2196744 () Regex!15137)

(assert (=> d!1723634 (validRegex!6873 lt!2196744)))

(assert (=> d!1723634 (= lt!2196744 (generalisedUnion!1066 (unfocusZipperList!579 zl!343)))))

(assert (=> d!1723634 (= (unfocusZipper!879 zl!343) lt!2196744)))

(declare-fun bs!1247444 () Bool)

(assert (= bs!1247444 d!1723634))

(declare-fun m!6417390 () Bool)

(assert (=> bs!1247444 m!6417390))

(assert (=> bs!1247444 m!6416780))

(assert (=> bs!1247444 m!6416780))

(assert (=> bs!1247444 m!6416782))

(assert (=> b!5390890 d!1723634))

(declare-fun bs!1247445 () Bool)

(declare-fun d!1723636 () Bool)

(assert (= bs!1247445 (and d!1723636 b!5390896)))

(declare-fun lambda!280082 () Int)

(assert (=> bs!1247445 (= lambda!280082 lambda!280017)))

(declare-fun bs!1247446 () Bool)

(assert (= bs!1247446 (and d!1723636 d!1723584)))

(assert (=> bs!1247446 (= lambda!280082 lambda!280071)))

(declare-fun bs!1247447 () Bool)

(assert (= bs!1247447 (and d!1723636 d!1723594)))

(assert (=> bs!1247447 (= lambda!280082 lambda!280078)))

(declare-fun bs!1247448 () Bool)

(assert (= bs!1247448 (and d!1723636 d!1723612)))

(assert (=> bs!1247448 (= lambda!280082 lambda!280081)))

(declare-fun bs!1247449 () Bool)

(assert (= bs!1247449 (and d!1723636 d!1723434)))

(assert (=> bs!1247449 (= lambda!280082 lambda!280020)))

(assert (=> d!1723636 (= (inv!81089 setElem!35021) (forall!14515 (exprs!5021 setElem!35021) lambda!280082))))

(declare-fun bs!1247450 () Bool)

(assert (= bs!1247450 d!1723636))

(declare-fun m!6417392 () Bool)

(assert (=> bs!1247450 m!6417392))

(assert (=> setNonEmpty!35021 d!1723636))

(declare-fun d!1723638 () Bool)

(assert (=> d!1723638 (= (flatMap!864 lt!2196631 lambda!280016) (dynLambda!24284 lambda!280016 lt!2196628))))

(declare-fun lt!2196745 () Unit!154070)

(assert (=> d!1723638 (= lt!2196745 (choose!40560 lt!2196631 lt!2196628 lambda!280016))))

(assert (=> d!1723638 (= lt!2196631 (store ((as const (Array Context!9042 Bool)) false) lt!2196628 true))))

(assert (=> d!1723638 (= (lemmaFlatMapOnSingletonSet!396 lt!2196631 lt!2196628 lambda!280016) lt!2196745)))

(declare-fun b_lambda!206247 () Bool)

(assert (=> (not b_lambda!206247) (not d!1723638)))

(declare-fun bs!1247451 () Bool)

(assert (= bs!1247451 d!1723638))

(assert (=> bs!1247451 m!6416810))

(declare-fun m!6417394 () Bool)

(assert (=> bs!1247451 m!6417394))

(declare-fun m!6417396 () Bool)

(assert (=> bs!1247451 m!6417396))

(assert (=> bs!1247451 m!6416816))

(assert (=> b!5390891 d!1723638))

(declare-fun d!1723640 () Bool)

(assert (=> d!1723640 (= (flatMap!864 lt!2196626 lambda!280016) (dynLambda!24284 lambda!280016 lt!2196645))))

(declare-fun lt!2196746 () Unit!154070)

(assert (=> d!1723640 (= lt!2196746 (choose!40560 lt!2196626 lt!2196645 lambda!280016))))

(assert (=> d!1723640 (= lt!2196626 (store ((as const (Array Context!9042 Bool)) false) lt!2196645 true))))

(assert (=> d!1723640 (= (lemmaFlatMapOnSingletonSet!396 lt!2196626 lt!2196645 lambda!280016) lt!2196746)))

(declare-fun b_lambda!206249 () Bool)

(assert (=> (not b_lambda!206249) (not d!1723640)))

(declare-fun bs!1247452 () Bool)

(assert (= bs!1247452 d!1723640))

(assert (=> bs!1247452 m!6416808))

(declare-fun m!6417398 () Bool)

(assert (=> bs!1247452 m!6417398))

(declare-fun m!6417400 () Bool)

(assert (=> bs!1247452 m!6417400))

(assert (=> bs!1247452 m!6416804))

(assert (=> b!5390891 d!1723640))

(declare-fun d!1723642 () Bool)

(declare-fun lt!2196747 () Regex!15137)

(assert (=> d!1723642 (validRegex!6873 lt!2196747)))

(assert (=> d!1723642 (= lt!2196747 (generalisedUnion!1066 (unfocusZipperList!579 (Cons!61588 lt!2196645 Nil!61588))))))

(assert (=> d!1723642 (= (unfocusZipper!879 (Cons!61588 lt!2196645 Nil!61588)) lt!2196747)))

(declare-fun bs!1247453 () Bool)

(assert (= bs!1247453 d!1723642))

(declare-fun m!6417402 () Bool)

(assert (=> bs!1247453 m!6417402))

(declare-fun m!6417404 () Bool)

(assert (=> bs!1247453 m!6417404))

(assert (=> bs!1247453 m!6417404))

(declare-fun m!6417406 () Bool)

(assert (=> bs!1247453 m!6417406))

(assert (=> b!5390891 d!1723642))

(declare-fun d!1723644 () Bool)

(declare-fun c!939592 () Bool)

(declare-fun e!3343681 () Bool)

(assert (=> d!1723644 (= c!939592 e!3343681)))

(declare-fun res!2291032 () Bool)

(assert (=> d!1723644 (=> (not res!2291032) (not e!3343681))))

(assert (=> d!1723644 (= res!2291032 ((_ is Cons!61587) (exprs!5021 lt!2196628)))))

(declare-fun e!3343682 () (InoxSet Context!9042))

(assert (=> d!1723644 (= (derivationStepZipperUp!509 lt!2196628 (h!68034 s!2326)) e!3343682)))

(declare-fun bm!385944 () Bool)

(declare-fun call!385949 () (InoxSet Context!9042))

(assert (=> bm!385944 (= call!385949 (derivationStepZipperDown!585 (h!68035 (exprs!5021 lt!2196628)) (Context!9043 (t!374934 (exprs!5021 lt!2196628))) (h!68034 s!2326)))))

(declare-fun b!5391639 () Bool)

(assert (=> b!5391639 (= e!3343682 ((_ map or) call!385949 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 lt!2196628))) (h!68034 s!2326))))))

(declare-fun b!5391640 () Bool)

(assert (=> b!5391640 (= e!3343681 (nullable!5306 (h!68035 (exprs!5021 lt!2196628))))))

(declare-fun b!5391641 () Bool)

(declare-fun e!3343683 () (InoxSet Context!9042))

(assert (=> b!5391641 (= e!3343682 e!3343683)))

(declare-fun c!939593 () Bool)

(assert (=> b!5391641 (= c!939593 ((_ is Cons!61587) (exprs!5021 lt!2196628)))))

(declare-fun b!5391642 () Bool)

(assert (=> b!5391642 (= e!3343683 call!385949)))

(declare-fun b!5391643 () Bool)

(assert (=> b!5391643 (= e!3343683 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723644 res!2291032) b!5391640))

(assert (= (and d!1723644 c!939592) b!5391639))

(assert (= (and d!1723644 (not c!939592)) b!5391641))

(assert (= (and b!5391641 c!939593) b!5391642))

(assert (= (and b!5391641 (not c!939593)) b!5391643))

(assert (= (or b!5391639 b!5391642) bm!385944))

(declare-fun m!6417408 () Bool)

(assert (=> bm!385944 m!6417408))

(declare-fun m!6417410 () Bool)

(assert (=> b!5391639 m!6417410))

(declare-fun m!6417412 () Bool)

(assert (=> b!5391640 m!6417412))

(assert (=> b!5390891 d!1723644))

(declare-fun d!1723646 () Bool)

(declare-fun c!939594 () Bool)

(declare-fun e!3343684 () Bool)

(assert (=> d!1723646 (= c!939594 e!3343684)))

(declare-fun res!2291033 () Bool)

(assert (=> d!1723646 (=> (not res!2291033) (not e!3343684))))

(assert (=> d!1723646 (= res!2291033 ((_ is Cons!61587) (exprs!5021 lt!2196645)))))

(declare-fun e!3343685 () (InoxSet Context!9042))

(assert (=> d!1723646 (= (derivationStepZipperUp!509 lt!2196645 (h!68034 s!2326)) e!3343685)))

(declare-fun bm!385945 () Bool)

(declare-fun call!385950 () (InoxSet Context!9042))

(assert (=> bm!385945 (= call!385950 (derivationStepZipperDown!585 (h!68035 (exprs!5021 lt!2196645)) (Context!9043 (t!374934 (exprs!5021 lt!2196645))) (h!68034 s!2326)))))

(declare-fun b!5391644 () Bool)

(assert (=> b!5391644 (= e!3343685 ((_ map or) call!385950 (derivationStepZipperUp!509 (Context!9043 (t!374934 (exprs!5021 lt!2196645))) (h!68034 s!2326))))))

(declare-fun b!5391645 () Bool)

(assert (=> b!5391645 (= e!3343684 (nullable!5306 (h!68035 (exprs!5021 lt!2196645))))))

(declare-fun b!5391646 () Bool)

(declare-fun e!3343686 () (InoxSet Context!9042))

(assert (=> b!5391646 (= e!3343685 e!3343686)))

(declare-fun c!939595 () Bool)

(assert (=> b!5391646 (= c!939595 ((_ is Cons!61587) (exprs!5021 lt!2196645)))))

(declare-fun b!5391647 () Bool)

(assert (=> b!5391647 (= e!3343686 call!385950)))

(declare-fun b!5391648 () Bool)

(assert (=> b!5391648 (= e!3343686 ((as const (Array Context!9042 Bool)) false))))

(assert (= (and d!1723646 res!2291033) b!5391645))

(assert (= (and d!1723646 c!939594) b!5391644))

(assert (= (and d!1723646 (not c!939594)) b!5391646))

(assert (= (and b!5391646 c!939595) b!5391647))

(assert (= (and b!5391646 (not c!939595)) b!5391648))

(assert (= (or b!5391644 b!5391647) bm!385945))

(declare-fun m!6417414 () Bool)

(assert (=> bm!385945 m!6417414))

(declare-fun m!6417416 () Bool)

(assert (=> b!5391644 m!6417416))

(declare-fun m!6417418 () Bool)

(assert (=> b!5391645 m!6417418))

(assert (=> b!5390891 d!1723646))

(declare-fun d!1723648 () Bool)

(assert (=> d!1723648 (= (flatMap!864 lt!2196626 lambda!280016) (choose!40558 lt!2196626 lambda!280016))))

(declare-fun bs!1247454 () Bool)

(assert (= bs!1247454 d!1723648))

(declare-fun m!6417420 () Bool)

(assert (=> bs!1247454 m!6417420))

(assert (=> b!5390891 d!1723648))

(declare-fun d!1723650 () Bool)

(assert (=> d!1723650 (= (flatMap!864 lt!2196631 lambda!280016) (choose!40558 lt!2196631 lambda!280016))))

(declare-fun bs!1247455 () Bool)

(assert (= bs!1247455 d!1723650))

(declare-fun m!6417422 () Bool)

(assert (=> bs!1247455 m!6417422))

(assert (=> b!5390891 d!1723650))

(declare-fun bs!1247456 () Bool)

(declare-fun d!1723652 () Bool)

(assert (= bs!1247456 (and d!1723652 b!5390896)))

(declare-fun lambda!280085 () Int)

(assert (=> bs!1247456 (= lambda!280085 lambda!280017)))

(declare-fun bs!1247457 () Bool)

(assert (= bs!1247457 (and d!1723652 d!1723584)))

(assert (=> bs!1247457 (= lambda!280085 lambda!280071)))

(declare-fun bs!1247458 () Bool)

(assert (= bs!1247458 (and d!1723652 d!1723636)))

(assert (=> bs!1247458 (= lambda!280085 lambda!280082)))

(declare-fun bs!1247459 () Bool)

(assert (= bs!1247459 (and d!1723652 d!1723594)))

(assert (=> bs!1247459 (= lambda!280085 lambda!280078)))

(declare-fun bs!1247460 () Bool)

(assert (= bs!1247460 (and d!1723652 d!1723612)))

(assert (=> bs!1247460 (= lambda!280085 lambda!280081)))

(declare-fun bs!1247461 () Bool)

(assert (= bs!1247461 (and d!1723652 d!1723434)))

(assert (=> bs!1247461 (= lambda!280085 lambda!280020)))

(declare-fun b!5391669 () Bool)

(declare-fun e!3343703 () Regex!15137)

(assert (=> b!5391669 (= e!3343703 (h!68035 (exprs!5021 (h!68036 zl!343))))))

(declare-fun b!5391670 () Bool)

(declare-fun e!3343702 () Bool)

(assert (=> b!5391670 (= e!3343702 (isEmpty!33586 (t!374934 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun e!3343700 () Bool)

(assert (=> d!1723652 e!3343700))

(declare-fun res!2291038 () Bool)

(assert (=> d!1723652 (=> (not res!2291038) (not e!3343700))))

(declare-fun lt!2196750 () Regex!15137)

(assert (=> d!1723652 (= res!2291038 (validRegex!6873 lt!2196750))))

(assert (=> d!1723652 (= lt!2196750 e!3343703)))

(declare-fun c!939606 () Bool)

(assert (=> d!1723652 (= c!939606 e!3343702)))

(declare-fun res!2291039 () Bool)

(assert (=> d!1723652 (=> (not res!2291039) (not e!3343702))))

(assert (=> d!1723652 (= res!2291039 ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343))))))

(assert (=> d!1723652 (forall!14515 (exprs!5021 (h!68036 zl!343)) lambda!280085)))

(assert (=> d!1723652 (= (generalisedConcat!806 (exprs!5021 (h!68036 zl!343))) lt!2196750)))

(declare-fun b!5391671 () Bool)

(declare-fun e!3343701 () Bool)

(declare-fun isEmptyExpr!956 (Regex!15137) Bool)

(assert (=> b!5391671 (= e!3343701 (isEmptyExpr!956 lt!2196750))))

(declare-fun b!5391672 () Bool)

(declare-fun e!3343699 () Bool)

(declare-fun isConcat!479 (Regex!15137) Bool)

(assert (=> b!5391672 (= e!3343699 (isConcat!479 lt!2196750))))

(declare-fun b!5391673 () Bool)

(assert (=> b!5391673 (= e!3343699 (= lt!2196750 (head!11562 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5391674 () Bool)

(assert (=> b!5391674 (= e!3343700 e!3343701)))

(declare-fun c!939604 () Bool)

(assert (=> b!5391674 (= c!939604 (isEmpty!33586 (exprs!5021 (h!68036 zl!343))))))

(declare-fun b!5391675 () Bool)

(declare-fun e!3343704 () Regex!15137)

(assert (=> b!5391675 (= e!3343703 e!3343704)))

(declare-fun c!939607 () Bool)

(assert (=> b!5391675 (= c!939607 ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343))))))

(declare-fun b!5391676 () Bool)

(assert (=> b!5391676 (= e!3343701 e!3343699)))

(declare-fun c!939605 () Bool)

(assert (=> b!5391676 (= c!939605 (isEmpty!33586 (tail!10659 (exprs!5021 (h!68036 zl!343)))))))

(declare-fun b!5391677 () Bool)

(assert (=> b!5391677 (= e!3343704 EmptyExpr!15137)))

(declare-fun b!5391678 () Bool)

(assert (=> b!5391678 (= e!3343704 (Concat!23982 (h!68035 (exprs!5021 (h!68036 zl!343))) (generalisedConcat!806 (t!374934 (exprs!5021 (h!68036 zl!343))))))))

(assert (= (and d!1723652 res!2291039) b!5391670))

(assert (= (and d!1723652 c!939606) b!5391669))

(assert (= (and d!1723652 (not c!939606)) b!5391675))

(assert (= (and b!5391675 c!939607) b!5391678))

(assert (= (and b!5391675 (not c!939607)) b!5391677))

(assert (= (and d!1723652 res!2291038) b!5391674))

(assert (= (and b!5391674 c!939604) b!5391671))

(assert (= (and b!5391674 (not c!939604)) b!5391676))

(assert (= (and b!5391676 c!939605) b!5391673))

(assert (= (and b!5391676 (not c!939605)) b!5391672))

(declare-fun m!6417424 () Bool)

(assert (=> b!5391672 m!6417424))

(declare-fun m!6417426 () Bool)

(assert (=> b!5391674 m!6417426))

(declare-fun m!6417428 () Bool)

(assert (=> b!5391673 m!6417428))

(declare-fun m!6417430 () Bool)

(assert (=> b!5391671 m!6417430))

(assert (=> b!5391670 m!6416854))

(declare-fun m!6417432 () Bool)

(assert (=> b!5391678 m!6417432))

(declare-fun m!6417434 () Bool)

(assert (=> b!5391676 m!6417434))

(assert (=> b!5391676 m!6417434))

(declare-fun m!6417436 () Bool)

(assert (=> b!5391676 m!6417436))

(declare-fun m!6417438 () Bool)

(assert (=> d!1723652 m!6417438))

(declare-fun m!6417440 () Bool)

(assert (=> d!1723652 m!6417440))

(assert (=> b!5390867 d!1723652))

(assert (=> b!5390887 d!1723490))

(declare-fun b!5391686 () Bool)

(declare-fun e!3343710 () Bool)

(declare-fun tp!1492828 () Bool)

(assert (=> b!5391686 (= e!3343710 tp!1492828)))

(declare-fun b!5391685 () Bool)

(declare-fun tp!1492829 () Bool)

(declare-fun e!3343709 () Bool)

(assert (=> b!5391685 (= e!3343709 (and (inv!81089 (h!68036 (t!374935 zl!343))) e!3343710 tp!1492829))))

(assert (=> b!5390895 (= tp!1492756 e!3343709)))

(assert (= b!5391685 b!5391686))

(assert (= (and b!5390895 ((_ is Cons!61588) (t!374935 zl!343))) b!5391685))

(declare-fun m!6417442 () Bool)

(assert (=> b!5391685 m!6417442))

(declare-fun b!5391699 () Bool)

(declare-fun e!3343713 () Bool)

(declare-fun tp!1492841 () Bool)

(assert (=> b!5391699 (= e!3343713 tp!1492841)))

(declare-fun b!5391697 () Bool)

(assert (=> b!5391697 (= e!3343713 tp_is_empty!39527)))

(declare-fun b!5391700 () Bool)

(declare-fun tp!1492843 () Bool)

(declare-fun tp!1492844 () Bool)

(assert (=> b!5391700 (= e!3343713 (and tp!1492843 tp!1492844))))

(declare-fun b!5391698 () Bool)

(declare-fun tp!1492840 () Bool)

(declare-fun tp!1492842 () Bool)

(assert (=> b!5391698 (= e!3343713 (and tp!1492840 tp!1492842))))

(assert (=> b!5390905 (= tp!1492763 e!3343713)))

(assert (= (and b!5390905 ((_ is ElementMatch!15137) (regOne!30787 r!7292))) b!5391697))

(assert (= (and b!5390905 ((_ is Concat!23982) (regOne!30787 r!7292))) b!5391698))

(assert (= (and b!5390905 ((_ is Star!15137) (regOne!30787 r!7292))) b!5391699))

(assert (= (and b!5390905 ((_ is Union!15137) (regOne!30787 r!7292))) b!5391700))

(declare-fun b!5391703 () Bool)

(declare-fun e!3343714 () Bool)

(declare-fun tp!1492846 () Bool)

(assert (=> b!5391703 (= e!3343714 tp!1492846)))

(declare-fun b!5391701 () Bool)

(assert (=> b!5391701 (= e!3343714 tp_is_empty!39527)))

(declare-fun b!5391704 () Bool)

(declare-fun tp!1492848 () Bool)

(declare-fun tp!1492849 () Bool)

(assert (=> b!5391704 (= e!3343714 (and tp!1492848 tp!1492849))))

(declare-fun b!5391702 () Bool)

(declare-fun tp!1492845 () Bool)

(declare-fun tp!1492847 () Bool)

(assert (=> b!5391702 (= e!3343714 (and tp!1492845 tp!1492847))))

(assert (=> b!5390905 (= tp!1492754 e!3343714)))

(assert (= (and b!5390905 ((_ is ElementMatch!15137) (regTwo!30787 r!7292))) b!5391701))

(assert (= (and b!5390905 ((_ is Concat!23982) (regTwo!30787 r!7292))) b!5391702))

(assert (= (and b!5390905 ((_ is Star!15137) (regTwo!30787 r!7292))) b!5391703))

(assert (= (and b!5390905 ((_ is Union!15137) (regTwo!30787 r!7292))) b!5391704))

(declare-fun b!5391707 () Bool)

(declare-fun e!3343715 () Bool)

(declare-fun tp!1492851 () Bool)

(assert (=> b!5391707 (= e!3343715 tp!1492851)))

(declare-fun b!5391705 () Bool)

(assert (=> b!5391705 (= e!3343715 tp_is_empty!39527)))

(declare-fun b!5391708 () Bool)

(declare-fun tp!1492853 () Bool)

(declare-fun tp!1492854 () Bool)

(assert (=> b!5391708 (= e!3343715 (and tp!1492853 tp!1492854))))

(declare-fun b!5391706 () Bool)

(declare-fun tp!1492850 () Bool)

(declare-fun tp!1492852 () Bool)

(assert (=> b!5391706 (= e!3343715 (and tp!1492850 tp!1492852))))

(assert (=> b!5390886 (= tp!1492761 e!3343715)))

(assert (= (and b!5390886 ((_ is ElementMatch!15137) (regOne!30786 r!7292))) b!5391705))

(assert (= (and b!5390886 ((_ is Concat!23982) (regOne!30786 r!7292))) b!5391706))

(assert (= (and b!5390886 ((_ is Star!15137) (regOne!30786 r!7292))) b!5391707))

(assert (= (and b!5390886 ((_ is Union!15137) (regOne!30786 r!7292))) b!5391708))

(declare-fun b!5391711 () Bool)

(declare-fun e!3343716 () Bool)

(declare-fun tp!1492856 () Bool)

(assert (=> b!5391711 (= e!3343716 tp!1492856)))

(declare-fun b!5391709 () Bool)

(assert (=> b!5391709 (= e!3343716 tp_is_empty!39527)))

(declare-fun b!5391712 () Bool)

(declare-fun tp!1492858 () Bool)

(declare-fun tp!1492859 () Bool)

(assert (=> b!5391712 (= e!3343716 (and tp!1492858 tp!1492859))))

(declare-fun b!5391710 () Bool)

(declare-fun tp!1492855 () Bool)

(declare-fun tp!1492857 () Bool)

(assert (=> b!5391710 (= e!3343716 (and tp!1492855 tp!1492857))))

(assert (=> b!5390886 (= tp!1492760 e!3343716)))

(assert (= (and b!5390886 ((_ is ElementMatch!15137) (regTwo!30786 r!7292))) b!5391709))

(assert (= (and b!5390886 ((_ is Concat!23982) (regTwo!30786 r!7292))) b!5391710))

(assert (= (and b!5390886 ((_ is Star!15137) (regTwo!30786 r!7292))) b!5391711))

(assert (= (and b!5390886 ((_ is Union!15137) (regTwo!30786 r!7292))) b!5391712))

(declare-fun condSetEmpty!35027 () Bool)

(assert (=> setNonEmpty!35021 (= condSetEmpty!35027 (= setRest!35021 ((as const (Array Context!9042 Bool)) false)))))

(declare-fun setRes!35027 () Bool)

(assert (=> setNonEmpty!35021 (= tp!1492757 setRes!35027)))

(declare-fun setIsEmpty!35027 () Bool)

(assert (=> setIsEmpty!35027 setRes!35027))

(declare-fun tp!1492865 () Bool)

(declare-fun setNonEmpty!35027 () Bool)

(declare-fun e!3343719 () Bool)

(declare-fun setElem!35027 () Context!9042)

(assert (=> setNonEmpty!35027 (= setRes!35027 (and tp!1492865 (inv!81089 setElem!35027) e!3343719))))

(declare-fun setRest!35027 () (InoxSet Context!9042))

(assert (=> setNonEmpty!35027 (= setRest!35021 ((_ map or) (store ((as const (Array Context!9042 Bool)) false) setElem!35027 true) setRest!35027))))

(declare-fun b!5391717 () Bool)

(declare-fun tp!1492864 () Bool)

(assert (=> b!5391717 (= e!3343719 tp!1492864)))

(assert (= (and setNonEmpty!35021 condSetEmpty!35027) setIsEmpty!35027))

(assert (= (and setNonEmpty!35021 (not condSetEmpty!35027)) setNonEmpty!35027))

(assert (= setNonEmpty!35027 b!5391717))

(declare-fun m!6417444 () Bool)

(assert (=> setNonEmpty!35027 m!6417444))

(declare-fun b!5391722 () Bool)

(declare-fun e!3343722 () Bool)

(declare-fun tp!1492870 () Bool)

(declare-fun tp!1492871 () Bool)

(assert (=> b!5391722 (= e!3343722 (and tp!1492870 tp!1492871))))

(assert (=> b!5390880 (= tp!1492759 e!3343722)))

(assert (= (and b!5390880 ((_ is Cons!61587) (exprs!5021 setElem!35021))) b!5391722))

(declare-fun b!5391723 () Bool)

(declare-fun e!3343723 () Bool)

(declare-fun tp!1492872 () Bool)

(declare-fun tp!1492873 () Bool)

(assert (=> b!5391723 (= e!3343723 (and tp!1492872 tp!1492873))))

(assert (=> b!5390901 (= tp!1492755 e!3343723)))

(assert (= (and b!5390901 ((_ is Cons!61587) (exprs!5021 c!324))) b!5391723))

(declare-fun b!5391724 () Bool)

(declare-fun e!3343724 () Bool)

(declare-fun tp!1492874 () Bool)

(declare-fun tp!1492875 () Bool)

(assert (=> b!5391724 (= e!3343724 (and tp!1492874 tp!1492875))))

(assert (=> b!5390894 (= tp!1492762 e!3343724)))

(assert (= (and b!5390894 ((_ is Cons!61587) (exprs!5021 (h!68036 zl!343)))) b!5391724))

(declare-fun b!5391729 () Bool)

(declare-fun e!3343727 () Bool)

(declare-fun tp!1492878 () Bool)

(assert (=> b!5391729 (= e!3343727 (and tp_is_empty!39527 tp!1492878))))

(assert (=> b!5390872 (= tp!1492758 e!3343727)))

(assert (= (and b!5390872 ((_ is Cons!61586) (t!374933 s!2326))) b!5391729))

(declare-fun b!5391732 () Bool)

(declare-fun e!3343728 () Bool)

(declare-fun tp!1492880 () Bool)

(assert (=> b!5391732 (= e!3343728 tp!1492880)))

(declare-fun b!5391730 () Bool)

(assert (=> b!5391730 (= e!3343728 tp_is_empty!39527)))

(declare-fun b!5391733 () Bool)

(declare-fun tp!1492882 () Bool)

(declare-fun tp!1492883 () Bool)

(assert (=> b!5391733 (= e!3343728 (and tp!1492882 tp!1492883))))

(declare-fun b!5391731 () Bool)

(declare-fun tp!1492879 () Bool)

(declare-fun tp!1492881 () Bool)

(assert (=> b!5391731 (= e!3343728 (and tp!1492879 tp!1492881))))

(assert (=> b!5390888 (= tp!1492753 e!3343728)))

(assert (= (and b!5390888 ((_ is ElementMatch!15137) (reg!15466 r!7292))) b!5391730))

(assert (= (and b!5390888 ((_ is Concat!23982) (reg!15466 r!7292))) b!5391731))

(assert (= (and b!5390888 ((_ is Star!15137) (reg!15466 r!7292))) b!5391732))

(assert (= (and b!5390888 ((_ is Union!15137) (reg!15466 r!7292))) b!5391733))

(declare-fun b_lambda!206251 () Bool)

(assert (= b_lambda!206221 (or b!5390896 b_lambda!206251)))

(declare-fun bs!1247462 () Bool)

(declare-fun d!1723654 () Bool)

(assert (= bs!1247462 (and d!1723654 b!5390896)))

(assert (=> bs!1247462 (= (dynLambda!24282 lambda!280017 (h!68035 (exprs!5021 c!324))) (validRegex!6873 (h!68035 (exprs!5021 c!324))))))

(declare-fun m!6417446 () Bool)

(assert (=> bs!1247462 m!6417446))

(assert (=> b!5390922 d!1723654))

(declare-fun b_lambda!206253 () Bool)

(assert (= b_lambda!206247 (or b!5390897 b_lambda!206253)))

(declare-fun bs!1247463 () Bool)

(declare-fun d!1723656 () Bool)

(assert (= bs!1247463 (and d!1723656 b!5390897)))

(assert (=> bs!1247463 (= (dynLambda!24284 lambda!280016 lt!2196628) (derivationStepZipperUp!509 lt!2196628 (h!68034 s!2326)))))

(assert (=> bs!1247463 m!6416814))

(assert (=> d!1723638 d!1723656))

(declare-fun b_lambda!206255 () Bool)

(assert (= b_lambda!206249 (or b!5390897 b_lambda!206255)))

(declare-fun bs!1247464 () Bool)

(declare-fun d!1723658 () Bool)

(assert (= bs!1247464 (and d!1723658 b!5390897)))

(assert (=> bs!1247464 (= (dynLambda!24284 lambda!280016 lt!2196645) (derivationStepZipperUp!509 lt!2196645 (h!68034 s!2326)))))

(assert (=> bs!1247464 m!6416812))

(assert (=> d!1723640 d!1723658))

(declare-fun b_lambda!206257 () Bool)

(assert (= b_lambda!206233 (or b!5390897 b_lambda!206257)))

(declare-fun bs!1247465 () Bool)

(declare-fun d!1723660 () Bool)

(assert (= bs!1247465 (and d!1723660 b!5390897)))

(assert (=> bs!1247465 (= (dynLambda!24284 lambda!280016 lt!2196636) (derivationStepZipperUp!509 lt!2196636 (h!68034 s!2326)))))

(assert (=> bs!1247465 m!6416848))

(assert (=> d!1723568 d!1723660))

(declare-fun b_lambda!206259 () Bool)

(assert (= b_lambda!206231 (or b!5390897 b_lambda!206259)))

(declare-fun bs!1247466 () Bool)

(declare-fun d!1723662 () Bool)

(assert (= bs!1247466 (and d!1723662 b!5390897)))

(assert (=> bs!1247466 (= (dynLambda!24284 lambda!280016 (h!68036 zl!343)) (derivationStepZipperUp!509 (h!68036 zl!343) (h!68034 s!2326)))))

(assert (=> bs!1247466 m!6416764))

(assert (=> d!1723562 d!1723662))

(check-sat (not b!5391625) (not bm!385923) (not d!1723630) (not b!5391699) (not bm!385915) (not bm!385882) (not b!5391480) (not b!5390917) (not d!1723636) (not b!5391708) (not b!5391550) (not d!1723450) (not d!1723634) (not d!1723438) (not b_lambda!206255) (not bm!385892) (not b!5391731) (not bm!385924) (not d!1723454) (not b!5391324) (not bm!385945) (not b!5391707) (not b!5391722) tp_is_empty!39527 (not bs!1247464) (not b!5391678) (not b!5391711) (not d!1723562) (not b!5391558) (not b!5391685) (not bs!1247462) (not b!5391712) (not b!5391623) (not d!1723612) (not b!5391626) (not bm!385927) (not bm!385939) (not b!5391471) (not d!1723592) (not b!5391419) (not b!5391315) (not b!5391627) (not d!1723626) (not bm!385926) (not b!5391467) (not b!5391462) (not b!5391431) (not b!5391729) (not b!5390984) (not b!5391553) (not b!5391671) (not d!1723642) (not d!1723584) (not d!1723570) (not d!1723628) (not b_lambda!206253) (not b!5391640) (not d!1723436) (not b!5391345) (not d!1723486) (not setNonEmpty!35027) (not d!1723568) (not d!1723652) (not b!5391221) (not b!5391476) (not b!5391406) (not b!5391320) (not b!5391636) (not bs!1247463) (not b!5391311) (not bm!385896) (not b!5391624) (not b!5391559) (not bs!1247465) (not b!5391723) (not b!5391410) (not b!5390986) (not d!1723640) (not d!1723648) (not b!5390991) (not b!5391425) (not b!5391344) (not b!5391409) (not b!5391706) (not b!5391670) (not bm!385944) (not bm!385928) (not d!1723548) (not b!5391698) (not d!1723650) (not d!1723576) (not b!5391673) (not b!5391674) (not b!5391430) (not b_lambda!206259) (not b!5391639) (not b!5391418) (not b!5391472) (not bm!385916) (not b_lambda!206251) (not b!5391312) (not b!5391316) (not bs!1247466) (not b!5391468) (not b!5391702) (not d!1723574) (not bm!385940) (not b!5391676) (not b!5391686) (not b!5391340) (not bm!385910) (not b!5391704) (not b!5390985) (not b!5391426) (not b!5390988) (not b!5390923) (not d!1723594) (not b!5391488) (not bm!385938) (not b!5391700) (not d!1723442) (not b!5391733) (not d!1723452) (not b!5390989) (not d!1723434) (not b!5391487) (not b!5391617) (not b!5391644) (not b!5391552) (not bm!385883) (not d!1723530) (not b!5391672) (not b_lambda!206257) (not b!5390916) (not b!5391222) (not b!5391555) (not d!1723444) (not b!5391429) (not b!5391556) (not d!1723458) (not d!1723578) (not b!5391645) (not d!1723538) (not bm!385909) (not b!5391100) (not d!1723638) (not d!1723490) (not d!1723586) (not b!5391703) (not d!1723564) (not b!5391099) (not b!5391724) (not bm!385911) (not b!5391732) (not d!1723614) (not bm!385895) (not b!5391339) (not b!5391710) (not d!1723560) (not b!5391717))
(check-sat)
