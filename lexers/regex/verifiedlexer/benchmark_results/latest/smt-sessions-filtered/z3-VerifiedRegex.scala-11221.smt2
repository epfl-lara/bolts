; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587252 () Bool)

(assert start!587252)

(declare-fun b!5695059 () Bool)

(assert (=> b!5695059 true))

(assert (=> b!5695059 true))

(declare-fun lambda!306930 () Int)

(declare-fun lambda!306929 () Int)

(assert (=> b!5695059 (not (= lambda!306930 lambda!306929))))

(assert (=> b!5695059 true))

(assert (=> b!5695059 true))

(declare-fun b!5695071 () Bool)

(assert (=> b!5695071 true))

(declare-fun bs!1327598 () Bool)

(declare-fun b!5695065 () Bool)

(assert (= bs!1327598 (and b!5695065 b!5695059)))

(declare-datatypes ((C!31648 0))(
  ( (C!31649 (val!25526 Int)) )
))
(declare-datatypes ((Regex!15689 0))(
  ( (ElementMatch!15689 (c!1002699 C!31648)) (Concat!24534 (regOne!31890 Regex!15689) (regTwo!31890 Regex!15689)) (EmptyExpr!15689) (Star!15689 (reg!16018 Regex!15689)) (EmptyLang!15689) (Union!15689 (regOne!31891 Regex!15689) (regTwo!31891 Regex!15689)) )
))
(declare-fun r!7292 () Regex!15689)

(declare-fun lt!2272312 () Regex!15689)

(declare-fun lambda!306932 () Int)

(assert (=> bs!1327598 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!306932 lambda!306929))))

(assert (=> bs!1327598 (not (= lambda!306932 lambda!306930))))

(assert (=> b!5695065 true))

(assert (=> b!5695065 true))

(assert (=> b!5695065 true))

(declare-fun lambda!306933 () Int)

(assert (=> bs!1327598 (not (= lambda!306933 lambda!306929))))

(assert (=> bs!1327598 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!306933 lambda!306930))))

(assert (=> b!5695065 (not (= lambda!306933 lambda!306932))))

(assert (=> b!5695065 true))

(assert (=> b!5695065 true))

(assert (=> b!5695065 true))

(declare-fun b!5695041 () Bool)

(declare-fun e!3503819 () Bool)

(declare-fun e!3503816 () Bool)

(assert (=> b!5695041 (= e!3503819 e!3503816)))

(declare-fun res!2405028 () Bool)

(assert (=> b!5695041 (=> res!2405028 e!3503816)))

(declare-fun lt!2272297 () Bool)

(assert (=> b!5695041 (= res!2405028 (not lt!2272297))))

(declare-fun e!3503817 () Bool)

(assert (=> b!5695041 e!3503817))

(declare-fun res!2405017 () Bool)

(assert (=> b!5695041 (=> (not res!2405017) (not e!3503817))))

(declare-fun lt!2272304 () Regex!15689)

(declare-datatypes ((List!63366 0))(
  ( (Nil!63242) (Cons!63242 (h!69690 C!31648) (t!376684 List!63366)) )
))
(declare-fun s!2326 () List!63366)

(declare-fun matchR!7874 (Regex!15689 List!63366) Bool)

(declare-fun matchRSpec!2792 (Regex!15689 List!63366) Bool)

(assert (=> b!5695041 (= res!2405017 (= (matchR!7874 lt!2272304 s!2326) (matchRSpec!2792 lt!2272304 s!2326)))))

(declare-datatypes ((Unit!156288 0))(
  ( (Unit!156289) )
))
(declare-fun lt!2272294 () Unit!156288)

(declare-fun mainMatchTheorem!2792 (Regex!15689 List!63366) Unit!156288)

(assert (=> b!5695041 (= lt!2272294 (mainMatchTheorem!2792 lt!2272304 s!2326))))

(declare-fun setIsEmpty!38127 () Bool)

(declare-fun setRes!38127 () Bool)

(assert (=> setIsEmpty!38127 setRes!38127))

(declare-fun b!5695042 () Bool)

(declare-fun res!2405012 () Bool)

(declare-fun e!3503834 () Bool)

(assert (=> b!5695042 (=> res!2405012 e!3503834)))

(declare-datatypes ((List!63367 0))(
  ( (Nil!63243) (Cons!63243 (h!69691 Regex!15689) (t!376685 List!63367)) )
))
(declare-datatypes ((Context!10146 0))(
  ( (Context!10147 (exprs!5573 List!63367)) )
))
(declare-datatypes ((List!63368 0))(
  ( (Nil!63244) (Cons!63244 (h!69692 Context!10146) (t!376686 List!63368)) )
))
(declare-fun zl!343 () List!63368)

(declare-fun generalisedUnion!1552 (List!63367) Regex!15689)

(declare-fun unfocusZipperList!1117 (List!63368) List!63367)

(assert (=> b!5695042 (= res!2405012 (not (= r!7292 (generalisedUnion!1552 (unfocusZipperList!1117 zl!343)))))))

(declare-fun b!5695043 () Bool)

(declare-fun res!2405015 () Bool)

(assert (=> b!5695043 (=> res!2405015 e!3503834)))

(get-info :version)

(assert (=> b!5695043 (= res!2405015 (not ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343)))))))

(declare-fun b!5695044 () Bool)

(declare-fun e!3503820 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2272292 () (InoxSet Context!10146))

(declare-fun matchZipper!1827 ((InoxSet Context!10146) List!63366) Bool)

(assert (=> b!5695044 (= e!3503820 (matchZipper!1827 lt!2272292 (t!376684 s!2326)))))

(declare-fun b!5695045 () Bool)

(declare-fun e!3503824 () Bool)

(declare-fun tp_is_empty!40631 () Bool)

(declare-fun tp!1579944 () Bool)

(assert (=> b!5695045 (= e!3503824 (and tp_is_empty!40631 tp!1579944))))

(declare-fun b!5695046 () Bool)

(declare-fun res!2405034 () Bool)

(assert (=> b!5695046 (=> res!2405034 e!3503834)))

(declare-fun isEmpty!35097 (List!63368) Bool)

(assert (=> b!5695046 (= res!2405034 (not (isEmpty!35097 (t!376686 zl!343))))))

(declare-fun b!5695047 () Bool)

(declare-fun res!2405016 () Bool)

(assert (=> b!5695047 (=> res!2405016 e!3503819)))

(declare-fun lt!2272315 () Context!10146)

(declare-fun lt!2272288 () Regex!15689)

(declare-fun unfocusZipper!1431 (List!63368) Regex!15689)

(assert (=> b!5695047 (= res!2405016 (not (= (unfocusZipper!1431 (Cons!63244 lt!2272315 Nil!63244)) lt!2272288)))))

(declare-fun b!5695048 () Bool)

(declare-fun e!3503829 () Bool)

(declare-fun e!3503823 () Bool)

(assert (=> b!5695048 (= e!3503829 e!3503823)))

(declare-fun res!2405027 () Bool)

(assert (=> b!5695048 (=> res!2405027 e!3503823)))

(assert (=> b!5695048 (= res!2405027 (not (= r!7292 lt!2272288)))))

(assert (=> b!5695048 (= lt!2272288 (Concat!24534 lt!2272312 (regTwo!31890 r!7292)))))

(declare-fun b!5695049 () Bool)

(declare-fun e!3503814 () Bool)

(declare-fun nullable!5721 (Regex!15689) Bool)

(assert (=> b!5695049 (= e!3503814 (nullable!5721 (regOne!31890 (regOne!31890 r!7292))))))

(declare-fun b!5695050 () Bool)

(declare-fun e!3503825 () Bool)

(assert (=> b!5695050 (= e!3503825 e!3503829)))

(declare-fun res!2405033 () Bool)

(assert (=> b!5695050 (=> res!2405033 e!3503829)))

(declare-fun lt!2272308 () (InoxSet Context!10146))

(declare-fun lt!2272316 () (InoxSet Context!10146))

(assert (=> b!5695050 (= res!2405033 (not (= lt!2272308 lt!2272316)))))

(declare-fun lt!2272305 () Context!10146)

(declare-fun lambda!306931 () Int)

(declare-fun lt!2272310 () (InoxSet Context!10146))

(declare-fun flatMap!1302 ((InoxSet Context!10146) Int) (InoxSet Context!10146))

(declare-fun derivationStepZipperUp!957 (Context!10146 C!31648) (InoxSet Context!10146))

(assert (=> b!5695050 (= (flatMap!1302 lt!2272310 lambda!306931) (derivationStepZipperUp!957 lt!2272305 (h!69690 s!2326)))))

(declare-fun lt!2272317 () Unit!156288)

(declare-fun lemmaFlatMapOnSingletonSet!834 ((InoxSet Context!10146) Context!10146 Int) Unit!156288)

(assert (=> b!5695050 (= lt!2272317 (lemmaFlatMapOnSingletonSet!834 lt!2272310 lt!2272305 lambda!306931))))

(declare-fun lt!2272306 () (InoxSet Context!10146))

(assert (=> b!5695050 (= lt!2272306 (derivationStepZipperUp!957 lt!2272305 (h!69690 s!2326)))))

(declare-fun derivationStepZipper!1772 ((InoxSet Context!10146) C!31648) (InoxSet Context!10146))

(assert (=> b!5695050 (= lt!2272308 (derivationStepZipper!1772 lt!2272310 (h!69690 s!2326)))))

(assert (=> b!5695050 (= lt!2272310 (store ((as const (Array Context!10146 Bool)) false) lt!2272305 true))))

(declare-fun lt!2272290 () List!63367)

(assert (=> b!5695050 (= lt!2272305 (Context!10147 (Cons!63243 (reg!16018 (regOne!31890 r!7292)) lt!2272290)))))

(declare-fun b!5695052 () Bool)

(declare-fun e!3503831 () Bool)

(assert (=> b!5695052 (= e!3503823 e!3503831)))

(declare-fun res!2405025 () Bool)

(assert (=> b!5695052 (=> res!2405025 e!3503831)))

(assert (=> b!5695052 (= res!2405025 (not (= (unfocusZipper!1431 (Cons!63244 lt!2272305 Nil!63244)) lt!2272304)))))

(assert (=> b!5695052 (= lt!2272304 (Concat!24534 (reg!16018 (regOne!31890 r!7292)) lt!2272288))))

(declare-fun b!5695053 () Bool)

(declare-fun e!3503827 () Unit!156288)

(declare-fun Unit!156290 () Unit!156288)

(assert (=> b!5695053 (= e!3503827 Unit!156290)))

(declare-fun tp!1579949 () Bool)

(declare-fun b!5695054 () Bool)

(declare-fun e!3503828 () Bool)

(declare-fun e!3503818 () Bool)

(declare-fun inv!82469 (Context!10146) Bool)

(assert (=> b!5695054 (= e!3503828 (and (inv!82469 (h!69692 zl!343)) e!3503818 tp!1579949))))

(declare-fun b!5695055 () Bool)

(declare-fun e!3503830 () Bool)

(assert (=> b!5695055 (= e!3503830 (not e!3503834))))

(declare-fun res!2405019 () Bool)

(assert (=> b!5695055 (=> res!2405019 e!3503834)))

(assert (=> b!5695055 (= res!2405019 (not ((_ is Cons!63244) zl!343)))))

(declare-fun lt!2272299 () Bool)

(assert (=> b!5695055 (= lt!2272297 lt!2272299)))

(assert (=> b!5695055 (= lt!2272299 (matchRSpec!2792 r!7292 s!2326))))

(assert (=> b!5695055 (= lt!2272297 (matchR!7874 r!7292 s!2326))))

(declare-fun lt!2272284 () Unit!156288)

(assert (=> b!5695055 (= lt!2272284 (mainMatchTheorem!2792 r!7292 s!2326))))

(declare-fun b!5695056 () Bool)

(declare-fun res!2405035 () Bool)

(declare-fun e!3503826 () Bool)

(assert (=> b!5695056 (=> (not res!2405035) (not e!3503826))))

(declare-fun z!1189 () (InoxSet Context!10146))

(declare-fun toList!9473 ((InoxSet Context!10146)) List!63368)

(assert (=> b!5695056 (= res!2405035 (= (toList!9473 z!1189) zl!343))))

(declare-fun b!5695057 () Bool)

(declare-fun e!3503833 () Bool)

(declare-fun tp!1579945 () Bool)

(assert (=> b!5695057 (= e!3503833 tp!1579945)))

(declare-fun b!5695058 () Bool)

(declare-fun e!3503821 () Bool)

(declare-fun tp!1579950 () Bool)

(assert (=> b!5695058 (= e!3503821 tp!1579950)))

(declare-fun e!3503822 () Bool)

(assert (=> b!5695059 (= e!3503834 e!3503822)))

(declare-fun res!2405036 () Bool)

(assert (=> b!5695059 (=> res!2405036 e!3503822)))

(declare-fun lt!2272295 () Bool)

(assert (=> b!5695059 (= res!2405036 (or (not (= lt!2272297 lt!2272295)) ((_ is Nil!63242) s!2326)))))

(declare-fun Exists!2789 (Int) Bool)

(assert (=> b!5695059 (= (Exists!2789 lambda!306929) (Exists!2789 lambda!306930))))

(declare-fun lt!2272311 () Unit!156288)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1418 (Regex!15689 Regex!15689 List!63366) Unit!156288)

(assert (=> b!5695059 (= lt!2272311 (lemmaExistCutMatchRandMatchRSpecEquivalent!1418 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326))))

(assert (=> b!5695059 (= lt!2272295 (Exists!2789 lambda!306929))))

(declare-datatypes ((tuple2!65572 0))(
  ( (tuple2!65573 (_1!36089 List!63366) (_2!36089 List!63366)) )
))
(declare-datatypes ((Option!15698 0))(
  ( (None!15697) (Some!15697 (v!51750 tuple2!65572)) )
))
(declare-fun isDefined!12401 (Option!15698) Bool)

(declare-fun findConcatSeparation!2112 (Regex!15689 Regex!15689 List!63366 List!63366 List!63366) Option!15698)

(assert (=> b!5695059 (= lt!2272295 (isDefined!12401 (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326)))))

(declare-fun lt!2272291 () Unit!156288)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1876 (Regex!15689 Regex!15689 List!63366) Unit!156288)

(assert (=> b!5695059 (= lt!2272291 (lemmaFindConcatSeparationEquivalentToExists!1876 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326))))

(declare-fun b!5695060 () Bool)

(declare-fun e!3503832 () Bool)

(declare-fun lt!2272314 () tuple2!65572)

(assert (=> b!5695060 (= e!3503832 (matchR!7874 lt!2272312 (_1!36089 lt!2272314)))))

(declare-fun b!5695061 () Bool)

(declare-fun res!2405030 () Bool)

(declare-fun e!3503815 () Bool)

(assert (=> b!5695061 (=> res!2405030 e!3503815)))

(assert (=> b!5695061 (= res!2405030 e!3503814)))

(declare-fun res!2405021 () Bool)

(assert (=> b!5695061 (=> (not res!2405021) (not e!3503814))))

(assert (=> b!5695061 (= res!2405021 ((_ is Concat!24534) (regOne!31890 r!7292)))))

(declare-fun b!5695062 () Bool)

(declare-fun res!2405032 () Bool)

(assert (=> b!5695062 (=> res!2405032 e!3503834)))

(assert (=> b!5695062 (= res!2405032 (or ((_ is EmptyExpr!15689) r!7292) ((_ is EmptyLang!15689) r!7292) ((_ is ElementMatch!15689) r!7292) ((_ is Union!15689) r!7292) (not ((_ is Concat!24534) r!7292))))))

(declare-fun b!5695063 () Bool)

(assert (=> b!5695063 (= e!3503831 e!3503819)))

(declare-fun res!2405013 () Bool)

(assert (=> b!5695063 (=> res!2405013 e!3503819)))

(declare-fun lt!2272287 () Context!10146)

(assert (=> b!5695063 (= res!2405013 (not (= (unfocusZipper!1431 (Cons!63244 lt!2272287 Nil!63244)) (reg!16018 (regOne!31890 r!7292)))))))

(declare-fun lt!2272289 () (InoxSet Context!10146))

(assert (=> b!5695063 (= (flatMap!1302 lt!2272289 lambda!306931) (derivationStepZipperUp!957 lt!2272315 (h!69690 s!2326)))))

(declare-fun lt!2272286 () Unit!156288)

(assert (=> b!5695063 (= lt!2272286 (lemmaFlatMapOnSingletonSet!834 lt!2272289 lt!2272315 lambda!306931))))

(declare-fun lt!2272302 () (InoxSet Context!10146))

(assert (=> b!5695063 (= (flatMap!1302 lt!2272302 lambda!306931) (derivationStepZipperUp!957 lt!2272287 (h!69690 s!2326)))))

(declare-fun lt!2272309 () Unit!156288)

(assert (=> b!5695063 (= lt!2272309 (lemmaFlatMapOnSingletonSet!834 lt!2272302 lt!2272287 lambda!306931))))

(declare-fun lt!2272285 () (InoxSet Context!10146))

(assert (=> b!5695063 (= lt!2272285 (derivationStepZipperUp!957 lt!2272315 (h!69690 s!2326)))))

(declare-fun lt!2272318 () (InoxSet Context!10146))

(assert (=> b!5695063 (= lt!2272318 (derivationStepZipperUp!957 lt!2272287 (h!69690 s!2326)))))

(assert (=> b!5695063 (= lt!2272289 (store ((as const (Array Context!10146 Bool)) false) lt!2272315 true))))

(assert (=> b!5695063 (= lt!2272302 (store ((as const (Array Context!10146 Bool)) false) lt!2272287 true))))

(assert (=> b!5695063 (= lt!2272287 (Context!10147 (Cons!63243 (reg!16018 (regOne!31890 r!7292)) Nil!63243)))))

(declare-fun b!5695064 () Bool)

(declare-fun Unit!156291 () Unit!156288)

(assert (=> b!5695064 (= e!3503827 Unit!156291)))

(declare-fun lt!2272303 () (InoxSet Context!10146))

(declare-fun lt!2272307 () Unit!156288)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!714 ((InoxSet Context!10146) (InoxSet Context!10146) List!63366) Unit!156288)

(assert (=> b!5695064 (= lt!2272307 (lemmaZipperConcatMatchesSameAsBothZippers!714 lt!2272303 lt!2272292 (t!376684 s!2326)))))

(declare-fun res!2405011 () Bool)

(assert (=> b!5695064 (= res!2405011 (matchZipper!1827 lt!2272303 (t!376684 s!2326)))))

(assert (=> b!5695064 (=> res!2405011 e!3503820)))

(assert (=> b!5695064 (= (matchZipper!1827 ((_ map or) lt!2272303 lt!2272292) (t!376684 s!2326)) e!3503820)))

(assert (=> b!5695065 (= e!3503816 e!3503832)))

(declare-fun res!2405022 () Bool)

(assert (=> b!5695065 (=> res!2405022 e!3503832)))

(declare-fun ++!13881 (List!63366 List!63366) List!63366)

(assert (=> b!5695065 (= res!2405022 (not (= (++!13881 (_1!36089 lt!2272314) (_2!36089 lt!2272314)) s!2326)))))

(declare-fun lt!2272282 () Option!15698)

(declare-fun get!21793 (Option!15698) tuple2!65572)

(assert (=> b!5695065 (= lt!2272314 (get!21793 lt!2272282))))

(assert (=> b!5695065 (= (Exists!2789 lambda!306932) (Exists!2789 lambda!306933))))

(declare-fun lt!2272296 () Unit!156288)

(assert (=> b!5695065 (= lt!2272296 (lemmaExistCutMatchRandMatchRSpecEquivalent!1418 lt!2272312 (regTwo!31890 r!7292) s!2326))))

(assert (=> b!5695065 (= (isDefined!12401 lt!2272282) (Exists!2789 lambda!306932))))

