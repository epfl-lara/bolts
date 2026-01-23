; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!627466 () Bool)

(assert start!627466)

(declare-fun b!6329922 () Bool)

(assert (=> b!6329922 true))

(assert (=> b!6329922 true))

(declare-fun lambda!347526 () Int)

(declare-fun lambda!347525 () Int)

(assert (=> b!6329922 (not (= lambda!347526 lambda!347525))))

(assert (=> b!6329922 true))

(assert (=> b!6329922 true))

(declare-fun b!6329911 () Bool)

(assert (=> b!6329911 true))

(declare-fun b!6329894 () Bool)

(declare-datatypes ((Unit!158271 0))(
  ( (Unit!158272) )
))
(declare-fun e!3845531 () Unit!158271)

(declare-fun Unit!158273 () Unit!158271)

(assert (=> b!6329894 (= e!3845531 Unit!158273)))

(declare-fun lt!2360695 () Unit!158271)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32740 0))(
  ( (C!32741 (val!26072 Int)) )
))
(declare-datatypes ((Regex!16235 0))(
  ( (ElementMatch!16235 (c!1150216 C!32740)) (Concat!25080 (regOne!32982 Regex!16235) (regTwo!32982 Regex!16235)) (EmptyExpr!16235) (Star!16235 (reg!16564 Regex!16235)) (EmptyLang!16235) (Union!16235 (regOne!32983 Regex!16235) (regTwo!32983 Regex!16235)) )
))
(declare-datatypes ((List!65004 0))(
  ( (Nil!64880) (Cons!64880 (h!71328 Regex!16235) (t!378586 List!65004)) )
))
(declare-datatypes ((Context!11238 0))(
  ( (Context!11239 (exprs!6119 List!65004)) )
))
(declare-fun lt!2360712 () (InoxSet Context!11238))

(declare-datatypes ((List!65005 0))(
  ( (Nil!64881) (Cons!64881 (h!71329 C!32740) (t!378587 List!65005)) )
))
(declare-fun s!2326 () List!65005)

(declare-fun lt!2360707 () (InoxSet Context!11238))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1066 ((InoxSet Context!11238) (InoxSet Context!11238) List!65005) Unit!158271)

(assert (=> b!6329894 (= lt!2360695 (lemmaZipperConcatMatchesSameAsBothZippers!1066 lt!2360707 lt!2360712 (t!378587 s!2326)))))

(declare-fun res!2605813 () Bool)

(declare-fun matchZipper!2247 ((InoxSet Context!11238) List!65005) Bool)

(assert (=> b!6329894 (= res!2605813 (matchZipper!2247 lt!2360707 (t!378587 s!2326)))))

(declare-fun e!3845532 () Bool)

(assert (=> b!6329894 (=> res!2605813 e!3845532)))

(assert (=> b!6329894 (= (matchZipper!2247 ((_ map or) lt!2360707 lt!2360712) (t!378587 s!2326)) e!3845532)))

(declare-fun b!6329895 () Bool)

(declare-fun e!3845542 () Bool)

(declare-fun tp_is_empty!41723 () Bool)

(declare-fun tp!1765415 () Bool)

(assert (=> b!6329895 (= e!3845542 (and tp_is_empty!41723 tp!1765415))))

(declare-fun b!6329896 () Bool)

(declare-fun res!2605802 () Bool)

(declare-fun e!3845540 () Bool)

(assert (=> b!6329896 (=> res!2605802 e!3845540)))

(declare-fun r!7292 () Regex!16235)

(declare-datatypes ((List!65006 0))(
  ( (Nil!64882) (Cons!64882 (h!71330 Context!11238) (t!378588 List!65006)) )
))
(declare-fun zl!343 () List!65006)

(declare-fun generalisedUnion!2079 (List!65004) Regex!16235)

(declare-fun unfocusZipperList!1656 (List!65006) List!65004)

(assert (=> b!6329896 (= res!2605802 (not (= r!7292 (generalisedUnion!2079 (unfocusZipperList!1656 zl!343)))))))

(declare-fun b!6329897 () Bool)

(declare-fun e!3845546 () Bool)

(declare-fun lt!2360698 () List!65004)

(declare-fun validRegex!7971 (Regex!16235) Bool)

(declare-fun generalisedConcat!1832 (List!65004) Regex!16235)

(assert (=> b!6329897 (= e!3845546 (validRegex!7971 (generalisedConcat!1832 lt!2360698)))))

(declare-fun b!6329898 () Bool)

(declare-fun res!2605797 () Bool)

(declare-fun e!3845541 () Bool)

(assert (=> b!6329898 (=> res!2605797 e!3845541)))

(get-info :version)

(assert (=> b!6329898 (= res!2605797 (not ((_ is Concat!25080) (regOne!32982 r!7292))))))

(declare-fun b!6329899 () Bool)

(declare-fun res!2605800 () Bool)

(assert (=> b!6329899 (=> res!2605800 e!3845540)))

(declare-fun isEmpty!36953 (List!65006) Bool)

(assert (=> b!6329899 (= res!2605800 (not (isEmpty!36953 (t!378588 zl!343))))))

(declare-fun b!6329900 () Bool)

(declare-fun e!3845537 () Bool)

(declare-fun tp!1765412 () Bool)

(assert (=> b!6329900 (= e!3845537 tp!1765412)))

(declare-fun b!6329901 () Bool)

(declare-fun e!3845535 () Bool)

(declare-fun tp!1765411 () Bool)

(declare-fun tp!1765413 () Bool)

(assert (=> b!6329901 (= e!3845535 (and tp!1765411 tp!1765413))))

(declare-fun b!6329902 () Bool)

(assert (=> b!6329902 (= e!3845535 tp_is_empty!41723)))

(declare-fun b!6329904 () Bool)

(declare-fun e!3845544 () Bool)

(assert (=> b!6329904 (= e!3845541 e!3845544)))

(declare-fun res!2605807 () Bool)

(assert (=> b!6329904 (=> res!2605807 e!3845544)))

(declare-fun lt!2360705 () (InoxSet Context!11238))

(assert (=> b!6329904 (= res!2605807 (not (= lt!2360707 lt!2360705)))))

(declare-fun lt!2360710 () List!65004)

(declare-fun derivationStepZipperDown!1483 (Regex!16235 Context!11238 C!32740) (InoxSet Context!11238))

(assert (=> b!6329904 (= lt!2360705 (derivationStepZipperDown!1483 (regOne!32982 (regOne!32982 r!7292)) (Context!11239 lt!2360710) (h!71329 s!2326)))))

