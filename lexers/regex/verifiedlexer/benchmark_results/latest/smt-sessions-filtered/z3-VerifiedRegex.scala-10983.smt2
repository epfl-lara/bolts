; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569442 () Bool)

(assert start!569442)

(declare-fun b!5424867 () Bool)

(assert (=> b!5424867 true))

(assert (=> b!5424867 true))

(declare-fun lambda!284436 () Int)

(declare-fun lambda!284435 () Int)

(assert (=> b!5424867 (not (= lambda!284436 lambda!284435))))

(assert (=> b!5424867 true))

(assert (=> b!5424867 true))

(declare-fun b!5424885 () Bool)

(assert (=> b!5424885 true))

(declare-fun b!5424864 () Bool)

(declare-fun e!3361826 () Bool)

(assert (=> b!5424864 (= e!3361826 true)))

(declare-fun lt!2212809 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30696 0))(
  ( (C!30697 (val!25050 Int)) )
))
(declare-datatypes ((Regex!15213 0))(
  ( (ElementMatch!15213 (c!946145 C!30696)) (Concat!24058 (regOne!30938 Regex!15213) (regTwo!30938 Regex!15213)) (EmptyExpr!15213) (Star!15213 (reg!15542 Regex!15213)) (EmptyLang!15213) (Union!15213 (regOne!30939 Regex!15213) (regTwo!30939 Regex!15213)) )
))
(declare-datatypes ((List!61938 0))(
  ( (Nil!61814) (Cons!61814 (h!68262 Regex!15213) (t!375161 List!61938)) )
))
(declare-datatypes ((Context!9194 0))(
  ( (Context!9195 (exprs!5097 List!61938)) )
))
(declare-fun lt!2212800 () (InoxSet Context!9194))

(declare-datatypes ((List!61939 0))(
  ( (Nil!61815) (Cons!61815 (h!68263 C!30696) (t!375162 List!61939)) )
))
(declare-fun s!2326 () List!61939)

(declare-fun matchZipper!1457 ((InoxSet Context!9194) List!61939) Bool)

(assert (=> b!5424864 (= lt!2212809 (matchZipper!1457 lt!2212800 (t!375162 s!2326)))))

(declare-fun tp!1497253 () Bool)

(declare-fun e!3361836 () Bool)

(declare-datatypes ((List!61940 0))(
  ( (Nil!61816) (Cons!61816 (h!68264 Context!9194) (t!375163 List!61940)) )
))
(declare-fun zl!343 () List!61940)

(declare-fun e!3361830 () Bool)

(declare-fun b!5424865 () Bool)

(declare-fun inv!81279 (Context!9194) Bool)

(assert (=> b!5424865 (= e!3361836 (and (inv!81279 (h!68264 zl!343)) e!3361830 tp!1497253))))

(declare-fun b!5424866 () Bool)

(declare-fun e!3361821 () Bool)

(declare-fun e!3361835 () Bool)

(assert (=> b!5424866 (= e!3361821 e!3361835)))

(declare-fun res!2308611 () Bool)

(assert (=> b!5424866 (=> res!2308611 e!3361835)))

(declare-fun lt!2212803 () (InoxSet Context!9194))

(declare-fun lt!2212785 () (InoxSet Context!9194))

(assert (=> b!5424866 (= res!2308611 (not (= lt!2212803 lt!2212785)))))

(declare-fun r!7292 () Regex!15213)

(declare-fun lt!2212798 () Context!9194)

(declare-fun derivationStepZipperDown!661 (Regex!15213 Context!9194 C!30696) (InoxSet Context!9194))

(assert (=> b!5424866 (= lt!2212785 (derivationStepZipperDown!661 (reg!15542 (regOne!30938 r!7292)) lt!2212798 (h!68263 s!2326)))))

(declare-fun lt!2212787 () List!61938)

(assert (=> b!5424866 (= lt!2212798 (Context!9195 lt!2212787))))

(declare-fun lt!2212816 () Regex!15213)

(assert (=> b!5424866 (= lt!2212787 (Cons!61814 lt!2212816 (t!375161 (exprs!5097 (h!68264 zl!343)))))))

(assert (=> b!5424866 (= lt!2212816 (Star!15213 (reg!15542 (regOne!30938 r!7292))))))

(declare-fun b!5424868 () Bool)

(declare-fun e!3361823 () Bool)

(assert (=> b!5424868 (= e!3361823 e!3361826)))

(declare-fun res!2308603 () Bool)

(assert (=> b!5424868 (=> res!2308603 e!3361826)))

(declare-fun e!3361829 () Bool)