(assert (=> b!5695065 (= lt!2272282 (findConcatSeparation!2112 lt!2272312 (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326))))

(declare-fun lt!2272300 () Unit!156288)

(assert (=> b!5695065 (= lt!2272300 (lemmaFindConcatSeparationEquivalentToExists!1876 lt!2272312 (regTwo!31890 r!7292) s!2326))))

(declare-fun b!5695066 () Bool)

(assert (=> b!5695066 (= e!3503826 e!3503830)))

(declare-fun res!2405020 () Bool)

(assert (=> b!5695066 (=> (not res!2405020) (not e!3503830))))

(declare-fun lt!2272313 () Regex!15689)

(assert (=> b!5695066 (= res!2405020 (= r!7292 lt!2272313))))

(assert (=> b!5695066 (= lt!2272313 (unfocusZipper!1431 zl!343))))

(declare-fun b!5695067 () Bool)

(assert (=> b!5695067 (= e!3503815 e!3503825)))

(declare-fun res!2405029 () Bool)

(assert (=> b!5695067 (=> res!2405029 e!3503825)))

(assert (=> b!5695067 (= res!2405029 (not (= lt!2272303 lt!2272316)))))

(declare-fun derivationStepZipperDown!1031 (Regex!15689 Context!10146 C!31648) (InoxSet Context!10146))

(assert (=> b!5695067 (= lt!2272316 (derivationStepZipperDown!1031 (reg!16018 (regOne!31890 r!7292)) lt!2272315 (h!69690 s!2326)))))

(assert (=> b!5695067 (= lt!2272315 (Context!10147 lt!2272290))))

(assert (=> b!5695067 (= lt!2272290 (Cons!63243 lt!2272312 (t!376685 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> b!5695067 (= lt!2272312 (Star!15689 (reg!16018 (regOne!31890 r!7292))))))

(declare-fun b!5695068 () Bool)

(declare-fun res!2405026 () Bool)

(assert (=> b!5695068 (=> res!2405026 e!3503829)))

(assert (=> b!5695068 (= res!2405026 (not (= lt!2272313 r!7292)))))

(declare-fun tp!1579942 () Bool)

(declare-fun setNonEmpty!38127 () Bool)

(declare-fun setElem!38127 () Context!10146)

(assert (=> setNonEmpty!38127 (= setRes!38127 (and tp!1579942 (inv!82469 setElem!38127) e!3503821))))

(declare-fun setRest!38127 () (InoxSet Context!10146))

(assert (=> setNonEmpty!38127 (= z!1189 ((_ map or) (store ((as const (Array Context!10146 Bool)) false) setElem!38127 true) setRest!38127))))

(declare-fun b!5695069 () Bool)

(declare-fun tp!1579943 () Bool)

(assert (=> b!5695069 (= e!3503818 tp!1579943)))

(declare-fun b!5695070 () Bool)

(declare-fun res!2405023 () Bool)

(assert (=> b!5695070 (=> res!2405023 e!3503815)))

(assert (=> b!5695070 (= res!2405023 (or ((_ is Concat!24534) (regOne!31890 r!7292)) (not ((_ is Star!15689) (regOne!31890 r!7292)))))))

(assert (=> b!5695071 (= e!3503822 e!3503815)))

(declare-fun res!2405014 () Bool)

(assert (=> b!5695071 (=> res!2405014 e!3503815)))

(assert (=> b!5695071 (= res!2405014 (or (and ((_ is ElementMatch!15689) (regOne!31890 r!7292)) (= (c!1002699 (regOne!31890 r!7292)) (h!69690 s!2326))) ((_ is Union!15689) (regOne!31890 r!7292))))))

(declare-fun lt!2272298 () Unit!156288)

(assert (=> b!5695071 (= lt!2272298 e!3503827)))

(declare-fun c!1002698 () Bool)

(assert (=> b!5695071 (= c!1002698 (nullable!5721 (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> b!5695071 (= (flatMap!1302 z!1189 lambda!306931) (derivationStepZipperUp!957 (h!69692 zl!343) (h!69690 s!2326)))))

(declare-fun lt!2272293 () Unit!156288)

(assert (=> b!5695071 (= lt!2272293 (lemmaFlatMapOnSingletonSet!834 z!1189 (h!69692 zl!343) lambda!306931))))

(declare-fun lt!2272283 () Context!10146)

(assert (=> b!5695071 (= lt!2272292 (derivationStepZipperUp!957 lt!2272283 (h!69690 s!2326)))))

(assert (=> b!5695071 (= lt!2272303 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 (h!69692 zl!343))) lt!2272283 (h!69690 s!2326)))))

(assert (=> b!5695071 (= lt!2272283 (Context!10147 (t!376685 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun lt!2272301 () (InoxSet Context!10146))

(assert (=> b!5695071 (= lt!2272301 (derivationStepZipperUp!957 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343))))) (h!69690 s!2326)))))

(declare-fun b!5695072 () Bool)

(declare-fun tp!1579946 () Bool)

(declare-fun tp!1579941 () Bool)

(assert (=> b!5695072 (= e!3503833 (and tp!1579946 tp!1579941))))

(declare-fun b!5695073 () Bool)

(declare-fun tp!1579948 () Bool)

(declare-fun tp!1579947 () Bool)

(assert (=> b!5695073 (= e!3503833 (and tp!1579948 tp!1579947))))

(declare-fun b!5695074 () Bool)

(declare-fun res!2405031 () Bool)

(assert (=> b!5695074 (=> res!2405031 e!3503834)))

(declare-fun generalisedConcat!1304 (List!63367) Regex!15689)

(assert (=> b!5695074 (= res!2405031 (not (= r!7292 (generalisedConcat!1304 (exprs!5573 (h!69692 zl!343))))))))

(declare-fun b!5695075 () Bool)

(declare-fun res!2405018 () Bool)

(assert (=> b!5695075 (=> res!2405018 e!3503829)))

(assert (=> b!5695075 (= res!2405018 (not (= (matchZipper!1827 lt!2272310 s!2326) (matchZipper!1827 lt!2272308 (t!376684 s!2326)))))))

(declare-fun b!5695051 () Bool)

(assert (=> b!5695051 (= e!3503833 tp_is_empty!40631)))

(declare-fun res!2405037 () Bool)

(assert (=> start!587252 (=> (not res!2405037) (not e!3503826))))

(declare-fun validRegex!7425 (Regex!15689) Bool)

(assert (=> start!587252 (= res!2405037 (validRegex!7425 r!7292))))

(assert (=> start!587252 e!3503826))

(assert (=> start!587252 e!3503833))

(declare-fun condSetEmpty!38127 () Bool)

(assert (=> start!587252 (= condSetEmpty!38127 (= z!1189 ((as const (Array Context!10146 Bool)) false)))))

(assert (=> start!587252 setRes!38127))

(assert (=> start!587252 e!3503828))

(assert (=> start!587252 e!3503824))

(declare-fun b!5695076 () Bool)

(declare-fun res!2405024 () Bool)

(assert (=> b!5695076 (=> res!2405024 e!3503822)))

(declare-fun isEmpty!35098 (List!63367) Bool)

(assert (=> b!5695076 (= res!2405024 (isEmpty!35098 (t!376685 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun b!5695077 () Bool)

(assert (=> b!5695077 (= e!3503817 (or (not lt!2272297) lt!2272299))))

(assert (= (and start!587252 res!2405037) b!5695056))

(assert (= (and b!5695056 res!2405035) b!5695066))

(assert (= (and b!5695066 res!2405020) b!5695055))

(assert (= (and b!5695055 (not res!2405019)) b!5695046))

(assert (= (and b!5695046 (not res!2405034)) b!5695074))

(assert (= (and b!5695074 (not res!2405031)) b!5695043))

(assert (= (and b!5695043 (not res!2405015)) b!5695042))

(assert (= (and b!5695042 (not res!2405012)) b!5695062))

(assert (= (and b!5695062 (not res!2405032)) b!5695059))

(assert (= (and b!5695059 (not res!2405036)) b!5695076))

(assert (= (and b!5695076 (not res!2405024)) b!5695071))

(assert (= (and b!5695071 c!1002698) b!5695064))

(assert (= (and b!5695071 (not c!1002698)) b!5695053))

(assert (= (and b!5695064 (not res!2405011)) b!5695044))

(assert (= (and b!5695071 (not res!2405014)) b!5695061))

(assert (= (and b!5695061 res!2405021) b!5695049))

(assert (= (and b!5695061 (not res!2405030)) b!5695070))

(assert (= (and b!5695070 (not res!2405023)) b!5695067))

(assert (= (and b!5695067 (not res!2405029)) b!5695050))

(assert (= (and b!5695050 (not res!2405033)) b!5695075))

(assert (= (and b!5695075 (not res!2405018)) b!5695068))

(assert (= (and b!5695068 (not res!2405026)) b!5695048))

(assert (= (and b!5695048 (not res!2405027)) b!5695052))

(assert (= (and b!5695052 (not res!2405025)) b!5695063))

(assert (= (and b!5695063 (not res!2405013)) b!5695047))

(assert (= (and b!5695047 (not res!2405016)) b!5695041))

(assert (= (and b!5695041 res!2405017) b!5695077))

(assert (= (and b!5695041 (not res!2405028)) b!5695065))

(assert (= (and b!5695065 (not res!2405022)) b!5695060))

(assert (= (and start!587252 ((_ is ElementMatch!15689) r!7292)) b!5695051))

(assert (= (and start!587252 ((_ is Concat!24534) r!7292)) b!5695072))

(assert (= (and start!587252 ((_ is Star!15689) r!7292)) b!5695057))

(assert (= (and start!587252 ((_ is Union!15689) r!7292)) b!5695073))

(assert (= (and start!587252 condSetEmpty!38127) setIsEmpty!38127))

(assert (= (and start!587252 (not condSetEmpty!38127)) setNonEmpty!38127))

(assert (= setNonEmpty!38127 b!5695058))

(assert (= b!5695054 b!5695069))

(assert (= (and start!587252 ((_ is Cons!63244) zl!343)) b!5695054))

(assert (= (and start!587252 ((_ is Cons!63242) s!2326)) b!5695045))

(declare-fun m!6651218 () Bool)

(assert (=> b!5695059 m!6651218))

(declare-fun m!6651220 () Bool)

(assert (=> b!5695059 m!6651220))

(declare-fun m!6651222 () Bool)

(assert (=> b!5695059 m!6651222))

(declare-fun m!6651224 () Bool)

(assert (=> b!5695059 m!6651224))

(assert (=> b!5695059 m!6651218))

(declare-fun m!6651226 () Bool)

(assert (=> b!5695059 m!6651226))

(assert (=> b!5695059 m!6651220))

(declare-fun m!6651228 () Bool)

(assert (=> b!5695059 m!6651228))

(declare-fun m!6651230 () Bool)

(assert (=> b!5695042 m!6651230))

(assert (=> b!5695042 m!6651230))

(declare-fun m!6651232 () Bool)

(assert (=> b!5695042 m!6651232))

(declare-fun m!6651234 () Bool)

(assert (=> b!5695055 m!6651234))

(declare-fun m!6651236 () Bool)

(assert (=> b!5695055 m!6651236))

(declare-fun m!6651238 () Bool)

(assert (=> b!5695055 m!6651238))

(declare-fun m!6651240 () Bool)

(assert (=> b!5695054 m!6651240))

(declare-fun m!6651242 () Bool)

(assert (=> b!5695046 m!6651242))

(declare-fun m!6651244 () Bool)

(assert (=> b!5695041 m!6651244))

(declare-fun m!6651246 () Bool)

(assert (=> b!5695041 m!6651246))

(declare-fun m!6651248 () Bool)

(assert (=> b!5695041 m!6651248))

(declare-fun m!6651250 () Bool)

(assert (=> b!5695060 m!6651250))

(declare-fun m!6651252 () Bool)

(assert (=> b!5695067 m!6651252))

(declare-fun m!6651254 () Bool)

(assert (=> b!5695076 m!6651254))

(declare-fun m!6651256 () Bool)

(assert (=> start!587252 m!6651256))

(declare-fun m!6651258 () Bool)

(assert (=> b!5695075 m!6651258))

(declare-fun m!6651260 () Bool)

(assert (=> b!5695075 m!6651260))

(declare-fun m!6651262 () Bool)

(assert (=> b!5695074 m!6651262))

(declare-fun m!6651264 () Bool)

(assert (=> b!5695047 m!6651264))

(declare-fun m!6651266 () Bool)

(assert (=> b!5695063 m!6651266))

(declare-fun m!6651268 () Bool)

(assert (=> b!5695063 m!6651268))

(declare-fun m!6651270 () Bool)

(assert (=> b!5695063 m!6651270))

(declare-fun m!6651272 () Bool)

(assert (=> b!5695063 m!6651272))

(declare-fun m!6651274 () Bool)

(assert (=> b!5695063 m!6651274))

(declare-fun m!6651276 () Bool)

(assert (=> b!5695063 m!6651276))

(declare-fun m!6651278 () Bool)

(assert (=> b!5695063 m!6651278))

(declare-fun m!6651280 () Bool)

(assert (=> b!5695063 m!6651280))

(declare-fun m!6651282 () Bool)

(assert (=> b!5695063 m!6651282))

(declare-fun m!6651284 () Bool)

(assert (=> b!5695056 m!6651284))

(declare-fun m!6651286 () Bool)

(assert (=> b!5695049 m!6651286))

(declare-fun m!6651288 () Bool)

(assert (=> b!5695065 m!6651288))

(declare-fun m!6651290 () Bool)

(assert (=> b!5695065 m!6651290))

(declare-fun m!6651292 () Bool)

(assert (=> b!5695065 m!6651292))

(declare-fun m!6651294 () Bool)

(assert (=> b!5695065 m!6651294))

(declare-fun m!6651296 () Bool)

(assert (=> b!5695065 m!6651296))

(declare-fun m!6651298 () Bool)

(assert (=> b!5695065 m!6651298))

(declare-fun m!6651300 () Bool)

(assert (=> b!5695065 m!6651300))

(assert (=> b!5695065 m!6651294))

(declare-fun m!6651302 () Bool)

(assert (=> b!5695065 m!6651302))

(declare-fun m!6651304 () Bool)

(assert (=> b!5695064 m!6651304))

(declare-fun m!6651306 () Bool)

(assert (=> b!5695064 m!6651306))

(declare-fun m!6651308 () Bool)

(assert (=> b!5695064 m!6651308))

(declare-fun m!6651310 () Bool)

(assert (=> b!5695071 m!6651310))

(declare-fun m!6651312 () Bool)

(assert (=> b!5695071 m!6651312))

(declare-fun m!6651314 () Bool)

(assert (=> b!5695071 m!6651314))

(declare-fun m!6651316 () Bool)

(assert (=> b!5695071 m!6651316))

(declare-fun m!6651318 () Bool)

(assert (=> b!5695071 m!6651318))

(declare-fun m!6651320 () Bool)

(assert (=> b!5695071 m!6651320))

(declare-fun m!6651322 () Bool)

(assert (=> b!5695071 m!6651322))

(declare-fun m!6651324 () Bool)

(assert (=> b!5695050 m!6651324))

(declare-fun m!6651326 () Bool)

(assert (=> b!5695050 m!6651326))

(declare-fun m!6651328 () Bool)

(assert (=> b!5695050 m!6651328))

(declare-fun m!6651330 () Bool)

(assert (=> b!5695050 m!6651330))

(declare-fun m!6651332 () Bool)

(assert (=> b!5695050 m!6651332))

(declare-fun m!6651334 () Bool)

(assert (=> b!5695044 m!6651334))

(declare-fun m!6651336 () Bool)

(assert (=> b!5695066 m!6651336))

(declare-fun m!6651338 () Bool)

(assert (=> b!5695052 m!6651338))

(declare-fun m!6651340 () Bool)

(assert (=> setNonEmpty!38127 m!6651340))

(check-sat (not b!5695044) (not b!5695054) (not b!5695075) (not start!587252) (not setNonEmpty!38127) (not b!5695050) (not b!5695073) (not b!5695046) (not b!5695049) (not b!5695063) (not b!5695052) (not b!5695076) (not b!5695047) (not b!5695069) (not b!5695065) (not b!5695042) (not b!5695067) (not b!5695055) (not b!5695041) (not b!5695057) (not b!5695071) (not b!5695074) (not b!5695064) (not b!5695072) (not b!5695059) (not b!5695056) (not b!5695066) (not b!5695045) tp_is_empty!40631 (not b!5695058) (not b!5695060))
(check-sat)
(get-model)

(declare-fun d!1797162 () Bool)

(declare-fun choose!43057 ((InoxSet Context!10146) Int) (InoxSet Context!10146))

(assert (=> d!1797162 (= (flatMap!1302 lt!2272289 lambda!306931) (choose!43057 lt!2272289 lambda!306931))))

(declare-fun bs!1327599 () Bool)

(assert (= bs!1327599 d!1797162))

(declare-fun m!6651360 () Bool)

(assert (=> bs!1327599 m!6651360))

(assert (=> b!5695063 d!1797162))

(declare-fun d!1797164 () Bool)

(assert (=> d!1797164 (= (flatMap!1302 lt!2272302 lambda!306931) (choose!43057 lt!2272302 lambda!306931))))

(declare-fun bs!1327600 () Bool)

(assert (= bs!1327600 d!1797164))

(declare-fun m!6651362 () Bool)

(assert (=> bs!1327600 m!6651362))

(assert (=> b!5695063 d!1797164))

(declare-fun bm!433414 () Bool)

(declare-fun call!433419 () (InoxSet Context!10146))

(assert (=> bm!433414 (= call!433419 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 lt!2272315)) (Context!10147 (t!376685 (exprs!5573 lt!2272315))) (h!69690 s!2326)))))

(declare-fun b!5695130 () Bool)

(declare-fun e!3503864 () (InoxSet Context!10146))

(assert (=> b!5695130 (= e!3503864 ((as const (Array Context!10146 Bool)) false))))

(declare-fun b!5695131 () Bool)

(declare-fun e!3503862 () (InoxSet Context!10146))

(assert (=> b!5695131 (= e!3503862 ((_ map or) call!433419 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 lt!2272315))) (h!69690 s!2326))))))

(declare-fun b!5695132 () Bool)

(assert (=> b!5695132 (= e!3503864 call!433419)))

(declare-fun b!5695133 () Bool)

(assert (=> b!5695133 (= e!3503862 e!3503864)))

(declare-fun c!1002720 () Bool)

(assert (=> b!5695133 (= c!1002720 ((_ is Cons!63243) (exprs!5573 lt!2272315)))))

(declare-fun d!1797166 () Bool)

(declare-fun c!1002719 () Bool)

(declare-fun e!3503863 () Bool)

(assert (=> d!1797166 (= c!1002719 e!3503863)))

(declare-fun res!2405046 () Bool)

(assert (=> d!1797166 (=> (not res!2405046) (not e!3503863))))

(assert (=> d!1797166 (= res!2405046 ((_ is Cons!63243) (exprs!5573 lt!2272315)))))

(assert (=> d!1797166 (= (derivationStepZipperUp!957 lt!2272315 (h!69690 s!2326)) e!3503862)))

(declare-fun b!5695134 () Bool)

(assert (=> b!5695134 (= e!3503863 (nullable!5721 (h!69691 (exprs!5573 lt!2272315))))))

(assert (= (and d!1797166 res!2405046) b!5695134))

(assert (= (and d!1797166 c!1002719) b!5695131))

(assert (= (and d!1797166 (not c!1002719)) b!5695133))

(assert (= (and b!5695133 c!1002720) b!5695132))

(assert (= (and b!5695133 (not c!1002720)) b!5695130))

(assert (= (or b!5695131 b!5695132) bm!433414))

(declare-fun m!6651376 () Bool)

(assert (=> bm!433414 m!6651376))

(declare-fun m!6651378 () Bool)

(assert (=> b!5695131 m!6651378))

(declare-fun m!6651380 () Bool)

(assert (=> b!5695134 m!6651380))

(assert (=> b!5695063 d!1797166))

(declare-fun d!1797170 () Bool)

(declare-fun lt!2272330 () Regex!15689)

(assert (=> d!1797170 (validRegex!7425 lt!2272330)))

(assert (=> d!1797170 (= lt!2272330 (generalisedUnion!1552 (unfocusZipperList!1117 (Cons!63244 lt!2272287 Nil!63244))))))

(assert (=> d!1797170 (= (unfocusZipper!1431 (Cons!63244 lt!2272287 Nil!63244)) lt!2272330)))

(declare-fun bs!1327601 () Bool)

(assert (= bs!1327601 d!1797170))

(declare-fun m!6651382 () Bool)

(assert (=> bs!1327601 m!6651382))

(declare-fun m!6651384 () Bool)

(assert (=> bs!1327601 m!6651384))

(assert (=> bs!1327601 m!6651384))

(declare-fun m!6651386 () Bool)

(assert (=> bs!1327601 m!6651386))

(assert (=> b!5695063 d!1797170))

(declare-fun d!1797172 () Bool)

(declare-fun dynLambda!24745 (Int Context!10146) (InoxSet Context!10146))

(assert (=> d!1797172 (= (flatMap!1302 lt!2272302 lambda!306931) (dynLambda!24745 lambda!306931 lt!2272287))))

(declare-fun lt!2272336 () Unit!156288)

(declare-fun choose!43058 ((InoxSet Context!10146) Context!10146 Int) Unit!156288)

(assert (=> d!1797172 (= lt!2272336 (choose!43058 lt!2272302 lt!2272287 lambda!306931))))

(assert (=> d!1797172 (= lt!2272302 (store ((as const (Array Context!10146 Bool)) false) lt!2272287 true))))

(assert (=> d!1797172 (= (lemmaFlatMapOnSingletonSet!834 lt!2272302 lt!2272287 lambda!306931) lt!2272336)))

(declare-fun b_lambda!215287 () Bool)

(assert (=> (not b_lambda!215287) (not d!1797172)))

(declare-fun bs!1327604 () Bool)

(assert (= bs!1327604 d!1797172))

(assert (=> bs!1327604 m!6651274))

(declare-fun m!6651416 () Bool)

(assert (=> bs!1327604 m!6651416))

(declare-fun m!6651418 () Bool)

(assert (=> bs!1327604 m!6651418))

(assert (=> bs!1327604 m!6651278))

(assert (=> b!5695063 d!1797172))

(declare-fun bm!433415 () Bool)

(declare-fun call!433420 () (InoxSet Context!10146))

(assert (=> bm!433415 (= call!433420 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 lt!2272287)) (Context!10147 (t!376685 (exprs!5573 lt!2272287))) (h!69690 s!2326)))))

(declare-fun b!5695162 () Bool)

(declare-fun e!3503882 () (InoxSet Context!10146))

(assert (=> b!5695162 (= e!3503882 ((as const (Array Context!10146 Bool)) false))))

(declare-fun b!5695163 () Bool)

(declare-fun e!3503880 () (InoxSet Context!10146))

(assert (=> b!5695163 (= e!3503880 ((_ map or) call!433420 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 lt!2272287))) (h!69690 s!2326))))))

(declare-fun b!5695164 () Bool)

(assert (=> b!5695164 (= e!3503882 call!433420)))

(declare-fun b!5695165 () Bool)

(assert (=> b!5695165 (= e!3503880 e!3503882)))

(declare-fun c!1002728 () Bool)

(assert (=> b!5695165 (= c!1002728 ((_ is Cons!63243) (exprs!5573 lt!2272287)))))

(declare-fun d!1797180 () Bool)

(declare-fun c!1002727 () Bool)

(declare-fun e!3503881 () Bool)

(assert (=> d!1797180 (= c!1002727 e!3503881)))

(declare-fun res!2405062 () Bool)

(assert (=> d!1797180 (=> (not res!2405062) (not e!3503881))))

(assert (=> d!1797180 (= res!2405062 ((_ is Cons!63243) (exprs!5573 lt!2272287)))))

(assert (=> d!1797180 (= (derivationStepZipperUp!957 lt!2272287 (h!69690 s!2326)) e!3503880)))

(declare-fun b!5695166 () Bool)

(assert (=> b!5695166 (= e!3503881 (nullable!5721 (h!69691 (exprs!5573 lt!2272287))))))

(assert (= (and d!1797180 res!2405062) b!5695166))

(assert (= (and d!1797180 c!1002727) b!5695163))

(assert (= (and d!1797180 (not c!1002727)) b!5695165))

(assert (= (and b!5695165 c!1002728) b!5695164))

(assert (= (and b!5695165 (not c!1002728)) b!5695162))

(assert (= (or b!5695163 b!5695164) bm!433415))

(declare-fun m!6651420 () Bool)

(assert (=> bm!433415 m!6651420))

(declare-fun m!6651422 () Bool)

(assert (=> b!5695163 m!6651422))

(declare-fun m!6651424 () Bool)

(assert (=> b!5695166 m!6651424))

(assert (=> b!5695063 d!1797180))

(declare-fun d!1797182 () Bool)

(assert (=> d!1797182 (= (flatMap!1302 lt!2272289 lambda!306931) (dynLambda!24745 lambda!306931 lt!2272315))))

(declare-fun lt!2272337 () Unit!156288)

(assert (=> d!1797182 (= lt!2272337 (choose!43058 lt!2272289 lt!2272315 lambda!306931))))

(assert (=> d!1797182 (= lt!2272289 (store ((as const (Array Context!10146 Bool)) false) lt!2272315 true))))

(assert (=> d!1797182 (= (lemmaFlatMapOnSingletonSet!834 lt!2272289 lt!2272315 lambda!306931) lt!2272337)))

(declare-fun b_lambda!215289 () Bool)

(assert (=> (not b_lambda!215289) (not d!1797182)))

(declare-fun bs!1327605 () Bool)

(assert (= bs!1327605 d!1797182))

(assert (=> bs!1327605 m!6651276))

(declare-fun m!6651426 () Bool)

(assert (=> bs!1327605 m!6651426))

(declare-fun m!6651428 () Bool)

(assert (=> bs!1327605 m!6651428))

(assert (=> bs!1327605 m!6651282))

(assert (=> b!5695063 d!1797182))

(declare-fun b!5695199 () Bool)

(declare-fun e!3503906 () Bool)

(declare-fun lt!2272345 () Regex!15689)

(declare-fun isUnion!645 (Regex!15689) Bool)

(assert (=> b!5695199 (= e!3503906 (isUnion!645 lt!2272345))))

(declare-fun b!5695200 () Bool)

(declare-fun head!12074 (List!63367) Regex!15689)

(assert (=> b!5695200 (= e!3503906 (= lt!2272345 (head!12074 (unfocusZipperList!1117 zl!343))))))

(declare-fun b!5695201 () Bool)

(declare-fun e!3503902 () Bool)

(declare-fun isEmptyLang!1215 (Regex!15689) Bool)

(assert (=> b!5695201 (= e!3503902 (isEmptyLang!1215 lt!2272345))))

(declare-fun b!5695202 () Bool)

(declare-fun e!3503901 () Bool)

(assert (=> b!5695202 (= e!3503901 (isEmpty!35098 (t!376685 (unfocusZipperList!1117 zl!343))))))

(declare-fun b!5695203 () Bool)

(declare-fun e!3503905 () Regex!15689)

(assert (=> b!5695203 (= e!3503905 (h!69691 (unfocusZipperList!1117 zl!343)))))

(declare-fun d!1797184 () Bool)

(declare-fun e!3503903 () Bool)

(assert (=> d!1797184 e!3503903))

(declare-fun res!2405080 () Bool)

(assert (=> d!1797184 (=> (not res!2405080) (not e!3503903))))

(assert (=> d!1797184 (= res!2405080 (validRegex!7425 lt!2272345))))

(assert (=> d!1797184 (= lt!2272345 e!3503905)))

(declare-fun c!1002740 () Bool)

(assert (=> d!1797184 (= c!1002740 e!3503901)))

(declare-fun res!2405079 () Bool)

(assert (=> d!1797184 (=> (not res!2405079) (not e!3503901))))

(assert (=> d!1797184 (= res!2405079 ((_ is Cons!63243) (unfocusZipperList!1117 zl!343)))))