(assert (=> b!6329904 (= lt!2360710 (Cons!64880 (regTwo!32982 (regOne!32982 r!7292)) (t!378586 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6329905 () Bool)

(declare-fun e!3845545 () Bool)

(declare-fun nullable!6228 (Regex!16235) Bool)

(assert (=> b!6329905 (= e!3845545 (nullable!6228 (regOne!32982 (regOne!32982 r!7292))))))

(declare-fun b!6329906 () Bool)

(declare-fun res!2605792 () Bool)

(declare-fun e!3845534 () Bool)

(assert (=> b!6329906 (=> res!2605792 e!3845534)))

(assert (=> b!6329906 (= res!2605792 (not (= (exprs!6119 (h!71330 zl!343)) (Cons!64880 (Concat!25080 (regOne!32982 (regOne!32982 r!7292)) (regTwo!32982 (regOne!32982 r!7292))) (t!378586 (exprs!6119 (h!71330 zl!343)))))))))

(declare-fun b!6329907 () Bool)

(assert (=> b!6329907 (= e!3845532 (matchZipper!2247 lt!2360712 (t!378587 s!2326)))))

(declare-fun b!6329908 () Bool)

(declare-fun e!3845536 () Bool)

(assert (=> b!6329908 (= e!3845544 e!3845536)))

(declare-fun res!2605804 () Bool)

(assert (=> b!6329908 (=> res!2605804 e!3845536)))

(declare-fun lt!2360704 () Bool)

(assert (=> b!6329908 (= res!2605804 (not (= lt!2360704 (matchZipper!2247 lt!2360705 (t!378587 s!2326)))))))

(assert (=> b!6329908 (= lt!2360704 (matchZipper!2247 lt!2360707 (t!378587 s!2326)))))

(declare-fun b!6329909 () Bool)

(declare-fun res!2605796 () Bool)

(assert (=> b!6329909 (=> res!2605796 e!3845540)))

(assert (=> b!6329909 (= res!2605796 (not (= r!7292 (generalisedConcat!1832 (exprs!6119 (h!71330 zl!343))))))))

(declare-fun tp!1765409 () Bool)

(declare-fun b!6329910 () Bool)

(declare-fun e!3845533 () Bool)

(declare-fun e!3845543 () Bool)

(declare-fun inv!83834 (Context!11238) Bool)

(assert (=> b!6329910 (= e!3845543 (and (inv!83834 (h!71330 zl!343)) e!3845533 tp!1765409))))

(declare-fun e!3845539 () Bool)

(assert (=> b!6329911 (= e!3845539 e!3845541)))

(declare-fun res!2605791 () Bool)

(assert (=> b!6329911 (=> res!2605791 e!3845541)))

(assert (=> b!6329911 (= res!2605791 (or (and ((_ is ElementMatch!16235) (regOne!32982 r!7292)) (= (c!1150216 (regOne!32982 r!7292)) (h!71329 s!2326))) ((_ is Union!16235) (regOne!32982 r!7292))))))

(declare-fun lt!2360699 () Unit!158271)

(assert (=> b!6329911 (= lt!2360699 e!3845531)))

(declare-fun c!1150215 () Bool)

(assert (=> b!6329911 (= c!1150215 (nullable!6228 (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11238))

(declare-fun lambda!347527 () Int)

(declare-fun flatMap!1740 ((InoxSet Context!11238) Int) (InoxSet Context!11238))

(declare-fun derivationStepZipperUp!1409 (Context!11238 C!32740) (InoxSet Context!11238))

(assert (=> b!6329911 (= (flatMap!1740 z!1189 lambda!347527) (derivationStepZipperUp!1409 (h!71330 zl!343) (h!71329 s!2326)))))

(declare-fun lt!2360702 () Unit!158271)

(declare-fun lemmaFlatMapOnSingletonSet!1266 ((InoxSet Context!11238) Context!11238 Int) Unit!158271)

(assert (=> b!6329911 (= lt!2360702 (lemmaFlatMapOnSingletonSet!1266 z!1189 (h!71330 zl!343) lambda!347527))))

(declare-fun lt!2360703 () Context!11238)

(assert (=> b!6329911 (= lt!2360712 (derivationStepZipperUp!1409 lt!2360703 (h!71329 s!2326)))))

(assert (=> b!6329911 (= lt!2360707 (derivationStepZipperDown!1483 (h!71328 (exprs!6119 (h!71330 zl!343))) lt!2360703 (h!71329 s!2326)))))

(assert (=> b!6329911 (= lt!2360703 (Context!11239 (t!378586 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun lt!2360716 () (InoxSet Context!11238))

(assert (=> b!6329911 (= lt!2360716 (derivationStepZipperUp!1409 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343))))) (h!71329 s!2326)))))

(declare-fun b!6329912 () Bool)

(assert (=> b!6329912 (= e!3845536 e!3845534)))

(declare-fun res!2605810 () Bool)

(assert (=> b!6329912 (=> res!2605810 e!3845534)))

(declare-fun lt!2360713 () (InoxSet Context!11238))

(assert (=> b!6329912 (= res!2605810 (not (= lt!2360713 lt!2360705)))))

(declare-fun lt!2360711 () (InoxSet Context!11238))

(declare-fun lt!2360715 () Context!11238)

(assert (=> b!6329912 (= (flatMap!1740 lt!2360711 lambda!347527) (derivationStepZipperUp!1409 lt!2360715 (h!71329 s!2326)))))

(declare-fun lt!2360709 () Unit!158271)

(assert (=> b!6329912 (= lt!2360709 (lemmaFlatMapOnSingletonSet!1266 lt!2360711 lt!2360715 lambda!347527))))

(declare-fun lt!2360706 () (InoxSet Context!11238))

(assert (=> b!6329912 (= lt!2360706 (derivationStepZipperUp!1409 lt!2360715 (h!71329 s!2326)))))

(declare-fun derivationStepZipper!2201 ((InoxSet Context!11238) C!32740) (InoxSet Context!11238))

(assert (=> b!6329912 (= lt!2360713 (derivationStepZipper!2201 lt!2360711 (h!71329 s!2326)))))

(assert (=> b!6329912 (= lt!2360711 (store ((as const (Array Context!11238 Bool)) false) lt!2360715 true))))

(assert (=> b!6329912 (= lt!2360715 (Context!11239 lt!2360698))))

(assert (=> b!6329912 (= lt!2360698 (Cons!64880 (regOne!32982 (regOne!32982 r!7292)) lt!2360710))))

(declare-fun b!6329913 () Bool)

(declare-fun res!2605805 () Bool)

(assert (=> b!6329913 (=> res!2605805 e!3845541)))

(assert (=> b!6329913 (= res!2605805 e!3845545)))

(declare-fun res!2605814 () Bool)

(assert (=> b!6329913 (=> (not res!2605814) (not e!3845545))))

(assert (=> b!6329913 (= res!2605814 ((_ is Concat!25080) (regOne!32982 r!7292)))))

(declare-fun setElem!43072 () Context!11238)

(declare-fun setRes!43072 () Bool)

(declare-fun tp!1765414 () Bool)

(declare-fun setNonEmpty!43072 () Bool)

(assert (=> setNonEmpty!43072 (= setRes!43072 (and tp!1765414 (inv!83834 setElem!43072) e!3845537))))

(declare-fun setRest!43072 () (InoxSet Context!11238))

(assert (=> setNonEmpty!43072 (= z!1189 ((_ map or) (store ((as const (Array Context!11238 Bool)) false) setElem!43072 true) setRest!43072))))

(declare-fun b!6329914 () Bool)

(declare-fun tp!1765410 () Bool)

(assert (=> b!6329914 (= e!3845535 tp!1765410)))

(declare-fun b!6329915 () Bool)

(assert (=> b!6329915 (= e!3845534 e!3845546)))

(declare-fun res!2605809 () Bool)

(assert (=> b!6329915 (=> res!2605809 e!3845546)))

(declare-fun lt!2360701 () List!65006)

(declare-fun zipperDepthTotal!372 (List!65006) Int)

(assert (=> b!6329915 (= res!2605809 (>= (zipperDepthTotal!372 lt!2360701) (zipperDepthTotal!372 zl!343)))))

(assert (=> b!6329915 (= lt!2360701 (Cons!64882 lt!2360715 Nil!64882))))

(declare-fun b!6329916 () Bool)

(declare-fun tp!1765418 () Bool)

(declare-fun tp!1765417 () Bool)

(assert (=> b!6329916 (= e!3845535 (and tp!1765418 tp!1765417))))

(declare-fun b!6329917 () Bool)

(declare-fun res!2605806 () Bool)

(assert (=> b!6329917 (=> res!2605806 e!3845546)))

(declare-fun zipperDepth!342 (List!65006) Int)

(assert (=> b!6329917 (= res!2605806 (> (zipperDepth!342 lt!2360701) (zipperDepth!342 zl!343)))))

(declare-fun b!6329918 () Bool)

(declare-fun tp!1765416 () Bool)

(assert (=> b!6329918 (= e!3845533 tp!1765416)))

(declare-fun b!6329919 () Bool)

(declare-fun res!2605793 () Bool)

(assert (=> b!6329919 (=> res!2605793 e!3845534)))

(declare-fun contextDepthTotal!344 (Context!11238) Int)

(assert (=> b!6329919 (= res!2605793 (>= (contextDepthTotal!344 lt!2360715) (contextDepthTotal!344 (h!71330 zl!343))))))

(declare-fun res!2605794 () Bool)

(declare-fun e!3845538 () Bool)

(assert (=> start!627466 (=> (not res!2605794) (not e!3845538))))

(assert (=> start!627466 (= res!2605794 (validRegex!7971 r!7292))))

(assert (=> start!627466 e!3845538))

(assert (=> start!627466 e!3845535))

(declare-fun condSetEmpty!43072 () Bool)

(assert (=> start!627466 (= condSetEmpty!43072 (= z!1189 ((as const (Array Context!11238 Bool)) false)))))

(assert (=> start!627466 setRes!43072))

(assert (=> start!627466 e!3845543))

(assert (=> start!627466 e!3845542))

(declare-fun b!6329903 () Bool)

(assert (=> b!6329903 (= e!3845538 (not e!3845540))))

(declare-fun res!2605798 () Bool)

(assert (=> b!6329903 (=> res!2605798 e!3845540)))

(assert (=> b!6329903 (= res!2605798 (not ((_ is Cons!64882) zl!343)))))

(declare-fun lt!2360708 () Bool)

(declare-fun matchRSpec!3336 (Regex!16235 List!65005) Bool)

(assert (=> b!6329903 (= lt!2360708 (matchRSpec!3336 r!7292 s!2326))))

(declare-fun matchR!8418 (Regex!16235 List!65005) Bool)

(assert (=> b!6329903 (= lt!2360708 (matchR!8418 r!7292 s!2326))))

(declare-fun lt!2360696 () Unit!158271)

(declare-fun mainMatchTheorem!3336 (Regex!16235 List!65005) Unit!158271)

(assert (=> b!6329903 (= lt!2360696 (mainMatchTheorem!3336 r!7292 s!2326))))

(declare-fun setIsEmpty!43072 () Bool)

(assert (=> setIsEmpty!43072 setRes!43072))

(declare-fun b!6329920 () Bool)

(declare-fun res!2605808 () Bool)

(assert (=> b!6329920 (=> res!2605808 e!3845540)))

(assert (=> b!6329920 (= res!2605808 (or ((_ is EmptyExpr!16235) r!7292) ((_ is EmptyLang!16235) r!7292) ((_ is ElementMatch!16235) r!7292) ((_ is Union!16235) r!7292) (not ((_ is Concat!25080) r!7292))))))

(declare-fun b!6329921 () Bool)

(declare-fun res!2605812 () Bool)

(assert (=> b!6329921 (=> res!2605812 e!3845534)))

(assert (=> b!6329921 (= res!2605812 (not (= lt!2360704 (matchZipper!2247 lt!2360713 (t!378587 s!2326)))))))

(assert (=> b!6329922 (= e!3845540 e!3845539)))

(declare-fun res!2605799 () Bool)

(assert (=> b!6329922 (=> res!2605799 e!3845539)))

(declare-fun lt!2360714 () Bool)

(assert (=> b!6329922 (= res!2605799 (or (not (= lt!2360708 lt!2360714)) ((_ is Nil!64881) s!2326)))))

(declare-fun Exists!3305 (Int) Bool)

(assert (=> b!6329922 (= (Exists!3305 lambda!347525) (Exists!3305 lambda!347526))))

(declare-fun lt!2360700 () Unit!158271)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1842 (Regex!16235 Regex!16235 List!65005) Unit!158271)

(assert (=> b!6329922 (= lt!2360700 (lemmaExistCutMatchRandMatchRSpecEquivalent!1842 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326))))

(assert (=> b!6329922 (= lt!2360714 (Exists!3305 lambda!347525))))

(declare-datatypes ((tuple2!66428 0))(
  ( (tuple2!66429 (_1!36517 List!65005) (_2!36517 List!65005)) )
))
(declare-datatypes ((Option!16126 0))(
  ( (None!16125) (Some!16125 (v!52292 tuple2!66428)) )
))
(declare-fun isDefined!12829 (Option!16126) Bool)

(declare-fun findConcatSeparation!2540 (Regex!16235 Regex!16235 List!65005 List!65005 List!65005) Option!16126)

(assert (=> b!6329922 (= lt!2360714 (isDefined!12829 (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) Nil!64881 s!2326 s!2326)))))

(declare-fun lt!2360697 () Unit!158271)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2304 (Regex!16235 Regex!16235 List!65005) Unit!158271)

(assert (=> b!6329922 (= lt!2360697 (lemmaFindConcatSeparationEquivalentToExists!2304 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326))))

(declare-fun b!6329923 () Bool)

(declare-fun Unit!158274 () Unit!158271)

(assert (=> b!6329923 (= e!3845531 Unit!158274)))

(declare-fun b!6329924 () Bool)

(declare-fun res!2605803 () Bool)

(assert (=> b!6329924 (=> (not res!2605803) (not e!3845538))))

(declare-fun unfocusZipper!1977 (List!65006) Regex!16235)

(assert (=> b!6329924 (= res!2605803 (= r!7292 (unfocusZipper!1977 zl!343)))))

(declare-fun b!6329925 () Bool)

(declare-fun res!2605811 () Bool)

(assert (=> b!6329925 (=> res!2605811 e!3845540)))

(assert (=> b!6329925 (= res!2605811 (not ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6329926 () Bool)

(declare-fun res!2605795 () Bool)

(assert (=> b!6329926 (=> res!2605795 e!3845539)))

(declare-fun isEmpty!36954 (List!65004) Bool)

(assert (=> b!6329926 (= res!2605795 (isEmpty!36954 (t!378586 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6329927 () Bool)

(declare-fun res!2605801 () Bool)

(assert (=> b!6329927 (=> (not res!2605801) (not e!3845538))))

(declare-fun toList!10019 ((InoxSet Context!11238)) List!65006)

(assert (=> b!6329927 (= res!2605801 (= (toList!10019 z!1189) zl!343))))

(assert (= (and start!627466 res!2605794) b!6329927))

(assert (= (and b!6329927 res!2605801) b!6329924))

(assert (= (and b!6329924 res!2605803) b!6329903))

(assert (= (and b!6329903 (not res!2605798)) b!6329899))

(assert (= (and b!6329899 (not res!2605800)) b!6329909))

(assert (= (and b!6329909 (not res!2605796)) b!6329925))

(assert (= (and b!6329925 (not res!2605811)) b!6329896))

(assert (= (and b!6329896 (not res!2605802)) b!6329920))

(assert (= (and b!6329920 (not res!2605808)) b!6329922))

(assert (= (and b!6329922 (not res!2605799)) b!6329926))

(assert (= (and b!6329926 (not res!2605795)) b!6329911))

(assert (= (and b!6329911 c!1150215) b!6329894))

(assert (= (and b!6329911 (not c!1150215)) b!6329923))

(assert (= (and b!6329894 (not res!2605813)) b!6329907))

(assert (= (and b!6329911 (not res!2605791)) b!6329913))

(assert (= (and b!6329913 res!2605814) b!6329905))

(assert (= (and b!6329913 (not res!2605805)) b!6329898))

(assert (= (and b!6329898 (not res!2605797)) b!6329904))

(assert (= (and b!6329904 (not res!2605807)) b!6329908))

(assert (= (and b!6329908 (not res!2605804)) b!6329912))

(assert (= (and b!6329912 (not res!2605810)) b!6329921))

(assert (= (and b!6329921 (not res!2605812)) b!6329906))

(assert (= (and b!6329906 (not res!2605792)) b!6329919))

(assert (= (and b!6329919 (not res!2605793)) b!6329915))

(assert (= (and b!6329915 (not res!2605809)) b!6329917))

(assert (= (and b!6329917 (not res!2605806)) b!6329897))

(assert (= (and start!627466 ((_ is ElementMatch!16235) r!7292)) b!6329902))

(assert (= (and start!627466 ((_ is Concat!25080) r!7292)) b!6329901))

(assert (= (and start!627466 ((_ is Star!16235) r!7292)) b!6329914))

(assert (= (and start!627466 ((_ is Union!16235) r!7292)) b!6329916))

(assert (= (and start!627466 condSetEmpty!43072) setIsEmpty!43072))

(assert (= (and start!627466 (not condSetEmpty!43072)) setNonEmpty!43072))

(assert (= setNonEmpty!43072 b!6329900))

(assert (= b!6329910 b!6329918))

(assert (= (and start!627466 ((_ is Cons!64882) zl!343)) b!6329910))

(assert (= (and start!627466 ((_ is Cons!64881) s!2326)) b!6329895))

(declare-fun m!7140558 () Bool)

(assert (=> b!6329897 m!7140558))

(assert (=> b!6329897 m!7140558))

(declare-fun m!7140560 () Bool)

(assert (=> b!6329897 m!7140560))

(declare-fun m!7140562 () Bool)

(assert (=> b!6329926 m!7140562))

(declare-fun m!7140564 () Bool)

(assert (=> b!6329911 m!7140564))

(declare-fun m!7140566 () Bool)

(assert (=> b!6329911 m!7140566))

(declare-fun m!7140568 () Bool)

(assert (=> b!6329911 m!7140568))

(declare-fun m!7140570 () Bool)

(assert (=> b!6329911 m!7140570))

(declare-fun m!7140572 () Bool)

(assert (=> b!6329911 m!7140572))

(declare-fun m!7140574 () Bool)

(assert (=> b!6329911 m!7140574))

(declare-fun m!7140576 () Bool)

(assert (=> b!6329911 m!7140576))

(declare-fun m!7140578 () Bool)

(assert (=> b!6329905 m!7140578))

(declare-fun m!7140580 () Bool)

(assert (=> b!6329915 m!7140580))

(declare-fun m!7140582 () Bool)

(assert (=> b!6329915 m!7140582))

(declare-fun m!7140584 () Bool)

(assert (=> b!6329919 m!7140584))

(declare-fun m!7140586 () Bool)

(assert (=> b!6329919 m!7140586))

(declare-fun m!7140588 () Bool)

(assert (=> b!6329927 m!7140588))

(declare-fun m!7140590 () Bool)

(assert (=> b!6329903 m!7140590))

(declare-fun m!7140592 () Bool)

(assert (=> b!6329903 m!7140592))

(declare-fun m!7140594 () Bool)

(assert (=> b!6329903 m!7140594))

(declare-fun m!7140596 () Bool)

(assert (=> b!6329922 m!7140596))

(declare-fun m!7140598 () Bool)

(assert (=> b!6329922 m!7140598))

(declare-fun m!7140600 () Bool)

(assert (=> b!6329922 m!7140600))

(assert (=> b!6329922 m!7140600))

(declare-fun m!7140602 () Bool)

(assert (=> b!6329922 m!7140602))

(declare-fun m!7140604 () Bool)

(assert (=> b!6329922 m!7140604))

(assert (=> b!6329922 m!7140596))

(declare-fun m!7140606 () Bool)

(assert (=> b!6329922 m!7140606))

(declare-fun m!7140608 () Bool)

(assert (=> b!6329899 m!7140608))

(declare-fun m!7140610 () Bool)

(assert (=> setNonEmpty!43072 m!7140610))

(declare-fun m!7140612 () Bool)

(assert (=> b!6329907 m!7140612))

(declare-fun m!7140614 () Bool)

(assert (=> b!6329904 m!7140614))

(declare-fun m!7140616 () Bool)

(assert (=> b!6329917 m!7140616))

(declare-fun m!7140618 () Bool)

(assert (=> b!6329917 m!7140618))

(declare-fun m!7140620 () Bool)

(assert (=> b!6329909 m!7140620))

(declare-fun m!7140622 () Bool)

(assert (=> b!6329912 m!7140622))

(declare-fun m!7140624 () Bool)

(assert (=> b!6329912 m!7140624))

(declare-fun m!7140626 () Bool)

(assert (=> b!6329912 m!7140626))

(declare-fun m!7140628 () Bool)

(assert (=> b!6329912 m!7140628))

(declare-fun m!7140630 () Bool)

(assert (=> b!6329912 m!7140630))

(declare-fun m!7140632 () Bool)

(assert (=> b!6329894 m!7140632))

(declare-fun m!7140634 () Bool)

(assert (=> b!6329894 m!7140634))

(declare-fun m!7140636 () Bool)

(assert (=> b!6329894 m!7140636))

(declare-fun m!7140638 () Bool)

(assert (=> b!6329924 m!7140638))

(declare-fun m!7140640 () Bool)

(assert (=> b!6329921 m!7140640))

(declare-fun m!7140642 () Bool)

(assert (=> b!6329896 m!7140642))

(assert (=> b!6329896 m!7140642))

(declare-fun m!7140644 () Bool)

(assert (=> b!6329896 m!7140644))

(declare-fun m!7140646 () Bool)

(assert (=> b!6329910 m!7140646))

(declare-fun m!7140648 () Bool)

(assert (=> b!6329908 m!7140648))

(assert (=> b!6329908 m!7140634))

(declare-fun m!7140650 () Bool)

(assert (=> start!627466 m!7140650))

(check-sat (not b!6329926) (not b!6329908) (not start!627466) (not b!6329905) (not b!6329916) (not b!6329921) (not b!6329900) (not b!6329895) (not b!6329894) (not b!6329914) (not b!6329924) (not b!6329912) (not b!6329922) (not setNonEmpty!43072) (not b!6329897) (not b!6329907) (not b!6329901) (not b!6329927) (not b!6329911) (not b!6329915) (not b!6329896) (not b!6329899) (not b!6329903) (not b!6329918) (not b!6329909) (not b!6329919) (not b!6329910) (not b!6329917) (not b!6329904) tp_is_empty!41723)
(check-sat)
(get-model)

(declare-fun b!6329940 () Bool)

(assert (=> b!6329940 true))

(declare-fun bs!1583666 () Bool)

(declare-fun b!6329942 () Bool)

(assert (= bs!1583666 (and b!6329942 b!6329940)))

(declare-fun lt!2360725 () Int)

(declare-fun lt!2360728 () Int)

(declare-fun lambda!347535 () Int)

(declare-fun lambda!347536 () Int)

(assert (=> bs!1583666 (= (= lt!2360725 lt!2360728) (= lambda!347536 lambda!347535))))

(assert (=> b!6329942 true))

(declare-fun d!1986659 () Bool)

(declare-fun e!3845552 () Bool)

(assert (=> d!1986659 e!3845552))

(declare-fun res!2605817 () Bool)

(assert (=> d!1986659 (=> (not res!2605817) (not e!3845552))))

(assert (=> d!1986659 (= res!2605817 (>= lt!2360725 0))))

(declare-fun e!3845551 () Int)

(assert (=> d!1986659 (= lt!2360725 e!3845551)))

(declare-fun c!1150225 () Bool)

(assert (=> d!1986659 (= c!1150225 ((_ is Cons!64882) lt!2360701))))

(assert (=> d!1986659 (= (zipperDepth!342 lt!2360701) lt!2360725)))

(assert (=> b!6329940 (= e!3845551 lt!2360728)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!232 (Context!11238) Int)

(assert (=> b!6329940 (= lt!2360728 (maxBigInt!0 (contextDepth!232 (h!71330 lt!2360701)) (zipperDepth!342 (t!378588 lt!2360701))))))

(declare-fun lt!2360727 () Unit!158271)

(declare-fun lambda!347534 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!216 (List!65006 Int Int Int) Unit!158271)

(assert (=> b!6329940 (= lt!2360727 (lemmaForallContextDepthBiggerThanTransitive!216 (t!378588 lt!2360701) lt!2360728 (zipperDepth!342 (t!378588 lt!2360701)) lambda!347534))))

(declare-fun forall!15385 (List!65006 Int) Bool)

(assert (=> b!6329940 (forall!15385 (t!378588 lt!2360701) lambda!347535)))

(declare-fun lt!2360726 () Unit!158271)

(assert (=> b!6329940 (= lt!2360726 lt!2360727)))

(declare-fun b!6329941 () Bool)

(assert (=> b!6329941 (= e!3845551 0)))

(assert (=> b!6329942 (= e!3845552 (forall!15385 lt!2360701 lambda!347536))))

(assert (= (and d!1986659 c!1150225) b!6329940))

(assert (= (and d!1986659 (not c!1150225)) b!6329941))

(assert (= (and d!1986659 res!2605817) b!6329942))

(declare-fun m!7140652 () Bool)

(assert (=> b!6329940 m!7140652))

(declare-fun m!7140654 () Bool)

(assert (=> b!6329940 m!7140654))

(declare-fun m!7140656 () Bool)

(assert (=> b!6329940 m!7140656))

(assert (=> b!6329940 m!7140654))

(declare-fun m!7140658 () Bool)

(assert (=> b!6329940 m!7140658))

(declare-fun m!7140660 () Bool)

(assert (=> b!6329940 m!7140660))

(assert (=> b!6329940 m!7140654))

(assert (=> b!6329940 m!7140652))

(declare-fun m!7140662 () Bool)

(assert (=> b!6329942 m!7140662))

(assert (=> b!6329917 d!1986659))

(declare-fun bs!1583668 () Bool)

(declare-fun b!6329945 () Bool)

(assert (= bs!1583668 (and b!6329945 b!6329940)))

(declare-fun lambda!347540 () Int)

(assert (=> bs!1583668 (= lambda!347540 lambda!347534)))

(declare-fun lt!2360732 () Int)

(declare-fun lambda!347541 () Int)

(assert (=> bs!1583668 (= (= lt!2360732 lt!2360728) (= lambda!347541 lambda!347535))))

(declare-fun bs!1583669 () Bool)

(assert (= bs!1583669 (and b!6329945 b!6329942)))

(assert (=> bs!1583669 (= (= lt!2360732 lt!2360725) (= lambda!347541 lambda!347536))))

(assert (=> b!6329945 true))

(declare-fun bs!1583670 () Bool)

(declare-fun b!6329947 () Bool)

(assert (= bs!1583670 (and b!6329947 b!6329940)))

(declare-fun lt!2360729 () Int)

(declare-fun lambda!347542 () Int)

(assert (=> bs!1583670 (= (= lt!2360729 lt!2360728) (= lambda!347542 lambda!347535))))

(declare-fun bs!1583671 () Bool)

(assert (= bs!1583671 (and b!6329947 b!6329942)))

(assert (=> bs!1583671 (= (= lt!2360729 lt!2360725) (= lambda!347542 lambda!347536))))

(declare-fun bs!1583672 () Bool)

(assert (= bs!1583672 (and b!6329947 b!6329945)))

(assert (=> bs!1583672 (= (= lt!2360729 lt!2360732) (= lambda!347542 lambda!347541))))

(assert (=> b!6329947 true))

(declare-fun d!1986663 () Bool)

(declare-fun e!3845554 () Bool)

(assert (=> d!1986663 e!3845554))

(declare-fun res!2605818 () Bool)

(assert (=> d!1986663 (=> (not res!2605818) (not e!3845554))))

(assert (=> d!1986663 (= res!2605818 (>= lt!2360729 0))))

(declare-fun e!3845553 () Int)

(assert (=> d!1986663 (= lt!2360729 e!3845553)))

(declare-fun c!1150226 () Bool)

(assert (=> d!1986663 (= c!1150226 ((_ is Cons!64882) zl!343))))

(assert (=> d!1986663 (= (zipperDepth!342 zl!343) lt!2360729)))

(assert (=> b!6329945 (= e!3845553 lt!2360732)))

(assert (=> b!6329945 (= lt!2360732 (maxBigInt!0 (contextDepth!232 (h!71330 zl!343)) (zipperDepth!342 (t!378588 zl!343))))))

(declare-fun lt!2360731 () Unit!158271)

(assert (=> b!6329945 (= lt!2360731 (lemmaForallContextDepthBiggerThanTransitive!216 (t!378588 zl!343) lt!2360732 (zipperDepth!342 (t!378588 zl!343)) lambda!347540))))

(assert (=> b!6329945 (forall!15385 (t!378588 zl!343) lambda!347541)))

(declare-fun lt!2360730 () Unit!158271)

(assert (=> b!6329945 (= lt!2360730 lt!2360731)))

(declare-fun b!6329946 () Bool)

(assert (=> b!6329946 (= e!3845553 0)))

(assert (=> b!6329947 (= e!3845554 (forall!15385 zl!343 lambda!347542))))

(assert (= (and d!1986663 c!1150226) b!6329945))

(assert (= (and d!1986663 (not c!1150226)) b!6329946))

(assert (= (and d!1986663 res!2605818) b!6329947))

(declare-fun m!7140668 () Bool)

(assert (=> b!6329945 m!7140668))

(declare-fun m!7140670 () Bool)

(assert (=> b!6329945 m!7140670))

(declare-fun m!7140672 () Bool)

(assert (=> b!6329945 m!7140672))

(assert (=> b!6329945 m!7140670))

(declare-fun m!7140674 () Bool)

(assert (=> b!6329945 m!7140674))

(declare-fun m!7140676 () Bool)

(assert (=> b!6329945 m!7140676))

(assert (=> b!6329945 m!7140670))

(assert (=> b!6329945 m!7140668))

(declare-fun m!7140678 () Bool)

(assert (=> b!6329947 m!7140678))

(assert (=> b!6329917 d!1986663))

(declare-fun d!1986669 () Bool)

(declare-fun c!1150237 () Bool)

(declare-fun isEmpty!36956 (List!65005) Bool)

(assert (=> d!1986669 (= c!1150237 (isEmpty!36956 (t!378587 s!2326)))))

(declare-fun e!3845576 () Bool)

(assert (=> d!1986669 (= (matchZipper!2247 lt!2360712 (t!378587 s!2326)) e!3845576)))

(declare-fun b!6329983 () Bool)

(declare-fun nullableZipper!2003 ((InoxSet Context!11238)) Bool)

(assert (=> b!6329983 (= e!3845576 (nullableZipper!2003 lt!2360712))))

(declare-fun b!6329984 () Bool)

(declare-fun head!12966 (List!65005) C!32740)

(declare-fun tail!12051 (List!65005) List!65005)

(assert (=> b!6329984 (= e!3845576 (matchZipper!2247 (derivationStepZipper!2201 lt!2360712 (head!12966 (t!378587 s!2326))) (tail!12051 (t!378587 s!2326))))))

(assert (= (and d!1986669 c!1150237) b!6329983))

(assert (= (and d!1986669 (not c!1150237)) b!6329984))

(declare-fun m!7140686 () Bool)

(assert (=> d!1986669 m!7140686))

(declare-fun m!7140688 () Bool)

(assert (=> b!6329983 m!7140688))

(declare-fun m!7140690 () Bool)

(assert (=> b!6329984 m!7140690))

(assert (=> b!6329984 m!7140690))

(declare-fun m!7140692 () Bool)

(assert (=> b!6329984 m!7140692))

(declare-fun m!7140694 () Bool)

(assert (=> b!6329984 m!7140694))

(assert (=> b!6329984 m!7140692))

(assert (=> b!6329984 m!7140694))

(declare-fun m!7140696 () Bool)

(assert (=> b!6329984 m!7140696))

(assert (=> b!6329907 d!1986669))

(declare-fun d!1986673 () Bool)

(assert (=> d!1986673 (= (isEmpty!36954 (t!378586 (exprs!6119 (h!71330 zl!343)))) ((_ is Nil!64880) (t!378586 (exprs!6119 (h!71330 zl!343)))))))

(assert (=> b!6329926 d!1986673))

(declare-fun b!6330062 () Bool)

(declare-fun e!3845619 () Bool)

(assert (=> b!6330062 (= e!3845619 (isEmpty!36954 (t!378586 (unfocusZipperList!1656 zl!343))))))

(declare-fun b!6330063 () Bool)

(declare-fun e!3845621 () Bool)

(declare-fun e!3845620 () Bool)

(assert (=> b!6330063 (= e!3845621 e!3845620)))

(declare-fun c!1150259 () Bool)

(assert (=> b!6330063 (= c!1150259 (isEmpty!36954 (unfocusZipperList!1656 zl!343)))))

(declare-fun b!6330064 () Bool)

(declare-fun e!3845622 () Bool)

(declare-fun lt!2360744 () Regex!16235)

(declare-fun isUnion!1076 (Regex!16235) Bool)

(assert (=> b!6330064 (= e!3845622 (isUnion!1076 lt!2360744))))

(declare-fun b!6330065 () Bool)

(declare-fun e!3845623 () Regex!16235)

(assert (=> b!6330065 (= e!3845623 (h!71328 (unfocusZipperList!1656 zl!343)))))

(declare-fun b!6330066 () Bool)

(declare-fun head!12967 (List!65004) Regex!16235)

(assert (=> b!6330066 (= e!3845622 (= lt!2360744 (head!12967 (unfocusZipperList!1656 zl!343))))))

(declare-fun b!6330067 () Bool)

(declare-fun e!3845624 () Regex!16235)

(assert (=> b!6330067 (= e!3845624 (Union!16235 (h!71328 (unfocusZipperList!1656 zl!343)) (generalisedUnion!2079 (t!378586 (unfocusZipperList!1656 zl!343)))))))

(declare-fun d!1986675 () Bool)

(assert (=> d!1986675 e!3845621))

(declare-fun res!2605869 () Bool)

(assert (=> d!1986675 (=> (not res!2605869) (not e!3845621))))

(assert (=> d!1986675 (= res!2605869 (validRegex!7971 lt!2360744))))

(assert (=> d!1986675 (= lt!2360744 e!3845623)))

(declare-fun c!1150260 () Bool)

(assert (=> d!1986675 (= c!1150260 e!3845619)))

(declare-fun res!2605870 () Bool)

(assert (=> d!1986675 (=> (not res!2605870) (not e!3845619))))

(assert (=> d!1986675 (= res!2605870 ((_ is Cons!64880) (unfocusZipperList!1656 zl!343)))))

(declare-fun lambda!347551 () Int)

(declare-fun forall!15386 (List!65004 Int) Bool)

(assert (=> d!1986675 (forall!15386 (unfocusZipperList!1656 zl!343) lambda!347551)))

(assert (=> d!1986675 (= (generalisedUnion!2079 (unfocusZipperList!1656 zl!343)) lt!2360744)))

(declare-fun b!6330068 () Bool)

(assert (=> b!6330068 (= e!3845623 e!3845624)))

(declare-fun c!1150262 () Bool)

(assert (=> b!6330068 (= c!1150262 ((_ is Cons!64880) (unfocusZipperList!1656 zl!343)))))

(declare-fun b!6330069 () Bool)

(declare-fun isEmptyLang!1646 (Regex!16235) Bool)

(assert (=> b!6330069 (= e!3845620 (isEmptyLang!1646 lt!2360744))))

(declare-fun b!6330070 () Bool)

(assert (=> b!6330070 (= e!3845624 EmptyLang!16235)))

(declare-fun b!6330071 () Bool)

(assert (=> b!6330071 (= e!3845620 e!3845622)))

(declare-fun c!1150261 () Bool)

(declare-fun tail!12052 (List!65004) List!65004)

(assert (=> b!6330071 (= c!1150261 (isEmpty!36954 (tail!12052 (unfocusZipperList!1656 zl!343))))))

(assert (= (and d!1986675 res!2605870) b!6330062))

(assert (= (and d!1986675 c!1150260) b!6330065))

(assert (= (and d!1986675 (not c!1150260)) b!6330068))

(assert (= (and b!6330068 c!1150262) b!6330067))

(assert (= (and b!6330068 (not c!1150262)) b!6330070))

(assert (= (and d!1986675 res!2605869) b!6330063))

(assert (= (and b!6330063 c!1150259) b!6330069))

(assert (= (and b!6330063 (not c!1150259)) b!6330071))

(assert (= (and b!6330071 c!1150261) b!6330066))

(assert (= (and b!6330071 (not c!1150261)) b!6330064))

(declare-fun m!7140718 () Bool)

(assert (=> b!6330069 m!7140718))

(assert (=> b!6330066 m!7140642))

(declare-fun m!7140720 () Bool)

(assert (=> b!6330066 m!7140720))

(declare-fun m!7140722 () Bool)

(assert (=> d!1986675 m!7140722))

(assert (=> d!1986675 m!7140642))

(declare-fun m!7140724 () Bool)

(assert (=> d!1986675 m!7140724))

(declare-fun m!7140726 () Bool)

(assert (=> b!6330062 m!7140726))

(assert (=> b!6330063 m!7140642))

(declare-fun m!7140728 () Bool)

(assert (=> b!6330063 m!7140728))

(declare-fun m!7140730 () Bool)

(assert (=> b!6330064 m!7140730))

(declare-fun m!7140732 () Bool)

(assert (=> b!6330067 m!7140732))

(assert (=> b!6330071 m!7140642))

(declare-fun m!7140734 () Bool)

(assert (=> b!6330071 m!7140734))

(assert (=> b!6330071 m!7140734))

(declare-fun m!7140736 () Bool)

(assert (=> b!6330071 m!7140736))

(assert (=> b!6329896 d!1986675))

(declare-fun bs!1583678 () Bool)

(declare-fun d!1986681 () Bool)

(assert (= bs!1583678 (and d!1986681 d!1986675)))

(declare-fun lambda!347554 () Int)

(assert (=> bs!1583678 (= lambda!347554 lambda!347551)))

(declare-fun lt!2360750 () List!65004)

(assert (=> d!1986681 (forall!15386 lt!2360750 lambda!347554)))

(declare-fun e!3845630 () List!65004)

(assert (=> d!1986681 (= lt!2360750 e!3845630)))

(declare-fun c!1150268 () Bool)

(assert (=> d!1986681 (= c!1150268 ((_ is Cons!64882) zl!343))))

(assert (=> d!1986681 (= (unfocusZipperList!1656 zl!343) lt!2360750)))

(declare-fun b!6330082 () Bool)

(assert (=> b!6330082 (= e!3845630 (Cons!64880 (generalisedConcat!1832 (exprs!6119 (h!71330 zl!343))) (unfocusZipperList!1656 (t!378588 zl!343))))))

(declare-fun b!6330083 () Bool)

(assert (=> b!6330083 (= e!3845630 Nil!64880)))

(assert (= (and d!1986681 c!1150268) b!6330082))

(assert (= (and d!1986681 (not c!1150268)) b!6330083))

(declare-fun m!7140752 () Bool)

(assert (=> d!1986681 m!7140752))

(assert (=> b!6330082 m!7140620))

(declare-fun m!7140754 () Bool)

(assert (=> b!6330082 m!7140754))

(assert (=> b!6329896 d!1986681))

(declare-fun d!1986687 () Bool)

(declare-fun c!1150269 () Bool)

(assert (=> d!1986687 (= c!1150269 (isEmpty!36956 (t!378587 s!2326)))))

(declare-fun e!3845631 () Bool)

(assert (=> d!1986687 (= (matchZipper!2247 lt!2360705 (t!378587 s!2326)) e!3845631)))

(declare-fun b!6330084 () Bool)

(assert (=> b!6330084 (= e!3845631 (nullableZipper!2003 lt!2360705))))

(declare-fun b!6330085 () Bool)

(assert (=> b!6330085 (= e!3845631 (matchZipper!2247 (derivationStepZipper!2201 lt!2360705 (head!12966 (t!378587 s!2326))) (tail!12051 (t!378587 s!2326))))))

(assert (= (and d!1986687 c!1150269) b!6330084))

(assert (= (and d!1986687 (not c!1150269)) b!6330085))

(assert (=> d!1986687 m!7140686))

(declare-fun m!7140756 () Bool)

(assert (=> b!6330084 m!7140756))

(assert (=> b!6330085 m!7140690))

(assert (=> b!6330085 m!7140690))

(declare-fun m!7140758 () Bool)

(assert (=> b!6330085 m!7140758))

(assert (=> b!6330085 m!7140694))

(assert (=> b!6330085 m!7140758))

(assert (=> b!6330085 m!7140694))

(declare-fun m!7140760 () Bool)

(assert (=> b!6330085 m!7140760))

(assert (=> b!6329908 d!1986687))

(declare-fun d!1986689 () Bool)

(declare-fun c!1150274 () Bool)

(assert (=> d!1986689 (= c!1150274 (isEmpty!36956 (t!378587 s!2326)))))

(declare-fun e!3845638 () Bool)

(assert (=> d!1986689 (= (matchZipper!2247 lt!2360707 (t!378587 s!2326)) e!3845638)))

(declare-fun b!6330096 () Bool)

(assert (=> b!6330096 (= e!3845638 (nullableZipper!2003 lt!2360707))))

(declare-fun b!6330097 () Bool)

(assert (=> b!6330097 (= e!3845638 (matchZipper!2247 (derivationStepZipper!2201 lt!2360707 (head!12966 (t!378587 s!2326))) (tail!12051 (t!378587 s!2326))))))

(assert (= (and d!1986689 c!1150274) b!6330096))

(assert (= (and d!1986689 (not c!1150274)) b!6330097))

(assert (=> d!1986689 m!7140686))

(declare-fun m!7140762 () Bool)

(assert (=> b!6330096 m!7140762))

(assert (=> b!6330097 m!7140690))

(assert (=> b!6330097 m!7140690))

(declare-fun m!7140764 () Bool)

(assert (=> b!6330097 m!7140764))

(assert (=> b!6330097 m!7140694))

(assert (=> b!6330097 m!7140764))

(assert (=> b!6330097 m!7140694))

(declare-fun m!7140766 () Bool)

(assert (=> b!6330097 m!7140766))

(assert (=> b!6329908 d!1986689))

(declare-fun d!1986691 () Bool)

(declare-fun e!3845653 () Bool)

(assert (=> d!1986691 e!3845653))

(declare-fun res!2605879 () Bool)

(assert (=> d!1986691 (=> (not res!2605879) (not e!3845653))))

(declare-fun lt!2360756 () List!65006)

(declare-fun noDuplicate!2067 (List!65006) Bool)

(assert (=> d!1986691 (= res!2605879 (noDuplicate!2067 lt!2360756))))

(declare-fun choose!46935 ((InoxSet Context!11238)) List!65006)

(assert (=> d!1986691 (= lt!2360756 (choose!46935 z!1189))))

(assert (=> d!1986691 (= (toList!10019 z!1189) lt!2360756)))

(declare-fun b!6330120 () Bool)

(declare-fun content!12230 (List!65006) (InoxSet Context!11238))

(assert (=> b!6330120 (= e!3845653 (= (content!12230 lt!2360756) z!1189))))

(assert (= (and d!1986691 res!2605879) b!6330120))

(declare-fun m!7140788 () Bool)

(assert (=> d!1986691 m!7140788))

(declare-fun m!7140790 () Bool)

(assert (=> d!1986691 m!7140790))

(declare-fun m!7140792 () Bool)

(assert (=> b!6330120 m!7140792))

(assert (=> b!6329927 d!1986691))

(declare-fun d!1986695 () Bool)

(declare-fun res!2605892 () Bool)

(declare-fun e!3845683 () Bool)

(assert (=> d!1986695 (=> res!2605892 e!3845683)))

(assert (=> d!1986695 (= res!2605892 ((_ is ElementMatch!16235) (generalisedConcat!1832 lt!2360698)))))

(assert (=> d!1986695 (= (validRegex!7971 (generalisedConcat!1832 lt!2360698)) e!3845683)))

(declare-fun b!6330155 () Bool)

(declare-fun e!3845682 () Bool)

(declare-fun call!538802 () Bool)

(assert (=> b!6330155 (= e!3845682 call!538802)))

(declare-fun b!6330156 () Bool)

(declare-fun e!3845679 () Bool)

(declare-fun e!3845677 () Bool)

(assert (=> b!6330156 (= e!3845679 e!3845677)))

(declare-fun res!2605895 () Bool)

(assert (=> b!6330156 (=> (not res!2605895) (not e!3845677))))

(declare-fun call!538804 () Bool)

(assert (=> b!6330156 (= res!2605895 call!538804)))

(declare-fun b!6330157 () Bool)

(declare-fun e!3845680 () Bool)

(declare-fun e!3845681 () Bool)

(assert (=> b!6330157 (= e!3845680 e!3845681)))

(declare-fun c!1150294 () Bool)

(assert (=> b!6330157 (= c!1150294 ((_ is Union!16235) (generalisedConcat!1832 lt!2360698)))))

(declare-fun c!1150295 () Bool)

(declare-fun bm!538797 () Bool)

(declare-fun call!538803 () Bool)

(assert (=> bm!538797 (= call!538803 (validRegex!7971 (ite c!1150295 (reg!16564 (generalisedConcat!1832 lt!2360698)) (ite c!1150294 (regTwo!32983 (generalisedConcat!1832 lt!2360698)) (regTwo!32982 (generalisedConcat!1832 lt!2360698))))))))

(declare-fun b!6330158 () Bool)

(declare-fun res!2605896 () Bool)

(assert (=> b!6330158 (=> (not res!2605896) (not e!3845682))))

(assert (=> b!6330158 (= res!2605896 call!538804)))

(assert (=> b!6330158 (= e!3845681 e!3845682)))

(declare-fun b!6330159 () Bool)

(declare-fun res!2605893 () Bool)

(assert (=> b!6330159 (=> res!2605893 e!3845679)))

(assert (=> b!6330159 (= res!2605893 (not ((_ is Concat!25080) (generalisedConcat!1832 lt!2360698))))))

(assert (=> b!6330159 (= e!3845681 e!3845679)))

(declare-fun b!6330160 () Bool)

(declare-fun e!3845678 () Bool)

(assert (=> b!6330160 (= e!3845678 call!538803)))

(declare-fun b!6330161 () Bool)

(assert (=> b!6330161 (= e!3845677 call!538802)))

(declare-fun b!6330162 () Bool)

(assert (=> b!6330162 (= e!3845680 e!3845678)))

(declare-fun res!2605894 () Bool)

(assert (=> b!6330162 (= res!2605894 (not (nullable!6228 (reg!16564 (generalisedConcat!1832 lt!2360698)))))))

(assert (=> b!6330162 (=> (not res!2605894) (not e!3845678))))

(declare-fun bm!538798 () Bool)

(assert (=> bm!538798 (= call!538802 call!538803)))

(declare-fun bm!538799 () Bool)

(assert (=> bm!538799 (= call!538804 (validRegex!7971 (ite c!1150294 (regOne!32983 (generalisedConcat!1832 lt!2360698)) (regOne!32982 (generalisedConcat!1832 lt!2360698)))))))

(declare-fun b!6330163 () Bool)

(assert (=> b!6330163 (= e!3845683 e!3845680)))

(assert (=> b!6330163 (= c!1150295 ((_ is Star!16235) (generalisedConcat!1832 lt!2360698)))))

(assert (= (and d!1986695 (not res!2605892)) b!6330163))

(assert (= (and b!6330163 c!1150295) b!6330162))

(assert (= (and b!6330163 (not c!1150295)) b!6330157))

(assert (= (and b!6330162 res!2605894) b!6330160))

(assert (= (and b!6330157 c!1150294) b!6330158))

(assert (= (and b!6330157 (not c!1150294)) b!6330159))

(assert (= (and b!6330158 res!2605896) b!6330155))

(assert (= (and b!6330159 (not res!2605893)) b!6330156))

(assert (= (and b!6330156 res!2605895) b!6330161))

(assert (= (or b!6330155 b!6330161) bm!538798))

(assert (= (or b!6330158 b!6330156) bm!538799))

(assert (= (or b!6330160 bm!538798) bm!538797))

(declare-fun m!7140798 () Bool)

(assert (=> bm!538797 m!7140798))

(declare-fun m!7140800 () Bool)

(assert (=> b!6330162 m!7140800))

(declare-fun m!7140802 () Bool)

(assert (=> bm!538799 m!7140802))

(assert (=> b!6329897 d!1986695))

(declare-fun bs!1583688 () Bool)

(declare-fun d!1986701 () Bool)

(assert (= bs!1583688 (and d!1986701 d!1986675)))

(declare-fun lambda!347566 () Int)

(assert (=> bs!1583688 (= lambda!347566 lambda!347551)))

(declare-fun bs!1583689 () Bool)

(assert (= bs!1583689 (and d!1986701 d!1986681)))

(assert (=> bs!1583689 (= lambda!347566 lambda!347554)))

(declare-fun b!6330205 () Bool)

(declare-fun e!3845708 () Regex!16235)

(assert (=> b!6330205 (= e!3845708 EmptyExpr!16235)))

(declare-fun b!6330206 () Bool)

(declare-fun e!3845710 () Regex!16235)

(assert (=> b!6330206 (= e!3845710 (h!71328 lt!2360698))))

(declare-fun b!6330207 () Bool)

(declare-fun e!3845707 () Bool)

(declare-fun lt!2360774 () Regex!16235)

(declare-fun isConcat!1161 (Regex!16235) Bool)

(assert (=> b!6330207 (= e!3845707 (isConcat!1161 lt!2360774))))

(declare-fun e!3845711 () Bool)

(assert (=> d!1986701 e!3845711))

(declare-fun res!2605918 () Bool)

(assert (=> d!1986701 (=> (not res!2605918) (not e!3845711))))

(assert (=> d!1986701 (= res!2605918 (validRegex!7971 lt!2360774))))

(assert (=> d!1986701 (= lt!2360774 e!3845710)))

(declare-fun c!1150307 () Bool)

(declare-fun e!3845712 () Bool)

(assert (=> d!1986701 (= c!1150307 e!3845712)))

(declare-fun res!2605919 () Bool)

(assert (=> d!1986701 (=> (not res!2605919) (not e!3845712))))

(assert (=> d!1986701 (= res!2605919 ((_ is Cons!64880) lt!2360698))))

(assert (=> d!1986701 (forall!15386 lt!2360698 lambda!347566)))

(assert (=> d!1986701 (= (generalisedConcat!1832 lt!2360698) lt!2360774)))

(declare-fun b!6330208 () Bool)

(assert (=> b!6330208 (= e!3845708 (Concat!25080 (h!71328 lt!2360698) (generalisedConcat!1832 (t!378586 lt!2360698))))))

(declare-fun b!6330209 () Bool)

(assert (=> b!6330209 (= e!3845710 e!3845708)))

(declare-fun c!1150308 () Bool)

(assert (=> b!6330209 (= c!1150308 ((_ is Cons!64880) lt!2360698))))

(declare-fun b!6330210 () Bool)

(declare-fun e!3845709 () Bool)

(assert (=> b!6330210 (= e!3845709 e!3845707)))

(declare-fun c!1150309 () Bool)

(assert (=> b!6330210 (= c!1150309 (isEmpty!36954 (tail!12052 lt!2360698)))))

(declare-fun b!6330211 () Bool)

(assert (=> b!6330211 (= e!3845712 (isEmpty!36954 (t!378586 lt!2360698)))))

(declare-fun b!6330212 () Bool)

(declare-fun isEmptyExpr!1639 (Regex!16235) Bool)

(assert (=> b!6330212 (= e!3845709 (isEmptyExpr!1639 lt!2360774))))

(declare-fun b!6330213 () Bool)

(assert (=> b!6330213 (= e!3845707 (= lt!2360774 (head!12967 lt!2360698)))))

(declare-fun b!6330214 () Bool)

(assert (=> b!6330214 (= e!3845711 e!3845709)))

(declare-fun c!1150306 () Bool)

(assert (=> b!6330214 (= c!1150306 (isEmpty!36954 lt!2360698))))

(assert (= (and d!1986701 res!2605919) b!6330211))

(assert (= (and d!1986701 c!1150307) b!6330206))

(assert (= (and d!1986701 (not c!1150307)) b!6330209))

(assert (= (and b!6330209 c!1150308) b!6330208))

(assert (= (and b!6330209 (not c!1150308)) b!6330205))

(assert (= (and d!1986701 res!2605918) b!6330214))

(assert (= (and b!6330214 c!1150306) b!6330212))

(assert (= (and b!6330214 (not c!1150306)) b!6330210))

(assert (= (and b!6330210 c!1150309) b!6330213))

(assert (= (and b!6330210 (not c!1150309)) b!6330207))

(declare-fun m!7140836 () Bool)

(assert (=> b!6330212 m!7140836))

(declare-fun m!7140838 () Bool)

(assert (=> b!6330214 m!7140838))

(declare-fun m!7140840 () Bool)

(assert (=> b!6330213 m!7140840))

(declare-fun m!7140842 () Bool)

(assert (=> d!1986701 m!7140842))

(declare-fun m!7140844 () Bool)

(assert (=> d!1986701 m!7140844))

(declare-fun m!7140846 () Bool)

(assert (=> b!6330210 m!7140846))

(assert (=> b!6330210 m!7140846))

(declare-fun m!7140848 () Bool)

(assert (=> b!6330210 m!7140848))

(declare-fun m!7140850 () Bool)

(assert (=> b!6330207 m!7140850))

(declare-fun m!7140852 () Bool)

(assert (=> b!6330211 m!7140852))

(declare-fun m!7140854 () Bool)

(assert (=> b!6330208 m!7140854))

(assert (=> b!6329897 d!1986701))

(declare-fun bs!1583690 () Bool)

(declare-fun d!1986711 () Bool)

(assert (= bs!1583690 (and d!1986711 d!1986675)))

(declare-fun lambda!347571 () Int)

(assert (=> bs!1583690 (= lambda!347571 lambda!347551)))

(declare-fun bs!1583691 () Bool)

(assert (= bs!1583691 (and d!1986711 d!1986681)))

(assert (=> bs!1583691 (= lambda!347571 lambda!347554)))

(declare-fun bs!1583692 () Bool)

(assert (= bs!1583692 (and d!1986711 d!1986701)))

(assert (=> bs!1583692 (= lambda!347571 lambda!347566)))

(assert (=> d!1986711 (= (inv!83834 (h!71330 zl!343)) (forall!15386 (exprs!6119 (h!71330 zl!343)) lambda!347571))))

(declare-fun bs!1583693 () Bool)

(assert (= bs!1583693 d!1986711))

(declare-fun m!7140856 () Bool)

(assert (=> bs!1583693 m!7140856))

(assert (=> b!6329910 d!1986711))

(declare-fun d!1986713 () Bool)

(assert (=> d!1986713 (= (isEmpty!36953 (t!378588 zl!343)) ((_ is Nil!64882) (t!378588 zl!343)))))

(assert (=> b!6329899 d!1986713))

(declare-fun d!1986715 () Bool)

(declare-fun lt!2360780 () Int)

(assert (=> d!1986715 (>= lt!2360780 0)))

(declare-fun e!3845719 () Int)

(assert (=> d!1986715 (= lt!2360780 e!3845719)))

(declare-fun c!1150313 () Bool)

(assert (=> d!1986715 (= c!1150313 ((_ is Cons!64880) (exprs!6119 lt!2360715)))))

(assert (=> d!1986715 (= (contextDepthTotal!344 lt!2360715) lt!2360780)))

(declare-fun b!6330227 () Bool)

(declare-fun regexDepthTotal!194 (Regex!16235) Int)

(assert (=> b!6330227 (= e!3845719 (+ (regexDepthTotal!194 (h!71328 (exprs!6119 lt!2360715))) (contextDepthTotal!344 (Context!11239 (t!378586 (exprs!6119 lt!2360715))))))))

(declare-fun b!6330228 () Bool)

(assert (=> b!6330228 (= e!3845719 1)))

(assert (= (and d!1986715 c!1150313) b!6330227))

(assert (= (and d!1986715 (not c!1150313)) b!6330228))

(declare-fun m!7140866 () Bool)

(assert (=> b!6330227 m!7140866))

(declare-fun m!7140868 () Bool)

(assert (=> b!6330227 m!7140868))

(assert (=> b!6329919 d!1986715))

(declare-fun d!1986721 () Bool)

(declare-fun lt!2360781 () Int)

(assert (=> d!1986721 (>= lt!2360781 0)))

(declare-fun e!3845720 () Int)

(assert (=> d!1986721 (= lt!2360781 e!3845720)))

(declare-fun c!1150314 () Bool)

(assert (=> d!1986721 (= c!1150314 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343))))))

(assert (=> d!1986721 (= (contextDepthTotal!344 (h!71330 zl!343)) lt!2360781)))

(declare-fun b!6330229 () Bool)

(assert (=> b!6330229 (= e!3845720 (+ (regexDepthTotal!194 (h!71328 (exprs!6119 (h!71330 zl!343)))) (contextDepthTotal!344 (Context!11239 (t!378586 (exprs!6119 (h!71330 zl!343)))))))))

(declare-fun b!6330230 () Bool)

(assert (=> b!6330230 (= e!3845720 1)))

(assert (= (and d!1986721 c!1150314) b!6330229))

(assert (= (and d!1986721 (not c!1150314)) b!6330230))

(declare-fun m!7140870 () Bool)

(assert (=> b!6330229 m!7140870))

(declare-fun m!7140872 () Bool)

(assert (=> b!6330229 m!7140872))

(assert (=> b!6329919 d!1986721))

(declare-fun bs!1583700 () Bool)

(declare-fun d!1986723 () Bool)

(assert (= bs!1583700 (and d!1986723 d!1986675)))

(declare-fun lambda!347576 () Int)

(assert (=> bs!1583700 (= lambda!347576 lambda!347551)))

(declare-fun bs!1583701 () Bool)

(assert (= bs!1583701 (and d!1986723 d!1986681)))

(assert (=> bs!1583701 (= lambda!347576 lambda!347554)))

(declare-fun bs!1583702 () Bool)

(assert (= bs!1583702 (and d!1986723 d!1986701)))

(assert (=> bs!1583702 (= lambda!347576 lambda!347566)))

(declare-fun bs!1583703 () Bool)

(assert (= bs!1583703 (and d!1986723 d!1986711)))

(assert (=> bs!1583703 (= lambda!347576 lambda!347571)))

(declare-fun b!6330231 () Bool)

(declare-fun e!3845722 () Regex!16235)

(assert (=> b!6330231 (= e!3845722 EmptyExpr!16235)))

(declare-fun b!6330232 () Bool)

(declare-fun e!3845724 () Regex!16235)

(assert (=> b!6330232 (= e!3845724 (h!71328 (exprs!6119 (h!71330 zl!343))))))

(declare-fun b!6330233 () Bool)

(declare-fun e!3845721 () Bool)

(declare-fun lt!2360782 () Regex!16235)

(assert (=> b!6330233 (= e!3845721 (isConcat!1161 lt!2360782))))

(declare-fun e!3845725 () Bool)

(assert (=> d!1986723 e!3845725))

(declare-fun res!2605928 () Bool)

(assert (=> d!1986723 (=> (not res!2605928) (not e!3845725))))

(assert (=> d!1986723 (= res!2605928 (validRegex!7971 lt!2360782))))

(assert (=> d!1986723 (= lt!2360782 e!3845724)))

(declare-fun c!1150316 () Bool)

(declare-fun e!3845726 () Bool)

(assert (=> d!1986723 (= c!1150316 e!3845726)))

(declare-fun res!2605929 () Bool)

(assert (=> d!1986723 (=> (not res!2605929) (not e!3845726))))

(assert (=> d!1986723 (= res!2605929 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343))))))

(assert (=> d!1986723 (forall!15386 (exprs!6119 (h!71330 zl!343)) lambda!347576)))

(assert (=> d!1986723 (= (generalisedConcat!1832 (exprs!6119 (h!71330 zl!343))) lt!2360782)))

(declare-fun b!6330234 () Bool)

(assert (=> b!6330234 (= e!3845722 (Concat!25080 (h!71328 (exprs!6119 (h!71330 zl!343))) (generalisedConcat!1832 (t!378586 (exprs!6119 (h!71330 zl!343))))))))

(declare-fun b!6330235 () Bool)

(assert (=> b!6330235 (= e!3845724 e!3845722)))

(declare-fun c!1150317 () Bool)

(assert (=> b!6330235 (= c!1150317 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343))))))

(declare-fun b!6330236 () Bool)

(declare-fun e!3845723 () Bool)

(assert (=> b!6330236 (= e!3845723 e!3845721)))

(declare-fun c!1150318 () Bool)

(assert (=> b!6330236 (= c!1150318 (isEmpty!36954 (tail!12052 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6330237 () Bool)

(assert (=> b!6330237 (= e!3845726 (isEmpty!36954 (t!378586 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6330238 () Bool)

(assert (=> b!6330238 (= e!3845723 (isEmptyExpr!1639 lt!2360782))))

(declare-fun b!6330239 () Bool)

(assert (=> b!6330239 (= e!3845721 (= lt!2360782 (head!12967 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6330240 () Bool)

(assert (=> b!6330240 (= e!3845725 e!3845723)))

(declare-fun c!1150315 () Bool)

(assert (=> b!6330240 (= c!1150315 (isEmpty!36954 (exprs!6119 (h!71330 zl!343))))))

(assert (= (and d!1986723 res!2605929) b!6330237))

(assert (= (and d!1986723 c!1150316) b!6330232))

(assert (= (and d!1986723 (not c!1150316)) b!6330235))

(assert (= (and b!6330235 c!1150317) b!6330234))

(assert (= (and b!6330235 (not c!1150317)) b!6330231))

(assert (= (and d!1986723 res!2605928) b!6330240))

(assert (= (and b!6330240 c!1150315) b!6330238))

(assert (= (and b!6330240 (not c!1150315)) b!6330236))

(assert (= (and b!6330236 c!1150318) b!6330239))

(assert (= (and b!6330236 (not c!1150318)) b!6330233))

(declare-fun m!7140874 () Bool)

(assert (=> b!6330238 m!7140874))

(declare-fun m!7140876 () Bool)

(assert (=> b!6330240 m!7140876))

(declare-fun m!7140878 () Bool)

(assert (=> b!6330239 m!7140878))

(declare-fun m!7140880 () Bool)

(assert (=> d!1986723 m!7140880))

(declare-fun m!7140882 () Bool)

(assert (=> d!1986723 m!7140882))

(declare-fun m!7140884 () Bool)

(assert (=> b!6330236 m!7140884))

(assert (=> b!6330236 m!7140884))

(declare-fun m!7140886 () Bool)

(assert (=> b!6330236 m!7140886))

(declare-fun m!7140888 () Bool)

(assert (=> b!6330233 m!7140888))

(assert (=> b!6330237 m!7140562))

(declare-fun m!7140890 () Bool)

(assert (=> b!6330234 m!7140890))

(assert (=> b!6329909 d!1986723))

(declare-fun d!1986725 () Bool)

(declare-fun choose!46938 ((InoxSet Context!11238) Int) (InoxSet Context!11238))

(assert (=> d!1986725 (= (flatMap!1740 z!1189 lambda!347527) (choose!46938 z!1189 lambda!347527))))

(declare-fun bs!1583704 () Bool)

(assert (= bs!1583704 d!1986725))

(declare-fun m!7140892 () Bool)

(assert (=> bs!1583704 m!7140892))

(assert (=> b!6329911 d!1986725))

(declare-fun b!6330333 () Bool)

(declare-fun e!3845784 () (InoxSet Context!11238))

(declare-fun call!538836 () (InoxSet Context!11238))

(declare-fun call!538835 () (InoxSet Context!11238))

(assert (=> b!6330333 (= e!3845784 ((_ map or) call!538836 call!538835))))

(declare-fun bm!538830 () Bool)

(declare-fun call!538839 () (InoxSet Context!11238))

(declare-fun call!538838 () (InoxSet Context!11238))

(assert (=> bm!538830 (= call!538839 call!538838)))

(declare-fun c!1150360 () Bool)

(declare-fun call!538837 () List!65004)

(declare-fun c!1150359 () Bool)

(declare-fun bm!538831 () Bool)

(declare-fun c!1150358 () Bool)

(assert (=> bm!538831 (= call!538835 (derivationStepZipperDown!1483 (ite c!1150360 (regTwo!32983 (h!71328 (exprs!6119 (h!71330 zl!343)))) (ite c!1150358 (regTwo!32982 (h!71328 (exprs!6119 (h!71330 zl!343)))) (ite c!1150359 (regOne!32982 (h!71328 (exprs!6119 (h!71330 zl!343)))) (reg!16564 (h!71328 (exprs!6119 (h!71330 zl!343))))))) (ite (or c!1150360 c!1150358) lt!2360703 (Context!11239 call!538837)) (h!71329 s!2326)))))

(declare-fun b!6330334 () Bool)

(declare-fun e!3845780 () (InoxSet Context!11238))

(assert (=> b!6330334 (= e!3845780 (store ((as const (Array Context!11238 Bool)) false) lt!2360703 true))))

(declare-fun d!1986727 () Bool)

(declare-fun c!1150361 () Bool)

(assert (=> d!1986727 (= c!1150361 (and ((_ is ElementMatch!16235) (h!71328 (exprs!6119 (h!71330 zl!343)))) (= (c!1150216 (h!71328 (exprs!6119 (h!71330 zl!343)))) (h!71329 s!2326))))))

(assert (=> d!1986727 (= (derivationStepZipperDown!1483 (h!71328 (exprs!6119 (h!71330 zl!343))) lt!2360703 (h!71329 s!2326)) e!3845780)))

(declare-fun bm!538832 () Bool)

(assert (=> bm!538832 (= call!538838 call!538835)))

(declare-fun b!6330335 () Bool)

(declare-fun e!3845782 () (InoxSet Context!11238))

(assert (=> b!6330335 (= e!3845782 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330336 () Bool)

(declare-fun c!1150362 () Bool)

(assert (=> b!6330336 (= c!1150362 ((_ is Star!16235) (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun e!3845781 () (InoxSet Context!11238))

(assert (=> b!6330336 (= e!3845781 e!3845782)))

(declare-fun call!538840 () List!65004)

(declare-fun bm!538833 () Bool)

(declare-fun $colon$colon!2098 (List!65004 Regex!16235) List!65004)

(assert (=> bm!538833 (= call!538840 ($colon$colon!2098 (exprs!6119 lt!2360703) (ite (or c!1150358 c!1150359) (regTwo!32982 (h!71328 (exprs!6119 (h!71330 zl!343)))) (h!71328 (exprs!6119 (h!71330 zl!343))))))))

(declare-fun bm!538834 () Bool)

(assert (=> bm!538834 (= call!538837 call!538840)))

(declare-fun b!6330337 () Bool)

(assert (=> b!6330337 (= e!3845782 call!538839)))

(declare-fun b!6330338 () Bool)

(declare-fun e!3845783 () (InoxSet Context!11238))

(assert (=> b!6330338 (= e!3845783 ((_ map or) call!538836 call!538838))))

(declare-fun b!6330339 () Bool)

(declare-fun e!3845785 () Bool)

(assert (=> b!6330339 (= e!3845785 (nullable!6228 (regOne!32982 (h!71328 (exprs!6119 (h!71330 zl!343))))))))

(declare-fun bm!538835 () Bool)

(assert (=> bm!538835 (= call!538836 (derivationStepZipperDown!1483 (ite c!1150360 (regOne!32983 (h!71328 (exprs!6119 (h!71330 zl!343)))) (regOne!32982 (h!71328 (exprs!6119 (h!71330 zl!343))))) (ite c!1150360 lt!2360703 (Context!11239 call!538840)) (h!71329 s!2326)))))

(declare-fun b!6330340 () Bool)

(assert (=> b!6330340 (= e!3845781 call!538839)))

(declare-fun b!6330341 () Bool)

(assert (=> b!6330341 (= e!3845780 e!3845784)))

(assert (=> b!6330341 (= c!1150360 ((_ is Union!16235) (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6330342 () Bool)

(assert (=> b!6330342 (= e!3845783 e!3845781)))

(assert (=> b!6330342 (= c!1150359 ((_ is Concat!25080) (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun b!6330343 () Bool)

(assert (=> b!6330343 (= c!1150358 e!3845785)))

(declare-fun res!2605944 () Bool)

(assert (=> b!6330343 (=> (not res!2605944) (not e!3845785))))

(assert (=> b!6330343 (= res!2605944 ((_ is Concat!25080) (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(assert (=> b!6330343 (= e!3845784 e!3845783)))

(assert (= (and d!1986727 c!1150361) b!6330334))

(assert (= (and d!1986727 (not c!1150361)) b!6330341))

(assert (= (and b!6330341 c!1150360) b!6330333))

(assert (= (and b!6330341 (not c!1150360)) b!6330343))

(assert (= (and b!6330343 res!2605944) b!6330339))

(assert (= (and b!6330343 c!1150358) b!6330338))

(assert (= (and b!6330343 (not c!1150358)) b!6330342))

(assert (= (and b!6330342 c!1150359) b!6330340))

(assert (= (and b!6330342 (not c!1150359)) b!6330336))

(assert (= (and b!6330336 c!1150362) b!6330337))

(assert (= (and b!6330336 (not c!1150362)) b!6330335))

(assert (= (or b!6330340 b!6330337) bm!538834))

(assert (= (or b!6330340 b!6330337) bm!538830))

(assert (= (or b!6330338 bm!538834) bm!538833))

(assert (= (or b!6330338 bm!538830) bm!538832))

(assert (= (or b!6330333 bm!538832) bm!538831))

(assert (= (or b!6330333 b!6330338) bm!538835))

(declare-fun m!7140940 () Bool)

(assert (=> b!6330339 m!7140940))

(declare-fun m!7140942 () Bool)

(assert (=> bm!538831 m!7140942))

(declare-fun m!7140944 () Bool)

(assert (=> bm!538833 m!7140944))

(declare-fun m!7140946 () Bool)

(assert (=> bm!538835 m!7140946))

(declare-fun m!7140948 () Bool)

(assert (=> b!6330334 m!7140948))

(assert (=> b!6329911 d!1986727))

(declare-fun d!1986745 () Bool)

(declare-fun nullableFct!2176 (Regex!16235) Bool)

(assert (=> d!1986745 (= (nullable!6228 (h!71328 (exprs!6119 (h!71330 zl!343)))) (nullableFct!2176 (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun bs!1583714 () Bool)

(assert (= bs!1583714 d!1986745))

(declare-fun m!7140950 () Bool)

(assert (=> bs!1583714 m!7140950))

(assert (=> b!6329911 d!1986745))

(declare-fun b!6330391 () Bool)

(declare-fun e!3845814 () Bool)

(assert (=> b!6330391 (= e!3845814 (nullable!6228 (h!71328 (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343)))))))))))

(declare-fun bm!538849 () Bool)

(declare-fun call!538854 () (InoxSet Context!11238))

(assert (=> bm!538849 (= call!538854 (derivationStepZipperDown!1483 (h!71328 (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343))))))) (Context!11239 (t!378586 (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343)))))))) (h!71329 s!2326)))))

(declare-fun b!6330392 () Bool)

(declare-fun e!3845815 () (InoxSet Context!11238))

(assert (=> b!6330392 (= e!3845815 ((_ map or) call!538854 (derivationStepZipperUp!1409 (Context!11239 (t!378586 (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343)))))))) (h!71329 s!2326))))))

(declare-fun b!6330393 () Bool)

(declare-fun e!3845813 () (InoxSet Context!11238))

(assert (=> b!6330393 (= e!3845813 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330394 () Bool)

(assert (=> b!6330394 (= e!3845813 call!538854)))

(declare-fun b!6330390 () Bool)

(assert (=> b!6330390 (= e!3845815 e!3845813)))

(declare-fun c!1150383 () Bool)

(assert (=> b!6330390 (= c!1150383 ((_ is Cons!64880) (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343))))))))))

(declare-fun d!1986747 () Bool)

(declare-fun c!1150382 () Bool)

(assert (=> d!1986747 (= c!1150382 e!3845814)))

(declare-fun res!2605953 () Bool)

(assert (=> d!1986747 (=> (not res!2605953) (not e!3845814))))

(assert (=> d!1986747 (= res!2605953 ((_ is Cons!64880) (exprs!6119 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343))))))))))

(assert (=> d!1986747 (= (derivationStepZipperUp!1409 (Context!11239 (Cons!64880 (h!71328 (exprs!6119 (h!71330 zl!343))) (t!378586 (exprs!6119 (h!71330 zl!343))))) (h!71329 s!2326)) e!3845815)))

(assert (= (and d!1986747 res!2605953) b!6330391))

(assert (= (and d!1986747 c!1150382) b!6330392))

(assert (= (and d!1986747 (not c!1150382)) b!6330390))

(assert (= (and b!6330390 c!1150383) b!6330394))

(assert (= (and b!6330390 (not c!1150383)) b!6330393))

(assert (= (or b!6330392 b!6330394) bm!538849))

(declare-fun m!7140992 () Bool)

(assert (=> b!6330391 m!7140992))

(declare-fun m!7140994 () Bool)

(assert (=> bm!538849 m!7140994))

(declare-fun m!7140996 () Bool)

(assert (=> b!6330392 m!7140996))

(assert (=> b!6329911 d!1986747))

(declare-fun b!6330398 () Bool)

(declare-fun e!3845818 () Bool)

(assert (=> b!6330398 (= e!3845818 (nullable!6228 (h!71328 (exprs!6119 lt!2360703))))))

(declare-fun bm!538850 () Bool)

(declare-fun call!538855 () (InoxSet Context!11238))

(assert (=> bm!538850 (= call!538855 (derivationStepZipperDown!1483 (h!71328 (exprs!6119 lt!2360703)) (Context!11239 (t!378586 (exprs!6119 lt!2360703))) (h!71329 s!2326)))))

(declare-fun b!6330399 () Bool)

(declare-fun e!3845819 () (InoxSet Context!11238))

(assert (=> b!6330399 (= e!3845819 ((_ map or) call!538855 (derivationStepZipperUp!1409 (Context!11239 (t!378586 (exprs!6119 lt!2360703))) (h!71329 s!2326))))))

(declare-fun b!6330400 () Bool)

(declare-fun e!3845817 () (InoxSet Context!11238))

(assert (=> b!6330400 (= e!3845817 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330401 () Bool)

(assert (=> b!6330401 (= e!3845817 call!538855)))

(declare-fun b!6330397 () Bool)

(assert (=> b!6330397 (= e!3845819 e!3845817)))

(declare-fun c!1150386 () Bool)

(assert (=> b!6330397 (= c!1150386 ((_ is Cons!64880) (exprs!6119 lt!2360703)))))

(declare-fun d!1986763 () Bool)

(declare-fun c!1150385 () Bool)

(assert (=> d!1986763 (= c!1150385 e!3845818)))

(declare-fun res!2605954 () Bool)

(assert (=> d!1986763 (=> (not res!2605954) (not e!3845818))))

(assert (=> d!1986763 (= res!2605954 ((_ is Cons!64880) (exprs!6119 lt!2360703)))))

(assert (=> d!1986763 (= (derivationStepZipperUp!1409 lt!2360703 (h!71329 s!2326)) e!3845819)))

(assert (= (and d!1986763 res!2605954) b!6330398))

(assert (= (and d!1986763 c!1150385) b!6330399))

(assert (= (and d!1986763 (not c!1150385)) b!6330397))

(assert (= (and b!6330397 c!1150386) b!6330401))

(assert (= (and b!6330397 (not c!1150386)) b!6330400))

(assert (= (or b!6330399 b!6330401) bm!538850))

(declare-fun m!7140998 () Bool)

(assert (=> b!6330398 m!7140998))

(declare-fun m!7141000 () Bool)

(assert (=> bm!538850 m!7141000))

(declare-fun m!7141002 () Bool)

(assert (=> b!6330399 m!7141002))

(assert (=> b!6329911 d!1986763))

(declare-fun b!6330403 () Bool)

(declare-fun e!3845821 () Bool)

(assert (=> b!6330403 (= e!3845821 (nullable!6228 (h!71328 (exprs!6119 (h!71330 zl!343)))))))

(declare-fun bm!538851 () Bool)

(declare-fun call!538856 () (InoxSet Context!11238))

(assert (=> bm!538851 (= call!538856 (derivationStepZipperDown!1483 (h!71328 (exprs!6119 (h!71330 zl!343))) (Context!11239 (t!378586 (exprs!6119 (h!71330 zl!343)))) (h!71329 s!2326)))))

(declare-fun e!3845822 () (InoxSet Context!11238))

(declare-fun b!6330404 () Bool)

(assert (=> b!6330404 (= e!3845822 ((_ map or) call!538856 (derivationStepZipperUp!1409 (Context!11239 (t!378586 (exprs!6119 (h!71330 zl!343)))) (h!71329 s!2326))))))

(declare-fun b!6330405 () Bool)

(declare-fun e!3845820 () (InoxSet Context!11238))

(assert (=> b!6330405 (= e!3845820 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330406 () Bool)

(assert (=> b!6330406 (= e!3845820 call!538856)))

(declare-fun b!6330402 () Bool)

(assert (=> b!6330402 (= e!3845822 e!3845820)))

(declare-fun c!1150388 () Bool)

(assert (=> b!6330402 (= c!1150388 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343))))))

(declare-fun d!1986765 () Bool)

(declare-fun c!1150387 () Bool)

(assert (=> d!1986765 (= c!1150387 e!3845821)))

(declare-fun res!2605955 () Bool)

(assert (=> d!1986765 (=> (not res!2605955) (not e!3845821))))

(assert (=> d!1986765 (= res!2605955 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343))))))

(assert (=> d!1986765 (= (derivationStepZipperUp!1409 (h!71330 zl!343) (h!71329 s!2326)) e!3845822)))

(assert (= (and d!1986765 res!2605955) b!6330403))

(assert (= (and d!1986765 c!1150387) b!6330404))

(assert (= (and d!1986765 (not c!1150387)) b!6330402))

(assert (= (and b!6330402 c!1150388) b!6330406))

(assert (= (and b!6330402 (not c!1150388)) b!6330405))

(assert (= (or b!6330404 b!6330406) bm!538851))

(assert (=> b!6330403 m!7140570))

(declare-fun m!7141004 () Bool)

(assert (=> bm!538851 m!7141004))

(declare-fun m!7141006 () Bool)

(assert (=> b!6330404 m!7141006))

(assert (=> b!6329911 d!1986765))

(declare-fun d!1986767 () Bool)

(declare-fun dynLambda!25701 (Int Context!11238) (InoxSet Context!11238))

(assert (=> d!1986767 (= (flatMap!1740 z!1189 lambda!347527) (dynLambda!25701 lambda!347527 (h!71330 zl!343)))))

(declare-fun lt!2360794 () Unit!158271)

(declare-fun choose!46940 ((InoxSet Context!11238) Context!11238 Int) Unit!158271)

(assert (=> d!1986767 (= lt!2360794 (choose!46940 z!1189 (h!71330 zl!343) lambda!347527))))

(assert (=> d!1986767 (= z!1189 (store ((as const (Array Context!11238 Bool)) false) (h!71330 zl!343) true))))

(assert (=> d!1986767 (= (lemmaFlatMapOnSingletonSet!1266 z!1189 (h!71330 zl!343) lambda!347527) lt!2360794)))

(declare-fun b_lambda!240823 () Bool)

(assert (=> (not b_lambda!240823) (not d!1986767)))

(declare-fun bs!1583717 () Bool)

(assert (= bs!1583717 d!1986767))

(assert (=> bs!1583717 m!7140568))

(declare-fun m!7141008 () Bool)

(assert (=> bs!1583717 m!7141008))

(declare-fun m!7141010 () Bool)

(assert (=> bs!1583717 m!7141010))

(declare-fun m!7141012 () Bool)

(assert (=> bs!1583717 m!7141012))

(assert (=> b!6329911 d!1986767))

(declare-fun d!1986769 () Bool)

(declare-fun res!2605966 () Bool)

(declare-fun e!3845843 () Bool)

(assert (=> d!1986769 (=> res!2605966 e!3845843)))

(assert (=> d!1986769 (= res!2605966 ((_ is ElementMatch!16235) r!7292))))

(assert (=> d!1986769 (= (validRegex!7971 r!7292) e!3845843)))

(declare-fun b!6330425 () Bool)

(declare-fun e!3845842 () Bool)

(declare-fun call!538863 () Bool)

(assert (=> b!6330425 (= e!3845842 call!538863)))

(declare-fun b!6330426 () Bool)

(declare-fun e!3845839 () Bool)

(declare-fun e!3845837 () Bool)

(assert (=> b!6330426 (= e!3845839 e!3845837)))

(declare-fun res!2605969 () Bool)

(assert (=> b!6330426 (=> (not res!2605969) (not e!3845837))))

(declare-fun call!538865 () Bool)

(assert (=> b!6330426 (= res!2605969 call!538865)))

(declare-fun b!6330427 () Bool)

(declare-fun e!3845840 () Bool)

(declare-fun e!3845841 () Bool)

(assert (=> b!6330427 (= e!3845840 e!3845841)))

(declare-fun c!1150393 () Bool)

(assert (=> b!6330427 (= c!1150393 ((_ is Union!16235) r!7292))))

(declare-fun bm!538858 () Bool)

(declare-fun call!538864 () Bool)

(declare-fun c!1150394 () Bool)

(assert (=> bm!538858 (= call!538864 (validRegex!7971 (ite c!1150394 (reg!16564 r!7292) (ite c!1150393 (regTwo!32983 r!7292) (regTwo!32982 r!7292)))))))

(declare-fun b!6330428 () Bool)

(declare-fun res!2605970 () Bool)

(assert (=> b!6330428 (=> (not res!2605970) (not e!3845842))))

(assert (=> b!6330428 (= res!2605970 call!538865)))

(assert (=> b!6330428 (= e!3845841 e!3845842)))

(declare-fun b!6330429 () Bool)

(declare-fun res!2605967 () Bool)

(assert (=> b!6330429 (=> res!2605967 e!3845839)))

(assert (=> b!6330429 (= res!2605967 (not ((_ is Concat!25080) r!7292)))))

(assert (=> b!6330429 (= e!3845841 e!3845839)))

(declare-fun b!6330430 () Bool)

(declare-fun e!3845838 () Bool)

(assert (=> b!6330430 (= e!3845838 call!538864)))

(declare-fun b!6330431 () Bool)

(assert (=> b!6330431 (= e!3845837 call!538863)))

(declare-fun b!6330432 () Bool)

(assert (=> b!6330432 (= e!3845840 e!3845838)))

(declare-fun res!2605968 () Bool)

(assert (=> b!6330432 (= res!2605968 (not (nullable!6228 (reg!16564 r!7292))))))

(assert (=> b!6330432 (=> (not res!2605968) (not e!3845838))))

(declare-fun bm!538859 () Bool)

(assert (=> bm!538859 (= call!538863 call!538864)))

(declare-fun bm!538860 () Bool)

(assert (=> bm!538860 (= call!538865 (validRegex!7971 (ite c!1150393 (regOne!32983 r!7292) (regOne!32982 r!7292))))))

(declare-fun b!6330433 () Bool)

(assert (=> b!6330433 (= e!3845843 e!3845840)))

(assert (=> b!6330433 (= c!1150394 ((_ is Star!16235) r!7292))))

(assert (= (and d!1986769 (not res!2605966)) b!6330433))

(assert (= (and b!6330433 c!1150394) b!6330432))

(assert (= (and b!6330433 (not c!1150394)) b!6330427))

(assert (= (and b!6330432 res!2605968) b!6330430))

(assert (= (and b!6330427 c!1150393) b!6330428))

(assert (= (and b!6330427 (not c!1150393)) b!6330429))

(assert (= (and b!6330428 res!2605970) b!6330425))

(assert (= (and b!6330429 (not res!2605967)) b!6330426))

(assert (= (and b!6330426 res!2605969) b!6330431))

(assert (= (or b!6330425 b!6330431) bm!538859))

(assert (= (or b!6330428 b!6330426) bm!538860))

(assert (= (or b!6330430 bm!538859) bm!538858))

(declare-fun m!7141014 () Bool)

(assert (=> bm!538858 m!7141014))

(declare-fun m!7141016 () Bool)

(assert (=> b!6330432 m!7141016))

(declare-fun m!7141018 () Bool)

(assert (=> bm!538860 m!7141018))

(assert (=> start!627466 d!1986769))

(declare-fun d!1986771 () Bool)

(declare-fun c!1150395 () Bool)

(assert (=> d!1986771 (= c!1150395 (isEmpty!36956 (t!378587 s!2326)))))

(declare-fun e!3845844 () Bool)

(assert (=> d!1986771 (= (matchZipper!2247 lt!2360713 (t!378587 s!2326)) e!3845844)))

(declare-fun b!6330434 () Bool)

(assert (=> b!6330434 (= e!3845844 (nullableZipper!2003 lt!2360713))))

(declare-fun b!6330435 () Bool)

(assert (=> b!6330435 (= e!3845844 (matchZipper!2247 (derivationStepZipper!2201 lt!2360713 (head!12966 (t!378587 s!2326))) (tail!12051 (t!378587 s!2326))))))

(assert (= (and d!1986771 c!1150395) b!6330434))

(assert (= (and d!1986771 (not c!1150395)) b!6330435))

(assert (=> d!1986771 m!7140686))

(declare-fun m!7141020 () Bool)

(assert (=> b!6330434 m!7141020))

(assert (=> b!6330435 m!7140690))

(assert (=> b!6330435 m!7140690))

(declare-fun m!7141022 () Bool)

(assert (=> b!6330435 m!7141022))

(assert (=> b!6330435 m!7140694))

(assert (=> b!6330435 m!7141022))

(assert (=> b!6330435 m!7140694))

(declare-fun m!7141024 () Bool)

(assert (=> b!6330435 m!7141024))

(assert (=> b!6329921 d!1986771))

(declare-fun d!1986773 () Bool)

(assert (=> d!1986773 (= (flatMap!1740 lt!2360711 lambda!347527) (choose!46938 lt!2360711 lambda!347527))))

(declare-fun bs!1583718 () Bool)

(assert (= bs!1583718 d!1986773))

(declare-fun m!7141026 () Bool)

(assert (=> bs!1583718 m!7141026))

(assert (=> b!6329912 d!1986773))

(declare-fun b!6330437 () Bool)

(declare-fun e!3845846 () Bool)

(assert (=> b!6330437 (= e!3845846 (nullable!6228 (h!71328 (exprs!6119 lt!2360715))))))

(declare-fun bm!538861 () Bool)

(declare-fun call!538866 () (InoxSet Context!11238))

(assert (=> bm!538861 (= call!538866 (derivationStepZipperDown!1483 (h!71328 (exprs!6119 lt!2360715)) (Context!11239 (t!378586 (exprs!6119 lt!2360715))) (h!71329 s!2326)))))

(declare-fun b!6330438 () Bool)

(declare-fun e!3845847 () (InoxSet Context!11238))

(assert (=> b!6330438 (= e!3845847 ((_ map or) call!538866 (derivationStepZipperUp!1409 (Context!11239 (t!378586 (exprs!6119 lt!2360715))) (h!71329 s!2326))))))

(declare-fun b!6330439 () Bool)

(declare-fun e!3845845 () (InoxSet Context!11238))

(assert (=> b!6330439 (= e!3845845 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330440 () Bool)

(assert (=> b!6330440 (= e!3845845 call!538866)))

(declare-fun b!6330436 () Bool)

(assert (=> b!6330436 (= e!3845847 e!3845845)))

(declare-fun c!1150397 () Bool)

(assert (=> b!6330436 (= c!1150397 ((_ is Cons!64880) (exprs!6119 lt!2360715)))))

(declare-fun d!1986775 () Bool)

(declare-fun c!1150396 () Bool)

(assert (=> d!1986775 (= c!1150396 e!3845846)))

(declare-fun res!2605971 () Bool)

(assert (=> d!1986775 (=> (not res!2605971) (not e!3845846))))

(assert (=> d!1986775 (= res!2605971 ((_ is Cons!64880) (exprs!6119 lt!2360715)))))

(assert (=> d!1986775 (= (derivationStepZipperUp!1409 lt!2360715 (h!71329 s!2326)) e!3845847)))

(assert (= (and d!1986775 res!2605971) b!6330437))

(assert (= (and d!1986775 c!1150396) b!6330438))

(assert (= (and d!1986775 (not c!1150396)) b!6330436))

(assert (= (and b!6330436 c!1150397) b!6330440))

(assert (= (and b!6330436 (not c!1150397)) b!6330439))

(assert (= (or b!6330438 b!6330440) bm!538861))

(declare-fun m!7141028 () Bool)

(assert (=> b!6330437 m!7141028))

(declare-fun m!7141030 () Bool)

(assert (=> bm!538861 m!7141030))

(declare-fun m!7141032 () Bool)

(assert (=> b!6330438 m!7141032))

(assert (=> b!6329912 d!1986775))

(declare-fun d!1986777 () Bool)

(assert (=> d!1986777 (= (flatMap!1740 lt!2360711 lambda!347527) (dynLambda!25701 lambda!347527 lt!2360715))))

(declare-fun lt!2360795 () Unit!158271)

(assert (=> d!1986777 (= lt!2360795 (choose!46940 lt!2360711 lt!2360715 lambda!347527))))

(assert (=> d!1986777 (= lt!2360711 (store ((as const (Array Context!11238 Bool)) false) lt!2360715 true))))

(assert (=> d!1986777 (= (lemmaFlatMapOnSingletonSet!1266 lt!2360711 lt!2360715 lambda!347527) lt!2360795)))

(declare-fun b_lambda!240825 () Bool)

(assert (=> (not b_lambda!240825) (not d!1986777)))

(declare-fun bs!1583719 () Bool)

(assert (= bs!1583719 d!1986777))

(assert (=> bs!1583719 m!7140622))

(declare-fun m!7141034 () Bool)

(assert (=> bs!1583719 m!7141034))

(declare-fun m!7141036 () Bool)

(assert (=> bs!1583719 m!7141036))

(assert (=> bs!1583719 m!7140626))

(assert (=> b!6329912 d!1986777))

(declare-fun bs!1583725 () Bool)

(declare-fun d!1986779 () Bool)

(assert (= bs!1583725 (and d!1986779 b!6329911)))

(declare-fun lambda!347584 () Int)

(assert (=> bs!1583725 (= lambda!347584 lambda!347527)))

(assert (=> d!1986779 true))

(assert (=> d!1986779 (= (derivationStepZipper!2201 lt!2360711 (h!71329 s!2326)) (flatMap!1740 lt!2360711 lambda!347584))))

(declare-fun bs!1583726 () Bool)

(assert (= bs!1583726 d!1986779))

(declare-fun m!7141064 () Bool)

(assert (=> bs!1583726 m!7141064))

(assert (=> b!6329912 d!1986779))

(declare-fun bs!1583728 () Bool)

(declare-fun d!1986785 () Bool)

(assert (= bs!1583728 (and d!1986785 d!1986723)))

(declare-fun lambda!347585 () Int)

(assert (=> bs!1583728 (= lambda!347585 lambda!347576)))

(declare-fun bs!1583729 () Bool)

(assert (= bs!1583729 (and d!1986785 d!1986711)))

(assert (=> bs!1583729 (= lambda!347585 lambda!347571)))

(declare-fun bs!1583730 () Bool)

(assert (= bs!1583730 (and d!1986785 d!1986681)))

(assert (=> bs!1583730 (= lambda!347585 lambda!347554)))

(declare-fun bs!1583731 () Bool)

(assert (= bs!1583731 (and d!1986785 d!1986701)))

(assert (=> bs!1583731 (= lambda!347585 lambda!347566)))

(declare-fun bs!1583732 () Bool)

(assert (= bs!1583732 (and d!1986785 d!1986675)))

(assert (=> bs!1583732 (= lambda!347585 lambda!347551)))

(assert (=> d!1986785 (= (inv!83834 setElem!43072) (forall!15386 (exprs!6119 setElem!43072) lambda!347585))))

(declare-fun bs!1583733 () Bool)

(assert (= bs!1583733 d!1986785))

(declare-fun m!7141070 () Bool)

(assert (=> bs!1583733 m!7141070))

(assert (=> setNonEmpty!43072 d!1986785))

(declare-fun bs!1583737 () Bool)

(declare-fun b!6330518 () Bool)

(assert (= bs!1583737 (and b!6330518 b!6329922)))

(declare-fun lambda!347593 () Int)

(assert (=> bs!1583737 (not (= lambda!347593 lambda!347525))))

(assert (=> bs!1583737 (not (= lambda!347593 lambda!347526))))

(assert (=> b!6330518 true))

(assert (=> b!6330518 true))

(declare-fun bs!1583738 () Bool)

(declare-fun b!6330524 () Bool)

(assert (= bs!1583738 (and b!6330524 b!6329922)))

(declare-fun lambda!347598 () Int)

(assert (=> bs!1583738 (not (= lambda!347598 lambda!347525))))

(assert (=> bs!1583738 (= lambda!347598 lambda!347526)))

(declare-fun bs!1583739 () Bool)

(assert (= bs!1583739 (and b!6330524 b!6330518)))

(assert (=> bs!1583739 (not (= lambda!347598 lambda!347593))))

(assert (=> b!6330524 true))

(assert (=> b!6330524 true))

(declare-fun call!538876 () Bool)

(declare-fun bm!538870 () Bool)

(declare-fun c!1150427 () Bool)

(assert (=> bm!538870 (= call!538876 (Exists!3305 (ite c!1150427 lambda!347593 lambda!347598)))))

(declare-fun b!6330517 () Bool)

(declare-fun e!3845894 () Bool)

(declare-fun e!3845896 () Bool)

(assert (=> b!6330517 (= e!3845894 e!3845896)))

(assert (=> b!6330517 (= c!1150427 ((_ is Star!16235) r!7292))))

(declare-fun e!3845890 () Bool)

(assert (=> b!6330518 (= e!3845890 call!538876)))

(declare-fun b!6330519 () Bool)

(declare-fun e!3845891 () Bool)

(declare-fun call!538875 () Bool)

(assert (=> b!6330519 (= e!3845891 call!538875)))

(declare-fun b!6330520 () Bool)

(declare-fun res!2605998 () Bool)

(assert (=> b!6330520 (=> res!2605998 e!3845890)))

(assert (=> b!6330520 (= res!2605998 call!538875)))

(assert (=> b!6330520 (= e!3845896 e!3845890)))

(declare-fun b!6330521 () Bool)

(declare-fun e!3845893 () Bool)

(assert (=> b!6330521 (= e!3845891 e!3845893)))

(declare-fun res!2605996 () Bool)

(assert (=> b!6330521 (= res!2605996 (not ((_ is EmptyLang!16235) r!7292)))))

(assert (=> b!6330521 (=> (not res!2605996) (not e!3845893))))

(declare-fun b!6330522 () Bool)

(declare-fun e!3845895 () Bool)

(assert (=> b!6330522 (= e!3845894 e!3845895)))

(declare-fun res!2605997 () Bool)

(assert (=> b!6330522 (= res!2605997 (matchRSpec!3336 (regOne!32983 r!7292) s!2326))))

(assert (=> b!6330522 (=> res!2605997 e!3845895)))

(declare-fun b!6330523 () Bool)

(declare-fun c!1150428 () Bool)

(assert (=> b!6330523 (= c!1150428 ((_ is Union!16235) r!7292))))

(declare-fun e!3845892 () Bool)

(assert (=> b!6330523 (= e!3845892 e!3845894)))

(assert (=> b!6330524 (= e!3845896 call!538876)))

(declare-fun b!6330525 () Bool)

(declare-fun c!1150429 () Bool)

(assert (=> b!6330525 (= c!1150429 ((_ is ElementMatch!16235) r!7292))))

(assert (=> b!6330525 (= e!3845893 e!3845892)))

(declare-fun d!1986789 () Bool)

(declare-fun c!1150430 () Bool)

(assert (=> d!1986789 (= c!1150430 ((_ is EmptyExpr!16235) r!7292))))

(assert (=> d!1986789 (= (matchRSpec!3336 r!7292 s!2326) e!3845891)))

(declare-fun bm!538871 () Bool)

(assert (=> bm!538871 (= call!538875 (isEmpty!36956 s!2326))))

(declare-fun b!6330526 () Bool)

(assert (=> b!6330526 (= e!3845895 (matchRSpec!3336 (regTwo!32983 r!7292) s!2326))))

(declare-fun b!6330527 () Bool)

(assert (=> b!6330527 (= e!3845892 (= s!2326 (Cons!64881 (c!1150216 r!7292) Nil!64881)))))

(assert (= (and d!1986789 c!1150430) b!6330519))

(assert (= (and d!1986789 (not c!1150430)) b!6330521))

(assert (= (and b!6330521 res!2605996) b!6330525))

(assert (= (and b!6330525 c!1150429) b!6330527))

(assert (= (and b!6330525 (not c!1150429)) b!6330523))

(assert (= (and b!6330523 c!1150428) b!6330522))

(assert (= (and b!6330523 (not c!1150428)) b!6330517))

(assert (= (and b!6330522 (not res!2605997)) b!6330526))

(assert (= (and b!6330517 c!1150427) b!6330520))

(assert (= (and b!6330517 (not c!1150427)) b!6330524))

(assert (= (and b!6330520 (not res!2605998)) b!6330518))

(assert (= (or b!6330518 b!6330524) bm!538870))

(assert (= (or b!6330519 b!6330520) bm!538871))

(declare-fun m!7141096 () Bool)

(assert (=> bm!538870 m!7141096))

(declare-fun m!7141098 () Bool)

(assert (=> b!6330522 m!7141098))

(declare-fun m!7141100 () Bool)

(assert (=> bm!538871 m!7141100))

(declare-fun m!7141102 () Bool)

(assert (=> b!6330526 m!7141102))

(assert (=> b!6329903 d!1986789))

(declare-fun bm!538877 () Bool)

(declare-fun call!538882 () Bool)

(assert (=> bm!538877 (= call!538882 (isEmpty!36956 s!2326))))

(declare-fun b!6330624 () Bool)

(declare-fun res!2606025 () Bool)

(declare-fun e!3845945 () Bool)

(assert (=> b!6330624 (=> (not res!2606025) (not e!3845945))))

(assert (=> b!6330624 (= res!2606025 (isEmpty!36956 (tail!12051 s!2326)))))

(declare-fun b!6330625 () Bool)

(declare-fun res!2606027 () Bool)

(declare-fun e!3845944 () Bool)

(assert (=> b!6330625 (=> res!2606027 e!3845944)))

(assert (=> b!6330625 (= res!2606027 (not (isEmpty!36956 (tail!12051 s!2326))))))

(declare-fun b!6330626 () Bool)

(assert (=> b!6330626 (= e!3845944 (not (= (head!12966 s!2326) (c!1150216 r!7292))))))

(declare-fun b!6330627 () Bool)

(declare-fun res!2606026 () Bool)

(declare-fun e!3845946 () Bool)

(assert (=> b!6330627 (=> res!2606026 e!3845946)))

(assert (=> b!6330627 (= res!2606026 (not ((_ is ElementMatch!16235) r!7292)))))

(declare-fun e!3845948 () Bool)

(assert (=> b!6330627 (= e!3845948 e!3845946)))

(declare-fun b!6330628 () Bool)

(declare-fun e!3845949 () Bool)

(assert (=> b!6330628 (= e!3845949 e!3845948)))

(declare-fun c!1150452 () Bool)

(assert (=> b!6330628 (= c!1150452 ((_ is EmptyLang!16235) r!7292))))

(declare-fun b!6330629 () Bool)

(declare-fun e!3845947 () Bool)

(declare-fun derivativeStep!4942 (Regex!16235 C!32740) Regex!16235)

(assert (=> b!6330629 (= e!3845947 (matchR!8418 (derivativeStep!4942 r!7292 (head!12966 s!2326)) (tail!12051 s!2326)))))

(declare-fun b!6330630 () Bool)

(declare-fun e!3845943 () Bool)

(assert (=> b!6330630 (= e!3845943 e!3845944)))

(declare-fun res!2606031 () Bool)

(assert (=> b!6330630 (=> res!2606031 e!3845944)))

(assert (=> b!6330630 (= res!2606031 call!538882)))

(declare-fun d!1986805 () Bool)

(assert (=> d!1986805 e!3845949))

(declare-fun c!1150451 () Bool)

(assert (=> d!1986805 (= c!1150451 ((_ is EmptyExpr!16235) r!7292))))

(declare-fun lt!2360824 () Bool)

(assert (=> d!1986805 (= lt!2360824 e!3845947)))

(declare-fun c!1150450 () Bool)

(assert (=> d!1986805 (= c!1150450 (isEmpty!36956 s!2326))))

(assert (=> d!1986805 (validRegex!7971 r!7292)))

(assert (=> d!1986805 (= (matchR!8418 r!7292 s!2326) lt!2360824)))

(declare-fun b!6330631 () Bool)

(assert (=> b!6330631 (= e!3845949 (= lt!2360824 call!538882))))

(declare-fun b!6330632 () Bool)

(assert (=> b!6330632 (= e!3845945 (= (head!12966 s!2326) (c!1150216 r!7292)))))

(declare-fun b!6330633 () Bool)

(declare-fun res!2606029 () Bool)

(assert (=> b!6330633 (=> (not res!2606029) (not e!3845945))))

(assert (=> b!6330633 (= res!2606029 (not call!538882))))

(declare-fun b!6330634 () Bool)

(assert (=> b!6330634 (= e!3845946 e!3845943)))

(declare-fun res!2606024 () Bool)

(assert (=> b!6330634 (=> (not res!2606024) (not e!3845943))))

(assert (=> b!6330634 (= res!2606024 (not lt!2360824))))

(declare-fun b!6330635 () Bool)

(assert (=> b!6330635 (= e!3845947 (nullable!6228 r!7292))))

(declare-fun b!6330636 () Bool)

(assert (=> b!6330636 (= e!3845948 (not lt!2360824))))

(declare-fun b!6330637 () Bool)

(declare-fun res!2606030 () Bool)

(assert (=> b!6330637 (=> res!2606030 e!3845946)))

(assert (=> b!6330637 (= res!2606030 e!3845945)))

(declare-fun res!2606028 () Bool)

(assert (=> b!6330637 (=> (not res!2606028) (not e!3845945))))

(assert (=> b!6330637 (= res!2606028 lt!2360824)))

(assert (= (and d!1986805 c!1150450) b!6330635))

(assert (= (and d!1986805 (not c!1150450)) b!6330629))

(assert (= (and d!1986805 c!1150451) b!6330631))

(assert (= (and d!1986805 (not c!1150451)) b!6330628))

(assert (= (and b!6330628 c!1150452) b!6330636))

(assert (= (and b!6330628 (not c!1150452)) b!6330627))

(assert (= (and b!6330627 (not res!2606026)) b!6330637))

(assert (= (and b!6330637 res!2606028) b!6330633))

(assert (= (and b!6330633 res!2606029) b!6330624))

(assert (= (and b!6330624 res!2606025) b!6330632))

(assert (= (and b!6330637 (not res!2606030)) b!6330634))

(assert (= (and b!6330634 res!2606024) b!6330630))

(assert (= (and b!6330630 (not res!2606031)) b!6330625))

(assert (= (and b!6330625 (not res!2606027)) b!6330626))

(assert (= (or b!6330631 b!6330630 b!6330633) bm!538877))

(declare-fun m!7141146 () Bool)

(assert (=> b!6330626 m!7141146))

(assert (=> d!1986805 m!7141100))

(assert (=> d!1986805 m!7140650))

(declare-fun m!7141148 () Bool)

(assert (=> b!6330624 m!7141148))

(assert (=> b!6330624 m!7141148))

(declare-fun m!7141150 () Bool)

(assert (=> b!6330624 m!7141150))

(assert (=> bm!538877 m!7141100))

(assert (=> b!6330632 m!7141146))

(assert (=> b!6330629 m!7141146))

(assert (=> b!6330629 m!7141146))

(declare-fun m!7141152 () Bool)

(assert (=> b!6330629 m!7141152))

(assert (=> b!6330629 m!7141148))

(assert (=> b!6330629 m!7141152))

(assert (=> b!6330629 m!7141148))

(declare-fun m!7141154 () Bool)

(assert (=> b!6330629 m!7141154))

(assert (=> b!6330625 m!7141148))

(assert (=> b!6330625 m!7141148))

(assert (=> b!6330625 m!7141150))

(declare-fun m!7141156 () Bool)

(assert (=> b!6330635 m!7141156))

(assert (=> b!6329903 d!1986805))

(declare-fun d!1986817 () Bool)

(assert (=> d!1986817 (= (matchR!8418 r!7292 s!2326) (matchRSpec!3336 r!7292 s!2326))))

(declare-fun lt!2360827 () Unit!158271)

(declare-fun choose!46941 (Regex!16235 List!65005) Unit!158271)

(assert (=> d!1986817 (= lt!2360827 (choose!46941 r!7292 s!2326))))

(assert (=> d!1986817 (validRegex!7971 r!7292)))

(assert (=> d!1986817 (= (mainMatchTheorem!3336 r!7292 s!2326) lt!2360827)))

(declare-fun bs!1583749 () Bool)

(assert (= bs!1583749 d!1986817))

(assert (=> bs!1583749 m!7140592))

(assert (=> bs!1583749 m!7140590))

(declare-fun m!7141158 () Bool)

(assert (=> bs!1583749 m!7141158))

(assert (=> bs!1583749 m!7140650))

(assert (=> b!6329903 d!1986817))

(declare-fun d!1986821 () Bool)

(declare-fun e!3845969 () Bool)

(assert (=> d!1986821 e!3845969))

(declare-fun res!2606046 () Bool)

(assert (=> d!1986821 (=> res!2606046 e!3845969)))

(declare-fun e!3845970 () Bool)

(assert (=> d!1986821 (= res!2606046 e!3845970)))

(declare-fun res!2606043 () Bool)

(assert (=> d!1986821 (=> (not res!2606043) (not e!3845970))))

(declare-fun lt!2360836 () Option!16126)

(assert (=> d!1986821 (= res!2606043 (isDefined!12829 lt!2360836))))

(declare-fun e!3845967 () Option!16126)

(assert (=> d!1986821 (= lt!2360836 e!3845967)))

(declare-fun c!1150458 () Bool)

(declare-fun e!3845968 () Bool)

(assert (=> d!1986821 (= c!1150458 e!3845968)))

(declare-fun res!2606044 () Bool)

(assert (=> d!1986821 (=> (not res!2606044) (not e!3845968))))

(assert (=> d!1986821 (= res!2606044 (matchR!8418 (regOne!32982 r!7292) Nil!64881))))

(assert (=> d!1986821 (validRegex!7971 (regOne!32982 r!7292))))

(assert (=> d!1986821 (= (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) Nil!64881 s!2326 s!2326) lt!2360836)))

(declare-fun b!6330667 () Bool)

(declare-fun lt!2360834 () Unit!158271)

(declare-fun lt!2360835 () Unit!158271)

(assert (=> b!6330667 (= lt!2360834 lt!2360835)))

(declare-fun ++!14306 (List!65005 List!65005) List!65005)

(assert (=> b!6330667 (= (++!14306 (++!14306 Nil!64881 (Cons!64881 (h!71329 s!2326) Nil!64881)) (t!378587 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2401 (List!65005 C!32740 List!65005 List!65005) Unit!158271)

(assert (=> b!6330667 (= lt!2360835 (lemmaMoveElementToOtherListKeepsConcatEq!2401 Nil!64881 (h!71329 s!2326) (t!378587 s!2326) s!2326))))

(declare-fun e!3845971 () Option!16126)

(assert (=> b!6330667 (= e!3845971 (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) (++!14306 Nil!64881 (Cons!64881 (h!71329 s!2326) Nil!64881)) (t!378587 s!2326) s!2326))))

(declare-fun b!6330668 () Bool)

(assert (=> b!6330668 (= e!3845967 (Some!16125 (tuple2!66429 Nil!64881 s!2326)))))

(declare-fun b!6330669 () Bool)

(declare-fun get!22439 (Option!16126) tuple2!66428)

(assert (=> b!6330669 (= e!3845970 (= (++!14306 (_1!36517 (get!22439 lt!2360836)) (_2!36517 (get!22439 lt!2360836))) s!2326))))

(declare-fun b!6330670 () Bool)

(assert (=> b!6330670 (= e!3845967 e!3845971)))

(declare-fun c!1150457 () Bool)

(assert (=> b!6330670 (= c!1150457 ((_ is Nil!64881) s!2326))))

(declare-fun b!6330671 () Bool)

(assert (=> b!6330671 (= e!3845968 (matchR!8418 (regTwo!32982 r!7292) s!2326))))

(declare-fun b!6330672 () Bool)

(assert (=> b!6330672 (= e!3845971 None!16125)))

(declare-fun b!6330673 () Bool)

(declare-fun res!2606045 () Bool)

(assert (=> b!6330673 (=> (not res!2606045) (not e!3845970))))

(assert (=> b!6330673 (= res!2606045 (matchR!8418 (regTwo!32982 r!7292) (_2!36517 (get!22439 lt!2360836))))))

(declare-fun b!6330674 () Bool)

(declare-fun res!2606042 () Bool)

(assert (=> b!6330674 (=> (not res!2606042) (not e!3845970))))

(assert (=> b!6330674 (= res!2606042 (matchR!8418 (regOne!32982 r!7292) (_1!36517 (get!22439 lt!2360836))))))

(declare-fun b!6330675 () Bool)

(assert (=> b!6330675 (= e!3845969 (not (isDefined!12829 lt!2360836)))))

(assert (= (and d!1986821 res!2606044) b!6330671))

(assert (= (and d!1986821 c!1150458) b!6330668))

(assert (= (and d!1986821 (not c!1150458)) b!6330670))

(assert (= (and b!6330670 c!1150457) b!6330672))

(assert (= (and b!6330670 (not c!1150457)) b!6330667))

(assert (= (and d!1986821 res!2606043) b!6330674))

(assert (= (and b!6330674 res!2606042) b!6330673))

(assert (= (and b!6330673 res!2606045) b!6330669))

(assert (= (and d!1986821 (not res!2606046)) b!6330675))

(declare-fun m!7141160 () Bool)

(assert (=> b!6330671 m!7141160))

(declare-fun m!7141162 () Bool)

(assert (=> b!6330673 m!7141162))

(declare-fun m!7141164 () Bool)

(assert (=> b!6330673 m!7141164))

(declare-fun m!7141166 () Bool)

(assert (=> b!6330667 m!7141166))

(assert (=> b!6330667 m!7141166))

(declare-fun m!7141168 () Bool)

(assert (=> b!6330667 m!7141168))

(declare-fun m!7141170 () Bool)

(assert (=> b!6330667 m!7141170))

(assert (=> b!6330667 m!7141166))

(declare-fun m!7141172 () Bool)

(assert (=> b!6330667 m!7141172))

(assert (=> b!6330674 m!7141162))

(declare-fun m!7141174 () Bool)

(assert (=> b!6330674 m!7141174))

(declare-fun m!7141176 () Bool)

(assert (=> d!1986821 m!7141176))

(declare-fun m!7141178 () Bool)

(assert (=> d!1986821 m!7141178))

(declare-fun m!7141180 () Bool)

(assert (=> d!1986821 m!7141180))

(assert (=> b!6330675 m!7141176))

(assert (=> b!6330669 m!7141162))

(declare-fun m!7141182 () Bool)

(assert (=> b!6330669 m!7141182))

(assert (=> b!6329922 d!1986821))

(declare-fun d!1986823 () Bool)

(declare-fun choose!46942 (Int) Bool)

(assert (=> d!1986823 (= (Exists!3305 lambda!347526) (choose!46942 lambda!347526))))

(declare-fun bs!1583750 () Bool)

(assert (= bs!1583750 d!1986823))

(declare-fun m!7141184 () Bool)

(assert (=> bs!1583750 m!7141184))

(assert (=> b!6329922 d!1986823))

(declare-fun d!1986825 () Bool)

(assert (=> d!1986825 (= (Exists!3305 lambda!347525) (choose!46942 lambda!347525))))

(declare-fun bs!1583751 () Bool)

(assert (= bs!1583751 d!1986825))

(declare-fun m!7141186 () Bool)

(assert (=> bs!1583751 m!7141186))

(assert (=> b!6329922 d!1986825))

(declare-fun bs!1583752 () Bool)

(declare-fun d!1986827 () Bool)

(assert (= bs!1583752 (and d!1986827 b!6329922)))

(declare-fun lambda!347609 () Int)

(assert (=> bs!1583752 (= lambda!347609 lambda!347525)))

(assert (=> bs!1583752 (not (= lambda!347609 lambda!347526))))

(declare-fun bs!1583753 () Bool)

(assert (= bs!1583753 (and d!1986827 b!6330518)))

(assert (=> bs!1583753 (not (= lambda!347609 lambda!347593))))

(declare-fun bs!1583754 () Bool)

(assert (= bs!1583754 (and d!1986827 b!6330524)))

(assert (=> bs!1583754 (not (= lambda!347609 lambda!347598))))

(assert (=> d!1986827 true))

(assert (=> d!1986827 true))

(assert (=> d!1986827 true))

(assert (=> d!1986827 (= (isDefined!12829 (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) Nil!64881 s!2326 s!2326)) (Exists!3305 lambda!347609))))

(declare-fun lt!2360839 () Unit!158271)

(declare-fun choose!46943 (Regex!16235 Regex!16235 List!65005) Unit!158271)

(assert (=> d!1986827 (= lt!2360839 (choose!46943 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326))))

(assert (=> d!1986827 (validRegex!7971 (regOne!32982 r!7292))))

(assert (=> d!1986827 (= (lemmaFindConcatSeparationEquivalentToExists!2304 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326) lt!2360839)))

(declare-fun bs!1583755 () Bool)

(assert (= bs!1583755 d!1986827))

(assert (=> bs!1583755 m!7141180))

(assert (=> bs!1583755 m!7140596))

(assert (=> bs!1583755 m!7140596))

(assert (=> bs!1583755 m!7140598))

(declare-fun m!7141188 () Bool)

(assert (=> bs!1583755 m!7141188))

(declare-fun m!7141190 () Bool)

(assert (=> bs!1583755 m!7141190))

(assert (=> b!6329922 d!1986827))

(declare-fun bs!1583756 () Bool)

(declare-fun d!1986829 () Bool)

(assert (= bs!1583756 (and d!1986829 b!6330524)))

(declare-fun lambda!347614 () Int)

(assert (=> bs!1583756 (not (= lambda!347614 lambda!347598))))

(declare-fun bs!1583757 () Bool)

(assert (= bs!1583757 (and d!1986829 b!6329922)))

(assert (=> bs!1583757 (not (= lambda!347614 lambda!347526))))

(declare-fun bs!1583758 () Bool)

(assert (= bs!1583758 (and d!1986829 b!6330518)))

(assert (=> bs!1583758 (not (= lambda!347614 lambda!347593))))

(declare-fun bs!1583759 () Bool)

(assert (= bs!1583759 (and d!1986829 d!1986827)))

(assert (=> bs!1583759 (= lambda!347614 lambda!347609)))

(assert (=> bs!1583757 (= lambda!347614 lambda!347525)))

(assert (=> d!1986829 true))

(assert (=> d!1986829 true))

(assert (=> d!1986829 true))

(declare-fun lambda!347615 () Int)

(assert (=> bs!1583756 (= lambda!347615 lambda!347598)))

(assert (=> bs!1583757 (= lambda!347615 lambda!347526)))

(declare-fun bs!1583760 () Bool)

(assert (= bs!1583760 d!1986829))

(assert (=> bs!1583760 (not (= lambda!347615 lambda!347614))))

(assert (=> bs!1583758 (not (= lambda!347615 lambda!347593))))

(assert (=> bs!1583759 (not (= lambda!347615 lambda!347609))))

(assert (=> bs!1583757 (not (= lambda!347615 lambda!347525))))

(assert (=> d!1986829 true))

(assert (=> d!1986829 true))

(assert (=> d!1986829 true))

(assert (=> d!1986829 (= (Exists!3305 lambda!347614) (Exists!3305 lambda!347615))))

(declare-fun lt!2360842 () Unit!158271)

(declare-fun choose!46944 (Regex!16235 Regex!16235 List!65005) Unit!158271)

(assert (=> d!1986829 (= lt!2360842 (choose!46944 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326))))

(assert (=> d!1986829 (validRegex!7971 (regOne!32982 r!7292))))

(assert (=> d!1986829 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1842 (regOne!32982 r!7292) (regTwo!32982 r!7292) s!2326) lt!2360842)))

(declare-fun m!7141192 () Bool)

(assert (=> bs!1583760 m!7141192))

(declare-fun m!7141194 () Bool)

(assert (=> bs!1583760 m!7141194))

(declare-fun m!7141196 () Bool)

(assert (=> bs!1583760 m!7141196))

(assert (=> bs!1583760 m!7141180))

(assert (=> b!6329922 d!1986829))

(declare-fun d!1986831 () Bool)

(declare-fun isEmpty!36958 (Option!16126) Bool)

(assert (=> d!1986831 (= (isDefined!12829 (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) Nil!64881 s!2326 s!2326)) (not (isEmpty!36958 (findConcatSeparation!2540 (regOne!32982 r!7292) (regTwo!32982 r!7292) Nil!64881 s!2326 s!2326))))))

(declare-fun bs!1583761 () Bool)

(assert (= bs!1583761 d!1986831))

(assert (=> bs!1583761 m!7140596))

(declare-fun m!7141198 () Bool)

(assert (=> bs!1583761 m!7141198))

(assert (=> b!6329922 d!1986831))

(declare-fun d!1986833 () Bool)

(declare-fun lt!2360845 () Regex!16235)

(assert (=> d!1986833 (validRegex!7971 lt!2360845)))

(assert (=> d!1986833 (= lt!2360845 (generalisedUnion!2079 (unfocusZipperList!1656 zl!343)))))

(assert (=> d!1986833 (= (unfocusZipper!1977 zl!343) lt!2360845)))

(declare-fun bs!1583762 () Bool)

(assert (= bs!1583762 d!1986833))

(declare-fun m!7141200 () Bool)

(assert (=> bs!1583762 m!7141200))

(assert (=> bs!1583762 m!7140642))

(assert (=> bs!1583762 m!7140642))

(assert (=> bs!1583762 m!7140644))

(assert (=> b!6329924 d!1986833))

(declare-fun e!3845980 () Bool)

(declare-fun d!1986835 () Bool)

(assert (=> d!1986835 (= (matchZipper!2247 ((_ map or) lt!2360707 lt!2360712) (t!378587 s!2326)) e!3845980)))

(declare-fun res!2606061 () Bool)

(assert (=> d!1986835 (=> res!2606061 e!3845980)))

(assert (=> d!1986835 (= res!2606061 (matchZipper!2247 lt!2360707 (t!378587 s!2326)))))

(declare-fun lt!2360848 () Unit!158271)

(declare-fun choose!46945 ((InoxSet Context!11238) (InoxSet Context!11238) List!65005) Unit!158271)

(assert (=> d!1986835 (= lt!2360848 (choose!46945 lt!2360707 lt!2360712 (t!378587 s!2326)))))

(assert (=> d!1986835 (= (lemmaZipperConcatMatchesSameAsBothZippers!1066 lt!2360707 lt!2360712 (t!378587 s!2326)) lt!2360848)))

(declare-fun b!6330690 () Bool)

(assert (=> b!6330690 (= e!3845980 (matchZipper!2247 lt!2360712 (t!378587 s!2326)))))

(assert (= (and d!1986835 (not res!2606061)) b!6330690))

(assert (=> d!1986835 m!7140636))

(assert (=> d!1986835 m!7140634))

(declare-fun m!7141202 () Bool)

(assert (=> d!1986835 m!7141202))

(assert (=> b!6330690 m!7140612))

(assert (=> b!6329894 d!1986835))

(assert (=> b!6329894 d!1986689))

(declare-fun d!1986837 () Bool)

(declare-fun c!1150459 () Bool)

(assert (=> d!1986837 (= c!1150459 (isEmpty!36956 (t!378587 s!2326)))))

(declare-fun e!3845981 () Bool)

(assert (=> d!1986837 (= (matchZipper!2247 ((_ map or) lt!2360707 lt!2360712) (t!378587 s!2326)) e!3845981)))

(declare-fun b!6330691 () Bool)

(assert (=> b!6330691 (= e!3845981 (nullableZipper!2003 ((_ map or) lt!2360707 lt!2360712)))))

(declare-fun b!6330692 () Bool)

(assert (=> b!6330692 (= e!3845981 (matchZipper!2247 (derivationStepZipper!2201 ((_ map or) lt!2360707 lt!2360712) (head!12966 (t!378587 s!2326))) (tail!12051 (t!378587 s!2326))))))

(assert (= (and d!1986837 c!1150459) b!6330691))

(assert (= (and d!1986837 (not c!1150459)) b!6330692))

(assert (=> d!1986837 m!7140686))

(declare-fun m!7141204 () Bool)

(assert (=> b!6330691 m!7141204))

(assert (=> b!6330692 m!7140690))

(assert (=> b!6330692 m!7140690))

(declare-fun m!7141206 () Bool)

(assert (=> b!6330692 m!7141206))

(assert (=> b!6330692 m!7140694))

(assert (=> b!6330692 m!7141206))

(assert (=> b!6330692 m!7140694))

(declare-fun m!7141208 () Bool)

(assert (=> b!6330692 m!7141208))

(assert (=> b!6329894 d!1986837))

(declare-fun b!6330693 () Bool)

(declare-fun e!3845986 () (InoxSet Context!11238))

(declare-fun call!538884 () (InoxSet Context!11238))

(declare-fun call!538883 () (InoxSet Context!11238))

(assert (=> b!6330693 (= e!3845986 ((_ map or) call!538884 call!538883))))

(declare-fun bm!538878 () Bool)

(declare-fun call!538887 () (InoxSet Context!11238))

(declare-fun call!538886 () (InoxSet Context!11238))

(assert (=> bm!538878 (= call!538887 call!538886)))

(declare-fun bm!538879 () Bool)

(declare-fun c!1150460 () Bool)

(declare-fun call!538885 () List!65004)

(declare-fun c!1150462 () Bool)

(declare-fun c!1150461 () Bool)

(assert (=> bm!538879 (= call!538883 (derivationStepZipperDown!1483 (ite c!1150462 (regTwo!32983 (regOne!32982 (regOne!32982 r!7292))) (ite c!1150460 (regTwo!32982 (regOne!32982 (regOne!32982 r!7292))) (ite c!1150461 (regOne!32982 (regOne!32982 (regOne!32982 r!7292))) (reg!16564 (regOne!32982 (regOne!32982 r!7292)))))) (ite (or c!1150462 c!1150460) (Context!11239 lt!2360710) (Context!11239 call!538885)) (h!71329 s!2326)))))

(declare-fun b!6330694 () Bool)

(declare-fun e!3845982 () (InoxSet Context!11238))

(assert (=> b!6330694 (= e!3845982 (store ((as const (Array Context!11238 Bool)) false) (Context!11239 lt!2360710) true))))

(declare-fun d!1986839 () Bool)

(declare-fun c!1150463 () Bool)

(assert (=> d!1986839 (= c!1150463 (and ((_ is ElementMatch!16235) (regOne!32982 (regOne!32982 r!7292))) (= (c!1150216 (regOne!32982 (regOne!32982 r!7292))) (h!71329 s!2326))))))

(assert (=> d!1986839 (= (derivationStepZipperDown!1483 (regOne!32982 (regOne!32982 r!7292)) (Context!11239 lt!2360710) (h!71329 s!2326)) e!3845982)))

(declare-fun bm!538880 () Bool)

(assert (=> bm!538880 (= call!538886 call!538883)))

(declare-fun b!6330695 () Bool)

(declare-fun e!3845984 () (InoxSet Context!11238))

(assert (=> b!6330695 (= e!3845984 ((as const (Array Context!11238 Bool)) false))))

(declare-fun b!6330696 () Bool)

(declare-fun c!1150464 () Bool)

(assert (=> b!6330696 (= c!1150464 ((_ is Star!16235) (regOne!32982 (regOne!32982 r!7292))))))

(declare-fun e!3845983 () (InoxSet Context!11238))

(assert (=> b!6330696 (= e!3845983 e!3845984)))

(declare-fun bm!538881 () Bool)

(declare-fun call!538888 () List!65004)

(assert (=> bm!538881 (= call!538888 ($colon$colon!2098 (exprs!6119 (Context!11239 lt!2360710)) (ite (or c!1150460 c!1150461) (regTwo!32982 (regOne!32982 (regOne!32982 r!7292))) (regOne!32982 (regOne!32982 r!7292)))))))

(declare-fun bm!538882 () Bool)

(assert (=> bm!538882 (= call!538885 call!538888)))

(declare-fun b!6330697 () Bool)

(assert (=> b!6330697 (= e!3845984 call!538887)))

(declare-fun b!6330698 () Bool)

(declare-fun e!3845985 () (InoxSet Context!11238))

(assert (=> b!6330698 (= e!3845985 ((_ map or) call!538884 call!538886))))

(declare-fun b!6330699 () Bool)

(declare-fun e!3845987 () Bool)

(assert (=> b!6330699 (= e!3845987 (nullable!6228 (regOne!32982 (regOne!32982 (regOne!32982 r!7292)))))))

(declare-fun bm!538883 () Bool)

(assert (=> bm!538883 (= call!538884 (derivationStepZipperDown!1483 (ite c!1150462 (regOne!32983 (regOne!32982 (regOne!32982 r!7292))) (regOne!32982 (regOne!32982 (regOne!32982 r!7292)))) (ite c!1150462 (Context!11239 lt!2360710) (Context!11239 call!538888)) (h!71329 s!2326)))))

(declare-fun b!6330700 () Bool)

(assert (=> b!6330700 (= e!3845983 call!538887)))

(declare-fun b!6330701 () Bool)

(assert (=> b!6330701 (= e!3845982 e!3845986)))

(assert (=> b!6330701 (= c!1150462 ((_ is Union!16235) (regOne!32982 (regOne!32982 r!7292))))))

(declare-fun b!6330702 () Bool)

(assert (=> b!6330702 (= e!3845985 e!3845983)))

(assert (=> b!6330702 (= c!1150461 ((_ is Concat!25080) (regOne!32982 (regOne!32982 r!7292))))))

(declare-fun b!6330703 () Bool)

(assert (=> b!6330703 (= c!1150460 e!3845987)))

(declare-fun res!2606062 () Bool)

(assert (=> b!6330703 (=> (not res!2606062) (not e!3845987))))

(assert (=> b!6330703 (= res!2606062 ((_ is Concat!25080) (regOne!32982 (regOne!32982 r!7292))))))

(assert (=> b!6330703 (= e!3845986 e!3845985)))

(assert (= (and d!1986839 c!1150463) b!6330694))

(assert (= (and d!1986839 (not c!1150463)) b!6330701))

(assert (= (and b!6330701 c!1150462) b!6330693))

(assert (= (and b!6330701 (not c!1150462)) b!6330703))

(assert (= (and b!6330703 res!2606062) b!6330699))

(assert (= (and b!6330703 c!1150460) b!6330698))

(assert (= (and b!6330703 (not c!1150460)) b!6330702))

(assert (= (and b!6330702 c!1150461) b!6330700))

(assert (= (and b!6330702 (not c!1150461)) b!6330696))

(assert (= (and b!6330696 c!1150464) b!6330697))

(assert (= (and b!6330696 (not c!1150464)) b!6330695))

(assert (= (or b!6330700 b!6330697) bm!538882))

(assert (= (or b!6330700 b!6330697) bm!538878))

(assert (= (or b!6330698 bm!538882) bm!538881))

(assert (= (or b!6330698 bm!538878) bm!538880))

(assert (= (or b!6330693 bm!538880) bm!538879))

(assert (= (or b!6330693 b!6330698) bm!538883))

(declare-fun m!7141210 () Bool)

(assert (=> b!6330699 m!7141210))

(declare-fun m!7141212 () Bool)

(assert (=> bm!538879 m!7141212))

(declare-fun m!7141214 () Bool)

(assert (=> bm!538881 m!7141214))

(declare-fun m!7141216 () Bool)

(assert (=> bm!538883 m!7141216))

(declare-fun m!7141218 () Bool)

(assert (=> b!6330694 m!7141218))

(assert (=> b!6329904 d!1986839))

(declare-fun d!1986841 () Bool)

(declare-fun lt!2360851 () Int)

(assert (=> d!1986841 (>= lt!2360851 0)))

(declare-fun e!3845990 () Int)

(assert (=> d!1986841 (= lt!2360851 e!3845990)))

(declare-fun c!1150467 () Bool)

(assert (=> d!1986841 (= c!1150467 ((_ is Cons!64882) lt!2360701))))

(assert (=> d!1986841 (= (zipperDepthTotal!372 lt!2360701) lt!2360851)))

(declare-fun b!6330708 () Bool)

(assert (=> b!6330708 (= e!3845990 (+ (contextDepthTotal!344 (h!71330 lt!2360701)) (zipperDepthTotal!372 (t!378588 lt!2360701))))))

(declare-fun b!6330709 () Bool)

(assert (=> b!6330709 (= e!3845990 0)))

(assert (= (and d!1986841 c!1150467) b!6330708))

(assert (= (and d!1986841 (not c!1150467)) b!6330709))

(declare-fun m!7141220 () Bool)

(assert (=> b!6330708 m!7141220))

(declare-fun m!7141222 () Bool)

(assert (=> b!6330708 m!7141222))

(assert (=> b!6329915 d!1986841))

(declare-fun d!1986843 () Bool)

(declare-fun lt!2360852 () Int)

(assert (=> d!1986843 (>= lt!2360852 0)))

(declare-fun e!3845991 () Int)

(assert (=> d!1986843 (= lt!2360852 e!3845991)))

(declare-fun c!1150468 () Bool)

(assert (=> d!1986843 (= c!1150468 ((_ is Cons!64882) zl!343))))

(assert (=> d!1986843 (= (zipperDepthTotal!372 zl!343) lt!2360852)))

(declare-fun b!6330710 () Bool)

(assert (=> b!6330710 (= e!3845991 (+ (contextDepthTotal!344 (h!71330 zl!343)) (zipperDepthTotal!372 (t!378588 zl!343))))))

(declare-fun b!6330711 () Bool)

(assert (=> b!6330711 (= e!3845991 0)))

(assert (= (and d!1986843 c!1150468) b!6330710))

(assert (= (and d!1986843 (not c!1150468)) b!6330711))

(assert (=> b!6330710 m!7140586))

(declare-fun m!7141224 () Bool)

(assert (=> b!6330710 m!7141224))

(assert (=> b!6329915 d!1986843))

(declare-fun d!1986845 () Bool)

(assert (=> d!1986845 (= (nullable!6228 (regOne!32982 (regOne!32982 r!7292))) (nullableFct!2176 (regOne!32982 (regOne!32982 r!7292))))))

(declare-fun bs!1583763 () Bool)

(assert (= bs!1583763 d!1986845))

(declare-fun m!7141226 () Bool)

(assert (=> bs!1583763 m!7141226))

(assert (=> b!6329905 d!1986845))

(declare-fun b!6330724 () Bool)

(declare-fun e!3845994 () Bool)

(declare-fun tp!1765491 () Bool)

(assert (=> b!6330724 (= e!3845994 tp!1765491)))

(declare-fun b!6330723 () Bool)

(declare-fun tp!1765488 () Bool)

(declare-fun tp!1765489 () Bool)

(assert (=> b!6330723 (= e!3845994 (and tp!1765488 tp!1765489))))

(declare-fun b!6330725 () Bool)

(declare-fun tp!1765487 () Bool)

(declare-fun tp!1765490 () Bool)

(assert (=> b!6330725 (= e!3845994 (and tp!1765487 tp!1765490))))

(declare-fun b!6330722 () Bool)

(assert (=> b!6330722 (= e!3845994 tp_is_empty!41723)))

(assert (=> b!6329901 (= tp!1765411 e!3845994)))

(assert (= (and b!6329901 ((_ is ElementMatch!16235) (regOne!32982 r!7292))) b!6330722))

(assert (= (and b!6329901 ((_ is Concat!25080) (regOne!32982 r!7292))) b!6330723))

(assert (= (and b!6329901 ((_ is Star!16235) (regOne!32982 r!7292))) b!6330724))

(assert (= (and b!6329901 ((_ is Union!16235) (regOne!32982 r!7292))) b!6330725))

(declare-fun b!6330728 () Bool)

(declare-fun e!3845995 () Bool)

(declare-fun tp!1765496 () Bool)

(assert (=> b!6330728 (= e!3845995 tp!1765496)))

(declare-fun b!6330727 () Bool)

(declare-fun tp!1765493 () Bool)

(declare-fun tp!1765494 () Bool)

(assert (=> b!6330727 (= e!3845995 (and tp!1765493 tp!1765494))))

(declare-fun b!6330729 () Bool)

(declare-fun tp!1765492 () Bool)

(declare-fun tp!1765495 () Bool)

(assert (=> b!6330729 (= e!3845995 (and tp!1765492 tp!1765495))))

(declare-fun b!6330726 () Bool)

(assert (=> b!6330726 (= e!3845995 tp_is_empty!41723)))

(assert (=> b!6329901 (= tp!1765413 e!3845995)))

(assert (= (and b!6329901 ((_ is ElementMatch!16235) (regTwo!32982 r!7292))) b!6330726))

(assert (= (and b!6329901 ((_ is Concat!25080) (regTwo!32982 r!7292))) b!6330727))

(assert (= (and b!6329901 ((_ is Star!16235) (regTwo!32982 r!7292))) b!6330728))

(assert (= (and b!6329901 ((_ is Union!16235) (regTwo!32982 r!7292))) b!6330729))

(declare-fun b!6330732 () Bool)

(declare-fun e!3845996 () Bool)

(declare-fun tp!1765501 () Bool)

(assert (=> b!6330732 (= e!3845996 tp!1765501)))

(declare-fun b!6330731 () Bool)

(declare-fun tp!1765498 () Bool)

(declare-fun tp!1765499 () Bool)

(assert (=> b!6330731 (= e!3845996 (and tp!1765498 tp!1765499))))

(declare-fun b!6330733 () Bool)

(declare-fun tp!1765497 () Bool)

(declare-fun tp!1765500 () Bool)

(assert (=> b!6330733 (= e!3845996 (and tp!1765497 tp!1765500))))

(declare-fun b!6330730 () Bool)

(assert (=> b!6330730 (= e!3845996 tp_is_empty!41723)))

(assert (=> b!6329916 (= tp!1765418 e!3845996)))

(assert (= (and b!6329916 ((_ is ElementMatch!16235) (regOne!32983 r!7292))) b!6330730))

(assert (= (and b!6329916 ((_ is Concat!25080) (regOne!32983 r!7292))) b!6330731))

(assert (= (and b!6329916 ((_ is Star!16235) (regOne!32983 r!7292))) b!6330732))

(assert (= (and b!6329916 ((_ is Union!16235) (regOne!32983 r!7292))) b!6330733))

(declare-fun b!6330736 () Bool)

(declare-fun e!3845997 () Bool)

(declare-fun tp!1765506 () Bool)

(assert (=> b!6330736 (= e!3845997 tp!1765506)))

(declare-fun b!6330735 () Bool)

(declare-fun tp!1765503 () Bool)

(declare-fun tp!1765504 () Bool)

(assert (=> b!6330735 (= e!3845997 (and tp!1765503 tp!1765504))))

(declare-fun b!6330737 () Bool)

(declare-fun tp!1765502 () Bool)

(declare-fun tp!1765505 () Bool)

(assert (=> b!6330737 (= e!3845997 (and tp!1765502 tp!1765505))))

(declare-fun b!6330734 () Bool)

(assert (=> b!6330734 (= e!3845997 tp_is_empty!41723)))

(assert (=> b!6329916 (= tp!1765417 e!3845997)))

(assert (= (and b!6329916 ((_ is ElementMatch!16235) (regTwo!32983 r!7292))) b!6330734))

(assert (= (and b!6329916 ((_ is Concat!25080) (regTwo!32983 r!7292))) b!6330735))

(assert (= (and b!6329916 ((_ is Star!16235) (regTwo!32983 r!7292))) b!6330736))

(assert (= (and b!6329916 ((_ is Union!16235) (regTwo!32983 r!7292))) b!6330737))

(declare-fun condSetEmpty!43078 () Bool)

(assert (=> setNonEmpty!43072 (= condSetEmpty!43078 (= setRest!43072 ((as const (Array Context!11238 Bool)) false)))))

(declare-fun setRes!43078 () Bool)

(assert (=> setNonEmpty!43072 (= tp!1765414 setRes!43078)))

(declare-fun setIsEmpty!43078 () Bool)

(assert (=> setIsEmpty!43078 setRes!43078))

(declare-fun setNonEmpty!43078 () Bool)

(declare-fun e!3846000 () Bool)

(declare-fun tp!1765511 () Bool)

(declare-fun setElem!43078 () Context!11238)

(assert (=> setNonEmpty!43078 (= setRes!43078 (and tp!1765511 (inv!83834 setElem!43078) e!3846000))))

(declare-fun setRest!43078 () (InoxSet Context!11238))

(assert (=> setNonEmpty!43078 (= setRest!43072 ((_ map or) (store ((as const (Array Context!11238 Bool)) false) setElem!43078 true) setRest!43078))))

(declare-fun b!6330742 () Bool)

(declare-fun tp!1765512 () Bool)

(assert (=> b!6330742 (= e!3846000 tp!1765512)))

(assert (= (and setNonEmpty!43072 condSetEmpty!43078) setIsEmpty!43078))

(assert (= (and setNonEmpty!43072 (not condSetEmpty!43078)) setNonEmpty!43078))

(assert (= setNonEmpty!43078 b!6330742))

(declare-fun m!7141228 () Bool)

(assert (=> setNonEmpty!43078 m!7141228))

(declare-fun b!6330747 () Bool)

(declare-fun e!3846003 () Bool)

(declare-fun tp!1765517 () Bool)

(declare-fun tp!1765518 () Bool)

(assert (=> b!6330747 (= e!3846003 (and tp!1765517 tp!1765518))))

(assert (=> b!6329918 (= tp!1765416 e!3846003)))

(assert (= (and b!6329918 ((_ is Cons!64880) (exprs!6119 (h!71330 zl!343)))) b!6330747))

(declare-fun b!6330755 () Bool)

(declare-fun e!3846009 () Bool)

(declare-fun tp!1765523 () Bool)

(assert (=> b!6330755 (= e!3846009 tp!1765523)))

(declare-fun b!6330754 () Bool)

(declare-fun e!3846008 () Bool)

(declare-fun tp!1765524 () Bool)

(assert (=> b!6330754 (= e!3846008 (and (inv!83834 (h!71330 (t!378588 zl!343))) e!3846009 tp!1765524))))

(assert (=> b!6329910 (= tp!1765409 e!3846008)))

(assert (= b!6330754 b!6330755))

(assert (= (and b!6329910 ((_ is Cons!64882) (t!378588 zl!343))) b!6330754))

(declare-fun m!7141230 () Bool)

(assert (=> b!6330754 m!7141230))

(declare-fun b!6330758 () Bool)

(declare-fun e!3846010 () Bool)

(declare-fun tp!1765529 () Bool)

(assert (=> b!6330758 (= e!3846010 tp!1765529)))

(declare-fun b!6330757 () Bool)

(declare-fun tp!1765526 () Bool)

(declare-fun tp!1765527 () Bool)

(assert (=> b!6330757 (= e!3846010 (and tp!1765526 tp!1765527))))

(declare-fun b!6330759 () Bool)

(declare-fun tp!1765525 () Bool)

(declare-fun tp!1765528 () Bool)

(assert (=> b!6330759 (= e!3846010 (and tp!1765525 tp!1765528))))

(declare-fun b!6330756 () Bool)

(assert (=> b!6330756 (= e!3846010 tp_is_empty!41723)))

(assert (=> b!6329914 (= tp!1765410 e!3846010)))

(assert (= (and b!6329914 ((_ is ElementMatch!16235) (reg!16564 r!7292))) b!6330756))

(assert (= (and b!6329914 ((_ is Concat!25080) (reg!16564 r!7292))) b!6330757))

(assert (= (and b!6329914 ((_ is Star!16235) (reg!16564 r!7292))) b!6330758))

(assert (= (and b!6329914 ((_ is Union!16235) (reg!16564 r!7292))) b!6330759))

(declare-fun b!6330764 () Bool)

(declare-fun e!3846013 () Bool)

(declare-fun tp!1765532 () Bool)

(assert (=> b!6330764 (= e!3846013 (and tp_is_empty!41723 tp!1765532))))

(assert (=> b!6329895 (= tp!1765415 e!3846013)))

(assert (= (and b!6329895 ((_ is Cons!64881) (t!378587 s!2326))) b!6330764))

(declare-fun b!6330765 () Bool)

(declare-fun e!3846014 () Bool)

(declare-fun tp!1765533 () Bool)

(declare-fun tp!1765534 () Bool)

(assert (=> b!6330765 (= e!3846014 (and tp!1765533 tp!1765534))))

(assert (=> b!6329900 (= tp!1765412 e!3846014)))

(assert (= (and b!6329900 ((_ is Cons!64880) (exprs!6119 setElem!43072))) b!6330765))

(declare-fun b_lambda!240833 () Bool)

(assert (= b_lambda!240823 (or b!6329911 b_lambda!240833)))

(declare-fun bs!1583764 () Bool)

(declare-fun d!1986847 () Bool)

(assert (= bs!1583764 (and d!1986847 b!6329911)))

(assert (=> bs!1583764 (= (dynLambda!25701 lambda!347527 (h!71330 zl!343)) (derivationStepZipperUp!1409 (h!71330 zl!343) (h!71329 s!2326)))))

(assert (=> bs!1583764 m!7140566))

(assert (=> d!1986767 d!1986847))

(declare-fun b_lambda!240835 () Bool)

(assert (= b_lambda!240825 (or b!6329911 b_lambda!240835)))

(declare-fun bs!1583765 () Bool)

(declare-fun d!1986849 () Bool)

(assert (= bs!1583765 (and d!1986849 b!6329911)))

(assert (=> bs!1583765 (= (dynLambda!25701 lambda!347527 lt!2360715) (derivationStepZipperUp!1409 lt!2360715 (h!71329 s!2326)))))

(assert (=> bs!1583765 m!7140628))

(assert (=> d!1986777 d!1986849))

(check-sat (not b!6330724) (not b!6330233) (not b!6330629) (not b!6330229) (not b!6330755) (not b!6330339) (not bm!538861) (not b!6330725) (not b!6330398) (not b!6330723) (not b!6330765) (not b!6330239) (not d!1986675) (not b!6330067) (not b_lambda!240833) (not b!6330391) (not b!6330392) (not b!6330690) (not b!6330674) (not d!1986825) (not b!6330085) (not b!6330437) (not d!1986827) (not b!6330432) (not b!6329983) (not d!1986691) (not b!6330759) (not b!6330737) (not b!6330691) (not b!6330728) (not b!6330742) (not b!6330208) (not b!6330227) (not d!1986701) (not bm!538877) (not b!6330237) (not d!1986805) (not b!6330727) (not b!6330236) (not bm!538871) (not bs!1583765) (not b!6330731) (not b!6330729) (not b!6330438) (not b!6329945) (not b!6330066) (not bm!538851) (not b!6329940) (not d!1986821) (not b!6330675) (not b!6330625) (not b!6330736) (not bm!538850) (not d!1986779) (not b!6330667) (not b!6330758) (not b!6330069) (not bs!1583764) (not b!6330669) (not d!1986771) (not d!1986817) (not b!6330240) (not d!1986689) (not b!6330238) (not d!1986777) (not b!6330207) (not b!6330754) (not bm!538797) (not b!6330692) (not b!6330522) (not b!6330062) (not b!6330735) (not b!6330757) (not bm!538799) (not d!1986723) (not bm!538858) (not b!6330084) (not b!6330214) (not b!6330526) (not bm!538831) (not bm!538835) (not b!6330097) (not d!1986773) (not d!1986831) (not b!6330120) (not b!6330733) (not b!6330211) (not bm!538870) (not b!6330404) (not bm!538860) (not b!6330626) (not b_lambda!240835) (not b!6330435) (not b!6330699) (not d!1986845) (not b!6329942) (not b!6330096) (not b!6330708) (not d!1986711) (not b!6330212) (not b!6330635) (not d!1986725) (not b!6330632) (not b!6330071) (not d!1986767) (not d!1986823) (not bm!538833) tp_is_empty!41723 (not b!6329984) (not d!1986687) (not bm!538881) (not d!1986833) (not b!6330399) (not b!6330063) (not b!6329947) (not bm!538879) (not b!6330673) (not b!6330082) (not b!6330213) (not d!1986745) (not d!1986669) (not bm!538849) (not d!1986785) (not setNonEmpty!43078) (not b!6330710) (not b!6330234) (not b!6330064) (not b!6330403) (not b!6330624) (not b!6330764) (not b!6330210) (not d!1986681) (not b!6330434) (not b!6330671) (not b!6330747) (not b!6330162) (not d!1986837) (not d!1986829) (not b!6330732) (not d!1986835) (not bm!538883))
(check-sat)