(assert (=> b!5424868 (= res!2308603 e!3361829)))

(declare-fun res!2308597 () Bool)

(assert (=> b!5424868 (=> (not res!2308597) (not e!3361829))))

(declare-fun lt!2212786 () Bool)

(assert (=> b!5424868 (= res!2308597 (not lt!2212786))))

(assert (=> b!5424868 (= lt!2212786 (matchZipper!1457 lt!2212803 (t!375162 s!2326)))))

(declare-fun b!5424869 () Bool)

(declare-fun e!3361825 () Bool)

(declare-fun tp!1497255 () Bool)

(declare-fun tp!1497261 () Bool)

(assert (=> b!5424869 (= e!3361825 (and tp!1497255 tp!1497261))))

(declare-fun b!5424870 () Bool)

(assert (=> b!5424870 (= e!3361829 (not (matchZipper!1457 lt!2212800 (t!375162 s!2326))))))

(declare-fun b!5424871 () Bool)

(declare-fun res!2308616 () Bool)

(declare-fun e!3361827 () Bool)

(assert (=> b!5424871 (=> res!2308616 e!3361827)))

(declare-fun lt!2212792 () Regex!15213)

(assert (=> b!5424871 (= res!2308616 (not (= lt!2212792 r!7292)))))

(declare-fun b!5424872 () Bool)

(declare-fun e!3361816 () Bool)

(declare-fun e!3361817 () Bool)

(assert (=> b!5424872 (= e!3361816 e!3361817)))

(declare-fun res!2308605 () Bool)

(assert (=> b!5424872 (=> (not res!2308605) (not e!3361817))))

(assert (=> b!5424872 (= res!2308605 (= r!7292 lt!2212792))))

(declare-fun unfocusZipper!955 (List!61940) Regex!15213)

(assert (=> b!5424872 (= lt!2212792 (unfocusZipper!955 zl!343))))

(declare-fun b!5424873 () Bool)

(declare-fun tp!1497258 () Bool)

(assert (=> b!5424873 (= e!3361825 tp!1497258)))

(declare-fun b!5424874 () Bool)

(declare-fun res!2308596 () Bool)

(declare-fun e!3361832 () Bool)

(assert (=> b!5424874 (=> res!2308596 e!3361832)))

(get-info :version)

(assert (=> b!5424874 (= res!2308596 (not ((_ is Cons!61814) (exprs!5097 (h!68264 zl!343)))))))

(declare-fun b!5424875 () Bool)

(declare-fun e!3361828 () Bool)

(declare-fun tp_is_empty!39679 () Bool)

(declare-fun tp!1497260 () Bool)

(assert (=> b!5424875 (= e!3361828 (and tp_is_empty!39679 tp!1497260))))

(declare-fun b!5424876 () Bool)

(declare-fun e!3361818 () Bool)

(declare-fun nullable!5382 (Regex!15213) Bool)

(assert (=> b!5424876 (= e!3361818 (nullable!5382 (regOne!30938 (regOne!30938 r!7292))))))

(declare-fun setElem!35363 () Context!9194)

(declare-fun e!3361819 () Bool)

(declare-fun tp!1497254 () Bool)

(declare-fun setRes!35363 () Bool)

(declare-fun setNonEmpty!35363 () Bool)

(assert (=> setNonEmpty!35363 (= setRes!35363 (and tp!1497254 (inv!81279 setElem!35363) e!3361819))))

(declare-fun z!1189 () (InoxSet Context!9194))

(declare-fun setRest!35363 () (InoxSet Context!9194))

(assert (=> setNonEmpty!35363 (= z!1189 ((_ map or) (store ((as const (Array Context!9194 Bool)) false) setElem!35363 true) setRest!35363))))

(declare-fun b!5424877 () Bool)

(declare-fun res!2308595 () Bool)

(assert (=> b!5424877 (=> (not res!2308595) (not e!3361816))))

(declare-fun toList!8997 ((InoxSet Context!9194)) List!61940)

(assert (=> b!5424877 (= res!2308595 (= (toList!8997 z!1189) zl!343))))

(declare-fun b!5424878 () Bool)

(declare-fun e!3361833 () Bool)

(assert (=> b!5424878 (= e!3361833 (matchZipper!1457 lt!2212800 (t!375162 s!2326)))))

(declare-fun b!5424879 () Bool)

(declare-fun res!2308618 () Bool)

(assert (=> b!5424879 (=> res!2308618 e!3361832)))

(declare-fun isEmpty!33812 (List!61940) Bool)

(assert (=> b!5424879 (= res!2308618 (not (isEmpty!33812 (t!375163 zl!343))))))