(declare-fun lambda!306946 () Int)

(declare-fun forall!14830 (List!63367 Int) Bool)

(assert (=> d!1797184 (forall!14830 (unfocusZipperList!1117 zl!343) lambda!306946)))

(assert (=> d!1797184 (= (generalisedUnion!1552 (unfocusZipperList!1117 zl!343)) lt!2272345)))

(declare-fun b!5695204 () Bool)

(assert (=> b!5695204 (= e!3503903 e!3503902)))

(declare-fun c!1002739 () Bool)

(assert (=> b!5695204 (= c!1002739 (isEmpty!35098 (unfocusZipperList!1117 zl!343)))))

(declare-fun b!5695205 () Bool)

(assert (=> b!5695205 (= e!3503902 e!3503906)))

(declare-fun c!1002737 () Bool)

(declare-fun tail!11169 (List!63367) List!63367)

(assert (=> b!5695205 (= c!1002737 (isEmpty!35098 (tail!11169 (unfocusZipperList!1117 zl!343))))))

(declare-fun b!5695206 () Bool)

(declare-fun e!3503904 () Regex!15689)

(assert (=> b!5695206 (= e!3503904 (Union!15689 (h!69691 (unfocusZipperList!1117 zl!343)) (generalisedUnion!1552 (t!376685 (unfocusZipperList!1117 zl!343)))))))

(declare-fun b!5695207 () Bool)

(assert (=> b!5695207 (= e!3503904 EmptyLang!15689)))

(declare-fun b!5695208 () Bool)

(assert (=> b!5695208 (= e!3503905 e!3503904)))

(declare-fun c!1002738 () Bool)

(assert (=> b!5695208 (= c!1002738 ((_ is Cons!63243) (unfocusZipperList!1117 zl!343)))))

(assert (= (and d!1797184 res!2405079) b!5695202))

(assert (= (and d!1797184 c!1002740) b!5695203))

(assert (= (and d!1797184 (not c!1002740)) b!5695208))

(assert (= (and b!5695208 c!1002738) b!5695206))

(assert (= (and b!5695208 (not c!1002738)) b!5695207))

(assert (= (and d!1797184 res!2405080) b!5695204))

(assert (= (and b!5695204 c!1002739) b!5695201))

(assert (= (and b!5695204 (not c!1002739)) b!5695205))

(assert (= (and b!5695205 c!1002737) b!5695200))

(assert (= (and b!5695205 (not c!1002737)) b!5695199))

(declare-fun m!6651434 () Bool)

(assert (=> b!5695206 m!6651434))

(assert (=> b!5695205 m!6651230))

(declare-fun m!6651436 () Bool)

(assert (=> b!5695205 m!6651436))

(assert (=> b!5695205 m!6651436))

(declare-fun m!6651438 () Bool)

(assert (=> b!5695205 m!6651438))

(declare-fun m!6651440 () Bool)

(assert (=> b!5695199 m!6651440))

(declare-fun m!6651442 () Bool)

(assert (=> b!5695201 m!6651442))

(declare-fun m!6651444 () Bool)

(assert (=> b!5695202 m!6651444))

(declare-fun m!6651446 () Bool)

(assert (=> d!1797184 m!6651446))

(assert (=> d!1797184 m!6651230))

(declare-fun m!6651448 () Bool)

(assert (=> d!1797184 m!6651448))

(assert (=> b!5695200 m!6651230))

(declare-fun m!6651450 () Bool)

(assert (=> b!5695200 m!6651450))

(assert (=> b!5695204 m!6651230))

(declare-fun m!6651452 () Bool)

(assert (=> b!5695204 m!6651452))

(assert (=> b!5695042 d!1797184))

(declare-fun bs!1327621 () Bool)

(declare-fun d!1797188 () Bool)

(assert (= bs!1327621 (and d!1797188 d!1797184)))

(declare-fun lambda!306956 () Int)

(assert (=> bs!1327621 (= lambda!306956 lambda!306946)))

(declare-fun lt!2272350 () List!63367)

(assert (=> d!1797188 (forall!14830 lt!2272350 lambda!306956)))

(declare-fun e!3503909 () List!63367)

(assert (=> d!1797188 (= lt!2272350 e!3503909)))

(declare-fun c!1002743 () Bool)

(assert (=> d!1797188 (= c!1002743 ((_ is Cons!63244) zl!343))))

(assert (=> d!1797188 (= (unfocusZipperList!1117 zl!343) lt!2272350)))

(declare-fun b!5695213 () Bool)

(assert (=> b!5695213 (= e!3503909 (Cons!63243 (generalisedConcat!1304 (exprs!5573 (h!69692 zl!343))) (unfocusZipperList!1117 (t!376686 zl!343))))))

(declare-fun b!5695214 () Bool)

(assert (=> b!5695214 (= e!3503909 Nil!63243)))

(assert (= (and d!1797188 c!1002743) b!5695213))

(assert (= (and d!1797188 (not c!1002743)) b!5695214))

(declare-fun m!6651466 () Bool)

(assert (=> d!1797188 m!6651466))

(assert (=> b!5695213 m!6651262))

(declare-fun m!6651468 () Bool)

(assert (=> b!5695213 m!6651468))

(assert (=> b!5695042 d!1797188))

(declare-fun d!1797198 () Bool)

(declare-fun e!3503919 () Bool)

(assert (=> d!1797198 (= (matchZipper!1827 ((_ map or) lt!2272303 lt!2272292) (t!376684 s!2326)) e!3503919)))

(declare-fun res!2405088 () Bool)

(assert (=> d!1797198 (=> res!2405088 e!3503919)))

(assert (=> d!1797198 (= res!2405088 (matchZipper!1827 lt!2272303 (t!376684 s!2326)))))

(declare-fun lt!2272359 () Unit!156288)

(declare-fun choose!43060 ((InoxSet Context!10146) (InoxSet Context!10146) List!63366) Unit!156288)

(assert (=> d!1797198 (= lt!2272359 (choose!43060 lt!2272303 lt!2272292 (t!376684 s!2326)))))

(assert (=> d!1797198 (= (lemmaZipperConcatMatchesSameAsBothZippers!714 lt!2272303 lt!2272292 (t!376684 s!2326)) lt!2272359)))

(declare-fun b!5695230 () Bool)

(assert (=> b!5695230 (= e!3503919 (matchZipper!1827 lt!2272292 (t!376684 s!2326)))))

(assert (= (and d!1797198 (not res!2405088)) b!5695230))

(assert (=> d!1797198 m!6651308))

(assert (=> d!1797198 m!6651306))

(declare-fun m!6651502 () Bool)

(assert (=> d!1797198 m!6651502))

(assert (=> b!5695230 m!6651334))

(assert (=> b!5695064 d!1797198))

(declare-fun d!1797212 () Bool)

(declare-fun c!1002751 () Bool)

(declare-fun isEmpty!35101 (List!63366) Bool)

(assert (=> d!1797212 (= c!1002751 (isEmpty!35101 (t!376684 s!2326)))))

(declare-fun e!3503929 () Bool)

(assert (=> d!1797212 (= (matchZipper!1827 lt!2272303 (t!376684 s!2326)) e!3503929)))

(declare-fun b!5695246 () Bool)

(declare-fun nullableZipper!1647 ((InoxSet Context!10146)) Bool)

(assert (=> b!5695246 (= e!3503929 (nullableZipper!1647 lt!2272303))))

(declare-fun b!5695247 () Bool)

(declare-fun head!12075 (List!63366) C!31648)

(declare-fun tail!11170 (List!63366) List!63366)

(assert (=> b!5695247 (= e!3503929 (matchZipper!1827 (derivationStepZipper!1772 lt!2272303 (head!12075 (t!376684 s!2326))) (tail!11170 (t!376684 s!2326))))))

(assert (= (and d!1797212 c!1002751) b!5695246))

(assert (= (and d!1797212 (not c!1002751)) b!5695247))

(declare-fun m!6651542 () Bool)

(assert (=> d!1797212 m!6651542))

(declare-fun m!6651544 () Bool)

(assert (=> b!5695246 m!6651544))

(declare-fun m!6651548 () Bool)

(assert (=> b!5695247 m!6651548))

(assert (=> b!5695247 m!6651548))

(declare-fun m!6651550 () Bool)

(assert (=> b!5695247 m!6651550))

(declare-fun m!6651552 () Bool)

(assert (=> b!5695247 m!6651552))

(assert (=> b!5695247 m!6651550))

(assert (=> b!5695247 m!6651552))

(declare-fun m!6651554 () Bool)

(assert (=> b!5695247 m!6651554))

(assert (=> b!5695064 d!1797212))

(declare-fun d!1797224 () Bool)

(declare-fun c!1002754 () Bool)

(assert (=> d!1797224 (= c!1002754 (isEmpty!35101 (t!376684 s!2326)))))

(declare-fun e!3503932 () Bool)

(assert (=> d!1797224 (= (matchZipper!1827 ((_ map or) lt!2272303 lt!2272292) (t!376684 s!2326)) e!3503932)))

(declare-fun b!5695252 () Bool)

(assert (=> b!5695252 (= e!3503932 (nullableZipper!1647 ((_ map or) lt!2272303 lt!2272292)))))

(declare-fun b!5695253 () Bool)

(assert (=> b!5695253 (= e!3503932 (matchZipper!1827 (derivationStepZipper!1772 ((_ map or) lt!2272303 lt!2272292) (head!12075 (t!376684 s!2326))) (tail!11170 (t!376684 s!2326))))))

(assert (= (and d!1797224 c!1002754) b!5695252))

(assert (= (and d!1797224 (not c!1002754)) b!5695253))

(assert (=> d!1797224 m!6651542))

(declare-fun m!6651562 () Bool)

(assert (=> b!5695252 m!6651562))

(assert (=> b!5695253 m!6651548))

(assert (=> b!5695253 m!6651548))

(declare-fun m!6651564 () Bool)

(assert (=> b!5695253 m!6651564))

(assert (=> b!5695253 m!6651552))

(assert (=> b!5695253 m!6651564))

(assert (=> b!5695253 m!6651552))

(declare-fun m!6651566 () Bool)

(assert (=> b!5695253 m!6651566))

(assert (=> b!5695064 d!1797224))

(declare-fun b!5695346 () Bool)

(declare-fun res!2405132 () Bool)

(declare-fun e!3503985 () Bool)

(assert (=> b!5695346 (=> (not res!2405132) (not e!3503985))))

(declare-fun call!433423 () Bool)

(assert (=> b!5695346 (= res!2405132 (not call!433423))))

(declare-fun b!5695347 () Bool)

(declare-fun e!3503984 () Bool)

(assert (=> b!5695347 (= e!3503984 (not (= (head!12075 (_1!36089 lt!2272314)) (c!1002699 lt!2272312))))))

(declare-fun b!5695348 () Bool)

(declare-fun res!2405136 () Bool)

(declare-fun e!3503987 () Bool)

(assert (=> b!5695348 (=> res!2405136 e!3503987)))

(assert (=> b!5695348 (= res!2405136 e!3503985)))

(declare-fun res!2405140 () Bool)

(assert (=> b!5695348 (=> (not res!2405140) (not e!3503985))))

(declare-fun lt!2272377 () Bool)

(assert (=> b!5695348 (= res!2405140 lt!2272377)))

(declare-fun b!5695349 () Bool)

(declare-fun res!2405142 () Bool)

(assert (=> b!5695349 (=> res!2405142 e!3503987)))

(assert (=> b!5695349 (= res!2405142 (not ((_ is ElementMatch!15689) lt!2272312)))))

(declare-fun e!3503988 () Bool)

(assert (=> b!5695349 (= e!3503988 e!3503987)))

(declare-fun b!5695351 () Bool)

(declare-fun res!2405137 () Bool)

(assert (=> b!5695351 (=> (not res!2405137) (not e!3503985))))

(assert (=> b!5695351 (= res!2405137 (isEmpty!35101 (tail!11170 (_1!36089 lt!2272314))))))

(declare-fun b!5695352 () Bool)

(declare-fun e!3503980 () Bool)

(assert (=> b!5695352 (= e!3503980 e!3503984)))

(declare-fun res!2405133 () Bool)

(assert (=> b!5695352 (=> res!2405133 e!3503984)))

(assert (=> b!5695352 (= res!2405133 call!433423)))

(declare-fun b!5695353 () Bool)

(assert (=> b!5695353 (= e!3503987 e!3503980)))

(declare-fun res!2405143 () Bool)

(assert (=> b!5695353 (=> (not res!2405143) (not e!3503980))))

(assert (=> b!5695353 (= res!2405143 (not lt!2272377))))

(declare-fun b!5695350 () Bool)

(declare-fun e!3503986 () Bool)

(assert (=> b!5695350 (= e!3503986 (= lt!2272377 call!433423))))

(declare-fun d!1797228 () Bool)

(assert (=> d!1797228 e!3503986))

(declare-fun c!1002783 () Bool)

(assert (=> d!1797228 (= c!1002783 ((_ is EmptyExpr!15689) lt!2272312))))

(declare-fun e!3503981 () Bool)

(assert (=> d!1797228 (= lt!2272377 e!3503981)))

(declare-fun c!1002784 () Bool)

(assert (=> d!1797228 (= c!1002784 (isEmpty!35101 (_1!36089 lt!2272314)))))

(assert (=> d!1797228 (validRegex!7425 lt!2272312)))

(assert (=> d!1797228 (= (matchR!7874 lt!2272312 (_1!36089 lt!2272314)) lt!2272377)))

(declare-fun bm!433418 () Bool)

(assert (=> bm!433418 (= call!433423 (isEmpty!35101 (_1!36089 lt!2272314)))))

(declare-fun b!5695354 () Bool)

(assert (=> b!5695354 (= e!3503988 (not lt!2272377))))

(declare-fun b!5695355 () Bool)

(declare-fun derivativeStep!4499 (Regex!15689 C!31648) Regex!15689)

(assert (=> b!5695355 (= e!3503981 (matchR!7874 (derivativeStep!4499 lt!2272312 (head!12075 (_1!36089 lt!2272314))) (tail!11170 (_1!36089 lt!2272314))))))

(declare-fun b!5695356 () Bool)

(assert (=> b!5695356 (= e!3503985 (= (head!12075 (_1!36089 lt!2272314)) (c!1002699 lt!2272312)))))

(declare-fun b!5695357 () Bool)

(declare-fun res!2405141 () Bool)

(assert (=> b!5695357 (=> res!2405141 e!3503984)))

(assert (=> b!5695357 (= res!2405141 (not (isEmpty!35101 (tail!11170 (_1!36089 lt!2272314)))))))

(declare-fun b!5695358 () Bool)

(assert (=> b!5695358 (= e!3503981 (nullable!5721 lt!2272312))))

(declare-fun b!5695359 () Bool)

(assert (=> b!5695359 (= e!3503986 e!3503988)))

(declare-fun c!1002782 () Bool)

(assert (=> b!5695359 (= c!1002782 ((_ is EmptyLang!15689) lt!2272312))))

(assert (= (and d!1797228 c!1002784) b!5695358))

(assert (= (and d!1797228 (not c!1002784)) b!5695355))

(assert (= (and d!1797228 c!1002783) b!5695350))

(assert (= (and d!1797228 (not c!1002783)) b!5695359))

(assert (= (and b!5695359 c!1002782) b!5695354))

(assert (= (and b!5695359 (not c!1002782)) b!5695349))

(assert (= (and b!5695349 (not res!2405142)) b!5695348))

(assert (= (and b!5695348 res!2405140) b!5695346))

(assert (= (and b!5695346 res!2405132) b!5695351))

(assert (= (and b!5695351 res!2405137) b!5695356))

(assert (= (and b!5695348 (not res!2405136)) b!5695353))

(assert (= (and b!5695353 res!2405143) b!5695352))

(assert (= (and b!5695352 (not res!2405133)) b!5695357))

(assert (= (and b!5695357 (not res!2405141)) b!5695347))

(assert (= (or b!5695350 b!5695346 b!5695352) bm!433418))

(declare-fun m!6651592 () Bool)

(assert (=> b!5695358 m!6651592))

(declare-fun m!6651594 () Bool)

(assert (=> d!1797228 m!6651594))

(declare-fun m!6651596 () Bool)

(assert (=> d!1797228 m!6651596))

(assert (=> bm!433418 m!6651594))

(declare-fun m!6651598 () Bool)

(assert (=> b!5695355 m!6651598))

(assert (=> b!5695355 m!6651598))

(declare-fun m!6651600 () Bool)

(assert (=> b!5695355 m!6651600))

(declare-fun m!6651602 () Bool)

(assert (=> b!5695355 m!6651602))

(assert (=> b!5695355 m!6651600))

(assert (=> b!5695355 m!6651602))

(declare-fun m!6651604 () Bool)

(assert (=> b!5695355 m!6651604))

(assert (=> b!5695356 m!6651598))

(assert (=> b!5695351 m!6651602))

(assert (=> b!5695351 m!6651602))

(declare-fun m!6651606 () Bool)

(assert (=> b!5695351 m!6651606))

(assert (=> b!5695347 m!6651598))

(assert (=> b!5695357 m!6651602))

(assert (=> b!5695357 m!6651602))

(assert (=> b!5695357 m!6651606))

(assert (=> b!5695060 d!1797228))

(declare-fun b!5695420 () Bool)

(declare-fun e!3504031 () Bool)

(declare-fun call!433435 () Bool)

(assert (=> b!5695420 (= e!3504031 call!433435)))

(declare-fun bm!433428 () Bool)

(declare-fun c!1002801 () Bool)

(assert (=> bm!433428 (= call!433435 (validRegex!7425 (ite c!1002801 (regTwo!31891 r!7292) (regTwo!31890 r!7292))))))

(declare-fun b!5695421 () Bool)

(declare-fun e!3504028 () Bool)

(declare-fun e!3504027 () Bool)

(assert (=> b!5695421 (= e!3504028 e!3504027)))

(assert (=> b!5695421 (= c!1002801 ((_ is Union!15689) r!7292))))

(declare-fun d!1797234 () Bool)

(declare-fun res!2405177 () Bool)

(declare-fun e!3504026 () Bool)

(assert (=> d!1797234 (=> res!2405177 e!3504026)))

(assert (=> d!1797234 (= res!2405177 ((_ is ElementMatch!15689) r!7292))))

(assert (=> d!1797234 (= (validRegex!7425 r!7292) e!3504026)))

(declare-fun b!5695422 () Bool)

(declare-fun res!2405175 () Bool)

(declare-fun e!3504030 () Bool)

(assert (=> b!5695422 (=> res!2405175 e!3504030)))

(assert (=> b!5695422 (= res!2405175 (not ((_ is Concat!24534) r!7292)))))

(assert (=> b!5695422 (= e!3504027 e!3504030)))

(declare-fun b!5695423 () Bool)

(assert (=> b!5695423 (= e!3504026 e!3504028)))

(declare-fun c!1002800 () Bool)

(assert (=> b!5695423 (= c!1002800 ((_ is Star!15689) r!7292))))

(declare-fun b!5695424 () Bool)

(declare-fun e!3504029 () Bool)

(declare-fun call!433433 () Bool)

(assert (=> b!5695424 (= e!3504029 call!433433)))

(declare-fun bm!433429 () Bool)

(declare-fun call!433434 () Bool)

(assert (=> bm!433429 (= call!433434 call!433433)))

(declare-fun b!5695425 () Bool)

(declare-fun e!3504032 () Bool)

(assert (=> b!5695425 (= e!3504032 call!433435)))

(declare-fun bm!433430 () Bool)

(assert (=> bm!433430 (= call!433433 (validRegex!7425 (ite c!1002800 (reg!16018 r!7292) (ite c!1002801 (regOne!31891 r!7292) (regOne!31890 r!7292)))))))

(declare-fun b!5695426 () Bool)

(declare-fun res!2405176 () Bool)

(assert (=> b!5695426 (=> (not res!2405176) (not e!3504031))))

(assert (=> b!5695426 (= res!2405176 call!433434)))

(assert (=> b!5695426 (= e!3504027 e!3504031)))

(declare-fun b!5695427 () Bool)

(assert (=> b!5695427 (= e!3504028 e!3504029)))

(declare-fun res!2405178 () Bool)

(assert (=> b!5695427 (= res!2405178 (not (nullable!5721 (reg!16018 r!7292))))))

(assert (=> b!5695427 (=> (not res!2405178) (not e!3504029))))

(declare-fun b!5695428 () Bool)

(assert (=> b!5695428 (= e!3504030 e!3504032)))

(declare-fun res!2405174 () Bool)

(assert (=> b!5695428 (=> (not res!2405174) (not e!3504032))))

(assert (=> b!5695428 (= res!2405174 call!433434)))

(assert (= (and d!1797234 (not res!2405177)) b!5695423))

(assert (= (and b!5695423 c!1002800) b!5695427))

(assert (= (and b!5695423 (not c!1002800)) b!5695421))

(assert (= (and b!5695427 res!2405178) b!5695424))

(assert (= (and b!5695421 c!1002801) b!5695426))

(assert (= (and b!5695421 (not c!1002801)) b!5695422))

(assert (= (and b!5695426 res!2405176) b!5695420))

(assert (= (and b!5695422 (not res!2405175)) b!5695428))

(assert (= (and b!5695428 res!2405174) b!5695425))

(assert (= (or b!5695420 b!5695425) bm!433428))

(assert (= (or b!5695426 b!5695428) bm!433429))

(assert (= (or b!5695424 bm!433429) bm!433430))

(declare-fun m!6651618 () Bool)

(assert (=> bm!433428 m!6651618))

(declare-fun m!6651620 () Bool)

(assert (=> bm!433430 m!6651620))

(declare-fun m!6651622 () Bool)

(assert (=> b!5695427 m!6651622))

(assert (=> start!587252 d!1797234))

(declare-fun b!5695429 () Bool)

(declare-fun res!2405179 () Bool)

(declare-fun e!3504036 () Bool)

(assert (=> b!5695429 (=> (not res!2405179) (not e!3504036))))

(declare-fun call!433436 () Bool)

(assert (=> b!5695429 (= res!2405179 (not call!433436))))

(declare-fun b!5695430 () Bool)

(declare-fun e!3504035 () Bool)

(assert (=> b!5695430 (= e!3504035 (not (= (head!12075 s!2326) (c!1002699 lt!2272304))))))

(declare-fun b!5695431 () Bool)

(declare-fun res!2405181 () Bool)

(declare-fun e!3504038 () Bool)

(assert (=> b!5695431 (=> res!2405181 e!3504038)))

(assert (=> b!5695431 (= res!2405181 e!3504036)))

(declare-fun res!2405183 () Bool)

(assert (=> b!5695431 (=> (not res!2405183) (not e!3504036))))

(declare-fun lt!2272379 () Bool)

(assert (=> b!5695431 (= res!2405183 lt!2272379)))

(declare-fun b!5695432 () Bool)

(declare-fun res!2405185 () Bool)

(assert (=> b!5695432 (=> res!2405185 e!3504038)))

(assert (=> b!5695432 (= res!2405185 (not ((_ is ElementMatch!15689) lt!2272304)))))

(declare-fun e!3504039 () Bool)

(assert (=> b!5695432 (= e!3504039 e!3504038)))

(declare-fun b!5695434 () Bool)

(declare-fun res!2405182 () Bool)

(assert (=> b!5695434 (=> (not res!2405182) (not e!3504036))))

(assert (=> b!5695434 (= res!2405182 (isEmpty!35101 (tail!11170 s!2326)))))

(declare-fun b!5695435 () Bool)

(declare-fun e!3504033 () Bool)

(assert (=> b!5695435 (= e!3504033 e!3504035)))

(declare-fun res!2405180 () Bool)

(assert (=> b!5695435 (=> res!2405180 e!3504035)))

(assert (=> b!5695435 (= res!2405180 call!433436)))

(declare-fun b!5695436 () Bool)

(assert (=> b!5695436 (= e!3504038 e!3504033)))

(declare-fun res!2405186 () Bool)

(assert (=> b!5695436 (=> (not res!2405186) (not e!3504033))))

