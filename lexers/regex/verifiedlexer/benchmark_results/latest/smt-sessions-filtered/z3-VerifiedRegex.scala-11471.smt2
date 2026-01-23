; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!623218 () Bool)

(assert start!623218)

(declare-fun b!6268871 () Bool)

(assert (=> b!6268871 true))

(assert (=> b!6268871 true))

(declare-fun lambda!343318 () Int)

(declare-fun lambda!343317 () Int)

(assert (=> b!6268871 (not (= lambda!343318 lambda!343317))))

(assert (=> b!6268871 true))

(assert (=> b!6268871 true))

(declare-fun b!6268873 () Bool)

(assert (=> b!6268873 true))

(declare-fun b!6268843 () Bool)

(declare-datatypes ((Unit!158087 0))(
  ( (Unit!158088) )
))
(declare-fun e!3812873 () Unit!158087)

(declare-fun Unit!158089 () Unit!158087)

(assert (=> b!6268843 (= e!3812873 Unit!158089)))

(declare-fun b!6268844 () Bool)

(declare-fun e!3812862 () Bool)

(declare-fun tp_is_empty!41631 () Bool)

(assert (=> b!6268844 (= e!3812862 tp_is_empty!41631)))

(declare-fun res!2586047 () Bool)

(declare-fun e!3812869 () Bool)

(assert (=> start!623218 (=> (not res!2586047) (not e!3812869))))

(declare-datatypes ((C!32648 0))(
  ( (C!32649 (val!26026 Int)) )
))
(declare-datatypes ((Regex!16189 0))(
  ( (ElementMatch!16189 (c!1135772 C!32648)) (Concat!25034 (regOne!32890 Regex!16189) (regTwo!32890 Regex!16189)) (EmptyExpr!16189) (Star!16189 (reg!16518 Regex!16189)) (EmptyLang!16189) (Union!16189 (regOne!32891 Regex!16189) (regTwo!32891 Regex!16189)) )
))
(declare-fun r!7292 () Regex!16189)

(declare-fun validRegex!7925 (Regex!16189) Bool)

(assert (=> start!623218 (= res!2586047 (validRegex!7925 r!7292))))

(assert (=> start!623218 e!3812869))

(assert (=> start!623218 e!3812862))

(declare-fun condSetEmpty!42632 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64866 0))(
  ( (Nil!64742) (Cons!64742 (h!71190 Regex!16189) (t!378422 List!64866)) )
))
(declare-datatypes ((Context!11146 0))(
  ( (Context!11147 (exprs!6073 List!64866)) )
))
(declare-fun z!1189 () (InoxSet Context!11146))

(assert (=> start!623218 (= condSetEmpty!42632 (= z!1189 ((as const (Array Context!11146 Bool)) false)))))

(declare-fun setRes!42632 () Bool)

(assert (=> start!623218 setRes!42632))

(declare-fun e!3812877 () Bool)

(assert (=> start!623218 e!3812877))

(declare-fun e!3812865 () Bool)

(assert (=> start!623218 e!3812865))

(declare-fun b!6268845 () Bool)

(declare-fun e!3812867 () Bool)

(declare-fun e!3812870 () Bool)

(assert (=> b!6268845 (= e!3812867 e!3812870)))

(declare-fun res!2586030 () Bool)

(assert (=> b!6268845 (=> res!2586030 e!3812870)))

(declare-fun lt!2351598 () Regex!16189)

(assert (=> b!6268845 (= res!2586030 (not (validRegex!7925 lt!2351598)))))

(declare-fun lt!2351608 () List!64866)

(declare-fun generalisedConcat!1786 (List!64866) Regex!16189)

(assert (=> b!6268845 (= lt!2351598 (generalisedConcat!1786 lt!2351608))))

(declare-datatypes ((List!64867 0))(
  ( (Nil!64743) (Cons!64743 (h!71191 Context!11146) (t!378423 List!64867)) )
))
(declare-fun lt!2351599 () List!64867)

(declare-fun lt!2351634 () Context!11146)

(assert (=> b!6268845 (= lt!2351599 (Cons!64743 lt!2351634 Nil!64743))))

(declare-fun lt!2351615 () Regex!16189)

(declare-datatypes ((List!64868 0))(
  ( (Nil!64744) (Cons!64744 (h!71192 C!32648) (t!378424 List!64868)) )
))
(declare-fun s!2326 () List!64868)

(declare-fun lt!2351636 () (InoxSet Context!11146))

(declare-fun matchR!8372 (Regex!16189 List!64868) Bool)

(declare-fun matchZipper!2201 ((InoxSet Context!11146) List!64868) Bool)

(assert (=> b!6268845 (= (matchR!8372 lt!2351615 s!2326) (matchZipper!2201 lt!2351636 s!2326))))

(declare-fun lt!2351631 () List!64867)

(declare-fun lt!2351627 () Unit!158087)

(declare-fun theoremZipperRegexEquiv!759 ((InoxSet Context!11146) List!64867 Regex!16189 List!64868) Unit!158087)

(assert (=> b!6268845 (= lt!2351627 (theoremZipperRegexEquiv!759 lt!2351636 lt!2351631 lt!2351615 s!2326))))

(declare-fun lt!2351603 () List!64866)

(assert (=> b!6268845 (= lt!2351615 (generalisedConcat!1786 lt!2351603))))

(declare-fun b!6268846 () Bool)

(declare-fun res!2586044 () Bool)

(declare-fun e!3812863 () Bool)

(assert (=> b!6268846 (=> res!2586044 e!3812863)))

(declare-fun nullable!6182 (Regex!16189) Bool)

(assert (=> b!6268846 (= res!2586044 (not (nullable!6182 (regOne!32890 (regOne!32890 r!7292)))))))

(declare-fun b!6268847 () Bool)

(declare-fun Unit!158090 () Unit!158087)

(assert (=> b!6268847 (= e!3812873 Unit!158090)))

(declare-fun lt!2351609 () Unit!158087)

(declare-fun lt!2351623 () (InoxSet Context!11146))

(declare-fun lt!2351600 () (InoxSet Context!11146))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1020 ((InoxSet Context!11146) (InoxSet Context!11146) List!64868) Unit!158087)

(assert (=> b!6268847 (= lt!2351609 (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351600 lt!2351623 (t!378424 s!2326)))))

(declare-fun res!2586052 () Bool)

(assert (=> b!6268847 (= res!2586052 (matchZipper!2201 lt!2351600 (t!378424 s!2326)))))

(declare-fun e!3812876 () Bool)

(assert (=> b!6268847 (=> res!2586052 e!3812876)))

(assert (=> b!6268847 (= (matchZipper!2201 ((_ map or) lt!2351600 lt!2351623) (t!378424 s!2326)) e!3812876)))

(declare-fun b!6268848 () Bool)

(declare-fun res!2586033 () Bool)

(declare-fun e!3812874 () Bool)

(assert (=> b!6268848 (=> res!2586033 e!3812874)))

(declare-fun lt!2351628 () Context!11146)

(declare-fun zl!343 () List!64867)

(declare-fun contextDepthTotal!312 (Context!11146) Int)

(assert (=> b!6268848 (= res!2586033 (>= (contextDepthTotal!312 lt!2351628) (contextDepthTotal!312 (h!71191 zl!343))))))

(declare-fun b!6268849 () Bool)

(declare-fun e!3812868 () Bool)

(assert (=> b!6268849 (= e!3812863 e!3812868)))

(declare-fun res!2586028 () Bool)

(assert (=> b!6268849 (=> res!2586028 e!3812868)))

(declare-fun lt!2351597 () (InoxSet Context!11146))

(assert (=> b!6268849 (= res!2586028 (not (= lt!2351600 lt!2351597)))))

(declare-fun lt!2351621 () (InoxSet Context!11146))

(declare-fun lt!2351604 () (InoxSet Context!11146))

(assert (=> b!6268849 (= lt!2351597 ((_ map or) lt!2351621 lt!2351604))))

(declare-fun lt!2351625 () Context!11146)

(declare-fun derivationStepZipperDown!1437 (Regex!16189 Context!11146 C!32648) (InoxSet Context!11146))

(assert (=> b!6268849 (= lt!2351604 (derivationStepZipperDown!1437 (regTwo!32890 (regOne!32890 r!7292)) lt!2351625 (h!71192 s!2326)))))

(assert (=> b!6268849 (= lt!2351621 (derivationStepZipperDown!1437 (regOne!32890 (regOne!32890 r!7292)) lt!2351634 (h!71192 s!2326)))))

(assert (=> b!6268849 (= lt!2351634 (Context!11147 lt!2351608))))

(assert (=> b!6268849 (= lt!2351608 (Cons!64742 (regTwo!32890 (regOne!32890 r!7292)) (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6268850 () Bool)

(declare-fun res!2586031 () Bool)

(declare-fun e!3812879 () Bool)

(assert (=> b!6268850 (=> res!2586031 e!3812879)))

(declare-fun isEmpty!36774 (List!64867) Bool)

(assert (=> b!6268850 (= res!2586031 (not (isEmpty!36774 (t!378423 zl!343))))))

(declare-fun b!6268851 () Bool)

(declare-fun e!3812872 () Bool)

(declare-fun tp!1748582 () Bool)

(assert (=> b!6268851 (= e!3812872 tp!1748582)))

(declare-fun b!6268852 () Bool)

(declare-fun e!3812866 () Bool)

(declare-fun e!3812875 () Bool)

(assert (=> b!6268852 (= e!3812866 e!3812875)))

(declare-fun res!2586043 () Bool)

(assert (=> b!6268852 (=> res!2586043 e!3812875)))

(declare-fun lt!2351629 () (InoxSet Context!11146))

(declare-fun lt!2351607 () (InoxSet Context!11146))

(assert (=> b!6268852 (= res!2586043 (not (= lt!2351629 lt!2351607)))))

(declare-fun lt!2351610 () (InoxSet Context!11146))

(assert (=> b!6268852 (= lt!2351607 ((_ map or) lt!2351621 lt!2351610))))

(declare-fun derivationStepZipperUp!1363 (Context!11146 C!32648) (InoxSet Context!11146))

(assert (=> b!6268852 (= lt!2351610 (derivationStepZipperUp!1363 lt!2351634 (h!71192 s!2326)))))

(declare-fun lambda!343319 () Int)

(declare-fun flatMap!1694 ((InoxSet Context!11146) Int) (InoxSet Context!11146))

(assert (=> b!6268852 (= (flatMap!1694 lt!2351636 lambda!343319) (derivationStepZipperUp!1363 lt!2351628 (h!71192 s!2326)))))

(declare-fun lt!2351618 () Unit!158087)

(declare-fun lemmaFlatMapOnSingletonSet!1220 ((InoxSet Context!11146) Context!11146 Int) Unit!158087)

(assert (=> b!6268852 (= lt!2351618 (lemmaFlatMapOnSingletonSet!1220 lt!2351636 lt!2351628 lambda!343319))))

(declare-fun lt!2351632 () (InoxSet Context!11146))

(assert (=> b!6268852 (= lt!2351632 (derivationStepZipperUp!1363 lt!2351628 (h!71192 s!2326)))))

(declare-fun derivationStepZipper!2155 ((InoxSet Context!11146) C!32648) (InoxSet Context!11146))

(assert (=> b!6268852 (= lt!2351629 (derivationStepZipper!2155 lt!2351636 (h!71192 s!2326)))))

(declare-fun lt!2351624 () (InoxSet Context!11146))

(assert (=> b!6268852 (= lt!2351624 (store ((as const (Array Context!11146 Bool)) false) lt!2351634 true))))

(assert (=> b!6268852 (= lt!2351636 (store ((as const (Array Context!11146 Bool)) false) lt!2351628 true))))

(assert (=> b!6268852 (= lt!2351628 (Context!11147 lt!2351603))))

(assert (=> b!6268852 (= lt!2351603 (Cons!64742 (regOne!32890 (regOne!32890 r!7292)) lt!2351608))))

(declare-fun b!6268853 () Bool)

(declare-fun lt!2351633 () Int)

(declare-fun lt!2351616 () Int)

(assert (=> b!6268853 (= e!3812870 (< lt!2351633 lt!2351616))))

(declare-fun lt!2351602 () Int)

(declare-fun size!40310 (List!64868) Int)

(assert (=> b!6268853 (= lt!2351602 (size!40310 s!2326))))

(declare-fun zipperDepthTotal!342 (List!64867) Int)

(assert (=> b!6268853 (= lt!2351633 (zipperDepthTotal!342 lt!2351599))))

(declare-fun b!6268854 () Bool)

(declare-fun res!2586046 () Bool)

(assert (=> b!6268854 (=> res!2586046 e!3812870)))

(declare-fun unfocusZipper!1931 (List!64867) Regex!16189)

(assert (=> b!6268854 (= res!2586046 (not (= lt!2351598 (unfocusZipper!1931 lt!2351599))))))

(declare-fun b!6268855 () Bool)

(declare-fun e!3812880 () Bool)

(assert (=> b!6268855 (= e!3812880 (matchZipper!2201 lt!2351610 (t!378424 s!2326)))))

(declare-fun b!6268856 () Bool)

(assert (=> b!6268856 (= e!3812876 (matchZipper!2201 lt!2351623 (t!378424 s!2326)))))

(declare-fun b!6268857 () Bool)

(declare-fun e!3812864 () Bool)

(declare-fun tp!1748574 () Bool)

(assert (=> b!6268857 (= e!3812864 tp!1748574)))

(declare-fun b!6268858 () Bool)

(declare-fun tp!1748581 () Bool)

(declare-fun tp!1748573 () Bool)

(assert (=> b!6268858 (= e!3812862 (and tp!1748581 tp!1748573))))

(declare-fun setNonEmpty!42632 () Bool)

(declare-fun tp!1748577 () Bool)

(declare-fun setElem!42632 () Context!11146)

(declare-fun inv!83719 (Context!11146) Bool)

(assert (=> setNonEmpty!42632 (= setRes!42632 (and tp!1748577 (inv!83719 setElem!42632) e!3812864))))

(declare-fun setRest!42632 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42632 (= z!1189 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42632 true) setRest!42632))))

(declare-fun b!6268859 () Bool)

(declare-fun res!2586035 () Bool)

(assert (=> b!6268859 (=> res!2586035 e!3812879)))

(assert (=> b!6268859 (= res!2586035 (not (= r!7292 (generalisedConcat!1786 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6268860 () Bool)

(declare-fun res!2586029 () Bool)

(assert (=> b!6268860 (=> (not res!2586029) (not e!3812869))))

(assert (=> b!6268860 (= res!2586029 (= r!7292 (unfocusZipper!1931 zl!343)))))

(declare-fun b!6268861 () Bool)

(assert (=> b!6268861 (= e!3812875 e!3812874)))

(declare-fun res!2586036 () Bool)

(assert (=> b!6268861 (=> res!2586036 e!3812874)))

(declare-fun e!3812861 () Bool)

(assert (=> b!6268861 (= res!2586036 e!3812861)))

(declare-fun res!2586040 () Bool)

(assert (=> b!6268861 (=> (not res!2586040) (not e!3812861))))

(declare-fun lt!2351612 () Bool)

(assert (=> b!6268861 (= res!2586040 (not (= lt!2351612 (matchZipper!2201 lt!2351629 (t!378424 s!2326)))))))

(assert (=> b!6268861 (= (matchZipper!2201 lt!2351607 (t!378424 s!2326)) e!3812880)))

(declare-fun res!2586045 () Bool)

(assert (=> b!6268861 (=> res!2586045 e!3812880)))

(declare-fun lt!2351611 () Bool)

(assert (=> b!6268861 (= res!2586045 lt!2351611)))

(declare-fun lt!2351613 () Unit!158087)

(assert (=> b!6268861 (= lt!2351613 (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351621 lt!2351610 (t!378424 s!2326)))))

(assert (=> b!6268861 (= (flatMap!1694 lt!2351624 lambda!343319) (derivationStepZipperUp!1363 lt!2351634 (h!71192 s!2326)))))

(declare-fun lt!2351635 () Unit!158087)

(assert (=> b!6268861 (= lt!2351635 (lemmaFlatMapOnSingletonSet!1220 lt!2351624 lt!2351634 lambda!343319))))

(declare-fun setIsEmpty!42632 () Bool)

(assert (=> setIsEmpty!42632 setRes!42632))

(declare-fun b!6268862 () Bool)

(assert (=> b!6268862 (= e!3812868 e!3812866)))

(declare-fun res!2586053 () Bool)

(assert (=> b!6268862 (=> res!2586053 e!3812866)))

(declare-fun e!3812871 () Bool)

(assert (=> b!6268862 (= res!2586053 e!3812871)))

(declare-fun res!2586039 () Bool)

(assert (=> b!6268862 (=> (not res!2586039) (not e!3812871))))

(assert (=> b!6268862 (= res!2586039 (not (= lt!2351612 lt!2351611)))))

(assert (=> b!6268862 (= lt!2351612 (matchZipper!2201 lt!2351600 (t!378424 s!2326)))))

(declare-fun e!3812860 () Bool)

(assert (=> b!6268862 (= (matchZipper!2201 lt!2351597 (t!378424 s!2326)) e!3812860)))

(declare-fun res!2586034 () Bool)

(assert (=> b!6268862 (=> res!2586034 e!3812860)))

(assert (=> b!6268862 (= res!2586034 lt!2351611)))

(assert (=> b!6268862 (= lt!2351611 (matchZipper!2201 lt!2351621 (t!378424 s!2326)))))

(declare-fun lt!2351626 () Unit!158087)

(assert (=> b!6268862 (= lt!2351626 (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351621 lt!2351604 (t!378424 s!2326)))))

(declare-fun b!6268863 () Bool)

(assert (=> b!6268863 (= e!3812874 e!3812867)))

(declare-fun res!2586038 () Bool)

(assert (=> b!6268863 (=> res!2586038 e!3812867)))

(declare-fun lt!2351619 () Int)

(assert (=> b!6268863 (= res!2586038 (>= lt!2351619 lt!2351616))))

(assert (=> b!6268863 (= lt!2351616 (zipperDepthTotal!342 zl!343))))

(assert (=> b!6268863 (= lt!2351619 (zipperDepthTotal!342 lt!2351631))))

(assert (=> b!6268863 (= lt!2351631 (Cons!64743 lt!2351628 Nil!64743))))

(declare-fun b!6268864 () Bool)

(assert (=> b!6268864 (= e!3812871 (not (matchZipper!2201 lt!2351604 (t!378424 s!2326))))))

(declare-fun b!6268865 () Bool)

(assert (=> b!6268865 (= e!3812869 (not e!3812879))))

(declare-fun res!2586042 () Bool)

(assert (=> b!6268865 (=> res!2586042 e!3812879)))

(get-info :version)

(assert (=> b!6268865 (= res!2586042 (not ((_ is Cons!64743) zl!343)))))

(declare-fun lt!2351614 () Bool)

(declare-fun matchRSpec!3290 (Regex!16189 List!64868) Bool)

(assert (=> b!6268865 (= lt!2351614 (matchRSpec!3290 r!7292 s!2326))))

(assert (=> b!6268865 (= lt!2351614 (matchR!8372 r!7292 s!2326))))

(declare-fun lt!2351620 () Unit!158087)

(declare-fun mainMatchTheorem!3290 (Regex!16189 List!64868) Unit!158087)

(assert (=> b!6268865 (= lt!2351620 (mainMatchTheorem!3290 r!7292 s!2326))))

(declare-fun b!6268866 () Bool)

(assert (=> b!6268866 (= e!3812861 (not (matchZipper!2201 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (t!378424 s!2326))))))

(declare-fun b!6268867 () Bool)

(declare-fun res!2586056 () Bool)

(assert (=> b!6268867 (=> (not res!2586056) (not e!3812869))))

(declare-fun toList!9973 ((InoxSet Context!11146)) List!64867)

(assert (=> b!6268867 (= res!2586056 (= (toList!9973 z!1189) zl!343))))

(declare-fun b!6268868 () Bool)

(assert (=> b!6268868 (= e!3812860 (matchZipper!2201 lt!2351604 (t!378424 s!2326)))))

(declare-fun b!6268869 () Bool)

(declare-fun res!2586041 () Bool)

(declare-fun e!3812878 () Bool)

(assert (=> b!6268869 (=> res!2586041 e!3812878)))

(declare-fun isEmpty!36775 (List!64866) Bool)

(assert (=> b!6268869 (= res!2586041 (isEmpty!36775 (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6268870 () Bool)

(declare-fun res!2586051 () Bool)

(assert (=> b!6268870 (=> res!2586051 e!3812879)))

(assert (=> b!6268870 (= res!2586051 (not ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6268871 (= e!3812879 e!3812878)))

(declare-fun res!2586055 () Bool)

(assert (=> b!6268871 (=> res!2586055 e!3812878)))

(declare-fun lt!2351630 () Bool)

(assert (=> b!6268871 (= res!2586055 (or (not (= lt!2351614 lt!2351630)) ((_ is Nil!64744) s!2326)))))

(declare-fun Exists!3259 (Int) Bool)

(assert (=> b!6268871 (= (Exists!3259 lambda!343317) (Exists!3259 lambda!343318))))

(declare-fun lt!2351605 () Unit!158087)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1796 (Regex!16189 Regex!16189 List!64868) Unit!158087)

(assert (=> b!6268871 (= lt!2351605 (lemmaExistCutMatchRandMatchRSpecEquivalent!1796 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326))))

(assert (=> b!6268871 (= lt!2351630 (Exists!3259 lambda!343317))))

(declare-datatypes ((tuple2!66336 0))(
  ( (tuple2!66337 (_1!36471 List!64868) (_2!36471 List!64868)) )
))
(declare-datatypes ((Option!16080 0))(
  ( (None!16079) (Some!16079 (v!52234 tuple2!66336)) )
))
(declare-fun isDefined!12783 (Option!16080) Bool)

(declare-fun findConcatSeparation!2494 (Regex!16189 Regex!16189 List!64868 List!64868 List!64868) Option!16080)

(assert (=> b!6268871 (= lt!2351630 (isDefined!12783 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326)))))

(declare-fun lt!2351606 () Unit!158087)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2258 (Regex!16189 Regex!16189 List!64868) Unit!158087)

(assert (=> b!6268871 (= lt!2351606 (lemmaFindConcatSeparationEquivalentToExists!2258 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326))))

(declare-fun b!6268872 () Bool)

(declare-fun res!2586032 () Bool)

(assert (=> b!6268872 (=> res!2586032 e!3812879)))

(assert (=> b!6268872 (= res!2586032 (or ((_ is EmptyExpr!16189) r!7292) ((_ is EmptyLang!16189) r!7292) ((_ is ElementMatch!16189) r!7292) ((_ is Union!16189) r!7292) (not ((_ is Concat!25034) r!7292))))))

(assert (=> b!6268873 (= e!3812878 e!3812863)))

(declare-fun res!2586054 () Bool)

(assert (=> b!6268873 (=> res!2586054 e!3812863)))

(assert (=> b!6268873 (= res!2586054 (or (and ((_ is ElementMatch!16189) (regOne!32890 r!7292)) (= (c!1135772 (regOne!32890 r!7292)) (h!71192 s!2326))) ((_ is Union!16189) (regOne!32890 r!7292)) (not ((_ is Concat!25034) (regOne!32890 r!7292)))))))

(declare-fun lt!2351622 () Unit!158087)

(assert (=> b!6268873 (= lt!2351622 e!3812873)))

(declare-fun c!1135771 () Bool)

(assert (=> b!6268873 (= c!1135771 (nullable!6182 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6268873 (= (flatMap!1694 z!1189 lambda!343319) (derivationStepZipperUp!1363 (h!71191 zl!343) (h!71192 s!2326)))))

(declare-fun lt!2351601 () Unit!158087)

(assert (=> b!6268873 (= lt!2351601 (lemmaFlatMapOnSingletonSet!1220 z!1189 (h!71191 zl!343) lambda!343319))))

(assert (=> b!6268873 (= lt!2351623 (derivationStepZipperUp!1363 lt!2351625 (h!71192 s!2326)))))

(assert (=> b!6268873 (= lt!2351600 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (h!71191 zl!343))) lt!2351625 (h!71192 s!2326)))))

(assert (=> b!6268873 (= lt!2351625 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun lt!2351617 () (InoxSet Context!11146))

(assert (=> b!6268873 (= lt!2351617 (derivationStepZipperUp!1363 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))) (h!71192 s!2326)))))

(declare-fun b!6268874 () Bool)

(declare-fun res!2586037 () Bool)

(assert (=> b!6268874 (=> res!2586037 e!3812867)))

(declare-fun zipperDepth!314 (List!64867) Int)

(assert (=> b!6268874 (= res!2586037 (> (zipperDepth!314 lt!2351631) (zipperDepth!314 zl!343)))))

(declare-fun b!6268875 () Bool)

(declare-fun res!2586049 () Bool)

(assert (=> b!6268875 (=> res!2586049 e!3812879)))

(declare-fun generalisedUnion!2033 (List!64866) Regex!16189)

(declare-fun unfocusZipperList!1610 (List!64867) List!64866)

(assert (=> b!6268875 (= res!2586049 (not (= r!7292 (generalisedUnion!2033 (unfocusZipperList!1610 zl!343)))))))

(declare-fun b!6268876 () Bool)

(declare-fun tp!1748579 () Bool)

(assert (=> b!6268876 (= e!3812862 tp!1748579)))

(declare-fun b!6268877 () Bool)

(declare-fun res!2586048 () Bool)

(assert (=> b!6268877 (=> res!2586048 e!3812874)))

(assert (=> b!6268877 (= res!2586048 (not (= (exprs!6073 (h!71191 zl!343)) (Cons!64742 (Concat!25034 (regOne!32890 (regOne!32890 r!7292)) (regTwo!32890 (regOne!32890 r!7292))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6268878 () Bool)

(declare-fun tp!1748578 () Bool)

(declare-fun tp!1748576 () Bool)

(assert (=> b!6268878 (= e!3812862 (and tp!1748578 tp!1748576))))

(declare-fun b!6268879 () Bool)

(declare-fun tp!1748575 () Bool)

(assert (=> b!6268879 (= e!3812865 (and tp_is_empty!41631 tp!1748575))))

(declare-fun b!6268880 () Bool)

(declare-fun res!2586050 () Bool)

(assert (=> b!6268880 (=> res!2586050 e!3812870)))

(assert (=> b!6268880 (= res!2586050 (not (= (toList!9973 lt!2351624) lt!2351599)))))

(declare-fun b!6268881 () Bool)

(declare-fun tp!1748580 () Bool)

(assert (=> b!6268881 (= e!3812877 (and (inv!83719 (h!71191 zl!343)) e!3812872 tp!1748580))))

(assert (= (and start!623218 res!2586047) b!6268867))

(assert (= (and b!6268867 res!2586056) b!6268860))

(assert (= (and b!6268860 res!2586029) b!6268865))

(assert (= (and b!6268865 (not res!2586042)) b!6268850))

(assert (= (and b!6268850 (not res!2586031)) b!6268859))

(assert (= (and b!6268859 (not res!2586035)) b!6268870))

(assert (= (and b!6268870 (not res!2586051)) b!6268875))

(assert (= (and b!6268875 (not res!2586049)) b!6268872))

(assert (= (and b!6268872 (not res!2586032)) b!6268871))

(assert (= (and b!6268871 (not res!2586055)) b!6268869))

(assert (= (and b!6268869 (not res!2586041)) b!6268873))

(assert (= (and b!6268873 c!1135771) b!6268847))

(assert (= (and b!6268873 (not c!1135771)) b!6268843))

(assert (= (and b!6268847 (not res!2586052)) b!6268856))

(assert (= (and b!6268873 (not res!2586054)) b!6268846))

(assert (= (and b!6268846 (not res!2586044)) b!6268849))

(assert (= (and b!6268849 (not res!2586028)) b!6268862))

(assert (= (and b!6268862 (not res!2586034)) b!6268868))

(assert (= (and b!6268862 res!2586039) b!6268864))

(assert (= (and b!6268862 (not res!2586053)) b!6268852))

(assert (= (and b!6268852 (not res!2586043)) b!6268861))

(assert (= (and b!6268861 (not res!2586045)) b!6268855))

(assert (= (and b!6268861 res!2586040) b!6268866))

(assert (= (and b!6268861 (not res!2586036)) b!6268877))

(assert (= (and b!6268877 (not res!2586048)) b!6268848))

(assert (= (and b!6268848 (not res!2586033)) b!6268863))

(assert (= (and b!6268863 (not res!2586038)) b!6268874))

(assert (= (and b!6268874 (not res!2586037)) b!6268845))

(assert (= (and b!6268845 (not res!2586030)) b!6268880))

(assert (= (and b!6268880 (not res!2586050)) b!6268854))

(assert (= (and b!6268854 (not res!2586046)) b!6268853))

(assert (= (and start!623218 ((_ is ElementMatch!16189) r!7292)) b!6268844))

(assert (= (and start!623218 ((_ is Concat!25034) r!7292)) b!6268858))

(assert (= (and start!623218 ((_ is Star!16189) r!7292)) b!6268876))

(assert (= (and start!623218 ((_ is Union!16189) r!7292)) b!6268878))

(assert (= (and start!623218 condSetEmpty!42632) setIsEmpty!42632))

(assert (= (and start!623218 (not condSetEmpty!42632)) setNonEmpty!42632))

(assert (= setNonEmpty!42632 b!6268857))

(assert (= b!6268881 b!6268851))

(assert (= (and start!623218 ((_ is Cons!64743) zl!343)) b!6268881))

(assert (= (and start!623218 ((_ is Cons!64744) s!2326)) b!6268879))

(declare-fun m!7090660 () Bool)

(assert (=> b!6268845 m!7090660))

(declare-fun m!7090662 () Bool)

(assert (=> b!6268845 m!7090662))

(declare-fun m!7090664 () Bool)

(assert (=> b!6268845 m!7090664))

(declare-fun m!7090666 () Bool)

(assert (=> b!6268845 m!7090666))

(declare-fun m!7090668 () Bool)

(assert (=> b!6268845 m!7090668))

(declare-fun m!7090670 () Bool)

(assert (=> b!6268845 m!7090670))

(declare-fun m!7090672 () Bool)

(assert (=> b!6268848 m!7090672))

(declare-fun m!7090674 () Bool)

(assert (=> b!6268848 m!7090674))

(declare-fun m!7090676 () Bool)

(assert (=> b!6268875 m!7090676))

(assert (=> b!6268875 m!7090676))

(declare-fun m!7090678 () Bool)

(assert (=> b!6268875 m!7090678))

(declare-fun m!7090680 () Bool)

(assert (=> b!6268881 m!7090680))

(declare-fun m!7090682 () Bool)

(assert (=> b!6268854 m!7090682))

(declare-fun m!7090684 () Bool)

(assert (=> b!6268856 m!7090684))

(declare-fun m!7090686 () Bool)

(assert (=> b!6268850 m!7090686))

(declare-fun m!7090688 () Bool)

(assert (=> b!6268861 m!7090688))

(declare-fun m!7090690 () Bool)

(assert (=> b!6268861 m!7090690))

(declare-fun m!7090692 () Bool)

(assert (=> b!6268861 m!7090692))

(declare-fun m!7090694 () Bool)

(assert (=> b!6268861 m!7090694))

(declare-fun m!7090696 () Bool)

(assert (=> b!6268861 m!7090696))

(declare-fun m!7090698 () Bool)

(assert (=> b!6268861 m!7090698))

(declare-fun m!7090700 () Bool)

(assert (=> b!6268853 m!7090700))

(declare-fun m!7090702 () Bool)

(assert (=> b!6268853 m!7090702))

(declare-fun m!7090704 () Bool)

(assert (=> b!6268867 m!7090704))

(declare-fun m!7090706 () Bool)

(assert (=> b!6268863 m!7090706))

(declare-fun m!7090708 () Bool)

(assert (=> b!6268863 m!7090708))

(declare-fun m!7090710 () Bool)

(assert (=> b!6268871 m!7090710))

(declare-fun m!7090712 () Bool)

(assert (=> b!6268871 m!7090712))

(declare-fun m!7090714 () Bool)

(assert (=> b!6268871 m!7090714))

(declare-fun m!7090716 () Bool)

(assert (=> b!6268871 m!7090716))

(declare-fun m!7090718 () Bool)

(assert (=> b!6268871 m!7090718))

(assert (=> b!6268871 m!7090712))

(assert (=> b!6268871 m!7090718))

(declare-fun m!7090720 () Bool)

(assert (=> b!6268871 m!7090720))

(declare-fun m!7090722 () Bool)

(assert (=> b!6268849 m!7090722))

(declare-fun m!7090724 () Bool)

(assert (=> b!6268849 m!7090724))

(declare-fun m!7090726 () Bool)

(assert (=> b!6268846 m!7090726))

(declare-fun m!7090728 () Bool)

(assert (=> b!6268873 m!7090728))

(declare-fun m!7090730 () Bool)

(assert (=> b!6268873 m!7090730))

(declare-fun m!7090732 () Bool)

(assert (=> b!6268873 m!7090732))

(declare-fun m!7090734 () Bool)

(assert (=> b!6268873 m!7090734))

(declare-fun m!7090736 () Bool)

(assert (=> b!6268873 m!7090736))

(declare-fun m!7090738 () Bool)

(assert (=> b!6268873 m!7090738))

(declare-fun m!7090740 () Bool)

(assert (=> b!6268873 m!7090740))

(declare-fun m!7090742 () Bool)

(assert (=> b!6268859 m!7090742))

(declare-fun m!7090744 () Bool)

(assert (=> b!6268874 m!7090744))

(declare-fun m!7090746 () Bool)

(assert (=> b!6268874 m!7090746))

(declare-fun m!7090748 () Bool)

(assert (=> b!6268860 m!7090748))

(declare-fun m!7090750 () Bool)

(assert (=> b!6268847 m!7090750))

(declare-fun m!7090752 () Bool)

(assert (=> b!6268847 m!7090752))

(declare-fun m!7090754 () Bool)

(assert (=> b!6268847 m!7090754))

(declare-fun m!7090756 () Bool)

(assert (=> b!6268855 m!7090756))

(declare-fun m!7090758 () Bool)

(assert (=> setNonEmpty!42632 m!7090758))

(declare-fun m!7090760 () Bool)

(assert (=> b!6268868 m!7090760))

(declare-fun m!7090762 () Bool)

(assert (=> start!623218 m!7090762))

(declare-fun m!7090764 () Bool)

(assert (=> b!6268880 m!7090764))

(declare-fun m!7090766 () Bool)

(assert (=> b!6268869 m!7090766))

(assert (=> b!6268864 m!7090760))

(declare-fun m!7090768 () Bool)

(assert (=> b!6268865 m!7090768))

(declare-fun m!7090770 () Bool)

(assert (=> b!6268865 m!7090770))

(declare-fun m!7090772 () Bool)

(assert (=> b!6268865 m!7090772))

(declare-fun m!7090774 () Bool)

(assert (=> b!6268866 m!7090774))

(assert (=> b!6268866 m!7090774))

(declare-fun m!7090776 () Bool)

(assert (=> b!6268866 m!7090776))

(assert (=> b!6268862 m!7090752))

(declare-fun m!7090778 () Bool)

(assert (=> b!6268862 m!7090778))

(declare-fun m!7090780 () Bool)

(assert (=> b!6268862 m!7090780))

(declare-fun m!7090782 () Bool)

(assert (=> b!6268862 m!7090782))

(declare-fun m!7090784 () Bool)

(assert (=> b!6268852 m!7090784))

(declare-fun m!7090786 () Bool)

(assert (=> b!6268852 m!7090786))

(declare-fun m!7090788 () Bool)

(assert (=> b!6268852 m!7090788))

(declare-fun m!7090790 () Bool)

(assert (=> b!6268852 m!7090790))

(assert (=> b!6268852 m!7090696))

(declare-fun m!7090792 () Bool)

(assert (=> b!6268852 m!7090792))

(declare-fun m!7090794 () Bool)

(assert (=> b!6268852 m!7090794))

(check-sat (not b!6268881) (not b!6268873) (not b!6268874) (not b!6268852) (not b!6268860) (not b!6268876) (not b!6268845) (not b!6268867) (not start!623218) (not b!6268878) (not b!6268851) (not setNonEmpty!42632) (not b!6268880) (not b!6268861) (not b!6268865) (not b!6268855) (not b!6268868) (not b!6268854) (not b!6268871) (not b!6268862) (not b!6268875) (not b!6268849) (not b!6268864) (not b!6268869) (not b!6268859) (not b!6268847) (not b!6268853) tp_is_empty!41631 (not b!6268879) (not b!6268857) (not b!6268866) (not b!6268863) (not b!6268848) (not b!6268856) (not b!6268846) (not b!6268850) (not b!6268858))
(check-sat)
(get-model)

(declare-fun b!6269010 () Bool)

(declare-fun e!3812948 () Bool)

(assert (=> b!6269010 (= e!3812948 (nullable!6182 (h!71190 (exprs!6073 lt!2351625))))))

(declare-fun b!6269011 () Bool)

(declare-fun e!3812949 () (InoxSet Context!11146))

(declare-fun call!530026 () (InoxSet Context!11146))

(assert (=> b!6269011 (= e!3812949 call!530026)))

(declare-fun d!1967464 () Bool)

(declare-fun c!1135816 () Bool)

(assert (=> d!1967464 (= c!1135816 e!3812948)))

(declare-fun res!2586095 () Bool)

(assert (=> d!1967464 (=> (not res!2586095) (not e!3812948))))

(assert (=> d!1967464 (= res!2586095 ((_ is Cons!64742) (exprs!6073 lt!2351625)))))

(declare-fun e!3812950 () (InoxSet Context!11146))

(assert (=> d!1967464 (= (derivationStepZipperUp!1363 lt!2351625 (h!71192 s!2326)) e!3812950)))

(declare-fun b!6269012 () Bool)

(assert (=> b!6269012 (= e!3812950 ((_ map or) call!530026 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (h!71192 s!2326))))))

(declare-fun bm!530021 () Bool)

(assert (=> bm!530021 (= call!530026 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351625)) (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (h!71192 s!2326)))))

(declare-fun b!6269013 () Bool)

(assert (=> b!6269013 (= e!3812949 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6269014 () Bool)

(assert (=> b!6269014 (= e!3812950 e!3812949)))

(declare-fun c!1135817 () Bool)

(assert (=> b!6269014 (= c!1135817 ((_ is Cons!64742) (exprs!6073 lt!2351625)))))

(assert (= (and d!1967464 res!2586095) b!6269010))

(assert (= (and d!1967464 c!1135816) b!6269012))

(assert (= (and d!1967464 (not c!1135816)) b!6269014))

(assert (= (and b!6269014 c!1135817) b!6269011))

(assert (= (and b!6269014 (not c!1135817)) b!6269013))

(assert (= (or b!6269012 b!6269011) bm!530021))

(declare-fun m!7090892 () Bool)

(assert (=> b!6269010 m!7090892))

(declare-fun m!7090894 () Bool)

(assert (=> b!6269012 m!7090894))

(declare-fun m!7090896 () Bool)

(assert (=> bm!530021 m!7090896))

(assert (=> b!6268873 d!1967464))

(declare-fun b!6269015 () Bool)

(declare-fun e!3812951 () Bool)

(assert (=> b!6269015 (= e!3812951 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun b!6269016 () Bool)

(declare-fun e!3812952 () (InoxSet Context!11146))

(declare-fun call!530027 () (InoxSet Context!11146))

(assert (=> b!6269016 (= e!3812952 call!530027)))

(declare-fun d!1967470 () Bool)

(declare-fun c!1135818 () Bool)

(assert (=> d!1967470 (= c!1135818 e!3812951)))

(declare-fun res!2586096 () Bool)

(assert (=> d!1967470 (=> (not res!2586096) (not e!3812951))))

(assert (=> d!1967470 (= res!2586096 ((_ is Cons!64742) (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))

(declare-fun e!3812953 () (InoxSet Context!11146))

(assert (=> d!1967470 (= (derivationStepZipperUp!1363 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))) (h!71192 s!2326)) e!3812953)))

(declare-fun b!6269017 () Bool)

(assert (=> b!6269017 (= e!3812953 ((_ map or) call!530027 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326))))))

(declare-fun bm!530022 () Bool)

(assert (=> bm!530022 (= call!530027 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326)))))

(declare-fun b!6269018 () Bool)

(assert (=> b!6269018 (= e!3812952 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6269019 () Bool)

(assert (=> b!6269019 (= e!3812953 e!3812952)))

(declare-fun c!1135819 () Bool)

(assert (=> b!6269019 (= c!1135819 ((_ is Cons!64742) (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))

(assert (= (and d!1967470 res!2586096) b!6269015))

(assert (= (and d!1967470 c!1135818) b!6269017))

(assert (= (and d!1967470 (not c!1135818)) b!6269019))

(assert (= (and b!6269019 c!1135819) b!6269016))

(assert (= (and b!6269019 (not c!1135819)) b!6269018))

(assert (= (or b!6269017 b!6269016) bm!530022))

(declare-fun m!7090898 () Bool)

(assert (=> b!6269015 m!7090898))

(declare-fun m!7090900 () Bool)

(assert (=> b!6269017 m!7090900))

(declare-fun m!7090902 () Bool)

(assert (=> bm!530022 m!7090902))

(assert (=> b!6268873 d!1967470))

(declare-fun d!1967472 () Bool)

(declare-fun dynLambda!25599 (Int Context!11146) (InoxSet Context!11146))

(assert (=> d!1967472 (= (flatMap!1694 z!1189 lambda!343319) (dynLambda!25599 lambda!343319 (h!71191 zl!343)))))

(declare-fun lt!2351649 () Unit!158087)

(declare-fun choose!46506 ((InoxSet Context!11146) Context!11146 Int) Unit!158087)

(assert (=> d!1967472 (= lt!2351649 (choose!46506 z!1189 (h!71191 zl!343) lambda!343319))))

(assert (=> d!1967472 (= z!1189 (store ((as const (Array Context!11146 Bool)) false) (h!71191 zl!343) true))))

(assert (=> d!1967472 (= (lemmaFlatMapOnSingletonSet!1220 z!1189 (h!71191 zl!343) lambda!343319) lt!2351649)))

(declare-fun b_lambda!238711 () Bool)

(assert (=> (not b_lambda!238711) (not d!1967472)))

(declare-fun bs!1565246 () Bool)

(assert (= bs!1565246 d!1967472))

(assert (=> bs!1565246 m!7090730))

(declare-fun m!7090904 () Bool)

(assert (=> bs!1565246 m!7090904))

(declare-fun m!7090906 () Bool)

(assert (=> bs!1565246 m!7090906))

(declare-fun m!7090908 () Bool)

(assert (=> bs!1565246 m!7090908))

(assert (=> b!6268873 d!1967472))

(declare-fun d!1967474 () Bool)

(declare-fun nullableFct!2133 (Regex!16189) Bool)

(assert (=> d!1967474 (= (nullable!6182 (h!71190 (exprs!6073 (h!71191 zl!343)))) (nullableFct!2133 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun bs!1565247 () Bool)

(assert (= bs!1565247 d!1967474))

(declare-fun m!7090910 () Bool)

(assert (=> bs!1565247 m!7090910))

(assert (=> b!6268873 d!1967474))

(declare-fun bm!530044 () Bool)

(declare-fun call!530054 () (InoxSet Context!11146))

(declare-fun call!530050 () (InoxSet Context!11146))

(assert (=> bm!530044 (= call!530054 call!530050)))

(declare-fun bm!530045 () Bool)

(declare-fun call!530053 () List!64866)

(declare-fun c!1135837 () Bool)

(declare-fun c!1135838 () Bool)

(declare-fun $colon$colon!2053 (List!64866 Regex!16189) List!64866)

(assert (=> bm!530045 (= call!530053 ($colon$colon!2053 (exprs!6073 lt!2351625) (ite (or c!1135838 c!1135837) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71190 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun d!1967476 () Bool)

(declare-fun c!1135836 () Bool)

(assert (=> d!1967476 (= c!1135836 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))) (= (c!1135772 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326))))))

(declare-fun e!3812992 () (InoxSet Context!11146))

(assert (=> d!1967476 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (h!71191 zl!343))) lt!2351625 (h!71192 s!2326)) e!3812992)))

(declare-fun b!6269071 () Bool)

(declare-fun e!3812989 () (InoxSet Context!11146))

(declare-fun call!530049 () (InoxSet Context!11146))

(assert (=> b!6269071 (= e!3812989 ((_ map or) call!530049 call!530054))))

(declare-fun b!6269072 () Bool)

(declare-fun e!3812990 () (InoxSet Context!11146))

(assert (=> b!6269072 (= e!3812989 e!3812990)))

(assert (=> b!6269072 (= c!1135837 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6269073 () Bool)

(declare-fun e!3812991 () (InoxSet Context!11146))

(assert (=> b!6269073 (= e!3812991 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530046 () Bool)

(declare-fun call!530051 () List!64866)

(assert (=> bm!530046 (= call!530051 call!530053)))

(declare-fun b!6269074 () Bool)

(declare-fun call!530052 () (InoxSet Context!11146))

(assert (=> b!6269074 (= e!3812990 call!530052)))

(declare-fun c!1135840 () Bool)

(declare-fun bm!530047 () Bool)

(assert (=> bm!530047 (= call!530050 (derivationStepZipperDown!1437 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))) (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051)) (h!71192 s!2326)))))

(declare-fun bm!530048 () Bool)

(assert (=> bm!530048 (= call!530049 (derivationStepZipperDown!1437 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))) (ite c!1135840 lt!2351625 (Context!11147 call!530053)) (h!71192 s!2326)))))

(declare-fun b!6269075 () Bool)

(declare-fun e!3812988 () Bool)

(assert (=> b!6269075 (= e!3812988 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6269076 () Bool)

(declare-fun c!1135839 () Bool)

(assert (=> b!6269076 (= c!1135839 ((_ is Star!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6269076 (= e!3812990 e!3812991)))

(declare-fun b!6269077 () Bool)

(assert (=> b!6269077 (= c!1135838 e!3812988)))

(declare-fun res!2586114 () Bool)

(assert (=> b!6269077 (=> (not res!2586114) (not e!3812988))))

(assert (=> b!6269077 (= res!2586114 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun e!3812987 () (InoxSet Context!11146))

(assert (=> b!6269077 (= e!3812987 e!3812989)))

(declare-fun b!6269078 () Bool)

(assert (=> b!6269078 (= e!3812992 (store ((as const (Array Context!11146 Bool)) false) lt!2351625 true))))

(declare-fun b!6269079 () Bool)

(assert (=> b!6269079 (= e!3812987 ((_ map or) call!530049 call!530050))))

(declare-fun b!6269080 () Bool)

(assert (=> b!6269080 (= e!3812991 call!530052)))

(declare-fun bm!530049 () Bool)

(assert (=> bm!530049 (= call!530052 call!530054)))

(declare-fun b!6269081 () Bool)

(assert (=> b!6269081 (= e!3812992 e!3812987)))

(assert (=> b!6269081 (= c!1135840 ((_ is Union!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (= (and d!1967476 c!1135836) b!6269078))

(assert (= (and d!1967476 (not c!1135836)) b!6269081))

(assert (= (and b!6269081 c!1135840) b!6269079))

(assert (= (and b!6269081 (not c!1135840)) b!6269077))

(assert (= (and b!6269077 res!2586114) b!6269075))

(assert (= (and b!6269077 c!1135838) b!6269071))

(assert (= (and b!6269077 (not c!1135838)) b!6269072))

(assert (= (and b!6269072 c!1135837) b!6269074))

(assert (= (and b!6269072 (not c!1135837)) b!6269076))

(assert (= (and b!6269076 c!1135839) b!6269080))

(assert (= (and b!6269076 (not c!1135839)) b!6269073))

(assert (= (or b!6269074 b!6269080) bm!530046))

(assert (= (or b!6269074 b!6269080) bm!530049))

(assert (= (or b!6269071 bm!530046) bm!530045))

(assert (= (or b!6269071 bm!530049) bm!530044))

(assert (= (or b!6269079 bm!530044) bm!530047))

(assert (= (or b!6269079 b!6269071) bm!530048))

(declare-fun m!7090920 () Bool)

(assert (=> bm!530048 m!7090920))

(declare-fun m!7090922 () Bool)

(assert (=> b!6269078 m!7090922))

(declare-fun m!7090924 () Bool)

(assert (=> b!6269075 m!7090924))

(declare-fun m!7090926 () Bool)

(assert (=> bm!530045 m!7090926))

(declare-fun m!7090928 () Bool)

(assert (=> bm!530047 m!7090928))

(assert (=> b!6268873 d!1967476))

(declare-fun d!1967482 () Bool)

(declare-fun choose!46508 ((InoxSet Context!11146) Int) (InoxSet Context!11146))

(assert (=> d!1967482 (= (flatMap!1694 z!1189 lambda!343319) (choose!46508 z!1189 lambda!343319))))

(declare-fun bs!1565249 () Bool)

(assert (= bs!1565249 d!1967482))

(declare-fun m!7090930 () Bool)

(assert (=> bs!1565249 m!7090930))

(assert (=> b!6268873 d!1967482))

(declare-fun b!6269098 () Bool)

(declare-fun e!3813003 () Bool)

(assert (=> b!6269098 (= e!3813003 (nullable!6182 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6269099 () Bool)

(declare-fun e!3813004 () (InoxSet Context!11146))

(declare-fun call!530055 () (InoxSet Context!11146))

(assert (=> b!6269099 (= e!3813004 call!530055)))

(declare-fun d!1967484 () Bool)

(declare-fun c!1135845 () Bool)

(assert (=> d!1967484 (= c!1135845 e!3813003)))

(declare-fun res!2586125 () Bool)

(assert (=> d!1967484 (=> (not res!2586125) (not e!3813003))))

(assert (=> d!1967484 (= res!2586125 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(declare-fun e!3813005 () (InoxSet Context!11146))

(assert (=> d!1967484 (= (derivationStepZipperUp!1363 (h!71191 zl!343) (h!71192 s!2326)) e!3813005)))

(declare-fun b!6269100 () Bool)

(assert (=> b!6269100 (= e!3813005 ((_ map or) call!530055 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326))))))

(declare-fun bm!530050 () Bool)

(assert (=> bm!530050 (= call!530055 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (h!71191 zl!343))) (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326)))))

(declare-fun b!6269101 () Bool)

(assert (=> b!6269101 (= e!3813004 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6269102 () Bool)

(assert (=> b!6269102 (= e!3813005 e!3813004)))

(declare-fun c!1135846 () Bool)

(assert (=> b!6269102 (= c!1135846 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (= (and d!1967484 res!2586125) b!6269098))

(assert (= (and d!1967484 c!1135845) b!6269100))

(assert (= (and d!1967484 (not c!1135845)) b!6269102))

(assert (= (and b!6269102 c!1135846) b!6269099))

(assert (= (and b!6269102 (not c!1135846)) b!6269101))

(assert (= (or b!6269100 b!6269099) bm!530050))

(assert (=> b!6269098 m!7090736))

(declare-fun m!7090932 () Bool)

(assert (=> b!6269100 m!7090932))

(declare-fun m!7090934 () Bool)

(assert (=> bm!530050 m!7090934))

(assert (=> b!6268873 d!1967484))

(declare-fun d!1967486 () Bool)

(declare-fun lt!2351664 () Regex!16189)

(assert (=> d!1967486 (validRegex!7925 lt!2351664)))

(assert (=> d!1967486 (= lt!2351664 (generalisedUnion!2033 (unfocusZipperList!1610 lt!2351599)))))

(assert (=> d!1967486 (= (unfocusZipper!1931 lt!2351599) lt!2351664)))

(declare-fun bs!1565250 () Bool)

(assert (= bs!1565250 d!1967486))

(declare-fun m!7090956 () Bool)

(assert (=> bs!1565250 m!7090956))

(declare-fun m!7090960 () Bool)

(assert (=> bs!1565250 m!7090960))

(assert (=> bs!1565250 m!7090960))

(declare-fun m!7090964 () Bool)

(assert (=> bs!1565250 m!7090964))

(assert (=> b!6268854 d!1967486))

(declare-fun b!6269122 () Bool)

(assert (=> b!6269122 true))

(declare-fun bs!1565255 () Bool)

(declare-fun b!6269124 () Bool)

(assert (= bs!1565255 (and b!6269124 b!6269122)))

(declare-fun lt!2351677 () Int)

(declare-fun lt!2351679 () Int)

(declare-fun lambda!343341 () Int)

(declare-fun lambda!343340 () Int)

(assert (=> bs!1565255 (= (= lt!2351679 lt!2351677) (= lambda!343341 lambda!343340))))

(assert (=> b!6269124 true))

(declare-fun d!1967490 () Bool)

(declare-fun e!3813018 () Bool)

(assert (=> d!1967490 e!3813018))

(declare-fun res!2586137 () Bool)

(assert (=> d!1967490 (=> (not res!2586137) (not e!3813018))))

(assert (=> d!1967490 (= res!2586137 (>= lt!2351679 0))))

(declare-fun e!3813017 () Int)

(assert (=> d!1967490 (= lt!2351679 e!3813017)))

(declare-fun c!1135857 () Bool)

(assert (=> d!1967490 (= c!1135857 ((_ is Cons!64743) lt!2351631))))

(assert (=> d!1967490 (= (zipperDepth!314 lt!2351631) lt!2351679)))

(assert (=> b!6269122 (= e!3813017 lt!2351677)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!206 (Context!11146) Int)

(assert (=> b!6269122 (= lt!2351677 (maxBigInt!0 (contextDepth!206 (h!71191 lt!2351631)) (zipperDepth!314 (t!378423 lt!2351631))))))

(declare-fun lt!2351676 () Unit!158087)

(declare-fun lambda!343339 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!190 (List!64867 Int Int Int) Unit!158087)

(assert (=> b!6269122 (= lt!2351676 (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 lt!2351631) lt!2351677 (zipperDepth!314 (t!378423 lt!2351631)) lambda!343339))))

(declare-fun forall!15315 (List!64867 Int) Bool)

(assert (=> b!6269122 (forall!15315 (t!378423 lt!2351631) lambda!343340)))

(declare-fun lt!2351678 () Unit!158087)

(assert (=> b!6269122 (= lt!2351678 lt!2351676)))

(declare-fun b!6269123 () Bool)

(assert (=> b!6269123 (= e!3813017 0)))

(assert (=> b!6269124 (= e!3813018 (forall!15315 lt!2351631 lambda!343341))))

(assert (= (and d!1967490 c!1135857) b!6269122))

(assert (= (and d!1967490 (not c!1135857)) b!6269123))

(assert (= (and d!1967490 res!2586137) b!6269124))

(declare-fun m!7090974 () Bool)

(assert (=> b!6269122 m!7090974))

(declare-fun m!7090976 () Bool)

(assert (=> b!6269122 m!7090976))

(declare-fun m!7090978 () Bool)

(assert (=> b!6269122 m!7090978))

(assert (=> b!6269122 m!7090976))

(declare-fun m!7090980 () Bool)

(assert (=> b!6269122 m!7090980))

(assert (=> b!6269122 m!7090974))

(assert (=> b!6269122 m!7090976))

(declare-fun m!7090982 () Bool)

(assert (=> b!6269122 m!7090982))

(declare-fun m!7090984 () Bool)

(assert (=> b!6269124 m!7090984))

(assert (=> b!6268874 d!1967490))

(declare-fun bs!1565256 () Bool)

(declare-fun b!6269127 () Bool)

(assert (= bs!1565256 (and b!6269127 b!6269122)))

(declare-fun lambda!343343 () Int)

(assert (=> bs!1565256 (= lambda!343343 lambda!343339)))

(declare-fun lambda!343345 () Int)

(declare-fun lt!2351683 () Int)

(assert (=> bs!1565256 (= (= lt!2351683 lt!2351677) (= lambda!343345 lambda!343340))))

(declare-fun bs!1565257 () Bool)

(assert (= bs!1565257 (and b!6269127 b!6269124)))

(assert (=> bs!1565257 (= (= lt!2351683 lt!2351679) (= lambda!343345 lambda!343341))))

(assert (=> b!6269127 true))

(declare-fun bs!1565258 () Bool)

(declare-fun b!6269129 () Bool)

(assert (= bs!1565258 (and b!6269129 b!6269122)))

(declare-fun lt!2351685 () Int)

(declare-fun lambda!343346 () Int)

(assert (=> bs!1565258 (= (= lt!2351685 lt!2351677) (= lambda!343346 lambda!343340))))

(declare-fun bs!1565259 () Bool)

(assert (= bs!1565259 (and b!6269129 b!6269124)))

(assert (=> bs!1565259 (= (= lt!2351685 lt!2351679) (= lambda!343346 lambda!343341))))

(declare-fun bs!1565260 () Bool)

(assert (= bs!1565260 (and b!6269129 b!6269127)))

(assert (=> bs!1565260 (= (= lt!2351685 lt!2351683) (= lambda!343346 lambda!343345))))

(assert (=> b!6269129 true))

(declare-fun d!1967498 () Bool)

(declare-fun e!3813020 () Bool)

(assert (=> d!1967498 e!3813020))

(declare-fun res!2586138 () Bool)

(assert (=> d!1967498 (=> (not res!2586138) (not e!3813020))))

(assert (=> d!1967498 (= res!2586138 (>= lt!2351685 0))))

(declare-fun e!3813019 () Int)

(assert (=> d!1967498 (= lt!2351685 e!3813019)))

(declare-fun c!1135858 () Bool)

(assert (=> d!1967498 (= c!1135858 ((_ is Cons!64743) zl!343))))

(assert (=> d!1967498 (= (zipperDepth!314 zl!343) lt!2351685)))

(assert (=> b!6269127 (= e!3813019 lt!2351683)))

(assert (=> b!6269127 (= lt!2351683 (maxBigInt!0 (contextDepth!206 (h!71191 zl!343)) (zipperDepth!314 (t!378423 zl!343))))))

(declare-fun lt!2351682 () Unit!158087)

(assert (=> b!6269127 (= lt!2351682 (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 zl!343) lt!2351683 (zipperDepth!314 (t!378423 zl!343)) lambda!343343))))

(assert (=> b!6269127 (forall!15315 (t!378423 zl!343) lambda!343345)))

(declare-fun lt!2351684 () Unit!158087)

(assert (=> b!6269127 (= lt!2351684 lt!2351682)))

(declare-fun b!6269128 () Bool)

(assert (=> b!6269128 (= e!3813019 0)))

(assert (=> b!6269129 (= e!3813020 (forall!15315 zl!343 lambda!343346))))

(assert (= (and d!1967498 c!1135858) b!6269127))

(assert (= (and d!1967498 (not c!1135858)) b!6269128))

(assert (= (and d!1967498 res!2586138) b!6269129))

(declare-fun m!7090986 () Bool)

(assert (=> b!6269127 m!7090986))

(declare-fun m!7090988 () Bool)

(assert (=> b!6269127 m!7090988))

(declare-fun m!7090990 () Bool)

(assert (=> b!6269127 m!7090990))

(assert (=> b!6269127 m!7090988))

(declare-fun m!7090992 () Bool)

(assert (=> b!6269127 m!7090992))

(assert (=> b!6269127 m!7090986))

(assert (=> b!6269127 m!7090988))

(declare-fun m!7090994 () Bool)

(assert (=> b!6269127 m!7090994))

(declare-fun m!7090996 () Bool)

(assert (=> b!6269129 m!7090996))

(assert (=> b!6268874 d!1967498))

(declare-fun d!1967500 () Bool)

(declare-fun lt!2351689 () Int)

(assert (=> d!1967500 (>= lt!2351689 0)))

(declare-fun e!3813027 () Int)

(assert (=> d!1967500 (= lt!2351689 e!3813027)))

(declare-fun c!1135861 () Bool)

(assert (=> d!1967500 (= c!1135861 ((_ is Nil!64744) s!2326))))

(assert (=> d!1967500 (= (size!40310 s!2326) lt!2351689)))

(declare-fun b!6269142 () Bool)

(assert (=> b!6269142 (= e!3813027 0)))

(declare-fun b!6269143 () Bool)

(assert (=> b!6269143 (= e!3813027 (+ 1 (size!40310 (t!378424 s!2326))))))

(assert (= (and d!1967500 c!1135861) b!6269142))

(assert (= (and d!1967500 (not c!1135861)) b!6269143))

(declare-fun m!7090998 () Bool)

(assert (=> b!6269143 m!7090998))

(assert (=> b!6268853 d!1967500))

(declare-fun d!1967502 () Bool)

(declare-fun lt!2351692 () Int)

(assert (=> d!1967502 (>= lt!2351692 0)))

(declare-fun e!3813031 () Int)

(assert (=> d!1967502 (= lt!2351692 e!3813031)))

(declare-fun c!1135865 () Bool)

(assert (=> d!1967502 (= c!1135865 ((_ is Cons!64743) lt!2351599))))

(assert (=> d!1967502 (= (zipperDepthTotal!342 lt!2351599) lt!2351692)))

(declare-fun b!6269150 () Bool)

(assert (=> b!6269150 (= e!3813031 (+ (contextDepthTotal!312 (h!71191 lt!2351599)) (zipperDepthTotal!342 (t!378423 lt!2351599))))))

(declare-fun b!6269151 () Bool)

(assert (=> b!6269151 (= e!3813031 0)))

(assert (= (and d!1967502 c!1135865) b!6269150))

(assert (= (and d!1967502 (not c!1135865)) b!6269151))

(declare-fun m!7091014 () Bool)

(assert (=> b!6269150 m!7091014))

(declare-fun m!7091016 () Bool)

(assert (=> b!6269150 m!7091016))

(assert (=> b!6268853 d!1967502))

(declare-fun d!1967510 () Bool)

(declare-fun c!1135868 () Bool)

(declare-fun isEmpty!36777 (List!64868) Bool)

(assert (=> d!1967510 (= c!1135868 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813034 () Bool)

(assert (=> d!1967510 (= (matchZipper!2201 lt!2351610 (t!378424 s!2326)) e!3813034)))

(declare-fun b!6269156 () Bool)

(declare-fun nullableZipper!1959 ((InoxSet Context!11146)) Bool)

(assert (=> b!6269156 (= e!3813034 (nullableZipper!1959 lt!2351610))))

(declare-fun b!6269157 () Bool)

(declare-fun head!12878 (List!64868) C!32648)

(declare-fun tail!11963 (List!64868) List!64868)

(assert (=> b!6269157 (= e!3813034 (matchZipper!2201 (derivationStepZipper!2155 lt!2351610 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967510 c!1135868) b!6269156))

(assert (= (and d!1967510 (not c!1135868)) b!6269157))

(declare-fun m!7091024 () Bool)

(assert (=> d!1967510 m!7091024))

(declare-fun m!7091026 () Bool)

(assert (=> b!6269156 m!7091026))

(declare-fun m!7091028 () Bool)

(assert (=> b!6269157 m!7091028))

(assert (=> b!6269157 m!7091028))

(declare-fun m!7091030 () Bool)

(assert (=> b!6269157 m!7091030))

(declare-fun m!7091032 () Bool)

(assert (=> b!6269157 m!7091032))

(assert (=> b!6269157 m!7091030))

(assert (=> b!6269157 m!7091032))

(declare-fun m!7091034 () Bool)

(assert (=> b!6269157 m!7091034))

(assert (=> b!6268855 d!1967510))

(declare-fun d!1967514 () Bool)

(declare-fun e!3813077 () Bool)

(assert (=> d!1967514 e!3813077))

(declare-fun res!2586171 () Bool)

(assert (=> d!1967514 (=> (not res!2586171) (not e!3813077))))

(declare-fun lt!2351698 () Regex!16189)

(assert (=> d!1967514 (= res!2586171 (validRegex!7925 lt!2351698))))

(declare-fun e!3813076 () Regex!16189)

(assert (=> d!1967514 (= lt!2351698 e!3813076)))

(declare-fun c!1135890 () Bool)

(declare-fun e!3813075 () Bool)

(assert (=> d!1967514 (= c!1135890 e!3813075)))

(declare-fun res!2586170 () Bool)

(assert (=> d!1967514 (=> (not res!2586170) (not e!3813075))))

(assert (=> d!1967514 (= res!2586170 ((_ is Cons!64742) (unfocusZipperList!1610 zl!343)))))

(declare-fun lambda!343358 () Int)

(declare-fun forall!15316 (List!64866 Int) Bool)

(assert (=> d!1967514 (forall!15316 (unfocusZipperList!1610 zl!343) lambda!343358)))

(assert (=> d!1967514 (= (generalisedUnion!2033 (unfocusZipperList!1610 zl!343)) lt!2351698)))

(declare-fun b!6269221 () Bool)

(assert (=> b!6269221 (= e!3813075 (isEmpty!36775 (t!378422 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6269222 () Bool)

(declare-fun e!3813074 () Bool)

(declare-fun head!12879 (List!64866) Regex!16189)

(assert (=> b!6269222 (= e!3813074 (= lt!2351698 (head!12879 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6269223 () Bool)

(assert (=> b!6269223 (= e!3813076 (h!71190 (unfocusZipperList!1610 zl!343)))))

(declare-fun b!6269224 () Bool)

(declare-fun e!3813073 () Regex!16189)

(assert (=> b!6269224 (= e!3813076 e!3813073)))

(declare-fun c!1135891 () Bool)

(assert (=> b!6269224 (= c!1135891 ((_ is Cons!64742) (unfocusZipperList!1610 zl!343)))))

(declare-fun b!6269225 () Bool)

(declare-fun isUnion!1033 (Regex!16189) Bool)

(assert (=> b!6269225 (= e!3813074 (isUnion!1033 lt!2351698))))

(declare-fun b!6269226 () Bool)

(declare-fun e!3813072 () Bool)

(assert (=> b!6269226 (= e!3813077 e!3813072)))

(declare-fun c!1135892 () Bool)

(assert (=> b!6269226 (= c!1135892 (isEmpty!36775 (unfocusZipperList!1610 zl!343)))))

(declare-fun b!6269227 () Bool)

(assert (=> b!6269227 (= e!3813073 (Union!16189 (h!71190 (unfocusZipperList!1610 zl!343)) (generalisedUnion!2033 (t!378422 (unfocusZipperList!1610 zl!343)))))))

(declare-fun b!6269228 () Bool)

(assert (=> b!6269228 (= e!3813072 e!3813074)))

(declare-fun c!1135889 () Bool)

(declare-fun tail!11964 (List!64866) List!64866)

(assert (=> b!6269228 (= c!1135889 (isEmpty!36775 (tail!11964 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6269229 () Bool)

(assert (=> b!6269229 (= e!3813073 EmptyLang!16189)))

(declare-fun b!6269230 () Bool)

(declare-fun isEmptyLang!1603 (Regex!16189) Bool)

(assert (=> b!6269230 (= e!3813072 (isEmptyLang!1603 lt!2351698))))

(assert (= (and d!1967514 res!2586170) b!6269221))

(assert (= (and d!1967514 c!1135890) b!6269223))

(assert (= (and d!1967514 (not c!1135890)) b!6269224))

(assert (= (and b!6269224 c!1135891) b!6269227))

(assert (= (and b!6269224 (not c!1135891)) b!6269229))

(assert (= (and d!1967514 res!2586171) b!6269226))

(assert (= (and b!6269226 c!1135892) b!6269230))

(assert (= (and b!6269226 (not c!1135892)) b!6269228))

(assert (= (and b!6269228 c!1135889) b!6269222))

(assert (= (and b!6269228 (not c!1135889)) b!6269225))

(declare-fun m!7091036 () Bool)

(assert (=> b!6269230 m!7091036))

(declare-fun m!7091038 () Bool)

(assert (=> b!6269227 m!7091038))

(declare-fun m!7091040 () Bool)

(assert (=> b!6269221 m!7091040))

(declare-fun m!7091042 () Bool)

(assert (=> b!6269225 m!7091042))

(assert (=> b!6269226 m!7090676))

(declare-fun m!7091044 () Bool)

(assert (=> b!6269226 m!7091044))

(assert (=> b!6269222 m!7090676))

(declare-fun m!7091046 () Bool)

(assert (=> b!6269222 m!7091046))

(assert (=> b!6269228 m!7090676))

(declare-fun m!7091048 () Bool)

(assert (=> b!6269228 m!7091048))

(assert (=> b!6269228 m!7091048))

(declare-fun m!7091050 () Bool)

(assert (=> b!6269228 m!7091050))

(declare-fun m!7091052 () Bool)

(assert (=> d!1967514 m!7091052))

(assert (=> d!1967514 m!7090676))

(declare-fun m!7091054 () Bool)

(assert (=> d!1967514 m!7091054))

(assert (=> b!6268875 d!1967514))

(declare-fun bs!1565273 () Bool)

(declare-fun d!1967516 () Bool)

(assert (= bs!1565273 (and d!1967516 d!1967514)))

(declare-fun lambda!343362 () Int)

(assert (=> bs!1565273 (= lambda!343362 lambda!343358)))

(declare-fun lt!2351702 () List!64866)

(assert (=> d!1967516 (forall!15316 lt!2351702 lambda!343362)))

(declare-fun e!3813087 () List!64866)

(assert (=> d!1967516 (= lt!2351702 e!3813087)))

(declare-fun c!1135898 () Bool)

(assert (=> d!1967516 (= c!1135898 ((_ is Cons!64743) zl!343))))

(assert (=> d!1967516 (= (unfocusZipperList!1610 zl!343) lt!2351702)))

(declare-fun b!6269249 () Bool)

(assert (=> b!6269249 (= e!3813087 (Cons!64742 (generalisedConcat!1786 (exprs!6073 (h!71191 zl!343))) (unfocusZipperList!1610 (t!378423 zl!343))))))

(declare-fun b!6269250 () Bool)

(assert (=> b!6269250 (= e!3813087 Nil!64742)))

(assert (= (and d!1967516 c!1135898) b!6269249))

(assert (= (and d!1967516 (not c!1135898)) b!6269250))

(declare-fun m!7091068 () Bool)

(assert (=> d!1967516 m!7091068))

(assert (=> b!6269249 m!7090742))

(declare-fun m!7091070 () Bool)

(assert (=> b!6269249 m!7091070))

(assert (=> b!6268875 d!1967516))

(declare-fun d!1967522 () Bool)

(declare-fun c!1135899 () Bool)

(assert (=> d!1967522 (= c!1135899 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813088 () Bool)

(assert (=> d!1967522 (= (matchZipper!2201 lt!2351623 (t!378424 s!2326)) e!3813088)))

(declare-fun b!6269251 () Bool)

(assert (=> b!6269251 (= e!3813088 (nullableZipper!1959 lt!2351623))))

(declare-fun b!6269252 () Bool)

(assert (=> b!6269252 (= e!3813088 (matchZipper!2201 (derivationStepZipper!2155 lt!2351623 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967522 c!1135899) b!6269251))

(assert (= (and d!1967522 (not c!1135899)) b!6269252))

(assert (=> d!1967522 m!7091024))

(declare-fun m!7091072 () Bool)

(assert (=> b!6269251 m!7091072))

(assert (=> b!6269252 m!7091028))

(assert (=> b!6269252 m!7091028))

(declare-fun m!7091074 () Bool)

(assert (=> b!6269252 m!7091074))

(assert (=> b!6269252 m!7091032))

(assert (=> b!6269252 m!7091074))

(assert (=> b!6269252 m!7091032))

(declare-fun m!7091076 () Bool)

(assert (=> b!6269252 m!7091076))

(assert (=> b!6268856 d!1967522))

(declare-fun bs!1565275 () Bool)

(declare-fun d!1967524 () Bool)

(assert (= bs!1565275 (and d!1967524 d!1967514)))

(declare-fun lambda!343365 () Int)

(assert (=> bs!1565275 (= lambda!343365 lambda!343358)))

(declare-fun bs!1565276 () Bool)

(assert (= bs!1565276 (and d!1967524 d!1967516)))

(assert (=> bs!1565276 (= lambda!343365 lambda!343362)))

(assert (=> d!1967524 (= (inv!83719 setElem!42632) (forall!15316 (exprs!6073 setElem!42632) lambda!343365))))

(declare-fun bs!1565277 () Bool)

(assert (= bs!1565277 d!1967524))

(declare-fun m!7091080 () Bool)

(assert (=> bs!1565277 m!7091080))

(assert (=> setNonEmpty!42632 d!1967524))

(declare-fun bs!1565284 () Bool)

(declare-fun d!1967528 () Bool)

(assert (= bs!1565284 (and d!1967528 d!1967514)))

(declare-fun lambda!343380 () Int)

(assert (=> bs!1565284 (= lambda!343380 lambda!343358)))

(declare-fun bs!1565285 () Bool)

(assert (= bs!1565285 (and d!1967528 d!1967516)))

(assert (=> bs!1565285 (= lambda!343380 lambda!343362)))

(declare-fun bs!1565286 () Bool)

(assert (= bs!1565286 (and d!1967528 d!1967524)))

(assert (=> bs!1565286 (= lambda!343380 lambda!343365)))

(declare-fun b!6269287 () Bool)

(declare-fun e!3813113 () Regex!16189)

(assert (=> b!6269287 (= e!3813113 EmptyExpr!16189)))

(declare-fun b!6269288 () Bool)

(declare-fun e!3813111 () Bool)

(declare-fun e!3813109 () Bool)

(assert (=> b!6269288 (= e!3813111 e!3813109)))

(declare-fun c!1135920 () Bool)

(assert (=> b!6269288 (= c!1135920 (isEmpty!36775 (exprs!6073 (h!71191 zl!343))))))

(declare-fun b!6269289 () Bool)

(declare-fun e!3813110 () Regex!16189)

(assert (=> b!6269289 (= e!3813110 e!3813113)))

(declare-fun c!1135921 () Bool)

(assert (=> b!6269289 (= c!1135921 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(declare-fun b!6269290 () Bool)

(declare-fun lt!2351724 () Regex!16189)

(declare-fun isEmptyExpr!1595 (Regex!16189) Bool)

(assert (=> b!6269290 (= e!3813109 (isEmptyExpr!1595 lt!2351724))))

(declare-fun b!6269291 () Bool)

(declare-fun e!3813112 () Bool)

(declare-fun isConcat!1118 (Regex!16189) Bool)

(assert (=> b!6269291 (= e!3813112 (isConcat!1118 lt!2351724))))

(declare-fun b!6269292 () Bool)

(assert (=> b!6269292 (= e!3813109 e!3813112)))

(declare-fun c!1135919 () Bool)

(assert (=> b!6269292 (= c!1135919 (isEmpty!36775 (tail!11964 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6269294 () Bool)

(assert (=> b!6269294 (= e!3813112 (= lt!2351724 (head!12879 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6269295 () Bool)

(declare-fun e!3813114 () Bool)

(assert (=> b!6269295 (= e!3813114 (isEmpty!36775 (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6269296 () Bool)

(assert (=> b!6269296 (= e!3813113 (Concat!25034 (h!71190 (exprs!6073 (h!71191 zl!343))) (generalisedConcat!1786 (t!378422 (exprs!6073 (h!71191 zl!343))))))))

(assert (=> d!1967528 e!3813111))

(declare-fun res!2586188 () Bool)

(assert (=> d!1967528 (=> (not res!2586188) (not e!3813111))))

(assert (=> d!1967528 (= res!2586188 (validRegex!7925 lt!2351724))))

(assert (=> d!1967528 (= lt!2351724 e!3813110)))

(declare-fun c!1135918 () Bool)

(assert (=> d!1967528 (= c!1135918 e!3813114)))

(declare-fun res!2586189 () Bool)

(assert (=> d!1967528 (=> (not res!2586189) (not e!3813114))))

(assert (=> d!1967528 (= res!2586189 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> d!1967528 (forall!15316 (exprs!6073 (h!71191 zl!343)) lambda!343380)))

(assert (=> d!1967528 (= (generalisedConcat!1786 (exprs!6073 (h!71191 zl!343))) lt!2351724)))

(declare-fun b!6269293 () Bool)

(assert (=> b!6269293 (= e!3813110 (h!71190 (exprs!6073 (h!71191 zl!343))))))

(assert (= (and d!1967528 res!2586189) b!6269295))

(assert (= (and d!1967528 c!1135918) b!6269293))

(assert (= (and d!1967528 (not c!1135918)) b!6269289))

(assert (= (and b!6269289 c!1135921) b!6269296))

(assert (= (and b!6269289 (not c!1135921)) b!6269287))

(assert (= (and d!1967528 res!2586188) b!6269288))

(assert (= (and b!6269288 c!1135920) b!6269290))

(assert (= (and b!6269288 (not c!1135920)) b!6269292))

(assert (= (and b!6269292 c!1135919) b!6269294))

(assert (= (and b!6269292 (not c!1135919)) b!6269291))

(declare-fun m!7091106 () Bool)

(assert (=> d!1967528 m!7091106))

(declare-fun m!7091108 () Bool)

(assert (=> d!1967528 m!7091108))

(declare-fun m!7091110 () Bool)

(assert (=> b!6269296 m!7091110))

(declare-fun m!7091112 () Bool)

(assert (=> b!6269294 m!7091112))

(declare-fun m!7091114 () Bool)

(assert (=> b!6269288 m!7091114))

(assert (=> b!6269295 m!7090766))

(declare-fun m!7091116 () Bool)

(assert (=> b!6269291 m!7091116))

(declare-fun m!7091118 () Bool)

(assert (=> b!6269292 m!7091118))

(assert (=> b!6269292 m!7091118))

(declare-fun m!7091120 () Bool)

(assert (=> b!6269292 m!7091120))

(declare-fun m!7091122 () Bool)

(assert (=> b!6269290 m!7091122))

(assert (=> b!6268859 d!1967528))

(declare-fun b!6269349 () Bool)

(declare-fun e!3813152 () Bool)

(declare-fun e!3813149 () Bool)

(assert (=> b!6269349 (= e!3813152 e!3813149)))

(declare-fun c!1135943 () Bool)

(assert (=> b!6269349 (= c!1135943 ((_ is Star!16189) r!7292))))

(declare-fun d!1967534 () Bool)

(declare-fun res!2586205 () Bool)

(assert (=> d!1967534 (=> res!2586205 e!3813152)))

(assert (=> d!1967534 (= res!2586205 ((_ is ElementMatch!16189) r!7292))))

(assert (=> d!1967534 (= (validRegex!7925 r!7292) e!3813152)))

(declare-fun bm!530064 () Bool)

(declare-fun call!530071 () Bool)

(declare-fun call!530072 () Bool)

(assert (=> bm!530064 (= call!530071 call!530072)))

(declare-fun b!6269350 () Bool)

(declare-fun e!3813153 () Bool)

(assert (=> b!6269350 (= e!3813149 e!3813153)))

(declare-fun c!1135942 () Bool)

(assert (=> b!6269350 (= c!1135942 ((_ is Union!16189) r!7292))))

(declare-fun b!6269351 () Bool)

(declare-fun e!3813151 () Bool)

(declare-fun e!3813148 () Bool)

(assert (=> b!6269351 (= e!3813151 e!3813148)))

(declare-fun res!2586203 () Bool)

(assert (=> b!6269351 (=> (not res!2586203) (not e!3813148))))

(declare-fun call!530073 () Bool)

(assert (=> b!6269351 (= res!2586203 call!530073)))

(declare-fun b!6269352 () Bool)

(declare-fun e!3813150 () Bool)

(assert (=> b!6269352 (= e!3813150 call!530072)))

(declare-fun b!6269353 () Bool)

(declare-fun res!2586202 () Bool)

(declare-fun e!3813147 () Bool)

(assert (=> b!6269353 (=> (not res!2586202) (not e!3813147))))

(assert (=> b!6269353 (= res!2586202 call!530073)))

(assert (=> b!6269353 (= e!3813153 e!3813147)))

(declare-fun bm!530065 () Bool)

(assert (=> bm!530065 (= call!530073 (validRegex!7925 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))

(declare-fun b!6269354 () Bool)

(declare-fun res!2586204 () Bool)

(assert (=> b!6269354 (=> res!2586204 e!3813151)))

(assert (=> b!6269354 (= res!2586204 (not ((_ is Concat!25034) r!7292)))))

(assert (=> b!6269354 (= e!3813153 e!3813151)))

(declare-fun b!6269355 () Bool)

(assert (=> b!6269355 (= e!3813148 call!530071)))

(declare-fun b!6269356 () Bool)

(assert (=> b!6269356 (= e!3813147 call!530071)))

(declare-fun b!6269357 () Bool)

(assert (=> b!6269357 (= e!3813149 e!3813150)))

(declare-fun res!2586206 () Bool)

(assert (=> b!6269357 (= res!2586206 (not (nullable!6182 (reg!16518 r!7292))))))

(assert (=> b!6269357 (=> (not res!2586206) (not e!3813150))))

(declare-fun bm!530066 () Bool)

(assert (=> bm!530066 (= call!530072 (validRegex!7925 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))

(assert (= (and d!1967534 (not res!2586205)) b!6269349))

(assert (= (and b!6269349 c!1135943) b!6269357))

(assert (= (and b!6269349 (not c!1135943)) b!6269350))

(assert (= (and b!6269357 res!2586206) b!6269352))

(assert (= (and b!6269350 c!1135942) b!6269353))

(assert (= (and b!6269350 (not c!1135942)) b!6269354))

(assert (= (and b!6269353 res!2586202) b!6269356))

(assert (= (and b!6269354 (not res!2586204)) b!6269351))

(assert (= (and b!6269351 res!2586203) b!6269355))

(assert (= (or b!6269356 b!6269355) bm!530064))

(assert (= (or b!6269353 b!6269351) bm!530065))

(assert (= (or b!6269352 bm!530064) bm!530066))

(declare-fun m!7091130 () Bool)

(assert (=> bm!530065 m!7091130))

(declare-fun m!7091132 () Bool)

(assert (=> b!6269357 m!7091132))

(declare-fun m!7091134 () Bool)

(assert (=> bm!530066 m!7091134))

(assert (=> start!623218 d!1967534))

(declare-fun bs!1565287 () Bool)

(declare-fun d!1967540 () Bool)

(assert (= bs!1565287 (and d!1967540 d!1967514)))

(declare-fun lambda!343381 () Int)

(assert (=> bs!1565287 (= lambda!343381 lambda!343358)))

(declare-fun bs!1565288 () Bool)

(assert (= bs!1565288 (and d!1967540 d!1967516)))

(assert (=> bs!1565288 (= lambda!343381 lambda!343362)))

(declare-fun bs!1565289 () Bool)

(assert (= bs!1565289 (and d!1967540 d!1967524)))

(assert (=> bs!1565289 (= lambda!343381 lambda!343365)))

(declare-fun bs!1565290 () Bool)

(assert (= bs!1565290 (and d!1967540 d!1967528)))

(assert (=> bs!1565290 (= lambda!343381 lambda!343380)))

(assert (=> d!1967540 (= (inv!83719 (h!71191 zl!343)) (forall!15316 (exprs!6073 (h!71191 zl!343)) lambda!343381))))

(declare-fun bs!1565291 () Bool)

(assert (= bs!1565291 d!1967540))

(declare-fun m!7091136 () Bool)

(assert (=> bs!1565291 m!7091136))

(assert (=> b!6268881 d!1967540))

(declare-fun d!1967542 () Bool)

(assert (=> d!1967542 (= (flatMap!1694 lt!2351624 lambda!343319) (choose!46508 lt!2351624 lambda!343319))))

(declare-fun bs!1565292 () Bool)

(assert (= bs!1565292 d!1967542))

(declare-fun m!7091138 () Bool)

(assert (=> bs!1565292 m!7091138))

(assert (=> b!6268861 d!1967542))

(declare-fun d!1967544 () Bool)

(declare-fun e!3813162 () Bool)

(assert (=> d!1967544 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351610) (t!378424 s!2326)) e!3813162)))

(declare-fun res!2586210 () Bool)

(assert (=> d!1967544 (=> res!2586210 e!3813162)))

(assert (=> d!1967544 (= res!2586210 (matchZipper!2201 lt!2351621 (t!378424 s!2326)))))

(declare-fun lt!2351733 () Unit!158087)

(declare-fun choose!46512 ((InoxSet Context!11146) (InoxSet Context!11146) List!64868) Unit!158087)

(assert (=> d!1967544 (= lt!2351733 (choose!46512 lt!2351621 lt!2351610 (t!378424 s!2326)))))

(assert (=> d!1967544 (= (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351621 lt!2351610 (t!378424 s!2326)) lt!2351733)))

(declare-fun b!6269371 () Bool)

(assert (=> b!6269371 (= e!3813162 (matchZipper!2201 lt!2351610 (t!378424 s!2326)))))

(assert (= (and d!1967544 (not res!2586210)) b!6269371))

(declare-fun m!7091150 () Bool)

(assert (=> d!1967544 m!7091150))

(assert (=> d!1967544 m!7090780))

(declare-fun m!7091152 () Bool)

(assert (=> d!1967544 m!7091152))

(assert (=> b!6269371 m!7090756))

(assert (=> b!6268861 d!1967544))

(declare-fun b!6269383 () Bool)

(declare-fun e!3813169 () Bool)

(assert (=> b!6269383 (= e!3813169 (nullable!6182 (h!71190 (exprs!6073 lt!2351634))))))

(declare-fun b!6269384 () Bool)

(declare-fun e!3813170 () (InoxSet Context!11146))

(declare-fun call!530096 () (InoxSet Context!11146))

(assert (=> b!6269384 (= e!3813170 call!530096)))

(declare-fun d!1967548 () Bool)

(declare-fun c!1135954 () Bool)

(assert (=> d!1967548 (= c!1135954 e!3813169)))

(declare-fun res!2586212 () Bool)

(assert (=> d!1967548 (=> (not res!2586212) (not e!3813169))))

(assert (=> d!1967548 (= res!2586212 ((_ is Cons!64742) (exprs!6073 lt!2351634)))))

(declare-fun e!3813171 () (InoxSet Context!11146))

(assert (=> d!1967548 (= (derivationStepZipperUp!1363 lt!2351634 (h!71192 s!2326)) e!3813171)))

(declare-fun b!6269385 () Bool)

(assert (=> b!6269385 (= e!3813171 ((_ map or) call!530096 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (h!71192 s!2326))))))

(declare-fun bm!530091 () Bool)

(assert (=> bm!530091 (= call!530096 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351634)) (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (h!71192 s!2326)))))

(declare-fun b!6269386 () Bool)

(assert (=> b!6269386 (= e!3813170 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6269387 () Bool)

(assert (=> b!6269387 (= e!3813171 e!3813170)))

(declare-fun c!1135955 () Bool)

(assert (=> b!6269387 (= c!1135955 ((_ is Cons!64742) (exprs!6073 lt!2351634)))))

(assert (= (and d!1967548 res!2586212) b!6269383))

(assert (= (and d!1967548 c!1135954) b!6269385))

(assert (= (and d!1967548 (not c!1135954)) b!6269387))

(assert (= (and b!6269387 c!1135955) b!6269384))

(assert (= (and b!6269387 (not c!1135955)) b!6269386))

(assert (= (or b!6269385 b!6269384) bm!530091))

(declare-fun m!7091154 () Bool)

(assert (=> b!6269383 m!7091154))

(declare-fun m!7091156 () Bool)

(assert (=> b!6269385 m!7091156))

(declare-fun m!7091160 () Bool)

(assert (=> bm!530091 m!7091160))

(assert (=> b!6268861 d!1967548))

(declare-fun d!1967550 () Bool)

(assert (=> d!1967550 (= (flatMap!1694 lt!2351624 lambda!343319) (dynLambda!25599 lambda!343319 lt!2351634))))

(declare-fun lt!2351734 () Unit!158087)

(assert (=> d!1967550 (= lt!2351734 (choose!46506 lt!2351624 lt!2351634 lambda!343319))))

(assert (=> d!1967550 (= lt!2351624 (store ((as const (Array Context!11146 Bool)) false) lt!2351634 true))))

(assert (=> d!1967550 (= (lemmaFlatMapOnSingletonSet!1220 lt!2351624 lt!2351634 lambda!343319) lt!2351734)))

(declare-fun b_lambda!238713 () Bool)

(assert (=> (not b_lambda!238713) (not d!1967550)))

(declare-fun bs!1565293 () Bool)

(assert (= bs!1565293 d!1967550))

(assert (=> bs!1565293 m!7090688))

(declare-fun m!7091168 () Bool)

(assert (=> bs!1565293 m!7091168))

(declare-fun m!7091170 () Bool)

(assert (=> bs!1565293 m!7091170))

(assert (=> bs!1565293 m!7090794))

(assert (=> b!6268861 d!1967550))

(declare-fun d!1967554 () Bool)

(declare-fun c!1135956 () Bool)

(assert (=> d!1967554 (= c!1135956 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813172 () Bool)

(assert (=> d!1967554 (= (matchZipper!2201 lt!2351607 (t!378424 s!2326)) e!3813172)))

(declare-fun b!6269388 () Bool)

(assert (=> b!6269388 (= e!3813172 (nullableZipper!1959 lt!2351607))))

(declare-fun b!6269389 () Bool)

(assert (=> b!6269389 (= e!3813172 (matchZipper!2201 (derivationStepZipper!2155 lt!2351607 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967554 c!1135956) b!6269388))

(assert (= (and d!1967554 (not c!1135956)) b!6269389))

(assert (=> d!1967554 m!7091024))

(declare-fun m!7091174 () Bool)

(assert (=> b!6269388 m!7091174))

(assert (=> b!6269389 m!7091028))

(assert (=> b!6269389 m!7091028))

(declare-fun m!7091176 () Bool)

(assert (=> b!6269389 m!7091176))

(assert (=> b!6269389 m!7091032))

(assert (=> b!6269389 m!7091176))

(assert (=> b!6269389 m!7091032))

(declare-fun m!7091178 () Bool)

(assert (=> b!6269389 m!7091178))

(assert (=> b!6268861 d!1967554))

(declare-fun d!1967558 () Bool)

(declare-fun c!1135962 () Bool)

(assert (=> d!1967558 (= c!1135962 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813179 () Bool)

(assert (=> d!1967558 (= (matchZipper!2201 lt!2351629 (t!378424 s!2326)) e!3813179)))

(declare-fun b!6269401 () Bool)

(assert (=> b!6269401 (= e!3813179 (nullableZipper!1959 lt!2351629))))

(declare-fun b!6269402 () Bool)

(assert (=> b!6269402 (= e!3813179 (matchZipper!2201 (derivationStepZipper!2155 lt!2351629 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967558 c!1135962) b!6269401))

(assert (= (and d!1967558 (not c!1135962)) b!6269402))

(assert (=> d!1967558 m!7091024))

(declare-fun m!7091180 () Bool)

(assert (=> b!6269401 m!7091180))

(assert (=> b!6269402 m!7091028))

(assert (=> b!6269402 m!7091028))

(declare-fun m!7091182 () Bool)

(assert (=> b!6269402 m!7091182))

(assert (=> b!6269402 m!7091032))

(assert (=> b!6269402 m!7091182))

(assert (=> b!6269402 m!7091032))

(declare-fun m!7091184 () Bool)

(assert (=> b!6269402 m!7091184))

(assert (=> b!6268861 d!1967558))

(declare-fun d!1967560 () Bool)

(declare-fun e!3813191 () Bool)

(assert (=> d!1967560 e!3813191))

(declare-fun res!2586219 () Bool)

(assert (=> d!1967560 (=> (not res!2586219) (not e!3813191))))

(declare-fun lt!2351738 () List!64867)

(declare-fun noDuplicate!2022 (List!64867) Bool)

(assert (=> d!1967560 (= res!2586219 (noDuplicate!2022 lt!2351738))))

(declare-fun choose!46514 ((InoxSet Context!11146)) List!64867)

(assert (=> d!1967560 (= lt!2351738 (choose!46514 lt!2351624))))

(assert (=> d!1967560 (= (toList!9973 lt!2351624) lt!2351738)))

(declare-fun b!6269420 () Bool)

(declare-fun content!12159 (List!64867) (InoxSet Context!11146))

(assert (=> b!6269420 (= e!3813191 (= (content!12159 lt!2351738) lt!2351624))))

(assert (= (and d!1967560 res!2586219) b!6269420))

(declare-fun m!7091212 () Bool)

(assert (=> d!1967560 m!7091212))

(declare-fun m!7091214 () Bool)

(assert (=> d!1967560 m!7091214))

(declare-fun m!7091216 () Bool)

(assert (=> b!6269420 m!7091216))

(assert (=> b!6268880 d!1967560))

(declare-fun d!1967572 () Bool)

(declare-fun lt!2351739 () Regex!16189)

(assert (=> d!1967572 (validRegex!7925 lt!2351739)))

(assert (=> d!1967572 (= lt!2351739 (generalisedUnion!2033 (unfocusZipperList!1610 zl!343)))))

(assert (=> d!1967572 (= (unfocusZipper!1931 zl!343) lt!2351739)))

(declare-fun bs!1565297 () Bool)

(assert (= bs!1565297 d!1967572))

(declare-fun m!7091224 () Bool)

(assert (=> bs!1565297 m!7091224))

(assert (=> bs!1565297 m!7090676))

(assert (=> bs!1565297 m!7090676))

(assert (=> bs!1565297 m!7090678))

(assert (=> b!6268860 d!1967572))

(declare-fun d!1967576 () Bool)

(declare-fun lt!2351740 () Int)

(assert (=> d!1967576 (>= lt!2351740 0)))

(declare-fun e!3813192 () Int)

(assert (=> d!1967576 (= lt!2351740 e!3813192)))

(declare-fun c!1135969 () Bool)

(assert (=> d!1967576 (= c!1135969 ((_ is Cons!64743) zl!343))))

(assert (=> d!1967576 (= (zipperDepthTotal!342 zl!343) lt!2351740)))

(declare-fun b!6269421 () Bool)

(assert (=> b!6269421 (= e!3813192 (+ (contextDepthTotal!312 (h!71191 zl!343)) (zipperDepthTotal!342 (t!378423 zl!343))))))

(declare-fun b!6269422 () Bool)

(assert (=> b!6269422 (= e!3813192 0)))

(assert (= (and d!1967576 c!1135969) b!6269421))

(assert (= (and d!1967576 (not c!1135969)) b!6269422))

(assert (=> b!6269421 m!7090674))

(declare-fun m!7091226 () Bool)

(assert (=> b!6269421 m!7091226))

(assert (=> b!6268863 d!1967576))

(declare-fun d!1967578 () Bool)

(declare-fun lt!2351741 () Int)

(assert (=> d!1967578 (>= lt!2351741 0)))

(declare-fun e!3813193 () Int)

(assert (=> d!1967578 (= lt!2351741 e!3813193)))

(declare-fun c!1135970 () Bool)

(assert (=> d!1967578 (= c!1135970 ((_ is Cons!64743) lt!2351631))))

(assert (=> d!1967578 (= (zipperDepthTotal!342 lt!2351631) lt!2351741)))

(declare-fun b!6269423 () Bool)

(assert (=> b!6269423 (= e!3813193 (+ (contextDepthTotal!312 (h!71191 lt!2351631)) (zipperDepthTotal!342 (t!378423 lt!2351631))))))

(declare-fun b!6269424 () Bool)

(assert (=> b!6269424 (= e!3813193 0)))

(assert (= (and d!1967578 c!1135970) b!6269423))

(assert (= (and d!1967578 (not c!1135970)) b!6269424))

(declare-fun m!7091228 () Bool)

(assert (=> b!6269423 m!7091228))

(declare-fun m!7091230 () Bool)

(assert (=> b!6269423 m!7091230))

(assert (=> b!6268863 d!1967578))

(declare-fun d!1967580 () Bool)

(declare-fun c!1135971 () Bool)

(assert (=> d!1967580 (= c!1135971 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813194 () Bool)

(assert (=> d!1967580 (= (matchZipper!2201 lt!2351600 (t!378424 s!2326)) e!3813194)))

(declare-fun b!6269425 () Bool)

(assert (=> b!6269425 (= e!3813194 (nullableZipper!1959 lt!2351600))))

(declare-fun b!6269426 () Bool)

(assert (=> b!6269426 (= e!3813194 (matchZipper!2201 (derivationStepZipper!2155 lt!2351600 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967580 c!1135971) b!6269425))

(assert (= (and d!1967580 (not c!1135971)) b!6269426))

(assert (=> d!1967580 m!7091024))

(declare-fun m!7091232 () Bool)

(assert (=> b!6269425 m!7091232))

(assert (=> b!6269426 m!7091028))

(assert (=> b!6269426 m!7091028))

(declare-fun m!7091234 () Bool)

(assert (=> b!6269426 m!7091234))

(assert (=> b!6269426 m!7091032))

(assert (=> b!6269426 m!7091234))

(assert (=> b!6269426 m!7091032))

(declare-fun m!7091236 () Bool)

(assert (=> b!6269426 m!7091236))

(assert (=> b!6268862 d!1967580))

(declare-fun d!1967582 () Bool)

(declare-fun c!1135972 () Bool)

(assert (=> d!1967582 (= c!1135972 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813195 () Bool)

(assert (=> d!1967582 (= (matchZipper!2201 lt!2351597 (t!378424 s!2326)) e!3813195)))

(declare-fun b!6269427 () Bool)

(assert (=> b!6269427 (= e!3813195 (nullableZipper!1959 lt!2351597))))

(declare-fun b!6269428 () Bool)

(assert (=> b!6269428 (= e!3813195 (matchZipper!2201 (derivationStepZipper!2155 lt!2351597 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967582 c!1135972) b!6269427))

(assert (= (and d!1967582 (not c!1135972)) b!6269428))

(assert (=> d!1967582 m!7091024))

(declare-fun m!7091238 () Bool)

(assert (=> b!6269427 m!7091238))

(assert (=> b!6269428 m!7091028))

(assert (=> b!6269428 m!7091028))

(declare-fun m!7091240 () Bool)

(assert (=> b!6269428 m!7091240))

(assert (=> b!6269428 m!7091032))

(assert (=> b!6269428 m!7091240))

(assert (=> b!6269428 m!7091032))

(declare-fun m!7091242 () Bool)

(assert (=> b!6269428 m!7091242))

(assert (=> b!6268862 d!1967582))

(declare-fun d!1967584 () Bool)

(declare-fun c!1135973 () Bool)

(assert (=> d!1967584 (= c!1135973 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813198 () Bool)

(assert (=> d!1967584 (= (matchZipper!2201 lt!2351621 (t!378424 s!2326)) e!3813198)))

(declare-fun b!6269431 () Bool)

(assert (=> b!6269431 (= e!3813198 (nullableZipper!1959 lt!2351621))))

(declare-fun b!6269432 () Bool)

(assert (=> b!6269432 (= e!3813198 (matchZipper!2201 (derivationStepZipper!2155 lt!2351621 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967584 c!1135973) b!6269431))

(assert (= (and d!1967584 (not c!1135973)) b!6269432))

(assert (=> d!1967584 m!7091024))

(declare-fun m!7091244 () Bool)

(assert (=> b!6269431 m!7091244))

(assert (=> b!6269432 m!7091028))

(assert (=> b!6269432 m!7091028))

(declare-fun m!7091246 () Bool)

(assert (=> b!6269432 m!7091246))

(assert (=> b!6269432 m!7091032))

(assert (=> b!6269432 m!7091246))

(assert (=> b!6269432 m!7091032))

(declare-fun m!7091248 () Bool)

(assert (=> b!6269432 m!7091248))

(assert (=> b!6268862 d!1967584))

(declare-fun d!1967586 () Bool)

(declare-fun e!3813199 () Bool)

(assert (=> d!1967586 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351604) (t!378424 s!2326)) e!3813199)))

(declare-fun res!2586222 () Bool)

(assert (=> d!1967586 (=> res!2586222 e!3813199)))

(assert (=> d!1967586 (= res!2586222 (matchZipper!2201 lt!2351621 (t!378424 s!2326)))))

(declare-fun lt!2351744 () Unit!158087)

(assert (=> d!1967586 (= lt!2351744 (choose!46512 lt!2351621 lt!2351604 (t!378424 s!2326)))))

(assert (=> d!1967586 (= (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351621 lt!2351604 (t!378424 s!2326)) lt!2351744)))

(declare-fun b!6269433 () Bool)

(assert (=> b!6269433 (= e!3813199 (matchZipper!2201 lt!2351604 (t!378424 s!2326)))))

(assert (= (and d!1967586 (not res!2586222)) b!6269433))

(declare-fun m!7091250 () Bool)

(assert (=> d!1967586 m!7091250))

(assert (=> d!1967586 m!7090780))

(declare-fun m!7091252 () Bool)

(assert (=> d!1967586 m!7091252))

(assert (=> b!6269433 m!7090760))

(assert (=> b!6268862 d!1967586))

(declare-fun bs!1565310 () Bool)

(declare-fun b!6269515 () Bool)

(assert (= bs!1565310 (and b!6269515 b!6268871)))

(declare-fun lambda!343393 () Int)

(assert (=> bs!1565310 (not (= lambda!343393 lambda!343317))))

(assert (=> bs!1565310 (not (= lambda!343393 lambda!343318))))

(assert (=> b!6269515 true))

(assert (=> b!6269515 true))

(declare-fun bs!1565311 () Bool)

(declare-fun b!6269521 () Bool)

(assert (= bs!1565311 (and b!6269521 b!6268871)))

(declare-fun lambda!343394 () Int)

(assert (=> bs!1565311 (not (= lambda!343394 lambda!343317))))

(assert (=> bs!1565311 (= lambda!343394 lambda!343318)))

(declare-fun bs!1565312 () Bool)

(assert (= bs!1565312 (and b!6269521 b!6269515)))

(assert (=> bs!1565312 (not (= lambda!343394 lambda!343393))))

(assert (=> b!6269521 true))

(assert (=> b!6269521 true))

(declare-fun b!6269513 () Bool)

(declare-fun e!3813250 () Bool)

(declare-fun e!3813249 () Bool)

(assert (=> b!6269513 (= e!3813250 e!3813249)))

(declare-fun res!2586250 () Bool)

(assert (=> b!6269513 (= res!2586250 (matchRSpec!3290 (regOne!32891 r!7292) s!2326))))

(assert (=> b!6269513 (=> res!2586250 e!3813249)))

(declare-fun b!6269514 () Bool)

(declare-fun e!3813252 () Bool)

(declare-fun call!530111 () Bool)

(assert (=> b!6269514 (= e!3813252 call!530111)))

(declare-fun bm!530105 () Bool)

(assert (=> bm!530105 (= call!530111 (isEmpty!36777 s!2326))))

(declare-fun d!1967588 () Bool)

(declare-fun c!1136004 () Bool)

(assert (=> d!1967588 (= c!1136004 ((_ is EmptyExpr!16189) r!7292))))

(assert (=> d!1967588 (= (matchRSpec!3290 r!7292 s!2326) e!3813252)))

(declare-fun c!1136001 () Bool)

(declare-fun call!530110 () Bool)

(declare-fun bm!530106 () Bool)

(assert (=> bm!530106 (= call!530110 (Exists!3259 (ite c!1136001 lambda!343393 lambda!343394)))))

(declare-fun e!3813246 () Bool)

(assert (=> b!6269515 (= e!3813246 call!530110)))

(declare-fun b!6269516 () Bool)

(assert (=> b!6269516 (= e!3813249 (matchRSpec!3290 (regTwo!32891 r!7292) s!2326))))

(declare-fun b!6269517 () Bool)

(declare-fun e!3813251 () Bool)

(assert (=> b!6269517 (= e!3813252 e!3813251)))

(declare-fun res!2586248 () Bool)

(assert (=> b!6269517 (= res!2586248 (not ((_ is EmptyLang!16189) r!7292)))))

(assert (=> b!6269517 (=> (not res!2586248) (not e!3813251))))

(declare-fun b!6269518 () Bool)

(declare-fun e!3813248 () Bool)

(assert (=> b!6269518 (= e!3813248 (= s!2326 (Cons!64744 (c!1135772 r!7292) Nil!64744)))))

(declare-fun b!6269519 () Bool)

(declare-fun res!2586249 () Bool)

(assert (=> b!6269519 (=> res!2586249 e!3813246)))

(assert (=> b!6269519 (= res!2586249 call!530111)))

(declare-fun e!3813247 () Bool)

(assert (=> b!6269519 (= e!3813247 e!3813246)))

(declare-fun b!6269520 () Bool)

(assert (=> b!6269520 (= e!3813250 e!3813247)))

(assert (=> b!6269520 (= c!1136001 ((_ is Star!16189) r!7292))))

(assert (=> b!6269521 (= e!3813247 call!530110)))

(declare-fun b!6269522 () Bool)

(declare-fun c!1136002 () Bool)

(assert (=> b!6269522 (= c!1136002 ((_ is ElementMatch!16189) r!7292))))

(assert (=> b!6269522 (= e!3813251 e!3813248)))

(declare-fun b!6269523 () Bool)

(declare-fun c!1136003 () Bool)

(assert (=> b!6269523 (= c!1136003 ((_ is Union!16189) r!7292))))

(assert (=> b!6269523 (= e!3813248 e!3813250)))

(assert (= (and d!1967588 c!1136004) b!6269514))

(assert (= (and d!1967588 (not c!1136004)) b!6269517))

(assert (= (and b!6269517 res!2586248) b!6269522))

(assert (= (and b!6269522 c!1136002) b!6269518))

(assert (= (and b!6269522 (not c!1136002)) b!6269523))

(assert (= (and b!6269523 c!1136003) b!6269513))

(assert (= (and b!6269523 (not c!1136003)) b!6269520))

(assert (= (and b!6269513 (not res!2586250)) b!6269516))

(assert (= (and b!6269520 c!1136001) b!6269519))

(assert (= (and b!6269520 (not c!1136001)) b!6269521))

(assert (= (and b!6269519 (not res!2586249)) b!6269515))

(assert (= (or b!6269515 b!6269521) bm!530106))

(assert (= (or b!6269514 b!6269519) bm!530105))

(declare-fun m!7091302 () Bool)

(assert (=> b!6269513 m!7091302))

(declare-fun m!7091304 () Bool)

(assert (=> bm!530105 m!7091304))

(declare-fun m!7091306 () Bool)

(assert (=> bm!530106 m!7091306))

(declare-fun m!7091308 () Bool)

(assert (=> b!6269516 m!7091308))

(assert (=> b!6268865 d!1967588))

(declare-fun b!6269575 () Bool)

(declare-fun e!3813281 () Bool)

(declare-fun derivativeStep!4898 (Regex!16189 C!32648) Regex!16189)

(assert (=> b!6269575 (= e!3813281 (matchR!8372 (derivativeStep!4898 r!7292 (head!12878 s!2326)) (tail!11963 s!2326)))))

(declare-fun b!6269576 () Bool)

(declare-fun e!3813282 () Bool)

(declare-fun e!3813286 () Bool)

(assert (=> b!6269576 (= e!3813282 e!3813286)))

(declare-fun res!2586279 () Bool)

(assert (=> b!6269576 (=> (not res!2586279) (not e!3813286))))

(declare-fun lt!2351764 () Bool)

(assert (=> b!6269576 (= res!2586279 (not lt!2351764))))

(declare-fun b!6269577 () Bool)

(declare-fun res!2586274 () Bool)

(assert (=> b!6269577 (=> res!2586274 e!3813282)))

(assert (=> b!6269577 (= res!2586274 (not ((_ is ElementMatch!16189) r!7292)))))

(declare-fun e!3813287 () Bool)

(assert (=> b!6269577 (= e!3813287 e!3813282)))

(declare-fun b!6269578 () Bool)

(declare-fun e!3813285 () Bool)

(assert (=> b!6269578 (= e!3813285 e!3813287)))

(declare-fun c!1136022 () Bool)

(assert (=> b!6269578 (= c!1136022 ((_ is EmptyLang!16189) r!7292))))

(declare-fun b!6269579 () Bool)

(declare-fun call!530114 () Bool)

(assert (=> b!6269579 (= e!3813285 (= lt!2351764 call!530114))))

(declare-fun b!6269581 () Bool)

(declare-fun res!2586272 () Bool)

(declare-fun e!3813284 () Bool)

(assert (=> b!6269581 (=> res!2586272 e!3813284)))

(assert (=> b!6269581 (= res!2586272 (not (isEmpty!36777 (tail!11963 s!2326))))))

(declare-fun bm!530109 () Bool)

(assert (=> bm!530109 (= call!530114 (isEmpty!36777 s!2326))))

(declare-fun b!6269582 () Bool)

(declare-fun res!2586277 () Bool)

(assert (=> b!6269582 (=> res!2586277 e!3813282)))

(declare-fun e!3813283 () Bool)

(assert (=> b!6269582 (= res!2586277 e!3813283)))

(declare-fun res!2586275 () Bool)

(assert (=> b!6269582 (=> (not res!2586275) (not e!3813283))))

(assert (=> b!6269582 (= res!2586275 lt!2351764)))

(declare-fun b!6269583 () Bool)

(assert (=> b!6269583 (= e!3813281 (nullable!6182 r!7292))))

(declare-fun b!6269584 () Bool)

(assert (=> b!6269584 (= e!3813284 (not (= (head!12878 s!2326) (c!1135772 r!7292))))))

(declare-fun b!6269585 () Bool)

(declare-fun res!2586276 () Bool)

(assert (=> b!6269585 (=> (not res!2586276) (not e!3813283))))

(assert (=> b!6269585 (= res!2586276 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun b!6269586 () Bool)

(assert (=> b!6269586 (= e!3813286 e!3813284)))

(declare-fun res!2586273 () Bool)

(assert (=> b!6269586 (=> res!2586273 e!3813284)))

(assert (=> b!6269586 (= res!2586273 call!530114)))

(declare-fun b!6269580 () Bool)

(assert (=> b!6269580 (= e!3813287 (not lt!2351764))))

(declare-fun d!1967600 () Bool)

(assert (=> d!1967600 e!3813285))

(declare-fun c!1136021 () Bool)

(assert (=> d!1967600 (= c!1136021 ((_ is EmptyExpr!16189) r!7292))))

(assert (=> d!1967600 (= lt!2351764 e!3813281)))

(declare-fun c!1136023 () Bool)

(assert (=> d!1967600 (= c!1136023 (isEmpty!36777 s!2326))))

(assert (=> d!1967600 (validRegex!7925 r!7292)))

(assert (=> d!1967600 (= (matchR!8372 r!7292 s!2326) lt!2351764)))

(declare-fun b!6269587 () Bool)

(declare-fun res!2586278 () Bool)

(assert (=> b!6269587 (=> (not res!2586278) (not e!3813283))))

(assert (=> b!6269587 (= res!2586278 (not call!530114))))

(declare-fun b!6269588 () Bool)

(assert (=> b!6269588 (= e!3813283 (= (head!12878 s!2326) (c!1135772 r!7292)))))

(assert (= (and d!1967600 c!1136023) b!6269583))

(assert (= (and d!1967600 (not c!1136023)) b!6269575))

(assert (= (and d!1967600 c!1136021) b!6269579))

(assert (= (and d!1967600 (not c!1136021)) b!6269578))

(assert (= (and b!6269578 c!1136022) b!6269580))

(assert (= (and b!6269578 (not c!1136022)) b!6269577))

(assert (= (and b!6269577 (not res!2586274)) b!6269582))

(assert (= (and b!6269582 res!2586275) b!6269587))

(assert (= (and b!6269587 res!2586278) b!6269585))

(assert (= (and b!6269585 res!2586276) b!6269588))

(assert (= (and b!6269582 (not res!2586277)) b!6269576))

(assert (= (and b!6269576 res!2586279) b!6269586))

(assert (= (and b!6269586 (not res!2586273)) b!6269581))

(assert (= (and b!6269581 (not res!2586272)) b!6269584))

(assert (= (or b!6269579 b!6269586 b!6269587) bm!530109))

(assert (=> d!1967600 m!7091304))

(assert (=> d!1967600 m!7090762))

(declare-fun m!7091370 () Bool)

(assert (=> b!6269584 m!7091370))

(declare-fun m!7091372 () Bool)

(assert (=> b!6269585 m!7091372))

(assert (=> b!6269585 m!7091372))

(declare-fun m!7091374 () Bool)

(assert (=> b!6269585 m!7091374))

(declare-fun m!7091376 () Bool)

(assert (=> b!6269583 m!7091376))

(assert (=> b!6269581 m!7091372))

(assert (=> b!6269581 m!7091372))

(assert (=> b!6269581 m!7091374))

(assert (=> b!6269575 m!7091370))

(assert (=> b!6269575 m!7091370))

(declare-fun m!7091378 () Bool)

(assert (=> b!6269575 m!7091378))

(assert (=> b!6269575 m!7091372))

(assert (=> b!6269575 m!7091378))

(assert (=> b!6269575 m!7091372))

(declare-fun m!7091380 () Bool)

(assert (=> b!6269575 m!7091380))

(assert (=> bm!530109 m!7091304))

(assert (=> b!6269588 m!7091370))

(assert (=> b!6268865 d!1967600))

(declare-fun d!1967632 () Bool)

(assert (=> d!1967632 (= (matchR!8372 r!7292 s!2326) (matchRSpec!3290 r!7292 s!2326))))

(declare-fun lt!2351772 () Unit!158087)

(declare-fun choose!46515 (Regex!16189 List!64868) Unit!158087)

(assert (=> d!1967632 (= lt!2351772 (choose!46515 r!7292 s!2326))))

(assert (=> d!1967632 (validRegex!7925 r!7292)))

(assert (=> d!1967632 (= (mainMatchTheorem!3290 r!7292 s!2326) lt!2351772)))

(declare-fun bs!1565327 () Bool)

(assert (= bs!1565327 d!1967632))

(assert (=> bs!1565327 m!7090770))

(assert (=> bs!1565327 m!7090768))

(declare-fun m!7091420 () Bool)

(assert (=> bs!1565327 m!7091420))

(assert (=> bs!1565327 m!7090762))

(assert (=> b!6268865 d!1967632))

(declare-fun d!1967650 () Bool)

(assert (=> d!1967650 (= (nullable!6182 (regOne!32890 (regOne!32890 r!7292))) (nullableFct!2133 (regOne!32890 (regOne!32890 r!7292))))))

(declare-fun bs!1565328 () Bool)

(assert (= bs!1565328 d!1967650))

(declare-fun m!7091422 () Bool)

(assert (=> bs!1565328 m!7091422))

(assert (=> b!6268846 d!1967650))

(declare-fun d!1967652 () Bool)

(declare-fun c!1136031 () Bool)

(assert (=> d!1967652 (= c!1136031 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813303 () Bool)

(assert (=> d!1967652 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (t!378424 s!2326)) e!3813303)))

(declare-fun b!6269613 () Bool)

(assert (=> b!6269613 (= e!3813303 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326))))))

(declare-fun b!6269614 () Bool)

(assert (=> b!6269614 (= e!3813303 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967652 c!1136031) b!6269613))

(assert (= (and d!1967652 (not c!1136031)) b!6269614))

(assert (=> d!1967652 m!7091024))

(assert (=> b!6269613 m!7090774))

(declare-fun m!7091424 () Bool)

(assert (=> b!6269613 m!7091424))

(assert (=> b!6269614 m!7091028))

(assert (=> b!6269614 m!7090774))

(assert (=> b!6269614 m!7091028))

(declare-fun m!7091426 () Bool)

(assert (=> b!6269614 m!7091426))

(assert (=> b!6269614 m!7091032))

(assert (=> b!6269614 m!7091426))

(assert (=> b!6269614 m!7091032))

(declare-fun m!7091428 () Bool)

(assert (=> b!6269614 m!7091428))

(assert (=> b!6268866 d!1967652))

(declare-fun bs!1565329 () Bool)

(declare-fun d!1967654 () Bool)

(assert (= bs!1565329 (and d!1967654 b!6268873)))

(declare-fun lambda!343399 () Int)

(assert (=> bs!1565329 (= lambda!343399 lambda!343319)))

(assert (=> d!1967654 true))

(assert (=> d!1967654 (= (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (flatMap!1694 lt!2351624 lambda!343399))))

(declare-fun bs!1565330 () Bool)

(assert (= bs!1565330 d!1967654))

(declare-fun m!7091434 () Bool)

(assert (=> bs!1565330 m!7091434))

(assert (=> b!6268866 d!1967654))

(declare-fun d!1967656 () Bool)

(declare-fun c!1136034 () Bool)

(assert (=> d!1967656 (= c!1136034 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813320 () Bool)

(assert (=> d!1967656 (= (matchZipper!2201 lt!2351604 (t!378424 s!2326)) e!3813320)))

(declare-fun b!6269641 () Bool)

(assert (=> b!6269641 (= e!3813320 (nullableZipper!1959 lt!2351604))))

(declare-fun b!6269642 () Bool)

(assert (=> b!6269642 (= e!3813320 (matchZipper!2201 (derivationStepZipper!2155 lt!2351604 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967656 c!1136034) b!6269641))

(assert (= (and d!1967656 (not c!1136034)) b!6269642))

(assert (=> d!1967656 m!7091024))

(declare-fun m!7091436 () Bool)

(assert (=> b!6269641 m!7091436))

(assert (=> b!6269642 m!7091028))

(assert (=> b!6269642 m!7091028))

(declare-fun m!7091438 () Bool)

(assert (=> b!6269642 m!7091438))

(assert (=> b!6269642 m!7091032))

(assert (=> b!6269642 m!7091438))

(assert (=> b!6269642 m!7091032))

(declare-fun m!7091440 () Bool)

(assert (=> b!6269642 m!7091440))

(assert (=> b!6268864 d!1967656))

(declare-fun bs!1565331 () Bool)

(declare-fun d!1967658 () Bool)

(assert (= bs!1565331 (and d!1967658 d!1967528)))

(declare-fun lambda!343400 () Int)

(assert (=> bs!1565331 (= lambda!343400 lambda!343380)))

(declare-fun bs!1565332 () Bool)

(assert (= bs!1565332 (and d!1967658 d!1967524)))

(assert (=> bs!1565332 (= lambda!343400 lambda!343365)))

(declare-fun bs!1565333 () Bool)

(assert (= bs!1565333 (and d!1967658 d!1967514)))

(assert (=> bs!1565333 (= lambda!343400 lambda!343358)))

(declare-fun bs!1565334 () Bool)

(assert (= bs!1565334 (and d!1967658 d!1967540)))

(assert (=> bs!1565334 (= lambda!343400 lambda!343381)))

(declare-fun bs!1565335 () Bool)

(assert (= bs!1565335 (and d!1967658 d!1967516)))

(assert (=> bs!1565335 (= lambda!343400 lambda!343362)))

(declare-fun b!6269649 () Bool)

(declare-fun e!3813325 () Regex!16189)

(assert (=> b!6269649 (= e!3813325 EmptyExpr!16189)))

(declare-fun b!6269650 () Bool)

(declare-fun e!3813323 () Bool)

(declare-fun e!3813321 () Bool)

(assert (=> b!6269650 (= e!3813323 e!3813321)))

(declare-fun c!1136037 () Bool)

(assert (=> b!6269650 (= c!1136037 (isEmpty!36775 lt!2351608))))

(declare-fun b!6269651 () Bool)

(declare-fun e!3813322 () Regex!16189)

(assert (=> b!6269651 (= e!3813322 e!3813325)))

(declare-fun c!1136038 () Bool)

(assert (=> b!6269651 (= c!1136038 ((_ is Cons!64742) lt!2351608))))

(declare-fun b!6269652 () Bool)

(declare-fun lt!2351773 () Regex!16189)

(assert (=> b!6269652 (= e!3813321 (isEmptyExpr!1595 lt!2351773))))

(declare-fun b!6269653 () Bool)

(declare-fun e!3813324 () Bool)

(assert (=> b!6269653 (= e!3813324 (isConcat!1118 lt!2351773))))

(declare-fun b!6269654 () Bool)

(assert (=> b!6269654 (= e!3813321 e!3813324)))

(declare-fun c!1136036 () Bool)

(assert (=> b!6269654 (= c!1136036 (isEmpty!36775 (tail!11964 lt!2351608)))))

(declare-fun b!6269656 () Bool)

(assert (=> b!6269656 (= e!3813324 (= lt!2351773 (head!12879 lt!2351608)))))

(declare-fun b!6269657 () Bool)

(declare-fun e!3813326 () Bool)

(assert (=> b!6269657 (= e!3813326 (isEmpty!36775 (t!378422 lt!2351608)))))

(declare-fun b!6269658 () Bool)

(assert (=> b!6269658 (= e!3813325 (Concat!25034 (h!71190 lt!2351608) (generalisedConcat!1786 (t!378422 lt!2351608))))))

(assert (=> d!1967658 e!3813323))

(declare-fun res!2586286 () Bool)

(assert (=> d!1967658 (=> (not res!2586286) (not e!3813323))))

(assert (=> d!1967658 (= res!2586286 (validRegex!7925 lt!2351773))))

(assert (=> d!1967658 (= lt!2351773 e!3813322)))

(declare-fun c!1136035 () Bool)

(assert (=> d!1967658 (= c!1136035 e!3813326)))

(declare-fun res!2586287 () Bool)

(assert (=> d!1967658 (=> (not res!2586287) (not e!3813326))))

(assert (=> d!1967658 (= res!2586287 ((_ is Cons!64742) lt!2351608))))

(assert (=> d!1967658 (forall!15316 lt!2351608 lambda!343400)))

(assert (=> d!1967658 (= (generalisedConcat!1786 lt!2351608) lt!2351773)))

(declare-fun b!6269655 () Bool)

(assert (=> b!6269655 (= e!3813322 (h!71190 lt!2351608))))

(assert (= (and d!1967658 res!2586287) b!6269657))

(assert (= (and d!1967658 c!1136035) b!6269655))

(assert (= (and d!1967658 (not c!1136035)) b!6269651))

(assert (= (and b!6269651 c!1136038) b!6269658))

(assert (= (and b!6269651 (not c!1136038)) b!6269649))

(assert (= (and d!1967658 res!2586286) b!6269650))

(assert (= (and b!6269650 c!1136037) b!6269652))

(assert (= (and b!6269650 (not c!1136037)) b!6269654))

(assert (= (and b!6269654 c!1136036) b!6269656))

(assert (= (and b!6269654 (not c!1136036)) b!6269653))

(declare-fun m!7091442 () Bool)

(assert (=> d!1967658 m!7091442))

(declare-fun m!7091444 () Bool)

(assert (=> d!1967658 m!7091444))

(declare-fun m!7091446 () Bool)

(assert (=> b!6269658 m!7091446))

(declare-fun m!7091448 () Bool)

(assert (=> b!6269656 m!7091448))

(declare-fun m!7091450 () Bool)

(assert (=> b!6269650 m!7091450))

(declare-fun m!7091452 () Bool)

(assert (=> b!6269657 m!7091452))

(declare-fun m!7091454 () Bool)

(assert (=> b!6269653 m!7091454))

(declare-fun m!7091456 () Bool)

(assert (=> b!6269654 m!7091456))

(assert (=> b!6269654 m!7091456))

(declare-fun m!7091458 () Bool)

(assert (=> b!6269654 m!7091458))

(declare-fun m!7091460 () Bool)

(assert (=> b!6269652 m!7091460))

(assert (=> b!6268845 d!1967658))

(declare-fun d!1967660 () Bool)

(declare-fun c!1136039 () Bool)

(assert (=> d!1967660 (= c!1136039 (isEmpty!36777 s!2326))))

(declare-fun e!3813332 () Bool)

(assert (=> d!1967660 (= (matchZipper!2201 lt!2351636 s!2326) e!3813332)))

(declare-fun b!6269679 () Bool)

(assert (=> b!6269679 (= e!3813332 (nullableZipper!1959 lt!2351636))))

(declare-fun b!6269680 () Bool)

(assert (=> b!6269680 (= e!3813332 (matchZipper!2201 (derivationStepZipper!2155 lt!2351636 (head!12878 s!2326)) (tail!11963 s!2326)))))

(assert (= (and d!1967660 c!1136039) b!6269679))

(assert (= (and d!1967660 (not c!1136039)) b!6269680))

(assert (=> d!1967660 m!7091304))

(declare-fun m!7091462 () Bool)

(assert (=> b!6269679 m!7091462))

(assert (=> b!6269680 m!7091370))

(assert (=> b!6269680 m!7091370))

(declare-fun m!7091464 () Bool)

(assert (=> b!6269680 m!7091464))

(assert (=> b!6269680 m!7091372))

(assert (=> b!6269680 m!7091464))

(assert (=> b!6269680 m!7091372))

(declare-fun m!7091466 () Bool)

(assert (=> b!6269680 m!7091466))

(assert (=> b!6268845 d!1967660))

(declare-fun bs!1565339 () Bool)

(declare-fun d!1967668 () Bool)

(assert (= bs!1565339 (and d!1967668 d!1967528)))

(declare-fun lambda!343401 () Int)

(assert (=> bs!1565339 (= lambda!343401 lambda!343380)))

(declare-fun bs!1565340 () Bool)

(assert (= bs!1565340 (and d!1967668 d!1967524)))

(assert (=> bs!1565340 (= lambda!343401 lambda!343365)))

(declare-fun bs!1565341 () Bool)

(assert (= bs!1565341 (and d!1967668 d!1967658)))

(assert (=> bs!1565341 (= lambda!343401 lambda!343400)))

(declare-fun bs!1565342 () Bool)

(assert (= bs!1565342 (and d!1967668 d!1967514)))

(assert (=> bs!1565342 (= lambda!343401 lambda!343358)))

(declare-fun bs!1565343 () Bool)

(assert (= bs!1565343 (and d!1967668 d!1967540)))

(assert (=> bs!1565343 (= lambda!343401 lambda!343381)))

(declare-fun bs!1565344 () Bool)

(assert (= bs!1565344 (and d!1967668 d!1967516)))

(assert (=> bs!1565344 (= lambda!343401 lambda!343362)))

(declare-fun b!6269681 () Bool)

(declare-fun e!3813337 () Regex!16189)

(assert (=> b!6269681 (= e!3813337 EmptyExpr!16189)))

(declare-fun b!6269682 () Bool)

(declare-fun e!3813335 () Bool)

(declare-fun e!3813333 () Bool)

(assert (=> b!6269682 (= e!3813335 e!3813333)))

(declare-fun c!1136042 () Bool)

(assert (=> b!6269682 (= c!1136042 (isEmpty!36775 lt!2351603))))

(declare-fun b!6269683 () Bool)

(declare-fun e!3813334 () Regex!16189)

(assert (=> b!6269683 (= e!3813334 e!3813337)))

(declare-fun c!1136043 () Bool)

(assert (=> b!6269683 (= c!1136043 ((_ is Cons!64742) lt!2351603))))

(declare-fun b!6269684 () Bool)

(declare-fun lt!2351774 () Regex!16189)

(assert (=> b!6269684 (= e!3813333 (isEmptyExpr!1595 lt!2351774))))

(declare-fun b!6269685 () Bool)

(declare-fun e!3813336 () Bool)

(assert (=> b!6269685 (= e!3813336 (isConcat!1118 lt!2351774))))

(declare-fun b!6269686 () Bool)

(assert (=> b!6269686 (= e!3813333 e!3813336)))

(declare-fun c!1136041 () Bool)

(assert (=> b!6269686 (= c!1136041 (isEmpty!36775 (tail!11964 lt!2351603)))))

(declare-fun b!6269688 () Bool)

(assert (=> b!6269688 (= e!3813336 (= lt!2351774 (head!12879 lt!2351603)))))

(declare-fun b!6269689 () Bool)

(declare-fun e!3813338 () Bool)

(assert (=> b!6269689 (= e!3813338 (isEmpty!36775 (t!378422 lt!2351603)))))

(declare-fun b!6269690 () Bool)

(assert (=> b!6269690 (= e!3813337 (Concat!25034 (h!71190 lt!2351603) (generalisedConcat!1786 (t!378422 lt!2351603))))))

(assert (=> d!1967668 e!3813335))

(declare-fun res!2586288 () Bool)

(assert (=> d!1967668 (=> (not res!2586288) (not e!3813335))))

(assert (=> d!1967668 (= res!2586288 (validRegex!7925 lt!2351774))))

(assert (=> d!1967668 (= lt!2351774 e!3813334)))

(declare-fun c!1136040 () Bool)

(assert (=> d!1967668 (= c!1136040 e!3813338)))

(declare-fun res!2586289 () Bool)

(assert (=> d!1967668 (=> (not res!2586289) (not e!3813338))))

(assert (=> d!1967668 (= res!2586289 ((_ is Cons!64742) lt!2351603))))

(assert (=> d!1967668 (forall!15316 lt!2351603 lambda!343401)))

(assert (=> d!1967668 (= (generalisedConcat!1786 lt!2351603) lt!2351774)))

(declare-fun b!6269687 () Bool)

(assert (=> b!6269687 (= e!3813334 (h!71190 lt!2351603))))

(assert (= (and d!1967668 res!2586289) b!6269689))

(assert (= (and d!1967668 c!1136040) b!6269687))

(assert (= (and d!1967668 (not c!1136040)) b!6269683))

(assert (= (and b!6269683 c!1136043) b!6269690))

(assert (= (and b!6269683 (not c!1136043)) b!6269681))

(assert (= (and d!1967668 res!2586288) b!6269682))

(assert (= (and b!6269682 c!1136042) b!6269684))

(assert (= (and b!6269682 (not c!1136042)) b!6269686))

(assert (= (and b!6269686 c!1136041) b!6269688))

(assert (= (and b!6269686 (not c!1136041)) b!6269685))

(declare-fun m!7091468 () Bool)

(assert (=> d!1967668 m!7091468))

(declare-fun m!7091470 () Bool)

(assert (=> d!1967668 m!7091470))

(declare-fun m!7091472 () Bool)

(assert (=> b!6269690 m!7091472))

(declare-fun m!7091474 () Bool)

(assert (=> b!6269688 m!7091474))

(declare-fun m!7091476 () Bool)

(assert (=> b!6269682 m!7091476))

(declare-fun m!7091478 () Bool)

(assert (=> b!6269689 m!7091478))

(declare-fun m!7091480 () Bool)

(assert (=> b!6269685 m!7091480))

(declare-fun m!7091482 () Bool)

(assert (=> b!6269686 m!7091482))

(assert (=> b!6269686 m!7091482))

(declare-fun m!7091484 () Bool)

(assert (=> b!6269686 m!7091484))

(declare-fun m!7091486 () Bool)

(assert (=> b!6269684 m!7091486))

(assert (=> b!6268845 d!1967668))

(declare-fun b!6269691 () Bool)

(declare-fun e!3813339 () Bool)

(assert (=> b!6269691 (= e!3813339 (matchR!8372 (derivativeStep!4898 lt!2351615 (head!12878 s!2326)) (tail!11963 s!2326)))))

(declare-fun b!6269692 () Bool)

(declare-fun e!3813340 () Bool)

(declare-fun e!3813344 () Bool)

(assert (=> b!6269692 (= e!3813340 e!3813344)))

(declare-fun res!2586297 () Bool)

(assert (=> b!6269692 (=> (not res!2586297) (not e!3813344))))

(declare-fun lt!2351775 () Bool)

(assert (=> b!6269692 (= res!2586297 (not lt!2351775))))

(declare-fun b!6269693 () Bool)

(declare-fun res!2586292 () Bool)

(assert (=> b!6269693 (=> res!2586292 e!3813340)))

(assert (=> b!6269693 (= res!2586292 (not ((_ is ElementMatch!16189) lt!2351615)))))

(declare-fun e!3813345 () Bool)

(assert (=> b!6269693 (= e!3813345 e!3813340)))

(declare-fun b!6269694 () Bool)

(declare-fun e!3813343 () Bool)

(assert (=> b!6269694 (= e!3813343 e!3813345)))

(declare-fun c!1136045 () Bool)

(assert (=> b!6269694 (= c!1136045 ((_ is EmptyLang!16189) lt!2351615))))

(declare-fun b!6269695 () Bool)

(declare-fun call!530118 () Bool)

(assert (=> b!6269695 (= e!3813343 (= lt!2351775 call!530118))))

(declare-fun b!6269697 () Bool)

(declare-fun res!2586290 () Bool)

(declare-fun e!3813342 () Bool)

(assert (=> b!6269697 (=> res!2586290 e!3813342)))

(assert (=> b!6269697 (= res!2586290 (not (isEmpty!36777 (tail!11963 s!2326))))))

(declare-fun bm!530113 () Bool)

(assert (=> bm!530113 (= call!530118 (isEmpty!36777 s!2326))))

(declare-fun b!6269698 () Bool)

(declare-fun res!2586295 () Bool)

(assert (=> b!6269698 (=> res!2586295 e!3813340)))

(declare-fun e!3813341 () Bool)

(assert (=> b!6269698 (= res!2586295 e!3813341)))

(declare-fun res!2586293 () Bool)

(assert (=> b!6269698 (=> (not res!2586293) (not e!3813341))))

(assert (=> b!6269698 (= res!2586293 lt!2351775)))

(declare-fun b!6269699 () Bool)

(assert (=> b!6269699 (= e!3813339 (nullable!6182 lt!2351615))))

(declare-fun b!6269700 () Bool)

(assert (=> b!6269700 (= e!3813342 (not (= (head!12878 s!2326) (c!1135772 lt!2351615))))))

(declare-fun b!6269701 () Bool)

(declare-fun res!2586294 () Bool)

(assert (=> b!6269701 (=> (not res!2586294) (not e!3813341))))

(assert (=> b!6269701 (= res!2586294 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun b!6269702 () Bool)

(assert (=> b!6269702 (= e!3813344 e!3813342)))

(declare-fun res!2586291 () Bool)

(assert (=> b!6269702 (=> res!2586291 e!3813342)))

(assert (=> b!6269702 (= res!2586291 call!530118)))

(declare-fun b!6269696 () Bool)

(assert (=> b!6269696 (= e!3813345 (not lt!2351775))))

(declare-fun d!1967670 () Bool)

(assert (=> d!1967670 e!3813343))

(declare-fun c!1136044 () Bool)

(assert (=> d!1967670 (= c!1136044 ((_ is EmptyExpr!16189) lt!2351615))))

(assert (=> d!1967670 (= lt!2351775 e!3813339)))

(declare-fun c!1136046 () Bool)

(assert (=> d!1967670 (= c!1136046 (isEmpty!36777 s!2326))))

(assert (=> d!1967670 (validRegex!7925 lt!2351615)))

(assert (=> d!1967670 (= (matchR!8372 lt!2351615 s!2326) lt!2351775)))

(declare-fun b!6269703 () Bool)

(declare-fun res!2586296 () Bool)

(assert (=> b!6269703 (=> (not res!2586296) (not e!3813341))))

(assert (=> b!6269703 (= res!2586296 (not call!530118))))

(declare-fun b!6269704 () Bool)

(assert (=> b!6269704 (= e!3813341 (= (head!12878 s!2326) (c!1135772 lt!2351615)))))

(assert (= (and d!1967670 c!1136046) b!6269699))

(assert (= (and d!1967670 (not c!1136046)) b!6269691))

(assert (= (and d!1967670 c!1136044) b!6269695))

(assert (= (and d!1967670 (not c!1136044)) b!6269694))

(assert (= (and b!6269694 c!1136045) b!6269696))

(assert (= (and b!6269694 (not c!1136045)) b!6269693))

(assert (= (and b!6269693 (not res!2586292)) b!6269698))

(assert (= (and b!6269698 res!2586293) b!6269703))

(assert (= (and b!6269703 res!2586296) b!6269701))

(assert (= (and b!6269701 res!2586294) b!6269704))

(assert (= (and b!6269698 (not res!2586295)) b!6269692))

(assert (= (and b!6269692 res!2586297) b!6269702))

(assert (= (and b!6269702 (not res!2586291)) b!6269697))

(assert (= (and b!6269697 (not res!2586290)) b!6269700))

(assert (= (or b!6269695 b!6269702 b!6269703) bm!530113))

(assert (=> d!1967670 m!7091304))

(declare-fun m!7091488 () Bool)

(assert (=> d!1967670 m!7091488))

(assert (=> b!6269700 m!7091370))

(assert (=> b!6269701 m!7091372))

(assert (=> b!6269701 m!7091372))

(assert (=> b!6269701 m!7091374))

(declare-fun m!7091490 () Bool)

(assert (=> b!6269699 m!7091490))

(assert (=> b!6269697 m!7091372))

(assert (=> b!6269697 m!7091372))

(assert (=> b!6269697 m!7091374))

(assert (=> b!6269691 m!7091370))

(assert (=> b!6269691 m!7091370))

(declare-fun m!7091492 () Bool)

(assert (=> b!6269691 m!7091492))

(assert (=> b!6269691 m!7091372))

(assert (=> b!6269691 m!7091492))

(assert (=> b!6269691 m!7091372))

(declare-fun m!7091494 () Bool)

(assert (=> b!6269691 m!7091494))

(assert (=> bm!530113 m!7091304))

(assert (=> b!6269704 m!7091370))

(assert (=> b!6268845 d!1967670))

(declare-fun b!6269705 () Bool)

(declare-fun e!3813351 () Bool)

(declare-fun e!3813348 () Bool)

(assert (=> b!6269705 (= e!3813351 e!3813348)))

(declare-fun c!1136048 () Bool)

(assert (=> b!6269705 (= c!1136048 ((_ is Star!16189) lt!2351598))))

(declare-fun d!1967672 () Bool)

(declare-fun res!2586301 () Bool)

(assert (=> d!1967672 (=> res!2586301 e!3813351)))

(assert (=> d!1967672 (= res!2586301 ((_ is ElementMatch!16189) lt!2351598))))

(assert (=> d!1967672 (= (validRegex!7925 lt!2351598) e!3813351)))

(declare-fun bm!530114 () Bool)

(declare-fun call!530119 () Bool)

(declare-fun call!530120 () Bool)

(assert (=> bm!530114 (= call!530119 call!530120)))

(declare-fun b!6269706 () Bool)

(declare-fun e!3813352 () Bool)

(assert (=> b!6269706 (= e!3813348 e!3813352)))

(declare-fun c!1136047 () Bool)

(assert (=> b!6269706 (= c!1136047 ((_ is Union!16189) lt!2351598))))

(declare-fun b!6269707 () Bool)

(declare-fun e!3813350 () Bool)

(declare-fun e!3813347 () Bool)

(assert (=> b!6269707 (= e!3813350 e!3813347)))

(declare-fun res!2586299 () Bool)

(assert (=> b!6269707 (=> (not res!2586299) (not e!3813347))))

(declare-fun call!530121 () Bool)

(assert (=> b!6269707 (= res!2586299 call!530121)))

(declare-fun b!6269708 () Bool)

(declare-fun e!3813349 () Bool)

(assert (=> b!6269708 (= e!3813349 call!530120)))

(declare-fun b!6269709 () Bool)

(declare-fun res!2586298 () Bool)

(declare-fun e!3813346 () Bool)

(assert (=> b!6269709 (=> (not res!2586298) (not e!3813346))))

(assert (=> b!6269709 (= res!2586298 call!530121)))

(assert (=> b!6269709 (= e!3813352 e!3813346)))

(declare-fun bm!530115 () Bool)

(assert (=> bm!530115 (= call!530121 (validRegex!7925 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))

(declare-fun b!6269710 () Bool)

(declare-fun res!2586300 () Bool)

(assert (=> b!6269710 (=> res!2586300 e!3813350)))

(assert (=> b!6269710 (= res!2586300 (not ((_ is Concat!25034) lt!2351598)))))

(assert (=> b!6269710 (= e!3813352 e!3813350)))

(declare-fun b!6269711 () Bool)

(assert (=> b!6269711 (= e!3813347 call!530119)))

(declare-fun b!6269712 () Bool)

(assert (=> b!6269712 (= e!3813346 call!530119)))

(declare-fun b!6269713 () Bool)

(assert (=> b!6269713 (= e!3813348 e!3813349)))

(declare-fun res!2586302 () Bool)

(assert (=> b!6269713 (= res!2586302 (not (nullable!6182 (reg!16518 lt!2351598))))))

(assert (=> b!6269713 (=> (not res!2586302) (not e!3813349))))

(declare-fun bm!530116 () Bool)

(assert (=> bm!530116 (= call!530120 (validRegex!7925 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))

(assert (= (and d!1967672 (not res!2586301)) b!6269705))

(assert (= (and b!6269705 c!1136048) b!6269713))

(assert (= (and b!6269705 (not c!1136048)) b!6269706))

(assert (= (and b!6269713 res!2586302) b!6269708))

(assert (= (and b!6269706 c!1136047) b!6269709))

(assert (= (and b!6269706 (not c!1136047)) b!6269710))

(assert (= (and b!6269709 res!2586298) b!6269712))

(assert (= (and b!6269710 (not res!2586300)) b!6269707))

(assert (= (and b!6269707 res!2586299) b!6269711))

(assert (= (or b!6269712 b!6269711) bm!530114))

(assert (= (or b!6269709 b!6269707) bm!530115))

(assert (= (or b!6269708 bm!530114) bm!530116))

(declare-fun m!7091496 () Bool)

(assert (=> bm!530115 m!7091496))

(declare-fun m!7091498 () Bool)

(assert (=> b!6269713 m!7091498))

(declare-fun m!7091500 () Bool)

(assert (=> bm!530116 m!7091500))

(assert (=> b!6268845 d!1967672))

(declare-fun d!1967674 () Bool)

(assert (=> d!1967674 (= (matchR!8372 lt!2351615 s!2326) (matchZipper!2201 lt!2351636 s!2326))))

(declare-fun lt!2351778 () Unit!158087)

(declare-fun choose!46516 ((InoxSet Context!11146) List!64867 Regex!16189 List!64868) Unit!158087)

(assert (=> d!1967674 (= lt!2351778 (choose!46516 lt!2351636 lt!2351631 lt!2351615 s!2326))))

(assert (=> d!1967674 (validRegex!7925 lt!2351615)))

(assert (=> d!1967674 (= (theoremZipperRegexEquiv!759 lt!2351636 lt!2351631 lt!2351615 s!2326) lt!2351778)))

(declare-fun bs!1565345 () Bool)

(assert (= bs!1565345 d!1967674))

(assert (=> bs!1565345 m!7090670))

(assert (=> bs!1565345 m!7090666))

(declare-fun m!7091502 () Bool)

(assert (=> bs!1565345 m!7091502))

(assert (=> bs!1565345 m!7091488))

(assert (=> b!6268845 d!1967674))

(assert (=> b!6268868 d!1967656))

(declare-fun bm!530117 () Bool)

(declare-fun call!530127 () (InoxSet Context!11146))

(declare-fun call!530123 () (InoxSet Context!11146))

(assert (=> bm!530117 (= call!530127 call!530123)))

(declare-fun c!1136050 () Bool)

(declare-fun bm!530118 () Bool)

(declare-fun c!1136051 () Bool)

(declare-fun call!530126 () List!64866)

(assert (=> bm!530118 (= call!530126 ($colon$colon!2053 (exprs!6073 lt!2351625) (ite (or c!1136051 c!1136050) (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (regTwo!32890 (regOne!32890 r!7292)))))))

(declare-fun d!1967676 () Bool)

(declare-fun c!1136049 () Bool)

(assert (=> d!1967676 (= c!1136049 (and ((_ is ElementMatch!16189) (regTwo!32890 (regOne!32890 r!7292))) (= (c!1135772 (regTwo!32890 (regOne!32890 r!7292))) (h!71192 s!2326))))))

(declare-fun e!3813358 () (InoxSet Context!11146))

(assert (=> d!1967676 (= (derivationStepZipperDown!1437 (regTwo!32890 (regOne!32890 r!7292)) lt!2351625 (h!71192 s!2326)) e!3813358)))

(declare-fun b!6269714 () Bool)

(declare-fun e!3813355 () (InoxSet Context!11146))

(declare-fun call!530122 () (InoxSet Context!11146))

(assert (=> b!6269714 (= e!3813355 ((_ map or) call!530122 call!530127))))

(declare-fun b!6269715 () Bool)

(declare-fun e!3813356 () (InoxSet Context!11146))

(assert (=> b!6269715 (= e!3813355 e!3813356)))

(assert (=> b!6269715 (= c!1136050 ((_ is Concat!25034) (regTwo!32890 (regOne!32890 r!7292))))))

(declare-fun b!6269716 () Bool)

(declare-fun e!3813357 () (InoxSet Context!11146))

(assert (=> b!6269716 (= e!3813357 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530119 () Bool)

(declare-fun call!530124 () List!64866)

(assert (=> bm!530119 (= call!530124 call!530126)))

(declare-fun b!6269717 () Bool)

(declare-fun call!530125 () (InoxSet Context!11146))

(assert (=> b!6269717 (= e!3813356 call!530125)))

(declare-fun bm!530120 () Bool)

(declare-fun c!1136053 () Bool)

(assert (=> bm!530120 (= call!530123 (derivationStepZipperDown!1437 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))) (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124)) (h!71192 s!2326)))))

(declare-fun bm!530121 () Bool)

(assert (=> bm!530121 (= call!530122 (derivationStepZipperDown!1437 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))) (ite c!1136053 lt!2351625 (Context!11147 call!530126)) (h!71192 s!2326)))))

(declare-fun b!6269718 () Bool)

(declare-fun e!3813354 () Bool)

(assert (=> b!6269718 (= e!3813354 (nullable!6182 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))))

(declare-fun b!6269719 () Bool)

(declare-fun c!1136052 () Bool)

(assert (=> b!6269719 (= c!1136052 ((_ is Star!16189) (regTwo!32890 (regOne!32890 r!7292))))))

(assert (=> b!6269719 (= e!3813356 e!3813357)))

(declare-fun b!6269720 () Bool)

(assert (=> b!6269720 (= c!1136051 e!3813354)))

(declare-fun res!2586303 () Bool)

(assert (=> b!6269720 (=> (not res!2586303) (not e!3813354))))

(assert (=> b!6269720 (= res!2586303 ((_ is Concat!25034) (regTwo!32890 (regOne!32890 r!7292))))))

(declare-fun e!3813353 () (InoxSet Context!11146))

(assert (=> b!6269720 (= e!3813353 e!3813355)))

(declare-fun b!6269721 () Bool)

(assert (=> b!6269721 (= e!3813358 (store ((as const (Array Context!11146 Bool)) false) lt!2351625 true))))

(declare-fun b!6269722 () Bool)

(assert (=> b!6269722 (= e!3813353 ((_ map or) call!530122 call!530123))))

(declare-fun b!6269723 () Bool)

(assert (=> b!6269723 (= e!3813357 call!530125)))

(declare-fun bm!530122 () Bool)

(assert (=> bm!530122 (= call!530125 call!530127)))

(declare-fun b!6269724 () Bool)

(assert (=> b!6269724 (= e!3813358 e!3813353)))

(assert (=> b!6269724 (= c!1136053 ((_ is Union!16189) (regTwo!32890 (regOne!32890 r!7292))))))

(assert (= (and d!1967676 c!1136049) b!6269721))

(assert (= (and d!1967676 (not c!1136049)) b!6269724))

(assert (= (and b!6269724 c!1136053) b!6269722))

(assert (= (and b!6269724 (not c!1136053)) b!6269720))

(assert (= (and b!6269720 res!2586303) b!6269718))

(assert (= (and b!6269720 c!1136051) b!6269714))

(assert (= (and b!6269720 (not c!1136051)) b!6269715))

(assert (= (and b!6269715 c!1136050) b!6269717))

(assert (= (and b!6269715 (not c!1136050)) b!6269719))

(assert (= (and b!6269719 c!1136052) b!6269723))

(assert (= (and b!6269719 (not c!1136052)) b!6269716))

(assert (= (or b!6269717 b!6269723) bm!530119))

(assert (= (or b!6269717 b!6269723) bm!530122))

(assert (= (or b!6269714 bm!530119) bm!530118))

(assert (= (or b!6269714 bm!530122) bm!530117))

(assert (= (or b!6269722 bm!530117) bm!530120))

(assert (= (or b!6269722 b!6269714) bm!530121))

(declare-fun m!7091504 () Bool)

(assert (=> bm!530121 m!7091504))

(assert (=> b!6269721 m!7090922))

(declare-fun m!7091506 () Bool)

(assert (=> b!6269718 m!7091506))

(declare-fun m!7091508 () Bool)

(assert (=> bm!530118 m!7091508))

(declare-fun m!7091510 () Bool)

(assert (=> bm!530120 m!7091510))

(assert (=> b!6268849 d!1967676))

(declare-fun bm!530123 () Bool)

(declare-fun call!530133 () (InoxSet Context!11146))

(declare-fun call!530129 () (InoxSet Context!11146))

(assert (=> bm!530123 (= call!530133 call!530129)))

(declare-fun bm!530124 () Bool)

(declare-fun c!1136055 () Bool)

(declare-fun c!1136056 () Bool)

(declare-fun call!530132 () List!64866)

(assert (=> bm!530124 (= call!530132 ($colon$colon!2053 (exprs!6073 lt!2351634) (ite (or c!1136056 c!1136055) (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 r!7292)))))))

(declare-fun d!1967678 () Bool)

(declare-fun c!1136054 () Bool)

(assert (=> d!1967678 (= c!1136054 (and ((_ is ElementMatch!16189) (regOne!32890 (regOne!32890 r!7292))) (= (c!1135772 (regOne!32890 (regOne!32890 r!7292))) (h!71192 s!2326))))))

(declare-fun e!3813364 () (InoxSet Context!11146))

(assert (=> d!1967678 (= (derivationStepZipperDown!1437 (regOne!32890 (regOne!32890 r!7292)) lt!2351634 (h!71192 s!2326)) e!3813364)))

(declare-fun b!6269725 () Bool)

(declare-fun e!3813361 () (InoxSet Context!11146))

(declare-fun call!530128 () (InoxSet Context!11146))

(assert (=> b!6269725 (= e!3813361 ((_ map or) call!530128 call!530133))))

(declare-fun b!6269726 () Bool)

(declare-fun e!3813362 () (InoxSet Context!11146))

(assert (=> b!6269726 (= e!3813361 e!3813362)))

(assert (=> b!6269726 (= c!1136055 ((_ is Concat!25034) (regOne!32890 (regOne!32890 r!7292))))))

(declare-fun b!6269727 () Bool)

(declare-fun e!3813363 () (InoxSet Context!11146))

(assert (=> b!6269727 (= e!3813363 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530125 () Bool)

(declare-fun call!530130 () List!64866)

(assert (=> bm!530125 (= call!530130 call!530132)))

(declare-fun b!6269728 () Bool)

(declare-fun call!530131 () (InoxSet Context!11146))

(assert (=> b!6269728 (= e!3813362 call!530131)))

(declare-fun c!1136058 () Bool)

(declare-fun bm!530126 () Bool)

(assert (=> bm!530126 (= call!530129 (derivationStepZipperDown!1437 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))) (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130)) (h!71192 s!2326)))))

(declare-fun bm!530127 () Bool)

(assert (=> bm!530127 (= call!530128 (derivationStepZipperDown!1437 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))) (ite c!1136058 lt!2351634 (Context!11147 call!530132)) (h!71192 s!2326)))))

(declare-fun b!6269729 () Bool)

(declare-fun e!3813360 () Bool)

(assert (=> b!6269729 (= e!3813360 (nullable!6182 (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))))

(declare-fun b!6269730 () Bool)

(declare-fun c!1136057 () Bool)

(assert (=> b!6269730 (= c!1136057 ((_ is Star!16189) (regOne!32890 (regOne!32890 r!7292))))))

(assert (=> b!6269730 (= e!3813362 e!3813363)))

(declare-fun b!6269731 () Bool)

(assert (=> b!6269731 (= c!1136056 e!3813360)))

(declare-fun res!2586304 () Bool)

(assert (=> b!6269731 (=> (not res!2586304) (not e!3813360))))

(assert (=> b!6269731 (= res!2586304 ((_ is Concat!25034) (regOne!32890 (regOne!32890 r!7292))))))

(declare-fun e!3813359 () (InoxSet Context!11146))

(assert (=> b!6269731 (= e!3813359 e!3813361)))

(declare-fun b!6269732 () Bool)

(assert (=> b!6269732 (= e!3813364 (store ((as const (Array Context!11146 Bool)) false) lt!2351634 true))))

(declare-fun b!6269733 () Bool)

(assert (=> b!6269733 (= e!3813359 ((_ map or) call!530128 call!530129))))

(declare-fun b!6269734 () Bool)

(assert (=> b!6269734 (= e!3813363 call!530131)))

(declare-fun bm!530128 () Bool)

(assert (=> bm!530128 (= call!530131 call!530133)))

(declare-fun b!6269735 () Bool)

(assert (=> b!6269735 (= e!3813364 e!3813359)))

(assert (=> b!6269735 (= c!1136058 ((_ is Union!16189) (regOne!32890 (regOne!32890 r!7292))))))

(assert (= (and d!1967678 c!1136054) b!6269732))

(assert (= (and d!1967678 (not c!1136054)) b!6269735))

(assert (= (and b!6269735 c!1136058) b!6269733))

(assert (= (and b!6269735 (not c!1136058)) b!6269731))

(assert (= (and b!6269731 res!2586304) b!6269729))

(assert (= (and b!6269731 c!1136056) b!6269725))

(assert (= (and b!6269731 (not c!1136056)) b!6269726))

(assert (= (and b!6269726 c!1136055) b!6269728))

(assert (= (and b!6269726 (not c!1136055)) b!6269730))

(assert (= (and b!6269730 c!1136057) b!6269734))

(assert (= (and b!6269730 (not c!1136057)) b!6269727))

(assert (= (or b!6269728 b!6269734) bm!530125))

(assert (= (or b!6269728 b!6269734) bm!530128))

(assert (= (or b!6269725 bm!530125) bm!530124))

(assert (= (or b!6269725 bm!530128) bm!530123))

(assert (= (or b!6269733 bm!530123) bm!530126))

(assert (= (or b!6269733 b!6269725) bm!530127))

(declare-fun m!7091512 () Bool)

(assert (=> bm!530127 m!7091512))

(assert (=> b!6269732 m!7090794))

(declare-fun m!7091514 () Bool)

(assert (=> b!6269729 m!7091514))

(declare-fun m!7091516 () Bool)

(assert (=> bm!530124 m!7091516))

(declare-fun m!7091518 () Bool)

(assert (=> bm!530126 m!7091518))

(assert (=> b!6268849 d!1967678))

(declare-fun d!1967680 () Bool)

(declare-fun e!3813365 () Bool)

(assert (=> d!1967680 (= (matchZipper!2201 ((_ map or) lt!2351600 lt!2351623) (t!378424 s!2326)) e!3813365)))

(declare-fun res!2586305 () Bool)

(assert (=> d!1967680 (=> res!2586305 e!3813365)))

(assert (=> d!1967680 (= res!2586305 (matchZipper!2201 lt!2351600 (t!378424 s!2326)))))

(declare-fun lt!2351779 () Unit!158087)

(assert (=> d!1967680 (= lt!2351779 (choose!46512 lt!2351600 lt!2351623 (t!378424 s!2326)))))

(assert (=> d!1967680 (= (lemmaZipperConcatMatchesSameAsBothZippers!1020 lt!2351600 lt!2351623 (t!378424 s!2326)) lt!2351779)))

(declare-fun b!6269736 () Bool)

(assert (=> b!6269736 (= e!3813365 (matchZipper!2201 lt!2351623 (t!378424 s!2326)))))

(assert (= (and d!1967680 (not res!2586305)) b!6269736))

(assert (=> d!1967680 m!7090754))

(assert (=> d!1967680 m!7090752))

(declare-fun m!7091520 () Bool)

(assert (=> d!1967680 m!7091520))

(assert (=> b!6269736 m!7090684))

(assert (=> b!6268847 d!1967680))

(assert (=> b!6268847 d!1967580))

(declare-fun d!1967682 () Bool)

(declare-fun c!1136059 () Bool)

(assert (=> d!1967682 (= c!1136059 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813366 () Bool)

(assert (=> d!1967682 (= (matchZipper!2201 ((_ map or) lt!2351600 lt!2351623) (t!378424 s!2326)) e!3813366)))

(declare-fun b!6269737 () Bool)

(assert (=> b!6269737 (= e!3813366 (nullableZipper!1959 ((_ map or) lt!2351600 lt!2351623)))))

(declare-fun b!6269738 () Bool)

(assert (=> b!6269738 (= e!3813366 (matchZipper!2201 (derivationStepZipper!2155 ((_ map or) lt!2351600 lt!2351623) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967682 c!1136059) b!6269737))

(assert (= (and d!1967682 (not c!1136059)) b!6269738))

(assert (=> d!1967682 m!7091024))

(declare-fun m!7091522 () Bool)

(assert (=> b!6269737 m!7091522))

(assert (=> b!6269738 m!7091028))

(assert (=> b!6269738 m!7091028))

(declare-fun m!7091524 () Bool)

(assert (=> b!6269738 m!7091524))

(assert (=> b!6269738 m!7091032))

(assert (=> b!6269738 m!7091524))

(assert (=> b!6269738 m!7091032))

(declare-fun m!7091526 () Bool)

(assert (=> b!6269738 m!7091526))

(assert (=> b!6268847 d!1967682))

(declare-fun d!1967684 () Bool)

(declare-fun e!3813367 () Bool)

(assert (=> d!1967684 e!3813367))

(declare-fun res!2586306 () Bool)

(assert (=> d!1967684 (=> (not res!2586306) (not e!3813367))))

(declare-fun lt!2351780 () List!64867)

(assert (=> d!1967684 (= res!2586306 (noDuplicate!2022 lt!2351780))))

(assert (=> d!1967684 (= lt!2351780 (choose!46514 z!1189))))

(assert (=> d!1967684 (= (toList!9973 z!1189) lt!2351780)))

(declare-fun b!6269739 () Bool)

(assert (=> b!6269739 (= e!3813367 (= (content!12159 lt!2351780) z!1189))))

(assert (= (and d!1967684 res!2586306) b!6269739))

(declare-fun m!7091528 () Bool)

(assert (=> d!1967684 m!7091528))

(declare-fun m!7091530 () Bool)

(assert (=> d!1967684 m!7091530))

(declare-fun m!7091532 () Bool)

(assert (=> b!6269739 m!7091532))

(assert (=> b!6268867 d!1967684))

(declare-fun d!1967686 () Bool)

(declare-fun lt!2351783 () Int)

(assert (=> d!1967686 (>= lt!2351783 0)))

(declare-fun e!3813370 () Int)

(assert (=> d!1967686 (= lt!2351783 e!3813370)))

(declare-fun c!1136063 () Bool)

(assert (=> d!1967686 (= c!1136063 ((_ is Cons!64742) (exprs!6073 lt!2351628)))))

(assert (=> d!1967686 (= (contextDepthTotal!312 lt!2351628) lt!2351783)))

(declare-fun b!6269744 () Bool)

(declare-fun regexDepthTotal!164 (Regex!16189) Int)

(assert (=> b!6269744 (= e!3813370 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 lt!2351628))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 lt!2351628))))))))

(declare-fun b!6269745 () Bool)

(assert (=> b!6269745 (= e!3813370 1)))

(assert (= (and d!1967686 c!1136063) b!6269744))

(assert (= (and d!1967686 (not c!1136063)) b!6269745))

(declare-fun m!7091534 () Bool)

(assert (=> b!6269744 m!7091534))

(declare-fun m!7091536 () Bool)

(assert (=> b!6269744 m!7091536))

(assert (=> b!6268848 d!1967686))

(declare-fun d!1967688 () Bool)

(declare-fun lt!2351784 () Int)

(assert (=> d!1967688 (>= lt!2351784 0)))

(declare-fun e!3813371 () Int)

(assert (=> d!1967688 (= lt!2351784 e!3813371)))

(declare-fun c!1136064 () Bool)

(assert (=> d!1967688 (= c!1136064 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> d!1967688 (= (contextDepthTotal!312 (h!71191 zl!343)) lt!2351784)))

(declare-fun b!6269746 () Bool)

(assert (=> b!6269746 (= e!3813371 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 (h!71191 zl!343)))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6269747 () Bool)

(assert (=> b!6269747 (= e!3813371 1)))

(assert (= (and d!1967688 c!1136064) b!6269746))

(assert (= (and d!1967688 (not c!1136064)) b!6269747))

(declare-fun m!7091538 () Bool)

(assert (=> b!6269746 m!7091538))

(declare-fun m!7091540 () Bool)

(assert (=> b!6269746 m!7091540))

(assert (=> b!6268848 d!1967688))

(declare-fun b!6269766 () Bool)

(declare-fun e!3813383 () Bool)

(declare-fun lt!2351791 () Option!16080)

(declare-fun ++!14263 (List!64868 List!64868) List!64868)

(declare-fun get!22373 (Option!16080) tuple2!66336)

(assert (=> b!6269766 (= e!3813383 (= (++!14263 (_1!36471 (get!22373 lt!2351791)) (_2!36471 (get!22373 lt!2351791))) s!2326))))

(declare-fun b!6269767 () Bool)

(declare-fun e!3813382 () Bool)

(assert (=> b!6269767 (= e!3813382 (not (isDefined!12783 lt!2351791)))))

(declare-fun b!6269768 () Bool)

(declare-fun e!3813384 () Option!16080)

(assert (=> b!6269768 (= e!3813384 (Some!16079 (tuple2!66337 Nil!64744 s!2326)))))

(declare-fun b!6269769 () Bool)

(declare-fun e!3813386 () Bool)

(assert (=> b!6269769 (= e!3813386 (matchR!8372 (regTwo!32890 r!7292) s!2326))))

(declare-fun b!6269770 () Bool)

(declare-fun e!3813385 () Option!16080)

(assert (=> b!6269770 (= e!3813385 None!16079)))

(declare-fun b!6269771 () Bool)

(declare-fun res!2586320 () Bool)

(assert (=> b!6269771 (=> (not res!2586320) (not e!3813383))))

(assert (=> b!6269771 (= res!2586320 (matchR!8372 (regOne!32890 r!7292) (_1!36471 (get!22373 lt!2351791))))))

(declare-fun d!1967690 () Bool)

(assert (=> d!1967690 e!3813382))

(declare-fun res!2586318 () Bool)

(assert (=> d!1967690 (=> res!2586318 e!3813382)))

(assert (=> d!1967690 (= res!2586318 e!3813383)))

(declare-fun res!2586317 () Bool)

(assert (=> d!1967690 (=> (not res!2586317) (not e!3813383))))

(assert (=> d!1967690 (= res!2586317 (isDefined!12783 lt!2351791))))

(assert (=> d!1967690 (= lt!2351791 e!3813384)))

(declare-fun c!1136069 () Bool)

(assert (=> d!1967690 (= c!1136069 e!3813386)))

(declare-fun res!2586319 () Bool)

(assert (=> d!1967690 (=> (not res!2586319) (not e!3813386))))

(assert (=> d!1967690 (= res!2586319 (matchR!8372 (regOne!32890 r!7292) Nil!64744))))

(assert (=> d!1967690 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1967690 (= (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326) lt!2351791)))

(declare-fun b!6269772 () Bool)

(assert (=> b!6269772 (= e!3813384 e!3813385)))

(declare-fun c!1136070 () Bool)

(assert (=> b!6269772 (= c!1136070 ((_ is Nil!64744) s!2326))))

(declare-fun b!6269773 () Bool)

(declare-fun lt!2351793 () Unit!158087)

(declare-fun lt!2351792 () Unit!158087)

(assert (=> b!6269773 (= lt!2351793 lt!2351792)))

(assert (=> b!6269773 (= (++!14263 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2358 (List!64868 C!32648 List!64868 List!64868) Unit!158087)

(assert (=> b!6269773 (= lt!2351792 (lemmaMoveElementToOtherListKeepsConcatEq!2358 Nil!64744 (h!71192 s!2326) (t!378424 s!2326) s!2326))))

(assert (=> b!6269773 (= e!3813385 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326) s!2326))))

(declare-fun b!6269774 () Bool)

(declare-fun res!2586321 () Bool)

(assert (=> b!6269774 (=> (not res!2586321) (not e!3813383))))

(assert (=> b!6269774 (= res!2586321 (matchR!8372 (regTwo!32890 r!7292) (_2!36471 (get!22373 lt!2351791))))))

(assert (= (and d!1967690 res!2586319) b!6269769))

(assert (= (and d!1967690 c!1136069) b!6269768))

(assert (= (and d!1967690 (not c!1136069)) b!6269772))

(assert (= (and b!6269772 c!1136070) b!6269770))

(assert (= (and b!6269772 (not c!1136070)) b!6269773))

(assert (= (and d!1967690 res!2586317) b!6269771))

(assert (= (and b!6269771 res!2586320) b!6269774))

(assert (= (and b!6269774 res!2586321) b!6269766))

(assert (= (and d!1967690 (not res!2586318)) b!6269767))

(declare-fun m!7091542 () Bool)

(assert (=> b!6269773 m!7091542))

(assert (=> b!6269773 m!7091542))

(declare-fun m!7091544 () Bool)

(assert (=> b!6269773 m!7091544))

(declare-fun m!7091546 () Bool)

(assert (=> b!6269773 m!7091546))

(assert (=> b!6269773 m!7091542))

(declare-fun m!7091548 () Bool)

(assert (=> b!6269773 m!7091548))

(declare-fun m!7091550 () Bool)

(assert (=> b!6269766 m!7091550))

(declare-fun m!7091552 () Bool)

(assert (=> b!6269766 m!7091552))

(assert (=> b!6269774 m!7091550))

(declare-fun m!7091554 () Bool)

(assert (=> b!6269774 m!7091554))

(declare-fun m!7091556 () Bool)

(assert (=> d!1967690 m!7091556))

(declare-fun m!7091558 () Bool)

(assert (=> d!1967690 m!7091558))

(declare-fun m!7091560 () Bool)

(assert (=> d!1967690 m!7091560))

(assert (=> b!6269771 m!7091550))

(declare-fun m!7091562 () Bool)

(assert (=> b!6269771 m!7091562))

(declare-fun m!7091564 () Bool)

(assert (=> b!6269769 m!7091564))

(assert (=> b!6269767 m!7091556))

(assert (=> b!6268871 d!1967690))

(declare-fun d!1967692 () Bool)

(declare-fun choose!46518 (Int) Bool)

(assert (=> d!1967692 (= (Exists!3259 lambda!343318) (choose!46518 lambda!343318))))

(declare-fun bs!1565346 () Bool)

(assert (= bs!1565346 d!1967692))

(declare-fun m!7091566 () Bool)

(assert (=> bs!1565346 m!7091566))

(assert (=> b!6268871 d!1967692))

(declare-fun d!1967694 () Bool)

(assert (=> d!1967694 (= (Exists!3259 lambda!343317) (choose!46518 lambda!343317))))

(declare-fun bs!1565347 () Bool)

(assert (= bs!1565347 d!1967694))

(declare-fun m!7091568 () Bool)

(assert (=> bs!1565347 m!7091568))

(assert (=> b!6268871 d!1967694))

(declare-fun bs!1565348 () Bool)

(declare-fun d!1967696 () Bool)

(assert (= bs!1565348 (and d!1967696 b!6268871)))

(declare-fun lambda!343404 () Int)

(assert (=> bs!1565348 (= lambda!343404 lambda!343317)))

(assert (=> bs!1565348 (not (= lambda!343404 lambda!343318))))

(declare-fun bs!1565349 () Bool)

(assert (= bs!1565349 (and d!1967696 b!6269515)))

(assert (=> bs!1565349 (not (= lambda!343404 lambda!343393))))

(declare-fun bs!1565350 () Bool)

(assert (= bs!1565350 (and d!1967696 b!6269521)))

(assert (=> bs!1565350 (not (= lambda!343404 lambda!343394))))

(assert (=> d!1967696 true))

(assert (=> d!1967696 true))

(assert (=> d!1967696 true))

(assert (=> d!1967696 (= (isDefined!12783 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326)) (Exists!3259 lambda!343404))))

(declare-fun lt!2351796 () Unit!158087)

(declare-fun choose!46519 (Regex!16189 Regex!16189 List!64868) Unit!158087)

(assert (=> d!1967696 (= lt!2351796 (choose!46519 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326))))

(assert (=> d!1967696 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1967696 (= (lemmaFindConcatSeparationEquivalentToExists!2258 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326) lt!2351796)))

(declare-fun bs!1565351 () Bool)

(assert (= bs!1565351 d!1967696))

(assert (=> bs!1565351 m!7090712))

(assert (=> bs!1565351 m!7090714))

(assert (=> bs!1565351 m!7090712))

(declare-fun m!7091570 () Bool)

(assert (=> bs!1565351 m!7091570))

(assert (=> bs!1565351 m!7091560))

(declare-fun m!7091572 () Bool)

(assert (=> bs!1565351 m!7091572))

(assert (=> b!6268871 d!1967696))

(declare-fun bs!1565352 () Bool)

(declare-fun d!1967698 () Bool)

(assert (= bs!1565352 (and d!1967698 b!6269521)))

(declare-fun lambda!343409 () Int)

(assert (=> bs!1565352 (not (= lambda!343409 lambda!343394))))

(declare-fun bs!1565353 () Bool)

(assert (= bs!1565353 (and d!1967698 b!6269515)))

(assert (=> bs!1565353 (not (= lambda!343409 lambda!343393))))

(declare-fun bs!1565354 () Bool)

(assert (= bs!1565354 (and d!1967698 d!1967696)))

(assert (=> bs!1565354 (= lambda!343409 lambda!343404)))

(declare-fun bs!1565355 () Bool)

(assert (= bs!1565355 (and d!1967698 b!6268871)))

(assert (=> bs!1565355 (not (= lambda!343409 lambda!343318))))

(assert (=> bs!1565355 (= lambda!343409 lambda!343317)))

(assert (=> d!1967698 true))

(assert (=> d!1967698 true))

(assert (=> d!1967698 true))

(declare-fun bs!1565356 () Bool)

(assert (= bs!1565356 d!1967698))

(declare-fun lambda!343410 () Int)

(assert (=> bs!1565356 (not (= lambda!343410 lambda!343409))))

(assert (=> bs!1565352 (= lambda!343410 lambda!343394)))

(assert (=> bs!1565353 (not (= lambda!343410 lambda!343393))))

(assert (=> bs!1565354 (not (= lambda!343410 lambda!343404))))

(assert (=> bs!1565355 (= lambda!343410 lambda!343318)))

(assert (=> bs!1565355 (not (= lambda!343410 lambda!343317))))

(assert (=> d!1967698 true))

(assert (=> d!1967698 true))

(assert (=> d!1967698 true))

(assert (=> d!1967698 (= (Exists!3259 lambda!343409) (Exists!3259 lambda!343410))))

(declare-fun lt!2351799 () Unit!158087)

(declare-fun choose!46520 (Regex!16189 Regex!16189 List!64868) Unit!158087)

(assert (=> d!1967698 (= lt!2351799 (choose!46520 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326))))

(assert (=> d!1967698 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1967698 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1796 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326) lt!2351799)))

(declare-fun m!7091574 () Bool)

(assert (=> bs!1565356 m!7091574))

(declare-fun m!7091576 () Bool)

(assert (=> bs!1565356 m!7091576))

(declare-fun m!7091578 () Bool)

(assert (=> bs!1565356 m!7091578))

(assert (=> bs!1565356 m!7091560))

(assert (=> b!6268871 d!1967698))

(declare-fun d!1967700 () Bool)

(declare-fun isEmpty!36779 (Option!16080) Bool)

(assert (=> d!1967700 (= (isDefined!12783 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326)) (not (isEmpty!36779 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326))))))

(declare-fun bs!1565357 () Bool)

(assert (= bs!1565357 d!1967700))

(assert (=> bs!1565357 m!7090712))

(declare-fun m!7091580 () Bool)

(assert (=> bs!1565357 m!7091580))

(assert (=> b!6268871 d!1967700))

(declare-fun d!1967702 () Bool)

(assert (=> d!1967702 (= (flatMap!1694 lt!2351636 lambda!343319) (dynLambda!25599 lambda!343319 lt!2351628))))

(declare-fun lt!2351800 () Unit!158087)

(assert (=> d!1967702 (= lt!2351800 (choose!46506 lt!2351636 lt!2351628 lambda!343319))))

(assert (=> d!1967702 (= lt!2351636 (store ((as const (Array Context!11146 Bool)) false) lt!2351628 true))))

(assert (=> d!1967702 (= (lemmaFlatMapOnSingletonSet!1220 lt!2351636 lt!2351628 lambda!343319) lt!2351800)))

(declare-fun b_lambda!238725 () Bool)

(assert (=> (not b_lambda!238725) (not d!1967702)))

(declare-fun bs!1565358 () Bool)

(assert (= bs!1565358 d!1967702))

(assert (=> bs!1565358 m!7090790))

(declare-fun m!7091582 () Bool)

(assert (=> bs!1565358 m!7091582))

(declare-fun m!7091584 () Bool)

(assert (=> bs!1565358 m!7091584))

(assert (=> bs!1565358 m!7090788))

(assert (=> b!6268852 d!1967702))

(assert (=> b!6268852 d!1967548))

(declare-fun d!1967704 () Bool)

(assert (=> d!1967704 (= (flatMap!1694 lt!2351636 lambda!343319) (choose!46508 lt!2351636 lambda!343319))))

(declare-fun bs!1565359 () Bool)

(assert (= bs!1565359 d!1967704))

(declare-fun m!7091586 () Bool)

(assert (=> bs!1565359 m!7091586))

(assert (=> b!6268852 d!1967704))

(declare-fun bs!1565360 () Bool)

(declare-fun d!1967706 () Bool)

(assert (= bs!1565360 (and d!1967706 b!6268873)))

(declare-fun lambda!343411 () Int)

(assert (=> bs!1565360 (= lambda!343411 lambda!343319)))

(declare-fun bs!1565361 () Bool)

(assert (= bs!1565361 (and d!1967706 d!1967654)))

(assert (=> bs!1565361 (= lambda!343411 lambda!343399)))

(assert (=> d!1967706 true))

(assert (=> d!1967706 (= (derivationStepZipper!2155 lt!2351636 (h!71192 s!2326)) (flatMap!1694 lt!2351636 lambda!343411))))

(declare-fun bs!1565362 () Bool)

(assert (= bs!1565362 d!1967706))

(declare-fun m!7091588 () Bool)

(assert (=> bs!1565362 m!7091588))

(assert (=> b!6268852 d!1967706))

(declare-fun b!6269787 () Bool)

(declare-fun e!3813393 () Bool)

(assert (=> b!6269787 (= e!3813393 (nullable!6182 (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun b!6269788 () Bool)

(declare-fun e!3813394 () (InoxSet Context!11146))

(declare-fun call!530134 () (InoxSet Context!11146))

(assert (=> b!6269788 (= e!3813394 call!530134)))

(declare-fun d!1967708 () Bool)

(declare-fun c!1136071 () Bool)

(assert (=> d!1967708 (= c!1136071 e!3813393)))

(declare-fun res!2586334 () Bool)

(assert (=> d!1967708 (=> (not res!2586334) (not e!3813393))))

(assert (=> d!1967708 (= res!2586334 ((_ is Cons!64742) (exprs!6073 lt!2351628)))))

(declare-fun e!3813395 () (InoxSet Context!11146))

(assert (=> d!1967708 (= (derivationStepZipperUp!1363 lt!2351628 (h!71192 s!2326)) e!3813395)))

(declare-fun b!6269789 () Bool)

(assert (=> b!6269789 (= e!3813395 ((_ map or) call!530134 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (h!71192 s!2326))))))

(declare-fun bm!530129 () Bool)

(assert (=> bm!530129 (= call!530134 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351628)) (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (h!71192 s!2326)))))

(declare-fun b!6269790 () Bool)

(assert (=> b!6269790 (= e!3813394 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6269791 () Bool)

(assert (=> b!6269791 (= e!3813395 e!3813394)))

(declare-fun c!1136072 () Bool)

(assert (=> b!6269791 (= c!1136072 ((_ is Cons!64742) (exprs!6073 lt!2351628)))))

(assert (= (and d!1967708 res!2586334) b!6269787))

(assert (= (and d!1967708 c!1136071) b!6269789))

(assert (= (and d!1967708 (not c!1136071)) b!6269791))

(assert (= (and b!6269791 c!1136072) b!6269788))

(assert (= (and b!6269791 (not c!1136072)) b!6269790))

(assert (= (or b!6269789 b!6269788) bm!530129))

(declare-fun m!7091590 () Bool)

(assert (=> b!6269787 m!7091590))

(declare-fun m!7091592 () Bool)

(assert (=> b!6269789 m!7091592))

(declare-fun m!7091594 () Bool)

(assert (=> bm!530129 m!7091594))

(assert (=> b!6268852 d!1967708))

(declare-fun d!1967710 () Bool)

(assert (=> d!1967710 (= (isEmpty!36775 (t!378422 (exprs!6073 (h!71191 zl!343)))) ((_ is Nil!64742) (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6268869 d!1967710))

(declare-fun d!1967712 () Bool)

(assert (=> d!1967712 (= (isEmpty!36774 (t!378423 zl!343)) ((_ is Nil!64743) (t!378423 zl!343)))))

(assert (=> b!6268850 d!1967712))

(declare-fun condSetEmpty!42638 () Bool)

(assert (=> setNonEmpty!42632 (= condSetEmpty!42638 (= setRest!42632 ((as const (Array Context!11146 Bool)) false)))))

(declare-fun setRes!42638 () Bool)

(assert (=> setNonEmpty!42632 (= tp!1748577 setRes!42638)))

(declare-fun setIsEmpty!42638 () Bool)

(assert (=> setIsEmpty!42638 setRes!42638))

(declare-fun tp!1748645 () Bool)

(declare-fun setElem!42638 () Context!11146)

(declare-fun e!3813398 () Bool)

(declare-fun setNonEmpty!42638 () Bool)

(assert (=> setNonEmpty!42638 (= setRes!42638 (and tp!1748645 (inv!83719 setElem!42638) e!3813398))))

(declare-fun setRest!42638 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42638 (= setRest!42632 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42638 true) setRest!42638))))

(declare-fun b!6269796 () Bool)

(declare-fun tp!1748646 () Bool)

(assert (=> b!6269796 (= e!3813398 tp!1748646)))

(assert (= (and setNonEmpty!42632 condSetEmpty!42638) setIsEmpty!42638))

(assert (= (and setNonEmpty!42632 (not condSetEmpty!42638)) setNonEmpty!42638))

(assert (= setNonEmpty!42638 b!6269796))

(declare-fun m!7091596 () Bool)

(assert (=> setNonEmpty!42638 m!7091596))

(declare-fun b!6269801 () Bool)

(declare-fun e!3813401 () Bool)

(declare-fun tp!1748649 () Bool)

(assert (=> b!6269801 (= e!3813401 (and tp_is_empty!41631 tp!1748649))))

(assert (=> b!6268879 (= tp!1748575 e!3813401)))

(assert (= (and b!6268879 ((_ is Cons!64744) (t!378424 s!2326))) b!6269801))

(declare-fun e!3813404 () Bool)

(assert (=> b!6268858 (= tp!1748581 e!3813404)))

(declare-fun b!6269813 () Bool)

(declare-fun tp!1748660 () Bool)

(declare-fun tp!1748663 () Bool)

(assert (=> b!6269813 (= e!3813404 (and tp!1748660 tp!1748663))))

(declare-fun b!6269812 () Bool)

(assert (=> b!6269812 (= e!3813404 tp_is_empty!41631)))

(declare-fun b!6269815 () Bool)

(declare-fun tp!1748661 () Bool)

(declare-fun tp!1748664 () Bool)

(assert (=> b!6269815 (= e!3813404 (and tp!1748661 tp!1748664))))

(declare-fun b!6269814 () Bool)

(declare-fun tp!1748662 () Bool)

(assert (=> b!6269814 (= e!3813404 tp!1748662)))

(assert (= (and b!6268858 ((_ is ElementMatch!16189) (regOne!32890 r!7292))) b!6269812))

(assert (= (and b!6268858 ((_ is Concat!25034) (regOne!32890 r!7292))) b!6269813))

(assert (= (and b!6268858 ((_ is Star!16189) (regOne!32890 r!7292))) b!6269814))

(assert (= (and b!6268858 ((_ is Union!16189) (regOne!32890 r!7292))) b!6269815))

(declare-fun e!3813405 () Bool)

(assert (=> b!6268858 (= tp!1748573 e!3813405)))

(declare-fun b!6269817 () Bool)

(declare-fun tp!1748665 () Bool)

(declare-fun tp!1748668 () Bool)

(assert (=> b!6269817 (= e!3813405 (and tp!1748665 tp!1748668))))

(declare-fun b!6269816 () Bool)

(assert (=> b!6269816 (= e!3813405 tp_is_empty!41631)))

(declare-fun b!6269819 () Bool)

(declare-fun tp!1748666 () Bool)

(declare-fun tp!1748669 () Bool)

(assert (=> b!6269819 (= e!3813405 (and tp!1748666 tp!1748669))))

(declare-fun b!6269818 () Bool)

(declare-fun tp!1748667 () Bool)

(assert (=> b!6269818 (= e!3813405 tp!1748667)))

(assert (= (and b!6268858 ((_ is ElementMatch!16189) (regTwo!32890 r!7292))) b!6269816))

(assert (= (and b!6268858 ((_ is Concat!25034) (regTwo!32890 r!7292))) b!6269817))

(assert (= (and b!6268858 ((_ is Star!16189) (regTwo!32890 r!7292))) b!6269818))

(assert (= (and b!6268858 ((_ is Union!16189) (regTwo!32890 r!7292))) b!6269819))

(declare-fun e!3813406 () Bool)

(assert (=> b!6268878 (= tp!1748578 e!3813406)))

(declare-fun b!6269821 () Bool)

(declare-fun tp!1748670 () Bool)

(declare-fun tp!1748673 () Bool)

(assert (=> b!6269821 (= e!3813406 (and tp!1748670 tp!1748673))))

(declare-fun b!6269820 () Bool)

(assert (=> b!6269820 (= e!3813406 tp_is_empty!41631)))

(declare-fun b!6269823 () Bool)

(declare-fun tp!1748671 () Bool)

(declare-fun tp!1748674 () Bool)

(assert (=> b!6269823 (= e!3813406 (and tp!1748671 tp!1748674))))

(declare-fun b!6269822 () Bool)

(declare-fun tp!1748672 () Bool)

(assert (=> b!6269822 (= e!3813406 tp!1748672)))

(assert (= (and b!6268878 ((_ is ElementMatch!16189) (regOne!32891 r!7292))) b!6269820))

(assert (= (and b!6268878 ((_ is Concat!25034) (regOne!32891 r!7292))) b!6269821))

(assert (= (and b!6268878 ((_ is Star!16189) (regOne!32891 r!7292))) b!6269822))

(assert (= (and b!6268878 ((_ is Union!16189) (regOne!32891 r!7292))) b!6269823))

(declare-fun e!3813407 () Bool)

(assert (=> b!6268878 (= tp!1748576 e!3813407)))

(declare-fun b!6269825 () Bool)

(declare-fun tp!1748675 () Bool)

(declare-fun tp!1748678 () Bool)

(assert (=> b!6269825 (= e!3813407 (and tp!1748675 tp!1748678))))

(declare-fun b!6269824 () Bool)

(assert (=> b!6269824 (= e!3813407 tp_is_empty!41631)))

(declare-fun b!6269827 () Bool)

(declare-fun tp!1748676 () Bool)

(declare-fun tp!1748679 () Bool)

(assert (=> b!6269827 (= e!3813407 (and tp!1748676 tp!1748679))))

(declare-fun b!6269826 () Bool)

(declare-fun tp!1748677 () Bool)

(assert (=> b!6269826 (= e!3813407 tp!1748677)))

(assert (= (and b!6268878 ((_ is ElementMatch!16189) (regTwo!32891 r!7292))) b!6269824))

(assert (= (and b!6268878 ((_ is Concat!25034) (regTwo!32891 r!7292))) b!6269825))

(assert (= (and b!6268878 ((_ is Star!16189) (regTwo!32891 r!7292))) b!6269826))

(assert (= (and b!6268878 ((_ is Union!16189) (regTwo!32891 r!7292))) b!6269827))

(declare-fun b!6269835 () Bool)

(declare-fun e!3813413 () Bool)

(declare-fun tp!1748684 () Bool)

(assert (=> b!6269835 (= e!3813413 tp!1748684)))

(declare-fun b!6269834 () Bool)

(declare-fun e!3813412 () Bool)

(declare-fun tp!1748685 () Bool)

(assert (=> b!6269834 (= e!3813412 (and (inv!83719 (h!71191 (t!378423 zl!343))) e!3813413 tp!1748685))))

(assert (=> b!6268881 (= tp!1748580 e!3813412)))

(assert (= b!6269834 b!6269835))

(assert (= (and b!6268881 ((_ is Cons!64743) (t!378423 zl!343))) b!6269834))

(declare-fun m!7091598 () Bool)

(assert (=> b!6269834 m!7091598))

(declare-fun b!6269840 () Bool)

(declare-fun e!3813416 () Bool)

(declare-fun tp!1748690 () Bool)

(declare-fun tp!1748691 () Bool)

(assert (=> b!6269840 (= e!3813416 (and tp!1748690 tp!1748691))))

(assert (=> b!6268851 (= tp!1748582 e!3813416)))

(assert (= (and b!6268851 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343)))) b!6269840))

(declare-fun e!3813417 () Bool)

(assert (=> b!6268876 (= tp!1748579 e!3813417)))

(declare-fun b!6269842 () Bool)

(declare-fun tp!1748692 () Bool)

(declare-fun tp!1748695 () Bool)

(assert (=> b!6269842 (= e!3813417 (and tp!1748692 tp!1748695))))

(declare-fun b!6269841 () Bool)

(assert (=> b!6269841 (= e!3813417 tp_is_empty!41631)))

(declare-fun b!6269844 () Bool)

(declare-fun tp!1748693 () Bool)

(declare-fun tp!1748696 () Bool)

(assert (=> b!6269844 (= e!3813417 (and tp!1748693 tp!1748696))))

(declare-fun b!6269843 () Bool)

(declare-fun tp!1748694 () Bool)

(assert (=> b!6269843 (= e!3813417 tp!1748694)))

(assert (= (and b!6268876 ((_ is ElementMatch!16189) (reg!16518 r!7292))) b!6269841))

(assert (= (and b!6268876 ((_ is Concat!25034) (reg!16518 r!7292))) b!6269842))

(assert (= (and b!6268876 ((_ is Star!16189) (reg!16518 r!7292))) b!6269843))

(assert (= (and b!6268876 ((_ is Union!16189) (reg!16518 r!7292))) b!6269844))

(declare-fun b!6269845 () Bool)

(declare-fun e!3813418 () Bool)

(declare-fun tp!1748697 () Bool)

(declare-fun tp!1748698 () Bool)

(assert (=> b!6269845 (= e!3813418 (and tp!1748697 tp!1748698))))

(assert (=> b!6268857 (= tp!1748574 e!3813418)))

(assert (= (and b!6268857 ((_ is Cons!64742) (exprs!6073 setElem!42632))) b!6269845))

(declare-fun b_lambda!238727 () Bool)

(assert (= b_lambda!238711 (or b!6268873 b_lambda!238727)))

(declare-fun bs!1565363 () Bool)

(declare-fun d!1967714 () Bool)

(assert (= bs!1565363 (and d!1967714 b!6268873)))

(assert (=> bs!1565363 (= (dynLambda!25599 lambda!343319 (h!71191 zl!343)) (derivationStepZipperUp!1363 (h!71191 zl!343) (h!71192 s!2326)))))

(assert (=> bs!1565363 m!7090734))

(assert (=> d!1967472 d!1967714))

(declare-fun b_lambda!238729 () Bool)

(assert (= b_lambda!238713 (or b!6268873 b_lambda!238729)))

(declare-fun bs!1565364 () Bool)

(declare-fun d!1967716 () Bool)

(assert (= bs!1565364 (and d!1967716 b!6268873)))

(assert (=> bs!1565364 (= (dynLambda!25599 lambda!343319 lt!2351634) (derivationStepZipperUp!1363 lt!2351634 (h!71192 s!2326)))))

(assert (=> bs!1565364 m!7090696))

(assert (=> d!1967550 d!1967716))

(declare-fun b_lambda!238731 () Bool)

(assert (= b_lambda!238725 (or b!6268873 b_lambda!238731)))

(declare-fun bs!1565365 () Bool)

(declare-fun d!1967718 () Bool)

(assert (= bs!1565365 (and d!1967718 b!6268873)))

(assert (=> bs!1565365 (= (dynLambda!25599 lambda!343319 lt!2351628) (derivationStepZipperUp!1363 lt!2351628 (h!71192 s!2326)))))

(assert (=> bs!1565365 m!7090786))

(assert (=> d!1967702 d!1967718))

(check-sat (not b!6269127) (not bm!530116) (not d!1967680) (not b!6269690) (not d!1967510) (not d!1967682) (not b!6269700) (not d!1967660) (not b!6269513) (not b!6269689) (not bs!1565364) (not b!6269291) (not b!6269704) (not bm!530120) (not bm!530066) (not d!1967584) (not d!1967650) (not bs!1565365) (not b!6269699) (not b!6269769) (not bm!530065) (not b!6269817) (not b!6269641) (not d!1967542) (not d!1967674) (not d!1967704) (not b!6269228) (not bm!530115) (not b!6269656) (not b!6269766) (not b!6269221) (not b!6269825) (not b!6269426) (not bm!530021) (not b!6269614) (not b!6269834) (not b!6269789) (not d!1967698) (not b_lambda!238731) (not b!6269818) (not d!1967658) (not b!6269288) (not b!6269843) (not b!6269819) (not b!6269701) (not b!6269654) (not b!6269385) (not bm!530124) (not b!6269100) (not b!6269680) (not b!6269835) (not d!1967582) (not b!6269388) (not d!1967524) (not b!6269736) (not d!1967652) (not bm!530118) (not b!6269685) (not b!6269296) (not b!6269826) (not d!1967474) (not b_lambda!238729) (not b!6269122) (not d!1967654) (not b!6269143) (not b!6269739) (not b!6269230) (not b!6269713) (not bm!530126) (not b!6269744) (not d!1967544) (not b!6269581) (not d!1967656) (not b!6269583) (not d!1967586) (not b!6269650) (not d!1967522) (not d!1967632) (not b!6269691) (not b!6269658) (not bm!530048) (not bm!530022) (not d!1967692) (not d!1967700) (not d!1967696) (not b!6269292) (not b!6269585) (not setNonEmpty!42638) (not b!6269823) (not d!1967486) (not bm!530105) (not b!6269421) (not b!6269813) (not b!6269845) tp_is_empty!41631 (not b!6269227) (not d!1967540) (not b!6269584) (not b!6269222) (not b!6269718) (not b!6269796) (not b!6269815) (not b!6269688) (not b!6269357) (not b!6269844) (not b!6269682) (not b!6269686) (not b!6269738) (not b!6269249) (not b!6269389) (not d!1967550) (not b!6269251) (not b!6269729) (not b!6269842) (not bm!530121) (not d!1967706) (not b!6269124) (not b!6269516) (not d!1967516) (not b!6269226) (not b!6269840) (not b!6269098) (not b!6269613) (not d!1967580) (not d!1967690) (not b!6269575) (not bm!530047) (not d!1967554) (not b_lambda!238727) (not b!6269787) (not b!6269425) (not bm!530106) (not d!1967670) (not d!1967528) (not bm!530127) (not b!6269150) (not d!1967482) (not b!6269017) (not b!6269771) (not d!1967600) (not b!6269642) (not b!6269295) (not b!6269010) (not bm!530109) (not bm!530091) (not d!1967560) (not b!6269822) (not b!6269801) (not b!6269773) (not b!6269252) (not d!1967684) (not b!6269814) (not bm!530050) (not b!6269402) (not d!1967514) (not b!6269290) (not b!6269827) (not b!6269294) (not b!6269737) (not b!6269401) (not b!6269767) (not b!6269432) (not b!6269821) (not b!6269679) (not d!1967472) (not b!6269371) (not b!6269588) (not b!6269653) (not b!6269420) (not b!6269427) (not b!6269433) (not b!6269684) (not d!1967702) (not b!6269225) (not b!6269652) (not b!6269657) (not d!1967668) (not bm!530045) (not b!6269157) (not b!6269383) (not b!6269774) (not b!6269746) (not b!6269423) (not d!1967558) (not d!1967694) (not b!6269431) (not b!6269428) (not b!6269697) (not b!6269129) (not bs!1565363) (not b!6269075) (not bm!530113) (not b!6269012) (not d!1967572) (not bm!530129) (not b!6269156) (not b!6269015))
(check-sat)
(get-model)

(declare-fun d!1967764 () Bool)

(assert (=> d!1967764 (= (nullable!6182 lt!2351615) (nullableFct!2133 lt!2351615))))

(declare-fun bs!1565399 () Bool)

(assert (= bs!1565399 d!1967764))

(declare-fun m!7091678 () Bool)

(assert (=> bs!1565399 m!7091678))

(assert (=> b!6269699 d!1967764))

(declare-fun d!1967766 () Bool)

(assert (=> d!1967766 (= (head!12879 (unfocusZipperList!1610 zl!343)) (h!71190 (unfocusZipperList!1610 zl!343)))))

(assert (=> b!6269222 d!1967766))

(declare-fun d!1967768 () Bool)

(assert (=> d!1967768 (= (isEmpty!36775 (t!378422 lt!2351608)) ((_ is Nil!64742) (t!378422 lt!2351608)))))

(assert (=> b!6269657 d!1967768))

(declare-fun d!1967770 () Bool)

(assert (=> d!1967770 (= (isDefined!12783 lt!2351791) (not (isEmpty!36779 lt!2351791)))))

(declare-fun bs!1565400 () Bool)

(assert (= bs!1565400 d!1967770))

(declare-fun m!7091692 () Bool)

(assert (=> bs!1565400 m!7091692))

(assert (=> b!6269767 d!1967770))

(declare-fun bs!1565401 () Bool)

(declare-fun d!1967774 () Bool)

(assert (= bs!1565401 (and d!1967774 b!6269122)))

(declare-fun lambda!343418 () Int)

(assert (=> bs!1565401 (not (= lambda!343418 lambda!343340))))

(declare-fun bs!1565402 () Bool)

(assert (= bs!1565402 (and d!1967774 b!6269124)))

(assert (=> bs!1565402 (not (= lambda!343418 lambda!343341))))

(declare-fun bs!1565403 () Bool)

(assert (= bs!1565403 (and d!1967774 b!6269127)))

(assert (=> bs!1565403 (not (= lambda!343418 lambda!343345))))

(declare-fun bs!1565404 () Bool)

(assert (= bs!1565404 (and d!1967774 b!6269129)))

(assert (=> bs!1565404 (not (= lambda!343418 lambda!343346))))

(declare-fun exists!2522 ((InoxSet Context!11146) Int) Bool)

(assert (=> d!1967774 (= (nullableZipper!1959 lt!2351600) (exists!2522 lt!2351600 lambda!343418))))

(declare-fun bs!1565405 () Bool)

(assert (= bs!1565405 d!1967774))

(declare-fun m!7091708 () Bool)

(assert (=> bs!1565405 m!7091708))

(assert (=> b!6269425 d!1967774))

(declare-fun bs!1565406 () Bool)

(declare-fun d!1967778 () Bool)

(assert (= bs!1565406 (and d!1967778 d!1967774)))

(declare-fun lambda!343419 () Int)

(assert (=> bs!1565406 (= lambda!343419 lambda!343418)))

(declare-fun bs!1565407 () Bool)

(assert (= bs!1565407 (and d!1967778 b!6269127)))

(assert (=> bs!1565407 (not (= lambda!343419 lambda!343345))))

(declare-fun bs!1565408 () Bool)

(assert (= bs!1565408 (and d!1967778 b!6269129)))

(assert (=> bs!1565408 (not (= lambda!343419 lambda!343346))))

(declare-fun bs!1565409 () Bool)

(assert (= bs!1565409 (and d!1967778 b!6269124)))

(assert (=> bs!1565409 (not (= lambda!343419 lambda!343341))))

(declare-fun bs!1565410 () Bool)

(assert (= bs!1565410 (and d!1967778 b!6269122)))

(assert (=> bs!1565410 (not (= lambda!343419 lambda!343340))))

(assert (=> d!1967778 (= (nullableZipper!1959 lt!2351636) (exists!2522 lt!2351636 lambda!343419))))

(declare-fun bs!1565411 () Bool)

(assert (= bs!1565411 d!1967778))

(declare-fun m!7091710 () Bool)

(assert (=> bs!1565411 m!7091710))

(assert (=> b!6269679 d!1967778))

(declare-fun d!1967780 () Bool)

(assert (=> d!1967780 (= (isEmpty!36775 (unfocusZipperList!1610 zl!343)) ((_ is Nil!64742) (unfocusZipperList!1610 zl!343)))))

(assert (=> b!6269226 d!1967780))

(declare-fun b!6269919 () Bool)

(declare-fun e!3813471 () Bool)

(declare-fun e!3813468 () Bool)

(assert (=> b!6269919 (= e!3813471 e!3813468)))

(declare-fun c!1136094 () Bool)

(assert (=> b!6269919 (= c!1136094 ((_ is Star!16189) (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))

(declare-fun d!1967782 () Bool)

(declare-fun res!2586375 () Bool)

(assert (=> d!1967782 (=> res!2586375 e!3813471)))

(assert (=> d!1967782 (= res!2586375 ((_ is ElementMatch!16189) (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))

(assert (=> d!1967782 (= (validRegex!7925 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))) e!3813471)))

(declare-fun bm!530134 () Bool)

(declare-fun call!530139 () Bool)

(declare-fun call!530140 () Bool)

(assert (=> bm!530134 (= call!530139 call!530140)))

(declare-fun b!6269920 () Bool)

(declare-fun e!3813472 () Bool)

(assert (=> b!6269920 (= e!3813468 e!3813472)))

(declare-fun c!1136093 () Bool)

(assert (=> b!6269920 (= c!1136093 ((_ is Union!16189) (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))

(declare-fun b!6269921 () Bool)

(declare-fun e!3813470 () Bool)

(declare-fun e!3813467 () Bool)

(assert (=> b!6269921 (= e!3813470 e!3813467)))

(declare-fun res!2586373 () Bool)

(assert (=> b!6269921 (=> (not res!2586373) (not e!3813467))))

(declare-fun call!530141 () Bool)

(assert (=> b!6269921 (= res!2586373 call!530141)))

(declare-fun b!6269922 () Bool)

(declare-fun e!3813469 () Bool)

(assert (=> b!6269922 (= e!3813469 call!530140)))

(declare-fun b!6269923 () Bool)

(declare-fun res!2586372 () Bool)

(declare-fun e!3813466 () Bool)

(assert (=> b!6269923 (=> (not res!2586372) (not e!3813466))))

(assert (=> b!6269923 (= res!2586372 call!530141)))

(assert (=> b!6269923 (= e!3813472 e!3813466)))

(declare-fun bm!530135 () Bool)

(assert (=> bm!530135 (= call!530141 (validRegex!7925 (ite c!1136093 (regOne!32891 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))) (regOne!32890 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))))

(declare-fun b!6269924 () Bool)

(declare-fun res!2586374 () Bool)

(assert (=> b!6269924 (=> res!2586374 e!3813470)))

(assert (=> b!6269924 (= res!2586374 (not ((_ is Concat!25034) (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292)))))))

(assert (=> b!6269924 (= e!3813472 e!3813470)))

(declare-fun b!6269925 () Bool)

(assert (=> b!6269925 (= e!3813467 call!530139)))

(declare-fun b!6269926 () Bool)

(assert (=> b!6269926 (= e!3813466 call!530139)))

(declare-fun b!6269927 () Bool)

(assert (=> b!6269927 (= e!3813468 e!3813469)))

(declare-fun res!2586376 () Bool)

(assert (=> b!6269927 (= res!2586376 (not (nullable!6182 (reg!16518 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))))))))

(assert (=> b!6269927 (=> (not res!2586376) (not e!3813469))))

(declare-fun bm!530136 () Bool)

(assert (=> bm!530136 (= call!530140 (validRegex!7925 (ite c!1136094 (reg!16518 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))) (ite c!1136093 (regTwo!32891 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292))) (regTwo!32890 (ite c!1135942 (regOne!32891 r!7292) (regOne!32890 r!7292)))))))))

(assert (= (and d!1967782 (not res!2586375)) b!6269919))

(assert (= (and b!6269919 c!1136094) b!6269927))

(assert (= (and b!6269919 (not c!1136094)) b!6269920))

(assert (= (and b!6269927 res!2586376) b!6269922))

(assert (= (and b!6269920 c!1136093) b!6269923))

(assert (= (and b!6269920 (not c!1136093)) b!6269924))

(assert (= (and b!6269923 res!2586372) b!6269926))

(assert (= (and b!6269924 (not res!2586374)) b!6269921))

(assert (= (and b!6269921 res!2586373) b!6269925))

(assert (= (or b!6269926 b!6269925) bm!530134))

(assert (= (or b!6269923 b!6269921) bm!530135))

(assert (= (or b!6269922 bm!530134) bm!530136))

(declare-fun m!7091712 () Bool)

(assert (=> bm!530135 m!7091712))

(declare-fun m!7091714 () Bool)

(assert (=> b!6269927 m!7091714))

(declare-fun m!7091716 () Bool)

(assert (=> bm!530136 m!7091716))

(assert (=> bm!530065 d!1967782))

(declare-fun b!6269928 () Bool)

(declare-fun e!3813473 () Bool)

(assert (=> b!6269928 (= e!3813473 (matchR!8372 (derivativeStep!4898 (regOne!32890 r!7292) (head!12878 (_1!36471 (get!22373 lt!2351791)))) (tail!11963 (_1!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6269929 () Bool)

(declare-fun e!3813474 () Bool)

(declare-fun e!3813478 () Bool)

(assert (=> b!6269929 (= e!3813474 e!3813478)))

(declare-fun res!2586384 () Bool)

(assert (=> b!6269929 (=> (not res!2586384) (not e!3813478))))

(declare-fun lt!2351810 () Bool)

(assert (=> b!6269929 (= res!2586384 (not lt!2351810))))

(declare-fun b!6269930 () Bool)

(declare-fun res!2586379 () Bool)

(assert (=> b!6269930 (=> res!2586379 e!3813474)))

(assert (=> b!6269930 (= res!2586379 (not ((_ is ElementMatch!16189) (regOne!32890 r!7292))))))

(declare-fun e!3813479 () Bool)

(assert (=> b!6269930 (= e!3813479 e!3813474)))

(declare-fun b!6269931 () Bool)

(declare-fun e!3813477 () Bool)

(assert (=> b!6269931 (= e!3813477 e!3813479)))

(declare-fun c!1136096 () Bool)

(assert (=> b!6269931 (= c!1136096 ((_ is EmptyLang!16189) (regOne!32890 r!7292)))))

(declare-fun b!6269932 () Bool)

(declare-fun call!530142 () Bool)

(assert (=> b!6269932 (= e!3813477 (= lt!2351810 call!530142))))

(declare-fun b!6269934 () Bool)

(declare-fun res!2586377 () Bool)

(declare-fun e!3813476 () Bool)

(assert (=> b!6269934 (=> res!2586377 e!3813476)))

(assert (=> b!6269934 (= res!2586377 (not (isEmpty!36777 (tail!11963 (_1!36471 (get!22373 lt!2351791))))))))

(declare-fun bm!530137 () Bool)

(assert (=> bm!530137 (= call!530142 (isEmpty!36777 (_1!36471 (get!22373 lt!2351791))))))

(declare-fun b!6269935 () Bool)

(declare-fun res!2586382 () Bool)

(assert (=> b!6269935 (=> res!2586382 e!3813474)))

(declare-fun e!3813475 () Bool)

(assert (=> b!6269935 (= res!2586382 e!3813475)))

(declare-fun res!2586380 () Bool)

(assert (=> b!6269935 (=> (not res!2586380) (not e!3813475))))

(assert (=> b!6269935 (= res!2586380 lt!2351810)))

(declare-fun b!6269936 () Bool)

(assert (=> b!6269936 (= e!3813473 (nullable!6182 (regOne!32890 r!7292)))))

(declare-fun b!6269937 () Bool)

(assert (=> b!6269937 (= e!3813476 (not (= (head!12878 (_1!36471 (get!22373 lt!2351791))) (c!1135772 (regOne!32890 r!7292)))))))

(declare-fun b!6269938 () Bool)

(declare-fun res!2586381 () Bool)

(assert (=> b!6269938 (=> (not res!2586381) (not e!3813475))))

(assert (=> b!6269938 (= res!2586381 (isEmpty!36777 (tail!11963 (_1!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6269939 () Bool)

(assert (=> b!6269939 (= e!3813478 e!3813476)))

(declare-fun res!2586378 () Bool)

(assert (=> b!6269939 (=> res!2586378 e!3813476)))

(assert (=> b!6269939 (= res!2586378 call!530142)))

(declare-fun b!6269933 () Bool)

(assert (=> b!6269933 (= e!3813479 (not lt!2351810))))

(declare-fun d!1967784 () Bool)

(assert (=> d!1967784 e!3813477))

(declare-fun c!1136095 () Bool)

(assert (=> d!1967784 (= c!1136095 ((_ is EmptyExpr!16189) (regOne!32890 r!7292)))))

(assert (=> d!1967784 (= lt!2351810 e!3813473)))

(declare-fun c!1136097 () Bool)

(assert (=> d!1967784 (= c!1136097 (isEmpty!36777 (_1!36471 (get!22373 lt!2351791))))))

(assert (=> d!1967784 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1967784 (= (matchR!8372 (regOne!32890 r!7292) (_1!36471 (get!22373 lt!2351791))) lt!2351810)))

(declare-fun b!6269940 () Bool)

(declare-fun res!2586383 () Bool)

(assert (=> b!6269940 (=> (not res!2586383) (not e!3813475))))

(assert (=> b!6269940 (= res!2586383 (not call!530142))))

(declare-fun b!6269941 () Bool)

(assert (=> b!6269941 (= e!3813475 (= (head!12878 (_1!36471 (get!22373 lt!2351791))) (c!1135772 (regOne!32890 r!7292))))))

(assert (= (and d!1967784 c!1136097) b!6269936))

(assert (= (and d!1967784 (not c!1136097)) b!6269928))

(assert (= (and d!1967784 c!1136095) b!6269932))

(assert (= (and d!1967784 (not c!1136095)) b!6269931))

(assert (= (and b!6269931 c!1136096) b!6269933))

(assert (= (and b!6269931 (not c!1136096)) b!6269930))

(assert (= (and b!6269930 (not res!2586379)) b!6269935))

(assert (= (and b!6269935 res!2586380) b!6269940))

(assert (= (and b!6269940 res!2586383) b!6269938))

(assert (= (and b!6269938 res!2586381) b!6269941))

(assert (= (and b!6269935 (not res!2586382)) b!6269929))

(assert (= (and b!6269929 res!2586384) b!6269939))

(assert (= (and b!6269939 (not res!2586378)) b!6269934))

(assert (= (and b!6269934 (not res!2586377)) b!6269937))

(assert (= (or b!6269932 b!6269939 b!6269940) bm!530137))

(declare-fun m!7091718 () Bool)

(assert (=> d!1967784 m!7091718))

(assert (=> d!1967784 m!7091560))

(declare-fun m!7091720 () Bool)

(assert (=> b!6269937 m!7091720))

(declare-fun m!7091722 () Bool)

(assert (=> b!6269938 m!7091722))

(assert (=> b!6269938 m!7091722))

(declare-fun m!7091724 () Bool)

(assert (=> b!6269938 m!7091724))

(declare-fun m!7091726 () Bool)

(assert (=> b!6269936 m!7091726))

(assert (=> b!6269934 m!7091722))

(assert (=> b!6269934 m!7091722))

(assert (=> b!6269934 m!7091724))

(assert (=> b!6269928 m!7091720))

(assert (=> b!6269928 m!7091720))

(declare-fun m!7091728 () Bool)

(assert (=> b!6269928 m!7091728))

(assert (=> b!6269928 m!7091722))

(assert (=> b!6269928 m!7091728))

(assert (=> b!6269928 m!7091722))

(declare-fun m!7091730 () Bool)

(assert (=> b!6269928 m!7091730))

(assert (=> bm!530137 m!7091718))

(assert (=> b!6269941 m!7091720))

(assert (=> b!6269771 d!1967784))

(declare-fun d!1967786 () Bool)

(assert (=> d!1967786 (= (get!22373 lt!2351791) (v!52234 lt!2351791))))

(assert (=> b!6269771 d!1967786))

(declare-fun bs!1565413 () Bool)

(declare-fun d!1967788 () Bool)

(assert (= bs!1565413 (and d!1967788 d!1967528)))

(declare-fun lambda!343420 () Int)

(assert (=> bs!1565413 (= lambda!343420 lambda!343380)))

(declare-fun bs!1565414 () Bool)

(assert (= bs!1565414 (and d!1967788 d!1967658)))

(assert (=> bs!1565414 (= lambda!343420 lambda!343400)))

(declare-fun bs!1565415 () Bool)

(assert (= bs!1565415 (and d!1967788 d!1967514)))

(assert (=> bs!1565415 (= lambda!343420 lambda!343358)))

(declare-fun bs!1565416 () Bool)

(assert (= bs!1565416 (and d!1967788 d!1967540)))

(assert (=> bs!1565416 (= lambda!343420 lambda!343381)))

(declare-fun bs!1565417 () Bool)

(assert (= bs!1565417 (and d!1967788 d!1967516)))

(assert (=> bs!1565417 (= lambda!343420 lambda!343362)))

(declare-fun bs!1565418 () Bool)

(assert (= bs!1565418 (and d!1967788 d!1967668)))

(assert (=> bs!1565418 (= lambda!343420 lambda!343401)))

(declare-fun bs!1565419 () Bool)

(assert (= bs!1565419 (and d!1967788 d!1967524)))

(assert (=> bs!1565419 (= lambda!343420 lambda!343365)))

(assert (=> d!1967788 (= (inv!83719 setElem!42638) (forall!15316 (exprs!6073 setElem!42638) lambda!343420))))

(declare-fun bs!1565420 () Bool)

(assert (= bs!1565420 d!1967788))

(declare-fun m!7091736 () Bool)

(assert (=> bs!1565420 m!7091736))

(assert (=> setNonEmpty!42638 d!1967788))

(declare-fun d!1967792 () Bool)

(declare-fun c!1136100 () Bool)

(assert (=> d!1967792 (= c!1136100 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813485 () Bool)

(assert (=> d!1967792 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351610) (t!378424 s!2326)) e!3813485)))

(declare-fun b!6269951 () Bool)

(assert (=> b!6269951 (= e!3813485 (nullableZipper!1959 ((_ map or) lt!2351621 lt!2351610)))))

(declare-fun b!6269952 () Bool)

(assert (=> b!6269952 (= e!3813485 (matchZipper!2201 (derivationStepZipper!2155 ((_ map or) lt!2351621 lt!2351610) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1967792 c!1136100) b!6269951))

(assert (= (and d!1967792 (not c!1136100)) b!6269952))

(assert (=> d!1967792 m!7091024))

(declare-fun m!7091738 () Bool)

(assert (=> b!6269951 m!7091738))

(assert (=> b!6269952 m!7091028))

(assert (=> b!6269952 m!7091028))

(declare-fun m!7091740 () Bool)

(assert (=> b!6269952 m!7091740))

(assert (=> b!6269952 m!7091032))

(assert (=> b!6269952 m!7091740))

(assert (=> b!6269952 m!7091032))

(declare-fun m!7091742 () Bool)

(assert (=> b!6269952 m!7091742))

(assert (=> d!1967544 d!1967792))

(assert (=> d!1967544 d!1967584))

(declare-fun e!3813494 () Bool)

(declare-fun d!1967794 () Bool)

(assert (=> d!1967794 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351610) (t!378424 s!2326)) e!3813494)))

(declare-fun res!2586393 () Bool)

(assert (=> d!1967794 (=> res!2586393 e!3813494)))

(assert (=> d!1967794 (= res!2586393 (matchZipper!2201 lt!2351621 (t!378424 s!2326)))))

(assert (=> d!1967794 true))

(declare-fun _$48!2020 () Unit!158087)

(assert (=> d!1967794 (= (choose!46512 lt!2351621 lt!2351610 (t!378424 s!2326)) _$48!2020)))

(declare-fun b!6269966 () Bool)

(assert (=> b!6269966 (= e!3813494 (matchZipper!2201 lt!2351610 (t!378424 s!2326)))))

(assert (= (and d!1967794 (not res!2586393)) b!6269966))

(assert (=> d!1967794 m!7091150))

(assert (=> d!1967794 m!7090780))

(assert (=> b!6269966 m!7090756))

(assert (=> d!1967544 d!1967794))

(declare-fun d!1967800 () Bool)

(assert (=> d!1967800 (= (nullable!6182 (h!71190 (exprs!6073 lt!2351625))) (nullableFct!2133 (h!71190 (exprs!6073 lt!2351625))))))

(declare-fun bs!1565421 () Bool)

(assert (= bs!1565421 d!1967800))

(declare-fun m!7091766 () Bool)

(assert (=> bs!1565421 m!7091766))

(assert (=> b!6269010 d!1967800))

(declare-fun d!1967802 () Bool)

(declare-fun res!2586398 () Bool)

(declare-fun e!3813499 () Bool)

(assert (=> d!1967802 (=> res!2586398 e!3813499)))

(assert (=> d!1967802 (= res!2586398 ((_ is Nil!64743) zl!343))))

(assert (=> d!1967802 (= (forall!15315 zl!343 lambda!343346) e!3813499)))

(declare-fun b!6269971 () Bool)

(declare-fun e!3813500 () Bool)

(assert (=> b!6269971 (= e!3813499 e!3813500)))

(declare-fun res!2586399 () Bool)

(assert (=> b!6269971 (=> (not res!2586399) (not e!3813500))))

(declare-fun dynLambda!25600 (Int Context!11146) Bool)

(assert (=> b!6269971 (= res!2586399 (dynLambda!25600 lambda!343346 (h!71191 zl!343)))))

(declare-fun b!6269972 () Bool)

(assert (=> b!6269972 (= e!3813500 (forall!15315 (t!378423 zl!343) lambda!343346))))

(assert (= (and d!1967802 (not res!2586398)) b!6269971))

(assert (= (and b!6269971 res!2586399) b!6269972))

(declare-fun b_lambda!238737 () Bool)

(assert (=> (not b_lambda!238737) (not b!6269971)))

(declare-fun m!7091778 () Bool)

(assert (=> b!6269971 m!7091778))

(declare-fun m!7091780 () Bool)

(assert (=> b!6269972 m!7091780))

(assert (=> b!6269129 d!1967802))

(declare-fun d!1967806 () Bool)

(assert (=> d!1967806 (= (Exists!3259 (ite c!1136001 lambda!343393 lambda!343394)) (choose!46518 (ite c!1136001 lambda!343393 lambda!343394)))))

(declare-fun bs!1565423 () Bool)

(assert (= bs!1565423 d!1967806))

(declare-fun m!7091784 () Bool)

(assert (=> bs!1565423 m!7091784))

(assert (=> bm!530106 d!1967806))

(assert (=> bs!1565363 d!1967484))

(declare-fun d!1967810 () Bool)

(assert (=> d!1967810 (= (isEmptyLang!1603 lt!2351698) ((_ is EmptyLang!16189) lt!2351698))))

(assert (=> b!6269230 d!1967810))

(declare-fun d!1967814 () Bool)

(assert (=> d!1967814 (= (nullable!6182 (reg!16518 r!7292)) (nullableFct!2133 (reg!16518 r!7292)))))

(declare-fun bs!1565425 () Bool)

(assert (= bs!1565425 d!1967814))

(declare-fun m!7091788 () Bool)

(assert (=> bs!1565425 m!7091788))

(assert (=> b!6269357 d!1967814))

(declare-fun bm!530144 () Bool)

(declare-fun call!530154 () (InoxSet Context!11146))

(declare-fun call!530150 () (InoxSet Context!11146))

(assert (=> bm!530144 (= call!530154 call!530150)))

(declare-fun bm!530145 () Bool)

(declare-fun c!1136108 () Bool)

(declare-fun c!1136109 () Bool)

(declare-fun call!530153 () List!64866)

(assert (=> bm!530145 (= call!530153 ($colon$colon!2053 (exprs!6073 (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130))) (ite (or c!1136109 c!1136108) (regTwo!32890 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))))))))

(declare-fun d!1967816 () Bool)

(declare-fun c!1136107 () Bool)

(assert (=> d!1967816 (= c!1136107 (and ((_ is ElementMatch!16189) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (= (c!1135772 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (h!71192 s!2326))))))

(declare-fun e!3813507 () (InoxSet Context!11146))

(assert (=> d!1967816 (= (derivationStepZipperDown!1437 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))) (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130)) (h!71192 s!2326)) e!3813507)))

(declare-fun b!6269975 () Bool)

(declare-fun e!3813504 () (InoxSet Context!11146))

(declare-fun call!530149 () (InoxSet Context!11146))

(assert (=> b!6269975 (= e!3813504 ((_ map or) call!530149 call!530154))))

(declare-fun b!6269976 () Bool)

(declare-fun e!3813505 () (InoxSet Context!11146))

(assert (=> b!6269976 (= e!3813504 e!3813505)))

(assert (=> b!6269976 (= c!1136108 ((_ is Concat!25034) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))))))

(declare-fun b!6269977 () Bool)

(declare-fun e!3813506 () (InoxSet Context!11146))

(assert (=> b!6269977 (= e!3813506 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530146 () Bool)

(declare-fun call!530151 () List!64866)

(assert (=> bm!530146 (= call!530151 call!530153)))

(declare-fun b!6269978 () Bool)

(declare-fun call!530152 () (InoxSet Context!11146))

(assert (=> b!6269978 (= e!3813505 call!530152)))

(declare-fun bm!530147 () Bool)

(declare-fun c!1136111 () Bool)

(assert (=> bm!530147 (= call!530150 (derivationStepZipperDown!1437 (ite c!1136111 (regTwo!32891 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (ite c!1136109 (regTwo!32890 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (ite c!1136108 (regOne!32890 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (reg!16518 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))))))) (ite (or c!1136111 c!1136109) (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130)) (Context!11147 call!530151)) (h!71192 s!2326)))))

(declare-fun bm!530148 () Bool)

(assert (=> bm!530148 (= call!530149 (derivationStepZipperDown!1437 (ite c!1136111 (regOne!32891 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))) (regOne!32890 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))))) (ite c!1136111 (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130)) (Context!11147 call!530153)) (h!71192 s!2326)))))

(declare-fun e!3813503 () Bool)

(declare-fun b!6269979 () Bool)

(assert (=> b!6269979 (= e!3813503 (nullable!6182 (regOne!32890 (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292)))))))))))

(declare-fun c!1136110 () Bool)

(declare-fun b!6269980 () Bool)

(assert (=> b!6269980 (= c!1136110 ((_ is Star!16189) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))))))

(assert (=> b!6269980 (= e!3813505 e!3813506)))

(declare-fun b!6269981 () Bool)

(assert (=> b!6269981 (= c!1136109 e!3813503)))

(declare-fun res!2586400 () Bool)

(assert (=> b!6269981 (=> (not res!2586400) (not e!3813503))))

(assert (=> b!6269981 (= res!2586400 ((_ is Concat!25034) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))))))

(declare-fun e!3813502 () (InoxSet Context!11146))

(assert (=> b!6269981 (= e!3813502 e!3813504)))

(declare-fun b!6269982 () Bool)

(assert (=> b!6269982 (= e!3813507 (store ((as const (Array Context!11146 Bool)) false) (ite (or c!1136058 c!1136056) lt!2351634 (Context!11147 call!530130)) true))))

(declare-fun b!6269983 () Bool)

(assert (=> b!6269983 (= e!3813502 ((_ map or) call!530149 call!530150))))

(declare-fun b!6269984 () Bool)

(assert (=> b!6269984 (= e!3813506 call!530152)))

(declare-fun bm!530149 () Bool)

(assert (=> bm!530149 (= call!530152 call!530154)))

(declare-fun b!6269985 () Bool)

(assert (=> b!6269985 (= e!3813507 e!3813502)))

(assert (=> b!6269985 (= c!1136111 ((_ is Union!16189) (ite c!1136058 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136056 (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (ite c!1136055 (regOne!32890 (regOne!32890 (regOne!32890 r!7292))) (reg!16518 (regOne!32890 (regOne!32890 r!7292))))))))))

(assert (= (and d!1967816 c!1136107) b!6269982))

(assert (= (and d!1967816 (not c!1136107)) b!6269985))

(assert (= (and b!6269985 c!1136111) b!6269983))

(assert (= (and b!6269985 (not c!1136111)) b!6269981))

(assert (= (and b!6269981 res!2586400) b!6269979))

(assert (= (and b!6269981 c!1136109) b!6269975))

(assert (= (and b!6269981 (not c!1136109)) b!6269976))

(assert (= (and b!6269976 c!1136108) b!6269978))

(assert (= (and b!6269976 (not c!1136108)) b!6269980))

(assert (= (and b!6269980 c!1136110) b!6269984))

(assert (= (and b!6269980 (not c!1136110)) b!6269977))

(assert (= (or b!6269978 b!6269984) bm!530146))

(assert (= (or b!6269978 b!6269984) bm!530149))

(assert (= (or b!6269975 bm!530146) bm!530145))

(assert (= (or b!6269975 bm!530149) bm!530144))

(assert (= (or b!6269983 bm!530144) bm!530147))

(assert (= (or b!6269983 b!6269975) bm!530148))

(declare-fun m!7091796 () Bool)

(assert (=> bm!530148 m!7091796))

(declare-fun m!7091798 () Bool)

(assert (=> b!6269982 m!7091798))

(declare-fun m!7091800 () Bool)

(assert (=> b!6269979 m!7091800))

(declare-fun m!7091802 () Bool)

(assert (=> bm!530145 m!7091802))

(declare-fun m!7091806 () Bool)

(assert (=> bm!530147 m!7091806))

(assert (=> bm!530126 d!1967816))

(declare-fun b!6269986 () Bool)

(declare-fun e!3813513 () Bool)

(declare-fun e!3813510 () Bool)

(assert (=> b!6269986 (= e!3813513 e!3813510)))

(declare-fun c!1136113 () Bool)

(assert (=> b!6269986 (= c!1136113 ((_ is Star!16189) lt!2351724))))

(declare-fun d!1967822 () Bool)

(declare-fun res!2586404 () Bool)

(assert (=> d!1967822 (=> res!2586404 e!3813513)))

(assert (=> d!1967822 (= res!2586404 ((_ is ElementMatch!16189) lt!2351724))))

(assert (=> d!1967822 (= (validRegex!7925 lt!2351724) e!3813513)))

(declare-fun bm!530150 () Bool)

(declare-fun call!530155 () Bool)

(declare-fun call!530156 () Bool)

(assert (=> bm!530150 (= call!530155 call!530156)))

(declare-fun b!6269987 () Bool)

(declare-fun e!3813514 () Bool)

(assert (=> b!6269987 (= e!3813510 e!3813514)))

(declare-fun c!1136112 () Bool)

(assert (=> b!6269987 (= c!1136112 ((_ is Union!16189) lt!2351724))))

(declare-fun b!6269988 () Bool)

(declare-fun e!3813512 () Bool)

(declare-fun e!3813509 () Bool)

(assert (=> b!6269988 (= e!3813512 e!3813509)))

(declare-fun res!2586402 () Bool)

(assert (=> b!6269988 (=> (not res!2586402) (not e!3813509))))

(declare-fun call!530157 () Bool)

(assert (=> b!6269988 (= res!2586402 call!530157)))

(declare-fun b!6269989 () Bool)

(declare-fun e!3813511 () Bool)

(assert (=> b!6269989 (= e!3813511 call!530156)))

(declare-fun b!6269990 () Bool)

(declare-fun res!2586401 () Bool)

(declare-fun e!3813508 () Bool)

(assert (=> b!6269990 (=> (not res!2586401) (not e!3813508))))

(assert (=> b!6269990 (= res!2586401 call!530157)))

(assert (=> b!6269990 (= e!3813514 e!3813508)))

(declare-fun bm!530151 () Bool)

(assert (=> bm!530151 (= call!530157 (validRegex!7925 (ite c!1136112 (regOne!32891 lt!2351724) (regOne!32890 lt!2351724))))))

(declare-fun b!6269991 () Bool)

(declare-fun res!2586403 () Bool)

(assert (=> b!6269991 (=> res!2586403 e!3813512)))

(assert (=> b!6269991 (= res!2586403 (not ((_ is Concat!25034) lt!2351724)))))

(assert (=> b!6269991 (= e!3813514 e!3813512)))

(declare-fun b!6269992 () Bool)

(assert (=> b!6269992 (= e!3813509 call!530155)))

(declare-fun b!6269993 () Bool)

(assert (=> b!6269993 (= e!3813508 call!530155)))

(declare-fun b!6269994 () Bool)

(assert (=> b!6269994 (= e!3813510 e!3813511)))

(declare-fun res!2586405 () Bool)

(assert (=> b!6269994 (= res!2586405 (not (nullable!6182 (reg!16518 lt!2351724))))))

(assert (=> b!6269994 (=> (not res!2586405) (not e!3813511))))

(declare-fun bm!530152 () Bool)

(assert (=> bm!530152 (= call!530156 (validRegex!7925 (ite c!1136113 (reg!16518 lt!2351724) (ite c!1136112 (regTwo!32891 lt!2351724) (regTwo!32890 lt!2351724)))))))

(assert (= (and d!1967822 (not res!2586404)) b!6269986))

(assert (= (and b!6269986 c!1136113) b!6269994))

(assert (= (and b!6269986 (not c!1136113)) b!6269987))

(assert (= (and b!6269994 res!2586405) b!6269989))

(assert (= (and b!6269987 c!1136112) b!6269990))

(assert (= (and b!6269987 (not c!1136112)) b!6269991))

(assert (= (and b!6269990 res!2586401) b!6269993))

(assert (= (and b!6269991 (not res!2586403)) b!6269988))

(assert (= (and b!6269988 res!2586402) b!6269992))

(assert (= (or b!6269993 b!6269992) bm!530150))

(assert (= (or b!6269990 b!6269988) bm!530151))

(assert (= (or b!6269989 bm!530150) bm!530152))

(declare-fun m!7091808 () Bool)

(assert (=> bm!530151 m!7091808))

(declare-fun m!7091810 () Bool)

(assert (=> b!6269994 m!7091810))

(declare-fun m!7091812 () Bool)

(assert (=> bm!530152 m!7091812))

(assert (=> d!1967528 d!1967822))

(declare-fun d!1967824 () Bool)

(declare-fun res!2586418 () Bool)

(declare-fun e!3813526 () Bool)

(assert (=> d!1967824 (=> res!2586418 e!3813526)))

(assert (=> d!1967824 (= res!2586418 ((_ is Nil!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> d!1967824 (= (forall!15316 (exprs!6073 (h!71191 zl!343)) lambda!343380) e!3813526)))

(declare-fun b!6270013 () Bool)

(declare-fun e!3813527 () Bool)

(assert (=> b!6270013 (= e!3813526 e!3813527)))

(declare-fun res!2586419 () Bool)

(assert (=> b!6270013 (=> (not res!2586419) (not e!3813527))))

(declare-fun dynLambda!25601 (Int Regex!16189) Bool)

(assert (=> b!6270013 (= res!2586419 (dynLambda!25601 lambda!343380 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270014 () Bool)

(assert (=> b!6270014 (= e!3813527 (forall!15316 (t!378422 (exprs!6073 (h!71191 zl!343))) lambda!343380))))

(assert (= (and d!1967824 (not res!2586418)) b!6270013))

(assert (= (and b!6270013 res!2586419) b!6270014))

(declare-fun b_lambda!238739 () Bool)

(assert (=> (not b_lambda!238739) (not b!6270013)))

(declare-fun m!7091828 () Bool)

(assert (=> b!6270013 m!7091828))

(declare-fun m!7091830 () Bool)

(assert (=> b!6270014 m!7091830))

(assert (=> d!1967528 d!1967824))

(declare-fun bm!530154 () Bool)

(declare-fun call!530164 () (InoxSet Context!11146))

(declare-fun call!530160 () (InoxSet Context!11146))

(assert (=> bm!530154 (= call!530164 call!530160)))

(declare-fun call!530163 () List!64866)

(declare-fun bm!530155 () Bool)

(declare-fun c!1136119 () Bool)

(declare-fun c!1136118 () Bool)

(assert (=> bm!530155 (= call!530163 ($colon$colon!2053 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))) (ite (or c!1136119 c!1136118) (regTwo!32890 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))))

(declare-fun d!1967828 () Bool)

(declare-fun c!1136117 () Bool)

(assert (=> d!1967828 (= c!1136117 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (= (c!1135772 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326))))))

(declare-fun e!3813533 () (InoxSet Context!11146))

(assert (=> d!1967828 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326)) e!3813533)))

(declare-fun b!6270015 () Bool)

(declare-fun e!3813530 () (InoxSet Context!11146))

(declare-fun call!530159 () (InoxSet Context!11146))

(assert (=> b!6270015 (= e!3813530 ((_ map or) call!530159 call!530164))))

(declare-fun b!6270016 () Bool)

(declare-fun e!3813531 () (InoxSet Context!11146))

(assert (=> b!6270016 (= e!3813530 e!3813531)))

(assert (=> b!6270016 (= c!1136118 ((_ is Concat!25034) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun b!6270017 () Bool)

(declare-fun e!3813532 () (InoxSet Context!11146))

(assert (=> b!6270017 (= e!3813532 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530156 () Bool)

(declare-fun call!530161 () List!64866)

(assert (=> bm!530156 (= call!530161 call!530163)))

(declare-fun b!6270018 () Bool)

(declare-fun call!530162 () (InoxSet Context!11146))

(assert (=> b!6270018 (= e!3813531 call!530162)))

(declare-fun c!1136121 () Bool)

(declare-fun bm!530157 () Bool)

(assert (=> bm!530157 (= call!530160 (derivationStepZipperDown!1437 (ite c!1136121 (regTwo!32891 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (ite c!1136119 (regTwo!32890 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (ite c!1136118 (regOne!32890 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (reg!16518 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))) (ite (or c!1136121 c!1136119) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (Context!11147 call!530161)) (h!71192 s!2326)))))

(declare-fun bm!530158 () Bool)

(assert (=> bm!530158 (= call!530159 (derivationStepZipperDown!1437 (ite c!1136121 (regOne!32891 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (regOne!32890 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))) (ite c!1136121 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (Context!11147 call!530163)) (h!71192 s!2326)))))

(declare-fun b!6270019 () Bool)

(declare-fun e!3813529 () Bool)

(assert (=> b!6270019 (= e!3813529 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))))

(declare-fun b!6270020 () Bool)

(declare-fun c!1136120 () Bool)

(assert (=> b!6270020 (= c!1136120 ((_ is Star!16189) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(assert (=> b!6270020 (= e!3813531 e!3813532)))

(declare-fun b!6270021 () Bool)

(assert (=> b!6270021 (= c!1136119 e!3813529)))

(declare-fun res!2586420 () Bool)

(assert (=> b!6270021 (=> (not res!2586420) (not e!3813529))))

(assert (=> b!6270021 (= res!2586420 ((_ is Concat!25034) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun e!3813528 () (InoxSet Context!11146))

(assert (=> b!6270021 (= e!3813528 e!3813530)))

(declare-fun b!6270022 () Bool)

(assert (=> b!6270022 (= e!3813533 (store ((as const (Array Context!11146 Bool)) false) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) true))))

(declare-fun b!6270023 () Bool)

(assert (=> b!6270023 (= e!3813528 ((_ map or) call!530159 call!530160))))

(declare-fun b!6270024 () Bool)

(assert (=> b!6270024 (= e!3813532 call!530162)))

(declare-fun bm!530159 () Bool)

(assert (=> bm!530159 (= call!530162 call!530164)))

(declare-fun b!6270025 () Bool)

(assert (=> b!6270025 (= e!3813533 e!3813528)))

(assert (=> b!6270025 (= c!1136121 ((_ is Union!16189) (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(assert (= (and d!1967828 c!1136117) b!6270022))

(assert (= (and d!1967828 (not c!1136117)) b!6270025))

(assert (= (and b!6270025 c!1136121) b!6270023))

(assert (= (and b!6270025 (not c!1136121)) b!6270021))

(assert (= (and b!6270021 res!2586420) b!6270019))

(assert (= (and b!6270021 c!1136119) b!6270015))

(assert (= (and b!6270021 (not c!1136119)) b!6270016))

(assert (= (and b!6270016 c!1136118) b!6270018))

(assert (= (and b!6270016 (not c!1136118)) b!6270020))

(assert (= (and b!6270020 c!1136120) b!6270024))

(assert (= (and b!6270020 (not c!1136120)) b!6270017))

(assert (= (or b!6270018 b!6270024) bm!530156))

(assert (= (or b!6270018 b!6270024) bm!530159))

(assert (= (or b!6270015 bm!530156) bm!530155))

(assert (= (or b!6270015 bm!530159) bm!530154))

(assert (= (or b!6270023 bm!530154) bm!530157))

(assert (= (or b!6270023 b!6270015) bm!530158))

(declare-fun m!7091832 () Bool)

(assert (=> bm!530158 m!7091832))

(declare-fun m!7091834 () Bool)

(assert (=> b!6270022 m!7091834))

(declare-fun m!7091836 () Bool)

(assert (=> b!6270019 m!7091836))

(declare-fun m!7091838 () Bool)

(assert (=> bm!530155 m!7091838))

(declare-fun m!7091840 () Bool)

(assert (=> bm!530157 m!7091840))

(assert (=> bm!530022 d!1967828))

(declare-fun b!6270026 () Bool)

(declare-fun e!3813534 () Bool)

(assert (=> b!6270026 (= e!3813534 (matchR!8372 (derivativeStep!4898 (derivativeStep!4898 lt!2351615 (head!12878 s!2326)) (head!12878 (tail!11963 s!2326))) (tail!11963 (tail!11963 s!2326))))))

(declare-fun b!6270027 () Bool)

(declare-fun e!3813535 () Bool)

(declare-fun e!3813539 () Bool)

(assert (=> b!6270027 (= e!3813535 e!3813539)))

(declare-fun res!2586428 () Bool)

(assert (=> b!6270027 (=> (not res!2586428) (not e!3813539))))

(declare-fun lt!2351816 () Bool)

(assert (=> b!6270027 (= res!2586428 (not lt!2351816))))

(declare-fun b!6270028 () Bool)

(declare-fun res!2586423 () Bool)

(assert (=> b!6270028 (=> res!2586423 e!3813535)))

(assert (=> b!6270028 (= res!2586423 (not ((_ is ElementMatch!16189) (derivativeStep!4898 lt!2351615 (head!12878 s!2326)))))))

(declare-fun e!3813540 () Bool)

(assert (=> b!6270028 (= e!3813540 e!3813535)))

(declare-fun b!6270029 () Bool)

(declare-fun e!3813538 () Bool)

(assert (=> b!6270029 (= e!3813538 e!3813540)))

(declare-fun c!1136123 () Bool)

(assert (=> b!6270029 (= c!1136123 ((_ is EmptyLang!16189) (derivativeStep!4898 lt!2351615 (head!12878 s!2326))))))

(declare-fun b!6270030 () Bool)

(declare-fun call!530165 () Bool)

(assert (=> b!6270030 (= e!3813538 (= lt!2351816 call!530165))))

(declare-fun b!6270032 () Bool)

(declare-fun res!2586421 () Bool)

(declare-fun e!3813537 () Bool)

(assert (=> b!6270032 (=> res!2586421 e!3813537)))

(assert (=> b!6270032 (= res!2586421 (not (isEmpty!36777 (tail!11963 (tail!11963 s!2326)))))))

(declare-fun bm!530160 () Bool)

(assert (=> bm!530160 (= call!530165 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun b!6270033 () Bool)

(declare-fun res!2586426 () Bool)

(assert (=> b!6270033 (=> res!2586426 e!3813535)))

(declare-fun e!3813536 () Bool)

(assert (=> b!6270033 (= res!2586426 e!3813536)))

(declare-fun res!2586424 () Bool)

(assert (=> b!6270033 (=> (not res!2586424) (not e!3813536))))

(assert (=> b!6270033 (= res!2586424 lt!2351816)))

(declare-fun b!6270034 () Bool)

(assert (=> b!6270034 (= e!3813534 (nullable!6182 (derivativeStep!4898 lt!2351615 (head!12878 s!2326))))))

(declare-fun b!6270035 () Bool)

(assert (=> b!6270035 (= e!3813537 (not (= (head!12878 (tail!11963 s!2326)) (c!1135772 (derivativeStep!4898 lt!2351615 (head!12878 s!2326))))))))

(declare-fun b!6270036 () Bool)

(declare-fun res!2586425 () Bool)

(assert (=> b!6270036 (=> (not res!2586425) (not e!3813536))))

(assert (=> b!6270036 (= res!2586425 (isEmpty!36777 (tail!11963 (tail!11963 s!2326))))))

(declare-fun b!6270037 () Bool)

(assert (=> b!6270037 (= e!3813539 e!3813537)))

(declare-fun res!2586422 () Bool)

(assert (=> b!6270037 (=> res!2586422 e!3813537)))

(assert (=> b!6270037 (= res!2586422 call!530165)))

(declare-fun b!6270031 () Bool)

(assert (=> b!6270031 (= e!3813540 (not lt!2351816))))

(declare-fun d!1967830 () Bool)

(assert (=> d!1967830 e!3813538))

(declare-fun c!1136122 () Bool)

(assert (=> d!1967830 (= c!1136122 ((_ is EmptyExpr!16189) (derivativeStep!4898 lt!2351615 (head!12878 s!2326))))))

(assert (=> d!1967830 (= lt!2351816 e!3813534)))

(declare-fun c!1136124 () Bool)

(assert (=> d!1967830 (= c!1136124 (isEmpty!36777 (tail!11963 s!2326)))))

(assert (=> d!1967830 (validRegex!7925 (derivativeStep!4898 lt!2351615 (head!12878 s!2326)))))

(assert (=> d!1967830 (= (matchR!8372 (derivativeStep!4898 lt!2351615 (head!12878 s!2326)) (tail!11963 s!2326)) lt!2351816)))

(declare-fun b!6270038 () Bool)

(declare-fun res!2586427 () Bool)

(assert (=> b!6270038 (=> (not res!2586427) (not e!3813536))))

(assert (=> b!6270038 (= res!2586427 (not call!530165))))

(declare-fun b!6270039 () Bool)

(assert (=> b!6270039 (= e!3813536 (= (head!12878 (tail!11963 s!2326)) (c!1135772 (derivativeStep!4898 lt!2351615 (head!12878 s!2326)))))))

(assert (= (and d!1967830 c!1136124) b!6270034))

(assert (= (and d!1967830 (not c!1136124)) b!6270026))

(assert (= (and d!1967830 c!1136122) b!6270030))

(assert (= (and d!1967830 (not c!1136122)) b!6270029))

(assert (= (and b!6270029 c!1136123) b!6270031))

(assert (= (and b!6270029 (not c!1136123)) b!6270028))

(assert (= (and b!6270028 (not res!2586423)) b!6270033))

(assert (= (and b!6270033 res!2586424) b!6270038))

(assert (= (and b!6270038 res!2586427) b!6270036))

(assert (= (and b!6270036 res!2586425) b!6270039))

(assert (= (and b!6270033 (not res!2586426)) b!6270027))

(assert (= (and b!6270027 res!2586428) b!6270037))

(assert (= (and b!6270037 (not res!2586422)) b!6270032))

(assert (= (and b!6270032 (not res!2586421)) b!6270035))

(assert (= (or b!6270030 b!6270037 b!6270038) bm!530160))

(assert (=> d!1967830 m!7091372))

(assert (=> d!1967830 m!7091374))

(assert (=> d!1967830 m!7091492))

(declare-fun m!7091842 () Bool)

(assert (=> d!1967830 m!7091842))

(assert (=> b!6270035 m!7091372))

(declare-fun m!7091844 () Bool)

(assert (=> b!6270035 m!7091844))

(assert (=> b!6270036 m!7091372))

(declare-fun m!7091846 () Bool)

(assert (=> b!6270036 m!7091846))

(assert (=> b!6270036 m!7091846))

(declare-fun m!7091848 () Bool)

(assert (=> b!6270036 m!7091848))

(assert (=> b!6270034 m!7091492))

(declare-fun m!7091850 () Bool)

(assert (=> b!6270034 m!7091850))

(assert (=> b!6270032 m!7091372))

(assert (=> b!6270032 m!7091846))

(assert (=> b!6270032 m!7091846))

(assert (=> b!6270032 m!7091848))

(assert (=> b!6270026 m!7091372))

(assert (=> b!6270026 m!7091844))

(assert (=> b!6270026 m!7091492))

(assert (=> b!6270026 m!7091844))

(declare-fun m!7091852 () Bool)

(assert (=> b!6270026 m!7091852))

(assert (=> b!6270026 m!7091372))

(assert (=> b!6270026 m!7091846))

(assert (=> b!6270026 m!7091852))

(assert (=> b!6270026 m!7091846))

(declare-fun m!7091854 () Bool)

(assert (=> b!6270026 m!7091854))

(assert (=> bm!530160 m!7091372))

(assert (=> bm!530160 m!7091374))

(assert (=> b!6270039 m!7091372))

(assert (=> b!6270039 m!7091844))

(assert (=> b!6269691 d!1967830))

(declare-fun call!530183 () Regex!16189)

(declare-fun call!530185 () Regex!16189)

(declare-fun b!6270080 () Bool)

(declare-fun e!3813562 () Regex!16189)

(assert (=> b!6270080 (= e!3813562 (Union!16189 (Concat!25034 call!530185 (regTwo!32890 lt!2351615)) call!530183))))

(declare-fun c!1136146 () Bool)

(declare-fun bm!530177 () Bool)

(declare-fun call!530182 () Regex!16189)

(declare-fun c!1136149 () Bool)

(assert (=> bm!530177 (= call!530182 (derivativeStep!4898 (ite c!1136146 (regTwo!32891 lt!2351615) (ite c!1136149 (reg!16518 lt!2351615) (regOne!32890 lt!2351615))) (head!12878 s!2326)))))

(declare-fun bm!530178 () Bool)

(declare-fun call!530184 () Regex!16189)

(assert (=> bm!530178 (= call!530183 call!530184)))

(declare-fun b!6270081 () Bool)

(declare-fun e!3813564 () Regex!16189)

(assert (=> b!6270081 (= e!3813564 EmptyLang!16189)))

(declare-fun bm!530179 () Bool)

(assert (=> bm!530179 (= call!530185 call!530182)))

(declare-fun b!6270082 () Bool)

(assert (=> b!6270082 (= e!3813562 (Union!16189 (Concat!25034 call!530183 (regTwo!32890 lt!2351615)) EmptyLang!16189))))

(declare-fun b!6270083 () Bool)

(declare-fun e!3813561 () Regex!16189)

(assert (=> b!6270083 (= e!3813561 (Concat!25034 call!530185 lt!2351615))))

(declare-fun b!6270084 () Bool)

(assert (=> b!6270084 (= c!1136146 ((_ is Union!16189) lt!2351615))))

(declare-fun e!3813563 () Regex!16189)

(declare-fun e!3813565 () Regex!16189)

(assert (=> b!6270084 (= e!3813563 e!3813565)))

(declare-fun b!6270086 () Bool)

(assert (=> b!6270086 (= e!3813565 (Union!16189 call!530184 call!530182))))

(declare-fun b!6270087 () Bool)

(assert (=> b!6270087 (= e!3813565 e!3813561)))

(assert (=> b!6270087 (= c!1136149 ((_ is Star!16189) lt!2351615))))

(declare-fun b!6270088 () Bool)

(assert (=> b!6270088 (= e!3813564 e!3813563)))

(declare-fun c!1136145 () Bool)

(assert (=> b!6270088 (= c!1136145 ((_ is ElementMatch!16189) lt!2351615))))

(declare-fun d!1967832 () Bool)

(declare-fun lt!2351821 () Regex!16189)

(assert (=> d!1967832 (validRegex!7925 lt!2351821)))

(assert (=> d!1967832 (= lt!2351821 e!3813564)))

(declare-fun c!1136147 () Bool)

(assert (=> d!1967832 (= c!1136147 (or ((_ is EmptyExpr!16189) lt!2351615) ((_ is EmptyLang!16189) lt!2351615)))))

(assert (=> d!1967832 (validRegex!7925 lt!2351615)))

(assert (=> d!1967832 (= (derivativeStep!4898 lt!2351615 (head!12878 s!2326)) lt!2351821)))

(declare-fun b!6270085 () Bool)

(declare-fun c!1136148 () Bool)

(assert (=> b!6270085 (= c!1136148 (nullable!6182 (regOne!32890 lt!2351615)))))

(assert (=> b!6270085 (= e!3813561 e!3813562)))

(declare-fun b!6270089 () Bool)

(assert (=> b!6270089 (= e!3813563 (ite (= (head!12878 s!2326) (c!1135772 lt!2351615)) EmptyExpr!16189 EmptyLang!16189))))

(declare-fun bm!530180 () Bool)

(assert (=> bm!530180 (= call!530184 (derivativeStep!4898 (ite c!1136146 (regOne!32891 lt!2351615) (ite c!1136148 (regTwo!32890 lt!2351615) (regOne!32890 lt!2351615))) (head!12878 s!2326)))))

(assert (= (and d!1967832 c!1136147) b!6270081))

(assert (= (and d!1967832 (not c!1136147)) b!6270088))

(assert (= (and b!6270088 c!1136145) b!6270089))

(assert (= (and b!6270088 (not c!1136145)) b!6270084))

(assert (= (and b!6270084 c!1136146) b!6270086))

(assert (= (and b!6270084 (not c!1136146)) b!6270087))

(assert (= (and b!6270087 c!1136149) b!6270083))

(assert (= (and b!6270087 (not c!1136149)) b!6270085))

(assert (= (and b!6270085 c!1136148) b!6270080))

(assert (= (and b!6270085 (not c!1136148)) b!6270082))

(assert (= (or b!6270080 b!6270082) bm!530178))

(assert (= (or b!6270083 b!6270080) bm!530179))

(assert (= (or b!6270086 bm!530179) bm!530177))

(assert (= (or b!6270086 bm!530178) bm!530180))

(assert (=> bm!530177 m!7091370))

(declare-fun m!7091856 () Bool)

(assert (=> bm!530177 m!7091856))

(declare-fun m!7091858 () Bool)

(assert (=> d!1967832 m!7091858))

(assert (=> d!1967832 m!7091488))

(declare-fun m!7091860 () Bool)

(assert (=> b!6270085 m!7091860))

(assert (=> bm!530180 m!7091370))

(declare-fun m!7091862 () Bool)

(assert (=> bm!530180 m!7091862))

(assert (=> b!6269691 d!1967832))

(declare-fun d!1967834 () Bool)

(assert (=> d!1967834 (= (head!12878 s!2326) (h!71192 s!2326))))

(assert (=> b!6269691 d!1967834))

(declare-fun d!1967836 () Bool)

(assert (=> d!1967836 (= (tail!11963 s!2326) (t!378424 s!2326))))

(assert (=> b!6269691 d!1967836))

(declare-fun d!1967838 () Bool)

(assert (=> d!1967838 (= (isConcat!1118 lt!2351724) ((_ is Concat!25034) lt!2351724))))

(assert (=> b!6269291 d!1967838))

(declare-fun d!1967840 () Bool)

(declare-fun res!2586429 () Bool)

(declare-fun e!3813566 () Bool)

(assert (=> d!1967840 (=> res!2586429 e!3813566)))

(assert (=> d!1967840 (= res!2586429 ((_ is Nil!64742) (exprs!6073 setElem!42632)))))

(assert (=> d!1967840 (= (forall!15316 (exprs!6073 setElem!42632) lambda!343365) e!3813566)))

(declare-fun b!6270090 () Bool)

(declare-fun e!3813567 () Bool)

(assert (=> b!6270090 (= e!3813566 e!3813567)))

(declare-fun res!2586430 () Bool)

(assert (=> b!6270090 (=> (not res!2586430) (not e!3813567))))

(assert (=> b!6270090 (= res!2586430 (dynLambda!25601 lambda!343365 (h!71190 (exprs!6073 setElem!42632))))))

(declare-fun b!6270091 () Bool)

(assert (=> b!6270091 (= e!3813567 (forall!15316 (t!378422 (exprs!6073 setElem!42632)) lambda!343365))))

(assert (= (and d!1967840 (not res!2586429)) b!6270090))

(assert (= (and b!6270090 res!2586430) b!6270091))

(declare-fun b_lambda!238741 () Bool)

(assert (=> (not b_lambda!238741) (not b!6270090)))

(declare-fun m!7091864 () Bool)

(assert (=> b!6270090 m!7091864))

(declare-fun m!7091866 () Bool)

(assert (=> b!6270091 m!7091866))

(assert (=> d!1967524 d!1967840))

(assert (=> d!1967690 d!1967770))

(declare-fun b!6270092 () Bool)

(declare-fun e!3813568 () Bool)

(assert (=> b!6270092 (= e!3813568 (matchR!8372 (derivativeStep!4898 (regOne!32890 r!7292) (head!12878 Nil!64744)) (tail!11963 Nil!64744)))))

(declare-fun b!6270093 () Bool)

(declare-fun e!3813569 () Bool)

(declare-fun e!3813573 () Bool)

(assert (=> b!6270093 (= e!3813569 e!3813573)))

(declare-fun res!2586438 () Bool)

(assert (=> b!6270093 (=> (not res!2586438) (not e!3813573))))

(declare-fun lt!2351822 () Bool)

(assert (=> b!6270093 (= res!2586438 (not lt!2351822))))

(declare-fun b!6270094 () Bool)

(declare-fun res!2586433 () Bool)

(assert (=> b!6270094 (=> res!2586433 e!3813569)))

(assert (=> b!6270094 (= res!2586433 (not ((_ is ElementMatch!16189) (regOne!32890 r!7292))))))

(declare-fun e!3813574 () Bool)

(assert (=> b!6270094 (= e!3813574 e!3813569)))

(declare-fun b!6270095 () Bool)

(declare-fun e!3813572 () Bool)

(assert (=> b!6270095 (= e!3813572 e!3813574)))

(declare-fun c!1136151 () Bool)

(assert (=> b!6270095 (= c!1136151 ((_ is EmptyLang!16189) (regOne!32890 r!7292)))))

(declare-fun b!6270096 () Bool)

(declare-fun call!530186 () Bool)

(assert (=> b!6270096 (= e!3813572 (= lt!2351822 call!530186))))

(declare-fun b!6270098 () Bool)

(declare-fun res!2586431 () Bool)

(declare-fun e!3813571 () Bool)

(assert (=> b!6270098 (=> res!2586431 e!3813571)))

(assert (=> b!6270098 (= res!2586431 (not (isEmpty!36777 (tail!11963 Nil!64744))))))

(declare-fun bm!530181 () Bool)

(assert (=> bm!530181 (= call!530186 (isEmpty!36777 Nil!64744))))

(declare-fun b!6270099 () Bool)

(declare-fun res!2586436 () Bool)

(assert (=> b!6270099 (=> res!2586436 e!3813569)))

(declare-fun e!3813570 () Bool)

(assert (=> b!6270099 (= res!2586436 e!3813570)))

(declare-fun res!2586434 () Bool)

(assert (=> b!6270099 (=> (not res!2586434) (not e!3813570))))

(assert (=> b!6270099 (= res!2586434 lt!2351822)))

(declare-fun b!6270100 () Bool)

(assert (=> b!6270100 (= e!3813568 (nullable!6182 (regOne!32890 r!7292)))))

(declare-fun b!6270101 () Bool)

(assert (=> b!6270101 (= e!3813571 (not (= (head!12878 Nil!64744) (c!1135772 (regOne!32890 r!7292)))))))

(declare-fun b!6270102 () Bool)

(declare-fun res!2586435 () Bool)

(assert (=> b!6270102 (=> (not res!2586435) (not e!3813570))))

(assert (=> b!6270102 (= res!2586435 (isEmpty!36777 (tail!11963 Nil!64744)))))

(declare-fun b!6270103 () Bool)

(assert (=> b!6270103 (= e!3813573 e!3813571)))

(declare-fun res!2586432 () Bool)

(assert (=> b!6270103 (=> res!2586432 e!3813571)))

(assert (=> b!6270103 (= res!2586432 call!530186)))

(declare-fun b!6270097 () Bool)

(assert (=> b!6270097 (= e!3813574 (not lt!2351822))))

(declare-fun d!1967842 () Bool)

(assert (=> d!1967842 e!3813572))

(declare-fun c!1136150 () Bool)

(assert (=> d!1967842 (= c!1136150 ((_ is EmptyExpr!16189) (regOne!32890 r!7292)))))

(assert (=> d!1967842 (= lt!2351822 e!3813568)))

(declare-fun c!1136152 () Bool)

(assert (=> d!1967842 (= c!1136152 (isEmpty!36777 Nil!64744))))

(assert (=> d!1967842 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1967842 (= (matchR!8372 (regOne!32890 r!7292) Nil!64744) lt!2351822)))

(declare-fun b!6270104 () Bool)

(declare-fun res!2586437 () Bool)

(assert (=> b!6270104 (=> (not res!2586437) (not e!3813570))))

(assert (=> b!6270104 (= res!2586437 (not call!530186))))

(declare-fun b!6270105 () Bool)

(assert (=> b!6270105 (= e!3813570 (= (head!12878 Nil!64744) (c!1135772 (regOne!32890 r!7292))))))

(assert (= (and d!1967842 c!1136152) b!6270100))

(assert (= (and d!1967842 (not c!1136152)) b!6270092))

(assert (= (and d!1967842 c!1136150) b!6270096))

(assert (= (and d!1967842 (not c!1136150)) b!6270095))

(assert (= (and b!6270095 c!1136151) b!6270097))

(assert (= (and b!6270095 (not c!1136151)) b!6270094))

(assert (= (and b!6270094 (not res!2586433)) b!6270099))

(assert (= (and b!6270099 res!2586434) b!6270104))

(assert (= (and b!6270104 res!2586437) b!6270102))

(assert (= (and b!6270102 res!2586435) b!6270105))

(assert (= (and b!6270099 (not res!2586436)) b!6270093))

(assert (= (and b!6270093 res!2586438) b!6270103))

(assert (= (and b!6270103 (not res!2586432)) b!6270098))

(assert (= (and b!6270098 (not res!2586431)) b!6270101))

(assert (= (or b!6270096 b!6270103 b!6270104) bm!530181))

(declare-fun m!7091868 () Bool)

(assert (=> d!1967842 m!7091868))

(assert (=> d!1967842 m!7091560))

(declare-fun m!7091870 () Bool)

(assert (=> b!6270101 m!7091870))

(declare-fun m!7091872 () Bool)

(assert (=> b!6270102 m!7091872))

(assert (=> b!6270102 m!7091872))

(declare-fun m!7091874 () Bool)

(assert (=> b!6270102 m!7091874))

(assert (=> b!6270100 m!7091726))

(assert (=> b!6270098 m!7091872))

(assert (=> b!6270098 m!7091872))

(assert (=> b!6270098 m!7091874))

(assert (=> b!6270092 m!7091870))

(assert (=> b!6270092 m!7091870))

(declare-fun m!7091876 () Bool)

(assert (=> b!6270092 m!7091876))

(assert (=> b!6270092 m!7091872))

(assert (=> b!6270092 m!7091876))

(assert (=> b!6270092 m!7091872))

(declare-fun m!7091878 () Bool)

(assert (=> b!6270092 m!7091878))

(assert (=> bm!530181 m!7091868))

(assert (=> b!6270105 m!7091870))

(assert (=> d!1967690 d!1967842))

(declare-fun b!6270106 () Bool)

(declare-fun e!3813580 () Bool)

(declare-fun e!3813577 () Bool)

(assert (=> b!6270106 (= e!3813580 e!3813577)))

(declare-fun c!1136154 () Bool)

(assert (=> b!6270106 (= c!1136154 ((_ is Star!16189) (regOne!32890 r!7292)))))

(declare-fun d!1967844 () Bool)

(declare-fun res!2586442 () Bool)

(assert (=> d!1967844 (=> res!2586442 e!3813580)))

(assert (=> d!1967844 (= res!2586442 ((_ is ElementMatch!16189) (regOne!32890 r!7292)))))

(assert (=> d!1967844 (= (validRegex!7925 (regOne!32890 r!7292)) e!3813580)))

(declare-fun bm!530182 () Bool)

(declare-fun call!530187 () Bool)

(declare-fun call!530188 () Bool)

(assert (=> bm!530182 (= call!530187 call!530188)))

(declare-fun b!6270107 () Bool)

(declare-fun e!3813581 () Bool)

(assert (=> b!6270107 (= e!3813577 e!3813581)))

(declare-fun c!1136153 () Bool)

(assert (=> b!6270107 (= c!1136153 ((_ is Union!16189) (regOne!32890 r!7292)))))

(declare-fun b!6270108 () Bool)

(declare-fun e!3813579 () Bool)

(declare-fun e!3813576 () Bool)

(assert (=> b!6270108 (= e!3813579 e!3813576)))

(declare-fun res!2586440 () Bool)

(assert (=> b!6270108 (=> (not res!2586440) (not e!3813576))))

(declare-fun call!530189 () Bool)

(assert (=> b!6270108 (= res!2586440 call!530189)))

(declare-fun b!6270109 () Bool)

(declare-fun e!3813578 () Bool)

(assert (=> b!6270109 (= e!3813578 call!530188)))

(declare-fun b!6270110 () Bool)

(declare-fun res!2586439 () Bool)

(declare-fun e!3813575 () Bool)

(assert (=> b!6270110 (=> (not res!2586439) (not e!3813575))))

(assert (=> b!6270110 (= res!2586439 call!530189)))

(assert (=> b!6270110 (= e!3813581 e!3813575)))

(declare-fun bm!530183 () Bool)

(assert (=> bm!530183 (= call!530189 (validRegex!7925 (ite c!1136153 (regOne!32891 (regOne!32890 r!7292)) (regOne!32890 (regOne!32890 r!7292)))))))

(declare-fun b!6270111 () Bool)

(declare-fun res!2586441 () Bool)

(assert (=> b!6270111 (=> res!2586441 e!3813579)))

(assert (=> b!6270111 (= res!2586441 (not ((_ is Concat!25034) (regOne!32890 r!7292))))))

(assert (=> b!6270111 (= e!3813581 e!3813579)))

(declare-fun b!6270112 () Bool)

(assert (=> b!6270112 (= e!3813576 call!530187)))

(declare-fun b!6270113 () Bool)

(assert (=> b!6270113 (= e!3813575 call!530187)))

(declare-fun b!6270114 () Bool)

(assert (=> b!6270114 (= e!3813577 e!3813578)))

(declare-fun res!2586443 () Bool)

(assert (=> b!6270114 (= res!2586443 (not (nullable!6182 (reg!16518 (regOne!32890 r!7292)))))))

(assert (=> b!6270114 (=> (not res!2586443) (not e!3813578))))

(declare-fun bm!530184 () Bool)

(assert (=> bm!530184 (= call!530188 (validRegex!7925 (ite c!1136154 (reg!16518 (regOne!32890 r!7292)) (ite c!1136153 (regTwo!32891 (regOne!32890 r!7292)) (regTwo!32890 (regOne!32890 r!7292))))))))

(assert (= (and d!1967844 (not res!2586442)) b!6270106))

(assert (= (and b!6270106 c!1136154) b!6270114))

(assert (= (and b!6270106 (not c!1136154)) b!6270107))

(assert (= (and b!6270114 res!2586443) b!6270109))

(assert (= (and b!6270107 c!1136153) b!6270110))

(assert (= (and b!6270107 (not c!1136153)) b!6270111))

(assert (= (and b!6270110 res!2586439) b!6270113))

(assert (= (and b!6270111 (not res!2586441)) b!6270108))

(assert (= (and b!6270108 res!2586440) b!6270112))

(assert (= (or b!6270113 b!6270112) bm!530182))

(assert (= (or b!6270110 b!6270108) bm!530183))

(assert (= (or b!6270109 bm!530182) bm!530184))

(declare-fun m!7091880 () Bool)

(assert (=> bm!530183 m!7091880))

(declare-fun m!7091882 () Bool)

(assert (=> b!6270114 m!7091882))

(declare-fun m!7091884 () Bool)

(assert (=> bm!530184 m!7091884))

(assert (=> d!1967690 d!1967844))

(declare-fun d!1967846 () Bool)

(assert (=> d!1967846 (= (isEmpty!36777 s!2326) ((_ is Nil!64744) s!2326))))

(assert (=> d!1967670 d!1967846))

(declare-fun b!6270115 () Bool)

(declare-fun e!3813587 () Bool)

(declare-fun e!3813584 () Bool)

(assert (=> b!6270115 (= e!3813587 e!3813584)))

(declare-fun c!1136156 () Bool)

(assert (=> b!6270115 (= c!1136156 ((_ is Star!16189) lt!2351615))))

(declare-fun d!1967848 () Bool)

(declare-fun res!2586447 () Bool)

(assert (=> d!1967848 (=> res!2586447 e!3813587)))

(assert (=> d!1967848 (= res!2586447 ((_ is ElementMatch!16189) lt!2351615))))

(assert (=> d!1967848 (= (validRegex!7925 lt!2351615) e!3813587)))

(declare-fun bm!530185 () Bool)

(declare-fun call!530190 () Bool)

(declare-fun call!530191 () Bool)

(assert (=> bm!530185 (= call!530190 call!530191)))

(declare-fun b!6270116 () Bool)

(declare-fun e!3813588 () Bool)

(assert (=> b!6270116 (= e!3813584 e!3813588)))

(declare-fun c!1136155 () Bool)

(assert (=> b!6270116 (= c!1136155 ((_ is Union!16189) lt!2351615))))

(declare-fun b!6270117 () Bool)

(declare-fun e!3813586 () Bool)

(declare-fun e!3813583 () Bool)

(assert (=> b!6270117 (= e!3813586 e!3813583)))

(declare-fun res!2586445 () Bool)

(assert (=> b!6270117 (=> (not res!2586445) (not e!3813583))))

(declare-fun call!530192 () Bool)

(assert (=> b!6270117 (= res!2586445 call!530192)))

(declare-fun b!6270118 () Bool)

(declare-fun e!3813585 () Bool)

(assert (=> b!6270118 (= e!3813585 call!530191)))

(declare-fun b!6270119 () Bool)

(declare-fun res!2586444 () Bool)

(declare-fun e!3813582 () Bool)

(assert (=> b!6270119 (=> (not res!2586444) (not e!3813582))))

(assert (=> b!6270119 (= res!2586444 call!530192)))

(assert (=> b!6270119 (= e!3813588 e!3813582)))

(declare-fun bm!530186 () Bool)

(assert (=> bm!530186 (= call!530192 (validRegex!7925 (ite c!1136155 (regOne!32891 lt!2351615) (regOne!32890 lt!2351615))))))

(declare-fun b!6270120 () Bool)

(declare-fun res!2586446 () Bool)

(assert (=> b!6270120 (=> res!2586446 e!3813586)))

(assert (=> b!6270120 (= res!2586446 (not ((_ is Concat!25034) lt!2351615)))))

(assert (=> b!6270120 (= e!3813588 e!3813586)))

(declare-fun b!6270121 () Bool)

(assert (=> b!6270121 (= e!3813583 call!530190)))

(declare-fun b!6270122 () Bool)

(assert (=> b!6270122 (= e!3813582 call!530190)))

(declare-fun b!6270123 () Bool)

(assert (=> b!6270123 (= e!3813584 e!3813585)))

(declare-fun res!2586448 () Bool)

(assert (=> b!6270123 (= res!2586448 (not (nullable!6182 (reg!16518 lt!2351615))))))

(assert (=> b!6270123 (=> (not res!2586448) (not e!3813585))))

(declare-fun bm!530187 () Bool)

(assert (=> bm!530187 (= call!530191 (validRegex!7925 (ite c!1136156 (reg!16518 lt!2351615) (ite c!1136155 (regTwo!32891 lt!2351615) (regTwo!32890 lt!2351615)))))))

(assert (= (and d!1967848 (not res!2586447)) b!6270115))

(assert (= (and b!6270115 c!1136156) b!6270123))

(assert (= (and b!6270115 (not c!1136156)) b!6270116))

(assert (= (and b!6270123 res!2586448) b!6270118))

(assert (= (and b!6270116 c!1136155) b!6270119))

(assert (= (and b!6270116 (not c!1136155)) b!6270120))

(assert (= (and b!6270119 res!2586444) b!6270122))

(assert (= (and b!6270120 (not res!2586446)) b!6270117))

(assert (= (and b!6270117 res!2586445) b!6270121))

(assert (= (or b!6270122 b!6270121) bm!530185))

(assert (= (or b!6270119 b!6270117) bm!530186))

(assert (= (or b!6270118 bm!530185) bm!530187))

(declare-fun m!7091886 () Bool)

(assert (=> bm!530186 m!7091886))

(declare-fun m!7091888 () Bool)

(assert (=> b!6270123 m!7091888))

(declare-fun m!7091890 () Bool)

(assert (=> bm!530187 m!7091890))

(assert (=> d!1967670 d!1967848))

(declare-fun d!1967850 () Bool)

(assert (=> d!1967850 (= (flatMap!1694 lt!2351624 lambda!343399) (choose!46508 lt!2351624 lambda!343399))))

(declare-fun bs!1565431 () Bool)

(assert (= bs!1565431 d!1967850))

(declare-fun m!7091892 () Bool)

(assert (=> bs!1565431 m!7091892))

(assert (=> d!1967654 d!1967850))

(declare-fun b!6270134 () Bool)

(declare-fun e!3813599 () Bool)

(declare-fun e!3813596 () Bool)

(assert (=> b!6270134 (= e!3813599 e!3813596)))

(declare-fun c!1136163 () Bool)

(assert (=> b!6270134 (= c!1136163 ((_ is Star!16189) lt!2351698))))

(declare-fun d!1967852 () Bool)

(declare-fun res!2586452 () Bool)

(assert (=> d!1967852 (=> res!2586452 e!3813599)))

(assert (=> d!1967852 (= res!2586452 ((_ is ElementMatch!16189) lt!2351698))))

(assert (=> d!1967852 (= (validRegex!7925 lt!2351698) e!3813599)))

(declare-fun bm!530192 () Bool)

(declare-fun call!530197 () Bool)

(declare-fun call!530198 () Bool)

(assert (=> bm!530192 (= call!530197 call!530198)))

(declare-fun b!6270135 () Bool)

(declare-fun e!3813600 () Bool)

(assert (=> b!6270135 (= e!3813596 e!3813600)))

(declare-fun c!1136162 () Bool)

(assert (=> b!6270135 (= c!1136162 ((_ is Union!16189) lt!2351698))))

(declare-fun b!6270136 () Bool)

(declare-fun e!3813598 () Bool)

(declare-fun e!3813595 () Bool)

(assert (=> b!6270136 (= e!3813598 e!3813595)))

(declare-fun res!2586450 () Bool)

(assert (=> b!6270136 (=> (not res!2586450) (not e!3813595))))

(declare-fun call!530199 () Bool)

(assert (=> b!6270136 (= res!2586450 call!530199)))

(declare-fun b!6270137 () Bool)

(declare-fun e!3813597 () Bool)

(assert (=> b!6270137 (= e!3813597 call!530198)))

(declare-fun b!6270138 () Bool)

(declare-fun res!2586449 () Bool)

(declare-fun e!3813594 () Bool)

(assert (=> b!6270138 (=> (not res!2586449) (not e!3813594))))

(assert (=> b!6270138 (= res!2586449 call!530199)))

(assert (=> b!6270138 (= e!3813600 e!3813594)))

(declare-fun bm!530193 () Bool)

(assert (=> bm!530193 (= call!530199 (validRegex!7925 (ite c!1136162 (regOne!32891 lt!2351698) (regOne!32890 lt!2351698))))))

(declare-fun b!6270139 () Bool)

(declare-fun res!2586451 () Bool)

(assert (=> b!6270139 (=> res!2586451 e!3813598)))

(assert (=> b!6270139 (= res!2586451 (not ((_ is Concat!25034) lt!2351698)))))

(assert (=> b!6270139 (= e!3813600 e!3813598)))

(declare-fun b!6270140 () Bool)

(assert (=> b!6270140 (= e!3813595 call!530197)))

(declare-fun b!6270141 () Bool)

(assert (=> b!6270141 (= e!3813594 call!530197)))

(declare-fun b!6270142 () Bool)

(assert (=> b!6270142 (= e!3813596 e!3813597)))

(declare-fun res!2586453 () Bool)

(assert (=> b!6270142 (= res!2586453 (not (nullable!6182 (reg!16518 lt!2351698))))))

(assert (=> b!6270142 (=> (not res!2586453) (not e!3813597))))

(declare-fun bm!530194 () Bool)

(assert (=> bm!530194 (= call!530198 (validRegex!7925 (ite c!1136163 (reg!16518 lt!2351698) (ite c!1136162 (regTwo!32891 lt!2351698) (regTwo!32890 lt!2351698)))))))

(assert (= (and d!1967852 (not res!2586452)) b!6270134))

(assert (= (and b!6270134 c!1136163) b!6270142))

(assert (= (and b!6270134 (not c!1136163)) b!6270135))

(assert (= (and b!6270142 res!2586453) b!6270137))

(assert (= (and b!6270135 c!1136162) b!6270138))

(assert (= (and b!6270135 (not c!1136162)) b!6270139))

(assert (= (and b!6270138 res!2586449) b!6270141))

(assert (= (and b!6270139 (not res!2586451)) b!6270136))

(assert (= (and b!6270136 res!2586450) b!6270140))

(assert (= (or b!6270141 b!6270140) bm!530192))

(assert (= (or b!6270138 b!6270136) bm!530193))

(assert (= (or b!6270137 bm!530192) bm!530194))

(declare-fun m!7091894 () Bool)

(assert (=> bm!530193 m!7091894))

(declare-fun m!7091896 () Bool)

(assert (=> b!6270142 m!7091896))

(declare-fun m!7091898 () Bool)

(assert (=> bm!530194 m!7091898))

(assert (=> d!1967514 d!1967852))

(declare-fun d!1967854 () Bool)

(declare-fun res!2586454 () Bool)

(declare-fun e!3813601 () Bool)

(assert (=> d!1967854 (=> res!2586454 e!3813601)))

(assert (=> d!1967854 (= res!2586454 ((_ is Nil!64742) (unfocusZipperList!1610 zl!343)))))

(assert (=> d!1967854 (= (forall!15316 (unfocusZipperList!1610 zl!343) lambda!343358) e!3813601)))

(declare-fun b!6270143 () Bool)

(declare-fun e!3813602 () Bool)

(assert (=> b!6270143 (= e!3813601 e!3813602)))

(declare-fun res!2586455 () Bool)

(assert (=> b!6270143 (=> (not res!2586455) (not e!3813602))))

(assert (=> b!6270143 (= res!2586455 (dynLambda!25601 lambda!343358 (h!71190 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6270144 () Bool)

(assert (=> b!6270144 (= e!3813602 (forall!15316 (t!378422 (unfocusZipperList!1610 zl!343)) lambda!343358))))

(assert (= (and d!1967854 (not res!2586454)) b!6270143))

(assert (= (and b!6270143 res!2586455) b!6270144))

(declare-fun b_lambda!238743 () Bool)

(assert (=> (not b_lambda!238743) (not b!6270143)))

(declare-fun m!7091906 () Bool)

(assert (=> b!6270143 m!7091906))

(declare-fun m!7091908 () Bool)

(assert (=> b!6270144 m!7091908))

(assert (=> d!1967514 d!1967854))

(declare-fun d!1967856 () Bool)

(assert (=> d!1967856 (= (isEmpty!36777 (t!378424 s!2326)) ((_ is Nil!64744) (t!378424 s!2326)))))

(assert (=> d!1967652 d!1967856))

(declare-fun d!1967858 () Bool)

(assert (=> d!1967858 true))

(assert (=> d!1967858 true))

(declare-fun res!2586458 () Bool)

(assert (=> d!1967858 (= (choose!46518 lambda!343318) res!2586458)))

(assert (=> d!1967692 d!1967858))

(assert (=> d!1967550 d!1967542))

(declare-fun d!1967864 () Bool)

(assert (=> d!1967864 (= (flatMap!1694 lt!2351624 lambda!343319) (dynLambda!25599 lambda!343319 lt!2351634))))

(assert (=> d!1967864 true))

(declare-fun _$13!3378 () Unit!158087)

(assert (=> d!1967864 (= (choose!46506 lt!2351624 lt!2351634 lambda!343319) _$13!3378)))

(declare-fun b_lambda!238745 () Bool)

(assert (=> (not b_lambda!238745) (not d!1967864)))

(declare-fun bs!1565435 () Bool)

(assert (= bs!1565435 d!1967864))

(assert (=> bs!1565435 m!7090688))

(assert (=> bs!1565435 m!7091168))

(assert (=> d!1967550 d!1967864))

(declare-fun bs!1565438 () Bool)

(declare-fun d!1967868 () Bool)

(assert (= bs!1565438 (and d!1967868 d!1967778)))

(declare-fun lambda!343423 () Int)

(assert (=> bs!1565438 (= lambda!343423 lambda!343419)))

(declare-fun bs!1565439 () Bool)

(assert (= bs!1565439 (and d!1967868 d!1967774)))

(assert (=> bs!1565439 (= lambda!343423 lambda!343418)))

(declare-fun bs!1565440 () Bool)

(assert (= bs!1565440 (and d!1967868 b!6269127)))

(assert (=> bs!1565440 (not (= lambda!343423 lambda!343345))))

(declare-fun bs!1565441 () Bool)

(assert (= bs!1565441 (and d!1967868 b!6269129)))

(assert (=> bs!1565441 (not (= lambda!343423 lambda!343346))))

(declare-fun bs!1565443 () Bool)

(assert (= bs!1565443 (and d!1967868 b!6269124)))

(assert (=> bs!1565443 (not (= lambda!343423 lambda!343341))))

(declare-fun bs!1565444 () Bool)

(assert (= bs!1565444 (and d!1967868 b!6269122)))

(assert (=> bs!1565444 (not (= lambda!343423 lambda!343340))))

(assert (=> d!1967868 (= (nullableZipper!1959 lt!2351597) (exists!2522 lt!2351597 lambda!343423))))

(declare-fun bs!1565445 () Bool)

(assert (= bs!1565445 d!1967868))

(declare-fun m!7091920 () Bool)

(assert (=> bs!1565445 m!7091920))

(assert (=> b!6269427 d!1967868))

(assert (=> b!6269295 d!1967710))

(declare-fun d!1967872 () Bool)

(assert (=> d!1967872 (= (nullable!6182 r!7292) (nullableFct!2133 r!7292))))

(declare-fun bs!1565446 () Bool)

(assert (= bs!1565446 d!1967872))

(declare-fun m!7091922 () Bool)

(assert (=> bs!1565446 m!7091922))

(assert (=> b!6269583 d!1967872))

(declare-fun d!1967874 () Bool)

(assert (=> d!1967874 (= (isEmpty!36775 lt!2351603) ((_ is Nil!64742) lt!2351603))))

(assert (=> b!6269682 d!1967874))

(assert (=> d!1967660 d!1967846))

(declare-fun bs!1565447 () Bool)

(declare-fun d!1967876 () Bool)

(assert (= bs!1565447 (and d!1967876 d!1967868)))

(declare-fun lambda!343424 () Int)

(assert (=> bs!1565447 (= lambda!343424 lambda!343423)))

(declare-fun bs!1565448 () Bool)

(assert (= bs!1565448 (and d!1967876 d!1967778)))

(assert (=> bs!1565448 (= lambda!343424 lambda!343419)))

(declare-fun bs!1565449 () Bool)

(assert (= bs!1565449 (and d!1967876 d!1967774)))

(assert (=> bs!1565449 (= lambda!343424 lambda!343418)))

(declare-fun bs!1565450 () Bool)

(assert (= bs!1565450 (and d!1967876 b!6269127)))

(assert (=> bs!1565450 (not (= lambda!343424 lambda!343345))))

(declare-fun bs!1565451 () Bool)

(assert (= bs!1565451 (and d!1967876 b!6269129)))

(assert (=> bs!1565451 (not (= lambda!343424 lambda!343346))))

(declare-fun bs!1565452 () Bool)

(assert (= bs!1565452 (and d!1967876 b!6269124)))

(assert (=> bs!1565452 (not (= lambda!343424 lambda!343341))))

(declare-fun bs!1565453 () Bool)

(assert (= bs!1565453 (and d!1967876 b!6269122)))

(assert (=> bs!1565453 (not (= lambda!343424 lambda!343340))))

(assert (=> d!1967876 (= (nullableZipper!1959 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326))) (exists!2522 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) lambda!343424))))

(declare-fun bs!1565454 () Bool)

(assert (= bs!1565454 d!1967876))

(assert (=> bs!1565454 m!7090774))

(declare-fun m!7091924 () Bool)

(assert (=> bs!1565454 m!7091924))

(assert (=> b!6269613 d!1967876))

(declare-fun d!1967878 () Bool)

(assert (=> d!1967878 (= (nullable!6182 (h!71190 (exprs!6073 lt!2351634))) (nullableFct!2133 (h!71190 (exprs!6073 lt!2351634))))))

(declare-fun bs!1565455 () Bool)

(assert (= bs!1565455 d!1967878))

(declare-fun m!7091926 () Bool)

(assert (=> bs!1565455 m!7091926))

(assert (=> b!6269383 d!1967878))

(declare-fun d!1967880 () Bool)

(assert (=> d!1967880 (= (isEmptyExpr!1595 lt!2351773) ((_ is EmptyExpr!16189) lt!2351773))))

(assert (=> b!6269652 d!1967880))

(declare-fun bs!1565456 () Bool)

(declare-fun d!1967884 () Bool)

(assert (= bs!1565456 (and d!1967884 d!1967868)))

(declare-fun lambda!343425 () Int)

(assert (=> bs!1565456 (= lambda!343425 lambda!343423)))

(declare-fun bs!1565457 () Bool)

(assert (= bs!1565457 (and d!1967884 d!1967876)))

(assert (=> bs!1565457 (= lambda!343425 lambda!343424)))

(declare-fun bs!1565458 () Bool)

(assert (= bs!1565458 (and d!1967884 d!1967778)))

(assert (=> bs!1565458 (= lambda!343425 lambda!343419)))

(declare-fun bs!1565459 () Bool)

(assert (= bs!1565459 (and d!1967884 d!1967774)))

(assert (=> bs!1565459 (= lambda!343425 lambda!343418)))

(declare-fun bs!1565460 () Bool)

(assert (= bs!1565460 (and d!1967884 b!6269127)))

(assert (=> bs!1565460 (not (= lambda!343425 lambda!343345))))

(declare-fun bs!1565461 () Bool)

(assert (= bs!1565461 (and d!1967884 b!6269129)))

(assert (=> bs!1565461 (not (= lambda!343425 lambda!343346))))

(declare-fun bs!1565462 () Bool)

(assert (= bs!1565462 (and d!1967884 b!6269124)))

(assert (=> bs!1565462 (not (= lambda!343425 lambda!343341))))

(declare-fun bs!1565463 () Bool)

(assert (= bs!1565463 (and d!1967884 b!6269122)))

(assert (=> bs!1565463 (not (= lambda!343425 lambda!343340))))

(assert (=> d!1967884 (= (nullableZipper!1959 lt!2351604) (exists!2522 lt!2351604 lambda!343425))))

(declare-fun bs!1565464 () Bool)

(assert (= bs!1565464 d!1967884))

(declare-fun m!7091934 () Bool)

(assert (=> bs!1565464 m!7091934))

(assert (=> b!6269641 d!1967884))

(declare-fun d!1967886 () Bool)

(assert (=> d!1967886 (= (flatMap!1694 lt!2351636 lambda!343411) (choose!46508 lt!2351636 lambda!343411))))

(declare-fun bs!1565465 () Bool)

(assert (= bs!1565465 d!1967886))

(declare-fun m!7091936 () Bool)

(assert (=> bs!1565465 m!7091936))

(assert (=> d!1967706 d!1967886))

(declare-fun bs!1565466 () Bool)

(declare-fun d!1967888 () Bool)

(assert (= bs!1565466 (and d!1967888 d!1967868)))

(declare-fun lambda!343426 () Int)

(assert (=> bs!1565466 (= lambda!343426 lambda!343423)))

(declare-fun bs!1565467 () Bool)

(assert (= bs!1565467 (and d!1967888 d!1967876)))

(assert (=> bs!1565467 (= lambda!343426 lambda!343424)))

(declare-fun bs!1565468 () Bool)

(assert (= bs!1565468 (and d!1967888 d!1967778)))

(assert (=> bs!1565468 (= lambda!343426 lambda!343419)))

(declare-fun bs!1565469 () Bool)

(assert (= bs!1565469 (and d!1967888 d!1967774)))

(assert (=> bs!1565469 (= lambda!343426 lambda!343418)))

(declare-fun bs!1565470 () Bool)

(assert (= bs!1565470 (and d!1967888 d!1967884)))

(assert (=> bs!1565470 (= lambda!343426 lambda!343425)))

(declare-fun bs!1565471 () Bool)

(assert (= bs!1565471 (and d!1967888 b!6269127)))

(assert (=> bs!1565471 (not (= lambda!343426 lambda!343345))))

(declare-fun bs!1565472 () Bool)

(assert (= bs!1565472 (and d!1967888 b!6269129)))

(assert (=> bs!1565472 (not (= lambda!343426 lambda!343346))))

(declare-fun bs!1565473 () Bool)

(assert (= bs!1565473 (and d!1967888 b!6269124)))

(assert (=> bs!1565473 (not (= lambda!343426 lambda!343341))))

(declare-fun bs!1565474 () Bool)

(assert (= bs!1565474 (and d!1967888 b!6269122)))

(assert (=> bs!1565474 (not (= lambda!343426 lambda!343340))))

(assert (=> d!1967888 (= (nullableZipper!1959 lt!2351623) (exists!2522 lt!2351623 lambda!343426))))

(declare-fun bs!1565475 () Bool)

(assert (= bs!1565475 d!1967888))

(declare-fun m!7091938 () Bool)

(assert (=> bs!1565475 m!7091938))

(assert (=> b!6269251 d!1967888))

(declare-fun d!1967892 () Bool)

(declare-fun c!1136169 () Bool)

(assert (=> d!1967892 (= c!1136169 ((_ is Nil!64743) lt!2351738))))

(declare-fun e!3813617 () (InoxSet Context!11146))

(assert (=> d!1967892 (= (content!12159 lt!2351738) e!3813617)))

(declare-fun b!6270165 () Bool)

(assert (=> b!6270165 (= e!3813617 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270166 () Bool)

(assert (=> b!6270166 (= e!3813617 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) (h!71191 lt!2351738) true) (content!12159 (t!378423 lt!2351738))))))

(assert (= (and d!1967892 c!1136169) b!6270165))

(assert (= (and d!1967892 (not c!1136169)) b!6270166))

(declare-fun m!7091940 () Bool)

(assert (=> b!6270166 m!7091940))

(declare-fun m!7091942 () Bool)

(assert (=> b!6270166 m!7091942))

(assert (=> b!6269420 d!1967892))

(declare-fun d!1967894 () Bool)

(assert (=> d!1967894 (= (nullable!6182 (reg!16518 lt!2351598)) (nullableFct!2133 (reg!16518 lt!2351598)))))

(declare-fun bs!1565476 () Bool)

(assert (= bs!1565476 d!1967894))

(declare-fun m!7091944 () Bool)

(assert (=> bs!1565476 m!7091944))

(assert (=> b!6269713 d!1967894))

(declare-fun d!1967896 () Bool)

(assert (=> d!1967896 (= (isEmpty!36775 (tail!11964 lt!2351608)) ((_ is Nil!64742) (tail!11964 lt!2351608)))))

(assert (=> b!6269654 d!1967896))

(declare-fun d!1967898 () Bool)

(assert (=> d!1967898 (= (tail!11964 lt!2351608) (t!378422 lt!2351608))))

(assert (=> b!6269654 d!1967898))

(assert (=> d!1967580 d!1967856))

(assert (=> b!6269700 d!1967834))

(declare-fun bs!1565477 () Bool)

(declare-fun d!1967900 () Bool)

(assert (= bs!1565477 (and d!1967900 d!1967868)))

(declare-fun lambda!343429 () Int)

(assert (=> bs!1565477 (not (= lambda!343429 lambda!343423))))

(declare-fun bs!1565478 () Bool)

(assert (= bs!1565478 (and d!1967900 d!1967876)))

(assert (=> bs!1565478 (not (= lambda!343429 lambda!343424))))

(declare-fun bs!1565479 () Bool)

(assert (= bs!1565479 (and d!1967900 d!1967778)))

(assert (=> bs!1565479 (not (= lambda!343429 lambda!343419))))

(declare-fun bs!1565480 () Bool)

(assert (= bs!1565480 (and d!1967900 d!1967774)))

(assert (=> bs!1565480 (not (= lambda!343429 lambda!343418))))

(declare-fun bs!1565481 () Bool)

(assert (= bs!1565481 (and d!1967900 d!1967884)))

(assert (=> bs!1565481 (not (= lambda!343429 lambda!343425))))

(declare-fun bs!1565482 () Bool)

(assert (= bs!1565482 (and d!1967900 b!6269127)))

(assert (=> bs!1565482 (not (= lambda!343429 lambda!343345))))

(declare-fun bs!1565483 () Bool)

(assert (= bs!1565483 (and d!1967900 d!1967888)))

(assert (=> bs!1565483 (not (= lambda!343429 lambda!343426))))

(declare-fun bs!1565484 () Bool)

(assert (= bs!1565484 (and d!1967900 b!6269129)))

(assert (=> bs!1565484 (not (= lambda!343429 lambda!343346))))

(declare-fun bs!1565485 () Bool)

(assert (= bs!1565485 (and d!1967900 b!6269124)))

(assert (=> bs!1565485 (not (= lambda!343429 lambda!343341))))

(declare-fun bs!1565486 () Bool)

(assert (= bs!1565486 (and d!1967900 b!6269122)))

(assert (=> bs!1565486 (not (= lambda!343429 lambda!343340))))

(assert (=> d!1967900 true))

(assert (=> d!1967900 true))

(declare-fun order!27455 () Int)

(declare-fun order!27453 () Int)

(declare-fun dynLambda!25603 (Int Int) Int)

(declare-fun dynLambda!25604 (Int Int) Int)

(assert (=> d!1967900 (< (dynLambda!25603 order!27453 lambda!343339) (dynLambda!25604 order!27455 lambda!343429))))

(assert (=> d!1967900 (forall!15315 (t!378423 lt!2351631) lambda!343429)))

(declare-fun lt!2351826 () Unit!158087)

(declare-fun choose!46523 (List!64867 Int Int Int) Unit!158087)

(assert (=> d!1967900 (= lt!2351826 (choose!46523 (t!378423 lt!2351631) lt!2351677 (zipperDepth!314 (t!378423 lt!2351631)) lambda!343339))))

(assert (=> d!1967900 (>= lt!2351677 (zipperDepth!314 (t!378423 lt!2351631)))))

(assert (=> d!1967900 (= (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 lt!2351631) lt!2351677 (zipperDepth!314 (t!378423 lt!2351631)) lambda!343339) lt!2351826)))

(declare-fun bs!1565487 () Bool)

(assert (= bs!1565487 d!1967900))

(declare-fun m!7091950 () Bool)

(assert (=> bs!1565487 m!7091950))

(assert (=> bs!1565487 m!7090976))

(declare-fun m!7091952 () Bool)

(assert (=> bs!1565487 m!7091952))

(assert (=> b!6269122 d!1967900))

(declare-fun bs!1565488 () Bool)

(declare-fun b!6270173 () Bool)

(assert (= bs!1565488 (and b!6270173 b!6269122)))

(declare-fun lambda!343430 () Int)

(assert (=> bs!1565488 (= lambda!343430 lambda!343339)))

(declare-fun bs!1565489 () Bool)

(assert (= bs!1565489 (and b!6270173 b!6269127)))

(assert (=> bs!1565489 (= lambda!343430 lambda!343343)))

(declare-fun bs!1565490 () Bool)

(assert (= bs!1565490 (and b!6270173 d!1967900)))

(declare-fun lambda!343433 () Int)

(assert (=> bs!1565490 (not (= lambda!343433 lambda!343429))))

(declare-fun bs!1565491 () Bool)

(assert (= bs!1565491 (and b!6270173 d!1967868)))

(assert (=> bs!1565491 (not (= lambda!343433 lambda!343423))))

(declare-fun bs!1565492 () Bool)

(assert (= bs!1565492 (and b!6270173 d!1967876)))

(assert (=> bs!1565492 (not (= lambda!343433 lambda!343424))))

(declare-fun bs!1565493 () Bool)

(assert (= bs!1565493 (and b!6270173 d!1967778)))

(assert (=> bs!1565493 (not (= lambda!343433 lambda!343419))))

(declare-fun bs!1565494 () Bool)

(assert (= bs!1565494 (and b!6270173 d!1967774)))

(assert (=> bs!1565494 (not (= lambda!343433 lambda!343418))))

(declare-fun bs!1565495 () Bool)

(assert (= bs!1565495 (and b!6270173 d!1967884)))

(assert (=> bs!1565495 (not (= lambda!343433 lambda!343425))))

(declare-fun lt!2351830 () Int)

(assert (=> bs!1565489 (= (= lt!2351830 lt!2351683) (= lambda!343433 lambda!343345))))

(declare-fun bs!1565496 () Bool)

(assert (= bs!1565496 (and b!6270173 d!1967888)))

(assert (=> bs!1565496 (not (= lambda!343433 lambda!343426))))

(declare-fun bs!1565497 () Bool)

(assert (= bs!1565497 (and b!6270173 b!6269129)))

(assert (=> bs!1565497 (= (= lt!2351830 lt!2351685) (= lambda!343433 lambda!343346))))

(declare-fun bs!1565498 () Bool)

(assert (= bs!1565498 (and b!6270173 b!6269124)))

(assert (=> bs!1565498 (= (= lt!2351830 lt!2351679) (= lambda!343433 lambda!343341))))

(assert (=> bs!1565488 (= (= lt!2351830 lt!2351677) (= lambda!343433 lambda!343340))))

(assert (=> b!6270173 true))

(declare-fun bs!1565499 () Bool)

(declare-fun b!6270175 () Bool)

(assert (= bs!1565499 (and b!6270175 b!6270173)))

(declare-fun lambda!343434 () Int)

(declare-fun lt!2351832 () Int)

(assert (=> bs!1565499 (= (= lt!2351832 lt!2351830) (= lambda!343434 lambda!343433))))

(declare-fun bs!1565500 () Bool)

(assert (= bs!1565500 (and b!6270175 d!1967900)))

(assert (=> bs!1565500 (not (= lambda!343434 lambda!343429))))

(declare-fun bs!1565501 () Bool)

(assert (= bs!1565501 (and b!6270175 d!1967868)))

(assert (=> bs!1565501 (not (= lambda!343434 lambda!343423))))

(declare-fun bs!1565502 () Bool)

(assert (= bs!1565502 (and b!6270175 d!1967876)))

(assert (=> bs!1565502 (not (= lambda!343434 lambda!343424))))

(declare-fun bs!1565503 () Bool)

(assert (= bs!1565503 (and b!6270175 d!1967778)))

(assert (=> bs!1565503 (not (= lambda!343434 lambda!343419))))

(declare-fun bs!1565504 () Bool)

(assert (= bs!1565504 (and b!6270175 d!1967774)))

(assert (=> bs!1565504 (not (= lambda!343434 lambda!343418))))

(declare-fun bs!1565505 () Bool)

(assert (= bs!1565505 (and b!6270175 d!1967884)))

(assert (=> bs!1565505 (not (= lambda!343434 lambda!343425))))

(declare-fun bs!1565506 () Bool)

(assert (= bs!1565506 (and b!6270175 b!6269127)))

(assert (=> bs!1565506 (= (= lt!2351832 lt!2351683) (= lambda!343434 lambda!343345))))

(declare-fun bs!1565507 () Bool)

(assert (= bs!1565507 (and b!6270175 d!1967888)))

(assert (=> bs!1565507 (not (= lambda!343434 lambda!343426))))

(declare-fun bs!1565508 () Bool)

(assert (= bs!1565508 (and b!6270175 b!6269129)))

(assert (=> bs!1565508 (= (= lt!2351832 lt!2351685) (= lambda!343434 lambda!343346))))

(declare-fun bs!1565509 () Bool)

(assert (= bs!1565509 (and b!6270175 b!6269124)))

(assert (=> bs!1565509 (= (= lt!2351832 lt!2351679) (= lambda!343434 lambda!343341))))

(declare-fun bs!1565510 () Bool)

(assert (= bs!1565510 (and b!6270175 b!6269122)))

(assert (=> bs!1565510 (= (= lt!2351832 lt!2351677) (= lambda!343434 lambda!343340))))

(assert (=> b!6270175 true))

(declare-fun d!1967904 () Bool)

(declare-fun e!3813621 () Bool)

(assert (=> d!1967904 e!3813621))

(declare-fun res!2586470 () Bool)

(assert (=> d!1967904 (=> (not res!2586470) (not e!3813621))))

(assert (=> d!1967904 (= res!2586470 (>= lt!2351832 0))))

(declare-fun e!3813620 () Int)

(assert (=> d!1967904 (= lt!2351832 e!3813620)))

(declare-fun c!1136174 () Bool)

(assert (=> d!1967904 (= c!1136174 ((_ is Cons!64743) (t!378423 lt!2351631)))))

(assert (=> d!1967904 (= (zipperDepth!314 (t!378423 lt!2351631)) lt!2351832)))

(assert (=> b!6270173 (= e!3813620 lt!2351830)))

(assert (=> b!6270173 (= lt!2351830 (maxBigInt!0 (contextDepth!206 (h!71191 (t!378423 lt!2351631))) (zipperDepth!314 (t!378423 (t!378423 lt!2351631)))))))

(declare-fun lt!2351829 () Unit!158087)

(assert (=> b!6270173 (= lt!2351829 (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 (t!378423 lt!2351631)) lt!2351830 (zipperDepth!314 (t!378423 (t!378423 lt!2351631))) lambda!343430))))

(assert (=> b!6270173 (forall!15315 (t!378423 (t!378423 lt!2351631)) lambda!343433)))

(declare-fun lt!2351831 () Unit!158087)

(assert (=> b!6270173 (= lt!2351831 lt!2351829)))

(declare-fun b!6270174 () Bool)

(assert (=> b!6270174 (= e!3813620 0)))

(assert (=> b!6270175 (= e!3813621 (forall!15315 (t!378423 lt!2351631) lambda!343434))))

(assert (= (and d!1967904 c!1136174) b!6270173))

(assert (= (and d!1967904 (not c!1136174)) b!6270174))

(assert (= (and d!1967904 res!2586470) b!6270175))

(declare-fun m!7091954 () Bool)

(assert (=> b!6270173 m!7091954))

(declare-fun m!7091956 () Bool)

(assert (=> b!6270173 m!7091956))

(declare-fun m!7091958 () Bool)

(assert (=> b!6270173 m!7091958))

(assert (=> b!6270173 m!7091956))

(declare-fun m!7091960 () Bool)

(assert (=> b!6270173 m!7091960))

(assert (=> b!6270173 m!7091954))

(assert (=> b!6270173 m!7091956))

(declare-fun m!7091962 () Bool)

(assert (=> b!6270173 m!7091962))

(declare-fun m!7091964 () Bool)

(assert (=> b!6270175 m!7091964))

(assert (=> b!6269122 d!1967904))

(declare-fun d!1967906 () Bool)

(declare-fun res!2586471 () Bool)

(declare-fun e!3813622 () Bool)

(assert (=> d!1967906 (=> res!2586471 e!3813622)))

(assert (=> d!1967906 (= res!2586471 ((_ is Nil!64743) (t!378423 lt!2351631)))))

(assert (=> d!1967906 (= (forall!15315 (t!378423 lt!2351631) lambda!343340) e!3813622)))

(declare-fun b!6270178 () Bool)

(declare-fun e!3813623 () Bool)

(assert (=> b!6270178 (= e!3813622 e!3813623)))

(declare-fun res!2586472 () Bool)

(assert (=> b!6270178 (=> (not res!2586472) (not e!3813623))))

(assert (=> b!6270178 (= res!2586472 (dynLambda!25600 lambda!343340 (h!71191 (t!378423 lt!2351631))))))

(declare-fun b!6270179 () Bool)

(assert (=> b!6270179 (= e!3813623 (forall!15315 (t!378423 (t!378423 lt!2351631)) lambda!343340))))

(assert (= (and d!1967906 (not res!2586471)) b!6270178))

(assert (= (and b!6270178 res!2586472) b!6270179))

(declare-fun b_lambda!238749 () Bool)

(assert (=> (not b_lambda!238749) (not b!6270178)))

(declare-fun m!7091966 () Bool)

(assert (=> b!6270178 m!7091966))

(declare-fun m!7091970 () Bool)

(assert (=> b!6270179 m!7091970))

(assert (=> b!6269122 d!1967906))

(declare-fun bs!1565527 () Bool)

(declare-fun b!6270195 () Bool)

(assert (= bs!1565527 (and b!6270195 d!1967788)))

(declare-fun lambda!343446 () Int)

(assert (=> bs!1565527 (not (= lambda!343446 lambda!343420))))

(declare-fun bs!1565528 () Bool)

(assert (= bs!1565528 (and b!6270195 d!1967528)))

(assert (=> bs!1565528 (not (= lambda!343446 lambda!343380))))

(declare-fun bs!1565529 () Bool)

(assert (= bs!1565529 (and b!6270195 d!1967658)))

(assert (=> bs!1565529 (not (= lambda!343446 lambda!343400))))

(declare-fun bs!1565530 () Bool)

(assert (= bs!1565530 (and b!6270195 d!1967514)))

(assert (=> bs!1565530 (not (= lambda!343446 lambda!343358))))

(declare-fun bs!1565531 () Bool)

(assert (= bs!1565531 (and b!6270195 d!1967540)))

(assert (=> bs!1565531 (not (= lambda!343446 lambda!343381))))

(declare-fun bs!1565532 () Bool)

(assert (= bs!1565532 (and b!6270195 d!1967516)))

(assert (=> bs!1565532 (not (= lambda!343446 lambda!343362))))

(declare-fun bs!1565533 () Bool)

(assert (= bs!1565533 (and b!6270195 d!1967668)))

(assert (=> bs!1565533 (not (= lambda!343446 lambda!343401))))

(declare-fun bs!1565534 () Bool)

(assert (= bs!1565534 (and b!6270195 d!1967524)))

(assert (=> bs!1565534 (not (= lambda!343446 lambda!343365))))

(assert (=> b!6270195 true))

(declare-fun bs!1565535 () Bool)

(declare-fun b!6270197 () Bool)

(assert (= bs!1565535 (and b!6270197 d!1967788)))

(declare-fun lambda!343448 () Int)

(assert (=> bs!1565535 (not (= lambda!343448 lambda!343420))))

(declare-fun bs!1565536 () Bool)

(assert (= bs!1565536 (and b!6270197 d!1967528)))

(assert (=> bs!1565536 (not (= lambda!343448 lambda!343380))))

(declare-fun bs!1565537 () Bool)

(assert (= bs!1565537 (and b!6270197 d!1967658)))

(assert (=> bs!1565537 (not (= lambda!343448 lambda!343400))))

(declare-fun bs!1565538 () Bool)

(assert (= bs!1565538 (and b!6270197 b!6270195)))

(declare-fun lt!2351856 () Int)

(declare-fun lt!2351855 () Int)

(assert (=> bs!1565538 (= (= lt!2351855 lt!2351856) (= lambda!343448 lambda!343446))))

(declare-fun bs!1565539 () Bool)

(assert (= bs!1565539 (and b!6270197 d!1967514)))

(assert (=> bs!1565539 (not (= lambda!343448 lambda!343358))))

(declare-fun bs!1565540 () Bool)

(assert (= bs!1565540 (and b!6270197 d!1967540)))

(assert (=> bs!1565540 (not (= lambda!343448 lambda!343381))))

(declare-fun bs!1565541 () Bool)

(assert (= bs!1565541 (and b!6270197 d!1967516)))

(assert (=> bs!1565541 (not (= lambda!343448 lambda!343362))))

(declare-fun bs!1565542 () Bool)

(assert (= bs!1565542 (and b!6270197 d!1967668)))

(assert (=> bs!1565542 (not (= lambda!343448 lambda!343401))))

(declare-fun bs!1565543 () Bool)

(assert (= bs!1565543 (and b!6270197 d!1967524)))

(assert (=> bs!1565543 (not (= lambda!343448 lambda!343365))))

(assert (=> b!6270197 true))

(declare-fun d!1967908 () Bool)

(declare-fun e!3813635 () Bool)

(assert (=> d!1967908 e!3813635))

(declare-fun res!2586478 () Bool)

(assert (=> d!1967908 (=> (not res!2586478) (not e!3813635))))

(assert (=> d!1967908 (= res!2586478 (>= lt!2351855 0))))

(declare-fun e!3813634 () Int)

(assert (=> d!1967908 (= lt!2351855 e!3813634)))

(declare-fun c!1136182 () Bool)

(assert (=> d!1967908 (= c!1136182 ((_ is Cons!64742) (exprs!6073 (h!71191 lt!2351631))))))

(assert (=> d!1967908 (= (contextDepth!206 (h!71191 lt!2351631)) lt!2351855)))

(assert (=> b!6270195 (= e!3813634 lt!2351856)))

(declare-fun regexDepth!309 (Regex!16189) Int)

(assert (=> b!6270195 (= lt!2351856 (maxBigInt!0 (regexDepth!309 (h!71190 (exprs!6073 (h!71191 lt!2351631)))) (contextDepth!206 (Context!11147 (t!378422 (exprs!6073 (h!71191 lt!2351631)))))))))

(declare-fun lt!2351857 () Unit!158087)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!99 (List!64866 Int Int) Unit!158087)

(assert (=> b!6270195 (= lt!2351857 (lemmaForallRegexDepthBiggerThanTransitive!99 (t!378422 (exprs!6073 (h!71191 lt!2351631))) lt!2351856 (contextDepth!206 (Context!11147 (t!378422 (exprs!6073 (h!71191 lt!2351631)))))))))

(assert (=> b!6270195 (forall!15316 (t!378422 (exprs!6073 (h!71191 lt!2351631))) lambda!343446)))

(declare-fun lt!2351854 () Unit!158087)

(assert (=> b!6270195 (= lt!2351854 lt!2351857)))

(declare-fun b!6270196 () Bool)

(assert (=> b!6270196 (= e!3813634 0)))

(assert (=> b!6270197 (= e!3813635 (forall!15316 (exprs!6073 (h!71191 lt!2351631)) lambda!343448))))

(assert (= (and d!1967908 c!1136182) b!6270195))

(assert (= (and d!1967908 (not c!1136182)) b!6270196))

(assert (= (and d!1967908 res!2586478) b!6270197))

(declare-fun m!7091986 () Bool)

(assert (=> b!6270195 m!7091986))

(assert (=> b!6270195 m!7091986))

(declare-fun m!7091988 () Bool)

(assert (=> b!6270195 m!7091988))

(declare-fun m!7091990 () Bool)

(assert (=> b!6270195 m!7091990))

(declare-fun m!7091992 () Bool)

(assert (=> b!6270195 m!7091992))

(assert (=> b!6270195 m!7091992))

(assert (=> b!6270195 m!7091986))

(declare-fun m!7091994 () Bool)

(assert (=> b!6270195 m!7091994))

(declare-fun m!7091996 () Bool)

(assert (=> b!6270197 m!7091996))

(assert (=> b!6269122 d!1967908))

(declare-fun d!1967914 () Bool)

(assert (=> d!1967914 (= (maxBigInt!0 (contextDepth!206 (h!71191 lt!2351631)) (zipperDepth!314 (t!378423 lt!2351631))) (ite (>= (contextDepth!206 (h!71191 lt!2351631)) (zipperDepth!314 (t!378423 lt!2351631))) (contextDepth!206 (h!71191 lt!2351631)) (zipperDepth!314 (t!378423 lt!2351631))))))

(assert (=> b!6269122 d!1967914))

(assert (=> d!1967472 d!1967482))

(declare-fun d!1967916 () Bool)

(assert (=> d!1967916 (= (flatMap!1694 z!1189 lambda!343319) (dynLambda!25599 lambda!343319 (h!71191 zl!343)))))

(assert (=> d!1967916 true))

(declare-fun _$13!3379 () Unit!158087)

(assert (=> d!1967916 (= (choose!46506 z!1189 (h!71191 zl!343) lambda!343319) _$13!3379)))

(declare-fun b_lambda!238751 () Bool)

(assert (=> (not b_lambda!238751) (not d!1967916)))

(declare-fun bs!1565557 () Bool)

(assert (= bs!1565557 d!1967916))

(assert (=> bs!1565557 m!7090730))

(assert (=> bs!1565557 m!7090904))

(assert (=> d!1967472 d!1967916))

(declare-fun b!6270206 () Bool)

(declare-fun e!3813643 () Bool)

(declare-fun e!3813640 () Bool)

(assert (=> b!6270206 (= e!3813643 e!3813640)))

(declare-fun c!1136185 () Bool)

(assert (=> b!6270206 (= c!1136185 ((_ is Star!16189) lt!2351774))))

(declare-fun d!1967918 () Bool)

(declare-fun res!2586483 () Bool)

(assert (=> d!1967918 (=> res!2586483 e!3813643)))

(assert (=> d!1967918 (= res!2586483 ((_ is ElementMatch!16189) lt!2351774))))

(assert (=> d!1967918 (= (validRegex!7925 lt!2351774) e!3813643)))

(declare-fun bm!530198 () Bool)

(declare-fun call!530203 () Bool)

(declare-fun call!530204 () Bool)

(assert (=> bm!530198 (= call!530203 call!530204)))

(declare-fun b!6270207 () Bool)

(declare-fun e!3813644 () Bool)

(assert (=> b!6270207 (= e!3813640 e!3813644)))

(declare-fun c!1136184 () Bool)

(assert (=> b!6270207 (= c!1136184 ((_ is Union!16189) lt!2351774))))

(declare-fun b!6270208 () Bool)

(declare-fun e!3813642 () Bool)

(declare-fun e!3813639 () Bool)

(assert (=> b!6270208 (= e!3813642 e!3813639)))

(declare-fun res!2586481 () Bool)

(assert (=> b!6270208 (=> (not res!2586481) (not e!3813639))))

(declare-fun call!530205 () Bool)

(assert (=> b!6270208 (= res!2586481 call!530205)))

(declare-fun b!6270209 () Bool)

(declare-fun e!3813641 () Bool)

(assert (=> b!6270209 (= e!3813641 call!530204)))

(declare-fun b!6270210 () Bool)

(declare-fun res!2586480 () Bool)

(declare-fun e!3813638 () Bool)

(assert (=> b!6270210 (=> (not res!2586480) (not e!3813638))))

(assert (=> b!6270210 (= res!2586480 call!530205)))

(assert (=> b!6270210 (= e!3813644 e!3813638)))

(declare-fun bm!530199 () Bool)

(assert (=> bm!530199 (= call!530205 (validRegex!7925 (ite c!1136184 (regOne!32891 lt!2351774) (regOne!32890 lt!2351774))))))

(declare-fun b!6270211 () Bool)

(declare-fun res!2586482 () Bool)

(assert (=> b!6270211 (=> res!2586482 e!3813642)))

(assert (=> b!6270211 (= res!2586482 (not ((_ is Concat!25034) lt!2351774)))))

(assert (=> b!6270211 (= e!3813644 e!3813642)))

(declare-fun b!6270212 () Bool)

(assert (=> b!6270212 (= e!3813639 call!530203)))

(declare-fun b!6270213 () Bool)

(assert (=> b!6270213 (= e!3813638 call!530203)))

(declare-fun b!6270214 () Bool)

(assert (=> b!6270214 (= e!3813640 e!3813641)))

(declare-fun res!2586484 () Bool)

(assert (=> b!6270214 (= res!2586484 (not (nullable!6182 (reg!16518 lt!2351774))))))

(assert (=> b!6270214 (=> (not res!2586484) (not e!3813641))))

(declare-fun bm!530200 () Bool)

(assert (=> bm!530200 (= call!530204 (validRegex!7925 (ite c!1136185 (reg!16518 lt!2351774) (ite c!1136184 (regTwo!32891 lt!2351774) (regTwo!32890 lt!2351774)))))))

(assert (= (and d!1967918 (not res!2586483)) b!6270206))

(assert (= (and b!6270206 c!1136185) b!6270214))

(assert (= (and b!6270206 (not c!1136185)) b!6270207))

(assert (= (and b!6270214 res!2586484) b!6270209))

(assert (= (and b!6270207 c!1136184) b!6270210))

(assert (= (and b!6270207 (not c!1136184)) b!6270211))

(assert (= (and b!6270210 res!2586480) b!6270213))

(assert (= (and b!6270211 (not res!2586482)) b!6270208))

(assert (= (and b!6270208 res!2586481) b!6270212))

(assert (= (or b!6270213 b!6270212) bm!530198))

(assert (= (or b!6270210 b!6270208) bm!530199))

(assert (= (or b!6270209 bm!530198) bm!530200))

(declare-fun m!7091998 () Bool)

(assert (=> bm!530199 m!7091998))

(declare-fun m!7092000 () Bool)

(assert (=> b!6270214 m!7092000))

(declare-fun m!7092002 () Bool)

(assert (=> bm!530200 m!7092002))

(assert (=> d!1967668 d!1967918))

(declare-fun d!1967920 () Bool)

(declare-fun res!2586485 () Bool)

(declare-fun e!3813645 () Bool)

(assert (=> d!1967920 (=> res!2586485 e!3813645)))

(assert (=> d!1967920 (= res!2586485 ((_ is Nil!64742) lt!2351603))))

(assert (=> d!1967920 (= (forall!15316 lt!2351603 lambda!343401) e!3813645)))

(declare-fun b!6270215 () Bool)

(declare-fun e!3813646 () Bool)

(assert (=> b!6270215 (= e!3813645 e!3813646)))

(declare-fun res!2586486 () Bool)

(assert (=> b!6270215 (=> (not res!2586486) (not e!3813646))))

(assert (=> b!6270215 (= res!2586486 (dynLambda!25601 lambda!343401 (h!71190 lt!2351603)))))

(declare-fun b!6270216 () Bool)

(assert (=> b!6270216 (= e!3813646 (forall!15316 (t!378422 lt!2351603) lambda!343401))))

(assert (= (and d!1967920 (not res!2586485)) b!6270215))

(assert (= (and b!6270215 res!2586486) b!6270216))

(declare-fun b_lambda!238753 () Bool)

(assert (=> (not b_lambda!238753) (not b!6270215)))

(declare-fun m!7092008 () Bool)

(assert (=> b!6270215 m!7092008))

(declare-fun m!7092010 () Bool)

(assert (=> b!6270216 m!7092010))

(assert (=> d!1967668 d!1967920))

(declare-fun d!1967922 () Bool)

(assert (=> d!1967922 true))

(declare-fun setRes!42644 () Bool)

(assert (=> d!1967922 setRes!42644))

(declare-fun condSetEmpty!42644 () Bool)

(declare-fun res!2586489 () (InoxSet Context!11146))

(assert (=> d!1967922 (= condSetEmpty!42644 (= res!2586489 ((as const (Array Context!11146 Bool)) false)))))

(assert (=> d!1967922 (= (choose!46508 lt!2351624 lambda!343319) res!2586489)))

(declare-fun setIsEmpty!42644 () Bool)

(assert (=> setIsEmpty!42644 setRes!42644))

(declare-fun tp!1748709 () Bool)

(declare-fun setNonEmpty!42644 () Bool)

(declare-fun setElem!42644 () Context!11146)

(declare-fun e!3813650 () Bool)

(assert (=> setNonEmpty!42644 (= setRes!42644 (and tp!1748709 (inv!83719 setElem!42644) e!3813650))))

(declare-fun setRest!42644 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42644 (= res!2586489 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42644 true) setRest!42644))))

(declare-fun b!6270221 () Bool)

(declare-fun tp!1748710 () Bool)

(assert (=> b!6270221 (= e!3813650 tp!1748710)))

(assert (= (and d!1967922 condSetEmpty!42644) setIsEmpty!42644))

(assert (= (and d!1967922 (not condSetEmpty!42644)) setNonEmpty!42644))

(assert (= setNonEmpty!42644 b!6270221))

(declare-fun m!7092030 () Bool)

(assert (=> setNonEmpty!42644 m!7092030))

(assert (=> d!1967542 d!1967922))

(declare-fun d!1967932 () Bool)

(assert (=> d!1967932 (= (head!12879 lt!2351603) (h!71190 lt!2351603))))

(assert (=> b!6269688 d!1967932))

(assert (=> b!6269371 d!1967510))

(declare-fun bs!1565574 () Bool)

(declare-fun d!1967934 () Bool)

(assert (= bs!1565574 (and d!1967934 d!1967788)))

(declare-fun lambda!343452 () Int)

(assert (=> bs!1565574 (= lambda!343452 lambda!343420)))

(declare-fun bs!1565575 () Bool)

(assert (= bs!1565575 (and d!1967934 d!1967528)))

(assert (=> bs!1565575 (= lambda!343452 lambda!343380)))

(declare-fun bs!1565576 () Bool)

(assert (= bs!1565576 (and d!1967934 b!6270197)))

(assert (=> bs!1565576 (not (= lambda!343452 lambda!343448))))

(declare-fun bs!1565578 () Bool)

(assert (= bs!1565578 (and d!1967934 d!1967658)))

(assert (=> bs!1565578 (= lambda!343452 lambda!343400)))

(declare-fun bs!1565580 () Bool)

(assert (= bs!1565580 (and d!1967934 b!6270195)))

(assert (=> bs!1565580 (not (= lambda!343452 lambda!343446))))

(declare-fun bs!1565582 () Bool)

(assert (= bs!1565582 (and d!1967934 d!1967514)))

(assert (=> bs!1565582 (= lambda!343452 lambda!343358)))

(declare-fun bs!1565584 () Bool)

(assert (= bs!1565584 (and d!1967934 d!1967540)))

(assert (=> bs!1565584 (= lambda!343452 lambda!343381)))

(declare-fun bs!1565586 () Bool)

(assert (= bs!1565586 (and d!1967934 d!1967516)))

(assert (=> bs!1565586 (= lambda!343452 lambda!343362)))

(declare-fun bs!1565588 () Bool)

(assert (= bs!1565588 (and d!1967934 d!1967668)))

(assert (=> bs!1565588 (= lambda!343452 lambda!343401)))

(declare-fun bs!1565590 () Bool)

(assert (= bs!1565590 (and d!1967934 d!1967524)))

(assert (=> bs!1565590 (= lambda!343452 lambda!343365)))

(declare-fun b!6270222 () Bool)

(declare-fun e!3813655 () Regex!16189)

(assert (=> b!6270222 (= e!3813655 EmptyExpr!16189)))

(declare-fun b!6270223 () Bool)

(declare-fun e!3813653 () Bool)

(declare-fun e!3813651 () Bool)

(assert (=> b!6270223 (= e!3813653 e!3813651)))

(declare-fun c!1136189 () Bool)

(assert (=> b!6270223 (= c!1136189 (isEmpty!36775 (t!378422 lt!2351608)))))

(declare-fun b!6270224 () Bool)

(declare-fun e!3813652 () Regex!16189)

(assert (=> b!6270224 (= e!3813652 e!3813655)))

(declare-fun c!1136190 () Bool)

(assert (=> b!6270224 (= c!1136190 ((_ is Cons!64742) (t!378422 lt!2351608)))))

(declare-fun b!6270225 () Bool)

(declare-fun lt!2351862 () Regex!16189)

(assert (=> b!6270225 (= e!3813651 (isEmptyExpr!1595 lt!2351862))))

(declare-fun b!6270226 () Bool)

(declare-fun e!3813654 () Bool)

(assert (=> b!6270226 (= e!3813654 (isConcat!1118 lt!2351862))))

(declare-fun b!6270227 () Bool)

(assert (=> b!6270227 (= e!3813651 e!3813654)))

(declare-fun c!1136188 () Bool)

(assert (=> b!6270227 (= c!1136188 (isEmpty!36775 (tail!11964 (t!378422 lt!2351608))))))

(declare-fun b!6270229 () Bool)

(assert (=> b!6270229 (= e!3813654 (= lt!2351862 (head!12879 (t!378422 lt!2351608))))))

(declare-fun b!6270230 () Bool)

(declare-fun e!3813656 () Bool)

(assert (=> b!6270230 (= e!3813656 (isEmpty!36775 (t!378422 (t!378422 lt!2351608))))))

(declare-fun b!6270231 () Bool)

(assert (=> b!6270231 (= e!3813655 (Concat!25034 (h!71190 (t!378422 lt!2351608)) (generalisedConcat!1786 (t!378422 (t!378422 lt!2351608)))))))

(assert (=> d!1967934 e!3813653))

(declare-fun res!2586490 () Bool)

(assert (=> d!1967934 (=> (not res!2586490) (not e!3813653))))

(assert (=> d!1967934 (= res!2586490 (validRegex!7925 lt!2351862))))

(assert (=> d!1967934 (= lt!2351862 e!3813652)))

(declare-fun c!1136187 () Bool)

(assert (=> d!1967934 (= c!1136187 e!3813656)))

(declare-fun res!2586491 () Bool)

(assert (=> d!1967934 (=> (not res!2586491) (not e!3813656))))

(assert (=> d!1967934 (= res!2586491 ((_ is Cons!64742) (t!378422 lt!2351608)))))

(assert (=> d!1967934 (forall!15316 (t!378422 lt!2351608) lambda!343452)))

(assert (=> d!1967934 (= (generalisedConcat!1786 (t!378422 lt!2351608)) lt!2351862)))

(declare-fun b!6270228 () Bool)

(assert (=> b!6270228 (= e!3813652 (h!71190 (t!378422 lt!2351608)))))

(assert (= (and d!1967934 res!2586491) b!6270230))

(assert (= (and d!1967934 c!1136187) b!6270228))

(assert (= (and d!1967934 (not c!1136187)) b!6270224))

(assert (= (and b!6270224 c!1136190) b!6270231))

(assert (= (and b!6270224 (not c!1136190)) b!6270222))

(assert (= (and d!1967934 res!2586490) b!6270223))

(assert (= (and b!6270223 c!1136189) b!6270225))

(assert (= (and b!6270223 (not c!1136189)) b!6270227))

(assert (= (and b!6270227 c!1136188) b!6270229))

(assert (= (and b!6270227 (not c!1136188)) b!6270226))

(declare-fun m!7092038 () Bool)

(assert (=> d!1967934 m!7092038))

(declare-fun m!7092040 () Bool)

(assert (=> d!1967934 m!7092040))

(declare-fun m!7092042 () Bool)

(assert (=> b!6270231 m!7092042))

(declare-fun m!7092044 () Bool)

(assert (=> b!6270229 m!7092044))

(assert (=> b!6270223 m!7091452))

(declare-fun m!7092048 () Bool)

(assert (=> b!6270230 m!7092048))

(declare-fun m!7092050 () Bool)

(assert (=> b!6270226 m!7092050))

(declare-fun m!7092052 () Bool)

(assert (=> b!6270227 m!7092052))

(assert (=> b!6270227 m!7092052))

(declare-fun m!7092054 () Bool)

(assert (=> b!6270227 m!7092054))

(declare-fun m!7092056 () Bool)

(assert (=> b!6270225 m!7092056))

(assert (=> b!6269658 d!1967934))

(declare-fun b!6270243 () Bool)

(declare-fun e!3813670 () Bool)

(declare-fun e!3813667 () Bool)

(assert (=> b!6270243 (= e!3813670 e!3813667)))

(declare-fun c!1136195 () Bool)

(assert (=> b!6270243 (= c!1136195 ((_ is Star!16189) lt!2351664))))

(declare-fun d!1967944 () Bool)

(declare-fun res!2586500 () Bool)

(assert (=> d!1967944 (=> res!2586500 e!3813670)))

(assert (=> d!1967944 (= res!2586500 ((_ is ElementMatch!16189) lt!2351664))))

(assert (=> d!1967944 (= (validRegex!7925 lt!2351664) e!3813670)))

(declare-fun bm!530204 () Bool)

(declare-fun call!530209 () Bool)

(declare-fun call!530210 () Bool)

(assert (=> bm!530204 (= call!530209 call!530210)))

(declare-fun b!6270244 () Bool)

(declare-fun e!3813671 () Bool)

(assert (=> b!6270244 (= e!3813667 e!3813671)))

(declare-fun c!1136194 () Bool)

(assert (=> b!6270244 (= c!1136194 ((_ is Union!16189) lt!2351664))))

(declare-fun b!6270245 () Bool)

(declare-fun e!3813669 () Bool)

(declare-fun e!3813666 () Bool)

(assert (=> b!6270245 (= e!3813669 e!3813666)))

(declare-fun res!2586498 () Bool)

(assert (=> b!6270245 (=> (not res!2586498) (not e!3813666))))

(declare-fun call!530211 () Bool)

(assert (=> b!6270245 (= res!2586498 call!530211)))

(declare-fun b!6270246 () Bool)

(declare-fun e!3813668 () Bool)

(assert (=> b!6270246 (= e!3813668 call!530210)))

(declare-fun b!6270247 () Bool)

(declare-fun res!2586497 () Bool)

(declare-fun e!3813665 () Bool)

(assert (=> b!6270247 (=> (not res!2586497) (not e!3813665))))

(assert (=> b!6270247 (= res!2586497 call!530211)))

(assert (=> b!6270247 (= e!3813671 e!3813665)))

(declare-fun bm!530205 () Bool)

(assert (=> bm!530205 (= call!530211 (validRegex!7925 (ite c!1136194 (regOne!32891 lt!2351664) (regOne!32890 lt!2351664))))))

(declare-fun b!6270248 () Bool)

(declare-fun res!2586499 () Bool)

(assert (=> b!6270248 (=> res!2586499 e!3813669)))

(assert (=> b!6270248 (= res!2586499 (not ((_ is Concat!25034) lt!2351664)))))

(assert (=> b!6270248 (= e!3813671 e!3813669)))

(declare-fun b!6270249 () Bool)

(assert (=> b!6270249 (= e!3813666 call!530209)))

(declare-fun b!6270250 () Bool)

(assert (=> b!6270250 (= e!3813665 call!530209)))

(declare-fun b!6270251 () Bool)

(assert (=> b!6270251 (= e!3813667 e!3813668)))

(declare-fun res!2586501 () Bool)

(assert (=> b!6270251 (= res!2586501 (not (nullable!6182 (reg!16518 lt!2351664))))))

(assert (=> b!6270251 (=> (not res!2586501) (not e!3813668))))

(declare-fun bm!530206 () Bool)

(assert (=> bm!530206 (= call!530210 (validRegex!7925 (ite c!1136195 (reg!16518 lt!2351664) (ite c!1136194 (regTwo!32891 lt!2351664) (regTwo!32890 lt!2351664)))))))

(assert (= (and d!1967944 (not res!2586500)) b!6270243))

(assert (= (and b!6270243 c!1136195) b!6270251))

(assert (= (and b!6270243 (not c!1136195)) b!6270244))

(assert (= (and b!6270251 res!2586501) b!6270246))

(assert (= (and b!6270244 c!1136194) b!6270247))

(assert (= (and b!6270244 (not c!1136194)) b!6270248))

(assert (= (and b!6270247 res!2586497) b!6270250))

(assert (= (and b!6270248 (not res!2586499)) b!6270245))

(assert (= (and b!6270245 res!2586498) b!6270249))

(assert (= (or b!6270250 b!6270249) bm!530204))

(assert (= (or b!6270247 b!6270245) bm!530205))

(assert (= (or b!6270246 bm!530204) bm!530206))

(declare-fun m!7092064 () Bool)

(assert (=> bm!530205 m!7092064))

(declare-fun m!7092066 () Bool)

(assert (=> b!6270251 m!7092066))

(declare-fun m!7092068 () Bool)

(assert (=> bm!530206 m!7092068))

(assert (=> d!1967486 d!1967944))

(declare-fun bs!1565597 () Bool)

(declare-fun d!1967948 () Bool)

(assert (= bs!1565597 (and d!1967948 d!1967788)))

(declare-fun lambda!343454 () Int)

(assert (=> bs!1565597 (= lambda!343454 lambda!343420)))

(declare-fun bs!1565599 () Bool)

(assert (= bs!1565599 (and d!1967948 d!1967528)))

(assert (=> bs!1565599 (= lambda!343454 lambda!343380)))

(declare-fun bs!1565601 () Bool)

(assert (= bs!1565601 (and d!1967948 b!6270197)))

(assert (=> bs!1565601 (not (= lambda!343454 lambda!343448))))

(declare-fun bs!1565602 () Bool)

(assert (= bs!1565602 (and d!1967948 d!1967658)))

(assert (=> bs!1565602 (= lambda!343454 lambda!343400)))

(declare-fun bs!1565603 () Bool)

(assert (= bs!1565603 (and d!1967948 b!6270195)))

(assert (=> bs!1565603 (not (= lambda!343454 lambda!343446))))

(declare-fun bs!1565604 () Bool)

(assert (= bs!1565604 (and d!1967948 d!1967934)))

(assert (=> bs!1565604 (= lambda!343454 lambda!343452)))

(declare-fun bs!1565605 () Bool)

(assert (= bs!1565605 (and d!1967948 d!1967514)))

(assert (=> bs!1565605 (= lambda!343454 lambda!343358)))

(declare-fun bs!1565606 () Bool)

(assert (= bs!1565606 (and d!1967948 d!1967540)))

(assert (=> bs!1565606 (= lambda!343454 lambda!343381)))

(declare-fun bs!1565607 () Bool)

(assert (= bs!1565607 (and d!1967948 d!1967516)))

(assert (=> bs!1565607 (= lambda!343454 lambda!343362)))

(declare-fun bs!1565608 () Bool)

(assert (= bs!1565608 (and d!1967948 d!1967668)))

(assert (=> bs!1565608 (= lambda!343454 lambda!343401)))

(declare-fun bs!1565609 () Bool)

(assert (= bs!1565609 (and d!1967948 d!1967524)))

(assert (=> bs!1565609 (= lambda!343454 lambda!343365)))

(declare-fun e!3813679 () Bool)

(assert (=> d!1967948 e!3813679))

(declare-fun res!2586505 () Bool)

(assert (=> d!1967948 (=> (not res!2586505) (not e!3813679))))

(declare-fun lt!2351864 () Regex!16189)

(assert (=> d!1967948 (= res!2586505 (validRegex!7925 lt!2351864))))

(declare-fun e!3813678 () Regex!16189)

(assert (=> d!1967948 (= lt!2351864 e!3813678)))

(declare-fun c!1136197 () Bool)

(declare-fun e!3813677 () Bool)

(assert (=> d!1967948 (= c!1136197 e!3813677)))

(declare-fun res!2586504 () Bool)

(assert (=> d!1967948 (=> (not res!2586504) (not e!3813677))))

(assert (=> d!1967948 (= res!2586504 ((_ is Cons!64742) (unfocusZipperList!1610 lt!2351599)))))

(assert (=> d!1967948 (forall!15316 (unfocusZipperList!1610 lt!2351599) lambda!343454)))

(assert (=> d!1967948 (= (generalisedUnion!2033 (unfocusZipperList!1610 lt!2351599)) lt!2351864)))

(declare-fun b!6270254 () Bool)

(assert (=> b!6270254 (= e!3813677 (isEmpty!36775 (t!378422 (unfocusZipperList!1610 lt!2351599))))))

(declare-fun b!6270255 () Bool)

(declare-fun e!3813676 () Bool)

(assert (=> b!6270255 (= e!3813676 (= lt!2351864 (head!12879 (unfocusZipperList!1610 lt!2351599))))))

(declare-fun b!6270256 () Bool)

(assert (=> b!6270256 (= e!3813678 (h!71190 (unfocusZipperList!1610 lt!2351599)))))

(declare-fun b!6270257 () Bool)

(declare-fun e!3813675 () Regex!16189)

(assert (=> b!6270257 (= e!3813678 e!3813675)))

(declare-fun c!1136198 () Bool)

(assert (=> b!6270257 (= c!1136198 ((_ is Cons!64742) (unfocusZipperList!1610 lt!2351599)))))

(declare-fun b!6270258 () Bool)

(assert (=> b!6270258 (= e!3813676 (isUnion!1033 lt!2351864))))

(declare-fun b!6270259 () Bool)

(declare-fun e!3813674 () Bool)

(assert (=> b!6270259 (= e!3813679 e!3813674)))

(declare-fun c!1136199 () Bool)

(assert (=> b!6270259 (= c!1136199 (isEmpty!36775 (unfocusZipperList!1610 lt!2351599)))))

(declare-fun b!6270260 () Bool)

(assert (=> b!6270260 (= e!3813675 (Union!16189 (h!71190 (unfocusZipperList!1610 lt!2351599)) (generalisedUnion!2033 (t!378422 (unfocusZipperList!1610 lt!2351599)))))))

(declare-fun b!6270261 () Bool)

(assert (=> b!6270261 (= e!3813674 e!3813676)))

(declare-fun c!1136196 () Bool)

(assert (=> b!6270261 (= c!1136196 (isEmpty!36775 (tail!11964 (unfocusZipperList!1610 lt!2351599))))))

(declare-fun b!6270262 () Bool)

(assert (=> b!6270262 (= e!3813675 EmptyLang!16189)))

(declare-fun b!6270263 () Bool)

(assert (=> b!6270263 (= e!3813674 (isEmptyLang!1603 lt!2351864))))

(assert (= (and d!1967948 res!2586504) b!6270254))

(assert (= (and d!1967948 c!1136197) b!6270256))

(assert (= (and d!1967948 (not c!1136197)) b!6270257))

(assert (= (and b!6270257 c!1136198) b!6270260))

(assert (= (and b!6270257 (not c!1136198)) b!6270262))

(assert (= (and d!1967948 res!2586505) b!6270259))

(assert (= (and b!6270259 c!1136199) b!6270263))

(assert (= (and b!6270259 (not c!1136199)) b!6270261))

(assert (= (and b!6270261 c!1136196) b!6270255))

(assert (= (and b!6270261 (not c!1136196)) b!6270258))

(declare-fun m!7092084 () Bool)

(assert (=> b!6270263 m!7092084))

(declare-fun m!7092086 () Bool)

(assert (=> b!6270260 m!7092086))

(declare-fun m!7092088 () Bool)

(assert (=> b!6270254 m!7092088))

(declare-fun m!7092090 () Bool)

(assert (=> b!6270258 m!7092090))

(assert (=> b!6270259 m!7090960))

(declare-fun m!7092092 () Bool)

(assert (=> b!6270259 m!7092092))

(assert (=> b!6270255 m!7090960))

(declare-fun m!7092094 () Bool)

(assert (=> b!6270255 m!7092094))

(assert (=> b!6270261 m!7090960))

(declare-fun m!7092096 () Bool)

(assert (=> b!6270261 m!7092096))

(assert (=> b!6270261 m!7092096))

(declare-fun m!7092098 () Bool)

(assert (=> b!6270261 m!7092098))

(declare-fun m!7092100 () Bool)

(assert (=> d!1967948 m!7092100))

(assert (=> d!1967948 m!7090960))

(declare-fun m!7092102 () Bool)

(assert (=> d!1967948 m!7092102))

(assert (=> d!1967486 d!1967948))

(declare-fun bs!1565610 () Bool)

(declare-fun d!1967958 () Bool)

(assert (= bs!1565610 (and d!1967958 d!1967788)))

(declare-fun lambda!343455 () Int)

(assert (=> bs!1565610 (= lambda!343455 lambda!343420)))

(declare-fun bs!1565611 () Bool)

(assert (= bs!1565611 (and d!1967958 d!1967948)))

(assert (=> bs!1565611 (= lambda!343455 lambda!343454)))

(declare-fun bs!1565612 () Bool)

(assert (= bs!1565612 (and d!1967958 d!1967528)))

(assert (=> bs!1565612 (= lambda!343455 lambda!343380)))

(declare-fun bs!1565613 () Bool)

(assert (= bs!1565613 (and d!1967958 b!6270197)))

(assert (=> bs!1565613 (not (= lambda!343455 lambda!343448))))

(declare-fun bs!1565614 () Bool)

(assert (= bs!1565614 (and d!1967958 d!1967658)))

(assert (=> bs!1565614 (= lambda!343455 lambda!343400)))

(declare-fun bs!1565615 () Bool)

(assert (= bs!1565615 (and d!1967958 b!6270195)))

(assert (=> bs!1565615 (not (= lambda!343455 lambda!343446))))

(declare-fun bs!1565616 () Bool)

(assert (= bs!1565616 (and d!1967958 d!1967934)))

(assert (=> bs!1565616 (= lambda!343455 lambda!343452)))

(declare-fun bs!1565617 () Bool)

(assert (= bs!1565617 (and d!1967958 d!1967514)))

(assert (=> bs!1565617 (= lambda!343455 lambda!343358)))

(declare-fun bs!1565618 () Bool)

(assert (= bs!1565618 (and d!1967958 d!1967540)))

(assert (=> bs!1565618 (= lambda!343455 lambda!343381)))

(declare-fun bs!1565619 () Bool)

(assert (= bs!1565619 (and d!1967958 d!1967516)))

(assert (=> bs!1565619 (= lambda!343455 lambda!343362)))

(declare-fun bs!1565620 () Bool)

(assert (= bs!1565620 (and d!1967958 d!1967668)))

(assert (=> bs!1565620 (= lambda!343455 lambda!343401)))

(declare-fun bs!1565621 () Bool)

(assert (= bs!1565621 (and d!1967958 d!1967524)))

(assert (=> bs!1565621 (= lambda!343455 lambda!343365)))

(declare-fun lt!2351865 () List!64866)

(assert (=> d!1967958 (forall!15316 lt!2351865 lambda!343455)))

(declare-fun e!3813687 () List!64866)

(assert (=> d!1967958 (= lt!2351865 e!3813687)))

(declare-fun c!1136202 () Bool)

(assert (=> d!1967958 (= c!1136202 ((_ is Cons!64743) lt!2351599))))

(assert (=> d!1967958 (= (unfocusZipperList!1610 lt!2351599) lt!2351865)))

(declare-fun b!6270273 () Bool)

(assert (=> b!6270273 (= e!3813687 (Cons!64742 (generalisedConcat!1786 (exprs!6073 (h!71191 lt!2351599))) (unfocusZipperList!1610 (t!378423 lt!2351599))))))

(declare-fun b!6270274 () Bool)

(assert (=> b!6270274 (= e!3813687 Nil!64742)))

(assert (= (and d!1967958 c!1136202) b!6270273))

(assert (= (and d!1967958 (not c!1136202)) b!6270274))

(declare-fun m!7092104 () Bool)

(assert (=> d!1967958 m!7092104))

(declare-fun m!7092106 () Bool)

(assert (=> b!6270273 m!7092106))

(declare-fun m!7092108 () Bool)

(assert (=> b!6270273 m!7092108))

(assert (=> d!1967486 d!1967958))

(declare-fun d!1967960 () Bool)

(declare-fun c!1136203 () Bool)

(assert (=> d!1967960 (= c!1136203 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3813688 () Bool)

(assert (=> d!1967960 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351600 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3813688)))

(declare-fun b!6270275 () Bool)

(assert (=> b!6270275 (= e!3813688 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351600 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270276 () Bool)

(assert (=> b!6270276 (= e!3813688 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351600 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1967960 c!1136203) b!6270275))

(assert (= (and d!1967960 (not c!1136203)) b!6270276))

(assert (=> d!1967960 m!7091032))

(declare-fun m!7092110 () Bool)

(assert (=> d!1967960 m!7092110))

(assert (=> b!6270275 m!7091234))

(declare-fun m!7092112 () Bool)

(assert (=> b!6270275 m!7092112))

(assert (=> b!6270276 m!7091032))

(declare-fun m!7092114 () Bool)

(assert (=> b!6270276 m!7092114))

(assert (=> b!6270276 m!7091234))

(assert (=> b!6270276 m!7092114))

(declare-fun m!7092116 () Bool)

(assert (=> b!6270276 m!7092116))

(assert (=> b!6270276 m!7091032))

(declare-fun m!7092118 () Bool)

(assert (=> b!6270276 m!7092118))

(assert (=> b!6270276 m!7092116))

(assert (=> b!6270276 m!7092118))

(declare-fun m!7092120 () Bool)

(assert (=> b!6270276 m!7092120))

(assert (=> b!6269426 d!1967960))

(declare-fun bs!1565622 () Bool)

(declare-fun d!1967962 () Bool)

(assert (= bs!1565622 (and d!1967962 b!6268873)))

(declare-fun lambda!343456 () Int)

(assert (=> bs!1565622 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343456 lambda!343319))))

(declare-fun bs!1565623 () Bool)

(assert (= bs!1565623 (and d!1967962 d!1967654)))

(assert (=> bs!1565623 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343456 lambda!343399))))

(declare-fun bs!1565624 () Bool)

(assert (= bs!1565624 (and d!1967962 d!1967706)))

(assert (=> bs!1565624 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343456 lambda!343411))))

(assert (=> d!1967962 true))

(assert (=> d!1967962 (= (derivationStepZipper!2155 lt!2351600 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351600 lambda!343456))))

(declare-fun bs!1565625 () Bool)

(assert (= bs!1565625 d!1967962))

(declare-fun m!7092122 () Bool)

(assert (=> bs!1565625 m!7092122))

(assert (=> b!6269426 d!1967962))

(declare-fun d!1967964 () Bool)

(assert (=> d!1967964 (= (head!12878 (t!378424 s!2326)) (h!71192 (t!378424 s!2326)))))

(assert (=> b!6269426 d!1967964))

(declare-fun d!1967966 () Bool)

(assert (=> d!1967966 (= (tail!11963 (t!378424 s!2326)) (t!378424 (t!378424 s!2326)))))

(assert (=> b!6269426 d!1967966))

(assert (=> b!6269704 d!1967834))

(assert (=> d!1967632 d!1967600))

(assert (=> d!1967632 d!1967588))

(declare-fun d!1967968 () Bool)

(assert (=> d!1967968 (= (matchR!8372 r!7292 s!2326) (matchRSpec!3290 r!7292 s!2326))))

(assert (=> d!1967968 true))

(declare-fun _$88!4910 () Unit!158087)

(assert (=> d!1967968 (= (choose!46515 r!7292 s!2326) _$88!4910)))

(declare-fun bs!1565626 () Bool)

(assert (= bs!1565626 d!1967968))

(assert (=> bs!1565626 m!7090770))

(assert (=> bs!1565626 m!7090768))

(assert (=> d!1967632 d!1967968))

(assert (=> d!1967632 d!1967534))

(declare-fun b!6270313 () Bool)

(declare-fun e!3813711 () Int)

(declare-fun call!530224 () Int)

(assert (=> b!6270313 (= e!3813711 (+ 1 call!530224))))

(declare-fun b!6270314 () Bool)

(declare-fun e!3813713 () Int)

(declare-fun call!530225 () Int)

(declare-fun call!530223 () Int)

(assert (=> b!6270314 (= e!3813713 (+ 1 call!530225 call!530223))))

(declare-fun b!6270315 () Bool)

(declare-fun e!3813712 () Int)

(assert (=> b!6270315 (= e!3813712 (+ 1 call!530225 call!530223))))

(declare-fun b!6270316 () Bool)

(declare-fun c!1136219 () Bool)

(assert (=> b!6270316 (= c!1136219 ((_ is Union!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6270316 (= e!3813711 e!3813712)))

(declare-fun bm!530218 () Bool)

(assert (=> bm!530218 (= call!530225 (regexDepthTotal!164 (ite c!1136219 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6270317 () Bool)

(assert (=> b!6270317 (= e!3813713 1)))

(declare-fun b!6270318 () Bool)

(assert (=> b!6270318 (= e!3813712 e!3813713)))

(declare-fun c!1136218 () Bool)

(assert (=> b!6270318 (= c!1136218 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270319 () Bool)

(declare-fun e!3813710 () Int)

(assert (=> b!6270319 (= e!3813710 1)))

(declare-fun d!1967970 () Bool)

(declare-fun lt!2351868 () Int)

(assert (=> d!1967970 (> lt!2351868 0)))

(assert (=> d!1967970 (= lt!2351868 e!3813710)))

(declare-fun c!1136220 () Bool)

(assert (=> d!1967970 (= c!1136220 ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> d!1967970 (= (regexDepthTotal!164 (h!71190 (exprs!6073 (h!71191 zl!343)))) lt!2351868)))

(declare-fun b!6270320 () Bool)

(assert (=> b!6270320 (= e!3813710 e!3813711)))

(declare-fun c!1136217 () Bool)

(assert (=> b!6270320 (= c!1136217 ((_ is Star!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun bm!530219 () Bool)

(assert (=> bm!530219 (= call!530224 (regexDepthTotal!164 (ite c!1136217 (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1136219 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))

(declare-fun bm!530220 () Bool)

(assert (=> bm!530220 (= call!530223 call!530224)))

(assert (= (and d!1967970 c!1136220) b!6270319))

(assert (= (and d!1967970 (not c!1136220)) b!6270320))

(assert (= (and b!6270320 c!1136217) b!6270313))

(assert (= (and b!6270320 (not c!1136217)) b!6270316))

(assert (= (and b!6270316 c!1136219) b!6270315))

(assert (= (and b!6270316 (not c!1136219)) b!6270318))

(assert (= (and b!6270318 c!1136218) b!6270314))

(assert (= (and b!6270318 (not c!1136218)) b!6270317))

(assert (= (or b!6270315 b!6270314) bm!530220))

(assert (= (or b!6270315 b!6270314) bm!530218))

(assert (= (or b!6270313 bm!530220) bm!530219))

(declare-fun m!7092136 () Bool)

(assert (=> bm!530218 m!7092136))

(declare-fun m!7092138 () Bool)

(assert (=> bm!530219 m!7092138))

(assert (=> b!6269746 d!1967970))

(declare-fun d!1967980 () Bool)

(declare-fun lt!2351869 () Int)

(assert (=> d!1967980 (>= lt!2351869 0)))

(declare-fun e!3813714 () Int)

(assert (=> d!1967980 (= lt!2351869 e!3813714)))

(declare-fun c!1136221 () Bool)

(assert (=> d!1967980 (= c!1136221 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(assert (=> d!1967980 (= (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))) lt!2351869)))

(declare-fun b!6270321 () Bool)

(assert (=> b!6270321 (= e!3813714 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))))))))))

(declare-fun b!6270322 () Bool)

(assert (=> b!6270322 (= e!3813714 1)))

(assert (= (and d!1967980 c!1136221) b!6270321))

(assert (= (and d!1967980 (not c!1136221)) b!6270322))

(declare-fun m!7092140 () Bool)

(assert (=> b!6270321 m!7092140))

(declare-fun m!7092142 () Bool)

(assert (=> b!6270321 m!7092142))

(assert (=> b!6269746 d!1967980))

(assert (=> d!1967702 d!1967704))

(declare-fun d!1967982 () Bool)

(assert (=> d!1967982 (= (flatMap!1694 lt!2351636 lambda!343319) (dynLambda!25599 lambda!343319 lt!2351628))))

(assert (=> d!1967982 true))

(declare-fun _$13!3380 () Unit!158087)

(assert (=> d!1967982 (= (choose!46506 lt!2351636 lt!2351628 lambda!343319) _$13!3380)))

(declare-fun b_lambda!238759 () Bool)

(assert (=> (not b_lambda!238759) (not d!1967982)))

(declare-fun bs!1565646 () Bool)

(assert (= bs!1565646 d!1967982))

(assert (=> bs!1565646 m!7090790))

(assert (=> bs!1565646 m!7091582))

(assert (=> d!1967702 d!1967982))

(declare-fun d!1967984 () Bool)

(declare-fun res!2586525 () Bool)

(declare-fun e!3813719 () Bool)

(assert (=> d!1967984 (=> res!2586525 e!3813719)))

(assert (=> d!1967984 (= res!2586525 ((_ is Nil!64743) lt!2351780))))

(assert (=> d!1967984 (= (noDuplicate!2022 lt!2351780) e!3813719)))

(declare-fun b!6270327 () Bool)

(declare-fun e!3813720 () Bool)

(assert (=> b!6270327 (= e!3813719 e!3813720)))

(declare-fun res!2586526 () Bool)

(assert (=> b!6270327 (=> (not res!2586526) (not e!3813720))))

(declare-fun contains!20120 (List!64867 Context!11146) Bool)

(assert (=> b!6270327 (= res!2586526 (not (contains!20120 (t!378423 lt!2351780) (h!71191 lt!2351780))))))

(declare-fun b!6270328 () Bool)

(assert (=> b!6270328 (= e!3813720 (noDuplicate!2022 (t!378423 lt!2351780)))))

(assert (= (and d!1967984 (not res!2586525)) b!6270327))

(assert (= (and b!6270327 res!2586526) b!6270328))

(declare-fun m!7092150 () Bool)

(assert (=> b!6270327 m!7092150))

(declare-fun m!7092152 () Bool)

(assert (=> b!6270328 m!7092152))

(assert (=> d!1967684 d!1967984))

(declare-fun d!1967988 () Bool)

(declare-fun e!3813727 () Bool)

(assert (=> d!1967988 e!3813727))

(declare-fun res!2586531 () Bool)

(assert (=> d!1967988 (=> (not res!2586531) (not e!3813727))))

(declare-fun res!2586532 () List!64867)

(assert (=> d!1967988 (= res!2586531 (noDuplicate!2022 res!2586532))))

(declare-fun e!3813729 () Bool)

(assert (=> d!1967988 e!3813729))

(assert (=> d!1967988 (= (choose!46514 z!1189) res!2586532)))

(declare-fun b!6270336 () Bool)

(declare-fun e!3813728 () Bool)

(declare-fun tp!1748716 () Bool)

(assert (=> b!6270336 (= e!3813728 tp!1748716)))

(declare-fun tp!1748715 () Bool)

(declare-fun b!6270335 () Bool)

(assert (=> b!6270335 (= e!3813729 (and (inv!83719 (h!71191 res!2586532)) e!3813728 tp!1748715))))

(declare-fun b!6270337 () Bool)

(assert (=> b!6270337 (= e!3813727 (= (content!12159 res!2586532) z!1189))))

(assert (= b!6270335 b!6270336))

(assert (= (and d!1967988 ((_ is Cons!64743) res!2586532)) b!6270335))

(assert (= (and d!1967988 res!2586531) b!6270337))

(declare-fun m!7092158 () Bool)

(assert (=> d!1967988 m!7092158))

(declare-fun m!7092160 () Bool)

(assert (=> b!6270335 m!7092160))

(declare-fun m!7092162 () Bool)

(assert (=> b!6270337 m!7092162))

(assert (=> d!1967684 d!1967988))

(declare-fun bs!1565674 () Bool)

(declare-fun b!6270340 () Bool)

(assert (= bs!1565674 (and b!6270340 d!1967698)))

(declare-fun lambda!343467 () Int)

(assert (=> bs!1565674 (not (= lambda!343467 lambda!343409))))

(assert (=> bs!1565674 (not (= lambda!343467 lambda!343410))))

(declare-fun bs!1565679 () Bool)

(assert (= bs!1565679 (and b!6270340 b!6269521)))

(assert (=> bs!1565679 (not (= lambda!343467 lambda!343394))))

(declare-fun bs!1565682 () Bool)

(assert (= bs!1565682 (and b!6270340 b!6269515)))

(assert (=> bs!1565682 (= (and (= (reg!16518 (regOne!32891 r!7292)) (reg!16518 r!7292)) (= (regOne!32891 r!7292) r!7292)) (= lambda!343467 lambda!343393))))

(declare-fun bs!1565684 () Bool)

(assert (= bs!1565684 (and b!6270340 d!1967696)))

(assert (=> bs!1565684 (not (= lambda!343467 lambda!343404))))

(declare-fun bs!1565686 () Bool)

(assert (= bs!1565686 (and b!6270340 b!6268871)))

(assert (=> bs!1565686 (not (= lambda!343467 lambda!343318))))

(assert (=> bs!1565686 (not (= lambda!343467 lambda!343317))))

(assert (=> b!6270340 true))

(assert (=> b!6270340 true))

(declare-fun bs!1565687 () Bool)

(declare-fun b!6270346 () Bool)

(assert (= bs!1565687 (and b!6270346 d!1967698)))

(declare-fun lambda!343469 () Int)

(assert (=> bs!1565687 (not (= lambda!343469 lambda!343409))))

(declare-fun bs!1565688 () Bool)

(assert (= bs!1565688 (and b!6270346 b!6269521)))

(assert (=> bs!1565688 (= (and (= (regOne!32890 (regOne!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regOne!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343469 lambda!343394))))

(declare-fun bs!1565689 () Bool)

(assert (= bs!1565689 (and b!6270346 b!6269515)))

(assert (=> bs!1565689 (not (= lambda!343469 lambda!343393))))

(declare-fun bs!1565690 () Bool)

(assert (= bs!1565690 (and b!6270346 d!1967696)))

(assert (=> bs!1565690 (not (= lambda!343469 lambda!343404))))

(declare-fun bs!1565691 () Bool)

(assert (= bs!1565691 (and b!6270346 b!6268871)))

(assert (=> bs!1565691 (= (and (= (regOne!32890 (regOne!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regOne!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343469 lambda!343318))))

(assert (=> bs!1565691 (not (= lambda!343469 lambda!343317))))

(declare-fun bs!1565692 () Bool)

(assert (= bs!1565692 (and b!6270346 b!6270340)))

(assert (=> bs!1565692 (not (= lambda!343469 lambda!343467))))

(assert (=> bs!1565687 (= (and (= (regOne!32890 (regOne!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regOne!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343469 lambda!343410))))

(assert (=> b!6270346 true))

(assert (=> b!6270346 true))

(declare-fun b!6270338 () Bool)

(declare-fun e!3813734 () Bool)

(declare-fun e!3813733 () Bool)

(assert (=> b!6270338 (= e!3813734 e!3813733)))

(declare-fun res!2586535 () Bool)

(assert (=> b!6270338 (= res!2586535 (matchRSpec!3290 (regOne!32891 (regOne!32891 r!7292)) s!2326))))

(assert (=> b!6270338 (=> res!2586535 e!3813733)))

(declare-fun b!6270339 () Bool)

(declare-fun e!3813736 () Bool)

(declare-fun call!530227 () Bool)

(assert (=> b!6270339 (= e!3813736 call!530227)))

(declare-fun bm!530221 () Bool)

(assert (=> bm!530221 (= call!530227 (isEmpty!36777 s!2326))))

(declare-fun d!1967996 () Bool)

(declare-fun c!1136227 () Bool)

(assert (=> d!1967996 (= c!1136227 ((_ is EmptyExpr!16189) (regOne!32891 r!7292)))))

(assert (=> d!1967996 (= (matchRSpec!3290 (regOne!32891 r!7292) s!2326) e!3813736)))

(declare-fun call!530226 () Bool)

(declare-fun c!1136224 () Bool)

(declare-fun bm!530222 () Bool)

(assert (=> bm!530222 (= call!530226 (Exists!3259 (ite c!1136224 lambda!343467 lambda!343469)))))

(declare-fun e!3813730 () Bool)

(assert (=> b!6270340 (= e!3813730 call!530226)))

(declare-fun b!6270341 () Bool)

(assert (=> b!6270341 (= e!3813733 (matchRSpec!3290 (regTwo!32891 (regOne!32891 r!7292)) s!2326))))

(declare-fun b!6270342 () Bool)

(declare-fun e!3813735 () Bool)

(assert (=> b!6270342 (= e!3813736 e!3813735)))

(declare-fun res!2586533 () Bool)

(assert (=> b!6270342 (= res!2586533 (not ((_ is EmptyLang!16189) (regOne!32891 r!7292))))))

(assert (=> b!6270342 (=> (not res!2586533) (not e!3813735))))

(declare-fun b!6270343 () Bool)

(declare-fun e!3813732 () Bool)

(assert (=> b!6270343 (= e!3813732 (= s!2326 (Cons!64744 (c!1135772 (regOne!32891 r!7292)) Nil!64744)))))

(declare-fun b!6270344 () Bool)

(declare-fun res!2586534 () Bool)

(assert (=> b!6270344 (=> res!2586534 e!3813730)))

(assert (=> b!6270344 (= res!2586534 call!530227)))

(declare-fun e!3813731 () Bool)

(assert (=> b!6270344 (= e!3813731 e!3813730)))

(declare-fun b!6270345 () Bool)

(assert (=> b!6270345 (= e!3813734 e!3813731)))

(assert (=> b!6270345 (= c!1136224 ((_ is Star!16189) (regOne!32891 r!7292)))))

(assert (=> b!6270346 (= e!3813731 call!530226)))

(declare-fun b!6270347 () Bool)

(declare-fun c!1136225 () Bool)

(assert (=> b!6270347 (= c!1136225 ((_ is ElementMatch!16189) (regOne!32891 r!7292)))))

(assert (=> b!6270347 (= e!3813735 e!3813732)))

(declare-fun b!6270348 () Bool)

(declare-fun c!1136226 () Bool)

(assert (=> b!6270348 (= c!1136226 ((_ is Union!16189) (regOne!32891 r!7292)))))

(assert (=> b!6270348 (= e!3813732 e!3813734)))

(assert (= (and d!1967996 c!1136227) b!6270339))

(assert (= (and d!1967996 (not c!1136227)) b!6270342))

(assert (= (and b!6270342 res!2586533) b!6270347))

(assert (= (and b!6270347 c!1136225) b!6270343))

(assert (= (and b!6270347 (not c!1136225)) b!6270348))

(assert (= (and b!6270348 c!1136226) b!6270338))

(assert (= (and b!6270348 (not c!1136226)) b!6270345))

(assert (= (and b!6270338 (not res!2586535)) b!6270341))

(assert (= (and b!6270345 c!1136224) b!6270344))

(assert (= (and b!6270345 (not c!1136224)) b!6270346))

(assert (= (and b!6270344 (not res!2586534)) b!6270340))

(assert (= (or b!6270340 b!6270346) bm!530222))

(assert (= (or b!6270339 b!6270344) bm!530221))

(declare-fun m!7092186 () Bool)

(assert (=> b!6270338 m!7092186))

(assert (=> bm!530221 m!7091304))

(declare-fun m!7092188 () Bool)

(assert (=> bm!530222 m!7092188))

(declare-fun m!7092190 () Bool)

(assert (=> b!6270341 m!7092190))

(assert (=> b!6269513 d!1967996))

(declare-fun d!1968014 () Bool)

(declare-fun c!1136232 () Bool)

(assert (=> d!1968014 (= c!1136232 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun e!3813745 () Bool)

(assert (=> d!1968014 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351636 (head!12878 s!2326)) (tail!11963 s!2326)) e!3813745)))

(declare-fun b!6270365 () Bool)

(assert (=> b!6270365 (= e!3813745 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351636 (head!12878 s!2326))))))

(declare-fun b!6270366 () Bool)

(assert (=> b!6270366 (= e!3813745 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351636 (head!12878 s!2326)) (head!12878 (tail!11963 s!2326))) (tail!11963 (tail!11963 s!2326))))))

(assert (= (and d!1968014 c!1136232) b!6270365))

(assert (= (and d!1968014 (not c!1136232)) b!6270366))

(assert (=> d!1968014 m!7091372))

(assert (=> d!1968014 m!7091374))

(assert (=> b!6270365 m!7091464))

(declare-fun m!7092192 () Bool)

(assert (=> b!6270365 m!7092192))

(assert (=> b!6270366 m!7091372))

(assert (=> b!6270366 m!7091844))

(assert (=> b!6270366 m!7091464))

(assert (=> b!6270366 m!7091844))

(declare-fun m!7092194 () Bool)

(assert (=> b!6270366 m!7092194))

(assert (=> b!6270366 m!7091372))

(assert (=> b!6270366 m!7091846))

(assert (=> b!6270366 m!7092194))

(assert (=> b!6270366 m!7091846))

(declare-fun m!7092196 () Bool)

(assert (=> b!6270366 m!7092196))

(assert (=> b!6269680 d!1968014))

(declare-fun bs!1565693 () Bool)

(declare-fun d!1968016 () Bool)

(assert (= bs!1565693 (and d!1968016 b!6268873)))

(declare-fun lambda!343470 () Int)

(assert (=> bs!1565693 (= (= (head!12878 s!2326) (h!71192 s!2326)) (= lambda!343470 lambda!343319))))

(declare-fun bs!1565694 () Bool)

(assert (= bs!1565694 (and d!1968016 d!1967654)))

(assert (=> bs!1565694 (= (= (head!12878 s!2326) (h!71192 s!2326)) (= lambda!343470 lambda!343399))))

(declare-fun bs!1565696 () Bool)

(assert (= bs!1565696 (and d!1968016 d!1967706)))

(assert (=> bs!1565696 (= (= (head!12878 s!2326) (h!71192 s!2326)) (= lambda!343470 lambda!343411))))

(declare-fun bs!1565697 () Bool)

(assert (= bs!1565697 (and d!1968016 d!1967962)))

(assert (=> bs!1565697 (= (= (head!12878 s!2326) (head!12878 (t!378424 s!2326))) (= lambda!343470 lambda!343456))))

(assert (=> d!1968016 true))

(assert (=> d!1968016 (= (derivationStepZipper!2155 lt!2351636 (head!12878 s!2326)) (flatMap!1694 lt!2351636 lambda!343470))))

(declare-fun bs!1565698 () Bool)

(assert (= bs!1565698 d!1968016))

(declare-fun m!7092198 () Bool)

(assert (=> bs!1565698 m!7092198))

(assert (=> b!6269680 d!1968016))

(assert (=> b!6269680 d!1967834))

(assert (=> b!6269680 d!1967836))

(declare-fun bs!1565699 () Bool)

(declare-fun d!1968022 () Bool)

(assert (= bs!1565699 (and d!1968022 d!1967788)))

(declare-fun lambda!343471 () Int)

(assert (=> bs!1565699 (= lambda!343471 lambda!343420)))

(declare-fun bs!1565700 () Bool)

(assert (= bs!1565700 (and d!1968022 d!1967948)))

(assert (=> bs!1565700 (= lambda!343471 lambda!343454)))

(declare-fun bs!1565701 () Bool)

(assert (= bs!1565701 (and d!1968022 d!1967528)))

(assert (=> bs!1565701 (= lambda!343471 lambda!343380)))

(declare-fun bs!1565702 () Bool)

(assert (= bs!1565702 (and d!1968022 b!6270197)))

(assert (=> bs!1565702 (not (= lambda!343471 lambda!343448))))

(declare-fun bs!1565703 () Bool)

(assert (= bs!1565703 (and d!1968022 d!1967658)))

(assert (=> bs!1565703 (= lambda!343471 lambda!343400)))

(declare-fun bs!1565704 () Bool)

(assert (= bs!1565704 (and d!1968022 b!6270195)))

(assert (=> bs!1565704 (not (= lambda!343471 lambda!343446))))

(declare-fun bs!1565705 () Bool)

(assert (= bs!1565705 (and d!1968022 d!1967514)))

(assert (=> bs!1565705 (= lambda!343471 lambda!343358)))

(declare-fun bs!1565706 () Bool)

(assert (= bs!1565706 (and d!1968022 d!1967540)))

(assert (=> bs!1565706 (= lambda!343471 lambda!343381)))

(declare-fun bs!1565707 () Bool)

(assert (= bs!1565707 (and d!1968022 d!1967516)))

(assert (=> bs!1565707 (= lambda!343471 lambda!343362)))

(declare-fun bs!1565708 () Bool)

(assert (= bs!1565708 (and d!1968022 d!1967668)))

(assert (=> bs!1565708 (= lambda!343471 lambda!343401)))

(declare-fun bs!1565709 () Bool)

(assert (= bs!1565709 (and d!1968022 d!1967524)))

(assert (=> bs!1565709 (= lambda!343471 lambda!343365)))

(declare-fun bs!1565710 () Bool)

(assert (= bs!1565710 (and d!1968022 d!1967958)))

(assert (=> bs!1565710 (= lambda!343471 lambda!343455)))

(declare-fun bs!1565711 () Bool)

(assert (= bs!1565711 (and d!1968022 d!1967934)))

(assert (=> bs!1565711 (= lambda!343471 lambda!343452)))

(declare-fun e!3813758 () Bool)

(assert (=> d!1968022 e!3813758))

(declare-fun res!2586553 () Bool)

(assert (=> d!1968022 (=> (not res!2586553) (not e!3813758))))

(declare-fun lt!2351871 () Regex!16189)

(assert (=> d!1968022 (= res!2586553 (validRegex!7925 lt!2351871))))

(declare-fun e!3813757 () Regex!16189)

(assert (=> d!1968022 (= lt!2351871 e!3813757)))

(declare-fun c!1136236 () Bool)

(declare-fun e!3813756 () Bool)

(assert (=> d!1968022 (= c!1136236 e!3813756)))

(declare-fun res!2586552 () Bool)

(assert (=> d!1968022 (=> (not res!2586552) (not e!3813756))))

(assert (=> d!1968022 (= res!2586552 ((_ is Cons!64742) (t!378422 (unfocusZipperList!1610 zl!343))))))

(assert (=> d!1968022 (forall!15316 (t!378422 (unfocusZipperList!1610 zl!343)) lambda!343471)))

(assert (=> d!1968022 (= (generalisedUnion!2033 (t!378422 (unfocusZipperList!1610 zl!343))) lt!2351871)))

(declare-fun b!6270376 () Bool)

(assert (=> b!6270376 (= e!3813756 (isEmpty!36775 (t!378422 (t!378422 (unfocusZipperList!1610 zl!343)))))))

(declare-fun b!6270377 () Bool)

(declare-fun e!3813755 () Bool)

(assert (=> b!6270377 (= e!3813755 (= lt!2351871 (head!12879 (t!378422 (unfocusZipperList!1610 zl!343)))))))

(declare-fun b!6270378 () Bool)

(assert (=> b!6270378 (= e!3813757 (h!71190 (t!378422 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6270379 () Bool)

(declare-fun e!3813754 () Regex!16189)

(assert (=> b!6270379 (= e!3813757 e!3813754)))

(declare-fun c!1136237 () Bool)

(assert (=> b!6270379 (= c!1136237 ((_ is Cons!64742) (t!378422 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6270380 () Bool)

(assert (=> b!6270380 (= e!3813755 (isUnion!1033 lt!2351871))))

(declare-fun b!6270381 () Bool)

(declare-fun e!3813753 () Bool)

(assert (=> b!6270381 (= e!3813758 e!3813753)))

(declare-fun c!1136238 () Bool)

(assert (=> b!6270381 (= c!1136238 (isEmpty!36775 (t!378422 (unfocusZipperList!1610 zl!343))))))

(declare-fun b!6270382 () Bool)

(assert (=> b!6270382 (= e!3813754 (Union!16189 (h!71190 (t!378422 (unfocusZipperList!1610 zl!343))) (generalisedUnion!2033 (t!378422 (t!378422 (unfocusZipperList!1610 zl!343))))))))

(declare-fun b!6270383 () Bool)

(assert (=> b!6270383 (= e!3813753 e!3813755)))

(declare-fun c!1136235 () Bool)

(assert (=> b!6270383 (= c!1136235 (isEmpty!36775 (tail!11964 (t!378422 (unfocusZipperList!1610 zl!343)))))))

(declare-fun b!6270384 () Bool)

(assert (=> b!6270384 (= e!3813754 EmptyLang!16189)))

(declare-fun b!6270385 () Bool)

(assert (=> b!6270385 (= e!3813753 (isEmptyLang!1603 lt!2351871))))

(assert (= (and d!1968022 res!2586552) b!6270376))

(assert (= (and d!1968022 c!1136236) b!6270378))

(assert (= (and d!1968022 (not c!1136236)) b!6270379))

(assert (= (and b!6270379 c!1136237) b!6270382))

(assert (= (and b!6270379 (not c!1136237)) b!6270384))

(assert (= (and d!1968022 res!2586553) b!6270381))

(assert (= (and b!6270381 c!1136238) b!6270385))

(assert (= (and b!6270381 (not c!1136238)) b!6270383))

(assert (= (and b!6270383 c!1136235) b!6270377))

(assert (= (and b!6270383 (not c!1136235)) b!6270380))

(declare-fun m!7092206 () Bool)

(assert (=> b!6270385 m!7092206))

(declare-fun m!7092208 () Bool)

(assert (=> b!6270382 m!7092208))

(declare-fun m!7092210 () Bool)

(assert (=> b!6270376 m!7092210))

(declare-fun m!7092212 () Bool)

(assert (=> b!6270380 m!7092212))

(assert (=> b!6270381 m!7091040))

(declare-fun m!7092214 () Bool)

(assert (=> b!6270377 m!7092214))

(declare-fun m!7092216 () Bool)

(assert (=> b!6270383 m!7092216))

(assert (=> b!6270383 m!7092216))

(declare-fun m!7092218 () Bool)

(assert (=> b!6270383 m!7092218))

(declare-fun m!7092220 () Bool)

(assert (=> d!1968022 m!7092220))

(declare-fun m!7092222 () Bool)

(assert (=> d!1968022 m!7092222))

(assert (=> b!6269227 d!1968022))

(declare-fun bm!530227 () Bool)

(declare-fun call!530237 () (InoxSet Context!11146))

(declare-fun call!530233 () (InoxSet Context!11146))

(assert (=> bm!530227 (= call!530237 call!530233)))

(declare-fun c!1136242 () Bool)

(declare-fun call!530236 () List!64866)

(declare-fun bm!530228 () Bool)

(declare-fun c!1136241 () Bool)

(assert (=> bm!530228 (= call!530236 ($colon$colon!2053 (exprs!6073 (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124))) (ite (or c!1136242 c!1136241) (regTwo!32890 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))))))))

(declare-fun c!1136240 () Bool)

(declare-fun d!1968028 () Bool)

(assert (=> d!1968028 (= c!1136240 (and ((_ is ElementMatch!16189) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (= (c!1135772 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (h!71192 s!2326))))))

(declare-fun e!3813766 () (InoxSet Context!11146))

(assert (=> d!1968028 (= (derivationStepZipperDown!1437 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))) (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124)) (h!71192 s!2326)) e!3813766)))

(declare-fun b!6270389 () Bool)

(declare-fun e!3813763 () (InoxSet Context!11146))

(declare-fun call!530232 () (InoxSet Context!11146))

(assert (=> b!6270389 (= e!3813763 ((_ map or) call!530232 call!530237))))

(declare-fun b!6270390 () Bool)

(declare-fun e!3813764 () (InoxSet Context!11146))

(assert (=> b!6270390 (= e!3813763 e!3813764)))

(assert (=> b!6270390 (= c!1136241 ((_ is Concat!25034) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))))))

(declare-fun b!6270391 () Bool)

(declare-fun e!3813765 () (InoxSet Context!11146))

(assert (=> b!6270391 (= e!3813765 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530229 () Bool)

(declare-fun call!530234 () List!64866)

(assert (=> bm!530229 (= call!530234 call!530236)))

(declare-fun b!6270392 () Bool)

(declare-fun call!530235 () (InoxSet Context!11146))

(assert (=> b!6270392 (= e!3813764 call!530235)))

(declare-fun bm!530230 () Bool)

(declare-fun c!1136244 () Bool)

(assert (=> bm!530230 (= call!530233 (derivationStepZipperDown!1437 (ite c!1136244 (regTwo!32891 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (ite c!1136242 (regTwo!32890 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (ite c!1136241 (regOne!32890 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (reg!16518 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))))))) (ite (or c!1136244 c!1136242) (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124)) (Context!11147 call!530234)) (h!71192 s!2326)))))

(declare-fun bm!530231 () Bool)

(assert (=> bm!530231 (= call!530232 (derivationStepZipperDown!1437 (ite c!1136244 (regOne!32891 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))) (regOne!32890 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))))) (ite c!1136244 (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124)) (Context!11147 call!530236)) (h!71192 s!2326)))))

(declare-fun b!6270393 () Bool)

(declare-fun e!3813762 () Bool)

(assert (=> b!6270393 (= e!3813762 (nullable!6182 (regOne!32890 (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292)))))))))))

(declare-fun b!6270394 () Bool)

(declare-fun c!1136243 () Bool)

(assert (=> b!6270394 (= c!1136243 ((_ is Star!16189) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))))))

(assert (=> b!6270394 (= e!3813764 e!3813765)))

(declare-fun b!6270395 () Bool)

(assert (=> b!6270395 (= c!1136242 e!3813762)))

(declare-fun res!2586555 () Bool)

(assert (=> b!6270395 (=> (not res!2586555) (not e!3813762))))

(assert (=> b!6270395 (= res!2586555 ((_ is Concat!25034) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))))))

(declare-fun e!3813761 () (InoxSet Context!11146))

(assert (=> b!6270395 (= e!3813761 e!3813763)))

(declare-fun b!6270396 () Bool)

(assert (=> b!6270396 (= e!3813766 (store ((as const (Array Context!11146 Bool)) false) (ite (or c!1136053 c!1136051) lt!2351625 (Context!11147 call!530124)) true))))

(declare-fun b!6270397 () Bool)

(assert (=> b!6270397 (= e!3813761 ((_ map or) call!530232 call!530233))))

(declare-fun b!6270398 () Bool)

(assert (=> b!6270398 (= e!3813765 call!530235)))

(declare-fun bm!530232 () Bool)

(assert (=> bm!530232 (= call!530235 call!530237)))

(declare-fun b!6270399 () Bool)

(assert (=> b!6270399 (= e!3813766 e!3813761)))

(assert (=> b!6270399 (= c!1136244 ((_ is Union!16189) (ite c!1136053 (regTwo!32891 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136051 (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (ite c!1136050 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))) (reg!16518 (regTwo!32890 (regOne!32890 r!7292))))))))))

(assert (= (and d!1968028 c!1136240) b!6270396))

(assert (= (and d!1968028 (not c!1136240)) b!6270399))

(assert (= (and b!6270399 c!1136244) b!6270397))

(assert (= (and b!6270399 (not c!1136244)) b!6270395))

(assert (= (and b!6270395 res!2586555) b!6270393))

(assert (= (and b!6270395 c!1136242) b!6270389))

(assert (= (and b!6270395 (not c!1136242)) b!6270390))

(assert (= (and b!6270390 c!1136241) b!6270392))

(assert (= (and b!6270390 (not c!1136241)) b!6270394))

(assert (= (and b!6270394 c!1136243) b!6270398))

(assert (= (and b!6270394 (not c!1136243)) b!6270391))

(assert (= (or b!6270392 b!6270398) bm!530229))

(assert (= (or b!6270392 b!6270398) bm!530232))

(assert (= (or b!6270389 bm!530229) bm!530228))

(assert (= (or b!6270389 bm!530232) bm!530227))

(assert (= (or b!6270397 bm!530227) bm!530230))

(assert (= (or b!6270397 b!6270389) bm!530231))

(declare-fun m!7092228 () Bool)

(assert (=> bm!530231 m!7092228))

(declare-fun m!7092230 () Bool)

(assert (=> b!6270396 m!7092230))

(declare-fun m!7092232 () Bool)

(assert (=> b!6270393 m!7092232))

(declare-fun m!7092234 () Bool)

(assert (=> bm!530228 m!7092234))

(declare-fun m!7092236 () Bool)

(assert (=> bm!530230 m!7092236))

(assert (=> bm!530120 d!1968028))

(assert (=> d!1967696 d!1967690))

(assert (=> d!1967696 d!1967844))

(assert (=> d!1967696 d!1967700))

(declare-fun d!1968032 () Bool)

(assert (=> d!1968032 (= (Exists!3259 lambda!343404) (choose!46518 lambda!343404))))

(declare-fun bs!1565743 () Bool)

(assert (= bs!1565743 d!1968032))

(declare-fun m!7092238 () Bool)

(assert (=> bs!1565743 m!7092238))

(assert (=> d!1967696 d!1968032))

(declare-fun bs!1565776 () Bool)

(declare-fun d!1968034 () Bool)

(assert (= bs!1565776 (and d!1968034 d!1967698)))

(declare-fun lambda!343480 () Int)

(assert (=> bs!1565776 (= lambda!343480 lambda!343409)))

(declare-fun bs!1565777 () Bool)

(assert (= bs!1565777 (and d!1968034 b!6269521)))

(assert (=> bs!1565777 (not (= lambda!343480 lambda!343394))))

(declare-fun bs!1565778 () Bool)

(assert (= bs!1565778 (and d!1968034 b!6269515)))

(assert (=> bs!1565778 (not (= lambda!343480 lambda!343393))))

(declare-fun bs!1565779 () Bool)

(assert (= bs!1565779 (and d!1968034 b!6270346)))

(assert (=> bs!1565779 (not (= lambda!343480 lambda!343469))))

(declare-fun bs!1565780 () Bool)

(assert (= bs!1565780 (and d!1968034 d!1967696)))

(assert (=> bs!1565780 (= lambda!343480 lambda!343404)))

(declare-fun bs!1565781 () Bool)

(assert (= bs!1565781 (and d!1968034 b!6268871)))

(assert (=> bs!1565781 (not (= lambda!343480 lambda!343318))))

(assert (=> bs!1565781 (= lambda!343480 lambda!343317)))

(declare-fun bs!1565782 () Bool)

(assert (= bs!1565782 (and d!1968034 b!6270340)))

(assert (=> bs!1565782 (not (= lambda!343480 lambda!343467))))

(assert (=> bs!1565776 (not (= lambda!343480 lambda!343410))))

(assert (=> d!1968034 true))

(assert (=> d!1968034 true))

(assert (=> d!1968034 true))

(assert (=> d!1968034 (= (isDefined!12783 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326)) (Exists!3259 lambda!343480))))

(assert (=> d!1968034 true))

(declare-fun _$89!2467 () Unit!158087)

(assert (=> d!1968034 (= (choose!46519 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326) _$89!2467)))

(declare-fun bs!1565783 () Bool)

(assert (= bs!1565783 d!1968034))

(assert (=> bs!1565783 m!7090712))

(assert (=> bs!1565783 m!7090712))

(assert (=> bs!1565783 m!7090714))

(declare-fun m!7092286 () Bool)

(assert (=> bs!1565783 m!7092286))

(assert (=> d!1967696 d!1968034))

(declare-fun d!1968054 () Bool)

(assert (=> d!1968054 (= (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (nullableFct!2133 (h!71190 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun bs!1565784 () Bool)

(assert (= bs!1565784 d!1968054))

(declare-fun m!7092288 () Bool)

(assert (=> bs!1565784 m!7092288))

(assert (=> b!6269015 d!1968054))

(declare-fun d!1968056 () Bool)

(assert (=> d!1968056 (= (isEmpty!36775 (exprs!6073 (h!71191 zl!343))) ((_ is Nil!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> b!6269288 d!1968056))

(declare-fun b!6270422 () Bool)

(declare-fun e!3813785 () Bool)

(declare-fun e!3813782 () Bool)

(assert (=> b!6270422 (= e!3813785 e!3813782)))

(declare-fun c!1136253 () Bool)

(assert (=> b!6270422 (= c!1136253 ((_ is Star!16189) (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))

(declare-fun d!1968058 () Bool)

(declare-fun res!2586567 () Bool)

(assert (=> d!1968058 (=> res!2586567 e!3813785)))

(assert (=> d!1968058 (= res!2586567 ((_ is ElementMatch!16189) (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))

(assert (=> d!1968058 (= (validRegex!7925 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))) e!3813785)))

(declare-fun bm!530239 () Bool)

(declare-fun call!530244 () Bool)

(declare-fun call!530245 () Bool)

(assert (=> bm!530239 (= call!530244 call!530245)))

(declare-fun b!6270423 () Bool)

(declare-fun e!3813786 () Bool)

(assert (=> b!6270423 (= e!3813782 e!3813786)))

(declare-fun c!1136252 () Bool)

(assert (=> b!6270423 (= c!1136252 ((_ is Union!16189) (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))

(declare-fun b!6270424 () Bool)

(declare-fun e!3813784 () Bool)

(declare-fun e!3813781 () Bool)

(assert (=> b!6270424 (= e!3813784 e!3813781)))

(declare-fun res!2586565 () Bool)

(assert (=> b!6270424 (=> (not res!2586565) (not e!3813781))))

(declare-fun call!530246 () Bool)

(assert (=> b!6270424 (= res!2586565 call!530246)))

(declare-fun b!6270425 () Bool)

(declare-fun e!3813783 () Bool)

(assert (=> b!6270425 (= e!3813783 call!530245)))

(declare-fun b!6270426 () Bool)

(declare-fun res!2586564 () Bool)

(declare-fun e!3813780 () Bool)

(assert (=> b!6270426 (=> (not res!2586564) (not e!3813780))))

(assert (=> b!6270426 (= res!2586564 call!530246)))

(assert (=> b!6270426 (= e!3813786 e!3813780)))

(declare-fun bm!530240 () Bool)

(assert (=> bm!530240 (= call!530246 (validRegex!7925 (ite c!1136252 (regOne!32891 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))) (regOne!32890 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))))

(declare-fun b!6270427 () Bool)

(declare-fun res!2586566 () Bool)

(assert (=> b!6270427 (=> res!2586566 e!3813784)))

(assert (=> b!6270427 (= res!2586566 (not ((_ is Concat!25034) (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292))))))))

(assert (=> b!6270427 (= e!3813786 e!3813784)))

(declare-fun b!6270428 () Bool)

(assert (=> b!6270428 (= e!3813781 call!530244)))

(declare-fun b!6270429 () Bool)

(assert (=> b!6270429 (= e!3813780 call!530244)))

(declare-fun b!6270430 () Bool)

(assert (=> b!6270430 (= e!3813782 e!3813783)))

(declare-fun res!2586568 () Bool)

(assert (=> b!6270430 (= res!2586568 (not (nullable!6182 (reg!16518 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))))))))

(assert (=> b!6270430 (=> (not res!2586568) (not e!3813783))))

(declare-fun bm!530241 () Bool)

(assert (=> bm!530241 (= call!530245 (validRegex!7925 (ite c!1136253 (reg!16518 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))) (ite c!1136252 (regTwo!32891 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292)))) (regTwo!32890 (ite c!1135943 (reg!16518 r!7292) (ite c!1135942 (regTwo!32891 r!7292) (regTwo!32890 r!7292))))))))))

(assert (= (and d!1968058 (not res!2586567)) b!6270422))

(assert (= (and b!6270422 c!1136253) b!6270430))

(assert (= (and b!6270422 (not c!1136253)) b!6270423))

(assert (= (and b!6270430 res!2586568) b!6270425))

(assert (= (and b!6270423 c!1136252) b!6270426))

(assert (= (and b!6270423 (not c!1136252)) b!6270427))

(assert (= (and b!6270426 res!2586564) b!6270429))

(assert (= (and b!6270427 (not res!2586566)) b!6270424))

(assert (= (and b!6270424 res!2586565) b!6270428))

(assert (= (or b!6270429 b!6270428) bm!530239))

(assert (= (or b!6270426 b!6270424) bm!530240))

(assert (= (or b!6270425 bm!530239) bm!530241))

(declare-fun m!7092290 () Bool)

(assert (=> bm!530240 m!7092290))

(declare-fun m!7092292 () Bool)

(assert (=> b!6270430 m!7092292))

(declare-fun m!7092294 () Bool)

(assert (=> bm!530241 m!7092294))

(assert (=> bm!530066 d!1968058))

(declare-fun d!1968060 () Bool)

(declare-fun c!1136262 () Bool)

(assert (=> d!1968060 (= c!1136262 ((_ is Nil!64743) lt!2351780))))

(declare-fun e!3813795 () (InoxSet Context!11146))

(assert (=> d!1968060 (= (content!12159 lt!2351780) e!3813795)))

(declare-fun b!6270447 () Bool)

(assert (=> b!6270447 (= e!3813795 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270448 () Bool)

(assert (=> b!6270448 (= e!3813795 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) (h!71191 lt!2351780) true) (content!12159 (t!378423 lt!2351780))))))

(assert (= (and d!1968060 c!1136262) b!6270447))

(assert (= (and d!1968060 (not c!1136262)) b!6270448))

(declare-fun m!7092296 () Bool)

(assert (=> b!6270448 m!7092296))

(declare-fun m!7092298 () Bool)

(assert (=> b!6270448 m!7092298))

(assert (=> b!6269739 d!1968060))

(declare-fun bm!530244 () Bool)

(declare-fun call!530254 () (InoxSet Context!11146))

(declare-fun call!530250 () (InoxSet Context!11146))

(assert (=> bm!530244 (= call!530254 call!530250)))

(declare-fun c!1136264 () Bool)

(declare-fun call!530253 () List!64866)

(declare-fun c!1136265 () Bool)

(declare-fun bm!530245 () Bool)

(assert (=> bm!530245 (= call!530253 ($colon$colon!2053 (exprs!6073 (ite c!1136058 lt!2351634 (Context!11147 call!530132))) (ite (or c!1136265 c!1136264) (regTwo!32890 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))))))

(declare-fun d!1968062 () Bool)

(declare-fun c!1136263 () Bool)

(assert (=> d!1968062 (= c!1136263 (and ((_ is ElementMatch!16189) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (= (c!1135772 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (h!71192 s!2326))))))

(declare-fun e!3813801 () (InoxSet Context!11146))

(assert (=> d!1968062 (= (derivationStepZipperDown!1437 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))) (ite c!1136058 lt!2351634 (Context!11147 call!530132)) (h!71192 s!2326)) e!3813801)))

(declare-fun b!6270449 () Bool)

(declare-fun e!3813798 () (InoxSet Context!11146))

(declare-fun call!530249 () (InoxSet Context!11146))

(assert (=> b!6270449 (= e!3813798 ((_ map or) call!530249 call!530254))))

(declare-fun b!6270450 () Bool)

(declare-fun e!3813799 () (InoxSet Context!11146))

(assert (=> b!6270450 (= e!3813798 e!3813799)))

(assert (=> b!6270450 (= c!1136264 ((_ is Concat!25034) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(declare-fun b!6270451 () Bool)

(declare-fun e!3813800 () (InoxSet Context!11146))

(assert (=> b!6270451 (= e!3813800 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530246 () Bool)

(declare-fun call!530251 () List!64866)

(assert (=> bm!530246 (= call!530251 call!530253)))

(declare-fun b!6270452 () Bool)

(declare-fun call!530252 () (InoxSet Context!11146))

(assert (=> b!6270452 (= e!3813799 call!530252)))

(declare-fun c!1136267 () Bool)

(declare-fun bm!530247 () Bool)

(assert (=> bm!530247 (= call!530250 (derivationStepZipperDown!1437 (ite c!1136267 (regTwo!32891 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (ite c!1136265 (regTwo!32890 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (ite c!1136264 (regOne!32890 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (reg!16518 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))))) (ite (or c!1136267 c!1136265) (ite c!1136058 lt!2351634 (Context!11147 call!530132)) (Context!11147 call!530251)) (h!71192 s!2326)))))

(declare-fun bm!530248 () Bool)

(assert (=> bm!530248 (= call!530249 (derivationStepZipperDown!1437 (ite c!1136267 (regOne!32891 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))) (regOne!32890 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))) (ite c!1136267 (ite c!1136058 lt!2351634 (Context!11147 call!530132)) (Context!11147 call!530253)) (h!71192 s!2326)))))

(declare-fun b!6270453 () Bool)

(declare-fun e!3813797 () Bool)

(assert (=> b!6270453 (= e!3813797 (nullable!6182 (regOne!32890 (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))))))

(declare-fun b!6270454 () Bool)

(declare-fun c!1136266 () Bool)

(assert (=> b!6270454 (= c!1136266 ((_ is Star!16189) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(assert (=> b!6270454 (= e!3813799 e!3813800)))

(declare-fun b!6270455 () Bool)

(assert (=> b!6270455 (= c!1136265 e!3813797)))

(declare-fun res!2586569 () Bool)

(assert (=> b!6270455 (=> (not res!2586569) (not e!3813797))))

(assert (=> b!6270455 (= res!2586569 ((_ is Concat!25034) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(declare-fun e!3813796 () (InoxSet Context!11146))

(assert (=> b!6270455 (= e!3813796 e!3813798)))

(declare-fun b!6270456 () Bool)

(assert (=> b!6270456 (= e!3813801 (store ((as const (Array Context!11146 Bool)) false) (ite c!1136058 lt!2351634 (Context!11147 call!530132)) true))))

(declare-fun b!6270457 () Bool)

(assert (=> b!6270457 (= e!3813796 ((_ map or) call!530249 call!530250))))

(declare-fun b!6270458 () Bool)

(assert (=> b!6270458 (= e!3813800 call!530252)))

(declare-fun bm!530249 () Bool)

(assert (=> bm!530249 (= call!530252 call!530254)))

(declare-fun b!6270459 () Bool)

(assert (=> b!6270459 (= e!3813801 e!3813796)))

(assert (=> b!6270459 (= c!1136267 ((_ is Union!16189) (ite c!1136058 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(assert (= (and d!1968062 c!1136263) b!6270456))

(assert (= (and d!1968062 (not c!1136263)) b!6270459))

(assert (= (and b!6270459 c!1136267) b!6270457))

(assert (= (and b!6270459 (not c!1136267)) b!6270455))

(assert (= (and b!6270455 res!2586569) b!6270453))

(assert (= (and b!6270455 c!1136265) b!6270449))

(assert (= (and b!6270455 (not c!1136265)) b!6270450))

(assert (= (and b!6270450 c!1136264) b!6270452))

(assert (= (and b!6270450 (not c!1136264)) b!6270454))

(assert (= (and b!6270454 c!1136266) b!6270458))

(assert (= (and b!6270454 (not c!1136266)) b!6270451))

(assert (= (or b!6270452 b!6270458) bm!530246))

(assert (= (or b!6270452 b!6270458) bm!530249))

(assert (= (or b!6270449 bm!530246) bm!530245))

(assert (= (or b!6270449 bm!530249) bm!530244))

(assert (= (or b!6270457 bm!530244) bm!530247))

(assert (= (or b!6270457 b!6270449) bm!530248))

(declare-fun m!7092300 () Bool)

(assert (=> bm!530248 m!7092300))

(declare-fun m!7092302 () Bool)

(assert (=> b!6270456 m!7092302))

(declare-fun m!7092304 () Bool)

(assert (=> b!6270453 m!7092304))

(declare-fun m!7092306 () Bool)

(assert (=> bm!530245 m!7092306))

(declare-fun m!7092308 () Bool)

(assert (=> bm!530247 m!7092308))

(assert (=> bm!530127 d!1968062))

(assert (=> d!1967510 d!1967856))

(assert (=> d!1967582 d!1967856))

(declare-fun d!1968064 () Bool)

(assert (=> d!1968064 (= (isEmpty!36775 (tail!11964 (exprs!6073 (h!71191 zl!343)))) ((_ is Nil!64742) (tail!11964 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6269292 d!1968064))

(declare-fun d!1968066 () Bool)

(assert (=> d!1968066 (= (tail!11964 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))

(assert (=> b!6269292 d!1968066))

(declare-fun d!1968068 () Bool)

(assert (=> d!1968068 (= (isEmpty!36777 (tail!11963 s!2326)) ((_ is Nil!64744) (tail!11963 s!2326)))))

(assert (=> b!6269581 d!1968068))

(assert (=> b!6269581 d!1967836))

(declare-fun bs!1565785 () Bool)

(declare-fun d!1968070 () Bool)

(assert (= bs!1565785 (and d!1968070 b!6270173)))

(declare-fun lambda!343481 () Int)

(assert (=> bs!1565785 (not (= lambda!343481 lambda!343433))))

(declare-fun bs!1565786 () Bool)

(assert (= bs!1565786 (and d!1968070 b!6270175)))

(assert (=> bs!1565786 (not (= lambda!343481 lambda!343434))))

(declare-fun bs!1565787 () Bool)

(assert (= bs!1565787 (and d!1968070 d!1967900)))

(assert (=> bs!1565787 (not (= lambda!343481 lambda!343429))))

(declare-fun bs!1565788 () Bool)

(assert (= bs!1565788 (and d!1968070 d!1967868)))

(assert (=> bs!1565788 (= lambda!343481 lambda!343423)))

(declare-fun bs!1565789 () Bool)

(assert (= bs!1565789 (and d!1968070 d!1967876)))

(assert (=> bs!1565789 (= lambda!343481 lambda!343424)))

(declare-fun bs!1565790 () Bool)

(assert (= bs!1565790 (and d!1968070 d!1967778)))

(assert (=> bs!1565790 (= lambda!343481 lambda!343419)))

(declare-fun bs!1565791 () Bool)

(assert (= bs!1565791 (and d!1968070 d!1967774)))

(assert (=> bs!1565791 (= lambda!343481 lambda!343418)))

(declare-fun bs!1565792 () Bool)

(assert (= bs!1565792 (and d!1968070 d!1967884)))

(assert (=> bs!1565792 (= lambda!343481 lambda!343425)))

(declare-fun bs!1565793 () Bool)

(assert (= bs!1565793 (and d!1968070 b!6269127)))

(assert (=> bs!1565793 (not (= lambda!343481 lambda!343345))))

(declare-fun bs!1565794 () Bool)

(assert (= bs!1565794 (and d!1968070 d!1967888)))

(assert (=> bs!1565794 (= lambda!343481 lambda!343426)))

(declare-fun bs!1565795 () Bool)

(assert (= bs!1565795 (and d!1968070 b!6269129)))

(assert (=> bs!1565795 (not (= lambda!343481 lambda!343346))))

(declare-fun bs!1565796 () Bool)

(assert (= bs!1565796 (and d!1968070 b!6269124)))

(assert (=> bs!1565796 (not (= lambda!343481 lambda!343341))))

(declare-fun bs!1565797 () Bool)

(assert (= bs!1565797 (and d!1968070 b!6269122)))

(assert (=> bs!1565797 (not (= lambda!343481 lambda!343340))))

(assert (=> d!1968070 (= (nullableZipper!1959 lt!2351607) (exists!2522 lt!2351607 lambda!343481))))

(declare-fun bs!1565798 () Bool)

(assert (= bs!1565798 d!1968070))

(declare-fun m!7092310 () Bool)

(assert (=> bs!1565798 m!7092310))

(assert (=> b!6269388 d!1968070))

(declare-fun b!6270460 () Bool)

(declare-fun e!3813802 () Bool)

(assert (=> b!6270460 (= e!3813802 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))))))))

(declare-fun b!6270461 () Bool)

(declare-fun e!3813803 () (InoxSet Context!11146))

(declare-fun call!530259 () (InoxSet Context!11146))

(assert (=> b!6270461 (= e!3813803 call!530259)))

(declare-fun d!1968072 () Bool)

(declare-fun c!1136268 () Bool)

(assert (=> d!1968072 (= c!1136268 e!3813802)))

(declare-fun res!2586570 () Bool)

(assert (=> d!1968072 (=> (not res!2586570) (not e!3813802))))

(assert (=> d!1968072 (= res!2586570 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun e!3813804 () (InoxSet Context!11146))

(assert (=> d!1968072 (= (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326)) e!3813804)))

(declare-fun b!6270462 () Bool)

(assert (=> b!6270462 (= e!3813804 ((_ map or) call!530259 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))))) (h!71192 s!2326))))))

(declare-fun bm!530254 () Bool)

(assert (=> bm!530254 (= call!530259 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))))) (h!71192 s!2326)))))

(declare-fun b!6270463 () Bool)

(assert (=> b!6270463 (= e!3813803 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270464 () Bool)

(assert (=> b!6270464 (= e!3813804 e!3813803)))

(declare-fun c!1136269 () Bool)

(assert (=> b!6270464 (= c!1136269 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(assert (= (and d!1968072 res!2586570) b!6270460))

(assert (= (and d!1968072 c!1136268) b!6270462))

(assert (= (and d!1968072 (not c!1136268)) b!6270464))

(assert (= (and b!6270464 c!1136269) b!6270461))

(assert (= (and b!6270464 (not c!1136269)) b!6270463))

(assert (= (or b!6270462 b!6270461) bm!530254))

(declare-fun m!7092312 () Bool)

(assert (=> b!6270460 m!7092312))

(declare-fun m!7092314 () Bool)

(assert (=> b!6270462 m!7092314))

(declare-fun m!7092316 () Bool)

(assert (=> bm!530254 m!7092316))

(assert (=> b!6269100 d!1968072))

(declare-fun d!1968074 () Bool)

(declare-fun c!1136274 () Bool)

(assert (=> d!1968074 (= c!1136274 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3813809 () Bool)

(assert (=> d!1968074 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351597 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3813809)))

(declare-fun b!6270473 () Bool)

(assert (=> b!6270473 (= e!3813809 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351597 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270474 () Bool)

(assert (=> b!6270474 (= e!3813809 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351597 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968074 c!1136274) b!6270473))

(assert (= (and d!1968074 (not c!1136274)) b!6270474))

(assert (=> d!1968074 m!7091032))

(assert (=> d!1968074 m!7092110))

(assert (=> b!6270473 m!7091240))

(declare-fun m!7092322 () Bool)

(assert (=> b!6270473 m!7092322))

(assert (=> b!6270474 m!7091032))

(assert (=> b!6270474 m!7092114))

(assert (=> b!6270474 m!7091240))

(assert (=> b!6270474 m!7092114))

(declare-fun m!7092324 () Bool)

(assert (=> b!6270474 m!7092324))

(assert (=> b!6270474 m!7091032))

(assert (=> b!6270474 m!7092118))

(assert (=> b!6270474 m!7092324))

(assert (=> b!6270474 m!7092118))

(declare-fun m!7092328 () Bool)

(assert (=> b!6270474 m!7092328))

(assert (=> b!6269428 d!1968074))

(declare-fun bs!1565799 () Bool)

(declare-fun d!1968078 () Bool)

(assert (= bs!1565799 (and d!1968078 d!1968016)))

(declare-fun lambda!343482 () Int)

(assert (=> bs!1565799 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343482 lambda!343470))))

(declare-fun bs!1565800 () Bool)

(assert (= bs!1565800 (and d!1968078 b!6268873)))

(assert (=> bs!1565800 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343482 lambda!343319))))

(declare-fun bs!1565801 () Bool)

(assert (= bs!1565801 (and d!1968078 d!1967654)))

(assert (=> bs!1565801 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343482 lambda!343399))))

(declare-fun bs!1565802 () Bool)

(assert (= bs!1565802 (and d!1968078 d!1967706)))

(assert (=> bs!1565802 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343482 lambda!343411))))

(declare-fun bs!1565803 () Bool)

(assert (= bs!1565803 (and d!1968078 d!1967962)))

(assert (=> bs!1565803 (= lambda!343482 lambda!343456)))

(assert (=> d!1968078 true))

(assert (=> d!1968078 (= (derivationStepZipper!2155 lt!2351597 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351597 lambda!343482))))

(declare-fun bs!1565805 () Bool)

(assert (= bs!1565805 d!1968078))

(declare-fun m!7092334 () Bool)

(assert (=> bs!1565805 m!7092334))

(assert (=> b!6269428 d!1968078))

(assert (=> b!6269428 d!1967964))

(assert (=> b!6269428 d!1967966))

(declare-fun d!1968086 () Bool)

(declare-fun lt!2351886 () Int)

(assert (=> d!1968086 (>= lt!2351886 0)))

(declare-fun e!3813811 () Int)

(assert (=> d!1968086 (= lt!2351886 e!3813811)))

(declare-fun c!1136276 () Bool)

(assert (=> d!1968086 (= c!1136276 ((_ is Nil!64744) (t!378424 s!2326)))))

(assert (=> d!1968086 (= (size!40310 (t!378424 s!2326)) lt!2351886)))

(declare-fun b!6270477 () Bool)

(assert (=> b!6270477 (= e!3813811 0)))

(declare-fun b!6270478 () Bool)

(assert (=> b!6270478 (= e!3813811 (+ 1 (size!40310 (t!378424 (t!378424 s!2326)))))))

(assert (= (and d!1968086 c!1136276) b!6270477))

(assert (= (and d!1968086 (not c!1136276)) b!6270478))

(declare-fun m!7092336 () Bool)

(assert (=> b!6270478 m!7092336))

(assert (=> b!6269143 d!1968086))

(declare-fun bs!1565806 () Bool)

(declare-fun d!1968088 () Bool)

(assert (= bs!1565806 (and d!1968088 d!1967788)))

(declare-fun lambda!343483 () Int)

(assert (=> bs!1565806 (= lambda!343483 lambda!343420)))

(declare-fun bs!1565807 () Bool)

(assert (= bs!1565807 (and d!1968088 d!1967948)))

(assert (=> bs!1565807 (= lambda!343483 lambda!343454)))

(declare-fun bs!1565808 () Bool)

(assert (= bs!1565808 (and d!1968088 d!1967528)))

(assert (=> bs!1565808 (= lambda!343483 lambda!343380)))

(declare-fun bs!1565809 () Bool)

(assert (= bs!1565809 (and d!1968088 b!6270197)))

(assert (=> bs!1565809 (not (= lambda!343483 lambda!343448))))

(declare-fun bs!1565810 () Bool)

(assert (= bs!1565810 (and d!1968088 d!1968022)))

(assert (=> bs!1565810 (= lambda!343483 lambda!343471)))

(declare-fun bs!1565811 () Bool)

(assert (= bs!1565811 (and d!1968088 d!1967658)))

(assert (=> bs!1565811 (= lambda!343483 lambda!343400)))

(declare-fun bs!1565812 () Bool)

(assert (= bs!1565812 (and d!1968088 b!6270195)))

(assert (=> bs!1565812 (not (= lambda!343483 lambda!343446))))

(declare-fun bs!1565813 () Bool)

(assert (= bs!1565813 (and d!1968088 d!1967514)))

(assert (=> bs!1565813 (= lambda!343483 lambda!343358)))

(declare-fun bs!1565814 () Bool)

(assert (= bs!1565814 (and d!1968088 d!1967540)))

(assert (=> bs!1565814 (= lambda!343483 lambda!343381)))

(declare-fun bs!1565815 () Bool)

(assert (= bs!1565815 (and d!1968088 d!1967516)))

(assert (=> bs!1565815 (= lambda!343483 lambda!343362)))

(declare-fun bs!1565816 () Bool)

(assert (= bs!1565816 (and d!1968088 d!1967668)))

(assert (=> bs!1565816 (= lambda!343483 lambda!343401)))

(declare-fun bs!1565817 () Bool)

(assert (= bs!1565817 (and d!1968088 d!1967524)))

(assert (=> bs!1565817 (= lambda!343483 lambda!343365)))

(declare-fun bs!1565818 () Bool)

(assert (= bs!1565818 (and d!1968088 d!1967958)))

(assert (=> bs!1565818 (= lambda!343483 lambda!343455)))

(declare-fun bs!1565819 () Bool)

(assert (= bs!1565819 (and d!1968088 d!1967934)))

(assert (=> bs!1565819 (= lambda!343483 lambda!343452)))

(declare-fun b!6270479 () Bool)

(declare-fun e!3813816 () Regex!16189)

(assert (=> b!6270479 (= e!3813816 EmptyExpr!16189)))

(declare-fun b!6270480 () Bool)

(declare-fun e!3813814 () Bool)

(declare-fun e!3813812 () Bool)

(assert (=> b!6270480 (= e!3813814 e!3813812)))

(declare-fun c!1136279 () Bool)

(assert (=> b!6270480 (= c!1136279 (isEmpty!36775 (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270481 () Bool)

(declare-fun e!3813813 () Regex!16189)

(assert (=> b!6270481 (= e!3813813 e!3813816)))

(declare-fun c!1136280 () Bool)

(assert (=> b!6270481 (= c!1136280 ((_ is Cons!64742) (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270482 () Bool)

(declare-fun lt!2351887 () Regex!16189)

(assert (=> b!6270482 (= e!3813812 (isEmptyExpr!1595 lt!2351887))))

(declare-fun b!6270483 () Bool)

(declare-fun e!3813815 () Bool)

(assert (=> b!6270483 (= e!3813815 (isConcat!1118 lt!2351887))))

(declare-fun b!6270484 () Bool)

(assert (=> b!6270484 (= e!3813812 e!3813815)))

(declare-fun c!1136278 () Bool)

(assert (=> b!6270484 (= c!1136278 (isEmpty!36775 (tail!11964 (t!378422 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6270486 () Bool)

(assert (=> b!6270486 (= e!3813815 (= lt!2351887 (head!12879 (t!378422 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6270487 () Bool)

(declare-fun e!3813817 () Bool)

(assert (=> b!6270487 (= e!3813817 (isEmpty!36775 (t!378422 (t!378422 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6270488 () Bool)

(assert (=> b!6270488 (= e!3813816 (Concat!25034 (h!71190 (t!378422 (exprs!6073 (h!71191 zl!343)))) (generalisedConcat!1786 (t!378422 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(assert (=> d!1968088 e!3813814))

(declare-fun res!2586571 () Bool)

(assert (=> d!1968088 (=> (not res!2586571) (not e!3813814))))

(assert (=> d!1968088 (= res!2586571 (validRegex!7925 lt!2351887))))

(assert (=> d!1968088 (= lt!2351887 e!3813813)))

(declare-fun c!1136277 () Bool)

(assert (=> d!1968088 (= c!1136277 e!3813817)))

(declare-fun res!2586572 () Bool)

(assert (=> d!1968088 (=> (not res!2586572) (not e!3813817))))

(assert (=> d!1968088 (= res!2586572 ((_ is Cons!64742) (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> d!1968088 (forall!15316 (t!378422 (exprs!6073 (h!71191 zl!343))) lambda!343483)))

(assert (=> d!1968088 (= (generalisedConcat!1786 (t!378422 (exprs!6073 (h!71191 zl!343)))) lt!2351887)))

(declare-fun b!6270485 () Bool)

(assert (=> b!6270485 (= e!3813813 (h!71190 (t!378422 (exprs!6073 (h!71191 zl!343)))))))

(assert (= (and d!1968088 res!2586572) b!6270487))

(assert (= (and d!1968088 c!1136277) b!6270485))

(assert (= (and d!1968088 (not c!1136277)) b!6270481))

(assert (= (and b!6270481 c!1136280) b!6270488))

(assert (= (and b!6270481 (not c!1136280)) b!6270479))

(assert (= (and d!1968088 res!2586571) b!6270480))

(assert (= (and b!6270480 c!1136279) b!6270482))

(assert (= (and b!6270480 (not c!1136279)) b!6270484))

(assert (= (and b!6270484 c!1136278) b!6270486))

(assert (= (and b!6270484 (not c!1136278)) b!6270483))

(declare-fun m!7092338 () Bool)

(assert (=> d!1968088 m!7092338))

(declare-fun m!7092340 () Bool)

(assert (=> d!1968088 m!7092340))

(declare-fun m!7092342 () Bool)

(assert (=> b!6270488 m!7092342))

(declare-fun m!7092344 () Bool)

(assert (=> b!6270486 m!7092344))

(assert (=> b!6270480 m!7090766))

(declare-fun m!7092346 () Bool)

(assert (=> b!6270487 m!7092346))

(declare-fun m!7092348 () Bool)

(assert (=> b!6270483 m!7092348))

(declare-fun m!7092350 () Bool)

(assert (=> b!6270484 m!7092350))

(assert (=> b!6270484 m!7092350))

(declare-fun m!7092352 () Bool)

(assert (=> b!6270484 m!7092352))

(declare-fun m!7092354 () Bool)

(assert (=> b!6270482 m!7092354))

(assert (=> b!6269296 d!1968088))

(declare-fun bm!530262 () Bool)

(declare-fun call!530272 () (InoxSet Context!11146))

(declare-fun call!530268 () (InoxSet Context!11146))

(assert (=> bm!530262 (= call!530272 call!530268)))

(declare-fun c!1136285 () Bool)

(declare-fun call!530271 () List!64866)

(declare-fun bm!530263 () Bool)

(declare-fun c!1136284 () Bool)

(assert (=> bm!530263 (= call!530271 ($colon$colon!2053 (exprs!6073 (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051))) (ite (or c!1136285 c!1136284) (regTwo!32890 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))))

(declare-fun c!1136283 () Bool)

(declare-fun d!1968090 () Bool)

(assert (=> d!1968090 (= c!1136283 (and ((_ is ElementMatch!16189) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (= (c!1135772 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326))))))

(declare-fun e!3813835 () (InoxSet Context!11146))

(assert (=> d!1968090 (= (derivationStepZipperDown!1437 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))) (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051)) (h!71192 s!2326)) e!3813835)))

(declare-fun b!6270503 () Bool)

(declare-fun e!3813832 () (InoxSet Context!11146))

(declare-fun call!530267 () (InoxSet Context!11146))

(assert (=> b!6270503 (= e!3813832 ((_ map or) call!530267 call!530272))))

(declare-fun b!6270504 () Bool)

(declare-fun e!3813833 () (InoxSet Context!11146))

(assert (=> b!6270504 (= e!3813832 e!3813833)))

(assert (=> b!6270504 (= c!1136284 ((_ is Concat!25034) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun b!6270505 () Bool)

(declare-fun e!3813834 () (InoxSet Context!11146))

(assert (=> b!6270505 (= e!3813834 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530264 () Bool)

(declare-fun call!530269 () List!64866)

(assert (=> bm!530264 (= call!530269 call!530271)))

(declare-fun b!6270506 () Bool)

(declare-fun call!530270 () (InoxSet Context!11146))

(assert (=> b!6270506 (= e!3813833 call!530270)))

(declare-fun c!1136287 () Bool)

(declare-fun bm!530265 () Bool)

(assert (=> bm!530265 (= call!530268 (derivationStepZipperDown!1437 (ite c!1136287 (regTwo!32891 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (ite c!1136285 (regTwo!32890 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (ite c!1136284 (regOne!32890 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (reg!16518 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))) (ite (or c!1136287 c!1136285) (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051)) (Context!11147 call!530269)) (h!71192 s!2326)))))

(declare-fun bm!530266 () Bool)

(assert (=> bm!530266 (= call!530267 (derivationStepZipperDown!1437 (ite c!1136287 (regOne!32891 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))) (regOne!32890 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))))) (ite c!1136287 (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051)) (Context!11147 call!530271)) (h!71192 s!2326)))))

(declare-fun b!6270507 () Bool)

(declare-fun e!3813831 () Bool)

(assert (=> b!6270507 (= e!3813831 (nullable!6182 (regOne!32890 (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))))

(declare-fun c!1136286 () Bool)

(declare-fun b!6270508 () Bool)

(assert (=> b!6270508 (= c!1136286 ((_ is Star!16189) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))))

(assert (=> b!6270508 (= e!3813833 e!3813834)))

(declare-fun b!6270509 () Bool)

(assert (=> b!6270509 (= c!1136285 e!3813831)))

(declare-fun res!2586583 () Bool)

(assert (=> b!6270509 (=> (not res!2586583) (not e!3813831))))

(assert (=> b!6270509 (= res!2586583 ((_ is Concat!25034) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))))

(declare-fun e!3813830 () (InoxSet Context!11146))

(assert (=> b!6270509 (= e!3813830 e!3813832)))

(declare-fun b!6270510 () Bool)

(assert (=> b!6270510 (= e!3813835 (store ((as const (Array Context!11146 Bool)) false) (ite (or c!1135840 c!1135838) lt!2351625 (Context!11147 call!530051)) true))))

(declare-fun b!6270511 () Bool)

(assert (=> b!6270511 (= e!3813830 ((_ map or) call!530267 call!530268))))

(declare-fun b!6270512 () Bool)

(assert (=> b!6270512 (= e!3813834 call!530270)))

(declare-fun bm!530267 () Bool)

(assert (=> bm!530267 (= call!530270 call!530272)))

(declare-fun b!6270513 () Bool)

(assert (=> b!6270513 (= e!3813835 e!3813830)))

(assert (=> b!6270513 (= c!1136287 ((_ is Union!16189) (ite c!1135840 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135838 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1135837 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))))

(assert (= (and d!1968090 c!1136283) b!6270510))

(assert (= (and d!1968090 (not c!1136283)) b!6270513))

(assert (= (and b!6270513 c!1136287) b!6270511))

(assert (= (and b!6270513 (not c!1136287)) b!6270509))

(assert (= (and b!6270509 res!2586583) b!6270507))

(assert (= (and b!6270509 c!1136285) b!6270503))

(assert (= (and b!6270509 (not c!1136285)) b!6270504))

(assert (= (and b!6270504 c!1136284) b!6270506))

(assert (= (and b!6270504 (not c!1136284)) b!6270508))

(assert (= (and b!6270508 c!1136286) b!6270512))

(assert (= (and b!6270508 (not c!1136286)) b!6270505))

(assert (= (or b!6270506 b!6270512) bm!530264))

(assert (= (or b!6270506 b!6270512) bm!530267))

(assert (= (or b!6270503 bm!530264) bm!530263))

(assert (= (or b!6270503 bm!530267) bm!530262))

(assert (= (or b!6270511 bm!530262) bm!530265))

(assert (= (or b!6270511 b!6270503) bm!530266))

(declare-fun m!7092356 () Bool)

(assert (=> bm!530266 m!7092356))

(declare-fun m!7092358 () Bool)

(assert (=> b!6270510 m!7092358))

(declare-fun m!7092360 () Bool)

(assert (=> b!6270507 m!7092360))

(declare-fun m!7092362 () Bool)

(assert (=> bm!530263 m!7092362))

(declare-fun m!7092364 () Bool)

(assert (=> bm!530265 m!7092364))

(assert (=> bm!530047 d!1968090))

(declare-fun b!6270521 () Bool)

(declare-fun e!3813842 () Bool)

(assert (=> b!6270521 (= e!3813842 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))))))))

(declare-fun b!6270522 () Bool)

(declare-fun e!3813843 () (InoxSet Context!11146))

(declare-fun call!530275 () (InoxSet Context!11146))

(assert (=> b!6270522 (= e!3813843 call!530275)))

(declare-fun d!1968092 () Bool)

(declare-fun c!1136289 () Bool)

(assert (=> d!1968092 (= c!1136289 e!3813842)))

(declare-fun res!2586589 () Bool)

(assert (=> d!1968092 (=> (not res!2586589) (not e!3813842))))

(assert (=> d!1968092 (= res!2586589 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628))))))))

(declare-fun e!3813844 () (InoxSet Context!11146))

(assert (=> d!1968092 (= (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (h!71192 s!2326)) e!3813844)))

(declare-fun b!6270523 () Bool)

(assert (=> b!6270523 (= e!3813844 ((_ map or) call!530275 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))))) (h!71192 s!2326))))))

(declare-fun bm!530270 () Bool)

(assert (=> bm!530270 (= call!530275 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))))) (h!71192 s!2326)))))

(declare-fun b!6270524 () Bool)

(assert (=> b!6270524 (= e!3813843 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270525 () Bool)

(assert (=> b!6270525 (= e!3813844 e!3813843)))

(declare-fun c!1136290 () Bool)

(assert (=> b!6270525 (= c!1136290 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628))))))))

(assert (= (and d!1968092 res!2586589) b!6270521))

(assert (= (and d!1968092 c!1136289) b!6270523))

(assert (= (and d!1968092 (not c!1136289)) b!6270525))

(assert (= (and b!6270525 c!1136290) b!6270522))

(assert (= (and b!6270525 (not c!1136290)) b!6270524))

(assert (= (or b!6270523 b!6270522) bm!530270))

(declare-fun m!7092366 () Bool)

(assert (=> b!6270521 m!7092366))

(declare-fun m!7092368 () Bool)

(assert (=> b!6270523 m!7092368))

(declare-fun m!7092370 () Bool)

(assert (=> bm!530270 m!7092370))

(assert (=> b!6269789 d!1968092))

(assert (=> b!6269584 d!1967834))

(assert (=> d!1967600 d!1967846))

(assert (=> d!1967600 d!1967534))

(declare-fun bs!1565820 () Bool)

(declare-fun d!1968094 () Bool)

(assert (= bs!1565820 (and d!1968094 b!6270173)))

(declare-fun lambda!343484 () Int)

(assert (=> bs!1565820 (not (= lambda!343484 lambda!343433))))

(declare-fun bs!1565821 () Bool)

(assert (= bs!1565821 (and d!1968094 b!6270175)))

(assert (=> bs!1565821 (not (= lambda!343484 lambda!343434))))

(declare-fun bs!1565822 () Bool)

(assert (= bs!1565822 (and d!1968094 d!1968070)))

(assert (=> bs!1565822 (= lambda!343484 lambda!343481)))

(declare-fun bs!1565823 () Bool)

(assert (= bs!1565823 (and d!1968094 d!1967900)))

(assert (=> bs!1565823 (not (= lambda!343484 lambda!343429))))

(declare-fun bs!1565824 () Bool)

(assert (= bs!1565824 (and d!1968094 d!1967868)))

(assert (=> bs!1565824 (= lambda!343484 lambda!343423)))

(declare-fun bs!1565826 () Bool)

(assert (= bs!1565826 (and d!1968094 d!1967876)))

(assert (=> bs!1565826 (= lambda!343484 lambda!343424)))

(declare-fun bs!1565828 () Bool)

(assert (= bs!1565828 (and d!1968094 d!1967778)))

(assert (=> bs!1565828 (= lambda!343484 lambda!343419)))

(declare-fun bs!1565829 () Bool)

(assert (= bs!1565829 (and d!1968094 d!1967774)))

(assert (=> bs!1565829 (= lambda!343484 lambda!343418)))

(declare-fun bs!1565831 () Bool)

(assert (= bs!1565831 (and d!1968094 d!1967884)))

(assert (=> bs!1565831 (= lambda!343484 lambda!343425)))

(declare-fun bs!1565833 () Bool)

(assert (= bs!1565833 (and d!1968094 b!6269127)))

(assert (=> bs!1565833 (not (= lambda!343484 lambda!343345))))

(declare-fun bs!1565835 () Bool)

(assert (= bs!1565835 (and d!1968094 d!1967888)))

(assert (=> bs!1565835 (= lambda!343484 lambda!343426)))

(declare-fun bs!1565837 () Bool)

(assert (= bs!1565837 (and d!1968094 b!6269129)))

(assert (=> bs!1565837 (not (= lambda!343484 lambda!343346))))

(declare-fun bs!1565839 () Bool)

(assert (= bs!1565839 (and d!1968094 b!6269124)))

(assert (=> bs!1565839 (not (= lambda!343484 lambda!343341))))

(declare-fun bs!1565841 () Bool)

(assert (= bs!1565841 (and d!1968094 b!6269122)))

(assert (=> bs!1565841 (not (= lambda!343484 lambda!343340))))

(assert (=> d!1968094 (= (nullableZipper!1959 ((_ map or) lt!2351600 lt!2351623)) (exists!2522 ((_ map or) lt!2351600 lt!2351623) lambda!343484))))

(declare-fun bs!1565844 () Bool)

(assert (= bs!1565844 d!1968094))

(declare-fun m!7092376 () Bool)

(assert (=> bs!1565844 m!7092376))

(assert (=> b!6269737 d!1968094))

(declare-fun d!1968104 () Bool)

(assert (=> d!1968104 (= (isConcat!1118 lt!2351773) ((_ is Concat!25034) lt!2351773))))

(assert (=> b!6269653 d!1968104))

(declare-fun d!1968106 () Bool)

(declare-fun c!1136291 () Bool)

(assert (=> d!1968106 (= c!1136291 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3813845 () Bool)

(assert (=> d!1968106 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351604 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3813845)))

(declare-fun b!6270526 () Bool)

(assert (=> b!6270526 (= e!3813845 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351604 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270527 () Bool)

(assert (=> b!6270527 (= e!3813845 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351604 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968106 c!1136291) b!6270526))

(assert (= (and d!1968106 (not c!1136291)) b!6270527))

(assert (=> d!1968106 m!7091032))

(assert (=> d!1968106 m!7092110))

(assert (=> b!6270526 m!7091438))

(declare-fun m!7092380 () Bool)

(assert (=> b!6270526 m!7092380))

(assert (=> b!6270527 m!7091032))

(assert (=> b!6270527 m!7092114))

(assert (=> b!6270527 m!7091438))

(assert (=> b!6270527 m!7092114))

(declare-fun m!7092382 () Bool)

(assert (=> b!6270527 m!7092382))

(assert (=> b!6270527 m!7091032))

(assert (=> b!6270527 m!7092118))

(assert (=> b!6270527 m!7092382))

(assert (=> b!6270527 m!7092118))

(declare-fun m!7092384 () Bool)

(assert (=> b!6270527 m!7092384))

(assert (=> b!6269642 d!1968106))

(declare-fun bs!1565849 () Bool)

(declare-fun d!1968110 () Bool)

(assert (= bs!1565849 (and d!1968110 d!1968078)))

(declare-fun lambda!343486 () Int)

(assert (=> bs!1565849 (= lambda!343486 lambda!343482)))

(declare-fun bs!1565850 () Bool)

(assert (= bs!1565850 (and d!1968110 d!1968016)))

(assert (=> bs!1565850 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343486 lambda!343470))))

(declare-fun bs!1565851 () Bool)

(assert (= bs!1565851 (and d!1968110 b!6268873)))

(assert (=> bs!1565851 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343486 lambda!343319))))

(declare-fun bs!1565852 () Bool)

(assert (= bs!1565852 (and d!1968110 d!1967654)))

(assert (=> bs!1565852 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343486 lambda!343399))))

(declare-fun bs!1565853 () Bool)

(assert (= bs!1565853 (and d!1968110 d!1967706)))

(assert (=> bs!1565853 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343486 lambda!343411))))

(declare-fun bs!1565854 () Bool)

(assert (= bs!1565854 (and d!1968110 d!1967962)))

(assert (=> bs!1565854 (= lambda!343486 lambda!343456)))

(assert (=> d!1968110 true))

(assert (=> d!1968110 (= (derivationStepZipper!2155 lt!2351604 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351604 lambda!343486))))

(declare-fun bs!1565855 () Bool)

(assert (= bs!1565855 d!1968110))

(declare-fun m!7092386 () Bool)

(assert (=> bs!1565855 m!7092386))

(assert (=> b!6269642 d!1968110))

(assert (=> b!6269642 d!1967964))

(assert (=> b!6269642 d!1967966))

(declare-fun bm!530277 () Bool)

(declare-fun call!530287 () (InoxSet Context!11146))

(declare-fun call!530283 () (InoxSet Context!11146))

(assert (=> bm!530277 (= call!530287 call!530283)))

(declare-fun c!1136298 () Bool)

(declare-fun call!530286 () List!64866)

(declare-fun bm!530278 () Bool)

(declare-fun c!1136299 () Bool)

(assert (=> bm!530278 (= call!530286 ($colon$colon!2053 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634)))) (ite (or c!1136299 c!1136298) (regTwo!32890 (h!71190 (exprs!6073 lt!2351634))) (h!71190 (exprs!6073 lt!2351634)))))))

(declare-fun d!1968112 () Bool)

(declare-fun c!1136297 () Bool)

(assert (=> d!1968112 (= c!1136297 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 lt!2351634))) (= (c!1135772 (h!71190 (exprs!6073 lt!2351634))) (h!71192 s!2326))))))

(declare-fun e!3813857 () (InoxSet Context!11146))

(assert (=> d!1968112 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351634)) (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (h!71192 s!2326)) e!3813857)))

(declare-fun b!6270539 () Bool)

(declare-fun e!3813854 () (InoxSet Context!11146))

(declare-fun call!530282 () (InoxSet Context!11146))

(assert (=> b!6270539 (= e!3813854 ((_ map or) call!530282 call!530287))))

(declare-fun b!6270540 () Bool)

(declare-fun e!3813855 () (InoxSet Context!11146))

(assert (=> b!6270540 (= e!3813854 e!3813855)))

(assert (=> b!6270540 (= c!1136298 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351634))))))

(declare-fun b!6270541 () Bool)

(declare-fun e!3813856 () (InoxSet Context!11146))

(assert (=> b!6270541 (= e!3813856 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530279 () Bool)

(declare-fun call!530284 () List!64866)

(assert (=> bm!530279 (= call!530284 call!530286)))

(declare-fun b!6270542 () Bool)

(declare-fun call!530285 () (InoxSet Context!11146))

(assert (=> b!6270542 (= e!3813855 call!530285)))

(declare-fun c!1136301 () Bool)

(declare-fun bm!530280 () Bool)

(assert (=> bm!530280 (= call!530283 (derivationStepZipperDown!1437 (ite c!1136301 (regTwo!32891 (h!71190 (exprs!6073 lt!2351634))) (ite c!1136299 (regTwo!32890 (h!71190 (exprs!6073 lt!2351634))) (ite c!1136298 (regOne!32890 (h!71190 (exprs!6073 lt!2351634))) (reg!16518 (h!71190 (exprs!6073 lt!2351634)))))) (ite (or c!1136301 c!1136299) (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (Context!11147 call!530284)) (h!71192 s!2326)))))

(declare-fun bm!530281 () Bool)

(assert (=> bm!530281 (= call!530282 (derivationStepZipperDown!1437 (ite c!1136301 (regOne!32891 (h!71190 (exprs!6073 lt!2351634))) (regOne!32890 (h!71190 (exprs!6073 lt!2351634)))) (ite c!1136301 (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (Context!11147 call!530286)) (h!71192 s!2326)))))

(declare-fun b!6270543 () Bool)

(declare-fun e!3813853 () Bool)

(assert (=> b!6270543 (= e!3813853 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 lt!2351634)))))))

(declare-fun b!6270544 () Bool)

(declare-fun c!1136300 () Bool)

(assert (=> b!6270544 (= c!1136300 ((_ is Star!16189) (h!71190 (exprs!6073 lt!2351634))))))

(assert (=> b!6270544 (= e!3813855 e!3813856)))

(declare-fun b!6270545 () Bool)

(assert (=> b!6270545 (= c!1136299 e!3813853)))

(declare-fun res!2586591 () Bool)

(assert (=> b!6270545 (=> (not res!2586591) (not e!3813853))))

(assert (=> b!6270545 (= res!2586591 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351634))))))

(declare-fun e!3813852 () (InoxSet Context!11146))

(assert (=> b!6270545 (= e!3813852 e!3813854)))

(declare-fun b!6270546 () Bool)

(assert (=> b!6270546 (= e!3813857 (store ((as const (Array Context!11146 Bool)) false) (Context!11147 (t!378422 (exprs!6073 lt!2351634))) true))))

(declare-fun b!6270547 () Bool)

(assert (=> b!6270547 (= e!3813852 ((_ map or) call!530282 call!530283))))

(declare-fun b!6270548 () Bool)

(assert (=> b!6270548 (= e!3813856 call!530285)))

(declare-fun bm!530282 () Bool)

(assert (=> bm!530282 (= call!530285 call!530287)))

(declare-fun b!6270549 () Bool)

(assert (=> b!6270549 (= e!3813857 e!3813852)))

(assert (=> b!6270549 (= c!1136301 ((_ is Union!16189) (h!71190 (exprs!6073 lt!2351634))))))

(assert (= (and d!1968112 c!1136297) b!6270546))

(assert (= (and d!1968112 (not c!1136297)) b!6270549))

(assert (= (and b!6270549 c!1136301) b!6270547))

(assert (= (and b!6270549 (not c!1136301)) b!6270545))

(assert (= (and b!6270545 res!2586591) b!6270543))

(assert (= (and b!6270545 c!1136299) b!6270539))

(assert (= (and b!6270545 (not c!1136299)) b!6270540))

(assert (= (and b!6270540 c!1136298) b!6270542))

(assert (= (and b!6270540 (not c!1136298)) b!6270544))

(assert (= (and b!6270544 c!1136300) b!6270548))

(assert (= (and b!6270544 (not c!1136300)) b!6270541))

(assert (= (or b!6270542 b!6270548) bm!530279))

(assert (= (or b!6270542 b!6270548) bm!530282))

(assert (= (or b!6270539 bm!530279) bm!530278))

(assert (= (or b!6270539 bm!530282) bm!530277))

(assert (= (or b!6270547 bm!530277) bm!530280))

(assert (= (or b!6270547 b!6270539) bm!530281))

(declare-fun m!7092398 () Bool)

(assert (=> bm!530281 m!7092398))

(declare-fun m!7092400 () Bool)

(assert (=> b!6270546 m!7092400))

(declare-fun m!7092402 () Bool)

(assert (=> b!6270543 m!7092402))

(declare-fun m!7092404 () Bool)

(assert (=> bm!530278 m!7092404))

(declare-fun m!7092406 () Bool)

(assert (=> bm!530280 m!7092406))

(assert (=> bm!530091 d!1968112))

(declare-fun d!1968116 () Bool)

(declare-fun c!1136307 () Bool)

(assert (=> d!1968116 (= c!1136307 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3813864 () Bool)

(assert (=> d!1968116 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351623 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3813864)))

(declare-fun b!6270561 () Bool)

(assert (=> b!6270561 (= e!3813864 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351623 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270562 () Bool)

(assert (=> b!6270562 (= e!3813864 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351623 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968116 c!1136307) b!6270561))

(assert (= (and d!1968116 (not c!1136307)) b!6270562))

(assert (=> d!1968116 m!7091032))

(assert (=> d!1968116 m!7092110))

(assert (=> b!6270561 m!7091074))

(declare-fun m!7092416 () Bool)

(assert (=> b!6270561 m!7092416))

(assert (=> b!6270562 m!7091032))

(assert (=> b!6270562 m!7092114))

(assert (=> b!6270562 m!7091074))

(assert (=> b!6270562 m!7092114))

(declare-fun m!7092418 () Bool)

(assert (=> b!6270562 m!7092418))

(assert (=> b!6270562 m!7091032))

(assert (=> b!6270562 m!7092118))

(assert (=> b!6270562 m!7092418))

(assert (=> b!6270562 m!7092118))

(declare-fun m!7092420 () Bool)

(assert (=> b!6270562 m!7092420))

(assert (=> b!6269252 d!1968116))

(declare-fun bs!1565856 () Bool)

(declare-fun d!1968120 () Bool)

(assert (= bs!1565856 (and d!1968120 d!1968078)))

(declare-fun lambda!343487 () Int)

(assert (=> bs!1565856 (= lambda!343487 lambda!343482)))

(declare-fun bs!1565857 () Bool)

(assert (= bs!1565857 (and d!1968120 d!1968016)))

(assert (=> bs!1565857 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343487 lambda!343470))))

(declare-fun bs!1565858 () Bool)

(assert (= bs!1565858 (and d!1968120 b!6268873)))

(assert (=> bs!1565858 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343487 lambda!343319))))

(declare-fun bs!1565859 () Bool)

(assert (= bs!1565859 (and d!1968120 d!1967654)))

(assert (=> bs!1565859 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343487 lambda!343399))))

(declare-fun bs!1565860 () Bool)

(assert (= bs!1565860 (and d!1968120 d!1968110)))

(assert (=> bs!1565860 (= lambda!343487 lambda!343486)))

(declare-fun bs!1565861 () Bool)

(assert (= bs!1565861 (and d!1968120 d!1967706)))

(assert (=> bs!1565861 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343487 lambda!343411))))

(declare-fun bs!1565862 () Bool)

(assert (= bs!1565862 (and d!1968120 d!1967962)))

(assert (=> bs!1565862 (= lambda!343487 lambda!343456)))

(assert (=> d!1968120 true))

(assert (=> d!1968120 (= (derivationStepZipper!2155 lt!2351623 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351623 lambda!343487))))

(declare-fun bs!1565863 () Bool)

(assert (= bs!1565863 d!1968120))

(declare-fun m!7092428 () Bool)

(assert (=> bs!1565863 m!7092428))

(assert (=> b!6269252 d!1968120))

(assert (=> b!6269252 d!1967964))

(assert (=> b!6269252 d!1967966))

(declare-fun b!6270574 () Bool)

(declare-fun e!3813876 () Bool)

(declare-fun e!3813873 () Bool)

(assert (=> b!6270574 (= e!3813876 e!3813873)))

(declare-fun c!1136314 () Bool)

(assert (=> b!6270574 (= c!1136314 ((_ is Star!16189) (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))

(declare-fun d!1968122 () Bool)

(declare-fun res!2586597 () Bool)

(assert (=> d!1968122 (=> res!2586597 e!3813876)))

(assert (=> d!1968122 (= res!2586597 ((_ is ElementMatch!16189) (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))

(assert (=> d!1968122 (= (validRegex!7925 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))) e!3813876)))

(declare-fun bm!530295 () Bool)

(declare-fun call!530300 () Bool)

(declare-fun call!530301 () Bool)

(assert (=> bm!530295 (= call!530300 call!530301)))

(declare-fun b!6270575 () Bool)

(declare-fun e!3813877 () Bool)

(assert (=> b!6270575 (= e!3813873 e!3813877)))

(declare-fun c!1136313 () Bool)

(assert (=> b!6270575 (= c!1136313 ((_ is Union!16189) (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))

(declare-fun b!6270576 () Bool)

(declare-fun e!3813875 () Bool)

(declare-fun e!3813872 () Bool)

(assert (=> b!6270576 (= e!3813875 e!3813872)))

(declare-fun res!2586595 () Bool)

(assert (=> b!6270576 (=> (not res!2586595) (not e!3813872))))

(declare-fun call!530302 () Bool)

(assert (=> b!6270576 (= res!2586595 call!530302)))

(declare-fun b!6270577 () Bool)

(declare-fun e!3813874 () Bool)

(assert (=> b!6270577 (= e!3813874 call!530301)))

(declare-fun b!6270578 () Bool)

(declare-fun res!2586594 () Bool)

(declare-fun e!3813871 () Bool)

(assert (=> b!6270578 (=> (not res!2586594) (not e!3813871))))

(assert (=> b!6270578 (= res!2586594 call!530302)))

(assert (=> b!6270578 (= e!3813877 e!3813871)))

(declare-fun bm!530296 () Bool)

(assert (=> bm!530296 (= call!530302 (validRegex!7925 (ite c!1136313 (regOne!32891 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))) (regOne!32890 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))))

(declare-fun b!6270579 () Bool)

(declare-fun res!2586596 () Bool)

(assert (=> b!6270579 (=> res!2586596 e!3813875)))

(assert (=> b!6270579 (= res!2586596 (not ((_ is Concat!25034) (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598))))))))

(assert (=> b!6270579 (= e!3813877 e!3813875)))

(declare-fun b!6270580 () Bool)

(assert (=> b!6270580 (= e!3813872 call!530300)))

(declare-fun b!6270581 () Bool)

(assert (=> b!6270581 (= e!3813871 call!530300)))

(declare-fun b!6270582 () Bool)

(assert (=> b!6270582 (= e!3813873 e!3813874)))

(declare-fun res!2586598 () Bool)

(assert (=> b!6270582 (= res!2586598 (not (nullable!6182 (reg!16518 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))))))))

(assert (=> b!6270582 (=> (not res!2586598) (not e!3813874))))

(declare-fun bm!530297 () Bool)

(assert (=> bm!530297 (= call!530301 (validRegex!7925 (ite c!1136314 (reg!16518 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))) (ite c!1136313 (regTwo!32891 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598)))) (regTwo!32890 (ite c!1136048 (reg!16518 lt!2351598) (ite c!1136047 (regTwo!32891 lt!2351598) (regTwo!32890 lt!2351598))))))))))

(assert (= (and d!1968122 (not res!2586597)) b!6270574))

(assert (= (and b!6270574 c!1136314) b!6270582))

(assert (= (and b!6270574 (not c!1136314)) b!6270575))

(assert (= (and b!6270582 res!2586598) b!6270577))

(assert (= (and b!6270575 c!1136313) b!6270578))

(assert (= (and b!6270575 (not c!1136313)) b!6270579))

(assert (= (and b!6270578 res!2586594) b!6270581))

(assert (= (and b!6270579 (not res!2586596)) b!6270576))

(assert (= (and b!6270576 res!2586595) b!6270580))

(assert (= (or b!6270581 b!6270580) bm!530295))

(assert (= (or b!6270578 b!6270576) bm!530296))

(assert (= (or b!6270577 bm!530295) bm!530297))

(declare-fun m!7092436 () Bool)

(assert (=> bm!530296 m!7092436))

(declare-fun m!7092438 () Bool)

(assert (=> b!6270582 m!7092438))

(declare-fun m!7092440 () Bool)

(assert (=> bm!530297 m!7092440))

(assert (=> bm!530116 d!1968122))

(assert (=> b!6269701 d!1968068))

(assert (=> b!6269701 d!1967836))

(declare-fun bs!1565865 () Bool)

(declare-fun d!1968128 () Bool)

(assert (= bs!1565865 (and d!1968128 b!6270173)))

(declare-fun lambda!343488 () Int)

(assert (=> bs!1565865 (not (= lambda!343488 lambda!343433))))

(declare-fun bs!1565866 () Bool)

(assert (= bs!1565866 (and d!1968128 b!6270175)))

(assert (=> bs!1565866 (not (= lambda!343488 lambda!343434))))

(declare-fun bs!1565867 () Bool)

(assert (= bs!1565867 (and d!1968128 d!1968070)))

(assert (=> bs!1565867 (= lambda!343488 lambda!343481)))

(declare-fun bs!1565868 () Bool)

(assert (= bs!1565868 (and d!1968128 d!1967900)))

(assert (=> bs!1565868 (not (= lambda!343488 lambda!343429))))

(declare-fun bs!1565869 () Bool)

(assert (= bs!1565869 (and d!1968128 d!1967868)))

(assert (=> bs!1565869 (= lambda!343488 lambda!343423)))

(declare-fun bs!1565870 () Bool)

(assert (= bs!1565870 (and d!1968128 d!1967778)))

(assert (=> bs!1565870 (= lambda!343488 lambda!343419)))

(declare-fun bs!1565871 () Bool)

(assert (= bs!1565871 (and d!1968128 d!1967774)))

(assert (=> bs!1565871 (= lambda!343488 lambda!343418)))

(declare-fun bs!1565872 () Bool)

(assert (= bs!1565872 (and d!1968128 d!1967884)))

(assert (=> bs!1565872 (= lambda!343488 lambda!343425)))

(declare-fun bs!1565873 () Bool)

(assert (= bs!1565873 (and d!1968128 b!6269127)))

(assert (=> bs!1565873 (not (= lambda!343488 lambda!343345))))

(declare-fun bs!1565874 () Bool)

(assert (= bs!1565874 (and d!1968128 d!1967888)))

(assert (=> bs!1565874 (= lambda!343488 lambda!343426)))

(declare-fun bs!1565875 () Bool)

(assert (= bs!1565875 (and d!1968128 b!6269129)))

(assert (=> bs!1565875 (not (= lambda!343488 lambda!343346))))

(declare-fun bs!1565876 () Bool)

(assert (= bs!1565876 (and d!1968128 b!6269124)))

(assert (=> bs!1565876 (not (= lambda!343488 lambda!343341))))

(declare-fun bs!1565877 () Bool)

(assert (= bs!1565877 (and d!1968128 b!6269122)))

(assert (=> bs!1565877 (not (= lambda!343488 lambda!343340))))

(declare-fun bs!1565878 () Bool)

(assert (= bs!1565878 (and d!1968128 d!1968094)))

(assert (=> bs!1565878 (= lambda!343488 lambda!343484)))

(declare-fun bs!1565879 () Bool)

(assert (= bs!1565879 (and d!1968128 d!1967876)))

(assert (=> bs!1565879 (= lambda!343488 lambda!343424)))

(assert (=> d!1968128 (= (nullableZipper!1959 lt!2351629) (exists!2522 lt!2351629 lambda!343488))))

(declare-fun bs!1565880 () Bool)

(assert (= bs!1565880 d!1968128))

(declare-fun m!7092454 () Bool)

(assert (=> bs!1565880 m!7092454))

(assert (=> b!6269401 d!1968128))

(declare-fun d!1968132 () Bool)

(assert (=> d!1968132 (= (isEmpty!36775 (t!378422 lt!2351603)) ((_ is Nil!64742) (t!378422 lt!2351603)))))

(assert (=> b!6269689 d!1968132))

(assert (=> b!6269588 d!1967834))

(declare-fun d!1968134 () Bool)

(assert (=> d!1968134 (= (Exists!3259 lambda!343409) (choose!46518 lambda!343409))))

(declare-fun bs!1565881 () Bool)

(assert (= bs!1565881 d!1968134))

(declare-fun m!7092460 () Bool)

(assert (=> bs!1565881 m!7092460))

(assert (=> d!1967698 d!1968134))

(declare-fun d!1968138 () Bool)

(assert (=> d!1968138 (= (Exists!3259 lambda!343410) (choose!46518 lambda!343410))))

(declare-fun bs!1565882 () Bool)

(assert (= bs!1565882 d!1968138))

(declare-fun m!7092462 () Bool)

(assert (=> bs!1565882 m!7092462))

(assert (=> d!1967698 d!1968138))

(declare-fun bs!1565918 () Bool)

(declare-fun d!1968140 () Bool)

(assert (= bs!1565918 (and d!1968140 d!1968034)))

(declare-fun lambda!343496 () Int)

(assert (=> bs!1565918 (= lambda!343496 lambda!343480)))

(declare-fun bs!1565919 () Bool)

(assert (= bs!1565919 (and d!1968140 d!1967698)))

(assert (=> bs!1565919 (= lambda!343496 lambda!343409)))

(declare-fun bs!1565920 () Bool)

(assert (= bs!1565920 (and d!1968140 b!6269521)))

(assert (=> bs!1565920 (not (= lambda!343496 lambda!343394))))

(declare-fun bs!1565921 () Bool)

(assert (= bs!1565921 (and d!1968140 b!6269515)))

(assert (=> bs!1565921 (not (= lambda!343496 lambda!343393))))

(declare-fun bs!1565922 () Bool)

(assert (= bs!1565922 (and d!1968140 b!6270346)))

(assert (=> bs!1565922 (not (= lambda!343496 lambda!343469))))

(declare-fun bs!1565924 () Bool)

(assert (= bs!1565924 (and d!1968140 d!1967696)))

(assert (=> bs!1565924 (= lambda!343496 lambda!343404)))

(declare-fun bs!1565925 () Bool)

(assert (= bs!1565925 (and d!1968140 b!6268871)))

(assert (=> bs!1565925 (not (= lambda!343496 lambda!343318))))

(assert (=> bs!1565925 (= lambda!343496 lambda!343317)))

(declare-fun bs!1565926 () Bool)

(assert (= bs!1565926 (and d!1968140 b!6270340)))

(assert (=> bs!1565926 (not (= lambda!343496 lambda!343467))))

(assert (=> bs!1565919 (not (= lambda!343496 lambda!343410))))

(assert (=> d!1968140 true))

(assert (=> d!1968140 true))

(assert (=> d!1968140 true))

(declare-fun lambda!343498 () Int)

(assert (=> bs!1565918 (not (= lambda!343498 lambda!343480))))

(assert (=> bs!1565919 (not (= lambda!343498 lambda!343409))))

(assert (=> bs!1565920 (= lambda!343498 lambda!343394)))

(assert (=> bs!1565921 (not (= lambda!343498 lambda!343393))))

(assert (=> bs!1565922 (= (and (= (regOne!32890 r!7292) (regOne!32890 (regOne!32891 r!7292))) (= (regTwo!32890 r!7292) (regTwo!32890 (regOne!32891 r!7292)))) (= lambda!343498 lambda!343469))))

(assert (=> bs!1565924 (not (= lambda!343498 lambda!343404))))

(declare-fun bs!1565940 () Bool)

(assert (= bs!1565940 d!1968140))

(assert (=> bs!1565940 (not (= lambda!343498 lambda!343496))))

(assert (=> bs!1565925 (= lambda!343498 lambda!343318)))

(assert (=> bs!1565925 (not (= lambda!343498 lambda!343317))))

(assert (=> bs!1565926 (not (= lambda!343498 lambda!343467))))

(assert (=> bs!1565919 (= lambda!343498 lambda!343410)))

(assert (=> d!1968140 true))

(assert (=> d!1968140 true))

(assert (=> d!1968140 true))

(assert (=> d!1968140 (= (Exists!3259 lambda!343496) (Exists!3259 lambda!343498))))

(assert (=> d!1968140 true))

(declare-fun _$90!2088 () Unit!158087)

(assert (=> d!1968140 (= (choose!46520 (regOne!32890 r!7292) (regTwo!32890 r!7292) s!2326) _$90!2088)))

(declare-fun m!7092502 () Bool)

(assert (=> bs!1565940 m!7092502))

(declare-fun m!7092504 () Bool)

(assert (=> bs!1565940 m!7092504))

(assert (=> d!1967698 d!1968140))

(assert (=> d!1967698 d!1967844))

(declare-fun d!1968162 () Bool)

(assert (=> d!1968162 (= ($colon$colon!2053 (exprs!6073 lt!2351634) (ite (or c!1136056 c!1136055) (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 r!7292)))) (Cons!64742 (ite (or c!1136056 c!1136055) (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 r!7292))) (exprs!6073 lt!2351634)))))

(assert (=> bm!530124 d!1968162))

(declare-fun d!1968168 () Bool)

(declare-fun lt!2351891 () Int)

(assert (=> d!1968168 (>= lt!2351891 0)))

(declare-fun e!3813914 () Int)

(assert (=> d!1968168 (= lt!2351891 e!3813914)))

(declare-fun c!1136338 () Bool)

(assert (=> d!1968168 (= c!1136338 ((_ is Cons!64742) (exprs!6073 (h!71191 lt!2351599))))))

(assert (=> d!1968168 (= (contextDepthTotal!312 (h!71191 lt!2351599)) lt!2351891)))

(declare-fun b!6270646 () Bool)

(assert (=> b!6270646 (= e!3813914 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 (h!71191 lt!2351599)))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (h!71191 lt!2351599)))))))))

(declare-fun b!6270647 () Bool)

(assert (=> b!6270647 (= e!3813914 1)))

(assert (= (and d!1968168 c!1136338) b!6270646))

(assert (= (and d!1968168 (not c!1136338)) b!6270647))

(declare-fun m!7092514 () Bool)

(assert (=> b!6270646 m!7092514))

(declare-fun m!7092516 () Bool)

(assert (=> b!6270646 m!7092516))

(assert (=> b!6269150 d!1968168))

(declare-fun d!1968170 () Bool)

(declare-fun lt!2351892 () Int)

(assert (=> d!1968170 (>= lt!2351892 0)))

(declare-fun e!3813915 () Int)

(assert (=> d!1968170 (= lt!2351892 e!3813915)))

(declare-fun c!1136339 () Bool)

(assert (=> d!1968170 (= c!1136339 ((_ is Cons!64743) (t!378423 lt!2351599)))))

(assert (=> d!1968170 (= (zipperDepthTotal!342 (t!378423 lt!2351599)) lt!2351892)))

(declare-fun b!6270648 () Bool)

(assert (=> b!6270648 (= e!3813915 (+ (contextDepthTotal!312 (h!71191 (t!378423 lt!2351599))) (zipperDepthTotal!342 (t!378423 (t!378423 lt!2351599)))))))

(declare-fun b!6270649 () Bool)

(assert (=> b!6270649 (= e!3813915 0)))

(assert (= (and d!1968170 c!1136339) b!6270648))

(assert (= (and d!1968170 (not c!1136339)) b!6270649))

(declare-fun m!7092518 () Bool)

(assert (=> b!6270648 m!7092518))

(declare-fun m!7092520 () Bool)

(assert (=> b!6270648 m!7092520))

(assert (=> b!6269150 d!1968170))

(declare-fun d!1968172 () Bool)

(declare-fun c!1136340 () Bool)

(assert (=> d!1968172 (= c!1136340 (isEmpty!36777 (t!378424 s!2326)))))

(declare-fun e!3813916 () Bool)

(assert (=> d!1968172 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351604) (t!378424 s!2326)) e!3813916)))

(declare-fun b!6270650 () Bool)

(assert (=> b!6270650 (= e!3813916 (nullableZipper!1959 ((_ map or) lt!2351621 lt!2351604)))))

(declare-fun b!6270651 () Bool)

(assert (=> b!6270651 (= e!3813916 (matchZipper!2201 (derivationStepZipper!2155 ((_ map or) lt!2351621 lt!2351604) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))))))

(assert (= (and d!1968172 c!1136340) b!6270650))

(assert (= (and d!1968172 (not c!1136340)) b!6270651))

(assert (=> d!1968172 m!7091024))

(declare-fun m!7092524 () Bool)

(assert (=> b!6270650 m!7092524))

(assert (=> b!6270651 m!7091028))

(assert (=> b!6270651 m!7091028))

(declare-fun m!7092528 () Bool)

(assert (=> b!6270651 m!7092528))

(assert (=> b!6270651 m!7091032))

(assert (=> b!6270651 m!7092528))

(assert (=> b!6270651 m!7091032))

(declare-fun m!7092530 () Bool)

(assert (=> b!6270651 m!7092530))

(assert (=> d!1967586 d!1968172))

(assert (=> d!1967586 d!1967584))

(declare-fun e!3813917 () Bool)

(declare-fun d!1968174 () Bool)

(assert (=> d!1968174 (= (matchZipper!2201 ((_ map or) lt!2351621 lt!2351604) (t!378424 s!2326)) e!3813917)))

(declare-fun res!2586616 () Bool)

(assert (=> d!1968174 (=> res!2586616 e!3813917)))

(assert (=> d!1968174 (= res!2586616 (matchZipper!2201 lt!2351621 (t!378424 s!2326)))))

(assert (=> d!1968174 true))

(declare-fun _$48!2022 () Unit!158087)

(assert (=> d!1968174 (= (choose!46512 lt!2351621 lt!2351604 (t!378424 s!2326)) _$48!2022)))

(declare-fun b!6270652 () Bool)

(assert (=> b!6270652 (= e!3813917 (matchZipper!2201 lt!2351604 (t!378424 s!2326)))))

(assert (= (and d!1968174 (not res!2586616)) b!6270652))

(assert (=> d!1968174 m!7091250))

(assert (=> d!1968174 m!7090780))

(assert (=> b!6270652 m!7090760))

(assert (=> d!1967586 d!1968174))

(assert (=> b!6269249 d!1967528))

(declare-fun bs!1565943 () Bool)

(declare-fun d!1968178 () Bool)

(assert (= bs!1565943 (and d!1968178 d!1967788)))

(declare-fun lambda!343499 () Int)

(assert (=> bs!1565943 (= lambda!343499 lambda!343420)))

(declare-fun bs!1565944 () Bool)

(assert (= bs!1565944 (and d!1968178 d!1967948)))

(assert (=> bs!1565944 (= lambda!343499 lambda!343454)))

(declare-fun bs!1565945 () Bool)

(assert (= bs!1565945 (and d!1968178 b!6270197)))

(assert (=> bs!1565945 (not (= lambda!343499 lambda!343448))))

(declare-fun bs!1565946 () Bool)

(assert (= bs!1565946 (and d!1968178 d!1968022)))

(assert (=> bs!1565946 (= lambda!343499 lambda!343471)))

(declare-fun bs!1565947 () Bool)

(assert (= bs!1565947 (and d!1968178 d!1967658)))

(assert (=> bs!1565947 (= lambda!343499 lambda!343400)))

(declare-fun bs!1565948 () Bool)

(assert (= bs!1565948 (and d!1968178 b!6270195)))

(assert (=> bs!1565948 (not (= lambda!343499 lambda!343446))))

(declare-fun bs!1565949 () Bool)

(assert (= bs!1565949 (and d!1968178 d!1967514)))

(assert (=> bs!1565949 (= lambda!343499 lambda!343358)))

(declare-fun bs!1565950 () Bool)

(assert (= bs!1565950 (and d!1968178 d!1967540)))

(assert (=> bs!1565950 (= lambda!343499 lambda!343381)))

(declare-fun bs!1565951 () Bool)

(assert (= bs!1565951 (and d!1968178 d!1967516)))

(assert (=> bs!1565951 (= lambda!343499 lambda!343362)))

(declare-fun bs!1565953 () Bool)

(assert (= bs!1565953 (and d!1968178 d!1967528)))

(assert (=> bs!1565953 (= lambda!343499 lambda!343380)))

(declare-fun bs!1565954 () Bool)

(assert (= bs!1565954 (and d!1968178 d!1968088)))

(assert (=> bs!1565954 (= lambda!343499 lambda!343483)))

(declare-fun bs!1565956 () Bool)

(assert (= bs!1565956 (and d!1968178 d!1967668)))

(assert (=> bs!1565956 (= lambda!343499 lambda!343401)))

(declare-fun bs!1565958 () Bool)

(assert (= bs!1565958 (and d!1968178 d!1967524)))

(assert (=> bs!1565958 (= lambda!343499 lambda!343365)))

(declare-fun bs!1565960 () Bool)

(assert (= bs!1565960 (and d!1968178 d!1967958)))

(assert (=> bs!1565960 (= lambda!343499 lambda!343455)))

(declare-fun bs!1565962 () Bool)

(assert (= bs!1565962 (and d!1968178 d!1967934)))

(assert (=> bs!1565962 (= lambda!343499 lambda!343452)))

(declare-fun lt!2351893 () List!64866)

(assert (=> d!1968178 (forall!15316 lt!2351893 lambda!343499)))

(declare-fun e!3813925 () List!64866)

(assert (=> d!1968178 (= lt!2351893 e!3813925)))

(declare-fun c!1136343 () Bool)

(assert (=> d!1968178 (= c!1136343 ((_ is Cons!64743) (t!378423 zl!343)))))

(assert (=> d!1968178 (= (unfocusZipperList!1610 (t!378423 zl!343)) lt!2351893)))

(declare-fun b!6270662 () Bool)

(assert (=> b!6270662 (= e!3813925 (Cons!64742 (generalisedConcat!1786 (exprs!6073 (h!71191 (t!378423 zl!343)))) (unfocusZipperList!1610 (t!378423 (t!378423 zl!343)))))))

(declare-fun b!6270663 () Bool)

(assert (=> b!6270663 (= e!3813925 Nil!64742)))

(assert (= (and d!1968178 c!1136343) b!6270662))

(assert (= (and d!1968178 (not c!1136343)) b!6270663))

(declare-fun m!7092544 () Bool)

(assert (=> d!1968178 m!7092544))

(declare-fun m!7092546 () Bool)

(assert (=> b!6270662 m!7092546))

(declare-fun m!7092548 () Bool)

(assert (=> b!6270662 m!7092548))

(assert (=> b!6269249 d!1968178))

(declare-fun b!6270674 () Bool)

(declare-fun e!3813932 () Bool)

(assert (=> b!6270674 (= e!3813932 (matchR!8372 (derivativeStep!4898 (regTwo!32890 r!7292) (head!12878 s!2326)) (tail!11963 s!2326)))))

(declare-fun b!6270675 () Bool)

(declare-fun e!3813933 () Bool)

(declare-fun e!3813937 () Bool)

(assert (=> b!6270675 (= e!3813933 e!3813937)))

(declare-fun res!2586631 () Bool)

(assert (=> b!6270675 (=> (not res!2586631) (not e!3813937))))

(declare-fun lt!2351895 () Bool)

(assert (=> b!6270675 (= res!2586631 (not lt!2351895))))

(declare-fun b!6270676 () Bool)

(declare-fun res!2586626 () Bool)

(assert (=> b!6270676 (=> res!2586626 e!3813933)))

(assert (=> b!6270676 (= res!2586626 (not ((_ is ElementMatch!16189) (regTwo!32890 r!7292))))))

(declare-fun e!3813938 () Bool)

(assert (=> b!6270676 (= e!3813938 e!3813933)))

(declare-fun b!6270677 () Bool)

(declare-fun e!3813936 () Bool)

(assert (=> b!6270677 (= e!3813936 e!3813938)))

(declare-fun c!1136349 () Bool)

(assert (=> b!6270677 (= c!1136349 ((_ is EmptyLang!16189) (regTwo!32890 r!7292)))))

(declare-fun b!6270678 () Bool)

(declare-fun call!530324 () Bool)

(assert (=> b!6270678 (= e!3813936 (= lt!2351895 call!530324))))

(declare-fun b!6270680 () Bool)

(declare-fun res!2586624 () Bool)

(declare-fun e!3813935 () Bool)

(assert (=> b!6270680 (=> res!2586624 e!3813935)))

(assert (=> b!6270680 (= res!2586624 (not (isEmpty!36777 (tail!11963 s!2326))))))

(declare-fun bm!530319 () Bool)

(assert (=> bm!530319 (= call!530324 (isEmpty!36777 s!2326))))

(declare-fun b!6270681 () Bool)

(declare-fun res!2586629 () Bool)

(assert (=> b!6270681 (=> res!2586629 e!3813933)))

(declare-fun e!3813934 () Bool)

(assert (=> b!6270681 (= res!2586629 e!3813934)))

(declare-fun res!2586627 () Bool)

(assert (=> b!6270681 (=> (not res!2586627) (not e!3813934))))

(assert (=> b!6270681 (= res!2586627 lt!2351895)))

(declare-fun b!6270682 () Bool)

(assert (=> b!6270682 (= e!3813932 (nullable!6182 (regTwo!32890 r!7292)))))

(declare-fun b!6270683 () Bool)

(assert (=> b!6270683 (= e!3813935 (not (= (head!12878 s!2326) (c!1135772 (regTwo!32890 r!7292)))))))

(declare-fun b!6270684 () Bool)

(declare-fun res!2586628 () Bool)

(assert (=> b!6270684 (=> (not res!2586628) (not e!3813934))))

(assert (=> b!6270684 (= res!2586628 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun b!6270685 () Bool)

(assert (=> b!6270685 (= e!3813937 e!3813935)))

(declare-fun res!2586625 () Bool)

(assert (=> b!6270685 (=> res!2586625 e!3813935)))

(assert (=> b!6270685 (= res!2586625 call!530324)))

(declare-fun b!6270679 () Bool)

(assert (=> b!6270679 (= e!3813938 (not lt!2351895))))

(declare-fun d!1968182 () Bool)

(assert (=> d!1968182 e!3813936))

(declare-fun c!1136348 () Bool)

(assert (=> d!1968182 (= c!1136348 ((_ is EmptyExpr!16189) (regTwo!32890 r!7292)))))

(assert (=> d!1968182 (= lt!2351895 e!3813932)))

(declare-fun c!1136350 () Bool)

(assert (=> d!1968182 (= c!1136350 (isEmpty!36777 s!2326))))

(assert (=> d!1968182 (validRegex!7925 (regTwo!32890 r!7292))))

(assert (=> d!1968182 (= (matchR!8372 (regTwo!32890 r!7292) s!2326) lt!2351895)))

(declare-fun b!6270686 () Bool)

(declare-fun res!2586630 () Bool)

(assert (=> b!6270686 (=> (not res!2586630) (not e!3813934))))

(assert (=> b!6270686 (= res!2586630 (not call!530324))))

(declare-fun b!6270687 () Bool)

(assert (=> b!6270687 (= e!3813934 (= (head!12878 s!2326) (c!1135772 (regTwo!32890 r!7292))))))

(assert (= (and d!1968182 c!1136350) b!6270682))

(assert (= (and d!1968182 (not c!1136350)) b!6270674))

(assert (= (and d!1968182 c!1136348) b!6270678))

(assert (= (and d!1968182 (not c!1136348)) b!6270677))

(assert (= (and b!6270677 c!1136349) b!6270679))

(assert (= (and b!6270677 (not c!1136349)) b!6270676))

(assert (= (and b!6270676 (not res!2586626)) b!6270681))

(assert (= (and b!6270681 res!2586627) b!6270686))

(assert (= (and b!6270686 res!2586630) b!6270684))

(assert (= (and b!6270684 res!2586628) b!6270687))

(assert (= (and b!6270681 (not res!2586629)) b!6270675))

(assert (= (and b!6270675 res!2586631) b!6270685))

(assert (= (and b!6270685 (not res!2586625)) b!6270680))

(assert (= (and b!6270680 (not res!2586624)) b!6270683))

(assert (= (or b!6270678 b!6270685 b!6270686) bm!530319))

(assert (=> d!1968182 m!7091304))

(declare-fun m!7092554 () Bool)

(assert (=> d!1968182 m!7092554))

(assert (=> b!6270683 m!7091370))

(assert (=> b!6270684 m!7091372))

(assert (=> b!6270684 m!7091372))

(assert (=> b!6270684 m!7091374))

(declare-fun m!7092562 () Bool)

(assert (=> b!6270682 m!7092562))

(assert (=> b!6270680 m!7091372))

(assert (=> b!6270680 m!7091372))

(assert (=> b!6270680 m!7091374))

(assert (=> b!6270674 m!7091370))

(assert (=> b!6270674 m!7091370))

(declare-fun m!7092570 () Bool)

(assert (=> b!6270674 m!7092570))

(assert (=> b!6270674 m!7091372))

(assert (=> b!6270674 m!7092570))

(assert (=> b!6270674 m!7091372))

(declare-fun m!7092576 () Bool)

(assert (=> b!6270674 m!7092576))

(assert (=> bm!530319 m!7091304))

(assert (=> b!6270687 m!7091370))

(assert (=> b!6269769 d!1968182))

(declare-fun bs!1565976 () Bool)

(declare-fun b!6270690 () Bool)

(assert (= bs!1565976 (and b!6270690 d!1967788)))

(declare-fun lambda!343502 () Int)

(assert (=> bs!1565976 (not (= lambda!343502 lambda!343420))))

(declare-fun bs!1565979 () Bool)

(assert (= bs!1565979 (and b!6270690 d!1967948)))

(assert (=> bs!1565979 (not (= lambda!343502 lambda!343454))))

(declare-fun bs!1565981 () Bool)

(assert (= bs!1565981 (and b!6270690 b!6270197)))

(declare-fun lt!2351899 () Int)

(assert (=> bs!1565981 (= (= lt!2351899 lt!2351855) (= lambda!343502 lambda!343448))))

(declare-fun bs!1565983 () Bool)

(assert (= bs!1565983 (and b!6270690 d!1968022)))

(assert (=> bs!1565983 (not (= lambda!343502 lambda!343471))))

(declare-fun bs!1565985 () Bool)

(assert (= bs!1565985 (and b!6270690 d!1968178)))

(assert (=> bs!1565985 (not (= lambda!343502 lambda!343499))))

(declare-fun bs!1565987 () Bool)

(assert (= bs!1565987 (and b!6270690 d!1967658)))

(assert (=> bs!1565987 (not (= lambda!343502 lambda!343400))))

(declare-fun bs!1565989 () Bool)

(assert (= bs!1565989 (and b!6270690 b!6270195)))

(assert (=> bs!1565989 (= (= lt!2351899 lt!2351856) (= lambda!343502 lambda!343446))))

(declare-fun bs!1565991 () Bool)

(assert (= bs!1565991 (and b!6270690 d!1967514)))

(assert (=> bs!1565991 (not (= lambda!343502 lambda!343358))))

(declare-fun bs!1565993 () Bool)

(assert (= bs!1565993 (and b!6270690 d!1967540)))

(assert (=> bs!1565993 (not (= lambda!343502 lambda!343381))))

(declare-fun bs!1565995 () Bool)

(assert (= bs!1565995 (and b!6270690 d!1967516)))

(assert (=> bs!1565995 (not (= lambda!343502 lambda!343362))))

(declare-fun bs!1565996 () Bool)

(assert (= bs!1565996 (and b!6270690 d!1967528)))

(assert (=> bs!1565996 (not (= lambda!343502 lambda!343380))))

(declare-fun bs!1565997 () Bool)

(assert (= bs!1565997 (and b!6270690 d!1968088)))

(assert (=> bs!1565997 (not (= lambda!343502 lambda!343483))))

(declare-fun bs!1565999 () Bool)

(assert (= bs!1565999 (and b!6270690 d!1967668)))

(assert (=> bs!1565999 (not (= lambda!343502 lambda!343401))))

(declare-fun bs!1566001 () Bool)

(assert (= bs!1566001 (and b!6270690 d!1967524)))

(assert (=> bs!1566001 (not (= lambda!343502 lambda!343365))))

(declare-fun bs!1566003 () Bool)

(assert (= bs!1566003 (and b!6270690 d!1967958)))

(assert (=> bs!1566003 (not (= lambda!343502 lambda!343455))))

(declare-fun bs!1566005 () Bool)

(assert (= bs!1566005 (and b!6270690 d!1967934)))

(assert (=> bs!1566005 (not (= lambda!343502 lambda!343452))))

(assert (=> b!6270690 true))

(declare-fun bs!1566007 () Bool)

(declare-fun b!6270692 () Bool)

(assert (= bs!1566007 (and b!6270692 d!1967788)))

(declare-fun lambda!343503 () Int)

(assert (=> bs!1566007 (not (= lambda!343503 lambda!343420))))

(declare-fun bs!1566008 () Bool)

(assert (= bs!1566008 (and b!6270692 d!1967948)))

(assert (=> bs!1566008 (not (= lambda!343503 lambda!343454))))

(declare-fun bs!1566009 () Bool)

(assert (= bs!1566009 (and b!6270692 b!6270197)))

(declare-fun lt!2351898 () Int)

(assert (=> bs!1566009 (= (= lt!2351898 lt!2351855) (= lambda!343503 lambda!343448))))

(declare-fun bs!1566010 () Bool)

(assert (= bs!1566010 (and b!6270692 d!1968022)))

(assert (=> bs!1566010 (not (= lambda!343503 lambda!343471))))

(declare-fun bs!1566011 () Bool)

(assert (= bs!1566011 (and b!6270692 d!1968178)))

(assert (=> bs!1566011 (not (= lambda!343503 lambda!343499))))

(declare-fun bs!1566012 () Bool)

(assert (= bs!1566012 (and b!6270692 d!1967658)))

(assert (=> bs!1566012 (not (= lambda!343503 lambda!343400))))

(declare-fun bs!1566013 () Bool)

(assert (= bs!1566013 (and b!6270692 b!6270195)))

(assert (=> bs!1566013 (= (= lt!2351898 lt!2351856) (= lambda!343503 lambda!343446))))

(declare-fun bs!1566014 () Bool)

(assert (= bs!1566014 (and b!6270692 b!6270690)))

(assert (=> bs!1566014 (= (= lt!2351898 lt!2351899) (= lambda!343503 lambda!343502))))

(declare-fun bs!1566015 () Bool)

(assert (= bs!1566015 (and b!6270692 d!1967514)))

(assert (=> bs!1566015 (not (= lambda!343503 lambda!343358))))

(declare-fun bs!1566016 () Bool)

(assert (= bs!1566016 (and b!6270692 d!1967540)))

(assert (=> bs!1566016 (not (= lambda!343503 lambda!343381))))

(declare-fun bs!1566017 () Bool)

(assert (= bs!1566017 (and b!6270692 d!1967516)))

(assert (=> bs!1566017 (not (= lambda!343503 lambda!343362))))

(declare-fun bs!1566018 () Bool)

(assert (= bs!1566018 (and b!6270692 d!1967528)))

(assert (=> bs!1566018 (not (= lambda!343503 lambda!343380))))

(declare-fun bs!1566019 () Bool)

(assert (= bs!1566019 (and b!6270692 d!1968088)))

(assert (=> bs!1566019 (not (= lambda!343503 lambda!343483))))

(declare-fun bs!1566021 () Bool)

(assert (= bs!1566021 (and b!6270692 d!1967668)))

(assert (=> bs!1566021 (not (= lambda!343503 lambda!343401))))

(declare-fun bs!1566023 () Bool)

(assert (= bs!1566023 (and b!6270692 d!1967524)))

(assert (=> bs!1566023 (not (= lambda!343503 lambda!343365))))

(declare-fun bs!1566025 () Bool)

(assert (= bs!1566025 (and b!6270692 d!1967958)))

(assert (=> bs!1566025 (not (= lambda!343503 lambda!343455))))

(declare-fun bs!1566027 () Bool)

(assert (= bs!1566027 (and b!6270692 d!1967934)))

(assert (=> bs!1566027 (not (= lambda!343503 lambda!343452))))

(assert (=> b!6270692 true))

(declare-fun d!1968186 () Bool)

(declare-fun e!3813941 () Bool)

(assert (=> d!1968186 e!3813941))

(declare-fun res!2586632 () Bool)

(assert (=> d!1968186 (=> (not res!2586632) (not e!3813941))))

(assert (=> d!1968186 (= res!2586632 (>= lt!2351898 0))))

(declare-fun e!3813940 () Int)

(assert (=> d!1968186 (= lt!2351898 e!3813940)))

(declare-fun c!1136352 () Bool)

(assert (=> d!1968186 (= c!1136352 ((_ is Cons!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> d!1968186 (= (contextDepth!206 (h!71191 zl!343)) lt!2351898)))

(assert (=> b!6270690 (= e!3813940 lt!2351899)))

(assert (=> b!6270690 (= lt!2351899 (maxBigInt!0 (regexDepth!309 (h!71190 (exprs!6073 (h!71191 zl!343)))) (contextDepth!206 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun lt!2351900 () Unit!158087)

(assert (=> b!6270690 (= lt!2351900 (lemmaForallRegexDepthBiggerThanTransitive!99 (t!378422 (exprs!6073 (h!71191 zl!343))) lt!2351899 (contextDepth!206 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))))))))

(assert (=> b!6270690 (forall!15316 (t!378422 (exprs!6073 (h!71191 zl!343))) lambda!343502)))

(declare-fun lt!2351897 () Unit!158087)

(assert (=> b!6270690 (= lt!2351897 lt!2351900)))

(declare-fun b!6270691 () Bool)

(assert (=> b!6270691 (= e!3813940 0)))

(assert (=> b!6270692 (= e!3813941 (forall!15316 (exprs!6073 (h!71191 zl!343)) lambda!343503))))

(assert (= (and d!1968186 c!1136352) b!6270690))

(assert (= (and d!1968186 (not c!1136352)) b!6270691))

(assert (= (and d!1968186 res!2586632) b!6270692))

(declare-fun m!7092588 () Bool)

(assert (=> b!6270690 m!7092588))

(assert (=> b!6270690 m!7092588))

(declare-fun m!7092590 () Bool)

(assert (=> b!6270690 m!7092590))

(declare-fun m!7092592 () Bool)

(assert (=> b!6270690 m!7092592))

(declare-fun m!7092594 () Bool)

(assert (=> b!6270690 m!7092594))

(assert (=> b!6270690 m!7092594))

(assert (=> b!6270690 m!7092588))

(declare-fun m!7092596 () Bool)

(assert (=> b!6270690 m!7092596))

(declare-fun m!7092598 () Bool)

(assert (=> b!6270692 m!7092598))

(assert (=> b!6269127 d!1968186))

(declare-fun bs!1566042 () Bool)

(declare-fun b!6270700 () Bool)

(assert (= bs!1566042 (and b!6270700 b!6269122)))

(declare-fun lambda!343505 () Int)

(assert (=> bs!1566042 (= lambda!343505 lambda!343339)))

(declare-fun bs!1566044 () Bool)

(assert (= bs!1566044 (and b!6270700 b!6269127)))

(assert (=> bs!1566044 (= lambda!343505 lambda!343343)))

(declare-fun bs!1566045 () Bool)

(assert (= bs!1566045 (and b!6270700 b!6270173)))

(assert (=> bs!1566045 (= lambda!343505 lambda!343430)))

(declare-fun lt!2351902 () Int)

(declare-fun lambda!343506 () Int)

(assert (=> bs!1566045 (= (= lt!2351902 lt!2351830) (= lambda!343506 lambda!343433))))

(declare-fun bs!1566046 () Bool)

(assert (= bs!1566046 (and b!6270700 b!6270175)))

(assert (=> bs!1566046 (= (= lt!2351902 lt!2351832) (= lambda!343506 lambda!343434))))

(declare-fun bs!1566047 () Bool)

(assert (= bs!1566047 (and b!6270700 d!1968070)))

(assert (=> bs!1566047 (not (= lambda!343506 lambda!343481))))

(declare-fun bs!1566048 () Bool)

(assert (= bs!1566048 (and b!6270700 d!1967900)))

(assert (=> bs!1566048 (not (= lambda!343506 lambda!343429))))

(declare-fun bs!1566049 () Bool)

(assert (= bs!1566049 (and b!6270700 d!1968128)))

(assert (=> bs!1566049 (not (= lambda!343506 lambda!343488))))

(declare-fun bs!1566050 () Bool)

(assert (= bs!1566050 (and b!6270700 d!1967868)))

(assert (=> bs!1566050 (not (= lambda!343506 lambda!343423))))

(declare-fun bs!1566051 () Bool)

(assert (= bs!1566051 (and b!6270700 d!1967778)))

(assert (=> bs!1566051 (not (= lambda!343506 lambda!343419))))

(declare-fun bs!1566052 () Bool)

(assert (= bs!1566052 (and b!6270700 d!1967774)))

(assert (=> bs!1566052 (not (= lambda!343506 lambda!343418))))

(declare-fun bs!1566053 () Bool)

(assert (= bs!1566053 (and b!6270700 d!1967884)))

(assert (=> bs!1566053 (not (= lambda!343506 lambda!343425))))

(assert (=> bs!1566044 (= (= lt!2351902 lt!2351683) (= lambda!343506 lambda!343345))))

(declare-fun bs!1566054 () Bool)

(assert (= bs!1566054 (and b!6270700 d!1967888)))

(assert (=> bs!1566054 (not (= lambda!343506 lambda!343426))))

(declare-fun bs!1566055 () Bool)

(assert (= bs!1566055 (and b!6270700 b!6269129)))

(assert (=> bs!1566055 (= (= lt!2351902 lt!2351685) (= lambda!343506 lambda!343346))))

(declare-fun bs!1566056 () Bool)

(assert (= bs!1566056 (and b!6270700 b!6269124)))

(assert (=> bs!1566056 (= (= lt!2351902 lt!2351679) (= lambda!343506 lambda!343341))))

(assert (=> bs!1566042 (= (= lt!2351902 lt!2351677) (= lambda!343506 lambda!343340))))

(declare-fun bs!1566057 () Bool)

(assert (= bs!1566057 (and b!6270700 d!1968094)))

(assert (=> bs!1566057 (not (= lambda!343506 lambda!343484))))

(declare-fun bs!1566058 () Bool)

(assert (= bs!1566058 (and b!6270700 d!1967876)))

(assert (=> bs!1566058 (not (= lambda!343506 lambda!343424))))

(assert (=> b!6270700 true))

(declare-fun bs!1566059 () Bool)

(declare-fun b!6270702 () Bool)

(assert (= bs!1566059 (and b!6270702 b!6270173)))

(declare-fun lt!2351904 () Int)

(declare-fun lambda!343507 () Int)

(assert (=> bs!1566059 (= (= lt!2351904 lt!2351830) (= lambda!343507 lambda!343433))))

(declare-fun bs!1566060 () Bool)

(assert (= bs!1566060 (and b!6270702 b!6270700)))

(assert (=> bs!1566060 (= (= lt!2351904 lt!2351902) (= lambda!343507 lambda!343506))))

(declare-fun bs!1566061 () Bool)

(assert (= bs!1566061 (and b!6270702 b!6270175)))

(assert (=> bs!1566061 (= (= lt!2351904 lt!2351832) (= lambda!343507 lambda!343434))))

(declare-fun bs!1566062 () Bool)

(assert (= bs!1566062 (and b!6270702 d!1968070)))

(assert (=> bs!1566062 (not (= lambda!343507 lambda!343481))))

(declare-fun bs!1566063 () Bool)

(assert (= bs!1566063 (and b!6270702 d!1967900)))

(assert (=> bs!1566063 (not (= lambda!343507 lambda!343429))))

(declare-fun bs!1566064 () Bool)

(assert (= bs!1566064 (and b!6270702 d!1968128)))

(assert (=> bs!1566064 (not (= lambda!343507 lambda!343488))))

(declare-fun bs!1566065 () Bool)

(assert (= bs!1566065 (and b!6270702 d!1967868)))

(assert (=> bs!1566065 (not (= lambda!343507 lambda!343423))))

(declare-fun bs!1566066 () Bool)

(assert (= bs!1566066 (and b!6270702 d!1967778)))

(assert (=> bs!1566066 (not (= lambda!343507 lambda!343419))))

(declare-fun bs!1566067 () Bool)

(assert (= bs!1566067 (and b!6270702 d!1967774)))

(assert (=> bs!1566067 (not (= lambda!343507 lambda!343418))))

(declare-fun bs!1566068 () Bool)

(assert (= bs!1566068 (and b!6270702 d!1967884)))

(assert (=> bs!1566068 (not (= lambda!343507 lambda!343425))))

(declare-fun bs!1566069 () Bool)

(assert (= bs!1566069 (and b!6270702 b!6269127)))

(assert (=> bs!1566069 (= (= lt!2351904 lt!2351683) (= lambda!343507 lambda!343345))))

(declare-fun bs!1566070 () Bool)

(assert (= bs!1566070 (and b!6270702 d!1967888)))

(assert (=> bs!1566070 (not (= lambda!343507 lambda!343426))))

(declare-fun bs!1566071 () Bool)

(assert (= bs!1566071 (and b!6270702 b!6269129)))

(assert (=> bs!1566071 (= (= lt!2351904 lt!2351685) (= lambda!343507 lambda!343346))))

(declare-fun bs!1566072 () Bool)

(assert (= bs!1566072 (and b!6270702 b!6269124)))

(assert (=> bs!1566072 (= (= lt!2351904 lt!2351679) (= lambda!343507 lambda!343341))))

(declare-fun bs!1566073 () Bool)

(assert (= bs!1566073 (and b!6270702 b!6269122)))

(assert (=> bs!1566073 (= (= lt!2351904 lt!2351677) (= lambda!343507 lambda!343340))))

(declare-fun bs!1566074 () Bool)

(assert (= bs!1566074 (and b!6270702 d!1968094)))

(assert (=> bs!1566074 (not (= lambda!343507 lambda!343484))))

(declare-fun bs!1566075 () Bool)

(assert (= bs!1566075 (and b!6270702 d!1967876)))

(assert (=> bs!1566075 (not (= lambda!343507 lambda!343424))))

(assert (=> b!6270702 true))

(declare-fun d!1968192 () Bool)

(declare-fun e!3813949 () Bool)

(assert (=> d!1968192 e!3813949))

(declare-fun res!2586638 () Bool)

(assert (=> d!1968192 (=> (not res!2586638) (not e!3813949))))

(assert (=> d!1968192 (= res!2586638 (>= lt!2351904 0))))

(declare-fun e!3813948 () Int)

(assert (=> d!1968192 (= lt!2351904 e!3813948)))

(declare-fun c!1136354 () Bool)

(assert (=> d!1968192 (= c!1136354 ((_ is Cons!64743) (t!378423 zl!343)))))

(assert (=> d!1968192 (= (zipperDepth!314 (t!378423 zl!343)) lt!2351904)))

(assert (=> b!6270700 (= e!3813948 lt!2351902)))

(assert (=> b!6270700 (= lt!2351902 (maxBigInt!0 (contextDepth!206 (h!71191 (t!378423 zl!343))) (zipperDepth!314 (t!378423 (t!378423 zl!343)))))))

(declare-fun lt!2351901 () Unit!158087)

(assert (=> b!6270700 (= lt!2351901 (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 (t!378423 zl!343)) lt!2351902 (zipperDepth!314 (t!378423 (t!378423 zl!343))) lambda!343505))))

(assert (=> b!6270700 (forall!15315 (t!378423 (t!378423 zl!343)) lambda!343506)))

(declare-fun lt!2351903 () Unit!158087)

(assert (=> b!6270700 (= lt!2351903 lt!2351901)))

(declare-fun b!6270701 () Bool)

(assert (=> b!6270701 (= e!3813948 0)))

(assert (=> b!6270702 (= e!3813949 (forall!15315 (t!378423 zl!343) lambda!343507))))

(assert (= (and d!1968192 c!1136354) b!6270700))

(assert (= (and d!1968192 (not c!1136354)) b!6270701))

(assert (= (and d!1968192 res!2586638) b!6270702))

(declare-fun m!7092608 () Bool)

(assert (=> b!6270700 m!7092608))

(declare-fun m!7092610 () Bool)

(assert (=> b!6270700 m!7092610))

(declare-fun m!7092612 () Bool)

(assert (=> b!6270700 m!7092612))

(assert (=> b!6270700 m!7092610))

(declare-fun m!7092614 () Bool)

(assert (=> b!6270700 m!7092614))

(assert (=> b!6270700 m!7092608))

(assert (=> b!6270700 m!7092610))

(declare-fun m!7092616 () Bool)

(assert (=> b!6270700 m!7092616))

(declare-fun m!7092618 () Bool)

(assert (=> b!6270702 m!7092618))

(assert (=> b!6269127 d!1968192))

(declare-fun bs!1566076 () Bool)

(declare-fun d!1968202 () Bool)

(assert (= bs!1566076 (and d!1968202 b!6270173)))

(declare-fun lambda!343508 () Int)

(assert (=> bs!1566076 (not (= lambda!343508 lambda!343433))))

(declare-fun bs!1566077 () Bool)

(assert (= bs!1566077 (and d!1968202 b!6270700)))

(assert (=> bs!1566077 (not (= lambda!343508 lambda!343506))))

(declare-fun bs!1566078 () Bool)

(assert (= bs!1566078 (and d!1968202 b!6270175)))

(assert (=> bs!1566078 (not (= lambda!343508 lambda!343434))))

(declare-fun bs!1566079 () Bool)

(assert (= bs!1566079 (and d!1968202 d!1968070)))

(assert (=> bs!1566079 (not (= lambda!343508 lambda!343481))))

(declare-fun bs!1566080 () Bool)

(assert (= bs!1566080 (and d!1968202 d!1967900)))

(assert (=> bs!1566080 (= (and (= lt!2351683 lt!2351677) (= lambda!343343 lambda!343339)) (= lambda!343508 lambda!343429))))

(declare-fun bs!1566081 () Bool)

(assert (= bs!1566081 (and d!1968202 d!1968128)))

(assert (=> bs!1566081 (not (= lambda!343508 lambda!343488))))

(declare-fun bs!1566082 () Bool)

(assert (= bs!1566082 (and d!1968202 d!1967868)))

(assert (=> bs!1566082 (not (= lambda!343508 lambda!343423))))

(declare-fun bs!1566083 () Bool)

(assert (= bs!1566083 (and d!1968202 d!1967774)))

(assert (=> bs!1566083 (not (= lambda!343508 lambda!343418))))

(declare-fun bs!1566084 () Bool)

(assert (= bs!1566084 (and d!1968202 d!1967884)))

(assert (=> bs!1566084 (not (= lambda!343508 lambda!343425))))

(declare-fun bs!1566085 () Bool)

(assert (= bs!1566085 (and d!1968202 b!6269127)))

(assert (=> bs!1566085 (not (= lambda!343508 lambda!343345))))

(declare-fun bs!1566086 () Bool)

(assert (= bs!1566086 (and d!1968202 d!1967888)))

(assert (=> bs!1566086 (not (= lambda!343508 lambda!343426))))

(declare-fun bs!1566087 () Bool)

(assert (= bs!1566087 (and d!1968202 b!6269129)))

(assert (=> bs!1566087 (not (= lambda!343508 lambda!343346))))

(declare-fun bs!1566088 () Bool)

(assert (= bs!1566088 (and d!1968202 b!6269124)))

(assert (=> bs!1566088 (not (= lambda!343508 lambda!343341))))

(declare-fun bs!1566089 () Bool)

(assert (= bs!1566089 (and d!1968202 b!6269122)))

(assert (=> bs!1566089 (not (= lambda!343508 lambda!343340))))

(declare-fun bs!1566090 () Bool)

(assert (= bs!1566090 (and d!1968202 d!1968094)))

(assert (=> bs!1566090 (not (= lambda!343508 lambda!343484))))

(declare-fun bs!1566091 () Bool)

(assert (= bs!1566091 (and d!1968202 d!1967876)))

(assert (=> bs!1566091 (not (= lambda!343508 lambda!343424))))

(declare-fun bs!1566092 () Bool)

(assert (= bs!1566092 (and d!1968202 b!6270702)))

(assert (=> bs!1566092 (not (= lambda!343508 lambda!343507))))

(declare-fun bs!1566093 () Bool)

(assert (= bs!1566093 (and d!1968202 d!1967778)))

(assert (=> bs!1566093 (not (= lambda!343508 lambda!343419))))

(assert (=> d!1968202 true))

(assert (=> d!1968202 true))

(assert (=> d!1968202 (< (dynLambda!25603 order!27453 lambda!343343) (dynLambda!25604 order!27455 lambda!343508))))

(assert (=> d!1968202 (forall!15315 (t!378423 zl!343) lambda!343508)))

(declare-fun lt!2351905 () Unit!158087)

(assert (=> d!1968202 (= lt!2351905 (choose!46523 (t!378423 zl!343) lt!2351683 (zipperDepth!314 (t!378423 zl!343)) lambda!343343))))

(assert (=> d!1968202 (>= lt!2351683 (zipperDepth!314 (t!378423 zl!343)))))

(assert (=> d!1968202 (= (lemmaForallContextDepthBiggerThanTransitive!190 (t!378423 zl!343) lt!2351683 (zipperDepth!314 (t!378423 zl!343)) lambda!343343) lt!2351905)))

(declare-fun bs!1566094 () Bool)

(assert (= bs!1566094 d!1968202))

(declare-fun m!7092620 () Bool)

(assert (=> bs!1566094 m!7092620))

(assert (=> bs!1566094 m!7090988))

(declare-fun m!7092622 () Bool)

(assert (=> bs!1566094 m!7092622))

(assert (=> b!6269127 d!1968202))

(declare-fun d!1968204 () Bool)

(declare-fun res!2586643 () Bool)

(declare-fun e!3813952 () Bool)

(assert (=> d!1968204 (=> res!2586643 e!3813952)))

(assert (=> d!1968204 (= res!2586643 ((_ is Nil!64743) (t!378423 zl!343)))))

(assert (=> d!1968204 (= (forall!15315 (t!378423 zl!343) lambda!343345) e!3813952)))

(declare-fun b!6270707 () Bool)

(declare-fun e!3813953 () Bool)

(assert (=> b!6270707 (= e!3813952 e!3813953)))

(declare-fun res!2586644 () Bool)

(assert (=> b!6270707 (=> (not res!2586644) (not e!3813953))))

(assert (=> b!6270707 (= res!2586644 (dynLambda!25600 lambda!343345 (h!71191 (t!378423 zl!343))))))

(declare-fun b!6270708 () Bool)

(assert (=> b!6270708 (= e!3813953 (forall!15315 (t!378423 (t!378423 zl!343)) lambda!343345))))

(assert (= (and d!1968204 (not res!2586643)) b!6270707))

(assert (= (and b!6270707 res!2586644) b!6270708))

(declare-fun b_lambda!238765 () Bool)

(assert (=> (not b_lambda!238765) (not b!6270707)))

(declare-fun m!7092624 () Bool)

(assert (=> b!6270707 m!7092624))

(declare-fun m!7092626 () Bool)

(assert (=> b!6270708 m!7092626))

(assert (=> b!6269127 d!1968204))

(declare-fun d!1968206 () Bool)

(assert (=> d!1968206 (= (maxBigInt!0 (contextDepth!206 (h!71191 zl!343)) (zipperDepth!314 (t!378423 zl!343))) (ite (>= (contextDepth!206 (h!71191 zl!343)) (zipperDepth!314 (t!378423 zl!343))) (contextDepth!206 (h!71191 zl!343)) (zipperDepth!314 (t!378423 zl!343))))))

(assert (=> b!6269127 d!1968206))

(assert (=> b!6269421 d!1967688))

(declare-fun d!1968208 () Bool)

(declare-fun lt!2351906 () Int)

(assert (=> d!1968208 (>= lt!2351906 0)))

(declare-fun e!3813954 () Int)

(assert (=> d!1968208 (= lt!2351906 e!3813954)))

(declare-fun c!1136355 () Bool)

(assert (=> d!1968208 (= c!1136355 ((_ is Cons!64743) (t!378423 zl!343)))))

(assert (=> d!1968208 (= (zipperDepthTotal!342 (t!378423 zl!343)) lt!2351906)))

(declare-fun b!6270709 () Bool)

(assert (=> b!6270709 (= e!3813954 (+ (contextDepthTotal!312 (h!71191 (t!378423 zl!343))) (zipperDepthTotal!342 (t!378423 (t!378423 zl!343)))))))

(declare-fun b!6270710 () Bool)

(assert (=> b!6270710 (= e!3813954 0)))

(assert (= (and d!1968208 c!1136355) b!6270709))

(assert (= (and d!1968208 (not c!1136355)) b!6270710))

(declare-fun m!7092628 () Bool)

(assert (=> b!6270709 m!7092628))

(declare-fun m!7092630 () Bool)

(assert (=> b!6270709 m!7092630))

(assert (=> b!6269421 d!1968208))

(declare-fun d!1968210 () Bool)

(declare-fun res!2586649 () Bool)

(declare-fun e!3813957 () Bool)

(assert (=> d!1968210 (=> res!2586649 e!3813957)))

(assert (=> d!1968210 (= res!2586649 ((_ is Nil!64742) (exprs!6073 (h!71191 zl!343))))))

(assert (=> d!1968210 (= (forall!15316 (exprs!6073 (h!71191 zl!343)) lambda!343381) e!3813957)))

(declare-fun b!6270715 () Bool)

(declare-fun e!3813958 () Bool)

(assert (=> b!6270715 (= e!3813957 e!3813958)))

(declare-fun res!2586650 () Bool)

(assert (=> b!6270715 (=> (not res!2586650) (not e!3813958))))

(assert (=> b!6270715 (= res!2586650 (dynLambda!25601 lambda!343381 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270716 () Bool)

(assert (=> b!6270716 (= e!3813958 (forall!15316 (t!378422 (exprs!6073 (h!71191 zl!343))) lambda!343381))))

(assert (= (and d!1968210 (not res!2586649)) b!6270715))

(assert (= (and b!6270715 res!2586650) b!6270716))

(declare-fun b_lambda!238767 () Bool)

(assert (=> (not b_lambda!238767) (not b!6270715)))

(declare-fun m!7092632 () Bool)

(assert (=> b!6270715 m!7092632))

(declare-fun m!7092634 () Bool)

(assert (=> b!6270716 m!7092634))

(assert (=> d!1967540 d!1968210))

(assert (=> d!1967680 d!1967682))

(assert (=> d!1967680 d!1967580))

(declare-fun d!1968212 () Bool)

(declare-fun e!3813959 () Bool)

(assert (=> d!1968212 (= (matchZipper!2201 ((_ map or) lt!2351600 lt!2351623) (t!378424 s!2326)) e!3813959)))

(declare-fun res!2586651 () Bool)

(assert (=> d!1968212 (=> res!2586651 e!3813959)))

(assert (=> d!1968212 (= res!2586651 (matchZipper!2201 lt!2351600 (t!378424 s!2326)))))

(assert (=> d!1968212 true))

(declare-fun _$48!2023 () Unit!158087)

(assert (=> d!1968212 (= (choose!46512 lt!2351600 lt!2351623 (t!378424 s!2326)) _$48!2023)))

(declare-fun b!6270717 () Bool)

(assert (=> b!6270717 (= e!3813959 (matchZipper!2201 lt!2351623 (t!378424 s!2326)))))

(assert (= (and d!1968212 (not res!2586651)) b!6270717))

(assert (=> d!1968212 m!7090754))

(assert (=> d!1968212 m!7090752))

(assert (=> b!6270717 m!7090684))

(assert (=> d!1967680 d!1968212))

(declare-fun bs!1566095 () Bool)

(declare-fun d!1968214 () Bool)

(assert (= bs!1566095 (and d!1968214 d!1967788)))

(declare-fun lambda!343513 () Int)

(assert (=> bs!1566095 (= lambda!343513 lambda!343420)))

(declare-fun bs!1566096 () Bool)

(assert (= bs!1566096 (and d!1968214 d!1967948)))

(assert (=> bs!1566096 (= lambda!343513 lambda!343454)))

(declare-fun bs!1566097 () Bool)

(assert (= bs!1566097 (and d!1968214 b!6270197)))

(assert (=> bs!1566097 (not (= lambda!343513 lambda!343448))))

(declare-fun bs!1566098 () Bool)

(assert (= bs!1566098 (and d!1968214 d!1968022)))

(assert (=> bs!1566098 (= lambda!343513 lambda!343471)))

(declare-fun bs!1566099 () Bool)

(assert (= bs!1566099 (and d!1968214 d!1968178)))

(assert (=> bs!1566099 (= lambda!343513 lambda!343499)))

(declare-fun bs!1566100 () Bool)

(assert (= bs!1566100 (and d!1968214 d!1967658)))

(assert (=> bs!1566100 (= lambda!343513 lambda!343400)))

(declare-fun bs!1566101 () Bool)

(assert (= bs!1566101 (and d!1968214 b!6270195)))

(assert (=> bs!1566101 (not (= lambda!343513 lambda!343446))))

(declare-fun bs!1566102 () Bool)

(assert (= bs!1566102 (and d!1968214 b!6270690)))

(assert (=> bs!1566102 (not (= lambda!343513 lambda!343502))))

(declare-fun bs!1566103 () Bool)

(assert (= bs!1566103 (and d!1968214 b!6270692)))

(assert (=> bs!1566103 (not (= lambda!343513 lambda!343503))))

(declare-fun bs!1566104 () Bool)

(assert (= bs!1566104 (and d!1968214 d!1967514)))

(assert (=> bs!1566104 (= lambda!343513 lambda!343358)))

(declare-fun bs!1566105 () Bool)

(assert (= bs!1566105 (and d!1968214 d!1967540)))

(assert (=> bs!1566105 (= lambda!343513 lambda!343381)))

(declare-fun bs!1566106 () Bool)

(assert (= bs!1566106 (and d!1968214 d!1967516)))

(assert (=> bs!1566106 (= lambda!343513 lambda!343362)))

(declare-fun bs!1566108 () Bool)

(assert (= bs!1566108 (and d!1968214 d!1967528)))

(assert (=> bs!1566108 (= lambda!343513 lambda!343380)))

(declare-fun bs!1566109 () Bool)

(assert (= bs!1566109 (and d!1968214 d!1968088)))

(assert (=> bs!1566109 (= lambda!343513 lambda!343483)))

(declare-fun bs!1566111 () Bool)

(assert (= bs!1566111 (and d!1968214 d!1967668)))

(assert (=> bs!1566111 (= lambda!343513 lambda!343401)))

(declare-fun bs!1566112 () Bool)

(assert (= bs!1566112 (and d!1968214 d!1967524)))

(assert (=> bs!1566112 (= lambda!343513 lambda!343365)))

(declare-fun bs!1566114 () Bool)

(assert (= bs!1566114 (and d!1968214 d!1967958)))

(assert (=> bs!1566114 (= lambda!343513 lambda!343455)))

(declare-fun bs!1566115 () Bool)

(assert (= bs!1566115 (and d!1968214 d!1967934)))

(assert (=> bs!1566115 (= lambda!343513 lambda!343452)))

(assert (=> d!1968214 (= (inv!83719 (h!71191 (t!378423 zl!343))) (forall!15316 (exprs!6073 (h!71191 (t!378423 zl!343))) lambda!343513))))

(declare-fun bs!1566118 () Bool)

(assert (= bs!1566118 d!1968214))

(declare-fun m!7092636 () Bool)

(assert (=> bs!1566118 m!7092636))

(assert (=> b!6269834 d!1968214))

(declare-fun d!1968216 () Bool)

(assert (=> d!1968216 (= (isEmpty!36775 (tail!11964 (unfocusZipperList!1610 zl!343))) ((_ is Nil!64742) (tail!11964 (unfocusZipperList!1610 zl!343))))))

(assert (=> b!6269228 d!1968216))

(declare-fun d!1968218 () Bool)

(assert (=> d!1968218 (= (tail!11964 (unfocusZipperList!1610 zl!343)) (t!378422 (unfocusZipperList!1610 zl!343)))))

(assert (=> b!6269228 d!1968218))

(assert (=> b!6269433 d!1967656))

(declare-fun bm!530322 () Bool)

(declare-fun call!530332 () (InoxSet Context!11146))

(declare-fun call!530328 () (InoxSet Context!11146))

(assert (=> bm!530322 (= call!530332 call!530328)))

(declare-fun call!530331 () List!64866)

(declare-fun c!1136358 () Bool)

(declare-fun bm!530323 () Bool)

(declare-fun c!1136357 () Bool)

(assert (=> bm!530323 (= call!530331 ($colon$colon!2053 (exprs!6073 (ite c!1136053 lt!2351625 (Context!11147 call!530126))) (ite (or c!1136358 c!1136357) (regTwo!32890 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))))))

(declare-fun c!1136356 () Bool)

(declare-fun d!1968220 () Bool)

(assert (=> d!1968220 (= c!1136356 (and ((_ is ElementMatch!16189) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (= (c!1135772 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (h!71192 s!2326))))))

(declare-fun e!3813965 () (InoxSet Context!11146))

(assert (=> d!1968220 (= (derivationStepZipperDown!1437 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))) (ite c!1136053 lt!2351625 (Context!11147 call!530126)) (h!71192 s!2326)) e!3813965)))

(declare-fun b!6270718 () Bool)

(declare-fun e!3813962 () (InoxSet Context!11146))

(declare-fun call!530327 () (InoxSet Context!11146))

(assert (=> b!6270718 (= e!3813962 ((_ map or) call!530327 call!530332))))

(declare-fun b!6270719 () Bool)

(declare-fun e!3813963 () (InoxSet Context!11146))

(assert (=> b!6270719 (= e!3813962 e!3813963)))

(assert (=> b!6270719 (= c!1136357 ((_ is Concat!25034) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))))))

(declare-fun b!6270720 () Bool)

(declare-fun e!3813964 () (InoxSet Context!11146))

(assert (=> b!6270720 (= e!3813964 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530324 () Bool)

(declare-fun call!530329 () List!64866)

(assert (=> bm!530324 (= call!530329 call!530331)))

(declare-fun b!6270721 () Bool)

(declare-fun call!530330 () (InoxSet Context!11146))

(assert (=> b!6270721 (= e!3813963 call!530330)))

(declare-fun c!1136360 () Bool)

(declare-fun bm!530325 () Bool)

(assert (=> bm!530325 (= call!530328 (derivationStepZipperDown!1437 (ite c!1136360 (regTwo!32891 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (ite c!1136358 (regTwo!32890 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (ite c!1136357 (regOne!32890 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (reg!16518 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))))) (ite (or c!1136360 c!1136358) (ite c!1136053 lt!2351625 (Context!11147 call!530126)) (Context!11147 call!530329)) (h!71192 s!2326)))))

(declare-fun bm!530326 () Bool)

(assert (=> bm!530326 (= call!530327 (derivationStepZipperDown!1437 (ite c!1136360 (regOne!32891 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))) (regOne!32890 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))) (ite c!1136360 (ite c!1136053 lt!2351625 (Context!11147 call!530126)) (Context!11147 call!530331)) (h!71192 s!2326)))))

(declare-fun b!6270722 () Bool)

(declare-fun e!3813961 () Bool)

(assert (=> b!6270722 (= e!3813961 (nullable!6182 (regOne!32890 (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))))))

(declare-fun b!6270723 () Bool)

(declare-fun c!1136359 () Bool)

(assert (=> b!6270723 (= c!1136359 ((_ is Star!16189) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))))))

(assert (=> b!6270723 (= e!3813963 e!3813964)))

(declare-fun b!6270724 () Bool)

(assert (=> b!6270724 (= c!1136358 e!3813961)))

(declare-fun res!2586652 () Bool)

(assert (=> b!6270724 (=> (not res!2586652) (not e!3813961))))

(assert (=> b!6270724 (= res!2586652 ((_ is Concat!25034) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))))))

(declare-fun e!3813960 () (InoxSet Context!11146))

(assert (=> b!6270724 (= e!3813960 e!3813962)))

(declare-fun b!6270725 () Bool)

(assert (=> b!6270725 (= e!3813965 (store ((as const (Array Context!11146 Bool)) false) (ite c!1136053 lt!2351625 (Context!11147 call!530126)) true))))

(declare-fun b!6270726 () Bool)

(assert (=> b!6270726 (= e!3813960 ((_ map or) call!530327 call!530328))))

(declare-fun b!6270727 () Bool)

(assert (=> b!6270727 (= e!3813964 call!530330)))

(declare-fun bm!530327 () Bool)

(assert (=> bm!530327 (= call!530330 call!530332)))

(declare-fun b!6270728 () Bool)

(assert (=> b!6270728 (= e!3813965 e!3813960)))

(assert (=> b!6270728 (= c!1136360 ((_ is Union!16189) (ite c!1136053 (regOne!32891 (regTwo!32890 (regOne!32890 r!7292))) (regOne!32890 (regTwo!32890 (regOne!32890 r!7292))))))))

(assert (= (and d!1968220 c!1136356) b!6270725))

(assert (= (and d!1968220 (not c!1136356)) b!6270728))

(assert (= (and b!6270728 c!1136360) b!6270726))

(assert (= (and b!6270728 (not c!1136360)) b!6270724))

(assert (= (and b!6270724 res!2586652) b!6270722))

(assert (= (and b!6270724 c!1136358) b!6270718))

(assert (= (and b!6270724 (not c!1136358)) b!6270719))

(assert (= (and b!6270719 c!1136357) b!6270721))

(assert (= (and b!6270719 (not c!1136357)) b!6270723))

(assert (= (and b!6270723 c!1136359) b!6270727))

(assert (= (and b!6270723 (not c!1136359)) b!6270720))

(assert (= (or b!6270721 b!6270727) bm!530324))

(assert (= (or b!6270721 b!6270727) bm!530327))

(assert (= (or b!6270718 bm!530324) bm!530323))

(assert (= (or b!6270718 bm!530327) bm!530322))

(assert (= (or b!6270726 bm!530322) bm!530325))

(assert (= (or b!6270726 b!6270718) bm!530326))

(declare-fun m!7092638 () Bool)

(assert (=> bm!530326 m!7092638))

(declare-fun m!7092640 () Bool)

(assert (=> b!6270725 m!7092640))

(declare-fun m!7092642 () Bool)

(assert (=> b!6270722 m!7092642))

(declare-fun m!7092644 () Bool)

(assert (=> bm!530323 m!7092644))

(declare-fun m!7092646 () Bool)

(assert (=> bm!530325 m!7092646))

(assert (=> bm!530121 d!1968220))

(declare-fun d!1968222 () Bool)

(declare-fun e!3813985 () Bool)

(assert (=> d!1968222 e!3813985))

(declare-fun res!2586668 () Bool)

(assert (=> d!1968222 (=> (not res!2586668) (not e!3813985))))

(declare-fun lt!2351910 () List!64868)

(declare-fun content!12162 (List!64868) (InoxSet C!32648))

(assert (=> d!1968222 (= res!2586668 (= (content!12162 lt!2351910) ((_ map or) (content!12162 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))) (content!12162 (t!378424 s!2326)))))))

(declare-fun e!3813984 () List!64868)

(assert (=> d!1968222 (= lt!2351910 e!3813984)))

(declare-fun c!1136370 () Bool)

(assert (=> d!1968222 (= c!1136370 ((_ is Nil!64744) (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))))))

(assert (=> d!1968222 (= (++!14263 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326)) lt!2351910)))

(declare-fun b!6270765 () Bool)

(assert (=> b!6270765 (= e!3813985 (or (not (= (t!378424 s!2326) Nil!64744)) (= lt!2351910 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)))))))

(declare-fun b!6270763 () Bool)

(assert (=> b!6270763 (= e!3813984 (Cons!64744 (h!71192 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))) (++!14263 (t!378424 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))) (t!378424 s!2326))))))

(declare-fun b!6270764 () Bool)

(declare-fun res!2586669 () Bool)

(assert (=> b!6270764 (=> (not res!2586669) (not e!3813985))))

(assert (=> b!6270764 (= res!2586669 (= (size!40310 lt!2351910) (+ (size!40310 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))) (size!40310 (t!378424 s!2326)))))))

(declare-fun b!6270762 () Bool)

(assert (=> b!6270762 (= e!3813984 (t!378424 s!2326))))

(assert (= (and d!1968222 c!1136370) b!6270762))

(assert (= (and d!1968222 (not c!1136370)) b!6270763))

(assert (= (and d!1968222 res!2586668) b!6270764))

(assert (= (and b!6270764 res!2586669) b!6270765))

(declare-fun m!7092666 () Bool)

(assert (=> d!1968222 m!7092666))

(assert (=> d!1968222 m!7091542))

(declare-fun m!7092668 () Bool)

(assert (=> d!1968222 m!7092668))

(declare-fun m!7092670 () Bool)

(assert (=> d!1968222 m!7092670))

(declare-fun m!7092672 () Bool)

(assert (=> b!6270763 m!7092672))

(declare-fun m!7092674 () Bool)

(assert (=> b!6270764 m!7092674))

(assert (=> b!6270764 m!7091542))

(declare-fun m!7092676 () Bool)

(assert (=> b!6270764 m!7092676))

(assert (=> b!6270764 m!7090998))

(assert (=> b!6269773 d!1968222))

(declare-fun d!1968236 () Bool)

(declare-fun e!3813987 () Bool)

(assert (=> d!1968236 e!3813987))

(declare-fun res!2586670 () Bool)

(assert (=> d!1968236 (=> (not res!2586670) (not e!3813987))))

(declare-fun lt!2351911 () List!64868)

(assert (=> d!1968236 (= res!2586670 (= (content!12162 lt!2351911) ((_ map or) (content!12162 Nil!64744) (content!12162 (Cons!64744 (h!71192 s!2326) Nil!64744)))))))

(declare-fun e!3813986 () List!64868)

(assert (=> d!1968236 (= lt!2351911 e!3813986)))

(declare-fun c!1136371 () Bool)

(assert (=> d!1968236 (= c!1136371 ((_ is Nil!64744) Nil!64744))))

(assert (=> d!1968236 (= (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) lt!2351911)))

(declare-fun b!6270769 () Bool)

(assert (=> b!6270769 (= e!3813987 (or (not (= (Cons!64744 (h!71192 s!2326) Nil!64744) Nil!64744)) (= lt!2351911 Nil!64744)))))

(declare-fun b!6270767 () Bool)

(assert (=> b!6270767 (= e!3813986 (Cons!64744 (h!71192 Nil!64744) (++!14263 (t!378424 Nil!64744) (Cons!64744 (h!71192 s!2326) Nil!64744))))))

(declare-fun b!6270768 () Bool)

(declare-fun res!2586671 () Bool)

(assert (=> b!6270768 (=> (not res!2586671) (not e!3813987))))

(assert (=> b!6270768 (= res!2586671 (= (size!40310 lt!2351911) (+ (size!40310 Nil!64744) (size!40310 (Cons!64744 (h!71192 s!2326) Nil!64744)))))))

(declare-fun b!6270766 () Bool)

(assert (=> b!6270766 (= e!3813986 (Cons!64744 (h!71192 s!2326) Nil!64744))))

(assert (= (and d!1968236 c!1136371) b!6270766))

(assert (= (and d!1968236 (not c!1136371)) b!6270767))

(assert (= (and d!1968236 res!2586670) b!6270768))

(assert (= (and b!6270768 res!2586671) b!6270769))

(declare-fun m!7092678 () Bool)

(assert (=> d!1968236 m!7092678))

(declare-fun m!7092680 () Bool)

(assert (=> d!1968236 m!7092680))

(declare-fun m!7092682 () Bool)

(assert (=> d!1968236 m!7092682))

(declare-fun m!7092684 () Bool)

(assert (=> b!6270767 m!7092684))

(declare-fun m!7092686 () Bool)

(assert (=> b!6270768 m!7092686))

(declare-fun m!7092688 () Bool)

(assert (=> b!6270768 m!7092688))

(declare-fun m!7092690 () Bool)

(assert (=> b!6270768 m!7092690))

(assert (=> b!6269773 d!1968236))

(declare-fun d!1968238 () Bool)

(assert (=> d!1968238 (= (++!14263 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326)) s!2326)))

(declare-fun lt!2351914 () Unit!158087)

(declare-fun choose!46525 (List!64868 C!32648 List!64868 List!64868) Unit!158087)

(assert (=> d!1968238 (= lt!2351914 (choose!46525 Nil!64744 (h!71192 s!2326) (t!378424 s!2326) s!2326))))

(assert (=> d!1968238 (= (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) (t!378424 s!2326))) s!2326)))

(assert (=> d!1968238 (= (lemmaMoveElementToOtherListKeepsConcatEq!2358 Nil!64744 (h!71192 s!2326) (t!378424 s!2326) s!2326) lt!2351914)))

(declare-fun bs!1566159 () Bool)

(assert (= bs!1566159 d!1968238))

(assert (=> bs!1566159 m!7091542))

(assert (=> bs!1566159 m!7091542))

(assert (=> bs!1566159 m!7091544))

(declare-fun m!7092698 () Bool)

(assert (=> bs!1566159 m!7092698))

(declare-fun m!7092700 () Bool)

(assert (=> bs!1566159 m!7092700))

(assert (=> b!6269773 d!1968238))

(declare-fun b!6270780 () Bool)

(declare-fun e!3813995 () Bool)

(declare-fun lt!2351916 () Option!16080)

(assert (=> b!6270780 (= e!3813995 (= (++!14263 (_1!36471 (get!22373 lt!2351916)) (_2!36471 (get!22373 lt!2351916))) s!2326))))

(declare-fun b!6270781 () Bool)

(declare-fun e!3813994 () Bool)

(assert (=> b!6270781 (= e!3813994 (not (isDefined!12783 lt!2351916)))))

(declare-fun b!6270782 () Bool)

(declare-fun e!3813996 () Option!16080)

(assert (=> b!6270782 (= e!3813996 (Some!16079 (tuple2!66337 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326))))))

(declare-fun b!6270783 () Bool)

(declare-fun e!3813998 () Bool)

(assert (=> b!6270783 (= e!3813998 (matchR!8372 (regTwo!32890 r!7292) (t!378424 s!2326)))))

(declare-fun b!6270784 () Bool)

(declare-fun e!3813997 () Option!16080)

(assert (=> b!6270784 (= e!3813997 None!16079)))

(declare-fun b!6270785 () Bool)

(declare-fun res!2586677 () Bool)

(assert (=> b!6270785 (=> (not res!2586677) (not e!3813995))))

(assert (=> b!6270785 (= res!2586677 (matchR!8372 (regOne!32890 r!7292) (_1!36471 (get!22373 lt!2351916))))))

(declare-fun d!1968242 () Bool)

(assert (=> d!1968242 e!3813994))

(declare-fun res!2586675 () Bool)

(assert (=> d!1968242 (=> res!2586675 e!3813994)))

(assert (=> d!1968242 (= res!2586675 e!3813995)))

(declare-fun res!2586674 () Bool)

(assert (=> d!1968242 (=> (not res!2586674) (not e!3813995))))

(assert (=> d!1968242 (= res!2586674 (isDefined!12783 lt!2351916))))

(assert (=> d!1968242 (= lt!2351916 e!3813996)))

(declare-fun c!1136376 () Bool)

(assert (=> d!1968242 (= c!1136376 e!3813998)))

(declare-fun res!2586676 () Bool)

(assert (=> d!1968242 (=> (not res!2586676) (not e!3813998))))

(assert (=> d!1968242 (= res!2586676 (matchR!8372 (regOne!32890 r!7292) (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744))))))

(assert (=> d!1968242 (validRegex!7925 (regOne!32890 r!7292))))

(assert (=> d!1968242 (= (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (t!378424 s!2326) s!2326) lt!2351916)))

(declare-fun b!6270786 () Bool)

(assert (=> b!6270786 (= e!3813996 e!3813997)))

(declare-fun c!1136377 () Bool)

(assert (=> b!6270786 (= c!1136377 ((_ is Nil!64744) (t!378424 s!2326)))))

(declare-fun b!6270787 () Bool)

(declare-fun lt!2351918 () Unit!158087)

(declare-fun lt!2351917 () Unit!158087)

(assert (=> b!6270787 (= lt!2351918 lt!2351917)))

(assert (=> b!6270787 (= (++!14263 (++!14263 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (Cons!64744 (h!71192 (t!378424 s!2326)) Nil!64744)) (t!378424 (t!378424 s!2326))) s!2326)))

(assert (=> b!6270787 (= lt!2351917 (lemmaMoveElementToOtherListKeepsConcatEq!2358 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (h!71192 (t!378424 s!2326)) (t!378424 (t!378424 s!2326)) s!2326))))

(assert (=> b!6270787 (= e!3813997 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) (++!14263 (++!14263 Nil!64744 (Cons!64744 (h!71192 s!2326) Nil!64744)) (Cons!64744 (h!71192 (t!378424 s!2326)) Nil!64744)) (t!378424 (t!378424 s!2326)) s!2326))))

(declare-fun b!6270788 () Bool)

(declare-fun res!2586678 () Bool)

(assert (=> b!6270788 (=> (not res!2586678) (not e!3813995))))

(assert (=> b!6270788 (= res!2586678 (matchR!8372 (regTwo!32890 r!7292) (_2!36471 (get!22373 lt!2351916))))))

(assert (= (and d!1968242 res!2586676) b!6270783))

(assert (= (and d!1968242 c!1136376) b!6270782))

(assert (= (and d!1968242 (not c!1136376)) b!6270786))

(assert (= (and b!6270786 c!1136377) b!6270784))

(assert (= (and b!6270786 (not c!1136377)) b!6270787))

(assert (= (and d!1968242 res!2586674) b!6270785))

(assert (= (and b!6270785 res!2586677) b!6270788))

(assert (= (and b!6270788 res!2586678) b!6270780))

(assert (= (and d!1968242 (not res!2586675)) b!6270781))

(assert (=> b!6270787 m!7091542))

(declare-fun m!7092702 () Bool)

(assert (=> b!6270787 m!7092702))

(assert (=> b!6270787 m!7092702))

(declare-fun m!7092704 () Bool)

(assert (=> b!6270787 m!7092704))

(assert (=> b!6270787 m!7091542))

(declare-fun m!7092706 () Bool)

(assert (=> b!6270787 m!7092706))

(assert (=> b!6270787 m!7092702))

(declare-fun m!7092708 () Bool)

(assert (=> b!6270787 m!7092708))

(declare-fun m!7092710 () Bool)

(assert (=> b!6270780 m!7092710))

(declare-fun m!7092712 () Bool)

(assert (=> b!6270780 m!7092712))

(assert (=> b!6270788 m!7092710))

(declare-fun m!7092716 () Bool)

(assert (=> b!6270788 m!7092716))

(declare-fun m!7092720 () Bool)

(assert (=> d!1968242 m!7092720))

(assert (=> d!1968242 m!7091542))

(declare-fun m!7092726 () Bool)

(assert (=> d!1968242 m!7092726))

(assert (=> d!1968242 m!7091560))

(assert (=> b!6270785 m!7092710))

(declare-fun m!7092736 () Bool)

(assert (=> b!6270785 m!7092736))

(declare-fun m!7092740 () Bool)

(assert (=> b!6270783 m!7092740))

(assert (=> b!6270781 m!7092720))

(assert (=> b!6269773 d!1968242))

(declare-fun bs!1566178 () Bool)

(declare-fun b!6270791 () Bool)

(assert (= bs!1566178 (and b!6270791 d!1968034)))

(declare-fun lambda!343520 () Int)

(assert (=> bs!1566178 (not (= lambda!343520 lambda!343480))))

(declare-fun bs!1566179 () Bool)

(assert (= bs!1566179 (and b!6270791 d!1968140)))

(assert (=> bs!1566179 (not (= lambda!343520 lambda!343498))))

(declare-fun bs!1566180 () Bool)

(assert (= bs!1566180 (and b!6270791 d!1967698)))

(assert (=> bs!1566180 (not (= lambda!343520 lambda!343409))))

(declare-fun bs!1566181 () Bool)

(assert (= bs!1566181 (and b!6270791 b!6269521)))

(assert (=> bs!1566181 (not (= lambda!343520 lambda!343394))))

(declare-fun bs!1566182 () Bool)

(assert (= bs!1566182 (and b!6270791 b!6269515)))

(assert (=> bs!1566182 (= (and (= (reg!16518 (regTwo!32891 r!7292)) (reg!16518 r!7292)) (= (regTwo!32891 r!7292) r!7292)) (= lambda!343520 lambda!343393))))

(declare-fun bs!1566183 () Bool)

(assert (= bs!1566183 (and b!6270791 b!6270346)))

(assert (=> bs!1566183 (not (= lambda!343520 lambda!343469))))

(declare-fun bs!1566184 () Bool)

(assert (= bs!1566184 (and b!6270791 d!1967696)))

(assert (=> bs!1566184 (not (= lambda!343520 lambda!343404))))

(assert (=> bs!1566179 (not (= lambda!343520 lambda!343496))))

(declare-fun bs!1566185 () Bool)

(assert (= bs!1566185 (and b!6270791 b!6268871)))

(assert (=> bs!1566185 (not (= lambda!343520 lambda!343318))))

(assert (=> bs!1566185 (not (= lambda!343520 lambda!343317))))

(declare-fun bs!1566186 () Bool)

(assert (= bs!1566186 (and b!6270791 b!6270340)))

(assert (=> bs!1566186 (= (and (= (reg!16518 (regTwo!32891 r!7292)) (reg!16518 (regOne!32891 r!7292))) (= (regTwo!32891 r!7292) (regOne!32891 r!7292))) (= lambda!343520 lambda!343467))))

(assert (=> bs!1566180 (not (= lambda!343520 lambda!343410))))

(assert (=> b!6270791 true))

(assert (=> b!6270791 true))

(declare-fun bs!1566194 () Bool)

(declare-fun b!6270797 () Bool)

(assert (= bs!1566194 (and b!6270797 d!1968034)))

(declare-fun lambda!343522 () Int)

(assert (=> bs!1566194 (not (= lambda!343522 lambda!343480))))

(declare-fun bs!1566197 () Bool)

(assert (= bs!1566197 (and b!6270797 d!1968140)))

(assert (=> bs!1566197 (= (and (= (regOne!32890 (regTwo!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regTwo!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343522 lambda!343498))))

(declare-fun bs!1566200 () Bool)

(assert (= bs!1566200 (and b!6270797 b!6270791)))

(assert (=> bs!1566200 (not (= lambda!343522 lambda!343520))))

(declare-fun bs!1566202 () Bool)

(assert (= bs!1566202 (and b!6270797 d!1967698)))

(assert (=> bs!1566202 (not (= lambda!343522 lambda!343409))))

(declare-fun bs!1566205 () Bool)

(assert (= bs!1566205 (and b!6270797 b!6269521)))

(assert (=> bs!1566205 (= (and (= (regOne!32890 (regTwo!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regTwo!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343522 lambda!343394))))

(declare-fun bs!1566208 () Bool)

(assert (= bs!1566208 (and b!6270797 b!6269515)))

(assert (=> bs!1566208 (not (= lambda!343522 lambda!343393))))

(declare-fun bs!1566210 () Bool)

(assert (= bs!1566210 (and b!6270797 b!6270346)))

(assert (=> bs!1566210 (= (and (= (regOne!32890 (regTwo!32891 r!7292)) (regOne!32890 (regOne!32891 r!7292))) (= (regTwo!32890 (regTwo!32891 r!7292)) (regTwo!32890 (regOne!32891 r!7292)))) (= lambda!343522 lambda!343469))))

(declare-fun bs!1566212 () Bool)

(assert (= bs!1566212 (and b!6270797 d!1967696)))

(assert (=> bs!1566212 (not (= lambda!343522 lambda!343404))))

(assert (=> bs!1566197 (not (= lambda!343522 lambda!343496))))

(declare-fun bs!1566213 () Bool)

(assert (= bs!1566213 (and b!6270797 b!6268871)))

(assert (=> bs!1566213 (= (and (= (regOne!32890 (regTwo!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regTwo!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343522 lambda!343318))))

(assert (=> bs!1566213 (not (= lambda!343522 lambda!343317))))

(declare-fun bs!1566214 () Bool)

(assert (= bs!1566214 (and b!6270797 b!6270340)))

(assert (=> bs!1566214 (not (= lambda!343522 lambda!343467))))

(assert (=> bs!1566202 (= (and (= (regOne!32890 (regTwo!32891 r!7292)) (regOne!32890 r!7292)) (= (regTwo!32890 (regTwo!32891 r!7292)) (regTwo!32890 r!7292))) (= lambda!343522 lambda!343410))))

(assert (=> b!6270797 true))

(assert (=> b!6270797 true))

(declare-fun b!6270789 () Bool)

(declare-fun e!3814003 () Bool)

(declare-fun e!3814002 () Bool)

(assert (=> b!6270789 (= e!3814003 e!3814002)))

(declare-fun res!2586681 () Bool)

(assert (=> b!6270789 (= res!2586681 (matchRSpec!3290 (regOne!32891 (regTwo!32891 r!7292)) s!2326))))

(assert (=> b!6270789 (=> res!2586681 e!3814002)))

(declare-fun b!6270790 () Bool)

(declare-fun e!3814005 () Bool)

(declare-fun call!530337 () Bool)

(assert (=> b!6270790 (= e!3814005 call!530337)))

(declare-fun bm!530331 () Bool)

(assert (=> bm!530331 (= call!530337 (isEmpty!36777 s!2326))))

(declare-fun d!1968246 () Bool)

(declare-fun c!1136381 () Bool)

(assert (=> d!1968246 (= c!1136381 ((_ is EmptyExpr!16189) (regTwo!32891 r!7292)))))

(assert (=> d!1968246 (= (matchRSpec!3290 (regTwo!32891 r!7292) s!2326) e!3814005)))

(declare-fun call!530336 () Bool)

(declare-fun c!1136378 () Bool)

(declare-fun bm!530332 () Bool)

(assert (=> bm!530332 (= call!530336 (Exists!3259 (ite c!1136378 lambda!343520 lambda!343522)))))

(declare-fun e!3813999 () Bool)

(assert (=> b!6270791 (= e!3813999 call!530336)))

(declare-fun b!6270792 () Bool)

(assert (=> b!6270792 (= e!3814002 (matchRSpec!3290 (regTwo!32891 (regTwo!32891 r!7292)) s!2326))))

(declare-fun b!6270793 () Bool)

(declare-fun e!3814004 () Bool)

(assert (=> b!6270793 (= e!3814005 e!3814004)))

(declare-fun res!2586679 () Bool)

(assert (=> b!6270793 (= res!2586679 (not ((_ is EmptyLang!16189) (regTwo!32891 r!7292))))))

(assert (=> b!6270793 (=> (not res!2586679) (not e!3814004))))

(declare-fun b!6270794 () Bool)

(declare-fun e!3814001 () Bool)

(assert (=> b!6270794 (= e!3814001 (= s!2326 (Cons!64744 (c!1135772 (regTwo!32891 r!7292)) Nil!64744)))))

(declare-fun b!6270795 () Bool)

(declare-fun res!2586680 () Bool)

(assert (=> b!6270795 (=> res!2586680 e!3813999)))

(assert (=> b!6270795 (= res!2586680 call!530337)))

(declare-fun e!3814000 () Bool)

(assert (=> b!6270795 (= e!3814000 e!3813999)))

(declare-fun b!6270796 () Bool)

(assert (=> b!6270796 (= e!3814003 e!3814000)))

(assert (=> b!6270796 (= c!1136378 ((_ is Star!16189) (regTwo!32891 r!7292)))))

(assert (=> b!6270797 (= e!3814000 call!530336)))

(declare-fun b!6270798 () Bool)

(declare-fun c!1136379 () Bool)

(assert (=> b!6270798 (= c!1136379 ((_ is ElementMatch!16189) (regTwo!32891 r!7292)))))

(assert (=> b!6270798 (= e!3814004 e!3814001)))

(declare-fun b!6270799 () Bool)

(declare-fun c!1136380 () Bool)

(assert (=> b!6270799 (= c!1136380 ((_ is Union!16189) (regTwo!32891 r!7292)))))

(assert (=> b!6270799 (= e!3814001 e!3814003)))

(assert (= (and d!1968246 c!1136381) b!6270790))

(assert (= (and d!1968246 (not c!1136381)) b!6270793))

(assert (= (and b!6270793 res!2586679) b!6270798))

(assert (= (and b!6270798 c!1136379) b!6270794))

(assert (= (and b!6270798 (not c!1136379)) b!6270799))

(assert (= (and b!6270799 c!1136380) b!6270789))

(assert (= (and b!6270799 (not c!1136380)) b!6270796))

(assert (= (and b!6270789 (not res!2586681)) b!6270792))

(assert (= (and b!6270796 c!1136378) b!6270795))

(assert (= (and b!6270796 (not c!1136378)) b!6270797))

(assert (= (and b!6270795 (not res!2586680)) b!6270791))

(assert (= (or b!6270791 b!6270797) bm!530332))

(assert (= (or b!6270790 b!6270795) bm!530331))

(declare-fun m!7092756 () Bool)

(assert (=> b!6270789 m!7092756))

(assert (=> bm!530331 m!7091304))

(declare-fun m!7092758 () Bool)

(assert (=> bm!530332 m!7092758))

(declare-fun m!7092760 () Bool)

(assert (=> b!6270792 m!7092760))

(assert (=> b!6269516 d!1968246))

(assert (=> b!6269736 d!1967522))

(declare-fun d!1968256 () Bool)

(assert (=> d!1968256 (= (nullable!6182 (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))) (nullableFct!2133 (regOne!32890 (regOne!32890 (regOne!32890 r!7292)))))))

(declare-fun bs!1566215 () Bool)

(assert (= bs!1566215 d!1968256))

(declare-fun m!7092762 () Bool)

(assert (=> bs!1566215 m!7092762))

(assert (=> b!6269729 d!1968256))

(declare-fun b!6270819 () Bool)

(declare-fun e!3814016 () Bool)

(assert (=> b!6270819 (= e!3814016 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625)))))))))

(declare-fun b!6270820 () Bool)

(declare-fun e!3814017 () (InoxSet Context!11146))

(declare-fun call!530344 () (InoxSet Context!11146))

(assert (=> b!6270820 (= e!3814017 call!530344)))

(declare-fun d!1968258 () Bool)

(declare-fun c!1136391 () Bool)

(assert (=> d!1968258 (= c!1136391 e!3814016)))

(declare-fun res!2586683 () Bool)

(assert (=> d!1968258 (=> (not res!2586683) (not e!3814016))))

(assert (=> d!1968258 (= res!2586683 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625))))))))

(declare-fun e!3814018 () (InoxSet Context!11146))

(assert (=> d!1968258 (= (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (h!71192 s!2326)) e!3814018)))

(declare-fun b!6270821 () Bool)

(assert (=> b!6270821 (= e!3814018 ((_ map or) call!530344 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625)))))) (h!71192 s!2326))))))

(declare-fun bm!530339 () Bool)

(assert (=> bm!530339 (= call!530344 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625)))))) (h!71192 s!2326)))))

(declare-fun b!6270822 () Bool)

(assert (=> b!6270822 (= e!3814017 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270823 () Bool)

(assert (=> b!6270823 (= e!3814018 e!3814017)))

(declare-fun c!1136392 () Bool)

(assert (=> b!6270823 (= c!1136392 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625))))))))

(assert (= (and d!1968258 res!2586683) b!6270819))

(assert (= (and d!1968258 c!1136391) b!6270821))

(assert (= (and d!1968258 (not c!1136391)) b!6270823))

(assert (= (and b!6270823 c!1136392) b!6270820))

(assert (= (and b!6270823 (not c!1136392)) b!6270822))

(assert (= (or b!6270821 b!6270820) bm!530339))

(declare-fun m!7092768 () Bool)

(assert (=> b!6270819 m!7092768))

(declare-fun m!7092770 () Bool)

(assert (=> b!6270821 m!7092770))

(declare-fun m!7092772 () Bool)

(assert (=> bm!530339 m!7092772))

(assert (=> b!6269012 d!1968258))

(assert (=> d!1967554 d!1967856))

(declare-fun d!1968262 () Bool)

(declare-fun res!2586685 () Bool)

(declare-fun e!3814025 () Bool)

(assert (=> d!1968262 (=> res!2586685 e!3814025)))

(assert (=> d!1968262 (= res!2586685 ((_ is Nil!64742) lt!2351702))))

(assert (=> d!1968262 (= (forall!15316 lt!2351702 lambda!343362) e!3814025)))

(declare-fun b!6270835 () Bool)

(declare-fun e!3814026 () Bool)

(assert (=> b!6270835 (= e!3814025 e!3814026)))

(declare-fun res!2586686 () Bool)

(assert (=> b!6270835 (=> (not res!2586686) (not e!3814026))))

(assert (=> b!6270835 (= res!2586686 (dynLambda!25601 lambda!343362 (h!71190 lt!2351702)))))

(declare-fun b!6270836 () Bool)

(assert (=> b!6270836 (= e!3814026 (forall!15316 (t!378422 lt!2351702) lambda!343362))))

(assert (= (and d!1968262 (not res!2586685)) b!6270835))

(assert (= (and b!6270835 res!2586686) b!6270836))

(declare-fun b_lambda!238769 () Bool)

(assert (=> (not b_lambda!238769) (not b!6270835)))

(declare-fun m!7092774 () Bool)

(assert (=> b!6270835 m!7092774))

(declare-fun m!7092776 () Bool)

(assert (=> b!6270836 m!7092776))

(assert (=> d!1967516 d!1968262))

(assert (=> bm!530109 d!1967846))

(assert (=> bs!1565365 d!1967708))

(assert (=> d!1967682 d!1967856))

(declare-fun bs!1566216 () Bool)

(declare-fun d!1968264 () Bool)

(assert (= bs!1566216 (and d!1968264 b!6270173)))

(declare-fun lambda!343523 () Int)

(assert (=> bs!1566216 (not (= lambda!343523 lambda!343433))))

(declare-fun bs!1566217 () Bool)

(assert (= bs!1566217 (and d!1968264 b!6270700)))

(assert (=> bs!1566217 (not (= lambda!343523 lambda!343506))))

(declare-fun bs!1566218 () Bool)

(assert (= bs!1566218 (and d!1968264 b!6270175)))

(assert (=> bs!1566218 (not (= lambda!343523 lambda!343434))))

(declare-fun bs!1566219 () Bool)

(assert (= bs!1566219 (and d!1968264 d!1968070)))

(assert (=> bs!1566219 (= lambda!343523 lambda!343481)))

(declare-fun bs!1566220 () Bool)

(assert (= bs!1566220 (and d!1968264 d!1967900)))

(assert (=> bs!1566220 (not (= lambda!343523 lambda!343429))))

(declare-fun bs!1566221 () Bool)

(assert (= bs!1566221 (and d!1968264 d!1968128)))

(assert (=> bs!1566221 (= lambda!343523 lambda!343488)))

(declare-fun bs!1566222 () Bool)

(assert (= bs!1566222 (and d!1968264 d!1967868)))

(assert (=> bs!1566222 (= lambda!343523 lambda!343423)))

(declare-fun bs!1566223 () Bool)

(assert (= bs!1566223 (and d!1968264 d!1968202)))

(assert (=> bs!1566223 (not (= lambda!343523 lambda!343508))))

(declare-fun bs!1566224 () Bool)

(assert (= bs!1566224 (and d!1968264 d!1967774)))

(assert (=> bs!1566224 (= lambda!343523 lambda!343418)))

(declare-fun bs!1566225 () Bool)

(assert (= bs!1566225 (and d!1968264 d!1967884)))

(assert (=> bs!1566225 (= lambda!343523 lambda!343425)))

(declare-fun bs!1566226 () Bool)

(assert (= bs!1566226 (and d!1968264 b!6269127)))

(assert (=> bs!1566226 (not (= lambda!343523 lambda!343345))))

(declare-fun bs!1566227 () Bool)

(assert (= bs!1566227 (and d!1968264 d!1967888)))

(assert (=> bs!1566227 (= lambda!343523 lambda!343426)))

(declare-fun bs!1566228 () Bool)

(assert (= bs!1566228 (and d!1968264 b!6269129)))

(assert (=> bs!1566228 (not (= lambda!343523 lambda!343346))))

(declare-fun bs!1566229 () Bool)

(assert (= bs!1566229 (and d!1968264 b!6269124)))

(assert (=> bs!1566229 (not (= lambda!343523 lambda!343341))))

(declare-fun bs!1566230 () Bool)

(assert (= bs!1566230 (and d!1968264 b!6269122)))

(assert (=> bs!1566230 (not (= lambda!343523 lambda!343340))))

(declare-fun bs!1566231 () Bool)

(assert (= bs!1566231 (and d!1968264 d!1968094)))

(assert (=> bs!1566231 (= lambda!343523 lambda!343484)))

(declare-fun bs!1566232 () Bool)

(assert (= bs!1566232 (and d!1968264 d!1967876)))

(assert (=> bs!1566232 (= lambda!343523 lambda!343424)))

(declare-fun bs!1566233 () Bool)

(assert (= bs!1566233 (and d!1968264 b!6270702)))

(assert (=> bs!1566233 (not (= lambda!343523 lambda!343507))))

(declare-fun bs!1566234 () Bool)

(assert (= bs!1566234 (and d!1968264 d!1967778)))

(assert (=> bs!1566234 (= lambda!343523 lambda!343419)))

(assert (=> d!1968264 (= (nullableZipper!1959 lt!2351621) (exists!2522 lt!2351621 lambda!343523))))

(declare-fun bs!1566235 () Bool)

(assert (= bs!1566235 d!1968264))

(declare-fun m!7092788 () Bool)

(assert (=> bs!1566235 m!7092788))

(assert (=> b!6269431 d!1968264))

(declare-fun d!1968268 () Bool)

(declare-fun c!1136403 () Bool)

(assert (=> d!1968268 (= c!1136403 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814033 () Bool)

(assert (=> d!1968268 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351607 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814033)))

(declare-fun b!6270848 () Bool)

(assert (=> b!6270848 (= e!3814033 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351607 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270849 () Bool)

(assert (=> b!6270849 (= e!3814033 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351607 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968268 c!1136403) b!6270848))

(assert (= (and d!1968268 (not c!1136403)) b!6270849))

(assert (=> d!1968268 m!7091032))

(assert (=> d!1968268 m!7092110))

(assert (=> b!6270848 m!7091176))

(declare-fun m!7092792 () Bool)

(assert (=> b!6270848 m!7092792))

(assert (=> b!6270849 m!7091032))

(assert (=> b!6270849 m!7092114))

(assert (=> b!6270849 m!7091176))

(assert (=> b!6270849 m!7092114))

(declare-fun m!7092794 () Bool)

(assert (=> b!6270849 m!7092794))

(assert (=> b!6270849 m!7091032))

(assert (=> b!6270849 m!7092118))

(assert (=> b!6270849 m!7092794))

(assert (=> b!6270849 m!7092118))

(declare-fun m!7092798 () Bool)

(assert (=> b!6270849 m!7092798))

(assert (=> b!6269389 d!1968268))

(declare-fun bs!1566236 () Bool)

(declare-fun d!1968270 () Bool)

(assert (= bs!1566236 (and d!1968270 d!1968078)))

(declare-fun lambda!343524 () Int)

(assert (=> bs!1566236 (= lambda!343524 lambda!343482)))

(declare-fun bs!1566237 () Bool)

(assert (= bs!1566237 (and d!1968270 d!1968016)))

(assert (=> bs!1566237 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343524 lambda!343470))))

(declare-fun bs!1566238 () Bool)

(assert (= bs!1566238 (and d!1968270 b!6268873)))

(assert (=> bs!1566238 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343524 lambda!343319))))

(declare-fun bs!1566239 () Bool)

(assert (= bs!1566239 (and d!1968270 d!1968120)))

(assert (=> bs!1566239 (= lambda!343524 lambda!343487)))

(declare-fun bs!1566240 () Bool)

(assert (= bs!1566240 (and d!1968270 d!1967654)))

(assert (=> bs!1566240 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343524 lambda!343399))))

(declare-fun bs!1566241 () Bool)

(assert (= bs!1566241 (and d!1968270 d!1968110)))

(assert (=> bs!1566241 (= lambda!343524 lambda!343486)))

(declare-fun bs!1566242 () Bool)

(assert (= bs!1566242 (and d!1968270 d!1967706)))

(assert (=> bs!1566242 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343524 lambda!343411))))

(declare-fun bs!1566243 () Bool)

(assert (= bs!1566243 (and d!1968270 d!1967962)))

(assert (=> bs!1566243 (= lambda!343524 lambda!343456)))

(assert (=> d!1968270 true))

(assert (=> d!1968270 (= (derivationStepZipper!2155 lt!2351607 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351607 lambda!343524))))

(declare-fun bs!1566244 () Bool)

(assert (= bs!1566244 d!1968270))

(declare-fun m!7092808 () Bool)

(assert (=> bs!1566244 m!7092808))

(assert (=> b!6269389 d!1968270))

(assert (=> b!6269389 d!1967964))

(assert (=> b!6269389 d!1967966))

(declare-fun b!6270851 () Bool)

(declare-fun e!3814040 () Bool)

(declare-fun e!3814037 () Bool)

(assert (=> b!6270851 (= e!3814040 e!3814037)))

(declare-fun c!1136405 () Bool)

(assert (=> b!6270851 (= c!1136405 ((_ is Star!16189) (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))

(declare-fun d!1968276 () Bool)

(declare-fun res!2586692 () Bool)

(assert (=> d!1968276 (=> res!2586692 e!3814040)))

(assert (=> d!1968276 (= res!2586692 ((_ is ElementMatch!16189) (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))

(assert (=> d!1968276 (= (validRegex!7925 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))) e!3814040)))

(declare-fun bm!530352 () Bool)

(declare-fun call!530357 () Bool)

(declare-fun call!530358 () Bool)

(assert (=> bm!530352 (= call!530357 call!530358)))

(declare-fun b!6270852 () Bool)

(declare-fun e!3814041 () Bool)

(assert (=> b!6270852 (= e!3814037 e!3814041)))

(declare-fun c!1136404 () Bool)

(assert (=> b!6270852 (= c!1136404 ((_ is Union!16189) (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))

(declare-fun b!6270853 () Bool)

(declare-fun e!3814039 () Bool)

(declare-fun e!3814036 () Bool)

(assert (=> b!6270853 (= e!3814039 e!3814036)))

(declare-fun res!2586690 () Bool)

(assert (=> b!6270853 (=> (not res!2586690) (not e!3814036))))

(declare-fun call!530359 () Bool)

(assert (=> b!6270853 (= res!2586690 call!530359)))

(declare-fun b!6270854 () Bool)

(declare-fun e!3814038 () Bool)

(assert (=> b!6270854 (= e!3814038 call!530358)))

(declare-fun b!6270855 () Bool)

(declare-fun res!2586689 () Bool)

(declare-fun e!3814035 () Bool)

(assert (=> b!6270855 (=> (not res!2586689) (not e!3814035))))

(assert (=> b!6270855 (= res!2586689 call!530359)))

(assert (=> b!6270855 (= e!3814041 e!3814035)))

(declare-fun bm!530353 () Bool)

(assert (=> bm!530353 (= call!530359 (validRegex!7925 (ite c!1136404 (regOne!32891 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))) (regOne!32890 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))))

(declare-fun b!6270856 () Bool)

(declare-fun res!2586691 () Bool)

(assert (=> b!6270856 (=> res!2586691 e!3814039)))

(assert (=> b!6270856 (= res!2586691 (not ((_ is Concat!25034) (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598)))))))

(assert (=> b!6270856 (= e!3814041 e!3814039)))

(declare-fun b!6270857 () Bool)

(assert (=> b!6270857 (= e!3814036 call!530357)))

(declare-fun b!6270858 () Bool)

(assert (=> b!6270858 (= e!3814035 call!530357)))

(declare-fun b!6270859 () Bool)

(assert (=> b!6270859 (= e!3814037 e!3814038)))

(declare-fun res!2586693 () Bool)

(assert (=> b!6270859 (= res!2586693 (not (nullable!6182 (reg!16518 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))))))))

(assert (=> b!6270859 (=> (not res!2586693) (not e!3814038))))

(declare-fun bm!530354 () Bool)

(assert (=> bm!530354 (= call!530358 (validRegex!7925 (ite c!1136405 (reg!16518 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))) (ite c!1136404 (regTwo!32891 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598))) (regTwo!32890 (ite c!1136047 (regOne!32891 lt!2351598) (regOne!32890 lt!2351598)))))))))

(assert (= (and d!1968276 (not res!2586692)) b!6270851))

(assert (= (and b!6270851 c!1136405) b!6270859))

(assert (= (and b!6270851 (not c!1136405)) b!6270852))

(assert (= (and b!6270859 res!2586693) b!6270854))

(assert (= (and b!6270852 c!1136404) b!6270855))

(assert (= (and b!6270852 (not c!1136404)) b!6270856))

(assert (= (and b!6270855 res!2586689) b!6270858))

(assert (= (and b!6270856 (not res!2586691)) b!6270853))

(assert (= (and b!6270853 res!2586690) b!6270857))

(assert (= (or b!6270858 b!6270857) bm!530352))

(assert (= (or b!6270855 b!6270853) bm!530353))

(assert (= (or b!6270854 bm!530352) bm!530354))

(declare-fun m!7092810 () Bool)

(assert (=> bm!530353 m!7092810))

(declare-fun m!7092812 () Bool)

(assert (=> b!6270859 m!7092812))

(declare-fun m!7092814 () Bool)

(assert (=> bm!530354 m!7092814))

(assert (=> bm!530115 d!1968276))

(declare-fun d!1968278 () Bool)

(assert (=> d!1968278 (= (isEmpty!36775 lt!2351608) ((_ is Nil!64742) lt!2351608))))

(assert (=> b!6269650 d!1968278))

(declare-fun bm!530355 () Bool)

(declare-fun call!530365 () (InoxSet Context!11146))

(declare-fun call!530361 () (InoxSet Context!11146))

(assert (=> bm!530355 (= call!530365 call!530361)))

(declare-fun bm!530356 () Bool)

(declare-fun c!1136407 () Bool)

(declare-fun call!530364 () List!64866)

(declare-fun c!1136408 () Bool)

(assert (=> bm!530356 (= call!530364 ($colon$colon!2053 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343))))) (ite (or c!1136408 c!1136407) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71190 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun d!1968280 () Bool)

(declare-fun c!1136406 () Bool)

(assert (=> d!1968280 (= c!1136406 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))) (= (c!1135772 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326))))))

(declare-fun e!3814047 () (InoxSet Context!11146))

(assert (=> d!1968280 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (h!71191 zl!343))) (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (h!71192 s!2326)) e!3814047)))

(declare-fun b!6270860 () Bool)

(declare-fun e!3814044 () (InoxSet Context!11146))

(declare-fun call!530360 () (InoxSet Context!11146))

(assert (=> b!6270860 (= e!3814044 ((_ map or) call!530360 call!530365))))

(declare-fun b!6270861 () Bool)

(declare-fun e!3814045 () (InoxSet Context!11146))

(assert (=> b!6270861 (= e!3814044 e!3814045)))

(assert (=> b!6270861 (= c!1136407 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270862 () Bool)

(declare-fun e!3814046 () (InoxSet Context!11146))

(assert (=> b!6270862 (= e!3814046 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530357 () Bool)

(declare-fun call!530362 () List!64866)

(assert (=> bm!530357 (= call!530362 call!530364)))

(declare-fun b!6270863 () Bool)

(declare-fun call!530363 () (InoxSet Context!11146))

(assert (=> b!6270863 (= e!3814045 call!530363)))

(declare-fun bm!530358 () Bool)

(declare-fun c!1136410 () Bool)

(assert (=> bm!530358 (= call!530361 (derivationStepZipperDown!1437 (ite c!1136410 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1136408 (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (ite c!1136407 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (reg!16518 (h!71190 (exprs!6073 (h!71191 zl!343))))))) (ite (or c!1136410 c!1136408) (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (Context!11147 call!530362)) (h!71192 s!2326)))))

(declare-fun bm!530359 () Bool)

(assert (=> bm!530359 (= call!530360 (derivationStepZipperDown!1437 (ite c!1136410 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))) (ite c!1136410 (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) (Context!11147 call!530364)) (h!71192 s!2326)))))

(declare-fun b!6270864 () Bool)

(declare-fun e!3814043 () Bool)

(assert (=> b!6270864 (= e!3814043 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun b!6270865 () Bool)

(declare-fun c!1136409 () Bool)

(assert (=> b!6270865 (= c!1136409 ((_ is Star!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> b!6270865 (= e!3814045 e!3814046)))

(declare-fun b!6270866 () Bool)

(assert (=> b!6270866 (= c!1136408 e!3814043)))

(declare-fun res!2586694 () Bool)

(assert (=> b!6270866 (=> (not res!2586694) (not e!3814043))))

(assert (=> b!6270866 (= res!2586694 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun e!3814042 () (InoxSet Context!11146))

(assert (=> b!6270866 (= e!3814042 e!3814044)))

(declare-fun b!6270867 () Bool)

(assert (=> b!6270867 (= e!3814047 (store ((as const (Array Context!11146 Bool)) false) (Context!11147 (t!378422 (exprs!6073 (h!71191 zl!343)))) true))))

(declare-fun b!6270868 () Bool)

(assert (=> b!6270868 (= e!3814042 ((_ map or) call!530360 call!530361))))

(declare-fun b!6270869 () Bool)

(assert (=> b!6270869 (= e!3814046 call!530363)))

(declare-fun bm!530360 () Bool)

(assert (=> bm!530360 (= call!530363 call!530365)))

(declare-fun b!6270870 () Bool)

(assert (=> b!6270870 (= e!3814047 e!3814042)))

(assert (=> b!6270870 (= c!1136410 ((_ is Union!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (= (and d!1968280 c!1136406) b!6270867))

(assert (= (and d!1968280 (not c!1136406)) b!6270870))

(assert (= (and b!6270870 c!1136410) b!6270868))

(assert (= (and b!6270870 (not c!1136410)) b!6270866))

(assert (= (and b!6270866 res!2586694) b!6270864))

(assert (= (and b!6270866 c!1136408) b!6270860))

(assert (= (and b!6270866 (not c!1136408)) b!6270861))

(assert (= (and b!6270861 c!1136407) b!6270863))

(assert (= (and b!6270861 (not c!1136407)) b!6270865))

(assert (= (and b!6270865 c!1136409) b!6270869))

(assert (= (and b!6270865 (not c!1136409)) b!6270862))

(assert (= (or b!6270863 b!6270869) bm!530357))

(assert (= (or b!6270863 b!6270869) bm!530360))

(assert (= (or b!6270860 bm!530357) bm!530356))

(assert (= (or b!6270860 bm!530360) bm!530355))

(assert (= (or b!6270868 bm!530355) bm!530358))

(assert (= (or b!6270868 b!6270860) bm!530359))

(declare-fun m!7092822 () Bool)

(assert (=> bm!530359 m!7092822))

(declare-fun m!7092824 () Bool)

(assert (=> b!6270867 m!7092824))

(assert (=> b!6270864 m!7090924))

(declare-fun m!7092826 () Bool)

(assert (=> bm!530356 m!7092826))

(declare-fun m!7092828 () Bool)

(assert (=> bm!530358 m!7092828))

(assert (=> bm!530050 d!1968280))

(declare-fun bm!530374 () Bool)

(declare-fun call!530379 () Bool)

(declare-fun c!1136421 () Bool)

(assert (=> bm!530374 (= call!530379 (nullable!6182 (ite c!1136421 (regTwo!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6270909 () Bool)

(declare-fun e!3814080 () Bool)

(declare-fun e!3814076 () Bool)

(assert (=> b!6270909 (= e!3814080 e!3814076)))

(declare-fun res!2586713 () Bool)

(declare-fun call!530380 () Bool)

(assert (=> b!6270909 (= res!2586713 call!530380)))

(assert (=> b!6270909 (=> res!2586713 e!3814076)))

(declare-fun d!1968288 () Bool)

(declare-fun res!2586716 () Bool)

(declare-fun e!3814078 () Bool)

(assert (=> d!1968288 (=> res!2586716 e!3814078)))

(assert (=> d!1968288 (= res!2586716 ((_ is EmptyExpr!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> d!1968288 (= (nullableFct!2133 (h!71190 (exprs!6073 (h!71191 zl!343)))) e!3814078)))

(declare-fun b!6270910 () Bool)

(declare-fun e!3814079 () Bool)

(assert (=> b!6270910 (= e!3814080 e!3814079)))

(declare-fun res!2586717 () Bool)

(assert (=> b!6270910 (= res!2586717 call!530380)))

(assert (=> b!6270910 (=> (not res!2586717) (not e!3814079))))

(declare-fun b!6270911 () Bool)

(declare-fun e!3814081 () Bool)

(assert (=> b!6270911 (= e!3814078 e!3814081)))

(declare-fun res!2586714 () Bool)

(assert (=> b!6270911 (=> (not res!2586714) (not e!3814081))))

(assert (=> b!6270911 (= res!2586714 (and (not ((_ is EmptyLang!16189) (h!71190 (exprs!6073 (h!71191 zl!343))))) (not ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6270912 () Bool)

(assert (=> b!6270912 (= e!3814076 call!530379)))

(declare-fun b!6270913 () Bool)

(declare-fun e!3814077 () Bool)

(assert (=> b!6270913 (= e!3814077 e!3814080)))

(assert (=> b!6270913 (= c!1136421 ((_ is Union!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun b!6270914 () Bool)

(assert (=> b!6270914 (= e!3814079 call!530379)))

(declare-fun b!6270915 () Bool)

(assert (=> b!6270915 (= e!3814081 e!3814077)))

(declare-fun res!2586715 () Bool)

(assert (=> b!6270915 (=> res!2586715 e!3814077)))

(assert (=> b!6270915 (= res!2586715 ((_ is Star!16189) (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun bm!530375 () Bool)

(assert (=> bm!530375 (= call!530380 (nullable!6182 (ite c!1136421 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(assert (= (and d!1968288 (not res!2586716)) b!6270911))

(assert (= (and b!6270911 res!2586714) b!6270915))

(assert (= (and b!6270915 (not res!2586715)) b!6270913))

(assert (= (and b!6270913 c!1136421) b!6270909))

(assert (= (and b!6270913 (not c!1136421)) b!6270910))

(assert (= (and b!6270909 (not res!2586713)) b!6270912))

(assert (= (and b!6270910 res!2586717) b!6270914))

(assert (= (or b!6270912 b!6270914) bm!530374))

(assert (= (or b!6270909 b!6270910) bm!530375))

(declare-fun m!7092854 () Bool)

(assert (=> bm!530374 m!7092854))

(declare-fun m!7092856 () Bool)

(assert (=> bm!530375 m!7092856))

(assert (=> d!1967474 d!1968288))

(assert (=> b!6269697 d!1968068))

(assert (=> b!6269697 d!1967836))

(declare-fun bs!1566276 () Bool)

(declare-fun d!1968298 () Bool)

(assert (= bs!1566276 (and d!1968298 b!6270700)))

(declare-fun lambda!343527 () Int)

(assert (=> bs!1566276 (not (= lambda!343527 lambda!343506))))

(declare-fun bs!1566277 () Bool)

(assert (= bs!1566277 (and d!1968298 b!6270175)))

(assert (=> bs!1566277 (not (= lambda!343527 lambda!343434))))

(declare-fun bs!1566278 () Bool)

(assert (= bs!1566278 (and d!1968298 d!1968070)))

(assert (=> bs!1566278 (= lambda!343527 lambda!343481)))

(declare-fun bs!1566279 () Bool)

(assert (= bs!1566279 (and d!1968298 d!1967900)))

(assert (=> bs!1566279 (not (= lambda!343527 lambda!343429))))

(declare-fun bs!1566280 () Bool)

(assert (= bs!1566280 (and d!1968298 d!1968128)))

(assert (=> bs!1566280 (= lambda!343527 lambda!343488)))

(declare-fun bs!1566281 () Bool)

(assert (= bs!1566281 (and d!1968298 d!1967868)))

(assert (=> bs!1566281 (= lambda!343527 lambda!343423)))

(declare-fun bs!1566282 () Bool)

(assert (= bs!1566282 (and d!1968298 d!1968202)))

(assert (=> bs!1566282 (not (= lambda!343527 lambda!343508))))

(declare-fun bs!1566283 () Bool)

(assert (= bs!1566283 (and d!1968298 d!1967774)))

(assert (=> bs!1566283 (= lambda!343527 lambda!343418)))

(declare-fun bs!1566284 () Bool)

(assert (= bs!1566284 (and d!1968298 d!1967884)))

(assert (=> bs!1566284 (= lambda!343527 lambda!343425)))

(declare-fun bs!1566285 () Bool)

(assert (= bs!1566285 (and d!1968298 b!6269127)))

(assert (=> bs!1566285 (not (= lambda!343527 lambda!343345))))

(declare-fun bs!1566286 () Bool)

(assert (= bs!1566286 (and d!1968298 d!1967888)))

(assert (=> bs!1566286 (= lambda!343527 lambda!343426)))

(declare-fun bs!1566287 () Bool)

(assert (= bs!1566287 (and d!1968298 b!6269129)))

(assert (=> bs!1566287 (not (= lambda!343527 lambda!343346))))

(declare-fun bs!1566288 () Bool)

(assert (= bs!1566288 (and d!1968298 b!6270173)))

(assert (=> bs!1566288 (not (= lambda!343527 lambda!343433))))

(declare-fun bs!1566289 () Bool)

(assert (= bs!1566289 (and d!1968298 d!1968264)))

(assert (=> bs!1566289 (= lambda!343527 lambda!343523)))

(declare-fun bs!1566290 () Bool)

(assert (= bs!1566290 (and d!1968298 b!6269124)))

(assert (=> bs!1566290 (not (= lambda!343527 lambda!343341))))

(declare-fun bs!1566291 () Bool)

(assert (= bs!1566291 (and d!1968298 b!6269122)))

(assert (=> bs!1566291 (not (= lambda!343527 lambda!343340))))

(declare-fun bs!1566292 () Bool)

(assert (= bs!1566292 (and d!1968298 d!1968094)))

(assert (=> bs!1566292 (= lambda!343527 lambda!343484)))

(declare-fun bs!1566293 () Bool)

(assert (= bs!1566293 (and d!1968298 d!1967876)))

(assert (=> bs!1566293 (= lambda!343527 lambda!343424)))

(declare-fun bs!1566294 () Bool)

(assert (= bs!1566294 (and d!1968298 b!6270702)))

(assert (=> bs!1566294 (not (= lambda!343527 lambda!343507))))

(declare-fun bs!1566295 () Bool)

(assert (= bs!1566295 (and d!1968298 d!1967778)))

(assert (=> bs!1566295 (= lambda!343527 lambda!343419)))

(assert (=> d!1968298 (= (nullableZipper!1959 lt!2351610) (exists!2522 lt!2351610 lambda!343527))))

(declare-fun bs!1566296 () Bool)

(assert (= bs!1566296 d!1968298))

(declare-fun m!7092862 () Bool)

(assert (=> bs!1566296 m!7092862))

(assert (=> b!6269156 d!1968298))

(assert (=> b!6269585 d!1968068))

(assert (=> b!6269585 d!1967836))

(declare-fun bm!530376 () Bool)

(declare-fun call!530386 () (InoxSet Context!11146))

(declare-fun call!530382 () (InoxSet Context!11146))

(assert (=> bm!530376 (= call!530386 call!530382)))

(declare-fun call!530385 () List!64866)

(declare-fun c!1136423 () Bool)

(declare-fun bm!530377 () Bool)

(declare-fun c!1136424 () Bool)

(assert (=> bm!530377 (= call!530385 ($colon$colon!2053 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))) (ite (or c!1136424 c!1136423) (regTwo!32890 (h!71190 (exprs!6073 lt!2351628))) (h!71190 (exprs!6073 lt!2351628)))))))

(declare-fun d!1968302 () Bool)

(declare-fun c!1136422 () Bool)

(assert (=> d!1968302 (= c!1136422 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 lt!2351628))) (= (c!1135772 (h!71190 (exprs!6073 lt!2351628))) (h!71192 s!2326))))))

(declare-fun e!3814097 () (InoxSet Context!11146))

(assert (=> d!1968302 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351628)) (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (h!71192 s!2326)) e!3814097)))

(declare-fun b!6270926 () Bool)

(declare-fun e!3814094 () (InoxSet Context!11146))

(declare-fun call!530381 () (InoxSet Context!11146))

(assert (=> b!6270926 (= e!3814094 ((_ map or) call!530381 call!530386))))

(declare-fun b!6270927 () Bool)

(declare-fun e!3814095 () (InoxSet Context!11146))

(assert (=> b!6270927 (= e!3814094 e!3814095)))

(assert (=> b!6270927 (= c!1136423 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun b!6270928 () Bool)

(declare-fun e!3814096 () (InoxSet Context!11146))

(assert (=> b!6270928 (= e!3814096 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530378 () Bool)

(declare-fun call!530383 () List!64866)

(assert (=> bm!530378 (= call!530383 call!530385)))

(declare-fun b!6270929 () Bool)

(declare-fun call!530384 () (InoxSet Context!11146))

(assert (=> b!6270929 (= e!3814095 call!530384)))

(declare-fun c!1136426 () Bool)

(declare-fun bm!530379 () Bool)

(assert (=> bm!530379 (= call!530382 (derivationStepZipperDown!1437 (ite c!1136426 (regTwo!32891 (h!71190 (exprs!6073 lt!2351628))) (ite c!1136424 (regTwo!32890 (h!71190 (exprs!6073 lt!2351628))) (ite c!1136423 (regOne!32890 (h!71190 (exprs!6073 lt!2351628))) (reg!16518 (h!71190 (exprs!6073 lt!2351628)))))) (ite (or c!1136426 c!1136424) (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (Context!11147 call!530383)) (h!71192 s!2326)))))

(declare-fun bm!530380 () Bool)

(assert (=> bm!530380 (= call!530381 (derivationStepZipperDown!1437 (ite c!1136426 (regOne!32891 (h!71190 (exprs!6073 lt!2351628))) (regOne!32890 (h!71190 (exprs!6073 lt!2351628)))) (ite c!1136426 (Context!11147 (t!378422 (exprs!6073 lt!2351628))) (Context!11147 call!530385)) (h!71192 s!2326)))))

(declare-fun b!6270930 () Bool)

(declare-fun e!3814093 () Bool)

(assert (=> b!6270930 (= e!3814093 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 lt!2351628)))))))

(declare-fun b!6270931 () Bool)

(declare-fun c!1136425 () Bool)

(assert (=> b!6270931 (= c!1136425 ((_ is Star!16189) (h!71190 (exprs!6073 lt!2351628))))))

(assert (=> b!6270931 (= e!3814095 e!3814096)))

(declare-fun b!6270932 () Bool)

(assert (=> b!6270932 (= c!1136424 e!3814093)))

(declare-fun res!2586726 () Bool)

(assert (=> b!6270932 (=> (not res!2586726) (not e!3814093))))

(assert (=> b!6270932 (= res!2586726 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun e!3814092 () (InoxSet Context!11146))

(assert (=> b!6270932 (= e!3814092 e!3814094)))

(declare-fun b!6270933 () Bool)

(assert (=> b!6270933 (= e!3814097 (store ((as const (Array Context!11146 Bool)) false) (Context!11147 (t!378422 (exprs!6073 lt!2351628))) true))))

(declare-fun b!6270934 () Bool)

(assert (=> b!6270934 (= e!3814092 ((_ map or) call!530381 call!530382))))

(declare-fun b!6270935 () Bool)

(assert (=> b!6270935 (= e!3814096 call!530384)))

(declare-fun bm!530381 () Bool)

(assert (=> bm!530381 (= call!530384 call!530386)))

(declare-fun b!6270936 () Bool)

(assert (=> b!6270936 (= e!3814097 e!3814092)))

(assert (=> b!6270936 (= c!1136426 ((_ is Union!16189) (h!71190 (exprs!6073 lt!2351628))))))

(assert (= (and d!1968302 c!1136422) b!6270933))

(assert (= (and d!1968302 (not c!1136422)) b!6270936))

(assert (= (and b!6270936 c!1136426) b!6270934))

(assert (= (and b!6270936 (not c!1136426)) b!6270932))

(assert (= (and b!6270932 res!2586726) b!6270930))

(assert (= (and b!6270932 c!1136424) b!6270926))

(assert (= (and b!6270932 (not c!1136424)) b!6270927))

(assert (= (and b!6270927 c!1136423) b!6270929))

(assert (= (and b!6270927 (not c!1136423)) b!6270931))

(assert (= (and b!6270931 c!1136425) b!6270935))

(assert (= (and b!6270931 (not c!1136425)) b!6270928))

(assert (= (or b!6270929 b!6270935) bm!530378))

(assert (= (or b!6270929 b!6270935) bm!530381))

(assert (= (or b!6270926 bm!530378) bm!530377))

(assert (= (or b!6270926 bm!530381) bm!530376))

(assert (= (or b!6270934 bm!530376) bm!530379))

(assert (= (or b!6270934 b!6270926) bm!530380))

(declare-fun m!7092864 () Bool)

(assert (=> bm!530380 m!7092864))

(declare-fun m!7092866 () Bool)

(assert (=> b!6270933 m!7092866))

(declare-fun m!7092868 () Bool)

(assert (=> b!6270930 m!7092868))

(declare-fun m!7092870 () Bool)

(assert (=> bm!530377 m!7092870))

(declare-fun m!7092872 () Bool)

(assert (=> bm!530379 m!7092872))

(assert (=> bm!530129 d!1968302))

(declare-fun bm!530382 () Bool)

(declare-fun call!530392 () (InoxSet Context!11146))

(declare-fun call!530388 () (InoxSet Context!11146))

(assert (=> bm!530382 (= call!530392 call!530388)))

(declare-fun call!530391 () List!64866)

(declare-fun c!1136428 () Bool)

(declare-fun c!1136429 () Bool)

(declare-fun bm!530383 () Bool)

(assert (=> bm!530383 (= call!530391 ($colon$colon!2053 (exprs!6073 (ite c!1135840 lt!2351625 (Context!11147 call!530053))) (ite (or c!1136429 c!1136428) (regTwo!32890 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))

(declare-fun c!1136427 () Bool)

(declare-fun d!1968304 () Bool)

(assert (=> d!1968304 (= c!1136427 (and ((_ is ElementMatch!16189) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (= (c!1135772 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (h!71192 s!2326))))))

(declare-fun e!3814108 () (InoxSet Context!11146))

(assert (=> d!1968304 (= (derivationStepZipperDown!1437 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))) (ite c!1135840 lt!2351625 (Context!11147 call!530053)) (h!71192 s!2326)) e!3814108)))

(declare-fun b!6270942 () Bool)

(declare-fun e!3814105 () (InoxSet Context!11146))

(declare-fun call!530387 () (InoxSet Context!11146))

(assert (=> b!6270942 (= e!3814105 ((_ map or) call!530387 call!530392))))

(declare-fun b!6270943 () Bool)

(declare-fun e!3814106 () (InoxSet Context!11146))

(assert (=> b!6270943 (= e!3814105 e!3814106)))

(assert (=> b!6270943 (= c!1136428 ((_ is Concat!25034) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun b!6270944 () Bool)

(declare-fun e!3814107 () (InoxSet Context!11146))

(assert (=> b!6270944 (= e!3814107 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530384 () Bool)

(declare-fun call!530389 () List!64866)

(assert (=> bm!530384 (= call!530389 call!530391)))

(declare-fun b!6270945 () Bool)

(declare-fun call!530390 () (InoxSet Context!11146))

(assert (=> b!6270945 (= e!3814106 call!530390)))

(declare-fun c!1136431 () Bool)

(declare-fun bm!530385 () Bool)

(assert (=> bm!530385 (= call!530388 (derivationStepZipperDown!1437 (ite c!1136431 (regTwo!32891 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (ite c!1136429 (regTwo!32890 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (ite c!1136428 (regOne!32890 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (reg!16518 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))) (ite (or c!1136431 c!1136429) (ite c!1135840 lt!2351625 (Context!11147 call!530053)) (Context!11147 call!530389)) (h!71192 s!2326)))))

(declare-fun bm!530386 () Bool)

(assert (=> bm!530386 (= call!530387 (derivationStepZipperDown!1437 (ite c!1136431 (regOne!32891 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))) (regOne!32890 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))) (ite c!1136431 (ite c!1135840 lt!2351625 (Context!11147 call!530053)) (Context!11147 call!530391)) (h!71192 s!2326)))))

(declare-fun b!6270946 () Bool)

(declare-fun e!3814104 () Bool)

(assert (=> b!6270946 (= e!3814104 (nullable!6182 (regOne!32890 (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))))

(declare-fun b!6270947 () Bool)

(declare-fun c!1136430 () Bool)

(assert (=> b!6270947 (= c!1136430 ((_ is Star!16189) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(assert (=> b!6270947 (= e!3814106 e!3814107)))

(declare-fun b!6270948 () Bool)

(assert (=> b!6270948 (= c!1136429 e!3814104)))

(declare-fun res!2586731 () Bool)

(assert (=> b!6270948 (=> (not res!2586731) (not e!3814104))))

(assert (=> b!6270948 (= res!2586731 ((_ is Concat!25034) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(declare-fun e!3814103 () (InoxSet Context!11146))

(assert (=> b!6270948 (= e!3814103 e!3814105)))

(declare-fun b!6270949 () Bool)

(assert (=> b!6270949 (= e!3814108 (store ((as const (Array Context!11146 Bool)) false) (ite c!1135840 lt!2351625 (Context!11147 call!530053)) true))))

(declare-fun b!6270950 () Bool)

(assert (=> b!6270950 (= e!3814103 ((_ map or) call!530387 call!530388))))

(declare-fun b!6270951 () Bool)

(assert (=> b!6270951 (= e!3814107 call!530390)))

(declare-fun bm!530387 () Bool)

(assert (=> bm!530387 (= call!530390 call!530392)))

(declare-fun b!6270952 () Bool)

(assert (=> b!6270952 (= e!3814108 e!3814103)))

(assert (=> b!6270952 (= c!1136431 ((_ is Union!16189) (ite c!1135840 (regOne!32891 (h!71190 (exprs!6073 (h!71191 zl!343)))) (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))))))))

(assert (= (and d!1968304 c!1136427) b!6270949))

(assert (= (and d!1968304 (not c!1136427)) b!6270952))

(assert (= (and b!6270952 c!1136431) b!6270950))

(assert (= (and b!6270952 (not c!1136431)) b!6270948))

(assert (= (and b!6270948 res!2586731) b!6270946))

(assert (= (and b!6270948 c!1136429) b!6270942))

(assert (= (and b!6270948 (not c!1136429)) b!6270943))

(assert (= (and b!6270943 c!1136428) b!6270945))

(assert (= (and b!6270943 (not c!1136428)) b!6270947))

(assert (= (and b!6270947 c!1136430) b!6270951))

(assert (= (and b!6270947 (not c!1136430)) b!6270944))

(assert (= (or b!6270945 b!6270951) bm!530384))

(assert (= (or b!6270945 b!6270951) bm!530387))

(assert (= (or b!6270942 bm!530384) bm!530383))

(assert (= (or b!6270942 bm!530387) bm!530382))

(assert (= (or b!6270950 bm!530382) bm!530385))

(assert (= (or b!6270950 b!6270942) bm!530386))

(declare-fun m!7092880 () Bool)

(assert (=> bm!530386 m!7092880))

(declare-fun m!7092882 () Bool)

(assert (=> b!6270949 m!7092882))

(declare-fun m!7092884 () Bool)

(assert (=> b!6270946 m!7092884))

(declare-fun m!7092888 () Bool)

(assert (=> bm!530383 m!7092888))

(declare-fun m!7092894 () Bool)

(assert (=> bm!530385 m!7092894))

(assert (=> bm!530048 d!1968304))

(declare-fun d!1968308 () Bool)

(assert (=> d!1968308 (= (isEmpty!36779 (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326)) (not ((_ is Some!16079) (findConcatSeparation!2494 (regOne!32890 r!7292) (regTwo!32890 r!7292) Nil!64744 s!2326 s!2326))))))

(assert (=> d!1967700 d!1968308))

(declare-fun d!1968312 () Bool)

(assert (=> d!1968312 (= (isEmptyExpr!1595 lt!2351774) ((_ is EmptyExpr!16189) lt!2351774))))

(assert (=> b!6269684 d!1968312))

(declare-fun d!1968314 () Bool)

(declare-fun c!1136440 () Bool)

(assert (=> d!1968314 (= c!1136440 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814121 () Bool)

(assert (=> d!1968314 (= (matchZipper!2201 (derivationStepZipper!2155 ((_ map or) lt!2351600 lt!2351623) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814121)))

(declare-fun b!6270977 () Bool)

(assert (=> b!6270977 (= e!3814121 (nullableZipper!1959 (derivationStepZipper!2155 ((_ map or) lt!2351600 lt!2351623) (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270978 () Bool)

(assert (=> b!6270978 (= e!3814121 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 ((_ map or) lt!2351600 lt!2351623) (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968314 c!1136440) b!6270977))

(assert (= (and d!1968314 (not c!1136440)) b!6270978))

(assert (=> d!1968314 m!7091032))

(assert (=> d!1968314 m!7092110))

(assert (=> b!6270977 m!7091524))

(declare-fun m!7092904 () Bool)

(assert (=> b!6270977 m!7092904))

(assert (=> b!6270978 m!7091032))

(assert (=> b!6270978 m!7092114))

(assert (=> b!6270978 m!7091524))

(assert (=> b!6270978 m!7092114))

(declare-fun m!7092908 () Bool)

(assert (=> b!6270978 m!7092908))

(assert (=> b!6270978 m!7091032))

(assert (=> b!6270978 m!7092118))

(assert (=> b!6270978 m!7092908))

(assert (=> b!6270978 m!7092118))

(declare-fun m!7092910 () Bool)

(assert (=> b!6270978 m!7092910))

(assert (=> b!6269738 d!1968314))

(declare-fun bs!1566297 () Bool)

(declare-fun d!1968318 () Bool)

(assert (= bs!1566297 (and d!1968318 d!1968078)))

(declare-fun lambda!343528 () Int)

(assert (=> bs!1566297 (= lambda!343528 lambda!343482)))

(declare-fun bs!1566298 () Bool)

(assert (= bs!1566298 (and d!1968318 d!1968016)))

(assert (=> bs!1566298 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343528 lambda!343470))))

(declare-fun bs!1566299 () Bool)

(assert (= bs!1566299 (and d!1968318 b!6268873)))

(assert (=> bs!1566299 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343528 lambda!343319))))

(declare-fun bs!1566300 () Bool)

(assert (= bs!1566300 (and d!1968318 d!1968120)))

(assert (=> bs!1566300 (= lambda!343528 lambda!343487)))

(declare-fun bs!1566301 () Bool)

(assert (= bs!1566301 (and d!1968318 d!1967654)))

(assert (=> bs!1566301 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343528 lambda!343399))))

(declare-fun bs!1566302 () Bool)

(assert (= bs!1566302 (and d!1968318 d!1968110)))

(assert (=> bs!1566302 (= lambda!343528 lambda!343486)))

(declare-fun bs!1566303 () Bool)

(assert (= bs!1566303 (and d!1968318 d!1968270)))

(assert (=> bs!1566303 (= lambda!343528 lambda!343524)))

(declare-fun bs!1566304 () Bool)

(assert (= bs!1566304 (and d!1968318 d!1967706)))

(assert (=> bs!1566304 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343528 lambda!343411))))

(declare-fun bs!1566305 () Bool)

(assert (= bs!1566305 (and d!1968318 d!1967962)))

(assert (=> bs!1566305 (= lambda!343528 lambda!343456)))

(assert (=> d!1968318 true))

(assert (=> d!1968318 (= (derivationStepZipper!2155 ((_ map or) lt!2351600 lt!2351623) (head!12878 (t!378424 s!2326))) (flatMap!1694 ((_ map or) lt!2351600 lt!2351623) lambda!343528))))

(declare-fun bs!1566306 () Bool)

(assert (= bs!1566306 d!1968318))

(declare-fun m!7092922 () Bool)

(assert (=> bs!1566306 m!7092922))

(assert (=> b!6269738 d!1968318))

(assert (=> b!6269738 d!1967964))

(assert (=> b!6269738 d!1967966))

(declare-fun b!6270988 () Bool)

(declare-fun e!3814127 () Bool)

(assert (=> b!6270988 (= e!3814127 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634)))))))))

(declare-fun b!6270989 () Bool)

(declare-fun e!3814128 () (InoxSet Context!11146))

(declare-fun call!530398 () (InoxSet Context!11146))

(assert (=> b!6270989 (= e!3814128 call!530398)))

(declare-fun d!1968326 () Bool)

(declare-fun c!1136444 () Bool)

(assert (=> d!1968326 (= c!1136444 e!3814127)))

(declare-fun res!2586743 () Bool)

(assert (=> d!1968326 (=> (not res!2586743) (not e!3814127))))

(assert (=> d!1968326 (= res!2586743 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634))))))))

(declare-fun e!3814129 () (InoxSet Context!11146))

(assert (=> d!1968326 (= (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 lt!2351634))) (h!71192 s!2326)) e!3814129)))

(declare-fun b!6270990 () Bool)

(assert (=> b!6270990 (= e!3814129 ((_ map or) call!530398 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634)))))) (h!71192 s!2326))))))

(declare-fun bm!530393 () Bool)

(assert (=> bm!530393 (= call!530398 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634)))))) (h!71192 s!2326)))))

(declare-fun b!6270991 () Bool)

(assert (=> b!6270991 (= e!3814128 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6270992 () Bool)

(assert (=> b!6270992 (= e!3814129 e!3814128)))

(declare-fun c!1136445 () Bool)

(assert (=> b!6270992 (= c!1136445 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351634))))))))

(assert (= (and d!1968326 res!2586743) b!6270988))

(assert (= (and d!1968326 c!1136444) b!6270990))

(assert (= (and d!1968326 (not c!1136444)) b!6270992))

(assert (= (and b!6270992 c!1136445) b!6270989))

(assert (= (and b!6270992 (not c!1136445)) b!6270991))

(assert (= (or b!6270990 b!6270989) bm!530393))

(declare-fun m!7092938 () Bool)

(assert (=> b!6270988 m!7092938))

(declare-fun m!7092940 () Bool)

(assert (=> b!6270990 m!7092940))

(declare-fun m!7092942 () Bool)

(assert (=> bm!530393 m!7092942))

(assert (=> b!6269385 d!1968326))

(declare-fun d!1968332 () Bool)

(declare-fun c!1136447 () Bool)

(assert (=> d!1968332 (= c!1136447 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814131 () Bool)

(assert (=> d!1968332 (= (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814131)))

(declare-fun b!6270995 () Bool)

(assert (=> b!6270995 (= e!3814131 (nullableZipper!1959 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6270996 () Bool)

(assert (=> b!6270996 (= e!3814131 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968332 c!1136447) b!6270995))

(assert (= (and d!1968332 (not c!1136447)) b!6270996))

(assert (=> d!1968332 m!7091032))

(assert (=> d!1968332 m!7092110))

(assert (=> b!6270995 m!7091426))

(declare-fun m!7092948 () Bool)

(assert (=> b!6270995 m!7092948))

(assert (=> b!6270996 m!7091032))

(assert (=> b!6270996 m!7092114))

(assert (=> b!6270996 m!7091426))

(assert (=> b!6270996 m!7092114))

(declare-fun m!7092952 () Bool)

(assert (=> b!6270996 m!7092952))

(assert (=> b!6270996 m!7091032))

(assert (=> b!6270996 m!7092118))

(assert (=> b!6270996 m!7092952))

(assert (=> b!6270996 m!7092118))

(declare-fun m!7092954 () Bool)

(assert (=> b!6270996 m!7092954))

(assert (=> b!6269614 d!1968332))

(declare-fun bs!1566309 () Bool)

(declare-fun d!1968336 () Bool)

(assert (= bs!1566309 (and d!1968336 d!1968078)))

(declare-fun lambda!343530 () Int)

(assert (=> bs!1566309 (= lambda!343530 lambda!343482)))

(declare-fun bs!1566311 () Bool)

(assert (= bs!1566311 (and d!1968336 d!1968016)))

(assert (=> bs!1566311 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343530 lambda!343470))))

(declare-fun bs!1566313 () Bool)

(assert (= bs!1566313 (and d!1968336 b!6268873)))

(assert (=> bs!1566313 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343530 lambda!343319))))

(declare-fun bs!1566315 () Bool)

(assert (= bs!1566315 (and d!1968336 d!1968120)))

(assert (=> bs!1566315 (= lambda!343530 lambda!343487)))

(declare-fun bs!1566317 () Bool)

(assert (= bs!1566317 (and d!1968336 d!1967654)))

(assert (=> bs!1566317 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343530 lambda!343399))))

(declare-fun bs!1566319 () Bool)

(assert (= bs!1566319 (and d!1968336 d!1968110)))

(assert (=> bs!1566319 (= lambda!343530 lambda!343486)))

(declare-fun bs!1566321 () Bool)

(assert (= bs!1566321 (and d!1968336 d!1968270)))

(assert (=> bs!1566321 (= lambda!343530 lambda!343524)))

(declare-fun bs!1566323 () Bool)

(assert (= bs!1566323 (and d!1968336 d!1968318)))

(assert (=> bs!1566323 (= lambda!343530 lambda!343528)))

(declare-fun bs!1566325 () Bool)

(assert (= bs!1566325 (and d!1968336 d!1967706)))

(assert (=> bs!1566325 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343530 lambda!343411))))

(declare-fun bs!1566327 () Bool)

(assert (= bs!1566327 (and d!1968336 d!1967962)))

(assert (=> bs!1566327 (= lambda!343530 lambda!343456)))

(assert (=> d!1968336 true))

(assert (=> d!1968336 (= (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) (head!12878 (t!378424 s!2326))) (flatMap!1694 (derivationStepZipper!2155 lt!2351624 (h!71192 s!2326)) lambda!343530))))

(declare-fun bs!1566329 () Bool)

(assert (= bs!1566329 d!1968336))

(assert (=> bs!1566329 m!7090774))

(declare-fun m!7092958 () Bool)

(assert (=> bs!1566329 m!7092958))

(assert (=> b!6269614 d!1968336))

(assert (=> b!6269614 d!1967964))

(assert (=> b!6269614 d!1967966))

(declare-fun d!1968340 () Bool)

(assert (=> d!1968340 (= (isEmpty!36775 (t!378422 (unfocusZipperList!1610 zl!343))) ((_ is Nil!64742) (t!378422 (unfocusZipperList!1610 zl!343))))))

(assert (=> b!6269221 d!1968340))

(declare-fun d!1968342 () Bool)

(assert (=> d!1968342 (= (isEmpty!36775 (tail!11964 lt!2351603)) ((_ is Nil!64742) (tail!11964 lt!2351603)))))

(assert (=> b!6269686 d!1968342))

(declare-fun d!1968344 () Bool)

(assert (=> d!1968344 (= (tail!11964 lt!2351603) (t!378422 lt!2351603))))

(assert (=> b!6269686 d!1968344))

(assert (=> d!1967558 d!1967856))

(declare-fun d!1968346 () Bool)

(assert (=> d!1968346 (= ($colon$colon!2053 (exprs!6073 lt!2351625) (ite (or c!1136051 c!1136050) (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (regTwo!32890 (regOne!32890 r!7292)))) (Cons!64742 (ite (or c!1136051 c!1136050) (regTwo!32890 (regTwo!32890 (regOne!32890 r!7292))) (regTwo!32890 (regOne!32890 r!7292))) (exprs!6073 lt!2351625)))))

(assert (=> bm!530118 d!1968346))

(declare-fun d!1968348 () Bool)

(assert (=> d!1968348 true))

(assert (=> d!1968348 true))

(declare-fun res!2586746 () Bool)

(assert (=> d!1968348 (= (choose!46518 lambda!343317) res!2586746)))

(assert (=> d!1967694 d!1968348))

(declare-fun b!6270999 () Bool)

(declare-fun e!3814139 () Bool)

(declare-fun e!3814136 () Bool)

(assert (=> b!6270999 (= e!3814139 e!3814136)))

(declare-fun c!1136449 () Bool)

(assert (=> b!6270999 (= c!1136449 ((_ is Star!16189) lt!2351773))))

(declare-fun d!1968352 () Bool)

(declare-fun res!2586750 () Bool)

(assert (=> d!1968352 (=> res!2586750 e!3814139)))

(assert (=> d!1968352 (= res!2586750 ((_ is ElementMatch!16189) lt!2351773))))

(assert (=> d!1968352 (= (validRegex!7925 lt!2351773) e!3814139)))

(declare-fun bm!530394 () Bool)

(declare-fun call!530399 () Bool)

(declare-fun call!530400 () Bool)

(assert (=> bm!530394 (= call!530399 call!530400)))

(declare-fun b!6271000 () Bool)

(declare-fun e!3814140 () Bool)

(assert (=> b!6271000 (= e!3814136 e!3814140)))

(declare-fun c!1136448 () Bool)

(assert (=> b!6271000 (= c!1136448 ((_ is Union!16189) lt!2351773))))

(declare-fun b!6271001 () Bool)

(declare-fun e!3814138 () Bool)

(declare-fun e!3814135 () Bool)

(assert (=> b!6271001 (= e!3814138 e!3814135)))

(declare-fun res!2586748 () Bool)

(assert (=> b!6271001 (=> (not res!2586748) (not e!3814135))))

(declare-fun call!530401 () Bool)

(assert (=> b!6271001 (= res!2586748 call!530401)))

(declare-fun b!6271002 () Bool)

(declare-fun e!3814137 () Bool)

(assert (=> b!6271002 (= e!3814137 call!530400)))

(declare-fun b!6271003 () Bool)

(declare-fun res!2586747 () Bool)

(declare-fun e!3814134 () Bool)

(assert (=> b!6271003 (=> (not res!2586747) (not e!3814134))))

(assert (=> b!6271003 (= res!2586747 call!530401)))

(assert (=> b!6271003 (= e!3814140 e!3814134)))

(declare-fun bm!530395 () Bool)

(assert (=> bm!530395 (= call!530401 (validRegex!7925 (ite c!1136448 (regOne!32891 lt!2351773) (regOne!32890 lt!2351773))))))

(declare-fun b!6271004 () Bool)

(declare-fun res!2586749 () Bool)

(assert (=> b!6271004 (=> res!2586749 e!3814138)))

(assert (=> b!6271004 (= res!2586749 (not ((_ is Concat!25034) lt!2351773)))))

(assert (=> b!6271004 (= e!3814140 e!3814138)))

(declare-fun b!6271005 () Bool)

(assert (=> b!6271005 (= e!3814135 call!530399)))

(declare-fun b!6271006 () Bool)

(assert (=> b!6271006 (= e!3814134 call!530399)))

(declare-fun b!6271007 () Bool)

(assert (=> b!6271007 (= e!3814136 e!3814137)))

(declare-fun res!2586751 () Bool)

(assert (=> b!6271007 (= res!2586751 (not (nullable!6182 (reg!16518 lt!2351773))))))

(assert (=> b!6271007 (=> (not res!2586751) (not e!3814137))))

(declare-fun bm!530396 () Bool)

(assert (=> bm!530396 (= call!530400 (validRegex!7925 (ite c!1136449 (reg!16518 lt!2351773) (ite c!1136448 (regTwo!32891 lt!2351773) (regTwo!32890 lt!2351773)))))))

(assert (= (and d!1968352 (not res!2586750)) b!6270999))

(assert (= (and b!6270999 c!1136449) b!6271007))

(assert (= (and b!6270999 (not c!1136449)) b!6271000))

(assert (= (and b!6271007 res!2586751) b!6271002))

(assert (= (and b!6271000 c!1136448) b!6271003))

(assert (= (and b!6271000 (not c!1136448)) b!6271004))

(assert (= (and b!6271003 res!2586747) b!6271006))

(assert (= (and b!6271004 (not res!2586749)) b!6271001))

(assert (= (and b!6271001 res!2586748) b!6271005))

(assert (= (or b!6271006 b!6271005) bm!530394))

(assert (= (or b!6271003 b!6271001) bm!530395))

(assert (= (or b!6271002 bm!530394) bm!530396))

(declare-fun m!7092964 () Bool)

(assert (=> bm!530395 m!7092964))

(declare-fun m!7092966 () Bool)

(assert (=> b!6271007 m!7092966))

(declare-fun m!7092968 () Bool)

(assert (=> bm!530396 m!7092968))

(assert (=> d!1967658 d!1968352))

(declare-fun d!1968356 () Bool)

(declare-fun res!2586752 () Bool)

(declare-fun e!3814141 () Bool)

(assert (=> d!1968356 (=> res!2586752 e!3814141)))

(assert (=> d!1968356 (= res!2586752 ((_ is Nil!64742) lt!2351608))))

(assert (=> d!1968356 (= (forall!15316 lt!2351608 lambda!343400) e!3814141)))

(declare-fun b!6271008 () Bool)

(declare-fun e!3814142 () Bool)

(assert (=> b!6271008 (= e!3814141 e!3814142)))

(declare-fun res!2586753 () Bool)

(assert (=> b!6271008 (=> (not res!2586753) (not e!3814142))))

(assert (=> b!6271008 (= res!2586753 (dynLambda!25601 lambda!343400 (h!71190 lt!2351608)))))

(declare-fun b!6271009 () Bool)

(assert (=> b!6271009 (= e!3814142 (forall!15316 (t!378422 lt!2351608) lambda!343400))))

(assert (= (and d!1968356 (not res!2586752)) b!6271008))

(assert (= (and b!6271008 res!2586753) b!6271009))

(declare-fun b_lambda!238777 () Bool)

(assert (=> (not b_lambda!238777) (not b!6271008)))

(declare-fun m!7092970 () Bool)

(assert (=> b!6271008 m!7092970))

(declare-fun m!7092972 () Bool)

(assert (=> b!6271009 m!7092972))

(assert (=> d!1967658 d!1968356))

(declare-fun d!1968362 () Bool)

(assert (=> d!1968362 (= (head!12879 lt!2351608) (h!71190 lt!2351608))))

(assert (=> b!6269656 d!1968362))

(declare-fun d!1968364 () Bool)

(declare-fun e!3814145 () Bool)

(assert (=> d!1968364 e!3814145))

(declare-fun res!2586754 () Bool)

(assert (=> d!1968364 (=> (not res!2586754) (not e!3814145))))

(declare-fun lt!2351925 () List!64868)

(assert (=> d!1968364 (= res!2586754 (= (content!12162 lt!2351925) ((_ map or) (content!12162 (_1!36471 (get!22373 lt!2351791))) (content!12162 (_2!36471 (get!22373 lt!2351791))))))))

(declare-fun e!3814144 () List!64868)

(assert (=> d!1968364 (= lt!2351925 e!3814144)))

(declare-fun c!1136451 () Bool)

(assert (=> d!1968364 (= c!1136451 ((_ is Nil!64744) (_1!36471 (get!22373 lt!2351791))))))

(assert (=> d!1968364 (= (++!14263 (_1!36471 (get!22373 lt!2351791)) (_2!36471 (get!22373 lt!2351791))) lt!2351925)))

(declare-fun b!6271015 () Bool)

(assert (=> b!6271015 (= e!3814145 (or (not (= (_2!36471 (get!22373 lt!2351791)) Nil!64744)) (= lt!2351925 (_1!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6271013 () Bool)

(assert (=> b!6271013 (= e!3814144 (Cons!64744 (h!71192 (_1!36471 (get!22373 lt!2351791))) (++!14263 (t!378424 (_1!36471 (get!22373 lt!2351791))) (_2!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6271014 () Bool)

(declare-fun res!2586755 () Bool)

(assert (=> b!6271014 (=> (not res!2586755) (not e!3814145))))

(assert (=> b!6271014 (= res!2586755 (= (size!40310 lt!2351925) (+ (size!40310 (_1!36471 (get!22373 lt!2351791))) (size!40310 (_2!36471 (get!22373 lt!2351791))))))))

(declare-fun b!6271012 () Bool)

(assert (=> b!6271012 (= e!3814144 (_2!36471 (get!22373 lt!2351791)))))

(assert (= (and d!1968364 c!1136451) b!6271012))

(assert (= (and d!1968364 (not c!1136451)) b!6271013))

(assert (= (and d!1968364 res!2586754) b!6271014))

(assert (= (and b!6271014 res!2586755) b!6271015))

(declare-fun m!7092980 () Bool)

(assert (=> d!1968364 m!7092980))

(declare-fun m!7092982 () Bool)

(assert (=> d!1968364 m!7092982))

(declare-fun m!7092984 () Bool)

(assert (=> d!1968364 m!7092984))

(declare-fun m!7092986 () Bool)

(assert (=> b!6271013 m!7092986))

(declare-fun m!7092988 () Bool)

(assert (=> b!6271014 m!7092988))

(declare-fun m!7092990 () Bool)

(assert (=> b!6271014 m!7092990))

(declare-fun m!7092992 () Bool)

(assert (=> b!6271014 m!7092992))

(assert (=> b!6269766 d!1968364))

(assert (=> b!6269766 d!1967786))

(declare-fun d!1968368 () Bool)

(declare-fun res!2586756 () Bool)

(declare-fun e!3814146 () Bool)

(assert (=> d!1968368 (=> res!2586756 e!3814146)))

(assert (=> d!1968368 (= res!2586756 ((_ is Nil!64743) lt!2351631))))

(assert (=> d!1968368 (= (forall!15315 lt!2351631 lambda!343341) e!3814146)))

(declare-fun b!6271016 () Bool)

(declare-fun e!3814147 () Bool)

(assert (=> b!6271016 (= e!3814146 e!3814147)))

(declare-fun res!2586757 () Bool)

(assert (=> b!6271016 (=> (not res!2586757) (not e!3814147))))

(assert (=> b!6271016 (= res!2586757 (dynLambda!25600 lambda!343341 (h!71191 lt!2351631)))))

(declare-fun b!6271017 () Bool)

(assert (=> b!6271017 (= e!3814147 (forall!15315 (t!378423 lt!2351631) lambda!343341))))

(assert (= (and d!1968368 (not res!2586756)) b!6271016))

(assert (= (and b!6271016 res!2586757) b!6271017))

(declare-fun b_lambda!238779 () Bool)

(assert (=> (not b_lambda!238779) (not b!6271016)))

(declare-fun m!7092994 () Bool)

(assert (=> b!6271016 m!7092994))

(declare-fun m!7092996 () Bool)

(assert (=> b!6271017 m!7092996))

(assert (=> b!6269124 d!1968368))

(declare-fun d!1968370 () Bool)

(assert (=> d!1968370 (= (isUnion!1033 lt!2351698) ((_ is Union!16189) lt!2351698))))

(assert (=> b!6269225 d!1968370))

(declare-fun bs!1566344 () Bool)

(declare-fun d!1968372 () Bool)

(assert (= bs!1566344 (and d!1968372 d!1967788)))

(declare-fun lambda!343532 () Int)

(assert (=> bs!1566344 (= lambda!343532 lambda!343420)))

(declare-fun bs!1566345 () Bool)

(assert (= bs!1566345 (and d!1968372 d!1968214)))

(assert (=> bs!1566345 (= lambda!343532 lambda!343513)))

(declare-fun bs!1566346 () Bool)

(assert (= bs!1566346 (and d!1968372 d!1967948)))

(assert (=> bs!1566346 (= lambda!343532 lambda!343454)))

(declare-fun bs!1566347 () Bool)

(assert (= bs!1566347 (and d!1968372 b!6270197)))

(assert (=> bs!1566347 (not (= lambda!343532 lambda!343448))))

(declare-fun bs!1566348 () Bool)

(assert (= bs!1566348 (and d!1968372 d!1968022)))

(assert (=> bs!1566348 (= lambda!343532 lambda!343471)))

(declare-fun bs!1566349 () Bool)

(assert (= bs!1566349 (and d!1968372 d!1968178)))

(assert (=> bs!1566349 (= lambda!343532 lambda!343499)))

(declare-fun bs!1566350 () Bool)

(assert (= bs!1566350 (and d!1968372 d!1967658)))

(assert (=> bs!1566350 (= lambda!343532 lambda!343400)))

(declare-fun bs!1566351 () Bool)

(assert (= bs!1566351 (and d!1968372 b!6270195)))

(assert (=> bs!1566351 (not (= lambda!343532 lambda!343446))))

(declare-fun bs!1566352 () Bool)

(assert (= bs!1566352 (and d!1968372 b!6270690)))

(assert (=> bs!1566352 (not (= lambda!343532 lambda!343502))))

(declare-fun bs!1566353 () Bool)

(assert (= bs!1566353 (and d!1968372 b!6270692)))

(assert (=> bs!1566353 (not (= lambda!343532 lambda!343503))))

(declare-fun bs!1566354 () Bool)

(assert (= bs!1566354 (and d!1968372 d!1967514)))

(assert (=> bs!1566354 (= lambda!343532 lambda!343358)))

(declare-fun bs!1566355 () Bool)

(assert (= bs!1566355 (and d!1968372 d!1967540)))

(assert (=> bs!1566355 (= lambda!343532 lambda!343381)))

(declare-fun bs!1566356 () Bool)

(assert (= bs!1566356 (and d!1968372 d!1967516)))

(assert (=> bs!1566356 (= lambda!343532 lambda!343362)))

(declare-fun bs!1566357 () Bool)

(assert (= bs!1566357 (and d!1968372 d!1967528)))

(assert (=> bs!1566357 (= lambda!343532 lambda!343380)))

(declare-fun bs!1566358 () Bool)

(assert (= bs!1566358 (and d!1968372 d!1968088)))

(assert (=> bs!1566358 (= lambda!343532 lambda!343483)))

(declare-fun bs!1566359 () Bool)

(assert (= bs!1566359 (and d!1968372 d!1967668)))

(assert (=> bs!1566359 (= lambda!343532 lambda!343401)))

(declare-fun bs!1566360 () Bool)

(assert (= bs!1566360 (and d!1968372 d!1967524)))

(assert (=> bs!1566360 (= lambda!343532 lambda!343365)))

(declare-fun bs!1566361 () Bool)

(assert (= bs!1566361 (and d!1968372 d!1967958)))

(assert (=> bs!1566361 (= lambda!343532 lambda!343455)))

(declare-fun bs!1566362 () Bool)

(assert (= bs!1566362 (and d!1968372 d!1967934)))

(assert (=> bs!1566362 (= lambda!343532 lambda!343452)))

(declare-fun b!6271018 () Bool)

(declare-fun e!3814158 () Regex!16189)

(assert (=> b!6271018 (= e!3814158 EmptyExpr!16189)))

(declare-fun b!6271019 () Bool)

(declare-fun e!3814154 () Bool)

(declare-fun e!3814148 () Bool)

(assert (=> b!6271019 (= e!3814154 e!3814148)))

(declare-fun c!1136456 () Bool)

(assert (=> b!6271019 (= c!1136456 (isEmpty!36775 (t!378422 lt!2351603)))))

(declare-fun b!6271020 () Bool)

(declare-fun e!3814153 () Regex!16189)

(assert (=> b!6271020 (= e!3814153 e!3814158)))

(declare-fun c!1136457 () Bool)

(assert (=> b!6271020 (= c!1136457 ((_ is Cons!64742) (t!378422 lt!2351603)))))

(declare-fun b!6271023 () Bool)

(declare-fun lt!2351926 () Regex!16189)

(assert (=> b!6271023 (= e!3814148 (isEmptyExpr!1595 lt!2351926))))

(declare-fun b!6271025 () Bool)

(declare-fun e!3814156 () Bool)

(assert (=> b!6271025 (= e!3814156 (isConcat!1118 lt!2351926))))

(declare-fun b!6271026 () Bool)

(assert (=> b!6271026 (= e!3814148 e!3814156)))

(declare-fun c!1136453 () Bool)

(assert (=> b!6271026 (= c!1136453 (isEmpty!36775 (tail!11964 (t!378422 lt!2351603))))))

(declare-fun b!6271029 () Bool)

(assert (=> b!6271029 (= e!3814156 (= lt!2351926 (head!12879 (t!378422 lt!2351603))))))

(declare-fun b!6271031 () Bool)

(declare-fun e!3814159 () Bool)

(assert (=> b!6271031 (= e!3814159 (isEmpty!36775 (t!378422 (t!378422 lt!2351603))))))

(declare-fun b!6271033 () Bool)

(assert (=> b!6271033 (= e!3814158 (Concat!25034 (h!71190 (t!378422 lt!2351603)) (generalisedConcat!1786 (t!378422 (t!378422 lt!2351603)))))))

(assert (=> d!1968372 e!3814154))

(declare-fun res!2586759 () Bool)

(assert (=> d!1968372 (=> (not res!2586759) (not e!3814154))))

(assert (=> d!1968372 (= res!2586759 (validRegex!7925 lt!2351926))))

(assert (=> d!1968372 (= lt!2351926 e!3814153)))

(declare-fun c!1136452 () Bool)

(assert (=> d!1968372 (= c!1136452 e!3814159)))

(declare-fun res!2586761 () Bool)

(assert (=> d!1968372 (=> (not res!2586761) (not e!3814159))))

(assert (=> d!1968372 (= res!2586761 ((_ is Cons!64742) (t!378422 lt!2351603)))))

(assert (=> d!1968372 (forall!15316 (t!378422 lt!2351603) lambda!343532)))

(assert (=> d!1968372 (= (generalisedConcat!1786 (t!378422 lt!2351603)) lt!2351926)))

(declare-fun b!6271027 () Bool)

(assert (=> b!6271027 (= e!3814153 (h!71190 (t!378422 lt!2351603)))))

(assert (= (and d!1968372 res!2586761) b!6271031))

(assert (= (and d!1968372 c!1136452) b!6271027))

(assert (= (and d!1968372 (not c!1136452)) b!6271020))

(assert (= (and b!6271020 c!1136457) b!6271033))

(assert (= (and b!6271020 (not c!1136457)) b!6271018))

(assert (= (and d!1968372 res!2586759) b!6271019))

(assert (= (and b!6271019 c!1136456) b!6271023))

(assert (= (and b!6271019 (not c!1136456)) b!6271026))

(assert (= (and b!6271026 c!1136453) b!6271029))

(assert (= (and b!6271026 (not c!1136453)) b!6271025))

(declare-fun m!7093012 () Bool)

(assert (=> d!1968372 m!7093012))

(declare-fun m!7093016 () Bool)

(assert (=> d!1968372 m!7093016))

(declare-fun m!7093018 () Bool)

(assert (=> b!6271033 m!7093018))

(declare-fun m!7093022 () Bool)

(assert (=> b!6271029 m!7093022))

(assert (=> b!6271019 m!7091478))

(declare-fun m!7093026 () Bool)

(assert (=> b!6271031 m!7093026))

(declare-fun m!7093028 () Bool)

(assert (=> b!6271025 m!7093028))

(declare-fun m!7093030 () Bool)

(assert (=> b!6271026 m!7093030))

(assert (=> b!6271026 m!7093030))

(declare-fun m!7093034 () Bool)

(assert (=> b!6271026 m!7093034))

(declare-fun m!7093036 () Bool)

(assert (=> b!6271023 m!7093036))

(assert (=> b!6269690 d!1968372))

(declare-fun d!1968382 () Bool)

(declare-fun c!1136461 () Bool)

(assert (=> d!1968382 (= c!1136461 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814170 () Bool)

(assert (=> d!1968382 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351629 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814170)))

(declare-fun b!6271053 () Bool)

(assert (=> b!6271053 (= e!3814170 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351629 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6271054 () Bool)

(assert (=> b!6271054 (= e!3814170 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351629 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968382 c!1136461) b!6271053))

(assert (= (and d!1968382 (not c!1136461)) b!6271054))

(assert (=> d!1968382 m!7091032))

(assert (=> d!1968382 m!7092110))

(assert (=> b!6271053 m!7091182))

(declare-fun m!7093040 () Bool)

(assert (=> b!6271053 m!7093040))

(assert (=> b!6271054 m!7091032))

(assert (=> b!6271054 m!7092114))

(assert (=> b!6271054 m!7091182))

(assert (=> b!6271054 m!7092114))

(declare-fun m!7093042 () Bool)

(assert (=> b!6271054 m!7093042))

(assert (=> b!6271054 m!7091032))

(assert (=> b!6271054 m!7092118))

(assert (=> b!6271054 m!7093042))

(assert (=> b!6271054 m!7092118))

(declare-fun m!7093044 () Bool)

(assert (=> b!6271054 m!7093044))

(assert (=> b!6269402 d!1968382))

(declare-fun bs!1566363 () Bool)

(declare-fun d!1968386 () Bool)

(assert (= bs!1566363 (and d!1968386 d!1968078)))

(declare-fun lambda!343533 () Int)

(assert (=> bs!1566363 (= lambda!343533 lambda!343482)))

(declare-fun bs!1566364 () Bool)

(assert (= bs!1566364 (and d!1968386 d!1968016)))

(assert (=> bs!1566364 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343533 lambda!343470))))

(declare-fun bs!1566365 () Bool)

(assert (= bs!1566365 (and d!1968386 b!6268873)))

(assert (=> bs!1566365 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343533 lambda!343319))))

(declare-fun bs!1566366 () Bool)

(assert (= bs!1566366 (and d!1968386 d!1968120)))

(assert (=> bs!1566366 (= lambda!343533 lambda!343487)))

(declare-fun bs!1566367 () Bool)

(assert (= bs!1566367 (and d!1968386 d!1967654)))

(assert (=> bs!1566367 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343533 lambda!343399))))

(declare-fun bs!1566368 () Bool)

(assert (= bs!1566368 (and d!1968386 d!1968110)))

(assert (=> bs!1566368 (= lambda!343533 lambda!343486)))

(declare-fun bs!1566369 () Bool)

(assert (= bs!1566369 (and d!1968386 d!1968270)))

(assert (=> bs!1566369 (= lambda!343533 lambda!343524)))

(declare-fun bs!1566370 () Bool)

(assert (= bs!1566370 (and d!1968386 d!1968318)))

(assert (=> bs!1566370 (= lambda!343533 lambda!343528)))

(declare-fun bs!1566371 () Bool)

(assert (= bs!1566371 (and d!1968386 d!1967706)))

(assert (=> bs!1566371 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343533 lambda!343411))))

(declare-fun bs!1566372 () Bool)

(assert (= bs!1566372 (and d!1968386 d!1967962)))

(assert (=> bs!1566372 (= lambda!343533 lambda!343456)))

(declare-fun bs!1566373 () Bool)

(assert (= bs!1566373 (and d!1968386 d!1968336)))

(assert (=> bs!1566373 (= lambda!343533 lambda!343530)))

(assert (=> d!1968386 true))

(assert (=> d!1968386 (= (derivationStepZipper!2155 lt!2351629 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351629 lambda!343533))))

(declare-fun bs!1566374 () Bool)

(assert (= bs!1566374 d!1968386))

(declare-fun m!7093060 () Bool)

(assert (=> bs!1566374 m!7093060))

(assert (=> b!6269402 d!1968386))

(assert (=> b!6269402 d!1967964))

(assert (=> b!6269402 d!1967966))

(assert (=> d!1967656 d!1967856))

(declare-fun b!6271070 () Bool)

(declare-fun e!3814182 () Bool)

(assert (=> b!6271070 (= e!3814182 (matchR!8372 (derivativeStep!4898 (derivativeStep!4898 r!7292 (head!12878 s!2326)) (head!12878 (tail!11963 s!2326))) (tail!11963 (tail!11963 s!2326))))))

(declare-fun b!6271071 () Bool)

(declare-fun e!3814183 () Bool)

(declare-fun e!3814187 () Bool)

(assert (=> b!6271071 (= e!3814183 e!3814187)))

(declare-fun res!2586789 () Bool)

(assert (=> b!6271071 (=> (not res!2586789) (not e!3814187))))

(declare-fun lt!2351930 () Bool)

(assert (=> b!6271071 (= res!2586789 (not lt!2351930))))

(declare-fun b!6271072 () Bool)

(declare-fun res!2586784 () Bool)

(assert (=> b!6271072 (=> res!2586784 e!3814183)))

(assert (=> b!6271072 (= res!2586784 (not ((_ is ElementMatch!16189) (derivativeStep!4898 r!7292 (head!12878 s!2326)))))))

(declare-fun e!3814188 () Bool)

(assert (=> b!6271072 (= e!3814188 e!3814183)))

(declare-fun b!6271073 () Bool)

(declare-fun e!3814186 () Bool)

(assert (=> b!6271073 (= e!3814186 e!3814188)))

(declare-fun c!1136467 () Bool)

(assert (=> b!6271073 (= c!1136467 ((_ is EmptyLang!16189) (derivativeStep!4898 r!7292 (head!12878 s!2326))))))

(declare-fun b!6271074 () Bool)

(declare-fun call!530409 () Bool)

(assert (=> b!6271074 (= e!3814186 (= lt!2351930 call!530409))))

(declare-fun b!6271076 () Bool)

(declare-fun res!2586782 () Bool)

(declare-fun e!3814185 () Bool)

(assert (=> b!6271076 (=> res!2586782 e!3814185)))

(assert (=> b!6271076 (= res!2586782 (not (isEmpty!36777 (tail!11963 (tail!11963 s!2326)))))))

(declare-fun bm!530404 () Bool)

(assert (=> bm!530404 (= call!530409 (isEmpty!36777 (tail!11963 s!2326)))))

(declare-fun b!6271077 () Bool)

(declare-fun res!2586787 () Bool)

(assert (=> b!6271077 (=> res!2586787 e!3814183)))

(declare-fun e!3814184 () Bool)

(assert (=> b!6271077 (= res!2586787 e!3814184)))

(declare-fun res!2586785 () Bool)

(assert (=> b!6271077 (=> (not res!2586785) (not e!3814184))))

(assert (=> b!6271077 (= res!2586785 lt!2351930)))

(declare-fun b!6271078 () Bool)

(assert (=> b!6271078 (= e!3814182 (nullable!6182 (derivativeStep!4898 r!7292 (head!12878 s!2326))))))

(declare-fun b!6271079 () Bool)

(assert (=> b!6271079 (= e!3814185 (not (= (head!12878 (tail!11963 s!2326)) (c!1135772 (derivativeStep!4898 r!7292 (head!12878 s!2326))))))))

(declare-fun b!6271080 () Bool)

(declare-fun res!2586786 () Bool)

(assert (=> b!6271080 (=> (not res!2586786) (not e!3814184))))

(assert (=> b!6271080 (= res!2586786 (isEmpty!36777 (tail!11963 (tail!11963 s!2326))))))

(declare-fun b!6271081 () Bool)

(assert (=> b!6271081 (= e!3814187 e!3814185)))

(declare-fun res!2586783 () Bool)

(assert (=> b!6271081 (=> res!2586783 e!3814185)))

(assert (=> b!6271081 (= res!2586783 call!530409)))

(declare-fun b!6271075 () Bool)

(assert (=> b!6271075 (= e!3814188 (not lt!2351930))))

(declare-fun d!1968396 () Bool)

(assert (=> d!1968396 e!3814186))

(declare-fun c!1136466 () Bool)

(assert (=> d!1968396 (= c!1136466 ((_ is EmptyExpr!16189) (derivativeStep!4898 r!7292 (head!12878 s!2326))))))

(assert (=> d!1968396 (= lt!2351930 e!3814182)))

(declare-fun c!1136468 () Bool)

(assert (=> d!1968396 (= c!1136468 (isEmpty!36777 (tail!11963 s!2326)))))

(assert (=> d!1968396 (validRegex!7925 (derivativeStep!4898 r!7292 (head!12878 s!2326)))))

(assert (=> d!1968396 (= (matchR!8372 (derivativeStep!4898 r!7292 (head!12878 s!2326)) (tail!11963 s!2326)) lt!2351930)))

(declare-fun b!6271082 () Bool)

(declare-fun res!2586788 () Bool)

(assert (=> b!6271082 (=> (not res!2586788) (not e!3814184))))

(assert (=> b!6271082 (= res!2586788 (not call!530409))))

(declare-fun b!6271083 () Bool)

(assert (=> b!6271083 (= e!3814184 (= (head!12878 (tail!11963 s!2326)) (c!1135772 (derivativeStep!4898 r!7292 (head!12878 s!2326)))))))

(assert (= (and d!1968396 c!1136468) b!6271078))

(assert (= (and d!1968396 (not c!1136468)) b!6271070))

(assert (= (and d!1968396 c!1136466) b!6271074))

(assert (= (and d!1968396 (not c!1136466)) b!6271073))

(assert (= (and b!6271073 c!1136467) b!6271075))

(assert (= (and b!6271073 (not c!1136467)) b!6271072))

(assert (= (and b!6271072 (not res!2586784)) b!6271077))

(assert (= (and b!6271077 res!2586785) b!6271082))

(assert (= (and b!6271082 res!2586788) b!6271080))

(assert (= (and b!6271080 res!2586786) b!6271083))

(assert (= (and b!6271077 (not res!2586787)) b!6271071))

(assert (= (and b!6271071 res!2586789) b!6271081))

(assert (= (and b!6271081 (not res!2586783)) b!6271076))

(assert (= (and b!6271076 (not res!2586782)) b!6271079))

(assert (= (or b!6271074 b!6271081 b!6271082) bm!530404))

(assert (=> d!1968396 m!7091372))

(assert (=> d!1968396 m!7091374))

(assert (=> d!1968396 m!7091378))

(declare-fun m!7093072 () Bool)

(assert (=> d!1968396 m!7093072))

(assert (=> b!6271079 m!7091372))

(assert (=> b!6271079 m!7091844))

(assert (=> b!6271080 m!7091372))

(assert (=> b!6271080 m!7091846))

(assert (=> b!6271080 m!7091846))

(assert (=> b!6271080 m!7091848))

(assert (=> b!6271078 m!7091378))

(declare-fun m!7093078 () Bool)

(assert (=> b!6271078 m!7093078))

(assert (=> b!6271076 m!7091372))

(assert (=> b!6271076 m!7091846))

(assert (=> b!6271076 m!7091846))

(assert (=> b!6271076 m!7091848))

(assert (=> b!6271070 m!7091372))

(assert (=> b!6271070 m!7091844))

(assert (=> b!6271070 m!7091378))

(assert (=> b!6271070 m!7091844))

(declare-fun m!7093080 () Bool)

(assert (=> b!6271070 m!7093080))

(assert (=> b!6271070 m!7091372))

(assert (=> b!6271070 m!7091846))

(assert (=> b!6271070 m!7093080))

(assert (=> b!6271070 m!7091846))

(declare-fun m!7093082 () Bool)

(assert (=> b!6271070 m!7093082))

(assert (=> bm!530404 m!7091372))

(assert (=> bm!530404 m!7091374))

(assert (=> b!6271083 m!7091372))

(assert (=> b!6271083 m!7091844))

(assert (=> b!6269575 d!1968396))

(declare-fun e!3814204 () Regex!16189)

(declare-fun b!6271100 () Bool)

(declare-fun call!530414 () Regex!16189)

(declare-fun call!530416 () Regex!16189)

(assert (=> b!6271100 (= e!3814204 (Union!16189 (Concat!25034 call!530416 (regTwo!32890 r!7292)) call!530414))))

(declare-fun bm!530408 () Bool)

(declare-fun call!530413 () Regex!16189)

(declare-fun c!1136472 () Bool)

(declare-fun c!1136475 () Bool)

(assert (=> bm!530408 (= call!530413 (derivativeStep!4898 (ite c!1136472 (regTwo!32891 r!7292) (ite c!1136475 (reg!16518 r!7292) (regOne!32890 r!7292))) (head!12878 s!2326)))))

(declare-fun bm!530409 () Bool)

(declare-fun call!530415 () Regex!16189)

(assert (=> bm!530409 (= call!530414 call!530415)))

(declare-fun b!6271101 () Bool)

(declare-fun e!3814206 () Regex!16189)

(assert (=> b!6271101 (= e!3814206 EmptyLang!16189)))

(declare-fun bm!530410 () Bool)

(assert (=> bm!530410 (= call!530416 call!530413)))

(declare-fun b!6271102 () Bool)

(assert (=> b!6271102 (= e!3814204 (Union!16189 (Concat!25034 call!530414 (regTwo!32890 r!7292)) EmptyLang!16189))))

(declare-fun b!6271103 () Bool)

(declare-fun e!3814203 () Regex!16189)

(assert (=> b!6271103 (= e!3814203 (Concat!25034 call!530416 r!7292))))

(declare-fun b!6271104 () Bool)

(assert (=> b!6271104 (= c!1136472 ((_ is Union!16189) r!7292))))

(declare-fun e!3814205 () Regex!16189)

(declare-fun e!3814207 () Regex!16189)

(assert (=> b!6271104 (= e!3814205 e!3814207)))

(declare-fun b!6271106 () Bool)

(assert (=> b!6271106 (= e!3814207 (Union!16189 call!530415 call!530413))))

(declare-fun b!6271107 () Bool)

(assert (=> b!6271107 (= e!3814207 e!3814203)))

(assert (=> b!6271107 (= c!1136475 ((_ is Star!16189) r!7292))))

(declare-fun b!6271108 () Bool)

(assert (=> b!6271108 (= e!3814206 e!3814205)))

(declare-fun c!1136471 () Bool)

(assert (=> b!6271108 (= c!1136471 ((_ is ElementMatch!16189) r!7292))))

(declare-fun d!1968406 () Bool)

(declare-fun lt!2351931 () Regex!16189)

(assert (=> d!1968406 (validRegex!7925 lt!2351931)))

(assert (=> d!1968406 (= lt!2351931 e!3814206)))

(declare-fun c!1136473 () Bool)

(assert (=> d!1968406 (= c!1136473 (or ((_ is EmptyExpr!16189) r!7292) ((_ is EmptyLang!16189) r!7292)))))

(assert (=> d!1968406 (validRegex!7925 r!7292)))

(assert (=> d!1968406 (= (derivativeStep!4898 r!7292 (head!12878 s!2326)) lt!2351931)))

(declare-fun b!6271105 () Bool)

(declare-fun c!1136474 () Bool)

(assert (=> b!6271105 (= c!1136474 (nullable!6182 (regOne!32890 r!7292)))))

(assert (=> b!6271105 (= e!3814203 e!3814204)))

(declare-fun b!6271109 () Bool)

(assert (=> b!6271109 (= e!3814205 (ite (= (head!12878 s!2326) (c!1135772 r!7292)) EmptyExpr!16189 EmptyLang!16189))))

(declare-fun bm!530411 () Bool)

(assert (=> bm!530411 (= call!530415 (derivativeStep!4898 (ite c!1136472 (regOne!32891 r!7292) (ite c!1136474 (regTwo!32890 r!7292) (regOne!32890 r!7292))) (head!12878 s!2326)))))

(assert (= (and d!1968406 c!1136473) b!6271101))

(assert (= (and d!1968406 (not c!1136473)) b!6271108))

(assert (= (and b!6271108 c!1136471) b!6271109))

(assert (= (and b!6271108 (not c!1136471)) b!6271104))

(assert (= (and b!6271104 c!1136472) b!6271106))

(assert (= (and b!6271104 (not c!1136472)) b!6271107))

(assert (= (and b!6271107 c!1136475) b!6271103))

(assert (= (and b!6271107 (not c!1136475)) b!6271105))

(assert (= (and b!6271105 c!1136474) b!6271100))

(assert (= (and b!6271105 (not c!1136474)) b!6271102))

(assert (= (or b!6271100 b!6271102) bm!530409))

(assert (= (or b!6271103 b!6271100) bm!530410))

(assert (= (or b!6271106 bm!530410) bm!530408))

(assert (= (or b!6271106 bm!530409) bm!530411))

(assert (=> bm!530408 m!7091370))

(declare-fun m!7093098 () Bool)

(assert (=> bm!530408 m!7093098))

(declare-fun m!7093100 () Bool)

(assert (=> d!1968406 m!7093100))

(assert (=> d!1968406 m!7090762))

(assert (=> b!6271105 m!7091726))

(assert (=> bm!530411 m!7091370))

(declare-fun m!7093102 () Bool)

(assert (=> bm!530411 m!7093102))

(assert (=> b!6269575 d!1968406))

(assert (=> b!6269575 d!1967834))

(assert (=> b!6269575 d!1967836))

(declare-fun bm!530412 () Bool)

(declare-fun call!530417 () Bool)

(declare-fun c!1136476 () Bool)

(assert (=> bm!530412 (= call!530417 (nullable!6182 (ite c!1136476 (regTwo!32891 (regOne!32890 (regOne!32890 r!7292))) (regTwo!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(declare-fun b!6271112 () Bool)

(declare-fun e!3814214 () Bool)

(declare-fun e!3814210 () Bool)

(assert (=> b!6271112 (= e!3814214 e!3814210)))

(declare-fun res!2586803 () Bool)

(declare-fun call!530418 () Bool)

(assert (=> b!6271112 (= res!2586803 call!530418)))

(assert (=> b!6271112 (=> res!2586803 e!3814210)))

(declare-fun d!1968412 () Bool)

(declare-fun res!2586806 () Bool)

(declare-fun e!3814212 () Bool)

(assert (=> d!1968412 (=> res!2586806 e!3814212)))

(assert (=> d!1968412 (= res!2586806 ((_ is EmptyExpr!16189) (regOne!32890 (regOne!32890 r!7292))))))

(assert (=> d!1968412 (= (nullableFct!2133 (regOne!32890 (regOne!32890 r!7292))) e!3814212)))

(declare-fun b!6271113 () Bool)

(declare-fun e!3814213 () Bool)

(assert (=> b!6271113 (= e!3814214 e!3814213)))

(declare-fun res!2586807 () Bool)

(assert (=> b!6271113 (= res!2586807 call!530418)))

(assert (=> b!6271113 (=> (not res!2586807) (not e!3814213))))

(declare-fun b!6271114 () Bool)

(declare-fun e!3814215 () Bool)

(assert (=> b!6271114 (= e!3814212 e!3814215)))

(declare-fun res!2586804 () Bool)

(assert (=> b!6271114 (=> (not res!2586804) (not e!3814215))))

(assert (=> b!6271114 (= res!2586804 (and (not ((_ is EmptyLang!16189) (regOne!32890 (regOne!32890 r!7292)))) (not ((_ is ElementMatch!16189) (regOne!32890 (regOne!32890 r!7292))))))))

(declare-fun b!6271115 () Bool)

(assert (=> b!6271115 (= e!3814210 call!530417)))

(declare-fun b!6271116 () Bool)

(declare-fun e!3814211 () Bool)

(assert (=> b!6271116 (= e!3814211 e!3814214)))

(assert (=> b!6271116 (= c!1136476 ((_ is Union!16189) (regOne!32890 (regOne!32890 r!7292))))))

(declare-fun b!6271117 () Bool)

(assert (=> b!6271117 (= e!3814213 call!530417)))

(declare-fun b!6271118 () Bool)

(assert (=> b!6271118 (= e!3814215 e!3814211)))

(declare-fun res!2586805 () Bool)

(assert (=> b!6271118 (=> res!2586805 e!3814211)))

(assert (=> b!6271118 (= res!2586805 ((_ is Star!16189) (regOne!32890 (regOne!32890 r!7292))))))

(declare-fun bm!530413 () Bool)

(assert (=> bm!530413 (= call!530418 (nullable!6182 (ite c!1136476 (regOne!32891 (regOne!32890 (regOne!32890 r!7292))) (regOne!32890 (regOne!32890 (regOne!32890 r!7292))))))))

(assert (= (and d!1968412 (not res!2586806)) b!6271114))

(assert (= (and b!6271114 res!2586804) b!6271118))

(assert (= (and b!6271118 (not res!2586805)) b!6271116))

(assert (= (and b!6271116 c!1136476) b!6271112))

(assert (= (and b!6271116 (not c!1136476)) b!6271113))

(assert (= (and b!6271112 (not res!2586803)) b!6271115))

(assert (= (and b!6271113 res!2586807) b!6271117))

(assert (= (or b!6271115 b!6271117) bm!530412))

(assert (= (or b!6271112 b!6271113) bm!530413))

(declare-fun m!7093104 () Bool)

(assert (=> bm!530412 m!7093104))

(declare-fun m!7093106 () Bool)

(assert (=> bm!530413 m!7093106))

(assert (=> d!1967650 d!1968412))

(assert (=> bm!530105 d!1967846))

(declare-fun d!1968416 () Bool)

(assert (=> d!1968416 (= (nullable!6182 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))) (nullableFct!2133 (regOne!32890 (regTwo!32890 (regOne!32890 r!7292)))))))

(declare-fun bs!1566378 () Bool)

(assert (= bs!1566378 d!1968416))

(declare-fun m!7093108 () Bool)

(assert (=> bs!1566378 m!7093108))

(assert (=> b!6269718 d!1968416))

(assert (=> d!1967674 d!1967670))

(assert (=> d!1967674 d!1967660))

(declare-fun d!1968418 () Bool)

(assert (=> d!1968418 (= (matchR!8372 lt!2351615 s!2326) (matchZipper!2201 lt!2351636 s!2326))))

(assert (=> d!1968418 true))

(declare-fun _$44!1600 () Unit!158087)

(assert (=> d!1968418 (= (choose!46516 lt!2351636 lt!2351631 lt!2351615 s!2326) _$44!1600)))

(declare-fun bs!1566416 () Bool)

(assert (= bs!1566416 d!1968418))

(assert (=> bs!1566416 m!7090670))

(assert (=> bs!1566416 m!7090666))

(assert (=> d!1967674 d!1968418))

(assert (=> d!1967674 d!1967848))

(declare-fun b!6271126 () Bool)

(declare-fun e!3814220 () Bool)

(assert (=> b!6271126 (= e!3814220 (matchR!8372 (derivativeStep!4898 (regTwo!32890 r!7292) (head!12878 (_2!36471 (get!22373 lt!2351791)))) (tail!11963 (_2!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6271127 () Bool)

(declare-fun e!3814221 () Bool)

(declare-fun e!3814225 () Bool)

(assert (=> b!6271127 (= e!3814221 e!3814225)))

(declare-fun res!2586816 () Bool)

(assert (=> b!6271127 (=> (not res!2586816) (not e!3814225))))

(declare-fun lt!2351932 () Bool)

(assert (=> b!6271127 (= res!2586816 (not lt!2351932))))

(declare-fun b!6271128 () Bool)

(declare-fun res!2586811 () Bool)

(assert (=> b!6271128 (=> res!2586811 e!3814221)))

(assert (=> b!6271128 (= res!2586811 (not ((_ is ElementMatch!16189) (regTwo!32890 r!7292))))))

(declare-fun e!3814226 () Bool)

(assert (=> b!6271128 (= e!3814226 e!3814221)))

(declare-fun b!6271129 () Bool)

(declare-fun e!3814224 () Bool)

(assert (=> b!6271129 (= e!3814224 e!3814226)))

(declare-fun c!1136481 () Bool)

(assert (=> b!6271129 (= c!1136481 ((_ is EmptyLang!16189) (regTwo!32890 r!7292)))))

(declare-fun b!6271130 () Bool)

(declare-fun call!530420 () Bool)

(assert (=> b!6271130 (= e!3814224 (= lt!2351932 call!530420))))

(declare-fun b!6271132 () Bool)

(declare-fun res!2586809 () Bool)

(declare-fun e!3814223 () Bool)

(assert (=> b!6271132 (=> res!2586809 e!3814223)))

(assert (=> b!6271132 (= res!2586809 (not (isEmpty!36777 (tail!11963 (_2!36471 (get!22373 lt!2351791))))))))

(declare-fun bm!530415 () Bool)

(assert (=> bm!530415 (= call!530420 (isEmpty!36777 (_2!36471 (get!22373 lt!2351791))))))

(declare-fun b!6271133 () Bool)

(declare-fun res!2586814 () Bool)

(assert (=> b!6271133 (=> res!2586814 e!3814221)))

(declare-fun e!3814222 () Bool)

(assert (=> b!6271133 (= res!2586814 e!3814222)))

(declare-fun res!2586812 () Bool)

(assert (=> b!6271133 (=> (not res!2586812) (not e!3814222))))

(assert (=> b!6271133 (= res!2586812 lt!2351932)))

(declare-fun b!6271134 () Bool)

(assert (=> b!6271134 (= e!3814220 (nullable!6182 (regTwo!32890 r!7292)))))

(declare-fun b!6271135 () Bool)

(assert (=> b!6271135 (= e!3814223 (not (= (head!12878 (_2!36471 (get!22373 lt!2351791))) (c!1135772 (regTwo!32890 r!7292)))))))

(declare-fun b!6271136 () Bool)

(declare-fun res!2586813 () Bool)

(assert (=> b!6271136 (=> (not res!2586813) (not e!3814222))))

(assert (=> b!6271136 (= res!2586813 (isEmpty!36777 (tail!11963 (_2!36471 (get!22373 lt!2351791)))))))

(declare-fun b!6271137 () Bool)

(assert (=> b!6271137 (= e!3814225 e!3814223)))

(declare-fun res!2586810 () Bool)

(assert (=> b!6271137 (=> res!2586810 e!3814223)))

(assert (=> b!6271137 (= res!2586810 call!530420)))

(declare-fun b!6271131 () Bool)

(assert (=> b!6271131 (= e!3814226 (not lt!2351932))))

(declare-fun d!1968432 () Bool)

(assert (=> d!1968432 e!3814224))

(declare-fun c!1136480 () Bool)

(assert (=> d!1968432 (= c!1136480 ((_ is EmptyExpr!16189) (regTwo!32890 r!7292)))))

(assert (=> d!1968432 (= lt!2351932 e!3814220)))

(declare-fun c!1136482 () Bool)

(assert (=> d!1968432 (= c!1136482 (isEmpty!36777 (_2!36471 (get!22373 lt!2351791))))))

(assert (=> d!1968432 (validRegex!7925 (regTwo!32890 r!7292))))

(assert (=> d!1968432 (= (matchR!8372 (regTwo!32890 r!7292) (_2!36471 (get!22373 lt!2351791))) lt!2351932)))

(declare-fun b!6271138 () Bool)

(declare-fun res!2586815 () Bool)

(assert (=> b!6271138 (=> (not res!2586815) (not e!3814222))))

(assert (=> b!6271138 (= res!2586815 (not call!530420))))

(declare-fun b!6271139 () Bool)

(assert (=> b!6271139 (= e!3814222 (= (head!12878 (_2!36471 (get!22373 lt!2351791))) (c!1135772 (regTwo!32890 r!7292))))))

(assert (= (and d!1968432 c!1136482) b!6271134))

(assert (= (and d!1968432 (not c!1136482)) b!6271126))

(assert (= (and d!1968432 c!1136480) b!6271130))

(assert (= (and d!1968432 (not c!1136480)) b!6271129))

(assert (= (and b!6271129 c!1136481) b!6271131))

(assert (= (and b!6271129 (not c!1136481)) b!6271128))

(assert (= (and b!6271128 (not res!2586811)) b!6271133))

(assert (= (and b!6271133 res!2586812) b!6271138))

(assert (= (and b!6271138 res!2586815) b!6271136))

(assert (= (and b!6271136 res!2586813) b!6271139))

(assert (= (and b!6271133 (not res!2586814)) b!6271127))

(assert (= (and b!6271127 res!2586816) b!6271137))

(assert (= (and b!6271137 (not res!2586810)) b!6271132))

(assert (= (and b!6271132 (not res!2586809)) b!6271135))

(assert (= (or b!6271130 b!6271137 b!6271138) bm!530415))

(declare-fun m!7093126 () Bool)

(assert (=> d!1968432 m!7093126))

(assert (=> d!1968432 m!7092554))

(declare-fun m!7093128 () Bool)

(assert (=> b!6271135 m!7093128))

(declare-fun m!7093130 () Bool)

(assert (=> b!6271136 m!7093130))

(assert (=> b!6271136 m!7093130))

(declare-fun m!7093132 () Bool)

(assert (=> b!6271136 m!7093132))

(assert (=> b!6271134 m!7092562))

(assert (=> b!6271132 m!7093130))

(assert (=> b!6271132 m!7093130))

(assert (=> b!6271132 m!7093132))

(assert (=> b!6271126 m!7093128))

(assert (=> b!6271126 m!7093128))

(declare-fun m!7093134 () Bool)

(assert (=> b!6271126 m!7093134))

(assert (=> b!6271126 m!7093130))

(assert (=> b!6271126 m!7093134))

(assert (=> b!6271126 m!7093130))

(declare-fun m!7093136 () Bool)

(assert (=> b!6271126 m!7093136))

(assert (=> bm!530415 m!7093126))

(assert (=> b!6271139 m!7093128))

(assert (=> b!6269774 d!1968432))

(assert (=> b!6269774 d!1967786))

(declare-fun b!6271140 () Bool)

(declare-fun e!3814227 () Bool)

(assert (=> b!6271140 (= e!3814227 (nullable!6182 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))))))

(declare-fun b!6271141 () Bool)

(declare-fun e!3814228 () (InoxSet Context!11146))

(declare-fun call!530421 () (InoxSet Context!11146))

(assert (=> b!6271141 (= e!3814228 call!530421)))

(declare-fun d!1968434 () Bool)

(declare-fun c!1136483 () Bool)

(assert (=> d!1968434 (= c!1136483 e!3814227)))

(declare-fun res!2586817 () Bool)

(assert (=> d!1968434 (=> (not res!2586817) (not e!3814227))))

(assert (=> d!1968434 (= res!2586817 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))))

(declare-fun e!3814229 () (InoxSet Context!11146))

(assert (=> d!1968434 (= (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))) (h!71192 s!2326)) e!3814229)))

(declare-fun b!6271142 () Bool)

(assert (=> b!6271142 (= e!3814229 ((_ map or) call!530421 (derivationStepZipperUp!1363 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))) (h!71192 s!2326))))))

(declare-fun bm!530416 () Bool)

(assert (=> bm!530416 (= call!530421 (derivationStepZipperDown!1437 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))) (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343))))))))))) (h!71192 s!2326)))))

(declare-fun b!6271143 () Bool)

(assert (=> b!6271143 (= e!3814228 ((as const (Array Context!11146 Bool)) false))))

(declare-fun b!6271144 () Bool)

(assert (=> b!6271144 (= e!3814229 e!3814228)))

(declare-fun c!1136484 () Bool)

(assert (=> b!6271144 (= c!1136484 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (Cons!64742 (h!71190 (exprs!6073 (h!71191 zl!343))) (t!378422 (exprs!6073 (h!71191 zl!343)))))))))))))

(assert (= (and d!1968434 res!2586817) b!6271140))

(assert (= (and d!1968434 c!1136483) b!6271142))

(assert (= (and d!1968434 (not c!1136483)) b!6271144))

(assert (= (and b!6271144 c!1136484) b!6271141))

(assert (= (and b!6271144 (not c!1136484)) b!6271143))

(assert (= (or b!6271142 b!6271141) bm!530416))

(declare-fun m!7093142 () Bool)

(assert (=> b!6271140 m!7093142))

(declare-fun m!7093146 () Bool)

(assert (=> b!6271142 m!7093146))

(declare-fun m!7093150 () Bool)

(assert (=> bm!530416 m!7093150))

(assert (=> b!6269017 d!1968434))

(declare-fun bm!530417 () Bool)

(declare-fun call!530427 () (InoxSet Context!11146))

(declare-fun call!530423 () (InoxSet Context!11146))

(assert (=> bm!530417 (= call!530427 call!530423)))

(declare-fun c!1136487 () Bool)

(declare-fun c!1136488 () Bool)

(declare-fun bm!530418 () Bool)

(declare-fun call!530426 () List!64866)

(assert (=> bm!530418 (= call!530426 ($colon$colon!2053 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351625)))) (ite (or c!1136488 c!1136487) (regTwo!32890 (h!71190 (exprs!6073 lt!2351625))) (h!71190 (exprs!6073 lt!2351625)))))))

(declare-fun d!1968442 () Bool)

(declare-fun c!1136486 () Bool)

(assert (=> d!1968442 (= c!1136486 (and ((_ is ElementMatch!16189) (h!71190 (exprs!6073 lt!2351625))) (= (c!1135772 (h!71190 (exprs!6073 lt!2351625))) (h!71192 s!2326))))))

(declare-fun e!3814236 () (InoxSet Context!11146))

(assert (=> d!1968442 (= (derivationStepZipperDown!1437 (h!71190 (exprs!6073 lt!2351625)) (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (h!71192 s!2326)) e!3814236)))

(declare-fun b!6271147 () Bool)

(declare-fun e!3814233 () (InoxSet Context!11146))

(declare-fun call!530422 () (InoxSet Context!11146))

(assert (=> b!6271147 (= e!3814233 ((_ map or) call!530422 call!530427))))

(declare-fun b!6271148 () Bool)

(declare-fun e!3814234 () (InoxSet Context!11146))

(assert (=> b!6271148 (= e!3814233 e!3814234)))

(assert (=> b!6271148 (= c!1136487 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351625))))))

(declare-fun b!6271149 () Bool)

(declare-fun e!3814235 () (InoxSet Context!11146))

(assert (=> b!6271149 (= e!3814235 ((as const (Array Context!11146 Bool)) false))))

(declare-fun bm!530419 () Bool)

(declare-fun call!530424 () List!64866)

(assert (=> bm!530419 (= call!530424 call!530426)))

(declare-fun b!6271150 () Bool)

(declare-fun call!530425 () (InoxSet Context!11146))

(assert (=> b!6271150 (= e!3814234 call!530425)))

(declare-fun bm!530420 () Bool)

(declare-fun c!1136490 () Bool)

(assert (=> bm!530420 (= call!530423 (derivationStepZipperDown!1437 (ite c!1136490 (regTwo!32891 (h!71190 (exprs!6073 lt!2351625))) (ite c!1136488 (regTwo!32890 (h!71190 (exprs!6073 lt!2351625))) (ite c!1136487 (regOne!32890 (h!71190 (exprs!6073 lt!2351625))) (reg!16518 (h!71190 (exprs!6073 lt!2351625)))))) (ite (or c!1136490 c!1136488) (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (Context!11147 call!530424)) (h!71192 s!2326)))))

(declare-fun bm!530421 () Bool)

(assert (=> bm!530421 (= call!530422 (derivationStepZipperDown!1437 (ite c!1136490 (regOne!32891 (h!71190 (exprs!6073 lt!2351625))) (regOne!32890 (h!71190 (exprs!6073 lt!2351625)))) (ite c!1136490 (Context!11147 (t!378422 (exprs!6073 lt!2351625))) (Context!11147 call!530426)) (h!71192 s!2326)))))

(declare-fun b!6271151 () Bool)

(declare-fun e!3814232 () Bool)

(assert (=> b!6271151 (= e!3814232 (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 lt!2351625)))))))

(declare-fun b!6271152 () Bool)

(declare-fun c!1136489 () Bool)

(assert (=> b!6271152 (= c!1136489 ((_ is Star!16189) (h!71190 (exprs!6073 lt!2351625))))))

(assert (=> b!6271152 (= e!3814234 e!3814235)))

(declare-fun b!6271153 () Bool)

(assert (=> b!6271153 (= c!1136488 e!3814232)))

(declare-fun res!2586819 () Bool)

(assert (=> b!6271153 (=> (not res!2586819) (not e!3814232))))

(assert (=> b!6271153 (= res!2586819 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351625))))))

(declare-fun e!3814231 () (InoxSet Context!11146))

(assert (=> b!6271153 (= e!3814231 e!3814233)))

(declare-fun b!6271154 () Bool)

(assert (=> b!6271154 (= e!3814236 (store ((as const (Array Context!11146 Bool)) false) (Context!11147 (t!378422 (exprs!6073 lt!2351625))) true))))

(declare-fun b!6271155 () Bool)

(assert (=> b!6271155 (= e!3814231 ((_ map or) call!530422 call!530423))))

(declare-fun b!6271156 () Bool)

(assert (=> b!6271156 (= e!3814235 call!530425)))

(declare-fun bm!530422 () Bool)

(assert (=> bm!530422 (= call!530425 call!530427)))

(declare-fun b!6271157 () Bool)

(assert (=> b!6271157 (= e!3814236 e!3814231)))

(assert (=> b!6271157 (= c!1136490 ((_ is Union!16189) (h!71190 (exprs!6073 lt!2351625))))))

(assert (= (and d!1968442 c!1136486) b!6271154))

(assert (= (and d!1968442 (not c!1136486)) b!6271157))

(assert (= (and b!6271157 c!1136490) b!6271155))

(assert (= (and b!6271157 (not c!1136490)) b!6271153))

(assert (= (and b!6271153 res!2586819) b!6271151))

(assert (= (and b!6271153 c!1136488) b!6271147))

(assert (= (and b!6271153 (not c!1136488)) b!6271148))

(assert (= (and b!6271148 c!1136487) b!6271150))

(assert (= (and b!6271148 (not c!1136487)) b!6271152))

(assert (= (and b!6271152 c!1136489) b!6271156))

(assert (= (and b!6271152 (not c!1136489)) b!6271149))

(assert (= (or b!6271150 b!6271156) bm!530419))

(assert (= (or b!6271150 b!6271156) bm!530422))

(assert (= (or b!6271147 bm!530419) bm!530418))

(assert (= (or b!6271147 bm!530422) bm!530417))

(assert (= (or b!6271155 bm!530417) bm!530420))

(assert (= (or b!6271155 b!6271147) bm!530421))

(declare-fun m!7093152 () Bool)

(assert (=> bm!530421 m!7093152))

(declare-fun m!7093154 () Bool)

(assert (=> b!6271154 m!7093154))

(declare-fun m!7093156 () Bool)

(assert (=> b!6271151 m!7093156))

(declare-fun m!7093158 () Bool)

(assert (=> bm!530418 m!7093158))

(declare-fun m!7093160 () Bool)

(assert (=> bm!530420 m!7093160))

(assert (=> bm!530021 d!1968442))

(declare-fun b!6271158 () Bool)

(declare-fun e!3814242 () Bool)

(declare-fun e!3814239 () Bool)

(assert (=> b!6271158 (= e!3814242 e!3814239)))

(declare-fun c!1136492 () Bool)

(assert (=> b!6271158 (= c!1136492 ((_ is Star!16189) lt!2351739))))

(declare-fun d!1968444 () Bool)

(declare-fun res!2586823 () Bool)

(assert (=> d!1968444 (=> res!2586823 e!3814242)))

(assert (=> d!1968444 (= res!2586823 ((_ is ElementMatch!16189) lt!2351739))))

(assert (=> d!1968444 (= (validRegex!7925 lt!2351739) e!3814242)))

(declare-fun bm!530423 () Bool)

(declare-fun call!530428 () Bool)

(declare-fun call!530429 () Bool)

(assert (=> bm!530423 (= call!530428 call!530429)))

(declare-fun b!6271159 () Bool)

(declare-fun e!3814243 () Bool)

(assert (=> b!6271159 (= e!3814239 e!3814243)))

(declare-fun c!1136491 () Bool)

(assert (=> b!6271159 (= c!1136491 ((_ is Union!16189) lt!2351739))))

(declare-fun b!6271160 () Bool)

(declare-fun e!3814241 () Bool)

(declare-fun e!3814238 () Bool)

(assert (=> b!6271160 (= e!3814241 e!3814238)))

(declare-fun res!2586821 () Bool)

(assert (=> b!6271160 (=> (not res!2586821) (not e!3814238))))

(declare-fun call!530430 () Bool)

(assert (=> b!6271160 (= res!2586821 call!530430)))

(declare-fun b!6271161 () Bool)

(declare-fun e!3814240 () Bool)

(assert (=> b!6271161 (= e!3814240 call!530429)))

(declare-fun b!6271162 () Bool)

(declare-fun res!2586820 () Bool)

(declare-fun e!3814237 () Bool)

(assert (=> b!6271162 (=> (not res!2586820) (not e!3814237))))

(assert (=> b!6271162 (= res!2586820 call!530430)))

(assert (=> b!6271162 (= e!3814243 e!3814237)))

(declare-fun bm!530424 () Bool)

(assert (=> bm!530424 (= call!530430 (validRegex!7925 (ite c!1136491 (regOne!32891 lt!2351739) (regOne!32890 lt!2351739))))))

(declare-fun b!6271163 () Bool)

(declare-fun res!2586822 () Bool)

(assert (=> b!6271163 (=> res!2586822 e!3814241)))

(assert (=> b!6271163 (= res!2586822 (not ((_ is Concat!25034) lt!2351739)))))

(assert (=> b!6271163 (= e!3814243 e!3814241)))

(declare-fun b!6271164 () Bool)

(assert (=> b!6271164 (= e!3814238 call!530428)))

(declare-fun b!6271165 () Bool)

(assert (=> b!6271165 (= e!3814237 call!530428)))

(declare-fun b!6271166 () Bool)

(assert (=> b!6271166 (= e!3814239 e!3814240)))

(declare-fun res!2586824 () Bool)

(assert (=> b!6271166 (= res!2586824 (not (nullable!6182 (reg!16518 lt!2351739))))))

(assert (=> b!6271166 (=> (not res!2586824) (not e!3814240))))

(declare-fun bm!530425 () Bool)

(assert (=> bm!530425 (= call!530429 (validRegex!7925 (ite c!1136492 (reg!16518 lt!2351739) (ite c!1136491 (regTwo!32891 lt!2351739) (regTwo!32890 lt!2351739)))))))

(assert (= (and d!1968444 (not res!2586823)) b!6271158))

(assert (= (and b!6271158 c!1136492) b!6271166))

(assert (= (and b!6271158 (not c!1136492)) b!6271159))

(assert (= (and b!6271166 res!2586824) b!6271161))

(assert (= (and b!6271159 c!1136491) b!6271162))

(assert (= (and b!6271159 (not c!1136491)) b!6271163))

(assert (= (and b!6271162 res!2586820) b!6271165))

(assert (= (and b!6271163 (not res!2586822)) b!6271160))

(assert (= (and b!6271160 res!2586821) b!6271164))

(assert (= (or b!6271165 b!6271164) bm!530423))

(assert (= (or b!6271162 b!6271160) bm!530424))

(assert (= (or b!6271161 bm!530423) bm!530425))

(declare-fun m!7093164 () Bool)

(assert (=> bm!530424 m!7093164))

(declare-fun m!7093166 () Bool)

(assert (=> b!6271166 m!7093166))

(declare-fun m!7093170 () Bool)

(assert (=> bm!530425 m!7093170))

(assert (=> d!1967572 d!1968444))

(assert (=> d!1967572 d!1967514))

(assert (=> d!1967572 d!1967516))

(assert (=> bs!1565364 d!1967548))

(declare-fun d!1968448 () Bool)

(assert (=> d!1968448 (= (isEmptyExpr!1595 lt!2351724) ((_ is EmptyExpr!16189) lt!2351724))))

(assert (=> b!6269290 d!1968448))

(declare-fun d!1968452 () Bool)

(assert (=> d!1968452 (= ($colon$colon!2053 (exprs!6073 lt!2351625) (ite (or c!1135838 c!1135837) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71190 (exprs!6073 (h!71191 zl!343))))) (Cons!64742 (ite (or c!1135838 c!1135837) (regTwo!32890 (h!71190 (exprs!6073 (h!71191 zl!343)))) (h!71190 (exprs!6073 (h!71191 zl!343)))) (exprs!6073 lt!2351625)))))

(assert (=> bm!530045 d!1968452))

(declare-fun d!1968454 () Bool)

(declare-fun res!2586827 () Bool)

(declare-fun e!3814250 () Bool)

(assert (=> d!1968454 (=> res!2586827 e!3814250)))

(assert (=> d!1968454 (= res!2586827 ((_ is Nil!64743) lt!2351738))))

(assert (=> d!1968454 (= (noDuplicate!2022 lt!2351738) e!3814250)))

(declare-fun b!6271177 () Bool)

(declare-fun e!3814251 () Bool)

(assert (=> b!6271177 (= e!3814250 e!3814251)))

(declare-fun res!2586828 () Bool)

(assert (=> b!6271177 (=> (not res!2586828) (not e!3814251))))

(assert (=> b!6271177 (= res!2586828 (not (contains!20120 (t!378423 lt!2351738) (h!71191 lt!2351738))))))

(declare-fun b!6271178 () Bool)

(assert (=> b!6271178 (= e!3814251 (noDuplicate!2022 (t!378423 lt!2351738)))))

(assert (= (and d!1968454 (not res!2586827)) b!6271177))

(assert (= (and b!6271177 res!2586828) b!6271178))

(declare-fun m!7093178 () Bool)

(assert (=> b!6271177 m!7093178))

(declare-fun m!7093182 () Bool)

(assert (=> b!6271178 m!7093182))

(assert (=> d!1967560 d!1968454))

(declare-fun d!1968456 () Bool)

(declare-fun e!3814252 () Bool)

(assert (=> d!1968456 e!3814252))

(declare-fun res!2586829 () Bool)

(assert (=> d!1968456 (=> (not res!2586829) (not e!3814252))))

(declare-fun res!2586830 () List!64867)

(assert (=> d!1968456 (= res!2586829 (noDuplicate!2022 res!2586830))))

(declare-fun e!3814254 () Bool)

(assert (=> d!1968456 e!3814254))

(assert (=> d!1968456 (= (choose!46514 lt!2351624) res!2586830)))

(declare-fun b!6271180 () Bool)

(declare-fun e!3814253 () Bool)

(declare-fun tp!1748730 () Bool)

(assert (=> b!6271180 (= e!3814253 tp!1748730)))

(declare-fun tp!1748729 () Bool)

(declare-fun b!6271179 () Bool)

(assert (=> b!6271179 (= e!3814254 (and (inv!83719 (h!71191 res!2586830)) e!3814253 tp!1748729))))

(declare-fun b!6271181 () Bool)

(assert (=> b!6271181 (= e!3814252 (= (content!12159 res!2586830) lt!2351624))))

(assert (= b!6271179 b!6271180))

(assert (= (and d!1968456 ((_ is Cons!64743) res!2586830)) b!6271179))

(assert (= (and d!1968456 res!2586829) b!6271181))

(declare-fun m!7093186 () Bool)

(assert (=> d!1968456 m!7093186))

(declare-fun m!7093188 () Bool)

(assert (=> b!6271179 m!7093188))

(declare-fun m!7093190 () Bool)

(assert (=> b!6271181 m!7093190))

(assert (=> d!1967560 d!1968456))

(declare-fun d!1968460 () Bool)

(declare-fun lt!2351933 () Int)

(assert (=> d!1968460 (>= lt!2351933 0)))

(declare-fun e!3814258 () Int)

(assert (=> d!1968460 (= lt!2351933 e!3814258)))

(declare-fun c!1136499 () Bool)

(assert (=> d!1968460 (= c!1136499 ((_ is Cons!64742) (exprs!6073 (h!71191 lt!2351631))))))

(assert (=> d!1968460 (= (contextDepthTotal!312 (h!71191 lt!2351631)) lt!2351933)))

(declare-fun b!6271187 () Bool)

(assert (=> b!6271187 (= e!3814258 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 (h!71191 lt!2351631)))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (h!71191 lt!2351631)))))))))

(declare-fun b!6271188 () Bool)

(assert (=> b!6271188 (= e!3814258 1)))

(assert (= (and d!1968460 c!1136499) b!6271187))

(assert (= (and d!1968460 (not c!1136499)) b!6271188))

(declare-fun m!7093198 () Bool)

(assert (=> b!6271187 m!7093198))

(declare-fun m!7093200 () Bool)

(assert (=> b!6271187 m!7093200))

(assert (=> b!6269423 d!1968460))

(declare-fun d!1968464 () Bool)

(declare-fun lt!2351934 () Int)

(assert (=> d!1968464 (>= lt!2351934 0)))

(declare-fun e!3814262 () Int)

(assert (=> d!1968464 (= lt!2351934 e!3814262)))

(declare-fun c!1136502 () Bool)

(assert (=> d!1968464 (= c!1136502 ((_ is Cons!64743) (t!378423 lt!2351631)))))

(assert (=> d!1968464 (= (zipperDepthTotal!342 (t!378423 lt!2351631)) lt!2351934)))

(declare-fun b!6271194 () Bool)

(assert (=> b!6271194 (= e!3814262 (+ (contextDepthTotal!312 (h!71191 (t!378423 lt!2351631))) (zipperDepthTotal!342 (t!378423 (t!378423 lt!2351631)))))))

(declare-fun b!6271195 () Bool)

(assert (=> b!6271195 (= e!3814262 0)))

(assert (= (and d!1968464 c!1136502) b!6271194))

(assert (= (and d!1968464 (not c!1136502)) b!6271195))

(declare-fun m!7093202 () Bool)

(assert (=> b!6271194 m!7093202))

(declare-fun m!7093204 () Bool)

(assert (=> b!6271194 m!7093204))

(assert (=> b!6269423 d!1968464))

(assert (=> d!1967584 d!1967856))

(assert (=> d!1967522 d!1967856))

(assert (=> b!6269098 d!1967474))

(declare-fun d!1968466 () Bool)

(assert (=> d!1968466 (= (nullable!6182 (h!71190 (exprs!6073 lt!2351628))) (nullableFct!2133 (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun bs!1566452 () Bool)

(assert (= bs!1566452 d!1968466))

(declare-fun m!7093212 () Bool)

(assert (=> bs!1566452 m!7093212))

(assert (=> b!6269787 d!1968466))

(declare-fun d!1968470 () Bool)

(assert (=> d!1968470 true))

(declare-fun setRes!42647 () Bool)

(assert (=> d!1968470 setRes!42647))

(declare-fun condSetEmpty!42647 () Bool)

(declare-fun res!2586833 () (InoxSet Context!11146))

(assert (=> d!1968470 (= condSetEmpty!42647 (= res!2586833 ((as const (Array Context!11146 Bool)) false)))))

(assert (=> d!1968470 (= (choose!46508 lt!2351636 lambda!343319) res!2586833)))

(declare-fun setIsEmpty!42647 () Bool)

(assert (=> setIsEmpty!42647 setRes!42647))

(declare-fun e!3814263 () Bool)

(declare-fun setElem!42647 () Context!11146)

(declare-fun tp!1748731 () Bool)

(declare-fun setNonEmpty!42647 () Bool)

(assert (=> setNonEmpty!42647 (= setRes!42647 (and tp!1748731 (inv!83719 setElem!42647) e!3814263))))

(declare-fun setRest!42647 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42647 (= res!2586833 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42647 true) setRest!42647))))

(declare-fun b!6271196 () Bool)

(declare-fun tp!1748732 () Bool)

(assert (=> b!6271196 (= e!3814263 tp!1748732)))

(assert (= (and d!1968470 condSetEmpty!42647) setIsEmpty!42647))

(assert (= (and d!1968470 (not condSetEmpty!42647)) setNonEmpty!42647))

(assert (= setNonEmpty!42647 b!6271196))

(declare-fun m!7093214 () Bool)

(assert (=> setNonEmpty!42647 m!7093214))

(assert (=> d!1967704 d!1968470))

(declare-fun b!6271197 () Bool)

(declare-fun e!3814265 () Int)

(declare-fun call!530436 () Int)

(assert (=> b!6271197 (= e!3814265 (+ 1 call!530436))))

(declare-fun b!6271198 () Bool)

(declare-fun e!3814267 () Int)

(declare-fun call!530437 () Int)

(declare-fun call!530435 () Int)

(assert (=> b!6271198 (= e!3814267 (+ 1 call!530437 call!530435))))

(declare-fun b!6271199 () Bool)

(declare-fun e!3814266 () Int)

(assert (=> b!6271199 (= e!3814266 (+ 1 call!530437 call!530435))))

(declare-fun b!6271200 () Bool)

(declare-fun c!1136505 () Bool)

(assert (=> b!6271200 (= c!1136505 ((_ is Union!16189) (h!71190 (exprs!6073 lt!2351628))))))

(assert (=> b!6271200 (= e!3814265 e!3814266)))

(declare-fun bm!530430 () Bool)

(assert (=> bm!530430 (= call!530437 (regexDepthTotal!164 (ite c!1136505 (regOne!32891 (h!71190 (exprs!6073 lt!2351628))) (regOne!32890 (h!71190 (exprs!6073 lt!2351628))))))))

(declare-fun b!6271201 () Bool)

(assert (=> b!6271201 (= e!3814267 1)))

(declare-fun b!6271202 () Bool)

(assert (=> b!6271202 (= e!3814266 e!3814267)))

(declare-fun c!1136504 () Bool)

(assert (=> b!6271202 (= c!1136504 ((_ is Concat!25034) (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun b!6271203 () Bool)

(declare-fun e!3814264 () Int)

(assert (=> b!6271203 (= e!3814264 1)))

(declare-fun d!1968474 () Bool)

(declare-fun lt!2351935 () Int)

(assert (=> d!1968474 (> lt!2351935 0)))

(assert (=> d!1968474 (= lt!2351935 e!3814264)))

(declare-fun c!1136506 () Bool)

(assert (=> d!1968474 (= c!1136506 ((_ is ElementMatch!16189) (h!71190 (exprs!6073 lt!2351628))))))

(assert (=> d!1968474 (= (regexDepthTotal!164 (h!71190 (exprs!6073 lt!2351628))) lt!2351935)))

(declare-fun b!6271204 () Bool)

(assert (=> b!6271204 (= e!3814264 e!3814265)))

(declare-fun c!1136503 () Bool)

(assert (=> b!6271204 (= c!1136503 ((_ is Star!16189) (h!71190 (exprs!6073 lt!2351628))))))

(declare-fun bm!530431 () Bool)

(assert (=> bm!530431 (= call!530436 (regexDepthTotal!164 (ite c!1136503 (reg!16518 (h!71190 (exprs!6073 lt!2351628))) (ite c!1136505 (regTwo!32891 (h!71190 (exprs!6073 lt!2351628))) (regTwo!32890 (h!71190 (exprs!6073 lt!2351628)))))))))

(declare-fun bm!530432 () Bool)

(assert (=> bm!530432 (= call!530435 call!530436)))

(assert (= (and d!1968474 c!1136506) b!6271203))

(assert (= (and d!1968474 (not c!1136506)) b!6271204))

(assert (= (and b!6271204 c!1136503) b!6271197))

(assert (= (and b!6271204 (not c!1136503)) b!6271200))

(assert (= (and b!6271200 c!1136505) b!6271199))

(assert (= (and b!6271200 (not c!1136505)) b!6271202))

(assert (= (and b!6271202 c!1136504) b!6271198))

(assert (= (and b!6271202 (not c!1136504)) b!6271201))

(assert (= (or b!6271199 b!6271198) bm!530432))

(assert (= (or b!6271199 b!6271198) bm!530430))

(assert (= (or b!6271197 bm!530432) bm!530431))

(declare-fun m!7093216 () Bool)

(assert (=> bm!530430 m!7093216))

(declare-fun m!7093218 () Bool)

(assert (=> bm!530431 m!7093218))

(assert (=> b!6269744 d!1968474))

(declare-fun d!1968476 () Bool)

(declare-fun lt!2351936 () Int)

(assert (=> d!1968476 (>= lt!2351936 0)))

(declare-fun e!3814268 () Int)

(assert (=> d!1968476 (= lt!2351936 e!3814268)))

(declare-fun c!1136507 () Bool)

(assert (=> d!1968476 (= c!1136507 ((_ is Cons!64742) (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628))))))))

(assert (=> d!1968476 (= (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))) lt!2351936)))

(declare-fun b!6271205 () Bool)

(assert (=> b!6271205 (= e!3814268 (+ (regexDepthTotal!164 (h!71190 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))))) (contextDepthTotal!312 (Context!11147 (t!378422 (exprs!6073 (Context!11147 (t!378422 (exprs!6073 lt!2351628)))))))))))

(declare-fun b!6271206 () Bool)

(assert (=> b!6271206 (= e!3814268 1)))

(assert (= (and d!1968476 c!1136507) b!6271205))

(assert (= (and d!1968476 (not c!1136507)) b!6271206))

(declare-fun m!7093220 () Bool)

(assert (=> b!6271205 m!7093220))

(declare-fun m!7093222 () Bool)

(assert (=> b!6271205 m!7093222))

(assert (=> b!6269744 d!1968476))

(declare-fun d!1968478 () Bool)

(assert (=> d!1968478 (= (head!12879 (exprs!6073 (h!71191 zl!343))) (h!71190 (exprs!6073 (h!71191 zl!343))))))

(assert (=> b!6269294 d!1968478))

(declare-fun d!1968480 () Bool)

(declare-fun c!1136508 () Bool)

(assert (=> d!1968480 (= c!1136508 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814269 () Bool)

(assert (=> d!1968480 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351621 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814269)))

(declare-fun b!6271207 () Bool)

(assert (=> b!6271207 (= e!3814269 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351621 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6271208 () Bool)

(assert (=> b!6271208 (= e!3814269 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351621 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968480 c!1136508) b!6271207))

(assert (= (and d!1968480 (not c!1136508)) b!6271208))

(assert (=> d!1968480 m!7091032))

(assert (=> d!1968480 m!7092110))

(assert (=> b!6271207 m!7091246))

(declare-fun m!7093224 () Bool)

(assert (=> b!6271207 m!7093224))

(assert (=> b!6271208 m!7091032))

(assert (=> b!6271208 m!7092114))

(assert (=> b!6271208 m!7091246))

(assert (=> b!6271208 m!7092114))

(declare-fun m!7093226 () Bool)

(assert (=> b!6271208 m!7093226))

(assert (=> b!6271208 m!7091032))

(assert (=> b!6271208 m!7092118))

(assert (=> b!6271208 m!7093226))

(assert (=> b!6271208 m!7092118))

(declare-fun m!7093228 () Bool)

(assert (=> b!6271208 m!7093228))

(assert (=> b!6269432 d!1968480))

(declare-fun bs!1566453 () Bool)

(declare-fun d!1968482 () Bool)

(assert (= bs!1566453 (and d!1968482 d!1968386)))

(declare-fun lambda!343538 () Int)

(assert (=> bs!1566453 (= lambda!343538 lambda!343533)))

(declare-fun bs!1566455 () Bool)

(assert (= bs!1566455 (and d!1968482 d!1968078)))

(assert (=> bs!1566455 (= lambda!343538 lambda!343482)))

(declare-fun bs!1566456 () Bool)

(assert (= bs!1566456 (and d!1968482 d!1968016)))

(assert (=> bs!1566456 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343538 lambda!343470))))

(declare-fun bs!1566457 () Bool)

(assert (= bs!1566457 (and d!1968482 b!6268873)))

(assert (=> bs!1566457 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343538 lambda!343319))))

(declare-fun bs!1566458 () Bool)

(assert (= bs!1566458 (and d!1968482 d!1968120)))

(assert (=> bs!1566458 (= lambda!343538 lambda!343487)))

(declare-fun bs!1566459 () Bool)

(assert (= bs!1566459 (and d!1968482 d!1967654)))

(assert (=> bs!1566459 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343538 lambda!343399))))

(declare-fun bs!1566460 () Bool)

(assert (= bs!1566460 (and d!1968482 d!1968110)))

(assert (=> bs!1566460 (= lambda!343538 lambda!343486)))

(declare-fun bs!1566461 () Bool)

(assert (= bs!1566461 (and d!1968482 d!1968270)))

(assert (=> bs!1566461 (= lambda!343538 lambda!343524)))

(declare-fun bs!1566462 () Bool)

(assert (= bs!1566462 (and d!1968482 d!1968318)))

(assert (=> bs!1566462 (= lambda!343538 lambda!343528)))

(declare-fun bs!1566463 () Bool)

(assert (= bs!1566463 (and d!1968482 d!1967706)))

(assert (=> bs!1566463 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343538 lambda!343411))))

(declare-fun bs!1566464 () Bool)

(assert (= bs!1566464 (and d!1968482 d!1967962)))

(assert (=> bs!1566464 (= lambda!343538 lambda!343456)))

(declare-fun bs!1566465 () Bool)

(assert (= bs!1566465 (and d!1968482 d!1968336)))

(assert (=> bs!1566465 (= lambda!343538 lambda!343530)))

(assert (=> d!1968482 true))

(assert (=> d!1968482 (= (derivationStepZipper!2155 lt!2351621 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351621 lambda!343538))))

(declare-fun bs!1566466 () Bool)

(assert (= bs!1566466 d!1968482))

(declare-fun m!7093236 () Bool)

(assert (=> bs!1566466 m!7093236))

(assert (=> b!6269432 d!1968482))

(assert (=> b!6269432 d!1967964))

(assert (=> b!6269432 d!1967966))

(declare-fun d!1968492 () Bool)

(assert (=> d!1968492 true))

(declare-fun setRes!42648 () Bool)

(assert (=> d!1968492 setRes!42648))

(declare-fun condSetEmpty!42648 () Bool)

(declare-fun res!2586839 () (InoxSet Context!11146))

(assert (=> d!1968492 (= condSetEmpty!42648 (= res!2586839 ((as const (Array Context!11146 Bool)) false)))))

(assert (=> d!1968492 (= (choose!46508 z!1189 lambda!343319) res!2586839)))

(declare-fun setIsEmpty!42648 () Bool)

(assert (=> setIsEmpty!42648 setRes!42648))

(declare-fun setNonEmpty!42648 () Bool)

(declare-fun setElem!42648 () Context!11146)

(declare-fun e!3814278 () Bool)

(declare-fun tp!1748733 () Bool)

(assert (=> setNonEmpty!42648 (= setRes!42648 (and tp!1748733 (inv!83719 setElem!42648) e!3814278))))

(declare-fun setRest!42648 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42648 (= res!2586839 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42648 true) setRest!42648))))

(declare-fun b!6271220 () Bool)

(declare-fun tp!1748734 () Bool)

(assert (=> b!6271220 (= e!3814278 tp!1748734)))

(assert (= (and d!1968492 condSetEmpty!42648) setIsEmpty!42648))

(assert (= (and d!1968492 (not condSetEmpty!42648)) setNonEmpty!42648))

(assert (= setNonEmpty!42648 b!6271220))

(declare-fun m!7093242 () Bool)

(assert (=> setNonEmpty!42648 m!7093242))

(assert (=> d!1967482 d!1968492))

(assert (=> bm!530113 d!1967846))

(declare-fun d!1968494 () Bool)

(assert (=> d!1968494 (= (isConcat!1118 lt!2351774) ((_ is Concat!25034) lt!2351774))))

(assert (=> b!6269685 d!1968494))

(declare-fun d!1968498 () Bool)

(declare-fun c!1136512 () Bool)

(assert (=> d!1968498 (= c!1136512 (isEmpty!36777 (tail!11963 (t!378424 s!2326))))))

(declare-fun e!3814280 () Bool)

(assert (=> d!1968498 (= (matchZipper!2201 (derivationStepZipper!2155 lt!2351610 (head!12878 (t!378424 s!2326))) (tail!11963 (t!378424 s!2326))) e!3814280)))

(declare-fun b!6271222 () Bool)

(assert (=> b!6271222 (= e!3814280 (nullableZipper!1959 (derivationStepZipper!2155 lt!2351610 (head!12878 (t!378424 s!2326)))))))

(declare-fun b!6271223 () Bool)

(assert (=> b!6271223 (= e!3814280 (matchZipper!2201 (derivationStepZipper!2155 (derivationStepZipper!2155 lt!2351610 (head!12878 (t!378424 s!2326))) (head!12878 (tail!11963 (t!378424 s!2326)))) (tail!11963 (tail!11963 (t!378424 s!2326)))))))

(assert (= (and d!1968498 c!1136512) b!6271222))

(assert (= (and d!1968498 (not c!1136512)) b!6271223))

(assert (=> d!1968498 m!7091032))

(assert (=> d!1968498 m!7092110))

(assert (=> b!6271222 m!7091030))

(declare-fun m!7093246 () Bool)

(assert (=> b!6271222 m!7093246))

(assert (=> b!6271223 m!7091032))

(assert (=> b!6271223 m!7092114))

(assert (=> b!6271223 m!7091030))

(assert (=> b!6271223 m!7092114))

(declare-fun m!7093248 () Bool)

(assert (=> b!6271223 m!7093248))

(assert (=> b!6271223 m!7091032))

(assert (=> b!6271223 m!7092118))

(assert (=> b!6271223 m!7093248))

(assert (=> b!6271223 m!7092118))

(declare-fun m!7093250 () Bool)

(assert (=> b!6271223 m!7093250))

(assert (=> b!6269157 d!1968498))

(declare-fun bs!1566467 () Bool)

(declare-fun d!1968500 () Bool)

(assert (= bs!1566467 (and d!1968500 d!1968386)))

(declare-fun lambda!343539 () Int)

(assert (=> bs!1566467 (= lambda!343539 lambda!343533)))

(declare-fun bs!1566468 () Bool)

(assert (= bs!1566468 (and d!1968500 d!1968078)))

(assert (=> bs!1566468 (= lambda!343539 lambda!343482)))

(declare-fun bs!1566469 () Bool)

(assert (= bs!1566469 (and d!1968500 d!1968016)))

(assert (=> bs!1566469 (= (= (head!12878 (t!378424 s!2326)) (head!12878 s!2326)) (= lambda!343539 lambda!343470))))

(declare-fun bs!1566470 () Bool)

(assert (= bs!1566470 (and d!1968500 b!6268873)))

(assert (=> bs!1566470 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343539 lambda!343319))))

(declare-fun bs!1566471 () Bool)

(assert (= bs!1566471 (and d!1968500 d!1968120)))

(assert (=> bs!1566471 (= lambda!343539 lambda!343487)))

(declare-fun bs!1566472 () Bool)

(assert (= bs!1566472 (and d!1968500 d!1967654)))

(assert (=> bs!1566472 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343539 lambda!343399))))

(declare-fun bs!1566473 () Bool)

(assert (= bs!1566473 (and d!1968500 d!1968110)))

(assert (=> bs!1566473 (= lambda!343539 lambda!343486)))

(declare-fun bs!1566474 () Bool)

(assert (= bs!1566474 (and d!1968500 d!1968270)))

(assert (=> bs!1566474 (= lambda!343539 lambda!343524)))

(declare-fun bs!1566475 () Bool)

(assert (= bs!1566475 (and d!1968500 d!1968318)))

(assert (=> bs!1566475 (= lambda!343539 lambda!343528)))

(declare-fun bs!1566476 () Bool)

(assert (= bs!1566476 (and d!1968500 d!1968482)))

(assert (=> bs!1566476 (= lambda!343539 lambda!343538)))

(declare-fun bs!1566477 () Bool)

(assert (= bs!1566477 (and d!1968500 d!1967706)))

(assert (=> bs!1566477 (= (= (head!12878 (t!378424 s!2326)) (h!71192 s!2326)) (= lambda!343539 lambda!343411))))

(declare-fun bs!1566478 () Bool)

(assert (= bs!1566478 (and d!1968500 d!1967962)))

(assert (=> bs!1566478 (= lambda!343539 lambda!343456)))

(declare-fun bs!1566479 () Bool)

(assert (= bs!1566479 (and d!1968500 d!1968336)))

(assert (=> bs!1566479 (= lambda!343539 lambda!343530)))

(assert (=> d!1968500 true))

(assert (=> d!1968500 (= (derivationStepZipper!2155 lt!2351610 (head!12878 (t!378424 s!2326))) (flatMap!1694 lt!2351610 lambda!343539))))

(declare-fun bs!1566480 () Bool)

(assert (= bs!1566480 d!1968500))

(declare-fun m!7093252 () Bool)

(assert (=> bs!1566480 m!7093252))

(assert (=> b!6269157 d!1968500))

(assert (=> b!6269157 d!1967964))

(assert (=> b!6269157 d!1967966))

(declare-fun d!1968502 () Bool)

(assert (=> d!1968502 (= (nullable!6182 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))) (nullableFct!2133 (regOne!32890 (h!71190 (exprs!6073 (h!71191 zl!343))))))))

(declare-fun bs!1566481 () Bool)

(assert (= bs!1566481 d!1968502))

(declare-fun m!7093256 () Bool)

(assert (=> bs!1566481 m!7093256))

(assert (=> b!6269075 d!1968502))

(declare-fun e!3814292 () Bool)

(assert (=> b!6269845 (= tp!1748697 e!3814292)))

(declare-fun b!6271254 () Bool)

(declare-fun tp!1748774 () Bool)

(declare-fun tp!1748777 () Bool)

(assert (=> b!6271254 (= e!3814292 (and tp!1748774 tp!1748777))))

(declare-fun b!6271253 () Bool)

(assert (=> b!6271253 (= e!3814292 tp_is_empty!41631)))

(declare-fun b!6271256 () Bool)

(declare-fun tp!1748775 () Bool)

(declare-fun tp!1748778 () Bool)

(assert (=> b!6271256 (= e!3814292 (and tp!1748775 tp!1748778))))

(declare-fun b!6271255 () Bool)

(declare-fun tp!1748776 () Bool)

(assert (=> b!6271255 (= e!3814292 tp!1748776)))

(assert (= (and b!6269845 ((_ is ElementMatch!16189) (h!71190 (exprs!6073 setElem!42632)))) b!6271253))

(assert (= (and b!6269845 ((_ is Concat!25034) (h!71190 (exprs!6073 setElem!42632)))) b!6271254))

(assert (= (and b!6269845 ((_ is Star!16189) (h!71190 (exprs!6073 setElem!42632)))) b!6271255))

(assert (= (and b!6269845 ((_ is Union!16189) (h!71190 (exprs!6073 setElem!42632)))) b!6271256))

(declare-fun b!6271261 () Bool)

(declare-fun e!3814294 () Bool)

(declare-fun tp!1748784 () Bool)

(declare-fun tp!1748785 () Bool)

(assert (=> b!6271261 (= e!3814294 (and tp!1748784 tp!1748785))))

(assert (=> b!6269845 (= tp!1748698 e!3814294)))

(assert (= (and b!6269845 ((_ is Cons!64742) (t!378422 (exprs!6073 setElem!42632)))) b!6271261))

(declare-fun e!3814296 () Bool)

(assert (=> b!6269825 (= tp!1748675 e!3814296)))

(declare-fun b!6271267 () Bool)

(declare-fun tp!1748791 () Bool)

(declare-fun tp!1748794 () Bool)

(assert (=> b!6271267 (= e!3814296 (and tp!1748791 tp!1748794))))

(declare-fun b!6271266 () Bool)

(assert (=> b!6271266 (= e!3814296 tp_is_empty!41631)))

(declare-fun b!6271269 () Bool)

(declare-fun tp!1748792 () Bool)

(declare-fun tp!1748795 () Bool)

(assert (=> b!6271269 (= e!3814296 (and tp!1748792 tp!1748795))))

(declare-fun b!6271268 () Bool)

(declare-fun tp!1748793 () Bool)

(assert (=> b!6271268 (= e!3814296 tp!1748793)))

(assert (= (and b!6269825 ((_ is ElementMatch!16189) (regOne!32890 (regTwo!32891 r!7292)))) b!6271266))

(assert (= (and b!6269825 ((_ is Concat!25034) (regOne!32890 (regTwo!32891 r!7292)))) b!6271267))

(assert (= (and b!6269825 ((_ is Star!16189) (regOne!32890 (regTwo!32891 r!7292)))) b!6271268))

(assert (= (and b!6269825 ((_ is Union!16189) (regOne!32890 (regTwo!32891 r!7292)))) b!6271269))

(declare-fun e!3814298 () Bool)

(assert (=> b!6269825 (= tp!1748678 e!3814298)))

(declare-fun b!6271275 () Bool)

(declare-fun tp!1748801 () Bool)

(declare-fun tp!1748804 () Bool)

(assert (=> b!6271275 (= e!3814298 (and tp!1748801 tp!1748804))))

(declare-fun b!6271274 () Bool)

(assert (=> b!6271274 (= e!3814298 tp_is_empty!41631)))

(declare-fun b!6271277 () Bool)

(declare-fun tp!1748802 () Bool)

(declare-fun tp!1748805 () Bool)

(assert (=> b!6271277 (= e!3814298 (and tp!1748802 tp!1748805))))

(declare-fun b!6271276 () Bool)

(declare-fun tp!1748803 () Bool)

(assert (=> b!6271276 (= e!3814298 tp!1748803)))

(assert (= (and b!6269825 ((_ is ElementMatch!16189) (regTwo!32890 (regTwo!32891 r!7292)))) b!6271274))

(assert (= (and b!6269825 ((_ is Concat!25034) (regTwo!32890 (regTwo!32891 r!7292)))) b!6271275))

(assert (= (and b!6269825 ((_ is Star!16189) (regTwo!32890 (regTwo!32891 r!7292)))) b!6271276))

(assert (= (and b!6269825 ((_ is Union!16189) (regTwo!32890 (regTwo!32891 r!7292)))) b!6271277))

(declare-fun b!6271282 () Bool)

(declare-fun e!3814300 () Bool)

(declare-fun tp!1748811 () Bool)

(assert (=> b!6271282 (= e!3814300 (and tp_is_empty!41631 tp!1748811))))

(assert (=> b!6269801 (= tp!1748649 e!3814300)))

(assert (= (and b!6269801 ((_ is Cons!64744) (t!378424 (t!378424 s!2326)))) b!6271282))

(declare-fun e!3814302 () Bool)

(assert (=> b!6269826 (= tp!1748677 e!3814302)))

(declare-fun b!6271288 () Bool)

(declare-fun tp!1748817 () Bool)

(declare-fun tp!1748820 () Bool)

(assert (=> b!6271288 (= e!3814302 (and tp!1748817 tp!1748820))))

(declare-fun b!6271287 () Bool)

(assert (=> b!6271287 (= e!3814302 tp_is_empty!41631)))

(declare-fun b!6271290 () Bool)

(declare-fun tp!1748818 () Bool)

(declare-fun tp!1748821 () Bool)

(assert (=> b!6271290 (= e!3814302 (and tp!1748818 tp!1748821))))

(declare-fun b!6271289 () Bool)

(declare-fun tp!1748819 () Bool)

(assert (=> b!6271289 (= e!3814302 tp!1748819)))

(assert (= (and b!6269826 ((_ is ElementMatch!16189) (reg!16518 (regTwo!32891 r!7292)))) b!6271287))

(assert (= (and b!6269826 ((_ is Concat!25034) (reg!16518 (regTwo!32891 r!7292)))) b!6271288))

(assert (= (and b!6269826 ((_ is Star!16189) (reg!16518 (regTwo!32891 r!7292)))) b!6271289))

(assert (= (and b!6269826 ((_ is Union!16189) (reg!16518 (regTwo!32891 r!7292)))) b!6271290))

(declare-fun e!3814304 () Bool)

(assert (=> b!6269817 (= tp!1748665 e!3814304)))

(declare-fun b!6271296 () Bool)

(declare-fun tp!1748827 () Bool)

(declare-fun tp!1748830 () Bool)

(assert (=> b!6271296 (= e!3814304 (and tp!1748827 tp!1748830))))

(declare-fun b!6271295 () Bool)

(assert (=> b!6271295 (= e!3814304 tp_is_empty!41631)))

(declare-fun b!6271298 () Bool)

(declare-fun tp!1748828 () Bool)

(declare-fun tp!1748831 () Bool)

(assert (=> b!6271298 (= e!3814304 (and tp!1748828 tp!1748831))))

(declare-fun b!6271297 () Bool)

(declare-fun tp!1748829 () Bool)

(assert (=> b!6271297 (= e!3814304 tp!1748829)))

(assert (= (and b!6269817 ((_ is ElementMatch!16189) (regOne!32890 (regTwo!32890 r!7292)))) b!6271295))

(assert (= (and b!6269817 ((_ is Concat!25034) (regOne!32890 (regTwo!32890 r!7292)))) b!6271296))

(assert (= (and b!6269817 ((_ is Star!16189) (regOne!32890 (regTwo!32890 r!7292)))) b!6271297))

(assert (= (and b!6269817 ((_ is Union!16189) (regOne!32890 (regTwo!32890 r!7292)))) b!6271298))

(declare-fun e!3814306 () Bool)

(assert (=> b!6269817 (= tp!1748668 e!3814306)))

(declare-fun b!6271304 () Bool)

(declare-fun tp!1748837 () Bool)

(declare-fun tp!1748840 () Bool)

(assert (=> b!6271304 (= e!3814306 (and tp!1748837 tp!1748840))))

(declare-fun b!6271303 () Bool)

(assert (=> b!6271303 (= e!3814306 tp_is_empty!41631)))

(declare-fun b!6271306 () Bool)

(declare-fun tp!1748838 () Bool)

(declare-fun tp!1748841 () Bool)

(assert (=> b!6271306 (= e!3814306 (and tp!1748838 tp!1748841))))

(declare-fun b!6271305 () Bool)

(declare-fun tp!1748839 () Bool)

(assert (=> b!6271305 (= e!3814306 tp!1748839)))

(assert (= (and b!6269817 ((_ is ElementMatch!16189) (regTwo!32890 (regTwo!32890 r!7292)))) b!6271303))

(assert (= (and b!6269817 ((_ is Concat!25034) (regTwo!32890 (regTwo!32890 r!7292)))) b!6271304))

(assert (= (and b!6269817 ((_ is Star!16189) (regTwo!32890 (regTwo!32890 r!7292)))) b!6271305))

(assert (= (and b!6269817 ((_ is Union!16189) (regTwo!32890 (regTwo!32890 r!7292)))) b!6271306))

(declare-fun e!3814308 () Bool)

(assert (=> b!6269827 (= tp!1748676 e!3814308)))

(declare-fun b!6271312 () Bool)

(declare-fun tp!1748847 () Bool)

(declare-fun tp!1748850 () Bool)

(assert (=> b!6271312 (= e!3814308 (and tp!1748847 tp!1748850))))

(declare-fun b!6271311 () Bool)

(assert (=> b!6271311 (= e!3814308 tp_is_empty!41631)))

(declare-fun b!6271314 () Bool)

(declare-fun tp!1748848 () Bool)

(declare-fun tp!1748851 () Bool)

(assert (=> b!6271314 (= e!3814308 (and tp!1748848 tp!1748851))))

(declare-fun b!6271313 () Bool)

(declare-fun tp!1748849 () Bool)

(assert (=> b!6271313 (= e!3814308 tp!1748849)))

(assert (= (and b!6269827 ((_ is ElementMatch!16189) (regOne!32891 (regTwo!32891 r!7292)))) b!6271311))

(assert (= (and b!6269827 ((_ is Concat!25034) (regOne!32891 (regTwo!32891 r!7292)))) b!6271312))

(assert (= (and b!6269827 ((_ is Star!16189) (regOne!32891 (regTwo!32891 r!7292)))) b!6271313))

(assert (= (and b!6269827 ((_ is Union!16189) (regOne!32891 (regTwo!32891 r!7292)))) b!6271314))

(declare-fun e!3814311 () Bool)

(assert (=> b!6269827 (= tp!1748679 e!3814311)))

(declare-fun b!6271318 () Bool)

(declare-fun tp!1748854 () Bool)

(declare-fun tp!1748857 () Bool)

(assert (=> b!6271318 (= e!3814311 (and tp!1748854 tp!1748857))))

(declare-fun b!6271317 () Bool)

(assert (=> b!6271317 (= e!3814311 tp_is_empty!41631)))

(declare-fun b!6271320 () Bool)

(declare-fun tp!1748855 () Bool)

(declare-fun tp!1748858 () Bool)

(assert (=> b!6271320 (= e!3814311 (and tp!1748855 tp!1748858))))

(declare-fun b!6271319 () Bool)

(declare-fun tp!1748856 () Bool)

(assert (=> b!6271319 (= e!3814311 tp!1748856)))

(assert (= (and b!6269827 ((_ is ElementMatch!16189) (regTwo!32891 (regTwo!32891 r!7292)))) b!6271317))

(assert (= (and b!6269827 ((_ is Concat!25034) (regTwo!32891 (regTwo!32891 r!7292)))) b!6271318))

(assert (= (and b!6269827 ((_ is Star!16189) (regTwo!32891 (regTwo!32891 r!7292)))) b!6271319))

(assert (= (and b!6269827 ((_ is Union!16189) (regTwo!32891 (regTwo!32891 r!7292)))) b!6271320))

(declare-fun e!3814313 () Bool)

(assert (=> b!6269818 (= tp!1748667 e!3814313)))

(declare-fun b!6271323 () Bool)

(declare-fun tp!1748861 () Bool)

(declare-fun tp!1748864 () Bool)

(assert (=> b!6271323 (= e!3814313 (and tp!1748861 tp!1748864))))

(declare-fun b!6271322 () Bool)

(assert (=> b!6271322 (= e!3814313 tp_is_empty!41631)))

(declare-fun b!6271325 () Bool)

(declare-fun tp!1748862 () Bool)

(declare-fun tp!1748865 () Bool)

(assert (=> b!6271325 (= e!3814313 (and tp!1748862 tp!1748865))))

(declare-fun b!6271324 () Bool)

(declare-fun tp!1748863 () Bool)

(assert (=> b!6271324 (= e!3814313 tp!1748863)))

(assert (= (and b!6269818 ((_ is ElementMatch!16189) (reg!16518 (regTwo!32890 r!7292)))) b!6271322))

(assert (= (and b!6269818 ((_ is Concat!25034) (reg!16518 (regTwo!32890 r!7292)))) b!6271323))

(assert (= (and b!6269818 ((_ is Star!16189) (reg!16518 (regTwo!32890 r!7292)))) b!6271324))

(assert (= (and b!6269818 ((_ is Union!16189) (reg!16518 (regTwo!32890 r!7292)))) b!6271325))

(declare-fun e!3814315 () Bool)

(assert (=> b!6269819 (= tp!1748666 e!3814315)))

(declare-fun b!6271331 () Bool)

(declare-fun tp!1748871 () Bool)

(declare-fun tp!1748874 () Bool)

(assert (=> b!6271331 (= e!3814315 (and tp!1748871 tp!1748874))))

(declare-fun b!6271330 () Bool)

(assert (=> b!6271330 (= e!3814315 tp_is_empty!41631)))

(declare-fun b!6271333 () Bool)

(declare-fun tp!1748872 () Bool)

(declare-fun tp!1748875 () Bool)

(assert (=> b!6271333 (= e!3814315 (and tp!1748872 tp!1748875))))

(declare-fun b!6271332 () Bool)

(declare-fun tp!1748873 () Bool)

(assert (=> b!6271332 (= e!3814315 tp!1748873)))

(assert (= (and b!6269819 ((_ is ElementMatch!16189) (regOne!32891 (regTwo!32890 r!7292)))) b!6271330))

(assert (= (and b!6269819 ((_ is Concat!25034) (regOne!32891 (regTwo!32890 r!7292)))) b!6271331))

(assert (= (and b!6269819 ((_ is Star!16189) (regOne!32891 (regTwo!32890 r!7292)))) b!6271332))

(assert (= (and b!6269819 ((_ is Union!16189) (regOne!32891 (regTwo!32890 r!7292)))) b!6271333))

(declare-fun e!3814317 () Bool)

(assert (=> b!6269819 (= tp!1748669 e!3814317)))

(declare-fun b!6271339 () Bool)

(declare-fun tp!1748881 () Bool)

(declare-fun tp!1748884 () Bool)

(assert (=> b!6271339 (= e!3814317 (and tp!1748881 tp!1748884))))

(declare-fun b!6271338 () Bool)

(assert (=> b!6271338 (= e!3814317 tp_is_empty!41631)))

(declare-fun b!6271341 () Bool)

(declare-fun tp!1748882 () Bool)

(declare-fun tp!1748885 () Bool)

(assert (=> b!6271341 (= e!3814317 (and tp!1748882 tp!1748885))))

(declare-fun b!6271340 () Bool)

(declare-fun tp!1748883 () Bool)

(assert (=> b!6271340 (= e!3814317 tp!1748883)))

(assert (= (and b!6269819 ((_ is ElementMatch!16189) (regTwo!32891 (regTwo!32890 r!7292)))) b!6271338))

(assert (= (and b!6269819 ((_ is Concat!25034) (regTwo!32891 (regTwo!32890 r!7292)))) b!6271339))

(assert (= (and b!6269819 ((_ is Star!16189) (regTwo!32891 (regTwo!32890 r!7292)))) b!6271340))

(assert (= (and b!6269819 ((_ is Union!16189) (regTwo!32891 (regTwo!32890 r!7292)))) b!6271341))

(declare-fun condSetEmpty!42650 () Bool)

(assert (=> setNonEmpty!42638 (= condSetEmpty!42650 (= setRest!42638 ((as const (Array Context!11146 Bool)) false)))))

(declare-fun setRes!42650 () Bool)

(assert (=> setNonEmpty!42638 (= tp!1748645 setRes!42650)))

(declare-fun setIsEmpty!42650 () Bool)

(assert (=> setIsEmpty!42650 setRes!42650))

(declare-fun tp!1748891 () Bool)

(declare-fun setElem!42650 () Context!11146)

(declare-fun setNonEmpty!42650 () Bool)

(declare-fun e!3814319 () Bool)

(assert (=> setNonEmpty!42650 (= setRes!42650 (and tp!1748891 (inv!83719 setElem!42650) e!3814319))))

(declare-fun setRest!42650 () (InoxSet Context!11146))

(assert (=> setNonEmpty!42650 (= setRest!42638 ((_ map or) (store ((as const (Array Context!11146 Bool)) false) setElem!42650 true) setRest!42650))))

(declare-fun b!6271346 () Bool)

(declare-fun tp!1748892 () Bool)

(assert (=> b!6271346 (= e!3814319 tp!1748892)))

(assert (= (and setNonEmpty!42638 condSetEmpty!42650) setIsEmpty!42650))

(assert (= (and setNonEmpty!42638 (not condSetEmpty!42650)) setNonEmpty!42650))

(assert (= setNonEmpty!42650 b!6271346))

(declare-fun m!7093260 () Bool)

(assert (=> setNonEmpty!42650 m!7093260))

(declare-fun e!3814322 () Bool)

(assert (=> b!6269840 (= tp!1748690 e!3814322)))

(declare-fun b!6271356 () Bool)

(declare-fun tp!1748903 () Bool)

(declare-fun tp!1748906 () Bool)

(assert (=> b!6271356 (= e!3814322 (and tp!1748903 tp!1748906))))

(declare-fun b!6271355 () Bool)

(assert (=> b!6271355 (= e!3814322 tp_is_empty!41631)))

(declare-fun b!6271358 () Bool)

(declare-fun tp!1748904 () Bool)

(declare-fun tp!1748907 () Bool)

(assert (=> b!6271358 (= e!3814322 (and tp!1748904 tp!1748907))))

(declare-fun b!6271357 () Bool)

(declare-fun tp!1748905 () Bool)

(assert (=> b!6271357 (= e!3814322 tp!1748905)))

(assert (= (and b!6269840 ((_ is ElementMatch!16189) (h!71190 (exprs!6073 (h!71191 zl!343))))) b!6271355))

(assert (= (and b!6269840 ((_ is Concat!25034) (h!71190 (exprs!6073 (h!71191 zl!343))))) b!6271356))

(assert (= (and b!6269840 ((_ is Star!16189) (h!71190 (exprs!6073 (h!71191 zl!343))))) b!6271357))

(assert (= (and b!6269840 ((_ is Union!16189) (h!71190 (exprs!6073 (h!71191 zl!343))))) b!6271358))

(declare-fun b!6271363 () Bool)

(declare-fun e!3814324 () Bool)

(declare-fun tp!1748913 () Bool)

(declare-fun tp!1748914 () Bool)

(assert (=> b!6271363 (= e!3814324 (and tp!1748913 tp!1748914))))

(assert (=> b!6269840 (= tp!1748691 e!3814324)))

(assert (= (and b!6269840 ((_ is Cons!64742) (t!378422 (exprs!6073 (h!71191 zl!343))))) b!6271363))

(declare-fun b!6271365 () Bool)

(declare-fun e!3814326 () Bool)

(declare-fun tp!1748915 () Bool)

(assert (=> b!6271365 (= e!3814326 tp!1748915)))

(declare-fun e!3814325 () Bool)

(declare-fun tp!1748916 () Bool)

(declare-fun b!6271364 () Bool)

(assert (=> b!6271364 (= e!3814325 (and (inv!83719 (h!71191 (t!378423 (t!378423 zl!343)))) e!3814326 tp!1748916))))

(assert (=> b!6269834 (= tp!1748685 e!3814325)))

(assert (= b!6271364 b!6271365))

(assert (= (and b!6269834 ((_ is Cons!64743) (t!378423 (t!378423 zl!343)))) b!6271364))

(declare-fun m!7093262 () Bool)

(assert (=> b!6271364 m!7093262))

(declare-fun b!6271370 () Bool)

(declare-fun e!3814328 () Bool)

(declare-fun tp!1748922 () Bool)

(declare-fun tp!1748923 () Bool)

(assert (=> b!6271370 (= e!3814328 (and tp!1748922 tp!1748923))))

(assert (=> b!6269796 (= tp!1748646 e!3814328)))

(assert (= (and b!6269796 ((_ is Cons!64742) (exprs!6073 setElem!42638))) b!6271370))

(declare-fun b!6271375 () Bool)

(declare-fun e!3814330 () Bool)

(declare-fun tp!1748929 () Bool)

(declare-fun tp!1748930 () Bool)

(assert (=> b!6271375 (= e!3814330 (and tp!1748929 tp!1748930))))

(assert (=> b!6269835 (= tp!1748684 e!3814330)))

(assert (= (and b!6269835 ((_ is Cons!64742) (exprs!6073 (h!71191 (t!378423 zl!343))))) b!6271375))

(declare-fun e!3814331 () Bool)

(assert (=> b!6269821 (= tp!1748670 e!3814331)))

(declare-fun b!6271377 () Bool)

(declare-fun tp!1748931 () Bool)

(declare-fun tp!1748934 () Bool)

(assert (=> b!6271377 (= e!3814331 (and tp!1748931 tp!1748934))))

(declare-fun b!6271376 () Bool)

(assert (=> b!6271376 (= e!3814331 tp_is_empty!41631)))

(declare-fun b!6271379 () Bool)

(declare-fun tp!1748932 () Bool)

(declare-fun tp!1748935 () Bool)

(assert (=> b!6271379 (= e!3814331 (and tp!1748932 tp!1748935))))

(declare-fun b!6271378 () Bool)

(declare-fun tp!1748933 () Bool)

(assert (=> b!6271378 (= e!3814331 tp!1748933)))

(assert (= (and b!6269821 ((_ is ElementMatch!16189) (regOne!32890 (regOne!32891 r!7292)))) b!6271376))

(assert (= (and b!6269821 ((_ is Concat!25034) (regOne!32890 (regOne!32891 r!7292)))) b!6271377))

(assert (= (and b!6269821 ((_ is Star!16189) (regOne!32890 (regOne!32891 r!7292)))) b!6271378))

(assert (= (and b!6269821 ((_ is Union!16189) (regOne!32890 (regOne!32891 r!7292)))) b!6271379))

(declare-fun e!3814334 () Bool)

(assert (=> b!6269821 (= tp!1748673 e!3814334)))

(declare-fun b!6271385 () Bool)

(declare-fun tp!1748941 () Bool)

(declare-fun tp!1748946 () Bool)

(assert (=> b!6271385 (= e!3814334 (and tp!1748941 tp!1748946))))

(declare-fun b!6271384 () Bool)

(assert (=> b!6271384 (= e!3814334 tp_is_empty!41631)))

(declare-fun b!6271389 () Bool)

(declare-fun tp!1748942 () Bool)

(declare-fun tp!1748948 () Bool)

(assert (=> b!6271389 (= e!3814334 (and tp!1748942 tp!1748948))))

(declare-fun b!6271387 () Bool)

(declare-fun tp!1748944 () Bool)

(assert (=> b!6271387 (= e!3814334 tp!1748944)))

(assert (= (and b!6269821 ((_ is ElementMatch!16189) (regTwo!32890 (regOne!32891 r!7292)))) b!6271384))

(assert (= (and b!6269821 ((_ is Concat!25034) (regTwo!32890 (regOne!32891 r!7292)))) b!6271385))

(assert (= (and b!6269821 ((_ is Star!16189) (regTwo!32890 (regOne!32891 r!7292)))) b!6271387))

(assert (= (and b!6269821 ((_ is Union!16189) (regTwo!32890 (regOne!32891 r!7292)))) b!6271389))

(declare-fun e!3814336 () Bool)

(assert (=> b!6269842 (= tp!1748692 e!3814336)))

(declare-fun b!6271397 () Bool)

(declare-fun tp!1748954 () Bool)

(declare-fun tp!1748959 () Bool)

(assert (=> b!6271397 (= e!3814336 (and tp!1748954 tp!1748959))))

(declare-fun b!6271396 () Bool)

(assert (=> b!6271396 (= e!3814336 tp_is_empty!41631)))

(declare-fun b!6271399 () Bool)

(declare-fun tp!1748956 () Bool)

(declare-fun tp!1748960 () Bool)

(assert (=> b!6271399 (= e!3814336 (and tp!1748956 tp!1748960))))

(declare-fun b!6271398 () Bool)

(declare-fun tp!1748958 () Bool)

(assert (=> b!6271398 (= e!3814336 tp!1748958)))

(assert (= (and b!6269842 ((_ is ElementMatch!16189) (regOne!32890 (reg!16518 r!7292)))) b!6271396))

(assert (= (and b!6269842 ((_ is Concat!25034) (regOne!32890 (reg!16518 r!7292)))) b!6271397))

(assert (= (and b!6269842 ((_ is Star!16189) (regOne!32890 (reg!16518 r!7292)))) b!6271398))

(assert (= (and b!6269842 ((_ is Union!16189) (regOne!32890 (reg!16518 r!7292)))) b!6271399))

(declare-fun e!3814338 () Bool)

(assert (=> b!6269842 (= tp!1748695 e!3814338)))

(declare-fun b!6271403 () Bool)

(declare-fun tp!1748962 () Bool)

(declare-fun tp!1748969 () Bool)

(assert (=> b!6271403 (= e!3814338 (and tp!1748962 tp!1748969))))

(declare-fun b!6271401 () Bool)

(assert (=> b!6271401 (= e!3814338 tp_is_empty!41631)))

(declare-fun b!6271407 () Bool)

(declare-fun tp!1748964 () Bool)

(declare-fun tp!1748970 () Bool)

(assert (=> b!6271407 (= e!3814338 (and tp!1748964 tp!1748970))))

(declare-fun b!6271405 () Bool)

(declare-fun tp!1748967 () Bool)

(assert (=> b!6271405 (= e!3814338 tp!1748967)))

(assert (= (and b!6269842 ((_ is ElementMatch!16189) (regTwo!32890 (reg!16518 r!7292)))) b!6271401))

(assert (= (and b!6269842 ((_ is Concat!25034) (regTwo!32890 (reg!16518 r!7292)))) b!6271403))

(assert (= (and b!6269842 ((_ is Star!16189) (regTwo!32890 (reg!16518 r!7292)))) b!6271405))

(assert (= (and b!6269842 ((_ is Union!16189) (regTwo!32890 (reg!16518 r!7292)))) b!6271407))

(declare-fun e!3814340 () Bool)

(assert (=> b!6269822 (= tp!1748672 e!3814340)))

(declare-fun b!6271410 () Bool)

(declare-fun tp!1748971 () Bool)

(declare-fun tp!1748977 () Bool)

(assert (=> b!6271410 (= e!3814340 (and tp!1748971 tp!1748977))))

(declare-fun b!6271408 () Bool)

(assert (=> b!6271408 (= e!3814340 tp_is_empty!41631)))

(declare-fun b!6271414 () Bool)

(declare-fun tp!1748972 () Bool)

(declare-fun tp!1748979 () Bool)

(assert (=> b!6271414 (= e!3814340 (and tp!1748972 tp!1748979))))

(declare-fun b!6271412 () Bool)

(declare-fun tp!1748975 () Bool)

(assert (=> b!6271412 (= e!3814340 tp!1748975)))

(assert (= (and b!6269822 ((_ is ElementMatch!16189) (reg!16518 (regOne!32891 r!7292)))) b!6271408))

(assert (= (and b!6269822 ((_ is Concat!25034) (reg!16518 (regOne!32891 r!7292)))) b!6271410))

(assert (= (and b!6269822 ((_ is Star!16189) (reg!16518 (regOne!32891 r!7292)))) b!6271412))

(assert (= (and b!6269822 ((_ is Union!16189) (reg!16518 (regOne!32891 r!7292)))) b!6271414))

(declare-fun e!3814341 () Bool)

(assert (=> b!6269843 (= tp!1748694 e!3814341)))

(declare-fun b!6271417 () Bool)

(declare-fun tp!1748981 () Bool)

(declare-fun tp!1748984 () Bool)

(assert (=> b!6271417 (= e!3814341 (and tp!1748981 tp!1748984))))

(declare-fun b!6271416 () Bool)

(assert (=> b!6271416 (= e!3814341 tp_is_empty!41631)))

(declare-fun b!6271419 () Bool)

(declare-fun tp!1748982 () Bool)

(declare-fun tp!1748985 () Bool)

(assert (=> b!6271419 (= e!3814341 (and tp!1748982 tp!1748985))))

(declare-fun b!6271418 () Bool)

(declare-fun tp!1748983 () Bool)

(assert (=> b!6271418 (= e!3814341 tp!1748983)))

(assert (= (and b!6269843 ((_ is ElementMatch!16189) (reg!16518 (reg!16518 r!7292)))) b!6271416))

(assert (= (and b!6269843 ((_ is Concat!25034) (reg!16518 (reg!16518 r!7292)))) b!6271417))

(assert (= (and b!6269843 ((_ is Star!16189) (reg!16518 (reg!16518 r!7292)))) b!6271418))

(assert (= (and b!6269843 ((_ is Union!16189) (reg!16518 (reg!16518 r!7292)))) b!6271419))

(declare-fun e!3814342 () Bool)

(assert (=> b!6269813 (= tp!1748660 e!3814342)))

(declare-fun b!6271421 () Bool)

(declare-fun tp!1748986 () Bool)

(declare-fun tp!1748989 () Bool)

(assert (=> b!6271421 (= e!3814342 (and tp!1748986 tp!1748989))))

(declare-fun b!6271420 () Bool)

(assert (=> b!6271420 (= e!3814342 tp_is_empty!41631)))

(declare-fun b!6271423 () Bool)

(declare-fun tp!1748987 () Bool)

(declare-fun tp!1748990 () Bool)

(assert (=> b!6271423 (= e!3814342 (and tp!1748987 tp!1748990))))

(declare-fun b!6271422 () Bool)

(declare-fun tp!1748988 () Bool)

(assert (=> b!6271422 (= e!3814342 tp!1748988)))

(assert (= (and b!6269813 ((_ is ElementMatch!16189) (regOne!32890 (regOne!32890 r!7292)))) b!6271420))

(assert (= (and b!6269813 ((_ is Concat!25034) (regOne!32890 (regOne!32890 r!7292)))) b!6271421))

(assert (= (and b!6269813 ((_ is Star!16189) (regOne!32890 (regOne!32890 r!7292)))) b!6271422))

(assert (= (and b!6269813 ((_ is Union!16189) (regOne!32890 (regOne!32890 r!7292)))) b!6271423))

(declare-fun e!3814343 () Bool)

(assert (=> b!6269813 (= tp!1748663 e!3814343)))

(declare-fun b!6271425 () Bool)

(declare-fun tp!1748991 () Bool)

(declare-fun tp!1748994 () Bool)

(assert (=> b!6271425 (= e!3814343 (and tp!1748991 tp!1748994))))

(declare-fun b!6271424 () Bool)

(assert (=> b!6271424 (= e!3814343 tp_is_empty!41631)))

(declare-fun b!6271427 () Bool)

(declare-fun tp!1748992 () Bool)

(declare-fun tp!1748995 () Bool)

(assert (=> b!6271427 (= e!3814343 (and tp!1748992 tp!1748995))))

(declare-fun b!6271426 () Bool)

(declare-fun tp!1748993 () Bool)

(assert (=> b!6271426 (= e!3814343 tp!1748993)))

(assert (= (and b!6269813 ((_ is ElementMatch!16189) (regTwo!32890 (regOne!32890 r!7292)))) b!6271424))

(assert (= (and b!6269813 ((_ is Concat!25034) (regTwo!32890 (regOne!32890 r!7292)))) b!6271425))

(assert (= (and b!6269813 ((_ is Star!16189) (regTwo!32890 (regOne!32890 r!7292)))) b!6271426))

(assert (= (and b!6269813 ((_ is Union!16189) (regTwo!32890 (regOne!32890 r!7292)))) b!6271427))

(declare-fun e!3814344 () Bool)

(assert (=> b!6269823 (= tp!1748671 e!3814344)))

(declare-fun b!6271429 () Bool)

(declare-fun tp!1748996 () Bool)

(declare-fun tp!1748999 () Bool)

(assert (=> b!6271429 (= e!3814344 (and tp!1748996 tp!1748999))))

(declare-fun b!6271428 () Bool)

(assert (=> b!6271428 (= e!3814344 tp_is_empty!41631)))

(declare-fun b!6271431 () Bool)

(declare-fun tp!1748997 () Bool)

(declare-fun tp!1749000 () Bool)

(assert (=> b!6271431 (= e!3814344 (and tp!1748997 tp!1749000))))

(declare-fun b!6271430 () Bool)

(declare-fun tp!1748998 () Bool)

(assert (=> b!6271430 (= e!3814344 tp!1748998)))

(assert (= (and b!6269823 ((_ is ElementMatch!16189) (regOne!32891 (regOne!32891 r!7292)))) b!6271428))

(assert (= (and b!6269823 ((_ is Concat!25034) (regOne!32891 (regOne!32891 r!7292)))) b!6271429))

(assert (= (and b!6269823 ((_ is Star!16189) (regOne!32891 (regOne!32891 r!7292)))) b!6271430))

(assert (= (and b!6269823 ((_ is Union!16189) (regOne!32891 (regOne!32891 r!7292)))) b!6271431))

(declare-fun e!3814345 () Bool)

(assert (=> b!6269823 (= tp!1748674 e!3814345)))

(declare-fun b!6271433 () Bool)

(declare-fun tp!1749001 () Bool)

(declare-fun tp!1749004 () Bool)

(assert (=> b!6271433 (= e!3814345 (and tp!1749001 tp!1749004))))

(declare-fun b!6271432 () Bool)

(assert (=> b!6271432 (= e!3814345 tp_is_empty!41631)))

(declare-fun b!6271435 () Bool)

(declare-fun tp!1749002 () Bool)

(declare-fun tp!1749005 () Bool)

(assert (=> b!6271435 (= e!3814345 (and tp!1749002 tp!1749005))))

(declare-fun b!6271434 () Bool)

(declare-fun tp!1749003 () Bool)

(assert (=> b!6271434 (= e!3814345 tp!1749003)))

(assert (= (and b!6269823 ((_ is ElementMatch!16189) (regTwo!32891 (regOne!32891 r!7292)))) b!6271432))

(assert (= (and b!6269823 ((_ is Concat!25034) (regTwo!32891 (regOne!32891 r!7292)))) b!6271433))

(assert (= (and b!6269823 ((_ is Star!16189) (regTwo!32891 (regOne!32891 r!7292)))) b!6271434))

(assert (= (and b!6269823 ((_ is Union!16189) (regTwo!32891 (regOne!32891 r!7292)))) b!6271435))

(declare-fun e!3814346 () Bool)

(assert (=> b!6269844 (= tp!1748693 e!3814346)))

(declare-fun b!6271437 () Bool)

(declare-fun tp!1749006 () Bool)

(declare-fun tp!1749009 () Bool)

(assert (=> b!6271437 (= e!3814346 (and tp!1749006 tp!1749009))))

(declare-fun b!6271436 () Bool)

(assert (=> b!6271436 (= e!3814346 tp_is_empty!41631)))

(declare-fun b!6271439 () Bool)

(declare-fun tp!1749007 () Bool)

(declare-fun tp!1749010 () Bool)

(assert (=> b!6271439 (= e!3814346 (and tp!1749007 tp!1749010))))

(declare-fun b!6271438 () Bool)

(declare-fun tp!1749008 () Bool)

(assert (=> b!6271438 (= e!3814346 tp!1749008)))

(assert (= (and b!6269844 ((_ is ElementMatch!16189) (regOne!32891 (reg!16518 r!7292)))) b!6271436))

(assert (= (and b!6269844 ((_ is Concat!25034) (regOne!32891 (reg!16518 r!7292)))) b!6271437))

(assert (= (and b!6269844 ((_ is Star!16189) (regOne!32891 (reg!16518 r!7292)))) b!6271438))

(assert (= (and b!6269844 ((_ is Union!16189) (regOne!32891 (reg!16518 r!7292)))) b!6271439))

(declare-fun e!3814347 () Bool)

(assert (=> b!6269844 (= tp!1748696 e!3814347)))

(declare-fun b!6271441 () Bool)

(declare-fun tp!1749011 () Bool)

(declare-fun tp!1749014 () Bool)

(assert (=> b!6271441 (= e!3814347 (and tp!1749011 tp!1749014))))

(declare-fun b!6271440 () Bool)

(assert (=> b!6271440 (= e!3814347 tp_is_empty!41631)))

(declare-fun b!6271443 () Bool)

(declare-fun tp!1749012 () Bool)

(declare-fun tp!1749015 () Bool)

(assert (=> b!6271443 (= e!3814347 (and tp!1749012 tp!1749015))))

(declare-fun b!6271442 () Bool)

(declare-fun tp!1749013 () Bool)

(assert (=> b!6271442 (= e!3814347 tp!1749013)))

(assert (= (and b!6269844 ((_ is ElementMatch!16189) (regTwo!32891 (reg!16518 r!7292)))) b!6271440))

(assert (= (and b!6269844 ((_ is Concat!25034) (regTwo!32891 (reg!16518 r!7292)))) b!6271441))

(assert (= (and b!6269844 ((_ is Star!16189) (regTwo!32891 (reg!16518 r!7292)))) b!6271442))

(assert (= (and b!6269844 ((_ is Union!16189) (regTwo!32891 (reg!16518 r!7292)))) b!6271443))

(declare-fun e!3814348 () Bool)

(assert (=> b!6269814 (= tp!1748662 e!3814348)))

(declare-fun b!6271445 () Bool)

(declare-fun tp!1749016 () Bool)

(declare-fun tp!1749019 () Bool)

(assert (=> b!6271445 (= e!3814348 (and tp!1749016 tp!1749019))))

(declare-fun b!6271444 () Bool)

(assert (=> b!6271444 (= e!3814348 tp_is_empty!41631)))

(declare-fun b!6271447 () Bool)

(declare-fun tp!1749017 () Bool)

(declare-fun tp!1749020 () Bool)

(assert (=> b!6271447 (= e!3814348 (and tp!1749017 tp!1749020))))

(declare-fun b!6271446 () Bool)

(declare-fun tp!1749018 () Bool)

(assert (=> b!6271446 (= e!3814348 tp!1749018)))

(assert (= (and b!6269814 ((_ is ElementMatch!16189) (reg!16518 (regOne!32890 r!7292)))) b!6271444))

(assert (= (and b!6269814 ((_ is Concat!25034) (reg!16518 (regOne!32890 r!7292)))) b!6271445))

(assert (= (and b!6269814 ((_ is Star!16189) (reg!16518 (regOne!32890 r!7292)))) b!6271446))

(assert (= (and b!6269814 ((_ is Union!16189) (reg!16518 (regOne!32890 r!7292)))) b!6271447))

(declare-fun e!3814349 () Bool)

(assert (=> b!6269815 (= tp!1748661 e!3814349)))

(declare-fun b!6271449 () Bool)

(declare-fun tp!1749021 () Bool)

(declare-fun tp!1749024 () Bool)

(assert (=> b!6271449 (= e!3814349 (and tp!1749021 tp!1749024))))

(declare-fun b!6271448 () Bool)

(assert (=> b!6271448 (= e!3814349 tp_is_empty!41631)))

(declare-fun b!6271451 () Bool)

(declare-fun tp!1749022 () Bool)

(declare-fun tp!1749025 () Bool)

(assert (=> b!6271451 (= e!3814349 (and tp!1749022 tp!1749025))))

(declare-fun b!6271450 () Bool)

(declare-fun tp!1749023 () Bool)

(assert (=> b!6271450 (= e!3814349 tp!1749023)))

(assert (= (and b!6269815 ((_ is ElementMatch!16189) (regOne!32891 (regOne!32890 r!7292)))) b!6271448))

(assert (= (and b!6269815 ((_ is Concat!25034) (regOne!32891 (regOne!32890 r!7292)))) b!6271449))

(assert (= (and b!6269815 ((_ is Star!16189) (regOne!32891 (regOne!32890 r!7292)))) b!6271450))

(assert (= (and b!6269815 ((_ is Union!16189) (regOne!32891 (regOne!32890 r!7292)))) b!6271451))

(declare-fun e!3814350 () Bool)

(assert (=> b!6269815 (= tp!1748664 e!3814350)))

(declare-fun b!6271453 () Bool)

(declare-fun tp!1749026 () Bool)

(declare-fun tp!1749029 () Bool)

(assert (=> b!6271453 (= e!3814350 (and tp!1749026 tp!1749029))))

(declare-fun b!6271452 () Bool)

(assert (=> b!6271452 (= e!3814350 tp_is_empty!41631)))

(declare-fun b!6271455 () Bool)

(declare-fun tp!1749027 () Bool)

(declare-fun tp!1749030 () Bool)

(assert (=> b!6271455 (= e!3814350 (and tp!1749027 tp!1749030))))

(declare-fun b!6271454 () Bool)

(declare-fun tp!1749028 () Bool)

(assert (=> b!6271454 (= e!3814350 tp!1749028)))

(assert (= (and b!6269815 ((_ is ElementMatch!16189) (regTwo!32891 (regOne!32890 r!7292)))) b!6271452))

(assert (= (and b!6269815 ((_ is Concat!25034) (regTwo!32891 (regOne!32890 r!7292)))) b!6271453))

(assert (= (and b!6269815 ((_ is Star!16189) (regTwo!32891 (regOne!32890 r!7292)))) b!6271454))

(assert (= (and b!6269815 ((_ is Union!16189) (regTwo!32891 (regOne!32890 r!7292)))) b!6271455))

(declare-fun b_lambda!238817 () Bool)

(assert (= b_lambda!238741 (or d!1967524 b_lambda!238817)))

(declare-fun bs!1566493 () Bool)

(declare-fun d!1968526 () Bool)

(assert (= bs!1566493 (and d!1968526 d!1967524)))

(assert (=> bs!1566493 (= (dynLambda!25601 lambda!343365 (h!71190 (exprs!6073 setElem!42632))) (validRegex!7925 (h!71190 (exprs!6073 setElem!42632))))))

(declare-fun m!7093276 () Bool)

(assert (=> bs!1566493 m!7093276))

(assert (=> b!6270090 d!1968526))

(declare-fun b_lambda!238819 () Bool)

(assert (= b_lambda!238739 (or d!1967528 b_lambda!238819)))

(declare-fun bs!1566494 () Bool)

(declare-fun d!1968528 () Bool)

(assert (= bs!1566494 (and d!1968528 d!1967528)))

(assert (=> bs!1566494 (= (dynLambda!25601 lambda!343380 (h!71190 (exprs!6073 (h!71191 zl!343)))) (validRegex!7925 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(declare-fun m!7093278 () Bool)

(assert (=> bs!1566494 m!7093278))

(assert (=> b!6270013 d!1968528))

(declare-fun b_lambda!238821 () Bool)

(assert (= b_lambda!238765 (or b!6269127 b_lambda!238821)))

(declare-fun bs!1566495 () Bool)

(declare-fun d!1968530 () Bool)

(assert (= bs!1566495 (and d!1968530 b!6269127)))

(assert (=> bs!1566495 (= (dynLambda!25600 lambda!343345 (h!71191 (t!378423 zl!343))) (>= lt!2351683 (contextDepth!206 (h!71191 (t!378423 zl!343)))))))

(assert (=> bs!1566495 m!7092608))

(assert (=> b!6270707 d!1968530))

(declare-fun b_lambda!238823 () Bool)

(assert (= b_lambda!238753 (or d!1967668 b_lambda!238823)))

(declare-fun bs!1566496 () Bool)

(declare-fun d!1968532 () Bool)

(assert (= bs!1566496 (and d!1968532 d!1967668)))

(assert (=> bs!1566496 (= (dynLambda!25601 lambda!343401 (h!71190 lt!2351603)) (validRegex!7925 (h!71190 lt!2351603)))))

(declare-fun m!7093280 () Bool)

(assert (=> bs!1566496 m!7093280))

(assert (=> b!6270215 d!1968532))

(declare-fun b_lambda!238825 () Bool)

(assert (= b_lambda!238737 (or b!6269129 b_lambda!238825)))

(declare-fun bs!1566497 () Bool)

(declare-fun d!1968534 () Bool)

(assert (= bs!1566497 (and d!1968534 b!6269129)))

(assert (=> bs!1566497 (= (dynLambda!25600 lambda!343346 (h!71191 zl!343)) (>= lt!2351685 (contextDepth!206 (h!71191 zl!343))))))

(assert (=> bs!1566497 m!7090986))

(assert (=> b!6269971 d!1968534))

(declare-fun b_lambda!238827 () Bool)

(assert (= b_lambda!238767 (or d!1967540 b_lambda!238827)))

(declare-fun bs!1566498 () Bool)

(declare-fun d!1968536 () Bool)

(assert (= bs!1566498 (and d!1968536 d!1967540)))

(assert (=> bs!1566498 (= (dynLambda!25601 lambda!343381 (h!71190 (exprs!6073 (h!71191 zl!343)))) (validRegex!7925 (h!71190 (exprs!6073 (h!71191 zl!343)))))))

(assert (=> bs!1566498 m!7093278))

(assert (=> b!6270715 d!1968536))

(declare-fun b_lambda!238829 () Bool)

(assert (= b_lambda!238779 (or b!6269124 b_lambda!238829)))

(declare-fun bs!1566499 () Bool)

(declare-fun d!1968538 () Bool)

(assert (= bs!1566499 (and d!1968538 b!6269124)))

(assert (=> bs!1566499 (= (dynLambda!25600 lambda!343341 (h!71191 lt!2351631)) (>= lt!2351679 (contextDepth!206 (h!71191 lt!2351631))))))

(assert (=> bs!1566499 m!7090974))

(assert (=> b!6271016 d!1968538))

(declare-fun b_lambda!238831 () Bool)

(assert (= b_lambda!238751 (or b!6268873 b_lambda!238831)))

(assert (=> d!1967916 d!1967714))

(declare-fun b_lambda!238833 () Bool)

(assert (= b_lambda!238743 (or d!1967514 b_lambda!238833)))

(declare-fun bs!1566500 () Bool)

(declare-fun d!1968540 () Bool)

(assert (= bs!1566500 (and d!1968540 d!1967514)))

(assert (=> bs!1566500 (= (dynLambda!25601 lambda!343358 (h!71190 (unfocusZipperList!1610 zl!343))) (validRegex!7925 (h!71190 (unfocusZipperList!1610 zl!343))))))

(declare-fun m!7093282 () Bool)

(assert (=> bs!1566500 m!7093282))

(assert (=> b!6270143 d!1968540))

(declare-fun b_lambda!238835 () Bool)

(assert (= b_lambda!238745 (or b!6268873 b_lambda!238835)))

(assert (=> d!1967864 d!1967716))

(declare-fun b_lambda!238837 () Bool)

(assert (= b_lambda!238759 (or b!6268873 b_lambda!238837)))

(assert (=> d!1967982 d!1967718))

(declare-fun b_lambda!238839 () Bool)

(assert (= b_lambda!238777 (or d!1967658 b_lambda!238839)))

(declare-fun bs!1566501 () Bool)

(declare-fun d!1968542 () Bool)

(assert (= bs!1566501 (and d!1968542 d!1967658)))

(assert (=> bs!1566501 (= (dynLambda!25601 lambda!343400 (h!71190 lt!2351608)) (validRegex!7925 (h!71190 lt!2351608)))))

(declare-fun m!7093284 () Bool)

(assert (=> bs!1566501 m!7093284))

(assert (=> b!6271008 d!1968542))

(declare-fun b_lambda!238841 () Bool)

(assert (= b_lambda!238749 (or b!6269122 b_lambda!238841)))

(declare-fun bs!1566502 () Bool)

(declare-fun d!1968544 () Bool)

(assert (= bs!1566502 (and d!1968544 b!6269122)))

(assert (=> bs!1566502 (= (dynLambda!25600 lambda!343340 (h!71191 (t!378423 lt!2351631))) (>= lt!2351677 (contextDepth!206 (h!71191 (t!378423 lt!2351631)))))))

(assert (=> bs!1566502 m!7091954))

(assert (=> b!6270178 d!1968544))

(declare-fun b_lambda!238843 () Bool)

(assert (= b_lambda!238769 (or d!1967516 b_lambda!238843)))

(declare-fun bs!1566503 () Bool)

(declare-fun d!1968546 () Bool)

(assert (= bs!1566503 (and d!1968546 d!1967516)))

(assert (=> bs!1566503 (= (dynLambda!25601 lambda!343362 (h!71190 lt!2351702)) (validRegex!7925 (h!71190 lt!2351702)))))

(declare-fun m!7093286 () Bool)

(assert (=> bs!1566503 m!7093286))

(assert (=> b!6270835 d!1968546))

(check-sat (not bm!530184) (not b!6271178) (not b!6270486) (not b!6271438) (not d!1968014) (not bm!530266) (not b!6270652) (not d!1968336) (not b!6271356) (not d!1968070) (not b!6270337) (not d!1967864) (not bm!530416) (not b!6271324) (not b_lambda!238841) (not b!6270231) (not b!6271080) (not b_lambda!238835) (not d!1967800) (not bm!530270) (not b!6270648) (not b!6271187) (not d!1968214) (not d!1968264) (not b!6271446) (not b!6270365) (not b!6269966) (not b!6270273) (not bm!530218) (not d!1967916) (not b!6271222) (not d!1967934) (not bm!530332) (not b!6271289) (not d!1968074) (not b!6270582) (not d!1968116) (not b!6270859) (not d!1967832) (not bm!530359) (not d!1967850) (not d!1968212) (not d!1968134) (not b!6271298) (not b!6271341) (not b!6270381) (not bm!530148) (not bm!530404) (not d!1967958) (not b!6270336) (not b!6270179) (not b!6269994) (not b!6271134) (not b!6271179) (not b!6270651) (not bm!530354) (not b!6270488) (not d!1968268) (not d!1968466) (not b!6270764) (not b!6270105) (not b!6271078) (not b!6270682) (not b!6271379) (not d!1968406) (not b!6271208) (not b!6270864) (not b!6271076) (not d!1967894) (not d!1967792) (not b!6270460) (not b!6271346) (not d!1967878) (not b!6271305) (not b!6271083) (not d!1967968) (not d!1967982) (not b!6270091) (not d!1968088) (not bm!530177) (not b!6270225) (not bm!530319) (not b!6271429) (not b!6270335) (not b!6271314) (not b!6271419) (not b!6271443) (not b!6270821) (not d!1967770) (not b!6271435) (not b!6271387) (not bm!530194) (not b!6269972) (not b!6269934) (not b!6271126) (not b!6271453) (not b!6270709) (not bm!530206) (not b_lambda!238731) (not b!6271079) (not b!6271105) (not b!6271054) (not b!6271139) (not d!1967806) (not b!6270175) (not bm!530421) (not b!6269952) (not b!6270039) (not bm!530221) (not b_lambda!238821) (not d!1968314) (not b!6270216) (not d!1967962) (not bm!530157) (not b!6270338) (not b!6270722) (not b!6270166) (not d!1968364) (not d!1968032) (not b!6271290) (not b!6270036) (not b!6271025) (not b!6270261) (not b!6271297) (not setNonEmpty!42644) (not b!6270221) (not b!6271447) (not d!1968016) (not bm!530353) (not bm!530200) (not d!1968382) (not b!6270646) (not b!6270561) (not b!6271414) (not bm!530254) (not b!6271389) (not b!6270977) (not bm!530248) (not b!6270014) (not b!6270708) (not b!6271325) (not b!6270227) (not b!6270990) (not b!6271418) (not b!6271136) (not b!6271026) (not b!6271339) (not b!6270229) (not d!1967876) (not d!1967884) (not setNonEmpty!42650) (not b!6270836) (not b!6271261) (not b!6271019) (not b!6270453) (not b!6271412) (not d!1967830) (not b!6271205) (not b!6270123) (not b!6271135) (not d!1968498) (not d!1968372) (not b!6271196) (not b!6271430) (not bm!530135) (not b!6269941) (not b!6271398) (not b_lambda!238729) (not bm!530193) (not d!1967784) (not b!6270035) (not b!6270930) (not b!6270480) (not b!6271357) (not b!6271378) (not b!6270717) (not bm!530181) (not b!6270700) (not bm!530380) (not d!1968256) (not bm!530183) (not b!6271426) (not bm!530278) (not bs!1566497) (not d!1968110) (not b!6269927) (not b!6271364) (not b_lambda!238833) (not b!6271320) (not b!6271332) (not bm!530265) (not b!6271377) (not b!6271439) (not bm!530393) (not d!1968094) (not b!6270098) (not b!6270527) (not b!6269951) (not b!6270328) (not b!6270380) (not b!6271365) (not b!6271269) (not b!6271318) (not b_lambda!238829) (not bs!1566493) (not b!6270197) (not b!6270092) (not bm!530137) (not d!1968318) (not b!6271180) (not b!6271070) (not b!6271450) (not b!6270946) (not d!1968172) (not bm!530151) (not b_lambda!238837) (not b!6270393) (not d!1968242) (not b!6270101) (not bm!530323) (not b!6270763) (not bm!530222) (not b!6271454) (not bm!530263) (not b!6270263) (not b!6270562) (not d!1968386) (not b!6271363) (not b!6270102) (not bm!530379) (not b!6271313) (not bm!530358) (not b!6270142) (not bm!530431) (not b!6270523) (not d!1968222) (not b!6271132) (not b!6270785) (not bs!1566496) (not b!6269937) (not b!6271151) (not b!6270687) (not b!6270144) (not b!6271423) (not b!6270327) (not b!6271405) (not bs!1566494) (not b!6271333) (not d!1968054) (not bm!530228) (not b!6270662) (not b!6270684) (not b!6271142) (not b!6271304) (not b!6271267) (not b!6270674) (not b!6270978) (not d!1967764) (not b!6271407) (not b!6270258) (not bm!530395) (not b_lambda!238839) (not b!6271177) (not b!6271268) (not bs!1566495) (not bm!530385) (not b!6271013) (not b!6270341) (not d!1968332) (not b!6271023) (not d!1967774) (not b!6270214) (not b!6270114) (not d!1968500) (not bs!1566503) (not b!6271399) (not b!6270692) (not bs!1566498) (not b_lambda!238819) (not bm!530280) (not b!6271053) (not b!6271306) tp_is_empty!41631 (not d!1967872) (not b!6271422) (not bm!530374) (not b!6269928) (not b!6270780) (not bm!530325) (not b!6271449) (not b!6271009) (not bm!530199) (not b_lambda!238827) (not bm!530160) (not d!1968202) (not d!1968182) (not bm!530180) (not b!6270787) (not bm!530186) (not d!1968298) (not d!1967886) (not b!6271288) (not bm!530155) (not b!6271375) (not b!6270255) (not d!1968034) (not bm!530145) (not b!6270195) (not d!1967960) (not d!1967868) (not bm!530152) (not b!6271007) (not b!6271296) (not b!6271370) (not bs!1566502) (not b!6270377) (not bm!530231) (not b!6270026) (not d!1968174) (not b!6270254) (not b!6271397) (not b!6271220) (not b!6270792) (not b!6270848) (not b!6271256) (not b!6270260) (not bm!530413) (not bm!530356) (not d!1968432) (not b!6271451) (not d!1968140) (not b!6271254) (not b!6270430) (not bm!530247) (not bs!1566499) (not d!1967778) (not b!6270483) (not b!6270683) (not b!6270259) (not bs!1566500) (not bm!530230) (not d!1968480) (not bm!530326) (not b!6271140) (not b!6270478) (not bm!530147) (not b!6270690) (not d!1968482) (not bm!530339) (not b_lambda!238727) (not bm!530331) (not b!6271181) (not b!6271445) (not b!6270507) (not b_lambda!238843) (not b_lambda!238823) (not b!6271223) (not d!1968106) (not b!6270781) (not b!6270650) (not b!6270276) (not bm!530396) (not b!6271033) (not b!6270321) (not b!6270789) (not bm!530383) (not b!6269979) (not d!1968396) (not bm!530415) (not b!6271029) (not b!6271417) (not b!6270275) (not d!1968502) (not b!6270462) (not b!6270223) (not d!1968078) (not b!6271319) (not bm!530430) (not b!6270473) (not b!6271194) (not b!6271433) (not setNonEmpty!42648) (not b!6271431) (not b!6270448) (not b_lambda!238831) (not d!1968138) (not bm!530281) (not bm!530241) (not bm!530408) (not b!6271277) (not b!6270251) (not b!6271166) (not b!6271312) (not d!1968128) (not bm!530219) (not d!1967814) (not d!1967900) (not bm!530187) (not b!6271385) (not d!1968456) (not d!1968178) (not b!6270768) (not b!6270849) (not b!6271014) (not b!6270032) (not b!6270526) (not b!6271437) (not b!6270366) (not b!6271403) (not d!1967788) (not b!6271255) (not d!1967842) (not b!6270484) (not d!1968418) (not bm!530297) (not b!6271442) (not b!6270385) (not b!6271017) (not b!6270034) (not d!1967794) (not b!6271358) (not bm!530158) (not d!1967948) (not b!6269938) (not b!6270487) (not b!6270019) (not b!6270788) (not b!6271340) (not setNonEmpty!42647) (not d!1968022) (not b!6270482) (not d!1968416) (not bm!530420) (not b!6270085) (not b!6271276) (not bm!530418) (not b!6271031) (not b!6270383) (not bm!530240) (not b!6270767) (not b!6270230) (not b!6271323) (not b!6270819) (not bm!530411) (not b!6271410) (not d!1968238) (not b!6269936) (not bm!530412) (not b_lambda!238817) (not b!6270376) (not b!6270996) (not bs!1566501) (not b!6271441) (not b!6270543) (not d!1968236) (not bm!530245) (not bm!530375) (not b!6270226) (not b!6270716) (not bm!530424) (not bm!530386) (not b!6270382) (not b!6270783) (not b!6270680) (not d!1967888) (not bm!530205) (not b!6271421) (not b!6270474) (not b!6271282) (not bm!530377) (not b!6270100) (not b!6271427) (not d!1968120) (not b!6271275) (not bm!530136) (not b!6271331) (not b!6270988) (not d!1968270) (not b!6270521) (not d!1967988) (not b!6271434) (not bm!530296) (not bm!530425) (not b!6270173) (not b!6271455) (not b!6270702) (not b!6270995) (not b!6271425) (not b!6271207) (not b_lambda!238825))
(check-sat)