(declare-fun b!5424880 () Bool)

(declare-fun res!2308601 () Bool)

(declare-fun e!3361820 () Bool)

(assert (=> b!5424880 (=> res!2308601 e!3361820)))

(declare-fun isEmpty!33813 (List!61938) Bool)

(assert (=> b!5424880 (= res!2308601 (isEmpty!33813 (t!375161 (exprs!5097 (h!68264 zl!343)))))))

(declare-fun setIsEmpty!35363 () Bool)

(assert (=> setIsEmpty!35363 setRes!35363))

(declare-fun b!5424881 () Bool)

(declare-fun tp!1497256 () Bool)

(assert (=> b!5424881 (= e!3361819 tp!1497256)))

(declare-fun b!5424882 () Bool)

(declare-datatypes ((Unit!154374 0))(
  ( (Unit!154375) )
))
(declare-fun e!3361824 () Unit!154374)

(declare-fun Unit!154376 () Unit!154374)

(assert (=> b!5424882 (= e!3361824 Unit!154376)))

(declare-fun b!5424883 () Bool)

(declare-fun res!2308617 () Bool)

(assert (=> b!5424883 (=> res!2308617 e!3361826)))

(assert (=> b!5424883 (= res!2308617 lt!2212786)))

(declare-fun b!5424884 () Bool)

(declare-fun res!2308615 () Bool)

(assert (=> b!5424884 (=> res!2308615 e!3361832)))

(assert (=> b!5424884 (= res!2308615 (or ((_ is EmptyExpr!15213) r!7292) ((_ is EmptyLang!15213) r!7292) ((_ is ElementMatch!15213) r!7292) ((_ is Union!15213) r!7292) (not ((_ is Concat!24058) r!7292))))))

(declare-fun res!2308607 () Bool)

(assert (=> start!569442 (=> (not res!2308607) (not e!3361816))))

(declare-fun validRegex!6949 (Regex!15213) Bool)

(assert (=> start!569442 (= res!2308607 (validRegex!6949 r!7292))))

(assert (=> start!569442 e!3361816))

(assert (=> start!569442 e!3361825))

(declare-fun condSetEmpty!35363 () Bool)

(assert (=> start!569442 (= condSetEmpty!35363 (= z!1189 ((as const (Array Context!9194 Bool)) false)))))

(assert (=> start!569442 setRes!35363))

(assert (=> start!569442 e!3361836))

(assert (=> start!569442 e!3361828))

(assert (=> b!5424867 (= e!3361832 e!3361820)))

(declare-fun res!2308592 () Bool)

(assert (=> b!5424867 (=> res!2308592 e!3361820)))

(declare-fun lt!2212799 () Bool)

(declare-fun lt!2212794 () Bool)

(assert (=> b!5424867 (= res!2308592 (or (not (= lt!2212794 lt!2212799)) ((_ is Nil!61815) s!2326)))))

(declare-fun Exists!2394 (Int) Bool)

(assert (=> b!5424867 (= (Exists!2394 lambda!284435) (Exists!2394 lambda!284436))))

(declare-fun lt!2212805 () Unit!154374)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1048 (Regex!15213 Regex!15213 List!61939) Unit!154374)

(assert (=> b!5424867 (= lt!2212805 (lemmaExistCutMatchRandMatchRSpecEquivalent!1048 (regOne!30938 r!7292) (regTwo!30938 r!7292) s!2326))))

(assert (=> b!5424867 (= lt!2212799 (Exists!2394 lambda!284435))))

(declare-datatypes ((tuple2!64824 0))(
  ( (tuple2!64825 (_1!35715 List!61939) (_2!35715 List!61939)) )
))
(declare-datatypes ((Option!15324 0))(
  ( (None!15323) (Some!15323 (v!51352 tuple2!64824)) )
))
(declare-fun isDefined!12027 (Option!15324) Bool)

(declare-fun findConcatSeparation!1738 (Regex!15213 Regex!15213 List!61939 List!61939 List!61939) Option!15324)

(assert (=> b!5424867 (= lt!2212799 (isDefined!12027 (findConcatSeparation!1738 (regOne!30938 r!7292) (regTwo!30938 r!7292) Nil!61815 s!2326 s!2326)))))

(declare-fun lt!2212807 () Unit!154374)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1502 (Regex!15213 Regex!15213 List!61939) Unit!154374)

(assert (=> b!5424867 (= lt!2212807 (lemmaFindConcatSeparationEquivalentToExists!1502 (regOne!30938 r!7292) (regTwo!30938 r!7292) s!2326))))

(assert (=> b!5424885 (= e!3361820 e!3361821)))