(assert (=> b!5695436 (= res!2405186 (not lt!2272379))))

(declare-fun b!5695433 () Bool)

(declare-fun e!3504037 () Bool)

(assert (=> b!5695433 (= e!3504037 (= lt!2272379 call!433436))))

(declare-fun d!1797238 () Bool)

(assert (=> d!1797238 e!3504037))

(declare-fun c!1002803 () Bool)

(assert (=> d!1797238 (= c!1002803 ((_ is EmptyExpr!15689) lt!2272304))))

(declare-fun e!3504034 () Bool)

(assert (=> d!1797238 (= lt!2272379 e!3504034)))

(declare-fun c!1002804 () Bool)

(assert (=> d!1797238 (= c!1002804 (isEmpty!35101 s!2326))))

(assert (=> d!1797238 (validRegex!7425 lt!2272304)))

(assert (=> d!1797238 (= (matchR!7874 lt!2272304 s!2326) lt!2272379)))

(declare-fun bm!433431 () Bool)

(assert (=> bm!433431 (= call!433436 (isEmpty!35101 s!2326))))

(declare-fun b!5695437 () Bool)

(assert (=> b!5695437 (= e!3504039 (not lt!2272379))))

(declare-fun b!5695438 () Bool)

(assert (=> b!5695438 (= e!3504034 (matchR!7874 (derivativeStep!4499 lt!2272304 (head!12075 s!2326)) (tail!11170 s!2326)))))

(declare-fun b!5695439 () Bool)

(assert (=> b!5695439 (= e!3504036 (= (head!12075 s!2326) (c!1002699 lt!2272304)))))

(declare-fun b!5695440 () Bool)

(declare-fun res!2405184 () Bool)

(assert (=> b!5695440 (=> res!2405184 e!3504035)))

(assert (=> b!5695440 (= res!2405184 (not (isEmpty!35101 (tail!11170 s!2326))))))

(declare-fun b!5695441 () Bool)

(assert (=> b!5695441 (= e!3504034 (nullable!5721 lt!2272304))))

(declare-fun b!5695442 () Bool)

(assert (=> b!5695442 (= e!3504037 e!3504039)))

(declare-fun c!1002802 () Bool)

(assert (=> b!5695442 (= c!1002802 ((_ is EmptyLang!15689) lt!2272304))))

(assert (= (and d!1797238 c!1002804) b!5695441))

(assert (= (and d!1797238 (not c!1002804)) b!5695438))

(assert (= (and d!1797238 c!1002803) b!5695433))

(assert (= (and d!1797238 (not c!1002803)) b!5695442))

(assert (= (and b!5695442 c!1002802) b!5695437))

(assert (= (and b!5695442 (not c!1002802)) b!5695432))

(assert (= (and b!5695432 (not res!2405185)) b!5695431))

(assert (= (and b!5695431 res!2405183) b!5695429))

(assert (= (and b!5695429 res!2405179) b!5695434))

(assert (= (and b!5695434 res!2405182) b!5695439))

(assert (= (and b!5695431 (not res!2405181)) b!5695436))

(assert (= (and b!5695436 res!2405186) b!5695435))

(assert (= (and b!5695435 (not res!2405180)) b!5695440))

(assert (= (and b!5695440 (not res!2405184)) b!5695430))

(assert (= (or b!5695433 b!5695429 b!5695435) bm!433431))

(declare-fun m!6651624 () Bool)

(assert (=> b!5695441 m!6651624))

(declare-fun m!6651626 () Bool)

(assert (=> d!1797238 m!6651626))

(declare-fun m!6651628 () Bool)

(assert (=> d!1797238 m!6651628))

(assert (=> bm!433431 m!6651626))

(declare-fun m!6651630 () Bool)

(assert (=> b!5695438 m!6651630))

(assert (=> b!5695438 m!6651630))

(declare-fun m!6651632 () Bool)

(assert (=> b!5695438 m!6651632))

(declare-fun m!6651634 () Bool)

(assert (=> b!5695438 m!6651634))

(assert (=> b!5695438 m!6651632))

(assert (=> b!5695438 m!6651634))

(declare-fun m!6651636 () Bool)

(assert (=> b!5695438 m!6651636))

(assert (=> b!5695439 m!6651630))

(assert (=> b!5695434 m!6651634))

(assert (=> b!5695434 m!6651634))

(declare-fun m!6651638 () Bool)

(assert (=> b!5695434 m!6651638))

(assert (=> b!5695430 m!6651630))

(assert (=> b!5695440 m!6651634))

(assert (=> b!5695440 m!6651634))

(assert (=> b!5695440 m!6651638))

(assert (=> b!5695041 d!1797238))

(declare-fun bs!1327661 () Bool)

(declare-fun b!5695537 () Bool)

(assert (= bs!1327661 (and b!5695537 b!5695059)))

(declare-fun lambda!306975 () Int)

(assert (=> bs!1327661 (not (= lambda!306975 lambda!306929))))

(assert (=> bs!1327661 (not (= lambda!306975 lambda!306930))))

(declare-fun bs!1327662 () Bool)

(assert (= bs!1327662 (and b!5695537 b!5695065)))

(assert (=> bs!1327662 (not (= lambda!306975 lambda!306932))))

(assert (=> bs!1327662 (not (= lambda!306975 lambda!306933))))

(assert (=> b!5695537 true))

(assert (=> b!5695537 true))

(declare-fun bs!1327664 () Bool)

(declare-fun b!5695539 () Bool)

(assert (= bs!1327664 (and b!5695539 b!5695065)))

(declare-fun lambda!306976 () Int)

(assert (=> bs!1327664 (not (= lambda!306976 lambda!306932))))

(declare-fun bs!1327666 () Bool)

(assert (= bs!1327666 (and b!5695539 b!5695537)))

(assert (=> bs!1327666 (not (= lambda!306976 lambda!306975))))

(declare-fun bs!1327667 () Bool)

(assert (= bs!1327667 (and b!5695539 b!5695059)))

(assert (=> bs!1327667 (= (and (= (regOne!31890 lt!2272304) (regOne!31890 r!7292)) (= (regTwo!31890 lt!2272304) (regTwo!31890 r!7292))) (= lambda!306976 lambda!306930))))

(assert (=> bs!1327664 (= (and (= (regOne!31890 lt!2272304) lt!2272312) (= (regTwo!31890 lt!2272304) (regTwo!31890 r!7292))) (= lambda!306976 lambda!306933))))

(assert (=> bs!1327667 (not (= lambda!306976 lambda!306929))))

(assert (=> b!5695539 true))

(assert (=> b!5695539 true))

(declare-fun b!5695531 () Bool)

(declare-fun res!2405233 () Bool)

(declare-fun e!3504099 () Bool)

(assert (=> b!5695531 (=> res!2405233 e!3504099)))

(declare-fun call!433458 () Bool)

(assert (=> b!5695531 (= res!2405233 call!433458)))

(declare-fun e!3504100 () Bool)

(assert (=> b!5695531 (= e!3504100 e!3504099)))

(declare-fun b!5695532 () Bool)

(declare-fun e!3504096 () Bool)

(declare-fun e!3504101 () Bool)

(assert (=> b!5695532 (= e!3504096 e!3504101)))

(declare-fun res!2405235 () Bool)

(assert (=> b!5695532 (= res!2405235 (matchRSpec!2792 (regOne!31891 lt!2272304) s!2326))))

(assert (=> b!5695532 (=> res!2405235 e!3504101)))

(declare-fun bm!433452 () Bool)

(assert (=> bm!433452 (= call!433458 (isEmpty!35101 s!2326))))

(declare-fun b!5695533 () Bool)

(declare-fun e!3504097 () Bool)

(declare-fun e!3504095 () Bool)

(assert (=> b!5695533 (= e!3504097 e!3504095)))

(declare-fun res!2405234 () Bool)

(assert (=> b!5695533 (= res!2405234 (not ((_ is EmptyLang!15689) lt!2272304)))))

(assert (=> b!5695533 (=> (not res!2405234) (not e!3504095))))

(declare-fun b!5695534 () Bool)

(assert (=> b!5695534 (= e!3504097 call!433458)))

(declare-fun b!5695535 () Bool)

(assert (=> b!5695535 (= e!3504096 e!3504100)))

(declare-fun c!1002829 () Bool)

(assert (=> b!5695535 (= c!1002829 ((_ is Star!15689) lt!2272304))))

(declare-fun d!1797240 () Bool)

(declare-fun c!1002826 () Bool)

(assert (=> d!1797240 (= c!1002826 ((_ is EmptyExpr!15689) lt!2272304))))

(assert (=> d!1797240 (= (matchRSpec!2792 lt!2272304 s!2326) e!3504097)))

(declare-fun b!5695536 () Bool)

(declare-fun c!1002827 () Bool)

(assert (=> b!5695536 (= c!1002827 ((_ is ElementMatch!15689) lt!2272304))))

(declare-fun e!3504098 () Bool)

(assert (=> b!5695536 (= e!3504095 e!3504098)))

(declare-fun call!433457 () Bool)

(declare-fun bm!433453 () Bool)

(assert (=> bm!433453 (= call!433457 (Exists!2789 (ite c!1002829 lambda!306975 lambda!306976)))))

(assert (=> b!5695537 (= e!3504099 call!433457)))

(declare-fun b!5695538 () Bool)

(declare-fun c!1002828 () Bool)

(assert (=> b!5695538 (= c!1002828 ((_ is Union!15689) lt!2272304))))

(assert (=> b!5695538 (= e!3504098 e!3504096)))

(assert (=> b!5695539 (= e!3504100 call!433457)))

(declare-fun b!5695540 () Bool)

(assert (=> b!5695540 (= e!3504098 (= s!2326 (Cons!63242 (c!1002699 lt!2272304) Nil!63242)))))

(declare-fun b!5695541 () Bool)

(assert (=> b!5695541 (= e!3504101 (matchRSpec!2792 (regTwo!31891 lt!2272304) s!2326))))

(assert (= (and d!1797240 c!1002826) b!5695534))

(assert (= (and d!1797240 (not c!1002826)) b!5695533))

(assert (= (and b!5695533 res!2405234) b!5695536))

(assert (= (and b!5695536 c!1002827) b!5695540))

(assert (= (and b!5695536 (not c!1002827)) b!5695538))

(assert (= (and b!5695538 c!1002828) b!5695532))

(assert (= (and b!5695538 (not c!1002828)) b!5695535))

(assert (= (and b!5695532 (not res!2405235)) b!5695541))

(assert (= (and b!5695535 c!1002829) b!5695531))

(assert (= (and b!5695535 (not c!1002829)) b!5695539))

(assert (= (and b!5695531 (not res!2405233)) b!5695537))

(assert (= (or b!5695537 b!5695539) bm!433453))

(assert (= (or b!5695534 b!5695531) bm!433452))

(declare-fun m!6651702 () Bool)

(assert (=> b!5695532 m!6651702))

(assert (=> bm!433452 m!6651626))

(declare-fun m!6651704 () Bool)

(assert (=> bm!433453 m!6651704))

(declare-fun m!6651706 () Bool)

(assert (=> b!5695541 m!6651706))

(assert (=> b!5695041 d!1797240))

(declare-fun d!1797268 () Bool)

(assert (=> d!1797268 (= (matchR!7874 lt!2272304 s!2326) (matchRSpec!2792 lt!2272304 s!2326))))

(declare-fun lt!2272395 () Unit!156288)

(declare-fun choose!43062 (Regex!15689 List!63366) Unit!156288)

(assert (=> d!1797268 (= lt!2272395 (choose!43062 lt!2272304 s!2326))))

(assert (=> d!1797268 (validRegex!7425 lt!2272304)))

(assert (=> d!1797268 (= (mainMatchTheorem!2792 lt!2272304 s!2326) lt!2272395)))

(declare-fun bs!1327668 () Bool)

(assert (= bs!1327668 d!1797268))

(assert (=> bs!1327668 m!6651244))

(assert (=> bs!1327668 m!6651246))

(declare-fun m!6651708 () Bool)

(assert (=> bs!1327668 m!6651708))

(assert (=> bs!1327668 m!6651628))

(assert (=> b!5695041 d!1797268))

(declare-fun d!1797270 () Bool)

(declare-fun e!3504149 () Bool)

(assert (=> d!1797270 e!3504149))

(declare-fun res!2405266 () Bool)

(assert (=> d!1797270 (=> res!2405266 e!3504149)))

(declare-fun e!3504148 () Bool)

(assert (=> d!1797270 (= res!2405266 e!3504148)))

(declare-fun res!2405269 () Bool)

(assert (=> d!1797270 (=> (not res!2405269) (not e!3504148))))

(declare-fun lt!2272408 () Option!15698)

(assert (=> d!1797270 (= res!2405269 (isDefined!12401 lt!2272408))))

(declare-fun e!3504150 () Option!15698)

(assert (=> d!1797270 (= lt!2272408 e!3504150)))

(declare-fun c!1002855 () Bool)

(declare-fun e!3504147 () Bool)

(assert (=> d!1797270 (= c!1002855 e!3504147)))

(declare-fun res!2405267 () Bool)

(assert (=> d!1797270 (=> (not res!2405267) (not e!3504147))))

(assert (=> d!1797270 (= res!2405267 (matchR!7874 (regOne!31890 r!7292) Nil!63242))))

(assert (=> d!1797270 (validRegex!7425 (regOne!31890 r!7292))))

(assert (=> d!1797270 (= (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326) lt!2272408)))

(declare-fun b!5695619 () Bool)

(declare-fun lt!2272407 () Unit!156288)

(declare-fun lt!2272406 () Unit!156288)

(assert (=> b!5695619 (= lt!2272407 lt!2272406)))

