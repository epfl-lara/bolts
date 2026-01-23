; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617250 () Bool)

(assert start!617250)

(declare-fun b!6188308 () Bool)

(assert (=> b!6188308 true))

(assert (=> b!6188308 true))

(declare-fun lambda!337890 () Int)

(declare-fun lambda!337889 () Int)

(assert (=> b!6188308 (not (= lambda!337890 lambda!337889))))

(assert (=> b!6188308 true))

(assert (=> b!6188308 true))

(declare-fun b!6188313 () Bool)

(assert (=> b!6188313 true))

(declare-fun b!6188307 () Bool)

(declare-fun e!3768851 () Bool)

(declare-datatypes ((C!32524 0))(
  ( (C!32525 (val!25964 Int)) )
))
(declare-datatypes ((Regex!16127 0))(
  ( (ElementMatch!16127 (c!1116244 C!32524)) (Concat!24972 (regOne!32766 Regex!16127) (regTwo!32766 Regex!16127)) (EmptyExpr!16127) (Star!16127 (reg!16456 Regex!16127)) (EmptyLang!16127) (Union!16127 (regOne!32767 Regex!16127) (regTwo!32767 Regex!16127)) )
))
(declare-fun lt!2340297 () Regex!16127)

(declare-fun validRegex!7863 (Regex!16127) Bool)

(assert (=> b!6188307 (= e!3768851 (validRegex!7863 lt!2340297))))

(declare-fun lt!2340289 () Bool)

(declare-fun lt!2340311 () Regex!16127)

(declare-datatypes ((List!64680 0))(
  ( (Nil!64556) (Cons!64556 (h!71004 C!32524) (t!378190 List!64680)) )
))
(declare-fun s!2326 () List!64680)

(declare-fun matchRSpec!3228 (Regex!16127 List!64680) Bool)

(assert (=> b!6188307 (= lt!2340289 (matchRSpec!3228 lt!2340311 s!2326))))

(declare-datatypes ((Unit!157795 0))(
  ( (Unit!157796) )
))
(declare-fun lt!2340313 () Unit!157795)

(declare-fun mainMatchTheorem!3228 (Regex!16127 List!64680) Unit!157795)

(assert (=> b!6188307 (= lt!2340313 (mainMatchTheorem!3228 lt!2340311 s!2326))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64681 0))(
  ( (Nil!64557) (Cons!64557 (h!71005 Regex!16127) (t!378191 List!64681)) )
))
(declare-datatypes ((Context!11022 0))(
  ( (Context!11023 (exprs!6011 List!64681)) )
))
(declare-fun lt!2340292 () (InoxSet Context!11022))

(declare-fun matchR!8310 (Regex!16127 List!64680) Bool)

(declare-fun matchZipper!2139 ((InoxSet Context!11022) List!64680) Bool)

(assert (=> b!6188307 (= (matchR!8310 lt!2340297 s!2326) (matchZipper!2139 lt!2340292 s!2326))))

(declare-fun lt!2340299 () Unit!157795)

(declare-datatypes ((List!64682 0))(
  ( (Nil!64558) (Cons!64558 (h!71006 Context!11022) (t!378192 List!64682)) )
))
(declare-fun lt!2340290 () List!64682)

(declare-fun theoremZipperRegexEquiv!739 ((InoxSet Context!11022) List!64682 Regex!16127 List!64680) Unit!157795)

(assert (=> b!6188307 (= lt!2340299 (theoremZipperRegexEquiv!739 lt!2340292 lt!2340290 lt!2340297 s!2326))))

(declare-fun lt!2340291 () List!64681)

(declare-fun generalisedConcat!1724 (List!64681) Regex!16127)

(assert (=> b!6188307 (= lt!2340297 (generalisedConcat!1724 lt!2340291))))

(declare-fun lt!2340303 () Bool)

(assert (=> b!6188307 (= lt!2340289 lt!2340303)))

(assert (=> b!6188307 (= lt!2340289 (matchR!8310 lt!2340311 s!2326))))

(declare-fun lt!2340286 () Unit!157795)

(declare-fun lt!2340326 () (InoxSet Context!11022))

(declare-fun lt!2340284 () List!64682)

(assert (=> b!6188307 (= lt!2340286 (theoremZipperRegexEquiv!739 lt!2340326 lt!2340284 lt!2340311 s!2326))))

(declare-fun lt!2340304 () List!64681)

(assert (=> b!6188307 (= lt!2340311 (generalisedConcat!1724 lt!2340304))))

(declare-fun setIsEmpty!41974 () Bool)

(declare-fun setRes!41974 () Bool)

(assert (=> setIsEmpty!41974 setRes!41974))

(declare-fun e!3768850 () Bool)

(declare-fun e!3768845 () Bool)

(assert (=> b!6188308 (= e!3768850 e!3768845)))

(declare-fun res!2560228 () Bool)

(assert (=> b!6188308 (=> res!2560228 e!3768845)))

(declare-fun lt!2340301 () Bool)

(declare-fun lt!2340324 () Bool)

(get-info :version)

(assert (=> b!6188308 (= res!2560228 (or (not (= lt!2340324 lt!2340301)) ((_ is Nil!64556) s!2326)))))

(declare-fun Exists!3197 (Int) Bool)

(assert (=> b!6188308 (= (Exists!3197 lambda!337889) (Exists!3197 lambda!337890))))

(declare-fun lt!2340300 () Unit!157795)

(declare-fun r!7292 () Regex!16127)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1734 (Regex!16127 Regex!16127 List!64680) Unit!157795)

(assert (=> b!6188308 (= lt!2340300 (lemmaExistCutMatchRandMatchRSpecEquivalent!1734 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326))))

(assert (=> b!6188308 (= lt!2340301 (Exists!3197 lambda!337889))))

(declare-datatypes ((tuple2!66212 0))(
  ( (tuple2!66213 (_1!36409 List!64680) (_2!36409 List!64680)) )
))
(declare-datatypes ((Option!16018 0))(
  ( (None!16017) (Some!16017 (v!52160 tuple2!66212)) )
))
(declare-fun isDefined!12721 (Option!16018) Bool)

(declare-fun findConcatSeparation!2432 (Regex!16127 Regex!16127 List!64680 List!64680 List!64680) Option!16018)

(assert (=> b!6188308 (= lt!2340301 (isDefined!12721 (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) Nil!64556 s!2326 s!2326)))))

(declare-fun lt!2340302 () Unit!157795)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2196 (Regex!16127 Regex!16127 List!64680) Unit!157795)

(assert (=> b!6188308 (= lt!2340302 (lemmaFindConcatSeparationEquivalentToExists!2196 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326))))

(declare-fun b!6188309 () Bool)

(declare-fun e!3768860 () Bool)

(declare-fun tp!1727211 () Bool)

(assert (=> b!6188309 (= e!3768860 tp!1727211)))

(declare-fun b!6188310 () Bool)

(declare-fun e!3768862 () Bool)

(declare-fun e!3768861 () Bool)

(assert (=> b!6188310 (= e!3768862 e!3768861)))

(declare-fun res!2560218 () Bool)

(assert (=> b!6188310 (=> res!2560218 e!3768861)))

(declare-fun lt!2340295 () Int)

(declare-fun lt!2340312 () Int)

(assert (=> b!6188310 (= res!2560218 (>= lt!2340295 lt!2340312))))

(declare-fun zl!343 () List!64682)

(declare-fun zipperDepthTotal!310 (List!64682) Int)

(assert (=> b!6188310 (= lt!2340312 (zipperDepthTotal!310 zl!343))))

(assert (=> b!6188310 (= lt!2340295 (zipperDepthTotal!310 lt!2340284))))

(declare-fun lt!2340316 () Context!11022)

(assert (=> b!6188310 (= lt!2340284 (Cons!64558 lt!2340316 Nil!64558))))

(declare-fun b!6188311 () Bool)

(declare-fun e!3768863 () Bool)

(declare-fun tp!1727210 () Bool)

(assert (=> b!6188311 (= e!3768863 tp!1727210)))

(declare-fun setNonEmpty!41974 () Bool)

(declare-fun tp!1727206 () Bool)

(declare-fun setElem!41974 () Context!11022)

(declare-fun e!3768858 () Bool)

(declare-fun inv!83564 (Context!11022) Bool)

(assert (=> setNonEmpty!41974 (= setRes!41974 (and tp!1727206 (inv!83564 setElem!41974) e!3768858))))

(declare-fun z!1189 () (InoxSet Context!11022))

(declare-fun setRest!41974 () (InoxSet Context!11022))

(assert (=> setNonEmpty!41974 (= z!1189 ((_ map or) (store ((as const (Array Context!11022 Bool)) false) setElem!41974 true) setRest!41974))))

(declare-fun b!6188312 () Bool)

(declare-fun e!3768846 () Bool)

(declare-fun lt!2340306 () (InoxSet Context!11022))