(declare-fun res!2308598 () Bool)

(assert (=> b!5424885 (=> res!2308598 e!3361821)))

(assert (=> b!5424885 (= res!2308598 (or (and ((_ is ElementMatch!15213) (regOne!30938 r!7292)) (= (c!946145 (regOne!30938 r!7292)) (h!68263 s!2326))) ((_ is Union!15213) (regOne!30938 r!7292))))))

(declare-fun lt!2212806 () Unit!154374)

(assert (=> b!5424885 (= lt!2212806 e!3361824)))

(declare-fun c!946144 () Bool)

(declare-fun lt!2212791 () Bool)

(assert (=> b!5424885 (= c!946144 lt!2212791)))

(assert (=> b!5424885 (= lt!2212791 (nullable!5382 (h!68262 (exprs!5097 (h!68264 zl!343)))))))

(declare-fun lambda!284437 () Int)

(declare-fun flatMap!940 ((InoxSet Context!9194) Int) (InoxSet Context!9194))

(declare-fun derivationStepZipperUp!585 (Context!9194 C!30696) (InoxSet Context!9194))

(assert (=> b!5424885 (= (flatMap!940 z!1189 lambda!284437) (derivationStepZipperUp!585 (h!68264 zl!343) (h!68263 s!2326)))))

(declare-fun lt!2212784 () Unit!154374)

(declare-fun lemmaFlatMapOnSingletonSet!472 ((InoxSet Context!9194) Context!9194 Int) Unit!154374)

(assert (=> b!5424885 (= lt!2212784 (lemmaFlatMapOnSingletonSet!472 z!1189 (h!68264 zl!343) lambda!284437))))

(declare-fun lt!2212817 () Context!9194)

(assert (=> b!5424885 (= lt!2212800 (derivationStepZipperUp!585 lt!2212817 (h!68263 s!2326)))))

(assert (=> b!5424885 (= lt!2212803 (derivationStepZipperDown!661 (h!68262 (exprs!5097 (h!68264 zl!343))) lt!2212817 (h!68263 s!2326)))))

(assert (=> b!5424885 (= lt!2212817 (Context!9195 (t!375161 (exprs!5097 (h!68264 zl!343)))))))

(declare-fun lt!2212814 () (InoxSet Context!9194))

(assert (=> b!5424885 (= lt!2212814 (derivationStepZipperUp!585 (Context!9195 (Cons!61814 (h!68262 (exprs!5097 (h!68264 zl!343))) (t!375161 (exprs!5097 (h!68264 zl!343))))) (h!68263 s!2326)))))

(declare-fun b!5424886 () Bool)

(declare-fun e!3361831 () Bool)

(declare-fun e!3361822 () Bool)

(assert (=> b!5424886 (= e!3361831 e!3361822)))

(declare-fun res!2308604 () Bool)

(assert (=> b!5424886 (=> res!2308604 e!3361822)))

(declare-fun lt!2212810 () Context!9194)

(declare-fun lt!2212801 () Regex!15213)

(assert (=> b!5424886 (= res!2308604 (not (= (unfocusZipper!955 (Cons!61816 lt!2212810 Nil!61816)) lt!2212801)))))

(declare-fun lt!2212793 () Regex!15213)

(assert (=> b!5424886 (= lt!2212801 (Concat!24058 (reg!15542 (regOne!30938 r!7292)) lt!2212793))))

(declare-fun b!5424887 () Bool)

(declare-fun res!2308610 () Bool)

(assert (=> b!5424887 (=> res!2308610 e!3361823)))

(assert (=> b!5424887 (= res!2308610 (not lt!2212791))))

(declare-fun b!5424888 () Bool)

(declare-fun res!2308614 () Bool)

(assert (=> b!5424888 (=> res!2308614 e!3361827)))

(declare-fun lt!2212796 () (InoxSet Context!9194))

(declare-fun lt!2212795 () (InoxSet Context!9194))

(assert (=> b!5424888 (= res!2308614 (not (= (matchZipper!1457 lt!2212795 s!2326) (matchZipper!1457 lt!2212796 (t!375162 s!2326)))))))

(declare-fun b!5424889 () Bool)

(declare-fun res!2308620 () Bool)

(assert (=> b!5424889 (=> res!2308620 e!3361832)))

(declare-fun generalisedConcat!882 (List!61938) Regex!15213)

(assert (=> b!5424889 (= res!2308620 (not (= r!7292 (generalisedConcat!882 (exprs!5097 (h!68264 zl!343))))))))

(declare-fun b!5424890 () Bool)

(declare-fun res!2308609 () Bool)