(assert (=> b!5695619 (= (++!13881 (++!13881 Nil!63242 (Cons!63242 (h!69690 s!2326) Nil!63242)) (t!376684 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2050 (List!63366 C!31648 List!63366 List!63366) Unit!156288)

(assert (=> b!5695619 (= lt!2272406 (lemmaMoveElementToOtherListKeepsConcatEq!2050 Nil!63242 (h!69690 s!2326) (t!376684 s!2326) s!2326))))

(declare-fun e!3504146 () Option!15698)

(assert (=> b!5695619 (= e!3504146 (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) (++!13881 Nil!63242 (Cons!63242 (h!69690 s!2326) Nil!63242)) (t!376684 s!2326) s!2326))))

(declare-fun b!5695620 () Bool)

(assert (=> b!5695620 (= e!3504149 (not (isDefined!12401 lt!2272408)))))

(declare-fun b!5695621 () Bool)

(assert (=> b!5695621 (= e!3504148 (= (++!13881 (_1!36089 (get!21793 lt!2272408)) (_2!36089 (get!21793 lt!2272408))) s!2326))))

(declare-fun b!5695622 () Bool)

(declare-fun res!2405268 () Bool)

(assert (=> b!5695622 (=> (not res!2405268) (not e!3504148))))

(assert (=> b!5695622 (= res!2405268 (matchR!7874 (regOne!31890 r!7292) (_1!36089 (get!21793 lt!2272408))))))

(declare-fun b!5695623 () Bool)

(assert (=> b!5695623 (= e!3504150 (Some!15697 (tuple2!65573 Nil!63242 s!2326)))))

(declare-fun b!5695624 () Bool)

(declare-fun res!2405265 () Bool)

(assert (=> b!5695624 (=> (not res!2405265) (not e!3504148))))

(assert (=> b!5695624 (= res!2405265 (matchR!7874 (regTwo!31890 r!7292) (_2!36089 (get!21793 lt!2272408))))))

(declare-fun b!5695625 () Bool)

(assert (=> b!5695625 (= e!3504150 e!3504146)))

(declare-fun c!1002856 () Bool)

(assert (=> b!5695625 (= c!1002856 ((_ is Nil!63242) s!2326))))

(declare-fun b!5695626 () Bool)

(assert (=> b!5695626 (= e!3504146 None!15697)))

(declare-fun b!5695627 () Bool)

(assert (=> b!5695627 (= e!3504147 (matchR!7874 (regTwo!31890 r!7292) s!2326))))

(assert (= (and d!1797270 res!2405267) b!5695627))

(assert (= (and d!1797270 c!1002855) b!5695623))

(assert (= (and d!1797270 (not c!1002855)) b!5695625))

(assert (= (and b!5695625 c!1002856) b!5695626))

(assert (= (and b!5695625 (not c!1002856)) b!5695619))

(assert (= (and d!1797270 res!2405269) b!5695622))

(assert (= (and b!5695622 res!2405268) b!5695624))

(assert (= (and b!5695624 res!2405265) b!5695621))

(assert (= (and d!1797270 (not res!2405266)) b!5695620))

(declare-fun m!6651758 () Bool)

(assert (=> b!5695622 m!6651758))

(declare-fun m!6651760 () Bool)

(assert (=> b!5695622 m!6651760))

(assert (=> b!5695621 m!6651758))

(declare-fun m!6651762 () Bool)

(assert (=> b!5695621 m!6651762))

(declare-fun m!6651764 () Bool)

(assert (=> b!5695627 m!6651764))

(declare-fun m!6651766 () Bool)

(assert (=> b!5695619 m!6651766))

(assert (=> b!5695619 m!6651766))

(declare-fun m!6651768 () Bool)

(assert (=> b!5695619 m!6651768))

(declare-fun m!6651770 () Bool)

(assert (=> b!5695619 m!6651770))

(assert (=> b!5695619 m!6651766))

(declare-fun m!6651772 () Bool)

(assert (=> b!5695619 m!6651772))

(declare-fun m!6651774 () Bool)

(assert (=> d!1797270 m!6651774))

(declare-fun m!6651776 () Bool)

(assert (=> d!1797270 m!6651776))

(declare-fun m!6651778 () Bool)

(assert (=> d!1797270 m!6651778))

(assert (=> b!5695620 m!6651774))

(assert (=> b!5695624 m!6651758))

(declare-fun m!6651780 () Bool)

(assert (=> b!5695624 m!6651780))

(assert (=> b!5695059 d!1797270))

(declare-fun d!1797296 () Bool)

(declare-fun choose!43064 (Int) Bool)

(assert (=> d!1797296 (= (Exists!2789 lambda!306929) (choose!43064 lambda!306929))))

(declare-fun bs!1327692 () Bool)

(assert (= bs!1327692 d!1797296))

(declare-fun m!6651782 () Bool)

(assert (=> bs!1327692 m!6651782))

(assert (=> b!5695059 d!1797296))

(declare-fun d!1797298 () Bool)

(assert (=> d!1797298 (= (Exists!2789 lambda!306930) (choose!43064 lambda!306930))))

(declare-fun bs!1327693 () Bool)

(assert (= bs!1327693 d!1797298))

(declare-fun m!6651784 () Bool)

(assert (=> bs!1327693 m!6651784))

(assert (=> b!5695059 d!1797298))

(declare-fun bs!1327695 () Bool)

(declare-fun d!1797300 () Bool)

(assert (= bs!1327695 (and d!1797300 b!5695065)))

(declare-fun lambda!306984 () Int)

(assert (=> bs!1327695 (= (= (regOne!31890 r!7292) lt!2272312) (= lambda!306984 lambda!306932))))

(declare-fun bs!1327696 () Bool)

(assert (= bs!1327696 (and d!1797300 b!5695537)))

(assert (=> bs!1327696 (not (= lambda!306984 lambda!306975))))

(declare-fun bs!1327697 () Bool)

(assert (= bs!1327697 (and d!1797300 b!5695059)))

(assert (=> bs!1327697 (not (= lambda!306984 lambda!306930))))

(assert (=> bs!1327695 (not (= lambda!306984 lambda!306933))))

(assert (=> bs!1327697 (= lambda!306984 lambda!306929)))

(declare-fun bs!1327699 () Bool)

(assert (= bs!1327699 (and d!1797300 b!5695539)))

(assert (=> bs!1327699 (not (= lambda!306984 lambda!306976))))

(assert (=> d!1797300 true))

(assert (=> d!1797300 true))

(assert (=> d!1797300 true))

(assert (=> d!1797300 (= (isDefined!12401 (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326)) (Exists!2789 lambda!306984))))

(declare-fun lt!2272411 () Unit!156288)

(declare-fun choose!43066 (Regex!15689 Regex!15689 List!63366) Unit!156288)

(assert (=> d!1797300 (= lt!2272411 (choose!43066 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326))))

(assert (=> d!1797300 (validRegex!7425 (regOne!31890 r!7292))))

(assert (=> d!1797300 (= (lemmaFindConcatSeparationEquivalentToExists!1876 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326) lt!2272411)))

(declare-fun bs!1327700 () Bool)

(assert (= bs!1327700 d!1797300))

(declare-fun m!6651812 () Bool)

(assert (=> bs!1327700 m!6651812))

(declare-fun m!6651816 () Bool)

(assert (=> bs!1327700 m!6651816))

(assert (=> bs!1327700 m!6651778))

(assert (=> bs!1327700 m!6651220))

(assert (=> bs!1327700 m!6651220))

(assert (=> bs!1327700 m!6651222))

(assert (=> b!5695059 d!1797300))

(declare-fun bs!1327706 () Bool)

(declare-fun d!1797312 () Bool)

(assert (= bs!1327706 (and d!1797312 b!5695065)))

(declare-fun lambda!306989 () Int)

(assert (=> bs!1327706 (= (= (regOne!31890 r!7292) lt!2272312) (= lambda!306989 lambda!306932))))

(declare-fun bs!1327707 () Bool)

(assert (= bs!1327707 (and d!1797312 b!5695537)))

(assert (=> bs!1327707 (not (= lambda!306989 lambda!306975))))

(declare-fun bs!1327708 () Bool)

(assert (= bs!1327708 (and d!1797312 d!1797300)))

(assert (=> bs!1327708 (= lambda!306989 lambda!306984)))

(declare-fun bs!1327709 () Bool)

(assert (= bs!1327709 (and d!1797312 b!5695059)))

(assert (=> bs!1327709 (not (= lambda!306989 lambda!306930))))

(assert (=> bs!1327706 (not (= lambda!306989 lambda!306933))))

(assert (=> bs!1327709 (= lambda!306989 lambda!306929)))

(declare-fun bs!1327710 () Bool)

(assert (= bs!1327710 (and d!1797312 b!5695539)))

(assert (=> bs!1327710 (not (= lambda!306989 lambda!306976))))

(assert (=> d!1797312 true))

(assert (=> d!1797312 true))

(assert (=> d!1797312 true))

(declare-fun lambda!306990 () Int)

(assert (=> bs!1327706 (not (= lambda!306990 lambda!306932))))

(assert (=> bs!1327707 (not (= lambda!306990 lambda!306975))))

(assert (=> bs!1327708 (not (= lambda!306990 lambda!306984))))

(assert (=> bs!1327709 (= lambda!306990 lambda!306930)))

(declare-fun bs!1327711 () Bool)

(assert (= bs!1327711 d!1797312))

(assert (=> bs!1327711 (not (= lambda!306990 lambda!306989))))

(assert (=> bs!1327706 (= (= (regOne!31890 r!7292) lt!2272312) (= lambda!306990 lambda!306933))))

(assert (=> bs!1327709 (not (= lambda!306990 lambda!306929))))

(assert (=> bs!1327710 (= (and (= (regOne!31890 r!7292) (regOne!31890 lt!2272304)) (= (regTwo!31890 r!7292) (regTwo!31890 lt!2272304))) (= lambda!306990 lambda!306976))))

(assert (=> d!1797312 true))

(assert (=> d!1797312 true))

(assert (=> d!1797312 true))

(assert (=> d!1797312 (= (Exists!2789 lambda!306989) (Exists!2789 lambda!306990))))

(declare-fun lt!2272415 () Unit!156288)

(declare-fun choose!43067 (Regex!15689 Regex!15689 List!63366) Unit!156288)

(assert (=> d!1797312 (= lt!2272415 (choose!43067 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326))))

(assert (=> d!1797312 (validRegex!7425 (regOne!31890 r!7292))))

(assert (=> d!1797312 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1418 (regOne!31890 r!7292) (regTwo!31890 r!7292) s!2326) lt!2272415)))

(declare-fun m!6651838 () Bool)

(assert (=> bs!1327711 m!6651838))

(declare-fun m!6651840 () Bool)

(assert (=> bs!1327711 m!6651840))

(declare-fun m!6651842 () Bool)

(assert (=> bs!1327711 m!6651842))

(assert (=> bs!1327711 m!6651778))

(assert (=> b!5695059 d!1797312))

(declare-fun d!1797326 () Bool)

(declare-fun isEmpty!35102 (Option!15698) Bool)

(assert (=> d!1797326 (= (isDefined!12401 (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326)) (not (isEmpty!35102 (findConcatSeparation!2112 (regOne!31890 r!7292) (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326))))))

(declare-fun bs!1327712 () Bool)

(assert (= bs!1327712 d!1797326))

(assert (=> bs!1327712 m!6651220))

(declare-fun m!6651844 () Bool)

(assert (=> bs!1327712 m!6651844))

(assert (=> b!5695059 d!1797326))

(declare-fun bs!1327713 () Bool)

(declare-fun b!5695759 () Bool)

(assert (= bs!1327713 (and b!5695759 b!5695065)))

(declare-fun lambda!306991 () Int)

(assert (=> bs!1327713 (not (= lambda!306991 lambda!306932))))

(declare-fun bs!1327714 () Bool)

(assert (= bs!1327714 (and b!5695759 b!5695537)))

(assert (=> bs!1327714 (= (and (= (reg!16018 r!7292) (reg!16018 lt!2272304)) (= r!7292 lt!2272304)) (= lambda!306991 lambda!306975))))

(declare-fun bs!1327715 () Bool)

(assert (= bs!1327715 (and b!5695759 d!1797300)))

(assert (=> bs!1327715 (not (= lambda!306991 lambda!306984))))

(declare-fun bs!1327716 () Bool)

(assert (= bs!1327716 (and b!5695759 d!1797312)))

(assert (=> bs!1327716 (not (= lambda!306991 lambda!306989))))

(assert (=> bs!1327713 (not (= lambda!306991 lambda!306933))))

(declare-fun bs!1327717 () Bool)

(assert (= bs!1327717 (and b!5695759 b!5695059)))

(assert (=> bs!1327717 (not (= lambda!306991 lambda!306929))))

(declare-fun bs!1327718 () Bool)

(assert (= bs!1327718 (and b!5695759 b!5695539)))

(assert (=> bs!1327718 (not (= lambda!306991 lambda!306976))))

(assert (=> bs!1327717 (not (= lambda!306991 lambda!306930))))

(assert (=> bs!1327716 (not (= lambda!306991 lambda!306990))))

(assert (=> b!5695759 true))

(assert (=> b!5695759 true))

(declare-fun bs!1327719 () Bool)

(declare-fun b!5695761 () Bool)

(assert (= bs!1327719 (and b!5695761 b!5695065)))

(declare-fun lambda!306992 () Int)

(assert (=> bs!1327719 (not (= lambda!306992 lambda!306932))))

(declare-fun bs!1327720 () Bool)

(assert (= bs!1327720 (and b!5695761 b!5695537)))

(assert (=> bs!1327720 (not (= lambda!306992 lambda!306975))))

(declare-fun bs!1327721 () Bool)

(assert (= bs!1327721 (and b!5695761 d!1797300)))

(assert (=> bs!1327721 (not (= lambda!306992 lambda!306984))))

(declare-fun bs!1327722 () Bool)

(assert (= bs!1327722 (and b!5695761 d!1797312)))

(assert (=> bs!1327722 (not (= lambda!306992 lambda!306989))))

(assert (=> bs!1327719 (= (= (regOne!31890 r!7292) lt!2272312) (= lambda!306992 lambda!306933))))

(declare-fun bs!1327723 () Bool)

(assert (= bs!1327723 (and b!5695761 b!5695759)))

(assert (=> bs!1327723 (not (= lambda!306992 lambda!306991))))

(declare-fun bs!1327724 () Bool)

(assert (= bs!1327724 (and b!5695761 b!5695059)))

(assert (=> bs!1327724 (not (= lambda!306992 lambda!306929))))

(declare-fun bs!1327725 () Bool)

(assert (= bs!1327725 (and b!5695761 b!5695539)))

(assert (=> bs!1327725 (= (and (= (regOne!31890 r!7292) (regOne!31890 lt!2272304)) (= (regTwo!31890 r!7292) (regTwo!31890 lt!2272304))) (= lambda!306992 lambda!306976))))

(assert (=> bs!1327724 (= lambda!306992 lambda!306930)))

(assert (=> bs!1327722 (= lambda!306992 lambda!306990)))

(assert (=> b!5695761 true))

(assert (=> b!5695761 true))

(declare-fun b!5695753 () Bool)

(declare-fun res!2405289 () Bool)

(declare-fun e!3504217 () Bool)

(assert (=> b!5695753 (=> res!2405289 e!3504217)))

(declare-fun call!433495 () Bool)

(assert (=> b!5695753 (= res!2405289 call!433495)))

(declare-fun e!3504218 () Bool)

(assert (=> b!5695753 (= e!3504218 e!3504217)))

(declare-fun b!5695754 () Bool)

(declare-fun e!3504214 () Bool)

(declare-fun e!3504219 () Bool)

(assert (=> b!5695754 (= e!3504214 e!3504219)))

(declare-fun res!2405291 () Bool)

(assert (=> b!5695754 (= res!2405291 (matchRSpec!2792 (regOne!31891 r!7292) s!2326))))

(assert (=> b!5695754 (=> res!2405291 e!3504219)))

(declare-fun bm!433489 () Bool)

(assert (=> bm!433489 (= call!433495 (isEmpty!35101 s!2326))))

(declare-fun b!5695755 () Bool)

(declare-fun e!3504215 () Bool)

(declare-fun e!3504213 () Bool)

(assert (=> b!5695755 (= e!3504215 e!3504213)))

(declare-fun res!2405290 () Bool)

(assert (=> b!5695755 (= res!2405290 (not ((_ is EmptyLang!15689) r!7292)))))

(assert (=> b!5695755 (=> (not res!2405290) (not e!3504213))))

(declare-fun b!5695756 () Bool)

(assert (=> b!5695756 (= e!3504215 call!433495)))

(declare-fun b!5695757 () Bool)

(assert (=> b!5695757 (= e!3504214 e!3504218)))

(declare-fun c!1002886 () Bool)

(assert (=> b!5695757 (= c!1002886 ((_ is Star!15689) r!7292))))

(declare-fun d!1797328 () Bool)

(declare-fun c!1002883 () Bool)

(assert (=> d!1797328 (= c!1002883 ((_ is EmptyExpr!15689) r!7292))))

(assert (=> d!1797328 (= (matchRSpec!2792 r!7292 s!2326) e!3504215)))

(declare-fun b!5695758 () Bool)

(declare-fun c!1002884 () Bool)

(assert (=> b!5695758 (= c!1002884 ((_ is ElementMatch!15689) r!7292))))

(declare-fun e!3504216 () Bool)

(assert (=> b!5695758 (= e!3504213 e!3504216)))

(declare-fun bm!433490 () Bool)

(declare-fun call!433494 () Bool)

(assert (=> bm!433490 (= call!433494 (Exists!2789 (ite c!1002886 lambda!306991 lambda!306992)))))

(assert (=> b!5695759 (= e!3504217 call!433494)))

(declare-fun b!5695760 () Bool)

(declare-fun c!1002885 () Bool)

(assert (=> b!5695760 (= c!1002885 ((_ is Union!15689) r!7292))))

(assert (=> b!5695760 (= e!3504216 e!3504214)))

(assert (=> b!5695761 (= e!3504218 call!433494)))

(declare-fun b!5695762 () Bool)

(assert (=> b!5695762 (= e!3504216 (= s!2326 (Cons!63242 (c!1002699 r!7292) Nil!63242)))))

(declare-fun b!5695763 () Bool)

(assert (=> b!5695763 (= e!3504219 (matchRSpec!2792 (regTwo!31891 r!7292) s!2326))))

(assert (= (and d!1797328 c!1002883) b!5695756))

(assert (= (and d!1797328 (not c!1002883)) b!5695755))

(assert (= (and b!5695755 res!2405290) b!5695758))

(assert (= (and b!5695758 c!1002884) b!5695762))

(assert (= (and b!5695758 (not c!1002884)) b!5695760))

(assert (= (and b!5695760 c!1002885) b!5695754))

(assert (= (and b!5695760 (not c!1002885)) b!5695757))

(assert (= (and b!5695754 (not res!2405291)) b!5695763))

(assert (= (and b!5695757 c!1002886) b!5695753))

(assert (= (and b!5695757 (not c!1002886)) b!5695761))

(assert (= (and b!5695753 (not res!2405289)) b!5695759))

(assert (= (or b!5695759 b!5695761) bm!433490))

(assert (= (or b!5695756 b!5695753) bm!433489))

(declare-fun m!6651846 () Bool)

(assert (=> b!5695754 m!6651846))

(assert (=> bm!433489 m!6651626))

(declare-fun m!6651848 () Bool)

(assert (=> bm!433490 m!6651848))

(declare-fun m!6651850 () Bool)

(assert (=> b!5695763 m!6651850))

(assert (=> b!5695055 d!1797328))

(declare-fun b!5695764 () Bool)

(declare-fun res!2405292 () Bool)

(declare-fun e!3504223 () Bool)

(assert (=> b!5695764 (=> (not res!2405292) (not e!3504223))))

(declare-fun call!433496 () Bool)

(assert (=> b!5695764 (= res!2405292 (not call!433496))))

(declare-fun b!5695765 () Bool)

(declare-fun e!3504222 () Bool)

(assert (=> b!5695765 (= e!3504222 (not (= (head!12075 s!2326) (c!1002699 r!7292))))))

(declare-fun b!5695766 () Bool)

(declare-fun res!2405294 () Bool)

(declare-fun e!3504225 () Bool)

(assert (=> b!5695766 (=> res!2405294 e!3504225)))

(assert (=> b!5695766 (= res!2405294 e!3504223)))

(declare-fun res!2405296 () Bool)

(assert (=> b!5695766 (=> (not res!2405296) (not e!3504223))))

(declare-fun lt!2272416 () Bool)

(assert (=> b!5695766 (= res!2405296 lt!2272416)))

(declare-fun b!5695767 () Bool)

(declare-fun res!2405298 () Bool)

(assert (=> b!5695767 (=> res!2405298 e!3504225)))

(assert (=> b!5695767 (= res!2405298 (not ((_ is ElementMatch!15689) r!7292)))))

(declare-fun e!3504226 () Bool)

(assert (=> b!5695767 (= e!3504226 e!3504225)))

(declare-fun b!5695769 () Bool)

(declare-fun res!2405295 () Bool)

(assert (=> b!5695769 (=> (not res!2405295) (not e!3504223))))

(assert (=> b!5695769 (= res!2405295 (isEmpty!35101 (tail!11170 s!2326)))))

(declare-fun b!5695770 () Bool)

(declare-fun e!3504220 () Bool)

(assert (=> b!5695770 (= e!3504220 e!3504222)))

(declare-fun res!2405293 () Bool)

(assert (=> b!5695770 (=> res!2405293 e!3504222)))

(assert (=> b!5695770 (= res!2405293 call!433496)))

(declare-fun b!5695771 () Bool)

(assert (=> b!5695771 (= e!3504225 e!3504220)))

(declare-fun res!2405299 () Bool)

(assert (=> b!5695771 (=> (not res!2405299) (not e!3504220))))

(assert (=> b!5695771 (= res!2405299 (not lt!2272416))))

(declare-fun b!5695768 () Bool)

(declare-fun e!3504224 () Bool)

(assert (=> b!5695768 (= e!3504224 (= lt!2272416 call!433496))))

(declare-fun d!1797330 () Bool)

(assert (=> d!1797330 e!3504224))

(declare-fun c!1002888 () Bool)

(assert (=> d!1797330 (= c!1002888 ((_ is EmptyExpr!15689) r!7292))))

(declare-fun e!3504221 () Bool)

(assert (=> d!1797330 (= lt!2272416 e!3504221)))

(declare-fun c!1002889 () Bool)

(assert (=> d!1797330 (= c!1002889 (isEmpty!35101 s!2326))))

(assert (=> d!1797330 (validRegex!7425 r!7292)))

(assert (=> d!1797330 (= (matchR!7874 r!7292 s!2326) lt!2272416)))

(declare-fun bm!433491 () Bool)

(assert (=> bm!433491 (= call!433496 (isEmpty!35101 s!2326))))

(declare-fun b!5695772 () Bool)

(assert (=> b!5695772 (= e!3504226 (not lt!2272416))))

(declare-fun b!5695773 () Bool)

(assert (=> b!5695773 (= e!3504221 (matchR!7874 (derivativeStep!4499 r!7292 (head!12075 s!2326)) (tail!11170 s!2326)))))

(declare-fun b!5695774 () Bool)

(assert (=> b!5695774 (= e!3504223 (= (head!12075 s!2326) (c!1002699 r!7292)))))

(declare-fun b!5695775 () Bool)

(declare-fun res!2405297 () Bool)

(assert (=> b!5695775 (=> res!2405297 e!3504222)))

(assert (=> b!5695775 (= res!2405297 (not (isEmpty!35101 (tail!11170 s!2326))))))

(declare-fun b!5695776 () Bool)

(assert (=> b!5695776 (= e!3504221 (nullable!5721 r!7292))))

(declare-fun b!5695777 () Bool)

(assert (=> b!5695777 (= e!3504224 e!3504226)))

(declare-fun c!1002887 () Bool)

(assert (=> b!5695777 (= c!1002887 ((_ is EmptyLang!15689) r!7292))))

(assert (= (and d!1797330 c!1002889) b!5695776))

(assert (= (and d!1797330 (not c!1002889)) b!5695773))

(assert (= (and d!1797330 c!1002888) b!5695768))

(assert (= (and d!1797330 (not c!1002888)) b!5695777))

(assert (= (and b!5695777 c!1002887) b!5695772))

(assert (= (and b!5695777 (not c!1002887)) b!5695767))

(assert (= (and b!5695767 (not res!2405298)) b!5695766))

(assert (= (and b!5695766 res!2405296) b!5695764))

(assert (= (and b!5695764 res!2405292) b!5695769))

(assert (= (and b!5695769 res!2405295) b!5695774))

(assert (= (and b!5695766 (not res!2405294)) b!5695771))

(assert (= (and b!5695771 res!2405299) b!5695770))

(assert (= (and b!5695770 (not res!2405293)) b!5695775))

(assert (= (and b!5695775 (not res!2405297)) b!5695765))

(assert (= (or b!5695768 b!5695764 b!5695770) bm!433491))

(declare-fun m!6651852 () Bool)

(assert (=> b!5695776 m!6651852))

(assert (=> d!1797330 m!6651626))

(assert (=> d!1797330 m!6651256))

(assert (=> bm!433491 m!6651626))

(assert (=> b!5695773 m!6651630))

(assert (=> b!5695773 m!6651630))

(declare-fun m!6651854 () Bool)

(assert (=> b!5695773 m!6651854))

(assert (=> b!5695773 m!6651634))

(assert (=> b!5695773 m!6651854))

(assert (=> b!5695773 m!6651634))

(declare-fun m!6651856 () Bool)

(assert (=> b!5695773 m!6651856))

(assert (=> b!5695774 m!6651630))

(assert (=> b!5695769 m!6651634))

(assert (=> b!5695769 m!6651634))

(assert (=> b!5695769 m!6651638))

(assert (=> b!5695765 m!6651630))

(assert (=> b!5695775 m!6651634))

(assert (=> b!5695775 m!6651634))

(assert (=> b!5695775 m!6651638))

(assert (=> b!5695055 d!1797330))

(declare-fun d!1797332 () Bool)

(assert (=> d!1797332 (= (matchR!7874 r!7292 s!2326) (matchRSpec!2792 r!7292 s!2326))))

(declare-fun lt!2272417 () Unit!156288)

(assert (=> d!1797332 (= lt!2272417 (choose!43062 r!7292 s!2326))))

(assert (=> d!1797332 (validRegex!7425 r!7292)))

(assert (=> d!1797332 (= (mainMatchTheorem!2792 r!7292 s!2326) lt!2272417)))

(declare-fun bs!1327726 () Bool)

(assert (= bs!1327726 d!1797332))

(assert (=> bs!1327726 m!6651236))

(assert (=> bs!1327726 m!6651234))

(declare-fun m!6651858 () Bool)

(assert (=> bs!1327726 m!6651858))

(assert (=> bs!1327726 m!6651256))

(assert (=> b!5695055 d!1797332))

(declare-fun d!1797334 () Bool)

(declare-fun c!1002890 () Bool)

(assert (=> d!1797334 (= c!1002890 (isEmpty!35101 s!2326))))

(declare-fun e!3504227 () Bool)

(assert (=> d!1797334 (= (matchZipper!1827 lt!2272310 s!2326) e!3504227)))

(declare-fun b!5695778 () Bool)

(assert (=> b!5695778 (= e!3504227 (nullableZipper!1647 lt!2272310))))

(declare-fun b!5695779 () Bool)

(assert (=> b!5695779 (= e!3504227 (matchZipper!1827 (derivationStepZipper!1772 lt!2272310 (head!12075 s!2326)) (tail!11170 s!2326)))))

(assert (= (and d!1797334 c!1002890) b!5695778))

(assert (= (and d!1797334 (not c!1002890)) b!5695779))

(assert (=> d!1797334 m!6651626))

(declare-fun m!6651860 () Bool)

(assert (=> b!5695778 m!6651860))

(assert (=> b!5695779 m!6651630))

(assert (=> b!5695779 m!6651630))

(declare-fun m!6651862 () Bool)

(assert (=> b!5695779 m!6651862))

(assert (=> b!5695779 m!6651634))

(assert (=> b!5695779 m!6651862))

(assert (=> b!5695779 m!6651634))

(declare-fun m!6651864 () Bool)

(assert (=> b!5695779 m!6651864))

(assert (=> b!5695075 d!1797334))

(declare-fun d!1797336 () Bool)

(declare-fun c!1002891 () Bool)

(assert (=> d!1797336 (= c!1002891 (isEmpty!35101 (t!376684 s!2326)))))

(declare-fun e!3504228 () Bool)

(assert (=> d!1797336 (= (matchZipper!1827 lt!2272308 (t!376684 s!2326)) e!3504228)))

(declare-fun b!5695780 () Bool)

(assert (=> b!5695780 (= e!3504228 (nullableZipper!1647 lt!2272308))))

(declare-fun b!5695781 () Bool)

(assert (=> b!5695781 (= e!3504228 (matchZipper!1827 (derivationStepZipper!1772 lt!2272308 (head!12075 (t!376684 s!2326))) (tail!11170 (t!376684 s!2326))))))

(assert (= (and d!1797336 c!1002891) b!5695780))

(assert (= (and d!1797336 (not c!1002891)) b!5695781))

(assert (=> d!1797336 m!6651542))

(declare-fun m!6651866 () Bool)

(assert (=> b!5695780 m!6651866))

(assert (=> b!5695781 m!6651548))

(assert (=> b!5695781 m!6651548))

(declare-fun m!6651868 () Bool)

(assert (=> b!5695781 m!6651868))

(assert (=> b!5695781 m!6651552))

(assert (=> b!5695781 m!6651868))

(assert (=> b!5695781 m!6651552))

(declare-fun m!6651870 () Bool)

(assert (=> b!5695781 m!6651870))

(assert (=> b!5695075 d!1797336))

(declare-fun d!1797338 () Bool)

(assert (=> d!1797338 (= (isEmpty!35098 (t!376685 (exprs!5573 (h!69692 zl!343)))) ((_ is Nil!63243) (t!376685 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> b!5695076 d!1797338))

(declare-fun d!1797340 () Bool)

(declare-fun e!3504231 () Bool)

(assert (=> d!1797340 e!3504231))

(declare-fun res!2405302 () Bool)

(assert (=> d!1797340 (=> (not res!2405302) (not e!3504231))))

(declare-fun lt!2272420 () List!63368)

(declare-fun noDuplicate!1627 (List!63368) Bool)

(assert (=> d!1797340 (= res!2405302 (noDuplicate!1627 lt!2272420))))

(declare-fun choose!43069 ((InoxSet Context!10146)) List!63368)

(assert (=> d!1797340 (= lt!2272420 (choose!43069 z!1189))))

(assert (=> d!1797340 (= (toList!9473 z!1189) lt!2272420)))

(declare-fun b!5695784 () Bool)

(declare-fun content!11467 (List!63368) (InoxSet Context!10146))

(assert (=> b!5695784 (= e!3504231 (= (content!11467 lt!2272420) z!1189))))

(assert (= (and d!1797340 res!2405302) b!5695784))

(declare-fun m!6651872 () Bool)

(assert (=> d!1797340 m!6651872))

(declare-fun m!6651874 () Bool)

(assert (=> d!1797340 m!6651874))

(declare-fun m!6651876 () Bool)

(assert (=> b!5695784 m!6651876))

(assert (=> b!5695056 d!1797340))

(declare-fun d!1797342 () Bool)

(declare-fun lt!2272421 () Regex!15689)

(assert (=> d!1797342 (validRegex!7425 lt!2272421)))

(assert (=> d!1797342 (= lt!2272421 (generalisedUnion!1552 (unfocusZipperList!1117 (Cons!63244 lt!2272305 Nil!63244))))))

(assert (=> d!1797342 (= (unfocusZipper!1431 (Cons!63244 lt!2272305 Nil!63244)) lt!2272421)))

(declare-fun bs!1327727 () Bool)

(assert (= bs!1327727 d!1797342))

(declare-fun m!6651878 () Bool)

(assert (=> bs!1327727 m!6651878))

(declare-fun m!6651880 () Bool)

(assert (=> bs!1327727 m!6651880))

(assert (=> bs!1327727 m!6651880))

(declare-fun m!6651882 () Bool)

(assert (=> bs!1327727 m!6651882))

(assert (=> b!5695052 d!1797342))

(declare-fun bs!1327728 () Bool)

(declare-fun d!1797344 () Bool)

(assert (= bs!1327728 (and d!1797344 d!1797184)))

(declare-fun lambda!306995 () Int)

(assert (=> bs!1327728 (= lambda!306995 lambda!306946)))

(declare-fun bs!1327729 () Bool)

(assert (= bs!1327729 (and d!1797344 d!1797188)))

(assert (=> bs!1327729 (= lambda!306995 lambda!306956)))

(declare-fun b!5695805 () Bool)

(declare-fun e!3504248 () Bool)

(declare-fun e!3504249 () Bool)

(assert (=> b!5695805 (= e!3504248 e!3504249)))

(declare-fun c!1002903 () Bool)

(assert (=> b!5695805 (= c!1002903 (isEmpty!35098 (tail!11169 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun b!5695806 () Bool)

(declare-fun e!3504245 () Regex!15689)

(assert (=> b!5695806 (= e!3504245 (Concat!24534 (h!69691 (exprs!5573 (h!69692 zl!343))) (generalisedConcat!1304 (t!376685 (exprs!5573 (h!69692 zl!343))))))))

(declare-fun b!5695807 () Bool)

(declare-fun e!3504244 () Bool)

(assert (=> b!5695807 (= e!3504244 (isEmpty!35098 (t!376685 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun b!5695808 () Bool)

(declare-fun lt!2272424 () Regex!15689)

(declare-fun isConcat!728 (Regex!15689) Bool)

(assert (=> b!5695808 (= e!3504249 (isConcat!728 lt!2272424))))

(declare-fun b!5695809 () Bool)

(declare-fun e!3504247 () Regex!15689)

(assert (=> b!5695809 (= e!3504247 e!3504245)))

(declare-fun c!1002902 () Bool)

(assert (=> b!5695809 (= c!1002902 ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343))))))

(declare-fun b!5695810 () Bool)

(declare-fun isEmptyExpr!1205 (Regex!15689) Bool)

(assert (=> b!5695810 (= e!3504248 (isEmptyExpr!1205 lt!2272424))))

(declare-fun b!5695811 () Bool)

(assert (=> b!5695811 (= e!3504245 EmptyExpr!15689)))

(declare-fun b!5695812 () Bool)

(declare-fun e!3504246 () Bool)

(assert (=> b!5695812 (= e!3504246 e!3504248)))

(declare-fun c!1002901 () Bool)

(assert (=> b!5695812 (= c!1002901 (isEmpty!35098 (exprs!5573 (h!69692 zl!343))))))

(declare-fun b!5695813 () Bool)

(assert (=> b!5695813 (= e!3504249 (= lt!2272424 (head!12074 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> d!1797344 e!3504246))

(declare-fun res!2405307 () Bool)

(assert (=> d!1797344 (=> (not res!2405307) (not e!3504246))))

(assert (=> d!1797344 (= res!2405307 (validRegex!7425 lt!2272424))))

(assert (=> d!1797344 (= lt!2272424 e!3504247)))

(declare-fun c!1002900 () Bool)

(assert (=> d!1797344 (= c!1002900 e!3504244)))

(declare-fun res!2405308 () Bool)

(assert (=> d!1797344 (=> (not res!2405308) (not e!3504244))))

(assert (=> d!1797344 (= res!2405308 ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343))))))

(assert (=> d!1797344 (forall!14830 (exprs!5573 (h!69692 zl!343)) lambda!306995)))

(assert (=> d!1797344 (= (generalisedConcat!1304 (exprs!5573 (h!69692 zl!343))) lt!2272424)))

(declare-fun b!5695814 () Bool)

(assert (=> b!5695814 (= e!3504247 (h!69691 (exprs!5573 (h!69692 zl!343))))))

(assert (= (and d!1797344 res!2405308) b!5695807))

(assert (= (and d!1797344 c!1002900) b!5695814))

(assert (= (and d!1797344 (not c!1002900)) b!5695809))

(assert (= (and b!5695809 c!1002902) b!5695806))

(assert (= (and b!5695809 (not c!1002902)) b!5695811))

(assert (= (and d!1797344 res!2405307) b!5695812))

(assert (= (and b!5695812 c!1002901) b!5695810))

(assert (= (and b!5695812 (not c!1002901)) b!5695805))

(assert (= (and b!5695805 c!1002903) b!5695813))

(assert (= (and b!5695805 (not c!1002903)) b!5695808))

(declare-fun m!6651884 () Bool)

(assert (=> b!5695812 m!6651884))

(declare-fun m!6651886 () Bool)

(assert (=> b!5695808 m!6651886))

(assert (=> b!5695807 m!6651254))

(declare-fun m!6651888 () Bool)

(assert (=> b!5695805 m!6651888))

(assert (=> b!5695805 m!6651888))

(declare-fun m!6651890 () Bool)

(assert (=> b!5695805 m!6651890))

(declare-fun m!6651892 () Bool)

(assert (=> b!5695806 m!6651892))

(declare-fun m!6651894 () Bool)

(assert (=> d!1797344 m!6651894))

(declare-fun m!6651896 () Bool)

(assert (=> d!1797344 m!6651896))

(declare-fun m!6651898 () Bool)

(assert (=> b!5695810 m!6651898))

(declare-fun m!6651900 () Bool)

(assert (=> b!5695813 m!6651900))

(assert (=> b!5695074 d!1797344))

(declare-fun bs!1327730 () Bool)

(declare-fun d!1797346 () Bool)

(assert (= bs!1327730 (and d!1797346 d!1797184)))

(declare-fun lambda!306998 () Int)

(assert (=> bs!1327730 (= lambda!306998 lambda!306946)))

(declare-fun bs!1327731 () Bool)

(assert (= bs!1327731 (and d!1797346 d!1797188)))

(assert (=> bs!1327731 (= lambda!306998 lambda!306956)))

(declare-fun bs!1327732 () Bool)

(assert (= bs!1327732 (and d!1797346 d!1797344)))

(assert (=> bs!1327732 (= lambda!306998 lambda!306995)))

(assert (=> d!1797346 (= (inv!82469 (h!69692 zl!343)) (forall!14830 (exprs!5573 (h!69692 zl!343)) lambda!306998))))

(declare-fun bs!1327733 () Bool)

(assert (= bs!1327733 d!1797346))

(declare-fun m!6651902 () Bool)

(assert (=> bs!1327733 m!6651902))

(assert (=> b!5695054 d!1797346))

(declare-fun d!1797348 () Bool)

(assert (=> d!1797348 (= (flatMap!1302 lt!2272310 lambda!306931) (choose!43057 lt!2272310 lambda!306931))))

(declare-fun bs!1327734 () Bool)

(assert (= bs!1327734 d!1797348))

(declare-fun m!6651904 () Bool)

(assert (=> bs!1327734 m!6651904))

(assert (=> b!5695050 d!1797348))

(declare-fun bm!433492 () Bool)

(declare-fun call!433497 () (InoxSet Context!10146))

(assert (=> bm!433492 (= call!433497 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 lt!2272305)) (Context!10147 (t!376685 (exprs!5573 lt!2272305))) (h!69690 s!2326)))))

(declare-fun b!5695815 () Bool)

(declare-fun e!3504252 () (InoxSet Context!10146))

(assert (=> b!5695815 (= e!3504252 ((as const (Array Context!10146 Bool)) false))))

(declare-fun e!3504250 () (InoxSet Context!10146))

(declare-fun b!5695816 () Bool)

(assert (=> b!5695816 (= e!3504250 ((_ map or) call!433497 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 lt!2272305))) (h!69690 s!2326))))))

(declare-fun b!5695817 () Bool)

(assert (=> b!5695817 (= e!3504252 call!433497)))

(declare-fun b!5695818 () Bool)

(assert (=> b!5695818 (= e!3504250 e!3504252)))

(declare-fun c!1002905 () Bool)

(assert (=> b!5695818 (= c!1002905 ((_ is Cons!63243) (exprs!5573 lt!2272305)))))

(declare-fun d!1797350 () Bool)

(declare-fun c!1002904 () Bool)

(declare-fun e!3504251 () Bool)

(assert (=> d!1797350 (= c!1002904 e!3504251)))

(declare-fun res!2405309 () Bool)

(assert (=> d!1797350 (=> (not res!2405309) (not e!3504251))))

(assert (=> d!1797350 (= res!2405309 ((_ is Cons!63243) (exprs!5573 lt!2272305)))))

(assert (=> d!1797350 (= (derivationStepZipperUp!957 lt!2272305 (h!69690 s!2326)) e!3504250)))

(declare-fun b!5695819 () Bool)

(assert (=> b!5695819 (= e!3504251 (nullable!5721 (h!69691 (exprs!5573 lt!2272305))))))

(assert (= (and d!1797350 res!2405309) b!5695819))

(assert (= (and d!1797350 c!1002904) b!5695816))

(assert (= (and d!1797350 (not c!1002904)) b!5695818))

(assert (= (and b!5695818 c!1002905) b!5695817))

(assert (= (and b!5695818 (not c!1002905)) b!5695815))

(assert (= (or b!5695816 b!5695817) bm!433492))

(declare-fun m!6651906 () Bool)

(assert (=> bm!433492 m!6651906))

(declare-fun m!6651908 () Bool)

(assert (=> b!5695816 m!6651908))

(declare-fun m!6651910 () Bool)

(assert (=> b!5695819 m!6651910))

(assert (=> b!5695050 d!1797350))

(declare-fun d!1797352 () Bool)

(assert (=> d!1797352 (= (flatMap!1302 lt!2272310 lambda!306931) (dynLambda!24745 lambda!306931 lt!2272305))))

(declare-fun lt!2272425 () Unit!156288)

(assert (=> d!1797352 (= lt!2272425 (choose!43058 lt!2272310 lt!2272305 lambda!306931))))

(assert (=> d!1797352 (= lt!2272310 (store ((as const (Array Context!10146 Bool)) false) lt!2272305 true))))

(assert (=> d!1797352 (= (lemmaFlatMapOnSingletonSet!834 lt!2272310 lt!2272305 lambda!306931) lt!2272425)))

(declare-fun b_lambda!215307 () Bool)

(assert (=> (not b_lambda!215307) (not d!1797352)))

(declare-fun bs!1327735 () Bool)

(assert (= bs!1327735 d!1797352))

(assert (=> bs!1327735 m!6651330))

(declare-fun m!6651912 () Bool)

(assert (=> bs!1327735 m!6651912))

(declare-fun m!6651914 () Bool)

(assert (=> bs!1327735 m!6651914))

(assert (=> bs!1327735 m!6651328))

(assert (=> b!5695050 d!1797352))

(declare-fun bs!1327736 () Bool)

(declare-fun d!1797354 () Bool)

(assert (= bs!1327736 (and d!1797354 b!5695071)))

(declare-fun lambda!307001 () Int)

(assert (=> bs!1327736 (= lambda!307001 lambda!306931)))

(assert (=> d!1797354 true))

(assert (=> d!1797354 (= (derivationStepZipper!1772 lt!2272310 (h!69690 s!2326)) (flatMap!1302 lt!2272310 lambda!307001))))

(declare-fun bs!1327737 () Bool)

(assert (= bs!1327737 d!1797354))

(declare-fun m!6651916 () Bool)

(assert (=> bs!1327737 m!6651916))

(assert (=> b!5695050 d!1797354))

(declare-fun d!1797356 () Bool)

(declare-fun nullableFct!1793 (Regex!15689) Bool)

(assert (=> d!1797356 (= (nullable!5721 (regOne!31890 (regOne!31890 r!7292))) (nullableFct!1793 (regOne!31890 (regOne!31890 r!7292))))))

(declare-fun bs!1327738 () Bool)

(assert (= bs!1327738 d!1797356))

(declare-fun m!6651918 () Bool)

(assert (=> bs!1327738 m!6651918))

(assert (=> b!5695049 d!1797356))

(declare-fun d!1797358 () Bool)

(assert (=> d!1797358 (= (flatMap!1302 z!1189 lambda!306931) (dynLambda!24745 lambda!306931 (h!69692 zl!343)))))

(declare-fun lt!2272426 () Unit!156288)

(assert (=> d!1797358 (= lt!2272426 (choose!43058 z!1189 (h!69692 zl!343) lambda!306931))))

(assert (=> d!1797358 (= z!1189 (store ((as const (Array Context!10146 Bool)) false) (h!69692 zl!343) true))))

(assert (=> d!1797358 (= (lemmaFlatMapOnSingletonSet!834 z!1189 (h!69692 zl!343) lambda!306931) lt!2272426)))

(declare-fun b_lambda!215309 () Bool)

(assert (=> (not b_lambda!215309) (not d!1797358)))

(declare-fun bs!1327739 () Bool)

(assert (= bs!1327739 d!1797358))

(assert (=> bs!1327739 m!6651316))

(declare-fun m!6651920 () Bool)

(assert (=> bs!1327739 m!6651920))

(declare-fun m!6651922 () Bool)

(assert (=> bs!1327739 m!6651922))

(declare-fun m!6651924 () Bool)

(assert (=> bs!1327739 m!6651924))

(assert (=> b!5695071 d!1797358))

(declare-fun d!1797360 () Bool)

(assert (=> d!1797360 (= (nullable!5721 (h!69691 (exprs!5573 (h!69692 zl!343)))) (nullableFct!1793 (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun bs!1327740 () Bool)

(assert (= bs!1327740 d!1797360))

(declare-fun m!6651926 () Bool)

(assert (=> bs!1327740 m!6651926))

(assert (=> b!5695071 d!1797360))

(declare-fun bm!433493 () Bool)

(declare-fun call!433498 () (InoxSet Context!10146))

(assert (=> bm!433493 (= call!433498 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343))))))) (Context!10147 (t!376685 (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343)))))))) (h!69690 s!2326)))))

