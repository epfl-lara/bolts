; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!631562 () Bool)

(assert start!631562)

(declare-fun b!6374910 () Bool)

(assert (=> b!6374910 true))

(assert (=> b!6374910 true))

(declare-fun lambda!351450 () Int)

(declare-fun lambda!351449 () Int)

(assert (=> b!6374910 (not (= lambda!351450 lambda!351449))))

(assert (=> b!6374910 true))

(assert (=> b!6374910 true))

(declare-fun b!6374913 () Bool)

(assert (=> b!6374913 true))

(declare-fun b!6374892 () Bool)

(declare-fun res!2622415 () Bool)

(declare-fun e!3870135 () Bool)

(assert (=> b!6374892 (=> res!2622415 e!3870135)))

(declare-datatypes ((C!32844 0))(
  ( (C!32845 (val!26124 Int)) )
))
(declare-datatypes ((Regex!16287 0))(
  ( (ElementMatch!16287 (c!1161140 C!32844)) (Concat!25132 (regOne!33086 Regex!16287) (regTwo!33086 Regex!16287)) (EmptyExpr!16287) (Star!16287 (reg!16616 Regex!16287)) (EmptyLang!16287) (Union!16287 (regOne!33087 Regex!16287) (regTwo!33087 Regex!16287)) )
))
(declare-datatypes ((List!65160 0))(
  ( (Nil!65036) (Cons!65036 (h!71484 Regex!16287) (t!378762 List!65160)) )
))
(declare-datatypes ((Context!11342 0))(
  ( (Context!11343 (exprs!6171 List!65160)) )
))
(declare-datatypes ((List!65161 0))(
  ( (Nil!65037) (Cons!65037 (h!71485 Context!11342) (t!378763 List!65161)) )
))
(declare-fun zl!343 () List!65161)

(declare-fun isEmpty!37157 (List!65161) Bool)

(assert (=> b!6374892 (= res!2622415 (not (isEmpty!37157 (t!378763 zl!343))))))

(declare-fun b!6374893 () Bool)

(declare-fun e!3870139 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2369036 () (InoxSet Context!11342))

(declare-datatypes ((List!65162 0))(
  ( (Nil!65038) (Cons!65038 (h!71486 C!32844) (t!378764 List!65162)) )
))
(declare-fun s!2326 () List!65162)

(declare-fun matchZipper!2299 ((InoxSet Context!11342) List!65162) Bool)

(assert (=> b!6374893 (= e!3870139 (matchZipper!2299 lt!2369036 (t!378764 s!2326)))))

(declare-fun b!6374894 () Bool)

(declare-fun res!2622407 () Bool)

(declare-fun e!3870136 () Bool)

(assert (=> b!6374894 (=> res!2622407 e!3870136)))

(declare-fun isEmpty!37158 (List!65160) Bool)

(assert (=> b!6374894 (= res!2622407 (isEmpty!37158 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6374895 () Bool)

(declare-fun res!2622416 () Bool)

(declare-fun e!3870148 () Bool)

(assert (=> b!6374895 (=> res!2622416 e!3870148)))

(declare-fun lt!2369031 () (InoxSet Context!11342))

(declare-fun lt!2369027 () (InoxSet Context!11342))

(assert (=> b!6374895 (= res!2622416 (not (= (matchZipper!2299 lt!2369031 s!2326) (matchZipper!2299 lt!2369027 (t!378764 s!2326)))))))

(declare-fun b!6374896 () Bool)

(declare-fun res!2622424 () Bool)

(assert (=> b!6374896 (=> res!2622424 e!3870135)))

(get-info :version)

(assert (=> b!6374896 (= res!2622424 (not ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6374897 () Bool)

(declare-fun e!3870142 () Bool)

(declare-fun tp_is_empty!41827 () Bool)

(assert (=> b!6374897 (= e!3870142 tp_is_empty!41827)))

(declare-fun b!6374898 () Bool)

(declare-fun res!2622426 () Bool)

(assert (=> b!6374898 (=> res!2622426 e!3870135)))

(declare-fun r!7292 () Regex!16287)

(assert (=> b!6374898 (= res!2622426 (or ((_ is EmptyExpr!16287) r!7292) ((_ is EmptyLang!16287) r!7292) ((_ is ElementMatch!16287) r!7292) ((_ is Union!16287) r!7292) (not ((_ is Concat!25132) r!7292))))))

(declare-fun b!6374899 () Bool)

(declare-datatypes ((Unit!158479 0))(
  ( (Unit!158480) )
))
(declare-fun e!3870137 () Unit!158479)

(declare-fun Unit!158481 () Unit!158479)

(assert (=> b!6374899 (= e!3870137 Unit!158481)))

(declare-fun lt!2369020 () (InoxSet Context!11342))

(declare-fun lt!2369037 () Unit!158479)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1118 ((InoxSet Context!11342) (InoxSet Context!11342) List!65162) Unit!158479)

(assert (=> b!6374899 (= lt!2369037 (lemmaZipperConcatMatchesSameAsBothZippers!1118 lt!2369020 lt!2369036 (t!378764 s!2326)))))

(declare-fun res!2622409 () Bool)

(assert (=> b!6374899 (= res!2622409 (matchZipper!2299 lt!2369020 (t!378764 s!2326)))))

(assert (=> b!6374899 (=> res!2622409 e!3870139)))

(assert (=> b!6374899 (= (matchZipper!2299 ((_ map or) lt!2369020 lt!2369036) (t!378764 s!2326)) e!3870139)))

(declare-fun b!6374900 () Bool)

(declare-fun e!3870133 () Bool)

(declare-fun tp!1774573 () Bool)

(assert (=> b!6374900 (= e!3870133 tp!1774573)))

(declare-fun b!6374901 () Bool)

(declare-fun res!2622423 () Bool)

(assert (=> b!6374901 (=> res!2622423 e!3870135)))

(declare-fun generalisedUnion!2131 (List!65160) Regex!16287)

(declare-fun unfocusZipperList!1708 (List!65161) List!65160)

(assert (=> b!6374901 (= res!2622423 (not (= r!7292 (generalisedUnion!2131 (unfocusZipperList!1708 zl!343)))))))

(declare-fun b!6374903 () Bool)

(declare-fun res!2622425 () Bool)

(declare-fun e!3870140 () Bool)

(assert (=> b!6374903 (=> (not res!2622425) (not e!3870140))))

(declare-fun z!1189 () (InoxSet Context!11342))

(declare-fun toList!10071 ((InoxSet Context!11342)) List!65161)

(assert (=> b!6374903 (= res!2622425 (= (toList!10071 z!1189) zl!343))))

(declare-fun b!6374904 () Bool)

(declare-fun e!3870143 () Bool)

(assert (=> b!6374904 (= e!3870143 e!3870148)))

(declare-fun res!2622417 () Bool)

(assert (=> b!6374904 (=> res!2622417 e!3870148)))

(declare-fun lt!2369019 () (InoxSet Context!11342))

(assert (=> b!6374904 (= res!2622417 (not (= lt!2369027 lt!2369019)))))

(declare-fun lt!2369039 () Context!11342)

(declare-fun lambda!351451 () Int)

(declare-fun flatMap!1792 ((InoxSet Context!11342) Int) (InoxSet Context!11342))

(declare-fun derivationStepZipperUp!1461 (Context!11342 C!32844) (InoxSet Context!11342))

(assert (=> b!6374904 (= (flatMap!1792 lt!2369031 lambda!351451) (derivationStepZipperUp!1461 lt!2369039 (h!71486 s!2326)))))

(declare-fun lt!2369023 () Unit!158479)

(declare-fun lemmaFlatMapOnSingletonSet!1318 ((InoxSet Context!11342) Context!11342 Int) Unit!158479)

(assert (=> b!6374904 (= lt!2369023 (lemmaFlatMapOnSingletonSet!1318 lt!2369031 lt!2369039 lambda!351451))))

(declare-fun lt!2369042 () (InoxSet Context!11342))

(assert (=> b!6374904 (= lt!2369042 (derivationStepZipperUp!1461 lt!2369039 (h!71486 s!2326)))))

(declare-fun derivationStepZipper!2253 ((InoxSet Context!11342) C!32844) (InoxSet Context!11342))

(assert (=> b!6374904 (= lt!2369027 (derivationStepZipper!2253 lt!2369031 (h!71486 s!2326)))))

(assert (=> b!6374904 (= lt!2369031 (store ((as const (Array Context!11342 Bool)) false) lt!2369039 true))))

(declare-fun lt!2369024 () List!65160)

(assert (=> b!6374904 (= lt!2369039 (Context!11343 (Cons!65036 (reg!16616 (regOne!33086 r!7292)) lt!2369024)))))

(declare-fun b!6374905 () Bool)

(declare-fun e!3870146 () Bool)

(assert (=> b!6374905 (= e!3870140 e!3870146)))

(declare-fun res!2622408 () Bool)

(assert (=> b!6374905 (=> (not res!2622408) (not e!3870146))))

(declare-fun lt!2369045 () Regex!16287)

(assert (=> b!6374905 (= res!2622408 (= r!7292 lt!2369045))))

(declare-fun unfocusZipper!2029 (List!65161) Regex!16287)

(assert (=> b!6374905 (= lt!2369045 (unfocusZipper!2029 zl!343))))

(declare-fun b!6374906 () Bool)

(declare-fun e!3870144 () Bool)

(declare-fun tp!1774574 () Bool)

(assert (=> b!6374906 (= e!3870144 (and tp_is_empty!41827 tp!1774574))))

(declare-fun b!6374907 () Bool)

(assert (=> b!6374907 (= e!3870146 (not e!3870135))))

(declare-fun res!2622421 () Bool)

(assert (=> b!6374907 (=> res!2622421 e!3870135)))

(assert (=> b!6374907 (= res!2622421 (not ((_ is Cons!65037) zl!343)))))

(declare-fun lt!2369025 () Bool)

(declare-fun matchRSpec!3388 (Regex!16287 List!65162) Bool)

(assert (=> b!6374907 (= lt!2369025 (matchRSpec!3388 r!7292 s!2326))))

(declare-fun matchR!8470 (Regex!16287 List!65162) Bool)

(assert (=> b!6374907 (= lt!2369025 (matchR!8470 r!7292 s!2326))))

(declare-fun lt!2369044 () Unit!158479)

(declare-fun mainMatchTheorem!3388 (Regex!16287 List!65162) Unit!158479)

(assert (=> b!6374907 (= lt!2369044 (mainMatchTheorem!3388 r!7292 s!2326))))

(declare-fun b!6374908 () Bool)

(declare-fun Unit!158482 () Unit!158479)

(assert (=> b!6374908 (= e!3870137 Unit!158482)))

(declare-fun b!6374909 () Bool)

(declare-fun e!3870147 () Bool)

(declare-fun tp!1774569 () Bool)

(assert (=> b!6374909 (= e!3870147 tp!1774569)))

(assert (=> b!6374910 (= e!3870135 e!3870136)))

(declare-fun res!2622422 () Bool)

(assert (=> b!6374910 (=> res!2622422 e!3870136)))

(declare-fun lt!2369046 () Bool)

(assert (=> b!6374910 (= res!2622422 (or (not (= lt!2369025 lt!2369046)) ((_ is Nil!65038) s!2326)))))

(declare-fun Exists!3357 (Int) Bool)

(assert (=> b!6374910 (= (Exists!3357 lambda!351449) (Exists!3357 lambda!351450))))

(declare-fun lt!2369043 () Unit!158479)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1894 (Regex!16287 Regex!16287 List!65162) Unit!158479)

(assert (=> b!6374910 (= lt!2369043 (lemmaExistCutMatchRandMatchRSpecEquivalent!1894 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326))))

(assert (=> b!6374910 (= lt!2369046 (Exists!3357 lambda!351449))))

(declare-datatypes ((tuple2!66532 0))(
  ( (tuple2!66533 (_1!36569 List!65162) (_2!36569 List!65162)) )
))
(declare-datatypes ((Option!16178 0))(
  ( (None!16177) (Some!16177 (v!52346 tuple2!66532)) )
))
(declare-fun isDefined!12881 (Option!16178) Bool)

(declare-fun findConcatSeparation!2592 (Regex!16287 Regex!16287 List!65162 List!65162 List!65162) Option!16178)

(assert (=> b!6374910 (= lt!2369046 (isDefined!12881 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326)))))

(declare-fun lt!2369047 () Unit!158479)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2356 (Regex!16287 Regex!16287 List!65162) Unit!158479)

(assert (=> b!6374910 (= lt!2369047 (lemmaFindConcatSeparationEquivalentToExists!2356 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326))))

(declare-fun setRes!43482 () Bool)

(declare-fun setNonEmpty!43482 () Bool)

(declare-fun setElem!43482 () Context!11342)

(declare-fun tp!1774578 () Bool)

(declare-fun inv!83964 (Context!11342) Bool)

(assert (=> setNonEmpty!43482 (= setRes!43482 (and tp!1774578 (inv!83964 setElem!43482) e!3870147))))

(declare-fun setRest!43482 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43482 (= z!1189 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43482 true) setRest!43482))))

(declare-fun b!6374911 () Bool)

(declare-fun res!2622418 () Bool)

(declare-fun e!3870138 () Bool)

(assert (=> b!6374911 (=> res!2622418 e!3870138)))

(assert (=> b!6374911 (= res!2622418 (or ((_ is Concat!25132) (regOne!33086 r!7292)) (not ((_ is Star!16287) (regOne!33086 r!7292)))))))

(declare-fun b!6374912 () Bool)

(declare-fun e!3870141 () Bool)

(assert (=> b!6374912 (= e!3870148 e!3870141)))

(declare-fun res!2622406 () Bool)

(assert (=> b!6374912 (=> res!2622406 e!3870141)))

(declare-fun lt!2369033 () Regex!16287)

(assert (=> b!6374912 (= res!2622406 (not (= r!7292 lt!2369033)))))

(declare-fun lt!2369048 () Regex!16287)

(assert (=> b!6374912 (= lt!2369033 (Concat!25132 lt!2369048 (regTwo!33086 r!7292)))))

(assert (=> b!6374913 (= e!3870136 e!3870138)))

(declare-fun res!2622419 () Bool)

(assert (=> b!6374913 (=> res!2622419 e!3870138)))

(assert (=> b!6374913 (= res!2622419 (or (and ((_ is ElementMatch!16287) (regOne!33086 r!7292)) (= (c!1161140 (regOne!33086 r!7292)) (h!71486 s!2326))) ((_ is Union!16287) (regOne!33086 r!7292))))))

(declare-fun lt!2369041 () Unit!158479)

(assert (=> b!6374913 (= lt!2369041 e!3870137)))

(declare-fun c!1161139 () Bool)

(declare-fun nullable!6280 (Regex!16287) Bool)

(assert (=> b!6374913 (= c!1161139 (nullable!6280 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6374913 (= (flatMap!1792 z!1189 lambda!351451) (derivationStepZipperUp!1461 (h!71485 zl!343) (h!71486 s!2326)))))

(declare-fun lt!2369030 () Unit!158479)

(assert (=> b!6374913 (= lt!2369030 (lemmaFlatMapOnSingletonSet!1318 z!1189 (h!71485 zl!343) lambda!351451))))

(declare-fun lt!2369040 () Context!11342)

(assert (=> b!6374913 (= lt!2369036 (derivationStepZipperUp!1461 lt!2369040 (h!71486 s!2326)))))

(declare-fun derivationStepZipperDown!1535 (Regex!16287 Context!11342 C!32844) (InoxSet Context!11342))

(assert (=> b!6374913 (= lt!2369020 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (h!71485 zl!343))) lt!2369040 (h!71486 s!2326)))))

(assert (=> b!6374913 (= lt!2369040 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun lt!2369034 () (InoxSet Context!11342))

(assert (=> b!6374913 (= lt!2369034 (derivationStepZipperUp!1461 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))) (h!71486 s!2326)))))

(declare-fun b!6374914 () Bool)

(declare-fun e!3870145 () Bool)

(assert (=> b!6374914 (= e!3870145 (nullable!6280 (regOne!33086 (regOne!33086 r!7292))))))

(declare-fun b!6374915 () Bool)

(declare-fun res!2622412 () Bool)

(assert (=> b!6374915 (=> res!2622412 e!3870138)))

(assert (=> b!6374915 (= res!2622412 e!3870145)))

(declare-fun res!2622414 () Bool)

(assert (=> b!6374915 (=> (not res!2622414) (not e!3870145))))

(assert (=> b!6374915 (= res!2622414 ((_ is Concat!25132) (regOne!33086 r!7292)))))

(declare-fun b!6374916 () Bool)

(declare-fun tp!1774572 () Bool)

(declare-fun tp!1774571 () Bool)

(assert (=> b!6374916 (= e!3870142 (and tp!1774572 tp!1774571))))

(declare-fun b!6374917 () Bool)

(declare-fun res!2622413 () Bool)

(assert (=> b!6374917 (=> res!2622413 e!3870135)))

(declare-fun generalisedConcat!1884 (List!65160) Regex!16287)

(assert (=> b!6374917 (= res!2622413 (not (= r!7292 (generalisedConcat!1884 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6374918 () Bool)

(declare-fun lt!2369038 () Context!11342)

(assert (=> b!6374918 (= e!3870141 (inv!83964 lt!2369038))))

(declare-fun lt!2369028 () Context!11342)

(declare-fun lt!2369032 () (InoxSet Context!11342))

(assert (=> b!6374918 (= (flatMap!1792 lt!2369032 lambda!351451) (derivationStepZipperUp!1461 lt!2369028 (h!71486 s!2326)))))

(declare-fun lt!2369029 () Unit!158479)

(assert (=> b!6374918 (= lt!2369029 (lemmaFlatMapOnSingletonSet!1318 lt!2369032 lt!2369028 lambda!351451))))

(declare-fun lt!2369026 () (InoxSet Context!11342))

(assert (=> b!6374918 (= (flatMap!1792 lt!2369026 lambda!351451) (derivationStepZipperUp!1461 lt!2369038 (h!71486 s!2326)))))

(declare-fun lt!2369021 () Unit!158479)

(assert (=> b!6374918 (= lt!2369021 (lemmaFlatMapOnSingletonSet!1318 lt!2369026 lt!2369038 lambda!351451))))

(declare-fun lt!2369035 () (InoxSet Context!11342))

(assert (=> b!6374918 (= lt!2369035 (derivationStepZipperUp!1461 lt!2369028 (h!71486 s!2326)))))

(declare-fun lt!2369022 () (InoxSet Context!11342))

(assert (=> b!6374918 (= lt!2369022 (derivationStepZipperUp!1461 lt!2369038 (h!71486 s!2326)))))

(assert (=> b!6374918 (= lt!2369032 (store ((as const (Array Context!11342 Bool)) false) lt!2369028 true))))

(assert (=> b!6374918 (= lt!2369026 (store ((as const (Array Context!11342 Bool)) false) lt!2369038 true))))

(assert (=> b!6374918 (= lt!2369038 (Context!11343 (Cons!65036 (reg!16616 (regOne!33086 r!7292)) Nil!65036)))))

(declare-fun setIsEmpty!43482 () Bool)

(assert (=> setIsEmpty!43482 setRes!43482))

(declare-fun tp!1774576 () Bool)

(declare-fun e!3870134 () Bool)

(declare-fun b!6374902 () Bool)

(assert (=> b!6374902 (= e!3870134 (and (inv!83964 (h!71485 zl!343)) e!3870133 tp!1774576))))

(declare-fun res!2622411 () Bool)

(assert (=> start!631562 (=> (not res!2622411) (not e!3870140))))

(declare-fun validRegex!8023 (Regex!16287) Bool)

(assert (=> start!631562 (= res!2622411 (validRegex!8023 r!7292))))

(assert (=> start!631562 e!3870140))

(assert (=> start!631562 e!3870142))

(declare-fun condSetEmpty!43482 () Bool)

(assert (=> start!631562 (= condSetEmpty!43482 (= z!1189 ((as const (Array Context!11342 Bool)) false)))))

(assert (=> start!631562 setRes!43482))

(assert (=> start!631562 e!3870134))

(assert (=> start!631562 e!3870144))

(declare-fun b!6374919 () Bool)

(declare-fun tp!1774570 () Bool)

(assert (=> b!6374919 (= e!3870142 tp!1774570)))

(declare-fun b!6374920 () Bool)

(declare-fun tp!1774577 () Bool)

(declare-fun tp!1774575 () Bool)

(assert (=> b!6374920 (= e!3870142 (and tp!1774577 tp!1774575))))

(declare-fun b!6374921 () Bool)

(declare-fun res!2622405 () Bool)

(assert (=> b!6374921 (=> res!2622405 e!3870141)))

(assert (=> b!6374921 (= res!2622405 (not (= (unfocusZipper!2029 (Cons!65037 lt!2369039 Nil!65037)) (Concat!25132 (reg!16616 (regOne!33086 r!7292)) lt!2369033))))))

(declare-fun b!6374922 () Bool)

(declare-fun res!2622420 () Bool)

(assert (=> b!6374922 (=> res!2622420 e!3870148)))

(assert (=> b!6374922 (= res!2622420 (not (= lt!2369045 r!7292)))))

(declare-fun b!6374923 () Bool)

(assert (=> b!6374923 (= e!3870138 e!3870143)))

(declare-fun res!2622410 () Bool)

(assert (=> b!6374923 (=> res!2622410 e!3870143)))

(assert (=> b!6374923 (= res!2622410 (not (= lt!2369020 lt!2369019)))))

(assert (=> b!6374923 (= lt!2369019 (derivationStepZipperDown!1535 (reg!16616 (regOne!33086 r!7292)) lt!2369028 (h!71486 s!2326)))))

(assert (=> b!6374923 (= lt!2369028 (Context!11343 lt!2369024))))

(assert (=> b!6374923 (= lt!2369024 (Cons!65036 lt!2369048 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6374923 (= lt!2369048 (Star!16287 (reg!16616 (regOne!33086 r!7292))))))

(assert (= (and start!631562 res!2622411) b!6374903))

(assert (= (and b!6374903 res!2622425) b!6374905))

(assert (= (and b!6374905 res!2622408) b!6374907))

(assert (= (and b!6374907 (not res!2622421)) b!6374892))

(assert (= (and b!6374892 (not res!2622415)) b!6374917))

(assert (= (and b!6374917 (not res!2622413)) b!6374896))

(assert (= (and b!6374896 (not res!2622424)) b!6374901))

(assert (= (and b!6374901 (not res!2622423)) b!6374898))

(assert (= (and b!6374898 (not res!2622426)) b!6374910))

(assert (= (and b!6374910 (not res!2622422)) b!6374894))

(assert (= (and b!6374894 (not res!2622407)) b!6374913))

(assert (= (and b!6374913 c!1161139) b!6374899))

(assert (= (and b!6374913 (not c!1161139)) b!6374908))

(assert (= (and b!6374899 (not res!2622409)) b!6374893))

(assert (= (and b!6374913 (not res!2622419)) b!6374915))

(assert (= (and b!6374915 res!2622414) b!6374914))

(assert (= (and b!6374915 (not res!2622412)) b!6374911))

(assert (= (and b!6374911 (not res!2622418)) b!6374923))

(assert (= (and b!6374923 (not res!2622410)) b!6374904))

(assert (= (and b!6374904 (not res!2622417)) b!6374895))

(assert (= (and b!6374895 (not res!2622416)) b!6374922))

(assert (= (and b!6374922 (not res!2622420)) b!6374912))

(assert (= (and b!6374912 (not res!2622406)) b!6374921))

(assert (= (and b!6374921 (not res!2622405)) b!6374918))

(assert (= (and start!631562 ((_ is ElementMatch!16287) r!7292)) b!6374897))

(assert (= (and start!631562 ((_ is Concat!25132) r!7292)) b!6374920))

(assert (= (and start!631562 ((_ is Star!16287) r!7292)) b!6374919))

(assert (= (and start!631562 ((_ is Union!16287) r!7292)) b!6374916))

(assert (= (and start!631562 condSetEmpty!43482) setIsEmpty!43482))

(assert (= (and start!631562 (not condSetEmpty!43482)) setNonEmpty!43482))

(assert (= setNonEmpty!43482 b!6374909))

(assert (= b!6374902 b!6374900))

(assert (= (and start!631562 ((_ is Cons!65037) zl!343)) b!6374902))

(assert (= (and start!631562 ((_ is Cons!65038) s!2326)) b!6374906))

(declare-fun m!7176686 () Bool)

(assert (=> setNonEmpty!43482 m!7176686))

(declare-fun m!7176688 () Bool)

(assert (=> b!6374902 m!7176688))

(declare-fun m!7176690 () Bool)

(assert (=> b!6374917 m!7176690))

(declare-fun m!7176692 () Bool)

(assert (=> b!6374913 m!7176692))

(declare-fun m!7176694 () Bool)

(assert (=> b!6374913 m!7176694))

(declare-fun m!7176696 () Bool)

(assert (=> b!6374913 m!7176696))

(declare-fun m!7176698 () Bool)

(assert (=> b!6374913 m!7176698))

(declare-fun m!7176700 () Bool)

(assert (=> b!6374913 m!7176700))

(declare-fun m!7176702 () Bool)

(assert (=> b!6374913 m!7176702))

(declare-fun m!7176704 () Bool)

(assert (=> b!6374913 m!7176704))

(declare-fun m!7176706 () Bool)

(assert (=> b!6374910 m!7176706))

(assert (=> b!6374910 m!7176706))

(declare-fun m!7176708 () Bool)

(assert (=> b!6374910 m!7176708))

(declare-fun m!7176710 () Bool)

(assert (=> b!6374910 m!7176710))

(declare-fun m!7176712 () Bool)

(assert (=> b!6374910 m!7176712))

(declare-fun m!7176714 () Bool)

(assert (=> b!6374910 m!7176714))

(assert (=> b!6374910 m!7176708))

(declare-fun m!7176716 () Bool)

(assert (=> b!6374910 m!7176716))

(declare-fun m!7176718 () Bool)

(assert (=> b!6374899 m!7176718))

(declare-fun m!7176720 () Bool)

(assert (=> b!6374899 m!7176720))

(declare-fun m!7176722 () Bool)

(assert (=> b!6374899 m!7176722))

(declare-fun m!7176724 () Bool)

(assert (=> b!6374904 m!7176724))

(declare-fun m!7176726 () Bool)

(assert (=> b!6374904 m!7176726))

(declare-fun m!7176728 () Bool)

(assert (=> b!6374904 m!7176728))

(declare-fun m!7176730 () Bool)

(assert (=> b!6374904 m!7176730))

(declare-fun m!7176732 () Bool)

(assert (=> b!6374904 m!7176732))

(declare-fun m!7176734 () Bool)

(assert (=> b!6374923 m!7176734))

(declare-fun m!7176736 () Bool)

(assert (=> b!6374901 m!7176736))

(assert (=> b!6374901 m!7176736))

(declare-fun m!7176738 () Bool)

(assert (=> b!6374901 m!7176738))

(declare-fun m!7176740 () Bool)

(assert (=> b!6374921 m!7176740))

(declare-fun m!7176742 () Bool)

(assert (=> b!6374895 m!7176742))

(declare-fun m!7176744 () Bool)

(assert (=> b!6374895 m!7176744))

(declare-fun m!7176746 () Bool)

(assert (=> b!6374903 m!7176746))

(declare-fun m!7176748 () Bool)

(assert (=> b!6374918 m!7176748))

(declare-fun m!7176750 () Bool)

(assert (=> b!6374918 m!7176750))

(declare-fun m!7176752 () Bool)

(assert (=> b!6374918 m!7176752))

(declare-fun m!7176754 () Bool)

(assert (=> b!6374918 m!7176754))

(declare-fun m!7176756 () Bool)

(assert (=> b!6374918 m!7176756))

(declare-fun m!7176758 () Bool)

(assert (=> b!6374918 m!7176758))

(declare-fun m!7176760 () Bool)

(assert (=> b!6374918 m!7176760))

(declare-fun m!7176762 () Bool)

(assert (=> b!6374918 m!7176762))

(declare-fun m!7176764 () Bool)

(assert (=> b!6374918 m!7176764))

(declare-fun m!7176766 () Bool)

(assert (=> b!6374892 m!7176766))

(declare-fun m!7176768 () Bool)

(assert (=> b!6374893 m!7176768))

(declare-fun m!7176770 () Bool)

(assert (=> b!6374894 m!7176770))

(declare-fun m!7176772 () Bool)

(assert (=> start!631562 m!7176772))

(declare-fun m!7176774 () Bool)

(assert (=> b!6374905 m!7176774))

(declare-fun m!7176776 () Bool)

(assert (=> b!6374907 m!7176776))

(declare-fun m!7176778 () Bool)

(assert (=> b!6374907 m!7176778))

(declare-fun m!7176780 () Bool)

(assert (=> b!6374907 m!7176780))

(declare-fun m!7176782 () Bool)

(assert (=> b!6374914 m!7176782))

(check-sat (not b!6374917) (not b!6374910) (not b!6374899) (not b!6374901) (not b!6374893) (not b!6374920) (not b!6374904) (not b!6374895) (not b!6374916) (not b!6374894) (not b!6374907) tp_is_empty!41827 (not b!6374906) (not b!6374913) (not b!6374909) (not b!6374892) (not start!631562) (not b!6374921) (not b!6374905) (not setNonEmpty!43482) (not b!6374923) (not b!6374918) (not b!6374902) (not b!6374903) (not b!6374900) (not b!6374919) (not b!6374914))
(check-sat)
(get-model)

(declare-fun d!1999163 () Bool)

(declare-fun lt!2369054 () Regex!16287)

(assert (=> d!1999163 (validRegex!8023 lt!2369054)))

(assert (=> d!1999163 (= lt!2369054 (generalisedUnion!2131 (unfocusZipperList!1708 zl!343)))))

(assert (=> d!1999163 (= (unfocusZipper!2029 zl!343) lt!2369054)))

(declare-fun bs!1596264 () Bool)

(assert (= bs!1596264 d!1999163))

(declare-fun m!7176804 () Bool)

(assert (=> bs!1596264 m!7176804))

(assert (=> bs!1596264 m!7176736))

(assert (=> bs!1596264 m!7176736))

(assert (=> bs!1596264 m!7176738))

(assert (=> b!6374905 d!1999163))

(declare-fun d!1999171 () Bool)

(declare-fun c!1161157 () Bool)

(declare-fun isEmpty!37161 (List!65162) Bool)

(assert (=> d!1999171 (= c!1161157 (isEmpty!37161 s!2326))))

(declare-fun e!3870173 () Bool)

(assert (=> d!1999171 (= (matchZipper!2299 lt!2369031 s!2326) e!3870173)))

(declare-fun b!6374970 () Bool)

(declare-fun nullableZipper!2053 ((InoxSet Context!11342)) Bool)

(assert (=> b!6374970 (= e!3870173 (nullableZipper!2053 lt!2369031))))

(declare-fun b!6374971 () Bool)

(declare-fun head!13066 (List!65162) C!32844)

(declare-fun tail!12151 (List!65162) List!65162)

(assert (=> b!6374971 (= e!3870173 (matchZipper!2299 (derivationStepZipper!2253 lt!2369031 (head!13066 s!2326)) (tail!12151 s!2326)))))

(assert (= (and d!1999171 c!1161157) b!6374970))

(assert (= (and d!1999171 (not c!1161157)) b!6374971))

(declare-fun m!7176806 () Bool)

(assert (=> d!1999171 m!7176806))

(declare-fun m!7176808 () Bool)

(assert (=> b!6374970 m!7176808))

(declare-fun m!7176810 () Bool)

(assert (=> b!6374971 m!7176810))

(assert (=> b!6374971 m!7176810))

(declare-fun m!7176812 () Bool)

(assert (=> b!6374971 m!7176812))

(declare-fun m!7176814 () Bool)

(assert (=> b!6374971 m!7176814))

(assert (=> b!6374971 m!7176812))

(assert (=> b!6374971 m!7176814))

(declare-fun m!7176816 () Bool)

(assert (=> b!6374971 m!7176816))

(assert (=> b!6374895 d!1999171))

(declare-fun d!1999173 () Bool)

(declare-fun c!1161160 () Bool)

(assert (=> d!1999173 (= c!1161160 (isEmpty!37161 (t!378764 s!2326)))))

(declare-fun e!3870180 () Bool)

(assert (=> d!1999173 (= (matchZipper!2299 lt!2369027 (t!378764 s!2326)) e!3870180)))

(declare-fun b!6374984 () Bool)

(assert (=> b!6374984 (= e!3870180 (nullableZipper!2053 lt!2369027))))

(declare-fun b!6374985 () Bool)

(assert (=> b!6374985 (= e!3870180 (matchZipper!2299 (derivationStepZipper!2253 lt!2369027 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))))))

(assert (= (and d!1999173 c!1161160) b!6374984))

(assert (= (and d!1999173 (not c!1161160)) b!6374985))

(declare-fun m!7176818 () Bool)

(assert (=> d!1999173 m!7176818))

(declare-fun m!7176820 () Bool)

(assert (=> b!6374984 m!7176820))

(declare-fun m!7176822 () Bool)

(assert (=> b!6374985 m!7176822))

(assert (=> b!6374985 m!7176822))

(declare-fun m!7176824 () Bool)

(assert (=> b!6374985 m!7176824))

(declare-fun m!7176826 () Bool)

(assert (=> b!6374985 m!7176826))

(assert (=> b!6374985 m!7176824))

(assert (=> b!6374985 m!7176826))

(declare-fun m!7176828 () Bool)

(assert (=> b!6374985 m!7176828))

(assert (=> b!6374895 d!1999173))

(declare-fun d!1999175 () Bool)

(declare-fun choose!47392 ((InoxSet Context!11342) Int) (InoxSet Context!11342))

(assert (=> d!1999175 (= (flatMap!1792 lt!2369031 lambda!351451) (choose!47392 lt!2369031 lambda!351451))))

(declare-fun bs!1596265 () Bool)

(assert (= bs!1596265 d!1999175))

(declare-fun m!7176830 () Bool)

(assert (=> bs!1596265 m!7176830))

(assert (=> b!6374904 d!1999175))

(declare-fun b!6375010 () Bool)

(declare-fun e!3870196 () (InoxSet Context!11342))

(assert (=> b!6375010 (= e!3870196 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375011 () Bool)

(declare-fun e!3870195 () (InoxSet Context!11342))

(assert (=> b!6375011 (= e!3870195 e!3870196)))

(declare-fun c!1161168 () Bool)

(assert (=> b!6375011 (= c!1161168 ((_ is Cons!65036) (exprs!6171 lt!2369039)))))

(declare-fun b!6375012 () Bool)

(declare-fun call!544523 () (InoxSet Context!11342))

(assert (=> b!6375012 (= e!3870195 ((_ map or) call!544523 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (h!71486 s!2326))))))

(declare-fun b!6375013 () Bool)

(assert (=> b!6375013 (= e!3870196 call!544523)))

(declare-fun bm!544518 () Bool)

(assert (=> bm!544518 (= call!544523 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369039)) (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (h!71486 s!2326)))))

(declare-fun d!1999177 () Bool)

(declare-fun c!1161167 () Bool)

(declare-fun e!3870194 () Bool)

(assert (=> d!1999177 (= c!1161167 e!3870194)))

(declare-fun res!2622454 () Bool)

(assert (=> d!1999177 (=> (not res!2622454) (not e!3870194))))

(assert (=> d!1999177 (= res!2622454 ((_ is Cons!65036) (exprs!6171 lt!2369039)))))

(assert (=> d!1999177 (= (derivationStepZipperUp!1461 lt!2369039 (h!71486 s!2326)) e!3870195)))

(declare-fun b!6375009 () Bool)

(assert (=> b!6375009 (= e!3870194 (nullable!6280 (h!71484 (exprs!6171 lt!2369039))))))

(assert (= (and d!1999177 res!2622454) b!6375009))

(assert (= (and d!1999177 c!1161167) b!6375012))

(assert (= (and d!1999177 (not c!1161167)) b!6375011))

(assert (= (and b!6375011 c!1161168) b!6375013))

(assert (= (and b!6375011 (not c!1161168)) b!6375010))

(assert (= (or b!6375012 b!6375013) bm!544518))

(declare-fun m!7176860 () Bool)

(assert (=> b!6375012 m!7176860))

(declare-fun m!7176862 () Bool)

(assert (=> bm!544518 m!7176862))

(declare-fun m!7176864 () Bool)

(assert (=> b!6375009 m!7176864))

(assert (=> b!6374904 d!1999177))

(declare-fun d!1999185 () Bool)

(declare-fun dynLambda!25803 (Int Context!11342) (InoxSet Context!11342))

(assert (=> d!1999185 (= (flatMap!1792 lt!2369031 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369039))))

(declare-fun lt!2369069 () Unit!158479)

(declare-fun choose!47394 ((InoxSet Context!11342) Context!11342 Int) Unit!158479)

(assert (=> d!1999185 (= lt!2369069 (choose!47394 lt!2369031 lt!2369039 lambda!351451))))

(assert (=> d!1999185 (= lt!2369031 (store ((as const (Array Context!11342 Bool)) false) lt!2369039 true))))

(assert (=> d!1999185 (= (lemmaFlatMapOnSingletonSet!1318 lt!2369031 lt!2369039 lambda!351451) lt!2369069)))

(declare-fun b_lambda!242245 () Bool)

(assert (=> (not b_lambda!242245) (not d!1999185)))

(declare-fun bs!1596270 () Bool)

(assert (= bs!1596270 d!1999185))

(assert (=> bs!1596270 m!7176732))

(declare-fun m!7176870 () Bool)

(assert (=> bs!1596270 m!7176870))

(declare-fun m!7176872 () Bool)

(assert (=> bs!1596270 m!7176872))

(assert (=> bs!1596270 m!7176728))

(assert (=> b!6374904 d!1999185))

(declare-fun bs!1596271 () Bool)

(declare-fun d!1999189 () Bool)

(assert (= bs!1596271 (and d!1999189 b!6374913)))

(declare-fun lambda!351467 () Int)

(assert (=> bs!1596271 (= lambda!351467 lambda!351451)))

(assert (=> d!1999189 true))

(assert (=> d!1999189 (= (derivationStepZipper!2253 lt!2369031 (h!71486 s!2326)) (flatMap!1792 lt!2369031 lambda!351467))))

(declare-fun bs!1596272 () Bool)

(assert (= bs!1596272 d!1999189))

(declare-fun m!7176874 () Bool)

(assert (=> bs!1596272 m!7176874))

(assert (=> b!6374904 d!1999189))

(declare-fun b!6375104 () Bool)

(declare-fun e!3870254 () (InoxSet Context!11342))

(assert (=> b!6375104 (= e!3870254 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375105 () Bool)

(declare-fun e!3870255 () Bool)

(assert (=> b!6375105 (= e!3870255 (nullable!6280 (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))))

(declare-fun b!6375107 () Bool)

(declare-fun e!3870256 () (InoxSet Context!11342))

(declare-fun e!3870257 () (InoxSet Context!11342))

(assert (=> b!6375107 (= e!3870256 e!3870257)))

(declare-fun c!1161202 () Bool)

(assert (=> b!6375107 (= c!1161202 ((_ is Concat!25132) (reg!16616 (regOne!33086 r!7292))))))

(declare-fun call!544559 () List!65160)

(declare-fun call!544558 () (InoxSet Context!11342))

(declare-fun c!1161204 () Bool)

(declare-fun bm!544552 () Bool)

(assert (=> bm!544552 (= call!544558 (derivationStepZipperDown!1535 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))) (ite c!1161204 lt!2369028 (Context!11343 call!544559)) (h!71486 s!2326)))))

(declare-fun b!6375108 () Bool)

(declare-fun c!1161203 () Bool)

(assert (=> b!6375108 (= c!1161203 ((_ is Star!16287) (reg!16616 (regOne!33086 r!7292))))))

(assert (=> b!6375108 (= e!3870257 e!3870254)))

(declare-fun bm!544553 () Bool)

(declare-fun call!544562 () List!65160)

(assert (=> bm!544553 (= call!544562 call!544559)))

(declare-fun bm!544554 () Bool)

(declare-fun call!544561 () (InoxSet Context!11342))

(declare-fun call!544557 () (InoxSet Context!11342))

(assert (=> bm!544554 (= call!544561 call!544557)))

(declare-fun b!6375109 () Bool)

(declare-fun e!3870252 () (InoxSet Context!11342))

(declare-fun e!3870253 () (InoxSet Context!11342))

(assert (=> b!6375109 (= e!3870252 e!3870253)))

(assert (=> b!6375109 (= c!1161204 ((_ is Union!16287) (reg!16616 (regOne!33086 r!7292))))))

(declare-fun b!6375110 () Bool)

(assert (=> b!6375110 (= e!3870252 (store ((as const (Array Context!11342 Bool)) false) lt!2369028 true))))

(declare-fun c!1161201 () Bool)

(declare-fun bm!544555 () Bool)

(declare-fun $colon$colon!2148 (List!65160 Regex!16287) List!65160)

(assert (=> bm!544555 (= call!544559 ($colon$colon!2148 (exprs!6171 lt!2369028) (ite (or c!1161201 c!1161202) (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (regOne!33086 r!7292)))))))

(declare-fun b!6375111 () Bool)

(assert (=> b!6375111 (= e!3870257 call!544561)))

(declare-fun d!1999191 () Bool)

(declare-fun c!1161200 () Bool)

(assert (=> d!1999191 (= c!1161200 (and ((_ is ElementMatch!16287) (reg!16616 (regOne!33086 r!7292))) (= (c!1161140 (reg!16616 (regOne!33086 r!7292))) (h!71486 s!2326))))))

(assert (=> d!1999191 (= (derivationStepZipperDown!1535 (reg!16616 (regOne!33086 r!7292)) lt!2369028 (h!71486 s!2326)) e!3870252)))

(declare-fun b!6375106 () Bool)

(assert (=> b!6375106 (= e!3870256 ((_ map or) call!544558 call!544557))))

(declare-fun b!6375112 () Bool)

(declare-fun call!544560 () (InoxSet Context!11342))

(assert (=> b!6375112 (= e!3870253 ((_ map or) call!544560 call!544558))))

(declare-fun b!6375113 () Bool)

(assert (=> b!6375113 (= e!3870254 call!544561)))

(declare-fun bm!544556 () Bool)

(assert (=> bm!544556 (= call!544557 call!544560)))

(declare-fun bm!544557 () Bool)

(assert (=> bm!544557 (= call!544560 (derivationStepZipperDown!1535 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))) (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562)) (h!71486 s!2326)))))

(declare-fun b!6375114 () Bool)

(assert (=> b!6375114 (= c!1161201 e!3870255)))

(declare-fun res!2622485 () Bool)

(assert (=> b!6375114 (=> (not res!2622485) (not e!3870255))))

(assert (=> b!6375114 (= res!2622485 ((_ is Concat!25132) (reg!16616 (regOne!33086 r!7292))))))

(assert (=> b!6375114 (= e!3870253 e!3870256)))

(assert (= (and d!1999191 c!1161200) b!6375110))

(assert (= (and d!1999191 (not c!1161200)) b!6375109))

(assert (= (and b!6375109 c!1161204) b!6375112))

(assert (= (and b!6375109 (not c!1161204)) b!6375114))

(assert (= (and b!6375114 res!2622485) b!6375105))

(assert (= (and b!6375114 c!1161201) b!6375106))

(assert (= (and b!6375114 (not c!1161201)) b!6375107))

(assert (= (and b!6375107 c!1161202) b!6375111))

(assert (= (and b!6375107 (not c!1161202)) b!6375108))

(assert (= (and b!6375108 c!1161203) b!6375113))

(assert (= (and b!6375108 (not c!1161203)) b!6375104))

(assert (= (or b!6375111 b!6375113) bm!544553))

(assert (= (or b!6375111 b!6375113) bm!544554))

(assert (= (or b!6375106 bm!544553) bm!544555))

(assert (= (or b!6375106 bm!544554) bm!544556))

(assert (= (or b!6375112 b!6375106) bm!544552))

(assert (= (or b!6375112 bm!544556) bm!544557))

(declare-fun m!7176916 () Bool)

(assert (=> b!6375105 m!7176916))

(assert (=> b!6375110 m!7176752))

(declare-fun m!7176918 () Bool)

(assert (=> bm!544555 m!7176918))

(declare-fun m!7176920 () Bool)

(assert (=> bm!544557 m!7176920))

(declare-fun m!7176922 () Bool)

(assert (=> bm!544552 m!7176922))

(assert (=> b!6374923 d!1999191))

(declare-fun d!1999205 () Bool)

(declare-fun c!1161210 () Bool)

(assert (=> d!1999205 (= c!1161210 (isEmpty!37161 (t!378764 s!2326)))))

(declare-fun e!3870264 () Bool)

(assert (=> d!1999205 (= (matchZipper!2299 lt!2369036 (t!378764 s!2326)) e!3870264)))

(declare-fun b!6375126 () Bool)

(assert (=> b!6375126 (= e!3870264 (nullableZipper!2053 lt!2369036))))

(declare-fun b!6375127 () Bool)

(assert (=> b!6375127 (= e!3870264 (matchZipper!2299 (derivationStepZipper!2253 lt!2369036 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))))))

(assert (= (and d!1999205 c!1161210) b!6375126))

(assert (= (and d!1999205 (not c!1161210)) b!6375127))

(assert (=> d!1999205 m!7176818))

(declare-fun m!7176924 () Bool)

(assert (=> b!6375126 m!7176924))

(assert (=> b!6375127 m!7176822))

(assert (=> b!6375127 m!7176822))

(declare-fun m!7176926 () Bool)

(assert (=> b!6375127 m!7176926))

(assert (=> b!6375127 m!7176826))

(assert (=> b!6375127 m!7176926))

(assert (=> b!6375127 m!7176826))

(declare-fun m!7176928 () Bool)

(assert (=> b!6375127 m!7176928))

(assert (=> b!6374893 d!1999205))

(declare-fun d!1999207 () Bool)

(assert (=> d!1999207 (= (isEmpty!37158 (t!378762 (exprs!6171 (h!71485 zl!343)))) ((_ is Nil!65036) (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6374894 d!1999207))

(declare-fun d!1999209 () Bool)

(declare-fun nullableFct!2226 (Regex!16287) Bool)

(assert (=> d!1999209 (= (nullable!6280 (regOne!33086 (regOne!33086 r!7292))) (nullableFct!2226 (regOne!33086 (regOne!33086 r!7292))))))

(declare-fun bs!1596277 () Bool)

(assert (= bs!1596277 d!1999209))

(declare-fun m!7176930 () Bool)

(assert (=> bs!1596277 m!7176930))

(assert (=> b!6374914 d!1999209))

(declare-fun b!6375182 () Bool)

(declare-fun res!2622505 () Bool)

(declare-fun e!3870306 () Bool)

(assert (=> b!6375182 (=> (not res!2622505) (not e!3870306))))

(declare-fun call!544576 () Bool)

(assert (=> b!6375182 (= res!2622505 call!544576)))

(declare-fun e!3870304 () Bool)

(assert (=> b!6375182 (= e!3870304 e!3870306)))

(declare-fun c!1161230 () Bool)

(declare-fun c!1161231 () Bool)

(declare-fun bm!544570 () Bool)

(declare-fun call!544577 () Bool)

(assert (=> bm!544570 (= call!544577 (validRegex!8023 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))

(declare-fun b!6375183 () Bool)

(declare-fun e!3870302 () Bool)

(declare-fun e!3870300 () Bool)

(assert (=> b!6375183 (= e!3870302 e!3870300)))

(declare-fun res!2622504 () Bool)

(assert (=> b!6375183 (= res!2622504 (not (nullable!6280 (reg!16616 r!7292))))))

(assert (=> b!6375183 (=> (not res!2622504) (not e!3870300))))

(declare-fun b!6375184 () Bool)

(declare-fun e!3870303 () Bool)

(declare-fun e!3870305 () Bool)

(assert (=> b!6375184 (= e!3870303 e!3870305)))

(declare-fun res!2622507 () Bool)

(assert (=> b!6375184 (=> (not res!2622507) (not e!3870305))))

(assert (=> b!6375184 (= res!2622507 call!544576)))

(declare-fun b!6375185 () Bool)

(declare-fun call!544575 () Bool)

(assert (=> b!6375185 (= e!3870305 call!544575)))

(declare-fun b!6375186 () Bool)

(assert (=> b!6375186 (= e!3870306 call!544575)))

(declare-fun bm!544571 () Bool)

(assert (=> bm!544571 (= call!544576 call!544577)))

(declare-fun b!6375187 () Bool)

(assert (=> b!6375187 (= e!3870302 e!3870304)))

(assert (=> b!6375187 (= c!1161230 ((_ is Union!16287) r!7292))))

(declare-fun b!6375188 () Bool)

(declare-fun e!3870301 () Bool)

(assert (=> b!6375188 (= e!3870301 e!3870302)))

(assert (=> b!6375188 (= c!1161231 ((_ is Star!16287) r!7292))))

(declare-fun b!6375189 () Bool)

(declare-fun res!2622506 () Bool)

(assert (=> b!6375189 (=> res!2622506 e!3870303)))

(assert (=> b!6375189 (= res!2622506 (not ((_ is Concat!25132) r!7292)))))

(assert (=> b!6375189 (= e!3870304 e!3870303)))

(declare-fun bm!544572 () Bool)

(assert (=> bm!544572 (= call!544575 (validRegex!8023 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))

(declare-fun b!6375190 () Bool)

(assert (=> b!6375190 (= e!3870300 call!544577)))

(declare-fun d!1999211 () Bool)

(declare-fun res!2622503 () Bool)

(assert (=> d!1999211 (=> res!2622503 e!3870301)))

(assert (=> d!1999211 (= res!2622503 ((_ is ElementMatch!16287) r!7292))))

(assert (=> d!1999211 (= (validRegex!8023 r!7292) e!3870301)))

(assert (= (and d!1999211 (not res!2622503)) b!6375188))

(assert (= (and b!6375188 c!1161231) b!6375183))

(assert (= (and b!6375188 (not c!1161231)) b!6375187))

(assert (= (and b!6375183 res!2622504) b!6375190))

(assert (= (and b!6375187 c!1161230) b!6375182))

(assert (= (and b!6375187 (not c!1161230)) b!6375189))

(assert (= (and b!6375182 res!2622505) b!6375186))

(assert (= (and b!6375189 (not res!2622506)) b!6375184))

(assert (= (and b!6375184 res!2622507) b!6375185))

(assert (= (or b!6375186 b!6375185) bm!544572))

(assert (= (or b!6375182 b!6375184) bm!544571))

(assert (= (or b!6375190 bm!544571) bm!544570))

(declare-fun m!7176958 () Bool)

(assert (=> bm!544570 m!7176958))

(declare-fun m!7176960 () Bool)

(assert (=> b!6375183 m!7176960))

(declare-fun m!7176962 () Bool)

(assert (=> bm!544572 m!7176962))

(assert (=> start!631562 d!1999211))

(declare-fun d!1999221 () Bool)

(declare-fun lambda!351478 () Int)

(declare-fun forall!15465 (List!65160 Int) Bool)

(assert (=> d!1999221 (= (inv!83964 lt!2369038) (forall!15465 (exprs!6171 lt!2369038) lambda!351478))))

(declare-fun bs!1596285 () Bool)

(assert (= bs!1596285 d!1999221))

(declare-fun m!7176998 () Bool)

(assert (=> bs!1596285 m!7176998))

(assert (=> b!6374918 d!1999221))

(declare-fun d!1999235 () Bool)

(assert (=> d!1999235 (= (flatMap!1792 lt!2369026 lambda!351451) (choose!47392 lt!2369026 lambda!351451))))

(declare-fun bs!1596286 () Bool)

(assert (= bs!1596286 d!1999235))

(declare-fun m!7177000 () Bool)

(assert (=> bs!1596286 m!7177000))

(assert (=> b!6374918 d!1999235))

(declare-fun b!6375203 () Bool)

(declare-fun e!3870316 () (InoxSet Context!11342))

(assert (=> b!6375203 (= e!3870316 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375204 () Bool)

(declare-fun e!3870315 () (InoxSet Context!11342))

(assert (=> b!6375204 (= e!3870315 e!3870316)))

(declare-fun c!1161237 () Bool)

(assert (=> b!6375204 (= c!1161237 ((_ is Cons!65036) (exprs!6171 lt!2369028)))))

(declare-fun call!544578 () (InoxSet Context!11342))

(declare-fun b!6375205 () Bool)

(assert (=> b!6375205 (= e!3870315 ((_ map or) call!544578 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (h!71486 s!2326))))))

(declare-fun b!6375206 () Bool)

(assert (=> b!6375206 (= e!3870316 call!544578)))

(declare-fun bm!544573 () Bool)

(assert (=> bm!544573 (= call!544578 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369028)) (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (h!71486 s!2326)))))

(declare-fun d!1999237 () Bool)

(declare-fun c!1161236 () Bool)

(declare-fun e!3870314 () Bool)

(assert (=> d!1999237 (= c!1161236 e!3870314)))

(declare-fun res!2622511 () Bool)

(assert (=> d!1999237 (=> (not res!2622511) (not e!3870314))))

(assert (=> d!1999237 (= res!2622511 ((_ is Cons!65036) (exprs!6171 lt!2369028)))))

(assert (=> d!1999237 (= (derivationStepZipperUp!1461 lt!2369028 (h!71486 s!2326)) e!3870315)))

(declare-fun b!6375202 () Bool)

(assert (=> b!6375202 (= e!3870314 (nullable!6280 (h!71484 (exprs!6171 lt!2369028))))))

(assert (= (and d!1999237 res!2622511) b!6375202))

(assert (= (and d!1999237 c!1161236) b!6375205))

(assert (= (and d!1999237 (not c!1161236)) b!6375204))

(assert (= (and b!6375204 c!1161237) b!6375206))

(assert (= (and b!6375204 (not c!1161237)) b!6375203))

(assert (= (or b!6375205 b!6375206) bm!544573))

(declare-fun m!7177002 () Bool)

(assert (=> b!6375205 m!7177002))

(declare-fun m!7177004 () Bool)

(assert (=> bm!544573 m!7177004))

(declare-fun m!7177006 () Bool)

(assert (=> b!6375202 m!7177006))

(assert (=> b!6374918 d!1999237))

(declare-fun d!1999239 () Bool)

(assert (=> d!1999239 (= (flatMap!1792 lt!2369026 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369038))))

(declare-fun lt!2369091 () Unit!158479)

(assert (=> d!1999239 (= lt!2369091 (choose!47394 lt!2369026 lt!2369038 lambda!351451))))

(assert (=> d!1999239 (= lt!2369026 (store ((as const (Array Context!11342 Bool)) false) lt!2369038 true))))

(assert (=> d!1999239 (= (lemmaFlatMapOnSingletonSet!1318 lt!2369026 lt!2369038 lambda!351451) lt!2369091)))

(declare-fun b_lambda!242249 () Bool)

(assert (=> (not b_lambda!242249) (not d!1999239)))

(declare-fun bs!1596288 () Bool)

(assert (= bs!1596288 d!1999239))

(assert (=> bs!1596288 m!7176750))

(declare-fun m!7177012 () Bool)

(assert (=> bs!1596288 m!7177012))

(declare-fun m!7177014 () Bool)

(assert (=> bs!1596288 m!7177014))

(assert (=> bs!1596288 m!7176754))

(assert (=> b!6374918 d!1999239))

(declare-fun b!6375208 () Bool)

(declare-fun e!3870319 () (InoxSet Context!11342))

(assert (=> b!6375208 (= e!3870319 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375209 () Bool)

(declare-fun e!3870318 () (InoxSet Context!11342))

(assert (=> b!6375209 (= e!3870318 e!3870319)))

(declare-fun c!1161239 () Bool)

(assert (=> b!6375209 (= c!1161239 ((_ is Cons!65036) (exprs!6171 lt!2369038)))))

(declare-fun b!6375210 () Bool)

(declare-fun call!544579 () (InoxSet Context!11342))

(assert (=> b!6375210 (= e!3870318 ((_ map or) call!544579 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (h!71486 s!2326))))))

(declare-fun b!6375211 () Bool)

(assert (=> b!6375211 (= e!3870319 call!544579)))

(declare-fun bm!544574 () Bool)

(assert (=> bm!544574 (= call!544579 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369038)) (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (h!71486 s!2326)))))

(declare-fun d!1999243 () Bool)

(declare-fun c!1161238 () Bool)

(declare-fun e!3870317 () Bool)

(assert (=> d!1999243 (= c!1161238 e!3870317)))

(declare-fun res!2622512 () Bool)

(assert (=> d!1999243 (=> (not res!2622512) (not e!3870317))))

(assert (=> d!1999243 (= res!2622512 ((_ is Cons!65036) (exprs!6171 lt!2369038)))))

(assert (=> d!1999243 (= (derivationStepZipperUp!1461 lt!2369038 (h!71486 s!2326)) e!3870318)))

(declare-fun b!6375207 () Bool)

(assert (=> b!6375207 (= e!3870317 (nullable!6280 (h!71484 (exprs!6171 lt!2369038))))))

(assert (= (and d!1999243 res!2622512) b!6375207))

(assert (= (and d!1999243 c!1161238) b!6375210))

(assert (= (and d!1999243 (not c!1161238)) b!6375209))

(assert (= (and b!6375209 c!1161239) b!6375211))

(assert (= (and b!6375209 (not c!1161239)) b!6375208))

(assert (= (or b!6375210 b!6375211) bm!544574))

(declare-fun m!7177016 () Bool)

(assert (=> b!6375210 m!7177016))

(declare-fun m!7177018 () Bool)

(assert (=> bm!544574 m!7177018))

(declare-fun m!7177020 () Bool)

(assert (=> b!6375207 m!7177020))

(assert (=> b!6374918 d!1999243))

(declare-fun d!1999245 () Bool)

(assert (=> d!1999245 (= (flatMap!1792 lt!2369032 lambda!351451) (choose!47392 lt!2369032 lambda!351451))))

(declare-fun bs!1596289 () Bool)

(assert (= bs!1596289 d!1999245))

(declare-fun m!7177022 () Bool)

(assert (=> bs!1596289 m!7177022))

(assert (=> b!6374918 d!1999245))

(declare-fun d!1999247 () Bool)

(assert (=> d!1999247 (= (flatMap!1792 lt!2369032 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369028))))

(declare-fun lt!2369092 () Unit!158479)

(assert (=> d!1999247 (= lt!2369092 (choose!47394 lt!2369032 lt!2369028 lambda!351451))))

(assert (=> d!1999247 (= lt!2369032 (store ((as const (Array Context!11342 Bool)) false) lt!2369028 true))))

(assert (=> d!1999247 (= (lemmaFlatMapOnSingletonSet!1318 lt!2369032 lt!2369028 lambda!351451) lt!2369092)))

(declare-fun b_lambda!242251 () Bool)

(assert (=> (not b_lambda!242251) (not d!1999247)))

(declare-fun bs!1596290 () Bool)

(assert (= bs!1596290 d!1999247))

(assert (=> bs!1596290 m!7176758))

(declare-fun m!7177024 () Bool)

(assert (=> bs!1596290 m!7177024))

(declare-fun m!7177026 () Bool)

(assert (=> bs!1596290 m!7177026))

(assert (=> bs!1596290 m!7176752))

(assert (=> b!6374918 d!1999247))

(declare-fun bs!1596313 () Bool)

(declare-fun d!1999249 () Bool)

(assert (= bs!1596313 (and d!1999249 d!1999221)))

(declare-fun lambda!351486 () Int)

(assert (=> bs!1596313 (= lambda!351486 lambda!351478)))

(declare-fun b!6375288 () Bool)

(declare-fun e!3870366 () Bool)

(declare-fun lt!2369099 () Regex!16287)

(declare-fun isEmptyExpr!1689 (Regex!16287) Bool)

(assert (=> b!6375288 (= e!3870366 (isEmptyExpr!1689 lt!2369099))))

(declare-fun b!6375289 () Bool)

(declare-fun e!3870363 () Bool)

(declare-fun isConcat!1212 (Regex!16287) Bool)

(assert (=> b!6375289 (= e!3870363 (isConcat!1212 lt!2369099))))

(declare-fun b!6375290 () Bool)

(declare-fun e!3870367 () Regex!16287)

(assert (=> b!6375290 (= e!3870367 EmptyExpr!16287)))

(declare-fun b!6375291 () Bool)

(assert (=> b!6375291 (= e!3870367 (Concat!25132 (h!71484 (exprs!6171 (h!71485 zl!343))) (generalisedConcat!1884 (t!378762 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6375292 () Bool)

(declare-fun e!3870364 () Bool)

(assert (=> b!6375292 (= e!3870364 e!3870366)))

(declare-fun c!1161274 () Bool)

(assert (=> b!6375292 (= c!1161274 (isEmpty!37158 (exprs!6171 (h!71485 zl!343))))))

(declare-fun b!6375293 () Bool)

(declare-fun head!13067 (List!65160) Regex!16287)

(assert (=> b!6375293 (= e!3870363 (= lt!2369099 (head!13067 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6375294 () Bool)

(declare-fun e!3870365 () Bool)

(assert (=> b!6375294 (= e!3870365 (isEmpty!37158 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6375287 () Bool)

(declare-fun e!3870362 () Regex!16287)

(assert (=> b!6375287 (= e!3870362 (h!71484 (exprs!6171 (h!71485 zl!343))))))

(assert (=> d!1999249 e!3870364))

(declare-fun res!2622526 () Bool)

(assert (=> d!1999249 (=> (not res!2622526) (not e!3870364))))

(assert (=> d!1999249 (= res!2622526 (validRegex!8023 lt!2369099))))

(assert (=> d!1999249 (= lt!2369099 e!3870362)))

(declare-fun c!1161273 () Bool)

(assert (=> d!1999249 (= c!1161273 e!3870365)))

(declare-fun res!2622527 () Bool)

(assert (=> d!1999249 (=> (not res!2622527) (not e!3870365))))

(assert (=> d!1999249 (= res!2622527 ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343))))))

(assert (=> d!1999249 (forall!15465 (exprs!6171 (h!71485 zl!343)) lambda!351486)))

(assert (=> d!1999249 (= (generalisedConcat!1884 (exprs!6171 (h!71485 zl!343))) lt!2369099)))

(declare-fun b!6375295 () Bool)

(assert (=> b!6375295 (= e!3870362 e!3870367)))

(declare-fun c!1161271 () Bool)

(assert (=> b!6375295 (= c!1161271 ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343))))))

(declare-fun b!6375296 () Bool)

(assert (=> b!6375296 (= e!3870366 e!3870363)))

(declare-fun c!1161272 () Bool)

(declare-fun tail!12152 (List!65160) List!65160)

(assert (=> b!6375296 (= c!1161272 (isEmpty!37158 (tail!12152 (exprs!6171 (h!71485 zl!343)))))))

(assert (= (and d!1999249 res!2622527) b!6375294))

(assert (= (and d!1999249 c!1161273) b!6375287))

(assert (= (and d!1999249 (not c!1161273)) b!6375295))

(assert (= (and b!6375295 c!1161271) b!6375291))

(assert (= (and b!6375295 (not c!1161271)) b!6375290))

(assert (= (and d!1999249 res!2622526) b!6375292))

(assert (= (and b!6375292 c!1161274) b!6375288))

(assert (= (and b!6375292 (not c!1161274)) b!6375296))

(assert (= (and b!6375296 c!1161272) b!6375293))

(assert (= (and b!6375296 (not c!1161272)) b!6375289))

(declare-fun m!7177108 () Bool)

(assert (=> b!6375293 m!7177108))

(declare-fun m!7177110 () Bool)

(assert (=> b!6375291 m!7177110))

(declare-fun m!7177112 () Bool)

(assert (=> b!6375292 m!7177112))

(declare-fun m!7177114 () Bool)

(assert (=> b!6375296 m!7177114))

(assert (=> b!6375296 m!7177114))

(declare-fun m!7177116 () Bool)

(assert (=> b!6375296 m!7177116))

(assert (=> b!6375294 m!7176770))

(declare-fun m!7177118 () Bool)

(assert (=> b!6375289 m!7177118))

(declare-fun m!7177120 () Bool)

(assert (=> b!6375288 m!7177120))

(declare-fun m!7177122 () Bool)

(assert (=> d!1999249 m!7177122))

(declare-fun m!7177124 () Bool)

(assert (=> d!1999249 m!7177124))

(assert (=> b!6374917 d!1999249))

(declare-fun bs!1596322 () Bool)

(declare-fun b!6375422 () Bool)

(assert (= bs!1596322 (and b!6375422 b!6374910)))

(declare-fun lambda!351497 () Int)

(assert (=> bs!1596322 (not (= lambda!351497 lambda!351449))))

(assert (=> bs!1596322 (not (= lambda!351497 lambda!351450))))

(assert (=> b!6375422 true))

(assert (=> b!6375422 true))

(declare-fun bs!1596323 () Bool)

(declare-fun b!6375426 () Bool)

(assert (= bs!1596323 (and b!6375426 b!6374910)))

(declare-fun lambda!351498 () Int)

(assert (=> bs!1596323 (not (= lambda!351498 lambda!351449))))

(assert (=> bs!1596323 (= lambda!351498 lambda!351450)))

(declare-fun bs!1596324 () Bool)

(assert (= bs!1596324 (and b!6375426 b!6375422)))

(assert (=> bs!1596324 (not (= lambda!351498 lambda!351497))))

(assert (=> b!6375426 true))

(assert (=> b!6375426 true))

(declare-fun b!6375416 () Bool)

(declare-fun e!3870440 () Bool)

(assert (=> b!6375416 (= e!3870440 (matchRSpec!3388 (regTwo!33087 r!7292) s!2326))))

(declare-fun d!1999289 () Bool)

(declare-fun c!1161307 () Bool)

(assert (=> d!1999289 (= c!1161307 ((_ is EmptyExpr!16287) r!7292))))

(declare-fun e!3870436 () Bool)

(assert (=> d!1999289 (= (matchRSpec!3388 r!7292 s!2326) e!3870436)))

(declare-fun b!6375417 () Bool)

(declare-fun c!1161306 () Bool)

(assert (=> b!6375417 (= c!1161306 ((_ is ElementMatch!16287) r!7292))))

(declare-fun e!3870434 () Bool)

(declare-fun e!3870439 () Bool)

(assert (=> b!6375417 (= e!3870434 e!3870439)))

(declare-fun c!1161304 () Bool)

(declare-fun call!544608 () Bool)

(declare-fun bm!544602 () Bool)

(assert (=> bm!544602 (= call!544608 (Exists!3357 (ite c!1161304 lambda!351497 lambda!351498)))))

(declare-fun b!6375418 () Bool)

(declare-fun c!1161305 () Bool)

(assert (=> b!6375418 (= c!1161305 ((_ is Union!16287) r!7292))))

(declare-fun e!3870438 () Bool)

(assert (=> b!6375418 (= e!3870439 e!3870438)))

(declare-fun b!6375419 () Bool)

(declare-fun e!3870437 () Bool)

(assert (=> b!6375419 (= e!3870438 e!3870437)))

(assert (=> b!6375419 (= c!1161304 ((_ is Star!16287) r!7292))))

(declare-fun b!6375420 () Bool)

(assert (=> b!6375420 (= e!3870438 e!3870440)))

(declare-fun res!2622589 () Bool)

(assert (=> b!6375420 (= res!2622589 (matchRSpec!3388 (regOne!33087 r!7292) s!2326))))

(assert (=> b!6375420 (=> res!2622589 e!3870440)))

(declare-fun b!6375421 () Bool)

(declare-fun res!2622588 () Bool)

(declare-fun e!3870435 () Bool)

(assert (=> b!6375421 (=> res!2622588 e!3870435)))

(declare-fun call!544607 () Bool)

(assert (=> b!6375421 (= res!2622588 call!544607)))

(assert (=> b!6375421 (= e!3870437 e!3870435)))

(assert (=> b!6375422 (= e!3870435 call!544608)))

(declare-fun b!6375423 () Bool)

(assert (=> b!6375423 (= e!3870436 e!3870434)))

(declare-fun res!2622587 () Bool)

(assert (=> b!6375423 (= res!2622587 (not ((_ is EmptyLang!16287) r!7292)))))

(assert (=> b!6375423 (=> (not res!2622587) (not e!3870434))))

(declare-fun b!6375424 () Bool)

(assert (=> b!6375424 (= e!3870439 (= s!2326 (Cons!65038 (c!1161140 r!7292) Nil!65038)))))

(declare-fun b!6375425 () Bool)

(assert (=> b!6375425 (= e!3870436 call!544607)))

(declare-fun bm!544603 () Bool)

(assert (=> bm!544603 (= call!544607 (isEmpty!37161 s!2326))))

(assert (=> b!6375426 (= e!3870437 call!544608)))

(assert (= (and d!1999289 c!1161307) b!6375425))

(assert (= (and d!1999289 (not c!1161307)) b!6375423))

(assert (= (and b!6375423 res!2622587) b!6375417))

(assert (= (and b!6375417 c!1161306) b!6375424))

(assert (= (and b!6375417 (not c!1161306)) b!6375418))

(assert (= (and b!6375418 c!1161305) b!6375420))

(assert (= (and b!6375418 (not c!1161305)) b!6375419))

(assert (= (and b!6375420 (not res!2622589)) b!6375416))

(assert (= (and b!6375419 c!1161304) b!6375421))

(assert (= (and b!6375419 (not c!1161304)) b!6375426))

(assert (= (and b!6375421 (not res!2622588)) b!6375422))

(assert (= (or b!6375422 b!6375426) bm!544602))

(assert (= (or b!6375425 b!6375421) bm!544603))

(declare-fun m!7177146 () Bool)

(assert (=> b!6375416 m!7177146))

(declare-fun m!7177148 () Bool)

(assert (=> bm!544602 m!7177148))

(declare-fun m!7177150 () Bool)

(assert (=> b!6375420 m!7177150))

(assert (=> bm!544603 m!7176806))

(assert (=> b!6374907 d!1999289))

(declare-fun b!6375505 () Bool)

(declare-fun res!2622612 () Bool)

(declare-fun e!3870481 () Bool)

(assert (=> b!6375505 (=> (not res!2622612) (not e!3870481))))

(declare-fun call!544611 () Bool)

(assert (=> b!6375505 (= res!2622612 (not call!544611))))

(declare-fun b!6375506 () Bool)

(declare-fun e!3870482 () Bool)

(declare-fun lt!2369108 () Bool)

(assert (=> b!6375506 (= e!3870482 (= lt!2369108 call!544611))))

(declare-fun b!6375507 () Bool)

(declare-fun e!3870479 () Bool)

(assert (=> b!6375507 (= e!3870482 e!3870479)))

(declare-fun c!1161316 () Bool)

(assert (=> b!6375507 (= c!1161316 ((_ is EmptyLang!16287) r!7292))))

(declare-fun b!6375508 () Bool)

(declare-fun e!3870476 () Bool)

(assert (=> b!6375508 (= e!3870476 (nullable!6280 r!7292))))

(declare-fun b!6375509 () Bool)

(declare-fun e!3870480 () Bool)

(declare-fun e!3870478 () Bool)

(assert (=> b!6375509 (= e!3870480 e!3870478)))

(declare-fun res!2622608 () Bool)

(assert (=> b!6375509 (=> (not res!2622608) (not e!3870478))))

(assert (=> b!6375509 (= res!2622608 (not lt!2369108))))

(declare-fun b!6375510 () Bool)

(declare-fun res!2622613 () Bool)

(assert (=> b!6375510 (=> res!2622613 e!3870480)))

(assert (=> b!6375510 (= res!2622613 e!3870481)))

(declare-fun res!2622607 () Bool)

(assert (=> b!6375510 (=> (not res!2622607) (not e!3870481))))

(assert (=> b!6375510 (= res!2622607 lt!2369108)))

(declare-fun bm!544606 () Bool)

(assert (=> bm!544606 (= call!544611 (isEmpty!37161 s!2326))))

(declare-fun b!6375511 () Bool)

(declare-fun res!2622610 () Bool)

(declare-fun e!3870477 () Bool)

(assert (=> b!6375511 (=> res!2622610 e!3870477)))

(assert (=> b!6375511 (= res!2622610 (not (isEmpty!37161 (tail!12151 s!2326))))))

(declare-fun d!1999297 () Bool)

(assert (=> d!1999297 e!3870482))

(declare-fun c!1161314 () Bool)

(assert (=> d!1999297 (= c!1161314 ((_ is EmptyExpr!16287) r!7292))))

(assert (=> d!1999297 (= lt!2369108 e!3870476)))

(declare-fun c!1161315 () Bool)

(assert (=> d!1999297 (= c!1161315 (isEmpty!37161 s!2326))))

(assert (=> d!1999297 (validRegex!8023 r!7292)))

(assert (=> d!1999297 (= (matchR!8470 r!7292 s!2326) lt!2369108)))

(declare-fun b!6375512 () Bool)

(declare-fun res!2622611 () Bool)

(assert (=> b!6375512 (=> (not res!2622611) (not e!3870481))))

(assert (=> b!6375512 (= res!2622611 (isEmpty!37161 (tail!12151 s!2326)))))

(declare-fun b!6375513 () Bool)

(assert (=> b!6375513 (= e!3870477 (not (= (head!13066 s!2326) (c!1161140 r!7292))))))

(declare-fun b!6375514 () Bool)

(declare-fun res!2622609 () Bool)

(assert (=> b!6375514 (=> res!2622609 e!3870480)))

(assert (=> b!6375514 (= res!2622609 (not ((_ is ElementMatch!16287) r!7292)))))

(assert (=> b!6375514 (= e!3870479 e!3870480)))

(declare-fun b!6375515 () Bool)

(declare-fun derivativeStep!4991 (Regex!16287 C!32844) Regex!16287)

(assert (=> b!6375515 (= e!3870476 (matchR!8470 (derivativeStep!4991 r!7292 (head!13066 s!2326)) (tail!12151 s!2326)))))

(declare-fun b!6375516 () Bool)

(assert (=> b!6375516 (= e!3870478 e!3870477)))

(declare-fun res!2622606 () Bool)

(assert (=> b!6375516 (=> res!2622606 e!3870477)))

(assert (=> b!6375516 (= res!2622606 call!544611)))

(declare-fun b!6375517 () Bool)

(assert (=> b!6375517 (= e!3870479 (not lt!2369108))))

(declare-fun b!6375518 () Bool)

(assert (=> b!6375518 (= e!3870481 (= (head!13066 s!2326) (c!1161140 r!7292)))))

(assert (= (and d!1999297 c!1161315) b!6375508))

(assert (= (and d!1999297 (not c!1161315)) b!6375515))

(assert (= (and d!1999297 c!1161314) b!6375506))

(assert (= (and d!1999297 (not c!1161314)) b!6375507))

(assert (= (and b!6375507 c!1161316) b!6375517))

(assert (= (and b!6375507 (not c!1161316)) b!6375514))

(assert (= (and b!6375514 (not res!2622609)) b!6375510))

(assert (= (and b!6375510 res!2622607) b!6375505))

(assert (= (and b!6375505 res!2622612) b!6375512))

(assert (= (and b!6375512 res!2622611) b!6375518))

(assert (= (and b!6375510 (not res!2622613)) b!6375509))

(assert (= (and b!6375509 res!2622608) b!6375516))

(assert (= (and b!6375516 (not res!2622606)) b!6375511))

(assert (= (and b!6375511 (not res!2622610)) b!6375513))

(assert (= (or b!6375506 b!6375505 b!6375516) bm!544606))

(assert (=> b!6375513 m!7176810))

(assert (=> b!6375515 m!7176810))

(assert (=> b!6375515 m!7176810))

(declare-fun m!7177152 () Bool)

(assert (=> b!6375515 m!7177152))

(assert (=> b!6375515 m!7176814))

(assert (=> b!6375515 m!7177152))

(assert (=> b!6375515 m!7176814))

(declare-fun m!7177154 () Bool)

(assert (=> b!6375515 m!7177154))

(assert (=> b!6375511 m!7176814))

(assert (=> b!6375511 m!7176814))

(declare-fun m!7177156 () Bool)

(assert (=> b!6375511 m!7177156))

(assert (=> bm!544606 m!7176806))

(declare-fun m!7177158 () Bool)

(assert (=> b!6375508 m!7177158))

(assert (=> b!6375512 m!7176814))

(assert (=> b!6375512 m!7176814))

(assert (=> b!6375512 m!7177156))

(assert (=> d!1999297 m!7176806))

(assert (=> d!1999297 m!7176772))

(assert (=> b!6375518 m!7176810))

(assert (=> b!6374907 d!1999297))

(declare-fun d!1999305 () Bool)

(assert (=> d!1999305 (= (matchR!8470 r!7292 s!2326) (matchRSpec!3388 r!7292 s!2326))))

(declare-fun lt!2369111 () Unit!158479)

(declare-fun choose!47396 (Regex!16287 List!65162) Unit!158479)

(assert (=> d!1999305 (= lt!2369111 (choose!47396 r!7292 s!2326))))

(assert (=> d!1999305 (validRegex!8023 r!7292)))

(assert (=> d!1999305 (= (mainMatchTheorem!3388 r!7292 s!2326) lt!2369111)))

(declare-fun bs!1596329 () Bool)

(assert (= bs!1596329 d!1999305))

(assert (=> bs!1596329 m!7176778))

(assert (=> bs!1596329 m!7176776))

(declare-fun m!7177160 () Bool)

(assert (=> bs!1596329 m!7177160))

(assert (=> bs!1596329 m!7176772))

(assert (=> b!6374907 d!1999305))

(declare-fun bs!1596330 () Bool)

(declare-fun d!1999307 () Bool)

(assert (= bs!1596330 (and d!1999307 d!1999221)))

(declare-fun lambda!351499 () Int)

(assert (=> bs!1596330 (= lambda!351499 lambda!351478)))

(declare-fun bs!1596331 () Bool)

(assert (= bs!1596331 (and d!1999307 d!1999249)))

(assert (=> bs!1596331 (= lambda!351499 lambda!351486)))

(assert (=> d!1999307 (= (inv!83964 setElem!43482) (forall!15465 (exprs!6171 setElem!43482) lambda!351499))))

(declare-fun bs!1596332 () Bool)

(assert (= bs!1596332 d!1999307))

(declare-fun m!7177162 () Bool)

(assert (=> bs!1596332 m!7177162))

(assert (=> setNonEmpty!43482 d!1999307))

(declare-fun b!6375537 () Bool)

(declare-fun e!3870497 () Bool)

(assert (=> b!6375537 (= e!3870497 (matchR!8470 (regTwo!33086 r!7292) s!2326))))

(declare-fun b!6375538 () Bool)

(declare-fun e!3870495 () Bool)

(declare-fun lt!2369120 () Option!16178)

(declare-fun ++!14356 (List!65162 List!65162) List!65162)

(declare-fun get!22515 (Option!16178) tuple2!66532)

(assert (=> b!6375538 (= e!3870495 (= (++!14356 (_1!36569 (get!22515 lt!2369120)) (_2!36569 (get!22515 lt!2369120))) s!2326))))

(declare-fun b!6375539 () Bool)

(declare-fun e!3870494 () Bool)

(assert (=> b!6375539 (= e!3870494 (not (isDefined!12881 lt!2369120)))))

(declare-fun b!6375540 () Bool)

(declare-fun lt!2369118 () Unit!158479)

(declare-fun lt!2369119 () Unit!158479)

(assert (=> b!6375540 (= lt!2369118 lt!2369119)))

(assert (=> b!6375540 (= (++!14356 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2451 (List!65162 C!32844 List!65162 List!65162) Unit!158479)

(assert (=> b!6375540 (= lt!2369119 (lemmaMoveElementToOtherListKeepsConcatEq!2451 Nil!65038 (h!71486 s!2326) (t!378764 s!2326) s!2326))))

(declare-fun e!3870493 () Option!16178)

(assert (=> b!6375540 (= e!3870493 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326) s!2326))))

(declare-fun b!6375541 () Bool)

(declare-fun e!3870496 () Option!16178)

(assert (=> b!6375541 (= e!3870496 e!3870493)))

(declare-fun c!1161322 () Bool)

(assert (=> b!6375541 (= c!1161322 ((_ is Nil!65038) s!2326))))

(declare-fun b!6375542 () Bool)

(declare-fun res!2622627 () Bool)

(assert (=> b!6375542 (=> (not res!2622627) (not e!3870495))))

(assert (=> b!6375542 (= res!2622627 (matchR!8470 (regTwo!33086 r!7292) (_2!36569 (get!22515 lt!2369120))))))

(declare-fun b!6375543 () Bool)

(assert (=> b!6375543 (= e!3870496 (Some!16177 (tuple2!66533 Nil!65038 s!2326)))))

(declare-fun d!1999309 () Bool)

(assert (=> d!1999309 e!3870494))

(declare-fun res!2622625 () Bool)

(assert (=> d!1999309 (=> res!2622625 e!3870494)))

(assert (=> d!1999309 (= res!2622625 e!3870495)))

(declare-fun res!2622628 () Bool)

(assert (=> d!1999309 (=> (not res!2622628) (not e!3870495))))

(assert (=> d!1999309 (= res!2622628 (isDefined!12881 lt!2369120))))

(assert (=> d!1999309 (= lt!2369120 e!3870496)))

(declare-fun c!1161321 () Bool)

(assert (=> d!1999309 (= c!1161321 e!3870497)))

(declare-fun res!2622626 () Bool)

(assert (=> d!1999309 (=> (not res!2622626) (not e!3870497))))

(assert (=> d!1999309 (= res!2622626 (matchR!8470 (regOne!33086 r!7292) Nil!65038))))

(assert (=> d!1999309 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999309 (= (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326) lt!2369120)))

(declare-fun b!6375544 () Bool)

(assert (=> b!6375544 (= e!3870493 None!16177)))

(declare-fun b!6375545 () Bool)

(declare-fun res!2622624 () Bool)

(assert (=> b!6375545 (=> (not res!2622624) (not e!3870495))))

(assert (=> b!6375545 (= res!2622624 (matchR!8470 (regOne!33086 r!7292) (_1!36569 (get!22515 lt!2369120))))))

(assert (= (and d!1999309 res!2622626) b!6375537))

(assert (= (and d!1999309 c!1161321) b!6375543))

(assert (= (and d!1999309 (not c!1161321)) b!6375541))

(assert (= (and b!6375541 c!1161322) b!6375544))

(assert (= (and b!6375541 (not c!1161322)) b!6375540))

(assert (= (and d!1999309 res!2622628) b!6375545))

(assert (= (and b!6375545 res!2622624) b!6375542))

(assert (= (and b!6375542 res!2622627) b!6375538))

(assert (= (and d!1999309 (not res!2622625)) b!6375539))

(declare-fun m!7177164 () Bool)

(assert (=> b!6375540 m!7177164))

(assert (=> b!6375540 m!7177164))

(declare-fun m!7177166 () Bool)

(assert (=> b!6375540 m!7177166))

(declare-fun m!7177168 () Bool)

(assert (=> b!6375540 m!7177168))

(assert (=> b!6375540 m!7177164))

(declare-fun m!7177170 () Bool)

(assert (=> b!6375540 m!7177170))

(declare-fun m!7177172 () Bool)

(assert (=> b!6375538 m!7177172))

(declare-fun m!7177174 () Bool)

(assert (=> b!6375538 m!7177174))

(declare-fun m!7177176 () Bool)

(assert (=> b!6375539 m!7177176))

(declare-fun m!7177178 () Bool)

(assert (=> b!6375537 m!7177178))

(assert (=> b!6375545 m!7177172))

(declare-fun m!7177180 () Bool)

(assert (=> b!6375545 m!7177180))

(assert (=> d!1999309 m!7177176))

(declare-fun m!7177182 () Bool)

(assert (=> d!1999309 m!7177182))

(declare-fun m!7177184 () Bool)

(assert (=> d!1999309 m!7177184))

(assert (=> b!6375542 m!7177172))

(declare-fun m!7177186 () Bool)

(assert (=> b!6375542 m!7177186))

(assert (=> b!6374910 d!1999309))

(declare-fun d!1999311 () Bool)

(declare-fun choose!47398 (Int) Bool)

(assert (=> d!1999311 (= (Exists!3357 lambda!351449) (choose!47398 lambda!351449))))

(declare-fun bs!1596333 () Bool)

(assert (= bs!1596333 d!1999311))

(declare-fun m!7177188 () Bool)

(assert (=> bs!1596333 m!7177188))

(assert (=> b!6374910 d!1999311))

(declare-fun d!1999313 () Bool)

(assert (=> d!1999313 (= (Exists!3357 lambda!351450) (choose!47398 lambda!351450))))

(declare-fun bs!1596334 () Bool)

(assert (= bs!1596334 d!1999313))

(declare-fun m!7177190 () Bool)

(assert (=> bs!1596334 m!7177190))

(assert (=> b!6374910 d!1999313))

(declare-fun bs!1596335 () Bool)

(declare-fun d!1999315 () Bool)

(assert (= bs!1596335 (and d!1999315 b!6374910)))

(declare-fun lambda!351502 () Int)

(assert (=> bs!1596335 (= lambda!351502 lambda!351449)))

(assert (=> bs!1596335 (not (= lambda!351502 lambda!351450))))

(declare-fun bs!1596336 () Bool)

(assert (= bs!1596336 (and d!1999315 b!6375422)))

(assert (=> bs!1596336 (not (= lambda!351502 lambda!351497))))

(declare-fun bs!1596337 () Bool)

(assert (= bs!1596337 (and d!1999315 b!6375426)))

(assert (=> bs!1596337 (not (= lambda!351502 lambda!351498))))

(assert (=> d!1999315 true))

(assert (=> d!1999315 true))

(assert (=> d!1999315 true))

(assert (=> d!1999315 (= (isDefined!12881 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326)) (Exists!3357 lambda!351502))))

(declare-fun lt!2369123 () Unit!158479)

(declare-fun choose!47399 (Regex!16287 Regex!16287 List!65162) Unit!158479)

(assert (=> d!1999315 (= lt!2369123 (choose!47399 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326))))

(assert (=> d!1999315 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999315 (= (lemmaFindConcatSeparationEquivalentToExists!2356 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326) lt!2369123)))

(declare-fun bs!1596338 () Bool)

(assert (= bs!1596338 d!1999315))

(declare-fun m!7177192 () Bool)

(assert (=> bs!1596338 m!7177192))

(assert (=> bs!1596338 m!7176708))

(assert (=> bs!1596338 m!7176710))

(assert (=> bs!1596338 m!7177184))

(assert (=> bs!1596338 m!7176708))

(declare-fun m!7177194 () Bool)

(assert (=> bs!1596338 m!7177194))

(assert (=> b!6374910 d!1999315))

(declare-fun bs!1596339 () Bool)

(declare-fun d!1999317 () Bool)

(assert (= bs!1596339 (and d!1999317 b!6374910)))

(declare-fun lambda!351507 () Int)

(assert (=> bs!1596339 (= lambda!351507 lambda!351449)))

(declare-fun bs!1596340 () Bool)

(assert (= bs!1596340 (and d!1999317 d!1999315)))

(assert (=> bs!1596340 (= lambda!351507 lambda!351502)))

(declare-fun bs!1596341 () Bool)

(assert (= bs!1596341 (and d!1999317 b!6375426)))

(assert (=> bs!1596341 (not (= lambda!351507 lambda!351498))))

(assert (=> bs!1596339 (not (= lambda!351507 lambda!351450))))

(declare-fun bs!1596342 () Bool)

(assert (= bs!1596342 (and d!1999317 b!6375422)))

(assert (=> bs!1596342 (not (= lambda!351507 lambda!351497))))

(assert (=> d!1999317 true))

(assert (=> d!1999317 true))

(assert (=> d!1999317 true))

(declare-fun lambda!351508 () Int)

(assert (=> bs!1596339 (not (= lambda!351508 lambda!351449))))

(assert (=> bs!1596340 (not (= lambda!351508 lambda!351502))))

(declare-fun bs!1596343 () Bool)

(assert (= bs!1596343 d!1999317))

(assert (=> bs!1596343 (not (= lambda!351508 lambda!351507))))

(assert (=> bs!1596341 (= lambda!351508 lambda!351498)))

(assert (=> bs!1596339 (= lambda!351508 lambda!351450)))

(assert (=> bs!1596342 (not (= lambda!351508 lambda!351497))))

(assert (=> d!1999317 true))

(assert (=> d!1999317 true))

(assert (=> d!1999317 true))

(assert (=> d!1999317 (= (Exists!3357 lambda!351507) (Exists!3357 lambda!351508))))

(declare-fun lt!2369126 () Unit!158479)

(declare-fun choose!47400 (Regex!16287 Regex!16287 List!65162) Unit!158479)

(assert (=> d!1999317 (= lt!2369126 (choose!47400 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326))))

(assert (=> d!1999317 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999317 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1894 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326) lt!2369126)))

(declare-fun m!7177196 () Bool)

(assert (=> bs!1596343 m!7177196))

(declare-fun m!7177198 () Bool)

(assert (=> bs!1596343 m!7177198))

(declare-fun m!7177200 () Bool)

(assert (=> bs!1596343 m!7177200))

(assert (=> bs!1596343 m!7177184))

(assert (=> b!6374910 d!1999317))

(declare-fun d!1999319 () Bool)

(declare-fun isEmpty!37162 (Option!16178) Bool)

(assert (=> d!1999319 (= (isDefined!12881 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326)) (not (isEmpty!37162 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326))))))

(declare-fun bs!1596344 () Bool)

(assert (= bs!1596344 d!1999319))

(assert (=> bs!1596344 m!7176708))

(declare-fun m!7177202 () Bool)

(assert (=> bs!1596344 m!7177202))

(assert (=> b!6374910 d!1999319))

(declare-fun d!1999321 () Bool)

(declare-fun e!3870506 () Bool)

(assert (=> d!1999321 (= (matchZipper!2299 ((_ map or) lt!2369020 lt!2369036) (t!378764 s!2326)) e!3870506)))

(declare-fun res!2622643 () Bool)

(assert (=> d!1999321 (=> res!2622643 e!3870506)))

(assert (=> d!1999321 (= res!2622643 (matchZipper!2299 lt!2369020 (t!378764 s!2326)))))

(declare-fun lt!2369129 () Unit!158479)

(declare-fun choose!47401 ((InoxSet Context!11342) (InoxSet Context!11342) List!65162) Unit!158479)

(assert (=> d!1999321 (= lt!2369129 (choose!47401 lt!2369020 lt!2369036 (t!378764 s!2326)))))

(assert (=> d!1999321 (= (lemmaZipperConcatMatchesSameAsBothZippers!1118 lt!2369020 lt!2369036 (t!378764 s!2326)) lt!2369129)))

(declare-fun b!6375560 () Bool)

(assert (=> b!6375560 (= e!3870506 (matchZipper!2299 lt!2369036 (t!378764 s!2326)))))

(assert (= (and d!1999321 (not res!2622643)) b!6375560))

(assert (=> d!1999321 m!7176722))

(assert (=> d!1999321 m!7176720))

(declare-fun m!7177204 () Bool)

(assert (=> d!1999321 m!7177204))

(assert (=> b!6375560 m!7176768))

(assert (=> b!6374899 d!1999321))

(declare-fun d!1999323 () Bool)

(declare-fun c!1161323 () Bool)

(assert (=> d!1999323 (= c!1161323 (isEmpty!37161 (t!378764 s!2326)))))

(declare-fun e!3870507 () Bool)

(assert (=> d!1999323 (= (matchZipper!2299 lt!2369020 (t!378764 s!2326)) e!3870507)))

(declare-fun b!6375561 () Bool)

(assert (=> b!6375561 (= e!3870507 (nullableZipper!2053 lt!2369020))))

(declare-fun b!6375562 () Bool)

(assert (=> b!6375562 (= e!3870507 (matchZipper!2299 (derivationStepZipper!2253 lt!2369020 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))))))

(assert (= (and d!1999323 c!1161323) b!6375561))

(assert (= (and d!1999323 (not c!1161323)) b!6375562))

(assert (=> d!1999323 m!7176818))

(declare-fun m!7177206 () Bool)

(assert (=> b!6375561 m!7177206))

(assert (=> b!6375562 m!7176822))

(assert (=> b!6375562 m!7176822))

(declare-fun m!7177208 () Bool)

(assert (=> b!6375562 m!7177208))

(assert (=> b!6375562 m!7176826))

(assert (=> b!6375562 m!7177208))

(assert (=> b!6375562 m!7176826))

(declare-fun m!7177210 () Bool)

(assert (=> b!6375562 m!7177210))

(assert (=> b!6374899 d!1999323))

(declare-fun d!1999325 () Bool)

(declare-fun c!1161324 () Bool)

(assert (=> d!1999325 (= c!1161324 (isEmpty!37161 (t!378764 s!2326)))))

(declare-fun e!3870508 () Bool)

(assert (=> d!1999325 (= (matchZipper!2299 ((_ map or) lt!2369020 lt!2369036) (t!378764 s!2326)) e!3870508)))

(declare-fun b!6375563 () Bool)

(assert (=> b!6375563 (= e!3870508 (nullableZipper!2053 ((_ map or) lt!2369020 lt!2369036)))))

(declare-fun b!6375564 () Bool)

(assert (=> b!6375564 (= e!3870508 (matchZipper!2299 (derivationStepZipper!2253 ((_ map or) lt!2369020 lt!2369036) (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))))))

(assert (= (and d!1999325 c!1161324) b!6375563))

(assert (= (and d!1999325 (not c!1161324)) b!6375564))

(assert (=> d!1999325 m!7176818))

(declare-fun m!7177212 () Bool)

(assert (=> b!6375563 m!7177212))

(assert (=> b!6375564 m!7176822))

(assert (=> b!6375564 m!7176822))

(declare-fun m!7177214 () Bool)

(assert (=> b!6375564 m!7177214))

(assert (=> b!6375564 m!7176826))

(assert (=> b!6375564 m!7177214))

(assert (=> b!6375564 m!7176826))

(declare-fun m!7177216 () Bool)

(assert (=> b!6375564 m!7177216))

(assert (=> b!6374899 d!1999325))

(declare-fun d!1999327 () Bool)

(assert (=> d!1999327 (= (isEmpty!37157 (t!378763 zl!343)) ((_ is Nil!65037) (t!378763 zl!343)))))

(assert (=> b!6374892 d!1999327))

(declare-fun b!6375566 () Bool)

(declare-fun e!3870511 () (InoxSet Context!11342))

(assert (=> b!6375566 (= e!3870511 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375567 () Bool)

(declare-fun e!3870510 () (InoxSet Context!11342))

(assert (=> b!6375567 (= e!3870510 e!3870511)))

(declare-fun c!1161326 () Bool)

(assert (=> b!6375567 (= c!1161326 ((_ is Cons!65036) (exprs!6171 lt!2369040)))))

(declare-fun call!544612 () (InoxSet Context!11342))

(declare-fun b!6375568 () Bool)

(assert (=> b!6375568 (= e!3870510 ((_ map or) call!544612 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (h!71486 s!2326))))))

(declare-fun b!6375569 () Bool)

(assert (=> b!6375569 (= e!3870511 call!544612)))

(declare-fun bm!544607 () Bool)

(assert (=> bm!544607 (= call!544612 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369040)) (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (h!71486 s!2326)))))

(declare-fun d!1999329 () Bool)

(declare-fun c!1161325 () Bool)

(declare-fun e!3870509 () Bool)

(assert (=> d!1999329 (= c!1161325 e!3870509)))

(declare-fun res!2622644 () Bool)

(assert (=> d!1999329 (=> (not res!2622644) (not e!3870509))))

(assert (=> d!1999329 (= res!2622644 ((_ is Cons!65036) (exprs!6171 lt!2369040)))))

(assert (=> d!1999329 (= (derivationStepZipperUp!1461 lt!2369040 (h!71486 s!2326)) e!3870510)))

(declare-fun b!6375565 () Bool)

(assert (=> b!6375565 (= e!3870509 (nullable!6280 (h!71484 (exprs!6171 lt!2369040))))))

(assert (= (and d!1999329 res!2622644) b!6375565))

(assert (= (and d!1999329 c!1161325) b!6375568))

(assert (= (and d!1999329 (not c!1161325)) b!6375567))

(assert (= (and b!6375567 c!1161326) b!6375569))

(assert (= (and b!6375567 (not c!1161326)) b!6375566))

(assert (= (or b!6375568 b!6375569) bm!544607))

(declare-fun m!7177218 () Bool)

(assert (=> b!6375568 m!7177218))

(declare-fun m!7177220 () Bool)

(assert (=> bm!544607 m!7177220))

(declare-fun m!7177222 () Bool)

(assert (=> b!6375565 m!7177222))

(assert (=> b!6374913 d!1999329))

(declare-fun b!6375571 () Bool)

(declare-fun e!3870514 () (InoxSet Context!11342))

(assert (=> b!6375571 (= e!3870514 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375572 () Bool)

(declare-fun e!3870513 () (InoxSet Context!11342))

(assert (=> b!6375572 (= e!3870513 e!3870514)))

(declare-fun c!1161328 () Bool)

(assert (=> b!6375572 (= c!1161328 ((_ is Cons!65036) (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))

(declare-fun call!544613 () (InoxSet Context!11342))

(declare-fun b!6375573 () Bool)

(assert (=> b!6375573 (= e!3870513 ((_ map or) call!544613 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326))))))

(declare-fun b!6375574 () Bool)

(assert (=> b!6375574 (= e!3870514 call!544613)))

(declare-fun bm!544608 () Bool)

(assert (=> bm!544608 (= call!544613 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326)))))

(declare-fun d!1999331 () Bool)

(declare-fun c!1161327 () Bool)

(declare-fun e!3870512 () Bool)

(assert (=> d!1999331 (= c!1161327 e!3870512)))

(declare-fun res!2622645 () Bool)

(assert (=> d!1999331 (=> (not res!2622645) (not e!3870512))))

(assert (=> d!1999331 (= res!2622645 ((_ is Cons!65036) (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))

(assert (=> d!1999331 (= (derivationStepZipperUp!1461 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))) (h!71486 s!2326)) e!3870513)))

(declare-fun b!6375570 () Bool)

(assert (=> b!6375570 (= e!3870512 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(assert (= (and d!1999331 res!2622645) b!6375570))

(assert (= (and d!1999331 c!1161327) b!6375573))

(assert (= (and d!1999331 (not c!1161327)) b!6375572))

(assert (= (and b!6375572 c!1161328) b!6375574))

(assert (= (and b!6375572 (not c!1161328)) b!6375571))

(assert (= (or b!6375573 b!6375574) bm!544608))

(declare-fun m!7177224 () Bool)

(assert (=> b!6375573 m!7177224))

(declare-fun m!7177226 () Bool)

(assert (=> bm!544608 m!7177226))

(declare-fun m!7177228 () Bool)

(assert (=> b!6375570 m!7177228))

(assert (=> b!6374913 d!1999331))

(declare-fun d!1999333 () Bool)

(assert (=> d!1999333 (= (flatMap!1792 z!1189 lambda!351451) (dynLambda!25803 lambda!351451 (h!71485 zl!343)))))

(declare-fun lt!2369130 () Unit!158479)

(assert (=> d!1999333 (= lt!2369130 (choose!47394 z!1189 (h!71485 zl!343) lambda!351451))))

(assert (=> d!1999333 (= z!1189 (store ((as const (Array Context!11342 Bool)) false) (h!71485 zl!343) true))))

(assert (=> d!1999333 (= (lemmaFlatMapOnSingletonSet!1318 z!1189 (h!71485 zl!343) lambda!351451) lt!2369130)))

(declare-fun b_lambda!242267 () Bool)

(assert (=> (not b_lambda!242267) (not d!1999333)))

(declare-fun bs!1596345 () Bool)

(assert (= bs!1596345 d!1999333))

(assert (=> bs!1596345 m!7176702))

(declare-fun m!7177230 () Bool)

(assert (=> bs!1596345 m!7177230))

(declare-fun m!7177232 () Bool)

(assert (=> bs!1596345 m!7177232))

(declare-fun m!7177234 () Bool)

(assert (=> bs!1596345 m!7177234))

(assert (=> b!6374913 d!1999333))

(declare-fun b!6375575 () Bool)

(declare-fun e!3870517 () (InoxSet Context!11342))

(assert (=> b!6375575 (= e!3870517 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375576 () Bool)

(declare-fun e!3870518 () Bool)

(assert (=> b!6375576 (= e!3870518 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6375578 () Bool)

(declare-fun e!3870519 () (InoxSet Context!11342))

(declare-fun e!3870520 () (InoxSet Context!11342))

(assert (=> b!6375578 (= e!3870519 e!3870520)))

(declare-fun c!1161331 () Bool)

(assert (=> b!6375578 (= c!1161331 ((_ is Concat!25132) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun bm!544609 () Bool)

(declare-fun call!544616 () List!65160)

(declare-fun c!1161333 () Bool)

(declare-fun call!544615 () (InoxSet Context!11342))

(assert (=> bm!544609 (= call!544615 (derivationStepZipperDown!1535 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))) (ite c!1161333 lt!2369040 (Context!11343 call!544616)) (h!71486 s!2326)))))

(declare-fun b!6375579 () Bool)

(declare-fun c!1161332 () Bool)

(assert (=> b!6375579 (= c!1161332 ((_ is Star!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6375579 (= e!3870520 e!3870517)))

(declare-fun bm!544610 () Bool)

(declare-fun call!544619 () List!65160)

(assert (=> bm!544610 (= call!544619 call!544616)))

(declare-fun bm!544611 () Bool)

(declare-fun call!544618 () (InoxSet Context!11342))

(declare-fun call!544614 () (InoxSet Context!11342))

(assert (=> bm!544611 (= call!544618 call!544614)))

(declare-fun b!6375580 () Bool)

(declare-fun e!3870515 () (InoxSet Context!11342))

(declare-fun e!3870516 () (InoxSet Context!11342))

(assert (=> b!6375580 (= e!3870515 e!3870516)))

(assert (=> b!6375580 (= c!1161333 ((_ is Union!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6375581 () Bool)

(assert (=> b!6375581 (= e!3870515 (store ((as const (Array Context!11342 Bool)) false) lt!2369040 true))))

(declare-fun bm!544612 () Bool)

(declare-fun c!1161330 () Bool)

(assert (=> bm!544612 (= call!544616 ($colon$colon!2148 (exprs!6171 lt!2369040) (ite (or c!1161330 c!1161331) (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71484 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6375582 () Bool)

(assert (=> b!6375582 (= e!3870520 call!544618)))

(declare-fun d!1999335 () Bool)

(declare-fun c!1161329 () Bool)

(assert (=> d!1999335 (= c!1161329 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))) (= (c!1161140 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326))))))

(assert (=> d!1999335 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (h!71485 zl!343))) lt!2369040 (h!71486 s!2326)) e!3870515)))

(declare-fun b!6375577 () Bool)

(assert (=> b!6375577 (= e!3870519 ((_ map or) call!544615 call!544614))))

(declare-fun b!6375583 () Bool)

(declare-fun call!544617 () (InoxSet Context!11342))

(assert (=> b!6375583 (= e!3870516 ((_ map or) call!544617 call!544615))))

(declare-fun b!6375584 () Bool)

(assert (=> b!6375584 (= e!3870517 call!544618)))

(declare-fun bm!544613 () Bool)

(assert (=> bm!544613 (= call!544614 call!544617)))

(declare-fun bm!544614 () Bool)

(assert (=> bm!544614 (= call!544617 (derivationStepZipperDown!1535 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))) (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619)) (h!71486 s!2326)))))

(declare-fun b!6375585 () Bool)

(assert (=> b!6375585 (= c!1161330 e!3870518)))

(declare-fun res!2622646 () Bool)

(assert (=> b!6375585 (=> (not res!2622646) (not e!3870518))))

(assert (=> b!6375585 (= res!2622646 ((_ is Concat!25132) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6375585 (= e!3870516 e!3870519)))

(assert (= (and d!1999335 c!1161329) b!6375581))

(assert (= (and d!1999335 (not c!1161329)) b!6375580))

(assert (= (and b!6375580 c!1161333) b!6375583))

(assert (= (and b!6375580 (not c!1161333)) b!6375585))

(assert (= (and b!6375585 res!2622646) b!6375576))

(assert (= (and b!6375585 c!1161330) b!6375577))

(assert (= (and b!6375585 (not c!1161330)) b!6375578))

(assert (= (and b!6375578 c!1161331) b!6375582))

(assert (= (and b!6375578 (not c!1161331)) b!6375579))

(assert (= (and b!6375579 c!1161332) b!6375584))

(assert (= (and b!6375579 (not c!1161332)) b!6375575))

(assert (= (or b!6375582 b!6375584) bm!544610))

(assert (= (or b!6375582 b!6375584) bm!544611))

(assert (= (or b!6375577 bm!544610) bm!544612))

(assert (= (or b!6375577 bm!544611) bm!544613))

(assert (= (or b!6375583 b!6375577) bm!544609))

(assert (= (or b!6375583 bm!544613) bm!544614))

(declare-fun m!7177236 () Bool)

(assert (=> b!6375576 m!7177236))

(declare-fun m!7177238 () Bool)

(assert (=> b!6375581 m!7177238))

(declare-fun m!7177240 () Bool)

(assert (=> bm!544612 m!7177240))

(declare-fun m!7177242 () Bool)

(assert (=> bm!544614 m!7177242))

(declare-fun m!7177244 () Bool)

(assert (=> bm!544609 m!7177244))

(assert (=> b!6374913 d!1999335))

(declare-fun d!1999337 () Bool)

(assert (=> d!1999337 (= (nullable!6280 (h!71484 (exprs!6171 (h!71485 zl!343)))) (nullableFct!2226 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun bs!1596346 () Bool)

(assert (= bs!1596346 d!1999337))

(declare-fun m!7177246 () Bool)

(assert (=> bs!1596346 m!7177246))

(assert (=> b!6374913 d!1999337))

(declare-fun d!1999339 () Bool)

(assert (=> d!1999339 (= (flatMap!1792 z!1189 lambda!351451) (choose!47392 z!1189 lambda!351451))))

(declare-fun bs!1596347 () Bool)

(assert (= bs!1596347 d!1999339))

(declare-fun m!7177248 () Bool)

(assert (=> bs!1596347 m!7177248))

(assert (=> b!6374913 d!1999339))

(declare-fun b!6375587 () Bool)

(declare-fun e!3870523 () (InoxSet Context!11342))

(assert (=> b!6375587 (= e!3870523 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375588 () Bool)

(declare-fun e!3870522 () (InoxSet Context!11342))

(assert (=> b!6375588 (= e!3870522 e!3870523)))

(declare-fun c!1161335 () Bool)

(assert (=> b!6375588 (= c!1161335 ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343))))))

(declare-fun b!6375589 () Bool)

(declare-fun call!544620 () (InoxSet Context!11342))

(assert (=> b!6375589 (= e!3870522 ((_ map or) call!544620 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326))))))

(declare-fun b!6375590 () Bool)

(assert (=> b!6375590 (= e!3870523 call!544620)))

(declare-fun bm!544615 () Bool)

(assert (=> bm!544615 (= call!544620 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (h!71485 zl!343))) (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326)))))

(declare-fun d!1999341 () Bool)

(declare-fun c!1161334 () Bool)

(declare-fun e!3870521 () Bool)

(assert (=> d!1999341 (= c!1161334 e!3870521)))

(declare-fun res!2622647 () Bool)

(assert (=> d!1999341 (=> (not res!2622647) (not e!3870521))))

(assert (=> d!1999341 (= res!2622647 ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343))))))

(assert (=> d!1999341 (= (derivationStepZipperUp!1461 (h!71485 zl!343) (h!71486 s!2326)) e!3870522)))

(declare-fun b!6375586 () Bool)

(assert (=> b!6375586 (= e!3870521 (nullable!6280 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (= (and d!1999341 res!2622647) b!6375586))

(assert (= (and d!1999341 c!1161334) b!6375589))

(assert (= (and d!1999341 (not c!1161334)) b!6375588))

(assert (= (and b!6375588 c!1161335) b!6375590))

(assert (= (and b!6375588 (not c!1161335)) b!6375587))

(assert (= (or b!6375589 b!6375590) bm!544615))

(declare-fun m!7177250 () Bool)

(assert (=> b!6375589 m!7177250))

(declare-fun m!7177252 () Bool)

(assert (=> bm!544615 m!7177252))

(assert (=> b!6375586 m!7176698))

(assert (=> b!6374913 d!1999341))

(declare-fun d!1999343 () Bool)

(declare-fun e!3870526 () Bool)

(assert (=> d!1999343 e!3870526))

(declare-fun res!2622650 () Bool)

(assert (=> d!1999343 (=> (not res!2622650) (not e!3870526))))

(declare-fun lt!2369133 () List!65161)

(declare-fun noDuplicate!2117 (List!65161) Bool)

(assert (=> d!1999343 (= res!2622650 (noDuplicate!2117 lt!2369133))))

(declare-fun choose!47402 ((InoxSet Context!11342)) List!65161)

(assert (=> d!1999343 (= lt!2369133 (choose!47402 z!1189))))

(assert (=> d!1999343 (= (toList!10071 z!1189) lt!2369133)))

(declare-fun b!6375593 () Bool)

(declare-fun content!12300 (List!65161) (InoxSet Context!11342))

(assert (=> b!6375593 (= e!3870526 (= (content!12300 lt!2369133) z!1189))))

(assert (= (and d!1999343 res!2622650) b!6375593))

(declare-fun m!7177254 () Bool)

(assert (=> d!1999343 m!7177254))

(declare-fun m!7177256 () Bool)

(assert (=> d!1999343 m!7177256))

(declare-fun m!7177258 () Bool)

(assert (=> b!6375593 m!7177258))

(assert (=> b!6374903 d!1999343))

(declare-fun bs!1596348 () Bool)

(declare-fun d!1999345 () Bool)

(assert (= bs!1596348 (and d!1999345 d!1999221)))

(declare-fun lambda!351511 () Int)

(assert (=> bs!1596348 (= lambda!351511 lambda!351478)))

(declare-fun bs!1596349 () Bool)

(assert (= bs!1596349 (and d!1999345 d!1999249)))

(assert (=> bs!1596349 (= lambda!351511 lambda!351486)))

(declare-fun bs!1596350 () Bool)

(assert (= bs!1596350 (and d!1999345 d!1999307)))

(assert (=> bs!1596350 (= lambda!351511 lambda!351499)))

(declare-fun b!6375614 () Bool)

(declare-fun e!3870542 () Bool)

(declare-fun lt!2369136 () Regex!16287)

(declare-fun isUnion!1125 (Regex!16287) Bool)

(assert (=> b!6375614 (= e!3870542 (isUnion!1125 lt!2369136))))

(declare-fun b!6375615 () Bool)

(assert (=> b!6375615 (= e!3870542 (= lt!2369136 (head!13067 (unfocusZipperList!1708 zl!343))))))

(declare-fun e!3870544 () Bool)

(assert (=> d!1999345 e!3870544))

(declare-fun res!2622656 () Bool)

(assert (=> d!1999345 (=> (not res!2622656) (not e!3870544))))

(assert (=> d!1999345 (= res!2622656 (validRegex!8023 lt!2369136))))

(declare-fun e!3870541 () Regex!16287)

(assert (=> d!1999345 (= lt!2369136 e!3870541)))

(declare-fun c!1161346 () Bool)

(declare-fun e!3870539 () Bool)

(assert (=> d!1999345 (= c!1161346 e!3870539)))

(declare-fun res!2622655 () Bool)

(assert (=> d!1999345 (=> (not res!2622655) (not e!3870539))))

(assert (=> d!1999345 (= res!2622655 ((_ is Cons!65036) (unfocusZipperList!1708 zl!343)))))

(assert (=> d!1999345 (forall!15465 (unfocusZipperList!1708 zl!343) lambda!351511)))

(assert (=> d!1999345 (= (generalisedUnion!2131 (unfocusZipperList!1708 zl!343)) lt!2369136)))

(declare-fun b!6375616 () Bool)

(declare-fun e!3870540 () Bool)

(assert (=> b!6375616 (= e!3870544 e!3870540)))

(declare-fun c!1161344 () Bool)

(assert (=> b!6375616 (= c!1161344 (isEmpty!37158 (unfocusZipperList!1708 zl!343)))))

(declare-fun b!6375617 () Bool)

(declare-fun e!3870543 () Regex!16287)

(assert (=> b!6375617 (= e!3870543 (Union!16287 (h!71484 (unfocusZipperList!1708 zl!343)) (generalisedUnion!2131 (t!378762 (unfocusZipperList!1708 zl!343)))))))

(declare-fun b!6375618 () Bool)

(assert (=> b!6375618 (= e!3870540 e!3870542)))

(declare-fun c!1161347 () Bool)

(assert (=> b!6375618 (= c!1161347 (isEmpty!37158 (tail!12152 (unfocusZipperList!1708 zl!343))))))

(declare-fun b!6375619 () Bool)

(declare-fun isEmptyLang!1695 (Regex!16287) Bool)

(assert (=> b!6375619 (= e!3870540 (isEmptyLang!1695 lt!2369136))))

(declare-fun b!6375620 () Bool)

(assert (=> b!6375620 (= e!3870541 (h!71484 (unfocusZipperList!1708 zl!343)))))

(declare-fun b!6375621 () Bool)

(assert (=> b!6375621 (= e!3870541 e!3870543)))

(declare-fun c!1161345 () Bool)

(assert (=> b!6375621 (= c!1161345 ((_ is Cons!65036) (unfocusZipperList!1708 zl!343)))))

(declare-fun b!6375622 () Bool)

(assert (=> b!6375622 (= e!3870543 EmptyLang!16287)))

(declare-fun b!6375623 () Bool)

(assert (=> b!6375623 (= e!3870539 (isEmpty!37158 (t!378762 (unfocusZipperList!1708 zl!343))))))

(assert (= (and d!1999345 res!2622655) b!6375623))

(assert (= (and d!1999345 c!1161346) b!6375620))

(assert (= (and d!1999345 (not c!1161346)) b!6375621))

(assert (= (and b!6375621 c!1161345) b!6375617))

(assert (= (and b!6375621 (not c!1161345)) b!6375622))

(assert (= (and d!1999345 res!2622656) b!6375616))

(assert (= (and b!6375616 c!1161344) b!6375619))

(assert (= (and b!6375616 (not c!1161344)) b!6375618))

(assert (= (and b!6375618 c!1161347) b!6375615))

(assert (= (and b!6375618 (not c!1161347)) b!6375614))

(declare-fun m!7177260 () Bool)

(assert (=> b!6375619 m!7177260))

(assert (=> b!6375615 m!7176736))

(declare-fun m!7177262 () Bool)

(assert (=> b!6375615 m!7177262))

(assert (=> b!6375618 m!7176736))

(declare-fun m!7177264 () Bool)

(assert (=> b!6375618 m!7177264))

(assert (=> b!6375618 m!7177264))

(declare-fun m!7177266 () Bool)

(assert (=> b!6375618 m!7177266))

(declare-fun m!7177268 () Bool)

(assert (=> b!6375617 m!7177268))

(declare-fun m!7177270 () Bool)

(assert (=> d!1999345 m!7177270))

(assert (=> d!1999345 m!7176736))

(declare-fun m!7177272 () Bool)

(assert (=> d!1999345 m!7177272))

(declare-fun m!7177274 () Bool)

(assert (=> b!6375614 m!7177274))

(assert (=> b!6375616 m!7176736))

(declare-fun m!7177276 () Bool)

(assert (=> b!6375616 m!7177276))

(declare-fun m!7177278 () Bool)

(assert (=> b!6375623 m!7177278))

(assert (=> b!6374901 d!1999345))

(declare-fun bs!1596351 () Bool)

(declare-fun d!1999347 () Bool)

(assert (= bs!1596351 (and d!1999347 d!1999221)))

(declare-fun lambda!351514 () Int)

(assert (=> bs!1596351 (= lambda!351514 lambda!351478)))

(declare-fun bs!1596352 () Bool)

(assert (= bs!1596352 (and d!1999347 d!1999249)))

(assert (=> bs!1596352 (= lambda!351514 lambda!351486)))

(declare-fun bs!1596353 () Bool)

(assert (= bs!1596353 (and d!1999347 d!1999307)))

(assert (=> bs!1596353 (= lambda!351514 lambda!351499)))

(declare-fun bs!1596354 () Bool)

(assert (= bs!1596354 (and d!1999347 d!1999345)))

(assert (=> bs!1596354 (= lambda!351514 lambda!351511)))

(declare-fun lt!2369139 () List!65160)

(assert (=> d!1999347 (forall!15465 lt!2369139 lambda!351514)))

(declare-fun e!3870547 () List!65160)

(assert (=> d!1999347 (= lt!2369139 e!3870547)))

(declare-fun c!1161350 () Bool)

(assert (=> d!1999347 (= c!1161350 ((_ is Cons!65037) zl!343))))

(assert (=> d!1999347 (= (unfocusZipperList!1708 zl!343) lt!2369139)))

(declare-fun b!6375628 () Bool)

(assert (=> b!6375628 (= e!3870547 (Cons!65036 (generalisedConcat!1884 (exprs!6171 (h!71485 zl!343))) (unfocusZipperList!1708 (t!378763 zl!343))))))

(declare-fun b!6375629 () Bool)

(assert (=> b!6375629 (= e!3870547 Nil!65036)))

(assert (= (and d!1999347 c!1161350) b!6375628))

(assert (= (and d!1999347 (not c!1161350)) b!6375629))

(declare-fun m!7177280 () Bool)

(assert (=> d!1999347 m!7177280))

(assert (=> b!6375628 m!7176690))

(declare-fun m!7177282 () Bool)

(assert (=> b!6375628 m!7177282))

(assert (=> b!6374901 d!1999347))

(declare-fun bs!1596355 () Bool)

(declare-fun d!1999349 () Bool)

(assert (= bs!1596355 (and d!1999349 d!1999249)))

(declare-fun lambda!351515 () Int)

(assert (=> bs!1596355 (= lambda!351515 lambda!351486)))

(declare-fun bs!1596356 () Bool)

(assert (= bs!1596356 (and d!1999349 d!1999347)))

(assert (=> bs!1596356 (= lambda!351515 lambda!351514)))

(declare-fun bs!1596357 () Bool)

(assert (= bs!1596357 (and d!1999349 d!1999307)))

(assert (=> bs!1596357 (= lambda!351515 lambda!351499)))

(declare-fun bs!1596358 () Bool)

(assert (= bs!1596358 (and d!1999349 d!1999345)))

(assert (=> bs!1596358 (= lambda!351515 lambda!351511)))

(declare-fun bs!1596359 () Bool)

(assert (= bs!1596359 (and d!1999349 d!1999221)))

(assert (=> bs!1596359 (= lambda!351515 lambda!351478)))

(assert (=> d!1999349 (= (inv!83964 (h!71485 zl!343)) (forall!15465 (exprs!6171 (h!71485 zl!343)) lambda!351515))))

(declare-fun bs!1596360 () Bool)

(assert (= bs!1596360 d!1999349))

(declare-fun m!7177284 () Bool)

(assert (=> bs!1596360 m!7177284))

(assert (=> b!6374902 d!1999349))

(declare-fun d!1999351 () Bool)

(declare-fun lt!2369140 () Regex!16287)

(assert (=> d!1999351 (validRegex!8023 lt!2369140)))

(assert (=> d!1999351 (= lt!2369140 (generalisedUnion!2131 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))

(assert (=> d!1999351 (= (unfocusZipper!2029 (Cons!65037 lt!2369039 Nil!65037)) lt!2369140)))

(declare-fun bs!1596361 () Bool)

(assert (= bs!1596361 d!1999351))

(declare-fun m!7177286 () Bool)

(assert (=> bs!1596361 m!7177286))

(declare-fun m!7177288 () Bool)

(assert (=> bs!1596361 m!7177288))

(assert (=> bs!1596361 m!7177288))

(declare-fun m!7177290 () Bool)

(assert (=> bs!1596361 m!7177290))

(assert (=> b!6374921 d!1999351))

(declare-fun b!6375634 () Bool)

(declare-fun e!3870550 () Bool)

(declare-fun tp!1774641 () Bool)

(declare-fun tp!1774642 () Bool)

(assert (=> b!6375634 (= e!3870550 (and tp!1774641 tp!1774642))))

(assert (=> b!6374900 (= tp!1774573 e!3870550)))

(assert (= (and b!6374900 ((_ is Cons!65036) (exprs!6171 (h!71485 zl!343)))) b!6375634))

(declare-fun b!6375647 () Bool)

(declare-fun e!3870553 () Bool)

(declare-fun tp!1774654 () Bool)

(assert (=> b!6375647 (= e!3870553 tp!1774654)))

(declare-fun b!6375645 () Bool)

(assert (=> b!6375645 (= e!3870553 tp_is_empty!41827)))

(declare-fun b!6375648 () Bool)

(declare-fun tp!1774656 () Bool)

(declare-fun tp!1774655 () Bool)

(assert (=> b!6375648 (= e!3870553 (and tp!1774656 tp!1774655))))

(assert (=> b!6374919 (= tp!1774570 e!3870553)))

(declare-fun b!6375646 () Bool)

(declare-fun tp!1774653 () Bool)

(declare-fun tp!1774657 () Bool)

(assert (=> b!6375646 (= e!3870553 (and tp!1774653 tp!1774657))))

(assert (= (and b!6374919 ((_ is ElementMatch!16287) (reg!16616 r!7292))) b!6375645))

(assert (= (and b!6374919 ((_ is Concat!25132) (reg!16616 r!7292))) b!6375646))

(assert (= (and b!6374919 ((_ is Star!16287) (reg!16616 r!7292))) b!6375647))

(assert (= (and b!6374919 ((_ is Union!16287) (reg!16616 r!7292))) b!6375648))

(declare-fun b!6375651 () Bool)

(declare-fun e!3870554 () Bool)

(declare-fun tp!1774659 () Bool)

(assert (=> b!6375651 (= e!3870554 tp!1774659)))

(declare-fun b!6375649 () Bool)

(assert (=> b!6375649 (= e!3870554 tp_is_empty!41827)))

(declare-fun b!6375652 () Bool)

(declare-fun tp!1774661 () Bool)

(declare-fun tp!1774660 () Bool)

(assert (=> b!6375652 (= e!3870554 (and tp!1774661 tp!1774660))))

(assert (=> b!6374920 (= tp!1774577 e!3870554)))

(declare-fun b!6375650 () Bool)

(declare-fun tp!1774658 () Bool)

(declare-fun tp!1774662 () Bool)

(assert (=> b!6375650 (= e!3870554 (and tp!1774658 tp!1774662))))

(assert (= (and b!6374920 ((_ is ElementMatch!16287) (regOne!33086 r!7292))) b!6375649))

(assert (= (and b!6374920 ((_ is Concat!25132) (regOne!33086 r!7292))) b!6375650))

(assert (= (and b!6374920 ((_ is Star!16287) (regOne!33086 r!7292))) b!6375651))

(assert (= (and b!6374920 ((_ is Union!16287) (regOne!33086 r!7292))) b!6375652))

(declare-fun b!6375655 () Bool)

(declare-fun e!3870555 () Bool)

(declare-fun tp!1774664 () Bool)

(assert (=> b!6375655 (= e!3870555 tp!1774664)))

(declare-fun b!6375653 () Bool)

(assert (=> b!6375653 (= e!3870555 tp_is_empty!41827)))

(declare-fun b!6375656 () Bool)

(declare-fun tp!1774666 () Bool)

(declare-fun tp!1774665 () Bool)

(assert (=> b!6375656 (= e!3870555 (and tp!1774666 tp!1774665))))

(assert (=> b!6374920 (= tp!1774575 e!3870555)))

(declare-fun b!6375654 () Bool)

(declare-fun tp!1774663 () Bool)

(declare-fun tp!1774667 () Bool)

(assert (=> b!6375654 (= e!3870555 (and tp!1774663 tp!1774667))))

(assert (= (and b!6374920 ((_ is ElementMatch!16287) (regTwo!33086 r!7292))) b!6375653))

(assert (= (and b!6374920 ((_ is Concat!25132) (regTwo!33086 r!7292))) b!6375654))

(assert (= (and b!6374920 ((_ is Star!16287) (regTwo!33086 r!7292))) b!6375655))

(assert (= (and b!6374920 ((_ is Union!16287) (regTwo!33086 r!7292))) b!6375656))

(declare-fun b!6375661 () Bool)

(declare-fun e!3870558 () Bool)

(declare-fun tp!1774670 () Bool)

(assert (=> b!6375661 (= e!3870558 (and tp_is_empty!41827 tp!1774670))))

(assert (=> b!6374906 (= tp!1774574 e!3870558)))

(assert (= (and b!6374906 ((_ is Cons!65038) (t!378764 s!2326))) b!6375661))

(declare-fun condSetEmpty!43488 () Bool)

(assert (=> setNonEmpty!43482 (= condSetEmpty!43488 (= setRest!43482 ((as const (Array Context!11342 Bool)) false)))))

(declare-fun setRes!43488 () Bool)

(assert (=> setNonEmpty!43482 (= tp!1774578 setRes!43488)))

(declare-fun setIsEmpty!43488 () Bool)

(assert (=> setIsEmpty!43488 setRes!43488))

(declare-fun setElem!43488 () Context!11342)

(declare-fun tp!1774676 () Bool)

(declare-fun e!3870561 () Bool)

(declare-fun setNonEmpty!43488 () Bool)

(assert (=> setNonEmpty!43488 (= setRes!43488 (and tp!1774676 (inv!83964 setElem!43488) e!3870561))))

(declare-fun setRest!43488 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43488 (= setRest!43482 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43488 true) setRest!43488))))

(declare-fun b!6375666 () Bool)

(declare-fun tp!1774675 () Bool)

(assert (=> b!6375666 (= e!3870561 tp!1774675)))

(assert (= (and setNonEmpty!43482 condSetEmpty!43488) setIsEmpty!43488))

(assert (= (and setNonEmpty!43482 (not condSetEmpty!43488)) setNonEmpty!43488))

(assert (= setNonEmpty!43488 b!6375666))

(declare-fun m!7177292 () Bool)

(assert (=> setNonEmpty!43488 m!7177292))

(declare-fun b!6375667 () Bool)

(declare-fun e!3870562 () Bool)

(declare-fun tp!1774677 () Bool)

(declare-fun tp!1774678 () Bool)

(assert (=> b!6375667 (= e!3870562 (and tp!1774677 tp!1774678))))

(assert (=> b!6374909 (= tp!1774569 e!3870562)))

(assert (= (and b!6374909 ((_ is Cons!65036) (exprs!6171 setElem!43482))) b!6375667))

(declare-fun b!6375670 () Bool)

(declare-fun e!3870563 () Bool)

(declare-fun tp!1774680 () Bool)

(assert (=> b!6375670 (= e!3870563 tp!1774680)))

(declare-fun b!6375668 () Bool)

(assert (=> b!6375668 (= e!3870563 tp_is_empty!41827)))

(declare-fun b!6375671 () Bool)

(declare-fun tp!1774682 () Bool)

(declare-fun tp!1774681 () Bool)

(assert (=> b!6375671 (= e!3870563 (and tp!1774682 tp!1774681))))

(assert (=> b!6374916 (= tp!1774572 e!3870563)))

(declare-fun b!6375669 () Bool)

(declare-fun tp!1774679 () Bool)

(declare-fun tp!1774683 () Bool)

(assert (=> b!6375669 (= e!3870563 (and tp!1774679 tp!1774683))))

(assert (= (and b!6374916 ((_ is ElementMatch!16287) (regOne!33087 r!7292))) b!6375668))

(assert (= (and b!6374916 ((_ is Concat!25132) (regOne!33087 r!7292))) b!6375669))

(assert (= (and b!6374916 ((_ is Star!16287) (regOne!33087 r!7292))) b!6375670))

(assert (= (and b!6374916 ((_ is Union!16287) (regOne!33087 r!7292))) b!6375671))

(declare-fun b!6375674 () Bool)

(declare-fun e!3870564 () Bool)

(declare-fun tp!1774685 () Bool)

(assert (=> b!6375674 (= e!3870564 tp!1774685)))

(declare-fun b!6375672 () Bool)

(assert (=> b!6375672 (= e!3870564 tp_is_empty!41827)))

(declare-fun b!6375675 () Bool)

(declare-fun tp!1774687 () Bool)

(declare-fun tp!1774686 () Bool)

(assert (=> b!6375675 (= e!3870564 (and tp!1774687 tp!1774686))))

(assert (=> b!6374916 (= tp!1774571 e!3870564)))

(declare-fun b!6375673 () Bool)

(declare-fun tp!1774684 () Bool)

(declare-fun tp!1774688 () Bool)

(assert (=> b!6375673 (= e!3870564 (and tp!1774684 tp!1774688))))

(assert (= (and b!6374916 ((_ is ElementMatch!16287) (regTwo!33087 r!7292))) b!6375672))

(assert (= (and b!6374916 ((_ is Concat!25132) (regTwo!33087 r!7292))) b!6375673))

(assert (= (and b!6374916 ((_ is Star!16287) (regTwo!33087 r!7292))) b!6375674))

(assert (= (and b!6374916 ((_ is Union!16287) (regTwo!33087 r!7292))) b!6375675))

(declare-fun b!6375683 () Bool)

(declare-fun e!3870570 () Bool)

(declare-fun tp!1774693 () Bool)

(assert (=> b!6375683 (= e!3870570 tp!1774693)))

(declare-fun b!6375682 () Bool)

(declare-fun tp!1774694 () Bool)

(declare-fun e!3870569 () Bool)

(assert (=> b!6375682 (= e!3870569 (and (inv!83964 (h!71485 (t!378763 zl!343))) e!3870570 tp!1774694))))

(assert (=> b!6374902 (= tp!1774576 e!3870569)))

(assert (= b!6375682 b!6375683))

(assert (= (and b!6374902 ((_ is Cons!65037) (t!378763 zl!343))) b!6375682))

(declare-fun m!7177294 () Bool)

(assert (=> b!6375682 m!7177294))

(declare-fun b_lambda!242269 () Bool)

(assert (= b_lambda!242251 (or b!6374913 b_lambda!242269)))

(declare-fun bs!1596362 () Bool)

(declare-fun d!1999353 () Bool)

(assert (= bs!1596362 (and d!1999353 b!6374913)))

(assert (=> bs!1596362 (= (dynLambda!25803 lambda!351451 lt!2369028) (derivationStepZipperUp!1461 lt!2369028 (h!71486 s!2326)))))

(assert (=> bs!1596362 m!7176748))

(assert (=> d!1999247 d!1999353))

(declare-fun b_lambda!242271 () Bool)

(assert (= b_lambda!242267 (or b!6374913 b_lambda!242271)))

(declare-fun bs!1596363 () Bool)

(declare-fun d!1999355 () Bool)

(assert (= bs!1596363 (and d!1999355 b!6374913)))

(assert (=> bs!1596363 (= (dynLambda!25803 lambda!351451 (h!71485 zl!343)) (derivationStepZipperUp!1461 (h!71485 zl!343) (h!71486 s!2326)))))

(assert (=> bs!1596363 m!7176694))

(assert (=> d!1999333 d!1999355))

(declare-fun b_lambda!242273 () Bool)

(assert (= b_lambda!242249 (or b!6374913 b_lambda!242273)))

(declare-fun bs!1596364 () Bool)

(declare-fun d!1999357 () Bool)

(assert (= bs!1596364 (and d!1999357 b!6374913)))

(assert (=> bs!1596364 (= (dynLambda!25803 lambda!351451 lt!2369038) (derivationStepZipperUp!1461 lt!2369038 (h!71486 s!2326)))))

(assert (=> bs!1596364 m!7176764))

(assert (=> d!1999239 d!1999357))

(declare-fun b_lambda!242275 () Bool)

(assert (= b_lambda!242245 (or b!6374913 b_lambda!242275)))

(declare-fun bs!1596365 () Bool)

(declare-fun d!1999359 () Bool)

(assert (= bs!1596365 (and d!1999359 b!6374913)))

(assert (=> bs!1596365 (= (dynLambda!25803 lambda!351451 lt!2369039) (derivationStepZipperUp!1461 lt!2369039 (h!71486 s!2326)))))

(assert (=> bs!1596365 m!7176726))

(assert (=> d!1999185 d!1999359))

(check-sat (not b!6375615) (not b!6374970) (not bm!544570) (not b!6375539) (not b!6375669) (not b!6375560) tp_is_empty!41827 (not b!6375628) (not bm!544518) (not b!6375508) (not b!6374984) (not b!6375648) (not setNonEmpty!43488) (not b_lambda!242273) (not b!6375671) (not b!6375538) (not bm!544607) (not d!1999245) (not bm!544612) (not bm!544555) (not bm!544603) (not d!1999189) (not d!1999305) (not b!6375205) (not b!6375623) (not bm!544557) (not b_lambda!242271) (not b!6375105) (not b!6375568) (not b!6375127) (not d!1999333) (not b!6375210) (not b!6375634) (not b!6375616) (not b!6375420) (not b!6375573) (not b!6375619) (not b!6375593) (not b!6375012) (not b!6375618) (not d!1999311) (not d!1999235) (not d!1999209) (not bm!544606) (not d!1999171) (not b!6375126) (not b!6375647) (not bs!1596365) (not bm!544608) (not b!6375576) (not b!6375564) (not d!1999323) (not b!6375589) (not b!6375683) (not bm!544572) (not d!1999249) (not b!6375289) (not b!6375646) (not b_lambda!242275) (not d!1999221) (not b!6374985) (not b!6374971) (not b!6375416) (not b!6375661) (not b!6375183) (not b!6375288) (not b!6375650) (not b!6375009) (not bm!544602) (not b!6375570) (not b!6375565) (not b!6375562) (not b!6375675) (not b!6375513) (not bs!1596363) (not b!6375296) (not b!6375561) (not d!1999343) (not b!6375511) (not d!1999347) (not d!1999247) (not bm!544573) (not b!6375670) (not b!6375666) (not b!6375656) (not d!1999321) (not bm!544614) (not b!6375540) (not b!6375518) (not b!6375537) (not d!1999319) (not b!6375542) (not b_lambda!242269) (not d!1999313) (not b!6375293) (not b!6375617) (not b!6375291) (not b!6375654) (not d!1999239) (not bm!544574) (not b!6375652) (not b!6375202) (not b!6375515) (not bs!1596362) (not b!6375292) (not bm!544552) (not b!6375614) (not b!6375673) (not b!6375651) (not d!1999175) (not d!1999339) (not b!6375674) (not d!1999163) (not d!1999173) (not d!1999307) (not b!6375586) (not bm!544615) (not b!6375563) (not bs!1596364) (not b!6375545) (not d!1999185) (not d!1999349) (not b!6375655) (not d!1999337) (not b!6375512) (not d!1999317) (not bm!544609) (not b!6375667) (not b!6375682) (not d!1999345) (not b!6375207) (not d!1999315) (not d!1999325) (not d!1999205) (not b!6375294) (not d!1999309) (not d!1999351) (not d!1999297))
(check-sat)
(get-model)

(declare-fun b!6375743 () Bool)

(declare-fun e!3870609 () (InoxSet Context!11342))

(assert (=> b!6375743 (= e!3870609 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375744 () Bool)

(declare-fun e!3870610 () Bool)

(assert (=> b!6375744 (= e!3870610 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6375746 () Bool)

(declare-fun e!3870611 () (InoxSet Context!11342))

(declare-fun e!3870612 () (InoxSet Context!11342))

(assert (=> b!6375746 (= e!3870611 e!3870612)))

(declare-fun c!1161378 () Bool)

(assert (=> b!6375746 (= c!1161378 ((_ is Concat!25132) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun call!544639 () List!65160)

(declare-fun bm!544632 () Bool)

(declare-fun c!1161380 () Bool)

(declare-fun call!544638 () (InoxSet Context!11342))

(assert (=> bm!544632 (= call!544638 (derivationStepZipperDown!1535 (ite c!1161380 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))) (ite c!1161380 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (Context!11343 call!544639)) (h!71486 s!2326)))))

(declare-fun b!6375747 () Bool)

(declare-fun c!1161379 () Bool)

(assert (=> b!6375747 (= c!1161379 ((_ is Star!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6375747 (= e!3870612 e!3870609)))

(declare-fun bm!544633 () Bool)

(declare-fun call!544642 () List!65160)

(assert (=> bm!544633 (= call!544642 call!544639)))

(declare-fun bm!544634 () Bool)

(declare-fun call!544641 () (InoxSet Context!11342))

(declare-fun call!544637 () (InoxSet Context!11342))

(assert (=> bm!544634 (= call!544641 call!544637)))

(declare-fun b!6375748 () Bool)

(declare-fun e!3870607 () (InoxSet Context!11342))

(declare-fun e!3870608 () (InoxSet Context!11342))

(assert (=> b!6375748 (= e!3870607 e!3870608)))

(assert (=> b!6375748 (= c!1161380 ((_ is Union!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6375749 () Bool)

(assert (=> b!6375749 (= e!3870607 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) true))))

(declare-fun c!1161377 () Bool)

(declare-fun bm!544635 () Bool)

(assert (=> bm!544635 (= call!544639 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343))))) (ite (or c!1161377 c!1161378) (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71484 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6375750 () Bool)

(assert (=> b!6375750 (= e!3870612 call!544641)))

(declare-fun d!1999391 () Bool)

(declare-fun c!1161376 () Bool)

(assert (=> d!1999391 (= c!1161376 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))) (= (c!1161140 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326))))))

(assert (=> d!1999391 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (h!71485 zl!343))) (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326)) e!3870607)))

(declare-fun b!6375745 () Bool)

(assert (=> b!6375745 (= e!3870611 ((_ map or) call!544638 call!544637))))

(declare-fun b!6375751 () Bool)

(declare-fun call!544640 () (InoxSet Context!11342))

(assert (=> b!6375751 (= e!3870608 ((_ map or) call!544640 call!544638))))

(declare-fun b!6375752 () Bool)

(assert (=> b!6375752 (= e!3870609 call!544641)))

(declare-fun bm!544636 () Bool)

(assert (=> bm!544636 (= call!544637 call!544640)))

(declare-fun bm!544637 () Bool)

(assert (=> bm!544637 (= call!544640 (derivationStepZipperDown!1535 (ite c!1161380 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161377 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161378 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))) (ite (or c!1161380 c!1161377) (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (Context!11343 call!544642)) (h!71486 s!2326)))))

(declare-fun b!6375753 () Bool)

(assert (=> b!6375753 (= c!1161377 e!3870610)))

(declare-fun res!2622673 () Bool)

(assert (=> b!6375753 (=> (not res!2622673) (not e!3870610))))

(assert (=> b!6375753 (= res!2622673 ((_ is Concat!25132) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6375753 (= e!3870608 e!3870611)))

(assert (= (and d!1999391 c!1161376) b!6375749))

(assert (= (and d!1999391 (not c!1161376)) b!6375748))

(assert (= (and b!6375748 c!1161380) b!6375751))

(assert (= (and b!6375748 (not c!1161380)) b!6375753))

(assert (= (and b!6375753 res!2622673) b!6375744))

(assert (= (and b!6375753 c!1161377) b!6375745))

(assert (= (and b!6375753 (not c!1161377)) b!6375746))

(assert (= (and b!6375746 c!1161378) b!6375750))

(assert (= (and b!6375746 (not c!1161378)) b!6375747))

(assert (= (and b!6375747 c!1161379) b!6375752))

(assert (= (and b!6375747 (not c!1161379)) b!6375743))

(assert (= (or b!6375750 b!6375752) bm!544633))

(assert (= (or b!6375750 b!6375752) bm!544634))

(assert (= (or b!6375745 bm!544633) bm!544635))

(assert (= (or b!6375745 bm!544634) bm!544636))

(assert (= (or b!6375751 b!6375745) bm!544632))

(assert (= (or b!6375751 bm!544636) bm!544637))

(assert (=> b!6375744 m!7177236))

(declare-fun m!7177368 () Bool)

(assert (=> b!6375749 m!7177368))

(declare-fun m!7177370 () Bool)

(assert (=> bm!544635 m!7177370))

(declare-fun m!7177372 () Bool)

(assert (=> bm!544637 m!7177372))

(declare-fun m!7177374 () Bool)

(assert (=> bm!544632 m!7177374))

(assert (=> bm!544615 d!1999391))

(declare-fun d!1999401 () Bool)

(declare-fun c!1161383 () Bool)

(assert (=> d!1999401 (= c!1161383 ((_ is Nil!65037) lt!2369133))))

(declare-fun e!3870616 () (InoxSet Context!11342))

(assert (=> d!1999401 (= (content!12300 lt!2369133) e!3870616)))

(declare-fun b!6375759 () Bool)

(assert (=> b!6375759 (= e!3870616 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375760 () Bool)

(assert (=> b!6375760 (= e!3870616 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) (h!71485 lt!2369133) true) (content!12300 (t!378763 lt!2369133))))))

(assert (= (and d!1999401 c!1161383) b!6375759))

(assert (= (and d!1999401 (not c!1161383)) b!6375760))

(declare-fun m!7177376 () Bool)

(assert (=> b!6375760 m!7177376))

(declare-fun m!7177378 () Bool)

(assert (=> b!6375760 m!7177378))

(assert (=> b!6375593 d!1999401))

(declare-fun d!1999403 () Bool)

(declare-fun res!2622691 () Bool)

(declare-fun e!3870632 () Bool)

(assert (=> d!1999403 (=> res!2622691 e!3870632)))

(assert (=> d!1999403 (= res!2622691 ((_ is EmptyExpr!16287) (regOne!33086 (regOne!33086 r!7292))))))

(assert (=> d!1999403 (= (nullableFct!2226 (regOne!33086 (regOne!33086 r!7292))) e!3870632)))

(declare-fun b!6375778 () Bool)

(declare-fun e!3870634 () Bool)

(assert (=> b!6375778 (= e!3870632 e!3870634)))

(declare-fun res!2622689 () Bool)

(assert (=> b!6375778 (=> (not res!2622689) (not e!3870634))))

(assert (=> b!6375778 (= res!2622689 (and (not ((_ is EmptyLang!16287) (regOne!33086 (regOne!33086 r!7292)))) (not ((_ is ElementMatch!16287) (regOne!33086 (regOne!33086 r!7292))))))))

(declare-fun b!6375779 () Bool)

(declare-fun e!3870633 () Bool)

(assert (=> b!6375779 (= e!3870634 e!3870633)))

(declare-fun res!2622690 () Bool)

(assert (=> b!6375779 (=> res!2622690 e!3870633)))

(assert (=> b!6375779 (= res!2622690 ((_ is Star!16287) (regOne!33086 (regOne!33086 r!7292))))))

(declare-fun b!6375780 () Bool)

(declare-fun e!3870636 () Bool)

(declare-fun call!544648 () Bool)

(assert (=> b!6375780 (= e!3870636 call!544648)))

(declare-fun bm!544642 () Bool)

(declare-fun call!544647 () Bool)

(declare-fun c!1161386 () Bool)

(assert (=> bm!544642 (= call!544647 (nullable!6280 (ite c!1161386 (regOne!33087 (regOne!33086 (regOne!33086 r!7292))) (regOne!33086 (regOne!33086 (regOne!33086 r!7292))))))))

(declare-fun b!6375781 () Bool)

(declare-fun e!3870637 () Bool)

(assert (=> b!6375781 (= e!3870637 e!3870636)))

(declare-fun res!2622692 () Bool)

(assert (=> b!6375781 (= res!2622692 call!544647)))

(assert (=> b!6375781 (=> res!2622692 e!3870636)))

(declare-fun b!6375782 () Bool)

(declare-fun e!3870635 () Bool)

(assert (=> b!6375782 (= e!3870637 e!3870635)))

(declare-fun res!2622688 () Bool)

(assert (=> b!6375782 (= res!2622688 call!544647)))

(assert (=> b!6375782 (=> (not res!2622688) (not e!3870635))))

(declare-fun b!6375783 () Bool)

(assert (=> b!6375783 (= e!3870635 call!544648)))

(declare-fun bm!544643 () Bool)

(assert (=> bm!544643 (= call!544648 (nullable!6280 (ite c!1161386 (regTwo!33087 (regOne!33086 (regOne!33086 r!7292))) (regTwo!33086 (regOne!33086 (regOne!33086 r!7292))))))))

(declare-fun b!6375784 () Bool)

(assert (=> b!6375784 (= e!3870633 e!3870637)))

(assert (=> b!6375784 (= c!1161386 ((_ is Union!16287) (regOne!33086 (regOne!33086 r!7292))))))

(assert (= (and d!1999403 (not res!2622691)) b!6375778))

(assert (= (and b!6375778 res!2622689) b!6375779))

(assert (= (and b!6375779 (not res!2622690)) b!6375784))

(assert (= (and b!6375784 c!1161386) b!6375781))

(assert (= (and b!6375784 (not c!1161386)) b!6375782))

(assert (= (and b!6375781 (not res!2622692)) b!6375780))

(assert (= (and b!6375782 res!2622688) b!6375783))

(assert (= (or b!6375780 b!6375783) bm!544643))

(assert (= (or b!6375781 b!6375782) bm!544642))

(declare-fun m!7177380 () Bool)

(assert (=> bm!544642 m!7177380))

(declare-fun m!7177382 () Bool)

(assert (=> bm!544643 m!7177382))

(assert (=> d!1999209 d!1999403))

(declare-fun d!1999409 () Bool)

(assert (=> d!1999409 (= (isEmpty!37161 s!2326) ((_ is Nil!65038) s!2326))))

(assert (=> bm!544606 d!1999409))

(declare-fun d!1999417 () Bool)

(assert (=> d!1999417 (= (nullable!6280 (h!71484 (exprs!6171 lt!2369039))) (nullableFct!2226 (h!71484 (exprs!6171 lt!2369039))))))

(declare-fun bs!1596406 () Bool)

(assert (= bs!1596406 d!1999417))

(declare-fun m!7177386 () Bool)

(assert (=> bs!1596406 m!7177386))

(assert (=> b!6375009 d!1999417))

(declare-fun b!6375794 () Bool)

(declare-fun e!3870647 () (InoxSet Context!11342))

(assert (=> b!6375794 (= e!3870647 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375795 () Bool)

(declare-fun e!3870648 () Bool)

(assert (=> b!6375795 (= e!3870648 (nullable!6280 (regOne!33086 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))))))

(declare-fun b!6375797 () Bool)

(declare-fun e!3870649 () (InoxSet Context!11342))

(declare-fun e!3870650 () (InoxSet Context!11342))

(assert (=> b!6375797 (= e!3870649 e!3870650)))

(declare-fun c!1161391 () Bool)

(assert (=> b!6375797 (= c!1161391 ((_ is Concat!25132) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))))))

(declare-fun c!1161393 () Bool)

(declare-fun bm!544647 () Bool)

(declare-fun call!544653 () (InoxSet Context!11342))

(declare-fun call!544654 () List!65160)

(assert (=> bm!544647 (= call!544653 (derivationStepZipperDown!1535 (ite c!1161393 (regTwo!33087 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (regOne!33086 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))) (ite c!1161393 (ite c!1161204 lt!2369028 (Context!11343 call!544559)) (Context!11343 call!544654)) (h!71486 s!2326)))))

(declare-fun b!6375798 () Bool)

(declare-fun c!1161392 () Bool)

(assert (=> b!6375798 (= c!1161392 ((_ is Star!16287) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))))))

(assert (=> b!6375798 (= e!3870650 e!3870647)))

(declare-fun bm!544648 () Bool)

(declare-fun call!544657 () List!65160)

(assert (=> bm!544648 (= call!544657 call!544654)))

(declare-fun bm!544649 () Bool)

(declare-fun call!544656 () (InoxSet Context!11342))

(declare-fun call!544652 () (InoxSet Context!11342))

(assert (=> bm!544649 (= call!544656 call!544652)))

(declare-fun b!6375799 () Bool)

(declare-fun e!3870645 () (InoxSet Context!11342))

(declare-fun e!3870646 () (InoxSet Context!11342))

(assert (=> b!6375799 (= e!3870645 e!3870646)))

(assert (=> b!6375799 (= c!1161393 ((_ is Union!16287) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))))))

(declare-fun b!6375800 () Bool)

(assert (=> b!6375800 (= e!3870645 (store ((as const (Array Context!11342 Bool)) false) (ite c!1161204 lt!2369028 (Context!11343 call!544559)) true))))

(declare-fun c!1161390 () Bool)

(declare-fun bm!544650 () Bool)

(assert (=> bm!544650 (= call!544654 ($colon$colon!2148 (exprs!6171 (ite c!1161204 lt!2369028 (Context!11343 call!544559))) (ite (or c!1161390 c!1161391) (regTwo!33086 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))))))

(declare-fun b!6375801 () Bool)

(assert (=> b!6375801 (= e!3870650 call!544656)))

(declare-fun c!1161389 () Bool)

(declare-fun d!1999419 () Bool)

(assert (=> d!1999419 (= c!1161389 (and ((_ is ElementMatch!16287) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (= (c!1161140 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (h!71486 s!2326))))))

(assert (=> d!1999419 (= (derivationStepZipperDown!1535 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))) (ite c!1161204 lt!2369028 (Context!11343 call!544559)) (h!71486 s!2326)) e!3870645)))

(declare-fun b!6375796 () Bool)

(assert (=> b!6375796 (= e!3870649 ((_ map or) call!544653 call!544652))))

(declare-fun b!6375802 () Bool)

(declare-fun call!544655 () (InoxSet Context!11342))

(assert (=> b!6375802 (= e!3870646 ((_ map or) call!544655 call!544653))))

(declare-fun b!6375803 () Bool)

(assert (=> b!6375803 (= e!3870647 call!544656)))

(declare-fun bm!544651 () Bool)

(assert (=> bm!544651 (= call!544652 call!544655)))

(declare-fun bm!544652 () Bool)

(assert (=> bm!544652 (= call!544655 (derivationStepZipperDown!1535 (ite c!1161393 (regOne!33087 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (ite c!1161390 (regTwo!33086 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (ite c!1161391 (regOne!33086 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))) (reg!16616 (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))))) (ite (or c!1161393 c!1161390) (ite c!1161204 lt!2369028 (Context!11343 call!544559)) (Context!11343 call!544657)) (h!71486 s!2326)))))

(declare-fun b!6375804 () Bool)

(assert (=> b!6375804 (= c!1161390 e!3870648)))

(declare-fun res!2622699 () Bool)

(assert (=> b!6375804 (=> (not res!2622699) (not e!3870648))))

(assert (=> b!6375804 (= res!2622699 ((_ is Concat!25132) (ite c!1161204 (regTwo!33087 (reg!16616 (regOne!33086 r!7292))) (regOne!33086 (reg!16616 (regOne!33086 r!7292))))))))

(assert (=> b!6375804 (= e!3870646 e!3870649)))

(assert (= (and d!1999419 c!1161389) b!6375800))

(assert (= (and d!1999419 (not c!1161389)) b!6375799))

(assert (= (and b!6375799 c!1161393) b!6375802))

(assert (= (and b!6375799 (not c!1161393)) b!6375804))

(assert (= (and b!6375804 res!2622699) b!6375795))

(assert (= (and b!6375804 c!1161390) b!6375796))

(assert (= (and b!6375804 (not c!1161390)) b!6375797))

(assert (= (and b!6375797 c!1161391) b!6375801))

(assert (= (and b!6375797 (not c!1161391)) b!6375798))

(assert (= (and b!6375798 c!1161392) b!6375803))

(assert (= (and b!6375798 (not c!1161392)) b!6375794))

(assert (= (or b!6375801 b!6375803) bm!544648))

(assert (= (or b!6375801 b!6375803) bm!544649))

(assert (= (or b!6375796 bm!544648) bm!544650))

(assert (= (or b!6375796 bm!544649) bm!544651))

(assert (= (or b!6375802 b!6375796) bm!544647))

(assert (= (or b!6375802 bm!544651) bm!544652))

(declare-fun m!7177392 () Bool)

(assert (=> b!6375795 m!7177392))

(declare-fun m!7177394 () Bool)

(assert (=> b!6375800 m!7177394))

(declare-fun m!7177398 () Bool)

(assert (=> bm!544650 m!7177398))

(declare-fun m!7177400 () Bool)

(assert (=> bm!544652 m!7177400))

(declare-fun m!7177402 () Bool)

(assert (=> bm!544647 m!7177402))

(assert (=> bm!544552 d!1999419))

(declare-fun d!1999423 () Bool)

(assert (=> d!1999423 (= (Exists!3357 (ite c!1161304 lambda!351497 lambda!351498)) (choose!47398 (ite c!1161304 lambda!351497 lambda!351498)))))

(declare-fun bs!1596407 () Bool)

(assert (= bs!1596407 d!1999423))

(declare-fun m!7177404 () Bool)

(assert (=> bs!1596407 m!7177404))

(assert (=> bm!544602 d!1999423))

(declare-fun b!6375819 () Bool)

(declare-fun res!2622710 () Bool)

(declare-fun e!3870664 () Bool)

(assert (=> b!6375819 (=> (not res!2622710) (not e!3870664))))

(declare-fun call!544660 () Bool)

(assert (=> b!6375819 (= res!2622710 call!544660)))

(declare-fun e!3870662 () Bool)

(assert (=> b!6375819 (= e!3870662 e!3870664)))

(declare-fun c!1161397 () Bool)

(declare-fun call!544661 () Bool)

(declare-fun bm!544654 () Bool)

(declare-fun c!1161398 () Bool)

(assert (=> bm!544654 (= call!544661 (validRegex!8023 (ite c!1161398 (reg!16616 lt!2369136) (ite c!1161397 (regOne!33087 lt!2369136) (regOne!33086 lt!2369136)))))))

(declare-fun b!6375820 () Bool)

(declare-fun e!3870660 () Bool)

(declare-fun e!3870658 () Bool)

(assert (=> b!6375820 (= e!3870660 e!3870658)))

(declare-fun res!2622709 () Bool)

(assert (=> b!6375820 (= res!2622709 (not (nullable!6280 (reg!16616 lt!2369136))))))

(assert (=> b!6375820 (=> (not res!2622709) (not e!3870658))))

(declare-fun b!6375821 () Bool)

(declare-fun e!3870661 () Bool)

(declare-fun e!3870663 () Bool)

(assert (=> b!6375821 (= e!3870661 e!3870663)))

(declare-fun res!2622712 () Bool)

(assert (=> b!6375821 (=> (not res!2622712) (not e!3870663))))

(assert (=> b!6375821 (= res!2622712 call!544660)))

(declare-fun b!6375822 () Bool)

(declare-fun call!544659 () Bool)

(assert (=> b!6375822 (= e!3870663 call!544659)))

(declare-fun b!6375823 () Bool)

(assert (=> b!6375823 (= e!3870664 call!544659)))

(declare-fun bm!544655 () Bool)

(assert (=> bm!544655 (= call!544660 call!544661)))

(declare-fun b!6375824 () Bool)

(assert (=> b!6375824 (= e!3870660 e!3870662)))

(assert (=> b!6375824 (= c!1161397 ((_ is Union!16287) lt!2369136))))

(declare-fun b!6375825 () Bool)

(declare-fun e!3870659 () Bool)

(assert (=> b!6375825 (= e!3870659 e!3870660)))

(assert (=> b!6375825 (= c!1161398 ((_ is Star!16287) lt!2369136))))

(declare-fun b!6375826 () Bool)

(declare-fun res!2622711 () Bool)

(assert (=> b!6375826 (=> res!2622711 e!3870661)))

(assert (=> b!6375826 (= res!2622711 (not ((_ is Concat!25132) lt!2369136)))))

(assert (=> b!6375826 (= e!3870662 e!3870661)))

(declare-fun bm!544656 () Bool)

(assert (=> bm!544656 (= call!544659 (validRegex!8023 (ite c!1161397 (regTwo!33087 lt!2369136) (regTwo!33086 lt!2369136))))))

(declare-fun b!6375827 () Bool)

(assert (=> b!6375827 (= e!3870658 call!544661)))

(declare-fun d!1999425 () Bool)

(declare-fun res!2622708 () Bool)

(assert (=> d!1999425 (=> res!2622708 e!3870659)))

(assert (=> d!1999425 (= res!2622708 ((_ is ElementMatch!16287) lt!2369136))))

(assert (=> d!1999425 (= (validRegex!8023 lt!2369136) e!3870659)))

(assert (= (and d!1999425 (not res!2622708)) b!6375825))

(assert (= (and b!6375825 c!1161398) b!6375820))

(assert (= (and b!6375825 (not c!1161398)) b!6375824))

(assert (= (and b!6375820 res!2622709) b!6375827))

(assert (= (and b!6375824 c!1161397) b!6375819))

(assert (= (and b!6375824 (not c!1161397)) b!6375826))

(assert (= (and b!6375819 res!2622710) b!6375823))

(assert (= (and b!6375826 (not res!2622711)) b!6375821))

(assert (= (and b!6375821 res!2622712) b!6375822))

(assert (= (or b!6375823 b!6375822) bm!544656))

(assert (= (or b!6375819 b!6375821) bm!544655))

(assert (= (or b!6375827 bm!544655) bm!544654))

(declare-fun m!7177406 () Bool)

(assert (=> bm!544654 m!7177406))

(declare-fun m!7177408 () Bool)

(assert (=> b!6375820 m!7177408))

(declare-fun m!7177410 () Bool)

(assert (=> bm!544656 m!7177410))

(assert (=> d!1999345 d!1999425))

(declare-fun d!1999427 () Bool)

(declare-fun res!2622722 () Bool)

(declare-fun e!3870676 () Bool)

(assert (=> d!1999427 (=> res!2622722 e!3870676)))

(assert (=> d!1999427 (= res!2622722 ((_ is Nil!65036) (unfocusZipperList!1708 zl!343)))))

(assert (=> d!1999427 (= (forall!15465 (unfocusZipperList!1708 zl!343) lambda!351511) e!3870676)))

(declare-fun b!6375841 () Bool)

(declare-fun e!3870677 () Bool)

(assert (=> b!6375841 (= e!3870676 e!3870677)))

(declare-fun res!2622723 () Bool)

(assert (=> b!6375841 (=> (not res!2622723) (not e!3870677))))

(declare-fun dynLambda!25804 (Int Regex!16287) Bool)

(assert (=> b!6375841 (= res!2622723 (dynLambda!25804 lambda!351511 (h!71484 (unfocusZipperList!1708 zl!343))))))

(declare-fun b!6375842 () Bool)

(assert (=> b!6375842 (= e!3870677 (forall!15465 (t!378762 (unfocusZipperList!1708 zl!343)) lambda!351511))))

(assert (= (and d!1999427 (not res!2622722)) b!6375841))

(assert (= (and b!6375841 res!2622723) b!6375842))

(declare-fun b_lambda!242279 () Bool)

(assert (=> (not b_lambda!242279) (not b!6375841)))

(declare-fun m!7177426 () Bool)

(assert (=> b!6375841 m!7177426))

(declare-fun m!7177430 () Bool)

(assert (=> b!6375842 m!7177430))

(assert (=> d!1999345 d!1999427))

(declare-fun b!6375843 () Bool)

(declare-fun res!2622730 () Bool)

(declare-fun e!3870683 () Bool)

(assert (=> b!6375843 (=> (not res!2622730) (not e!3870683))))

(declare-fun call!544665 () Bool)

(assert (=> b!6375843 (= res!2622730 (not call!544665))))

(declare-fun b!6375844 () Bool)

(declare-fun e!3870684 () Bool)

(declare-fun lt!2369143 () Bool)

(assert (=> b!6375844 (= e!3870684 (= lt!2369143 call!544665))))

(declare-fun b!6375845 () Bool)

(declare-fun e!3870681 () Bool)

(assert (=> b!6375845 (= e!3870684 e!3870681)))

(declare-fun c!1161403 () Bool)

(assert (=> b!6375845 (= c!1161403 ((_ is EmptyLang!16287) (regTwo!33086 r!7292)))))

(declare-fun b!6375846 () Bool)

(declare-fun e!3870678 () Bool)

(assert (=> b!6375846 (= e!3870678 (nullable!6280 (regTwo!33086 r!7292)))))

(declare-fun b!6375847 () Bool)

(declare-fun e!3870682 () Bool)

(declare-fun e!3870680 () Bool)

(assert (=> b!6375847 (= e!3870682 e!3870680)))

(declare-fun res!2622726 () Bool)

(assert (=> b!6375847 (=> (not res!2622726) (not e!3870680))))

(assert (=> b!6375847 (= res!2622726 (not lt!2369143))))

(declare-fun b!6375848 () Bool)

(declare-fun res!2622731 () Bool)

(assert (=> b!6375848 (=> res!2622731 e!3870682)))

(assert (=> b!6375848 (= res!2622731 e!3870683)))

(declare-fun res!2622725 () Bool)

(assert (=> b!6375848 (=> (not res!2622725) (not e!3870683))))

(assert (=> b!6375848 (= res!2622725 lt!2369143)))

(declare-fun bm!544660 () Bool)

(assert (=> bm!544660 (= call!544665 (isEmpty!37161 s!2326))))

(declare-fun b!6375849 () Bool)

(declare-fun res!2622728 () Bool)

(declare-fun e!3870679 () Bool)

(assert (=> b!6375849 (=> res!2622728 e!3870679)))

(assert (=> b!6375849 (= res!2622728 (not (isEmpty!37161 (tail!12151 s!2326))))))

(declare-fun d!1999431 () Bool)

(assert (=> d!1999431 e!3870684))

(declare-fun c!1161401 () Bool)

(assert (=> d!1999431 (= c!1161401 ((_ is EmptyExpr!16287) (regTwo!33086 r!7292)))))

(assert (=> d!1999431 (= lt!2369143 e!3870678)))

(declare-fun c!1161402 () Bool)

(assert (=> d!1999431 (= c!1161402 (isEmpty!37161 s!2326))))

(assert (=> d!1999431 (validRegex!8023 (regTwo!33086 r!7292))))

(assert (=> d!1999431 (= (matchR!8470 (regTwo!33086 r!7292) s!2326) lt!2369143)))

(declare-fun b!6375850 () Bool)

(declare-fun res!2622729 () Bool)

(assert (=> b!6375850 (=> (not res!2622729) (not e!3870683))))

(assert (=> b!6375850 (= res!2622729 (isEmpty!37161 (tail!12151 s!2326)))))

(declare-fun b!6375851 () Bool)

(assert (=> b!6375851 (= e!3870679 (not (= (head!13066 s!2326) (c!1161140 (regTwo!33086 r!7292)))))))

(declare-fun b!6375852 () Bool)

(declare-fun res!2622727 () Bool)

(assert (=> b!6375852 (=> res!2622727 e!3870682)))

(assert (=> b!6375852 (= res!2622727 (not ((_ is ElementMatch!16287) (regTwo!33086 r!7292))))))

(assert (=> b!6375852 (= e!3870681 e!3870682)))

(declare-fun b!6375853 () Bool)

(assert (=> b!6375853 (= e!3870678 (matchR!8470 (derivativeStep!4991 (regTwo!33086 r!7292) (head!13066 s!2326)) (tail!12151 s!2326)))))

(declare-fun b!6375854 () Bool)

(assert (=> b!6375854 (= e!3870680 e!3870679)))

(declare-fun res!2622724 () Bool)

(assert (=> b!6375854 (=> res!2622724 e!3870679)))

(assert (=> b!6375854 (= res!2622724 call!544665)))

(declare-fun b!6375855 () Bool)

(assert (=> b!6375855 (= e!3870681 (not lt!2369143))))

(declare-fun b!6375856 () Bool)

(assert (=> b!6375856 (= e!3870683 (= (head!13066 s!2326) (c!1161140 (regTwo!33086 r!7292))))))

(assert (= (and d!1999431 c!1161402) b!6375846))

(assert (= (and d!1999431 (not c!1161402)) b!6375853))

(assert (= (and d!1999431 c!1161401) b!6375844))

(assert (= (and d!1999431 (not c!1161401)) b!6375845))

(assert (= (and b!6375845 c!1161403) b!6375855))

(assert (= (and b!6375845 (not c!1161403)) b!6375852))

(assert (= (and b!6375852 (not res!2622727)) b!6375848))

(assert (= (and b!6375848 res!2622725) b!6375843))

(assert (= (and b!6375843 res!2622730) b!6375850))

(assert (= (and b!6375850 res!2622729) b!6375856))

(assert (= (and b!6375848 (not res!2622731)) b!6375847))

(assert (= (and b!6375847 res!2622726) b!6375854))

(assert (= (and b!6375854 (not res!2622724)) b!6375849))

(assert (= (and b!6375849 (not res!2622728)) b!6375851))

(assert (= (or b!6375844 b!6375843 b!6375854) bm!544660))

(assert (=> b!6375851 m!7176810))

(assert (=> b!6375853 m!7176810))

(assert (=> b!6375853 m!7176810))

(declare-fun m!7177438 () Bool)

(assert (=> b!6375853 m!7177438))

(assert (=> b!6375853 m!7176814))

(assert (=> b!6375853 m!7177438))

(assert (=> b!6375853 m!7176814))

(declare-fun m!7177440 () Bool)

(assert (=> b!6375853 m!7177440))

(assert (=> b!6375849 m!7176814))

(assert (=> b!6375849 m!7176814))

(assert (=> b!6375849 m!7177156))

(assert (=> bm!544660 m!7176806))

(declare-fun m!7177442 () Bool)

(assert (=> b!6375846 m!7177442))

(assert (=> b!6375850 m!7176814))

(assert (=> b!6375850 m!7176814))

(assert (=> b!6375850 m!7177156))

(assert (=> d!1999431 m!7176806))

(declare-fun m!7177444 () Bool)

(assert (=> d!1999431 m!7177444))

(assert (=> b!6375856 m!7176810))

(assert (=> b!6375537 d!1999431))

(declare-fun d!1999439 () Bool)

(assert (=> d!1999439 (= (isEmpty!37161 (t!378764 s!2326)) ((_ is Nil!65038) (t!378764 s!2326)))))

(assert (=> d!1999205 d!1999439))

(declare-fun b!6375858 () Bool)

(declare-fun res!2622735 () Bool)

(declare-fun e!3870692 () Bool)

(assert (=> b!6375858 (=> (not res!2622735) (not e!3870692))))

(declare-fun call!544667 () Bool)

(assert (=> b!6375858 (= res!2622735 call!544667)))

(declare-fun e!3870690 () Bool)

(assert (=> b!6375858 (= e!3870690 e!3870692)))

(declare-fun c!1161404 () Bool)

(declare-fun bm!544661 () Bool)

(declare-fun c!1161405 () Bool)

(declare-fun call!544668 () Bool)

(assert (=> bm!544661 (= call!544668 (validRegex!8023 (ite c!1161405 (reg!16616 lt!2369099) (ite c!1161404 (regOne!33087 lt!2369099) (regOne!33086 lt!2369099)))))))

(declare-fun b!6375859 () Bool)

(declare-fun e!3870688 () Bool)

(declare-fun e!3870686 () Bool)

(assert (=> b!6375859 (= e!3870688 e!3870686)))

(declare-fun res!2622734 () Bool)

(assert (=> b!6375859 (= res!2622734 (not (nullable!6280 (reg!16616 lt!2369099))))))

(assert (=> b!6375859 (=> (not res!2622734) (not e!3870686))))

(declare-fun b!6375860 () Bool)

(declare-fun e!3870689 () Bool)

(declare-fun e!3870691 () Bool)

(assert (=> b!6375860 (= e!3870689 e!3870691)))

(declare-fun res!2622737 () Bool)

(assert (=> b!6375860 (=> (not res!2622737) (not e!3870691))))

(assert (=> b!6375860 (= res!2622737 call!544667)))

(declare-fun b!6375861 () Bool)

(declare-fun call!544666 () Bool)

(assert (=> b!6375861 (= e!3870691 call!544666)))

(declare-fun b!6375862 () Bool)

(assert (=> b!6375862 (= e!3870692 call!544666)))

(declare-fun bm!544662 () Bool)

(assert (=> bm!544662 (= call!544667 call!544668)))

(declare-fun b!6375863 () Bool)

(assert (=> b!6375863 (= e!3870688 e!3870690)))

(assert (=> b!6375863 (= c!1161404 ((_ is Union!16287) lt!2369099))))

(declare-fun b!6375864 () Bool)

(declare-fun e!3870687 () Bool)

(assert (=> b!6375864 (= e!3870687 e!3870688)))

(assert (=> b!6375864 (= c!1161405 ((_ is Star!16287) lt!2369099))))

(declare-fun b!6375865 () Bool)

(declare-fun res!2622736 () Bool)

(assert (=> b!6375865 (=> res!2622736 e!3870689)))

(assert (=> b!6375865 (= res!2622736 (not ((_ is Concat!25132) lt!2369099)))))

(assert (=> b!6375865 (= e!3870690 e!3870689)))

(declare-fun bm!544663 () Bool)

(assert (=> bm!544663 (= call!544666 (validRegex!8023 (ite c!1161404 (regTwo!33087 lt!2369099) (regTwo!33086 lt!2369099))))))

(declare-fun b!6375866 () Bool)

(assert (=> b!6375866 (= e!3870686 call!544668)))

(declare-fun d!1999441 () Bool)

(declare-fun res!2622733 () Bool)

(assert (=> d!1999441 (=> res!2622733 e!3870687)))

(assert (=> d!1999441 (= res!2622733 ((_ is ElementMatch!16287) lt!2369099))))

(assert (=> d!1999441 (= (validRegex!8023 lt!2369099) e!3870687)))

(assert (= (and d!1999441 (not res!2622733)) b!6375864))

(assert (= (and b!6375864 c!1161405) b!6375859))

(assert (= (and b!6375864 (not c!1161405)) b!6375863))

(assert (= (and b!6375859 res!2622734) b!6375866))

(assert (= (and b!6375863 c!1161404) b!6375858))

(assert (= (and b!6375863 (not c!1161404)) b!6375865))

(assert (= (and b!6375858 res!2622735) b!6375862))

(assert (= (and b!6375865 (not res!2622736)) b!6375860))

(assert (= (and b!6375860 res!2622737) b!6375861))

(assert (= (or b!6375862 b!6375861) bm!544663))

(assert (= (or b!6375858 b!6375860) bm!544662))

(assert (= (or b!6375866 bm!544662) bm!544661))

(declare-fun m!7177446 () Bool)

(assert (=> bm!544661 m!7177446))

(declare-fun m!7177448 () Bool)

(assert (=> b!6375859 m!7177448))

(declare-fun m!7177450 () Bool)

(assert (=> bm!544663 m!7177450))

(assert (=> d!1999249 d!1999441))

(declare-fun d!1999445 () Bool)

(declare-fun res!2622739 () Bool)

(declare-fun e!3870699 () Bool)

(assert (=> d!1999445 (=> res!2622739 e!3870699)))

(assert (=> d!1999445 (= res!2622739 ((_ is Nil!65036) (exprs!6171 (h!71485 zl!343))))))

(assert (=> d!1999445 (= (forall!15465 (exprs!6171 (h!71485 zl!343)) lambda!351486) e!3870699)))

(declare-fun b!6375878 () Bool)

(declare-fun e!3870700 () Bool)

(assert (=> b!6375878 (= e!3870699 e!3870700)))

(declare-fun res!2622740 () Bool)

(assert (=> b!6375878 (=> (not res!2622740) (not e!3870700))))

(assert (=> b!6375878 (= res!2622740 (dynLambda!25804 lambda!351486 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6375879 () Bool)

(assert (=> b!6375879 (= e!3870700 (forall!15465 (t!378762 (exprs!6171 (h!71485 zl!343))) lambda!351486))))

(assert (= (and d!1999445 (not res!2622739)) b!6375878))

(assert (= (and b!6375878 res!2622740) b!6375879))

(declare-fun b_lambda!242281 () Bool)

(assert (=> (not b_lambda!242281) (not b!6375878)))

(declare-fun m!7177452 () Bool)

(assert (=> b!6375878 m!7177452))

(declare-fun m!7177454 () Bool)

(assert (=> b!6375879 m!7177454))

(assert (=> d!1999249 d!1999445))

(declare-fun b!6375895 () Bool)

(declare-fun e!3870709 () Bool)

(declare-fun lt!2369146 () List!65162)

(assert (=> b!6375895 (= e!3870709 (or (not (= (_2!36569 (get!22515 lt!2369120)) Nil!65038)) (= lt!2369146 (_1!36569 (get!22515 lt!2369120)))))))

(declare-fun b!6375894 () Bool)

(declare-fun res!2622750 () Bool)

(assert (=> b!6375894 (=> (not res!2622750) (not e!3870709))))

(declare-fun size!40357 (List!65162) Int)

(assert (=> b!6375894 (= res!2622750 (= (size!40357 lt!2369146) (+ (size!40357 (_1!36569 (get!22515 lt!2369120))) (size!40357 (_2!36569 (get!22515 lt!2369120))))))))

(declare-fun b!6375892 () Bool)

(declare-fun e!3870710 () List!65162)

(assert (=> b!6375892 (= e!3870710 (_2!36569 (get!22515 lt!2369120)))))

(declare-fun b!6375893 () Bool)

(assert (=> b!6375893 (= e!3870710 (Cons!65038 (h!71486 (_1!36569 (get!22515 lt!2369120))) (++!14356 (t!378764 (_1!36569 (get!22515 lt!2369120))) (_2!36569 (get!22515 lt!2369120)))))))

(declare-fun d!1999447 () Bool)

(assert (=> d!1999447 e!3870709))

(declare-fun res!2622749 () Bool)

(assert (=> d!1999447 (=> (not res!2622749) (not e!3870709))))

(declare-fun content!12301 (List!65162) (InoxSet C!32844))

(assert (=> d!1999447 (= res!2622749 (= (content!12301 lt!2369146) ((_ map or) (content!12301 (_1!36569 (get!22515 lt!2369120))) (content!12301 (_2!36569 (get!22515 lt!2369120))))))))

(assert (=> d!1999447 (= lt!2369146 e!3870710)))

(declare-fun c!1161413 () Bool)

(assert (=> d!1999447 (= c!1161413 ((_ is Nil!65038) (_1!36569 (get!22515 lt!2369120))))))

(assert (=> d!1999447 (= (++!14356 (_1!36569 (get!22515 lt!2369120)) (_2!36569 (get!22515 lt!2369120))) lt!2369146)))

(assert (= (and d!1999447 c!1161413) b!6375892))

(assert (= (and d!1999447 (not c!1161413)) b!6375893))

(assert (= (and d!1999447 res!2622749) b!6375894))

(assert (= (and b!6375894 res!2622750) b!6375895))

(declare-fun m!7177464 () Bool)

(assert (=> b!6375894 m!7177464))

(declare-fun m!7177466 () Bool)

(assert (=> b!6375894 m!7177466))

(declare-fun m!7177468 () Bool)

(assert (=> b!6375894 m!7177468))

(declare-fun m!7177470 () Bool)

(assert (=> b!6375893 m!7177470))

(declare-fun m!7177472 () Bool)

(assert (=> d!1999447 m!7177472))

(declare-fun m!7177474 () Bool)

(assert (=> d!1999447 m!7177474))

(declare-fun m!7177476 () Bool)

(assert (=> d!1999447 m!7177476))

(assert (=> b!6375538 d!1999447))

(declare-fun d!1999451 () Bool)

(assert (=> d!1999451 (= (get!22515 lt!2369120) (v!52346 lt!2369120))))

(assert (=> b!6375538 d!1999451))

(declare-fun d!1999453 () Bool)

(declare-fun lambda!351527 () Int)

(declare-fun exists!2583 ((InoxSet Context!11342) Int) Bool)

(assert (=> d!1999453 (= (nullableZipper!2053 ((_ map or) lt!2369020 lt!2369036)) (exists!2583 ((_ map or) lt!2369020 lt!2369036) lambda!351527))))

(declare-fun bs!1596409 () Bool)

(assert (= bs!1596409 d!1999453))

(declare-fun m!7177488 () Bool)

(assert (=> bs!1596409 m!7177488))

(assert (=> b!6375563 d!1999453))

(assert (=> bs!1596362 d!1999237))

(declare-fun d!1999463 () Bool)

(assert (=> d!1999463 (= (nullable!6280 (h!71484 (exprs!6171 lt!2369038))) (nullableFct!2226 (h!71484 (exprs!6171 lt!2369038))))))

(declare-fun bs!1596410 () Bool)

(assert (= bs!1596410 d!1999463))

(declare-fun m!7177490 () Bool)

(assert (=> bs!1596410 m!7177490))

(assert (=> b!6375207 d!1999463))

(declare-fun d!1999465 () Bool)

(assert (=> d!1999465 (= (Exists!3357 lambda!351507) (choose!47398 lambda!351507))))

(declare-fun bs!1596411 () Bool)

(assert (= bs!1596411 d!1999465))

(declare-fun m!7177492 () Bool)

(assert (=> bs!1596411 m!7177492))

(assert (=> d!1999317 d!1999465))

(declare-fun d!1999467 () Bool)

(assert (=> d!1999467 (= (Exists!3357 lambda!351508) (choose!47398 lambda!351508))))

(declare-fun bs!1596412 () Bool)

(assert (= bs!1596412 d!1999467))

(declare-fun m!7177494 () Bool)

(assert (=> bs!1596412 m!7177494))

(assert (=> d!1999317 d!1999467))

(declare-fun bs!1596413 () Bool)

(declare-fun d!1999469 () Bool)

(assert (= bs!1596413 (and d!1999469 b!6374910)))

(declare-fun lambda!351532 () Int)

(assert (=> bs!1596413 (= lambda!351532 lambda!351449)))

(declare-fun bs!1596414 () Bool)

(assert (= bs!1596414 (and d!1999469 d!1999315)))

(assert (=> bs!1596414 (= lambda!351532 lambda!351502)))

(declare-fun bs!1596415 () Bool)

(assert (= bs!1596415 (and d!1999469 d!1999317)))

(assert (=> bs!1596415 (= lambda!351532 lambda!351507)))

(declare-fun bs!1596416 () Bool)

(assert (= bs!1596416 (and d!1999469 b!6375426)))

(assert (=> bs!1596416 (not (= lambda!351532 lambda!351498))))

(assert (=> bs!1596415 (not (= lambda!351532 lambda!351508))))

(assert (=> bs!1596413 (not (= lambda!351532 lambda!351450))))

(declare-fun bs!1596417 () Bool)

(assert (= bs!1596417 (and d!1999469 b!6375422)))

(assert (=> bs!1596417 (not (= lambda!351532 lambda!351497))))

(assert (=> d!1999469 true))

(assert (=> d!1999469 true))

(assert (=> d!1999469 true))

(declare-fun lambda!351533 () Int)

(assert (=> bs!1596413 (not (= lambda!351533 lambda!351449))))

(assert (=> bs!1596414 (not (= lambda!351533 lambda!351502))))

(assert (=> bs!1596415 (not (= lambda!351533 lambda!351507))))

(assert (=> bs!1596416 (= lambda!351533 lambda!351498)))

(assert (=> bs!1596415 (= lambda!351533 lambda!351508)))

(assert (=> bs!1596413 (= lambda!351533 lambda!351450)))

(assert (=> bs!1596417 (not (= lambda!351533 lambda!351497))))

(declare-fun bs!1596418 () Bool)

(assert (= bs!1596418 d!1999469))

(assert (=> bs!1596418 (not (= lambda!351533 lambda!351532))))

(assert (=> d!1999469 true))

(assert (=> d!1999469 true))

(assert (=> d!1999469 true))

(assert (=> d!1999469 (= (Exists!3357 lambda!351532) (Exists!3357 lambda!351533))))

(assert (=> d!1999469 true))

(declare-fun _$90!2238 () Unit!158479)

(assert (=> d!1999469 (= (choose!47400 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326) _$90!2238)))

(declare-fun m!7177510 () Bool)

(assert (=> bs!1596418 m!7177510))

(declare-fun m!7177512 () Bool)

(assert (=> bs!1596418 m!7177512))

(assert (=> d!1999317 d!1999469))

(declare-fun b!6375940 () Bool)

(declare-fun res!2622778 () Bool)

(declare-fun e!3870749 () Bool)

(assert (=> b!6375940 (=> (not res!2622778) (not e!3870749))))

(declare-fun call!544682 () Bool)

(assert (=> b!6375940 (= res!2622778 call!544682)))

(declare-fun e!3870747 () Bool)

(assert (=> b!6375940 (= e!3870747 e!3870749)))

(declare-fun c!1161424 () Bool)

(declare-fun call!544683 () Bool)

(declare-fun bm!544676 () Bool)

(declare-fun c!1161425 () Bool)

(assert (=> bm!544676 (= call!544683 (validRegex!8023 (ite c!1161425 (reg!16616 (regOne!33086 r!7292)) (ite c!1161424 (regOne!33087 (regOne!33086 r!7292)) (regOne!33086 (regOne!33086 r!7292))))))))

(declare-fun b!6375941 () Bool)

(declare-fun e!3870745 () Bool)

(declare-fun e!3870743 () Bool)

(assert (=> b!6375941 (= e!3870745 e!3870743)))

(declare-fun res!2622777 () Bool)

(assert (=> b!6375941 (= res!2622777 (not (nullable!6280 (reg!16616 (regOne!33086 r!7292)))))))

(assert (=> b!6375941 (=> (not res!2622777) (not e!3870743))))

(declare-fun b!6375942 () Bool)

(declare-fun e!3870746 () Bool)

(declare-fun e!3870748 () Bool)

(assert (=> b!6375942 (= e!3870746 e!3870748)))

(declare-fun res!2622780 () Bool)

(assert (=> b!6375942 (=> (not res!2622780) (not e!3870748))))

(assert (=> b!6375942 (= res!2622780 call!544682)))

(declare-fun b!6375943 () Bool)

(declare-fun call!544681 () Bool)

(assert (=> b!6375943 (= e!3870748 call!544681)))

(declare-fun b!6375944 () Bool)

(assert (=> b!6375944 (= e!3870749 call!544681)))

(declare-fun bm!544677 () Bool)

(assert (=> bm!544677 (= call!544682 call!544683)))

(declare-fun b!6375945 () Bool)

(assert (=> b!6375945 (= e!3870745 e!3870747)))

(assert (=> b!6375945 (= c!1161424 ((_ is Union!16287) (regOne!33086 r!7292)))))

(declare-fun b!6375946 () Bool)

(declare-fun e!3870744 () Bool)

(assert (=> b!6375946 (= e!3870744 e!3870745)))

(assert (=> b!6375946 (= c!1161425 ((_ is Star!16287) (regOne!33086 r!7292)))))

(declare-fun b!6375947 () Bool)

(declare-fun res!2622779 () Bool)

(assert (=> b!6375947 (=> res!2622779 e!3870746)))

(assert (=> b!6375947 (= res!2622779 (not ((_ is Concat!25132) (regOne!33086 r!7292))))))

(assert (=> b!6375947 (= e!3870747 e!3870746)))

(declare-fun bm!544678 () Bool)

(assert (=> bm!544678 (= call!544681 (validRegex!8023 (ite c!1161424 (regTwo!33087 (regOne!33086 r!7292)) (regTwo!33086 (regOne!33086 r!7292)))))))

(declare-fun b!6375948 () Bool)

(assert (=> b!6375948 (= e!3870743 call!544683)))

(declare-fun d!1999477 () Bool)

(declare-fun res!2622776 () Bool)

(assert (=> d!1999477 (=> res!2622776 e!3870744)))

(assert (=> d!1999477 (= res!2622776 ((_ is ElementMatch!16287) (regOne!33086 r!7292)))))

(assert (=> d!1999477 (= (validRegex!8023 (regOne!33086 r!7292)) e!3870744)))

(assert (= (and d!1999477 (not res!2622776)) b!6375946))

(assert (= (and b!6375946 c!1161425) b!6375941))

(assert (= (and b!6375946 (not c!1161425)) b!6375945))

(assert (= (and b!6375941 res!2622777) b!6375948))

(assert (= (and b!6375945 c!1161424) b!6375940))

(assert (= (and b!6375945 (not c!1161424)) b!6375947))

(assert (= (and b!6375940 res!2622778) b!6375944))

(assert (= (and b!6375947 (not res!2622779)) b!6375942))

(assert (= (and b!6375942 res!2622780) b!6375943))

(assert (= (or b!6375944 b!6375943) bm!544678))

(assert (= (or b!6375940 b!6375942) bm!544677))

(assert (= (or b!6375948 bm!544677) bm!544676))

(declare-fun m!7177514 () Bool)

(assert (=> bm!544676 m!7177514))

(declare-fun m!7177516 () Bool)

(assert (=> b!6375941 m!7177516))

(declare-fun m!7177518 () Bool)

(assert (=> bm!544678 m!7177518))

(assert (=> d!1999317 d!1999477))

(declare-fun b!6375950 () Bool)

(declare-fun e!3870752 () (InoxSet Context!11342))

(assert (=> b!6375950 (= e!3870752 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375951 () Bool)

(declare-fun e!3870751 () (InoxSet Context!11342))

(assert (=> b!6375951 (= e!3870751 e!3870752)))

(declare-fun c!1161427 () Bool)

(assert (=> b!6375951 (= c!1161427 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))))

(declare-fun call!544684 () (InoxSet Context!11342))

(declare-fun b!6375952 () Bool)

(assert (=> b!6375952 (= e!3870751 ((_ map or) call!544684 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))) (h!71486 s!2326))))))

(declare-fun b!6375953 () Bool)

(assert (=> b!6375953 (= e!3870752 call!544684)))

(declare-fun bm!544679 () Bool)

(assert (=> bm!544679 (= call!544684 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))) (h!71486 s!2326)))))

(declare-fun d!1999479 () Bool)

(declare-fun c!1161426 () Bool)

(declare-fun e!3870750 () Bool)

(assert (=> d!1999479 (= c!1161426 e!3870750)))

(declare-fun res!2622781 () Bool)

(assert (=> d!1999479 (=> (not res!2622781) (not e!3870750))))

(assert (=> d!1999479 (= res!2622781 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))))

(assert (=> d!1999479 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326)) e!3870751)))

(declare-fun b!6375949 () Bool)

(assert (=> b!6375949 (= e!3870750 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))))))

(assert (= (and d!1999479 res!2622781) b!6375949))

(assert (= (and d!1999479 c!1161426) b!6375952))

(assert (= (and d!1999479 (not c!1161426)) b!6375951))

(assert (= (and b!6375951 c!1161427) b!6375953))

(assert (= (and b!6375951 (not c!1161427)) b!6375950))

(assert (= (or b!6375952 b!6375953) bm!544679))

(declare-fun m!7177520 () Bool)

(assert (=> b!6375952 m!7177520))

(declare-fun m!7177522 () Bool)

(assert (=> bm!544679 m!7177522))

(declare-fun m!7177524 () Bool)

(assert (=> b!6375949 m!7177524))

(assert (=> b!6375573 d!1999479))

(declare-fun b!6375955 () Bool)

(declare-fun e!3870755 () (InoxSet Context!11342))

(assert (=> b!6375955 (= e!3870755 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6375956 () Bool)

(declare-fun e!3870754 () (InoxSet Context!11342))

(assert (=> b!6375956 (= e!3870754 e!3870755)))

(declare-fun c!1161429 () Bool)

(assert (=> b!6375956 (= c!1161429 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040))))))))

(declare-fun call!544685 () (InoxSet Context!11342))

(declare-fun b!6375957 () Bool)

(assert (=> b!6375957 (= e!3870754 ((_ map or) call!544685 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040)))))) (h!71486 s!2326))))))

(declare-fun b!6375958 () Bool)

(assert (=> b!6375958 (= e!3870755 call!544685)))

(declare-fun bm!544680 () Bool)

(assert (=> bm!544680 (= call!544685 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040)))))) (h!71486 s!2326)))))

(declare-fun d!1999481 () Bool)

(declare-fun c!1161428 () Bool)

(declare-fun e!3870753 () Bool)

(assert (=> d!1999481 (= c!1161428 e!3870753)))

(declare-fun res!2622782 () Bool)

(assert (=> d!1999481 (=> (not res!2622782) (not e!3870753))))

(assert (=> d!1999481 (= res!2622782 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040))))))))

(assert (=> d!1999481 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (h!71486 s!2326)) e!3870754)))

(declare-fun b!6375954 () Bool)

(assert (=> b!6375954 (= e!3870753 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040)))))))))

(assert (= (and d!1999481 res!2622782) b!6375954))

(assert (= (and d!1999481 c!1161428) b!6375957))

(assert (= (and d!1999481 (not c!1161428)) b!6375956))

(assert (= (and b!6375956 c!1161429) b!6375958))

(assert (= (and b!6375956 (not c!1161429)) b!6375955))

(assert (= (or b!6375957 b!6375958) bm!544680))

(declare-fun m!7177528 () Bool)

(assert (=> b!6375957 m!7177528))

(declare-fun m!7177532 () Bool)

(assert (=> bm!544680 m!7177532))

(declare-fun m!7177534 () Bool)

(assert (=> b!6375954 m!7177534))

(assert (=> b!6375568 d!1999481))

(declare-fun d!1999483 () Bool)

(assert (=> d!1999483 (= (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))) (nullableFct!2226 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun bs!1596419 () Bool)

(assert (= bs!1596419 d!1999483))

(declare-fun m!7177536 () Bool)

(assert (=> bs!1596419 m!7177536))

(assert (=> b!6375576 d!1999483))

(declare-fun b!6375959 () Bool)

(declare-fun res!2622789 () Bool)

(declare-fun e!3870761 () Bool)

(assert (=> b!6375959 (=> (not res!2622789) (not e!3870761))))

(declare-fun call!544686 () Bool)

(assert (=> b!6375959 (= res!2622789 (not call!544686))))

(declare-fun b!6375960 () Bool)

(declare-fun e!3870762 () Bool)

(declare-fun lt!2369147 () Bool)

(assert (=> b!6375960 (= e!3870762 (= lt!2369147 call!544686))))

(declare-fun b!6375961 () Bool)

(declare-fun e!3870759 () Bool)

(assert (=> b!6375961 (= e!3870762 e!3870759)))

(declare-fun c!1161432 () Bool)

(assert (=> b!6375961 (= c!1161432 ((_ is EmptyLang!16287) (regTwo!33086 r!7292)))))

(declare-fun b!6375962 () Bool)

(declare-fun e!3870756 () Bool)

(assert (=> b!6375962 (= e!3870756 (nullable!6280 (regTwo!33086 r!7292)))))

(declare-fun b!6375963 () Bool)

(declare-fun e!3870760 () Bool)

(declare-fun e!3870758 () Bool)

(assert (=> b!6375963 (= e!3870760 e!3870758)))

(declare-fun res!2622785 () Bool)

(assert (=> b!6375963 (=> (not res!2622785) (not e!3870758))))

(assert (=> b!6375963 (= res!2622785 (not lt!2369147))))

(declare-fun b!6375964 () Bool)

(declare-fun res!2622790 () Bool)

(assert (=> b!6375964 (=> res!2622790 e!3870760)))

(assert (=> b!6375964 (= res!2622790 e!3870761)))

(declare-fun res!2622784 () Bool)

(assert (=> b!6375964 (=> (not res!2622784) (not e!3870761))))

(assert (=> b!6375964 (= res!2622784 lt!2369147)))

(declare-fun bm!544681 () Bool)

(assert (=> bm!544681 (= call!544686 (isEmpty!37161 (_2!36569 (get!22515 lt!2369120))))))

(declare-fun b!6375965 () Bool)

(declare-fun res!2622787 () Bool)

(declare-fun e!3870757 () Bool)

(assert (=> b!6375965 (=> res!2622787 e!3870757)))

(assert (=> b!6375965 (= res!2622787 (not (isEmpty!37161 (tail!12151 (_2!36569 (get!22515 lt!2369120))))))))

(declare-fun d!1999485 () Bool)

(assert (=> d!1999485 e!3870762))

(declare-fun c!1161430 () Bool)

(assert (=> d!1999485 (= c!1161430 ((_ is EmptyExpr!16287) (regTwo!33086 r!7292)))))

(assert (=> d!1999485 (= lt!2369147 e!3870756)))

(declare-fun c!1161431 () Bool)

(assert (=> d!1999485 (= c!1161431 (isEmpty!37161 (_2!36569 (get!22515 lt!2369120))))))

(assert (=> d!1999485 (validRegex!8023 (regTwo!33086 r!7292))))

(assert (=> d!1999485 (= (matchR!8470 (regTwo!33086 r!7292) (_2!36569 (get!22515 lt!2369120))) lt!2369147)))

(declare-fun b!6375966 () Bool)

(declare-fun res!2622788 () Bool)

(assert (=> b!6375966 (=> (not res!2622788) (not e!3870761))))

(assert (=> b!6375966 (= res!2622788 (isEmpty!37161 (tail!12151 (_2!36569 (get!22515 lt!2369120)))))))

(declare-fun b!6375967 () Bool)

(assert (=> b!6375967 (= e!3870757 (not (= (head!13066 (_2!36569 (get!22515 lt!2369120))) (c!1161140 (regTwo!33086 r!7292)))))))

(declare-fun b!6375968 () Bool)

(declare-fun res!2622786 () Bool)

(assert (=> b!6375968 (=> res!2622786 e!3870760)))

(assert (=> b!6375968 (= res!2622786 (not ((_ is ElementMatch!16287) (regTwo!33086 r!7292))))))

(assert (=> b!6375968 (= e!3870759 e!3870760)))

(declare-fun b!6375969 () Bool)

(assert (=> b!6375969 (= e!3870756 (matchR!8470 (derivativeStep!4991 (regTwo!33086 r!7292) (head!13066 (_2!36569 (get!22515 lt!2369120)))) (tail!12151 (_2!36569 (get!22515 lt!2369120)))))))

(declare-fun b!6375970 () Bool)

(assert (=> b!6375970 (= e!3870758 e!3870757)))

(declare-fun res!2622783 () Bool)

(assert (=> b!6375970 (=> res!2622783 e!3870757)))

(assert (=> b!6375970 (= res!2622783 call!544686)))

(declare-fun b!6375971 () Bool)

(assert (=> b!6375971 (= e!3870759 (not lt!2369147))))

(declare-fun b!6375972 () Bool)

(assert (=> b!6375972 (= e!3870761 (= (head!13066 (_2!36569 (get!22515 lt!2369120))) (c!1161140 (regTwo!33086 r!7292))))))

(assert (= (and d!1999485 c!1161431) b!6375962))

(assert (= (and d!1999485 (not c!1161431)) b!6375969))

(assert (= (and d!1999485 c!1161430) b!6375960))

(assert (= (and d!1999485 (not c!1161430)) b!6375961))

(assert (= (and b!6375961 c!1161432) b!6375971))

(assert (= (and b!6375961 (not c!1161432)) b!6375968))

(assert (= (and b!6375968 (not res!2622786)) b!6375964))

(assert (= (and b!6375964 res!2622784) b!6375959))

(assert (= (and b!6375959 res!2622789) b!6375966))

(assert (= (and b!6375966 res!2622788) b!6375972))

(assert (= (and b!6375964 (not res!2622790)) b!6375963))

(assert (= (and b!6375963 res!2622785) b!6375970))

(assert (= (and b!6375970 (not res!2622783)) b!6375965))

(assert (= (and b!6375965 (not res!2622787)) b!6375967))

(assert (= (or b!6375960 b!6375959 b!6375970) bm!544681))

(declare-fun m!7177544 () Bool)

(assert (=> b!6375967 m!7177544))

(assert (=> b!6375969 m!7177544))

(assert (=> b!6375969 m!7177544))

(declare-fun m!7177546 () Bool)

(assert (=> b!6375969 m!7177546))

(declare-fun m!7177548 () Bool)

(assert (=> b!6375969 m!7177548))

(assert (=> b!6375969 m!7177546))

(assert (=> b!6375969 m!7177548))

(declare-fun m!7177552 () Bool)

(assert (=> b!6375969 m!7177552))

(assert (=> b!6375965 m!7177548))

(assert (=> b!6375965 m!7177548))

(declare-fun m!7177556 () Bool)

(assert (=> b!6375965 m!7177556))

(declare-fun m!7177558 () Bool)

(assert (=> bm!544681 m!7177558))

(assert (=> b!6375962 m!7177442))

(assert (=> b!6375966 m!7177548))

(assert (=> b!6375966 m!7177548))

(assert (=> b!6375966 m!7177556))

(assert (=> d!1999485 m!7177558))

(assert (=> d!1999485 m!7177444))

(assert (=> b!6375972 m!7177544))

(assert (=> b!6375542 d!1999485))

(assert (=> b!6375542 d!1999451))

(declare-fun bs!1596420 () Bool)

(declare-fun d!1999489 () Bool)

(assert (= bs!1596420 (and d!1999489 d!1999349)))

(declare-fun lambda!351534 () Int)

(assert (=> bs!1596420 (= lambda!351534 lambda!351515)))

(declare-fun bs!1596421 () Bool)

(assert (= bs!1596421 (and d!1999489 d!1999249)))

(assert (=> bs!1596421 (= lambda!351534 lambda!351486)))

(declare-fun bs!1596422 () Bool)

(assert (= bs!1596422 (and d!1999489 d!1999347)))

(assert (=> bs!1596422 (= lambda!351534 lambda!351514)))

(declare-fun bs!1596423 () Bool)

(assert (= bs!1596423 (and d!1999489 d!1999307)))

(assert (=> bs!1596423 (= lambda!351534 lambda!351499)))

(declare-fun bs!1596424 () Bool)

(assert (= bs!1596424 (and d!1999489 d!1999345)))

(assert (=> bs!1596424 (= lambda!351534 lambda!351511)))

(declare-fun bs!1596426 () Bool)

(assert (= bs!1596426 (and d!1999489 d!1999221)))

(assert (=> bs!1596426 (= lambda!351534 lambda!351478)))

(declare-fun b!6375975 () Bool)

(declare-fun e!3870767 () Bool)

(declare-fun lt!2369148 () Regex!16287)

(assert (=> b!6375975 (= e!3870767 (isUnion!1125 lt!2369148))))

(declare-fun b!6375976 () Bool)

(assert (=> b!6375976 (= e!3870767 (= lt!2369148 (head!13067 (t!378762 (unfocusZipperList!1708 zl!343)))))))

(declare-fun e!3870769 () Bool)

(assert (=> d!1999489 e!3870769))

(declare-fun res!2622792 () Bool)

(assert (=> d!1999489 (=> (not res!2622792) (not e!3870769))))

(assert (=> d!1999489 (= res!2622792 (validRegex!8023 lt!2369148))))

(declare-fun e!3870766 () Regex!16287)

(assert (=> d!1999489 (= lt!2369148 e!3870766)))

(declare-fun c!1161436 () Bool)

(declare-fun e!3870764 () Bool)

(assert (=> d!1999489 (= c!1161436 e!3870764)))

(declare-fun res!2622791 () Bool)

(assert (=> d!1999489 (=> (not res!2622791) (not e!3870764))))

(assert (=> d!1999489 (= res!2622791 ((_ is Cons!65036) (t!378762 (unfocusZipperList!1708 zl!343))))))

(assert (=> d!1999489 (forall!15465 (t!378762 (unfocusZipperList!1708 zl!343)) lambda!351534)))

(assert (=> d!1999489 (= (generalisedUnion!2131 (t!378762 (unfocusZipperList!1708 zl!343))) lt!2369148)))

(declare-fun b!6375977 () Bool)

(declare-fun e!3870765 () Bool)

(assert (=> b!6375977 (= e!3870769 e!3870765)))

(declare-fun c!1161434 () Bool)

(assert (=> b!6375977 (= c!1161434 (isEmpty!37158 (t!378762 (unfocusZipperList!1708 zl!343))))))

(declare-fun b!6375978 () Bool)

(declare-fun e!3870768 () Regex!16287)

(assert (=> b!6375978 (= e!3870768 (Union!16287 (h!71484 (t!378762 (unfocusZipperList!1708 zl!343))) (generalisedUnion!2131 (t!378762 (t!378762 (unfocusZipperList!1708 zl!343))))))))

(declare-fun b!6375979 () Bool)

(assert (=> b!6375979 (= e!3870765 e!3870767)))

(declare-fun c!1161437 () Bool)

(assert (=> b!6375979 (= c!1161437 (isEmpty!37158 (tail!12152 (t!378762 (unfocusZipperList!1708 zl!343)))))))

(declare-fun b!6375980 () Bool)

(assert (=> b!6375980 (= e!3870765 (isEmptyLang!1695 lt!2369148))))

(declare-fun b!6375981 () Bool)

(assert (=> b!6375981 (= e!3870766 (h!71484 (t!378762 (unfocusZipperList!1708 zl!343))))))

(declare-fun b!6375982 () Bool)

(assert (=> b!6375982 (= e!3870766 e!3870768)))

(declare-fun c!1161435 () Bool)

(assert (=> b!6375982 (= c!1161435 ((_ is Cons!65036) (t!378762 (unfocusZipperList!1708 zl!343))))))

(declare-fun b!6375983 () Bool)

(assert (=> b!6375983 (= e!3870768 EmptyLang!16287)))

(declare-fun b!6375984 () Bool)

(assert (=> b!6375984 (= e!3870764 (isEmpty!37158 (t!378762 (t!378762 (unfocusZipperList!1708 zl!343)))))))

(assert (= (and d!1999489 res!2622791) b!6375984))

(assert (= (and d!1999489 c!1161436) b!6375981))

(assert (= (and d!1999489 (not c!1161436)) b!6375982))

(assert (= (and b!6375982 c!1161435) b!6375978))

(assert (= (and b!6375982 (not c!1161435)) b!6375983))

(assert (= (and d!1999489 res!2622792) b!6375977))

(assert (= (and b!6375977 c!1161434) b!6375980))

(assert (= (and b!6375977 (not c!1161434)) b!6375979))

(assert (= (and b!6375979 c!1161437) b!6375976))

(assert (= (and b!6375979 (not c!1161437)) b!6375975))

(declare-fun m!7177570 () Bool)

(assert (=> b!6375980 m!7177570))

(declare-fun m!7177572 () Bool)

(assert (=> b!6375976 m!7177572))

(declare-fun m!7177574 () Bool)

(assert (=> b!6375979 m!7177574))

(assert (=> b!6375979 m!7177574))

(declare-fun m!7177576 () Bool)

(assert (=> b!6375979 m!7177576))

(declare-fun m!7177578 () Bool)

(assert (=> b!6375978 m!7177578))

(declare-fun m!7177580 () Bool)

(assert (=> d!1999489 m!7177580))

(declare-fun m!7177582 () Bool)

(assert (=> d!1999489 m!7177582))

(declare-fun m!7177584 () Bool)

(assert (=> b!6375975 m!7177584))

(assert (=> b!6375977 m!7177278))

(declare-fun m!7177586 () Bool)

(assert (=> b!6375984 m!7177586))

(assert (=> b!6375617 d!1999489))

(assert (=> bm!544603 d!1999409))

(declare-fun d!1999497 () Bool)

(assert (=> d!1999497 true))

(declare-fun setRes!43496 () Bool)

(assert (=> d!1999497 setRes!43496))

(declare-fun condSetEmpty!43496 () Bool)

(declare-fun res!2622803 () (InoxSet Context!11342))

(assert (=> d!1999497 (= condSetEmpty!43496 (= res!2622803 ((as const (Array Context!11342 Bool)) false)))))

(assert (=> d!1999497 (= (choose!47392 lt!2369031 lambda!351451) res!2622803)))

(declare-fun setIsEmpty!43496 () Bool)

(assert (=> setIsEmpty!43496 setRes!43496))

(declare-fun tp!1774715 () Bool)

(declare-fun e!3870779 () Bool)

(declare-fun setElem!43496 () Context!11342)

(declare-fun setNonEmpty!43496 () Bool)

(assert (=> setNonEmpty!43496 (= setRes!43496 (and tp!1774715 (inv!83964 setElem!43496) e!3870779))))

(declare-fun setRest!43496 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43496 (= res!2622803 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43496 true) setRest!43496))))

(declare-fun b!6376001 () Bool)

(declare-fun tp!1774716 () Bool)

(assert (=> b!6376001 (= e!3870779 tp!1774716)))

(assert (= (and d!1999497 condSetEmpty!43496) setIsEmpty!43496))

(assert (= (and d!1999497 (not condSetEmpty!43496)) setNonEmpty!43496))

(assert (= setNonEmpty!43496 b!6376001))

(declare-fun m!7177596 () Bool)

(assert (=> setNonEmpty!43496 m!7177596))

(assert (=> d!1999175 d!1999497))

(declare-fun d!1999503 () Bool)

(assert (=> d!1999503 (= (nullable!6280 r!7292) (nullableFct!2226 r!7292))))

(declare-fun bs!1596431 () Bool)

(assert (= bs!1596431 d!1999503))

(declare-fun m!7177600 () Bool)

(assert (=> bs!1596431 m!7177600))

(assert (=> b!6375508 d!1999503))

(declare-fun bs!1596432 () Bool)

(declare-fun d!1999505 () Bool)

(assert (= bs!1596432 (and d!1999505 d!1999453)))

(declare-fun lambda!351536 () Int)

(assert (=> bs!1596432 (= lambda!351536 lambda!351527)))

(assert (=> d!1999505 (= (nullableZipper!2053 lt!2369020) (exists!2583 lt!2369020 lambda!351536))))

(declare-fun bs!1596433 () Bool)

(assert (= bs!1596433 d!1999505))

(declare-fun m!7177608 () Bool)

(assert (=> bs!1596433 m!7177608))

(assert (=> b!6375561 d!1999505))

(declare-fun d!1999507 () Bool)

(assert (=> d!1999507 (= ($colon$colon!2148 (exprs!6171 lt!2369040) (ite (or c!1161330 c!1161331) (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71484 (exprs!6171 (h!71485 zl!343))))) (Cons!65036 (ite (or c!1161330 c!1161331) (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (h!71484 (exprs!6171 (h!71485 zl!343)))) (exprs!6171 lt!2369040)))))

(assert (=> bm!544612 d!1999507))

(declare-fun d!1999511 () Bool)

(assert (=> d!1999511 true))

(assert (=> d!1999511 true))

(declare-fun res!2622806 () Bool)

(assert (=> d!1999511 (= (choose!47398 lambda!351449) res!2622806)))

(assert (=> d!1999311 d!1999511))

(declare-fun d!1999515 () Bool)

(assert (=> d!1999515 (= (nullable!6280 (regOne!33086 (reg!16616 (regOne!33086 r!7292)))) (nullableFct!2226 (regOne!33086 (reg!16616 (regOne!33086 r!7292)))))))

(declare-fun bs!1596435 () Bool)

(assert (= bs!1596435 d!1999515))

(declare-fun m!7177614 () Bool)

(assert (=> bs!1596435 m!7177614))

(assert (=> b!6375105 d!1999515))

(declare-fun d!1999517 () Bool)

(assert (=> d!1999517 (= (isEmpty!37161 (tail!12151 s!2326)) ((_ is Nil!65038) (tail!12151 s!2326)))))

(assert (=> b!6375511 d!1999517))

(declare-fun d!1999521 () Bool)

(assert (=> d!1999521 (= (tail!12151 s!2326) (t!378764 s!2326))))

(assert (=> b!6375511 d!1999521))

(declare-fun d!1999523 () Bool)

(assert (=> d!1999523 true))

(declare-fun setRes!43497 () Bool)

(assert (=> d!1999523 setRes!43497))

(declare-fun condSetEmpty!43497 () Bool)

(declare-fun res!2622807 () (InoxSet Context!11342))

(assert (=> d!1999523 (= condSetEmpty!43497 (= res!2622807 ((as const (Array Context!11342 Bool)) false)))))

(assert (=> d!1999523 (= (choose!47392 lt!2369032 lambda!351451) res!2622807)))

(declare-fun setIsEmpty!43497 () Bool)

(assert (=> setIsEmpty!43497 setRes!43497))

(declare-fun tp!1774717 () Bool)

(declare-fun e!3870780 () Bool)

(declare-fun setElem!43497 () Context!11342)

(declare-fun setNonEmpty!43497 () Bool)

(assert (=> setNonEmpty!43497 (= setRes!43497 (and tp!1774717 (inv!83964 setElem!43497) e!3870780))))

(declare-fun setRest!43497 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43497 (= res!2622807 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43497 true) setRest!43497))))

(declare-fun b!6376002 () Bool)

(declare-fun tp!1774718 () Bool)

(assert (=> b!6376002 (= e!3870780 tp!1774718)))

(assert (= (and d!1999523 condSetEmpty!43497) setIsEmpty!43497))

(assert (= (and d!1999523 (not condSetEmpty!43497)) setNonEmpty!43497))

(assert (= setNonEmpty!43497 b!6376002))

(declare-fun m!7177616 () Bool)

(assert (=> setNonEmpty!43497 m!7177616))

(assert (=> d!1999245 d!1999523))

(declare-fun b!6376003 () Bool)

(declare-fun res!2622810 () Bool)

(declare-fun e!3870787 () Bool)

(assert (=> b!6376003 (=> (not res!2622810) (not e!3870787))))

(declare-fun call!544689 () Bool)

(assert (=> b!6376003 (= res!2622810 call!544689)))

(declare-fun e!3870785 () Bool)

(assert (=> b!6376003 (= e!3870785 e!3870787)))

(declare-fun bm!544683 () Bool)

(declare-fun c!1161441 () Bool)

(declare-fun c!1161442 () Bool)

(declare-fun call!544690 () Bool)

(assert (=> bm!544683 (= call!544690 (validRegex!8023 (ite c!1161442 (reg!16616 lt!2369140) (ite c!1161441 (regOne!33087 lt!2369140) (regOne!33086 lt!2369140)))))))

(declare-fun b!6376004 () Bool)

(declare-fun e!3870783 () Bool)

(declare-fun e!3870781 () Bool)

(assert (=> b!6376004 (= e!3870783 e!3870781)))

(declare-fun res!2622809 () Bool)

(assert (=> b!6376004 (= res!2622809 (not (nullable!6280 (reg!16616 lt!2369140))))))

(assert (=> b!6376004 (=> (not res!2622809) (not e!3870781))))

(declare-fun b!6376005 () Bool)

(declare-fun e!3870784 () Bool)

(declare-fun e!3870786 () Bool)

(assert (=> b!6376005 (= e!3870784 e!3870786)))

(declare-fun res!2622812 () Bool)

(assert (=> b!6376005 (=> (not res!2622812) (not e!3870786))))

(assert (=> b!6376005 (= res!2622812 call!544689)))

(declare-fun b!6376006 () Bool)

(declare-fun call!544688 () Bool)

(assert (=> b!6376006 (= e!3870786 call!544688)))

(declare-fun b!6376007 () Bool)

(assert (=> b!6376007 (= e!3870787 call!544688)))

(declare-fun bm!544684 () Bool)

(assert (=> bm!544684 (= call!544689 call!544690)))

(declare-fun b!6376008 () Bool)

(assert (=> b!6376008 (= e!3870783 e!3870785)))

(assert (=> b!6376008 (= c!1161441 ((_ is Union!16287) lt!2369140))))

(declare-fun b!6376009 () Bool)

(declare-fun e!3870782 () Bool)

(assert (=> b!6376009 (= e!3870782 e!3870783)))

(assert (=> b!6376009 (= c!1161442 ((_ is Star!16287) lt!2369140))))

(declare-fun b!6376010 () Bool)

(declare-fun res!2622811 () Bool)

(assert (=> b!6376010 (=> res!2622811 e!3870784)))

(assert (=> b!6376010 (= res!2622811 (not ((_ is Concat!25132) lt!2369140)))))

(assert (=> b!6376010 (= e!3870785 e!3870784)))

(declare-fun bm!544685 () Bool)

(assert (=> bm!544685 (= call!544688 (validRegex!8023 (ite c!1161441 (regTwo!33087 lt!2369140) (regTwo!33086 lt!2369140))))))

(declare-fun b!6376011 () Bool)

(assert (=> b!6376011 (= e!3870781 call!544690)))

(declare-fun d!1999525 () Bool)

(declare-fun res!2622808 () Bool)

(assert (=> d!1999525 (=> res!2622808 e!3870782)))

(assert (=> d!1999525 (= res!2622808 ((_ is ElementMatch!16287) lt!2369140))))

(assert (=> d!1999525 (= (validRegex!8023 lt!2369140) e!3870782)))

(assert (= (and d!1999525 (not res!2622808)) b!6376009))

(assert (= (and b!6376009 c!1161442) b!6376004))

(assert (= (and b!6376009 (not c!1161442)) b!6376008))

(assert (= (and b!6376004 res!2622809) b!6376011))

(assert (= (and b!6376008 c!1161441) b!6376003))

(assert (= (and b!6376008 (not c!1161441)) b!6376010))

(assert (= (and b!6376003 res!2622810) b!6376007))

(assert (= (and b!6376010 (not res!2622811)) b!6376005))

(assert (= (and b!6376005 res!2622812) b!6376006))

(assert (= (or b!6376007 b!6376006) bm!544685))

(assert (= (or b!6376003 b!6376005) bm!544684))

(assert (= (or b!6376011 bm!544684) bm!544683))

(declare-fun m!7177618 () Bool)

(assert (=> bm!544683 m!7177618))

(declare-fun m!7177620 () Bool)

(assert (=> b!6376004 m!7177620))

(declare-fun m!7177622 () Bool)

(assert (=> bm!544685 m!7177622))

(assert (=> d!1999351 d!1999525))

(declare-fun bs!1596436 () Bool)

(declare-fun d!1999527 () Bool)

(assert (= bs!1596436 (and d!1999527 d!1999349)))

(declare-fun lambda!351537 () Int)

(assert (=> bs!1596436 (= lambda!351537 lambda!351515)))

(declare-fun bs!1596437 () Bool)

(assert (= bs!1596437 (and d!1999527 d!1999249)))

(assert (=> bs!1596437 (= lambda!351537 lambda!351486)))

(declare-fun bs!1596438 () Bool)

(assert (= bs!1596438 (and d!1999527 d!1999347)))

(assert (=> bs!1596438 (= lambda!351537 lambda!351514)))

(declare-fun bs!1596439 () Bool)

(assert (= bs!1596439 (and d!1999527 d!1999307)))

(assert (=> bs!1596439 (= lambda!351537 lambda!351499)))

(declare-fun bs!1596440 () Bool)

(assert (= bs!1596440 (and d!1999527 d!1999345)))

(assert (=> bs!1596440 (= lambda!351537 lambda!351511)))

(declare-fun bs!1596441 () Bool)

(assert (= bs!1596441 (and d!1999527 d!1999221)))

(assert (=> bs!1596441 (= lambda!351537 lambda!351478)))

(declare-fun bs!1596442 () Bool)

(assert (= bs!1596442 (and d!1999527 d!1999489)))

(assert (=> bs!1596442 (= lambda!351537 lambda!351534)))

(declare-fun b!6376012 () Bool)

(declare-fun e!3870791 () Bool)

(declare-fun lt!2369150 () Regex!16287)

(assert (=> b!6376012 (= e!3870791 (isUnion!1125 lt!2369150))))

(declare-fun b!6376013 () Bool)

(assert (=> b!6376013 (= e!3870791 (= lt!2369150 (head!13067 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037)))))))

(declare-fun e!3870793 () Bool)

(assert (=> d!1999527 e!3870793))

(declare-fun res!2622814 () Bool)

(assert (=> d!1999527 (=> (not res!2622814) (not e!3870793))))

(assert (=> d!1999527 (= res!2622814 (validRegex!8023 lt!2369150))))

(declare-fun e!3870790 () Regex!16287)

(assert (=> d!1999527 (= lt!2369150 e!3870790)))

(declare-fun c!1161445 () Bool)

(declare-fun e!3870788 () Bool)

(assert (=> d!1999527 (= c!1161445 e!3870788)))

(declare-fun res!2622813 () Bool)

(assert (=> d!1999527 (=> (not res!2622813) (not e!3870788))))

(assert (=> d!1999527 (= res!2622813 ((_ is Cons!65036) (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))

(assert (=> d!1999527 (forall!15465 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037)) lambda!351537)))

(assert (=> d!1999527 (= (generalisedUnion!2131 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))) lt!2369150)))

(declare-fun b!6376014 () Bool)

(declare-fun e!3870789 () Bool)

(assert (=> b!6376014 (= e!3870793 e!3870789)))

(declare-fun c!1161443 () Bool)

(assert (=> b!6376014 (= c!1161443 (isEmpty!37158 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))

(declare-fun b!6376015 () Bool)

(declare-fun e!3870792 () Regex!16287)

(assert (=> b!6376015 (= e!3870792 (Union!16287 (h!71484 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))) (generalisedUnion!2131 (t!378762 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))))

(declare-fun b!6376016 () Bool)

(assert (=> b!6376016 (= e!3870789 e!3870791)))

(declare-fun c!1161446 () Bool)

(assert (=> b!6376016 (= c!1161446 (isEmpty!37158 (tail!12152 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037)))))))

(declare-fun b!6376017 () Bool)

(assert (=> b!6376017 (= e!3870789 (isEmptyLang!1695 lt!2369150))))

(declare-fun b!6376018 () Bool)

(assert (=> b!6376018 (= e!3870790 (h!71484 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))

(declare-fun b!6376019 () Bool)

(assert (=> b!6376019 (= e!3870790 e!3870792)))

(declare-fun c!1161444 () Bool)

(assert (=> b!6376019 (= c!1161444 ((_ is Cons!65036) (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037))))))

(declare-fun b!6376020 () Bool)

(assert (=> b!6376020 (= e!3870792 EmptyLang!16287)))

(declare-fun b!6376021 () Bool)

(assert (=> b!6376021 (= e!3870788 (isEmpty!37158 (t!378762 (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037)))))))

(assert (= (and d!1999527 res!2622813) b!6376021))

(assert (= (and d!1999527 c!1161445) b!6376018))

(assert (= (and d!1999527 (not c!1161445)) b!6376019))

(assert (= (and b!6376019 c!1161444) b!6376015))

(assert (= (and b!6376019 (not c!1161444)) b!6376020))

(assert (= (and d!1999527 res!2622814) b!6376014))

(assert (= (and b!6376014 c!1161443) b!6376017))

(assert (= (and b!6376014 (not c!1161443)) b!6376016))

(assert (= (and b!6376016 c!1161446) b!6376013))

(assert (= (and b!6376016 (not c!1161446)) b!6376012))

(declare-fun m!7177624 () Bool)

(assert (=> b!6376017 m!7177624))

(assert (=> b!6376013 m!7177288))

(declare-fun m!7177626 () Bool)

(assert (=> b!6376013 m!7177626))

(assert (=> b!6376016 m!7177288))

(declare-fun m!7177628 () Bool)

(assert (=> b!6376016 m!7177628))

(assert (=> b!6376016 m!7177628))

(declare-fun m!7177630 () Bool)

(assert (=> b!6376016 m!7177630))

(declare-fun m!7177632 () Bool)

(assert (=> b!6376015 m!7177632))

(declare-fun m!7177634 () Bool)

(assert (=> d!1999527 m!7177634))

(assert (=> d!1999527 m!7177288))

(declare-fun m!7177636 () Bool)

(assert (=> d!1999527 m!7177636))

(declare-fun m!7177638 () Bool)

(assert (=> b!6376012 m!7177638))

(assert (=> b!6376014 m!7177288))

(declare-fun m!7177640 () Bool)

(assert (=> b!6376014 m!7177640))

(declare-fun m!7177642 () Bool)

(assert (=> b!6376021 m!7177642))

(assert (=> d!1999351 d!1999527))

(declare-fun bs!1596443 () Bool)

(declare-fun d!1999529 () Bool)

(assert (= bs!1596443 (and d!1999529 d!1999349)))

(declare-fun lambda!351538 () Int)

(assert (=> bs!1596443 (= lambda!351538 lambda!351515)))

(declare-fun bs!1596444 () Bool)

(assert (= bs!1596444 (and d!1999529 d!1999249)))

(assert (=> bs!1596444 (= lambda!351538 lambda!351486)))

(declare-fun bs!1596445 () Bool)

(assert (= bs!1596445 (and d!1999529 d!1999347)))

(assert (=> bs!1596445 (= lambda!351538 lambda!351514)))

(declare-fun bs!1596446 () Bool)

(assert (= bs!1596446 (and d!1999529 d!1999307)))

(assert (=> bs!1596446 (= lambda!351538 lambda!351499)))

(declare-fun bs!1596447 () Bool)

(assert (= bs!1596447 (and d!1999529 d!1999527)))

(assert (=> bs!1596447 (= lambda!351538 lambda!351537)))

(declare-fun bs!1596448 () Bool)

(assert (= bs!1596448 (and d!1999529 d!1999345)))

(assert (=> bs!1596448 (= lambda!351538 lambda!351511)))

(declare-fun bs!1596449 () Bool)

(assert (= bs!1596449 (and d!1999529 d!1999221)))

(assert (=> bs!1596449 (= lambda!351538 lambda!351478)))

(declare-fun bs!1596450 () Bool)

(assert (= bs!1596450 (and d!1999529 d!1999489)))

(assert (=> bs!1596450 (= lambda!351538 lambda!351534)))

(declare-fun lt!2369151 () List!65160)

(assert (=> d!1999529 (forall!15465 lt!2369151 lambda!351538)))

(declare-fun e!3870794 () List!65160)

(assert (=> d!1999529 (= lt!2369151 e!3870794)))

(declare-fun c!1161447 () Bool)

(assert (=> d!1999529 (= c!1161447 ((_ is Cons!65037) (Cons!65037 lt!2369039 Nil!65037)))))

(assert (=> d!1999529 (= (unfocusZipperList!1708 (Cons!65037 lt!2369039 Nil!65037)) lt!2369151)))

(declare-fun b!6376022 () Bool)

(assert (=> b!6376022 (= e!3870794 (Cons!65036 (generalisedConcat!1884 (exprs!6171 (h!71485 (Cons!65037 lt!2369039 Nil!65037)))) (unfocusZipperList!1708 (t!378763 (Cons!65037 lt!2369039 Nil!65037)))))))

(declare-fun b!6376023 () Bool)

(assert (=> b!6376023 (= e!3870794 Nil!65036)))

(assert (= (and d!1999529 c!1161447) b!6376022))

(assert (= (and d!1999529 (not c!1161447)) b!6376023))

(declare-fun m!7177644 () Bool)

(assert (=> d!1999529 m!7177644))

(declare-fun m!7177646 () Bool)

(assert (=> b!6376022 m!7177646))

(declare-fun m!7177648 () Bool)

(assert (=> b!6376022 m!7177648))

(assert (=> d!1999351 d!1999529))

(declare-fun b!6376024 () Bool)

(declare-fun res!2622821 () Bool)

(declare-fun e!3870800 () Bool)

(assert (=> b!6376024 (=> (not res!2622821) (not e!3870800))))

(declare-fun call!544691 () Bool)

(assert (=> b!6376024 (= res!2622821 (not call!544691))))

(declare-fun b!6376025 () Bool)

(declare-fun e!3870801 () Bool)

(declare-fun lt!2369152 () Bool)

(assert (=> b!6376025 (= e!3870801 (= lt!2369152 call!544691))))

(declare-fun b!6376026 () Bool)

(declare-fun e!3870798 () Bool)

(assert (=> b!6376026 (= e!3870801 e!3870798)))

(declare-fun c!1161450 () Bool)

(assert (=> b!6376026 (= c!1161450 ((_ is EmptyLang!16287) (derivativeStep!4991 r!7292 (head!13066 s!2326))))))

(declare-fun b!6376027 () Bool)

(declare-fun e!3870795 () Bool)

(assert (=> b!6376027 (= e!3870795 (nullable!6280 (derivativeStep!4991 r!7292 (head!13066 s!2326))))))

(declare-fun b!6376028 () Bool)

(declare-fun e!3870799 () Bool)

(declare-fun e!3870797 () Bool)

(assert (=> b!6376028 (= e!3870799 e!3870797)))

(declare-fun res!2622817 () Bool)

(assert (=> b!6376028 (=> (not res!2622817) (not e!3870797))))

(assert (=> b!6376028 (= res!2622817 (not lt!2369152))))

(declare-fun b!6376029 () Bool)

(declare-fun res!2622822 () Bool)

(assert (=> b!6376029 (=> res!2622822 e!3870799)))

(assert (=> b!6376029 (= res!2622822 e!3870800)))

(declare-fun res!2622816 () Bool)

(assert (=> b!6376029 (=> (not res!2622816) (not e!3870800))))

(assert (=> b!6376029 (= res!2622816 lt!2369152)))

(declare-fun bm!544686 () Bool)

(assert (=> bm!544686 (= call!544691 (isEmpty!37161 (tail!12151 s!2326)))))

(declare-fun b!6376030 () Bool)

(declare-fun res!2622819 () Bool)

(declare-fun e!3870796 () Bool)

(assert (=> b!6376030 (=> res!2622819 e!3870796)))

(assert (=> b!6376030 (= res!2622819 (not (isEmpty!37161 (tail!12151 (tail!12151 s!2326)))))))

(declare-fun d!1999531 () Bool)

(assert (=> d!1999531 e!3870801))

(declare-fun c!1161448 () Bool)

(assert (=> d!1999531 (= c!1161448 ((_ is EmptyExpr!16287) (derivativeStep!4991 r!7292 (head!13066 s!2326))))))

(assert (=> d!1999531 (= lt!2369152 e!3870795)))

(declare-fun c!1161449 () Bool)

(assert (=> d!1999531 (= c!1161449 (isEmpty!37161 (tail!12151 s!2326)))))

(assert (=> d!1999531 (validRegex!8023 (derivativeStep!4991 r!7292 (head!13066 s!2326)))))

(assert (=> d!1999531 (= (matchR!8470 (derivativeStep!4991 r!7292 (head!13066 s!2326)) (tail!12151 s!2326)) lt!2369152)))

(declare-fun b!6376031 () Bool)

(declare-fun res!2622820 () Bool)

(assert (=> b!6376031 (=> (not res!2622820) (not e!3870800))))

(assert (=> b!6376031 (= res!2622820 (isEmpty!37161 (tail!12151 (tail!12151 s!2326))))))

(declare-fun b!6376032 () Bool)

(assert (=> b!6376032 (= e!3870796 (not (= (head!13066 (tail!12151 s!2326)) (c!1161140 (derivativeStep!4991 r!7292 (head!13066 s!2326))))))))

(declare-fun b!6376033 () Bool)

(declare-fun res!2622818 () Bool)

(assert (=> b!6376033 (=> res!2622818 e!3870799)))

(assert (=> b!6376033 (= res!2622818 (not ((_ is ElementMatch!16287) (derivativeStep!4991 r!7292 (head!13066 s!2326)))))))

(assert (=> b!6376033 (= e!3870798 e!3870799)))

(declare-fun b!6376034 () Bool)

(assert (=> b!6376034 (= e!3870795 (matchR!8470 (derivativeStep!4991 (derivativeStep!4991 r!7292 (head!13066 s!2326)) (head!13066 (tail!12151 s!2326))) (tail!12151 (tail!12151 s!2326))))))

(declare-fun b!6376035 () Bool)

(assert (=> b!6376035 (= e!3870797 e!3870796)))

(declare-fun res!2622815 () Bool)

(assert (=> b!6376035 (=> res!2622815 e!3870796)))

(assert (=> b!6376035 (= res!2622815 call!544691)))

(declare-fun b!6376036 () Bool)

(assert (=> b!6376036 (= e!3870798 (not lt!2369152))))

(declare-fun b!6376037 () Bool)

(assert (=> b!6376037 (= e!3870800 (= (head!13066 (tail!12151 s!2326)) (c!1161140 (derivativeStep!4991 r!7292 (head!13066 s!2326)))))))

(assert (= (and d!1999531 c!1161449) b!6376027))

(assert (= (and d!1999531 (not c!1161449)) b!6376034))

(assert (= (and d!1999531 c!1161448) b!6376025))

(assert (= (and d!1999531 (not c!1161448)) b!6376026))

(assert (= (and b!6376026 c!1161450) b!6376036))

(assert (= (and b!6376026 (not c!1161450)) b!6376033))

(assert (= (and b!6376033 (not res!2622818)) b!6376029))

(assert (= (and b!6376029 res!2622816) b!6376024))

(assert (= (and b!6376024 res!2622821) b!6376031))

(assert (= (and b!6376031 res!2622820) b!6376037))

(assert (= (and b!6376029 (not res!2622822)) b!6376028))

(assert (= (and b!6376028 res!2622817) b!6376035))

(assert (= (and b!6376035 (not res!2622815)) b!6376030))

(assert (= (and b!6376030 (not res!2622819)) b!6376032))

(assert (= (or b!6376025 b!6376024 b!6376035) bm!544686))

(assert (=> b!6376032 m!7176814))

(declare-fun m!7177650 () Bool)

(assert (=> b!6376032 m!7177650))

(assert (=> b!6376034 m!7176814))

(assert (=> b!6376034 m!7177650))

(assert (=> b!6376034 m!7177152))

(assert (=> b!6376034 m!7177650))

(declare-fun m!7177652 () Bool)

(assert (=> b!6376034 m!7177652))

(assert (=> b!6376034 m!7176814))

(declare-fun m!7177654 () Bool)

(assert (=> b!6376034 m!7177654))

(assert (=> b!6376034 m!7177652))

(assert (=> b!6376034 m!7177654))

(declare-fun m!7177656 () Bool)

(assert (=> b!6376034 m!7177656))

(assert (=> b!6376030 m!7176814))

(assert (=> b!6376030 m!7177654))

(assert (=> b!6376030 m!7177654))

(declare-fun m!7177658 () Bool)

(assert (=> b!6376030 m!7177658))

(assert (=> bm!544686 m!7176814))

(assert (=> bm!544686 m!7177156))

(assert (=> b!6376027 m!7177152))

(declare-fun m!7177660 () Bool)

(assert (=> b!6376027 m!7177660))

(assert (=> b!6376031 m!7176814))

(assert (=> b!6376031 m!7177654))

(assert (=> b!6376031 m!7177654))

(assert (=> b!6376031 m!7177658))

(assert (=> d!1999531 m!7176814))

(assert (=> d!1999531 m!7177156))

(assert (=> d!1999531 m!7177152))

(declare-fun m!7177662 () Bool)

(assert (=> d!1999531 m!7177662))

(assert (=> b!6376037 m!7176814))

(assert (=> b!6376037 m!7177650))

(assert (=> b!6375515 d!1999531))

(declare-fun b!6376078 () Bool)

(declare-fun c!1161470 () Bool)

(assert (=> b!6376078 (= c!1161470 ((_ is Union!16287) r!7292))))

(declare-fun e!3870827 () Regex!16287)

(declare-fun e!3870826 () Regex!16287)

(assert (=> b!6376078 (= e!3870827 e!3870826)))

(declare-fun b!6376079 () Bool)

(declare-fun c!1161471 () Bool)

(assert (=> b!6376079 (= c!1161471 (nullable!6280 (regOne!33086 r!7292)))))

(declare-fun e!3870825 () Regex!16287)

(declare-fun e!3870824 () Regex!16287)

(assert (=> b!6376079 (= e!3870825 e!3870824)))

(declare-fun bm!544702 () Bool)

(declare-fun call!544708 () Regex!16287)

(declare-fun call!544709 () Regex!16287)

(assert (=> bm!544702 (= call!544708 call!544709)))

(declare-fun bm!544703 () Bool)

(declare-fun call!544707 () Regex!16287)

(assert (=> bm!544703 (= call!544709 call!544707)))

(declare-fun b!6376080 () Bool)

(assert (=> b!6376080 (= e!3870825 (Concat!25132 call!544709 r!7292))))

(declare-fun bm!544704 () Bool)

(declare-fun c!1161469 () Bool)

(assert (=> bm!544704 (= call!544707 (derivativeStep!4991 (ite c!1161470 (regOne!33087 r!7292) (ite c!1161469 (reg!16616 r!7292) (ite c!1161471 (regTwo!33086 r!7292) (regOne!33086 r!7292)))) (head!13066 s!2326)))))

(declare-fun b!6376081 () Bool)

(assert (=> b!6376081 (= e!3870827 (ite (= (head!13066 s!2326) (c!1161140 r!7292)) EmptyExpr!16287 EmptyLang!16287))))

(declare-fun b!6376083 () Bool)

(assert (=> b!6376083 (= e!3870824 (Union!16287 (Concat!25132 call!544708 (regTwo!33086 r!7292)) EmptyLang!16287))))

(declare-fun call!544710 () Regex!16287)

(declare-fun b!6376084 () Bool)

(assert (=> b!6376084 (= e!3870824 (Union!16287 (Concat!25132 call!544710 (regTwo!33086 r!7292)) call!544708))))

(declare-fun b!6376085 () Bool)

(assert (=> b!6376085 (= e!3870826 e!3870825)))

(assert (=> b!6376085 (= c!1161469 ((_ is Star!16287) r!7292))))

(declare-fun bm!544705 () Bool)

(assert (=> bm!544705 (= call!544710 (derivativeStep!4991 (ite c!1161470 (regTwo!33087 r!7292) (regOne!33086 r!7292)) (head!13066 s!2326)))))

(declare-fun b!6376086 () Bool)

(declare-fun e!3870823 () Regex!16287)

(assert (=> b!6376086 (= e!3870823 EmptyLang!16287)))

(declare-fun b!6376087 () Bool)

(assert (=> b!6376087 (= e!3870826 (Union!16287 call!544707 call!544710))))

(declare-fun b!6376082 () Bool)

(assert (=> b!6376082 (= e!3870823 e!3870827)))

(declare-fun c!1161468 () Bool)

(assert (=> b!6376082 (= c!1161468 ((_ is ElementMatch!16287) r!7292))))

(declare-fun d!1999533 () Bool)

(declare-fun lt!2369155 () Regex!16287)

(assert (=> d!1999533 (validRegex!8023 lt!2369155)))

(assert (=> d!1999533 (= lt!2369155 e!3870823)))

(declare-fun c!1161472 () Bool)

(assert (=> d!1999533 (= c!1161472 (or ((_ is EmptyExpr!16287) r!7292) ((_ is EmptyLang!16287) r!7292)))))

(assert (=> d!1999533 (validRegex!8023 r!7292)))

(assert (=> d!1999533 (= (derivativeStep!4991 r!7292 (head!13066 s!2326)) lt!2369155)))

(assert (= (and d!1999533 c!1161472) b!6376086))

(assert (= (and d!1999533 (not c!1161472)) b!6376082))

(assert (= (and b!6376082 c!1161468) b!6376081))

(assert (= (and b!6376082 (not c!1161468)) b!6376078))

(assert (= (and b!6376078 c!1161470) b!6376087))

(assert (= (and b!6376078 (not c!1161470)) b!6376085))

(assert (= (and b!6376085 c!1161469) b!6376080))

(assert (= (and b!6376085 (not c!1161469)) b!6376079))

(assert (= (and b!6376079 c!1161471) b!6376084))

(assert (= (and b!6376079 (not c!1161471)) b!6376083))

(assert (= (or b!6376084 b!6376083) bm!544702))

(assert (= (or b!6376080 bm!544702) bm!544703))

(assert (= (or b!6376087 b!6376084) bm!544705))

(assert (= (or b!6376087 bm!544703) bm!544704))

(declare-fun m!7177686 () Bool)

(assert (=> b!6376079 m!7177686))

(assert (=> bm!544704 m!7176810))

(declare-fun m!7177688 () Bool)

(assert (=> bm!544704 m!7177688))

(assert (=> bm!544705 m!7176810))

(declare-fun m!7177690 () Bool)

(assert (=> bm!544705 m!7177690))

(declare-fun m!7177692 () Bool)

(assert (=> d!1999533 m!7177692))

(assert (=> d!1999533 m!7176772))

(assert (=> b!6375515 d!1999533))

(declare-fun d!1999551 () Bool)

(assert (=> d!1999551 (= (head!13066 s!2326) (h!71486 s!2326))))

(assert (=> b!6375515 d!1999551))

(assert (=> b!6375515 d!1999521))

(declare-fun b!6376088 () Bool)

(declare-fun e!3870830 () (InoxSet Context!11342))

(assert (=> b!6376088 (= e!3870830 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376089 () Bool)

(declare-fun e!3870831 () Bool)

(assert (=> b!6376089 (= e!3870831 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 lt!2369039)))))))

(declare-fun b!6376091 () Bool)

(declare-fun e!3870832 () (InoxSet Context!11342))

(declare-fun e!3870833 () (InoxSet Context!11342))

(assert (=> b!6376091 (= e!3870832 e!3870833)))

(declare-fun c!1161475 () Bool)

(assert (=> b!6376091 (= c!1161475 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369039))))))

(declare-fun c!1161477 () Bool)

(declare-fun call!544712 () (InoxSet Context!11342))

(declare-fun bm!544706 () Bool)

(declare-fun call!544713 () List!65160)

(assert (=> bm!544706 (= call!544712 (derivationStepZipperDown!1535 (ite c!1161477 (regTwo!33087 (h!71484 (exprs!6171 lt!2369039))) (regOne!33086 (h!71484 (exprs!6171 lt!2369039)))) (ite c!1161477 (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (Context!11343 call!544713)) (h!71486 s!2326)))))

(declare-fun b!6376092 () Bool)

(declare-fun c!1161476 () Bool)

(assert (=> b!6376092 (= c!1161476 ((_ is Star!16287) (h!71484 (exprs!6171 lt!2369039))))))

(assert (=> b!6376092 (= e!3870833 e!3870830)))

(declare-fun bm!544707 () Bool)

(declare-fun call!544716 () List!65160)

(assert (=> bm!544707 (= call!544716 call!544713)))

(declare-fun bm!544708 () Bool)

(declare-fun call!544715 () (InoxSet Context!11342))

(declare-fun call!544711 () (InoxSet Context!11342))

(assert (=> bm!544708 (= call!544715 call!544711)))

(declare-fun b!6376093 () Bool)

(declare-fun e!3870828 () (InoxSet Context!11342))

(declare-fun e!3870829 () (InoxSet Context!11342))

(assert (=> b!6376093 (= e!3870828 e!3870829)))

(assert (=> b!6376093 (= c!1161477 ((_ is Union!16287) (h!71484 (exprs!6171 lt!2369039))))))

(declare-fun b!6376094 () Bool)

(assert (=> b!6376094 (= e!3870828 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 lt!2369039))) true))))

(declare-fun c!1161474 () Bool)

(declare-fun bm!544709 () Bool)

(assert (=> bm!544709 (= call!544713 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039)))) (ite (or c!1161474 c!1161475) (regTwo!33086 (h!71484 (exprs!6171 lt!2369039))) (h!71484 (exprs!6171 lt!2369039)))))))

(declare-fun b!6376095 () Bool)

(assert (=> b!6376095 (= e!3870833 call!544715)))

(declare-fun d!1999553 () Bool)

(declare-fun c!1161473 () Bool)

(assert (=> d!1999553 (= c!1161473 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 lt!2369039))) (= (c!1161140 (h!71484 (exprs!6171 lt!2369039))) (h!71486 s!2326))))))

(assert (=> d!1999553 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369039)) (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (h!71486 s!2326)) e!3870828)))

(declare-fun b!6376090 () Bool)

(assert (=> b!6376090 (= e!3870832 ((_ map or) call!544712 call!544711))))

(declare-fun b!6376096 () Bool)

(declare-fun call!544714 () (InoxSet Context!11342))

(assert (=> b!6376096 (= e!3870829 ((_ map or) call!544714 call!544712))))

(declare-fun b!6376097 () Bool)

(assert (=> b!6376097 (= e!3870830 call!544715)))

(declare-fun bm!544710 () Bool)

(assert (=> bm!544710 (= call!544711 call!544714)))

(declare-fun bm!544711 () Bool)

(assert (=> bm!544711 (= call!544714 (derivationStepZipperDown!1535 (ite c!1161477 (regOne!33087 (h!71484 (exprs!6171 lt!2369039))) (ite c!1161474 (regTwo!33086 (h!71484 (exprs!6171 lt!2369039))) (ite c!1161475 (regOne!33086 (h!71484 (exprs!6171 lt!2369039))) (reg!16616 (h!71484 (exprs!6171 lt!2369039)))))) (ite (or c!1161477 c!1161474) (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (Context!11343 call!544716)) (h!71486 s!2326)))))

(declare-fun b!6376098 () Bool)

(assert (=> b!6376098 (= c!1161474 e!3870831)))

(declare-fun res!2622829 () Bool)

(assert (=> b!6376098 (=> (not res!2622829) (not e!3870831))))

(assert (=> b!6376098 (= res!2622829 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369039))))))

(assert (=> b!6376098 (= e!3870829 e!3870832)))

(assert (= (and d!1999553 c!1161473) b!6376094))

(assert (= (and d!1999553 (not c!1161473)) b!6376093))

(assert (= (and b!6376093 c!1161477) b!6376096))

(assert (= (and b!6376093 (not c!1161477)) b!6376098))

(assert (= (and b!6376098 res!2622829) b!6376089))

(assert (= (and b!6376098 c!1161474) b!6376090))

(assert (= (and b!6376098 (not c!1161474)) b!6376091))

(assert (= (and b!6376091 c!1161475) b!6376095))

(assert (= (and b!6376091 (not c!1161475)) b!6376092))

(assert (= (and b!6376092 c!1161476) b!6376097))

(assert (= (and b!6376092 (not c!1161476)) b!6376088))

(assert (= (or b!6376095 b!6376097) bm!544707))

(assert (= (or b!6376095 b!6376097) bm!544708))

(assert (= (or b!6376090 bm!544707) bm!544709))

(assert (= (or b!6376090 bm!544708) bm!544710))

(assert (= (or b!6376096 b!6376090) bm!544706))

(assert (= (or b!6376096 bm!544710) bm!544711))

(declare-fun m!7177694 () Bool)

(assert (=> b!6376089 m!7177694))

(declare-fun m!7177696 () Bool)

(assert (=> b!6376094 m!7177696))

(declare-fun m!7177698 () Bool)

(assert (=> bm!544709 m!7177698))

(declare-fun m!7177700 () Bool)

(assert (=> bm!544711 m!7177700))

(declare-fun m!7177702 () Bool)

(assert (=> bm!544706 m!7177702))

(assert (=> bm!544518 d!1999553))

(declare-fun bs!1596464 () Bool)

(declare-fun d!1999555 () Bool)

(assert (= bs!1596464 (and d!1999555 d!1999349)))

(declare-fun lambda!351542 () Int)

(assert (=> bs!1596464 (= lambda!351542 lambda!351515)))

(declare-fun bs!1596465 () Bool)

(assert (= bs!1596465 (and d!1999555 d!1999249)))

(assert (=> bs!1596465 (= lambda!351542 lambda!351486)))

(declare-fun bs!1596466 () Bool)

(assert (= bs!1596466 (and d!1999555 d!1999529)))

(assert (=> bs!1596466 (= lambda!351542 lambda!351538)))

(declare-fun bs!1596467 () Bool)

(assert (= bs!1596467 (and d!1999555 d!1999347)))

(assert (=> bs!1596467 (= lambda!351542 lambda!351514)))

(declare-fun bs!1596468 () Bool)

(assert (= bs!1596468 (and d!1999555 d!1999307)))

(assert (=> bs!1596468 (= lambda!351542 lambda!351499)))

(declare-fun bs!1596469 () Bool)

(assert (= bs!1596469 (and d!1999555 d!1999527)))

(assert (=> bs!1596469 (= lambda!351542 lambda!351537)))

(declare-fun bs!1596470 () Bool)

(assert (= bs!1596470 (and d!1999555 d!1999345)))

(assert (=> bs!1596470 (= lambda!351542 lambda!351511)))

(declare-fun bs!1596471 () Bool)

(assert (= bs!1596471 (and d!1999555 d!1999221)))

(assert (=> bs!1596471 (= lambda!351542 lambda!351478)))

(declare-fun bs!1596472 () Bool)

(assert (= bs!1596472 (and d!1999555 d!1999489)))

(assert (=> bs!1596472 (= lambda!351542 lambda!351534)))

(declare-fun b!6376114 () Bool)

(declare-fun e!3870850 () Bool)

(declare-fun lt!2369156 () Regex!16287)

(assert (=> b!6376114 (= e!3870850 (isEmptyExpr!1689 lt!2369156))))

(declare-fun b!6376115 () Bool)

(declare-fun e!3870847 () Bool)

(assert (=> b!6376115 (= e!3870847 (isConcat!1212 lt!2369156))))

(declare-fun b!6376116 () Bool)

(declare-fun e!3870851 () Regex!16287)

(assert (=> b!6376116 (= e!3870851 EmptyExpr!16287)))

(declare-fun b!6376117 () Bool)

(assert (=> b!6376117 (= e!3870851 (Concat!25132 (h!71484 (t!378762 (exprs!6171 (h!71485 zl!343)))) (generalisedConcat!1884 (t!378762 (t!378762 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun b!6376118 () Bool)

(declare-fun e!3870848 () Bool)

(assert (=> b!6376118 (= e!3870848 e!3870850)))

(declare-fun c!1161483 () Bool)

(assert (=> b!6376118 (= c!1161483 (isEmpty!37158 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6376119 () Bool)

(assert (=> b!6376119 (= e!3870847 (= lt!2369156 (head!13067 (t!378762 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6376120 () Bool)

(declare-fun e!3870849 () Bool)

(assert (=> b!6376120 (= e!3870849 (isEmpty!37158 (t!378762 (t!378762 (exprs!6171 (h!71485 zl!343))))))))

(declare-fun b!6376113 () Bool)

(declare-fun e!3870846 () Regex!16287)

(assert (=> b!6376113 (= e!3870846 (h!71484 (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> d!1999555 e!3870848))

(declare-fun res!2622840 () Bool)

(assert (=> d!1999555 (=> (not res!2622840) (not e!3870848))))

(assert (=> d!1999555 (= res!2622840 (validRegex!8023 lt!2369156))))

(assert (=> d!1999555 (= lt!2369156 e!3870846)))

(declare-fun c!1161482 () Bool)

(assert (=> d!1999555 (= c!1161482 e!3870849)))

(declare-fun res!2622841 () Bool)

(assert (=> d!1999555 (=> (not res!2622841) (not e!3870849))))

(assert (=> d!1999555 (= res!2622841 ((_ is Cons!65036) (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> d!1999555 (forall!15465 (t!378762 (exprs!6171 (h!71485 zl!343))) lambda!351542)))

(assert (=> d!1999555 (= (generalisedConcat!1884 (t!378762 (exprs!6171 (h!71485 zl!343)))) lt!2369156)))

(declare-fun b!6376121 () Bool)

(assert (=> b!6376121 (= e!3870846 e!3870851)))

(declare-fun c!1161480 () Bool)

(assert (=> b!6376121 (= c!1161480 ((_ is Cons!65036) (t!378762 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6376122 () Bool)

(assert (=> b!6376122 (= e!3870850 e!3870847)))

(declare-fun c!1161481 () Bool)

(assert (=> b!6376122 (= c!1161481 (isEmpty!37158 (tail!12152 (t!378762 (exprs!6171 (h!71485 zl!343))))))))

(assert (= (and d!1999555 res!2622841) b!6376120))

(assert (= (and d!1999555 c!1161482) b!6376113))

(assert (= (and d!1999555 (not c!1161482)) b!6376121))

(assert (= (and b!6376121 c!1161480) b!6376117))

(assert (= (and b!6376121 (not c!1161480)) b!6376116))

(assert (= (and d!1999555 res!2622840) b!6376118))

(assert (= (and b!6376118 c!1161483) b!6376114))

(assert (= (and b!6376118 (not c!1161483)) b!6376122))

(assert (= (and b!6376122 c!1161481) b!6376119))

(assert (= (and b!6376122 (not c!1161481)) b!6376115))

(declare-fun m!7177704 () Bool)

(assert (=> b!6376119 m!7177704))

(declare-fun m!7177706 () Bool)

(assert (=> b!6376117 m!7177706))

(assert (=> b!6376118 m!7176770))

(declare-fun m!7177708 () Bool)

(assert (=> b!6376122 m!7177708))

(assert (=> b!6376122 m!7177708))

(declare-fun m!7177710 () Bool)

(assert (=> b!6376122 m!7177710))

(declare-fun m!7177712 () Bool)

(assert (=> b!6376120 m!7177712))

(declare-fun m!7177714 () Bool)

(assert (=> b!6376115 m!7177714))

(declare-fun m!7177716 () Bool)

(assert (=> b!6376114 m!7177716))

(declare-fun m!7177718 () Bool)

(assert (=> d!1999555 m!7177718))

(declare-fun m!7177720 () Bool)

(assert (=> d!1999555 m!7177720))

(assert (=> b!6375291 d!1999555))

(declare-fun d!1999557 () Bool)

(assert (=> d!1999557 true))

(assert (=> d!1999557 true))

(declare-fun res!2622842 () Bool)

(assert (=> d!1999557 (= (choose!47398 lambda!351450) res!2622842)))

(assert (=> d!1999313 d!1999557))

(declare-fun b!6376131 () Bool)

(declare-fun e!3870860 () (InoxSet Context!11342))

(assert (=> b!6376131 (= e!3870860 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376132 () Bool)

(declare-fun e!3870859 () (InoxSet Context!11342))

(assert (=> b!6376132 (= e!3870859 e!3870860)))

(declare-fun c!1161486 () Bool)

(assert (=> b!6376132 (= c!1161486 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028))))))))

(declare-fun b!6376133 () Bool)

(declare-fun call!544723 () (InoxSet Context!11342))

(assert (=> b!6376133 (= e!3870859 ((_ map or) call!544723 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028)))))) (h!71486 s!2326))))))

(declare-fun b!6376134 () Bool)

(assert (=> b!6376134 (= e!3870860 call!544723)))

(declare-fun bm!544718 () Bool)

(assert (=> bm!544718 (= call!544723 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028)))))) (h!71486 s!2326)))))

(declare-fun d!1999559 () Bool)

(declare-fun c!1161485 () Bool)

(declare-fun e!3870858 () Bool)

(assert (=> d!1999559 (= c!1161485 e!3870858)))

(declare-fun res!2622848 () Bool)

(assert (=> d!1999559 (=> (not res!2622848) (not e!3870858))))

(assert (=> d!1999559 (= res!2622848 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028))))))))

(assert (=> d!1999559 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (h!71486 s!2326)) e!3870859)))

(declare-fun b!6376130 () Bool)

(assert (=> b!6376130 (= e!3870858 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028)))))))))

(assert (= (and d!1999559 res!2622848) b!6376130))

(assert (= (and d!1999559 c!1161485) b!6376133))

(assert (= (and d!1999559 (not c!1161485)) b!6376132))

(assert (= (and b!6376132 c!1161486) b!6376134))

(assert (= (and b!6376132 (not c!1161486)) b!6376131))

(assert (= (or b!6376133 b!6376134) bm!544718))

(declare-fun m!7177724 () Bool)

(assert (=> b!6376133 m!7177724))

(declare-fun m!7177728 () Bool)

(assert (=> bm!544718 m!7177728))

(declare-fun m!7177730 () Bool)

(assert (=> b!6376130 m!7177730))

(assert (=> b!6375205 d!1999559))

(declare-fun d!1999561 () Bool)

(assert (=> d!1999561 (= (nullable!6280 (h!71484 (exprs!6171 lt!2369040))) (nullableFct!2226 (h!71484 (exprs!6171 lt!2369040))))))

(declare-fun bs!1596473 () Bool)

(assert (= bs!1596473 d!1999561))

(declare-fun m!7177732 () Bool)

(assert (=> bs!1596473 m!7177732))

(assert (=> b!6375565 d!1999561))

(declare-fun d!1999565 () Bool)

(declare-fun c!1161487 () Bool)

(assert (=> d!1999565 (= c!1161487 (isEmpty!37161 (tail!12151 (t!378764 s!2326))))))

(declare-fun e!3870863 () Bool)

(assert (=> d!1999565 (= (matchZipper!2299 (derivationStepZipper!2253 ((_ map or) lt!2369020 lt!2369036) (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))) e!3870863)))

(declare-fun b!6376137 () Bool)

(assert (=> b!6376137 (= e!3870863 (nullableZipper!2053 (derivationStepZipper!2253 ((_ map or) lt!2369020 lt!2369036) (head!13066 (t!378764 s!2326)))))))

(declare-fun b!6376138 () Bool)

(assert (=> b!6376138 (= e!3870863 (matchZipper!2299 (derivationStepZipper!2253 (derivationStepZipper!2253 ((_ map or) lt!2369020 lt!2369036) (head!13066 (t!378764 s!2326))) (head!13066 (tail!12151 (t!378764 s!2326)))) (tail!12151 (tail!12151 (t!378764 s!2326)))))))

(assert (= (and d!1999565 c!1161487) b!6376137))

(assert (= (and d!1999565 (not c!1161487)) b!6376138))

(assert (=> d!1999565 m!7176826))

(declare-fun m!7177738 () Bool)

(assert (=> d!1999565 m!7177738))

(assert (=> b!6376137 m!7177214))

(declare-fun m!7177740 () Bool)

(assert (=> b!6376137 m!7177740))

(assert (=> b!6376138 m!7176826))

(declare-fun m!7177742 () Bool)

(assert (=> b!6376138 m!7177742))

(assert (=> b!6376138 m!7177214))

(assert (=> b!6376138 m!7177742))

(declare-fun m!7177744 () Bool)

(assert (=> b!6376138 m!7177744))

(assert (=> b!6376138 m!7176826))

(declare-fun m!7177746 () Bool)

(assert (=> b!6376138 m!7177746))

(assert (=> b!6376138 m!7177744))

(assert (=> b!6376138 m!7177746))

(declare-fun m!7177748 () Bool)

(assert (=> b!6376138 m!7177748))

(assert (=> b!6375564 d!1999565))

(declare-fun bs!1596474 () Bool)

(declare-fun d!1999569 () Bool)

(assert (= bs!1596474 (and d!1999569 b!6374913)))

(declare-fun lambda!351543 () Int)

(assert (=> bs!1596474 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351543 lambda!351451))))

(declare-fun bs!1596475 () Bool)

(assert (= bs!1596475 (and d!1999569 d!1999189)))

(assert (=> bs!1596475 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351543 lambda!351467))))

(assert (=> d!1999569 true))

(assert (=> d!1999569 (= (derivationStepZipper!2253 ((_ map or) lt!2369020 lt!2369036) (head!13066 (t!378764 s!2326))) (flatMap!1792 ((_ map or) lt!2369020 lt!2369036) lambda!351543))))

(declare-fun bs!1596476 () Bool)

(assert (= bs!1596476 d!1999569))

(declare-fun m!7177750 () Bool)

(assert (=> bs!1596476 m!7177750))

(assert (=> b!6375564 d!1999569))

(declare-fun d!1999571 () Bool)

(assert (=> d!1999571 (= (head!13066 (t!378764 s!2326)) (h!71486 (t!378764 s!2326)))))

(assert (=> b!6375564 d!1999571))

(declare-fun d!1999573 () Bool)

(assert (=> d!1999573 (= (tail!12151 (t!378764 s!2326)) (t!378764 (t!378764 s!2326)))))

(assert (=> b!6375564 d!1999573))

(declare-fun d!1999575 () Bool)

(assert (=> d!1999575 (= (isDefined!12881 lt!2369120) (not (isEmpty!37162 lt!2369120)))))

(declare-fun bs!1596477 () Bool)

(assert (= bs!1596477 d!1999575))

(declare-fun m!7177754 () Bool)

(assert (=> bs!1596477 m!7177754))

(assert (=> b!6375539 d!1999575))

(declare-fun d!1999577 () Bool)

(assert (=> d!1999577 (= ($colon$colon!2148 (exprs!6171 lt!2369028) (ite (or c!1161201 c!1161202) (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (regOne!33086 r!7292)))) (Cons!65036 (ite (or c!1161201 c!1161202) (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (regOne!33086 r!7292))) (exprs!6171 lt!2369028)))))

(assert (=> bm!544555 d!1999577))

(declare-fun d!1999579 () Bool)

(assert (=> d!1999579 (= (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (nullableFct!2226 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(declare-fun bs!1596478 () Bool)

(assert (= bs!1596478 d!1999579))

(declare-fun m!7177764 () Bool)

(assert (=> bs!1596478 m!7177764))

(assert (=> b!6375570 d!1999579))

(declare-fun d!1999583 () Bool)

(assert (=> d!1999583 (= (isUnion!1125 lt!2369136) ((_ is Union!16287) lt!2369136))))

(assert (=> b!6375614 d!1999583))

(declare-fun d!1999587 () Bool)

(assert (=> d!1999587 (= (isEmpty!37158 (tail!12152 (exprs!6171 (h!71485 zl!343)))) ((_ is Nil!65036) (tail!12152 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> b!6375296 d!1999587))

(declare-fun d!1999591 () Bool)

(assert (=> d!1999591 (= (tail!12152 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))

(assert (=> b!6375296 d!1999591))

(assert (=> d!1999297 d!1999409))

(assert (=> d!1999297 d!1999211))

(assert (=> d!1999315 d!1999309))

(assert (=> d!1999315 d!1999477))

(assert (=> d!1999315 d!1999319))

(declare-fun d!1999595 () Bool)

(assert (=> d!1999595 (= (Exists!3357 lambda!351502) (choose!47398 lambda!351502))))

(declare-fun bs!1596481 () Bool)

(assert (= bs!1596481 d!1999595))

(declare-fun m!7177768 () Bool)

(assert (=> bs!1596481 m!7177768))

(assert (=> d!1999315 d!1999595))

(declare-fun bs!1596492 () Bool)

(declare-fun d!1999597 () Bool)

(assert (= bs!1596492 (and d!1999597 d!1999469)))

(declare-fun lambda!351549 () Int)

(assert (=> bs!1596492 (not (= lambda!351549 lambda!351533))))

(declare-fun bs!1596493 () Bool)

(assert (= bs!1596493 (and d!1999597 b!6374910)))

(assert (=> bs!1596493 (= lambda!351549 lambda!351449)))

(declare-fun bs!1596494 () Bool)

(assert (= bs!1596494 (and d!1999597 d!1999315)))

(assert (=> bs!1596494 (= lambda!351549 lambda!351502)))

(declare-fun bs!1596495 () Bool)

(assert (= bs!1596495 (and d!1999597 d!1999317)))

(assert (=> bs!1596495 (= lambda!351549 lambda!351507)))

(declare-fun bs!1596496 () Bool)

(assert (= bs!1596496 (and d!1999597 b!6375426)))

(assert (=> bs!1596496 (not (= lambda!351549 lambda!351498))))

(assert (=> bs!1596495 (not (= lambda!351549 lambda!351508))))

(assert (=> bs!1596493 (not (= lambda!351549 lambda!351450))))

(declare-fun bs!1596497 () Bool)

(assert (= bs!1596497 (and d!1999597 b!6375422)))

(assert (=> bs!1596497 (not (= lambda!351549 lambda!351497))))

(assert (=> bs!1596492 (= lambda!351549 lambda!351532)))

(assert (=> d!1999597 true))

(assert (=> d!1999597 true))

(assert (=> d!1999597 true))

(assert (=> d!1999597 (= (isDefined!12881 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326)) (Exists!3357 lambda!351549))))

(assert (=> d!1999597 true))

(declare-fun _$89!2617 () Unit!158479)

(assert (=> d!1999597 (= (choose!47399 (regOne!33086 r!7292) (regTwo!33086 r!7292) s!2326) _$89!2617)))

(declare-fun bs!1596498 () Bool)

(assert (= bs!1596498 d!1999597))

(assert (=> bs!1596498 m!7176708))

(assert (=> bs!1596498 m!7176708))

(assert (=> bs!1596498 m!7176710))

(declare-fun m!7177810 () Bool)

(assert (=> bs!1596498 m!7177810))

(assert (=> d!1999315 d!1999597))

(declare-fun d!1999611 () Bool)

(assert (=> d!1999611 (= (isEmpty!37158 (tail!12152 (unfocusZipperList!1708 zl!343))) ((_ is Nil!65036) (tail!12152 (unfocusZipperList!1708 zl!343))))))

(assert (=> b!6375618 d!1999611))

(declare-fun d!1999613 () Bool)

(assert (=> d!1999613 (= (tail!12152 (unfocusZipperList!1708 zl!343)) (t!378762 (unfocusZipperList!1708 zl!343)))))

(assert (=> b!6375618 d!1999613))

(assert (=> d!1999321 d!1999325))

(assert (=> d!1999321 d!1999323))

(declare-fun e!3870899 () Bool)

(declare-fun d!1999615 () Bool)

(assert (=> d!1999615 (= (matchZipper!2299 ((_ map or) lt!2369020 lt!2369036) (t!378764 s!2326)) e!3870899)))

(declare-fun res!2622872 () Bool)

(assert (=> d!1999615 (=> res!2622872 e!3870899)))

(assert (=> d!1999615 (= res!2622872 (matchZipper!2299 lt!2369020 (t!378764 s!2326)))))

(assert (=> d!1999615 true))

(declare-fun _$48!2174 () Unit!158479)

(assert (=> d!1999615 (= (choose!47401 lt!2369020 lt!2369036 (t!378764 s!2326)) _$48!2174)))

(declare-fun b!6376200 () Bool)

(assert (=> b!6376200 (= e!3870899 (matchZipper!2299 lt!2369036 (t!378764 s!2326)))))

(assert (= (and d!1999615 (not res!2622872)) b!6376200))

(assert (=> d!1999615 m!7176722))

(assert (=> d!1999615 m!7176720))

(assert (=> b!6376200 m!7176768))

(assert (=> d!1999321 d!1999615))

(declare-fun b!6376201 () Bool)

(declare-fun e!3870902 () (InoxSet Context!11342))

(assert (=> b!6376201 (= e!3870902 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376202 () Bool)

(declare-fun e!3870903 () Bool)

(assert (=> b!6376202 (= e!3870903 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 lt!2369038)))))))

(declare-fun b!6376204 () Bool)

(declare-fun e!3870904 () (InoxSet Context!11342))

(declare-fun e!3870905 () (InoxSet Context!11342))

(assert (=> b!6376204 (= e!3870904 e!3870905)))

(declare-fun c!1161510 () Bool)

(assert (=> b!6376204 (= c!1161510 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369038))))))

(declare-fun call!544739 () List!65160)

(declare-fun call!544738 () (InoxSet Context!11342))

(declare-fun bm!544732 () Bool)

(declare-fun c!1161512 () Bool)

(assert (=> bm!544732 (= call!544738 (derivationStepZipperDown!1535 (ite c!1161512 (regTwo!33087 (h!71484 (exprs!6171 lt!2369038))) (regOne!33086 (h!71484 (exprs!6171 lt!2369038)))) (ite c!1161512 (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (Context!11343 call!544739)) (h!71486 s!2326)))))

(declare-fun b!6376205 () Bool)

(declare-fun c!1161511 () Bool)

(assert (=> b!6376205 (= c!1161511 ((_ is Star!16287) (h!71484 (exprs!6171 lt!2369038))))))

(assert (=> b!6376205 (= e!3870905 e!3870902)))

(declare-fun bm!544733 () Bool)

(declare-fun call!544742 () List!65160)

(assert (=> bm!544733 (= call!544742 call!544739)))

(declare-fun bm!544734 () Bool)

(declare-fun call!544741 () (InoxSet Context!11342))

(declare-fun call!544737 () (InoxSet Context!11342))

(assert (=> bm!544734 (= call!544741 call!544737)))

(declare-fun b!6376206 () Bool)

(declare-fun e!3870900 () (InoxSet Context!11342))

(declare-fun e!3870901 () (InoxSet Context!11342))

(assert (=> b!6376206 (= e!3870900 e!3870901)))

(assert (=> b!6376206 (= c!1161512 ((_ is Union!16287) (h!71484 (exprs!6171 lt!2369038))))))

(declare-fun b!6376207 () Bool)

(assert (=> b!6376207 (= e!3870900 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 lt!2369038))) true))))

(declare-fun bm!544735 () Bool)

(declare-fun c!1161509 () Bool)

(assert (=> bm!544735 (= call!544739 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038)))) (ite (or c!1161509 c!1161510) (regTwo!33086 (h!71484 (exprs!6171 lt!2369038))) (h!71484 (exprs!6171 lt!2369038)))))))

(declare-fun b!6376208 () Bool)

(assert (=> b!6376208 (= e!3870905 call!544741)))

(declare-fun d!1999621 () Bool)

(declare-fun c!1161508 () Bool)

(assert (=> d!1999621 (= c!1161508 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 lt!2369038))) (= (c!1161140 (h!71484 (exprs!6171 lt!2369038))) (h!71486 s!2326))))))

(assert (=> d!1999621 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369038)) (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (h!71486 s!2326)) e!3870900)))

(declare-fun b!6376203 () Bool)

(assert (=> b!6376203 (= e!3870904 ((_ map or) call!544738 call!544737))))

(declare-fun b!6376209 () Bool)

(declare-fun call!544740 () (InoxSet Context!11342))

(assert (=> b!6376209 (= e!3870901 ((_ map or) call!544740 call!544738))))

(declare-fun b!6376210 () Bool)

(assert (=> b!6376210 (= e!3870902 call!544741)))

(declare-fun bm!544736 () Bool)

(assert (=> bm!544736 (= call!544737 call!544740)))

(declare-fun bm!544737 () Bool)

(assert (=> bm!544737 (= call!544740 (derivationStepZipperDown!1535 (ite c!1161512 (regOne!33087 (h!71484 (exprs!6171 lt!2369038))) (ite c!1161509 (regTwo!33086 (h!71484 (exprs!6171 lt!2369038))) (ite c!1161510 (regOne!33086 (h!71484 (exprs!6171 lt!2369038))) (reg!16616 (h!71484 (exprs!6171 lt!2369038)))))) (ite (or c!1161512 c!1161509) (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (Context!11343 call!544742)) (h!71486 s!2326)))))

(declare-fun b!6376211 () Bool)

(assert (=> b!6376211 (= c!1161509 e!3870903)))

(declare-fun res!2622873 () Bool)

(assert (=> b!6376211 (=> (not res!2622873) (not e!3870903))))

(assert (=> b!6376211 (= res!2622873 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369038))))))

(assert (=> b!6376211 (= e!3870901 e!3870904)))

(assert (= (and d!1999621 c!1161508) b!6376207))

(assert (= (and d!1999621 (not c!1161508)) b!6376206))

(assert (= (and b!6376206 c!1161512) b!6376209))

(assert (= (and b!6376206 (not c!1161512)) b!6376211))

(assert (= (and b!6376211 res!2622873) b!6376202))

(assert (= (and b!6376211 c!1161509) b!6376203))

(assert (= (and b!6376211 (not c!1161509)) b!6376204))

(assert (= (and b!6376204 c!1161510) b!6376208))

(assert (= (and b!6376204 (not c!1161510)) b!6376205))

(assert (= (and b!6376205 c!1161511) b!6376210))

(assert (= (and b!6376205 (not c!1161511)) b!6376201))

(assert (= (or b!6376208 b!6376210) bm!544733))

(assert (= (or b!6376208 b!6376210) bm!544734))

(assert (= (or b!6376203 bm!544733) bm!544735))

(assert (= (or b!6376203 bm!544734) bm!544736))

(assert (= (or b!6376209 b!6376203) bm!544732))

(assert (= (or b!6376209 bm!544736) bm!544737))

(declare-fun m!7177840 () Bool)

(assert (=> b!6376202 m!7177840))

(declare-fun m!7177842 () Bool)

(assert (=> b!6376207 m!7177842))

(declare-fun m!7177844 () Bool)

(assert (=> bm!544735 m!7177844))

(declare-fun m!7177846 () Bool)

(assert (=> bm!544737 m!7177846))

(declare-fun m!7177848 () Bool)

(assert (=> bm!544732 m!7177848))

(assert (=> bm!544574 d!1999621))

(assert (=> bs!1596365 d!1999177))

(declare-fun d!1999623 () Bool)

(declare-fun c!1161513 () Bool)

(assert (=> d!1999623 (= c!1161513 (isEmpty!37161 (tail!12151 (t!378764 s!2326))))))

(declare-fun e!3870906 () Bool)

(assert (=> d!1999623 (= (matchZipper!2299 (derivationStepZipper!2253 lt!2369020 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))) e!3870906)))

(declare-fun b!6376212 () Bool)

(assert (=> b!6376212 (= e!3870906 (nullableZipper!2053 (derivationStepZipper!2253 lt!2369020 (head!13066 (t!378764 s!2326)))))))

(declare-fun b!6376213 () Bool)

(assert (=> b!6376213 (= e!3870906 (matchZipper!2299 (derivationStepZipper!2253 (derivationStepZipper!2253 lt!2369020 (head!13066 (t!378764 s!2326))) (head!13066 (tail!12151 (t!378764 s!2326)))) (tail!12151 (tail!12151 (t!378764 s!2326)))))))

(assert (= (and d!1999623 c!1161513) b!6376212))

(assert (= (and d!1999623 (not c!1161513)) b!6376213))

(assert (=> d!1999623 m!7176826))

(assert (=> d!1999623 m!7177738))

(assert (=> b!6376212 m!7177208))

(declare-fun m!7177850 () Bool)

(assert (=> b!6376212 m!7177850))

(assert (=> b!6376213 m!7176826))

(assert (=> b!6376213 m!7177742))

(assert (=> b!6376213 m!7177208))

(assert (=> b!6376213 m!7177742))

(declare-fun m!7177854 () Bool)

(assert (=> b!6376213 m!7177854))

(assert (=> b!6376213 m!7176826))

(assert (=> b!6376213 m!7177746))

(assert (=> b!6376213 m!7177854))

(assert (=> b!6376213 m!7177746))

(declare-fun m!7177858 () Bool)

(assert (=> b!6376213 m!7177858))

(assert (=> b!6375562 d!1999623))

(declare-fun bs!1596500 () Bool)

(declare-fun d!1999627 () Bool)

(assert (= bs!1596500 (and d!1999627 b!6374913)))

(declare-fun lambda!351550 () Int)

(assert (=> bs!1596500 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351550 lambda!351451))))

(declare-fun bs!1596501 () Bool)

(assert (= bs!1596501 (and d!1999627 d!1999189)))

(assert (=> bs!1596501 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351550 lambda!351467))))

(declare-fun bs!1596502 () Bool)

(assert (= bs!1596502 (and d!1999627 d!1999569)))

(assert (=> bs!1596502 (= lambda!351550 lambda!351543)))

(assert (=> d!1999627 true))

(assert (=> d!1999627 (= (derivationStepZipper!2253 lt!2369020 (head!13066 (t!378764 s!2326))) (flatMap!1792 lt!2369020 lambda!351550))))

(declare-fun bs!1596503 () Bool)

(assert (= bs!1596503 d!1999627))

(declare-fun m!7177860 () Bool)

(assert (=> bs!1596503 m!7177860))

(assert (=> b!6375562 d!1999627))

(assert (=> b!6375562 d!1999571))

(assert (=> b!6375562 d!1999573))

(assert (=> d!1999309 d!1999575))

(declare-fun b!6376223 () Bool)

(declare-fun res!2622885 () Bool)

(declare-fun e!3870917 () Bool)

(assert (=> b!6376223 (=> (not res!2622885) (not e!3870917))))

(declare-fun call!544743 () Bool)

(assert (=> b!6376223 (= res!2622885 (not call!544743))))

(declare-fun b!6376224 () Bool)

(declare-fun e!3870918 () Bool)

(declare-fun lt!2369168 () Bool)

(assert (=> b!6376224 (= e!3870918 (= lt!2369168 call!544743))))

(declare-fun b!6376225 () Bool)

(declare-fun e!3870915 () Bool)

(assert (=> b!6376225 (= e!3870918 e!3870915)))

(declare-fun c!1161518 () Bool)

(assert (=> b!6376225 (= c!1161518 ((_ is EmptyLang!16287) (regOne!33086 r!7292)))))

(declare-fun b!6376226 () Bool)

(declare-fun e!3870912 () Bool)

(assert (=> b!6376226 (= e!3870912 (nullable!6280 (regOne!33086 r!7292)))))

(declare-fun b!6376227 () Bool)

(declare-fun e!3870916 () Bool)

(declare-fun e!3870914 () Bool)

(assert (=> b!6376227 (= e!3870916 e!3870914)))

(declare-fun res!2622881 () Bool)

(assert (=> b!6376227 (=> (not res!2622881) (not e!3870914))))

(assert (=> b!6376227 (= res!2622881 (not lt!2369168))))

(declare-fun b!6376228 () Bool)

(declare-fun res!2622886 () Bool)

(assert (=> b!6376228 (=> res!2622886 e!3870916)))

(assert (=> b!6376228 (= res!2622886 e!3870917)))

(declare-fun res!2622880 () Bool)

(assert (=> b!6376228 (=> (not res!2622880) (not e!3870917))))

(assert (=> b!6376228 (= res!2622880 lt!2369168)))

(declare-fun bm!544738 () Bool)

(assert (=> bm!544738 (= call!544743 (isEmpty!37161 Nil!65038))))

(declare-fun b!6376229 () Bool)

(declare-fun res!2622883 () Bool)

(declare-fun e!3870913 () Bool)

(assert (=> b!6376229 (=> res!2622883 e!3870913)))

(assert (=> b!6376229 (= res!2622883 (not (isEmpty!37161 (tail!12151 Nil!65038))))))

(declare-fun d!1999629 () Bool)

(assert (=> d!1999629 e!3870918))

(declare-fun c!1161516 () Bool)

(assert (=> d!1999629 (= c!1161516 ((_ is EmptyExpr!16287) (regOne!33086 r!7292)))))

(assert (=> d!1999629 (= lt!2369168 e!3870912)))

(declare-fun c!1161517 () Bool)

(assert (=> d!1999629 (= c!1161517 (isEmpty!37161 Nil!65038))))

(assert (=> d!1999629 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999629 (= (matchR!8470 (regOne!33086 r!7292) Nil!65038) lt!2369168)))

(declare-fun b!6376230 () Bool)

(declare-fun res!2622884 () Bool)

(assert (=> b!6376230 (=> (not res!2622884) (not e!3870917))))

(assert (=> b!6376230 (= res!2622884 (isEmpty!37161 (tail!12151 Nil!65038)))))

(declare-fun b!6376231 () Bool)

(assert (=> b!6376231 (= e!3870913 (not (= (head!13066 Nil!65038) (c!1161140 (regOne!33086 r!7292)))))))

(declare-fun b!6376232 () Bool)

(declare-fun res!2622882 () Bool)

(assert (=> b!6376232 (=> res!2622882 e!3870916)))

(assert (=> b!6376232 (= res!2622882 (not ((_ is ElementMatch!16287) (regOne!33086 r!7292))))))

(assert (=> b!6376232 (= e!3870915 e!3870916)))

(declare-fun b!6376233 () Bool)

(assert (=> b!6376233 (= e!3870912 (matchR!8470 (derivativeStep!4991 (regOne!33086 r!7292) (head!13066 Nil!65038)) (tail!12151 Nil!65038)))))

(declare-fun b!6376234 () Bool)

(assert (=> b!6376234 (= e!3870914 e!3870913)))

(declare-fun res!2622879 () Bool)

(assert (=> b!6376234 (=> res!2622879 e!3870913)))

(assert (=> b!6376234 (= res!2622879 call!544743)))

(declare-fun b!6376235 () Bool)

(assert (=> b!6376235 (= e!3870915 (not lt!2369168))))

(declare-fun b!6376236 () Bool)

(assert (=> b!6376236 (= e!3870917 (= (head!13066 Nil!65038) (c!1161140 (regOne!33086 r!7292))))))

(assert (= (and d!1999629 c!1161517) b!6376226))

(assert (= (and d!1999629 (not c!1161517)) b!6376233))

(assert (= (and d!1999629 c!1161516) b!6376224))

(assert (= (and d!1999629 (not c!1161516)) b!6376225))

(assert (= (and b!6376225 c!1161518) b!6376235))

(assert (= (and b!6376225 (not c!1161518)) b!6376232))

(assert (= (and b!6376232 (not res!2622882)) b!6376228))

(assert (= (and b!6376228 res!2622880) b!6376223))

(assert (= (and b!6376223 res!2622885) b!6376230))

(assert (= (and b!6376230 res!2622884) b!6376236))

(assert (= (and b!6376228 (not res!2622886)) b!6376227))

(assert (= (and b!6376227 res!2622881) b!6376234))

(assert (= (and b!6376234 (not res!2622879)) b!6376229))

(assert (= (and b!6376229 (not res!2622883)) b!6376231))

(assert (= (or b!6376224 b!6376223 b!6376234) bm!544738))

(declare-fun m!7177874 () Bool)

(assert (=> b!6376231 m!7177874))

(assert (=> b!6376233 m!7177874))

(assert (=> b!6376233 m!7177874))

(declare-fun m!7177878 () Bool)

(assert (=> b!6376233 m!7177878))

(declare-fun m!7177880 () Bool)

(assert (=> b!6376233 m!7177880))

(assert (=> b!6376233 m!7177878))

(assert (=> b!6376233 m!7177880))

(declare-fun m!7177884 () Bool)

(assert (=> b!6376233 m!7177884))

(assert (=> b!6376229 m!7177880))

(assert (=> b!6376229 m!7177880))

(declare-fun m!7177888 () Bool)

(assert (=> b!6376229 m!7177888))

(declare-fun m!7177890 () Bool)

(assert (=> bm!544738 m!7177890))

(assert (=> b!6376226 m!7177686))

(assert (=> b!6376230 m!7177880))

(assert (=> b!6376230 m!7177880))

(assert (=> b!6376230 m!7177888))

(assert (=> d!1999629 m!7177890))

(assert (=> d!1999629 m!7177184))

(assert (=> b!6376236 m!7177874))

(assert (=> d!1999309 d!1999629))

(assert (=> d!1999309 d!1999477))

(declare-fun d!1999631 () Bool)

(assert (=> d!1999631 (= (isEmpty!37158 (t!378762 (unfocusZipperList!1708 zl!343))) ((_ is Nil!65036) (t!378762 (unfocusZipperList!1708 zl!343))))))

(assert (=> b!6375623 d!1999631))

(assert (=> d!1999171 d!1999409))

(declare-fun bs!1596505 () Bool)

(declare-fun d!1999635 () Bool)

(assert (= bs!1596505 (and d!1999635 d!1999453)))

(declare-fun lambda!351551 () Int)

(assert (=> bs!1596505 (= lambda!351551 lambda!351527)))

(declare-fun bs!1596506 () Bool)

(assert (= bs!1596506 (and d!1999635 d!1999505)))

(assert (=> bs!1596506 (= lambda!351551 lambda!351536)))

(assert (=> d!1999635 (= (nullableZipper!2053 lt!2369027) (exists!2583 lt!2369027 lambda!351551))))

(declare-fun bs!1596507 () Bool)

(assert (= bs!1596507 d!1999635))

(declare-fun m!7177898 () Bool)

(assert (=> bs!1596507 m!7177898))

(assert (=> b!6374984 d!1999635))

(assert (=> d!1999333 d!1999339))

(declare-fun d!1999639 () Bool)

(assert (=> d!1999639 (= (flatMap!1792 z!1189 lambda!351451) (dynLambda!25803 lambda!351451 (h!71485 zl!343)))))

(assert (=> d!1999639 true))

(declare-fun _$13!3558 () Unit!158479)

(assert (=> d!1999639 (= (choose!47394 z!1189 (h!71485 zl!343) lambda!351451) _$13!3558)))

(declare-fun b_lambda!242291 () Bool)

(assert (=> (not b_lambda!242291) (not d!1999639)))

(declare-fun bs!1596508 () Bool)

(assert (= bs!1596508 d!1999639))

(assert (=> bs!1596508 m!7176702))

(assert (=> bs!1596508 m!7177230))

(assert (=> d!1999333 d!1999639))

(declare-fun b!6376257 () Bool)

(declare-fun res!2622895 () Bool)

(declare-fun e!3870938 () Bool)

(assert (=> b!6376257 (=> (not res!2622895) (not e!3870938))))

(declare-fun call!544754 () Bool)

(assert (=> b!6376257 (= res!2622895 call!544754)))

(declare-fun e!3870936 () Bool)

(assert (=> b!6376257 (= e!3870936 e!3870938)))

(declare-fun bm!544748 () Bool)

(declare-fun c!1161526 () Bool)

(declare-fun call!544755 () Bool)

(declare-fun c!1161527 () Bool)

(assert (=> bm!544748 (= call!544755 (validRegex!8023 (ite c!1161527 (reg!16616 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))) (ite c!1161526 (regOne!33087 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))) (regOne!33086 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292))))))))))

(declare-fun b!6376258 () Bool)

(declare-fun e!3870934 () Bool)

(declare-fun e!3870932 () Bool)

(assert (=> b!6376258 (= e!3870934 e!3870932)))

(declare-fun res!2622894 () Bool)

(assert (=> b!6376258 (= res!2622894 (not (nullable!6280 (reg!16616 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))))

(assert (=> b!6376258 (=> (not res!2622894) (not e!3870932))))

(declare-fun b!6376259 () Bool)

(declare-fun e!3870935 () Bool)

(declare-fun e!3870937 () Bool)

(assert (=> b!6376259 (= e!3870935 e!3870937)))

(declare-fun res!2622897 () Bool)

(assert (=> b!6376259 (=> (not res!2622897) (not e!3870937))))

(assert (=> b!6376259 (= res!2622897 call!544754)))

(declare-fun b!6376260 () Bool)

(declare-fun call!544753 () Bool)

(assert (=> b!6376260 (= e!3870937 call!544753)))

(declare-fun b!6376261 () Bool)

(assert (=> b!6376261 (= e!3870938 call!544753)))

(declare-fun bm!544749 () Bool)

(assert (=> bm!544749 (= call!544754 call!544755)))

(declare-fun b!6376262 () Bool)

(assert (=> b!6376262 (= e!3870934 e!3870936)))

(assert (=> b!6376262 (= c!1161526 ((_ is Union!16287) (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))

(declare-fun b!6376263 () Bool)

(declare-fun e!3870933 () Bool)

(assert (=> b!6376263 (= e!3870933 e!3870934)))

(assert (=> b!6376263 (= c!1161527 ((_ is Star!16287) (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))

(declare-fun b!6376264 () Bool)

(declare-fun res!2622896 () Bool)

(assert (=> b!6376264 (=> res!2622896 e!3870935)))

(assert (=> b!6376264 (= res!2622896 (not ((_ is Concat!25132) (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292))))))))

(assert (=> b!6376264 (= e!3870936 e!3870935)))

(declare-fun bm!544750 () Bool)

(assert (=> bm!544750 (= call!544753 (validRegex!8023 (ite c!1161526 (regTwo!33087 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))) (regTwo!33086 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))))

(declare-fun b!6376265 () Bool)

(assert (=> b!6376265 (= e!3870932 call!544755)))

(declare-fun d!1999643 () Bool)

(declare-fun res!2622893 () Bool)

(assert (=> d!1999643 (=> res!2622893 e!3870933)))

(assert (=> d!1999643 (= res!2622893 ((_ is ElementMatch!16287) (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))))))

(assert (=> d!1999643 (= (validRegex!8023 (ite c!1161231 (reg!16616 r!7292) (ite c!1161230 (regOne!33087 r!7292) (regOne!33086 r!7292)))) e!3870933)))

(assert (= (and d!1999643 (not res!2622893)) b!6376263))

(assert (= (and b!6376263 c!1161527) b!6376258))

(assert (= (and b!6376263 (not c!1161527)) b!6376262))

(assert (= (and b!6376258 res!2622894) b!6376265))

(assert (= (and b!6376262 c!1161526) b!6376257))

(assert (= (and b!6376262 (not c!1161526)) b!6376264))

(assert (= (and b!6376257 res!2622895) b!6376261))

(assert (= (and b!6376264 (not res!2622896)) b!6376259))

(assert (= (and b!6376259 res!2622897) b!6376260))

(assert (= (or b!6376261 b!6376260) bm!544750))

(assert (= (or b!6376257 b!6376259) bm!544749))

(assert (= (or b!6376265 bm!544749) bm!544748))

(declare-fun m!7177916 () Bool)

(assert (=> bm!544748 m!7177916))

(declare-fun m!7177918 () Bool)

(assert (=> b!6376258 m!7177918))

(declare-fun m!7177920 () Bool)

(assert (=> bm!544750 m!7177920))

(assert (=> bm!544570 d!1999643))

(declare-fun d!1999647 () Bool)

(assert (=> d!1999647 (= (isEmptyExpr!1689 lt!2369099) ((_ is EmptyExpr!16287) lt!2369099))))

(assert (=> b!6375288 d!1999647))

(assert (=> b!6375512 d!1999517))

(assert (=> b!6375512 d!1999521))

(declare-fun b!6376276 () Bool)

(declare-fun e!3870947 () (InoxSet Context!11342))

(assert (=> b!6376276 (= e!3870947 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376277 () Bool)

(declare-fun e!3870948 () Bool)

(assert (=> b!6376277 (= e!3870948 (nullable!6280 (regOne!33086 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))))))))

(declare-fun b!6376279 () Bool)

(declare-fun e!3870949 () (InoxSet Context!11342))

(declare-fun e!3870950 () (InoxSet Context!11342))

(assert (=> b!6376279 (= e!3870949 e!3870950)))

(declare-fun c!1161534 () Bool)

(assert (=> b!6376279 (= c!1161534 ((_ is Concat!25132) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))))

(declare-fun call!544758 () List!65160)

(declare-fun bm!544751 () Bool)

(declare-fun call!544757 () (InoxSet Context!11342))

(declare-fun c!1161536 () Bool)

(assert (=> bm!544751 (= call!544757 (derivationStepZipperDown!1535 (ite c!1161536 (regTwo!33087 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (regOne!33086 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))))) (ite c!1161536 (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619)) (Context!11343 call!544758)) (h!71486 s!2326)))))

(declare-fun c!1161535 () Bool)

(declare-fun b!6376280 () Bool)

(assert (=> b!6376280 (= c!1161535 ((_ is Star!16287) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))))

(assert (=> b!6376280 (= e!3870950 e!3870947)))

(declare-fun bm!544752 () Bool)

(declare-fun call!544761 () List!65160)

(assert (=> bm!544752 (= call!544761 call!544758)))

(declare-fun bm!544753 () Bool)

(declare-fun call!544760 () (InoxSet Context!11342))

(declare-fun call!544756 () (InoxSet Context!11342))

(assert (=> bm!544753 (= call!544760 call!544756)))

(declare-fun b!6376281 () Bool)

(declare-fun e!3870945 () (InoxSet Context!11342))

(declare-fun e!3870946 () (InoxSet Context!11342))

(assert (=> b!6376281 (= e!3870945 e!3870946)))

(assert (=> b!6376281 (= c!1161536 ((_ is Union!16287) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))))

(declare-fun b!6376282 () Bool)

(assert (=> b!6376282 (= e!3870945 (store ((as const (Array Context!11342 Bool)) false) (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619)) true))))

(declare-fun c!1161533 () Bool)

(declare-fun bm!544754 () Bool)

(assert (=> bm!544754 (= call!544758 ($colon$colon!2148 (exprs!6171 (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619))) (ite (or c!1161533 c!1161534) (regTwo!33086 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))))))))

(declare-fun b!6376283 () Bool)

(assert (=> b!6376283 (= e!3870950 call!544760)))

(declare-fun d!1999649 () Bool)

(declare-fun c!1161532 () Bool)

(assert (=> d!1999649 (= c!1161532 (and ((_ is ElementMatch!16287) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (= (c!1161140 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326))))))

(assert (=> d!1999649 (= (derivationStepZipperDown!1535 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))) (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619)) (h!71486 s!2326)) e!3870945)))

(declare-fun b!6376278 () Bool)

(assert (=> b!6376278 (= e!3870949 ((_ map or) call!544757 call!544756))))

(declare-fun b!6376284 () Bool)

(declare-fun call!544759 () (InoxSet Context!11342))

(assert (=> b!6376284 (= e!3870946 ((_ map or) call!544759 call!544757))))

(declare-fun b!6376285 () Bool)

(assert (=> b!6376285 (= e!3870947 call!544760)))

(declare-fun bm!544755 () Bool)

(assert (=> bm!544755 (= call!544756 call!544759)))

(declare-fun bm!544756 () Bool)

(assert (=> bm!544756 (= call!544759 (derivationStepZipperDown!1535 (ite c!1161536 (regOne!33087 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (ite c!1161533 (regTwo!33086 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (ite c!1161534 (regOne!33086 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))) (reg!16616 (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343))))))))))) (ite (or c!1161536 c!1161533) (ite (or c!1161333 c!1161330) lt!2369040 (Context!11343 call!544619)) (Context!11343 call!544761)) (h!71486 s!2326)))))

(declare-fun b!6376286 () Bool)

(assert (=> b!6376286 (= c!1161533 e!3870948)))

(declare-fun res!2622900 () Bool)

(assert (=> b!6376286 (=> (not res!2622900) (not e!3870948))))

(assert (=> b!6376286 (= res!2622900 ((_ is Concat!25132) (ite c!1161333 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161330 (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (ite c!1161331 (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))) (reg!16616 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))))

(assert (=> b!6376286 (= e!3870946 e!3870949)))

(assert (= (and d!1999649 c!1161532) b!6376282))

(assert (= (and d!1999649 (not c!1161532)) b!6376281))

(assert (= (and b!6376281 c!1161536) b!6376284))

(assert (= (and b!6376281 (not c!1161536)) b!6376286))

(assert (= (and b!6376286 res!2622900) b!6376277))

(assert (= (and b!6376286 c!1161533) b!6376278))

(assert (= (and b!6376286 (not c!1161533)) b!6376279))

(assert (= (and b!6376279 c!1161534) b!6376283))

(assert (= (and b!6376279 (not c!1161534)) b!6376280))

(assert (= (and b!6376280 c!1161535) b!6376285))

(assert (= (and b!6376280 (not c!1161535)) b!6376276))

(assert (= (or b!6376283 b!6376285) bm!544752))

(assert (= (or b!6376283 b!6376285) bm!544753))

(assert (= (or b!6376278 bm!544752) bm!544754))

(assert (= (or b!6376278 bm!544753) bm!544755))

(assert (= (or b!6376284 b!6376278) bm!544751))

(assert (= (or b!6376284 bm!544755) bm!544756))

(declare-fun m!7177942 () Bool)

(assert (=> b!6376277 m!7177942))

(declare-fun m!7177944 () Bool)

(assert (=> b!6376282 m!7177944))

(declare-fun m!7177946 () Bool)

(assert (=> bm!544754 m!7177946))

(declare-fun m!7177948 () Bool)

(assert (=> bm!544756 m!7177948))

(declare-fun m!7177950 () Bool)

(assert (=> bm!544751 m!7177950))

(assert (=> bm!544614 d!1999649))

(declare-fun d!1999653 () Bool)

(declare-fun res!2622905 () Bool)

(declare-fun e!3870957 () Bool)

(assert (=> d!1999653 (=> res!2622905 e!3870957)))

(assert (=> d!1999653 (= res!2622905 ((_ is Nil!65037) lt!2369133))))

(assert (=> d!1999653 (= (noDuplicate!2117 lt!2369133) e!3870957)))

(declare-fun b!6376295 () Bool)

(declare-fun e!3870958 () Bool)

(assert (=> b!6376295 (= e!3870957 e!3870958)))

(declare-fun res!2622906 () Bool)

(assert (=> b!6376295 (=> (not res!2622906) (not e!3870958))))

(declare-fun contains!20167 (List!65161 Context!11342) Bool)

(assert (=> b!6376295 (= res!2622906 (not (contains!20167 (t!378763 lt!2369133) (h!71485 lt!2369133))))))

(declare-fun b!6376296 () Bool)

(assert (=> b!6376296 (= e!3870958 (noDuplicate!2117 (t!378763 lt!2369133)))))

(assert (= (and d!1999653 (not res!2622905)) b!6376295))

(assert (= (and b!6376295 res!2622906) b!6376296))

(declare-fun m!7177964 () Bool)

(assert (=> b!6376295 m!7177964))

(declare-fun m!7177966 () Bool)

(assert (=> b!6376296 m!7177966))

(assert (=> d!1999343 d!1999653))

(declare-fun d!1999661 () Bool)

(declare-fun e!3870977 () Bool)

(assert (=> d!1999661 e!3870977))

(declare-fun res!2622917 () Bool)

(assert (=> d!1999661 (=> (not res!2622917) (not e!3870977))))

(declare-fun res!2622918 () List!65161)

(assert (=> d!1999661 (= res!2622917 (noDuplicate!2117 res!2622918))))

(declare-fun e!3870976 () Bool)

(assert (=> d!1999661 e!3870976))

(assert (=> d!1999661 (= (choose!47402 z!1189) res!2622918)))

(declare-fun b!6376318 () Bool)

(declare-fun e!3870975 () Bool)

(declare-fun tp!1774723 () Bool)

(assert (=> b!6376318 (= e!3870975 tp!1774723)))

(declare-fun b!6376317 () Bool)

(declare-fun tp!1774724 () Bool)

(assert (=> b!6376317 (= e!3870976 (and (inv!83964 (h!71485 res!2622918)) e!3870975 tp!1774724))))

(declare-fun b!6376319 () Bool)

(assert (=> b!6376319 (= e!3870977 (= (content!12300 res!2622918) z!1189))))

(assert (= b!6376317 b!6376318))

(assert (= (and d!1999661 ((_ is Cons!65037) res!2622918)) b!6376317))

(assert (= (and d!1999661 res!2622917) b!6376319))

(declare-fun m!7177986 () Bool)

(assert (=> d!1999661 m!7177986))

(declare-fun m!7177988 () Bool)

(assert (=> b!6376317 m!7177988))

(declare-fun m!7177990 () Bool)

(assert (=> b!6376319 m!7177990))

(assert (=> d!1999343 d!1999661))

(declare-fun bs!1596542 () Bool)

(declare-fun b!6376326 () Bool)

(assert (= bs!1596542 (and b!6376326 d!1999469)))

(declare-fun lambda!351556 () Int)

(assert (=> bs!1596542 (not (= lambda!351556 lambda!351533))))

(declare-fun bs!1596543 () Bool)

(assert (= bs!1596543 (and b!6376326 b!6374910)))

(assert (=> bs!1596543 (not (= lambda!351556 lambda!351449))))

(declare-fun bs!1596544 () Bool)

(assert (= bs!1596544 (and b!6376326 d!1999315)))

(assert (=> bs!1596544 (not (= lambda!351556 lambda!351502))))

(declare-fun bs!1596545 () Bool)

(assert (= bs!1596545 (and b!6376326 d!1999317)))

(assert (=> bs!1596545 (not (= lambda!351556 lambda!351507))))

(declare-fun bs!1596546 () Bool)

(assert (= bs!1596546 (and b!6376326 b!6375426)))

(assert (=> bs!1596546 (not (= lambda!351556 lambda!351498))))

(assert (=> bs!1596543 (not (= lambda!351556 lambda!351450))))

(declare-fun bs!1596547 () Bool)

(assert (= bs!1596547 (and b!6376326 b!6375422)))

(assert (=> bs!1596547 (= (and (= (reg!16616 (regTwo!33087 r!7292)) (reg!16616 r!7292)) (= (regTwo!33087 r!7292) r!7292)) (= lambda!351556 lambda!351497))))

(assert (=> bs!1596542 (not (= lambda!351556 lambda!351532))))

(assert (=> bs!1596545 (not (= lambda!351556 lambda!351508))))

(declare-fun bs!1596548 () Bool)

(assert (= bs!1596548 (and b!6376326 d!1999597)))

(assert (=> bs!1596548 (not (= lambda!351556 lambda!351549))))

(assert (=> b!6376326 true))

(assert (=> b!6376326 true))

(declare-fun bs!1596549 () Bool)

(declare-fun b!6376330 () Bool)

(assert (= bs!1596549 (and b!6376330 d!1999469)))

(declare-fun lambda!351557 () Int)

(assert (=> bs!1596549 (= (and (= (regOne!33086 (regTwo!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regTwo!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351557 lambda!351533))))

(declare-fun bs!1596550 () Bool)

(assert (= bs!1596550 (and b!6376330 b!6374910)))

(assert (=> bs!1596550 (not (= lambda!351557 lambda!351449))))

(declare-fun bs!1596551 () Bool)

(assert (= bs!1596551 (and b!6376330 d!1999315)))

(assert (=> bs!1596551 (not (= lambda!351557 lambda!351502))))

(declare-fun bs!1596552 () Bool)

(assert (= bs!1596552 (and b!6376330 b!6376326)))

(assert (=> bs!1596552 (not (= lambda!351557 lambda!351556))))

(declare-fun bs!1596553 () Bool)

(assert (= bs!1596553 (and b!6376330 d!1999317)))

(assert (=> bs!1596553 (not (= lambda!351557 lambda!351507))))

(declare-fun bs!1596554 () Bool)

(assert (= bs!1596554 (and b!6376330 b!6375426)))

(assert (=> bs!1596554 (= (and (= (regOne!33086 (regTwo!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regTwo!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351557 lambda!351498))))

(assert (=> bs!1596550 (= (and (= (regOne!33086 (regTwo!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regTwo!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351557 lambda!351450))))

(declare-fun bs!1596555 () Bool)

(assert (= bs!1596555 (and b!6376330 b!6375422)))

(assert (=> bs!1596555 (not (= lambda!351557 lambda!351497))))

(assert (=> bs!1596549 (not (= lambda!351557 lambda!351532))))

(assert (=> bs!1596553 (= (and (= (regOne!33086 (regTwo!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regTwo!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351557 lambda!351508))))

(declare-fun bs!1596556 () Bool)

(assert (= bs!1596556 (and b!6376330 d!1999597)))

(assert (=> bs!1596556 (not (= lambda!351557 lambda!351549))))

(assert (=> b!6376330 true))

(assert (=> b!6376330 true))

(declare-fun b!6376320 () Bool)

(declare-fun e!3870984 () Bool)

(assert (=> b!6376320 (= e!3870984 (matchRSpec!3388 (regTwo!33087 (regTwo!33087 r!7292)) s!2326))))

(declare-fun d!1999673 () Bool)

(declare-fun c!1161546 () Bool)

(assert (=> d!1999673 (= c!1161546 ((_ is EmptyExpr!16287) (regTwo!33087 r!7292)))))

(declare-fun e!3870980 () Bool)

(assert (=> d!1999673 (= (matchRSpec!3388 (regTwo!33087 r!7292) s!2326) e!3870980)))

(declare-fun b!6376321 () Bool)

(declare-fun c!1161545 () Bool)

(assert (=> b!6376321 (= c!1161545 ((_ is ElementMatch!16287) (regTwo!33087 r!7292)))))

(declare-fun e!3870978 () Bool)

(declare-fun e!3870983 () Bool)

(assert (=> b!6376321 (= e!3870978 e!3870983)))

(declare-fun bm!544761 () Bool)

(declare-fun c!1161543 () Bool)

(declare-fun call!544767 () Bool)

(assert (=> bm!544761 (= call!544767 (Exists!3357 (ite c!1161543 lambda!351556 lambda!351557)))))

(declare-fun b!6376322 () Bool)

(declare-fun c!1161544 () Bool)

(assert (=> b!6376322 (= c!1161544 ((_ is Union!16287) (regTwo!33087 r!7292)))))

(declare-fun e!3870982 () Bool)

(assert (=> b!6376322 (= e!3870983 e!3870982)))

(declare-fun b!6376323 () Bool)

(declare-fun e!3870981 () Bool)

(assert (=> b!6376323 (= e!3870982 e!3870981)))

(assert (=> b!6376323 (= c!1161543 ((_ is Star!16287) (regTwo!33087 r!7292)))))

(declare-fun b!6376324 () Bool)

(assert (=> b!6376324 (= e!3870982 e!3870984)))

(declare-fun res!2622921 () Bool)

(assert (=> b!6376324 (= res!2622921 (matchRSpec!3388 (regOne!33087 (regTwo!33087 r!7292)) s!2326))))

(assert (=> b!6376324 (=> res!2622921 e!3870984)))

(declare-fun b!6376325 () Bool)

(declare-fun res!2622920 () Bool)

(declare-fun e!3870979 () Bool)

(assert (=> b!6376325 (=> res!2622920 e!3870979)))

(declare-fun call!544766 () Bool)

(assert (=> b!6376325 (= res!2622920 call!544766)))

(assert (=> b!6376325 (= e!3870981 e!3870979)))

(assert (=> b!6376326 (= e!3870979 call!544767)))

(declare-fun b!6376327 () Bool)

(assert (=> b!6376327 (= e!3870980 e!3870978)))

(declare-fun res!2622919 () Bool)

(assert (=> b!6376327 (= res!2622919 (not ((_ is EmptyLang!16287) (regTwo!33087 r!7292))))))

(assert (=> b!6376327 (=> (not res!2622919) (not e!3870978))))

(declare-fun b!6376328 () Bool)

(assert (=> b!6376328 (= e!3870983 (= s!2326 (Cons!65038 (c!1161140 (regTwo!33087 r!7292)) Nil!65038)))))

(declare-fun b!6376329 () Bool)

(assert (=> b!6376329 (= e!3870980 call!544766)))

(declare-fun bm!544762 () Bool)

(assert (=> bm!544762 (= call!544766 (isEmpty!37161 s!2326))))

(assert (=> b!6376330 (= e!3870981 call!544767)))

(assert (= (and d!1999673 c!1161546) b!6376329))

(assert (= (and d!1999673 (not c!1161546)) b!6376327))

(assert (= (and b!6376327 res!2622919) b!6376321))

(assert (= (and b!6376321 c!1161545) b!6376328))

(assert (= (and b!6376321 (not c!1161545)) b!6376322))

(assert (= (and b!6376322 c!1161544) b!6376324))

(assert (= (and b!6376322 (not c!1161544)) b!6376323))

(assert (= (and b!6376324 (not res!2622921)) b!6376320))

(assert (= (and b!6376323 c!1161543) b!6376325))

(assert (= (and b!6376323 (not c!1161543)) b!6376330))

(assert (= (and b!6376325 (not res!2622920)) b!6376326))

(assert (= (or b!6376326 b!6376330) bm!544761))

(assert (= (or b!6376329 b!6376325) bm!544762))

(declare-fun m!7177992 () Bool)

(assert (=> b!6376320 m!7177992))

(declare-fun m!7177994 () Bool)

(assert (=> bm!544761 m!7177994))

(declare-fun m!7177996 () Bool)

(assert (=> b!6376324 m!7177996))

(assert (=> bm!544762 m!7176806))

(assert (=> b!6375416 d!1999673))

(assert (=> d!1999325 d!1999439))

(declare-fun d!1999675 () Bool)

(assert (=> d!1999675 (= (isEmpty!37158 (exprs!6171 (h!71485 zl!343))) ((_ is Nil!65036) (exprs!6171 (h!71485 zl!343))))))

(assert (=> b!6375292 d!1999675))

(declare-fun d!1999677 () Bool)

(assert (=> d!1999677 (= (isEmpty!37162 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326)) (not ((_ is Some!16177) (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) Nil!65038 s!2326 s!2326))))))

(assert (=> d!1999319 d!1999677))

(declare-fun bs!1596557 () Bool)

(declare-fun b!6376345 () Bool)

(assert (= bs!1596557 (and b!6376345 d!1999469)))

(declare-fun lambda!351562 () Int)

(assert (=> bs!1596557 (not (= lambda!351562 lambda!351533))))

(declare-fun bs!1596558 () Bool)

(assert (= bs!1596558 (and b!6376345 b!6374910)))

(assert (=> bs!1596558 (not (= lambda!351562 lambda!351449))))

(declare-fun bs!1596559 () Bool)

(assert (= bs!1596559 (and b!6376345 d!1999315)))

(assert (=> bs!1596559 (not (= lambda!351562 lambda!351502))))

(declare-fun bs!1596560 () Bool)

(assert (= bs!1596560 (and b!6376345 b!6376326)))

(assert (=> bs!1596560 (= (and (= (reg!16616 (regOne!33087 r!7292)) (reg!16616 (regTwo!33087 r!7292))) (= (regOne!33087 r!7292) (regTwo!33087 r!7292))) (= lambda!351562 lambda!351556))))

(declare-fun bs!1596561 () Bool)

(assert (= bs!1596561 (and b!6376345 d!1999317)))

(assert (=> bs!1596561 (not (= lambda!351562 lambda!351507))))

(declare-fun bs!1596562 () Bool)

(assert (= bs!1596562 (and b!6376345 b!6375426)))

(assert (=> bs!1596562 (not (= lambda!351562 lambda!351498))))

(assert (=> bs!1596558 (not (= lambda!351562 lambda!351450))))

(assert (=> bs!1596557 (not (= lambda!351562 lambda!351532))))

(assert (=> bs!1596561 (not (= lambda!351562 lambda!351508))))

(declare-fun bs!1596564 () Bool)

(assert (= bs!1596564 (and b!6376345 d!1999597)))

(assert (=> bs!1596564 (not (= lambda!351562 lambda!351549))))

(declare-fun bs!1596566 () Bool)

(assert (= bs!1596566 (and b!6376345 b!6375422)))

(assert (=> bs!1596566 (= (and (= (reg!16616 (regOne!33087 r!7292)) (reg!16616 r!7292)) (= (regOne!33087 r!7292) r!7292)) (= lambda!351562 lambda!351497))))

(declare-fun bs!1596568 () Bool)

(assert (= bs!1596568 (and b!6376345 b!6376330)))

(assert (=> bs!1596568 (not (= lambda!351562 lambda!351557))))

(assert (=> b!6376345 true))

(assert (=> b!6376345 true))

(declare-fun bs!1596573 () Bool)

(declare-fun b!6376349 () Bool)

(assert (= bs!1596573 (and b!6376349 d!1999469)))

(declare-fun lambda!351564 () Int)

(assert (=> bs!1596573 (= (and (= (regOne!33086 (regOne!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regOne!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351564 lambda!351533))))

(declare-fun bs!1596576 () Bool)

(assert (= bs!1596576 (and b!6376349 b!6374910)))

(assert (=> bs!1596576 (not (= lambda!351564 lambda!351449))))

(declare-fun bs!1596578 () Bool)

(assert (= bs!1596578 (and b!6376349 d!1999315)))

(assert (=> bs!1596578 (not (= lambda!351564 lambda!351502))))

(declare-fun bs!1596579 () Bool)

(assert (= bs!1596579 (and b!6376349 b!6376326)))

(assert (=> bs!1596579 (not (= lambda!351564 lambda!351556))))

(declare-fun bs!1596580 () Bool)

(assert (= bs!1596580 (and b!6376349 d!1999317)))

(assert (=> bs!1596580 (not (= lambda!351564 lambda!351507))))

(declare-fun bs!1596581 () Bool)

(assert (= bs!1596581 (and b!6376349 b!6375426)))

(assert (=> bs!1596581 (= (and (= (regOne!33086 (regOne!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regOne!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351564 lambda!351498))))

(declare-fun bs!1596582 () Bool)

(assert (= bs!1596582 (and b!6376349 b!6376345)))

(assert (=> bs!1596582 (not (= lambda!351564 lambda!351562))))

(assert (=> bs!1596576 (= (and (= (regOne!33086 (regOne!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regOne!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351564 lambda!351450))))

(assert (=> bs!1596573 (not (= lambda!351564 lambda!351532))))

(assert (=> bs!1596580 (= (and (= (regOne!33086 (regOne!33087 r!7292)) (regOne!33086 r!7292)) (= (regTwo!33086 (regOne!33087 r!7292)) (regTwo!33086 r!7292))) (= lambda!351564 lambda!351508))))

(declare-fun bs!1596583 () Bool)

(assert (= bs!1596583 (and b!6376349 d!1999597)))

(assert (=> bs!1596583 (not (= lambda!351564 lambda!351549))))

(declare-fun bs!1596584 () Bool)

(assert (= bs!1596584 (and b!6376349 b!6375422)))

(assert (=> bs!1596584 (not (= lambda!351564 lambda!351497))))

(declare-fun bs!1596586 () Bool)

(assert (= bs!1596586 (and b!6376349 b!6376330)))

(assert (=> bs!1596586 (= (and (= (regOne!33086 (regOne!33087 r!7292)) (regOne!33086 (regTwo!33087 r!7292))) (= (regTwo!33086 (regOne!33087 r!7292)) (regTwo!33086 (regTwo!33087 r!7292)))) (= lambda!351564 lambda!351557))))

(assert (=> b!6376349 true))

(assert (=> b!6376349 true))

(declare-fun b!6376339 () Bool)

(declare-fun e!3870995 () Bool)

(assert (=> b!6376339 (= e!3870995 (matchRSpec!3388 (regTwo!33087 (regOne!33087 r!7292)) s!2326))))

(declare-fun d!1999679 () Bool)

(declare-fun c!1161550 () Bool)

(assert (=> d!1999679 (= c!1161550 ((_ is EmptyExpr!16287) (regOne!33087 r!7292)))))

(declare-fun e!3870991 () Bool)

(assert (=> d!1999679 (= (matchRSpec!3388 (regOne!33087 r!7292) s!2326) e!3870991)))

(declare-fun b!6376340 () Bool)

(declare-fun c!1161549 () Bool)

(assert (=> b!6376340 (= c!1161549 ((_ is ElementMatch!16287) (regOne!33087 r!7292)))))

(declare-fun e!3870989 () Bool)

(declare-fun e!3870994 () Bool)

(assert (=> b!6376340 (= e!3870989 e!3870994)))

(declare-fun bm!544763 () Bool)

(declare-fun call!544769 () Bool)

(declare-fun c!1161547 () Bool)

(assert (=> bm!544763 (= call!544769 (Exists!3357 (ite c!1161547 lambda!351562 lambda!351564)))))

(declare-fun b!6376341 () Bool)

(declare-fun c!1161548 () Bool)

(assert (=> b!6376341 (= c!1161548 ((_ is Union!16287) (regOne!33087 r!7292)))))

(declare-fun e!3870993 () Bool)

(assert (=> b!6376341 (= e!3870994 e!3870993)))

(declare-fun b!6376342 () Bool)

(declare-fun e!3870992 () Bool)

(assert (=> b!6376342 (= e!3870993 e!3870992)))

(assert (=> b!6376342 (= c!1161547 ((_ is Star!16287) (regOne!33087 r!7292)))))

(declare-fun b!6376343 () Bool)

(assert (=> b!6376343 (= e!3870993 e!3870995)))

(declare-fun res!2622932 () Bool)

(assert (=> b!6376343 (= res!2622932 (matchRSpec!3388 (regOne!33087 (regOne!33087 r!7292)) s!2326))))

(assert (=> b!6376343 (=> res!2622932 e!3870995)))

(declare-fun b!6376344 () Bool)

(declare-fun res!2622931 () Bool)

(declare-fun e!3870990 () Bool)

(assert (=> b!6376344 (=> res!2622931 e!3870990)))

(declare-fun call!544768 () Bool)

(assert (=> b!6376344 (= res!2622931 call!544768)))

(assert (=> b!6376344 (= e!3870992 e!3870990)))

(assert (=> b!6376345 (= e!3870990 call!544769)))

(declare-fun b!6376346 () Bool)

(assert (=> b!6376346 (= e!3870991 e!3870989)))

(declare-fun res!2622930 () Bool)

(assert (=> b!6376346 (= res!2622930 (not ((_ is EmptyLang!16287) (regOne!33087 r!7292))))))

(assert (=> b!6376346 (=> (not res!2622930) (not e!3870989))))

(declare-fun b!6376347 () Bool)

(assert (=> b!6376347 (= e!3870994 (= s!2326 (Cons!65038 (c!1161140 (regOne!33087 r!7292)) Nil!65038)))))

(declare-fun b!6376348 () Bool)

(assert (=> b!6376348 (= e!3870991 call!544768)))

(declare-fun bm!544764 () Bool)

(assert (=> bm!544764 (= call!544768 (isEmpty!37161 s!2326))))

(assert (=> b!6376349 (= e!3870992 call!544769)))

(assert (= (and d!1999679 c!1161550) b!6376348))

(assert (= (and d!1999679 (not c!1161550)) b!6376346))

(assert (= (and b!6376346 res!2622930) b!6376340))

(assert (= (and b!6376340 c!1161549) b!6376347))

(assert (= (and b!6376340 (not c!1161549)) b!6376341))

(assert (= (and b!6376341 c!1161548) b!6376343))

(assert (= (and b!6376341 (not c!1161548)) b!6376342))

(assert (= (and b!6376343 (not res!2622932)) b!6376339))

(assert (= (and b!6376342 c!1161547) b!6376344))

(assert (= (and b!6376342 (not c!1161547)) b!6376349))

(assert (= (and b!6376344 (not res!2622931)) b!6376345))

(assert (= (or b!6376345 b!6376349) bm!544763))

(assert (= (or b!6376348 b!6376344) bm!544764))

(declare-fun m!7177998 () Bool)

(assert (=> b!6376339 m!7177998))

(declare-fun m!7178000 () Bool)

(assert (=> bm!544763 m!7178000))

(declare-fun m!7178002 () Bool)

(assert (=> b!6376343 m!7178002))

(assert (=> bm!544764 m!7176806))

(assert (=> b!6375420 d!1999679))

(declare-fun bs!1596587 () Bool)

(declare-fun d!1999681 () Bool)

(assert (= bs!1596587 (and d!1999681 d!1999349)))

(declare-fun lambda!351566 () Int)

(assert (=> bs!1596587 (= lambda!351566 lambda!351515)))

(declare-fun bs!1596588 () Bool)

(assert (= bs!1596588 (and d!1999681 d!1999249)))

(assert (=> bs!1596588 (= lambda!351566 lambda!351486)))

(declare-fun bs!1596589 () Bool)

(assert (= bs!1596589 (and d!1999681 d!1999347)))

(assert (=> bs!1596589 (= lambda!351566 lambda!351514)))

(declare-fun bs!1596590 () Bool)

(assert (= bs!1596590 (and d!1999681 d!1999307)))

(assert (=> bs!1596590 (= lambda!351566 lambda!351499)))

(declare-fun bs!1596591 () Bool)

(assert (= bs!1596591 (and d!1999681 d!1999527)))

(assert (=> bs!1596591 (= lambda!351566 lambda!351537)))

(declare-fun bs!1596592 () Bool)

(assert (= bs!1596592 (and d!1999681 d!1999345)))

(assert (=> bs!1596592 (= lambda!351566 lambda!351511)))

(declare-fun bs!1596593 () Bool)

(assert (= bs!1596593 (and d!1999681 d!1999221)))

(assert (=> bs!1596593 (= lambda!351566 lambda!351478)))

(declare-fun bs!1596594 () Bool)

(assert (= bs!1596594 (and d!1999681 d!1999489)))

(assert (=> bs!1596594 (= lambda!351566 lambda!351534)))

(declare-fun bs!1596595 () Bool)

(assert (= bs!1596595 (and d!1999681 d!1999529)))

(assert (=> bs!1596595 (= lambda!351566 lambda!351538)))

(declare-fun bs!1596596 () Bool)

(assert (= bs!1596596 (and d!1999681 d!1999555)))

(assert (=> bs!1596596 (= lambda!351566 lambda!351542)))

(assert (=> d!1999681 (= (inv!83964 setElem!43488) (forall!15465 (exprs!6171 setElem!43488) lambda!351566))))

(declare-fun bs!1596597 () Bool)

(assert (= bs!1596597 d!1999681))

(declare-fun m!7178008 () Bool)

(assert (=> bs!1596597 m!7178008))

(assert (=> setNonEmpty!43488 d!1999681))

(declare-fun d!1999685 () Bool)

(assert (=> d!1999685 (= (flatMap!1792 lt!2369031 lambda!351467) (choose!47392 lt!2369031 lambda!351467))))

(declare-fun bs!1596598 () Bool)

(assert (= bs!1596598 d!1999685))

(declare-fun m!7178010 () Bool)

(assert (=> bs!1596598 m!7178010))

(assert (=> d!1999189 d!1999685))

(declare-fun b!6376367 () Bool)

(declare-fun e!3871003 () Bool)

(declare-fun lt!2369173 () List!65162)

(assert (=> b!6376367 (= e!3871003 (or (not (= (t!378764 s!2326) Nil!65038)) (= lt!2369173 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)))))))

(declare-fun b!6376366 () Bool)

(declare-fun res!2622942 () Bool)

(assert (=> b!6376366 (=> (not res!2622942) (not e!3871003))))

(assert (=> b!6376366 (= res!2622942 (= (size!40357 lt!2369173) (+ (size!40357 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))) (size!40357 (t!378764 s!2326)))))))

(declare-fun b!6376364 () Bool)

(declare-fun e!3871004 () List!65162)

(assert (=> b!6376364 (= e!3871004 (t!378764 s!2326))))

(declare-fun b!6376365 () Bool)

(assert (=> b!6376365 (= e!3871004 (Cons!65038 (h!71486 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))) (++!14356 (t!378764 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))) (t!378764 s!2326))))))

(declare-fun d!1999687 () Bool)

(assert (=> d!1999687 e!3871003))

(declare-fun res!2622941 () Bool)

(assert (=> d!1999687 (=> (not res!2622941) (not e!3871003))))

(assert (=> d!1999687 (= res!2622941 (= (content!12301 lt!2369173) ((_ map or) (content!12301 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))) (content!12301 (t!378764 s!2326)))))))

(assert (=> d!1999687 (= lt!2369173 e!3871004)))

(declare-fun c!1161554 () Bool)

(assert (=> d!1999687 (= c!1161554 ((_ is Nil!65038) (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))))))

(assert (=> d!1999687 (= (++!14356 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326)) lt!2369173)))

(assert (= (and d!1999687 c!1161554) b!6376364))

(assert (= (and d!1999687 (not c!1161554)) b!6376365))

(assert (= (and d!1999687 res!2622941) b!6376366))

(assert (= (and b!6376366 res!2622942) b!6376367))

(declare-fun m!7178014 () Bool)

(assert (=> b!6376366 m!7178014))

(assert (=> b!6376366 m!7177164))

(declare-fun m!7178018 () Bool)

(assert (=> b!6376366 m!7178018))

(declare-fun m!7178020 () Bool)

(assert (=> b!6376366 m!7178020))

(declare-fun m!7178024 () Bool)

(assert (=> b!6376365 m!7178024))

(declare-fun m!7178028 () Bool)

(assert (=> d!1999687 m!7178028))

(assert (=> d!1999687 m!7177164))

(declare-fun m!7178030 () Bool)

(assert (=> d!1999687 m!7178030))

(declare-fun m!7178032 () Bool)

(assert (=> d!1999687 m!7178032))

(assert (=> b!6375540 d!1999687))

(declare-fun b!6376371 () Bool)

(declare-fun e!3871005 () Bool)

(declare-fun lt!2369174 () List!65162)

(assert (=> b!6376371 (= e!3871005 (or (not (= (Cons!65038 (h!71486 s!2326) Nil!65038) Nil!65038)) (= lt!2369174 Nil!65038)))))

(declare-fun b!6376370 () Bool)

(declare-fun res!2622944 () Bool)

(assert (=> b!6376370 (=> (not res!2622944) (not e!3871005))))

(assert (=> b!6376370 (= res!2622944 (= (size!40357 lt!2369174) (+ (size!40357 Nil!65038) (size!40357 (Cons!65038 (h!71486 s!2326) Nil!65038)))))))

(declare-fun b!6376368 () Bool)

(declare-fun e!3871006 () List!65162)

(assert (=> b!6376368 (= e!3871006 (Cons!65038 (h!71486 s!2326) Nil!65038))))

(declare-fun b!6376369 () Bool)

(assert (=> b!6376369 (= e!3871006 (Cons!65038 (h!71486 Nil!65038) (++!14356 (t!378764 Nil!65038) (Cons!65038 (h!71486 s!2326) Nil!65038))))))

(declare-fun d!1999689 () Bool)

(assert (=> d!1999689 e!3871005))

(declare-fun res!2622943 () Bool)

(assert (=> d!1999689 (=> (not res!2622943) (not e!3871005))))

(assert (=> d!1999689 (= res!2622943 (= (content!12301 lt!2369174) ((_ map or) (content!12301 Nil!65038) (content!12301 (Cons!65038 (h!71486 s!2326) Nil!65038)))))))

(assert (=> d!1999689 (= lt!2369174 e!3871006)))

(declare-fun c!1161555 () Bool)

(assert (=> d!1999689 (= c!1161555 ((_ is Nil!65038) Nil!65038))))

(assert (=> d!1999689 (= (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) lt!2369174)))

(assert (= (and d!1999689 c!1161555) b!6376368))

(assert (= (and d!1999689 (not c!1161555)) b!6376369))

(assert (= (and d!1999689 res!2622943) b!6376370))

(assert (= (and b!6376370 res!2622944) b!6376371))

(declare-fun m!7178038 () Bool)

(assert (=> b!6376370 m!7178038))

(declare-fun m!7178040 () Bool)

(assert (=> b!6376370 m!7178040))

(declare-fun m!7178042 () Bool)

(assert (=> b!6376370 m!7178042))

(declare-fun m!7178044 () Bool)

(assert (=> b!6376369 m!7178044))

(declare-fun m!7178046 () Bool)

(assert (=> d!1999689 m!7178046))

(declare-fun m!7178048 () Bool)

(assert (=> d!1999689 m!7178048))

(declare-fun m!7178050 () Bool)

(assert (=> d!1999689 m!7178050))

(assert (=> b!6375540 d!1999689))

(declare-fun d!1999693 () Bool)

(assert (=> d!1999693 (= (++!14356 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326)) s!2326)))

(declare-fun lt!2369178 () Unit!158479)

(declare-fun choose!47404 (List!65162 C!32844 List!65162 List!65162) Unit!158479)

(assert (=> d!1999693 (= lt!2369178 (choose!47404 Nil!65038 (h!71486 s!2326) (t!378764 s!2326) s!2326))))

(assert (=> d!1999693 (= (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) (t!378764 s!2326))) s!2326)))

(assert (=> d!1999693 (= (lemmaMoveElementToOtherListKeepsConcatEq!2451 Nil!65038 (h!71486 s!2326) (t!378764 s!2326) s!2326) lt!2369178)))

(declare-fun bs!1596600 () Bool)

(assert (= bs!1596600 d!1999693))

(assert (=> bs!1596600 m!7177164))

(assert (=> bs!1596600 m!7177164))

(assert (=> bs!1596600 m!7177166))

(declare-fun m!7178068 () Bool)

(assert (=> bs!1596600 m!7178068))

(declare-fun m!7178070 () Bool)

(assert (=> bs!1596600 m!7178070))

(assert (=> b!6375540 d!1999693))

(declare-fun b!6376394 () Bool)

(declare-fun e!3871025 () Bool)

(assert (=> b!6376394 (= e!3871025 (matchR!8470 (regTwo!33086 r!7292) (t!378764 s!2326)))))

(declare-fun b!6376395 () Bool)

(declare-fun e!3871023 () Bool)

(declare-fun lt!2369181 () Option!16178)

(assert (=> b!6376395 (= e!3871023 (= (++!14356 (_1!36569 (get!22515 lt!2369181)) (_2!36569 (get!22515 lt!2369181))) s!2326))))

(declare-fun b!6376396 () Bool)

(declare-fun e!3871022 () Bool)

(assert (=> b!6376396 (= e!3871022 (not (isDefined!12881 lt!2369181)))))

(declare-fun b!6376397 () Bool)

(declare-fun lt!2369179 () Unit!158479)

(declare-fun lt!2369180 () Unit!158479)

(assert (=> b!6376397 (= lt!2369179 lt!2369180)))

(assert (=> b!6376397 (= (++!14356 (++!14356 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (Cons!65038 (h!71486 (t!378764 s!2326)) Nil!65038)) (t!378764 (t!378764 s!2326))) s!2326)))

(assert (=> b!6376397 (= lt!2369180 (lemmaMoveElementToOtherListKeepsConcatEq!2451 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (h!71486 (t!378764 s!2326)) (t!378764 (t!378764 s!2326)) s!2326))))

(declare-fun e!3871021 () Option!16178)

(assert (=> b!6376397 (= e!3871021 (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) (++!14356 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (Cons!65038 (h!71486 (t!378764 s!2326)) Nil!65038)) (t!378764 (t!378764 s!2326)) s!2326))))

(declare-fun b!6376398 () Bool)

(declare-fun e!3871024 () Option!16178)

(assert (=> b!6376398 (= e!3871024 e!3871021)))

(declare-fun c!1161561 () Bool)

(assert (=> b!6376398 (= c!1161561 ((_ is Nil!65038) (t!378764 s!2326)))))

(declare-fun b!6376399 () Bool)

(declare-fun res!2622962 () Bool)

(assert (=> b!6376399 (=> (not res!2622962) (not e!3871023))))

(assert (=> b!6376399 (= res!2622962 (matchR!8470 (regTwo!33086 r!7292) (_2!36569 (get!22515 lt!2369181))))))

(declare-fun b!6376400 () Bool)

(assert (=> b!6376400 (= e!3871024 (Some!16177 (tuple2!66533 (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326))))))

(declare-fun d!1999703 () Bool)

(assert (=> d!1999703 e!3871022))

(declare-fun res!2622960 () Bool)

(assert (=> d!1999703 (=> res!2622960 e!3871022)))

(assert (=> d!1999703 (= res!2622960 e!3871023)))

(declare-fun res!2622963 () Bool)

(assert (=> d!1999703 (=> (not res!2622963) (not e!3871023))))

(assert (=> d!1999703 (= res!2622963 (isDefined!12881 lt!2369181))))

(assert (=> d!1999703 (= lt!2369181 e!3871024)))

(declare-fun c!1161560 () Bool)

(assert (=> d!1999703 (= c!1161560 e!3871025)))

(declare-fun res!2622961 () Bool)

(assert (=> d!1999703 (=> (not res!2622961) (not e!3871025))))

(assert (=> d!1999703 (= res!2622961 (matchR!8470 (regOne!33086 r!7292) (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038))))))

(assert (=> d!1999703 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999703 (= (findConcatSeparation!2592 (regOne!33086 r!7292) (regTwo!33086 r!7292) (++!14356 Nil!65038 (Cons!65038 (h!71486 s!2326) Nil!65038)) (t!378764 s!2326) s!2326) lt!2369181)))

(declare-fun b!6376401 () Bool)

(assert (=> b!6376401 (= e!3871021 None!16177)))

(declare-fun b!6376402 () Bool)

(declare-fun res!2622959 () Bool)

(assert (=> b!6376402 (=> (not res!2622959) (not e!3871023))))

(assert (=> b!6376402 (= res!2622959 (matchR!8470 (regOne!33086 r!7292) (_1!36569 (get!22515 lt!2369181))))))

(assert (= (and d!1999703 res!2622961) b!6376394))

(assert (= (and d!1999703 c!1161560) b!6376400))

(assert (= (and d!1999703 (not c!1161560)) b!6376398))

(assert (= (and b!6376398 c!1161561) b!6376401))

(assert (= (and b!6376398 (not c!1161561)) b!6376397))

(assert (= (and d!1999703 res!2622963) b!6376402))

(assert (= (and b!6376402 res!2622959) b!6376399))

(assert (= (and b!6376399 res!2622962) b!6376395))

(assert (= (and d!1999703 (not res!2622960)) b!6376396))

(assert (=> b!6376397 m!7177164))

(declare-fun m!7178072 () Bool)

(assert (=> b!6376397 m!7178072))

(assert (=> b!6376397 m!7178072))

(declare-fun m!7178074 () Bool)

(assert (=> b!6376397 m!7178074))

(assert (=> b!6376397 m!7177164))

(declare-fun m!7178076 () Bool)

(assert (=> b!6376397 m!7178076))

(assert (=> b!6376397 m!7178072))

(declare-fun m!7178078 () Bool)

(assert (=> b!6376397 m!7178078))

(declare-fun m!7178080 () Bool)

(assert (=> b!6376395 m!7178080))

(declare-fun m!7178082 () Bool)

(assert (=> b!6376395 m!7178082))

(declare-fun m!7178084 () Bool)

(assert (=> b!6376396 m!7178084))

(declare-fun m!7178086 () Bool)

(assert (=> b!6376394 m!7178086))

(assert (=> b!6376402 m!7178080))

(declare-fun m!7178088 () Bool)

(assert (=> b!6376402 m!7178088))

(assert (=> d!1999703 m!7178084))

(assert (=> d!1999703 m!7177164))

(declare-fun m!7178090 () Bool)

(assert (=> d!1999703 m!7178090))

(assert (=> d!1999703 m!7177184))

(assert (=> b!6376399 m!7178080))

(declare-fun m!7178092 () Bool)

(assert (=> b!6376399 m!7178092))

(assert (=> b!6375540 d!1999703))

(declare-fun bs!1596601 () Bool)

(declare-fun d!1999705 () Bool)

(assert (= bs!1596601 (and d!1999705 d!1999453)))

(declare-fun lambda!351567 () Int)

(assert (=> bs!1596601 (= lambda!351567 lambda!351527)))

(declare-fun bs!1596602 () Bool)

(assert (= bs!1596602 (and d!1999705 d!1999505)))

(assert (=> bs!1596602 (= lambda!351567 lambda!351536)))

(declare-fun bs!1596603 () Bool)

(assert (= bs!1596603 (and d!1999705 d!1999635)))

(assert (=> bs!1596603 (= lambda!351567 lambda!351551)))

(assert (=> d!1999705 (= (nullableZipper!2053 lt!2369036) (exists!2583 lt!2369036 lambda!351567))))

(declare-fun bs!1596604 () Bool)

(assert (= bs!1596604 d!1999705))

(declare-fun m!7178094 () Bool)

(assert (=> bs!1596604 m!7178094))

(assert (=> b!6375126 d!1999705))

(assert (=> b!6375560 d!1999205))

(declare-fun d!1999707 () Bool)

(declare-fun res!2622964 () Bool)

(declare-fun e!3871026 () Bool)

(assert (=> d!1999707 (=> res!2622964 e!3871026)))

(assert (=> d!1999707 (= res!2622964 ((_ is Nil!65036) (exprs!6171 setElem!43482)))))

(assert (=> d!1999707 (= (forall!15465 (exprs!6171 setElem!43482) lambda!351499) e!3871026)))

(declare-fun b!6376403 () Bool)

(declare-fun e!3871027 () Bool)

(assert (=> b!6376403 (= e!3871026 e!3871027)))

(declare-fun res!2622965 () Bool)

(assert (=> b!6376403 (=> (not res!2622965) (not e!3871027))))

(assert (=> b!6376403 (= res!2622965 (dynLambda!25804 lambda!351499 (h!71484 (exprs!6171 setElem!43482))))))

(declare-fun b!6376404 () Bool)

(assert (=> b!6376404 (= e!3871027 (forall!15465 (t!378762 (exprs!6171 setElem!43482)) lambda!351499))))

(assert (= (and d!1999707 (not res!2622964)) b!6376403))

(assert (= (and b!6376403 res!2622965) b!6376404))

(declare-fun b_lambda!242295 () Bool)

(assert (=> (not b_lambda!242295) (not b!6376403)))

(declare-fun m!7178096 () Bool)

(assert (=> b!6376403 m!7178096))

(declare-fun m!7178098 () Bool)

(assert (=> b!6376404 m!7178098))

(assert (=> d!1999307 d!1999707))

(declare-fun d!1999709 () Bool)

(assert (=> d!1999709 (= (head!13067 (unfocusZipperList!1708 zl!343)) (h!71484 (unfocusZipperList!1708 zl!343)))))

(assert (=> b!6375615 d!1999709))

(declare-fun b!6376405 () Bool)

(declare-fun res!2622968 () Bool)

(declare-fun e!3871034 () Bool)

(assert (=> b!6376405 (=> (not res!2622968) (not e!3871034))))

(declare-fun call!544775 () Bool)

(assert (=> b!6376405 (= res!2622968 call!544775)))

(declare-fun e!3871032 () Bool)

(assert (=> b!6376405 (= e!3871032 e!3871034)))

(declare-fun call!544776 () Bool)

(declare-fun c!1161562 () Bool)

(declare-fun c!1161563 () Bool)

(declare-fun bm!544769 () Bool)

(assert (=> bm!544769 (= call!544776 (validRegex!8023 (ite c!1161563 (reg!16616 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))) (ite c!1161562 (regOne!33087 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))) (regOne!33086 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292)))))))))

(declare-fun b!6376406 () Bool)

(declare-fun e!3871030 () Bool)

(declare-fun e!3871028 () Bool)

(assert (=> b!6376406 (= e!3871030 e!3871028)))

(declare-fun res!2622967 () Bool)

(assert (=> b!6376406 (= res!2622967 (not (nullable!6280 (reg!16616 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))))

(assert (=> b!6376406 (=> (not res!2622967) (not e!3871028))))

(declare-fun b!6376407 () Bool)

(declare-fun e!3871031 () Bool)

(declare-fun e!3871033 () Bool)

(assert (=> b!6376407 (= e!3871031 e!3871033)))

(declare-fun res!2622970 () Bool)

(assert (=> b!6376407 (=> (not res!2622970) (not e!3871033))))

(assert (=> b!6376407 (= res!2622970 call!544775)))

(declare-fun b!6376408 () Bool)

(declare-fun call!544774 () Bool)

(assert (=> b!6376408 (= e!3871033 call!544774)))

(declare-fun b!6376409 () Bool)

(assert (=> b!6376409 (= e!3871034 call!544774)))

(declare-fun bm!544770 () Bool)

(assert (=> bm!544770 (= call!544775 call!544776)))

(declare-fun b!6376410 () Bool)

(assert (=> b!6376410 (= e!3871030 e!3871032)))

(assert (=> b!6376410 (= c!1161562 ((_ is Union!16287) (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))

(declare-fun b!6376411 () Bool)

(declare-fun e!3871029 () Bool)

(assert (=> b!6376411 (= e!3871029 e!3871030)))

(assert (=> b!6376411 (= c!1161563 ((_ is Star!16287) (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))

(declare-fun b!6376412 () Bool)

(declare-fun res!2622969 () Bool)

(assert (=> b!6376412 (=> res!2622969 e!3871031)))

(assert (=> b!6376412 (= res!2622969 (not ((_ is Concat!25132) (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292)))))))

(assert (=> b!6376412 (= e!3871032 e!3871031)))

(declare-fun bm!544771 () Bool)

(assert (=> bm!544771 (= call!544774 (validRegex!8023 (ite c!1161562 (regTwo!33087 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))) (regTwo!33086 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))))

(declare-fun b!6376413 () Bool)

(assert (=> b!6376413 (= e!3871028 call!544776)))

(declare-fun d!1999711 () Bool)

(declare-fun res!2622966 () Bool)

(assert (=> d!1999711 (=> res!2622966 e!3871029)))

(assert (=> d!1999711 (= res!2622966 ((_ is ElementMatch!16287) (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))))))

(assert (=> d!1999711 (= (validRegex!8023 (ite c!1161230 (regTwo!33087 r!7292) (regTwo!33086 r!7292))) e!3871029)))

(assert (= (and d!1999711 (not res!2622966)) b!6376411))

(assert (= (and b!6376411 c!1161563) b!6376406))

(assert (= (and b!6376411 (not c!1161563)) b!6376410))

(assert (= (and b!6376406 res!2622967) b!6376413))

(assert (= (and b!6376410 c!1161562) b!6376405))

(assert (= (and b!6376410 (not c!1161562)) b!6376412))

(assert (= (and b!6376405 res!2622968) b!6376409))

(assert (= (and b!6376412 (not res!2622969)) b!6376407))

(assert (= (and b!6376407 res!2622970) b!6376408))

(assert (= (or b!6376409 b!6376408) bm!544771))

(assert (= (or b!6376405 b!6376407) bm!544770))

(assert (= (or b!6376413 bm!544770) bm!544769))

(declare-fun m!7178100 () Bool)

(assert (=> bm!544769 m!7178100))

(declare-fun m!7178102 () Bool)

(assert (=> b!6376406 m!7178102))

(declare-fun m!7178104 () Bool)

(assert (=> bm!544771 m!7178104))

(assert (=> bm!544572 d!1999711))

(declare-fun d!1999713 () Bool)

(assert (=> d!1999713 true))

(declare-fun setRes!43499 () Bool)

(assert (=> d!1999713 setRes!43499))

(declare-fun condSetEmpty!43499 () Bool)

(declare-fun res!2622971 () (InoxSet Context!11342))

(assert (=> d!1999713 (= condSetEmpty!43499 (= res!2622971 ((as const (Array Context!11342 Bool)) false)))))

(assert (=> d!1999713 (= (choose!47392 lt!2369026 lambda!351451) res!2622971)))

(declare-fun setIsEmpty!43499 () Bool)

(assert (=> setIsEmpty!43499 setRes!43499))

(declare-fun setNonEmpty!43499 () Bool)

(declare-fun e!3871041 () Bool)

(declare-fun tp!1774727 () Bool)

(declare-fun setElem!43499 () Context!11342)

(assert (=> setNonEmpty!43499 (= setRes!43499 (and tp!1774727 (inv!83964 setElem!43499) e!3871041))))

(declare-fun setRest!43499 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43499 (= res!2622971 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43499 true) setRest!43499))))

(declare-fun b!6376426 () Bool)

(declare-fun tp!1774728 () Bool)

(assert (=> b!6376426 (= e!3871041 tp!1774728)))

(assert (= (and d!1999713 condSetEmpty!43499) setIsEmpty!43499))

(assert (= (and d!1999713 (not condSetEmpty!43499)) setNonEmpty!43499))

(assert (= setNonEmpty!43499 b!6376426))

(declare-fun m!7178106 () Bool)

(assert (=> setNonEmpty!43499 m!7178106))

(assert (=> d!1999235 d!1999713))

(assert (=> bs!1596364 d!1999243))

(assert (=> d!1999323 d!1999439))

(declare-fun d!1999715 () Bool)

(assert (=> d!1999715 (= (isEmptyLang!1695 lt!2369136) ((_ is EmptyLang!16287) lt!2369136))))

(assert (=> b!6375619 d!1999715))

(declare-fun b!6376435 () Bool)

(declare-fun e!3871048 () (InoxSet Context!11342))

(assert (=> b!6376435 (= e!3871048 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376436 () Bool)

(declare-fun e!3871049 () Bool)

(assert (=> b!6376436 (= e!3871049 (nullable!6280 (regOne!33086 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))))))))

(declare-fun b!6376438 () Bool)

(declare-fun e!3871050 () (InoxSet Context!11342))

(declare-fun e!3871051 () (InoxSet Context!11342))

(assert (=> b!6376438 (= e!3871050 e!3871051)))

(declare-fun c!1161576 () Bool)

(assert (=> b!6376438 (= c!1161576 ((_ is Concat!25132) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))))))

(declare-fun call!544783 () List!65160)

(declare-fun bm!544776 () Bool)

(declare-fun call!544782 () (InoxSet Context!11342))

(declare-fun c!1161578 () Bool)

(assert (=> bm!544776 (= call!544782 (derivationStepZipperDown!1535 (ite c!1161578 (regTwo!33087 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (regOne!33086 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))))) (ite c!1161578 (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562)) (Context!11343 call!544783)) (h!71486 s!2326)))))

(declare-fun b!6376439 () Bool)

(declare-fun c!1161577 () Bool)

(assert (=> b!6376439 (= c!1161577 ((_ is Star!16287) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))))))

(assert (=> b!6376439 (= e!3871051 e!3871048)))

(declare-fun bm!544777 () Bool)

(declare-fun call!544786 () List!65160)

(assert (=> bm!544777 (= call!544786 call!544783)))

(declare-fun bm!544778 () Bool)

(declare-fun call!544785 () (InoxSet Context!11342))

(declare-fun call!544781 () (InoxSet Context!11342))

(assert (=> bm!544778 (= call!544785 call!544781)))

(declare-fun b!6376440 () Bool)

(declare-fun e!3871046 () (InoxSet Context!11342))

(declare-fun e!3871047 () (InoxSet Context!11342))

(assert (=> b!6376440 (= e!3871046 e!3871047)))

(assert (=> b!6376440 (= c!1161578 ((_ is Union!16287) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))))))

(declare-fun b!6376441 () Bool)

(assert (=> b!6376441 (= e!3871046 (store ((as const (Array Context!11342 Bool)) false) (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562)) true))))

(declare-fun bm!544779 () Bool)

(declare-fun c!1161575 () Bool)

(assert (=> bm!544779 (= call!544783 ($colon$colon!2148 (exprs!6171 (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562))) (ite (or c!1161575 c!1161576) (regTwo!33086 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))))))))

(declare-fun b!6376442 () Bool)

(assert (=> b!6376442 (= e!3871051 call!544785)))

(declare-fun c!1161574 () Bool)

(declare-fun d!1999717 () Bool)

(assert (=> d!1999717 (= c!1161574 (and ((_ is ElementMatch!16287) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (= (c!1161140 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (h!71486 s!2326))))))

(assert (=> d!1999717 (= (derivationStepZipperDown!1535 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))) (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562)) (h!71486 s!2326)) e!3871046)))

(declare-fun b!6376437 () Bool)

(assert (=> b!6376437 (= e!3871050 ((_ map or) call!544782 call!544781))))

(declare-fun b!6376443 () Bool)

(declare-fun call!544784 () (InoxSet Context!11342))

(assert (=> b!6376443 (= e!3871047 ((_ map or) call!544784 call!544782))))

(declare-fun b!6376444 () Bool)

(assert (=> b!6376444 (= e!3871048 call!544785)))

(declare-fun bm!544780 () Bool)

(assert (=> bm!544780 (= call!544781 call!544784)))

(declare-fun bm!544781 () Bool)

(assert (=> bm!544781 (= call!544784 (derivationStepZipperDown!1535 (ite c!1161578 (regOne!33087 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (ite c!1161575 (regTwo!33086 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (ite c!1161576 (regOne!33086 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))) (reg!16616 (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292)))))))))) (ite (or c!1161578 c!1161575) (ite (or c!1161204 c!1161201) lt!2369028 (Context!11343 call!544562)) (Context!11343 call!544786)) (h!71486 s!2326)))))

(declare-fun b!6376445 () Bool)

(assert (=> b!6376445 (= c!1161575 e!3871049)))

(declare-fun res!2622972 () Bool)

(assert (=> b!6376445 (=> (not res!2622972) (not e!3871049))))

(assert (=> b!6376445 (= res!2622972 ((_ is Concat!25132) (ite c!1161204 (regOne!33087 (reg!16616 (regOne!33086 r!7292))) (ite c!1161201 (regTwo!33086 (reg!16616 (regOne!33086 r!7292))) (ite c!1161202 (regOne!33086 (reg!16616 (regOne!33086 r!7292))) (reg!16616 (reg!16616 (regOne!33086 r!7292))))))))))

(assert (=> b!6376445 (= e!3871047 e!3871050)))

(assert (= (and d!1999717 c!1161574) b!6376441))

(assert (= (and d!1999717 (not c!1161574)) b!6376440))

(assert (= (and b!6376440 c!1161578) b!6376443))

(assert (= (and b!6376440 (not c!1161578)) b!6376445))

(assert (= (and b!6376445 res!2622972) b!6376436))

(assert (= (and b!6376445 c!1161575) b!6376437))

(assert (= (and b!6376445 (not c!1161575)) b!6376438))

(assert (= (and b!6376438 c!1161576) b!6376442))

(assert (= (and b!6376438 (not c!1161576)) b!6376439))

(assert (= (and b!6376439 c!1161577) b!6376444))

(assert (= (and b!6376439 (not c!1161577)) b!6376435))

(assert (= (or b!6376442 b!6376444) bm!544777))

(assert (= (or b!6376442 b!6376444) bm!544778))

(assert (= (or b!6376437 bm!544777) bm!544779))

(assert (= (or b!6376437 bm!544778) bm!544780))

(assert (= (or b!6376443 b!6376437) bm!544776))

(assert (= (or b!6376443 bm!544780) bm!544781))

(declare-fun m!7178108 () Bool)

(assert (=> b!6376436 m!7178108))

(declare-fun m!7178110 () Bool)

(assert (=> b!6376441 m!7178110))

(declare-fun m!7178112 () Bool)

(assert (=> bm!544779 m!7178112))

(declare-fun m!7178114 () Bool)

(assert (=> bm!544781 m!7178114))

(declare-fun m!7178116 () Bool)

(assert (=> bm!544776 m!7178116))

(assert (=> bm!544557 d!1999717))

(declare-fun b!6376446 () Bool)

(declare-fun e!3871054 () (InoxSet Context!11342))

(assert (=> b!6376446 (= e!3871054 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376447 () Bool)

(declare-fun e!3871055 () Bool)

(assert (=> b!6376447 (= e!3871055 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))))

(declare-fun b!6376449 () Bool)

(declare-fun e!3871056 () (InoxSet Context!11342))

(declare-fun e!3871057 () (InoxSet Context!11342))

(assert (=> b!6376449 (= e!3871056 e!3871057)))

(declare-fun c!1161581 () Bool)

(assert (=> b!6376449 (= c!1161581 ((_ is Concat!25132) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(declare-fun call!544792 () (InoxSet Context!11342))

(declare-fun c!1161583 () Bool)

(declare-fun call!544793 () List!65160)

(declare-fun bm!544786 () Bool)

(assert (=> bm!544786 (= call!544792 (derivationStepZipperDown!1535 (ite c!1161583 (regTwo!33087 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (regOne!33086 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))) (ite c!1161583 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (Context!11343 call!544793)) (h!71486 s!2326)))))

(declare-fun b!6376450 () Bool)

(declare-fun c!1161582 () Bool)

(assert (=> b!6376450 (= c!1161582 ((_ is Star!16287) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(assert (=> b!6376450 (= e!3871057 e!3871054)))

(declare-fun bm!544787 () Bool)

(declare-fun call!544796 () List!65160)

(assert (=> bm!544787 (= call!544796 call!544793)))

(declare-fun bm!544788 () Bool)

(declare-fun call!544795 () (InoxSet Context!11342))

(declare-fun call!544791 () (InoxSet Context!11342))

(assert (=> bm!544788 (= call!544795 call!544791)))

(declare-fun b!6376451 () Bool)

(declare-fun e!3871052 () (InoxSet Context!11342))

(declare-fun e!3871053 () (InoxSet Context!11342))

(assert (=> b!6376451 (= e!3871052 e!3871053)))

(assert (=> b!6376451 (= c!1161583 ((_ is Union!16287) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(declare-fun b!6376452 () Bool)

(assert (=> b!6376452 (= e!3871052 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) true))))

(declare-fun bm!544789 () Bool)

(declare-fun c!1161580 () Bool)

(assert (=> bm!544789 (= call!544793 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))) (ite (or c!1161580 c!1161581) (regTwo!33086 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))))

(declare-fun b!6376453 () Bool)

(assert (=> b!6376453 (= e!3871057 call!544795)))

(declare-fun d!1999719 () Bool)

(declare-fun c!1161579 () Bool)

(assert (=> d!1999719 (= c!1161579 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (= (c!1161140 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326))))))

(assert (=> d!1999719 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (h!71486 s!2326)) e!3871052)))

(declare-fun b!6376448 () Bool)

(assert (=> b!6376448 (= e!3871056 ((_ map or) call!544792 call!544791))))

(declare-fun b!6376454 () Bool)

(declare-fun call!544794 () (InoxSet Context!11342))

(assert (=> b!6376454 (= e!3871053 ((_ map or) call!544794 call!544792))))

(declare-fun b!6376455 () Bool)

(assert (=> b!6376455 (= e!3871054 call!544795)))

(declare-fun bm!544790 () Bool)

(assert (=> bm!544790 (= call!544791 call!544794)))

(declare-fun bm!544791 () Bool)

(assert (=> bm!544791 (= call!544794 (derivationStepZipperDown!1535 (ite c!1161583 (regOne!33087 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (ite c!1161580 (regTwo!33086 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (ite c!1161581 (regOne!33086 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (reg!16616 (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343))))))))))) (ite (or c!1161583 c!1161580) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))) (Context!11343 call!544796)) (h!71486 s!2326)))))

(declare-fun b!6376456 () Bool)

(assert (=> b!6376456 (= c!1161580 e!3871055)))

(declare-fun res!2622973 () Bool)

(assert (=> b!6376456 (=> (not res!2622973) (not e!3871055))))

(assert (=> b!6376456 (= res!2622973 ((_ is Concat!25132) (h!71484 (exprs!6171 (Context!11343 (Cons!65036 (h!71484 (exprs!6171 (h!71485 zl!343))) (t!378762 (exprs!6171 (h!71485 zl!343)))))))))))

(assert (=> b!6376456 (= e!3871053 e!3871056)))

(assert (= (and d!1999719 c!1161579) b!6376452))

(assert (= (and d!1999719 (not c!1161579)) b!6376451))

(assert (= (and b!6376451 c!1161583) b!6376454))

(assert (= (and b!6376451 (not c!1161583)) b!6376456))

(assert (= (and b!6376456 res!2622973) b!6376447))

(assert (= (and b!6376456 c!1161580) b!6376448))

(assert (= (and b!6376456 (not c!1161580)) b!6376449))

(assert (= (and b!6376449 c!1161581) b!6376453))

(assert (= (and b!6376449 (not c!1161581)) b!6376450))

(assert (= (and b!6376450 c!1161582) b!6376455))

(assert (= (and b!6376450 (not c!1161582)) b!6376446))

(assert (= (or b!6376453 b!6376455) bm!544787))

(assert (= (or b!6376453 b!6376455) bm!544788))

(assert (= (or b!6376448 bm!544787) bm!544789))

(assert (= (or b!6376448 bm!544788) bm!544790))

(assert (= (or b!6376454 b!6376448) bm!544786))

(assert (= (or b!6376454 bm!544790) bm!544791))

(declare-fun m!7178118 () Bool)

(assert (=> b!6376447 m!7178118))

(declare-fun m!7178120 () Bool)

(assert (=> b!6376452 m!7178120))

(declare-fun m!7178122 () Bool)

(assert (=> bm!544789 m!7178122))

(declare-fun m!7178124 () Bool)

(assert (=> bm!544791 m!7178124))

(declare-fun m!7178126 () Bool)

(assert (=> bm!544786 m!7178126))

(assert (=> bm!544608 d!1999719))

(declare-fun d!1999721 () Bool)

(declare-fun res!2622974 () Bool)

(declare-fun e!3871058 () Bool)

(assert (=> d!1999721 (=> res!2622974 e!3871058)))

(assert (=> d!1999721 (= res!2622974 ((_ is Nil!65036) (exprs!6171 (h!71485 zl!343))))))

(assert (=> d!1999721 (= (forall!15465 (exprs!6171 (h!71485 zl!343)) lambda!351515) e!3871058)))

(declare-fun b!6376457 () Bool)

(declare-fun e!3871059 () Bool)

(assert (=> b!6376457 (= e!3871058 e!3871059)))

(declare-fun res!2622975 () Bool)

(assert (=> b!6376457 (=> (not res!2622975) (not e!3871059))))

(assert (=> b!6376457 (= res!2622975 (dynLambda!25804 lambda!351515 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6376458 () Bool)

(assert (=> b!6376458 (= e!3871059 (forall!15465 (t!378762 (exprs!6171 (h!71485 zl!343))) lambda!351515))))

(assert (= (and d!1999721 (not res!2622974)) b!6376457))

(assert (= (and b!6376457 res!2622975) b!6376458))

(declare-fun b_lambda!242297 () Bool)

(assert (=> (not b_lambda!242297) (not b!6376457)))

(declare-fun m!7178128 () Bool)

(assert (=> b!6376457 m!7178128))

(declare-fun m!7178130 () Bool)

(assert (=> b!6376458 m!7178130))

(assert (=> d!1999349 d!1999721))

(declare-fun b!6376459 () Bool)

(declare-fun e!3871062 () (InoxSet Context!11342))

(assert (=> b!6376459 (= e!3871062 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376460 () Bool)

(declare-fun e!3871063 () Bool)

(assert (=> b!6376460 (= e!3871063 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 lt!2369040)))))))

(declare-fun b!6376462 () Bool)

(declare-fun e!3871064 () (InoxSet Context!11342))

(declare-fun e!3871065 () (InoxSet Context!11342))

(assert (=> b!6376462 (= e!3871064 e!3871065)))

(declare-fun c!1161586 () Bool)

(assert (=> b!6376462 (= c!1161586 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369040))))))

(declare-fun c!1161588 () Bool)

(declare-fun call!544799 () List!65160)

(declare-fun call!544798 () (InoxSet Context!11342))

(declare-fun bm!544792 () Bool)

(assert (=> bm!544792 (= call!544798 (derivationStepZipperDown!1535 (ite c!1161588 (regTwo!33087 (h!71484 (exprs!6171 lt!2369040))) (regOne!33086 (h!71484 (exprs!6171 lt!2369040)))) (ite c!1161588 (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (Context!11343 call!544799)) (h!71486 s!2326)))))

(declare-fun b!6376463 () Bool)

(declare-fun c!1161587 () Bool)

(assert (=> b!6376463 (= c!1161587 ((_ is Star!16287) (h!71484 (exprs!6171 lt!2369040))))))

(assert (=> b!6376463 (= e!3871065 e!3871062)))

(declare-fun bm!544793 () Bool)

(declare-fun call!544802 () List!65160)

(assert (=> bm!544793 (= call!544802 call!544799)))

(declare-fun bm!544794 () Bool)

(declare-fun call!544801 () (InoxSet Context!11342))

(declare-fun call!544797 () (InoxSet Context!11342))

(assert (=> bm!544794 (= call!544801 call!544797)))

(declare-fun b!6376464 () Bool)

(declare-fun e!3871060 () (InoxSet Context!11342))

(declare-fun e!3871061 () (InoxSet Context!11342))

(assert (=> b!6376464 (= e!3871060 e!3871061)))

(assert (=> b!6376464 (= c!1161588 ((_ is Union!16287) (h!71484 (exprs!6171 lt!2369040))))))

(declare-fun b!6376465 () Bool)

(assert (=> b!6376465 (= e!3871060 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 lt!2369040))) true))))

(declare-fun bm!544795 () Bool)

(declare-fun c!1161585 () Bool)

(assert (=> bm!544795 (= call!544799 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369040)))) (ite (or c!1161585 c!1161586) (regTwo!33086 (h!71484 (exprs!6171 lt!2369040))) (h!71484 (exprs!6171 lt!2369040)))))))

(declare-fun b!6376466 () Bool)

(assert (=> b!6376466 (= e!3871065 call!544801)))

(declare-fun d!1999723 () Bool)

(declare-fun c!1161584 () Bool)

(assert (=> d!1999723 (= c!1161584 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 lt!2369040))) (= (c!1161140 (h!71484 (exprs!6171 lt!2369040))) (h!71486 s!2326))))))

(assert (=> d!1999723 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369040)) (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (h!71486 s!2326)) e!3871060)))

(declare-fun b!6376461 () Bool)

(assert (=> b!6376461 (= e!3871064 ((_ map or) call!544798 call!544797))))

(declare-fun b!6376467 () Bool)

(declare-fun call!544800 () (InoxSet Context!11342))

(assert (=> b!6376467 (= e!3871061 ((_ map or) call!544800 call!544798))))

(declare-fun b!6376468 () Bool)

(assert (=> b!6376468 (= e!3871062 call!544801)))

(declare-fun bm!544796 () Bool)

(assert (=> bm!544796 (= call!544797 call!544800)))

(declare-fun bm!544797 () Bool)

(assert (=> bm!544797 (= call!544800 (derivationStepZipperDown!1535 (ite c!1161588 (regOne!33087 (h!71484 (exprs!6171 lt!2369040))) (ite c!1161585 (regTwo!33086 (h!71484 (exprs!6171 lt!2369040))) (ite c!1161586 (regOne!33086 (h!71484 (exprs!6171 lt!2369040))) (reg!16616 (h!71484 (exprs!6171 lt!2369040)))))) (ite (or c!1161588 c!1161585) (Context!11343 (t!378762 (exprs!6171 lt!2369040))) (Context!11343 call!544802)) (h!71486 s!2326)))))

(declare-fun b!6376469 () Bool)

(assert (=> b!6376469 (= c!1161585 e!3871063)))

(declare-fun res!2622976 () Bool)

(assert (=> b!6376469 (=> (not res!2622976) (not e!3871063))))

(assert (=> b!6376469 (= res!2622976 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369040))))))

(assert (=> b!6376469 (= e!3871061 e!3871064)))

(assert (= (and d!1999723 c!1161584) b!6376465))

(assert (= (and d!1999723 (not c!1161584)) b!6376464))

(assert (= (and b!6376464 c!1161588) b!6376467))

(assert (= (and b!6376464 (not c!1161588)) b!6376469))

(assert (= (and b!6376469 res!2622976) b!6376460))

(assert (= (and b!6376469 c!1161585) b!6376461))

(assert (= (and b!6376469 (not c!1161585)) b!6376462))

(assert (= (and b!6376462 c!1161586) b!6376466))

(assert (= (and b!6376462 (not c!1161586)) b!6376463))

(assert (= (and b!6376463 c!1161587) b!6376468))

(assert (= (and b!6376463 (not c!1161587)) b!6376459))

(assert (= (or b!6376466 b!6376468) bm!544793))

(assert (= (or b!6376466 b!6376468) bm!544794))

(assert (= (or b!6376461 bm!544793) bm!544795))

(assert (= (or b!6376461 bm!544794) bm!544796))

(assert (= (or b!6376467 b!6376461) bm!544792))

(assert (= (or b!6376467 bm!544796) bm!544797))

(declare-fun m!7178132 () Bool)

(assert (=> b!6376460 m!7178132))

(declare-fun m!7178134 () Bool)

(assert (=> b!6376465 m!7178134))

(declare-fun m!7178136 () Bool)

(assert (=> bm!544795 m!7178136))

(declare-fun m!7178138 () Bool)

(assert (=> bm!544797 m!7178138))

(declare-fun m!7178140 () Bool)

(assert (=> bm!544792 m!7178140))

(assert (=> bm!544607 d!1999723))

(declare-fun bs!1596605 () Bool)

(declare-fun d!1999725 () Bool)

(assert (= bs!1596605 (and d!1999725 d!1999453)))

(declare-fun lambda!351568 () Int)

(assert (=> bs!1596605 (= lambda!351568 lambda!351527)))

(declare-fun bs!1596606 () Bool)

(assert (= bs!1596606 (and d!1999725 d!1999505)))

(assert (=> bs!1596606 (= lambda!351568 lambda!351536)))

(declare-fun bs!1596607 () Bool)

(assert (= bs!1596607 (and d!1999725 d!1999635)))

(assert (=> bs!1596607 (= lambda!351568 lambda!351551)))

(declare-fun bs!1596608 () Bool)

(assert (= bs!1596608 (and d!1999725 d!1999705)))

(assert (=> bs!1596608 (= lambda!351568 lambda!351567)))

(assert (=> d!1999725 (= (nullableZipper!2053 lt!2369031) (exists!2583 lt!2369031 lambda!351568))))

(declare-fun bs!1596609 () Bool)

(assert (= bs!1596609 d!1999725))

(declare-fun m!7178146 () Bool)

(assert (=> bs!1596609 m!7178146))

(assert (=> b!6374970 d!1999725))

(declare-fun b!6376481 () Bool)

(declare-fun e!3871073 () (InoxSet Context!11342))

(assert (=> b!6376481 (= e!3871073 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376482 () Bool)

(declare-fun e!3871072 () (InoxSet Context!11342))

(assert (=> b!6376482 (= e!3871072 e!3871073)))

(declare-fun c!1161595 () Bool)

(assert (=> b!6376482 (= c!1161595 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun call!544807 () (InoxSet Context!11342))

(declare-fun b!6376483 () Bool)

(assert (=> b!6376483 (= e!3871072 ((_ map or) call!544807 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343))))))) (h!71486 s!2326))))))

(declare-fun b!6376484 () Bool)

(assert (=> b!6376484 (= e!3871073 call!544807)))

(declare-fun bm!544802 () Bool)

(assert (=> bm!544802 (= call!544807 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343))))))) (h!71486 s!2326)))))

(declare-fun d!1999727 () Bool)

(declare-fun c!1161594 () Bool)

(declare-fun e!3871071 () Bool)

(assert (=> d!1999727 (= c!1161594 e!3871071)))

(declare-fun res!2622977 () Bool)

(assert (=> d!1999727 (=> (not res!2622977) (not e!3871071))))

(assert (=> d!1999727 (= res!2622977 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))))))))

(assert (=> d!1999727 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343)))) (h!71486 s!2326)) e!3871072)))

(declare-fun b!6376480 () Bool)

(assert (=> b!6376480 (= e!3871071 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 (h!71485 zl!343))))))))))

(assert (= (and d!1999727 res!2622977) b!6376480))

(assert (= (and d!1999727 c!1161594) b!6376483))

(assert (= (and d!1999727 (not c!1161594)) b!6376482))

(assert (= (and b!6376482 c!1161595) b!6376484))

(assert (= (and b!6376482 (not c!1161595)) b!6376481))

(assert (= (or b!6376483 b!6376484) bm!544802))

(declare-fun m!7178150 () Bool)

(assert (=> b!6376483 m!7178150))

(declare-fun m!7178152 () Bool)

(assert (=> bm!544802 m!7178152))

(declare-fun m!7178154 () Bool)

(assert (=> b!6376480 m!7178154))

(assert (=> b!6375589 d!1999727))

(assert (=> d!1999185 d!1999175))

(declare-fun d!1999731 () Bool)

(assert (=> d!1999731 (= (flatMap!1792 lt!2369031 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369039))))

(assert (=> d!1999731 true))

(declare-fun _$13!3560 () Unit!158479)

(assert (=> d!1999731 (= (choose!47394 lt!2369031 lt!2369039 lambda!351451) _$13!3560)))

(declare-fun b_lambda!242299 () Bool)

(assert (=> (not b_lambda!242299) (not d!1999731)))

(declare-fun bs!1596619 () Bool)

(assert (= bs!1596619 d!1999731))

(assert (=> bs!1596619 m!7176732))

(assert (=> bs!1596619 m!7176870))

(assert (=> d!1999185 d!1999731))

(declare-fun d!1999733 () Bool)

(declare-fun res!2622981 () Bool)

(declare-fun e!3871074 () Bool)

(assert (=> d!1999733 (=> res!2622981 e!3871074)))

(assert (=> d!1999733 (= res!2622981 ((_ is EmptyExpr!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> d!1999733 (= (nullableFct!2226 (h!71484 (exprs!6171 (h!71485 zl!343)))) e!3871074)))

(declare-fun b!6376485 () Bool)

(declare-fun e!3871076 () Bool)

(assert (=> b!6376485 (= e!3871074 e!3871076)))

(declare-fun res!2622979 () Bool)

(assert (=> b!6376485 (=> (not res!2622979) (not e!3871076))))

(assert (=> b!6376485 (= res!2622979 (and (not ((_ is EmptyLang!16287) (h!71484 (exprs!6171 (h!71485 zl!343))))) (not ((_ is ElementMatch!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun b!6376486 () Bool)

(declare-fun e!3871075 () Bool)

(assert (=> b!6376486 (= e!3871076 e!3871075)))

(declare-fun res!2622980 () Bool)

(assert (=> b!6376486 (=> res!2622980 e!3871075)))

(assert (=> b!6376486 (= res!2622980 ((_ is Star!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun b!6376487 () Bool)

(declare-fun e!3871078 () Bool)

(declare-fun call!544809 () Bool)

(assert (=> b!6376487 (= e!3871078 call!544809)))

(declare-fun bm!544803 () Bool)

(declare-fun call!544808 () Bool)

(declare-fun c!1161596 () Bool)

(assert (=> bm!544803 (= call!544808 (nullable!6280 (ite c!1161596 (regOne!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun b!6376488 () Bool)

(declare-fun e!3871079 () Bool)

(assert (=> b!6376488 (= e!3871079 e!3871078)))

(declare-fun res!2622982 () Bool)

(assert (=> b!6376488 (= res!2622982 call!544808)))

(assert (=> b!6376488 (=> res!2622982 e!3871078)))

(declare-fun b!6376489 () Bool)

(declare-fun e!3871077 () Bool)

(assert (=> b!6376489 (= e!3871079 e!3871077)))

(declare-fun res!2622978 () Bool)

(assert (=> b!6376489 (= res!2622978 call!544808)))

(assert (=> b!6376489 (=> (not res!2622978) (not e!3871077))))

(declare-fun b!6376490 () Bool)

(assert (=> b!6376490 (= e!3871077 call!544809)))

(declare-fun bm!544804 () Bool)

(assert (=> bm!544804 (= call!544809 (nullable!6280 (ite c!1161596 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regTwo!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun b!6376491 () Bool)

(assert (=> b!6376491 (= e!3871075 e!3871079)))

(assert (=> b!6376491 (= c!1161596 ((_ is Union!16287) (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (= (and d!1999733 (not res!2622981)) b!6376485))

(assert (= (and b!6376485 res!2622979) b!6376486))

(assert (= (and b!6376486 (not res!2622980)) b!6376491))

(assert (= (and b!6376491 c!1161596) b!6376488))

(assert (= (and b!6376491 (not c!1161596)) b!6376489))

(assert (= (and b!6376488 (not res!2622982)) b!6376487))

(assert (= (and b!6376489 res!2622978) b!6376490))

(assert (= (or b!6376487 b!6376490) bm!544804))

(assert (= (or b!6376488 b!6376489) bm!544803))

(declare-fun m!7178160 () Bool)

(assert (=> bm!544803 m!7178160))

(declare-fun m!7178162 () Bool)

(assert (=> bm!544804 m!7178162))

(assert (=> d!1999337 d!1999733))

(assert (=> d!1999305 d!1999297))

(assert (=> d!1999305 d!1999289))

(declare-fun d!1999739 () Bool)

(assert (=> d!1999739 (= (matchR!8470 r!7292 s!2326) (matchRSpec!3388 r!7292 s!2326))))

(assert (=> d!1999739 true))

(declare-fun _$88!5071 () Unit!158479)

(assert (=> d!1999739 (= (choose!47396 r!7292 s!2326) _$88!5071)))

(declare-fun bs!1596642 () Bool)

(assert (= bs!1596642 d!1999739))

(assert (=> bs!1596642 m!7176778))

(assert (=> bs!1596642 m!7176776))

(assert (=> d!1999305 d!1999739))

(assert (=> d!1999305 d!1999211))

(declare-fun d!1999747 () Bool)

(assert (=> d!1999747 true))

(declare-fun setRes!43500 () Bool)

(assert (=> d!1999747 setRes!43500))

(declare-fun condSetEmpty!43500 () Bool)

(declare-fun res!2622983 () (InoxSet Context!11342))

(assert (=> d!1999747 (= condSetEmpty!43500 (= res!2622983 ((as const (Array Context!11342 Bool)) false)))))

(assert (=> d!1999747 (= (choose!47392 z!1189 lambda!351451) res!2622983)))

(declare-fun setIsEmpty!43500 () Bool)

(assert (=> setIsEmpty!43500 setRes!43500))

(declare-fun e!3871081 () Bool)

(declare-fun setElem!43500 () Context!11342)

(declare-fun setNonEmpty!43500 () Bool)

(declare-fun tp!1774729 () Bool)

(assert (=> setNonEmpty!43500 (= setRes!43500 (and tp!1774729 (inv!83964 setElem!43500) e!3871081))))

(declare-fun setRest!43500 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43500 (= res!2622983 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43500 true) setRest!43500))))

(declare-fun b!6376494 () Bool)

(declare-fun tp!1774730 () Bool)

(assert (=> b!6376494 (= e!3871081 tp!1774730)))

(assert (= (and d!1999747 condSetEmpty!43500) setIsEmpty!43500))

(assert (= (and d!1999747 (not condSetEmpty!43500)) setNonEmpty!43500))

(assert (= setNonEmpty!43500 b!6376494))

(declare-fun m!7178174 () Bool)

(assert (=> setNonEmpty!43500 m!7178174))

(assert (=> d!1999339 d!1999747))

(declare-fun d!1999749 () Bool)

(assert (=> d!1999749 (= (isConcat!1212 lt!2369099) ((_ is Concat!25132) lt!2369099))))

(assert (=> b!6375289 d!1999749))

(assert (=> b!6375628 d!1999249))

(declare-fun bs!1596643 () Bool)

(declare-fun d!1999753 () Bool)

(assert (= bs!1596643 (and d!1999753 d!1999349)))

(declare-fun lambda!351572 () Int)

(assert (=> bs!1596643 (= lambda!351572 lambda!351515)))

(declare-fun bs!1596644 () Bool)

(assert (= bs!1596644 (and d!1999753 d!1999249)))

(assert (=> bs!1596644 (= lambda!351572 lambda!351486)))

(declare-fun bs!1596645 () Bool)

(assert (= bs!1596645 (and d!1999753 d!1999347)))

(assert (=> bs!1596645 (= lambda!351572 lambda!351514)))

(declare-fun bs!1596646 () Bool)

(assert (= bs!1596646 (and d!1999753 d!1999307)))

(assert (=> bs!1596646 (= lambda!351572 lambda!351499)))

(declare-fun bs!1596647 () Bool)

(assert (= bs!1596647 (and d!1999753 d!1999527)))

(assert (=> bs!1596647 (= lambda!351572 lambda!351537)))

(declare-fun bs!1596648 () Bool)

(assert (= bs!1596648 (and d!1999753 d!1999345)))

(assert (=> bs!1596648 (= lambda!351572 lambda!351511)))

(declare-fun bs!1596649 () Bool)

(assert (= bs!1596649 (and d!1999753 d!1999221)))

(assert (=> bs!1596649 (= lambda!351572 lambda!351478)))

(declare-fun bs!1596650 () Bool)

(assert (= bs!1596650 (and d!1999753 d!1999681)))

(assert (=> bs!1596650 (= lambda!351572 lambda!351566)))

(declare-fun bs!1596651 () Bool)

(assert (= bs!1596651 (and d!1999753 d!1999489)))

(assert (=> bs!1596651 (= lambda!351572 lambda!351534)))

(declare-fun bs!1596652 () Bool)

(assert (= bs!1596652 (and d!1999753 d!1999529)))

(assert (=> bs!1596652 (= lambda!351572 lambda!351538)))

(declare-fun bs!1596653 () Bool)

(assert (= bs!1596653 (and d!1999753 d!1999555)))

(assert (=> bs!1596653 (= lambda!351572 lambda!351542)))

(declare-fun lt!2369185 () List!65160)

(assert (=> d!1999753 (forall!15465 lt!2369185 lambda!351572)))

(declare-fun e!3871088 () List!65160)

(assert (=> d!1999753 (= lt!2369185 e!3871088)))

(declare-fun c!1161603 () Bool)

(assert (=> d!1999753 (= c!1161603 ((_ is Cons!65037) (t!378763 zl!343)))))

(assert (=> d!1999753 (= (unfocusZipperList!1708 (t!378763 zl!343)) lt!2369185)))

(declare-fun b!6376506 () Bool)

(assert (=> b!6376506 (= e!3871088 (Cons!65036 (generalisedConcat!1884 (exprs!6171 (h!71485 (t!378763 zl!343)))) (unfocusZipperList!1708 (t!378763 (t!378763 zl!343)))))))

(declare-fun b!6376507 () Bool)

(assert (=> b!6376507 (= e!3871088 Nil!65036)))

(assert (= (and d!1999753 c!1161603) b!6376506))

(assert (= (and d!1999753 (not c!1161603)) b!6376507))

(declare-fun m!7178184 () Bool)

(assert (=> d!1999753 m!7178184))

(declare-fun m!7178188 () Bool)

(assert (=> b!6376506 m!7178188))

(declare-fun m!7178190 () Bool)

(assert (=> b!6376506 m!7178190))

(assert (=> b!6375628 d!1999753))

(declare-fun b!6376514 () Bool)

(declare-fun e!3871094 () (InoxSet Context!11342))

(assert (=> b!6376514 (= e!3871094 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376515 () Bool)

(declare-fun e!3871093 () (InoxSet Context!11342))

(assert (=> b!6376515 (= e!3871093 e!3871094)))

(declare-fun c!1161607 () Bool)

(assert (=> b!6376515 (= c!1161607 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039))))))))

(declare-fun call!544817 () (InoxSet Context!11342))

(declare-fun b!6376516 () Bool)

(assert (=> b!6376516 (= e!3871093 ((_ map or) call!544817 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039)))))) (h!71486 s!2326))))))

(declare-fun b!6376517 () Bool)

(assert (=> b!6376517 (= e!3871094 call!544817)))

(declare-fun bm!544812 () Bool)

(assert (=> bm!544812 (= call!544817 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039)))))) (h!71486 s!2326)))))

(declare-fun d!1999757 () Bool)

(declare-fun c!1161606 () Bool)

(declare-fun e!3871092 () Bool)

(assert (=> d!1999757 (= c!1161606 e!3871092)))

(declare-fun res!2622986 () Bool)

(assert (=> d!1999757 (=> (not res!2622986) (not e!3871092))))

(assert (=> d!1999757 (= res!2622986 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039))))))))

(assert (=> d!1999757 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369039))) (h!71486 s!2326)) e!3871093)))

(declare-fun b!6376513 () Bool)

(assert (=> b!6376513 (= e!3871092 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369039)))))))))

(assert (= (and d!1999757 res!2622986) b!6376513))

(assert (= (and d!1999757 c!1161606) b!6376516))

(assert (= (and d!1999757 (not c!1161606)) b!6376515))

(assert (= (and b!6376515 c!1161607) b!6376517))

(assert (= (and b!6376515 (not c!1161607)) b!6376514))

(assert (= (or b!6376516 b!6376517) bm!544812))

(declare-fun m!7178196 () Bool)

(assert (=> b!6376516 m!7178196))

(declare-fun m!7178200 () Bool)

(assert (=> bm!544812 m!7178200))

(declare-fun m!7178202 () Bool)

(assert (=> b!6376513 m!7178202))

(assert (=> b!6375012 d!1999757))

(declare-fun d!1999761 () Bool)

(assert (=> d!1999761 (= (nullable!6280 (reg!16616 r!7292)) (nullableFct!2226 (reg!16616 r!7292)))))

(declare-fun bs!1596654 () Bool)

(assert (= bs!1596654 d!1999761))

(declare-fun m!7178204 () Bool)

(assert (=> bs!1596654 m!7178204))

(assert (=> b!6375183 d!1999761))

(declare-fun d!1999763 () Bool)

(declare-fun res!2622992 () Bool)

(declare-fun e!3871102 () Bool)

(assert (=> d!1999763 (=> res!2622992 e!3871102)))

(assert (=> d!1999763 (= res!2622992 ((_ is Nil!65036) lt!2369139))))

(assert (=> d!1999763 (= (forall!15465 lt!2369139 lambda!351514) e!3871102)))

(declare-fun b!6376527 () Bool)

(declare-fun e!3871103 () Bool)

(assert (=> b!6376527 (= e!3871102 e!3871103)))

(declare-fun res!2622993 () Bool)

(assert (=> b!6376527 (=> (not res!2622993) (not e!3871103))))

(assert (=> b!6376527 (= res!2622993 (dynLambda!25804 lambda!351514 (h!71484 lt!2369139)))))

(declare-fun b!6376528 () Bool)

(assert (=> b!6376528 (= e!3871103 (forall!15465 (t!378762 lt!2369139) lambda!351514))))

(assert (= (and d!1999763 (not res!2622992)) b!6376527))

(assert (= (and b!6376527 res!2622993) b!6376528))

(declare-fun b_lambda!242301 () Bool)

(assert (=> (not b_lambda!242301) (not b!6376527)))

(declare-fun m!7178206 () Bool)

(assert (=> b!6376527 m!7178206))

(declare-fun m!7178208 () Bool)

(assert (=> b!6376528 m!7178208))

(assert (=> d!1999347 d!1999763))

(assert (=> b!6375513 d!1999551))

(declare-fun d!1999765 () Bool)

(declare-fun c!1161610 () Bool)

(assert (=> d!1999765 (= c!1161610 (isEmpty!37161 (tail!12151 (t!378764 s!2326))))))

(declare-fun e!3871104 () Bool)

(assert (=> d!1999765 (= (matchZipper!2299 (derivationStepZipper!2253 lt!2369027 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))) e!3871104)))

(declare-fun b!6376529 () Bool)

(assert (=> b!6376529 (= e!3871104 (nullableZipper!2053 (derivationStepZipper!2253 lt!2369027 (head!13066 (t!378764 s!2326)))))))

(declare-fun b!6376530 () Bool)

(assert (=> b!6376530 (= e!3871104 (matchZipper!2299 (derivationStepZipper!2253 (derivationStepZipper!2253 lt!2369027 (head!13066 (t!378764 s!2326))) (head!13066 (tail!12151 (t!378764 s!2326)))) (tail!12151 (tail!12151 (t!378764 s!2326)))))))

(assert (= (and d!1999765 c!1161610) b!6376529))

(assert (= (and d!1999765 (not c!1161610)) b!6376530))

(assert (=> d!1999765 m!7176826))

(assert (=> d!1999765 m!7177738))

(assert (=> b!6376529 m!7176824))

(declare-fun m!7178216 () Bool)

(assert (=> b!6376529 m!7178216))

(assert (=> b!6376530 m!7176826))

(assert (=> b!6376530 m!7177742))

(assert (=> b!6376530 m!7176824))

(assert (=> b!6376530 m!7177742))

(declare-fun m!7178218 () Bool)

(assert (=> b!6376530 m!7178218))

(assert (=> b!6376530 m!7176826))

(assert (=> b!6376530 m!7177746))

(assert (=> b!6376530 m!7178218))

(assert (=> b!6376530 m!7177746))

(declare-fun m!7178222 () Bool)

(assert (=> b!6376530 m!7178222))

(assert (=> b!6374985 d!1999765))

(declare-fun bs!1596655 () Bool)

(declare-fun d!1999769 () Bool)

(assert (= bs!1596655 (and d!1999769 b!6374913)))

(declare-fun lambda!351573 () Int)

(assert (=> bs!1596655 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351573 lambda!351451))))

(declare-fun bs!1596656 () Bool)

(assert (= bs!1596656 (and d!1999769 d!1999189)))

(assert (=> bs!1596656 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351573 lambda!351467))))

(declare-fun bs!1596657 () Bool)

(assert (= bs!1596657 (and d!1999769 d!1999569)))

(assert (=> bs!1596657 (= lambda!351573 lambda!351543)))

(declare-fun bs!1596658 () Bool)

(assert (= bs!1596658 (and d!1999769 d!1999627)))

(assert (=> bs!1596658 (= lambda!351573 lambda!351550)))

(assert (=> d!1999769 true))

(assert (=> d!1999769 (= (derivationStepZipper!2253 lt!2369027 (head!13066 (t!378764 s!2326))) (flatMap!1792 lt!2369027 lambda!351573))))

(declare-fun bs!1596659 () Bool)

(assert (= bs!1596659 d!1999769))

(declare-fun m!7178232 () Bool)

(assert (=> bs!1596659 m!7178232))

(assert (=> b!6374985 d!1999769))

(assert (=> b!6374985 d!1999571))

(assert (=> b!6374985 d!1999573))

(assert (=> d!1999239 d!1999235))

(declare-fun d!1999775 () Bool)

(assert (=> d!1999775 (= (flatMap!1792 lt!2369026 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369038))))

(assert (=> d!1999775 true))

(declare-fun _$13!3561 () Unit!158479)

(assert (=> d!1999775 (= (choose!47394 lt!2369026 lt!2369038 lambda!351451) _$13!3561)))

(declare-fun b_lambda!242305 () Bool)

(assert (=> (not b_lambda!242305) (not d!1999775)))

(declare-fun bs!1596660 () Bool)

(assert (= bs!1596660 d!1999775))

(assert (=> bs!1596660 m!7176750))

(assert (=> bs!1596660 m!7177012))

(assert (=> d!1999239 d!1999775))

(declare-fun d!1999777 () Bool)

(assert (=> d!1999777 (= (nullable!6280 (h!71484 (exprs!6171 lt!2369028))) (nullableFct!2226 (h!71484 (exprs!6171 lt!2369028))))))

(declare-fun bs!1596661 () Bool)

(assert (= bs!1596661 d!1999777))

(declare-fun m!7178240 () Bool)

(assert (=> bs!1596661 m!7178240))

(assert (=> b!6375202 d!1999777))

(declare-fun d!1999781 () Bool)

(assert (=> d!1999781 (= (head!13067 (exprs!6171 (h!71485 zl!343))) (h!71484 (exprs!6171 (h!71485 zl!343))))))

(assert (=> b!6375293 d!1999781))

(assert (=> b!6375294 d!1999207))

(assert (=> b!6375518 d!1999551))

(declare-fun d!1999783 () Bool)

(declare-fun c!1161614 () Bool)

(assert (=> d!1999783 (= c!1161614 (isEmpty!37161 (tail!12151 (t!378764 s!2326))))))

(declare-fun e!3871111 () Bool)

(assert (=> d!1999783 (= (matchZipper!2299 (derivationStepZipper!2253 lt!2369036 (head!13066 (t!378764 s!2326))) (tail!12151 (t!378764 s!2326))) e!3871111)))

(declare-fun b!6376540 () Bool)

(assert (=> b!6376540 (= e!3871111 (nullableZipper!2053 (derivationStepZipper!2253 lt!2369036 (head!13066 (t!378764 s!2326)))))))

(declare-fun b!6376541 () Bool)

(assert (=> b!6376541 (= e!3871111 (matchZipper!2299 (derivationStepZipper!2253 (derivationStepZipper!2253 lt!2369036 (head!13066 (t!378764 s!2326))) (head!13066 (tail!12151 (t!378764 s!2326)))) (tail!12151 (tail!12151 (t!378764 s!2326)))))))

(assert (= (and d!1999783 c!1161614) b!6376540))

(assert (= (and d!1999783 (not c!1161614)) b!6376541))

(assert (=> d!1999783 m!7176826))

(assert (=> d!1999783 m!7177738))

(assert (=> b!6376540 m!7176926))

(declare-fun m!7178242 () Bool)

(assert (=> b!6376540 m!7178242))

(assert (=> b!6376541 m!7176826))

(assert (=> b!6376541 m!7177742))

(assert (=> b!6376541 m!7176926))

(assert (=> b!6376541 m!7177742))

(declare-fun m!7178244 () Bool)

(assert (=> b!6376541 m!7178244))

(assert (=> b!6376541 m!7176826))

(assert (=> b!6376541 m!7177746))

(assert (=> b!6376541 m!7178244))

(assert (=> b!6376541 m!7177746))

(declare-fun m!7178246 () Bool)

(assert (=> b!6376541 m!7178246))

(assert (=> b!6375127 d!1999783))

(declare-fun bs!1596669 () Bool)

(declare-fun d!1999785 () Bool)

(assert (= bs!1596669 (and d!1999785 d!1999569)))

(declare-fun lambda!351575 () Int)

(assert (=> bs!1596669 (= lambda!351575 lambda!351543)))

(declare-fun bs!1596670 () Bool)

(assert (= bs!1596670 (and d!1999785 d!1999189)))

(assert (=> bs!1596670 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351575 lambda!351467))))

(declare-fun bs!1596672 () Bool)

(assert (= bs!1596672 (and d!1999785 d!1999769)))

(assert (=> bs!1596672 (= lambda!351575 lambda!351573)))

(declare-fun bs!1596673 () Bool)

(assert (= bs!1596673 (and d!1999785 d!1999627)))

(assert (=> bs!1596673 (= lambda!351575 lambda!351550)))

(declare-fun bs!1596674 () Bool)

(assert (= bs!1596674 (and d!1999785 b!6374913)))

(assert (=> bs!1596674 (= (= (head!13066 (t!378764 s!2326)) (h!71486 s!2326)) (= lambda!351575 lambda!351451))))

(assert (=> d!1999785 true))

(assert (=> d!1999785 (= (derivationStepZipper!2253 lt!2369036 (head!13066 (t!378764 s!2326))) (flatMap!1792 lt!2369036 lambda!351575))))

(declare-fun bs!1596675 () Bool)

(assert (= bs!1596675 d!1999785))

(declare-fun m!7178254 () Bool)

(assert (=> bs!1596675 m!7178254))

(assert (=> b!6375127 d!1999785))

(assert (=> b!6375127 d!1999571))

(assert (=> b!6375127 d!1999573))

(declare-fun b!6376551 () Bool)

(declare-fun e!3871121 () (InoxSet Context!11342))

(assert (=> b!6376551 (= e!3871121 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376552 () Bool)

(declare-fun e!3871122 () Bool)

(assert (=> b!6376552 (= e!3871122 (nullable!6280 (regOne!33086 (h!71484 (exprs!6171 lt!2369028)))))))

(declare-fun b!6376554 () Bool)

(declare-fun e!3871123 () (InoxSet Context!11342))

(declare-fun e!3871124 () (InoxSet Context!11342))

(assert (=> b!6376554 (= e!3871123 e!3871124)))

(declare-fun c!1161619 () Bool)

(assert (=> b!6376554 (= c!1161619 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369028))))))

(declare-fun call!544826 () (InoxSet Context!11342))

(declare-fun c!1161621 () Bool)

(declare-fun call!544827 () List!65160)

(declare-fun bm!544820 () Bool)

(assert (=> bm!544820 (= call!544826 (derivationStepZipperDown!1535 (ite c!1161621 (regTwo!33087 (h!71484 (exprs!6171 lt!2369028))) (regOne!33086 (h!71484 (exprs!6171 lt!2369028)))) (ite c!1161621 (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (Context!11343 call!544827)) (h!71486 s!2326)))))

(declare-fun b!6376555 () Bool)

(declare-fun c!1161620 () Bool)

(assert (=> b!6376555 (= c!1161620 ((_ is Star!16287) (h!71484 (exprs!6171 lt!2369028))))))

(assert (=> b!6376555 (= e!3871124 e!3871121)))

(declare-fun bm!544821 () Bool)

(declare-fun call!544830 () List!65160)

(assert (=> bm!544821 (= call!544830 call!544827)))

(declare-fun bm!544822 () Bool)

(declare-fun call!544829 () (InoxSet Context!11342))

(declare-fun call!544825 () (InoxSet Context!11342))

(assert (=> bm!544822 (= call!544829 call!544825)))

(declare-fun b!6376556 () Bool)

(declare-fun e!3871119 () (InoxSet Context!11342))

(declare-fun e!3871120 () (InoxSet Context!11342))

(assert (=> b!6376556 (= e!3871119 e!3871120)))

(assert (=> b!6376556 (= c!1161621 ((_ is Union!16287) (h!71484 (exprs!6171 lt!2369028))))))

(declare-fun b!6376557 () Bool)

(assert (=> b!6376557 (= e!3871119 (store ((as const (Array Context!11342 Bool)) false) (Context!11343 (t!378762 (exprs!6171 lt!2369028))) true))))

(declare-fun bm!544823 () Bool)

(declare-fun c!1161618 () Bool)

(assert (=> bm!544823 (= call!544827 ($colon$colon!2148 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369028)))) (ite (or c!1161618 c!1161619) (regTwo!33086 (h!71484 (exprs!6171 lt!2369028))) (h!71484 (exprs!6171 lt!2369028)))))))

(declare-fun b!6376558 () Bool)

(assert (=> b!6376558 (= e!3871124 call!544829)))

(declare-fun d!1999793 () Bool)

(declare-fun c!1161617 () Bool)

(assert (=> d!1999793 (= c!1161617 (and ((_ is ElementMatch!16287) (h!71484 (exprs!6171 lt!2369028))) (= (c!1161140 (h!71484 (exprs!6171 lt!2369028))) (h!71486 s!2326))))))

(assert (=> d!1999793 (= (derivationStepZipperDown!1535 (h!71484 (exprs!6171 lt!2369028)) (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (h!71486 s!2326)) e!3871119)))

(declare-fun b!6376553 () Bool)

(assert (=> b!6376553 (= e!3871123 ((_ map or) call!544826 call!544825))))

(declare-fun b!6376559 () Bool)

(declare-fun call!544828 () (InoxSet Context!11342))

(assert (=> b!6376559 (= e!3871120 ((_ map or) call!544828 call!544826))))

(declare-fun b!6376560 () Bool)

(assert (=> b!6376560 (= e!3871121 call!544829)))

(declare-fun bm!544824 () Bool)

(assert (=> bm!544824 (= call!544825 call!544828)))

(declare-fun bm!544825 () Bool)

(assert (=> bm!544825 (= call!544828 (derivationStepZipperDown!1535 (ite c!1161621 (regOne!33087 (h!71484 (exprs!6171 lt!2369028))) (ite c!1161618 (regTwo!33086 (h!71484 (exprs!6171 lt!2369028))) (ite c!1161619 (regOne!33086 (h!71484 (exprs!6171 lt!2369028))) (reg!16616 (h!71484 (exprs!6171 lt!2369028)))))) (ite (or c!1161621 c!1161618) (Context!11343 (t!378762 (exprs!6171 lt!2369028))) (Context!11343 call!544830)) (h!71486 s!2326)))))

(declare-fun b!6376561 () Bool)

(assert (=> b!6376561 (= c!1161618 e!3871122)))

(declare-fun res!2623002 () Bool)

(assert (=> b!6376561 (=> (not res!2623002) (not e!3871122))))

(assert (=> b!6376561 (= res!2623002 ((_ is Concat!25132) (h!71484 (exprs!6171 lt!2369028))))))

(assert (=> b!6376561 (= e!3871120 e!3871123)))

(assert (= (and d!1999793 c!1161617) b!6376557))

(assert (= (and d!1999793 (not c!1161617)) b!6376556))

(assert (= (and b!6376556 c!1161621) b!6376559))

(assert (= (and b!6376556 (not c!1161621)) b!6376561))

(assert (= (and b!6376561 res!2623002) b!6376552))

(assert (= (and b!6376561 c!1161618) b!6376553))

(assert (= (and b!6376561 (not c!1161618)) b!6376554))

(assert (= (and b!6376554 c!1161619) b!6376558))

(assert (= (and b!6376554 (not c!1161619)) b!6376555))

(assert (= (and b!6376555 c!1161620) b!6376560))

(assert (= (and b!6376555 (not c!1161620)) b!6376551))

(assert (= (or b!6376558 b!6376560) bm!544821))

(assert (= (or b!6376558 b!6376560) bm!544822))

(assert (= (or b!6376553 bm!544821) bm!544823))

(assert (= (or b!6376553 bm!544822) bm!544824))

(assert (= (or b!6376559 b!6376553) bm!544820))

(assert (= (or b!6376559 bm!544824) bm!544825))

(declare-fun m!7178266 () Bool)

(assert (=> b!6376552 m!7178266))

(declare-fun m!7178270 () Bool)

(assert (=> b!6376557 m!7178270))

(declare-fun m!7178272 () Bool)

(assert (=> bm!544823 m!7178272))

(declare-fun m!7178274 () Bool)

(assert (=> bm!544825 m!7178274))

(declare-fun m!7178276 () Bool)

(assert (=> bm!544820 m!7178276))

(assert (=> bm!544573 d!1999793))

(declare-fun b!6376564 () Bool)

(declare-fun res!2623005 () Bool)

(declare-fun e!3871132 () Bool)

(assert (=> b!6376564 (=> (not res!2623005) (not e!3871132))))

(declare-fun call!544832 () Bool)

(assert (=> b!6376564 (= res!2623005 call!544832)))

(declare-fun e!3871130 () Bool)

(assert (=> b!6376564 (= e!3871130 e!3871132)))

(declare-fun bm!544826 () Bool)

(declare-fun call!544833 () Bool)

(declare-fun c!1161623 () Bool)

(declare-fun c!1161624 () Bool)

(assert (=> bm!544826 (= call!544833 (validRegex!8023 (ite c!1161624 (reg!16616 lt!2369054) (ite c!1161623 (regOne!33087 lt!2369054) (regOne!33086 lt!2369054)))))))

(declare-fun b!6376565 () Bool)

(declare-fun e!3871128 () Bool)

(declare-fun e!3871126 () Bool)

(assert (=> b!6376565 (= e!3871128 e!3871126)))

(declare-fun res!2623004 () Bool)

(assert (=> b!6376565 (= res!2623004 (not (nullable!6280 (reg!16616 lt!2369054))))))

(assert (=> b!6376565 (=> (not res!2623004) (not e!3871126))))

(declare-fun b!6376566 () Bool)

(declare-fun e!3871129 () Bool)

(declare-fun e!3871131 () Bool)

(assert (=> b!6376566 (= e!3871129 e!3871131)))

(declare-fun res!2623007 () Bool)

(assert (=> b!6376566 (=> (not res!2623007) (not e!3871131))))

(assert (=> b!6376566 (= res!2623007 call!544832)))

(declare-fun b!6376567 () Bool)

(declare-fun call!544831 () Bool)

(assert (=> b!6376567 (= e!3871131 call!544831)))

(declare-fun b!6376568 () Bool)

(assert (=> b!6376568 (= e!3871132 call!544831)))

(declare-fun bm!544827 () Bool)

(assert (=> bm!544827 (= call!544832 call!544833)))

(declare-fun b!6376569 () Bool)

(assert (=> b!6376569 (= e!3871128 e!3871130)))

(assert (=> b!6376569 (= c!1161623 ((_ is Union!16287) lt!2369054))))

(declare-fun b!6376570 () Bool)

(declare-fun e!3871127 () Bool)

(assert (=> b!6376570 (= e!3871127 e!3871128)))

(assert (=> b!6376570 (= c!1161624 ((_ is Star!16287) lt!2369054))))

(declare-fun b!6376571 () Bool)

(declare-fun res!2623006 () Bool)

(assert (=> b!6376571 (=> res!2623006 e!3871129)))

(assert (=> b!6376571 (= res!2623006 (not ((_ is Concat!25132) lt!2369054)))))

(assert (=> b!6376571 (= e!3871130 e!3871129)))

(declare-fun bm!544828 () Bool)

(assert (=> bm!544828 (= call!544831 (validRegex!8023 (ite c!1161623 (regTwo!33087 lt!2369054) (regTwo!33086 lt!2369054))))))

(declare-fun b!6376572 () Bool)

(assert (=> b!6376572 (= e!3871126 call!544833)))

(declare-fun d!1999799 () Bool)

(declare-fun res!2623003 () Bool)

(assert (=> d!1999799 (=> res!2623003 e!3871127)))

(assert (=> d!1999799 (= res!2623003 ((_ is ElementMatch!16287) lt!2369054))))

(assert (=> d!1999799 (= (validRegex!8023 lt!2369054) e!3871127)))

(assert (= (and d!1999799 (not res!2623003)) b!6376570))

(assert (= (and b!6376570 c!1161624) b!6376565))

(assert (= (and b!6376570 (not c!1161624)) b!6376569))

(assert (= (and b!6376565 res!2623004) b!6376572))

(assert (= (and b!6376569 c!1161623) b!6376564))

(assert (= (and b!6376569 (not c!1161623)) b!6376571))

(assert (= (and b!6376564 res!2623005) b!6376568))

(assert (= (and b!6376571 (not res!2623006)) b!6376566))

(assert (= (and b!6376566 res!2623007) b!6376567))

(assert (= (or b!6376568 b!6376567) bm!544828))

(assert (= (or b!6376564 b!6376566) bm!544827))

(assert (= (or b!6376572 bm!544827) bm!544826))

(declare-fun m!7178280 () Bool)

(assert (=> bm!544826 m!7178280))

(declare-fun m!7178282 () Bool)

(assert (=> b!6376565 m!7178282))

(declare-fun m!7178284 () Bool)

(assert (=> bm!544828 m!7178284))

(assert (=> d!1999163 d!1999799))

(assert (=> d!1999163 d!1999345))

(assert (=> d!1999163 d!1999347))

(declare-fun d!1999803 () Bool)

(assert (=> d!1999803 (= (isEmpty!37158 (unfocusZipperList!1708 zl!343)) ((_ is Nil!65036) (unfocusZipperList!1708 zl!343)))))

(assert (=> b!6375616 d!1999803))

(assert (=> bs!1596363 d!1999341))

(assert (=> d!1999247 d!1999245))

(declare-fun d!1999805 () Bool)

(assert (=> d!1999805 (= (flatMap!1792 lt!2369032 lambda!351451) (dynLambda!25803 lambda!351451 lt!2369028))))

(assert (=> d!1999805 true))

(declare-fun _$13!3562 () Unit!158479)

(assert (=> d!1999805 (= (choose!47394 lt!2369032 lt!2369028 lambda!351451) _$13!3562)))

(declare-fun b_lambda!242307 () Bool)

(assert (=> (not b_lambda!242307) (not d!1999805)))

(declare-fun bs!1596683 () Bool)

(assert (= bs!1596683 d!1999805))

(assert (=> bs!1596683 m!7176758))

(assert (=> bs!1596683 m!7177024))

(assert (=> d!1999247 d!1999805))

(assert (=> b!6375586 d!1999337))

(declare-fun b!6376578 () Bool)

(declare-fun e!3871137 () (InoxSet Context!11342))

(assert (=> b!6376578 (= e!3871137 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376579 () Bool)

(declare-fun e!3871136 () (InoxSet Context!11342))

(assert (=> b!6376579 (= e!3871136 e!3871137)))

(declare-fun c!1161627 () Bool)

(assert (=> b!6376579 (= c!1161627 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038))))))))

(declare-fun b!6376580 () Bool)

(declare-fun call!544834 () (InoxSet Context!11342))

(assert (=> b!6376580 (= e!3871136 ((_ map or) call!544834 (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038)))))) (h!71486 s!2326))))))

(declare-fun b!6376581 () Bool)

(assert (=> b!6376581 (= e!3871137 call!544834)))

(declare-fun bm!544829 () Bool)

(assert (=> bm!544829 (= call!544834 (derivationStepZipperDown!1535 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038))))) (Context!11343 (t!378762 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038)))))) (h!71486 s!2326)))))

(declare-fun d!1999807 () Bool)

(declare-fun c!1161626 () Bool)

(declare-fun e!3871135 () Bool)

(assert (=> d!1999807 (= c!1161626 e!3871135)))

(declare-fun res!2623010 () Bool)

(assert (=> d!1999807 (=> (not res!2623010) (not e!3871135))))

(assert (=> d!1999807 (= res!2623010 ((_ is Cons!65036) (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038))))))))

(assert (=> d!1999807 (= (derivationStepZipperUp!1461 (Context!11343 (t!378762 (exprs!6171 lt!2369038))) (h!71486 s!2326)) e!3871136)))

(declare-fun b!6376577 () Bool)

(assert (=> b!6376577 (= e!3871135 (nullable!6280 (h!71484 (exprs!6171 (Context!11343 (t!378762 (exprs!6171 lt!2369038)))))))))

(assert (= (and d!1999807 res!2623010) b!6376577))

(assert (= (and d!1999807 c!1161626) b!6376580))

(assert (= (and d!1999807 (not c!1161626)) b!6376579))

(assert (= (and b!6376579 c!1161627) b!6376581))

(assert (= (and b!6376579 (not c!1161627)) b!6376578))

(assert (= (or b!6376580 b!6376581) bm!544829))

(declare-fun m!7178300 () Bool)

(assert (=> b!6376580 m!7178300))

(declare-fun m!7178302 () Bool)

(assert (=> bm!544829 m!7178302))

(declare-fun m!7178304 () Bool)

(assert (=> b!6376577 m!7178304))

(assert (=> b!6375210 d!1999807))

(declare-fun b!6376582 () Bool)

(declare-fun res!2623017 () Bool)

(declare-fun e!3871143 () Bool)

(assert (=> b!6376582 (=> (not res!2623017) (not e!3871143))))

(declare-fun call!544835 () Bool)

(assert (=> b!6376582 (= res!2623017 (not call!544835))))

(declare-fun b!6376583 () Bool)

(declare-fun e!3871144 () Bool)

(declare-fun lt!2369187 () Bool)

(assert (=> b!6376583 (= e!3871144 (= lt!2369187 call!544835))))

(declare-fun b!6376584 () Bool)

(declare-fun e!3871141 () Bool)

(assert (=> b!6376584 (= e!3871144 e!3871141)))

(declare-fun c!1161630 () Bool)

(assert (=> b!6376584 (= c!1161630 ((_ is EmptyLang!16287) (regOne!33086 r!7292)))))

(declare-fun b!6376585 () Bool)

(declare-fun e!3871138 () Bool)

(assert (=> b!6376585 (= e!3871138 (nullable!6280 (regOne!33086 r!7292)))))

(declare-fun b!6376586 () Bool)

(declare-fun e!3871142 () Bool)

(declare-fun e!3871140 () Bool)

(assert (=> b!6376586 (= e!3871142 e!3871140)))

(declare-fun res!2623013 () Bool)

(assert (=> b!6376586 (=> (not res!2623013) (not e!3871140))))

(assert (=> b!6376586 (= res!2623013 (not lt!2369187))))

(declare-fun b!6376587 () Bool)

(declare-fun res!2623018 () Bool)

(assert (=> b!6376587 (=> res!2623018 e!3871142)))

(assert (=> b!6376587 (= res!2623018 e!3871143)))

(declare-fun res!2623012 () Bool)

(assert (=> b!6376587 (=> (not res!2623012) (not e!3871143))))

(assert (=> b!6376587 (= res!2623012 lt!2369187)))

(declare-fun bm!544830 () Bool)

(assert (=> bm!544830 (= call!544835 (isEmpty!37161 (_1!36569 (get!22515 lt!2369120))))))

(declare-fun b!6376588 () Bool)

(declare-fun res!2623015 () Bool)

(declare-fun e!3871139 () Bool)

(assert (=> b!6376588 (=> res!2623015 e!3871139)))

(assert (=> b!6376588 (= res!2623015 (not (isEmpty!37161 (tail!12151 (_1!36569 (get!22515 lt!2369120))))))))

(declare-fun d!1999811 () Bool)

(assert (=> d!1999811 e!3871144))

(declare-fun c!1161628 () Bool)

(assert (=> d!1999811 (= c!1161628 ((_ is EmptyExpr!16287) (regOne!33086 r!7292)))))

(assert (=> d!1999811 (= lt!2369187 e!3871138)))

(declare-fun c!1161629 () Bool)

(assert (=> d!1999811 (= c!1161629 (isEmpty!37161 (_1!36569 (get!22515 lt!2369120))))))

(assert (=> d!1999811 (validRegex!8023 (regOne!33086 r!7292))))

(assert (=> d!1999811 (= (matchR!8470 (regOne!33086 r!7292) (_1!36569 (get!22515 lt!2369120))) lt!2369187)))

(declare-fun b!6376589 () Bool)

(declare-fun res!2623016 () Bool)

(assert (=> b!6376589 (=> (not res!2623016) (not e!3871143))))

(assert (=> b!6376589 (= res!2623016 (isEmpty!37161 (tail!12151 (_1!36569 (get!22515 lt!2369120)))))))

(declare-fun b!6376590 () Bool)

(assert (=> b!6376590 (= e!3871139 (not (= (head!13066 (_1!36569 (get!22515 lt!2369120))) (c!1161140 (regOne!33086 r!7292)))))))

(declare-fun b!6376591 () Bool)

(declare-fun res!2623014 () Bool)

(assert (=> b!6376591 (=> res!2623014 e!3871142)))

(assert (=> b!6376591 (= res!2623014 (not ((_ is ElementMatch!16287) (regOne!33086 r!7292))))))

(assert (=> b!6376591 (= e!3871141 e!3871142)))

(declare-fun b!6376592 () Bool)

(assert (=> b!6376592 (= e!3871138 (matchR!8470 (derivativeStep!4991 (regOne!33086 r!7292) (head!13066 (_1!36569 (get!22515 lt!2369120)))) (tail!12151 (_1!36569 (get!22515 lt!2369120)))))))

(declare-fun b!6376593 () Bool)

(assert (=> b!6376593 (= e!3871140 e!3871139)))

(declare-fun res!2623011 () Bool)

(assert (=> b!6376593 (=> res!2623011 e!3871139)))

(assert (=> b!6376593 (= res!2623011 call!544835)))

(declare-fun b!6376594 () Bool)

(assert (=> b!6376594 (= e!3871141 (not lt!2369187))))

(declare-fun b!6376595 () Bool)

(assert (=> b!6376595 (= e!3871143 (= (head!13066 (_1!36569 (get!22515 lt!2369120))) (c!1161140 (regOne!33086 r!7292))))))

(assert (= (and d!1999811 c!1161629) b!6376585))

(assert (= (and d!1999811 (not c!1161629)) b!6376592))

(assert (= (and d!1999811 c!1161628) b!6376583))

(assert (= (and d!1999811 (not c!1161628)) b!6376584))

(assert (= (and b!6376584 c!1161630) b!6376594))

(assert (= (and b!6376584 (not c!1161630)) b!6376591))

(assert (= (and b!6376591 (not res!2623014)) b!6376587))

(assert (= (and b!6376587 res!2623012) b!6376582))

(assert (= (and b!6376582 res!2623017) b!6376589))

(assert (= (and b!6376589 res!2623016) b!6376595))

(assert (= (and b!6376587 (not res!2623018)) b!6376586))

(assert (= (and b!6376586 res!2623013) b!6376593))

(assert (= (and b!6376593 (not res!2623011)) b!6376588))

(assert (= (and b!6376588 (not res!2623015)) b!6376590))

(assert (= (or b!6376583 b!6376582 b!6376593) bm!544830))

(declare-fun m!7178308 () Bool)

(assert (=> b!6376590 m!7178308))

(assert (=> b!6376592 m!7178308))

(assert (=> b!6376592 m!7178308))

(declare-fun m!7178310 () Bool)

(assert (=> b!6376592 m!7178310))

(declare-fun m!7178314 () Bool)

(assert (=> b!6376592 m!7178314))

(assert (=> b!6376592 m!7178310))

(assert (=> b!6376592 m!7178314))

(declare-fun m!7178318 () Bool)

(assert (=> b!6376592 m!7178318))

(assert (=> b!6376588 m!7178314))

(assert (=> b!6376588 m!7178314))

(declare-fun m!7178320 () Bool)

(assert (=> b!6376588 m!7178320))

(declare-fun m!7178322 () Bool)

(assert (=> bm!544830 m!7178322))

(assert (=> b!6376585 m!7177686))

(assert (=> b!6376589 m!7178314))

(assert (=> b!6376589 m!7178314))

(assert (=> b!6376589 m!7178320))

(assert (=> d!1999811 m!7178322))

(assert (=> d!1999811 m!7177184))

(assert (=> b!6376595 m!7178308))

(assert (=> b!6375545 d!1999811))

(assert (=> b!6375545 d!1999451))

(declare-fun d!1999817 () Bool)

(declare-fun res!2623027 () Bool)

(declare-fun e!3871153 () Bool)

(assert (=> d!1999817 (=> res!2623027 e!3871153)))

(assert (=> d!1999817 (= res!2623027 ((_ is Nil!65036) (exprs!6171 lt!2369038)))))

(assert (=> d!1999817 (= (forall!15465 (exprs!6171 lt!2369038) lambda!351478) e!3871153)))

(declare-fun b!6376610 () Bool)

(declare-fun e!3871154 () Bool)

(assert (=> b!6376610 (= e!3871153 e!3871154)))

(declare-fun res!2623028 () Bool)

(assert (=> b!6376610 (=> (not res!2623028) (not e!3871154))))

(assert (=> b!6376610 (= res!2623028 (dynLambda!25804 lambda!351478 (h!71484 (exprs!6171 lt!2369038))))))

(declare-fun b!6376611 () Bool)

(assert (=> b!6376611 (= e!3871154 (forall!15465 (t!378762 (exprs!6171 lt!2369038)) lambda!351478))))

(assert (= (and d!1999817 (not res!2623027)) b!6376610))

(assert (= (and b!6376610 res!2623028) b!6376611))

(declare-fun b_lambda!242309 () Bool)

(assert (=> (not b_lambda!242309) (not b!6376610)))

(declare-fun m!7178324 () Bool)

(assert (=> b!6376610 m!7178324))

(declare-fun m!7178326 () Bool)

(assert (=> b!6376611 m!7178326))

(assert (=> d!1999221 d!1999817))

(declare-fun b!6376623 () Bool)

(declare-fun e!3871162 () (InoxSet Context!11342))

(assert (=> b!6376623 (= e!3871162 ((as const (Array Context!11342 Bool)) false))))

(declare-fun b!6376624 () Bool)

(declare-fun e!3871163 () Bool)

(assert (=> b!6376624 (= e!3871163 (nullable!6280 (regOne!33086 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))))

(declare-fun b!6376626 () Bool)

(declare-fun e!3871164 () (InoxSet Context!11342))

(declare-fun e!3871165 () (InoxSet Context!11342))

(assert (=> b!6376626 (= e!3871164 e!3871165)))

(declare-fun c!1161641 () Bool)

(assert (=> b!6376626 (= c!1161641 ((_ is Concat!25132) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun c!1161643 () Bool)

(declare-fun call!544844 () (InoxSet Context!11342))

(declare-fun call!544845 () List!65160)

(declare-fun bm!544838 () Bool)

(assert (=> bm!544838 (= call!544844 (derivationStepZipperDown!1535 (ite c!1161643 (regTwo!33087 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (regOne!33086 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))) (ite c!1161643 (ite c!1161333 lt!2369040 (Context!11343 call!544616)) (Context!11343 call!544845)) (h!71486 s!2326)))))

(declare-fun b!6376627 () Bool)

(declare-fun c!1161642 () Bool)

(assert (=> b!6376627 (= c!1161642 ((_ is Star!16287) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(assert (=> b!6376627 (= e!3871165 e!3871162)))

(declare-fun bm!544839 () Bool)

(declare-fun call!544848 () List!65160)

(assert (=> bm!544839 (= call!544848 call!544845)))

(declare-fun bm!544840 () Bool)

(declare-fun call!544847 () (InoxSet Context!11342))

(declare-fun call!544843 () (InoxSet Context!11342))

(assert (=> bm!544840 (= call!544847 call!544843)))

(declare-fun b!6376628 () Bool)

(declare-fun e!3871160 () (InoxSet Context!11342))

(declare-fun e!3871161 () (InoxSet Context!11342))

(assert (=> b!6376628 (= e!3871160 e!3871161)))

(assert (=> b!6376628 (= c!1161643 ((_ is Union!16287) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(declare-fun b!6376629 () Bool)

(assert (=> b!6376629 (= e!3871160 (store ((as const (Array Context!11342 Bool)) false) (ite c!1161333 lt!2369040 (Context!11343 call!544616)) true))))

(declare-fun c!1161640 () Bool)

(declare-fun bm!544841 () Bool)

(assert (=> bm!544841 (= call!544845 ($colon$colon!2148 (exprs!6171 (ite c!1161333 lt!2369040 (Context!11343 call!544616))) (ite (or c!1161640 c!1161641) (regTwo!33086 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))))

(declare-fun b!6376630 () Bool)

(assert (=> b!6376630 (= e!3871165 call!544847)))

(declare-fun c!1161639 () Bool)

(declare-fun d!1999819 () Bool)

(assert (=> d!1999819 (= c!1161639 (and ((_ is ElementMatch!16287) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (= (c!1161140 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (h!71486 s!2326))))))

(assert (=> d!1999819 (= (derivationStepZipperDown!1535 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))) (ite c!1161333 lt!2369040 (Context!11343 call!544616)) (h!71486 s!2326)) e!3871160)))

(declare-fun b!6376625 () Bool)

(assert (=> b!6376625 (= e!3871164 ((_ map or) call!544844 call!544843))))

(declare-fun b!6376631 () Bool)

(declare-fun call!544846 () (InoxSet Context!11342))

(assert (=> b!6376631 (= e!3871161 ((_ map or) call!544846 call!544844))))

(declare-fun b!6376632 () Bool)

(assert (=> b!6376632 (= e!3871162 call!544847)))

(declare-fun bm!544842 () Bool)

(assert (=> bm!544842 (= call!544843 call!544846)))

(declare-fun bm!544843 () Bool)

(assert (=> bm!544843 (= call!544846 (derivationStepZipperDown!1535 (ite c!1161643 (regOne!33087 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (ite c!1161640 (regTwo!33086 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (ite c!1161641 (regOne!33086 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))) (reg!16616 (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343))))))))) (ite (or c!1161643 c!1161640) (ite c!1161333 lt!2369040 (Context!11343 call!544616)) (Context!11343 call!544848)) (h!71486 s!2326)))))

(declare-fun b!6376633 () Bool)

(assert (=> b!6376633 (= c!1161640 e!3871163)))

(declare-fun res!2623030 () Bool)

(assert (=> b!6376633 (=> (not res!2623030) (not e!3871163))))

(assert (=> b!6376633 (= res!2623030 ((_ is Concat!25132) (ite c!1161333 (regTwo!33087 (h!71484 (exprs!6171 (h!71485 zl!343)))) (regOne!33086 (h!71484 (exprs!6171 (h!71485 zl!343)))))))))

(assert (=> b!6376633 (= e!3871161 e!3871164)))

(assert (= (and d!1999819 c!1161639) b!6376629))

(assert (= (and d!1999819 (not c!1161639)) b!6376628))

(assert (= (and b!6376628 c!1161643) b!6376631))

(assert (= (and b!6376628 (not c!1161643)) b!6376633))

(assert (= (and b!6376633 res!2623030) b!6376624))

(assert (= (and b!6376633 c!1161640) b!6376625))

(assert (= (and b!6376633 (not c!1161640)) b!6376626))

(assert (= (and b!6376626 c!1161641) b!6376630))

(assert (= (and b!6376626 (not c!1161641)) b!6376627))

(assert (= (and b!6376627 c!1161642) b!6376632))

(assert (= (and b!6376627 (not c!1161642)) b!6376623))

(assert (= (or b!6376630 b!6376632) bm!544839))

(assert (= (or b!6376630 b!6376632) bm!544840))

(assert (= (or b!6376625 bm!544839) bm!544841))

(assert (= (or b!6376625 bm!544840) bm!544842))

(assert (= (or b!6376631 b!6376625) bm!544838))

(assert (= (or b!6376631 bm!544842) bm!544843))

(declare-fun m!7178334 () Bool)

(assert (=> b!6376624 m!7178334))

(declare-fun m!7178336 () Bool)

(assert (=> b!6376629 m!7178336))

(declare-fun m!7178340 () Bool)

(assert (=> bm!544841 m!7178340))

(declare-fun m!7178344 () Bool)

(assert (=> bm!544843 m!7178344))

(declare-fun m!7178346 () Bool)

(assert (=> bm!544838 m!7178346))

(assert (=> bm!544609 d!1999819))

(declare-fun bs!1596689 () Bool)

(declare-fun d!1999823 () Bool)

(assert (= bs!1596689 (and d!1999823 d!1999753)))

(declare-fun lambda!351578 () Int)

(assert (=> bs!1596689 (= lambda!351578 lambda!351572)))

(declare-fun bs!1596690 () Bool)

(assert (= bs!1596690 (and d!1999823 d!1999349)))

(assert (=> bs!1596690 (= lambda!351578 lambda!351515)))

(declare-fun bs!1596691 () Bool)

(assert (= bs!1596691 (and d!1999823 d!1999249)))

(assert (=> bs!1596691 (= lambda!351578 lambda!351486)))

(declare-fun bs!1596692 () Bool)

(assert (= bs!1596692 (and d!1999823 d!1999347)))

(assert (=> bs!1596692 (= lambda!351578 lambda!351514)))

(declare-fun bs!1596693 () Bool)

(assert (= bs!1596693 (and d!1999823 d!1999307)))

(assert (=> bs!1596693 (= lambda!351578 lambda!351499)))

(declare-fun bs!1596694 () Bool)

(assert (= bs!1596694 (and d!1999823 d!1999527)))

(assert (=> bs!1596694 (= lambda!351578 lambda!351537)))

(declare-fun bs!1596695 () Bool)

(assert (= bs!1596695 (and d!1999823 d!1999345)))

(assert (=> bs!1596695 (= lambda!351578 lambda!351511)))

(declare-fun bs!1596696 () Bool)

(assert (= bs!1596696 (and d!1999823 d!1999221)))

(assert (=> bs!1596696 (= lambda!351578 lambda!351478)))

(declare-fun bs!1596697 () Bool)

(assert (= bs!1596697 (and d!1999823 d!1999681)))

(assert (=> bs!1596697 (= lambda!351578 lambda!351566)))

(declare-fun bs!1596698 () Bool)

(assert (= bs!1596698 (and d!1999823 d!1999489)))

(assert (=> bs!1596698 (= lambda!351578 lambda!351534)))

(declare-fun bs!1596699 () Bool)

(assert (= bs!1596699 (and d!1999823 d!1999529)))

(assert (=> bs!1596699 (= lambda!351578 lambda!351538)))

(declare-fun bs!1596700 () Bool)

(assert (= bs!1596700 (and d!1999823 d!1999555)))

(assert (=> bs!1596700 (= lambda!351578 lambda!351542)))

(assert (=> d!1999823 (= (inv!83964 (h!71485 (t!378763 zl!343))) (forall!15465 (exprs!6171 (h!71485 (t!378763 zl!343))) lambda!351578))))

(declare-fun bs!1596701 () Bool)

(assert (= bs!1596701 d!1999823))

(declare-fun m!7178358 () Bool)

(assert (=> bs!1596701 m!7178358))

(assert (=> b!6375682 d!1999823))

(declare-fun d!1999829 () Bool)

(declare-fun c!1161648 () Bool)

(assert (=> d!1999829 (= c!1161648 (isEmpty!37161 (tail!12151 s!2326)))))

(declare-fun e!3871178 () Bool)

(assert (=> d!1999829 (= (matchZipper!2299 (derivationStepZipper!2253 lt!2369031 (head!13066 s!2326)) (tail!12151 s!2326)) e!3871178)))

(declare-fun b!6376650 () Bool)

(assert (=> b!6376650 (= e!3871178 (nullableZipper!2053 (derivationStepZipper!2253 lt!2369031 (head!13066 s!2326))))))

(declare-fun b!6376651 () Bool)

(assert (=> b!6376651 (= e!3871178 (matchZipper!2299 (derivationStepZipper!2253 (derivationStepZipper!2253 lt!2369031 (head!13066 s!2326)) (head!13066 (tail!12151 s!2326))) (tail!12151 (tail!12151 s!2326))))))

(assert (= (and d!1999829 c!1161648) b!6376650))

(assert (= (and d!1999829 (not c!1161648)) b!6376651))

(assert (=> d!1999829 m!7176814))

(assert (=> d!1999829 m!7177156))

(assert (=> b!6376650 m!7176812))

(declare-fun m!7178366 () Bool)

(assert (=> b!6376650 m!7178366))

(assert (=> b!6376651 m!7176814))

(assert (=> b!6376651 m!7177650))

(assert (=> b!6376651 m!7176812))

(assert (=> b!6376651 m!7177650))

(declare-fun m!7178368 () Bool)

(assert (=> b!6376651 m!7178368))

(assert (=> b!6376651 m!7176814))

(assert (=> b!6376651 m!7177654))

(assert (=> b!6376651 m!7178368))

(assert (=> b!6376651 m!7177654))

(declare-fun m!7178370 () Bool)

(assert (=> b!6376651 m!7178370))

(assert (=> b!6374971 d!1999829))

(declare-fun bs!1596702 () Bool)

(declare-fun d!1999833 () Bool)

(assert (= bs!1596702 (and d!1999833 d!1999569)))

(declare-fun lambda!351579 () Int)

(assert (=> bs!1596702 (= (= (head!13066 s!2326) (head!13066 (t!378764 s!2326))) (= lambda!351579 lambda!351543))))

(declare-fun bs!1596703 () Bool)

(assert (= bs!1596703 (and d!1999833 d!1999189)))

(assert (=> bs!1596703 (= (= (head!13066 s!2326) (h!71486 s!2326)) (= lambda!351579 lambda!351467))))

(declare-fun bs!1596704 () Bool)

(assert (= bs!1596704 (and d!1999833 d!1999769)))

(assert (=> bs!1596704 (= (= (head!13066 s!2326) (head!13066 (t!378764 s!2326))) (= lambda!351579 lambda!351573))))

(declare-fun bs!1596705 () Bool)

(assert (= bs!1596705 (and d!1999833 d!1999627)))

(assert (=> bs!1596705 (= (= (head!13066 s!2326) (head!13066 (t!378764 s!2326))) (= lambda!351579 lambda!351550))))

(declare-fun bs!1596706 () Bool)

(assert (= bs!1596706 (and d!1999833 b!6374913)))

(assert (=> bs!1596706 (= (= (head!13066 s!2326) (h!71486 s!2326)) (= lambda!351579 lambda!351451))))

(declare-fun bs!1596707 () Bool)

(assert (= bs!1596707 (and d!1999833 d!1999785)))

(assert (=> bs!1596707 (= (= (head!13066 s!2326) (head!13066 (t!378764 s!2326))) (= lambda!351579 lambda!351575))))

(assert (=> d!1999833 true))

(assert (=> d!1999833 (= (derivationStepZipper!2253 lt!2369031 (head!13066 s!2326)) (flatMap!1792 lt!2369031 lambda!351579))))

(declare-fun bs!1596708 () Bool)

(assert (= bs!1596708 d!1999833))

(declare-fun m!7178372 () Bool)

(assert (=> bs!1596708 m!7178372))

(assert (=> b!6374971 d!1999833))

(assert (=> b!6374971 d!1999551))

(assert (=> b!6374971 d!1999521))

(assert (=> d!1999173 d!1999439))

(declare-fun b!6376654 () Bool)

(declare-fun e!3871179 () Bool)

(declare-fun tp!1774732 () Bool)

(assert (=> b!6376654 (= e!3871179 tp!1774732)))

(declare-fun b!6376652 () Bool)

(assert (=> b!6376652 (= e!3871179 tp_is_empty!41827)))

(declare-fun b!6376655 () Bool)

(declare-fun tp!1774734 () Bool)

(declare-fun tp!1774733 () Bool)

(assert (=> b!6376655 (= e!3871179 (and tp!1774734 tp!1774733))))

(assert (=> b!6375654 (= tp!1774663 e!3871179)))

(declare-fun b!6376653 () Bool)

(declare-fun tp!1774731 () Bool)

(declare-fun tp!1774735 () Bool)

(assert (=> b!6376653 (= e!3871179 (and tp!1774731 tp!1774735))))

(assert (= (and b!6375654 ((_ is ElementMatch!16287) (regOne!33086 (regTwo!33086 r!7292)))) b!6376652))

(assert (= (and b!6375654 ((_ is Concat!25132) (regOne!33086 (regTwo!33086 r!7292)))) b!6376653))

(assert (= (and b!6375654 ((_ is Star!16287) (regOne!33086 (regTwo!33086 r!7292)))) b!6376654))

(assert (= (and b!6375654 ((_ is Union!16287) (regOne!33086 (regTwo!33086 r!7292)))) b!6376655))

(declare-fun b!6376658 () Bool)

(declare-fun e!3871180 () Bool)

(declare-fun tp!1774737 () Bool)

(assert (=> b!6376658 (= e!3871180 tp!1774737)))

(declare-fun b!6376656 () Bool)

(assert (=> b!6376656 (= e!3871180 tp_is_empty!41827)))

(declare-fun b!6376659 () Bool)

(declare-fun tp!1774739 () Bool)

(declare-fun tp!1774738 () Bool)

(assert (=> b!6376659 (= e!3871180 (and tp!1774739 tp!1774738))))

(assert (=> b!6375654 (= tp!1774667 e!3871180)))

(declare-fun b!6376657 () Bool)

(declare-fun tp!1774736 () Bool)

(declare-fun tp!1774740 () Bool)

(assert (=> b!6376657 (= e!3871180 (and tp!1774736 tp!1774740))))

(assert (= (and b!6375654 ((_ is ElementMatch!16287) (regTwo!33086 (regTwo!33086 r!7292)))) b!6376656))

(assert (= (and b!6375654 ((_ is Concat!25132) (regTwo!33086 (regTwo!33086 r!7292)))) b!6376657))

(assert (= (and b!6375654 ((_ is Star!16287) (regTwo!33086 (regTwo!33086 r!7292)))) b!6376658))

(assert (= (and b!6375654 ((_ is Union!16287) (regTwo!33086 (regTwo!33086 r!7292)))) b!6376659))

(declare-fun b!6376662 () Bool)

(declare-fun e!3871181 () Bool)

(declare-fun tp!1774742 () Bool)

(assert (=> b!6376662 (= e!3871181 tp!1774742)))

(declare-fun b!6376660 () Bool)

(assert (=> b!6376660 (= e!3871181 tp_is_empty!41827)))

(declare-fun b!6376663 () Bool)

(declare-fun tp!1774744 () Bool)

(declare-fun tp!1774743 () Bool)

(assert (=> b!6376663 (= e!3871181 (and tp!1774744 tp!1774743))))

(assert (=> b!6375656 (= tp!1774666 e!3871181)))

(declare-fun b!6376661 () Bool)

(declare-fun tp!1774741 () Bool)

(declare-fun tp!1774745 () Bool)

(assert (=> b!6376661 (= e!3871181 (and tp!1774741 tp!1774745))))

(assert (= (and b!6375656 ((_ is ElementMatch!16287) (regOne!33087 (regTwo!33086 r!7292)))) b!6376660))

(assert (= (and b!6375656 ((_ is Concat!25132) (regOne!33087 (regTwo!33086 r!7292)))) b!6376661))

(assert (= (and b!6375656 ((_ is Star!16287) (regOne!33087 (regTwo!33086 r!7292)))) b!6376662))

(assert (= (and b!6375656 ((_ is Union!16287) (regOne!33087 (regTwo!33086 r!7292)))) b!6376663))

(declare-fun b!6376666 () Bool)

(declare-fun e!3871182 () Bool)

(declare-fun tp!1774747 () Bool)

(assert (=> b!6376666 (= e!3871182 tp!1774747)))

(declare-fun b!6376664 () Bool)

(assert (=> b!6376664 (= e!3871182 tp_is_empty!41827)))

(declare-fun b!6376667 () Bool)

(declare-fun tp!1774749 () Bool)

(declare-fun tp!1774748 () Bool)

(assert (=> b!6376667 (= e!3871182 (and tp!1774749 tp!1774748))))

(assert (=> b!6375656 (= tp!1774665 e!3871182)))

(declare-fun b!6376665 () Bool)

(declare-fun tp!1774746 () Bool)

(declare-fun tp!1774750 () Bool)

(assert (=> b!6376665 (= e!3871182 (and tp!1774746 tp!1774750))))

(assert (= (and b!6375656 ((_ is ElementMatch!16287) (regTwo!33087 (regTwo!33086 r!7292)))) b!6376664))

(assert (= (and b!6375656 ((_ is Concat!25132) (regTwo!33087 (regTwo!33086 r!7292)))) b!6376665))

(assert (= (and b!6375656 ((_ is Star!16287) (regTwo!33087 (regTwo!33086 r!7292)))) b!6376666))

(assert (= (and b!6375656 ((_ is Union!16287) (regTwo!33087 (regTwo!33086 r!7292)))) b!6376667))

(declare-fun b!6376671 () Bool)

(declare-fun e!3871184 () Bool)

(declare-fun tp!1774753 () Bool)

(assert (=> b!6376671 (= e!3871184 tp!1774753)))

(declare-fun b!6376669 () Bool)

(assert (=> b!6376669 (= e!3871184 tp_is_empty!41827)))

(declare-fun b!6376672 () Bool)

(declare-fun tp!1774755 () Bool)

(declare-fun tp!1774754 () Bool)

(assert (=> b!6376672 (= e!3871184 (and tp!1774755 tp!1774754))))

(assert (=> b!6375655 (= tp!1774664 e!3871184)))

(declare-fun b!6376670 () Bool)

(declare-fun tp!1774752 () Bool)

(declare-fun tp!1774756 () Bool)

(assert (=> b!6376670 (= e!3871184 (and tp!1774752 tp!1774756))))

(assert (= (and b!6375655 ((_ is ElementMatch!16287) (reg!16616 (regTwo!33086 r!7292)))) b!6376669))

(assert (= (and b!6375655 ((_ is Concat!25132) (reg!16616 (regTwo!33086 r!7292)))) b!6376670))

(assert (= (and b!6375655 ((_ is Star!16287) (reg!16616 (regTwo!33086 r!7292)))) b!6376671))

(assert (= (and b!6375655 ((_ is Union!16287) (reg!16616 (regTwo!33086 r!7292)))) b!6376672))

(declare-fun b!6376679 () Bool)

(declare-fun e!3871186 () Bool)

(declare-fun tp!1774763 () Bool)

(assert (=> b!6376679 (= e!3871186 tp!1774763)))

(declare-fun b!6376677 () Bool)

(assert (=> b!6376677 (= e!3871186 tp_is_empty!41827)))

(declare-fun b!6376680 () Bool)

(declare-fun tp!1774765 () Bool)

(declare-fun tp!1774764 () Bool)

(assert (=> b!6376680 (= e!3871186 (and tp!1774765 tp!1774764))))

(assert (=> b!6375646 (= tp!1774653 e!3871186)))

(declare-fun b!6376678 () Bool)

(declare-fun tp!1774762 () Bool)

(declare-fun tp!1774766 () Bool)

(assert (=> b!6376678 (= e!3871186 (and tp!1774762 tp!1774766))))

(assert (= (and b!6375646 ((_ is ElementMatch!16287) (regOne!33086 (reg!16616 r!7292)))) b!6376677))

(assert (= (and b!6375646 ((_ is Concat!25132) (regOne!33086 (reg!16616 r!7292)))) b!6376678))

(assert (= (and b!6375646 ((_ is Star!16287) (regOne!33086 (reg!16616 r!7292)))) b!6376679))

(assert (= (and b!6375646 ((_ is Union!16287) (regOne!33086 (reg!16616 r!7292)))) b!6376680))

(declare-fun b!6376687 () Bool)

(declare-fun e!3871188 () Bool)

(declare-fun tp!1774773 () Bool)

(assert (=> b!6376687 (= e!3871188 tp!1774773)))

(declare-fun b!6376685 () Bool)

(assert (=> b!6376685 (= e!3871188 tp_is_empty!41827)))

(declare-fun b!6376688 () Bool)

(declare-fun tp!1774775 () Bool)

(declare-fun tp!1774774 () Bool)

(assert (=> b!6376688 (= e!3871188 (and tp!1774775 tp!1774774))))

(assert (=> b!6375646 (= tp!1774657 e!3871188)))

(declare-fun b!6376686 () Bool)

(declare-fun tp!1774772 () Bool)

(declare-fun tp!1774776 () Bool)

(assert (=> b!6376686 (= e!3871188 (and tp!1774772 tp!1774776))))

(assert (= (and b!6375646 ((_ is ElementMatch!16287) (regTwo!33086 (reg!16616 r!7292)))) b!6376685))

(assert (= (and b!6375646 ((_ is Concat!25132) (regTwo!33086 (reg!16616 r!7292)))) b!6376686))

(assert (= (and b!6375646 ((_ is Star!16287) (regTwo!33086 (reg!16616 r!7292)))) b!6376687))

(assert (= (and b!6375646 ((_ is Union!16287) (regTwo!33086 (reg!16616 r!7292)))) b!6376688))

(declare-fun b!6376695 () Bool)

(declare-fun e!3871190 () Bool)

(declare-fun tp!1774783 () Bool)

(assert (=> b!6376695 (= e!3871190 tp!1774783)))

(declare-fun b!6376693 () Bool)

(assert (=> b!6376693 (= e!3871190 tp_is_empty!41827)))

(declare-fun b!6376696 () Bool)

(declare-fun tp!1774785 () Bool)

(declare-fun tp!1774784 () Bool)

(assert (=> b!6376696 (= e!3871190 (and tp!1774785 tp!1774784))))

(assert (=> b!6375669 (= tp!1774679 e!3871190)))

(declare-fun b!6376694 () Bool)

(declare-fun tp!1774782 () Bool)

(declare-fun tp!1774786 () Bool)

(assert (=> b!6376694 (= e!3871190 (and tp!1774782 tp!1774786))))

(assert (= (and b!6375669 ((_ is ElementMatch!16287) (regOne!33086 (regOne!33087 r!7292)))) b!6376693))

(assert (= (and b!6375669 ((_ is Concat!25132) (regOne!33086 (regOne!33087 r!7292)))) b!6376694))

(assert (= (and b!6375669 ((_ is Star!16287) (regOne!33086 (regOne!33087 r!7292)))) b!6376695))

(assert (= (and b!6375669 ((_ is Union!16287) (regOne!33086 (regOne!33087 r!7292)))) b!6376696))

(declare-fun b!6376703 () Bool)

(declare-fun e!3871192 () Bool)

(declare-fun tp!1774793 () Bool)

(assert (=> b!6376703 (= e!3871192 tp!1774793)))

(declare-fun b!6376701 () Bool)

(assert (=> b!6376701 (= e!3871192 tp_is_empty!41827)))

(declare-fun b!6376704 () Bool)

(declare-fun tp!1774795 () Bool)

(declare-fun tp!1774794 () Bool)

(assert (=> b!6376704 (= e!3871192 (and tp!1774795 tp!1774794))))

(assert (=> b!6375669 (= tp!1774683 e!3871192)))

(declare-fun b!6376702 () Bool)

(declare-fun tp!1774792 () Bool)

(declare-fun tp!1774796 () Bool)

(assert (=> b!6376702 (= e!3871192 (and tp!1774792 tp!1774796))))

(assert (= (and b!6375669 ((_ is ElementMatch!16287) (regTwo!33086 (regOne!33087 r!7292)))) b!6376701))

(assert (= (and b!6375669 ((_ is Concat!25132) (regTwo!33086 (regOne!33087 r!7292)))) b!6376702))

(assert (= (and b!6375669 ((_ is Star!16287) (regTwo!33086 (regOne!33087 r!7292)))) b!6376703))

(assert (= (and b!6375669 ((_ is Union!16287) (regTwo!33086 (regOne!33087 r!7292)))) b!6376704))

(declare-fun b!6376715 () Bool)

(declare-fun e!3871195 () Bool)

(declare-fun tp!1774808 () Bool)

(assert (=> b!6376715 (= e!3871195 tp!1774808)))

(declare-fun b!6376713 () Bool)

(assert (=> b!6376713 (= e!3871195 tp_is_empty!41827)))

(declare-fun b!6376716 () Bool)

(declare-fun tp!1774810 () Bool)

(declare-fun tp!1774809 () Bool)

(assert (=> b!6376716 (= e!3871195 (and tp!1774810 tp!1774809))))

(assert (=> b!6375648 (= tp!1774656 e!3871195)))

(declare-fun b!6376714 () Bool)

(declare-fun tp!1774807 () Bool)

(declare-fun tp!1774811 () Bool)

(assert (=> b!6376714 (= e!3871195 (and tp!1774807 tp!1774811))))

(assert (= (and b!6375648 ((_ is ElementMatch!16287) (regOne!33087 (reg!16616 r!7292)))) b!6376713))

(assert (= (and b!6375648 ((_ is Concat!25132) (regOne!33087 (reg!16616 r!7292)))) b!6376714))

(assert (= (and b!6375648 ((_ is Star!16287) (regOne!33087 (reg!16616 r!7292)))) b!6376715))

(assert (= (and b!6375648 ((_ is Union!16287) (regOne!33087 (reg!16616 r!7292)))) b!6376716))

(declare-fun b!6376723 () Bool)

(declare-fun e!3871197 () Bool)

(declare-fun tp!1774818 () Bool)

(assert (=> b!6376723 (= e!3871197 tp!1774818)))

(declare-fun b!6376721 () Bool)

(assert (=> b!6376721 (= e!3871197 tp_is_empty!41827)))

(declare-fun b!6376724 () Bool)

(declare-fun tp!1774820 () Bool)

(declare-fun tp!1774819 () Bool)

(assert (=> b!6376724 (= e!3871197 (and tp!1774820 tp!1774819))))

(assert (=> b!6375648 (= tp!1774655 e!3871197)))

(declare-fun b!6376722 () Bool)

(declare-fun tp!1774817 () Bool)

(declare-fun tp!1774821 () Bool)

(assert (=> b!6376722 (= e!3871197 (and tp!1774817 tp!1774821))))

(assert (= (and b!6375648 ((_ is ElementMatch!16287) (regTwo!33087 (reg!16616 r!7292)))) b!6376721))

(assert (= (and b!6375648 ((_ is Concat!25132) (regTwo!33087 (reg!16616 r!7292)))) b!6376722))

(assert (= (and b!6375648 ((_ is Star!16287) (regTwo!33087 (reg!16616 r!7292)))) b!6376723))

(assert (= (and b!6375648 ((_ is Union!16287) (regTwo!33087 (reg!16616 r!7292)))) b!6376724))

(declare-fun b!6376727 () Bool)

(declare-fun e!3871198 () Bool)

(declare-fun tp!1774823 () Bool)

(assert (=> b!6376727 (= e!3871198 tp!1774823)))

(declare-fun b!6376725 () Bool)

(assert (=> b!6376725 (= e!3871198 tp_is_empty!41827)))

(declare-fun b!6376728 () Bool)

(declare-fun tp!1774825 () Bool)

(declare-fun tp!1774824 () Bool)

(assert (=> b!6376728 (= e!3871198 (and tp!1774825 tp!1774824))))

(assert (=> b!6375647 (= tp!1774654 e!3871198)))

(declare-fun b!6376726 () Bool)

(declare-fun tp!1774822 () Bool)

(declare-fun tp!1774826 () Bool)

(assert (=> b!6376726 (= e!3871198 (and tp!1774822 tp!1774826))))

(assert (= (and b!6375647 ((_ is ElementMatch!16287) (reg!16616 (reg!16616 r!7292)))) b!6376725))

(assert (= (and b!6375647 ((_ is Concat!25132) (reg!16616 (reg!16616 r!7292)))) b!6376726))

(assert (= (and b!6375647 ((_ is Star!16287) (reg!16616 (reg!16616 r!7292)))) b!6376727))

(assert (= (and b!6375647 ((_ is Union!16287) (reg!16616 (reg!16616 r!7292)))) b!6376728))

(declare-fun b!6376735 () Bool)

(declare-fun e!3871200 () Bool)

(declare-fun tp!1774833 () Bool)

(assert (=> b!6376735 (= e!3871200 tp!1774833)))

(declare-fun b!6376733 () Bool)

(assert (=> b!6376733 (= e!3871200 tp_is_empty!41827)))

(declare-fun b!6376736 () Bool)

(declare-fun tp!1774835 () Bool)

(declare-fun tp!1774834 () Bool)

(assert (=> b!6376736 (= e!3871200 (and tp!1774835 tp!1774834))))

(assert (=> b!6375670 (= tp!1774680 e!3871200)))

(declare-fun b!6376734 () Bool)

(declare-fun tp!1774832 () Bool)

(declare-fun tp!1774836 () Bool)

(assert (=> b!6376734 (= e!3871200 (and tp!1774832 tp!1774836))))

(assert (= (and b!6375670 ((_ is ElementMatch!16287) (reg!16616 (regOne!33087 r!7292)))) b!6376733))

(assert (= (and b!6375670 ((_ is Concat!25132) (reg!16616 (regOne!33087 r!7292)))) b!6376734))

(assert (= (and b!6375670 ((_ is Star!16287) (reg!16616 (regOne!33087 r!7292)))) b!6376735))

(assert (= (and b!6375670 ((_ is Union!16287) (reg!16616 (regOne!33087 r!7292)))) b!6376736))

(declare-fun b!6376743 () Bool)

(declare-fun e!3871202 () Bool)

(declare-fun tp!1774843 () Bool)

(assert (=> b!6376743 (= e!3871202 tp!1774843)))

(declare-fun b!6376741 () Bool)

(assert (=> b!6376741 (= e!3871202 tp_is_empty!41827)))

(declare-fun b!6376744 () Bool)

(declare-fun tp!1774845 () Bool)

(declare-fun tp!1774844 () Bool)

(assert (=> b!6376744 (= e!3871202 (and tp!1774845 tp!1774844))))

(assert (=> b!6375671 (= tp!1774682 e!3871202)))

(declare-fun b!6376742 () Bool)

(declare-fun tp!1774842 () Bool)

(declare-fun tp!1774846 () Bool)

(assert (=> b!6376742 (= e!3871202 (and tp!1774842 tp!1774846))))

(assert (= (and b!6375671 ((_ is ElementMatch!16287) (regOne!33087 (regOne!33087 r!7292)))) b!6376741))

(assert (= (and b!6375671 ((_ is Concat!25132) (regOne!33087 (regOne!33087 r!7292)))) b!6376742))

(assert (= (and b!6375671 ((_ is Star!16287) (regOne!33087 (regOne!33087 r!7292)))) b!6376743))

(assert (= (and b!6375671 ((_ is Union!16287) (regOne!33087 (regOne!33087 r!7292)))) b!6376744))

(declare-fun b!6376751 () Bool)

(declare-fun e!3871204 () Bool)

(declare-fun tp!1774853 () Bool)

(assert (=> b!6376751 (= e!3871204 tp!1774853)))

(declare-fun b!6376749 () Bool)

(assert (=> b!6376749 (= e!3871204 tp_is_empty!41827)))

(declare-fun b!6376752 () Bool)

(declare-fun tp!1774855 () Bool)

(declare-fun tp!1774854 () Bool)

(assert (=> b!6376752 (= e!3871204 (and tp!1774855 tp!1774854))))

(assert (=> b!6375671 (= tp!1774681 e!3871204)))

(declare-fun b!6376750 () Bool)

(declare-fun tp!1774852 () Bool)

(declare-fun tp!1774856 () Bool)

(assert (=> b!6376750 (= e!3871204 (and tp!1774852 tp!1774856))))

(assert (= (and b!6375671 ((_ is ElementMatch!16287) (regTwo!33087 (regOne!33087 r!7292)))) b!6376749))

(assert (= (and b!6375671 ((_ is Concat!25132) (regTwo!33087 (regOne!33087 r!7292)))) b!6376750))

(assert (= (and b!6375671 ((_ is Star!16287) (regTwo!33087 (regOne!33087 r!7292)))) b!6376751))

(assert (= (and b!6375671 ((_ is Union!16287) (regTwo!33087 (regOne!33087 r!7292)))) b!6376752))

(declare-fun b!6376759 () Bool)

(declare-fun e!3871206 () Bool)

(declare-fun tp!1774863 () Bool)

(assert (=> b!6376759 (= e!3871206 tp!1774863)))

(declare-fun b!6376757 () Bool)

(assert (=> b!6376757 (= e!3871206 tp_is_empty!41827)))

(declare-fun b!6376760 () Bool)

(declare-fun tp!1774865 () Bool)

(declare-fun tp!1774864 () Bool)

(assert (=> b!6376760 (= e!3871206 (and tp!1774865 tp!1774864))))

(assert (=> b!6375634 (= tp!1774641 e!3871206)))

(declare-fun b!6376758 () Bool)

(declare-fun tp!1774862 () Bool)

(declare-fun tp!1774866 () Bool)

(assert (=> b!6376758 (= e!3871206 (and tp!1774862 tp!1774866))))

(assert (= (and b!6375634 ((_ is ElementMatch!16287) (h!71484 (exprs!6171 (h!71485 zl!343))))) b!6376757))

(assert (= (and b!6375634 ((_ is Concat!25132) (h!71484 (exprs!6171 (h!71485 zl!343))))) b!6376758))

(assert (= (and b!6375634 ((_ is Star!16287) (h!71484 (exprs!6171 (h!71485 zl!343))))) b!6376759))

(assert (= (and b!6375634 ((_ is Union!16287) (h!71484 (exprs!6171 (h!71485 zl!343))))) b!6376760))

(declare-fun b!6376765 () Bool)

(declare-fun e!3871208 () Bool)

(declare-fun tp!1774872 () Bool)

(declare-fun tp!1774873 () Bool)

(assert (=> b!6376765 (= e!3871208 (and tp!1774872 tp!1774873))))

(assert (=> b!6375634 (= tp!1774642 e!3871208)))

(assert (= (and b!6375634 ((_ is Cons!65036) (t!378762 (exprs!6171 (h!71485 zl!343))))) b!6376765))

(declare-fun condSetEmpty!43501 () Bool)

(assert (=> setNonEmpty!43488 (= condSetEmpty!43501 (= setRest!43488 ((as const (Array Context!11342 Bool)) false)))))

(declare-fun setRes!43501 () Bool)

(assert (=> setNonEmpty!43488 (= tp!1774676 setRes!43501)))

(declare-fun setIsEmpty!43501 () Bool)

(assert (=> setIsEmpty!43501 setRes!43501))

(declare-fun e!3871209 () Bool)

(declare-fun setNonEmpty!43501 () Bool)

(declare-fun setElem!43501 () Context!11342)

(declare-fun tp!1774875 () Bool)

(assert (=> setNonEmpty!43501 (= setRes!43501 (and tp!1774875 (inv!83964 setElem!43501) e!3871209))))

(declare-fun setRest!43501 () (InoxSet Context!11342))

(assert (=> setNonEmpty!43501 (= setRest!43488 ((_ map or) (store ((as const (Array Context!11342 Bool)) false) setElem!43501 true) setRest!43501))))

(declare-fun b!6376766 () Bool)

(declare-fun tp!1774874 () Bool)

(assert (=> b!6376766 (= e!3871209 tp!1774874)))

(assert (= (and setNonEmpty!43488 condSetEmpty!43501) setIsEmpty!43501))

(assert (= (and setNonEmpty!43488 (not condSetEmpty!43501)) setNonEmpty!43501))

(assert (= setNonEmpty!43501 b!6376766))

(declare-fun m!7178376 () Bool)

(assert (=> setNonEmpty!43501 m!7178376))

(declare-fun b!6376777 () Bool)

(declare-fun e!3871212 () Bool)

(declare-fun tp!1774887 () Bool)

(assert (=> b!6376777 (= e!3871212 tp!1774887)))

(declare-fun b!6376775 () Bool)

(assert (=> b!6376775 (= e!3871212 tp_is_empty!41827)))

(declare-fun b!6376778 () Bool)

(declare-fun tp!1774889 () Bool)

(declare-fun tp!1774888 () Bool)

(assert (=> b!6376778 (= e!3871212 (and tp!1774889 tp!1774888))))

(assert (=> b!6375650 (= tp!1774658 e!3871212)))

(declare-fun b!6376776 () Bool)

(declare-fun tp!1774886 () Bool)

(declare-fun tp!1774890 () Bool)

(assert (=> b!6376776 (= e!3871212 (and tp!1774886 tp!1774890))))

(assert (= (and b!6375650 ((_ is ElementMatch!16287) (regOne!33086 (regOne!33086 r!7292)))) b!6376775))

(assert (= (and b!6375650 ((_ is Concat!25132) (regOne!33086 (regOne!33086 r!7292)))) b!6376776))

(assert (= (and b!6375650 ((_ is Star!16287) (regOne!33086 (regOne!33086 r!7292)))) b!6376777))

(assert (= (and b!6375650 ((_ is Union!16287) (regOne!33086 (regOne!33086 r!7292)))) b!6376778))

(declare-fun b!6376785 () Bool)

(declare-fun e!3871214 () Bool)

(declare-fun tp!1774897 () Bool)

(assert (=> b!6376785 (= e!3871214 tp!1774897)))

(declare-fun b!6376783 () Bool)

(assert (=> b!6376783 (= e!3871214 tp_is_empty!41827)))

(declare-fun b!6376786 () Bool)

(declare-fun tp!1774899 () Bool)

(declare-fun tp!1774898 () Bool)

(assert (=> b!6376786 (= e!3871214 (and tp!1774899 tp!1774898))))

(assert (=> b!6375650 (= tp!1774662 e!3871214)))

(declare-fun b!6376784 () Bool)

(declare-fun tp!1774896 () Bool)

(declare-fun tp!1774900 () Bool)

(assert (=> b!6376784 (= e!3871214 (and tp!1774896 tp!1774900))))

(assert (= (and b!6375650 ((_ is ElementMatch!16287) (regTwo!33086 (regOne!33086 r!7292)))) b!6376783))

(assert (= (and b!6375650 ((_ is Concat!25132) (regTwo!33086 (regOne!33086 r!7292)))) b!6376784))

(assert (= (and b!6375650 ((_ is Star!16287) (regTwo!33086 (regOne!33086 r!7292)))) b!6376785))

(assert (= (and b!6375650 ((_ is Union!16287) (regTwo!33086 (regOne!33086 r!7292)))) b!6376786))

(declare-fun b!6376791 () Bool)

(declare-fun e!3871216 () Bool)

(declare-fun tp!1774906 () Bool)

(declare-fun tp!1774907 () Bool)

(assert (=> b!6376791 (= e!3871216 (and tp!1774906 tp!1774907))))

(assert (=> b!6375666 (= tp!1774675 e!3871216)))

(assert (= (and b!6375666 ((_ is Cons!65036) (exprs!6171 setElem!43488))) b!6376791))

(declare-fun b!6376794 () Bool)

(declare-fun e!3871217 () Bool)

(declare-fun tp!1774909 () Bool)

(assert (=> b!6376794 (= e!3871217 tp!1774909)))

(declare-fun b!6376792 () Bool)

(assert (=> b!6376792 (= e!3871217 tp_is_empty!41827)))

(declare-fun b!6376795 () Bool)

(declare-fun tp!1774911 () Bool)

(declare-fun tp!1774910 () Bool)

(assert (=> b!6376795 (= e!3871217 (and tp!1774911 tp!1774910))))

(assert (=> b!6375651 (= tp!1774659 e!3871217)))

(declare-fun b!6376793 () Bool)

(declare-fun tp!1774908 () Bool)

(declare-fun tp!1774912 () Bool)

(assert (=> b!6376793 (= e!3871217 (and tp!1774908 tp!1774912))))

(assert (= (and b!6375651 ((_ is ElementMatch!16287) (reg!16616 (regOne!33086 r!7292)))) b!6376792))

(assert (= (and b!6375651 ((_ is Concat!25132) (reg!16616 (regOne!33086 r!7292)))) b!6376793))

(assert (= (and b!6375651 ((_ is Star!16287) (reg!16616 (regOne!33086 r!7292)))) b!6376794))

(assert (= (and b!6375651 ((_ is Union!16287) (reg!16616 (regOne!33086 r!7292)))) b!6376795))

(declare-fun b!6376800 () Bool)

(declare-fun e!3871220 () Bool)

(declare-fun tp!1774916 () Bool)

(assert (=> b!6376800 (= e!3871220 tp!1774916)))

(declare-fun b!6376798 () Bool)

(assert (=> b!6376798 (= e!3871220 tp_is_empty!41827)))

(declare-fun b!6376801 () Bool)

(declare-fun tp!1774918 () Bool)

(declare-fun tp!1774917 () Bool)

(assert (=> b!6376801 (= e!3871220 (and tp!1774918 tp!1774917))))

(assert (=> b!6375674 (= tp!1774685 e!3871220)))

(declare-fun b!6376799 () Bool)

(declare-fun tp!1774915 () Bool)

(declare-fun tp!1774919 () Bool)

(assert (=> b!6376799 (= e!3871220 (and tp!1774915 tp!1774919))))

(assert (= (and b!6375674 ((_ is ElementMatch!16287) (reg!16616 (regTwo!33087 r!7292)))) b!6376798))

(assert (= (and b!6375674 ((_ is Concat!25132) (reg!16616 (regTwo!33087 r!7292)))) b!6376799))

(assert (= (and b!6375674 ((_ is Star!16287) (reg!16616 (regTwo!33087 r!7292)))) b!6376800))

(assert (= (and b!6375674 ((_ is Union!16287) (reg!16616 (regTwo!33087 r!7292)))) b!6376801))

(declare-fun b!6376808 () Bool)

(declare-fun e!3871222 () Bool)

(declare-fun tp!1774926 () Bool)

(assert (=> b!6376808 (= e!3871222 tp!1774926)))

(declare-fun b!6376806 () Bool)

(assert (=> b!6376806 (= e!3871222 tp_is_empty!41827)))

(declare-fun b!6376809 () Bool)

(declare-fun tp!1774928 () Bool)

(declare-fun tp!1774927 () Bool)

(assert (=> b!6376809 (= e!3871222 (and tp!1774928 tp!1774927))))

(assert (=> b!6375673 (= tp!1774684 e!3871222)))

(declare-fun b!6376807 () Bool)

(declare-fun tp!1774925 () Bool)

(declare-fun tp!1774929 () Bool)

(assert (=> b!6376807 (= e!3871222 (and tp!1774925 tp!1774929))))

(assert (= (and b!6375673 ((_ is ElementMatch!16287) (regOne!33086 (regTwo!33087 r!7292)))) b!6376806))

(assert (= (and b!6375673 ((_ is Concat!25132) (regOne!33086 (regTwo!33087 r!7292)))) b!6376807))

(assert (= (and b!6375673 ((_ is Star!16287) (regOne!33086 (regTwo!33087 r!7292)))) b!6376808))

(assert (= (and b!6375673 ((_ is Union!16287) (regOne!33086 (regTwo!33087 r!7292)))) b!6376809))

(declare-fun b!6376816 () Bool)

(declare-fun e!3871224 () Bool)

(declare-fun tp!1774936 () Bool)

(assert (=> b!6376816 (= e!3871224 tp!1774936)))

(declare-fun b!6376814 () Bool)

(assert (=> b!6376814 (= e!3871224 tp_is_empty!41827)))

(declare-fun b!6376817 () Bool)

(declare-fun tp!1774938 () Bool)

(declare-fun tp!1774937 () Bool)

(assert (=> b!6376817 (= e!3871224 (and tp!1774938 tp!1774937))))

(assert (=> b!6375673 (= tp!1774688 e!3871224)))

(declare-fun b!6376815 () Bool)

(declare-fun tp!1774935 () Bool)

(declare-fun tp!1774939 () Bool)

(assert (=> b!6376815 (= e!3871224 (and tp!1774935 tp!1774939))))

(assert (= (and b!6375673 ((_ is ElementMatch!16287) (regTwo!33086 (regTwo!33087 r!7292)))) b!6376814))

(assert (= (and b!6375673 ((_ is Concat!25132) (regTwo!33086 (regTwo!33087 r!7292)))) b!6376815))

(assert (= (and b!6375673 ((_ is Star!16287) (regTwo!33086 (regTwo!33087 r!7292)))) b!6376816))

(assert (= (and b!6375673 ((_ is Union!16287) (regTwo!33086 (regTwo!33087 r!7292)))) b!6376817))

(declare-fun b!6376824 () Bool)

(declare-fun e!3871226 () Bool)

(declare-fun tp!1774946 () Bool)

(assert (=> b!6376824 (= e!3871226 tp!1774946)))

(declare-fun b!6376822 () Bool)

(assert (=> b!6376822 (= e!3871226 tp_is_empty!41827)))

(declare-fun b!6376825 () Bool)

(declare-fun tp!1774948 () Bool)

(declare-fun tp!1774947 () Bool)

(assert (=> b!6376825 (= e!3871226 (and tp!1774948 tp!1774947))))

(assert (=> b!6375652 (= tp!1774661 e!3871226)))

(declare-fun b!6376823 () Bool)

(declare-fun tp!1774945 () Bool)

(declare-fun tp!1774949 () Bool)

(assert (=> b!6376823 (= e!3871226 (and tp!1774945 tp!1774949))))

(assert (= (and b!6375652 ((_ is ElementMatch!16287) (regOne!33087 (regOne!33086 r!7292)))) b!6376822))

(assert (= (and b!6375652 ((_ is Concat!25132) (regOne!33087 (regOne!33086 r!7292)))) b!6376823))

(assert (= (and b!6375652 ((_ is Star!16287) (regOne!33087 (regOne!33086 r!7292)))) b!6376824))

(assert (= (and b!6375652 ((_ is Union!16287) (regOne!33087 (regOne!33086 r!7292)))) b!6376825))

(declare-fun b!6376831 () Bool)

(declare-fun e!3871228 () Bool)

(declare-fun tp!1774953 () Bool)

(assert (=> b!6376831 (= e!3871228 tp!1774953)))

(declare-fun b!6376827 () Bool)

(assert (=> b!6376827 (= e!3871228 tp_is_empty!41827)))

(declare-fun b!6376833 () Bool)

(declare-fun tp!1774955 () Bool)

(declare-fun tp!1774954 () Bool)

(assert (=> b!6376833 (= e!3871228 (and tp!1774955 tp!1774954))))

(assert (=> b!6375652 (= tp!1774660 e!3871228)))

(declare-fun b!6376829 () Bool)

(declare-fun tp!1774952 () Bool)

(declare-fun tp!1774956 () Bool)

(assert (=> b!6376829 (= e!3871228 (and tp!1774952 tp!1774956))))

(assert (= (and b!6375652 ((_ is ElementMatch!16287) (regTwo!33087 (regOne!33086 r!7292)))) b!6376827))

(assert (= (and b!6375652 ((_ is Concat!25132) (regTwo!33087 (regOne!33086 r!7292)))) b!6376829))

(assert (= (and b!6375652 ((_ is Star!16287) (regTwo!33087 (regOne!33086 r!7292)))) b!6376831))

(assert (= (and b!6375652 ((_ is Union!16287) (regTwo!33087 (regOne!33086 r!7292)))) b!6376833))

(declare-fun b!6376837 () Bool)

(declare-fun e!3871230 () Bool)

(declare-fun tp!1774964 () Bool)

(assert (=> b!6376837 (= e!3871230 tp!1774964)))

(declare-fun b!6376835 () Bool)

(assert (=> b!6376835 (= e!3871230 tp_is_empty!41827)))

(declare-fun b!6376838 () Bool)

(declare-fun tp!1774966 () Bool)

(declare-fun tp!1774965 () Bool)

(assert (=> b!6376838 (= e!3871230 (and tp!1774966 tp!1774965))))

(assert (=> b!6375675 (= tp!1774687 e!3871230)))

(declare-fun b!6376836 () Bool)

(declare-fun tp!1774963 () Bool)

(declare-fun tp!1774967 () Bool)

(assert (=> b!6376836 (= e!3871230 (and tp!1774963 tp!1774967))))

(assert (= (and b!6375675 ((_ is ElementMatch!16287) (regOne!33087 (regTwo!33087 r!7292)))) b!6376835))

(assert (= (and b!6375675 ((_ is Concat!25132) (regOne!33087 (regTwo!33087 r!7292)))) b!6376836))

(assert (= (and b!6375675 ((_ is Star!16287) (regOne!33087 (regTwo!33087 r!7292)))) b!6376837))

(assert (= (and b!6375675 ((_ is Union!16287) (regOne!33087 (regTwo!33087 r!7292)))) b!6376838))

(declare-fun b!6376845 () Bool)

(declare-fun e!3871232 () Bool)

(declare-fun tp!1774973 () Bool)

(assert (=> b!6376845 (= e!3871232 tp!1774973)))

(declare-fun b!6376843 () Bool)

(assert (=> b!6376843 (= e!3871232 tp_is_empty!41827)))

(declare-fun b!6376846 () Bool)

(declare-fun tp!1774975 () Bool)

(declare-fun tp!1774974 () Bool)

(assert (=> b!6376846 (= e!3871232 (and tp!1774975 tp!1774974))))

(assert (=> b!6375675 (= tp!1774686 e!3871232)))

(declare-fun b!6376844 () Bool)

(declare-fun tp!1774972 () Bool)

(declare-fun tp!1774976 () Bool)

(assert (=> b!6376844 (= e!3871232 (and tp!1774972 tp!1774976))))

(assert (= (and b!6375675 ((_ is ElementMatch!16287) (regTwo!33087 (regTwo!33087 r!7292)))) b!6376843))

(assert (= (and b!6375675 ((_ is Concat!25132) (regTwo!33087 (regTwo!33087 r!7292)))) b!6376844))

(assert (= (and b!6375675 ((_ is Star!16287) (regTwo!33087 (regTwo!33087 r!7292)))) b!6376845))

(assert (= (and b!6375675 ((_ is Union!16287) (regTwo!33087 (regTwo!33087 r!7292)))) b!6376846))

(declare-fun b!6376850 () Bool)

(declare-fun e!3871234 () Bool)

(declare-fun tp!1774980 () Bool)

(assert (=> b!6376850 (= e!3871234 tp!1774980)))

(declare-fun b!6376848 () Bool)

(assert (=> b!6376848 (= e!3871234 tp_is_empty!41827)))

(declare-fun b!6376851 () Bool)

(declare-fun tp!1774982 () Bool)

(declare-fun tp!1774981 () Bool)

(assert (=> b!6376851 (= e!3871234 (and tp!1774982 tp!1774981))))

(assert (=> b!6375667 (= tp!1774677 e!3871234)))

(declare-fun b!6376849 () Bool)

(declare-fun tp!1774979 () Bool)

(declare-fun tp!1774983 () Bool)

(assert (=> b!6376849 (= e!3871234 (and tp!1774979 tp!1774983))))

(assert (= (and b!6375667 ((_ is ElementMatch!16287) (h!71484 (exprs!6171 setElem!43482)))) b!6376848))

(assert (= (and b!6375667 ((_ is Concat!25132) (h!71484 (exprs!6171 setElem!43482)))) b!6376849))

(assert (= (and b!6375667 ((_ is Star!16287) (h!71484 (exprs!6171 setElem!43482)))) b!6376850))

(assert (= (and b!6375667 ((_ is Union!16287) (h!71484 (exprs!6171 setElem!43482)))) b!6376851))

(declare-fun b!6376857 () Bool)

(declare-fun e!3871237 () Bool)

(declare-fun tp!1774991 () Bool)

(declare-fun tp!1774992 () Bool)

(assert (=> b!6376857 (= e!3871237 (and tp!1774991 tp!1774992))))

(assert (=> b!6375667 (= tp!1774678 e!3871237)))

(assert (= (and b!6375667 ((_ is Cons!65036) (t!378762 (exprs!6171 setElem!43482)))) b!6376857))

(declare-fun b!6376859 () Bool)

(declare-fun e!3871239 () Bool)

(declare-fun tp!1774993 () Bool)

(assert (=> b!6376859 (= e!3871239 tp!1774993)))

(declare-fun tp!1774994 () Bool)

(declare-fun b!6376858 () Bool)

(declare-fun e!3871238 () Bool)

(assert (=> b!6376858 (= e!3871238 (and (inv!83964 (h!71485 (t!378763 (t!378763 zl!343)))) e!3871239 tp!1774994))))

(assert (=> b!6375682 (= tp!1774694 e!3871238)))

(assert (= b!6376858 b!6376859))

(assert (= (and b!6375682 ((_ is Cons!65037) (t!378763 (t!378763 zl!343)))) b!6376858))

(declare-fun m!7178382 () Bool)

(assert (=> b!6376858 m!7178382))

(declare-fun b!6376864 () Bool)

(declare-fun e!3871241 () Bool)

(declare-fun tp!1775000 () Bool)

(assert (=> b!6376864 (= e!3871241 (and tp_is_empty!41827 tp!1775000))))

(assert (=> b!6375661 (= tp!1774670 e!3871241)))

(assert (= (and b!6375661 ((_ is Cons!65038) (t!378764 (t!378764 s!2326)))) b!6376864))

(declare-fun b!6376869 () Bool)

(declare-fun e!3871243 () Bool)

(declare-fun tp!1775006 () Bool)

(declare-fun tp!1775007 () Bool)

(assert (=> b!6376869 (= e!3871243 (and tp!1775006 tp!1775007))))

(assert (=> b!6375683 (= tp!1774693 e!3871243)))

(assert (= (and b!6375683 ((_ is Cons!65036) (exprs!6171 (h!71485 (t!378763 zl!343))))) b!6376869))

(declare-fun b_lambda!242317 () Bool)

(assert (= b_lambda!242297 (or d!1999349 b_lambda!242317)))

(declare-fun bs!1596712 () Bool)

(declare-fun d!1999849 () Bool)

(assert (= bs!1596712 (and d!1999849 d!1999349)))

(assert (=> bs!1596712 (= (dynLambda!25804 lambda!351515 (h!71484 (exprs!6171 (h!71485 zl!343)))) (validRegex!8023 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(declare-fun m!7178384 () Bool)

(assert (=> bs!1596712 m!7178384))

(assert (=> b!6376457 d!1999849))

(declare-fun b_lambda!242319 () Bool)

(assert (= b_lambda!242291 (or b!6374913 b_lambda!242319)))

(assert (=> d!1999639 d!1999355))

(declare-fun b_lambda!242321 () Bool)

(assert (= b_lambda!242295 (or d!1999307 b_lambda!242321)))

(declare-fun bs!1596713 () Bool)

(declare-fun d!1999851 () Bool)

(assert (= bs!1596713 (and d!1999851 d!1999307)))

(assert (=> bs!1596713 (= (dynLambda!25804 lambda!351499 (h!71484 (exprs!6171 setElem!43482))) (validRegex!8023 (h!71484 (exprs!6171 setElem!43482))))))

(declare-fun m!7178386 () Bool)

(assert (=> bs!1596713 m!7178386))

(assert (=> b!6376403 d!1999851))

(declare-fun b_lambda!242323 () Bool)

(assert (= b_lambda!242299 (or b!6374913 b_lambda!242323)))

(assert (=> d!1999731 d!1999359))

(declare-fun b_lambda!242325 () Bool)

(assert (= b_lambda!242309 (or d!1999221 b_lambda!242325)))

(declare-fun bs!1596714 () Bool)

(declare-fun d!1999853 () Bool)

(assert (= bs!1596714 (and d!1999853 d!1999221)))

(assert (=> bs!1596714 (= (dynLambda!25804 lambda!351478 (h!71484 (exprs!6171 lt!2369038))) (validRegex!8023 (h!71484 (exprs!6171 lt!2369038))))))

(declare-fun m!7178388 () Bool)

(assert (=> bs!1596714 m!7178388))

(assert (=> b!6376610 d!1999853))

(declare-fun b_lambda!242327 () Bool)

(assert (= b_lambda!242279 (or d!1999345 b_lambda!242327)))

(declare-fun bs!1596715 () Bool)

(declare-fun d!1999855 () Bool)

(assert (= bs!1596715 (and d!1999855 d!1999345)))

(assert (=> bs!1596715 (= (dynLambda!25804 lambda!351511 (h!71484 (unfocusZipperList!1708 zl!343))) (validRegex!8023 (h!71484 (unfocusZipperList!1708 zl!343))))))

(declare-fun m!7178390 () Bool)

(assert (=> bs!1596715 m!7178390))

(assert (=> b!6375841 d!1999855))

(declare-fun b_lambda!242329 () Bool)

(assert (= b_lambda!242305 (or b!6374913 b_lambda!242329)))

(assert (=> d!1999775 d!1999357))

(declare-fun b_lambda!242331 () Bool)

(assert (= b_lambda!242307 (or b!6374913 b_lambda!242331)))

(assert (=> d!1999805 d!1999353))

(declare-fun b_lambda!242333 () Bool)

(assert (= b_lambda!242301 (or d!1999347 b_lambda!242333)))

(declare-fun bs!1596716 () Bool)

(declare-fun d!1999857 () Bool)

(assert (= bs!1596716 (and d!1999857 d!1999347)))

(assert (=> bs!1596716 (= (dynLambda!25804 lambda!351514 (h!71484 lt!2369139)) (validRegex!8023 (h!71484 lt!2369139)))))

(declare-fun m!7178392 () Bool)

(assert (=> bs!1596716 m!7178392))

(assert (=> b!6376527 d!1999857))

(declare-fun b_lambda!242335 () Bool)

(assert (= b_lambda!242281 (or d!1999249 b_lambda!242335)))

(declare-fun bs!1596717 () Bool)

(declare-fun d!1999859 () Bool)

(assert (= bs!1596717 (and d!1999859 d!1999249)))

(assert (=> bs!1596717 (= (dynLambda!25804 lambda!351486 (h!71484 (exprs!6171 (h!71485 zl!343)))) (validRegex!8023 (h!71484 (exprs!6171 (h!71485 zl!343)))))))

(assert (=> bs!1596717 m!7178384))

(assert (=> b!6375878 d!1999859))

(check-sat (not bm!544771) (not b!6375795) (not b!6376213) (not bm!544789) (not bm!544754) (not b!6376529) (not b!6376079) (not b!6376799) (not d!1999805) (not b!6376659) (not b!6376736) (not b!6376516) (not b!6376317) (not d!1999661) (not d!1999833) (not b!6375744) (not b!6375972) (not b!6376777) (not b!6376565) tp_is_empty!41827 (not b!6376013) (not b!6376318) (not b!6376022) (not bm!544756) (not bm!544843) (not b!6376844) (not b!6376817) (not b!6375954) (not d!1999533) (not bm!544820) (not b!6376801) (not d!1999829) (not b!6376365) (not b!6376836) (not d!1999623) (not b!6376662) (not b_lambda!242333) (not b!6376794) (not bm!544826) (not bm!544652) (not b!6376397) (not b!6375976) (not d!1999595) (not b!6376483) (not b!6376402) (not b_lambda!242273) (not bm!544823) (not b!6376744) (not b!6376122) (not b!6375760) (not bs!1596716) (not b!6376528) (not b!6376816) (not b!6376661) (not b!6376723) (not b!6376704) (not b!6376004) (not b!6376506) (not bm!544732) (not bm!544830) (not b!6376716) (not b!6376742) (not d!1999811) (not b!6376458) (not bm!544642) (not d!1999423) (not b!6376807) (not bs!1596713) (not b!6376394) (not d!1999565) (not b!6375962) (not bm!544704) (not b!6376838) (not d!1999515) (not b!6376460) (not b_lambda!242271) (not b!6376541) (not d!1999823) (not b_lambda!242325) (not bm!544829) (not bm!544748) (not bm!544769) (not d!1999783) (not b!6376667) (not b!6376724) (not b!6376846) (not b!6376395) (not d!1999597) (not bm!544737) (not b!6376651) (not b!6375879) (not b!6376277) (not b!6376580) (not d!1999761) (not b!6376588) (not b!6376037) (not b!6375941) (not b!6376751) (not d!1999465) (not b!6376233) (not bm!544792) (not b_lambda!242317) (not b!6375980) (not b!6376845) (not b!6376793) (not d!1999635) (not b!6376728) (not d!1999703) (not bm!544705) (not bm!544654) (not b!6375975) (not b!6376686) (not b!6376120) (not b!6376670) (not d!1999639) (not bm!544735) (not bm!544663) (not d!1999705) (not b!6376031) (not bm!544718) (not b!6376012) (not bm!544750) (not d!1999527) (not b!6376592) (not b!6376752) (not b!6376688) (not bm!544680) (not b!6376343) (not bm!544679) (not d!1999417) (not b!6376229) (not b!6376590) (not b!6376114) (not b_lambda!242323) (not b!6376001) (not bm!544828) (not b!6376655) (not b!6376734) (not b!6376258) (not bm!544637) (not b!6376027) (not b!6376513) (not b!6375856) (not b!6376436) (not b_lambda!242275) (not b!6376017) (not b!6376447) (not setNonEmpty!43499) (not b!6376320) (not b!6376786) (not bm!544738) (not b!6376850) (not b!6376851) (not d!1999467) (not b!6376808) (not bs!1596714) (not b!6376715) (not setNonEmpty!43497) (not bm!544683) (not d!1999629) (not b!6376230) (not b!6376654) (not b!6376034) (not b!6376702) (not b!6376735) (not bm!544706) (not b_lambda!242335) (not b!6376200) (not b!6375965) (not b!6376687) (not d!1999463) (not d!1999777) (not b!6376319) (not b!6376671) (not bm!544762) (not b!6376595) (not bm!544709) (not b!6376015) (not b!6376776) (not d!1999685) (not b!6376426) (not b!6376864) (not b!6376133) (not b!6376339) (not bm!544791) (not d!1999769) (not b!6376624) (not b!6375851) (not d!1999689) (not setNonEmpty!43501) (not b!6376552) (not bm!544781) (not bm!544795) (not b!6376296) (not b!6376021) (not b!6376236) (not d!1999687) (not b!6376766) (not b!6376831) (not b!6376680) (not b_lambda!242321) (not b!6376703) (not b!6376695) (not b!6376366) (not b_lambda!242319) (not b!6375966) (not b!6375842) (not d!1999725) (not b!6376778) (not d!1999785) (not bs!1596717) (not b!6376530) (not b!6376665) (not b_lambda!242331) (not d!1999531) (not bm!544797) (not b!6376032) (not b!6375979) (not b!6376791) (not b!6376480) (not b!6376650) (not b!6376611) (not b_lambda!242269) (not b!6376589) (not b!6375957) (not b!6376759) (not b!6376825) (not b!6376858) (not bm!544838) (not bm!544803) (not d!1999765) (not d!1999615) (not b!6376678) (not b!6376679) (not b!6375894) (not b!6375850) (not b!6376231) (not d!1999555) (not b!6376324) (not bm!544779) (not d!1999483) (not d!1999575) (not setNonEmpty!43496) (not b!6376406) (not b!6376030) (not bm!544681) (not b!6376117) (not b!6376137) (not d!1999453) (not bm!544686) (not b!6376540) (not b!6375969) (not b!6376396) (not b!6375977) (not d!1999753) (not b!6376785) (not setNonEmpty!43500) (not b!6376800) (not b!6376795) (not b!6376750) (not bm!544635) (not b!6376295) (not b!6376815) (not b!6376494) (not bm!544761) (not b!6375849) (not bm!544804) (not d!1999503) (not bs!1596715) (not b!6375853) (not b!6376666) (not d!1999739) (not bm!544786) (not b!6376585) (not b!6376202) (not b!6376119) (not b!6376833) (not b!6376663) (not b!6376118) (not b!6376849) (not b!6376138) (not b!6376404) (not b!6375893) (not b!6376824) (not b!6375820) (not bm!544776) (not b!6375949) (not b!6376722) (not bm!544763) (not bm!544678) (not d!1999681) (not bm!544825) (not bm!544685) (not bm!544802) (not b!6376016) (not b!6376694) (not d!1999469) (not b!6376658) (not b!6376727) (not d!1999447) (not b!6376857) (not b!6376837) (not b_lambda!242329) (not b!6376115) (not bm!544676) (not b!6376370) (not b!6376657) (not bs!1596712) (not b!6376002) (not b!6376859) (not b!6375978) (not d!1999561) (not bm!544650) (not b!6376369) (not d!1999529) (not bm!544660) (not b!6376399) (not b!6376089) (not b!6376758) (not b!6376577) (not b!6375967) (not b!6376014) (not bm!544711) (not b!6376726) (not bm!544661) (not d!1999505) (not b!6376765) (not b!6376130) (not b!6376212) (not b!6376696) (not b!6376743) (not b!6375984) (not d!1999569) (not b_lambda!242327) (not b!6376226) (not bm!544647) (not d!1999731) (not b!6376869) (not d!1999579) (not bm!544632) (not d!1999485) (not bm!544656) (not b!6376823) (not d!1999431) (not b!6376672) (not b!6376784) (not bm!544643) (not bm!544751) (not bm!544841) (not b!6376653) (not d!1999627) (not bm!544812) (not b!6375846) (not d!1999693) (not b!6376829) (not d!1999775) (not b!6375859) (not d!1999489) (not b!6376714) (not b!6376809) (not b!6375952) (not bm!544764) (not b!6376760))
(check-sat)