(assert (=> b!5424890 (=> res!2308609 e!3361832)))

(declare-fun generalisedUnion!1142 (List!61938) Regex!15213)

(declare-fun unfocusZipperList!655 (List!61940) List!61938)

(assert (=> b!5424890 (= res!2308609 (not (= r!7292 (generalisedUnion!1142 (unfocusZipperList!655 zl!343)))))))

(declare-fun b!5424891 () Bool)

(assert (=> b!5424891 (= e!3361827 e!3361831)))

(declare-fun res!2308599 () Bool)

(assert (=> b!5424891 (=> res!2308599 e!3361831)))

(assert (=> b!5424891 (= res!2308599 (not (= r!7292 lt!2212793)))))

(assert (=> b!5424891 (= lt!2212793 (Concat!24058 lt!2212816 (regTwo!30938 r!7292)))))

(declare-fun b!5424892 () Bool)

(declare-fun res!2308608 () Bool)

(declare-fun e!3361834 () Bool)

(assert (=> b!5424892 (=> res!2308608 e!3361834)))

(assert (=> b!5424892 (= res!2308608 (not (= (unfocusZipper!955 (Cons!61816 lt!2212798 Nil!61816)) lt!2212793)))))

(declare-fun b!5424893 () Bool)

(assert (=> b!5424893 (= e!3361817 (not e!3361832))))

(declare-fun res!2308600 () Bool)

(assert (=> b!5424893 (=> res!2308600 e!3361832)))

(assert (=> b!5424893 (= res!2308600 (not ((_ is Cons!61816) zl!343)))))

(declare-fun matchRSpec!2316 (Regex!15213 List!61939) Bool)

(assert (=> b!5424893 (= lt!2212794 (matchRSpec!2316 r!7292 s!2326))))

(declare-fun matchR!7398 (Regex!15213 List!61939) Bool)

(assert (=> b!5424893 (= lt!2212794 (matchR!7398 r!7292 s!2326))))

(declare-fun lt!2212812 () Unit!154374)

(declare-fun mainMatchTheorem!2316 (Regex!15213 List!61939) Unit!154374)

(assert (=> b!5424893 (= lt!2212812 (mainMatchTheorem!2316 r!7292 s!2326))))

(declare-fun b!5424894 () Bool)

(assert (=> b!5424894 (= e!3361825 tp_is_empty!39679)))

(declare-fun b!5424895 () Bool)

(declare-fun res!2308612 () Bool)

(assert (=> b!5424895 (=> res!2308612 e!3361821)))

(assert (=> b!5424895 (= res!2308612 e!3361818)))

(declare-fun res!2308619 () Bool)

(assert (=> b!5424895 (=> (not res!2308619) (not e!3361818))))

(assert (=> b!5424895 (= res!2308619 ((_ is Concat!24058) (regOne!30938 r!7292)))))

(declare-fun b!5424896 () Bool)

(declare-fun res!2308621 () Bool)

(assert (=> b!5424896 (=> res!2308621 e!3361821)))

(assert (=> b!5424896 (= res!2308621 (or ((_ is Concat!24058) (regOne!30938 r!7292)) (not ((_ is Star!15213) (regOne!30938 r!7292)))))))

(declare-fun b!5424897 () Bool)

(assert (=> b!5424897 (= e!3361822 e!3361834)))

(declare-fun res!2308602 () Bool)

(assert (=> b!5424897 (=> res!2308602 e!3361834)))

(declare-fun lt!2212802 () Context!9194)

(assert (=> b!5424897 (= res!2308602 (not (= (unfocusZipper!955 (Cons!61816 lt!2212802 Nil!61816)) (reg!15542 (regOne!30938 r!7292)))))))

(declare-fun lt!2212818 () (InoxSet Context!9194))

(assert (=> b!5424897 (= (flatMap!940 lt!2212818 lambda!284437) (derivationStepZipperUp!585 lt!2212798 (h!68263 s!2326)))))

(declare-fun lt!2212788 () Unit!154374)

(assert (=> b!5424897 (= lt!2212788 (lemmaFlatMapOnSingletonSet!472 lt!2212818 lt!2212798 lambda!284437))))

(declare-fun lt!2212813 () (InoxSet Context!9194))

(assert (=> b!5424897 (= (flatMap!940 lt!2212813 lambda!284437) (derivationStepZipperUp!585 lt!2212802 (h!68263 s!2326)))))

(declare-fun lt!2212804 () Unit!154374)

(assert (=> b!5424897 (= lt!2212804 (lemmaFlatMapOnSingletonSet!472 lt!2212813 lt!2212802 lambda!284437))))