(declare-fun b!5695822 () Bool)

(declare-fun e!3504255 () (InoxSet Context!10146))

(assert (=> b!5695822 (= e!3504255 ((as const (Array Context!10146 Bool)) false))))

(declare-fun e!3504253 () (InoxSet Context!10146))

(declare-fun b!5695823 () Bool)

(assert (=> b!5695823 (= e!3504253 ((_ map or) call!433498 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343)))))))) (h!69690 s!2326))))))

(declare-fun b!5695824 () Bool)

(assert (=> b!5695824 (= e!3504255 call!433498)))

(declare-fun b!5695825 () Bool)

(assert (=> b!5695825 (= e!3504253 e!3504255)))

(declare-fun c!1002909 () Bool)

(assert (=> b!5695825 (= c!1002909 ((_ is Cons!63243) (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343))))))))))

(declare-fun d!1797362 () Bool)

(declare-fun c!1002908 () Bool)

(declare-fun e!3504254 () Bool)

(assert (=> d!1797362 (= c!1002908 e!3504254)))

(declare-fun res!2405310 () Bool)

(assert (=> d!1797362 (=> (not res!2405310) (not e!3504254))))

(assert (=> d!1797362 (= res!2405310 ((_ is Cons!63243) (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343))))))))))

(assert (=> d!1797362 (= (derivationStepZipperUp!957 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343))))) (h!69690 s!2326)) e!3504253)))

(declare-fun b!5695826 () Bool)

(assert (=> b!5695826 (= e!3504254 (nullable!5721 (h!69691 (exprs!5573 (Context!10147 (Cons!63243 (h!69691 (exprs!5573 (h!69692 zl!343))) (t!376685 (exprs!5573 (h!69692 zl!343)))))))))))

(assert (= (and d!1797362 res!2405310) b!5695826))

(assert (= (and d!1797362 c!1002908) b!5695823))

(assert (= (and d!1797362 (not c!1002908)) b!5695825))

(assert (= (and b!5695825 c!1002909) b!5695824))

(assert (= (and b!5695825 (not c!1002909)) b!5695822))

(assert (= (or b!5695823 b!5695824) bm!433493))

(declare-fun m!6651928 () Bool)

(assert (=> bm!433493 m!6651928))

(declare-fun m!6651930 () Bool)

(assert (=> b!5695823 m!6651930))

(declare-fun m!6651932 () Bool)

(assert (=> b!5695826 m!6651932))

(assert (=> b!5695071 d!1797362))

(declare-fun bm!433494 () Bool)

(declare-fun call!433499 () (InoxSet Context!10146))

(assert (=> bm!433494 (= call!433499 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 (h!69692 zl!343))) (Context!10147 (t!376685 (exprs!5573 (h!69692 zl!343)))) (h!69690 s!2326)))))

(declare-fun b!5695827 () Bool)

(declare-fun e!3504258 () (InoxSet Context!10146))

(assert (=> b!5695827 (= e!3504258 ((as const (Array Context!10146 Bool)) false))))

(declare-fun e!3504256 () (InoxSet Context!10146))

(declare-fun b!5695828 () Bool)

(assert (=> b!5695828 (= e!3504256 ((_ map or) call!433499 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 (h!69692 zl!343)))) (h!69690 s!2326))))))

(declare-fun b!5695829 () Bool)

(assert (=> b!5695829 (= e!3504258 call!433499)))

(declare-fun b!5695830 () Bool)

(assert (=> b!5695830 (= e!3504256 e!3504258)))

(declare-fun c!1002911 () Bool)

(assert (=> b!5695830 (= c!1002911 ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343))))))

(declare-fun d!1797364 () Bool)

(declare-fun c!1002910 () Bool)

(declare-fun e!3504257 () Bool)

(assert (=> d!1797364 (= c!1002910 e!3504257)))

(declare-fun res!2405311 () Bool)

(assert (=> d!1797364 (=> (not res!2405311) (not e!3504257))))

(assert (=> d!1797364 (= res!2405311 ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343))))))

(assert (=> d!1797364 (= (derivationStepZipperUp!957 (h!69692 zl!343) (h!69690 s!2326)) e!3504256)))

(declare-fun b!5695831 () Bool)