(assert (=> b!6188312 (= e!3768846 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(declare-fun e!3768847 () Bool)

(assert (=> b!6188313 (= e!3768845 e!3768847)))

(declare-fun res!2560226 () Bool)

(assert (=> b!6188313 (=> res!2560226 e!3768847)))

(assert (=> b!6188313 (= res!2560226 (or (and ((_ is ElementMatch!16127) (regOne!32766 r!7292)) (= (c!1116244 (regOne!32766 r!7292)) (h!71004 s!2326))) (not ((_ is Union!16127) (regOne!32766 r!7292)))))))

(declare-fun lt!2340321 () Unit!157795)

(declare-fun e!3768848 () Unit!157795)

(assert (=> b!6188313 (= lt!2340321 e!3768848)))

(declare-fun c!1116243 () Bool)

(declare-fun nullable!6120 (Regex!16127) Bool)

(assert (=> b!6188313 (= c!1116243 (nullable!6120 (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun lambda!337891 () Int)

(declare-fun flatMap!1632 ((InoxSet Context!11022) Int) (InoxSet Context!11022))

(declare-fun derivationStepZipperUp!1301 (Context!11022 C!32524) (InoxSet Context!11022))

(assert (=> b!6188313 (= (flatMap!1632 z!1189 lambda!337891) (derivationStepZipperUp!1301 (h!71006 zl!343) (h!71004 s!2326)))))

(declare-fun lt!2340319 () Unit!157795)

(declare-fun lemmaFlatMapOnSingletonSet!1158 ((InoxSet Context!11022) Context!11022 Int) Unit!157795)

(assert (=> b!6188313 (= lt!2340319 (lemmaFlatMapOnSingletonSet!1158 z!1189 (h!71006 zl!343) lambda!337891))))

(declare-fun lt!2340307 () Context!11022)

(assert (=> b!6188313 (= lt!2340306 (derivationStepZipperUp!1301 lt!2340307 (h!71004 s!2326)))))

(declare-fun lt!2340288 () (InoxSet Context!11022))

(declare-fun derivationStepZipperDown!1375 (Regex!16127 Context!11022 C!32524) (InoxSet Context!11022))

(assert (=> b!6188313 (= lt!2340288 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 (h!71006 zl!343))) lt!2340307 (h!71004 s!2326)))))

(assert (=> b!6188313 (= lt!2340307 (Context!11023 (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun lt!2340320 () (InoxSet Context!11022))

(assert (=> b!6188313 (= lt!2340320 (derivationStepZipperUp!1301 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343))))) (h!71004 s!2326)))))

(declare-fun b!6188314 () Bool)

(declare-fun Unit!157797 () Unit!157795)

(assert (=> b!6188314 (= e!3768848 Unit!157797)))

(declare-fun lt!2340294 () Unit!157795)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!958 ((InoxSet Context!11022) (InoxSet Context!11022) List!64680) Unit!157795)

(assert (=> b!6188314 (= lt!2340294 (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340288 lt!2340306 (t!378190 s!2326)))))

(declare-fun res!2560227 () Bool)

(assert (=> b!6188314 (= res!2560227 (matchZipper!2139 lt!2340288 (t!378190 s!2326)))))

(declare-fun e!3768853 () Bool)

(assert (=> b!6188314 (=> res!2560227 e!3768853)))

(assert (=> b!6188314 (= (matchZipper!2139 ((_ map or) lt!2340288 lt!2340306) (t!378190 s!2326)) e!3768853)))

(declare-fun b!6188315 () Bool)

(declare-fun res!2560233 () Bool)

(assert (=> b!6188315 (=> res!2560233 e!3768850)))

(declare-fun isEmpty!36538 (List!64682) Bool)

(assert (=> b!6188315 (= res!2560233 (not (isEmpty!36538 (t!378192 zl!343))))))

(declare-fun b!6188316 () Bool)

(assert (=> b!6188316 (= e!3768853 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(declare-fun b!6188317 () Bool)

(declare-fun res!2560225 () Bool)

(assert (=> b!6188317 (=> res!2560225 e!3768850)))

(declare-fun generalisedUnion!1971 (List!64681) Regex!16127)

(declare-fun unfocusZipperList!1548 (List!64682) List!64681)

(assert (=> b!6188317 (= res!2560225 (not (= r!7292 (generalisedUnion!1971 (unfocusZipperList!1548 zl!343)))))))

(declare-fun b!6188318 () Bool)

(declare-fun tp!1727209 () Bool)

(declare-fun tp!1727207 () Bool)

(assert (=> b!6188318 (= e!3768860 (and tp!1727209 tp!1727207))))

(declare-fun b!6188319 () Bool)

(declare-fun res!2560239 () Bool)

(assert (=> b!6188319 (=> res!2560239 e!3768850)))

(assert (=> b!6188319 (= res!2560239 (not ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6188320 () Bool)

(declare-fun e!3768842 () Bool)

(assert (=> b!6188320 (= e!3768842 (matchZipper!2139 lt!2340292 s!2326))))

(declare-fun b!6188321 () Bool)

(declare-fun e!3768857 () Bool)

(assert (=> b!6188321 (= e!3768847 e!3768857)))

(declare-fun res!2560234 () Bool)

(assert (=> b!6188321 (=> res!2560234 e!3768857)))

(declare-fun lt!2340315 () (InoxSet Context!11022))

(assert (=> b!6188321 (= res!2560234 (not (= lt!2340288 lt!2340315)))))

(declare-fun lt!2340309 () (InoxSet Context!11022))

(declare-fun lt!2340287 () (InoxSet Context!11022))

(assert (=> b!6188321 (= lt!2340315 ((_ map or) lt!2340309 lt!2340287))))

(assert (=> b!6188321 (= lt!2340287 (derivationStepZipperDown!1375 (regTwo!32767 (regOne!32766 r!7292)) lt!2340307 (h!71004 s!2326)))))

(assert (=> b!6188321 (= lt!2340309 (derivationStepZipperDown!1375 (regOne!32767 (regOne!32766 r!7292)) lt!2340307 (h!71004 s!2326)))))

(declare-fun b!6188322 () Bool)

(declare-fun res!2560229 () Bool)

(assert (=> b!6188322 (=> res!2560229 e!3768850)))

(assert (=> b!6188322 (= res!2560229 (or ((_ is EmptyExpr!16127) r!7292) ((_ is EmptyLang!16127) r!7292) ((_ is ElementMatch!16127) r!7292) ((_ is Union!16127) r!7292) (not ((_ is Concat!24972) r!7292))))))

(declare-fun b!6188323 () Bool)

(declare-fun res!2560237 () Bool)

(assert (=> b!6188323 (=> res!2560237 e!3768862)))

(declare-fun lt!2340308 () Regex!16127)

(assert (=> b!6188323 (= res!2560237 (or (not (= lt!2340308 r!7292)) (not (= (exprs!6011 (h!71006 zl!343)) (Cons!64557 (regOne!32766 r!7292) (t!378191 (exprs!6011 (h!71006 zl!343))))))))))

(declare-fun b!6188324 () Bool)

(declare-fun Unit!157798 () Unit!157795)

(assert (=> b!6188324 (= e!3768848 Unit!157798)))

(declare-fun b!6188325 () Bool)

(declare-fun tp_is_empty!41507 () Bool)

(assert (=> b!6188325 (= e!3768860 tp_is_empty!41507)))

(declare-fun b!6188326 () Bool)

(declare-fun e!3768843 () Unit!157795)

(declare-fun Unit!157799 () Unit!157795)

(assert (=> b!6188326 (= e!3768843 Unit!157799)))

(declare-fun lt!2340325 () Unit!157795)

(assert (=> b!6188326 (= lt!2340325 (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340287 lt!2340306 (t!378190 s!2326)))))

(declare-fun res!2560232 () Bool)

(assert (=> b!6188326 (= res!2560232 (matchZipper!2139 lt!2340287 (t!378190 s!2326)))))

(assert (=> b!6188326 (=> res!2560232 e!3768846)))

(assert (=> b!6188326 (= (matchZipper!2139 ((_ map or) lt!2340287 lt!2340306) (t!378190 s!2326)) e!3768846)))

(declare-fun b!6188327 () Bool)

(declare-fun e!3768849 () Bool)

(assert (=> b!6188327 (= e!3768849 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(declare-fun b!6188328 () Bool)

(declare-fun res!2560230 () Bool)

(assert (=> b!6188328 (=> res!2560230 e!3768845)))

(declare-fun isEmpty!36539 (List!64681) Bool)

(assert (=> b!6188328 (= res!2560230 (isEmpty!36539 (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6188329 () Bool)

(assert (=> b!6188329 (= e!3768861 e!3768851)))

(declare-fun res!2560238 () Bool)

(assert (=> b!6188329 (=> res!2560238 e!3768851)))

(assert (=> b!6188329 (= res!2560238 (>= (zipperDepthTotal!310 lt!2340290) lt!2340312))))

(declare-fun lt!2340285 () Context!11022)

(assert (=> b!6188329 (= lt!2340290 (Cons!64558 lt!2340285 Nil!64558))))

(declare-fun b!6188330 () Bool)

(declare-fun e!3768865 () Bool)

(declare-fun e!3768859 () Bool)

(assert (=> b!6188330 (= e!3768865 e!3768859)))

(declare-fun res!2560236 () Bool)

(assert (=> b!6188330 (=> (not res!2560236) (not e!3768859))))

(assert (=> b!6188330 (= res!2560236 (= r!7292 lt!2340308))))

(declare-fun unfocusZipper!1869 (List!64682) Regex!16127)

(assert (=> b!6188330 (= lt!2340308 (unfocusZipper!1869 zl!343))))

(declare-fun b!6188331 () Bool)

(declare-fun e!3768855 () Unit!157795)

(declare-fun Unit!157800 () Unit!157795)

(assert (=> b!6188331 (= e!3768855 Unit!157800)))

(declare-fun lt!2340305 () Unit!157795)

(assert (=> b!6188331 (= lt!2340305 (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340309 lt!2340306 (t!378190 s!2326)))))

(declare-fun res!2560231 () Bool)

(declare-fun lt!2340314 () Bool)

(assert (=> b!6188331 (= res!2560231 lt!2340314)))

(assert (=> b!6188331 (=> res!2560231 e!3768849)))

(assert (=> b!6188331 (= (matchZipper!2139 ((_ map or) lt!2340309 lt!2340306) (t!378190 s!2326)) e!3768849)))

(declare-fun b!6188332 () Bool)

(declare-fun e!3768852 () Bool)

(assert (=> b!6188332 (= e!3768852 (matchZipper!2139 lt!2340287 (t!378190 s!2326)))))

(declare-fun e!3768856 () Bool)

(declare-fun tp!1727205 () Bool)

(declare-fun b!6188333 () Bool)

(assert (=> b!6188333 (= e!3768856 (and (inv!83564 (h!71006 zl!343)) e!3768863 tp!1727205))))

(declare-fun b!6188334 () Bool)

(declare-fun res!2560241 () Bool)

(assert (=> b!6188334 (=> (not res!2560241) (not e!3768865))))

(declare-fun toList!9911 ((InoxSet Context!11022)) List!64682)

(assert (=> b!6188334 (= res!2560241 (= (toList!9911 z!1189) zl!343))))

(declare-fun b!6188335 () Bool)

(declare-fun Unit!157801 () Unit!157795)

(assert (=> b!6188335 (= e!3768855 Unit!157801)))

(declare-fun b!6188336 () Bool)

(declare-fun tp!1727214 () Bool)

(assert (=> b!6188336 (= e!3768858 tp!1727214)))

(declare-fun b!6188337 () Bool)

(assert (=> b!6188337 (= e!3768859 (not e!3768850))))

(declare-fun res!2560223 () Bool)

(assert (=> b!6188337 (=> res!2560223 e!3768850)))

(assert (=> b!6188337 (= res!2560223 (not ((_ is Cons!64558) zl!343)))))

(assert (=> b!6188337 (= lt!2340324 (matchRSpec!3228 r!7292 s!2326))))

(assert (=> b!6188337 (= lt!2340324 (matchR!8310 r!7292 s!2326))))

(declare-fun lt!2340310 () Unit!157795)

(assert (=> b!6188337 (= lt!2340310 (mainMatchTheorem!3228 r!7292 s!2326))))

(declare-fun b!6188338 () Bool)

(declare-fun e!3768864 () Bool)

(assert (=> b!6188338 (= e!3768857 e!3768864)))

(declare-fun res!2560222 () Bool)

(assert (=> b!6188338 (=> res!2560222 e!3768864)))

(declare-fun e!3768854 () Bool)

(assert (=> b!6188338 (= res!2560222 e!3768854)))

(declare-fun res!2560221 () Bool)

(assert (=> b!6188338 (=> (not res!2560221) (not e!3768854))))

(assert (=> b!6188338 (= res!2560221 (not (= (matchZipper!2139 lt!2340288 (t!378190 s!2326)) lt!2340314)))))

(assert (=> b!6188338 (= (matchZipper!2139 lt!2340315 (t!378190 s!2326)) e!3768852)))

(declare-fun res!2560224 () Bool)

(assert (=> b!6188338 (=> res!2560224 e!3768852)))

(assert (=> b!6188338 (= res!2560224 lt!2340314)))

(assert (=> b!6188338 (= lt!2340314 (matchZipper!2139 lt!2340309 (t!378190 s!2326)))))

(declare-fun lt!2340317 () Unit!157795)

(assert (=> b!6188338 (= lt!2340317 (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340309 lt!2340287 (t!378190 s!2326)))))

(declare-fun b!6188339 () Bool)

(declare-fun tp!1727213 () Bool)

(declare-fun tp!1727212 () Bool)

(assert (=> b!6188339 (= e!3768860 (and tp!1727213 tp!1727212))))

(declare-fun res!2560220 () Bool)

(assert (=> start!617250 (=> (not res!2560220) (not e!3768865))))

(assert (=> start!617250 (= res!2560220 (validRegex!7863 r!7292))))

(assert (=> start!617250 e!3768865))

(assert (=> start!617250 e!3768860))

(declare-fun condSetEmpty!41974 () Bool)

(assert (=> start!617250 (= condSetEmpty!41974 (= z!1189 ((as const (Array Context!11022 Bool)) false)))))

(assert (=> start!617250 setRes!41974))

(assert (=> start!617250 e!3768856))

(declare-fun e!3768844 () Bool)

(assert (=> start!617250 e!3768844))

(declare-fun b!6188340 () Bool)

(assert (=> b!6188340 (= e!3768864 e!3768862)))

(declare-fun res!2560219 () Bool)

(assert (=> b!6188340 (=> res!2560219 e!3768862)))

(assert (=> b!6188340 (= res!2560219 (not (= (matchZipper!2139 z!1189 s!2326) e!3768842)))))

(declare-fun res!2560240 () Bool)

(assert (=> b!6188340 (=> res!2560240 e!3768842)))

(assert (=> b!6188340 (= res!2560240 lt!2340303)))

(assert (=> b!6188340 (= lt!2340303 (matchZipper!2139 lt!2340326 s!2326))))

(declare-fun lt!2340293 () Unit!157795)

(assert (=> b!6188340 (= lt!2340293 e!3768843)))

(declare-fun c!1116242 () Bool)

(assert (=> b!6188340 (= c!1116242 (nullable!6120 (regTwo!32767 (regOne!32766 r!7292))))))

(assert (=> b!6188340 (= (flatMap!1632 lt!2340292 lambda!337891) (derivationStepZipperUp!1301 lt!2340285 (h!71004 s!2326)))))

(declare-fun lt!2340322 () Unit!157795)

(assert (=> b!6188340 (= lt!2340322 (lemmaFlatMapOnSingletonSet!1158 lt!2340292 lt!2340285 lambda!337891))))

(declare-fun lt!2340296 () (InoxSet Context!11022))

(assert (=> b!6188340 (= lt!2340296 (derivationStepZipperUp!1301 lt!2340285 (h!71004 s!2326)))))

(declare-fun lt!2340323 () Unit!157795)

(assert (=> b!6188340 (= lt!2340323 e!3768855)))

(declare-fun c!1116241 () Bool)

(assert (=> b!6188340 (= c!1116241 (nullable!6120 (regOne!32767 (regOne!32766 r!7292))))))

(assert (=> b!6188340 (= (flatMap!1632 lt!2340326 lambda!337891) (derivationStepZipperUp!1301 lt!2340316 (h!71004 s!2326)))))

(declare-fun lt!2340318 () Unit!157795)

(assert (=> b!6188340 (= lt!2340318 (lemmaFlatMapOnSingletonSet!1158 lt!2340326 lt!2340316 lambda!337891))))

(declare-fun lt!2340298 () (InoxSet Context!11022))

(assert (=> b!6188340 (= lt!2340298 (derivationStepZipperUp!1301 lt!2340316 (h!71004 s!2326)))))

(assert (=> b!6188340 (= lt!2340292 (store ((as const (Array Context!11022 Bool)) false) lt!2340285 true))))

(assert (=> b!6188340 (= lt!2340285 (Context!11023 lt!2340291))))

(assert (=> b!6188340 (= lt!2340291 (Cons!64557 (regTwo!32767 (regOne!32766 r!7292)) (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(assert (=> b!6188340 (= lt!2340326 (store ((as const (Array Context!11022 Bool)) false) lt!2340316 true))))

(assert (=> b!6188340 (= lt!2340316 (Context!11023 lt!2340304))))

(assert (=> b!6188340 (= lt!2340304 (Cons!64557 (regOne!32767 (regOne!32766 r!7292)) (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6188341 () Bool)

(declare-fun tp!1727208 () Bool)

(assert (=> b!6188341 (= e!3768844 (and tp_is_empty!41507 tp!1727208))))

(declare-fun b!6188342 () Bool)

(declare-fun res!2560235 () Bool)

(assert (=> b!6188342 (=> res!2560235 e!3768850)))

(assert (=> b!6188342 (= res!2560235 (not (= r!7292 (generalisedConcat!1724 (exprs!6011 (h!71006 zl!343))))))))

(declare-fun b!6188343 () Bool)

(assert (=> b!6188343 (= e!3768854 (not (matchZipper!2139 lt!2340287 (t!378190 s!2326))))))

(declare-fun b!6188344 () Bool)

(declare-fun Unit!157802 () Unit!157795)

(assert (=> b!6188344 (= e!3768843 Unit!157802)))

(assert (= (and start!617250 res!2560220) b!6188334))

(assert (= (and b!6188334 res!2560241) b!6188330))

(assert (= (and b!6188330 res!2560236) b!6188337))

(assert (= (and b!6188337 (not res!2560223)) b!6188315))

(assert (= (and b!6188315 (not res!2560233)) b!6188342))

(assert (= (and b!6188342 (not res!2560235)) b!6188319))

(assert (= (and b!6188319 (not res!2560239)) b!6188317))

(assert (= (and b!6188317 (not res!2560225)) b!6188322))

(assert (= (and b!6188322 (not res!2560229)) b!6188308))

(assert (= (and b!6188308 (not res!2560228)) b!6188328))

(assert (= (and b!6188328 (not res!2560230)) b!6188313))

(assert (= (and b!6188313 c!1116243) b!6188314))

(assert (= (and b!6188313 (not c!1116243)) b!6188324))

(assert (= (and b!6188314 (not res!2560227)) b!6188316))

(assert (= (and b!6188313 (not res!2560226)) b!6188321))

(assert (= (and b!6188321 (not res!2560234)) b!6188338))

(assert (= (and b!6188338 (not res!2560224)) b!6188332))

(assert (= (and b!6188338 res!2560221) b!6188343))

(assert (= (and b!6188338 (not res!2560222)) b!6188340))

(assert (= (and b!6188340 c!1116241) b!6188331))

(assert (= (and b!6188340 (not c!1116241)) b!6188335))

(assert (= (and b!6188331 (not res!2560231)) b!6188327))

(assert (= (and b!6188340 c!1116242) b!6188326))

(assert (= (and b!6188340 (not c!1116242)) b!6188344))

(assert (= (and b!6188326 (not res!2560232)) b!6188312))

(assert (= (and b!6188340 (not res!2560240)) b!6188320))

(assert (= (and b!6188340 (not res!2560219)) b!6188323))

(assert (= (and b!6188323 (not res!2560237)) b!6188310))

(assert (= (and b!6188310 (not res!2560218)) b!6188329))

(assert (= (and b!6188329 (not res!2560238)) b!6188307))

(assert (= (and start!617250 ((_ is ElementMatch!16127) r!7292)) b!6188325))

(assert (= (and start!617250 ((_ is Concat!24972) r!7292)) b!6188339))

(assert (= (and start!617250 ((_ is Star!16127) r!7292)) b!6188309))

(assert (= (and start!617250 ((_ is Union!16127) r!7292)) b!6188318))

(assert (= (and start!617250 condSetEmpty!41974) setIsEmpty!41974))

(assert (= (and start!617250 (not condSetEmpty!41974)) setNonEmpty!41974))

(assert (= setNonEmpty!41974 b!6188336))

(assert (= b!6188333 b!6188311))

(assert (= (and start!617250 ((_ is Cons!64558) zl!343)) b!6188333))

(assert (= (and start!617250 ((_ is Cons!64556) s!2326)) b!6188341))

(declare-fun m!7022828 () Bool)

(assert (=> b!6188315 m!7022828))

(declare-fun m!7022830 () Bool)

(assert (=> b!6188337 m!7022830))

(declare-fun m!7022832 () Bool)

(assert (=> b!6188337 m!7022832))

(declare-fun m!7022834 () Bool)

(assert (=> b!6188337 m!7022834))

(declare-fun m!7022836 () Bool)

(assert (=> b!6188316 m!7022836))

(declare-fun m!7022838 () Bool)

(assert (=> b!6188326 m!7022838))

(declare-fun m!7022840 () Bool)

(assert (=> b!6188326 m!7022840))

(declare-fun m!7022842 () Bool)

(assert (=> b!6188326 m!7022842))

(declare-fun m!7022844 () Bool)

(assert (=> b!6188329 m!7022844))

(declare-fun m!7022846 () Bool)

(assert (=> b!6188338 m!7022846))

(declare-fun m!7022848 () Bool)

(assert (=> b!6188338 m!7022848))

(declare-fun m!7022850 () Bool)

(assert (=> b!6188338 m!7022850))

(declare-fun m!7022852 () Bool)

(assert (=> b!6188338 m!7022852))

(assert (=> b!6188332 m!7022840))

(declare-fun m!7022854 () Bool)

(assert (=> b!6188330 m!7022854))

(declare-fun m!7022856 () Bool)

(assert (=> b!6188308 m!7022856))

(declare-fun m!7022858 () Bool)

(assert (=> b!6188308 m!7022858))

(declare-fun m!7022860 () Bool)

(assert (=> b!6188308 m!7022860))

(declare-fun m!7022862 () Bool)

(assert (=> b!6188308 m!7022862))

(declare-fun m!7022864 () Bool)

(assert (=> b!6188308 m!7022864))

(assert (=> b!6188308 m!7022856))

(assert (=> b!6188308 m!7022858))

(declare-fun m!7022866 () Bool)

(assert (=> b!6188308 m!7022866))

(declare-fun m!7022868 () Bool)

(assert (=> setNonEmpty!41974 m!7022868))

(declare-fun m!7022870 () Bool)

(assert (=> b!6188314 m!7022870))

(assert (=> b!6188314 m!7022846))

(declare-fun m!7022872 () Bool)

(assert (=> b!6188314 m!7022872))

(declare-fun m!7022874 () Bool)

(assert (=> b!6188321 m!7022874))

(declare-fun m!7022876 () Bool)

(assert (=> b!6188321 m!7022876))

(declare-fun m!7022878 () Bool)

(assert (=> b!6188333 m!7022878))

(assert (=> b!6188327 m!7022836))

(declare-fun m!7022880 () Bool)

(assert (=> b!6188320 m!7022880))

(declare-fun m!7022882 () Bool)

(assert (=> b!6188310 m!7022882))

(declare-fun m!7022884 () Bool)

(assert (=> b!6188310 m!7022884))

(declare-fun m!7022886 () Bool)

(assert (=> b!6188328 m!7022886))

(declare-fun m!7022888 () Bool)

(assert (=> b!6188340 m!7022888))

(declare-fun m!7022890 () Bool)

(assert (=> b!6188340 m!7022890))

(declare-fun m!7022892 () Bool)

(assert (=> b!6188340 m!7022892))

(declare-fun m!7022894 () Bool)

(assert (=> b!6188340 m!7022894))

(declare-fun m!7022896 () Bool)

(assert (=> b!6188340 m!7022896))

(declare-fun m!7022898 () Bool)

(assert (=> b!6188340 m!7022898))

(declare-fun m!7022900 () Bool)

(assert (=> b!6188340 m!7022900))

(declare-fun m!7022902 () Bool)

(assert (=> b!6188340 m!7022902))

(declare-fun m!7022904 () Bool)

(assert (=> b!6188340 m!7022904))

(declare-fun m!7022906 () Bool)

(assert (=> b!6188340 m!7022906))

(declare-fun m!7022908 () Bool)

(assert (=> b!6188340 m!7022908))

(declare-fun m!7022910 () Bool)

(assert (=> b!6188340 m!7022910))

(declare-fun m!7022912 () Bool)

(assert (=> b!6188331 m!7022912))

(declare-fun m!7022914 () Bool)

(assert (=> b!6188331 m!7022914))

(declare-fun m!7022916 () Bool)

(assert (=> start!617250 m!7022916))

(assert (=> b!6188343 m!7022840))

(declare-fun m!7022918 () Bool)

(assert (=> b!6188334 m!7022918))

(declare-fun m!7022920 () Bool)

(assert (=> b!6188307 m!7022920))

(declare-fun m!7022922 () Bool)

(assert (=> b!6188307 m!7022922))

(declare-fun m!7022924 () Bool)

(assert (=> b!6188307 m!7022924))

(declare-fun m!7022926 () Bool)

(assert (=> b!6188307 m!7022926))

(declare-fun m!7022928 () Bool)

(assert (=> b!6188307 m!7022928))

(declare-fun m!7022930 () Bool)

(assert (=> b!6188307 m!7022930))

(declare-fun m!7022932 () Bool)

(assert (=> b!6188307 m!7022932))

(declare-fun m!7022934 () Bool)

(assert (=> b!6188307 m!7022934))

(declare-fun m!7022936 () Bool)

(assert (=> b!6188307 m!7022936))

(assert (=> b!6188307 m!7022880))

(declare-fun m!7022938 () Bool)

(assert (=> b!6188342 m!7022938))

(declare-fun m!7022940 () Bool)

(assert (=> b!6188313 m!7022940))

(declare-fun m!7022942 () Bool)

(assert (=> b!6188313 m!7022942))

(declare-fun m!7022944 () Bool)

(assert (=> b!6188313 m!7022944))

(declare-fun m!7022946 () Bool)

(assert (=> b!6188313 m!7022946))

(declare-fun m!7022948 () Bool)

(assert (=> b!6188313 m!7022948))

(declare-fun m!7022950 () Bool)

(assert (=> b!6188313 m!7022950))

(declare-fun m!7022952 () Bool)

(assert (=> b!6188313 m!7022952))

(assert (=> b!6188312 m!7022836))

(declare-fun m!7022954 () Bool)

(assert (=> b!6188317 m!7022954))

(assert (=> b!6188317 m!7022954))

(declare-fun m!7022956 () Bool)

(assert (=> b!6188317 m!7022956))

(check-sat (not b!6188340) (not b!6188320) (not b!6188309) (not b!6188338) (not b!6188342) (not b!6188341) (not b!6188310) (not b!6188312) (not b!6188331) (not b!6188336) (not b!6188327) (not b!6188307) tp_is_empty!41507 (not start!617250) (not b!6188321) (not b!6188318) (not b!6188316) (not b!6188333) (not b!6188334) (not b!6188313) (not b!6188337) (not b!6188317) (not b!6188308) (not b!6188328) (not b!6188311) (not b!6188343) (not b!6188329) (not b!6188326) (not b!6188330) (not setNonEmpty!41974) (not b!6188315) (not b!6188332) (not b!6188339) (not b!6188314))
(check-sat)
(get-model)

(declare-fun b!6188518 () Bool)

(declare-fun e!3768970 () Regex!16127)

(assert (=> b!6188518 (= e!3768970 (h!71005 lt!2340304))))

(declare-fun b!6188519 () Bool)

(declare-fun e!3768971 () Regex!16127)

(assert (=> b!6188519 (= e!3768971 (Concat!24972 (h!71005 lt!2340304) (generalisedConcat!1724 (t!378191 lt!2340304))))))

(declare-fun b!6188521 () Bool)

(assert (=> b!6188521 (= e!3768970 e!3768971)))

(declare-fun c!1116308 () Bool)

(assert (=> b!6188521 (= c!1116308 ((_ is Cons!64557) lt!2340304))))

(declare-fun b!6188522 () Bool)

(declare-fun e!3768968 () Bool)

(declare-fun e!3768967 () Bool)

(assert (=> b!6188522 (= e!3768968 e!3768967)))

(declare-fun c!1116307 () Bool)

(declare-fun tail!11850 (List!64681) List!64681)

(assert (=> b!6188522 (= c!1116307 (isEmpty!36539 (tail!11850 lt!2340304)))))

(declare-fun b!6188523 () Bool)

(declare-fun lt!2340344 () Regex!16127)

(declare-fun head!12765 (List!64681) Regex!16127)

(assert (=> b!6188523 (= e!3768967 (= lt!2340344 (head!12765 lt!2340304)))))

(declare-fun b!6188524 () Bool)

(assert (=> b!6188524 (= e!3768971 EmptyExpr!16127)))

(declare-fun b!6188525 () Bool)

(declare-fun e!3768969 () Bool)

(assert (=> b!6188525 (= e!3768969 e!3768968)))

(declare-fun c!1116309 () Bool)

(assert (=> b!6188525 (= c!1116309 (isEmpty!36539 lt!2340304))))

(declare-fun b!6188526 () Bool)

(declare-fun isConcat!1061 (Regex!16127) Bool)

(assert (=> b!6188526 (= e!3768967 (isConcat!1061 lt!2340344))))

(declare-fun b!6188527 () Bool)

(declare-fun isEmptyExpr!1538 (Regex!16127) Bool)

(assert (=> b!6188527 (= e!3768968 (isEmptyExpr!1538 lt!2340344))))

(declare-fun d!1940097 () Bool)

(assert (=> d!1940097 e!3768969))

(declare-fun res!2560285 () Bool)

(assert (=> d!1940097 (=> (not res!2560285) (not e!3768969))))

(assert (=> d!1940097 (= res!2560285 (validRegex!7863 lt!2340344))))

(assert (=> d!1940097 (= lt!2340344 e!3768970)))

(declare-fun c!1116310 () Bool)

(declare-fun e!3768972 () Bool)

(assert (=> d!1940097 (= c!1116310 e!3768972)))

(declare-fun res!2560286 () Bool)

(assert (=> d!1940097 (=> (not res!2560286) (not e!3768972))))

(assert (=> d!1940097 (= res!2560286 ((_ is Cons!64557) lt!2340304))))

(declare-fun lambda!337899 () Int)

(declare-fun forall!15243 (List!64681 Int) Bool)

(assert (=> d!1940097 (forall!15243 lt!2340304 lambda!337899)))

(assert (=> d!1940097 (= (generalisedConcat!1724 lt!2340304) lt!2340344)))

(declare-fun b!6188520 () Bool)

(assert (=> b!6188520 (= e!3768972 (isEmpty!36539 (t!378191 lt!2340304)))))

(assert (= (and d!1940097 res!2560286) b!6188520))

(assert (= (and d!1940097 c!1116310) b!6188518))

(assert (= (and d!1940097 (not c!1116310)) b!6188521))

(assert (= (and b!6188521 c!1116308) b!6188519))

(assert (= (and b!6188521 (not c!1116308)) b!6188524))

(assert (= (and d!1940097 res!2560285) b!6188525))

(assert (= (and b!6188525 c!1116309) b!6188527))

(assert (= (and b!6188525 (not c!1116309)) b!6188522))

(assert (= (and b!6188522 c!1116307) b!6188523))

(assert (= (and b!6188522 (not c!1116307)) b!6188526))

(declare-fun m!7023074 () Bool)

(assert (=> b!6188519 m!7023074))

(declare-fun m!7023076 () Bool)

(assert (=> b!6188520 m!7023076))

(declare-fun m!7023078 () Bool)

(assert (=> b!6188526 m!7023078))

(declare-fun m!7023080 () Bool)

(assert (=> b!6188523 m!7023080))

(declare-fun m!7023082 () Bool)

(assert (=> b!6188525 m!7023082))

(declare-fun m!7023084 () Bool)

(assert (=> b!6188527 m!7023084))

(declare-fun m!7023086 () Bool)

(assert (=> b!6188522 m!7023086))

(assert (=> b!6188522 m!7023086))

(declare-fun m!7023088 () Bool)

(assert (=> b!6188522 m!7023088))

(declare-fun m!7023090 () Bool)

(assert (=> d!1940097 m!7023090))

(declare-fun m!7023092 () Bool)

(assert (=> d!1940097 m!7023092))

(assert (=> b!6188307 d!1940097))

(declare-fun d!1940123 () Bool)

(declare-fun c!1116317 () Bool)

(declare-fun isEmpty!36541 (List!64680) Bool)

(assert (=> d!1940123 (= c!1116317 (isEmpty!36541 s!2326))))

(declare-fun e!3768984 () Bool)

(assert (=> d!1940123 (= (matchZipper!2139 lt!2340292 s!2326) e!3768984)))

(declare-fun b!6188547 () Bool)

(declare-fun nullableZipper!1903 ((InoxSet Context!11022)) Bool)

(assert (=> b!6188547 (= e!3768984 (nullableZipper!1903 lt!2340292))))

(declare-fun b!6188548 () Bool)

(declare-fun derivationStepZipper!2095 ((InoxSet Context!11022) C!32524) (InoxSet Context!11022))

(declare-fun head!12766 (List!64680) C!32524)

(declare-fun tail!11851 (List!64680) List!64680)

(assert (=> b!6188548 (= e!3768984 (matchZipper!2139 (derivationStepZipper!2095 lt!2340292 (head!12766 s!2326)) (tail!11851 s!2326)))))

(assert (= (and d!1940123 c!1116317) b!6188547))

(assert (= (and d!1940123 (not c!1116317)) b!6188548))

(declare-fun m!7023100 () Bool)

(assert (=> d!1940123 m!7023100))

(declare-fun m!7023102 () Bool)

(assert (=> b!6188547 m!7023102))

(declare-fun m!7023104 () Bool)

(assert (=> b!6188548 m!7023104))

(assert (=> b!6188548 m!7023104))

(declare-fun m!7023106 () Bool)

(assert (=> b!6188548 m!7023106))

(declare-fun m!7023108 () Bool)

(assert (=> b!6188548 m!7023108))

(assert (=> b!6188548 m!7023106))

(assert (=> b!6188548 m!7023108))

(declare-fun m!7023110 () Bool)

(assert (=> b!6188548 m!7023110))

(assert (=> b!6188307 d!1940123))

(declare-fun bm!517355 () Bool)

(declare-fun call!517362 () Bool)

(declare-fun c!1116335 () Bool)

(assert (=> bm!517355 (= call!517362 (validRegex!7863 (ite c!1116335 (regOne!32767 lt!2340297) (regOne!32766 lt!2340297))))))

(declare-fun b!6188625 () Bool)

(declare-fun e!3769029 () Bool)

(declare-fun call!517361 () Bool)

(assert (=> b!6188625 (= e!3769029 call!517361)))

(declare-fun c!1116336 () Bool)

(declare-fun bm!517356 () Bool)

(declare-fun call!517360 () Bool)

(assert (=> bm!517356 (= call!517360 (validRegex!7863 (ite c!1116336 (reg!16456 lt!2340297) (ite c!1116335 (regTwo!32767 lt!2340297) (regTwo!32766 lt!2340297)))))))

(declare-fun d!1940127 () Bool)

(declare-fun res!2560339 () Bool)

(declare-fun e!3769031 () Bool)

(assert (=> d!1940127 (=> res!2560339 e!3769031)))

(assert (=> d!1940127 (= res!2560339 ((_ is ElementMatch!16127) lt!2340297))))

(assert (=> d!1940127 (= (validRegex!7863 lt!2340297) e!3769031)))

(declare-fun b!6188626 () Bool)

(declare-fun e!3769034 () Bool)

(assert (=> b!6188626 (= e!3769034 call!517361)))

(declare-fun b!6188627 () Bool)

(declare-fun res!2560336 () Bool)

(assert (=> b!6188627 (=> (not res!2560336) (not e!3769034))))

(assert (=> b!6188627 (= res!2560336 call!517362)))

(declare-fun e!3769030 () Bool)

(assert (=> b!6188627 (= e!3769030 e!3769034)))

(declare-fun b!6188628 () Bool)

(declare-fun e!3769032 () Bool)

(assert (=> b!6188628 (= e!3769032 e!3769030)))

(assert (=> b!6188628 (= c!1116335 ((_ is Union!16127) lt!2340297))))

(declare-fun b!6188629 () Bool)

(declare-fun e!3769033 () Bool)

(assert (=> b!6188629 (= e!3769033 e!3769029)))

(declare-fun res!2560338 () Bool)

(assert (=> b!6188629 (=> (not res!2560338) (not e!3769029))))

(assert (=> b!6188629 (= res!2560338 call!517362)))

(declare-fun b!6188630 () Bool)

(declare-fun e!3769028 () Bool)

(assert (=> b!6188630 (= e!3769032 e!3769028)))

(declare-fun res!2560337 () Bool)

(assert (=> b!6188630 (= res!2560337 (not (nullable!6120 (reg!16456 lt!2340297))))))

(assert (=> b!6188630 (=> (not res!2560337) (not e!3769028))))

(declare-fun b!6188631 () Bool)

(declare-fun res!2560340 () Bool)

(assert (=> b!6188631 (=> res!2560340 e!3769033)))

(assert (=> b!6188631 (= res!2560340 (not ((_ is Concat!24972) lt!2340297)))))

(assert (=> b!6188631 (= e!3769030 e!3769033)))

(declare-fun b!6188632 () Bool)

(assert (=> b!6188632 (= e!3769031 e!3769032)))

(assert (=> b!6188632 (= c!1116336 ((_ is Star!16127) lt!2340297))))

(declare-fun b!6188633 () Bool)

(assert (=> b!6188633 (= e!3769028 call!517360)))

(declare-fun bm!517357 () Bool)

(assert (=> bm!517357 (= call!517361 call!517360)))

(assert (= (and d!1940127 (not res!2560339)) b!6188632))

(assert (= (and b!6188632 c!1116336) b!6188630))

(assert (= (and b!6188632 (not c!1116336)) b!6188628))

(assert (= (and b!6188630 res!2560337) b!6188633))

(assert (= (and b!6188628 c!1116335) b!6188627))

(assert (= (and b!6188628 (not c!1116335)) b!6188631))

(assert (= (and b!6188627 res!2560336) b!6188626))

(assert (= (and b!6188631 (not res!2560340)) b!6188629))

(assert (= (and b!6188629 res!2560338) b!6188625))

(assert (= (or b!6188626 b!6188625) bm!517357))

(assert (= (or b!6188627 b!6188629) bm!517355))

(assert (= (or b!6188633 bm!517357) bm!517356))

(declare-fun m!7023134 () Bool)

(assert (=> bm!517355 m!7023134))

(declare-fun m!7023136 () Bool)

(assert (=> bm!517356 m!7023136))

(declare-fun m!7023138 () Bool)

(assert (=> b!6188630 m!7023138))

(assert (=> b!6188307 d!1940127))

(declare-fun bs!1535207 () Bool)

(declare-fun d!1940137 () Bool)

(assert (= bs!1535207 (and d!1940137 d!1940097)))

(declare-fun lambda!337905 () Int)

(assert (=> bs!1535207 (= lambda!337905 lambda!337899)))

(declare-fun b!6188645 () Bool)

(declare-fun e!3769045 () Regex!16127)

(assert (=> b!6188645 (= e!3769045 (h!71005 lt!2340291))))

(declare-fun b!6188646 () Bool)

(declare-fun e!3769046 () Regex!16127)

(assert (=> b!6188646 (= e!3769046 (Concat!24972 (h!71005 lt!2340291) (generalisedConcat!1724 (t!378191 lt!2340291))))))

(declare-fun b!6188648 () Bool)

(assert (=> b!6188648 (= e!3769045 e!3769046)))

(declare-fun c!1116342 () Bool)

(assert (=> b!6188648 (= c!1116342 ((_ is Cons!64557) lt!2340291))))

(declare-fun b!6188649 () Bool)

(declare-fun e!3769043 () Bool)

(declare-fun e!3769042 () Bool)

(assert (=> b!6188649 (= e!3769043 e!3769042)))

(declare-fun c!1116341 () Bool)

(assert (=> b!6188649 (= c!1116341 (isEmpty!36539 (tail!11850 lt!2340291)))))

(declare-fun b!6188650 () Bool)

(declare-fun lt!2340352 () Regex!16127)

(assert (=> b!6188650 (= e!3769042 (= lt!2340352 (head!12765 lt!2340291)))))

(declare-fun b!6188651 () Bool)

(assert (=> b!6188651 (= e!3769046 EmptyExpr!16127)))

(declare-fun b!6188652 () Bool)

(declare-fun e!3769044 () Bool)

(assert (=> b!6188652 (= e!3769044 e!3769043)))

(declare-fun c!1116343 () Bool)

(assert (=> b!6188652 (= c!1116343 (isEmpty!36539 lt!2340291))))

(declare-fun b!6188653 () Bool)

(assert (=> b!6188653 (= e!3769042 (isConcat!1061 lt!2340352))))

(declare-fun b!6188654 () Bool)

(assert (=> b!6188654 (= e!3769043 (isEmptyExpr!1538 lt!2340352))))

(assert (=> d!1940137 e!3769044))

(declare-fun res!2560344 () Bool)

(assert (=> d!1940137 (=> (not res!2560344) (not e!3769044))))

(assert (=> d!1940137 (= res!2560344 (validRegex!7863 lt!2340352))))

(assert (=> d!1940137 (= lt!2340352 e!3769045)))

(declare-fun c!1116344 () Bool)

(declare-fun e!3769047 () Bool)

(assert (=> d!1940137 (= c!1116344 e!3769047)))

(declare-fun res!2560345 () Bool)

(assert (=> d!1940137 (=> (not res!2560345) (not e!3769047))))

(assert (=> d!1940137 (= res!2560345 ((_ is Cons!64557) lt!2340291))))

(assert (=> d!1940137 (forall!15243 lt!2340291 lambda!337905)))

(assert (=> d!1940137 (= (generalisedConcat!1724 lt!2340291) lt!2340352)))

(declare-fun b!6188647 () Bool)

(assert (=> b!6188647 (= e!3769047 (isEmpty!36539 (t!378191 lt!2340291)))))

(assert (= (and d!1940137 res!2560345) b!6188647))

(assert (= (and d!1940137 c!1116344) b!6188645))

(assert (= (and d!1940137 (not c!1116344)) b!6188648))

(assert (= (and b!6188648 c!1116342) b!6188646))

(assert (= (and b!6188648 (not c!1116342)) b!6188651))

(assert (= (and d!1940137 res!2560344) b!6188652))

(assert (= (and b!6188652 c!1116343) b!6188654))

(assert (= (and b!6188652 (not c!1116343)) b!6188649))

(assert (= (and b!6188649 c!1116341) b!6188650))

(assert (= (and b!6188649 (not c!1116341)) b!6188653))

(declare-fun m!7023140 () Bool)

(assert (=> b!6188646 m!7023140))

(declare-fun m!7023142 () Bool)

(assert (=> b!6188647 m!7023142))

(declare-fun m!7023144 () Bool)

(assert (=> b!6188653 m!7023144))

(declare-fun m!7023146 () Bool)

(assert (=> b!6188650 m!7023146))

(declare-fun m!7023148 () Bool)

(assert (=> b!6188652 m!7023148))

(declare-fun m!7023150 () Bool)

(assert (=> b!6188654 m!7023150))

(declare-fun m!7023152 () Bool)

(assert (=> b!6188649 m!7023152))

(assert (=> b!6188649 m!7023152))

(declare-fun m!7023156 () Bool)

(assert (=> b!6188649 m!7023156))

(declare-fun m!7023160 () Bool)

(assert (=> d!1940137 m!7023160))

(declare-fun m!7023164 () Bool)

(assert (=> d!1940137 m!7023164))

(assert (=> b!6188307 d!1940137))

(declare-fun d!1940141 () Bool)

(assert (=> d!1940141 (= (matchR!8310 lt!2340297 s!2326) (matchZipper!2139 lt!2340292 s!2326))))

(declare-fun lt!2340359 () Unit!157795)

(declare-fun choose!45966 ((InoxSet Context!11022) List!64682 Regex!16127 List!64680) Unit!157795)

(assert (=> d!1940141 (= lt!2340359 (choose!45966 lt!2340292 lt!2340290 lt!2340297 s!2326))))

(assert (=> d!1940141 (validRegex!7863 lt!2340297)))

(assert (=> d!1940141 (= (theoremZipperRegexEquiv!739 lt!2340292 lt!2340290 lt!2340297 s!2326) lt!2340359)))

(declare-fun bs!1535215 () Bool)

(assert (= bs!1535215 d!1940141))

(assert (=> bs!1535215 m!7022924))

(assert (=> bs!1535215 m!7022880))

(declare-fun m!7023206 () Bool)

(assert (=> bs!1535215 m!7023206))

(assert (=> bs!1535215 m!7022920))

(assert (=> b!6188307 d!1940141))

(declare-fun bs!1535229 () Bool)

(declare-fun b!6188822 () Bool)

(assert (= bs!1535229 (and b!6188822 b!6188308)))

(declare-fun lambda!337921 () Int)

(assert (=> bs!1535229 (not (= lambda!337921 lambda!337889))))

(assert (=> bs!1535229 (not (= lambda!337921 lambda!337890))))

(assert (=> b!6188822 true))

(assert (=> b!6188822 true))

(declare-fun bs!1535230 () Bool)

(declare-fun b!6188824 () Bool)

(assert (= bs!1535230 (and b!6188824 b!6188308)))

(declare-fun lambda!337922 () Int)

(assert (=> bs!1535230 (not (= lambda!337922 lambda!337889))))

(assert (=> bs!1535230 (= (and (= (regOne!32766 lt!2340311) (regOne!32766 r!7292)) (= (regTwo!32766 lt!2340311) (regTwo!32766 r!7292))) (= lambda!337922 lambda!337890))))

(declare-fun bs!1535231 () Bool)

(assert (= bs!1535231 (and b!6188824 b!6188822)))

(assert (=> bs!1535231 (not (= lambda!337922 lambda!337921))))

(assert (=> b!6188824 true))

(assert (=> b!6188824 true))

(declare-fun bm!517377 () Bool)

(declare-fun call!517382 () Bool)

(assert (=> bm!517377 (= call!517382 (isEmpty!36541 s!2326))))

(declare-fun b!6188820 () Bool)

(declare-fun e!3769148 () Bool)

(declare-fun e!3769152 () Bool)

(assert (=> b!6188820 (= e!3769148 e!3769152)))

(declare-fun res!2560397 () Bool)

(assert (=> b!6188820 (= res!2560397 (not ((_ is EmptyLang!16127) lt!2340311)))))

(assert (=> b!6188820 (=> (not res!2560397) (not e!3769152))))

(declare-fun b!6188821 () Bool)

(declare-fun e!3769146 () Bool)

(declare-fun e!3769149 () Bool)

(assert (=> b!6188821 (= e!3769146 e!3769149)))

(declare-fun res!2560399 () Bool)

(assert (=> b!6188821 (= res!2560399 (matchRSpec!3228 (regOne!32767 lt!2340311) s!2326))))

(assert (=> b!6188821 (=> res!2560399 e!3769149)))

(declare-fun e!3769150 () Bool)

(declare-fun call!517383 () Bool)

(assert (=> b!6188822 (= e!3769150 call!517383)))

(declare-fun b!6188823 () Bool)

(declare-fun c!1116402 () Bool)

(assert (=> b!6188823 (= c!1116402 ((_ is ElementMatch!16127) lt!2340311))))

(declare-fun e!3769151 () Bool)

(assert (=> b!6188823 (= e!3769152 e!3769151)))

(declare-fun d!1940147 () Bool)

(declare-fun c!1116404 () Bool)

(assert (=> d!1940147 (= c!1116404 ((_ is EmptyExpr!16127) lt!2340311))))

(assert (=> d!1940147 (= (matchRSpec!3228 lt!2340311 s!2326) e!3769148)))

(declare-fun e!3769147 () Bool)

(assert (=> b!6188824 (= e!3769147 call!517383)))

(declare-fun b!6188825 () Bool)

(assert (=> b!6188825 (= e!3769148 call!517382)))

(declare-fun b!6188826 () Bool)

(assert (=> b!6188826 (= e!3769151 (= s!2326 (Cons!64556 (c!1116244 lt!2340311) Nil!64556)))))

(declare-fun bm!517378 () Bool)

(declare-fun c!1116405 () Bool)

(assert (=> bm!517378 (= call!517383 (Exists!3197 (ite c!1116405 lambda!337921 lambda!337922)))))

(declare-fun b!6188827 () Bool)

(declare-fun res!2560398 () Bool)

(assert (=> b!6188827 (=> res!2560398 e!3769150)))

(assert (=> b!6188827 (= res!2560398 call!517382)))

(assert (=> b!6188827 (= e!3769147 e!3769150)))

(declare-fun b!6188828 () Bool)

(declare-fun c!1116403 () Bool)

(assert (=> b!6188828 (= c!1116403 ((_ is Union!16127) lt!2340311))))

(assert (=> b!6188828 (= e!3769151 e!3769146)))

(declare-fun b!6188829 () Bool)

(assert (=> b!6188829 (= e!3769146 e!3769147)))

(assert (=> b!6188829 (= c!1116405 ((_ is Star!16127) lt!2340311))))

(declare-fun b!6188830 () Bool)

(assert (=> b!6188830 (= e!3769149 (matchRSpec!3228 (regTwo!32767 lt!2340311) s!2326))))

(assert (= (and d!1940147 c!1116404) b!6188825))

(assert (= (and d!1940147 (not c!1116404)) b!6188820))

(assert (= (and b!6188820 res!2560397) b!6188823))

(assert (= (and b!6188823 c!1116402) b!6188826))

(assert (= (and b!6188823 (not c!1116402)) b!6188828))

(assert (= (and b!6188828 c!1116403) b!6188821))

(assert (= (and b!6188828 (not c!1116403)) b!6188829))

(assert (= (and b!6188821 (not res!2560399)) b!6188830))

(assert (= (and b!6188829 c!1116405) b!6188827))

(assert (= (and b!6188829 (not c!1116405)) b!6188824))

(assert (= (and b!6188827 (not res!2560398)) b!6188822))

(assert (= (or b!6188822 b!6188824) bm!517378))

(assert (= (or b!6188825 b!6188827) bm!517377))

(assert (=> bm!517377 m!7023100))

(declare-fun m!7023306 () Bool)

(assert (=> b!6188821 m!7023306))

(declare-fun m!7023308 () Bool)

(assert (=> bm!517378 m!7023308))

(declare-fun m!7023310 () Bool)

(assert (=> b!6188830 m!7023310))

(assert (=> b!6188307 d!1940147))

(declare-fun b!6188890 () Bool)

(declare-fun e!3769186 () Bool)

(declare-fun lt!2340391 () Bool)

(assert (=> b!6188890 (= e!3769186 (not lt!2340391))))

(declare-fun b!6188891 () Bool)

(declare-fun e!3769188 () Bool)

(assert (=> b!6188891 (= e!3769188 (= (head!12766 s!2326) (c!1116244 lt!2340311)))))

(declare-fun b!6188892 () Bool)

(declare-fun res!2560435 () Bool)

(assert (=> b!6188892 (=> (not res!2560435) (not e!3769188))))

(declare-fun call!517386 () Bool)

(assert (=> b!6188892 (= res!2560435 (not call!517386))))

(declare-fun b!6188893 () Bool)

(declare-fun res!2560441 () Bool)

(declare-fun e!3769189 () Bool)

(assert (=> b!6188893 (=> res!2560441 e!3769189)))

(assert (=> b!6188893 (= res!2560441 (not ((_ is ElementMatch!16127) lt!2340311)))))

(assert (=> b!6188893 (= e!3769186 e!3769189)))

(declare-fun d!1940187 () Bool)

(declare-fun e!3769184 () Bool)

(assert (=> d!1940187 e!3769184))

(declare-fun c!1116420 () Bool)

(assert (=> d!1940187 (= c!1116420 ((_ is EmptyExpr!16127) lt!2340311))))

(declare-fun e!3769190 () Bool)

(assert (=> d!1940187 (= lt!2340391 e!3769190)))

(declare-fun c!1116418 () Bool)

(assert (=> d!1940187 (= c!1116418 (isEmpty!36541 s!2326))))

(assert (=> d!1940187 (validRegex!7863 lt!2340311)))

(assert (=> d!1940187 (= (matchR!8310 lt!2340311 s!2326) lt!2340391)))

(declare-fun b!6188894 () Bool)

(declare-fun e!3769187 () Bool)

(assert (=> b!6188894 (= e!3769187 (not (= (head!12766 s!2326) (c!1116244 lt!2340311))))))

(declare-fun b!6188895 () Bool)

(declare-fun res!2560438 () Bool)

(assert (=> b!6188895 (=> res!2560438 e!3769187)))

(assert (=> b!6188895 (= res!2560438 (not (isEmpty!36541 (tail!11851 s!2326))))))

(declare-fun b!6188896 () Bool)

(declare-fun res!2560442 () Bool)

(assert (=> b!6188896 (=> res!2560442 e!3769189)))

(assert (=> b!6188896 (= res!2560442 e!3769188)))

(declare-fun res!2560437 () Bool)

(assert (=> b!6188896 (=> (not res!2560437) (not e!3769188))))

(assert (=> b!6188896 (= res!2560437 lt!2340391)))

(declare-fun b!6188897 () Bool)

(declare-fun res!2560436 () Bool)

(assert (=> b!6188897 (=> (not res!2560436) (not e!3769188))))

(assert (=> b!6188897 (= res!2560436 (isEmpty!36541 (tail!11851 s!2326)))))

(declare-fun b!6188898 () Bool)

(declare-fun derivativeStep!4842 (Regex!16127 C!32524) Regex!16127)

(assert (=> b!6188898 (= e!3769190 (matchR!8310 (derivativeStep!4842 lt!2340311 (head!12766 s!2326)) (tail!11851 s!2326)))))

(declare-fun b!6188899 () Bool)

(assert (=> b!6188899 (= e!3769184 (= lt!2340391 call!517386))))

(declare-fun bm!517381 () Bool)

(assert (=> bm!517381 (= call!517386 (isEmpty!36541 s!2326))))

(declare-fun b!6188900 () Bool)

(assert (=> b!6188900 (= e!3769184 e!3769186)))

(declare-fun c!1116419 () Bool)

(assert (=> b!6188900 (= c!1116419 ((_ is EmptyLang!16127) lt!2340311))))

(declare-fun b!6188901 () Bool)

(declare-fun e!3769185 () Bool)

(assert (=> b!6188901 (= e!3769185 e!3769187)))

(declare-fun res!2560440 () Bool)

(assert (=> b!6188901 (=> res!2560440 e!3769187)))

(assert (=> b!6188901 (= res!2560440 call!517386)))

(declare-fun b!6188902 () Bool)

(assert (=> b!6188902 (= e!3769190 (nullable!6120 lt!2340311))))

(declare-fun b!6188903 () Bool)

(assert (=> b!6188903 (= e!3769189 e!3769185)))

(declare-fun res!2560439 () Bool)

(assert (=> b!6188903 (=> (not res!2560439) (not e!3769185))))

(assert (=> b!6188903 (= res!2560439 (not lt!2340391))))

(assert (= (and d!1940187 c!1116418) b!6188902))

(assert (= (and d!1940187 (not c!1116418)) b!6188898))

(assert (= (and d!1940187 c!1116420) b!6188899))

(assert (= (and d!1940187 (not c!1116420)) b!6188900))

(assert (= (and b!6188900 c!1116419) b!6188890))

(assert (= (and b!6188900 (not c!1116419)) b!6188893))

(assert (= (and b!6188893 (not res!2560441)) b!6188896))

(assert (= (and b!6188896 res!2560437) b!6188892))

(assert (= (and b!6188892 res!2560435) b!6188897))

(assert (= (and b!6188897 res!2560436) b!6188891))

(assert (= (and b!6188896 (not res!2560442)) b!6188903))

(assert (= (and b!6188903 res!2560439) b!6188901))

(assert (= (and b!6188901 (not res!2560440)) b!6188895))

(assert (= (and b!6188895 (not res!2560438)) b!6188894))

(assert (= (or b!6188899 b!6188892 b!6188901) bm!517381))

(assert (=> b!6188898 m!7023104))

(assert (=> b!6188898 m!7023104))

(declare-fun m!7023344 () Bool)

(assert (=> b!6188898 m!7023344))

(assert (=> b!6188898 m!7023108))

(assert (=> b!6188898 m!7023344))

(assert (=> b!6188898 m!7023108))

(declare-fun m!7023346 () Bool)

(assert (=> b!6188898 m!7023346))

(assert (=> b!6188894 m!7023104))

(assert (=> bm!517381 m!7023100))

(assert (=> b!6188895 m!7023108))

(assert (=> b!6188895 m!7023108))

(declare-fun m!7023348 () Bool)

(assert (=> b!6188895 m!7023348))

(assert (=> b!6188891 m!7023104))

(assert (=> d!1940187 m!7023100))

(declare-fun m!7023350 () Bool)

(assert (=> d!1940187 m!7023350))

(declare-fun m!7023352 () Bool)

(assert (=> b!6188902 m!7023352))

(assert (=> b!6188897 m!7023108))

(assert (=> b!6188897 m!7023108))

(assert (=> b!6188897 m!7023348))

(assert (=> b!6188307 d!1940187))

(declare-fun d!1940197 () Bool)

(assert (=> d!1940197 (= (matchR!8310 lt!2340311 s!2326) (matchZipper!2139 lt!2340326 s!2326))))

(declare-fun lt!2340392 () Unit!157795)

(assert (=> d!1940197 (= lt!2340392 (choose!45966 lt!2340326 lt!2340284 lt!2340311 s!2326))))

(assert (=> d!1940197 (validRegex!7863 lt!2340311)))

(assert (=> d!1940197 (= (theoremZipperRegexEquiv!739 lt!2340326 lt!2340284 lt!2340311 s!2326) lt!2340392)))

(declare-fun bs!1535240 () Bool)

(assert (= bs!1535240 d!1940197))

(assert (=> bs!1535240 m!7022922))

(assert (=> bs!1535240 m!7022894))

(declare-fun m!7023354 () Bool)

(assert (=> bs!1535240 m!7023354))

(assert (=> bs!1535240 m!7023350))

(assert (=> b!6188307 d!1940197))

(declare-fun b!6188904 () Bool)

(declare-fun e!3769193 () Bool)

(declare-fun lt!2340393 () Bool)

(assert (=> b!6188904 (= e!3769193 (not lt!2340393))))

(declare-fun b!6188905 () Bool)

(declare-fun e!3769195 () Bool)

(assert (=> b!6188905 (= e!3769195 (= (head!12766 s!2326) (c!1116244 lt!2340297)))))

(declare-fun b!6188906 () Bool)

(declare-fun res!2560443 () Bool)

(assert (=> b!6188906 (=> (not res!2560443) (not e!3769195))))

(declare-fun call!517387 () Bool)

(assert (=> b!6188906 (= res!2560443 (not call!517387))))

(declare-fun b!6188907 () Bool)

(declare-fun res!2560449 () Bool)

(declare-fun e!3769196 () Bool)

(assert (=> b!6188907 (=> res!2560449 e!3769196)))

(assert (=> b!6188907 (= res!2560449 (not ((_ is ElementMatch!16127) lt!2340297)))))

(assert (=> b!6188907 (= e!3769193 e!3769196)))

(declare-fun d!1940199 () Bool)

(declare-fun e!3769191 () Bool)

(assert (=> d!1940199 e!3769191))

(declare-fun c!1116423 () Bool)

(assert (=> d!1940199 (= c!1116423 ((_ is EmptyExpr!16127) lt!2340297))))

(declare-fun e!3769197 () Bool)

(assert (=> d!1940199 (= lt!2340393 e!3769197)))

(declare-fun c!1116421 () Bool)

(assert (=> d!1940199 (= c!1116421 (isEmpty!36541 s!2326))))

(assert (=> d!1940199 (validRegex!7863 lt!2340297)))

(assert (=> d!1940199 (= (matchR!8310 lt!2340297 s!2326) lt!2340393)))

(declare-fun b!6188908 () Bool)

(declare-fun e!3769194 () Bool)

(assert (=> b!6188908 (= e!3769194 (not (= (head!12766 s!2326) (c!1116244 lt!2340297))))))

(declare-fun b!6188909 () Bool)

(declare-fun res!2560446 () Bool)

(assert (=> b!6188909 (=> res!2560446 e!3769194)))

(assert (=> b!6188909 (= res!2560446 (not (isEmpty!36541 (tail!11851 s!2326))))))

(declare-fun b!6188910 () Bool)

(declare-fun res!2560450 () Bool)

(assert (=> b!6188910 (=> res!2560450 e!3769196)))

(assert (=> b!6188910 (= res!2560450 e!3769195)))

(declare-fun res!2560445 () Bool)

(assert (=> b!6188910 (=> (not res!2560445) (not e!3769195))))

(assert (=> b!6188910 (= res!2560445 lt!2340393)))

(declare-fun b!6188911 () Bool)

(declare-fun res!2560444 () Bool)

(assert (=> b!6188911 (=> (not res!2560444) (not e!3769195))))

(assert (=> b!6188911 (= res!2560444 (isEmpty!36541 (tail!11851 s!2326)))))

(declare-fun b!6188912 () Bool)

(assert (=> b!6188912 (= e!3769197 (matchR!8310 (derivativeStep!4842 lt!2340297 (head!12766 s!2326)) (tail!11851 s!2326)))))

(declare-fun b!6188913 () Bool)

(assert (=> b!6188913 (= e!3769191 (= lt!2340393 call!517387))))

(declare-fun bm!517382 () Bool)

(assert (=> bm!517382 (= call!517387 (isEmpty!36541 s!2326))))

(declare-fun b!6188914 () Bool)

(assert (=> b!6188914 (= e!3769191 e!3769193)))

(declare-fun c!1116422 () Bool)

(assert (=> b!6188914 (= c!1116422 ((_ is EmptyLang!16127) lt!2340297))))

(declare-fun b!6188915 () Bool)

(declare-fun e!3769192 () Bool)

(assert (=> b!6188915 (= e!3769192 e!3769194)))

(declare-fun res!2560448 () Bool)

(assert (=> b!6188915 (=> res!2560448 e!3769194)))

(assert (=> b!6188915 (= res!2560448 call!517387)))

(declare-fun b!6188916 () Bool)

(assert (=> b!6188916 (= e!3769197 (nullable!6120 lt!2340297))))

(declare-fun b!6188917 () Bool)

(assert (=> b!6188917 (= e!3769196 e!3769192)))

(declare-fun res!2560447 () Bool)

(assert (=> b!6188917 (=> (not res!2560447) (not e!3769192))))

(assert (=> b!6188917 (= res!2560447 (not lt!2340393))))

(assert (= (and d!1940199 c!1116421) b!6188916))

(assert (= (and d!1940199 (not c!1116421)) b!6188912))

(assert (= (and d!1940199 c!1116423) b!6188913))

(assert (= (and d!1940199 (not c!1116423)) b!6188914))

(assert (= (and b!6188914 c!1116422) b!6188904))

(assert (= (and b!6188914 (not c!1116422)) b!6188907))

(assert (= (and b!6188907 (not res!2560449)) b!6188910))

(assert (= (and b!6188910 res!2560445) b!6188906))

(assert (= (and b!6188906 res!2560443) b!6188911))

(assert (= (and b!6188911 res!2560444) b!6188905))

(assert (= (and b!6188910 (not res!2560450)) b!6188917))

(assert (= (and b!6188917 res!2560447) b!6188915))

(assert (= (and b!6188915 (not res!2560448)) b!6188909))

(assert (= (and b!6188909 (not res!2560446)) b!6188908))

(assert (= (or b!6188913 b!6188906 b!6188915) bm!517382))

(assert (=> b!6188912 m!7023104))

(assert (=> b!6188912 m!7023104))

(declare-fun m!7023356 () Bool)

(assert (=> b!6188912 m!7023356))

(assert (=> b!6188912 m!7023108))

(assert (=> b!6188912 m!7023356))

(assert (=> b!6188912 m!7023108))

(declare-fun m!7023358 () Bool)

(assert (=> b!6188912 m!7023358))

(assert (=> b!6188908 m!7023104))

(assert (=> bm!517382 m!7023100))

(assert (=> b!6188909 m!7023108))

(assert (=> b!6188909 m!7023108))

(assert (=> b!6188909 m!7023348))

(assert (=> b!6188905 m!7023104))

(assert (=> d!1940199 m!7023100))

(assert (=> d!1940199 m!7022920))

(declare-fun m!7023360 () Bool)

(assert (=> b!6188916 m!7023360))

(assert (=> b!6188911 m!7023108))

(assert (=> b!6188911 m!7023108))

(assert (=> b!6188911 m!7023348))

(assert (=> b!6188307 d!1940199))

(declare-fun d!1940201 () Bool)

(assert (=> d!1940201 (= (matchR!8310 lt!2340311 s!2326) (matchRSpec!3228 lt!2340311 s!2326))))

(declare-fun lt!2340399 () Unit!157795)

(declare-fun choose!45968 (Regex!16127 List!64680) Unit!157795)

(assert (=> d!1940201 (= lt!2340399 (choose!45968 lt!2340311 s!2326))))

(assert (=> d!1940201 (validRegex!7863 lt!2340311)))

(assert (=> d!1940201 (= (mainMatchTheorem!3228 lt!2340311 s!2326) lt!2340399)))

(declare-fun bs!1535241 () Bool)

(assert (= bs!1535241 d!1940201))

(assert (=> bs!1535241 m!7022922))

(assert (=> bs!1535241 m!7022926))

(declare-fun m!7023362 () Bool)

(assert (=> bs!1535241 m!7023362))

(assert (=> bs!1535241 m!7023350))

(assert (=> b!6188307 d!1940201))

(declare-fun d!1940203 () Bool)

(declare-fun c!1116424 () Bool)

(assert (=> d!1940203 (= c!1116424 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769202 () Bool)

(assert (=> d!1940203 (= (matchZipper!2139 lt!2340306 (t!378190 s!2326)) e!3769202)))

(declare-fun b!6188926 () Bool)

(assert (=> b!6188926 (= e!3769202 (nullableZipper!1903 lt!2340306))))

(declare-fun b!6188927 () Bool)

(assert (=> b!6188927 (= e!3769202 (matchZipper!2139 (derivationStepZipper!2095 lt!2340306 (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940203 c!1116424) b!6188926))

(assert (= (and d!1940203 (not c!1116424)) b!6188927))

(declare-fun m!7023364 () Bool)

(assert (=> d!1940203 m!7023364))

(declare-fun m!7023366 () Bool)

(assert (=> b!6188926 m!7023366))

(declare-fun m!7023368 () Bool)

(assert (=> b!6188927 m!7023368))

(assert (=> b!6188927 m!7023368))

(declare-fun m!7023370 () Bool)

(assert (=> b!6188927 m!7023370))

(declare-fun m!7023372 () Bool)

(assert (=> b!6188927 m!7023372))

(assert (=> b!6188927 m!7023370))

(assert (=> b!6188927 m!7023372))

(declare-fun m!7023374 () Bool)

(assert (=> b!6188927 m!7023374))

(assert (=> b!6188327 d!1940203))

(declare-fun d!1940205 () Bool)

(assert (=> d!1940205 (= (isEmpty!36539 (t!378191 (exprs!6011 (h!71006 zl!343)))) ((_ is Nil!64557) (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(assert (=> b!6188328 d!1940205))

(declare-fun d!1940207 () Bool)

(declare-fun choose!45969 (Int) Bool)

(assert (=> d!1940207 (= (Exists!3197 lambda!337890) (choose!45969 lambda!337890))))

(declare-fun bs!1535249 () Bool)

(assert (= bs!1535249 d!1940207))

(declare-fun m!7023378 () Bool)

(assert (=> bs!1535249 m!7023378))

(assert (=> b!6188308 d!1940207))

(declare-fun d!1940209 () Bool)

(assert (=> d!1940209 (= (Exists!3197 lambda!337889) (choose!45969 lambda!337889))))

(declare-fun bs!1535250 () Bool)

(assert (= bs!1535250 d!1940209))

(declare-fun m!7023384 () Bool)

(assert (=> bs!1535250 m!7023384))

(assert (=> b!6188308 d!1940209))

(declare-fun b!6189017 () Bool)

(declare-fun res!2560475 () Bool)

(declare-fun e!3769250 () Bool)

(assert (=> b!6189017 (=> (not res!2560475) (not e!3769250))))

(declare-fun lt!2340411 () Option!16018)

(declare-fun get!22285 (Option!16018) tuple2!66212)

(assert (=> b!6189017 (= res!2560475 (matchR!8310 (regOne!32766 r!7292) (_1!36409 (get!22285 lt!2340411))))))

(declare-fun b!6189018 () Bool)

(declare-fun e!3769246 () Bool)

(assert (=> b!6189018 (= e!3769246 (not (isDefined!12721 lt!2340411)))))

(declare-fun b!6189019 () Bool)

(declare-fun lt!2340410 () Unit!157795)

(declare-fun lt!2340409 () Unit!157795)

(assert (=> b!6189019 (= lt!2340410 lt!2340409)))

(declare-fun ++!14206 (List!64680 List!64680) List!64680)

(assert (=> b!6189019 (= (++!14206 (++!14206 Nil!64556 (Cons!64556 (h!71004 s!2326) Nil!64556)) (t!378190 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2301 (List!64680 C!32524 List!64680 List!64680) Unit!157795)

(assert (=> b!6189019 (= lt!2340409 (lemmaMoveElementToOtherListKeepsConcatEq!2301 Nil!64556 (h!71004 s!2326) (t!378190 s!2326) s!2326))))

(declare-fun e!3769248 () Option!16018)

(assert (=> b!6189019 (= e!3769248 (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) (++!14206 Nil!64556 (Cons!64556 (h!71004 s!2326) Nil!64556)) (t!378190 s!2326) s!2326))))

(declare-fun b!6189020 () Bool)

(assert (=> b!6189020 (= e!3769248 None!16017)))

(declare-fun b!6189021 () Bool)

(declare-fun e!3769249 () Option!16018)

(assert (=> b!6189021 (= e!3769249 (Some!16017 (tuple2!66213 Nil!64556 s!2326)))))

(declare-fun b!6189022 () Bool)

(assert (=> b!6189022 (= e!3769249 e!3769248)))

(declare-fun c!1116436 () Bool)

(assert (=> b!6189022 (= c!1116436 ((_ is Nil!64556) s!2326))))

(declare-fun b!6189023 () Bool)

(declare-fun res!2560473 () Bool)

(assert (=> b!6189023 (=> (not res!2560473) (not e!3769250))))

(assert (=> b!6189023 (= res!2560473 (matchR!8310 (regTwo!32766 r!7292) (_2!36409 (get!22285 lt!2340411))))))

(declare-fun b!6189024 () Bool)

(declare-fun e!3769247 () Bool)

(assert (=> b!6189024 (= e!3769247 (matchR!8310 (regTwo!32766 r!7292) s!2326))))

(declare-fun d!1940213 () Bool)

(assert (=> d!1940213 e!3769246))

(declare-fun res!2560472 () Bool)

(assert (=> d!1940213 (=> res!2560472 e!3769246)))

(assert (=> d!1940213 (= res!2560472 e!3769250)))

(declare-fun res!2560474 () Bool)

(assert (=> d!1940213 (=> (not res!2560474) (not e!3769250))))

(assert (=> d!1940213 (= res!2560474 (isDefined!12721 lt!2340411))))

(assert (=> d!1940213 (= lt!2340411 e!3769249)))

(declare-fun c!1116437 () Bool)

(assert (=> d!1940213 (= c!1116437 e!3769247)))

(declare-fun res!2560476 () Bool)

(assert (=> d!1940213 (=> (not res!2560476) (not e!3769247))))

(assert (=> d!1940213 (= res!2560476 (matchR!8310 (regOne!32766 r!7292) Nil!64556))))

(assert (=> d!1940213 (validRegex!7863 (regOne!32766 r!7292))))

(assert (=> d!1940213 (= (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) Nil!64556 s!2326 s!2326) lt!2340411)))

(declare-fun b!6189025 () Bool)

(assert (=> b!6189025 (= e!3769250 (= (++!14206 (_1!36409 (get!22285 lt!2340411)) (_2!36409 (get!22285 lt!2340411))) s!2326))))

(assert (= (and d!1940213 res!2560476) b!6189024))

(assert (= (and d!1940213 c!1116437) b!6189021))

(assert (= (and d!1940213 (not c!1116437)) b!6189022))

(assert (= (and b!6189022 c!1116436) b!6189020))

(assert (= (and b!6189022 (not c!1116436)) b!6189019))

(assert (= (and d!1940213 res!2560474) b!6189017))

(assert (= (and b!6189017 res!2560475) b!6189023))

(assert (= (and b!6189023 res!2560473) b!6189025))

(assert (= (and d!1940213 (not res!2560472)) b!6189018))

(declare-fun m!7023432 () Bool)

(assert (=> b!6189023 m!7023432))

(declare-fun m!7023434 () Bool)

(assert (=> b!6189023 m!7023434))

(assert (=> b!6189025 m!7023432))

(declare-fun m!7023436 () Bool)

(assert (=> b!6189025 m!7023436))

(declare-fun m!7023438 () Bool)

(assert (=> d!1940213 m!7023438))

(declare-fun m!7023440 () Bool)

(assert (=> d!1940213 m!7023440))

(declare-fun m!7023442 () Bool)

(assert (=> d!1940213 m!7023442))

(declare-fun m!7023444 () Bool)

(assert (=> b!6189024 m!7023444))

(assert (=> b!6189018 m!7023438))

(assert (=> b!6189017 m!7023432))

(declare-fun m!7023446 () Bool)

(assert (=> b!6189017 m!7023446))

(declare-fun m!7023448 () Bool)

(assert (=> b!6189019 m!7023448))

(assert (=> b!6189019 m!7023448))

(declare-fun m!7023450 () Bool)

(assert (=> b!6189019 m!7023450))

(declare-fun m!7023452 () Bool)

(assert (=> b!6189019 m!7023452))

(assert (=> b!6189019 m!7023448))

(declare-fun m!7023454 () Bool)

(assert (=> b!6189019 m!7023454))

(assert (=> b!6188308 d!1940213))

(declare-fun bs!1535267 () Bool)

(declare-fun d!1940233 () Bool)

(assert (= bs!1535267 (and d!1940233 b!6188308)))

(declare-fun lambda!337936 () Int)

(assert (=> bs!1535267 (= lambda!337936 lambda!337889)))

(assert (=> bs!1535267 (not (= lambda!337936 lambda!337890))))

(declare-fun bs!1535268 () Bool)

(assert (= bs!1535268 (and d!1940233 b!6188822)))

(assert (=> bs!1535268 (not (= lambda!337936 lambda!337921))))

(declare-fun bs!1535269 () Bool)

(assert (= bs!1535269 (and d!1940233 b!6188824)))

(assert (=> bs!1535269 (not (= lambda!337936 lambda!337922))))

(assert (=> d!1940233 true))

(assert (=> d!1940233 true))

(assert (=> d!1940233 true))

(assert (=> d!1940233 (= (isDefined!12721 (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) Nil!64556 s!2326 s!2326)) (Exists!3197 lambda!337936))))

(declare-fun lt!2340414 () Unit!157795)

(declare-fun choose!45970 (Regex!16127 Regex!16127 List!64680) Unit!157795)

(assert (=> d!1940233 (= lt!2340414 (choose!45970 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326))))

(assert (=> d!1940233 (validRegex!7863 (regOne!32766 r!7292))))

(assert (=> d!1940233 (= (lemmaFindConcatSeparationEquivalentToExists!2196 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326) lt!2340414)))

(declare-fun bs!1535270 () Bool)

(assert (= bs!1535270 d!1940233))

(assert (=> bs!1535270 m!7022858))

(assert (=> bs!1535270 m!7022860))

(declare-fun m!7023456 () Bool)

(assert (=> bs!1535270 m!7023456))

(assert (=> bs!1535270 m!7022858))

(declare-fun m!7023458 () Bool)

(assert (=> bs!1535270 m!7023458))

(assert (=> bs!1535270 m!7023442))

(assert (=> b!6188308 d!1940233))

(declare-fun bs!1535271 () Bool)

(declare-fun d!1940235 () Bool)

(assert (= bs!1535271 (and d!1940235 b!6188824)))

(declare-fun lambda!337941 () Int)

(assert (=> bs!1535271 (not (= lambda!337941 lambda!337922))))

(declare-fun bs!1535272 () Bool)

(assert (= bs!1535272 (and d!1940235 b!6188308)))

(assert (=> bs!1535272 (not (= lambda!337941 lambda!337890))))

(declare-fun bs!1535273 () Bool)

(assert (= bs!1535273 (and d!1940235 b!6188822)))

(assert (=> bs!1535273 (not (= lambda!337941 lambda!337921))))

(declare-fun bs!1535274 () Bool)

(assert (= bs!1535274 (and d!1940235 d!1940233)))

(assert (=> bs!1535274 (= lambda!337941 lambda!337936)))

(assert (=> bs!1535272 (= lambda!337941 lambda!337889)))

(assert (=> d!1940235 true))

(assert (=> d!1940235 true))

(assert (=> d!1940235 true))

(declare-fun lambda!337942 () Int)

(assert (=> bs!1535271 (= (and (= (regOne!32766 r!7292) (regOne!32766 lt!2340311)) (= (regTwo!32766 r!7292) (regTwo!32766 lt!2340311))) (= lambda!337942 lambda!337922))))

(declare-fun bs!1535275 () Bool)

(assert (= bs!1535275 d!1940235))

(assert (=> bs!1535275 (not (= lambda!337942 lambda!337941))))

(assert (=> bs!1535272 (= lambda!337942 lambda!337890)))

(assert (=> bs!1535273 (not (= lambda!337942 lambda!337921))))

(assert (=> bs!1535274 (not (= lambda!337942 lambda!337936))))

(assert (=> bs!1535272 (not (= lambda!337942 lambda!337889))))

(assert (=> d!1940235 true))

(assert (=> d!1940235 true))

(assert (=> d!1940235 true))

(assert (=> d!1940235 (= (Exists!3197 lambda!337941) (Exists!3197 lambda!337942))))

(declare-fun lt!2340417 () Unit!157795)

(declare-fun choose!45971 (Regex!16127 Regex!16127 List!64680) Unit!157795)

(assert (=> d!1940235 (= lt!2340417 (choose!45971 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326))))

(assert (=> d!1940235 (validRegex!7863 (regOne!32766 r!7292))))

(assert (=> d!1940235 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1734 (regOne!32766 r!7292) (regTwo!32766 r!7292) s!2326) lt!2340417)))

(declare-fun m!7023460 () Bool)

(assert (=> bs!1535275 m!7023460))

(declare-fun m!7023462 () Bool)

(assert (=> bs!1535275 m!7023462))

(declare-fun m!7023464 () Bool)

(assert (=> bs!1535275 m!7023464))

(assert (=> bs!1535275 m!7023442))

(assert (=> b!6188308 d!1940235))

(declare-fun d!1940237 () Bool)

(declare-fun isEmpty!36542 (Option!16018) Bool)

(assert (=> d!1940237 (= (isDefined!12721 (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) Nil!64556 s!2326 s!2326)) (not (isEmpty!36542 (findConcatSeparation!2432 (regOne!32766 r!7292) (regTwo!32766 r!7292) Nil!64556 s!2326 s!2326))))))

(declare-fun bs!1535276 () Bool)

(assert (= bs!1535276 d!1940237))

(assert (=> bs!1535276 m!7022858))

(declare-fun m!7023466 () Bool)

(assert (=> bs!1535276 m!7023466))

(assert (=> b!6188308 d!1940237))

(declare-fun e!3769259 () Bool)

(declare-fun d!1940239 () Bool)

(assert (=> d!1940239 (= (matchZipper!2139 ((_ map or) lt!2340287 lt!2340306) (t!378190 s!2326)) e!3769259)))

(declare-fun res!2560491 () Bool)

(assert (=> d!1940239 (=> res!2560491 e!3769259)))

(assert (=> d!1940239 (= res!2560491 (matchZipper!2139 lt!2340287 (t!378190 s!2326)))))

(declare-fun lt!2340420 () Unit!157795)

(declare-fun choose!45972 ((InoxSet Context!11022) (InoxSet Context!11022) List!64680) Unit!157795)

(assert (=> d!1940239 (= lt!2340420 (choose!45972 lt!2340287 lt!2340306 (t!378190 s!2326)))))

(assert (=> d!1940239 (= (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340287 lt!2340306 (t!378190 s!2326)) lt!2340420)))

(declare-fun b!6189040 () Bool)

(assert (=> b!6189040 (= e!3769259 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(assert (= (and d!1940239 (not res!2560491)) b!6189040))

(assert (=> d!1940239 m!7022842))

(assert (=> d!1940239 m!7022840))

(declare-fun m!7023468 () Bool)

(assert (=> d!1940239 m!7023468))

(assert (=> b!6189040 m!7022836))

(assert (=> b!6188326 d!1940239))

(declare-fun d!1940241 () Bool)

(declare-fun c!1116438 () Bool)

(assert (=> d!1940241 (= c!1116438 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769260 () Bool)

(assert (=> d!1940241 (= (matchZipper!2139 lt!2340287 (t!378190 s!2326)) e!3769260)))

(declare-fun b!6189041 () Bool)

(assert (=> b!6189041 (= e!3769260 (nullableZipper!1903 lt!2340287))))

(declare-fun b!6189042 () Bool)

(assert (=> b!6189042 (= e!3769260 (matchZipper!2139 (derivationStepZipper!2095 lt!2340287 (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940241 c!1116438) b!6189041))

(assert (= (and d!1940241 (not c!1116438)) b!6189042))

(assert (=> d!1940241 m!7023364))

(declare-fun m!7023470 () Bool)

(assert (=> b!6189041 m!7023470))

(assert (=> b!6189042 m!7023368))

(assert (=> b!6189042 m!7023368))

(declare-fun m!7023472 () Bool)

(assert (=> b!6189042 m!7023472))

(assert (=> b!6189042 m!7023372))

(assert (=> b!6189042 m!7023472))

(assert (=> b!6189042 m!7023372))

(declare-fun m!7023474 () Bool)

(assert (=> b!6189042 m!7023474))

(assert (=> b!6188326 d!1940241))

(declare-fun d!1940243 () Bool)

(declare-fun c!1116439 () Bool)

(assert (=> d!1940243 (= c!1116439 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769261 () Bool)

(assert (=> d!1940243 (= (matchZipper!2139 ((_ map or) lt!2340287 lt!2340306) (t!378190 s!2326)) e!3769261)))

(declare-fun b!6189043 () Bool)

(assert (=> b!6189043 (= e!3769261 (nullableZipper!1903 ((_ map or) lt!2340287 lt!2340306)))))

(declare-fun b!6189044 () Bool)

(assert (=> b!6189044 (= e!3769261 (matchZipper!2139 (derivationStepZipper!2095 ((_ map or) lt!2340287 lt!2340306) (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940243 c!1116439) b!6189043))

(assert (= (and d!1940243 (not c!1116439)) b!6189044))

(assert (=> d!1940243 m!7023364))

(declare-fun m!7023476 () Bool)

(assert (=> b!6189043 m!7023476))

(assert (=> b!6189044 m!7023368))

(assert (=> b!6189044 m!7023368))

(declare-fun m!7023478 () Bool)

(assert (=> b!6189044 m!7023478))

(assert (=> b!6189044 m!7023372))

(assert (=> b!6189044 m!7023478))

(assert (=> b!6189044 m!7023372))

(declare-fun m!7023480 () Bool)

(assert (=> b!6189044 m!7023480))

(assert (=> b!6188326 d!1940243))

(declare-fun bm!517395 () Bool)

(declare-fun c!1116453 () Bool)

(declare-fun c!1116454 () Bool)

(declare-fun call!517402 () List!64681)

(declare-fun $colon$colon!1998 (List!64681 Regex!16127) List!64681)

(assert (=> bm!517395 (= call!517402 ($colon$colon!1998 (exprs!6011 lt!2340307) (ite (or c!1116453 c!1116454) (regTwo!32766 (regTwo!32767 (regOne!32766 r!7292))) (regTwo!32767 (regOne!32766 r!7292)))))))

(declare-fun bm!517396 () Bool)

(declare-fun call!517401 () (InoxSet Context!11022))

(declare-fun call!517400 () (InoxSet Context!11022))

(assert (=> bm!517396 (= call!517401 call!517400)))

(declare-fun bm!517397 () Bool)

(declare-fun call!517405 () (InoxSet Context!11022))

(assert (=> bm!517397 (= call!517400 call!517405)))

(declare-fun call!517403 () (InoxSet Context!11022))

(declare-fun bm!517398 () Bool)

(declare-fun c!1116452 () Bool)

(assert (=> bm!517398 (= call!517403 (derivationStepZipperDown!1375 (ite c!1116452 (regTwo!32767 (regTwo!32767 (regOne!32766 r!7292))) (regOne!32766 (regTwo!32767 (regOne!32766 r!7292)))) (ite c!1116452 lt!2340307 (Context!11023 call!517402)) (h!71004 s!2326)))))

(declare-fun b!6189067 () Bool)

(declare-fun e!3769278 () (InoxSet Context!11022))

(assert (=> b!6189067 (= e!3769278 call!517401)))

(declare-fun b!6189068 () Bool)

(declare-fun e!3769276 () (InoxSet Context!11022))

(assert (=> b!6189068 (= e!3769276 (store ((as const (Array Context!11022 Bool)) false) lt!2340307 true))))

(declare-fun d!1940245 () Bool)

(declare-fun c!1116450 () Bool)

(assert (=> d!1940245 (= c!1116450 (and ((_ is ElementMatch!16127) (regTwo!32767 (regOne!32766 r!7292))) (= (c!1116244 (regTwo!32767 (regOne!32766 r!7292))) (h!71004 s!2326))))))

(assert (=> d!1940245 (= (derivationStepZipperDown!1375 (regTwo!32767 (regOne!32766 r!7292)) lt!2340307 (h!71004 s!2326)) e!3769276)))

(declare-fun b!6189069 () Bool)

(declare-fun e!3769279 () Bool)

(assert (=> b!6189069 (= c!1116453 e!3769279)))

(declare-fun res!2560494 () Bool)

(assert (=> b!6189069 (=> (not res!2560494) (not e!3769279))))

(assert (=> b!6189069 (= res!2560494 ((_ is Concat!24972) (regTwo!32767 (regOne!32766 r!7292))))))

(declare-fun e!3769274 () (InoxSet Context!11022))

(declare-fun e!3769277 () (InoxSet Context!11022))

(assert (=> b!6189069 (= e!3769274 e!3769277)))

(declare-fun b!6189070 () Bool)

(assert (=> b!6189070 (= e!3769277 e!3769278)))

(assert (=> b!6189070 (= c!1116454 ((_ is Concat!24972) (regTwo!32767 (regOne!32766 r!7292))))))

(declare-fun b!6189071 () Bool)

(assert (=> b!6189071 (= e!3769277 ((_ map or) call!517403 call!517400))))

(declare-fun b!6189072 () Bool)

(assert (=> b!6189072 (= e!3769276 e!3769274)))

(assert (=> b!6189072 (= c!1116452 ((_ is Union!16127) (regTwo!32767 (regOne!32766 r!7292))))))

(declare-fun bm!517399 () Bool)

(declare-fun call!517404 () List!64681)

(assert (=> bm!517399 (= call!517404 call!517402)))

(declare-fun b!6189073 () Bool)

(declare-fun c!1116451 () Bool)

(assert (=> b!6189073 (= c!1116451 ((_ is Star!16127) (regTwo!32767 (regOne!32766 r!7292))))))

(declare-fun e!3769275 () (InoxSet Context!11022))

(assert (=> b!6189073 (= e!3769278 e!3769275)))

(declare-fun bm!517400 () Bool)

(assert (=> bm!517400 (= call!517405 (derivationStepZipperDown!1375 (ite c!1116452 (regOne!32767 (regTwo!32767 (regOne!32766 r!7292))) (ite c!1116453 (regTwo!32766 (regTwo!32767 (regOne!32766 r!7292))) (ite c!1116454 (regOne!32766 (regTwo!32767 (regOne!32766 r!7292))) (reg!16456 (regTwo!32767 (regOne!32766 r!7292)))))) (ite (or c!1116452 c!1116453) lt!2340307 (Context!11023 call!517404)) (h!71004 s!2326)))))

(declare-fun b!6189074 () Bool)

(assert (=> b!6189074 (= e!3769275 ((as const (Array Context!11022 Bool)) false))))

(declare-fun b!6189075 () Bool)

(assert (=> b!6189075 (= e!3769279 (nullable!6120 (regOne!32766 (regTwo!32767 (regOne!32766 r!7292)))))))

(declare-fun b!6189076 () Bool)

(assert (=> b!6189076 (= e!3769274 ((_ map or) call!517405 call!517403))))

(declare-fun b!6189077 () Bool)

(assert (=> b!6189077 (= e!3769275 call!517401)))

(assert (= (and d!1940245 c!1116450) b!6189068))

(assert (= (and d!1940245 (not c!1116450)) b!6189072))

(assert (= (and b!6189072 c!1116452) b!6189076))

(assert (= (and b!6189072 (not c!1116452)) b!6189069))

(assert (= (and b!6189069 res!2560494) b!6189075))

(assert (= (and b!6189069 c!1116453) b!6189071))

(assert (= (and b!6189069 (not c!1116453)) b!6189070))

(assert (= (and b!6189070 c!1116454) b!6189067))

(assert (= (and b!6189070 (not c!1116454)) b!6189073))

(assert (= (and b!6189073 c!1116451) b!6189077))

(assert (= (and b!6189073 (not c!1116451)) b!6189074))

(assert (= (or b!6189067 b!6189077) bm!517399))

(assert (= (or b!6189067 b!6189077) bm!517396))

(assert (= (or b!6189071 bm!517399) bm!517395))

(assert (= (or b!6189071 bm!517396) bm!517397))

(assert (= (or b!6189076 b!6189071) bm!517398))

(assert (= (or b!6189076 bm!517397) bm!517400))

(declare-fun m!7023482 () Bool)

(assert (=> bm!517398 m!7023482))

(declare-fun m!7023484 () Bool)

(assert (=> bm!517395 m!7023484))

(declare-fun m!7023486 () Bool)

(assert (=> b!6189075 m!7023486))

(declare-fun m!7023488 () Bool)

(assert (=> b!6189068 m!7023488))

(declare-fun m!7023490 () Bool)

(assert (=> bm!517400 m!7023490))

(assert (=> b!6188321 d!1940245))

(declare-fun c!1116458 () Bool)

(declare-fun c!1116459 () Bool)

(declare-fun bm!517401 () Bool)

(declare-fun call!517408 () List!64681)

(assert (=> bm!517401 (= call!517408 ($colon$colon!1998 (exprs!6011 lt!2340307) (ite (or c!1116458 c!1116459) (regTwo!32766 (regOne!32767 (regOne!32766 r!7292))) (regOne!32767 (regOne!32766 r!7292)))))))

(declare-fun bm!517402 () Bool)

(declare-fun call!517407 () (InoxSet Context!11022))

(declare-fun call!517406 () (InoxSet Context!11022))

(assert (=> bm!517402 (= call!517407 call!517406)))

(declare-fun bm!517403 () Bool)

(declare-fun call!517411 () (InoxSet Context!11022))

(assert (=> bm!517403 (= call!517406 call!517411)))

(declare-fun call!517409 () (InoxSet Context!11022))

(declare-fun bm!517404 () Bool)

(declare-fun c!1116457 () Bool)

(assert (=> bm!517404 (= call!517409 (derivationStepZipperDown!1375 (ite c!1116457 (regTwo!32767 (regOne!32767 (regOne!32766 r!7292))) (regOne!32766 (regOne!32767 (regOne!32766 r!7292)))) (ite c!1116457 lt!2340307 (Context!11023 call!517408)) (h!71004 s!2326)))))

(declare-fun b!6189078 () Bool)

(declare-fun e!3769284 () (InoxSet Context!11022))

(assert (=> b!6189078 (= e!3769284 call!517407)))

(declare-fun b!6189079 () Bool)

(declare-fun e!3769282 () (InoxSet Context!11022))

(assert (=> b!6189079 (= e!3769282 (store ((as const (Array Context!11022 Bool)) false) lt!2340307 true))))

(declare-fun d!1940247 () Bool)

(declare-fun c!1116455 () Bool)

(assert (=> d!1940247 (= c!1116455 (and ((_ is ElementMatch!16127) (regOne!32767 (regOne!32766 r!7292))) (= (c!1116244 (regOne!32767 (regOne!32766 r!7292))) (h!71004 s!2326))))))

(assert (=> d!1940247 (= (derivationStepZipperDown!1375 (regOne!32767 (regOne!32766 r!7292)) lt!2340307 (h!71004 s!2326)) e!3769282)))

(declare-fun b!6189080 () Bool)

(declare-fun e!3769285 () Bool)

(assert (=> b!6189080 (= c!1116458 e!3769285)))

(declare-fun res!2560495 () Bool)

(assert (=> b!6189080 (=> (not res!2560495) (not e!3769285))))

(assert (=> b!6189080 (= res!2560495 ((_ is Concat!24972) (regOne!32767 (regOne!32766 r!7292))))))

(declare-fun e!3769280 () (InoxSet Context!11022))

(declare-fun e!3769283 () (InoxSet Context!11022))

(assert (=> b!6189080 (= e!3769280 e!3769283)))

(declare-fun b!6189081 () Bool)

(assert (=> b!6189081 (= e!3769283 e!3769284)))

(assert (=> b!6189081 (= c!1116459 ((_ is Concat!24972) (regOne!32767 (regOne!32766 r!7292))))))

(declare-fun b!6189082 () Bool)

(assert (=> b!6189082 (= e!3769283 ((_ map or) call!517409 call!517406))))

(declare-fun b!6189083 () Bool)

(assert (=> b!6189083 (= e!3769282 e!3769280)))

(assert (=> b!6189083 (= c!1116457 ((_ is Union!16127) (regOne!32767 (regOne!32766 r!7292))))))

(declare-fun bm!517405 () Bool)

(declare-fun call!517410 () List!64681)

(assert (=> bm!517405 (= call!517410 call!517408)))

(declare-fun b!6189084 () Bool)

(declare-fun c!1116456 () Bool)

(assert (=> b!6189084 (= c!1116456 ((_ is Star!16127) (regOne!32767 (regOne!32766 r!7292))))))

(declare-fun e!3769281 () (InoxSet Context!11022))

(assert (=> b!6189084 (= e!3769284 e!3769281)))

(declare-fun bm!517406 () Bool)

(assert (=> bm!517406 (= call!517411 (derivationStepZipperDown!1375 (ite c!1116457 (regOne!32767 (regOne!32767 (regOne!32766 r!7292))) (ite c!1116458 (regTwo!32766 (regOne!32767 (regOne!32766 r!7292))) (ite c!1116459 (regOne!32766 (regOne!32767 (regOne!32766 r!7292))) (reg!16456 (regOne!32767 (regOne!32766 r!7292)))))) (ite (or c!1116457 c!1116458) lt!2340307 (Context!11023 call!517410)) (h!71004 s!2326)))))

(declare-fun b!6189085 () Bool)

(assert (=> b!6189085 (= e!3769281 ((as const (Array Context!11022 Bool)) false))))

(declare-fun b!6189086 () Bool)

(assert (=> b!6189086 (= e!3769285 (nullable!6120 (regOne!32766 (regOne!32767 (regOne!32766 r!7292)))))))

(declare-fun b!6189087 () Bool)

(assert (=> b!6189087 (= e!3769280 ((_ map or) call!517411 call!517409))))

(declare-fun b!6189088 () Bool)

(assert (=> b!6189088 (= e!3769281 call!517407)))

(assert (= (and d!1940247 c!1116455) b!6189079))

(assert (= (and d!1940247 (not c!1116455)) b!6189083))

(assert (= (and b!6189083 c!1116457) b!6189087))

(assert (= (and b!6189083 (not c!1116457)) b!6189080))

(assert (= (and b!6189080 res!2560495) b!6189086))

(assert (= (and b!6189080 c!1116458) b!6189082))

(assert (= (and b!6189080 (not c!1116458)) b!6189081))

(assert (= (and b!6189081 c!1116459) b!6189078))

(assert (= (and b!6189081 (not c!1116459)) b!6189084))

(assert (= (and b!6189084 c!1116456) b!6189088))

(assert (= (and b!6189084 (not c!1116456)) b!6189085))

(assert (= (or b!6189078 b!6189088) bm!517405))

(assert (= (or b!6189078 b!6189088) bm!517402))

(assert (= (or b!6189082 bm!517405) bm!517401))

(assert (= (or b!6189082 bm!517402) bm!517403))

(assert (= (or b!6189087 b!6189082) bm!517404))

(assert (= (or b!6189087 bm!517403) bm!517406))

(declare-fun m!7023492 () Bool)

(assert (=> bm!517404 m!7023492))

(declare-fun m!7023494 () Bool)

(assert (=> bm!517401 m!7023494))

(declare-fun m!7023496 () Bool)

(assert (=> b!6189086 m!7023496))

(assert (=> b!6189079 m!7023488))

(declare-fun m!7023498 () Bool)

(assert (=> bm!517406 m!7023498))

(assert (=> b!6188321 d!1940247))

(assert (=> b!6188343 d!1940241))

(declare-fun d!1940249 () Bool)

(declare-fun nullableFct!2078 (Regex!16127) Bool)

(assert (=> d!1940249 (= (nullable!6120 (regTwo!32767 (regOne!32766 r!7292))) (nullableFct!2078 (regTwo!32767 (regOne!32766 r!7292))))))

(declare-fun bs!1535277 () Bool)

(assert (= bs!1535277 d!1940249))

(declare-fun m!7023500 () Bool)

(assert (=> bs!1535277 m!7023500))

(assert (=> b!6188340 d!1940249))

(declare-fun d!1940251 () Bool)

(declare-fun dynLambda!25457 (Int Context!11022) (InoxSet Context!11022))

(assert (=> d!1940251 (= (flatMap!1632 lt!2340326 lambda!337891) (dynLambda!25457 lambda!337891 lt!2340316))))

(declare-fun lt!2340423 () Unit!157795)

(declare-fun choose!45974 ((InoxSet Context!11022) Context!11022 Int) Unit!157795)

(assert (=> d!1940251 (= lt!2340423 (choose!45974 lt!2340326 lt!2340316 lambda!337891))))

(assert (=> d!1940251 (= lt!2340326 (store ((as const (Array Context!11022 Bool)) false) lt!2340316 true))))

(assert (=> d!1940251 (= (lemmaFlatMapOnSingletonSet!1158 lt!2340326 lt!2340316 lambda!337891) lt!2340423)))

(declare-fun b_lambda!235481 () Bool)

(assert (=> (not b_lambda!235481) (not d!1940251)))

(declare-fun bs!1535278 () Bool)

(assert (= bs!1535278 d!1940251))

(assert (=> bs!1535278 m!7022902))

(declare-fun m!7023502 () Bool)

(assert (=> bs!1535278 m!7023502))

(declare-fun m!7023504 () Bool)

(assert (=> bs!1535278 m!7023504))

(assert (=> bs!1535278 m!7022890))

(assert (=> b!6188340 d!1940251))

(declare-fun b!6189099 () Bool)

(declare-fun e!3769293 () (InoxSet Context!11022))

(declare-fun e!3769294 () (InoxSet Context!11022))

(assert (=> b!6189099 (= e!3769293 e!3769294)))

(declare-fun c!1116465 () Bool)

(assert (=> b!6189099 (= c!1116465 ((_ is Cons!64557) (exprs!6011 lt!2340316)))))

(declare-fun bm!517409 () Bool)

(declare-fun call!517414 () (InoxSet Context!11022))

(assert (=> bm!517409 (= call!517414 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 lt!2340316)) (Context!11023 (t!378191 (exprs!6011 lt!2340316))) (h!71004 s!2326)))))

(declare-fun b!6189100 () Bool)

(assert (=> b!6189100 (= e!3769294 call!517414)))

(declare-fun b!6189101 () Bool)

(assert (=> b!6189101 (= e!3769293 ((_ map or) call!517414 (derivationStepZipperUp!1301 (Context!11023 (t!378191 (exprs!6011 lt!2340316))) (h!71004 s!2326))))))

(declare-fun b!6189102 () Bool)

(assert (=> b!6189102 (= e!3769294 ((as const (Array Context!11022 Bool)) false))))

(declare-fun d!1940253 () Bool)

(declare-fun c!1116464 () Bool)

(declare-fun e!3769292 () Bool)

(assert (=> d!1940253 (= c!1116464 e!3769292)))

(declare-fun res!2560498 () Bool)

(assert (=> d!1940253 (=> (not res!2560498) (not e!3769292))))

(assert (=> d!1940253 (= res!2560498 ((_ is Cons!64557) (exprs!6011 lt!2340316)))))

(assert (=> d!1940253 (= (derivationStepZipperUp!1301 lt!2340316 (h!71004 s!2326)) e!3769293)))

(declare-fun b!6189103 () Bool)

(assert (=> b!6189103 (= e!3769292 (nullable!6120 (h!71005 (exprs!6011 lt!2340316))))))

(assert (= (and d!1940253 res!2560498) b!6189103))

(assert (= (and d!1940253 c!1116464) b!6189101))

(assert (= (and d!1940253 (not c!1116464)) b!6189099))

(assert (= (and b!6189099 c!1116465) b!6189100))

(assert (= (and b!6189099 (not c!1116465)) b!6189102))

(assert (= (or b!6189101 b!6189100) bm!517409))

(declare-fun m!7023506 () Bool)

(assert (=> bm!517409 m!7023506))

(declare-fun m!7023508 () Bool)

(assert (=> b!6189101 m!7023508))

(declare-fun m!7023510 () Bool)

(assert (=> b!6189103 m!7023510))

(assert (=> b!6188340 d!1940253))

(declare-fun d!1940255 () Bool)

(declare-fun c!1116466 () Bool)

(assert (=> d!1940255 (= c!1116466 (isEmpty!36541 s!2326))))

(declare-fun e!3769295 () Bool)

(assert (=> d!1940255 (= (matchZipper!2139 z!1189 s!2326) e!3769295)))

(declare-fun b!6189104 () Bool)

(assert (=> b!6189104 (= e!3769295 (nullableZipper!1903 z!1189))))

(declare-fun b!6189105 () Bool)

(assert (=> b!6189105 (= e!3769295 (matchZipper!2139 (derivationStepZipper!2095 z!1189 (head!12766 s!2326)) (tail!11851 s!2326)))))

(assert (= (and d!1940255 c!1116466) b!6189104))

(assert (= (and d!1940255 (not c!1116466)) b!6189105))

(assert (=> d!1940255 m!7023100))

(declare-fun m!7023512 () Bool)

(assert (=> b!6189104 m!7023512))

(assert (=> b!6189105 m!7023104))

(assert (=> b!6189105 m!7023104))

(declare-fun m!7023514 () Bool)

(assert (=> b!6189105 m!7023514))

(assert (=> b!6189105 m!7023108))

(assert (=> b!6189105 m!7023514))

(assert (=> b!6189105 m!7023108))

(declare-fun m!7023516 () Bool)

(assert (=> b!6189105 m!7023516))

(assert (=> b!6188340 d!1940255))

(declare-fun d!1940257 () Bool)

(declare-fun choose!45975 ((InoxSet Context!11022) Int) (InoxSet Context!11022))

(assert (=> d!1940257 (= (flatMap!1632 lt!2340292 lambda!337891) (choose!45975 lt!2340292 lambda!337891))))

(declare-fun bs!1535279 () Bool)

(assert (= bs!1535279 d!1940257))

(declare-fun m!7023518 () Bool)

(assert (=> bs!1535279 m!7023518))

(assert (=> b!6188340 d!1940257))

(declare-fun d!1940259 () Bool)

(declare-fun c!1116467 () Bool)

(assert (=> d!1940259 (= c!1116467 (isEmpty!36541 s!2326))))

(declare-fun e!3769296 () Bool)

(assert (=> d!1940259 (= (matchZipper!2139 lt!2340326 s!2326) e!3769296)))

(declare-fun b!6189106 () Bool)

(assert (=> b!6189106 (= e!3769296 (nullableZipper!1903 lt!2340326))))

(declare-fun b!6189107 () Bool)

(assert (=> b!6189107 (= e!3769296 (matchZipper!2139 (derivationStepZipper!2095 lt!2340326 (head!12766 s!2326)) (tail!11851 s!2326)))))

(assert (= (and d!1940259 c!1116467) b!6189106))

(assert (= (and d!1940259 (not c!1116467)) b!6189107))

(assert (=> d!1940259 m!7023100))

(declare-fun m!7023520 () Bool)

(assert (=> b!6189106 m!7023520))

(assert (=> b!6189107 m!7023104))

(assert (=> b!6189107 m!7023104))

(declare-fun m!7023522 () Bool)

(assert (=> b!6189107 m!7023522))

(assert (=> b!6189107 m!7023108))

(assert (=> b!6189107 m!7023522))

(assert (=> b!6189107 m!7023108))

(declare-fun m!7023524 () Bool)

(assert (=> b!6189107 m!7023524))

(assert (=> b!6188340 d!1940259))

(declare-fun d!1940261 () Bool)

(assert (=> d!1940261 (= (flatMap!1632 lt!2340326 lambda!337891) (choose!45975 lt!2340326 lambda!337891))))

(declare-fun bs!1535280 () Bool)

(assert (= bs!1535280 d!1940261))

(declare-fun m!7023526 () Bool)

(assert (=> bs!1535280 m!7023526))

(assert (=> b!6188340 d!1940261))

(declare-fun b!6189108 () Bool)

(declare-fun e!3769298 () (InoxSet Context!11022))

(declare-fun e!3769299 () (InoxSet Context!11022))

(assert (=> b!6189108 (= e!3769298 e!3769299)))

(declare-fun c!1116469 () Bool)

(assert (=> b!6189108 (= c!1116469 ((_ is Cons!64557) (exprs!6011 lt!2340285)))))

(declare-fun bm!517410 () Bool)

(declare-fun call!517415 () (InoxSet Context!11022))

(assert (=> bm!517410 (= call!517415 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 lt!2340285)) (Context!11023 (t!378191 (exprs!6011 lt!2340285))) (h!71004 s!2326)))))

(declare-fun b!6189109 () Bool)

(assert (=> b!6189109 (= e!3769299 call!517415)))

(declare-fun b!6189110 () Bool)

(assert (=> b!6189110 (= e!3769298 ((_ map or) call!517415 (derivationStepZipperUp!1301 (Context!11023 (t!378191 (exprs!6011 lt!2340285))) (h!71004 s!2326))))))

(declare-fun b!6189111 () Bool)

(assert (=> b!6189111 (= e!3769299 ((as const (Array Context!11022 Bool)) false))))

(declare-fun d!1940263 () Bool)

(declare-fun c!1116468 () Bool)

(declare-fun e!3769297 () Bool)

(assert (=> d!1940263 (= c!1116468 e!3769297)))

(declare-fun res!2560499 () Bool)

(assert (=> d!1940263 (=> (not res!2560499) (not e!3769297))))

(assert (=> d!1940263 (= res!2560499 ((_ is Cons!64557) (exprs!6011 lt!2340285)))))

(assert (=> d!1940263 (= (derivationStepZipperUp!1301 lt!2340285 (h!71004 s!2326)) e!3769298)))

(declare-fun b!6189112 () Bool)

(assert (=> b!6189112 (= e!3769297 (nullable!6120 (h!71005 (exprs!6011 lt!2340285))))))

(assert (= (and d!1940263 res!2560499) b!6189112))

(assert (= (and d!1940263 c!1116468) b!6189110))

(assert (= (and d!1940263 (not c!1116468)) b!6189108))

(assert (= (and b!6189108 c!1116469) b!6189109))

(assert (= (and b!6189108 (not c!1116469)) b!6189111))

(assert (= (or b!6189110 b!6189109) bm!517410))

(declare-fun m!7023528 () Bool)

(assert (=> bm!517410 m!7023528))

(declare-fun m!7023530 () Bool)

(assert (=> b!6189110 m!7023530))

(declare-fun m!7023532 () Bool)

(assert (=> b!6189112 m!7023532))

(assert (=> b!6188340 d!1940263))

(declare-fun d!1940265 () Bool)

(assert (=> d!1940265 (= (nullable!6120 (regOne!32767 (regOne!32766 r!7292))) (nullableFct!2078 (regOne!32767 (regOne!32766 r!7292))))))

(declare-fun bs!1535281 () Bool)

(assert (= bs!1535281 d!1940265))

(declare-fun m!7023534 () Bool)

(assert (=> bs!1535281 m!7023534))

(assert (=> b!6188340 d!1940265))

(declare-fun d!1940267 () Bool)

(assert (=> d!1940267 (= (flatMap!1632 lt!2340292 lambda!337891) (dynLambda!25457 lambda!337891 lt!2340285))))

(declare-fun lt!2340424 () Unit!157795)

(assert (=> d!1940267 (= lt!2340424 (choose!45974 lt!2340292 lt!2340285 lambda!337891))))

(assert (=> d!1940267 (= lt!2340292 (store ((as const (Array Context!11022 Bool)) false) lt!2340285 true))))

(assert (=> d!1940267 (= (lemmaFlatMapOnSingletonSet!1158 lt!2340292 lt!2340285 lambda!337891) lt!2340424)))

(declare-fun b_lambda!235483 () Bool)

(assert (=> (not b_lambda!235483) (not d!1940267)))

(declare-fun bs!1535282 () Bool)

(assert (= bs!1535282 d!1940267))

(assert (=> bs!1535282 m!7022904))

(declare-fun m!7023536 () Bool)

(assert (=> bs!1535282 m!7023536))

(declare-fun m!7023538 () Bool)

(assert (=> bs!1535282 m!7023538))

(assert (=> bs!1535282 m!7022900))

(assert (=> b!6188340 d!1940267))

(assert (=> b!6188320 d!1940123))

(declare-fun bs!1535283 () Bool)

(declare-fun d!1940269 () Bool)

(assert (= bs!1535283 (and d!1940269 d!1940097)))

(declare-fun lambda!337943 () Int)

(assert (=> bs!1535283 (= lambda!337943 lambda!337899)))

(declare-fun bs!1535284 () Bool)

(assert (= bs!1535284 (and d!1940269 d!1940137)))

(assert (=> bs!1535284 (= lambda!337943 lambda!337905)))

(declare-fun b!6189113 () Bool)

(declare-fun e!3769303 () Regex!16127)

(assert (=> b!6189113 (= e!3769303 (h!71005 (exprs!6011 (h!71006 zl!343))))))

(declare-fun b!6189114 () Bool)

(declare-fun e!3769304 () Regex!16127)

(assert (=> b!6189114 (= e!3769304 (Concat!24972 (h!71005 (exprs!6011 (h!71006 zl!343))) (generalisedConcat!1724 (t!378191 (exprs!6011 (h!71006 zl!343))))))))

(declare-fun b!6189116 () Bool)

(assert (=> b!6189116 (= e!3769303 e!3769304)))

(declare-fun c!1116471 () Bool)

(assert (=> b!6189116 (= c!1116471 ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343))))))

(declare-fun b!6189117 () Bool)

(declare-fun e!3769301 () Bool)

(declare-fun e!3769300 () Bool)

(assert (=> b!6189117 (= e!3769301 e!3769300)))

(declare-fun c!1116470 () Bool)

(assert (=> b!6189117 (= c!1116470 (isEmpty!36539 (tail!11850 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6189118 () Bool)

(declare-fun lt!2340425 () Regex!16127)

(assert (=> b!6189118 (= e!3769300 (= lt!2340425 (head!12765 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6189119 () Bool)

(assert (=> b!6189119 (= e!3769304 EmptyExpr!16127)))

(declare-fun b!6189120 () Bool)

(declare-fun e!3769302 () Bool)

(assert (=> b!6189120 (= e!3769302 e!3769301)))

(declare-fun c!1116472 () Bool)

(assert (=> b!6189120 (= c!1116472 (isEmpty!36539 (exprs!6011 (h!71006 zl!343))))))

(declare-fun b!6189121 () Bool)

(assert (=> b!6189121 (= e!3769300 (isConcat!1061 lt!2340425))))

(declare-fun b!6189122 () Bool)

(assert (=> b!6189122 (= e!3769301 (isEmptyExpr!1538 lt!2340425))))

(assert (=> d!1940269 e!3769302))

(declare-fun res!2560500 () Bool)

(assert (=> d!1940269 (=> (not res!2560500) (not e!3769302))))

(assert (=> d!1940269 (= res!2560500 (validRegex!7863 lt!2340425))))

(assert (=> d!1940269 (= lt!2340425 e!3769303)))

(declare-fun c!1116473 () Bool)

(declare-fun e!3769305 () Bool)

(assert (=> d!1940269 (= c!1116473 e!3769305)))

(declare-fun res!2560501 () Bool)

(assert (=> d!1940269 (=> (not res!2560501) (not e!3769305))))

(assert (=> d!1940269 (= res!2560501 ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343))))))

(assert (=> d!1940269 (forall!15243 (exprs!6011 (h!71006 zl!343)) lambda!337943)))

(assert (=> d!1940269 (= (generalisedConcat!1724 (exprs!6011 (h!71006 zl!343))) lt!2340425)))

(declare-fun b!6189115 () Bool)

(assert (=> b!6189115 (= e!3769305 (isEmpty!36539 (t!378191 (exprs!6011 (h!71006 zl!343)))))))

(assert (= (and d!1940269 res!2560501) b!6189115))

(assert (= (and d!1940269 c!1116473) b!6189113))

(assert (= (and d!1940269 (not c!1116473)) b!6189116))

(assert (= (and b!6189116 c!1116471) b!6189114))

(assert (= (and b!6189116 (not c!1116471)) b!6189119))

(assert (= (and d!1940269 res!2560500) b!6189120))

(assert (= (and b!6189120 c!1116472) b!6189122))

(assert (= (and b!6189120 (not c!1116472)) b!6189117))

(assert (= (and b!6189117 c!1116470) b!6189118))

(assert (= (and b!6189117 (not c!1116470)) b!6189121))

(declare-fun m!7023540 () Bool)

(assert (=> b!6189114 m!7023540))

(assert (=> b!6189115 m!7022886))

(declare-fun m!7023542 () Bool)

(assert (=> b!6189121 m!7023542))

(declare-fun m!7023544 () Bool)

(assert (=> b!6189118 m!7023544))

(declare-fun m!7023546 () Bool)

(assert (=> b!6189120 m!7023546))

(declare-fun m!7023548 () Bool)

(assert (=> b!6189122 m!7023548))

(declare-fun m!7023550 () Bool)

(assert (=> b!6189117 m!7023550))

(assert (=> b!6189117 m!7023550))

(declare-fun m!7023552 () Bool)

(assert (=> b!6189117 m!7023552))

(declare-fun m!7023554 () Bool)

(assert (=> d!1940269 m!7023554))

(declare-fun m!7023556 () Bool)

(assert (=> d!1940269 m!7023556))

(assert (=> b!6188342 d!1940269))

(assert (=> b!6188316 d!1940203))

(declare-fun bs!1535285 () Bool)

(declare-fun b!6189125 () Bool)

(assert (= bs!1535285 (and b!6189125 b!6188824)))

(declare-fun lambda!337944 () Int)

(assert (=> bs!1535285 (not (= lambda!337944 lambda!337922))))

(declare-fun bs!1535286 () Bool)

(assert (= bs!1535286 (and b!6189125 d!1940235)))

(assert (=> bs!1535286 (not (= lambda!337944 lambda!337941))))

(assert (=> bs!1535286 (not (= lambda!337944 lambda!337942))))

(declare-fun bs!1535287 () Bool)

(assert (= bs!1535287 (and b!6189125 b!6188308)))

(assert (=> bs!1535287 (not (= lambda!337944 lambda!337890))))

(declare-fun bs!1535288 () Bool)

(assert (= bs!1535288 (and b!6189125 b!6188822)))

(assert (=> bs!1535288 (= (and (= (reg!16456 r!7292) (reg!16456 lt!2340311)) (= r!7292 lt!2340311)) (= lambda!337944 lambda!337921))))

(declare-fun bs!1535289 () Bool)

(assert (= bs!1535289 (and b!6189125 d!1940233)))

(assert (=> bs!1535289 (not (= lambda!337944 lambda!337936))))

(assert (=> bs!1535287 (not (= lambda!337944 lambda!337889))))

(assert (=> b!6189125 true))

(assert (=> b!6189125 true))

(declare-fun bs!1535290 () Bool)

(declare-fun b!6189127 () Bool)

(assert (= bs!1535290 (and b!6189127 d!1940235)))

(declare-fun lambda!337945 () Int)

(assert (=> bs!1535290 (not (= lambda!337945 lambda!337941))))

(assert (=> bs!1535290 (= lambda!337945 lambda!337942)))

(declare-fun bs!1535291 () Bool)

(assert (= bs!1535291 (and b!6189127 b!6188308)))

(assert (=> bs!1535291 (= lambda!337945 lambda!337890)))

(declare-fun bs!1535292 () Bool)

(assert (= bs!1535292 (and b!6189127 b!6188822)))

(assert (=> bs!1535292 (not (= lambda!337945 lambda!337921))))

(declare-fun bs!1535293 () Bool)

(assert (= bs!1535293 (and b!6189127 b!6188824)))

(assert (=> bs!1535293 (= (and (= (regOne!32766 r!7292) (regOne!32766 lt!2340311)) (= (regTwo!32766 r!7292) (regTwo!32766 lt!2340311))) (= lambda!337945 lambda!337922))))

(declare-fun bs!1535294 () Bool)

(assert (= bs!1535294 (and b!6189127 b!6189125)))

(assert (=> bs!1535294 (not (= lambda!337945 lambda!337944))))

(declare-fun bs!1535295 () Bool)

(assert (= bs!1535295 (and b!6189127 d!1940233)))

(assert (=> bs!1535295 (not (= lambda!337945 lambda!337936))))

(assert (=> bs!1535291 (not (= lambda!337945 lambda!337889))))

(assert (=> b!6189127 true))

(assert (=> b!6189127 true))

(declare-fun bm!517411 () Bool)

(declare-fun call!517416 () Bool)

(assert (=> bm!517411 (= call!517416 (isEmpty!36541 s!2326))))

(declare-fun b!6189123 () Bool)

(declare-fun e!3769308 () Bool)

(declare-fun e!3769312 () Bool)

(assert (=> b!6189123 (= e!3769308 e!3769312)))

(declare-fun res!2560502 () Bool)

(assert (=> b!6189123 (= res!2560502 (not ((_ is EmptyLang!16127) r!7292)))))

(assert (=> b!6189123 (=> (not res!2560502) (not e!3769312))))

(declare-fun b!6189124 () Bool)

(declare-fun e!3769306 () Bool)

(declare-fun e!3769309 () Bool)

(assert (=> b!6189124 (= e!3769306 e!3769309)))

(declare-fun res!2560504 () Bool)

(assert (=> b!6189124 (= res!2560504 (matchRSpec!3228 (regOne!32767 r!7292) s!2326))))

(assert (=> b!6189124 (=> res!2560504 e!3769309)))

(declare-fun e!3769310 () Bool)

(declare-fun call!517417 () Bool)

(assert (=> b!6189125 (= e!3769310 call!517417)))

(declare-fun b!6189126 () Bool)

(declare-fun c!1116474 () Bool)

(assert (=> b!6189126 (= c!1116474 ((_ is ElementMatch!16127) r!7292))))

(declare-fun e!3769311 () Bool)

(assert (=> b!6189126 (= e!3769312 e!3769311)))

(declare-fun d!1940271 () Bool)

(declare-fun c!1116476 () Bool)

(assert (=> d!1940271 (= c!1116476 ((_ is EmptyExpr!16127) r!7292))))

(assert (=> d!1940271 (= (matchRSpec!3228 r!7292 s!2326) e!3769308)))

(declare-fun e!3769307 () Bool)

(assert (=> b!6189127 (= e!3769307 call!517417)))

(declare-fun b!6189128 () Bool)

(assert (=> b!6189128 (= e!3769308 call!517416)))

(declare-fun b!6189129 () Bool)

(assert (=> b!6189129 (= e!3769311 (= s!2326 (Cons!64556 (c!1116244 r!7292) Nil!64556)))))

(declare-fun bm!517412 () Bool)

(declare-fun c!1116477 () Bool)

(assert (=> bm!517412 (= call!517417 (Exists!3197 (ite c!1116477 lambda!337944 lambda!337945)))))

(declare-fun b!6189130 () Bool)

(declare-fun res!2560503 () Bool)

(assert (=> b!6189130 (=> res!2560503 e!3769310)))

(assert (=> b!6189130 (= res!2560503 call!517416)))

(assert (=> b!6189130 (= e!3769307 e!3769310)))

(declare-fun b!6189131 () Bool)

(declare-fun c!1116475 () Bool)

(assert (=> b!6189131 (= c!1116475 ((_ is Union!16127) r!7292))))

(assert (=> b!6189131 (= e!3769311 e!3769306)))

(declare-fun b!6189132 () Bool)

(assert (=> b!6189132 (= e!3769306 e!3769307)))

(assert (=> b!6189132 (= c!1116477 ((_ is Star!16127) r!7292))))

(declare-fun b!6189133 () Bool)

(assert (=> b!6189133 (= e!3769309 (matchRSpec!3228 (regTwo!32767 r!7292) s!2326))))

(assert (= (and d!1940271 c!1116476) b!6189128))

(assert (= (and d!1940271 (not c!1116476)) b!6189123))

(assert (= (and b!6189123 res!2560502) b!6189126))

(assert (= (and b!6189126 c!1116474) b!6189129))

(assert (= (and b!6189126 (not c!1116474)) b!6189131))

(assert (= (and b!6189131 c!1116475) b!6189124))

(assert (= (and b!6189131 (not c!1116475)) b!6189132))

(assert (= (and b!6189124 (not res!2560504)) b!6189133))

(assert (= (and b!6189132 c!1116477) b!6189130))

(assert (= (and b!6189132 (not c!1116477)) b!6189127))

(assert (= (and b!6189130 (not res!2560503)) b!6189125))

(assert (= (or b!6189125 b!6189127) bm!517412))

(assert (= (or b!6189128 b!6189130) bm!517411))

(assert (=> bm!517411 m!7023100))

(declare-fun m!7023558 () Bool)

(assert (=> b!6189124 m!7023558))

(declare-fun m!7023560 () Bool)

(assert (=> bm!517412 m!7023560))

(declare-fun m!7023562 () Bool)

(assert (=> b!6189133 m!7023562))

(assert (=> b!6188337 d!1940271))

(declare-fun b!6189134 () Bool)

(declare-fun e!3769315 () Bool)

(declare-fun lt!2340426 () Bool)

(assert (=> b!6189134 (= e!3769315 (not lt!2340426))))

(declare-fun b!6189135 () Bool)

(declare-fun e!3769317 () Bool)

(assert (=> b!6189135 (= e!3769317 (= (head!12766 s!2326) (c!1116244 r!7292)))))

(declare-fun b!6189136 () Bool)

(declare-fun res!2560505 () Bool)

(assert (=> b!6189136 (=> (not res!2560505) (not e!3769317))))

(declare-fun call!517418 () Bool)

(assert (=> b!6189136 (= res!2560505 (not call!517418))))

(declare-fun b!6189137 () Bool)

(declare-fun res!2560511 () Bool)

(declare-fun e!3769318 () Bool)

(assert (=> b!6189137 (=> res!2560511 e!3769318)))

(assert (=> b!6189137 (= res!2560511 (not ((_ is ElementMatch!16127) r!7292)))))

(assert (=> b!6189137 (= e!3769315 e!3769318)))

(declare-fun d!1940273 () Bool)

(declare-fun e!3769313 () Bool)

(assert (=> d!1940273 e!3769313))

(declare-fun c!1116480 () Bool)

(assert (=> d!1940273 (= c!1116480 ((_ is EmptyExpr!16127) r!7292))))

(declare-fun e!3769319 () Bool)

(assert (=> d!1940273 (= lt!2340426 e!3769319)))

(declare-fun c!1116478 () Bool)

(assert (=> d!1940273 (= c!1116478 (isEmpty!36541 s!2326))))

(assert (=> d!1940273 (validRegex!7863 r!7292)))

(assert (=> d!1940273 (= (matchR!8310 r!7292 s!2326) lt!2340426)))

(declare-fun b!6189138 () Bool)

(declare-fun e!3769316 () Bool)

(assert (=> b!6189138 (= e!3769316 (not (= (head!12766 s!2326) (c!1116244 r!7292))))))

(declare-fun b!6189139 () Bool)

(declare-fun res!2560508 () Bool)

(assert (=> b!6189139 (=> res!2560508 e!3769316)))

(assert (=> b!6189139 (= res!2560508 (not (isEmpty!36541 (tail!11851 s!2326))))))

(declare-fun b!6189140 () Bool)

(declare-fun res!2560512 () Bool)

(assert (=> b!6189140 (=> res!2560512 e!3769318)))

(assert (=> b!6189140 (= res!2560512 e!3769317)))

(declare-fun res!2560507 () Bool)

(assert (=> b!6189140 (=> (not res!2560507) (not e!3769317))))

(assert (=> b!6189140 (= res!2560507 lt!2340426)))

(declare-fun b!6189141 () Bool)

(declare-fun res!2560506 () Bool)

(assert (=> b!6189141 (=> (not res!2560506) (not e!3769317))))

(assert (=> b!6189141 (= res!2560506 (isEmpty!36541 (tail!11851 s!2326)))))

(declare-fun b!6189142 () Bool)

(assert (=> b!6189142 (= e!3769319 (matchR!8310 (derivativeStep!4842 r!7292 (head!12766 s!2326)) (tail!11851 s!2326)))))

(declare-fun b!6189143 () Bool)

(assert (=> b!6189143 (= e!3769313 (= lt!2340426 call!517418))))

(declare-fun bm!517413 () Bool)

(assert (=> bm!517413 (= call!517418 (isEmpty!36541 s!2326))))

(declare-fun b!6189144 () Bool)

(assert (=> b!6189144 (= e!3769313 e!3769315)))

(declare-fun c!1116479 () Bool)

(assert (=> b!6189144 (= c!1116479 ((_ is EmptyLang!16127) r!7292))))

(declare-fun b!6189145 () Bool)

(declare-fun e!3769314 () Bool)

(assert (=> b!6189145 (= e!3769314 e!3769316)))

(declare-fun res!2560510 () Bool)

(assert (=> b!6189145 (=> res!2560510 e!3769316)))

(assert (=> b!6189145 (= res!2560510 call!517418)))

(declare-fun b!6189146 () Bool)

(assert (=> b!6189146 (= e!3769319 (nullable!6120 r!7292))))

(declare-fun b!6189147 () Bool)

(assert (=> b!6189147 (= e!3769318 e!3769314)))

(declare-fun res!2560509 () Bool)

(assert (=> b!6189147 (=> (not res!2560509) (not e!3769314))))

(assert (=> b!6189147 (= res!2560509 (not lt!2340426))))

(assert (= (and d!1940273 c!1116478) b!6189146))

(assert (= (and d!1940273 (not c!1116478)) b!6189142))

(assert (= (and d!1940273 c!1116480) b!6189143))

(assert (= (and d!1940273 (not c!1116480)) b!6189144))

(assert (= (and b!6189144 c!1116479) b!6189134))

(assert (= (and b!6189144 (not c!1116479)) b!6189137))

(assert (= (and b!6189137 (not res!2560511)) b!6189140))

(assert (= (and b!6189140 res!2560507) b!6189136))

(assert (= (and b!6189136 res!2560505) b!6189141))

(assert (= (and b!6189141 res!2560506) b!6189135))

(assert (= (and b!6189140 (not res!2560512)) b!6189147))

(assert (= (and b!6189147 res!2560509) b!6189145))

(assert (= (and b!6189145 (not res!2560510)) b!6189139))

(assert (= (and b!6189139 (not res!2560508)) b!6189138))

(assert (= (or b!6189143 b!6189136 b!6189145) bm!517413))

(assert (=> b!6189142 m!7023104))

(assert (=> b!6189142 m!7023104))

(declare-fun m!7023564 () Bool)

(assert (=> b!6189142 m!7023564))

(assert (=> b!6189142 m!7023108))

(assert (=> b!6189142 m!7023564))

(assert (=> b!6189142 m!7023108))

(declare-fun m!7023566 () Bool)

(assert (=> b!6189142 m!7023566))

(assert (=> b!6189138 m!7023104))

(assert (=> bm!517413 m!7023100))

(assert (=> b!6189139 m!7023108))

(assert (=> b!6189139 m!7023108))

(assert (=> b!6189139 m!7023348))

(assert (=> b!6189135 m!7023104))

(assert (=> d!1940273 m!7023100))

(assert (=> d!1940273 m!7022916))

(declare-fun m!7023568 () Bool)

(assert (=> b!6189146 m!7023568))

(assert (=> b!6189141 m!7023108))

(assert (=> b!6189141 m!7023108))

(assert (=> b!6189141 m!7023348))

(assert (=> b!6188337 d!1940273))

(declare-fun d!1940275 () Bool)

(assert (=> d!1940275 (= (matchR!8310 r!7292 s!2326) (matchRSpec!3228 r!7292 s!2326))))

(declare-fun lt!2340427 () Unit!157795)

(assert (=> d!1940275 (= lt!2340427 (choose!45968 r!7292 s!2326))))

(assert (=> d!1940275 (validRegex!7863 r!7292)))

(assert (=> d!1940275 (= (mainMatchTheorem!3228 r!7292 s!2326) lt!2340427)))

(declare-fun bs!1535296 () Bool)

(assert (= bs!1535296 d!1940275))

(assert (=> bs!1535296 m!7022832))

(assert (=> bs!1535296 m!7022830))

(declare-fun m!7023570 () Bool)

(assert (=> bs!1535296 m!7023570))

(assert (=> bs!1535296 m!7022916))

(assert (=> b!6188337 d!1940275))

(declare-fun d!1940277 () Bool)

(declare-fun c!1116481 () Bool)

(assert (=> d!1940277 (= c!1116481 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769320 () Bool)

(assert (=> d!1940277 (= (matchZipper!2139 lt!2340288 (t!378190 s!2326)) e!3769320)))

(declare-fun b!6189148 () Bool)

(assert (=> b!6189148 (= e!3769320 (nullableZipper!1903 lt!2340288))))

(declare-fun b!6189149 () Bool)

(assert (=> b!6189149 (= e!3769320 (matchZipper!2139 (derivationStepZipper!2095 lt!2340288 (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940277 c!1116481) b!6189148))

(assert (= (and d!1940277 (not c!1116481)) b!6189149))

(assert (=> d!1940277 m!7023364))

(declare-fun m!7023572 () Bool)

(assert (=> b!6189148 m!7023572))

(assert (=> b!6189149 m!7023368))

(assert (=> b!6189149 m!7023368))

(declare-fun m!7023574 () Bool)

(assert (=> b!6189149 m!7023574))

(assert (=> b!6189149 m!7023372))

(assert (=> b!6189149 m!7023574))

(assert (=> b!6189149 m!7023372))

(declare-fun m!7023576 () Bool)

(assert (=> b!6189149 m!7023576))

(assert (=> b!6188338 d!1940277))

(declare-fun d!1940279 () Bool)

(declare-fun c!1116482 () Bool)

(assert (=> d!1940279 (= c!1116482 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769321 () Bool)

(assert (=> d!1940279 (= (matchZipper!2139 lt!2340315 (t!378190 s!2326)) e!3769321)))

(declare-fun b!6189150 () Bool)

(assert (=> b!6189150 (= e!3769321 (nullableZipper!1903 lt!2340315))))

(declare-fun b!6189151 () Bool)

(assert (=> b!6189151 (= e!3769321 (matchZipper!2139 (derivationStepZipper!2095 lt!2340315 (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940279 c!1116482) b!6189150))

(assert (= (and d!1940279 (not c!1116482)) b!6189151))

(assert (=> d!1940279 m!7023364))

(declare-fun m!7023578 () Bool)

(assert (=> b!6189150 m!7023578))

(assert (=> b!6189151 m!7023368))

(assert (=> b!6189151 m!7023368))

(declare-fun m!7023580 () Bool)

(assert (=> b!6189151 m!7023580))

(assert (=> b!6189151 m!7023372))

(assert (=> b!6189151 m!7023580))

(assert (=> b!6189151 m!7023372))

(declare-fun m!7023582 () Bool)

(assert (=> b!6189151 m!7023582))

(assert (=> b!6188338 d!1940279))

(declare-fun d!1940281 () Bool)

(declare-fun c!1116483 () Bool)

(assert (=> d!1940281 (= c!1116483 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769322 () Bool)

(assert (=> d!1940281 (= (matchZipper!2139 lt!2340309 (t!378190 s!2326)) e!3769322)))

(declare-fun b!6189152 () Bool)

(assert (=> b!6189152 (= e!3769322 (nullableZipper!1903 lt!2340309))))

(declare-fun b!6189153 () Bool)

(assert (=> b!6189153 (= e!3769322 (matchZipper!2139 (derivationStepZipper!2095 lt!2340309 (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940281 c!1116483) b!6189152))

(assert (= (and d!1940281 (not c!1116483)) b!6189153))

(assert (=> d!1940281 m!7023364))

(declare-fun m!7023584 () Bool)

(assert (=> b!6189152 m!7023584))

(assert (=> b!6189153 m!7023368))

(assert (=> b!6189153 m!7023368))

(declare-fun m!7023586 () Bool)

(assert (=> b!6189153 m!7023586))

(assert (=> b!6189153 m!7023372))

(assert (=> b!6189153 m!7023586))

(assert (=> b!6189153 m!7023372))

(declare-fun m!7023588 () Bool)

(assert (=> b!6189153 m!7023588))

(assert (=> b!6188338 d!1940281))

(declare-fun d!1940283 () Bool)

(declare-fun e!3769323 () Bool)

(assert (=> d!1940283 (= (matchZipper!2139 ((_ map or) lt!2340309 lt!2340287) (t!378190 s!2326)) e!3769323)))

(declare-fun res!2560513 () Bool)

(assert (=> d!1940283 (=> res!2560513 e!3769323)))

(assert (=> d!1940283 (= res!2560513 (matchZipper!2139 lt!2340309 (t!378190 s!2326)))))

(declare-fun lt!2340428 () Unit!157795)

(assert (=> d!1940283 (= lt!2340428 (choose!45972 lt!2340309 lt!2340287 (t!378190 s!2326)))))

(assert (=> d!1940283 (= (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340309 lt!2340287 (t!378190 s!2326)) lt!2340428)))

(declare-fun b!6189154 () Bool)

(assert (=> b!6189154 (= e!3769323 (matchZipper!2139 lt!2340287 (t!378190 s!2326)))))

(assert (= (and d!1940283 (not res!2560513)) b!6189154))

(declare-fun m!7023590 () Bool)

(assert (=> d!1940283 m!7023590))

(assert (=> d!1940283 m!7022850))

(declare-fun m!7023592 () Bool)

(assert (=> d!1940283 m!7023592))

(assert (=> b!6189154 m!7022840))

(assert (=> b!6188338 d!1940283))

(declare-fun bs!1535297 () Bool)

(declare-fun d!1940285 () Bool)

(assert (= bs!1535297 (and d!1940285 d!1940097)))

(declare-fun lambda!337948 () Int)

(assert (=> bs!1535297 (= lambda!337948 lambda!337899)))

(declare-fun bs!1535298 () Bool)

(assert (= bs!1535298 (and d!1940285 d!1940137)))

(assert (=> bs!1535298 (= lambda!337948 lambda!337905)))

(declare-fun bs!1535299 () Bool)

(assert (= bs!1535299 (and d!1940285 d!1940269)))

(assert (=> bs!1535299 (= lambda!337948 lambda!337943)))

(declare-fun b!6189175 () Bool)

(declare-fun e!3769338 () Bool)

(assert (=> b!6189175 (= e!3769338 (isEmpty!36539 (t!378191 (unfocusZipperList!1548 zl!343))))))

(declare-fun b!6189176 () Bool)

(declare-fun e!3769337 () Bool)

(declare-fun lt!2340431 () Regex!16127)

(assert (=> b!6189176 (= e!3769337 (= lt!2340431 (head!12765 (unfocusZipperList!1548 zl!343))))))

(declare-fun b!6189177 () Bool)

(declare-fun e!3769340 () Regex!16127)

(declare-fun e!3769336 () Regex!16127)

(assert (=> b!6189177 (= e!3769340 e!3769336)))

(declare-fun c!1116495 () Bool)

(assert (=> b!6189177 (= c!1116495 ((_ is Cons!64557) (unfocusZipperList!1548 zl!343)))))

(declare-fun b!6189178 () Bool)

(assert (=> b!6189178 (= e!3769340 (h!71005 (unfocusZipperList!1548 zl!343)))))

(declare-fun e!3769341 () Bool)

(assert (=> d!1940285 e!3769341))

(declare-fun res!2560518 () Bool)

(assert (=> d!1940285 (=> (not res!2560518) (not e!3769341))))

(assert (=> d!1940285 (= res!2560518 (validRegex!7863 lt!2340431))))

(assert (=> d!1940285 (= lt!2340431 e!3769340)))

(declare-fun c!1116493 () Bool)

(assert (=> d!1940285 (= c!1116493 e!3769338)))

(declare-fun res!2560519 () Bool)

(assert (=> d!1940285 (=> (not res!2560519) (not e!3769338))))

(assert (=> d!1940285 (= res!2560519 ((_ is Cons!64557) (unfocusZipperList!1548 zl!343)))))

(assert (=> d!1940285 (forall!15243 (unfocusZipperList!1548 zl!343) lambda!337948)))

(assert (=> d!1940285 (= (generalisedUnion!1971 (unfocusZipperList!1548 zl!343)) lt!2340431)))

(declare-fun b!6189179 () Bool)

(declare-fun isUnion!978 (Regex!16127) Bool)

(assert (=> b!6189179 (= e!3769337 (isUnion!978 lt!2340431))))

(declare-fun b!6189180 () Bool)

(assert (=> b!6189180 (= e!3769336 (Union!16127 (h!71005 (unfocusZipperList!1548 zl!343)) (generalisedUnion!1971 (t!378191 (unfocusZipperList!1548 zl!343)))))))

(declare-fun b!6189181 () Bool)

(declare-fun e!3769339 () Bool)

(declare-fun isEmptyLang!1548 (Regex!16127) Bool)

(assert (=> b!6189181 (= e!3769339 (isEmptyLang!1548 lt!2340431))))

(declare-fun b!6189182 () Bool)

(assert (=> b!6189182 (= e!3769339 e!3769337)))

(declare-fun c!1116492 () Bool)

(assert (=> b!6189182 (= c!1116492 (isEmpty!36539 (tail!11850 (unfocusZipperList!1548 zl!343))))))

(declare-fun b!6189183 () Bool)

(assert (=> b!6189183 (= e!3769336 EmptyLang!16127)))

(declare-fun b!6189184 () Bool)

(assert (=> b!6189184 (= e!3769341 e!3769339)))

(declare-fun c!1116494 () Bool)

(assert (=> b!6189184 (= c!1116494 (isEmpty!36539 (unfocusZipperList!1548 zl!343)))))

(assert (= (and d!1940285 res!2560519) b!6189175))

(assert (= (and d!1940285 c!1116493) b!6189178))

(assert (= (and d!1940285 (not c!1116493)) b!6189177))

(assert (= (and b!6189177 c!1116495) b!6189180))

(assert (= (and b!6189177 (not c!1116495)) b!6189183))

(assert (= (and d!1940285 res!2560518) b!6189184))

(assert (= (and b!6189184 c!1116494) b!6189181))

(assert (= (and b!6189184 (not c!1116494)) b!6189182))

(assert (= (and b!6189182 c!1116492) b!6189176))

(assert (= (and b!6189182 (not c!1116492)) b!6189179))

(declare-fun m!7023594 () Bool)

(assert (=> d!1940285 m!7023594))

(assert (=> d!1940285 m!7022954))

(declare-fun m!7023596 () Bool)

(assert (=> d!1940285 m!7023596))

(declare-fun m!7023598 () Bool)

(assert (=> b!6189181 m!7023598))

(assert (=> b!6189184 m!7022954))

(declare-fun m!7023600 () Bool)

(assert (=> b!6189184 m!7023600))

(assert (=> b!6189176 m!7022954))

(declare-fun m!7023602 () Bool)

(assert (=> b!6189176 m!7023602))

(declare-fun m!7023604 () Bool)

(assert (=> b!6189175 m!7023604))

(assert (=> b!6189182 m!7022954))

(declare-fun m!7023606 () Bool)

(assert (=> b!6189182 m!7023606))

(assert (=> b!6189182 m!7023606))

(declare-fun m!7023608 () Bool)

(assert (=> b!6189182 m!7023608))

(declare-fun m!7023610 () Bool)

(assert (=> b!6189179 m!7023610))

(declare-fun m!7023612 () Bool)

(assert (=> b!6189180 m!7023612))

(assert (=> b!6188317 d!1940285))

(declare-fun bs!1535300 () Bool)

(declare-fun d!1940287 () Bool)

(assert (= bs!1535300 (and d!1940287 d!1940097)))

(declare-fun lambda!337951 () Int)

(assert (=> bs!1535300 (= lambda!337951 lambda!337899)))

(declare-fun bs!1535301 () Bool)

(assert (= bs!1535301 (and d!1940287 d!1940137)))

(assert (=> bs!1535301 (= lambda!337951 lambda!337905)))

(declare-fun bs!1535302 () Bool)

(assert (= bs!1535302 (and d!1940287 d!1940269)))

(assert (=> bs!1535302 (= lambda!337951 lambda!337943)))

(declare-fun bs!1535303 () Bool)

(assert (= bs!1535303 (and d!1940287 d!1940285)))

(assert (=> bs!1535303 (= lambda!337951 lambda!337948)))

(declare-fun lt!2340434 () List!64681)

(assert (=> d!1940287 (forall!15243 lt!2340434 lambda!337951)))

(declare-fun e!3769344 () List!64681)

(assert (=> d!1940287 (= lt!2340434 e!3769344)))

(declare-fun c!1116498 () Bool)

(assert (=> d!1940287 (= c!1116498 ((_ is Cons!64558) zl!343))))

(assert (=> d!1940287 (= (unfocusZipperList!1548 zl!343) lt!2340434)))

(declare-fun b!6189189 () Bool)

(assert (=> b!6189189 (= e!3769344 (Cons!64557 (generalisedConcat!1724 (exprs!6011 (h!71006 zl!343))) (unfocusZipperList!1548 (t!378192 zl!343))))))

(declare-fun b!6189190 () Bool)

(assert (=> b!6189190 (= e!3769344 Nil!64557)))

(assert (= (and d!1940287 c!1116498) b!6189189))

(assert (= (and d!1940287 (not c!1116498)) b!6189190))

(declare-fun m!7023614 () Bool)

(assert (=> d!1940287 m!7023614))

(assert (=> b!6189189 m!7022938))

(declare-fun m!7023616 () Bool)

(assert (=> b!6189189 m!7023616))

(assert (=> b!6188317 d!1940287))

(declare-fun bm!517414 () Bool)

(declare-fun call!517421 () Bool)

(declare-fun c!1116499 () Bool)

(assert (=> bm!517414 (= call!517421 (validRegex!7863 (ite c!1116499 (regOne!32767 r!7292) (regOne!32766 r!7292))))))

(declare-fun b!6189191 () Bool)

(declare-fun e!3769346 () Bool)

(declare-fun call!517420 () Bool)

(assert (=> b!6189191 (= e!3769346 call!517420)))

(declare-fun c!1116500 () Bool)

(declare-fun bm!517415 () Bool)

(declare-fun call!517419 () Bool)

(assert (=> bm!517415 (= call!517419 (validRegex!7863 (ite c!1116500 (reg!16456 r!7292) (ite c!1116499 (regTwo!32767 r!7292) (regTwo!32766 r!7292)))))))

(declare-fun d!1940289 () Bool)

(declare-fun res!2560523 () Bool)

(declare-fun e!3769348 () Bool)

(assert (=> d!1940289 (=> res!2560523 e!3769348)))

(assert (=> d!1940289 (= res!2560523 ((_ is ElementMatch!16127) r!7292))))

(assert (=> d!1940289 (= (validRegex!7863 r!7292) e!3769348)))

(declare-fun b!6189192 () Bool)

(declare-fun e!3769351 () Bool)

(assert (=> b!6189192 (= e!3769351 call!517420)))

(declare-fun b!6189193 () Bool)

(declare-fun res!2560520 () Bool)

(assert (=> b!6189193 (=> (not res!2560520) (not e!3769351))))

(assert (=> b!6189193 (= res!2560520 call!517421)))

(declare-fun e!3769347 () Bool)

(assert (=> b!6189193 (= e!3769347 e!3769351)))

(declare-fun b!6189194 () Bool)

(declare-fun e!3769349 () Bool)

(assert (=> b!6189194 (= e!3769349 e!3769347)))

(assert (=> b!6189194 (= c!1116499 ((_ is Union!16127) r!7292))))

(declare-fun b!6189195 () Bool)

(declare-fun e!3769350 () Bool)

(assert (=> b!6189195 (= e!3769350 e!3769346)))

(declare-fun res!2560522 () Bool)

(assert (=> b!6189195 (=> (not res!2560522) (not e!3769346))))

(assert (=> b!6189195 (= res!2560522 call!517421)))

(declare-fun b!6189196 () Bool)

(declare-fun e!3769345 () Bool)

(assert (=> b!6189196 (= e!3769349 e!3769345)))

(declare-fun res!2560521 () Bool)

(assert (=> b!6189196 (= res!2560521 (not (nullable!6120 (reg!16456 r!7292))))))

(assert (=> b!6189196 (=> (not res!2560521) (not e!3769345))))

(declare-fun b!6189197 () Bool)

(declare-fun res!2560524 () Bool)

(assert (=> b!6189197 (=> res!2560524 e!3769350)))

(assert (=> b!6189197 (= res!2560524 (not ((_ is Concat!24972) r!7292)))))

(assert (=> b!6189197 (= e!3769347 e!3769350)))

(declare-fun b!6189198 () Bool)

(assert (=> b!6189198 (= e!3769348 e!3769349)))

(assert (=> b!6189198 (= c!1116500 ((_ is Star!16127) r!7292))))

(declare-fun b!6189199 () Bool)

(assert (=> b!6189199 (= e!3769345 call!517419)))

(declare-fun bm!517416 () Bool)

(assert (=> bm!517416 (= call!517420 call!517419)))

(assert (= (and d!1940289 (not res!2560523)) b!6189198))

(assert (= (and b!6189198 c!1116500) b!6189196))

(assert (= (and b!6189198 (not c!1116500)) b!6189194))

(assert (= (and b!6189196 res!2560521) b!6189199))

(assert (= (and b!6189194 c!1116499) b!6189193))

(assert (= (and b!6189194 (not c!1116499)) b!6189197))

(assert (= (and b!6189193 res!2560520) b!6189192))

(assert (= (and b!6189197 (not res!2560524)) b!6189195))

(assert (= (and b!6189195 res!2560522) b!6189191))

(assert (= (or b!6189192 b!6189191) bm!517416))

(assert (= (or b!6189193 b!6189195) bm!517414))

(assert (= (or b!6189199 bm!517416) bm!517415))

(declare-fun m!7023618 () Bool)

(assert (=> bm!517414 m!7023618))

(declare-fun m!7023620 () Bool)

(assert (=> bm!517415 m!7023620))

(declare-fun m!7023622 () Bool)

(assert (=> b!6189196 m!7023622))

(assert (=> start!617250 d!1940289))

(declare-fun call!517424 () List!64681)

(declare-fun bm!517417 () Bool)

(declare-fun c!1116504 () Bool)

(declare-fun c!1116505 () Bool)

(assert (=> bm!517417 (= call!517424 ($colon$colon!1998 (exprs!6011 lt!2340307) (ite (or c!1116504 c!1116505) (regTwo!32766 (h!71005 (exprs!6011 (h!71006 zl!343)))) (h!71005 (exprs!6011 (h!71006 zl!343))))))))

(declare-fun bm!517418 () Bool)

(declare-fun call!517423 () (InoxSet Context!11022))

(declare-fun call!517422 () (InoxSet Context!11022))

(assert (=> bm!517418 (= call!517423 call!517422)))

(declare-fun bm!517419 () Bool)

(declare-fun call!517427 () (InoxSet Context!11022))

(assert (=> bm!517419 (= call!517422 call!517427)))

(declare-fun c!1116503 () Bool)

(declare-fun call!517425 () (InoxSet Context!11022))

(declare-fun bm!517420 () Bool)

(assert (=> bm!517420 (= call!517425 (derivationStepZipperDown!1375 (ite c!1116503 (regTwo!32767 (h!71005 (exprs!6011 (h!71006 zl!343)))) (regOne!32766 (h!71005 (exprs!6011 (h!71006 zl!343))))) (ite c!1116503 lt!2340307 (Context!11023 call!517424)) (h!71004 s!2326)))))

(declare-fun b!6189200 () Bool)

(declare-fun e!3769356 () (InoxSet Context!11022))

(assert (=> b!6189200 (= e!3769356 call!517423)))

(declare-fun b!6189201 () Bool)

(declare-fun e!3769354 () (InoxSet Context!11022))

(assert (=> b!6189201 (= e!3769354 (store ((as const (Array Context!11022 Bool)) false) lt!2340307 true))))

(declare-fun d!1940291 () Bool)

(declare-fun c!1116501 () Bool)

(assert (=> d!1940291 (= c!1116501 (and ((_ is ElementMatch!16127) (h!71005 (exprs!6011 (h!71006 zl!343)))) (= (c!1116244 (h!71005 (exprs!6011 (h!71006 zl!343)))) (h!71004 s!2326))))))

(assert (=> d!1940291 (= (derivationStepZipperDown!1375 (h!71005 (exprs!6011 (h!71006 zl!343))) lt!2340307 (h!71004 s!2326)) e!3769354)))

(declare-fun b!6189202 () Bool)

(declare-fun e!3769357 () Bool)

(assert (=> b!6189202 (= c!1116504 e!3769357)))

(declare-fun res!2560525 () Bool)

(assert (=> b!6189202 (=> (not res!2560525) (not e!3769357))))

(assert (=> b!6189202 (= res!2560525 ((_ is Concat!24972) (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun e!3769352 () (InoxSet Context!11022))

(declare-fun e!3769355 () (InoxSet Context!11022))

(assert (=> b!6189202 (= e!3769352 e!3769355)))

(declare-fun b!6189203 () Bool)

(assert (=> b!6189203 (= e!3769355 e!3769356)))

(assert (=> b!6189203 (= c!1116505 ((_ is Concat!24972) (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun b!6189204 () Bool)

(assert (=> b!6189204 (= e!3769355 ((_ map or) call!517425 call!517422))))

(declare-fun b!6189205 () Bool)

(assert (=> b!6189205 (= e!3769354 e!3769352)))

(assert (=> b!6189205 (= c!1116503 ((_ is Union!16127) (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun bm!517421 () Bool)

(declare-fun call!517426 () List!64681)

(assert (=> bm!517421 (= call!517426 call!517424)))

(declare-fun b!6189206 () Bool)

(declare-fun c!1116502 () Bool)

(assert (=> b!6189206 (= c!1116502 ((_ is Star!16127) (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun e!3769353 () (InoxSet Context!11022))

(assert (=> b!6189206 (= e!3769356 e!3769353)))

(declare-fun bm!517422 () Bool)

(assert (=> bm!517422 (= call!517427 (derivationStepZipperDown!1375 (ite c!1116503 (regOne!32767 (h!71005 (exprs!6011 (h!71006 zl!343)))) (ite c!1116504 (regTwo!32766 (h!71005 (exprs!6011 (h!71006 zl!343)))) (ite c!1116505 (regOne!32766 (h!71005 (exprs!6011 (h!71006 zl!343)))) (reg!16456 (h!71005 (exprs!6011 (h!71006 zl!343))))))) (ite (or c!1116503 c!1116504) lt!2340307 (Context!11023 call!517426)) (h!71004 s!2326)))))

(declare-fun b!6189207 () Bool)

(assert (=> b!6189207 (= e!3769353 ((as const (Array Context!11022 Bool)) false))))

(declare-fun b!6189208 () Bool)

(assert (=> b!6189208 (= e!3769357 (nullable!6120 (regOne!32766 (h!71005 (exprs!6011 (h!71006 zl!343))))))))

(declare-fun b!6189209 () Bool)

(assert (=> b!6189209 (= e!3769352 ((_ map or) call!517427 call!517425))))

(declare-fun b!6189210 () Bool)

(assert (=> b!6189210 (= e!3769353 call!517423)))

(assert (= (and d!1940291 c!1116501) b!6189201))

(assert (= (and d!1940291 (not c!1116501)) b!6189205))

(assert (= (and b!6189205 c!1116503) b!6189209))

(assert (= (and b!6189205 (not c!1116503)) b!6189202))

(assert (= (and b!6189202 res!2560525) b!6189208))

(assert (= (and b!6189202 c!1116504) b!6189204))

(assert (= (and b!6189202 (not c!1116504)) b!6189203))

(assert (= (and b!6189203 c!1116505) b!6189200))

(assert (= (and b!6189203 (not c!1116505)) b!6189206))

(assert (= (and b!6189206 c!1116502) b!6189210))

(assert (= (and b!6189206 (not c!1116502)) b!6189207))

(assert (= (or b!6189200 b!6189210) bm!517421))

(assert (= (or b!6189200 b!6189210) bm!517418))

(assert (= (or b!6189204 bm!517421) bm!517417))

(assert (= (or b!6189204 bm!517418) bm!517419))

(assert (= (or b!6189209 b!6189204) bm!517420))

(assert (= (or b!6189209 bm!517419) bm!517422))

(declare-fun m!7023624 () Bool)

(assert (=> bm!517420 m!7023624))

(declare-fun m!7023626 () Bool)

(assert (=> bm!517417 m!7023626))

(declare-fun m!7023628 () Bool)

(assert (=> b!6189208 m!7023628))

(assert (=> b!6189201 m!7023488))

(declare-fun m!7023630 () Bool)

(assert (=> bm!517422 m!7023630))

(assert (=> b!6188313 d!1940291))

(declare-fun d!1940293 () Bool)

(assert (=> d!1940293 (= (nullable!6120 (h!71005 (exprs!6011 (h!71006 zl!343)))) (nullableFct!2078 (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(declare-fun bs!1535304 () Bool)

(assert (= bs!1535304 d!1940293))

(declare-fun m!7023632 () Bool)

(assert (=> bs!1535304 m!7023632))

(assert (=> b!6188313 d!1940293))

(declare-fun b!6189211 () Bool)

(declare-fun e!3769359 () (InoxSet Context!11022))

(declare-fun e!3769360 () (InoxSet Context!11022))

(assert (=> b!6189211 (= e!3769359 e!3769360)))

(declare-fun c!1116507 () Bool)

(assert (=> b!6189211 (= c!1116507 ((_ is Cons!64557) (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343))))))))))

(declare-fun bm!517423 () Bool)

(declare-fun call!517428 () (InoxSet Context!11022))

(assert (=> bm!517423 (= call!517428 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343))))))) (Context!11023 (t!378191 (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343)))))))) (h!71004 s!2326)))))

(declare-fun b!6189212 () Bool)

(assert (=> b!6189212 (= e!3769360 call!517428)))

(declare-fun b!6189213 () Bool)

(assert (=> b!6189213 (= e!3769359 ((_ map or) call!517428 (derivationStepZipperUp!1301 (Context!11023 (t!378191 (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343)))))))) (h!71004 s!2326))))))

(declare-fun b!6189214 () Bool)

(assert (=> b!6189214 (= e!3769360 ((as const (Array Context!11022 Bool)) false))))

(declare-fun d!1940295 () Bool)

(declare-fun c!1116506 () Bool)

(declare-fun e!3769358 () Bool)

(assert (=> d!1940295 (= c!1116506 e!3769358)))

(declare-fun res!2560526 () Bool)

(assert (=> d!1940295 (=> (not res!2560526) (not e!3769358))))

(assert (=> d!1940295 (= res!2560526 ((_ is Cons!64557) (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343))))))))))

(assert (=> d!1940295 (= (derivationStepZipperUp!1301 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343))))) (h!71004 s!2326)) e!3769359)))

(declare-fun b!6189215 () Bool)

(assert (=> b!6189215 (= e!3769358 (nullable!6120 (h!71005 (exprs!6011 (Context!11023 (Cons!64557 (h!71005 (exprs!6011 (h!71006 zl!343))) (t!378191 (exprs!6011 (h!71006 zl!343)))))))))))

(assert (= (and d!1940295 res!2560526) b!6189215))

(assert (= (and d!1940295 c!1116506) b!6189213))

(assert (= (and d!1940295 (not c!1116506)) b!6189211))

(assert (= (and b!6189211 c!1116507) b!6189212))

(assert (= (and b!6189211 (not c!1116507)) b!6189214))

(assert (= (or b!6189213 b!6189212) bm!517423))

(declare-fun m!7023634 () Bool)

(assert (=> bm!517423 m!7023634))

(declare-fun m!7023636 () Bool)

(assert (=> b!6189213 m!7023636))

(declare-fun m!7023638 () Bool)

(assert (=> b!6189215 m!7023638))

(assert (=> b!6188313 d!1940295))

(declare-fun d!1940297 () Bool)

(assert (=> d!1940297 (= (flatMap!1632 z!1189 lambda!337891) (choose!45975 z!1189 lambda!337891))))

(declare-fun bs!1535305 () Bool)

(assert (= bs!1535305 d!1940297))

(declare-fun m!7023640 () Bool)

(assert (=> bs!1535305 m!7023640))

(assert (=> b!6188313 d!1940297))

(declare-fun b!6189216 () Bool)

(declare-fun e!3769362 () (InoxSet Context!11022))

(declare-fun e!3769363 () (InoxSet Context!11022))

(assert (=> b!6189216 (= e!3769362 e!3769363)))

(declare-fun c!1116509 () Bool)

(assert (=> b!6189216 (= c!1116509 ((_ is Cons!64557) (exprs!6011 lt!2340307)))))

(declare-fun bm!517424 () Bool)

(declare-fun call!517429 () (InoxSet Context!11022))

(assert (=> bm!517424 (= call!517429 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 lt!2340307)) (Context!11023 (t!378191 (exprs!6011 lt!2340307))) (h!71004 s!2326)))))

(declare-fun b!6189217 () Bool)

(assert (=> b!6189217 (= e!3769363 call!517429)))

(declare-fun b!6189218 () Bool)

(assert (=> b!6189218 (= e!3769362 ((_ map or) call!517429 (derivationStepZipperUp!1301 (Context!11023 (t!378191 (exprs!6011 lt!2340307))) (h!71004 s!2326))))))

(declare-fun b!6189219 () Bool)

(assert (=> b!6189219 (= e!3769363 ((as const (Array Context!11022 Bool)) false))))

(declare-fun d!1940299 () Bool)

(declare-fun c!1116508 () Bool)

(declare-fun e!3769361 () Bool)

(assert (=> d!1940299 (= c!1116508 e!3769361)))

(declare-fun res!2560527 () Bool)

(assert (=> d!1940299 (=> (not res!2560527) (not e!3769361))))

(assert (=> d!1940299 (= res!2560527 ((_ is Cons!64557) (exprs!6011 lt!2340307)))))

(assert (=> d!1940299 (= (derivationStepZipperUp!1301 lt!2340307 (h!71004 s!2326)) e!3769362)))

(declare-fun b!6189220 () Bool)

(assert (=> b!6189220 (= e!3769361 (nullable!6120 (h!71005 (exprs!6011 lt!2340307))))))

(assert (= (and d!1940299 res!2560527) b!6189220))

(assert (= (and d!1940299 c!1116508) b!6189218))

(assert (= (and d!1940299 (not c!1116508)) b!6189216))

(assert (= (and b!6189216 c!1116509) b!6189217))

(assert (= (and b!6189216 (not c!1116509)) b!6189219))

(assert (= (or b!6189218 b!6189217) bm!517424))

(declare-fun m!7023642 () Bool)

(assert (=> bm!517424 m!7023642))

(declare-fun m!7023644 () Bool)

(assert (=> b!6189218 m!7023644))

(declare-fun m!7023646 () Bool)

(assert (=> b!6189220 m!7023646))

(assert (=> b!6188313 d!1940299))

(declare-fun b!6189221 () Bool)

(declare-fun e!3769365 () (InoxSet Context!11022))

(declare-fun e!3769366 () (InoxSet Context!11022))

(assert (=> b!6189221 (= e!3769365 e!3769366)))

(declare-fun c!1116511 () Bool)

(assert (=> b!6189221 (= c!1116511 ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343))))))

(declare-fun bm!517425 () Bool)

(declare-fun call!517430 () (InoxSet Context!11022))

(assert (=> bm!517425 (= call!517430 (derivationStepZipperDown!1375 (h!71005 (exprs!6011 (h!71006 zl!343))) (Context!11023 (t!378191 (exprs!6011 (h!71006 zl!343)))) (h!71004 s!2326)))))

(declare-fun b!6189222 () Bool)

(assert (=> b!6189222 (= e!3769366 call!517430)))

(declare-fun b!6189223 () Bool)

(assert (=> b!6189223 (= e!3769365 ((_ map or) call!517430 (derivationStepZipperUp!1301 (Context!11023 (t!378191 (exprs!6011 (h!71006 zl!343)))) (h!71004 s!2326))))))

(declare-fun b!6189224 () Bool)

(assert (=> b!6189224 (= e!3769366 ((as const (Array Context!11022 Bool)) false))))

(declare-fun d!1940301 () Bool)

(declare-fun c!1116510 () Bool)

(declare-fun e!3769364 () Bool)

(assert (=> d!1940301 (= c!1116510 e!3769364)))

(declare-fun res!2560528 () Bool)

(assert (=> d!1940301 (=> (not res!2560528) (not e!3769364))))

(assert (=> d!1940301 (= res!2560528 ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343))))))

(assert (=> d!1940301 (= (derivationStepZipperUp!1301 (h!71006 zl!343) (h!71004 s!2326)) e!3769365)))

(declare-fun b!6189225 () Bool)

(assert (=> b!6189225 (= e!3769364 (nullable!6120 (h!71005 (exprs!6011 (h!71006 zl!343)))))))

(assert (= (and d!1940301 res!2560528) b!6189225))

(assert (= (and d!1940301 c!1116510) b!6189223))

(assert (= (and d!1940301 (not c!1116510)) b!6189221))

(assert (= (and b!6189221 c!1116511) b!6189222))

(assert (= (and b!6189221 (not c!1116511)) b!6189224))

(assert (= (or b!6189223 b!6189222) bm!517425))

(declare-fun m!7023648 () Bool)

(assert (=> bm!517425 m!7023648))

(declare-fun m!7023650 () Bool)

(assert (=> b!6189223 m!7023650))

(assert (=> b!6189225 m!7022948))

(assert (=> b!6188313 d!1940301))

(declare-fun d!1940303 () Bool)

(assert (=> d!1940303 (= (flatMap!1632 z!1189 lambda!337891) (dynLambda!25457 lambda!337891 (h!71006 zl!343)))))

(declare-fun lt!2340435 () Unit!157795)

(assert (=> d!1940303 (= lt!2340435 (choose!45974 z!1189 (h!71006 zl!343) lambda!337891))))

(assert (=> d!1940303 (= z!1189 (store ((as const (Array Context!11022 Bool)) false) (h!71006 zl!343) true))))

(assert (=> d!1940303 (= (lemmaFlatMapOnSingletonSet!1158 z!1189 (h!71006 zl!343) lambda!337891) lt!2340435)))

(declare-fun b_lambda!235485 () Bool)

(assert (=> (not b_lambda!235485) (not d!1940303)))

(declare-fun bs!1535306 () Bool)

(assert (= bs!1535306 d!1940303))

(assert (=> bs!1535306 m!7022950))

(declare-fun m!7023652 () Bool)

(assert (=> bs!1535306 m!7023652))

(declare-fun m!7023654 () Bool)

(assert (=> bs!1535306 m!7023654))

(declare-fun m!7023656 () Bool)

(assert (=> bs!1535306 m!7023656))

(assert (=> b!6188313 d!1940303))

(declare-fun d!1940305 () Bool)

(declare-fun e!3769367 () Bool)

(assert (=> d!1940305 (= (matchZipper!2139 ((_ map or) lt!2340288 lt!2340306) (t!378190 s!2326)) e!3769367)))

(declare-fun res!2560529 () Bool)

(assert (=> d!1940305 (=> res!2560529 e!3769367)))

(assert (=> d!1940305 (= res!2560529 (matchZipper!2139 lt!2340288 (t!378190 s!2326)))))

(declare-fun lt!2340436 () Unit!157795)

(assert (=> d!1940305 (= lt!2340436 (choose!45972 lt!2340288 lt!2340306 (t!378190 s!2326)))))

(assert (=> d!1940305 (= (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340288 lt!2340306 (t!378190 s!2326)) lt!2340436)))

(declare-fun b!6189226 () Bool)

(assert (=> b!6189226 (= e!3769367 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(assert (= (and d!1940305 (not res!2560529)) b!6189226))

(assert (=> d!1940305 m!7022872))

(assert (=> d!1940305 m!7022846))

(declare-fun m!7023658 () Bool)

(assert (=> d!1940305 m!7023658))

(assert (=> b!6189226 m!7022836))

(assert (=> b!6188314 d!1940305))

(assert (=> b!6188314 d!1940277))

(declare-fun d!1940307 () Bool)

(declare-fun c!1116512 () Bool)

(assert (=> d!1940307 (= c!1116512 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769368 () Bool)

(assert (=> d!1940307 (= (matchZipper!2139 ((_ map or) lt!2340288 lt!2340306) (t!378190 s!2326)) e!3769368)))

(declare-fun b!6189227 () Bool)

(assert (=> b!6189227 (= e!3769368 (nullableZipper!1903 ((_ map or) lt!2340288 lt!2340306)))))

(declare-fun b!6189228 () Bool)

(assert (=> b!6189228 (= e!3769368 (matchZipper!2139 (derivationStepZipper!2095 ((_ map or) lt!2340288 lt!2340306) (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940307 c!1116512) b!6189227))

(assert (= (and d!1940307 (not c!1116512)) b!6189228))

(assert (=> d!1940307 m!7023364))

(declare-fun m!7023660 () Bool)

(assert (=> b!6189227 m!7023660))

(assert (=> b!6189228 m!7023368))

(assert (=> b!6189228 m!7023368))

(declare-fun m!7023662 () Bool)

(assert (=> b!6189228 m!7023662))

(assert (=> b!6189228 m!7023372))

(assert (=> b!6189228 m!7023662))

(assert (=> b!6189228 m!7023372))

(declare-fun m!7023664 () Bool)

(assert (=> b!6189228 m!7023664))

(assert (=> b!6188314 d!1940307))

(declare-fun d!1940309 () Bool)

(assert (=> d!1940309 (= (isEmpty!36538 (t!378192 zl!343)) ((_ is Nil!64558) (t!378192 zl!343)))))

(assert (=> b!6188315 d!1940309))

(assert (=> b!6188332 d!1940241))

(declare-fun bs!1535307 () Bool)

(declare-fun d!1940311 () Bool)

(assert (= bs!1535307 (and d!1940311 d!1940097)))

(declare-fun lambda!337954 () Int)

(assert (=> bs!1535307 (= lambda!337954 lambda!337899)))

(declare-fun bs!1535308 () Bool)

(assert (= bs!1535308 (and d!1940311 d!1940285)))

(assert (=> bs!1535308 (= lambda!337954 lambda!337948)))

(declare-fun bs!1535309 () Bool)

(assert (= bs!1535309 (and d!1940311 d!1940269)))

(assert (=> bs!1535309 (= lambda!337954 lambda!337943)))

(declare-fun bs!1535310 () Bool)

(assert (= bs!1535310 (and d!1940311 d!1940137)))

(assert (=> bs!1535310 (= lambda!337954 lambda!337905)))

(declare-fun bs!1535311 () Bool)

(assert (= bs!1535311 (and d!1940311 d!1940287)))

(assert (=> bs!1535311 (= lambda!337954 lambda!337951)))

(assert (=> d!1940311 (= (inv!83564 setElem!41974) (forall!15243 (exprs!6011 setElem!41974) lambda!337954))))

(declare-fun bs!1535312 () Bool)

(assert (= bs!1535312 d!1940311))

(declare-fun m!7023666 () Bool)

(assert (=> bs!1535312 m!7023666))

(assert (=> setNonEmpty!41974 d!1940311))

(assert (=> b!6188312 d!1940203))

(declare-fun bs!1535313 () Bool)

(declare-fun d!1940313 () Bool)

(assert (= bs!1535313 (and d!1940313 d!1940097)))

(declare-fun lambda!337955 () Int)

(assert (=> bs!1535313 (= lambda!337955 lambda!337899)))

(declare-fun bs!1535314 () Bool)

(assert (= bs!1535314 (and d!1940313 d!1940285)))

(assert (=> bs!1535314 (= lambda!337955 lambda!337948)))

(declare-fun bs!1535315 () Bool)

(assert (= bs!1535315 (and d!1940313 d!1940269)))

(assert (=> bs!1535315 (= lambda!337955 lambda!337943)))

(declare-fun bs!1535316 () Bool)

(assert (= bs!1535316 (and d!1940313 d!1940311)))

(assert (=> bs!1535316 (= lambda!337955 lambda!337954)))

(declare-fun bs!1535317 () Bool)

(assert (= bs!1535317 (and d!1940313 d!1940137)))

(assert (=> bs!1535317 (= lambda!337955 lambda!337905)))

(declare-fun bs!1535318 () Bool)

(assert (= bs!1535318 (and d!1940313 d!1940287)))

(assert (=> bs!1535318 (= lambda!337955 lambda!337951)))

(assert (=> d!1940313 (= (inv!83564 (h!71006 zl!343)) (forall!15243 (exprs!6011 (h!71006 zl!343)) lambda!337955))))

(declare-fun bs!1535319 () Bool)

(assert (= bs!1535319 d!1940313))

(declare-fun m!7023668 () Bool)

(assert (=> bs!1535319 m!7023668))

(assert (=> b!6188333 d!1940313))

(declare-fun d!1940315 () Bool)

(declare-fun e!3769371 () Bool)

(assert (=> d!1940315 e!3769371))

(declare-fun res!2560532 () Bool)

(assert (=> d!1940315 (=> (not res!2560532) (not e!3769371))))

(declare-fun lt!2340439 () List!64682)

(declare-fun noDuplicate!1967 (List!64682) Bool)

(assert (=> d!1940315 (= res!2560532 (noDuplicate!1967 lt!2340439))))

(declare-fun choose!45979 ((InoxSet Context!11022)) List!64682)

(assert (=> d!1940315 (= lt!2340439 (choose!45979 z!1189))))

(assert (=> d!1940315 (= (toList!9911 z!1189) lt!2340439)))

(declare-fun b!6189231 () Bool)

(declare-fun content!12058 (List!64682) (InoxSet Context!11022))

(assert (=> b!6189231 (= e!3769371 (= (content!12058 lt!2340439) z!1189))))

(assert (= (and d!1940315 res!2560532) b!6189231))

(declare-fun m!7023670 () Bool)

(assert (=> d!1940315 m!7023670))

(declare-fun m!7023672 () Bool)

(assert (=> d!1940315 m!7023672))

(declare-fun m!7023674 () Bool)

(assert (=> b!6189231 m!7023674))

(assert (=> b!6188334 d!1940315))

(declare-fun d!1940317 () Bool)

(declare-fun lt!2340442 () Int)

(assert (=> d!1940317 (>= lt!2340442 0)))

(declare-fun e!3769374 () Int)

(assert (=> d!1940317 (= lt!2340442 e!3769374)))

(declare-fun c!1116515 () Bool)

(assert (=> d!1940317 (= c!1116515 ((_ is Cons!64558) lt!2340290))))

(assert (=> d!1940317 (= (zipperDepthTotal!310 lt!2340290) lt!2340442)))

(declare-fun b!6189236 () Bool)

(declare-fun contextDepthTotal!280 (Context!11022) Int)

(assert (=> b!6189236 (= e!3769374 (+ (contextDepthTotal!280 (h!71006 lt!2340290)) (zipperDepthTotal!310 (t!378192 lt!2340290))))))

(declare-fun b!6189237 () Bool)

(assert (=> b!6189237 (= e!3769374 0)))

(assert (= (and d!1940317 c!1116515) b!6189236))

(assert (= (and d!1940317 (not c!1116515)) b!6189237))

(declare-fun m!7023676 () Bool)

(assert (=> b!6189236 m!7023676))

(declare-fun m!7023678 () Bool)

(assert (=> b!6189236 m!7023678))

(assert (=> b!6188329 d!1940317))

(declare-fun d!1940319 () Bool)

(declare-fun lt!2340445 () Regex!16127)

(assert (=> d!1940319 (validRegex!7863 lt!2340445)))

(assert (=> d!1940319 (= lt!2340445 (generalisedUnion!1971 (unfocusZipperList!1548 zl!343)))))

(assert (=> d!1940319 (= (unfocusZipper!1869 zl!343) lt!2340445)))

(declare-fun bs!1535320 () Bool)

(assert (= bs!1535320 d!1940319))

(declare-fun m!7023680 () Bool)

(assert (=> bs!1535320 m!7023680))

(assert (=> bs!1535320 m!7022954))

(assert (=> bs!1535320 m!7022954))

(assert (=> bs!1535320 m!7022956))

(assert (=> b!6188330 d!1940319))

(declare-fun d!1940321 () Bool)

(declare-fun lt!2340446 () Int)

(assert (=> d!1940321 (>= lt!2340446 0)))

(declare-fun e!3769375 () Int)

(assert (=> d!1940321 (= lt!2340446 e!3769375)))

(declare-fun c!1116516 () Bool)

(assert (=> d!1940321 (= c!1116516 ((_ is Cons!64558) zl!343))))

(assert (=> d!1940321 (= (zipperDepthTotal!310 zl!343) lt!2340446)))

(declare-fun b!6189238 () Bool)

(assert (=> b!6189238 (= e!3769375 (+ (contextDepthTotal!280 (h!71006 zl!343)) (zipperDepthTotal!310 (t!378192 zl!343))))))

(declare-fun b!6189239 () Bool)

(assert (=> b!6189239 (= e!3769375 0)))

(assert (= (and d!1940321 c!1116516) b!6189238))

(assert (= (and d!1940321 (not c!1116516)) b!6189239))

(declare-fun m!7023682 () Bool)

(assert (=> b!6189238 m!7023682))

(declare-fun m!7023684 () Bool)

(assert (=> b!6189238 m!7023684))

(assert (=> b!6188310 d!1940321))

(declare-fun d!1940323 () Bool)

(declare-fun lt!2340447 () Int)

(assert (=> d!1940323 (>= lt!2340447 0)))

(declare-fun e!3769376 () Int)

(assert (=> d!1940323 (= lt!2340447 e!3769376)))

(declare-fun c!1116517 () Bool)

(assert (=> d!1940323 (= c!1116517 ((_ is Cons!64558) lt!2340284))))

(assert (=> d!1940323 (= (zipperDepthTotal!310 lt!2340284) lt!2340447)))

(declare-fun b!6189240 () Bool)

(assert (=> b!6189240 (= e!3769376 (+ (contextDepthTotal!280 (h!71006 lt!2340284)) (zipperDepthTotal!310 (t!378192 lt!2340284))))))

(declare-fun b!6189241 () Bool)

(assert (=> b!6189241 (= e!3769376 0)))

(assert (= (and d!1940323 c!1116517) b!6189240))

(assert (= (and d!1940323 (not c!1116517)) b!6189241))

(declare-fun m!7023686 () Bool)

(assert (=> b!6189240 m!7023686))

(declare-fun m!7023688 () Bool)

(assert (=> b!6189240 m!7023688))

(assert (=> b!6188310 d!1940323))

(declare-fun d!1940325 () Bool)

(declare-fun e!3769377 () Bool)

(assert (=> d!1940325 (= (matchZipper!2139 ((_ map or) lt!2340309 lt!2340306) (t!378190 s!2326)) e!3769377)))

(declare-fun res!2560533 () Bool)

(assert (=> d!1940325 (=> res!2560533 e!3769377)))

(assert (=> d!1940325 (= res!2560533 (matchZipper!2139 lt!2340309 (t!378190 s!2326)))))

(declare-fun lt!2340448 () Unit!157795)

(assert (=> d!1940325 (= lt!2340448 (choose!45972 lt!2340309 lt!2340306 (t!378190 s!2326)))))

(assert (=> d!1940325 (= (lemmaZipperConcatMatchesSameAsBothZippers!958 lt!2340309 lt!2340306 (t!378190 s!2326)) lt!2340448)))

(declare-fun b!6189242 () Bool)

(assert (=> b!6189242 (= e!3769377 (matchZipper!2139 lt!2340306 (t!378190 s!2326)))))

(assert (= (and d!1940325 (not res!2560533)) b!6189242))

(assert (=> d!1940325 m!7022914))

(assert (=> d!1940325 m!7022850))

(declare-fun m!7023690 () Bool)

(assert (=> d!1940325 m!7023690))

(assert (=> b!6189242 m!7022836))

(assert (=> b!6188331 d!1940325))

(declare-fun d!1940327 () Bool)

(declare-fun c!1116518 () Bool)

(assert (=> d!1940327 (= c!1116518 (isEmpty!36541 (t!378190 s!2326)))))

(declare-fun e!3769378 () Bool)

(assert (=> d!1940327 (= (matchZipper!2139 ((_ map or) lt!2340309 lt!2340306) (t!378190 s!2326)) e!3769378)))

(declare-fun b!6189243 () Bool)

(assert (=> b!6189243 (= e!3769378 (nullableZipper!1903 ((_ map or) lt!2340309 lt!2340306)))))

(declare-fun b!6189244 () Bool)

(assert (=> b!6189244 (= e!3769378 (matchZipper!2139 (derivationStepZipper!2095 ((_ map or) lt!2340309 lt!2340306) (head!12766 (t!378190 s!2326))) (tail!11851 (t!378190 s!2326))))))

(assert (= (and d!1940327 c!1116518) b!6189243))

(assert (= (and d!1940327 (not c!1116518)) b!6189244))

(assert (=> d!1940327 m!7023364))

(declare-fun m!7023692 () Bool)

(assert (=> b!6189243 m!7023692))

(assert (=> b!6189244 m!7023368))

(assert (=> b!6189244 m!7023368))

(declare-fun m!7023694 () Bool)

(assert (=> b!6189244 m!7023694))

(assert (=> b!6189244 m!7023372))

(assert (=> b!6189244 m!7023694))

(assert (=> b!6189244 m!7023372))

(declare-fun m!7023696 () Bool)

(assert (=> b!6189244 m!7023696))

(assert (=> b!6188331 d!1940327))

(declare-fun condSetEmpty!41980 () Bool)

(assert (=> setNonEmpty!41974 (= condSetEmpty!41980 (= setRest!41974 ((as const (Array Context!11022 Bool)) false)))))

(declare-fun setRes!41980 () Bool)

(assert (=> setNonEmpty!41974 (= tp!1727206 setRes!41980)))

(declare-fun setIsEmpty!41980 () Bool)

(assert (=> setIsEmpty!41980 setRes!41980))

(declare-fun tp!1727277 () Bool)

(declare-fun e!3769381 () Bool)

(declare-fun setElem!41980 () Context!11022)

(declare-fun setNonEmpty!41980 () Bool)

(assert (=> setNonEmpty!41980 (= setRes!41980 (and tp!1727277 (inv!83564 setElem!41980) e!3769381))))

(declare-fun setRest!41980 () (InoxSet Context!11022))

(assert (=> setNonEmpty!41980 (= setRest!41974 ((_ map or) (store ((as const (Array Context!11022 Bool)) false) setElem!41980 true) setRest!41980))))

(declare-fun b!6189249 () Bool)

(declare-fun tp!1727278 () Bool)

(assert (=> b!6189249 (= e!3769381 tp!1727278)))

(assert (= (and setNonEmpty!41974 condSetEmpty!41980) setIsEmpty!41980))

(assert (= (and setNonEmpty!41974 (not condSetEmpty!41980)) setNonEmpty!41980))

(assert (= setNonEmpty!41980 b!6189249))

(declare-fun m!7023698 () Bool)

(assert (=> setNonEmpty!41980 m!7023698))

(declare-fun b!6189257 () Bool)

(declare-fun e!3769387 () Bool)

(declare-fun tp!1727283 () Bool)

(assert (=> b!6189257 (= e!3769387 tp!1727283)))

(declare-fun b!6189256 () Bool)

(declare-fun e!3769386 () Bool)

(declare-fun tp!1727284 () Bool)

(assert (=> b!6189256 (= e!3769386 (and (inv!83564 (h!71006 (t!378192 zl!343))) e!3769387 tp!1727284))))

(assert (=> b!6188333 (= tp!1727205 e!3769386)))

(assert (= b!6189256 b!6189257))

(assert (= (and b!6188333 ((_ is Cons!64558) (t!378192 zl!343))) b!6189256))

(declare-fun m!7023700 () Bool)

(assert (=> b!6189256 m!7023700))

(declare-fun b!6189271 () Bool)

(declare-fun e!3769390 () Bool)

(declare-fun tp!1727297 () Bool)

(declare-fun tp!1727299 () Bool)

(assert (=> b!6189271 (= e!3769390 (and tp!1727297 tp!1727299))))

(declare-fun b!6189268 () Bool)

(assert (=> b!6189268 (= e!3769390 tp_is_empty!41507)))

(assert (=> b!6188318 (= tp!1727209 e!3769390)))

(declare-fun b!6189269 () Bool)

(declare-fun tp!1727295 () Bool)

(declare-fun tp!1727298 () Bool)

(assert (=> b!6189269 (= e!3769390 (and tp!1727295 tp!1727298))))

(declare-fun b!6189270 () Bool)

(declare-fun tp!1727296 () Bool)

(assert (=> b!6189270 (= e!3769390 tp!1727296)))

(assert (= (and b!6188318 ((_ is ElementMatch!16127) (regOne!32767 r!7292))) b!6189268))

(assert (= (and b!6188318 ((_ is Concat!24972) (regOne!32767 r!7292))) b!6189269))

(assert (= (and b!6188318 ((_ is Star!16127) (regOne!32767 r!7292))) b!6189270))

(assert (= (and b!6188318 ((_ is Union!16127) (regOne!32767 r!7292))) b!6189271))

(declare-fun b!6189275 () Bool)

(declare-fun e!3769391 () Bool)

(declare-fun tp!1727302 () Bool)

(declare-fun tp!1727304 () Bool)

(assert (=> b!6189275 (= e!3769391 (and tp!1727302 tp!1727304))))

(declare-fun b!6189272 () Bool)

(assert (=> b!6189272 (= e!3769391 tp_is_empty!41507)))

(assert (=> b!6188318 (= tp!1727207 e!3769391)))

(declare-fun b!6189273 () Bool)

(declare-fun tp!1727300 () Bool)

(declare-fun tp!1727303 () Bool)

(assert (=> b!6189273 (= e!3769391 (and tp!1727300 tp!1727303))))

(declare-fun b!6189274 () Bool)

(declare-fun tp!1727301 () Bool)

(assert (=> b!6189274 (= e!3769391 tp!1727301)))

(assert (= (and b!6188318 ((_ is ElementMatch!16127) (regTwo!32767 r!7292))) b!6189272))

(assert (= (and b!6188318 ((_ is Concat!24972) (regTwo!32767 r!7292))) b!6189273))

(assert (= (and b!6188318 ((_ is Star!16127) (regTwo!32767 r!7292))) b!6189274))

(assert (= (and b!6188318 ((_ is Union!16127) (regTwo!32767 r!7292))) b!6189275))

(declare-fun b!6189279 () Bool)

(declare-fun e!3769392 () Bool)

(declare-fun tp!1727307 () Bool)

(declare-fun tp!1727309 () Bool)

(assert (=> b!6189279 (= e!3769392 (and tp!1727307 tp!1727309))))

(declare-fun b!6189276 () Bool)

(assert (=> b!6189276 (= e!3769392 tp_is_empty!41507)))

(assert (=> b!6188339 (= tp!1727213 e!3769392)))

(declare-fun b!6189277 () Bool)

(declare-fun tp!1727305 () Bool)

(declare-fun tp!1727308 () Bool)

(assert (=> b!6189277 (= e!3769392 (and tp!1727305 tp!1727308))))

(declare-fun b!6189278 () Bool)

(declare-fun tp!1727306 () Bool)

(assert (=> b!6189278 (= e!3769392 tp!1727306)))

(assert (= (and b!6188339 ((_ is ElementMatch!16127) (regOne!32766 r!7292))) b!6189276))

(assert (= (and b!6188339 ((_ is Concat!24972) (regOne!32766 r!7292))) b!6189277))

(assert (= (and b!6188339 ((_ is Star!16127) (regOne!32766 r!7292))) b!6189278))

(assert (= (and b!6188339 ((_ is Union!16127) (regOne!32766 r!7292))) b!6189279))

(declare-fun b!6189283 () Bool)

(declare-fun e!3769393 () Bool)

(declare-fun tp!1727312 () Bool)

(declare-fun tp!1727314 () Bool)

(assert (=> b!6189283 (= e!3769393 (and tp!1727312 tp!1727314))))

(declare-fun b!6189280 () Bool)

(assert (=> b!6189280 (= e!3769393 tp_is_empty!41507)))

(assert (=> b!6188339 (= tp!1727212 e!3769393)))

(declare-fun b!6189281 () Bool)

(declare-fun tp!1727310 () Bool)

(declare-fun tp!1727313 () Bool)

(assert (=> b!6189281 (= e!3769393 (and tp!1727310 tp!1727313))))

(declare-fun b!6189282 () Bool)

(declare-fun tp!1727311 () Bool)

(assert (=> b!6189282 (= e!3769393 tp!1727311)))

(assert (= (and b!6188339 ((_ is ElementMatch!16127) (regTwo!32766 r!7292))) b!6189280))

(assert (= (and b!6188339 ((_ is Concat!24972) (regTwo!32766 r!7292))) b!6189281))

(assert (= (and b!6188339 ((_ is Star!16127) (regTwo!32766 r!7292))) b!6189282))

(assert (= (and b!6188339 ((_ is Union!16127) (regTwo!32766 r!7292))) b!6189283))

(declare-fun b!6189287 () Bool)

(declare-fun e!3769394 () Bool)

(declare-fun tp!1727317 () Bool)

(declare-fun tp!1727319 () Bool)

(assert (=> b!6189287 (= e!3769394 (and tp!1727317 tp!1727319))))

(declare-fun b!6189284 () Bool)

(assert (=> b!6189284 (= e!3769394 tp_is_empty!41507)))

(assert (=> b!6188309 (= tp!1727211 e!3769394)))

(declare-fun b!6189285 () Bool)

(declare-fun tp!1727315 () Bool)

(declare-fun tp!1727318 () Bool)

(assert (=> b!6189285 (= e!3769394 (and tp!1727315 tp!1727318))))

(declare-fun b!6189286 () Bool)

(declare-fun tp!1727316 () Bool)

(assert (=> b!6189286 (= e!3769394 tp!1727316)))

(assert (= (and b!6188309 ((_ is ElementMatch!16127) (reg!16456 r!7292))) b!6189284))

(assert (= (and b!6188309 ((_ is Concat!24972) (reg!16456 r!7292))) b!6189285))

(assert (= (and b!6188309 ((_ is Star!16127) (reg!16456 r!7292))) b!6189286))

(assert (= (and b!6188309 ((_ is Union!16127) (reg!16456 r!7292))) b!6189287))

(declare-fun b!6189292 () Bool)

(declare-fun e!3769397 () Bool)

(declare-fun tp!1727324 () Bool)

(declare-fun tp!1727325 () Bool)

(assert (=> b!6189292 (= e!3769397 (and tp!1727324 tp!1727325))))

(assert (=> b!6188336 (= tp!1727214 e!3769397)))

(assert (= (and b!6188336 ((_ is Cons!64557) (exprs!6011 setElem!41974))) b!6189292))

(declare-fun b!6189297 () Bool)

(declare-fun e!3769400 () Bool)

(declare-fun tp!1727328 () Bool)

(assert (=> b!6189297 (= e!3769400 (and tp_is_empty!41507 tp!1727328))))

(assert (=> b!6188341 (= tp!1727208 e!3769400)))

(assert (= (and b!6188341 ((_ is Cons!64556) (t!378190 s!2326))) b!6189297))

(declare-fun b!6189298 () Bool)

(declare-fun e!3769401 () Bool)

(declare-fun tp!1727329 () Bool)

(declare-fun tp!1727330 () Bool)

(assert (=> b!6189298 (= e!3769401 (and tp!1727329 tp!1727330))))

(assert (=> b!6188311 (= tp!1727210 e!3769401)))

(assert (= (and b!6188311 ((_ is Cons!64557) (exprs!6011 (h!71006 zl!343)))) b!6189298))

(declare-fun b_lambda!235487 () Bool)

(assert (= b_lambda!235483 (or b!6188313 b_lambda!235487)))

(declare-fun bs!1535321 () Bool)

(declare-fun d!1940329 () Bool)

(assert (= bs!1535321 (and d!1940329 b!6188313)))

(assert (=> bs!1535321 (= (dynLambda!25457 lambda!337891 lt!2340285) (derivationStepZipperUp!1301 lt!2340285 (h!71004 s!2326)))))

(assert (=> bs!1535321 m!7022898))

(assert (=> d!1940267 d!1940329))

(declare-fun b_lambda!235489 () Bool)

(assert (= b_lambda!235481 (or b!6188313 b_lambda!235489)))

(declare-fun bs!1535322 () Bool)

(declare-fun d!1940331 () Bool)

(assert (= bs!1535322 (and d!1940331 b!6188313)))

(assert (=> bs!1535322 (= (dynLambda!25457 lambda!337891 lt!2340316) (derivationStepZipperUp!1301 lt!2340316 (h!71004 s!2326)))))

(assert (=> bs!1535322 m!7022908))

(assert (=> d!1940251 d!1940331))

(declare-fun b_lambda!235491 () Bool)

(assert (= b_lambda!235485 (or b!6188313 b_lambda!235491)))

(declare-fun bs!1535323 () Bool)

(declare-fun d!1940333 () Bool)

(assert (= bs!1535323 (and d!1940333 b!6188313)))

(assert (=> bs!1535323 (= (dynLambda!25457 lambda!337891 (h!71006 zl!343)) (derivationStepZipperUp!1301 (h!71006 zl!343) (h!71004 s!2326)))))

(assert (=> bs!1535323 m!7022946))

(assert (=> d!1940303 d!1940333))

(check-sat (not bs!1535323) (not b!6189133) (not b!6189226) (not bm!517381) (not b!6189138) (not d!1940269) (not d!1940273) (not d!1940261) (not b!6189149) (not d!1940237) (not b!6189075) (not b!6189154) (not b!6188897) (not setNonEmpty!41980) (not b!6189146) (not b!6188830) (not d!1940303) (not b!6188520) (not d!1940187) (not b!6188898) (not b!6189043) (not b!6189114) (not b!6189227) (not b!6189104) (not d!1940319) (not b!6189236) (not bs!1535322) (not d!1940307) (not b!6189040) (not b!6188646) (not b!6189122) (not b!6189041) (not b!6189231) (not b!6189121) (not b!6189142) (not d!1940283) (not b!6188649) (not b!6188926) (not d!1940281) (not d!1940123) (not d!1940259) (not b!6188548) (not bm!517411) (not b!6189107) (not b!6188526) (not b!6189118) (not b!6188905) (not bm!517420) (not bm!517410) (not b!6188895) (not b!6188647) (not d!1940313) (not bs!1535321) (not bm!517425) (not b!6188519) (not b!6189148) (not d!1940287) (not b!6189018) (not b!6189023) (not bm!517404) (not b!6188891) (not b!6188527) (not bm!517417) (not b!6189278) (not b!6189282) (not d!1940325) (not b!6189220) (not b!6189181) (not b!6189101) (not b!6189086) (not b!6189110) (not b!6189017) (not d!1940233) (not b_lambda!235489) (not bm!517398) (not b!6189117) (not b!6189297) (not b!6189238) (not b!6188522) (not b!6189243) (not b!6189208) (not b!6189257) (not d!1940249) (not bm!517422) (not b!6189215) (not b!6189024) (not b!6189042) (not b!6189112) (not b!6189242) (not b!6188630) (not b!6189019) (not b!6189228) (not b!6188911) (not b!6188650) (not d!1940239) (not d!1940277) (not bm!517423) (not d!1940279) (not b!6188653) (not b!6189274) (not b!6188525) (not b!6189175) (not b!6189189) (not d!1940255) (not bm!517355) (not b!6189292) (not b!6189106) (not b!6189269) (not bm!517415) (not b!6189271) (not b!6189180) (not b!6188909) (not bm!517356) (not b!6189277) (not d!1940137) (not bm!517412) (not bm!517401) (not b!6189275) (not d!1940097) (not b!6189218) (not bm!517382) (not b!6189179) (not b!6188894) (not b!6189285) (not d!1940285) (not b!6189270) (not b!6188916) (not d!1940207) (not d!1940141) (not b!6188902) (not b!6189124) (not b!6189044) (not b!6188927) (not d!1940199) (not b!6189153) (not b!6188652) (not bm!517414) (not b!6189249) (not d!1940315) (not b!6189283) (not d!1940241) (not b!6188912) (not b!6189115) (not b!6188654) (not bm!517400) (not d!1940265) (not b!6189150) (not b!6189256) (not bm!517378) (not b!6189105) (not b!6188547) (not b!6189287) (not d!1940293) (not d!1940267) (not d!1940213) (not b!6189184) (not bm!517424) (not b!6189120) (not d!1940201) (not b!6188908) (not bm!517409) (not b!6189152) (not b!6188523) (not b!6189240) (not d!1940297) tp_is_empty!41507 (not d!1940209) (not b!6189223) (not b!6189141) (not b!6189273) (not b!6189182) (not bm!517406) (not b!6189139) (not bm!517395) (not b!6189213) (not b!6189244) (not b!6189298) (not b!6189225) (not b!6189151) (not b!6189279) (not b!6189176) (not b!6189286) (not d!1940305) (not b!6189135) (not d!1940243) (not b!6189103) (not d!1940235) (not b!6188821) (not d!1940203) (not d!1940327) (not d!1940311) (not d!1940275) (not b!6189196) (not b!6189281) (not bm!517377) (not d!1940257) (not d!1940197) (not b_lambda!235487) (not b!6189025) (not d!1940251) (not b_lambda!235491) (not bm!517413))
(check-sat)