(declare-fun lt!2212815 () (InoxSet Context!9194))

(assert (=> b!5424897 (= lt!2212815 (derivationStepZipperUp!585 lt!2212798 (h!68263 s!2326)))))

(declare-fun lt!2212811 () (InoxSet Context!9194))

(assert (=> b!5424897 (= lt!2212811 (derivationStepZipperUp!585 lt!2212802 (h!68263 s!2326)))))

(assert (=> b!5424897 (= lt!2212818 (store ((as const (Array Context!9194 Bool)) false) lt!2212798 true))))

(assert (=> b!5424897 (= lt!2212813 (store ((as const (Array Context!9194 Bool)) false) lt!2212802 true))))

(assert (=> b!5424897 (= lt!2212802 (Context!9195 (Cons!61814 (reg!15542 (regOne!30938 r!7292)) Nil!61814)))))

(declare-fun b!5424898 () Bool)

(declare-fun res!2308613 () Bool)

(assert (=> b!5424898 (=> res!2308613 e!3361823)))

(assert (=> b!5424898 (= res!2308613 (not (matchZipper!1457 z!1189 s!2326)))))

(declare-fun b!5424899 () Bool)

(assert (=> b!5424899 (= e!3361835 e!3361827)))

(declare-fun res!2308593 () Bool)

(assert (=> b!5424899 (=> res!2308593 e!3361827)))

(assert (=> b!5424899 (= res!2308593 (not (= lt!2212796 lt!2212785)))))

(assert (=> b!5424899 (= (flatMap!940 lt!2212795 lambda!284437) (derivationStepZipperUp!585 lt!2212810 (h!68263 s!2326)))))

(declare-fun lt!2212790 () Unit!154374)

(assert (=> b!5424899 (= lt!2212790 (lemmaFlatMapOnSingletonSet!472 lt!2212795 lt!2212810 lambda!284437))))

(declare-fun lt!2212789 () (InoxSet Context!9194))

(assert (=> b!5424899 (= lt!2212789 (derivationStepZipperUp!585 lt!2212810 (h!68263 s!2326)))))

(declare-fun derivationStepZipper!1452 ((InoxSet Context!9194) C!30696) (InoxSet Context!9194))

(assert (=> b!5424899 (= lt!2212796 (derivationStepZipper!1452 lt!2212795 (h!68263 s!2326)))))

(assert (=> b!5424899 (= lt!2212795 (store ((as const (Array Context!9194 Bool)) false) lt!2212810 true))))

(assert (=> b!5424899 (= lt!2212810 (Context!9195 (Cons!61814 (reg!15542 (regOne!30938 r!7292)) lt!2212787)))))

(declare-fun b!5424900 () Bool)

(declare-fun tp!1497259 () Bool)

(declare-fun tp!1497257 () Bool)

(assert (=> b!5424900 (= e!3361825 (and tp!1497259 tp!1497257))))

(declare-fun b!5424901 () Bool)

(declare-fun Unit!154377 () Unit!154374)

(assert (=> b!5424901 (= e!3361824 Unit!154377)))

(declare-fun lt!2212808 () Unit!154374)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!450 ((InoxSet Context!9194) (InoxSet Context!9194) List!61939) Unit!154374)

(assert (=> b!5424901 (= lt!2212808 (lemmaZipperConcatMatchesSameAsBothZippers!450 lt!2212803 lt!2212800 (t!375162 s!2326)))))

(declare-fun res!2308606 () Bool)

(assert (=> b!5424901 (= res!2308606 (matchZipper!1457 lt!2212803 (t!375162 s!2326)))))

(assert (=> b!5424901 (=> res!2308606 e!3361833)))

(assert (=> b!5424901 (= (matchZipper!1457 ((_ map or) lt!2212803 lt!2212800) (t!375162 s!2326)) e!3361833)))

(declare-fun b!5424902 () Bool)

(declare-fun tp!1497252 () Bool)

(assert (=> b!5424902 (= e!3361830 tp!1497252)))

(declare-fun b!5424903 () Bool)

(assert (=> b!5424903 (= e!3361834 e!3361823)))

(declare-fun res!2308594 () Bool)

(assert (=> b!5424903 (=> res!2308594 e!3361823)))

(assert (=> b!5424903 (= res!2308594 lt!2212794)))

(assert (=> b!5424903 (= (matchR!7398 lt!2212801 s!2326) (matchRSpec!2316 lt!2212801 s!2326))))

(declare-fun lt!2212797 () Unit!154374)

(assert (=> b!5424903 (= lt!2212797 (mainMatchTheorem!2316 lt!2212801 s!2326))))