(assert (=> b!5695831 (= e!3504257 (nullable!5721 (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(assert (= (and d!1797364 res!2405311) b!5695831))

(assert (= (and d!1797364 c!1002910) b!5695828))

(assert (= (and d!1797364 (not c!1002910)) b!5695830))

(assert (= (and b!5695830 c!1002911) b!5695829))

(assert (= (and b!5695830 (not c!1002911)) b!5695827))

(assert (= (or b!5695828 b!5695829) bm!433494))

(declare-fun m!6651934 () Bool)

(assert (=> bm!433494 m!6651934))

(declare-fun m!6651936 () Bool)

(assert (=> b!5695828 m!6651936))

(assert (=> b!5695831 m!6651320))

(assert (=> b!5695071 d!1797364))

(declare-fun d!1797366 () Bool)

(assert (=> d!1797366 (= (flatMap!1302 z!1189 lambda!306931) (choose!43057 z!1189 lambda!306931))))

(declare-fun bs!1327741 () Bool)

(assert (= bs!1327741 d!1797366))

(declare-fun m!6651938 () Bool)

(assert (=> bs!1327741 m!6651938))

(assert (=> b!5695071 d!1797366))

(declare-fun b!5695854 () Bool)

(declare-fun e!3504274 () (InoxSet Context!10146))

(declare-fun e!3504271 () (InoxSet Context!10146))

(assert (=> b!5695854 (= e!3504274 e!3504271)))

(declare-fun c!1002922 () Bool)

(assert (=> b!5695854 (= c!1002922 ((_ is Concat!24534) (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun b!5695855 () Bool)

(declare-fun e!3504272 () Bool)

(assert (=> b!5695855 (= e!3504272 (nullable!5721 (regOne!31890 (h!69691 (exprs!5573 (h!69692 zl!343))))))))

(declare-fun call!433513 () (InoxSet Context!10146))

(declare-fun c!1002923 () Bool)

(declare-fun c!1002924 () Bool)

(declare-fun bm!433507 () Bool)

(declare-fun call!433515 () List!63367)

(assert (=> bm!433507 (= call!433513 (derivationStepZipperDown!1031 (ite c!1002923 (regTwo!31891 (h!69691 (exprs!5573 (h!69692 zl!343)))) (ite c!1002924 (regTwo!31890 (h!69691 (exprs!5573 (h!69692 zl!343)))) (ite c!1002922 (regOne!31890 (h!69691 (exprs!5573 (h!69692 zl!343)))) (reg!16018 (h!69691 (exprs!5573 (h!69692 zl!343))))))) (ite (or c!1002923 c!1002924) lt!2272283 (Context!10147 call!433515)) (h!69690 s!2326)))))

(declare-fun call!433514 () List!63367)

(declare-fun call!433512 () (InoxSet Context!10146))

(declare-fun bm!433508 () Bool)

(assert (=> bm!433508 (= call!433512 (derivationStepZipperDown!1031 (ite c!1002923 (regOne!31891 (h!69691 (exprs!5573 (h!69692 zl!343)))) (regOne!31890 (h!69691 (exprs!5573 (h!69692 zl!343))))) (ite c!1002923 lt!2272283 (Context!10147 call!433514)) (h!69690 s!2326)))))

(declare-fun bm!433509 () Bool)

(declare-fun call!433516 () (InoxSet Context!10146))

(declare-fun call!433517 () (InoxSet Context!10146))

(assert (=> bm!433509 (= call!433516 call!433517)))

(declare-fun b!5695856 () Bool)

(declare-fun e!3504276 () (InoxSet Context!10146))

(declare-fun e!3504275 () (InoxSet Context!10146))

(assert (=> b!5695856 (= e!3504276 e!3504275)))

(assert (=> b!5695856 (= c!1002923 ((_ is Union!15689) (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(declare-fun bm!433510 () Bool)

(declare-fun $colon$colon!1714 (List!63367 Regex!15689) List!63367)

(assert (=> bm!433510 (= call!433514 ($colon$colon!1714 (exprs!5573 lt!2272283) (ite (or c!1002924 c!1002922) (regTwo!31890 (h!69691 (exprs!5573 (h!69692 zl!343)))) (h!69691 (exprs!5573 (h!69692 zl!343))))))))

(declare-fun b!5695857 () Bool)

(assert (=> b!5695857 (= e!3504275 ((_ map or) call!433512 call!433513))))

(declare-fun d!1797368 () Bool)

(declare-fun c!1002926 () Bool)

(assert (=> d!1797368 (= c!1002926 (and ((_ is ElementMatch!15689) (h!69691 (exprs!5573 (h!69692 zl!343)))) (= (c!1002699 (h!69691 (exprs!5573 (h!69692 zl!343)))) (h!69690 s!2326))))))

(assert (=> d!1797368 (= (derivationStepZipperDown!1031 (h!69691 (exprs!5573 (h!69692 zl!343))) lt!2272283 (h!69690 s!2326)) e!3504276)))

(declare-fun b!5695858 () Bool)

(assert (=> b!5695858 (= e!3504274 ((_ map or) call!433512 call!433517))))

(declare-fun b!5695859 () Bool)

(assert (=> b!5695859 (= e!3504276 (store ((as const (Array Context!10146 Bool)) false) lt!2272283 true))))

(declare-fun b!5695860 () Bool)

(assert (=> b!5695860 (= c!1002924 e!3504272)))

(declare-fun res!2405314 () Bool)

(assert (=> b!5695860 (=> (not res!2405314) (not e!3504272))))

(assert (=> b!5695860 (= res!2405314 ((_ is Concat!24534) (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> b!5695860 (= e!3504275 e!3504274)))

(declare-fun bm!433511 () Bool)

(assert (=> bm!433511 (= call!433517 call!433513)))

(declare-fun bm!433512 () Bool)

(assert (=> bm!433512 (= call!433515 call!433514)))

(declare-fun b!5695861 () Bool)

(declare-fun e!3504273 () (InoxSet Context!10146))

(assert (=> b!5695861 (= e!3504273 ((as const (Array Context!10146 Bool)) false))))

(declare-fun b!5695862 () Bool)

(assert (=> b!5695862 (= e!3504271 call!433516)))

(declare-fun b!5695863 () Bool)

(assert (=> b!5695863 (= e!3504273 call!433516)))

(declare-fun b!5695864 () Bool)

(declare-fun c!1002925 () Bool)

(assert (=> b!5695864 (= c!1002925 ((_ is Star!15689) (h!69691 (exprs!5573 (h!69692 zl!343)))))))

(assert (=> b!5695864 (= e!3504271 e!3504273)))

(assert (= (and d!1797368 c!1002926) b!5695859))

(assert (= (and d!1797368 (not c!1002926)) b!5695856))

(assert (= (and b!5695856 c!1002923) b!5695857))

(assert (= (and b!5695856 (not c!1002923)) b!5695860))

(assert (= (and b!5695860 res!2405314) b!5695855))

(assert (= (and b!5695860 c!1002924) b!5695858))

(assert (= (and b!5695860 (not c!1002924)) b!5695854))

(assert (= (and b!5695854 c!1002922) b!5695862))

(assert (= (and b!5695854 (not c!1002922)) b!5695864))

(assert (= (and b!5695864 c!1002925) b!5695863))

(assert (= (and b!5695864 (not c!1002925)) b!5695861))

(assert (= (or b!5695862 b!5695863) bm!433512))

(assert (= (or b!5695862 b!5695863) bm!433509))

(assert (= (or b!5695858 bm!433512) bm!433510))

(assert (= (or b!5695858 bm!433509) bm!433511))

(assert (= (or b!5695857 bm!433511) bm!433507))

(assert (= (or b!5695857 b!5695858) bm!433508))

(declare-fun m!6651940 () Bool)

(assert (=> bm!433508 m!6651940))

(declare-fun m!6651942 () Bool)

(assert (=> bm!433507 m!6651942))

(declare-fun m!6651944 () Bool)

(assert (=> bm!433510 m!6651944))

(declare-fun m!6651946 () Bool)

(assert (=> b!5695855 m!6651946))

(declare-fun m!6651948 () Bool)

(assert (=> b!5695859 m!6651948))

(assert (=> b!5695071 d!1797368))

(declare-fun bm!433513 () Bool)

(declare-fun call!433518 () (InoxSet Context!10146))

(assert (=> bm!433513 (= call!433518 (derivationStepZipperDown!1031 (h!69691 (exprs!5573 lt!2272283)) (Context!10147 (t!376685 (exprs!5573 lt!2272283))) (h!69690 s!2326)))))

(declare-fun b!5695865 () Bool)

(declare-fun e!3504279 () (InoxSet Context!10146))

(assert (=> b!5695865 (= e!3504279 ((as const (Array Context!10146 Bool)) false))))

(declare-fun b!5695866 () Bool)

(declare-fun e!3504277 () (InoxSet Context!10146))

(assert (=> b!5695866 (= e!3504277 ((_ map or) call!433518 (derivationStepZipperUp!957 (Context!10147 (t!376685 (exprs!5573 lt!2272283))) (h!69690 s!2326))))))

(declare-fun b!5695867 () Bool)

(assert (=> b!5695867 (= e!3504279 call!433518)))

(declare-fun b!5695868 () Bool)

(assert (=> b!5695868 (= e!3504277 e!3504279)))

(declare-fun c!1002928 () Bool)

(assert (=> b!5695868 (= c!1002928 ((_ is Cons!63243) (exprs!5573 lt!2272283)))))

(declare-fun d!1797370 () Bool)

(declare-fun c!1002927 () Bool)

(declare-fun e!3504278 () Bool)

(assert (=> d!1797370 (= c!1002927 e!3504278)))

(declare-fun res!2405315 () Bool)

(assert (=> d!1797370 (=> (not res!2405315) (not e!3504278))))

(assert (=> d!1797370 (= res!2405315 ((_ is Cons!63243) (exprs!5573 lt!2272283)))))

(assert (=> d!1797370 (= (derivationStepZipperUp!957 lt!2272283 (h!69690 s!2326)) e!3504277)))

(declare-fun b!5695869 () Bool)

(assert (=> b!5695869 (= e!3504278 (nullable!5721 (h!69691 (exprs!5573 lt!2272283))))))

(assert (= (and d!1797370 res!2405315) b!5695869))

(assert (= (and d!1797370 c!1002927) b!5695866))

(assert (= (and d!1797370 (not c!1002927)) b!5695868))

(assert (= (and b!5695868 c!1002928) b!5695867))

(assert (= (and b!5695868 (not c!1002928)) b!5695865))

(assert (= (or b!5695866 b!5695867) bm!433513))

(declare-fun m!6651950 () Bool)

(assert (=> bm!433513 m!6651950))

(declare-fun m!6651952 () Bool)

(assert (=> b!5695866 m!6651952))

(declare-fun m!6651954 () Bool)

(assert (=> b!5695869 m!6651954))

(assert (=> b!5695071 d!1797370))

(declare-fun d!1797372 () Bool)

(declare-fun lt!2272427 () Regex!15689)

(assert (=> d!1797372 (validRegex!7425 lt!2272427)))

(assert (=> d!1797372 (= lt!2272427 (generalisedUnion!1552 (unfocusZipperList!1117 (Cons!63244 lt!2272315 Nil!63244))))))

(assert (=> d!1797372 (= (unfocusZipper!1431 (Cons!63244 lt!2272315 Nil!63244)) lt!2272427)))

(declare-fun bs!1327742 () Bool)

(assert (= bs!1327742 d!1797372))

(declare-fun m!6651956 () Bool)

(assert (=> bs!1327742 m!6651956))

(declare-fun m!6651958 () Bool)

(assert (=> bs!1327742 m!6651958))

(assert (=> bs!1327742 m!6651958))

(declare-fun m!6651960 () Bool)

(assert (=> bs!1327742 m!6651960))

(assert (=> b!5695047 d!1797372))

(declare-fun bs!1327743 () Bool)

(declare-fun d!1797374 () Bool)

(assert (= bs!1327743 (and d!1797374 d!1797184)))

(declare-fun lambda!307002 () Int)

(assert (=> bs!1327743 (= lambda!307002 lambda!306946)))

(declare-fun bs!1327744 () Bool)

(assert (= bs!1327744 (and d!1797374 d!1797188)))

(assert (=> bs!1327744 (= lambda!307002 lambda!306956)))

(declare-fun bs!1327745 () Bool)

(assert (= bs!1327745 (and d!1797374 d!1797344)))

(assert (=> bs!1327745 (= lambda!307002 lambda!306995)))

(declare-fun bs!1327746 () Bool)

(assert (= bs!1327746 (and d!1797374 d!1797346)))

(assert (=> bs!1327746 (= lambda!307002 lambda!306998)))

(assert (=> d!1797374 (= (inv!82469 setElem!38127) (forall!14830 (exprs!5573 setElem!38127) lambda!307002))))

(declare-fun bs!1327747 () Bool)

(assert (= bs!1327747 d!1797374))

(declare-fun m!6651962 () Bool)

(assert (=> bs!1327747 m!6651962))

(assert (=> setNonEmpty!38127 d!1797374))

(declare-fun d!1797376 () Bool)

(declare-fun lt!2272428 () Regex!15689)

(assert (=> d!1797376 (validRegex!7425 lt!2272428)))

(assert (=> d!1797376 (= lt!2272428 (generalisedUnion!1552 (unfocusZipperList!1117 zl!343)))))

(assert (=> d!1797376 (= (unfocusZipper!1431 zl!343) lt!2272428)))

(declare-fun bs!1327748 () Bool)

(assert (= bs!1327748 d!1797376))

(declare-fun m!6651964 () Bool)

(assert (=> bs!1327748 m!6651964))

(assert (=> bs!1327748 m!6651230))

(assert (=> bs!1327748 m!6651230))

(assert (=> bs!1327748 m!6651232))

(assert (=> b!5695066 d!1797376))

(declare-fun d!1797378 () Bool)

(assert (=> d!1797378 (= (Exists!2789 lambda!306933) (choose!43064 lambda!306933))))

(declare-fun bs!1327749 () Bool)

(assert (= bs!1327749 d!1797378))

(declare-fun m!6651966 () Bool)

(assert (=> bs!1327749 m!6651966))

(assert (=> b!5695065 d!1797378))

(declare-fun bs!1327750 () Bool)

(declare-fun d!1797380 () Bool)

(assert (= bs!1327750 (and d!1797380 b!5695065)))

(declare-fun lambda!307003 () Int)

(assert (=> bs!1327750 (= lambda!307003 lambda!306932)))

(declare-fun bs!1327751 () Bool)

(assert (= bs!1327751 (and d!1797380 d!1797300)))

(assert (=> bs!1327751 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307003 lambda!306984))))

(declare-fun bs!1327752 () Bool)

(assert (= bs!1327752 (and d!1797380 d!1797312)))

(assert (=> bs!1327752 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307003 lambda!306989))))

(assert (=> bs!1327750 (not (= lambda!307003 lambda!306933))))

(declare-fun bs!1327753 () Bool)

(assert (= bs!1327753 (and d!1797380 b!5695759)))

(assert (=> bs!1327753 (not (= lambda!307003 lambda!306991))))

(declare-fun bs!1327754 () Bool)

(assert (= bs!1327754 (and d!1797380 b!5695059)))

(assert (=> bs!1327754 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307003 lambda!306929))))

(declare-fun bs!1327755 () Bool)

(assert (= bs!1327755 (and d!1797380 b!5695539)))

(assert (=> bs!1327755 (not (= lambda!307003 lambda!306976))))

(declare-fun bs!1327756 () Bool)

(assert (= bs!1327756 (and d!1797380 b!5695761)))

(assert (=> bs!1327756 (not (= lambda!307003 lambda!306992))))

(declare-fun bs!1327757 () Bool)

(assert (= bs!1327757 (and d!1797380 b!5695537)))

(assert (=> bs!1327757 (not (= lambda!307003 lambda!306975))))

(assert (=> bs!1327754 (not (= lambda!307003 lambda!306930))))

(assert (=> bs!1327752 (not (= lambda!307003 lambda!306990))))

(assert (=> d!1797380 true))

(assert (=> d!1797380 true))

(assert (=> d!1797380 true))

(assert (=> d!1797380 (= (isDefined!12401 (findConcatSeparation!2112 lt!2272312 (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326)) (Exists!2789 lambda!307003))))

(declare-fun lt!2272429 () Unit!156288)

(assert (=> d!1797380 (= lt!2272429 (choose!43066 lt!2272312 (regTwo!31890 r!7292) s!2326))))

(assert (=> d!1797380 (validRegex!7425 lt!2272312)))

(assert (=> d!1797380 (= (lemmaFindConcatSeparationEquivalentToExists!1876 lt!2272312 (regTwo!31890 r!7292) s!2326) lt!2272429)))

(declare-fun bs!1327758 () Bool)

(assert (= bs!1327758 d!1797380))

(declare-fun m!6651968 () Bool)

(assert (=> bs!1327758 m!6651968))

(declare-fun m!6651970 () Bool)

(assert (=> bs!1327758 m!6651970))

(assert (=> bs!1327758 m!6651596))

(assert (=> bs!1327758 m!6651302))

(assert (=> bs!1327758 m!6651302))

(declare-fun m!6651972 () Bool)

(assert (=> bs!1327758 m!6651972))

(assert (=> b!5695065 d!1797380))

(declare-fun bs!1327759 () Bool)

(declare-fun d!1797382 () Bool)

(assert (= bs!1327759 (and d!1797382 b!5695065)))

(declare-fun lambda!307004 () Int)

(assert (=> bs!1327759 (= lambda!307004 lambda!306932)))

(declare-fun bs!1327760 () Bool)

(assert (= bs!1327760 (and d!1797382 d!1797300)))

(assert (=> bs!1327760 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307004 lambda!306984))))

(declare-fun bs!1327761 () Bool)

(assert (= bs!1327761 (and d!1797382 d!1797380)))

(assert (=> bs!1327761 (= lambda!307004 lambda!307003)))

(declare-fun bs!1327762 () Bool)

(assert (= bs!1327762 (and d!1797382 d!1797312)))

(assert (=> bs!1327762 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307004 lambda!306989))))

(assert (=> bs!1327759 (not (= lambda!307004 lambda!306933))))

(declare-fun bs!1327763 () Bool)

(assert (= bs!1327763 (and d!1797382 b!5695759)))

(assert (=> bs!1327763 (not (= lambda!307004 lambda!306991))))

(declare-fun bs!1327764 () Bool)

(assert (= bs!1327764 (and d!1797382 b!5695059)))

(assert (=> bs!1327764 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307004 lambda!306929))))

(declare-fun bs!1327765 () Bool)

(assert (= bs!1327765 (and d!1797382 b!5695539)))

(assert (=> bs!1327765 (not (= lambda!307004 lambda!306976))))

(declare-fun bs!1327766 () Bool)

(assert (= bs!1327766 (and d!1797382 b!5695761)))

(assert (=> bs!1327766 (not (= lambda!307004 lambda!306992))))

(declare-fun bs!1327767 () Bool)

(assert (= bs!1327767 (and d!1797382 b!5695537)))

(assert (=> bs!1327767 (not (= lambda!307004 lambda!306975))))

(assert (=> bs!1327764 (not (= lambda!307004 lambda!306930))))

(assert (=> bs!1327762 (not (= lambda!307004 lambda!306990))))

(assert (=> d!1797382 true))

(assert (=> d!1797382 true))

(assert (=> d!1797382 true))

(declare-fun lambda!307005 () Int)

(assert (=> bs!1327759 (not (= lambda!307005 lambda!306932))))

(assert (=> bs!1327760 (not (= lambda!307005 lambda!306984))))

(assert (=> bs!1327761 (not (= lambda!307005 lambda!307003))))

(assert (=> bs!1327762 (not (= lambda!307005 lambda!306989))))

(declare-fun bs!1327768 () Bool)

(assert (= bs!1327768 d!1797382))

(assert (=> bs!1327768 (not (= lambda!307005 lambda!307004))))

(assert (=> bs!1327759 (= lambda!307005 lambda!306933)))

(assert (=> bs!1327763 (not (= lambda!307005 lambda!306991))))

(assert (=> bs!1327764 (not (= lambda!307005 lambda!306929))))

(assert (=> bs!1327765 (= (and (= lt!2272312 (regOne!31890 lt!2272304)) (= (regTwo!31890 r!7292) (regTwo!31890 lt!2272304))) (= lambda!307005 lambda!306976))))

(assert (=> bs!1327766 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307005 lambda!306992))))

(assert (=> bs!1327767 (not (= lambda!307005 lambda!306975))))

(assert (=> bs!1327764 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307005 lambda!306930))))

(assert (=> bs!1327762 (= (= lt!2272312 (regOne!31890 r!7292)) (= lambda!307005 lambda!306990))))

(assert (=> d!1797382 true))

(assert (=> d!1797382 true))

(assert (=> d!1797382 true))

(assert (=> d!1797382 (= (Exists!2789 lambda!307004) (Exists!2789 lambda!307005))))

(declare-fun lt!2272430 () Unit!156288)

(assert (=> d!1797382 (= lt!2272430 (choose!43067 lt!2272312 (regTwo!31890 r!7292) s!2326))))

(assert (=> d!1797382 (validRegex!7425 lt!2272312)))

(assert (=> d!1797382 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1418 lt!2272312 (regTwo!31890 r!7292) s!2326) lt!2272430)))

(declare-fun m!6651974 () Bool)

(assert (=> bs!1327768 m!6651974))

(declare-fun m!6651976 () Bool)

(assert (=> bs!1327768 m!6651976))

(declare-fun m!6651978 () Bool)

(assert (=> bs!1327768 m!6651978))

(assert (=> bs!1327768 m!6651596))

(assert (=> b!5695065 d!1797382))

(declare-fun d!1797384 () Bool)

(assert (=> d!1797384 (= (get!21793 lt!2272282) (v!51750 lt!2272282))))

(assert (=> b!5695065 d!1797384))

(declare-fun d!1797386 () Bool)

(assert (=> d!1797386 (= (isDefined!12401 lt!2272282) (not (isEmpty!35102 lt!2272282)))))

(declare-fun bs!1327769 () Bool)

(assert (= bs!1327769 d!1797386))

(declare-fun m!6651980 () Bool)

(assert (=> bs!1327769 m!6651980))

(assert (=> b!5695065 d!1797386))

(declare-fun b!5695880 () Bool)

(declare-fun res!2405320 () Bool)

(declare-fun e!3504285 () Bool)

(assert (=> b!5695880 (=> (not res!2405320) (not e!3504285))))

(declare-fun lt!2272433 () List!63366)

(declare-fun size!40007 (List!63366) Int)

(assert (=> b!5695880 (= res!2405320 (= (size!40007 lt!2272433) (+ (size!40007 (_1!36089 lt!2272314)) (size!40007 (_2!36089 lt!2272314)))))))

(declare-fun b!5695878 () Bool)

(declare-fun e!3504284 () List!63366)

(assert (=> b!5695878 (= e!3504284 (_2!36089 lt!2272314))))

(declare-fun b!5695879 () Bool)

(assert (=> b!5695879 (= e!3504284 (Cons!63242 (h!69690 (_1!36089 lt!2272314)) (++!13881 (t!376684 (_1!36089 lt!2272314)) (_2!36089 lt!2272314))))))

(declare-fun d!1797388 () Bool)

(assert (=> d!1797388 e!3504285))

(declare-fun res!2405321 () Bool)

(assert (=> d!1797388 (=> (not res!2405321) (not e!3504285))))

(declare-fun content!11468 (List!63366) (InoxSet C!31648))

(assert (=> d!1797388 (= res!2405321 (= (content!11468 lt!2272433) ((_ map or) (content!11468 (_1!36089 lt!2272314)) (content!11468 (_2!36089 lt!2272314)))))))

(assert (=> d!1797388 (= lt!2272433 e!3504284)))

(declare-fun c!1002931 () Bool)

(assert (=> d!1797388 (= c!1002931 ((_ is Nil!63242) (_1!36089 lt!2272314)))))

(assert (=> d!1797388 (= (++!13881 (_1!36089 lt!2272314) (_2!36089 lt!2272314)) lt!2272433)))

(declare-fun b!5695881 () Bool)

(assert (=> b!5695881 (= e!3504285 (or (not (= (_2!36089 lt!2272314) Nil!63242)) (= lt!2272433 (_1!36089 lt!2272314))))))

(assert (= (and d!1797388 c!1002931) b!5695878))

(assert (= (and d!1797388 (not c!1002931)) b!5695879))

(assert (= (and d!1797388 res!2405321) b!5695880))

(assert (= (and b!5695880 res!2405320) b!5695881))

(declare-fun m!6651982 () Bool)

(assert (=> b!5695880 m!6651982))

(declare-fun m!6651984 () Bool)

(assert (=> b!5695880 m!6651984))

(declare-fun m!6651986 () Bool)

(assert (=> b!5695880 m!6651986))

(declare-fun m!6651988 () Bool)

(assert (=> b!5695879 m!6651988))

(declare-fun m!6651990 () Bool)

(assert (=> d!1797388 m!6651990))

(declare-fun m!6651992 () Bool)

(assert (=> d!1797388 m!6651992))

(declare-fun m!6651994 () Bool)

(assert (=> d!1797388 m!6651994))

(assert (=> b!5695065 d!1797388))

(declare-fun d!1797390 () Bool)

(declare-fun e!3504289 () Bool)

(assert (=> d!1797390 e!3504289))

(declare-fun res!2405323 () Bool)

(assert (=> d!1797390 (=> res!2405323 e!3504289)))

(declare-fun e!3504288 () Bool)

(assert (=> d!1797390 (= res!2405323 e!3504288)))

(declare-fun res!2405326 () Bool)

(assert (=> d!1797390 (=> (not res!2405326) (not e!3504288))))

(declare-fun lt!2272436 () Option!15698)

(assert (=> d!1797390 (= res!2405326 (isDefined!12401 lt!2272436))))

(declare-fun e!3504290 () Option!15698)

(assert (=> d!1797390 (= lt!2272436 e!3504290)))

(declare-fun c!1002932 () Bool)

(declare-fun e!3504287 () Bool)

(assert (=> d!1797390 (= c!1002932 e!3504287)))

(declare-fun res!2405324 () Bool)

(assert (=> d!1797390 (=> (not res!2405324) (not e!3504287))))

(assert (=> d!1797390 (= res!2405324 (matchR!7874 lt!2272312 Nil!63242))))

(assert (=> d!1797390 (validRegex!7425 lt!2272312)))

(assert (=> d!1797390 (= (findConcatSeparation!2112 lt!2272312 (regTwo!31890 r!7292) Nil!63242 s!2326 s!2326) lt!2272436)))

(declare-fun b!5695882 () Bool)

(declare-fun lt!2272435 () Unit!156288)

(declare-fun lt!2272434 () Unit!156288)

(assert (=> b!5695882 (= lt!2272435 lt!2272434)))

(assert (=> b!5695882 (= (++!13881 (++!13881 Nil!63242 (Cons!63242 (h!69690 s!2326) Nil!63242)) (t!376684 s!2326)) s!2326)))

(assert (=> b!5695882 (= lt!2272434 (lemmaMoveElementToOtherListKeepsConcatEq!2050 Nil!63242 (h!69690 s!2326) (t!376684 s!2326) s!2326))))

(declare-fun e!3504286 () Option!15698)

(assert (=> b!5695882 (= e!3504286 (findConcatSeparation!2112 lt!2272312 (regTwo!31890 r!7292) (++!13881 Nil!63242 (Cons!63242 (h!69690 s!2326) Nil!63242)) (t!376684 s!2326) s!2326))))

(declare-fun b!5695883 () Bool)

(assert (=> b!5695883 (= e!3504289 (not (isDefined!12401 lt!2272436)))))

(declare-fun b!5695884 () Bool)

(assert (=> b!5695884 (= e!3504288 (= (++!13881 (_1!36089 (get!21793 lt!2272436)) (_2!36089 (get!21793 lt!2272436))) s!2326))))

(declare-fun b!5695885 () Bool)

(declare-fun res!2405325 () Bool)

(assert (=> b!5695885 (=> (not res!2405325) (not e!3504288))))

(assert (=> b!5695885 (= res!2405325 (matchR!7874 lt!2272312 (_1!36089 (get!21793 lt!2272436))))))

(declare-fun b!5695886 () Bool)

(assert (=> b!5695886 (= e!3504290 (Some!15697 (tuple2!65573 Nil!63242 s!2326)))))

(declare-fun b!5695887 () Bool)

(declare-fun res!2405322 () Bool)

(assert (=> b!5695887 (=> (not res!2405322) (not e!3504288))))

(assert (=> b!5695887 (= res!2405322 (matchR!7874 (regTwo!31890 r!7292) (_2!36089 (get!21793 lt!2272436))))))

(declare-fun b!5695888 () Bool)

(assert (=> b!5695888 (= e!3504290 e!3504286)))

(declare-fun c!1002933 () Bool)

(assert (=> b!5695888 (= c!1002933 ((_ is Nil!63242) s!2326))))

(declare-fun b!5695889 () Bool)

(assert (=> b!5695889 (= e!3504286 None!15697)))

(declare-fun b!5695890 () Bool)

(assert (=> b!5695890 (= e!3504287 (matchR!7874 (regTwo!31890 r!7292) s!2326))))

(assert (= (and d!1797390 res!2405324) b!5695890))

(assert (= (and d!1797390 c!1002932) b!5695886))

(assert (= (and d!1797390 (not c!1002932)) b!5695888))

(assert (= (and b!5695888 c!1002933) b!5695889))

(assert (= (and b!5695888 (not c!1002933)) b!5695882))

(assert (= (and d!1797390 res!2405326) b!5695885))

(assert (= (and b!5695885 res!2405325) b!5695887))

(assert (= (and b!5695887 res!2405322) b!5695884))

(assert (= (and d!1797390 (not res!2405323)) b!5695883))

(declare-fun m!6651996 () Bool)

(assert (=> b!5695885 m!6651996))

(declare-fun m!6651998 () Bool)

(assert (=> b!5695885 m!6651998))

(assert (=> b!5695884 m!6651996))

(declare-fun m!6652000 () Bool)

(assert (=> b!5695884 m!6652000))

(assert (=> b!5695890 m!6651764))

(assert (=> b!5695882 m!6651766))

(assert (=> b!5695882 m!6651766))

(assert (=> b!5695882 m!6651768))

(assert (=> b!5695882 m!6651770))

(assert (=> b!5695882 m!6651766))

(declare-fun m!6652002 () Bool)

(assert (=> b!5695882 m!6652002))

(declare-fun m!6652004 () Bool)

(assert (=> d!1797390 m!6652004))

(declare-fun m!6652006 () Bool)

(assert (=> d!1797390 m!6652006))

(assert (=> d!1797390 m!6651596))

(assert (=> b!5695883 m!6652004))

(assert (=> b!5695887 m!6651996))

(declare-fun m!6652008 () Bool)

(assert (=> b!5695887 m!6652008))

(assert (=> b!5695065 d!1797390))

(declare-fun d!1797392 () Bool)

(assert (=> d!1797392 (= (Exists!2789 lambda!306932) (choose!43064 lambda!306932))))

(declare-fun bs!1327770 () Bool)

(assert (= bs!1327770 d!1797392))

(declare-fun m!6652010 () Bool)

(assert (=> bs!1327770 m!6652010))

(assert (=> b!5695065 d!1797392))

(declare-fun d!1797394 () Bool)

(declare-fun c!1002934 () Bool)

(assert (=> d!1797394 (= c!1002934 (isEmpty!35101 (t!376684 s!2326)))))

(declare-fun e!3504291 () Bool)

(assert (=> d!1797394 (= (matchZipper!1827 lt!2272292 (t!376684 s!2326)) e!3504291)))

(declare-fun b!5695891 () Bool)

(assert (=> b!5695891 (= e!3504291 (nullableZipper!1647 lt!2272292))))

(declare-fun b!5695892 () Bool)

(assert (=> b!5695892 (= e!3504291 (matchZipper!1827 (derivationStepZipper!1772 lt!2272292 (head!12075 (t!376684 s!2326))) (tail!11170 (t!376684 s!2326))))))

(assert (= (and d!1797394 c!1002934) b!5695891))

(assert (= (and d!1797394 (not c!1002934)) b!5695892))

(assert (=> d!1797394 m!6651542))

(declare-fun m!6652012 () Bool)

(assert (=> b!5695891 m!6652012))

(assert (=> b!5695892 m!6651548))

(assert (=> b!5695892 m!6651548))

(declare-fun m!6652014 () Bool)

(assert (=> b!5695892 m!6652014))

(assert (=> b!5695892 m!6651552))

(assert (=> b!5695892 m!6652014))

(assert (=> b!5695892 m!6651552))

(declare-fun m!6652016 () Bool)

(assert (=> b!5695892 m!6652016))

(assert (=> b!5695044 d!1797394))

(declare-fun b!5695893 () Bool)

(declare-fun e!3504295 () (InoxSet Context!10146))

(declare-fun e!3504292 () (InoxSet Context!10146))

(assert (=> b!5695893 (= e!3504295 e!3504292)))

(declare-fun c!1002935 () Bool)

(assert (=> b!5695893 (= c!1002935 ((_ is Concat!24534) (reg!16018 (regOne!31890 r!7292))))))

(declare-fun b!5695894 () Bool)

(declare-fun e!3504293 () Bool)

(assert (=> b!5695894 (= e!3504293 (nullable!5721 (regOne!31890 (reg!16018 (regOne!31890 r!7292)))))))

(declare-fun call!433520 () (InoxSet Context!10146))

(declare-fun call!433522 () List!63367)

(declare-fun bm!433514 () Bool)

(declare-fun c!1002936 () Bool)

(declare-fun c!1002937 () Bool)

(assert (=> bm!433514 (= call!433520 (derivationStepZipperDown!1031 (ite c!1002936 (regTwo!31891 (reg!16018 (regOne!31890 r!7292))) (ite c!1002937 (regTwo!31890 (reg!16018 (regOne!31890 r!7292))) (ite c!1002935 (regOne!31890 (reg!16018 (regOne!31890 r!7292))) (reg!16018 (reg!16018 (regOne!31890 r!7292)))))) (ite (or c!1002936 c!1002937) lt!2272315 (Context!10147 call!433522)) (h!69690 s!2326)))))

(declare-fun call!433521 () List!63367)

(declare-fun call!433519 () (InoxSet Context!10146))

(declare-fun bm!433515 () Bool)

(assert (=> bm!433515 (= call!433519 (derivationStepZipperDown!1031 (ite c!1002936 (regOne!31891 (reg!16018 (regOne!31890 r!7292))) (regOne!31890 (reg!16018 (regOne!31890 r!7292)))) (ite c!1002936 lt!2272315 (Context!10147 call!433521)) (h!69690 s!2326)))))

(declare-fun bm!433516 () Bool)

(declare-fun call!433523 () (InoxSet Context!10146))

(declare-fun call!433524 () (InoxSet Context!10146))

(assert (=> bm!433516 (= call!433523 call!433524)))

(declare-fun b!5695895 () Bool)

(declare-fun e!3504297 () (InoxSet Context!10146))

(declare-fun e!3504296 () (InoxSet Context!10146))

(assert (=> b!5695895 (= e!3504297 e!3504296)))

(assert (=> b!5695895 (= c!1002936 ((_ is Union!15689) (reg!16018 (regOne!31890 r!7292))))))

(declare-fun bm!433517 () Bool)

(assert (=> bm!433517 (= call!433521 ($colon$colon!1714 (exprs!5573 lt!2272315) (ite (or c!1002937 c!1002935) (regTwo!31890 (reg!16018 (regOne!31890 r!7292))) (reg!16018 (regOne!31890 r!7292)))))))

(declare-fun b!5695896 () Bool)

(assert (=> b!5695896 (= e!3504296 ((_ map or) call!433519 call!433520))))

(declare-fun d!1797396 () Bool)

(declare-fun c!1002939 () Bool)

(assert (=> d!1797396 (= c!1002939 (and ((_ is ElementMatch!15689) (reg!16018 (regOne!31890 r!7292))) (= (c!1002699 (reg!16018 (regOne!31890 r!7292))) (h!69690 s!2326))))))

(assert (=> d!1797396 (= (derivationStepZipperDown!1031 (reg!16018 (regOne!31890 r!7292)) lt!2272315 (h!69690 s!2326)) e!3504297)))

(declare-fun b!5695897 () Bool)

(assert (=> b!5695897 (= e!3504295 ((_ map or) call!433519 call!433524))))

(declare-fun b!5695898 () Bool)

(assert (=> b!5695898 (= e!3504297 (store ((as const (Array Context!10146 Bool)) false) lt!2272315 true))))

(declare-fun b!5695899 () Bool)

(assert (=> b!5695899 (= c!1002937 e!3504293)))

(declare-fun res!2405327 () Bool)

(assert (=> b!5695899 (=> (not res!2405327) (not e!3504293))))

(assert (=> b!5695899 (= res!2405327 ((_ is Concat!24534) (reg!16018 (regOne!31890 r!7292))))))

(assert (=> b!5695899 (= e!3504296 e!3504295)))

(declare-fun bm!433518 () Bool)

(assert (=> bm!433518 (= call!433524 call!433520)))

(declare-fun bm!433519 () Bool)

(assert (=> bm!433519 (= call!433522 call!433521)))

(declare-fun b!5695900 () Bool)

(declare-fun e!3504294 () (InoxSet Context!10146))

(assert (=> b!5695900 (= e!3504294 ((as const (Array Context!10146 Bool)) false))))

(declare-fun b!5695901 () Bool)

(assert (=> b!5695901 (= e!3504292 call!433523)))

(declare-fun b!5695902 () Bool)

(assert (=> b!5695902 (= e!3504294 call!433523)))

(declare-fun b!5695903 () Bool)

(declare-fun c!1002938 () Bool)

(assert (=> b!5695903 (= c!1002938 ((_ is Star!15689) (reg!16018 (regOne!31890 r!7292))))))

(assert (=> b!5695903 (= e!3504292 e!3504294)))

(assert (= (and d!1797396 c!1002939) b!5695898))

(assert (= (and d!1797396 (not c!1002939)) b!5695895))

(assert (= (and b!5695895 c!1002936) b!5695896))

(assert (= (and b!5695895 (not c!1002936)) b!5695899))

(assert (= (and b!5695899 res!2405327) b!5695894))

(assert (= (and b!5695899 c!1002937) b!5695897))

(assert (= (and b!5695899 (not c!1002937)) b!5695893))

(assert (= (and b!5695893 c!1002935) b!5695901))

(assert (= (and b!5695893 (not c!1002935)) b!5695903))

(assert (= (and b!5695903 c!1002938) b!5695902))

(assert (= (and b!5695903 (not c!1002938)) b!5695900))

(assert (= (or b!5695901 b!5695902) bm!433519))

(assert (= (or b!5695901 b!5695902) bm!433516))

(assert (= (or b!5695897 bm!433519) bm!433517))

(assert (= (or b!5695897 bm!433516) bm!433518))

(assert (= (or b!5695896 bm!433518) bm!433514))

(assert (= (or b!5695896 b!5695897) bm!433515))

(declare-fun m!6652018 () Bool)

(assert (=> bm!433515 m!6652018))

(declare-fun m!6652020 () Bool)

(assert (=> bm!433514 m!6652020))

(declare-fun m!6652022 () Bool)

(assert (=> bm!433517 m!6652022))

(declare-fun m!6652024 () Bool)

(assert (=> b!5695894 m!6652024))

(assert (=> b!5695898 m!6651282))

(assert (=> b!5695067 d!1797396))

(declare-fun d!1797398 () Bool)

(assert (=> d!1797398 (= (isEmpty!35097 (t!376686 zl!343)) ((_ is Nil!63244) (t!376686 zl!343)))))

(assert (=> b!5695046 d!1797398))

(declare-fun b!5695908 () Bool)

(declare-fun e!3504300 () Bool)

(declare-fun tp!1580013 () Bool)

(declare-fun tp!1580014 () Bool)

(assert (=> b!5695908 (= e!3504300 (and tp!1580013 tp!1580014))))

(assert (=> b!5695058 (= tp!1579950 e!3504300)))

(assert (= (and b!5695058 ((_ is Cons!63243) (exprs!5573 setElem!38127))) b!5695908))

(declare-fun b!5695922 () Bool)

(declare-fun e!3504303 () Bool)

(declare-fun tp!1580027 () Bool)

(declare-fun tp!1580029 () Bool)

(assert (=> b!5695922 (= e!3504303 (and tp!1580027 tp!1580029))))

(declare-fun b!5695919 () Bool)

(assert (=> b!5695919 (= e!3504303 tp_is_empty!40631)))

(declare-fun b!5695920 () Bool)

(declare-fun tp!1580025 () Bool)

(declare-fun tp!1580026 () Bool)

(assert (=> b!5695920 (= e!3504303 (and tp!1580025 tp!1580026))))

(declare-fun b!5695921 () Bool)

(declare-fun tp!1580028 () Bool)

(assert (=> b!5695921 (= e!3504303 tp!1580028)))

(assert (=> b!5695073 (= tp!1579948 e!3504303)))

(assert (= (and b!5695073 ((_ is ElementMatch!15689) (regOne!31891 r!7292))) b!5695919))

(assert (= (and b!5695073 ((_ is Concat!24534) (regOne!31891 r!7292))) b!5695920))

(assert (= (and b!5695073 ((_ is Star!15689) (regOne!31891 r!7292))) b!5695921))

(assert (= (and b!5695073 ((_ is Union!15689) (regOne!31891 r!7292))) b!5695922))

(declare-fun b!5695926 () Bool)

(declare-fun e!3504304 () Bool)

(declare-fun tp!1580032 () Bool)

(declare-fun tp!1580034 () Bool)

(assert (=> b!5695926 (= e!3504304 (and tp!1580032 tp!1580034))))

(declare-fun b!5695923 () Bool)

(assert (=> b!5695923 (= e!3504304 tp_is_empty!40631)))

(declare-fun b!5695924 () Bool)

(declare-fun tp!1580030 () Bool)

(declare-fun tp!1580031 () Bool)

(assert (=> b!5695924 (= e!3504304 (and tp!1580030 tp!1580031))))

(declare-fun b!5695925 () Bool)

(declare-fun tp!1580033 () Bool)

(assert (=> b!5695925 (= e!3504304 tp!1580033)))

(assert (=> b!5695073 (= tp!1579947 e!3504304)))

(assert (= (and b!5695073 ((_ is ElementMatch!15689) (regTwo!31891 r!7292))) b!5695923))

(assert (= (and b!5695073 ((_ is Concat!24534) (regTwo!31891 r!7292))) b!5695924))

(assert (= (and b!5695073 ((_ is Star!15689) (regTwo!31891 r!7292))) b!5695925))

(assert (= (and b!5695073 ((_ is Union!15689) (regTwo!31891 r!7292))) b!5695926))

(declare-fun b!5695930 () Bool)

(declare-fun e!3504305 () Bool)

(declare-fun tp!1580037 () Bool)

(declare-fun tp!1580039 () Bool)

(assert (=> b!5695930 (= e!3504305 (and tp!1580037 tp!1580039))))

(declare-fun b!5695927 () Bool)

(assert (=> b!5695927 (= e!3504305 tp_is_empty!40631)))

(declare-fun b!5695928 () Bool)

(declare-fun tp!1580035 () Bool)

(declare-fun tp!1580036 () Bool)

(assert (=> b!5695928 (= e!3504305 (and tp!1580035 tp!1580036))))

(declare-fun b!5695929 () Bool)

(declare-fun tp!1580038 () Bool)

(assert (=> b!5695929 (= e!3504305 tp!1580038)))

(assert (=> b!5695057 (= tp!1579945 e!3504305)))

(assert (= (and b!5695057 ((_ is ElementMatch!15689) (reg!16018 r!7292))) b!5695927))

(assert (= (and b!5695057 ((_ is Concat!24534) (reg!16018 r!7292))) b!5695928))

(assert (= (and b!5695057 ((_ is Star!15689) (reg!16018 r!7292))) b!5695929))

(assert (= (and b!5695057 ((_ is Union!15689) (reg!16018 r!7292))) b!5695930))

(declare-fun b!5695934 () Bool)

(declare-fun e!3504306 () Bool)

(declare-fun tp!1580042 () Bool)

(declare-fun tp!1580044 () Bool)

(assert (=> b!5695934 (= e!3504306 (and tp!1580042 tp!1580044))))

(declare-fun b!5695931 () Bool)

(assert (=> b!5695931 (= e!3504306 tp_is_empty!40631)))

(declare-fun b!5695932 () Bool)

(declare-fun tp!1580040 () Bool)

(declare-fun tp!1580041 () Bool)

(assert (=> b!5695932 (= e!3504306 (and tp!1580040 tp!1580041))))

(declare-fun b!5695933 () Bool)

(declare-fun tp!1580043 () Bool)

(assert (=> b!5695933 (= e!3504306 tp!1580043)))

(assert (=> b!5695072 (= tp!1579946 e!3504306)))

(assert (= (and b!5695072 ((_ is ElementMatch!15689) (regOne!31890 r!7292))) b!5695931))

(assert (= (and b!5695072 ((_ is Concat!24534) (regOne!31890 r!7292))) b!5695932))

(assert (= (and b!5695072 ((_ is Star!15689) (regOne!31890 r!7292))) b!5695933))

(assert (= (and b!5695072 ((_ is Union!15689) (regOne!31890 r!7292))) b!5695934))

(declare-fun b!5695938 () Bool)

(declare-fun e!3504307 () Bool)

(declare-fun tp!1580047 () Bool)

(declare-fun tp!1580049 () Bool)

(assert (=> b!5695938 (= e!3504307 (and tp!1580047 tp!1580049))))

(declare-fun b!5695935 () Bool)

(assert (=> b!5695935 (= e!3504307 tp_is_empty!40631)))

(declare-fun b!5695936 () Bool)

(declare-fun tp!1580045 () Bool)

(declare-fun tp!1580046 () Bool)

(assert (=> b!5695936 (= e!3504307 (and tp!1580045 tp!1580046))))

(declare-fun b!5695937 () Bool)

(declare-fun tp!1580048 () Bool)

(assert (=> b!5695937 (= e!3504307 tp!1580048)))

(assert (=> b!5695072 (= tp!1579941 e!3504307)))

(assert (= (and b!5695072 ((_ is ElementMatch!15689) (regTwo!31890 r!7292))) b!5695935))

(assert (= (and b!5695072 ((_ is Concat!24534) (regTwo!31890 r!7292))) b!5695936))

(assert (= (and b!5695072 ((_ is Star!15689) (regTwo!31890 r!7292))) b!5695937))

(assert (= (and b!5695072 ((_ is Union!15689) (regTwo!31890 r!7292))) b!5695938))

(declare-fun b!5695946 () Bool)

(declare-fun e!3504313 () Bool)

(declare-fun tp!1580054 () Bool)

(assert (=> b!5695946 (= e!3504313 tp!1580054)))

(declare-fun b!5695945 () Bool)

(declare-fun e!3504312 () Bool)

(declare-fun tp!1580055 () Bool)

(assert (=> b!5695945 (= e!3504312 (and (inv!82469 (h!69692 (t!376686 zl!343))) e!3504313 tp!1580055))))

(assert (=> b!5695054 (= tp!1579949 e!3504312)))

(assert (= b!5695945 b!5695946))

(assert (= (and b!5695054 ((_ is Cons!63244) (t!376686 zl!343))) b!5695945))

(declare-fun m!6652026 () Bool)

(assert (=> b!5695945 m!6652026))

(declare-fun b!5695947 () Bool)

(declare-fun e!3504314 () Bool)

(declare-fun tp!1580056 () Bool)

(declare-fun tp!1580057 () Bool)

(assert (=> b!5695947 (= e!3504314 (and tp!1580056 tp!1580057))))

(assert (=> b!5695069 (= tp!1579943 e!3504314)))

(assert (= (and b!5695069 ((_ is Cons!63243) (exprs!5573 (h!69692 zl!343)))) b!5695947))

(declare-fun condSetEmpty!38133 () Bool)

(assert (=> setNonEmpty!38127 (= condSetEmpty!38133 (= setRest!38127 ((as const (Array Context!10146 Bool)) false)))))

(declare-fun setRes!38133 () Bool)

(assert (=> setNonEmpty!38127 (= tp!1579942 setRes!38133)))

(declare-fun setIsEmpty!38133 () Bool)

(assert (=> setIsEmpty!38133 setRes!38133))

(declare-fun setElem!38133 () Context!10146)

(declare-fun e!3504317 () Bool)

(declare-fun setNonEmpty!38133 () Bool)

(declare-fun tp!1580063 () Bool)

(assert (=> setNonEmpty!38133 (= setRes!38133 (and tp!1580063 (inv!82469 setElem!38133) e!3504317))))

(declare-fun setRest!38133 () (InoxSet Context!10146))

(assert (=> setNonEmpty!38133 (= setRest!38127 ((_ map or) (store ((as const (Array Context!10146 Bool)) false) setElem!38133 true) setRest!38133))))

(declare-fun b!5695952 () Bool)

(declare-fun tp!1580062 () Bool)

(assert (=> b!5695952 (= e!3504317 tp!1580062)))

(assert (= (and setNonEmpty!38127 condSetEmpty!38133) setIsEmpty!38133))

(assert (= (and setNonEmpty!38127 (not condSetEmpty!38133)) setNonEmpty!38133))

(assert (= setNonEmpty!38133 b!5695952))

(declare-fun m!6652028 () Bool)

(assert (=> setNonEmpty!38133 m!6652028))

(declare-fun b!5695957 () Bool)

(declare-fun e!3504320 () Bool)

(declare-fun tp!1580066 () Bool)

(assert (=> b!5695957 (= e!3504320 (and tp_is_empty!40631 tp!1580066))))

(assert (=> b!5695045 (= tp!1579944 e!3504320)))

(assert (= (and b!5695045 ((_ is Cons!63242) (t!376684 s!2326))) b!5695957))

(declare-fun b_lambda!215311 () Bool)

(assert (= b_lambda!215287 (or b!5695071 b_lambda!215311)))

(declare-fun bs!1327771 () Bool)

(declare-fun d!1797400 () Bool)

(assert (= bs!1327771 (and d!1797400 b!5695071)))

(assert (=> bs!1327771 (= (dynLambda!24745 lambda!306931 lt!2272287) (derivationStepZipperUp!957 lt!2272287 (h!69690 s!2326)))))

(assert (=> bs!1327771 m!6651266))

(assert (=> d!1797172 d!1797400))

(declare-fun b_lambda!215313 () Bool)

(assert (= b_lambda!215309 (or b!5695071 b_lambda!215313)))

(declare-fun bs!1327772 () Bool)

(declare-fun d!1797402 () Bool)

(assert (= bs!1327772 (and d!1797402 b!5695071)))

(assert (=> bs!1327772 (= (dynLambda!24745 lambda!306931 (h!69692 zl!343)) (derivationStepZipperUp!957 (h!69692 zl!343) (h!69690 s!2326)))))

(assert (=> bs!1327772 m!6651314))

(assert (=> d!1797358 d!1797402))

(declare-fun b_lambda!215315 () Bool)

(assert (= b_lambda!215289 (or b!5695071 b_lambda!215315)))

(declare-fun bs!1327773 () Bool)

(declare-fun d!1797404 () Bool)

(assert (= bs!1327773 (and d!1797404 b!5695071)))

(assert (=> bs!1327773 (= (dynLambda!24745 lambda!306931 lt!2272315) (derivationStepZipperUp!957 lt!2272315 (h!69690 s!2326)))))

(assert (=> bs!1327773 m!6651272))

(assert (=> d!1797182 d!1797404))

(declare-fun b_lambda!215317 () Bool)

(assert (= b_lambda!215307 (or b!5695071 b_lambda!215317)))

(declare-fun bs!1327774 () Bool)

(declare-fun d!1797406 () Bool)

(assert (= bs!1327774 (and d!1797406 b!5695071)))

(assert (=> bs!1327774 (= (dynLambda!24745 lambda!306931 lt!2272305) (derivationStepZipperUp!957 lt!2272305 (h!69690 s!2326)))))

(assert (=> bs!1327774 m!6651326))

(assert (=> d!1797352 d!1797406))

(check-sat (not b!5695441) (not b!5695204) (not b!5695957) (not d!1797188) (not b!5695622) (not b!5695921) (not b!5695246) (not b!5695621) (not bm!433510) (not b!5695932) (not bm!433513) (not d!1797334) (not d!1797374) (not b!5695763) (not bm!433515) (not b!5695430) (not b!5695892) (not d!1797184) (not b!5695206) (not b!5695929) (not b_lambda!215313) (not b!5695773) (not b!5695427) (not bm!433418) (not d!1797352) (not b!5695438) (not b!5695230) (not b!5695813) (not b!5695784) (not b!5695754) (not b!5695357) (not b!5695930) (not bm!433430) (not b!5695924) (not bm!433507) (not bm!433492) (not bm!433514) (not d!1797224) (not b!5695541) (not d!1797198) (not bm!433415) (not d!1797380) (not b!5695812) (not b_lambda!215311) (not bm!433453) (not d!1797296) (not b!5695355) (not b!5695619) (not d!1797340) (not bs!1327773) (not b!5695627) (not b!5695922) (not d!1797392) (not b!5695624) (not b!5695869) (not d!1797298) (not b!5695201) (not d!1797356) (not b!5695945) (not b!5695347) (not b!5695213) (not b_lambda!215315) (not b!5695247) (not d!1797344) (not d!1797182) (not b!5695166) (not d!1797348) (not b!5695879) (not b!5695819) (not b!5695775) (not b!5695351) (not b!5695808) (not b!5695937) (not b!5695890) (not b!5695807) (not b!5695205) (not d!1797238) (not b!5695774) (not b!5695134) (not b!5695202) (not d!1797372) (not d!1797330) (not b!5695131) tp_is_empty!40631 (not b!5695805) (not d!1797270) (not b!5695925) (not b!5695440) (not bm!433508) (not d!1797346) (not b!5695884) (not d!1797394) (not d!1797390) (not b!5695200) (not b!5695855) (not b!5695887) (not b!5695880) (not b!5695810) (not bm!433491) (not bm!433493) (not b!5695826) (not d!1797382) (not d!1797300) (not b!5695828) (not b!5695356) (not b!5695947) (not d!1797170) (not b!5695928) (not b!5695532) (not bs!1327774) (not d!1797366) (not b!5695816) (not bm!433428) (not b_lambda!215317) (not b!5695883) (not setNonEmpty!38133) (not d!1797268) (not b!5695199) (not b!5695831) (not d!1797336) (not b!5695620) (not b!5695885) (not d!1797358) (not b!5695358) (not b!5695938) (not b!5695780) (not b!5695776) (not b!5695434) (not bm!433414) (not bm!433494) (not d!1797386) (not d!1797376) (not b!5695439) (not d!1797162) (not bm!433490) (not d!1797388) (not b!5695936) (not bm!433452) (not b!5695781) (not b!5695946) (not bs!1327771) (not b!5695891) (not b!5695253) (not d!1797326) (not b!5695866) (not b!5695908) (not d!1797312) (not b!5695778) (not d!1797164) (not b!5695926) (not b!5695163) (not bm!433489) (not b!5695933) (not d!1797228) (not d!1797332) (not b!5695934) (not b!5695806) (not d!1797378) (not b!5695894) (not d!1797354) (not bm!433517) (not b!5695823) (not b!5695882) (not b!5695769) (not b!5695952) (not bs!1327772) (not bm!433431) (not b!5695920) (not d!1797172) (not b!5695765) (not b!5695779) (not b!5695252) (not d!1797342) (not d!1797212) (not d!1797360))
(check-sat)