(assert (= (and start!569442 res!2308607) b!5424877))

(assert (= (and b!5424877 res!2308595) b!5424872))

(assert (= (and b!5424872 res!2308605) b!5424893))

(assert (= (and b!5424893 (not res!2308600)) b!5424879))

(assert (= (and b!5424879 (not res!2308618)) b!5424889))

(assert (= (and b!5424889 (not res!2308620)) b!5424874))

(assert (= (and b!5424874 (not res!2308596)) b!5424890))

(assert (= (and b!5424890 (not res!2308609)) b!5424884))

(assert (= (and b!5424884 (not res!2308615)) b!5424867))

(assert (= (and b!5424867 (not res!2308592)) b!5424880))

(assert (= (and b!5424880 (not res!2308601)) b!5424885))

(assert (= (and b!5424885 c!946144) b!5424901))

(assert (= (and b!5424885 (not c!946144)) b!5424882))

(assert (= (and b!5424901 (not res!2308606)) b!5424878))

(assert (= (and b!5424885 (not res!2308598)) b!5424895))

(assert (= (and b!5424895 res!2308619) b!5424876))

(assert (= (and b!5424895 (not res!2308612)) b!5424896))

(assert (= (and b!5424896 (not res!2308621)) b!5424866))

(assert (= (and b!5424866 (not res!2308611)) b!5424899))

(assert (= (and b!5424899 (not res!2308593)) b!5424888))

(assert (= (and b!5424888 (not res!2308614)) b!5424871))

(assert (= (and b!5424871 (not res!2308616)) b!5424891))

(assert (= (and b!5424891 (not res!2308599)) b!5424886))

(assert (= (and b!5424886 (not res!2308604)) b!5424897))

(assert (= (and b!5424897 (not res!2308602)) b!5424892))

(assert (= (and b!5424892 (not res!2308608)) b!5424903))

(assert (= (and b!5424903 (not res!2308594)) b!5424898))

(assert (= (and b!5424898 (not res!2308613)) b!5424887))

(assert (= (and b!5424887 (not res!2308610)) b!5424868))

(assert (= (and b!5424868 res!2308597) b!5424870))

(assert (= (and b!5424868 (not res!2308603)) b!5424883))

(assert (= (and b!5424883 (not res!2308617)) b!5424864))

(assert (= (and start!569442 ((_ is ElementMatch!15213) r!7292)) b!5424894))

(assert (= (and start!569442 ((_ is Concat!24058) r!7292)) b!5424869))

(assert (= (and start!569442 ((_ is Star!15213) r!7292)) b!5424873))

(assert (= (and start!569442 ((_ is Union!15213) r!7292)) b!5424900))

(assert (= (and start!569442 condSetEmpty!35363) setIsEmpty!35363))

(assert (= (and start!569442 (not condSetEmpty!35363)) setNonEmpty!35363))

(assert (= setNonEmpty!35363 b!5424881))

(assert (= b!5424865 b!5424902))

(assert (= (and start!569442 ((_ is Cons!61816) zl!343)) b!5424865))

(assert (= (and start!569442 ((_ is Cons!61815) s!2326)) b!5424875))

(declare-fun m!6449020 () Bool)

(assert (=> b!5424890 m!6449020))

(assert (=> b!5424890 m!6449020))

(declare-fun m!6449022 () Bool)

(assert (=> b!5424890 m!6449022))

(declare-fun m!6449024 () Bool)

(assert (=> b!5424864 m!6449024))

(declare-fun m!6449026 () Bool)

(assert (=> start!569442 m!6449026))

(declare-fun m!6449028 () Bool)

(assert (=> b!5424876 m!6449028))

(declare-fun m!6449030 () Bool)

(assert (=> b!5424868 m!6449030))

(declare-fun m!6449032 () Bool)

(assert (=> b!5424886 m!6449032))

(assert (=> b!5424870 m!6449024))

(declare-fun m!6449034 () Bool)

(assert (=> b!5424877 m!6449034))

(declare-fun m!6449036 () Bool)

(assert (=> b!5424903 m!6449036))

(declare-fun m!6449038 () Bool)

(assert (=> b!5424903 m!6449038))

(declare-fun m!6449040 () Bool)

(assert (=> b!5424903 m!6449040))

(declare-fun m!6449042 () Bool)

(assert (=> b!5424865 m!6449042))

(declare-fun m!6449044 () Bool)

(assert (=> b!5424888 m!6449044))

(declare-fun m!6449046 () Bool)

(assert (=> b!5424888 m!6449046))

(declare-fun m!6449048 () Bool)

(assert (=> b!5424866 m!6449048))

(declare-fun m!6449050 () Bool)

(assert (=> setNonEmpty!35363 m!6449050))

(declare-fun m!6449052 () Bool)

(assert (=> b!5424892 m!6449052))

(declare-fun m!6449054 () Bool)

(assert (=> b!5424880 m!6449054))

(declare-fun m!6449056 () Bool)

(assert (=> b!5424897 m!6449056))

(declare-fun m!6449058 () Bool)

(assert (=> b!5424897 m!6449058))

(declare-fun m!6449060 () Bool)

(assert (=> b!5424897 m!6449060))

(declare-fun m!6449062 () Bool)

(assert (=> b!5424897 m!6449062))

(declare-fun m!6449064 () Bool)

(assert (=> b!5424897 m!6449064))

(declare-fun m!6449066 () Bool)

(assert (=> b!5424897 m!6449066))

(declare-fun m!6449068 () Bool)

(assert (=> b!5424897 m!6449068))

(declare-fun m!6449070 () Bool)

(assert (=> b!5424897 m!6449070))

(declare-fun m!6449072 () Bool)

(assert (=> b!5424897 m!6449072))

(declare-fun m!6449074 () Bool)

(assert (=> b!5424899 m!6449074))

(declare-fun m!6449076 () Bool)

(assert (=> b!5424899 m!6449076))

(declare-fun m!6449078 () Bool)

(assert (=> b!5424899 m!6449078))

(declare-fun m!6449080 () Bool)

(assert (=> b!5424899 m!6449080))

(declare-fun m!6449082 () Bool)

(assert (=> b!5424899 m!6449082))

(declare-fun m!6449084 () Bool)

(assert (=> b!5424889 m!6449084))

(declare-fun m!6449086 () Bool)

(assert (=> b!5424885 m!6449086))

(declare-fun m!6449088 () Bool)

(assert (=> b!5424885 m!6449088))

(declare-fun m!6449090 () Bool)

(assert (=> b!5424885 m!6449090))

(declare-fun m!6449092 () Bool)

(assert (=> b!5424885 m!6449092))

(declare-fun m!6449094 () Bool)

(assert (=> b!5424885 m!6449094))

(declare-fun m!6449096 () Bool)

(assert (=> b!5424885 m!6449096))

(declare-fun m!6449098 () Bool)

(assert (=> b!5424885 m!6449098))

(declare-fun m!6449100 () Bool)

(assert (=> b!5424893 m!6449100))

(declare-fun m!6449102 () Bool)

(assert (=> b!5424893 m!6449102))

(declare-fun m!6449104 () Bool)

(assert (=> b!5424893 m!6449104))

(declare-fun m!6449106 () Bool)

(assert (=> b!5424879 m!6449106))

(assert (=> b!5424878 m!6449024))

(declare-fun m!6449108 () Bool)

(assert (=> b!5424898 m!6449108))

(declare-fun m!6449110 () Bool)

(assert (=> b!5424867 m!6449110))

(declare-fun m!6449112 () Bool)

(assert (=> b!5424867 m!6449112))

(declare-fun m!6449114 () Bool)

(assert (=> b!5424867 m!6449114))

(declare-fun m!6449116 () Bool)

(assert (=> b!5424867 m!6449116))

(assert (=> b!5424867 m!6449112))

(declare-fun m!6449118 () Bool)

(assert (=> b!5424867 m!6449118))

(assert (=> b!5424867 m!6449110))

(declare-fun m!6449120 () Bool)

(assert (=> b!5424867 m!6449120))

(declare-fun m!6449122 () Bool)

(assert (=> b!5424901 m!6449122))

(assert (=> b!5424901 m!6449030))

(declare-fun m!6449124 () Bool)

(assert (=> b!5424901 m!6449124))

(declare-fun m!6449126 () Bool)

(assert (=> b!5424872 m!6449126))

(check-sat (not b!5424898) (not b!5424869) (not b!5424881) (not b!5424885) (not b!5424897) (not b!5424877) (not b!5424900) (not setNonEmpty!35363) (not b!5424878) (not b!5424880) (not b!5424865) (not b!5424888) (not b!5424889) (not b!5424903) (not b!5424901) (not b!5424876) (not b!5424870) (not b!5424893) (not b!5424868) (not b!5424864) (not b!5424879) (not start!569442) (not b!5424873) tp_is_empty!39679 (not b!5424890) (not b!5424872) (not b!5424892) (not b!5424875) (not b!5424866) (not b!5424899) (not b!5424902) (not b!5424886) (not b!5424867))
(check-sat)
